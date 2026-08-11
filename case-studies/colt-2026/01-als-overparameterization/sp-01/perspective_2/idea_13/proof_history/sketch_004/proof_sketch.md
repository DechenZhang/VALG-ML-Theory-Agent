# Proof Sketch

## Formalized Setting

This is sketch attempt 4 for perspective_2/idea_13 in revise_sketch mode.
The binding idea and setting are unchanged.

- idea SHA-256:
  57d7f265b8fae0e606cdaa46cd098fcbf766a37670ced28fc4f5f0d980ba9a18
- setting SHA-256:
  6a565a9ed7e0288ad4ea96439f04b0b37ec83fa831f698b91f84aea2a007dcca
- consumed predecessor review:
  perspective_2/idea_13/proof_history/sketch_003/proof_sketch_review.md,
  review SHA-256 c20010ffdf8880d176cea5e8c95574b8c80e1edf732320de24c60411ea3c414b.

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

- Sketch attempt: 4
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
removed by a conditional projection lemma, so the coefficient-relative
budget below is a generated conclusion, not an assumption.

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

Initialization-, confidence-, numerical-, and horizon-explicit. On the
step-001 event, set
\[
 B_R=C_R\kappa^3r,\quad \tau_{\min}\ge(8\kappa^3)^{-1},\quad
 \|T\|_F\le C_T\kappa^3\sqrt r,\quad
 \delta^{-1}\le C_\delta P^{41}.
\]
Thus every legal prefix has \(\|R_I\|_F\le B_R\le C_RP^4\) and the
angular/radial Lipschitz constants on \([\delta,2R_{\max}]\) are at most
\(C_LP^{50}\). Fix the protocol constants
\(D_{\rm pow}=256\), \(D_{\rm root}=128\), \(d_{\rm pow}=768\),
\(H_{\rm pow}=\lceil P^{768}\rceil\),
\(\zeta_{\rm pow}=P^{-256}\). Then the safeguarded angular map uses at
most (H_{\rm pow}) accepted updates per block and (H_{\rm pow})
backtracking trials per accepted update, hence at most
\(3L_{\rm pow}H_{\rm pow}^2\) angular evaluations. A radial solve has at
most \(H_{\rm rad}=\lceil P^{384}\rceil\le H_{\rm pow}\) accepted refinements
and at most (H_{\rm pow}) trials each. Expose the order scale,
\(\Delta_{\rm ord}\), \(\xi_{\rm cyc}\), and derived \(\gamma_{\rm pow}\);
the conditional order event has \(p_{\rm pow}\ge r^{-C_{\rm pow}}\), with
the common \(n^{-1/2}\) scale cancelled only in its proof. Failed probes
roll back.

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
| R2 | conditional fresh tape; finite L,H,H_rad,N and union over at most r prefixes | p_pow,Delta_ord,xi_cyc,gamma_pow,tau_min,B_R,delta,D_pow,D_root,d_pow,zeta_pow | order event -> relative recurrence -> finite map -> tape; angular work O(LH^2), radial work O(H_rad H) |
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
  LP_0=(empty,empty,empty,[r],Q_0,R_0,0,0,0,0,0). This is a direct
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

- step_002a fixes the outer induction record
  \(LP_s=(I_s,\pi_s,\sigma_s,U_s,Q_s,R_s,A_s,b_s,h_s,\chi_{<s})\), where
  \(U_s=[r]\setminus\pi_s(I_s)\) and
  \(h_s=\|E_s^{hist}\|_F/\tau_{\min}\).  The legal record is either
  \(LP_0\) from step_001b or the accepted output of step_004b; conditioning
  on it leaves the next tape pair independent.  The exact identity is
  \[
    R_s=\sum_{j\in U_s}\tau_j\phi_j+E_s^{hist},\qquad
    E_s^{hist}=-\sum_{i\in I_s}E_i .
  \]
  Every contraction is split into diagonal signal, off-diagonal structural
  leakage, \(E_s^{hist}\)-leakage, and finite-map error.
