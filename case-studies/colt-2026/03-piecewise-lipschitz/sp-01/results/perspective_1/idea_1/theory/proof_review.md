# Proof Review

## Formalized Setting

- Basic setup:
  Fix an integer \(d\geq 1\), a radius \(R>0\), and a compact one-dimensional parameter domain \(\Theta\subseteq\mathbb R\). Let \(\mathcal D\) be a nonempty class of Borel probability laws on \([-R,R]^d\). Write
  
  \[
  \alpha=(\alpha_0,\beta),\qquad
  \beta=(\alpha_1,\ldots,\alpha_{d-1}),\qquad
  \phi_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k .
  \]
  
  For \(d=1\), \(\beta\) is the empty tuple and its marginal is the point mass on the one-point space. For any Borel probability law \(\nu\) on \([-R,R]^d\), denote its \(\beta\)-marginal by \(\pi_\nu\) and write \(\Pr_\nu\) for probability when \(\alpha\sim\nu\). No simplicity, root-separation, or transversality condition is imposed on the zeros of \(\phi_\alpha\), and no learner or online algorithm is fixed.

  Let \(\mathscr I(\Theta)\) be the collection of all intervals \(I\subseteq\Theta\) with positive Lebesgue length \(|I|>0\), and let \(m_I=(\inf I+\sup I)/2\). Define the zero set \(Z_\alpha:=\{\theta\in\Theta:\phi_\alpha(\theta)=0\}\) and the source root-hitting constant
  
  \[
  C_{\mathcal A}
  :=\sup_{\nu\in\mathcal A}\ \sup_{I\in\mathscr I(\Theta)}
  \frac{\Pr_\nu(Z_\alpha\cap I\neq\varnothing)}{|I|}
  \]
  
  for every nonempty class \(\mathcal A\) of cube-supported coefficient laws. In particular, the primary target uses \(\mathcal A=\mathcal D\).

  Put
  
  \[
  B:=\max\left\{1,\sup_{\theta\in\Theta}|\theta|\right\},
  \qquad
  L_{d,R,\Theta}
  :=\sup_{\substack{\alpha\in[-R,R]^d\\ \theta\in\Theta}}
  |\partial_\theta\phi_\alpha(\theta)| .
  \]
  
  Since
  
  \[
  \partial_\theta\phi_\alpha(\theta)
  =d\theta^{d-1}+\sum_{k=1}^{d-1}k\alpha_k\theta^{k-1},
  \]
  
  the deterministic envelope is finite and satisfies
  
  \[
  L_{d,R,\Theta}
  \leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}<\infty,
  \]
  
  with an empty sum interpreted as zero.

  Whenever a cube-supported coefficient law \(\nu\) has a regular conditional density \(f_\nu(a_0\mid\beta)\) of \(\alpha_0\) given \(\beta\), extend that density by zero outside \([-R,R]\) and define
  
  \[
  K_\nu(\beta):=\operatorname*{ess\,sup}_{a_0\in\mathbb R}f_\nu(a_0\mid\beta).
  \]
  
  For any class \(\mathcal A\) of such laws, define its averaged envelope by
  
  \[
  \bar\kappa_{\mathcal A}
  :=\sup_{\nu\in\mathcal A}\int K_\nu(\beta)\,\pi_\nu(d\beta).
  \]

  For the constructive specialization below, let \(\mathcal D_{\mathrm{RI}}\) denote a nonempty class of random-intercept laws. For each \(\mu\in\mathcal D_{\mathrm{RI}}\), the higher-coefficient vector has an arbitrary law \(\beta\sim\pi_\mu\) on \([-R,R]^{d-1}\), \(U_\mu\sim\operatorname{Unif}[-1,1]\) is independent of \(\beta\), and measurable functions \(G_\mu,\rho_\mu\) generate
  
  \[
  \alpha_0=G_\mu(\beta)+\rho_\mu(\beta)U_\mu .
  \]
  
  A fixed-width member is one for which \(\rho_\mu(\beta)=r_\mu\) \(\pi_\mu\)-almost surely for some constant \(r_\mu>0\). The notation \(\mathbf 1\{E\}\) denotes the indicator of an event \(E\).
  
  For the explicit heteroscedastic witness with zero location function, when \(d\geq3\) and \(q\in(0,1)\), let \(Z\sim\operatorname{Unif}[-R/2,R/2]\), let \(U\sim\operatorname{Unif}[-1,1]\) be independent of \(Z\), and define
  
  \[
  \rho_q(z):=\frac R2\left(\frac{2|z|}{R}\right)^q,
  \qquad
  \beta_q(z):=(z,z^2/R,0,\ldots,0),
  \qquad
  \alpha^{(q)}:=(\rho_q(Z)U,\beta_q(Z)).
  \]
  
  Denote the law of \(\alpha^{(q)}\) by \(\mu_q\).

