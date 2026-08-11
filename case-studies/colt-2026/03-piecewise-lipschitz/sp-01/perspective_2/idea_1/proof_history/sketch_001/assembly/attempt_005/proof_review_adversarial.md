# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The three chart-probability proofs write integrals of the form
   \(\int \widehat K_i(y)\lambda(s_i(J;y))\,\nu_i(\mathrm dy)\) without
   explicitly stating that \(y\mapsto\lambda(s_i(J;y))\) is measurable.
   This omission does not break the argument: for fixed nonempty \(J\), the
   image length is the oscillation of a function that is continuous in the
   chart parameter and affine in \(y\), so its supremum and infimum over
   \(\overline J\) are continuous in \(y\); empty and singleton pieces are
   already treated separately.  Equivalently, the proof can apply the
   pointwise bound
   \(Q^i_y((E^i_J)_y)\leq \widehat K_i(y)B_i(d,R)|J|\) before integrating,
   whose right-hand side is manifestly measurable.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable claim is the law-uniform
  root-hitting bound under only mean endpoint conditional-density caps, with
  no ambient joint density or coordinate independence.  Singular
  conditioning marginals, conditioning-null fibers, and dependent middle
  coordinates do not break it because each chart uses its own regular
  conditional kernel, a measurable finite-cap full-measure set, and exactly
  one expectation of the matching cap.
- Standalone theorem attack: This review is bound to `setting.md`
  `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`,
  `proof_sketch.md`
  `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`,
  `proof_sketch_review.md`
  `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`,
  the diagnostic pair `global_proof.md`
  `c345f7ef12e6508f4b46c0c6f73756fa78ea03687c21cca65bd6b5a7618032b1`
  and `global_proof_review.md`
  `ec735b871db6ba8efaa48d0ca5af47d93064b6fe14a765fdd977067ae834a2cd`,
  `assembly_report.md`
  `d7ad004fe25191cb60cb2d2a2bc14f8a2949f6f1e01767f3bd3859376e7f14a1`,
  and `latex_template/5_appendix.tex`
  `65c76b5f5ca4e8a82d8e1531ad205e07fdba65bf9b61527f52b026a2fb90abaf`.
  The public theorem has the same quantifiers, assumptions, constants,
  deterministic probability mode, class supremum, and separate witness
  clause as the formal target.
- Weakest step-level claim: The main attack surface is the step_003 to
  step_004 interface: jointly measurable fiber densities and cap
  representatives must support legal chart-event disintegration and then
  mean-cap integration.  The current proofs establish measurable section
  probabilities, simultaneous Borel-set domination on fixed full-measure
  sets, conditional support, and separate inner and outer kernels.  The only
  omitted micro-justification is the nonblocking image-length measurability
  noted above.
- Candidate counterexamples or stress cases: The proof survives \(d=1\),
  \(R=1\), zero cap parameters, empty and singleton chart pieces, arbitrary
  endpoint conventions, roots at \(\pm1\), tangencies and repeated roots,
  both signs of the outer chart, singular conditioning marginals, arbitrary
  kernel changes on null fibers, and the degree-two, singular, and dependent
  witness regimes.  No compatible counterexample remains.
- Explicit-rate stress cases: The exact chart constants
  \(B_0=d+Rd(d-1)/2\) and \(B_\infty=1+Rd(d-1)/2\) feed the maximum
  \(M_\eta\), not their sum.  With
  \(\bar\kappa_*=\max\{\bar\kappa_0,\bar\kappa_\infty\}\), the displayed
  pointwise inequalities give
  \(M_\eta\leq \bar\kappa_*d+(\bar\kappa_*/2)Rd^2\) for every allowed
  \(d,R\), including \(d=1\), without hidden dependence or a mode change.
- Appendix self-contained attack surface: All 23 accepted non-atomic local
  units, all seven target-step assembly arguments, and the final theorem
  assembly have paper-facing translations.  The attempt-5 repair now builds
  the kernel product as a finite measure before Radon--Nikodym, checks
  sigma-finiteness, uses a countable generating pi-system containing the
  whole pivot space for finite-measure uniqueness, proves absolute continuity
  of the integral of \(|q|\) inline, and supplies whole-space membership in
  both pi-lambda arguments.  The Kallenberg and Folland locators match the
  stated uses, every citation key has a bibliography entry, and the live
  labels and references are unique and resolved by static inspection.
- Scope or mode upgrade attacks: No local-to-uniform, conditional-to-
  unconditional, almost-sure-to-deterministic, horizon, confidence, or norm
  upgrade is hidden.  Fiberwise almost-sure facts are integrated only against
  their matching conditioning marginals; the final statements are
  deterministic probability inequalities and suprema.  The lower thresholds
  \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) are confined to the independent
  nonemptiness witness and do not enter the general upper bound.
- Remaining risk: The current hashes of all nine live LaTeX/support files
  match the assembly report, and all seven current step proofs match their
  accepted reviews.  Apart from the explicit nonblocking measurability note,
  no unresolved adversarial risk threatens acceptance.
