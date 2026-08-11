# Proof Review

## Formalized Setting

- Basic setup:
  Fix the compact source parameter domain \(\Theta\subseteq\mathbb R\), and let
  \[
  \mathcal I(\Theta)
  :=\{I\subseteq\Theta:I\text{ is an interval and }0<|I|<\infty\}.
  \]
  Arbitrary endpoint conventions are allowed.
  Fix once and for all a finite
  \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently
  of \((d,R)\). For every integer \(d\geq1\), radius \(R\geq1\), and
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\), define
  \[
  \phi_\alpha(\theta)
  :=\theta^d+\sum_{j=0}^{d-1}\alpha_j\theta^j,
  \qquad
  H_{d,I}:=\{\alpha\in[-R,R]^d:\exists\theta\in I,\
  \ \phi_\alpha(\theta)=0\}.
  \]

  For a Borel probability law \(\mu\) supported on \([-R,R]^d\), whenever
  the indicated regular conditional laws have Lebesgue densities, let
  \[
  \begin{aligned}
  K_0^\mu
  &:=\left\|f^\mu_{\alpha_0\mid\alpha_{1:d-1}}
      (\,\cdot\mid\alpha_{1:d-1})\right\|_{L^\infty(\mathbb R)},\\
  K_\infty^\mu
  &:=\left\|f^\mu_{\alpha_{d-1}\mid\alpha_{0:d-2}}
      (\,\cdot\mid\alpha_{0:d-2})\right\|_{L^\infty(\mathbb R)}.
  \end{aligned}
  \]
  These are random essential-supremum slice caps evaluated at the random
  conditioning coordinates. For \(d=1\), both conditioning tuples are empty
  and both quantities are the \(L^\infty\)-norm of the density of
  \(\alpha_0\).

  Define exactly
  \[
  \begin{aligned}
  \mathcal D_{d,R,\eta}:=\{\mu\in\mathcal P(\mathbb R^d):\;&
  \mu([-R,R]^d)=1;\\
  &\mu(\alpha_0\in\cdot\mid\alpha_{1:d-1})\text{ and }
    \mu(\alpha_{d-1}\in\cdot\mid\alpha_{0:d-2})
    \text{ admit Lebesgue densities a.s.};\\
  &\mathbb E_\mu K_0^\mu\leq\bar\kappa_0,
    \quad\mathbb E_\mu K_\infty^\mu\leq\bar\kappa_\infty\}.
  \end{aligned}
  \]
  Membership imposes no almost-sure uniform slice cap, ambient joint density,
  independence, affine-latent representation, root statistic, or preassigned
  value of the class constant. That constant is
  \[
  C_{\mathcal D_{d,R,\eta}}
  :=\sup_{\mu\in\mathcal D_{d,R,\eta}}
    \sup_{I\in\mathcal I(\Theta)}\frac{\mu(H_{d,I})}{|I|},
  \]
  with value \(0\) when either indexing set is empty.

  Split each interval into the disjoint pieces
  \[
  I_0=I\cap[-1,1],\qquad I_+=I\cap(1,\infty),\qquad
  I_-=I\cap(-\infty,-1),
  \]
  whose lengths sum to \(|I|\). The two coefficient sweeps are
  \[
  s_0(\theta;\alpha_{1:d-1})
  =-\theta^d-\sum_{j=1}^{d-1}\alpha_j\theta^j,
  \qquad
  s_\infty(\theta;\alpha_{0:d-2})
  =-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
  \]
  Empty sums are zero. Define
  \[
  \begin{aligned}
  B_0(d,R)&:=d+\frac{Rd(d-1)}2,\\
  B_\infty(d,R)&:=1+\frac{Rd(d-1)}2,\\
  M_\eta(d,R)&:=\max\{\bar\kappa_0B_0(d,R),
                         \bar\kappa_\infty B_\infty(d,R)\},\\
  \bar\kappa_*&:=\max\{\bar\kappa_0,\bar\kappa_\infty\},\\
  P_\eta(d,R)&:=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2.
  \end{aligned}
  \]
  The deterministic bridge is supplied by the uniform derivative bounds
  \[
  \sup_{|\theta|\leq1}|\partial_\theta s_0|\leq B_0(d,R),
  \qquad
  \sup_{|\theta|\geq1}|\partial_\theta s_\infty|\leq B_\infty(d,R).
  \]
  No learner or online algorithm is specialized.

  For the separate nonemptiness clause, \(\mu^{\mathrm{wit}}_{d,R}\) is the
  law specified in `setting.md`: uniform \(\alpha_0\) for \(d=1\); independent
  uniform \((\alpha_0,\alpha_1)\) for \(d=2\); and, for \(d\geq3\),
  \(\alpha_0=U_0\), \(\alpha_{d-1}=U_\infty\), and
  \(\alpha_j=RS\) for \(1\leq j\leq d-2\), where \(U_0,U_\infty\) are
  independent uniform variables on \([-R,R]\) and \(S\) is an independent
  Rademacher variable.
  For \(d\geq3\) this witness is ambiently singular, and for \(d\geq4\)
  its middle coordinates are dependent.

