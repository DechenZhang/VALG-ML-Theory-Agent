---
name: research-lit
description: Map the relevant ML theory and supporting empirical literature for a research direction, summarize settings, goals, results, techniques, and gaps, and write LITERATURE_SURVEY.md. Use when Codex needs the literature-survey step of the workflow or needs gap-oriented related-work mapping for downstream perspective selection.
---

# Research Lit

Use this skill to map the ML-theory literature for one research direction and write `LITERATURE_SURVEY.md`.

This is the internal literature-survey skill:

- write only `LITERATURE_SURVEY.md`
- do not invent controller-visible outputs, statuses, or checkpoints
- leave downstream perspective selection to `/perspective-select`

## Contract

### Required Input

- `$ARGUMENT`

### Optional Input

- `workflow_feedback.md`
- current `LITERATURE_SURVEY.md` draft when rerunning the literature-survey checkpoint
- matching pending rerun feedback from `workflow_feedback.md` for the literature-survey checkpoint

### Required Output

- `LITERATURE_SURVEY.md`

### Execution Default

- default internal execution is non-blocking and completes the survey in one pass

### Responsibilities

- map `Direct Theory`, `Foundation Theory`, `Empirical Practice`, and evidence-based gaps
- start with `Direct Theory` for each active sub-target
- recurse with `Component Theory` or `Testbed Theory` on zero-hit scopes (recurse only on zero-hit scopes)
- allow lightweight `Foundation Theory` when `Direct Theory` is sparse or technique coverage is thin
- use runtime consultations rather than controller-owned checkpoints
- de-duplicate and classify papers before writing `LITERATURE_SURVEY.md`

## Search Budgets

- `LOCAL_PAPER_PATHS = papers/, literature/`
- `MAX_LOCAL_PAPERS = 20`
- `LOCAL_PDF_READ_PAGES = 3`
- `MIN_DIRECT_THEORY_PAPERS = 6`
- `MAX_DIRECT_THEORY_PAPERS = 12`
- `MIN_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED = 4`
- `MAX_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED = 8`
- `MIN_EMPIRICAL_PAPERS = 4`
- `MAX_EMPIRICAL_PAPERS = 8`

Use these as targets, not hard failure conditions. Theory budgets apply per active sub-target; foundation budgets apply per recursive component scope or per testbed within one sub-target pass.

## Source Priority

Search in this order, filling gaps as needed:

1. Zotero, if configured
2. Obsidian notes, if configured
3. local PDF libraries under `papers/` or `literature/`
4. web search
5. Semantic Scholar, if available
6. DeepXiv or equivalent progressive-reading source, if available

Rules:

- prefer user-local sources first
- skip unavailable optional sources silently
- never fail only because a source is unavailable
- prefer the most informative canonical source when the same paper appears multiple times

## Workflow

### Step 1: Normalize the research direction

- if `LITERATURE_SURVEY.md` already exists, read it as the latest draft for this literature-survey-checkpoint rerun
- if `workflow_feedback.md` contains pending rerun feedback in the `Literature Survey` section, treat that feedback as binding guidance for rerunning `/research-lit`
- Apply the Source-Direction Fidelity Contract from `../_shared/checklists/artifact-contracts.md` to the effective `$ARGUMENT`. If `$ARGUMENT` includes or reflects a `RESEARCH_BRIEF.md` or equivalent brief, do not assume fixed headings; scan the available prose for explicit or clearly implied constraints on the problem object, required scope, target quantity, theorem type, success or progress standard, acceptable partial progress, forbidden shortcuts, out-of-scope directions, parameter dependence, and evaluation priorities. Treat absent fields as unspecified rather than inventing them.
- read `$ARGUMENT` and detect:
  - whether it has one or multiple primary objects
  - whether it already constrains the theorem target
  - the initial target families and sub-targets
  - whether the current scope is still meaningfully splittable
- treat the initial target families and sub-targets as provisional until the first `Direct Theory` sweep refines them
- send one runtime consultation update in the format `Normalization | Targets: <targets> | Objects: <objects> | Splittable: <yes/no>`
- in standalone use, report the detected objects and continue
- when invoked inside the public controller workflow, report the normalization and continue
- if the controller or user later edits the detected objects and reruns the skill, use the edited objects in that rerun

Object-detection rules:

