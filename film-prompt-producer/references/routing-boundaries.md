# Film skill routing boundaries

Choose one primary skill. Load secondary departments only when their owned problem is present.

| Request shape | Primary skill | Secondary skills |
|---|---|---|
| Complete film/ad/AI-video workflow with two or more departments | film-prompt-producer | needed departments only |
| Approved storyboard to platform-ready prompts | aivideo-prompt | none unless a locked field is missing |
| Story mechanism, causal beats, shot functions, or reference-film analysis | storyboard-video-prompts | film-prompt-producer only if production expands |
| Camera-only optimization | 镜头.skill | none |
| Lighting-only design or repair | 灯光.skill | 风格.skill only when the style target is missing |
| Duration, pacing, or cut timing only | 时长.skill | none |
| Sound, Foley, BGM, or cue sheet only | 音乐.skill | none |
| Visual aesthetic, palette, material, or style-only work | 风格.skill | 灯光.skill only for technical implementation |
| VFX source, force, contact, or material behavior only | vfx-prompt-designer | none |
| Character, costume, grooming, proportion, prop, or character-sheet work only | character-design | 风格.skill only when the visual constitution is missing |
| Environment layout, location function, traversal, landmark, scale, or environment-sheet work only | environment-concept-design | 风格.skill only when the visual constitution is missing |
| Static character/environment/VFX/keyframe concept needing two or more departments | film-prompt-producer with ConceptSpec | needed concept departments only |
| Animation performance using the 12 principles | filmmaker | relevant animation-principle skill |
| Team-level animation motion language and review standards | creative-director | relevant animation-principle skill |
| Cross-media project with asset scouting, parallel concepts, knowledge capture, or several deliverable types | orchestrate-creative-production | film-prompt-producer for the film branch |

## Precedence

1. Explicit `$skill-name` invocation wins.
2. A clearly bounded department request uses that department directly.
3. A multi-department film request uses film-prompt-producer.
4. A multi-department static concept request uses film-prompt-producer with ConceptSpec.
5. A cross-media or asset-reuse program uses orchestrate-creative-production.
6. Do not load filmmaker or creative-director merely because the word "film", "cinematic", "director", or "story" appears.

## Expansion

If a bounded request grows into two or more departments:

- preserve the completed department result as evidence;
- create FilmSpec for time-based work or ConceptSpec for static concept work;
- promote film-prompt-producer to primary;
- do not restart or freely reinterpret approved work.

## Non-combination rules

- Do not run aivideo-prompt and storyboard-video-prompts as co-equal planners.
- Do not run 风格.skill and 灯光.skill as co-owners of the same lighting field.
- Do not run orchestrate-creative-production and film-prompt-producer as co-equal state owners.
- Do not use filmmaker or creative-director as generic quality enhancers.
- Do not route a static concept through story, timing, editing, or sound unless the requested image genuinely needs those fields.
