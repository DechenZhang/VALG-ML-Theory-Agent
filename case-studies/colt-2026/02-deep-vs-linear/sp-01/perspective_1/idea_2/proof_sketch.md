# Proof Sketch

## Formalized Setting

Let \(\mathcal X=\{-1,+1\}^n\) and \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Fix the protocol tie label \(\tau\) and ReLU back-propagation selector \(\kappa\) exactly as in `setting.md`. A fixed bias-free fully connected ReLU architecture has \(S\) weights, fan-in Gaussian initialization, constant stepsize \(\eta>0\), and \(T\ge1\) one-sample logistic-SGD updates. Its predictor is the fixed-tie sign of the latter-half aggregate.

The only primitive conditions are `assump:fixed-source-witnesses` and `assump:universal-expected-success`. Thus one architecture, stepsize, and horizon are fixed before \((\mathcal D,h)\), and for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\theta^{(0)},x^{(0:T-1)}}
\bigl[\mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h})\bigr]
\le \varepsilon<\tfrac14.
\]
There is no genericity, convexity, finite-precision, margin, stability, or generated-event assumption.

## Formalized Goal

In exact-goal mode, prove that one deterministic feature map \(\varphi:\mathcal X\to\mathbb R^d\), independent of \(\mathcal D\) and \(h\), exactly \(\operatorname{sign}_\tau\)-represents every \(h\in\mathcal H\), with
\[
d=\operatorname{dc}(\mathcal H)\le C T S
\]
for a universal numerical constant \(C\) independent of all problem, algorithm, and architecture parameters.

## Sketch Identity

- Sketch attempt: 1

## Proof Roadmap

No viable target-preserving roadmap remains after source/interface preflight.

The proposed route encodes a complete trajectory by \(q=(\theta^{(0)},\ldots,\theta^{(T)})\in\mathbb R^{(T+1)S}\), attempts to turn these coordinates into an exact reduction to stochastic convex optimization, and invokes Theorem 3 of Chornomaz, Moran, and Waknine, *On Reductions and Representations of Learning Problems in Euclidean Spaces*, arXiv:2411.10784v1 (STOC 2025). A valid reduction would yield exact sign-rank at most \((T+1)S+1\le3TS\).

The source theorem does not accept an arbitrary low-dimensional transcript. It requires an **exact** \((\alpha,\beta)\)-reduction, \(\beta<1/2\), to a convex task. Its proof uses zero transformed loss, minimax, convex zero-loss fibers, and strict separation. The current premise supplies only expected classification error for a randomized trajectory whose law depends on \(\mathcal D\), and its nonlinear aggregate has no convex good-transcript fibers. Piecewise analyticity on activation strata supplies neither exactness nor convexity; fixed \(\kappa\) supplies a value at a kink but not global continuity. The source Borsuk--Ulam relation theorems likewise assume convex fibers.

`technical_survey.md` therefore rejects the exact-SCO and stratified-topological frameworks. Making a future proof step the first source of this bridge would be circular. The exact target is preserved rather than weakened.

## Rate Objectives

### Objective RO-1: exact structural linear-\(TS\) bound

- Objective type: structural-parameter explicit.
- Exposed variables: \(T,S\), and universal \(C\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,\mathcal H,\varepsilon,\eta,T,L\), widths, \(\tau,\kappa\), or any architecture detail.
- Fixed quantities: \(n,\mathcal H,\varepsilon\), architecture, \(S,\eta,T,\tau,\kappa\) for one implication; \(\mathcal D,h\) remain universal.
- Probability mode: Expected risk over initialization/samples in the premise; deterministic probability-free exact representation in the conclusion.
- Horizon mode: Fixed finite horizon \(T\).
- Norm mode: Strict-inequality \(0\)-\(1\) risk in the premise; pointwise exact Euclidean sign representation in the conclusion.
- Required bridge or simplification obligations: Export an exact convex reduction of dimension \(d_0\le(T+1)S\) from the primitive premise; source Theorem 3 would give \(\operatorname{dc}(\mathcal H)\le d_0+1\); then \((T+1)S+1\le3TS\) since \(T,S\ge1\). The reduction export, not the arithmetic, is unsupported.
- Baseline invariance obligations: Preserve one deterministic exact pointwise representation, including the \(\varepsilon=0\) specialization. Probabilistic, confident, approximate, polynomial-only, or high-probability representations are not substitutes in this branch.

