# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2 -- optimization landscape and gradient trajectory
  analysis for asymmetric third-order CP least squares.
- Current idea: perspective_2/idea_3, sketch attempt 2.
- Setting / goal summary: Analyze the exact homogeneous asymmetric CP objective
  at \(k=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil\) under one finite
  Haar tape, guarded Armijo trials, one-time project-and-park transitions,
  residual-score promotion, finite resets, and protected-only no-floor
  refinement.  Claims are restricted to the generated reachable tube and the
  exact conditional smoothed setting in setting.md.
- Triggering repair: proof_history/sketch_001/proof_sketch_review.md found
  that the first guarded sketch had a missing post-projection loss ledger,
  circular W0-D0-L1-P1 dependencies, bookkeeping-only target removal, and a
  historical event defect incorrectly carried into local PL.  The selected
  framework below is revised specifically for those interfaces.

## Candidate Frameworks

### Framework 1: Epoch-inductive guarded homogeneous promotion

- Source papers: Beyond Lazy Training for Over-parameterized Tensor
  Decomposition (arXiv:2010.11356);
  perspective_2/idea_2/technical_survey.md;
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: The parent source motivates homogeneous
  cubic activation, small initialization, mode switching, and finite refresh.
  It is not used as a theorem wrapper for the current asymmetric protocol.
  The guarded trial margin removes the equality-only cap obstruction.  The
  attempt-2 repair adds a loss-unit reserve for post-Armijo projection and a
  base-plus-transition epoch induction with mature, queued, and unresolved
  target sets.
- Proof roadmap:
  1. Derive the Gaussian-smoothed E0 event and the exact balanced Z0 reference.
  2. On the individual-factor guarded box, prove
     \[
     \lambda_0\le\min\{\eta_{\max},R_{\max}/(4G_{\max}),
     2\theta/(4G_{\max}),1/(4L_{\max})\}
     \]
     and a dyadic accepted step at least \(P^{-42}\).
  3. Convert each post-trial project/reset/prune tensor jump \(\Delta\) into
     loss units through
     \[
     F(\Phi+\Delta)-F(\Phi)
     \le\overline R\|\Delta\|_F+\frac12\|\Delta\|_F^2
     \]
     and the reserve
     \(\mathfrak B(b)=\overline Rb+b^2/2\).
  4. Define the local epoch certificate
     \(\mathsf I_e=(A_e,Q_e,U_e,\text{signed clusters},E_e)\), prove the
     all-seed base case, and use universal conditional lemmas for fresh
     target-cone proposals and queued protected maturation.
  5. At the boundary, assign only a physically separated unassigned channel;
     retain its full target error in Q until maturation.  Iterate the
     transition, allocate the adaptive tape event, and prove
     \(N_{\mathrm{dec}}\le P^{19}<S\).
  6. Use historical B_disc only for post-pruning entry; prove a separate
     defect-free balanced-Jacobian PL recurrence for refinement.
- Key lemmas / ingredients: polynomial smoothness on the guarded individual
  factor box; balanced homogeneous radial identities; degree-three Haar
  small-ball and order-statistic bounds; Schur-product Khatri--Rao
  conditioning; a signed cluster potential; a physical target-error
  functional; and a finite loss reserve.
- Main transfer challenges: static Gram conditioning does not itself imply a
  target-cone winner, duplicate exclusion, or protected persistence.  The
  residual split must expose queued target terms instead of hiding them in an
  off-channel error.  A tiny newly promoted tensor cannot be treated as a
  resolved target.  Projection occurs after Armijo and therefore needs a
  retained-state loss relation.  Historical event error cannot remain in a
  local PL inequality as the perturbation tends to zero.
- Potential repair techniques and supporting references:
  - Technique: reserve the remaining tensor path b in loss units via
    \(\mathfrak B(b)=\overline Rb+b^2/2\).
  - Supporting reference: direct expansion of squared Frobenius loss in the
    current notation; no external theorem is needed.
  - Why it may help: the reserve pays an adversarial-sign projection or reset
    jump exactly and leaves a clean Armijo inequality for the retained state.
  - Technique: use a three-way target partition A/Q/U and prove
    \(\mathsf I_e\Rightarrow\mathsf I_{e+1}\) before globally iterating it.
  - Supporting reference: perspective_2/idea_2/technical_survey.md for the
    prior refresh pattern and the current setting's one-at-a-time promotion.
  - Why it may help: assignment no longer deletes physical target mass before
    the newly protected component has had one full maturation epoch.
  - Technique: make probationary forcing contraction-scaled and stop all
    forcing at final pruning.
  - Supporting reference: direct signed-potential recurrence in the current
    homogeneous coordinates.
  - Why it may help: a small-gain term has a bounded steady state instead of
    accumulating over \(SH\) steps, while B_disc is used only for entry.
- Disposition: selected.
- Branch notes: This is a novel guarded composition, not a theorem wrapper.
  The parent source supplies qualitative dynamics only.  All target-cone,
  physical mass, persistence, rate, and same-target chart interfaces remain
  branch-local obligations.  The attempt-1 review is treated as a repair
  specification, not as proof authority.

### Framework 2: Smoothed Khatri--Rao conditioning and structured probes

- Source papers: Guarantees for Alternating Least Squares in Overparameterized
  Tensor Decompositions (NeurIPS 2025);
  Smoothed Analysis of Tensor Decompositions (arXiv:1311.3651);
  New Tools for Smoothed Analysis: Least Singular Value Bounds for Random
  Matrices with Dependent Entries (arXiv:2405.01517).
