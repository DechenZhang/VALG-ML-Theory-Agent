# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **The assembled Step 010 proof is circular even though the accepted step proof is not.** In the proof of Proposition~`prop:step-010-frozen-solves`, `latex_template/5_appendix.tex` asserts full column rank “by the landing conclusion of Proposition~`prop:step-010-quotient-entry`” and again says the ordinary formula is used only after that later conclusion. But `prop:step-010-quotient-entry` explicitly consumes `prop:step-010-frozen-solves`, so the public dependency graph is circular. The accepted `step_010/proof.md` correctly gets full rank directly from the Step 009 positive diagonal congruence and the floor on `J_M^0` (its `(A2)`), so this is a verified assembly mistranslation repairable by restoring that argument.
2. **The public procedure and Step 006 graph result are not self-contained.** The setup says only “the absolute-inner-product graph” selects representatives; it never defines the `0.85 sigma_max` retained pool, the edge requirement that all three absolute modewise inner products be at least `1-64q_*`, the exactly-`r` failure test, or the minimum-`zeta`/score tie-breaking rule. Proposition~`prop:step-006-graph` consequently states that “the graph in setting.md” has the claimed components. A reader without the workflow file cannot determine which observable algorithm the theorem analyzes. The accepted Step 006 artifact contains the exact rule and separation proof, so the repair is to translate that rule into `1_intro.tex` and state it directly in the proposition. The other visible reference to smoothing scale “in setting.md” and the sentence “diagnostic is not used in this assembly” should be removed at the same time.
3. **The public rate-specialization bridge does not discharge its own hypotheses.** Corollary~`cor:rate-specialization-bridge` assumes only `assump:base-scale`, `assump:subquadratic-rank`, and `assump:accuracy-confidence`, but cites Proposition~`prop:rate-specialization-bridge`, which conditions on the static event and invokes `assump:random-initialization` for restart amplification. The corollary neither assumes nor conditions on those interfaces, and it refers to the declared polynomial envelope for `rho^{-1}` while omitting `assump:gaussian-smoothing`, the source of that envelope. The proposition itself also uses `assump:random-initialization` only inside its proof, not in its theorem-style hypothesis list. Thus the public bridge presently upgrades a conditional/event-level and randomness-dependent statement without an assumption-discharge path. In addition, (B.6) drops dominated terms from (B.5) while claiming every term is retained and gives no displayed domination inequalities. This is repairable by aligning the corollary and proposition with the main-theorem/event hypotheses (or separating deterministic work from probabilistic amplification) and displaying the elementary absorptions.
4. **The final theorem composition cites the wrong producer for the smoothed event.** The final proof says Proposition~`prop:step-001-realized-gram` gives an event of probability at least `1-delta_sm`, but that proposition is deterministic conditional on the raw event and normalization reserve. Proposition~`prop:step-001-geometry` is the named result that actually constructs the event, proves its probability, and bundles the norm, Gram, weight-ratio, and Khatri--Rao conclusions. The same composition attributes the gauge result to `prop:step-006-graph` instead of also naming Lemma~`lem:step-006-gauge`. As written, replacing each cited result by its exact statement does not establish the theorem's first probabilistic interface or the claimed gauge composition.

## Nonblocking Concerns

1. Attempt 2 still has no compiler result because Tectonic fails before TeX processing. Static checks cannot exclude TeX-engine errors after the dependency and procedure repairs.
2. Several appendix transitions retain mechanical prose and malformed list numbering (for example, an unnumbered first item followed by items `2.` and `3.`, and phrases such as “the Proposition”). These do not independently falsify a claim but should be cleaned during the required assembly repair.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the composition from the generated smoothed event through label-free observable selection, synchronized landing, cyclic contraction, capped stopping, and restart amplification. Exact-statement substitution currently fails at the static-event source, the public graph definition, and the rate bridge.
- Standalone theorem attack: blocking. The main theorem's primitive assumptions and nested probability prose are visible, but the analyzed clustering algorithm is underdefined in the setup and its appendix result points outside the bundle to `setting.md`.
- Weakest step-level claim: Step 010's ordinary-inverse landing. The accepted proof is acyclic and uses the Step 009 congruence/floor, but its public translation instead imports the downstream quotient-entry conclusion needed to prove itself.
- Candidate counterexamples or stress cases: singular frozen designs, a zero active normalizer, cross-target slots just below the graph threshold, `delta_init` near both endpoints, `epsilon` near zero, and the exact orthogonal/equal-weight state were tested. Singular and zero-normalizer tapes remain observably capped; the graph inequalities separate same- and cross-target pairs once the accepted rule is reinstated; and the deterministic exact baseline stays stationary with zero residual.
- Explicit-rate stress cases: blocking. The numerical restart inequality is valid for the stated universal `C_rep`, and the dense work expression includes all completed runs, but the public corollary omits the event/randomness/envelope assumptions of its cited proposition and the technical-to-public simplification lacks explicit term-domination inequalities.
- Appendix self-contained attack surface: blocking. The `setting.md` dependencies, circular Step 010 citation, hidden rate assumptions, wrong final event producer, and workflow sentence prevent the TeX bundle from standing alone even though the corresponding accepted artifacts contain the needed noncircular mathematics.
- Scope or mode upgrade attacks: the baseline attack is neutralized: `ExactCertifiedSeed` is explicitly a deterministic `rho_sm=0` boundary specialization, is not claimed to occur with positive probability under positive smoothing, and Step 013 proves equality rather than an `O(omega)` floor. The remaining unsupported upgrade is confined to the rate corollary's event and randomness assumptions.
- Remaining risk: after assembly repair, rerun static label/hygiene checks and a real TeX compilation; no step, sketch, or idea change is presently needed to neutralize the verified attacks.
