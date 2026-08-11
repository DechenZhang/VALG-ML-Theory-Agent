# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_007/proof.md` (SHA-256 `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Stable two-scale digit inactivity and top-cell support

- Statement fidelity: The lemma states the exact digit-inactivity and top-support interfaces required by the accepted `step_007` row, for every real (c,x), every sampled level, both displacement signs, and equality at the support thresholds. Its assumption basis is the named accepted cell-margin, boundary-trace, and top-residual results.
- Proof validity: If (R=|x-c|\leq3h_j/8), Proposition~\ref{prop:step-004-cell-margin} makes (Q_j^c) constant between (x) and (c). Since (h_{j+1}=2h_j), the same displacement is strictly below (3h_{j+1}/8=3h_j/4), so (Q_{j+1}^c) is also constant and the centered digit is zero. At scale (J), the same argument and (H=h_J) give (R_H^c(x)=Q_J^c(x)-Q_J^c(c)=0) for (R\leq3H/8).
- Cited-result and assumption audit: The current accepted `step_004` proof/review pair has proof hash `5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153` and review hash `e1cb7b1487f0fc30985da9c01fd7e6424a1805f54d210ba3bd400bf733093d25`; it supplies exactly the closed stable-cell implication and boundary trace used here. The current accepted `step_006` pair has proof hash `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58` and review hash `df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`; it supplies the exact top-residual definition and zero-displacement identity. No stronger dependency conclusion or primitive support condition is imported.
- Rigor checklist: At (R=3h_j/8), a negative displacement can meet only the included left cell boundary, while a positive displacement remains strictly below the excluded right boundary; scale (j+1) has additional slack. The identical half-open argument works at (R=3H/8). The proof covers (j=0), (j=J-1), negative grid indices, and selected or candidate shifted-grid boundaries.
- Local adversarial test: At (x=c), all terms vanish exactly. At either sign of the threshold displacement, both quantizers used by the digit remain constant. A center on any candidate grid is the midpoint of the selected opposite-shift cell, so no boundary-centered exception invalidates the margin.
- Contribution to target step: Establishes inclusive digit inactivity and the exact top-residual support threshold consumed by the envelope, variance, and bias arguments.
- Verdict: PASS
- Repair direction: None.

### unit_002: Strict centered-digit envelope and active-scale cutoff

- Statement fidelity: The lemma gives the required universal digit magnitude and the strict activity cutoff, without asserting the false converse that every scale outside the stable radius must activate.
- Proof validity: The accepted range (-h_j<D_j^c(y)<2h_j) at (y=x,c) implies (-3h_j<\Delta_j^c(x)<3h_j). Contraposition of `unit_001` gives (\Delta_j^c(x)\neq0\Rightarrow R>3h_j/8), equivalently (h_j<8R/3). Combining the inactive and potentially active cases proves the supported non-strict envelope ( |\Delta_j^c(x)|\leq3h_j\mathbf 1\{h_j<8R/3\}).
- Cited-result and assumption audit: The current accepted `step_005` pair has proof hash `a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239` and review hash `11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6`; it supplies exactly the strict selected-digit range, including all shifted-grid boundaries. Scale positivity is already part of the setting/dependency interface. No dither moment, localization event, or future variance conclusion is used.
- Rigor checklist: Both raw digit endpoints are strict, so their difference has the strict envelope claimed. The indicator cutoff is also strict and therefore excludes the equality (R=3h_j/8). Replacing the strict magnitude by a non-strict upper envelope is valid in the active case and preserves zero in the inactive case.
- Local adversarial test: Grid-boundary inputs cannot attain either raw digit endpoint. At exact cutoff equality the indicator is zero and `unit_001` makes the left side zero. Beyond the stable radius, cancellation may still make the digit zero, and the proof correctly makes no converse claim.
- Contribution to target step: Converts stable support and digit range into the one-level charge used by both pathwise ledgers.
- Verdict: PASS
- Repair direction: None.

### unit_003: Finite dyadic cutoff summation

- Statement fidelity: The lemma isolates the exact cardinality-free geometric-series fact needed by both activation sums, including arbitrary finite nonconsecutive subsets, strict and weak thresholds, and the empty set.
- Proof validity: For nonempty (\mathcal A) with (M=\max\mathcal A), positivity permits enlargement to indices (0,\ldots,M). The identity
  \[
  \sum_{j=0}^M h_j^\alpha
  =h_M^\alpha\frac{1-2^{-\alpha(M+1)}}{1-2^{-\alpha}}
  \]
  is the correct finite geometric sum. Since (\alpha>0), the denominator is positive and the finite numerator is strictly below one. Thus either (h_M<T) or (h_M\leq T) yields the stated strict infinite-series bound.
