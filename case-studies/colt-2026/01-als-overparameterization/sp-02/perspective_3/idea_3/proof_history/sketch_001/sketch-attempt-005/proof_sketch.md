# Proof Sketch

## Formalized Setting

The branch uses the exact setting in setting.md. The realized target is

    T = (A tensor B tensor C) D_r,
    D_r = sum_{j=1}^r e_j tensor e_j tensor e_j,

and the rank-k objective is the third-order CP least-squares objective. The
algorithm is simultaneous full-batch gradient descent followed only by the
product-preserving balancing map, with eta = (n k r)^(-12), and

    r < k <= floor(r^(5/4)).

The primitive assumptions are exactly:

- assump:base_conditioning;
- assump:dimension;
- assump:rank_window;
- assump:gaussian_smoothing;
- assump:independent_initialization; and
- assump:gd_step.

The generated initialization event is

    E_init_norm = E_cond intersect E_gram^norm intersect E_deficit intersect E_size.

The normalized coefficient vectors are
bar alpha = sqrt(n/r) alpha, bar beta = sqrt(n/r) beta, and
bar gamma = sqrt(n/r) gamma. Normalization is certificate-only:

    G_raw = (r/n)^2 G_norm

exactly, the normalized and raw tangent spans are equal, and D_r, Dhat_0,
the normal witness W_0, the coefficient residual, and the physical loss stay
in the raw convention. The sole trajectory certificate is

    C_path = { E_path = sum_{t>=0} d_bal(theta_(t+1), theta_t) <= E_star }.

C_path is explicitly conditional and contains no convergence, boundedness,
Gram, positivity, trapping, or positive-loss assertion.

## Formalized Goal

Uniformly over fixed kappa,q, all sufficiently large r, every
n >= C(kappa,q) r^4 log r, every r < k <= floor(r^(5/4)), and every
deterministic base triple satisfying assump:base_conditioning, prove

    P(E_init_norm) >= 1 - r^(-10).

On E_init_norm intersect C_path, prove convergence in d_bal to a finite
theta_infinity and

    lim_t F(theta_t) >= epsilon_0(kappa) ||T||_F^2 > 0.

If F_plus denotes this convergence-and-positive-limit event, retain the exact
conditional conclusion

    P(F_plus) >= (1-r^(-10)) P(C_path | E_init_norm).

No positive lower bound for the last conditional probability is claimed.

## Sketch Identity

- Sketch attempt: 5
- Retry mode: revise_sketch
- Trigger: attempt-4 proof-sketch review returned REVISE_SKETCH for the
  overloaded reduction row and for non-executable topology, profile, and
  charge interfaces.
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: PARTIAL_BLOCKED
- Theorem-contract change: none
- Rank threshold: L(r) = r^(5/4), hence c = 1/4

The unresolved items below are source/interface blockers, not new theorem
assumptions. Old step-003 proof artifacts are not binding evidence after this
decomposition.

## Proof Roadmap

The roadmap keeps the exact raw target, conditional path mode, and downstream
loss assembly while splitting the former overloaded reduction into three
lemma-sized outputs.

1. `step_001` proves realized-factor conditioning.
2. `step_002` proves balanced Gaussianization, normalized pair Grams, initial
   size, the exact raw-scale bridge, and tangent-span equality.
3. `step_003` proves quotient/gauge algebra, the target-correlation estimate
   (TC), radial transfer, and the trace-one elliptic-Gaussian conjugation. It
   exports the quotient frame, `E_TC`, the radial event, and the unnormalized
   Gaussian off-block operator, but no colored trace sum.
4. `step_004` expands the Gaussian trace into a cyclic word and an exact
   colored diagram datum. Positions are `I_p = Z/(2p)`, each carries a
   component label and tangent color in `{a,b,c}`, and the three physical-mode
   subsequences `S_M` inherit cyclic order. The local trace matching, Wick
   matchings, the circuit partitions `H_M`, `F_M`, the contracted graph `K`,
   `E=2p`, `B`, `v`, `sigma=B-v`, and `F=sum_M F_M` are all recorded here.
5. `step_005` proves the exact quadratic moment and the complete visit-local
   sector, including all-distinct component words. It does not claim the
   repeated-component cross-visit sum or (21z).
