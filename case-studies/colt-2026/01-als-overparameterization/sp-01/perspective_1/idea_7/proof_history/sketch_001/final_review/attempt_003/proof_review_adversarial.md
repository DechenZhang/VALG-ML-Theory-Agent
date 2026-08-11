# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Two missing backslashes corrupt public mathematical interfaces.** In `latex_template/5_appendix.tex`, the Step 008 input display contains `P_M=G_MA_M,qquad` and the new complete frozen-reserve proposition contains `\widetilde X_M=G_M\Xi_ML_M^0,qquad`. In TeX, each bare `qquad` is rendered as a product/string of mathematical letters rather than spacing, introducing unexplained symbols into theorem-critical displays. The latter occurrence is inside Proposition~`prop:complete-frozen-reserve-interface`, which is the repaired noncircular producer consumed by Step 010 and final theorem composition. Both must be `,\qquad` (or ordinary punctuation) before the bundle is paper-ready.
2. **The public target-window interfaces are defined only inside a prior proof body and are therefore not exported to the propositions that consume them.** `W_{ij}` and `C_{ij}` are introduced after the scalar calculation inside the `proof` environment of Lemma~`lem:step-002-target-mass`; neither appears in that lemma's statement. Proposition~`prop:step-002-conditional-competitors` then states its hypotheses and conclusion in terms of those two objects, and Proposition~`prop:step-002-joint-window` defines `E_{{\rm win},ij}=W_{ij}\cap C_{ij}`. Removing the preceding proof body leaves both theorem-style propositions with undefined event interfaces. Move the two definitions to section-level mathematical setup before the lemma/propositions, or define them explicitly in the first consuming proposition; no accepted step claim needs to change.

## Nonblocking Concerns

1. Lines defining the Step 004 chart use a single trailing backslash after two comma-separated conditions. TeX treats this as control-space rather than the apparent intended line break; it does not alter the set mathematically, but replacing it with ordinary punctuation or `\\` would remove ambiguity.
2. Attempt 3 still has no TeX-engine result because Tectonic fails before processing the source. Static balance and reference checks cannot replace a clean compilation after the two source repairs.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the event-to-coverage-to-landing composition. Its mathematical producer chain is now acyclic, but the window events at the start of that chain are not exported by a theorem-facing definition and the consolidated landing producer contains malformed public math.
- Standalone theorem attack: the main theorem, setup, quotient metric, observable graph rule, nested probabilities, and deterministic baseline corollary are now self-contained. The remaining standalone failure is localized to the appendix statements using `W_{ij}` and `C_{ij}` without a definition available outside a previous proof body.
- Weakest step-level claim: Step 010's frozen ordinary-inverse landing remains the highest-risk mechanism. Attempt 3 correctly obtains full rank from the Step 009 positive congruence and pair-Gram floor rather than the downstream quotient entry; the accepted step and repaired dependency order survive the attack. The bare `qquad` in the consolidated producer is an assembly-only notation break.
- Candidate counterexamples or stress cases: singular off-event designs, zero normalizers, threshold-adjacent same/cross-target graph pairs, `delta_init` near zero or one, `epsilon` tending to zero, and the exact orthogonal equal-weight seed were tested. The Moore--Penrose/cap split, graph margins, restart inequality, and exact zero-residual fixed point handle these regimes without a verified mathematical counterexample.
- Explicit-rate stress cases: the repaired corollary and appendix proposition now assume the full primitive range, condition explicitly on `E_sm`, invoke restart independence legally, state the joint probability conversion, retain the `rho^{-1}` envelope source, and display term-domination inequalities (B.7)--(B.8). No remaining rate blocker was verified.
- Appendix self-contained attack surface: blocking only at the two malformed `qquad` fragments and the proof-local placement of `W_{ij},C_{ij}`. The former external `setting.md` references, graph-rule omission, Step 010 cycle, hidden rate assumptions, and wrong final-event producer are repaired.
- Scope or mode upgrade attacks: no unsupported upgrade remains. The positive-smoothing theorem keeps instance and restart probabilities nested, while `ExactCertifiedSeed` is a separate deterministic `rho_sm=0` corollary that proves equality and no residual floor rather than claiming positive-probability occurrence.
- Remaining risk: perform a fresh malformed-command/window-definition scan and an actual TeX compile after assembly repair. The verified defects require neither a proof-step rerun nor sketch/idea revision.
