# Stil lernen (erster Lauf) und Stil später ändern

Diese Datei liest du, wenn `stil/PROFIL.md` im Skill-Ordner fehlt oder der Nutzer seinen Stil ändern will. Danach geht es in der SKILL.md mit Abschnitt 2 weiter. Die Tools aus Abschnitt 0 sind geladen.

Sag in zwei Sätzen, was jetzt passiert: „Bevor ich die erste Mail schreibe, lese ich einmal deine gesendeten Mails der letzten Monate und leite daraus ab, wie du schreibst. Du siehst das Ergebnis und entscheidest, was gespeichert wird. Das dauert ein paar Minuten und passiert nur einmal."

## Schritt 1, gesendete Mails lesen

`outlook_email_search` mit `folderName: "Sent Items"`, `afterDateTime` (heute minus 180 Tage), `limit: 25`, weitere Seiten über `nextOffset` oder `nextCursor`, bis rund 100 Mails da sind oder der Zeitraum erschöpft ist. Keine `query`, kein `recipient` dazu (die Kombination wird abgelehnt).

Aus der Liste aussortieren, was keinen eigenen Text enthält: Weiterleitungen ohne Kommentar, Kalenderzusagen, automatische Antworten, Mails mit leerem Vorschautext. Von den übrigen bis zu 60 mit `read_resource` lesen, dabei die Mischung der Empfänger im Blick behalten (nicht nur die jüngsten 60 an dieselbe Person).

In jeder Mail nur den eigenen Text des Nutzers auswerten. Zitierte Verläufe (ab „Von:", „From:", „Am ... schrieb", „-----Original") und alles unterhalb des Signaturblocks zählen nicht.

**Weniger als 10 brauchbare Mails:** Schritt 2 trotzdem machen, soweit es geht, und im Profil den Hinweis „aus wenigen Mails gelernt, bitte nachschärfen" setzen. Im Chat sagen, dass das Profil noch dünn ist und mit jeder Korrektur besser wird. Unter 3 Mails: den Nutzer die Fragen aus Schritt 4 direkt beantworten lassen und ein Profil ohne Beispielmails anlegen.

## Schritt 2, Register erkennen

Die Mails nach Empfängertyp und Anlass in Gruppen legen. Typische Register einer kleinen Firma sind Erstansprache (neue Kontakte, Akquise), Kunde (laufende Projekte, Abstimmungen, Angebote), Partner und Dienstleister (Creator, Agenturen, Lieferanten), intern (Team, Mitgründer) und Verwaltung (Bank, Steuer, Behörden). Nur Register vorschlagen, die in den Mails wirklich vorkommen oder die der Nutzer nennt. Drei bis fünf Register sind gut, mehr als sechs nicht.

Je Register festhalten, woran es erkennbar ist (Empfängertyp, Anlass, Domain-Muster wie eigene Firma bei intern), Du oder Sie, Anrede, Grußformel, typische Länge, Sprache (Deutsch, Englisch, gemischt) und ein bis zwei Besonderheiten (etwa „Zahlen groß und konkret", „immer ein Terminvorschlag am Ende", „sehr kurz, ohne Anrede bei intern").

## Schritt 3, Kernregeln und Signatur destillieren

Was über alle Register gleich bleibt, kommt ins Profil: Anrede-Staffel (wann Hallo, wann Lieber, wann Guten Morgen, wann Sie), Satzlänge und Direktheit, wie Absätze gesetzt werden, Umgang mit Ausrufezeichen, Emojis, Abkürzungen und Englisch, wie Bitten und Fristen formuliert werden, wie Termine vorgeschlagen werden, wie die Mail schließt.

**Signaturblock.** Der Text, der in den gesendeten Mails am Ende wiederkehrt (Name, Firma, Rolle, Telefon, Website), ist der Signaturblock. Wörtlich übernehmen, inklusive Grußformel davor, falls sie fest dazugehört. Gibt es zwei Varianten (kurz bei intern, lang nach außen), beide festhalten und je Register zuordnen. Keine Signatur gefunden: nachfragen, wie die Mail unterschrieben sein soll.

## Schritt 4, zeigen und fragen

Alles in einer Nachricht zeigen, in Alltagssprache, ohne Dateinamen:

1. Die Kernregeln als kurze Liste (8 bis 15 Zeilen).
2. Die Register als Tabelle: Name, woran erkennbar, Du oder Sie, Anrede, Grußformel, Länge, Besonderheit.
3. Den Signaturblock wörtlich.
4. Je Register ein bis zwei Mails, die Claude als Beispiele speichern möchte, mit Datum, Empfängertyp und Anlass, Text vollständig (nur der eigene Text, ohne Signatur, ohne Verlauf). Dazu sagen, dass Klarnamen und Adressen der Empfänger durch den Typ ersetzt werden.

Dann per AskUserQuestion fragen, mit den Optionen „So speichern", „Etwas ändern" und „Nochmal von vorn". Bei „Etwas ändern" offen fragen, was anders sein soll (Register umbenennen, zusammenlegen, Regel streichen, Beispiel streichen, Signatur korrigieren), einarbeiten, erneut zeigen. So lange, bis der Nutzer „passt" sagt.

Zusätzlich fragen, falls aus den Mails nicht klar: ob Englisch vorkommt und in welchem Register, ob bei Terminvorschlägen der Kalender geprüft werden darf, ob es Themen gibt, die Claude in Entwürfen nie zusagen soll (Preise, Rabatte, Termine, Kapazitäten als Vorschlag).

## Schritt 5, speichern

Erst nach dem Ja:

- `stil/PROFIL.md` aus `vorlagen/profil.md` füllen.
- Je Register `stil/register/<slug>.md` aus `vorlagen/register.md` füllen (Slug klein, ohne Umlaute, etwa `erstansprache`, `kunde`, `partner`, `intern`). Beispielmails hinein, Klarnamen, Adressen und Telefonnummern der Empfänger durch den Typ ersetzt, Zahlen und Preise aus den Beispielen entfernt oder durch `[Zahl]` ersetzt.
- `stil/LERNLOG.md` aus `vorlagen/lernlog.md` anlegen, noch ohne Einträge.

Im Chat in zwei Sätzen bestätigen, was jetzt gespeichert ist, und sagen, dass jede Korrektur an einem Entwurf den Stil weiter schärft, immer erst nach Rückfrage. Dann mit dem ursprünglichen Auftrag weitermachen (SKILL.md Abschnitt 2) oder enden, wenn es nur um die Einrichtung ging.

## Stil später ändern

Auf „ändere meinen Stil", „nimm ein Register dazu", „meine Signatur hat sich geändert", „aktualisiere meinen Stil aus den gesendeten Mails":

- **Einzelne Regel, Register oder Signatur:** `PROFIL.md` und das betroffene Register lesen, den Ist-Stand zeigen, die Änderung formulieren, nach dem Ja die Datei anpassen und die Zeile „Zuletzt geändert" setzen. Nie eine Datei komplett neu schreiben, nur die betroffenen Stellen.
- **Neu aus Gesendet lernen:** Schritt 1 bis 4 erneut, aber als Vorschlag gegen das bestehende Profil (was neu, was anders, was bestätigt). Bestehende Beispielmails und Lernlog-Einträge bleiben, es sei denn, der Nutzer streicht sie ausdrücklich.
- **Register löschen:** die Datei nicht löschen, sondern im Profil aus der Registerliste nehmen und in der Registerdatei die Zeile „Status: inaktiv" setzen.
