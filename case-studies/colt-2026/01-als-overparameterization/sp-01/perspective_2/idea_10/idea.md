# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Residual-relative protected-span leverage screen: preserve idea 9's
  balanced, full-space, unprojected scratch dynamics, but add one observable
  commit-time test. At a protected prefix \(I\), let \(P_{I,M}\) be the
  orthogonal projector onto the span of the actual protected unit directions
  in mode \(M\in\{A,B,C\}\), computed by a stable QR/SVD of those directions;
  set \(P_{\varnothing,M}=0\). For a scratch direction triple
  \((u_A,u_B,u_C)=(u,v,w)\), put

  \[
  \lambda_M=\|P_{I,M}u_M\|_2,
  \qquad
  \Lambda_I^+=\sum_{\{M,N\}\subset\{A,B,C\}}
  (\lambda_M+C_{\rm sp}\bar\eta)
  (\lambda_N+C_{\rm sp}\bar\eta),
  \]

  where

  \[
  \bar\eta=C_{\eta}^{+}
  \left(\Gamma_\star(2\nu_\star)^2+P^{-D_{\rm stat}}\right)
  \]

  is a deterministic upper envelope fixed by the existing source class and
  numerical tolerance. With

  \[
  \tau_{\rm up}=4\Gamma_\star\|T\|_F,
  \qquad
  B_I^{(1)}=C_1|I|\tau_{\rm up}\bar\eta,
  \]

  and

  \[
  B_I^{(\ge2)}=
  C_2|I|\tau_{\rm up}\bar\eta^2+
  C_{\rm nor}|I|\|T\|_F P^{D_{\rm nor}-D_{\rm stat}},
  \]

  a candidate satisfying the unchanged radial/angular certificate is
  committed only if

  \[
  s_I(u,v,w)\ge64B_I^{(\ge2)},
  \qquad
  B_I^{(1)}\Lambda_I^+
  \le\gamma_{\rm lev}s_I(u,v,w),
  \tag{Lev}
  \]

  for a fixed small \(\gamma_{\rm lev}>0\). Here \(D_{\rm nor}\) is fixed
  before \(D_{\rm stat}\) from the existing guarded normal-recurrence bound;
  it is a proof-produced protocol exponent, not an assumption. Every
  quantity queried in (Lev) is a fixed constant, a protocol parameter, or a
  function of the current residual and actual protected/scratch factors. In
  particular, (Lev) queries no source factor, target label, matching, Gram
  kernel, history error, or generated invariant. Failing (Lev) causes the
  same exact rollback as any other failed transaction. The projector is used
  only to evaluate the test and never changes a direction or update.
- Direct matched-mass exclusion, replacing the matched-exchange contract:
  retain idea 9's exact matched-error split, but use it only to
  prove the raw current-state inequalities

  \[
  |\langle E_I^{(1)},u\otimes v\otimes w\rangle|
  \le B_I^{(1)}\Lambda_I^+,
  \]

  \[
  |\langle E_I^{(\ge2)},u\otimes v\otimes w\rangle|
  +|\langle (\operatorname{Id}-\Pi_\star)R_I,
  u\otimes v\otimes w\rangle|
  \le B_I^{(\ge2)}.
  \tag{Lev-raw}
  \]

  The first bound follows term by term because every first-order radial or
  directional error contains at least two matched target-mode factors, each
  within \(C\bar\eta\) of its actual protected span. The second follows from
  the quadratic matched-error remainder and the inherited direct triangular
  source-normal recurrence, with its numerical term kept raw. Consequently
  every state that passes (Lev) satisfies

  \[
  |s_M|\le(\gamma_{\rm lev}+1/64)s_I,
  \qquad
  W_U\ge(1-2\gamma_{\rm lev}-1/32)s_I,
  \tag{Lev-route}
  \]

  after constants are fixed. Thus every legally committable certificate is
  routed to the unresolved-mass singleton/structural-exchange alternative
  already supported before the all-label matched-mixture detour. The
  (Mat-rel), (Mat-hi), and (Mat-margin-10) outputs are deleted,
  not renamed or assumed. On \({\cal E}_{\rm lb}^c\), the raw
  \(P^{D_{\rm nor}-D_{\rm stat}}\) and \(\bar\eta^2\) terms remain in
  \(B_I^{(\ge2)}\) and are enforced by the observable score floor; no lower
  bound on \(\nu_{\rm real}\) or hidden absorption is used.
