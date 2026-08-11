# Proof Review

## Formalized Setting

- Basic setup:
  Fix integers \(N\geq 1\), \(q\geq 0\), and \(m\geq 0\), a number \(T>0\), and a nondegenerate compact interval
  \(\Theta\subseteq[-T,T]\). Let \(U\supseteq\Theta\) be an open interval. In the exact
  Balcan--Nguyen--Sharma convention specialized to ambient parameter dimension \(p=1\), let
  \(\eta=(\eta_1,\ldots,\eta_q)\) be a common triangular Pfaffian chain on \(U\),

  \[
  \eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
  \qquad 1\leq j\leq q,
  \]

  and let \(Q_i(\theta,y_1,\ldots,y_q)\), \(0\leq i\leq N\), be output polynomials. Use total degree and set

  \[
  M:=\max_{1\leq j\leq q}\deg P_j\quad(q\geq1),\qquad M:=0\quad(q=0),
  \qquad
  \Delta:=\max_{0\leq i\leq N}\deg Q_i.
  \]

  Define

  \[
  F_i(\theta):=Q_i(\theta,\eta_1(\theta),\ldots,\eta_q(\theta)),
  \qquad
  \widetilde F(\theta):=(F_0(\theta),F_1(\theta),\ldots,F_N(\theta)),
  \]

  and write \(F=(F_1,\ldots,F_N)\). The coordinate \(F_0\) is deterministic; only the coefficients multiplying
  \(F_1,\ldots,F_N\) are random.

  Let \(B:U\to\mathbb R^{(N+1)\times(N+1)}\) be a supplied polynomial matrix with

  \[
  B_{rs}(\theta)=\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell,
  \qquad 0\leq r,s\leq N.
  \]

  Set \(T_*:=\max\{1,T\}\) and define the static coefficient-height certificate

  \[
  \widehat\Lambda_{B,T}
  :=\left(
  \sum_{r=0}^{N}\sum_{s=0}^{N}
  \left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2
  \right)^{1/2}.
  \]

  The coefficient-evaluation inequality

  \[
  \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
  \leq \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm F}
  \leq\widehat\Lambda_{B,T}
  \]

  is a named derived bridge to be proved from the displayed coefficients, not an additional assumption.

  Under the anchored derivative-closure condition below, \(F(\theta)\neq0\) on \(\Theta\). Hence define

  \[
  \gamma_F(\theta):=\frac{F(\theta)}{\|F(\theta)\|_2},
  \qquad
  \Gamma_{\mathrm{proj}}(F)
  :=\sup_{\theta\in\Theta}\|\gamma_F'(\theta)\|_2.
  \]

  This only defines a derived conditioning quantity; neither its finiteness nor an upper bound on it is assumed.

  For \(R>0\) and \(0<\kappa<\infty\), let \(\mathcal D_{N,R,\kappa}\) be the class of all Borel probability laws
  \(\mu\) on \(\mathbb R^N\) with a Lebesgue density \(f_\mu\) supported on \([-R,R]^N\) and satisfying
  \(\|f_\mu\|_\infty\leq\kappa\). No coordinate-independence condition is imposed. Assume this class is nonempty,
  set

  \[
  \mathcal D:=\mathcal D_{N,R,\kappa},\qquad A:=(2R)^N\kappa,
  \]

  and define

  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  :=\sup_{\mu\in\mathcal D}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
  \]

  For the affine family, define

  \[
  \phi_\alpha(\theta):=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
  \qquad
  H_\theta:=\{a\in\mathbb R^N:F_0(\theta)+\langle a,F(\theta)\rangle=0\},
  \]

  and

  \[
  C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
  :=\sup_{\mu\in\mathcal D}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}.
  \]

  Whenever \(F_j(\theta)\neq0\), index
  \(\beta=(\beta_i)_{i\neq j}\in[-R,R]^{N-1}\) by the nonpivot coordinates and define

  \[
  T_j(\theta,\beta)
  :=-\frac{F_0(\theta)}{F_j(\theta)}
  -\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
  \]

  Let \(\Psi_j(\theta,\beta)\in\mathbb R^N\) insert \(T_j(\theta,\beta)\) in coordinate \(j\) and insert
  \(\beta_i\) in coordinate \(i\neq j\). Then
  \(|\det D\Psi_j|=|\partial_\theta T_j|\). This chart is an equivalent local representation of the same affine
  coefficient-space sweep; it is not a separate root theorem.

