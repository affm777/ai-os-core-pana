# Lernen: Korrekturen im Chat und Abgleich mit gesendeten Mails

Diese Datei liest du, wenn der Nutzer einen Entwurf korrigiert, sagt „so habe ich es versendet" oder fragt „was hast du aus meinen Mails gelernt". Zwei Kanäle, beide enden mit einer Rückfrage, bevor etwas in `stil/` geschrieben wird.

## Was ein Lernsignal ist

Nur Form, nie Inhalt. Ein Lernsignal ist eine Änderung an Anrede, Grußformel, Du oder Sie, Länge, Absatzführung, Wortwahl, Ton, Reihenfolge, Aufbau, Betreffmuster oder Signatur. Kein Lernsignal ist ein anderer Termin, eine andere Zahl, eine Zusage statt Absage, ein anderer Empfänger oder ein Sachfehler, den der Nutzer korrigiert.

Jedes Lernsignal wird als Eintrag formuliert:

```
## 2026-11-05 | Register kunde | Marketingleitung einer Marke
- Vorher (Claude): „Über einen ersten Austausch würde ich mich sehr freuen."
- Nachher (Nutzer): „Lass uns dazu kurz sprechen, passt dir Donnerstag?"
- Regel: Terminwunsch als direkte Aufforderung mit konkretem Tag formulieren, nicht als Freudebekundung.
```

Vorher und Nachher höchstens ein bis zwei Sätze, keine Zahlen, Preise oder Klarnamen. Die Regel ist ein Satz im Imperativ, der beim nächsten Entwurf allein verständlich ist.

## Kanal A, Korrektur im Chat

Löst aus, wenn der Nutzer nach dem Zeigen oder nach dem Anlegen einen Entwurf umformuliert, kürzt, eine Formulierung tauscht oder sagt „so habe ich es versendet: ...".

1. Die geänderte Fassung übernehmen (SKILL.md Abschnitt 6 oder 7), zuerst den Entwurf fertigstellen.
2. Die Lernsignale als Einträge formulieren, höchstens drei je Mail. Wiederholt sich eine Regel aus `LERNLOG.md`, nicht doppelt anlegen, sondern den bestehenden Eintrag um das Datum ergänzen und das im Chat sagen.
3. Per AskUserQuestion zeigen: „Ich habe daraus gelernt: <Regeln als Liste>. Soll ich das speichern?" mit den Optionen „Ja, speichern", „Nur Regel 1" (bei mehreren), „Nein". Zusätzlich fragen, ob die Endfassung als Beispielmail ins Register soll, wenn sie typisch ist und keine sensiblen Angaben enthält.
4. Nach dem Ja die bestätigten Einträge an `stil/LERNLOG.md` anhängen. Beispielmail nach `stil/register/<slug>.md` unter „Beispiele" mit Datum, Empfängertyp, Anlass, Text ohne Signatur, Klarnamen durch Typ ersetzt, Zahlen durch `[Zahl]`. Höchstens fünf Beispiele je Register, bei mehr fragen, welches alte raus soll.
5. Im Entwurfslog die Zeile dieses Entwurfs auf `korrigiert` setzen.

Bei „Nein" nichts schreiben und nicht nachhaken.

## Kanal B, Abgleich mit gesendeten Mails

Löst aus bei „was hast du aus meinen Mails gelernt", „gleich meine Entwürfe ab" oder wenn im Entwurfslog Zeilen mit `offen` älter als sieben Tage sind und der Nutzer gerade einen neuen Entwurf bestellt (dann einmal in einem Satz anbieten, nicht aufdrängen).

1. `stil/entwuerfe-log.tsv` lesen, alle Zeilen mit `offen`. Keine: in einem Satz sagen, dass es nichts abzugleichen gibt, Ende.
2. `outlook_email_search` mit `folderName: "Sent Items"`, `afterDateTime` gleich dem ältesten offenen Datum, `limit: 25`, Seiten über `nextOffset` oder `nextCursor`. Nur lesen, nichts anderes.
3. Je offener Zeile die gesendete Mail finden: zuerst über die `conversation_id`, bei neuen Mails über Betreff und Datum (gesendet innerhalb von 14 Tagen nach dem Entwurf). Kein Treffer nach 14 Tagen: Zeile auf `nicht gesendet` setzen, Textkopie unter `entwuerfe/` löschen.
4. Gefundene Mail mit `read_resource` lesen, nur den eigenen Text oberhalb des Signaturblocks und ohne zitierten Verlauf mit der Textkopie unter `entwuerfe/` vergleichen. Gleich bis auf Leerzeichen und Umbrüche: Zeile auf `gesendet wie entworfen` setzen. Ungleich: Lernsignale wie oben formulieren, nur Form, keine Inhaltsänderungen.
5. Alle Lernsignale gesammelt per AskUserQuestion zeigen, getrennt nach Regeln und möglichen Beispielmails (unverändert gesendete Entwürfe sind gute Kandidaten). Der Nutzer wählt aus.
6. Bestätigtes schreiben wie in Kanal A Schritt 4. Zeilen auf `gesendet mit Änderung` setzen. Textkopien aller abgeglichenen Entwürfe unter `entwuerfe/` löschen, der Text liegt ohnehin im Postfach.
7. Rückmeldung in zwei Sätzen: wie viele Entwürfe abgeglichen, wie viele unverändert gesendet, welche Regeln neu sind.

## Konsolidierung

Stehen in `LERNLOG.md` rund zehn Einträge oder wiederholt sich eine Regel, vorschlagen, die gesicherten Regeln ins Profil oder in das betroffene Register zu übernehmen. Den Vorschlag zeigen (welche Regel wohin, welche Einträge danach aus dem Log fallen). Nach dem Ja die Regeln eintragen, die Einträge im Log unter einer Zeile „Übernommen am <Datum>" zusammenfassen und die Zeile „Zuletzt geändert" in `PROFIL.md` setzen. Ab 15 Einträgen meldet das die SKILL.md bei jedem Entwurf, bis konsolidiert ist.

## Grenzen

- Postfach nur lesen. Kein Senden, Löschen, Verschieben, keine Kategorien.
- Nie Mails der Gegenseite speichern, auch nicht in Ausschnitten. Nie Klarnamen, Adressen, Telefonnummern, Preise oder Vertragsdetails in Lernlog oder Beispiele.
- Nichts ohne Ja schreiben. Eine einzelne Abweichung ist oft Zufall, keine Regel, deshalb entscheidet der Nutzer.
