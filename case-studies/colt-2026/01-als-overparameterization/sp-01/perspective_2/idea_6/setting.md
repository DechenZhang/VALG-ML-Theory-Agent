# Formalized Setting

- Basic setup:
  **Source and realized tensor.** Fix integers \(n,r\ge 2\), a column-scale
  parameter \(\kappa\ge 1\), and deterministic matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\).
  For a matrix \(M=[m_1,\ldots,m_r]\) with nonzero columns define
  \[
  D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2),\qquad
  \widetilde M=MD_M^{-1},\qquad G_M=\widetilde M^\top\widetilde M.
  \]
  Put
  \[
  \bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2,
  \quad
  \nu_{\rm base}=\max_{M\in\{\bar A,\bar B,\bar C\}}
  \|G_M-I_r\|_{\rm op},
  \quad
  \nu_\star={1\over C_\nu r\log(2r)},
  \]
  where \(C_\nu\) is a fixed sufficiently large absolute constant.

  Independently over labels and modes, draw the Gaussian perturbations in
  `assump:gaussian-smoothing`, and denote the realized factor matrices by
  \(A,B,C\). For every realized nonzero column set
  \[
  m_{j,A}=\widetilde a_j={a_j\over\|a_j\|_2},\quad
  m_{j,B}=\widetilde b_j={b_j\over\|b_j\|_2},\quad
  m_{j,C}=\widetilde c_j={c_j\over\|c_j\|_2},
  \]
  \[
  \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \qquad
  \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},
  \qquad
  T=\sum_{j=1}^r\tau_j\phi_j.
  \]
  Write
  \[
  \gamma^M_{j\ell}=\langle m_{j,M},m_{\ell,M}\rangle,
  \qquad
  \nu_{\rm real}=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op},
  \]
  and let \(\Phi_\star:\mathbb R^r\to\mathbb R^{n\times n\times n}\)
  have columns \(\phi_j\). Thus
  \[
  \Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C.
  \]
  The realized nonvanishing, norm, Gram, product-weight, and exact-
  representation properties used below are outputs of the once-drawn event
  in the goal, not primitive assumptions.

  **Static weighted-leakage quantities.** For a label \(j\) define
  \[
  L_{A,j}=\sum_{\ell\ne j}\tau_\ell
  |\gamma^B_{\ell j}\gamma^C_{\ell j}|,
  \]
  with \(L_{B,j}\) and \(L_{C,j}\) defined cyclically. On the good-instance
  event, the proof must derive, rather than assume,
  \[
  L_{A,j}\le \tau_{\max}\nu_{\rm real}^2
  \le 2\Gamma_\star\tau_j\nu_{\rm real}^2,
  \tag{WL-A}
  \]
  and its two cyclic analogues. The first inequality is the
  Cauchy--Schwarz consequence of the two appropriate columns of
  \(G_M-I_r\); the second uses the realized product-weight ratio. These
  labelwise inequalities, rather than a factor-scale bound of the form
  \(\kappa^6\nu_{\rm real}^2\), are the static source for all later angular
  perturbation bounds.

  **Exact objective and balanced slots.** For algorithmic rank \(k\), let
  \(Q=(X,Y,Z)\) with slots \(q_i=(x_i,y_i,z_i)\), and define
  \[
  \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
  \qquad R(Q)=T-\Psi(Q),
  \qquad F(Q)={1\over2}\|R(Q)\|_F^2.
  \]
  The tensor-preserving balance map is
  \[
  {\cal B}(x,y,z)=
  \begin{cases}
  (gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
  (0,0,0),&\text{otherwise},
  \end{cases}
  \]
  where
  \[
  g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3},\qquad
  u={x\over\|x\|_2},\quad v={y\over\|y\|_2},\quad
  w={z\over\|z\|_2}.
  \]
  Hence a nonzero balanced slot is written
  \(q_i=(g_i u_i,g_i v_i,g_i w_i)\) with \(g_i>0\) and unit directions,
  while a partial-zero slot is mapped to joint zero. The exact balanced
  target slots are
  \[
  q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
  \tau_j^{1/3}m_{j,C}),\qquad j\in[r].
  \]
  Together with \(k-r\) joint-zero slots they represent \(T\) exactly.
  This is the baseline target of the terminal phase, not an initializer
  available to the algorithm.

  **Protected state and a full-space transaction.** A discovery state has a
  protected index set \(I\subset[k]\), \(|I|<r\), balanced protected slots,
  and joint-zero slots outside \(I\). Protected slots are frozen throughout
  a transaction. Define their actual residual
  \[
  R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  One unused slot is the scratch slot. For
  \(q=(gu,gv,gw)\), with \((u,v,w)\in{\cal S}:=(\mathbb S^{n-1})^3\),
  define
  \[
  f_I(g,u,v,w)={1\over2}\|R_I-g^3u\otimes v\otimes w\|_F^2,
  \quad
  s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle,
  \]
  \[
  d_I(g,u,v,w)=s_I(u,v,w)-g^3,
  \qquad
  \partial_g f_I=-3g^2d_I,
  \]
  and the observable capture
  \[
  \Delta F_I(q)=f_I(0)-f_I(q)=g^3s_I-{1\over2}g^6.
  \]
  Every scratch seed is sampled on the full ambient spheres. Every radial,
  angular-gradient, and negative-curvature trial is likewise unprojected
  relative to the protected slots. The only angular retraction is the usual
  per-mode normalization back to its own sphere and is independent of \(I\).
  No protected-span projector, Gram--Schmidt step, oblique projection, or
  protected-dependent retraction is defined or used.

  For \(u_A=u,u_B=v,u_C=w\), define the observable separation statistic
  \[
  {\sf Sep}(q;I)=
  \begin{cases}
  \displaystyle\max_{i\in I}\max_{M\in\{A,B,C\}}
  |\langle u_M,u_{i,M}\rangle|,&I\ne\varnothing,\\
  0,&I=\varnothing.
  \end{cases}
  \]
  Separation is only a commit-time accept/reject test; it never changes a
  scratch or protected direction.

  **Radial/angular certificate.** The tangent space of \({\cal S}\) is
  \(u^\perp\times v^\perp\times w^\perp\). Let
  \(\operatorname{grad}_{\cal S}f_I\) and
  \(H_{\rm ang}=\operatorname{Hess}_{\cal S}f_I\) denote the Riemannian
  gradient and Hessian of the angular map at fixed \(g\). Put
  \[
  N_I(g)=1+\|R_I\|_F+g^4,
  \quad
  e_{\rm ang}={\|\operatorname{grad}_{\cal S}f_I\|_2\over N_I(g)},
  \quad
  \widehat H_{\rm ang}={H_{\rm ang}\over N_I(g)},
  \]
  \[
  e_{\rm rad}={|g^3-s_I|\over
  \max\{s_I,g^3,\|R_I\|_FP^{-D_{\rm stat}}\}}.
  \]
  The theorem is to choose fixed positive proof exponents
  \(D_{\rm stat},D_{\rm gap},D_{\rm cap}\). The observable certificate
  \({\sf Cert}(q;I)\) consists exactly of
  \[
  0<g\le2R_{\max},\qquad s_I>0,\qquad
  e_{\rm rad}\le P^{-D_{\rm stat}},\qquad
  e_{\rm ang}\le P^{-D_{\rm stat}},
  \]
  \[
  \lambda_{\min}(\widehat H_{\rm ang})\ge P^{-D_{\rm gap}},
  \qquad
  \Delta F_I(q)\ge\|R_I\|_F^2P^{-D_{\rm cap}},
  \qquad
  {\sf Sep}(q;I)\le{1\over4}.
  \tag{Cert}
  \]
  The Hessian test is angular only: no radial direction and no full balanced
  tangent curvature is part of `(Cert)`. The certificate contains no target
  label, target factor, or coefficient vector of the full unresolved
  residual.

  **Finite-tape transactional protocol.** Put
  \[
  P=16nrk\kappa\rho^{-1},\qquad R_{\max}=8\kappa,
  \qquad a_{\rm seed}=\|T\|_FP^{-120},
  \qquad \delta=a_{\rm seed}^{1/3},
  \qquad \Delta_{\rm tr}=P^{-20}.
  \]
  The theorem is to exhibit fixed constants \(c_{\rm tx},d_{\rm tx}>0\)
  and a sufficiently large fixed \(C_{\rm tape}\), and to use
  \[
  H_{\rm tx}=\lceil P^{d_{\rm tx}}\rceil,
  \qquad
  N_{\rm tx}=\left\lceil C_{\rm tape}r(nr)^{c_{\rm tx}}
  \log(2r)\right\rceil.
  \]
  The tape consists of \(N_{\rm tx}\) independent triples of full-space
  Haar directions. At a protected state, the next unused triple
  \((u,v,w)\) is placed at radius \(\delta\); if its score is negative, a
  fixed one of its modes is sign-flipped, and a zero-score seed is declared
  unsuccessful.

  Keeping the directions fixed, unprojected radial trust-region Armijo steps
  bracket the unique positive root \(g^3=s_I\) and dyadic bisection resolves
  the bracket until the radial part of `(Cert)` holds. A missing root, a
  radius above \(2R_{\max}\), a guard violation, or exhaustion of the
  transaction budget causes failure. At a radial bracket the protocol takes
  full-product-sphere angular-gradient steps and re-solves the radial bracket
  after every accepted angular move. When \(e_{\rm ang}\) is small and
  \(\lambda_{\min}(\widehat H_{\rm ang})<-P^{-D_{\rm gap}}\), a deterministic
  approximate minimum-eigenvector routine returns a unit tangent direction
  with Rayleigh quotient at most \(-P^{-D_{\rm gap}}/2\); the protocol tests
  both signs at a trust-region scale and accepts the one with smaller exact
  trial loss if the Armijo/guard tests pass. A small-gradient state that is
  neither certified nor supplied with this negative-curvature witness is
  unsuccessful.

  A successful transaction commits the scratch slot without altering its
  directions and records its observable capture. Every unsuccessful
  transaction maps the scratch slot exactly to joint zero. Therefore the
  protected factor state, represented tensor, residual, and loss after a
  rollback equal their pre-transaction values exactly; failed probes create
  no persistent forcing or error-ledger entry. After a success, the next
  transaction uses another unused slot, while failed tape entries may reuse
  the same joint-zero scratch slot. All computations use only \(T\), the
  current factors and residual, factor inner products, gradients,
  Hessian-vector products, and the finite tape.

  Every gradient or negative-curvature trial uses dyadic trust-region Armijo
  backtracking on the exact loss, has factor displacement at most
  \(\Delta_{\rm tr}\), and remains in the radius guard. The proof must derive
  a fixed \(D_{\rm ls}>0\) such that each accepted nonstationary trial has
  step at least \(P^{-D_{\rm ls}}\). This lower bound and the strict decrease
  supplied by either the gradient or negative-curvature branch are derived
  globalization outputs, not trajectory assumptions.

  **Analysis-only matching and structured accepted-error ledger.** The
  following objects are the exact generated interface required from the
  discovery proof; they are not observable algorithm inputs and are not
  technical assumptions. A protected state must be matched by an injection
  \(\pi_I:I\to[r]\). Let
  \(U_I=[r]\setminus\pi_I(I)\). For every \(i\in I\), with
  \(j=\pi_I(i)\), the proof may choose signs
  \(\sigma_{i,A},\sigma_{i,B},\sigma_{i,C}\in\{\pm1\}\) whose product is
  \(+1\), and define
  \[
  e_{i,M}=\sigma_{i,M}u_{i,M}-m_{j,M},\qquad
  \delta_i={g_i^3\over\tau_j}-1,
  \qquad
  \eta_{\rm loc}=\Gamma_\star\nu_{\rm real}^2+P^{-D_{\rm stat}}.
  \]
  For two distinct target labels define the symmetric degree-two correlation
  weight
  \[
  \omega_{j\ell}=
  |\gamma^A_{j\ell}\gamma^B_{j\ell}|
  +|\gamma^A_{j\ell}\gamma^C_{j\ell}|
  +|\gamma^B_{j\ell}\gamma^C_{j\ell}|.
  \]
  The realized Gram margin directly gives
  \[
  \sum_{j\ne\ell}\omega_{j\ell}\le3\nu_{\rm real}^2
  \tag{Corr-2}
  \]
  by Cauchy--Schwarz. This symmetric weight allows cyclic mode couplings; it
  does not require an error in one mode to be proportional to that same
  mode's Gram entry.
  The generated labelwise ledger \({\sf Led}(I,\pi_I)\) must establish, for
  fixed absolute \(C_{\rm led}\),
  \[
  |\delta_i|+\max_M\|e_{i,M}\|_2\le C_{\rm led}\eta_{\rm loc},
  \qquad i\in I,
  \tag{Led-1}
  \]
  and, for every unresolved \(\ell\in U_I\) and every mode \(M\),
  \[
  |\langle e_{i,M},m_{\ell,M}\rangle|
  \le C_{\rm led}\bigl(
  \Gamma_\star\omega_{j\ell}+P^{-D_{\rm stat}}\bigr).
  \tag{Led-2}
  \]
  In particular, the total relative factor/radius charge is required to
  satisfy
  \[
  \Lambda_I:=\sum_{i\in I}
  \bigl(|\delta_i|+\max_M\|e_{i,M}\|_2\bigr)
  \le C_{\rm led}|I|\eta_{\rm loc}.
  \tag{Led-3}
  \]
  Because \(|I|\le r\) and \(\nu_{\rm real}\le2\nu_\star\) on the target
  event, this is a derived
  \(O(r\Gamma_\star\nu_{\rm real}^2+rP^{-D_{\rm stat}})\) finite ledger,
  not an all-time global Frobenius-error assumption.

  To preserve the labelwise tensor structure, define the exact accepted-slot
  error
  \[
  E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_j\phi_j,
  \qquad j=\pi_I(i),
  \]
  and, for an unresolved \(\ell\),
  \[
  {\cal L}_{I,A}(\ell)=
  \sum_{i\in I}E_i\mathbin{\times_2}m_{\ell,B}^\top
  \mathbin{\times_3}m_{\ell,C}^\top,
  \]
  with \({\cal L}_{I,B}(\ell)\) and
  \({\cal L}_{I,C}(\ell)\) defined cyclically. The proof must retain the
  expansion underlying `(Led-1)`--`(Led-2)` and derive
  \[
  \|{\cal L}_{I,A}(\ell)\|_2
  \le C_{\rm str}\sum_{i\in I}\tau_{\pi_I(i)}
  \left[
  \Gamma_\star\omega_{\pi_I(i),\ell}
  +P^{-D_{\rm stat}}
  \right],
  \tag{Led-4}
  \]
  and the cyclic analogues, for a fixed absolute \(C_{\rm str}\). Thus an
  accepted-slot charge is not replaced by \(\|E_i\|_F\): its influence on
  a later target carries a degree-two correlation factor. The exact
  residual identity is
  \[
  R_I=\sum_{\ell\in U_I}\tau_\ell\phi_\ell-\sum_{i\in I}E_i.
  \tag{Led-5}
  \]
  Combining `(Led-4)` with Cauchy--Schwarz and the realized weight balance is
  a named proof obligation. The exponents must make the accumulated
  \(|I|P^{-D_{\rm stat}}\) term subordinate to the displayed static margin.
  No full-residual coefficient vector and no full-\(\beta\) purity property
  is defined or required.

  A certificate-to-label theorem must show that every separated certificate
  at a state satisfying the previously generated ledger has a unique
  \(j_\star\in U_I\), extends \(\pi_I\) injectively, and supplies
  `(Led-1)`--`(Led-4)` for the new slot. In particular, a near copy of an
  already matched target must fail \({\sf Sep}\), while the distinct
  modewise-near-orthogonal target directions remain below the \(1/4\)
  threshold. This label assignment is analysis-only and may not be queried
  by the algorithm.

  **Terminal same-target chart.** Let \(I_{\rm fin}\) be the final set of
  \(r\) committed indices. After \(r\) commits, set all slots outside
  \(I_{\rm fin}\) jointly to zero, unfreeze the committed slots, and run
  joint unprojected balanced trust-region Armijo gradient descent on the
  exact objective, updating only \(I_{\rm fin}\).
  Discovery certificates, rollback, and separation tests are no longer used.
  Embed the exact target as the rank-\(k\) state
  \(Q^\star=(q_1^\star,\ldots,q_r^\star,0,\ldots,0)\), and let
  \({\cal Z}_\star\) be its finite orbit under all \(k\)-slot permutations
  and per-nonzero-component sign triples with product \(+1\). Distance to
  this orbit is Euclidean factor distance in the full rank-\(k\) state space
  after minimizing over those choices. Define
  \[
  {\cal C}_{\rm PL}(\varrho)=
  \left\{Q:\operatorname{dist}(Q,{\cal Z}_\star)\le\varrho,
  \ \max_{i,M}\|q_i^M\|_2\le2R_{\max},\
  q_i=0\text{ for every }i\notin I_{\rm fin}\right\}.
  \]
  Entry of the actual generally nonorthogonal committed tuple, a positive
  chart radius and PL constant, and invariance under the terminal updates are
  proof-produced conclusions. The exact orbit \({\cal Z}_\star\), rather
  than an orthogonalized or projected surrogate, is the chart reference.

- Technical assumptions:
  - `assump:base-column-conditioning` (Polynomial base-column scales): Every
    base column is nonzero and
    \[
    \kappa^{-1}\le\|\bar a_j\|_2,\|\bar b_j\|_2,
    \|\bar c_j\|_2\le\kappa,
    \qquad 1\le\kappa\le r^{c_0},
    \]
    for a fixed \(c_0>0\).
  - `assump:base-product-balance` (Balanced CP-product weights): For a fixed
    absolute \(\Gamma_\star\ge1\),
    \[
    {\max_j\bar\tau_j\over\min_j\bar\tau_j}\le\Gamma_\star.
    \]
    Individual mode norms need not be comparable across labels; reciprocal
    polynomial rescalings between modes are allowed subject to this product
    condition.
  - `assump:gaussian-smoothing` (Independent source perturbations):
    Independently over \(j\in[r]\) and the three modes,
    \[
    a_j-\bar a_j,\quad b_j-\bar b_j,\quad c_j-\bar c_j
    \sim {\cal N}(0,\rho^2I_n/n).
    \]
  - `assump:dimension-regime` (Ambient dimension):
    \(n\ge C_{\rm dim}r\log(2r)\) for a fixed sufficiently large absolute
    \(C_{\rm dim}\).
  - `assump:smoothing-scale` (Inverse-polynomial perturbation scale):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\) for a fixed
    \(c_\rho>0\).
  - `assump:modewise-gram-margin` (Base-to-realized normalized Gram margin):
    For the fixed constants above and a fixed sufficiently large absolute
    \(C_{\rm sm}\),
    \[
    \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
    \le\nu_\star={1\over C_\nu r\log(2r)}.
    \]
    This is a primitive condition on the deterministic base and smoothing
    scale. The realized Gram bound and every dynamic leakage bound remain
    derived.
  - `assump:rank-regime` (Strictly subquadratic algorithmic rank):
    \[
    k=U(r)=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
    \qquad r<k<r^2,
    \]
    for a fixed sufficiently large \(C_{\rm rank}\) and every
    \(r\ge r_0(C_{\rm rank})\).
  - `assump:random-tape` (One independent finite full-space Haar tape):
    Conditional on the once-drawn realized instance, the \(N_{\rm tx}\)
    seed triples are mutually independent, each is Haar on
    \((\mathbb S^{n-1})^3\), and the tape is independent of the instance.
    This is the complete algorithmic randomness; subsequent transaction
    operations are deterministic functions of the current state and the
    next unused tape entry.
  - `assump:accuracy-range` (Relative Frobenius tolerance):
    \(0<\epsilon<1\). If the observed tensor is exactly zero, the algorithm
    returns the all-zero state before defining \(a_{\rm seed}\).

