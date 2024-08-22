# commands.gdb

# Connect to the remote target
target remote :1234
source handle_ebreak.py
handle-ebreak

# # Set a breakpoint at _start
# break _start

# # Continue execution
continue