## Assumption Provenance Objectives

- The two `assump:` items are the only primitive conditions.
- A realized transcript and aggregate score are derived objects. Encoding one run in \((T+1)S\) coordinates is legal but is not a representation certificate.
- A finite gate/sample-history stratification would be derived. It cannot be assumed theorem-facing, and even if proved it gives no convexity, global kink continuity, exact realizability, or common linear lift.
- An exact SCO reduction, convex good-solution fibers, zero-loss target witnesses, and a target-independent feature map are theorem-critical generated outputs. No primitive/source mechanism produces the first three.
- An all-input-correct realization is a derived event. For \(\varepsilon>0\), the expectation premise does not produce it.
- No conditional local lemma can close the unconditional goal unless a prior bridge derives its generated hypotheses. That bridge is blocked.

## Mechanism-Source And Boundary Stress

### Blocked obligation B1: exact convex-reduction export

- Step ID: N/A (cannot legally be assigned to a proof step).
- Claim class: Exact-reduction/convex-fiber bridge and exact deterministic representation.
- Theorem role: Sole proposed conversion of \(O(TS)\) transcript coordinates to \(O(TS)\) deterministic dimension.
- Mechanism source: Chornomaz--Moran--Waknine, arXiv:2411.10784v1, Theorem 3, paper pages 18--19. For a finite class it converts an exact \((\alpha,\beta)\)-reduction, \(\beta<1/2\), to SCO in \(\mathbb R^d\) into an exact homogeneous-halfspace representation in \(\mathbb R^{d+1}\). Its proof requires zero transformed loss, minimax, convexity, and Hahn--Banach. Finiteness holds here, and strict source separation matches fixed \(\tau\); exactness and convexity have no discharge path.
- Source-to-claim adequacy: Conditional on a genuine exact reduction with \(d_0\le(T+1)S\), the conclusion exactly matches and gives \(d_0+1\le3TS\). The source does not identify arbitrary randomized/piecewise-analytic transcripts as SCO reductions and explicitly separates exact from approximate representations.
- Residual-to-target adequacy: Produced control is \(\mathbb E\mathcal L\le\varepsilon\); consumed interface needs zero transformed residual and convex sublevel structure. The persistent \(\varepsilon\) residual is not dominated at exact scale. Even at \(\varepsilon=0\), selected correct transcripts do not imply their label-conditioned convex hulls stay correct.
- Key positive/control term or structural source: Source convex nonnegative loss equal to zero at all target witnesses; absent here.
- Opposing defect terms: Positive risk residual, two randomness sources, \(\mathcal D\)-dependent law, nonlinear readout, nonconvex fibers, and absent reduction maps.
- Closure/dominance/absorption relation: Unsupported; no inequality turns expected risk into zero convex loss or preserves labels under convex combinations.
- Accumulation behavior / scope compatibility: Static mismatch; the exactness residual persists over the fixed horizon.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: No producer. Declaring transcript coordinates to be an SCO parameter would assume the needed interface.
- Entry-state / first-update stress result: Initialization and the first update add coordinates but no convex/exact certificate. The defect remains at \(T=1\) and at \(\varepsilon=0\).
- Baseline conclusion preserved: The exact deterministic conclusion remains the target and is not weakened.
- Producer-consumer provenance: Intended path is primitive premise -> exact convex reduction -> source Theorem 3 -> exact feature map. The first arrow is absent.
- Null or boundary regime tested: \(\varepsilon=0\), \(T=1\), fixed histories, dead units, and kink strata. None creates convex label fibers; source strict separation itself has no tie mismatch.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes; real coordinate count alone does not control exact sign-rank.
- Repair route if source is unsupported: A new exact nonconvex-algorithm-to-convex-reduction theorem would be the core unresolved bridge, not local proof work.

### Blocked obligation B2: local strata to global topological relation

