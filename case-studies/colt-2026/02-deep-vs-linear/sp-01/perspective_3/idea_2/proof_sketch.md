# Proof Sketch

## Formalized Setting

Let (\mathcal X=\{-1,+1\}^n), with (n,m,T\ge1), and let (\mathcal H\subseteq\{-1,+1\}^{\mathcal X}). Scores are converted to labels by the one fixed source convention (\operatorname{sign}_{s_0}), where a zero score receives (s_0\in\{-1,+1\}). The learner is exactly the bias-free depth-two network
\[
f_{a,W}(x)=a^\top\sigma(Wx),\qquad S=m(n+1),
\]
with the Gaussian initialization, logistic one-sample all-layers SGD, constant stepsize, and latter-half aggregate (G_\omega) specified in `setting.md`. For each realized trajectory define
\[
A_\omega(x)=G_\omega(x)-G_\omega(-x),\qquad
v_\omega=\sum_{t=\lceil T/2\rceil}^{T}(W^{(t)})^\top a^{(t)}.
\]

The proof uses exactly these primitive setting assumptions:

- `assump:antipodal-oddness`: (h(-x)=-h(x)) for every (h\in\mathcal H) and (x\in\mathcal X).
- `assump:high-accuracy`: (2\varepsilon<1/(n+1)).
- `assump:universal-sgd-success`: for the same fixed architecture, (\eta), and (T), the expected source error of (G_\omega) is at most (\varepsilon) for every distribution and every target.

No stability, margin, displacement, gate, boundedness, or generated-trajectory condition is assumed.

## Formalized Goal

Prove that the deterministic identity map (\varphi_{\mathrm{id}}(x)=x\in\mathbb R^n) exactly tie-resolved sign-represents every target:
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad \operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\]
Consequently the law (delta_{\varphi_{\mathrm{id}}}), fixed before (\mathcal D) and (h), succeeds with probability one and
\[
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H)
\le n\le S\le TS.
\]
This is the exact formalized material-partial target; it does not assert the unrestricted general-depth, non-odd, unrestricted-accuracy (C TS) theorem.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Branch: `perspective_3/idea_2`

## Proof Roadmap

Use the selected framework in `technical_survey.md`: exact depth-two antisymmetrization plus a self-contained finite convex alternative. First prove trajectory-wise that (A_\omega(x)=\langle v_\omega,x\rangle). A tie-aware antipodal case analysis then gives
\[
\mathbf 1\{A_\omega\text{ errs at }x\}
\le
\mathbf 1\{G_\omega\text{ errs at }x\}
+\mathbf 1\{G_\omega\text{ errs at }-x\}.
\]
Invoking the unchanged learner on (\mathcal D^{\mathrm{sym}}) produces, for every original ((\mathcal D,h)), some homogeneous identity-coordinate score of error at most (2\varepsilon) on (\mathcal D).

For fixed (h), select from each antipodal pair the unique representative (q) with (h(q)=-s_0). Exact identity representation is equivalent to feasibility of the strict system (h(q)\langle w,q\rangle>0) on these representatives. If it is infeasible, a direct minimum-norm convex-hull argument gives a nonnegative Gordan certificate, and a direct affine-dependence pruning argument reduces it to (k\le n+1) representatives. Under the uniform distribution on those representatives, every homogeneous halfspace has tie-resolved error at least (1/k\ge1/(n+1)). This contradicts the previously exported (2\varepsilon) upper bound. The resulting strict separator represents both members of every antipodal pair exactly, after which the point-mass law and parameter inequalities close the theorem.

## Rate Objectives

