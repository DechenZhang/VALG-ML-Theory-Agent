# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: optimization_landscape
  - model_class: third_order_asymmetric_cp_least_squares
  - data_assumption: gaussian_smoothed_factors
  - regime: strictly_subquadratic_overparameterization
  - algorithm: gradient_descent

## Added Dimensions

- Balanced near-orthogonal source special case: use the same primitive source
  class as idea_7. For
  \(\bar\tau_j=\|\bar a_j\|_2\|\bar b_j\|_2\|\bar c_j\|_2\), assume
  \(\bar\tau_{\max}/\bar\tau_{\min}\le\Gamma_\star\), polynomial two-sided
  base-column scales \([\kappa^{-1},\kappa]\), and
  \[
  \nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
  \le \nu_\star:={1\over C_\nu r\log(2r)}.
  \]
  Write \(e_{\rm num}:=P^{-D_{\rm stat}}\) for the fixed numerical
  stationarity scale used only in generated audits.
  No correlation-graph transitivity, path envelope, or trajectory invariant is
  assumed. The once-drawn event must derive
  \(\nu_{\rm real}\le2\nu_\star\) and
  \(\tau_{\max}/\tau_{\min}\le2\Gamma_\star\).
- Full-space transactional discovery: preserve idea_7's exact source
  objective, balanced slots, full ambient-sphere Haar probes, unprojected
  radial/angular trust-region Armijo steps, angular-only negative-curvature
  certification, observable separation gate, and exact rollback to joint zero.
  Protected slots are frozen during a transaction; a separated certificate is
  committed without changing its directions.
- Static lifted source and actual-history framework: on the realized event set
  \(H_M=|G_M-I_r|\) entrywise, \(J_M=I_r+H_M\), and
  \(K_A=H_B\circ H_C\) with cyclic definitions. Derive the same columnwise
  \(\ell_2\), Hadamard-kernel \(\ell_1\), nonnegative Neumann transfer, and
  \(q_{\rm res}\le1/4\) bounds from the signed-Gram operator margin. The
  statewise history array remains
  \[
  A_{I;j,A,\ell}={1\over\tau_j}\sum_{i\in I}
  \left|\left\langle E_i,
  m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}\right\rangle\right|,
  \qquad \ell\ne j,
  \]
  and is generated from accepted errors rather than exposed as an assumption.
- Symmetric diagonal-aware accepted-history charge and honest numerical audit
  (the minimal repair after idea_8): for a newly captured label \(p\),
  unresolved root \(j\), and tested label \(\ell\), define
  \[
  \begin{aligned}
  \widetilde\Upsilon^A_{p;j,\ell}:={}&(1+\eta_0)
  (J_A(p,\ell)+z_{p,A,\ell})
  (H_B(p,j)+z_{p,B,j})(H_C(p,j)+z_{p,C,j})\\
  &\quad-J_A(p,\ell)H_B(p,j)H_C(p,j),
  \end{aligned}
  \tag{J-charge}
  \]
  with cyclic forms. The subtraction uses the same \(J_A\) baseline as the
  positive product; it is the signed exact target-term cancellation in the
  multilinear expansion, not a primitive assumption or an absolute-Gram
  identity. The diagonal entries of \(z\) are zero by convention, with only
  the separately tracked numerical tolerance added later. The generated
  update to prove is
  \[
  A_{I\cup\{i\};j,A,\ell}-A_{I;j,A,\ell}
  \le2\Gamma_\star\widetilde\Upsilon^A_{p;j,\ell}.
  \tag{J-update}
  \]
  This is required for every \(\ell\ne j\), including \(\ell=p\), and in all
  three cyclic modes.
