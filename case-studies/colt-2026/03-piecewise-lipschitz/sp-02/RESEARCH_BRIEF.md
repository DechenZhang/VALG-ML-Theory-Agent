# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design
- Subproblem ID: subproblem_002 (Open Question 2)
- Abstract URL: https://proceedings.mlr.press/v336/balcan26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/balcan26a/balcan26a.pdf

## Parent Context

The parent paper uses root anti-concentration to establish dispersion of transition boundaries in online optimization of piecewise-Lipschitz utilities. Open Question 2 asks for an analogue of the monic-polynomial normalization for the richer Pfaffian setting.

Let \(F=(F_1,\ldots,F_N)\) be a vector of Pfaffian functions on a compact interval \(\Theta\subset\mathbb R\), and let

\[
\phi_\alpha(\theta)
=\sum_{i=1}^N\alpha_iF_i(\theta)
=\langle\alpha,F(\theta)\rangle,
\qquad
\alpha\in[-R,R]^N.
\]

Fix \(\kappa<\infty\). For a coefficient distribution class \(\mathcal D\) over \([-R,R]^N\) such that every \(\mu\in\mathcal D\) has a Lebesgue density \(f_\mu\) satisfying the common bound \(\|f_\mu\|_\infty\leq\kappa\), define

\[
C^{\mathrm{Pf}}_{\mathcal D}
=
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\text{ interval}\\ |I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
\]

The discussion preceding the question uses Pfaffian complexity parameters \(q,\Delta,M,N,R\), with \(q,\Delta,M\) defined according to Balcan et al. (2025a), *Algorithm Configuration for Structured Pfaffian Settings*, and the normalized joint-density bound \(A=(2R)^N\kappa\). These parameters alone cannot give a polynomial anti-concentration constant. Counter-example 1 fixes \(\delta\in(0,1]\), takes \(\Theta=[-1,1]\), \(F_1(\theta)=1\), \(F_2(\theta)=\theta/\delta\), and independent uniform \(\alpha_1,\alpha_2\in[-1,1]\). For \(I=[0,\epsilon]\) and \(0<\epsilon\leq\delta\),

\[
\Pr(\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0)
=\frac{\epsilon}{4\delta}.
\]

Thus the required constant is at least \(1/(4\delta)\), even though formal Pfaffian complexity and the coefficient distribution stay fixed as \(\delta\to0\).

The polynomial baseline, Theorem 2 (Balcan et al. 2020b, Theorem 18), fixes the leading coefficient of a degree-\(d\) polynomial to one. If its remaining coefficients lie in \([-R,R]^d\) with joint density bounded by \(\kappa\), then

\[
\Pr(\exists\theta\in I:\phi(\theta)=0)
\leq
\kappa(2R)^{d-1}\left(d+\frac{R d(d-1)}{2}\right)|I|
\]

for every bounded interval \(I\).

The paper requires recovery of Theorem 2 in the polynomial case but does not prescribe how to represent its deterministic leading coefficient within the homogeneous Pfaffian model. The following affine formulation is one faithful recovery route:

\[
F_0(\theta)=\theta^d,
\qquad
F(\theta)=(\theta^{d-1},\ldots,1),
\qquad
\phi_\alpha(\theta)=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
\]

where \(\alpha=(\alpha_{d-1},\ldots,\alpha_0)\in[-R,R]^d\). The joint-density bound applies only to these random lower coefficients; the deterministic leading coefficient is not treated as a coordinate of a full-dimensional bounded-density distribution. A valid Pfaffian normalization theorem must recover Theorem 2 through this affine formulation or another explicit specialization or reduction that handles the deterministic leading coefficient rigorously.

## Exact Subproblem

**Open Question 2.** What normalization condition for a Pfaffian vector \(F=(F_1,\ldots,F_N)\) on \(\Theta\), analogous to fixing a polynomial's leading coefficient to one, guarantees that \(C^{\mathrm{Pf}}_{\mathcal D}\) is finite for the class \(\mathcal D\) of coefficient distributions over \([-R,R]^N\) with the common joint-density bound \(\kappa\)? When all \(F_i\) are polynomials, the condition and result should recover Theorem 2; the affine formulation above is one admissible way to formalize this recovery, not a mandatory representation. The source conjectures that a simple condition, such as bounding the Lipschitz constant of \(F(\theta)/\|F(\theta)\|_2\), may suffice, but the resulting conditioning parameter must be controlled in terms of the relevant instance-complexity parameters because Counter-example 1 shows that boundedness cannot be presumed.

## Evaluation Target

Ask `ml-theory-research-agent` to formulate and analyze a natural normalization or conditioning condition on \(F\). Acceptable outcomes include a full sufficient theorem with an explicit root anti-concentration bound; a necessary condition or matching lower bound; a theorem for a nontrivial Pfaffian subclass; a proof or counterexample for the normalized-Lipschitz proposal; a counterexample to another plausible normalization; or a precise formal obstruction that identifies additional conditioning data that any theorem must use.

## Required Scope