- Honest J-aware transition and rootwise budget: after (Lev-route) produces
  an unresolved label and the existing matching calculation gives
  (R-euc)/(R-dir), retain idea 9's exact symmetric \(J=I+H\) positive and
  baseline factors, zero-diagonal stored \(z\), and local
  \(O(h^4+e_{\rm num}h+e_{\rm num}^2)\) two-label audit. The global producer
  must use, for each captured root \(p\), the explicit factorization

  \[
  \sum_{j,M}\widetilde\Upsilon^M_{p;j,p}
  \le C\left[
  \eta_0\nu_{\rm real}^2+
  \nu_{\rm real}\|z_{p,\cdot,\cdot}\|_{{\rm root},2}+
  \|z_{p,\cdot,\cdot}\|_{{\rm root},2}^2+r e_{\rm num}
  \right],
  \tag{Lev-Jdiag}
  \]

  while the off-diagonal \(J=H\) terms are summed by the existing
  \(KJ\)/Neumann factorization. With the derived rootwise bound
  \(\|z_p\|_{{\rm root},2}\le
  C(\nu_{\rm real}^2+r\nu_{\rm real}^3+
  \sqrt r\,e_{\rm num})\), this is
  \(O(\nu_{\rm real}^3+r e_{\rm num})\) per captured root and hence
  \(O(r\nu_{\rm real}^3+r^2e_{\rm num})\) over all commits. No tested-label
  or commit factor is applied after this sum. These remain generated
  conclusions, not certificate tests or primitive conditions.
- Preservation of unaffected structure: keep the exact asymmetric CP loss,
  source Gaussian smoothing, balanced-product and modewise-Gram source class,
  rank \(k=\Theta(r^{3/2}\log^2r)\), finite independent full-space Haar tape,
  unprojected radial/angular and negative-curvature trials, observable
  separation, exact rollback, separate instance/tape probabilities,
  polynomial discovery, same-target PL entry, and floor-free arbitrary
  relative-error refinement. The only procedure delta from idea 9 is the
  additional commit-time test (Lev).

## Setting

- Context: Fix the same deterministic nonzero base triples as idea 9: column
  norms in \([\kappa^{-1},\kappa]\), polynomial \(\kappa\), fixed balanced
  product-weight ratio \(\Gamma_\star\), \(n\ge C_{\rm dim}r\log(2r)\), and

  \[
  \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
  \le\nu_\star={1\over C_\nu r\log(2r)}.
  \]

  Independently perturb every column in every mode by
  \({\cal N}(0,\rho^2I_n/n)\), with
  \(\rho^{-1}=\operatorname{poly}(r)\). Realized norm, Gram, Khatri--Rao,
  matching, leverage-pass, history, and PL properties are conclusions. In
  particular, neither (Lev-raw) nor (Lev-route) is added to the data
  assumptions.
- Model: Form
  \(T=\sum_{j=1}^ra_j\otimes b_j\otimes c_j\) and optimize exactly

  \[
  F(X,Y,Z)={1\over2}\left\|T-
  \sum_{i=1}^kx_i\otimes y_i\otimes z_i\right\|_F^2.
  \]

  Nonzero slots are tensor-preservingly balanced as
  \((g_i u_i,g_i v_i,g_i w_i)\); unused and rolled-back slots are joint zero.
- Data: Use exactly idea 9's nine primitive assumptions: polynomial base
  column conditioning, balanced base product weights, independent Gaussian
  smoothing, the dimension and smoothing-scale regimes, the modewise Gram
  margin, the strictly subquadratic rank, the independent finite Haar tape,
  and \(0<\epsilon<1\). The good-instance event must still derive
  \(\nu_{\rm real}\le2\nu_\star\), product-weight balance, pair/triple
  conditioning, \(T\ne0\), the exact balanced representation, the raw
  source-normal bound, and the deterministic bounds used in
  \(B_I^{(1)},B_I^{(\ge2)}\).
- Algorithm: Start from joint-zero slots. At each protected state, seed one
  full-space Haar scratch triple, run the unchanged safeguarded radial root,
  unprojected angular gradient and two-sign negative-curvature Armijo trials,
  and evaluate the unchanged capture, stationarity, angular-gap, and
  individual separation tests. Before commit, compute the three actual
  protected-span projectors and apply (Lev). Commit only if every test
  passes; otherwise rollback exactly. The projectors never modify a factor.
  After \(r\) distinct commits, prune unused slots and run the unchanged joint
  balanced full-space Armijo gradient descent in the same-target PL chart.
- Regime: Use

  \[
  k=U(r)=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
  \]

  so \(r<k=o(r^2)\) with \(\beta=1/2\). Discovery and all projector tests
  use polynomial work in \(n,r,k,\kappa,\rho^{-1}\), independent of
  \(\epsilon\); the finite tape amplifies a history-uniform inverse-polynomial
  transaction probability. Terminal work is polynomial in
  \(n,r,\log(1/\epsilon)\).

## Goal

- Theorem type: Material-partial leverage-screened J-aware
  resolvent-ledger, reachable-landscape and trajectory theorem.