- O.1 entry audit with the honest local interface: write
  \(e_{\rm num}=P^{-D_{\rm stat}}\). With \(m_{1,A}\perp m_{2,A}\) and
  \(\langle m_{1,B},m_{2,B}\rangle
  =\langle m_{1,C},m_{2,C}\rangle=h\), the diagonal coordinate
  \((p,j,\ell)=(1,2,1)\) has
  \[
  \widetilde\Upsilon^A_{1;2,1}
  =\eta_0h^2+h(z_{1,B,2}+z_{1,C,2})
    +z_{1,B,2}z_{1,C,2}+O(\eta_0P^{-D_{\rm stat}})
  =O(h^4+e_{\rm num}h+e_{\rm num}^2),
  \]
  where the \(h^4\) term is structural and the positive
  \(e_{\rm num}h\) and \(e_{\rm num}^2\) terms are retained rather than
  absorbed into a false stronger rate. This honest charge dominates the exact
  \(2h^4+O(h^6)\) increment after constants are fixed, including the allowed
  boundary \(h=e_{\rm num}^2\); no lower bound such as
  \(h\ge e_{\rm num}^{1/3}\) is imposed. For an embedded orthogonal third label (or any tested
  \(\ell\ne p\)), \(J_A(p,\ell)=H_A(p,\ell)\), so the corrected expression
  is exactly the prior off-diagonal/transitive charge and does not acquire a
  diagonal \(O(h^2)\) term. The same check is made cyclically.
  In each cyclic mode the binding local export is the same
  \(O(h^4+e_{\rm num}h+e_{\rm num}^2)\) bound, and its numerical pieces feed
  the single \(O(r^2e_{\rm num})\) global budget rather than a new label factor.
- Fresh accumulation audit without an extra label factor: derive, from the
  existing transfer and Neumann series (not as a new assumption), a rootwise
  \(\ell_2\) envelope for each generated \(z_{p,M,\cdot}\), specifically
  \[
  \max_{p,M}\|z_{p,M,\cdot}\|_2
  \le C_z\bigl(\nu_{\rm real}^2+r\nu_{\rm real}^3
  +\sqrt r\,P^{-D_{\rm stat}}\bigr)
  \le C'_z\nu_{\rm real}^2
  \]
  in the declared rank/Gram regime. This bound is generated at a protected
  state from the rowwise-\(\ell_2\) transfer contraction
  \(2(\nu_{\rm real}+\eta_0)(1+\sqrt r\,\nu_{\rm real})\), the static
  \(K_MJ_M\) source, and the preceding global history budget; it is not a
  trajectory assumption. Together with it, derive
  \[
  \sum_{p,j,\ell,M}\widetilde\Upsilon^M_{p;j,\ell}
  \le C\Gamma_\star r\nu_{\rm real}^3+C r^2P^{-D_{\rm stat}}.
  \]
  The proof must sum all roots, tested labels, modes, and commit orders once.
  In this sum the \(\ell=p\) terms are
  \(O(\eta_0H_BH_C+H_Bz_C+H_Cz_B+z_Bz_C)\), hence
  \(O(\nu_{\rm real}^3+e_{\rm num}\nu_{\rm real}+e_{\rm num}^2)\) per
  generated root before summation. The rootwise \(\ell_2\) factorization sums
  the structural terms as \(O(r\nu_{\rm real}^3)\) and all numerical terms
  as \(O(r^2e_{\rm num})\); the \(\ell\ne p\) terms retain the prior
  transitive \(H_AH_BH_C\) cancellation and are no larger. Thus the honest
  global scale is \(O(r\nu_{\rm real}^3+r^2e_{\rm num})\). If only a crude entrywise sum
  is used, an \(O(r^{3/2}\nu^3)\) bound results; that weaker estimate is not
  accepted, and the rootwise \(\ell_2\)-to-\(\ell_1\) contraction is an
  explicit proof obligation rather than a hidden assumption.
- Preserve idea_7's generated Neumann direction envelope, unique-label
  certificate, all-commit injection, finite independent tape amplification,
  same-target balanced PL chart, exact rollback, arbitrary relative-error
  endpoint, and no-floor terminal refinement. The corrected charge is
  propagated through tensor-influence and chart-entry consumers without
  projection, whitening, refresh, transitivity, or a changed objective.

## Setting

