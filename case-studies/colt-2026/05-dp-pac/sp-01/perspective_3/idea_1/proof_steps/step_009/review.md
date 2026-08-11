# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_009/proof.md` (SHA-256 `4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c`)
- Binding setting artifact: `perspective_3/idea_1/setting.md` (SHA-256 `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`)
- Binding accepted sketch: `perspective_3/idea_1/proof_sketch.md` (SHA-256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`)
- Binding accepted sketch review: `perspective_3/idea_1/proof_sketch_review.md` (SHA-256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`)
- Accepted dependency `step_005`: proof SHA-256 `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`; review SHA-256 `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b`
- Accepted dependency `step_008`: proof SHA-256 `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41`; review SHA-256 `5c49ef256d2a14d6f0abb365bd160f319cf7566113733f68dc76663d74f44305`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact hidden-tag usage law

- Statement fidelity: PASS. The lemma proves the exact first clause of the accepted row, conditionally on every selector value and then unconditionally, for all integers \(k\ge2,n\ge1\). It preserves the exact fixed trial count \(n\) and includes the atom \(U=0\).
- Proof validity: PASS. Conditional on \(J=j\), accepted Lemma~\ref{lem:step-008-ideal-sample-law} makes the tags \(I_1,\ldots,I_n\) mutually independent and uniform, independently of all preceding variables. Thus \(\mathbf1\{I_\ell=j\}\) are independent Bernoulli\((1/k)\) variables. Counting the disjoint success-index sets gives the displayed binomial mass function. Since that mass function is independent of \(j\), total probability gives the same unconditional law.
- Cited-result and assumption audit: PASS. The accepted `step_008` proof supplies exactly the selector and tag kernel used here, and its matching review is current and `ACCEPTED`. The proof imports no learner symmetry, hard-instance property, contradiction condition, PAC premise, or privacy premise. The `step_005` contradiction-dependent conclusions are not used.
- Rigor checklist: PASS. The conditional and unconditional probability modes are distinct and correctly related; all variables are finite; the trial count is exactly \(n\), not expected or stopped; and no conditioning on observing the hidden tag occurs.
- Local adversarial test: PASS. For \(n<k\), \(n=1\), or a realization with \(U=0\), the same mass formula applies. Conditioning further on any preceding instance realization leaves the tag product kernel unchanged by the accepted dependency interface.
- Contribution to target step: PASS. This establishes the exact \(U\sim\operatorname{Bin}(n,1/k)\) input for both tail branches.
- Verdict: PASS
- Repair direction: None.

### unit_002: Falling-factorial binomial tail bound

- Statement fidelity: PASS. The lemma supplies exactly the self-contained factorial-moment Markov inequality requested by the sketch and explicitly covers every positive integer order, including \(r>n\).
- Proof validity: PASS. The ordered-distinct-success expansion has exactly \((n)_r\) summands, each with expectation \(p^r\), proving \(\mathbb E(V)_r=(n)_rp^r\). The pointwise inequality \(\mathbf1\{V\ge r\}\le(V)_r/r!\) follows from \((V)_r=r!\binom Vr\) on the event. Taking expectations and using \((n)_r\le n^r\) for \(r\le n\) proves both bounds.
- Cited-result and assumption audit: PASS. The argument proves the standard fact directly and does not rely on an unstated concentration theorem. Its only local inputs are a binomial count, \(p\in[0,1]\), and integer \(r\ge1\).
- Rigor checklist: PASS. When \(r>n\), the ordered-tuple sum is empty, the stipulated falling factorial \((n)_r\) is zero, and \(V\le n<r\) makes the event empty. Thus neither the moment identity nor the inequality silently assumes \(r\le n\). The edge values \(p=0,1\) are also valid.
- Local adversarial test: PASS. Taking \(r=9>n\) or \(r=j+1>n\) yields a zero event and zero exact factorial moment before the looser nonnegative \((np)^r/r!\) envelope is used.
- Contribution to target step: PASS. This justifies the order-9 and order-\(j+1\) tail charges with exact finite-sample semantics.
- Verdict: PASS
- Repair direction: None.

### unit_003: Floor-eight small-mean bound

- Statement fidelity: PASS. The lemma covers the complete \(M=8\) regime, the exact boundary \(\lambda=n/k=2\), the requested \(n<k\) regime, and the possible deterministic-zero case \(n<9\).
- Proof validity: PASS. If \(\lambda\le2\), then \(4\lambda\le8\), so \(\lceil4\lambda\rceil\le8\) and the exact maximum defining \(M\) equals 8. Integer-valuedness turns \(U>M\) into \(U\ge9\), and unit_002 gives
  \[
  \Pr(U>M)\le\lambda^9/9!\le2^9/9!.
  \]
  The strict endpoint arithmetic is correct: \(9!=362880>262144=2^{18}\), hence \(2^9/9!<2^{-9}\), including at \(\lambda=2\).
