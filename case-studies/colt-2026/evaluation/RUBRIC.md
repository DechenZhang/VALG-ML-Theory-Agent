# COLT 2026 Subproblem Evaluation Rubrics

Version 2, refined 2026-08-08. This version replaces integer-only scoring,
blanket source/search caps, and unqualified co-ranking with component scores,
weakest-link soundness profiles, explicit novelty confidence, and fixed
tie-breakers.

## Purpose and scope

Use this document to evaluate each copied theory result under
`../*/sp-*/results/perspective_*/idea_*/theory/`. It separates three
questions that should not be averaged together:

- **Progress (`P0`--`P10`):** How much of the original COLT subproblem does
  the strongest established result settle?
- **Mathematical soundness (`S0`--`S10`):** Does the submitted proof establish
  its stated theorem?
- **Technical novelty (`N0`--`N10`):** How original and proof-critical is the
  method, relative to verified prior work?

Report the tuple `(P, S, N)` before any weighted ranking. A compelling new idea
does not compensate for an unsupported theorem, and a correct theorem can make
substantial progress while using standard techniques. Scores lie in `[0,10]`
and are assigned in increments of `0.25`. The integer anchors below retain
their semantic meaning; quarter points locate a result between adjacent
anchors and prevent unrelated limitations from collapsing distinct results
onto the same integer.

Each axis also receives an evidence grade:

| Grade | Meaning |
| --- | --- |
| `A` | All decision-critical primary evidence and calculations were checked. |
| `B` | The central evidence was checked; one bounded verification or coverage gap remains. |
| `C` | Multiple or central evidence gaps remain; the numerical score is a conservative evidence-supported credit. |
| `D` | Evidence is insufficient to assign a defensible point score; report `NE` on that axis. |

The grade is not multiplied into the score. It records epistemic confidence;
the score records the contribution supported by the evidence actually checked.
An unavailable source, failed compiler, or failed literature search must be
localized to the component it prevents the evaluator from crediting. It must
not automatically force every result to the same ceiling.

The authoritative evidence for a branch is:

| Evidence | Role |
| --- | --- |
| Root-level parent problem `../<problem>/source.pdf` | Primary authority for the open problem's exact wording, definitions, quantifiers, context, known baselines, counterexamples, and author-endorsed variants. A `paper.pdf` inside a branch or `theory/` directory is not source authority. |
| `RESEARCH_BRIEF.md` | Secondary structured extraction used to locate and decompose the subproblem; it cannot override or silently strengthen the paper PDF. |
| `theory/setting.md` | Claimed setting, assumptions, goal, and self-reported scope changes. |
| `theory/latex_template/*.tex` | Public theorem and proof evidence. This is the primary proof artifact. |
| `theory/latex_template/reference.bib` and cited sources | Verification of external results and novelty claims. |
| Sibling `LITERATURE_SURVEY.md` and branch `idea.md` | Literature leads, claimed lineage, and mechanism inventory; all novelty claims still require primary-source checks. |
| `theory/proof_review.md` and non-copied workflow artifacts | Navigation and issue discovery only; never proof evidence or authority to accept a theorem. |

An internal `ACCEPTED`, `PASS`, or aggregate score is not a substitute for an
independent evaluation under this rubric.

## Evaluation protocol

Perform the following in order for every branch.

1. Locate the root-level parent problem PDF at
   `../<problem>/source.pdf`, outside all `sp-*`, `results/`,
   and `theory/` directories. Read the open-problem statement and its
   surrounding definitions, preceding results, counterexamples, and
   discussion. Extract the original target contract before reading the
   solution's claimed contribution label, and cite the PDF page/section.
2. Cross-check the extraction against `RESEARCH_BRIEF.md`. Use the brief as an
   index and decomposition aid, not as sole evidence for what the authors
   asked. If the brief and PDF differ, the PDF controls; preserve genuine paper
   ambiguity rather than resolving it by fiat.
3. Extract the exact public theorem, its primitive assumptions, its quantifiers,
   and its claimed progress type from the copied bundle.
4. Audit soundness of the advertised public theorem. If it is not established,
   keep its `S` score and identify the strongest separately complete
   proposition, if any, with a separate local soundness assessment.
5. Score progress only for that strongest established proposition or theorem.
   Do not replace the headline theorem's `S` score with a minor lemma's score,
   and do not credit a conjectural implication merely because it would be
   important if true.
