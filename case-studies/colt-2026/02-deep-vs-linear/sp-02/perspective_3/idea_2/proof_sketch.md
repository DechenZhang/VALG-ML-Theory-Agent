# Proof Sketch

## Formalized Setting

This branch is in exact-goal mode.  Let \(X\) be an arbitrary domain (possibly
empty), let \(H\subseteq\{+1,-1\}^X\) be nonempty, and let one fixed
randomized learner \(A\) make at most \(m\in\mathbb N_0\) unrestricted bounded
adaptive SQ queries of tolerance \(\tau>0\).  For every distribution \(D\),
target \(h\in H\), and nonanticipating policy \(\pi\in\Pi(D,h)\) selecting
responses from the full real tolerance intervals, its expected error over the
learner tape is at most \(\varepsilon<1/4\).  Every complete valid execution,
including a zero-query execution, is mapped by the primitive protocol selector
\(J\) to one member of the same finite, pre-instance catalog
\(G=\{g_1,\ldots,g_L\}\), where
\[
1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The constants \(B\ge1\) and \(k\ge1\) are fixed family constants with the
independence stated in `assump:polynomial-catalog-budget`.  Set
\(\rho=1-2\varepsilon\in(1/2,1]\),
\(\phi_G(x)=(g_1(x),\ldots,g_L(x))\), and
\(s_w(x)=\langle w,\phi_G(x)\rangle\) for \(w\in\Delta_L\).

The proof uses the primitive assumptions
`assump:source-parameter-regime`,
`assump:finite-horizon-randomized-adaptivity`,
`assump:bounded-unrestricted-queries`,
`assump:full-adversarial-tolerance`,
`assump:finite-terminal-catalog`,
`assump:universal-expected-accuracy`, and
`assump:polynomial-catalog-budget` exactly as stated.  In particular, the
catalog condition and its budget are explicit conditional hypotheses, not
derived invariants and not conclusions about an arbitrary unrestricted
response tree.

## Formalized Goal

Prove that the single deterministic catalog-coordinate map satisfies
\[
\forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
\qquad h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>\frac12.
\]
The map must be independent of \(D,h,\pi\), every reply transcript, and the
learner tape; \(w_h\) may depend on \(h,G,\varepsilon\), but on no distribution,
policy, transcript, or tape realization.  Deduce exact pointwise signs and
\[
\operatorname{dc}(H)\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k
\]
without a finite-domain assumption, response grid, favorable reply policy,
exact-expectation oracle restriction, or hidden parameter dependence.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

Use the selected `Policywise finite-output game exactification` framework in
`technical_survey.md`.  Its source lineage is *A General Characterization of
the Statistical Query Complexity* (COLT 2017), for the randomized adaptive
unrestricted-SQ/adversarial-oracle convention, and *Limitations of Learning via
Embeddings in Euclidean Half Spaces* (JMLR 2002), for the deterministic common
Euclidean sign-map target.  The theorem-specific bridge is proved in current
notation from standard finite-dimensional facts rather than imported as a
cited black box.

For arbitrary fixed \(D,h,\pi\), push the learner-tape law through the primitive
terminal selector.  The resulting catalog probabilities give an exact finite
mixture formula for expected loss even though the reply transcript can be
continuous and adaptive.  Universal expected accuracy then gives a
policywise mixture correlation at least \(\rho\), and hence a best catalog
coordinate of correlation at least \(\rho\) for every \(D\).  On a nonempty
finite \(F\subseteq X\), apply that conclusion to every distribution
\(D_r\) supported on \(F\).  Finite matrix minimax, in the order
\[
\min_{r\in\Delta_F}\max_{i\in[L]} r^T A
=\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x,
\qquad A_{x i}=h(x)g_i(x),
\]
produces a mixture satisfying all constraints on \(F\).  The corresponding
closed subsets of the one fixed compact simplex \(\Delta_L\) have the
finite-intersection property, so one \(w_h\) satisfies all point constraints on
arbitrary \(X\).  The identity
\(s_{w_h}=\langle w_h,\phi_G\rangle\) gives exact signs, and the primitive
catalog budget gives the dimension bound without simplification or loss.

This route has no repeated algorithmic invariant, stability event, recurrence,
or accumulated approximation error.  The only global-scope passage is an exact
zero-defect closed-set compactness argument in a fixed finite-dimensional
simplex.

## Rate Objectives

### Pointwise margin target

- Objective type: structural-parameter explicit strict-margin conclusion.
- Exposed variables: \(\varepsilon\) and
  \(\rho=1-2\varepsilon\), together with the catalog dimension \(L\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(X,H,D,h,\pi\), replies, learner coins,
  \(m,\tau,\varepsilon,L,B,k\), or any transcript.
- Fixed quantities: the learner specification, its catalog \(G\), and the
  family constants \(B,k\); \(h\) is fixed only while constructing its own
  weight \(w_h\).
- Probability mode: deterministic final conclusion.  The premise expectation
  is only over \(U\sim\nu\), and it is eliminated by the finite-mixture
  identity in `step_002`.
- Horizon mode: fixed finite horizon, uniformly for every execution with
  stopping depth \(T\le m\), including \(T=0\).
- Norm mode: pointwise signed scalar margin
  \(h(x)\langle w_h,\phi_G(x)\rangle\); no average, surrogate norm, or
  probabilistic embedding metric is used.
- Required bridge or simplification obligations: preserve the equality
  \(1-2\mathbb E_U\mathcal L=\mathbb E_U\mathbb E_D[h\widehat h]\), preserve
  \(\rho\) exactly through finite minimax and compactness, and use
  \(\rho>1/2>0\) for the sign bridge.  No term is dropped or absorbed.
- Baseline invariance obligations: at \(\varepsilon=0\), retain pointwise
  margin \(1\), not merely a positive or approximate margin; at \(L=1\),
  retain the same statement with the unique simplex weight.

### Polynomial dimension target

- Objective type: structural-parameter explicit boundary-corrected catalog
  and dimension bound.
- Exposed variables: \(\operatorname{dc}(H),L,B,k,m,\tau\); \(\varepsilon\)
  remains exposed separately through the margin conclusion.
- Hidden constants may depend on: None.  The displayed \(B,k\) are explicit
  fixed family constants, not hidden constants.
- Hidden constants may not depend on: \(X,H,D,h,\pi\), replies, learner coins,
  \(m,\tau,\varepsilon\), or \(L\).
- Fixed quantities: \(B,k\) and the learner family/catalog convention.
- Probability mode: deterministic.
- Horizon mode: fixed horizon bound \(T\le m\), including \(m=0\).
- Norm mode: exact deterministic dimension complexity as defined in
  `setting.md`; the proof exhibits an \(L\)-dimensional sign map.
- Required bridge or simplification obligations: `step_006` appends the
  primitive inequality
  \(L\le B(1+m/\tau^2)^k\) verbatim to
  \(\operatorname{dc}(H)\le L\).  There is no appendix/public-rate
  simplification, asymptotic notation, probability conversion, or term
  absorption.
- Baseline invariance obligations: when \(m=0\), the exact bound is
  \(L\le B\), not zero; for every finite \(\tau>0\), including arbitrarily
  large tolerance, keep the leading base term; for \(L=1\), exhibit the
  one-coordinate map.  The false no-base rate \(Cm/\tau^2\) is never asserted.

## Assumption Provenance Objectives

- The fixed learner, its random-tape law, its continuous adaptive executions,
  and the static selector \(J\) are primitive conditions supplied by
  `assump:finite-horizon-randomized-adaptivity`,
  `assump:bounded-unrestricted-queries`,
  `assump:full-adversarial-tolerance`, and
  `assump:finite-terminal-catalog`.  `step_001` derives the generated
  probability vector \(p(D,h,\pi)\in\Delta_L\), the exact mixture identity,
  and the nonemptiness of \(\Pi(D,h)\) whenever \(D\) exists; none is assumed
  theorem-facing.
- The policywise correlation lower bound and the policy-independent
  best-coordinate correlation are derived controls produced by `step_002`
  from `step_001` and `assump:universal-expected-accuracy`.
- Nonemptiness of every finite constraint set \(K_{h,F}\) is a derived
  feasibility certificate produced by `step_003`; it is not an admissibility
  assumption.  The local game may use the earlier policy-free correlation
  output only through its declared dependency.
- The all-domain weight \(w_h\) and its uniform pointwise margin are derived
  outputs of `step_004` from the finite certificates.  No global membership,
  compactness conclusion, or coherent family of finite witnesses is assumed.
- The fixed feature map is a deterministic construction from the primitive
  catalog, while its strict-sign certificate is derived in `step_005` from
  `step_004`.  The dimension rate in `step_006` uses only that certificate and
  the primitive, pre-run condition `assump:polynomial-catalog-budget`.
- There are no theorem-facing generated events, trajectory invariants,
  stability/boundedness hypotheses, recurrence conditions, or local-validity
  assumptions.  The theorem is explicitly conditional only on the primitive
  finite-catalog factorization and its primitive polynomial budget.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: generated finite-support law and exact execution-to-catalog
  factorization.
- Theorem role: legal producer of the catalog mixture consumed by the
  correlation step.
- Mechanism source: The primitive selector in
  `assump:finite-terminal-catalog` maps every complete tolerance-valid
  execution \(e(u;D,h,\pi)\), including variable stopping times and \(T=0\),
  to an index in \([L]\).  Under the exact branch convention, \(G\) is a
  finite set of distinct binary functions and all selectors are measurable.
  Pushing \(\nu\) through \(u\mapsto J(e(u;D,h,\pi))\) is a direct
  current-notation construction.  For every actual distribution \(D\), the
  class \(\Pi(D,h)\) is nonempty: the center policy that returns
  \(\mu_q(D,h)\) after each issued query is nonanticipating and belongs to the
  full interval.  It is used only as a nonemptiness witness; all mixture
  identities are proved for an arbitrary \(\pi\).
- Source-to-claim adequacy: For arbitrary fixed \(D,h,\pi\), the selector
  events form a measurable partition of learner-tape space, hence their masses
  are nonnegative and sum to one.  On each event the terminal predictor equals
  the corresponding \(g_i\), so finite conditioning gives exact loss and
  correlation mixtures.  The source convention is identical to the branch
  convention: the policy sees revealed randomized queries but no unrevealed
  coins, and no source-side response alphabet or deterministic-query
  convention is imported.
- Residual-to-target adequacy: The produced object is the exact terminal-output
  law on \(G\); the consumed object is the same catalog mixture under
  \(\mathcal L_{D,h}\) and correlation.  The transfer equalities have residual
  zero in the theorem's loss/correlation interface.
- Key positive/control term or structural source: partition mass
  \(\sum_i p_i=1\) and the exact identity
  \(\widehat h_{u;D,h,\pi}=g_{J(e(u;D,h,\pi))}\).
- Opposing defect terms: arbitrary real replies, reply-adaptive queries,
  label-independent query components, random query choices, and early
  termination alter the partition events and therefore \(p_i\), but create no
  output outside \(G\) and no approximation term.
- Closure/dominance/absorption relation: exact finite disintegration,
  \(\mathbb E_U f(\widehat h)=\sum_i p_i f(g_i)\), for bounded loss or
  correlation functionals \(f\); no absorption is used.
- Accumulation behavior / scope compatibility: There is no iterative defect to
  accumulate.  All at most \(m\) adaptive transitions are summarized by one
  complete execution before the selector is applied, and the selector identity
  is exact for every permitted stopping depth.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The primitive selector and tape law exist before
  \(p\) is consumed; the path is primitive execution/selector -> `step_001` ->
  `step_002`, and it assumes no accuracy or representation conclusion.
- Entry-state / first-update stress result: At \(m=0\) or immediate
  termination \(T=0\), the complete execution has no query-reply transition,
  but \(J\) still returns an index and the same partition identity holds.  For
  a randomized oracle, fix its seed; the arbitrary resulting nonanticipating
  policy is covered tape-by-tape before any averaging.
- Baseline conclusion preserved: The zero-query execution still produces a
  catalog probability vector; it is not discarded or replaced by a
  positive-depth surrogate.
- Producer-consumer provenance: primitive \(J,\nu,e\) -> generated
  \(p(D,h,\pi)\) and mixture identities in `step_001` -> `step_002`.
- Null or boundary regime tested: \(m=0\), \(T=0\), \(L=1\), arbitrary finite
  \(\tau>0\), and a continuous uncountable reply tree.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without the primitive finite selector, the output law need not
  have finite support and the finite-simplex interface is unavailable.  This
  is precisely the explicit conditional boundary of the theorem.
- Repair route if source is unsupported: N/A; the source is the approved
  primitive `assump:finite-terminal-catalog`.

### `step_002`

- Step ID: `step_002`
- Claim class: positive lower bound and universal policy-to-catalog
  correlation.
- Theorem role: supplies the payoff lower bound for every finite-support
  distribution in the minimax game.
- Mechanism source: `step_001`, the direct binary loss-correlation identity in
  the exact convention of `setting.md`, and the primitive uniform bound
  `assump:universal-expected-accuracy`, with positivity supplied by
  `assump:source-parameter-regime`.
- Source-to-claim adequacy: For every fixed valid \(\pi\),
  \[
  \sum_i p_i\mathbb E_D[h g_i]
   =1-2\sum_i p_i\mathcal L_{D,h}(g_i)
   =1-2\mathbb E_U\mathcal L_{D,h}(\widehat h)
   \ge1-2\varepsilon=\rho.
  \]
  Since \(p\in\Delta_L\), the maximum catalog correlation is at least this
  average.  Because the maximum is independent of \(\pi\) and
  \(\Pi(D,h)\ne\varnothing\) (as produced explicitly in `step_001`), this gives
  the policy-free conclusion for every \(D,h\).  The center policy is not used
  to weaken the oracle semantics: the displayed inequality remains valid for
  every continuous adaptive valid policy.  The conclusion interface is exactly
  a lower bound on \(\max_i\mathbb E_D[h g_i]\), not a distribution over
  queries or a source-side discrimination norm.
- Residual-to-target adequacy: The output correlation and the game payoff use
  the same functions \(h,g_i\) and the same distribution \(D\); the displayed
  equality leaves no residual.  Dependence of \(p_i\) on \(D,h,\pi\) does not
  transfer to the value \(\max_i\mathbb E_D[h g_i]\).
- Key positive/control term or structural source: the exact reserve
  \(\rho=1-2\varepsilon>1/2\).
- Opposing defect terms: oracle tolerance, adaptive replies, and policy
  dependence affect which outputs receive mass, but universal accuracy applies
  to that exact arbitrary policy.  There is no \(\tau\)-error term to subtract
  because no oracle answer is approximated in the calculation.
- Closure/dominance/absorption relation: convex-average domination
  \(\max_i c_i\ge\sum_i p_i c_i\ge\rho\).
- Accumulation behavior / scope compatibility: The claim is pointwise in the
  choice of \((D,h,\pi)\); no errors are summed over policies or rounds.
  Universal quantification is inherited directly from the primitive premise.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Accuracy is primitive and the mixture identity is
  produced earlier; `step_002` does not assume a good catalog coordinate.
  Dependency path: assumptions -> `step_001` -> `step_002` -> `step_003`.
- Entry-state / first-update stress result: For a zero-query or stationary
  execution, the same loss identity and accuracy premise are active at the
  terminal output; no first query is needed.  At \(\varepsilon=0\), the
  calculation gives correlation \(1\) exactly.
- Baseline conclusion preserved: Exact learning \(\varepsilon=0\) produces
  \(\rho=1\), and zero-query protocols retain the same correlation statement
  when their primitive accuracy premise is satisfiable.
- Producer-consumer provenance: `step_001` plus primitive accuracy ->
  policywise mixture correlation and policy-free maximum in `step_002` -> all
  distributions \(D_r\) used by `step_003`.
- Null or boundary regime tested: \(\varepsilon=0\), \(\varepsilon\uparrow1/4\)
  from below, \(m=0\), \(L=1\), and arbitrary policy/transcript dependence.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: If the accuracy reserve allowed \(\rho\le0\), a positive sign
  margin would not follow.  The primitive regime excludes this; indeed it
  supplies the stronger \(\rho>1/2\).
- Repair route if source is unsupported: N/A; all sources are primitive or
  produced by `step_001`.

### `step_003`

- Step ID: `step_003`
- Claim class: finite simultaneous lower bound and exact minimax quantifier
  reversal.
- Theorem role: proves \(K_{h,F}\ne\varnothing\) for every finite
  \(F\subseteq X\).
- Mechanism source: For nonempty finite \(F\), apply `step_002` to the genuine
  distribution \(D_r\) with masses \(r\in\Delta_F\), then use the standard
  finite matrix minimax identity (equivalently finite LP strong duality) in
  current notation for the finite payoff matrix
  \(A_{x i}=h(x)g_i(x)\).  Both player sets are nonempty compact finite
  simplices because \(F\ne\varnothing\) and \(L\ge1\); the payoff is bilinear.
- Source-to-claim adequacy: `step_002` gives
  \(\min_r\max_i\sum_x r_xA_{xi}\ge\rho\).  Finite minimax gives exactly
  \[
  \min_{r\in\Delta_F}\max_{i\in[L]}\sum_xr_xA_{xi}
  =\max_{w\in\Delta_L}\min_{r\in\Delta_F}\sum_{x,i}r_xw_iA_{xi}
  =\max_{w\in\Delta_L}\min_{x\in F}\sum_iw_iA_{xi}.
  \]
  The last equality uses that a linear functional attains its minimum over
  \(\Delta_F\) at a vertex.  Thus an attained maximizer lies in
  \(K_{h,F}\).  No infinite-game, measurable-selection, or changing-norm
  convention is used.
- Residual-to-target adequacy: The produced finite-game vector \(w\) is already
  in the theorem's simplex \(\Delta_L\), and its payoff coordinate is exactly
  \(h(x)s_w(x)\).  The transfer from game value to finite pointwise constraints
  is equality with zero residual at the required scale \(\rho\).
- Key positive/control term or structural source: the lower game value
  \(\rho\) from `step_002`.
- Opposing defect terms: the maximizing index may depend arbitrarily on
  \(r\), and the mixture probabilities from `step_002` need not be coherent
  across \(r\).  Finite minimax controls exactly this quantifier-order defect;
  it does not identify \(w\) with any one output distribution \(p\).
- Closure/dominance/absorption relation:
  \(\forall r\,\exists i\) is encoded as
  \(\min_r\max_i\ge\rho\), then exact minimax gives
  \(\exists w\,\forall x\in F\) with payoff at least \(\rho\).
- Accumulation behavior / scope compatibility: Simultaneity over finite \(F\)
  is supplied by one finite game, not by adding pointwise errors.  The
  accumulated margin defect on \(F\) is zero because
  \(\min_{x\in F}h(x)s_w(x)\ge\rho\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: The game lower bound is produced by `step_002`
  before finite feasibility is asserted; no finite constraint feasibility is
  assumed in the minimax premise.  Path: `step_002` -> `step_003` ->
  `step_004`.
- Entry-state / first-update stress result: For \(F=\varnothing\), do not form
  the nonexistent simplex \(\Delta_F\); instead
  \(K_{h,\varnothing}=\Delta_L\ne\varnothing\) directly.  For \(L=1\),
  minimax reduces to the unique catalog coordinate and remains exact.
- Baseline conclusion preserved: At \(\varepsilon=0\), the finite constraints
  retain margin \(1\); no minimax slack is introduced.  At \(L=1\), the
  unique weight is preserved.
- Producer-consumer provenance: policy-free correlation from `step_002` ->
  finite game for each \(F\) -> nonempty closed set \(K_{h,F}\) in
  `step_003` -> FIP in `step_004`.
- Null or boundary regime tested: empty \(F\), singleton \(F\), \(L=1\), and
  \(\rho=1\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without finite \(L\), the fixed finite-simplex minimax/compactness
  interface is unavailable; without correlations for every \(D_r\), the game
  value can be below \(\rho\).  Both sources are supplied under the conditional
  theorem.
- Repair route if source is unsupported: N/A under the current assumptions.

### `step_004`

- Step ID: `step_004`
- Claim class: arbitrary-domain local-to-uniform upgrade and global membership
  certificate.
- Theorem role: produces one distribution- and policy-independent weight
  \(w_h\) satisfying every point constraint.
- Mechanism source: The standard closed-set finite-intersection theorem on the
  fixed compact simplex \(\Delta_L\).  In the exact branch convention,
  \(L<\infty\) and \(L\ge1\), so \(\Delta_L\subset\mathbb R^L\) is nonempty
  and compact.  Each \(K_{h,F}\) is the intersection of finitely many closed
  affine halfspaces with \(\Delta_L\), and `step_003` proves it nonempty.
- Source-to-claim adequacy: For finite sets \(F_1,\ldots,F_n\),
  \(\bigcap_jK_{h,F_j}=K_{h,\cup_jF_j}\ne\varnothing\).  Thus the entire
  closed family has the FIP, and compactness gives a member of its total
  intersection.  Membership in \(K_{h,\{x\}}\) yields the exact constraint at
  each \(x\).  The compact object is the fixed catalog simplex, not \(X\), so
  no topology, finiteness, or probability compactness is imposed on \(X\).
- Residual-to-target adequacy: The produced object is \(w_h\in\Delta_L\); the
  consumed target is the same \(w_h\) in the pointwise catalog score.  The
  finite-to-global relation is
  \(w_h\in\bigcap_FK_{h,F}\), hence every residual
  \(\rho-h(x)s_{w_h}(x)\le0\).  There is no limiting error, surrogate weight,
  or changed metric.
- Key positive/control term or structural source: exact finite feasibility at
  level \(\rho\) and compactness of \(\Delta_L\).
- Opposing defect terms: \(X\) may be uncountable and separately chosen finite
  witnesses need not converge or be mutually coherent.  The FIP equality and
  compactness remove this coherence defect without selecting a sequence,
  witness distribution, or domain topology.
- Closure/dominance/absorption relation: closed-set FIP implication
  \([\forall\text{ finite subfamilies, nonempty intersection}]\Rightarrow
  [\text{nonempty total intersection}]\), with exact union identity for finite
  subfamilies.
- Accumulation behavior / scope compatibility: The declared scope is all
  \(x\in X\).  The local interface has zero constraint violation on every
  finite \(F\); arbitrary many constraints are accumulated by intersection,
  not addition.  Closedness preserves the inequality under limits, and
  compactness supplies the exact global closure property used by the FIP
  theorem.  There is no signed or adversarial forcing term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: Compactness is primitive finite-dimensional
  topology and finite feasibility is an earlier output.  The proof does not
  assume a global \(w_h\), convergence, boundedness beyond \(w\in\Delta_L\), or
  the final sign representation.  Path: `step_003` -> `step_004` ->
  `step_005`.
- Entry-state / first-update stress result: If \(X=\varnothing\), the only
  finite constraint set is empty and the total intersection is
  \(\Delta_L\); choose any \(w_h\), and the all-point conclusion is vacuous.
  No distribution on the empty domain or first update is needed.
- Baseline conclusion preserved: Margin \(\rho\), including \(\rho=1\), is
  passed from every finite constraint to every point with no loss.
- Producer-consumer provenance: `step_003` produces all finite nonemptiness
  certificates -> `step_004` produces \(w_h\) and the all-domain margin ->
  `step_005`.
- Null or boundary regime tested: empty \(X\), arbitrary infinite or
  uncountable \(X\), \(L=1\), and \(\rho=1\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Without a fixed compact parameter set, finite satisfiability need
  not yield global satisfiability.  Here compactness follows directly from the
  primitive finite catalog, so the obstruction is excluded.
- Repair route if source is unsupported: N/A under finite \(L\).

### `step_005`

- Step ID: `step_005`
- Claim class: positive strict-margin source and exact deterministic sign
  representation.
- Theorem role: converts the global mixture into the exact dimension-complexity
  witness.
- Mechanism source: The primitive catalog defines the current-notation map
  \(\phi_G(x)=(g_1(x),\ldots,g_L(x))\), `step_004` supplies \(w_h\), and
  `assump:source-parameter-regime` supplies
  \(\rho=1-2\varepsilon>1/2>0\).
- Source-to-claim adequacy: The score identity
  \(\langle w_h,\phi_G(x)\rangle=\sum_iw_{h,i}g_i(x)=s_{w_h}(x)\) is exact in
  the same coordinates used by every earlier constraint.  If \(h(x)=+1\), the
  score is at least \(\rho>0\); if \(h(x)=-1\), it is at most
  \(-\rho<0\).  Thus no zero/tie sign convention is invoked.
- Residual-to-target adequacy: Produced and consumed objects coincide: the
  finite-game score is exactly the inner product for the theorem map.  The
  same-target residual is zero, and the available strict margin \(\rho\)
  strictly dominates the only relevant threshold, zero.
- Key positive/control term or structural source: the primitive accuracy
  reserve \(\rho>1/2\), preserved without loss by `step_002`-`step_004`.
- Opposing defect terms: There is no approximation or transformed embedding.
  Possible sign ties are excluded quantitatively by the positive margin.
- Closure/dominance/absorption relation:
  \(h(x)s_{w_h}(x)\ge\rho>0\Rightarrow
  h(x)=\operatorname{sign}(s_{w_h}(x))\).
- Accumulation behavior / scope compatibility: All-point scope was already
  produced by `step_004`; this algebraic conversion is pointwise and introduces
  no accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: The map comes from primitive \(G\) and the margin
  from `step_004`; exact representability is concluded only afterward.  Path:
  catalog + `step_004` -> `step_005` -> `step_006`/final theorem.
- Entry-state / first-update stress result: At \(\varepsilon=0\), the active
  margin is \(1\); at \(L=1\), the map has one coordinate and the same sign
  argument applies.  If \(X=\varnothing\), the pointwise sign requirement is
  vacuous.  The formal setting excludes \(H=\varnothing\); if that restriction
  were relaxed, the target quantifier would be vacuous and
  \(\operatorname{dc}(\varnothing)=0\), so no hidden nonempty-target step is
  needed.
- Baseline conclusion preserved: Exact/noiseless accuracy gives the original
  exact sign conclusion with margin \(1\), not an approximate or probabilistic
  surrogate; empty-domain and singleton-catalog cases remain exact.
- Producer-consumer provenance: primitive \(G\) plus global \(w_h\) from
  `step_004` -> strict sign certificate in `step_005` -> dimension witness in
  `step_006` and final theorem.
- Null or boundary regime tested: \(\varepsilon=0\), \(L=1\), empty \(X\),
  and the excluded-but-vacuous \(H=\varnothing\) extension.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: If the preserved lower margin were nonpositive, exact signs could
  fail.  The primitive restriction \(\varepsilon<1/4\) gives a strictly
  stronger positive source.
- Repair route if source is unsupported: N/A.

### `step_006`

- Step ID: `step_006`
- Claim class: explicit structural rate and boundary-preserving specialization.
- Theorem role: closes the advertised dimension bound and its allowed
  parameter regimes.
- Mechanism source: The definition of \(\operatorname{dc}(H)\), the exact
  \(L\)-coordinate witness from `step_005`, and the primitive inequality in
  `assump:polynomial-catalog-budget` under
  `assump:source-parameter-regime`.
- Source-to-claim adequacy: An explicit map into \(\mathbb R^L\) with strict
  signs gives \(\operatorname{dc}(H)\le L\) by the exact definition, and the
  primitive catalog inequality then gives the displayed chain.  The source and
  theorem conventions agree on \(m,\tau,L,B,k\); no universal constant or
  asymptotic notation replaces \(B,k\).
- Residual-to-target adequacy: The produced representation dimension is
  exactly \(L\), the consumed rate target explicitly contains \(L\), and the
  transfer is the exact chain
  \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\).  There is no residual,
  rounding loss, or suppressed term.
- Key positive/control term or structural source: the leading base \(1\) in
  the primitive catalog budget and the lower catalog bound \(L\ge1\).
- Opposing defect terms: A no-base bound would collapse to zero at \(m=0\) and
  would decay incorrectly for large \(\tau\).  Those are not defects to absorb;
  the theorem retains the primitive boundary-correct expression exactly.
- Closure/dominance/absorption relation: direct transitivity of the two exact
  inequalities; no parameter choice, domination threshold, or probability
  conversion.
- Accumulation behavior / scope compatibility: The rate is fixed-horizon and
  deterministic.  There is no limiting or all-time accumulation; the same
  formula is valid for each permitted \((m,\tau)\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: The representation is produced by `step_005`
  independently of the size bound, while the catalog budget is primitive and
  checkable before execution.  Neither assumes the dimension conclusion.
- Entry-state / first-update stress result: At \(m=0\), no update occurs and
  the rate becomes \(\operatorname{dc}(H)\le L\le B\).  At any finite
  \(\tau>0\), including \(\tau>1\), the expression remains defined and at
  least \(B\); no small-tolerance premise is introduced.
- Baseline conclusion preserved: \(m=0\), \(L=1\), and arbitrary finite
  positive \(\tau\) retain the exact dimension conclusion with the leading
  base term.  The step does not substitute the false boundary-unadjusted
  \(Cm/\tau^2\) claim.
- Producer-consumer provenance: strict \(L\)-coordinate representation from
  `step_005` plus primitive catalog budget -> `step_006` -> final theorem.
- Null or boundary regime tested: \(m=0\), \(L=1\), arbitrarily small or large
  finite \(\tau>0\), and \(B=1\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: Catalog finiteness alone gives only \(\operatorname{dc}(H)\le L\);
  without the primitive polynomial budget the advertised polynomial rate does
  not follow.  This is an explicit conditional boundary, not a hidden proof
  obligation.
- Repair route if source is unsupported: N/A; the budget is an approved
  primitive assumption.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(p(D,h,\pi)\in\Delta_L\), exact catalog-mixture identities, and \(\Pi(D,h)\ne\varnothing\) whenever \(D\) exists | `step_001` | Primitive measurable tape law and execution map; primitive selector \(J\) on every valid complete execution; direct center policy \(q\mapsto\mu_q(D,h)\) | Continuous replies, adaptive/random queries, and variable stopping change only the partition; no outside-catalog or approximation defect remains.  The center policy witnesses nonemptiness only and does not replace arbitrary policies | Produced terminal law and consumed catalog law are identical; loss and correlation transfer with residual zero | Pushforward partition and finite conditioning give equality; \(\mu_q(D,h)\in I_q(D,h)\) exactly | Simplex mass \(\sum_i p_i=1\); no positive margin yet | `step_002` | None |
| For every \(D,h,\pi\), \(\sum_i p_i\mathbb E_D[hg_i]\ge\rho\), hence \(\max_i\mathbb E_D[hg_i]\ge\rho\) | `step_002` | `step_001`; primitive universal expected accuracy; exact binary loss-correlation identity | \(p\) depends on \(D,h,\pi\), but the maximum depends only on \(D,h,G\); tolerance creates no extra term | Same \(D,h,g_i\) occur in source and target; equality residual is zero at scale \(\rho\) | \(1-2\mathbb E L\ge1-2\varepsilon=\rho\), then maximum dominates simplex average | \(\rho=1-2\varepsilon>1/2\) | `step_003` for every finite-support \(D_r\) | None |
| \(K_{h,F}\ne\varnothing\) for every finite \(F\subseteq X\) | `step_003` | Policy-free correlation from `step_002` for every \(D_r\); finite \(F,L\); exact payoff matrix | Best index may vary with \(r\); finite minimax controls that quantifier defect.  No coherent \(p(r)\) is assumed | Game vector is the theorem simplex vector on \(F\); payoff equals \(h(x)s_w(x)\), residual zero | Exact finite minimax followed by vertex characterization of \(\min_{r\in\Delta_F}\); empty \(F\) handled as \(K=\Delta_L\) | Preserved \(\rho\) from `step_002` | `step_004` | None |
| One \(w_h\in\Delta_L\) with \(h(x)s_{w_h}(x)\ge\rho\) for every \(x\in X\) | `step_004` | Nonempty closed \(K_{h,F}\) from `step_003`; compact fixed simplex; exact finite-intersection identity | Arbitrary cardinality of \(X\) and incoherent finite witnesses are controlled by FIP; no domain topology or limiting residual is introduced | Produced \(w_h\) is the consumed target weight; singleton constraints give every point and all margin residuals are nonpositive | \(\cap_jK_{h,F_j}=K_{h,\cup_jF_j}\ne\varnothing\), then compact closed-set FIP | Finite constraints retain exact \(\rho\); compactness costs no slack | `step_005` | None |
| Fixed map \(\phi_G\) and exact strict signs for every \(h\) | `step_005` | Primitive catalog; global margin and weight from `step_004`; primitive \(\rho>1/2\) | Only possible sign-tie defect; excluded because the margin is strictly positive | Game score and coordinate inner product are identical; zero residual and same target object | \(h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>0\) implies the exact sign | \(\rho>1/2\) from `assump:source-parameter-regime` | `step_006`, final theorem | None |
| \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\) | `step_006` | Strict \(L\)-coordinate map from `step_005`; primitive catalog budget | The no-base rate has an uncontrolled \(m=0\)/large-\(\tau\) defect and is deliberately not exported; the base-correct bound has no uncontrolled term | Representation dimension and catalog dimension are the same \(L\); exact inequality chain, zero residual | Definition of \(\operatorname{dc}\) plus primitive budget, with no simplification or absorption | Leading base \(1\), \(B\ge1\), and \(L\ge1\) | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Catalog selector \(J\), finite catalog \(G\), and size budget | `assump:finite-terminal-catalog`; `assump:polynomial-catalog-budget` | `step_001`, `step_003`, `step_005`, `step_006` | Fix the finite simplex/map and close the dimension rate | Primitive assumptions -> named consumers | primitive | None; catalog-free derivation is explicitly outside this conditional theorem |
| Terminal catalog law \(p(D,h,\pi)\), exact mixture identities, and policy-class nonemptiness | `step_001` | `step_002` | Eliminate learner randomness without changing reply semantics and justify the policy-free maximum after proving the stronger arbitrary-policy inequality | selector/tape and center interval membership -> `step_001` -> `step_002` | derived | None |
| Policywise mixture correlation and policy-free best-coordinate correlation | `step_002` | `step_003` for each \(D_r\) | Supply the finite-game value lower bound | `step_001` -> `step_002` -> `step_003` | derived | None |
| Nonempty finite constraint sets \(K_{h,F}\) at exact margin \(\rho\) | `step_003` | `step_004` | Supply every finite subfamily intersection for FIP | `step_002` -> `step_003` -> `step_004` | derived | None |
| Global weight \(w_h\in\cap_FK_{h,F}\) and all-domain margin | `step_004` | `step_005` | Give the target-dependent weight with no \(D,\pi\), transcript, or tape dependence | `step_003` -> `step_004` -> `step_005` | derived | None |
| Fixed coordinate map and strict-sign certificate | `step_005` | `step_006`, final theorem | Exhibit the deterministic dimension-complexity representation | primitive \(G\) + `step_004` -> `step_005` -> `step_006`/final | derived | None |
| Exact polynomial dimension chain | `step_006` | Final theorem | Advertised conditional quantitative conclusion and boundary cases | `step_005` + primitive budget -> `step_006` -> final | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every \(D,h,\pi\), the measurable selector partitions learner-tape space into catalog outputs, so \(p(D,h,\pi)\in\Delta_L\) and expected loss/correlation equal the corresponding finite catalog mixtures.  Also exhibit the center policy to prove \(\Pi(D,h)\ne\varnothing\).  These claims remain true for full continuous adaptive replies and \(T=0\). | None | Primitive `assump:source-parameter-regime`, `assump:finite-horizon-randomized-adaptivity`, `assump:bounded-unrestricted-queries`, `assump:full-adversarial-tolerance`, `assump:finite-terminal-catalog` | Keep the policy quantifier and revealed-coin semantics exact while avoiding a response grid, favorable reply, or finite transcript-tree claim; use the center policy only for nonemptiness. | Direct pushforward/disintegration over the finite selector in current notation; bounded finite expectation algebra; direct interval-membership check for the center policy. | Legal generated catalog law, nonempty policy class, and exact mixture interface. | None | `PENDING` |
| `step_002` | For every valid \(D,h,\pi\), \(\sum_i p_i\mathbb E_D[hg_i]\ge\rho\), and therefore for every \(D,h\), \(\max_i\mathbb E_D[hg_i]\ge\rho\), independent of the policy and its output probabilities. | `step_001` | Primitive `assump:source-parameter-regime`, `assump:universal-expected-accuracy`; derived mixture identity from `step_001` | Preserve the universal adversarial-policy quantifier and remove only learner randomness, with no tolerance loss. | Exact binary loss-correlation identity plus maximum-at-least-average. | `obligation:catalog-correlation`. | Pointwise margin target: derive exact \(\rho=1-2\varepsilon\), including \(\rho=1\), with no hidden term or probability conversion. | `PENDING` |
| `step_003` | For each \(h\) and finite \(F\subseteq X\), \(K_{h,F}\) is nonempty; for nonempty \(F\), prove the displayed minimax equality in the correct order, and for empty \(F\) use \(K_{h,F}=\Delta_L\). | `step_002` | Primitive `assump:finite-terminal-catalog`, `assump:universal-expected-accuracy`; derived correlation certificate from `step_002` | Convert \(\forall r\in\Delta_F\,\exists i\) into one \(w\) working for all \(x\in F\), while the best index and policywise output law may vary with \(r\). | Self-contained finite matrix minimax / finite LP duality in current notation; extrema of linear functions on finite simplices. | Finite-simplex feasibility certificate \(K_{h,F}\ne\varnothing\). | Pointwise margin target: retain exact level \(\rho\) on every finite \(F\), with no minimax slack. | `PENDING` |
| `step_004` | For each \(h\), the closed family \(\{K_{h,F}:F\subseteq X\text{ finite}\}\) has the FIP in compact \(\Delta_L\); hence produce one \(w_h\) satisfying \(h(x)s_{w_h}(x)\ge\rho\) for all \(x\in X\), including empty \(X\). | `step_003` | Primitive `assump:finite-terminal-catalog`; derived finite feasibility from `step_003` | Upgrade finite simultaneous feasibility to arbitrary-domain uniform feasibility without an annihilating probability, witness sequence, domain topology, or residual. | Closed-halfspace continuity; Heine-Borel compactness of finite \(\Delta_L\); compact closed-set FIP theorem, all restated in current notation. | `obligation:finite-simplex-exactification` and global \(w_h\). | Pointwise margin target: preserve exact \(\rho\) under the arbitrary-domain upgrade. | `PENDING` |
| `step_005` | With the primitive coordinate map \(\phi_G\), show \(h(x)\langle w_h,\phi_G(x)\rangle\ge\rho>1/2\) and hence exact strict signs for every \(h,x\); audit \(L=1\), \(\varepsilon=0\), empty \(X\), and the excluded-but-vacuous empty-\(H\) extension. | `step_004` | Primitive basic setup, `assump:source-parameter-regime`, `assump:finite-terminal-catalog`; derived \(w_h\)/margin from `step_004` | Verify common-map independence and same-target identity; exclude sign ties without changing the deterministic exact metric. | Direct coordinate identity and two-case binary sign algebra. | One deterministic exact \(L\)-dimensional sign representation. | Pointwise margin target: expose \(\rho>1/2\), retain margin \(1\) at \(\varepsilon=0\), and use no hidden constants. | `PENDING` |
| `step_006` | Apply the definition of dimension complexity and the primitive catalog budget to prove \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\), retaining the exact formula for \(m=0\), all finite \(\tau>0\), \(L=1\), and \(B=1\). | `step_005` | Primitive `assump:source-parameter-regime`, `assump:polynomial-catalog-budget`; derived exact representation from `step_005` | Preserve every exposed parameter and boundary regime; do not silently replace the conditional polynomial bound by a catalog-free or no-base linear rate. | Definition unfolding and transitivity of exact inequalities. | Final conditional theorem and quantitative corollary. | Polynomial dimension target: no hidden constants, auxiliary choice, absorption, or probability conversion; append the primitive bound verbatim. | `PENDING` |

## Dependency Notes

The graph is acyclic and every edge points to an earlier stable step:
\[
\texttt{step\_001}\longrightarrow\texttt{step\_002}
\longrightarrow\texttt{step\_003}\longrightarrow\texttt{step\_004}
\longrightarrow\texttt{step\_005}\longrightarrow\texttt{step\_006}.
\]
`step_001` is the only consumer of the continuous adaptive execution semantics;
it exports an exact finite law rather than a response-tree approximation.
`step_002` is the only consumer of expected accuracy and exports a
policy-independent correlation value.  `step_003` consumes that value for all
finite-support distributions and performs the only minimax quantifier reversal.
`step_004` consumes only the resulting finite closed-set feasibility and
performs the only arbitrary-domain scope upgrade.  `step_005` consumes the
global weight and identifies its score with the fixed catalog-coordinate map.
`step_006` consumes the exact representation and the primitive catalog budget.
Thus final assembly has no missing generated condition, no consumer preceding
its producer, no circular global feasibility premise, and no untracked
approximation or accumulated defect.

## Blockers

None.
