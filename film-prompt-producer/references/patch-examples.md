# FilmSpec patch examples

Use these shapes for routed departments. Keep patches compact and keyed by the current FilmSpec version.

## Story patch

```yaml
patch:
  base_version: 3
  department: story
  changes:
    story.causal_beats:
      - id: beat-02
        cause: The train doors begin to close.
        visible_action: The child slips through while the protagonist reaches for him.
        result: They are separated, forcing the chase into the next space.
    shots.shot-02:
      narrative_function: separation
      start_state: Both stand inside the carriage near the open door.
      visible_action: The child exits as the door starts closing.
      end_state: Child is on the platform; protagonist remains inside.
  conflicts: []
```

## Camera patch

```yaml
patch:
  base_version: 4
  department: camera
  changes:
    shots.shot-02.camera_patch:
      shot_size: medium-wide
      position: carriage interior, three-quarter to the door
      lens: 35mm
      support: stabilized handheld
      movement: short lateral follow toward the closing door
      focus: hold the child, then rack to the protagonist behind glass
      cut: door seal impact
  conflicts: []
```

## Reference-conflict response

```yaml
patch:
  base_version: 4
  department: visual
  changes: {}
  conflicts:
    - field: entities.protagonist.clothing
      sources: ["@image-01", "@image-02"]
      reason: Both references claim clothing control with incompatible colors.
      required_decision: Select one clothing source or narrow one source to face-only.
```

## Rejection example

Reject this camera patch:

```yaml
changes:
  story.ending_state: The protagonist gives up.
  visual_constitution.primary_style: neon cyberpunk
  shots.shot-02.camera_patch:
    lens: 35mm
```

Reason: camera owns only `camera_patch`. The story and style changes must return to their owners.

## Acceptance sequence

1. Verify `base_version` equals the active FilmSpec version.
2. Verify every changed path belongs to the department.
3. Verify no lock is changed.
4. Verify conflicts are empty or explicitly resolved by the producer.
5. Apply the patch.
6. Increment FilmSpec version.
7. Re-run affected gates.
