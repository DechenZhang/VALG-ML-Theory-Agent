# Formalized Setting

- Basic setup:
  Fix integers \(n,r\), a conditioning parameter \(\kappa\ge1\), and
  deterministic base-factor matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\).
  For \(M\in\{\bar A,\bar B,\bar C\}\), let
  \(D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2)\),
  \(\widetilde M=MD_M^{-1}\), and \(G_M=\widetilde M^\top\widetilde M\).
  Let \(\circ\) denote the Hadamard product and define
  \[
  \Delta_{\mathrm{KR}}
  :=\max\bigl\{
  \|G_{\bar A}\circ G_{\bar B}-I_r\|_{\mathrm{op}},
  \|G_{\bar A}\circ G_{\bar C}-I_r\|_{\mathrm{op}},
  \|G_{\bar B}\circ G_{\bar C}-I_r\|_{\mathrm{op}}
  \bigr\}.
  \]

  Independently perturb all columns in all three modes and write
  \(A=[a_1,\ldots,a_r]\), \(B=[b_1,\ldots,b_r]\), and
  \(C=[c_1,\ldots,c_r]\) for the realized factors. The observed tensor is
  \[
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  For every realized nonzero column define
  \(\widetilde a_j=a_j/\|a_j\|_2\), with
  \(\widetilde b_j,\widetilde c_j\) defined cyclically, and set
  \(\tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2\) and
  \(\tau=(\tau_1,\ldots,\tau_r)\).
  Let \(\widetilde A=[\widetilde a_1,\ldots,\widetilde a_r]\), define
  \(\widetilde B,\widetilde C\) cyclically, and set
  \[
  G_A=\widetilde A^\top\widetilde A,\quad
  G_B=\widetilde B^\top\widetilde B,\quad
  G_C=\widetilde C^\top\widetilde C,\quad
  G_{ABC}=G_A\circ G_B\circ G_C,
  \]
  \[
  \Delta_{\mathrm{KR}}^{\mathrm{real}}
  :=\max\bigl\{
  \|G_A\circ G_B-I_r\|_{\mathrm{op}},
  \|G_A\circ G_C-I_r\|_{\mathrm{op}},
  \|G_B\circ G_C-I_r\|_{\mathrm{op}}
  \bigr\}.
  \]
  Realized norm bounds, conditioning, the displayed Gram controls, and
  \(T\ne0\) are good-instance outputs rather than data assumptions.

  For algorithmic rank \(k\), optimize homogeneous factors
  \(X=(x_1,\ldots,x_k)\), \(Y=(y_1,\ldots,y_k)\), and
  \(Z=(z_1,\ldots,z_k)\) in \(\mathbb R^{n\times k}\). Define
  \[
  \Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
  R(X,Y,Z)=T-\Phi(X,Y,Z),\qquad
  F(X,Y,Z)=\tfrac12\|R(X,Y,Z)\|_F^2.
  \]
  For a factor triple \(q=(x,y,z)\), define the tensor-preserving balanced
  gauge
  \[
  \mathcal B(x,y,z)=
  \begin{cases}
  \displaystyle
  g\left(\frac{x}{\|x\|_2},\frac{y}{\|y\|_2},
  \frac{z}{\|z\|_2}\right),
  & \|x\|_2\|y\|_2\|z\|_2>0,\\[1.2ex]
  (0,0,0),&\text{otherwise},
  \end{cases}
  \qquad
  g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3}.
  \]
  The map \(\mathcal B\) preserves \(x\otimes y\otimes z\), gives every
  nonzero component three common norms \(g_i\), and maps a partial-zero
  component to the joint-zero triple with radius \(g_i=0\). If a joint-zero
  component is injected along unit directions \((u,v,w)\) with common radius
  \(t\) while the current residual is \(R\), the exact loss change is
  \[
  -t^3\langle R,u\otimes v\otimes w\rangle
  +\tfrac12t^6\|u\otimes v\otimes w\|_F^2.
  \]
  The all-dormant state therefore has a genuine homogeneous cubic target
  interaction. On the derived good-instance event, the balanced triples
  \[
  \bigl(\tau_j^{1/3}\widetilde a_j,\,
  \tau_j^{1/3}\widetilde b_j,\,
  \tau_j^{1/3}\widetilde c_j\bigr),\qquad j\in[r],
  \]
  with the remaining \(k-r\) components jointly zero, form an exact
  zero-residual representation strictly inside the protected cap; this
  representation and its cap membership are conclusions.

  Define the guarded protocol quantities
  \[
  R_{\max}=8\kappa,\qquad
  P=16nrk\kappa\rho^{-1},
  \]
  \[
  \eta_{\max}
  =\bigl[512k(2R_{\max}+1)^6
  (\|T\|_F+8kR_{\max}^3+1)\bigr]^{-1},
  \]
  \[
  a_{\mathrm{seed}}=\|T\|_F P^{-120},\qquad
  a_{\mathrm{act}}=\|T\|_F P^{-80},\qquad
  \delta=a_{\mathrm{seed}}^{1/3},\qquad
  \theta=a_{\mathrm{act}}^{1/3},
  \]
  \[
  H=\lceil P^{120}\rceil,\qquad
  S=\lceil P^{20}\rceil,\qquad
  M=\lceil8r\log(2r)\rceil.
  \]
  A single initialization tape consists of all mutually independent Haar
  directions
  \[
  \mathcal T=
  \{(u_{i,e},v_{i,e},w_{i,e}):i\in[k],\ e\in\{0,\ldots,S\}\}
  \subset(\mathbb S^{n-1})^3.
  \]
  Initially every component is probationary, none is protected, and
  \[
  (x_i,y_i,z_i)=\delta(u_{i,0},v_{i,0},w_{i,0}),\qquad i\in[k].
  \]
  The protocol maintains disjoint protected and probationary index sets
  \(\mathcal I_{\mathrm{prot}}\) and \(\mathcal I_{\mathrm{prob}}\), together
  with a parking set
  \(\mathcal I_{\mathrm{park}}\subseteq\mathcal I_{\mathrm{prob}}\).
  At the start of every common search, protected current radii are bounded by
  \(R_{\max}\) and unparked probationary current radii by \(2\theta\); proving
  these generated bounds and the strict protected margin is part of the
  success theorem.

  Each burn-in epoch has \(H\) inner iterations. At one inner iteration, let
  \(\mathcal U=\mathcal I_{\mathrm{prot}}\cup
  (\mathcal I_{\mathrm{prob}}\setminus\mathcal I_{\mathrm{park}})\).
  Gradients are evaluated at the common old state. For a dyadic trial
  \(\lambda=\eta_{\max}2^{-m}\), \(m\in\mathbb N_0\), simultaneously form,
  for \(i\in\mathcal U\),
  \[
  (\widehat x_i,\widehat y_i,\widehat z_i)
  =(x_i,y_i,z_i)
  -\lambda(\nabla_{x_i}F,\nabla_{y_i}F,\nabla_{z_i}F),
  \]
  apply \(\mathcal B\) to every tentative triple, and hold every index
  outside \(\mathcal U\) fixed. A trial is feasible when every updated
  protected component has \(g_i\le2R_{\max}\), every updated unparked
  probationary component has \(g_i\le4\theta\), and
  \[
  F_{\mathrm{trial}}\le F_{\mathrm{current}}
  -\frac{\lambda}{4}\|\nabla_{\mathcal U}F_{\mathrm{current}}\|_F^2,
  \]
  where the squared norm is the sum of the squared Euclidean norms of all
  updated factor gradients.

  Accept the largest feasible dyadic trial. If an accepted protected trial
  has \(g_i>R_{\max}\), declare protocol failure; otherwise retain every
  accepted protected trial. For an accepted unparked probationary trial with
  \(g_i<2\theta\), retain its balanced triple. If its radius satisfies
  \(g_i\ge2\theta\), retain its balanced directions, replace its common radius
  by exactly \(2\theta\), mark it parked for the rest of the epoch, and
  remove it from all subsequent common searches in that epoch. A tentative
  triple containing a zero factor is mapped to the joint-zero triple and
  parked. Thus a parked contribution has tensor norm \(8a_{\mathrm{act}}\) and
  cannot constrain a later common step. If no feasible dyadic trial exists,
  declare protocol failure. If \(\mathcal U=\varnothing\), hold the state fixed
  until the epoch boundary. The success theorem must prove that failure never
  occurs, that protected cap inactivity is strict, and that every accepted
  common step has an inverse-polynomial lower bound.

  At the boundary of epoch \(e\in\{0,\ldots,S-1\}\), compute the residual
  \(R=T-\Phi(X,Y,Z)\). For every nonzero probationary component define
  \[
  s_i=\left\langle R,\,
  \frac{x_i\otimes y_i\otimes z_i}
  {\|x_i\otimes y_i\otimes z_i\|_F}\right\rangle.
  \]
  If fewer than \(M\) components are protected, among probationary indices
  satisfying
  \[
  g_i\ge\theta,\qquad s_i\ge\|T\|_F P^{-30},
  \]
  promote exactly the index with largest score, using the smallest index
  only to resolve a tie; if no index qualifies, make no promotion. Promotion
  changes only the label, and protected components are never reset. Reset
  every other probationary component to
  \[
  (x_i,y_i,z_i)=\delta(u_{i,e+1},v_{i,e+1},w_{i,e+1})
  \]
  and clear all parking flags. If \(e+1=S\) or the number of protected
  components has reached \(M\), end burn-in after this reset, map all
  remaining probationary components to the joint-zero triple, and freeze
  them permanently. Continue thereafter with guarded balanced Armijo GD on
  protected components only: use the same dyadic guards \(2R_{\max}\), accept
  only a protected radius at most \(R_{\max}\), and declare failure if that
  cap is crossed. There is no post-burn-in parking, refresh, promotion, or
  change to a frozen component. Stop at the first protected-only iterate
  satisfying
  \(\|R(X,Y,Z)\|_F\le\epsilon\|T\|_F\); reaching it in the claimed horizon is
  a theorem conclusion.

  A guarded probationary trial has tensor norm at most
  \((4\theta)^3=64a_{\mathrm{act}}\). One project-and-park transition changes
  its tensor by at most \(56a_{\mathrm{act}}\), and a subsequent reset changes
  it by at most \(8a_{\mathrm{act}}+a_{\mathrm{seed}}\). Since each component
  is projected at most once per epoch and reset at most once per epoch, define
  the deterministic discrete-event path-length reserve
  \[
  B_{\mathrm{disc}}
  \le kS(64a_{\mathrm{act}}+a_{\mathrm{seed}})
  +8ka_{\mathrm{act}}
  \le140\|T\|_F P^{-59}.
  \]
  Every project, reset, and final-pruning loss defect must be charged to this
  reserve. Project-and-park transitions are discrete events rather than
  accepted gradient steps and are counted by \(kS\); the tape is one
  randomized run, not external restart amplification. Reachable-tube
  membership, proposal coverage, homogeneous growth, sequential diversity,
  noncancellation, persistence, off-span leakage control, cap margins, chart
  entry, PL geometry, convergence, and stopping are derived outputs rather
  than admissibility conditions.
