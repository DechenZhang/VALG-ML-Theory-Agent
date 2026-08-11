# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_9/proof_steps/step_002/proof.md, SHA-256 d75c95f11da92e28502228b747005659dec9020ad14f40ca98d9fdabdab5846a
- Binding setting SHA-256: 27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2
- Binding proof-sketch SHA-256: 40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8
- Binding proof-sketch-review SHA-256: 2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7
- Accepted dependency proof SHA-256: 7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a
- Accepted dependency review SHA-256: f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma - Absolute-Gram and Schur-Kernel Bounds

- Statement fidelity: PASS. The unit proves the exact setting-defined `(R-src)` column, row/column, `J`, and cyclic Schur-kernel controls on the accepted `E_inst` event.
- Proof validity: PASS. For each signed centered Gram, entrywise absolute value preserves each column Euclidean norm. Columnwise Cauchy--Schwarz gives the `sqrt(r) nu_real` row/column sums, and a second Cauchy--Schwarz calculation gives the `nu_real^2` Schur sums. Symmetry supplies the corresponding row bounds without asserting an operator bound for `|G_M-I|`.
- Cited-result and assumption audit: PASS. The accepted sketch-8 step-001 proposition is restated with current objects and its exact event outputs; generated Gram and nonvanishing facts are consumed as dependency conclusions, not reintroduced as primitive assumptions.
- Rigor checklist: PASS. Zero diagonals, all three modes, entrywise nonnegativity, and the absolute-value/sign boundary are handled explicitly.
- Local adversarial test: PASS. Dense signed correlations, a single nonzero off-diagonal, and the orthogonal limit all obey the column and Schur estimates; no sign cancellation is used.
- Contribution to target step: PASS. The named lemma supplies every static `H/J/K` interface consumed by the source and transfer units.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma - Static Leakage and First-Chain Source

- Statement fidelity: PASS. The unit establishes all cyclic leakage bounds, the exact `S=K_M J_M` definition with a deleted output diagonal, the direct and first-transitive expansion, and `(R-S-budget)`.
- Proof validity: PASS. The leakage estimate uses the Schur column sum and the accepted realized weight ratio. Nonnegative matrix row-sum multiplication gives the source bound, and the displayed expansion retains the direct path and every transitive index, including chains whose direct endpoint correlations vanish. The rootwise strengthening follows from the rowwise l1 bounds without extra multiplicity.
- Cited-result and assumption audit: PASS. Only the accepted weight-ratio conclusion and unit_001 are consumed; cyclic relabeling is an exact setting symmetry.
- Rigor checklist: PASS. The `t=j` and `t=ell` terms vanish by the zero-diagonal definitions, and deleting the prescribed diagonal can only decrease a nonnegative sum.
- Local adversarial test: PASS. A zero direct `j`-to-`ell` path may still leave a nonzero three-label chain, which the formula retains; the exact orthogonal limit makes leakage and `S` zero.
- Contribution to target step: PASS. The unit exports the complete static source interface required by the later ledger.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition - Exact Two-Norm Lifted Transfer Bound

- Statement fidelity: PASS. The proposition targets the exact cyclic transfer in the setting and proves both the entrywise-l1 and rootwise-block-l2 bounds with the advertised dependence on `nu_real` and `eta_0`.
- Proof validity: PASS. The transfer is decomposed into independent fixed-root coefficient blocks. Each input coordinate has exactly two cyclic output destinations, giving the displayed column-sum bound; each output row has the displayed two-term bracket and the corresponding `J` column sum. The nonnegative row/column-to-spectral inequality then gives the rootwise bound, and the direct-sum structure prevents an extra `r` or `sqrt(r)` factor.
- Cited-result and assumption audit: PASS. `H`, `J`, and the event outputs come from the accepted dependency and unit_001; the finite-dimensional norm comparison is restated and proved in current notation. The argument extends the nonnegative coefficient map to arbitrary signed input arrays only through triangle/norm inequalities and does not add a history condition.
- Rigor checklist: PASS. Root preservation, deleted diagonal coordinates, mode orientation, symmetry of `J`, and the induced norm modes are all explicit.
- Local adversarial test: PASS. Sparse and dense rows, unequal mode blocks, `r=2`, zero structural correlations, and the finite numerical padding satisfy the same row/column accounting.
- Contribution to target step: PASS. The two raw transfer estimates are exactly the interfaces used by the small-gain proposition.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition - Compatible Static Small-Gain Selection

