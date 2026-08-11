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

- Sketch attempt: 4
- Retry mode: revise_sketch
- Trigger: attempt-3 proof-sketch review returned REVISE_SKETCH. It accepted
  the decomposition but required explicit topology matrix entries and
  dimensions, a current-notation circuit-nullity derivation, a terminating
  reversible switch encoding, and explicit profile exponent/constant algebra.
- Goal mode: exact-goal mode
- Progress type: conditional
- Sketch status: COMPLETE
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
   covariance-loop identity. After the color-0 contraction choose one
   representative from each edge-pair and call the resulting p slots S.
   Empty S_M means H_M=tau and F_M=1. The color-0 cycle makes each complete
   trace diagram connected; any rooted bookkeeping decomposition uses the
   stated additive root convention.
5. step_005 proves one exact topology lemma. Fix a root slot s0 and, when
   B>=3, root vertex rows u0,u1. Let U be the B by p incidence matrix over
   F_2 with U[u,s]=1 exactly when slot s is incident to vertex u. Delete
   column s0 and quotient the row space by the root and all-ones Euler
   relations; Q is the resulting (B-2) by (p-1) row-reduced matrix, with
   entries fixed by pivot-order Gaussian elimination. For B<=2, Q is empty.

   For M, let S_M be the non-Euler M-switch slots and S_M^o=S_M minus s0.
   On S_M^o define A_M[t,s]=1 when the two tau-arcs at t and s alternate
   and the selected M matching joins opposite endpoints, with zero diagonal.
   Order S_M^o before its complement and set

       R_M = A_M direct-sum I_(p-1-|S_M^o|),

   a (p-1) by (p-1) matrix. The circuit-nullity derivation is direct:
   ker(A_M) consists exactly of assignments constant on each H_M circuit
   except the root circuit, so dim ker(A_M)=F_M-1 and
   rank(R_M)=p-F_M. This includes the empty-mode branch R_M=I_(p-1) and
   the p=1 empty-matrix branch.

   Define L_M in F_2^((B-2) by (p-1)) by
   L_M[u,s]=1 exactly when the reduced incidence class of s has endpoint u
   and its M transition is non-Euler. Define N_M in
   F_2^((p-1) by (p-1)) by N_M[t,s]=1 exactly when the reduced M-switch
   boundary arcs t,s are consecutive in tau order, with identity entries on
   the complement block. Expanding one row and one column shows that every
   interior tau edge occurs twice and cancels modulo 2, while a non-Euler
   M-switch occurs once in the M summand. Therefore

       Q = L_a R_a N_a + L_b R_b N_b + L_c R_c N_c.       (TOPrank)

   Rank subadditivity gives B-2 <= sum_M(p-F_M), hence F+B<=3p+2.
   The B<=2, p=1, degree-two, one-color, empty-mode, repeated-label, and
   high-degree cases are covered by the same row-reduction definitions.
6. step_006 defines an exhaustive excess profile with a reversible algorithm.
   For each component/mode group let rho be the visit-local matching and pi
   the selected Wick matching. An admissible switch chooses two rho-edges on
   one alternating cycle of rho union pi, with four distinct half-edges and
   both new pairs in that group, and replaces (x1,x2),(x3,x4) by
   (x2,x3),(x4,x1). Always choose the lexicographically least admissible
   quadruple. The termination measure is

       Phi = (sum_C (|C|-1), number of non-root union-find blocks,
              number of unswitched nonlocal pairs),

   ordered lexicographically; every switch decreases the first nonzero
   coordinate. The reconstruction invariant stores the current matching,
   rooted forest, union-find parent map, and ordered switch record. Reversing
   the record restores pi and the original component word exactly.

   Let S_tilde=S times {left,right} be the 2p oriented slot-ends, identified
   with the cyclic trace positions; the topology matrices remain on the p-set
   S. A scan creates a forest edge at the first occurrence joining two
   distinct union-find blocks. A profile position is type a if no forest or
   nonlocal-switch record charges it. Every one-loop-loss switch record marks
   its ordered pair of designated oriented ends as one b-pair, so b is even
   and there are b/2 such records. A position is type c if its first charge is
   a two-loop-loss switch or the second endpoint of a forest merge. Uncharged
   positions are padded as type a. Thus a+b+c=2p, the local sector is exactly
   (2p,0,0), and every cross-visit diagram has b+c>=1. The stored record also
   identifies the charged oriented ends, so the inverse invariant proves
   disjointness, exhaustiveness, and the b-pairing.
