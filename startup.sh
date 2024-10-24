#!/bin/bash

# Start the first process
python worker.py &

# Start the second process
python main.py &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?