- Technical assumptions:
  - `assump:parameter-regime` (Static one-dimensional parameter regime):
    \(N\geq1\), \(q\geq0\), \(m\geq0\), \(T>0\), \(R>0\), and \(0<\kappa<\infty\), with nondegenerate compact
    \(\Theta\subseteq[-T,T]\), an open chain domain \(U\supseteq\Theta\), and nonempty
    \(\mathcal D_{N,R,\kappa}\). All presentation degrees, matrix coefficients, and support parameters are finite
    and fixed before a law or interval is selected.
  - `assump:balcan-common-chain` (Balcan common-chain presentation):
    The chain and outputs satisfy the displayed triangular differential equations with
    \(\deg P_j\leq M\) and \(\deg Q_i\leq\Delta\). Thus \(q\) is chain length, \(M\) is chain degree,
    \(\Delta\) is output-function degree, and \(p=1\), exactly as in Balcan--Nguyen--Sharma (2025).
  - `assump:anchored-derivative-closure` (Anchored static derivative certificate):
    There is a fixed \(j_*\in\{1,\ldots,N\}\) such that \(Q_{j_*}\equiv1\), and the supplied polynomial matrix \(B\)
    satisfies the exact identity

    \[
    \widetilde F'(\theta)=B(\theta)\widetilde F(\theta)
    \qquad\text{for every }\theta\in U.
    \]

    In particular \(F_{j_*}\equiv1\), so \(\|F(\theta)\|_2\geq1\). The matrix \(B\), its coefficient list, and
    \(\widehat\Lambda_{B,T}\) are deterministic instance data fixed before \(\alpha\) is sampled. No
    projective-speed, lower-norm beyond the literal anchor, transversality, or swept-area bound is assumed.
  - `assump:cube-density-laws` (Arbitrarily correlated capped joint laws):
    The coefficient vector \(\alpha\) is drawn from an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). The only
    distributional inputs are cube support and the full joint-density cap; the coordinates may be arbitrarily
    correlated.

## Formalized Goal

