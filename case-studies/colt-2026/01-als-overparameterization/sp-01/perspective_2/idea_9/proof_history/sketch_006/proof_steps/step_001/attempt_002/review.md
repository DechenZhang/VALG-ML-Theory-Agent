# Proof Step Review

## Step Review Identity

- Sketch attempt: 6
- Step ID: step_001
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_9/proof_steps/step_001/proof.md, SHA-256 0a265acb4b19c807fe4184928384e872355be1ef4bc599a64eaaed172ba04882

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. Location: the theorem-style statements in units 001--005 and the corresponding Local Lemma Map rows. Defect: setting assumptions are still written as bare `assump:...` text, and units 002 and 005 refer to "the six primitive assumptions listed in Allowed Assumptions And Dependencies" rather than restating the stable assumption references. The review contract requires each local statement to be self-contained and to cite setting assumptions in LaTeX-ready form such as `Assumption~\ref{assump:base-column-conditioning}`. Downstream effect: the named local results do not expose a complete, independently auditable assumption basis even though the mathematical derivations use the correct conditions. Smallest repair: enumerate the exact assumption IDs in every map row and theorem statement, using `Assumption~\ref{assump:<slug>}` (and `Assumptions~...` where appropriate); retain the auxiliary rank citation in unit 003.

## Per-Lemma Audit

### unit_001: lemma - Perturbation-Operator Concentration

- Statement fidelity: The simultaneous relative-perturbation event exactly matches the first part of the accepted step claim.
- Proof validity: The quarter-net reconstruction, chi-square bound, and three-mode union correctly yield `P(E_str)>=1-r^(-30)` and `||W_M||_op<=3 kappa rho`.
- Cited-result and assumption audit: Result G1 is restated and its Gaussian/dimension hypotheses are discharged. The statement's assumptions are not cited with stable `Assumption~\ref` references.
- Rigor checklist: Constants, quantifiers, hidden dependence, and the once-drawn probability mode are explicit; the `r>=2` boundary is covered.
- Local adversarial test: The minimum dimension and minimum base-column norm preserve the net and inverse-scale bounds after fixing `C_dim`.
- Contribution to target step: Valid producer of the structural perturbation event.
- Verdict: REVISE_STEP
- Repair direction: Replace bare assumption IDs in the map and statement with explicit stable assumption references.

### unit_002: lemma - Normalized-Column and Gram Transfer

- Statement fidelity: The norm, product-weight, and realized-Gram interfaces match the sketch row.
- Proof validity: The `beta<=1/20` reserve, normalized-column perturbation estimate, Gram transfer, and `(21/19)^3<2` weight comparison are valid.
- Cited-result and assumption audit: Unit 001 is named and the six primitive conditions are the right ones, but the statement's phrase "six primitive assumptions listed..." is not a self-contained assumption basis and uses no `Assumption~\ref` citations.
- Rigor checklist: Dependence on fixed margin constants and the structural event is explicit; no probability-mode upgrade is hidden.
- Local adversarial test: Boundary base norms and `beta=1/20` still give nonvanishing columns, the factor-two weight ratio, and the Gram reserve.
- Contribution to target step: Valid producer of all realized norm, weight, and modewise-Gram controls after statement repair.
- Verdict: REVISE_STEP
- Repair direction: Enumerate all six stable assumption references directly in the statement and map.

### unit_003: proposition - Pair/Triple Conditioning and Exact Target

- Statement fidelity: Pair/triple conditioning, tensor norm, exact representation, and guard conclusions match the target; the repaired `Assumption~\ref{assump:rank-regime}` correctly supplies `k>=r` for padding.
- Proof validity: Schur/Kronecker compression and the exact tensor Gram identity give the displayed `1/16`, `15/16`, and `17/16` bounds; the rank-k padding is now valid.
- Cited-result and assumption audit: Unit 002 and Result G3 are named, and the auxiliary rank source is explicit. The other setting assumptions remain bare text rather than stable `Assumption~\ref` citations.
- Rigor checklist: The exact target is nonzero, the pair/triple bounds are uniform, and the radius guard follows from the realized norm upper bound.
- Local adversarial test: The previously failing `k<r` case is excluded by the cited rank assumption; no remaining boundary break was found.
- Contribution to target step: Valid producer of conditioning, tensor norm, and `Q^star` after assumption-reference repair.
- Verdict: REVISE_STEP
- Repair direction: Convert every remaining bare setting ID in the proposition statement/map to explicit stable assumption references.

