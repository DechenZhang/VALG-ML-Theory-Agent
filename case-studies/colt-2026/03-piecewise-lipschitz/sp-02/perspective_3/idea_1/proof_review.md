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

The accepted sketch-attempt-3 roadmap has six theorem-level producers in an
acyclic dependency graph:

1. `step_001` proves cube-supported root feasibility, compactness of
   $K_R$, positive available-pivot margin on nonempty $K_R$, and strict
   fixed-family finiteness of $\Gamma_{\rm piv}$, including the empty branch.
2. `step_002` uses `step_001` to construct measurable least-pivot
   cells, exact denominator exhaustion, original-coordinate chart maps, and
   the selected-chart velocity inequality.
3. `step_003` uses `step_001` and `step_002` to prove analytic
   and Lebesgue measurability, exact chart coverage, the multiplicity-safe
   area sweep, and the coefficient-volume certificate.
4. `step_004` uses `step_001`, `step_003`, and the primitive
   full joint-density cap to prove the pairwise probability inequality and
   the exact nonempty/vacuous ordered-supremum branches.
5. `step_005` uses the common `step_001` interface and the scale-stress
   family to prove $\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta$.
6. `step_006` uses `step_001` and only the pairwise output of
   `step_004` to prove the original-space affine-monic presentation,
   two-pivot conditioning bound, and exact all-bounded-interval baseline.

The appendix follows that dependency order and ends with a proof of the main
theorem from named public results.

## Attempted Claim

Under the three stable primitive assumptions in `setting.md`, the assembled
bundle proves the unconditional affine coordinate-pivot sweep theorem:
`Gamma_piv(b,F;R)` is finite; every admissible full joint law and every
positive-length interval satisfy

\[
\Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|;
\]

and the interval-first, law-second supremum has the literal extended-real
empty-index semantics from the formalized goal. It is a finite nonnegative
capacity only when `A >= 1` and `|Theta| > 0`.

The bundle also proves the exact scale-stress identity
`Gamma_piv(b_delta,F_delta;1)=1/delta` for every `0 < delta <= 1`, and the
exact monic specialization with deterministic leading coefficient,

\[
\Gamma_{\rm piv}(b_d,F_d;R)\leq d+\frac{R d(d-1)}2,
\]

and, for every bounded interval and every admissible arbitrarily correlated
law on the lower coefficients,

\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)|I|.
\]

There are no hidden constants or probability, horizon, norm, or measure mode
changes. The progress type remains `material_partial`: no polynomial
general-instance bound on `Gamma_piv` in Pfaffian presentation data is
claimed.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The public theorem proves the exact unconditional
  `material_partial` goal: strict fixed-family finiteness, the exact
  pairwise and ordered-supremum bounds with ordinary probability and arbitrary
  correlated full joint densities, the literal $-\infty$ empty-index
  branches, the exact $1/\delta$ certificate, and exact affine-monic
  recovery. It explicitly leaves polynomial general-instance or
  presentation-format control of $\Gamma_{\rm piv}$ unresolved and does not
  imply a full general-instance solution.
- Roadmap or step coverage: PASS. All six required proof/review pairs bind
  sketch attempt 3, their exact Step IDs, unit attempt 1, matching current
  proof digests, and raw `ACCEPTED` status. The dependency graph
  $1\to2$, $(1,2)\to3$, $(1,3)\to4$, $1\to5$, and $(1,4)\to6$ is closed,
  acyclic, and preserved by final assembly.
- Proof-details audit: PASS. The aggregate independently compared all 24
  accepted non-atomic local units, every invoked cited-result application,
  and every one of the six Target-Step Assembly arguments with the public
  appendix. The four specialized diagnostics, global artifacts, and assembly
  report were used only as diagnostic context and did not discharge any proof
  obligation.
- Adversarial stress test: PASS. The derivations cover $N=1$; $d=1$, $d=2$,
  and $d=6$ (where the common monic coefficient is $6+15R$); empty $K_R$;
  $A<1$; zero-length $\Theta$; empty, singleton, open, closed, and half-open
  intervals; $\theta=0,\pm1$; both negative and positive outer-chart values;
  $\delta=1$; tangent, multiple, critical, infinite, and identically-zero
  fibers; pivots approaching zero; coefficient-cube faces and corners;
  probability upper bounds exceeding one; arbitrary coefficient correlation;
  and every single-empty and double-empty literal $-\infty$ convention.
- LaTeX export structure/provenance gate: PASS. The nine canonical files are
  present and nonempty; `main.tex` loads the five content files in order,
  uses `arxiv.sty`, selects `ims.bst`, and loads
  `reference.bib`. The required sections, three stable numbered
  assumptions, six mathematical appendix subsections, and final main-theorem
  proof are present. The 33 labeled theorem/assumption environments are
  unique, environments are balanced, and no forbidden workflow, provenance,
  audit-scaffolding, placeholder, claim, hypothesis, or invariant content is
  public.
- Main theorem self-containedness: PASS. Every theorem-facing object,
  convention, primitive assumption, interval semantic, conditioning
  functional, specialization, descriptor, probability mode, and dependence
  is defined in the setup, preliminaries, or theorem before use. The theorem
  contains no appendix-local result, proof-step ID, local unit ID, or
  proof-local label.
