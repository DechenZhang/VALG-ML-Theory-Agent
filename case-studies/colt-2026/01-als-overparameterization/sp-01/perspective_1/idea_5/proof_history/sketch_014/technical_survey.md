# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1` (global convergence for asymmetric CP least squares)
- Current idea: `idea_5` (SC-JEP-ALS with an observable same-state
  projective-stationarity certificate and certified-state carry-over)
- Survey pass: attempt 7, revised after `proof_history/sketch_012/proof_sketch_review.md`
- Setting / goal summary: Under bounded base scales, cumulative modewise Gram
  mass at most `q_* / 4`, near-balanced weights, and source Gaussian
  smoothing, prove a conditional end-to-end relative-error theorem with
  `k = Theta(r^(5/3) (log r)^(5/2))`.  A covered Jacobi proposal must certify
  within `O(log r)` additional sweeps, certified high-score states must form
  exactly one observable cluster per component, and the stored states
  themselves must enter a quantitative cyclic-ALS basin.

## Candidate Frameworks

### Framework 1: Same-state projective normal equations and spatial row/column small gain

- Source papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* (NeurIPS 2025,
  https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html);
  `perspective_1/idea_4/technical_survey.md`;
  `perspective_1/idea_4/proof_sketch_review.md`; `perspective_1/idea_5/idea.md`
- Applicability to current branch: The NeurIPS paper supplies the simultaneous
  old-state Jacobi convention.  The current branch replaces the failed
  last-displacement handoff by an approximate projective fixed-point
  certificate.  For each stored state, multiplying the certificate by the
  contraction norm gives the raw right-sided equation
  `P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw`, with the weight diagonal retained in
  `K_M^raw`; after score orientation it becomes
  `bar P_M D_M=G_M bar K_M+bar R_M`.  Both pair matrices and directions are
  formed from that stored state, so passing to the true-factor dual
  coordinates avoids every pre-update/post-update identification that blocked
  idea 4.  The proof sketch now keeps the setting objects binding: the
  setting-level `P,Q,S,K,D,theta` remain raw algorithm objects, with
  `P_M^raw:=P_M` and `K_M^raw:=K_M`.  Proof-only oriented copies
  `bar P,bar K,bar R` are introduced only after score filtering; `D` is
  unchanged, the initialized z sign remains the setting sign, and
  `bar theta=abs(theta)` is used only by downstream proof estimates.  Thus
  no later declaration rebinds a symbol used by `setting.md` initialization.
- Proof roadmap:
  1. Derive the realized norm, Gram-row, weight, and Khatri-Rao events and the
     rare three-mode Gaussian window coverage.
  2. Prove the displayed simultaneous `R,S` recurrences, then construct the
     explicit `chi_chart=1/128` quotient chart and Banach fixed point; make
     consecutive projective displacements fall below `tau_r` in the
     certification window.
  3. Produce the oriented same-state certificate equation for every certified
     slot before target labels or clustering, retaining a sign diagonal and an
     l2 residual budget `d tau_r`.
  4. Emit a global no-label `E_cert_tail` ledger for every certified state:
     first mark proof-only LOW scores below `0.7lambda_min`, normalize
     `mu_i=lambda_i/lambda_min`, and expand the two first-order Gram-factor
     leakages as `E'+E''+E'circ E''`, giving
     `eta_G=2q_*+q_*^2`; retain `eta_N=4q_*^2` and
     `eta_C=2sqrt(r)tau_r`.  The finite conversion is
     `sqrt(r)tau_r=q_*^2/(10^4sqrt(r))`, which is absorbed without changing
     rank or probability.  With `eta_0=eta_G+eta_N+eta_C` and
     `eta_rel=8eta_0`, threshold at `vartheta=1/8`, prove
     `vartheta_*>1/16`, derive `d_0<=11eta_0`, a ratio product `68eta_0`
     (the mode-M factor cancels when solving its squared ratio), and the
     normalized profile `|delta_{M,i}|<=144eta_0`, charge singleton
     l1 tails by `a_cert=7q_*+8tau_r`, and charge multi-support score tails by
     `16eta_0`.  Feed that ledger into a weighted support/score lemma that
     retains `diag(lambda)`, covers arbitrary m-support orthogonal fixed
     points, uses the exact score `S_I=(sum lambda_i^(-2))^(-1/2)` at the
     unequal-weight boundary, handles threshold-straddling, negative, and
     zero scores, and proves observable cluster correctness.
  5. In dual coordinates, close the explicit small-root column inequality and
     then the incoming row mass from the same-state equation.  The static
     forcing is quadratic in Gram mass; a per-entry dual residual bound gives
     `O(r tau_r)` in both induced `l1` norms without an `r^2 tau_r` loss.
  6. Transfer certified directions and observable best scalars into a
     numerical quotient tube (`rho_ALS=1/1024`) using relative amplitudes so
     the absolute `kappa_0` scale cancels, prove active rank-r/zero-padding
     equivalence, and prove local cyclic-ALS contraction.
