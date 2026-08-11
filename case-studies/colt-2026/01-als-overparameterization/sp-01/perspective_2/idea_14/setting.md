# Formalized Setting

- Basic setup:
  Let \([m]=\{1,\ldots,m\}\), let the three modes be \(M\in\{A,B,C\}\), and
  identify each mode with \(\mathbb R^n\).  Put
  \(d=\lceil C_d\log(2r)\rceil\).  For every mode there is a public family of
  pairwise disjoint coordinate blocks
  \(\mathcal P^M=(P^M_1,\ldots,P^M_r)\), each of cardinality \(d\), and an
  (possibly empty) complement \(P^M_0=[n]\setminus\bigcup_{s=1}^rP^M_s\).
  Let \(\Pi^M_s\) be the coordinate projector onto \(P^M_s\), and for
  \(\alpha=(s_A,s_B,s_C)\in[r]^3\) write
  \(\Pi_\alpha=\Pi^A_{s_A}\otimes\Pi^B_{s_B}\otimes\Pi^C_{s_C}\).  The blocks are public;
  the permutations and the source columns below are not supplied to the
  algorithm.

  Let \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) be deterministic source matrices, and
  write \(\bar m_{j,A}=\bar a_j,\bar m_{j,B}=\bar b_j,\bar m_{j,C}=\bar c_j\).
  For each mode \(M\), there is an unknown bijection \(\pi_M:[r]\to[r]\) such
  that the \(j\)-th source column is supported in \(P^M_{\pi_M(j)}\).  Write
  \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\) and
  \(\bar\tau_{\max}=\max_j\bar\tau_j,\ 
    \bar\tau_{\min}=\min_j\bar\tau_j\).  Independently for
  labels and modes draw
  \[
    \xi_{j,M}\sim\mathcal N(0,\rho^2 I_n/n),\qquad
    a_j=\bar a_j+\xi_{j,A},\quad b_j=\bar b_j+\xi_{j,B},\quad
    c_j=\bar c_j+\xi_{j,C}.
  \]
  Whenever the realized columns are nonzero, set
  \[
    m_{j,A}=a_j/\|a_j\|_2,\quad m_{j,B}=b_j/\|b_j\|_2,\quad
    m_{j,C}=c_j/\|c_j\|_2,\quad
    \tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2,
  \]
  \[
    \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},\qquad
    T=\sum_{j=1}^r\tau_j\phi_j.
  \]
  Also write \(\tau_{\max}=\max_j\tau_j\) and
  \(\tau_{\min}=\min_j\tau_j\) on the nonzero-column event.
  For analysis only, whenever the indicated projection is nonzero, define
  \[
    m^\parallel_{j,M}=
      {\Pi^M_{\pi_M(j)}m_{j,M}\over
       \|\Pi^M_{\pi_M(j)}m_{j,M}\|_2},\qquad
    \tau^\parallel_j=\tau_j\prod_{M\in\{A,B,C\}}
       \|\Pi^M_{\pi_M(j)}m_{j,M}\|_2,\qquad
    \phi^\parallel_j=\bigotimes_{M\in\{A,B,C\}}m^\parallel_{j,M}.
  \]
  These projected quantities and the permutations are never algorithmic
  inputs.
  The realized factors and \(T\) are the data of the optimization problem.

  For algorithmic rank \(k\), a state \(Q=(q_1,\ldots,q_k)\) has
  \(q_i=(x_i,y_i,z_i)\), and
  \[
    \Psi(Q)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
    R(Q)=T-\Psi(Q),\qquad F(Q)=\tfrac12\|R(Q)\|_F^2.
  \]
  In chart notation \(q_i^A=x_i,q_i^B=y_i,q_i^C=z_i\).
  The tensor-preserving balance map is
  \[
    {\cal B}(x,y,z)=\begin{cases}
      (gu,gv,gw),&\|x\|_2\|y\|_2\|z\|_2>0,\\
      (0,0,0),&\text{otherwise},
    \end{cases}\qquad
    g=(\|x\|_2\|y\|_2\|z\|_2)^{1/3},\quad
    (u,v,w)=\left({x\over\|x\|_2},{y\over\|y\|_2},{z\over\|z\|_2}\right).
  \]
  Thus a nonzero balanced slot contributes \(g^3u\otimes v\otimes w\), and a
  zero or rolled-back slot is joint zero.  The terminal reference is the
  balanced, padded target
  \[
    q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},\tau_j^{1/3}m_{j,C}),\quad
    j\in[r],\qquad q_{r+1}^\star=\cdots=q_k^\star=0.
  \]
  It is an analysis reference, never an algorithmic input.

  A discovery prefix \(I\subset[k]\), \(|I|<r\), consists of frozen balanced
  slots and joint-zero slots elsewhere.  Let \(Q_I\) denote this current state
  with the scratch slot joint zero.  Its observable residual is
  \[
    R_I=T-\sum_{i\in I}g_i^3u_i\otimes v_i\otimes w_i.
  \]
  For \(\alpha=(s_A,s_B,s_C)\), define the block residual
  \(R_{I,\alpha}=\Pi_\alpha R_I\) and the block sphere
  \[
    {\cal S}_\alpha=\{(u,v,w):u\in{\rm ran}(\Pi^A_{s_A}),\
      v\in{\rm ran}(\Pi^B_{s_B}),\ w\in{\rm ran}(\Pi^C_{s_C}),\
      \|u\|_2=\|v\|_2=\|w\|_2=1\}.
  \]
  A scratch slot for this triple is \(q=(gu,gv,gw)\), with
  \((g,u,v,w)\in[\delta,2R_{\max}]\times{\cal S}_\alpha\), and is optimized using
  the exact restricted loss
  \[
    f_{I,\alpha}(g,u,v,w)=\tfrac12\|R_I-g^3u\otimes v\otimes w\|_F^2.
  \]
  The restriction is only on the scratch factors; the loss is the exact CP
  loss, not a block surrogate.  Since the scratch tensor is supported on
  \(\alpha\), define the observable local score and actual loss decrease by
  \[
    s_{I,\alpha}(q)=\langle R_{I,\alpha},u\otimes v\otimes w\rangle,\qquad
    \Delta_{I,\alpha}(q)=F(Q_I)-F(Q_I\oplus q)
      =g^3s_{I,\alpha}(q)-\tfrac12g^6,
  \]
  where \(Q_I\oplus q\) inserts the scratch slot into a zero slot.  A declared
  block-scale smoothness bound is
  \[
    L_{I,\alpha}(q)=C_{\rm loc}\bigl(1+g^3\|R_{I,\alpha}\|_F+g^6\bigr),
  \]
  with \(C_{\rm loc}\) a fixed protocol constant.  The proof must verify that
  this is an upper bound for the restricted Hessian on the guarded transaction
  neighborhood; it depends on the tested block residual and candidate scale,
  never on \(\|R_I\|_F\).

  Set \(\rho_{\rm eff}=\rho\) for \(\rho>0\) and \(\rho_{\rm eff}=1\) for
  \(\rho=0\).  For fixed protocol constants
  \(C_{\rm leak},C_{\rm off},C_{\rm loc},C_{\rm tx}>0\) and
  exponents \(c_{\rm tx},c_H>0\), set
  \[
    P=16nrk\kappa/\rho_{\rm eff},\qquad R_{\max}=8\kappa,\qquad
    a_{\rm seed}=\|T\|_F P^{-120},\qquad \delta=a_{\rm seed}^{1/3},\qquad
    \Delta_{\rm tr}=P^{-20},\qquad
    \lambda_{\rm leak}=C_{\rm leak}\rho\sqrt{\log(2r)}\,{\|T\|_F\over\sqrt r},
  \]
  \[
    N_{\rm tx}=\left\lceil C_{\rm tx}(r\kappa/\rho_{\rm eff})^{c_{\rm tx}}
      \log(2r)\right\rceil,\qquad H_{\rm tx}=\lceil P^{c_H}\rceil.
  \]
  If \(T=0\), the algorithm returns the all-zero state.  Otherwise, for each
  \(\alpha\in[r]^3\), it draws \(N_{\rm tx}\) independent triples uniformly
  from \({\cal S}_\alpha\), starts each at \(g=\delta\), and runs at most
  \(H_{\rm tx}\) balanced Riemannian gradient steps on \(f_{I,\alpha}\).  Every
  step uses exact-objective dyadic Armijo backtracking, keeps the factors in
  their displayed blocks, obeys the radius and fixed displacement guards, and
  uses no source label, target factor, pseudoinverse, or auxiliary objective.
  More precisely, a trial of length \(\lambda\) is accepted only when
  \[
    f_{I,\alpha}(q^+)\le f_{I,\alpha}(q)
      -c_{\rm arm}\lambda\|\operatorname{grad}_{\alpha}f_{I,\alpha}(q)\|_2^2,
    \qquad \|q^+-q\|_2\le\Delta_{\rm tr},
  \]
  with the displayed radius guard; \(\operatorname{grad}_{\alpha}\) is the
  Riemannian gradient on the block product manifold.
  A negative score may be corrected by flipping one fixed mode before testing.

  Fix \(0<\eta_{\rm iso}<1\), \(0<c_{\rm dec}<1\), and \(0<c_{\rm arm}<1\).  A
  candidate passes the observable block transaction gate if, after the sign
  convention,
  \[
    g\in[\delta,2R_{\max}],\quad s_{I,\alpha}(q)>0,\quad
    \|R_{I,\alpha}\|_F\ge\lambda_{\rm leak},\quad
    s_{I,\alpha}(q)^2\ge(1-\eta_{\rm iso})\|R_{I,\alpha}\|_F^2,\quad
    \Delta_{I,\alpha}(q)\ge {c_{\rm dec}s_{I,\alpha}(q)^2\over L_{I,\alpha}(q)}.
    \tag{Block-gate}
  \]
  The isolation and decrease tests use only the current residual, the tested
  block, the candidate, and exact loss evaluations.  Each public block triple
  is committed at most once.  A failed Armijo step, exhausted budget, guard
  violation, or gate failure rolls the scratch slot back exactly to joint zero,
  leaving the prefix, residual, represented tensor, and loss unchanged.

  The scan enumerates all \(r^3\) triples and uses the finite restart tape until
  a candidate passes or its budget is exhausted, with at most \(k\) total
  commits.  After the scan, all unused slots are joint zero, the block support
  restrictions are removed, and full-space balanced Armijo gradient descent on
  the exact \(F\) is run to the requested relative accuracy.  Let
  \({\cal Z}_\star\) be the finite orbit of the padded target under slot
  permutations and per-slot sign triples whose product is \(+1\).  For
  \(\varrho>0\), let \(\operatorname{dist}_{\rm bal}\) denote the slotwise
  Euclidean distance after balancing, minimized over \({\cal Z}_\star\), and
  define the same-target balanced chart by
  \[
    {\cal C}_{\rm PL}(\varrho)=\{Q:\operatorname{dist}_{\rm bal}(Q,{\cal Z}_\star)\le\varrho,
      \ \max_{i,M}\|q_i^M\|_2\le2R_{\max},\ q_i=0\text{ for unused slots}\}.
  \]
  The chart radius, its PL constant, and membership are generated conclusions,
  not assumptions.

