# Proof Review

## Formalized Setting

This branch is in exact-goal mode. Fix integers \(N\geq1\), \(q\geq0\), and \(m\geq0\), numbers \(T,R,\kappa>0\), a nondegenerate compact interval \(\Theta\subseteq[-T,T]\), and an open interval \(U\supseteq\Theta\). In the exact Balcan--Nguyen--Sharma convention at ambient parameter dimension \(p=1\), a common triangular Pfaffian chain satisfies

\[
\eta_j'(\theta)=P_j(\theta,\eta_1(\theta),\ldots,\eta_j(\theta)),
\qquad 1\leq j\leq q,
\]

with chain length \(q\), chain degree \(M=\max_j\deg P_j\) (and \(M=0\) for \(q=0\)), and output polynomials \(Q_i\) of total degree at most

\[
\Delta=\max_{0\leq i\leq N}\deg Q_i.
\]

Set

\[
F_i(\theta)=Q_i(\theta,\eta(\theta)),\qquad
\widetilde F=(F_0,F_1,\ldots,F_N),\qquad F=(F_1,\ldots,F_N).
\]

Only the coefficients multiplying \(F_1,\ldots,F_N\) are random. A supplied polynomial matrix \(B:U\to\mathbb R^{(N+1)\times(N+1)}\) has entries

\[
B_{rs}(\theta)=\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell,
\]

and, with \(T_*=\max\{1,T\}\), its static coefficient-height certificate is

\[
\widehat\Lambda_{B,T}
=\left(\sum_{r,s=0}^{N}
\left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2\right)^{1/2}.
\]

The identity \(\widetilde F'=B\widetilde F\) and an anchor \(F_{j_*}\equiv1\) are primitive. The bounds on \(B\), affine sweep velocity, projective speed, and root probabilities are not primitive assumptions.

Let \(\mathcal D=\mathcal D_{N,R,\kappa}\) be all Borel probability laws with a Lebesgue density supported on \([-R,R]^N\) and bounded by \(\kappa\), with arbitrary coordinate dependence, and set

\[
A=(2R)^N\kappa.
\]

For \(\alpha\sim\mu\in\mathcal D\), define

\[
\phi_\alpha(\theta)=F_0(\theta)+\langle\alpha,F(\theta)\rangle,
\qquad
H_\theta=\{a:F_0(\theta)+\langle a,F(\theta)\rangle=0\}.
\]

The homogeneous root constant \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) and affine root constant \(C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)\) are the law- and positive-length-interval suprema in `setting.md`. The anchor makes \(F\neq0\), so

\[
\gamma_F=\frac{F}{\|F\|_2},\qquad
\Gamma_{\mathrm{proj}}(F)=\sup_{\theta\in\Theta}\|\gamma_F'(\theta)\|_2
\]

are well-defined derived objects.

Whenever \(F_j(\theta)\neq0\), let \(\beta=(\beta_i)_{i\neq j}\) and define

\[
T_j(\theta,\beta)
=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)}.
\]

The map \(\Psi_j(\theta,\beta)\) inserts \(T_j\) in coordinate \(j\) and \(\beta_i\) elsewhere. Its full-dimensional Jacobian is \(|\det D\Psi_j|=|\partial_\theta T_j|\).

The primitive assumption interface is exactly:

- `assump:parameter-regime`: the static scalar, interval, chain-domain, support, density, and finite-presentation conditions above, including nonempty \(\mathcal D\).
- `assump:balcan-common-chain`: the exact \(p=1\) Balcan--Nguyen--Sharma common-chain presentation with parameters \(q,M,\Delta\).
- `assump:anchored-derivative-closure`: \(F_{j_*}\equiv1\), the supplied polynomial \(B\), and the identity \(\widetilde F'=B\widetilde F\) on \(U\).
- `assump:cube-density-laws`: arbitrary correlated full joint densities on \([-R,R]^N\) capped by \(\kappa\).

No generated event, pivot margin, transversality condition, root simplicity, projective-speed bound, section bound, or sweep bound is assumed.

## Formalized Goal

Prove one unconditional anchored derivative-closure coefficient-sweep theorem containing all of the following clauses.

1. Derive the static certificate

   \[
   \sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
   \leq\widehat\Lambda_{B,T}.
   \]

   When \(F_0\equiv0\), derive \(F'=B_FF\),

   \[
   \gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
   \qquad
   \Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
   \]

2. For every \(\mu\in\mathcal D\) and every positive-length interval \(I\subseteq\Theta\), prove the single affine swept-area inequality and its explicit certificate bound

   \[
   \begin{aligned}
   \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
   &\leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
   \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
   \,d\mathcal H^{N-1}(a)\,d\theta\\
   &\leq \kappa\sqrt2(2R)^{N-1}(1+NR^2)
   \widehat\Lambda_{B,T}|I|\\
   &=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|.
   \end{aligned}
   \]

   Consequently,

   \[
   C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
   \leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
   \]

   The proof must derive the root-section controls, the translated-section estimate, and the velocity bound. It must also prove, for every measurable partition \(I=\bigsqcup_jE_j\) with \(F_j\neq0\) on \(E_j\),

   \[
   \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
   \leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   \mathbf1\{|T_j(\theta,\beta)|\leq R\}
   |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
   \]

   and the version obtained by dropping the indicator. The area formula is first applied on \(E_{j,n}=\{\theta\in E_j:|F_j(\theta)|\geq1/n\}\) and then \(n\to\infty\). Tangent and multiple roots are allowed. The coefficients making \(\phi_a\equiv0\) must be proved law-null.

3. In the homogeneous specialization \(F_0\equiv0\), prove from the same sweep formula

   \[
   \Pr[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
   \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
   \]

   and hence \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\).

4. For every \(d\geq1\), bounded interval \(J\subset\mathbb R\), and arbitrary correlated lower-coefficient law with density at most \(\kappa\), specialize the same affine theorem to

   \[
   F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k,
   \qquad p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
   \]

   Verify

   \[
   q=M=0,\quad \Delta=d,\quad N=d,\quad m=0,\quad
   A=(2R)^d\kappa,\quad
   \widehat\Lambda_{B,T}=\left(\sum_{k=1}^dk^2\right)^{1/2},
   \]

   derive the two pivot formulas and bounds prescribed in `setting.md`, handle \(d=1\), and recover exactly

   \[
   \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq\kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|J|.
   \]

   The leading coefficient remains deterministic; no independent polynomial theorem or singular random-coordinate representation is allowed.

5. For \(F_0=0\), \(F=(1,\theta/\delta)\), \(0<\delta\leq1\), verify

   \[
   q=M=0,\quad\Delta=1,\quad N=2,\quad m=0,\qquad
   \widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
   \]

   With \(R=1\), \(\kappa=1/4\), \(A=1\), derive the theorem upper bound \(C^{\mathrm{Pf}}_{\mathcal D}\leq1/\delta\) and directly verify

   \[
   \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta},\qquad0<\epsilon\leq\delta.
   \]

Every constant is literal. The fixed instance data are \((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\); \(\mu\) and \(I\) range over their suprema. Probability is ordinary probability, interval mode is uniform over all positive-length subintervals, all norms are Euclidean, and the additional dependence on \(q,M,\Delta\) after fixing the certificate is exactly degree zero.

## Reviewed Roadmap

The accepted attempt-2 roadmap uses a common static/sweep trunk and three specialization branches. `step_001` proves nonvanishing, the static coefficient-height bridge, and the homogeneous projective certificate. `step_002` removes persistent roots by proving their coefficient locus law-null. `step_003` proves the measurable finite-exhaustion pivot-chart area inequality, and `step_004` converts its integrand to the coordinate-free affine normal velocity. Independently, `step_005` proves the translated cube-section bound and `step_006` proves the derivative-closure velocity estimate; `step_007` assembles the general affine rate. `step_008` supplies the sharper homogeneous rate. `step_009` proves the exact augmented monomial presentation, derivative-shift certificate, two pivot charts, and velocity caps; `step_010` re-exports that complete package with the exact monic probability bound. `step_011` proves the Counter-example scale audit. `step_012` is a dependency-only conjunction of the named outputs of `step_001`, `step_003`, `step_007`, `step_008`, `step_010`, and `step_011`. The graph is acyclic, all transitive producer-consumer paths close, and no step ID is used as public mathematical authority.

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

and every possibly correlated admissible law and positive-length interval \(I\subseteq[-1,1]\) satisfy

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\alpha_1+\alpha_2\theta/\delta=0]
\leq\frac{|I|}{\delta}.
\]