- Technical assumptions:
  - `assump:base-conditioning` (Polynomially conditioned deterministic bases):
    There is a fixed exponent \(c_0>0\) and a parameter
    \(1\le\kappa\le r^{c_0}\) such that every singular value and every
    column norm of each of \(\bar A,\bar B,\bar C\) lies in
    \([\kappa^{-1},\kappa]\).
  - `assump:base-kr-isometry` (Static cyclic Khatri--Rao near-isometry):
    The independently checkable pre-perturbation quantity satisfies
    \(\Delta_{\mathrm{KR}}\le1/64\).
  - `assump:gaussian-smoothing` (Source Gaussian perturbations):
    Mutually independently over \(j\in[r]\) and over the three modes,
    \[
    a_j-\bar a_j,\ b_j-\bar b_j,\ c_j-\bar c_j
    \sim\mathcal N(0,\rho^2 I_n/n).
    \]
  - `assump:dimension-regime` (Ambient dimension):
    \(r\ge2\) and \(n\ge C_{\mathrm{dim}}r\log r\), where
    \(C_{\mathrm{dim}}>0\) is fixed, may depend only on \(c_0\), and the
    claim is asymptotic in \(r\).
  - `assump:smoothing-scale` (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\) for a fixed exponent
    \(c_\rho>0\).
  - `assump:perturbation-margin` (Conditioning-to-smoothing margin):
    \(\rho\kappa^6\le10^{-3}\).
  - `assump:rank-regime` (Explicit subquadratic algorithmic rank):
    \[
    k=U(r):=\left\lceil
    C_{\mathrm{rank}}r^{3/2}(\log r)^2\right\rceil,
    \]
    where \(C_{\mathrm{rank}}>0\) is fixed, may depend only on
    \(c_0,c_\rho\), and is chosen sufficiently large for the stated
    concentration and anti-concentration conclusions. The integer \(r\) is
    sufficiently large that \(r<k<r^2\) and \(M<k\). Equivalently,
    \(k/r^2=O((\log r)^2/\sqrt r)=o(1)\).
  - `assump:random-tape` (One finite pre-sampled Haar tape):
    All \(3k(S+1)\) directions in \(\mathcal T\) are mutually independent
    Haar draws from \(\mathbb S^{n-1}\), and the entire tape is independent
    of the Gaussian-smoothed instance. All algorithmic randomness is
    contained in this one tape.
  - `assump:accuracy-range` (Relative-error tolerance):
    \(0<\epsilon<1\).

