# Concept-art quality scorecard

Score each active static concept from 0 to 5 before delivery.

| Dimension | 5-point evidence |
|---|---|
| Concept clarity | World position, subject function, and one-sentence concept are immediately readable. |
| Silhouette identity | One dominant silhouette, one primary directional line, and up to three motifs remain readable at thumbnail scale. |
| Design hierarchy | Large, medium, and small forms are intentional; focal detail sits in named zones and clean masses remain clean. |
| Structural credibility | Costume connections, spatial construction, props, or effect mechanics explain how the design holds and functions. |
| Material readability | Every main material is mapped to a component and has distinct light, weight, edge, and wear behavior. |
| Character performance | Anatomy, hair, expression, pose, and status agree without generic beauty posing or accidental caricature. |
| Environment function | Zones, traversal, scale anchors, landmark hierarchy, and history support the world's use. Score N/A when absent. |
| VFX mechanism | Source, force, phase, contact, optical response, and containment are explicit. Score N/A when absent. |
| Camera proof | View, lens/perspective, framing, and composition reveal the design rather than hide weak areas. |
| Style purity | One primary route, controlled influence, explicit palette source, and no accidental color or genre defaults. |
| Reference boundaries | Every reference has one declared role, must-ignore fields, and no content leakage. |
| Generatability | Prompt priority is clear, contradictions are absent, and the requested image can be produced in one coherent frame. |

## P0 gate

These applicable dimensions must each score at least 4:

- concept clarity;
- silhouette identity;
- structural credibility;
- material readability;
- style purity;
- reference boundaries;
- generatability.

The average of applicable dimensions must reach 4.2.

## Failure handling

- If silhouette or design hierarchy fails, remove decorative parts and rebuild large masses before adding detail.
- If a character costume feels plain, increase structural contrast, asymmetry, connection logic, or status-specific equipment; do not solve it with all-over embroidery.
- If a character costume feels noisy, preserve its large construction and reduce repeated trims, beads, tassels, tiny panels, and material count.
- If hair or expression feels strange, specify skull-following roots, gravity, grouping, facial muscle state, gaze, and mouth closure; remove abstract labels such as “俏皮笑” or “邪魅”.
- If reference boundaries fail, restore declared controls and remove all incidental palette, costume, motif, prop, face, and setting inheritance.
- If a scene feels decorative, repair functional zones, traversal, scale, and environmental history before lighting polish.
- If VFX feels pasted on, repair source, contact, environment reaction, and containment before increasing brightness or particles.

The critic reports the failing dimension, visible consequence, and smallest owned-field patch. Do not rewrite a passing concept wholesale.
