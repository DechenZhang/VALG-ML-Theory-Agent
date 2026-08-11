# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Online Optimization of Piecewise-Lipschitz Functions with Applications to Data-Driven Algorithm Design
- Subproblem ID: subproblem_001 (Open Question 1)
- Abstract URL: https://proceedings.mlr.press/v336/balcan26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/balcan26a/balcan26a.pdf

## Parent Context

In online data-driven algorithm design, utilities \(u_t:\Theta\to[0,H]\) can be piecewise Lipschitz with discontinuity boundaries described by equations \(\phi_{t,j}(\theta)=0\). A key step toward dispersion and sublinear regret is to prove a uniform root anti-concentration estimate on every interval. This question works in parameter dimension \(p=1\), with \(\Theta\subseteq\mathbb R\) a compact one-dimensional parameter domain.

Let

\[
\phi_\alpha(\theta)
=\theta^d+\alpha_{d-1}\theta^{d-1}+\cdots+\alpha_0,
\qquad
\alpha=(\alpha_{d-1},\ldots,\alpha_0)\in[-R,R]^d,
\]

and let \(\mathcal D\) be a class of coefficient distributions supported on \([-R,R]^d\). Define

\[
C_{\mathcal D}
=
\sup_{\mu\in\mathcal D}
\sup_{\substack{I\subseteq\Theta\text{ interval}\\ |I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{|I|}.
\]

For part (b), polynomial dependence is an asymptotic statement over an explicitly indexed family \(\{\mathcal D_{d,R,\eta}\}_{d,R}\), where \(\eta\) collects any additional distributional parameters. A polynomial bound must hold uniformly in \(d,R\), with its degree and coefficients independent of \(d,R\) apart from the displayed dependence on \(\eta\); the parameter \(\eta\) may not conceal uncontrolled dependence on \(d\) or \(R\).

Theorem 2 (Balcan et al. 2020b, Theorem 18) is the known baseline: for any coefficient distribution \(\mu\) with Lebesgue density \(f_\mu\) satisfying \(\|f_\mu\|_\infty\leq\kappa\), and every bounded interval \(I\),

\[
\Pr_{\alpha\sim\mu}(\exists\theta\in I:\phi_\alpha(\theta)=0)
\leq
\kappa(2R)^{d-1}\left(d+\frac{R d(d-1)}{2}\right)|I|.
\]

Consequently, any class \(\mathcal D\) whose members have Lebesgue densities satisfying the common cap \(\sup_{\mu\in\mathcal D}\|f_\mu\|_\infty\leq\kappa\) has

\[
C_{\mathcal D}
\leq
\kappa(2R)^{d-1}\left(d+\frac{R d(d-1)}{2}\right).
\]

Bounded marginal densities alone are not sufficient for any finite estimate of this form. Independence together with bounded marginal densities yields a bounded joint density, but the source regards independence as too strong for most applications.

## Exact Subproblem

**Open Question 1.** Under what natural necessary and sufficient conditions on the coefficient distribution class \(\mathcal D\) can one guarantee that \(C_{\mathcal D}\) is (a) finite, or (b) polynomial in \(d\) and \(R\), when the discontinuities are roots of the degree-\(d\) monic polynomial \(\phi_\alpha\) above and \(\alpha\) is supported on \([-R,R]^d\)?

## Evaluation Target

Ask `ml-theory-research-agent` to establish theorem-level progress toward characterizing the distribution classes in Open Question 1. The target is a condition on coefficient laws that can be checked or bounded independently of first computing the same interval root-hitting supremum that defines \(C_{\mathcal D}\). Acceptable outcomes include a complete necessary-and-sufficient characterization; a new verifiable sufficient or necessary condition; a nontrivial characterization for a natural special class; an explicit lower bound or counterexample separating candidate conditions; or a precise obstruction showing why a proposed characterization cannot hold.

An exact identity, change of variables, root-process representation, or newly named intensity/capacity functional can be an important lemma. It does not by itself answer the open question if deciding whether the new quantity is finite or polynomial is equivalent in difficulty to deciding this for \(C_{\mathcal D}\). To count as a characterization, the result must derive consequences from natural properties of the coefficient distribution and must make those properties independently verifiable in the claimed regime.

The source specifically highlights sufficient conditions that improve or yield new regret bounds through the dispersion recipe for applications such as linear regression, linkage clustering, semi-supervised learning, or low-rank approximation. Any such application result must prove the new root anti-concentration condition and its claimed regret implication rather than merely assert that the recipe applies.

## Required Scope

- Model: One-dimensional parameter \(\theta\in\Theta\); transition boundaries are roots of the monic random polynomial \(\phi_\alpha\).
- Data assumptions: \(\alpha\) has a distribution \(\mu\in\mathcal D\) supported on \([-R,R]^d\). Conditions on \(\mathcal D\) are to be discovered, not assumed from the conclusion.
- Algorithm or protocol: No particular learner is fixed; analyze the root anti-concentration step used in the source's dispersion recipe. For an application-level result, use its corresponding online piecewise-Lipschitz utility setting.
- Regime: Uniformly over \(\mu\in\mathcal D\) and every positive-length interval \(I\subseteq\Theta\), with explicit dependence on \(d\) and \(R\). For part (b), uniformity is over the indexed family \(\{\mathcal D_{d,R,\eta}\}_{d,R}\), not one fixed pair \((d,R)\). Any additional regime restriction must be stated and scored as a restricted result.
- Desired theorem type: Natural necessary and sufficient conditions for finiteness or polynomial \((d,R)\) dependence of \(C_{\mathcal D}\), or a rigorously delimited theorem, lower bound, or counterexample advancing that characterization.

## Out Of Scope

- Open Question 2 on normalizing a Pfaffian vector \(F\) and controlling \(C^{\mathrm{Pf}}_{\mathcal D}\) is a separate sibling target.
- The paper's final, broader invitation to find conditions beyond dispersion is not the primary target.
- A result about arbitrary non-polynomial transition boundaries does not resolve this question unless it implies a source-faithful theorem for the polynomial class above.

## Constraints And Forbidden Shortcuts

- Do not assume the desired root anti-concentration estimate or finiteness of \(C_{\mathcal D}\).
- Do not replace the supremum over \(\mu\in\mathcal D\) by an analysis of one favorable distribution, or replace all positive-length intervals by one fixed interval, without labeling the result as restricted.
- Do not silently assume independence, bounded joint density, smoothness, log-concavity, or other coefficient structure. A theorem may impose such a condition only if it is stated explicitly and its role is proved.
- Do not present Theorem 2 or the independence-plus-bounded-marginals corollary as a new resolution; both are source-provided baselines.
- Do not infer a joint-density bound from bounded marginal densities without an additional justified hypothesis.
- Preserve explicit dependence on \(d,R\) and every introduced distributional parameter. A claim of polynomial dependence must display a uniform polynomial bound whose degree and coefficients do not vary with \(d,R\), and it must prove that no introduced parameter hides uncontrolled dependence on \(d\) or \(R\).
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.
- Do not define a root intensity, occupation density, capacity, modulus, or analogous descriptor by the numerator or supremum in the definition of \(C_{\mathcal D}\), and then claim progress merely from an identity or constant-factor comparison with \(C_{\mathcal D}\). Such a reformulation must yield a separately checkable coefficient-side criterion or a new quantitative consequence.
- Do not claim part (b) by proving only that \(C_{\mathcal D}\) is polynomial if and only if another otherwise-uncontrolled equivalent quantity is polynomial. Derive an explicit uniform polynomial bound from stated distributional parameters.
- Do not use a global regularity, transversality, conditional-density, small-ball, or moment assumption that already contains the desired root anti-concentration conclusion in disguised form. Prove how the assumption follows from coefficient-law structure, or label the result conditional and delimit its scope.
- Do not accept a theorem whose hypotheses are inconsistent, vacuous, or verified only after conditioning on a null event. Every proposed condition must be witnessed by at least one nonempty, explicitly described distribution family in every parameter regime for which the theorem is claimed.

## Fresh-Attempt And Acceptance Audits

- Treat this directory as a fresh solution attempt. Establish all claims from the source paper and primary literature; do not use solution, review, score, tracker, report, or feedback artifacts from sibling attempt directories as evidence of correctness or novelty.
- For every proposed condition, give a coefficient-side verification route that does not require knowing \(C_{\mathcal D}\) in advance. If the condition is expressed through roots or a pushforward root process, prove how it is controlled from stated properties of the coefficient law.
- Audit every supremum and quantifier: over \(\mu\), intervals \(I\), \(d\), \(R\), auxiliary parameters, and any conditioning variables. State whether constants are uniform and identify exactly what they depend on.
- Give at least one nonempty example family satisfying the condition, and prove membership rather than asserting it. For an asymptotic claim, give a family indexed across the claimed \((d,R)\) regime.
- Compare every claimed advance with Theorem 2, including whether it handles dependent or singular coefficient laws, improves the dependence on parameters, or supplies information of a genuinely different kind.
- Check novelty against current primary literature and state the closest known theorem with an assumption-by-assumption and conclusion-by-conclusion comparison. A correctness or novelty claim may not rest on prior generated review files.

## Success Criteria

- Full progress: prove natural, independently verifiable coefficient-law conditions that are necessary and sufficient for both (a) finiteness and (b) polynomial dependence of \(C_{\mathcal D}\). The proof must cover the full source regime and all uniform quantifiers. For (b), it must treat an explicitly indexed family \(\{\mathcal D_{d,R,\eta}\}_{d,R}\), derive a displayed uniform polynomial bound with degree and coefficients independent of \(d,R\), and prove that \(\eta\) hides no uncontrolled \(d,R\) dependence. In addition, demonstrate at least one substantive payoff: certify a natural dependent or singular family not covered by Theorem 2, derive a new application-level anti-concentration and regret bound, or reduce the question to a coefficient-side criterion that is proved strictly easier to verify than \(C_{\mathcal D}\) itself. Full progress requires the acceptance audits above and a primary-literature novelty comparison.
- Material partial progress: completely resolve one labeled part under the same noncircular and uniformity standards; prove a genuinely new verifiable sufficient or necessary condition for a natural class; derive a new application-specific anti-concentration and regret bound; or give a sharp counterexample that rules out a plausible condition. State precisely which direction and regime are unresolved. Compare the advance with Theorem 2 and the bounded-marginal limitation.
- Structural partial progress: prove a useful exact identity, root-process representation, comparison theorem, or reduction, but without yet deriving independently verifiable coefficient-law conditions or a new class/bound. State the remaining coefficient-side estimate explicitly. A renaming or tautological restatement alone is not structural progress.
- Restricted or conditional progress: prove a valid result only for a narrowed degree/radius range, special interval family, special coefficient class, or under an additional unverified assumption. State the restriction in the theorem and verify that the regime is nonempty. Such a result cannot be labeled full progress; it counts as material partial progress only if the added assumptions are natural, independently checkable, and actually verified for a substantive family.
- Formal obstruction: identify a sharply stated missing condition or impossible uniformity claim, prove the obstruction, and state the strongest remaining viable target.
- Precise proof-failure diagnosis: localize an unresolved lemma or false implication, audit its assumptions and quantifiers, and explain what additional result would close the argument.
- Invalid acceptance: empirical evidence alone; a restatement of a known baseline; a renamed or equivalent version of \(C_{\mathcal D}\) with no coefficient-side consequence; a circular, inconsistent, or vacuous hypothesis; hidden narrowing of \(\mathcal D\), \(I\), or the \((d,R)\) family; an unproved application-to-regret implication; an unverified novelty claim; or a bound with suppressed requested parameter dependence.