- Theorem target: exact identity-map representation and (\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)\le n\le S\le TS).
- Objective type: structural-parameter explicit with a numerical high-accuracy threshold, fixed-horizon, and exact deterministic specialization.
- Exposed variables: (n,m,S,T,\eta,\varepsilon) and the class (\mathcal H); (S=m(n+1)) and the admissibility condition is (2\varepsilon<1/(n+1)). The final dimension chain has no (\eta)-dependence and no hidden dependence.
- Hidden constants may depend on: nothing; every displayed factor is (1) or (2).
- Hidden constants may not depend on: (n,m,S,T,\eta,\varepsilon,\mathcal H,\mathcal D,h), initialization, or the SGD sample path.
- Fixed quantities: one architecture, width, stepsize, and horizon are fixed before the universal choices of (\mathcal D) and (h). The proof is finite and nonasymptotic.
- Probability mode: the premise is in expectation over Gaussian initialization and SGD sampling; `step_003` converts it to deterministic existence separately for each ((\mathcal D,h)). The final feature law is a point mass and succeeds with probability one.
- Horizon mode: fixed finite horizon (T); the proof sums exactly the stated latter-half iterates and makes no all-time or asymptotic upgrade.
- Norm mode: tie-resolved (0)-(1) classification error for the quantitative bridge, followed by exact pointwise sign representation; no margin or surrogate norm is introduced.
- Required bridge or simplification obligations: derive (A_\omega=\langle v_\omega,\cdot\rangle) exactly; prove the pointwise pair-error inequality including all zero-score branches; justify the expectation-to-existence conversion under (\mathbb Q_{\mathcal D^{\mathrm{sym}},h}); prove the strict-system equivalence; derive a support-((n+1)) certificate; show every nonpositive certificate inner product is an error because the witness labels are (-s_0); apply the strict threshold without dropping equality; and prove (n\le S\le TS).
- Baseline invariance obligations: preserve the exact source learner and tie label, preserve exact identity-map representation rather than stopping at error (2\varepsilon), preserve the conclusion when (\varepsilon=0), treat (\mathcal H=\varnothing) vacuously, and ensure the final feature law is independent of (\mathcal D,h,\omega).

## Assumption Provenance Objectives

- Primitive conditions: only `assump:antipodal-oddness`, `assump:high-accuracy`, and `assump:universal-sgd-success` are theorem-facing assumptions.
- Derived antisymmetric score: `step_001` proves, from the exact depth-two architecture, that every generated trajectory exports (A_\omega(x)=\langle v_\omega,x\rangle); no property of the SGD recurrence is assumed.
- Derived error-transfer interface: `step_002` proves the pairwise indicator inequality from oddness and the fixed tie convention.
- Derived distribution-wise halfspace certificate: `step_003` combines `step_001`, `step_002`, and universal success on (\mathcal D^{\mathrm{sym}}) to prove existence of a (v) with error at most (2\varepsilon) on the original (\mathcal D).
- Derived strict-separation interface: `step_004` proves that exact identity representation is equivalent to a strict system on the representatives labeled (-s_0).
- Derived finite obstruction: `step_005` proves from infeasibility, rather than assumes, a convex certificate supported on at most (n+1) representatives and the associated uniform-distribution error lower bound.
- Derived exact separator and common map: `step_006` discharges infeasibility using `assump:high-accuracy`; `step_007` exports the common identity map and the point-mass law.
- No good event, recurrence, stability region, local-validity condition, boundedness assertion, or trajectory invariant is needed or hidden in an admissibility package.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: exact structural linearization of a generated score.
- Theorem role: converts every realized nonlinear depth-two aggregate into a homogeneous identity-coordinate score after antipodal subtraction.
- Mechanism source: the direct current-notation identity (\sigma(r)-\sigma(-r)=r) for every real (r), applied to the exact bias-free depth-two source architecture. Thus (f_{a,W}(x)-f_{a,W}(-x)=a^\top Wx=\langle W^\top a,x\rangle), including (Wx=0), and finite summation gives (A_\omega=\langle v_\omega,\cdot\rangle). The source and branch conventions coincide exactly; the ReLU-kink gradient convention affects how the parameters were generated but not this function identity.
- Source-to-claim adequacy: the identity supplies equality of the exact score consumed by `step_002` and `step_003`, not an approximation, tangent feature, frozen feature, or altered-protocol surrogate.
- Residual-to-target adequacy: produced object (A_\omega) and consumed score (x\mapsto\langle v_\omega,x\rangle) are pointwise equal in the theorem's score interface; residual (A_\omega(x)-\langle v_\omega,x\rangle=0) for every (x).
- Key positive/control term or structural source: exact positive-homogeneous ReLU difference and absence of biases at depth two.
- Opposing defect terms: there are no approximation defects. Bias terms or deeper compositions would be uncontrolled, but those regimes are outside the primitive formalized architecture rather than silently discarded.
- Closure/dominance/absorption relation: each iterate contributes zero residual, so their finite sum has zero residual.
- Accumulation behavior / scope compatibility: across the stated finite latter-half index set, the accumulated defect is identically (0), with exact one-term relation (f_t(x)-f_t(-x)=\langle (W^{(t)})^\top a^{(t)},x\rangle).
- Obligation locality classification: `step-local`.
- Noncircular closure status: the primitive architecture and algebra produce the identity before `step_002` or `step_003` consumes it; no linear representation conclusion is assumed.
- Entry-state / first-update stress result: at initialization, after the first update, at a ReLU kink, or when (W^{(t)}) or (a^{(t)}) is zero, the same equality holds; no activation or recurrence property is required first.
- Baseline conclusion preserved: exact score equality is preserved at zero and does not become a small-error or limiting statement.
- Producer-consumer provenance: primitive architecture plus the realized parameters -> `step_001` -> `step_002` and `step_003`.
- Null or boundary regime tested: (Wx=0), (a=0), (W=0), (v_\omega=0), and (T=1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: for architectures with bias or general depth the identity need not hold and the current proof route can fail; the formalized branch explicitly supplies the source.
- Repair route if source is unsupported: None under the current setting; removing depth two or bias-freeness is an idea/theorem-contract change.

### `step_002`

- Step ID: `step_002`
- Claim class: tie-aware error comparison under antipodal oddness.
- Theorem role: transfers source errors of (G_\omega) on an antipodal pair to the homogeneous score (A_\omega).
- Mechanism source: direct sign case analysis under primitive `assump:antipodal-oddness` and the exact fixed (s_0). If (G(x)) correctly predicts (y=h(x)) and (G(-x)) correctly predicts (-y), their allowed weak/strict signs force (G(x)-G(-x)>0) when (y=+1) and (<0) when (y=-1), irrespective of (s_0).
- Source-to-claim adequacy: the contrapositive gives the exact pointwise indicator inequality in the same tie-resolved (0)-(1) loss used by the premise.
- Residual-to-target adequacy: the consumed loss is on (A_\omega) at the original (x); the two producer losses are exactly those of (G_\omega) at (x) and (-x) with labels (h(x)) and (h(-x)). There is no score or metric residual.
- Key positive/control term or structural source: simultaneous correctness forces a strictly signed difference even when one of the two source scores is zero.
- Opposing defect terms: (G(x)=0), (G(-x)=0), or (A(x)=0); each is resolved by the fixed (s_0) case split rather than ignored.
- Closure/dominance/absorption relation: (e_A(x)\le e_G(x)+e_G(-x)) pointwise, hence (\mathcal L_{\mathcal D,h}(A)\le2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G)).
- Accumulation behavior / scope compatibility: the only accumulation is integration over the finite domain; the pointwise nonnegative inequality sums exactly and introduces the explicit factor (2), with no persistent omitted term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: oddness and tie algebra produce the inequality before the approximate-halfspace output is consumed in `step_003`.
- Entry-state / first-update stress result: no iterative mechanism is used. If (A(x)=0) and (h(x)=-s_0), (A) errs; the contrapositive case analysis still forces at least one source error. If (h(x)=s_0), the zero score is correctly not counted.
- Baseline conclusion preserved: the source strict-error and zero-tie convention are used verbatim.
- Producer-consumer provenance: `assump:antipodal-oddness`, the fixed tie definition, and `step_001` -> `step_002` -> `step_003`.
- Null or boundary regime tested: all combinations involving (G(x)=0), (G(-x)=0), (A(x)=0), and both values of (s_0).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without oddness, correctness at (-x) has no opposite-label implication and the transfer can fail; oddness is primitive here.
- Repair route if source is unsupported: None under the current setting; dropping oddness changes the theorem contract.

