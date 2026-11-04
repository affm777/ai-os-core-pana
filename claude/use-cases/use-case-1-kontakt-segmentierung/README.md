# Von deinen LinkedIn-Kontakten zur persönlichen Ansprache

Claude sortiert deinen LinkedIn-Export nach Rollen, legt je Firma eine Akte an, recherchiert öffentliche Quellen und schreibt persönliche Nachrichtenentwürfe. Du gibst an jeder Stelle frei und schickst jede Nachricht selbst, Claude versendet nie etwas.

## Installieren

Sag Claude:
```
Installier mir den Use Case kontakt-segmentierung einmal global: hol in ~/ai-os-core mit git pull den neuesten Stand, führ bash ~/ai-os-core/claude/use-cases/use-case-1-kontakt-segmentierung/install.sh aus, installier alles Fehlende selbst mit den Befehlen, die das Skript nennt, und sag mir in einfachen Worten, ob alles geklappt hat.
```

Danach eine neue Session starten, damit Claude den Skill kennt.

## Loslegen

**Hast du eigene Daten?** Leg deinen LinkedIn-Export bereit (die Kontaktliste aus „Kopie deiner Daten“, meist eine Datei namens Connections.csv) und, falls vorhanden, eine Liste bisheriger Kunden oder Partner als Excel oder CSV, auch die vom letzten Jahr. Fehlt dir der Export, erklärt Claude dir den Weg, LinkedIn braucht dafür 10 Minuten bis 24 Stunden. Öffne Claude in deinem Projektordner, zieh die Dateien ins Chatfenster und sag Claude:
```
Segmentier meine LinkedIn-Kontakte für die Neukundenansprache. Die Dateien hängen an, die Kundenliste ist dabei.
```

**Zum Ausprobieren ohne eigene Daten** nimmt Claude erfundene Kontakte und auf Wunsch eine erfundene Kundenliste. Sag Claude:
```
Segmentier meine LinkedIn-Kontakte für die Neukundenansprache. Nimm zum Üben die Demo.
```

Diese Sätze solltest du kennen:

- „Nr. 3 und 5 habe ich abgeschickt.“ meldest du, sobald du Nachrichten selbst versendet hast, damit die Akten den richtigen Stand zeigen.
- „Mach mit dem Outreach weiter.“ sagst du in einer neuen Session, dann nennt Claude den Stand und den nächsten Schritt.

## Das Gesamtbild

Der Skill hat sechs Phasen, die du einzeln aufrufen kannst. Gedanklich sind das drei Werkzeuge: der **Lead-Scout** (Phase A: Export sortieren, Bestandskunden abgleichen, Excel), der **Firmen-Check** (Phasen C und D: je Firma eine Seite mit Sport-Engagement, Creator-Kampagnen und Anknüpfungspunkt, parallel über Subagenten) und die **Erstansprache** (Phasen B, E und F: Anlass, Ansprache-Tabelle, Entwürfe in Zehnerbatches). Das **Postfach-Radar** ist das Bundle `posteingang-triage`. An jedem Freigabe-Tor entscheidest du.

## Grenzen

- Claude ordnet nach der Positionsbezeichnung, lies die A-Kontakte einmal gegen.
- Mail-Entwürfe in Outlook gibt es nur mit verbundenem Microsoft-365-Connector, sonst bekommst du die Texte zum Kopieren.
- Datenschutz: nur der offizielle Export, Recherche nur zu Firmen in öffentlichen Quellen, nie zu einzelnen Menschen.
