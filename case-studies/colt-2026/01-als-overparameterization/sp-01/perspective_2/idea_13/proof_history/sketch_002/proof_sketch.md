# Proof Sketch

## Formalized Setting

This is sketch attempt 2 for perspective_2/idea_13, in revise_sketch mode.
Binding hashes:

- idea: 57d7f265b8fae0e606cdaa46cd098fcbf766a37670ced28fc4f5f0d980ba9a18
- setting: 6a565a9ed7e0288ad4ea96439f04b0b37ec83fa831f698b91f84aea2a007dcca
- consumed prior failure: perspective_2/idea_12/proof_history/sketch_005/proof_sketch_review.md
  (SHA 59f2675c7dbd300b6563f188fb029bf557c93d5005dcf89f3179367c155d61ef)
- archived predecessor: perspective_2/idea_13/proof_history/sketch_001/proof_sketch.md

The exact source, objective, rank, and target are unchanged:

    T = sum_j tau_j m_(j,A) tensor m_(j,B) tensor m_(j,C)
    F(Q) = 1/2 ||T - Psi(Q)||_F^2
    k = ceil(C_rank r^(3/2) log^2(2r))
    q_j^star = (tau_j^(1/3)m_(j,A), tau_j^(1/3)m_(j,B),
                tau_j^(1/3)m_(j,C)), with joint-zero padding.

The target-blind full-space protocol is exactly the one in setting.md: one
reusable scratch slot, independent Haar pairs, observable residual
contractions, finite safeguarded Riemannian/Armijo block steps, an observable
radial root, exact rollback, balanced freezing, and joint balanced Armijo
descent on the exact objective. Normalized contractions are analysis notation
for exact slice gradients, never an oracle, source-label query, protected
projection, whitening, or algebraic recovery. For every prefix I, all
residual, certificate, candidate-relative transfer, and ledger quantities use
setting.md. The sole numerical source is e_I=P^(-D_stat) mu_I after a
passing certificate; labels, signs, injections, power gaps, history arrays,
and resolvents are proof outputs.

The eleven primitive IDs are:
assump:base-column-conditioning, assump:base-product-balance,
assump:two-mode-orthogonality, assump:c-mode-gram-margin,
assump:gaussian-smoothing, assump:dimension-regime,
assump:smoothing-scale, assump:smoothing-bridge, assump:rank-regime,
assump:random-tape, and assump:accuracy-range.

## Formalized Goal

On a once-drawn event E_inst with probability at least 1-r^(-10), derive all
nonvanishing, norm, product-weight, pair/triple Gram, R-src, two-mode,
Frobenius, and exact-target reserves in setting.md. Conditional on E_inst and
T != 0, prove

    (S) static source -> (C) cyclic power/tape
      -> (T) certificate/candidate-relative ledger -> (P) same-target PL.

The conditional tape failure is at most r^(-10) after the finite union over
unresolved labels and prefixes. Discovery, power, certificate, and ledger work
are polynomial in n,r,k,kappa,rho^(-1) and independent of epsilon; terminal
work is polynomial in those variables and log(1/epsilon). The endpoint is
||T-Psi(Q)||_F <= epsilon ||T||_F for 0 < epsilon < 1, with separate
instance/tape probabilities, exact T=0 early return, R_I=0 no-production
stop, and exact H_M=e_t=0 no-floor recovery. Scope remains the explicit
two-mode-orthogonal, near-orthogonal-third-mode, balanced-weight subclass.

## Sketch Identity

- Sketch attempt: 2
- Retry mode: revise_sketch
- Progress type: material_partial
- Roadmap shape: five stable rows: S=1, C=2, T-cert=3, T-ledger=4, P=5.
- Concision rule: row 2 has coefficient and finite-implementation local units;
  row 4 has resolvent and typed-transition local units. These are shared
  producer-consumer interfaces, not omitted obligations.

## Proof Roadmap