6. `step_006` supplies the rooted jacket/cell-complex topology interface. For
   each diagram, let `S` be the `p` contracted edge-pairs and let
   `D(K)=S x {0,1}` be their oriented ends. The involution `iota` swaps the
   two ends of an edge. A root is the least dart `d0` in lexicographic order;
   its incident vertex and opposite endpoint are the root vertex pair. The
   Euler transition `tau` is the one-cycle successor permutation obtained by
   following the color-0 trace matching, with `tau(d0)` fixed as the first
   successor. For each mode `M`, `h_M` is the involution supplied by `H_M` and
   `phi_M=tau o h_M` is its oriented face successor, so the cycles of `phi_M`
   are exactly the `F_M` boundary walks.

   The executable topology object is the rooted three-jacket complex `X`: it
   has the `B` vertices of `K`, one oriented mode edge `(M,s)` for every
   `M` and `s` (there are `3p` edges), and one 2-cell for every cycle of every
   `phi_M`. The endpoint of `(M,s)` is the ordered pair of endpoints of `s`;
   at a vertex, the local link order is the restriction of `tau`, with the
   root link smoothed in the order `a,b,c`. The required local-link audit is
   that every nonroot link is one circle and the smoothed root link is one
   circle, making `X` a connected closed orientable ribbon surface. Its exact
   Euler identity is

       chi(X) = B - 3p + F = 2 - 2g(X) <= 2,

   which is equivalent to `F+B<=3p+2` and hence (TOP). The same construction
   has explicit branches for `B<=2`, `p=1`, empty `S_M` (then `h_M=tau` and
   `F_M=1`), one-color words, degree-two vertices, repeated labels, and
   high-degree vertices; each branch uses the declared root smoothing rather
   than an implicit deleted relation. The local-link/Euler audit is a named
   proof obligation and is currently blocked until its finite incidence table
   is discharged.
7. `step_007` defines a reversible profile map on exact matching objects. The
   initial matching `rho` pairs the two oriented ends of every visit, while
   `pi=(pi_a,pi_b,pi_c)` is the selected Wick matching within each
   component/mode group. A switch domain consists of quadruples
   `(x1,x2,x3,x4)` in one group with distinct ends, `rho`-edges
   `(x1,x2),(x3,x4)` on one alternating `rho union pi` cycle, and the two
   reconnections `(x2,x3),(x4,x1)` in that same group. The canonical switch is
   the lexicographically least admissible quadruple, with orientation recorded
   relative to `tau`.

   The record stores the old Wick pairs, component labels, root and orientation
   bits, the union-find parent map, the forest edge created at each first merge,
   and the ordered switch list. The proposed monotone measure is

       Phi=(N_unswitched, N_open, lex_code(record)),

   where `N_unswitched` counts nonlocal Wick pairs, `N_open` counts non-root
   union-find blocks, and `lex_code` is the remaining ordered record. The
   switch case table requires strict decreases `(1,*,*)`, `(0,1,*)`, or
   `(0,0,-1)` for one-loop, two-loop, or forest-merge records. Reversing the
   stored reconnection and union-find operations must recover `pi`, the
   labels, the word, the roots, and all orientations exactly.

   Profile positions are the `2p` oriented ends `S x {0,1}`. A-position means
   no record charges the end; a one-loop record charges an ordered b-pair; a
   two-loop or forest record charges c-positions; uncharged ends are padded as
   a. Thus `a+b+c=2p`, `b` is even, the local sector is `(2p,0,0)`, and every
   cross-visit diagram has `b+c>=1`. Existence of a strict switch and the
   reverse invariant are explicit finite obligations; if either fails, this
   step is blocked rather than treated as a future proof label.
8. `step_008` builds the explicit multiplicity table. Before charging, the
   raw choices are: `3^(2p)` tangent-color words, at most `2p` root/orientation
   choices, `k^v` component labels, the multinomial choice of the `2p`
   profile positions, at most `8p` choices per ordered b-pair, and at most
   `16p` choices per c-position. The table records the intended allocation:

   | source | raw bound | charged profile factor | control |
   | --- | --- | --- | --- |
   | tangent colors and root orientation | `3^(2p)` and `2p` | `3kr` prefactor and `C0^a` | root and color bits are fixed before any switch choice |
   | component labels | `k^v` | `k r` prefactor and the P1/P2 exponent | `v` is the number of labels in `Gamma(D)` |
   | profile positions | `2p` positions | `multinomial(2p;a,b,c)` | disjoint reversible records |
   | one-loop records | at most `(8p)^(b/2)` | `C1^b p^(b/2)` | one record per ordered b-pair |
   | two-loop/forest records | at most `(16p)^c` | `C2^c p^c` | one record per c-position |
   | covariance loops | `kappa_1^(16p) r^(F-4p)` | `kappa_1^8` per profile position | exact Wick weight |

   The table is intended to prove P4 with all tangent-color, root, orientation,
   forest, and switch factors visible; it must not place a `p` factor on an
   a-position. The final constants are `C0=3 kappa_1^8`,
   `C1=8 kappa_1^8`, `C2=16 kappa_1^8`, and `C_G=27 kappa_1^8` only after
   this table is discharged.
9. `step_009` performs the face/exponent absorption from the same table. Put

       e=(3p+2-v)-F,  sigma=B-v,
       F=3p+2-v-e,     B=v+sigma.

   The rooted-jacket Euler identity gives `e>=sigma`. The explicit forest and
   face rows must then yield

       v-1 <= a/2+b+c,                              (P1)
       4p+1-F >= a+b/2+c
          +(5/4)(v-1-a/2)_+,                        (P2)

   by summing the local contributions of a, b-pair, c, root, and color rows.
   With `d=v-1-a/2`, the two cases `d>=0` and `d<0`, together with
   `k<=r^(5/4)` and `r<k`, give

       k^(v-1) r^(F-4p-1)
       <= (sqrt(k)/r)^a r^(-b/2-c).                 (P3)

   Combining P3, the table's P4, and `a+b+c=2p` gives the per-profile ENUM
   bound with no logarithmic factor on the a-positions. The derivation of the
   P2 face row and the full root/color/orientation table is an explicit
   blocker until checked in current notation.
