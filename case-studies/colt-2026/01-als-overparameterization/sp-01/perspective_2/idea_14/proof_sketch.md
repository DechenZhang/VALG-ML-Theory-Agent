# Proof Sketch

## Formalized Setting

Sketch attempt 1, initial mode.  Binding hashes:

- idea SHA-256: d0f9aaccd10811d76aefce7e7feb1e6d7b7162ffa5a4771a10482c59ee74b668
- setting SHA-256: 3163dcca89bc0108d13bde12c457a9772cacd15b02131a83b1bc996e16c7bb9d

The exact objective is
\[
 T=\sum_{j=1}^r\tau_j\phi_j,\qquad
 F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2 .
\]
Each mode has public disjoint blocks of size
\(d=\lceil C_d\log(2r)\rceil\); source columns occupy one unknown-permuted
block and are Gaussian-smoothed.  The algorithm scans every one of the
\(r^3\) block triples with one balanced scratch slot, exact restricted loss,
finite Riemannian Armijo updates, observable Block-gate, and exact rollback.
It then releases support restrictions and runs full-space balanced Armijo at
\(k=\lceil C_{\rm rank}r^{3/2}\log^2(2r)\rceil\).  The primitive IDs are
exactly:
\[
\texttt{assump:public-block-partition},\ \texttt{assump:block-supported-source},\
\texttt{assump:base-conditioning},\ \texttt{assump:base-product-balance},\
\texttt{assump:gaussian-smoothing},\ \texttt{assump:dimension-and-smoothing-scale},\
\texttt{assump:smoothing-margin},\ \texttt{assump:rank-regime},\
\texttt{assump:block-tape},\ \texttt{assump:relative-accuracy}.
\]

## Formalized Goal

Uniformly over all deterministic sources satisfying the setting, prove a
once-drawn event \({\cal E}_{\rm inst}\) of probability at least \(1-r^{-10}\)
with nonzero realized columns, the stated polynomial norm and weight bounds,
and \(O(\rho\sqrt{\log(2r)})\) off-block leakage.  On this event derive, for
the matching triple \(\alpha_j^\star\),
\[
R_{\varnothing,\alpha_j^\star}
 =\tau_j^\parallel\phi_j^\parallel+E_j,\quad
\|E_j\|_F\le C_{\rm off}\lambda_{\rm leak},
\]
and \(\|R_{\varnothing,\alpha}\|_F\le\lambda_{\rm leak}\) for every
nonmatching triple, with \(\tau_j^\parallel\) in the polynomial atom range.
Conditional on every such instance, the finite independent tape succeeds with
probability at least \(1-r^{-10}\): exactly one accepted representative is
obtained for each matching triple (up to product-one signs), none for a
nonmatching triple, and the padded state enters a generated same-target
balanced PL chart.  Full-space Armijo reaches
\(\|T-\Psi(Q)\|_F\le\epsilon\|T\|_F\) in work polynomial in
\(n,r,\kappa,\rho_{\rm eff}^{-1},\log(1/\epsilon)\).  At \(\rho=0\), all
leakage terms are exactly zero and the exact-recovery-in-the-limit/no-floor
baseline is preserved.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial
- Progress type: material_partial
- Roadmap shape: six stable rows, step_001 through step_006.
- Concision rule: each row has named subclaims; all theorem-critical gates,
  interfaces, accumulation relations, and boundary traces are explicit below.

## Proof Roadmap

Use direct block-restricted rank-one calculus for the exact loss, finite restart
amplification on \(d\)-dimensional spheres, a disjoint-support prefix ledger,
and a same-target balanced-PL/Armijo chart.  Parent frameworks are
*Guarantees for Alternating Least Squares in Overparameterized Tensor
Decompositions* and *Escaping From Saddle Points: Online Stochastic Gradient
for Tensor Decomposition* (COLT 2015); the branch-specific transfer is in
technical_survey.md.

1. step_001: instance concentration and all-block residual decomposition.
2. step_002: one guarded local transaction, including angular cap, radial
   activation, exact Hessian bound, Armijo budget, and capture accuracy.
3. step_003: conditional tape amplification over all \(r^3\) triples and at
   most \(r\) unresolved prefixes.
4. step_004: observable gate, no false positives, sign handling, and unique
   unresolved assignment.
5. step_005: finite accepted-prefix ledger and projected-to-realized release
   bridge.
6. step_006: generated same-target PL chart, terminal Armijo rate, and rho=0
   specialization.

## Rate Objectives

### R1: instance and block interface

