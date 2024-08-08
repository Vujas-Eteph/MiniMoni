#!/bin/bash

INSTALL_DIR="$HOME/bin"
SCRIPT_NAME="minimoni"
FULL_PATH="$INSTALL_DIR/$SCRIPT_NAME"
mkdir -p "$INSTALL_DIR"

# Download from minimoni.sh from github
wget -O "$FULL_PATH" "https://raw.githubusercontent.com/Vujas-Eteph/MiniMoni/main/$SCRIPT_NAME.sh"
if [ $? -ne 0 ]; then  # Check if wget succeeded
    echo "Download failed. Please check the URL and your internet connection."
    exit 1
fi

# Make the script exectutable
chmod +x "$FULL_PATH"

# Install dependencies
pip install gpustat==1.1.1

# Ensure PATH is correctly added to .bashrc and check for existing entries
if ! grep -qx 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc"; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
fi

# Add an alias to the user's .bashrc if it doesn't already exist
if ! grep -qx "alias minimoni='$FULL_PATH'" "$HOME/.bashrc"; then
    echo "alias minimoni='$FULL_PATH'" >> "$HOME/.bashrc"
fi

# Source .bashrc to apply changes immediately
source "$HOME/.bashrc"

echo "Installation completed."
echo "Please restart your terminal or run 'source ~/.bashrc' to apply changes in other terminal sessions already open."
echo "You can now run the command '$SCRIPT_NAME' from anywhere."