- Technical assumptions:
  - `assump:compact-parameter-domain`: \(\Theta\subseteq\mathbb R\) is the
    fixed compact source domain; the theorem is uniform over
    \(I\in\mathcal I(\Theta)\), with no dependence of the constant on
    \(I\) or \(\Theta\).
  - `assump:indexed-regime`: \(d\in\mathbb N\), \(d\geq1\), \(R\geq1\),
    and the finite \(\eta\) is fixed independently of \((d,R)\). The
    threshold \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) applies only to the
    nonemptiness clause, not to the root-hitting bound.
  - `assump:compact-cube-support`: every theorem-quantified law is supported
    on \([-R,R]^d\), and \(\phi_\alpha\) is exactly monic. This is not an
    ambient-density assumption.
  - `assump:mean-endpoint-conditional-caps`: both endpoint regular
    conditional laws admit Lebesgue densities almost surely and satisfy
    \(\mathbb E_\mu K_0^\mu\leq\bar\kappa_0\) and
    \(\mathbb E_\mu K_\infty^\mu\leq\bar\kappa_\infty\). Together with cube
    support, these are exhaustive of law membership in
    \(\mathcal D_{d,R,\eta}\).

## Formalized Goal

- Goal statement:
  For the single fixed \(\eta\), prove for every \(d\geq1\), \(R\geq1\),
  \(\mu\in\mathcal D_{d,R,\eta}\), and
  \(I\in\mathcal I(\Theta)\) that
  \[
  \begin{aligned}
  \mu(H_{d,I})
  &\leq\bar\kappa_0B_0(d,R)|I_0|
   +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)\\
  &\leq M_\eta(d,R)|I|.
  \end{aligned}
  \]
  Consequently,
  \[
  \boxed{
  C_{\mathcal D_{d,R,\eta}}
  \leq
  \max\!\left\{
  \bar\kappa_0\!\left(d+\frac{Rd(d-1)}2\right),
  \bar\kappa_\infty\!\left(1+\frac{Rd(d-1)}2\right)
  \right\}
  \leq P_\eta(d,R)
  =\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2.}
  \]
  The middle expression is the exact two-chart maximum, not the sum; the
  displayed polynomial has no hidden constants and its coefficients depend
  only on the fixed \(\eta\). Separately, only when
  \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), prove for every claimed
  \((d,R)\) that \(\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta}\) and
  both mean slice caps equal \(1/(2R)\leq1/2\).

  The progress type is `material_partial`: this is a sufficient-condition
  theorem for \(R\geq1\). Necessity, laws without both endpoint mean caps,
  and \(0<R<1\) remain unresolved.

## Reviewed Roadmap

The accepted sketch has seven acyclic steps. `step_001` derives the inner-chart
derivative and image-length bound. `step_002` derives the two outer-chart
derivative and image-length bounds. `step_003` constructs the measurable
conditional-density caps, proves their density-domination interface, and
establishes Borel root events suitable for disintegration. `step_004` combines
the two deterministic chart controls with the matching conditional kernels and
the mean cap assumptions. `step_005` takes the finite three-piece event union
and proves the exact maximum bound. `step_006` takes the class and interval
suprema and proves the explicit polynomial specialization. `step_007` proves
the witness membership separately in the regimes \(d=1\), \(d=2\), and
\(d\geq3\).

All seven current proof artifacts are `COMPLETE`, and every paired step review
is `ACCEPTED` and hash-bound to its current producer. The global proof and
specialized reviews are diagnostics only; the aggregate proof authority is the
formalized setting, accepted step proofs and reviews, and source-faithful
assembly. The exhaustive aggregate audit compared all 23 non-atomic accepted
local units and all seven target-step assemblies with the appendix.

## Attempted Claim

Fix one finite
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently of
\((d,R)\). For every \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), the
assembled bundle claims
\[
\mu(H_{d,I})
\leq \bar\kappa_0B_0(d,R)|I_0|
 +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)