- a primary object is a main analyzed entity named in `$ARGUMENT`
- coordinated entities such as `A and B`, `A/B`, or clearly parallel noun phrases count as multiple objects
- theorem targets such as `generalization`, `optimization`, `implicit bias`, or `expressive power` do not count as separate objects
- example: `theoretical analysis of component A in algorithmic setting B` has two primary objects: `component A` and `algorithmic setting B`

### Step 2: Search theory

Treat each active sub-target as its own search unit.

- start every active sub-target with `Direct Theory` on the full `$ARGUMENT`
- after the first `Direct Theory` sweep, refine the active sub-target set using early retrieval signals:
  - repeated theorem types, bound metrics, or claim forms
  - recurring canonical settings, algorithm-model pairings, or proof styles
  - persistent low-yield or zero-yield patterns after exact-name and alias search
- if early retrieval clusters around a non-listed theorem property within an existing family, activate that family's `Other` bucket and name the property explicitly; if it clusters around a theorem-target family outside the listed families, activate top-level `Other` and name it explicitly
- for unconstrained arguments, use the analysis-target taxonomy below as the initial search menu and then drop irrelevant or low-yield passes after refinement
- before dropping a low-yield sub-target after the first sweep, check whether nearby papers use proxy theorem quantities or adjacent terminology that may still qualify under that sub-target
- for constrained arguments, search only the constrained family or sub-target
- search with both object or family terms and sub-target theorem terms; do not rely on object names alone
- for `Theoretical Scaling Laws`, prefer papers derived from an explicit theoretical setting such as linear regression, kernel regression, or another analyzable model; do not treat purely fitted experimental curves as theory hits

Qualifying theory papers must state the setting, assumptions, theorem goal, and at least one main formal claim that explicitly characterizes the current sub-target. Examples:

- `Convergence`: rate, guarantee, or stationarity guarantee
- `Optimization Landscape`: critical points, minima, saddles, or related landscape property
- `Excess Risk`: explicit excess-risk bound
- `Population Risk`: population-risk or test-risk theorem that is not better treated as `Excess Risk` or `Theoretical Scaling Laws`
- `Generalization Gap`: generalization-gap, stability, or generalization-error theorem
- `Theoretical Scaling Laws`: explicit theorem-derived scaling law from an explicit theoretical setting, where the main formal claim is how performance or risk scales with domain-appropriate quantitative categories such as data scale, model or system scale, structural parameters, algorithmic or horizon parameters, regularity or stability parameters, or numerical or approximation scales; fitted experimental scaling curves alone do not qualify
- `Optimization / Other`: an explicit theorem-level optimization property that is not naturally classified as `Convergence` or `Optimization Landscape`
- `Generalization / Other`: an explicit theorem-level generalization property that is not naturally classified as `Excess Risk`, `Population Risk`, `Generalization Gap`, or `Theoretical Scaling Laws`
- top-level `Other`: an explicit theorem-target family that is not naturally classified as `Optimization`, `Generalization`, `Expressive Power`, or `Implicit Bias`
- `Implicit Bias`: limiting direction, margin, bias, or selected solution geometry
- `Expressive Power`: approximation power, expressive complexity, or separation result

A scope is not reasonably exhausted until all of the following have been attempted:

- exact-name search
- alias or family-name search when relevant
- sub-target-theorem search
- one proxy-term or adjacent-terminology check when nearby papers suggest the sub-target may be present under different wording
- seed expansion through references, citations, or closely related papers for 2-3 representative papers when available
- one same-sub-target missed-paper audit before stopping

If a scope finds one or more qualifying theory papers, stay in that scope until budget or reasonable exhaustion. If `Direct Theory` is nonzero but still sparse, or if technique coverage remains thin after reasonable exhaustion, a lightweight `Foundation Theory` pass is allowed.

If a scope finds zero qualifying theory papers:

- for a splittable multi-object scope, propose a binary split and recurse under `Component Theory` (recurse only on zero-hit scopes)
- for a single-object or unsplittable scope, fall back to `Testbed Theory`

Split proposals are runtime reports, not controller-owned checkpoints:

- send `No theoretical papers found | Target Family: <family> | Sub-target: <sub-target> | Proposed split: component A = <...> | component B = <...>`
- in standalone use, report the proposed split and continue with the split used in this run
- when invoked inside the public controller workflow, report the split and continue
- if the controller or user later edits the split and reruns the skill, use the edited split in that rerun

