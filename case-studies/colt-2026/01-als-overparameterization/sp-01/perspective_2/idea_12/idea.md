# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- **Two-mode-orthogonal source child.** Retain the source Gaussian smoothing and
  balanced product weights, and require the normalized deterministic columns of
  \(\bar A\) and \(\bar B\) to be orthonormal. Require
  \(\|\widetilde{\bar C}^{\top}\widetilde{\bar C}-I\|_{\rm op}\le
  (C_\nu r\log(2r))^{-1}\), polynomial column conditioning, and
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\). This is a static,
  checkable source restriction. On the realized smoothing event, the two exact
  orthogonal modes give the pair-product contraction
  \[
  \left|\langle m_{j,A},m_{\ell,A}\rangle
  \langle m_{j,B},m_{\ell,B}\rangle\right|
  \le C\nu_{\rm real}^{2}\quad(j\ne\ell),
  \]
  and hence the cyclic unresolved-label contraction used by the transaction
  certificate. No alignment, matching, or trajectory property is assumed.

- **Candidate-relative, zero-safe resolvent interface.** Keep the observable
  residual-relative certificate of idea 11, but make its numerical scale the
  sole numerical source in the ledger. For a scratch candidate \(q\) at a
  protected prefix \(I\), compute
  \[
    e_I(q)=P^{-D_{\rm stat}}\mu_I(q),\qquad
    \eta_{I,q}=C_\eta(\Gamma_\star\nu_{\rm real}^{2}+e_I(q)).
  \]
  After \(q\) passes the certificate (and only then), form the nonnegative
  absolute-value transfer majorant \(\mathcal T_{I,q}^{+}\) from the current
  \(H,J\) arrays with \(\eta_{I,q}\), and define
  \[
    (\mathcal T_{I,q}^{+}Z)_{j,A,\ell}
      =\sum_{t\ne j}|J_A(t,\ell)|
       \bigl[(|H_C(j,t)|+\eta_{I,q})Z_{j,B,t}
            +( |H_B(j,t)|+\eta_{I,q})Z_{j,C,t}\bigr],
    \tag{transfer-majorant}
   \]
   with the two cyclic mode definitions, and
   \[
    \Theta_{I,q}=(\operatorname{Id}-C_0\Gamma_\star\mathcal T_{I,q}^{+})^{-1}
      C_0\Gamma_\star\bigl(S_I+A_I+e_I(q)\mathbf 1\bigr).
    \tag{relative-resolvent}
  \]
  The array has zero diagonal. The proof-generated unresolved-label assignment
  \(p=p(q)\) is made after the certificate; set
  \(z_{q,M,\ell}=\Theta_{I,q;M,\ell}\) for \(\ell\ne p(q)\) and
  \(z_{q,M,p(q)}=0\). This assignment is an analysis output, never an
  algorithmic source-label query. Any local solver remainder is included in the
  same pad, so there is no second fixed \(P^{-D_{\rm stat}}\) or
  \(C_{\rm num}e_I\) source. The exported row is
  \[
    \|z_q\|_{{\rm root},2}
      \le C_z\bigl(\nu_{\rm real}^{2}+r\nu_{\rm real}^{3}
                         +\sqrt r\,e_I(q)\bigr).
    \tag{Raw-J-rel}
  \]
  All certificate-controlled radial, angular, and numerical errors are at most
  \(e_I(q)\), so this is a generated consequence rather than a primitive
  assumption. The transfer gap is checked with the displayed
  \(\eta_{I,q}\), and the proof keeps the \(e_I\)-terms raw until the final
  finite-prefix charge.

  At the exact orthogonal empty prefix, \(H=S=A_I=0\); every nonzero pad
  coordinate is \(O(e_I(q))\), hence the rootwise row is
  \(O(\sqrt r\,e_I(q))\). For equal weights and an exact unresolved atom,
  \(\mu_\varnothing(q)\le1/(2r)\), so both sides are
  \(O(P^{-D_{\rm stat}}/\sqrt r)\), with the same scale. If \(R_I=0\),
  \(e_I=0\) and the numerical source disappears exactly.

- **Unchanged full-space transaction and capture telescope.** Use balanced
  scratch triples \((g u,g v,g w)\), a finite independent Haar tape, a
  safeguarded radial root solve, unprojected angular gradient and two-sign
  negative-curvature Armijo trials, the individual separation test, and exact
  rollback. Define
  \[
    D_I=\max\{\|R_I\|_F,\|T\|_F P^{-D_{\rm cap}}\},\qquad
    \mu_I(q)=
    \begin{cases}
      0,&s_I\le0\text{ or }\Delta F_I(q)\le0,\\
      \min\{1,s_I/D_I,\Delta F_I(q)/D_I^2,g^3/D_I,
        \lambda_{\min}(\widehat H_{\rm ang})\},&\text{otherwise}.
    \end{cases}
  \]
  The protocol stops and returns the exact zero decomposition when \(T=0\),
  and stops discovery when \(R_I=0\). For every accepted root,
  \[
    e_I(q)D_I^2\le P^{-D_{\rm stat}}\Delta F_I(q),\qquad
    \sum_{q\ \mathrm{committed}}\Delta F_I(q)\le F(\mathrm{empty}),
    \tag{capture-telescope}
  \]
  while failed probes contribute zero by rollback. No protected projection,
  source-label query, matched-mixture exchange, or terminal error floor is
  introduced.