10. `step_010` is a pure disjoint multinomial specialization. It sums the
    profile bound from steps `step_008` and `step_009` and obtains

        E[tr |E_G_tilde|^(2p0) | A,B,C]
        <= 3kr [ C_G(kappa)
           (sqrt(k)/r + sqrt(p0/r) + p0/r) ]^(2p0),

    for `p0=ceil(31 log r)`, with no p0 factor on the leading term. It cannot
    export 21z until steps `step_006` through `step_009` are accepted.
11. `step_011` applies Markov to 21z, performs the exact radial factor-16 and
    corrected `C_TF=32e sqrt(32/30) C_G` conversion, and exports TF, quotient
    coercivity, `W_0`, and `E_deficit`.
12. `step_012` assembles `P(E_init_norm)>=1-r^(-10)` from the four generated
    initialization events.
13. `step_013` uses the explicitly conditional finite path certificate for
    convergence, endpoint displacement, and the all-time column bound 3.
14. `step_014` proves the exact raw multilinear Taylor remainder.
15. `step_015` preserves the raw coefficient margin using `W_0` and the one
    endpoint Taylor error.
16. `step_016` applies the exact mode-span projection and obtains the relative
    physical loss floor.
17. `step_017` proves event inclusion and the exact final conditional
    probability identity.

## Rate Objectives

- Initialization certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `n,r,k,kappa,q`, `rho=r^(-q)`, the rank window,
    normalized Gram window `[r^(-20),r^20]`, `delta_0=1/8`, and failure
    `r^(-10)`.
  - Hidden constants may depend on: `kappa,q` only.
  - Hidden constants may not depend on: `n,r,k` or the deterministic base
    triple.
  - Fixed quantities: `kappa,q` as `r` tends to infinity.
  - Probability mode: joint smoothing and initialization, uniformly
    conditional on every realized triple in `E_cond`.
  - Horizon mode: initialization only.
  - Norm mode: factor operator norm, normalized Gram eigenvalues, and
    coefficient Frobenius norm.
  - Required bridge: `G_raw=(r/n)^2 G_norm` exactly; normalization does not
    alter `D_r`, `Dhat_0`, `S_0`, `W_0`, or the physical metric.
  - Baseline invariance: the scale repair preserves the raw target and raw
    deficit.

- Random-frame moment/TF certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `k/r^2`, `p0=ceil(31 log r)`, `sqrt(k)/r`,
    `sqrt(p0/r)`, `p0/r`, and conditional failure at most `r^(-20)`.
  - Hidden constants may depend on: `kappa` only.
  - Hidden constants may not depend on: `n,r,k,p0` or the base triple.
  - Constant provenance: `C0=3 kappa_1^8`, `C1=8 kappa_1^8` after the paired
    b-count, `C2=16 kappa_1^8`, `C_G=27 kappa_1^8`, and
    `C_TF=32e sqrt(32/30) C_G`.
  - Fixed quantities: conditioned realized factors and the exact quotient norm.
  - Probability mode: conditional moment, then Markov and finite event union.
  - Horizon mode: fixed moment order `p0`.
  - Norm mode: operator norm of the quotient off-block frame.
  - Required bridge: `step_006`, `step_007`, `step_008`, and `step_009` must
    prove the rooted face/count interfaces and sum to 21z without a
    logarithmic multiplier on
    `sqrt(k)/r`.

- Conditional positive-loss theorem:
  - Objective type: horizon-uniform and asymptotic relative-loss explicit.
  - Exposed variables: `kappa`, `delta_0`, `E_star`, and
    `C_CP(kappa,3)=kappa_1^3(1+9)`.
  - Hidden constants may depend on: `kappa` only.
  - Hidden constants may not depend on: `n,r,k,q`, the base triple, or path.
  - Probability mode: deterministic conditional on
    `E_init_norm intersect C_path`.
  - Horizon mode: all-time finite path followed by a limit.
  - Norm mode: `d_bal`, coefficient Frobenius norm, and physical Frobenius
    loss.
  - Required bridge: exact Taylor, projection, and relative norm comparisons.
  - Baseline invariance: zero path preserves the complete initial deficit.

- Final probability interface:
  - Objective type: confidence-explicit conditional event accounting.
  - Exposed variables: `r^(-10)` and `P(C_path | E_init_norm)`.
  - Hidden constants: none.
  - Probability mode: exact conditional probability.
  - Horizon mode: all-time event.
  - Required bridge: retain the conditional factor without a constant lower
    bound.

## Assumption Provenance Objectives

- `step_001` derives `E_cond` from `assump:base_conditioning`,
  `assump:dimension`, and `assump:gaussian_smoothing`.
