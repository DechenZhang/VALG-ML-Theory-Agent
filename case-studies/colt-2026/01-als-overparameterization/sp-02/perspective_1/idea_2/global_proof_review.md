# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_1/idea_2`
- Sketch attempt: 1
- Reviewed setting: `perspective_1/idea_2/setting.md`, SHA-256 `d16c1546d48cedf94ba4438e931655f72acb8c830ac6358342e3f3f13266ab3f`
- Reviewed sketch: `perspective_1/idea_2/proof_sketch.md`, SHA-256 `900acb8b4a91f78f5223ada2fb53bef611d2259dfaeaadf26c1db7febb949720`
- Reviewed sketch review: `perspective_1/idea_2/proof_sketch_review.md`, SHA-256 `5e1d161624a35a771986bd75270efcfac980daaa4d2c056e80eb8cf39bdc91be`
- Upstream sketch-review status: `ACCEPTED`
- Reviewed global proof: `perspective_1/idea_2/global_proof.md`, SHA-256 `6d530ea31af192421cbf025f8656e7944369b90fd4096a5d5c73b02dc46af799`
- Reviewed global-proof status: `COMPLETE_DRAFT`
- Reviewed suggested routing: `None`
- Goal mode: exact-goal, `material_partial`, for the two one-mode fixed-span constrained methods only.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The diagnostic is contract-complete. It contains the reviewed identity, controlled status, exact attempted claim, seven-block whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative audit, scope-and-closure certificate, exported-interface table, generated-output flow, early obstruction audit, localized gap statement, diagnostic-boundary note, and controlled routing. `COMPLETE_DRAFT` is aligned with `Suggested Routing = None`.

The diagnostic boundary is explicit: `global_proof.md` is not proof evidence, a cited result, an assumption source, or authority to alter accepted sketch claims. The exposition is sufficiently detailed for independent step proving; it does not hide a theorem-level gap under a future-step label.

## Claim And Sketch Fidelity Audit

The attempted claim preserves the exact setting and accepted sketch: arbitrary deterministic base triples, fixed $q>0$, $\rho=r^{-q}$, shared smoothed tensor $T$, independent method starts, $r<k\le r^{5/4}$, $n\ge8r^{5/4}$, the displayed sequential constrained ALS, the displayed coefficient Armijo GD, joint probability at least $1/4$, and objective-limit floor $3\lVert T\rVert_F^2/8$ for both methods. The quantifier order and conditional-on-$T$ proof mode are unchanged.

The choice (r_0=1) is a valid specialization because the proof uses only the displayed dimension/rank inequalities and empty small-(r) integer rank windows are vacuous. No parameter convergence, rate, factor boundedness, Gram conditioning, or unconstrained ALS/GD conclusion is added. The exact/noiseless and zero-target baseline conclusions are preserved rather than weakened to a remainder or stopped statement.

## Theorem-Level Structure Audit

The seven theorem blocks faithfully implement the seven accepted sketch steps:

- Block A / `step_001`: probability-one Haar spans and exact fixed-span conservation.
- Block B / `step_002`: conditional projector expectation, event margin, and joint probability.
- Block C / `step_003`: exact fixed-witness Pythagorean floor.
- Block D / `step_004`: cALS well-definedness, descent, and scalar limit.
- Block E / `step_005`: cGD finite backtracking, descent, and scalar limit.
- Block F / `step_006`: constrained-only non-transfer certificate.
- Block G / `step_007`: exact probability, constant, limit, and scope assembly.

The dependency graph is acyclic. The apparent cross-reference from cGD membership to Block E is a legal co-closure: Block A proves membership at every defined iterate, Block E independently proves every finite iterate is defined, and Block G consumes both. Block F is used only to delimit scope and is not smuggled into the positive lower-bound mechanism.

## Dependency And Assumption Audit

All theorem-facing conditions have valid provenance. `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization` produce (k<n), the Gaussian/Haar span law, and the conditional independence protocol. `assump:arbitrary_base` remains a uniform quantifier, and `assump:gaussian_smoothing` defines the law of (T); neither is replaced by a favorable generated event because the argument is conditional on every realized (T).

