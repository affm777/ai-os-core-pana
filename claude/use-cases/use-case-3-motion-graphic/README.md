# Ein Social-Media-Video aus deiner Beschreibung

Claude baut aus deiner Beschreibung ein kurzes animiertes Video (Motion Graphic) für Instagram, TikTok, LinkedIn oder eure Website. Du nickst Storyboard und Vorschau ab und bekommst eine fertige MP4-Datei, Code siehst du dabei nicht. Claude postet und veröffentlicht nichts.

## Installieren

Sag Claude:
```
Installier mir den Use Case motion-graphic einmal global: hol in ~/ai-os-core mit git pull den neuesten Stand, führ bash ~/ai-os-core/claude/use-cases/use-case-3-motion-graphic/install.sh aus, installier alles Fehlende selbst mit den Befehlen, die das Skript nennt, und sag mir in einfachen Worten, ob alles geklappt hat.
```

Danach eine neue Session starten, damit Claude den Skill kennt.

## Loslegen

**Hast du eigene Daten?** Style-Guide, Logo, Farben, Vorbilder (Videos, Bilder, Links) oder eine eigene Sprach- oder Musikdatei, nichts davon ist Pflicht. Für Pana Agency liegt bereits ein vorbereitetes, vorläufiges Markenprofil (Farben, Schrift, Wortmarke, Website-Screenshots) im Bundle unter `marke/pana/`, Claude kopiert es beim ersten Video nach `brand/pana/` in deinen Arbeitsordner und bestätigt es kurz mit dir. Öffne Claude in deinem Projektordner, zieh die Dateien ins Chatfenster und sag Claude:
```
Hier sind Marken-Dateien und Vorbilder für Pana Agency. Leg sie an der richtigen Stelle ab und nutz sie für meine Videos.

<hier Dateien anhängen oder Links einfügen>
```

**Dein erstes Video.** Öffne Claude in deinem Projektordner und sag Claude:
```
Ich möchte ein kurzes Video für Instagram machen.
```

Sprichst du lieber Englisch, sag Claude:
```
I want to make a short video for Instagram.
```

## Grenzen

- Claude verwendet nur, was du erzählst oder lieferst. Zahlen, Namen, Termine oder Webadressen werden nie erfunden, fremde Logos, Bilder oder Texte kommen nicht ins Video.
- Stimme, Musik und Geräusche von ElevenLabs kosten Credits, Claude nennt sie vorher. Ohne ElevenLabs-Anbindung gibt es deine eigene Tondatei, einfache Geräusche aus dem Film oder keinen Ton.
- Gedacht für kurze animierte Videos bis etwa 60 Sekunden, nicht für Filmaufnahmen.