Classify theory papers by their actual theorem object and theorem goal after reading them, not by title wording alone. Do not force a paper into the nearest listed sub-target or family when its main formal claim is a nonstandard theorem property; use the appropriate `Other` bucket and name the property explicitly.
When a paper could fit multiple generalization sub-targets, classify it by its main formal quantity and main claim rather than by surface terms such as `learning curve`, `test risk`, or `asymptotic characterization`.

#### Direct Theory

- scope: the full `$ARGUMENT`
- purpose: find direct prior theory and direct gaps
- for a single-object input, explicitly analyzing the named object under the current sub-target counts as direct prior work
- budget: `MIN_DIRECT_THEORY_PAPERS` to `MAX_DIRECT_THEORY_PAPERS`
- for multi-object inputs, a paper counts as `Direct Theory` only if it analyzes all named objects in the full current scope; papers covering only a strict subset must not be classified as `Direct Theory`

#### Foundation Theory

- use recursive `Component Theory` or `Testbed Theory` after zero-hit scopes
- allow lightweight foundation search when `Direct Theory` is sparse or technique coverage remains thin

##### Component Theory

- scope: one selected component at a time
- use after zero-hit decomposition, or in a lightweight foundation pass for sparse multi-object direct theory
- if the component is a method family, framework family, or problem family, search aliases, renamed variants, derived methods, and theoretically motivated descendants
- if the component still has zero qualifying papers and can split further, recurse again (recurse only on zero-hit scopes)
- if the component is no longer splittable and still zero-hit, fall back to `Testbed Theory`
- if a foundation paper still names, depends on, or specializes to an original object or component from `$ARGUMENT`, it is `component-level foundation`
- budget: `MIN_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED` to `MAX_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED`

##### Testbed Theory

- scope: canonical object-free testbeds chosen from the theorem target itself
- use after zero-hit single-object or unsplittable scopes, or in a lightweight foundation pass when object-free canonical tools are still useful
- a valid testbed must still make sense after removing the named object or component from `$ARGUMENT`
- if a candidate foundation still depends on the original object or component, keep it in `Component Theory` for multi-object runs, or in `Direct Theory` if it is still direct prior work for a single-object run
- for `component A in algorithmic setting B`, a setting-B-specific foundation is component-level, while an object-free convergence, risk, or approximation result is a valid testbed
- illustrative search anchors, not a whitelist:
  - `Benign Overfitting of Constant-Stepsize SGD for Linear Regression`
  - `On the Asymptotic Learning Curves of Kernel Ridge Regression under Power-law Decay`
  - `A Simple Convergence Proof of Adam and Adagrad`
  - `The Implicit Bias of Adam on Separable Data`
- budget: `MIN_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED` to `MAX_FOUNDATION_PAPERS_PER_OBJECT_OR_TESTBED`

### Step 3: Search empirical practice

Search empirical or practice-oriented papers on the whole `$ARGUMENT`.

- target `MIN_EMPIRICAL_PAPERS` to `MAX_EMPIRICAL_PAPERS`
- keep this stream tightly scoped to the same `$ARGUMENT`
- prioritize recurring or robust empirical phenomena over one-off benchmark wins
- use empirical practice to explain why a gap matters, not to replace theory search

### Step 4: Deduplicate, classify, and write gaps

De-duplicate before writing summaries:

- match by arXiv ID first, DOI second, normalized title third
- if the same work appears as both preprint and published version, prefer the published metadata while retaining useful preprint links if needed
- if the same paper appears from multiple sources, keep one canonical record

Classification rules:

- empirical or practice-oriented papers go into `Empirical Practice`
- under `Theoretical Scaling Laws`, papers whose scaling-law claims come mainly from fitting experimental results without an explicit theoretical setting belong in `Empirical Practice`
- papers directly analyzing the named research direction belong to `Direct Theory`; for single-object inputs, explicitly analyzing the named object under the current sub-target counts as analyzing the whole named research direction
- papers found in recursive component search, canonical testbed search, or a lightweight foundation pass belong to `Foundation Theory`
- inside `Foundation Theory`, object-conditioned papers are `Component Theory`, and object-free canonical papers are `Testbed Theory`

Gap rules:

- use direct theory as the primary basis for formal theorem-level gap claims
- use foundation theory for reusable tools and missing bridges
- use empirical practice to strengthen importance or unexplained phenomena
- never use empirical-only evidence as the sole basis for a formal theory gap
- write at least one gap for each active sub-target
- before marking a sub-target `absent`, run a final theory audit
- each gap must say what is missing, what evidence supports it, why it matters downstream, and whether it is `supported` or `uncertain`
- each gap must say whether extracted source-direction constraints make it central, out of scope, narrowed, or residual context for downstream perspective and idea work
- reject or omit gaps that contradict extracted source-direction constraints unless they are explicitly framed as out-of-scope or background context

