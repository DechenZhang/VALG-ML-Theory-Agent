# Proof Sketch

## Formalized Setting

This is sketch attempt 3 for perspective_2/idea_13 in revise_sketch mode.
The binding idea and setting are unchanged.

- idea SHA-256:
  57d7f265b8fae0e606cdaa46cd098fcbf766a37670ced28fc4f5f0d980ba9a18
- setting SHA-256:
  6a565a9ed7e0288ad4ea96439f04b0b37ec83fa831f698b91f84aea2a007dcca
- consumed predecessor review:
  perspective_2/idea_13/proof_history/sketch_002/proof_sketch_review.md,
  review SHA-256 38f5f89782c1567bacbe303da361c4e99bb2f3c794117316bb29eeefe12b8f46.

For realized nonzero columns,
\[
 T=\sum_{j=1}^r\tau_j\phi_j,\qquad
 \phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C},\qquad
 F(Q)=\tfrac12\|T-\Psi(Q)\|_F^2.
\]
The exact balanced target is
\[
 q_j^\star=(\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},
             \tau_j^{1/3}m_{j,C}),
\]
with joint-zero padding to
\(k=\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\rceil\).
The source has orthonormal normalized first two modes, a near-orthogonal
third mode, polynomial column conditioning, balanced product weights, and
the Gaussian smoothing in setting.md. The eleven primitive assumption IDs
are exactly:

assump:base-column-conditioning, assump:base-product-balance,
assump:two-mode-orthogonality, assump:c-mode-gram-margin,
assump:gaussian-smoothing, assump:dimension-regime,
assump:smoothing-scale, assump:smoothing-bridge, assump:rank-regime,
assump:random-tape, and assump:accuracy-range.

The protocol is unchanged and target-blind. At a frozen prefix I it uses the
observable residual R_I, one reusable balanced scratch slot, fresh Haar pairs,
the displayed residual contractions, finite Riemannian/Armijo block updates,
an observable radial solve, exact rollback, balanced freezing, and then
full-space balanced Armijo descent on the exact objective. A normalized
contraction is analysis notation for an exact slice-gradient map, not a
source-label query, protected projection, whitening, simultaneous
diagonalization, or algebraic recovery. Labels, signs, injections, gaps,
history arrays, resolvents, and error bounds below are generated outputs.

## Formalized Goal

On one smoothing event E_inst, with probability at least 1-r^(-10), derive
the nonvanishing, norm, weight, pair/triple Gram, R-src, two-mode,
Frobenius, and exact-target reserves in setting.md. Conditioned on this
event and T != 0, prove the four-block chain (S)->(C)->(T)->(P):

1. (S) supplies the realized source frame and two-mode contraction identities.
2. (C) supplies a cyclic coefficient recurrence, a fixed power gap, and a
   conditional polynomial-mass tape event uniformly over at most r unresolved
   prefixes.
3. (T) turns every passing observable certificate into one unresolved
   assignment, a candidate-relative Raw-J-rel bound, and a finite capture
   ledger.
4. (P) enters the same-target balanced PL chart and reaches
   ||T-Psi(Q)||_F <= epsilon ||T||_F for 0 < epsilon < 1.

Discovery and ledger work are polynomial in n,r,k,kappa,rho^(-1) and
independent of epsilon; terminal work is polynomial in these quantities and
log(1/epsilon). Instance and tape probabilities remain separate. The T=0,
R_I=0, rollback, and exact H_M=e_t=0 no-floor branches are retained.

## Sketch Identity

- Sketch attempt: 3
- Retry mode: revise_sketch
- Progress type: material_partial
- Roadmap shape: five stable top-level rows:
  S=step_001, C=step_002, T-cert=step_003, T-ledger=step_004, P=step_005.
- Concision rule: each merged row exposes stable lemma-sized subunits and one
  exported interface; no quantitative obligation is hidden in a row label.

## Proof Roadmap