- Applicability to current branch: These sources motivate normalized Gaussian
  perturbation bounds, Khatri--Rao matricization identities, and dependent
  low-degree polynomial anti-concentration.  They do not state the current
  gradient protocol, target-cone assignment, or protected induction.
- Proof roadmap:
  1. Transfer the base \(1/64\) cyclic pair-Gram margin to the realized
     \(1/32\) margins and target norm comparison.
  2. Wrap a conditional Haar small-ball/order-statistic calculation in the
     current residual and tape conventions.
  3. Feed only the resulting local cone probability into the epoch transition;
     do not cite a static conditioning theorem for dynamic persistence.
- Key lemmas / ingredients: normalized Gaussian matrix concentration,
  Schur-product contraction, hierarchical degree-three anti-concentration,
  and Khatri--Rao matricization.
- Main transfer challenges: The source objects are static normalized factors,
  while the consumed object is an adaptive residual with mature and queued
  protected tensors.  A current-notation object map and hypothesis discharge
  are required for every use.
- Potential repair techniques and supporting references:
  - Technique: allocate instance probability separately from the recursively
    defined successful proposal path.
  - Supporting reference: New Tools for Smoothed Analysis (arXiv:2405.01517),
    used only for dependent-entry small-ball intuition.
  - Why it may help: the fresh tape block is independent of the adaptive past
    under the current one-tape construction.
- Disposition: backup.
- Branch notes: This framework supplies E0 and the local random-probe lemma;
  it is not an end-to-end ALS or GD theorem.

### Framework 3: Balanced CP chart and exact local PL

- Source papers: Local Convergence of the Alternating Least Squares Algorithm
  for Canonical Tensor Approximation (DOI:10.1137/110843587);
  perspective_2/idea_1/technical_survey.md.
- Applicability to current branch: The cited ALS result is motivation for
  quotient sign/permutation handling and local CP nondegeneracy only.  The
  current branch uses a direct balanced-Jacobian calculation after B0 has
  produced a same-target chart.
- Proof roadmap:
  1. Use the P0/L1 signed cluster certificate to identify one protected
     representative per target channel.
  2. Use historical project/reset/prune bounds only to prove B0 entry.
  3. Around the exact Z0 representation, compute the protected Jacobian,
     dominate its quadratic remainder, and prove PL without a fixed residual
     term.
- Key lemmas / ingredients: balanced CP Jacobian, gauge fixing,
  permutation/sign quotient, inverse-function/error-bound estimate, and
  Lipschitz-gradient descent.
- Main transfer challenges: The protected object is generated, not assumed;
  the final pruning state must be compared to the same T; and B_disc must not
  survive as an additive local forcing term.
- Potential repair techniques and supporting references:
  - Technique: use a two-stage B0/B1 split.
  - Supporting reference: direct current-notation Jacobian derivation, with
    the local ALS paper as structural motivation.
  - Why it may help: entry can tolerate a finite historical defect, whereas
    the exact local recurrence has only the state-dependent Taylor remainder.
- Disposition: backup.
- Branch notes: This framework is consumed only after L1 and B0; no local
  chart claim is exported to W0 or D0.

## Attempt-2 Interface Map

The selected framework is organized around the following legal producer path:

\[
\mathrm{E0}\to\mathrm{Z0}\to\mathrm{C0}\to\mathrm{J0}
\to\mathrm{I0}\to(\mathrm{W0},\mathrm{P0})\to\mathrm{D0}
\to\mathrm{L1}\to\mathrm{B0}\to\mathrm{B1}\to\mathrm{R0}.
\]

- C0 exports both a raw accepted trial and a retained-state loss ledger.
- I0 proves the epoch-zero certificate and exposes the generic certificate only
  as a local conditional interface.
- W0 and P0 are universal one-epoch lemmas under that interface; neither
  consumes global induction or future persistence.
- D0 retains a newly assigned channel in Q until P0 has physically reduced its
  target error.
- L1 is the only producer of the all-epoch event, cap margin, and burn-in
  closure.
- B0 is the only consumer of historical B_disc; B1 and R0 use a fixed
  post-pruning objective with no event forcing.

The explicit sketch ledger fixes
\(d_{\mathrm{step}}=42\), \(d_{\mathrm{dec}}=18\),
\(d_{\mathrm{cone}}=32\), \(d_{\mathrm{entry}}=36\),
\(d_{\mathrm{loss}}=50\), \(d_{\mathrm{PL}}=24\), and
\(Q_{\mathrm{ref}}=8P^{66}\).  These are proposed proof exponents, not
assumptions, and each has a named derivation step in proof_sketch.md.

## Open Transfer Obligations

- Derive the current-notation degree-three target-cone small-ball bound with
  the exact score threshold \(q_0=\|T\|_FP^{-30}\).
- Prove that P0 suppresses queued-channel scores before D0's boundary winner
  is selected.
- Show the physical target-error functional has a decrement at least
  \(\|T\|_F^2P^{-18}\) in the no-promotion/decrease branch.
- Verify the loss-reserve bound
  \(\mathfrak B(B_{\mathrm{disc}})\le\|T\|_F^2P^{-50}\) under all allowed
  \(n,r,\kappa,\rho\) scales.
- Prove the target-to-balanced-coordinate transfer needed for B0 and the
  defect-free Jacobian lower bound in B1.

These are localized step obligations under the unchanged setting.  They are
not added assumptions and do not alter the selected framework.