## Analysis-Target Taxonomy

For unconstrained theorem-target search, use these families and sub-targets as the initial search menu:

- Optimization
  - Convergence
  - Optimization Landscape
  - Other
- Generalization
  - Excess Risk
  - Population Risk
  - Generalization Gap
  - Theoretical Scaling Laws
  - Other
- Expressive Power
- Implicit Bias
- Other

Examples for constrained target search:

- `generalization analysis of A` -> search only generalization families
- `convergence analysis of A` -> search only optimization / convergence
- `implicit bias of A` -> search only implicit bias

`Other` is optional. Use a family's `Other` bucket only when `$ARGUMENT` or early retrieval signals point to a repeated theorem property that belongs to that family but is not well captured by its listed sub-targets. Use top-level `Other` only when the theorem target itself does not naturally belong to `Optimization`, `Generalization`, `Expressive Power`, or `Implicit Bias`. In either case, name the property or family explicitly and use the same name consistently within the run.

## Writing Rules for `LITERATURE_SURVEY.md`

Use [../_shared/templates/literature-survey.md](../_shared/templates/literature-survey.md) as the binding structure for top-level sections, required entry fields, and gap blocks. For `## 2. foundation theory`, follow this skill's organization rules when lightweight foundation search is used.

Write the survey with these top-level sections:

- `## 1. direct theory`
- `## 2. foundation theory`
- `## 3. empirical practice`
- `## 4. gap and open problem`

Rules:

- `Direct Theory` stays first
- `Foundation Theory` follows the actual foundation-search path used in the run
  - if the original `$ARGUMENT` is multi-object, organize under `Component Theory`; if a leaf component used canonical testbeds, summarize those papers under the relevant component and sub-target branch and mark them as `testbed-level foundation`
  - if the original `$ARGUMENT` is single-object, use `Testbed Theory`; lightweight foundation-pass testbeds may appear here even when `Direct Theory` is nonzero
- if no foundation search was needed in the run, write `No foundation fallback was needed in this run.` in `## 2. foundation theory`
- include only relevant analysis-target families and sub-targets
- omit unrelated or empty theory buckets
- organize `Testbed Theory` by canonical testbeds, not by the named object
- do not place object-conditioned foundations under `Testbed Theory`
- preserve source-relevant constraints in paper and gap prose when they matter downstream, especially in `Relation to research scope` and `## 4. gap and open problem`
- keep entries concise but information-dense

For each theory paper entry, fill:

- `Identifier`
- `Setting`
- `Goal`
- `Main result`
- `Key proof techniques`
- `Limitations`
- `Relation to research scope`

For every paper entry, fill `Identifier` with one durable reference.

- prefer `arXiv:<id>` when available
- otherwise use `DOI:<...>`
- otherwise use one canonical URL

Begin `Relation to research scope` with one of these labels, then add a brief source-direction qualifier when extracted constraints matter downstream:

- direct prior work
- component-level foundation
- testbed-level foundation
- empirical context

## Local-Paper Handling

Before broad web search, inspect local paper libraries if they exist.

- check `papers/` first, then `literature/`
- scan up to `MAX_LOCAL_PAPERS`
- read up to `LOCAL_PDF_READ_PAGES` pages per local PDF for initial triage
- before rejecting a local paper as non-qualifying, inspect theorem-statement pages when they are easy to locate
- prioritize filename and first-page relevance to `$ARGUMENT`
- use local papers as the starting point and external search to fill missing coverage

## Honesty Rules

- be honest about limitations, missing coverage, and ambiguity
- distinguish direct evidence, adjacent evidence, and empirical support
- record absent areas and do not overclaim when the survey is inconclusive

## Final Self-Check

- on a literature-survey-checkpoint rerun, the revised `LITERATURE_SURVEY.md` must address the checkpoint feedback and must not keep criticized coverage, gap statements, or omissions unchanged unless stronger literature-survey rules in this skill require doing so

## References

- Shared output template: [../_shared/templates/literature-survey.md](../_shared/templates/literature-survey.md)
- Public controller contract: [../ml-theory-research-agent/SKILL.md](../ml-theory-research-agent/SKILL.md)

Detailed rubrics for later stages remain outside this skill.