- Technical assumptions:
  - `assump:averaged-intercept-density` (Averaged conditional intercept-density envelope): For every \(\mu\in\mathcal D\), a regular conditional law of \(\alpha_0\) given \(\beta\) admits a jointly measurable Lebesgue density \(f_\mu(a_0\mid\beta)\) for \(\pi_\mu\)-almost every \(\beta\); the corresponding \(K_\mu\) is \(\pi_\mu\)-measurable; and \(\bar\kappa_{\mathcal D}<\infty\). The marginal \(\pi_\mu\) is otherwise unrestricted: it may be discrete or singular and its coordinates may be arbitrarily dependent. In particular, this assumption imposes no finite bound on \(\operatorname*{ess\,sup}_{\beta\sim\pi_\mu}K_\mu(\beta)\), either for an individual \(\mu\) or uniformly over \(\mathcal D\).

  - `assump:random-intercept-witness` (Optional random-intercept source): For every \(\mu\in\mathcal D_{\mathrm{RI}}\), the functions in the random-intercept representation satisfy \(\rho_\mu(\beta)>0\) for \(\pi_\mu\)-almost every \(\beta\) and
    
    \[
    |G_\mu(\beta)|+\rho_\mu(\beta)\leq R
    \quad\text{for }\pi_\mu\text{-almost every }\beta,
    \qquad
    M_{\mathrm{RI}}
    :=\sup_{\mu\in\mathcal D_{\mathrm{RI}}}
    \int\frac{1}{\rho_\mu(\beta)}\,\pi_\mu(d\beta)<\infty.
    \]
    
    This is a sufficient construction used to verify `assump:averaged-intercept-density`, not an additional requirement on a general class \(\mathcal D\). No density, absolute-continuity, or coordinate-independence condition is imposed on \(\pi_\mu\).

## Formalized Goal

- Goal statement:
  Prove the following one-way, coefficient-side sufficient theorem and its stated constructive specialization. Under `assump:averaged-intercept-density`, simultaneously for every \(\mu\in\mathcal D\) and every \(I\in\mathscr I(\Theta)\),
  
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq \bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|,
  \qquad\text{and hence}\qquad
  C_{\mathcal D}\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty.
  \]
  
  As part of the same theorem, prove that `assump:random-intercept-witness` yields, for \(\pi_\mu\)-almost every \(\beta\),
  
  \[
  f_\mu(a_0\mid\beta)
  =\frac{\mathbf 1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}}
  {2\rho_\mu(\beta)},
  \qquad
  K_\mu(\beta)=\frac{1}{2\rho_\mu(\beta)},
  \qquad
  \bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq\frac12M_{\mathrm{RI}},
  \]
  
  so the same all-law, all-positive-length-interval conclusion applies to \(\mathcal D_{\mathrm{RI}}\). This includes every fixed-width choice \(\rho_\mu\equiv r_\mu>0\) obeying the displayed support and class-uniform integrability conditions, with arbitrary possibly singular or dependent \(\pi_\mu\). It must also verify that, for every \(d\geq3\), \(R>0\), and \(q\in(0,1)\), the concrete law \(\mu_q\) is supported on \([-R,R]^d\), obeys \(\rho_q(Z)>0\) almost surely, and satisfies
  
  \[
  \operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}K_{\mu_q}(\beta)=\infty,
  \qquad
  \int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
  =\frac{1}{R(1-q)},
  \qquad
  C_{\{\mu_q\}}\leq\frac{L_{d,R,\Theta}}{R(1-q)}.
  \]
  
  Finally, verify that \(\mu_q\) is supported on the nonlinear heteroscedastic sheet
  
  \[
  \left\{(a_0,z,z^2/R,0,\ldots,0):
  |z|\leq R/2,\ |a_0|\leq\rho_q(z)\right\},
  \]
  
  whose curved \((\alpha_1,\alpha_2)\)-projection prevents it from being an affine image of a bounded-density latent law in the sense of the affine-latent baseline. The claimed theorem is sufficient only: it asserts neither necessity nor a converse, and it makes no uniform polynomial-in-\((d,R)\) claim for an indexed family.

## Reviewed Roadmap

