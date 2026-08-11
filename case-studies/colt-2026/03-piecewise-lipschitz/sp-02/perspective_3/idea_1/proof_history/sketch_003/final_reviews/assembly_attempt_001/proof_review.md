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

The accepted sketch-attempt-3 roadmap has six used steps. `step_001` proves
root feasibility, a positive available-pivot margin, and fixed-family
finiteness of `Gamma_piv`. `step_002` constructs the measurable
least-index pivot partition, denominator exhaustion, graph charts, and the
selected velocity bound. `step_003` proves analytic and Lebesgue
measurability, exact root-event coverage, and the coefficient-volume bound by
localized area formula. `step_004` converts volume to ordinary probability
under the arbitrary correlated full joint density and proves the
branch-qualified ordered suprema. `step_005` proves the exact scale-stress
identity. `step_006` proves the two-pivot monic bound and transfers the
general pairwise theorem with a deterministic leading coefficient.

The dependency graph is exactly `step_001`; `step_002 <- step_001`;
`step_003 <- step_001,step_002`; `step_004 <- step_001,step_003`;
`step_005 <- step_001`; and `step_006 <- step_001,step_004`. Every step
review binds sketch attempt 3, its exact Step ID, unit attempt 1, the matching
current proof digest, and raw `ACCEPTED` status.

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

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The assembled mathematics covers the authoritative
  unconditional exact goal and labels it exactly as `material_partial`.
  It preserves arbitrary correlated joint-density-capped coefficients,
  law- and interval-uniformity, fixed-family finiteness, the exact
  `1/delta` scale certificate, and exact affine-monic recovery. It also
  states the remaining source gap accurately: no polynomial general-instance
  bound on `Gamma_piv` in Pfaffian presentation data is claimed. All four
  contract-valid specialized diagnostics are `BLOCKING` at assembly depth
  with target `/proof-assembly`; their overlapping findings normalize to the
  three distinct critical issues below.
- Roadmap or step coverage: All six required accepted proof/review pairs pass
  the binding gate, and their dependency graph is acyclic, earlier-only, and
  synchronized with accepted sketch attempt 3. No global diagnostic,
  specialized review, assembly report, stale aggregate, or history artifact
  was used as proof authority.
- Proof-details audit: The aggregate source comparison was exhaustive, not
  representative or sampled. Every used step passed source-to-appendix
  coverage: 6/6 accepted steps, all 24/24 non-atomic local units, every invoked
  cited-result or standard-tool application, and all 6/6 Target-Step Assembly
  arguments have substantive paper-facing counterparts. No omitted proof
  obligation or unreviewed mathematical bridge was found.
- Adversarial stress test: The proof withstands the audited empty-`K_R`,
  near-zero pivot, tie, endpoint, tangent and multiple-root, infinite-fiber,
  `N=1`, `d=1`, `d=2`, empty/singleton interval, empty law class,
  degenerate `Theta`, arbitrary-correlation, and scale-boundary cases. The
  only adversarial blocker is the corrupted public (T2) qualifier. Stating the
  endpoint and singleton `C^1` convention more explicitly remains a
  nonblocking paper-readiness improvement.
- LaTeX export structure/provenance gate: The bundle contains exactly the nine
  required files and has the required five-section structure, numbered stable
  assumptions, six appendix step subsections, final main-theorem proof, and
  only allowed public theorem-style environments. Focused scans found no
  workflow provenance, forbidden audit scaffolding, template placeholder, or
  malformed bare reference/citation command. A clean Tectonic build from
  `latex_template/` completed all TeX/BibTeX/rerun passes and produced 26
  pages with resolved references and citations. The source nevertheless fails
  public hygiene because of the single `0x0D` byte in `3_main.tex`.
  The final log has two nonfatal `wasysym` font-substitution warnings, so the
  assembly report's warning-free provenance is inaccurate but nonblocking.
- Main theorem self-containedness: Apart from the malformed interval qualifier
  in (T2), the theorem is reader-facing and self-contained from the setup and
  preliminaries. It does not cite appendix-local labels or expose step-local
  dictionaries, and it declares fixed-family scope, modes, dependencies, and
  the unresolved general-instance boundary.
- Assumption provenance gate: Passed. The public theorem uses only the three
  primitive assumptions. Root feasibility, pivot availability, finiteness,
  chart measurability, swept-volume control, index-class nonemptiness, and
  specialization facts are derived before use rather than hidden as
  admissibility assumptions.
- Redundant public prose gate: No blocking workflow or audit prose remains.
  The phrase "ordered law-then-interval expression" at
  `5_appendix.tex:1151` is a nonblocking wording defect because the same
  sentence, formulas, and proof correctly take the interval supremum first and
  the law supremum second.
- Proof-step notation surface gate: Passed. Public-facing quantities are
  confined to the setup, preliminaries, and theorem; chart, exhaustion,
  localization, and proof-control objects remain appendix-local or
  proof-local. Assembly did not promote an unnecessary accepted-step
  dictionary into the main theorem.