The selected framework is the cyclic observable tensor-power/order-statistic
route in technical_survey.md, followed by the candidate-relative J-aware
ledger and a direct balanced target-Jacobian chart. Exact first-two-mode
orthogonality makes ideal residual contractions coefficient-diagonal. The
common n^(-1/2) Haar coordinate scale cancels in normalized ratios. A
coefficient-relative perturbation bound must be proved before any
gamma_pow is claimed.

1. step_001 (S): one smoothing event, static kernels, exact target, and
   coefficient/two-mode identities.
2. step_002 (C): signed order-statistic winner, coefficient squaring recurrence,
   finite Armijo contraction realization, derived gamma_pow, and tape event.
3. step_003 (T-cert): observable certificate, mixed-support Hessian selector,
   singleton assignment, and matching errors.
4. step_004 (T-ledger): candidate-relative resolvent, Raw-J-rel, typed
   shrinking-prefix transition, objective telescope, and public ledger.
5. step_005 (P): actual-to-target orbit entry, first-exit PL chart, terminal
   rate, probability/runtime specialization, and baseline.

## Rate Objectives

### R1: structural event

Confidence- and structural-parameter explicit, one-time and prefix-uniform.
Expose n,r,k,kappa,rho,Gamma_star,P,nu_real and every R-src/two-mode
operator, l1, rootwise-2, and Frobenius norm. Hidden constants are fixed
source/proof/protocol constants only. Probability is over smoothing and is at
least 1-r^(-10). Exact target, T=0, and H_M=0 are baseline bridges.

### R2: cyclic activation and tape

Confidence-, initialization-, and algorithm/horizon-explicit. Expose
n,r,L_pow,H_pow,zeta_pow,N_pow,P,nu_real, order gap Delta_ord, relative
defect xi_cyc, and derived gamma_pow. Prove an order event of mass at least
r^(-C_pow), with n^(-1/2) scale canceled after normalization. Use
L_pow=ceil(C_L log(2r)), H_pow=P^(d_pow), zeta_pow=P^(-D_pow), and
N_pow=ceil(C_tape r^(C_pow+2) log(2r)). Probability is conditional on the
fixed instance; union only over the finite unresolved-prefix scope; failed
trials roll back.

### R3: transaction and raw ledger

Finite-horizon and numerical-error explicit for at most r commits. Expose
e_t,D_t,eta_t,chi_t,b_s, nu_real^2+r nu_real^3, every charge-row term, and
rootwise-2/l1 interfaces. Keep e_t D_t^2 <= P^(-D_stat) Delta F_t,
sum Delta F_t <= F(empty), and sum chi_t <= P^(-D_stat) raw. The
shrinking-domain map and lower/upper LP type are proved in row 4.

### R4: same-target endpoint

Regularity-, confidence-, and terminal-horizon explicit. Expose
g_-,g_+,Gamma_star,varrho_PL,L_ch,mu_PL,epsilon and actual-to-orbit ledger
error. Use the exact balanced orbit distance, balanced gradient, objective, and
Frobenius residual; terminal work is O((L_ch/mu_PL) log(1/epsilon)).
The bridge is actual committed slots to the exact permutation/product-one-sign
orbit; no projected or surrogate target and no additive endpoint floor.

### Explicit rate-contract fields

| Objective | Hidden constants may depend on / may not depend on | Fixed quantities | Probability and horizon mode | Norm mode | Required bridge and baseline |
| --- | --- | --- | --- | --- | --- |
| R1 | Fixed source/concentration/proof constants / n,r,k,kappa,rho,epsilon, instance, prefix | Eleven primitive IDs and P,k definitions | Smoothing only, at least 1-r^(-10); one event uniform for every s<=r | R-src/two-mode operator, l1, rootwise-2, Frobenius | Gaussian-to-realized Gram/target bridge; exact target, T=0, H_M=0 |
| R2 | Fixed Haar/order-statistic/recurrence constants / n,r and realized prefix | L_pow,H_pow,zeta_pow,N_pow and protocol constants | Conditional independent tape; finite L_pow/block/tape horizons and union over <=r prefixes | Coefficient ratios, directional masses, sphere distance, cycle residual | Order event -> normalized winner -> gamma_pow; zero/failed probes rollback |
| R3 | Fixed ledger/transfer constants / n,r,epsilon and raw e_t terms | At most r commits, D_stat, D_cap, transfer thresholds | Conditional on R1/R2; finite prefix horizon s<=r | Rootwise-2/l1 arrays and objective/Frobenius telescope | Raw-J-rel with typed restriction and public chi substitution; no chi absorption |
| R4 | Fixed chart/Armijo constants / n,r,kappa,rho,epsilon and tape seed | g_-,g_+,varrho_PL,L_ch,mu_PL | Intersection of separate R1/R2 events; terminal horizon O((L_ch/mu_PL) log(1/epsilon)) | Balanced orbit distance, balanced gradient, objective, Frobenius residual | Actual slots -> exact orbit -> PL -> relative residual; no endpoint floor |

