---
name: film-prompt-producer
description: Primary production entry for complex Chinese film, game/animation concept art, commercial, AI-video, storyboard-to-generation, and multi-department prompt workflows. Use when the request needs two or more of character, costume, environment, VFX, cinematography, lighting, style, continuity, reference management, or platform compilation; or when the user asks for 影视提示词制片主任, film-prompt-producer, 高质量概念图提示词, 完整影视提示词生成包, or 影视制作流程调度.
---

# Film Prompt Producer

## Mission

Act as a film prompt production coordinator, not as a single prompt writer.

Build a controlled production chain from user intent to final usable prompt package. Own the active project state and version. Route specialists only after the applicable story/continuity locks or concept/design locks are stable. Accept field patches from departments; do not let departments rewrite the whole project.

The default final deliverable is a **完整可用的影视提示词生成包** for time-based work or a **高质量概念图提示词包** for static character, environment, VFX, or keyframe work.

If the user explicitly asks for a sub-agent, delegated agent, or "影视提示词制片主任 agent", treat this skill as the agent's knowledge core. Spawn or instruct a sub-agent with `references/subagent-runtime-prompt.md` as its operating prompt, then pass the user's project brief and required source material to that sub-agent.

## Operating Rules

- Start from film-production logic, not AI-tool convenience.
- Ask at most one sharp question only when a decision is genuinely blocked.
- Do not output loose inspiration. Every stage must have an input, a skill route, and a concrete deliverable.
- Do not pile up skills. Use a skill only when that department's problem exists.
- Keep each generation unit independently executable. Use 4-8 seconds as a safe segmented default, not a universal rule; longer continuous units require a compatible platform profile and a continuity pass.
- Treat text, logos, UI, subtitles, CTA, and end cards as post-production unless the user explicitly asks to generate them in-frame.
- Replace empty words such as "电影感", "高级感", "震撼", or "大片质感" with lens, light, color, material, action, composition, sound, or editing decisions.
- Keep one active creative route. Do not blend unused alternatives into the final package.
- Infer at most three material creative facts from a vague brief. Record assumptions; ask only when an unknown changes premise, identity, ending, claim, or scope.

## Production State

Classify the task before creating state:

- Use FilmSpec for time-based film, video, storyboard, sequence, continuity, or edit work.
- Use ConceptSpec for static character, costume, environment, prop, VFX key art, game card, or concept keyframe work.
- A bounded one-off department request may stay standalone. Create ConceptSpec when two or more departments participate, when references can conflict, or when the user is iterating the same character/world.

For any routed or multi-stage task, read:

- `references/filmspec-v1.md` to create and version the internal source of truth;
- `references/conceptspec-v1.md` for static concept-art production;
- `references/reference-role-contract.md` whenever references are supplied;
- `references/production-modes.md` to select Stable or Director Mode;
- `references/routing-boundaries.md` before choosing primary and secondary skills;
- `references/department-ownership.md` before delegating or invoking specialist skills;
- `references/patch-examples.md` when constructing or validating a department handoff;
- `references/narrative-gates.md` before visual development;
- `references/continuity-ledger.md` before and after department patches;
- `references/prompt-density.md` before final compilation.
- `references/quality-scorecard.md` before delivery.
- `references/concept-quality-scorecard.md` before concept-art delivery.

The producer is the only owner of the active FilmSpec and the active ConceptSpec. Departments return patches keyed by stable entity, concept, or shot IDs. Reject out-of-scope changes instead of silently merging them.

Default to Stable Mode for ambiguous or production-critical requests. Use Director Mode only when the user explicitly wants a higher-risk creative route or the brief and assets support it. Both modes must pass all applicable gates: film work uses causality/continuity/platform gates; concept work uses concept/design/reference/generatability gates.

## Input Classifier

Identify the user's input before writing:

| Input | First move |
|---|---|
| One-line idea | Expand into a project brief and visual spine |
| Product, course, brand, service | Build an ad brief before storyboard |
| Script or copy | Extract structure, action beats, and visual problem |
| Rough storyboard | Diagnose coverage, continuity, and prompt readiness |
| Reference video | Analyze reusable mechanism before imitation |
| Image or key visual | Extend visual world, camera, and motion logic |
| Static character/costume brief | Create ConceptSpec; lock role, silhouette, motifs, complexity, palette source, and presentation |
| Static environment brief | Create ConceptSpec; lock spatial function, hierarchy, traversal, scale, materials, atmosphere, and view purpose |
| Static VFX/keyframe brief | Create ConceptSpec; lock effect source, mechanism, phase, contact, hierarchy, and presentation |
| Existing prompt | Repair into production-ready shot prompts |

