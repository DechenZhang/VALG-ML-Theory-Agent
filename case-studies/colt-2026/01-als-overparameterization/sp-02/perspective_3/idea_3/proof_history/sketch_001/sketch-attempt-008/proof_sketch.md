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

- Sketch attempt: 8
- Retry mode: revise_sketch
- Trigger: attempt-7 proof-sketch review rejected forcing Wick pairings onto
  K vertices, overlapping peel supports, an unsupported excess-slot mechanism,
  and inconsistent face-charge algebra. Attempt 8 replaces them by a
  bipartite incidence topology, disjoint per-cycle profiles, and an exact
  face-loss/rank-window reserve.
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: PARTIAL_BLOCKED
- Theorem-contract change: none
- Rank threshold: L(r) = r^(5/4), hence c = 1/4

The exact theorem, conditional path mode, raw target, raw deficit, corrected
`C_TF`, and physical conclusion are unchanged. Any unresolved transition
identity or sparse-collision count below is recorded as a blocker rather than
promoted to a theorem-facing assumption.

## Proof Roadmap

The reduction is split into three lemma-sized outputs before topology and
enumeration. The stable IDs below supersede all older step-003 artifacts.

1. `step_001` proves realized-factor conditioning.
2. `step_002` proves balanced Gaussianization, normalized pair Grams, initial
   size, the exact raw-scale bridge, and tangent-span equality.
3. `step_003` proves quotient/gauge algebra, target correlation (TC), radial
   transfer, and the exact trace-one elliptic-Gaussian conjugation. It exports
   the quotient frame, `E_TC`, the radial event, and `E_G_tilde`.
4. `step_004` expands `tr |E_G_tilde|^(2p)` into a cyclic word and exports an
   exact bipartite incidence datum. Contracting the color-0 trace edges gives
   a connected loopless Eulerian multigraph `K` with `E=2p` edges and `B`
   vertices. Let `P` be the ordered set of its `2p` trace-visit positions.
   For each physical mode `M`, the mode flags form the edge set of a bipartite
   incidence graph

       I_M = ( V(K) disjoint_union G_M, D_M ).

   A flag `d in D_M` is incident on the left to its K-visit node
   `lambda_M(d) in V(K)` and on the right to its component/mode group node
   `gamma_M(d) in G_M`. The color-0 involution `rho_M` pairs flags only inside
   one left fiber `lambda_M^(-1)(u)`; the Wick involution `pi_M` pairs flags
   only inside one right fiber `gamma_M^(-1)(g)`. Thus color-0 transitions are
   local at K nodes and Wick pairings are local at label/group nodes. These are
   distinct node-local operations.

   The same expansion exports the doubled profile-flag set
   `D_prof=P x {+,-}` with orientation reversal `bar`, together with
   fixed-point-free involutions `rho,pi` that commute with `bar`. Their
   alternating circuits are reversal-paired, and their undirected quotient
   cycles partition `P`. The mode-lift maps from `D_prof` to the active
   `D_M` flags intertwine `rho,pi` with `rho_M,pi_M`; this is the exact map
   from the profile cycles used in `step_007` to the Wick loops counted in
   `step_006`. Step 004 must prove the
   flag-to-cyclic-word bijection, fixed-point-free local involutions, tangent
   colors, component labels, and the projection of every flag to its unique
   profile position in `P`, including repeated-label and high-degree groups.
5. `step_005` proves the exact quadratic moment and the visit-local/all-
   distinct sector. It does not claim the cross-visit aggregate.
6. `step_006` defines the loop topology directly on `I_M`. The union of the
   two local involutions `rho_M union pi_M` is a disjoint union `H_M` of
   alternating circuits. The successor `s_M=rho_M o pi_M` traverses every
   undirected circuit in two opposite orientations, so

       Fraw_M = #cycles(s_M) = 2 |H_M|,
       F_M = |H_M| = Fraw_M/2.

   The exact count map sends each mode-M Wick covariance loop to one member of
   `H_M`; hence `F=F_a+F_b+F_c`, with an empty mode contributing its one
   identity loop. A canonical least flag and the reversed traversal give the
   paired root cuts; `p=1`, empty, one-color, `B<=2`, and high-degree branches
   use this same convention. The bipartite incidence TOP target is

       B-2 <= sum_{M in {a,b,c}} (p-F_M),
       F+B <= 3p+2,
       xi := 3p+2-B-F >= 0.                       (TOP)

   Step 006 must prove this by a current-notation circuit-rank/Euler argument
   on the two local node partitions, including the exact root quotient and the
   covariance-loop-to-circuit bijection. The object no longer asks a Wick pair
   to be local at a K node. The exact incidence rank/Euler inequality remains
   blocked until this calculation is discharged.