- `step_002` derives balanced Gaussianization, normalized Grams, the raw
  scale identity, `E_size`, and tangent-span equality from
  `assump:independent_initialization` and `step_001`.
- `step_003` derives quotient/TC/radial outputs from primitive rank and
  initialization assumptions and `step_001`, `step_002`.
- `step_004` derives the colored trace and complete `Gamma(D)` datum; it is
  not a theorem-facing admissibility assumption.
- `step_005` derives the quadratic and visit-local outputs; no cross-visit
  moment is assumed.
- `step_006` must derive TOP from the rooted complex; TOP cannot be assumed.
- `step_007` must derive the reversible profile partition.
- `step_008` and `step_009` must derive P4 and P1--P3; they cannot use an
  unproved charge as an assumption.
- `step_010` derives the moment output only after the topology/profile/charge
  producers are accepted.
- `step_011` derives TF, `W_0`, and `E_deficit`; none is primitive.
- `step_012` derives `E_init_norm` and its probability.
- `C_path` is an explicitly conditional hypothesis.
- `step_013`, `step_014`, `step_015`, `step_016`, and `step_017` derive
  convergence, Taylor control, coefficient margin, physical loss, and final
  probability in that order.

## Mechanism-Source And Boundary Stress

- Step ID: `step_001`
  - Claim class/theorem role: realized factor conditioning.
  - Mechanism source: primitive base singular margin plus direct Gaussian
    operator perturbation and Weyl in the exact Euclidean norm.
  - Control relation: perturbation is below half the base margin.
  - Boundary/entry: zero smoothing and the lower base singular boundary pass.
  - Producer/consumers: `step_001` -> `step_002`, `step_003`, `step_014`,
    `step_016`.
  - Locality: step-local.

- Step ID: `step_002`
  - Claim class/theorem role: normalized Gram nondegeneracy and initial size.
  - Mechanism source: conditioned covariance, radius concentration, and
    normalized Khatri--Rao concentration.
  - Control relation: fluctuation is below the constant covariance margin;
    chi tails give the size threshold 2.
  - Boundary/entry: arbitrary large `n` and maximal `k` are included.
  - Producer/consumers: `step_002` -> `step_003`, `step_012`, `step_013`.
  - Locality: step-local.

- Step ID: `step_003`
  - Claim class/theorem role: quotient geometry, TC, radial transfer, and
    Gaussian conjugation.
  - Mechanism source: direct quotient algebra, Bernstein, elliptic-radial
    representation, and exact conjugation.
  - Control relation: quotient spectrum `[1,3]`, TC scale `k/r+log r`, radial
    factor at most 4, and `D tilde E_G D` with `||D||<=4`.
  - Boundary/entry: p=1, one-color, isotropic, and maximal-rank cases are
    inherited from the accepted local units.
  - Producer/consumers: `step_003` -> `step_004`, `step_005`, `step_011`.
  - Locality: step-local.

- Step ID: `step_004`
  - Claim class/theorem role: exact colored trace, Wick-loop, and diagram
    schema output.
  - Mechanism source: direct expansion of the Gaussian trace and Wick--Isserlis
    pairings in the current mode convention.
  - Control relation: `sum_M |S_M|=4p`, exact `H_M` circuits, and weight
    `kappa_1^(16p) r^(F-4p)`.
  - Boundary/entry: empty `S_M`, repeated labels, one-color words, and p=1
    are explicit branches.
  - Producer/consumers: `step_004` -> `step_005`, `step_006`, `step_007`.
  - Locality: step-local.

- Step ID: `step_005`
  - Claim class/theorem role: quadratic moment and visit-local/all-distinct
    sector.
  - Mechanism source: exact second moment and the unique visit-local matching
    in each component/mode group.
  - Control relation: local contribution at the leading `sqrt(k)/r` scale;
    no repeated cross-visit sum is hidden in the output.
  - Boundary/entry: p=1 and all-distinct labels are closed explicitly.
  - Producer/consumers: `step_005` -> `step_008`, `step_009`.
  - Locality: step-local.

- Step ID: `step_006`
  - Claim class/theorem role: TOP and the face budget.
  - Mechanism source: the rooted three-jacket complex `X` defined from
    `K`, `iota`, `tau`, `h_M`, and `phi_M`.
  - Source-to-claim adequacy: if the finite local-link audit proves `X` is a
    connected closed orientable surface, `chi(X)=B-3p+F<=2` gives exactly
    `F+B<=3p+2`; no surrogate graph or unproved rank theorem is substituted.
  - Control relation: root-smoothed local links plus Euler characteristic.
  - Boundary/entry: `B<=2`, p=1, empty mode, one-color, degree-two,
    repeated-label, and high-degree branches are separately enumerated.
  - Producer/consumers: `step_006` -> `step_007`, `step_009`.
  - Locality: sketch/interface defect.
  - Blocker: the local-link and connectedness table has not yet been
    discharged in current notation; route to `/proof-sketch`.