- Step ID: N/A (cannot legally be assigned to a proof step).
- Claim class: Global continuity/closedness, convex-fiber, and antipodal-separation mechanism.
- Theorem role: Intended eligibility bridge for source Borsuk--Ulam machinery.
- Mechanism source: The same source's Theorem 7 requires a closed relation over compact convex \(W\) with nonempty convex antipodally disjoint fibers; Theorem 9 requires nonempty fibers, disjoint convex hulls, open inverse fibers, and compact convex \(W\). Source SCO sublevel sets supply this geometry. Branchwise analyticity is only a local direct observation.
- Source-to-claim adequacy: Transcript sets are nonlinear recursive images in an unbounded space. A finite stratification does not imply convex fibers, antipodal separation, compactness, or continuous gluing at a fixed-selector kink.
- Residual-to-target adequacy: Produced object would be a union of analytic strata; consumed object is one convex relation. No transfer relation exists, and convexification can introduce wrong-label predictors.
- Key positive/control term or structural source: Source convexity; absent in the branch.
- Opposing defect terms: Kink discontinuities, dead units, disconnected activation regions, unbounded initialization, nonlinear recursion, and convex-hull prediction error.
- Closure/dominance/absorption relation: Unsupported; retaining all boundary strata gives no global gluing/separation inequality.
- Accumulation behavior / scope compatibility: Activation choices accumulate for \(T\) updates; finite enumeration controls only count, not global convexity or separation.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: Missing; using desired label separation to prove disjoint convex hulls would assume the target obstruction.
- Entry-state / first-update stress result: At zero preactivation, \(\kappa\) assigns an update while neighboring signs can use different derivatives. Single-valuedness is not continuity; dead units may remain inactive.
- Baseline conclusion preserved: Kink/dead trajectories remain in scope; they are not discarded as null/generic.
- Producer-consumer provenance: Local formulas may follow from the recursion; no producer exports the global convex relation consumed by Borsuk--Ulam.
- Null or boundary regime tested: Zero preactivation, dead units, \(\kappa=0,1\), and later kink hits.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes; piecewise analytic parameterization alone does not imply exact low sign-rank.
- Repair route if source is unsupported: Requires a new exact prediction-preserving global convexification theorem.

### Blocked obligation B3: expected randomized success to exact shared output

