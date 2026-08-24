# ConceptSpec v1

Use ConceptSpec as the internal source of truth for routed static concept-art production. It serves film, animation, and game character, costume, environment, prop, VFX, and keyframe concepts. Keep it compact and do not expose the full schema unless the user asks for an audit.

## Schema

```yaml
project:
  id:
  version:
  medium: film|animation|game|general
  deliverable: character|costume|environment|prop|vfx|keyframe|mixed
  production_mode: stable|director
  usage:

locks:
  user_facts: []
  forbidden_changes: []
  allowed_inferences: []
  unresolved: []

concept:
  id:
  one_sentence:
  world_position:
  subject_function:
  emotional_contradiction:
  target_view:
  presentation:

design_system:
  dominant_silhouette:
  primary_directional_line:
  identity_motifs: []
  large_medium_small_hierarchy:
  structural_complexity: low|medium|high
  surface_noise_budget: low|medium|high
  clean_mass_zones: []
  focal_detail_zones: []
  forbidden_defaults: []

visual_constitution:
  primary_style:
  secondary_influence:
  forbidden_styles: []
  palette_source: user_locked|derived|reference_bound|style_card
  dominant_colors: []
  accent_colors: []
  forbidden_colors: []
  material_grammar: []
  texture_boundary:
  target_tone:

character_design:
  entity_id:
  identity:
  proportion:
  anatomy_and_face:
  hair_and_grooming:
  expression:
  pose_intent:
  costume_large_pieces: []
  costume_connections: []
  ornament_zones: []
  props: []
  material_assignment: []

environment_design:
  location_id:
  narrative_function:
  functional_zones: []
  spatial_hierarchy: []
  traversal_and_access: []
  hero_structure:
  scale_anchors: []
  material_placement: []
  weathering_and_history: []
  set_dressing_density:
  atmosphere:

vfx_design:
  effect_id:
  source:
  mechanism:
  material:
  shape_language:
  force_and_direction:
  phase:
  contact_and_reaction:
  optical_response:
  hierarchy:
  containment:

presentation:
  composition:
  shot_size:
  camera_angle:
  lens_or_perspective:
  lighting:
  background:

references:
  - id:
    type: image|video|text
    role: identity|silhouette|costume_structure|environment_layout|material|palette|camera|lighting|vfx_mechanism|quality_target
    controls: []
    must_ignore: []
    priority:
    conflicts_with: []

compiler:
  output_language:
  output_length:
  required_sections: []
  global_negative_constraints: []
```

## Lock rules

- Lock user facts and reference roles before design patches.
- Infer at most three material creative facts in Stable Mode and record them.
- A concept must state its world position, subject function, dominant silhouette, primary directional line, and up to three identity motifs before decorative detail is added.
- Structural complexity and surface noise are independent. High design completion may use high structural complexity with low surface noise.
- Palette has an explicit source. Never continue a color merely because it appeared in an earlier example or unrelated reference.
- Map each approved material to a named component and describe its light behavior. Do not use material adjectives as an unassigned keyword pile.
- A quality reference controls completion, hierarchy, material separation, and render finish only. It contributes no identity, palette, costume, motif, prop, or setting unless those fields are separately declared.
- Static concepts need no causal beats, duration, edit, or sound fields unless they depict a narrative keyframe whose action requires them.

## Version rules

- The producer owns ConceptSpec and its version.
- Departments patch only owned paths against a stated base version.
- Increment the version after every accepted patch and re-run affected gates.
- Preserve the active ConceptSpec across iterations of the same character or world.
- Start a fresh ConceptSpec for an unrelated one-off request or an explicit reset.