# Formalized Goal

- Goal statement:
  Prove the following exact conditional guarded-cap
  reachable-landscape and trajectory global-convergence theorem for the
  single protocol above. Uniformly over every deterministic base triple
  satisfying `assump:base-conditioning`,
  `assump:base-kr-isometry`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and
  `assump:perturbation-margin`, use the rank in
  `assump:rank-regime` and any tolerance in
  `assump:accuracy-range`. Under
  `assump:gaussian-smoothing`, construct an event
  \(\mathcal E_{\mathrm{inst}}\) with
  \(\Pr(\mathcal E_{\mathrm{inst}})\ge1-r^{-10}\) on which
  \[
  \Delta_{\mathrm{KR}}^{\mathrm{real}}\le\frac1{32},\qquad
  \|a_j\|_2,\|b_j\|_2,\|c_j\|_2\in[(2\kappa)^{-1},2\kappa]
  \quad(j\in[r]),
  \]
  \[
  \|G_{ABC}-I_r\|_{\mathrm{op}}\le\frac1{32},\qquad
  \sqrt{\frac{31}{32}}\|\tau\|_2
  \le\|T\|_F\le
  \sqrt{\frac{33}{32}}\|\tau\|_2,\qquad
  T\ne0,
  \]
  and the balanced true representation has common radius at most
  \(2\kappa<R_{\max}\), and \(4\theta\le2R_{\max}\), so it is exactly
  representable inside the protected cap and the guarded gradient domain is
  bounded by the displayed \(\eta_{\max}\) scale. Conditional on every such
  instance, prove under
  `assump:random-tape` that a tape-success event
  \(\mathcal E_{\mathrm{tape}}(T)\) has conditional probability at least
  \(1-r^{-10}\).

  On \(\mathcal E_{\mathrm{tape}}(T)\), prove that no protected-cap or
  line-search failure occurs, every accepted dyadic common step has
  \(\lambda\ge P^{-d_{\mathrm{step}}}\) for a fixed positive integer
  \(d_{\mathrm{step}}\), every project-and-park event occurs at most once per
  probationary component per epoch, and all project, reset, and pruning
  defects are charged to
  \(B_{\mathrm{disc}}\le140\|T\|_FP^{-59}\). In particular, protected
  components maintain a derived positive distance from the failure boundary,
  rather than being assumed cap-inactive.

  More precisely, prove that there are fixed positive integers
  \(d_{\mathrm{dec}},d_{\mathrm{PL}},d_{\mathrm{step}}\), an explicitly
  defined nonnegative discrete-budgeted Lyapunov function \(\mathcal L\), an
  explicitly defined reachable tube \(\mathcal U_{\mathrm{reach}}\), and an
  explicitly defined same-target active chart
  \(\mathcal C_{\mathrm{act}}\subseteq\mathcal U_{\mathrm{reach}}\), all
  depending only on the displayed protocol and realized instance, such that
  every generated state lies in \(\mathcal U_{\mathrm{reach}}\). Before
  \(\mathcal C_{\mathrm{act}}\) is reached, every completed burn-in epoch either
  promotes, under a derived injective channel assignment, a
  residual-correlated representative for a previously unresolved target
  channel, or satisfies
  \[
  \mathcal L_{\mathrm{next}}
  \le\mathcal L_{\mathrm{current}}
  -\|T\|_F^2P^{-d_{\mathrm{dec}}}
  \]
  after charging that epoch's discrete-event reserve. By at most \(S\) epochs
  or \(M\) promotions, protected components contain a noncancelling
  representative system for all \(r\) target channels and the post-pruning
  protected state lies in \(\mathcal C_{\mathrm{act}}\). On this chart,
  \[
  \|\nabla_{\mathrm{prot}}F\|_F^2
  \ge2P^{-d_{\mathrm{PL}}}F,
  \]
  the accepted protected-only step satisfies
  \(\lambda\ge P^{-d_{\mathrm{step}}}\), and the chart is preserved until
  the stopping residual is reached.

  Derive from the primitive instance and tape laws, rather than assume, the
  conditional tape anti-concentration for each adaptive residual,
  homogeneous radial and angular growth up to a project-and-park transition,
  sequential residual diversity, target-mass reduction, protected
  noncancellation and cap margin, duplicate/off-span/leakage control,
  pruning absorption, chart entry, and the balanced-Jacobian PL inequality.
  These outputs must form a noncircular producer-consumer chain from the
  finite tape and smoothed instance through projection, promotion, reset, and
  pruning to protected-only refinement. No landscape assertion is made for
  cancelling or partially active configurations outside
  \(\mathcal U_{\mathrm{reach}}\).

  Finally, after the fixed burn-in horizon \(SH\), or earlier termination at
  \(M\) promotions, prove that protected-only guarded Armijo refinement needs
  at most \(Q_{\mathrm{ref}}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\)
  additional accepted steps, for an explicit polynomial
  \(Q_{\mathrm{ref}}\), and returns
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F.
  \]
  The tape size, \(SH\), at most \(kS\) project-and-park events, dyadic
  trials per accepted step, work per trial, and refinement horizon are
  polynomial in \(n,r,k,\kappa,\rho^{-1}\); after substituting
  \(k,\kappa,\rho^{-1}=\operatorname{poly}(r)\), total work is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\). The fixed quantities are
  \(c_0,c_\rho\) and the numerical protocol exponents and constants; hidden
  constants and the fixed integers
  \(d_{\mathrm{dec}},d_{\mathrm{PL}},d_{\mathrm{step}}\) may depend only
  on those fixed quantities, not on \(n,r,k,\kappa,\rho,\epsilon\) or the
  chosen bases. The probability mode is high probability over the once-drawn
  instance followed by conditional high probability over one finite tape, the
  horizon mode is finite burn-in plus finite refinement, and the norm mode is
  the Frobenius residual. There is no restart, no post-burn-in refresh, and no
  positive error floor as \(\epsilon\downarrow0\).

