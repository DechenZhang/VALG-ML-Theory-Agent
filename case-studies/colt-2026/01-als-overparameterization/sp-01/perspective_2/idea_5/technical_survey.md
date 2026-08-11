# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_5\), attempt 2. The protocol is transactional one-probe discovery with a radial sign bracket, an angular-only strict-saddle certificate, exact rollback, probe-local response isolation, projected/retracted protected directions, and a protected terminal chart.
- Setting / goal summary: The unchanged modewise-near-orthogonal Gaussian-smoothed class asks for a conditional finite-tape reachable-landscape theorem at \(k=\Theta(r^{3/2}(\log r)^2)\), followed by same-target balanced PL refinement to arbitrary relative Frobenius accuracy. Attempt 2 stress-tests the requested weighted isolation, actual certificate-scale invariant, projected angular trajectory, and chart-entry interface. It finds no target-faithful selected framework under the declared weight range.

## Candidate Frameworks

### Framework 1: Transactional angular strict-saddle discovery with radial bracketing

- Source papers: *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (COLT 2015, arXiv:1503.02101); *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017, https://proceedings.mlr.press/v70/sharan17a.html); *Smoothed Analysis of Tensor Decompositions* (STOC 2014, arXiv:1311.3651); `perspective_2/idea_4/proof_sketch_review.md`.
- Applicability to current branch: The orthogonal strict-saddle calculation is close to the angular product-of-spheres subproblem, while the transactional protocol freezes all protected slots and therefore gives an exact fixed residual during a probe. Near-orthogonal Gram perturbation can be handled after the orthogonal calculation. The prior idea-4 artifact is used as a negative source: its full-tangent Hessian and unresolved-residual beta interface are deliberately absent here.
- Proof roadmap:
  1. Prove the static realized Gram/norm event and a residual decomposition for a reachable protected state.
  2. Use the exact radial identity to reach a positive scalar bracket, then analyze the fixed-radius angular score. Show that an approximate angular local maximum with positive capture is close to one unresolved channel; transfer this by perturbation from the orthogonal multilinear form.
  3. Use exact rollback and the conditional Haar basin event to amplify one successful probe per unresolved channel, then enter a same-target balanced chart and prove PL refinement.
- Key lemmas / ingredients: Orthogonal multilinear-form critical-point equations; a two-channel negative angular-curvature witness; perturbation of restricted Hessians and contractions under modewise Gram error; radial sign bracketing; Haar anti-concentration in protected complements; and a balanced CP Jacobian lower bound near an exact representation.
- Main transfer challenges: The cited strict-saddle paper uses a different objective and is not a theorem wrapper. The current proof must establish the current residual-to-target map, handle unequal weights and protected residual errors, and prove polynomial (not exponential in \(n\)) basin probability. The certificate must be shown to imply a probe-local response bound, not a full unresolved coefficient purity statement.
- Potential repair techniques and supporting references:
  - Technique: Write the angular loss as a perturbed multilinear score on a product of spheres and classify all approximate second-order points by a direct two-channel rotation argument.
  - Supporting reference: *Escaping From Saddle Points: Online Stochastic Gradient for Tensor Decomposition* (arXiv:1503.02101), strict-saddle decomposition and negative-curvature escape.
  - Why it may help: It supplies the shape of the saddle witness; the current-notation proof will replace its objective and verify every contraction, Hessian, and sign convention.
  - Technique: Use an orthogonalized/protected-span induction to make each accepted probe consume one unresolved channel.
  - Supporting reference: *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017, PMLR v70).
  - Why it may help: Its separation mechanism motivates the Gram-inverse span estimate, while the present proof retains the exact GD protocol and uses no ALS conclusion as a black box.
- Disposition: `rejected`
- Branch notes: The framework repairs the old beta and radial-sign defects in the orthogonal baseline, but its projected/retracted commits are exactly modewise orthogonal. The allowed unequal-weight near-orthogonal family in proof_sketch.md then separates the committed state from every same-target Euclidean PL chart. Its weighted perturbation ratio \(\kappa^6\mu_{\rm real}^2\) is also unbounded. The cited papers cannot supply a bridge for either defect.

### Framework 2: Smoothed Khatri--Rao conditioning and residual algebra

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (NeurIPS 2025, https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html); *Smoothed Analysis of Tensor Decompositions* (STOC 2014, arXiv:1311.3651); *New Tools for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with Dependent Entries* (STOC 2024, arXiv:2405.01517).
- Applicability to current branch: These sources support normalized Gaussian perturbation, tensor-product Gram conditioning, and anti-concentration calculations needed for the once-drawn event and Haar proposal analysis. They do not analyze the present one-probe balanced GD trajectory.
- Proof roadmap:
  1. Transfer the base modewise margin to realized modewise, pair, and triple Gram bounds.
  2. Express each protected residual as unresolved target atoms plus an explicitly bounded committed-slot error.
  3. Use structured polynomial anti-concentration only for the fresh-probe basin event, keeping instance and tape randomness separate.
