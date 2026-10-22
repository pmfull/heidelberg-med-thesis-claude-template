# Attribution

## LaTeX template

The LaTeX template in
[`Heidelberg_University_Medical_Faculty_Doctoral_Thesis/`](Heidelberg_University_Medical_Faculty_Doctoral_Thesis/)
is based on:

> **Heidelberg University Medical Faculty Doctoral Thesis**
> Authors: Leonardo Ayala, Lisa Kausch, André Klein, Sarina Thomas
> Source: https://www.overleaf.com/latex/templates/heidelberg-university-medical-faculty-doctoral-thesis/fzxdxksbfqvm
> License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

The Medical Faculty of Heidelberg University refers students to this template
as a starting point, but it is **not an official template published by the
faculty itself** — always cross-check against the current official
regulations linked in the main [README](README.md).

### Changes made in this repository

- Updated the AI declarations to version 2.5 of the faculty's
  Abfassungsrichtlinien: `chapters/11_Angabe_KI.tex` (template 11 a),
  `chapters/12_Anhang_KI_Tools.tex` as a fill-in table documenting the AI
  tools used (template 11 b), `chapters/11b_Erklaerung_Nichtverwendung_KI.tex`
  (template 12) and the shared `chapters/KI_Taeuschungshinweis.tex`, selected
  via `\kiverwendettrue`/`\kiverwendetfalse` in `main.tex`. The paragraph
  below the table names this repository (author, URL, CC BY 4.0) and the
  original LaTeX template (authors, Overleaf URL, CC BY 4.0); theses built
  from this template thereby carry the attribution required by the license
  and should keep it.
- Added `CLAUDE.md` with project-specific guidance for Claude Code.
- Added the `.claude/agents/promotionsausschuss.md` review agent.
- Added the `.claude/commands/start.md` onboarding command and the
  `.claude/commands/update-template.md` update command, plus a SessionStart
  hook (`.claude/settings.json`, `.claude/check-template-update.sh`) that
  notifies users of a newer template version.
- Added this README/attribution documentation.
- Moved the appendix before the CV and marked the CV as optional, made the
  doctoral degree on the title page configurable (`\thesisdegree`), and
  replaced the sample CV (`figures/CV.pdf`) with a neutral placeholder.

## Other original contributions

`CLAUDE.md`, `.claude/agents/promotionsausschuss.md`,
`.claude/commands/start.md`, `.claude/commands/update-template.md`,
`.claude/check-template-update.sh`, `README.md`, `chapters/12_Anhang_KI_Tools.tex`, and this file were authored by
Peter Maximilian Full for this repository and are released under the same
[CC BY 4.0](LICENSE) license as the template.

## Official university guidelines

The Abfassungsrichtlinien of the Medizinische Fakultät Heidelberg and the
KI-Leitlinie of Universität Heidelberg are official documents of the
university and are **not** covered by this repository's CC BY 4.0 license.
They are therefore **not distributed** with this repository. The `/start`
command downloads the current versions from the official pages into the
git-ignored folder `Leitlinien_Uni_HD/` on the user's machine:

- Abfassungsrichtlinien:
  https://www.medizinische-fakultaet-hd.uni-heidelberg.de/fakultaet/akademische-laufbahn/promotion/promotion-zum-dr-sc-hum/schreiben-der-dissertation
- KI-Leitlinie:
  https://www.uni-heidelberg.de/md/zaw/ufg/informationen/ki-leitlinie-de.pdf

Before final submission, check both source pages to make sure the local copies
are still the current version (matching filename/date).