\leq M_\eta(d,R)|I|.
\]
Consequently, with the stated zero convention for empty supremum index sets,
\[
C_{\mathcal D_{d,R,\eta}}
\leq M_\eta(d,R)
\leq P_\eta(d,R)
=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2,
\qquad
\bar\kappa_*=\max\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
The exact middle bound is the maximum of the two chart coefficients, not their
sum, and every coefficient is displayed.

Separately, only when \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), the bundle
claims for every \(d\geq1\) and \(R\geq1\) that
\[
\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta},
\qquad
K_0^{\mu^{\mathrm{wit}}_{d,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}\quad\text{almost surely}.
\]
The result retains `material_partial` scope: it makes no necessity claim and
does not cover laws lacking both endpoint mean caps or the regime \(0<R<1\).

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_STEP_FLAW

## Audit Summary

- Goal coverage: PASS. The assembled claim exactly matches the formalized
  theorem, quantifier order, primitive assumptions, exact two-chart maximum,
  explicit polynomial dependence, nonemptiness clause, and `material_partial`
  scope. There is no goal-level or sketch-level mismatch.
- Roadmap or step coverage: BLOCKING. All seven accepted steps occur in the
  correct dependency order and all seven target assemblies are present, but
  the Step 003 appendix subsection uses proof material that has no accepted
  Step 003 producer. Thus the displayed roadmap is covered while its accepted
  dependency closure is not.
- Proof-details audit: BLOCKING. The aggregate audit exhaustively compared all
  23 non-atomic local units and every one of the seven target-step assemblies;
  it was not a sample. All accepted source derivations are present. However,
  Lemma~`\ref{lem:kernel-caps}` and Proposition~`\ref{prop:matching-disintegration}`
  contain the additional Step 003 derivation detailed under Critical Issues.
  Unit coverage was `step_001` 2/2, `step_002` 2/2, `step_003` 3/3,
  `step_004` 3/3, `step_005` 3/3, `step_006` 4/4, and `step_007` 6/6;
  the blocker is unreviewed addition, not omission.
- Adversarial stress test: PASS. The contract-valid adversarial review reports
  no blocking counterexample or hidden gap, and independent aggregate checks
  found no new theorem-level obstruction, boundary failure, probability-mode
  mismatch, or witness failure.
- LaTeX export structure/provenance gate: BLOCKING. The required bundle
  structure and public theorem organization pass, but assembly provenance
  fails because substantive derivation was introduced directly in the Step
  003 appendix proof after acceptance of the producer step.
- Main theorem self-containedness: PASS. The reader-facing theorem states the
  required law class, parameter regime, two-chart rate, explicit polynomial,
  and separately scoped witness clause without depending on appendix-local
  authority.
- Assumption provenance gate: PASS. The four public assumption labels exactly
  match `setting.md`; the mean endpoint caps remain primitive, while the
  measurable cap and disintegration interfaces are presented as derived facts.
  No ambient joint density, independence, or almost-sure uniform cap is added.
- Redundant public prose gate: PASS. Static inspection found no workflow,
  reviewer, history, audit-scaffolding, or placeholder prose in the public
  bundle and no invalid public theorem-style environment.
- Proof-step notation surface gate: PASS. The public theorem exposes only
  setting-defined quantities and theorem-facing rate interfaces; proof-local
  kernels, measures, and generating systems remain local to the appendix.
- Theorem readability and notation economy: PASS. The two pivots, chart
  constants, exact maximum, polynomial specialization, and witness regimes are
  stated with stable notation and no opaque helper package.
- Explicit-rate contract: PASS. The bundle exposes \(d,R,\eta\), all chart
  lengths, the exact probability mode and interval normalization, and every
  numerical coefficient. There is no hidden dependence on \(\mu\), \(I\),
  \(\Theta\), conditioning values, or density versions.
- Rate Specialization Bridge: PASS. The exact weighted chart estimate first
  yields the maximum \(M_\eta\), and the appendix explicitly proves
  \(M_\eta(d,R)\leq\bar\kappa_*d+(\bar\kappa_*/2)Rd^2\) for every
  \(d\geq1,R\geq1\), without asymptotic term dropping.
- Baseline-reduction check: PASS. At \(d=1\), both pivots are the sole
  coefficient, \(B_0=B_\infty=1\), all derivative sums are empty, and the same
  proof gives the degree-one case. No stronger baseline theorem is claimed.
- LaTeX appendix full-derivation gate: BLOCKING. Every accepted source
  derivation and final assembly is visible, but the appendix is not a faithful
  assembly-only rendering because it strengthens Step 003 with new result
  applications, assumption discharges, and an inequality before those items
  have been accepted at step depth.
