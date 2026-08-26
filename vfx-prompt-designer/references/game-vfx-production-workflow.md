# Game VFX Production Workflow

Use this reference for fixed-camera gameplay showcases, top-down or isometric combat, game skill tests, reference-driven combat VFX, target-centered fields, layered hit effects, and iterative prompt repair. Use it as a production-control workflow, not as a fixed genre, weapon, camera, or palette.

## 1. Route the Task Before Designing Effects

Classify the requested output first:

- Fixed gameplay showcase: locked or nearly locked camera, readable action range, game-combat framing.
- In-engine asset test: neutral staging, effect readability and implementation behavior prioritized.
- Third-person gameplay: camera follows a player but preserves gameplay direction and hit readability.
- Cinematic game trailer: shot language may change, but gameplay logic and contact still need anchors.
- Ultimate showcase: allows larger screen coverage and macro response only after a readable trigger and travel path.

When the brief says game direction, UE, top-down, isometric, skill test, or fixed camera, do not default to eye-level cinematic coverage.

## 2. Build the Preflight Contract

Lock the following before writing the prompt:

```text
Delivery:
- complete prompt / compact prompt / patch / beat map / technical breakdown

Camera:
- view type
- height and pitch when provided
- lens feel
- fixed or moving
- prohibited camera behavior

Blocking:
- source start position
- target start position
- attack axis
- target displacement direction
- final source and target positions
- stable environment anchors

Action:
- attack count and order
- time range for each beat
- body-force chain
- weapon path
- target reaction
- residue inherited by the next beat

Effect anchors:
- source_anchor
- path_anchor
- contact_anchor
- ground_anchor
- follow_mode
- lock_mode
- release_mode

Palette:
- core
- body
- mid
- edge
- impact
- particles
- ground/spatial geometry
- residue
- forbidden colors

References:
- what each asset controls
- what each asset must not contribute

Intensity:
- relative screen coverage
- relative brightness
- relative particle density
- relative environment response
```

Treat an anchor as a behavior contract, not only a noun. A target-centered ground field may follow the target projection during movement, lock before impact, and remain at the final contact point after release. A scene-centered field must remain fixed. Never choose between these behaviors implicitly.

## 3. Decompose References by Function

Do not blend reference images as undifferentiated style inspiration. Bind each reference to one or more functions:

- camera and composition
- action rhythm
- primary effect silhouette
- contact/impact structure
- field or spell geometry
- particle hierarchy
- environment interaction
- palette and value hierarchy
- material/shader behavior
- residue and dissolve timing

For every reference, also declare ignored attributes such as original character, scene, camera, color, UI, text, logo, aspect ratio, or unrelated props.

When references conflict, prioritize the user's locked brief. Do not inherit the geometry from one reference and the palette from another without first defining a unified palette contract.

## 4. Design Every Beat as Action and Picture Together

Use one integrated beat card for every important action or contact:

```text
Time/beat:
Action and force chain:
Screen geography and composition:
Primary shape:
Source and travel path:
Contact point:
Impact stack:
Particle depth:
Ground/environment response:
Light and optical response:
Residue inherited by the next beat:
Readable paused-frame requirement:
```

Do not write a long action paragraph followed by a detached VFX keyword list. The action path must generate the effect path, and the effect must complete the frame composition.

For fixed-camera game VFX, make each major contact frame readable as a standalone keyframe. Check source, target, attack direction, range, hit point, negative space, and effect hierarchy.

## 5. Use a Layered Impact Stack

Select the smallest useful subset, then birth layers in sequence:

1. Contact core: a brief high-contrast point that does not hide the target.
2. Directional spikes: asymmetrical shape that clarifies force direction.
3. Impact body: wedge, X, slab, fan, crescent, or compressed volume.
4. Shock geometry: ring, ellipse, pressure arc, refraction sheet, or air deformation.
5. Primary fragments: fewer, larger, fast, directionally biased pieces.
6. Secondary particles: smaller fragments, sparks, stars, motes, filaments, or droplets.
7. Ground response: dust displacement, scrape, crack, pressure line, debris, reflection, or scorch when justified.
8. Delayed residue: slow particles, mist, afterglow, falling debris, or fading track.

Do not require explosions for every effect family. Require visible contact evidence and a result appropriate to the material, force, and gameplay importance.

## 6. Separate Particle Roles and Depth

Assign particles by function:

- Near-field: few, larger, fastest; reinforce weapon or body motion.
- Travel/path: aligned with attack perspective; reinforce speed and range.
- Contact: highest contrast near the hit point; keep the center readable.
- Environment: lower, slower, dimmer; prove interaction with ground and props.
- Foreground depth: very sparse, short-lived, allowed only when it does not obstruct gameplay information.
- Residue: delayed and low energy; creates continuity into the next beat.

Vary size, speed, rotation, gravity, drag, opacity, lifetime, and birth time. Avoid uniform radial bursts unless the mechanic is truly radial.

## 7. Propagate Force Through the Environment

Use a distance-ordered chain:

```text
contact deformation
-> near dust or fluid displacement
-> ground or surface transmission
-> mid-field debris and spatial geometry response
-> distant cloth, props, vegetation, architecture, or atmosphere response
-> delayed settling and reflected-light decay
```

Every reaction needs a visible carrier: pressure wave, ground conduction, airflow, fluid motion, debris, heat, electricity, gravity, or structural strain. Do not animate all environment props at the same time.