- For \(m_s=|U_s|\ge2\), put
  \(\beta_j=\langle m_{j,B},v_0\rangle\),
  \(\gamma_j=\langle m_{j,C},w_0\rangle\), and
  \(Y_j=n|\beta_j\gamma_j|\).  The fresh-pair order event \(\mathcal O_s\)
  chooses a unique \(p\in U_s\) and has
  \[
    Y_p\ge4\Gamma_\star\max_{j\ne p}Y_j,\qquad
    Y_p\ge\lambda_{\rm ord}\log(2r),
    \tag{O_s}
  \]
  with conditional probability at least \(p_{\rm pow}=r^{-C_{\rm pow}}\).
  The direct two-frame Gaussian/order-statistic calculation uses the
  near-orthogonal C Gram only in its covariance perturbation and is uniform
  in \(n\): one pair of standardized coordinates above fixed multiples of
  \(\sqrt{\log(2r)}\), while all competing products stay below a fixed
  fraction, has probability \(r^{-C_{\rm pow}}\), and the C-Gram covariance
  perturbation is absorbed by the same event.  The \(n^{-1/2}\) coordinate
  scale cancels in \(Y_j\).  If
  \(m_s=1\), the prefix is terminal and no order event is needed.
- Define signed initial coefficients
  \(z^{(0)}_j=\operatorname{sgn}(\tau_p\beta_p\gamma_p)\tau_j\beta_j\gamma_j\),
  and \(\rho_0=\max_{j\ne p}|z^{(0)}_j|/|z^{(0)}_p|\).  On \(\mathcal O_s\),
  \(\rho_0\le1/4\).  The fixed \(u_0=e_1\) is used only as the first
  retraction base; the first nonzero A-contraction has these coefficients.
  At each cycle signs are flipped in one mode so the p coefficient is
  positive, and \(\rho_\ell\) is the largest nonwinner-to-p ratio over the
  three normalized target-frame coefficient vectors.
- The conditional projection event \(\mathcal H_s\), proved from fresh Haar
  concentration and the row \(\ell_2\) bounds in (R-src), gives simultaneously
  \[
  \begin{aligned}
    \max_{M,j}|L^{str}_{M,j}|&\le
      a_{\rm ord}(s)C_{str}\Gamma_\star(\sqrt r\,\nu_{real}+r\nu_{real}^2),\\
    \max_{M,j}|L^{hist}_{M,j}|&\le
      a_{\rm ord}(s)C_{hist}{h_s\over\sqrt{\log(2r)}},
  \end{aligned}\tag{H_s}
  \]
  where
  \[
    a_{\rm ord}(s)={\tau_{\min}\lambda_{\rm ord}\log(2r)\over n}.
  \]
  The first line is the row-wise Gram expansion (not the coarser absolute
  Frobenius two-mode bound); the second is the conditional (1/n) projection
  bound for the prefix-fixed history tensor.  Uniformly over the fixed prefix,
  \(\Pr(\mathcal H_s\mid LP_s,\mathcal E_{inst})\ge1-2r^{-C_h}\), so after
  reducing \(p_{pow}\) by a factor two the joint order/projection event still
  has conditional probability at least \(p_{pow}=r^{-C_{pow}}\).  Thus both
  defects have the winner's scale even when \(n=r^4\).
- The finite-map error satisfies, with \(B_R=C_R\kappa^3r\),
  \[
    \xi_{arm}\le C_{arm}{L_{pow}B_R(P^{-256}+P^{-128})\over a_{ord}(s)},
    \qquad {B_R\over a_{ord}(s)}\le C_{env}P^{10},
  \]
  so \(\xi_{arm}\le P^{-100}\) after enlarging the fixed numerical constants.
  Define the dimension-free budget
  \[
    \Delta_{ord}(s)=C_\Delta\left[
      \Gamma_\star(\sqrt r\nu_{real}+r\nu_{real}^2)+{h_s\over\sqrt{\log(2r)}}+P^{-100}\right].
    \tag{Delta-ord}
  \]
  The step-004 ledger invariant gives
  \(h_s\le C_h\Gamma_\star(\sqrt r\nu_{real}^2+r^{3/2}\nu_{real}^3)
      +C_h\sum_{t<s}\chi_t\).  Hence step-001 reserves and the finite
  charge bound imply, for all legal prefixes,
  \(\Delta_{ord}(s)\le(128\sqrt r)^{-1}\); this is a derived inequality,
  not a primitive assumption.