7. step_007 proves the explicit profile charge. Put

       e = (3p+2-v)-F,  sigma=B-v,
       C0(kappa)=3 kappa_1^8,
       C1(kappa)=8 kappa_1^8,
       C2(kappa)=16 kappa_1^8,
       C_G(kappa)=C0+C1+C2=27 kappa_1^8.

   The forest and profile-position invariants give

       v-1 <= a/2+b+c,                              (P1)
       4p+1-F >= a+b/2+c
          +(5/4)(v-1-a/2)_+.                        (P2)

   Put d=v-1-a/2. If d>=0, then k^d<=r^(5d/4), and P2 absorbs that
   exponent. If d<0, then r<k gives k^d<=r^d, while the d_+ term in P2
   vanishes and the additional negative d only improves the bound. Thus
   P1-P2 and the rank window imply

       k^(v-1) r^(F-4p-1)
       <= (sqrt(k)/r)^a r^(-b/2-c).                 (P3)

   The reversible encoding gives the following count. The multinomial factor
   chooses the 2p profile-position types, each of the b/2 ordered one-loop
   switch records has at most 8p partner/orientation choices, and each c record
   has at most 16p forest or two-loop-switch choices:

       N_labels <= k^v,
       N_forest,switch
         <= multinomial(2p;a,b,c)(8p)^(b/2)(16p)^c. (P4)

   Since the label count and diagram weight factor as

       k^v kappa_1^(16p) r^(F-4p)
       = k r kappa_1^(16p)
         [k^(v-1) r^(F-4p-1)],

   combining P3-P4 with a+b+c=2p gives

       T_{p;a,b,c} <= 3 k r multinomial(2p;a,b,c)
         (C0 sqrt(k)/r)^a
         (C1 sqrt(p/r))^b
         (C2 p/r)^c.                                (ENUM)

   Here each one-loop switch is counted once per b-pair, so
   (8p)^(b/2)r^(-b/2)=(sqrt(8p/r))^b and is dominated by the stated C1
   factor. All p-dependent choices are in b,c in P4; no p factor multiplies
   the leading sqrt(k)/r a-positions. Constants depend only on kappa.
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

No external theorem is consumed for TOP or ENUM. Circuit nullity is derived
in current notation by the circuit-constant kernel calculation for A_M.
TOPrank is the explicit parity identity on the reduced slot matrices, and the
profile inverse plus P1-P4 are the direct finite combinatorial derivation.
All constants C0,C1,C2,C_G depend only on kappa.

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
  - Constant provenance: C0=3 kappa_1^8 is the accepted visit-local constant;
    C1=8 kappa_1^8 is the per-profile-position one-loop constant after the
    paired count (8p)^(b/2), and C2=16 kappa_1^8 is the two-loop/forest
    constant; C_G=C0+C1+C2=27 kappa_1^8 is the multinomial constant;
    C_TF=32e sqrt(32/30) C_G is the unchanged Markov/radial specialization.
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
  assumptions and steps step_001 and step_002.
- step_004 derives the full diagram datum; it is not a theorem-facing
  admissibility assumption.
- step_005 must derive TOPrank from that datum. TOP cannot be assumed.
- step_006 must derive the greedy profile bijection. ENUM cannot be assumed.
- step_007 must derive Charge and the cross-visit moment. 21z cannot be assumed.
- step_008 derives the moment output only after step_005, step_006, and
  step_007.