The selected framework is the cyclic observable tensor-power/order-statistic
route in technical_survey.md, followed by the candidate-relative J-aware
ledger and a direct balanced target-Jacobian chart. Exact A/B orthogonality
diagonalizes ideal residual contractions. The common n^(-1/2) Haar scale is
removed only after a normalized order-statistic calculation; the
coefficient-relative perturbation test below is a required proof interface,
not an assumption.

1. step_001 (S): one smoothing event, static kernels, realized conditioning,
   two-mode identities, exact target, and null branches.
2. step_002 (C): fixed-prefix fresh residual decomposition, order event,
   signed squaring recurrence, finite Armijo/radial coupling, and tape.
3. step_003 (T-cert): score/gain/curvature/separation tests and mixed-support
   selector for one unresolved label.
4. step_004 (T-ledger): candidate-relative resolvent, typed shrinking-prefix
   transition, raw/public ledger, and objective telescope.
5. step_005 (P): exact-orbit entry, first-exit PL chart, terminal rate,
   probability/runtime specialization, and baseline.

## Rate Objectives

### R1: structural event

One-time, confidence- and structural-parameter explicit. Expose
n,r,k,kappa,rho,Gamma_star,P,nu_real and every R-src/two-mode operator,
rootwise-2, l1, and Frobenius reserve. Hidden constants are fixed
source/concentration/proof constants only. Probability is over smoothing and
is at least 1-r^(-10), uniformly for every prefix. Exact target, T=0, and
H_M=0 are baseline bridges.

### R2: cyclic activation and tape

Initialization-, confidence-, numerical-, and horizon-explicit. Expose
L_pow=ceil(C_L log(2r)), H_pow=ceil(P^(d_pow)), zeta_pow=P^(-D_pow),
N_pow, the order scale, Delta_ord, xi_cyc, and derived gamma_pow. The order
event has p_pow >= r^(-C_pow), with common n^(-1/2) scale cancelled only
in the proof. A probe has at most 3 L_pow H_pow accepted updates and the
same order of backtracking trials; failed trials roll back.

### R3: transaction and raw ledger

Finite-horizon and numerical-error explicit for at most r commits. Expose
each e_t,D_t,eta_t,chi_t,b_t, every charge-row term, and both rootwise-2/l1
interfaces. Prove e_t D_t^2 <= P^(-D_stat) Delta F_t,
sum Delta F_t <= ||T||_F^2/2, and the raw-to-public substitution without
absorbing chi_t into nu_real^2.

### R4: same-target endpoint

Regularity-, confidence-, and terminal-horizon explicit. Expose
g_-,g_+,Gamma_star,varrho_PL,mu_PL,L_ch,epsilon and the actual-to-orbit
ledger error. Use the exact balanced orbit metric, balanced gradient,
objective, and Frobenius norm. Terminal work is
O((L_ch/mu_PL) log(1/epsilon)); no additive endpoint floor is permitted.

| Objective | Probability/horizon | Exposed quantities | Required bridge |
| --- | --- | --- | --- |
| R1 | smoothing only; one event, 1-r^(-10), all prefixes | n,r,k,kappa,rho,Gamma_star,P,nu_real and R-src/two-mode norms | Gaussian-to-realized Gram and exact-target bridge |
| R2 | conditional fresh tape; finite L,H,N and union over at most r prefixes | p_pow,Delta_ord,xi_cyc,gamma_pow,d_pow,zeta_pow | order event -> recurrence -> finite map -> tape |
| R3 | stopped finite prefix s <= r | e_t,D_t,eta_t,chi_t,b_s,nu^2+r nu^3 | typed LP_s transition and raw/public ledger |
| R4 | event intersection; terminal O(log(1/epsilon)) | chart radius, gains, PL/Armijo constants, epsilon | actual slots -> exact orbit -> PL -> residual |

## Assumption Provenance Objectives

