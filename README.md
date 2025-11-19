# ScammerLock-HTA
This program is designed for scambaiters to put on scammers' computers (and run them remotely). It will open an HTA file in full-screen and automatically reopen it if it gets closed.\
It will also copy itself to the startup folder, so it will still show up even if the scammer restarts their computer.

## How to Use
First, choose which HTA screen you want to use. You can download the entire repo, or you can go to the releases page to download a ZIP file of just one of the HTA screens.\
Each HTA screen contains some files. Copy these files to a good location on the scammer's computer (somewhere other than Desktop, Documents, or Downloads so they can't easily find them) and remotely run `lockdown.bat` on their end.\
And that's it! You're done!

## Closing the Program
If you press Alt+F4 on your keyboard, the HTA window will close. And then it will instantly reopen.\
If you want to actually get rid of the program:
1. Press the Windows key to temporarily reveal the taskbar and start menu.
2. Right-click the `lockdown.bat` or `ldstartup.bat` batch script in the taskbar and choose **Close window**.
3. You can now close the HTA window with Alt+F4.
4. Remember to remove the shortcut from your startup folder.
5. You should also delete the `C:\Lockdown` folder that was created.

<!-- TO-DO: Add preview screenshots and info about creating HTA screens with templates -->
