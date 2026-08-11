# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- **Two-mode-orthogonal source child.** Keep the source Gaussian smoothing and
  balanced product weights, but require the normalized deterministic columns of
  \(\bar A\) and \(\bar B\) to be orthonormal. The normalized \(\bar C\) Gram
  obeys the existing near-orthogonal margin
  \(\|\bar G_C-I\|_{\rm op}\le(C_\nu r\log(2r))^{-1}\); all column norms remain
  in \([\kappa^{-1},\kappa]\), \(\kappa=\operatorname{poly}(r)\), and
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\). Independent Gaussian
  perturbations are unchanged. The once-drawn event derives the realized
  norm, Gram, product-weight, pair/triple-conditioning, and exact-target
  conclusions. The extra two-mode orthogonality is a primitive, checkable
  source condition, not an alignment or trajectory assumption.
  On the realized event, the two exact base orthogonalities imply
  \(\bigl|\langle m_{j,A},m_{\ell,A}\rangle
  \langle m_{j,B},m_{\ell,B}\rangle\bigr|\le C\nu_{\rm real}^2\) for
  \(j\ne\ell\), even before using the \(C\)-mode factor. This is the positive
  source for the label-isolation calculation.
  In current notation the two-mode contraction has the form
  \[
    \left\langle T,m_{j,A}\otimes m_{j,B}\otimes w\right\rangle
    =\tau_j\langle m_{j,C},w\rangle
      +O(\nu_{\rm real}^2\|T\|_F),
  \]
  and the cyclic analogues.  The error has two off-diagonal factors, one from
  each orthogonal mode, and is uniform in the remaining unit direction \(w\).
  A non-singleton candidate with a positive score therefore has an explicit
  tangent rotation in one of the two orthogonal modes unless one label
  dominates; this is the direct strict-saddle source used by block (T), not a
  primitive purity condition.

- **One residual-relative, zero-safe transaction certificate.** Preserve the
  balanced full-space scratch triple, radial root solve, unprojected angular
  gradient/negative-curvature trials, separation test, and exact rollback. At
  protected prefix \(I\), with residual \(R_I\), score
  \(s_I=\langle R_I,u\otimes v\otimes w\rangle\), and capture
  \(\Delta F_I=g^3s_I-\tfrac12g^6\), set
  \[
    D_I=\max\{\|R_I\|_F,\|T\|_F P^{-D_{\rm cap}}\}.
  \]
  For \(T=0\) return the exact zero decomposition. Otherwise define
  \[
  \mu_I(q)=\begin{cases}
  0,&s_I\le0\ \text{or}\ \Delta F_I\le0,\\
  \min\{1,\ s_I/D_I,\ \Delta F_I/D_I^2,\ g^3/D_I,
       \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise}.
  \end{cases}
  \]
  Here \(\widehat H_{\rm ang}\) and the radial/angular residuals use the
  current \(R_I\), not a target or a protected projection. A commit requires
  \(\mu_I\ge P^{-D_\mu}\), positive angular gap, separation at most \(1/4\),
  and measured radial/angular errors at most \(P^{-D_{\rm stat}}\mu_I\).
  The solver therefore uses the observable relative tolerance
  \(e_I=P^{-D_{\rm stat}}\mu_I\). The floor in \(D_I\) makes every ratio
  dimensionless and defined; at \(R_I=0\), \(s_I=\Delta F_I=0\) and
  \(\mu_I=0\), so discovery stops rather than asserting a spurious margin.
  No protected-span projector, source label, matching, or hidden basin event
  is queried by the protocol.

