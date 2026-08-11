# Proof Sketch

## Formalized Setting

The branch studies the exact asymmetric CP least-squares objective
\[
 F(X,Y,Z)=\frac12\left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F^2
\]
under `assump:base-column-conditioning`,
`assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`,
`assump:dimension-regime`, `assump:smoothing-scale`,
`assump:smoothing-margin`, `assump:rank-regime`, `assump:random-tape`, and
`assump:accuracy-range`.  The algorithmic rank is
\(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\).  The protocol activates
one balanced projected Haar probe at a time, promotes only on the observable
event \({\sf Cert}(q;I)\), discards unsuccessful probes, and switches after
\(r\) promotions to unprojected protected-only Armijo descent.

For a protected set \(I\), the setting defines
\[
 R_I^0=T-\sum_{i\in I}\psi(q_i),\qquad
 \beta_{U_I}(I)=G_{U_I}^{-1}\Phi_{\star,U_I}^*R_I^0.
\]
Every accepted certificate is required to produce a unique unresolved label
\(j_*\in U_I\) and, among other conclusions, the coefficient-purity export
\[
 \|\beta_{U_I\setminus\{j_*\}}(I)\|_2
 \le C_{\rm pur}(\zeta_{\rm cert}+\mu_{\rm real})
 |\beta_{j_*}(I)|. \tag{P-beta}
\]
The certificate also requires positive curvature of the full balanced tangent
space, including its common radial direction.

## Formalized Goal

The requested result is a `material_partial` theorem for the
modewise-near-orthogonal smoothed special case.  It must derive, rather than
assume, the once-drawn instance event, a conditional per-block certificate
probability \(p_{\rm cert}\ge(nr)^{-c_{\rm cert}}\), all \(r\) injective
promotions from the finite independent tape, coefficient purity, protected
span preservation, the displayed trust-region accepted-step lower bound, and
the finite discard reserve.  After pruning, it must derive entry into a
same-target balanced PL chart and attain arbitrary relative error in
\({\rm poly}(n,r,\rho^{-1},\kappa)\log(1/\epsilon)\) work with no additive
floor.  Arbitrary or merely well-conditioned non-orthogonal bases and
simultaneous all-slot GD must remain explicitly open.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No target-faithful proof roadmap exists under the current `setting.md`.
Before any dynamic or probability lemma is invoked, the first-promotion
version of (P-beta) contradicts the exact coefficient identity
\(\beta_{[r]}(\varnothing)=\tau\) on an allowed, uniformly quantified
near-orthogonal class.  A second direct calculation shows that the positive
Hessian portion of \({\sf Cert}\) has the wrong radial sign for the intended
small-radius feature-growth phase.  Consequently, smoothed instance
geometry, trust-region globalization, finite-tape accounting, and terminal
PL analysis cannot be connected to the theorem through a legal first
promotion.  The selected-framework disposition in `technical_survey.md` is
therefore `None`.

## Rate Objectives

- Objective type: structural-parameter explicit sufficient-rank and runtime
  target.
- Exposed variables: \(n,r,k,\rho^{-1},\kappa,\epsilon\),
  \(D_{\rm cert},d_{\rm probe},c_{\rm cert},C_{\rm probe}\), the finite tape
  sizes \(N_{\rm probe},N_{\rm rst}\), the horizon \(H_{\rm probe}\), the
  trust radius \(\Delta_{\rm tr}\), and the certificate scales
  \(\theta,\zeta_{\rm cert},\gamma_{\rm cert},\sigma_{\rm cert}\).
- Hidden constants may depend on: the fixed numerical constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_{\rm rank}\) and fixed proof
  constants whose independence of \(n,r,k,\rho,\kappa,\epsilon\) is stated.
- Hidden constants may not depend on: \(n,r,k,\rho,\kappa,\epsilon\), the
  realized smoothed instance, the tape realization, or the target label.
  In particular, interpreting \(C_{\rm pur}\) as growing like
  \(r^{3/2}\log r\) is not a valid hidden-constant repair of (P-beta).
- Fixed quantities: the absolute exponents and numerical protocol constants
  are fixed before the instance and tape are drawn.
- Probability mode: probability at least \(1-r^{-10}\) for the once-drawn
  instance event, followed conditionally by tape success at least
  \(1-r^{-10}\); the two sources of randomness remain separate.
