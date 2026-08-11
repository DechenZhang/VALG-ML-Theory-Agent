# Proof Review

## Formalized Setting

- Basic setup:
  Fix an integer $N\ge 1$, a support radius $R>0$, a density cap
  $\kappa\in(0,\infty)$, and a compact interval $\Theta\subset\mathbb R$.
  Let
  \[
  b:\Theta\to\mathbb R,
  \qquad
  F=(F_1,\ldots,F_N):\Theta\to\mathbb R^N,
  \qquad
  \phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle.
  \]
  Write $\|x\|_1=\sum_i|x_i|$ and let $|I|$ denote Lebesgue length.
  Define
  \[
  A=(2R)^N\kappa
  \]
  and let $\mathcal D_{N,R,\kappa}$ be the class of all probability laws
  $\mu$ on $\mathbb R^N$ having a Lebesgue density $f_\mu$ such that
  $f_\mu=0$ almost everywhere outside $[-R,R]^N$ and
  $\|f_\mu\|_{L^\infty(\mathbb R^N)}\le\kappa$. No product structure or
  coordinate independence is included in this definition.

  The common one-dimensional Pfaffian representation is
  \[
  \eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
  \quad 1\le j\le q,
  \]
  with
  \[
  b(\theta)=Q_0(\theta,\eta(\theta)),
  \qquad
  F_i(\theta)=Q_i(\theta,\eta(\theta)),\quad 1\le i\le N.
  \]
  In the Balcan--Nguyen--Sharma convention specialized to ambient parameter
  dimension $p=1$, set
  \[
  M=\max_{1\le j\le q}\deg P_j,
  \qquad
  \Delta_{\rm rnd}=\max_{1\le i\le N}\deg Q_i,
  \qquad
  \Delta_{\rm aff}=\max_{0\le i\le N}\deg Q_i.
  \]
  When $q=0$, the chain is absent and $M=0$. The deterministic offset $b$ is
  counted in $\Delta_{\rm aff}$ but is not a random coefficient.

  The root-feasible set is
  \[
  K_R=\{\theta\in\Theta: |b(\theta)|\le R\|F(\theta)\|_1\}.
  \]
  Indeed, a root $\phi_\alpha(\theta)=0$ with
  $\alpha\in[-R,R]^N$ can occur only at a point of $K_R$. For each coordinate
  $j$, let $U_j=\{\theta\in\Theta:F_j(\theta)\ne0\}$ and, on $U_j$, define
  \[
  V_j(\theta)
  =\left|\left(\frac b{F_j}\right)'(\theta)\right|
   +R\sum_{i\ne j}
    \left|\left(\frac{F_i}{F_j}\right)'(\theta)\right|.
  \]
  Extend $V_j$ by $+\infty$ off $U_j$ for purposes of minimization, and set
  \[
  \Gamma_{\rm piv}(b,F;R)
  =
  \begin{cases}
  \displaystyle\sup_{\theta\in K_R}\min_{1\le j\le N}V_j(\theta),
      &K_R\ne\varnothing,\\[1ex]
  0,&K_R=\varnothing.
  \end{cases}
  \]
  This is a static, pre-sampling conditioning functional. Its finiteness under
  the assumptions below is a conclusion to be established, not an additional
  assumption.

  For the adaptive sweep, let $j_*(\theta)$ be the least index attaining
  $\min_jV_j(\theta)$ on $K_R$, and put
  $E_j=\{\theta\in K_R:j_*(\theta)=j\}$. These sets form a measurable,
  disjoint partition of $K_R$. Use the exhaustion
  $E_{j,m}=E_j\cap\{|F_j|\ge 1/m\}$, $m\ge1$. If
  $\beta=\alpha_{-j}\in[-R,R]^{N-1}$, define on $E_j$
  \[
  T_j(\theta,\beta)
  =-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}.
  \]
  The chart sweep applies the area formula to
  $(\theta,\beta)\mapsto(\beta,T_j(\theta,\beta))$ on
  $E_{j,m}\times[-R,R]^{N-1}$ restricted by $|T_j|\le R$, then lets
  $m\to\infty$. The disjoint partition is in the parameter $\theta$, so its
  target estimate is a sum of chart integrals, not an $N$-fold union bound.

  Two fixed specializations will be used in the goal. For
  $\delta\in(0,1]$, the scale-stress family on $[-1,1]$ is
  \[
  b_\delta(\theta)=0,
  \qquad F_\delta(\theta)=(1,\theta/\delta),
  \qquad R=1.
  \]
  For an integer $d\ge1$, the exact monic family is
  \[
  b_d(\theta)=\theta^d,
  \qquad F_d(\theta)=(1,\theta,\ldots,\theta^{d-1}),
  \qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
  \]
  where only $\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d$ is random.
  In this specialization, write $V_{\rm const}$ for $V_j$ with pivot
  $F_j(\theta)=1$ and $V_{\rm top}$ for $V_j$ with pivot
  $F_j(\theta)=\theta^{d-1}$ (the two labels name the same coordinate when
  $d=1$).
  For this family $q=0$, $M=0$, $N=d$,
  $\Delta_{\rm rnd}=d-1$, $\Delta_{\rm aff}=d$, and
  $A=(2R)^d\kappa$.

