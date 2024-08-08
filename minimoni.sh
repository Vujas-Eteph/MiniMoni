#!/bin/bash

# -------------------------------------------------------
# Script Name: minimoni
# Description: MiniMoni: A Streamlined Command-Line Tool for Real-Time Monitoring of GPU and CPU Usage.
# Author: Vujas-Eteph (Stéphane Vujasinovic)
# GitHub: https://github.com/Vujas-Eteph/MiniMoni
# License: MIT License
# -------------------------------------------------------


# - FUNCTIONS ---
# Check Resize available
check_resize_available() {
    command -v resize >/dev/null 2>&1
}

# Resize the terminal based on the number of GPUs and users
resize_terminal() {
    local num_gpus=$1
    local num_users=$2
    local shell_width=$((num_gpus * 2 + 1 + 1 + num_users + 2))
    
    if check_resize_available; then
        resize -s $shell_width 85
    else
        echo "Resize command not available. Adjust terminal size manually to width: $shell_width."
    fi
}

# - MAIN ---
# Get the number of GPUs
monis_num_gpus=$(nvidia-smi -L | wc -l)

# Get the number of current users
monis_num_users=$(w | tail -n +3 | wc -l)

# Calculate new shell width and resize the terminal window
resize_terminal $monis_num_gpus $monis_num_users 2

# Default sleep interval is 5 seconds unless specified as the first argument
sleep_interval=${1:-10}

# Minimal GPU Monitor loop
while true; do
    # Display GPU and user information
    gpustat --no-processes -P -F
    echo '------------------------------------------------------------------------------------'
    w

    # Sleep for the specified interval
    sleep $sleep_interval

    # Check and adapt the size of the shell with number of users
    current_monis_num_users=$(w | tail -n +3 | wc -l)
    if [[ $monis_num_users -ne $current_monis_num_users ]]; then
        monis_num_users=$current_monis_num_users
        resize_terminal $monis_num_gpus $monis_num_users
    fi
done