- Step ID: `step_007`
  - Claim class/theorem role: exact disjoint/exhaustive profile map.
  - Mechanism source: `rho`, `pi`, the specified four-end switch domain,
    lexicographic selection, `Phi`, and the stored reverse record.
  - Control relation: the switch case table must strictly decrease `Phi`; the
    reverse operation must recover labels, roots, orientations, `rho`, and
    `pi`.
  - Boundary/entry: first switch, one repeated label, all-distinct, and
    maximal collision cases are explicit.
  - Producer/consumers: `step_007` -> `step_008`.
  - Locality: sketch/interface defect.
  - Blocker: switch existence/drop and reverse reconstruction are not yet
    verified for every alternating cycle; route to `/proof-sketch`.

- Step ID: `step_008`
  - Claim class/theorem role: profile multiplicity table and P4.
  - Mechanism source: the reversible records from `step_007` plus explicit
    color, root, orientation, label, forest, and switch counts.
  - Control relation: all p-dependent factors are `(8p)^(b/2)` or `(16p)^c`;
    no p factor is assigned to an a-position.
  - Boundary/entry: root and one-color choices are included in the table.
  - Producer/consumers: `step_008` -> `step_009`, `step_010`.
  - Locality: sketch/interface defect.
  - Blocker: the full color/root/orientation count has not been discharged;
    route to `/proof-sketch`.

- Step ID: `step_009`
  - Claim class/theorem role: face/exponent absorption P1--P3 and per-profile
    ENUM bound.
  - Mechanism source: `e`, `sigma`, the rooted Euler identity, and the local
    forest/face table.
  - Control relation: `e>=sigma`, P1, P2, the two-sign-case P3 transfer, and
    the paired P4 count.
  - Boundary/entry: maximal `k`, p0 logarithmic order, and local sector are
    included.
  - Producer/consumers: `step_009` -> `step_010`.
  - Locality: sketch/interface defect.
  - Blocker: P2's face row and its relation to `e,sigma` are not yet proved;
    route to `/proof-sketch`.

- Step ID: `step_010`
  - Claim class/theorem role: disjoint multinomial specialization to 21z.
  - Mechanism source: finite profile partition and accepted P1--P4 inputs.
  - Control relation: multinomial theorem preserves the leading term and gives
    `C_G=27 kappa_1^8`.
  - Producer/consumers: `step_010` -> `step_011`.
  - Locality: step-local conditional on `step_006`, `step_007`, `step_008`,
    and `step_009`; unavailable
    while those blockers remain.

- Step ID: `step_011`
  - Claim class/theorem role: TF, quotient coercivity, `W_0`, and deficit.
  - Mechanism source: 21z, Markov, radial transfer, TC, and projection.
  - Control relation: corrected `C_TF=32e sqrt(32/30) C_G`, TF at most one
    half, and projection energy at most `r/2`.
  - Producer/consumers: `step_011` -> `step_012`, `step_015`.
  - Locality: step-local conditional on `step_010`.

- Step ID: `step_012`
  - Claim class/theorem role: initialization confidence closure.
  - Mechanism source: the four constituent generated events and union/tower
    bookkeeping.
  - Control relation: total failure at most `r^(-10)`.
  - Producer/consumers: `step_012` -> `step_013`, `step_017`.
  - Locality: step-local conditional on `step_011`.

- Step ID: `step_013`
  - Claim class/theorem role: all-time conditional convergence and radius.
  - Mechanism source: `E_size` and the explicitly conditional finite path
    budget `C_path`.
  - Control relation: tail-sum Cauchy and column norm at most 3.
  - Boundary/entry: zero update is stationary; zero path preserves the raw
    initial state.
  - Producer/consumers: `step_013` -> `step_014`, `step_015`, `step_016`,
    `step_017`.
  - Locality: step-local conditional.

- Step ID: `step_014`
  - Claim class/theorem role: exact raw Taylor remainder.
  - Mechanism source: trilinearity and left-inverse bounds at radius 3.
  - Control relation: `C_CP(kappa,3)d_bal^2`; zero displacement gives zero.
  - Producer/consumers: `step_014` -> `step_015`.
  - Locality: step-local.

- Step ID: `step_015`
  - Claim class/theorem role: raw coefficient margin.
  - Mechanism source: `W_0` orthogonality, endpoint path bound, and Taylor.
  - Control relation: `C_CP E_star^2<=delta_0/16` leaves `15delta_0/16`.
  - Baseline conclusion preserved: zero path retains the full raw deficit.
  - Producer/consumers: `step_015` -> `step_016`.
  - Locality: step-local conditional on `step_011`, `step_013`, `step_014`.

- Step ID: `step_016`
  - Claim class/theorem role: same-target physical loss floor.
  - Mechanism source: mode-span projection identity and factor singular values.
  - Control relation: explicit positive `epsilon_0(kappa)` and nonnegative
    orthogonal discard.
  - Producer/consumers: `step_016` -> `step_017`.
  - Locality: step-local.

