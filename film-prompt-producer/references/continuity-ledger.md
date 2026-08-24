# Continuity ledger

Run this after narrative structure and after every department patch.

## Shot ledger

For every shot record:

```text
start state -> central visible action -> end state
```

The next shot's start state must inherit the prior end state unless a visible transition explains the change.

## Track

- character position, facing, eye-line, body condition;
- clothing, hair, accessories, injuries;
- held objects and which hand holds them;
- product shape, orientation, screen state, damage;
- door, light, vehicle, device, weather, and time state;
- entry/exit direction and foreground/background relation;
- sound bridges and ongoing music;
- VFX source, path, contact, residue, and settle point.

## Reference binding

For every reference define both:

- `controls`: the only attributes it may influence;
- `must_ignore`: visible attributes that must not transfer.

Example:

```text
@图片1 controls face and hair; must ignore clothing, background, and lighting.
@视频1 controls body path and timing; must ignore identity and visual style.
@音频1 controls protagonist voice; must ignore embedded background music.
```

If two references control the same attribute, report the conflict. Do not average or blend them.

## Visual purity

Lock:

- one primary style;
- at most one secondary influence;
- one palette system;
- one motivated light logic;
- one main lens family;
- two to four material anchors per shot.

Reject unrequested style leakage from references or specialist skills.

## Pass condition

Fail the package if an unexplained state jump, reference conflict, direction reversal, identity drift, or visual-law change remains.
