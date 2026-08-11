# Proof Review

## Formalized Setting

- Basic setup:
  Fix integers \(N\geq 1\) and \(q\geq 0\), a center \(c\in\mathbb R\), a half-width \(h>0\), and
  \[
  \Theta=[c-h,c+h],\qquad x=x(\theta):=\frac{\theta-c}{h}\in[-1,1].
  \]
  The ambient parameter dimension in the Balcan--Nguyen--Sharma convention is \(p=1\). For a polynomial \(S\), let \(\|\operatorname{coeff}(S)\|_1\) denote the sum of the absolute values of its coefficients in the standard monomial basis.

  Let \(\eta=(\eta_1,\ldots,\eta_q)\) be a common triangular chain on \([-1,1]\), with chain polynomials \(P_j(x,y_1,\ldots,y_j)\), and let \(Q_i(x,y_1,\ldots,y_q)\), \(1\leq i\leq N\), be output polynomials. In the exact Balcan--Nguyen--Sharma convention,
  \[
  M:=\max_{1\leq j\leq q}\deg P_j\quad(q\geq1),\qquad
  \Delta:=\max_{1\leq i\leq N}\deg Q_i,
  \]
  where degrees are total degrees; set \(M=0\) when \(q=0\). Define
  \[
  G_i(x):=Q_i(x,\eta_1(x),\ldots,\eta_q(x)),\qquad
  F_i(\theta):=G_i(x(\theta)),
  \]
  and
  \[
  B_P:=
  \begin{cases}
  \max_{1\leq j\leq q}\|\operatorname{coeff}(P_j)\|_1,&q\geq1,\\
  0,&q=0,
  \end{cases}
  \qquad
  B_Q:=\max_{1\leq i\leq N}\|\operatorname{coeff}(Q_i)\|_1.
  \]
  The change of variable from \(x\) to \(\theta\) leaves \(q,M,\Delta\) unchanged and gives \(d/d\theta=h^{-1}d/dx\).

  Write \(F=(F_1,\ldots,F_N)\), and let \(I_N\) denote the \(N\times N\) identity matrix. Under the literal anchor below, define on all of \(\Theta\)
  \[
  \gamma_F(\theta):=\frac{F(\theta)}{\|F(\theta)\|_2},\qquad
  \Gamma_{\mathrm{proj}}(F):=\operatorname*{ess\,sup}_{\theta\in\Theta}
  \|\gamma_F'(\theta)\|_2.
  \]
  This merely defines the derived projective-speed quantity; neither its finiteness nor an upper bound on it is assumed.

  For \(R>0\) and \(0<\kappa<\infty\), let \(\mathcal D_{N,R,\kappa}\) be the class of all Borel probability laws \(\mu\) on \(\mathbb R^N\) having a Lebesgue density \(f_\mu\) supported on \([-R,R]^N\) and satisfying \(\|f_\mu\|_\infty\leq\kappa\). No coordinate-independence condition is imposed. Assume this class is nonempty (which forces \((2R)^N\kappa\geq1\)), set \(\mathcal D:=\mathcal D_{N,R,\kappa}\), and define
  \[
  A:=(2R)^N\kappa
  \]
  and define the all-law, all-interval constant
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  :=\sup_{\mu\in\mathcal D_{N,R,\kappa}}
  \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\ |I|>0}}
  \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]}{|I|}.
  \]

  For the affine interface, let \(F_0\in C^1(\Theta)\) be deterministic and set
  \[
  \phi^{\mathrm{aff}}_\alpha(\theta):=F_0(\theta)+\langle\alpha,F(\theta)\rangle.
  \]
  Given an interval \(I\subseteq\Theta\) and a measurable partition \(I=\bigsqcup_{j=1}^N E_j\) with \(F_j(\theta)\neq0\) on \(E_j\), index \(\beta\in[-R,R]^{N-1}\) by the coordinates \(i\neq j\) and define
  \[
  T_j(\theta,\beta)
  :=-\frac{F_0(\theta)}{F_j(\theta)}
    -\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)},
  \]
  \[
  \partial_\theta T_j(\theta,\beta)
  =-\frac{\bigl(F_0'(\theta)+\sum_{i\neq j}\beta_iF_i'(\theta)\bigr)F_j(\theta)
  -\bigl(F_0(\theta)+\sum_{i\neq j}\beta_iF_i(\theta)\bigr)F_j'(\theta)}{F_j(\theta)^2}.
  \]
  The exhaustion sets \(E_{j,m}:=\{\theta\in E_j:|F_j(\theta)|\geq1/m\}\) are part of the chart construction; no uniform lower bound on \(|F_j|\) is assumed.

- Technical assumptions:
  - `assump:parameter-regime` (Primitive parameter regime): \(N\geq1\), \(q\geq0\), \(h>0\), \(R>0\), and \(0<\kappa<\infty\), with \(\Theta=[c-h,c+h]\) and nonempty \(\mathcal D_{N,R,\kappa}\). All polynomial degrees and coefficient budgets above are finite static presentation data.
  - `assump:balcan-common-chain` (Balcan common-chain presentation): Each \(\eta_j\in C^1([-1,1])\) satisfies
    \[
    \eta_j'(x)=P_j(x,\eta_1(x),\ldots,\eta_j(x)),\qquad \deg P_j\leq M,
    \]
    and every output has the common-chain representation
    \[
    G_i(x)=Q_i(x,\eta_1(x),\ldots,\eta_q(x)),\qquad \deg Q_i\leq\Delta.
    \]
    Thus \(q\) is chain length, \(M\) is chain degree, \(\Delta\) is output-function degree, and \(p=1\), exactly as in Balcan--Nguyen--Sharma (2025).
  - `assump:anchored-unit-range` (Literal anchor and unit-range certificate): For every \(x\in[-1,1]\), \(|\eta_j(x)|\leq1\) for all \(j\), and \(Q_1\equiv1\). Consequently \(G_1\equiv F_1\equiv1\) and \(\|G(x)\|_2=\|F(\theta)\|_2\geq1\), but no separate norm-margin or projective-speed assumption is made.
  - `assump:cube-density-laws` (Arbitrarily correlated capped joint laws): The random vector \(\alpha\) is drawn from an arbitrary \(\mu\in\mathcal D_{N,R,\kappa}\). Only cube support and the full joint-density cap are available; the coordinates may be arbitrarily correlated.
  - `assump:affine-chart-data` (Deterministic affine offset and pivot cover): Whenever the affine clause is invoked, \(F_0\in C^1(\Theta)\), and the selected measurable sets \(E_1,\ldots,E_N\) form the displayed partition with \(F_j\neq0\) on \(E_j\). This is a primitive, pre-trajectory chart condition. Because \(F_1\equiv1\), the fallback partition \(E_1=I\), \(E_j=\varnothing\) for \(j>1\), is always available.

## Formalized Goal

- Goal statement:
  Prove one anchored coefficient-normalized Pfaffian hyperplane-sweep theorem, in exact-goal mode, with all of the following inseparable clauses.

  **Primitive-presentation bridge.** Under `assump:balcan-common-chain` and `assump:anchored-unit-range`, prove pointwise for every \(x\in[-1,1]\) and \(1\leq i\leq N\) that
  \[
  |G_i'(x)|\leq \Delta B_Q(1+qB_P).
  \]
  Using
  \[
  \frac{d}{dx}\frac{G}{\|G\|_2}
  =\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2},
  \qquad \gamma_G:=G/\|G\|_2,
  \]
  derive, rather than assume,
  \[
  \Gamma_{\mathrm{proj}}(F)
  \leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
  \]

  **Central swept-hyperplane bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:cube-density-laws`, prove simultaneously for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\) that
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
  \langle\alpha,F(\theta)\rangle=0\right]
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
  \leq \frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
  \]
  and hence
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
  \leq\frac{A N\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
  \]
  The theorem must obtain the first inequality from the area formula for the union of the central sections \(\gamma_F(\theta)^\perp\) and Ball's sharp cube-section bound, with union-area multiplicity handling tangent and multiple roots. Coefficients for which the linear combination is identically zero form a proper linear subspace and therefore have zero probability under every admissible law.

  **Affine chart bound.** Under `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, `assump:cube-density-laws`, and `assump:affine-chart-data`, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), prove
  \[
  \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
  F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]
  \leq
  \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
  |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
  \]
  The inequality is understood in the extended-real sense if a displayed integral diverges. It must follow from the area formula for \((\theta,\beta)\mapsto(\beta,T_j(\theta,\beta))\), with \(T_j\) inserted in coordinate \(j\), on the exhausting sets \(E_{j,m}\), followed by \(m\to\infty\); it may not assume transversality, simple roots, a uniform pivot margin, or coordinate independence. Coefficients for which the affine combination is identically zero form a proper affine subspace (or the set is empty) and have zero admissible-law probability.

  **Exact affine-monic baseline specialization.** For every integer \(d\geq1\), every bounded interval \(J\subset\mathbb R\), and every possibly correlated \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with joint density at most \(\kappa\), choose a nondegenerate \(\Theta=[c-h,c+h]\) containing \(J\) and specialize the affine clause to
  \[
  F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k\ (0\leq k\leq d-1),\qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
  \]
  In normalized coordinates these outputs are \(Q_0(x)=(c+hx)^d\) and \(Q_{k+1}(x)=(c+hx)^k\). For \(d\geq2\), use the pivot sets
  \[
  E_1=J\cap\{|\theta|\leq1\},\qquad
  E_d=J\cap\{|\theta|>1\},\qquad E_j=\varnothing\ (j\notin\{1,d\});
  \]
  for \(d=1\), use \(E_1=J\). Prove the chart-velocity estimates
  \[
  |\partial_\theta T_1|
  \leq d+R\sum_{k=1}^{d-1}k
  =d+\frac{Rd(d-1)}2
  \quad (|\theta|\leq1),
  \]
  \[
  |\partial_\theta T_d|
  \leq1+R\sum_{k=0}^{d-2}(d-1-k)
  =1+\frac{Rd(d-1)}2
  \leq d+\frac{Rd(d-1)}2
  \quad (|\theta|>1),
  \]
  with the second display replaced by \(|\partial_\theta T_1|=1\) when \(d=1\). The same affine theorem must then yield, without an independent citation or a singular random leading-coordinate construction, exactly
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq\kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)|J|.
  \]
  In Balcan--Nguyen--Sharma notation this specialization has \(q=0\), \(M=0\), \(N=d\), \(A=(2R)^d\kappa\), and augmented output degree
  \(
  \Delta_{\mathrm{aug}}:=\max\{\deg F_0,\deg F_1,\ldots,\deg F_d\}=d
  \);
  the deterministic monic coefficient remains outside the \(d\)-dimensional random vector.

  **Counter-example 1 scale audit.** For \(\Theta=[-1,1]\), \(G(x)=(1,x/\delta)\), and \(0<\delta\leq1\), record \(h=1\), \(q=0\), \(M=0\), \(\Delta=1\), \(N=2\), and \(B_Q=1/\delta\). Thus the theorem's explicit upper constant has order \(1/\delta\). For the uniform law on \([-1,1]^2\), for which \(\kappa=1/4\) and \(A=1\), also verify
  \[
  \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}\qquad(0<\epsilon\leq\delta),
  \]
  so \(C^{\mathrm{Pf}}_{\mathcal D}\geq1/(4\delta)\) and the declared presentation data register the necessary metric scale.

  All displayed constants are literal: there are no hidden constants and no confidence parameter. The probability mode is ordinary probability for each fixed law, the interval mode is uniform over all positive-length subintervals, the feature presentation is deterministic, and the projective norm is Euclidean. The full presentation tuple is fixed while \(\mu\) and \(I\) range over their suprema. The exposed central-instance tuple is
  \((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\); \(M\) has explicit degree-zero dependence because the unit-box coefficient envelope bounds a degree-\(M\) chain polynomial by its coefficient \(\ell_1\)-budget.

## Reviewed Roadmap

1. `step_001` proves the unit-box coefficient envelope and the pointwise derivative bound \(D_*:=\Delta B_Q(1+qB_P)\), including the empty-chain and degree-zero branches.
2. `step_002` uses the literal anchor to prove global nonvanishing, the exact Euclidean normalized-derivative identity, the \(h^{-1}\) coordinate transfer, and the projective-speed bound.
3. `step_003` develops the central incidence hypersurface, projection and coarea Jacobians, multiplicity-safe coefficient-volume inequality, and all null and boundary cases.
4. `step_004` combines that incidence interface with Ball's scaled cube-section bound and the capped full joint density to obtain the exact central local-length probability coefficient.
5. `step_005` integrates the projective speed, substitutes the presentation bound, and closes the positive-length interval and ordered interval-then-law capacity suprema.
6. `step_006` proves finite-chart legality, the affine chart Jacobian and null classes, the finite-level area estimate, measurable exhaustion, and the extended-real affine probability bound.
7. `step_007` gives the exact deterministic-leading-coefficient monic presentation, prescribed pivot partition, low and high chart formulas, velocity bounds, transition handling, and the \(d=1\) convention.
8. `step_008` specializes the affine result to the same monic object and lower-coefficient law, evaluates the beta-cube ledger, handles \(d=1\), and obtains the exact baseline probability rate.
9. `step_009` computes the Counter-example 1 tuple and Euclidean speed, both closed coefficient wedges and their exact probability, the capacity lower certificate, and the two distinct upper scales.
10. `step_010` takes the direct logical conjunction of the accepted producer interfaces for R1--R5 under their unchanged assumptions, quantifiers, constants, norm conventions, and probability modes.

## Attempted Claim

Under the five numbered assumptions in `setting.md`, prove one unconditional
anchored coefficient-normalized Pfaffian hyperplane-sweep theorem for the full
declared anchored, unit-range, coefficient-controlled normalization:

1. The primitive presentation satisfies
   \(|G_i'|\leq D_*:=\Delta B_Q(1+qB_P)\) and
   \(\Gamma_{\mathrm{proj}}(F)\leq
   \sqrt N\,\Delta B_Q(1+qB_P)/h\), with exact Euclidean normalization,
   endpoint conventions, and degree-zero dependence on \(M\) for fixed
   \(B_P\).
2. For each arbitrary correlated capped joint law and each positive-length
   interval, ordinary probability is at most
   \(A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)|I|\), hence at most
   \(AN\Delta B_Q(1+qB_P)|I|/(\sqrt2h)\); the same literal coefficients
   bound the interval-then-law capacity supremum.
3. The general affine event is bounded, in the extended-real sense, by
   \(\kappa\sum_j\int_{E_j}\int_{[-R,R]^{N-1}}
   |\partial_\theta T_j|\), without transversality, a uniform pivot margin,
   finite-fiber assumptions, or independence.
4. The same affine theorem exactly recovers the monic presentation with the
   leading coefficient deterministic and outside the random vector, the
   prescribed low/high charts and literal velocities, and
   \[
   \Pr[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|J|
   \]
   for every \(d\geq1\), bounded interval, and arbitrary correlated lower-
   coefficient law, including the exact \(d=1\) branch.
5. Counter-example 1 has \(B_Q=\Gamma_{\mathrm{proj}}(F)=1/\delta\), exact
   witness probability \(\epsilon/(4\delta)\), and the distinct scale chain
   \[
   \frac1{4\delta}\leq C^{\mathrm{Pf}}_{\mathcal D}
   \leq\frac1\delta\leq\frac{\sqrt2}{\delta}.
   \]

All constants are literal, with no hidden dependence or confidence
parameter. The claim uses ordinary probability, arbitrary full-joint
coefficient correlation, the declared interval scopes, Euclidean
projective/operator norms, scalar chart velocity, and the exact endpoint and
degenerate branches. It does not claim that every raw Pfaffian presentation
admits the declared normalization with polynomial budgets. Progress type is
`full`.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The public theorem and final conjunction match the exact formalized R1--R5 target, including the five primitive-assumption scopes, deterministic-presentation-first quantifiers, arbitrary correlated capped joint laws, interval-then-law capacity order, exact affine-monic recovery, Counter-example scale audit, and `full` source-direction label. No target strengthening, weakening, or unsupported universal normalization claim was found.
- Roadmap or step coverage: All ten sketch steps have current proof/review pairs binding sketch attempt 2, the correct Step ID and unit attempt (`step_003` attempt 2; all others attempt 1), the matching current proof digest, and raw `ACCEPTED` status. All four specialized diagnostics are contract-valid and unanimously return raw `BLOCKING`, depth `assembly`, target `/proof-assembly`; the aggregate applies that common deepest repair depth rather than treating any diagnostic as proof evidence.
- Proof-details audit: The accepted producer chain closes the central incidence, cube-section, density, affine chart/exhaustion, monic ledger, and Counter-example arguments with the stated quantifiers and constants. The public transcription is not independently valid at Appendix equation (A.29), where multiplication is replaced by a comma; the accepted `step_006` source remains correct and cannot substitute for a malformed public proof.
- Adversarial stress test: The adversarial diagnostic tested \(N=1\), \(q=0\), \(\Delta=0\), stationary curves, all interval endpoint modes, tangent and multiple roots, infinite and identically-zero fibers, near-zero pivots, cube faces, \(d=1,2\), negative high-chart parameters, \(\delta=1\), \(\epsilon=\delta\), and arbitrarily correlated density-bounded laws. No counterexample to the theorem statement survived; the verified public (A.29) break remains blocking.
- LaTeX export structure/provenance gate: `main.tex`, the five content files, `arxiv.sty`, `ims.bst`, and `reference.bib` are present. The required setup, preliminaries, main theorem, proof sketch, ten appendix step subsections, allowed theorem-style environments, and final `Proof of the Main Theorem` subsection are present, with no workflow provenance, forbidden audit scaffolding, template placeholders, malformed command fragments, or forbidden public claim/hypothesis/invariant dependencies. An isolated exact-copy Tectonic build completed BibTeX and all reruns; the converged log has resolved citations/references and no final box warning. The assembly report's blanket no-warning statement is imprecise because the first pass had a transient reference-related overfull box.
- Main theorem self-containedness: The theorem uses only setup quantities, the five stable numbered assumptions, useful preliminary notation, and quantities defined inline before use. It does not cite appendix-local labels or workflow IDs as theorem premises, and its R1--R5 clauses state their own regimes and conclusions.
- Assumption provenance gate: Every theorem-facing condition is either one of the five primitive assumptions or a conclusion proved by a named public result translated from an accepted step. Nonvanishing, derivative envelopes, projective speed, incidence regularity, pivot legality, measurability, exhaustion, and specialization identities are derived rather than hidden as generated invariants.
- Redundant public prose gate: Static inspection found no copied sketch rows, dependency inventories, accepted-step narration, source-audit blocks, placeholder instructions, repeated workflow boilerplate, or mechanical prose debris in the public TeX.
- Proof-step notation surface gate: The main theorem does not leak proof-local dictionaries. The preliminaries nevertheless expose the unused alias \(\phi^{\mathrm{aff}}_\alpha\) and the appendix-local exhaustion set \(E_{j,m}\), which is redefined at its actual proof use; this is a blocking assembly-level notation-economy defect.
- Theorem readability and notation economy: The main theorem is long because the exact goal has five inseparable clauses, but it is organized as the reader-facing R1--R5 theorem rather than an opaque admissibility dictionary. Public constants have setting provenance and no helper notation hides a derivation. The two unnecessary preliminary definitions remain the only notation-surface blocker.
- Explicit-rate contract: The public result exposes \(q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1}\), \(d,J,\delta,\epsilon\), all literal constants, fixed deterministic data, ordinary-probability mode, interval and supremum modes, Euclidean projective/operator norms, scalar chart velocity, admissibility ranges, and the absence of hidden constants, confidence parameters, or auxiliary tolerances. No term is silently absorbed and no probability-mode conversion occurs.
- Rate Specialization Bridge: The public derivations visibly establish \(D_*\), the exact \(h^{-1}\) projective bridge, the central substitution, the affine chart integral, the monic beta-volume and two-cell ledger, and the Counter-example probability and scale chain. No auxiliary parameter choice, term absorption, or unproved appendix-to-main simplification is used.
- Baseline-reduction check: At \(q=0\), \(M=B_P=0\) and \(D_*=\Delta B_Q\); at \(N=1\) and zero projective speed the stated degeneracies are exact. The affine-monic specialization keeps the leading coefficient deterministic, retains the \(d\)-dimensional lower-coefficient law, gives exactly \(\kappa|J|\) at \(d=1\), and recovers \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|J|\) without a chart-count loss. Counter-example 1 retains \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) as distinct scales.
- LaTeX appendix full-derivation gate: Exhaustive, not representative, source-to-appendix comparison covered every Cited Result Application, Local Derivation unit, and Target-Step Assembly in all ten accepted steps, including the final `step_010` conjunction and main-theorem proof. Every source unit is represented, but two assembly-fidelity defects remain within that coverage: the accepted Euclidean \(C^1\) regular-level-set application is replaced by the inapplicable smooth Lee citation, and multiplication is lost in `step_006`'s finite-chart inequality at (A.29).
- LaTeX export citation/reference gate: All six external citation keys exist, all 46 labels are unique, and the converged build resolves citations and ordinary internal references. Acceptance still fails because Lee's cited smooth regular-level-set theorem does not match the proved \(C^1\) hypothesis, the Bogachev record falsely restricts a mixed Volume I/II citation set to Volume 2, and 89 manually tagged appendix equations are addressed by 71 hard-coded `(A.n)` occurrences with zero `\eqref` uses, so equation dependencies are not compiler-checked.
- LaTeX export synchronization: Every binding SHA-256 supplied for the setting, accepted sketch/global pairs, assembly report, tracker, all ten proof/review pairs, nine public/support files, and four specialized diagnostics matched before writing. The assembly report, public theorem, and `full` source-direction label agree on the attempted claim, but its `COMPLETE` and no-blocker assertions cannot override the frozen specialized blockers or the aggregate contract. Global artifacts and assembly claims were used only as diagnostic context.