- The signed cyclic algebra now exports the actual relative recurrence
  \[
    \rho_{\ell+1}\le4\rho_\ell^2+\xi_{cyc},\qquad
    \xi_{cyc}=\xi_{str}+\xi_{hist}+\xi_{arm}\le\Delta_{ord}(s).
    \tag{C-rel}
  \]
  With \(\bar\rho_0=1/4\) and
  \(\bar\rho_{\ell+1}=4\bar\rho_\ell^2+\Delta_{ord}(s)\),
  induction gives \(\bar\rho_\ell\le1/2\) and
  \(\Xi_L\le2\Delta_{ord}(s)\).  For
  \(L_{pow}=\lceil C_L\log(2r)\rceil\),
  \(\rho_L\le(8\sqrt r)^{-1}\).  Consequently
  \(\gamma_{pow}=[1+(r-1)(8\sqrt r)^{-2}]^{-1/2}\ge1/2\),
  and every nonwinner has the stated fixed gap.  The accumulation is finite
  and locally absorbed; no recurrence event is assumed.
- step_002c derives the finite Armijo interface from the displayed envelopes:
  on the compact box, \(L_{box}\le C_LP^{50}\), \(\delta^{-6}\le C_\delta P^{246}\),
  and the initial slice loss is at most \(C_LP^8\).  Dyadic backtracking
  therefore reaches an accepted step of size at least \(cP^{-50}\), and
  \(H_{pow}=P^{768}\) accepted updates suffice for the angular stopping test
  and \(H_{rad}=P^{384}\) scalar refinements suffice for \(e_{rad}\le P^{-128}\).
  The stopping test is converted to a direction error using
  \(\|{\sf BA}_M-C_M\|\le C\zeta_{pow}N_I(g)/(g^3\|c_M\|)\);
  \(g\ge\delta\), \(\|c_M\|\ge a_{ord}(s)/2\), and
  \(\delta^{-3}a_{ord}(s)^{-1}\le C P^{124}\) make this at most
  \(P^{-100}\), which is the Armijo term exported in (C-rel).
  The exact evaluation count is
  \(3L_{pow}H_{pow}^2+H_{rad}H_{pow}\), not \(O(L_{pow}H_{pow})\).
  Zero contractions, undefined retractions, negative scores, guard
  exhaustion, and failed radial brackets roll back exactly.
- step_002d uses independent probes. Since
  \((1-p_{pow})^{N_{pow}}\le r^{-11}\) for the stated tape size, a stopped
  union over at most r prefixes gives conditional tape failure at most
  \(r^{-10}\).  Exhaustion is rollback, not success.  The positive mechanism
  is the A/B diagonal contraction plus the fresh-pair projection event;
  source-to-target comparison is at \(a_{\rm ord}(s)\), and the same realized
  target is used throughout.  Locality is step-local after (H_s) and (C-rel).
  This is a theorem-critical activation/recurrence claim: its positive source
  is the exact A/B diagonal map, its opposing terms are the three explicitly
  bounded defects in (H_s), and its finite accumulation is the displayed
  small-gain recurrence.  The noncircular path is
  \(LP_s\to(v_0,w_0)\to\mathcal O_s\cap\mathcal H_s\to\) finite map
  \(\to LP_{s+1}\); a zero first contraction, tie, sign failure, or guard
  failure rolls back.  The produced directions are full-space directions in
  the exact realized frame, so residual-to-target adequacy is literal.
  In the exact \(H_M=0,E_i=0\) branch all three defects vanish and the
  stationary target remains unchanged.

### step_003 (T-cert)

- step_003a proves, for the winner p returned by step_002,
  \(s_*=c_s\gamma_{pow}\tau_p\),
  \[
    s_I(q)\ge s_*,\quad \Delta F_I(q)\ge c_Fs_*^2,\quad
    c_g\tau_p\le g^3\le C_g\tau_p,\quad \mu_I(q)\ge P^{-D_\mu},
    \quad e_{ang},e_{rad}\le e_I=P^{-D_{stat}}\mu_I(q),
    \operatorname{curv}_I\ge\gamma_{pow}/4,\quad
    {\sf Sep}(q;I)\le1/4.
  \]
  A failed observable test exports the joint-zero rollback and no numerical
  error.  A passing test also gives the exact radial/angular bounds
  \(e_{rad},e_{ang}\le e_I=P^{-D_{stat}}\mu_I(q)\).