- Cited-result and assumption audit: No external or standard result is used as authority; the finite geometric identity is derived directly from (h_j=2^jh_0). The statement explicitly records (h_0>0), (\alpha>0), finiteness, and the threshold conditions.
- Rigor checklist: No infinite sum is interchanged with another operation. The extension from a nonconsecutive subset to all smaller dyadic scales has the correct inequality direction, and the empty-set convention is handled separately.
- Local adversarial test: A singleton at the largest permitted scale, a sparse subset, (M=0), and a scale exactly equal to the weak threshold all satisfy the displayed strict upper bound because the finite geometric factor is strictly smaller than its infinite-series limit.
- Contribution to target step: Supplies the accumulation mechanism that removes any dependence on the number of fine or coarse levels.
- Verdict: PASS
- Repair direction: None.

### unit_004: Count-free fine activation ledger

- Statement fidelity: The proposition proves the exact requested fine interface (\sum_{j\in\mathcal J_{\mathrm f}}|\Delta_j^c(x)|\leq16\min\{R,\sigma\}), explicitly including (h_j=\sigma), empty groups, (x=c), and arbitrarily many fine levels.
- Proof validity: The envelope reduces the sum to (3\sum_{h_j<8R/3}h_j). For (0<R\leq\sigma), `unit_003` gives (\sum h_j<(8R/3)/(1-1/2)=16R/3), hence the exact constant (16R). For (R>\sigma), every fine scale satisfies (h_j\leq\sigma), so (\sum_{j\in\mathcal J_{\mathrm f}}h_j<2\sigma) and the digit sum is (<6\sigma\leq16\sigma). The (R=0) case is exact.
- Cited-result and assumption audit: Only the two named earlier local results and the setting definition (\mathcal J_{\mathrm f}=\{j:h_j\leq\sigma\}) are used. Positivity of (\sigma) and the scales is part of the formal setting; no moment, probability, or level-normalizer input is assumed.
- Rigor checklist: At (R=\sigma), the first branch applies and gives the correct minimum. The transition scale (h_j=\sigma) is included in the second branch's full fine sum. Every inequality is pointwise and finite; no expectation/sum interchange or cardinality estimate occurs.
- Local adversarial test: As (\epsilon\) decreases and the number of fine levels grows, the geometric bound remains unchanged. If the fine group is empty the sum is zero. If (R\ll h_0), the strict cutoff set is empty. If (R\gg\sigma), saturation at (O(\sigma)), rather than (O(R)), gives the genuine (\min\{R,\sigma\}) conclusion.
- Contribution to target step: Exports the count-free fine activation budget with the required constant (16).
- Verdict: PASS
- Repair direction: None.

### unit_005: Moment-compatible coarse activation ledger

- Statement fidelity: The proposition states the exact weighted coarse pathwise bound for every real (c,x), with the requested displayed constant, empty-group behavior, largest sampled level, and no restriction relating (R) to (H).
- Proof validity: Multiplying the one-level envelope by (h_j^{k-1}>0) yields (3\sum_{h_j<8R/3}h_j^k). Applying `unit_003` with (\alpha=k) gives
  \[
  3\sum_{h_j<8R/3}h_j^k
  <\frac{3(8/3)^k}{1-2^{-k}}R^k.
  \]
  This strict inequality implies the stated non-strict bound. The denominator is positive for (k>1), so the displayed constant is finite and depends only on (k).