Full rank, Haar isotropy, fixed-span membership, projection events, objective monotonicity, line-search termination, finite iterate existence, and scalar limits are derived outputs with earlier producers. The only local conditional hypothesis, finiteness of the current cGD iterate, is discharged inductively. No unconditional theorem target consumes factor boundedness, invertibility, trajectory compactness, convergence, or the desired positive limit as an assumption.

## Citation And Tool Audit

No theorem-critical external citation is used as proof authority. Every tool is instantiated in the branch convention and remains a step-local direct derivation:

- Gaussian full rank and Haar range use the exact iid (N(0,1/n)) initialization, Euclidean column space, (k<n), orthogonal invariance, and the stated independence law.
- Haar isotropy acts on the exact mode-1 projector; the trace calculation produces the same Frobenius projected energy consumed by the margin step.
- Markov, conditional independence, and the tower property use the shared realized (T), with (T=0) separated before normalization.
- Pythagoras uses the exact ambient tensor subspace and actual theorem residual, so no transformed-object bridge is needed.
- Moore-Penrose least squares applies to the exact matricized block objectives and includes singular or zero Khatri-Rao designs; matricization is Frobenius-isometric.
- The cGD Taylor argument uses the exact coefficient objective (f_Q(C,Y,Z)=F(QC,Y,Z)), a current compact search segment, and no uniform smoothness or step-size claim.
- Monotone convergence is invoked only for nonnegative real objective sequences.
- The unconstrained first-update formulas are direct comparison algebra and export only non-transfer, not an unconstrained failure theorem.

There is no source-convention, object-target, wrapper, version, label, or residual-to-target mismatch requiring an upstream bridge.

## Quantitative Dependence Audit

The diagnostic preserves all exposed quantities and constants. The sole structural simplification is

\[
\frac{k}{n}\le\frac18
\quad\Longrightarrow\quad
1-2\frac{k}{n}\ge\frac34
\quad\Longrightarrow\quad
\frac12\left(1-2\frac{k}{n}\right)\ge\frac38.
\]

The per-method conditional event probability is (1/2), the joint conditional probability is (1/4), and tower averaging loses no probability. No hidden constant depends on (r,n,k,q,\rho,T), the bases, initialization, or iteration. The proof-local Hessian bound (L_t) may depend on the current finite state but is not exported. The static floor is all-time, while the public conclusion is asymptotic only through already-established scalar limits. The norm and object remain the actual tensor Frobenius residual throughout.

## Scope And Closure Review

The scope-and-closure certificate passes row by row. Fixed-span leakage is exactly zero, so its all-time closure is algebraic and noncircular. The projector event is static and produced before the trajectories. The objective floor is re-established from the same orthogonal identity at each time and has no accumulated defect. cALS sweep drops have controlled sign and telescope against (F_{\mathrm{cALS}}(0)). The cGD Taylor remainder is absorbed one step at a time by (L_t\eta_t\le1), and accepted drops telescope against (F_{\mathrm{cGD}}(0)). Nonnegativity supplies the finite lower budget for both scalar limits.

Entry and boundary activation is explicit: membership holds at initialization and after the first updates; singular cALS designs still have finite exact minimizers; zero cGD gradient accepts the first trial and is stationary; otherwise a sufficiently small dyadic step is accepted. The cases (T=0), zero orthogonal residual, (k/n=1/8), zero objective, zero drops, nonunique minimizers, arbitrarily large but finite current factors, and vanishing step sizes across time do not deactivate a mechanism while leaving the stated theorem conclusion false.

Generated-output flow is legal throughout. The exact same-target bridge

\[
T-S_t^M=(I-P_{\mathcal H_M})T+(P_{\mathcal H_M}T-S_t^M)
\]