- step_003b uses an explicit tangent witness.  For each
  \(\ell\in U_s\setminus\{p\}\),
  set \(a_\ell=\Pi_{u^\perp}m_{\ell,A}\) and
  \(b_\ell=\Pi_{v^\perp}m_{\ell,B}\).  If
  \(\|a_\ell\|\|b_\ell\|\) is maximal, use the normalized mixed tangent
  \[
    h_\ell={1\over\sqrt2}\left({a_\ell\over\|a_\ell\|},
      -\operatorname{sgn}\langle H_{AB}a_\ell,b_\ell\rangle
       {b_\ell\over\|b_\ell\|},0\right),
  \]
  where \(H_{AB}\) is the A--B mixed block of the displayed
  \(H_{\rm ang}(q)\), and the sign is chosen by that cross term.  If one factor
  vanishes, use the nonzero singleton tangent in that mode.  The direct
  product-sphere Hessian expansion then exports
  \[
    m_{\rm mix}=c_{\rm mix}{\gamma_{\rm pow}^6\tau_{\min}^2\over\|T\|_F^2},
    \qquad d_{\rm str}+d_{\rm hist}+d_{\rm num}\le m_{\rm mix}/2,
  \]
  where the three defects are explicitly
  \[
    d_{str}=C_{str}\left(\nu_{real}^2+r\nu_{real}^3
      +{\nu_{real}\over\log(2r)}\right),\quad
    d_{hist}=C_{hist}h_s,\quad d_{num}=C_{num}\sqrt r\,e_I.
  \]
  The first term is the A/B diagonal cancellation plus the C-mode margin
  term, the second is the
  prefix-fixed history ledger, and the third is the observable numerical
  certificate.  The source bounds and \(e_I\le P^{-D_{stat}}\) imply the
  displayed dominance before any label is emitted.  The output is the
  proof-generated \(p,\pi,\sigma,E_i\), never a source-label query.
  Singleton, tie, zero-score, negative-gain, failed-curvature, last-label,
  and \(R_I=0\) branches emit no label and no \(e_I\).  Candidate and exact
  atom use the same realized frame, so the residual-to-target bridge is
  literal; locality is step-local conditional on step_002.

### step_004 (T-ledger)

- step_004a proves both induced transfer norms are at most 1/4 after the
  C_0 Gamma_star factor and forms
  \[
    \Theta=(I-C_0\Gamma_\star{\cal T}^+)^{-1}
    C_0\Gamma_\star(S+A_s+e_I{\bf 1}).
  \]
  It derives Raw-J-rel and direction/weight errors in the same realized
  target frame.
- step_004b is the typed transition. For the newly committed error
  \(E_{new}=g_s^3u_s\otimes v_s\otimes w_s-\tau_{p_s}\phi_{p_s}\), define
  \(\Delta A_s\) on every mode and ordered pair by
  \[
    (\Delta A_s)_{j,M,\ell}={1\over\tau_j}
      \left|\left\langle E_{new},
      m_{\ell,M}\otimes\!\bigotimes_{N\ne M}m_{j,N}\right\rangle\right|
  \]
  for \(j\ne\ell\), and zero on the diagonal. For any array Z let
  \(\operatorname{Res}_{U}(Z)_{j,M,\ell}=Z_{j,M,\ell}\) when
  \(j,\ell\in U\), and zero otherwise; this restriction and zero-extension
  is applied to every \((j,M,\ell)\) field. With
  \(U_s=[r]\setminus\pi_s(I_s)\), an accepted \(p_s\) emits
  \[
    U_{s+1}=U_s\setminus\{p_s\},\qquad
    A_{s+1}={\rm Res}_{U_{s+1}}(A_s+\Delta A_s),
  \]
  and the one-step producer inequality
  \[
    \|\Delta A_s\|_{\rm root,2}\le
      C_A\Gamma_\star(\nu_{real}^2+r\nu_{real}^3)+C_A\chi_s.
  \]
  It emits
  \[
    \beta_s=\max\{0,\|A_{s+1}\|_{\rm root,2}-b_s\},\quad
    b_{s+1}=b_s+\beta_s\ge\|A_{s+1}\|_{\rm root,2},\quad
    \chi_{<s+1}=\chi_{<s}+\chi_s,\quad
    \chi_s=e_sD_s^2/\|T\|_F^2,\quad
    h_{s+1}\le h_s+C_h\Gamma_\star(\nu_{real}^2+r\nu_{real}^3)+C_h\chi_s.
  \]
  Restriction, zero extension, and the lower invariant are one claim.
  Rollback emits exactly \(LP_{s+1}=LP_s\) and \(\chi_s=0\).