- Cited-result and assumption audit: PASS. Only the exact binomial law and the locally proved factorial bound are used. No contradiction, source-cap, hard-prior, or candidate assumption is introduced.
- Rigor checklist: PASS. If \(n<k\), then \(0<\lambda<1\), so the factorial envelope is strictly below \(1/9!<2^{-9}\). If \(n<9\), \(U\le n\) makes overflow impossible. Conversely, \(M=8\) implies \(\lceil4\lambda\rceil\le8\), hence \(4\lambda\le8\) and \(\lambda\le2\); thus no floor-eight case is omitted.
- Local adversarial test: PASS. The proof survives \(\lambda=2\) with strictness supplied numerically, \(n<k\) with strictness supplied by \(\lambda<1\), and \(n<9\) with a deterministic zero event.
- Contribution to target step: PASS. This discharges one exhaustive branch and all small-mean boundary obligations.
- Verdict: PASS
- Repair direction: None.

### unit_004: Monotone factorial envelope

- Statement fidelity: PASS. The lemma proves the precise scalar monotonicity and endpoint estimate used by the accepted large-mean interface for every integer \(j\ge9\).
- Proof validity: PASS. Direct cancellation gives the exact consecutive ratio
  \[
  \frac{a_{j+1}}{a_j}
  =\frac{j+1}{4(j+2)}\left(1+\frac1j\right)^{j+1}.
  \]
  The binomial expansion proves \((1+1/j)^j<3\); for \(j\ge9\), multiplying by \(1+1/j\le10/9\) gives a strict bound below \(10/3<4\). Therefore the ratio is strictly below \((j+1)/(j+2)<1\).
- Cited-result and assumption audit: PASS. Every bound is proved in current notation. No asymptotic estimate for \(e\), external tail theorem, or hidden constant is used.
- Rigor checklist: PASS. The endpoint comparison is exact:
  \(9^{10}=3486784401<3715891200=2^{10}10!\), which is equivalent to \((9/4)^{10}/10!<2^{-10}\). Positivity permits every cancellation and comparison.
- Local adversarial test: PASS. At the weakest allowed value \(j=9\), the explicit endpoint is already strictly below \(2^{-10}\); strict ratio control then handles every larger integer without a ceiling gap.
- Contribution to target step: PASS. This supplies a uniform strict numerical envelope for the entire large-mean branch.
- Verdict: PASS
- Repair direction: None.

### unit_005: Ceiling-controlled large-mean bound

- Statement fidelity: PASS. The lemma proves the accepted large-mean branch with the exact ceiling \(j=\lceil4n/k\rceil\), exact overflow threshold \(j+1\), and the requested \(j+1>n\) convention.
- Proof validity: PASS. From \(\lambda>2\), one has \(4\lambda>8\) and hence \(j\ge9\), so \(M=j\). Integer-valuedness gives \(\{U>M\}=\{U\ge j+1\}\). Unit_002 at order \(j+1\) gives \(\Pr(U>M)\le\lambda^{j+1}/(j+1)!\). The ceiling direction is correct: \(j=\lceil4\lambda\rceil\ge4\lambda\), so \(\lambda\le j/4\); raising to the positive integer power preserves the inequality. Unit_004 then yields the strict \(2^{-10}<2^{-9}\) bound.
- Cited-result and assumption audit: PASS. The proof consumes only the accepted tag law and earlier named local results. It adds no contradiction or candidate-regime hypothesis.
- Rigor checklist: PASS. If \(j+1>n\), then \(U\le n<j+1\), and the exact \((n)_{j+1}\) term is zero; the displayed looser envelope remains valid. All factorial denominators are positive.
- Local adversarial test: PASS. For \(\lambda\) just above 2, \(j=9\) until \(4\lambda>9\), and the exact endpoint from unit_004 applies. At later ceiling jumps, \(j\ge4\lambda\) continues to point in the required direction.
- Contribution to target step: PASS. This discharges the second exhaustive branch with a stronger strict constant.
- Verdict: PASS
- Repair direction: None.

### unit_006: Exact finite-budget overflow certificate

