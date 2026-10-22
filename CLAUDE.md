# Kontext für Claude Code

Dieses Repository ist eine LaTeX-Vorlage für Inauguraldissertationen (Dr. med. /
Dr. med. dent. / Dr. sc. hum.) an der Medizinischen Fakultät Heidelberg, gedacht
dafür, mit Unterstützung von Claude Code zügig fertiggestellt zu werden. Die
Person, die hier mit dir arbeitet, ist eine Doktorandin/ein Doktorand, die/der
einen eigenen, oft schon angefangenen Entwurf (Word-Dokument, lose Notizen,
einzelne Kapitel) in dieses Template überführt und fertigstellt.

## Struktur

- `Heidelberg_University_Medical_Faculty_Doctoral_Thesis/` — das eigentliche
  LaTeX-Projekt. `main.tex` ist der Haupteinstiegspunkt und bindet alle Kapitel
  aus `chapters/` in der von der Fakultät vorgeschriebenen Reihenfolge ein.
  `titlepage.tex` enthält Titelblatt-Angaben, `refs.bib` die Literatur.
- `chapters/` — ein Kapitel pro Datei/Unterordner, durchnummeriert nach der in
  den Abfassungsrichtlinien vorgeschriebenen Gliederung. Offene Stellen sind
  mit `TODO` markiert — `grep -rn "TODO" chapters/` gibt einen schnellen
  Überblick über den Fortschritt.
- `Leitlinien_Uni_HD/` — die zwei maßgeblichen Regelwerke als PDF: die
  Abfassungsrichtlinien der Fakultät (`*Abfassungsrichtlinien*.pdf`,
  Dateiname enthält Datum und Version) und die KI-Leitlinie der Universität
  Heidelberg (`ki-leitlinie-de.pdf`). Sie sind **nicht** im Repo enthalten
  (Urheberrecht der Universität, `.gitignore`), sondern werden von `/start`
  (Schritt 2) von den offiziellen Seiten heruntergeladen. Fehlt der Ordner
  oder ist er leer, biete an, diesen Schritt nachzuholen. Bei Unsicherheit
  über Formatierungsfragen dort nachlesen (`pdftotext -layout <datei>.pdf -`),
  nicht raten. Bei mehreren Versionen gilt die, die zum geplanten
  Einreichungsdatum gültig ist.
- `.claude/agents/promotionsausschuss.md` — ein read-only Prüf-Agent, der die
  Arbeit wie ein Gutachtergremium bewertet. Nur auf ausdrücklichen Wunsch der
  Nutzerin/des Nutzers aufrufen, niemals proaktiv.
- `.claude/commands/start.md` — der `/start`-Onboarding-Befehl für neue
  Nutzer:innen (eigenes Repo einrichten, Entwurf einspielen). Wenn du merkst,
  dass `origin` noch auf das geteilte Community-Template zeigt und die
  Nutzerin/der Nutzer das offenbar noch nicht bemerkt hat, weise aktiv auf
  `/start` hin, statt das Problem zu ignorieren.

## Wie du helfen sollst

1. **Konvertierung bestehender Entwürfe.** Wird ein vorhandener Text (Word,
   Markdown, PDF-Auszug) übergeben, überführe ihn strukturerhaltend in das
   passende `chapters/*.tex`, ersetze doppelte Anführungszeichen/Sonderzeichen
   durch LaTeX-taugliche Entsprechungen, und übernimm Zitate als
   `\citep{}`/`\citet{}`-Referenzen in `refs.bib` statt als Klartext.
2. **Iteratives Arbeiten pro Kapitel.** Kapitel für Kapitel fertigstellen statt
   die gesamte Arbeit auf einmal umschreiben zu wollen — das hält Diffs
   überschaubar und lässt sich leichter gegenlesen.
3. **Keine erfundenen Quellen.** Erfinde niemals Literaturangaben, DOIs oder
   Studienergebnisse. Wenn eine Referenz nicht sicher verifizierbar ist, sag
   das explizit und schlage vor, sie zu recherchieren, statt sie zu erfinden.