- **Raw, branch-qualified J ledger with a capture budget.** Replace the false
  unconditional row from idea 10 by the generated raw interface
  \[
    \|z_p\|_{{\rm root},2}\le
    C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3+\sqrt r\,e_p\bigr),
    \qquad e_p=P^{-D_{\rm stat}}\mu_{I_p}(q_p).
    \tag{Raw-J}
  \]
  Only on the explicit branch
  \(e_p\le c_{\rm lb}\nu_{\rm real}^2/\sqrt r\) may this be simplified to
  \(C'_z\nu_{\rm real}^2\). On the complement all \(e_p\)-terms remain in the
  ledger; no \(E_{\rm lb}^c\) absorption claim is made. For each captured root
  use the exact diagonal-aware charge
  \[
  \widetilde\Upsilon^M_{p;j,\ell}=(1+\eta_0)
  (J_M(p,\ell)+z_{p,M,\ell})
  \prod_{N\ne M}(H_N(p,j)+z_{p,N,j})
  -J_M(p,\ell)\prod_{N\ne M}H_N(p,j),
  \]
  with zero diagonal \(z\). Numerical terms are normalized by \(D_{I_p}^2\)
  and charged to the observable capture:
  \[
    e_pD_{I_p}^2\le P^{-D_{\rm stat}}\Delta F_{I_p}(q_p).
    \tag{capture-charge}
  \]
  Exact rollback makes failed probes contribute zero, while positive captures
  telescope, \(\sum_p\Delta F_{I_p}\le F(\text{empty})\). Thus the global
  ledger keeps a structural \(O(r\nu_{\rm real}^3)\) term and an explicit
  finite numerical charge controlled by \(P^{-D_{\rm stat}}\sum_p\Delta F_p\),
  rather than trying to turn a positive numerical tolerance into
  \(C'_z\nu_{\rm real}^2\). The two-label boundary has the honest
  \(O(h^4+e_ph+e_p^2)\) scale, including \(\nu_{\rm real}=0,e_p>0\).

- **Four local proof blocks.** The theorem-facing roadmap has four auditable
  units: (S) the static smoothing event and two-mode contraction identities;
  (T) one relative-certificate transaction, including the unresolved-label
  alternative and Raw-J transition; (B) capture-charge induction, finite-tape
  amplification, and the all-commit error budget; and (P) exact-target balanced
  Jacobian/PL entry followed by terminal Armijo refinement. The old
  \(E_{\rm lb}^c\) raw-margin row, protected-span leverage row, and all-label
  matched-mixture exchange row are absent. Each unit exports only the object
  consumed by the next unit, so no future closure step is used as a producer.

## Setting

- Context: Let \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) be deterministic
  nonzero bases with normalized columns, polynomial column scales, balanced
  product weights, \(n\ge C_{\rm dim}r\log(2r)\), and the two-mode condition
  \(\widetilde{\bar A}^{\top}\widetilde{\bar A}=
  \widetilde{\bar B}^{\top}\widetilde{\bar B}=I_r\). Assume
  \(\|\widetilde{\bar C}^{\top}\widetilde{\bar C}-I_r\|_{\rm op}\le
  (C_\nu r\log(2r))^{-1}\). Put
  \(\nu_\star=(C_\nu r\log(2r))^{-1}\) and require the explicit smoothing
  bridge \(C_{\rm sm}\kappa\rho\sqrt{\log(2r)}\le\nu_\star/4\), with
  \(\rho^{-1}\le r^{c_\rho}\). Draw the three factor perturbations independently
  as \(\mathcal N(0,\rho^2I_n/n)\). All realized geometry and every
  trajectory property are conclusions of the instance/proof events.
- Model: Form
  \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\) and optimize the exact
  asymmetric rank-\(k\) CP least-squares objective
  \[
    F(X,Y,Z)=\tfrac12\left\|T-
    \sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Nonzero slots are tensor-preservingly balanced
  \(q_i=(g_i u_i,g_i v_i,g_i w_i)\); unused and rolled-back slots are joint
  zero.  The exact balanced target plus \(k-r\) joint-zero slots remains the
  terminal reference.
- Data: Use the source smoothing, dimension, scale, product-weight, accuracy,
  and rank assumptions, plus the displayed two-mode orthogonality child
  condition. With instance probability at least \(1-r^{-10}\), derive the
  realized Gram/product reserves, exact balanced \(r\)-slot representation,
  \(T\ne0\) (unless handled by the zero early return), and the two-mode
  contraction bounds used by (T). No matching, span, basin, stability,
  boundedness, or ledger property is primitive.
- Algorithm: Start with joint-zero slots and a finite independent full-space
  Haar tape. At each prefix, seed one scratch triple, use the unchanged
  safeguarded radial root and unprojected angular gradient/two-sign
  negative-curvature Armijo trials, and enforce the relative certificate above
  together with the individual separation test. Failed trials roll back
  exactly. After \(r\) accepted commits, prune unused slots and run joint
  balanced full-space Armijo gradient descent on the same exact objective and
  target chart. Discovery tolerances are observable and adaptive; no target
  factor or protected projection is used.
- Regime: Set
  \[
    k=U(r)=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
  \]
  so \(r<k=o(r^2)\) with \(\beta=1/2\). Discovery and the finite tape use
  \(\operatorname{poly}(n,r,\kappa,\rho^{-1})\) work independent of
  \(\epsilon\); terminal work is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\). State the smoothed-instance
  probability and the conditional tape probability separately, with
  polynomial-cost restart amplification. Hidden constants may depend only on
  fixed \(c_0,c_\rho,C_\nu,\Gamma_\star\) and absolute proof constants, not on
  \(n,r,\rho,\epsilon\).

## Goal

- Theorem type: Material-partial two-mode-orthogonal,
  residual-relative-certificate and raw-ledger reachable-landscape/trajectory
  theorem for unprojected gradient descent.
