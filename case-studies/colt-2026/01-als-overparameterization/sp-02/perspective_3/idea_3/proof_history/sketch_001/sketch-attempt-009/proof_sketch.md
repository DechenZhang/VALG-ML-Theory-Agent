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

- Sketch attempt: 9
- Retry mode: revise_sketch
- Trigger: attempt-8 proof-sketch review found a mode-occurrence cardinality
  mismatch, an endpoint-incompatible face law, a lossy rank-window reserve,
  and overloaded structural steps. Attempt 9 uses the disjoint union of `4p`
  mode occurrences, an exact signed face identity, the sharp rank window, and
  seven lemma-sized structural producers.
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: PARTIAL_BLOCKED
- Theorem-contract change: none
- Rank threshold: L(r) = r^(5/4), hence c = 1/4

The exact theorem, conditional path mode, raw target, raw deficit, corrected
`C_TF`, and physical conclusion are unchanged. Any unresolved rooted rank or
signed-incidence reserve below is recorded as a blocker rather than promoted
to a theorem-facing assumption.

## Proof Roadmap

The reduction is split into three lemma-sized outputs before topology and
enumeration. The stable IDs below supersede all older step-003 artifacts.

1. `step_001` proves realized-factor conditioning.
2. `step_002` proves balanced Gaussianization, normalized pair Grams, initial
   size, the exact raw-scale bridge, and tangent-span equality.
3. `step_003` proves quotient/gauge algebra, target correlation (TC), radial
   transfer, and the exact trace-one elliptic-Gaussian conjugation. It exports
   the quotient frame, `E_TC`, the radial event, and `E_G_tilde`.
4. `step_004` proves the exact flag-to-Wick-loop interface. Let `P` be the
   `2p` trace positions with tangent colors `m_s`. The active mode-occurrence
   set is

       O = { (s,M): s in P, M != m_s },
       O = disjoint_union_M O_M,  |O|=4p.

   Contracting the color-0 trace edges gives the connected loopless Eulerian
   multigraph `K` with `2p` edges and `B_K=|V(K)|` vertices.
   Each occurrence has two Gaussian half-flags, so
   `D_M=O_M x {0,1}`. The color/Gram involution `tau_M` pairs flags at the
   K-side transition nodes, the visit-local reference involution `rho_M`
   pairs the two flags of one occurrence, and the Wick involution `pi_M`
   pairs flags only inside one component/mode group. The bipartite incidence
   object records the K-node and group-node of every flag. The alternating
   circuits of `tau_M union pi_M` are exactly the mode-M covariance-coordinate
   loops. With `s_M=tau_M o pi_M`, each undirected circuit has two orientations:

       Fraw_M=#cycles(s_M)=2F_M,
       F=sum_M F_M.

   On each alternating circuit, `tau_M s_M tau_M=s_M^(-1)` and `tau_M`
   exchanges the two successor orbits. The least flag on one orbit and its
   `tau_M` mate give paired root cuts and one undirected count. This convention
   is unchanged at `p=1` and for a two-flag circuit.
   Empty modes contribute one identity loop. At the visit-local endpoint
   `pi_M=rho_M`, every nonempty mode has exactly one loop, so the total endpoint
   is `F_loc=3`. The same bijection must handle root cuts, `p=1`, repeated
   labels, empty modes, and high-degree groups. It also recovers the exact
   weight `kappa_1^(16p) r^(F-4p)` and the all-local/all-distinct leading
   sector.
5. `step_005` proves TOP as a separate rank lemma on the incidence object.
   The current-notation target is

       B_K-2 <= sum_{M in {a,b,c}} (p-F_M),
       F+B_K <= 3p+2,
       xi:=3p+2-B_K-F>=0.                          (TOP)

   Let `U=F_2^p` be the rooted transition-slot space and
   `V_root=F_2^(B_K)/span{1,e_root}`. A valid proof must construct

       J_M,N_M:U->U,  L_M:U->V_root,  Q_K:U->V_root

   from the flag incidence, with `dim ker(J_M)=F_M`,
   `rank(J_M)=p-F_M`, `rank(Q_K)=B_K-2`, and the entrywise identity

       Q_K=sum_M L_M J_M N_M.

   It must also discharge the root/all-ones
   quotient and empty, one-color, `B_K<=2`, and high-degree branches. These
   identities are proof targets, not assumptions. Until the rank construction
   is supplied, TOP and `xi` remain blocked.