- Technical assumptions:
  - `assump:shared-pfaffian-chain` (Shared one-dimensional Pfaffian regularity):
    The functions $b,F_1,\ldots,F_N$ are $C^1$ on $\Theta$ and have the
    common triangular Pfaffian representation and the
    $(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},p=1)$ degree convention specified
    above.
  - `assump:no-forced-root` (Primitive no-forced-root nondegeneracy): For every
    $\theta\in\Theta$,
    \[
    (b(\theta),F(\theta))\ne(0,0).
    \]
    Equivalently, no parameter value is a root for every coefficient vector.
    Points with $F(\theta)=0$ and $b(\theta)\ne0$ remain admissible and are
    root-free. In particular, $F(\theta)\ne0$ for every $\theta\in K_R$.
  - `assump:joint-density-cap` (Arbitrarily correlated bounded joint density):
    The coefficient law is any $\mu\in\mathcal D_{N,R,\kappa}$. This is a cap
    on the full joint density and imposes no independence assumption.

## Formalized Goal

- Goal statement: Prove the following affine coordinate-pivot sweep theorem
  and its two quantitative specializations under
  `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
  `assump:joint-density-cap`. First,
  $\Gamma_{\rm piv}(b,F;R)<\infty$, and for every
  $\mu\in\mathcal D_{N,R,\kappa}$ and every interval
  $I\subseteq\Theta$ with $|I|>0$,
  \[
  \Pr_{\alpha\sim\mu}\!\left[
    \exists\theta\in I:\phi_\alpha(\theta)=0
  \right]
  \le
  \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
  =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
  \]
  Consequently,
  \[
  \sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta,\ I\text{ an interval}\\|I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
  \phi_\alpha(\theta)=0]}{|I|}
  \le \frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
  \]
  Second, for the scale-stress family,
  \[
  \Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta,
  \]
  so the conditioning explicitly records the scale required by
  Counter-example 1. Third, for every $d\ge1$, pivoting on the constant
  coordinate when $|\theta|\le1$ and on the degree-$(d-1)$ coordinate when
  $|\theta|>1$ gives
  \[
  V_{\rm const}(\theta)
  \le d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \quad (|\theta|\le1),
  \]
  \[
  V_{\rm top}(\theta)
  \le 1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
  \le d+\frac{Rd(d-1)}2
  \quad (|\theta|>1),
  \]
  and hence
  \[
  \Gamma_{\rm piv}(b_d,F_d;R)
  \le d+\frac{Rd(d-1)}2.
  \]
  Applying the same affine theorem, with no random leading coefficient and no
  independence assumption, must therefore yield for every
  $\mu\in\mathcal D_{d,R,\kappa}$ and every bounded interval
  $I\subset\mathbb R$
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:p_\alpha(\theta)=0\right]
  \le
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|I|,
  \]
  exactly recovering the stated monic-polynomial Theorem 2 constant through
  the general theorem itself. All displayed bounds are ordinary probability
  bounds, uniform over laws and intervals, with no hidden constant and no
  horizon or asymptotic mode. Their exposed quantities are
  $N,R,\kappa,A,\Gamma_{\rm piv}$ and $|I|$; $q,M,\Delta_{\rm rnd}$ and
  $\Delta_{\rm aff}$ are fixed family descriptors and have no direct factor
  in the bound. The norm modes are the $\ell_1$ feasibility test defining
  $K_R$ and the coordinate-ratio variation defining $\Gamma_{\rm piv}$.

## Reviewed Roadmap

1. `step_001` derives root feasibility, a uniform nonzero-pivot margin on
   (K_R), and fixed-family finiteness of (Gamma_{\rm piv}).
2. `step_002` constructs the Borel least-pivot partition and the exact chart
   derivative bound (|\partial_\theta T_j|\le V_j\le\Gamma_{\rm piv}).
3. `step_003` uses analytic-set measurability, localized area formulae, and
   monotone chart exhaustion to bound the coefficient volume of the root
   event by ((2R)^{N-1}\Gamma_{\rm piv}|I|).
4. `step_004` applies the full joint-density cap, preserving arbitrary
   correlation, and takes the law and interval suprema.
5. `step_005` computes the scale-stress conditioning exactly; its accepted
   target also adds the exact uniform-law wedge probability that creates the
   controlling goal-fidelity defect.
6. `step_006` proves the two monic pivot estimates, identifies the affine
   family with the monic polynomial exactly, and recovers the stated baseline
   constant through `step_004`.

## Attempted Claim

Under `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
`assump:joint-density-cap`, the fixed affine family has
\(\Gamma_{\rm piv}(b,F;R)<\infty\), and every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(|I|>0\) satisfy
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|,
\]
with the same constant bounding the nested supremum over all admissible,
arbitrarily correlated laws and all positive-length intervals.  For the
scale-stress family,
\(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\), and under the uniform
law on \([-1,1]^2\), the root probability on \([0,\epsilon]\) is exactly
\(\epsilon/(4\delta)\) for \(0<\epsilon\leq\delta\leq1\).  For every
integer \(d\geq1\), the exact monic lower-coefficient family satisfies, on
every compact localization,
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\leq d+\frac{Rd(d-1)}2,
\]
and every \(\mu\in\mathcal D_{d,R,\kappa}\) and bounded interval
\(I\subset\mathbb R\) satisfy
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|I|.
\]
The coefficient of \(\theta^d\) is deterministic and remains outside the
\(d\)-dimensional random lower-coefficient law.  All bounds are ordinary
probability statements with no hidden constants or independence premise.
This is a `material_partial` theorem: polynomial general-instance control of
\(\Gamma_{\rm piv}\) from
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other Pfaffian-format data
remains unresolved.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_SKETCH_FLAW