7. `step_007` constructs a disjoint per-cycle profile. The quotient of each
   nontrivial `rho union pi` alternating circuit by orientation reversal gives
   a cyclic list `C=(h_0,...,h_(ell-1))` of `ell` distinct positions in `P`.
   Choose `h_0` as the least position and choose the lexicographically smaller
   of the two orientations. If `ell=1`, the cycle is trivial and its position
   is marked a. If `ell>=2`, mark `h_0,h_1` as b and all remaining
   `ell-2` positions as c. Since the cycles partition `P`, no position is
   reused and

       a+b+c=2p,
       b/2 = number of nontrivial cycles,
       Q = sum_{C nontrivial}(ell(C)-1) = b/2+c,
       c=Q-b/2.

   The canonical peel removes the last nonlocal insertion in a cycle and
   shortens it by one position. Its inverse inserts that position using the
   stored group, predecessor, orientation, and Wick-pair data. Every peel
   toward the visit-local matching raises the undirected covariance-loop count
   by exactly one. Therefore after the `Q` peels

       F_local = F+Q,  equivalently F=F_local-Q.   (FACE)

   Boundary profiles are exact: `Q=0` gives `(a,b,c)=(2p,0,0)`; one
   nontrivial two-position cycle gives `(2p-2,2,0)`; an `ell`-position cycle
   gives two b positions and `ell-2` c positions; and one maximal cycle gives
   `(a,b,c)=(0,2,2p-2)` and `Q=2p-1`.
8. `step_008` counts the canonical cycle/root/orientation/insertion records.
   Because `Q=b/2+c`, its raw choices must satisfy

       N_labels <= k^v,
       N_records <= multinomial(2p;a,b,c)
                    (8p)^(b/2)(16p)^c.             (P4)

   The complete count table is:

   | source | raw count | profile allocation | p-dependence |
   | --- | --- | --- | --- |
   | tangent colors | `3^(a+b+c)` | constant per profile endpoint | none |
   | root dart | one fixed `d0` | global prefactor | none |
   | orientation bits | at most `2^(b/2+c)` | cycle roots and insertions | b/c only |
   | component labels | `k^v` | label exponent in P2/P3 | handled by `d` |
   | profile positions | `multinomial(2p;a,b,c)` | disjoint cycle positions | none |
   | nontrivial cycle roots | `(8p)^(b/2)` | one canonical root/orientation record per cycle | b only |
   | remaining cycle insertions | `(16p)^c` | one inverse-insertion record per c position | c only |
   | Wick weight | `kappa_1^(16p) r^(F-4p)` | one constant per endpoint | face exponent only |

   The inverse deletes all c insertions in reverse order and then removes the
   nontrivial cycle root, so the map is injective and allocates the complete
   `p^Q` record budget exactly as `p^(b/2+c)`. Trivial a-cycles carry no
   p-dependent record. Constants `C0,C1,C2,C_G` are declared only after this
   reconstruction and the color/root factors are multiplied into the table.
9. `step_009` derives the correct two-sided rank-window charge. Define

       d=v-1-a/2,  d_+=max(d,0),  d_-=max(-d,0),
       R=4p+1-F-(a+b/2+c).

   Since `Q=b/2+c` and (FACE) gives `F_local=F+Q`,

       R=4p+1-F-a-Q=4p+1-F_local-a.                (LOCAL)

   Also `a+Q=2p-b/2`; with the TOP excess
   `xi=3p+2-B-F`, the same reserve has the exact incidence form

       R=B-p-1+b/2+xi.                              (INC-ID)

   The theorem-critical incidence obligation is

       R >= (5/4)d_+ + d_-.                         (P2)

   It must be proved from the loop/local-face identity and the bipartite
   incidence counts, equivalently by proving

       B-p-1+b/2+xi >= (5/4)d_+ + d_-              (INC)

   for every profile. This exact inequality, including `Q=0`, one nontrivial
   cycle, a maximal cycle, `d>=0`, and `d<0`, is the remaining combinatorial
   blocker. All c positions are actual long-cycle positions, and the proof
   uses this direct P2 route only. Under `r<k<=r^(5/4)`, the conservative bound
   `k^d<=r^((5/4)d_+ + d_-)` and P2 give

       k^(v-1) r^(F-4p-1)
       <= (sqrt(k)/r)^a r^(-b/2-c).                 (P3)

   Combining P3 and P4 gives the per-profile ENUM bound. P4 is supplied by the
   cycle records; P2 remains unavailable until (INC) is discharged.
