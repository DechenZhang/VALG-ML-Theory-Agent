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

- Sketch attempt: 3
- Retry mode: revise_sketch
- Trigger: attempt-2 proof-sketch review returned REVISE_SKETCH. It found that
  the previous step_003-to-step_004 interface did not export a complete diagram
  datum, topology had no independent rank/Euler source, and enumeration had no
  exhaustive profile or multiplicity charging interface.
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: PARTIAL_BLOCKED
- Theorem-contract change: none
- Rank threshold: L(r) = r^(5/4), hence c = 1/4

## Proof Roadmap

The accepted quotient, target-correlation, radial, trace, and visit-local
reductions are retained. The random-frame route is now decomposed as follows.

1. step_001 proves realized-factor conditioning.
2. step_002 proves balanced Gaussianization, normalized pair Grams, initial
   size, the exact raw scale bridge, and tangent-span equality.
3. step_003 proves the accepted quotient/Terracini algebra, (TC), radial
   conjugation, the exact colored trace expansion, covariance-loop weights,
   F + 2v <= 4p + 3, the quadratic moment, and the complete visit-local and
   all-distinct sector. It does not claim TOP, ENUM, or 21z.
4. step_004 exports a complete diagram schema. For a length-2p trace word it
   records positions, component labels, tangent colors, incoming/outgoing
   half-edges, color-0 trace matching, the three physical matchings, connected
   components, the contracted graph K, E=2p, B, the surjection lambda from
   vertices of K to the v distinct component labels, sigma=B-v, the ordered
   Euler transition tau, each H_M, each F_M, total F, and the exact
   covariance-loop identity. Empty S_M means H_M=tau and F_M=1. The
   color-0 cycle makes each complete trace diagram connected; any rooted
   bookkeeping decomposition uses the stated additive root convention.
5. step_005 attempts one exact topology lemma. Split each vertex of K into
   ordered Euler-tour visits. If B<=2, set Q empty and rank(Q)=0; TOP is then
   immediate. If B>=3, let Q be the reduced component-incidence matrix over
   F_2 after deleting the root row and the single global tour relation, so
   rank(Q)=B-2. Let R_M be the reduced interlace matrix for H_M,
   normalized by the current-notation circuit-nullity identity
   rank(R_M)=E/2-F_M. The required direct transition calculation is

       Q = L_a R_a N_a + L_b R_b N_b + L_c R_c N_c.       (TOPrank)

   Here L_M and N_M are the explicit incidence projections from split visits
   to the M-colored switches. Rank subadditivity would then give

       B-2 <= sum_M (E/2-F_M),
       F+B <= 3p+2.                                  (TOP)

   TOPrank is the proposed mechanism; TOP is only its consequence. The
   proof must check degree-two vertices, repeated labels, high-degree visits,
   one-color words, and empty modes. A counterexample or failure to derive
   TOPrank blocks this producer.
6. step_006 defines an exhaustive excess profile. Starting from the
   visit-local matching, scan cyclic positions and component groups in a fixed
   lexicographic order. The first repeated-label connection creates a rooted
   partition-forest edge. Every Wick pair joining two distinct visits is
   resolved by the lexicographically first two-pair-switch sequence. Let a be
   the number of untouched visit-local slots, b the number of switches that
   consume one covariance-loop loss, and c the number consuming two. Thus
   a+b+c=2p. The greedy inverse must reconstruct the original word, forest,
   and matching; this is the required disjoint/exhaustive map. The local
   sector is (a,b,c)=(2p,0,0), and every cross-visit diagram has b+c>=1.
7. step_007 proves the separate charging inequalities. With

       e = (3p+2-v) - F >= 0,

   the proposed direct bounds are

       N_labels <= k^v multinomial(2p;a,b,c),
       N_switches <= (8p)^b (16p)^c,

   and

       r^(F-4p) k^v <= 3 k r
         (C0 sqrt(k)/r)^a
         (C1 sqrt(p/r))^b
         (C2 p/r)^c.                              (Charge)

   The last inequality must explicitly use e, sigma=B-v, and the rule that
   every nonlocal switch receives a nonleading slot. If the greedy inverse or
   any inequality in Charge fails, the moment route remains blocked.
