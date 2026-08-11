# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_004/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Independent amplification for one target

- Statement fidelity: The lemma proves the exact first half of the accepted `step_004` row. Under Assumption~\ref{assump:tie-resolved-confident-map} and the accepted positive integer \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\), it bounds the probability that all \(r\) blocks miss one fixed target by \(2^{-r}\), using the same exact full-domain tie-resolved representation event as the setting.
- Proof validity: The proof first fixes the single witness law \(\mathcal P\) from the leading existential quantifier in the assumption. For each fixed \(h\), the event \(E_h\) contains no distribution variable, and the nonempty finite domain ensures that the universal \(\mathcal D\)-quantifier is nonvacuous; hence the assumption gives \(\mathcal P(E_h)\ge1/2\) without selecting a new law. Under the product law \(\mathcal P^r\), the coordinate failure events are independent and identically distributed, so their intersection has probability \(\mathcal P(E_h^c)^r\le2^{-r}\). This is exactly the displayed failure event.
- Cited-result and assumption audit: No external theorem is used. The iid product identity is restated in current notation and identified as the defining rectangle identity for \(\mathcal P^r\). Assumption~\ref{assump:tie-resolved-confident-map} is a primitive, explicitly conditional setting condition, while positivity and the definition of \(r\) come from accepted Proposition~\ref{prop:step-003-budget}; no generated coverage event is assumed.
- Rigor checklist: The order \(\exists\mathcal P\,\forall\mathcal D\,\forall h\) is preserved. The target \(h\) is fixed only after the common law, and all blocks use that law. The event's measurability is part of the premise that assigns it a probability, and complements and coordinate preimages are measurable under the finite product. The calculation is for the accepted integer \(r\ge1\), introduces no approximation or margin, and does not require independence between different targets.
- Local adversarial test: If the primitive success probability is exactly \(1/2\), the bound remains equality at the worst case. When \(r=1\), it reduces to the original one-map failure bound. A score equal to zero remains inside the same \(\operatorname{sgn}_{\tau}\) event and is not silently treated as failure. A target-dependent family of laws would invalidate the later common-tuple conclusion, but the leading single-law quantifier explicitly excludes that case and the proof never changes the law.
- Contribution to target step: It supplies the exact fixed-target failure estimate consumed by Proposition~\ref{prop:step-004-covering}.
- Verdict: PASS
- Repair direction: None.

### unit_002: Common deterministic exact-cover tuple

- Statement fidelity: The proposition proves the exact exported certificate from the accepted sketch: one deterministic \(r\)-tuple of \(d\)-dimensional maps, fixed before the target, for which every \(h\in\mathcal H\) has a successful block and separator on all of \(\mathcal X\). It also preserves the accepted bound \(1\le r\le7TS\).
- Proof validity: For each target, \(F_h\) is exactly the event that every block lies in \(E_h^c\), so Lemma~\ref{lem:step-004-single-target} gives \(\Pr(F_h)\le2^{-r}\). Finiteness of \(\mathcal H\) permits the union bound without any cross-target independence assumption. With \(M=\lvert\mathcal H\rvert\) and \(r=\lceil\log_2(2M)\rceil\), the displayed calculation gives \(M2^{-r}\le1/2<1\). Therefore the complementary simultaneous-coverage event has positive probability and is nonempty. Fixing one realization yields the correct order \(\exists(\phi_1^*,\ldots,\phi_r^*)\,\forall h\,\exists i\,\exists w\,\forall x\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-003-budget} is restated with \(M\ge1\), the exact definition of \(r\), and \(r\le7TS\), and its current review is `ACCEPTED`. The finite union bound is restated and justified by a pointwise indicator inequality. Every event and rate used by the proposition is either primitive, inherited from that accepted dependency, or proved by the preceding named lemma.
- Rigor checklist: The complement relation \(F_h^c=\bigcup_i\{\phi_i\in E_h\}\) gives an actual block index and then an actual separator from the definition of \(E_h\). Positive probability is used only as a probabilistic-method existence argument; no confidence parameter remains in the output. The tuple may depend on the fixed class and common law but not on the subsequently quantified target, exactly as required. No interchange of infinite unions, expectations, or limits occurs.
- Local adversarial test: At \(M=1\), one has \(r=1\), and the simultaneous event is the sole target's primitive success event with probability at least \(1/2\). If different blocks cover different targets, the union argument still supplies one common tuple because it requires only one successful block per target. If successful block scores include zeros, the event retains the same fixed tie label \(\tau\). The empty-class and \(d=0\) theorem branches were already closed by accepted `step_001` and are correctly excluded from this logarithmic remaining branch through the accepted dependency chain; no undefined \(\log_2 0\) appears. The smallest horizon \(T=1\) enters only through the already accepted deterministic budget and causes no mode change here.
- Contribution to target step: It is the exact simultaneous-coverage output consumed by `step_005`; no additional bridge is needed before block concatenation.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The proof explicitly defines the exact event \(E_h\), derives its probability from the common-law quantifier, restates the product identity, defines the uncovered events \(F_h\), proves their fixed-target bounds, restates and justifies the finite union bound, displays the ceiling-to-failure inequality, and extracts a deterministic tuple from a positive-probability event. Measurability, class finiteness, target dependence of the separator, and absence of cross-target independence are addressed explicitly. The assembly cites theorem-style named results rather than using local unit IDs as mathematical authority.

