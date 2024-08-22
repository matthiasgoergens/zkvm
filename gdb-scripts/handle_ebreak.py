import gdb

class EbreakHandler(gdb.Command):
    """GDB Command to handle ebreak instructions automatically."""

    def __init__(self):
        super(EbreakHandler, self).__init__("handle-ebreak", gdb.COMMAND_USER)
        self.last_pc = None
        self.setup_stop_hook()

    def setup_stop_hook(self):
        """Set up a hook that gets called whenever the program stops."""
        gdb.events.stop.connect(self.stop_handler)

    def stop_handler(self, event):
        """Handle stop events and check if the stop was due to an ebreak."""
        if isinstance(event, gdb.BreakpointEvent):
            return  # Ignore if a breakpoint was hit

        # Check the instruction at the current PC
        pc = gdb.parse_and_eval("$pc")
        instruction = gdb.selected_frame().read_memory(pc, 4).cast(gdb.lookup_type("unsigned int"))

        if instruction == 0x00100073:  # ebreak instruction in RISC-V
            print(f"Ebreak hit at address {pc}")
            gdb.execute("info registers")
            # Perform other custom actions here
            gdb.execute("continue")  # Automatically continue execution

    def invoke(self, arg, from_tty):
        """Invoke the custom command (used to start monitoring)."""
        print("Ebreak handler active. Monitoring for ebreak instructions...")
        gdb.execute("continue")

# Register the command with GDB
EbreakHandler()
