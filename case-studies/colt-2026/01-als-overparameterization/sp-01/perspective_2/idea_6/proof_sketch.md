# Proof Sketch

## Formalized Setting

The binding setting is `perspective_2/idea_6/setting.md` as finalized for
sketch attempt 1.  The branch considers the exact asymmetric third-order CP
least-squares objective for a Gaussian-smoothed, balanced-product-weight,
modewise-near-orthogonal source.  It fixes

\[
k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil,
\qquad
\nu_{\rm real}\le {2\over C_\nu r\log(2r)},
\qquad
{\tau_{\max}\over\tau_{\min}}\le 2\Gamma_\star
\]

on a proof-generated instance event.  Discovery uses full-space Haar scratch
slots, exact radial bracketing, unprojected product-sphere angular steps,
angular negative-curvature escape, a commit-time separation test, and exact
rollback.  No protected-span projection or orthogonalized target is present.

The exact generated discovery interface is the injection
\(\pi_I:I\to[r]\) together with `(Led-1)`--`(Led-5)` from the setting.  In
particular, with

\[
\omega_{j\ell}=
 |\gamma^A_{j\ell}\gamma^B_{j\ell}|
 +|\gamma^A_{j\ell}\gamma^C_{j\ell}|
 +|\gamma^B_{j\ell}\gamma^C_{j\ell}|,
\]

the target requires, for every accepted slot matched to \(j\), every
unresolved \(\ell\), and every mode \(M\),

\[
 |\langle e_{i,M},m_{\ell,M}\rangle|
 \le C_{\rm led}
 \bigl(\Gamma_\star\omega_{j\ell}+P^{-D_{\rm stat}}\bigr).
 \tag{Required Led-2}
\]

This pair-local bound is a theorem-facing generated output, not a primitive
assumption and not an optional proof convenience.

## Formalized Goal

The target-spec goal is a `material_partial` theorem with all of the
following conclusions under the unchanged setting:

1. a once-drawn instance event of probability at least \(1-r^{-10}\);
2. a robust certificate-to-unresolved-label theorem exporting the exact
   structured ledger;
3. a history-uniform fresh-transaction success probability
   \(p_{\rm tx}\ge(nr)^{-c_{\rm tx}}\), followed by all \(r\) distinct
   commits with conditional tape probability at least \(1-r^{-10}\);
4. entry of the actual nonorthogonal committed tuple into the exact-target
   balanced PL chart; and
5. floor-free relative Frobenius error \(\epsilon\) in polynomial work, with
   separate instance and tape probabilities.

The final theorem must retain the exact source objective, the stated
transactional procedure, the displayed rank, the Euclidean balanced-factor
chart centered on the signed/permuted exact target, and arbitrary relative
accuracy.  It may not replace `(Required Led-2)` by an undeclared weaker
ledger inside the proof sketch.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

The natural roadmap is the successor of the reusable, nonprojected parts of
`perspective_2/idea_5/technical_survey.md`:

1. derive the realized norm, Gram, product-weight, Khatri--Rao, tensor-norm,
   and weighted-leakage event from the primitive source conditions;
2. reduce a radially solved scratch problem to maximization of the current
   residual score on the full product of spheres and prove the orthogonal
   two-channel strict-saddle calculation directly in current notation;
3. transfer that calculation to the near-orthogonal current residual using
   `(WL-A)`, `(Corr-2)`, and the structured accepted-error expansion;
4. export a unique unresolved label and the exact one-step ledger, prove a
   polynomial Haar basin and exact transactional globalization, and amplify
   over the finite tape;
5. convert the all-commit ledger into same-target balanced-factor distance,
   prove local Jacobian nondegeneracy and PL invariance, and specialize the
   recurrence to arbitrary relative accuracy.

The parent papers and prior survey support only motivation and the static
framework: *Guarantees for Alternating Least Squares in Overparameterized
Tensor Decompositions*, *Beyond Lazy Training for Over-parameterized Tensor
Decomposition*, *Smoothed Analysis of Tensor Decompositions*, *Escaping From
Saddle Points: Online Stochastic Gradient for Tensor Decomposition*, and
*Orthogonalized ALS: A Theoretically Principled Tensor Decomposition
Algorithm for Practical Use*.  None states `(Required Led-2)` for the current
unprojected residual objective, so the required transfer must be a direct
current-notation derivation.

Accordingly, no framework is marked selected for this attempt.  The static
Gram/residual framework and the conditional local balanced-PL framework are
reusable backups; the only candidate end-to-end framework is rejected by the
current-target calculation below.

That derivation is false.  A three-label correlation chain produces a
direction error of order \(\nu_{\rm real}^3\) against a label having zero
direct pair weight \(\omega_{j\ell}\).  Since the ambient dimension has no
upper bound, the remaining \(P^{-D_{\rm stat}}\) allowance can be made
smaller than this fixed structural term for every fixed positive proof
exponent.  Thus roadmap item 3 has no legal output, and items 4--5 have no
producer-consumer path under the binding target.  The obstruction is given
explicitly below.

## Rate Objectives

### Static instance-event objective