6. `step_006` builds the mode-cycle profile and inverse without compressing
   modes. For each `M`, the circuits of `rho_M union pi_M` give cyclic lists of
   occurrences in `O_M`; their disjoint union partitions all `4p` occurrences.
   For a cycle of `ell` occurrences, mark its unique occurrence A when
   `ell=1`. When `ell>=2`, choose the least occurrence and canonical
   orientation, mark the first two occurrences B, and mark the remaining
   `ell-2` occurrences C. Therefore

       A+B+C=4p,
       B/2=# nontrivial mode cycles,
       Q=sum_Cycle(ell-1)=B/2+C.

   The deletion code shortens one mode cycle by one occurrence; the inverse
   stores its mode/group, canonical root, predecessor, orientation, and Wick
   reconnection. It is mode-preserving and reconstructs both independent mode
   matchings at each trace position. `Q=0`, one two-occurrence cycle, long
   cycles, repeated labels, and a maximal mode cycle use the same code.
7. `step_007` proves the signed face identity as its own lemma. Starting from
   the visit-local endpoint `pi_M=rho_M`, apply the `Q` inverse insertions from
   `step_006`. A two-pair insertion changes the number of exact circuits of
   `tau_M union pi_M` by one. With

       epsilon_j=F_j-F_(j-1) in {-1,+1},

   the original diagram satisfies

       F=3+sum_{j=1}^Q epsilon_j,
       |sum_j epsilon_j|<=Q.                       (FACE)

   This fixes the sign at the actual `F_loc=3` endpoint and makes no uniform
   face-gain claim. The proof must identify the two affected covariance loops
   through the bijection of `step_004`; `Q=0` gives `F=3` exactly.
8. `step_008` proves P4 from the mode-preserving inverse records. The exact
   count target is

       N_labels<=k^v,
       N_records<=multinomial(4p;A,B,C)
                    (8p)^(B/2)(16p)^C,             (P4)

   with the complete `p^Q=p^(B/2+C)` budget allocated only to B/C records.
   One `8p` record stores each nontrivial mode-cycle root/orientation and one
   `16p` record stores each remaining inverse insertion. A-occurrences have no
   p-dependent choice. The proof must count tangent colors, the fixed trace
   root, modes, groups, component labels, orientation bits, and reconnections,
   and derive `C_A,C_B,C_C` only after injectivity is established.

   | record source | raw factor | charged occurrence class |
   | --- | --- | --- |
   | A/B/C occurrence assignment | `multinomial(4p;A,B,C)` | no p charge |
   | tangent colors and active modes | fixed constant per trace position | constants only |
   | component labels | `k^v` | handled by d in P3 |
   | nontrivial cycle root/orientation/group | `(8p)^(B/2)` | one per B-pair |
   | inverse insertion/reconnection | `(16p)^C` | one per C occurrence |
   | Wick covariance weight | `kappa_1^(16p) r^(F-4p)` | exact face exponent |
9. `step_009` proves the sharp reserve/P3 comparison. Put

       x=sqrt(k)/r,  y=sqrt(p/r),  z=p/r,
       d=v-1-A/4,  d_+=max(d,0),  d_-=max(-d,0),
       R=2p+1-F-C/2.

   Since the record count contributes `p^Q` with `Q=B/2+C`, the exact weight
   comparison is

       k^(v-1) p^Q r^(F-4p-1)
       <= (sqrt(x))^A y^B z^C                     (P3)

   precisely when `k^d<=r^R`. The sharp rank window gives

       k^d<=r^((5/4)d_+-d_-).

   Thus the exact reserve target is

       R >= (5/4)d_+-d_-.                          (P2)

   Using FACE and TOP, this is equivalently either of the current-notation
   incidence inequalities

       2p-2-sum_j epsilon_j-C/2 >= (5/4)d_+-d_-,
       B_K-p-1+xi-C/2 >= (5/4)d_+-d_-.             (INC)

   The derivation of (INC) from the actual incidence degrees, group counts,
   and cycle profile remains the exact combinatorial blocker. It must cover
   both signs of `d`, `Q=0`, one nontrivial cycle, maximal cycles, repeated
   labels, and maximal `k`.
