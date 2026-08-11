# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and full-space
  trajectories for asymmetric third-order CP least squares.
- Current idea: `perspective_2/idea_13`, cyclic residual-gradient power
  seeding with a candidate-relative transaction ledger.
- Setting / goal summary: The source has deterministic orthonormal first two
  normalized modes, a near-orthogonal third mode, polynomial column
  conditioning, balanced product weights, Gaussian smoothing, and
  (k=O(r^{3/2}\log^2 r)).  The target-blind algorithm uses observable
  residual contractions implemented by finite Armijo steps, then the exact
  full-space balanced objective.  The goal is a material-partial relative
  Frobenius endpoint with separate instance/tape probabilities and no exact or
  noiseless error floor.

## Candidate Frameworks

### Framework 1: Cyclic observable tensor-power and order-statistic amplification

- Source papers: *Orthogonalized ALS: A Theoretically Principled Tensor
  Decomposition Algorithm for Practical Use* (ICML 2017); *Tensor
  Decompositions for Learning Latent Variable Models* (JMLR 2014); and
  *Escaping From Saddle Points: Online Stochastic Gradient for Tensor
  Decomposition* (COLT 2015, arXiv:1503.02101).
- Applicability to current branch: The first two source modes make a cyclic
  contraction a diagonal tensor-power update in the realized target frame.
  Orthogonalized-ALS and tensor-power analyses provide the correlation-growth
  and random-coordinate order-statistic pattern.  The current branch must
  replace source-side projections by exact residual contractions and must
  implement every normalization by the displayed slice gradients.  The COLT
  strict-saddle paper supplies a compact guarded Riemannian/Armijo argument,
  but not the current asymmetric prefix ledger.
- Proof roadmap:
  1. Expand each residual contraction in the two-mode target frame and isolate
     the scalar products of the two Haar projections.
  2. Use a top-versus-second order-statistic event for the product scores.  The
     event has inverse-polynomial mass in (r); all coordinate scales are
     (n^{-1/2}) and cancel in the normalized ratios.
  3. Prove a squared ratio recurrence with a coefficient-relative perturbation
     term, then show (O(\log r)) cycles produce a fixed directional mass.
  4. Couple the ideal maps to finite Armijo block updates and amplify the
     independent tape over the finite set of prefixes.
- Key lemmas / ingredients: normalized multilinear contraction identity;
  signed coefficient ratio recurrence; top-order-statistic gap for products of
  Haar coordinates; perturbation stability of a squaring map; compact-box
  Armijo decrease; stopped-trial amplification.
- Main transfer challenges: a coarse absolute (O(\nu^2\|T\|_F)) residual
  bound is too large when (n\) is unrestricted.  The proof must derive a
  coefficient-relative bound using the exact two-mode contraction and the
  typed history source.  It must also handle signed coordinates, zero
  contractions, near-(C) Gram leakage, and the tiny initial radius.
- Potential repair techniques and supporting references:
  - Technique: condition on a signed top-product order event and write the
    recurrence in ratios before applying any absolute norm bound.
  - Supporting reference: *Tensor Decompositions for Learning Latent Variable
    Models* (JMLR 2014), tensor-power correlation-growth analysis.
  - Why it may help: the normalization removes the common ambient-dimension
    scale and leaves an inverse-polynomial order-statistic probability.
  - Technique: exact current-notation Riemannian Taylor/Armijo coupling.
  - Supporting reference: *Escaping From Saddle Points: Online Stochastic
    Gradient for Tensor Decomposition* (arXiv:1503.02101).
  - Why it may help: it bounds finite guarded sphere updates without treating
    the normalized contraction as an oracle.
- Disposition: `selected`
- Branch notes: This is the semantic delta from idea 12.  It changes the
  activation source and probability calculation while retaining the exact
  objective, full-space target-blind procedure, rank, endpoint, and baseline.
  The coefficient-relative perturbation is a declared go/no-go obligation;
  no desired \(\gamma_{\rm pow}\) is assumed.

### Framework 2: Candidate-relative transfer resolvent and J-aware prefix ledger

- Source papers: *Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions* (NeurIPS 2025, proceedings hash
  `70791f20a907b7f7cb2ad8ade32486b2`); prior same-perspective artifact
  `perspective_2/idea_12/proof_history/sketch_005/proof_sketch.md`; and
  `perspective_2/idea_10/technical_survey.md`.
