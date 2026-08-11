# Formalized Setting

- Basic setup:
  **Source and realized instance.** Fix integers \(n,r\), a parameter
  \(\kappa\ge 1\), and deterministic matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\). For a
  matrix \(M\) with nonzero columns, let
  \(D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2)\),
  \(\widetilde M=MD_M^{-1}\), and \(G_M=\widetilde M^\top\widetilde M\).
  Define
  \[
  \mu_{\rm base}:=\max_{M\in\{\bar A,\bar B,\bar C\}}
  \|G_M-I_r\|_{\rm op}.
  \]
  The realized matrices \(A,B,C\) are obtained by independent Gaussian
  smoothing of the columns as specified in the technical assumptions. Put
  \[
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j,\qquad
  \widetilde a_j={a_j\over\|a_j\|_2},\quad
  \widetilde b_j={b_j\over\|b_j\|_2},\quad
  \widetilde c_j={c_j\over\|c_j\|_2},
  \]
  whenever the columns are nonzero, and
  \(\tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2\). Let
  \(\phi_j=\widetilde a_j\otimes\widetilde b_j\otimes\widetilde c_j\) and
  let \(\Phi_\star:\mathbb R^r\to\mathbb R^{n\times n\times n}\) be the
  linear map with columns \(\phi_j\). Set
  \[
  G_A=\widetilde A^\top\widetilde A,\quad
  G_B=\widetilde B^\top\widetilde B,\quad
  G_C=\widetilde C^\top\widetilde C,\quad
  G_\star=G_A\circ G_B\circ G_C,
  \]
  \[
  \Delta_{\rm pair}^{\rm real}:=\max\{
  \|G_A\circ G_B-I_r\|_{\rm op},
  \|G_A\circ G_C-I_r\|_{\rm op},
  \|G_B\circ G_C-I_r\|_{\rm op}\},\qquad
  \mu_{\rm real}:=\max_{M\in\{A,B,C\}}\|G_M-I_r\|_{\rm op}.
  \]
  These realized quantities, the column norm bounds, and nonvanishing of
  \(T\) are outputs of the instance event in the goal, not primitive
  assumptions.

  **Objective and balance.** For \(k\) algorithmic slots, write
  \(X=(x_1,\ldots,x_k)\), \(Y=(y_1,\ldots,y_k)\), and
  \(Z=(z_1,\ldots,z_k)\), and define
  \[
  \psi(x,y,z):=x\otimes y\otimes z,\qquad
  \Phi(X,Y,Z):=\sum_{i=1}^k\psi(x_i,y_i,z_i),
  \]
  \[
  R(X,Y,Z):=T-\Phi(X,Y,Z),\qquad
  F(X,Y,Z):={1\over2}\|R(X,Y,Z)\|_F^2.
  \]
  The tensor-preserving balance map is
  \[
  {\cal B}(x,y,z)=
  \begin{cases}
  g(x/\|x\|_2,y/\|y\|_2,z/\|z\|_2),
  &\|x\|_2\|y\|_2\|z\|_2>0,\\
  (0,0,0),&\text{otherwise},
  \end{cases}
  \qquad g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3}.
  \]
  Every nonzero slot consequently has three common norms \(g_i\), and a
  partial-zero slot is mapped to the joint-zero slot. A joint-zero injection
  at radius \(t\) in unit directions \((u,v,w)\) changes the represented
  tensor by \(t^3u\otimes v\otimes w\) and changes the loss by
  \(-t^3\langle R,u\otimes v\otimes w\rangle+t^6/2\). On the good-instance
  event, the balanced true slots
  \[
  q_j^\star=(\tau_j^{1/3}\widetilde a_j,
  \tau_j^{1/3}\widetilde b_j,\tau_j^{1/3}\widetilde c_j),\quad j\in[r],
  \]
  and \(k-r\) joint-zero slots represent \(T\) exactly.

  **Protected spans and a one-probe state.** A protected slot
  \(q_i=(x_i,y_i,z_i)\) is nonzero and balanced. Write its normalized
  directions as \(u_i^A,u_i^B,u_i^C\). For a protected set \(I\), define
  \[
  S_M(I)=\operatorname{span}\{u_i^M:i\in I\},\qquad
  \Pi_M^I=I_n-\operatorname{Proj}_{S_M(I)},\quad M\in\{A,B,C\}.
  \]
  The algorithm uses these projectors but never uses true factors or labels.
  While a probe is active, all nonprotected slots other than that one slot
  are jointly zero and frozen. A tape triple is projected and normalized in
  the three complements; a zero projected norm is skipped (it has probability
  zero while the complements are nontrivial). If \(q=(gu,gv,gw)\) is active,
  define
  \[
  R_I^0=T-\sum_{i\in I}\psi(q_i),\qquad
  R_I(q)=R_I^0-g^3u\otimes v\otimes w,\qquad
  F_I(q)={1\over2}\|R_I(q)\|_F^2.
  \]
  With \(R=R_I(q)\), set
  \[
  h_A=R\mathbin{\times_2}v^\top\mathbin{\times_3}w^\top,\quad
  h_B=R\mathbin{\times_1}u^\top\mathbin{\times_3}w^\top,\quad
  h_C=R\mathbin{\times_1}u^\top\mathbin{\times_2}v^\top,
  \]
  \[
  \alpha_A=\langle h_A,u\rangle,\quad
  \alpha_B=\langle h_B,v\rangle,\quad
  \alpha_C=\langle h_C,w\rangle,\quad
  s(q)=\langle R,u\otimes v\otimes w\rangle.
  \]
  The three scalar contractions equal \(s(q)\) algebraically, but the three
  vector tests below remain separate.

  **Observable certificate.** For a fixed integer \(D_{\rm cert}\) specified
  below, let
  \[
  P=16nrk\kappa\rho^{-1},\quad R_{\max}=8\kappa,\quad
  a_{\rm seed}=\|T\|_F P^{-120},\quad
  a_{\rm cert}=\|T\|_F P^{-D_{\rm cert}},
  \]
  \[
  \delta=a_{\rm seed}^{1/3},\quad \theta=a_{\rm cert}^{1/3},\quad
  \Delta_{\rm tr}=P^{-20}\min\{1,\theta\},
  \]
  and
  \[
  \zeta_{\rm cert}={8\over100r\log(2r)},\qquad
  \gamma_{\rm cert}=P^{-20},\qquad
  \sigma_{\rm cert}=\|T\|_F P^{-40}.
  \]
  The event \({\sf Cert}(q;I)\) requires \(g\in[\theta,2\theta]\),
  \(s(q)\ge\sigma_{\rm cert}\), \(|\alpha_M|\ge\sigma_{\rm cert}\) for all
  \(M\), \(\alpha_A\alpha_B>0\), \(\alpha_A\alpha_C>0\), and
  \[
  \zeta(q;I):=\max_{M\in\{A,B,C\}}
  {\|(I-u_Mu_M^\top)h_M\|_2\over|\alpha_M|}
  \le\zeta_{\rm cert}.
  \]
  Let
  \[
  {\cal T}_{\rm bal}(q)=\{(\xi_A,\xi_B,\xi_C):
  \langle\xi_A,u\rangle=\langle\xi_B,v\rangle
  =\langle\xi_C,w\rangle\}
  \]
  intersected with the protected complements, and let \(H_{\rm tan}(q;I)\)
  be the Hessian of \(F_I\) restricted to this tangent space. Define
  \[
  \widehat H_{\rm tan}(q;I)=
  {H_{\rm tan}(q;I)\over1+\|R_I(q)\|_F+g^4}.
  \]
  The certificate also requires
  \(\lambda_{\min}(\widehat H_{\rm tan}(q;I))\ge\gamma_{\rm cert}\).
  Thus it is a current-residual, current-factor, and protected-projector
  test; it is not a purity or target-label assumption.

  With \(R=R(X,Y,Z)\), the full objective gradients used by the protocol are
  \[
  \nabla_{x_i}F=-R\mathbin{\times_2}y_i^\top\mathbin{\times_3}z_i^\top,\quad
  \nabla_{y_i}F=-R\mathbin{\times_1}x_i^\top\mathbin{\times_3}z_i^\top,\quad
  \nabla_{z_i}F=-R\mathbin{\times_1}x_i^\top\mathbin{\times_2}y_i^\top.
  \]

  **Trust-region Armijo step.** For an updated set \(J\) (one active slot
  during a probe, or the protected set after certification), let \(m=|J|\),
  \(r_s=\|R(X,Y,Z)\|_F\), and
  \[
  q_i^A=x_i,\quad q_i^B=y_i,\quad q_i^C=z_i,\qquad
  b_s=1+\max_{i\in I\cup J,\,M\in\{A,B,C\}}\|q_i^M\|_2,\qquad
  \bar b_s=b_s+\Delta_{\rm tr},
  \]
  \[
  G_{\rm box}(s,J)=\sqrt{3m}\,\bar b_s^2(r_s+m\bar b_s^3),
  \]
  \[
  L_{\rm loc}(s,J)=3m\bar b_s^4+
  6\sqrt m\,\bar b_s(r_s+m\bar b_s^3).
  \]
  For projected gradients \(\nabla_J^{\rm proj}F\), use the dyadic ceiling
  \[
  \lambda_{\rm cap}(s,J)=\min\{(8L_{\rm loc}(s,J))^{-1},
  \Delta_{\rm tr}/(2\|\nabla_J^{\rm proj}F(s)\|_F+2)\}.
  \]
  With \(Q=(q_i^A,q_i^B,q_i^C)_{i=1}^k\), a trial
  \(\lambda=2^{-d}\lambda_{\rm cap}\) applies
  \[
  q_i^+={\cal B}\bigl(q_i-\lambda(\Pi_A^I\nabla_{x_i}F,
  \Pi_B^I\nabla_{y_i}F,\Pi_C^I\nabla_{z_i}F)\bigr),\quad i\in J,
  \]
  freezes all other slots, and is accepted only if the relevant radius cap,
  the displacement bound \(\|Q^+-Q\|_F\le\Delta_{\rm tr}\), and
  \[
  F(Q^+)\le F(Q)-{\lambda\over4}\|\nabla_J^{\rm proj}F(Q)\|_F^2
  \]
  all hold. On the guarded box \(B_\star=2R_{\max}+2\), put
  \(R_\star=\|T\|_F+kB_\star^3\) and
  \[
  G_{\rm box}^\star=\sqrt{3k}B_\star^2R_\star,\qquad
  L_{\rm box}^\star=3kB_\star^4+6\sqrt{k}B_\star R_\star.
  \]
  The exported line-search obligation is
  \[
  \lambda_{\rm acc}\ge
  \min\{(16L_{\rm box}^\star)^{-1},
  \Delta_{\rm tr}/(4G_{\rm box}^\star)\}.
  \]

  **Sequential probes, tape, and reserve.** Fix an integer \(D_{\rm cert}\)
  large enough for the probe/restart exponents and below \(120\), so
  \(a_{\rm seed}\le a_{\rm cert}\). Let
  \(H_{\rm probe}=\lceil P^{d_{\rm probe}}\rceil\) and
  \(N_{\rm probe}=\lceil C_{\rm probe}r\log(2r)\rceil\), with fixed positive
  \(d_{\rm probe},C_{\rm probe}\), and set
  \[
  N_{\rm rst}=\lceil8(nr)^{c_{\rm cert}}\log(2r)\rceil.
  \]
  One run pre-samples blocks
  \({\cal T}_b=\{(u_{b\ell},v_{b\ell},w_{b\ell}):
  1\le\ell\le N_{\rm probe}\}\), \(1\le b\le N_{\rm rst}\), all mutually
  independent Haar triples and independent of the instance. Initially all
  slots are zero. For a probe, exactly one fresh projected triple is seeded at
  radius \(\delta\), is updated alone for at most \(H_{\rm probe}\) accepted
  steps, and is kept below radius \(2\theta\). The first state satisfying
  \({\sf Cert}\) is promoted and added to the protected spans. If no certificate
  occurs, the active slot is set jointly to zero and the next probe is used.
  A block can contain several promotions; after its \(N_{\rm probe}\) probes the
  next independent block is consumed. After \(r\) promotions, all scratch
  slots are pruned to zero, the projections are removed, and only protected
  slots are updated. There is no simultaneous probationary update, clear-only
  interval, or global-largest-score comparison.

  During a failed probe the active tensor has norm at most \(8a_{\rm cert}\);
  hence, including reseeding, the per-block discard reserve and total reserve
  obey
  \[
  B_{\rm probe}\le C_{\rm probe}N_{\rm probe}a_{\rm cert},\qquad
  B_{\rm tape}\le N_{\rm rst}B_{\rm probe}.
  \]
  \(D_{\rm cert}\) is chosen so that \(B_{\rm tape}/\|T\|_F\) is
  inverse-polynomial. These are deterministic accounting bounds, not
  assumptions about a successful trajectory.

  **Analysis-only purity and span statements.** A proof of a certificate must
  construct an injective analysis map \(\pi:I\to[r]\); the algorithm never
  receives \(\pi\). For \(U_I=[r]\setminus\pi(I)\), let
  \(\Phi_{\star,U_I}\) and \(G_{U_I}=\Phi_{\star,U_I}^*\Phi_{\star,U_I}\) be
  the restricted atom map and Gram, and define
  \[
  d_{U_I}(q)=G_{U_I}^{-1}\Phi_{\star,U_I}^*(u\otimes v\otimes w),\qquad
  \beta_{U_I}(I)=G_{U_I}^{-1}\Phi_{\star,U_I}^*R_I^0.
  \]
  The certificate-to-purity bridge is a derived obligation: there is a unique
  \(j_\ast\in U_I\) for which
  \[
  \|d_{U_I\setminus\{j_\ast\}}(q)\|_2
  \le C_{\rm pur}(\zeta_{\rm cert}+\mu_{\rm real})|d_{j_\ast}(q)|,
  \]
  \[
  \|\beta_{U_I\setminus\{j_\ast\}}(I)\|_2
  \le C_{\rm pur}(\zeta_{\rm cert}+\mu_{\rm real})|\beta_{j_\ast}(I)|.
  \]
  The same proof must show, for every unresolved \(j\in U_I\) and every mode,
  \[
  \|(I-\Pi_M^I)\widetilde m_j\|_2
  \le C_{\rm span}(\zeta_{\rm cert}+\mu_{\rm real}),\qquad
  \|\Pi_M^I\widetilde m_j\|_2
  \ge1-C_{\rm span}(\zeta_{\rm cert}+\mu_{\rm real}).
  \]
  These purity, target-map, and span properties are proof outputs rather than
  technical assumptions.

  **Terminal chart.** Let \({\cal Z}_{\rm bal}(T)\) be the set of \(r\)
  balanced protected triples with radii below \(R_{\max}\) and tensor sum
  \(T\), and measure distance modulo component permutation and the
  tensor-preserving three-sign gauge. The terminal phase is the corresponding
  same-target chart \({\cal C}_{\rm PL}\), with inverse-polynomial radius and
  PL constant supplied by the proof; scratch slots remain zero and no probe
  reserve enters this phase.