- Informal statement: Prove the same once-drawn smoothed-instance event and
  static absolute-Gram/Neumann interfaces as idea 9. Starting from the empty
  prefix, prove (Lev-raw) from the existing matching-error and triangular
  source-normal sources. Show that every true unresolved-label certificate
  neighborhood passes (Lev) with polynomial slack, whereas every candidate
  whose score is primarily a protected matched mixture either fails (Lev) and
  rolls back exactly or has matched contribution at most a fixed small
  fraction of its score. Use (Lev-route), rather than any matched-mixture
  exchange assumption, to invoke the unresolved singleton/structural-exchange
  landscape alternative on both \({\cal E}_{\rm lb}\) and
  \({\cal E}_{\rm lb}^c\). For every resulting commit prove the exact honest
  J-aware update, the isolated two-label
  \(O(h^4+P^{-D_{\rm stat}}h+P^{-2D_{\rm stat}})\) audit, the rootwise profile,
  (Lev-Jdiag), and the one-time
  \(O(\Gamma_\star r\nu_{\rm real}^3+r^2P^{-D_{\rm stat}})\) all-commit
  budget. Then prove a history-uniform transaction probability
  \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\), finite-tape recovery of all \(r\)
  labels with conditional tape probability at least \(1-r^{-10}\),
  same-target PL entry, and floor-free Armijo refinement. With instance
  probability at least \(1-r^{-10}\), separately stated tape probability at
  least \(1-r^{-10}\), and polynomial total runtime, output for every
  \(0<\epsilon<1\) a rank-\(k\) decomposition of residual at most
  \(\epsilon\|T\|_F\). The arbitrary-base, unbalanced-weight, and
  simultaneous all-slot GD cases remain open.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the first paper's exact asymmetric CP/Khatri--Rao
  and source-span interfaces and the second paper's full-space iterative
  feature-discovery/reinitialization pattern; changes idea 9 only by adding an
  observable protected-span leverage screen at commit, and reuses the honest
  J-aware Neumann/rootwise charge after the screen restores unresolved-mass
  dominance.
- Source alignment: Preserves the exact asymmetric objective, independent
  Gaussian smoothing, full-space transactional gradient procedure,
  \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\), polynomial runtime, once-drawn instance
  probability, finite random-initialization tape, separate probability
  statements, exact rollback, and arbitrary relative Frobenius accuracy. The
  theorem remains explicitly narrowed to the balanced-product-weight,
  modewise-near-orthogonal source class and therefore does not claim the full
  arbitrary-base source target.
- Progress type: material_partial
- Materiality: The change is public-target-preserving and removes the sole
  unresolved matched-mixture producer: protected matched mixtures are now
  rejected by a target-blind observable test or proved quantitatively
  negligible before the landscape alternative is consumed. It retains a strictly subquadratic
  end-to-end iterative target rather than replacing the failure by a stopped,
  conditional, or positive-error-floor theorem.
- Significance: Ideas 7--9 repaired transitive paths, the tested-label
  identity, and numerical charging but still allowed a score supported almost
  entirely by the aggregate protected spans. Pair leverage addresses that
  exact geometric cause without the target-incompatible modewise projection
  of idea 5 and without asking a finite Hessian enumeration to manufacture a
  margin from an arbitrary matched-error tensor.
- Feasibility: Gaussian transfer, source-span projection, balanced
  re-gauging, full-space radial/angular updates, exact rollback, and local PL
  are standard or inherited. The leverage test is a standard computable
  subspace primitive used here in a novel example-verified commit screen; its
  theorem-facing content is the direct telescoping inequality (Lev-raw), not
  an assumed exchange. It passes the following branch-specific checks:
  (i) for orthogonal equal-weight factors, an unresolved atom has all three
  leverages zero, while a protected-span mixture has pair leverage of order
  one and zero score after exact commits; (ii) on the O.1 two-label family,
  the unresolved atom has pair leverage \(O(h^2)\), while the captured-label
  error has two leverages \(1-O(\bar\eta^2)\), so the former passes and the
  latter is rejected unless its score is already within the allowed relative
  charge; (iii) on the three-label chain from idea 6, the unresolved atom has
  pair leverage \(O(h^2)\), and the unchanged \(KJ\) source still records the
  \(h^3\) transitive history term; (iv) for dense or block frames,
  \(\lambda_M\le C\sqrt{|I|}(\nu_{\rm real}+\bar\eta)\), hence
  \(\Lambda_I^+=O(|I|(\nu_{\rm real}+\bar\eta)^2)\), while any two-mode
  protected mixture has constant pair leverage; and (v) on
  \({\cal E}_{\rm lb}^c\), including \(\nu_{\rm real}=0,e_{\rm num}>0\),
  the displayed \(B_I^{(\ge2)}\) score floor retains every raw numerical
  term and a true unresolved atom has target-scale score exceeding that floor
  by an inverse-polynomial margin. The per-root Cauchy--Schwarz bound in
  (Lev-Jdiag) then sums diagonal structural terms as \(O(r\nu^3)\) and all
  numerical terms once as \(O(r^2e_{\rm num})\).
- Consistency: The test uses only actual protected spans and the actual
  residual score, never source labels or generated matching. It screens but
  does not project or whiten, so committed directions can retain the small
  nonorthogonal correlations needed for same-target chart entry. Failed
  tests create no forcing by exact rollback; passed tests feed the same
  matching, J-update, tape, and PL consumers as before. In the exact
  orthogonal/noiseless baseline every unresolved atom passes with zero
  leverage and the algorithm retains exact representation and arbitrary
  accuracy. This is nonduplicate: idea 5 altered directions by protected
  projection, ideas 6--9 used only individual \(1/4\) separation and then an
  H/J/resolvent matched-error analysis, whereas idea 10 adds an aggregate,
  score-relative pair-leverage commit rule and deletes the unsupported
  matched-exchange target.
