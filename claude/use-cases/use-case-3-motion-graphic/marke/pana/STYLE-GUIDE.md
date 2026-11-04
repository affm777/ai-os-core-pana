# Style-Guide: Pana Agency (vorläufig)

Status: vorläufig, aus der Website pana-agency.de abgeleitet (Stand 04.11.2026), vor dem ersten Video kurz bestätigen. Beim ersten Video diesen Ordner nach `brand/pana/` im Arbeitsordner kopieren und Abweichungen dort eintragen.

## Marke

Pana Agency, Sport-Creator- und Influencer-Marketing-Agentur in Neu-Isenburg (DACH-Raum). Gesellschafter Paul Hopson und Natnael Fekade. Wortmarke „PANA“ in Versalien, Produktname nach außen „PANA Agency“. Referenzen laut Website: Trade Republic, Deutsches Fußballmuseum, SOCCERBEAT (nur als Text nennen, keine Fremdlogos ins Video).

## Farben

| Rolle | Hex | Herkunft (CSS-Variable) |
|---|---|---|
| Primärfarbe (Rot) | `#FF4937` | `--pana-red`, Knöpfe, Akzentwörter, Wortmarke |
| Rot dunkel (Text auf Rot-Flächen, Hover) | `#E23420` | `--pana-red-ink` |
| Rot tief | `#B81F10` | `--pana-red-deep`, Text auf Blush |
| Blush (helle Tönung) | `#FFE3E0` | `--pana-blush`, Karten-Tint |
| Blush dunkel | `#FFD0CB` | `--pana-blush-deep` |
| Rot hell (Highlights) | `#FF9D92` | Overline-Text, Linien |
| Hintergrund dunkel | `#111111` | `--pana-ink`, Seitenhintergrund, Standard |
| Karten dunkel | `#1C1C1D` bis `#2C2C2E` | `--gray-900`, `--gray-800` |
| Text hell | `#FFFFFF` | Überschriften auf dunkel |
| Text gedämpft | `#C9C9CF` / `#A4A4AB` | `--gray-300`, `--gray-400`, Fließtext auf dunkel |
| Hellfläche (Alternative) | `#F8F8F9` / `#FFFFFF` | `--gray-50`, `--pana-white`, falls ein heller Look gewünscht ist |

Standard-Look der Marke ist dunkel: Hintergrund `#111111`, Überschriften Weiß, ein Wort pro Zeile in Rot `#FF4937`, Rot-Glow (rgba 255,73,55 mit 0,3 bis 0,5 Alpha) als Schatten unter Knöpfen und Karten. Kontrast: Weiß auf `#FF4937` erreicht rund 3,4:1 und auf `#E23420` rund 4,4:1, für Knöpfe mit weißer Schrift also `#B81F10` (6,5:1) oder dunkle Schrift `#111111` auf Rot (5,6:1).

## Schrift

- Display (Überschriften, Zahlen, Wortmarke): **Bebas Neue**, Regular 400, Versalien, enge Laufweite, Akzentwörter kursiv (auf der Website als synthetische Kursive). Frei (SIL Open Font License), per fontsource einbindbar: `@fontsource/bebas-neue`.
- Fließtext und Knöpfe: **Creato Display** (Gewichte 300 bis 900, auf der Website selbst gehostet als OTF). Nicht frei verfügbar, keine fontsource-Quelle. Ersatz bis Freigabe der Originaldateien: **Inter** (`@fontsource/inter`) oder **Manrope** (`@fontsource/manrope`), Gewichte 400, 500, 700. Liefert Pana die OTF-Dateien, liegen sie unter `brand/pana/fonts/` und werden per @font-face eingebunden.
- Fallbacks laut Website: Anton, Oswald (Display), Helvetica Neue, Arial (Text).

## Logo

- `logo/pana-wortmarke-512.png`: Wortmarke „PANA“ in Rot `#FF4937` auf `#111111`, 512 x 512 px, Rasterbild (Favicon der Website). Kein SVG vorhanden.
- Im Video die Wortmarke bevorzugt als Text in Bebas Neue setzen (Farbe `#FF4937`, Laufweite 0.01em), das entspricht dem Logo in der Website-Navigation und skaliert verlustfrei. Das PNG nur als Referenz oder für kleine Größen.
- Vor dem ersten Video bei Pana nach der Vektor-Wortmarke (SVG oder AI) fragen.

## Tonalität

Direkt, selbstbewusst und ergebnisorientiert, Zahlen stehen groß im Bild (etwa „>4.300.000 Views“, „100+ Creator“). Kurze Sätze in Du-Ansprache an Marken („Lass uns deine nächste Kampagne bauen“), Fachbegriffe aus dem Creator-Marketing (Brand Deals, Creator-Research, Performance-Reporting) ohne Erklärung. Sportlich und energisch im Look, dabei sachlich im Text, kein Fan-Pathos und keine Superlative ohne Beleg.

## Zielgruppe

Marketing-Entscheider bei Marken (Brand- und Marketing-Manager, Head of Marketing, Sponsoring-Verantwortliche), die neu in den Sport einsteigen oder dort schon aktiv sind. Sie wollen Reichweite, die sich messen lässt, und einen Partner, der Creator-Kampagnen komplett verantwortet.

## Einsatz der Videos

- **Sales-Anker für Erstgespräche:** 15 bis 30 s, 16:9 für Mail und Pitch-Deck, eine Case-Zahl, Leistung in einem Satz, Endkarte mit „Erstgespräch vereinbaren“ und pana-agency.de.
- **Kampagnen-Teaser:** 9:16 für Instagram und TikTok, Hook in den ersten zwei Sekunden, ein Creator-Thema oder eine Kampagnen-Zahl, Endkarte mit Wortmarke und Handle @panaagency_.
- Claims von der Website, die sich eignen: „Creator Marketing als Wachstumshebel.“, „Wir verbinden Brands mit den richtigen Sport-Creatorn.“, „Lass uns deine nächste Kampagne bauen.“

## Offen (vor dem ersten Video klären)

- Vektor-Wortmarke und Lizenz für Creato Display.
- Ob der dunkle Look auch für Social gilt oder ob es eine helle Variante (Blush auf Weiß) geben soll.
- Freigabe der Referenznennung (Trade Republic, Deutsches Fußballmuseum, SOCCERBEAT) in Videos.
