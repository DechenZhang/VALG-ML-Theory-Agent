# LITERATURE_SURVEY.md

Use this template as a run-specific pattern, not as a fixed fully expanded taxonomy.

Rules:

- Include only analysis-target families and sub-targets relevant to the current `$ARGUMENT`. If `$ARGUMENT` constrains the theorem target, omit unrelated target families rather than leaving them empty.
- Keep the four top-level sections, but organize `## 2. foundation theory` according to the actual foundation-search path used in the run.
- If the original `$ARGUMENT` is multi-object, use `### Component Theory`. A component branch may contain component-level theory papers, or a leaf `Testbed Fallback` block under the relevant sub-target if that branch used testbed fallback.
- If the original `$ARGUMENT` is single-object, use `### Testbed Theory`. This section may also contain canonical testbeds from a lightweight foundation pass when `## 1. direct theory` is nonempty.
- If no foundation search was needed in the run, write `No foundation fallback was needed in this run.` in `## 2. foundation theory`.

## 1. direct theory

Purpose:

- identify direct prior studies on the whole research direction
- determine direct theory coverage
- support gap-finding for the exact `$ARGUMENT`

### <Analysis Target Family>

Examples:

- Optimization
- Generalization
- Expressive Power
- Implicit Bias
- Other

#### <Sub-target> (optional)

Examples:

- Convergence
- Optimization Landscape
- Excess Risk
- Population Risk
- Theoretical Scaling Laws
- Generalization Gap
- Other

[D1] Paper title (publication status)

**Identifier:**

**Setting:**

**Goal:**

**Main result:**

**Key proof techniques:**

**Limitations:**

**Relation to research scope:**

[D2] ...

Repeat only the relevant analysis-target family and sub-target blocks.

## 2. foundation theory

Purpose:

- identify reusable theory foundations
- identify transferable proof tools
- identify canonical settings that can support later idea generation

If no foundation search was needed in this run, write:

`No foundation fallback was needed in this run.`

### Component Theory

Use this mode if the original `$ARGUMENT` contains multiple primary objects and the run used component-level foundation search.

#### Component: <component description>

##### <Analysis Target Family>

###### <Sub-target> (optional)

[F1] Paper title (publication status)

**Identifier:**

**Setting:**

**Goal:**

**Main result:**

**Key proof techniques:**

**Limitations:**

**Relation to research scope:**

[F2] ...

No foundation search was needed for this sub-target.

or

**Testbed Fallback (optional):**

`Testbed: <testbed name>`

[F3] Paper title (publication status)

**Identifier:**

**Setting:**

**Goal:**

**Main result:**

**Key proof techniques:**

**Limitations:**

**Relation to research scope:**

[F4] ...

Repeat the `#### Component: ...` block for additional components.

### Testbed Theory

Use this mode if the original `$ARGUMENT` contains one primary object. This mode may represent zero-hit fallback or a lightweight foundation pass.

#### Testbed: <testbed name>

##### <Analysis Target Family>

###### <Sub-target> (optional)

[F1] Paper title (publication status)

**Identifier:**

**Setting:**

**Goal:**

**Main result:**

**Key proof techniques:**

**Limitations:**

**Relation to research scope:**

[F2] ...

Repeat the `#### Testbed: ...` block for additional canonical testbeds.

## 3. empirical practice

Use this section only for practice-oriented or empirical papers that help explain:

- why the topic matters
- what practical phenomena are established
- where theory coverage is missing

[E1] Paper title (publication status)

**Identifier:**

**Main result:**

**Relation to research scope:**

[E2] ...

## 4. gap and open problem

Write at least one gap block for each active sub-target.

### <Analysis Target Family>

#### <Sub-target>

**Search path / outcome:** direct theory found / component foundation used / testbed foundation used / lightweight foundation used / mixed recursive outcomes / no direct theory found

**Gap statement:**

- Evidence pattern:
- Supporting papers / absence pattern:
- Why it matters downstream:
- Status: supported / uncertain
