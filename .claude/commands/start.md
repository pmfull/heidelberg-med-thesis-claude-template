---
description: Onboarding für neue Nutzer:innen – eigenes Repo einrichten und bestehenden Entwurf einspielen
---

Du führst eine Doktorandin/einen Doktoranden durch die Ersteinrichtung dieser
Vorlage. Geh davon aus, dass die Person **noch nie** mit Git, GitHub, LaTeX
oder Claude Code gearbeitet hat, auch wenn sie das nicht explizit sagt —
erkläre Fachbegriffe kurz, bevor du sie benutzt, und beschreibe UI-Klicks so
konkret wie ein Screenshot-Tutorial ("klicke oben rechts auf den grünen
Button..."), nicht nur als Kommandozeile. Sei konkret, führe Schritt für
Schritt, und tue nichts Größeres (v. a. `git push`, Remote-Änderungen) ohne
Rückfrage. Gehe die folgenden Schritte der Reihe nach durch; überspringe einen
Schritt nur, wenn seine Prüfung zeigt, dass er bereits erledigt ist.

## Schritt 0 — Voraussetzungen prüfen

- Weise kurz darauf hin, dass Claude Code ein **kostenpflichtiges
  Anthropic-Abo** voraussetzt (nicht im kostenlosen Claude-Plan enthalten) —
  falls die Person bereits hier sitzt, hat sie das i. d. R. schon geklärt,
  aber ein kurzer Hinweis samt Verweis auf die aktuellen Nutzungsbedingungen
  und Datenschutzbestimmungen auf der Anthropic-Website schadet nicht.
- Weise **vor dem Einspielen eines Entwurfs** darauf hin, dass sich in den
  Claude-Kontoeinstellungen (claude.ai → Einstellungen → Datenschutz) die
  Verwendung der eigenen Unterhaltungen zum Training künftiger Modelle
  ausschalten lässt, und empfiehl das für eine noch unveröffentlichte
  Doktorarbeit. Stelle dabei klar: Auch mit dieser Einstellung laufen die
  Modelle auf Servern von Anthropic, die Inhalte verlassen also den eigenen
  Rechner. Dass Inhalte der Arbeit vor der Veröffentlichung nach außen
  gelangen, lässt sich damit verringern, aber nicht mit letzter Sicherheit
  ausschließen. Patientendaten gehören unabhängig davon nie in Claude.
  Warte auf eine kurze Bestätigung, dass die Person das zur Kenntnis
  genommen hat (sie muss die Einstellung nicht ändern).
- Prüfe `git --version`. Fehlt Git, leite kurz durch die Installation für das
  jeweilige Betriebssystem (macOS: `xcode-select --install` oder
  [git-scm.com](https://git-scm.com); Windows: [git-scm.com](https://git-scm.com);
  Linux: `sudo apt install git` o. ä.) und warte auf Bestätigung, bevor du
  weitermachst.
- Frage, ob bereits ein **GitHub-Account** existiert. Falls nein: kurz auf
  [github.com/join](https://github.com/join) verweisen (kostenlos) und warten,
  bis einer eingerichtet ist — ohne Account kein eigenes Repo.
- Prüfe, ob `gh` (GitHub CLI) installiert und eingeloggt ist
  (`gh auth status`). Falls ja: das vereinfacht Schritt 1 (Repo-Erstellung
  direkt aus dem Terminal statt über den Browser). Falls nein: kein Problem,
  dann läuft Schritt 1 über die GitHub-Webseite — nicht von dir aus
  installieren, ohne zu fragen, ob die Nutzerin/der Nutzer das möchte.

## Schritt 1 — Eigenes Repo statt geteiltem Template

Prüfe mit `git remote -v` und `git log --oneline -20`, wohin `origin` zeigt.
(Falls in diesem Ordner noch gar kein Git-Repo existiert, wurde vermutlich
das Template noch nicht geklont — hole das zuerst nach:
`git clone https://github.com/pmfull/heidelberg-med-thesis-claude-template.git .`
in einen leeren Zielordner, dann hier fortfahren.)

- **Zeigt `origin` auf das geteilte Community-Template**
  (`.../heidelberg-med-thesis-claude-template.git`, egal unter welchem
  Account), UND enthält die Historie nur den einen ursprünglichen
  "Initial import"-Commit: Das ist ein direkter Klon des geteilten Templates.
  Erkläre kurz, warum das ein Problem ist (jeder Push würde in das geteilte
  Template aller Nutzer:innen gehen, nicht in einen eigenen Bereich), und
  führe dann durch die Trennung:
  1. Neues, leeres Repo erstellen:
     - **Mit `gh` CLI** (falls in Schritt 0 verfügbar): nach Bestätigung
       `gh repo create <name> --private --source=. --remote=neu` vorschlagen
       (Name z. B. `meine-doktorarbeit`), dann `git remote remove origin`,
       `git remote rename neu origin`.
     - **Ohne `gh` CLI**: Schritt für Schritt anleiten — github.com öffnen,
       oben rechts auf das "+"-Symbol → "New repository" klicken, Namen
       vergeben (z. B. `meine-doktorarbeit`), **Private** auswählen (wichtig:
       nicht "Add a README" o. ä. anhaken, das Repo muss leer bleiben),
       "Create repository" klicken. Warte auf die resultierende URL.
     Empfehlung **privat**, da eigene Entwürfe i. d. R. unveröffentlichte
     Inhalte enthalten (siehe Regel 3 in `README.md`: strenger Datenschutz,
     das gilt erst recht für alles, was noch nicht durch die eigene
     Doktorarbeit autorisiert veröffentlicht ist).
  2. Sobald die URL des neuen, leeren Repos vorliegt (falls nicht schon per
     `gh` erledigt), führe aus (nach Bestätigung durch die Nutzerin/den
     Nutzer, da dies ein Remote-Push ist):
     ```
     git remote remove origin
     git remote add origin <NEUE-URL>
     git push -u origin master
     ```
  3. Bestätige danach mit `git remote -v`, dass `origin` jetzt auf das eigene
     Repo zeigt.
- **Zeigt `origin` bereits auf einen anderen Account/ein anderes Repo** (z. B.
  weil über den "Use this template"-Button auf GitHub erstellt): nichts zu
  tun, kurz bestätigen und weiter zu Schritt 2.

## Schritt 2 — Offizielle Regelwerke herunterladen

Die Abfassungsrichtlinien und die KI-Leitlinie sind aus urheberrechtlichen
Gründen nicht im Repo enthalten (`Leitlinien_Uni_HD/` steht in
`.gitignore`). Lade sie lokal herunter, damit du später darin nachlesen
kannst. Überspringe den Schritt, wenn beide bereits in `Leitlinien_Uni_HD/`
liegen und noch aktuell sind.

1. Rufe die Fakultätsseite
   https://www.medizinische-fakultaet-hd.uni-heidelberg.de/fakultaet/akademische-laufbahn/promotion/promotion-zum-dr-sc-hum/schreiben-der-dissertation
   ab und ermittle die dort verlinkte(n) PDF(s) der Abfassungsrichtlinien
   samt Gültigkeitszeitraum. Rate keine URL. Findest du keinen Link, bitte
   die Nutzerin/den Nutzer, das PDF selbst herunterzuladen und in
   `Leitlinien_Uni_HD/` abzulegen.
2. Sind mehrere Versionen verlinkt (z. B. eine alte und eine ab einem
   Stichtag gültige neue), frage nach dem geplanten Einreichungsdatum und
   erkläre, welche Version dann gilt. Im Zweifel beide herunterladen und auf
   das Promotionsbüro verweisen.
3. Lade die PDF(s) mit ihrem Originaldateinamen nach `Leitlinien_Uni_HD/`,
   außerdem die KI-Leitlinie von
   https://www.uni-heidelberg.de/md/zaw/ufg/informationen/ki-leitlinie-de.pdf
   als `Leitlinien_Uni_HD/ki-leitlinie-de.pdf`.
4. Prüfe kurz mit `pdftotext`, dass die Dateien lesbar sind und tatsächlich
   die erwarteten Dokumente enthalten (Titel, Versionsnummer).

## Schritt 3 — Überblick verschaffen

Lies `README.md` (falls noch nicht im Kontext) und `CLAUDE.md`, damit du
Struktur, die fünf Grundregeln und die Arbeitsweise kennst. Fasse für die
Nutzerin/den Nutzer in 2–3 Sätzen zusammen, was jetzt ansteht, statt die
Dateien vollständig wiederzugeben.

Frage außerdem, welcher Doktorgrad angestrebt wird (Dr. med., Dr. med. dent.
oder Dr. sc. hum.), und setze `\thesisdegree` in `main.tex` entsprechend,
damit das Titelblatt stimmt.

## Schritt 4 — Bestehenden Entwurf einspielen

Frage konkret nach, ob bereits ein Entwurf existiert (Word-Datei, lose
Notizen, einzelne fertige Kapitel, oder "bei null") und wo dieser liegt.

Bevor du einen Entwurf einliest, weise kurz darauf hin, dass laut
KI-Leitlinie keine vertraulichen Daten und keine urheberrechtlich
geschützten Fremdtexte in externe KI-Systeme gehören. Wenn der Entwurf
unveröffentlichte eigene Daten oder Ergebnisse enthält, sollte vorab mit
der Betreuung geklärt sein, ob deren Verarbeitung durch Claude zulässig ist
(z. B. wegen Kooperationsverträgen oder Auflagen aus dem Ethikvotum). Frage
nach, ob das geklärt ist. Patientendaten vorher entfernen lassen.

- Falls ein Entwurf existiert: biete an, ihn **Kapitel für Kapitel** in die
  passenden `Heidelberg_University_Medical_Faculty_Doctoral_Thesis/chapters/*.tex`
  zu überführen (siehe Mapping in `main.tex`: Einleitung, Material und
  Methoden, Ergebnisse, Diskussion, Zusammenfassung, ...). Wandle Zitate in
  `\citep{}`/`\citet{}` mit passenden Einträgen in `refs.bib` um, statt sie als
  Klartext zu belassen. Erfinde dabei **niemals** Referenzen — wenn eine
  Quellenangabe im Originaltext lückenhaft ist, weise explizit darauf hin,
  statt sie zu vervollständigen.
- Falls kein Entwurf existiert: erkläre kurz `grep -rn "TODO" Heidelberg_University_Medical_Faculty_Doctoral_Thesis/`
  als Fahrplan für die noch offenen Stellen (Titelblatt, Widmung, Acronyms,
  Kapitelinhalte, ...) und biete an, gemeinsam mit dem Titelblatt/der
  Einleitung zu beginnen.

## Schritt 5 — Ausblick

Schließe mit einem kurzen Hinweis (keine lange Liste):

- Kapitelweise committen, nicht alles auf einmal.
- Vor Abgabe den `promotionsausschuss`-Agenten für ein Gutachten aufrufen.
- Jede KI-Nutzung direkt in `chapters/12_Anhang_KI_Tools.tex` dokumentieren,
  nicht erst am Ende aus dem Gedächtnis rekonstruieren.

Frage danach, womit die Nutzerin/der Nutzer konkret starten möchte, statt
selbst vorzugreifen.