- Goal statement:
  Prove one anchored derivative-closure Pfaffian coefficient-sweep theorem, in exact-goal mode, with all of the
  following inseparable clauses.

  **Static certificate bridge.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, and
  `assump:anchored-derivative-closure`, derive

  \[
  \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}\leq\widehat\Lambda_{B,T}.
  \]

  When \(F_0\equiv0\), let \(B_F\) be the \(N\times N\) block of \(B\) indexed by \(1,\ldots,N\). The closure
  identity then gives \(F'=B_FF\), and the theorem must derive

  \[
  \gamma_F'
  =(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
  \qquad
  \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
  \]

  **Single affine swept-area bound.** Under all four assumptions, prove simultaneously for every
  \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\) that

  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
  \,d\mathcal H^{N-1}(a)\,d\theta\\
  &\leq
  \kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}|I|\\
  &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
  \end{aligned}
  \]

  The second inequality must be derived from the root-section identities and inequalities

  \[
  |F_0(\theta)|=|\langle a,F(\theta)\rangle|
  \leq R\sqrt N\|F(\theta)\|_2,
  \]

  \[
  \|\widetilde F(\theta)\|_2\leq\sqrt{1+NR^2}\|F(\theta)\|_2,
  \qquad
  \|(1,a)\|_2\leq\sqrt{1+NR^2},
  \]

  together with the static certificate bridge and the translated-section estimate

  \[
  \mathcal H^{N-1}(H_\theta\cap[-R,R]^N)
  \leq\sqrt2(2R)^{N-1}.
  \]

  The latter must follow from central maximality for sections of the symmetric cube and Ball's central
  cube-section bound. Consequently,

  \[
  C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
  \leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
  \]

  Equivalently, for every measurable partition \(I=\bigsqcup_{j=1}^N E_j\) such that \(F_j\neq0\) on \(E_j\),
  prove from the same coefficient-space area formula that

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{|T_j(\theta,\beta)|\leq R\}
  |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
  \]

  and hence the same inequality after dropping the indicator. The proof must use area/coarea with multiplicity,
  first on the exhaustion sets
  \(E_{j,n}:=\{\theta\in E_j:|F_j(\theta)|\geq1/n\}\) and then as \(n\to\infty\), so no uniform pivot margin is
  assumed and tangent and multiple roots are allowed. The coefficient set for which
  \(F_0+\langle a,F\rangle\equiv0\) is empty or a proper affine subspace because \(F_{j_*}\equiv1\), and therefore
  has zero probability under every admissible law; it may not be hidden as an exclusion assumption.

  **Sharper homogeneous source bound.** In the specialization \(F_0\equiv0\), the same area formula, the central
  section geometry, and the derived projective identity must give

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
  \]

  uniformly over every admissible law and positive-length interval, and hence

  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
  \]

  **Exact affine-monic baseline specialization.** For every integer \(d\geq1\), every bounded interval
  \(J\subset\mathbb R\), and every possibly correlated
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with joint density at most \(\kappa\), specialize the same
  affine theorem on a compact interval \(\Theta\supseteq J\) to

  \[
  F_0(\theta)=\theta^d,
  \qquad
  F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
  \qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
  \]

  This presentation has

  \[
  q=0,\quad M=0,\quad\Delta=d,\quad N=d,\quad m=0,\quad A=(2R)^d\kappa,
  \qquad
  \widehat\Lambda_{B,T}=\left(\sum_{k=1}^{d}k^2\right)^{1/2},
  \]

  where \(B\) is the constant derivative-shift matrix of the augmented monomial tuple. The anchor is
  \(F_1\equiv1\), and the deterministic leading coefficient remains outside the \(d\)-dimensional random vector.
  For \(d\geq2\), use the pivot \(\alpha_0\) on \(J\cap\{|\theta|\leq1\}\) and the pivot
  \(\alpha_{d-1}\) on \(J\cap\{|\theta|>1\}\). The corresponding maps are

  \[
  T_1(\theta,\beta)=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \qquad
  T_d(\theta,\beta)=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
  \]

  and the theorem must derive

  \[
  |\partial_\theta T_1|
  \leq d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \qquad(|\theta|\leq1),
  \]

  \[
  |\partial_\theta T_d|
  \leq1+R\sum_{k=0}^{d-2}(d-1-k)
  =1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \qquad(|\theta|>1).
  \]

  For \(d=1\), use the sole pivot \(\alpha_0\) on all of \(J\), for which
  \(|\partial_\theta T_1|=1\). Dropping the chart indicator and integrating the remaining \(d-1\) coordinates over
  their cube must make this same affine sweep theorem yield exactly

  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|J|.
  \]

  This recovery may not use an independent citation/proof of the polynomial theorem or a fictitious random
  leading coordinate.

  **Counter-example 1 scale audit.** For \(0<\delta\leq1\),
  \(\Theta=[-1,1]\), \(F_0=0\), and \(F=(1,\theta/\delta)\), record

  \[
  q=0,\quad M=0,\quad\Delta=1,\quad N=2,\quad m=0,
  \qquad
  \widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
  \]

  where the constant certificate has the single nonzero derivative entry \(1/\delta\). With \(R=1\),
  \(\kappa=1/4\), and \(A=1\), the homogeneous conclusion gives
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq1/\delta\). The proof must also verify for the uniform law on
  \([-1,1]^2\) that

  \[
  \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}
  \qquad(0<\epsilon\leq\delta),
  \]

  so the declared coefficient height quantitatively records the necessary \(1/\delta\) scale.

  Every displayed constant is literal, with no hidden constants and no confidence parameter. The probability mode
  is ordinary probability for each fixed law; the interval mode is uniform over all positive-length subintervals;
  and all vector, operator, and Frobenius norms are Euclidean. The fixed instance data are
  \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\), while \(\mu\) and \(I\) range over their suprema. The exposed bound
  depends linearly on the explicit coefficient height \(\widehat\Lambda_{B,T}\); once that supplied certificate is
  fixed, its additional dependence on \(q,M,\Delta\) is exactly degree zero, and no dependence is suppressed.

