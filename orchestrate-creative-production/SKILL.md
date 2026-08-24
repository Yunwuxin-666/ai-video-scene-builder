---
name: orchestrate-creative-production
description: Orchestrate cross-media or asset-rich creative programs with a main agent and bounded subagents for asset discovery, parallel concept development, staged execution, independent review, and knowledge capture. Use when the user explicitly wants reusable prior assets, subagent coordination, multiple deliverable types such as IP plus poster plus film plus course, or post-project conversion into skills, templates, style cards, and QA rules. For a film-only multi-department workflow, use film-prompt-producer as the primary production skill.
---

# Orchestrate Creative Production

Keep one main agent as the user's communication surface. Delegate only concrete, bounded work that can run independently. The main agent owns interpretation, tradeoffs, synthesis, file changes, and final delivery.

For a film-only request, keep this skill out of the production path unless asset scouting, cross-media coordination, or knowledge capture is explicitly needed. Route the film branch to `film-prompt-producer`, which owns FilmSpec and film-department state.

## Start every task

1. Convert the user's spoken request into a brief: goal, audience, deliverables, constraints, references, locked decisions, and unknowns.
2. Inspect the current project and relevant prior assets before proposing new work.
3. Select only the subagent roles that reduce latency or context load. Do not spawn all five by default.
4. Tell the user what is being delegated and why.
5. Give each subagent one bounded output contract and read every result before synthesis.

Read [agent-cards.md](references/agent-cards.md) when preparing delegation prompts. Read [asset-routing.md](references/asset-routing.md) before reusing or storing project knowledge. Read [qa-gates.md](references/qa-gates.md) before final delivery.

## Route work

- Use **asset scout** when information is scattered across folders, tasks, reference images, cloud documents, or skills.
- Use **concept explorer** when two or more genuinely different creative directions can be developed in parallel.
- Use **stage producer** when the work has sequential stages such as brief, character lock, extensions, poster, motion, and delivery.
- Use **independent critic** for a fresh pass on specificity, consistency, usability, and likely failure modes.
- Use **knowledge curator** after meaningful feedback or a reusable discovery appears.

Do not delegate simple edits, one-step transformations, or work that requires constant back-and-forth with the same mutable file.

## Preserve decision ownership

Escalate only decisions that materially change direction, scope, identity, or quality threshold. Present no more than three decision-ready options. Keep implementation details and intermediate noise inside the agent team.

For visual IP work, lock character identity before scene, poster, or motion extensions. Every handoff must state: confirmed decisions, forbidden changes, current references, approved prompts, unresolved risks, and next-stage inputs.

For spoken content, preserve the user's concrete lived experience and personal judgment. Reject generic industry-report framing unless explicitly requested.

## Finish and compound

Run the relevant QA gate. Then classify new knowledge instead of placing everything into global rules:

- project-specific fact -> project record
- reusable procedure -> skill or workflow
- repeatable output shape -> template
- named aesthetic -> opt-in style card with an explicit trigger
- failure and correction -> QA rule
- character-specific identity -> character asset pack

Ask for approval before changing shared or global skills. Keep named aesthetics trigger-based and non-default.