## Critical Issues

1. Structural, rigor, citation, and adversarial reviewers; `latex_template/5_appendix.tex`, equation (A.29): the public finite-chart quotient estimate prints
   \[
   m^2|H_j(s,\zeta)|,|F_j(\theta)-F_j(s)|
   \]
   instead of the product
   \[
   m^2|H_j(s,\zeta)|\,|F_j(\theta)-F_j(s)|.
   \]
   The displayed line is not a scalar inequality, so it does not prove the finite-level Lipschitz premise used by the affine area formula; R3 and the exact monic R4 specialization are therefore unsupported in the standalone public proof. The accepted `step_006` source contains the correct derivation, making this an assembly transcription defect. Selected repair depth: `assembly`; target: `/proof-assembly`.
2. Citation reviewer; `latex_template/5_appendix.tex`, the central incidence regular-level-set application: the appendix proves only that \(g(\theta,a)=\langle a,\gamma(\theta)\rangle\) is \(C^1\), then cites Lee's smooth-manifold Regular Level Set Theorem, whose stated map hypothesis is smooth. This citation does not establish the required \(C^1\) incidence hypersurface and rectifiability under the public assumptions. The accepted `step_003` source correctly invokes a Euclidean \(C^1\) regular-level-set theorem, so assembly must faithfully cite that level of result or reproduce its valid public justification without changing the producer. Selected repair depth: `assembly`; target: `/proof-assembly`.
3. Rigor reviewer and independent aggregate scan; `latex_template/5_appendix.tex` and its public equation references: the appendix has 89 manual `\tag{A.n}` displays, 71 hard-coded `(A.n)` occurrences, and no equation `\label`/`\eqref` pairs. These theorem-style and proof dependencies are not compiler-checked and can silently drift when (A.29) or any earlier display changes. Replace manual numbering dependencies with unique equation labels and `\eqref` references, then rebuild and verify resolution. Selected repair depth: `assembly`; target: `/proof-assembly`.
4. Citation reviewer; `latex_template/reference.bib`, `bogachev2007measure`: the record declares Volume 2, while the six public uses include facts from both Volume I and Volume II. The rendered bibliography therefore misidentifies several cited authorities; the combined-work DOI does not cure the false volume restriction. Remove the inaccurate volume field or split the citation into correctly identified volume records with appropriate locators. Selected repair depth: `assembly`; target: `/proof-assembly`.
5. Rigor reviewer; `latex_template/2_preliminary.tex`: \(\phi^{\mathrm{aff}}_\alpha\) is defined but never used, while \(E_{j,m}\) is appendix-local exhaustion machinery absent from the main theorem and is defined again in the appendix where needed. Their presence violates the notation-economy and notation-surface gates and obscures which quantities are genuinely theorem-facing. Remove the unused alias and keep the exhaustion definition local to its proof. Selected repair depth: `assembly`; target: `/proof-assembly`.

## Failure-Type Rationale

The branch has substantial theorem-level progress: the authoritative setting,
accepted sketch, all ten accepted proof interfaces, exact R1--R5 constants,
assumption provenance, all-step appendix coverage, rate bridges, and baseline
reductions are coherent. No specialized or aggregate check identifies a flaw
in an accepted producer interface, a missing sketch bridge, or a theorem-
contract obstruction. Acceptance nevertheless fails because all four
contract-valid specialized diagnostics are `BLOCKING`, and the standalone
public bundle contains a malformed theorem-critical derivation, an
incompatible cited-theorem regularity level, non-robust equation references,
an inaccurate bibliography record, and unnecessary preliminary notation.

Every blocker can be repaired by retranslating or reconciling material already
available at assembly depth: restore the accepted product, use the accepted
\(C^1\) result at the correct source level, install compiler-checked equation
references, correct the bibliography identity, and remove the nonpublic
notation. No proof-step claim, dependency, sketch row, primitive assumption,
probability or norm mode, exposed dependence, or success criterion must
change. The controlling and smallest supported route is therefore
`PROOF_ASSEMBLY_FLAW` with `/proof-assembly`, rather than a step, sketch, or
idea retry.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