- step_009 derives TF, W_0, and E_deficit; none is primitive.
- step_010 derives E_init_norm and its probability.
- C_path is an explicitly conditional hypothesis.
- step_011, step_012, step_013, step_014, and step_015 derive convergence,
  Taylor control, coefficient margin, physical loss, and final probability in
  that order.

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
  - Producer/consumers: step_003 -> step_004, step_005, step_006, step_007,
    and step_008.
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
  - Producer/consumers: step_004 -> step_005, step_006, and step_007.
  - Locality: step-local bookkeeping; no TOP is claimed here.

- Step ID: step_005
  - Claim class/theorem role: topology/face lower bound.
  - Mechanism source: the explicit reduced slot matrices
    Q in F_2^((B-2) by (p-1)), R_M in F_2^((p-1) by (p-1)),
    L_M in F_2^((B-2) by (p-1)), and
    N_M in F_2^((p-1) by (p-1)), with entries fixed in the roadmap.
  - Source-convention compatibility: Q and R_M are built from the same K,
    tau, and H_M exported by step_004; the circuit-nullity normalization is
    fixed in the same F_M convention.
  - Control relation: ker(A_M) is the F_M-1 dimensional circuit-constant
    space, so rank(R_M)=p-F_M; the entrywise parity cancellation proves
    Q=sum_M L_M R_M N_M; rank subadditivity proves TOP.
  - Residual-to-target adequacy: N/A; TOP is a combinatorial bound on the
    exact diagram used by the moment expansion.
  - Defects: high-degree visits and repeated labels are removed only by the
    explicit slot split; no unnamed topology deficit remains.
  - Boundary/entry: B<=2 uses empty Q; p=1 uses empty R_M; empty modes use
    R_M=I; degree-two, one-color, repeated-label, and high-degree cases use
    the same entries.
  - Producer/consumers: step_005 -> step_006.
  - Locality: step-local direct finite-graph derivation.

- Step ID: step_006
  - Claim class/theorem role: exhaustive profile map.
  - Mechanism source: the admissible four-half-edge switch, lexicographic
    selection, decreasing Phi, and reverse ordered switch record.
  - Source-convention compatibility: the profile is defined on the exact
    component word and Wick matching in Gamma(D), not on a surrogate graph.
  - Control relation: each switch decreases Phi lexicographically; reversal
    preserves the stored matching/forest/parent invariant; each one-loop-loss
    switch creates one ordered pair of b profile positions, so b is even;
    hence a+b+c=2p, the local sector is (2p,0,0), and every cross-visit
    diagram has b+c>=1.
  - Residual-to-target adequacy: N/A; the profile map partitions the exact
    diagrams before any moment weight is changed.
  - Defects: repeated components and nonlocal matchings are recorded rather
    than discarded; the inverse reconstructs both.
  - Boundary/entry: first cross-visit switch, one repeated label, all-distinct,
    and maximal collision profiles must reconstruct.
  - Producer/consumers: step_006 -> step_007.
  - Locality: step-local direct finite algorithm.

- Step ID: step_007
  - Claim class/theorem role: multiplicity/face-loss charging and moment.
  - Mechanism source: profile inequalities P1-P2, the d>=0/d<0 rank-window
    transfer at k<=r^(5/4), exponent bound P3, and reconstruction count P4.
  - Source-convention compatibility: all counts use the same Wick pairing,
    circuit-loop F, label count v, and graph vertex count B exported upstream.
  - Control relation: the two sign branches for d=v-1-a/2 turn P2 into P3;
    P4 places (8p)^(b/2)(16p)^c only on nonleading profile positions, with
    one switch per b-pair; diagram weight and a+b+c=2p give ENUM with
    C0=3 kappa_1^8, C1=8 kappa_1^8, and C2=16 kappa_1^8.
  - Residual-to-target adequacy: step_006 is disjoint and exhaustive, so the
    charged sum is the full trace moment, not a proxy.
  - Defects: label, forest, and switch choices are exactly the P4 factors;
    covariance-loop loss is exactly P2.
  - Boundary/entry: p0=ceil(31 log r), maximal k, and the first cross-visit
    profile must obey the same charge.
  - Producer/consumers: step_007 -> step_008.
  - Locality: step-local direct exponent/count derivation.