10. `step_010` is a pure disjoint multinomial specialization. Once
    `step_006`, `step_007`, `step_008`, and `step_009` are accepted, it sums

        T_{p;a,b,c} <= 3 k r multinomial(2p;a,b,c)
          (C0 sqrt(k)/r)^a
          (C1 sqrt(p/r))^b
          (C2 p/r)^c

    to obtain exactly

        E[tr |E_G_tilde|^(2p0) | A,B,C]
        <= 3 k r [C_G(kappa)
          (sqrt(k)/r + sqrt(p0/r) + p0/r)]^(2p0),

    for `p0=ceil(31 log r)`, with no p0 factor on the leading term.
11. `step_011` applies Markov, the exact radial factor 16, and
    `C_TF=32e sqrt(32/30) C_G` to export TF, quotient coercivity, `W_0`, and
    `E_deficit`.
12. `step_012` assembles `P(E_init_norm)>=1-r^(-10)`.
13. `step_013` proves conditional finite-path convergence and radius 3.
14. `step_014` proves the exact raw Taylor remainder.
15. `step_015` preserves the raw coefficient margin.
16. `step_016` transfers the margin to the exact physical loss floor.
17. `step_017` proves event inclusion and the exact final conditional
    probability identity.

## Rate Objectives

- Initialization certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `n,r,k,kappa,q`, `rho=r^(-q)`, rank window,
    normalized Gram window `[r^(-20),r^20]`, `delta_0=1/8`, and failure
    `r^(-10)`.
  - Hidden constants may depend on: `kappa,q` only.
  - Hidden constants may not depend on: `n,r,k` or the base triple.
  - Fixed quantities: `kappa,q` as `r` tends to infinity.
  - Probability mode: joint smoothing and initialization, uniformly
    conditional on every realized triple in `E_cond`.
  - Horizon mode: initialization only.
  - Norm mode: factor operator norm, normalized Gram eigenvalues, and
    coefficient Frobenius norm.
  - Required bridge: exact `G_raw=(r/n)^2G_norm`, equal tangent spans, and
    raw `D_r`, `Dhat_0`, `W_0`, residual, and physical metric.
  - Baseline invariance: scale normalization preserves the raw deficit.

- Random-frame moment/TF certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: `k/r^2`, `p0=ceil(31 log r)`, `sqrt(k)/r`,
    `sqrt(p0/r)`, `p0/r`, and conditional failure `r^(-20)`.
  - Hidden constants may depend on: `kappa` only.
  - Hidden constants may not depend on: `n,r,k,p0` or the base triple.
  - Constant provenance: `C0=3 kappa_1^8`, `C1=8 kappa_1^8`,
    `C2=16 kappa_1^8`, `C_G=27 kappa_1^8`, and
    `C_TF=32e sqrt(32/30) C_G`, all only after the P4/face table is proved.
  - Fixed quantities: conditioned realized factors and exact quotient norm.
  - Probability mode: conditional moment, then Markov and finite event union.
  - Horizon mode: fixed moment order `p0`.
  - Norm mode: quotient off-block operator norm.
  - Required bridge: bipartite TOP, the Q-face identity, P4, and the incidence
    reserve must sum to 21z without a logarithmic multiplier on `sqrt(k)/r`.

- Conditional positive-loss theorem:
  - Objective type: horizon-uniform and asymptotic relative-loss explicit.
  - Exposed variables: `kappa`, `delta_0`, `E_star`, and
    `C_CP(kappa,3)=kappa_1^3(1+9)`.
  - Hidden constants may depend on: `kappa` only.
  - Hidden constants may not depend on: `n,r,k,q`, base triple, or path.
  - Probability mode: deterministic conditional on `E_init_norm intersect
    C_path`.
  - Horizon mode: all-time finite path followed by a limit.
  - Norm mode: `d_bal`, coefficient Frobenius norm, physical Frobenius loss.
  - Required bridge: exact Taylor, projection, and relative norm comparisons.
  - Baseline invariance: zero path retains the complete initial deficit.

- Final probability interface:
  - Objective type: confidence-explicit conditional event accounting.
  - Exposed variables: `r^(-10)` and `P(C_path | E_init_norm)`.
  - Hidden constants: none.
  - Probability mode: exact conditional probability.
  - Horizon mode: all-time event.
  - Required bridge: retain the conditional factor without a lower bound.

## Assumption Provenance Objectives

- `step_001` derives `E_cond`; `step_002` derives normalized Grams, size,
  raw scale, and span equality.
- `step_003` derives quotient/TC/radial/Gaussian outputs from primitive
  conditions and `step_001`, `step_002`.
- `step_004` derives the colored trace and bipartite incidence object;
  `step_005` derives the quadratic and visit-local sector. Neither is a
  primitive assumption.
- `step_006` must derive the alternating-circuit count map, TOP, and `xi` from
  the exact incidence object.
- `step_007` derives the disjoint per-cycle profile and `F_local=F+Q`;
  `step_008` derives P4 from canonical records; `step_009` must derive the
  two-sided P2 reserve and P3 directly from incidence counts.