- Objective type: confidence-explicit and structural-parameter explicit.
- Exposed variables: \(n,r,d,\kappa,\Gamma_\star,\rho,\rho_{\rm eff},k,P\),
  \(\lambda_{\rm leak},\tau_{\min},\tau_{\max}\), and every block norm.
- Hidden constants depend only on fixed source/concentration/protocol constants,
  not on \(n,r,\rho,\epsilon\), labels, or trajectories.
- Probability/horizon/norm: one smoothing event, probability \(1-r^{-10}\),
  uniform over prefixes; Euclidean and Frobenius norms.
- Required bridge: Gaussian tails, normalization, multilinear leakage expansion,
  nonmatching floor, and exact rho=0 specialization.
- Baseline: exact rank-one matching channels and no floor at rho=0.

### R2: transaction and tape

- Objective type: initialization-, finite-horizon-, numerical-error-, and
  confidence-explicit.
- Exposed variables: \(d,N_{\rm tx},H_{\rm tx},\delta,\Delta_{\rm tr},
  R_{\max},L_{I,\alpha}\), cap mass \(p_{\rm cap}\ge r^{-C_{\rm cap}}\), and
  proof tolerance \(\zeta_{\rm tx}=P^{-C_\zeta}\) (fixed \(c_H\) is chosen
  sufficiently large).
- Probability/horizon/norm: conditional on each instance, union over all
  \(r^3\) triples and \(r\) prefixes, finite discovery horizon, block-sphere
  and balanced-factor norms; no ambient-\(n\) cap.
- Required bridge: rank-one-plus-leakage basin, radial escape from
  \(g=\delta\), guarded Armijo/Hessian control, and cap-to-candidate error.
- Baseline: the same radial transaction is exact when rho=0.

### R3: finite prefix and release

- Objective type: finite-scope structural and numerical-error explicit.
- Exposed variables: each \(s_t,\Delta_t,L_t\), candidate error \(e_t\),
  leakage, and the total \(r\)-commit error.
- Probability/horizon/norm: inherited conditional tape event; scope \(t\le r\);
  Frobenius tensor and balanced slotwise target-orbit distance.
- Required bridge: disjoint-support invariance, objective telescope, finite
  error charge, and exact projected-to-realized target decomposition.
- Baseline: the leakage bracket is zero at rho=0.

### R4: terminal endpoint

- Objective type: regularity-, terminal-horizon-, and confidence-explicit.
- Exposed variables: generated \(\varrho_{\rm PL},\mu_{\rm PL},L_{\rm PL}\),
  entry error, and \(\epsilon\).
- Probability/horizon/norm: intersection of the two probability events; after
  discovery, \(O((L_{\rm PL}/\mu_{\rm PL})\log(1/\epsilon))\); exact objective,
  balanced orbit distance, and Frobenius residual.
- Required bridge: Gram perturbation, released-state chart membership, Armijo
  recurrence, and probability/runtime specialization.
- Baseline: no additive endpoint term and exact rho=0 limit.

## Assumption Provenance Objectives

| Producer | Primitive inputs | Generated output |
| --- | --- | --- |
| step_001 | public partition, supported source, base conditioning/balance, Gaussian smoothing, dimension, margin | \({\cal E}_{\rm inst}\), norms/weights, Gram and leakage reserves, matching/nonmatching residuals |
| step_002 | step_001 and exact restricted objective | cap mass, local Hessian bound, capture candidate, finite \(\zeta_{\rm tx}\), null behavior |
| step_003 | step_001--002, block-tape, rank-regime | conditional tape event over all triples/prefixes |
| step_004 | step_001--003 and observable gate | gate certificate, no false positives, unique assignment |
| step_005 | step_001, step_003--004, rank-regime | finite ledger and exact-target release interface |
| step_006 | step_001, step_005, balance and accuracy assumptions | chart radius/PL constants, terminal rate, baseline |

No label, alignment, transaction success, basin membership, curvature, or
boundedness conclusion is used as a primitive assumption.

## Mechanism-Source And Boundary Stress

### step_001

- Claim/role: instance event, structural lower bounds, and block isolation.
- Mechanism/source: direct Gaussian norm, leakage, and operator concentration in
  the setting's Euclidean/Frobenius convention plus public disjoint support.
- Source adequacy and bridge: \(\tau_{\min}\ge(2\kappa)^{-3}\); expansion gives
  \(R_{\alpha_j^\star}-\tau_j^\parallel\phi_j^\parallel=E_j\), with every
  residual term bounded by \(C_{\rm off}\lambda_{\rm leak}\); nonmatching
  blocks have no principal atom.