accounts for every residual term in the theorem norm. The unconstrained comparison exposes the new term ((I-P_{\mathcal H_0})S_t) and correctly certifies that no fixed-witness transfer is available; no unconstrained all-time conclusion is claimed.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Full-rank Haar spans independent of (T) and each other | Static nondegeneracy and projector source | Absolute continuity, left orthogonal invariance, trace (k), independent Gaussian starts | `assump:dimension`, `assump:rank_window`, `assump:joint_initialization`; Block A / `step_001` | Gives exactly the (k)-plane, Haar law, and independence used by Block B | Same Euclidean column space and projector; no whitening, weighting, or surrogate | (k<n), (operatorname{rank}G_x^M=k) a.s., (U\mathcal S_M\stackrel d=\mathcal S_M) | Gaussian law and invariance export (Q_M,P_{\mathcal S_M},P_{\mathcal H_M}) before use | Produced and consumed projectors are identical; transfer residual is zero | Static probability-one certificate; only a null rank-failure set | Primitive draw -> `step_001` -> `step_002`,`step_003`,`step_006`,`step_007` | Producer `step_001`; consumers B, C, F, G | (k/n=1/8<1) remains full-codimension; (T=0) is irrelevant to span construction | step-local | None |
| All-time fixed-span membership (S_t^M\in\mathcal H_M) | Generated invariant enabling the fixed witness | Exact fixed left factor (Q_M) in initialization and every constrained update | Formal algorithms; Block A / `step_001`; finite cGD indices from Block E / `step_005` | Algebraic inclusion supplies the exact membership consumed by Pythagoras | Same (Q_M), tensor subspace, and Frobenius geometry as the theorem witness | (X_t^M=Q_MD_t\Rightarrow(I-P_{\mathcal H_M})S_t^M=0) | Displayed cALS formula and coefficient cGD parameterization export zero leakage | Produced and consumed subspace are identical; no object transfer | Leakage is exactly zero at each step, hence zero accumulated defect | Initialization/update formula -> `step_001`; `step_005` supplies all finite cGD indices; both -> final use | Producer `step_001`; consumers `step_003`,`step_007`; comparison in `step_006` | Holds at (t=0), first update, singular designs, zero coefficients, zero gradient, and (T=0) | step-local | None |
| Conditional projector events and joint residual margin | Structural upper-to-lower comparison and probability conversion | Haar isotropy, trace (k), Markov, conditional independence, tower | Block A output plus `assump:dimension`, `assump:rank_window`, `assump:joint_initialization`; Block B / `step_002` | Projected energy control gives exactly the complement margin used by the floor | Exact mode-1 projector, shared (T), and Frobenius norm | (\mathbb E[\Vert P_HT\Vert ^2\mid T]=(k/n)\Vert T\Vert ^2); (E_M\Rightarrow\Vert P_{H^\perp}T\Vert ^2\ge(1-2k/n)\Vert T\Vert ^2) | Trace (k), (k/n\le1/8), and independent starts export margin (3/4) and joint probability (1/4) | Exact complement identity for the same target; no omitted residual | Static projected-energy defect controlled on (E_M); no time accumulation | `step_001` -> `step_002` -> `step_007`; event contains no trajectory conclusion | Producer `step_002`; final consumer `step_007` | (T=0) gives sure events without division; equality (k/n=1/8) gives exactly (3/4) | step-local | None |
| Rank-window quantitative specialization | Public constant and superlinear threshold bridge | Dimension/rank assumptions and half-squared-loss normalization | `assump:dimension`, `assump:rank_window`; Blocks B and G / `step_002`,`step_007` | Matches the exact public (r^{5/4}), (1/4), (3/4), and (3/8) interfaces | Same variables and no hidden asymptotic or metric convention | (k/n\le1/8\Rightarrow(1-2k/n)/2\ge3/8); (1/2\cdot1/2=1/4) | All constants are exposed; (r_0=1) uses only vacuity of empty small-(r) windows | No residual, tolerance, or probability loss is suppressed | Static numerical specialization; no forcing or accumulation | Primitive numerical assumptions -> Blocks B/G -> final theorem | Producers `step_002`,`step_007`; consumer final claim | Boundary equality and empty integer windows preserve the statement | step-local | None |
| Exact fixed-witness actual-objective floor | Structural lower bound and residual-to-target bridge | Fixed membership and Hilbert-space orthogonality | Block A / `step_001`; Block C / `step_003` | Orthogonality supplies the required positive lower term, not an upper-bound proxy | Same (T,P_{\mathcal H_M},S_t^M), and Frobenius norm | (\Vert T-S_t\Vert ^2=\Vert (I-P_H)T\Vert ^2+\Vert P_HT-S_t\Vert ^2) | Zero leakage plus the exact projector identity exports (F_M(t)\ge\Vert (I-P_H)T\Vert ^2/2) | Exact same-target decomposition; in-subspace residual is retained and nonnegative after squaring | No recurrence or forcing; the same identity is reapplied at every time | `step_001` -> `step_003` -> `step_007` | Producer `step_003`; consumer `step_007`; boundary comparison `step_006` | Applies at (t=0) and first updates; at zero residual or (T=0), omit normalized witness and retain zero floor | step-local | None |
| cALS well-definedness, monotonicity, and scalar limit | Exact block minimization, signed descent, asymptotic scalar closure | Moore-Penrose least squares in the exact sequential order | Formal cALS procedure; Block D / `step_004` | Each displayed update is a finite minimum-norm exact minimizer of the current actual block objective | Matricization is Frobenius-isometric; constrained (X=QC) uses orthonormal (Q) | Three block inequalities; (F_{t+1}\le F_t); (sum_{t<N}(F_t-F_{t+1})\le F_0) | Pseudoinverse formulas export finite updates and actual-objective descent without conditioning margins | Matrix residual is the same tensor residual; transfer residual zero | Nonnegative drops telescope with controlled sign against finite (F_0) | Formal updates -> `step_004` -> `step_007`; lower budget is (F\ge0), not target limit | Producer `step_004`; consumer `step_007` | Singular/zero design, nonunique minimizer, zero drop, and zero objective all preserve closure | step-local | None |
| cGD finite search, monotonicity, and scalar limit | Iterative well-definedness, signed descent, asymptotic scalar closure | Polynomial (C^2) objective and current-segment Hessian bound | Formal cGD procedure; Block E / `step_005` | Local Taylor control proves exactly the stated Armijo interface and no stronger global claim | Exact product Euclidean/Frobenius coordinates; (f_Q=F(QC,Y,Z)) | (f(u-\eta g)\le f(u)-\eta\Vert g\Vert ^2+(L_t\eta^2/2)\Vert g\Vert ^2); (L_t\eta_t\le1); accepted drops telescope | Finite current state, finite gradient, compact segment, and dyadic trials export a finite next iterate and actual descent | Coefficient objective is exactly the consumed tensor objective; transfer residual zero | Taylor remainder is locally absorbed; signed drops telescope against finite (F_0); no uniform step bound is needed | Finite initialization -> finite accepted update induction -> `step_005` -> all-time/final consumers | Producer `step_005`; consumers `step_007` and cGD finite-index co-closure | Zero gradient accepts (eta=1); otherwise small dyadic descent; arbitrarily large finite states and shrinking steps are allowed | step-local | None |
| Exact/noiseless and zero-target baseline preservation | Baseline invariance obligation | Deterministic projector identity, exact updates, nonnegative squared loss | Blocks A-E / `step_001`-`step_005`; assembled by `step_007` | Preserves the original baseline conclusion rather than a remainder-only surrogate | Same realized/baseline tensor and same objective metric | At (T=0), required floor is zero; at (F=0), cALS block minima remain zero and cGD gradient is zero | Existing identities and updates export the baseline without new conditions | No residual at (T=0); exact/noiseless nonzero (T) uses the same witness relation | Zero leakage and nonincreasing objective persist all time | Earlier block producers -> `step_007`; baseline is not assumed as an event | Producers `step_001`-`step_005`; final consumer `step_007` | First transition is stationary at zero objective; zero residual needs no normalized witness | step-local | None |
| Final two-method positive-limit closure | Final probability conversion and all-time-to-limit assembly | Outputs of Blocks B-E, with scope label from F | `step_002`-`step_006`; Block G / `step_007` | Each source has the same target, method, norm, scope, and probability mode as the goal | Same shared (T), actual objectives, Frobenius norm, and scalar limit mode | Joint event (\Rightarrow\forall M,t, F_M(t)\ge3\Vert T\Vert ^2/8); existing limits preserve the inequality | Event margin, floor, and two scalar limits expose all constants and quantifiers | No leakage, smoothing-transfer, surrogate-object, or probability residual remains | Static event and floor; method-specific drops telescope separately | All positive outputs are produced before `step_007`; final event produces none of its own inputs | Producer `step_007`; consumer final theorem | (T=0), boundary (k/n=1/8), zero drops/gradients, and vacuous windows remain valid | step-local | None |
| Constrained-only non-transfer certificate | Scope-boundary obligation, not an unconstrained positive theorem | Exact first unconstrained updates and outside-span residual decomposition | Blocks A/C and direct comparison algebra; Block F / `step_006` | Adequate for the stated negative interface because it identifies the absent conservation source without claiming generic failure | Same initialization projector and actual theorem residual geometry | ((I-P_0)X_1=\eta(I-P_0)T_{(1)}K_0) for GD; analogous ALS formula; ((I-P_H)(T-S_t)=(I-P_H)T-(I-P_H)S_t) | Raw formulas export only non-transfer; no unsupported positive margin is manufactured | Transfer to an unconstrained target is explicitly inadequate due to uncontrolled target-scale subtraction | Outside-span term may appear at first update and persist with unknown sign; no accumulation control is claimed | `step_001`,`step_003` -> `step_006` -> final scope label | Producer `step_006`; consumer `step_007` scope statement | First unconstrained update may activate leakage; accidental zero leakage is not promoted to an invariant | step-local | None |