8. step_008 sums the disjoint profiles by the multinomial theorem and obtains
   exactly

       T_{p;a,b,c} <= 3 k r multinomial(2p;a,b,c)
         (C0 sqrt(k)/r)^a
         (C1 sqrt(p/r))^b
         (C2 p/r)^c,                              (ENUM)

   and then

       E[tr |E_G_tilde|^(2p0) | A,B,C]
       <= 3 k r [ C_G(kappa)
          (sqrt(k)/r + sqrt(p0/r) + p0/r) ]^(2p0), (21z)

   for p0=ceil(31 log r). No p0 factor may multiply the leading
   sqrt(k)/r term.
9. step_009 applies Markov to 21z, intersects the radial and TC events, and
   performs the exact factor-16 and corrected-constant conversion to export
   TF, quotient coercivity, W_0, and E_deficit.
10. step_010 assembles P(E_init_norm) >= 1-r^(-10).
11. step_011 uses finite path length for convergence, endpoint displacement, and
   the all-time column bound 3.
12. step_012 proves the raw multilinear Taylor remainder.
13. step_013 pairs the endpoint formula with W_0 and preserves the coefficient
   deficit.
14. step_014 applies the exact mode-span projection and obtains the relative
   physical loss floor.
15. step_015 proves event inclusion and the exact final conditional-probability
   identity.

No external theorem is consumed for TOP or ENUM in this sketch. The intended
sources are the explicit current-notation rank factorization TOPrank and the
explicit greedy inverse plus Charge inequalities. Their feasibility is the
current blocker, not a hidden future assumption.

## Rate Objectives

- Initialization certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: n,r,k,kappa,q, rho=r^(-q), rank window, normalized
    Gram window [r^(-20),r^20], delta_0=1/8, and failure r^(-10).
  - Hidden constants may depend on: kappa,q.
  - Hidden constants may not depend on: n,r,k, or the deterministic base triple.
  - Fixed quantities: kappa,q as r tends to infinity.
  - Probability mode: joint smoothing and initialization, uniformly conditional
    on every realized triple in E_cond.
  - Horizon mode: initialization only.
  - Norm mode: factor operator norm, normalized Gram eigenvalues, and
    coefficient Frobenius norm.
  - Required bridge: G_raw=(r/n)^2 G_norm exactly; normalization does not
    alter D_r, Dhat_0, S_0, W_0, or the physical metric.
  - Baseline invariance: the scale repair preserves the raw target and raw
    deficit.

- Random-frame moment/TF certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: k/r^2, p0=ceil(31 log r), sqrt(k)/r,
    sqrt(p0/r), p0/r, and failure at most r^(-20).
  - Hidden constants may depend on: kappa only.
  - Hidden constants may not depend on: n,r,k,p0 or the base triple.
  - Fixed quantities: the conditioned realized factors and exact quotient norm.
  - Probability mode: conditional moment, then Markov and finite event union.
  - Horizon mode: fixed moment order p0.
  - Norm mode: operator norm of the quotient off-block frame.
  - Required bridge: ENUM must sum to 21z without a logarithmic multiplier on
    sqrt(k)/r; Markov plus radial transfer must yield TF.
  - Baseline invariance: the Gaussian conjugation returns to the raw quotient
    operator exactly.

- Conditional positive-loss theorem:
  - Objective type: horizon-uniform and asymptotic relative-loss explicit.
  - Exposed variables: kappa, delta_0, E_star, and
    C_CP(kappa,3)=kappa_1^3(1+9).
  - Hidden constants may depend on: kappa only.
  - Hidden constants may not depend on: n,r,k,q, the base triple, or path.
  - Probability mode: deterministic conditional on E_init_norm intersect
    C_path.
  - Horizon mode: all-time finite path followed by a limit.
  - Norm mode: d_bal, coefficient Frobenius norm, and physical Frobenius loss.
  - Required bridge: exact Taylor, projection, and relative norm comparisons.
  - Baseline invariance: zero path preserves the complete initial deficit.

- Final probability interface:
  - Objective type: confidence-explicit conditional event accounting.
  - Exposed variables: r^(-10) and P(C_path | E_init_norm).
  - Hidden constants: none.
  - Probability mode: exact conditional probability.
  - Horizon mode: all-time event.
  - Required bridge: retain the conditional factor without a constant lower bound.

## Assumption Provenance Objectives

- step_001 derives E_cond from assump:base_conditioning,
  assump:dimension, and assump:gaussian_smoothing.
