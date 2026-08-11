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

Use the selected framework `Affine coefficient-incidence sweep with derivative-closure certification`. The roadmap has a common static/sweep trunk and three specialization branches. `step_001` derives the coefficient-height and homogeneous projective certificates; `step_002` proves persistent-root nullity; `step_003` proves the exhausted pivot-chart area inequality; `step_004` converts it to the coordinate-free affine normal-velocity integral; `step_005` proves the translated cube-section bound; `step_006` proves the derivative-closure velocity bound; and `step_007` assembles the general affine rate. The homogeneous branch is sharpened in `step_008`. The monic branch is derived in `step_009` and re-exported through the complete named wrapper in `step_010`. `step_011` proves the Counter-example 1 certificate, projective speed, upper coefficient, exact wedge probability, and normalized scale comparison. `step_012` is a dependency-only conjunction of the six direct producer families `step_001`, `step_003`, `step_007`, `step_008`, `step_010`, and `step_011`, with no new claim.

The accepted dependency graph is acyclic, all twelve current proof/review pairs are bound to sketch attempt 2 and their current producer attempts, and the local-unit vector is \((5,3,5,4,3,3,3,5,7,4,6,1)\), totaling 49 units.

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

- Goal coverage: The branch is an unconditional `full` exact-goal result on the declared anchored derivative-closed subclass. The static certificate, affine chart and coordinate-free bounds, sharper homogeneous bound, exact affine-monic recovery, Counter-example probability audit, deterministic-presentation-first order, arbitrary-correlation law class, and unrestricted-presentation nonoutput boundary all match `setting.md`. The public addition of \(\sqrt2/\delta\) as a preserved Counter-example theorem scale does not match the authoritative goal.
- Roadmap or step coverage: All 12 current producer interfaces and reviews were checked, not sampled. Their identities match sketch attempt 2, the attempt vector \((2,1,1,1,1,1,1,1,2,1,1,1)\), and the frozen proof hashes. The dependency graph and all producer-consumer paths close through the six direct Step 012 dependencies. Producer budgets and the current 36-handle Perspective 2 inventory, plus both run-scoped workers, pass.
- Proof-details audit: Every one of the 49 Local Derivation units, every invoked Cited Result Application, and all 12 Target-Step Assembly sections were compared directly against the appendix. Steps 001--010 preserve all proof obligations, equations, constants, assumption discharges, and boundary cases. The accepted Step 011 and Step 012 sources are also fully translated as far as their accepted interfaces go; the first unaccounted public material is the added \(\sqrt2/\delta\) Counter-example scale in the Step 011/012 public assembly.
- Adversarial stress test: The accepted derivations pass \(N=1\), \(d=1\), \(d=2\), empty and singleton intervals, included and excluded endpoints, zero Jacobians, vanishing pivots, tangent/multiple/infinite/persistent roots, stationary and zero-certificate branches, arbitrary coefficient correlation, negative outer-chart arguments, \(\theta=0\), \(|\theta|=1\), remote monic intervals, \(\epsilon=\delta\), \(\epsilon\downarrow0\), coefficient axes, and closed wedge boundaries. Stressing the literal scales yields \(1/(4\delta)\), \(1/\delta\), and raw certificate \(1/\delta\) from accepted Step 011; the algebraic \(\sqrt2/\delta\) identity is true but is not an accepted target or producer output.
- LaTeX export structure/provenance gate: The exact nine-file bundle, required sections, four stable assumption labels, twelve step subsections, final theorem proof, allowed theorem-style environments, and public provenance/hygiene rules pass. There are no workflow paths, audit scaffolds, placeholders, forbidden claim/hypothesis/invariant environments, generated byproducts, or malformed bare commands. The public introduction, main theorem, appendix, synthesis, and final proof nevertheless promote one assembly-only scale clause.
- Main theorem self-containedness: The theorem is readable by clauses, uses only setup/preliminary notation and numbered primitive assumptions, states the law, interval, norm, measure, and dependence modes, and has no appendix-local or proof-step reference. It fails final claim synchronization only because it adds \(\sqrt2/\delta\) to the Counter-example conclusion.
- Assumption provenance gate: Pass. All theorem-facing assumptions are primitive setting conditions; nonvanishing, persistent-root nullity, chart coverage, section/velocity bounds, monic identities, and Counter-example outputs are named derived results. No generated invariant or conditional hypothesis is promoted to an unconditional assumption.
- Redundant public prose gate: Pass. No forbidden workflow narration, audit scaffold, repeated mechanical phrase, or template filler appears.
- Proof-step notation surface gate: Pass for the accepted interfaces. Preliminaries contain stable setting-derived notation, and exhaustion, wedge, and local bookkeeping objects remain appendix-local or proof-local. The defect is an added assembly conclusion, not leaked helper notation.
- Theorem readability and notation economy: Pass. The long theorem is organized by the five inseparable mathematical clauses rather than an opaque admissibility dictionary, and every public constant has setting or named-result provenance except for the unauthorized theorem role assigned to \(\sqrt2/\delta\).
- Explicit-rate contract: The accepted affine, homogeneous, monic, and Counter-example rates expose all variables, literal constants, fixed quantities, probability mode, interval mode, norms, and zero hidden-constant dependence. The public third-scale statement violates producer synchronization, even though its scalar equality follows algebraically from \(\widehat\Lambda_{B,T}=1/\delta\).
- Rate Specialization Bridge: The accepted R1--R5 bridges pass: there is no term absorption, confidence conversion, horizon upgrade, or omitted dependence. No accepted bridge authorizes \(\sqrt2/\delta\) as a Counter-example theorem conclusion.
- Baseline-reduction check: Pass for both required baselines. The affine-monic theorem retains the deterministic leading coefficient, exact shift certificate, two legal charts, all boundary branches, and exact probability coefficient. Counter-example 1 retains the exact selected-law lower ratio, all-law upper coefficient, and raw certificate without an optimality claim.
- LaTeX appendix full-derivation gate: Exhaustive, not representative: all 12 used steps and all 49 units were checked. No source derivation is missing or compressed. The gate fails because the Step 011 synthesis first adds \(\sqrt2\widehat\Lambda_{B,T}=\sqrt2/\delta\), and the Step 012 proposition and final proof then treat it as a preserved conclusion despite the accepted Step 012 review expressly excluding it from assembly conclusions.
- LaTeX export citation/reference gate: Pass. All 542 labels are unique, all 511 internal references resolve, and the four used keys `balcan2024structured`, `ball1986cube`, `federer1969gmt`, and `gardner2002brunn` exist in `reference.bib`. The cited statements, object mappings, assumptions, and nonoutputs were checked against the current accepted inputs.
- LaTeX export synchronization: Fail at assembly depth. The two attempt-3 sites now contain literal `\qquad` commands and no nearby mathematical content changed. A fresh exact nine-file temporary copy matched all protected hashes; its cache-only Tectonic invocation hit the known macOS system-configuration panic. The exact-source attempt-3 fallback at `<TEMP_ROOT>/proof-assembly.attempt3.Pfp3cb` contains a nonempty 65-page PDF and converged logs with no unresolved references/citations, duplicate labels, box warnings, or errors. Compilation is hygiene evidence only and does not clear the source-contract conflict. All four specialized diagnostics are contract-valid raw `PASS`, but their diagnostic votes cannot override this independent aggregate blocker.