- **Concise four-block proof contract.** The theorem is organized as four
  auditable blocks: (S) smoothing and two-mode contractions; (T) one
  certificate transaction and the candidate-relative resolvent row; (B) the
  one-time capture-budgeted ledger and finite-tape recovery; and (P) same-target
  balanced PL entry followed by terminal full-space Armijo refinement. The
  relative-resolvent source is produced after the observable certificate and
  before (B), so the dependency graph has no hidden future producer or
  circular closure.

## Setting

- Context: Let \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) be deterministic
  nonzero bases with normalized column norms and singular values in
  \([\kappa^{-1},\kappa]\), \(\kappa=\operatorname{poly}(r)\), and
  \(n\ge C_{\rm dim}r\log(2r)\). Assume
  \(\widetilde{\bar A}^{\top}\widetilde{\bar A}=I_r\),
  \(\widetilde{\bar B}^{\top}\widetilde{\bar B}=I_r\),
  \(\|\widetilde{\bar C}^{\top}\widetilde{\bar C}-I_r\|_{\rm op}
  \le(C_\nu r\log(2r))^{-1}\), and balanced deterministic product weights
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\). Let
  \(\nu_\star=(C_\nu r\log(2r))^{-1}\), require
  \(C_{\rm sm}\kappa\rho\sqrt{\log(2r)}\le\nu_\star/4\) and
  \(\rho^{-1}\le r^{c_\rho}\), and independently perturb every factor column by
  \(\mathcal N(0,\rho^2I_n/n)\).