- Objective type: confidence-explicit and structural-parameter explicit.
- Exposed variables: \(n,r,\kappa,\rho,\Gamma_\star,\nu_{\rm base}\), and
  \(\nu_{\rm real}\).
- Hidden constants may depend on: the fixed class constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\).
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho\) or the realized
  instance.
- Fixed quantities: the deterministic base triple and fixed class constants.
- Probability mode: at least \(1-r^{-10}\) over the once-drawn Gaussian
  instance.
- Horizon mode: static, once-drawn event.
- Norm mode: Euclidean column norm, Gram operator norm, Khatri--Rao Gram
  operator norm, and tensor Frobenius norm.
- Required bridge or simplification obligations: derive all realized
  properties and `(WL-A)` from the primitive assumptions; do not assume the
  event as a theorem condition.
- Baseline invariance obligations: retain the exact balanced representation
  of \(T\) and the exact-zero shortcut.

### Certificate, ledger, and repeated-commit objective

- Objective type: structural-parameter explicit, finite-horizon repeated
  scope, and numerical-tolerance explicit.
- Exposed variables: \(r,\Gamma_\star,\nu_{\rm real},P,D_{\rm stat},
  D_{\rm gap},D_{\rm cap}\), \(|I|\), and all correlation weights
  \(\omega_{j\ell}\).
- Hidden constants may depend on: fixed class and protocol constants only.
- Hidden constants may not depend on: a label, protected history, ambient
  dimension, realized correlation pattern, or the order of commits.
- Fixed quantities: a good realized instance and one proof-generated
  protected state.
- Probability mode: deterministic conditional on the good instance and the
  generated ledger; randomness enters only in transaction reachability.
- Horizon mode: one certificate export and then all \(|I|=0,\ldots,r\)
  protected states.
- Norm mode: Euclidean direction/radius error, labelwise scalar
  correlations, and the cyclic contracted residual norms in `(Led-4)`.
- Required bridge or simplification obligations: raw angular stationarity and
  Hessian controls must imply the exact pair-local `(Required Led-2)` before
  it is consumed by later residual expansions.  Every accumulated
  \(|I|P^{-D_{\rm stat}}\) term must be dominated by a displayed inequality.
- Baseline invariance obligations: when all cross-correlations and numerical
  defects vanish, certificates must be exact unresolved atoms and the ledger
  must be zero.

### Transaction probability and work objective

- Objective type: confidence-explicit and fixed-horizon algorithmic rate.
- Exposed variables: \(n,r,k,\kappa,\rho,P,p_{\rm tx},H_{\rm tx},N_{\rm tx}\)
  and the fixed line-search and certificate exponents.
- Hidden constants may depend on: fixed class, Armijo, trust-region, and
  protocol constants only.
- Hidden constants may not depend on: protected history, tape location,
  realized instance, or \(\epsilon\).
- Fixed quantities: a good instance and the state before the fresh tape
  entry.
- Probability mode: history-uniform conditional probability
  \((nr)^{-c_{\rm tx}}\) per fresh transaction, amplified to at least
  \(1-r^{-10}\) over the tape while keeping instance probability separate.
- Horizon mode: at most \(H_{\rm tx}=P^{O(1)}\) work per transaction and the
  finite tape of \(N_{\rm tx}\) entries.
- Norm mode: exact loss decrease and Euclidean factor displacement.
- Required bridge or simplification obligations: a concrete Haar basin,
  first radial activation, angular progress/negative-curvature trichotomy,
  accepted-step lower bound, guard preservation, separation, rollback, and a
  stopped conditional-probability calculation.
- Baseline invariance obligations: rollback must restore the represented
  tensor, residual, loss, and protected factors exactly.

### Terminal PL and public accuracy objective

- Objective type: structural-parameter explicit, confidence-explicit,
  numerical-error explicit, and finite \(\log(1/\epsilon)\) horizon.
- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P,\epsilon,
  \varrho_{\rm PL},\mu_{\rm PL}\).
- Hidden constants may depend on: fixed class and Armijo/protocol constants
  only.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho,\epsilon\), the
  commit order, or the realized instance.
- Fixed quantities: the good instance and the exact signed/permuted target
  orbit.
- Probability mode: deterministic after the all-commit tape event; the two
  upstream probability statements remain separate.
- Horizon mode: finite terminal horizon
  \(O(\operatorname{poly}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon))\).
- Norm mode: balanced Euclidean factor distance for chart entry and tensor
  Frobenius norm for the public residual.
- Required bridge or simplification obligations: convert the exact ledger to
  same-target factor distance, prove a polynomial chart radius and PL
  constant, prove first-exit invariance, derive the Armijo contraction, set
  the iteration count, substitute `assump:rank-regime`,
  `assump:base-column-conditioning`, and `assump:smoothing-scale`, and keep
  every probability conversion explicit.
- Baseline invariance obligations: exact rollback, exactly zero unused slots,
  the exact target orbit, and a terminal recurrence with no additive floor.

## Assumption Provenance Objectives