- step_004c proves the diagonal-aware charge, objective telescope, and the
  one-step public substitution from the preceding inequality and the
  definition of \(\beta_s\). It proves
  \[
    \sum_{t\le s}\chi_t\le P^{-D_{\rm stat}},\qquad
    b_s\le C_b\Gamma_\star(\nu_{\rm real}^2+r\nu_{\rm real}^3)
      +C_b\sum_{t<s}\chi_t.
  \]
  The induction starts with
  \(b_0=C_b\Gamma_\star(\nu_{real}^2+r\nu_{real}^3)\), \(h_0=0\);
  the restriction map and the \(\beta_s\) overflow definition then imply
  the public bound rather than postulating it.  The same expansion gives
  \(h_s\le C_h\Gamma_\star(\sqrt r\nu_{real}^2+r^{3/2}\nu_{real}^3)
      +C_h\sum_{t<s}\chi_t\), which is the history control consumed by
  step_002a.
  At most r accepted transitions and nonnegative charges give a finite,
  noncircular closure from
  LP_0=(empty,empty,empty,[r],Q_0,R_0,A_0,b_0,0,0,0),
  where (A_0=0) and (h_0=\chi_{<0}=0).
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
- step_005c has three separate bridges.  The rate bridge substitutes the
  fixed envelopes \(B_R,\tau_{min},\delta,H_{pow},H_{rad}\), verifies every
  term in R1--R4, converts the stopped tape event and instance event to the
  stated probabilities, and gives polynomial discovery work plus
  \(O((L_{ch}/\mu_{PL})\log(1/\epsilon))\) terminal work.  The generated-flow
  bridge lists the legal path
  \(LP_0\to\) cycle/tape \(\to\) certificate \(\to\) resolvent
  \(\to LP_{s+1}\to\) ledger \(\to\) chart, with no output consumed before
  its producer.  The baseline bridge treats \(T=0,R_I=0\), unused zeros,
  rollback, and \(H_M=e_t=0\) literally; exact recovery and no-floor behavior
  are preserved rather than replaced by a stopped or remainder theorem.
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
| E_inst, R-src, two-mode, Q_star | step_001 | Gaussian deviations, A/B orthogonality, C margin | same realized T,m,tau; one-time defects | step_002--step_005 | feasible, step-local |
| LP_s and residual split | step_002a / step_004b | exact unresolved sum, history tensor, fresh-pair independence | residual is the exact current T minus actual frozen slots | step_002b, next prefix | feasible by outer induction |
| Delta_ord and C-rel | step_002b | order event, row-wise Gram bound, conditional history projection, Armijo error; export (Delta-ord) and recurrence | every term is divided by a_ord(s)=tau_min lambda log(2r)/n; no absolute Frobenius surrogate | step_002c-d, step_003 | dimension-free, step-local |
| finite BA/radial output | step_002c | B_R, delta^-6, L_box, D_pow=256, D_root=128, d_pow=768; O(3LH^2+H_rad H) trials | direction/root errors <= P^-100/P^-128 enter C-rel at a_ord scale | step_002b, step_003 | feasible after fixed envelope |
| certificate and selector | step_003a-b | observable score/gain/curvature/separation plus explicit mixed tangent | m_mix dominates structural, history, numerical defects before label emission | step_004a | conditional on C-rel, step-local |
| relative resolvent / Raw-J-rel | step_004a | transfer gaps, Neumann series, S+A+e | candidate and target share realized frame; raw numerical term retained | step_004b-c, step_005a | conditional, step-local |
| typed LP_s -> LP_{s+1} | step_004b | Delta A_s formula, restriction/zero-extension of every array, b/beta/h/chi update, rollback | actual frozen tuple remains target object | step_002a next prefix, step_004c | feasible by finite induction |
| raw/public ledger | step_004c | diagonal charge, objective telescope, h_s and b_s one-step bounds | chi remains separate from nu_real^2 and sums to P^-D_stat | step_005a, step_002a | conditional, step-local |
| orbit entry / PL endpoint | step_005a-b | chart radius, first-exit, exact balanced Jacobian and Armijo | exact permutation/sign orbit and exact Frobenius residual | final theorem | conditional, no floor |
| rate bridge | step_005c | explicit P powers, tape/instance conversion, restart and work counts | all R1--R4 terms and hidden constants exposed | final theorem | step-local bridge |
| generated flow | step_005c | LP_0 -> cycle -> certificate -> resolvent -> LP_{s+1} -> ledger -> chart | no output consumed before its producer | final theorem | step-local bridge |
| baseline bridge | step_005c | T=0, R=0, rollback, unused zeros, H=e=0 traces | exact recovery and no-floor target preserved literally | final theorem | step-local bridge |