- Statement fidelity: PASS. The proposition derives both `q_res,q_row <= 1/4` from fixed proof-constant choices and the accepted static event, while retaining the structural, weight-ratio, and numerical terms in the displayed inequalities.
- Proof validity: PASS. The bound `P >= 32 r^2` follows from the binding parameter domain and `k >= r`; `1+sqrt(r) nu_real <= 2` follows from the accepted Gram margin. Equations `(A19)--(A21)` separate the linear structural, quadratic padded-structural, and finite numerical contributions, and `(SG-struct)`/`(SG-num)` bound them independently. Increasing `D_stat` preserves the numerical inequality. The exact `H=e_num=0` specialization correctly gives zero transfer and zero gaps.
- Cited-result and assumption audit: PASS. The accepted step-001 proposition supplies the realized Gram and weight outputs, while the remaining parameter-domain facts used in `(A19)` are binding setting conditions. No lower-tail event or trajectory invariant is silently assumed.
- Rigor checklist: PASS. The scalar inequalities are monotone for `r >= 2`, the endpoint `r=2` is checked explicitly, constants remain fixed and provenance is stated, and the exact-limit branch is separated from finite numerical padding.
- Local adversarial test: PASS. The smallest allowed rank/domain values are covered by the endpoint comparison, `nu_real=0` keeps the finite padding visible on the raw branch, and the exact numerical specialization removes it only in the explicitly declared baseline.
- Contribution to target step: PASS. This unit closes both required small-gain margins and makes the Neumann interfaces valid downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The four named units cover the absolute-Gram conversion, leakage/source expansion, both transfer norms, and the simultaneous constant selection. The elementary matrix norm comparison and cyclic mode accounting are stated before use. No independent event, history, trajectory, row-profile, or absolute-Gram operator claim is hidden in the assembly prose.

## Target Claim Audit

PASS. On the accepted sketch-8 `E_inst` interface, the proof derives the setting-defined `H_M,J_M,K_M,S`, all cyclic leakage estimates, `(R-S-budget)`, the exact transfer, both raw norm bounds, and `q_res,q_row <= 1/4`. Quantifiers are uniform over modes, roots, labels, and later finite prefixes because the exported objects are static. The target frame, probability mode, and exact orthogonal/noiseless interface are unchanged.

## Explicit Rate Audit

PASS. Exposed variables include `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta_0,D_stat,C_0,C_eta,C_nu` and the realized kernels. Hidden constants are restricted to the fixed class/protocol/proof constants and not to the realized instance, history, tape, horizon, or `epsilon`. The proof is deterministic conditional on the once-drawn event and horizon-uniform over later finite prefixes. Matrix induced norms, entrywise array l1, rootwise block-l2, and Euclidean column norms are identified. Structural `nu_real`, padded `Gamma_star nu_real^2`, and numerical `P^(-D_stat)` terms are displayed separately before the explicit `(SG-struct)` and `(SG-num)` inequalities; no probability conversion or prose-only absorption is used.

## Notation Surface Audit

PASS. `nu`, `E_M`, `Z_j`, and `B_j` are explicitly proof-local aliases. `H_M,J_M,K_M,S,mathcal T,q_res,q_row` remain the setting-defined public interfaces. The source rootwise estimate and scalar small-gain inequalities are appendix-local strengthening/selection data and do not export unnecessary helper dictionaries.

## Target-Step Assembly Audit

PASS. The dependency path is acyclic: accepted step-001 outputs feed unit_001; unit_001 feeds unit_002 and unit_003; unit_002 and unit_003 feed unit_004; and the four named results jointly imply the exact sketch-row output. No archived sketch-6 artifact, global diagnostic, or future step is used as proof authority.

## Review Rationale

The current artifact matches the frozen sketch-8 identity and exact proof hash. Every nontrivial local claim has a theorem-style statement and a corresponding derivation. The absolute-Gram argument avoids the invalid operator comparison, the source expansion preserves direct and transitive paths, and the fixed-root transfer calculation proves the rootwise norm without dimension loss. The small-gain selection exposes all structural and numerical terms and preserves the declared exact-limit baseline. No proof-local, dependency, sketch-interface, rate, or baseline repair is required; `ACCEPTED` with no retry is the smallest sound status.
