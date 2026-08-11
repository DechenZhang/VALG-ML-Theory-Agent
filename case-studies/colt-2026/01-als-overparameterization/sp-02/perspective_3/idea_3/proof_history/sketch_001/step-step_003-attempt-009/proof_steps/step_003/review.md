# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 9
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The cross-visit Wick aggregate in (21z) is unproved.** In the `Blockers` section and the target-step assembly, Lemma~\(\ref{lem:step-003-colored-trace}\) proves the exact colored cyclic expansion and the individual-diagram bounds (32)--(33), while Proposition~\(\ref{prop:step-003-visit-local}\) proves the exact quadratic moment and sums the full visit-local sector. Neither result bounds the aggregate multiplicity of diagrams in which some repeated component/mode group pairs half-edges from different visits. Until that sector is bounded by
   \[
   3kr\left[C_\kappa\left(\frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}\right)\right]^{2p_0},
   \qquad p_0=\lceil31\log r\rceil,
   \]
   (21z), (TF), quotient coercivity, \(W_0\), and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\) remain unavailable. The four-colored half-edge encoding, candidate inequality \(F+v\le3p+2\), excess \(e=(3p+2-v)-F\), and proposed excess-sensitive multiplicity count are explicitly labeled unproved diagnostics and provide no proof authority. The smallest repair is a local collision-profile, face/excess, or equivalent trace-moment summation inside `step_003`.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: Exact accepted assumptions and dependency outputs are used.
- Proof validity: Direction normalization, singular-value comparison, spherical moments, and symmetry give the claimed ACG moments.
- Cited-result and assumption audit: Accepted dependency pairs are synchronized; no generated event is assumed.
- Rigor checklist: Independence, dimensions, nonvanishing, and \(\kappa\)-dependence are correct.
- Local adversarial test: Extremal conditioning preserves the \(O_\kappa(1/r)\) covariance bound.
- Contribution to target step: Supplies the angular laws used later.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The exact gauge, quotient spectrum, raw tangent range, and off-component blocks match the accepted row.
- Proof validity: Parallel/perpendicular decomposition gives the kernel and spectrum; tensor pairings give the block formula.
- Cited-result and assumption audit: Only synchronized accepted dependencies and `unit_001` are used.
- Rigor checklist: Adjoint, quotient, block, and Frobenius conventions agree.
- Local adversarial test: Gauge-null and common-scaling directions behave as claimed.
- Contribution to target step: Supplies the coercive diagonal source and operator algebra.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The exact raw (TC) event, rate, and failure budget are proved.
- Proof validity: Bounded independent component energies plus scalar Bernstein give the result.
- Cited-result and assumption audit: Bernstein is restated and discharged.
- Rigor checklist: Constants, union bound, and raw-coordinate convention are correct.
- Local adversarial test: The maximal-rank bound remains \(o(r)\).
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and the variance source

- Statement fidelity: Only exact block identities and row-variance controls are claimed.
- Proof validity: Equations (18)--(20a) and the \(O_\kappa(k/r^2)\) row scale follow from the block formula and independence.
- Cited-result and assumption audit: No tail is imported.
- Rigor checklist: Row variance is not confused with a uniform operator bound.
- Local adversarial test: Norm-first reduction loses the stated angular factor.
- Contribution to target step: Defines the exact random operator kernel.
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and raw-block lower tail

- Statement fidelity: Fixed-input and unprojected scopes remain explicit.
- Proof validity: The mean-square identities and Paley--Zygmund lower tail are correct.
- Cited-result and assumption audit: All probabilistic inputs are restated.
- Rigor checklist: No adaptive-supremum upgrade is made.
- Local adversarial test: The necessary \(\sqrt{k}/r\) scale is attained.
- Contribution to target step: Supplies fixed-input scale and route stress.
- Verdict: PASS
- Repair direction: None.

### unit_008: quotient/full-operator lower bound at the leading scale

- Statement fidelity: The diagnostic concerns the actual projected full operator.
- Proof validity: Quotient membership, retained perpendicular response, moments, and Paley--Zygmund are correct.
- Cited-result and assumption audit: Only proved quotient algebra and spherical facts are used.
- Rigor checklist: Measurability and normalization pass.
- Local adversarial test: Other components cannot cancel the retained response.
- Contribution to target step: Confirms the necessary quotient leading scale.
- Verdict: PASS
- Repair direction: None.