## Audit Summary

- Goal coverage: The derivation covers fixed-family finiteness, the affine
  root-probability bound and nested supremum, the binding
  (Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta) specialization, and the
  exact monic specialization. It also promotes an additional uniform-law
  (epsilon/(4\delta)) probability identity into the accepted roadmap and
  final theorem, so exact fidelity to the authoritative goal fails.
- Roadmap or step coverage: All six accepted sketch steps have current
  proof/review pairs and are represented in dependency order. Structural,
  rigor, and citation reviewers return contract-valid `BLOCKING` verdicts at
  depths `step`, `sketch`, and `step`, targeting `/proof-step step_005`,
  `/proof-sketch`, and `/proof-step step_003`, respectively; the adversarial
  reviewer returns a contract-valid `PASS`. The deepest valid blocker is the
  sketch-level goal drift, not the result of a vote among reviewers.
- Proof-details audit: Apart from the frozen citation-verification defect, the
  mathematical interfaces are coherent: compactness supplies an available
  pivot, the chart map solves the same affine equation, the multiplicity area
  formula is used in the image-measure direction, monotone exhaustion closes
  the event, and the density cap applies to the same measurable coefficient
  set without an independence premise.
- Adversarial stress test: The adversarial reviewer found no mathematical
  counterexample after testing empty and degenerate root-feasible sets,
  (N=1), ties, tangent and infinite root fibers, correlated densities,
  (delta)-scaling, and monic boundary cases. Its concerns about possible
  emptiness of (mathcal D_{N,R,\kappa}) when (A<1), one underfull box, and
  the `step_005` digest drift were explicitly nonblocking; the digest remains
  blocking here because the structural specialized reviewer classified it so.