## Assumption Provenance Objectives

| Producer | Primitive IDs | Generated output |
| --- | --- | --- |
| step_001 | base-column-conditioning, base-product-balance, two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, dimension-regime, smoothing-scale, smoothing-bridge | E_inst, realized factors/weights, Gram reserves, R-src, two-mode, exact target. |
| step_002 | two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, random-tape, rank-regime; LP_s only conditionally | coefficient recurrence, order event, finite Armijo map, gamma_pow, tape event; all derived. |
| step_003 | outputs of 001--002 and base-product-balance | observable certificate, proof-generated p/pi/signs, matching errors, e_I. |
| step_004 | outputs of 001/003 and rank-regime | resolvent, typed LP_s, Raw-J-rel, raw/public ledger and telescope. |
| step_005 | outputs of 001--004, base-product-balance, rank-regime, accuracy-range | orbit entry, PL endpoint, probability/runtime, baseline. |

No generated invariant is consumed as a primitive assumption.

## Mechanism-Source And Boundary Stress

### step_001 (S)

- Claim/theorem role: static conditioning, coefficient frame, exact target.
- Mechanism/source convention: direct Gaussian norm/Gram concentration in the
  normalized-column/Frobenius conventions, deterministic A/B orthogonality,
  and the stated C-mode margin. The source and consumed target are the same
  realized tensor objects.
- Residual-to-target adequacy: T,m,tau feed F, every R_I, the ledger, and the
  PL chart without transformation.
- Positive/control and defects: diagonal weights and pair/triple reserves
  control H_M,K_M,S; smoothing tails are controlled on E_inst.
- Scope/closure: one-time event, primitive IDs -> 001 -> all consumers,
  noncircular. Entry/null traces are T=0 early return and exact H_M=0.
- Locality/baseline/flow: step-local; exact representation/no-floor
  preserved; output feeds 002--005. Concentration failure routes to
  proof-sketch revision.

### step_002 (C)

- Claim/theorem role: theorem-critical activation and conditional probability.
- Mechanism: with two orthogonal modes define
  Y_j=|<m_(j,B),v0><m_(j,C),w0>| and signed masses h_j^ell. The ideal
  cyclic map has

      rho_j^(ell+1) <= C_tau (rho_j^ell)^2,

  while every legal realized prefix must prove

      rho_j^(ell+1) <= C_tau (rho_j^ell)^2 + xi_cyc,
      xi_cyc <= c_cyc Delta_ord.

  A top-versus-second event Y_(1)>=(1+Delta_ord)Y_(2), with Y_(1) of
  order 1/n up to polylog factors, has mass at least r^(-C_pow) by the
  Haar-coordinate product order-statistic calculation. After O(log r) cycles
  this yields a winner mass gamma_pow>0 and a fixed nonwinner gap; gamma_pow
  is derived, not assumed.
- Finite implementation subunit: exact slice derivatives, retractions,
  radial Armijo root, radius guard, ||BA_M-C_M||<=zeta_pow, and
  H_pow=P^(d_pow) cover tiny g0=delta and contraction scales. Failed trials
  rollback exactly. Independent tape amplification gives
  (1-p)^(N_pow)<=r^(-11) per unresolved prefix.
