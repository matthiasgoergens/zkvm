from hashlib import sha256
from sys import stderr

import gdb


def handle_custom_instructions():
    """Handler for Custom Risc-V instructions.

    Register `a0` selects which custom instruction to run.

    At the moment we have only implemented sha256 and arbitrarily assigned it
    number 23.  We can add more instructions here.
    """
    fun = gdb.parse_and_eval("$a0")
    if fun == 23:
        handle_sha256()


def handle_sha256():
    """Custom handle for sha256 in Risc-V

    Hash the memory contents starting at register `a1` with length `a2`.
    Finally put the resulting 32 bytes digest in the memory buffer starting at
    `a3`.
    """
    start = gdb.parse_and_eval("$a1")
    length = gdb.parse_and_eval("$a2")
    output = gdb.parse_and_eval("$a3")
    buf = gdb.inferiors()[0].read_memory(start, length)
    hashed = sha256(buf)
    print(f"Hashed {repr(buf)[:100]} to {hashed.hexdigest()}", file=stderr)
    hash_result = hashed.digest()
    gdb.inferiors()[0].write_memory(output, hash_result)


class EbreakHandler(gdb.Command):
    """GDB Command to handle ebreak instructions automatically."""

    def __init__(self):
        """Install the new 'handle-ebreak' command in our GDB session"""
        super(EbreakHandler, self).__init__("handle-ebreak", gdb.COMMAND_USER)
        self.setup_stop_hook()

    def setup_stop_hook(self):
        """Set up a hook that gets called whenever the program stops."""
        gdb.events.stop.connect(self.stop_handler)

    def stop_handler(self, event):
        """Handle stop events and check if the stop was due to an ebreak."""
        # Check the instruction at the current PC
        #
        # We ask gdb to disassemble.  That's simplest, because then we don't
        # have to worry about compressed instructions.
        # Parsing the string here is a bit hacky, but it works for now.
        if gdb.execute("x/i $pc", to_string=True).endswith("\tebreak\n"):
            print(f"Ebreak hit")
            handle_custom_instructions()
            # We've handled our custom instruction, it's time to jump to the
            # next instruction.
            gdb.execute("jump +1")
        else:
            # We stopped for some other reason, perhaps we hit a break-point?
            # Don't do anything in this case.
            pass

    def invoke(self, arg, from_tty):
        """Invoke the custom command (used to start monitoring)."""
        print(
            "Ebreak handler active. Monitoring for ebreak instructions...", file=stderr
        )


# Register the command with GDB
EbreakHandler()
