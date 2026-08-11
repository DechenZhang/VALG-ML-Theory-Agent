# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public scope paragraph in latex_template/1_intro.tex:132-133 reads
   "... the regime $0<R<1$. The No learner or online algorithm is
   specialized." The orphaned "The" is verified mechanical prose debris from
   removing the unsupported comparison paragraph. It is visible in the
   compiled paper and violates the paper-ready LaTeX contract. The theorem,
   appendix, and accepted proof claims remain aligned, so the smallest repair
   is assembly-only: delete the orphaned word or supply a grammatical
   transition without changing any mathematical statement.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable implication is from mean
  conditional-density caps to the three chart probabilities without a joint
  density or an almost-sure uniform cap. Atomic or singular conditioning
  marginals, arbitrary null-fiber kernel values, and finite-mean but
  unbounded realized caps do not break it. The product measure is dominated
  by its own conditioning marginal times Lebesgue measure, the rational-
  interval formula gives measurable cap versions, finite supported fibers
  are isolated on full-measure sets, and each chart is integrated against
  its matching kernel.
- Standalone theorem attack: Read after only the setup and preliminaries, the
  theorem preserves fixed $\eta$, every $d\geq1$, every $R\geq1$, the exact
  law class, interval quantifiers, deterministic probability mode, and the
  separate witness threshold. Zero caps can make the law class empty, and
  the stated value-zero convention closes that case. Removing the unsupported
  external comparison changes no theorem obligation, but it left the
  blocking prose fragment identified above.
- Weakest step-level claim: step_003 is the highest-risk unit. Its
  Radon--Nikodym/kernel construction remains valid for discrete or
  lower-dimensional conditioning marginals and does not assume ambient
  absolute continuity. Its compact-exhaustion argument covers arbitrary
  interval endpoint conventions. The negative outer calculation separately
  preserves parity signs and divides only by nonzero
  $\theta^{d-1}$.
- Candidate counterexamples or stress cases: Independent attacks covered
  $d=1$ coincident pivots, the $d=2$ two-direction kernels, the $d\geq3$
  singular witness, $R=1$, zero cap parameters, empty and singleton pieces,
  open/closed/half-open endpoints including $\pm1$, tangencies and multiple
  roots, null fibers, singular conditioning marginals, and unbounded slice
  caps with finite mean. Each is handled by an explicit branch, full-measure
  restriction, or exact set identity; no mathematical counterexample
  remains.
- Explicit-rate stress cases: Direct recomputation gives
  $B_0=d+Rd(d-1)/2$ and $B_\infty=1+Rd(d-1)/2$. The two outer events share
  one coefficient multiplying their total length, and the scalar inequality
  uses the maximum of the inner and outer coefficients, not their sum. The
  fixed-$\eta$ bridge uses exactly
  $\bar\kappa_i\leq\bar\kappa_*$, $1\leq d$, and
  $d(d-1)\leq d^2$; it also remains valid at
  $\bar\kappa_*=0$. The coefficient-one and coefficient-one-half factors are
  intact.
- Appendix self-contained attack surface: Every accepted local derivation and
  target-step assembly has paper-facing statement or proof text, with no
  unreviewed lemma or workflow dependency. The five restored
  control-sequence sites agree semantically with their accepted source
  formulas; current command scans find no bare reference fragments or
  control bytes, and $\dd$ is defined in arxiv.sty. The new
  sec:preliminaries label resolves exactly at the three-piece reference.
  All 50 labels are unique and all 143 references resolve. The only remaining
  paper-readiness failure is the introduction fragment in Blocking Issue 1.
- Scope or mode upgrade attacks: The bundle proves a static deterministic
  per-law inequality followed by deterministic suprema. It introduces no
  high-probability, expectation-to-uniform, horizon, limit, norm, necessity,
  $0<R<1$, or law-coverage upgrade. Witness support and both endpoint
  conditional memberships are proved separately for $d=1$, $d=2$, and
  $d\geq3$; the $1/2$ threshold is not imported into the general bound. The
  optional baseline comparison is expository rather than theorem-facing, so
  its removal creates no setting/theorem/appendix mismatch.
- Remaining risk: Input hashes and attempt identities match the accepted
  sketch, accepted paired global diagnostic, and all seven accepted
  proof/review pairs. A two-pass 21-page Tectonic build of a temporary copy
  reports no TeX errors, missing references, citations, duplicate labels, or
  box warnings; only bundled-package encoding and font-substitution warnings
  remain. After the one-line prose repair, no adversarial acceptance risk
  identified in this review remains.