- Step ID: step_008
  - Claim class/theorem role: ENUM and Gaussian trace moment 21z.
  - Mechanism source: disjoint profiles from step_006 and Charge from step_007.
  - Control relation: multinomial summation preserves the leading sqrt(k)/r
    profile position and yields C_G=C0+C1+C2=27 kappa_1^8 with the exact p0
    corrections.
  - Defects/accumulation: finite fixed-order diagram sum only.
  - Boundary/entry: p0=ceil(31 log r), all-distinct and maximal-collision
    profiles must both be included.
  - Producer/consumers: step_008 -> step_009.
  - Locality: step-local conditional on step_005, step_006, and step_007.

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
  - Producer/consumers: step_011 -> step_012, step_013, step_014, and
    step_015.
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
| TOPrank and TOP | step_005 | Explicit U,Q,A_M,R_M,L_M,N_M entries | Circuit-nullity kernel and parity cancellation control high-degree/repeated-label cases | Same K and same F_M used by moment | step_006, step_007 | None |
| Profile partition | step_006 | Complete Gamma(D), rho, pi, admissible switches, Phi | Termination and reverse switch invariant give disjoint/exhaustive classes | Same diagrams, no surrogate | step_007 | None |
| ENUM and 21z | step_008 | TOP, profiles, P1-P4, C0/C1/C2 | Label/switch multiplicity and face loss are explicit; p occurs only in b,c | Exact full trace moment | step_009 | None |
| TF, W_0, E_deficit | step_009 | 21z, TC, radial, quotient | Finite failure union | Raw projection identity exactly | step_010, step_013 | None |
| E_init_norm probability | step_010 | Four constituent events | Union/tower only | Exact event intersection | step_011, step_015 | None |
| Limit, Taylor, coefficient margin | step_011, step_012, step_013 | C_path, E_size, W_0 | Finite path and one endpoint remainder | Same raw trajectory/map | step_013, step_014, step_015 | None |
| Physical loss floor | step_014 | Projection identity and singular values | No subtracted residual | Same realized T and physical Frobenius norm | step_015 | None |
| Final probability | step_015 | Event inclusion and E_init probability | Conditional factor retained | Actual F_plus event | theorem | None |

## Generated Output Flow