- LaTeX export structure/provenance gate: The compile entry, five required
  content files, style, bibliography style, and bibliography exist. The
  required five sections, three stable numbered assumptions, six appendix
  step subsections, and final main-theorem proof are present. Static scans find
  no forbidden workflow provenance, audit scaffolding, template placeholder,
  malformed command fragment, or forbidden public theorem environment.
  Successful temporary-copy Tectonic/BibTeX builds of these frozen sources are
  recorded by the assembly, structural, and adversarial artifacts; the fresh
  aggregate rerun could not enter TeX processing because the installed
  Tectonic binary panicked in its networking runtime even with cached-only
  mode. The adversarial build observed only one nonblocking underfull box.
- Main theorem self-containedness: The theorem otherwise uses only setup and
  preliminary notation, cites the three numbered primitive assumptions, and
  defines its scopes, law class, coefficient dimensions, probability mode,
  and deterministic leading coefficient without appendix-local authority.
  Its sole statement-fidelity failure is the additional scale-stress
  probability target.
- Assumption provenance gate: The theorem-facing assumptions are precisely the
  three primitive setting conditions. Root feasibility, pivot availability,
  measurability, event coverage, and density conversion are derived by named
  appendix results rather than hidden as admissibility or generated-object
  assumptions.
- Redundant public prose gate: The public files contain no copied sketch rows,
  dependency inventories, source-audit blocks, accepted-step narration, or
  mechanical prose debris prohibited by the aggregate contract.
- Proof-step notation surface gate: Reusable setting quantities remain public;
  chart domains, exhaustion levels, compactness witnesses, wedge variables,
  and localization devices remain appendix-local or proof-local. No helper
  dictionary leaks into the theorem.
- Theorem readability and notation economy: The main theorem has a concise
  three-part reader-facing interface. Public constants and functions are
  defined from setting quantities, and the appendix exposes rather than hides
  the compactness, Jacobian, exhaustion, density, wedge, and monic
  calculations.
- Explicit-rate contract: The authorized bounds state all exposed variables,
  exact constants, ordinary-probability mode, interval scope, arbitrary-law
  uniformity, fixed family descriptors, and norm/measure conventions, with no
  hidden constants or absorbed terms. The extra
  (epsilon/(4\delta)) identity is internally exact but is unauthorized by
  `setting.md`, which is the controlling rate-scope defect.
- Rate Specialization Bridge: The affine coefficient identity
  (kappa(2R)^{N-1}=A/(2R)), the exact scale conditioning, and the monic
  specialization are proved by displayed equalities and inequalities. No
  auxiliary parameter, probability conversion, or term absorption is hidden.
- Baseline-reduction check: The monic family keeps the leading coefficient
  deterministic, retains the original (d)-dimensional lower-coefficient
  law, and recovers exactly
  (kappa(2R)^{d-1}(d+Rd(d-1)/2)|I|) through the general affine theorem;
  no conservative loss replaces the baseline conclusion.
- LaTeX appendix full-derivation gate: Exhaustive, not representative,
  source-to-appendix comparison covered all 21 accepted local units in
  `step_001` through `step_006`, every invoked cited-result application and
  assumption discharge, all boundary cases, and all six target-step
  assemblies. The appendix preserves the substantive definitions, equations,
  inequality chains, compactness/measurability arguments, area-formula object
  mapping, exhaustion, density conversion, wedge integration, and monic
  localization; no source unit is unaccounted for by compression.