- Defects/scope: one-time leakage only, dominated by smoothing margin; producer
  path is primitive assumptions -> step_001 -> all later steps.
- Entry/boundary: T=0 returns zero; rho=0 makes all defects zero.  If this
  source vanished, matching/nonmatching separation would be false.
- Locality: step-local.

### step_002

- Claim/role: positive score, angular capture, radial nondegeneracy, and signed
  local descent.
- Mechanism/source: direct derivatives of the exact restricted loss on
  \([\delta,2R_{\max}]\times{\cal S}_\alpha\); rank-one principal term from
  step_001.  The variable loss is exactly the tested block loss, yielding the
  displayed \(L_{I,\alpha}\).
- Source adequacy and bridge: a cap around the projected atom has mass
  \(p_{\rm cap}\ge r^{-C_{\rm cap}}\) since \(d=O(\log r)\); radial derivative
  at \(g=\delta\) is \(3\delta^2s>0\) when the atom is above leakage.  Armijo
  backtracking reaches a candidate within \(\zeta_{\rm tx}\) in \(H_{\rm tx}\).
  The produced object is the projected balanced atom; full-target transfer is
  explicitly deferred to step_005.
- Defects/scope: \(E_j\), Taylor remainder, displacement guard, and finite
  Armijo error are locally absorbed; no infinite-horizon claim.
- Entry/boundary: matching first update is active; zero/noise block rolls back;
  rho=0 is exact radial rank-one capture.  Locality: step-local.

### step_003

- Claim/role: conditional finite probability over the complete scan.
- Mechanism/source: independent block-tape starts and step_002 cap mass in
  dimension \(3d=O(\log r)\), independent of ambient \(n\).
- Source adequacy: \((1-p_{\rm cap})^{N_{\rm tx}}\le r^{-13}\) after choosing
  the fixed restart constant; union over \(r^3\) triples and \(r\) prefixes.
- Defects/scope: retry failures are rolled back, so prefix forcing is zero;
  finite horizon only.  Path: step_001 -> step_002 -> step_003.
- Entry/boundary: skipped resolved triples and zero residuals do not activate;
  rho=0 retains positive cap mass.  Locality: step-local.

### step_004

- Claim/role: observable isolation/decrease, rejection, and one-to-one label
  assignment without source labels.
- Mechanism/source: exact identities
  \(s=\langle R_\alpha,u\otimes v\otimes w\rangle\) and
  \(\Delta=g^3s-\frac12g^6\), together with step_001 decomposition and
  step_002 candidate accuracy.
- Source adequacy and bridge: matching candidates satisfy the isolation and
  decrease inequalities; nonmatching blocks have norm at most the floor and
  cannot pass the strict positive-score gate.  The gate certificate is for the
  tested block; \(E_j\) remains explicit for step_005.
- Defects/scope: each triple commits at most once; rollback leaves the prefix
  unchanged.  Path: step_001 -> step_003 -> step_004.
- Entry/boundary: empty-prefix matching score is positive; sign flips are
  fixed before testing; \(s\le0\) or floor failure rolls back.  Locality:
  step-local.

### step_005

- Claim/role: finite invariant, accumulated error, and release-to-target bridge.
- Mechanism/source: pairwise disjoint matching supports, exact rollback, and
  \(F(Q_0)-F(Q_s)=\sum_{t\le s}\Delta_t\ge0\).
- Source adequacy: charge \(e_t\le C\zeta_{\rm tx}\) per accepted slot and use
  the finite \(r\)-slot norm ledger.  With \(\widehat Q\) the produced
  projected state and \(Q^\star\) the consumed full realized target,
  \[
  \Psi(\widehat Q)-T=
  [\Psi(\widehat Q)-\sum_j\tau_j^\parallel\phi_j^\parallel]
  +[\sum_j\tau_j^\parallel\phi_j^\parallel-T].
  \]
  The two terms are bounded by \(Cr\zeta_{\rm tx}\) and
  \(C\sqrt r\lambda_{\rm leak}\), respectively, at the required target scale.
- Defects/scope: finite-budgeted, norm-triangle (no cancellation assumption);
  one-step charge is the gate decrease plus \(e_t\), total scope \(r\).
  Path: step_001 -> step_003 -> step_004 -> step_005.
- Entry/boundary: failed trials leave the state unchanged, unused slots are
  joint zero, and the second bracket is zero at rho=0.  Locality: step-local.

### step_006