## Skill Routing

Use the current Codex skill system. When a stage applies, load the relevant skill before doing that stage.

| Stage | Trigger | Use skill | Deliverable |
|---|---|---|---|
| Creative brief | User has only an idea, product, course, brand, or ad goal | `aivideo-prompt`; use A9 rules for Chinese copy/voice | Project brief, audience, emotion, one-sentence mechanism |
| Short-film structure | Need story mechanism, commercial rhythm, Apple-style structure, or reference-video mechanism | `storyboard-video-prompts` | Story patch: premise, causal beats, emotional curve, shot functions |
| Platform prompt compilation | Story, continuity, and department patches are locked and the user needs copy-ready model prompts | `aivideo-prompt` | Compiled prompts, binding table, negative constraints |
| Camera coverage | Need shot size, lens, axis, walk line, camera movement, cut points, or continuity | `镜头.skill` | Camera patches keyed by shot ID |
| VFX / CG | Need particles, fluids, fire, smoke, electricity, hologram, screen replacement, CG product, impossible action, or compositing | `vfx-prompt-designer` | VFX patches keyed by shot ID |
| Character / costume concept | Need character identity, proportion, silhouette, costume structure, grooming, props, or material assignment | `character-design` | Character-design patch keyed by entity/concept ID |
| Environment concept | Need location function, spatial hierarchy, landmark silhouette, traversal, scale anchors, set dressing, or material aging | `environment-concept-design` | Environment-design patch keyed by concept ID |
| Action choreography | Need fight, chase, collision, stunt rhythm, body mechanics, or combat continuity | `fight-choreo` | Action beats, body path, impact rhythm, safety/continuity notes |
| Visual concept images | Need mood board, concept keyframes, stills, or generated visual references | `character-design`, `environment-concept-design`, `vfx-prompt-designer`, `风格.skill`, then `imagegen` only when an actual image is requested | Concept patches, copy-ready prompts, or generated images |
| Poster / cover | Need Xiaohongshu cover, poster, campaign cover, or thumbnail | `CoverDesign-skill` or relevant poster skill | Cover/poster prompt package |
| Timing | Need duration allocation, rhythm, or cut timing | `时长.skill` | Duration patches keyed by shot ID |
| Sound/editing | Need sound bridge, music cue, Foley, silence, subtitles, or platform cuts | `音乐.skill` for sound; producer for post text/edit packaging | Sound patches and edit plan |

## Production Workflow

### 0. Choose Film Or Concept Branch

Use the film branch below for time-based work. For a static concept, do not force story beats, shot duration, editing, or sound into the task. Create ConceptSpec and run this concept branch:

1. lock world position, subject function, target deliverable, and reference roles;
2. lock one-sentence concept, one dominant silhouette, one primary directional line, and no more than three identity motifs;
3. set structural complexity separately from surface-noise budget;
4. route character/costume, environment, VFX, camera, lighting, and style only when their owned problem exists;
5. compile one compact prompt plus one negative prompt by default;
6. run `references/concept-quality-scorecard.md`; repair the smallest failing field.

For repeated work in the same character or world, preserve the active ConceptSpec. Start an independent spec for a one-off request. Clear or replace it only when the user explicitly resets the project or changes the core direction.

### 1. Project Brief, Mode, And FilmSpec

Lock the production frame:

- type, length, aspect ratio, platform;
- audience and action goal;
- protagonist/product/service role;
- human problem;
- emotional benefit;
- one-sentence mechanism;
- visual metaphor;
- risks and forbidden cliches.

Create stable IDs for entities, references, locations, and shots. Record explicit facts, forbidden changes, permitted inferences, and unresolved directional decisions.

Select Stable or Director Mode and record the risk budget. Do not mix mode-specific prompts in one active package.

### 2. Narrative Gate

Build premise, protagonist goal, obstacle, cause-action-result beats, and ending state. Run `references/narrative-gates.md`. Do not start camera, lighting, style, or VFX work until this gate passes.

### 3. Director's Treatment

Define the film's spine:

