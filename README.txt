# Directory Synchronization Script with Zenity

## Overview
This Bash script utilizes Zenity, a graphical user interface for shell scripts, to prompt the user for source and target directories. 
It then uses the `rsync` command to synchronize the contents of the source directory to the target directory, ensuring that only 
newer and updated files are copied.

## Usage
1. Make sure you have the `rsync` and 'zenity' command installed on your system.
2. Run the script in a terminal:

    ```bash
    ./dirSync.sh
    ```

3. The script will launch Zenity dialogs asking you to select the source and target directories.
4. If you cancel the operation at any point, the script will display an informational message and exit.
5. The `rsync` command will then synchronize the selected directories, updating files in the target directory to match the source directory.
6. Upon completion, a success message will be displayed using Zenity.

## Important Note
- The script uses the `rsync -avu --delete` command, where:
  - `-a`: Archive mode, preserving permissions, ownership, and more.
  - `-v`: Verbose mode, showing detailed information about the synchronization process.
  - `-u`: Update, skipping files in the target directory that are newer than their counterparts in the source directory.
  - `--delete`: Deleting files in the target directory that do not exist in the source directory.

## Author
RangerHUTCH93
1/02/2024