- Accumulation/source compatibility: the relative defect is damped by the
  squaring map over finite L_pow; current Haar pairs are independent of prior
  prefixes, and returned directions use the same realized target frame as
  the certificate.
- Entry/boundary/baseline: u0=e1 may be outside the target span, but a
  nonzero first contraction activates the first update. Zero contractions,
  ties, negative scores, guard exhaustion, and R_I=0 fail/stop. Exact
  contractions have xi_cyc=0.
- Locality/flow: step-local for recurrence/Armijo, with a sketch/interface
  defect if only an absolute perturbation is available. Outputs gamma_pow,
  cycle residual, and tape event to 003--005.
- Honest obstruction: the coarse two-mode remainder
  O(nu_real^2 ||T||_F) is not coefficient-relative. For allowed n >> r^2 it
  can exceed the typical ||T||_F/n coefficient and destroy polynomial
  activation. If exact contraction algebra plus typed history cannot prove
  xi_cyc <= c_cyc Delta_ord, this is an idea/theorem-contract defect and
  must route to idea revision; the missing inequality is not assumed.

### step_003 (T-cert)

- Claim/theorem role: target-blind singleton assignment and candidate source.
- Mechanism: observable score, radial/angular errors, cycle residual,
  separation, and normalized angular curvature. A tangent selector gives,
  for two unresolved coefficients, a negative mixed Hessian term
  -c_mix |a_j a_l|/||T||_F plus explicit Gram/history/numerical defects.
  The gamma_pow margin dominates, so positive curvature leaves one unresolved
  label. Singleton, tie, zero, sign, and last-label cases are explicit.
- Source/target adequacy: proof-generated p, pi, signs, and E_q compare the
  actual balanced candidate with exact atom tau_p phi_p in the same ledger
  metric; the certificate reads only current residual/factors.
- Accumulation/closure: a pass removes one label; rollback leaves LP_s
  unchanged and charges zero. Step-local conditional on 001--002.
- Entry/boundary/baseline: positive score/root and nonzero radius are required;
  R_I=0, nonpositive gain, failed curvature/separation, or radial guard emits
  no label and no e_I. Exact target errors vanish.
- Flow/repair: exports p, pi, signs, matching errors, and e_I to 004. A
  selector dominance failure routes to proof-sketch, not an unstated premise.

### step_004 (T-ledger)

- Claim/theorem role: candidate-relative transfer, generated history closure,
  and finite all-commit error.
- Mechanism/source convention: nonnegative Neumann series for T_plus with
  both induced norms at most 1/4, then exact multilinear expansion with the
  tested-mode J diagonal. Use the typed record

      LP_s=(I_s,pi_s,sigma_s,U_s,Q_s,R_s,A_s,b_s,chi_<s),
      U_s=[r]\pi_s(I_s),  b_s >= ||A_s||_root,2.

  A commit emits

      A_(s+1)=restrict_(U_(s+1))(A_s+Delta A_s),
      chi_<s+1=chi_<s+chi_s,
      b_(s+1)=b_s+beta_s >= ||A_(s+1)||_root,2.

  It exports

      ||z_q||_root,2 <= C_z(nu^2+r nu^3+b_s+sqrt(r)e_I),
      ||z_q||_root,2 <= C_z((1+C_A Gamma_star)(nu^2+r nu^3)
                            + C_A chi_<s + sqrt(r)e_I).

  Raw chi is never absorbed into nu^2. The charge is the diagonal-aware
  capture-charge-row from setting.md; objective decrease gives the raw
  e_t D_t^2 and sum-Delta-F bounds.
- Residual-to-target adequacy: H,J,K,S,A_s,E_i use the same realized target
  frame, so the resolvent controls actual candidate errors relative to exact
  atoms, not a transformed proxy.
- Scope/closure: beta_s>=0 is the one-step charge, sum chi_s is finite by
  objective telescope, and at most r commits are allowed. LP_0 is the
  noncircular producer; each accepted transition emits the next record.
  Rollback preserves it identically.
- Entry/boundary/baseline: at s=0, A_0=b_0=chi_<0=0; first-transition
  charge uses J_M(p,p)=1. Last-label and R_I=0 form no resolvent. H=e=0
  makes structural/numerical forcing and chi zero.
