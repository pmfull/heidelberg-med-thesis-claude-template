# Medizinische Doktorarbeit mit Claude Code fertigstellen (Heidelberg)

Eine LaTeX-Vorlage für Inauguraldissertationen (Dr. med. / Dr. med. dent. /
Dr. sc. hum.) an der **Medizinischen Fakultät Heidelberg**, kombiniert mit
einer Anleitung, wie sich ein bereits angefangener Entwurf mit
[Claude Code](https://claude.com/claude-code) spürbar effizienter zu Ende
schreiben lässt — inklusive der formalen Anforderungen, die dabei zwingend
einzuhalten sind.

Entstanden ist dieses Repo, nachdem der Autor seine eigene medizinische
Doktorarbeit mit Claude Code fertiggestellt hat und gemerkt hat, wie groß die
Erleichterung war — und wie wenig Vorstellung viele Kommiliton:innen davon
haben, dass (und wie) das seriös und regelkonform geht.

> **Kein offizielles Angebot der Universität Heidelberg.** Das LaTeX-Template
> wird von der Medizinischen Fakultät als möglicher Startpunkt verlinkt, aber
> nicht als offizielle Vorlage der Fakultät geführt (siehe
> [NOTICE.md](NOTICE.md) für die Originalquelle und Lizenz). Dieses Repo
> erleichtert die Umsetzung, ersetzt aber nicht die verbindlichen Vorgaben der
> Fakultät. Prüft vor Abgabe immer die aktuelle Fassung der
> [Abfassungsrichtlinien](https://www.medizinische-fakultaet-hd.uni-heidelberg.de/fakultaet/akademische-laufbahn/promotion/promotion-zum-dr-sc-hum/schreiben-der-dissertation)
> und sprecht die KI-Nutzung mit eurem Betreuer/eurer Betreuerin ab.

## Inhalt dieses Repos

```
.
├── Heidelberg_University_Medical_Faculty_Doctoral_Thesis/  # das LaTeX-Projekt
│   ├── main.tex                                            # Haupt-Einstiegspunkt
│   ├── titlepage.tex                                       # Titelblatt-Angaben
│   ├── refs.bib                                            # Literaturverzeichnis
│   └── chapters/                                           # ein Kapitel pro Datei/Ordner
├── Leitlinien_Uni_HD/                                       # die zwei maßgeblichen Regelwerke (PDF)
│   ├── 2023_08_01_Abfassungsrichtlinien_Version_2_3.pdf
│   └── ki-leitlinie-de.pdf
├── .claude/agents/promotionsausschuss.md                    # read-only Prüf-Agent
├── .claude/commands/start.md                                 # /start – Onboarding-Befehl für neue Nutzer:innen
└── CLAUDE.md                                                 # Arbeitsanleitung für Claude Code
```

Das LaTeX-Template selbst ist bereits vollständig nach der vorgeschriebenen
Gliederung aufgebaut (Titelblatt → Widmung → Verzeichnisse → Einleitung →
Material und Methoden → Ergebnisse → Diskussion → Zusammenfassung →
Literaturverzeichnis → Eigenanteil/Publikationen → Anhang → Lebenslauf →
Danksagung → Eidesstattliche Versicherung → KI-Angabe). Offene Stellen sind
mit `TODO` markiert.

## Schnellstart

Wichtig: Das hier ist ein **geteiltes Template**, kein Ort für eure eigene,
ggf. unveröffentlichte Doktorarbeit. Bitte nicht direkt in dieses Repo
hineinschreiben — jede/r bekommt eine eigene, in der Regel private Kopie.

### Option A: Noch nie mit Git, GitHub, LaTeX oder Claude Code gearbeitet?

Dann reicht ein einziger Prompt. Voraussetzung ist nur, dass
[Claude Code](https://claude.com/claude-code) installiert ist — alles
Weitere (Git-Check, Klonen, eigenes Repo einrichten, Entwurf einspielen)
übernimmt Claude für dich.

1. Leeren Ordner anlegen und darin Claude Code starten:
   ```bash
   mkdir meine-doktorarbeit-setup && cd meine-doktorarbeit-setup
   claude
   ```
2. Folgenden Prompt 1:1 einfügen:
   ```
   Ich habe gerade Claude Code installiert und noch nie mit Git, GitHub
   oder LaTeX gearbeitet. Ich möchte meine medizinische Doktorarbeit mit
   dem Heidelberg-Template fertigstellen.

   Bitte:
   1. Erklär mir kurz in einfachen Worten, was in den nächsten Schritten
      passiert.
   2. Prüfe, ob `git` auf diesem Rechner installiert ist; falls nicht,
      hilf mir bei der Installation.
   3. Klone https://github.com/pmfull/heidelberg-med-thesis-claude-template.git
      in einen neuen Unterordner `meine-doktorarbeit`.
   4. Wechsle in diesen Ordner, lies CLAUDE.md und
      .claude/commands/start.md, und führe mich Schritt für Schritt durch
      die dort beschriebene Ersteinrichtung — inklusive meines eigenen,
      privaten GitHub-Repos, falls ich noch keins dafür habe.

   Ich habe keine Vorerfahrung: erklär mir Fachbegriffe kurz, bevor du sie
   benutzt, und frag lieber einmal zu viel nach, bevor du etwas tust, das
   schwer rückgängig zu machen ist (z. B. irgendwo pushen).
   ```
3. Ab hier führt Claude durch den Rest — inklusive der Frage, ob du bereits
   einen bestehenden Entwurf (Word-Datei, Notizen, einzelne Kapitel) hast,
   den es Kapitel für Kapitel in die Vorlage einpflegt.

### Option B: Schon Erfahrung mit Git/GitHub — manuell in Einzelschritten

1. **Eigene Kopie erstellen.** Am einfachsten über den grünen
   **"Use this template"**-Button oben auf der GitHub-Seite dieses Repos →
   "Create a new repository" → eigenen Account wählen, Namen vergeben (z. B.
   `meine-doktorarbeit`), Sichtbarkeit **Private** wählen. Das erzeugt ein
   eigenständiges neues Repo ohne Verbindung zu diesem Template.
   *(Klappt der Button nicht, z. B. weil das Template noch privat ist: einfach
   dieses Repo klonen — Schritt 1 von `/start` unten hilft dann beim Trennen
   vom geteilten Origin.)*
2. **Lokal klonen:**
   ```bash
   git clone https://github.com/<dein-account>/meine-doktorarbeit.git
   cd meine-doktorarbeit
   ```
3. **Claude Code installieren** (falls noch nicht geschehen) und im
   Projektordner starten:
   ```bash
   claude
   ```
   Claude liest automatisch `CLAUDE.md` und kennt damit Struktur, Regeln und
   Arbeitsweise für dieses Projekt.
4. **`/start` eingeben.** Der mitgelieferte Onboarding-Befehl prüft, ob das
   Repo sauber vom geteilten Template getrennt ist, verschafft einen
   Überblick, und hilft direkt dabei, einen bestehenden Entwurf (Word,
   Notizen, einzelne fertige Kapitel) Kapitel für Kapitel in die Vorlage zu
   überführen.
5. **LaTeX-Umgebung.** Entweder lokal eine vollständige TeX-Live-Distribution
   installieren und mit
   ```bash
   cd Heidelberg_University_Medical_Faculty_Doctoral_Thesis
   latexmk -pdf main.tex
   ```
   bauen, oder das Projekt ohne lokale Installation in
   [Overleaf](https://www.overleaf.com) hochladen (Literaturverwaltung lässt
   sich dort auch direkt mit Zotero verknüpfen).

## Effizient mit Claude Code fertigstellen — Kurzanleitung

0. **Einmalig `/start` ausführen** (siehe Schnellstart) — deckt Punkt 1 unten
   für den ersten Entwurf bereits ab und stellt sicher, dass ihr in eurem
   eigenen Repo arbeitet, nicht im geteilten Template.
1. **Entwurf einspielen lassen.** Gib Claude deinen bestehenden Text (Word,
   Markdown, Copy-Paste) und bitte darum, ihn Kapitel für Kapitel in die
   passenden `chapters/*.tex`-Dateien zu überführen, inklusive Umwandlung von
   Literaturangaben in `\citep{}`/`\citet{}` mit Einträgen in `refs.bib`.
2. **Kapitelweise statt alles auf einmal.** Ein Kapitel abschließen, lesen,
   committen — dann das nächste. Kleine, nachvollziehbare Schritte lassen sich
   leichter gegenlesen und mit `git diff`/`git log` nachvollziehen.
3. **Roter Faden.** Bitte Claude gezielt, Einleitung, Fragestellung, Methoden,
   Ergebnisse und Diskussion auf Konsistenz zu prüfen (Begriffe, Rückbezüge,
   ob jedes Ergebnis in der Diskussion aufgegriffen wird).
4. **Formalia laufend mitprüfen**, statt erst am Ende: Zitierstil, Abbildungs-/
   Tabellenlegenden, keine "we"-Form, geschlechtergerechte Sprache,
   Dezimalgliederung im Inhaltsverzeichnis.
5. **KI-Nutzung sofort dokumentieren**, nicht erst am Ende aus dem Gedächtnis
   rekonstruieren: jeden Einsatz eines KI-Tools direkt in
   `Heidelberg_University_Medical_Faculty_Doctoral_Thesis/chapters/12_Anhang_KI_Tools.tex`
   eintragen (Ziel, Verwendungsweise, betroffene Kapitel).
6. **Vor Abgabe: Gutachten einholen.** Der mitgelieferte Agent
   `promotionsausschuss` liest die gesamte Arbeit gegen die
   Abfassungsrichtlinien und die KI-Leitlinie und gibt ein strukturiertes,
   schriftliches Gutachten — mit Fundstellen (`datei:zeile`) statt pauschalem
   Feedback. Er ändert nichts, er begutachtet nur. Aufruf in Claude Code:
   ```
   > Promotionsausschuss, begutachte die Arbeit
   ```
7. **Menschliche Endkontrolle.** Jeder von Claude erzeugte oder überarbeitete
   Absatz muss von dir selbst gelesen und fachlich für richtig befunden
   werden, bevor die Arbeit eingereicht wird (siehe Regel 5 unten) — Claude
   nimmt dir das Nach- und Durchdenken nicht ab.

## Die fünf Grundregeln für KI-Einsatz (Universität Heidelberg)

Laut Medizinischer Fakultät Heidelberg darf eine Doktorarbeit mit Einsatz von
KI-Tools fertiggestellt werden, **wenn alle fünf Punkte erfüllt sind**:

1. **Der Betreuer/die Betreuerin ist mit der Verwendung und dem Umfang der
   Verwendung von KI-Tools einverstanden.** Sprecht Art und Umfang vorab ab —
   nicht erst nach getaner Arbeit.
2. **Die wissenschaftliche Integrität darf nicht gefährdet sein.** Keine
   erfundenen Ergebnisse, keine erfundenen Quellen, keine verschleierte
   Autorschaft.
3. **Datenschutz — insbesondere bei Patientendaten — muss streng eingehalten
   werden.** Keine sensiblen oder personenbezogenen Daten in externe
   KI-Systeme eingeben.
4. **Verwendung und Umfang der KI-Tools müssen in einem gesonderten Anhang
   angegeben werden.** Siehe `chapters/11_Angabe_KI.tex` und
   `chapters/12_Anhang_KI_Tools.tex` in der Vorlage.
5. **Der gesamte Text muss von der Doktorandin/dem Doktoranden gelesen und
   auf Korrektheit überprüft worden sein.** Volle inhaltliche Verantwortung
   bleibt bei der Verfasserin/dem Verfasser, unabhängig davon, welche
   Werkzeuge beim Schreiben geholfen haben.

Maßgeblich sind immer die vollständigen Originaldokumente in
[`Leitlinien_Uni_HD/`](Leitlinien_Uni_HD/) bzw. deren jeweils aktuelle Fassung
auf den Seiten der Universität Heidelberg — diese fünf Punkte sind eine
Zusammenfassung, keine abschließende Rechtsauskunft.

## Der `promotionsausschuss`-Agent

Ein spezialisierter, **rein lesender** Subagent für Claude Code
(`.claude/agents/promotionsausschuss.md`), der die Arbeit wie ein wohlwollendes,
aber strenges Gutachtergremium prüft:

- Rechtschreibung & Grammatik
- Formulierung & Stil (u. a. "we"-Form, geschlechtergerechte Sprache)
- Roter Faden (Einleitung → Fragestellung → Methoden → Ergebnisse → Diskussion
  → Schlussfolgerung)
- Formvorschriften der Abfassungsrichtlinien
- Einhaltung der KI-Leitlinie inkl. vollständiger KI-Angabe

Er wird **nie automatisch** aktiv, sondern nur, wenn ihr ihn in Claude Code
ausdrücklich aufruft. Er ändert keine Dateien — nur die Nutzerin/der Nutzer
entscheidet über Änderungen.

## Lizenz

Dieses Repository steht unter [CC BY 4.0](LICENSE) — frei nutzbar, anpassbar
und weitergebbar, solange die Urheberschaft genannt wird. Das LaTeX-Template
selbst stammt nicht vom Autor dieses Repos, sondern von Leonardo Ayala, Lisa
Kausch, André Klein und Sarina Thomas ([Overleaf-Original](https://www.overleaf.com/latex/templates/heidelberg-university-medical-faculty-doctoral-thesis/fzxdxksbfqvm),
ebenfalls CC BY 4.0) — die vollständige Attribution und die vorgenommenen
Änderungen stehen in [NOTICE.md](NOTICE.md). Die mitgelieferten PDFs in
`Leitlinien_Uni_HD/` sind offizielle Dokumente der Universität Heidelberg und
unterliegen deren eigenen Bedingungen; bei Abweichungen gilt immer die von der
Fakultät veröffentlichte Originalfassung.

## Beitragen

Verbesserungsvorschläge (z. B. an der Vorlage, dem Agenten oder dieser
Anleitung) gerne als Issue oder Pull Request — das Ziel ist, dass möglichst
viele Medizin-Promovierende in Heidelberg von einem effizienten, aber
regelkonformen Einsatz von KI-Tools profitieren.
