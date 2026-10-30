# Network Diagnostics & Troubleshooting Tool (Batch)

Ein interaktives, konsolenbasiertes Werkzeug für Windows zur schnellen Diagnose und Behebung grundlegender Netzwerkprobleme.

## Funktionen

* **IP-Konfiguration auslesen:** Zeigt gezielt IPv4-Adresse, Subnetzmaske und das Standardgateway an.
* **Verbindungstest:** Führt einen automatisierten Ping-Test durch, um die Erreichbarkeit des internen Gateways und externer Adressen (Google DNS `8.8.8.8`) zu prüfen.
* **DNS-Prüfung:** Testet die Namensauflösung mithilfe von `nslookup`.
* **DNS-Cache leeren:** Bereinigt den lokalen DNS-Cache (`ipconfig /flushdns`), um veraltete oder fehlerhafte Einträge zurückzusetzen.
* **Interaktives Menü:** Schnelle Navigation über ein einfaches Ziffernmenü (1–5).

## Voraussetzungen

* Betriebssystem: Windows 10 / Windows 11
* Keine zusätzlichen Abhängigkeiten erforderlich (verwendet native Windows-Befehle).

## Verwendung

1. Die Datei `NetworkCheck.bat` per Doppelklick oder über die Eingabeaufforderung (CMD) starten.
2. Die gewünschte Option über die Tastatur auswählen (1 bis 5) und mit `Enter` bestätigen.
