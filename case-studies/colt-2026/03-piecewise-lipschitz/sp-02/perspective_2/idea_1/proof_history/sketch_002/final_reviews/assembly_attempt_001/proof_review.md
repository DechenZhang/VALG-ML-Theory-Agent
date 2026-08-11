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

1. `step_001` derives anchor nonvanishing, the literal static matrix-height certificate, homogeneous block closure, the normalized projective identity, and all static boundary and baseline cases.
2. `step_002` identifies the persistent-root locus as empty or a proper affine translate, proves its Borel and Lebesgue nullity, and converts this to zero probability under every admissible full joint density.
3. `step_003` constructs measurable finite pivot exhaustions, proves exact chart Jacobians and Lipschitz control, applies the equal-dimensional area formula with multiplicity, and passes monotonically to the full affine chart sweep.
4. `step_004` converts each fixed chart to its actual affine section, cancels the pivot denominator through the section Jacobian, proves measurable partition summation, and exports the coordinate-free swept-area inequality.
5. `step_005` derives translated-section central maximality through Brunn--Minkowski, applies Ball's central cube-section theorem with exact scaling, and handles the \(N=1\) convention.
6. `step_006` derives the two exact root-section Euclidean factors and the affine normal-velocity bound \((1+NR^2)\widehat\Lambda_{B,T}\), including empty and zero-certificate branches.
7. `step_007` composes the coordinate-free sweep, section bound, and normal velocity into the general affine probability rate and ordered capacity bound.
8. `step_008` proves same-section radial cancellation, the stationary branch, the exact homogeneous coefficient algebra, the sharper projective rate, and its ordered capacity closure.
9. `step_009` gives the exact deterministic-leading-coefficient monic presentation, derivative-shift certificate, inner and outer charts, velocity bounds, and all sign, dimension, and interval-location cases.
10. `step_010` applies the accepted affine chart sweep to that exact monic presentation and exports one complete presentation, certificate, and probability wrapper, including empty and singleton intervals.
11. `step_011` computes the one-entry shear certificate, exact projective speed, both closed root wedges, selected-law probability, and the distinct \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) scales.
12. `step_012` conjoins the six direct named producer interfaces without adding a claim, assumption, constant, probability conversion, or mode change.

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

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The attempted claim is identical to the authoritative exact, unconditional `full` goal. It preserves the supplied-certificate boundary, deterministic-presentation-first quantifiers, arbitrary full-joint coefficient correlation, ordinary probability, interval-before-law suprema, exact monic baseline, and all three Counter-example scales. No unrestricted-certificate theorem is asserted.
- Roadmap or step coverage: All twelve accepted producer interfaces bind sketch attempt 2, their exact Step IDs and unit attempts, the matching live proof digests, and raw `ACCEPTED` reviews. The acyclic dependency graph closes through the six named direct producers consumed by `step_012`; the accepted local-unit vector is \(5,3,5,4,3,3,3,5,7,4,6,1\), totaling 49.
- Proof-details audit: The static certificate, persistent-root nullity, finite pivot exhaustion, multiplicity-safe area sweep, fixed-section Jacobian, translated cube section, normal velocity, affine and homogeneous integrations, monic charts, wedge calculation, and final conjunction are mathematically synchronized with their accepted sources. The public Step 004 proof nevertheless relies on one nontrivial theorem that is absent from the public evidence.
- Adversarial stress test: The proof obligations survive \(N=1\), \(d=1\), \(d=2\), empty and singleton intervals, included and excluded endpoints, zero Jacobians, pivots approaching zero, tangent and multiple roots, finite and infinite fibers, persistent roots, stationary and zero-certificate branches, arbitrary correlation, negative outer-chart arguments, \(\theta=0\), \(|\theta|=1\), remote monic intervals, \(\epsilon=\delta\), \(\epsilon\downarrow0\), coefficient axes, and closed wedge boundaries. The constants \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) remain distinct.
- LaTeX export structure/provenance gate: PASS. The bundle contains exactly the nine canonical files, has the required section and appendix order, 12 step subsections and a final main-theorem proof, and exposes no workflow provenance, forbidden appendix environment, audit scaffolding, template placeholder, malformed command, or unresolved internal target.
- Main theorem self-containedness: BLOCKING only through the public proof package: the theorem statement itself is reader-facing and uses only setup notation and numbered assumptions, but its proof is not standalone because Step 004 invokes a supposedly restated lower-dimensional affine area formula that the bundle neither states nor cites.
- Assumption provenance gate: PASS. Every theorem-facing derived fact is proved by a named appendix result before use; no generated event, pivot margin, projective-speed bound, section bound, boundedness invariant, transversality condition, or independence assumption has been promoted to a primitive premise.
- Redundant public prose gate: PASS at acceptance level. No workflow or audit prose remains. The duplicated phrase `area/multiplicity multiplicity` is editorial and nonblocking.
- Proof-step notation surface gate: PASS. Proof-local exhaustion and chart bookkeeping remain appendix-local; the main theorem exposes only setting quantities and essential specialization data. The source `claim` in `step_009` is correctly converted to a public lemma with the same proof.
- Theorem readability and notation economy: PASS. The long theorem is organized into six reader-facing mathematical clauses rather than an admissibility dictionary, and all notation and constants are setting-derived or defined inline. No separate simplified corollary is required for this inseparable exact-goal statement.
- Explicit-rate contract: PASS. The affine, homogeneous, monic, and Counter-example rates expose all structural, law, interval, norm, tolerance, probability, and fixed-instance dependence; there are no hidden constants, confidence parameters, horizon changes, or silent \(q,M,\Delta\) dependence after the certificate is fixed.
- Rate Specialization Bridge: PASS. The actual-section velocity and cube-section factors, exact \(A\)-algebra, ordered suprema, monic beta volume and partition lengths, and Counter-example wedge area are proved by displayed equalities and inequalities with no prose-only absorption.
- Baseline-reduction check: PASS. The deterministic-leading-coefficient monic result is recovered inside the common affine sweep with the original \(d\)-coordinate law, including \(d=1\), \(d=2\), empty and singleton intervals, remote intervals, and no randomized leading coordinate. Counter-example scaling is preserved exactly.
- LaTeX appendix full-derivation gate: All twelve used steps, not a sample, were exhaustively compared. All 49 `Local Derivation` units and all 12 `Target-Step Assembly` arguments are substantively present; every displayed source derivation was accounted for. Step 004 alone fails the used-cited-result component because its source states the exact \(k\)-to-\(n\) affine Hausdorff area formula while the public appendix merely invokes it.
- LaTeX export citation/reference gate: BLOCKING at Step 004. The only public area theorem is equal-dimensional \(\mathbb R^N\to\mathbb R^N\), while the fixed-section proof needs the injective affine \(\mathbb R^{N-1}\to\mathbb R^N\) Hausdorff change-of-variables formula. All 540 labels are unique, all 84 distinct ref/eqref targets resolve, and all four existing citation keys resolve. Federer's edition metadata and missing Section 3.2.3 locator are nonblocking once the correct theorem authority is restored.
- LaTeX export synchronization: The common manifest, 41 manifest-bound artifacts, all twelve accepted proof/review identities, the exact nine-file bundle, and all four specialized diagnostic hashes and raw contracts were reverified. A fresh exact-copy Tectonic build produced a 399 KiB PDF with no undefined reference, citation, or multiply-defined-label failure; two overfull-box warnings are nonblocking. The `12 + 2k` provenance gate has the required two run-scoped handles and 36 distinct branch handles for \(k=12\), and all idea, sketch, global, step, and assembly budgets are within their configured limits.

