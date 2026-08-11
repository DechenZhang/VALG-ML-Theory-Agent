# Proof Sketch

## Formalized Setting

Use the approved setting in `perspective_3/idea_1/setting.md` without modification. In particular,

\[
X_{k,N}=[k]\times[N],\qquad
C_{k,N}=\{c_{\boldsymbol t}:c_{\boldsymbol t}(i,x)=\mathbf 1\{x\ge t_i\},\ \boldsymbol t\in[N+1]^k\},
\]

the learner has the full improper output space \(\{0,1\}^{X_{k,N}}\), samples have fixed size \(n\), and privacy is central replacement-adjacency \((\varepsilon,\delta)\)-DP. Put

\[
L_N=\log_2^*N,\qquad M=m_{n,k}=\max\{8,\lceil4n/k\rceil\}.
\]

The only theorem-facing technical assumptions are `assump:candidate-regime`, `assump:central-dp`, and `assump:distribution-free-realizable-pac`. Hard priors, good events, symmetry, decoder properties, overflow bounds, and coupling properties are not assumptions.

## Formalized Goal

Prove that there are absolute constants \(a,c_\delta,\varepsilon_0>0\), \(\alpha_0,\beta_0\in(0,1/2)\), and \(N_0\ge2\) such that every candidate satisfying the three approved assumptions obeys

\[
n\ge a k\log_2^*N.
\]

The claim is pointwise in \((k,N,n,\varepsilon,\delta,A)\), applies to arbitrary randomized, computationally unbounded, improper \(A\), and uses population 0-1 risk. On \(k=r\), \(N=\operatorname{Tow}_2(r)\), it must yield \(n=\Omega(r^2)=\Omega(\operatorname{VC}(C)\log_2^*\operatorname{LD}(C))\).

## Sketch Identity

- Sketch attempt: 1
- Mode: initial
- Search mode: `OPEN`
- Progress type inherited from `setting.md`: `material_partial`
- Selected framework: Framework 1 of `technical_survey.md`, the unrestricted one-block threshold lower bound followed by a current-notation finite minimax argument and a one-use hidden-coordinate simulation.

## Proof Roadmap

The external hard core is Alon, Livni, Malliaris, and Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949v3, Section 2, theorem titled “Thresholds are not privately learnable” (actual source label `thm:main`), with its PAC and privacy definitions in Section 3. Its exact usable interface is: a randomized, possibly improper, replacement-DP learner using \(m\) i.i.d. examples on a finite ordered domain of size \(N\), accurate with error/failure \((1/16,1/16)\) for every realizable threshold distribution, privacy \(\varepsilon=0.1\), and \(\delta=O(1/(m^2\log m))\), must have \(m=\Omega(\log^*N)\). Thus there are source constants \(b_*,d_*>0\) and \(N_*\) such that the implication holds with

\[
m\ge b_*\log_2^*N\quad\text{whenever}\quad
N\ge N_*,\ m\ge8,\ \delta\le \frac{d_*}{m^2\log m}.
\]

Changing \(\{\pm1\}\) to \(\{0,1\}\), reversing the order or complementing labels if necessary, and order-identifying the source domain with \([N]\) preserve risk, i.i.d. sampling, arbitrary outputs, and replacement adjacency. The source threshold family embeds in \(T_N=\{\tau_t:t\in[N+1]\}\). The theorem does **not** output a hard instance, prior, expected-loss game, minimax statement, tensorization, decoder, exchangeability relation, overflow estimate, privacy coupling, or numerical values for \(b_*,d_*,N_*\); every such item is generated below.

In the contradiction regime \(M<b_*L_N\), failure of source PAC accuracy gives every one-block private learner an instance with expected loss greater than

\[
\eta=(1/16)(1/16)=2^{-8}.
\]

A finite-dimensional compact minimax argument then produces a finite prior \(\mu_{N,M}\) hard for **all** one-block private randomized kernels at the source privacy cap. Given a product learner \(A\), a simulator draws \(J\sim\operatorname{Unif}[k]\), places its unknown one-block input at tag \(J\), draws the other block instances from \(\mu_{N,M}\), and draws the \(n\) global tags first. If their hidden-tag count \(U\) exceeds \(M\), the simulator returns a fixed hypothesis without calling \(A\); otherwise it consumes the first \(U\) input rows once each. This gives a pathwise one-input-row-to-one-global-row replacement coupling. Coupling to an ideal i.i.d. product experiment costs at most \(\Pr(U>M)<2^{-9}\). In the ideal experiment, \(J\) is independent of the i.i.d. instance vector, so restriction of an arbitrary \(h\) to tag \(J\) has expected risk exactly equal to the product population risk averaged across tags. Hardness therefore produces a fixed product instance on which \(A\)'s expected risk is bounded below, contradicting the expected-risk consequence of its fixed-instance PAC guarantee. A final scalar bridge chooses constants and specializes to the tower diagonal.

## Rate Objectives

### Objective R1: exact tagged-product lower bound

- Objective type: structural-parameter explicit, fixed-size nonasymptotic lower-bound implication.
- Exposed variables: \(k,N,n,\varepsilon,\delta\), together with \(M=m_{n,k}\), \(L_N=\log_2^*N\), \(\operatorname{VC}\), \(\operatorname{LD}\), and \(|C|\).
- Hidden constants may depend on: only the absolute constants \(b_*,d_*,N_*\) furnished by the cited one-block theorem and the once-chosen fixed \(\alpha_0,\beta_0,\varepsilon_0\).
- Hidden constants may not depend on: \(k,N,n,\varepsilon,\delta\), a hard instance, the learner, or simulator randomness.
- Fixed quantities: source and PAC constants are chosen once before quantifying over candidates.
- Probability mode: the theorem implication is deterministic; PAC probability is over an i.i.d. sample and learner randomness; minimax and simulator calculations are in expectation and are converted back to a fixed instance before contradiction.
- Horizon mode: fixed sample sizes \(n\) and \(M\); no stopping time, expected sample size, asymptotic-in-\(n\), or all-time claim.
- Norm mode: population 0-1 risk under the exact fixed distribution in question.
- Required bridge or simplification obligations: source-constant wrapper (`step_002`); expected-loss conversion (`step_003`); finite hard prior (`step_004`); scalar and candidate-\(\delta\) calibration (`step_005`); overflow (`step_009`); ideal/actual coupling (`step_011`); exact DP preservation (`step_012`); fixed-instance extraction (`step_014`); final contradiction (`step_015`).
- Baseline invariance obligations: preserve the source unrestricted one-block interface; use no proper projection; recover the ideal simulation exactly on \(U\le M\); preserve all-zero/all-one threshold members; and handle \(k=2\), \(k=3\), \(n<k\), and \(M=8\) without changing the theorem.

### Objective R2: tower-diagonal specialization

- Objective type: structural-parameter explicit asymptotic specialization.
- Exposed variables: \(r\), with \(k=r\), \(N=\operatorname{Tow}_2(r)\), and the induced VC, LD, and cardinality.
- Hidden constants may depend on: only the constants allowed in R1.
- Hidden constants may not depend on: \(r\).
- Fixed quantities: the tower convention and base-two iterated logarithm in `setting.md`.
- Probability mode: inherited deterministic implication from R1.
- Horizon mode: asymptotic as \(r\to\infty\), after the fixed \(N_0\) threshold.
- Norm mode: inherited population 0-1 risk.
- Required bridge or simplification obligations: exact combinatorial identities (`step_001`) and explicit tower arithmetic (`step_016`), with no suppressed change from \(\log\) to \(\log^*\).
- Baseline invariance obligations: retain \(\operatorname{VC}=r\), \(\operatorname{LD}=r\operatorname{Tow}_2(r-1)\), \(\log_2^*N=r\), \(\log_2^*\operatorname{LD}=\Theta(r)\), and \(\log|C|=\Theta(r\operatorname{Tow}_2(r-1))\).