- Step ID: N/A (cannot legally be assigned to a proof step).
- Claim class: Probability-mode conversion and exact derandomization.
- Theorem role: Must remove initialization/sampling randomness and produce one feature map shared across all targets/distributions.
- Mechanism source: None. The premise is pointwise in \((\mathcal D,h)\), while the trajectory law varies with \(\mathcal D\). Markov only gives a nonzero-error confidence statement; randomized representation theory does not generally exactify to sign-rank.
- Source-to-claim adequacy: Expected scalar risk does not produce a \(\mathcal D\)-independent random embedding, an exact transcript for \(\varepsilon>0\), or a linear representation. Exact-versus-randomized/approximate separations in arXiv:2003.04180 and arXiv:2411.10784v1 warn against this inference.
- Residual-to-target adequacy: Distribution-weighted error is consumed as zero error at every \(x\). Concentrating \(\mathcal D\) at different points changes every update, so pointwise certificates are incompatible runs.
- Key positive/control term or structural source: Nonnegative risk and \(1/4-\varepsilon>0\) support only approximate probability conversion.
- Opposing defect terms: Distribution-dependent randomness, nonzero \(\varepsilon\), incompatible runs, and nonlinear target-specific readouts.
- Closure/dominance/absorption relation: Unsupported. A union bound over \(2^n\) inputs lacks per-point failure control and still mixes different trajectory laws.
- Accumulation behavior / scope compatibility: Pointwise failure is nonnegative/nondecaying over \(2^n\) points with no \(TS\)-budget.
- Obligation locality classification: `idea/theorem-contract defect`.
- Noncircular closure status: No producer of a distribution-independent embedding or exact all-points event.
- Entry-state / first-update stress result: Under a point mass, every sample is that point; changing the point changes the first update, so certificates cannot be joined as one trajectory.
- Baseline conclusion preserved: At \(\varepsilon=0\), full-support risk can be zero almost surely for fixed \((\mathcal D,h)\), but the nonlinear-to-linear/convex bridge is still absent. For \(\varepsilon>0\), even the exact event is absent.
- Producer-consumer provenance: Premise -> per-pair expected risk is legal; expected risk -> shared exact representation has no producer.
- Null or boundary regime tested: \(\varepsilon=0\), \(\varepsilon\uparrow1/4\), point-mass and full-support distributions.
- Target conclusion false or theorem-critical obstruction present if source vanishes: Yes; randomized/approximate representation can be far smaller than exact dimension.
- Repair route if source is unsupported: Controller-level revision to a source-endorsed confident/probabilistic or polynomial target, following the user's fallback order; forbidden inside this exact sketch.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Realized \(q\in\mathbb R^{(T+1)S}\) | Direct protocol recursion | One initialization/path and deterministic \(\kappa\)-updates | Encoding exact; \(\mathcal D,h\), path dependence uncontrolled | One run versus shared convex parameter; no bridge | Coordinate equality records a run but gives no convex/linear interface | N/A: no positive margin exported | Attempted reduction | Coordinate count is not SCO/sign-rank |
| Exact SCO reduction, \(d_0\le(T+1)S\) | No producer; Theorem 3 consumes it | Expected risk and local formulas | Exactness, convexity, kink continuity, compactness, reduction maps uncontrolled | Residual \(\varepsilon\) versus required zero; nonlinear and convex objects differ | No valid transfer; convexification may change labels | \(1/2-\beta\) separates only after valid zero-loss hulls exist | Theorem 3 | Exactness/convexity unsupported |
| Exact feature map in \(d_0+1\) | Theorem 3 conditional on prior row | Finiteness, exact reduction, convex loss, \(\beta<1/2\) | Source controls defects only if hypotheses hold | Strict source separator gives zero residual and tie compatibility | Hahn--Banach separation of label hulls | Zero loss and \(1/2-\beta>0\) | Final theorem | Prior interface absent |
| \(\operatorname{dc}(\mathcal H)\le3TS\) | Conditional arithmetic | \(T,S\ge1\), produced \(d_0+1\) | Arithmetic controlled; \(d_0\) certificate absent | Exact if \(d_0\) exists | \((T+1)S+1\le3TS\) | Integer \(T,S\ge1\) | Final theorem | Structural input absent |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized transcript/predictor | Protocol recursion | Candidate encoding | Intended Euclidean coordinates | Primitive protocol -> transcript | `derived` | Target/distribution/path dependent; no convex interface |
| Branchwise stratum formulas | Local direct derivation proposed in `idea.md` | Candidate global relation | Intended topology bridge | Transcript -> strata -> missing relation | `derived` | No convexity/global continuity/antipodal separation |
| Exact convex-reduction certificate | None | Theorem 3 | Produce common feature map | Missing producer -> Theorem 3 | `derived` | No legal producer |
| Exact deterministic feature map | Theorem 3 after missing certificate | Final theorem | Pointwise representation | Missing certificate -> conditional theorem -> final | `derived` | Broken dependency path |
| Linear bound \(3TS\) | Arithmetic after feature dimension | Final theorem | Universal \(C=3\) for this route | Missing certificate -> theorem -> arithmetic | `derived` | Rate input absent |

## Sketch Steps

None.

The source-to-claim, convex-interface, and exact-derandomization obligations have no legal mechanism source under the unchanged setting. Assigning them stable proof-step IDs would incorrectly label discovery of the missing theorem as local proof work.

## Dependency Notes

The only hypothetical chain is
\[
\text{universal expected SGD success}
\longrightarrow
\text{exact convex reduction in dimension }(T+1)S
\longrightarrow
\text{source Theorem 3}
\longrightarrow
\operatorname{dc}(\mathcal H)\le3TS.
\]
The second arrow onward is acyclic/source-supported; the first has no producer and is essentially the unresolved bridge. There is no valid graph for step-level proof work.

## Blockers

1. **Exact-reduction/source mismatch (`idea/theorem-contract defect`).** The only located exact-dimension theorem requires an exact convex reduction. Expected-error randomized SGD provides neither zero transformed loss, convex losses, nor reduction maps; its \(\varepsilon\) residual is inadequate at exact scale.
2. **Stratification is not the missing mechanism (`idea/theorem-contract defect`).** Piecewise analytic formulas do not imply convex fibers, global kink continuity, compactness, antipodal separation, or an \(O(TS)\) common linear lift. Source Borsuk--Ulam theorems assume, rather than produce, these interfaces.
3. **No exact derandomization producer (`idea/theorem-contract defect`).** The trajectory law varies with \(\mathcal D\), and constant expected risk cannot be accumulated into a zero-error shared representation. Known randomized/approximate-versus-exact gaps preclude treating exactification as standard.
4. Repair preserving the current theorem requires a new theorem-facing mechanism amounting to the core open bridge. Polynomial or confident/high-probability targets are controller-level new-idea options under the user's fallback instruction, not legal modifications here.
