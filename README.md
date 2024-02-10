# Mouse Mover and Sleep Preventer

This PowerShell script automatically moves the mouse cursor to prevent your system from going into sleep mode. It’s useful for scenarios like avoiding being kicked out of online games due to inactivity or discreetly staying active during remote work.

## Overview

The script simulates mouse movement at regular intervals, preventing the system from entering sleep mode. By continuously adjusting the cursor position, it ensures that your computer remains awake.

## Usage

### Requirements:

- Make sure you have PowerShell installed on your system.
- Save the script to a .ps1 file (e.g., StayAwake_Mouse.ps1).

### Running the Script:

1. Open PowerShell (you can search for it in the Start menu).
2. Navigate to the directory where you saved the script.
3. Execute the script by running: .\StayAwake_Mouse.ps1.

### Customization:

- Adjust the `$sleepDurationSeconds` variable to control the interval between cursor movements (in seconds).
- Modify `$minimum` and `$maxnum` to set the range of random cursor movement (X and Y coordinates).

### Stopping the Script:

- Press CTRL + C in the PowerShell window to stop the script.

## Disclaimer

Feel free to add more details or personalize the README as needed. Happy scripting! 🚀🔍🖱️