- Cited-result and assumption audit: The statement explicitly records (k>1), the named local envelope and geometric lemma, and the setting definition of the coarse group. It uses no recentered moment; rather, it produces the pathwise (R^k) charge that a later accepted dependency path may integrate.
- Rigor checklist: At (R=0), the strict cutoff set is empty and both sides are zero. At (R=3h_j/8), the corresponding scale is excluded and is exactly inactive. The proof is pointwise, finite, and cardinality-free, and it preserves the exact factor (3(8/3)^k/(1-2^{-k})).
- Local adversarial test: If (R\gg H), every sampled coarse level, including (j=J-1), may be eligible, but the finite set remains bounded by the same geometric (R^k) budget. If the coarse group is empty the sum is zero. Rare observations therefore do not create an extra level count.
- Contribution to target step: Exports the moment-compatible coarse activation budget needed by the later recentered-(k)-moment variance calculation.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Two-scale constancy and top support are in `unit_001`; strict magnitude and activity support are in `unit_002`; the finite geometric sum is in `unit_003`; and the two distinct pathwise ledgers are in `unit_004` and `unit_005`. The proof's checks of (J\geq1), smallest/top levels, the formal empty sampled-level case, and finiteness of the displayed (k)-constant are direct one-line consequences of setting quantities or the displayed geometric formula, not unlisted bridge lemmas. No moment expectation, variance, localization event, bias bound, support assumption, or future-step conclusion is smuggled into the derivation.

## Target Claim Audit

The proof establishes exactly the accepted `step_007` claim: inclusive digit inactivity, strict centered-digit magnitude, exact top support, a fine pathwise sum bounded by (16\min\{|x-c|,\sigma\}), and a coarse weighted pathwise sum bounded by (3(8/3)^k|x-c|^k/(1-2^{-k})). The conclusions are simultaneous and deterministic for all real (c,x) and all sampled levels. They cover (x=c), (R=3h_j/8), (R=3H/8), shifted-grid boundaries, (j=0), (j=J-1), (h_j=\sigma), empty groups, arbitrarily many fine levels, and arbitrarily rare (R\gg H) observations. The proof neither weakens the target nor strengthens it with an unsupported moment, distributional, probability, or support claim.

## Explicit Rate Audit

The step is rate-bearing only through deterministic activation scales and declares the exposed quantities (k,c,x,\sigma,h_j,H,J,\mathcal J_{\mathrm f},\mathcal J_{\mathrm c}). It displays both constants exactly, so no hidden constant remains; (C_k^{\mathrm{act}}=3(8/3)^k/(1-2^{-k})) depends only on fixed (k), while neither bound depends on (J), the number of levels, (D), (\lambda), (\epsilon) except through the displayed scales, or any confidence parameter. The probability mode is deterministic/pathwise, the horizon mode is every finite setting scale family, and the norm is absolute value on (\mathbb R). The proof shows every simplification inequality explicitly, performs no probability conversion or term absorption, and preserves the exact zero-displacement baseline.

## Notation Surface Audit

The setting-defined public objects (h_j,H,\sigma,D_j^c,R_H^c,\mathcal J_{\mathrm f},\mathcal J_{\mathrm c}) are unchanged. The new displayed (C_k^{\mathrm{act}}) is part of the minimal public-facing coarse certificate and has explicit provenance. The exact digit-difference alias (\Delta_j^c) is classified appendix-local; (R,\alpha,\mathcal A,M,T,\mathcal A_{\mathrm f},\mathcal A_{\mathrm c}) are classified proof-local and are direct expressions in setting notation. No unnecessary helper dictionary, unexplained threshold, free bounded quantity, or generated event is exported.

## Target-Step Assembly Audit

The assembly cites Lemma~\ref{lem:step-007-stable-support}, Lemma~\ref{lem:step-007-digit-envelope}, Lemma~\ref{lem:step-007-dyadic-cutoff}, Proposition~\ref{prop:step-007-fine-ledger}, and Proposition~\ref{prop:step-007-coarse-ledger} by paper-ready names and stable labels. The first two supply the exact one-level support and magnitude interface; the third supplies cardinality-free accumulation; and the last two supply the exact fine and coarse outputs. Together with the accurately restated current accepted dependencies, these results jointly imply every part of the binding target. The assembly uses no bare unit ID, subsection title, global diagnostic, or future proof step as mathematical authority.

## Review Rationale

Every declared local unit is valid under the unchanged accepted sketch interface, and the dependency proof/review hashes are current. The delicate equality and half-open boundary cases are handled by the accepted closed-cell margin; both geometric calculations have the correct strict cutoffs and constants; the fine argument genuinely saturates at (\min\{R,\sigma\}); and the coarse argument remains pointwise and independent of the number of active levels even for (R\gg H). The proof also satisfies the local-unit, provenance, notation, explicit-rate, hidden-subclaim, and theorem-style assembly contracts. No producer, dependency, or sketch repair is needed, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled disposition.