- LaTeX export citation/reference gate: PASS. Static checks found 50 unique
  labels, 143 reference uses, no duplicate or unresolved target, and 15
  citation commands using exactly `Folland1999` and `Kallenberg2002`, both
  present in `reference.bib`. There are no malformed reference or citation
  commands. A fresh isolated two-pass Tectonic build completed without errors,
  unresolved references or citations, multiply defined labels, or box
  warnings; only the two nonblocking `wasy` substitutions and cached style
  encoding warnings remain. The final `main.log`, `main.bbl`, and `main.blg`
  hashes are respectively
  `62eb7eecb5fa7ee55a112e665f46e4af7582b125107ae9cf1b580b7e7c06f546`,
  `40bd2733f21921ac3825f0dab49ef75362106de24b037c4db95b8a1a79e06e27`,
  and `dcbc30cd46b5b815c45e1f29231d44bde833f32665edd8258c4e54a2ba4bf46a`.
- LaTeX export synchronization: BLOCKING. Every frozen current input hash
  matches: `setting.md` `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`,
  `proof_sketch.md` `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`,
  `proof_sketch_review.md` `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`,
  `global_proof.md` `c345f7ef12e6508f4b46c0c6f73756fa78ea03687c21cca65bd6b5a7618032b1`,
  `global_proof_review.md` `ec735b871db6ba8efaa48d0ca5af47d93064b6fe14a765fdd977067ae834a2cd`,
  `assembly_report.md` `d7ad004fe25191cb60cb2d2a2bc14f8a2949f6f1e01767f3bd3859376e7f14a1`,
  `5_appendix.tex` `65c76b5f5ca4e8a82d8e1531ad205e07fdba65bf9b61527f52b026a2fb90abaf`,
  structural `851b2921bd79b9f97172f36390643bf37bcc199f93a1b1990d1878dbe05dbac5`,
  rigor `7e9395e78ec56c9ed4549a0b81e6e82f2fe8a3a18430313e697652895e853234`,
  citation `d4a0eb97ddd0923287c8e102052b9f7027d110f6b78b4b9d50bb48a9afabb9de`,
  and adversarial `f358c5e1bfbf208c0d5e3f50abeedd68f891c655ff45fb2c3b4a8939f00d936c`.
  All nine public bundle hashes match `assembly_report.md`, and all seven
  proof/review pairs match. Byte synchronization therefore passes, but
  semantic source-to-appendix synchronization fails at Step 003.
- Specialized-review resolution: The structural review is a contract-valid
  `BLOCKING` diagnostic at repair depth `step` with target
  `/proof-step step_003`; rigor, citation, and adversarial are contract-valid
  `PASS` diagnostics. Under the deepest-issue rule this is not a vote: the
  independently confirmed step-depth provenance failure controls the aggregate
  outcome.

## Critical Issues

1. The proofs of Lemma~`\ref{lem:kernel-caps}` and
   Proposition~`\ref{prop:matching-disintegration}` in
   `latex_template/5_appendix.tex` add substantive Step 003 proof work absent
   from the accepted `proof_steps/step_003/proof.md` and its cited-result map.
   The additions instantiate Kallenberg's kernel-product theorem, verify
   product sigma-finiteness and total mass, specify a generating pi-system and
   apply measure uniqueness/pi-lambda results, and introduce the finite measure
   \(\rho(E)=\int_E|q|\,d\lambda\) with its truncation inequality and
   monotone-convergence discharge. These are new cited-result applications,
   assumption discharges, and a mathematical inequality, not notation
   reconciliation or direct composition of accepted claims. Assembly cannot
   legitimize them. The necessary derivation must first be incorporated into
   `step_003`, then receive a fresh `ACCEPTED` `/proof-step-review step_003`
   before the appendix is reassembled.

## Failure-Type Rationale

The score is 6 because the theorem contract, seven-step mechanism, accepted
source derivations, rate bridge, citations, and compiled public bundle are
otherwise coherent, but the provenance violation blocks acceptance. The
deepest unsupported obligation is local to `step_003`: the appendix relies on
mathematical work not contained in that accepted producer. Therefore
`PROOF_ASSEMBLY_FLAW` is too shallow, since another assembly pass cannot make
unreviewed derivation accepted, while `PROOF_SKETCH_FLAW` and `IDEA_FAIL` are
too deep because no roadmap, primitive assumption, theorem scope, exposed
dependence, or conclusion needs to change. The aligned classification is
`PROOF_STEP_FLAW`.

## Suggested Next Action

/proof-step step_003

## Retry Mode

repair_step
