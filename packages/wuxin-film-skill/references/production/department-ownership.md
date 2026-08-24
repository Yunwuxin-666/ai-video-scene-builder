# Department ownership

Use this contract whenever two or more film or concept skills participate.

| Field | Owner | Routed output |
|---|---|---|
| Goal, locks, version, route selection | film-prompt-producer | FilmSpec update |
| Static concept goal, locks, version, route selection | film-prompt-producer | ConceptSpec update |
| Premise, goal, obstacle, causal beats, ending | storyboard-video-prompts | story patch |
| Entity, prop, space, time, start/end state | producer continuity pass | continuity patch |
| Primary style, palette, material boundary | 风格.skill | visual patch |
| Character role, proportion, face, hair, expression, pose, costume structure, connections, identity props | character-design | character-design patch |
| Environment function, zones, hierarchy, traversal, landmark, scale, set-dressing density, history | environment-concept-design | environment-design patch |
| Camera position, lens, movement, focus, cut | 镜头.skill | camera patch |
| Static concept view, framing, angle, lens/perspective, composition | 镜头.skill | presentation camera patch |
| Light source, direction, quality, ratio, color temperature | 灯光.skill | lighting patch |
| Shot duration, rhythm, cut timing | 时长.skill | duration patch |
| VFX source, material, force, contact, reaction | vfx-prompt-designer | VFX patch |
| Static VFX source, mechanism, phase, shape language, contact, optical response, containment | vfx-prompt-designer | concept VFX patch |
| Environment, Foley, music, cue timing | 音乐.skill | sound patch |
| Final platform-ready prompt | aivideo-prompt | compiled output |
| Acceptance findings | independent critic | findings or minimal patch |

## Routed-mode rules

- Read FilmSpec or ConceptSpec; do not reinterpret the whole brief.
- Change only owned fields.
- Return a compact patch keyed by stable shot/entity/concept IDs.
- State any conflict instead of resolving it by blending.
- Do not emit a new full prompt package.
- Do not change locked facts.
- Do not add a second style route unless the producer explicitly requests exploration.

## Standalone-mode rules

When the user explicitly invokes one department without a producer handoff, the skill may create a complete answer needed for that single request. Mark assumptions and preserve the user's facts.

## Conflict priority

Use this priority unless the user specifies otherwise:

1. user facts and legal/brand constraints;
2. approved identity and product structure;
3. story causality and continuity state;
4. action and spatial path;
5. camera and duration;
6. lighting;
7. style atmosphere;
8. decorative detail.

Never let a lower-priority reference overwrite a higher-priority field.

## Shared-boundary rules for concepts

- `风格.skill` owns the palette and material grammar; character and environment departments map approved materials to named parts or surfaces.
- `镜头.skill` owns the presentation view; character and environment departments may state what must be visible but not choose a new lens or camera angle.
- `灯光.skill` implements the locked tone; it does not invent palette, costume, architecture, or VFX.
- `quality_target` references are producer-owned evidence. Departments may use their completion and hierarchy target but may not import content fields.