10. `step_010` performs the final occurrence-pair compression and exports
    21z. Assign the per-occurrence analytic factor `sqrt(x)` to A, `y` to B,
    and `z` to C. Each trace position has exactly two active mode occurrences.
    For `p<=p0` and sufficiently large r, the rank window and
    `p0=ceil(31 log r)` give `0<=x,y,z<=1` and `y^2=z`. Every possible pair
    obeys

        sqrt(x)sqrt(x)=x,
        sqrt(x)y <= (x+z)/2,
        sqrt(x)z <= (x+z)/2,
        y^2=z,  yz<=z,  z^2<=z,

    hence its product is at most `x+y+z`. There are at most nine A/B/C type
    pairs at one trace position, so their sum is at most
    `9(x+y+z)`. Pairing the `4p` occurrence factors therefore produces exactly
    `2p` public factors. Combining this table with P4, P3, and the finite
    profile sum yields, for
    `p0=ceil(31 log r)`,

        E[tr |E_G_tilde|^(2p0) | A,B,C]
        <= 3 k r [C_G(kappa)
          (sqrt(k)/r + sqrt(p0/r) + p0/r)]^(2p0),  (21z)

    with no `p0` multiplier on the leading term.
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
  - Constant provenance: occurrence constants `C_A,C_B,C_C` and
    `C_G=C_G(kappa)` are derived only after the P4 record table and
    occurrence-pair compression are proved; the downstream constant remains
    exactly `C_TF=32e sqrt(32/30) C_G`.
  - Fixed quantities: conditioned realized factors and exact quotient norm.
  - Probability mode: conditional moment, then Markov and finite event union.
  - Horizon mode: fixed moment order `p0`.
  - Norm mode: quotient off-block operator norm.
  - Required bridge: the Wick-loop bijection, TOP, signed FACE identity, P4,
    sharp signed reserve, and occurrence-pair compression must yield 21z
    without a logarithmic multiplier on `sqrt(k)/r`.

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
- `step_004` derives the exact mode-occurrence/flag object, Wick-loop
  bijection, orientation convention, `F_loc=3`, and local leading sector.
- `step_005` must derive TOP and `xi` from explicit rooted rank maps.
- `step_006` derives the disjoint mode-cycle A/B/C profile and inverse;
  `step_007` derives the signed FACE identity; `step_008` derives P4.
- `step_009` must derive the sharp signed P2 reserve and P3; `step_010`
  derives the final occurrence-pair compression and 21z.
- `step_011` derives TF,
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
  - Claim class/theorem role: exact flag-to-Wick-loop bijection.
  - Mechanism source: cyclic trace expansion and Wick--Isserlis.
  - Control relation: `O=disjoint_union_M O_M` has `4p` occurrences;
    `tau_M union pi_M` is exactly the covariance-loop network,
    `Fraw_M=2F_M`, and `pi_M=rho_M` gives total `F_loc=3`.
  - Boundary/entry: empty modes, p=1, one-color, repeated labels, high degree,
    and the all-local/all-distinct sector.
  - Producer/consumers: `step_004` -> `step_005`, `step_006`, `step_007`,
    `step_008`, `step_009`.
  - Locality: step-local direct construction on the two node partitions.

- Step ID: `step_005`
  - Claim class/theorem role: rooted bipartite TOP rank lemma.
  - Mechanism source: explicit binary maps `J_M,Q_K`, their kernels/ranks,
    and the entrywise factorization through all three modes.
  - Source-to-claim adequacy: the target is exactly
    `B_K-2<=sum_M(p-F_M)` with `F_M` produced by `step_004`.
  - Control relation: `dim ker J_M=F_M`, `rank J_M=p-F_M`,
    `rank Q_K=B_K-2`, and rank subadditivity after the rooted quotient.
  - Boundary/entry: p=1, empty, one-color, B_K<=2, and high-degree branches.
  - Producer/consumers: `step_005` -> `step_009`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; TOP concerns the exact Wick loops.
  - Scope/noncircular status: finite rank calculation from `step_004`; TOP is
    not assumed by its producer.
  - Blocker: the current-notation maps, dimensions, kernel identities, and
    factorization are not yet discharged; route to `/proof-sketch`.

- Step ID: `step_006`
  - Claim class/theorem role: mode-cycle profile and exact inverse.
  - Mechanism source: the disjoint mode-wise cycles of `rho_M union pi_M`.
  - Control relation: each length-one cycle contributes A; each longer cycle
    contributes two B and `ell-2` C occurrences; `A+B+C=4p` and
    `Q=B/2+C`; mode-preserving deletion/insertion is bijective.
  - Boundary/entry: Q=0, one two-occurrence cycle, long/maximal cycles,
    repeated labels, and two independent modes at one trace position.
  - Producer/consumers: `step_006` -> `step_007`, `step_008`, `step_009`.
  - Locality: step-local direct finite-cycle construction.
  - Residual-to-target adequacy: N/A; the profile partitions exact occurrences.
  - Scope/noncircular status: Q is finite and each deletion lowers it by one;
    inverse fields recover the exact prior matching.

- Step ID: `step_007`
  - Claim class/theorem role: signed exact face identity.
  - Mechanism source: two-pair Wick switches viewed through the loop bijection
    of `step_004`.
  - Control relation: each inverse insertion has
    `epsilon_j=F_j-F_(j-1) in {-1,+1}` and
    `F=3+sum_j epsilon_j`, with absolute sum at most Q.
  - Boundary/entry: Q=0 gives F=3; first insertion, long cycles, and all sign
    patterns are explicit.
  - Producer/consumers: `step_007` -> `step_009`.
  - Locality: step-local direct switch identity.
  - Residual-to-target adequacy: N/A; F is the exact covariance-loop count.
  - Scope/noncircular status: finite signed telescoping over exactly Q inverse
    records; no one-sided face claim is used.

- Step ID: `step_008`
  - Claim class/theorem role: multiplicity table and P4.
  - Mechanism source: mode-cycle roots/orientations, inverse insertion records,
    tangent colors, fixed trace root, modes, groups, and component labels.
  - Control relation: the exact `p^Q=p^(B/2+C)` budget is bounded by
    `(8p)^(B/2)(16p)^C`; no p factor reaches A-occurrences.
  - Boundary/entry: Q=0, one nontrivial cycle, and one maximal cycle.
  - Producer/consumers: `step_008` -> `step_009`, `step_010`.
  - Locality: step-local finite injective reconstruction.
  - Residual-to-target adequacy: N/A; P4 counts exact cycle records.
  - Scope/noncircular status: finite profile records; no multiplicity bound is
    assumed by `step_008`.
  - Entry/boundary stress: two B occurrences per nontrivial mode cycle and all
    remaining cycle occurrences charged to C exactly once.

- Step ID: `step_009`
  - Claim class/theorem role: sharp incidence reserve and occurrence-level P3.
  - Mechanism source: TOP excess `xi`, signed FACE, P4, and the exact
    definitions `d=v-1-A/4`, `R=2p+1-F-C/2`.
  - Control relation: prove `R>=5d_+/4-d_-`; then the sharp bound
    `k^d<=r^(5d_+/4-d_-)` yields P3 under the full rank window.
  - Boundary/entry: Q=0, one nontrivial cycle, maximal cycle, both signs of d,
    maximal `k`, and p0 logarithmic.
  - Producer/consumers: `step_009` -> `step_010`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; P2/P3 transfer the exact diagram weight.
  - Scope/noncircular status: finite occurrence profile; FACE is produced by
    `step_007` and TOP excess by `step_005`.
  - Entry/boundary stress: all signs of the epsilon sum and both signs of d.
  - Blocker: the exact incidence reserve
    `B_K-p-1+xi-C/2>=5d_+/4-d_-` is not yet proved; route to `/proof-sketch`.

