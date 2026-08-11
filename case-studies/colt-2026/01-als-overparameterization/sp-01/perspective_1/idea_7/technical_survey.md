# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1` (global convergence for asymmetric CP least squares)
- Current idea: `idea_7` (SL-SC-JEP-ALS with one synchronized frozen-input landing)
- Setting / goal summary: Under bounded base scales, cumulative modewise Gram mass at most `q_*/4`, near-balanced weights, and Gaussian factor smoothing, prove the exact-goal conditional theorem at `k = Theta(r^(5/3)(log r)^(5/2))`. The proposal and certification prefix is inherited from the same-state Jacobi route. The new handoff freezes one selected active seed, certifies all three normalized pair Grams and positive scale congruences before any solve, commits the three Moore--Penrose solves jointly, and then enters target-span cyclic quotient refinement.

## Candidate Frameworks

### Framework 1: Same-state projective normal equations with synchronized frozen-input landing

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (NeurIPS 2025, https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html); `perspective_1/idea_5/technical_survey.md`; `perspective_1/idea_7/idea.md`
- Applicability to current branch: The source algorithm supplies the simultaneous old-state Jacobi convention, the frozen-input least-squares identity, and exact unfolding-range containment. The current branch applies that identity only to the selected rank-`r` seed. The seed decomposition `P_M^0=G_M(I+C_M^0)+N_M^0` supplies all three pair designs at once. No output of the U solve is an input to the V solve, and no generated predecessor comparator is needed.
- Proof roadmap:
  1. Transfer smoothing to realized norm, Gram-row, weight, and Khatri--Rao events; prove the rare three-mode window and coverage.
  2. Prove the simultaneous `R,S` recurrences, finite certification, score/cluster correctness, same-state coefficient bridge, row/column closure, and best-scalar seed bounds.
  3. Expand each frozen normalized pair Gram using the two seed direction fields and the orthogonal perpendicular fields. Derive `delta_L`, `delta_F`, `delta_FL`, `alpha_0`, `eta_J`, `eta_QJ`, and `eta_A` in both induced orientations before any solve. Use the positive scale congruence `D_{-M}^0 J_M^0 D_{-M}^0` to obtain all three ordinary-inverse reserves simultaneously.
  4. Evaluate the three coefficient formulas independently from the same frozen seed. Prove positive output normalizers, exact target-span membership of every output, and the single product-preserving rebalance bound `d_Q(e^land,0) <= 4096 omega`.
  5. Starting from this generated target-span state, define chronological quotient `Refresh_s` representatives for literal cyclic ALS, prove scale equivariance and a strict full-sweep contraction, then prove stopping, cap, restart amplification, and the exact orthogonal baseline.
- Key lemmas / ingredients: normalized Gaussian perturbation bounds; correlated Gaussian regression and pair-product tails; simultaneous ratio and pair-mass recurrences; contraction-mapping displacement decay; weighted same-state score classification; true-factor dual bases; induced row/column Hadamard inequalities; diagonal congruence and Neumann inverse bounds; exact unfolding range; quotient scale equivariance; and cyclic normal-equation perturbation.
- Main transfer challenges: The seed bounds must be produced before any landing call, not assumed. The full Gram must retain the positive scale diagonals and the direct `Q_M^0-J_M^0` cancellation. Output normalizers need a lower bound before the joint commit, and the rebalance must transfer the produced target-span outputs to the consumed quotient target with residual at the `O(omega)` scale. The cyclic module must consume only the joint landing output and must not reintroduce a chronological comparator dependency.
- Potential repair techniques and supporting references:
  - Technique: Keep raw normalized seed fields and orthogonal perpendicular fields separate through the frozen pair-Gram expansion.
  - Supporting reference: `perspective_1/idea_6/proof_sketch.md`, selected-state same-state coefficient bridge.
  - Why it may help: Mixed and shared perpendicular terms can be charged by `tau_r^2` and `r tau_r^4` before inversion; no unrestricted max-column tube is used.
  - Technique: Factor each full design Gram as a positive diagonal congruence around a normalized pair Gram and cancel the diagonal scales algebraically in the ordinary-inverse output.
  - Supporting reference: *Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions* (frozen-input Jacobi least-squares update and unfolding-range identity).
  - Why it may help: The three reserves are certified from one seed and no post-solve scale is fed into another landing call.
  - Technique: Use a gauge-fixed quotient block map with a single common-product register and compose U/V/W updates chronologically.
  - Supporting reference: Andre Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5.
  - Why it may help: It supplies the quotient interpretation after direct current-notation normal-equation bounds establish the numerical radius and contraction constant.