- Key lemmas / ingredients: Gaussian norm and inner-product concentration, Schur-product Gram perturbation, least-singular-value transfer, and exact matricization/contraction identities.
- Main transfer challenges: Collective Khatri--Rao conditioning does not itself identify a single target or prove a dynamic invariant. Any use of these results must map the current normalized atoms and residual to the exact theorem interfaces.
- Potential repair techniques and supporting references:
  - Technique: A direct normalized-column perturbation lemma followed by a finite union bound.
  - Supporting reference: *Smoothed Analysis of Tensor Decompositions* (arXiv:1311.3651).
  - Why it may help: It gives a source-faithful route to static tensor-product conditioning, but no trajectory conclusion.
  - Technique: Treat the current probe response vector as a degree-three polynomial in Haar coordinates and apply a small-ball bound on a declared basin event.
  - Supporting reference: *New Tools for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with Dependent Entries* (arXiv:2405.01517).
  - Why it may help: It provides anti-concentration ideas for dependent polynomial features; the exact current-object mapping must still be proved.
- Disposition: `backup`
- Branch notes: This framework still supplies reusable static concentration and residual algebra for a successor idea. It cannot be used to import the NeurIPS 2025 quadratic-rank ALS theorem into this GD branch or to repair projected-to-nonorthogonal chart entry.

### Framework 3: Local balanced CP chart and PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587); *On Global Convergence of Alternating Least Squares for Tensor Approximation* (DOI:10.1007/s10589-022-00428-1); `perspective_2/idea_1/technical_survey.md`.
- Applicability to current branch: The local quotient nondegeneracy viewpoint is relevant after all commits have been matched to distinct target atoms. A direct balanced Jacobian calculation can provide the consumed PL interface, but the cited ALS results do not provide chart entry for this GD procedure.
- Proof roadmap:
  1. Align committed slots with the finite sign/permutation orbit of the exact balanced representation.
  2. Lower-bound the balanced CP Jacobian using the realized pair/triple Gram margins and target-weight lower bounds.
  3. Dominate the chart Taylor remainder, prove PL and trust-region invariance, and iterate a floor-free Armijo recurrence.
- Key lemmas / ingredients: Quotient treatment of scaling/sign indeterminacy, block Gram perturbation, inverse-function/Taylor bounds, and descent under a Lipschitz gradient.
- Main transfer challenges: A small tensor residual or finite rollback history does not imply chart membership; the discovery induction must produce the same-target factor distance first. The proof must also show that unused slots are exactly zero before invoking the chart.
- Potential repair techniques and supporting references:
  - Technique: Use a signed permutation matching from the probe-local isolation lemma and compare the produced tensor factors directly in the balanced Euclidean metric.
  - Supporting reference: *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587).
  - Why it may help: It motivates the quotient nondegeneracy calculation; the current proof uses a direct balanced-coordinate derivation rather than an ALS theorem.
- Disposition: `backup`
- Branch notes: This framework is downstream-only and remains mathematically plausible after an externally produced same-target entry. Under the current protocol, the entry is exactly the missing/contradicted interface, so this framework cannot be selected for attempt 2.

### Framework 4: Weight-aware oblique deflation (required successor direction)

- Source papers: *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017, https://proceedings.mlr.press/v70/sharan17a.html); *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (NeurIPS 2025, https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html).
- Applicability to current branch: A weight-aware oblique or jointly polished extraction could avoid forcing committed factors to be exactly orthogonal and could control \(\tau_{\max}\mu^2/\tau_{\min}\) through a weighted residual ledger. Neither cited paper states this algorithm or the required subquadratic GD theorem.
- Proof roadmap:
  1. Replace protected orthogonal complements by a target-compatible oblique projector or add a pre-chart joint polishing phase.
  2. Prove a weighted residual recurrence under the new projector and a same-target factor metric.
  3. Rebuild the Haar basin and terminal chart from that changed interface.
- Key lemmas / ingredients: oblique projector conditioning, weight-aware strict-saddle gaps, coherent residual cancellation, and a new chart-entry theorem.
- Main transfer challenges: every item changes the current protocol or theorem contract; no current setting assumption supplies the required oblique map or weight margin.
- Potential repair techniques and supporting references:
  - Technique: introduce a weight-dependent incoherence condition such as \(\tau_{\max}\mu^2\ll\tau_{\min}\).
  - Supporting reference: *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use* (ICML 2017).
  - Why it may help: it makes component separation quantitative, but changes the declared source class.
  - Technique: polish all committed slots jointly before invoking PL.
  - Supporting reference: *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587).
  - Why it may help: it could move an orthogonalized approximate state into the true nonorthogonal chart, but requires a new global-entry argument.
- Disposition: `rejected`
- Branch notes: This is a successor-idea direction, not a same-setting sketch repair. No framework is marked selected for attempt 2.

## Attempt-2 Disposition

No candidate framework is selected. The static and scalar modules remain
backup components, while the only end-to-end framework is rejected by the
explicit projected-orthogonality/weak-slot stress calculation in
proof_sketch.md. Under the controller's autopilot rule, a repeated review of
the same weighted-isolation or polynomial-basin issues should route to
IDEA_FAIL rather than consume another proof-sketch attempt.