- Context: Fix deterministic nonzero base matrices
  \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) with column norms in
  \([\kappa^{-1},\kappa]\), \(\kappa\le r^{c_0}\), balanced product weights,
  \(n\ge C_{\rm dim}r\log(2r)\), and the displayed modewise normalized-Gram
  margin. Independently perturb every column in every mode by
  \(\mathcal N(0,\rho^2I_n/n)\), with \(\rho^{-1}\le r^{c_\rho}\). All norm,
  Gram, Khatri--Rao, history, matching, and PL properties after smoothing
  are derived good-instance or trajectory outputs.
- Model: Form
  \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\) and optimize the exact
  rank-\(k\) asymmetric CP least-squares objective
  \[
  F(X,Y,Z)={1\over2}\left\|T-
  \sum_{i=1}^kx_i\otimes y_i\otimes z_i\right\|_F^2.
  \]
  Nonzero slots are tensor-preservingly balanced as
  \((g_i u_i,g_i v_i,g_i w_i)\); failed or unused slots are joint zero.
- Data: On an event of probability at least \(1-r^{-10}\), derive the
  normalized Gram margin, product-weight ratio, pair/triple conditioning,
  exact balanced \(r\)-slot representation, the static \(H,J,K\) source, the
  transfer gap, and polynomial norm bounds. The actual accepted-history array,
  \(z\)-profiles, ledger, labels, and transaction invariants are generated
  conclusions, not event assumptions. The nine primitive assumptions are
  exactly inherited from idea_8: assump:base-column-conditioning,
  assump:base-product-balance, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale,
  assump:modewise-gram-margin, assump:rank-regime, assump:random-tape, and
  assump:accuracy-range. The local numerical audit is the only
  theorem-contract delta.
- Algorithm: Start from joint-zero slots with a polynomial finite tape of
  independent full-space Haar triples. For each protected state, seed one
  scratch slot at the inverse-polynomial radius, sign-flip one mode when its
  residual score is negative, solve the exact radial root by safeguarded
  bracketing, and use unprojected angular gradient and two-sign negative-
  curvature Armijo trials. Commit only a small-gradient, positive-angular-gap,
  positive-capture, separated certificate; rollback every failed transaction
  exactly. After \(r\) commits, run joint unprojected balanced trust-region
  Armijo gradient descent on the exact objective and the committed slots.
- Regime: Use
  \(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\), so
  \(r<k=o(r^2)\) with \(\beta=1/2\). Discovery uses polynomial work in
  \(n,r,\kappa,\rho^{-1}\), independent of \(\epsilon\); a conditional
  transaction success probability \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\) is
  amplified by a polynomial tape to \(r\) distinct commits. Terminal work is
  polynomial in \(n,r,\log(1/\epsilon)\).

## Goal

- Theorem type: Material-partial J-aware resolvent-ledger,
  separation-gated unprojected reachable-landscape and trajectory theorem.
- Informal statement: Prove the once-drawn instance event and the unchanged
  static absolute-Gram/Neumann prefix. Starting from the empty history, prove
  the generated J-aware update (J-update) and its cyclic forms, including
  the exact two-label audit: on the O.1 family, \(\ell=p\) has the honest
  corrected charge
  \(\widetilde\Upsilon=O(h^4+P^{-D_{\rm stat}}h+P^{-2D_{\rm stat}})\),
  including the positive numerical terms needed at
  \(h=P^{-2D_{\rm stat}}\), and this charge dominates the exact
  \(2h^4+O(h^6)\) increment. For \(\ell\ne p\), the expression reduces to the
  prior \(H_AH_BH_C\)-based transitive charge. Derive the rootwise \(\ell_2\)
  transfer consequence and sum every root, tested label, mode, and commit once
  to obtain an all-commit accepted-error budget
  \(O(\Gamma_\star r\nu_{\rm real}^3)+O(r^2P^{-D_{\rm stat}})\), with no second
  label factor. Keep the numerical terms visible through the induction, then
  use that generated budget to prove unique-label certificates,
  finite-tape all-commit amplification, entry into a same-target balanced PL
  chart, and floor-free Armijo refinement. On each good instance, retain a
  conditional tape probability at least \(1-r^{-10}\) separately from the
  instance probability, polynomial discovery/runtime, and for every
  \(0<\epsilon<1\) output a rank-\(k\) decomposition with residual at most
  \(\epsilon\|T\|_F\). The result remains material-partial because it is for
  the balanced, modewise-near-orthogonal source class; arbitrary bases and
  unbalanced weights remain open.

