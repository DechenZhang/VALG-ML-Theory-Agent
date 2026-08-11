# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The assembled Step 010 proof is circular and no longer uses the accepted pre-solve interface.  In the accepted source, `proof_steps/step_010/proof.md:149-177` proves full frozen-design rank from the Step 009 congruence and floors in `(A2)`, namely $D_{-M}^0\succ0$ and $\lambda_{\min}(J_M^0)>0$.  The appendix instead invokes the later landing conclusion, Proposition~\ref{prop:step-010-quotient-entry}, to obtain full rank at `latex_template/5_appendix.tex:3301-3302` and again says the ordinary inverse is used only after that later proposition at `:3322-3324`.  That proposition depends on the current frozen-solve proposition, so the proof is circular.  The same translation also replaces the source's Step 009 coefficient reserve `(A1)` by the static-geometry proposition at `:3318-3320` and `:3368-3370`, although static geometry does not supply $\|\Xi_M-I\|\le\beta$.  The accepted Step 009/010 artifacts already contain the noncircular inputs, so this is an assembly-local dependency repair.

2. Several nontrivial accepted dependency interfaces were deleted while their bare equation references remain.  Step 002 uses `(1)` at `5_appendix.tex:448`, `:532`, and elsewhere, but the section starts its displayed numbering at `(2)`; the missing accepted display is the realized Gram bound in `proof_steps/step_002/proof.md:59-65`.  Step 003 similarly uses `(1)` at `5_appendix.tex:945`, `:971`, and `:1001` without translating the accepted window-probability display in `proof_steps/step_003/proof.md:69-76`.  Step 006 repeatedly derives from `(A)` at `5_appendix.tex:2086`, `:2166`, and `:2182`, but omits the accepted coordinate-ledger inequality at `proof_steps/step_006/proof.md:47-55`.  Step 008 repeatedly uses `(A)`--`(C)` at `5_appendix.tex:2643-2646` and `:2699-2773`, but omits the accepted tail, score, and coefficient-interface displays at `proof_steps/step_008/proof.md:56-80`.  These are probability, weighted-ledger, and coefficient bounds used inside proofs, not removable workflow metadata.  The Step 012 composition has the same replacement defect at `5_appendix.tex:4339-4341`: source `(A2)` is the Step 011 cyclic contraction interface, but the appendix substitutes the Step 010 landing conclusion.

3. The final theorem composition cites results that do not produce the conclusions attributed to them.  At `5_appendix.tex:4825-4826`, Proposition~\ref{prop:step-001-realized-gram} is said to provide the probability-bearing static event, although that proposition is conditional on the event; Proposition~\ref{prop:step-001-geometry} is the actual producer.  At `:4829`, the displayed $R,S$ recurrence is attributed to the certificate proposition instead of Lemma~\ref{lem:step-004-recurrence}.  At `:4836-4838`, polynomial runtime is attributed to the contraction and restart propositions, neither of which states the dense-cost bound; Proposition~\ref{prop:step-012-dense-cost} and the rate bridge are the producers.  Likewise, the residual-transfer statement at `:4008-4011` calls Proposition~\ref{prop:step-011-chronological-contraction} the static-geometry producer even though it assumes that interface.  These provenance errors leave theorem conclusions unsupported by the named final-composition chain.

4. The public Rate Specialization Bridge is not self-contained in its probability assumptions.  The corollary at `latex_template/3_main.tex:140-160` and appendix proposition at `5_appendix.tex:4415-4475` list Assumptions~\ref{assump:base-scale}, \ref{assump:subquadratic-rank}, and \ref{assump:accuracy-confidence}, but the bridge proof invokes restart independence from Assumption~\ref{assump:random-initialization} at `5_appendix.tex:4487-4490` to prove `(B.4)`.  The statements must include that assumption, or restrict themselves to a deterministic work bound and remove the unsupported probability conversion.

5. The public main theorem remains a 131-line technical dictionary rather than a concise reader-facing theorem.  In particular, `3_main.tex:57-102` exposes seven landing budgets, four frozen matrices, inverse reserves, and coefficient formulas before returning to the recovery conclusion.  The added corollary at `:140-161` specializes runtime only; it does not give a readable version of the rank, success probability, landing, contraction, residual, and baseline result.  Under the main-theorem readability contract, the technical dictionary must be packaged in a named appendix theorem-style result and bridged to a concise public theorem or full-result corollary.

6. Public-TeX translation debris remains acceptance-blocking.  Examples include literal Markdown bullets inside the Step 001 composition at `5_appendix.tex:406-412`; orphan numbered proof-ingredient entries beginning with `2.` or `3.` at `:450`, `:1172`, `:2648`, `:2875`, and `:3242`; the explicit audit sentence `diagnostic is not used in this assembly` at `:417`; the dependency inventory `1. the coupon dependency` / `2. the cyclic dependency` at `:3961-3977`; and `On an the landing` at `:4207-4209`.  These violate the paper-readiness rule independently of the mathematical dependency defects.

## Nonblocking Concerns

1. The assembly report says all dependency translations and public-TeX hygiene checks passed, but the direct source comparison and scans above contradict those claims.  The report should be regenerated with the repaired bundle.

2. Tectonic terminated before TeX processing because of the installed macOS system-configuration failure, so no PDF/log-based compilation check is available.  Static label, citation, and environment checks alone cannot exclude rendering defects.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: BLOCKING.  Step 010 uses its own later quotient-entry conclusion to justify the inverse needed to prove that conclusion, and several accepted dependency interfaces are misidentified or omitted.
- Statement self-containedness: BLOCKING.  Bare undefined `(1)` and `(A)`--`(C)` references, wrong producer citations, and the missing restart-independence assumption prevent independent checking from the bundle.
- Main theorem constants and notation: BLOCKING.  The technical constants are defined, but their dictionary dominates the public theorem and has no concise full-result interface.
- Derivation-over-notation: BLOCKING.  Local source aliases were removed without translating the underlying displayed interfaces to named paper results.
- Explicit-rate contract: BLOCKING.  The bridge's probability conversion uses an assumption absent from both theorem-style statements, and the final proof does not cite the cost producer.
- Appendix full derivations: BLOCKING.  Comparison against all thirteen accepted step proofs confirms that the main local equation sequences and step compositions are generally present, but the dependency displays and source-to-producer substitutions listed above are theorem-critical omissions in Steps 002, 003, 006, 008, 010, and 012.
- Quantifiers and constants: BLOCKING.  Restart independence is used outside the bridge's stated assumption basis; the other displayed numerical constants retain their accepted dependence.
- Probability or convergence modes: BLOCKING.  The final proof attributes the once-drawn event probability to a conditional deterministic proposition, and the rate bridge performs conditional restart amplification without stating its independence assumption.
- Boundary cases: The attempt-2 bundle now states the exact certified-seed baseline and preserves the capped singular-tape branch; no new boundary-case blocker was found beyond the producer and paper-readiness defects above.
- Hidden subclaims: BLOCKING.  The final theorem proof asserts recurrence and polynomial runtime from propositions that do not state those outputs; the correct accepted producers exist but must be cited and composed explicitly.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