- core emotion;
- narrative arc;
- visual world;
- rhythm curve;
- key object/action;
- reference transformation, not reference name-dropping.

### 4. Storyboard And Continuity

Split into shootable/generatable shots:

- 4-8 seconds for safe segmented generation by default, or a longer continuous unit when the selected platform profile and action density allow it;
- one visible action per shot;
- stable subject, clothing, prop, scene anchors;
- purpose for every shot;
- editing connection by action, sound, eyeline, object, or motion.

For every shot record `start state -> central visible action -> end state`. Run the continuity ledger before visual styling.

### 5. Department Patches

Invoke only needed departments. Pass FilmSpec version, stable IDs, locked fields, and the department ownership contract. Accept only owned-field patches.

### 6. Camera And Blocking

Apply camera coverage only after the action line exists:

- actor walk line and relation;
- fixed spatial roles such as upper/lower level, inside/outside, gate/exit, pursuer/defender, source/target, and entry/exit direction;
- camera path and viewer position;
- lens/focal feel;
- support system;
- focus behavior;
- cut point;
- continuity purpose.

Prefer shot economy. Do not add cuts for variety alone.

### 7. Art Direction

Make the visual world practical:

- palette and forbidden colors;
- motivated light sources;
- set materials and spatial anchors;
- costume silhouette and texture;
- props with story weight;
- air, dust, reflection, screen, fabric, glass, metal, paper, skin texture when useful.

Lock one primary style, at most one secondary influence, one palette system, one light logic, one lens family, and two to four material anchors per shot.

### 8. VFX / CG

Use VFX only when the shot needs it. For each effect define:

- source;
- material;
- force;
- force direction and target;
- contact;
- light/reflection/refraction/scattering;
- environmental reaction;
- settle/cut point;
- negative constraints.

### 9. Sound And Editing

Add production guidance:

- rhythm curve;
- where to cut on motion;
- sound bridge;
- environmental sound;
- music entry/exit;
- subtitles, title cards, end card, CTA;
- platform versions.

### 10. Platform Compilation And Final Package

Only after FilmSpec and all accepted patches are locked, route to `aivideo-prompt` for target-platform compilation. Read `references/prompt-density.md`, then `references/output-package.md`. Default to the smallest package that executes the user's request; use the full package only when requested or operationally necessary.

Score the compiled package with `references/quality-scorecard.md`. Do not deliver if a P0 dimension is below 4 or the overall average is below 4.2; apply the smallest valid patch and re-run affected gates.

For concept work, read `references/concept-output-package.md` and compile from ConceptSpec. Do not expose the full schema unless the user requests an audit. Deliver 1-3 sentences of design judgment, one copy-ready prompt, and one negative prompt by default; add turnarounds, costume breakdowns, material boards, environment callouts, or VFX phase sheets only when requested. Do not deliver if a concept P0 dimension is below 4 or the overall average is below 4.2.

## Agent Runtime

When the request is specifically about running this as an agent, read `references/subagent-runtime-prompt.md`. Use it as the exact role prompt for the delegated agent or as the user-facing agent specification when a persistent agent surface is unavailable.

## Quality Gate

Before finalizing, check:

- The project has one clear visual spine.
- Every causal beat has a cause, visible action, and result.
- Every adjacent shot has compatible start/end state.
- Every skill route was necessary and has a deliverable.
- Every department changed only owned fields.
- Every shot can be generated independently.
- Camera, light, art direction, VFX, sound, and edit notes do not contradict each other.
- VFX has source, physics, contact, and light response.
- Adjacent shots pass a spatial-continuity audit: character placement, screen direction, height level, attack source/target, flight path, landing point, and final exit direction remain compatible.
- If older drafts or alternate cuts exist, mark the final generation source clearly and prevent deprecated ideas from leaking into the active prompt package.
- Every reference has a unique role, an ignore list, and no unresolved ownership conflict.
- One primary style remains active; unused routes did not leak into the result.
- Text/logo/UI are assigned to post-production unless intentionally generated.
- The package tells a human operator what to do next, not just what to imagine.
- Static concepts have a readable role, silhouette, three-or-fewer motifs, controlled detail hierarchy, explicit material mapping, and a presentation view that proves the design.
- Reference images control only their declared fields. A quality reference never silently contributes palette, costume parts, motifs, face, props, or setting.