- Horizon mode: fixed finite discovery horizon followed by a terminal
  \(O(\log(1/\epsilon))\) convergence horizon.
- Norm mode: Frobenius residual relative to \(\|T\|_F\), operator norm for
  Gram deviations, Euclidean norm for coefficient purity, and quotient
  balanced-coordinate distance for terminal chart entry.
- Required bridge or simplification obligations: prove the finite-tape
  amplification and work bound from \(p_{\rm cert}\), prove the displayed
  accepted-step lower bound from \(G_{\rm box}^\star,L_{\rm box}^\star\),
  and prove a public specialization to
  \(k=\Theta(r^{3/2}(\log r)^2)\) and
  \({\rm poly}(n,r,\rho^{-1},\kappa)\log(1/\epsilon)\) work.  These bridges
  are downstream of the blocked first-promotion interface.
- Baseline invariance obligations: preserve the exact balanced
  representation of \(T\), prune all scratch slots before terminal descent,
  and retain arbitrary \(0<\epsilon<1\) with no probe-reserve floor.  The
  current obstruction does not authorize weakening this baseline.

## Assumption Provenance Objectives

- The realized Gram, column-norm, target-norm, nonzero-target, and exact
  balanced-representation properties are derived instance outputs expected
  from `assump:base-column-conditioning`,
  `assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:smoothing-margin`.
- Certificate occurrence, target purity, injective label assignment,
  protected-span preservation, repeated promotion, and PL-chart entry are
  derived invariants, not primitive conditions.  No step can be assigned to
  produce them because (P-beta), the first required target-purity output, is
  false already at \(I=\varnothing\).
- The accepted-step lower bound and finite discard reserve are direct
  protocol calculations under a guarded box.  They do not produce target
  purity or repair the missing first promotion.
- Terminal chart invariance and no-floor PL contraction would be local
  derived invariants after a valid same-target entry.  Treating that entry as
  an assumption would violate the unconditional material-partial goal.

## Mechanism-Source And Boundary Stress

- Step ID: N/A -- Blocker 1; no viable step graph exists.
- Claim class: structural support, norm purity, and injective target
  assignment.
- Theorem role: first legal promotion and every later coupon-collector
  transition.
- Mechanism source: the proposed source is the observable certificate plus
  realized near-orthogonality.  The exact current-notation source convention
  is \(R_\varnothing^0=T=\Phi_\star\tau\) and
  \(G_\star=\Phi_\star^*\Phi_\star\).
- Source-to-claim adequacy: failed.  Since \(\|G_\star-I\|_{\rm op}\le1/32\),
  \(G_\star\) is invertible, and direct algebra gives
  \[
  \beta_{[r]}(\varnothing)
   =G_\star^{-1}\Phi_\star^*\Phi_\star\tau=\tau. \tag{1}
  \]
  The certificate depends on \(q\), but the exported object in (1) does not.
  Thus no certificate can turn the full unresolved residual coefficient
  vector into a one-channel-pure vector.
- Residual-to-target adequacy: failed.  The produced object is the full
  unresolved residual coefficient \(\tau\), whereas the consumed interface
  is a one-target coefficient vector.  Their off-channel residual is exactly
  \(\tau_{-j}\), with no \(q\)-dependent term available to dominate it.
- Key positive/control term or structural source: none.  Gram invertibility
  preserves, rather than removes, all unresolved coefficients.
- Opposing defect terms: \(r-1\) positive unresolved coefficients.
- Closure/dominance/absorption relation: impossible at the required scale.
  For the allowed \(\kappa=1\) class, the goal's own instance bounds imply
  \(1/8\le\tau_j\le8\).  Also
  \(\zeta_{\rm cert}+\mu_{\rm real}\le[10r\log(2r)]^{-1}\).  Hence for every
  \(j\),
  \[
  \|\tau_{-j}\|_2\ge\frac{\sqrt{r-1}}8,
  \qquad
  C_{\rm pur}(\zeta_{\rm cert}+\mu_{\rm real})|\tau_j|
  \le\frac{4C_{\rm pur}}{5r\log(2r)},
  \]
  which contradicts (P-beta) for all sufficiently large \(r\) when
  \(C_{\rm pur}\) is rate-valid and independent of \(r\).