- Disposition: `selected`
- Branch notes: Prior idea-6 material is diagnostic context only and is not a source of proof evidence. Its predecessor-comparator chronology is deliberately not reused. The selected framework treats the frozen seed as the sole landing input and exports one joint landing state before the cyclic phase.

### Framework 2: Quantitative quotient-Hessian cyclic CP-ALS

- Source papers: Andre Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal. Appl. 2012, DOI `10.1137/110843587`; `perspective_1/idea_5/technical_survey.md`
- Applicability to current branch: It matches the active rank-`r` CP least-squares problem after positive componentwise scalings are quotiented out. It is useful only after the synchronized landing has supplied exact target-span membership and a numerical quotient radius. It does not prove proposal coverage or landing reserves.
- Proof roadmap:
  1. Identify the scaling tangent and define the balanced quotient coordinates `(C_U,C_V,C_W,s)`.
  2. Derive current-notation pair-Gram inverse and Lipschitz bounds on `rho_ALS=1/1024` directly from `q_real <= q_*`; use the cited results only for quotient interpretation.
  3. Compose the literal U/V/W block chronology using `Refresh_s` and convert quotient contraction to the original relative Frobenius residual.
- Key lemmas / ingredients: Khatri--Rao spectral floors, balanced CP Jacobian, inverse perturbation, block-map composition, and product-preserving gauge.
- Main transfer challenges: The cited source has an existential neighborhood and does not know the branch's zero-padded inactive columns or synchronized landing. The current proof must establish the radius and object-target bridge locally.
- Potential repair techniques and supporting references:
  - Technique: Treat the citation as a quotient-interpretation wrapper and prove every numerical current-notation inequality directly.
  - Supporting reference: DOI `10.1137/110843587`, Lemma 3.2 and Theorems 3.3, 3.5.
  - Why it may help: It prevents an existential basin from being silently promoted to a generated entry condition.
- Disposition: `backup`
- Branch notes: This is the terminal module of Framework 1, not an alternative entry route.

### Framework 3: Smoothed factor conditioning

- Source papers: *Smoothed Analysis of Tensor Decompositions* (STOC 2014, arXiv:1311.3651); *New Tools for Smoothed Analysis: Least Singular Value Bounds for Random Matrices with Dependent Entries* (STOC 2024, arXiv:2405.01517)
- Applicability to current branch: These sources motivate the static smoothing pattern but do not provide the normalized Gram-row event, the proposal trajectory, or the synchronized landing interface.
- Proof roadmap:
  1. Transfer deterministic base scales and cumulative Gram mass through Gaussian smoothing.
  2. Apply columnwise concentration and Schur-product comparison to obtain target Khatri--Rao floors.
  3. Hand the resulting static event to Framework 1.
- Key lemmas / ingredients: Gaussian norm and inner-product concentration, normalization expansion, and Schur-product spectral comparison.
- Main transfer challenges: Static conditioning alone supplies no certification, clustering, landing, or cyclic stopping result.
- Potential repair techniques and supporting references:
  - Technique: Use this framework only for the static prefix and keep all dynamic claims in Framework 1.
  - Supporting reference: arXiv:1311.3651.
  - Why it may help: The linear, quadratic, and normalization contributions remain independent of the landing chronology.
- Disposition: `backup`
- Branch notes: Not selected as an end-to-end roadmap.