- Informal statement: On the once-drawn good smoothed instance, prove the
  four-block chain (S)--(T)--(B)--(P). In (T), show directly from the two
  orthogonal modes, the current residual contractions, and the separation gate
  that every successful relative certificate identifies one unresolved target
  label: a non-unique protected mixture violates an observable score or
  angular-curvature clause and rolls back. Do not invoke a matched-mixture
  exchange premise. Prove the exact Raw-J row and the honest
  \(O(h^4+e_ph+e_p^2)\) local audit, and use (capture-charge) plus exact rollback
  to sum all numerical forcing on the finite discovery horizon without an
  \(E_{\rm lb}^c\) margin or a false \(C'_z\nu^2\) specialization. Then derive a
  history-uniform inverse-polynomial transaction probability, recover all
  unresolved labels (or stop early when the residual is exactly zero) with
  conditional tape probability at least \(1-r^{-10}\), enter the same-target
  balanced PL chart, and refine with the exact full-space loss
  to residual at most \(\epsilon\|T\|_F\) for every \(0<\epsilon<1\). The
  instance probability, tape probability, rank, runtime, and relative metric
  are explicit. The result is material partial progress for the
  source-mentioned two-mode-orthogonal smoothed subclass; arbitrary bases and
  unbalanced weights remain open. In the exact \(H=e=0\) specialization,
  failed probes have zero forcing, the exact balanced representation is
  stationary, the capture ledger vanishes, and the same arbitrary-accuracy
  endpoint is retained.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use
- Transfer map: preserves the source asymmetric loss, Gaussian smoothing,
  balanced full-space transactional GD, finite tape, exact rollback,
  subquadratic rank, separate probability modes, same-target PL refinement,
  and the no-floor endpoint; changes idea 10 by making two-mode orthogonality a
  primitive source, replacing the protected-span leverage/projection screen by
  one residual-relative certificate, and replacing the unconditional J-row by
  Raw-J plus a capture-budgeted numerical charge; reuses orthogonal
  correlation-growth and exact multilinear-expansion patterns.
- Source alignment: Preserves the exact CP objective, source Gaussian smoothing,
  random-initialization protocol, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial
  discovery/runtime, once-drawn-instance and conditional-tape probabilities,
  arbitrary relative Frobenius accuracy, and the exact/noiseless baseline. The
  two-mode-orthogonal base restriction is explicitly a source-mentioned
  special case, so this is material_partial, not a full arbitrary-base claim.
- Progress type: material_partial
- Materiality: This branch supplies a strictly subquadratic end-to-end
  iterative theorem target on a nontrivial asymmetric smoothed subclass while
  repairing the repeated contract failure itself. The relative certificate
  and raw capture ledger are theorem-facing mechanisms, not a relabeling of
  the old \(E_{\rm lb}^c\) assertion, and the terminal target is unchanged.
- Significance: Two orthogonal modes make the unresolved-label contraction
  quantitative without protected projections or source-label queries. The
  adaptive relative tolerance makes numerical forcing proportional to an
  observed capture and therefore finite-budgeted; it removes the dimensional
  raw-margin gap and permits a genuinely four-block proof interface. This is
  distinct from ideas 6--9 (fixed-tolerance H/J ledgers) and idea 10
  (protected-span leverage screen).
- Feasibility: Gaussian norm/Gram transfer, balanced re-gauging, radial
  bracketing, Armijo globalization, finite-tape amplification, and local
  balanced-PL refinement are standard or inherited. Orthogonal correlation
  growth is supported by *Orthogonalized ALS: A Theoretically Principled Tensor
  Decomposition Algorithm for Practical Use* and strict-saddle calculations
  for orthogonal tensors by *Escaping From Saddle Points: Online Stochastic
  Gradient for Tensor Decomposition*; their different objectives are used only
  as mechanism provenance. The new relative-certificate/raw-ledger bridge is
  direct current-notation algebra and is example-verified on: (i) exact
  orthogonal equal-weight factors, where \(\mu_I\) passes for an unresolved atom
  and all structural J charges vanish; (ii) two orthogonal modes with a
  correlated third mode, where pair contractions isolate the unresolved label
  and a protected mixture either fails the score/curvature certificate or has
  bounded score; (iii) the two-label \(h=e_p^2\) stress family, where the
  diagonal charge is \(O(h^4+e_ph+e_p^2)\) and is never absorbed into
  \(\nu^2\); and (iv) the \(R_I=0\), \(H=e=0\) branch, where the floor in
  \(D_I\) gives \(\mu_I=0\), exact rollback remains invariant, and terminal
  refinement has no additive floor. The capture telescoping inequality is an
  explicit proof obligation, not a primitive trajectory assumption.
- Consistency: Every added data condition is checkable before smoothing, and
  every adaptive quantity is computed from the current residual/factors and
  tape. The setting does not assume alignment, uniqueness, certificate
  passage, bounded history, PL membership, or convergence. The raw row is
  valid for all \(\nu_{\rm real},e_p\); its \(C'_z\nu_{\rm real}^2\) form is
  explicitly branch-qualified, so the \(\nu_{\rm real}=0,e_p>0\) contradiction
  is removed. No protected projector, matched-mixture premise, source-label
  query, or terminal error floor is introduced. The branch is non-duplicate
  because it changes both the primitive source geometry and the observable
  precision/proof interface while retaining the source objective and endpoint.