## Critical Issues

1. Source reviewers: rigor and citation. Location: the Step 004 proof of Lemma~\ref{lem:step-004-s2-section-parametrization}, at the invocation of the "restated injective affine area formula" in `latex_template/5_appendix.tex`. Defect: the public bundle neither states nor cites the required theorem for an injective affine map \(\Xi:b+Lx\) from \(\mathbb R^k\) to \(\mathbb R^n\), specialized here to \(k=N-1\), \(n=N\). Its only public area theorem is equal-dimensional and does not imply the needed Hausdorff pullback. Downstream effect: the section-measure identity, pivot cancellation, coordinate-free affine sweep, and both rate branches lack public mathematical authority. The accepted `step_004` source already contains the exact measurable-domain and nonnegative-Borel-test-function scope, Gram determinant, extended-real convention, object mapping, and \(k=0\) convention, so no producer proof or sketch change is required. Selected repair depth: assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

The single normalized blocker is assembly depth. Both blocking diagnostics identify the same missing public authority, so they are not separate defects and are not resolved by voting against the two passing diagnostics. The accepted Step 004 producer already proves and records the exact theorem statement and its complete application map; the accepted roadmap, dependency interfaces, local derivations, target assemblies, quantifiers, constants, modes, and boundary cases require no change. Reinstating that source theorem as a BibTeX-backed public theorem and citing it at the existing Step 004 application is sufficient. A step retry, sketch revision, or idea change would be deeper than necessary, while any shallower editorial edit would leave the Hausdorff change of variables unjustified. Therefore the controlling type is `PROOF_ASSEMBLY_FLAW`, and the nonempty critical issue caps the score at 6.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