# Formalized Goal

- Goal statement:
  Prove, in target-spec mode, one `material_partial` separation-gated,
  unprojected reachable-landscape and trajectory theorem uniformly over every
  deterministic base triple satisfying the technical assumptions. First
  construct a once-drawn event \({\cal E}_{\rm inst}\) with
  \[
  \mathbb P_{\rm inst}({\cal E}_{\rm inst})\ge1-r^{-10}
  \]
  on which all realized columns are nonzero,
  \[
  (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,
  \qquad
  {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,
  \qquad
  \nu_{\rm real}\le2\nu_\star,
  \]
  the three pairwise Khatri--Rao Grams and the triple atom Gram obey
  \[
  \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le{1\over16},
  \qquad
  \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le{1\over16},
  \]
  \[
  \sqrt{15/16}\|\tau\|_2\le\|T\|_F
  \le\sqrt{17/16}\|\tau\|_2,
  \qquad T\ne0,
  \]
  and the exact balanced \(r\)-slot representation lies inside the radius
  guard. Derive `(WL-A)` and its cyclic analogues on this event. None of
  these realized properties may be added as a primitive assumption.

  Conditional on a fixed \(T\in{\cal E}_{\rm inst}\), begin from
  \(I=\varnothing\), for which the empty injection and empty ledger hold.
  Prove a robust current-residual angular-landscape lemma: at every
  proof-generated protected state satisfying \({\sf Led}(I,\pi_I)\), every
  full-space scratch state satisfying `(Cert)` is, up to a product-one sign
  triple, an
  \(O(\Gamma_\star\nu_{\rm real}^2+P^{-D_{\rm stat}})\) direction and radius
  perturbation of exactly one unresolved realized target atom. The lemma must
  use the static weighted-leakage inequalities and the structured contracted
  ledger, not a global Frobenius bound or full-residual coefficient purity.
  It must prove that the \(1/4\) separation gate excludes every previously
  matched label while permitting the distinct target, and it must export the
  unique new label, relative radius accuracy, `(Led-1)`--`(Led-4)`, and the
  extended injection. This proves the ledger induction through all \(r\)
  commits rather than assuming any trajectory event.

  Under the same generated-state interface, prove that one fresh full-space
  Haar transaction reaches `(Cert)` within \(H_{\rm tx}\) work with the
  history-uniform conditional probability
  \[
  \mathbb P_{\rm tape}(\text{next transaction commits}\mid
  T,\text{ protected history})\ge p_{\rm tx}:=(nr)^{-c_{\rm tx}}.
  \]
  This reachability proof must cover radial activation and bracketing,
  angular-gradient descent, approximate negative-curvature escape, the
  capture threshold, the separation test, all ambiguous/guard boundary
  outcomes, and the inverse-polynomial accepted-step bound. Prove exact
  rollback for every failure. Then use the finite independent tape and the
  derived injection to obtain all \(r\) distinct commits with
  \[
  \mathbb P_{\rm tape}(\text{all \(r\) commits}\mid T)
  \ge1-r^{-10}.
  \]
  Discovery work must be polynomial in
  \(n,r,k,\kappa,\rho^{-1}\), with no dependence on \(\epsilon\).

  After the final commit, prove that the actual generally nonorthogonal
  committed tuple lies in a same-target chart
  \({\cal C}_{\rm PL}(\varrho_{\rm PL})\) with proof-produced constants
  \[
  \varrho_{\rm PL}\ge P^{-D_{\rm PL}},\qquad
  \mu_{\rm PL}\ge P^{-D_{\rm PL}}>0
  \]
  for a fixed \(D_{\rm PL}>0\), and that throughout this chart the joint
  balanced gradient satisfies
  \[
  \|\operatorname{grad}_{\rm bal}F(Q)\|_F^2
  \ge2\mu_{\rm PL}F(Q).
  \]
  Prove first-exit invariance of this chart under the joint unprojected
  trust-region Armijo updates and, for every \(0<\epsilon<1\), produce a
  rank-\(k\) iterate satisfying
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F.
  \]
  Terminal work must be
  \(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\); after
  substituting `assump:rank-regime`, `assump:base-column-conditioning`, and
  `assump:smoothing-scale`, total work is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\). There is no additive error
  floor: failed probes vanish by exact rollback, unused slots are joint zero,
  accepted discovery errors are only the terminal initialization error, and
  the unprojected PL phase converges toward the exact same-target orbit.

  The probability statements remain separate: at least \(1-r^{-10}\) over
  the once-drawn instance, and, conditional on every fixed good instance, at
  least \(1-r^{-10}\) over the finite tape. The horizon is finite discovery
  followed by a finite \(\log(1/\epsilon)\) terminal horizon, and the target
  norm is Frobenius. Exposed variables are
  \(n,r,k,\kappa,\rho,\Gamma_\star,P,\epsilon\) and the displayed fixed
  protocol exponents and thresholds. Hidden constants and polynomial degrees
  may depend only on the fixed class constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\)
  and fixed Armijo/protocol constants, and not on
  \(n,r,k,\kappa,\rho,\epsilon\) or the realized instance. The conclusion is
  explicitly limited to balanced-product-weight, modewise-near-orthogonal
  smoothed tensors and the stated sequential transactional algorithm;
  arbitrary bases, unbalanced CP-product weights, and simultaneous all-slot
  gradient descent remain open.