6. Compare the proof mechanism with verified prior art and score technical
   novelty. Treat the existing survey as a seed, run a new search whenever
   needed, and record the literature cutoff date and sources actually checked.

For a partial, conditional, obstruction, or diagnostic result, soundness is
measured against its explicitly stated reduced goal. Progress is then measured
against the original subproblem. A correct conditional theorem can therefore
receive high `S` and modest `P` at the same time.

## Target and claim sheets

Create these two short sheets before assigning any score.

### Original target contract

| Field | Record from parent `source.pdf`, cross-checked against `RESEARCH_BRIEF.md` |
| --- | --- |
| Source locator | PDF path, page, section, displayed open-problem number, and relevant nearby theorem/counterexample locators. |
| Exact endpoint | The affirmative/negative/characterization question to be answered. |
| Logical polarity | Universal affirmative, existential witness, universal implication/counterexample, two-sided characterization, or impossibility statement; record what logically suffices to answer it. |
| Mathematical object | Model, data class, and relevant objects. |
| Protocol | Algorithm, privacy/communication model, initialization, or interaction restriction. |
| Quantifiers and scope | Universal classes, parameter ranges, probability space, and asymptotic regime. |
| Required conclusion | Metric, rate, lower bound, recovery guarantee, or characterization requirement. |
| Mandatory dependence | All named parameters, probability/confidence, runtime, horizon, and norm/mode requirements. |
| Accepted partial routes | Paper-endorsed special cases, relaxations, obstructions, or diagnostics. |
| Forbidden shortcuts | Sibling targets, altered protocol, hidden conclusion-like assumptions, easy regimes, and other exclusions. |
| Baselines and open gap | Best paper-stated result and the precise unresolved term, regime, or direction. |

The paper PDF is authoritative. A restriction, success criterion, or forbidden
shortcut appearing only in `RESEARCH_BRIEF.md` must be labeled as a brief-level
evaluation convention, not attributed to the paper. When the paper deliberately
leaves an interpretation ambiguous, record the plausible readings and state
whether the progress score changes under them.

Split the contract into atomic clauses. For example, a lower-bound question can
require the model, algorithm, rank range, limiting behavior, probability
quantifier, and positive-objective conclusion simultaneously. A result that
proves only one of those clauses is not a full solution.

### Solution claim sheet

| Field | Record from the public bundle |
| --- | --- |
| Exact theorem | Quote the theorem label and statement from `3_main.tex`. |
| Outcome type | Affirmative, negative, characterization, special case, conditional theorem, obstruction, or diagnostic. |
| Added assumptions | List each assumption not present in the original contract and whether it is primitive, checkable, standard, or carries the central hard burden. |
| Scope delta | Changed object class, protocol, quantifiers, rate, probability mode, metric, or parameter regime. |
| Claimed mechanism | The genuinely new lemma, construction, reduction, or proof architecture. |
| Residual gap | The exact clause(s) of the paper-level target contract still open. |

Build a clause-by-clause comparison using `exact/stronger`, `partial`,
`restricted`, `conditional`, `missing`, or `contradictory`. Do not rely on the
branch's self-reported `full`, `material_partial`, or `conditional` label.

## Progress rubric: `P0`--`P10`

`P` measures progress toward the original paper-level target contract, using
only the portion that survives the soundness audit. It measures neither proof
polish nor technical originality.

| Score | Meaning |
| --- | --- |
| `P0` | No established original-problem progress: wrong/sibling target, parent-paper baseline restatement, tautology, or unsupported claim. |
| `P1` | Minimal progress: a correct but slight original-problem observation or clarification that does not close a material paper-level clause. |
| `P2` | Diagnostic progress: a rigorous toy example, a counterexample to an auxiliary claim or proposed route that does not logically refute the original endpoint, a failure diagnosis, or a reformulation that clarifies one issue but leaves the central route intact. |
| `P3` | Structural progress: a nontrivial lemma, reduction, bridge, identity, or obstruction to one specified route that could support future work. |
| `P4` | Limited partial progress: a valid target-facing theorem in a narrow class, isolated regime, or materially altered protocol. |
| `P5` | Meaningful partial progress: a substantive special case or conditional theorem, but with a central scope, assumption, protocol, or quantitative gap still open. |
| `P6` | Material partial progress: a broad paper-aligned slice, meaningful paper-endorsed relaxation, or quantitative improvement beyond the parent paper's stated baseline that materially closes its stated gap. |
| `P7` | Substantial progress: resolves a major subcase, one broad direction of a characterization, or a major technical barrier while leaving a clearly identified central gap. |
| `P8` | Major progress: reaches a paper-designated major milestone or establishes the central endpoint over broad scope with one substantial but non-defining component unresolved. |
| `P9` | Near resolution: matches the central endpoint and quantitative benchmark with only one localized, noncentral contract deviation; it does not assume the core open difficulty. |
| `P10` | Full resolution: exact affirmative, negative, or characterization answer satisfying every mandatory paper-level contract clause with no target-changing assumption. |