- step_002 derives balanced Gaussianization, normalized Grams, the raw scale
  identity, E_size, and tangent-span equality from
  assump:independent_initialization and step_001.
- step_003 derives quotient algebra, TC, radial transfer, colored trace data,
  loop weights, and the visit-local sector from primitive initialization/rank
  assumptions and steps step_001-step_002.
- step_004 derives the full diagram datum; it is not a theorem-facing
  admissibility assumption.
- step_005 must derive TOPrank from that datum. TOP cannot be assumed.
- step_006 must derive the greedy profile bijection. ENUM cannot be assumed.
- step_007 must derive Charge and the cross-visit moment. 21z cannot be assumed.
- step_008 derives the moment output only after steps step_005-step_007.
- step_009 derives TF, W_0, and E_deficit; none is primitive.
- step_010 derives E_init_norm and its probability.
- C_path is an explicitly conditional hypothesis.
- steps step_011-step_015 derive convergence, Taylor control, coefficient margin,
  physical loss, and final probability in that order.

## Mechanism-Source And Boundary Stress

- Step ID: step_001
  - Claim class/theorem role: realized factor conditioning.
  - Mechanism source and adequacy: primitive base singular margin plus direct
    Gaussian operator-norm perturbation and Weyl in the exact Euclidean norm.
  - Control relation: ||Xi_M||_op <= (2 kappa^2)^(-1).
  - Defects and accumulation: one initialization perturbation; no accumulation.
  - Boundary/entry: zero smoothing and the lower base singular boundary pass.
  - Producer/consumers: step_001 -> steps step_002, step_003, step_012, step_014.
  - Locality: step-local.

- Step ID: step_002
  - Claim class/theorem role: normalized Gram nondegeneracy and initial size.
  - Mechanism source and adequacy: conditioned elliptic covariance, radius
    concentration, and normalized Khatri-Rao concentration; exact raw bridge.
  - Control relation: normalized fluctuation is below its constant covariance
    margin; chi tails give the size threshold 2.
  - Defects and accumulation: finite initialization union only.
  - Boundary/entry: arbitrary large n is harmless after normalization; actual
    balanced theta_0 is consumed.
  - Producer/consumers: step_002 -> steps step_003, step_010, step_011.
  - Locality: step-local.

- Step ID: step_003
  - Claim class/theorem role: accepted algebraic/probabilistic reduction.
  - Mechanism source and adequacy: direct quotient block algebra, scalar
    Bernstein for TC, exact Gaussian conjugation, Wick-Isserlis, and the
    visit-local reference matching.
  - Control relation: quotient spectrum [1,3], TC at k/r+log r, radial
    conjugation norm at most 4, covariance loop weight
    kappa_1^(16p) r^(F-4p), and F+2v <= 4p+3.
  - Defects: only cross-visit multiplicity remains and is explicitly exported.
  - Boundary/entry: p=1, one-color, isotropic, and maximal-rank checks pass.
  - Producer/consumers: step_003 -> steps step_004-step_008.
  - Locality: step-local.

- Step ID: step_004
  - Claim class/theorem role: exact diagram-schema output.
  - Mechanism source: direct construction from the colored trace expansion.
  - Source-convention compatibility: the half-edge colors, cyclic orientation,
    component labels, and physical-mode matchings are exactly those in the
    current trace identity, with no relabeling of the raw target.
  - Raw interface: Gamma(D) contains all half-edge matchings, K,E,B,lambda,v,
    sigma,tau,H_M,F_M,F, empty-mode and rooted-component conventions.
  - Residual-to-target adequacy: N/A; this is an exact bookkeeping output and
    no surrogate object is consumed.
  - Control relation: every covariance loop in step_003 is exactly a circuit
    of H_M, including identity loops.
  - Boundary/entry: p=1, empty S_M, one-color words, and repeated labels are
    explicitly defined.
  - Producer/consumers: step_004 -> steps step_005-step_007.
  - Locality: step-local bookkeeping; no TOP is claimed here.

- Step ID: step_005
  - Claim class/theorem role: topology/face lower bound.
  - Mechanism source: the explicit reduced incidence/interlace factorization
    TOPrank, not TOP itself.
  - Source-convention compatibility: Q and R_M are built from the same K,
    tau, and H_M exported by step_004; the circuit-nullity normalization is
    fixed in the same F_M convention.
  - Control relation: for B<=2 the reduced matrix Q is empty and TOP is
    immediate; for B>=3, rank(Q)=B-2 and rank(R_M)=p-F_M imply TOP by rank
    subadditivity.
  - Residual-to-target adequacy: N/A; TOP is a combinatorial bound on the
    exact diagram used by the moment expansion.
  - Defects: high-degree visits, repeated-label identifications, and empty
    transition systems; all must be discharged in the factorization.
  - Boundary/entry: degree two, p=1, one-color, and maximal collision cases
    are required traces.
  - Producer/consumers: step_005 -> step_006.
  - Locality: sketch/interface defect until TOPrank is actually established.
  - Blocker: no accepted proof of TOPrank or counterexample is available.

- Step ID: step_006
  - Claim class/theorem role: exhaustive profile map.
  - Mechanism source: deterministic lexicographic greedy forest/switch
    encoding with an explicit inverse.
  - Source-convention compatibility: the profile is defined on the exact
    component word and Wick matching in Gamma(D), not on a surrogate graph.
  - Control relation: a+b+c=2p, local sector exactly (2p,0,0), and every
    cross-visit diagram has b+c>=1.
  - Residual-to-target adequacy: N/A; the profile map partitions the exact
    diagrams before any moment weight is changed.
  - Defects: repeated-component and nonlocal matching multiplicities.
  - Boundary/entry: first cross-visit switch, one repeated label, all-distinct,
    and maximal collision profiles must reconstruct.
  - Producer/consumers: step_006 -> step_007.
  - Locality: sketch/interface defect until the inverse is proved.
  - Blocker: no exhaustive injection is currently accepted.

- Step ID: step_007
  - Claim class/theorem role: multiplicity/face-loss charging and moment.
  - Mechanism source: Charge, using e=(3p+2-v)-F and sigma=B-v.
  - Source-convention compatibility: all counts use the same Wick pairing,
    circuit-loop F, label count v, and graph vertex count B exported upstream.
  - Control relation: every nonlocal feature pays a nonleading slot; the
    leading sqrt(k)/r slots remain visit-local.
  - Residual-to-target adequacy: the charged sum is intended to equal the full
    trace moment, not a proxy or a transformed target; exhaustiveness is a
    blocker until proved.
  - Defects: label choices, rooted-forest choices, switch choices, and
    covariance-loop loss.
  - Boundary/entry: p0=ceil(31 log r), maximal k, and the first cross-visit
    profile must obey the same charge.
  - Producer/consumers: step_007 -> step_008.
  - Locality: sketch/interface defect until all Charge inequalities are proved.
  - Blocker: no accepted no-log-leading enumeration is available.

- Step ID: step_008
  - Claim class/theorem role: ENUM and Gaussian trace moment 21z.
  - Mechanism source: disjoint profiles from step_006 and Charge from step_007.
  - Control relation: multinomial summation preserves the leading sqrt(k)/r
    slot and yields the exact p0 corrections.
  - Defects/accumulation: finite fixed-order diagram sum only.
  - Boundary/entry: p0=ceil(31 log r), all-distinct and maximal-collision
    profiles must both be included.
  - Producer/consumers: step_008 -> step_009.
  - Locality: sketch/interface defect conditional on steps step_005-step_007.

- Step ID: step_009
  - Claim class/theorem role: TF, quotient coercivity, W_0, and deficit.
  - Mechanism source: 21z, Markov, radial transfer, TC, quotient margin, and
    projection formula.
  - Control relation: corrected C_TF=32e sqrt(32/30) C_G, TF<=1/2, and
    projection energy <= r/2.
  - Defects/accumulation: finite failure union; no temporal accumulation.
  - Boundary/entry: stationary path and equality at the quotient threshold.
  - Producer/consumers: step_009 -> steps step_010, step_013.
  - Locality: step-local conditional on accepted step_008.

- Step ID: step_010
  - Claim class/theorem role: initialization confidence closure.
  - Mechanism source: constituent event producers and tower/union bound.
  - Control relation: total failure <= r^(-10).
  - Boundary/entry: all allowed n,k and the joint law.
  - Producer/consumers: step_010 -> steps step_011, step_015.
  - Locality: step-local conditional on step_009.

