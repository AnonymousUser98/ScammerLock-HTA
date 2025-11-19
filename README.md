# ScammerLock-HTA
This program is designed for scambaiters to put on scammers' computers (and run them remotely). It will open an HTA file in full-screen and automatically reopen it if it gets closed.\
It will also copy itself to the Startup folder, so it will still show up even if the scammer restarts their computer.

## Easy-to-use Release
In the releases section of this repo, you can find ready-to-use ZIP files for each included HTA screen.

## Starting with Base Files
The files in the `base-files` folder are the files you need to start with. There are 4 files here:
- **lockdown.bat** - This is the batch file responsible for everything. It copies the program to `C:\Lockdown` and creates a shortcut in the startup folder, and then it opens the HTA screen (and reopens it if it gets closed).
- **index.hta** - This file is the HTA screen that gets opened by the batch file. Opening this file directly is a good way to preview the lockdown screen without having to manually remove files from your Startup folder.
- **background-warn.png** - This is the background image for the HTA file. It's linked to within `index.hta`.
- **nircmd.exe** - This command line tool has multiple functions, but this project only uses it for 1 thing. It's used to create the shortcut in the startup folder.

## Applying HTA Screens
The files in `base-files` are for the _Cyber Police Lockdown_ HTA screen, but you can easily change them to be another HTA screen. Simply download the files for the HTA screen you want, put them in their own folder, and copy `nircmd.exe` to this new folder.
