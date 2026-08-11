# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Several theorem-style appendix interfaces fail a standalone quantifier attack.  Theorem `thm:step-001-blm-selection` uses `\alpha` in its witness premise before quantifying `\alpha`.  Proposition `prop:step-001-binary-private-learner` uses `C`, `X`, `n_C`, `A_C^\pm`, `\varepsilon_0`, and `\delta_C` without binding them in the statement, and Proposition `prop:step-002-exact-padding` likewise leaves `C`, `X`, and `\varepsilon_0` free.  Proposition `prop:step-003-exact-privacy-schedule` fixes arbitrary `q,L` and then attaches the learner for every finite `C` to "precisely this parameter" without requiring `q=q(C)`, `L=\log|C|`, or the same fixed `\varepsilon_0`.  Later statements import hypotheses through "the conditions above," unnamed counting/size conditions, or the literal display `(A.57)`.  Removing the surrounding subsection prose therefore leaves ill-scoped claims that do not expose the accepted step interfaces.  The accepted step artifacts contain the missing bindings and mappings, so this is an assembly break rather than a step-level counterexample.

2. The public Bun--Livni--Moran restatement strengthens the cited source's absolute `O(\cdot)` sample statement to one exact universal-constant inequality for all `\alpha,\beta,\varepsilon,\delta\in(0,1)`, while its source justification only explains absorption of additive integer costs in the consumed regime `\beta_0=1/8` (and the construction here also has `\delta_C\leq e^{-2}`).  In particular, with `\eta=1` and `\beta,\delta` tending to one, the displayed logarithmic right-hand side can be arbitrarily small, so the source's asymptotic notation does not by itself justify the paper's no-additive-term inequality uniformly over the stated parameter cube.  The downstream application at the fixed parameters is supported; the paper-facing theorem must be specialized to that regime or restated with a source-faithful bound.

3. The appendix has 129 manually assigned equation tags `\tag{A.1}` through `\tag{A.129}` and no equation `\label`/`\eqref` pairs.  The proof instead depends on raw strings such as `(A.12)`, `(A.57)`, and `(A.111)--(A.115)`, with `(A.57)` even serving as a theorem-facing hypothesis.  These are not resolvable mathematical dependencies: inserting, deleting, or renumbering a display can silently leave a proof or theorem statement pointing to the wrong formula while LaTeX still compiles.  All theorem-critical equation uses must be converted to stable labeled references (or replaced by named self-contained results).

4. The exact-schedule branch of Proposition `prop:step-006-omega-contradiction` uses an undefined tail index.  The proof defines `\kappa_{\mathrm{priv}}` only in the comparison-schedule branch, but its common choice `(A.129)` takes the maximum over `\kappa_{\mathrm{priv}}` in both branches.  Thus the displayed witness index is not defined in one of the proposition's two claimed cases.  Defining a baseline index in the exact branch or splitting the two choices repairs the argument without changing the accepted step.

## Nonblocking Concerns

1. The frozen bundle compilation reports a 4.2525pt overfull box near appendix line 717.  This is typographic, although it makes the assembly report's claim of compilation "without warnings" inaccurate.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The final no-eventual-linear-lower-bound proposition has the undefined exact-branch tail index in Blocking Issue 4.  After giving that branch a defined index, the contradiction from `N_\kappa/L_\kappa\to0` is valid and matches the conditional main theorem.
- Standalone theorem attack: The main theorem itself binds the sequence, privacy, rate, probability, and hidden-constant interfaces correctly.  Several appendix theorem-style dependencies do not survive removal from their surrounding prose, as detailed in Blocking Issues 1--2.
- Weakest step-level claim: `step_001`, because it carries the sole cited conversion, distribution-uniform construction, arbitrary-output codomain, and two-term quantitative bound.  The archived v3 source supports the consumed fixed-parameter wrapper, and no counterexample was found to the accepted step claim; the defect is the broader public restatement.
- Candidate counterexamples or stress cases: The proof was tested at `q=1`, `d=0`, `L=0`, bounded, constant, and oscillatory `q_\kappa`, fixed real `\rho>0`, `\varepsilon_0` approaching either endpoint of `(0,1)`, exact ceilings, ignored-record padding, and arbitrary-output learners.  These cases do not break the accepted derivations.  The near-one `\beta,\delta` stress exposes the unsupported scope of the public cited theorem, and the exact-schedule case exposes the undefined index.
- Explicit-rate stress cases: Both source-bound terms, all confidence logarithms, the dependence of `K_a`, the exact ceiling, the cardinality correction, the bounded-`q_\kappa` branch, and every-fixed-`\rho` privacy limit remain explicit.  The derivations of `q_\kappa=L_\kappa^{o(1)}`, `N_\kappa=o(L_\kappa)`, and `\delta_\kappa N_\kappa^\rho\to0` survive the tested boundary regimes; no hidden rate dependency or invalid term absorption was found.
- Appendix self-contained attack surface: The hard-coded equation chain and the ill-scoped theorem statements are acceptance-blocking even though the underlying accepted local units are present in full.  The appendix must be repaired so each public result binds its own objects and every mathematical dependency is label-driven.
- Scope or mode upgrade attacks: No unsupported upgrade was found in the distribution-free quantifier order, joint sample/learner probability, arbitrary improper output, symmetric replacement privacy, sequence-wise limits, privacy relaxation direction, or final `o(L_\kappa)` versus eventual `\Omega(L_\kappa)` implication.
- Remaining risk: Assembly repair should preserve the accepted six-step meanings, specialize or qualify the BLM public wrapper rather than inventing a stronger source claim, restore every omitted parameter mapping, replace the equation-number literals consistently, and make both final contradiction branches syntactically defined.  No independent mathematical break was found beneath those assembly defects.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