## Assumption Provenance Objectives

- The source hard regime \(M<b_*L_N\) is a derived scalar condition, produced in `step_005` from the negation of the target and `assump:candidate-regime`; it is not theorem-facing.
- The one-block expected-loss lower bound is derived in `step_003` from the cited high-probability theorem.
- The algorithm-independent finite prior \(\mu_{N,M}\) is a derived object produced in `step_004`; no later step may choose it after seeing the simulator.
- The product instance vector and hidden coordinate are analysis-side random objects produced in `step_008`; PAC is first applied pointwise to every fixed vector in `step_006`.
- The law \(U\sim\operatorname{Bin}(n,1/k)\) and the overflow certificate are derived in `step_009`.
- The executable simulator and its one-use property are derived in `step_010`; the ideal/actual equality off overflow is derived in `step_011`.
- The DP guarantee of the simulator is a derived property proved from `assump:central-dp` in `step_012`; adjacency preservation is not assumed.
- The average-risk lower bound is derived in `step_013`, and the theorem-facing fixed hard instance is extracted in `step_014`; the final theorem never assumes a random hard instance or averaged PAC premise.

## Mechanism-Source And Boundary Stress

### step_001

- Step ID: `step_001`
- Claim class: exact structural lower and upper identities.
- Theorem role: identifies the public VC/LD/cardinality scales and supports R2.
- Mechanism source: direct current-notation derivation from the displayed class definition; threshold order forbids shattering two points on one tag, binary-search trees give one-block LD, and disjoint-tag online mistake bounds add.
- Source-to-claim adequacy: the one-block class has exactly \(N+1\) distinct cuts, VC one, and LD \(\lfloor\log_2(N+1)\rfloor\); concatenating shattered trees gives the product LD lower bound, while running one optimal mistake-bound strategy per tag gives the matching upper bound.
- Residual-to-target adequacy: N/A; all identities concern the exact class consumed by the theorem.
- Key positive/control term or structural source: independent threshold parameters across disjoint tags.
- Opposing defect terms: possible duplicate parameters, endpoint degeneracy, or nonadditivity of LD.
- Closure/dominance/absorption relation: distinct adjacent cuts settle injectivity; the per-tag mistake count sums to at most \(k\lfloor\log_2(N+1)\rfloor\).
- Accumulation behavior / scope compatibility: finite sum over exactly \(k\) tags; each mistake is charged to one tag's finite mistake budget.
- Obligation locality classification: `step-local`.
- Noncircular closure status: direct class-definition proof; consumed by `step_016` and final assembly.
- Entry-state / first-update stress result: N/A; no recursive generated trajectory.
- Baseline conclusion preserved: \(t=1\) is all one and \(t=N+1\) is all zero; both remain distinct members and witness one-point label flexibility.
- Producer-consumer provenance: producer `step_001`; consumers `step_016` and final theorem interpretation.
- Null or boundary regime tested: \(k=2\), \(N=N_0\), and both endpoint thresholds.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without per-tag independence, VC/LD additivity can fail.
- Repair route if source is unsupported: blocker at `step_001`; no target-preserving substitute identity is allowed.

### step_002

- Step ID: `step_002`
- Claim class: cited unrestricted one-block lower-bound wrapper.
- Theorem role: sole external lower-bound source.
- Mechanism source: Alon–Livni–Malliaris–Moran, arXiv:1806.00949v3, Section 2, theorem “Thresholds are not privately learnable” (`thm:main`), with Section 3 definitions.
- Source-to-claim adequacy: source objects \(X,m,D,h\) map to \([N],M,Q^{\tau_t},g\); hypotheses are arbitrary, samples are fixed-size i.i.d., loss is population 0-1, and adjacency is one-example replacement. Relabeling and order reversal are isometries for loss and adjacency. The source family is a subclass of \(T_N\). Its hypotheses are exactly discharged later by `step_005` and `step_012`.
- Residual-to-target adequacy: the produced conclusion concerns one-block risk on the same \(Q,t\) consumed by `step_003`; there is no surrogate metric. The only wrapper residual is the base/log convention, absorbed into fixed \(b_*,d_*,N_*\).
- Key positive/control term or structural source: source theorem's \(\Omega(\log^*N)\) impossibility for arbitrary improper threshold learners.
- Opposing defect terms: fixed \(\varepsilon=0.1\), implicit constants, \(\log m\) denominator, label/orientation conventions, and possible endpoint mismatch.
- Closure/dominance/absorption relation: choose \(\varepsilon_0\le0.1\), \(c_\delta\le d_*\), \(M\ge8\), and \(N_0\ge N_*\); enlarging the threshold target class and strengthening privacy preserve the source implication.
- Accumulation behavior / scope compatibility: fixed one-block sample size only; no composition or repeated source use.
- Obligation locality classification: `step-local`.
- Noncircular closure status: external theorem is fixed before the prior and simulator; dependency `step_002 -> step_003 -> step_004`.
- Entry-state / first-update stress result: source includes arbitrary all-same-label realizable distributions; the lower bound need not put mass on endpoints, and adding endpoints cannot weaken it.
- Baseline conclusion preserved: unrestricted improper one-block threshold lower bound, not the older proper interior-point lower bound.
- Producer-consumer provenance: producer cited theorem via `step_002`; consumers `step_003` and `step_005`.
- Null or boundary regime tested: \(M=8\), \(N=N_0\), \(\varepsilon<0.1\), and \(\delta\) strictly smaller than the source cap.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if \(M\ge b_*L_N\) or \(\delta\) exceeds the source regime, the hard prior is unsupported.
- Repair route if source is unsupported: exact blocker; do not defer source identity or interface discovery to a proof step.

### step_003