- \({\cal E}_{\rm inst}\) is a derived event.  Its intended primitive
  sources are `assump:base-column-conditioning`,
  `assump:base-product-balance`, `assump:gaussian-smoothing`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:modewise-gram-margin`.
- `(WL-A)`, its cyclic analogues, and `(Corr-2)` are derived static controls.
  Their intended source is Cauchy--Schwarz applied to columns of the realized
  Gram deviations plus the derived product-weight ratio.
- The injection \(\pi_I\), unresolved set \(U_I\), and
  \({\sf Led}(I,\pi_I)\) are derived invariants.  The empty versions are
  algebraic at \(I=\varnothing\); every nonempty version must be produced by
  the certificate-to-label bridge.  They may be conditional hypotheses only
  inside a one-state landscape or reachability lemma and may not become
  public theorem assumptions.
- Angular strict-saddle alternatives, the accepted-step lower bound, guard
  maintenance, the transaction success event, and the all-commit event are
  derived outputs.  `assump:random-tape` supplies randomness but supplies none
  of these trajectory conclusions.
- Chart entry, positive PL geometry, chart invariance, and floor-free
  convergence are derived outputs.  `assump:accuracy-range` supplies only the
  requested tolerance.
- The required producer for `(Required Led-2)` does not exist under the
  unchanged target.  Moving it into an admissibility event would violate the
  Assumption Provenance Contract.

## Mechanism-Source And Boundary Stress

### Static realized event and weighted leakage

- Step ID: N/A because no end-to-end step graph is viable; this is a reusable
  candidate module only.
- Claim class: static concentration, nondegeneracy, conditioning, and
  labelwise weighted upper bounds.
- Theorem role: intended primitive-to-derived source for every dynamic
  module.
- Mechanism source: direct normalized-Gaussian concentration under
  `assump:base-column-conditioning`, `assump:gaussian-smoothing`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:modewise-gram-margin`; product balance comes from
  `assump:base-product-balance`.  The Schur-product identities are used in
  the exact normalized-factor convention of the setting.
- Source-to-claim adequacy: the base-to-realized direction perturbation is
  \(O(\kappa\rho\sqrt{\log(2r)})\); a finite union bound gives the displayed
  norm and Gram event.  For fixed \(j\), Cauchy--Schwarz gives
  \(\sum_{\ell\ne j}|\gamma^B_{\ell j}\gamma^C_{\ell j}|
  \le\nu_{\rm real}^2\), and the realized weight ratio gives `(WL-A)`.
- Residual-to-target adequacy: the produced columns are the realized target
  columns and the consumed tensor is their exact sum; the Schur Gram identity
  compares the same atoms in Frobenius norm, with no surrogate target.
- Key positive/control term or structural source: the primitive slack below
  \(\nu_\star\), the positive lower column norm, and the exact Schur Gram
  diagonal.
- Opposing defect terms: Gaussian norm and direction perturbations and their
  finite-union tails.
- Closure/dominance/absorption relation: the primitive smoothing margin
  places the perturbation below the remaining \(\nu_\star\) slack; fixed
  large constants make the tail at most \(r^{-10}\).
- Accumulation behavior / scope compatibility: static finite union only; no
  trajectory defect accumulates.
- Obligation locality classification: step-local.
- Noncircular closure status: primitive conditions produce the event before
  any trajectory consumes it.
- Entry-state / first-update stress result: at \(I=\varnothing\), the empty
  ledger is exact and \(R_I=T\); the event is already active before the first
  seed.
- Baseline conclusion preserved: the exact balanced \(r\)-slot state still
  represents \(T\), and \(T=0\) triggers the stated zero return.
- Producer-consumer provenance: primitive assumptions -> static event ->
  intended landscape, transaction, ledger, chart, and rate modules.
- Null or boundary regime tested: exact orthogonality, equality in product
  weights, smallest allowed column norm, and zero observed tensor.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: conditioning and weighted leakage would be unavailable, but the
  source is supplied under the primitive margin.
- Repair route if source is unsupported: N/A; this module is not the blocker.

### Exact radial bracket, angular reduction, and rollback

- Step ID: N/A because no end-to-end step graph is viable; this is a reusable
  candidate module only.
- Claim class: exact scalar activation, fixed-residual reduction, monotone
  trial decrease, and state restoration.
- Theorem role: intended transaction-local producer of radial stationarity,
  capture, and zero failed-probe forcing.
- Mechanism source: direct differentiation in the exact setting convention,
  \(\partial_g f_I=-3g^2(s_I-g^3)\), and the protocol's exact joint-zero
  reset.  At a positive score, \(g^3=s_I\) is the unique positive radial
  root and the radially minimized loss is
  \(f_I(0)-\tfrac12s_I^2\).
- Source-to-claim adequacy: sign flipping makes every nonzero seed score
  positive; bisection solves the actual residual root, not a population or
  projected surrogate.  Resetting the scratch tensor to zero gives equality
  with the pre-transaction state.
- Residual-to-target adequacy: the produced bracket uses the actual
  \(R_I\), which is exactly the residual consumed by the certificate and
  angular dynamics.
- Key positive/control term or structural source: positive \(s_I\) for the
  radial root and exact equality of the zero scratch tensor for rollback.
- Opposing defect terms: radial bisection tolerance, guard exits, zero-score
  seeds, and failed angular trials.
