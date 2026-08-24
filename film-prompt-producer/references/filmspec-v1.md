# FilmSpec v1

Use FilmSpec as the internal source of truth for routed film production. Keep it compact. Do not expose the full structure unless the user asks for an audit or production specification.

## Schema

```yaml
project:
  type:
  duration:
  aspect_ratio:
  platform:
  production_mode: stable|director
  risk_budget:
  audience:
  goal:

locks:
  user_facts: []
  forbidden_changes: []
  allowed_inferences: []
  unresolved: []

story:
  premise:
  protagonist_goal:
  obstacle:
  causal_beats:
    - id:
      cause:
      visible_action:
      result:
  ending_state:

entities:
  - id:
    identity:
    appearance:
    clothing:
    props:
    voice:
    may_change: []
    must_not_change: []

world:
  locations: []
  time:
  world_rules: []
  spatial_anchors: []

visual_constitution:
  primary_style:
  secondary_influence:
  forbidden_styles: []
  palette:
  light_logic:
  lens_family:
  material_anchors: []

references:
  - id:
    type: image|video|audio
    controls: []
    must_ignore: []
    priority:
    conflicts_with: []

shots:
  - id:
    time:
    narrative_function:
    start_state:
    visible_action:
    end_state:
    camera_patch:
    lighting_patch:
    duration_patch:
    vfx_patch:
    sound_patch:
    continuity_inherits: []
    local_negative_constraints: []

platform_profile:
  model:
  generation_mode:
  max_duration:
  reference_limits:
  risky_elements: []
```

## Lock rules

- Treat `user_facts` and `forbidden_changes` as immutable.
- Infer at most three material creative facts when the brief is vague. Record them in `allowed_inferences`.
- Ask one question only when an unresolved item changes the premise, identity, ending, claim, or production scope.
- Use conservative defaults for non-directional unknowns.
- Never silently merge conflicting sources. Record the conflict and let the producer choose.
- Give every entity and reference a stable ID. Reuse the same IDs in all downstream patches.
- Give every shot a start state, one central visible change, and an end state.

## Version rules

- The producer owns FilmSpec and its version.
- Departments return patches against a stated version.
- Reject a patch that changes a field outside the department's ownership.
- After accepting a patch, increment the version and pass the new version downstream.
- Keep abandoned routes and deprecated shots outside the active FilmSpec.
