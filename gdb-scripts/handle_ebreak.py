import gdb
from hashlib import sha256

class EbreakHandler(gdb.Command):
    """GDB Command to handle ebreak instructions automatically."""

    def __init__(self):
        super(EbreakHandler, self).__init__("handle-ebreak", gdb.COMMAND_USER)
        self.setup_stop_hook()

    def setup_stop_hook(self):
        """Set up a hook that gets called whenever the program stops."""
        gdb.events.stop.connect(self.stop_handler)

    def stop_handler(self, event):
        """Handle stop events and check if the stop was due to an ebreak."""
        # if isinstance(event, gdb.SignalEvent) and event.stop_signal == "SIGTRAP":
        # Check the instruction at the current PC
        print(f"Some event: {event}\t{event.details}")
        
        pc = gdb.parse_and_eval("$pc")

        instruction_bytes = gdb.inferiors()[0].read_memory(pc, 4)

        fun = gdb.parse_and_eval("$a0")
        print(f"fun: {fun}")
        if fun == 23:
            start = gdb.parse_and_eval("$a1")
            len = gdb.parse_and_eval("$a2")
            output = gdb.parse_and_eval("$a3")
            buf = gdb.inferiors()[0].read_memory(start, len)
            print(sha256(buf).hexdigest())

            hash_result = sha256(buf).digest()
            gdb.inferiors()[0].write_memory(output, hash_result)


        # Convert the bytes to an integer (assuming little-endian)
        instruction = int.from_bytes(instruction_bytes, byteorder='little')
        # instruction = gdb.inferiors()[0].read_memory(pc, 4).cast(gdb.lookup_type("unsigned int"))
        print(f"instruction: {hex(instruction)}")

        # Parsing the string here is a bit hacky, but it works for now.
        if gdb.execute("x/i $pc", to_string=True).endswith('\tebreak\n'):
            print(f"Ebreak hit at address {pc}")
            # gdb.execute("info registers")
            # Perform other custom actions here
            # gdb.execute("continue")  # Automatically continue execution
            gdb.execute("jump +1")
        else:
            print("'twas some other instruction")
            gdb.execute("jump +1")

    def invoke(self, arg, from_tty):
        """Invoke the custom command (used to start monitoring)."""
        print("Ebreak handler active. Monitoring for ebreak instructions...")
        # gdb.execute("continue")

# Register the command with GDB
EbreakHandler()