- Theorem readability and notation economy: Passed apart from the (T2) byte
  corruption. The main theorem is compact enough to read without an
  admissibility dictionary, all public constants have provenance, and the
  appendix shows derivations rather than replacing them with helper notation.
- Explicit-rate contract: Passed. The general bound exposes
  `N,R,kappa,A,Gamma_piv,|I|` with no hidden constant; the probability,
  horizon, norm, fixed-family, and arbitrary-correlation modes are explicit.
  The scale and monic bounds likewise expose every dependence, and no
  auxiliary tolerance, confidence conversion, clipping, or silent term
  absorption occurs.
- Rate Specialization Bridge: Passed. The scale identity is derived exactly,
  and the named monic bridge verifies the deterministic leader, the constant
  and top pivot regions, the `Gamma_piv` bound, interval handling, and exact
  transfer of the general coefficient. No prose-only domination or
  probability-mode conversion is used.
- Baseline-reduction check: Passed. Setting
  `b_d(theta)=theta^d` and
  `F_d=(1,theta,...,theta^{d-1})` recovers the exact monic event through the
  same affine theorem, with only the lower coefficients random, no
  independence premise, and no conservative loss.
- LaTeX appendix full-derivation gate: Passed for every used step, not a
  sample. Direct comparison accounts for every non-atomic local derivation,
  cited application, boundary branch, and target-step conclusion across
  `step_001` through `step_006`; the appendix's compression removes only
  workflow metadata or genuine repetition and leaves no proof gap.
- LaTeX export citation/reference gate: The 33 theorem/assumption labels and
  all citation keys resolve uniquely, with no duplicate or missing target.
  Acceptance is blocked because the public wording and object mapping for
  Kechris Proposition 14.4 overstate its exact source class, and because 76
  manually tagged equations are cited through 115 manually repeated
  identifiers with zero equation `label`/`eqref` bindings.
- LaTeX export synchronization: The public claim, accepted steps, and
  authoritative setting are mathematically synchronized, and no stronger
  theorem or new assumption was introduced. The four specialized reviews
  agree on assembly depth; differences in which overlapping defects they
  expose do not remove any obligation. No aggregate-only deeper blocker was
  found, and the accepted producer interfaces already contain the exact
  Polish-space objects needed for the Kechris correction.

## Critical Issues

1. [Structural, rigor, citation, and adversarial; assembly check]
   `latex_template/3_main.tex:27`, byte offset 903, contains a literal
   carriage return `0x0D` in the (T2) interval qualifier. The stored fragment
   is `I\ {<0x0D>m an\ interval}`, so TeX treats the byte as an endline and
   the public theorem no longer states the intended interval predicate
   cleanly. This corrupts an exact quantifier, violates the control-byte gate,
   and makes (T2) unsuitable as a paper-facing theorem statement. Repair depth
   is `assembly`; target `/proof-assembly`.
2. [Rigor and citation; aggregate reference check] Across the public bundle,
   all 76 equation identities (T1--T5 and A1--A71) are created with manual
   `\tag{...}`, while 115 theorem-critical references merely repeat those
   identifiers as text and zero use a bound equation `\label` with
   `\eqref` or `\ref`. Current string coincidence does not bind a proof
   dependency to its formula, so later editing can silently detach the
   Kechris/Federer chain, specialization bridges, or final assembly from the
   equations cited as authority. Add stable equation labels and replace every
   semantic manual reference with a bound reference, preserving visible
   numbering if desired. Repair depth is `assembly`; target
   `/proof-assembly`.
3. [Citation] `latex_template/5_appendix.tex:551` states Kechris,
   Proposition 14.4 for a Borel map defined on an analytic subset of a
   standard Borel space, which is broader than the cited proposition's exact
   Polish-space formulation. State and instantiate the exact result using the
   open Polish ambient space `O_j`, analytic set `D_{j,m}`, global Borel
   map `widetilde{Psi}_j:O_j -> R^N`, and, for `Z_I`, the global
   coefficient projection from the Polish ambient product. The accepted
   interfaces already provide these objects, but until the public statement
   and mapping are corrected the citation does not support the words
   attributed to it. Repair depth is `assembly`; target
   `/proof-assembly`.

## Failure-Type Rationale

The controlling and deepest required repair is assembly-level. Each blocker is
localized to public TeX generation or reference binding: the accepted proofs
already establish the intended (T2) quantifiers, every equation-level
derivation, and the exact Polish ambient objects needed to apply Kechris
Proposition 14.4. No accepted step interface or sketch dependency must change,
and no theorem-contract weakening is needed. Editing only this review or the
assembly report would leave the defective public bundle in place, so the
smallest controller-supported retry is a fresh `/proof-assembly`. The branch
has substantial complete mathematical progress, but the nonempty critical
issue set caps the score at 6.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly

