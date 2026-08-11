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

- Sketch attempt: 6
- Retry mode: revise_sketch
- Trigger: attempt-5 diagnostics found that the jacket used the wrong dart
  set and that the profile's forest charge was artificial.
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
4. `step_004` expands `tr |E_G_tilde|^(2p)` into a cyclic word. The diagram
   object contains a connected loopless Eulerian multigraph `K` with
   `E=2p` edges, a visit set `H` of size `2p`, color-0 matching `rho_0`,
   tangent colors, component labels, and mode matchings.
5. `step_005` proves the exact quadratic moment and the visit-local/all-
   distinct sector. It does not claim the cross-visit aggregate.
6. `step_006` defines the executable rooted transition system. Let
   `D=E(K) x {0,1}` be the `4p` darts and let `alpha` reverse the two darts of
   every edge. For a vertex `v`, write `Inc(v)` for the ordered list of darts
   with tail `v`, ordered by their first visit in the rooted trace. For each
   mode `M`, `t_M` is the local transition involution whose transpositions on
   `Inc(v)` are exactly the endpoint pairs prescribed by the `M` matching at
   each visit; at an `M`-colored visit it uses the color-0 trace transposition.
   `t_0` is the corresponding color-0 local transition. The global
   successor is defined separately by `c_0=alpha o t_0`; it is the rooted
   one-cycle Euler tour after choosing the least dart `d0` and declaring its
   successor as the first transition. For each mode put `c_M=alpha o t_M` and
   `F_M=#cycles(c_M)`, with the boundary convention that the face containing
   `d0` is the root boundary and is opened at the cut immediately before
   `d0`. If a mode is empty, `t_M=t_0` and `F_M=1` by definition. If `B=0`
   or `B=1`, the loopless connected branch with `E=2p>=2` is empty. If
   `B=2`, retain the two vertex rows and check the target inequality directly
   on the finite `t_M` transition table; the root cut is still taken at `d0`.
   For `p=1`, enumerate the finitely many involution choices
   on four darts. A one-color word sets the two absent mode transitions to
   `t_0` and contributes one root circuit. Degree-two vertices use their
   unique transposition; high-degree vertices use the lexical transposition
   list in `Inc(v)`. Repeated labels do not alter incidence and are retained
   in the same transition table.

   The required rooted transition/jacket lemma is the exact current-notation
   statement

       B-2 <= sum_{M in {a,b,c}} (p-F_M),
       equivalently F+B <= 3p+2.                  (TOP)

   Its rank form is also fixed before proof work. Let `h0` be the trace visit
   incident to `d0`, let `s0` be its `rho_0` orbit, and delete that root slot;
   define `R_M` on the remaining `p-1` slots by the
   parity of the four endpoint darts under `t_0` and `t_M`: `R_M[s,t]=1`
   exactly when the two transitions alternate, and zero otherwise. Define
   `Q` as the incidence map from slot variables to vertex parities after
   quotienting by the all-ones relation and the root-vertex relation; its
   row space has the declared `(B-2)` coordinates only if the transition
   lemma proves `rank(Q)=B-2`. The entrywise target identity is

       Q = L_a R_a N_a + L_b R_b N_b + L_c R_c N_c,

   with `L_M` the endpoint-incidence map from the same `Inc(v)` lists and
   `N_M` the orientation permutation induced by `c_M`. The desired conclusion
   follows from `rank(R_M)=p-F_M` and rank subadditivity. These are interfaces
   of one transition-system lemma, not assumptions supplied to later steps.

   Its proof must use only the dart incidence maps, `alpha`, `t_0`, `t_M`,
   root cut, and the local links induced by the transitions. The branches
   `B<=2`, `p=1`, empty modes, one-color words, degree-two vertices, repeated
   labels, and high-degree vertices are separate finite transition tables; no
   deletion of an unproved root row or identification of a mode matching with
   the global Euler successor is not allowed. The
   transition-system/jacket inequality remains an explicit blocker until its
   rank/Euler calculation is discharged.
7. `step_007` replaces the prior forest switch with alternating-cycle peeling.
   For every component/mode group, `rho` is the visit matching on its darts and
   `pi` is the selected Wick matching. The nontrivial components of `rho union
   pi` are even alternating cycles. Choose the lexicographically least
   nontrivial cycle and its least root dart. Write its cyclic order as
   `x0,x1,...,x_(2ell-1)` with rho-pairs `(x_(2j),x_(2j+1))` and pi-pairs
   `(x_(2j+1),x_(2j+2))` modulo `2ell`. One peel records the two pi-pairs
   `(x_(2ell-1),x0)` and `(x1,x2)` and replaces them by `(x0,x1)` and
   `(x_(2ell-1),x2)`, so exactly one rho edge becomes fixed and the remaining
   alternating cycle has length `2ell-2`. Let `Q(pi,rho)` be the sum over
   alternating cycles of `(cycle_length/2)-1`; a peel reduces `Q` by exactly
   one. The record stores the cycle root, four darts, old and new pi pairs,
   component/mode group, root orientation, and peel order. Reversing a record
   replaces `(x0,x1)` and `(x_(2ell-1),x2)` by the two old pi-pairs; reversing
   records in reverse order reconstructs the original `pi`, labels, word, and
   orientations exactly.

   This gives a finite terminating inverse map with no union-find or forest
   charge. Sparse cases are explicit: `Q=0` is the visit-local sector; one
   nontrivial 4-cycle is one peel; multiple disjoint 4-cycles are peeled in
   lexicographic order; and a maximal alternating cycle is peeled until
   `Q=0`. For a peel define the signed face change
   `delta=F_before-F_after`. A profile position is marked b only when its peel
   has `delta=1`, c only when it has `delta=2`, and otherwise remains an
   a-position (including `delta<=0`). No b/c charge is assigned merely because
   a collision exists.
8. `step_008` builds the direct multiplicity table for the peeling record and
   proves P4. If `b` and `c` count the two endpoints of one- and two-face
   peels, respectively, then `b` and `c` are even and the raw choices satisfy

       N_labels <= k^v,
       N_peels <= multinomial(2p;a,b,c)
                    (8p)^(b/2)(16p^2)^(c/2).       (P4)

   The complete count table is:

   | source | raw count | profile allocation | p-dependence |
   | --- | --- | --- | --- |
   | tangent colors | `3^(a+b+c)` | constant per profile endpoint | none |
   | root dart | one fixed `d0` | global prefactor | none |
   | orientation bits | at most `2^(b/2+c/2)` | one bit per peel record | b/c only |
   | component labels | `k^v` | label exponent in P2/P3 | absorbed by `e,sigma` |
   | profile positions | `multinomial(2p;a,b,c)` | disjoint peel records | none |
   | one-face peels | `(8p)^(b/2)` | two b endpoints per record | b only |
   | two-face peels | `(16p^2)^(c/2)` | two c endpoints per record | c only |
   | Wick weight | `kappa_1^(16p) r^(F-4p)` | one constant per endpoint | face exponent only |

   Constants are declared only after this table proves that all p-dependent
   factors occur on b/c endpoints and never on an a-position; sparse zero-face
   peels remain in the a row rather than being forced into b or c.
9. `step_009` derives P2 directly from the transition-system face deficits,
   without an auxiliary forest-label inequality. Put

       e=(3p+2-v)-F,  sigma=B-v,
       F=3p+2-v-e,     B=v+sigma.

   The topology lemma would give `e>=sigma`. The face table is indexed by the
   actual peel type:

   | peel type | endpoints charged | face deficit | multiplicity source |
   | --- | --- | --- | --- |
   | no peel or zero-face peel | a | 0 | local/visit-local matching |
   | one-face peel | 2 b endpoints | 1 | one alternating-cycle record |
   | two-face peel | 2 c endpoints | 2 | one alternating-cycle record |
   | root cut and color choices | fixed root data | `e>=sigma` offset | `d0`, tangent colors, orientation |
   
   The sparse profile rows are explicit: `Q=0` gives `(a,b,c)=(2p,0,0)`;
   one 4-cycle with `delta=0` also remains in the a-row;
   one 4-cycle with `delta=1` gives `(a,b,c)=(2p-2,2,0)`; and one 4-cycle
   with `delta=2` gives `(a,b,c)=(2p-2,0,2)`. Disjoint cycles add these rows,
   so no collision is charged unless its observed face change supplies the
   corresponding b/c endpoints.

   Summing the table, including the exact `e,sigma` identities and the sparse
   one-4-cycle branch, must prove directly

       4p+1-F >= a+b/2+c
          +(5/4)(v-1-a/2)_+.                        (P2)

   No auxiliary forest-label claim is used. With `d=v-1-a/2`, the cases
   `d>=0` and `d<0`, the rank window `k<=r^(5/4)`, and `r<k` give

       k^(v-1) r^(F-4p-1)
       <= (sqrt(k)/r)^a r^(-b/2-c).                 (P3)

   Combining P3 and P4 gives the per-profile ENUM bound with no artificial
   b/c charge on a sparse zero-face collision. The transition-system face row
   and the full root/color/orientation constants remain explicit proof
   obligations.
10. `step_010` is a pure disjoint multinomial specialization. Once steps
    `step_006` through `step_009` are accepted, it sums

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
  - Required bridge: the transition inequality and peeling count must sum to
    21z without a logarithmic multiplier on `sqrt(k)/r`.

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
- `step_004` derives the colored trace and `Gamma(D)`; `step_005` derives
  the quadratic and visit-local sector. Neither is a primitive assumption.
- `step_006` must derive TOP from the exact transition system.
- `step_007` must derive the peeling partition; `step_008` and `step_009`
  must derive P4 and P2/P3. No forest-label inequality is assumed.
- `step_010` derives 21z only after those producers; `step_011` derives TF,
  `W_0`, and `E_deficit`; `step_012` derives `E_init_norm` probability.
- `C_path` is explicitly conditional. `step_013` through `step_017` derive
  the deterministic path, Taylor, margin, physical, and probability outputs.

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
  - Claim class/theorem role: exact colored trace and diagram schema.
  - Mechanism source: cyclic trace expansion and Wick--Isserlis.
  - Control relation: mode subsequences, `alpha`, local transitions, and exact
    `F_M` circuit counts.
  - Boundary/entry: empty modes, p=1, one-color, repeated labels.
  - Producer/consumers: `step_004` -> `step_005`, `step_006`, `step_007`.
  - Locality: step-local.

- Step ID: `step_005`
  - Claim class/theorem role: quadratic and visit-local leading sector.
  - Mechanism source: exact second moment and unique local matching.
  - Control relation: all-distinct/local words at the `sqrt(k)/r` scale.
  - Producer/consumers: `step_005` -> `step_008`, `step_009`.
  - Locality: step-local.

- Step ID: `step_006`
  - Claim class/theorem role: rooted transition-system TOP.
  - Mechanism source: `K`, `D=E(K)x{0,1}`, `alpha`, `t_0`, `t_M`, `c_0`,
    `c_M`, root cut, and exact boundary convention.
  - Source-to-claim adequacy: the target is exactly the transition-system
    lemma `B-2<=sum_M(p-F_M)`; no false closed-surface claim is used.
  - Control relation: rank/Euler calculation on local links and root boundary.
  - Boundary/entry: all listed small/empty/degree branches are separate rows.
  - Producer/consumers: `step_006` -> `step_007`, `step_009`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; TOP is a bound on the exact diagram.
  - Scope/noncircular status: finite fixed-order transition system; producer
    is `step_004`, so no TOP closure is assumed by `step_006`.
  - Entry/boundary stress: root cut, empty mode, p=1, B<=2, and degree
    branches are explicit.
  - Blocker: the transition-system rank/Euler inequality is not discharged;
    route to `/proof-sketch`.

- Step ID: `step_007`
  - Claim class/theorem role: reversible alternating-cycle peeling.
  - Mechanism source: exact `rho`/`pi` union cycles and peel record.
  - Control relation: `Q` drops by one per peel; reverse records recover all
    matching and label data.
  - Boundary/entry: `Q=0`, one 4-cycle, disjoint 4-cycles, maximal cycle.
  - Producer/consumers: `step_007` -> `step_008`.
  - Locality: step-local for the stated peel map; count export remains
    conditional on the sparse-case audit.
  - Residual-to-target adequacy: N/A; peeling partitions the exact matchings.
  - Scope/noncircular status: `Q` is a finite nonnegative integer and drops by
    one; the producer is `step_004`, with TOP only used as an earlier bound.
  - Entry/boundary stress: Q=0, one 4-cycle, disjoint 4-cycles, and a maximal
    alternating cycle are explicit.

- Step ID: `step_008`
  - Claim class/theorem role: multiplicity table and P4.
  - Mechanism source: peeling records, tangent colors, fixed root, orientations,
    labels, and matching choices.
  - Control relation: `(8p)^(b/2)(16p^2)^(c/2)` only on observed face-loss
    endpoints; no artificial b/c charge.
  - Boundary/entry: sparse zero-face collision is retained as a-position data.
  - Producer/consumers: `step_008` -> `step_009`, `step_010`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; P4 counts the exact peel records.
  - Scope/noncircular status: finite profile records; no multiplicity bound is
    assumed by `step_008`.
  - Entry/boundary stress: fixed root and sparse zero-face peels remain in the
    table.
  - Blocker: full constants and root/color/orientation count are not yet
    discharged; route to `/proof-sketch`.