- Closure/dominance/absorption relation: bisection reduces the scalar bracket
  geometrically; every failed path is stopped and reset, so its persistent
  state charge is exactly zero.
- Accumulation behavior / scope compatibility: failed-transaction forcing is
  identically zero, not merely summable.  Only tape use and work accumulate.
- Obligation locality classification: step-local.
- Noncircular closure status: the scalar identity and reset are available
  before certificate and tape consumers.
- Entry-state / first-update stress result: from the legal joint-zero scratch
  state, the first operation inserts radius \(\delta\), flips one sign when
  needed, and either brackets the actual positive root or rolls back exactly.
- Baseline conclusion preserved: exact rollback creates no error floor.
- Producer-consumer provenance: protocol algebra -> radial/capture outputs ->
  intended angular certificate; reset -> intended finite-tape amplifier and
  no-floor terminal conclusion.
- Null or boundary regime tested: zero score, missing/oversized root, guard
  exit, line-search failure, and exhausted transaction budget.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: radial progress could fail, but rollback remains exact; this is
  not the ledger obstruction.
- Repair route if source is unsupported: N/A; direct current-notation proof
  is available.

### Blocker A: transitive correlations contradict the required pair-local ledger

- Step ID: N/A; this obstruction prevents allocation of a legal sketch step.
- Claim class: theorem-facing generated direction-correlation bound and
  repeated-scope residual ledger.
- Theorem role: `(Required Led-2)` must be exported by the first certificate
  and consumed by every later certificate-to-label and residual-contraction
  argument.
- Mechanism source: the proposed source is `(WL-A)`, `(Corr-2)`, angular
  stationarity, and the current structured residual identity.  These sources
  control direct degree-two correlations but do not exclude a length-two
  label path with degree three total correlation.
- Source-to-claim adequacy: failed.  The following direct current-notation
  construction obeys the primitive source class.  Fix, for example,
  \(c_\rho=3\), set \(\kappa=1\) and \(\rho=r^{-3}\), use equal product
  weights, choose \(0<h<\nu_\star/4\) leaving the required smoothing slack,
  and for three labels define unit base directions, extending them by
  orthonormal columns, by

  \[
  \begin{array}{lll}
  \bar m_{1,A}=e_1,&
  \bar m_{3,A}=e_2,&
  \bar m_{2,A}=\sqrt{1-h^2}e_3+h e_2,\\
  \bar m_{1,B}=e_1,&
  \bar m_{3,B}=e_2,&
  \bar m_{2,B}=\sqrt{1-h^2}e_3+h e_1,\\
  \bar m_{1,C}=e_1,&
  \bar m_{3,C}=e_2,&
  \bar m_{2,C}=\sqrt{1-h^2}e_3+h e_1.
  \end{array}
  \tag{A.1}
  \]

  Each modewise Gram deviation has operator norm \(h\).  Labels 1 and 3
  have zero direct correlation in all modes, so \(\omega_{13}=0\), while

  \[
  \gamma^B_{12}\gamma^C_{12}\gamma^A_{23}=h^3.
  \tag{A.2}
  \]

  At \(h=0\), the angular score has a nondegenerate strict local maximum at
  the label-1 atom.  The implicit-function theorem therefore gives a strict
  local maximum \((u_h,v_h,w_h)\) for small \(h\).  The exact tangent
  stationarity equations in the invariant spans of (A.1) give

  \[
  u_h=\bar m_{1,A}+h^2\bar m_{2,A}+O(h^4),
  \qquad
  v_h=\bar m_{1,B}+O(h^3),
  \qquad
  w_h=\bar m_{1,C}+O(h^3),
  \tag{A.3}
  \]

  after normalization.  Consequently the direction error matched to label 1
  satisfies

  \[
  |\langle u_h-\bar m_{1,A},\bar m_{3,A}\rangle|
  =h^3+O(h^5),
  \tag{A.4}
  \]

  although the direct pair weight \(\omega_{13}\) is zero.  This is the
  first nonzero Neumann/implicit-stationarity chain: labels 1 and 2 couple in
  modes B,C, and labels 2 and 3 couple in mode A.

  The strict local maximum, its radial root, its positive angular Hessian for
  \(f_I\), and its order-one capture persist under sufficiently small Gram
  perturbations.  Under `assump:gaussian-smoothing`, choose the allowed
  ambient dimension large enough that, with probability at least
  \(1-r^{-20}\), every off-pattern realized Gram entry is at most \(q\), in
  particular all three direct correlations between labels 1 and 3, while the
  three correlations in (A.2) stay within a fixed factor of \(h\).  Gaussian
  inner-product concentration and a finite union bound permit
  \(q\to0\) as \(n\to\infty\), whereas \(h\) is fixed by \(r\).  Then
  \(\omega_{13}\le3q^2\), while the realized analogue of (A.4) is at least
  \(h^3/2\).  Any claimed instance event of probability at least
  \(1-r^{-10}\) intersects this persistence event, whose probability is at
  least \(1-r^{-20}\), so the contradiction cannot be removed by defining
  the good-instance event differently.

  For every proposed fixed \(C_{\rm led}\) and every fixed positive
  \(D_{\rm stat}\), the setting permits a still larger \(n\) for which

  \[
  C_{\rm led}\bigl(3\Gamma_\star q^2+P^{-D_{\rm stat}}\bigr)
  <{h^3\over2}.
  \tag{A.5}
  \]

  The local maximum is a separated certificate at \(I=\varnothing\) for all
  sufficiently large \(P\): its gradient and radial errors are zero, its
  normalized angular Hessian is positive and larger than
  \(P^{-D_{\rm gap}}\), its capture dominates
  \(\|T\|_F^2P^{-D_{\rm cap}}\), and separation is vacuous.  It is uniquely
  within \(O(h^2)\) of label 1, and its relative radial error against label 1
  is \(O(h^4)\).  Thus the ordinary local ledger scale is satisfied while
  the structured pair-local scale is not.  Equations (A.4)--(A.5) contradict
  the required label-1 `(Led-2)` output for unresolved label 3.
