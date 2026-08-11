# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The main theorem does not bind the instance domains used in its own statement.  It quantifies only a sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) of "nonempty finite binary concept classes" (lines 7--8 of `latex_template/3_main.tex`), but never introduces \(X_\kappa\) or states \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\).  Nevertheless, \(X_\kappa\) occurs in the claimed independence of \(K_a\) and in the public kernel signature \(M_\kappa:Z_{X_\kappa}^{N_\kappa}\rightsquigarrow\mathcal H_{X_\kappa}\) (lines 20 and 25--27).  Thus the theorem is not a closed standalone claim: changing or merely reading the sequence does not determine any symbol named \(X_\kappa\) in the formal statement.  The authoritative setting binds each domain explicitly, and the final appendix proposition likewise states \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), so the accepted proof interfaces already support the missing quantifier.  This is a verified assembly-level self-containedness break, repairable by importing that domain binding into the main theorem without changing its meaning.

## Nonblocking Concerns

1. Proposition `prop:step-005-privacy-negligibility` claims the scalar negligibility conclusion for every size-divergent class sequence, while its cited ceiling-control lemma imports its sequence quantities through Proposition `prop:step-004-sample-subpower`, whose interface includes the superpolynomial condition.  The displayed factorization proof actually needs only the pointwise definitions, \(q_\kappa\geq1\), and \(L_\kappa\to\infty\), so the broader scalar claim is valid, and the main theorem separately assumes the superpolynomial condition.  Still, a direct pointwise ceiling lemma or an explicit discharge would make this appendix dependency scope unambiguous.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The public main theorem is mathematically aligned with the formalized conditional target, but its free \(X_\kappa\) symbols make the theorem statement ill-scoped as a standalone claim.  The appendix's sequence-assembly proposition contains the missing binding, so no accepted theorem-level implication needs to change.
- Standalone theorem attack: Reading only the setup, preliminaries, and main theorem leaves no declaration of the sequence \(\{X_\kappa\}\) that appears in the theorem's constant-independence clause and learner type.  All other public quantities used there are defined before or within the theorem, and the theorem explicitly retains the polynomial-global-stability assumption, fixed privacy parameter, probability mode, adjacency convention, exact arity, and hidden-constant dependence.
- Weakest step-level claim: Step 1 remains the highest-risk accepted step because it transports the Bun--Livni--Moran stable-selection result into a distribution-free arbitrary-output private learner with explicit constants.  The repaired public source wrapper is now restricted to the consumed fixed-accuracy, fixed-confidence, \(\delta\leq e^{-2}\) regime, and its mapping, two sample terms, codomain, randomness, and adjacency conventions survive the source-fidelity attack; no step-level break was found.
- Candidate counterexamples or stress cases: The proof was tested at \(q_\kappa=1\), \(d_\kappa=0\), \(L_\kappa=0\) for individual classes, bounded, constant, nonconvergent, oscillatory, and unbounded \(q_\kappa\), exact ceilings, ignored-record padding, arbitrary-output kernels, and exact versus eventually larger privacy schedules.  The sequence conclusions correctly use \(|C_\kappa|\to\infty\), and none of these regimes falsifies an accepted step or final implication.
- Explicit-rate stress cases: The superpolynomial condition yields \(q_\kappa=L_\kappa^{o(1)}\) for every fixed power, including the bounded-complexity branch; the logarithmic correction is subpower; and fixed powers, sums, products, the \(\varepsilon_0^{-2}\) prefactor, additive unit, and ceiling remain controlled.  Consequently \(N_\kappa=L_\kappa^{o(1)}=o(L_\kappa)\).  The factorized exponential bound proves \(\delta_\kappa N_\kappa^\rho\to0\) for every fixed real \(\rho>0\), including constant and oscillatory \(q_\kappa\), without hidden uniformity in \(\rho\).
- Appendix self-contained attack surface: The six accepted steps and their local derivations are present as paper-facing results with proofs; 166 labels are unique, all 73 referenced targets resolve, the sole citation key resolves, and an isolated Tectonic build succeeds.  The earlier broad BLM wrapper, literal appendix equation numbers, omitted appendix bindings, and exact-branch tail-index defect are repaired.  Only the main theorem's omitted domain binding remains blocking; the inherited scope noted above remains a clarity concern.
- Scope or mode upgrade attacks: No unsupported upgrade was found in the distribution-free quantifier order, joint sample-and-learner probability, pointwise symmetric replacement privacy, arbitrary improper output, per-class existence, sequence-wise asymptotics, privacy relaxation from \(\delta_\kappa\) to a larger allowed schedule, or the contradiction between one eligible \(o(L_\kappa)\) learner and an eventual universal \(\Omega(L_\kappa)\) lower bound.
- Remaining risk: Repair should add \(X_\kappa\) to the sequence quantifier and state \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), then rerun the theorem-surface and compilation checks.  No mathematical, step, sketch, or idea-level repair is indicated by the adversarial attacks.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
