# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. Location: `## Explicit Rate Audit`, the displayed term-absorption inequalities corresponding to proof lines 662--664. Defect: the separators after the first two inequalities are written as the literal malformed token `,quad` rather than `,\quad`, so the rate audit is not LaTeX-ready. Downstream effect: the accepted step artifact cannot be translated faithfully into the paper-ready appendix without silently repairing producer text. Smallest repair direction: replace both occurrences of `,quad` by `,\quad`; no mathematical argument changes.
2. Location: `## Explicit Rate Audit`, the probability conversion corresponding to proof lines 668--671. Defect: the event alias `\mathcal Q^{MN}` is used but never defined anywhere in the proof. The proof defines the matrices `K_0^{MN}` and describes their isotropic Gram events in prose, but it does not bind this symbol. Downstream effect: the explicit-rate interface contains an unprovenanceable event and cannot be consumed verbatim. Smallest repair direction: define `\mathcal Q^{MN}` explicitly as the event `\operatorname{spec}((K_0^{MN})^{\mathsf T}K_0^{MN})\subset[1/2,3/2]` before use, or inline that event in the audit.

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
- Repair direction: None in the proposition itself; repair the two artifact-level notation defects listed above.

## Hidden Subclaim Scan

No hidden mathematical subclaim was found. The radius-to-diagonal calculation, truncated-product conditioning, altered moments, off-diagonal cancellation, Bernstein envelope and variance, exponent and dimension factor, deterministic elliptic transfer, three-pair union, and constant-to-polynomial conversion are all exposed in named units. The proof does not overclaim `\mathcal E_{\rm size}`, a raw Gram window, tangent or quotient geometry, or Haar structure. The undefined `\mathcal Q^{MN}` in the explicit-rate audit is a notation-provenance defect, not an additional proved unit.

## Target Claim Audit

Mathematically, the named units prove the accepted sketch-row claim exactly: conditional on every realized triple in `\mathcal E_{\rm cond}`, all three exact normalized pair Grams have spectrum in `[r^{-20},r^{20}]` with total failure at most `r^{-20}`, uniformly for every allowed `n,r,k`. The proof neither strengthens the result to raw coordinates nor imports `\mathcal E_{\rm size}` or any Haar conclusion. The two blocking issues are local artifact defects and do not require changing the target, assumptions, dependencies, or proof mechanism.

## Explicit Rate Audit

The substantive rate audit passes. Exposed variables, allowed hidden dependence, fixed quantities, conditional probability mode, initialization-only horizon, Gram-eigenvalue norm mode, truncation and Bernstein tolerances, the maximal-rank exponent, three-pair union, and constant-to-polynomial threshold are all explicit. The boundary `k=\lfloor r^{5/4}\rfloor` gives `k/r^2\le r^{-3/4}`, and the displayed `2^{40}` threshold suffices for the Gaussian and Bernstein comparisons. The baseline `H_M=I`, `D^{MN}=I` reduces exactly to the isotropic lemma. The section nevertheless fails artifact validity because it contains the malformed `,quad` tokens and the undefined alias `\mathcal Q^{MN}` identified in `## Blocking Issues`.

## Notation Surface Audit

The public-facing export is only `\mathcal E_{\rm gram}^{\rm norm}`. The radius event is proof local; isotropic matrices and balancing diagonals are appendix local; Bernstein variables are proof local. This is an economical and correctly scoped surface, and the proof explicitly excludes raw, size, tangent, quotient, trajectory, and Haar outputs. The sole provenance failure is `\mathcal Q^{MN}`, which is used without definition; the two literal `quad` tokens are also malformed mathematical markup.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-003-radius-diagonals}, Lemma~\ref{lem:step-003-isotropic-khatri-rao}, Proposition~\ref{prop:step-003-elliptic-transfer}, and Proposition~\ref{prop:step-003-normalized-gram-event} jointly imply the exact normalized three-pair event with the required conditional confidence. The assembly cites theorem-style names and labels, preserves the accepted dependency interfaces, and uses no bare unit IDs as mathematical authority. No proof or sketch repair is needed beyond making the producer artifact syntactically and notationally self-contained.

## Review Rationale

All mathematical obligations in `step_003` are discharged under the unchanged accepted sketch and dependencies, including the two delicate dependence issues: conditioning on the product truncation event preserves the independence needed by Bernstein while changing moments that the proof recomputes, and the balancing diagonals are transferred only pointwise without any independence claim. The remaining defects are isolated producer-text defects in the explicit-rate audit: malformed LaTeX and an undefined event alias. They are repairable within the same proof step without changing any lemma, estimate, assumption, dependency, threshold, probability mode, or target interface. Therefore `REVISE_STEP` with `Smallest Retry Target = /proof-step step_003` is the smallest controlled outcome; a fresh accepted `/proof-step-review step_003` is required after repair.