4. **Rotem Faden folgen.** Achte darauf, dass Einleitung → Fragestellung →
   Material und Methoden → Ergebnisse → Diskussion → Schlussfolgerung
   inhaltlich zusammenhängen (siehe Prüfachse 3 des `promotionsausschuss`-
   Agenten für Details).
5. **Formvorgaben von Anfang an einhalten, nicht erst bei der Endkontrolle
   nachbessern.** Wende beim Formulieren und Überarbeiten aktiv die zentralen
   Vorgaben aus den Abfassungsrichtlinien (`Leitlinien_Uni_HD/`) an, u. a.:
   - Keine "we"-/Wir-Form (auch nicht in der englischen Fassung).
   - Geschlechtergerechte Sprache durchgehend (kein generisches Maskulinum).
   - Harvard-Zitierweise im Text (Autor Jahr, "et al." ab >2 Autoren); im
     Literaturverzeichnis alle Autoren vollständig, NLM-Zeitschriftenkürzel,
     DOI wo verfügbar.
   - Abbildungslegenden unterhalb, Tabellenüberschriften oberhalb der
     jeweiligen Abbildung/Tabelle; max. 4 Nachkommastellen.
   - Dezimalgliederung im Inhaltsverzeichnis nur bis zur 3. Ebene.
   Bei Detailfragen (Titelblatt, Zusammenfassung, Gliederungsreihenfolge,
   Seitenlimit etc.) direkt in der PDF nachlesen (`pdftotext -layout`), nicht
   raten oder aus dem Gedächtnis rekonstruieren — die vollständige Liste steht
   in Prüfachse 4 des `promotionsausschuss`-Agenten.
6. **KI-Leitlinie schon beim Schreiben mitdenken, nicht erst am Ende
   dokumentieren.** Bevor du selbst Inhalte erzeugst oder substanziell
   überarbeitest, prüfe kurz gegen `ki-leitlinie-de.pdf` bzw. die Harten
   Grenzen unten, ob die geplante Nutzung im abgesprochenen Rahmen liegt. Trage
   jede KI-Nutzung (auch deine eigene) direkt danach in
   `chapters/12_Anhang_KI_Tools.tex` ein (Tabelle nach Muster 11 b der
   Abfassungsrichtlinien 2.5: KI-Tool, Version, verwendete Funktionalität,
   Nutzungszweck, Einsatzbereich, Art der Validierung) — nicht erst kurz vor
   Abgabe aus dem Gedächtnis rekonstruieren. Die vollständigen Anforderungen
   stehen in Prüfachse 5 des `promotionsausschuss`-Agenten. Der dort
   vorbereitete Absatz unter der Tabelle, der diese Arbeitsumgebung
   (`heidelberg-med-thesis-claude-template`, Autor, URL, CC BY 4.0) und das
   zugrunde liegende LaTeX-Template von Ayala, Kausch, Klein und Thomas
   nennt, ist die von der Lizenz geforderte Namensnennung: beim Ausfüllen der
   TODOs erhalten, nicht kürzen oder entfernen. Den Wortlaut der Pflichterklärungen
   (`10_Eidesstattliche_Versicherung.tex`, `11_Angabe_KI.tex`,
   `11b_Erklaerung_Nichtverwendung_KI.tex`, `KI_Taeuschungshinweis.tex`) nie
   umformulieren: er muss dem Musterformular der Abfassungsrichtlinien
   entsprechen, der Text ab „Mir ist bewusst, dass …" bleibt unverändert. Wurde
   gar keine KI verwendet, gilt statt Erklärung und Anhang die
   Nichtverwendungserklärung (Muster 12, Schalter `\kiverwendetfalse` in
   `main.tex`). Die Erklärungen müssen in allen Pflichtexemplaren
   handschriftlich unterschrieben werden; weise darauf hin, wenn es um die
   Abgabe geht.
7. **Vor Abgabe:** die Nutzerin/der Nutzer explizit auf den
   `promotionsausschuss`-Agenten hinweisen, wenn eine Gesamtprüfung ansteht,
   aber den Agenten nicht von dir aus aufrufen.
