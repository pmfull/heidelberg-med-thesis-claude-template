---
description: Onboarding für neue Nutzer:innen – eigenes Repo einrichten und bestehenden Entwurf einspielen
---

Du führst eine Doktorandin/einen Doktoranden durch die Ersteinrichtung dieser
Vorlage. Das ist vermutlich die erste Interaktion mit diesem Projekt — sei
konkret, führe Schritt für Schritt, und tue nichts Größeres ohne Rückfrage.
Gehe die folgenden Schritte der Reihe nach durch; überspringe einen Schritt
nur, wenn seine Prüfung zeigt, dass er bereits erledigt ist.

## Schritt 1 — Eigenes Repo statt geteiltem Template

Prüfe mit `git remote -v` und `git log --oneline -20`, wohin `origin` zeigt.

- **Zeigt `origin` auf das geteilte Community-Template**
  (`.../heidelberg-med-thesis-claude-template.git`, egal unter welchem
  Account), UND enthält die Historie nur den einen ursprünglichen
  "Initial import"-Commit: Das ist ein direkter Klon des geteilten Templates.
  Erkläre kurz, warum das ein Problem ist (jeder Push würde in das geteilte
  Template aller Nutzer:innen gehen, nicht in einen eigenen Bereich), und
  führe dann durch die Trennung:
  1. Frage, ob bereits ein eigenes, leeres GitHub-Repo existiert. Falls nein:
     erkläre, dass es unter github.com/new angelegt werden muss — Empfehlung
     **privat**, da eigene Entwürfe i. d. R. unveröffentlichte Inhalte
     enthalten (siehe Regel 3 in `README.md`: strenger Datenschutz, das gilt
     erst recht für alles, was noch nicht durch die eigene Doktorarbeit
     autorisiert veröffentlicht ist).
  2. Sobald die URL des neuen, leeren Repos vorliegt, führe aus (nach
     Bestätigung durch die Nutzerin/den Nutzer, da dies ein Remote-Push ist):
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

## Schritt 2 — Überblick verschaffen

Lies `README.md` (falls noch nicht im Kontext) und `CLAUDE.md`, damit du
Struktur, die fünf Grundregeln und die Arbeitsweise kennst. Fasse für die
Nutzerin/den Nutzer in 2–3 Sätzen zusammen, was jetzt ansteht, statt die
Dateien vollständig wiederzugeben.

## Schritt 3 — Bestehenden Entwurf einspielen

Frage konkret nach, ob bereits ein Entwurf existiert (Word-Datei, lose
Notizen, einzelne fertige Kapitel, oder "bei null") und wo dieser liegt.

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

## Schritt 4 — Ausblick

Schließe mit einem kurzen Hinweis (keine lange Liste):

- Kapitelweise committen, nicht alles auf einmal.
- Vor Abgabe den `promotionsausschuss`-Agenten für ein Gutachten aufrufen.
- Jede KI-Nutzung direkt in `chapters/12_Anhang_KI_Tools.tex` dokumentieren,
  nicht erst am Ende aus dem Gedächtnis rekonstruieren.

Frage danach, womit die Nutzerin/der Nutzer konkret starten möchte, statt
selbst vorzugreifen.