Compute progress from three nonoverlapping components, each in quarter-point
increments. Record the three entries as `P=(C,B,H)` so another evaluator can
reconstruct the total.

| Component | Max | Full-credit standard |
| --- | ---: | --- |
| Contract closure `C` | 4 | The result has the exact endpoint polarity, mathematical object, protocol, quantifiers, regimes, conclusion, and parameter dependence required by the parent PDF. Weight the parent contract's atomic clauses before reading the result; endpoint polarity and any defining protocol together receive at least half of these four points. |
| Advance over the paper baseline `B` | 3 | The theorem eliminates the precise gap left by the strongest baseline stated or cited in the parent paper. A clarification is normally `0.25-0.75`, a reusable structural bridge `0.75-1.50`, a meaningful restricted theorem `1.25-2.00`, and a paper-designated major milestone `2.25-2.75`. |
| Hard-burden discharge `H` | 3 | No added assumption, oracle, event, restriction, or missing direction carries the central open difficulty. Give `0` when the desired conclusion or its core unresolved bridge is assumed; `0.25-1.00` when most of the burden remains; `1.25-2.00` when the hard step is discharged on a material subclass or in one central direction; `2.25-2.75` when only a localized noncentral gap remains; and `3` for full discharge. |

Set `P_raw=C+B+H`, then apply the logical caps below. The reported score is
`P=min(P_raw, applicable caps)`. A cap is only a ceiling; it is not the score
itself. Two results subject to the same cap can therefore receive different
scores. Give a one-sentence reason for every component worth at least `0.25`.

### Progress caps and special rules

Apply the lowest numerical applicable cap, subject to the logical-polarity and
paper-endorsed exceptions below.

| Situation | Maximum `P` |
| --- | --- |
| Root-level parent `source.pdf` not directly checked and cited | Do not assign `P0-P10`; report `P-NE` (target not evaluated) |
| Primary result is a sibling or out-of-scope target with no proved transfer | Normally `P0`; `P2` only for a separately proved original-problem diagnostic or transferable lemma |
| Added assumption simply restates the desired conclusion | `P1` |
| Conditional reduction assumes a central unresolved property but derives a nontrivial consequence | `P3` |
| Non-endorsed change to a defining algorithm, privacy/interaction resource, or other protocol with no transfer | `P5` |
| Fixed tuple, toy family, or narrowed distribution that does not itself satisfy the original witness/counterexample quantifiers | `P4` |
| One broad direction of a requested necessary-and-sufficient characterization | `P7` |
| A central required quantifier, regime, rate, output metric, or probability guarantee required by the answer's logical polarity is missing | `P7` |
| Paper-endorsed relaxation or variant | Normally `P6-P7`; an explicitly paper-designated major milestone may reach `P8` |
| Non-resolving obstruction only to a narrow proposed proof route | `P3` |
| Broad non-resolving obstruction eliminating a natural route | `P7` |

Additional rules:

- A new condition can be genuine progress when identifying a usable condition
  is itself the paper's open question. It must be independently checkable,
  control all required parameters, and address the paper's counterexample or
  baseline.
- A conditional theorem is not automatically low value. Its score depends on
  whether its extra assumption is modest and informative or simply packages the
  original hard step.
- A natural independently checkable condition proved useful on a broad class
  may reach `P5-P7`; do not apply the central-unresolved-property cap merely
  because the theorem is conditional.
- Apply scope caps only when omitted coverage is required by the logical
  polarity of the answer. One valid class sequence can solve an existential
  construction question, and one valid counterexample family can refute a
  universal implication.
- A lower bound, counterexample, or impossibility theorem that logically
  negates the original endpoint is a resolution candidate, not a mere
  obstruction, and remains `P10`-eligible.
- Treat the PDF's own descriptions such as "major progress," "interesting
  special case," or "suffices to answer" as calibration evidence, not automatic
  scores. Verify that the submitted theorem actually matches the described
  scope and quantitative benchmark.