## Target Claim Audit

The proof establishes exactly the accepted `step_004` claim under its declared dependency and primitive conditional assumption. The feature law is selected once before all distributions and targets; iid repetition occurs under its single product law; the union is over the same finite class \(\mathcal H\); and the resulting tuple is fixed before the universal target quantifier. The output is deterministic, full-domain, and exact after \(\operatorname{sgn}_{\tau}\), including zero scores. It neither claims to derive the confident-map assumption from SGD nor weakens the event to risk, margin, almost-everywhere, or high-probability representation.

## Explicit Rate Audit

This step is rate-bearing through the block count and probability conversion. It exposes \(M=\lvert\mathcal H\rvert\), \(r=\lceil\log_2(2M)\rceil\), \(T,S,d\), \(\mathcal P\), and the numerical threshold \(1/2\). The inherited bound \(r\le7TS\) has a matching accepted dependency review; the local displayed inequalities account exactly for fixed-target failure \(2^{-r}\), finite-union failure \(M2^{-r}\), and the conversion \(M2^{-r}\le1/2<1\). Constants are numerical with no hidden dependence. The intermediate probability mode is under \(\mathcal P^r\), and the output mode is deterministic existence. The horizon is fixed finite \(T\), inherited only through \(r\le7TS\); the metric is exact full-domain tie-resolved sign representation. There are no auxiliary tolerances, dropped terms, norm changes, or asymptotic upgrades. The \(M=1,r=1\) baseline and exact tie behavior are preserved.

## Notation Surface Audit

The proof correctly classifies \(r\) and the deterministic covering tuple as `public-facing`; the two theorem-style local results as `appendix-local`; and \(M,E_h,F_h,G,\mathcal P^r\) and the sampled tuple as `proof-local`. Every helper is defined directly from setting objects, the primitive common law, or the accepted dependency. The events separate the two genuinely different failure scopes without creating a long exported dictionary. Step output is limited to the common tuple and block budget needed downstream.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-003-budget} supplies \(M\ge1\), the exact positive integer \(r=\lceil\log_2(2M)\rceil\), and \(r\le7TS\). Assumption~\ref{assump:tie-resolved-confident-map} supplies one target-independent law and exact per-target success at least \(1/2\). Lemma~\ref{lem:step-004-single-target} converts these inputs into fixed-target iid failure at most \(2^{-r}\), and Proposition~\ref{prop:step-004-covering} pays the complete finite union and fixes a positive-probability realization. These named inputs jointly imply the exact target-step quantifier statement with no missing local lemma, probability conversion, or dependency edge.

## Review Rationale

The submitted proof is complete under the unchanged accepted sketch. Its only high-risk transition is the per-target random representation to one target-independent deterministic tuple, and that transition is fully discharged: the leading common-law quantifier is preserved, coordinate failures multiply under iid sampling, dependence across targets is irrelevant to the finite union bound, the repetition budget makes total failure strictly below one, and fixing a successful realization leaves the exact tie-resolved event unchanged. Boundary cases are either proved locally (\(M=1,r=1\), success exactly \(1/2\), and zero scores) or legally closed before this remaining branch (\(\mathcal H=\varnothing\) and \(d=0\)). No proof, dependency, or sketch repair is required, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest correct disposition.