- `step_010` derives 21z only after those producers; `step_011` derives TF,
  `W_0`, and `E_deficit`; `step_012` derives `E_init_norm` probability.
- `C_path` is explicitly conditional. `step_013`, `step_014`, `step_015`,
  `step_016`, and `step_017` derive the deterministic path, Taylor, margin,
  physical, and probability outputs.

## Mechanism-Source And Boundary Stress

- Step ID: `step_001`
  - Claim class/theorem role: realized factor conditioning.
  - Mechanism source: primitive base singular margin plus Gaussian perturbation
    and Weyl.
  - Control relation: perturbation below half the base margin.
  - Boundary/entry: zero smoothing and lower singular boundary pass.
  - Producer/consumers: `step_001` -> `step_002`, `step_003`, `step_014`,
    `step_016`.
  - Locality: step-local.

- Step ID: `step_002`
  - Claim class/theorem role: normalized Gram and initial size.
  - Mechanism source: conditioned covariance and Gaussian concentration.
  - Control relation: Gram window and size threshold 2.
  - Boundary/entry: arbitrary large `n`, maximal `k`.
  - Producer/consumers: `step_002` -> `step_003`, `step_011`, `step_012`,
    `step_013`.
  - Locality: step-local.

- Step ID: `step_003`
  - Claim class/theorem role: quotient, TC, radial, Gaussian conjugation.
  - Mechanism source: direct quotient algebra, Bernstein, elliptic-radial
    representation, exact conjugation.
  - Control relation: quotient spectrum `[1,3]`, radial factor 4, TC scale,
    and `D E_G_tilde D` with `||D||<=4`.
  - Producer/consumers: `step_003` -> `step_004`, `step_005`, `step_011`.
  - Locality: step-local.

- Step ID: `step_004`
  - Claim class/theorem role: exact colored trace and bipartite incidence.
  - Mechanism source: cyclic trace expansion and Wick--Isserlis.
  - Control relation: every flag is incident to one K node and one
    component/mode group; `rho_M` is left-local, `pi_M` is right-local, and
    the reversal quotient of `D_prof` gives the disjoint cycles on `P`.
  - Boundary/entry: empty modes, p=1, one-color, repeated labels, high degree.
  - Producer/consumers: `step_004` -> `step_005`, `step_006`, `step_007`.
  - Locality: step-local direct construction on the two node partitions.

- Step ID: `step_005`
  - Claim class/theorem role: quadratic and visit-local leading sector.
  - Mechanism source: exact second moment and unique local matching.
  - Control relation: all-distinct/local words at the `sqrt(k)/r` scale.
  - Producer/consumers: `step_005` -> `step_008`, `step_009`.
  - Locality: step-local.

- Step ID: `step_006`
  - Claim class/theorem role: bipartite alternating-circuit TOP.
  - Mechanism source: `I_M`, left-local `rho_M`, right-local `pi_M`, their
    alternating circuits `H_M`, paired orientations, and paired root cuts.
  - Source-to-claim adequacy: the Wick covariance loops are exactly `H_M`,
    `Fraw_M=2F_M`, and TOP is `B-2<=sum_M(p-F_M)` on the same object.
  - Control relation: bipartite circuit-rank/Euler calculation and exact loop
    bijection; `xi=3p+2-B-F` is the resulting incidence excess.
  - Boundary/entry: all listed small/empty/degree branches are separate rows.
  - Producer/consumers: `step_006` -> `step_007`, `step_009`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; TOP is a bound on the exact diagram.
  - Scope/noncircular status: finite fixed-order incidence system; producer
    is `step_004`, so no TOP closure is assumed by `step_006`.
  - Entry/boundary stress: paired orientations/root cuts, empty identity loop,
    p=1, B<=2, one-color, repeated-label, and high-degree branches.
  - Blocker: the exact incidence circuit-rank/Euler proof of TOP and `xi>=0`
    is not discharged; route to `/proof-sketch`.

- Step ID: `step_007`
  - Claim class/theorem role: disjoint per-cycle profile and face loss.
  - Mechanism source: oriented `rho union pi` cycles, canonical root/orientation,
    and reversible deletion/insertion records.
  - Control relation: each nontrivial cycle contributes two b positions and
    `ell-2` c positions; `Q=b/2+c`; each peel gives `F_after=F_before+1`.
  - Boundary/entry: `Q=0`, one two-position cycle, long and maximal cycles.
  - Producer/consumers: `step_007` -> `step_008`, `step_009`.
  - Locality: step-local direct finite-cycle construction.
  - Residual-to-target adequacy: N/A; peeling partitions the exact matchings.
  - Scope/noncircular status: `Q` is a finite nonnegative integer and drops by
    one; the cycle partition of `P` makes all profile positions disjoint.
  - Entry/boundary stress: Q=0 gives all a; a maximal cycle gives two b and
    `2p-2` c positions, with no overlap or auxiliary atoms.