## Reviewed Roadmap

The accepted sketch-attempt-2 roadmap uses a common coefficient-incidence trunk and three specialization
branches. Steps `step_001`--`step_004` establish the static certificate, persistent-root nullity, exhausted
pivot-chart sweep, and coordinate-free section parametrization. Steps `step_005` and `step_006` establish
the translated cube-section and affine normal-velocity bounds, and `step_007` assembles the general affine
rate. Step `step_008` proves the sharper homogeneous projective rate. Steps `step_009` and `step_010`
prove and re-export the exact deterministic-leading-coefficient affine-monic package. Step `step_011`
performs the Counter-example scale audit, and `step_012` conjoins the six named direct producer interfaces
without adding a claim.

All twelve accepted proof/review pairs are current and dependency-closed. Their unit-attempt vector is
\((2,1,1,1,1,1,1,1,2,1,1,1)\), their local-unit counts are
\((5,3,5,4,3,3,3,5,7,4,6,1)\), and the total is \(49\). All producer attempts remain within their configured
budgets. The current accepted-sketch worker inventory contains the two required run-scoped workers and exactly
36 distinct real Perspective 2 binding handles: twelve perspective roles and two step-scoped roles for each of
the twelve Step IDs. Historical abandoned-sketch rows are nonbinding process history.

## Attempted Claim

The assembled bundle proves exactly the unconditional anchored derivative-closure Pfaffian coefficient-sweep
goal in `setting.md`, with deterministic presentation fixed before the law and interval are selected, and with
all of the following clauses inseparable.

Under `assump:parameter-regime`, `assump:balcan-common-chain`, and
`assump:anchored-derivative-closure`,

\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq \widehat\Lambda_{B,T}.
\]

If \(F_0\equiv0\), then \(F'=B_FF\) and

\[
\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]

Under all four stable assumptions, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length
interval \(I\subseteq\Theta\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq\kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}|I|\\
&=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|,
\end{aligned}
\]

and therefore

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

For every measurable legal pivot partition \(I=\bigsqcup_{j=1}^N E_j\), the same theorem also proves

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{|T_j(\theta,\beta)|\leq R\}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
\]

and the same inequality after dropping the indicator. This is proved through finite pivot exhaustion,
area/coarea with multiplicity, monotone passage to the limit, and law-null removal of the persistent-root
affine subspace, without a pivot-margin, simple-root, or transversality assumption.

When \(F_0\equiv0\), the sharper homogeneous conclusion is

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
\]

and

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

For every integer \(d\geq1\), bounded interval \(J\), and possibly correlated full-density law on
\([-R,R]^d\), the theorem internally specializes to the exact affine-monic presentation

\[
F_0(\theta)=\theta^d,
\qquad F_{k+1}(\theta)=\theta^k,
\qquad p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
\]

with

\[
q=M=m=0,\quad \Delta=N=d,\quad A=(2R)^d\kappa,
\qquad
\widehat\Lambda_{B,T}=\left(\sum_{k=1}^d k^2\right)^{1/2},
\]

the deterministic leading monic coefficient outside the random vector, the stated inner and outer pivot
charts, their exact derivative bounds, the \(d=1\) branch, and

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\]

For Counter-example 1, with \(F=(1,\theta/\delta)\), \(R=1\), \(\kappa=1/4\), and \(A=1\), the theorem
proves

\[
\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
\qquad
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta,
\]

and, for the selected uniform law and \(0<\epsilon\leq\delta\),

\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]

The theorem keeps the three scales \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) distinct. Every
constant is literal. Probability is ordinary probability for each fixed law, arbitrary full-joint coefficient
correlation is allowed, the interval supremum precedes the law supremum, and the Euclidean vector, projective,
operator, Frobenius, scalar, Lebesgue, and Hausdorff conventions are explicit. Once the supplied certificate is
fixed, additional dependence on \(q,M,\Delta\) is exactly degree zero. Both baseline-invariance obligations are
preserved. No claim is made that an unrestricted raw Pfaffian presentation admits the supplied
derivative-closure certificate or a polynomial presentation-format bound.