- Step ID: step_011
  - Claim class/theorem role: all-time convergence and radius.
  - Mechanism source: E_size plus explicitly conditional finite path budget.
  - Control relation: tail-sum Cauchy relation and
    ||m_i,t|| <= 2+E_path <= 3.
  - Defects/accumulation: nonnegative increments are charged once; tails vanish.
  - Entry: zero first update is stationary; nonzero first update is charged to
    the same finite series.
  - Producer/consumers: step_011 -> steps step_012-step_015.
  - Locality: step-local.

- Step ID: step_012
  - Claim class/theorem role: second-order raw Taylor interface.
  - Mechanism source: exact trilinear expansion and left-inverse bounds.
  - Control relation: C_CP(kappa,R) d_bal^2 with R=3 and d_bal<=1.
  - Defects/accumulation: three quadratic plus one cubic term, applied once.
  - Boundary: zero displacement gives zero remainder.
  - Producer/consumers: step_012 -> step_013.
  - Locality: step-local.

- Step ID: step_013
  - Claim class/theorem role: limiting raw coefficient margin.
  - Mechanism source: W_0 orthogonality, step_011 endpoint, and step_012 Taylor.
  - Control relation: C_CP(kappa,3) E_star^2 <= delta_0/16 leaves
    (15/16) delta_0 sqrt(r).
  - Defects/accumulation: one endpoint remainder, not a horizon sum.
  - Boundary: zero path preserves the full initial margin.
  - Producer/consumers: step_013 -> step_014.
  - Locality: step-local conditional on step_009.

- Step ID: step_014
  - Claim class/theorem role: exact same-target physical bridge and loss floor.
  - Mechanism source: mode-span projection identity and factor singular values.
  - Control relation: epsilon_0(kappa)=kappa_1^(-12)(15 delta_0/16)^2.
  - Defects/accumulation: projection discards only orthogonal nonnegative mass.
  - Boundary: lower singular-value boundary remains strictly positive.
  - Producer/consumers: step_014 -> step_015.
  - Locality: step-local.

- Step ID: step_015
  - Claim class/theorem role: event inclusion and final conditional probability.
  - Mechanism source: steps step_010, step_011, step_014 and
    P(E intersect C)=P(E)P(C|E).
  - Control relation: retain P(C_path | E_init_norm) exactly.
  - Boundary: if that conditional probability is zero, the theorem makes no
    unconditional constant-probability claim.
  - Producer/consumers: step_015 -> final theorem.
  - Locality: step-local.

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls | Defects and relation | Target adequacy | Consumers | Missing blocker |
| --- | --- | --- | --- | --- | --- | --- |
| E_cond | step_001 | Base margin and Gaussian perturbation | Weyl; perturbation below half margin | Exact realized factors | step_002, step_003, step_012, step_014 | None |
| E_gram^norm, raw scale, E_size | step_002 | Conditioned covariance and chi tails | Gram fluctuation and radial tails controlled | G_raw=(r/n)^2 G_norm; raw target unchanged | step_003, step_009, step_010, step_011 | None |
| Colored diagram datum Gamma(D) | step_004 | Trace words and all matchings from step_003 | No hidden topology or multiplicity term | Exact loop/circuit object | step_005, step_006, step_007 | None |
| TOPrank and TOP | step_005 | K, lambda, Q, H_M, R_M | High-degree and repeated-label rank defects | Same K and same F_M used by moment | step_006, step_007 | TOPrank is unproved |
| Profile partition | step_006 | Complete Gamma(D), local matching | Profile map must be disjoint/exhaustive | Same diagrams, no surrogate | step_007 | Greedy inverse unproved |
| ENUM and 21z | step_008 | TOP, profiles, Charge, local sector | Label/switch multiplicity and face loss | Exact full trace moment | step_009 | Charge/no-log bound unproved |
| TF, W_0, E_deficit | step_009 | 21z, TC, radial, quotient | Finite failure union | Raw projection identity exactly | step_010, step_013 | None after 21z |
| E_init_norm probability | step_010 | Four constituent events | Union/tower only | Exact event intersection | step_011, step_015 | None after step_009 |
| Limit, Taylor, coefficient margin | steps step_011-step_013 | C_path, E_size, W_0 | Finite path and one endpoint remainder | Same raw trajectory/map | step_013-step_015 | None |
| Physical loss floor | step_014 | Projection identity and singular values | No subtracted residual | Same realized T and physical Frobenius norm | step_015 | None |
| Final probability | step_015 | Event inclusion and E_init probability | Conditional factor retained | Actual F_plus event | theorem | None |