- Residual-to-target adequacy: the produced object is the actual strict local
  maximum of the exact realized residual score, the consumed target is the
  realized label-1 atom, and the tested metric is exactly the scalar
  correlation required by `(Led-2)`.  No surrogate, projection, population
  target, or different norm is used.  The uncontrolled residual is the
  structural chain term \(h^3\), while the allowed direct-pair and numerical
  terms are \(O(q^2)\) and \(P^{-D_{\rm stat}}\).
- Key positive/control term or structural source: the nondegenerate pure-atom
  angular Hessian preserves the local maximum and makes the order-\(h^2\)
  displacement well defined.
- Opposing defect terms: the length-two label chain in (A.2), which is not a
  function of \(\omega_{13}\), plus arbitrarily small direct smoothing
  correlations and the numerical certificate tolerance.
- Closure/dominance/absorption relation: none under the binding ledger.
  Increasing \(n\) makes both permitted terms smaller without changing the
  structural \(h^3\) chain, so no fixed constant or exponent gives the
  required dominance.
- Accumulation behavior / scope compatibility: failure occurs at the first
  commit, before accumulation.  If a cubic term were admitted, its worst-case
  repeated charge would be compatible with the existing scale because
  \(r\nu_{\rm real}^3\le
  2\nu_{\rm real}^2/(C_\nu\log(2r))\); that term is absent from the approved
  interface.
- Obligation locality classification: idea/theorem-contract defect.  A proof
  of the exact target is impossible; repair must change `(Led-2)` and the
  certificate-to-label target to admit a cubic/transitive correlation term or
  add a primitive source condition excluding correlation chains.
- Noncircular closure status: failed.  No earlier producer supplies the
  missing chain term, and assuming `(Led-2)` for the generated certificate
  would assume the statement contradicted by (A.4)--(A.5).
- Entry-state / first-update stress result: the allowed entry is
  \(I=\varnothing\), so no accepted error or prior trajectory can be blamed.
  The exact first certificate near label 1 already violates the ledger before
  the second transaction consumes it.
- Baseline conclusion preserved: when \(h=0\), the chain vanishes and the
  orthogonal exact-atom baseline passes.  The theorem is uniform over allowed
  nonzero \(h\), where the contradiction is present.
- Producer-consumer provenance: empty ledger + exact residual -> first
  separated certificate -> intended label-1 ledger export -> next residual
  landscape and all-commit induction.  The broken edge is the first export.
- Null or boundary regime tested: exact orthogonality, nonzero
  near-orthogonality, zero direct pair weight, arbitrarily large allowed
  ambient dimension, exact radial stationarity, and exact angular
  stationarity.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes.  Direct pair weight and numerical tolerance vanish while
  the chain error remains nonzero.
- Repair route if source is unsupported: change the theorem-facing ledger to
  include a cubic/transitive closure, for example a term controlling
  \(\sum_t|\gamma^B_{jt}\gamma^C_{jt}gamma^A_{t\ell}|\) and its cyclic
  analogues (plus higher closure terms if the fixed-point expansion requires
  them), or impose a primitive graph/transitivity condition bounding every
  such chain by \(\omega_{j\ell}\).  Either route changes the binding
  theorem target or primitive source class and belongs at idea/formalization
  level, not in this proof sketch.

### Blocker B: certificate, ledger induction, and transaction success have no legal flow

- Step ID: N/A; this is downstream of Blocker A.
- Claim class: robust second-order-point classification, generated invariant,
  support/separation preservation, conditional reachability, and repeated
  finite-tape closure.
- Theorem role: intended producer of one new label per successful transaction
  and all \(r\) target-compatible commits.
- Mechanism source: orthogonal two-channel angular curvature, the static
  weighted leakage, the structured residual identity, full-space Haar
  anti-concentration, exact radial bracketing, Armijo decrease, negative
  curvature, separation, and exact rollback.
- Source-to-claim adequacy: the scalar and static mechanisms can plausibly
  support radial progress and a local angular classification, but the exact
  classification output demanded by the setting includes the false
  `(Required Led-2)`.  A Haar basin changes which certificate is reached; it
  cannot make every reached certificate satisfy a false deterministic
  output.