- Do not lower a score because a result violates a brief-only restriction that
  is unsupported by the paper PDF. Instead, report the difference between the
  paper-level score and any optional brief-level sensitivity score.
- Never call a special case, one-sided result, or paper-endorsed relaxation a full
  resolution merely because its internal branch reports `full`.
- For quantitative problems, compare requested and achieved rate, all logarithmic
  factors, probability mode, horizon, norm, and parameter dependence explicitly.

## Mathematical soundness rubric: `S0`--`S10`

`S` evaluates whether the public proof establishes the theorem it states. It
does not measure importance. A fully correct conditional theorem can score
`S9` or `S10`.

### Mandatory gate screen

Before assigning component points, test the following. A failed gate must be
reported with a file, theorem/equation, and the precise unsupported inference.

1. **Claim fidelity:** no target, metric, quantifier, probability, scope, or
   baseline-recovery drift between the proof and the explicitly stated reduced
   goal in the solution claim sheet. Drift from the original COLT target is
   scored under `P`, not `S`.
2. **Assumption provenance:** an unconditional theorem cannot assume a
   generated event, iterate property, basin/tube membership, stability,
   boundedness, recurrence, support property, or invariant that the proof must
   derive from primitive conditions.
3. **Noncircular mechanism:** a bootstrap, barrier, Lyapunov function, future
   step, or admissibility label is not a proof unless it has an independently
   available mechanism source and concrete control relation.
4. **Dependency and interface closure:** every theorem-critical intermediate
   claim has a legal producer, correct dependency direction, and a bridge from
   its produced object/control to the final consumed target.
5. **Citation validity:** each nontrivial cited result states the conclusion
   used, its objects and conventions are mapped correctly, and every hypothesis
   is discharged in the present setting.
6. **Quantitative and mode validity:** rates declare their dependence; term
   absorption has inequalities; probability, horizon, norm, and convergence
   modes are not upgraded without proof.
7. **Boundary stress:** allowed zero, singular, degenerate, exact/noiseless,
   stationary, adversarial-sign, and first-update cases do not invalidate the
   mechanism or leave an unchecked denominator/event.
8. **Public self-containment:** the public theorem and appendix contain the
   substantive derivations. They may not delegate proof authority to workflow
   files, internal reviewer verdicts, or unexplained constants.

Soundness uses the noncompensatory profile `(M,D,A)`:

- `M` is intrinsic mathematical validity of the public derivation, conditional
  only on the exact external statements it explicitly invokes;
- `D` is verification of theorem-critical external dependencies; and
- `A` is completeness of the independent audit.

The headline score used in ranking is

\[
S=\min\{M,D,A\}.
\]

Do not average these entries: a polished local derivation cannot compensate
for a false or unverifiable premise, and an exhaustive audit cannot repair a
known mathematical gap. The profile prevents the same headline score from
being mistaken for the same kind of weakness.

### Intrinsic validity `M`

Start at `M9` for a complete public theorem-level derivation with no known
defect. `M10` additionally requires independent end-to-end reproduction of the
decisive calculations and adversarial cases. Concrete falsification gives
`M0`. Otherwise classify every blocking defect by the shallowest mathematical
repair it needs:

- a theorem-contract or idea defect requiring changed primitive assumptions,
  algorithm/model/procedure, theorem scope/mode/metric, exposed dependence,
  success criterion, or conclusion is capped at `M2.50`;
- a proof-architecture, dependency, mechanism-source, or exported-interface
  defect repairable under the same theorem contract is capped at `M4.50`;
- a blocking lemma/step or assembly derivation defect under an unchanged proof
  architecture is capped at `M6.50`; and
- only a proof with no known blocking mathematical issue can score above
  `M6.50`.

An invalid citation is classified by the repair depth needed to replace or
discharge it under `M`. Mere source unavailability is an evidence limitation,
not by itself a discovered defect in the local derivation; score it under `D`.

### Dependency verification `D`

| Score | Evidence for every theorem-critical external interface |
| ---: | --- |
| `D10` | The proof is self-contained, or every primary statement and proof was inspected and its hypotheses and object mapping were checked. |
| `D9` | The exact primary statement was inspected and fully mapped; only proof-level source inspection is absent. |
| `D8` | The primary theorem is located and substantively matches, with one minor version, convention, or boundary uncertainty. |
| `D7` | A reliable exact secondary restatement is available and mapped, but the primary statement is not checked. |
| `D6` | A precise identifier and detailed reproduced statement/object map are public, but a recent or specialized theorem-critical primary source is unavailable. |
| `D4-D5` | The source is identifiable, but its exact consumed statement, conventions, or hypotheses are only partly recoverable. |
| `D2-D3` | Source inspection shows a major mismatch or does not supply the consumed conclusion. |
| `D0-D1` | The cited result contradicts the use, is nonexistent, or leaves no coherent dependency claim. |