## Hard-Step Localization Audit

Every theorem-critical obligation is `step-local` under the unchanged accepted sketch and theorem contract. `step_001` instantiates Gaussian/Haar and exact membership facts; `step_002` instantiates the fixed-(T) probability calculation; `step_003` proves the exact orthogonal decomposition; `step_004` proves singular-design Moore-Penrose minimization and sequential descent; `step_005` proves pointwise Armijo termination and scalar convergence; `step_006` proves only the non-transfer certificate; and `step_007` performs exact assembly.

The most delicate obligations, `step_004` and `step_005`, already have fixed raw assumptions, exact exported interfaces, source-convention compatibility, boundary traces, and finite-budget relations. Future step workers must prove them, but need not invent a new bridge, dependency, mechanism source, metric, scope, or theorem conclusion. No missing generated-output producer, raw-control-to-interface relation, residual-to-target bridge, or accumulated-defect control is being mislabeled as local work.

## Early Idea-Failure Screen

- Contract contradiction: none; the proof targets exactly the constrained formalized theorem.
- Missing mechanism: none; codimension, zero-leakage parameterization, orthogonality, exact block minimization, and pointwise polynomial smoothness are concrete sources of the required claim classes.
- Source-convention and object-target stress: passed; all sources use the branch's Euclidean/Frobenius convention and actual target object.
- Residual-to-target stress: passed; the only positive bridge is an exact orthogonal decomposition, while the unconstrained bridge is explicitly marked inadequate.
- Persistent-defect and accumulation stress: passed; leakage is zero, projection error is static, and method drops telescope with controlled sign.
- Entry-state and boundary stress: passed for initialization, first updates, stationary/zero states, singular designs, zero residual, (T=0), and the quantitative boundary.
- Generated-condition and flow stress: passed; every generated event, invariant, and limit has an earlier legal producer.
- Dependence and mode stress: passed; there is no hidden horizon, tolerance, confidence, initialization, or smoothing dependence.
- Baseline invariance: passed; exact/noiseless and zero-target conclusions are unchanged.
- Same-setting repair plausibility: no repair is needed. Extending the proof to unconstrained ALS/GD would require a changed algorithmic theorem contract and a new mechanism source, but that extension is expressly outside this branch and is not a defect in the current idea.

## Review Rationale

`ACCEPTED` is the smallest sound status because the global diagnostic is complete, faithful, quantitatively exact, source-compatible, and safe as diagnostic context for all seven proof steps. Its fixed-witness closure is exact and noncircular, its generated outputs have legal producer-consumer paths, its scalar limits have concrete finite-budget mechanisms, and its non-transfer calculation prevents any scope upgrade to the unresolved unconstrained problem. No rerun of `/global-proof`, `/proof-sketch`, or `/subagent-idea-generator` is justified by the reviewed artifacts.
