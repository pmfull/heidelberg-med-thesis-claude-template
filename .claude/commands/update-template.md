---
description: Neueste Version der Heidelberg-Vorlage in die eigene Kopie übernehmen, ohne eigenen Text zu verlieren
---

Du übernimmst den aktuellen Stand des geteilten Templates
(https://github.com/pmfull/heidelberg-med-thesis-claude-template) in die
eigene Kopie der Nutzerin/des Nutzers. Geh davon aus, dass die Person wenig
Erfahrung mit Git hat: erkläre kurz, was du tust, und tue nichts, was
schwer rückgängig zu machen ist, ohne Rückfrage. Oberste Regel: **Der eigene
Text der Nutzerin/des Nutzers geht niemals verloren.** Im Zweifel fragst du
nach, statt etwas zu löschen oder zu überschreiben.

## Schritt 0 — Sichern

- `git status`. Ist etwas nicht committet, committe den aktuellen Stand
  zuerst (z. B. „Stand vor Template-Update“), damit jederzeit zurückgekehrt
  werden kann. Erkläre, dass das der Sicherheitsgurt für alles Weitere ist.
- Notiere den aktuellen Commit (`git rev-parse --short HEAD`) und sag der
  Person, dass sie mit `git reset --hard <dieser Commit>` jederzeit zu diesem
  Stand zurück kann, solange nichts gepusht wurde.

## Schritt 1 — Template als Remote

- Prüfe `git remote -v`. Fehlt der Remote `template`, lege ihn an:
  `git remote add template https://github.com/pmfull/heidelberg-med-thesis-claude-template.git`
  Der Remote dient nur zum Lesen; dorthin wird nie gepusht.
- `git fetch template master`.

## Schritt 2 — Vorschau

- Zeige `git log HEAD..template/master --oneline` und
  `git diff --stat HEAD template/master`. Falls Git meldet, dass es keine
  gemeinsame Basis gibt (Kopie über „Use this template“ erstellt), zeig
  stattdessen `git diff --stat HEAD template/master` und erkläre, dass der
  Merge gleich mit `--allow-unrelated-histories` laufen muss.
- Erkläre in zwei, drei Sätzen, welche Dateien betroffen sind und welche
  davon eigenen Inhalt der Person enthalten könnten (typisch: `main.tex`,
  `titlepage.tex`, `chapters/*`, `refs.bib`). Frage, ob es losgehen soll.

## Schritt 3 — Merge

- `git merge template/master` (bei fehlender gemeinsamer Basis mit
  `--allow-unrelated-histories`). Kein Rebase, kein Squash: der Merge-Commit
  ist später die Grundlage dafür, dass der Update-Hinweis beim Sitzungsstart
  wieder verstummt.
- Konflikte löst du nach diesen Regeln:
  - **Eigener Text bleibt immer erhalten**: Kapitelinhalte, Titelblattangaben,
    Literatur, Widmung, Danksagung, Eigenanteil, eingetragene Namen (Betreuung,
    Verfasser:in), ausgefüllte KI-Tool-Zeilen.
  - **Struktur und Pflichttexte kommen vom Template**: `main.tex`-Gerüst
    und Schalter, `CLAUDE.md`, `README.md`, `NOTICE.md`, `.claude/`,
    `.gitignore`, `thesis.cls`, und der Wortlaut der Pflichterklärungen in
    `chapters/10_*`, `11_*`, `11b_*`, `12_*` und `KI_Taeuschungshinweis.tex`.
    Eigene Angaben darin (Name der Betreuung, KI-Tool-Einträge, Datum)
    überträgst du in die neue Form, z. B. frühere Freitext-Einträge zu
    KI-Tools in die Tabelle nach Muster 11 b.
  - Wurde eine Datei im Template umbenannt (z. B.
    `10_Eidestattliche_Erklärung.tex` zu `10_Eidesstattliche_Versicherung.tex`),
    übernimm den neuen Namen und achte darauf, dass `main.tex` ihn einbindet
    und die alte Datei nicht doppelt bleibt.
  - Bei Unsicherheit, welche Seite „eigener Text“ ist: beide Fassungen kurz
    zeigen und fragen.
- Nach dem Auflösen: `git add` der gelösten Dateien, `git commit` mit
  Merge-Nachricht, z. B. „Template-Update vom <Datum> übernommen“.

## Schritt 4 — Schalter und Nachzügler

- Setze die Schalter in `main.tex` passend zur Arbeit und frag, wenn du es
  nicht aus der Arbeit ablesen kannst: `\thesisdegree` (med/dent/schum),
  `\thesislanguage` (de/en), `\kiverwendettrue`/`\kiverwendetfalse`.
- Prüfe `Leitlinien_Uni_HD/`: liegen die Richtlinien-PDFs lokal vor? Wenn
  nicht, hole Schritt 2 von `/start` nach (Download von den offiziellen
  Seiten). Die PDFs werden seit Oktober 2026 nicht mehr mit dem Repo
  verteilt.
- Weise darauf hin, dass sich mit dem Update die Formvorgaben geändert haben
  können (z. B. Abfassungsrichtlinien 2.5 ab 01.11.2026: KI-Dokumentation
  als Tabelle, Nichtverwendungserklärung). Wenn bereits ausgefüllte
  KI-Angaben existieren, prüfe gemeinsam, ob sie noch vollständig sind.

## Schritt 5 — Bauen und Übergabe

- Baue die Arbeit einmal komplett (`latexmk -pdf main.tex` im Ordner
  `Heidelberg_University_Medical_Faculty_Doctoral_Thesis/`), behebe
  Build-Fehler, die vom Merge stammen.
- Zeig am Ende eine Liste aller Dateien, in denen du Konflikte gelöst oder
  eigene Angaben in neue Strukturen übertragen hast, damit die Person genau
  diese Stellen gegenliest.
- Pushe nichts, bevor die Person es gesehen und bestätigt hat.