- LaTeX export citation/reference gate: All external citation keys exist in
  `reference.bib`; all 87 labels are unique, and static parsing found no
  unresolved internal target or malformed citation/reference command. The
  blocking defect is source-level: the theorem-critical analytic-set results
  and equal-dimensional area formula inherited from `step_003` have only
  whole-book citations, without verifiable theorem/proposition/section/page
  locators for the exact statements used.
- LaTeX export synchronization: All 31 binding SHA-256 values match the
  authoritative manifest. The `COMPLETE` assembly report and public theorem
  are synchronized with each other, including the unauthorized probability
  clause; that synchronization does not cure their mismatch with
  `setting.md`. The source direction remains consistently labeled
  `material_partial`, and polynomial general-instance control of
  (Gamma_{\rm piv}) from Pfaffian-format descriptors remains explicit and
  unresolved.

## Critical Issues

1. Rigor reviewer and aggregate exact-goal gate; `proof_sketch.md` Rate
   Objective R2, `step_005`, `assembly_report.md`, and the scale-stress part of
   `latex_template/3_main.tex`: the binding setting asks only for
   (Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta), but the accepted roadmap
   and final theorem add the uniform-law identity
   (Pr[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0]=\epsilon/(4\delta)). The identity is
   proved correctly, but it adds a law, parameter, quantifier range, and
   theorem conclusion outside the authoritative target. Because the drift is
   embedded in the accepted sketch and a step target, an assembly-only or
   isolated step edit would leave the accepted interfaces inconsistent.
   Selected repair depth: `sketch`; target: `/proof-sketch`.
2. Citation reviewer; `proof_steps/step_003/proof.md` and the corresponding
   analytic-set and area-formula uses in `latex_template/5_appendix.tex`: the
   continuous-image/projection/universal-measurability machinery and the
   equal-dimensional Lipschitz area formula are theorem-critical, but their
   citations identify only the Kechris and Azais--Wschebor books, not a
   verifiable theorem, proposition, section, or page containing the exact
   statement used. This prevents independent source-fidelity verification of
   measurability and the multiplicity-safe image-measure inequality. Repair
   must locate and faithfully restate the exact results, preserve hypotheses
   and nonoutputs, and receive a fresh same-step review. Selected repair
   depth: `step`; target: `/proof-step step_003` followed by
   `/proof-step-review step_003`.
3. Structural reviewer; `proof_steps/step_005/proof.md` and its accepted
   `review.md`: the declared `step_001/review.md` dependency is recorded as
   `c935a43af6c57c18a18af36c36ce74083a6c04339e489`, whereas the binding
   SHA-256 is
   `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`.
   The intended dependency exists and the paper derivation is self-contained,
   but the accepted proof/review pair is not identity-traceable under the
   dependency contract. Repair requires a corrected `step_005` artifact and a
   fresh same-step review. Selected repair depth: `step`; target:
   `/proof-step step_005` followed by `/proof-step-review step_005`.

## Failure-Type Rationale

The branch contains substantial, apparently correct mathematical progress and
passes the independent all-step appendix-coverage, public-structure,
assumption-provenance, rate, baseline, notation, hygiene, and source-direction
checks. It cannot be accepted while three contract-valid specialized blockers
remain. The deepest blocker is the theorem-target expansion already encoded in
the accepted sketch, so repairing only the assembly or either affected step
cannot restore a single authoritative roadmap. A same-setting sketch revision
can remove or explicitly demote the nonbinding wedge-probability clause while
preserving the binding affine, scale-conditioning, and monic goals; no primitive
assumption, model, scope, metric, exposed dependence, or success criterion must
change. The controlling failure is therefore `PROOF_SKETCH_FLAW`, not
`IDEA_FAIL`. The two step-depth citation and dependency blockers remain
mandatory downstream repairs after the revised sketch is accepted.

## Suggested Next Action

/proof-sketch

## Retry Mode

revise_sketch