- Statement fidelity: PASS. The proposition assembles the exact target \(U\sim\operatorname{Bin}(n,1/k)\) and \(\Pr(U>M)<2^{-9}\) for every \(k\ge2,n\ge1\), and separately states every boundary case required by the sketch.
- Proof validity: PASS. The split \(n/k\le2\) versus \(n/k>2\) is exhaustive, and units 003 and 005 provide strict bounds on the respective branches. For \(k=2,3\), \(4/k\ge1\), so \(\lceil4n/k\rceil\ge n\), whence \(M\ge n\ge U\) pathwise and overflow probability is exactly zero.
- Cited-result and assumption audit: PASS. The proposition uses the accepted `step_008` tag interface, primitive integer ranges and exact budget, and the five preceding local results. It does not assume the contradiction regime, a hard instance, learner behavior, privacy, PAC accuracy, or a candidate condition.
- Rigor checklist: PASS. The clauses for \(n<k\), \(M=8\), \(n<9\), \(U=0\), and \(k=2,3\) are compatible rather than competing cases. The probability is over the fixed-size selector/tag experiment and is not an expected-budget statement.
- Local adversarial test: PASS. At \(k=2\), \(M\ge2n\); at \(k=3\), \(M\ge\lceil4n/3\rceil\ge n\). At \(n<k\), the proof remains in the floor-eight branch, and at \(M=8\), the equivalence with \(n/k\le2\) prevents an uncovered ceiling case.
- Contribution to target step: PASS. This exports exactly the overflow certificate consumed by `step_010`, `step_011`, and `step_013`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. The conditional and unconditional count laws, the falling-factorial identity and Markov step, the \(r>n\) convention, floor-eight equivalence, strict small-mean arithmetic, scalar monotonicity, exact endpoint computation, large-mean ceiling direction, and deterministic \(k=2,3\) reductions each appear in a named unit. The stronger observation that the binomial law persists after conditioning on preceding instance variables follows directly from the accepted independent tag kernel and is not used as an unsupported new interface. The assembly cites theorem-style labels rather than bare unit IDs as mathematical authority.

## Target Claim Audit

PASS. The producer status is `COMPLETE`, and the proof establishes the unchanged accepted sketch-row claim for all integers \(k\ge2,n\ge1\): the exact fixed-size count is \(\operatorname{Bin}(n,1/k)\), and the exact event \(U>M\), with \(M=\max\{8,\lceil4n/k\rceil\}\), has probability strictly below \(2^{-9}\). All requested boundary regimes are explicit. The probability mode is over \(J,I_1,\ldots,I_n\), with no sample-size randomization, conditioning loss, asymptotic replacement, or learner randomness. No contradiction or candidate assumption is smuggled into the result.

## Explicit Rate Audit

PASS. The step exposes exactly \(n,k,M\), the proof-local ratio \(\lambda=n/k\), and the overflow probability. The constants \(4,8,2^{-9},2^{-10}\) are explicit, with no hidden dependence. The mode is an exact finite distribution plus a strict nonasymptotic probability bound at fixed horizon \(n\); no norm is used in this step. Every term comparison and ceiling direction is displayed, and the downstream statement that a bounded risk can lose at most the overflow probability is correctly left to later steps. The exact zero-overflow baselines for \(k=2,3\), the floor-eight \(n<k\) regime, and the \(U=0\) atom are preserved without a conservative replacement.

## Notation Surface Audit

PASS. The public-facing exported interface is minimal: \(U\), \(M\), the exact binomial law, and the strict overflow certificate. The appendix-local \(\lambda\) and Bernoulli indicators expose the proof split, while \(V,p,r,(v)_r,j,a_j\) are correctly classified as proof-local and eliminated from the export. Every helper is defined from primitive or accepted objects, and no notation hides a constant, probability conversion, or boundary condition.

## Target-Step Assembly Audit

PASS. Accepted Lemma~\ref{lem:step-008-ideal-sample-law} supplies the exact independent tag kernel. Lemma~\ref{lem:step-009-usage-law} proves the count law; Lemma~\ref{lem:step-009-factorial-tail} proves the finite tail tool; Lemmas~\ref{lem:step-009-small-mean} and \ref{lem:step-009-large-mean}, with Lemma~\ref{lem:step-009-envelope}, cover the exhaustive mean split. Proposition~\ref{prop:step-009-overflow} then adds the deterministic boundary reductions and exports exactly the target. Accepted `step_005` is used only to confirm compatibility with the same setting-defined integer budget; none of its local contradiction hypotheses or conclusions is invoked. No new bridge or changed dependency interface is needed.

## Review Rationale

All six local units are correct and jointly prove the exact accepted `step_009` interface. The proof preserves fixed-size probability semantics, handles factorial orders beyond the trial count, obtains strictness at both numerical endpoints, uses the ceiling in the correct direction, and proves rather than assumes the small-tag and floor-eight baselines. The dependency artifacts are current and accepted, and there is no local, dependency, or sketch defect. Therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
