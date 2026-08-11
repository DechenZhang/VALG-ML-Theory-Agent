# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1` (global convergence for asymmetric CP least-squares)
- Current idea: `idea_4`, proof-sketch attempt 4 after the archived
  `revise_sketch` review (JEP-ALS: simultaneous Jacobi proposal sweeps, rare
  extreme entry coverage, and active cyclic CP-ALS refinement)
- Setting / goal summary: Under bounded scales, cumulative modewise Gram mass at most `q_* / 4`, near-balanced weights, and Gaussian smoothing, prove a conditional end-to-end relative-error result with `k = O(r^(5/3) (log r)^(5/2))`. The proposal phase must produce one data-driven representative per target component; the terminal active CP-ALS phase must converge to arbitrary accuracy.

## Candidate Frameworks

### Framework 1: Simultaneous Jacobi ratio and pair-mass contraction with a row/column coefficient bridge

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (NeurIPS 2025, https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html); `perspective_1/idea_3/proof_sketch.md` (prior failed cyclic recurrence); `perspective_1/idea_4/idea.md` (current simultaneous map)
- Applicability to current branch: The source paper supplies the parallel/Jacobi ALS convention and exact contraction formulas, while the current branch changes the entry certificate and tracks pair products under a simultaneous old-state update. The direct ratio calculation is in the current target-relative coordinates, so it preserves the asymmetric factors, normalized directions, and weight ratio in `setting.md`.
- Proof roadmap:
  1. Derive the smoothed norm, Gram-row-sum, weight, and Khatri-Rao events from the primitive assumptions.
  2. Use a windowed three-mode Gaussian event to obtain `R_0 <= 19/20`, `S_0 <= r R_0`, and all-target coverage at the stated rank.
  3. Expand the three simultaneous contractions to obtain the displayed `R_t` and `S_t` recurrences, then export angular, displacement, score, and cluster certificates.
  4. Track the target-indexed representative coefficient matrix in both row and column l1 norms. Transient mass is bounded by `r R_t`; Gram-forced incoming leakage is controlled by a Hadamard-product inequality, giving a fixed point of order `q_*^2`.
  5. Compare the resulting balanced representatives with the exact CP solution and invoke a quantitative current-notation local CP-ALS wrapper.
- Key lemmas / ingredients: Schur-product/Khatri-Rao Gram bounds; Gaussian regression for correlated factor coordinates; product-Gaussian tail bounds; the simultaneous ratio and pair-mass inequalities in `idea.md`; a two-sided row/column l1 Hadamard bound; and a finite-dimensional quotient-Hessian perturbation argument.
- Main transfer challenges: The prior cyclic map reuses updated coordinates and has a strict first-update counterexample; all uses of the old recurrence must be removed. The outgoing pair mass of one proposal alone is not enough for a joint active-factor basin, so incoming row mass and the best-scalar same-target residual must be exported explicitly. The local ALS paper gives a local, quotient-space result rather than the explicit radius required here; a current-notation Lipschitz wrapper must expose that radius and contraction factor.
- Potential repair techniques and supporting references:
  - Technique: Use the exact old-state Jacobi map and a two-sided coefficient-matrix mass recurrence instead of a cyclic potential.
  - Supporting reference: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (NeurIPS 2025).
  - Why it may help: The simultaneous exponent map consumes exactly the three old-coordinate pair products supplied by the rare event and preserves the orthogonal baseline `R^+ <= R^2`.
  - Technique: Work on the quotient by componentwise CP scaling and bound the local ALS Jacobian plus its Lipschitz remainder in the balanced representative chart.
  - Supporting reference: Andre Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal. Appl. 2012, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5.
  - Why it may help: The cited result identifies the quotient-Hessian kernel condition and local linear block-Gauss-Seidel convergence; the current row-sum bridge supplies an explicit entry radius and discharges the source assumptions.