- Step ID: `step_008`
  - Claim class/theorem role: multiplicity table and P4.
  - Mechanism source: canonical cycle roots/orientations, inverse insertion
    records, tangent colors, fixed global root, and component labels.
  - Control relation: the exact `p^Q=p^(b/2+c)` budget is bounded by
    `(8p)^(b/2)(16p)^c`; no p factor reaches trivial a-cycles.
  - Boundary/entry: Q=0, one nontrivial cycle, and one maximal cycle.
  - Producer/consumers: `step_008` -> `step_009`, `step_010`.
  - Locality: step-local finite injective reconstruction.
  - Residual-to-target adequacy: N/A; P4 counts exact cycle records.
  - Scope/noncircular status: finite profile records; no multiplicity bound is
    assumed by `step_008`.
  - Entry/boundary stress: fixed root, two b positions per nontrivial cycle,
    and all remaining long-cycle positions charged to c exactly once.

- Step ID: `step_009`
  - Claim class/theorem role: face/exponent P2/P3 and per-profile ENUM.
  - Mechanism source: `F_local=F+Q`, TOP excess `xi`, P4, and the exact
    incidence identities for `R` and `d`.
  - Control relation: prove `R>=5d_+/4+d_-`; then
    `k^d<=r^(5d_+/4+d_-)` yields P3 under the full rank window.
  - Boundary/entry: Q=0, one nontrivial cycle, maximal cycle, both signs of d,
    maximal `k`, and p0 logarithmic.
  - Producer/consumers: `step_009` -> `step_010`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; P2/P3 transfer the exact diagram weight.
  - Scope/noncircular status: finite p profile sum; face loss is produced by
    `step_007` and TOP excess only by `step_006`.
  - Entry/boundary stress: c consists only of actual long-cycle positions,
    and the cycle partition assigns every position exactly once.
  - Blocker: the exact incidence reserve
    `B-p-1+b/2+xi>=5d_+/4+d_-` is not yet proved; route to `/proof-sketch`.

- Step ID: `step_010`
  - Claim class/theorem role: ENUM and 21z.
  - Mechanism source: finite disjoint profiles and multinomial theorem.
  - Control relation: exact `C_G` sum and no leading p0 factor.
  - Producer/consumers: `step_010` -> `step_011`.
  - Locality: step-local conditional on `step_006`, `step_007`, `step_008`,
    `step_009`.

- Step ID: `step_011`
  - Claim class/theorem role: TF, coercivity, `W_0`, deficit.
  - Mechanism source: 21z, Markov, radial transfer, TC, projection.
  - Control relation: corrected `C_TF`, factor 16, projection energy `r/2`.
  - Producer/consumers: `step_011` -> `step_012`, `step_015`.
  - Locality: step-local conditional on `step_010`.

- Step ID: `step_012`
  - Claim class/theorem role: initialization probability.
  - Mechanism source: four generated events and union/tower bookkeeping.
  - Control relation: failure at most `r^(-10)`.
  - Producer/consumers: `step_012` -> `step_013`, `step_017`.
  - Locality: step-local conditional on `step_011`.

- Step ID: `step_013`
  - Claim class/theorem role: all-time conditional path convergence.
  - Mechanism source: `E_size` and explicitly conditional `C_path`.
  - Control relation: tail-sum Cauchy and radius 3.
  - Producer/consumers: `step_013` -> `step_014`, `step_015`, `step_016`,
    `step_017`.
  - Locality: step-local conditional.

- Step ID: `step_014`
  - Claim class/theorem role: raw Taylor remainder.
  - Mechanism source: trilinearity and left-inverse bounds.
  - Control relation: `C_CP(kappa,3)d_bal^2`.
  - Producer/consumers: `step_014` -> `step_015`.
  - Locality: step-local.

- Step ID: `step_015`
  - Claim class/theorem role: raw coefficient margin.
  - Mechanism source: `W_0` orthogonality and Taylor absorption.
  - Control relation: `C_CP E_star^2<=delta_0/16`.
  - Baseline conclusion preserved: zero path keeps the full raw margin.
  - Producer/consumers: `step_015` -> `step_016`.
  - Locality: step-local conditional.

- Step ID: `step_016`
  - Claim class/theorem role: exact physical loss floor.
  - Mechanism source: mode-span projection and singular values.
  - Control relation: positive `epsilon_0(kappa)` and nonnegative discard.
  - Producer/consumers: `step_016` -> `step_017`.
  - Locality: step-local.

