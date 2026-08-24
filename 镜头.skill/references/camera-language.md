# Camera Language Reference

Use this reference when the task needs specific shot language, lens choices, camera position, framing, camera movement, and continuity parameters. Do not create lighting, color, texture, environment, or art-direction details.

## Shot Sizes

| Shot size | Use when | Camera notes |
|---|---|---|
| Extreme wide shot | Establish scale, isolation, city, landscape, crowd, journey | 18-28mm, T4-T8, fixed or slow push, deep focus |
| Wide shot | Show full body action and spatial relation | 24-35mm, T3.5-T5.6, controlled verticals |
| Medium wide | Show body language plus environment | 28-40mm, chest-height camera, good for blocking |
| Medium shot | Dialogue, consultation, work, human relation | 35-50mm, T2.8-T4, eye-level or slightly lower |
| Medium close-up | Pressure, listening, subtle change | 50-70mm, T2-T2.8, shallow background |
| Close-up | Emotional beat, decision, reaction | 70-85mm, T1.8-T2.8, focus on eyes |
| Extreme close-up | Eye, hand, object, button, paper, product proof | 85-100mm macro, T2.8-T5.6, locked or micro push |

## Lens Logic

- 18-24mm: strong environment, speed, distortion risk. Use for corridors, crowds, street crossings, large interiors.
- 28mm: grounded wide realism. Good for following a person through space.
- 35mm: natural storytelling lens. Good for walk-and-talk, two-person relation, ordinary rooms.
- 50mm: quiet human observation. Good for medium shots, restrained dialogue, decision moments.
- 70-85mm: psychological separation and compressed pressure. Good for reaction close-ups.
- 100mm macro: small-action proof. Use for hands, paper, buttons, product operation, object contact, eyes.

Avoid mismatches:

- Do not use 100mm macro for complex full-body action.
- Do not use 18mm close to a face unless distortion is desired.
- Do not use T1.4 for product details that must stay sharp.
- Do not overuse shallow depth when the scene needs spatial clarity.

## Camera Height

- Ground height: vulnerability, feet, physical pressure, chase, product on floor.
- Waist/chest height: realistic human observation, walk-and-talk, full-body blocking.
- Eye level: equality, intimacy, ordinary realism.
- Slight low angle: power, resolve, intimidation, product hero moment.
- High angle: weakness, surveillance, shame, system pressure.
- Overhead: map-like relation, process, choreography, ritual, isolation.

## Movement

- Locked-off: judgment, ritual, tension, product proof, deadpan humor.
- Slow push-in: realization, pressure, attention narrowing.
- Slow pull-back: isolation, aftermath, release, larger context.
- Lateral dolly: relation shift, parallel movement, comparison.
- Tracking follow: purposeful movement, chase, transition through space.
- Orbit-follow / arc move: rotation, circular movement, relationship reversal, reveal, or surrounded pressure. Keep the arc controlled and preserve screen geography.
- One-take path: continuous action, fight, dance, chase, walkthrough, or scene where cuts would break timing. State start position, movement path, and end position.
- Low tracking: footwork, landing, running, ground pressure, chase, or slip recovery.
- Over-shoulder follow: pursuit, dialogue pressure, tactical viewpoint, or character-driven movement through space.
- POV / subjective move: what a character sees, targets, avoids, or approaches. Use only when subjective viewpoint matters.
- Crane/boom move: reveal scale, vertical relation, group geometry, or transition from detail to macro space. Do not use as decoration.
- Handheld micro-shake: pressure, instability, documentary urgency.
- Whip pan: only for motivated reveal or fast comic/action transition.
- Rack focus: shift attention between subject and clue/product/action.

## Camera Parameters

Default film baseline:

- Frame rate: 24fps
- Shutter: 1/48s or 180-degree shutter
- Aperture: T2.8-T4 for most human scenes
- ISO and white balance: do not specify unless the user explicitly asks for exposure/color camera settings; preserve the user's lighting schedule.
- Aspect ratio: 2.39:1 for cinematic widescreen, 16:9 for social/commercial deliverables, 9:16 for vertical short video

Motion clarity:

- Use 1/96s for fast hand action, sport, chase, or product operation that must be sharp.
- Use 60fps only for a specific slow-motion beat, not for ordinary drama.

## Per-Shot Camera Packet Fields

Every shot prompt should carry its own parameters, but final output should usually be paragraph prose, not a labeled checklist. Use the checklist internally, then write the shot as a readable director prompt.

- Shot size: wide, full-body, medium, close-up, insert, macro, POV, overhead.
- Camera position: side/axis, angle, height, distance, front/side/three-quarter/over-shoulder/low/high.
- Lens: focal length or focal range if the shot changes during the move.
- Camera body settings: fps, shutter or shutter angle, aperture/T-stop, aspect ratio. Use ISO/white balance only if requested.
- Support: tripod, dolly, slider, steadicam, gimbal, handheld, crane/boom, drone, virtual camera, locked-off.
- Movement: path, direction, start/end position, speed/scale, push/pull/orbit/follow/track/pan/tilt.
- Focus: target, follow-focus, rack-focus, locked focus, deep focus, shallow focus.
- Continuity: action beat that triggers the cut, or one-take transition point.

If a shot is part of a one-take, write its packet as a time-slice inside the same shot, not as a global setting. Keep each time-slice readable as a compact paragraph.

## Framing Patterns

- Center composition: authority, ritual, confrontation, product packshot.
- Thirds: natural narrative balance, person plus environment.
- Negative space: isolation, hesitation, emotional distance.
- Foreground occlusion: surveillance, secrecy, pressure, layered social relation.
- Leading lines: journey, arrival, passage, decision.
- Symmetry: institutional order, luxury, ritual, control.
- Frame within frame: doorway, window, car, mirror, screen, emotional confinement.
- Telephoto compression: crowd pressure, danger closing in, relation collapsing.

Use these as camera framing choices only. Do not add new props, foreground objects, light sources, color palettes, or environmental details. If the user has already described foreground/background, decide how the camera uses them; otherwise do not invent them.