- Residual-to-target adequacy: a certificate near label 1 transfers to label
  1 in Euclidean direction distance, but its exported correlations do not
  transfer to the pair-local ledger at the required scale.  Consequently the
  next residual cannot legally consume \({\sf Led}(I,\pi_I)\).
- Key positive/control term or structural source: positive pure-channel
  angular curvature, inverse-polynomial gradient/negative-curvature decrease,
  fresh Haar randomness, and zero rollback forcing.
- Opposing defect terms: the unexported cubic chain, small-gradient ambiguous
  outcomes, guard exits, matched-label basins, and accepted rather than failed
  probe errors.
- Closure/dominance/absorption relation: exact rollback removes failed-probe
  forcing.  It does not remove an accepted certificate's structural error.
  The stopped Bernoulli calculation can amplify a valid per-state success
  event but cannot repair its invalid ledger output.
- Accumulation behavior / scope compatibility: failed probes have zero state
  charge; accepted cubic chain charges are persistent.  The approved ledger
  has no budget entry to carry even the first such charge.
- Obligation locality classification: idea/theorem-contract defect inherited
  from Blocker A for the exact certificate/ledger claim.  Transaction-local
  radial and rollback subclaims remain step-local but cannot form an accepted
  end-to-end step graph.
- Noncircular closure status: failed.  The intended induction assumes the
  exact ledger at the next state, but its only proposed producer is the
  certificate theorem contradicted above.
- Entry-state / first-update stress result: the first transaction can reach
  the strict local minimum in Blocker A and commit it because separation is
  vacuous.  At that point the required state invariant is already false.
- Baseline conclusion preserved: exact orthogonal target atoms would permit
  the intended flow; nonzero allowed chains do not.
- Producer-consumer provenance: static event + empty ledger + fresh seed ->
  transaction -> certificate -> intended ledger -> next transaction -> tape
  amplification.  The certificate-to-ledger edge is missing.
- Null or boundary regime tested: ideal seed, exact line search, exact
  negative-curvature oracle, exact rollback, and an ideal tape do not change
  the deterministic first-certificate contradiction.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; the all-commit theorem lacks a valid generated invariant even
  if reachability is otherwise ideal.
- Repair route if source is unsupported: first repair the formal ledger; only
  then allocate separate proof steps for angular trichotomy, a quantitative
  Haar cone, line-search globalization, and stopped tape amplification.

### Conditional same-target chart and floor-free terminal phase

- Step ID: N/A because its entry producer is blocked.
- Claim class: same-target basin membership, coercivity/PL, invariant
  maintenance, contraction, and exact-limit recovery.
- Theorem role: intended conversion of finite discovery error to arbitrary
  relative Frobenius accuracy.
- Mechanism source: a direct balanced CP Jacobian calculation using pair and
  triple Khatri--Rao Gram conditioning, followed by a Taylor remainder bound,
  exact-loss Armijo decrease, and a first-exit argument.  The exact target is
  the same nonorthogonal signed/permuted orbit consumed by the chart.
- Source-to-claim adequacy: conditionally plausible after a valid all-label
  factor-distance producer.  The balanced gauge removes continuous scaling
  degeneracy, target product weights are comparable, and the Khatri--Rao
  Grams supply a polynomial Jacobian lower bound.  These local sources do not
  produce chart entry from an invalid discovery ledger.
- Residual-to-target adequacy: if `(Led-1)` held for all labels, balancing and
  signed matching would give a same-target factor-distance bound of order
  \(\sqrt r\,\tau_{\max}^{1/3}
  (\Gamma_\star\nu_{\rm real}^2+P^{-D_{\rm stat}})\).  This compares the
  actual committed tuple directly to \({\cal Z}_\star\), not to an
  orthogonalized surrogate.  The binding proof, however, has no legal
  all-commit producer because the exact required ledger already fails.
- Key positive/control term or structural source: the smallest singular value
  of the balanced CP Jacobian at the exact target and exact zero loss there.
- Opposing defect terms: Taylor remainder, line-search displacement, chart
  boundary distance, and the missing discovery entry output.
- Closure/dominance/absorption relation: inside a valid sufficiently small
  chart, the Jacobian term dominates the quadratic Taylor remainder and
  Armijo gives \(F_{t+1}\le(1-c\mu_{\rm PL}P^{-D})F_t\).  A first-exit
  estimate would charge total path length to geometric loss decrease.  This
  conditional recurrence cannot be invoked to prove its own entry.
- Accumulation behavior / scope compatibility: terminal error is contractive
  and has no additive forcing because failed probes are gone and unused slots
  are exactly zero.  The finite discovery error is initialization only.
- Obligation locality classification: step-local only conditional on a legal
  earlier chart-entry producer; the end-to-end obligation is blocked by the
  idea/theorem-contract defect in Blocker A.
- Noncircular closure status: local PL maintenance can be noncircular via a
  first-exit argument after entry.  Using it to manufacture missing entry
  would be circular and is not proposed.
- Entry-state / first-update stress result: at the exact target, the gradient
  is zero and the conclusion is already true; from a valid chart entry, the
  first accepted Armijo update decreases exact loss and stays inside the
  factor-radius guard.  No valid generated entry is currently available.
