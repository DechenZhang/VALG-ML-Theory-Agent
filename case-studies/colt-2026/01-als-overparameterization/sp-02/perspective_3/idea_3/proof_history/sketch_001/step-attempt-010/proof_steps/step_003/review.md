# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 10
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. **The exact face/jacket circuit inequality is an unresolved theorem-critical topology gate.** In `Blockers` item 2, attempt 10 contracts the color-0 trace edges to a connected loopless Eulerian multigraph and identifies the needed inequality
   \[
     B-2\le\sum_{M\in\{a,b,c\}}(E/2-F_M),
     \qquad\text{equivalently}\qquad F+B\le3p+2.
   \tag{37}
   \]
   Its jacket reformulation is also stated, but neither a proof nor a valid diagram counterexample is supplied. This is not merely one estimate inside the final count: it decides which topological power of \(r\) is available to any subsequent cross-visit enumeration. The revised sketch must expose a separate producer that proves (37), proves an adequate replacement, or supplies a counterexample that forces selection of a different TF route.
2. **The excess-sensitive multiplicity enumeration is a second independent theorem-critical obligation.** Even conditional on (37), `Blockers` item 3 correctly observes that an individual-diagram face bound does not count component identifications and cross-visit Wick matchings. A separate producer must sum those profiles with enough excess loss to prove
   \[
   \mathbb E\!\left[\operatorname{tr}|\widetilde E_G|^{2p_0}
      \mid A,B,C\right]
   \le 3kr\left[C_G(\kappa)\left(\frac{\sqrt k}{r}
      +\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}\right)\right]^{2p_0},
   \qquad p_0=\lceil31\log r\rceil,
   \]
   namely (21z), without a logarithmic multiplier on the leading \(\sqrt{k}/r\) term. No such enumeration is proved. Consequently (TF), quotient coercivity, \(W_0\), and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\) remain unavailable.
3. **The accepted sketch row now has a decomposition and proof-tool interface defect.** The current `step_003` row assigns all of (TF), (TC), \(W_0\), and the deficit event to one “direct gauge-fixed Terracini calculation; leave-one-component-out decoupling and matrix Bernstein.” Ten producer attempts have instead localized the remaining TF route to the two sequential obligations above, with the enumeration conditional on the topology gate. Under the explicit controller instruction to stop over-investing in this monolithic step, another `/proof-step step_003` retry would preserve the defective decomposition. The smallest repair is `/proof-sketch`: split the topology gate from the conditional multiplicity/trace-moment producer and then retain the existing TF-to-deficit assembly. This repair must preserve the exact TF theorem interface, assumptions, accepted dependencies, quotient convention, probability mode, rate, and raw-deficit output; it does not authorize theorem weakening.

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

The colored feature expansion, covariance-loop invariant, quadratic moment, and visit-local sector are represented by named units. Inequality (37), its jacket reformulation, and the excess-sensitive multiplicity estimate are explicitly identified as unresolved and are not silently assumed. The scan nevertheless finds that they are two independent theorem-critical subclaims with a strict producer-consumer order: the multiplicity argument needs a proved topological face budget, while the topology question can fail by counterexample independently of counting. They therefore require separate sketch-level obligations rather than another unnamed local lemma inside the same monolithic row. No diagnostic claim is incorrectly treated as established in the submitted proof.

## Target Claim Audit

The exact `step_003` claim remains unproved. The current proof establishes all twelve listed units, the exact Gaussian conjugation, the full colored trace expansion, the valid inequality \(F+2v\le4p+3\), the quadratic moment, and the complete visit-local/all-distinct sector. It proves neither the stronger topology gate (37) nor the conditional cross-visit multiplicity sum, so (21z), (TF), quotient coercivity, \(W_0\), and the deficit event at failure \(r^{-20}\) are not exported. Accepted dependencies remain synchronized and are not faulty. No evidence here refutes the exact TF theorem statement or justifies changing its rate, confidence, norm, or scope.

## Explicit Rate Audit

The corrected specialization now passes. For \(p_0=\lceil31\log r\rceil\), the proof displays \(p_0\le32\log r\), \(p_0/r\le\sqrt{p_0/r}\), and
\[
\frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}
\le2\sqrt{32/30}\left(\frac{\sqrt k}{r}+\sqrt{\frac{30\log r}{r}}\right).
\]
Together with Markov and the factor-16 conjugation, the safe choice \(C_{\rm TF}=32e\sqrt{32/30}\,C_G\) is valid. Conditional on a completed (21z), the trace, radial, and TC failures combine as \(r^{-40}+r^{-30}+r^{-25}\le r^{-20}\), without independence. All hidden constants and fixed quantities retain the allowed dependence, and the raw-target normalization baseline is preserved.

## Notation Surface Audit

The colored features, subsequences, mode moments, loop counts, visit counts, and visit-local sum are explicitly defined and classified proof-local. The four-colored encoding, contracted Eulerian multigraph \(K\), counts \(E,B,F_M\), circuit partitions \(H_M\), incidence cycle rank \(\beta\), and jacket deficits \(\Delta_M\) are also clearly classified as proof-local diagnostics. Inequality (37), its jacket form, and the excess-sensitive count are explicitly unproved and are not exported. The notation is suitable for a revised sketch to name two producer interfaces, but the present proof does not turn diagnostic notation into theorem authority or weaken the public surface.

## Target-Step Assembly Audit

All downstream links after (21z) are valid, including the exact specialization \(C_{\rm TF}=32e\sqrt{32/30}\,C_G\). The assembly fails before (21z): it first needs an accepted topology result such as (37), then a separately accepted excess-sensitive enumeration conditional on that result. A revised sketch should make those dependencies explicit and feed their output into the existing radial transfer, Markov conversion, TF event, and conditional deficit proposition. The final TF and raw-deficit interfaces must remain unchanged.

## Review Rationale

`REVISE_SKETCH` is the smallest controlled status. Every submitted local unit remains valid, and neither accepted dependency is defective. Attempt 10, however, establishes that the remaining TF proof is no longer faithfully represented by the accepted row's single direct concentration task: it contains an exact face/jacket topology gate that may be proved or refuted, followed only conditionally by a distinct excess-sensitive multiplicity enumeration. This changes the proof decomposition, dependency graph, and intended direct-derivation/tool interface, which the step-review contract routes to `/proof-sketch`; repeatedly rerunning the same producer would ignore both that evidence and the explicit controller instruction to stop over-investing in one step. The repair is decomposition only. It must preserve (TF) exactly, including \(\sqrt{k}/r+\sqrt{\log r/r}\), fixed-factor conditional failure at most \(r^{-20}\), the gauge quotient, all primitive assumptions and accepted dependencies, and the raw \(W_0\)/deficit output. No theorem weakening, new assumption, altered probability mode, or relaxed rate is justified.