- Key lemmas / ingredients: normalized Gaussian Gram perturbation; correlated
  Gaussian regression and pair-product tails; the simultaneous ratio and
  pair-mass recurrences; contraction-mapping displacement decay; weighted
  support/score classification of Jacobi fixed points; true-factor dual bases;
  induced row/column Hadamard inequalities; and a quantitative
  block-normal-equation perturbation bound.
- Main transfer challenges: Certification must be reached from every covered
  window without assuming convergence; the per-state equation must precede
  all-certified-state classification; the dual certificate residual must be
  normalized by the target weight without losing more than `r tau_r`; and the
  local ALS source has an existential neighborhood, so a current-notation
  uniform radius and exact zero-padding bridge are required.  Attempt 7
  makes the threshold/tail ledger global over certified slots, exposes the
  two-term Gram budget and denominator arithmetic (`68eta_0` ratio,
  `144eta_0` profile), and binds the raw/post-score notation; the right-side
  sign-matrix convention and product-preserving gauge used when `theta<0`
  remain binding interfaces.
- Potential repair techniques and supporting references:
  - Technique: Treat the projective residual as a same-state normal-equation
    residual and close row mass only after a member-local column bootstrap.
  - Supporting reference: `perspective_1/idea_5/idea.md` and the failed
    time-slice audit in `perspective_1/idea_4/proof_sketch_review.md`.
  - Why it may help: Off-diagonal coefficients are products of two
    `Gram + coefficient-error` terms.  Thus the row inequality has the form
    `eta <= C(q + chi)(q + eta) + C r tau_r`, with no unsourced temporal
    transition term.
  - Technique: Use a contraction-mapping estimate to bound successive Jacobi
    displacements rather than claiming finite-time arrival at an exact fixed
    point.
  - Supporting reference: the simultaneous Jacobi map in the NeurIPS 2025
    paper and the exact map recorded in `perspective_1/idea_5/setting.md`.
  - Why it may help: Once the covered trajectory enters the target chart,
    `zeta(h^{t+1}) <= L zeta(h^t)` with `L < 1/4`, so the observable tolerance
    is reached in `O(log r)` sweeps.
  - Technique: Emit a global threshold/tail ledger from the same-state
    certificate before clustering.  Normalize `mu=lambda/lambda_min`, use
    `vartheta=1/8`, and split proof-only LOW, singleton-core, multi-core, and
    threshold-straddling states with explicit `a_cert` and `tail_score` fields.
  - Supporting reference: the same-state weighted normal equations in
    `perspective_1/idea_5/setting.md` and the threshold obligation recorded in
    `proof_history/sketch_012/proof_sketch_review.md`.
  - Why it may help: Every certified state is classified without target labels
    or the covered-only `E_chart_l1`; LOW is discharged by the unchanged
    `0.85 sigma_max` rule rather than a new algorithmic filter.  The direct bound
    `|theta| <= lambda_max(1/sqrt(2)+160eta_0)`; numerically
    `1.01s_mix<0.794<0.85s_-`, so the `0.85` filter remains separated under
    `Gamma<=1.01`.
- Disposition: `selected`
- Branch notes: This is not the idea-4 last-update coefficient framework.
  There is no pre-state pair matrix.  Attempt 7 inserts the global
  `E_cert_tail` producer before weighted `E_support_wt`, replaces the invalid
  unweighted uniform-profile claim by a direct weighted score bound, exports
  ratio-l1 and per-entry residual interfaces, and keeps the setting's raw
  `P,Q,S,K,D,theta` distinct from proof-only barred representatives.  The
  ledger records `eta_G=2q_*+q_*^2`, `eta_N`, `eta_C`, the exact
  finite-support `sqrt(r)tau_r` conversion, the retained-floor denominator
  chain, the `68eta_0` ratio product, and the `144eta_0` profile bound.
  Relative amplitude coordinates make `C_best=512` independent of
  `kappa_0`; the numerical tube remains
  `rho_ALS=1/1024`.  At `q_real=0`, a finitely certified transient may have
  nonzero error, and that error remains in `R_M^raw` (or `bar R_M` after
  orientation); only an exact fixed point has zero certificate residual.  The
  rho-zero case is an explicit deterministic limiting specialization, not a
  new primitive probability domain.