## Generated Output Flow

| Output | Producer | Consumers/final use | Dependency path | Provenance | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- |
| E_inst,H,J,K,S,Q_star | step_001 direct derivation | structural clause and all rows | primitive IDs -> step_001 | derived | None |
| LP_s, h_s, residual split | step_001b for LP_0; step_004b thereafter | step_002a and next accepted transition | LP_0 -> fresh pair -> certificate -> step_004b | derived | None; rollback identity |
| order event, a_ord, Delta_ord, C-rel | step_002a-b | finite map and certificate | step_001 -> LP_s -> fresh projection event -> step_002c | derived/conditional | None; conditional projection source is explicit |
| finite map, gamma_pow, cycle residual, tape | step_002c-d | certificate, probability, runtime | C-rel -> finite map -> Bernoulli tape | derived | None |
| p,pi,sigma,E_i,e_I | step_003a-b | transfer and transition | step_001 -> step_002 -> step_003 | derived | None after mixed-tangent dominance |
| Theta,z,Delta A_s,A_s,b_s,beta_s,h_s,chi_s | step_004a-c | next prefix and chart entry | certificate -> resolvent -> typed transition -> ledger | derived | None |
| orbit entry, PL decrease, endpoint | step_005a-b | final theorem | ledger -> orbit -> PL -> residual | derived | None |
| rate, flow, baseline bridges | step_005c | public theorem clauses | all prior outputs -> step_005c | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended tool/source | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Derive E_inst, conditioning, R-src, two-mode identities, exact target, and null/baseline traces. | None | eight source/statistical IDs | uniform Gaussian/Gram transfer | direct concentration and multilinear expansion | event, kernels, target/reserves | R1; 1-r^(-10) | PENDING |
| step_002 | For a fixed prefix, prove fresh decomposition, order event, dimension-free C-rel, finite BA/radial coupling, gamma_pow, and tape amplification. | step_001 | two-mode-orthogonality, c-mode-gram-margin, gaussian-smoothing, random-tape, rank-regime; LP_s conditional | conditional 1/n projection scale, tiny delta, signed/zero/guard branches | exact contractions, Haar order statistics, signed squaring, Armijo Taylor | Delta_ord, xi_cyc, gamma_pow, cycle/tape | R2; L=O(log r), O(LH^2+H_rad H) per probe | PENDING |
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
| step_002a | Fixed LP_s (LP_0 initially, or the prior accepted transition) and fresh pair give exact unresolved-signal, structural, history, and finite-map decomposition at a_ord(s). | step_001b and prior accepted LP_s, if any | random-tape, two-mode-orthogonality | conditional contraction algebra and Haar projection | a_ord, h_s, xi_str, xi_hist, xi_arm |
| step_002b | Haar product order event has p_pow >= r^(-C), explicit rho_0, dimension-free Delta_ord, recurrence, finite accumulation. | step_002a | c-mode-gram-margin, gaussian-smoothing | order statistics and signed squaring perturbation | C-rel, rho_bar, gamma_pow |
| step_002c | Finite sphere/radial Armijo realizes contractions within P^-100/P^-128 and obeys guard, with O(3LH^2+H_rad H) evaluations and fixed d_pow=768. | step_002a | protocol constants, rank-regime | exact slice Taylor/backtracking | d_pow, counts, root tolerance |
| step_002d | Independent probes amplify the passing event over at most r stopped prefixes. | step_002b, step_002c | random-tape | Bernoulli amplification | tape event/runtime |
| step_003a | Power winner passes observable score/gain/radial/angular/curvature/separation tests or rolls back. | step_002d, step_001b | base-product-balance | certificate inequalities | candidate, e_I |
| step_003b | Mixed-support selector dominates defects and emits pi,sigma,E_i. | step_003a | derived reserves | direct Hessian expansion | assignment/errors |
| step_004a | Transfer gaps yield candidate-relative Neumann resolvent and Raw-J-rel. | step_003b, step_001a | rank-regime | nonnegative majorant/Neumann | Theta,z |
| step_004b | Define Delta A_s, restrict/zero-extend every array to U_{s+1}; emit b,beta,h,chi and preserve rollback. | step_004a | derived LP_s | exact multilinear transition | LP_{s+1} |
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
| Fresh residual decomposition | exact unresolved target plus structural/history/Armijo terms | each defect is explicitly compared with a_ord(s) | fixed-prefix conditioning; zero contraction rolls back | step-local |
| Coefficient-relative recurrence | A/B diagonal map plus row-wise Gram expansion and fresh-pair 1/n projection | xi_cyc <= Delta_ord(s) with Delta_ord <=(128 sqrt r)^-1; no absolute norm | finite Xi_L; LP_s -> fresh pair -> LP_{s+1}; first u_0=e_1 and ties/zeros traced | step-local |
| Order event/power gap | Haar product order statistics with factor 4 Gamma_star and log(2r)/n threshold | actual target-frame winner; rho_0<=1/4 and gamma derived | finite L=O(log r); ties/zeros fail | conditional, no hidden n |
| Finite Armijo/radial map | slice derivatives, compact Taylor, fixed envelopes, D_pow=256,D_root=128,d_pow=768 | BA error <=P^-100, root error <=P^-128, exact O(3LH^2+H_rad H) count | H accepted updates each with H trials; rollback branches | step-local |
| Score/gain/curvature certificate | observable s, Delta F, errors, curvature, separation | explicit s_*, gain, P^(-D_mu), candidate bridge | one candidate; failed tests export zero | step-local conditional |
| Mixed-support selector | explicit pair/singleton tangent and signed Hessian cross term | m_mix dominates d_str+d_hist+d_num before p,pi,sigma,E_i,e_I export | local before commit; singleton/tie/last | step-local conditional |
| Candidate-relative resolvent | nonnegative majorant and two induced gaps | Raw-J-rel controls exact atoms | step_004a before transition; R=0 no resolvent | step-local conditional |
| Typed shrinking-prefix transition | explicit Delta A_s, restriction/zero extension of every array, b+beta+h+chi | LP_{s+1} legal next input; actual frozen tuple, no proxy | LP_0 -> transition; rollback; at most r | step-local conditional |
| Raw/public ledger | diagonal charge and objective telescope plus one-step beta substitution | raw chi retained, not absorbed into nu^2; sum chi <=P^(-D) | finite stopped scope s<=r | step-local conditional |
| Tape probability | fresh independent pairs and p_pow | (1-p)^N <= r^(-11), stopped union | failed probes/exhaustion roll back | conditional, no hidden n in event mass |
| Orbit entry/PL | balanced Jacobian/Taylor and first-exit path | actual slots -> exact orbit, exact residual | terminal forcing zero; exact target stationary | step-local conditional |
| Rate specialization | fixed P powers, all R1--R4 variables, term absorption and probability conversion | public polynomial discovery and O(log(1/epsilon)) terminal rate | step_005c consumes all prior outputs | step-local |
| Generated-output flow | explicit LP_0 -> cycle -> certificate -> resolvent -> transition -> ledger -> chart path | every theorem-facing output has a producer and consumer | no output consumed before production; rollback path | step-local |
| Baseline invariance | exact CP identity, null/rollback traces, stationary target | exact recovery and no-floor specialization unchanged | T=0,R=0,H=e=0,unused zeros | step-local |

## Blockers

None at the idea/theorem-contract level.  The previous unrestricted-(n)
obstruction is discharged by the row-wise Gram expansion and the fresh,
prefix-independent (1/n) projection event in (H_s); the coarser absolute
Frobenius remainder is deliberately not used.  The finite Armijo gate is
discharged by the explicit (B_R,delta^{-6},L_{box}) envelopes and the
fixed (D_{pow}=256,D_{root}=128,d_{pow}=768) choice.  The remaining work is
ordinary proof-step derivation of the displayed inequalities, with no change
to rank, objective, metric, probability mode, runtime class, or exact/no-floor
conclusion.

## Dependency Notes

The top-level graph is acyclic:
step_001 -> step_002 -> step_003 -> step_004 -> step_005.
Within merged rows, subunits are ordered as in the register and every export
is produced before its first consumer. LP_0 is the noncircular initial
producer; each accepted transition emits exactly one restricted/zero-extended
LP_{s+1}, including h_s,b_s,chi_s, and rollback emits the preceding record.
The C-rel and finite-map interfaces are generated by step_002b-c from
primitive event bounds, not inserted as assumptions.