The accepted sketch has seven acyclic steps. `step_001` derives the explicit derivative envelope, proves Borel measurability for every interval endpoint convention, and localizes root hitting to an intercept slab of exact width \(L_{d,R,\Theta}|I|\). `step_002` disintegrates over that slab and integrates the possibly unbounded conditional cap before taking the class supremum. `step_003` constructs the measurable random-intercept kernel, derives the averaged envelope with its exact factor \(1/2\), and proves the fixed-width specialization. `step_004` proves the exact heteroscedastic sheet support, cube containment, almost-sure positive width, recovery of the conditioning coordinate, and the nonzero-fiber cap formula. `step_005` proves positive-mass cap blowup, evaluates the cutoff integral exactly, and invokes the general bound for the singleton law. `step_006` combines affine-hull dimension three, zero within-hull three-volume, the fixed-monic descending-coordinate embedding, and a full-rank affine pushforward calculation to prove the precisely scoped nonmembership result. `step_007` assembles those interfaces and separately derives the bounded-joint-density bridge and the \(B=1\) baseline specialization.

All seven producers use sketch attempt 1 and unit attempt 1. Their accepted reviews bind the current proof files. The global proof and all specialized reviews were treated only as diagnostics; the aggregate decision rests on the setting, accepted step proofs and reviews, the complete public LaTeX derivations, and the independently audited external source interface.

## Attempted Claim

For the exact setting in `setting.md`, under
`assump:averaged-intercept-density`, simultaneously for every
$\mu\in\mathcal D$ and every positive-length interval
$I\subseteq\Theta$,
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|,
\qquad
C_{\mathcal D}\leq
\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty,
\]
with
\[
L_{d,R,\Theta}
\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}.
\]
Under the separately scoped `assump:random-intercept-witness`, the claim
includes the exact conditional density and cap, cube support,
$\bar\kappa_{\mathcal D_{\mathrm{RI}}}=M_{\mathrm{RI}}/2$, the resulting
all-law/all-interval bound, and the exact fixed-width specialization.

For every $d\geq3$, $R>0$, and $q\in(0,1)$, the claim includes the exact
heteroscedastic sheet support, almost-sure positive width, the valid
nonzero-fiber conditional density and cap, infinite essential slice cap,
\[
\int K_{\mu_q}\,d\pi_{\mu_q}=\frac1{R(1-q)},
\qquad
C_{\{\mu_q\}}\leq\frac{L_{d,R,\Theta}}{R(1-q)},
\]
and exclusion from precisely the full-column-rank affine pushforwards of
bounded-support, bounded-Lebesgue-density latent laws. The optional
bounded-joint-density comparison gives
$\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}$ and, at $B=1$, the exact
monic scale
$\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]$.