8. **Keine stilistischen KI-Verräter — insbesondere keine langen
   Gedankenstriche.** Lange Gedankenstriche (Em-Dash „—" bzw. in LaTeX
   `---`) gelten weithin als Indiz für maschinell generierten Text und fallen
   in einer Arbeit, die unter der KI-Leitlinie steht, unangenehm auf. Verwende
   stattdessen normale, von Leerzeichen umgebene Bindestriche („ - "). Echte
   Halbgeviertstriche/En-Dashes (`--`, „–") in Zahlen-, Seiten- und
   Datumsbereichen (z. B. `pp.~238--249`, „5--8\,mm") sowie in Überschriften
   sind korrekt und bleiben unangetastet. Wenn du bestehenden Entwurf
   übernimmst, ersetze vorhandene Em-Dashes gleich mit — aber zeilenweise, ohne
   dabei versehentlich Zeilenumbrüche oder die genannten En-Dashes zu
   verschlucken.
9. **Eigenanteil sauber von Kooperationsleistungen trennen.** Die Fakultät
   prüft im Kapitel „Eigenanteil"/„Own Contributions" besonders kritisch, was
   tatsächlich eigene Leistung ist. Formuliere von Anfang an so, dass der
   eigene Beitrag (z. B. Studiendesign, Implementierung, statistische
   Auswertung) klar vom Beitrag der Kooperationspartner:innen abgegrenzt bleibt
   (z. B. klinische Begutachtung, bereitgestellte Daten, oder Parameter, die
   Dritte auf den eigenen Ergebnissen berechnet haben). Nenne Beitragende
   namentlich mit **präziser Rollenangabe**, und weise Methoden, die andere auf
   den eigenen Ergebnissen durchgeführt haben, ausdrücklich als deren Beitrag
   aus — eine präzise Rollentrennung schärft den Eigenanteil, statt ihn zu
   verwässern (Details in Prüfachse 3 des `promotionsausschuss`-Agenten).

## Harte Grenzen — niemals verhandelbar

- **Keine Patientendaten oder sonstigen sensiblen personenbezogenen Daten** in
  Prompts, Dateien oder Commits einfügen, die an ein KI-System übertragen oder
  in dieses (potenziell öffentliche) Repository committet werden. Das gilt für
  Rohdaten, Fallberichte, Bildmaterial und jede Information, die Rückschlüsse
  auf reale Patient:innen zulässt.
- **Keine vertraulichen Daten und keine urheberrechtlich geschützten
  Fremdtexte.** Die KI-Leitlinie schließt auch vertrauliche Daten (z. B. aus
  Kooperationsverträgen, Geheimhaltungsvereinbarungen oder unter Auflagen des
  Ethikvotums) und urheberrechtlich geschützte Texte (z. B. Volltexte fremder
  Publikationen, Buchauszüge) von der Eingabe in externe KI-Systeme aus. Bitte
  nicht darum, fremde Paper-PDFs einzulesen; arbeite mit Metadaten
  (Autor:innen, Titel, DOI) und den eigenen Notizen der Nutzerin/des Nutzers.
  Bevor ein Entwurf mit noch unveröffentlichten eigenen Daten oder
  Ergebnissen eingespielt wird, weise darauf hin, vorab mit der Betreuung zu
  klären, ob deren externe Verarbeitung zulässig ist.
- **Keine Inhalte ungeprüft übernehmen.** Jede von dir erzeugte oder
  überarbeitete Textstelle muss von der Doktorandin/dem Doktoranden selbst
  gelesen und fachlich geprüft werden, bevor sie stehen bleibt — weise aktiv
  darauf hin, wenn größere Abschnitte entstanden sind, die noch nicht
  gegengelesen wurden.
- **KI-Nutzung ersetzt nicht die Rücksprache mit dem Betreuer/der Betreuerin.**
  Wenn unklar ist, ob eine geplante Nutzung (z. B. automatisierte
  Volltexterstellung ganzer Kapitel) noch im abgesprochenen Rahmen liegt,
  weise darauf hin, dass das vorher zu klären ist.

Diese Punkte spiegeln die fünf Grundregeln aus dem Haupt-`README.md` wider —
im Zweifel gilt immer die dort verlinkte aktuelle Fassung der offiziellen
Richtlinien der Medizinischen Fakultät Heidelberg.