- Step ID: `step_010`
  - Claim class/theorem role: occurrence-pair compression and 21z.
  - Mechanism source: two active occurrences per trace position and the six
    elementary product inequalities for `sqrt(x),y,z`.
  - Control relation: each occurrence pair is at most `x+y+z`, and the at most
    nine type pairs contribute a fixed factor 9; `4p` occurrence factors
    become exactly `2p` public factors before summation.
  - Producer/consumers: `step_010` -> `step_011`.
  - Locality: step-local conditional on `step_008`, `step_009`.

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
| flag-to-Wick-loop interface | `step_004` | `O`, mode flags, `tau_M`, `rho_M`, `pi_M`, Wick expansion | Exact bijection and local endpoint must be checked | Exact covariance loops and weight | `Fraw_M=2F_M`, `F_loc=3`, weight `r^(F-4p)` | Trace/Wick incidence | `step_005`, `step_006`, `step_007`, `step_008`, `step_009` | None |
| bipartite TOP rank | `step_005` | Exact loops from `step_004`; rooted maps `J_M,Q_K` | Rank maps/kernel/factorization unresolved | Same loops and K incidence | `B_K-2<=sum_M(p-F_M)`, `xi=3p+2-B_K-F>=0` | Rooted binary rank | `step_009` | TOP proof not discharged; `/proof-sketch` |
| mode-cycle A/B/C profile | `step_006` | Disjoint `rho_M union pi_M` cycles on `O_M` | Finite reconstruction only | Exact `4p` occurrences | `A+B+C=4p`, `Q=B/2+C`, mode-preserving inverse | Canonical mode-cycle order | `step_007`, `step_008`, `step_009` | None |
| signed FACE identity | `step_007` | Exact inverse switches and loop bijection | No uncontrolled defect | Exact covariance-loop count | `F=3+sum_j epsilon_j`, `epsilon_j in {-1,+1}` | Visit-local endpoint `F=3` | `step_009` | None |
| P4 multiplicity table | `step_008` | Colors, trace root, modes, groups, labels, cycle roots, inverse insertions | Finite constant accounting | Exact full count | `(8p)^(B/2)(16p)^C`, `p^Q=p^(B/2+C)` | Canonical record fields | `step_009`, `step_010` | None |
| sharp reserve/P3 | `step_009` | TOP `xi`, signed FACE, P4, `A,B,C,F,v` | Exact incidence reserve unresolved | Exact weighted diagram | `R>=5d_+/4-d_-`, then occurrence-level P3 | `R=B_K-p-1+xi-C/2` | `step_010` | INC inequality not discharged; `/proof-sketch` |
| occurrence-pair compression/21z | `step_010` | P4/P3 occurrence factors, two active modes per trace position | No extra defect after inputs | Exact full Gaussian moment | pair products `<=x+y+z`, giving `2p` factors | `C_G(kappa)` from pair table | `step_011` | Blocked by `step_005` and `step_009` |
| TF, `W_0`, deficit | `step_011` | 21z, TC, radial, quotient | Finite Markov/event union | Exact raw projection | Corrected `C_TF`, factor 16 | `delta_0=1/8` | `step_012`, `step_015` | Blocked until 21z |
| initialization probability | `step_012` | Four generated events | Finite union | Exact event intersection | Failure `r^(-10)` | Dimension/rank regime | `step_013`, `step_017` | Blocked until `step_011` |
| path/Taylor/margin/physical/probability outputs | `step_013`, `step_014`, `step_015`, `step_016`, `step_017` | `C_path`, raw `W_0`, projection, event identity | Finite endpoint remainder | Exact raw-to-physical bridge | `C_CP`, `epsilon_0`, conditional factor | `E_star`, singular margin | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| realized conditioning | `step_001` | `step_002`, `step_003`, `step_014`, `step_016` | coefficient legality | `step_001` -> consumers | derived | None |
| normalized Gram/size/raw bridge | `step_002` | `step_003`, `step_011`, `step_012`, `step_013` | initialization/radius | `step_001` -> `step_002` -> consumers | derived | None |
| quotient/TC/radial package | `step_003` | `step_004`, `step_005`, `step_011` | moment/TF inputs | `step_001`,`step_002` -> `step_003` -> consumers | derived | None |
| flag/Wick-loop interface | `step_004` | `step_005`, `step_006`, `step_007`, `step_008`, `step_009` | loop count, local endpoint, and weight | `step_003` -> `step_004` -> consumers | derived | None |
| TOP and incidence excess | `step_005` | `step_009` | face/rank budget | `step_004` -> `step_005` -> `step_009` | derived | TOP-rank blocker |
| mode-cycle profiles/inverse | `step_006` | `step_007`, `step_008`, `step_009` | disjoint `4p` occurrence profile | `step_004` -> `step_006` -> consumers | derived | None |
| signed FACE | `step_007` | `step_009` | exact signed loop change | `step_004`,`step_006` -> `step_007` -> `step_009` | derived | None |
| P4 | `step_008` | `step_009`, `step_010` | multiplicity count | `step_006` -> `step_008` -> consumers | derived | None |
| P2/P3 | `step_009` | `step_010` | sharp face/exponent charge | `step_004`,`step_005`,`step_006`,`step_007`,`step_008` -> `step_009` -> `step_010` | derived | incidence-reserve blocker |
| occurrence compression/21z | `step_010` | `step_011` | TF moment | `step_008`,`step_009` -> `step_010` -> `step_011` | derived | blocked upstream |
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
| `step_004` | Prove the `4p` mode-occurrence flag construction, exact Wick-loop bijection, `Fraw_M=2F_M`, `F_loc=3`, and weight/local-sector interfaces. | `step_003` | Derived `step_003` outputs | Exact loop mapping with repeated labels and boundaries. | Trace expansion, Wick--Isserlis, alternating circuits. | Loop/weight/local endpoint package. | Leading x-source and exact face power. | PENDING |
| `step_005` | Prove TOP and `xi>=0` from explicit rooted maps `J_M,Q_K`, their kernels/ranks, and factorization. | `step_004` | Derived exact loop/incidence outputs | Rooted rank/nullity identity. | Binary incidence/interlace rank lemma. | TOP and incidence excess. | Exact face/r budget. | PENDING |
| `step_006` | Prove the mode-wise A/B/C cycle profile on `4p` occurrences, `Q=B/2+C`, and mode-preserving inverse reconstruction. | `step_004` | Derived occurrence/flag outputs | Canonical cycle code across independent modes. | Alternating-cycle deletion/insertion. | `A,B,C,Q` profile/inverse. | Exact p-record allocation. | PENDING |
| `step_007` | Prove `F=3+sum_j epsilon_j`, `epsilon_j in {-1,+1}`, and `abs(sum epsilon)<=Q`. | `step_004`, `step_006` | Derived loop bijection/profile inverse | Exact switch sign on covariance loops. | Two-pair circuit switch. | Signed FACE interface. | Exact face exponent. | PENDING |
| `step_008` | Prove P4 with `(8p)^(B/2)(16p)^C` and exact `p^Q` allocation from mode-cycle records. | `step_004`, `step_006` | Derived flag/profile outputs | Constants and injective record fields. | Canonical mode-cycle multiplicity table. | P4 and occurrence constants. | No p on A-occurrences. | PENDING |
| `step_009` | Prove `R>=5d_+/4-d_-` from TOP/FACE/incidence counts and derive occurrence-level P3. | `step_004`, `step_005`, `step_006`, `step_007`, `step_008` | `assump:rank_window`; derived outputs | Exact signed incidence reserve. | Sharp rank-window and weight algebra. | P2/P3 occurrence bound. | Preserve leading term and favorable negative d. | PENDING |
| `step_010` | Pair the two occurrence factors per trace position, prove each product `<=x+y+z`, and sum to exact 21z. | `step_008`, `step_009` | Derived P4/P3; `p=p0` regime | Occurrence-to-public-factor compression. | Six-case product table and multinomial sum. | 21z. | Full TF rate with 2p factors. | PENDING |
| `step_011` | Convert 21z to TF, coercivity, `W_0`, and deficit. | `step_003`, `step_010` | Derived TC/radial; `assump:rank_window` | Markov and projection. | Markov/Pythagoras/pseudoinverse. | TF, `W_0`, deficit. | Conditional `r^(-20)`. | PENDING |
| `step_012` | Assemble initialization probability. | `step_001`, `step_002`, `step_011` | Primitive conditions through dependencies | Event bookkeeping. | Union/tower. | `E_init_norm`. | `r^(-10)` confidence. | PENDING |
| `step_013` | Prove conditional path convergence and radius 3. | `step_002`, `step_012` | `assump:gd_step`; `E_size`; `C_path` | All-time closure. | Tail-sum Cauchy. | Limit/radius. | Horizon-uniform conditional. | PENDING |
| `step_014` | Prove exact raw Taylor remainder. | `step_001`, `step_013` | Derived radius/path | Multilinear remainder. | Trilinearity/Cauchy. | Taylor interface. | `C_CP(kappa,3)`. | PENDING |
| `step_015` | Preserve raw coefficient margin. | `step_011`, `step_013`, `step_014` | Derived deficit/path/Taylor | Endpoint absorption. | `W_0` orthogonality. | Coefficient floor. | `(15/16)delta_0 sqrt(r)`. | PENDING |
| `step_016` | Transfer to physical loss. | `step_001`, `step_015` | Derived conditioning/margin | Same-target projection. | Projection and singular values. | Physical floor. | `epsilon_0(kappa)`. | PENDING |
| `step_017` | Assemble final event and conditional probability. | `step_012`, `step_013`, `step_016` | Joint law | Exact event identity. | Inclusion/conditioning. | Final theorem. | Retain conditional path factor. | PENDING |