The theorem is sufficient only. It claims no necessity, converse, indexed
uniform polynomial dependence on $(d,R)$, root simplicity, separation,
transversality, learner, or online guarantee.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The assembled theorem proves the exact one-way coefficient-side sufficient result, both constructive specializations, the explicit witness, and the narrowly scoped affine-latent exclusion. It remains consistently classified as `material_partial`; necessity, source part (b), indexed polynomial dependence, root regularity, and online guarantees remain open or unclaimed.
- Roadmap or step coverage: PASS. All seven current proof/review pairs are sketch-attempt-1, unit-attempt-1, `COMPLETE`/`ACCEPTED`, and hash-bound. The dependency graph is acyclic, every theorem-facing generated fact has an accepted producer, and no diagnostic artifact is used as proof authority.
- Proof-details audit: PASS. The aggregate comparison covered every `Cited Result Applications` block, all 25 local derivation units, and every target-step assembly in Steps 001--007 against the corresponding appendix subsection. This was exhaustive source-to-appendix comparison, not representative checking or sampling; every definition, equation chain, assumption discharge, boundary case, cited-result mapping, and concluding composition is substantively preserved.
- Adversarial stress test: PASS. The proof handles all endpoint conventions, disconnected compact domains, tangent and multiple roots, \(d=1\), \(d=3\), null and endpoint witness fibers, singular conditioning marginals, unbounded slice caps, \(q\downarrow0\), \(q\uparrow1\), and every full-rank affine latent dimension. The \(k=3\) case is closed by within-hull nullity rather than curvature alone.
- LaTeX export structure/provenance gate: PASS. The nine required files are present; the five content files have the required section order, two numbered stable-id assumptions, seven goal-named step subsections, and the final proof subsection. Public TeX contains no workflow paths, reviewer decisions, audit scaffolding, forbidden environments, placeholders, copied sketch fields, or mechanical prose debris.
- Main theorem self-containedness: PASS. The theorem uses only setup and preliminary notation, cites only the two numbered assumptions, defines \(S_q\) and \(\iota_d\) inline, exposes every local regime before its conclusion, and contains no appendix-local or step-local reference. Its three mathematical clauses are readable, and the separately scoped baseline corollary gives a concise public comparison interface.
- Assumption provenance gate: PASS. `assump:averaged-intercept-density` is primitive only for the general clause; `assump:random-intercept-witness` is separately scoped and derives the averaged interface for its class. The explicit witness assumes neither condition: support, conditioning, cap, integrability, and geometry are produced by named results before use. The joint-density cap and affine-latent hypotheses remain comparison-local.
- Redundant public prose gate: PASS. The appendix contains theorem-style statements, proofs, and concise mathematical transitions only; it has no dependency inventories, local-flow summaries, provenance narration, standalone use notes, or boilerplate assembled-conclusion prose.
- Proof-step notation surface gate: PASS. Public quantities are setting-defined or essential theorem interfaces. Appendix-local and proof-local slabs, cutoffs, kernel versions, geometry maps, pseudoinverses, and marginal-density auxiliaries stay out of the main theorem and have visible definitions and provenance where used.
- Theorem readability and notation economy: PASS. The preliminaries contain only stable measure, support, pushforward, affine-hull, and Hausdorff conventions needed by the theorem. No admissibility dictionary, opaque helper-constant package, or unproved boundedness label obscures the public claim.
- Explicit-rate contract: PASS. R1, R2, R3, and the comparison expose \(d,R,\Theta,B,L_{d,R,\Theta},|I|\), the averaged caps, reciprocal widths, \(q\), and \(\kappa_{\mathrm{joint}}\), with no hidden constants. Quantifier order, exact-probability mode, almost-everywhere and almost-sure scopes, static horizon, measure/norm conventions, admissibility ranges, and the absence of term absorption or probability conversion are explicit.
- Rate Specialization Bridge: PASS. The public bounded-joint-density corollary states the auxiliary joint-density premise and exact target rate; the appendix lemma constructs measurable conditional versions and proves \(g_\nu K_\nu\leq\kappa_{\mathrm{joint}}\) and \(\int K_\nu d\pi_\nu\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\). The named baseline proposition then applies R1 and derives the \(B=1\) bracket without hidden simplification.
- Baseline-reduction check: PASS. At \(B=1\), the derivative envelope gives exactly \(d+Rd(d-1)/2\); the cube factor is exactly \((2R)^{d-1}\), including \(d=1\). The new theorem does not weaken or alter the cited affine baseline on its own full-rank bounded-density class.
- LaTeX appendix full-derivation gate: PASS. Every used accepted step, not a sample, passed direct source-to-appendix coverage. The appendix contains 25 allowed theorem-style units corresponding to all 25 local units, preserves all seven concluding assemblies, and contains no unjustified `routine`, `similar`, or citation-only shortcut.
- LaTeX export citation/reference gate: PASS. Static checks find 36 unique labels, no duplicates, 29 defined reference targets, one citation key with one matching BibTeX entry, no malformed command fragments, and typed mathematical dependencies. An isolated Tectonic/BibTeX build completed to a 29-page PDF with no errors, unresolved or multiply defined references/citations, or box warnings; only nonblocking font substitutions and encoding warnings in Tectonic's bundled unused algorithm styles remain.
- LaTeX export synchronization: PASS. Fresh hashes match the required setting, sketch/review, global diagnostic/review, assembly report, and all four specialized reviews. The assembly report is `COMPLETE` with blockers `None`; the current LaTeX bundle is unchanged from the audited bundle; and every step review binds its current proof hash. `worker_log.md` is schema-valid, records the requested aggregate handle with perspective, sketch, and assembly scope, and keeps producer, specialized reviewer, and aggregate reviewer roles distinct. The theory and proof trackers show idea, sketch, global, step, and assembly attempts within configured budgets.
- Specialized-review resolution: All four specialized verdicts are contract-valid `PASS` records, so there is no verdict disagreement. The citation concern is nonblocking because the BibTeX record is valid, resolves the exact source, and includes correct authors, title, year, PMLR volume, and arXiv identifier; omitted proceedings/pages metadata affects presentation, not source identity or theorem traceability. The adversarial rank-phrasing concern is also nonblocking because the theorem explicitly restricts the comparison to full-column-rank maps and the appendix independently proves the exact affine pushforward dimension and density statement used by the contradiction.

## Critical Issues

None

## Failure-Type Rationale

No aggregate blocker remains. The exact formalized goal is proved by the current hash-bound step artifacts and fully preserved in the paper-ready LaTeX bundle. The two specialized nonblocking concerns do not require proof, sketch, or assembly repair, so acceptance with no retry is the aligned outcome.

## Suggested Next Action

None

## Retry Mode

none