- Step ID: `step_017`
  - Claim class/theorem role: final conditional probability.
  - Mechanism source: event inclusion and conditional identity.
  - Control relation: retain `P(C_path | E_init_norm)` exactly.
  - Producer/consumers: `step_017` -> final theorem.
  - Locality: step-local conditional.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `E_cond` | `step_001` | Base margin and Gaussian perturbation | Weyl controls the finite perturbation | Exact factors | Below-half-margin inequality | Primitive singular margin | `step_002`, `step_003`, `step_014`, `step_016` | None |
| normalized Gram/size/raw bridge | `step_002` | Gaussianization and concentration | Finite initialization defects | Exact raw scale and equal spans | Gram window and size threshold | Covariance margin | `step_003`, `step_011`, `step_012`, `step_013` | None |
| quotient/TC/radial/Gaussian package | `step_003` | Quotient algebra, TC, radial event | Generated TC/radial events only | Exact raw quotient and conjugation | Quotient margin and radial factor 4 | Accepted local bounds | `step_004`, `step_005`, `step_011` | None |
| bipartite colored incidence datum | `step_004` | `I_M`, `D_prof`, flag maps `lambda_M,gamma_M`, colors, group-local Wick matchings | Finite trace-expansion bookkeeping only | Exact diagram object | `rho_M` left-local, `pi_M` right-local, and profile cycles are the reversal quotient on `P` | Exact node incidence | `step_005`, `step_006`, `step_007` | None |
| quadratic/visit-local sector | `step_005` | Exact second moment and local matching | Cross-visit aggregate excluded | Exact sub-sum | Leading local bound | `C0` local source | `step_008`, `step_009` | None |
| bipartite TOP and excess | `step_006` | `rho_M`, `pi_M`, alternating `H_M`, paired orientations/root cuts | Exact circuit-rank/Euler inequality unresolved | Same Wick loops and incidence object | `B-2<=sum_M(p-F_M)`, `Fraw_M=2F_M`, `xi=3p+2-B-F` | Bipartite incidence rank | `step_007`, `step_009` | TOP/excess proof not discharged; `/proof-sketch` |
| per-cycle profile and face loss | `step_007` | disjoint cycles on `P`, canonical roots, reverse insertions | No uncontrolled defect | Exact matching objects | `a+b+c=2p`, `Q=b/2+c`, `F_local=F+Q` | Canonical cycle order | `step_008`, `step_009` | None |
| P4 multiplicity table | `step_008` | Colors, fixed root, cycle orientations, labels, inverse insertions | Finite constant accounting | Exact full count | `(8p)^(b/2)(16p)^c` and `p^Q=p^(b/2+c)` | Canonical root/insertion records | `step_009`, `step_010` | None |
| P2/P3 incidence charge | `step_009` | `F_local=F+Q`, TOP excess `xi`, `R`, `d`, P4 | Exact incidence reserve unresolved | Exact weighted diagram | `R>=5d_+/4+d_-` then two-sided rank-window transfer | `R=B-p-1+b/2+xi` | `step_010` | INC inequality not discharged; `/proof-sketch` |
| ENUM and 21z | `step_010` | Accepted topology/profile/count/face outputs | No extra defect after inputs | Exact full Gaussian moment | Multinomial theorem | `C_G=27 kappa_1^8` | `step_011` | Blocked by `step_006` and `step_009` |
| TF, `W_0`, deficit | `step_011` | 21z, TC, radial, quotient | Finite Markov/event union | Exact raw projection | Corrected `C_TF`, factor 16 | `delta_0=1/8` | `step_012`, `step_015` | Blocked until 21z |
| initialization probability | `step_012` | Four generated events | Finite union | Exact event intersection | Failure `r^(-10)` | Dimension/rank regime | `step_013`, `step_017` | Blocked until `step_011` |
| path/Taylor/margin/physical/probability outputs | `step_013`, `step_014`, `step_015`, `step_016`, `step_017` | `C_path`, raw `W_0`, projection, event identity | Finite endpoint remainder | Exact raw-to-physical bridge | `C_CP`, `epsilon_0`, conditional factor | `E_star`, singular margin | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| realized conditioning | `step_001` | `step_002`, `step_003`, `step_014`, `step_016` | coefficient legality | `step_001` -> consumers | derived | None |
| normalized Gram/size/raw bridge | `step_002` | `step_003`, `step_011`, `step_012`, `step_013` | initialization/radius | `step_001` -> `step_002` -> consumers | derived | None |
| quotient/TC/radial package | `step_003` | `step_004`, `step_005`, `step_011` | moment/TF inputs | `step_001`,`step_002` -> `step_003` -> consumers | derived | None |
| bipartite incidence datum | `step_004` | `step_005`, `step_006`, `step_007` | topology/profile input | `step_003` -> `step_004` -> consumers | derived | None |
| quadratic/local sector | `step_005` | `step_008`, `step_009` | leading moment source | `step_004` -> `step_005` -> consumers | derived | None |
| TOP and incidence excess | `step_006` | `step_007`, `step_009` | face budget | `step_004` -> `step_006` -> consumers | derived | incidence TOP blocker |
| per-cycle profiles/face loss | `step_007` | `step_008`, `step_009` | disjoint profile and Q-face identity | `step_004`,`step_006` -> `step_007` -> consumers | derived | None |
| P4 | `step_008` | `step_009`, `step_010` | multiplicity count | `step_007` -> `step_008` -> consumers | derived | None |
| P2/P3 | `step_009` | `step_010` | face/exponent charge | `step_005`,`step_006`,`step_007`,`step_008` -> `step_009` -> `step_010` | derived | incidence-reserve blocker |
| ENUM/21z | `step_010` | `step_011` | TF moment | `step_003`,`step_004`,`step_005`,`step_006`,`step_007`,`step_008`,`step_009` -> `step_010` -> `step_011` | derived | blocked upstream |
| TF/deficit | `step_011` | `step_012`, `step_015` | normal witness | `step_010` -> `step_011` -> consumers | derived | blocked by 21z |
| initialization event | `step_012` | `step_013`, `step_017` | confidence factor | `step_001`,`step_002`,`step_011` -> `step_012` -> consumers | derived | blocked by `step_011` |
| path limit/radius | `step_013` | `step_014`, `step_015`, `step_016`, `step_017` | conditional route | `step_012` + `C_path` -> `step_013` -> consumers | derived | None |
| Taylor/margin/physical outputs | `step_014`, `step_015`, `step_016` | `step_017` | positive loss | `step_011`,`step_013` -> `step_014` -> `step_015` -> `step_016` | derived | None |
| probability identity | `step_017` | theorem | final claim | `step_012`,`step_013`,`step_016` -> `step_017` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Tool/interface | Output | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove `E_cond` with failure `r^(-20)` and factor bounds. | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Perturbation. | Gaussian tail and Weyl. | `E_cond`. | Initialization confidence. | PENDING |
| `step_002` | Prove normalized Grams, `E_size`, raw scale, and span equality. | `step_001` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Balanced rank-one products. | Sphere/radius and Gram concentration. | `E_gram^norm`, `E_size`, raw bridge. | Uniform certificate. | PENDING |
| `step_003` | Prove quotient/TC/radial/Gaussian conjugation. | `step_001`, `step_002` | `assump:rank_window`, `assump:independent_initialization` | Gauge and anisotropic transfer. | Quotient algebra, Bernstein, radial conjugation. | Quotient/TC/radial package. | Conditional fixed-order input. | PENDING |
| `step_004` | Prove the colored trace/loop expansion, exact bipartite flag incidence, and the global profile-cycle quotient with K-local `rho_M` and group-local `pi_M`. | `step_003` | Derived `step_003` outputs | Repeated labels and high-degree groups. | Trace expansion, Wick--Isserlis, bipartite incidence. | `I_M`, `D_prof`, and exact loop/profile flags. | None. | PENDING |
| `step_005` | Prove quadratic moment and visit-local/all-distinct sector. | `step_004` | Derived `step_004` outputs | Separate local and cross-visit pairings. | Exact second moment/local matching. | Local sector. | Leading `sqrt(k)/r`. | PENDING |
| `step_006` | Prove `Fraw_M=2F_M`, the covariance-loop bijection, bipartite TOP, `xi>=0`, paired root cuts, and all boundary branches. | `step_004` | Derived bipartite incidence | Circuit-rank/Euler identity and exact count mapping. | Direct bipartite alternating-circuit lemma. | TOP and incidence excess. | Exact face/r power. | PENDING |
| `step_007` | Prove the per-cycle two-b/rest-c profile, `Q=b/2+c`, reversible reconstruction, and `F_local=F+Q`. | `step_004`, `step_006` | Derived incidence and circuit outputs | Canonical cycle order and unit face gain. | Alternating-cycle deletion/insertion. | `a,b,c,Q,F_local` interfaces. | Exact p-record/face allocation. | PENDING |
| `step_008` | Prove the color/root/orientation/label/cycle-record count and P4 with `(8p)^(b/2)(16p)^c`. | `step_005`, `step_007` | `assump:rank_window`; derived profile/local outputs | Constants, injectivity, and `p^Q` allocation. | Canonical cycle multiplicity table. | P4 and `C0,C1,C2`. | No p on a-positions. | PENDING |
| `step_009` | Prove `R>=5d_+/4+d_-` from LOCAL/TOP/incidence counts, then P3 and per-profile ENUM. | `step_005`, `step_006`, `step_007`, `step_008` | `assump:rank_window`; derived outputs | Exact incidence reserve for both signs of d. | Loop/local-face identity and two-sided rank algebra. | P2/P3 and per-profile ENUM. | Preserve leading term. | PENDING |
| `step_010` | Sum profiles to exact ENUM and 21z at `p0=ceil(31 log r)`. | `step_009` | Derived P2/P3/P4. | Finite multinomial sum. | Multinomial theorem. | 21z. | Full TF rate. | PENDING |
| `step_011` | Convert 21z to TF, coercivity, `W_0`, and deficit. | `step_003`, `step_010` | Derived TC/radial; `assump:rank_window` | Markov and projection. | Markov/Pythagoras/pseudoinverse. | TF, `W_0`, deficit. | Conditional `r^(-20)`. | PENDING |
| `step_012` | Assemble initialization probability. | `step_001`, `step_002`, `step_011` | Primitive conditions through dependencies | Event bookkeeping. | Union/tower. | `E_init_norm`. | `r^(-10)` confidence. | PENDING |
| `step_013` | Prove conditional path convergence and radius 3. | `step_002`, `step_012` | `assump:gd_step`; `E_size`; `C_path` | All-time closure. | Tail-sum Cauchy. | Limit/radius. | Horizon-uniform conditional. | PENDING |
| `step_014` | Prove exact raw Taylor remainder. | `step_001`, `step_013` | Derived radius/path | Multilinear remainder. | Trilinearity/Cauchy. | Taylor interface. | `C_CP(kappa,3)`. | PENDING |
| `step_015` | Preserve raw coefficient margin. | `step_011`, `step_013`, `step_014` | Derived deficit/path/Taylor | Endpoint absorption. | `W_0` orthogonality. | Coefficient floor. | `(15/16)delta_0 sqrt(r)`. | PENDING |
| `step_016` | Transfer to physical loss. | `step_001`, `step_015` | Derived conditioning/margin | Same-target projection. | Projection and singular values. | Physical floor. | `epsilon_0(kappa)`. | PENDING |
| `step_017` | Assemble final event and conditional probability. | `step_012`, `step_013`, `step_016` | Joint law | Exact event identity. | Inclusion/conditioning. | Final theorem. | Retain conditional path factor. | PENDING |