| Producer | Primitive assumptions | Generated output |
| --- | --- | --- |
| step_001 | base-column-conditioning, base-product-balance, two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, dimension-regime, smoothing-scale, smoothing-bridge | E_inst, realized frame/weights, Gram reserves, R-src, two-mode, exact target |
| step_002 | two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, random-tape, rank-regime; LP_0 is emitted by step_001b and later LP_s is the prior accepted transition | order event, recurrence, finite map, gamma_pow, tape event |
| step_003 | outputs of step_001 and step_002, base-product-balance | certificate, label/sign/injection, matching errors, e_I |
| step_004 | outputs of step_001 and step_003, rank-regime | resolvent, typed LP_s, b_s,beta_s,chi_s, raw/public ledger |
| step_005 | outputs of step_001--step_004, base-product-balance, rank-regime, accuracy-range | orbit entry, PL endpoint, runtime/probability, baseline |

No generated alignment, label, basin, recurrence, or boundedness fact is a
primitive assumption.

## Mechanism-Source And Boundary Stress

### step_001 (S)

- Source: direct Gaussian norm/Gram concentration, deterministic A/B
  orthogonality, the C-mode margin, and multilinear expansion in normalized
  realized-factor/Frobenius conventions.
- Export: E_inst, H_M,J_M,K_M,S, R-src, two-mode, and the exact realized T;
  all later rows consume the same target, with no transformed proxy.
- Scope and closure: one-time, prefix-uniform, primitive IDs -> step_001 ->
  all consumers; no iterative accumulation.
- The protocol initialization emits the empty typed record
  LP_0=(empty,empty,empty,[r],Q_0,R_0,0,0,0). This is a direct
  step_001b output. For s>0, LP_s is supplied only by the immediately
  preceding accepted step_004b transition in the finite induction.
- Entry and boundary: nonzero-column failure is outside E_inst, T=0 returns
  before discovery, and H_M=0 gives exact target/no-floor. Locality is
  step-local and baseline is preserved.
- Source-to-claim adequacy: the concentration convention is the normalized
  realized-factor convention used by every downstream object. Residual-to-
  target adequacy is literal equality with the realized T. Noncircular
  closure status: primitive IDs -> step_001a/b. Producer-consumer path:
  step_001 -> all later rows.

### step_002 (C)

- step_002a fixes a legal prefix record
  LP_s=(I_s,pi_s,sigma_s,U_s,Q_s,R_s,A_s,b_s,chi_<s) and writes the exact
  decomposition
  \[
    R_{I_s}=\sum_{j\in U_s}\tau_j\phi_j+E_s^{hist},\qquad
    E_s^{hist}=-\sum_{i\in I_s}E_i.
  \]
  Every residual contraction is split into unresolved diagonal signal, str
  (off-diagonal Gram/C leakage), hist (E_s^hist), and arm (finite update)
  terms. Conditioning is on the fixed prefix and fresh pair only.
- Define
  Y_j=|<m_(j,B),v_0><m_(j,C),w_0>|, Y_(1)>=Y_(2), and
  delta_gap=1/4. The direct Haar calculation must produce
  \[
    Y_{(1)}\ge(1+\delta_{\rm gap})Y_{(2)},\qquad
    Y_{(1)}\ge {\lambda_{\rm ord}\over n\log^2(2r)}
  \]
  with conditional probability p_pow >= r^(-C_pow), for fixed positive
  lambda_ord,C_pow.
- Define the explicit order scale and perturbation budget
  \[
    a_{\rm ord}(I)=\tau_{\min}{\lambda_{\rm ord}\over n\log^2(2r)},\qquad
    \Delta_{\rm ord}(I)=
    {a_{\rm ord}(I)\over C_{\rm ord}\sqrt r\,
      \max\{\|R_I\|_F,\|T\|_F P^{-D_{\rm cap}}\}}.
  \]
  For normalized signed coefficients, the required conditional lemma is
  \[
    \rho_{\ell+1}\le C_{\rm sq}\rho_\ell^2+\xi_{\rm cyc},\qquad
    \xi_{\rm cyc}=\xi_{\rm str}+\xi_{\rm hist}+\xi_{\rm arm}
    \le c_{\rm cyc}\Delta_{\rm ord}(I). \tag{C-rel}
  \]
  Each xi is the corresponding contraction error divided by a_ord(I). The
  finite accumulation is explicit:
  \[
    \Xi_L\le\xi_{\rm cyc}\sum_{t=0}^{L-1}
    \prod_{q=t+1}^{L-1}2C_{\rm sq}\bar\rho_q\le2\xi_{\rm cyc},\qquad
    \bar\rho_{\ell+1}=C_{\rm sq}\bar\rho_\ell^2+\xi_{\rm cyc},
  \]
  while 2 C_sq bar_rho_l <= 1/2. With L_pow=ceil(C_L log(2r)), the proof
  must derive rho_L <= (8 sqrt(r))^(-1), hence
  gamma_pow=[1+(r-1)(8 sqrt(r))^(-2)]^(-1/2) >= 1/2, plus a fixed
  nonwinner gap. Gamma_pow is derived, not assumed.