- Applicability to current branch: The source and prior artifacts provide the
  Khatri-Rao/Gram, balanced-coordinate, objective-telescope, and Neumann
  ledger organization.  Idea 13 keeps the candidate-relative numerical source
  (e_I), the diagonal-aware (J) charge, and the actual-history arrays, but
  feeds them a cyclic-power candidate instead of a Haar angular cap.
- Proof roadmap:
  1. After an observable certificate, form the nonnegative transfer majorant
     with (e_I) only for the passing candidate.
  2. Prove both induced small-gain bounds and the finite Neumann resolvent in
     the same realized target frame.
  3. Emit a typed shrinking-prefix record, charge each accepted transition,
     and telescope objective decrease while preserving every raw numerical
     (\chi_t) term.
- Key lemmas / ingredients: absolute-Gram factorization; rootwise-2 and l1
  small-gain; tested-mode diagonal (J_M(p,p)=1) audit; finite nonnegative
  potential; exact rollback.
- Main transfer challenges: restriction from (\mathcal U_s) to
  (\mathcal U_{s+1}), noncircular production of (b_s), public substitution
  of the raw-chi budget, and object-target compatibility for the actual frozen
  tuple.
- Potential repair techniques and supporting references:
  - Technique: define (A_{s+1}) by explicit restriction and set
    (\chi_{<s+1}=\chi_{<s}+\chi_s) in the same transition lemma.
  - Supporting reference: `perspective_2/idea_12/proof_history/sketch_005/proof_sketch.md`.
  - Why it may help: it closes the shrinking-domain and provenance gap that
    was visible in the prior sketch review.
  - Technique: retain (J)'s tested diagonal in the charge before applying
    rootwise norms.
  - Supporting reference: `perspective_2/idea_10/technical_survey.md`.
  - Why it may help: it prevents a first-transition charge from disappearing
    and avoids absorbing numerical terms into the structural defect.
- Disposition: `backup`
- Branch notes: This framework is inherited unchanged where it is compatible;
  the only new input is the step-004 power-certified candidate.

### Framework 3: Same-target balanced PL refinement

- Source papers: *Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation* (DOI:10.1137/110843587);
  *On the Global Convergence of Alternating Least Squares for Tensor
  Approximation* (DOI:10.1007/s10589-022-00428-1); and
  *Orthogonalized ALS: A Theoretically Principled Tensor Decomposition
  Algorithm for Practical Use* (ICML 2017).
- Applicability to current branch: These sources motivate quotient-aware local
  conditioning and balanced coordinates.  The terminal algorithm is joint
  full-space gradient descent, so the branch must derive its own balanced
  target Jacobian, Taylor sandwich, first-exit path bound, and Armijo rate.
- Proof roadmap:
  1. Use the pair/triple Gram reserves and the finite ledger to bound the actual
     committed tuple in the exact permutation/sign orbit metric.
  2. Prove a local quadratic sandwich and PL inequality in balanced coordinates.
  3. Apply Armijo decrease and specialize to the relative Frobenius endpoint
     for arbitrary (0<\epsilon<1).
- Key lemmas / ingredients: balancing removes scale gauge; target Jacobian
  lower bound; local smoothness; geometric Armijo decrease; finite first-exit
  path-length control.
- Main transfer challenges: the entry object is the actual unprojected tuple,
  not a projected or whitened surrogate; all structural, history, and raw
  numerical terms must be shown below the chart radius.
- Potential repair techniques and supporting references:
  - Technique: direct weight-scaled Jacobian/Taylor calculation in the current
    asymmetric notation.
  - Supporting reference: DOI:10.1137/110843587.
  - Why it may help: it organizes the local chart while preserving the exact
    objective and balanced orbit metric.
  - Technique: first-exit path bound from the PL decrease.
  - Supporting reference: *On the Global Convergence of Alternating Least
    Squares for Tensor Approximation* (DOI:10.1007/s10589-022-00428-1).
  - Why it may help: it supplies a compatible finite-horizon organization,
    while all source-object and convention checks remain local to this branch.
- Disposition: `backup`
- Branch notes: This is downstream of the selected cyclic-power and ledger
  frameworks and does not supply the missing activation mechanism.

## Branch Notes

The selected route is the shortest target-preserving four-block chain.  It
consumes the idea-12 failure as a negative constraint: no fixed Haar angular
cap and no additive defect pad may be used.  The new activation proof is
organized around a ratio recurrence, so its probability is an order-statistic
probability in (r), not a spherical-cap probability in (n).  The survey
does not treat any cited paper as a theorem-facing assumption; source
conventions, object mappings, and the coefficient-relative defect must be
checked in the local proof steps.