# Note

- Rigor:
  This is an exact-goal formalization. It preserves the source's asymmetric
  unnormalized rank-\(k\) CP least-squares objective, Gaussian perturbations,
  \(U(r)=\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\rceil=o(r^2)\) with
  \(\beta=1/2\), separate instance and tape probabilities, polynomial total
  runtime, and arbitrary relative Frobenius accuracy. The conditional
  source-scope restriction is unchanged: polynomially conditioned
  deterministic bases satisfying `assump:base-kr-isometry` and
  `assump:perturbation-margin`. The remaining source gap is arbitrary
  bases and well-conditioned bases without these static restrictions.
  Progress type is `conditional`. Relative to Idea 2, the only
  semantic delta is the guarded \(2R_{\max}/4\theta\) trial protocol, the
  one-time radial projection-and-parking transition, the step-size ceiling
  \(\eta_{\max}\), and the finite discrete-event reserve \(B_{\mathrm{disc}}\).
  This is justified by the prior equality-only cap obstruction: positive
  growth can otherwise make accepted dyadic steps exponentially small without
  landing exactly on the cap. The exact balanced representation and arbitrary
  \(\epsilon\downarrow0\) baseline are retained.

  Materiality comes from preserving the subquadratic end-to-end target while
  making the cap-aware gradient protocol have a finite, polynomially
  accounted transition cost. The explicit-rate variables are
  \(n,r,k,\kappa,\rho,\epsilon\); fixed quantities are \(c_0,c_\rho\) and
  numerical protocol constants; probability modes are the separate instance
  and tape events; the horizon is guarded burn-in plus logarithmic refinement;
  and the metric is relative Frobenius error.

  Assumption support is as follows. `assump:base-conditioning` and the
  Khatri--Rao interfaces are inherited from the source prose and *Guarantees
  for Alternating Least Squares in Overparameterized Tensor Decompositions*.
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:accuracy-range` come
  from the source smoothed model and requested theorem regime.
  `assump:base-kr-isometry` is the same novel primitive condition as
  before, verified on orthogonal-mode, incoherent-dense-frame, and
  complementary-block examples; `assump:perturbation-margin` is
  checkable on each whenever \(\rho\le10^{-3}\kappa^{-6}\).
  `assump:rank-regime` is the approved \(c=\beta=1/2\) probe budget.
  `assump:random-tape` uses the standard Haar law and finite
  pre-sampling equivalence, while homogeneous initialization and refresh are
  literature-derived from *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition*.

  Tensor-preserving balancing, Armijo backtracking, radial projection onto a
  norm ball, and active-set parking are standard optimization operations.
  Their guarded composition is novel but mechanism-verified in several branch
  regimes: on an exactly aligned rank-one path,
  \(g^+=g+\lambda g^2(\tau-g^3)\), so the first accepted trial crossing
  \(2\theta\) is projected once and parked; on an open near-aligned
  rank-one neighborhood, continuity preserves the crossing while the
  \(4\theta\) guard bounds the trial; for modewise-orthogonal multi-channel
  tensors, simultaneous crossings are independently projected and only the
  largest residual score is promoted; and for cyclic Khatri--Rao
  near-isometric frames, the cap logic is coordinate-free while the \(1/32\)
  Gram defects enter the still-required score, assignment, and persistence
  recurrences rather than the step-feasibility margin. Joint zero is
  activated only by scheduled refresh, partial zero is mapped to joint zero,
  outward probationary growth ends in one discrete project-and-park event,
  and active cancellation remains outside the claimed tube unless excluded
  by the derived signed potential. Realized controls, tape coverage,
  noncancellation, persistence, cap inactivity, tube membership, chart entry,
  PL geometry, convergence, and stopping are not assumptions.
