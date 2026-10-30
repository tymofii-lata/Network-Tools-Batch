@echo off
chcp 65001 >nul
echo ===================================
echo     NETZWERK SCHNELLTEST
echo ===================================
echo.

echo 1. Eigene IP-Konfiguration (Gateway):
ipconfig | findstr /i "IPv4 Standardgateway"
echo.

echo 2. Verbindung zum Internet (Ping 8.8.8.8) pruefen:
ping -n 3 8.8.8.8 >nul
if %errorlevel% equ 0 (
    echo [OK] Internetverbindung ist aktiv.
) else (
    echo [FEHLER] Keine Verbindung zum Internet.
)
echo.
pause