- Technical assumptions:
  - assump:public-block-partition (Public disjoint blocks):
    \(d=\lceil C_d\log(2r)\rceil\), the \(P_s^M\)'s are public, pairwise
    disjoint coordinate sets of size \(d\), and \(rd\le n\); the complement
    \(P_0^M\) is unrestricted.
  - assump:block-supported-source (One source column per block): for each
    mode \(M\), an unknown bijection \(\pi_M:[r]\to[r]\) satisfies
    \(\operatorname{supp}(\bar m_{j,M})\subseteq P^M_{\pi_M(j)}\), where
    \(\bar m_{j,A}=\bar a_j,\bar m_{j,B}=\bar b_j,\bar m_{j,C}=\bar c_j\).
  - assump:base-conditioning (Polynomial source conditioning): every base
    column is nonzero, \(\kappa^{-1}\le\|\bar m_{j,M}\|_2\le\kappa\), and every
    nonzero singular value of each \(\bar M\in\{\bar A,\bar B,\bar C\}\) lies in
    \([\kappa^{-1},\kappa]\), with \(1\le\kappa\le r^{c_\kappa}\).
  - assump:base-product-balance (Balanced deterministic weights):
    \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\), for a fixed
    \(\Gamma_\star\ge1\); reciprocal mode rescalings are allowed.
  - assump:gaussian-smoothing (Independent Gaussian perturbations): all
    \(\xi_{j,M}\) are mutually independent and have law
    \(\mathcal N(0,\rho^2I_n/n)\), with \(\rho=0\) allowed as the exact baseline.
  - assump:dimension-and-smoothing-scale (Polynomial ambient regime):
    \(r\ge r_0\), \(n\ge rd\), \(0\le\rho\le1\), and, when \(\rho>0\),
    \(\rho^{-1}\le r^{c_\rho}\); the constants \(c_\kappa,c_\rho\) are fixed.
  - assump:smoothing-margin (Leakage below atom scale): for a fixed
    sufficiently small \(c_{\rm sm}>0\),
    \(\kappa^3\Gamma_\star\rho\sqrt{\log(2r)}\le c_{\rm sm}\eta_{\rm iso}\).
    This is a primitive parameter margin; the realized leakage and block
    isolation events are still to be proved.
  - assump:rank-regime (Strictly subquadratic overparameterization):
    \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), with \(r<k=o(r^2)\)
    for all sufficiently large \(r\).
  - assump:block-tape (Conditional finite block restart tape): conditional
    on the once-drawn instance, all starts used for every triple are independent
    uniform draws on its \(d\)-dimensional block spheres, independent of the
    smoothing, with \(N_{\rm tx}\) and \(H_{\rm tx}\) equal to the fixed
    quantities defined in the basic setup (and allowed fixed polynomial
    increases).
  - assump:relative-accuracy (Requested endpoint): \(0<\epsilon<1\); the
    \(T=0\) instance uses the exact-zero early return.

