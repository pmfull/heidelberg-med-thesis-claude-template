# Medizinische Doktorarbeit mit Claude Code fertigstellen (Heidelberg)

Eine LaTeX-Vorlage für Inauguraldissertationen (Dr. med. / Dr. med. dent. /
Dr. sc. hum.) an der **Medizinischen Fakultät Heidelberg**, kombiniert mit
einer Anleitung, wie sich ein bereits angefangener Entwurf mit
[Claude Code](https://claude.com/claude-code) spürbar effizienter zu Ende
schreiben lässt — inklusive der formalen Anforderungen, die dabei zwingend
einzuhalten sind.

Entstanden ist dieses Repo aus der eigenen, sehr positiven Erfahrung, die
eigene medizinische Doktorarbeit mit Claude Code fertigzustellen. Der Ansatz
wurde seitdem bereits mehrfach bei anderen Promovierenden angewendet und hat
sich auch dort als hilfreich erwiesen. Dieses Repo soll genau das
ermöglichen: die eigene Doktorarbeit seriös und regelkonform abzuschließen —
auch ganz ohne Vorerfahrung mit den verwendeten Werkzeugen (Git, GitHub,
LaTeX, Claude Code).

> **Kein offizielles Angebot der Universität Heidelberg.** Das LaTeX-Template
> wird von der Medizinischen Fakultät als möglicher Startpunkt verlinkt, aber
> nicht als offizielle Vorlage der Fakultät geführt (siehe
> [NOTICE.md](NOTICE.md) für die Originalquelle und Lizenz). Dieses Repo
> erleichtert die Umsetzung, ersetzt aber nicht die verbindlichen Vorgaben der
> Fakultät. Prüft vor Abgabe immer die aktuelle Fassung der
> [Abfassungsrichtlinien](https://www.medizinische-fakultaet-hd.uni-heidelberg.de/fakultaet/akademische-laufbahn/promotion/promotion-zum-dr-sc-hum/schreiben-der-dissertation)
> und der
> [KI-Leitlinie](https://www.uni-heidelberg.de/md/zaw/ufg/informationen/ki-leitlinie-de.pdf)
> und sprecht die KI-Nutzung mit eurem Betreuer/eurer Betreuerin ab.
>
> **Claude Code erfordert ein kostenpflichtiges Anthropic-Abo.** Der hier
> beschriebene Ansatz setzt [Claude Code](https://claude.com/claude-code)
> voraus, das nicht im kostenlosen Claude-Plan enthalten ist. Prüft die
> aktuellen Nutzungsbedingungen und Datenschutzbestimmungen direkt auf der
> Website von Anthropic, bevor ihr eigene bzw. sensible Inhalte eingebt.
>
> **Training mit euren Daten ausschalten.** Wenn ihr vermeiden wollt, dass
> Inhalte eurer noch unveröffentlichten Doktorarbeit zum Training künftiger
> Modelle verwendet werden, deaktiviert in euren Claude-Kontoeinstellungen
> unter *Datenschutz* die Option, mit der eure Unterhaltungen zur
> Verbesserung von Claude verwendet werden dürfen (auf
> [claude.ai](https://claude.ai) unter Einstellungen → Datenschutz; die
> Einstellung gilt auch für Claude Code). Macht das am besten, **bevor** ihr
> den ersten Entwurf einspielt. Seid euch trotzdem bewusst: Die Modelle
> laufen auch dann auf Servern von Anthropic, eure Eingaben verlassen also
> euren Rechner. Dass Inhalte eurer Arbeit vor der Veröffentlichung nach
> außen gelangen, lässt sich damit verringern, aber nicht mit letzter
> Sicherheit ausschließen. Laut Datenschutzerklärung von Anthropic gibt es
> außerdem Ausnahmen, in denen Unterhaltungen trotz deaktivierter Option
> verwendet werden dürfen: wenn ihr selbst Feedback abgebt (z. B. eine
> Antwort bewertet oder einen Fehler meldet; dabei kann die gesamte
> Unterhaltung übermittelt werden) und wenn eine Unterhaltung für eine
> Sicherheitsprüfung markiert wird. Gebt in Sitzungen mit eurer Arbeit also
> am besten kein Feedback ab. Patientendaten und andere sensible
> personenbezogene Daten gehören unabhängig von dieser Einstellung nie in
> Claude (siehe Regel 3 unten).

## Inhalt dieses Repos

```
.
├── Heidelberg_University_Medical_Faculty_Doctoral_Thesis/  # das LaTeX-Projekt
│   ├── main.tex                                            # Haupt-Einstiegspunkt
│   ├── titlepage.tex                                       # Titelblatt-Angaben
│   ├── refs.bib                                            # Literaturverzeichnis
│   └── chapters/                                           # ein Kapitel pro Datei/Ordner
├── Leitlinien_Uni_HD/                                       # Abfassungsrichtlinien + KI-Leitlinie (PDF),
│                                                            # lädt /start von den offiziellen Seiten herunter
├── .claude/agents/promotionsausschuss.md                    # read-only Prüf-Agent
├── .claude/commands/start.md                                 # /start – Onboarding-Befehl für neue Nutzer:innen
└── CLAUDE.md                                                 # Arbeitsanleitung für Claude Code
```

Das LaTeX-Template selbst ist bereits vollständig nach der vorgeschriebenen
Gliederung aufgebaut (Titelblatt → Widmung → Verzeichnisse → Einleitung →
Material und Methoden → Ergebnisse → Diskussion → Zusammenfassung →
Literaturverzeichnis → Eigenanteil/Publikationen → Anhang → Lebenslauf
(optional) → Danksagung → Eidesstattliche Versicherung → KI-Erklärung →
Anhang zur KI-Dokumentation, nach Version 2.5 der Abfassungsrichtlinien).
Offene
Stellen sind mit `TODO` markiert.

Die offiziellen Regelwerke (Abfassungsrichtlinien der Medizinischen Fakultät
und KI-Leitlinie der Universität) sind **nicht** Teil dieses Repos, da sie
nicht unter dessen Lizenz stehen und regelmäßig aktualisiert werden. `/start`
lädt die jeweils aktuelle Fassung direkt von den offiziellen Seiten nach
`Leitlinien_Uni_HD/` herunter, damit Claude darin nachlesen kann.

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
   eintragen. Seit Version 2.5 der Abfassungsrichtlinien ist das eine Tabelle
   (KI-Tool, Version, verwendete Funktionalität, Nutzungszweck,
   Einsatzbereich, Art der Validierung); die Zeile zu Claude Code ist
   vorbereitet, der Absatz darunter nennt die Vorlage (Lizenzpflicht, bitte
   stehen lassen). Habt ihr gar keine KI genutzt, schaltet ihr in `main.tex`
   mit `\kiverwendetfalse` auf die Nichtverwendungserklärung um. Die KI-Leitlinie
   hält es je nach Aufgabe auch für sinnvoll, die verwendeten Prompts offenzulegen.
   Claude Code speichert die Verläufe eurer Sitzungen lokal unter
   `~/.claude/projects/`; sie können als Beleg dienen, wie ihr KI eingesetzt
   habt. Beachtet aber: Diese Verläufe enthalten alles, was ihr mit Claude
   besprochen habt, also in der Regel euren kompletten Entwurf. Gebt sie
   nur gezielt und in Absprache mit eurer Betreuung weiter, und committet sie
   nicht in ein öffentliches Repo.
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
8. **Unterschriften und Pflichttexte.** Die eidesstattliche Versicherung und
   die KI-Angabe müssen in allen Pflichtexemplaren **handschriftlich**
   unterschrieben und auf Deutsch eingebunden werden. Den Wortlaut der
   Musterformulare (u. a. ab „Mir ist bewusst, dass …“ in der KI-Angabe)
   nicht umformulieren lassen, auch nicht von Claude.

## Nützliche Claude-Code-Befehle

Eine Doktorarbeit entsteht über Wochen und Monate, nicht in einer Sitzung.
Diese Befehle sind dafür besonders relevant (Stand: `claude --help` in der
aktuell installierten Version):

- **`claude` im Projektordner** startet eine neue, interaktive Sitzung.
- **`claude --resume`** (kurz `-r`) zeigt eine Liste früherer Unterhaltungen
  in diesem Ordner und lässt dich eine davon fortsetzen — praktisch, wenn du
  am nächsten Tag genau dort weitermachen willst, wo du aufgehört hast, statt
  Claude den Stand neu erklären zu müssen.
- **`claude --continue`** (kurz `-c`) springt ohne Auswahlmenü direkt in die
  zuletzt genutzte Unterhaltung dieses Ordners.
- **`claude --remote-control`** startet eine Sitzung, die du zusätzlich über
  ein anderes Gerät (z. B. Handy/Browser) mitverfolgen und steuern kannst —
  nützlich, wenn Claude gerade an einer längeren Aufgabe arbeitet und du
  zwischendurch den Laptop verlassen möchtest.

Innerhalb einer laufenden Sitzung (mit `/` eingeben) sind u. a. hilfreich:

- **`/clear`** setzt den Gesprächskontext zurück — sinnvoll nach Abschluss
  eines Kapitels, damit das nächste Thema nicht mit altem Kontext vermischt
  wird.
- **`/compact`** verdichtet eine lang gewordene Unterhaltung, statt sie ganz
  zu löschen — hilft, wenn Claude in einer sehr langen Sitzung anfängt,
  langsamer oder unpräziser zu werden.
- **`/cost`** zeigt den bisherigen Nutzungsumfang/die Kosten der aktuellen
  Sitzung.
- **`/agents`** listet verfügbare Subagenten auf, u. a. `promotionsausschuss`.
- **`/help`** zeigt alle verfügbaren Befehle dieser Installation.

## Fünf Grundregeln für den KI-Einsatz (eigene Zusammenfassung der Heidelberger Vorgaben)

Diese Regeln fassen zusammen, worauf es nach den Vorgaben der Universität
Heidelberg und der Medizinischen Fakultät beim Einsatz von KI-Tools für die
Doktorarbeit ankommt. Sie sind keine offiziellen Regeln der Universität. Die
Verantwortung für deren Einhaltung liegt bei der/dem Promovierenden selbst:

1. **Der Betreuer/die Betreuerin ist mit der Verwendung und dem Umfang der
   Verwendung von KI-Tools einverstanden.** Sprecht Art und Umfang vorab ab —
   nicht erst nach getaner Arbeit.
2. **Die wissenschaftliche Integrität darf nicht gefährdet sein.** Keine
   erfundenen Ergebnisse, keine erfundenen Quellen, keine verschleierte
   Autorschaft.
3. **Datenschutz — insbesondere bei Patientendaten — muss streng eingehalten
   werden.** Laut KI-Leitlinie gehören keine sensiblen, personenbezogenen
   oder **vertraulichen** Daten und keine **urheberrechtlich geschützten
   Texte** in KI-Systeme außerhalb der Infrastruktur der Universität. Das
   heißt konkret: keine Patientendaten; keine fremden Paper-PDFs oder
   Buchauszüge in Claude laden; und vorab mit der Betreuung klären, ob die
   eigenen, noch unveröffentlichten Daten und Ergebnisse überhaupt extern
   verarbeitet werden dürfen (z. B. wegen Kooperationsverträgen,
   Geheimhaltungsvereinbarungen oder Auflagen aus dem Ethikvotum).
4. **Verwendung und Umfang der KI-Tools müssen in einem gesonderten Anhang
   angegeben werden.** Siehe `chapters/11_Angabe_KI.tex` (Erklärung) und
   `chapters/12_Anhang_KI_Tools.tex` (Anhang) in der Vorlage.
5. **Der gesamte Text muss von der Doktorandin/dem Doktoranden gelesen und
   auf Korrektheit überprüft worden sein.** Volle inhaltliche Verantwortung
   bleibt bei der Verfasserin/dem Verfasser, unabhängig davon, welche
   Werkzeuge beim Schreiben geholfen haben.

Maßgeblich sind immer die jeweils aktuellen Originaldokumente auf den Seiten
der Universität Heidelberg — diese fünf Punkte sind eine Zusammenfassung,
keine abschließende Rechtsauskunft. Zum Geltungsbereich: Die KI-Leitlinie
der Universität ist für Studium und Lehre geschrieben und gibt den
universitätsweiten Rahmen vor. Für die Promotion an der Medizinischen
Fakultät sind darüber hinaus verbindlich die jeweilige Promotionsordnung
(Dr. med./Dr. med. dent. bzw. Dr. sc. hum.) und die Abfassungsrichtlinien
der Fakultät, deren Musterformulare für die KI-Angabe wörtlich zu übernehmen
sind. Im Zweifel hilft das Promotionsbüro der Fakultät weiter.

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

Wichtig: Der Agent **simuliert** eine Begutachtung. Sein Ergebnis ist eine
Vorabprüfung durch ein KI-Werkzeug, keine Stellungnahme oder Entscheidung des
echten Promotionsausschusses, und ein positives Ergebnis garantiert nicht,
dass die Arbeit angenommen wird.

## Lizenz

Dieses Repository steht unter [CC BY 4.0](LICENSE) — frei nutzbar, anpassbar
und weitergebbar, solange die Urheberschaft genannt wird. Das LaTeX-Template
selbst stammt nicht vom Autor dieses Repos, sondern von Leonardo Ayala, Lisa
Kausch, André Klein und Sarina Thomas ([Overleaf-Original](https://www.overleaf.com/latex/templates/heidelberg-university-medical-faculty-doctoral-thesis/fzxdxksbfqvm),
ebenfalls CC BY 4.0) — die vollständige Attribution und die vorgenommenen
Änderungen stehen in [NOTICE.md](NOTICE.md). Die Abfassungsrichtlinien und
die KI-Leitlinie sind offizielle Dokumente der Universität Heidelberg, fallen
nicht unter diese Lizenz und werden deshalb nicht mit diesem Repo verbreitet,
sondern von `/start` bei euch lokal von den offiziellen Seiten
heruntergeladen.

## Beitragen

Verbesserungsvorschläge (z. B. an der Vorlage, dem Agenten oder dieser
Anleitung) gerne als Issue oder Pull Request — das Ziel ist, dass möglichst
viele Medizin-Promovierende in Heidelberg von einem effizienten, aber
regelkonformen Einsatz von KI-Tools profitieren.