## Notes

- Parent foundation papers: Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions; Beyond Lazy Training for Over-parameterized Tensor Decomposition
- Transfer map: preserves the source asymmetric objective, Gaussian smoothing,
  balanced slots, full-space transactions, radial/angular certification,
  exact rollback, tape accounting, same-target PL refinement, and no-floor
  endpoint from idea_8/idea_7; changes only the false local two-label rate to
  the honest \(O(h^4+P^{-D_{\rm stat}}h+P^{-2D_{\rm stat}})\) interface,
  keeps the symmetric diagonal-aware \(J=I+H\) factor in both positive and
  baseline terms, and reuses the lifted Neumann/Cauchy--Schwarz framework for
  the unchanged global \(O(r\nu_{\rm real}^3+r^2P^{-D_{\rm stat}})\) budget.
- Source alignment: Preserves the exact objective, independent Gaussian
  smoothing, strictly subquadratic \(U(r)=O(r^{3/2}\log^2r)\), polynomial
  runtime, once-drawn instance probability, finite random-initialization tape,
  separate probability statements, and arbitrary relative Frobenius accuracy.
  The balanced near-orthogonal base class is explicitly material-partial;
  no transitivity condition or hidden trajectory event is added.
- Progress type: material_partial
- Materiality: This is the smallest theorem-contract repair of idea_8's
  first-transition counterexample. It retains the actual nonorthogonal tensor,
  exact objective, procedure, rank, probabilities, and endpoint; only the
  invalid pointwise numerical envelope is replaced by its honest algebraic
  scale. The global target remains strictly subquadratic and source-aligned.
- Significance: The symmetric baseline cancellation handles the captured-label
  diagonal, while the honest numerical split makes the first transition
  uniform down to \(h=e_{\rm num}^2\). The lifted H-part still charges direct,
  transitive, and longer correlation paths. A rootwise \(\ell_2\) contraction is
  used only as a derived consequence of the existing Neumann transfer,
  preventing an additional \(r\) (or \(\sqrt r\)) multiplicity in the global
  accepted-error ledger.
- Feasibility: Gaussian smoothing transfer, balanced re-gauging, radial
  bracketing, exact rollback, Armijo globalization, and local balanced PL are
  standard or inherited. The J-aware ledger and honest numerical split are
  novel but checkable multilinear expansions. They are stress-tested on (i)
  orthogonal equal-weight factors, where structural charges vanish in the exact
  limit; (ii) the O.1 two-label family, where the diagonal charge is
  \(O(h^4+e_{\rm num}h+e_{\rm num}^2)\) and dominates the exact increment,
  including \(h=e_{\rm num}^2\); (iii) the three-label transitive chain from
  idea_6, where off-diagonal \(J=H\) retains the \(h^3\) source; and (iv)
  dense/block frames, where signed-Gram column \(\ell_2\) bounds plus the
  generated rootwise \(\ell_2\) transfer estimate yield the stated
  \(O(r\nu^3+r^2e_{\rm num})\) sum. The rootwise estimate is a proof
  obligation, not a primitive assumption.
- Consistency: The setting, algorithm, and target remain those of the
  asymmetric CP least-squares landscape problem. The history source is still
  computed from actual accepted errors, and the J-baseline subtraction is
  justified by expanding around the same signed target contraction; no
  conclusion, invariant, probability mode, or lower bound on \(h\) is assumed.
  Numerical terms are generated analysis quantities and remain visible in the
  global budget. This branch is nonduplicate because idea_7 used an H-only
  tested factor, idea_8 used a rejected stronger local export, and idea_9
  changes only that export to the honest \(h^4+e h+e^2\) interface while
  retaining the J charge and all unaffected structure.
