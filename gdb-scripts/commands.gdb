# commands.gdb

# Connect to the remote target
target remote :1234
source ../gdb-scripts/handle_ebreak.py
handle-ebreak

# Continue execution
continue