- Technical assumptions:
  - assump:base-column-conditioning (Polynomially bounded base columns): Every column of each base matrix is nonzero and has norm in \([\kappa^{-1},\kappa]\), with \(1\le\kappa\le r^{c_0}\) for fixed \(c_0>0\).
  - assump:modewise-near-orthogonality (Source modewise incoherence): \(\mu_{\rm base}\le[200r\log(2r)]^{-1}\).
  - assump:gaussian-smoothing (Source Gaussian perturbations): Independently over columns and modes,
    \[
    a_j-\bar a_j,\ b_j-\bar b_j,\ c_j-\bar c_j
    \sim{\cal N}(0,\rho^2I_n/n).
    \]
  - assump:dimension-regime (Ambient dimension): \(r\ge2\) and \(n\ge C_{\rm dim}r\log(2r)\), for fixed \(C_{\rm dim}>0\).
  - assump:smoothing-scale (Inverse-polynomial smoothing): \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\), for fixed \(c_\rho>0\).
  - assump:smoothing-margin (Base-to-realized Gram margin): For fixed absolute \(C_{\rm sm}\),
    \(\mu_{\rm base}+C_{\rm sm}\rho\sqrt{\log(2r)}\le[100r\log(2r)]^{-1}\).
  - assump:rank-regime (Strictly subquadratic algorithmic rank):
    \[
    k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,\qquad r<k<r^2,
    \]
    with fixed sufficiently large \(C_{\rm rank}\).
  - assump:random-tape (One finite independent Haar tape): Conditional on the realized instance, all directions in the \(N_{\rm rst}\) blocks are mutually independent Haar draws, independent of the instance; all algorithmic randomness is in this tape.
  - assump:accuracy-range (Relative-error tolerance): \(0<\epsilon<1\). If \(T=0\), return the all-zero state before forming \(a_{\rm seed}\) or \(a_{\rm cert}\).