- Claim/role: generated same-target chart, PL/coercivity, convergence, and rate.
- Mechanism/source: direct balanced target-Jacobian/Gram calculation using the
  reserve from step_001 and the entry bridge from step_005; Armijo smoothness
  on the \(2R_{\max}\) box.
- Source adequacy and bridge: block-disjoint Gram margin plus smoothing margin
  gives a positive target-side singular-value reserve.  The consumed object is
  the exact realized orbit, not the projected surrogate; step_005 supplies
  the residual-to-target comparison.  PL plus Armijo yields the displayed
  relative endpoint with no additive floor.
- Defects/scope: contractive PL recurrence controls the terminal horizon; the
  chart exit boundary is excluded by its generated radius.  Path:
  step_001 -> step_005 -> step_006.
- Entry/boundary: exact target needs no update; otherwise the first Armijo
  trial is accepted after backtracking.  rho=0 has zero leakage and converges
  to zero residual in the limit.  Locality: step-local.

## Gate Evidence Table

| Obligation | Claim class / role | Mechanism and source match | Raw controls, exported interface, residual-to-target adequacy | Defect/accumulation and producer path | Entry/boundary | Locality / retry |
| --- | --- | --- | --- | --- | --- | --- |
| Instance event and block split | structural lower/support | Gaussian concentration plus primitive block support; direct convention match | \(E_j\le C_{\rm off}\lambda_{\rm leak}\) against projected atom; nonmatching floor; atom scale \(\tau_{\min}\) | margin dominates leakage; step_001 produces event for steps 002--006 | T=0 and rho=0 exact branches | step-local / proof-sketch if scale fails |
| Local transaction | positive score, curvature, descent | exact restricted derivatives and rank-one perturbation; block-sphere cap | cap mass, \(L_{I,\alpha}\), and candidate \(\zeta_{\rm tx}\); projected object is explicitly bridged at step_005 | local Taylor absorption, finite \(H_{\rm tx}\); 001 -> 002 | first radial update active for atom; rollback for zero block | step-local / proof-sketch |
| Tape event | finite probability | independent \(d\)-block starts, \(p_{\rm cap}\ge r^{-C}\) | restart amplification exports candidates for every matching triple | rollback gives zero failed-prefix charge; 001 -> 002 -> 003 | skipped resolved/zero blocks | step-local / proof-sketch |
| Gate and assignment | isolation, signed decrease | exact score/decrease identities and block decomposition | gate exports positive score, isolation, and local decrease; target residual carried explicitly | strict floor rejects nonmatching; one commit per triple; 001 -> 003 -> 004 | sign flip, empty prefix, unresolved prefix | step-local / proof-sketch |
| Prefix/release | finite invariant and target bridge | disjoint supports, rollback, objective telescope | produced projected state -> consumed realized target via two-bracket Frobenius relation; error \(Cr\zeta+C\sqrt r\lambda\) | finite r-slot norm ledger; 001 -> 003 -> 004 -> 005 | unused zero slots; rho=0 second bracket zero | step-local / proof-sketch |
| PL endpoint | basin/coercivity/convergence | direct balanced Jacobian and Gram continuity | released state compared with exact orbit in balanced metric; PL recurrence gives exact residual target | contractive terminal recurrence; 001 -> 005 -> 006 | target stationary; first Armijo trial; rho=0 limit | step-local / proof-sketch |

## Exported Interface Feasibility

| Export | Producer | Raw controls | Defects and residual bridge | Dominance/margin | Consumers | Blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Instance event, atom split, floor | step_001 | Gaussian tails, base conditioning, public supports, smoothing margin | only \(E_j\), controlled by \(\lambda_{\rm leak}\), compared with \(\tau_{\min}\) | smoothing margin and norm reserve | 002--006 | None |
| Local candidate and Hessian bound | step_002 | exact block loss, cap, guards, \(H_{\rm tx}\) | \(E_j\) and Taylor error locally absorbed; projected-to-full bridge deferred | \(p_{\rm cap}\), \(\zeta_{\rm tx}\), \(L_{I,\alpha}\) | 003--005 | None |
| Conditional tape event | step_003 | independent starts and restart count | retry failure only; no target surrogate | \((1-p_{\rm cap})^{N_{\rm tx}}\) and union bound | 004--005 | None |
| Gate/assignment certificate | step_004 | observable score, decrease, floor | nonmatching floor, matching \(E_j\) explicit | \(\eta_{\rm iso},c_{\rm dec},\lambda_{\rm leak}\) | 005 | None |
| Released state and ledger | step_005 | at most r commits, rollback, disjointness | \(Cr\zeta_{\rm tx}+C\sqrt r\lambda_{\rm leak}\) against exact target | finite r budget and smoothing margin | 006 | None |
| PL chart and terminal rate | step_006 | target Gram reserve, entry error, bounded box | exact realized orbit consumed; no endpoint floor | generated \(\varrho_{\rm PL},\mu_{\rm PL},L_{\rm PL}\) | theorem | None |