## Dependency Notes

The graph is acyclic. The reduction chain is `step_001` -> `step_002` ->
`step_003` -> `step_004` -> `step_005`; the topology/profile branch is
`step_004` -> `step_006` -> `step_007`; the count/face branch is
`step_005`, `step_007` -> `step_008`, followed by `step_005`, `step_006`,
`step_007`, `step_008` -> `step_009` -> `step_010`; and the
unchanged downstream chain is `step_010` -> `step_011` -> `step_012` ->
`step_013` -> `step_014` -> `step_015` -> `step_016` -> `step_017`.
Every dependency points to an earlier stable ID. `C_path` is explicitly
conditional; no generated event or raw-target conclusion is a primitive
assumption.

## Blockers

1. `step_006`: the bipartite object separates the two legitimate locality
   classes, and the oriented/undirected convention is fixed by
   `Fraw_M=2F_M`, but the
   exact circuit-rank/Euler derivation of
   `B-2<=sum_M(p-F_M)` and `xi=3p+2-B-F>=0` is not yet discharged in current
   notation, including root, empty, p=1, one-color, and high-degree branches.
2. `step_009`: the per-cycle profile and P4 now have exact producers, but the
   stronger incidence reserve
   `B-p-1+b/2+xi >= (5/4)d_+ + d_-` remains unproved. This is the exact
   loop/local-face inequality needed for P2 and the full two-sided rank window.
   Every c position is supplied by the disjoint long-cycle profile itself.
3. `step_010` and `step_011` are consequently blocked on the exact 21z source;
   `step_012` is blocked on TF. `step_013`, `step_014`, `step_015`, `step_016`,
   and `step_017` remain valid target-preserving conditional assembly.

## Future Failure Routing

- A failed bipartite loop bijection or TOP calculation routes to
  `/proof-sketch` with the first incidence node, circuit, root, or boundary
  branch where the identity fails; it does not authorize theorem weakening.
- A failed per-cycle reconstruction or P4 count routes to `/proof-sketch` with
  the first cycle/root/insertion record where injectivity or the `p^Q`
  allocation fails.
- A failed incidence reserve routes to `/proof-sketch` with the exact values
  of `B,p,b,xi,v,a,d` violating (INC).
- Only evidence that no same-setting incidence, profile, and count source can
  support 21z may route to idea revision. The rank window, conditional mode,
  `C_TF`, raw deficit, and physical-loss conclusion must remain unchanged.