## Critical Issues

1. **Aggregate final-claim synchronization and generated-output-flow check; `setting.md` Counter-example goal, accepted `proof_steps/step_011/proof.md` unit 006 and Target-Step Assembly, accepted `proof_steps/step_012/review.md` Explicit Rate Audit, versus public `1_intro.tex:121`, `3_main.tex:149`, `5_appendix.tex:5030`, `5_appendix.tex:5354`, `5_appendix.tex:5372`, `5_appendix.tex:5443`, and `5_appendix.tex:5471`.** The authoritative goal and accepted Step 011 producer export the selected-law lower ratio \(1/(4\delta)\), the all-law upper coefficient \(1/\delta\), and the raw certificate \(1/\delta\). The accepted Step 012 review explicitly states that the algebraically distinct unsharpened comparison \(A\sqrt N\widehat\Lambda_{B,T}=\sqrt2/\delta\) is neither a target clause nor a named direct-producer output and therefore is not to be inserted as an assembly conclusion. The public bundle nevertheless adds \(\sqrt2/\delta\) to its formalized-goal prose, main theorem, Step 011 synthesis, Step 012 proposition, synthesis proof, and final theorem proof, and `assembly_report.md` asserts that all three scales are theorem conclusions. Although the scalar identity is true, this is unreviewed assembly material and makes the attempted public claim stronger/different than the accepted producer contract. Downstream aggregate acceptance is therefore blocked. Repair depth: `assembly`. Smallest target: `/proof-assembly`, removing the theorem-facing \(\sqrt2/\delta\) additions and resynchronizing the report while preserving the accepted \(1/(4\delta)\), \(1/\delta\), and raw-certificate clauses.

## Failure-Type Rationale

The controlling issue is `PROOF_ASSEMBLY_FLAW` because the authoritative setting, accepted sketch, and accepted Step 011/012 artifacts already contain a closed and correct Counter-example target. No step proof or roadmap bridge is missing: the defect appears only where assembly promotes an algebraically true but unexported comparison into public theorem material and then reports it as preserved. Reassembling from the accepted interfaces is sufficient; rerunning a proof step or revising the sketch would be unnecessarily deep.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
