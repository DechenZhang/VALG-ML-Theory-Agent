# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_003`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: full-radius control and dependent balancing diagonals

- Statement fidelity: The lemma proves exactly the proof-local radius event needed to control all three balancing diagonals, with no claim of scalar/Gaussian independence and no promotion to `\mathcal E_{\rm size}`.
- Proof validity: Conditional on the realized smoothing, the `3k` ambient vectors remain independent standard Gaussians. The chi-square union gives `6k e^{-n/32}`; using `k\le r^{5/4}`, `n\ge r^4\log r`, `6\le r^{3/4}`, and `r^4/32\ge30` yields `r^{-28}`. On the event, each squared radius and each product of two radii lies in `[n/2,3n/2]`, so the exact cubed pair-multiplier ratios lie in `[1/3,3]` and their positive cube roots lie in `[3^{-1/3},3^{1/3}]`.
- Cited-result and assumption audit: The chi-square bound is restated in current notation and its Gaussian, dimension, rank-window, and conditioning hypotheses are discharged. The balancing identities come from the accepted `step_002` lemma.
- Rigor checklist: The argument is uniform in `n` above the lower threshold, handles all three pairs and all components, includes the zero-radius branch in the failure event, and uses no independence between the balancing scalars and projected coefficients.
- Local adversarial test: At both radial endpoints the ratios attain only the allowed endpoint values; at `k=\lfloor r^{5/4}\rfloor` the probability exponent still dominates the column union.
- Contribution to target step: Supplies deterministic realized singular bounds for every dependent balancing diagonal.
- Verdict: PASS
- Repair direction: None.

### unit_002: rectangular isotropic Gaussian Khatri--Rao concentration

- Statement fidelity: The lemma establishes the exact two-sided `[1/2,3/2]` isotropic Gram window with failure at most `r^{-26}` throughout the accepted rank window, including `k=\lfloor r^{5/4}\rfloor`.
- Proof validity: The conditioning event `\mathcal T_W` is a product of coordinatewise events, so conditioning preserves independence across all entries and hence across row summands, while changing the common entry law to a symmetric truncated Gaussian. The proof correctly recomputes `\mathbb E\xi=0`, `\mu=\mathbb E\xi^2\in[7/8,1]`, and `\nu=\mathbb E\xi^4\le6`. For `A=Z^{\mathsf T}Z`, `B=\operatorname{diag}(A)`, and `X_a=r^{-2}(D_aAD_a-\mu B)`, the conditional mean is zero. The truncation envelope gives `\|X_a\|_{\rm op}\le18L_r^2k/r^2`. For `i\ne j`, every entry of `\mathbb E(D_aAD_a)^2` vanishes by symmetry, including the `\ell=i` and `\ell=j` terms; the diagonal is `\mu^2(A^2)_{ii}+(\nu-\mu^2)A_{ii}^2`. After subtracting the squared mean, the displayed upper bound yields `v_B\le79k/r^2`. At deviation `1/8`, Bernstein therefore has exponent at least `r^{3/4}/[64(158+96\log r)]\ge30\log r`; its dimension factor is `2k`, and `2kr^{-30}\le r^{-28}` under the rank window. The diagonal conditional mean then gives lower eigenvalue `17/32\ge1/2` and upper eigenvalue `11/8\le3/2`. The `\mathcal Z`, truncation, and conditional-Bernstein failures sum to at most `r^{-26}`.
- Cited-result and assumption audit: The Gaussian operator tail and self-adjoint matrix Bernstein inequality are restated with instantiated objects, conditional law, summand bound, variance proxy, dimension, and deviation. No unaltered Gaussian moment is used after truncation.
- Rigor checklist: Centering, off-diagonal expectations, row independence, summand norm, variance scaling, matrix dimension factor, exponent arithmetic, and conditional-to-unconditional conversion are all correct. No independence is required among the final failure events.
- Local adversarial test: The maximal aspect ratio gives `k/r^2=r^{-3/4}` and still leaves the Bernstein exponent above `30\log r`; the minimum `k=r+1` satisfies the operator-tail threshold comparison. The proof also remains valid at `\mu=7/8` and `\nu=6`.
- Contribution to target step: Supplies both spectral sides for every isotropic mode pair.
- Verdict: PASS
- Repair direction: None.

### unit_003: elliptic transfer with dependent balancing scalars

- Statement fidelity: The proposition transfers the isotropic window to the exact setting-defined normalized balanced pair matrices and makes no raw-Gram, size-event, tangent, quotient, or Haar claim.
- Proof validity: The factorization `\bar K^{MN}=(H_M\otimes H_N)K_0^{MN}D^{MN}` has exactly the normalized `1/r` convention. On the stated events, the three factors have singular intervals `[\kappa_1^{-2},\kappa_1^2]`, `[2^{-1/2},(3/2)^{1/2}]`, and `[3^{-1/3},3^{1/3}]`. Product singular-value inequalities therefore give the stated singular bounds, whose squares are exactly `[1/(2\,3^{2/3}\kappa_1^4),(3^{5/3}/2)\kappa_1^4]`.
- Cited-result and assumption audit: The accepted conditioning and Gaussianization interfaces are restated, and the Kronecker/product singular-value facts are instantiated in the exact coefficient convention. The diagonal may depend arbitrarily on `K_0^{MN}` because the transfer is deterministic on the event intersection.
- Rigor checklist: Lower and upper constants, squaring, invertibility, normalization, endpoint singular values, and all three mode pairs are correct. No false independence is used.
- Local adversarial test: Simultaneous worst-case elliptic and radial endpoints reproduce exactly the displayed `\kappa_1^4` and `3^{2/3}` losses; the isotropic lower event guarantees full column rank.
- Contribution to target step: Produces a constant spectral window for each exact normalized balanced Gram.
- Verdict: PASS
- Repair direction: None.