## Generated Output Flow

| Output | Producer | Consumers | Final use | Dependency path | Provenance | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized conditioning | step_001 | step_002, step_003, step_012, step_014 | Coefficient legality | step_001 -> consumers | derived | None |
| Normalized Gram/size/raw bridge | step_002 | step_003, step_009, step_010, step_011 | Initialization and radius | step_001 -> step_002 -> consumers | derived | None |
| Colored diagram datum | step_004 | step_005, step_006, step_007 | Topology and enumeration input | step_001, step_002 -> step_003 -> step_004 -> consumers | derived | None |
| TOP | step_005 | step_006, step_007 | Face budget | step_004 -> step_005 -> consumers | derived | TOPrank unresolved |
| Profile classes | step_006 | step_007 | Multiplicity partition | step_004, step_005 -> step_006 -> step_007 | derived | Inverse unresolved |
| ENUM/21z | step_008 | step_009 | TF moment input | step_003-step_007 -> step_008 -> step_009 | derived | Charge unresolved |
| TF/deficit | step_009 | step_010, step_013 | Positive normal witness | step_008, step_003 -> step_009 -> consumers | derived | None after 21z |
| Initialization event | step_010 | step_011, step_015 | Confidence factor | step_001, step_002, step_009 -> step_010 | derived | None |
| Path limit/radius | step_011 | step_012-step_015 | Deterministic conditional route | step_010 + C_path -> step_011 | derived | None |
| Taylor/coefficient/physical outputs | steps step_012-step_014 | step_015 | Positive limiting loss | step_009, step_011 -> step_012 -> step_013 -> step_014 | derived | None |
| Probability identity | step_015 | theorem | Final conditional claim | step_010, step_011, step_014 -> step_015 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Tool/interface | Output | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Prove E_cond with failure r^(-20) and factor singular/operator bounds. | None | assump:base_conditioning, assump:dimension, assump:gaussian_smoothing | Rectangular perturbation. | Gaussian operator tail and Weyl. | E_cond. | Initialization confidence. | PENDING |
| step_002 | Prove balanced Gaussianization, normalized Grams, E_size, raw scale, and span equality. | step_001 | assump:dimension, assump:rank_window, assump:independent_initialization | Rank-one products with common radius. | Sphere/radius decomposition and Gram concentration. | E_gram^norm, E_size, exact bridge. | Uniform n,k,r certificate. | PENDING |
| step_003 | Prove accepted quotient, TC, radial, trace, loop, quadratic, and local-sector outputs; no TOP/ENUM. | step_001, step_002 | assump:rank_window, assump:independent_initialization | Structured quotient and Wick reduction. | Current-notation algebra, Bernstein, Wick. | Reduction package. | Conditional fixed-p moment/local scale. | PENDING |
| step_004 | Export the complete Gamma(D) schema and exact loop/circuit identities. | step_003 | Derived step_003 outputs | Half-edge, connectedness, empty-mode, and B-v bookkeeping. | Direct finite graph construction. | Diagram datum. | None. | PENDING |
| step_005 | Prove TOPrank and TOP for every exported diagram. | step_004 | Derived diagram datum | Joint transition ranks at high degree and repeated labels. | Direct F_2 incidence/interlace factorization. | TOP. | Exact face/r power. | PENDING |
| step_006 | Define disjoint/exhaustive (a,b,c) profile and greedy inverse. | step_004, step_005 | Derived diagram and TOP | Reconstruct every forest and switch sequence. | Lexicographic encoding and inverse. | Profile classes. | No hidden p factor. | PENDING |
| step_007 | Prove Charge and bound every profile multiplicity/weight. | step_003, step_005, step_006 | assump:rank_window, assump:independent_initialization | Repeated-component multiplicity and face loss. | Forest count, switch count, explicit inequalities. | Profile bound. | sqrt(k)/r leading term preserved. | PENDING |
| step_008 | Sum ENUM to 21z at p0=ceil(31 log r). | step_007 | Derived profiles and local sector | Multinomial sum and exact constants. | Multinomial theorem. | 21z. | sqrt(k)/r + sqrt(p0/r) + p0/r. | PENDING |
| step_009 | Convert 21z to TF, quotient coercivity, W_0, and E_deficit. | step_003, step_008 | assump:rank_window; derived TC/radial | Markov, radial factor 16, projection. | Markov, Pythagoras, pseudoinverse. | TF, W_0, E_deficit. | Conditional failure <=r^(-20). | PENDING |
| step_010 | Assemble P(E_init_norm)>=1-r^(-10). | step_001, step_002, step_009 | Primitive conditions through dependencies | Joint probability bookkeeping. | Tower and union bound. | E_init_norm probability. | Confidence bridge. | PENDING |
| step_011 | Prove finite-path convergence, displacement <=E_star, and radius 3. | step_002, step_010 | assump:gd_step; E_size; C_path | Noncircular all-time closure. | Tail-sum Cauchy and triangle. | Limit/radius. | Horizon-uniform conditional. | PENDING |
| step_012 | Prove exact raw Taylor remainder. | step_001, step_011 | Derived conditioning/radius/path | No hidden k factor. | Trilinear expansion and Cauchy. | Taylor interface. | Exact C_CP(kappa,3). | PENDING |
| step_013 | Preserve raw coefficient margin. | step_009, step_011, step_012 | Derived deficit/limit/Taylor | One endpoint remainder. | W_0 orthogonality and absorption. | Coefficient floor. | (15/16)delta_0 sqrt(r). | PENDING |
| step_014 | Transfer to physical loss floor. | step_001, step_013 | Derived conditioning/margin | Same-target mode-span bridge. | Projection and tensor singular values. | epsilon_0(kappa)||T||^2. | Relative physical rate. | PENDING |
| step_015 | Assemble F_plus inclusion and exact conditional probability. | step_010, step_011, step_014 | Joint probability law | Retain unresolved path factor. | Event inclusion and conditioning identity. | Final theorem. | (1-r^(-10))P(C_path|E). | PENDING |