### unit_009: canonical data-dependent top-singular alignment test

- Statement fidelity: The result remains explicitly one-slice and diagnostic.
- Proof validity: Gaussian/chi control, singular-vector truncation, and conditional moments give the RMS interval.
- Cited-result and assumption audit: All Gaussian facts are restated.
- Rigor checklist: Conditioning, dimensions, and data-dependent choices are correct.
- Local adversarial test: Multi-slice alignment remains correctly open.
- Contribution to target step: Excludes the canonical one-slice source of an extra factor.
- Verdict: PASS
- Repair direction: None.

### unit_005: full multi-column covariance reduction and all-confidence obstruction

- Statement fidelity: The exact covariance identities and diagnostic all-confidence obstruction remain valid.
- Proof validity: The adaptive covariance representation, variance orientations, cap bounds, and all three contradictions are unchanged and correct.
- Cited-result and assumption audit: The isotropic specialization is allowed and retains independence.
- Rigor checklist: Confidence thresholds and finite-prefactor contradictions pass.
- Local adversarial test: The required large-deviation corrections remain compatible with logarithmic confidence.
- Contribution to target step: Removes false all-confidence wrappers.
- Verdict: PASS
- Repair direction: None.

### unit_010: exact elliptic-radial transfer to a Gaussian Terracini chaos

- Statement fidelity: This is a proof-local reduction of the existing TF obligation.
- Proof validity: Trace-one covariance, Laurent--Massart radial control, exact \(D\)-conjugation, and the factor-16 quotient bound are correct.
- Cited-result and assumption audit: Accepted Gaussianization and conditioning discharge every input.
- Rigor checklist: The radial failure is uniform and \(D\) need not commute with \(\Pi\).
- Local adversarial test: Allowed anisotropy remains covered by \(\|\Omega_M\|\le\kappa_1^4/r\).
- Contribution to target step: Reduces TF to the Gaussian trace moment.
- Verdict: PASS
- Repair direction: None.

### unit_011: colored cyclic trace and covariance-loop invariant

- Statement fidelity: The full lemma statement and Local Lemma Map explicitly list the primitive assumptions, accepted dependencies, and Lemma~\(\ref{lem:step-003-radial-transfer}\), and correctly identify the exact colored expansion as (31).
- Proof validity: Feature identity (29) gives the off-diagonal Gaussian Terracini Gram. Summing tangent coordinates contracts each physical mode to the cyclic Gram word on \(S_M\), with an identity trace \(r\) only when \(S_M\) is empty, proving (31). Wick--Isserlis produces covariance loops; \(\sum_M|S_M|=4p\) and \(\operatorname{tr}(\Omega_M^\ell)\le(\kappa_1^4/r)^{\ell-1}\) give (32). The visit-local reference pairing has exactly three loops. At a group with \(s_{i,M}\) visits, at most \(s_{i,M}-1\) two-pair switches reach any Wick matching, each changing the loop count by at most one. Since the number of nonempty groups is at least \(2v\), (33) follows.
- Cited-result and assumption audit: Wick--Isserlis is restated with the exact Gaussian arrays and covariance contraction.
- Rigor checklist: Cyclic indices, empty-mode handling, covariance-pair count, component adjacency restriction, and loop/free-label counts are consistent.
- Local adversarial test: A word using one tangent color has one identity loop and two nonempty mode loops; a word using multiple colors has three nonempty loops, so the reference count remains exactly three.
- Contribution to target step: Gives a valid exact trace expansion and individual-diagram invariant.
- Verdict: PASS
- Repair direction: None.

### unit_012: quadratic moment and visit-local trace sector