- Assumption provenance gate: PASS. Only the three stable primitive
  assumptions are theorem-facing. Root feasibility, available pivots,
  finiteness, measurability, coverage, volume control, branch nonemptiness,
  and specialization facts are derived by named appendix results before
  consumption; no generated condition or derived invariant is assumed.
- Redundant public prose gate: PASS. Public TeX contains no dependency
  inventories, sketch-row narration, standalone object-mapping or assumption-
  discharge blocks, producer/reviewer status, branch-local paths, mechanical
  translation debris, or redundant workflow summaries.
- Proof-step notation surface gate: PASS. Public notation is restricted to
  setting-derived and theorem-essential objects. Pivot margins, exhaustion
  thresholds, chart-local maps, Lipschitz localizations, reindexing variables,
  and affine-hyperplane section variables remain appendix-local or proof-local
  and do not become theorem assumptions or hidden constants.
- Theorem readability and notation economy: PASS. The main theorem has a
  concise reader-facing fixed-family interface and five displayed conclusions,
  not an admissibility dictionary. Technical chart and measure constructions
  are confined to named appendix results with visible derivations.
- Explicit-rate contract: PASS. The bundle exposes $N,R,\kappa,A$,
  $\Gamma_{\rm piv}$, $|I|$, $\delta$, $d$, and every literal coefficient;
  declares fixed family descriptors, ordinary probability, static interval
  scope, and the norm/measure modes; and has no hidden constant, confidence
  parameter, horizon, auxiliary tolerance, clipping, independence premise, or
  probability conversion.
- Rate Specialization Bridge: PASS. The named affine-monic bridge proves the
  compact localization, exact two-pivot inequalities, substitution into the
  pairwise theorem, exact $\kappa(2R)^{d-1}=A/(2R)$ algebra, and zero-length
  completion. The scale-stress result proves the exact value by a displayed
  upper/lower sandwich. No absorption or undeclared auxiliary choice occurs.
- Baseline-reduction check: PASS. The monic specialization keeps the
  deterministic leading coefficient outside the same original $d$-dimensional
  random vector, retains the same arbitrary correlated law, and recovers the
  exact stated constant for every bounded interval, including empty and
  singleton intervals, with no conservative loss or remainder.
- LaTeX appendix full-derivation gate: PASS. All used steps, not a sample,
  passed exhaustive source-to-appendix comparison: `step_001` 3/3,
  `step_002` 5/5, `step_003` 4/4, `step_004` 4/4,
  `step_005` 3/3, and `step_006` 5/5 local units, together
  with every invoked Cited Result Application and all 6/6 Target-Step
  Assembly arguments. Definitions, equations, inequality chains, constants,
  compactness, exhaustions, monotone limits, boundary cases, source-object
  mappings, assumption discharges, and final compositions are substantive
  rather than summary-only.
- LaTeX export citation/reference gate: PASS. The repaired Kechris
  Proposition 14.4 applications use open Polish $O_j$, analytic Borel
  $D_{j,m}$, global Borel $\widetilde\Psi_j$, analytic $Z_I$ in
  $\Theta\times\mathbb R^N$, and the global continuous coefficient
  projection. Federer's equal-dimensional extended-multiplicity area formula
  is mapped to the localized original-coordinate charts with all hypotheses
  discharged. The only citation keys, `Kechris1995` and
  `Federer1969`, resolve. Exactly 76 unique compiler-bound manual
  tags (T1--T5 and A1--A71), 109 unique labels, and 115 `\eqref`
  occurrences are present; every reference is bound, with no duplicate label
  or malformed command.
- LaTeX export synchronization: PASS. `assembly_report.md` is
  contract-valid `COMPLETE` and binds an exact-copy Tectonic/BibTeX
  build of the canonical bundle to a 26-page PDF with resolved citations and
  cross-references. Current bundle hashes match that canonical input. All
  public files are ASCII with no raw control bytes and final LF; no generated
  byproduct is present. The two `wasysym` bold-to-medium font
  substitutions at sizes 8 and 6 are cosmetic and are the sole nonblocking
  reason for score 9 rather than 10.

## Critical Issues

None

## Failure-Type Rationale

All four contract-valid specialized diagnostics report raw `PASS`
with raw `None` blocker and repair fields, and there is no reviewer
disagreement to resolve. Independently, every aggregate contract gate passes:
the authoritative setting and attempted claim are identical in scope,
quantifiers, constants, modes, and `material_partial` classification;
all producer interfaces and assumptions close; all used proof material is
present in the public appendix; and the canonical export is complete,
self-contained, source-faithful, and paper-ready.

Accordingly, no assembly, step, sketch, or idea repair is justified, so the
controlling failure type is `ACCEPTED`. Acceptance does not close the
remaining source direction: polynomial general-instance control of
$\Gamma_{\rm piv}$ from Pfaffian descriptors remains unresolved and is stated
as such throughout the theorem and bridge.

## Suggested Next Action

None

## Retry Mode

none
