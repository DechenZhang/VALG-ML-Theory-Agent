# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_001/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Admissible dimensions and Gaussian full rank

- Statement fidelity: The lemma proves exactly the accepted row's simultaneous almost-sure full-column-rank claim and the needed boundary fact (k<n), under only Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}.
- Proof validity: From (k\le r^{5/4}\le n/8), the leading (k\times k) block exists. Its determinant is a nonzero polynomial, and the iid Gaussian law is absolutely continuous, so singularity has probability zero. A finite intersection gives simultaneous full rank without incorrectly invoking independence.
- Cited-result and assumption audit: The polynomial zero-set fact is restated with its hypotheses and a self-contained induction/Fubini justification. The Gaussian entry law is part of the initialization definition referenced by Assumption~\ref{assump:joint_initialization}; no generated condition is assumed.
- Rigor checklist: Quantifiers, matrix dimensions, probability mode, and equality case (k/n=1/8) are correct. Rank failure is handled as a null event, and no conditioning or lower singular-value claim is introduced.
- Local adversarial test: At the dimension boundary, for (k=1), and for arbitrary deterministic bases or (T=0), the determinant-density argument is unchanged. The proof does not require the two starts to be independent merely to intersect their probability-one rank events.
- Contribution to target step: It produces genuine (k)-planes and (n\times k) orthonormal bases, which are the premises for the Haar and fixed-span units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Haar initialization spans and independence

- Statement fidelity: The lemma establishes the exact static interface required by the sketch: each initialization span is Haar on \(\operatorname{Gr}(k,n)\), the two spans are mutually independent and independent of the shared (T), and the conditional pair law given (T) can be represented by the constant product-Haar kernel.
- Proof validity: Left orthogonal invariance of each isotropic Gaussian column gives (UG_x^M\stackrel d=G_x^M), hence invariance of its almost-sure (k)-dimensional range. The stated uniqueness argument for the invariant Grassmannian probability law is valid. Measurable-image independence then gives joint independence from (T), and the displayed integral identity verifies the constant conditional kernel directly.
- Cited-result and assumption audit: The invariant characterization of Haar measure and measurable-image independence are both restated in current notation with their assumptions discharged. The proof correctly derives independence from Assumption~\ref{assump:joint_initialization}; it does not treat Haar law or conditional independence as primitive assumptions.
- Rigor checklist: The law concerns the span rather than the basis orientation, avoiding sign or measurable-orthonormalization ambiguity. A constant kernel is a legitimate version for every tensor value because it is measurable and satisfies the defining disintegration identity, including values outside the support of (T).
- Local adversarial test: Conditioning on arbitrary realized (T), including (T=0), leaves the product-Haar law unchanged. The probability-one full-rank restriction does not alter the distribution, and arbitrary deterministic bases enter only through (T), from which both starts remain independent.
- Contribution to target step: It exports exactly the Haar and shared-(T) independence certificate consumed by `step_002`.
- Verdict: PASS
- Repair direction: None.

### unit_003: First-factor membership lifts to tensor-span membership

- Statement fidelity: The lemma states and proves the precise bridge from (X=QD) to membership of the represented CP tensor in \(\mathcal S\otimes\mathbb R^n\otimes\mathbb R^n\), including both projector identities.
- Proof validity: Every first-mode factor (x_i=Qd_i) lies in \(\mathcal S\); hence every rank-one summand and their finite sum lie in \(\mathcal H\). The tensor-product orthogonal projector fixes those summands, so the zero-leakage conclusion follows exactly.
- Cited-result and assumption audit: No external result or dependency is used. All objects and dimensions are defined in the statement, and the result is a deterministic local bridge rather than a theorem-facing assumption.
- Rigor checklist: The proof covers zero columns, arbitrary or unbounded (Y,Z), cancellations among rank-one terms, and singular factor matrices. It requires neither CP-rank uniqueness nor factor conditioning.
- Local adversarial test: If (D=0), (Y=0), or (Z=0), the represented tensor is zero and all three conclusions remain valid. Changing the orthonormal basis within the same span leaves the result unchanged.
- Contribution to target step: It supplies the named exact implication used by the algorithmic conservation proposition and prevents tensor membership from being a hidden subclaim.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact fixed-span preservation for every defined iterate

