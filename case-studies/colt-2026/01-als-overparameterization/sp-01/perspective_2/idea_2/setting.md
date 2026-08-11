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
  The realized norm bounds, the displayed normalized objects, their
  conditioning, and \(T\ne0\) are good-instance outputs rather than data
  assumptions.

  For algorithmic rank \(k\), optimize homogeneous factors
  \(X=(x_1,\ldots,x_k)\), \(Y=(y_1,\ldots,y_k)\), and
  \(Z=(z_1,\ldots,z_k)\) in \(\mathbb R^{n\times k}\). Define
  \[
  \Phi(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
  R(X,Y,Z)=T-\Phi(X,Y,Z),\qquad
  F(X,Y,Z)=\tfrac12\|R(X,Y,Z)\|_F^2.
  \]
  For a factor triple \(q=(x,y,z)\), define its tensor-preserving balanced
  gauge by
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
  Thus \(\mathcal B\) preserves \(x\otimes y\otimes z\); every nonzero
  balanced component has three common norms \(g_i\), and every partially
  dormant component is mapped to the joint-zero triple, whose common radius
  is defined as \(g_i=0\). If a joint-zero
  component is injected along unit directions \((u,v,w)\) with common
  radius \(t\) while the current residual is \(R\), the exact loss change is
  \[
  -t^3\langle R,u\otimes v\otimes w\rangle
  +\tfrac12t^6\|u\otimes v\otimes w\|_F^2.
  \]
  In particular, the all-dormant state has \(R=T\) and a genuine homogeneous
  cubic target interaction. On the derived good-instance event, the \(r\)
  balanced triples
  \[
  \bigl(\tau_j^{1/3}\widetilde a_j,\,
  \tau_j^{1/3}\widetilde b_j,\,
  \tau_j^{1/3}\widetilde c_j\bigr),\qquad j\in[r],
  \]
  with the remaining \(k-r\) components jointly zero, form an exact
  zero-residual representation; its cap admissibility is also to be proved.

  Define the fixed protocol quantities
  \[
  R_{\max}=8\kappa,\qquad
  \eta=\bigl[256k(R_{\max}+1)^6
  (\|T\|_F+kR_{\max}^3+1)\bigr]^{-1},\qquad
  P=16nrk\kappa\rho^{-1},
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
  A single initialization tape consists of mutually independent Haar triples
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

  Each burn-in epoch has \(H\) inner iterations. At one inner iteration, let
  \(\mathcal U=\mathcal I_{\mathrm{prot}}\cup
  (\mathcal I_{\mathrm{prob}}\setminus\mathcal I_{\mathrm{park}})\).
  Gradients are evaluated at the common old state. For a dyadic trial
  \(\lambda=\eta2^{-m}\), \(m\in\mathbb N_0\), simultaneously form, for
  \(i\in\mathcal U\),
  \[
  (\widehat x_i,\widehat y_i,\widehat z_i)
  =(x_i,y_i,z_i)
  -\lambda(\nabla_{x_i}F,\nabla_{y_i}F,\nabla_{z_i}F),
  \]
  apply \(\mathcal B\) to every tentative triple, and hold every index outside
  \(\mathcal U\) fixed. A trial is feasible when every updated protected
  component has \(g_i\le R_{\max}\), every updated probationary component has
  \(g_i\le2\theta\), and
  \[
  F_{\mathrm{new}}\le F_{\mathrm{old}}
  -\frac{\lambda}{4}\|\nabla_{\mathcal U}F_{\mathrm{old}}\|_F^2,
  \]
  where the squared norm is the sum of the squared Euclidean norms of all
  updated factor gradients.

  If a probationary component currently at \(g_i=2\theta\) violates its cap
  for every positive dyadic trial and thereby blocks the search, park one
  such component, using the smallest index only to resolve multiplicity, and
  restart the trial search on the reduced \(\mathcal U\). A tentative triple
  containing a zero factor is mapped to the joint-zero triple and parked.
  If a protected component blocks every positive trial, or if no Armijo
  trial exists after all probationary cap blockers have been parked, the
  protocol declares line-search failure. Otherwise accept the largest
  feasible dyadic trial. If \(\mathcal U=\varnothing\), hold the state fixed
  until the next epoch boundary. The success theorem must prove that
  line-search failure never occurs and, in particular, that protected
  components never block.

  At the boundary of epoch \(e\in\{0,\ldots,S-1\}\), compute the residual
  \(R=T-\Phi(X,Y,Z)\). For each nonzero probationary component define the
  observable score
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
  promote exactly the index with largest score, using the smallest index only
  to resolve a tie; if no index qualifies, make no promotion. Promotion
  changes only the label. Reset every remaining probationary component to
  \[
  (x_i,y_i,z_i)=\delta(u_{i,e+1},v_{i,e+1},w_{i,e+1})
  \]
  and clear all probationary parking flags. If \(e+1=S\) or the number of
  protected components has reached \(M\), end burn-in after this reset, map
  every still-probationary component to the joint-zero triple, and freeze it
  permanently. Continue thereafter with the same balanced capped Armijo
  update on protected components only, with cap \(R_{\max}\), no parking,
  refresh, promotion, or further change to a frozen component. Stop at the
  first protected-only iterate satisfying
  \(\|R(X,Y,Z)\|_F\le\epsilon\|T\|_F\); reaching this stopping condition in
  the claimed polynomial horizon is a theorem conclusion.

  Let \(B_{\mathrm{refresh}}\) be the sum, over all epoch resets and final
  pruning operations, of the Frobenius norms of their changes to
  \(\Phi(X,Y,Z)\). Because a probationary component has tensor norm at most
  \(8a_{\mathrm{act}}\) and a reset component has tensor norm
  \(a_{\mathrm{seed}}\), the deterministic protocol bound is
  \[
  B_{\mathrm{refresh}}
  \le kS(8a_{\mathrm{act}}+a_{\mathrm{seed}})
  +8ka_{\mathrm{act}}
  \le20\|T\|_F P^{-59}.
  \]
  Every reset-induced loss increase and every recurrence defect attributed
  to refresh or final pruning must be charged to this finite displayed
  budget. The tape is part of one randomized run, not a sequence of external
  restarts. Reachable-tube membership, proposal coverage, cubic growth,
  sequential channel diversity, noncancellation, persistence, off-span
  leakage control, cap inactivity, regular-chart entry, PL geometry, and
  convergence are all derived outputs rather than admissibility conditions.
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
  Prove the following exact conditional refresh-reachable
  landscape-and-trajectory theorem for the single protocol above. Uniformly
  over every deterministic base triple satisfying
  `assump:base-conditioning`, `assump:base-kr-isometry`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:perturbation-margin`, use the rank in
  `assump:rank-regime` and any tolerance in
  `assump:accuracy-range`. Under `assump:gaussian-smoothing`,
  construct an instance event \(\mathcal E_{\mathrm{inst}}\) with
  \(\Pr(\mathcal E_{\mathrm{inst}})\ge1-r^{-10}\) on which, simultaneously,
  \[
  \Delta_{\mathrm{KR}}^{\mathrm{real}}\le\frac1{32},\qquad
  \|a_j\|_2,\|b_j\|_2,\|c_j\|_2\in[(2\kappa)^{-1},2\kappa]
  \quad(j\in[r]),
  \]
  \[
  \|G_{ABC}-I_r\|_{\mathrm{op}}\le\frac1{32},\qquad
  \sqrt{\frac{31}{32}}\|\tau\|_2
  \le\|T\|_F\le
  \sqrt{\frac{33}{32}}\|\tau\|_2,\qquad T\ne0,
  \]
  and the balanced true representation has every common radius at most
  \(2\kappa<R_{\max}\), hence gives exact zero residual inside the protected
  cap.

  Conditional on every instance in \(\mathcal E_{\mathrm{inst}}\), prove
  under `assump:random-tape` that a tape-success event
  \(\mathcal E_{\mathrm{tape}}(T)\) has conditional probability at least
  \(1-r^{-10}\). On this event the exact finite protocol never declares
  line-search failure, all protected components remain strictly below
  \(R_{\max}\), every accepted dyadic step has an inverse-polynomial lower
  bound in \(P\), and the total effect of all resets and final pruning obeys
  and is charged to
  \(B_{\mathrm{refresh}}\le20\|T\|_F P^{-59}\).

  More precisely, prove that there are fixed positive integers
  \(d_{\mathrm{dec}},d_{\mathrm{PL}},d_{\mathrm{step}}\), an explicitly
  defined nonnegative reset-budgeted Lyapunov function \(\mathcal L\), an
  explicitly defined reachable tube \(\mathcal U_{\mathrm{reach}}\), and an
  explicitly defined same-target regular active chart
  \(\mathcal C_{\mathrm{act}}\subseteq\mathcal U_{\mathrm{reach}}\), all
  depending only on the displayed protocol and realized instance, such that
  every generated state lies in \(\mathcal U_{\mathrm{reach}}\) and the
  following epochwise certificate holds. Before
  \(\mathcal C_{\mathrm{act}}\) is reached, each completed burn-in epoch
  either promotes, under a derived injective channel assignment, a
  residual-correlated representative for a previously unresolved target
  channel, or satisfies
  \[
  \mathcal L_{\mathrm{next}}
  \le\mathcal L_{\mathrm{current}}
  -\|T\|_F^2P^{-d_{\mathrm{dec}}}
  \]
  after charging that epoch's refresh defect. By at most \(S\) epochs or
  \(M\) promotions, the protected components contain a noncancelling
  representative system for all \(r\) target channels and the post-pruning
  protected state lies in \(\mathcal C_{\mathrm{act}}\). On that chart,
  \[
  \|\nabla_{\mathrm{prot}}F\|_F^2
  \ge2P^{-d_{\mathrm{PL}}}F,
  \]
  the accepted protected-only step satisfies
  \(\lambda\ge P^{-d_{\mathrm{step}}}\), and the chart is preserved until
  the requested residual is reached.

  Derive from the primitive instance and tape laws, rather than assume, the
  simultaneous per-channel proposal anti-concentration, first-update
  homogeneous cubic growth, sequential residual diversity, off-span leakage
  control, protected-component persistence, competition and cancellation
  bounds, cap inactivity, reachable-tube membership, same-target chart entry,
  and PL inequality. These outputs must give a noncircular producer-consumer
  chain from the finite tape and smoothed instance through promotion and
  pruning to protected-only refinement. No landscape assertion is required
  for cancelling or partially active configurations outside
  \(\mathcal U_{\mathrm{reach}}\).

  Finally, after the fixed burn-in horizon \(SH\), or earlier termination at
  \(M\) promotions, prove that protected-only refinement needs at most
  \(Q_{\mathrm{ref}}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\) additional
  iterations, for an explicit polynomial \(Q_{\mathrm{ref}}\), and returns
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F.
  \]
  The tape size, \(SH\), work per iteration, and refinement horizon are
  polynomial in \(n,r,k,\kappa,\rho^{-1}\); after substituting
  \(k,\kappa,\rho^{-1}=\operatorname{poly}(r)\), total work is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\). The fixed quantities are
  \(c_0,c_\rho\) and the numerical protocol exponents and constants; all
  hidden constants and the fixed integers \(d_{\mathrm{dec}},
  d_{\mathrm{PL}},d_{\mathrm{step}}\) may depend only on those fixed
  quantities, not on \(n,r,k,\kappa,\rho,\epsilon\) or the chosen bases.
  The probability mode is high probability over the once-drawn instance
  followed by conditional high probability over one finite tape, the horizon
  mode is finite burn-in plus finite refinement, and the norm mode is the
  Frobenius residual. There is no restart, no post-burn-in refresh, and no
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
  Progress type is `conditional`. The failure-justified semantic delta
  from the prior branch is exactly the balanced homogeneous factor gauge, the
  finite pre-sampled refresh/promotion/cap/Armijo protocol, and the restriction
  of landscape claims to a tube produced by that protocol. Homogeneity restores
  the genuine cubic injection at a joint-zero component, scheduled refresh
  moves that component, and the reachable scope makes no false full-domain
  assertion at cancelling configurations. The end-to-end exact-recovery and
  \(\epsilon\downarrow0\) baseline is retained without a remainder or restart.

  Materiality comes from crossing the quadratic rank threshold on the same
  checkable smoothed class while sequentially reusing \(k=o(r^2)\) live probes
  instead of invoking a quadratic one-round span, algebraic initializer, or
  external restart. The explicit-rate variables are
  \(n,r,k,\kappa,\rho,\epsilon\), the fixed quantities are
  \(c_0,c_\rho\) and numerical protocol constants, the probability modes are
  the separate instance and tape events, the horizon is fixed burn-in plus
  logarithmic refinement, and the metric is relative Frobenius error.

  Assumption support is as follows. `assump:base-conditioning` and the
  Khatri--Rao interfaces are inherited from the source prose and *Guarantees
  for Alternating Least Squares in Overparameterized Tensor Decompositions*.
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:accuracy-range` come
  from the source smoothed model and requested theorem regime.
  `assump:base-kr-isometry` is the same novel primitive condition as
  in the prior branch, verified on orthogonal-mode, incoherent-dense-frame, and
  complementary-block examples; `assump:perturbation-margin` is
  checkable on each whenever \(\rho\le10^{-3}\kappa^{-6}\).
  `assump:rank-regime` is the approved \(c=\beta=1/2\) probe budget.
  `assump:random-tape` uses the standard Haar law and finite
  pre-sampling equivalence, while small homogeneous initialization and periodic
  refresh are literature-derived from *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*.

  Tensor-preserving balancing and capped Armijo backtracking are standard gauge
  and descent-globalization operations. One-at-a-time residual-score promotion,
  final probationary pruning, and the reset-budget interface are novel
  example-verified mechanisms: for \(r=1\), the score is the exact radial
  derivative and a positively correlated random triple has cubic first growth;
  for modewise orthogonal tensors, removing one protected channel from the
  residual forces sequential channel diversity; and for cyclic Khatri--Rao
  near-isometric frames, the same score identities have operator-norm defects
  at most \(1/32\), to be dominated by the displayed \(P^{-30}\) threshold and
  \(P^{-59}\) refresh budget. The boundary checks are explicit: joint zero is
  moved by refresh, a one-factor-zero triple is balanced to joint zero, active
  cancellation is outside the claimed tube unless excluded by the derived
  signed potential, and a fresh tape entry is handled by anti-concentration.
  Realized good-instance controls, tape coverage, cubic growth, diversity,
  noncancellation, persistence, cap inactivity, reachable-tube membership,
  chart entry, PL geometry, convergence, and stopping are not assumptions.