### unit_004: simultaneous normalized pair-Gram event

- Statement fidelity: The proposition proves the exact conditional event `\mathcal E_{\rm gram}^{\rm norm}` uniformly over the allowed dimensions, ranks, and realized triples in `\mathcal E_{\rm cond}`.
- Proof validity: Each pair of accepted Gaussian mode arrays satisfies unit_002 with failure `r^{-26}`. Although the three pairs share arrays, the union bound is valid without independence. Adding the single radius-event failure gives `r^{-28}+3r^{-26}\le4r^{-26}\le r^{-20}`. The threshold `r^{20}\ge2\,3^{2/3}\kappa_1^4` implies the constant lower endpoint is at least `r^{-20}`; since `(3^{5/3}/2)\kappa_1^4\le2\,3^{2/3}\kappa_1^4`, it also implies the upper endpoint is at most `r^{20}`.
- Cited-result and assumption audit: The proposition uses only the accepted dependency claims and the three preceding named local results. Conditioning is exactly on the realized factor triple, and all constants are uniform through the common `\kappa_1` interval.
- Rigor checklist: The all-three-pair union, polynomial-window conversion, no-upper-bound-in-`n` claim, and boundary values `k=r+1` and `k=\lfloor r^{5/4}\rfloor` are valid.
- Local adversarial test: Shared-mode dependence does not affect the union; at the maximal rank the isotropic result remains valid, and at the threshold equality both spectral inclusions remain non-strictly true.
- Contribution to target step: The four named units jointly establish the exact target event and confidence.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden mathematical subclaim was found. The radius-to-diagonal calculation, truncated-product conditioning, altered moments, off-diagonal cancellation, Bernstein envelope and variance, exponent and dimension factor, deterministic elliptic transfer, three-pair union, and constant-to-polynomial conversion are all exposed in named units. The proof does not overclaim `\mathcal E_{\rm size}`, a raw Gram window, tangent or quotient geometry, or Haar structure. The repaired explicit-rate audit now defines `\mathcal Q^{MN}` exactly as the corresponding isotropic Gram event before using it.

## Target Claim Audit

The named units prove the accepted sketch-row claim exactly: conditional on every realized triple in `\mathcal E_{\rm cond}`, all three exact normalized pair Grams have spectrum in `[r^{-20},r^{20}]` with total failure at most `r^{-20}`, uniformly for every allowed `n,r,k`. The proof neither strengthens the result to raw coordinates nor imports `\mathcal E_{\rm size}` or any Haar conclusion.

## Explicit Rate Audit

The rate audit passes. Exposed variables, allowed hidden dependence, fixed quantities, conditional probability mode, initialization-only horizon, Gram-eigenvalue norm mode, truncation and Bernstein tolerances, the maximal-rank exponent, three-pair union, and constant-to-polynomial threshold are all explicit. The boundary `k=\lfloor r^{5/4}\rfloor` gives `k/r^2\le r^{-3/4}`, and the displayed `2^{40}` threshold suffices for the Gaussian and Bernstein comparisons. The baseline `H_M=I`, `D^{MN}=I` reduces exactly to the isotropic lemma. Both displayed separators are now valid `,\quad` markup, and `\mathcal Q^{MN}` is explicitly defined for `MN\in\{BC,AC,AB\}` before the probability bounds.

## Notation Surface Audit

The public-facing export is only `\mathcal E_{\rm gram}^{\rm norm}`. The radius event is proof local; isotropic matrices, their explicitly defined events `\mathcal Q^{MN}`, and balancing diagonals are appendix local; Bernstein variables are proof local. This is an economical, fully defined, and correctly scoped surface, and the proof explicitly excludes raw, size, tangent, quotient, trajectory, and Haar outputs.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-radius-diagonals}, Lemma~\ref{lem:step-003-isotropic-khatri-rao}, Proposition~\ref{prop:step-003-elliptic-transfer}, and Proposition~\ref{prop:step-003-normalized-gram-event} jointly imply the exact normalized three-pair event with the required conditional confidence. The assembly cites theorem-style names and labels, preserves the accepted dependency interfaces, and uses no bare unit IDs as mathematical authority. The repaired producer artifact is syntactically and notationally self-contained.

## Review Rationale

The repaired producer has the correct identity for sketch attempt 10, `step_003`, unit attempt 2. Comparison with archived unit attempt 1 shows exactly three changes: the unit-attempt field, the two corrections from `,quad` to `,\quad`, and the explicit definition of `\mathcal Q^{MN}` as the isotropic Gram event already used by the proof. The four local units, estimates, assumptions, dependency interfaces, thresholds, probability mode, normalized convention, boundary cases, and target assembly are unchanged and remain valid. In particular, product truncation preserves the independence needed by Bernstein while the altered moments are recomputed, and dependent balancing diagonals are transferred only pointwise. Both prior blockers are discharged, so `ACCEPTED` with `Smallest Retry Target = None` is the controlled result.