## Review Mode

split

## Review Verdict

- Score: 10
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The public theorem proves every inseparable clause of the authoritative exact-goal setting:
  the static certificate, equivalent chart form, coordinate-free affine rate and capacity, sharper homogeneous
  rate and capacity, exact deterministic-leading-coefficient monic recovery, Counter-example scale audit, and
  dependence/mode declarations. Source alignment is `full` on the declared anchored derivative-closed
  subclass. The theorem does not claim certificate existence or polynomial presentation-format control for
  unrestricted raw Pfaffian presentations. Structural, rigor, citation, and adversarial diagnostics all have
  contract-valid raw verdict `PASS`, raw `None` issue/repair fields, and no disagreement.
- Roadmap or step coverage: All twelve accepted sketch-attempt-2 producer interfaces were independently checked
  against their exact Step IDs, unit attempts, proof digests, review digests, accepted identities, dependencies,
  and configured budgets. The dependency graph closes at the accepted `step_012` conjunction. The two
  required run-scoped workers and all 36 distinct current Perspective 2 binding handles are present in
  `worker_log.md`; abandoned-sketch rows are not current provenance.
- Proof-details audit: The proof chain is derivationally sound in the original coefficient coordinates and
  preserves all quantifiers, constants, norm/measure choices, ordinary-probability mode, arbitrary coefficient
  correlation, and interval-before-law supremum order. In particular, the repaired injective affine Euclidean
  area formula states measurable \(D\), nonnegative Borel \(h\), injective affine \(\Xi=b+Lx\), the
  square-root Gram determinant, extended-real integrals, and \(k=0\), with Federer (1969), Section 3.2.3 as
  source. Its Step 004 instantiation checks \(k=N-1\), \(n=N\), \(D=\mathcal B_{j,\theta}\),
  \(\Xi=\Psi_j(\theta,\cdot)\), Borel measurability, injectivity, exact-section range, Gram determinant,
  nonnegative square root, weak boundaries, empty sections, and \(N=1\), with no orientation, multiplicity, or
  boundary-deletion factor.
- Adversarial stress test: The argument remains valid for \(N=1\), \(d=1,2\), empty and singleton intervals,
  included and excluded endpoints, zero Jacobians, pivots approaching zero, tangent, multiple, infinite, and
  persistent roots, stationary and zero-certificate branches, arbitrary coefficient correlation, negative
  outer-chart arguments, \(\theta=0\), \(|\theta|=1\), remote monic intervals,
  \(\epsilon=\delta\), positive \(\epsilon\downarrow0\), coefficient axes, and closed wedge boundaries.
  The distinct scales \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) retain their separate lower,
  probability/certificate, and section-geometric meanings.
- LaTeX export structure/provenance gate: PASS. The exact nine-file public bundle has the required five section
  files, compile entry, style, bibliography style, and bibliography database. The setup has four uniquely
  labeled numbered assumptions, preliminaries precede the main theorem, the appendix uses allowed theorem-style
  environments, contains all required step subsections, and ends with `Proof of the Main Theorem`. No workflow
  provenance, audit scaffolding, placeholders, forbidden public claim/hypothesis/invariant dependencies, or
  malformed template residue appears.
- Main theorem self-containedness: PASS. The theorem uses only setup assumptions and notation defined in the
  theoretical setup or preliminaries, plus quantities defined inline before use. It contains no appendix-local
  proof labels, step IDs, unit IDs, or proof-local dictionaries. Its segmented clauses give a readable
  reader-facing interface for the exact technical result.
- Assumption provenance gate: PASS. The four setting assumptions are the only primitive theorem-facing
  conditions. Nonvanishing, coefficient height, projective speed, persistent-root nullity, exhausted chart
  coverage, section and velocity bounds, probability bounds, monic data, and Counter-example quantities are
  derived by named accepted producers before use. No generated event, pivot margin, transversality, simplicity,
  boundedness, stability, or recurrence condition is promoted to an assumption.