Use quarter points only when the evidence genuinely lies between anchors.
Independent unavailable sources are assessed jointly at the weakest decisive
interface, not averaged. Standard results independently reproved in the public
appendix do not lower `D` merely because a citation is present.

### Audit completeness `A`

| Score | Audit coverage |
| ---: | --- |
| `A10` | Independent end-to-end reconstruction plus adversarial stress testing of every decisive calculation, interface, and boundary mode. |
| `A9` | Exhaustive theorem-critical reading, complete dependency map, and reproduction of the central calculations; only noncritical routine detail is sampled. |
| `A8` | Every major interface and conclusion chain is checked, but dense subordinate calculations or lemma families are sampled. |
| `A7` | Representative end-to-end audit of the principal chain with named unchecked obligation classes. |
| `A6` | Limited sampling of several critical steps without end-to-end coverage. |
| `A4-A5` | Spot checks only; substantial theorem-critical regions remain unread. |
| `A1-A3` | Claim-level inspection without a meaningful proof audit. |
| `A-NE` | No public proof or no meaningful audit evidence. |

Uninspected obligations earn no audit credit merely because no counterexample
was found. Do not infer validity from proof length, and do not infer invalidity
from the practical need to sample a long appendix. Cosmetic or compilation
defects do not lower `M`, `D`, or `A` unless they obscure or replace proof
content; report them under artifact compliance.

| Score band | Interpretation |
| --- | --- |
| `S0` | Concrete counterexample, contradiction, or no coherent proof claim. |
| `S1-S2` | Central theorem is unsupported, circular, or materially mis-stated. |
| `S3-S4` | Major bridge, dependency, citation, or quantitative gap; not theorem-ready. |
| `S5-S6` | Either a substantial localizable repair is required or a precisely identified theorem-critical dependency remains below primary-verification level; inspect `(M,D,A)` to distinguish them. |
| `S7-S8` | No known theorem-contract blocker, but dependency verification, audit coverage, or minor nonblocking mathematics remains incomplete. |
| `S9` | Complete theorem-level proof with all material dependencies and audit obligations verified. |
| `S10` | Exceptional certification: `S9` plus independent end-to-end reproduction and adversarial testing with no material vulnerability. |

### Required soundness checks

At minimum, inspect:

- the exact main theorem and every named assumption;
- all theorem-critical local propositions and their use in final assembly;
- every external theorem, standard fact, or named inequality doing nontrivial
  work;
- rate specialization, term absorption, union/conditioning, and privacy or
  probability conversion steps;
- source/target object mappings, especially for transformed, population,
  baseline, or surrogate objects;
- recursive, all-time, uniform, and limiting claims for accumulation and
  noncircularity; and
- first-transition, degenerate, and zero-defect cases when the mechanism could
  vanish.

`S9-S10` requires all three profile entries to reach that level. A
representative audit can coexist with `M9` but keeps `A` and therefore the
headline `S` below `9`. Likewise, an unavailable exact critical citation can
coexist with `M9` but keeps `D` and `S` at the supported dependency level.

For every material issue, record: claimed inference, allowed inputs, exact
location, verdict (`proved`, `conditional`, `unsupported`, or `contradicted`),
and the shallowest repair depth (`assembly`, `lemma/step`, `proof architecture`,
or `theorem contract`).

## Technical novelty rubric: `N0`--`N10`

`N` measures novelty of the proof method, not merely novelty of the final
statement. A novel theorem proved by a direct standard application can have
high progress and low technical novelty. Conversely, a new method that proves
only a partial theorem can have high novelty.

### Evidence gate

Build a novelty matrix against the original problem paper and the strongest
relevant prior results available at the recorded evaluation date.

| New component | Closest verified precedent | Exact difference | Why the difference is nonroutine | Where it is proved |
| --- | --- | --- | --- | --- |

`LITERATURE_SURVEY.md` is a nonbinding seed list, not the literature frontier
and not adequate novelty evidence by itself. The evaluator may and should add
sources that are absent from it. Run a fresh search whenever the survey is
stale, lacks a direct same-target or same-mechanism comparator, relies mainly on
foundation/empirical papers, omits obvious aliases, or cannot substantiate the
claimed novelty level. A nonprovisional `N5` or higher requires a fresh
as-of-date search and at least one inspected same-mechanism primary comparator,
even when the existing survey appears adequate.