- step_002c is the finite implementation interface. On
  [delta,2 R_max], choose a fixed d_pow satisfying
  \[
    P^{d_{\rm pow}}\ge C_{\rm upd}L_{\rm pow}
    (1+\|R_I\|_F+R_{\max}^4)\delta^{-6}
    \max\{P^{D_{\rm pow}},P^{D_{\rm root}},1\}. \tag{C-arm}
  \]
  This covers at most 3 L_pow H_pow accepted updates/trials, preserves the
  guard, and gives ||BA_M-C_M||_2 <= zeta_pow and e_rad <= P^(-D_root).
  Its contribution is
  xi_arm <= C_arm L_pow H_pow (zeta_pow+P^(-D_root))/a_ord(I), included
  in (C-rel). Zero contractions, undefined retractions, negative scores,
  guard exhaustion, and failed radial brackets roll back exactly.
- step_002d uses independent probes. Once the per-prefix event and finite
  certificate path are established, (1-p_pow)^(N_pow) <= r^(-11), and a
  stopped union over at most r prefixes gives tape failure <= r^(-10).
  Exhaustion is rollback, not success.
- Positive mechanism: exact A/B diagonal contraction. Opposing defects are
  str, hist, and arm; fresh-pair conditional concentration is the
  noncircular producer. The allowed entry u_0=e_1 activates on a nonzero
  first contraction; zero contraction fails safely; exact contractions have
  xi_cyc=0. Locality is step-local if (C-rel) is proved, otherwise
  sketch/interface defect.
- Source-to-claim adequacy: each normalized coefficient is formed from the
  exact current residual contraction, not a source-side oracle. Residual-to-
  target adequacy is the a_ord(I)-scale comparison in C-rel. Noncircular
  closure status: fixed LP_s and a fresh independent pair produce the next
  recurrence; no recurrence event is assumed. Obligation locality
  classification: step-local only after C-rel; otherwise sketch/interface
  defect (or the explicit idea/theorem-contract defect in Blocker 1).

### step_003 (T-cert)

- step_003a must prove, for s_*=c_s gamma_pow tau_p,
  \[
    s_I(q)\ge s_*,\quad \Delta F_I(q)\ge c_Fs_*^2,\quad
    c_g\tau_p\le g^3\le C_g\tau_p,\quad \mu_I(q)\ge P^{-D_\mu},
  \]
  together with e_ang,e_rad <= e_I=P^(-D_stat) mu_I,
  curv_I >= gamma_pow/4, and separation <= 1/4.
- step_003b must find a pair or singleton tangent direction with
  \[
    m_{\rm mix}=c_{\rm mix}{\gamma_{\rm pow}^6\tau_{\min}^2\over\|T\|_F^2},
    \qquad d_{\rm str}+d_{\rm hist}+d_{\rm num}\le m_{\rm mix}/2,
  \]
  where d_str=O(nu_real^2+r nu_real^3),
  d_hist=O(||A_s||_root,2), and d_num=O(sqrt(r)e_I). The output is a
  proof-generated p,pi,sigma,E_i, never a source-label query. Singleton,
  tie, zero-score, negative-gain, failed-curvature, last-label, and R_I=0
  branches emit no label and no e_I.