- Locality/flow: step-local conditional on 003; Raw-J-rel, LP_s, beta_s,
  chi_s, and ledger feed 005 and later prefixes. A missing restriction or
  required absorption is a sketch/interface defect.

### step_005 (P)

- Claim/theorem role: same-target entry, terminal convergence, public rate,
  probability, and baseline.
- Mechanism/source convention: direct balanced target-Jacobian/Taylor
  calculation under pair/triple Gram reserves, then first-exit path control
  and Armijo PL decrease with g_-,g_+,varrho_PL,L_ch,mu_PL from setting.md.
- Residual-to-target adequacy: actual committed slots satisfy an entry bound
  with separate structural, history, and raw numerical terms, each below
  varrho_PL/4; no projected/whitened surrogate is used. In-chart PL decrease
  implies the exact Frobenius endpoint.
- Scope/closure: terminal forcing is zero after entry; path length prevents
  first exit, with horizon O((L_ch/mu_PL) log(1/epsilon)). Probability is the
  intersection of E_inst and the step-002 tape event, with polynomial restart.
- Entry/boundary/baseline/flow: exact target and F=0 are stationary; unused
  joint zeros are in the orbit metric; T=0 returns before this row. H=e=0
  has exact recovery and no floor. The row consumes 004 and exports endpoint,
  runtime, probability, and baseline.

## Exported Interface Feasibility

| Interface | Producer | Controls/defects | Same-target bridge | Dominance/slack | Consumers | Missing blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E_inst, R-src, two-mode, target | 001 | Gaussian event, A/B orthogonality, C margin; H,K,S defects | Realized T,m,tau are consumed directly | Fixed pair/triple/Frobenius reserves | 002--005 | None at sketch level |
| gamma_pow, cycle residual, tape | 002 | Haar product order, xi_cyc, Armijo tolerance | Winner is an exact target-frame atom | Squaring, Delta_ord, finite L_pow; p>=r^(-C_pow) | 003/004/005 | Relative-defect go/no-go |
| Certificate and e_I | 003 | Observable tests; mixed Hessian defects | E_q is actual slot minus exact tau_p phi_p | gamma_pow/4, e_I, separation 1/4 | 004 | None conditional on 002 |
| Raw-J-rel, LP_s, raw ledger | 004 | H,J,K,S,A_s,b_s,e_I, telescope | Same target frame; raw chi retained | Neumann <=1/4; typed restriction; finite beta | 005/next prefixes | None if transition is proved |
| Orbit entry and PL constants | 005 | Actual tuple, ledger, Gram reserves | Actual slots -> exact orbit | Entry <=varrho_PL/4; first-exit path | terminal Armijo | None conditional on 004 |
| Endpoint/probability/runtime/baseline | 005 | PL decrease and separate events | Exact objective -> exact residual | Geometric rate; no floor | final theorem | None |

## Generated Output Flow