New searches may use scholarly indexes, preprint servers, author pages, citation
graphs, and references discovered during review. Read the primary theorem
statements and enough of their proofs to distinguish a new mechanism from a
rephrased application. Add newly found sources to the novelty dossier; do not
silently retrofit or overwrite the branch's historical survey. If no verified
nearest-neighbor comparison is supplied after search, novelty is provisional
and assigned the confidence level below. A search that finds no
closer work is evidence with stated coverage limits, not proof of novelty.

| Literature confidence `C_N` | Evidence available |
| ---: | --- |
| `1.00` | Reproducible current multi-index search, backward/forward citation audit, theorem-and-proof inspection of the closest theorem and method comparators, and a missed-alias audit. |
| `.75` | Current search and primary theorem inspection identify plausible closest comparators, but one proof-level or citation-chain check remains. |
| `.50` | The closest primary theorem and relevant proof mechanism were inspected, without a fresh missed-paper audit. |
| `.25` | The original-problem baseline was checked, but same-mechanism comparison relies mainly on local citation/survey leads because current search was unavailable or incomplete. |
| `0` | No identifiable comparator or only unsupported novelty assertions; report `N-NE`, not zero. |

`C_N` is epistemic and is not multiplied into intrinsic technical novelty.
Failed network access therefore neither forces every result to `N4` nor
justifies high confidence. Score `N` from the best inspected comparison,
label every result with `C_N<.75` provisional, and state which missing search
could raise or lower it. A score at `N5+` with `C_N<.75` is an informed
technical assessment, not a verified priority claim.

For any score of `N5` or above, require a short novelty dossier containing the
following. When search access failed, record the attempted queries/failure and
leave the missing current-search fields explicit rather than treating the
dossier as complete:

1. an as-of date and reproducible search log, including aliases, theorem terms,
   backward/forward citations from at least two seed papers, and a missed-paper
   audit;
2. the baseline stated in the original paper, the closest theorem by conclusion
   and assumptions, the closest method/proof-mechanism result, and (when
   relevant) the closest result for the restricted class;
3. a durable identifier, version/date, theorem or page locator, and evidence
   tier for every comparator: `E3` (theorem and proof inspected), `E2`
   (theorem statement inspected), `E1` (abstract or secondary source), or `E0`
   (unverified); and
4. a delta table covering object/model, protocol, assumptions, quantifiers,
   rate/dependence, probability/horizon, conclusion, and proof mechanism, plus
   an inventory of inherited versus new components.

### Component score

| Component | Max | Full-credit standard |
| --- | ---: | --- |
| Prior-art delta | 2 | Closest prior theorem and proof mechanism are identified; the difference is exact and material. |
| Core mechanism originality | 3 | A new construction, invariant, reduction, lemma architecture, or proof tool does work not supplied by a standard theorem. |
| Nonroutine synthesis or barrier overcome | 2 | The method resolves a recognized technical obstruction rather than merely combining compatible known ingredients. |
| Proof-critical leverage | 2 | Removing the new component destroys a key implication; it is not decorative notation, an assumption, or a repackaging. |
| Transferability | 1 | The mechanism plausibly applies beyond the one engineered instance, or it exposes a reusable principle with stated limits. |

Score components in increments of `0.25`. Their sum is `N`, subject to the
substantive caps below. Also report the component
vector `(delta, mechanism, barrier, leverage, transfer)` so close scores are
auditable.

| Situation | Maximum `N` |
| --- | --- |
| Restatement of known work, notation change, or parameter substitution | `N1` |
| Direct application of a standard theorem or routine calculation | `N2` |
| New assumption, definition, or specially chosen example without a new proof mechanism | `N3` |
| Routine combination of known tools with standard compatibility checks | `N4` |
| Mechanism is invalid, unused, or supports only an unsound main theorem | `N4`; score only any separately valid insight |

If the advertised mechanism is mathematically unsound, report at most `N4` as
validated technical novelty and, if useful, a separate unvalidated conceptual
novelty note. A narrower condition earns novelty only when it has a nonempty,
independently checkable family beyond the known baseline and the proof uses it
for a genuinely new purpose. Do not double-count one idea as both algorithmic
and proof-mechanism novelty. When two branches in this corpus are equivalent or
one subsumes the other, report external novelty for each but flag the latter's
portfolio-marginal novelty as low.

