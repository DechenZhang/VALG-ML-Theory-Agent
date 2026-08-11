# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization-landscape and gradient-trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_7`, sketch attempt 1. The proposed new
  mechanism is an absolute-Gram lifted Neumann ledger for full-space
  transactional discovery, followed by exact-rollback tape amplification and
  same-target balanced PL refinement.
- Setting / goal summary: Under nine primitive assumptions, prove a
  material-partial theorem at
  \(k=\Theta(r^{3/2}(\log r)^2)=o(r^2)\) with separate instance and tape
  probabilities, polynomial discovery work, and arbitrary relative
  Frobenius accuracy. The realized Gram kernels, certificate labels,
  accepted-history source, resolvent envelope, all-commit budget, chart
  entry, and convergence are required derived outputs.

## Candidate Frameworks

### Framework 1: Lifted absolute-Gram Neumann ledger with actual history forcing

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  *Beyond Lazy Training for Over-parameterized Tensor Decomposition*
  (arXiv:2010.11356); `perspective_2/idea_6/proof_sketch_review.md`.
- Applicability to current branch: The absolute-Gram column bounds and the
  nonnegative Neumann transfer directly address idea 6's missing transitive
  correlation path. The framework uses the current realized normalized
  factors and exact residual, so it does not require an orthogonalized or
  whitened surrogate. Its proposed history update, however, omits the
  diagonal identity contribution when the tested label is the newly captured
  label.
- Proof roadmap:
  1. Derive the realized norm, Gram, weight, and Khatri--Rao event, then prove
     the entrywise `l1` kernel bounds and the transfer small-gain estimate.
  2. Derive certificate direction correlations from the static source,
     actual protected history, and the Neumann series.
  3. Expand each accepted error exactly, charge its new history forcing, and
     close a one-time global `l1` budget across all roots and commits.
  4. Use the protected-state invariant for full-space transaction
     reachability and finite-tape amplification, then enter the exact-target
     PL chart.
- Key lemmas / ingredients: Columnwise Cauchy--Schwarz for Hadamard Gram
  kernels; nonnegative `l1` operator bounds; a current-notation angular
  stationarity system; exact multilinear accepted-error expansion; Neumann
  small gain; and an all-label injection induction.
- Main transfer challenges: The source papers do not state the current
  ledger or transactional theorem. More decisively, the binding
  `(R-charge)` uses \(H_A(p,\ell)\) although the scalar contraction in
  `(R-hist-src)` uses \(\langle u_{p,A},m_{\ell,A}\rangle\), whose correct
  absolute majorant is diagonal-aware. At \(\ell=p\), the former is zero
  while the latter is near one.
- Potential repair techniques and supporting references:
  - Technique: Replace the tested-mode history factor by a diagonal-aware
    \(J_M=I+H_M\) factor and re-audit every cyclic history and accumulation
    consumer.
  - Supporting reference: `perspective_2/idea_6/proof_sketch_review.md`,
    especially its requirement that a successor ledger retain all endpoint
    identities and transitive paths.
  - Why it may help: It restores the missing \(\ell=p\) contraction at the
    exact algebraic location. It changes the binding generated-output target
    and therefore is an upstream formalization/idea repair, not a legal
    proof-sketch edit.
- Disposition: `rejected`
- Branch notes: The transfer norm and static source survive the audit, but
  the first accepted-history transition fails on an allowed two-label
  family. No end-to-end framework is selected under the final `setting.md`.

### Framework 2: Static Gram/Khatri--Rao conditioning and resolvent prefix

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025, stable conference
  locator above); *Smoothed Analysis of Tensor Decompositions* (STOC 2014,
  arXiv:1311.3651); `perspective_2/idea_6/proof_sketch_review.md`.
- Applicability to current branch: This framework plausibly proves the
  once-drawn event, `(R-src)`, weighted static leakage, the static source
  budget, and the Neumann small-gain bound. It is only a prefix and supplies
  no valid replacement for the false history charge.
- Proof roadmap:
  1. Transfer base norms and normalized Grams through Gaussian smoothing.
  2. Apply columnwise Cauchy--Schwarz to \(K_M\), never an operator bound on
     \(|G_M-I|\).
  3. Sum columns of the nonnegative transfer and static source to obtain the
     displayed `l1` estimates.
- Key lemmas / ingredients: Gaussian norm/inner-product concentration,
  Schur-product Gram identities, row/column `l2` bounds, and geometric-series
  inversion.
- Main transfer challenges: Static conditioning does not produce a label,
  accepted-history recurrence, transaction basin, or terminal chart entry.
- Potential repair techniques and supporting references:
  - Technique: Preserve this prefix unchanged after an upstream correction
    to the history interface.
  - Supporting reference: *Smoothed Analysis of Tensor Decompositions*
    (arXiv:1311.3651).
  - Why it may help: The concentration and Gram calculations remain
    source-compatible and independent of the failed dynamic charge.
- Disposition: `backup`
- Branch notes: This is reusable proof material, not a complete roadmap.

### Framework 3: Conditional exact-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares
  Algorithm for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *On Global Convergence of Alternating Least Squares for Tensor
  Approximation* (DOI:10.1007/s10589-022-00428-1);
  `perspective_2/idea_5/technical_survey.md`.
- Applicability to current branch: A direct balanced CP Jacobian calculation
  can plausibly give local PL and first-exit invariance around the actual
  nonorthogonal target. The cited ALS results are motivation only and do not
  supply discovery chart entry for the present protocol.
- Proof roadmap:
  1. Align all committed slots with the exact sign/permutation orbit.
  2. Lower-bound the balanced CP Jacobian from pair/triple Gram conditioning.
  3. Dominate Taylor remainders and iterate exact-loss Armijo decrease with no
     additive forcing.
- Key lemmas / ingredients: Balanced-gauge Jacobian nondegeneracy, local
  Taylor control, path-length/first-exit estimates, and geometric loss
  contraction.
- Main transfer challenges: The module is conditional on a legal all-commit
  same-target entry producer. It cannot create the missing discovery
  invariant or repair `(R-update)` backward.
- Potential repair techniques and supporting references:
  - Technique: Reuse only after a corrected history induction exports the
    actual committed tuple in the displayed Euclidean factor chart.
  - Supporting reference: *Local Convergence of the Alternating Least
    Squares Algorithm for Canonical Tensor Approximation*
    (DOI:10.1137/110843587).
  - Why it may help: It motivates quotient/local nondegeneracy, while the
    current objective still needs a direct proof.
- Disposition: `backup`
- Branch notes: This downstream module preserves the exact-target and
  no-error-floor baseline but has no current entry producer.

## Attempt-1 Disposition

No framework is selected. The static Gram/resolvent prefix and conditional
terminal chart remain reusable, but the binding history-update interface is
false at the first nonempty protected state. A corrected diagonal-aware
history charge must be approved upstream before an acyclic end-to-end proof
roadmap can be assigned stable Step IDs.
