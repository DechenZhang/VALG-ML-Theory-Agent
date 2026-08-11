# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The three chart-probability derivations display integrals of
   `widehat K_i(y) lambda(s_i(J;y))` without separately stating that
   `y -> lambda(s_i(J;y))` is measurable. This is a presentation omission,
   not an acceptance-blocking gap. For fixed nonempty `J`, the image is an
   interval and its length is the supremum minus the infimum of
   `s_i(theta;y)` over a countable dense subset of `J`, hence is measurable
   in `y`; the empty and singleton cases are constant. More directly, the
   proof can combine the fiberwise domination and the deterministic image
   bound before integrating, giving the measurable majorant
   `widehat K_i(y) B_i(d,R) |J|`.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable bridge is from only mean
  endpoint conditional-density caps to a uniform root-hitting probability
  bound for arbitrary ambient laws. The measurable rational-interval cap is
  equal almost surely to the conditional-density essential supremum, dominates
  every Borel pivot set on one full-measure fiber set, and is integrated only
  against its matching endpoint kernel. Ambient singularity and dependence do
  not enter this bridge.
- Standalone theorem attack: The public theorem retains the exact setting
  order and scope: finite `eta` is fixed before `d,R`; `d >= 1`, `R >= 1`,
  every law in the exactly defined class, and every positive-length source
  interval are quantified. The witness threshold is stated separately, and
  all chart constants are defined before the theorem. No primitive assumption
  is dropped or replaced by a derived condition.
- Weakest step-level claim: The main attack surface is the step_003 to
  step_004 interface. Compact exhaustion before coefficient projection makes
  every arbitrary-endpoint root event Borel; parameterized kernel sections are
  measurable; conditional-kernel and density-version changes affect only
  conditioning-null fibers; and conditional support permits removal of the
  pivot-cube intersection. The only residual explicitness issue is the
  nonblocking image-length measurability point above.
- Candidate counterexamples or stress cases: At `d = 1`, both pivots and both
  conditioning spaces reduce to the sole unconditional coefficient law, while
  the two primitive cap inequalities remain separate. Roots at `+/-1` occur
  only in the inner chart. Empty and singleton chart pieces have zero
  probability without a `0 * infinity` convention. Tangencies, multiple
  roots, conditioning-null fibers, singular higher-degree witness laws, and
  dependent middle coordinates do not alter the exact pivot-section identity.
  None yields a counterexample under the stated endpoint absolute continuity.
- Explicit-rate stress cases: The weighted three-piece estimate gives
  `A|I_0| + C(|I_+|+|I_-|) <= max{A,C}|I|`, so the coefficient is the exact
  maximum rather than a sum. The comparisons `1 <= d` and
  `d(d-1) <= d^2` cover `d = 1`, `R = 1`, and `bar kappa_* = 0`; in the
  last case the displayed envelope is the zero polynomial of total degree at
  most three. No hidden asymptotic or probability conversion appears.
- Appendix self-contained attack surface: The appendix contains paper-facing
  statements and substantive proofs for all deterministic chart certificates,
  measurable caps, Borel sections, matching disintegration, three probability
  controls, exact union/maximum, supremum closure, polynomial specialization,
  witness kernels, support/singularity/dependence, threshold comparison, and
  final theorem assembly. The cited Tonelli, Radon--Nikodym, finite-measure
  uniqueness, differentiation, absolute-continuity-of-integral, conditional-law
  uniqueness, pi--lambda, monotone-convergence, and product-nullity applications
  are used on finite or sigma-finite Euclidean measure spaces with their needed
  hypotheses exposed. No workflow artifact is needed to complete a derivation.
- Scope or mode upgrade attacks: The proof starts with a deterministic
  per-law probability inequality, uses expectations only for the two random
  slice caps, and then takes deterministic interval and law suprema. It does
  not upgrade an almost-sure statement, exchange an unproved supremum with an
  expectation, introduce a confidence or horizon parameter, or import the
  witness threshold into the general bound.
- Remaining risk: No acceptance-blocking adversarial issue remains. A fresh
  TeX compilation was unavailable because this workspace has no TeX engine;
  direct static checks found no duplicate or undefined labels, no undefined
  citations, no malformed reference commands, and no workflow/template debris.