# Note

- Rigor:
  Parent foundation papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*. Transfer map: preserve the
  asymmetric exact CP least-squares objective, independent source Gaussian
  smoothing, homogeneous balancing, finite random-tape accounting,
  strictly-subquadratic rank, separate probability modes, and the no-floor
  relative-error endpoint. Replace idea_5's protected-complement projection
  by full-space unprojected transactions and the observable separation gate;
  replace its unsupported factor-scale leakage with balanced CP-product
  weights, `(WL-A)`, and the structured labelwise ledger. Radial activation,
  angular-only certification, exact rollback, and local joint refinement are
  retained. No orthogonalized surrogate or full-\(\beta\) purity object is
  imported.

  Source alignment: the exact asymmetric source loss, independent Gaussian
  smoothing, random initialization with polynomial tape amplification,
  \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, separate
  instance/tape probabilities, and arbitrary relative Frobenius accuracy are
  preserved. The explicit balanced-product-weight and modewise-near-
  orthogonal base class is a target-changing narrowing; arbitrary bases and
  unbalanced product weights remain unresolved. Progress type:
  `material_partial`. Materiality: the target is a strictly subquadratic
  iterative theorem on a nontrivial smoothed asymmetric class, while its
  unprojected commits retain the true nonzero target correlations and its
  primitive product-weight balance removes the strong/weak leakage family
  that invalidated idea_5.

  Assumption support: `assump:base-column-conditioning`,
  `assump:gaussian-smoothing`, `assump:dimension-regime`, and
  `assump:smoothing-scale` are inherited from the source smoothed CP model;
  `assump:rank-regime` is the approved strictly subquadratic rank target;
  `assump:random-tape` is the explicit full-space Haar initialization law;
  and `assump:accuracy-range` is the source relative-error interface.
  `assump:base-product-balance` and `assump:modewise-gram-margin` are the
  approved narrowed source conditions, verified in the recorded examples:
  orthogonal normalized equal-weight factors; two targets with a common
  nonzero correlation in all modes; reciprocal rescalings
  \((d_j,d_j^{-1},1)\) with \(d_j\in[\kappa^{-1},\kappa]\); and dense or
  block-correlated normalized frames with operator-norm Gram deviation at
  most \(\nu_\star\) and product weights in a fixed interval. Standard
  Gaussian norm/Gram concentration transfers these primitive base conditions
  to the stated realized event. The weighted leakage inequality is direct
  Cauchy--Schwarz. Exact radial bracketing and Armijo globalization are direct
  calculations; strict-saddle motivation comes from *Escaping From Saddle
  Points: Online Stochastic Gradient for Tensor Decomposition*, and component
  separation motivation from *Orthogonalized ALS: A Theoretically
  Principled Tensor Decomposition Algorithm for Practical Use*, but neither
  is used as a black-box theorem for this objective.

  Separation, certificate reachability, label assignment, `(Led-1)`--
  `(Led-5)`, all-commit amplification, chart entry, PL invariance, and the
  final accuracy bound are generated proof obligations. The algorithm never
  queries a true factor or label. The exact balanced target representation,
  pruning of unused scratch slots, and arbitrary-\(\epsilon\) same-target
  endpoint preserve the inherited baseline invariance obligation.