### unit_004: lemma - Disjoint-Pair Gaussian Lower Tail

- Statement fidelity: The derived `E_lb` target and both exported probability bounds match the accepted sketch interface.
- Proof validity: The disjoint-pair conditional variance floor, uniform Gaussian small-ball estimate, conditional independence, and `P` scale calculation correctly give the `r^(-40)` structural-intersection bound and the `r^(-20)` unconditional bound.
- Cited-result and assumption audit: The repaired statement explicitly names unit 001 and unit 002 and their required conditions. Its primitive assumptions are still bare IDs, so the local statement is not contract-complete.
- Rigor checklist: Arbitrary conditional means, `floor(r/2)>=1`, fixed `D_lb=60`, and null zero-column events are handled.
- Local adversarial test: The norm floor used in the conditional variance is now supplied by unit 002; dropping `E_str` after the event inclusion preserves the inequality.
- Contribution to target step: Valid producer of the finite-smoothing lower-tail branch after citation-format repair.
- Verdict: REVISE_STEP
- Repair direction: Use explicit `Assumption~\ref` references for all primitive conditions in the statement and map.

### unit_005: proposition - Once-Drawn Instance Assembly

- Statement fidelity: The intersection event, raw complement, probability mode, and exact-limit baseline match the target step.
- Proof validity: The repaired unit 004 exports the `r^(-40)` intersection estimate consumed here, so the event probability and assembly are valid.
- Cited-result and assumption audit: Units 002--004 are named; the phrase "six primitive assumptions" remains non-self-contained and must be expanded to stable references.
- Rigor checklist: The raw branch does not absorb numerical terms, and the formal exact `H=e=0` baseline is kept separate from finite smoothing.
- Local adversarial test: Using the exported `r^(-40)` bound gives `P(E_inst^c)<=r^(-30)+r^(-40)<r^(-10)` for all `r>=2`.
- Contribution to target step: Valid final assembly once its assumption basis is written in the required form.
- Verdict: REVISE_STEP
- Repair direction: Enumerate the stable primitive assumption references in the proposition statement/map.

## Hidden Subclaim Scan

No new mathematical hidden subclaim was found after the repairs. The lower-tail intersection estimate is now stated and exported by unit 004, the rank-padding source is named, and all local units have paper-ready titles and stable labels.

## Target Claim Audit

With the cited rank regime, the proof establishes the exact target claim: simultaneous realized norm/Gram/weight controls, pair/triple conditioning, the two-sided Frobenius norm bound, exact rank-k representation, `E_lb`, and `P(E_inst)>=1-r^(-10)`. The only remaining defect is the statement-level assumption citation format, not mathematical target fidelity.

## Explicit Rate Audit

The proof exposes `n,r,k,kappa,rho,Gamma_star,nu_base,nu_star,P,D_lb`, fixed and hidden dependences, once-drawn high-probability mode, no trajectory accumulation, and all relevant norm modes. The `r^(-30)`, `r^(-40)`, `r^(-20)`, and `r^(-10)` conversions and term inequalities are displayed. The rank-regime auxiliary source and exact-limit baseline are explicit. No rate loss or hidden dependence was found.

## Notation Surface Audit

The repaired artifact classifies proof-local aliases (`m_{j,M}^{raw}`, `C_sb`, and the Gaussian/net abbreviations), appendix-local `E_str`, and public-facing `E_lb`, `nu_lb`, and `E_inst`. The exported surface is minimal and no notation defect remains.

## Target-Step Assembly Audit

The named local results and cited tools now form a valid dependency chain, and the assembly uses only conclusions stated by those results. The chain will pass once every theorem-style statement and map row uses explicit stable assumption references rather than bare `assump:` prose.

## Review Rationale

`REVISE_STEP` is the smallest required status. Attempt 2 repaired all substantive derivation, dependency, rank-domain, probability-interface, naming, and notation issues. The remaining defect is a local artifact-contract formatting/provenance issue that can be corrected without changing the target, assumptions, dependencies, or proof roadmap; no sketch revision is needed.
