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

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The public theorem and final named-result conjunction are claim-identical to the authoritative R1--R5 goal. They preserve all five primitive-assumption scopes, deterministic-presentation-first quantifiers, arbitrary correlated capped joint laws, the interval-then-law capacity order, exact affine-monic recovery, the Counter-example scale audit, and the source-direction classification full. The result is expressly limited to the declared anchored, unit-range, coefficient-controlled presentation and makes no unsupported universal-normalization claim.
- Roadmap or step coverage: All ten current proof/review pairs bind sketch attempt 2, the exact Step ID, the listed unit attempt (step_003 attempt 2 and every other step attempt 1), the matching current proof digest, and raw ACCEPTED status. Structural, rigor, citation, and adversarial diagnostics all match their supplied digests and have the contract-valid raw controls Reviewer Verdict = PASS, Blocking Issues = None, Suggested Repair Depth = None, and Smallest Candidate Repair Target = None. Their PASS tokens were treated only as diagnostics; every aggregate obligation below was checked independently.
- Proof-details audit: The accepted producer chain and standalone appendix prove the unit-box derivative envelope, normalized-projective bridge, central incidence and section estimates, arbitrary-joint-density conversion, measurable affine chart exhaustion, exact monic two-cell ledger, Counter-example wedge calculation, and seven-producer final conjunction with their stated quantifiers and literal constants. The attempt-2 repairs were independently verified: Appendix (A.29) contains the required product, the incidence proof uses a Euclidean \(C^1\) implicit-function theorem with an explicit nonzero coefficient partial, the invalid Lee authority is absent, Bogachev metadata identifies Volumes I--II, and the unused preliminary notation is gone.
- Adversarial stress test: Independent stress covered \(N=1\), \(q=0\), \(\Delta=0\), stationary curves, every endpoint convention, tangent and multiple roots, infinite and identically-zero fibers, near-zero pivots, cube faces, \(d=1,2\), negative outer-chart parameters, \(\delta=1\), \(\epsilon=\delta\), arbitrarily correlated capped laws, and upper bounds exceeding one. No counterexample, quantifier change, hidden condition, or unsupported finite-fiber assumption survived. The fresh build reported one 7.52167pt overfull hbox in the final proof-sketch paragraph; inspection shows a small line-breaking overflow with no clipped formula, citation, result name, or semantic collision, so it is nonblocking paper-readiness cleanup.
- LaTeX export structure/provenance gate: The exact temporary copy contains main.tex, all five required content files, arxiv.sty, ims.bst, and reference.bib; Tectonic 0.16.9 completed TeX, BibTeX, reruns, and PDF generation with resolved references and citations. The setup has five stable numbered assumptions, the required preliminaries/main-theorem/proof-sketch sections, ten step-named appendix subsections using only allowed theorem-style environments, and a final Proof of the Main Theorem subsection. No workflow provenance, audit scaffolding, redundant sketch-row prose, placeholders, malformed commands, forbidden claim/hypothesis/invariant dependencies, unsafe support behavior, or non-ASCII bundle byte was found. The paper proof stands without workflow files and cites named paper-facing results as authorities.
- Main theorem self-containedness: The R1--R5 theorem uses only quantities defined in the theoretical setup or useful preliminaries, the five stable numbered assumptions, and constants or functions defined inline before use with explicit dependence. It contains no appendix-local premise, proof-step ID, workflow label, or local lemma/proposition reference, and each clause states its own assumptions, regime, quantifiers, and conclusion.
- Assumption provenance gate: Every theorem-facing condition is one of the five primitive setting assumptions or is proved before use by a named appendix result translated from a current accepted step. Nonvanishing, derivative envelopes, projective speed, incidence regularity, null exceptional classes, chart legality, measurability, exhaustion coverage, velocity caps, and specialization identities are derived conclusions; no generated event, pivot margin, transversality condition, independence premise, stability condition, or boundedness invariant is smuggled into the unconditional theorem.
- Redundant public prose gate: The public TeX contains no copied step tables, dependency inventories, accepted-status narration, source-audit blocks, standalone object-mapping or assumption-discharge scaffolding, instructional filler, repeated workflow boilerplate, or mechanical phrases such as duplicated words. The remaining exposition introduces or connects mathematical results rather than documenting the assembly workflow.
- Proof-step notation surface gate: Every helper introduced by the used step proofs was checked against its public-facing, appendix-local, or proof-local classification. The main theorem exposes only setting quantities and exact target objects; proof-local incidence, chart, measure, wedge, and ledger abbreviations remain inside proofs, while exhaustion and insertion-map objects remain appendix-local. The repaired preliminaries no longer promote the unused affine-event alias or \(E_{j,m}\); the latter is defined only where the finite-level appendix argument uses it.
- Theorem readability and notation economy: The theorem is necessarily long because the exact goal has five inseparable clauses, but it is organized as the reader-facing R1--R5 statement rather than an admissibility dictionary. Preliminary notation is restricted to objects used by the theorem, constants have visible setting or named-result provenance, and one-off proof constants do not hide finiteness, dependence, or an assumption-discharge obligation. No separate simplified corollary is required for this already direct five-clause interface.
- Explicit-rate contract: The public result exposes \(q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1}\), and where applicable \(d,J,\delta,\epsilon\), with all numerical coefficients literal. It declares the fixed deterministic presentation, ordinary-probability mode, positive-length and bounded-interval modes, interval-then-law supremum order, Euclidean vector/operator/projective norms, scalar chart velocity, admissibility ranges, and the absence of hidden constants, confidence parameters, approximation errors, or auxiliary tolerances. No exposed dependence is absorbed or silently discarded.
- Rate Specialization Bridge: Named appendix results visibly prove \(D_*=\Delta B_Q(1+qB_P)\), the exact \(h^{-1}\) projective transfer, the identity \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\), the central substitution, the affine chart integral, both monic velocity estimates, the \((2R)^{d-1}\) beta-volume and two-cell length ledger, and the Counter-example probability and scale chain. Every domination and boundary case is displayed; there is no prose-only absorption, auxiliary choice, probability conversion, or unproved appendix-to-main simplification.
- Baseline-reduction check: At \(q=0\), \(M=B_P=0\) and \(D_*=\Delta B_Q\); at \(N=1\) or zero projective speed the stated degeneracies are exact. The affine specialization keeps the monic coefficient deterministic and outside the \(d\)-dimensional random vector, handles every bounded \(J\), gives exactly \(\kappa|J|\) for \(d=1\), and recovers \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)|J|\) with no chart-count or correlation loss. Counter-example 1 preserves the distinct \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) scales.
- LaTeX appendix full-derivation gate: Exhaustive source-to-appendix comparison, not sampling, covered every invoked Cited Result Application, all Local Derivation units, and every Target-Step Assembly for all ten used accepted steps. The per-step local-unit counts \(2,2,3,2,2,6,4,3,3,1\) (28 total) are all represented with their definitions, displays, inequality chains, object mappings, assumption discharges, null and boundary cases, constants, exhaustion arguments, and concluding assembly text. The 29 paper-facing theorem-style authorities account for the extra named two-case monic target bridge; step_010 and the main theorem proof are direct named-result conjunctions. No source unit is replaced by a summary, status assertion, citation-only shortcut, or unaccounted compression.
- LaTeX export citation/reference gate: All 18 citation commands use five keys present in reference.bib; their theorem statements, object mappings, direction of use, hypotheses, and nonoutputs agree with the public proof. The Rudin \(C^1\) implicit-function citation is used at the proved regularity, Federer supports area/coarea, Ball supports only cube-section size, Balcan--Nguyen--Sharma supplies the representation convention, and Bogachev is correctly labeled Volumes I--II. All 135 labels are unique. The 89 appendix equations are compiler-numbered and labeled sequentially eq:appendix-1 through eq:appendix-89, all 71 appendix dependencies use \eqref, only the six intentional R1/R2a/R2b/R3/R4/R5 tags remain, and the fresh build resolves every internal and external reference.
- LaTeX export synchronization: Before writing, every supplied SHA-256 for the authoritative setting, accepted sketch/global pairs, protected tracker, assembly report, all ten current proof/review pairs, nine bundle files, and four specialized diagnostics matched. The current reviews passed their sketch-attempt, Step-ID, unit-attempt, proof-digest, and status identity checks; the assembly report is contract-valid and its attempted claim is text-identical to this review. The public theorem, assembly report, and full source-direction label agree, while global and specialized artifacts were used only as diagnostic context. Final post-write synchronization rechecked the protected hashes, exact-copy build inputs, stale archived attempt-1 aggregate, ASCII/control-byte hygiene, and single-output-file scope.

## Critical Issues

None

## Failure-Type Rationale

ACCEPTED is the controlling classification because all four specialized
diagnostics are contract-valid PASS artifacts and every independent aggregate
gate also passes. The setting and final claim are identical, all ten current
accepted producer interfaces are correctly bound, all used source units are
substantively preserved in the standalone appendix, the theorem uses only
proved or primitive conditions, every explicit rate and baseline reduction
closes with literal constants, and the fresh public build resolves its named
authorities and compiler-checked dependencies. The attempt-2 bundle removes
each prior assembly blocker without changing a proof-step claim, dependency,
primitive assumption, probability or norm mode, exposed dependence, success
criterion, or source-direction classification.

There is consequently no assembly, step, sketch, or idea repair to route. The
score is 9 rather than 10 only because the 7.52167pt proof-sketch overfull box
is a minor typography concern. It neither obscures proof content nor violates
a theorem, citation, synchronization, or standalone-compilation obligation,
so it is not a Critical Issue and cannot override the acceptance gate.

## Suggested Next Action

None

## Retry Mode

none