- Step ID: `step_003`
- Claim class: high-probability hardness to expected-loss game conversion.
- Theorem role: provides a linear payoff suitable for minimax.
- Mechanism source: direct contrapositive of `step_002` plus \(0\le R_Q\le1\).
- Source-to-claim adequacy: failure of source accuracy means some \((t,Q)\) has \(\Pr(R_Q>1/16)>1/16\), hence \(\mathbb E R_Q>1/256=\eta\).
- Residual-to-target adequacy: the expected loss is the exact one-block population loss later incurred by the restricted hypothesis.
- Key positive/control term or structural source: the product of the source error and failure constants.
- Opposing defect terms: a high-probability statement cannot yield expected loss \(1/16\); only \(1/256\) is claimed.
- Closure/dominance/absorption relation: \(R_Q\mathbf1\{R_Q>1/16\}>(1/16)\mathbf1\{R_Q>1/16\}\).
- Accumulation behavior / scope compatibility: one expectation; no accumulated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: derived solely from `step_002`, before minimax.
- Entry-state / first-update stress result: deterministic learners and randomized learners are both kernels in the same argument.
- Baseline conclusion preserved: exact source accuracy/failure constants are retained in \(\eta\).
- Producer-consumer provenance: producer `step_003`; consumer `step_004`.
- Null or boundary regime tested: risk zero on an easy instance does not matter because the supremum is over all realizable \((t,Q)\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without source failure, the game value can be zero.
- Repair route if source is unsupported: blocker inherited from `step_002`.

### step_004

- Step ID: `step_004`
- Claim class: finite compact minimax hard-prior construction.
- Theorem role: produces a prior fixed before the simulated learner and removes algorithm-dependent hard-instance circularity.
- Mechanism source: direct finite-dimensional kernel representation, compactness, bilinear minimax/separation, and Caratheodory finite support.
- Source-to-claim adequacy: the DP learner set is a nonempty compact convex polytope in finitely many kernel coordinates; \([N+1]\times\Delta([N])\) is compact; the loss is continuous in \((t,Q)\) and affine in the kernel. `step_003` makes the compact minimum of the worst-instance loss strictly larger than \(\eta\). Minimax selects one mixed adversary hard for every kernel, and its payoff coefficient lies in a finite-dimensional convex hull, hence has a finite representation.
- Residual-to-target adequacy: the prior lower-bounds the same expected risk \(\ell_M(B;t,Q)\); there is no discretization or approximation residual.
- Key positive/control term or structural source: the strict compact game value \(v_{N,M}>\eta\).
- Opposing defect terms: continuum of \(Q\), randomized algorithms, all-event DP constraints, and apparent dependence of the simulator on the prior.
- Closure/dominance/absorption relation: compact minimax reverses `inf learner / sup instance`; finite support represents the optimizing payoff coefficient exactly. The prior is therefore public and hard even for algorithms whose code uses it.
- Accumulation behavior / scope compatibility: finite-dimensional convex combination; no repeated-scope defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_003 -> step_004 -> step_010`; the prior is produced before and independently of `step_010`.
- Entry-state / first-update stress result: constant-output kernels show the DP polytope is nonempty; boundary and point-mass \(Q\)'s are included by compactness.
- Baseline conclusion preserved: hard prior applies to arbitrary improper randomized one-block learners.
- Producer-consumer provenance: producer `step_004`; consumers `step_006`, `step_008`, `step_010`, and `step_013`.
- Null or boundary regime tested: nonunique threshold representations under a point-mass \(Q\) do not change the labeled-law or risk payoff.
- Target conclusion false or theorem-critical obstruction present if source vanishes: an algorithm-dependent instance chosen after `step_010` would be circular and unusable.
- Repair route if source is unsupported: `sketch/interface defect`; use the backup finite-net/LP route only if it preserves the same game gap.

### step_005

- Step ID: `step_005`
- Claim class: explicit-rate and candidate-parameter calibration.
- Theorem role: places \(M\) and \(\delta\) inside the one-block source regime under the negation of R1.
- Mechanism source: direct scalar inequalities using `assump:candidate-regime` and source constants from `step_002`.
- Source-to-claim adequacy: set \(a=b_*/16\), \(\varepsilon_0=0.1\), \(c_\delta\le d_*\), \(\alpha_0=\beta_0=2^{-13}\), and choose \(N_0\ge N_*\) so \(b_*L_N\ge16\) for \(N\ge N_0\). If \(n<a kL_N\), then \(M<b_*L_N\). The second candidate-\(\delta\) term implies the source cap; the first remains a separate source-regime convention.
- Residual-to-target adequacy: exact candidate \(M\) is the sample size consumed by the one-block game and simulator; no expected-size substitution.
- Key positive/control term or structural source: \(4n/k<(b_*/4)L_N\) and \(M=\max\{8,\lceil4n/k\rceil\}\).
- Opposing defect terms: ceiling (+1), floor \(M=8\), \(\log(M+1)\) versus \(\log M\), and fixed \(N=N_0\).
- Closure/dominance/absorption relation: when \(b_*L_N\ge16\), both \(8<b_*L_N\) and \(\lceil4n/k\rceil<(5/16)b_*L_N<b_*L_N\); also \(\log(M+1)>\log M>0\).
- Accumulation behavior / scope compatibility: fixed scalar specialization; no stochastic accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive candidate inequalities plus `step_002`; consumers `step_010`, `step_012`, and `step_015`.
- Entry-state / first-update stress result: \(n<k\) and \(M=8\) remain in the source hard regime because \(N_0\) is chosen before candidates.
- Baseline conclusion preserved: the exact conjunction in `assump:candidate-regime` is retained; neither \(\delta\) term is deleted or replaced.
- Producer-consumer provenance: producer `step_005`; consumers `step_010`, `step_012`, `step_015`.
- Null or boundary regime tested: \(N=N_0\), \(M=8\), \(n=1\), \(k=2\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without sufficiently large fixed \(N_0\), the floor \(M=8\) need not contradict source hardness.
- Repair route if source is unsupported: increase the absolute \(N_0\) only; this is allowed by the unchanged goal.

### step_006

- Step ID: `step_006`
- Claim class: fixed-instance PAC-to-expectation upper interface.
- Theorem role: supplies the upper bound that will contradict the extracted hard fixed instance.
- Mechanism source: primitive `assump:distribution-free-realizable-pac` and \(0\le R\le1\).
- Source-to-claim adequacy: every fixed vector \((t_i,Q_i)_{i=1}^k\) defines a fixed realizable \((P_{\boldsymbol Q},c_{\boldsymbol t})\), so PAC gives \(\mathbb E R\le\alpha_0+\beta_0=2^{-12}\).
- Residual-to-target adequacy: the expected risk concerns the exact fixed product distribution later extracted in `step_014`.
- Key positive/control term or structural source: universal distribution-free quantifier over each fixed \(P_{\boldsymbol Q}\).
- Opposing defect terms: PAC failure event contributes at most \(\beta_0\); analysis-side averaging cannot replace fixed-instance PAC.
- Closure/dominance/absorption relation: split expectation over success/failure, obtaining \(\alpha_0(1-\beta_0)+\beta_0\le\alpha_0+\beta_0\).
- Accumulation behavior / scope compatibility: pointwise fixed-instance inequality; averaging occurs only after it is established.
- Obligation locality classification: `step-local`.
- Noncircular closure status: primitive PAC premise -> `step_006` -> `step_014`.
- Entry-state / first-update stress result: all-zero and all-one blocks are valid fixed realizable instances; arbitrary product hypotheses remain covered.
- Baseline conclusion preserved: original high-probability PAC statement remains intact; expectation is only a proof consequence.
- Producer-consumer provenance: producer `step_006`; consumer `step_014`.
- Null or boundary regime tested: degenerate \(Q_i\), endpoint \(t_i\), and randomized \(A\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: an average-only PAC assumption would not justify fixed-instance contradiction.
- Repair route if source is unsupported: theorem-contract blocker; do not assume averaged PAC.

### step_007

- Step ID: `step_007`
- Claim class: unrestricted improper restriction/decoder interface.
- Theorem role: converts a product output into a legal one-block output without proper projection.
- Mechanism source: direct definition \(D_J(h)(x)=h(J,x)\).
- Source-to-claim adequacy: for every arbitrary \(h\in\{0,1\}^{X_{k,N}}\), \(D_J(h)\in\{0,1\}^{[N]}\), and its risk is exactly the tag-\(J\) error \(e_J\).
- Residual-to-target adequacy: equality of the produced one-block hypothesis and consumed restriction under population 0-1 risk; residual zero.
- Key positive/control term or structural source: tagged disjoint domain.
- Opposing defect terms: nonmonotonicity, no threshold parameter, and behavior off \(Q_J\)'s support.
- Closure/dominance/absorption relation: no decoder is attempted; the source theorem itself permits arbitrary hypotheses.
- Accumulation behavior / scope compatibility: one postprocessing map.
- Obligation locality classification: `step-local`.
- Noncircular closure status: direct definition before simulator use; `step_007 -> step_010`.
- Entry-state / first-update stress result: constant, oscillating, and randomized product outputs all restrict legally.
- Baseline conclusion preserved: exact unrestricted improper scope.
- Producer-consumer provenance: producer `step_007`; consumers `step_008`, `step_010`, `step_011`, `step_013`.
- Null or boundary regime tested: arbitrary hypotheses and point-mass \(Q_J\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: a proper decoder need not exist.
- Repair route if source is unsupported: theorem-contract blocker; adding properness is forbidden.

### step_008

- Step ID: `step_008`
- Claim class: ideal hidden-coordinate product law and exchangeable average-risk identity.
- Theorem role: transfers one-block selected risk to product population risk despite tag-asymmetric \(A\).
- Mechanism source: direct i.i.d. construction from `step_004`, independent uniform \(J\), and deterministic risk decomposition.
- Source-to-claim adequacy: drawing the hidden instance and all other instances from the same \(\mu_{N,M}\) makes the full vector i.i.d. \(\mu_{N,M}^k\) and independent of \(J\). Uniform tags and conditional draws from \(Q_i\) make the ideal global sample exactly i.i.d. from \(P_{\boldsymbol Q}\). For fixed \(h\), \(R_{P_{\boldsymbol Q}}=(1/k)\sum_i e_i\), hence \(\mathbb E e_J=\mathbb E R_{P_{\boldsymbol Q}}\).
- Residual-to-target adequacy: exact equality in the theorem's population-risk metric; no symmetry of \(A\) or its output is used.
- Key positive/control term or structural source: independent uniform hidden index and equal tag weights \(1/k\).
- Opposing defect terms: learner tag asymmetry, conditioning on the sample, randomized outputs, and unequal block distributions.
- Closure/dominance/absorption relation: condition on instance vector, sample, and output; average only over independent \(J\).
- Accumulation behavior / scope compatibility: finite average over \(k\) tags; no iterative defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: prior `step_004` and restriction `step_007` produce all inputs; consumers `step_011` and `step_013`.
- Entry-state / first-update stress result: if the hidden tag appears zero times, the equality still holds in the unconditioned ideal experiment; no observed-hidden-sample premise is used.
- Baseline conclusion preserved: for \(k=2\), selected risk is \((e_1+e_2)/2\); for \(k=3\), it is \((e_1+e_2+e_3)/3\).
- Producer-consumer provenance: producer `step_008`; consumers `step_011`, `step_013`.
- Null or boundary regime tested: \(U=0\), all-zero/all-one blocks, and a learner that deliberately treats tag 1 differently.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a fixed nonrandom hidden tag could carry all of the learner's allowed error.
- Repair route if source is unsupported: `sketch/interface defect`; restore independent uniform hiding, not a symmetry assumption.

### step_009

- Step ID: `step_009`
- Claim class: binomial usage and finite-budget overflow control.
- Theorem role: makes the finite input budget executable with loss below half the one-block gap.
- Mechanism source: direct tag sampling and falling-factorial moments.
- Source-to-claim adequacy: \(U=\sum_{r=1}^n\mathbf1\{I_r=J\}\sim\operatorname{Bin}(n,1/k)\). If \(\lambda=n/k\le2\), then \(M=8\) and \(\Pr(U>M)\le2^9/9!<2^{-9}\). If \(\lambda>2\), put \(j=\lceil4\lambda\rceil=M\ge9\); then
  \[
  \Pr(U>M)\le\frac{\lambda^{j+1}}{(j+1)!}
  \le\frac{(j/4)^{j+1}}{(j+1)!}
  \le\frac{(9/4)^{10}}{10!}<2^{-10}<2^{-9}.
  \]
  The last sequence decreases because its consecutive ratio is \(\frac{j+1}{4(j+2)}(1+1/j)^{j+1}<1\).
- Residual-to-target adequacy: overflow contributes at most its probability to a \([0,1]\)-valued risk, below \(\omega=2^{-9}\), the exact scale consumed by `step_013`.
- Key positive/control term or structural source: fourfold mean budget and the fixed floor eight.
- Opposing defect terms: unbounded binomial tail, ceiling effects, \(n<k\), and small \(\lambda\).
- Closure/dominance/absorption relation: falling-factorial Markov bound charges event \(U\ge r\) to \(\mathbb E[(U)_r]/r!\); no row is resampled.
- Accumulation behavior / scope compatibility: finite-budgeted over exactly \(n\) tag trials; the nonnegative count has exact factorial moments and no adversarial-sign term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: tag law alone produces the certificate before the simulator calls \(A\); consumers `step_010`, `step_011`, `step_013`.
- Entry-state / first-update stress result: \(U=0\) uses no hidden input; \(U>M\) activates the input-independent abort branch. For \(k=2,3\), \(M\ge n\), so overflow is impossible.
- Baseline conclusion preserved: exact simulation on every nonoverflow execution.
- Producer-consumer provenance: producer `step_009`; consumers `step_010`, `step_011`, `step_013`.
- Null or boundary regime tested: \(k=2\), \(k=3\), \(n<k\), \(M=8\), and \(n=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: repeated reuse of input rows would destroy both the risk and DP interfaces.
- Repair route if source is unsupported: `sketch/interface defect`; increase the simulator budget constant only if the unchanged final constant permits it.

### step_010

- Step ID: `step_010`
- Claim class: executable one-use hidden-coordinate simulator.
- Theorem role: constructs the one-block learner to which \(\mu_{N,M}\) applies.
- Mechanism source: direct randomized preprocessing using outputs of `step_004`, `step_007`, and `step_009`.
- Source-to-claim adequacy: tags are drawn before reading records; on \(U\le M\), the \(\ell\)-th hidden occurrence receives input row \(\ell\), every other row is freshly sampled from its known nonhidden instance, then \(A\) is called and restricted. On \(U>M\), return a fixed all-zero one-block hypothesis without reading the input.
- Residual-to-target adequacy: off overflow, input records have the exact hidden labeled law and nonhidden rows the exact block laws; overflow is isolated for `step_011`.
- Key positive/control term or structural source: each input row has zero or one image row.
- Opposing defect terms: unknown hidden \(t,Q\), unused input rows, overflow, and arbitrary labels on nonrealizable adjacent datasets.
- Closure/dominance/absorption relation: hidden labels are taken from input rows, so the simulator never needs to know \(t\); A's privacy is defined on all labeled datasets, so adjacent nonrealizable inputs are legal for the privacy audit.
- Accumulation behavior / scope compatibility: finite row construction; each row incurs one charge at most.
- Obligation locality classification: `step-local`.
- Noncircular closure status: prior exists by `step_004`; no simulator-dependent prior choice; consumers `step_011` and `step_012`.
- Entry-state / first-update stress result: \(U=0\) calls \(A\) on only nonhidden samples; \(U>M\) returns fixed output before \(A\); both are defined for every input dataset.
- Baseline conclusion preserved: no proper decoder, conditioning assumption, or expected sample-size substitution.
- Producer-consumer provenance: producer `step_010`; consumers `step_011`, `step_012`, `step_013`.
- Null or boundary regime tested: all-zero/all-one hidden labels, arbitrary corrupt adjacent input row, and randomized \(A\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: synthesizing hidden overflow rows from reused records is not adjacency preserving.
- Repair route if source is unsupported: blocker at simulator interface; do not hide reuse in a privacy argument.

### step_011

- Step ID: `step_011`
- Claim class: actual-to-ideal sample and risk coupling.
- Theorem role: transfers hard-prior risk from the executable simulator to the exact i.i.d. product experiment.
- Mechanism source: couple the simulator input to the first \(M\) draws of an infinite hidden i.i.d. sequence and share all tags, other block samples, and learner randomness.
- Source-to-claim adequacy: on \(U\le M\), actual and ideal global datasets and restricted outputs are identical. Since risk lies in \([0,1]\),
  \[
  \mathbb E[\text{ideal selected risk}]
  \ge \mathbb E[\text{actual simulator risk}]-\Pr(U>M).
  \]
- Residual-to-target adequacy: the only residual is the overflow indicator, controlled at the required \(2^{-9}\) scale by `step_009`; all nonoverflow residuals are exactly zero.
- Key positive/control term or structural source: identity of coupled datasets off overflow.
- Opposing defect terms: the ideal experiment has arbitrarily many hidden draws, while the executable learner has only \(M\).
- Closure/dominance/absorption relation: bounded-loss coupling; no conditioning of the DP mechanism and no claim that the conditional sample remains i.i.d.
- Accumulation behavior / scope compatibility: single finite coupling; residual does not recur.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_009 + step_010 -> step_011 -> step_013`.
- Entry-state / first-update stress result: on \(U=0\), equality still holds; on overflow, no equality is claimed and the full unit loss is charged.
- Baseline conclusion preserved: exact no-overflow simulation.
- Producer-consumer provenance: producer `step_011`; consumer `step_013`.
- Null or boundary regime tested: \(k=2,3\) gives zero residual; \(M=8\) uses the factorial bound.
- Target conclusion false or theorem-critical obstruction present if source vanishes: conditioning alone would not justify either exact i.i.d. law or DP.
- Repair route if source is unsupported: `sketch/interface defect`; expose every additional simulation residual separately.

### step_012

- Step ID: `step_012`
- Claim class: exact replacement-DP preservation.
- Theorem role: certifies that the simulator belongs to the hard-prior learner set.
- Mechanism source: pathwise one-use preprocessing, `assump:central-dp`, postprocessing, and input-independent mixing.
- Source-to-claim adequacy: fix all simulator preprocessing randomness, but leave A's internal coins distributed as required by DP. On overflow, outputs for adjacent inputs coincide. Off overflow, replacing input row \(\ell\) changes no global row if \(\ell>U\), and exactly the \(\ell\)-th hidden-occurrence row if \(\ell\le U\); all other rows coincide. Therefore the two global datasets are adjacent. Apply A's exact \((\varepsilon,\delta)\)-DP inequality over A's coins, then postprocess and average over the common preprocessing randomness.
- Residual-to-target adequacy: produced privacy is the exact \((\varepsilon,\delta)\) interface consumed by the one-block game; `step_005` strengthens it to \((0.1,\Delta_M)\). There is no composition loss and no extra \(k,n\), or overflow factor.
- Key positive/control term or structural source: one input row maps to at most one global row.
- Opposing defect terms: randomized preprocessing, abort branch, arbitrary replacement labels, and restriction to a random tag.
- Closure/dominance/absorption relation: for every fixed preprocessing seed, A receives equal or adjacent datasets and its output distribution obeys DP; postprocessing and the common mixture over preprocessing seeds preserve the same parameters. No claim is made that A is private after fixing its own coins.
- Accumulation behavior / scope compatibility: no privacy composition; one adjacency charge total.
- Obligation locality classification: `step-local`.
- Noncircular closure status: one-use property is produced by `step_010` and A privacy is primitive in `assump:central-dp`; the sole consumer is `step_013`, where the already-produced `step_004` prior guarantee is instantiated for this certified simulator.
- Entry-state / first-update stress result: overflow output is input-independent; \(U=0\) global datasets coincide; if the changed record is unused, outputs have identical laws.
- Baseline conclusion preserved: exact central replacement DP and arbitrary randomized A.
- Producer-consumer provenance: producer `step_012`; consumer `step_013` via the prior guarantee from `step_004`.
- Null or boundary regime tested: replacement changes both feature and label, input may be nonrealizable, and changed row may be unused.
- Target conclusion false or theorem-critical obstruction present if source vanishes: using one input row twice would generally require group privacy and alter \((\varepsilon,\delta)\).
- Repair route if source is unsupported: theorem-contract blocker unless a new exact one-use simulation is supplied.

### step_013

- Step ID: `step_013`
- Claim class: lower-bound transfer to average product population risk.
- Theorem role: combines hard prior, coupling, and exchangeability into the product hardness statement.
- Mechanism source: `step_004`, `step_008`, `step_009`, `step_011`, and `step_012`.
- Source-to-claim adequacy: the simulator is in the hard-prior DP set, so its prior-averaged risk exceeds \(\eta=2^{-8}\). The coupling loses less than \(2^{-9}\), and exchangeability identifies ideal selected risk with expected product risk. Hence
  \[
  \mathbb E_{\boldsymbol I\sim\mu_{N,M}^k,S,A}
    R_{P_{\boldsymbol Q}}(A(S),c_{\boldsymbol t})
  >2^{-9}.
  \]
- Residual-to-target adequacy: exact product population risk is consumed by `step_014`; the sole transfer residual is overflow, already dominated.
- Key positive/control term or structural source: hard-prior gap \(2^{-8}\).
- Opposing defect terms: overflow below \(2^{-9}\); all other simulation, restriction, and averaging defects are zero by earlier equalities.
- Closure/dominance/absorption relation: \(2^{-8}-\Pr(U>M)>2^{-9}\).
- Accumulation behavior / scope compatibility: finite one-shot subtraction; no persistent defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: every input is produced by an earlier step; `step_004 + step_008 + step_009 + step_011 + step_012 -> step_013 -> step_014`.
- Entry-state / first-update stress result: even if the hidden tag is unobserved, the prior lower bound applies to the resulting one-block learner; no activation-by-observation assumption.
- Baseline conclusion preserved: unrestricted one-block hardness transfers without properness or task decoding.
- Producer-consumer provenance: producer `step_013`; consumer `step_014`.
- Null or boundary regime tested: \(k=2,3\) have no overflow; \(n<k\) remains covered; arbitrary tag-asymmetric learner.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if overflow reached the full \(2^{-8}\) gap, the transfer would be vacuous.
- Repair route if source is unsupported: smallest failed dependency among `step_004`, `step_008`, `step_009`, `step_011`, `step_012`.

### step_014

- Step ID: `step_014`
- Claim class: fixed hard-instance extraction and PAC contradiction.
- Theorem role: discharges the distribution-free quantifier correctly and removes all analysis-side randomness.
- Mechanism source: finite prior from `step_004`, average lower bound from `step_013`, and pointwise PAC upper bound from `step_006`.
- Source-to-claim adequacy: because the finite \(\mu_{N,M}^k\)-average exceeds \(2^{-9}\), some fixed vector \((t_i,Q_i)_{i=1}^k\) has expected product risk above \(2^{-9}\). `step_006` bounds that same fixed vector's expected risk by \(\alpha_0+\beta_0=2^{-12}\), contradiction.
- Residual-to-target adequacy: produced and consumed objects are the identical fixed \(P_{\boldsymbol Q}\), target \(c_{\boldsymbol t}\), and population-risk metric.
- Key positive/control term or structural source: finite-average maximum principle and the gap \(2^{-9}>2^{-12}\).
- Opposing defect terms: averaging over hard instances and learner/sample randomness.
- Closure/dominance/absorption relation: extract the instance before invoking the theorem-facing contradiction; only sample and learner randomness remain in both expectations.
- Accumulation behavior / scope compatibility: one finite extraction; no recurrence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: prior producer `step_004`, lower producer `step_013`, upper producer `step_006`; consumer `step_015`.
- Entry-state / first-update stress result: extracted vector may include endpoint thresholds or point-mass distributions; PAC covers it unchanged.
- Baseline conclusion preserved: universal fixed-instance distribution-free PAC, not a Bayesian or average-case replacement.
- Producer-consumer provenance: producer `step_014`; consumer `step_015`.
- Null or boundary regime tested: randomized A and nonunique representations of the same labeled law.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a lower bound only for a random instance without extraction would not contradict the formal goal.
- Repair route if source is unsupported: blocker in finite prior or fixed-instance PAC flow.

### step_015

- Step ID: `step_015`
- Claim class: exact theorem closure.
- Theorem role: proves R1 for all quantified candidates.
- Mechanism source: contradiction from `step_005` and `step_014`.
- Source-to-claim adequacy: assuming \(n<a kL_N\) supplies every hard-regime hypothesis and yields contradiction; therefore \(n\ge a kL_N\).
- Residual-to-target adequacy: exact target inequality with the same \(n,k,N\); no asymptotic or rounded surrogate.
- Key positive/control term or structural source: fixed positive \(a=b_*/16\).
- Opposing defect terms: candidate regimes at \(n<k\), \(M=8\), \(N=N_0\), and smaller \(\varepsilon,\delta\).
- Closure/dominance/absorption relation: all are discharged in `step_005`, `step_009`, and `step_012`.
- Accumulation behavior / scope compatibility: pointwise deterministic implication.
- Obligation locality classification: `step-local`.
- Noncircular closure status: final dependency path ends at `step_014`; the conclusion is not used upstream.
- Entry-state / first-update stress result: smallest allowed \(n\) and floor budget are included by the fixed \(N_0\) choice.
- Baseline conclusion preserved: exact unrestricted improper learner, exact candidate-\(\delta\) conjunction, and population risk.
- Producer-consumer provenance: producer `step_015`; consumer `step_016` and final theorem.
- Null or boundary regime tested: \(k=2\), \(n=1\), \(N=N_0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: outside the candidate regime no claim is made.
- Repair route if source is unsupported: smallest failed earlier step; do not weaken R1.

### step_016

- Step ID: `step_016`
- Claim class: tower-diagonal rate specialization and baseline comparison.
- Theorem role: proves R2 and the advertised separation.
- Mechanism source: direct tower arithmetic and exact identities from `step_001`, applied to `step_015`.
- Source-to-claim adequacy: \(\log_2^*\operatorname{Tow}_2(r)=r\), so R1 gives \(n\ge ar^2\). Also \(\lfloor\log_2(N+1)\rfloor=\operatorname{Tow}_2(r-1)\), whence the displayed LD and cardinality formulas and \(\log_2^*\operatorname{LD}=\Theta(r)\).
- Residual-to-target adequacy: exact same class and sample bound; only deterministic re-expression in structural parameters.
- Key positive/control term or structural source: tower/log inverse identities.
- Opposing defect terms: floor, \(+1\), finite initial \(r\), and hidden constants.
- Closure/dominance/absorption relation: absorb only finitely many \(r\) below the fixed \(N_0\) threshold; constants remain independent of \(r\).
- Accumulation behavior / scope compatibility: finite iterated-log chain of length \(r\), exactly specified by the tower convention.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001 + step_015 -> step_016`.
- Entry-state / first-update stress result: \(r=2\) verifies the conventions; the asymptotic statement starts once \(N\ge N_0\).
- Baseline conclusion preserved: additive frontier remains \(\Theta(r)\), while the proved lower bound is \(\Omega(r^2)\); no claim of the stronger exponential milestone or \(\Omega(\log|C|)\).
- Producer-consumer provenance: producer `step_016`; final theorem interpretation.
- Null or boundary regime tested: first admissible diagonal index and exact tower convention.
- Target conclusion false or theorem-critical obstruction present if source vanishes: conflating \(\log\) and \(\log^*\) would give the wrong comparison.
- Repair route if source is unsupported: blocker in `step_001` or arithmetic, not a change of theorem target.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Exact \(\operatorname{VC},\operatorname{LD},\lvert C\rvert\) certificate | `step_001` | Class definition and disjoint tags | Endpoint/floor/additivity issues, all directly controlled | Same class and exact quantities; no residual | Per-tag VC/LD upper bounds plus independent lower witnesses | Distinct cuts and finite per-tag mistake budgets | `step_016`, final interpretation | None |
| One-block lower wrapper with constants \(b_*,d_*,N_*\) | `step_002`, arXiv:1806.00949v3 `thm:main` | Source theorem, source definitions, order/label isomorphism | Implicit constants and convention changes controlled by fixed wrapper; no hard prior supplied | Source and branch use the same population risk after isomorphism; source family embeds in \(T_N\) | Stronger privacy and larger target class preserve impossibility | Source \(\Omega/O\) constants | `step_003`, `step_005` | None; numerical constants are intentionally existential |
| Expected one-block game gap \(>2^{-8}\) | `step_003` | Source failure at error/failure \(1/16\) | Loss of a factor \(1/16\) in probability-to-expectation conversion; controlled exactly | Exact one-block population loss | \(\mathbb ER>(1/16)\Pr(R>1/16)>2^{-8}\) | Source accuracy/failure constants | `step_004` | None |
| Finite public hard prior \(\mu_{N,M}\) | `step_004` | Compact DP kernel polytope, compact instance simplex, continuous affine payoff, strict gap | Continuum of \(Q\) controlled by compactness; support made finite exactly; no approximation defect | Prior controls exact one-block loss consumed by simulator | Compact minimax then coefficient-vector Caratheodory | Strict compact game value \(v>2^{-8}\) | `step_006`, `step_008`, `step_010`, `step_013` | None |
| Hard-regime and source-parameter certificate | `step_005` | `assump:candidate-regime`, source constants, negated target | Ceiling, floor eight, and log-denominator mismatch all scalar-controlled | Same \(M\), \(\varepsilon\), and \(\delta\) consumed by prior | \(M<b_*L_N\); candidate second delta term is at most source cap | Fixed \(N_0\), \(a=b_*/16\), \(c_\delta\le d_*\) | `step_010`, `step_012`, `step_015` | None |
| Fixed-instance expected PAC upper bound \(\le2^{-12}\) | `step_006` | `assump:distribution-free-realizable-pac`, bounded risk | Failure event contributes \(\beta_0\); no distribution-averaging defect | Exact fixed product instance later extracted | \(\mathbb ER\le\alpha_0+\beta_0\) | Chosen \(\alpha_0=\beta_0=2^{-13}\) | `step_014` | None |
| Arbitrary-output restriction \(D_Jh\) | `step_007` | Full hypothesis output space and tagged domain | Nonmonotonicity intentionally uncontrolled and irrelevant | Produced one-block hypothesis is exactly the consumed restriction; risk equality | Direct evaluation \(D_Jh(x)=h(J,x)\) | Source theorem's improper-output scope | `step_008`, `step_010`, `step_011`, `step_013` | None |
| Ideal i.i.d. product law and exchangeability identity | `step_008` | I.i.d. prior draws, independent uniform \(J\), equal tag weights | Tag asymmetry of A is averaged exactly; no symmetry assumption | Exact product risk equals average block risk | Condition then average over independent \(J\) | Uniform hidden coordinate | `step_011`, `step_013` | None |
| Overflow certificate \(\Pr(U>M)<2^{-9}\) | `step_009` | Binomial law and factorial moments | Tail is the only controlled defect; no persistent/unknown term | Risk residual at most same probability in \([0,1]\) metric | Two-case factorial bounds at \(\lambda\le2\) and \(>2\) | Fourfold mean budget and floor eight | `step_010`, `step_011`, `step_013` | None |
| Executable one-use simulator | `step_010` | Prior, restriction, pre-drawn tags, finite input | Overflow isolated; unused rows harmless; hidden distribution unknown but not needed | Off overflow, exact ideal rows; overflow handled separately | Each first \(U\) input row maps once; fixed abort otherwise | Budget \(M\) and `step_009` | `step_011`, `step_012` | None |
| Ideal/actual risk bridge | `step_011` | Coupled infinite hidden sequence and one-use simulator | Sole residual \(\mathbf1\{U>M\}\), controlled below \(2^{-9}\) | Same restricted hypothesis/risk off overflow; residual below target gap | Bounded-loss coupling inequality | `step_009` overflow slack | `step_013` | None |
| Exact one-block \((\varepsilon,\delta)\)-DP | `step_012` | `assump:central-dp` and pathwise one-row preprocessing | No composition defect; common preprocessing mixture/postprocessing preserve parameters | Exact privacy interface consumed by the hard-prior guarantee | For every fixed preprocessing seed, an adjacent input pair maps to an equal/adjacent global pair; A's coins remain distributed | One-use property from `step_010` | `step_013` | None |
| Average product risk \(>2^{-9}\) | `step_013` | Prior gap, DP certificate, coupling, exchangeability | Overflow below \(2^{-9}\); other defects zero | Exact product population risk | \(2^{-8}-\Pr(U>M)>2^{-9}\) | Source game gap minus overflow slack | `step_014` | None |
| Fixed hard product instance and contradiction | `step_014` | Finite prior average lower bound and pointwise PAC upper bound | Analysis-side instance averaging eliminated by maximum principle | Same fixed \(P_{\boldsymbol Q},c_{\boldsymbol t}\) in lower and upper bounds | \(2^{-9}>2^{-12}\) | Fixed numerical gap | `step_015` | None |
| Public lower bound \(n\ge akL_N\) | `step_015` | All earlier interfaces under negated target | No omitted rate term; exact candidate regime retained | Exact public variables and sample size | Contradiction closes the negation | \(a=b_*/16\), fixed \(N_0\) | `step_016`, final theorem | None |
| Tower-diagonal \(\Omega(r^2)\) bridge | `step_016` | `step_001`, `step_015`, tower convention | Finite initial indices only; no hidden r-dependence | Same class sequence and risk theorem | Exact \(L_N=r\) and structural identities | Fixed source/theorem constants | Final corollary | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Structural identity certificate | `step_001` | `step_016` | Express lower bound in VC/LD/cardinality terms | `step_001 -> step_016` | derived | None |
| Source one-block wrapper constants | `step_002` from arXiv:1806.00949v3 | `step_003`, `step_005` | Defines hard regime and absolute final constants | `step_002 -> step_003/step_005` | derived | None |
| Expected one-block game gap | `step_003` | `step_004` | Enables algorithm-independent prior | `step_002 -> step_003 -> step_004` | derived | None |
| Finite hard prior \(\mu_{N,M}\) | `step_004` | `step_006`, `step_008`, `step_010`, `step_013` | Supplies hard block instances without circularity | `step_003 -> step_004 -> consumers` | derived | None |
| Hard-regime/parameter certificate | `step_005` | `step_010`, `step_012`, `step_015` | Discharges source/sample/privacy conditions | `step_002 + assump:candidate-regime -> step_005` | derived | None |
| Fixed-instance PAC expected upper bound | `step_006` from `assump:distribution-free-realizable-pac` | `step_014` | Contradicts extracted hard instance | `assump:distribution-free-realizable-pac -> step_006 -> step_014` | derived | None |
| One-block restriction | `step_007` | `step_008`, `step_010`, `step_011`, `step_013` | Keeps theorem unrestricted/improper | `step_007 -> consumers` | derived | None |
| Ideal product/exchangeability identity | `step_008` | `step_011`, `step_013` | Equates selected and product risks in expectation | `step_004 + step_007 -> step_008 -> step_013` | derived | None |
| Binomial overflow certificate | `step_009` | `step_010`, `step_011`, `step_013` | Keeps simulation loss below hard gap | `step_009 -> step_011 -> step_013` | derived | None |
| Executable simulator and one-use invariant | `step_010` | `step_011`, `step_012` | Creates legal one-block learner | `step_004 + step_007 + step_009 -> step_010` | derived | None |
| Actual/ideal risk bridge | `step_011` | `step_013` | Transfers hard-prior loss to exact product experiment | `step_009 + step_010 -> step_011 -> step_013` | derived | None |
| Exact simulator DP certificate | `step_012` | `step_013` | Makes the already-produced `step_004` hard-prior inequality applicable | `assump:central-dp + step_005 + step_010 -> step_012 -> step_013` | derived | None |
| Average product lower bound | `step_013` | `step_014` | Forces a hard fixed product instance | `step_004 + step_008 + step_009 + step_011 + step_012 -> step_013` | derived | None |
| Fixed hard product instance | `step_014` | `step_015` | Closes distribution-free PAC contradiction | `step_006 + step_013 -> step_014` | derived | None |
| Exact public lower bound | `step_015` | `step_016` | Main theorem | `step_005 + step_014 -> step_015` | derived | None |
| Tower specialization | `step_016` | final corollary | Advertised \(\Omega(r^2)\) separation | `step_001 + step_015 -> step_016` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Prove \(\lvert C_{k,N}\rvert=(N+1)^k\), \(\operatorname{VC}(C_{k,N})=k\), and \(\operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor\), including endpoint cuts and exact LD additivity. | None | Primitive class definitions; no technical assumption | Exact LD lower and upper bounds on a disjoint tagged product | Direct shattering, binary-search tree, and per-tag online mistake-budget derivations | Structural identity certificate | R2: exact dependence on \(k,N\) | PENDING |
| `step_002` | Restate the actual Alon–Livni–Malliaris–Moran threshold theorem in current notation with constants \(b_*,d_*,N_*\), exact source locator, object mapping, hypothesis discharge plan, source-convention compatibility, and known non-outputs. | `step_001` | No setting technical assumption; cited source hypotheses later discharged | Avoid importing a proper-only theorem, unverified constants, or an unidentified hard distribution | arXiv:1806.00949v3, Section 2 `thm:main`, Section 3 definitions | Verified one-block source wrapper | R1: source \(\log_2^*N\), \(\varepsilon\), \(\delta\), fixed-size and risk modes | PENDING |
| `step_003` | If \(M<b_*L_N\), every \((0.1,d_*/(M^2\log M))\)-DP one-block learner has some \((t,Q)\) with expected risk \(>\eta=2^{-8}\). | `step_002` | Source wrapper conditions; no generated assumption | Convert high-probability impossibility without overstating the loss gap | Contrapositive and bounded-loss inequality | Expected-loss game lower value | R1: exact fixed \(M,N\) hard regime | PENDING |
| `step_004` | Construct a finite-support \(\mu_{N,M}\) over \((t,Q)\) such that every source-private randomized one-block kernel has prior-averaged expected loss \(>\eta\); prove compactness, minimax, and finite support. | `step_003` | Derived hard regime from `step_003`; no prior assumption | Continuum of distributions and avoiding learner-prior circularity | Current-notation finite-dimensional kernel polytope, compact minimax/separation, Caratheodory | Public finite hard prior | R1: preserve exact \(N,M\) and no approximation slack | PENDING |
| `step_005` | Choose \(a=b_*/16\), \(\varepsilon_0=0.1\), \(c_\delta\le d_*\), \(\alpha_0=\beta_0=2^{-13}\), and fixed \(N_0\) so the negation \(n<akL_N\) implies \(M<b_*L_N\) and the candidate privacy parameters meet the source cap. | `step_002` | `assump:candidate-regime` | Ceiling, floor eight, logarithm denominator, and source asymptotic threshold | Direct scalar inequalities | Hard-regime and candidate-parameter certificate | R1: all exposed variables, admissibility, hidden constants | PENDING |
| `step_006` | For every fixed one-block vector \((t_i,Q_i)_{i=1}^k\), prove realizability of \((P_{\boldsymbol Q},c_{\boldsymbol t})\) and \(\mathbb E R_{P_{\boldsymbol Q}}(A(S),c_{\boldsymbol t})\le\alpha_0+\beta_0=2^{-12}\). | `step_004`, `step_005` | `assump:distribution-free-realizable-pac` | Keep the PAC application pointwise before averaging over the prior | Success/failure expectation split | Fixed-instance PAC upper interface | R1: fixed-size, high-probability-to-expectation conversion in population risk | PENDING |
| `step_007` | For arbitrary \(h\), define \(D_Jh(x)=h(J,x)\), prove it is a legal improper threshold-learner output and that its risk is exactly block error \(e_J\). | None | Primitive output-space definition | No proper projection or monotonicity assumption | Direct restriction/postprocessing | Improper one-block output interface | None | PENDING |
| `step_008` | Define the ideal hidden-coordinate experiment; prove the instance vector is i.i.d. \(\mu_{N,M}^k\) and independent of \(J\), the ideal global sample is i.i.d. product data, and \(\mathbb E e_J=\mathbb E R_{P_{\boldsymbol Q}}\) for arbitrary randomized asymmetric A. | `step_004`, `step_007` | Derived prior from `step_004` | Exact exchangeability without learner symmetry | Conditioning and deterministic risk decomposition | Ideal product/exchangeability certificate | R1: exact expectation and population-risk modes | PENDING |
| `step_009` | Prove \(U\sim\operatorname{Bin}(n,1/k)\) and \(\Pr(U>M)<2^{-9}\) by the two-case factorial-moment calculation; explicitly cover \(k=2,3\), \(n<k\), and \(M=8\). | `step_005`, `step_008` | Primitive tag sampling; derived contradiction regime not needed for tail | Uniform small-mean and ceiling control | Falling-factorial Markov bound and monotone scalar sequence | Overflow certificate | R1: explicit \(n,k,M\) finite-budget dependence | PENDING |
| `step_010` | Construct the executable one-block simulator: pre-draw tags, abort input-independently on overflow, otherwise use each input row at most once, sample nonhidden rows, call A, and restrict to J. | `step_004`, `step_005`, `step_007`, `step_009` | `assump:central-dp` is not yet consumed; derived prior/budget outputs | Unknown hidden \(t,Q\), total output size n, and arbitrary adjacent input datasets | Direct randomized preprocessing | Simulator with one-use invariant | R1: exact fixed sizes \(M,n\) | PENDING |
| `step_011` | Couple the simulator to the ideal experiment so outputs coincide on \(U\le M\), and prove ideal expected selected risk is at least simulator risk minus \(\Pr(U>M)\). | `step_008`, `step_009`, `step_010` | Derived overflow certificate and simulator | Avoid invalid conditioning and expose the sole residual | Shared-randomness bounded-loss coupling | Actual-to-ideal risk bridge | R1: exact additive overflow term and expectation mode | PENDING |
| `step_012` | Prove pathwise that replacing one one-block input row changes at most one global row, then derive exact \((\varepsilon,\delta)\)-DP for the simulator and source-cap membership with no composition loss. | `step_005`, `step_010` | `assump:central-dp`, `assump:candidate-regime` | Randomized preprocessing, overflow branch, arbitrary labels, and random postprocessing | One-Lipschitz adjacency coupling, DP postprocessing, common mixtures | Exact simulator DP certificate | R1: exact \(\varepsilon,\delta\) with no hidden k/n factor | PENDING |
| `step_013` | Apply \(\mu_{N,M}\) to the simulator, subtract overflow, and use exchangeability to prove the prior-averaged ideal product risk exceeds \(2^{-9}\). | `step_004`, `step_008`, `step_009`, `step_011`, `step_012` | Derived prior, coupling, overflow, and privacy outputs | Preserve the hard gap through every generated interface | Algebraic combination \(2^{-8}-2^{-9}=2^{-9}\) with strict tail | Average product population-risk lower bound | R1: explicit constants and expectation mode | PENDING |
| `step_014` | Extract one fixed \((t_i,Q_i)_{i=1}^k\) with expected product risk \(>2^{-9}\) and contradict its pointwise PAC upper bound \(\le2^{-12}\). | `step_006`, `step_013` | `assump:distribution-free-realizable-pac` via `step_006` | Remove all Bayesian/analysis-side randomness before theorem use | Finite-average maximum principle | Fixed hard instance and contradiction | R1: probability conversion and fixed-instance population risk | PENDING |
| `step_015` | Discharge the contradiction assumption and conclude \(n\ge ak\log_2^*N\) for every candidate in the approved regime. | `step_005`, `step_014` | All three primitive assumptions through accepted dependencies | Quantifier closure without weakening scope | Direct contradiction | Main nonasymptotic theorem | R1: final exact rate and allowed constant dependence | PENDING |
| `step_016` | On \(k=r,N=\operatorname{Tow}_2(r)\), prove \(L_N=r\), the exact structural formulas, \(\log_2^*\operatorname{LD}=\Theta(r)\), and hence \(n=\Omega(r^2)=\Omega(\operatorname{VC}\log_2^*\operatorname{LD})\), while recording the remaining gap. | `step_001`, `step_015` | No additional assumption | Floors, finite initial r, and exact log-star/tower conventions | Direct tower arithmetic | Tower-diagonal corollary | R2: final public specialization with r-independent constants | PENDING |

## Dependency Notes

The graph is acyclic because every row depends only on an earlier stable ID. Its main spine is

\[
\texttt{step\_001}\to\texttt{step\_002}\to\texttt{step\_003}\to\texttt{step\_004},
\]

followed by the independent scalar, PAC, restriction, exchangeability, and overflow interfaces (`step_005`–`step_009`), the executable simulator and its two audits (`step_010`–`step_012`), and the lower-transfer/extraction/closure chain (`step_013`–`step_016`). The hard prior is produced before the simulator; the overflow bound is produced before the actual/ideal coupling; the one-use invariant is produced before privacy is claimed; pointwise PAC is established before analysis-side averaging; and the fixed hard instance is extracted before final contradiction. No conclusion, good event, prior, exchangeability property, or privacy certificate is consumed before its producer.

## Blockers

None at sketch level. The roadmap is viable conditional only on proving the listed `step-local` claims; no theorem-facing conditional hypothesis is introduced.

## Self-Audit

- Step count: 16 lemma-sized steps (`step_001` through `step_016`).
- Formalized setting and goal: exact-goal mode; unchanged from approved `setting.md`.
- Source preflight: complete for arXiv:1806.00949v3, including actual statement locator, object map, every consumed hypothesis, conventions, and non-outputs.
- Rate objectives: R1 records all exposed variables, constants, fixed quantities, probability/horizon/risk modes, delta conjunction, and simplification bridges; R2 records the tower specialization.
- Assumption provenance: every prior, game gap, random instance vector, usage law, overflow event, simulator invariant, DP certificate, exchangeability identity, and fixed hard instance has a producer.
- Mechanism witnesses: all 16 theorem-relevant steps are covered, including boundary/null behavior, locality, noncircularity, and producer-consumer paths.
- Exported interfaces: all theorem-critical outputs have raw controls, defect splits, exact transfer/dominance relations, slack sources, consumers, and no unresolved residual.
- Scope accumulation: only the finite tag-count and per-tag mistake budgets accumulate; both have concrete factorial-moment or finite-charge controls. No all-time or limiting generated invariant is claimed.
- Entry/boundary stress: explicitly covers \(k=2\), \(k=3\), \(n<k\), \(M=8\), \(N=N_0\), \(U=0\), overflow, all-zero/all-one thresholds, point-mass block distributions, arbitrary nonmonotone hypotheses, randomized learners, unused changed rows, nonrealizable adjacent datasets, and the first tower indices.
- Baseline invariance: the unrestricted improper one-block lower bound and exact no-overflow simulation are preserved; no proper, pure-DP, efficient, Bayesian-PAC, or expected-sample surrogate is substituted.
- Dependency graph: acyclic and earlier-pointing only.
- Honest blockers: none presently; any failure of source wrapper, minimax, overflow, exchangeability, coupling, or fixed-instance extraction is localized to its named step and may not be assumed downstream.