- Model: One-dimensional roots of \(\phi_\alpha(\theta)=\langle\alpha,F(\theta)\rangle\), where \(F\) is a Pfaffian vector on \(\Theta\).
- Data assumptions: \(\alpha\sim\mu\) for \(\mu\in\mathcal D\), with support \([-R,R]^N\) and a Lebesgue density satisfying the shared bound \(\|f_\mu\|_\infty\leq\kappa\). Do not add independence unless the result is explicitly restricted.
- Algorithm or protocol: No particular learner is fixed; analyze the anti-concentration step used to derive dispersion for piecewise-Lipschitz online optimization.
- Regime: Uniformly over \(\mu\in\mathcal D\) and all positive-length intervals \(I\subseteq\Theta\). A bound may depend on the source's Pfaffian complexity parameters, the shared density parameters \(\kappa\) and \(A=(2R)^N\kappa\), and a newly justified normalization parameter.
- Desired theorem type: A natural condition on \(F\) implying finite \(C^{\mathrm{Pf}}_{\mathcal D}\), with polynomial functions as a specialization that recovers Theorem 2; or a rigorously delimited necessary condition, special-case theorem, lower bound, counterexample, or obstruction.

## Out Of Scope

- Open Question 1 on necessary and sufficient conditions for the polynomial coefficient distribution class \(\mathcal D\) is a separate sibling target.
- The paper's final invitation to seek general alternatives to dispersion is not the primary target.
- A root-count bound that does not imply the interval anti-concentration ratio defining \(C^{\mathrm{Pf}}_{\mathcal D}\) does not resolve this question.

## Constraints And Forbidden Shortcuts

- Do not assume finiteness of \(C^{\mathrm{Pf}}_{\mathcal D}\), the desired interval anti-concentration estimate, or the sought normalization conclusion.
- Any proposed condition must exclude or quantitatively account for Counter-example 1; formal Pfaffian degrees and coefficient-distribution parameters alone are insufficient.
- Do not silently assume \(F(\theta)\neq0\), a lower bound on \(\|F(\theta)\|_2\), compactness beyond the source setting, coefficient independence, or uniform transversality. If a conditional theorem requires such a hypothesis, state it and justify why it is a natural normalization or conditioning parameter.
- If using \(F(\theta)/\|F(\theta)\|_2\), define its domain and prove every claimed Lipschitz or conditioning bound rather than treating that bound as automatic.
- State the exact Pfaffian-chain and \(q,\Delta,M\) convention used in the proof. If it differs from Balcan et al. (2025a), give an explicit parameter mapping to that convention and prove that the mapping preserves every claimed polynomial dependence; an unstated or unmapped convention cannot support a full-progress claim.
- Preserve the supremum over \(\mu\in\mathcal D\) and every positive-length interval. State the common joint-density bound \(\kappa\) and all dependence on \(q,\Delta,M,N,R,A\) and any new conditioning parameter explicitly. A general anti-concentration theorem may depend on a justified conditioning parameter \(\Gamma(F)\). For full progress, identify the relevant instance-complexity parameters for the claimed Pfaffian class or application regime and prove that \(\Gamma(F)\) is polynomially bounded in them. The formal parameters \(q,\Delta,M,N,R,A\) alone cannot be asserted to provide this control without quantitatively overcoming Counter-example 1; merely assuming \(\Gamma(F)<\infty\) or leaving its growth uncontrolled is only partial progress.
- For polynomial recovery, the proposed normalization or conditioning condition and general anti-concentration result must imply the stated bound in Theorem 2 through an explicit specialization or reduction. The affine family \(F_0(\theta)+\langle\alpha,F(\theta)\rangle\) above is one allowed route, but an equivalent rigorous representation is acceptable. An independent proof or citation of Theorem 2 does not establish recovery. Do not model the deterministic leading coefficient as a coordinate of a full-dimensional bounded-density law without a valid measure-theoretic justification.
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.

## Success Criteria

- Full progress: under the stated Balcan et al. (2025a) Pfaffian convention or a proved polynomially equivalent convention, give a natural normalization or conditioning condition and prove a uniform finite bound for \(C^{\mathrm{Pf}}_{\mathcal D}\) under the common density cap \(\kappa\), with explicit dependence on every formal and conditioning parameter. For the claimed Pfaffian class or application regime, identify the relevant instance-complexity parameters and prove that every new conditioning parameter is polynomially bounded in them, while quantitatively accounting for Counter-example 1. The proposed condition and general result must recover the stated bound in Theorem 2 through the displayed affine formulation or another explicit, rigorous specialization or reduction.
- Partial progress: prove the claim for a nontrivial Pfaffian subclass; establish a necessary condition or lower bound; prove or refute the normalized-Lipschitz proposal under explicit hypotheses; or identify a conditioning parameter with a proved complexity bound in a meaningful application regime.
- Formal obstruction: prove that a proposed family of normalizations cannot control \(C^{\mathrm{Pf}}_{\mathcal D}\), identify the missing geometric or analytic quantity, and state a strongest surviving target.
- Precise proof-failure diagnosis: isolate the unresolved estimate, audit all distributional and Pfaffian assumptions, and explain exactly what theorem would close the gap.
- Invalid acceptance: relying only on formal Pfaffian complexity, using an unstated Pfaffian convention or an alternative convention without a polynomially controlled parameter mapping, ignoring Counter-example 1, assuming finiteness or polynomial control of a conditioning parameter without proof, suppressing dependence on a required parameter, dropping uniformity over distributions or intervals, or using an independent proof or citation of Theorem 2 in place of specialization of the proposed general theorem.