## Generated Output Flow

| Output | Producer | Consumers | Final use | Dependency path | Provenance | Blocker |
| --- | --- | --- | --- | --- | --- | --- |
| \({\cal E}_{\rm inst}\), norms, Gram/leakage | step_001 | 002--006 | first probability event | primitive -> 001 -> consumers | derived | None |
| block residual split | step_001 | 002,004,005 | isolation and rejection | 001 -> consumers | derived | None |
| local capture, cap, \(L\), \(\zeta\) | step_002 | 003--005 | tape and candidate quality | 001 -> 002 -> consumers | derived | None |
| tape event | step_003 | 004,005 | second probability event | 001 -> 002 -> 003 -> consumers | derived | None |
| gate and assignment | step_004 | 005 | exactly r accepted slots | 001 -> 003 -> 004 -> 005 | derived | None |
| released target bridge | step_005 | 006 | chart entry | 001 -> 003 -> 004 -> 005 -> 006 | derived | None |
| PL recurrence | step_006 | final theorem | relative endpoint/runtime | 001 -> 005 -> 006 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended tool | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Prove \({\cal E}_{\rm inst}\), realized norm/weight/Gram reserves, matching rank-one-plus-\(E_j\) decomposition, and nonmatching floor for all \(r^3\) triples. | None | assump:public-block-partition; assump:block-supported-source; assump:base-conditioning; assump:base-product-balance; assump:gaussian-smoothing; assump:dimension-and-smoothing-scale; assump:smoothing-margin | simultaneous tails and multilinear leakage expansion | Gaussian concentration and direct perturbation | event, \(E_j\), floor, atom range | R1 | PENDING |
| step_002 | Prove one guarded exact-loss transaction from \(g=\delta\) to \(\zeta_{\rm tx}\)-accurate projected atom, including cap mass, Hessian bound, Armijo budget, sign, and rollback. | step_001 | outputs of step_001; assump:rank-regime | tiny-scale radial activation and finite local dynamics | direct rank-one Riemannian calculus and Armijo | cap, local candidate, \(L_{I,\alpha}\), \(\zeta_{\rm tx}\) | R2 | PENDING |
| step_003 | Amplify the cap conditionally over all \(r^3\) triples and at most r unresolved prefixes with probability \(1-r^{-10}\) and polynomial work. | step_001, step_002 | assump:block-tape; assump:rank-regime | adaptive skips and union bounds | conditional restart estimate | tape event | R2 | PENDING |
| step_004 | Prove the observable gate accepts exactly the r matching triples, no nonmatching triple, and assigns each to an unresolved target despite permutations, leakage, signs, and prefix state. | step_001--003 | prior outputs and gate definitions | score/isolation/decrease implications | exact score/decrease identities and perturbation inequalities | gate and assignment certificate | R2/R3 | PENDING |
| step_005 | Telescope the finite accepted prefix, bound accumulated candidate error, preserve nonmatching blocks, and bridge projected representatives to the exact realized target before release. | step_001, step_003, step_004 | assump:rank-regime; prior outputs | finite ledger and surrogate-to-target comparison | objective telescope and two-bracket Frobenius bound | released state and chart-entry error | R3 | PENDING |
| step_006 | Generate a same-target balanced PL chart and prove full-space Armijo reaches arbitrary relative epsilon, with runtime and rho=0 baseline. | step_001, step_005 | assump:base-product-balance; assump:relative-accuracy; prior outputs | positive target Jacobian margin and first update | balanced chart calculation and Armijo integration | chart, PL constants, terminal bound | R4 | PENDING |

## Dependency Notes

The graph is acyclic: step_001 is the sole primitive-event producer; step_002
produces the local interface; step_003 amplifies it; step_004 emits the gate
and assignment; step_005 emits the released target bridge; and step_006 is the
sole terminal producer.  The \(r^3\) scan is contained in step_003 and uses no
source-label query.  Every generated output is produced before its consumers.

## Blockers

None at sketch level.  The transaction lemma, polynomial cap mass, and
projected-to-realized chart bridge are explicit localized obligations; review
may classify any failure as a step-local or sketch/interface defect without
changing the approved theorem contract.