- Accumulation behavior / scope compatibility: unsupported at the first
  transition; no repeated-scope budget is relevant before a legal first
  promotion exists.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: failed.  The certificate is supposed to
  produce purity, but its raw controls do not affect the exported
  \(\beta(\varnothing)\).
- Entry-state / first-update stress result: at the allowed all-zero initial
  state, \(I=\varnothing\), and before the first probe update (1) already
  holds.  Probe motion changes \(q\) and \(R_I(q)\), but not the defined
  \(R_I^0\) or \(\beta_{[r]}(\varnothing)\).
- Baseline conclusion preserved: the exact identity
  \(T=\Phi_\star\tau\) is preserved; it is precisely what exposes the
  contradiction.  It cannot be replaced by a one-target residual surrogate.
- Producer-consumer provenance: proposed producer \({\sf Cert}\); consumers
  are target-map construction, protected-span update, the next conditional
  block, all \(r\) promotions, chart entry, and final assembly.  The producer
  does not export the consumed object.
- Null or boundary regime tested: orthogonal/equal-scale base factors with
  \(\kappa=1\), which are expressly inside the special case.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; no first injective target assignment is available.
- Repair route if source is unsupported: upstream idea revision must replace
  (P-beta) by a probe-dependent target-side quantity, or change the promotion
  success criterion.  Either changes the formalized theorem contract.

- Step ID: N/A -- Blocker 2; no viable step graph exists.
- Claim class: positive curvature certificate and dynamic feature activation.
- Theorem role: observable stopping rule that is meant to certify an
  informative small probe.
- Mechanism source: direct Hessian calculation in the exact balanced CP
  convention.  Because \(u,v,w\) lie in the protected complements,
  \(\xi=(u,v,w)\) lies in \({\cal T}_{\rm bal}(q)\).
- Source-to-claim adequacy: failed for the intended growth regime.  Along the
  legal curve \(((g+t)u,(g+t)v,(g+t)w)\), direct differentiation gives
  \[
  \langle\xi,H_{\rm tan}(q;I)\xi\rangle
   =9g^4-6g\,s(q). \tag{2}
  \]
  Therefore \(\lambda_{\min}(\widehat H_{\rm tan})>0\) forces
  \(s(q)<3g^3/2\), while target-aligned small-radius growth is driven by a
  positive score much larger than its represented mass \(g^3\).
- Residual-to-target adequacy: failed.  Positive angular curvature may help
  identify a direction, but positivity on the full balanced tangent also
  tests the radial direction and excludes the negative radial curvature that
  drives a small informative probe outward.
- Key positive/control term or structural source: the self-interaction term
  \(9g^4\).
- Opposing defect terms: the informative residual score contributes
  \(-6g s(q)\).
- Closure/dominance/absorption relation: the certificate can hold only in the
  low-score regime \(s(q)=O(g^3)\).  In particular, its score floor and
  \(g\le2\theta\) require
  \(\|T\|_FP^{-40}\le12\|T\|_FP^{-D_{\rm cert}}\); for
  \(D_{\rm cert}>40\) and sufficiently large \(P\), the certificate is empty.
- Accumulation behavior / scope compatibility: source-excluded rather than
  contractive; the first accepted certificate can fail to exist, so restart
  accumulation cannot create success.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: failed.  Neither Armijo descent nor more tape
  blocks changes the pointwise sign identity (2).
- Entry-state / first-update stress result: at a small target-aligned seed,
  \(s(q)>0\) drives radial growth, but the same first-order source makes the
  radial Hessian negative whenever \(s(q)>3g^3/2\).
- Baseline conclusion preserved: in the one-channel orthogonal specialization,
  the pure target direction has radial curvature
  \(-6g\tau+15g^4<0\) below target scale; the current certificate does not
  recover this baseline activation behavior.
- Producer-consumer provenance: the Hessian test is part of the proposed
  producer \({\sf Cert}\); every promotion and the tape amplification consume
  it.