| Output | Producer | Consumers/final use | Dependency path | Provenance | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- |
| Instance event, static kernels, target | 001 | 002--005; structural theorem clause | primitive IDs -> 001 -> all | derived | None |
| Coefficient recurrence, order event, gamma_pow | 002 | 003/004; activation and selector | 001 -> 002 -> 003/004 | derived | Relative defect must be discharged |
| Armijo cycle/tape event | 002 | 003 and 005; discovery probability/runtime | 002 -> 003 -> 005 | derived | None after budget check |
| Certificate label/signs/errors/e | 003 | 004; one commit and ledger input | 001 -> 002 -> 003 -> 004 | derived | None |
| Resolvent, LP_s, b_s, chi_s, ledger | 004 | 005 and next prefix; chart entry | 003 -> 004 -> 005 | derived | None if restriction explicit |
| Orbit entry and PL decrease | 005 | final theorem; endpoint | 004 -> 005 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended tool/source | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive E_inst, realized conditioning, R-src, two-mode, exact target, and null/baseline traces. | None | The eight source/statistical IDs: assump:base-column-conditioning, assump:base-product-balance, assump:two-mode-orthogonality, assump:c-mode-gram-margin, assump:gaussian-smoothing, assump:dimension-regime, assump:smoothing-scale, assump:smoothing-bridge. | Uniform Gaussian/Gram transfer. | Direct concentration and multilinear Gram expansion. | E_inst, static kernels, target/reserves. | R1; explicit parameters and probability 1-r^(-10). | PENDING |
| step_002 | Prove coefficient squaring recurrence, polynomial order mass, finite BA_M/radial Armijo coupling, gamma_pow, and all-prefix tape amplification. | step_001 | assump:two-mode-orthogonality, assump:c-mode-gram-margin, assump:gaussian-smoothing, assump:random-tape, assump:rank-regime; LP_s conditional only. | Relative defect versus n^(-1), tiny delta, signs/zeros/guards. | Tensor-power/order-statistic analysis plus exact slice-gradient Armijo/Taylor. | Delta_ord, xi_cyc, gamma_pow, cycle/tape event. | R2; L_pow=O(log r), H_pow=P^(d_pow), N_pow=O(r^(C_pow+2)log r). | PENDING |
| step_003 | Turn each passing certificate into one proof-generated unresolved assignment and matching/radial/angular errors. | step_001, step_002 | Derived outputs and assump:base-product-balance. | Mixed-support Hessian selector and all boundary branches. | Direct product-sphere Hessian/coefficient selector. | p, pi, signs, E_q, e_I. | R3 local certificate scales. | PENDING |
| step_004 | Form relative resolvent and Raw-J-rel; close typed shrinking-prefix transition, raw-chi bridge, objective telescope, and all-commit ledger. | step_003 | Derived outputs and assump:rank-regime. | Same-target transfer, J diagonal, noncircular finite accumulation. | Nonnegative Neumann, multilinear expansion, finite charge/telescope. | Theta,z,A_s,b_s,chi_s,beta_s, ledger. | R3; every e_t,D_t,eta_t,chi_t explicit; no nu^2 absorption. | PENDING |
| step_005 | Prove actual orbit entry, balanced PL/first-exit, terminal endpoint/rate/runtime, separate probabilities, and exact/noiseless/T=0/R=0 baseline. | step_002, step_004 | assump:base-product-balance, assump:rank-regime, assump:accuracy-range plus derived outputs. | Actual target bridge and public rate specialization. | Direct balanced Jacobian/Taylor/PL and Armijo decrease. | Orbit entry, varrho_PL,L_ch,mu_PL, endpoint/runtime/probability/baseline. | R4; O(log(1/epsilon)) terminal horizon. | PENDING |

## Dependency Notes

The graph is acyclic: 001 produces the static event; 002 produces the only
activation/tape interface; 003 produces a candidate; 004 produces the next
typed prefix and finite ledger; 005 consumes the ledger and terminates.
Rollback is exactly the preceding prefix and contributes no hidden charge.
Rows 2 and 4 are merged only because their local subunits share one exported
producer-consumer interface.

## Blockers

1. **Coefficient-relative cyclic defect (possible idea/theorem-contract
   defect).** The required output of 002 is xi_cyc <= c_cyc Delta_ord for
   every legal prefix. The coarse two-mode remainder
   O(nu_real^2 ||T||_F) does not imply this for allowed n >> r^2, where a
   typical order coefficient is O(||T||_F/n). Exact contraction algebra,
   conditional random projection control of history errors, and the typed
   ledger must supply the relative bound. If they do not, the polynomial tape
   and fixed gamma_pow claim are false under the unchanged setting; route to
   idea revision rather than add the inequality as an assumption.
2. **Finite Armijo exponent (local sketch/interface check).** A fixed d_pow
   must cover inverse delta^3, contraction norm, guard Lipschitz, and zeta_pow
   because g0=delta can be tiny. If no polynomial exponent works, repair row
   2; do not replace the finite algorithm by an ideal map.

No target, objective, rank, probability protocol, runtime class, or exact
baseline is weakened by this retry.