- The mixed Hessian is a direct current-notation source; candidate and exact
  atom share the realized target frame, so the residual-to-target bridge is
  literal. Selector failure is a sketch/interface defect unless the source
  itself is shown impossible.
- Noncircular closure status: step_003a produces the candidate and
  step_003b consumes only that candidate and earlier reserves. Obligation
  locality classification: step-local conditional on step_002. Entry and
  baseline stress: nonpositive score, ties, singleton, last-label, R_I=0,
  and exact H=e=0 are explicitly routed without a fake assignment.

### step_004 (T-ledger)

- step_004a proves both induced transfer norms are at most 1/4 after the
  C_0 Gamma_star factor and forms
  \[
    \Theta=(I-C_0\Gamma_\star{\cal T}^+)^{-1}
    C_0\Gamma_\star(S+A_s+e_I{\bf 1}).
  \]
  It derives Raw-J-rel and direction/weight errors in the same realized
  target frame.
- step_004b is the typed transition. With
  \(U_s=[r]\setminus\pi_s(I_s)\), an accepted
  p_s emits
  \[
    U_{s+1}=U_s\setminus\{p_s\},\qquad
    A_{s+1}={\rm Res}_{U_{s+1}}(A_s+\Delta A_s),
  \]
  where Res restricts every (j,M,l) index to U_{s+1} and zero-extends to
  [r]. It emits
  \[
    \beta_s=\max\{0,\|A_{s+1}\|_{\rm root,2}-b_s\},\quad
    b_{s+1}=b_s+\beta_s\ge\|A_{s+1}\|_{\rm root,2},\quad
    \chi_{<s+1}=\chi_{<s}+\chi_s,\quad
    \chi_s=e_sD_s^2/\|T\|_F^2.
  \]
  Restriction, zero extension, and the lower invariant are one claim.
  Rollback emits LP_{s+1}=LP_s and zero charge.
- step_004c proves the diagonal-aware charge, objective telescope, and
  \[
    \sum_{t\le s}\chi_t\le P^{-D_{\rm stat}},\qquad
    b_s\le C_b\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
      +C_b\sum_{t<s}\chi_t.
  \]
  At most r accepted transitions and nonnegative charges give a finite,
  noncircular closure from LP_0=(empty,empty,empty,[r],Q_0,R_0,0,0,0).
  J_M(p_s,p_s)=1 handles the first transition; last label, R_I=0, and
  H_M=e_t=0 terminate or give zero charge.
- Source-to-claim adequacy: the transfer source is the current realized
  H/J/K/S frame and the Neumann gaps are checked before export. Residual-to-
  target adequacy: z and every history array compare actual frozen slots to
  exact realized atoms. Noncircular closure status: LP_0 -> step_004a ->
  step_004b -> step_004c, with rollback identity and at most r transitions.
  Obligation locality classification: step-local conditional on step_003.

### step_005 (P)

- step_005a proves actual-slot distance to the exact permutation and
  product-one-sign orbit is at most varrho_PL/4, with structural, history,
  and raw numerical classes each at most varrho_PL/12. This is the
  residual-to-target bridge and introduces no surrogate.
- step_005b proves the balanced Jacobian/Taylor sandwich, first-exit
  preservation, and ||grad_bal F||_F^2 >= 2 mu_PL F. Armijo decrease gives
  the terminal horizon and exact Frobenius endpoint; terminal forcing is zero.
- step_005c intersects instance/tape events, accounts for polynomial
  restart and discovery work, and records T=0,R_I=0, exact target, unused
  zeros, and H=e=0. Exact recovery and no-floor behavior are preserved.
- Source-to-claim adequacy: the balanced Jacobian and PL inequalities are
  direct current-notation derivations for the exact objective. Residual-to-
  target adequacy: entry is measured in the exact permutation/sign orbit and
  the endpoint is the exact Frobenius residual. Noncircular closure status:
  step_005a entry -> first-exit PL -> Armijo endpoint. Obligation locality
  classification: step-local conditional on the ledger. The stationary exact
  target and all requested null baselines remain unchanged.

## Exported Interface Feasibility