| Score band | Interpretation |
| --- | --- |
| `N0-N2` | No meaningful technical novelty or only routine execution. |
| `N3-N4` | Nontrivial adaptation, careful specialization, or useful synthesis. |
| `N5-N6` | Substantial new lemma, bridge, or method resolving a real technical obstruction. |
| `N7-N8` | Clearly original, proof-critical, and reusable technique. |
| `N9` | Major new technical framework likely to change how the area attacks related problems. |
| `N10` | Rare, field-level methodological advance with independently demonstrated breadth. |

Do not award novelty merely for long calculations, a complicated statement,
an unusual hypothesis, or an internally generated literature citation. Novel
assumptions receive technical-novelty credit only when a new valid mechanism
uses them in a nontrivial way and their scope is honestly delimited.

## Reporting and decision rules

Use this compact record for every evaluated branch:

```markdown
### <problem>/<perspective>/<idea>

Original target:
Advertised public theorem:
Strongest established claim:
Outcome type: full | material partial | conditional | obstruction | diagnostic

Progress: P?/P10 (or P-NE if parent PDF was not checked)
- Paper PDF locator and extracted contract:
- Contract deltas:
- Component vector `P=(C,B,H)` for contract closure, baseline advance, and hard-burden discharge:
- Hard cap, if any:
- Remaining paper-level gap:
- Progress evidence grade:

Soundness: S?/S10
- Weakest-link profile `(M,D,A)` and headline `S=min(M,D,A)`:
- Gate results:
- Dependency-verification basis for each theorem-critical external interface:
- Material proof issues, with file/theorem references:
- Soundness of a separately salvaged subclaim, if any:
- Artifact compliance: pass | nonblocking defects | blocking self-containment defect
- Soundness evidence grade:

Technical novelty: N?/N10
- Verified nearest prior work:
- New proof-critical mechanism:
- Component vector `(delta, mechanism, barrier, leverage, transfer)`:
- Novelty confidence and literature cutoff:

Bottom line:
```

Use these labels only after scoring:

In this table, the `S` threshold applies to the exact claim supporting `P`.
When that claim is a salvaged proposition rather than the advertised theorem,
state this explicitly and display both soundness scores. The label "Solves the
original subproblem" is available only to the advertised public theorem, not to
a reconstructed or salvaged claim.

| Label | Minimum condition |
| --- | --- |
| Target not evaluated | `P-NE` because the root-level parent PDF was not checked |
| Solves the original subproblem | `P10` and `S9` or `S10` |
| Contains a separately established full resolution | A salvaged public proposition has `P10` and local `S9+`; also report the advertised theorem's `S` score |
| Near-complete established progress | `P9` and `S8+` |
| Major established progress | `P8` and `S8+` |
| Substantial/material established progress | `P6-P7` and `S8+` |
| Established restricted/conditional progress | `P4-P5` and `S7+` |
| Established structural/diagnostic progress | `P2-P3` and `S7+` |
| Minimal established observation | `P1` and `S7+` |
| Provisional contribution | `S5-S6`, or novelty/progress based on a claim not yet theorem-ready |
| No established progress | `P0` after soundness audit |

Call a result a **technical breakthrough** only when `N7+` and `S8+`.
Do not downgrade a sound result solely because its technique is standard, and
do not call an unsound result a breakthrough merely because its idea appears
unusual.

### Within-subproblem ranking

For the requested portfolio ranking, use the unrounded quarter-point scores

\[
W=0.4P+0.4S+0.2N.
\]

Display `W` to two decimal places but rank on its exact value. Do not change an
axis score to manufacture a desired ordering. When exact weighted scores are
equal, apply these preregistered tie-breakers in order:

1. higher progress `P`;
2. higher soundness `S`;
3. higher technical novelty `N`;
4. stronger evidence grade on progress, then soundness, then novelty;
5. larger progress contract-closure component `C`;
6. larger soundness profile lexicographically by `(M,D,A)`;
7. larger novelty proof-critical-leverage component; and
8. if all preceding quantities agree, retain a substantive tie and use the
   perspective identifier only as display order, not as a scientific rank.

For each adjacent pair, include a rank-stability flag. Mark the order `robust`
when the score gap exceeds every identified one-step uncertainty on the
incompletely verified components; otherwise mark it `provisional/close` and
name the evidence that could reverse it. A deterministic tie-break creates an
order for reporting, but it does not turn a `0.05` difference or a low-evidence
novelty comparison into a meaningful scientific separation.