- Step ID: `step_017`
  - Claim class/theorem role: final event inclusion and conditional probability.
  - Mechanism source: `P(E intersect C)=P(E)P(C given E)` and steps
    `step_012`, `step_013`, `step_016`.
  - Control relation: retain the exact conditional path factor.
  - Boundary/entry: zero conditional probability is allowed by the theorem.
  - Producer/consumers: `step_017` -> final theorem.
  - Locality: step-local conditional.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_cond` | `step_001` | Base singular margin and Gaussian perturbation | Weyl controls the perturbation; no persistent defect | Exact realized factors | Perturbation below half the margin | Primitive base margin | `step_002`, `step_003`, `step_014`, `step_016` | None |
| normalized Gram, raw scale, and `E_size` | `step_002` | Conditioned covariance and Gaussian radius tails | Finite Gram/size failure only | Exact `G_raw=(r/n)^2G_norm` and equal spans | Normalized window and size threshold 2 | `step_003`, `step_011`, `step_012`, `step_013` | None |
| quotient/TC/radial/Gaussian outputs | `step_003` | Accepted quotient algebra and elliptic-radial representation | TC and radial events are finite generated defects | Exact raw quotient and exact conjugation | Quotient margin and radial factor 4 | `step_003` outputs | `step_004`, `step_005`, `step_011` | None |
| colored trace and `Gamma(D)` | `step_004` | Cyclic words, colors, labels, matchings | None beyond finite Wick expansion | Exact diagram object | Exact circuit-loop identity | None | `step_005`, `step_006`, `step_007` | None |
| quadratic and visit-local sector | `step_005` | `Gamma(D)` and Wick covariance loops | Repeated cross-visit diagrams remain outside this output | Exact Gaussian trace sub-sum | Local matching and all-distinct closure | `C0` local constant | `step_008`, `step_009` | None |
| TOP from rooted jacket complex | `step_006` | `K`, `iota`, `tau`, `h_M`, `phi_M` | Local-link and root-smoothing defects are currently uncontrolled | Exact same diagram, no surrogate | `chi(X)=B-3p+F<=2` if the local-link audit passes | Root link smoothing | `step_007`, `step_009` | Local-link/Euler identity not discharged; `/proof-sketch` |
| reversible profile partition | `step_007` | `rho`, `pi`, switch domain, `Phi`, reverse record | Switch existence and inverse coverage unresolved | Exact matching/word objects | Strict potential drop and reverse reconstruction | Lexicographic least switch | `step_008` | Executable bijection not discharged; `/proof-sketch` |
| multiplicity table and P4 | `step_008` | Profile records, colors, roots, orientations, labels | Root/color/forest residual counts unresolved | Exact full diagram count intended | `(8p)^(b/2)(16p)^c` must leave a-positions p-free | `C0,C1,C2` only after table proof | `step_009`, `step_010` | Full count table not discharged; `/proof-sketch` |
| face/exponent P1--P3 and per-profile ENUM | `step_009` | `e`, `sigma`, TOP, P4 | P2 face row is unresolved | Exact weighted diagram | Two-sign-case rank-window transfer | `e>=sigma` and explicit local table | `step_010` | P2 derivation not discharged; `/proof-sketch` |
| ENUM and 21z | `step_010` | Accepted topology, profile, and charge outputs | No additional defect once inputs are accepted | Exact full Gaussian trace moment | Multinomial theorem at `p0=ceil(31 log r)` | `C_G=27 kappa_1^8` | `step_011` | Blocked by `step_006`, `step_007`, `step_008`, and `step_009` |
| TF, `W_0`, and `E_deficit` | `step_011` | 21z, TC, radial, quotient | Finite Markov/event union | Exact raw projection identity | Corrected `C_TF` and factor 16 | `delta_0=1/8` | `step_012`, `step_015` | Blocked until 21z |
| `E_init_norm` probability | `step_012` | Four generated events | Finite union/tower | Exact event intersection | Failure at most `r^(-10)` | Dimension/rank regime | `step_013`, `step_017` | Blocked until `step_011` |
| path limit and radius | `step_013` | `E_size` and conditional `C_path` | Nonnegative increments are summable | Same trajectory and metric | Tail-sum Cauchy | `E_star` | `step_014`, `step_015`, `step_016`, `step_017` | None |
| Taylor, coefficient, physical, and probability outputs | `step_014`, `step_015`, `step_016`, `step_017` | Raw path, `W_0`, projection, event identity | One endpoint remainder and finite event inclusion | Exact raw-to-physical bridge | `C_CP`, `epsilon_0`, and conditional factor | `E_star`, singular margins | final theorem | None after upstream inputs |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| realized conditioning | `step_001` | `step_002`, `step_003`, `step_014`, `step_016` | coefficient legality | `step_001` -> consumers | derived | None |
| normalized Gram/size/raw bridge | `step_002` | `step_003`, `step_011`, `step_012`, `step_013` | initialization and radius | `step_001` -> `step_002` -> consumers | derived | None |
| quotient/TC/radial/Gaussian package | `step_003` | `step_004`, `step_005`, `step_011` | trace and TF inputs | `step_001`,`step_002` -> `step_003` -> consumers | derived | None |
| colored diagram datum | `step_004` | `step_005`, `step_006`, `step_007` | topology/profile input | `step_003` -> `step_004` -> consumers | derived | None |
| quadratic/visit-local sector | `step_005` | `step_008`, `step_009` | leading moment source | `step_004` -> `step_005` -> consumers | derived | None |
| TOP | `step_006` | `step_007`, `step_009` | face budget | `step_004` -> `step_006` -> consumers | derived | local-link/Euler blocker |
| profile classes | `step_007` | `step_008` | disjoint multiplicity partition | `step_004`,`step_006` -> `step_007` -> `step_008` | derived | inverse blocker |
| P4 multiplicity table | `step_008` | `step_009`, `step_010` | profile count | `step_007` -> `step_008` -> consumers | derived | count-table blocker |
| P1--P3 face/exponent charge | `step_009` | `step_010` | no-log-leading bound | `step_005`,`step_006`,`step_007`,`step_008` -> `step_009` -> `step_010` | derived | P2 blocker |
| ENUM/21z | `step_010` | `step_011` | TF moment input | `step_003`, `step_004`, `step_005`, `step_006`, `step_007`, `step_008`, `step_009` -> `step_010` -> `step_011` | derived | blocked upstream |
| TF/deficit | `step_011` | `step_012`, `step_015` | positive normal witness | `step_010`,`step_003` -> `step_011` -> consumers | derived | blocked by 21z |
| initialization event | `step_012` | `step_013`, `step_017` | confidence factor | `step_001`,`step_002`,`step_011` -> `step_012` -> consumers | derived | blocked by `step_011` |
| path limit/radius | `step_013` | `step_014`, `step_015`, `step_016`, `step_017` | conditional deterministic route | `step_012` + `C_path` -> `step_013` -> consumers | derived | None |
| Taylor/coefficient/physical outputs | `step_014`,`step_015`,`step_016` | `step_017` | positive limiting loss | `step_011`,`step_013` -> `step_014` -> `step_015` -> `step_016` | derived | None after upstream inputs |
| probability identity | `step_017` | theorem | final conditional claim | `step_012`,`step_013`,`step_016` -> `step_017` | derived | None after upstream inputs |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Tool/interface | Output | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove `E_cond` with failure `r^(-20)` and factor singular/operator bounds. | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Rectangular perturbation. | Gaussian operator tail and Weyl. | `E_cond`. | Initialization confidence. | PENDING |
| `step_002` | Prove balanced Gaussianization, normalized Grams, `E_size`, raw scale, and span equality. | `step_001` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Rank-one products with common radius. | Sphere/radius decomposition and Gram concentration. | `E_gram^norm`, `E_size`, exact bridge. | Uniform `n,k,r` certificate. | PENDING |
| `step_003` | Prove quotient/Terracini algebra, TC, radial transfer, and exact Gaussian conjugation. | `step_001`, `step_002` | `assump:rank_window`, `assump:independent_initialization` | Gauge removal and anisotropic-to-Gaussian transfer. | Current-notation quotient algebra, Bernstein, elliptic-radial conjugation. | Quotient, TC, radial, and Gaussian package. | Conditional fixed-order input to the moment route. | PENDING |
| `step_004` | Prove the colored cyclic trace and Wick-loop expansion and export `Gamma(D)`. | `step_003` | Derived `step_003` outputs | Cyclic colors, labels, matchings, and exact `H_M` circuits. | Trace expansion and Wick--Isserlis. | Colored diagram datum. | None. | PENDING |
| `step_005` | Prove the quadratic moment and complete visit-local/all-distinct sector. | `step_004` | Derived `step_004` outputs | Separate local matching from repeated cross-visit diagrams. | Exact second moment and unique local matching. | Quadratic/local moment output. | Leading `sqrt(k)/r` sector. | PENDING |
| `step_006` | Define the rooted jacket complex and prove TOP from its local-link/Euler identity, including all boundary branches. | `step_004` | Derived `Gamma(D)` | Root smoothing, local incidence, connectedness, and face boundaries. | Rooted ribbon/cell-complex construction. | TOP, conditionally on the local-link audit. | Exact face/r power. | PENDING |
| `step_007` | Define the exact reversible switch profile, prove strict `Phi` descent and reverse reconstruction, and partition the `2p` oriented ends. | `step_004`, `step_006` | Derived diagram and TOP interface | Switch existence, overlap-free charge records, and inverse. | Lexicographic switch algorithm and stored inverse record. | Disjoint profile classes. | No hidden p factor. | PENDING |
| `step_008` | Discharge the explicit color/root/orientation/label/forest/switch table and prove P4 with `(8p)^(b/2)(16p)^c`. | `step_005`, `step_007` | `assump:rank_window`; derived profile/local outputs | Full multiplicity accounting. | Finite forest and switch enumeration table. | P4 and constants `C0,C1,C2`. | No p factor on a-positions. | PENDING |
| `step_009` | Use `e`, `sigma`, TOP, and the face table to prove P1/P2/P3 and the per-profile ENUM bound. | `step_005`, `step_006`, `step_007`, `step_008` | `assump:rank_window`; derived topology/profile/count outputs | Face/excess absorption at maximal `k`. | Euler identity, forest/face table, two-sign-case exponent transfer. | Per-profile ENUM. | Preserve `sqrt(k)/r` leading term. | PENDING |
| `step_010` | Sum the disjoint profile bound by the multinomial theorem to obtain 21z at `p0=ceil(31 log r)`. | `step_009` | Derived P1--P4 and profile outputs | Exact constants and no leading logarithm. | Multinomial theorem. | ENUM and 21z. | `sqrt(k)/r + sqrt(p0/r) + p0/r`. | PENDING |
| `step_011` | Convert 21z to TF, quotient coercivity, `W_0`, and `E_deficit`. | `step_003`, `step_010` | Derived TC/radial; `assump:rank_window` | Markov, factor 16, projection. | Markov, Pythagoras, pseudoinverse. | TF, `W_0`, `E_deficit`. | Conditional failure at most `r^(-20)`. | PENDING |
| `step_012` | Assemble `P(E_init_norm)>=1-r^(-10)`. | `step_001`, `step_002`, `step_011` | Primitive conditions through dependencies | Joint event bookkeeping. | Tower and union bound. | Initialization probability. | Confidence bridge. | PENDING |
| `step_013` | Prove finite-path convergence, displacement at most `E_star`, and radius 3. | `step_002`, `step_012` | `assump:gd_step`; `E_size`; `C_path` | Noncircular all-time closure. | Tail-sum Cauchy and triangle. | Limit/radius. | Horizon-uniform conditional. | PENDING |
| `step_014` | Prove the exact raw Taylor remainder. | `step_001`, `step_013` | Derived conditioning/radius/path | No hidden k factor. | Trilinear expansion and Cauchy. | Taylor interface. | Exact `C_CP(kappa,3)`. | PENDING |
| `step_015` | Preserve the raw coefficient margin. | `step_011`, `step_013`, `step_014` | Derived deficit/limit/Taylor | One endpoint remainder. | `W_0` orthogonality and absorption. | Coefficient floor. | `(15/16)delta_0 sqrt(r)`. | PENDING |
| `step_016` | Transfer to the physical loss floor. | `step_001`, `step_015` | Derived conditioning/margin | Same-target mode-span bridge. | Projection and tensor singular values. | `epsilon_0(kappa)` times the squared Frobenius norm of `T`. | Relative physical rate. | PENDING |
| `step_017` | Assemble `F_plus` inclusion and exact conditional probability. | `step_012`, `step_013`, `step_016` | Joint probability law | Retain unresolved path factor. | Event inclusion and conditioning identity. | Final theorem. | `(1-r^(-10)) P(C_path given E_init_norm)`. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier stable ID. The
new reduction chain is

    step_001 -> step_002 -> step_003 -> step_004 -> step_005,
    step_004 -> step_006 -> step_007,
    step_005, step_007 -> step_008 -> step_009 -> step_010 -> step_011
    -> step_012 -> step_013 -> step_014 -> step_015 -> step_016 -> step_017.

The topology/profile/charge interfaces are now separate from the quotient,
trace, and visit-local reductions. `C_path` is the only explicitly conditional
input. No downstream event, `W_0`, deficit, or physical conclusion is promoted
to a primitive assumption. Because the rooted local-link audit, reversible
switch proof, and full P2/P4 table are not yet discharged, the attempt is
`PARTIAL_BLOCKED`; the exact theorem and all target-preserving bridges remain
unchanged.

## Blockers

1. `step_006` topology blocker: the rooted three-jacket complex has explicit
   cells, root, incidence, face permutations, Euler count, and boundary
   branches, but the finite local-link/connectedness audit proving it is a
   closed orientable surface is not yet discharged. Without that audit,
   `F+B<=3p+2` is not an exported result.
2. `step_007` profile blocker: the exact `rho`/`pi` switch domain and reverse
   record are specified, but switch existence with strict `Phi` decrease and
   reconstruction of every label/root/orientation case remain unproved.
3. `step_008` and `step_009` charge blocker: the color/root/orientation/forest
   table and the `e,sigma` face row are explicit obligations, but P2 and the
   no-leading-p multiplicity allocation have no accepted current-notation
   derivation yet.
4. Downstream `step_010`, `step_011`, and `step_012` remain conditional on
   those outputs; the
   path, Taylor, coefficient, physical, and exact probability steps are
   target-preserving and otherwise unchanged.

## Future Failure Routing

- A failed local-link/Euler audit or a concrete TOP counterexample routes the
  smallest repair to `/proof-sketch`; it does not authorize an idea change or
  theorem weakening by itself.
- A failed switch-existence, strict-potential, or reverse-reconstruction case
  routes to `/proof-sketch` with the first explicit noninvertible diagram.
- A failed color/root/orientation count, P2 face row, or P4 no-log allocation
  routes to `/proof-sketch` with the offending table row and exponent.
- Only evidence that no same-setting rooted topology/profile/count source can
  support 21z may route to idea revision. Such routing must not silently
  weaken the rank window, conditional mode, raw deficit, `C_TF`, or physical
  loss conclusion.