- Baseline conclusion preserved: the exact target remains a stationary
  zero-loss state, unused slots remain exactly zero, and the conditional
  recurrence has no error floor.  The blocked discovery path prevents an
  end-to-end baseline conclusion for all allowed instances; it is not
  replaced by a weaker surrogate.
- Producer-consumer provenance: intended all-commit ledger -> signed matching
  and chart entry -> local Jacobian/PL -> first-exit recurrence -> public
  \(\epsilon\)-iterate.  The first dependency is unavailable.
- Null or boundary regime tested: exact target, a target component at its
  smallest balanced radius, chart boundary, zero residual, and
  \(\epsilon\downarrow0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without Jacobian nondegeneracy PL can fail; here that source is
  plausible locally, but entry is absent upstream.
- Repair route if source is unsupported: repair the ledger target first; do
  not weaken the exact-target or no-floor terminal conclusion.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Once-drawn realized event | Primitive assumptions plus normalized-Gaussian concentration and Schur identities | Base norm bounds, base product balance, smoothing margin, dimension | Gaussian norm/direction errors are controlled; no dynamic terms | Realized factors and exact tensor are the consumed objects | Primitive smoothing slack dominates the finite-union perturbation | \(\nu_\star\), positive base norms, fixed tail constants | All dynamic modules | None locally |
| `(WL-A)` and cyclic weighted leakage | Realized Gram and weight event | Gram column \(\ell_2\) norms and \(\tau_{\max}/\tau_j\le2\Gamma_\star\) | Direct degree-two leakage controlled; transitive degree-three chains are not part of this export | Same realized target labels and mode contractions | Cauchy--Schwarz gives \(L_{M,j}\le2\Gamma_\star\tau_j\nu_{\rm real}^2\) | Positive \(\tau_j\) and product balance | Intended angular perturbation module | None for the stated direct leakage; insufficient for `(Led-2)` |
| Exact radial root and capture | Direct scalar calculus | Actual score \(s_I>0\), bracket, exact residual | Bisection error controlled by iterations; missing/oversized roots stop | Root and certificate use the same actual \(R_I\) | Geometric bisection reaches the displayed relative tolerance | Positive score and radius guard | Intended angular trajectory and certificate | None locally |
| Exact rollback | Protocol joint-zero reset | Pre-transaction protected state and scratch index | Failed-probe error exactly zero; work/tape use persists | Pre- and post-rollback represented tensors are equal | Algebraic equality, no absorption needed | Joint-zero scratch convention | Tape amplification and terminal no-floor claim | None locally |
| Pair-local `(Led-2)` for the first certificate | No legal producer | Exact stationarity, Hessian, capture, `(WL-A)`, `(Corr-2)` | Direct pair and numerical terms controlled; transitive \(h^3\) chain uncontrolled | Actual local maximum to realized label-1 correlation in the exact required scalar metric | Required inequality is contradicted by (A.4)--(A.5) | Direct \(\omega_{13}\) and \(P^{-D_{\rm stat}}\) both vanish relative to \(h^3\) | Later residual landscape, ledger induction, all commits | Structural correlation-chain blocker |
| Extended injection and full ledger | Intended certificate-to-label theorem | Empty ledger or prior ledger plus certificate | `(Led-1)` may be locally plausible; exact `(Led-2)` is false, so combined export is infeasible | Label matching is same-target, but correlation residual is wrong-scale | No legal direct-pair dominance relation | Angular gap does not control missing transitive charge | Next transaction and final matching | First-commit producer fails |
| History-uniform \(p_{\rm tx}\) | Intended Haar basin plus globalization | Fresh tape, actual residual, radial identity, angular derivatives | Basin/line-search errors might be polynomially controlled; valid committed-state export is absent | A reached certificate need not produce the consumed ledger | Probability amplification cannot repair deterministic output failure | Candidate angular curvature and Haar cone | All-commit amplifier | Ledger output missing even for an ideal successful transaction |
| All \(r\) distinct commits | Intended stopped Bernoulli amplification | Fresh independence and hypothetical valid per-state success | Failed forcing zero; accepted unrepresented chain charge persists | No legal path from actual commits to the required generated invariant | Stopped binomial bound applies only after a valid per-state producer | Hypothetical \(p_{\rm tx}\) | Same-target chart entry | Conditional amplifier has no valid input |
| Same-target chart entry | Intended signed matching of the all-commit ledger | Target Khatri--Rao conditioning and hypothetical `(Led-1)` for all labels | Finite factor errors could be controlled; all-commit ledger producer is absent | Actual generally nonorthogonal commits would be compared directly to \({\cal Z}_\star\) | Conditional \(\sqrt r\)-summation is plausible but unavailable end to end | Polynomial target radii and Gram margins | Terminal PL | Broken discovery-to-entry dependency |
| PL invariance and public \(\epsilon\) rate | Direct balanced Jacobian/Taylor/Armijo calculation conditional on entry | Exact target, same-target chart, exact loss | Taylor and line-search terms locally controlled; missing entry is not | Exact target in balanced factor metric to Frobenius residual | Conditional geometric contraction has no additive floor | Positive Jacobian singular value inside chart | Final theorem | No legal chart-entry producer |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized good-instance event | Primitive assumptions plus direct concentration | Every intended dynamic module | Instance probability and deterministic conditioning | primitive assumptions -> event -> dynamics | derived | None locally |
| Weighted leakage and `(Corr-2)` | Realized Gram and weight event | Intended angular perturbation and residual expansion | Robust landscape | event -> static algebra -> landscape | derived | Controls direct degree-two totals, not the required transitive ledger |
| Empty injection and ledger | Algebra at \(I=\varnothing\) | First landscape and transaction | Starts induction | exact empty state -> first transaction | derived | None at entry |
| First pair-local ledger | No legal producer; contradicted by (A.1)--(A.5) | Every later landscape/transaction and final matching | Sequential target coverage | first certificate -/-> `(Led-2)` | derived | Structural \(h^3\) chain missing from target interface |
| Exact radial bracket and capture | Direct scalar identity and bisection | Angular trajectory/certificate | Transaction reachability | actual residual -> score -> bracket | derived | None locally |
| Exact rollback | Joint-zero reset | Repeated transaction state and final no-floor claim | Removes failed-probe forcing | failed trial -> reset -> identical protected state | derived | None locally |
| Unique unresolved label and extended injection | Intended certificate theorem | Separation, next transaction, all-commit event | Distinct target matching | certificate -> label + ledger | derived | Combined export includes false `(Led-2)` |
| History-uniform transaction success | Intended Haar basin and globalization | Finite-tape amplifier | One commit per stage | valid protected ledger -> fresh tape -> certificate -> valid commit | derived | Protected ledger cannot be regenerated |
| All-commit event | Intended stopped Bernoulli amplification | Chart entry | Complete discovery | per-state success -> \(r\) valid commits | derived | Per-state valid-output event absent |
| Same-target chart entry | Intended signed all-label matching | PL/invariance module | Starts terminal phase | all-commit ledger -> factor-distance bound -> chart | derived | All-commit ledger absent |
| PL constants and invariant chart | Intended direct local Jacobian/Taylor proof | Terminal recurrence | Floor-free convergence | entry -> local geometry -> invariant updates | derived | Entry unavailable; local claim cannot produce its own premise |
| Arbitrary-\(\epsilon\) iterate | Intended terminal recurrence and rate specialization | Final assembly | Public relative Frobenius accuracy | PL -> Armijo contraction -> iteration count | derived | No end-to-end predecessor path |

## Sketch Steps

None

## Dependency Notes

No acyclic target-preserving step graph exists under the binding setting.
The only legal prefix is

\[
\text{primitive assumptions}
\longrightarrow {\cal E}_{\rm inst}
\longrightarrow \{\text{weighted leakage, scalar radial identities,
exact rollback}\}.
\]

The required next edge would be

\[
\text{first separated certificate}
\longrightarrow \text{unique label plus `(Led-1)`--`(Led-4)`}.
\]

Construction (A.1) makes that edge false specifically at `(Led-2)`.  Every
later module consumes the nonempty ledger, directly or through the all-commit
event, so allocating downstream Step IDs would hide a missing derived
invariant.  The terminal PL calculation is only a conditional local module;
it cannot be used backward to create discovery chart entry or repair the
first-commit ledger.

A successor target could remain quantitatively compatible with the same
final rate by admitting a transitive/cubic ledger term and proving a closure
such as \(r\nu_{\rm real}^3=O(\nu_{\rm real}^2/\log r)\).  That is a change
to the formalized generated-output target and must be approved upstream
before stable proof steps are assigned.

## Blockers

1. **The exact pair-local `(Led-2)` target is false.**  The allowed
   three-label construction (A.1) has \(\omega_{13}=0\) but a strict
   separated certificate near label 1 whose mode-A error correlates with
   label 3 by \(h^3+O(h^5)\).  For every fixed certificate exponent and
   ledger constant, the allowed ambient dimension can make smoothing-induced
   direct pair weights and \(P^{-D_{\rm stat}}\) smaller than this structural
   chain.  This is an `idea/theorem-contract defect`, not a local estimate.
2. **The generated invariant fails at the first transition.**  The empty
   ledger is valid, but the first certificate cannot export the required
   nonempty ledger.  Exact rollback controls failed probes only; it cannot
   erase an accepted certificate's structural error.  Thus angular
   reachability, tape amplification, all-label matching, and chart entry have
   no noncircular producer-consumer path.
3. **A same-sketch repair would change the target.**  The weakest visible
   repair is to add a cubic/transitive correlation closure to `(Led-2)` and
   propagate it through `(Led-4)`, or to impose a primitive transitivity
   condition.  The first changes the formalized certificate/ledger output;
   the second changes the primitive source class.  Neither is authorized in
   `/proof-sketch` under the unchanged `setting.md`.
4. **Downstream local plausibility does not cure the blocker.**  Static
   concentration, exact radial bracketing, exact rollback, and a conditional
   same-target PL calculation remain reusable.  Even ideal angular
   globalization and an ideal tape cannot make the false first-commit ledger
   export true, so no full proof roadmap can honestly be declared for sketch
   attempt 1.