- Null or boundary regime tested: pure target direction in the orthogonal
  baseline and the limit \(g/\tau^{1/3}\to0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes; a target-aligned growing probe is rejected rather than
  promoted.
- Repair route if source is unsupported: change the certificate to an angular
  tangent test or a saddle-index/signature test, or certify at target-scale
  radius.  Each changes the algorithm/procedure in `setting.md`.

- Step ID: N/A -- Blocker 3; no viable step graph exists.
- Claim class: repeated-promotion closure, chart entry, and exact no-floor
  terminal convergence.
- Theorem role: compose discovery with the final relative-error theorem.
- Mechanism source: finite independent tape, deterministic discard reserve,
  protected-span projection, and conditional balanced-chart PL geometry.
- Source-to-claim adequacy: these sources are potentially adequate only after
  a legal first certificate.  They cannot supply the missing purity or change
  the Hessian sign.
- Residual-to-target adequacy: absent because no certified protected state is
  produced for comparison with \({\cal Z}_{\rm bal}(T)\).
- Key positive/control term or structural source: conditional PL decrease
  after exact same-target chart entry.
- Opposing defect terms: missing first-promotion output and therefore missing
  injective protected set.
- Closure/dominance/absorption relation: no finite restart budget can amplify
  a zero or unsupported per-block success interface.
- Accumulation behavior / scope compatibility: unsupported; the proposed
  Bernoulli/coupon-collector recurrence has no valid success probability.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: failed at
  certificate -> purity -> promotion -> chart entry.  Terminal PL cannot be
  used backward to produce its own entry state.
- Entry-state / first-update stress result: all slots are zero and no
  protected label exists; the first probe cannot legally export the required
  first protected label.
- Baseline conclusion preserved: the exact balanced representation and
  arbitrary-\(\epsilon\) no-floor endpoint remain required, but are
  unreachable under the current discovery interface.
- Producer-consumer provenance: finite tape -> claimed certificates ->
  promotions -> chart entry -> terminal Armijo PL -> final theorem.  The
  first arrow has no target-compatible output.
- Null or boundary regime tested: zero protected slots and more than one
  comparable unresolved target.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes.
- Repair route if source is unsupported: `/subagent-idea-generator` followed
  by re-formalization.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Realized Gram and norm event | Gaussian concentration plus `assump:base-column-conditioning`, `assump:modewise-near-orthogonality`, `assump:gaussian-smoothing`, `assump:dimension-regime`, `assump:smoothing-scale`, `assump:smoothing-margin` | Base Gram margin, independent Gaussian columns, dimension lower bound | Gaussian normalization errors are controlled by the smoothing margin; no trajectory terms occur | Same realized factors define both event and theorem tensor | Transfer base margin to the displayed realized margins by a finite union bound | Explicit `1/(100r log(2r))` source margin | All later claims | None at sketch-obstruction level |
| Accepted-step lower bound | Direct local smoothness calculation from the trust-region protocol | Guarded factor box, `G_box^star`, `L_box^star`, displacement cap | Gradient and Hessian upper bounds are controlled on the box; target purity is uncontrolled and unrelated | Same objective and actual trial path; no surrogate target | Dyadic backtracking yields `min{(16L_box^star)^-1, Delta_tr/(4G_box^star)}` if a legal updated state exists | Guarded box and explicit cap | Probe dynamics and terminal descent | None locally, but it cannot produce a certificate |
| Finite discard reserve | Direct tensor-norm accounting | One active slot below `2 theta`, finite probes and blocks | Discard tensor mass is controlled by `a_cert`; certificate success is uncontrolled | Reserve controls represented-tensor path only, not target assignment | Sum at most `C_probe N_probe a_cert` per block and `N_rst` blocks | Fixed finite tape | Discovery accounting | None locally, but it cannot amplify missing success |
| First certificate -> unique target and beta purity | Proposed observable certificate | `zeta_cert`, score/sign tests, Hessian test, realized Gram bounds | The full off-channel vector `tau_-j` is persistent, fixed, and independent of the probe; no certificate field controls it | Produced `beta(empty)=tau`; consumed target is one-channel-pure beta in Euclidean norm; residual `tau_-j` is not dominated | Required inequality is contradicted by (1) on the allowed comparable-weight class | No positive purity margin exists | First promotion, span update, all later blocks | Exact beta identity blocker |
| Certificate -> informative growth state | Positive normalized tangent Hessian and score floor | Current residual, factors, protected projectors | Radial score term has the adverse sign in (2); self-interaction is only `O(g^4)` | Full balanced tangent certificate is not an angular target certificate | Positivity forces `s(q)<3g^3/2`, opposite to the target-growth interface | No compatible small-radius slack | First promotion | Radial Hessian sign blocker |
| `p_cert >= (nr)^-c_cert` and restart amplification | Claimed per-block probe dynamics | Finite fresh Haar tape and conditional independence | Probability amplification is controlled only after a positive per-block event; event feasibility is uncontrolled | No legal certificate object reaches the target-map consumer | `N_rst` can amplify `p_cert`, but cannot create it | Claimed certificate lemma, currently absent | All promotions and runtime theorem | First-certificate blockers |
| Same-target chart entry and terminal PL | Claimed output of all `r` promotions | Exact balanced representation, near-orthogonal Gram, protected factors | Local Taylor terms may be controlled in a chart; distance of the generated protected state to that chart is uncontrolled | No generated protected state exists to compare with `Z_bal(T)` | A local PL inequality cannot prove its own entry condition | Would come from injective promotions and polishing | Final arbitrary-epsilon theorem | Missing producer path from discovery |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized good-instance geometry | Primitive assumptions plus a prospective concentration lemma | Every dynamic and terminal module | Conditions the fixed-instance tape theorem | assumptions -> instance event | derived | None at obstruction level |
| First unique target map and beta purity | No legal producer under current setting | protected-span update, next block, chart entry | Injective recovery of all targets | `Cert` -/-> purity -> promotion | derived | Equation (1) contradicts the output |
| Positive per-block certificate probability | No legal producer under current setting | restart amplification | High tape success probability and polynomial work | probe law -/-> valid certificate -> restarts | derived | Certificate-to-target and radial-Hessian interfaces fail |
| Protected-span preservation | Intended certificate/purity bridge | later projected probes | Keep unresolved channels visible | valid promotion -> span bound -> next probe | derived | First valid promotion is absent |
| Finite reserve | Direct finite-tape accounting | discovery path bound | Prevent discarded probes from exhausting the path budget | cap + finite tape -> reserve | derived | None locally; reserve does not imply success |
| Same-target PL entry | Intended output of all promotions and polishing | terminal Armijo descent | Exact no-floor relative-error convergence | promotions -> chart entry -> PL | derived | No promotion-to-chart producer path |
| Arbitrary-epsilon terminal iterate | Conditional local PL plus accepted-step lower bound | final theorem assembly | Required relative Frobenius output | chart entry -> invariant PL recurrence -> stopping time | derived | Conditional mechanism lacks generated entry |

## Sketch Steps

None.

## Dependency Notes

The intended acyclic chain would be
\[
 \text{instance geometry}\to\text{probe certificate}\to
 \text{target purity/span update}\to\text{repeated promotions}\to
 \text{same-target chart}\to\text{terminal PL}.
\]
The chain breaks at the first certificate export.  Adding downstream steps
for trust-region descent, reserve accounting, coupon collection, or terminal
PL would not repair the producer-consumer mismatch and would incorrectly
classify an idea-level contradiction as local proof work.

## Blockers

1. **The required first-promotion beta-purity interface is false.**  At
   \(I=\varnothing\), exact algebra gives
   \(\beta_{[r]}(\varnothing)=\tau\).  For the allowed \(\kappa=1\),
   comparable-weight near-orthogonal class, its off-channel norm is
   \(\Omega(\sqrt r)\), whereas the required right side is
   \(O((r\log r)^{-1})\) for a rate-valid \(C_{\rm pur}\).  This cannot be
   repaired by a different proof decomposition because the exported object
   is independent of the active probe.
2. **The Hessian certificate has the wrong radial sign for small-probe
   discovery.**  The common radial direction is included in the stated
   balanced tangent, and (2) shows that positive tangent Hessian requires
   \(s(q)<3g^3/2\).  The informative feature-growth regime has
   \(s(q)\gg g^3\).  Replacing the full tangent test by an angular test,
   using a saddle-signature certificate, or moving certification to target
   scale changes the algorithm/procedure.
3. **All end-to-end outputs are downstream of the two failed interfaces.**
   The trust-region lower bound and finite reserve can remain valid local
   modules, and a same-target terminal PL theorem may remain valid
   conditionally.  They cannot produce the first injective promotion, so no
   positive per-block certificate probability, restart amplification, chart
   entry, or arbitrary-\(\epsilon\) theorem follows under the unchanged
   setting.  The smallest repair target is `/subagent-idea-generator`; the
   new idea must retain the explicit remaining arbitrary-base and
   simultaneous-GD gaps if it continues to claim `material_partial` progress.