- Statement fidelity: The theorem statement explicitly restates Assumptions~\(\ref{assump:rank_window}\) and \(\ref{assump:independent_initialization}\), the accepted `step_001`--`step_002` dependency results, and Lemmas~\(\ref{lem:step-003-radial-transfer}\) and \(\ref{lem:step-003-colored-trace}\).
- Proof validity: For each ordered component pair, the three same-mode Frobenius contributions are \(r\chi_M\chi_N\), and the six cross-mode contributions are two copies of each remaining \(\chi_M\), proving (34) and its \(9\kappa_1^8k(k-1)/r\) bound. The visit-local matching is unique for each word. Its weight is bounded by \(\kappa_1^{16p}r^{3-4p}\); counting at most \(3^{2p}k^{2p}\) words and using \(k/r^2\le1\) proves (35). All-distinct component words have only visit-local matchings.
- Cited-result and assumption audit: Wick contraction, Gaussian covariance bounds, conditioning, and rank-window counting are supplied by the explicitly named assumptions, accepted dependencies, and prior local lemmas.
- Rigor checklist: Ordered block multiplicities, the two tangent-color cases, exponent algebra, and \(p=1\) boundary are correct.
- Local adversarial test: When \(2p>k\), the all-distinct clause is vacuous; the visit-local bound remains valid.
- Contribution to target step: Closes the exact quadratic and full visit-local sectors at the target leading scale.
- Verdict: PASS
- Repair direction: None.

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: TF--TC are explicit local premises, not exported assumptions.
- Proof validity: Quotient coercivity, projection formula, TC, Pythagoras, and raw tangent membership give the witness.
- Cited-result and assumption audit: The projection and span interfaces are correctly restated.
- Rigor checklist: Probability assembly uses only a union bound.
- Local adversarial test: Removing TF or TC breaks the corresponding control.
- Contribution to target step: Completes the deficit once TF is proved.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The colored feature expansion, covariance-loop invariant, quadratic moment, and visit-local sector are represented by named units. The cross-visit aggregate is explicitly identified as unresolved and is not silently assumed. Its completion is an independent nontrivial local lemma required before acceptance. The four-colored half-edge, bubble, face, and excess discussion is correctly classified as proof-local diagnostic material: the proposed stronger face inequality and multiplicity estimate are explicitly unproved and are not consumed by any local result or the target-step assembly. No additional hidden subclaim is treated as established.

## Target Claim Audit

The exact `step_003` claim remains unproved. The current proof establishes all prior units, the exact Gaussian conjugation, the full colored trace expansion, individual-diagram face/free-label control, the quadratic moment, and the complete visit-local/all-distinct sector. It does not sum the repeated-component cross-visit diagrams, so (21z), (TF), quotient coercivity, \(W_0\), and the deficit event at failure \(r^{-20}\) are not exported. Accepted dependencies remain synchronized and are not faulty.

## Explicit Rate Audit

The corrected specialization now passes. For \(p_0=\lceil31\log r\rceil\), the proof displays \(p_0\le32\log r\), \(p_0/r\le\sqrt{p_0/r}\), and
\[
\frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}
\le2\sqrt{32/30}\left(\frac{\sqrt k}{r}+\sqrt{\frac{30\log r}{r}}\right).
\]
Together with Markov and the factor-16 conjugation, the safe choice \(C_{\rm TF}=32e\sqrt{32/30}\,C_G\) is valid. Conditional on a completed (21z), the trace, radial, and TC failures combine as \(r^{-40}+r^{-30}+r^{-25}\le r^{-20}\), without independence. All hidden constants and fixed quantities retain the allowed dependence, and the raw-target normalization baseline is preserved.

## Notation Surface Audit

The colored features, subsequences, mode moments, loop counts, visit counts, and visit-local sum are explicitly defined and classified proof-local. The Local Lemma Map now correctly references (31), and `unit_012` now exposes its complete assumption and prior-result basis. The four-colored half-edge encoding, physical-color bubble count, candidate excess, stronger face inequality, and excess-sensitive multiplicity estimate are also classified proof-local; the last two are explicitly unproved diagnostics. No new theorem-facing condition or unsupported constant is introduced, and the step exports no unresolved diagnostic object.

## Target-Step Assembly Audit

All downstream links after (21z) are valid, and the previous TF constant error is repaired. The current assembly still lacks the cross-visit trace-moment sum, so it cannot invoke TF or the conditional deficit proposition.

## Review Rationale

`REVISE_STEP` is the smallest controlled status. Attempt 9 repairs the prior equation-reference and statement-provenance defects, and every submitted local unit passes. The exact model-specific trace representation closes the quadratic, visit-local, and all-distinct sectors without changing the accepted claim, primitive assumptions, dependencies, quotient convention, output target, probability mode, norm, or rate. The remaining cross-visit aggregate is one internal combinatorial sublemma inside the same Gaussian TF calculation; no fixed-\(p_0\) counterexample, interface-changing loss, or dependency flaw is established. Route to `/proof-sketch` only if that sector forces a changed theorem-range TF interface. The smallest producer rerun is therefore `/proof-step step_003`, followed by a fresh step review before downstream use.
