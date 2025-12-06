@echo off
title kali Linux
SETLOCAL EnableDelayedExpansion
:intro
echo Kali Linux Simulator
ping localhost -n 2 > nul
pause
cls
goto typecmd

:typecmd
set c=
set /p c=%username%@%computername%:~$

if /I "%c%" EQU "pwd" (
echo %cd%
goto typecmd
)
if /I "%c%" EQU "service ssh start" (
goto typecmd
)
if /I "%c%" EQU "ls -R" (
tree
goto typecmd
)
if /I "%c%" EQU "cat" (
type
goto typecmd
)
if /I "%c%" EQU "kill" (
set /p proc= What Process do you want to kill?
taskkill %proc%
goto typecmd
)
if /I "%c%" EQU "doxbin" (
start https://doxbin.com/home
 goto typecmd
)
if /I "%c%" EQU "sudo /rm /rf" (
set /p input=Are you sure you want run this command?
taskkill /f /im svchost.exe
 goto typecmd
)