## Dependency Notes

The graph is acyclic. The reduction chain is `step_001` -> `step_002` ->
`step_003` -> `step_004`. The structural branches are `step_004` ->
`step_005`, `step_004` -> `step_006` -> `step_007`, and `step_004`,
`step_006` -> `step_008`; they meet at `step_009`, followed by
`step_008`, `step_009` -> `step_010`. The
unchanged downstream chain is `step_010` -> `step_011` -> `step_012` ->
`step_013` -> `step_014` -> `step_015` -> `step_016` -> `step_017`.
Every dependency points to an earlier stable ID. `C_path` is explicitly
conditional; no generated event or raw-target conclusion is a primitive
assumption.

## Blockers

1. `step_005`: the flag/Wick-loop interface and oriented/undirected convention
   are separated into `step_004`, but the exact rooted rank derivation of
   `B_K-2<=sum_M(p-F_M)` and `xi=3p+2-B_K-F>=0` is not yet discharged in current
   notation. The missing objects are the dimensions and entries of `J_M,Q_K`,
   their kernel/rank identities, rooted quotient, and factorization, including
   empty, p=1, one-color, B_K<=2, and high-degree branches.
2. `step_009`: the mode profile, signed FACE identity, and P4 now have separate
   producers, but the sharp incidence reserve
   `B_K-p-1+xi-C/2 >= (5/4)d_+-d_-` remains unproved. This is the exact
   current-notation inequality needed for P2 and the full rank window.
3. `step_010` and `step_011` are consequently blocked on the exact 21z source;
   `step_012` is blocked on TF. `step_013`, `step_014`, `step_015`, `step_016`,
   and `step_017` remain valid target-preserving conditional assembly.

## Future Failure Routing

- A failed flag/Wick-loop bijection routes to `/proof-sketch` with the first
  mode occurrence, flag, covariance loop, local-endpoint, or boundary branch.
- A failed TOP calculation routes to `/proof-sketch` with the first entry,
  kernel, rank, quotient, or factorization identity that fails.
- A failed mode-cycle reconstruction or P4 count routes to `/proof-sketch`
  with the first mode/root/insertion record where injectivity or the `p^Q`
  allocation fails.
- A failed incidence reserve routes to `/proof-sketch` with the exact values
  of `B_K,p,C,xi,v,A,d` and `sum epsilon_j` violating (INC).
- Only evidence that no same-setting incidence, profile, and count source can
  support 21z may route to idea revision. The rank window, conditional mode,
  `C_TF`, raw deficit, and physical-loss conclusion must remain unchanged.
