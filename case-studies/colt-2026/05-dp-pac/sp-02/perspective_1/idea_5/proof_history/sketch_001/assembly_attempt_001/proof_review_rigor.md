# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Several public theorem-style statements in `latex_template/5_appendix.tex` are not self-contained and do not preserve the accepted quantifier interfaces. Theorem `thm:step-001-blm-selection` uses `\alpha` in the witness premise before quantifying it. Proposition `prop:step-001-binary-private-learner` uses free `C`, `X`, `n_C`, `A_C^\pm`, and `\varepsilon_0`; Proposition `prop:step-002-exact-padding` similarly uses free `C`, `X`, and `\varepsilon_0`. Proposition `prop:step-003-exact-privacy-schedule` first fixes arbitrary `q,L` and then attaches the learner for every finite `C` to "precisely this parameter" without stating `q=q(C)`, `L=\log|C|`, nonempty finite-class scope, and the fixed `\varepsilon_0`. Proposition `prop:step-003-bounded-q-activation` omits the fixed `a,b` scope, while Lemma `lem:step-004-iterated-log-subpower` imports its hypotheses only through "the conditions above" and later results import the superpolynomial-separation hypothesis through the literal display `(A.57)`. The accepted step artifacts contain the missing quantifiers and mappings, so this is an assembly translation defect, but the public statements must expose them before their proofs.
2. The appendix's theorem-critical equation dependencies are manually tagged and cited by literal text rather than by stable `\label`/`\eqref` pairs. In particular, `(A.57)` is used as a theorem-facing hypothesis in Propositions `prop:step-004-q-subpower` and `prop:step-006-sequence-learners`; later rate and contradiction arguments similarly cite hard-coded equation numbers. These dependencies are mathematically present, but the public proof does not meet the required reference discipline until the tags and uses are converted to resolvable equation references.
3. In the proof of Proposition `prop:step-006-omega-contradiction`, `\kappa_{\mathrm{priv}}` is defined only in the comparison-schedule branch but is included in the maximum `(A.129)` in the exact-schedule branch as well. The intended case split is immediate, but the displayed choice is literally undefined in one of the two claimed cases and must be repaired by splitting the branches or defining a baseline index for the exact schedule.

## Nonblocking Concerns

1. The frozen compilation has a 4.2525pt overfull box at `latex_template/5_appendix.tex:717`. This is typographic and does not affect the proof.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: PASS modulo Issues 1--3. The exact binary recoding, distribution-free BLM wrapper, sample domination and padding, exact privacy logarithm, superpolynomial-to-subpower implications, every-fixed-`\rho` privacy negligibility, privacy monotonicity, and arbitrary-tail lower-bound contradiction are substantively valid. The cited BLM theorem was independently checked against source Theorem 17, including arbitrary output, both sample-bound terms, and distribution-independent construction. Frozen SHA-256 values are `3b59abab9f73860fea15b4668b5df7f5f843918ff1eb5619f67ac1cf48111755` for `assembly_report.md` and `136730f43f3aabab202b2a543c8123565b35a47f287bafbab6a4445f1bd7340a` for `5_appendix.tex`.
- Statement self-containedness: BLOCKING under Issue 1. Conditions supplied only by preceding prose, prior proposition outputs, or hard-coded displays must be moved into the theorem-style statements.
- Main theorem constants and notation: PASS. `K_a`, the exact sample size, exact privacy schedule, exposed variables, fixed quantities, and allowed hidden dependence are stated consistently with the accepted steps.
- Derivation-over-notation: PASS. Definitions, substitutions, ceiling bounds, termwise dominations, and asymptotic thresholds remain visible rather than being replaced by helper notation or prose-only absorption.
- Explicit-rate contract: PASS. The exact rate is public, every exposed dependence and probability/privacy mode is stated, the `\rho=3` specialization is derived explicitly, and no separate simplified-rate bridge is needed.
- Appendix full derivations: PASS. Direct comparison with all six accepted step proofs found the proof-obligation content preserved, including the cited-result mapping and discharge, all inequality chains, exact padding argument, subpower exponent allocation, uniform exponential-polynomial bound, and final target assembly.
- Quantifiers and constants: BLOCKING under Issues 1 and 3 at the public-statement/proof-text level. The corresponding accepted source-step quantifiers and constant dependencies are correct and can be restored without step revision.
- Probability or convergence modes: PASS. PAC probability is joint over sample and learner randomness, privacy is pointwise in adjacent datasets and measurable events, all limits are sequence-wise, and no pointwise-to-uniform or conditional-to-unconditional upgrade occurs.
- Boundary cases: PASS apart from the undefined exact-branch tail index in Issue 3. The proof handles `q=1`, `d=0`, `L=0`, bounded or oscillatory `q_\kappa`, exact ceiling effects, and every fixed real `\rho>0`.
- Hidden subclaims: PASS. No new assembly-only lemma, generated invariant, event, recurrence, stability trajectory, or unsupported mode conversion was introduced; the blockers are public-interface and literal proof-definition defects.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