For the selected uniform law and \(0<\epsilon\leq\delta\),

\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]

Thus the selected-law positive-length lower ratio is exactly \(1/(4\delta)\), while the all-law upper
coefficient, raw one-entry certificate, and projective speed are each \(1/\delta\), with their distinct
accepted provenance preserved. Every constant is literal. Probability is ordinary probability for each fixed law,
arbitrary full-joint coefficient
correlation is allowed, the interval supremum precedes the law supremum, and the Euclidean vector, projective,
operator, Frobenius, scalar, Lebesgue, and Hausdorff conventions are explicit. Once the supplied certificate is
fixed, additional dependence on \(q,M,\Delta\) is exactly degree zero. Both baseline-invariance obligations are
preserved. No claim is made that an unrestricted raw Pfaffian presentation admits the supplied
derivative-closure certificate or a polynomial presentation-format bound.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The attempted claim matches the authoritative exact, unconditional, full-progress setting in quantifiers, law and interval scopes, constants, norms, probability mode, supplied-certificate boundary, exact monic recovery, and Counter-example scales. It does not claim certificate existence or presentation-format control for unrestricted raw Pfaffian inputs.
- Roadmap or step coverage: The accepted attempt-2 graph is acyclic and dependency-closed. All 12 current proof/review pairs bind sketch attempt 2, the correct Step ID, the attempt vector `2,1,1,1,1,1,1,1,2,1,1,1`, the current proof digest, and raw status `ACCEPTED`. The current worker inventory has the two required distinct run-scoped handles and 36 distinct Perspective 2 handles, including the pre-dispatch aggregate row; all producer attempts are within budget.
- Proof-details audit: The final theorem proof is a direct conjunction of named accepted producers. Quantifier order, ordinary fixed-law probability, arbitrary correlation, interval-then-law suprema, multiplicity direction, literal constants, zero and stationary branches, empty/singleton intervals, endpoint conventions, and all tested `N=1`, `d=1`, and `d=2` cases remain synchronized.
- Adversarial stress test: Stress tests covered zero Jacobians, vanishing pivots, tangent, multiple, infinite and persistent roots, stationary and zero-certificate branches, arbitrary coefficient correlation, both outer-chart signs, remote monic intervals, `epsilon=delta`, `epsilon` decreasing to zero, coefficient axes, and closed wedge boundaries. No counterexample or hidden mode upgrade remains.
- LaTeX export structure/provenance gate: The canonical nine files, five required sections, 12 step subsections, final main-theorem proof subsection, and bibliography/style support are present. No workflow provenance, audit scaffolding, placeholder, malformed bare command, forbidden public environment, non-ASCII byte, forbidden control byte, carriage return, or missing final line feed was found. My isolated cache-only Tectonic invocation hit the documented macOS `system-configuration` panic before TeX execution; the temporary copy matched all nine protected hashes exactly, and the fresh current-review exact-source build evidence records a nonempty 65-page PDF.
- Main theorem self-containedness: The theorem uses only setup/preliminary notation, the four numbered primitive assumptions, and theorem-local definitions. It has no appendix-local, step-local, or proof-workflow dependency and presents five readable clauses rather than an admissibility dictionary.
- Assumption provenance gate: Every theorem-facing assumption is primitive. All nonvanishing, measurability, persistent-root nullity, section, velocity, projective, monic-chart, and wedge facts are proved by named earlier public results before use; no generated invariant is assumed.
- Redundant public prose gate: Public TeX contains no copied sketch-row fields, workflow summaries, source/audit blocks, accepted-step narration, mechanical translation debris, or forbidden boilerplate. Two ordinary uses of the words "used by" occur inside substantive mathematical sentences and are not standalone provenance scaffolding.
- Proof-step notation surface gate: Stable setting notation is public-facing; exhaustion indices, chart domains, wedge names, component radii, and one-use bookkeeping quantities remain appendix-local or proof-local. No proof-local dictionary leaks into the theorem.
- Theorem readability and notation economy: The main theorem is clause-based, self-contained, and explicit about the fixed deterministic presentation, law class, interval class, norms, constants, and non-output boundary. Preliminaries contain only reusable setting-derived notation.
- Explicit-rate contract: All exposed structural, density, support, interval, certificate, and dimension variables are declared. There are no hidden constants, confidence parameters, auxiliary tolerances, horizon upgrades, or silent dependence drops; probability, interval, and Euclidean norm modes are explicit.
- Rate Specialization Bridge: The affine, homogeneous, monic, and Counter-example rates are producer-exact public conclusions. Every specialization uses displayed substitutions and inequalities, so no unproved term absorption or omitted probability conversion requires a separate bridge.
- Baseline-reduction check: The deterministic-leading-coefficient monic theorem is recovered exactly under its declared specialization. Counter-example 1 retains selected-law probability `epsilon/(4 delta)`, selected-law positive-length ratio `1/(4 delta)`, and the distinct all-law upper coefficient, raw one-entry certificate, and projective speed at `1/delta`; no theorem-facing `sqrt(2)/delta` conclusion remains.
- LaTeX appendix full-derivation gate: All 12 used steps, not a sample, passed exhaustive source-to-appendix comparison. All 49 accepted local units, every invoked cited-result application, every displayed definition/equation/inequality and case or boundary discharge, and all 12 Target-Step Assembly arguments are substantively present. No source unit is unaccounted for.
- LaTeX export citation/reference gate: The bundle has 540 unique labels and 511 `ref`/`eqref` uses over 90 distinct defined targets, with no duplicates or unresolved targets. All six citation commands resolve to four unique BibTeX entries. Named external results are restated in current notation with their object mappings and hypotheses discharged.
- LaTeX export synchronization: All four specialized diagnostics are contract-valid raw `PASS` artifacts with no blockers or repair target, and there is no reviewer disagreement. The assembly report is `COMPLETE`. The two reported overfull boxes, 18.4641 pt and 8.8419 pt in long synthesis prose near appendix lines 2248 and 4512, are minor nonblocking typesetting cleanup: they affect neither equations, theorem statements, reference binding, proof authority, nor legibility. All 41 protected inputs and the four diagnostic identities matched the frozen manifests immediately before this review was written.

## Critical Issues

None

## Failure-Type Rationale

`ACCEPTED` is required because all four specialized reviews pass, every aggregate contract gate passes, the exact formalized goal is proved without a stronger claim or added assumption, and the paper-ready bundle preserves every accepted proof obligation. The independent Tectonic attempt encountered only the contract-recognized platform panic; exact source hashes and fresh same-source build evidence close the support gate. The two modest overfull synthesis lines are nonblocking presentation concerns and do not justify an assembly retry. No assembly-, step-, sketch-, or idea-level blocker remains.

## Suggested Next Action

None

## Retry Mode

none
