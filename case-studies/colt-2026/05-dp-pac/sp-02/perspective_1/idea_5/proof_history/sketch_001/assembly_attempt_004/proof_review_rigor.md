# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The standalone scope of Proposition `prop:step-005-privacy-negligibility` is not justified by the lemmas it invokes. Lemma `lem:step-005-ceiling` is stated only for the sequence quantities inherited from Proposition `prop:step-004-sample-subpower`; that proposition, through Proposition `prop:step-004-q-subpower`, requires the superpolynomial separation premise `(SP)`. Lemma `lem:step-005-factorization` inherits the same sequence scope. The privacy-negligibility proposition then fixes a newly stated arbitrary sequence of nonempty finite classes under only `|C_kappa| -> infinity` and applies the factorization bound to it, without requiring `(SP)` or proving the ceiling bound for this weaker sequence class. The scalar argument is valid and the main theorem's sequence does satisfy `(SP)`, so the smallest repair is in the assembly: make the privacy-negligibility proposition explicitly use the same `(SP)` sequence (preferably by adding the exact `(SP)` premise). Its source-allowance corollary then inherits a valid scope. Do not broaden the ceiling lemma beyond its accepted source statement during assembly.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Apart from the stated scope defect, the appendix preserves and correctly derives the six accepted proof steps. The Bun--Livni--Moran conversion keeps both sample-complexity terms and extracts one class-independent `K_a`; recoding, arbitrary output, distribution-free realizable utility, exact padding, and both ordered replacement-privacy inequalities are all explicit. The `(SC)`, `(LD)`, `(AS)`, and `(PN)` calculations correctly retain ceilings, constants, fixed-parameter dependence, and exact rather than asymptotic learner parameters.
- Statement self-containedness: The attempt-4 repair correctly binds an arbitrary domain sequence before binding `C_kappa subseteq {0,1}^{X_kappa}` in the main theorem and Proposition `prop:step-006-sequence-learners`; the learner kernels then consistently use `Z_{X_kappa}` and `H_{X_kappa}`. The sole failure is the independently numbered privacy-negligibility proposition's loss of the ambient `(SP)` scope described above.
- Main theorem constants and notation: `b=2a+2`, `u(L)`, `T_a`, `delta_a`, and `N_a` are used consistently. The displayed dependence of `K_a` is restricted to `a`, `alpha_0`, `beta_0`, and the universal stable-selection constant, and is independent of the class sequence, domains, distributions, and `epsilon_0`. No hidden sequence-dependent constant is used.
- Derivation-over-notation: The proof derives the exact privacy identity and exact ceiling formula before using them. Every product, sum, power, fixed prefactor, additive ceiling residual, and privacy relaxation is controlled by a displayed inequality. No notation-only assertion substitutes for a needed rate calculation.
- Explicit-rate contract: `(SC)` controls all five terms in the stable-selection bound. `(LD)` proves the exact equality `log(1/delta_a)=q^(2a+2)+log log(e^e+L)`. `(AS)` proves every-positive-exponent tail bounds for `q_kappa`, `T_a`, and `N_kappa`, including the ceiling. The privacy calculation proves every-fixed-`rho>0` decay uniformly over `q_kappa`, and the `rho=3` specialization yields the allowance for every fixed `c>0`. These rate derivations are valid whenever their common sequence scope is supplied.
- Appendix full derivations: All 22 accepted local units from Steps 001--006 have theorem-style counterparts and substantive derivations in the appendix. The source-to-appendix equations, constants, hypotheses, boundary cases, and final assemblies otherwise agree. Static checks found no duplicate labels, missing reference targets, or missing bibliography keys.
- Quantifiers and constants: The universal profile and exponent precede fixed `epsilon_0`; the repaired domain and class sequences precede one uniform `K_a`; and one learner is supplied at each index. Eventual bounds have the required `forall`-tolerance, `exists`-tail, `forall`-later-index order. Fixed `rho` and arbitrary positive `c` are not interchanged with the sequence limit. The blocker is specifically an omitted sequence premise at one standalone proposition boundary, not a scalar quantifier error.
- Probability or convergence modes: The PAC guarantee remains joint over the iid sample and learner randomness. Differential privacy remains pointwise for measurable events and symmetric ordered replacement adjacency; monotonicity is used only from `delta_kappa` to a larger allowed privacy parameter. Sequence limits are deterministic and no privacy composition, subsequence argument, or probability-mode upgrade is introduced.
- Boundary cases: The derivations explicitly cover `q=1`, `L=0`, `d_kappa=0`, `ell_kappa=0`, exact ceilings, bounded or constant `q_kappa`, nonconvergent and oscillatory `q_kappa`, arbitrary fixed `rho>0`, and arbitrary fixed `c>0`. The bounded-complexity regime is not replaced by an assumption that `q_kappa -> infinity`.
- Hidden subclaims: The logarithm domains, positivity conditions, exponential-polynomial supremum, ceiling inequality, source-allowance comparison, privacy monotonicity direction, and eventual `Omega(L_kappa)` contradiction are all proved or reduced to named accepted results. The only uncovered implication is the application of the Step-5 ceiling/factorization lemmas to a newly bound sequence outside their stated `(SP)` scope.

Verdict alignment: `BLOCKING` is paired with one acceptance-blocking rigor issue, repair depth `assembly`, and target `/proof-assembly`.