| Interface | Producer | Raw controls and exact export | Target/defect audit | Consumers | Status or blocker |
| --- | --- | --- | --- | --- | --- |
| E_inst, R-src, two-mode, Q_star | step_001 | Gaussian deviations, A/B orthogonality, C margin -> reserves | same T,m,tau; one-time defects | step_002--step_005 | feasible; step-local |
| fresh residual decomposition | step_002a | unresolved signal + str + hist + arm | each term compared to a_ord(I) | step_002b--step_002d | required interface |
| Delta_ord, C-rel, gamma_pow | step_002b/c | order mass, relative defect, finite accumulation | normalized target frame; no ambient cap | step_003 and tape | go/no-go if C-rel fails |
| finite BA/radial output | step_002c | C-arm, counts, guard, root tolerance | Armijo residual enters xi_cyc | step_002b, step_003 | required interface |
| certificate/selector | step_003a/b | score/gain/curvature/separation and mixed margin | actual candidate versus exact atom | step_004 | conditional on step_002 |
| relative resolvent / Raw-J-rel | step_004a | transfer gaps, Neumann series, S+A+e | same target frame; raw term retained | step_004b, step_005 | conditional |
| typed LP_s -> LP_{s+1} | step_004b | restriction/zero extension, b,beta,chi, rollback | actual frozen tuple remains target object | next prefix and ledger | required interface |
| raw/public ledger | step_004c | charge rows and objective telescope | raw chi not absorbed into nu^2 | step_005a | conditional |
| orbit entry / PL endpoint | step_005a/b | chart radius, first exit, PL/Armijo constants | exact orbit and exact residual | final theorem | conditional; no floor |
| probability/runtime/baseline | step_005c | separate events, finite work, restart, null traces | exact/noiseless identity | final theorem | after upstream interfaces |

## Generated Output Flow

| Output | Producer | Consumers/final use | Dependency path | Provenance | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- |
| E_inst,H,J,K,S,Q_star | step_001 direct derivation | structural clause and all rows | primitive IDs -> step_001 | derived | None |
| LP_s initial record | step_001b (LP_0); prior step_004b for s>0 | first and subsequent prefixes | LP_0 -> accepted transition | derived | None; rollback identity |
| order event, Delta_ord, recurrence | step_002a/b | finite map and certificate | step_001 -> step_002 | derived/conditional | C-rel feasibility |
| gamma_pow, cycle residual, tape | step_002b--d | certificate, probability, runtime | recurrence -> map -> tape | derived | None after C-rel |
| p,pi,sigma,E_i,e_I | step_003 | transfer and transition | step_001 -> step_002 -> step_003 | derived | selector dominance |
| Theta,z,A_s,b_s,beta_s,chi_s | step_004 | next prefix and chart entry | certificate -> resolvent -> transition | derived | None if restriction proved |
| orbit entry, PL decrease, endpoint | step_005 | final theorem | ledger -> orbit -> PL | derived | None conditional |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended tool/source | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive E_inst, conditioning, R-src, two-mode identities, exact target, and null/baseline traces. | None | eight source/statistical IDs | uniform Gaussian/Gram transfer | direct concentration and multilinear expansion | event, kernels, target/reserves | R1; 1-r^(-10) | PENDING |
| step_002 | For a fixed prefix, prove fresh decomposition, order event, C-rel, finite BA/radial coupling, gamma_pow, and tape amplification. | step_001 | two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, random-tape, rank-regime; LP_s conditional | coefficient scale versus unrestricted n, tiny delta, signed/zero/guard branches | exact contractions, Haar order statistics, signed squaring, Armijo Taylor | Delta_ord, xi_cyc, gamma_pow, cycle/tape | R2; L=O(log r), polynomial H,N | PENDING |
| step_003 | Prove score/gain/radial/angular/curvature/separation certificate and mixed-support assignment. | step_001, step_002 | derived outputs, base-product-balance | positive-scale dominance and boundaries | direct product-sphere Hessian/selector | p,pi,sigma,E_i,e_I | R3 local scales | PENDING |
| step_004 | Prove transfer gaps/resolvent, typed transition, raw/public ledger, and objective telescope. | step_003 | derived outputs, rank-regime | target transfer, restriction, noncircular accumulation | Neumann, multilinear expansion, charge/telescope | Theta,z,LP_s,b_s,beta_s,chi_s | R3; no chi absorption | PENDING |
| step_005 | Prove orbit entry, first-exit PL, endpoint/rate/runtime, probabilities, and all baselines. | step_002, step_004 | derived outputs, base-product-balance, rank-regime, accuracy-range | target-compatible chart and public specialization | balanced Jacobian/Taylor, PL, Armijo | endpoint, runtime, probability, baseline | R4; terminal O(log(1/epsilon)) | PENDING |