- Redundant public prose gate: PASS. The public bundle contains concise mathematical exposition and no
  dependency inventories, accepted-step narration, sketch-row boilerplate, duplicated mechanical prose, or
  standalone provenance blocks in place of proof.
- Proof-step notation surface gate: PASS. Public-facing, appendix-local, and proof-local objects remain within
  their accepted scopes. Finite pivot exhaustions, image/multiplicity bookkeeping, wedge names, and local
  constants do not leak into the main theorem; essential public quantities retain direct setting or producer
  provenance.
- Theorem readability and notation economy: PASS. The theorem is organized by the six substantive clauses,
  avoids an admissibility dictionary, and exposes rather than hides the constants and specialization data
  needed to inspect the result. The preliminary notation is limited to objects used by the theorem.
- Explicit-rate contract: PASS. R1--R5 expose all variables and literal coefficients, declare no hidden
  constants, fix deterministic presentation data before laws and intervals, preserve ordinary probability,
  interval/horizon order, Euclidean norm and measure modes, and all auxiliary conditions. No tolerance,
  confidence parameter, asymptotic conversion, or suppressed \(q,M,\Delta\) dependence appears.
- Rate Specialization Bridge: PASS. The affine factor multiplication and \(A\)-identity, homogeneous radial
  cancellation and \(A\sqrt{N/2}\) identity, monic beta-volume and disjoint-cell accounting, and
  Counter-example wedge-area conversion are all displayed. No term is absorbed or simplified only in prose.
- Baseline-reduction check: PASS. The same affine coefficient sweep recovers the exact monic theorem with the
  deterministic leading coefficient outside the \(d\)-dimensional random vector, exact shift matrix,
  certificate, cells, velocities, and coefficient. The Counter-example retains the exact selected-law lower
  ratio and all-law upper/certificate scales without replacing either baseline by a surrogate.
- LaTeX appendix full-derivation gate: PASS by exhaustive comparison, not sampling. All 49 used local units
  across all twelve accepted proof steps, every invoked Cited Result Application, and every Target-Step
  Assembly were compared from source to the public appendix. Every proof obligation is substantively present.
  The sole label-shape conversion changes the Step 009 local claim into an allowed public lemma while preserving
  its full statement and proof.
- LaTeX export citation/reference gate: PASS. All four citation keys resolve to the exact bibliography objects;
  Federer Section 3.2.3, Ball's cube-slicing theorem, the Brunn--Minkowski source, and the Balcan convention are
  mapped to the objects actually used. All 542 public labels are unique, all internal references resolve, and
  no malformed commands occur. A fresh build from a byte-exact temporary copy of the nine public files ran TeX,
  BibTeX, all convergence passes, and PDF generation; the converged log and BibTeX log contain no unresolved
  references/citations, multiply defined labels, malformed commands, box warnings, or paper-readiness warnings.
- LaTeX export synchronization: PASS. The assembly-attempt-2 bundle matches the accepted setting, sketch,
  accepted step interfaces, and assembly report. The common manifest binds all 41 current proof inputs, and the
  aggregate manifest binds that common manifest plus the four fresh specialized diagnostics. The fixed
  certificate precedes laws and intervals, interval suprema precede law suprema, and no public file strengthens
  the theorem beyond the declared class.

## Critical Issues

None

## Failure-Type Rationale

There is no failure to route. All four specialized diagnostics are contract-valid PASS artifacts, and every
independent aggregate gate passes, including exact claim identity, producer-interface closure, assumption and
constant provenance, exhaustive all-used-step appendix preservation, repaired cited-result discharge, worker
provenance, budget compliance, public theorem readability, and a converged standalone TeX/BibTeX build. The
formalized full-progress goal is proved on exactly the declared anchored derivative-closed class, with neither
scope weakening nor overclaiming. Therefore `ACCEPTED` is the only aligned failure-type token, and no assembly,
step, sketch, or idea repair is supported.

## Suggested Next Action

None

## Retry Mode

none
