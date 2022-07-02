@echo off
chcp 65001 >nul
color C
cls
title *INFECTED...* (Pinger) / Made By ikara
set /p user=Username  (root):
echo.
set /p pass=Password  (root):
if %user% == root if %pass% == root goto main
echo Error 04, Sorry! Met Le bon mot de passe pour accèder au pinger !! *Attend 5 Secondes*
timeout 5 >nul
goto login
:main:
cls
color A     
:home:                                                                                               
set /p IP=Enter IP::
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo L'ip est invalide.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top