## Stable Subunit Register

The subunits below are ordered and acyclic. A later proof step may not
retroactively define an earlier interface.

| ID | Exact claim/interface | Depends on | Assumptions | Tool | Export |
| --- | --- | --- | --- | --- | --- |
| step_001a | One smoothing event gives nonzero columns, norm/weight bounds, Gram reserves, R-src, and two-mode bounds. | None | source/statistical IDs | Gaussian concentration/Gram expansion | E_inst,H,J,K,S |
| step_001b | Realized tensor has exact balanced padded target and null branches. | step_001a | base-product-balance | exact multilinear identity | T,Q_star, baseline |
| step_002a | Fixed LP_s (LP_0 initially, or the prior accepted transition) and fresh pair give exact unresolved-signal, str, hist, arm decomposition. | step_001b and prior accepted LP_s, if any | random-tape, two-mode-orthogonality | conditional contraction algebra | a_ord, xi_str, xi_hist, xi_arm |
| step_002b | Haar product order event has p_pow >= r^(-C), explicit delta_gap/Delta_ord, recurrence, finite accumulation. | step_002a | c-mode-gram-margin, gaussian-smoothing | order statistics and squaring perturbation | C-rel, rho_bar, gamma_pow |
| step_002c | Finite sphere/radial Armijo realizes contractions within zeta_pow and obeys guard. | step_002a | protocol constants, rank-regime | exact slice Taylor/backtracking | d_pow, counts, root tolerance |
| step_002d | Independent probes amplify the passing event over at most r stopped prefixes. | step_002b, step_002c | random-tape | Bernoulli amplification | tape event/runtime |
| step_003a | Power winner passes observable score/gain/radial/angular/curvature/separation tests or rolls back. | step_002d, step_001b | base-product-balance | certificate inequalities | candidate, e_I |
| step_003b | Mixed-support selector dominates defects and emits pi,sigma,E_i. | step_003a | derived reserves | direct Hessian expansion | assignment/errors |
| step_004a | Transfer gaps yield candidate-relative Neumann resolvent and Raw-J-rel. | step_003b, step_001a | rank-regime | nonnegative majorant/Neumann | Theta,z |
| step_004b | Restrict/zero-extend to U_{s+1}; emit b,beta,chi and preserve rollback. | step_004a | derived LP_s | exact multilinear transition | LP_{s+1} |
| step_004c | Charge rows and objective decrease give finite raw/public ledgers. | step_004b | rank-regime | diagonal charge/telescope | ledger/chart inputs |
| step_005a | Structural/history/raw terms put committed slots in exact orbit chart. | step_004c, step_001b | base-product-balance | balanced target bridge | entry bound |
| step_005b | First-exit balanced PL and Armijo imply exact endpoint. | step_005a | accuracy-range | Jacobian/Taylor/PL/Armijo | endpoint/work |
| step_005c | Separate probability conversion, restart, discovery runtime, and baseline specialization. | step_002d, step_005b | accuracy-range, rank-regime | finite accounting | final clauses |

Every subunit starts with Review status PENDING; later proof work fills
inequalities but may not replace a missing producer with an assumption.

## Gate Evidence Table