Macro scale must grow from the existing force path. Do not add an unrelated environment spectacle solely to make the effect feel bigger.

## 8. Lock Palette as a System

Define palette roles rather than listing attractive colors:

```text
Core: fastest and brightest value
Body: dominant effect identity
Mid: thickness and volume
Edge: refraction, danger, tearing, or temperature boundary
Impact: brief focal accent
Particles: controlled support colors
Ground/spatial: field, trail, or transmitted energy
Residue: lower saturation or value afterglow
Forbidden: hues or combinations that must not appear
```

Check compatibility among weapon, field, impact, particles, lighting, and environment reflections. A field and weapon may contrast intentionally, but the relationship must be declared. Never preserve a reference's color merely because its geometry was selected.

Keep project-specific palettes optional. Do not make one tested palette the default for all combat VFX.

## 9. Build an Intensity Ladder

Escalate by changing visual function, not only size:

- Setup: small anchor signs and negative space.
- Light hit: thin primary path and compact contact response.
- Medium hit: broader silhouette, clearer shock geometry, more target reaction.
- Heavy hit: ground or spatial deformation and delayed debris.
- Finisher: largest coherent range, strongest impact stack, and widest justified environment propagation.

Assign approximate screen coverage when the brief needs strict control. Preserve recovery and low-energy intervals so the finisher has contrast.

## 10. Compile Revisions Without Breaking Accepted Work

Use feedback as staged refinement:

1. Identify the exact field being upgraded: camera, action, composition, anchor, palette, particles, environment, scale, or delivery.
2. Preserve all accepted fields.
3. Update dependent fields only when the change logically requires it.
4. Re-run anchor, palette, continuity, readability, and environment-propagation checks.
5. Recompile the requested deliverable.

When the user requests a complete or directly copyable prompt, return one fully merged prompt after every revision. Do not ask the user to append, replace, or reconcile fragments.

## 11. Preserve Effect Capacity During Prop Revisions

Treat a prop, weapon, artifact, or casting-device revision as a bounded source-design change unless the user explicitly asks to redesign the entire skill effect.

- Lock the accepted intensity ladder, impact stack, particle depth, environment propagation, camera coverage, timing, and target reaction before changing the prop.
- Rebuild only the effect motifs that logically depend on the prop's geometry or material, such as a linear trail becoming an orbital trail or a rigid arc becoming a magnetic ribbon.
- Do not reduce a previously accepted multi-layer effect to a thin projectile, a few rings, or one explosion merely because more prompt space is spent describing prop size and orientation.
- After the prop change, compare setup, travel, contact, target field, finisher, environment response, and residue against the prior accepted version. Restore any lost visual function before delivery.
- Keep prop-scale constraints separate from effect-scale constraints. A palm-sized source may drive a large target-centered field without the prop itself growing.

## 12. Bind Casting Motion to the Effect Chain

For character-driven casting, define a continuous body-force chain instead of animating only the hand or forearm:

```text
foot anchor and weight preparation
-> hip and torso rotation
-> shoulder and elbow lead
-> wrist and fingertip release
-> effect birth and travel
-> recoil or follow-through
-> recovery pose inherited by the next shot
```

- Make every emitted effect correspond to a visible gesture phase: gather, aim, release, redirect, lock, compress, or finish.
- Carry momentum between beats. The end of one gesture must become the setup for the next through recoil, elbow recovery, torso rotation, weight transfer, or a planted step.
- Give the target a staggered reaction chain rather than rigid translation: contact compression, shoulder or chest response, delayed hip rotation, foot slide or step, balance loss, and recovery or landing.
- Preserve full-body readability in at least one coverage shot whenever casting continuity is part of the result.
- Add secondary follow-through to cloth, floating artifacts, orbiting parts, and particles with small timing offsets; do not weld every element to the same frame timing.

## 13. Keep Clean Recompiled Prompts Free of Rejected Concepts

When the user asks for a fresh, clean, or standalone prompt, describe only the approved current design.

- Remove rejected prop names, discarded colors, obsolete mechanisms, and historical comparison language from both positive and negative sections.
- Express current constraints directly, such as the approved silhouette, orientation, palette, and source behavior, without narrating what the design used to be.
- Keep only negative constraints that prevent a plausible current-generation failure. Do not preserve prior concept vocabulary when mentioning it can reintroduce that concept into the model output.

## 14. Final Game-VFX Check

- Is the camera mode appropriate to gameplay rather than assumed cinematic coverage?
- Are source, target, attack axis, landing point, and final positions consistent?
- Does every field, ring, trail, explosion, and ground effect have an explicit anchor and behavior?
- Does each action beat produce a designed frame composition?
- Is the hit point visible at peak impact?
- Are primary shape, impact, particles, and residue born in sequence?
- Does particle depth reinforce direction and scale without hiding the characters?
- Does environment response propagate from a visible force path?
- Does the intensity ladder reserve the largest range and density for the most important beat?
- Is the palette unified across weapon, geometry, particles, impact, lighting, and residue?
- Are forbidden colors and reference attributes excluded?
- Does the revision preserve accepted camera, action, blocking, and timing?
- Did a prop or orientation revision preserve the accepted effect intensity, particle hierarchy, environment interaction, and finisher scale?
- Does character casting show a continuous foot-to-hip-to-torso-to-arm force chain with recoil and recovery across shot boundaries?
- If a clean prompt was requested, is rejected concept vocabulary absent from the entire deliverable?
- If a full prompt was requested, is the output fully merged and copy-ready?
