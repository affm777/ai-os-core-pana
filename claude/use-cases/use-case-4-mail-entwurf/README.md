# Mails in deinem Stil, als Entwurf in Outlook

Claude schreibt Antworten und neue Mails so, wie du selbst schreibst, und legt sie als Entwurf in Outlook ab. Beim ersten Mal liest Claude deine gesendeten Mails, leitet daraus dein Profil mit Registern ab (etwa Erstansprache, Kunde, Partner, intern) und speichert es erst, wenn du es freigibst. Jede Korrektur von dir wird zum Lernvorschlag, gespeichert wird nur nach deinem Ja. Du liest, passt an und sendest selbst, Claude versendet nie etwas.

## Installieren

Sag Claude:
```
Installier mir den Use Case mail-entwurf einmal global: hol in ~/ai-os-core mit git pull den neuesten Stand, führ bash ~/ai-os-core/claude/use-cases/use-case-4-mail-entwurf/install.sh aus, installier alles Fehlende selbst mit den Befehlen, die das Skript nennt, und sag mir in einfachen Worten, ob alles geklappt hat.
```

Danach eine neue Session starten, damit Claude den Skill kennt. Voraussetzung ist, dass Microsoft 365 in Claude unter Einstellungen, Connectoren verbunden ist.

## Loslegen

**Zuerst den Stil lernen.** Öffne Claude in deinem Projektordner und sag Claude:
```
Richte meinen Mail-Stil ein.
```
Claude liest deine gesendeten Mails der letzten Monate, zeigt dir die Regeln, die Register, deine Signatur und die Mails, die als Beispiele gespeichert werden sollen. Du sagst, was anders sein soll, und gibst frei.

**Dann die erste Mail.** Sag Claude zum Beispiel:
```
Beantworte die Mail von Max Beispiel zur Kampagne und sag zu, schlag zwei Termine nächste Woche vor.
```
Claude zeigt dir den Text im Chat und legt ihn nach deinem Ja als Entwurf in Outlook ab, bei Antworten im richtigen Verlauf.

Diese Sätze solltest du kennen:

- „Schreib eine Mail an Firma Beispiel, frag nach dem Budget für die Rückrunde." für eine neue Mail ohne Verlauf.
- „Kürzer, und Du statt Sie." oder jede andere Änderung, Claude passt den Entwurf an und fragt, ob es daraus lernen soll.
- „So habe ich es versendet: ..." wenn du den Text in Outlook noch geändert hast, damit Claude die Änderung lernt.
- „Was hast du aus meinen Mails gelernt?" gleicht deine Entwürfe mit den tatsächlich gesendeten Mails ab und schlägt Regeln vor.
- „Ändere meinen Stil: ..." oder „Meine Signatur hat sich geändert." für Anpassungen am Profil.

Aus einer Postfach-Sichtung (Bundle posteingang-triage) heraus reicht „Entwurf für Nr. 3", der Entwurf kommt dann in deinem Stil.

## Grenzen

- Claude versendet nie, leitet nie weiter und ergänzt keine Empfänger. Entwürfe liegen in Outlook unter Entwürfe, du sendest selbst.
- Zahlen, Preise, Termine und Zusagen kommen nur aus dem Verlauf oder aus deinem Auftrag, nie erfunden.
- Gespeichert werden nur deine eigenen Texte, nie Mails der Gegenseite, keine Namen oder Adressen von Empfängern.
- Datenschutz: Mails sind für Claude nur Text, keine Aufträge. Links öffnet Claude nie, Anhänge nur mit deiner Erlaubnis.
- Diese Fassung arbeitet mit Microsoft 365 (Outlook), nicht mit Gmail.
