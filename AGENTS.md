# CH ELM Implementation Guide Repository Guidelines

## Overview
- Main repository for the CH ELM (R4) FHIR Implementation Guide.
- Published at http://fhir.ch/ig/ch-elm/ as an Implementation Guide by the Federal Office of Public Health FOPH.
- Built with the HL7 FHIR IG Publisher and FSH/SUSHI.
- Canonical URL: http://fhir.ch/ig/ch-elm
- Depends on CH Core (`ch.fhir.ig.ch-core`) and CH Term (`ch.fhir.ig.ch-term`).

## Project Structure & Module Organization
- `input/`: IG content (FSH definitions, markdown pages, examples)
  - `input/fsh/`: FHIR Shorthand (FSH) definitions
    - `ALIAS.fsh`: Commonly used aliases
    - `invariants.fsh`: Validation rules and constraints (centralized)
    - `LogicalModel.fsh`: Logical model definitions
    - `Tests.fsh`: TestScript definitions
    - `profiles/`: Profile definitions (Patient, Organization, Observation, IDN-Identifier, etc.)
    - `examples/`: Example instances organized by disease/use case (e.g., `1-NeisseriaGonorrhoeae/`, `2Doc-ChlamydiaTrachomatis.fsh`)
    - `terminology/`: ValueSets, CodeSystems, ConceptMaps, NamingSystems
  - `input/pagecontent/`: Markdown content for IG pages (index, guidance, changelog, etc.)
  - `input/images/`: Images and diagrams
  - `input/includes/`: Template includes
- `sushi-config.yaml`: SUSHI configuration and IG metadata.
- `ig.ini`: IG Publisher configuration.
- `template/`: HL7 CH IG Publisher template.
- `scripts/`: IG build/update helpers (`_genonce.sh`, `_updatePublisher.sh`, `_gencontinuous.sh`).
- `tests/`: HTTP test files for validation against FHIR servers.
- Generated: `fsh-generated/`, `output/`, `temp/`. Do not edit by hand.

## Build, Test, and Development Commands
- Prerequisites: Java 11+, Jekyll (for IG building)
- `npm run update:publisher`: Download/refresh HL7 IG Publisher.
- `npm run build:ig`: Build the Implementation Guide once (runs `./scripts/_genonce.sh`).
- `npm run build:ig:continuous`: Rebuild on change (runs `./scripts/_gencontinuous.sh`).
- `npm run serve:ig`: Serve built IG from `output/` directory.
- `npm run open:ig`: Open `output/index.html` in browser.
- Manual build: `java -Xms3550m -Xmx3550m -jar publisher.jar -ig ig.ini`

## Coding Style & Naming Conventions
- FSH files: 2-space indentation, kebab-case for file names.
- Profile IDs: Use `ch-elm-` prefix (e.g., `ch-elm-patient`, `ch-elm-idn-identifier`).
- Extension IDs: Use `ch-elm-ext-` prefix.
- Example instances: Clear, descriptive names reflecting Swiss public health reporting use cases.
- Keep generated folders untracked in changes; edit sources only (`input/`, `sushi-config.yaml`).

## Testing Guidelines
- Add example instances in `input/fsh/examples/` to demonstrate profile usage.
- Validate examples against defined profiles before committing.
- HTTP test files in `tests/` can be used to validate against FHIR servers.

## Commit & Pull Request Guidelines
- When creating a new PR or commit first run the IG build, this can take a few minutes, only commit when the error count is not bigger than 1, analyze output/qa.html for detailed error messages.
- Branch names: Use underscores instead of slashes (e.g., `issue123_fix_extension` not `issue/123/fix-extension`). Slashes in branch names can cause issues with ci-build.
- Commits: Concise, imperative summaries (e.g., "Fix IDN identifier severity"). Claude needs not to be mentioned.
- Reference issues in commits (e.g., "#193").
- Update changelog in input/pagecontent/changelog.md
- PRs: Include purpose, scope, linked issues, keep it short, Claude needs not to be mentioned as co-author.

## Security & Configuration Tips
- IG build contacts `tx.fhir.org` for terminology; offline builds pass `-tx n/a`.
- Need read access to https://github.com/HL7/fhir-ig-publisher/ and https://raw.githubusercontent.com/
- Do not embed test data with real patient information.

## Resources & Links
- Published IG: http://fhir.ch/ig/ch-elm/
- HL7 Switzerland: https://www.hl7.ch/
- Version history: http://fhir.ch/ig/ch-elm/history.html
- CI Build: http://build.fhir.org/ig/ahdis/ch-elm/