- Model: Set \(a_j,b_j,c_j\) to the realized perturbed columns and
  \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\). Optimize the exact source
  rank-\(k\) asymmetric CP least-squares objective
  \[
    F(X,Y,Z)=\tfrac12\left\|T-
      \sum_{i=1}^{k}x_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Every nonzero slot is represented tensor-preservingly as
  \((g_i u_i,g_i v_i,g_i w_i)\) with unit directions; unused and rolled-back
  slots are joint zero. The exact balanced target plus \(k-r\) joint-zero
  slots is the terminal reference.
- Data: With probability at least \(1-r^{-10}\) over the once-drawn instance,
  derive realized norm, Gram, product-weight, pair/triple-conditioning, and
  exact-target reserves, including the two-mode contraction above. These are
  conclusions of the event, not assumptions. No matching, protected span,
  certificate passage, bounded trajectory, ledger, or PL membership is placed
  in the data model.
- Algorithm: Start from joint-zero slots and a finite independent full-space
  Haar tape. At each prefix, seed one scratch triple, run the safeguarded radial
  root and unprojected angular gradient/two-sign negative-curvature Armijo
  trials, and accept only an observable residual-relative certificate with
  \(\mu_I\ge P^{-D_\mu}\), positive angular gap, separation at most \(1/4\),
  and radial/angular errors at most \(e_I(q)\). Failed or ambiguous trials
  roll back exactly. Freeze accepted balanced slots; after discovery, prune
  unused slots and run joint balanced full-space Armijo descent on the same
  exact objective. The relative-resolvent array is computed only for an
  accepted candidate from current residual/factors and is never queried by the
  algorithm.
- Regime: Set
  \[
    k=U(r)=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
  \]
  so \(r<k=o(r^2)\). Discovery, ledger construction, and the finite tape use
  polynomial work in \(n,r,\kappa,\rho^{-1}\) independent of \(\epsilon\); the
  terminal refinement uses polynomial work in
  \(n,r,\log(1/\epsilon)\). State the once-drawn instance probability and the
  conditional tape probability separately, with polynomial-cost restart
  amplification. Hidden constants are independent of \(n,r,k,\rho,\epsilon\),
  the realized instance, prefix, and adaptive \(e_I(q)\).

## Goal

- Theorem type: Material-partial two-mode-orthogonal,
  candidate-relative-resolvent and capture-budgeted reachable-landscape and
  trajectory theorem for full-space unprojected gradient descent.
- Informal statement: On every good once-drawn smoothed instance, prove the
  four-block chain (S)--(T)--(B)--(P). The transaction block must derive
  unique unresolved-label capture from the two orthogonal modes, the current
  residual, and the observable separation/curvature certificate, then export
  \(\mathrm{Raw\text{-}J\text{-}rel}\) using the same \(e_I(q)\)-scale in its
  resolvent source. The ledger must retain all structural
  \(\nu_{\rm real}^2+r\nu_{\rm real}^3\) terms and charge the numerical terms
  through (capture-telescope), without an \(E_{\rm lb}^c\) absorption claim.
  A finite independent tape then recovers all unresolved labels with
  conditional probability at least \(1-r^{-10}\), enters the same-target
  balanced PL chart, and reaches
  \[
    \left\|T-\sum_{i=1}^{k}x_i\otimes y_i\otimes z_i\right\|_F
      \le\epsilon\|T\|_F\qquad(0<\epsilon<1)
  \]
  in polynomial total runtime. The result is explicitly material partial for
  the two-mode-orthogonal smoothed subclass; arbitrary bases and unbalanced
  weights remain open. At \(H=e=0\), exact rollback has zero forcing, the
  balanced target is stationary, the relative-resolvent pad is zero whenever
  the residual is zero, and the arbitrary-accuracy endpoint has no additive
  floor.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Orthogonalized ALS: A Theoretically Principled Tensor Decomposition Algorithm for Practical Use
- Transfer map: preserves the source asymmetric CP objective, Gaussian smoothing,
  balanced full-space transactional gradient dynamics, finite independent tape,
  exact rollback, subquadratic rank, separate probability modes, same-target PL
  refinement, and the no-floor endpoint; changes idea 11 only at the failed
  theorem-facing interface by replacing its fixed
  \(P^{-D_{\rm stat}}\mathbf1\) resolvent pad (and separate fixed numerical
  offset) with the accepted candidate's observable \(e_I(q)\mathbf1\), and
  reuses its two-mode contraction and raw capture telescope.
- Source alignment: Preserves the exact asymmetric CP least-squares object,
  source Gaussian-smoothed factors, target-blind full-space initialization and
  transaction protocol, \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial
  discovery independent of \(\epsilon\), separate instance/tape probabilities,
  arbitrary relative Frobenius accuracy, and the exact \(H=e=0\) baseline. The
  two-mode-orthogonal deterministic source restriction is stated as a
  source-mentioned special case, so the contribution is material_partial rather
  than a full arbitrary-base theorem.
- Progress type: material_partial
- Materiality: This is the smallest contract-level repair of the empty-prefix
  obstruction: every solver remainder is measured by the candidate-relative
  certificate and enters the generated ledger at that same scale. It preserves
  the actual objective, discovery mechanism, rank, runtime, endpoint, and
  baseline while making the first transaction's Raw-J row dimensionally and
  quantitatively compatible.
- Significance: The branch retains a strictly subquadratic, end-to-end
  landscape/trajectory target on a nontrivial asymmetric smoothed class and
  removes the fixed-pad factor-of-\(r\) contradiction without protected
  projections, matched-mixture exchange, source labels, or a terminal floor.
- Feasibility: Static Gaussian norm/Gram transfer, two-mode contraction,
  balanced re-gauging, radial bracketing, Armijo/negative-curvature trials,
  finite-tape amplification, exact rollback, and balanced PL refinement are
  standard or inherited from the two parent papers. The candidate-relative
  resolvent is a direct current-notation majorant: certificate inequalities
  bound every numerical residual by \(e_I(q)\), the absolute transfer gap is
  checked with \(\eta_{I,q}\), and a finite Neumann series yields (Raw-J-rel).
  The new interface is example-verified on (i) exact orthogonal equal-weight
  factors at the empty prefix, where each pad coordinate is \(O(e_I)\) and
  both rootwise sides are \(O(P^{-D_{\rm stat}}/\sqrt r)\); (ii) two orthogonal
  modes with a near-orthogonal correlated third mode, where pair contractions
  isolate an unresolved label; (iii) the two-label \(h=e_I^2\) and
  \(h\ll e_I\) families, where the ledger retains the honest
  \(O(h^4+e_Ih+e_I^2)\) charge; and (iv) \(R_I=0\), \(T=0\), and \(H=e=0\),
  where \(e_I=0\), rollback/capture telescope is exact, and terminal descent
  has no additive forcing. These are verification examples, not theorem
  assumptions.
- Consistency: The only new theorem-facing primitive is the already
  source-compatible two-mode orthogonality child; the relative pad is a
  generated analysis object computed after an observable certificate, not a
  hidden assumption or algorithm query. The zero-safe definition prevents
  division by a vanishing residual, and the capture telescope keeps numerical
  terms finite. The setting remains non-vacuous, target-compatible, and
  distinct from ideas 6--11 because the numerical source and transfer gap are
  transaction-relative rather than fixed, protected, or matched-mixture based.