# Formalized Goal

- Goal statement:
  In target-spec mode, uniformly over every deterministic source satisfying the
  technical assumptions, prove a material-partial theorem with two separate
  probability statements.  There is a once-drawn smoothing event
  \({\cal E}_{\rm inst}\) with probability at least \(1-r^{-10}\) such that all
  realized columns are nonzero,
  \((2\kappa)^{-1}\le\|a_j\|_2,\|b_j\|_2,\|c_j\|_2\le2\kappa\),
  \(\tau_{\max}/\tau_{\min}\le8\Gamma_\star\), and the maximum per-column
  off-block leakage is \(O(\rho\sqrt{\log(2r)})\).  From this primitive event
  and the public supports, the proof must derive that every nonmatching block
  triple has residual below the observable leakage floor, while each matching
  triple \(\alpha_j^\star=(\pi_A(j),\pi_B(j),\pi_C(j))\) obeys
  \[
    R_{\varnothing,\alpha_j^\star}
      =\tau^\parallel_j\phi^\parallel_j+E_j,\qquad
    \|E_j\|_F\le C_{\rm off}\lambda_{\rm leak},\qquad
    \|R_{\varnothing,\alpha}\|_F\le\lambda_{\rm leak}
      \quad(\alpha\notin\{\alpha_1^\star,\ldots,\alpha_r^\star\}),
  \]
  with \(\tau^\parallel_j\) in the same polynomial interval as \(\tau_j\).
  Block isolation,
  transaction success, assignment to an unresolved target, and membership in a
  same-target balanced PL chart must remain generated conclusions rather than
  assumptions.

  Conditional on every instance in \({\cal E}_{\rm inst}\), prove that the
  finite block restart tape succeeds with probability at least \(1-r^{-10}\):
  the scan accepts exactly one representative for each of the \(r\) matching
  triples (up to product-one signs), accepts no nonmatching triple, every
  accepted representative satisfies the observable Block-gate, and the
  padded rank-\(k\) state after release of block restrictions lies in some
  proof-generated \({\cal C}_{\rm PL}(\varrho_{\rm PL})\).  The full-space
  balanced Armijo trajectory then satisfies
  \[
    \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
      \le\epsilon\|T\|_F
  \]
  in polynomial discovery work and terminal work polynomial in
  \(n,r,\kappa,\rho_{\rm eff}^{-1},\log(1/\epsilon)\).  In the \(\rho=0\) orthogonal-block
  specialization, the leakage floor and all off-block residuals are exactly
  zero, matching blocks are exact rank-one channels, and the terminal result is
  exact recovery in the limit (with no additive error floor for finite
  relative-accuracy requests).