| Output | Producer | Consumers | Final use | Dependency path | Provenance | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized conditioning | step_001 | step_002, step_003, step_012, step_014 | Coefficient legality | step_001 -> consumers | derived | None |
| Normalized Gram/size/raw bridge | step_002 | step_003, step_009, step_010, step_011 | Initialization and radius | step_001 -> step_002 -> consumers | derived | None |
| Colored diagram datum | step_004 | step_005, step_006, step_007 | Topology and enumeration input | step_001, step_002 -> step_003 -> step_004 -> consumers | derived | None |
| TOP | step_005 | step_006, step_007 | Face budget | step_004 -> step_005 -> consumers | derived | None |
| Profile classes | step_006 | step_007 | Multiplicity partition | step_004, step_005 -> step_006 -> step_007 | derived | None |
| ENUM/21z | step_008 | step_009 | TF moment input | step_003, step_004, step_005, step_006, step_007 -> step_008 -> step_009 | derived | None |
| TF/deficit | step_009 | step_010, step_013 | Positive normal witness | step_008, step_003 -> step_009 -> consumers | derived | None |
| Initialization event | step_010 | step_011, step_015 | Confidence factor | step_001, step_002, step_009 -> step_010 | derived | None |
| Path limit/radius | step_011 | step_012, step_013, step_014, step_015 | Deterministic conditional route | step_010 + C_path -> step_011 | derived | None |
| Taylor/coefficient/physical outputs | step_012, step_013, step_014 | step_015 | Positive limiting loss | step_009, step_011 -> step_012 -> step_013 -> step_014 | derived | None |
| Probability identity | step_015 | theorem | Final conditional claim | step_010, step_011, step_014 -> step_015 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Tool/interface | Output | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_001 | Prove E_cond with failure r^(-20) and factor singular/operator bounds. | None | assump:base_conditioning, assump:dimension, assump:gaussian_smoothing | Rectangular perturbation. | Gaussian operator tail and Weyl. | E_cond. | Initialization confidence. | PENDING |
| step_002 | Prove balanced Gaussianization, normalized Grams, E_size, raw scale, and span equality. | step_001 | assump:dimension, assump:rank_window, assump:independent_initialization | Rank-one products with common radius. | Sphere/radius decomposition and Gram concentration. | E_gram^norm, E_size, exact bridge. | Uniform n,k,r certificate. | PENDING |
| step_003 | Prove accepted quotient, TC, radial, trace, loop, quadratic, and local-sector outputs; no TOP/ENUM. | step_001, step_002 | assump:rank_window, assump:independent_initialization | Structured quotient and Wick reduction. | Current-notation algebra, Bernstein, Wick. | Reduction package. | Conditional fixed-p moment/local scale. | PENDING |
| step_004 | Export the complete Gamma(D) schema and exact loop/circuit identities. | step_003 | Derived step_003 outputs | Half-edge, connectedness, empty-mode, and B-v bookkeeping. | Direct finite graph construction. | Diagram datum. | None. | PENDING |
| step_005 | Construct U in F_2^(B by p), Q in F_2^((B-2) by (p-1)), and A_M,R_M,L_M,N_M with the roadmap entries; prove the circuit-constant kernel, Q=sum_M L_M R_M N_M, TOPrank, and TOP. | step_004 | Derived diagram datum | Root/global-relation deletion, circuit nullity, parity cancellation, and the B<=2, p=1, empty-mode, high-degree, and repeated-label branches. | Pivot-ordered row reduction, direct circuit-kernel calculation, entrywise F_2 cancellation, and rank subadditivity. | TOPrank and TOP. | Exact face/r power. | PENDING |
| step_006 | Define the admissible four-half-edge switch and lexicographically least sequence; prove termination by Phi and invertibility from the stored matching/forest/union-find/switch-record invariant; partition the 2p oriented slot-ends into a positions, paired b positions, and c positions; derive a+b+c=2p and b+c>=1 off the local sector. | step_004, step_005 | Derived diagram and TOP | Termination, unique reconstruction, and disjoint/exhaustive coverage of repeated-label and maximal-collision diagrams. | Lexicographic descent plus reverse-record reconstruction. | Exact profile classes and b-pairing. | No hidden p factor. | PENDING |
| step_007 | Prove P1-P4 with the paired count (8p)^(b/2)(16p)^c, use k<=r^(5/4) for P3, and charge every label, forest, switch, and covariance-loop factor to the (a,b,c) profile with C0=3 kappa_1^8, C1=8 kappa_1^8, and C2=16 kappa_1^8. | step_003, step_005, step_006 | assump:rank_window, assump:independent_initialization | Exact exponent transfer and placement of every p-dependent multiplicity on b or c profile positions. | Forest/union-find counts, reversible-switch counts, P1-P4, and the diagram weight bound. | Per-profile ENUM bound. | Preserve sqrt(k)/r with no p multiplier; constants depend only on kappa. | PENDING |
| step_008 | Aggregate the disjoint profile bounds into ENUM and sum them at p0=ceil(31 log r) to obtain 21z with C_G=27 kappa_1^8. | step_007 | Derived profiles, local sector, and P1-P4 charge | Multinomial summation with exact constant provenance and no logarithmic loss on the leading profile position. | Multinomial theorem. | ENUM and 21z. | C_G(sqrt(k)/r + sqrt(p0/r) + p0/r), with no p0 factor on sqrt(k)/r. | PENDING |
| step_009 | Convert 21z to TF, quotient coercivity, W_0, and E_deficit. | step_003, step_008 | assump:rank_window; derived TC/radial | Markov, radial factor 16, projection. | Markov, Pythagoras, pseudoinverse. | TF, W_0, E_deficit. | Conditional failure <=r^(-20). | PENDING |
| step_010 | Assemble P(E_init_norm)>=1-r^(-10). | step_001, step_002, step_009 | Primitive conditions through dependencies | Joint probability bookkeeping. | Tower and union bound. | E_init_norm probability. | Confidence bridge. | PENDING |
| step_011 | Prove finite-path convergence, displacement <=E_star, and radius 3. | step_002, step_010 | assump:gd_step; E_size; C_path | Noncircular all-time closure. | Tail-sum Cauchy and triangle. | Limit/radius. | Horizon-uniform conditional. | PENDING |
| step_012 | Prove exact raw Taylor remainder. | step_001, step_011 | Derived conditioning/radius/path | No hidden k factor. | Trilinear expansion and Cauchy. | Taylor interface. | Exact C_CP(kappa,3). | PENDING |
| step_013 | Preserve raw coefficient margin. | step_009, step_011, step_012 | Derived deficit/limit/Taylor | One endpoint remainder. | W_0 orthogonality and absorption. | Coefficient floor. | (15/16)delta_0 sqrt(r). | PENDING |
| step_014 | Transfer to physical loss floor. | step_001, step_013 | Derived conditioning/margin | Same-target mode-span bridge. | Projection and tensor singular values. | epsilon_0(kappa) times the squared Frobenius norm of T. | Relative physical rate. | PENDING |
| step_015 | Assemble F_plus inclusion and exact conditional probability. | step_010, step_011, step_014 | Joint probability law | Retain unresolved path factor. | Event inclusion and conditioning identity. | Final theorem. | (1-r^(-10)) times the conditional probability of C_path given E_init_norm. | PENDING |