# Formalized Goal

- Goal statement:
  Prove the material-partial sequential certified reachable-landscape and
  trajectory theorem uniformly over the deterministic class in the technical
  assumptions. Under Gaussian smoothing, construct an event
  \({\cal E}_{\rm inst}\) with probability at least \(1-r^{-10}\) on which
  \[
  \mu_{\rm real}\le{1\over50r\log(2r)},\quad
  \Delta_{\rm pair}^{\rm real}\le{1\over32},\quad
  \|G_\star-I_r\|_{\rm op}\le{1\over32},
  \]
  \[
  (2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa,\quad
  \sqrt{31/32}\|\tau\|_2\le\|T\|_F\le\sqrt{33/32}\|\tau\|_2,
  \]
  \(T\ne0\), \(\max_j\tau_j^{1/3}\le2\kappa<R_{\max}\), and \(4\theta\le2R_{\max}\). The event must also give the exact balanced representation inside the protected cap and the guarded box used by the trust-region bounds.

  Conditional on every \(T\in{\cal E}_{\rm inst}\), prove that at every reachable
  protected state with unresolved targets a fresh block has probability at
  least \(p_{\rm cert}\ge(nr)^{-c_{\rm cert}}\) of producing a first
  observable certificate within \(N_{\rm probe}\) probes and
  \(H_{\rm probe}\) steps per probe. A conditional coverage/coupon-collector
  argument over the displayed \(N_{\rm rst}\) independent blocks must produce
  \(r\) certified promotions with probability at least \(1-r^{-10}\). The
  proof must derive the unique unresolved target map, the two coefficient
  norm-purity inequalities, protected-span preservation, the finite reserve
  \(B_{\rm tape}\), and the accepted-step bound
  \[
  \lambda_{\rm acc}\ge\min\{(16L_{\rm box}^\star)^{-1},
  \Delta_{\rm tr}/(4G_{\rm box}^\star)\},
  \]
  rather than assuming any of these properties. No clear-only interval,
  all-candidate winner exclusion, signed-score substitute for norm purity, or
  fixed-\(\eta\) large-dimension implication is allowed.

  After the final promotion, prove entry into a same-target balanced chart
  \({\cal C}_{\rm PL}\) with inverse-polynomial radius and positive
  inverse-polynomial PL constant. The chart remains invariant under terminal
  unprojected trust-region Armijo descent, and for every \(0<\epsilon<1\) the
  first terminal iterate with
  \[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le\epsilon\|T\|_F
  \]
  is reached in \({\rm poly}(n,r,\rho^{-1},\kappa)\log(1/\epsilon)\) work.
  The final protected-only recurrence has no additive approximation floor:
  the finite probe reserve is removed by pruning and does not enter the PL
  recurrence. The conclusion is explicitly partial and leaves arbitrary or
  merely well-conditioned non-orthogonal bases and simultaneous all-slot
  gradient descent open.

# Note

- Rigor:
  Parent foundation papers: *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Beyond Lazy Training for
  Over-parameterized Tensor Decomposition*. Transfer map: retain the first
  paper's asymmetric CP least-squares, Gaussian-smoothed instance,
  relative-error, and probability interfaces, and retain the second paper's
  homogeneous balancing and small-start dynamics while replacing simultaneous
  refresh/promotion by sequential projected probes and replacing a fixed step
  scale by observable trust-region backtracking.

  Source alignment: This target-spec formalization preserves the approved
  source objective,
  Gaussian smoothing, modewise-near-orthogonal special case, sequential
  single-probe certificate protocol, \(k=O(r^{3/2}\log^2r)=o(r^2)\), finite
  restart tape, separate instance/tape probabilities, polynomial runtime, and
  exact arbitrary relative-error target. Numerical exponents for the
  certificate-to-chart and terminal PL lemmas are intentionally left as
  proof-produced inverse-polynomial quantities. Progress type:
  material_partial. Materiality is the new dynamic
  feature-discovery mechanism rather than an algebraic initializer or a raw
  global winner. Base-column conditioning, Gaussian smoothing, dimension and
  smoothing regimes, and the CP least-squares conventions follow the source
  literature; the modewise incoherence condition is the approved
  source-mentioned orthogonal/incoherent restriction.

  Assumption support is mapped as follows: assump:base-column-conditioning,
  assump:gaussian-smoothing, assump:dimension-regime, and
  assump:smoothing-scale are inherited from the source smoothed CP model;
  assump:modewise-near-orthogonality is the approved special case and is
  directly checked by orthogonal, incoherent dense, and complementary block
  examples; assump:smoothing-margin is checked on those examples by the
  displayed Gaussian perturbation bound; assump:rank-regime is the approved
  \(r^{3/2}\log^2 r\) protocol budget; assump:random-tape is the explicit
  Haar initialization law; and assump:accuracy-range is the source
  relative-error interface. The rank, finite Haar tape, balancing,
  trust-region guards, certificate, purity transfer, span transfer, and PL
  chart are protocol definitions or derived obligations. In particular, no
  certificate purity, target label, basin membership, span invariant, or
  convergence property has been promoted to a technical assumption.