# Note

- Rigor:
  This artifact is bound to approved idea SHA
  d0f9aaccd10811d76aefce7e7feb1e6d7b7162ffa5a4771a10482c59ee74b668.
  It preserves the parent sources *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and *Escaping From Saddle Points:
  Online Stochastic Gradient for Tensor Decomposition*; the semantic delta is
  exactly the public disjoint block subclass, exact-objective block-triple
  transactions, observable scale-local decrease/isolation gate, rollback,
  release to full-space balanced Armijo, and \(k=\Theta(r^{3/2}\log^2 r)\).
  Source alignment: preserves the exact objective, public-block material
  partial scope, \(r<k=o(r^2)\), separate instance/tape probabilities,
  arbitrary relative-Frobenius accuracy, and the exact/no-floor baseline.
  Progress type: material_partial.  Materiality: the public \(O(\log r)\)
  blocks make the random-start mass polynomial in \(r\), while the observable
  atom-scale decrease/isolation gate replaces the unavailable ambient-span
  certificate.  Base conditioning, block support, Gaussian smoothing,
  dimension, rank, tape law, and accuracy are primitive/checkable assumptions;
  leakage bounds, matching, gate passage, transaction success, curvature/PL
  membership, and convergence are proof obligations.  The block mechanism is
  directly checkable for \(r=1\), exact orthogonal block tensors, small Gaussian
  leakage, and arbitrarily large \(n\) with \(d=\Theta(\log r)\); these examples
  support the mechanism without promoting its conclusions to assumptions.
  Assumption support: assump:public-block-partition, assump:block-supported-source,
  assump:base-conditioning, and assump:base-product-balance are the explicit
  source subclass; assump:gaussian-smoothing, assump:dimension-and-smoothing-scale,
  and assump:smoothing-margin are the standard smoothed-analysis regime (with
  the stated block examples); assump:rank-regime, assump:block-tape, and
  assump:relative-accuracy are the approved algorithmic interface conditions.
  Fixed constants \(C_d,C_{\rm leak},C_{\rm off},C_{\rm loc},C_{\rm tx}\) and
  the Armijo constants may depend only on the declared source/protocol
  constants, never on \(n,r,\rho,\epsilon\) or a realized trajectory.
