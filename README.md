# Instructions
This program is designed for scambaiters to put on scammers' computers (and run them remotely). It will open an HTA file in full-screen and automatically reopen it if it gets closed.
It will also copy itself to the startup folder, so it will still show up even if the scammer restarts their computer.

## How to use
First, choose which HTA screen you want to use. You can download the entire repo, or you can go to the releases page to download a ZIP file of just one of the HTA screens.\
Each HTA screen contains some files. Copy these files to a good location on the scammer's computer (somewhere other than Desktop, Documents, or Downloads so they can't easily find them) and remotely run `lockdown.bat` on their end.\
The scammer's computer is now "locked".

## Closing the program
If you press Alt+F4 on your keyboard, the HTA window will close. And then it will instantly reopen.\
If you want to actually get rid of the program:
1. Press the Windows key to temporarily reveal the taskbar and start menu.
2. Right-click the `lockdown.bat` or `ldstartup.bat` batch script in the taskbar and choose **Close window**.
3. You can now close the HTA window with Alt+F4.
4. Remember to remove the shortcut from your startup folder.
5. You should also delete the `C:\Lockdown` folder that was created.

## Creating your own HTA screen
To create your own HTA screen, start with the files in the `Template` folder. Modify the `index.hta` file however you want. This will be the HTA screen that gets opened on the scammer's computer.
If you want to preview the HTA screen, you can open `index.hta` directly instead of using the batch file. This will make things a lot easier because you won't need to manually remove the startup files each time.\
If you include images in your HTA file, copy them to the same folder.

You will then need to modify `lockdown.bat` to account for the new filenames. Change the text `background.png` to the filename of the image you used.
If you used multiple images, add an extra line for each image. It should copy the image to `C:\Lockdown`. If you didn't use any images, you can remove the line that copies `background.png`.

**NOTE:** Do not try to use SVG images in your HTA file. MSHTA doesn't know how to render them and they simply won't appear.

# Included HTA Screens

## Cyber Police Lockdown
This can be found in the `HTA_CyberPolice` folder.
<img width="960" height="543" alt="image" src="https://github.com/user-attachments/assets/9b087af8-ec53-4b68-b701-dc18a614b15c" />

When you click the mouse, a popup appears asking for a secret code.

## Jim Browning Lockdown
This can be found in the `HTA_JimBrowning` folder.
<img width="960" height="497" alt="image" src="https://github.com/user-attachments/assets/9236aba1-5b28-4ed3-be76-ef5eff386854" />

When you click the mouse, a popup appears telling the user to "stop scamming and get a real job".

## You've Been Hacked
This can be found in the `HTA_YouHaveBeenHacked` folder.
<img width="1920" height="1080" alt="background" src="https://github.com/user-attachments/assets/b7c35902-79a2-471b-92b2-63afc5054edc" />

When you click the mouse, a popup appears telling the user that they've been hacked. After clicking OK, the user is asked if they want to unlock their device. If you click cancel, the popup disappears. If you click OK, the following message appears:

>If you want to unlock your device, you will need to refund all your victims, shut down your scam call center, and stop scamming innocent people. Until you stop scamming, your device will be stuck on this screen (and it will be unusable).