| Obligation | Mechanism/raw controls | Export and target check | Scope/producer and boundary | Locality or blocker |
| --- | --- | --- | --- | --- |
| Static event/exact target | Gaussian concentration, A/B orthogonality, C margin | realized T,m,tau consumed directly | one-time step_001; T=0, nonzero, H=0 | step-local; none |
| Fresh residual decomposition | exact unresolved target plus str/hist/arm terms | each defect divided by a_ord(I) | fixed-prefix conditioning; zero contraction rolls back | step-local if exact |
| Coefficient-relative recurrence | diagonal source plus fresh-pair concentration and C-rel | xi_cyc <= c_cyc Delta_ord, not absolute norm | finite Xi_L; first u_0=e_1 traced | sketch/interface; idea/theorem-contract if absolute term only |
| Order event/power gap | Haar product order statistics, delta_gap=1/4 | actual target-frame winner; gamma derived | finite L=O(log r); ties/zeros fail | conditional on C-rel |
| Finite Armijo/radial map | slice derivatives, compact Taylor, C-arm | BA error, guard, root tolerance exported | at most 3LH trials; rollback branches | sketch/interface if no fixed d_pow |
| Score/gain/curvature certificate | observable s, Delta F, errors, curvature, separation | explicit s_*, gain, P^(-D_mu), candidate bridge | one candidate; failed tests export zero | step-local conditional |
| Mixed-support selector | Hessian source and m_mix versus all defects | p,pi,sigma,E_i,e_I in target metric | local before commit; singleton/tie/last | sketch/interface if dominance fails |
| Candidate-relative resolvent | nonnegative majorant and two induced gaps | Raw-J-rel controls exact atoms | step_004a before transition; R=0 no resolvent | step-local conditional |
| Typed shrinking-prefix transition | restriction/zero extension, b+beta, raw chi | LP_{s+1} legal next input; no proxy | LP_0 -> transition; rollback; at most r | sketch/interface until proved |
| Raw/public ledger | diagonal charge and objective telescope | raw chi retained, not absorbed into nu^2 | finite stopped scope, sum chi <= P^(-D) | step-local conditional |
| Tape probability | fresh independent pairs and p_pow | (1-p)^N <= r^(-11), stopped union | failed probes/exhaustion roll back | conditional, no hidden n in event mass |
| Orbit entry/PL | balanced Jacobian/Taylor and first-exit path | actual slots -> exact orbit, exact residual | terminal forcing zero; exact target stationary | step-local conditional |
| Rate/flow/baseline | finite accounting and event intersection | endpoint no floor; producer path complete | T=0,R=0,H=e=0, unused zeros | none after upstream |

## Blockers

1. Coefficient-relative unrestricted-n feasibility gate. The theorem requires
   C-rel for every legal prefix. If the fresh-pair proof can only give the
   absolute term C Gamma_star nu_real^2 ||T||_F, then for an allowed family
   such as n=r^4 its ratio to a_ord(I) is not bounded by a fixed
   c_cyc Delta_ord(I). The fixed polynomial tape and derived constant
   gamma_pow are then false under the unchanged setting. The exact route is
   idea/theorem-contract defect -> idea revision (change activation source,
   scope, or probability protocol); C-rel is not assumed here.
2. Finite Armijo budget gate. If no fixed exponent d_pow satisfies C-arm
   after step_001 norm bounds, the finite algorithm is not represented by the
   ideal contraction map. Route to sketch revision or, if unavoidable under
   the fixed protocol, an idea-level theorem-contract defect. No ideal-map
   substitution is allowed.

All other rows are target-preserving step/interface obligations conditional
on these two gates. No rank, objective, metric, probability mode, runtime
class, or exact/no-floor conclusion is weakened by this retry.

## Dependency Notes

The top-level graph is acyclic:
step_001 -> step_002 -> step_003 -> step_004 -> step_005.
Within merged rows, subunits are ordered as in the register and every
export is produced before its first consumer. LP_0 is the noncircular initial
producer; each accepted transition emits exactly one restricted/zero-extended
LP_{s+1}, and rollback emits the preceding record. The only unresolved
theorem-facing feasibility test is C-rel, deliberately recorded as a blocker
rather than smuggled in as an assumption.
