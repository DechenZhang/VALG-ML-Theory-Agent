# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Proposition `prop:step-006-sequence-learners` is not a closed standalone theorem-style statement. In `latex_template/5_appendix.tex` it fixes a sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) with \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), but neither the proposition nor any ambient text before it introduces or quantifies the sequence \(\{X_\kappa\}_{\kappa\in\mathbb N}\). The free symbols \(X_\kappa\) are then used in the public kernel signature \(M_\kappa:Z_{X_\kappa}^{N_\kappa}\rightsquigarrow\mathcal H_{X_\kappa}\) and throughout the proof. Removing surrounding prose therefore leaves the proposition ill-scoped, contrary to the public theorem-style standalone-statement contract. The setting, introductory formalized goal, main theorem, and attempted claim already bind a domain sequence before the class sequence, so this is a verified assembly omission rather than a mathematical or accepted-step obstruction. The smallest repair is to import that same domain-sequence quantifier into this appendix proposition before quantifying the classes.

## Nonblocking Concerns

1. Proposition `prop:step-005-privacy-negligibility` states its scalar negligibility conclusion for every size-divergent class sequence, while its cited ceiling-control lemma imports sequence quantities through Proposition `prop:step-004-sample-subpower`, whose interface includes the superpolynomial condition. The displayed factorization argument needs only the pointwise definitions, \(q_\kappa\geq1\), and \(L_\kappa\to\infty\), so the broader scalar claim survives the attack and the main theorem separately assumes the superpolynomial condition. A direct pointwise ceiling lemma or explicit discharge would nevertheless make the appendix dependency scope clearer.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The repaired main theorem now binds \(\{X_\kappa\}\) before \(\{C_\kappa\}\) and matches the formalized conditional target. The weakest remaining public claim is the appendix sequence-learner proposition, whose unbound domain sequence makes that proposition formally incomplete even though its intended mathematics is supported.
- Standalone theorem attack: Reading Proposition `prop:step-006-sequence-learners` after deleting surrounding prose supplies no quantifier or definition for \(X_\kappa\). Nonemptiness of \(C_\kappa\) does not syntactically bind the symbol used in \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), the kernel type, or the proof substitutions. All other quantities in the proposition are fixed, defined, or imported through named public results.
- Weakest step-level claim: Step 1 remains the highest-risk accepted step because it transports the Bun--Livni--Moran stable-selection result into a distribution-free, arbitrary-output private learner with explicit constants. The fixed-accuracy, fixed-confidence, \(\delta\leq e^{-2}\) specialization, binary recoding, source admissibility, quantifier order, codomain, randomness, and replacement-adjacency mapping all withstand the attack; no step-level break was found.
- Candidate counterexamples or stress cases: The proof was tested at \(q_\kappa=1\), \(d_\kappa=0\), and \(L_\kappa=0\) for individual classes; for bounded, constant, nonconvergent, oscillatory, and unbounded \(q_\kappa\); with exact ceilings and ignored-record padding; and under exact versus eventually larger privacy schedules. The sequence conclusions use \(|C_\kappa|\to\infty\) where needed, and none of these cases falsifies an accepted claim or the final implication.
- Explicit-rate stress cases: The exact superpolynomial quantifiers yield \(q_\kappa=L_\kappa^{o(1)}\) for every fixed power, including bounded-complexity regimes. The logarithmic correction, fixed powers, products, sums, \(\varepsilon_0^{-2}\) prefactor, additive unit, and ceiling preserve the subpower bound, so \(N_\kappa=L_\kappa^{o(1)}=o(L_\kappa)\). The factorized exponential estimate gives \(\delta_\kappa N_\kappa^\rho\to0\) for every fixed \(\rho>0\), including constant and oscillatory \(q_\kappa\), without hidden uniformity in \(\rho\).
- Appendix self-contained attack surface: All six accepted proof-step derivations and target-step assemblies are substantively present in paper-facing form. The mechanical audit found 166 unique labels, 73 distinct referenced labels, no duplicate or unresolved label, one resolved BibTeX citation, no workflow placeholders, and a successful isolated cached Tectonic build with only font-substitution warnings. The sole acceptance-blocking self-containedness defect found is the free \(X_\kappa\) in Proposition `prop:step-006-sequence-learners`.
- Scope or mode upgrade attacks: No unsupported upgrade was found in the distribution-free quantifier order, joint sample-and-learner probability, symmetric replacement privacy, arbitrary improper output, per-class learner existence, sequence-wise asymptotics, privacy monotonicity toward a larger additive parameter, or the contradiction between one eligible \(o(L_\kappa)\) learner and an eventual universal \(\Omega(L_\kappa)\) lower bound.
- Remaining risk: Add the domain-sequence quantifier to Proposition `prop:step-006-sequence-learners`, then rerun the standalone-statement, reference, and isolated compilation checks. No change to the setting, sketch, accepted steps, learner construction, rates, privacy argument, or theorem conclusion is indicated.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
