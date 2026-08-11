# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Proposition `prop:step-005-privacy-negligibility` contains a verified scope break. It quantifies every sequence of nonempty finite binary classes satisfying only \(|C_\kappa|\to\infty\), but its proof applies Lemma `lem:step-005-factorization`, which applies Lemma `lem:step-005-ceiling`; that ceiling lemma fixes \(q_\kappa,L_\kappa\) through Proposition `prop:step-004-sample-subpower`. The latter inherits Proposition `prop:step-004-q-subpower`, whose sequence interface requires exact `(SP)`. For the admissible stress sequence \(X_\kappa=[\kappa]\) and \(C_\kappa=\{0,1\}^{X_\kappa}\), one has \(|C_\kappa|=2^\kappa\to\infty\), \(L_\kappa=\kappa\log 2\), and \(d_\kappa=\kappa\); `(SP)` already fails at \(p=1\), since \(L_\kappa<d_\kappa\). Thus the Step-4 proposition, and hence the stated ceiling and factorization chain, cannot be instantiated over the full scope claimed by the Step-5 proposition. The same mismatch occurs in accepted `proof_steps/step_005/proof.md`: `unit_001` derives the ceiling under `prop:step-004-sample-subpower`, while `unit_004` and the target-step assembly export `(PN)` from size divergence alone. Consequently this is not an assembly-only translation defect; it leaves `prop:step-005-source-allowance`, the Step-6 rate-certificate chain, and the final public proof dependent on an unproved Step-5 interface. A Step-5 repair can preserve the accepted sketch and theorem contract by deriving the ceiling directly from the declared pointwise formula for \(N_a\) and the fixed \(K_a\geq2\), without routing that bound through the `(SP)`-scoped Step-4 proposition. The repaired proof then requires a fresh `/proof-step-review step_005` before downstream use.

## Nonblocking Concerns

None

## Suggested Repair Depth

step

## Smallest Candidate Repair Target

/proof-step step_005

## Adversarial Audit

- Weakest theorem-level claim: The main theorem itself retains exact `(SP)`, but the public appendix Proposition `prop:step-005-privacy-negligibility` states a stronger, size-divergence-only interface than its cited proof chain establishes.
- Standalone theorem attack: On \(C_\kappa=\{0,1\}^{[\kappa]}\), the proposition's displayed premise holds while the Step-4 dependency's `(SP)` premise fails. Deleting surrounding prose therefore exposes a theorem-style statement whose named dependencies are not applicable to all quantified objects.
- Weakest step-level claim: `step_005` `unit_001` obtains the exact ceiling through the `(SP)`-scoped `prop:step-004-sample-subpower`, whereas `unit_004` consumes that ceiling after retaining only \(|C_\kappa|\to\infty\). The accepted Step-5 review did not audit this dependency-scope upgrade.
- Candidate counterexamples or stress cases: The full binary cube sequence above is a concrete failed-instantiation case. It does not falsify the numerical `(PN)` conclusion: the pointwise formula still makes `(PN)` true. It instead verifies that the current proof does not establish the proposition on its stated scope.
- Explicit-rate stress cases: The factorization remains numerically sound for fixed, bounded, oscillatory, or unbounded \(q_\kappa\), every fixed \(\rho>0\), and exact ceilings once the pointwise ceiling bound is legally established. The blocker is assumption provenance, not a missing polynomial-versus-exponential estimate or hidden rate dependence.
- Appendix self-contained attack surface: The attempt-4 domain-sequence binder repair is present, and the static placeholder, workflow-language, malformed-command, label/reference, and citation-key scans reveal no additional blocking defect. The remaining failure is mathematical scope closure inside the Step-5 appendix chain.
- Scope or mode upgrade attacks: The unsupported upgrade is from sequences satisfying exact `(SP)` in `prop:step-004-q-subpower` and `prop:step-004-sample-subpower` to all size-divergent sequences in `prop:step-005-privacy-negligibility`. No probability, privacy, or convergence-mode upgrade is needed to witness it.
- Remaining risk: Repair `step_005` so its ceiling and factorization have a dependency-valid pointwise interface, rerun `/proof-step-review step_005`, and only then regenerate the assembly and specialized reviews. No sketch or idea change is indicated by this attack.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
