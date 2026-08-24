# Scene Rules Reference

Use this reference when a task needs scene-specific camera coverage, camera placement, shot-size decisions, hidden spatial-continuity control, or cut-point correction. Preserve the user's original blocking, action, lighting, environment, and style.

Treat axis as an internal spatial setup: first locate characters, facing direction, movement direction, foreground/background relation, and viewer side; then write camera prompts using concrete placement language. Do not expose axis jargon in copy-ready prompts unless the user asks for technical analysis.

## Dialogue Scenes

Goal: make relation visible before emotion without changing dialogue, blocking, or performance.

Recommended structure:

1. Establish geography with a medium wide or two-shot.
2. Use over-the-shoulder shots to confirm eye-line and power relation.
3. Move into medium close-ups when pressure rises.
4. Use inserts only when the hand/object action changes the meaning.
5. Hold on the listener when silence is more important than speech.

Camera:

- 35mm for establishing two-person space.
- 50mm for medium dialogue.
- 70-85mm for reaction close-ups.
- T2.8-T4 for two-person readability; T2 for isolated emotional reaction.
- Keep speaker-listener placement and facing direction consistent unless disorientation is intentional.

Common fixes:

- If the scene feels like a flat interview, add foreground shoulder, table edge, glass reflection, or doorframe.
- If the scene feels too staged, lower the camera slightly or widen/narrow the shot; do not add new gestures.
- If the relation is unclear, start wider before cutting close.

## Street Crossing / Movement Through City

Goal: show movement direction, pressure, and destination.

Camera:

- 24-28mm low or chest-height follow for spatial motion.
- 35mm lateral tracking for clean crossing geography.
- 70mm compression if cars, crowd, or buildings should feel close.
- T4-T5.6 to keep body and environment readable.

Continuity:

- Define start side, destination side, and screen direction.
- Use only the user's existing traffic lines, crosswalk stripes, building edges, umbrellas, or crowd flow as screen-direction guides.
- Cut on footstep, traffic light change, car pass, or head turn.

Common fixes:

- If the original image is animation-like or game-like, convert to a real street lens height, grounded shadows, traffic scale, natural cloth wrinkles, and plausible pedestrian spacing.
- Do not place the camera impossibly high or too close unless the shot is intentionally stylized.

## Suspense / Pressure

Goal: control what the viewer can and cannot see.

Camera:

- 50-85mm, T2-T2.8, slow push or locked frame.
- Use doorframes, glass, shelves, partial shoulders, or darkness as foreground occlusion.
- Leave negative space in the direction of threat or uncertainty.

Common fixes:

- Use camera framing to control partial information.
- Do not reveal full secondary characters too early unless the user's script already does.
- Preserve the user's existing eye-line, pause, breath, or micro-expression.

## Action / Chase

Goal: keep direction clear while increasing physical pressure.

Camera:

- 24-35mm for following movement.
- 70-135mm for compressed danger or pursuit.
- T4 for action readability.
- 1/96s if motion clarity matters.
- Handheld micro-shake is acceptable; random chaotic shake is not.

Edit:

- Establish direction first.
- Cut on motion.
- Use inserts for feet, hands, door handles, impact, object drop.
- Reserve slow motion for one decisive beat.

## Product / Commercial

Goal: keep the user's product action readable through camera coverage.

Coverage:

1. Keep the user's human problem, product action, result, and packshot order.
2. Choose shot size and lens so the proof action is visible.
3. Do not add new product features, props, surfaces, lighting, or beauty treatment.

Camera:

- 35-50mm for human use.
- 85-100mm macro for hands, interface operation, product edge, or small proof action.
- 70mm locked-off for packshot.
- T4-T5.6 for product sharpness.

## Education / Consulting / Course Scenes

Goal: make the user's diagnosis, judgment, or consulting action readable through camera coverage.

Camera:

- 35mm medium wide for consultant-student-parent relation.
- 50mm medium shot for listening and explanation.
- 85mm close-up for parent/student reaction.
- 100mm macro for annotated plan, pen movement, document edits.

Coverage:

- If the user's scene includes paper, pen, whiteboard, seating distance, or eye-line, choose camera coverage that preserves those details.
- Do not add new consulting actions or change who speaks/listens.
- Preserve family/student reactions that the user already wrote.

Common fixes:

- If the user asks for camera optimization only, do not replace teaching actions with new diagnostic actions.
- Avoid camera choices that create stage-lecture framing unless the user wants that.

## Animation / Game-Like Frame To Live-Action

Goal: preserve the scene idea and action while converting only the camera to plausible cinematography.

Fix checklist:

- Lower impossible camera height to human, vehicle, drone, or crane logic.
- Replace floating perspective with a real lens: 24mm spatial, 35mm natural, 50mm observation, 85mm emotional.
- Use existing scale anchors if present: door height, crosswalk width, curb, table edge, chair distance, hand size.
- Preserve existing contact points; do not invent new physics beats.
- Do not change saturation, material, lighting, costume, or body pose unless the user asks for visual/style repair.

## Still Image To Cinematic Prompt

When the user provides one image but wants a better shot, do not simply describe the current image. Re-camera it:

1. Decide the dramatic center from the user's existing subject/action.
2. Choose whether the camera should move closer, wider, lower, higher, or sideways.
3. Use existing foreground/background only if present.
4. Specify shot size, camera position, lens, movement, and focus.
5. Preserve the user's subject, action, environment, lighting, and style.

If the input image is not visible, state that the diagnosis is based on the user's description and ask for the image only if exact frame correction is necessary.