- Disposition: `selected`
- Branch notes: This framework is selected because it repairs only the failed proposal update interface. The orthogonal equal-weight specialization remains exact: `(A^+, B^+, C^+) = (BC, AC, AB)`, `R^+ <= R^2`, and `S^+ <= R S`. The current attempt additionally fixes the selected-member certificate transfer, post-first-update transient arithmetic, corrected residual scale, row/column-controlled reachable ALS tube, full diagonal conjugation, the `q=0` endpoint, and the restart/rate arithmetic. The row/column bridge is the required new interface for the active joint refinement and is not treated as an unproved generated condition.

### Framework 2: Local quotient-Hessian CP-ALS convergence

- Source papers: Andre Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal. Appl. 2012, DOI `10.1137/110843587`
- Applicability to current branch: This is directly applicable only after the selected representatives have entered a balanced local chart. Assumption 1 and Theorem 3.5 match the exact CP decomposition and componentwise scaling quotient; Lemma 3.2 identifies the derivative with block Gauss-Seidel. The source does not provide random entry or a public basin radius, so it is a terminal framework rather than a complete global proof.
- Proof roadmap:
  1. Establish full column rank and a kernel equal to the scaling tangent using dual bases for the three realized factor matrices.
  2. Bound the quotient Hessian and the block-update derivative in a balanced neighborhood.
  3. Transfer the explicit representative error into the source local neighborhood and iterate the contraction to the requested residual.
- Key lemmas / ingredients: Hessian-kernel characterization modulo scaling; differentiability of the ALS map; local linear convergence; dual-basis identifiability under `q(U),q(V),q(W) < 1`.
- Main transfer challenges: The source neighborhood is existential and source notation is equilibrated CP-ALS notation. A current-notation wrapper must give a numerical radius, preserve the best-scalar initialization, and account for zero padding in the rank-`k` objective.
- Potential repair techniques and supporting references:
  - Technique: Derive the radius from the explicit Khatri-Rao spectral floor and a Lipschitz bound for the block normal equations, then use the source theorem only for the quotient linearization conclusion.
  - Supporting reference: DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorem 3.5.
  - Why it may help: It separates source-supported local convergence from the new quantitative entry calculation.
- Disposition: `backup`
- Branch notes: This framework is a terminal component of Framework 1, not a replacement for the proposal coverage argument.

### Framework 3: Smoothed tensor-product conditioning and dependent-entry concentration

- Source papers: *Smoothed Analysis of Tensor Decompositions* (STOC 2014, arXiv:1311.3651); *New Tools for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with Dependent Entries* (STOC 2024, arXiv:2405.01517)
- Applicability to current branch: These sources support robust norm, product-factor, and dependent-entry conditioning estimates for the once-drawn instance. They do not analyze the JEP-ALS trajectory, so they can supply only the static geometry step.
- Proof roadmap:
  1. Apply Gaussian perturbation and normalization bounds to each factor column.
  2. Transfer base cumulative Gram mass to realized row-sum mass and Schur-product Khatri-Rao spectra.
  3. Allocate the instance confidence budget before proposal randomness is sampled.
- Key lemmas / ingredients: Gaussian norm concentration, perturbation of normalized Gram matrices, Schur-product spectral bounds, and dependent-entry least-singular-value tools.
- Main transfer challenges: The current primitive assumptions are stronger and more explicit than the generic smoothed models, while the dynamic map needs row-sum rather than only least-singular-value control. A direct current-notation concentration derivation is preferable for the displayed linear, quadratic, and normalization terms.
- Potential repair techniques and supporting references:
  - Technique: Keep the linear directional, quadratic, and normalization errors separate and close them with the scalar `smoothing-margin` inequality.
  - Supporting reference: arXiv:1311.3651 and arXiv:2405.01517.
  - Why it may help: Both provide concentration/conditioning patterns, while the explicit row-sum transfer remains a branch-local derivation.
- Disposition: `backup`
- Branch notes: This framework is used only as supporting context for `step_001`; it cannot replace the dynamic proposal or local-ALS interfaces.
