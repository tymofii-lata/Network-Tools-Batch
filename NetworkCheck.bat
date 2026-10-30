@echo off
chcp 65001 >nul
title Netzwerk-Diagnose-Tool

:MENU
cls
echo ======================================================
echo           NETZWERK DIAGNOSE & MANAGEMENT TOOL
echo ======================================================
echo.
echo  [1] IP-Konfiguration & Standardgateway anzeigen
echo  [2] Verbindungstest (Ping Gateway & Google DNS)
echo  [3] DNS-Auflösung prüfen (nslookup google.ch)
echo  [4] DNS-Cache leeren (Flush DNS)
echo  [5] Beenden
echo.
echo ======================================================
set /p choice="Wählen Sie eine Option (1-5): "

if "%choice%"=="1" goto IPCONFIG
if "%choice%"=="2" goto PINGTEST
if "%choice%"=="3" goto NSLOOKUP
if "%choice%"=="4" goto FLUSHDNS
if "%choice%"=="5" exit
goto MENU

:IPCONFIG
cls
echo --- EIGENE IP-KONFIGURATION ---
ipconfig | findstr /i "IPv4 Standardgateway Subnetzmaske"
echo.
pause
goto MENU

:PINGTEST
cls
echo --- VERBINDUNGSPRÜFUNG ---
echo Prüfe Internetverbindung (8.8.8.8)...
ping -n 3 8.8.8.8 >nul
if %errorlevel% equ 0 (
    echo [OK] Verbindung zum Internet ist stabil.
) else (
    echo [FEHLER] Keine Verbindung zum Internet.
)
echo.
pause
goto MENU

:NSLOOKUP
cls
echo --- DNS-AUFLÖSUNGSTEST ---
nslookup google.ch
echo.
pause
goto MENU

:FLUSHDNS
cls
echo --- DNS-CACHE ZURÜCKSETZEN ---
ipconfig /flushdns
echo.
echo DNS-Cache wurde erfolgreich geleert.
echo.
pause
goto MENU
