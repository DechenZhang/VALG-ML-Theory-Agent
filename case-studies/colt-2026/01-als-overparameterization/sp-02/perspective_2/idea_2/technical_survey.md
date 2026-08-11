# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2`, adaptive coefficient-span obstructions for unconstrained parallel ALS.
- Current idea: `idea_2`, a four-clause conditional certificate using normalized entry deficit, finite adaptive-projector path, unsquared represented-tensor variation, and relative smoothing/target scale.
- Setting / goal summary: For the exact half-relaxed parallel Jacobi ALS trajectory in `setting.md`, prove the deterministic event inclusion from \(\mathsf C_2\) to existence of a finite objective limit and a constant relative positive-loss floor. No lower bound on \(\mathbb P[\mathsf C_2]\) is part of this branch theorem.

## Candidate Frameworks

### Framework 1: Conditional projector transport and exact same-target coordinate bridge

- Source papers: Kolda and Bader, "Tensor Decompositions and Applications," SIAM Review 51(3), 2009, DOI:10.1137/07070111X; prior same-perspective diagnostic `perspective_2/idea_1/proof_sketch_review.md`.
- Applicability to current branch: Kolda--Bader fixes the CP matricization, Khatri--Rao, pseudoinverse, and product-gauge conventions. The theorem-critical claims here are direct Hilbert-space derivations in the exact branch convention: projector-distance Lipschitzness, tensor-product operator norms, the identity \(Q\widehat T_t=C_t\), and the Cauchy criterion. The prior diagnostic identifies exactly why the repaired four clauses are the correct interfaces: first-order projector motion replaces squared sum motion, absolute variation replaces square-summability, and the relative smoothing/target clause supplies the missing target-scale residual control.
- Proof roadmap:
  1. Derive \(\|Q\|_{\rm op}\le \kappa^6\), gauge invariance of the represented component tensors, and \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\).
  2. Telescope the one-step projector inequality to obtain \(\operatorname{dist}(D_r,\mathcal S_t)\ge(\delta-L_P)\|D_r\|_F\) for every time.
  3. Use the relative smoothing and target-scale clause to transfer that coefficient margin to a uniform ambient residual floor.
  4. Use unsquared finite represented-tensor variation to obtain a tensor limit and hence an objective limit, then assemble the conditional event inclusion.
- Key lemmas / ingredients: For orthogonal projectors, \(|\|(I-P)u\|-\|(I-P')u\||\le\|(P-P')u\|\); distance to a fixed subspace is 1-Lipschitz in its point argument; \(\|A\otimes B\otimes C\|=\|A\|\|B\|\|C\|\) in Frobenius Hilbert geometry; absolute summability of increments implies convergence in a finite-dimensional Hilbert space.
- Main transfer challenges: The deterministic implication has no remaining object or scale mismatch. The framework deliberately does not produce any of the four conditional clauses from the Gaussian law and does not imply that the certificate has positive probability.
- Potential repair techniques and supporting references:
  - Technique: Keep any future probability theorem separate and prove clause-specific producers before attempting a union or all-time upgrade.
  - Supporting reference: Bhaskara, Charikar, Moitra, and Vijayaraghavan, "Smoothed Analysis of Tensor Decompositions," STOC 2014, DOI:10.1145/2591796.2591887.
  - Why it may help: Smoothed conditioning and norm control may support the static part of clause 4, but the cited work does not supply the adaptive-projector path or represented-tensor finite-variation clauses for this ALS map.
- Disposition: `selected`
- Branch notes: This framework proves only the literal conditional theorem. It does not use blockwise descent, Gram conditioning, a fixed subspace, a basin, a residual barrier, or a certificate-probability premise.

### Framework 2: Exact-map descent or Kurdyka--Lojasiewicz convergence

- Source papers: Arvanitakis, Srinivas, and Vijayaraghavan, "Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions," NeurIPS 38, 2025; Kolda and Bader, "Tensor Decompositions and Applications," SIAM Review 51(3), 2009, DOI:10.1137/07070111X.
- Applicability to current branch: An exact-map descent theorem could in principle produce a trajectory certificate, but the current theorem already assumes the weaker target-level finite-variation clause. The cited ALS guarantee does not state the needed theorem for the exact half-relaxed simultaneous three-block Moore--Penrose map, and a generic analytic/KL argument does not cover pseudoinverse rank changes without additional generated invariants.
- Proof roadmap:
  1. Prove uniform Gram rank and boundedness.
  2. Establish sufficient decrease and a relative-error inequality.
  3. Deduce finite length and convergence.
- Key lemmas / ingredients: Block normal equations, sufficient decrease, relative error, and KL finite length.
- Main transfer challenges: Every prerequisite would add a generated condition or a theorem-facing source absent from the four-clause setting. It is unnecessary for the literal implication and would obscure the conditional scope.
- Potential repair techniques and supporting references:
  - Technique: Use this route only in a separate certificate-producer theorem.
  - Supporting reference: Arvanitakis, Srinivas, and Vijayaraghavan, "Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions," NeurIPS 38, 2025.
  - Why it may help: Their analysis is relevant to ALS stability, but source-convention and exact-update compatibility would have to be verified before any result could be imported.
- Disposition: `rejected`
- Branch notes: Rejected for the present sketch because it would introduce mechanisms beyond the exact four clauses and is not needed to prove the formalized conditional goal.

### Framework 3: Direct probabilistic production of the full certificate

- Source papers: Bhaskara, Charikar, Moitra, and Vijayaraghavan, "Smoothed Analysis of Tensor Decompositions," STOC 2014, DOI:10.1145/2591796.2591887; Arvanitakis, Srinivas, and Vijayaraghavan, "Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions," NeurIPS 38, 2025.
- Applicability to current branch: Static Gaussian concentration may help with normalized entry separation and relative smoothing/target scale. Neither source currently gives a uniform positive-probability, infinite-horizon producer for the adaptive-projector path and finite represented-tensor variation of the exact branch algorithm.
- Proof roadmap:
  1. Prove static initialization and smoothing clauses with quantitative probability.
  2. Derive a noncircular all-time projector-path budget for the exact ALS trajectory.
  3. Derive finite represented-tensor variation and combine the clause probabilities.
- Key lemmas / ingredients: Gaussian concentration, smoothed conditioning, exact ALS stability, and an all-time accumulation mechanism.
- Main transfer challenges: The dynamic clauses have no current producer, no summable failure budget, and no accepted recurrence. Assuming them is legal only in the present conditional theorem.
- Potential repair techniques and supporting references:
  - Technique: First prove a finite-horizon or stopped certificate with explicit failure accumulation, then audit whether an all-time upgrade preserves the theorem contract.
  - Supporting reference: Arvanitakis, Srinivas, and Vijayaraghavan, "Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions," NeurIPS 38, 2025.
  - Why it may help: It may expose a map-specific recurrence, but no such recurrence is imported into the current branch.
- Disposition: `backup`
- Branch notes: This is the explicit residual source-level problem, not a dependency of the selected conditional roadmap.