### `step_003`

- Step ID: `step_003`
- Claim class: expectation-to-existence and distribution-mode transfer with explicit error (2\varepsilon).
- Theorem role: proves that for every ((\mathcal D,h)) some homogeneous identity-coordinate score has (\mathcal D)-error at most (2\varepsilon).
- Mechanism source: primitive `assump:universal-sgd-success` applied to the legal distribution (\mathcal D^{\mathrm{sym}}), followed by `step_001` and `step_002`. It yields
  \[
  \mathbb E_{\omega\sim\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}
  \mathcal L_{\mathcal D,h}(\langle v_\omega,\cdot\rangle)
  \le2\varepsilon.
  \]
- Source-to-claim adequacy: (\mathcal D^{\mathrm{sym}}) is within the universal premise, the target remains the same odd (h), and the initialization, sampling, updates, and aggregate remain exactly the source procedure. Since the nonnegative loss takes finitely many subset-sum values on finite (\mathcal X), at least one realized (v_\omega) has loss at most its expectation bound.
- Residual-to-target adequacy: the produced parameter is the same (v_\omega\in\mathbb R^n) consumed as an identity-map separator; the transfer relation is the exact pointwise comparison from `step_002`, with sole quantitative loss factor (2). No trajectory-dependent feature map becomes theorem-facing.
- Key positive/control term or structural source: universal quantification over all input distributions, including (\mathcal D^{\mathrm{sym}}), and expectation bounded by (\varepsilon).
- Opposing defect terms: the factor (2) from the two antipodal source errors and randomness of (v_\omega); the factor is retained, and randomness is removed only by deterministic existence.
- Closure/dominance/absorption relation: expected target loss (\le2\varepsilon) implies a realization with target loss (\le2\varepsilon); no probability upgrade or union over ((\mathcal D,h)) is claimed.
- Accumulation behavior / scope compatibility: fixed finite (T) is already absorbed into the exact definition of (G_\omega) and (v_\omega); no time-uniform condition or repeated error forcing is used.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the primitive universal learner premise and earlier algebra produce the approximate halfspace separately for each ((\mathcal D,h)) before `step_006` consumes it; exact identity representation is not assumed.
- Entry-state / first-update stress result: if a realization has (v_\omega=0), its tie-resolved loss is evaluated normally; the existence argument may select another realization. When (\varepsilon=0), the expectation bound forces a realization of zero (\mathcal D)-error.
- Baseline conclusion preserved: the exact learner, expectation mode, and fixed-horizon aggregate are unchanged; only a deterministic existential consequence is extracted.
- Producer-consumer provenance: `assump:universal-sgd-success` + `step_001` + `step_002` -> `step_003` -> `step_006`.
- Null or boundary regime tested: (\varepsilon=0), (v_\omega=0), nonsymmetric (\mathcal D), point-mass (\mathcal D), and (T=1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: success only for selected distributions would not license (\mathcal D^{\mathrm{sym}}); the universal premise explicitly excludes that failure.
- Repair route if source is unsupported: None.

### `step_004`

- Step ID: `step_004`
- Claim class: exact tie-resolved representation-to-strict-system equivalence.
- Theorem role: identifies the precise finite feasibility problem whose failure can be certified.
- Mechanism source: primitive `assump:antipodal-oddness` and the fixed tie rule. For fixed (h), (Q_h=\{q\in\mathcal X:h(q)=-s_0\}) contains exactly one member of each antipodal pair. On (Q_h), exact prediction is equivalent to (h(q)\langle w,q\rangle>0), since equality predicts (s_0=-h(q)).
- Source-to-claim adequacy: strict feasibility on (Q_h) implies correct prediction on (Q_h); oddness and homogeneity give the opposite nonzero score and correct opposite label on every (-q). Conversely any exact homogeneous representation must be strict on (Q_h).
- Residual-to-target adequacy: the produced strict system uses the same score (\langle w,x\rangle) and same identity-map target consumed by the theorem. Passing from (q) to (-q) is exact: (\langle w,-q\rangle=-\langle w,q\rangle), with zero residual.
- Key positive/control term or structural source: selecting the label (-s_0) makes every equality a classification error and forces strictness.
- Opposing defect terms: a zero score could otherwise be correct on label (s_0); choosing one representative per pair with label (-s_0) removes that ambiguity without changing the class.
- Closure/dominance/absorption relation: all strict inequalities on (Q_h) are equivalent to exact representation on (Q_h\cup(-Q_h)=\mathcal X).
- Accumulation behavior / scope compatibility: finite pointwise conjunction over (2^{n-1}) representatives; there is no iterative defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: (Q_h) is produced directly from the primitive target and tie label before infeasibility is tested in `step_005`; no separator is assumed.
- Entry-state / first-update stress result: N/A because this is not a recursive or initialized process; the relevant boundary state is the score tie, which is explicitly an error on every (q\in Q_h).
- Baseline conclusion preserved: exact pointwise identity-map representation, including the source tie convention, is preserved rather than replaced by a margin assumption.
- Producer-consumer provenance: `assump:antipodal-oddness` + fixed (s_0) -> `step_004` -> `step_005` and `step_006`.
- Null or boundary regime tested: (\langle w,q\rangle=0), either value of (s_0), and (n=1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: choosing representatives without fixing their label to (-s_0) would make equality inconsistently count as error; the present construction supplies the source exactly.
- Repair route if source is unsupported: None.

### `step_005`

- Step ID: `step_005`
- Claim class: finite structural obstruction, support bound, and uniform-distribution error lower bound.
- Theorem role: turns failure of exact identity separation into one distribution on at most (n+1) points that defeats every homogeneous halfspace.
- Mechanism source: a self-contained current-notation Gordan/Caratheodory derivation in Euclidean (\mathbb R^n). Set (Z_h=\{h(q)q:q\in Q_h\}). If no (w) has positive inner product with every (z\in Z_h), minimize (|p|) over the compact convex hull of (Z_h). If (p\ne0), minimality along each segment from (p) to (z) gives (\langle p,z\rangle\ge|p|^2>0), a forbidden strict separator; hence (p=0). A minimal convex representation (0=\sum_{i=1}^k\alpha_i z_i), (alpha_i>0), has (k\le n+1), since (k>n+1) gives an affine dependence that preserves both the vector sum and coefficient sum while eliminating one positive coefficient.
- Source-to-claim adequacy: these source objects are exactly the current signed cube vectors, in the same Euclidean inner product as the strict system. The argument proves both the alternative and support count and has no unverified cited-result interface. For any (w), the weighted zero identity forces some (\langle w,z_i\rangle\le0).
- Residual-to-target adequacy: (z_i=h(q_i)q_i), so (\langle w,z_i\rangle=h(q_i)\langle w,q_i\rangle\le0) is precisely a tie-resolved error on (q_i), because (h(q_i)=-s_0). Under the uniform distribution (\mathcal D_h^\star) on the (k) representatives, the consumed loss is at least (1/k\ge1/(n+1)), with no surrogate metric or residual.
- Key positive/control term or structural source: the normalized nonnegative convex coefficients and the dimension-(n) affine support bound.
- Opposing defect terms: non-strict inner products, zero coefficients, duplicated points, and possibly large witness support. Zero coefficients are pruned, a subset representation removes duplicates, nonpositive values are errors by the (-s_0) label choice, and affine dependence yields (k\le n+1).
- Closure/dominance/absorption relation: (\sum_i\alpha_i\langle w,z_i\rangle=0) excludes all terms being positive, so at least one of the (k) uniform atoms is misclassified and (\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle)\ge1/k\ge1/(n+1)).
- Accumulation behavior / scope compatibility: the certificate is a finite convex sum with coefficients of controlled nonnegative sign and total budget (1); the only counting cost is the exact finite support (k\le n+1).
- Obligation locality classification: `step-local`.
- Noncircular closure status: infeasibility from `step_004` directly produces the convex certificate; the lower bound is proved before `step_006` invokes the approximate-halfspace interface. No lower bound or exact representation is assumed.
- Entry-state / first-update stress result: N/A for dynamics. At the null separator (w=0), every witness score is zero and every witness label is (-s_0), so the error is (1), stronger than the required (1/k).
- Baseline conclusion preserved: the certificate rules out exact separation under the exact tie convention and supplies a distribution-level lower bound without imposing a margin.
- Producer-consumer provenance: `step_004` infeasibility -> `step_005` certificate and (\mathcal D_h^\star) -> `step_006` contradiction.
- Null or boundary regime tested: (w=0), (\langle w,z_i\rangle=0), (k=1), (k=n+1), and (n=1). A one-point zero certificate cannot actually occur because (z_i\ne0), but the lower-bound interface remains valid if considered formally.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without nonnegative coefficients or the support bound, the uniform error lower bound or the (1/(n+1)) threshold would not follow. Both are derived directly.
- Repair route if source is unsupported: None.

### `step_006`

- Step ID: `step_006`
- Claim class: high-accuracy exactification and theorem-critical contradiction.
- Theorem role: proves strict feasibility, hence an exact identity separator, for each fixed (h).
- Mechanism source: derived upper bound `step_003`, derived infeasibility lower bound `step_005`, and primitive `assump:high-accuracy`.
- Source-to-claim adequacy: if the strict system for (h) were infeasible, `step_005` would provide (\mathcal D_h^\star) for which every (w) has error at least (1/(n+1)), while `step_003` applied to that exact distribution provides a (w) with error at most (2\varepsilon<1/(n+1)).
- Residual-to-target adequacy: both bounds concern the same target (h), same distribution (\mathcal D_h^\star), same identity-coordinate homogeneous score, and same tie-resolved error. There is no distribution, object, norm, or probability residual.
- Key positive/control term or structural source: the strict numerical gap (1/(n+1)-2\varepsilon>0).
- Opposing defect terms: the factor (2) from antipodal error transfer and the worst-case support (n+1); both remain explicit and are controlled exactly by the primitive threshold.
- Closure/dominance/absorption relation: (\inf_w\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle)\le2\varepsilon<1/(n+1)\le\inf_w\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle)) is impossible.
- Accumulation behavior / scope compatibility: no repeated or limiting scope; one finite contradiction is established independently for each (h).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003` legally produces the upper bound and `step_005` legally produces the conditional lower bound before `step_006`; strict feasibility is the conclusion, not an input.
- Entry-state / first-update stress result: at (\varepsilon=0), `step_003` gives zero error on the witness distribution and the contradiction is immediate. A selected (v=0) cannot evade the lower bound because it errs on every witness atom.
- Baseline conclusion preserved: the output is exact strict feasibility and exact representation, not merely an error-(2\varepsilon) surrogate.
- Producer-consumer provenance: `assump:high-accuracy` + `step_003` + `step_005` -> `step_006` -> `step_007` and final assembly.
- Null or boundary regime tested: (\varepsilon=0), (2\varepsilon) approaching but strictly below (1/(n+1)), (v=0), and (k<n+1).
- Target conclusion false or theorem-critical obstruction present if source vanishes: at equality or above the witness threshold, the contradiction need not hold and exact separation can remain false; the strict primitive threshold excludes that regime.
- Repair route if source is unsupported: None under the current setting; weakening the accuracy condition would require a different idea or an approximate target.

### `step_007`

- Step ID: `step_007`
- Claim class: exact common-feature closure and structural dimension chain.
- Theorem role: converts target-wise strict separators into one common deterministic feature map and the stated confident/deterministic bounds.
- Mechanism source: `step_006`, the deterministic identity map, the definitions of (\operatorname{dc}) and (\operatorname{dc}^{1/2}), and the primitive integer identities (S=m(n+1)), (m,T\ge1).
- Source-to-claim adequacy: `step_006` gives a separator (w_h) for every (h), while (\varphi_{\mathrm{id}}) is the same map for all (h,\mathcal D). A point mass on that map therefore has exact-representation probability (1). Also (n\le m(n+1)=S\le TS).
- Residual-to-target adequacy: the produced map and the map consumed by both dimension definitions are exactly (\varphi_{\mathrm{id}}); scores remain (\langle w_h,x\rangle), so every residual is zero.
- Key positive/control term or structural source: one common identity map and target-specific separators from `step_006`.
- Opposing defect terms: possible dependence on (\mathcal D), the trajectory, or (h) in the map, and the empty-class branch. The identity map has none of those dependencies; for (\mathcal H=\varnothing) all representation quantifiers are vacuous.
- Closure/dominance/absorption relation: (\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)\le n\le S\le TS), with each inequality direct and no hidden constant.
- Accumulation behavior / scope compatibility: no repeated scope; the probability-one event under a point mass is exact.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` produces all target separators before the fixed identity map is certified; neither dimension bound was assumed.
- Entry-state / first-update stress result: no dynamics are consumed. In the empty-class state the conclusion is vacuous; at probability-one point-mass entry the exact representation event already holds and needs no sampling.
- Baseline conclusion preserved: exact deterministic representation and confident success probability one are both stated; neither is weakened to high probability or approximate error.
- Producer-consumer provenance: `step_006` + setting definitions and parameter count -> `step_007` -> final assembly.
- Null or boundary regime tested: (\mathcal H=\varnothing), (m=1), (T=1), (n=1), and either tie label.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the separators from `step_006`, the identity map need not represent the class; they are legally produced under the current assumptions.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Exact homogeneous score (A_\omega(x)=\langle v_\omega,x\rangle) | `step_001` | Bias-free depth-two form, realized (a^{(t)},W^{(t)}), exact ReLU identity | Every per-iterate residual is exactly zero; no uncontrolled approximation or trajectory defect | Produced (A_\omega) and consumed identity-coordinate score are pointwise equal; residual (0) in the score interface | Sum (f_t(x)-f_t(-x)=\langle(W^{(t)})^\top a^{(t)},x\rangle) over the finite stated range | Exact algebra; no positive margin needed | `step_002`, `step_003` | None |
| Pair-error inequality and (\mathcal L_{\mathcal D,h}(A)\le2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G)) | `step_002` | Oddness, fixed (s_0), exact definitions of (A,\mathcal D^{\mathrm{sym}}) | Zero-score branches are controlled by explicit case analysis; the only cost is the retained factor (2) | Same target and tie-resolved loss; (x,-x) terms integrate exactly to the symmetrized distribution | (e_A(x)\le e_G(x)+e_G(-x)), then integrate | Strict sign forced by simultaneous correctness on opposite labels | `step_003` | None |
| For every ((\mathcal D,h)), some (v\in\mathbb R^n) has error (\le2\varepsilon) | `step_003` | Universal success on (\mathcal D^{\mathrm{sym}}), `step_001`, `step_002` | Randomness is removed by existence; factor (2) remains explicit; no uncontrolled distribution or trajectory term | Produced (v) is directly consumed with identity features on the original (\mathcal D); exact transfer inequality supplies the only residual factor | Expected error (\le2\varepsilon) implies one realized error (\le2\varepsilon) | Primitive learner error bound (\varepsilon) | `step_006` | None |
| Strict-system characterization on (Q_h) | `step_004` | Oddness and fixed tie label; homogeneous score identity | Ties on label (s_0) could be correct, but every chosen (q) has label (-s_0), so all ties are controlled as errors | Strict system and exact identity-map target use the identical score; antipodal score residual is zero | Strict correctness on (Q_h) iff exact correctness on all antipodal pairs | Representative label (-s_0) supplies strictness | `step_005`, `step_006` | None |
| Support-(k\le n+1) convex certificate and uniform error lower bound (1/k\ge1/(n+1)) | `step_005` | Infeasible strict system, finite signed vectors in (\mathbb R^n), direct minimum-norm and affine-dependence derivations | Nonpositive terms, zero coefficients, and large support are handled respectively by tie counting, pruning, and support reduction; no uncontrolled defect | Signed inner product is exactly target-score product; on labels (-s_0), nonpositive means error in the same metric | Convex weighted sum (0) forces one nonpositive term; uniform measure pays exactly one of at most (n+1) atoms | Nonnegative coefficients summing to (1) and ambient dimension (n) | `step_006` | None |
| Exact separator for every (h) | `step_006` | Approximate upper bound, obstruction lower bound, strict high-accuracy gap | Factor (2) and support (n+1) are fully exposed; no uncontrolled term | Upper and lower bounds concern the same (h,\mathcal D_h^\star,w), and tie-resolved loss | (2\varepsilon<1/(n+1)) contradicts infeasibility | Primitive `assump:high-accuracy` | `step_007`, final assembly | None |
| Common identity map, point-mass law, and full dimension chain | `step_007` | Separators from `step_006`, dimension definitions, (S=m(n+1)), (m,T\ge1) | Map dependence defects are absent; empty class is vacuous; no probability or score residual | Produced and consumed feature map are exactly (\varphi_{\mathrm{id}}); pointwise score residual (0) | Point mass gives probability (1); (n\le S\le TS) | Exact separator output and positive integer parameters | Final assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Linearized trajectory score (A_\omega=\langle v_\omega,\cdot\rangle) | `step_001`, direct exact ReLU derivation under the source depth-two convention | `step_002`, `step_003` | Supplies homogeneous identity-coordinate candidates | primitive architecture -> `step_001` -> `step_002`/`step_003` | derived | None |
| Tie-aware pair-error comparison | `step_002`, direct oddness/tie derivation | `step_003` | Transfers source expected error to the original-distribution homogeneous loss | primitive oddness + `step_001` -> `step_002` -> `step_003` | derived | None |
| Distribution-wise (2\varepsilon)-accurate homogeneous separator | `step_003` | `step_006` | Contradicts any finite exact-separation witness distribution | universal learner + `step_001` + `step_002` -> `step_003` -> `step_006` | derived | None |
| Representative set (Q_h) and strict-system equivalence | `step_004` | `step_005`, `step_006` | Makes identity exactification and tie counting precise | primitive oddness/tie rule -> `step_004` -> `step_005`/`step_006` | derived | None |
| Support-((n+1)) certificate distribution (\mathcal D_h^\star) and lower bound | `step_005`, conditional on infeasibility and proved by current-notation convex geometry | `step_006` | Supplies the exact contradiction distribution and threshold | `step_004` infeasibility -> `step_005` -> `step_006` | derived | None |
| Exact target separator (w_h) for every (h) | `step_006` | `step_007`, final assembly | Establishes identity-map representation | `step_003` + `step_004` + `step_005` + high accuracy -> `step_006` -> `step_007` | derived | None |
| Common identity map and probability-one feature law | `step_007` | Final assembly | Proves both dimension notions and the (n\le S\le TS) chain | `step_006` -> `step_007` -> final assembly | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | For every realized trajectory, prove (A_\omega(x)=\langle v_\omega,x\rangle) for all (x). | None | Primitive architecture in `setting.md`; no generated invariant | Preserve the exact latter-half indexing and cover ReLU-kink/zero cases without using SGD stability. | Direct current-notation identity (\sigma(r)-\sigma(-r)=r) and finite linear summation. | Exact homogeneous score interface. | Structural exactness: zero residual, fixed finite (T). | PENDING |
| `step_002` | Prove (e_{A_\omega,h}(x)\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x)) and hence (\mathcal L_{\mathcal D,h}(A_\omega)\le2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)). | `step_001` | Primitive `assump:antipodal-oddness`; fixed tie convention | Check every zero-score branch and retain strict source error counting. | Direct two-label/two-tie-sign case analysis and change of variables (x\mapsto-x). | Exact pair-error transfer with factor (2). | Numerical-error objective: the only loss is the explicit factor (2). | PENDING |
| `step_003` | For every (\mathcal D,h), prove there exists (v\in\mathbb R^n) with (\mathcal L_{\mathcal D,h}(\langle v,\cdot\rangle)\le2\varepsilon). | `step_001`, `step_002` | Primitive `assump:universal-sgd-success`, primitive `assump:antipodal-oddness`; derived score and transfer interfaces | Preserve universal quantifiers and use (\mathcal D^{\mathrm{sym}}) only as a legal learner invocation, not as a feature-law dependency. | Apply the exact expectation premise and a finite-domain expectation-to-existence argument. | Distribution-wise approximate homogeneous separator. | Fixed-horizon/numerical objective: expectation (\varepsilon) -> deterministic error (2\varepsilon), no hidden terms. | PENDING |
| `step_004` | For fixed (h), prove (Q_h=\{q:h(q)=-s_0\}) selects one point per antipodal pair and that exact identity representation is equivalent to (h(q)\langle w,q\rangle>0) for all (q\in Q_h). | None | Primitive `assump:antipodal-oddness`; fixed tie convention | Make equality a counted error on every certificate representative and transfer strictness to antipodes. | Direct homogeneity, oddness, and tie-label case analysis. | Exact strict-system interface. | Exact specialization objective: no margin magnitude is assumed, only strict sign. | PENDING |
| `step_005` | If the strict system from `step_004` is infeasible, prove a certificate (0=\sum_{i=1}^k\alpha_i h(q_i)q_i) with (alpha_i>0), (\sum_i\alpha_i=1), (k\le n+1), and show every (w) has error at least (1/k\ge1/(n+1)) under the uniform law on (q_1,\ldots,q_k). | `step_004` | Derived strict-system interface; no additional setting assumption | Establish the alternative, support size, and strict tie counting in the exact current convention. | Self-contained minimum-norm convex-hull argument plus minimal-support affine-dependence pruning (current-notation Gordan/Caratheodory proof). | Finite witness distribution and universal halfspace lower bound. | Structural/numerical objective: explicit support (n+1) and lower bound (1/(n+1)). | PENDING |
| `step_006` | Use `step_003` on the witness distribution from `step_005` and (2\varepsilon<1/(n+1)) to rule out infeasibility; conclude an exact identity separator exists for every (h). | `step_003`, `step_004`, `step_005` | Primitive `assump:high-accuracy`; derived approximate and obstruction interfaces | Compare the same distribution, target, score class, and tie-resolved metric; preserve strictness of the numerical gap. | Direct contradiction and the equivalence from `step_004`. | Exact separators (w_h) for all targets. | Rate specialization bridge: (2\varepsilon<1/(n+1)) turns approximate error into exact separation. | PENDING |
| `step_007` | Fix (\varphi_{\mathrm{id}}(x)=x), prove it represents all (h), show its point-mass law succeeds with probability one, and derive (\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)\le n\le S\le TS), including (\mathcal H=\varnothing). | `step_006` | Primitive integer setup in `setting.md`; derived exact separators | Preserve the quantifier order and ensure the common map, rather than (w_h), is independent of the target and distribution. | Direct application of both dimension definitions and (S=m(n+1)), (m,T\ge1). | Final formalized theorem. | Structural-parameter objective: exact constant-one chain, probability one, no hidden dependence. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points backward. `step_001` and `step_004` are independent primitive-algebra branches. `step_002` consumes only `step_001`; `step_003` consumes `step_001` and `step_002`; `step_005` consumes the strict-system interface from `step_004`; `step_006` is the first point where the approximate branch and obstruction branch meet; and `step_007` consumes only the exact separators from `step_006`. Final assembly first handles (\mathcal H=\varnothing) vacuously, then for each (h) composes `step_001` -> `step_002` -> `step_003` and `step_004` -> `step_005`, closes exactness in `step_006`, and invokes the common identity map in `step_007`.

No generated trajectory property is consumed before `step_001` produces it, no certificate distribution is consumed before `step_005` constructs it, and the final point-mass feature law is not confused with the trajectory-dependent vector used only in `step_003`.

## Blockers

None for the exact formalized specialized goal. The direct (n+1)-witness threshold does not exactify the bound when (2\varepsilon\ge1/(n+1)), and the antisymmetrization identity is not available in this form for general depth or non-odd targets; those are explicitly excluded source gaps, not hidden future proof-step obligations.