### Attempt-7 Constant Audit

At the worst finite-support case `r=1`, the repaired reserve satisfies
`eta_0<4.89e-4`, `eta_rel<3.91e-3`, and `vartheta_*>0.0937`.  The ratio
product is below `68eta_0`, the normalized profile below `144eta_0`, the
singleton tail is below `1.42e-3<a_cert`, and the multi-support score tail is
below `4.24e-3<16eta_0`.  The resulting score margins are
`s_->0.953`, `s_+<1.047`, and `1.01s_mix<0.794`; hence
`1.01s_mix<0.85s_-` and `s_-/(1.01s_+)>0.901`.  The graph radius,
`chi_-<=32omega`, `C_best=512`, `rho_ALS=1/1024`, the `2r tau_r` residual
conversion, and the exact rho-zero baseline are unchanged by this ledger
rerun.

### Framework 2: Quantitative quotient-Hessian cyclic CP-ALS

- Source papers: Andre Uschmajew, *Local Convergence of the Alternating Least
  Squares Algorithm for Canonical Tensor Approximation*, SIAM J. Matrix Anal.
  Appl. 2012, DOI `10.1137/110843587`, Assumption 1, Lemma 3.2, Theorems 3.3
  and 3.5
- Applicability to current branch: The source matches exact CP least squares
  after componentwise scaling is quotiented out.  It applies only after the
  certified best-scalar factors have been compared with the exact realized
  factors.  It supplies the qualitative block-Gauss--Seidel mechanism, not
  random entry or a numerical radius.
- Proof roadmap:
  1. Use the realized Gram floors and dual bases to identify the derivative
     kernel exactly with the CP scaling tangent.
  2. Restate the cyclic normal equations in the branch's balanced chart and
     prove a uniform inverse and Lipschitz bound on an explicit tube.
  3. Invoke the cited derivative identification only after its hypotheses and
     current-object mapping have been discharged.
- Key lemmas / ingredients: Khatri--Rao spectral floors; quotient Hessian
  `J^T J`; diagonal balancing; inverse perturbation; and cyclic block-map
  composition.
- Main transfer challenges: The source neighborhood is existential, the source
  uses equilibrated coordinates, and it does not cover zero-padded inactive
  columns.  The branch must prove its own numerical tube and show that freezing
  the inactive columns is exactly the active rank-`r` problem.
- Potential repair techniques and supporting references:
  - Technique: Derive the radius and contraction constant directly from the
    normalized Khatri--Rao normal equations, using the cited paper only for
    the quotient interpretation.
  - Supporting reference: DOI `10.1137/110843587`, Lemma 3.2 and Theorems 3.3,
    3.5.
  - Why it may help: It makes the source's known non-output boundary explicit
    and prevents an existential basin from being used as a generated entry
    condition.
- Disposition: `backup`
- Branch notes: This is the terminal component of Framework 1, not an
  alternative global-entry proof.

### Framework 3: Smoothed product-factor conditioning

- Source papers: *Smoothed Analysis of Tensor Decompositions* (STOC 2014,
  arXiv:1311.3651); *New Tools for Smoothed Analysis: Least Singular Value
  Bounds for Random Matrices with Dependent Entries* (STOC 2024,
  arXiv:2405.01517)
- Applicability to current branch: These sources support the general static
  conditioning pattern but do not provide the required normalized Gram-row
  bounds or any SC-JEP-ALS trajectory statement.  The branch's stronger
  primitive margins make a direct current-notation concentration argument
  shorter and more transparent.
- Proof roadmap:
  1. Separate linear directional, quadratic, and normalization perturbations.
  2. Sum them by target row and allocate the finite confidence union.
  3. Use Schur products to obtain every Khatri--Rao spectral floor.
- Key lemmas / ingredients: Gaussian norm and inner-product concentration,
  normalization perturbation, Gershgorin, and Schur products.
- Main transfer challenges: Generic least-singular-value results do not imply
  the branch's cumulative normalized Gram interface.
- Potential repair techniques and supporting references:
  - Technique: Use the displayed scalar smoothing margin directly.
  - Supporting reference: arXiv:1311.3651 and arXiv:2405.01517.
  - Why it may help: The papers validate the static smoothed-conditioning
    lineage while the exact row-sum arithmetic remains branch-local.
- Disposition: `backup`
- Branch notes: This framework is confined to the static instance step.
