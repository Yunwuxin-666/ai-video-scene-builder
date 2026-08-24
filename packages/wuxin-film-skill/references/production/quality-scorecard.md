# Film quality scorecard

Score the active package from 0 to 5 before delivery.

| Dimension | 5-point evidence |
|---|---|
| Causality | Every beat has a visible cause, action, and result. |
| Goal clarity | Protagonist goal, obstacle, decision, and ending are readable. |
| State continuity | Adjacent shot start/end states are compatible. |
| Spatial continuity | Position, facing, entry/exit, path, eye-line, and landing stay coherent. |
| Visual purity | One primary style and no unrequested route leakage. |
| Reference ownership | Every reference has controls, must-ignore fields, and resolved priority. |
| Generatability | Unit length and action density fit the selected platform and risk. |
| Department integrity | Every specialist changed only owned fields. |
| Platform accuracy | Capability claims are current, sourced, and not invented. |
| Prompt economy | Global information is deduplicated and local prompts contain local changes. |

## P0 gate

These dimensions must each score at least 4:

- causality;
- state continuity;
- reference ownership;
- generatability;
- platform accuracy.

The overall average must reach 4.2.

## Failure handling

- If causality or visual purity scores below 3, return to story or visual-constitution stage.
- If continuity scores below 4, repair the ledger before prompt compilation.
- If reference ownership scores below 4, stop and resolve the source conflict.
- If platform accuracy scores below 4, remove unsupported claims or load the current profile.
- If prompt economy scores below 4, deduplicate; do not delete locked facts.

The critic reports the failing dimension, exact location, user-visible consequence, and smallest valid patch. Do not rewrite the whole package by default.