- Step ID: `step_009`
  - Claim class/theorem role: face/exponent P2/P3 and per-profile ENUM.
  - Mechanism source: transition face deficits, `e`, `sigma`, and P4.
  - Control relation: direct face table and two-sign rank-window transfer,
    with no forest-label assertion.
  - Boundary/entry: one-cycle sparse collision, maximal `k`, p0 logarithmic.
  - Producer/consumers: `step_009` -> `step_010`.
  - Locality: sketch/interface defect.
  - Residual-to-target adequacy: N/A; P2/P3 transfer the exact diagram weight.
  - Scope/noncircular status: finite p profile sum; `e,sigma` are generated by
    `step_004` and TOP is consumed only through `step_006`.
  - Entry/boundary stress: zero-face sparse peels and maximal k are retained.
  - Blocker: P2's face row is not yet proved; route to `/proof-sketch`.

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
| colored diagram datum | `step_004` | Cyclic trace, `H`, `rho_0`, Wick matchings | None beyond finite expansion | Exact diagram object | Exact loop/circuit identities | None | `step_005`, `step_006`, `step_007` | None |
| quadratic/visit-local sector | `step_005` | Exact second moment and local matching | Cross-visit aggregate excluded | Exact sub-sum | Leading local bound | `C0` local source | `step_008`, `step_009` | None |
| TOP transition lemma | `step_006` | `K`, `D`, `alpha`, `t_0`, `t_M`, `c_M`, root cut | Rank/Euler identity unresolved | Same `K` and `F_M` | `B-2<=sum_M(p-F_M)` | Root boundary convention | `step_007`, `step_009` | Transition-system inequality not discharged; `/proof-sketch` |
| peeling profile partition | `step_007` | `rho`, `pi`, nontrivial alternating cycles, `Q` | Sparse zero-face peels retained | Exact matching objects | `Q` drops by one and record reverses | Lex least cycle/root | `step_008` | Sparse-case inverse/count audit pending; `/proof-sketch` |
| P4 multiplicity table | `step_008` | Colors, fixed root, orientations, labels, peel records | Residual constant allocation unresolved | Exact full count intended | `(8p)^(b/2)(16p^2)^(c/2)` on observed endpoints | `C0,C1,C2` after table | `step_009`, `step_010` | Full table not discharged; `/proof-sketch` |
| P2/P3 face/exponent charge | `step_009` | `e`, `sigma`, TOP, P4, face table | Sparse zero-face row unresolved | Exact weighted diagram | Two-sign rank-window transfer | `e>=sigma` if TOP proved | `step_010` | P2 face row not discharged; `/proof-sketch` |
| ENUM and 21z | `step_010` | Accepted topology/profile/count/face outputs | No extra defect after inputs | Exact full Gaussian moment | Multinomial theorem | `C_G=27 kappa_1^8` | `step_011` | Blocked by `step_006`, `step_007`, `step_008`, `step_009` |
| TF, `W_0`, deficit | `step_011` | 21z, TC, radial, quotient | Finite Markov/event union | Exact raw projection | Corrected `C_TF`, factor 16 | `delta_0=1/8` | `step_012`, `step_015` | Blocked until 21z |
| initialization probability | `step_012` | Four generated events | Finite union | Exact event intersection | Failure `r^(-10)` | Dimension/rank regime | `step_013`, `step_017` | Blocked until `step_011` |
| path/Taylor/margin/physical/probability outputs | `step_013`, `step_014`, `step_015`, `step_016`, `step_017` | `C_path`, raw `W_0`, projection, event identity | Finite endpoint remainder | Exact raw-to-physical bridge | `C_CP`, `epsilon_0`, conditional factor | `E_star`, singular margin | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| realized conditioning | `step_001` | `step_002`, `step_003`, `step_014`, `step_016` | coefficient legality | `step_001` -> consumers | derived | None |
| normalized Gram/size/raw bridge | `step_002` | `step_003`, `step_011`, `step_012`, `step_013` | initialization/radius | `step_001` -> `step_002` -> consumers | derived | None |
| quotient/TC/radial package | `step_003` | `step_004`, `step_005`, `step_011` | moment/TF inputs | `step_001`,`step_002` -> `step_003` -> consumers | derived | None |
| colored diagram datum | `step_004` | `step_005`, `step_006`, `step_007` | topology/profile input | `step_003` -> `step_004` -> consumers | derived | None |
| quadratic/local sector | `step_005` | `step_008`, `step_009` | leading moment source | `step_004` -> `step_005` -> consumers | derived | None |
| TOP | `step_006` | `step_007`, `step_009` | face budget | `step_004` -> `step_006` -> consumers | derived | transition blocker |
| peeling profiles | `step_007` | `step_008` | disjoint profile partition | `step_004`,`step_006` -> `step_007` -> `step_008` | derived | sparse-case blocker |
| P4 | `step_008` | `step_009`, `step_010` | multiplicity count | `step_007` -> `step_008` -> consumers | derived | count blocker |
| P2/P3 | `step_009` | `step_010` | face/exponent charge | `step_005`,`step_006`,`step_007`,`step_008` -> `step_009` -> `step_010` | derived | face blocker |
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
| `step_004` | Prove colored trace/loop expansion and export `Gamma(D)`. | `step_003` | Derived `step_003` outputs | Cyclic colors and Wick circuits. | Trace expansion and Wick--Isserlis. | `Gamma(D)`. | None. | PENDING |
| `step_005` | Prove quadratic moment and visit-local/all-distinct sector. | `step_004` | Derived `step_004` outputs | Separate local and cross-visit pairings. | Exact second moment/local matching. | Local sector. | Leading `sqrt(k)/r`. | PENDING |
| `step_006` | Prove the rooted `4p`-dart transition-system lemma and TOP. | `step_004` | Derived `Gamma(D)` | `alpha`, `t_0`, `t_M`, root cut, local links, rank/Euler identity. | Direct transition-system/jacket lemma. | TOP. | Exact face/r power. | PENDING |
| `step_007` | Define alternating-cycle peeling, prove `Q` descent and inverse reconstruction. | `step_004`, `step_006` | Derived diagram and TOP interface | Sparse cycles and exact matching records. | Lexicographic peel and reverse record. | Profile classes. | No artificial b/c charge. | PENDING |
| `step_008` | Prove the explicit color/root/orientation/label/peel count and P4. | `step_005`, `step_007` | `assump:rank_window`; derived profile/local outputs | Constants and p-allocation. | Multiplicity table. | P4 and `C0,C1,C2`. | No p on a-positions. | PENDING |
| `step_009` | Prove P2/P3 from `e,sigma` and the face table; obtain per-profile ENUM. | `step_005`, `step_006`, `step_007`, `step_008` | `assump:rank_window`; derived outputs | Face deficit and maximal-rank transfer. | Transition face table and two-sign algebra. | Per-profile ENUM. | Preserve leading term. | PENDING |
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
`step_005`, `step_007` -> `step_008` -> `step_009` -> `step_010`; and the
unchanged downstream chain is `step_010` -> `step_011` -> `step_012` ->
`step_013` -> `step_014` -> `step_015` -> `step_016` -> `step_017`.
Every dependency points to an earlier stable ID. `C_path` is explicitly
conditional; no generated event or raw-target conclusion is a primitive
assumption.

## Blockers

1. `step_006`: the exact `4p`-dart transition system is now defined, but the
   rank/Euler calculation proving `B-2<=sum_M(p-F_M)` has no accepted
   current-notation derivation. No surface or jacket inequality is asserted
   without that calculation.
2. `step_008` and `step_009`: the alternating-cycle peel is executable and
   reversible, but the full tangent-color/root/orientation multiplicity table
   and the sparse zero-face face row needed for P2/P4 remain unproved. No
   forest-label charge or artificial b/c assignment is used.
3. `step_010` and `step_011` are consequently blocked on the exact 21z source;
   `step_012` is blocked on TF. Steps `step_013` through `step_017` remain
   valid target-preserving conditional assembly.

## Future Failure Routing

- A failed transition-system rank/Euler calculation or concrete TOP
  counterexample routes to `/proof-sketch` with the first dart/branch where
  the identity fails; it does not authorize theorem weakening.
- A failed alternating-cycle peel or reverse-record case routes to
  `/proof-sketch` with the first nontrivial cycle and its failed inverse.
- A failed sparse-collision face row, color/root/orientation count, or P4
  allocation routes to `/proof-sketch` with the exact table row and exponent.
- Only evidence that no same-setting transition, peel, and count source can
  support 21z may route to idea revision. The rank window, conditional mode,
  `C_TF`, raw deficit, and physical-loss conclusion must remain unchanged.