## Dependency Notes

The graph is acyclic because every dependency points to an earlier stable ID.
The nontrivial edges are: step_002 depends on step_001; step_003 depends on
step_001 and step_002; step_004 depends on step_003; step_005 depends on
step_004; step_006 depends on step_004 and step_005; step_007 depends on
step_003, step_005, and step_006; step_008 depends on step_007; step_009
depends on step_003 and step_008; step_010 depends on step_001, step_002, and
step_009; step_011 depends on step_002 and step_010; step_012 depends on
step_001 and step_011; step_013 depends on step_009, step_011, and step_012;
step_014 depends on step_001 and step_013; and step_015 depends on step_010,
step_011, and step_014.

The attempt-3 interface defects are repaired at sketch level: step_005 fixes
the topology matrices and direct rank/parity source, step_006 fixes a
terminating reversible profile producer, step_007 fixes P1-P4 and constant
provenance, and step_008 performs only the finite multinomial specialization.
These claims remain `PENDING` for their local proofs and reviews, but each is
now a step-local obligation rather than an unexposed source or flow defect.
All later outputs are consumed only after their producers, and the assembly
preserves the theorem, algorithm, rank window, probability mode, metric,
rates, and raw-target bridges.

## Blockers

None

## Future Failure Routing

There is no current sketch-level blocker. The following routes apply only if a
later local proof or review supplies concrete failure evidence.

- A valid TOP counterexample or failed TOPrank derivation in step_005 routes
  back to /proof-sketch with the smallest explicit counterexample; it is not
  idea-level evidence by itself.
- A failed termination or reconstruction invariant in step_006 routes back to
  /proof-sketch with the first noninvertible profile instance.
- A failed P1-P4 inequality, constant calculation, or no-log-leading sum in
  step_007 or step_008 routes back to /proof-sketch with the exact offending
  exponent or profile.
- Only concrete evidence that no same-setting topology/enumeration interface
  can support 21z may be routed to idea revision. Such routing must not silently
  weaken the rank window, confidence, conditional mode, raw deficit, or
  physical-loss conclusion.
