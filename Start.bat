@echo off
Color f0
cls
:start
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command "& 'C:\Temp\USB_Copy_Tool\Script_Files\ScriptBlock.ps1'" /W
set choice=
set /p choice="Do You Want to Run the USB Copy Tool Again? Press Y - Yes or N - No: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='Y' goto start