## Dependency Notes

The graph is acyclic:

    step_001 -> step_002 -> step_003 -> step_004 -> step_005
    -> step_006 -> step_007 -> step_008 -> step_009 -> step_010
    -> step_011 -> step_012 -> step_013 -> step_014 -> step_015.

The only theorem-critical sources not already accepted in the proof history are
TOPrank and the profile inverse/Charge inequalities. Every later output is
consumed only after its producer. The topology and enumeration blockers are
same-setting roadmap/interface defects; they do not change the theorem,
algorithm, rank window, probability mode, metric, or raw-target bridge.

## Blockers

1. Topology source blocker at step_005. The schema in step_004 is now complete,
   but no accepted direct derivation currently proves the exact factorization
   TOPrank for all connected four-colored K, including high-degree visits,
   repeated labels, one-color words, and empty S_M. TOP may not be used as its
   own source. If TOPrank fails, record the smallest counterexample and route
   to /proof-sketch; do not weaken TOP or the theorem.
2. Enumeration source blocker at step_006. No accepted proof currently gives a
   disjoint/exhaustive greedy inverse from every cross-visit diagram to one
   profile (a,b,c). The profile must account for component-label freedom,
   rooted-forest choices, and every Wick switch.
3. Charging source blocker at step_007. Even conditional on TOP, no accepted
   inequality currently proves Charge with every p-dependent multiplicity placed
   in b or c and no logarithmic factor multiplying the leading sqrt(k)/r
   slots. Without Charge, ENUM and 21z are not exported.
4. Downstream TF/deficit and initialization probability remain conditional on
   21z. The later path, Taylor, physical bridge, and exact probability identity
   are viable and unchanged.

## Future Failure Routing

- A valid TOP counterexample or failed TOPrank is a step_005
  PARTIAL_BLOCKED result routed to /proof-sketch. It is not an IDEA_FAIL unless
  later evidence requires changing the theorem contract.
- Failure of the greedy inverse is a step_006 PARTIAL_BLOCKED result routed to
  /proof-sketch.
- Failure of any Charge inequality or the no-log-leading profile sum is a
  step_007/step_008 PARTIAL_BLOCKED result routed to /proof-sketch.
- If later evidence proves that no same-setting topology and enumeration
  interface can support 21z, route to idea revision; do not silently weaken the
  rank window, confidence, conditional mode, raw deficit, or physical-loss
  conclusion.