- Statement fidelity: The proposition proves the accepted algorithmic claim for both methods at every defined index, with the deliberately conditional cGD horizon and without claiming the future `step_005` line-search result.
- Proof validity: At initialization, orthogonal projection onto \(\operatorname{range}(G_x^M)\) gives (X_0^M=Q_MD_0^M). Every cALS (X)-update has the displayed exact left factor (Q_M), and later blocks do not change it. Every cGD (X)-iterate is defined by (X_t=Q_MC_t). Applying Lemma~\ref{lem:step-001-tensor-lift} therefore gives exact membership and zero leakage.
- Cited-result and assumption audit: Finite-dimensional Moore--Penrose existence is restated and used only to cover singular cALS Gram matrices, not to import least-squares optimality. The invariant is derived from the algorithm definitions; no factor boundedness, design rank, line-search termination, or trajectory event is assumed.
- Rigor checklist: Initialization, first transition, all later defined indices, both method conventions, coefficient dimensions, and the probability-one full-rank event are all handled. Singular and zero Khatri--Rao designs remain finite under the pseudoinverse, while undefined future cGD indices are correctly outside this step's quantifier.
- Local adversarial test: At (T=0), zero gradient, zero coefficients, singular block designs, and arbitrarily large finite (Y_t,Z_t), the exact left-(Q_M) representation persists. There is no leakage term to accumulate and no circular use of the downstream witness or objective limit.
- Contribution to target step: Together with unit_003, it exports (S_t^M\in\mathcal H_M) and \((I-P_{\mathcal H_M})S_t^M=0\) for every defined iterate, exactly as consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No unlisted independent nontrivial subclaim is used. Gaussian full rank, Haar identification, independence and conditional-law form, factor-to-tensor lifting, and algorithmic preservation each have a named local unit. The elementary polynomial-zero-set, invariant-measure, measurable-image, and Moore--Penrose facts are explicitly restated and discharged before use. The boundary discussion adds no new theorem authority and only stress-tests the proved units.

## Target Claim Audit

The proof establishes the exact `step_001` claim under precisely the three primitive assumptions listed in the accepted sketch and with no dependencies. It proves simultaneous almost-sure full rank, the correct Haar law and mutual/shared-(T) independence, and horizon-uniform zero leakage for every defined iterate. It neither weakens the output nor strengthens it to existence of all cGD iterates. Probability, horizon, tensor-subspace, and boundary scopes match the setting.

## Explicit Rate Audit

The rate-bearing structural dependence is preserved exactly: (k/n\le1/8<1), each span has dimension (k), full rank is simultaneous almost sure, the conditional span law has no confidence loss, and membership leakage is identically zero at every defined finite index. There are no hidden constants, auxiliary tolerances, absorbed terms, norm changes, or horizon upgrades. The exact/noiseless, (T=0), dimension-boundary, singular-design, and stationary-update baselines preserve the same conclusion.

## Notation Surface Audit

The exported surface is minimal and setting-defined: the two spans/projectors, their Haar and independence law, and fixed tensor-subspace membership. The leading block (B_M), smoothing aggregate \(\Xi\), and coefficient matrices (D_t^M) are correctly classified and used as proof-local objects; Grassmannian notation is appendix-local. No helper dictionary hides boundedness, finiteness, conditioning, or a generated invariant.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-001-full-rank} supplies the simultaneous full-rank event; Lemma~\ref{lem:step-001-haar-independence} supplies the Haar and independence interface; Proposition~\ref{prop:step-001-fixed-span}, through Lemma~\ref{lem:step-001-tensor-lift}, supplies exact membership at every defined iterate. These named results jointly imply every clause of the target claim, use no dependency artifact, and do not rely on bare unit IDs or future steps as mathematical authority.

## Review Rationale

`ACCEPTED` is warranted because every local unit is self-contained, valid under allowed primitive inputs, and sufficient for the exact accepted sketch-row claim. The two high-risk interfaces are both derived rather than assumed: isotropic Gaussian initialization gives genuine independent Haar (k)-planes, and the displayed constrained/coefficient algorithms give exact zero-leakage membership at initialization and every defined update, including singular and boundary cases. No proof, sketch, or dependency repair is needed, so `Smallest Retry Target = None`.