## Calibration rules for this case-study corpus

- A theorem satisfying every clause required by the endpoint's extracted
  logical polarity, including all required protocol, scope, and quantitative
  clauses, is `P10`-eligible, subject to its `S` score.
- A paper-endorsed relaxed complexity measure, a nontrivial Pfaffian subclass,
  or one half of a characterization can reach `P6-P7`, but it is not a full
  answer unless the parent paper explicitly defines that item as the endpoint.
  In particular, a Pfaffian condition is `P10`-eligible when the condition
  itself fulfills the normalization endpoint extracted from the PDF.
- A conditional theorem whose new hypothesis is essentially the original
  unresolved global-stability, convergence, or lower-bound claim is generally
  at most `P3`, even if the conditional deduction is fully sound. `P4-P7` is
  available only when the hypothesis is independently established on a
  material paper-aligned class and therefore no longer carries the central
  unresolved burden.
- A result for constrained ALS/GD, pure DP, proper learners, threshold-only
  queries, a fixed parameter tuple, or a narrow distribution must be scored
  against the corresponding protocol/scope cap unless it proves a transfer.
- For a necessary-and-sufficient question, a new sufficient condition can be
  `P6-P7` material progress when it is genuinely checkable and broad, but it does
  not settle necessity or the requested uniform rate.

### Concrete anchors already present in the case studies

These are calibration anchors, not pre-assigned final scores. The `S` audit
must still be completed before applying the corresponding progress label.

| Branch pattern | Expected progress treatment |
| --- | --- |
| Fully non-adaptive mean estimation retaining arbitrary measurable one-bit queries, all three `k` regimes, and the exact `r_k` dependence | `P10`-eligible if the public theorem and proof are sound; a localization assumption or omitted regime invokes the relevant cap. |
| SGD result with a probabilistic dimension measure, fixed-depth/robust-tube conditions, or an `S^{L}` bound instead of deterministic `dc(H) <= C T S` | Conditional/paper-endorsed partial, normally `P3-P7` depending on breadth and assumptions; use `P3` when a new condition carries the central burden. It is not a resolution of the deterministic implication. |
| Tensor lower bound for constrained `cALS`/`cGD` rather than the paper's ordinary ALS/GD dynamics | Protocol-restricted, normally capped at `P5` unless a transfer theorem is proved. |
| Polynomial root-hitting theorem giving a verifiable sufficient finiteness condition but no necessity or indexed uniform polynomial characterization | One-way material partial, normally capped at `P7`. |
| DP class-sequence consequence conditioned on a universal polynomial global-stability profile that carries the unresolved burden | Reduction/conditional progress, at most `P3`; do not treat the conditional consequence as the requested lower-bound resolution. |
| Tensor upper bound using a precise iterative method in the exact smoothed model with strictly subquadratic rank, required runtime/error, and paper-faithful probabilities | `P10`-eligible. Extra incoherence or balance restrictions may reach at most `P7` when they define a broad paper-aligned special case; an assumed convergence, basin, landing, or all-iterate trajectory property carrying the core difficulty invokes the `P3` central-property cap. |
| SQ-to-dimension implication or a counterexample family satisfying the full universal learner premise | `P10`-eligible when it proves or refutes the exact implication; polynomial, domain-dependent, or probabilistic-dimension relaxations are normally `P5-P7`. |
| Pfaffian normalization theorem with a natural checkable condition, uniform anti-concentration, polynomial conditioning control, handling of the paper's counterexamples, and internal polynomial recovery | `P10`-eligible when every listed requirement is verified as paper-level. Do not penalize the normalization for appearing as a hypothesis, because finding such a condition is the requested endpoint; score any brief-only strengthening separately. |
| Approximate-DP characterization with uniform matching upper/lower bounds for all classes | `P10`-eligible; a generic `poly(VC, log* LD)` or `poly(VC, log LD)` milestone explicitly named in the paper is `P8`-eligible. |
| One finite-class sequence satisfying every paper-stated item in the existential DP construction question | `P10`-eligible as an affirmative witness; a negative answer requires a universal impossibility theorem. The fixed-family cap does not apply to a witness satisfying the original existential quantifiers. |

For tensor lower bounds, report both permissive and conjunctive readings of the
paper's ALS/GD wording when that ambiguity changes `P`. For tensor upper bounds,
likewise report arbitrary-base and well-conditioned-base readings when both are
supported by the paper and lead to different progress scores.
