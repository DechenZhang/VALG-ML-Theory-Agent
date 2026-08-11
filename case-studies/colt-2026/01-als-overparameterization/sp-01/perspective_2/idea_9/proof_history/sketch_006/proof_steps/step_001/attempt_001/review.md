# Proof Step Review

## Step Review Identity

- Sketch attempt: 6
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_9/proof_steps/step_001/proof.md, SHA-256 668525837d83276310b914b0e0fbab1d7e22f16c6c40c948367126b4d144b32e

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. Location: Local Lemma Map, all five Local Derivation headings, Local-result application map, and Target-Step Assembly. Defect: every non-atomic unit is headed only by an audit ID and type, with no paper-ready theorem-style title and no declared stable label, while the proof repeatedly cites undeclared labels such as `lem:p2-i9-s6-step001-perturbation` and `prop:p2-i9-s6-step001-target`. Downstream effect: no named local result is valid proof authority for the application map or assembly. Smallest repair: give every unit a paper-ready title and explicit stable label, and make the map and assembly cite those declared named results.
2. Location: unit_003 statement and proof, especially the `k-r` joint-zero padding. Defect: the proof claims an exact rank-k target while neither its allowed-assumption interface nor unit_003 cites `assump:rank-regime` or otherwise states `k>=r`. The assertion that no rank inequality is used conflicts with the displayed padding. Downstream effect: for the stated six-assumption local interface, `Q^star` need not be a defined rank-k state. Smallest repair: cite the branch-binding `assump:rank-regime` explicitly as the auxiliary domain source for `k>=r` in the allowed interface and unit_003, without changing the six assumptions used for the random event.
3. Location: unit_004 statement and proof. Defect: its statement cites only four primitive assumptions and `E_str`, but its proof uses the two-sided realized norm bounds from unit_002. Those bounds require the normalization result and, in particular, the modewise Gram margin that makes `beta<=1/20`; `E_str` alone does not provide them. Downstream effect: the conditional variance floor and raw-to-normalized threshold transfer are not justified by the unit's stated basis. Smallest repair: cite the named unit_002 normalization result, with its full assumption basis, in unit_004's statement and derivation.
4. Location: unit_005 proof and Target-Step Assembly. Defect: unit_005 invokes `P(E_str intersect E_lb^c)<=r^(-40)`, but unit_004's formal conclusion exports only `P(E_lb^c)<=r^(-20)`. Downstream effect: the assembly consumes a proof-body intermediate that is absent from the named result's statement. Smallest repair: either export the intersection estimate in unit_004's statement or assemble with the already stated bound `P(E_inst^c)<=P(E_str^c)+P(E_lb^c)<=r^(-30)+r^(-20)<r^(-10)`.
5. Location: unit_002 and Notation And Assumption Notes. Defect: the one-off alias `m_{j,M}^{raw}` and the small-ball constant `C_sb` are introduced but not assigned a public-surface classification; the alias also duplicates the setting's mode-specific realized-column notation. Downstream effect: the notation-surface contract is incomplete. Smallest repair: inline the realized columns or classify the alias as proof-local, and classify `C_sb` as a fixed proof-local absolute constant.

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The stated simultaneous relative-perturbation event matches the first part of the sketch row.
- Proof validity: The quarter-net reconstruction, chi-square Chernoff bound, three-mode union bound, and multiplication by the inverse base-column scale correctly give `||W_M||_op<=3 kappa rho` with failure at most `r^(-30)` after fixing `C_dim` sufficiently large.
- Cited-result and assumption audit: Result G1 is restated and derived in current notation, and its Gaussian and dimension hypotheses are discharged. The unit nevertheless has no declared theorem-style title or label.
- Rigor checklist: Quantifiers, constants, probability mode, and the `r>=2` boundary are consistent.
- Local adversarial test: At the minimum allowed dimension and minimum base-column norm, the fixed `C_dim` and the factor `kappa` give the advertised bounds; no break was found.
- Contribution to target step: It supplies the structural perturbation event needed for normalization.
- Verdict: REVISE_STEP
- Repair direction: Add a paper-ready title and declare the stable label already used by later references.

### unit_002: lemma

- Statement fidelity: The norm, product-weight, and signed operator-Gram conclusions match the structural event interface.
- Proof validity: The `beta<=1/20` reserve, normalized-column perturbation bound, Gram perturbation estimate, and `(21/19)^3<2` weight comparison are valid under the six stated assumptions.
- Cited-result and assumption audit: The primitive assumption IDs and unit_001 output are adequate. The unit lacks a declared named-result label, and its one-off raw-column alias is not classified.
- Rigor checklist: The dependence on fixed `C_sm,C_nu`, the deterministic base triple, and the once-drawn event is explicit; no probability upgrade occurs here.
- Local adversarial test: Minimum and maximum base norms and the boundary `beta=1/20` preserve nonvanishing, the factor-two weight ratio, and the Gram reserve.
- Contribution to target step: It produces every realized norm, weight, and modewise Gram input used later.
- Verdict: REVISE_STEP
- Repair direction: Add the missing theorem-style title/label and inline or classify `m_{j,M}^{raw}`.

### unit_003: proposition

- Statement fidelity: The pair/triple conditioning and tensor-norm claims match the row, but the exact rank-k target conclusion silently adds the unlisted domain requirement `k>=r`.
- Proof validity: Schur/Kronecker compression correctly gives the pair and triple bounds, and the exact Gram identity correctly yields the Frobenius bounds and nonzero target. The `k-r` zero-slot augmentation is not valid under the unit's stated assumption basis.
- Cited-result and assumption audit: Result G3 is a correct current-notation finite-dimensional identity. `assump:rank-regime` is missing from the exact padded-target claim, and the proposition has no declared title/label.
- Rigor checklist: The constants `15/16`, `17/16`, and the active-slot radius bound are correct once the target state is defined.
- Local adversarial test: Allowing `k<r` under the six listed event assumptions makes `k-r` negative and breaks the claimed rank-k representation; this verifies the provenance defect.
- Contribution to target step: It would produce the exact target and guard interface after the rank-domain source is stated.
- Verdict: REVISE_STEP
- Repair direction: Cite `Assumption~\ref{assump:rank-regime}` for `k>=r`, and add a paper-ready title and stable label.

### unit_004: lemma

- Statement fidelity: The intended `E_lb` lower-tail event and fixed exponent match the accepted sketch interface.
- Proof validity: Conditional on the realized norm bounds, the disjoint-pair Gaussian variance floor, uniform small-ball estimate, conditional independence, and `P` domination correctly yield the displayed `r^(-40)` structural-intersection estimate and the weaker unconditional `r^(-20)` bound.
- Cited-result and assumption audit: Result G2 is correctly restated, but the unit's statement does not cite unit_002, whose norm floor and ceiling are used twice. The unit also lacks a declared title/label.
- Rigor checklist: Arbitrary conditional means, `m=floor(r/2)>=1`, fixed `D_lb=60`, and zero-column null events are handled.
- Local adversarial test: Under `E_str` without the modewise-margin normalization conclusion, `kappa rho` need not be small and the claimed norm floor/ceiling is unavailable; the stated assumption basis therefore fails even though the full branch assumptions repair it.
- Contribution to target step: The derivation supplies the correct finite-smoothing lower-scale branch after its provenance is repaired.
- Verdict: REVISE_STEP
- Repair direction: Add the named normalization result and its assumption basis to the statement, and declare a theorem-style title/label.

### unit_005: proposition

- Statement fidelity: The event intersection, raw complement, probability mode, and exact-limit baseline match the target step.
- Proof validity: The target probability follows from the stated unit_001 and unit_004 conclusions, but the written proof instead consumes unit_004's unstated stronger intersection estimate.
- Cited-result and assumption audit: All required local producers are identified, but their labels are undeclared and one invoked quantitative conclusion is not in the producer statement.
- Rigor checklist: The raw finite-smoothing branch and the formal `H=e=0` baseline are correctly kept separate.
- Local adversarial test: Replacing the hidden `r^(-40)` intermediate by the stated `r^(-20)` lower-tail failure still gives `r^(-30)+r^(-20)<r^(-10)` for every `r>=2`, so the defect is locally repairable.
- Contribution to target step: It assembles the requested once-drawn event once the named-result interfaces are made valid.
- Verdict: REVISE_STEP
- Repair direction: Use only stated local-result conclusions or promote the intersection bound, and add the missing theorem-style title/label.

## Hidden Subclaim Scan

The stronger estimate `P(E_str intersect E_lb^c)<=r^(-40)` is proved inside unit_004 but not exported in its statement, then used as an independent quantitative input by unit_005. The repeated `Lemma/Proposition \ref{...}` references are also unsupported because none of their labels is declared. No other hidden independent mathematical subclaim was found.

## Target Claim Audit

The Gaussian, normalization, conditioning, tensor-norm, lower-tail, and event-probability calculations support the requested claim under the intended branch assumptions. The exact rank-k `Q^star` conclusion is not established under the submitted allowed interface because `k>=r` is unstated. The proof therefore does not yet establish the exact target step with valid assumption provenance and named-result assembly.

## Explicit Rate Audit

The proof exposes `n,r,k,kappa,rho,Gamma_star,nu_base,nu_star,P,D_lb`, its fixed and hidden dependences, the once-drawn probability mode, horizon mode, and norm modes. The displayed term comparisons are quantitative, and the exact-limit baseline reduction is preserved. The admissibility list must add the branch-binding rank source for the padded target, and the probability assembly must use a conclusion actually exported by unit_004. No other rate-category loss was found.

## Notation Surface Audit

Most helper matrices and events are correctly classified as proof-local, appendix-local, or public-facing. The raw-column alias `m_{j,M}^{raw}` and `C_sb` are omitted from that classification, and the former is a one-off duplicate of setting-defined columns. The step otherwise exports only `E_inst`, `E_lb`, `Q^star`, and the required structural bounds.

## Target-Step Assembly Audit

The derivational chain is mathematically repairable, but the current assembly is invalid because it cites undeclared local-result labels, consumes an unexported `r^(-40)` estimate, and reaches the rank-k target without a stated `k>=r` source. These are local proof/interface defects; no dependency or sketch-row change is required.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The accepted sketch already binds the branch rank and fixes the exact event, target, probability, and lower-tail interfaces. The producer can repair the artifact locally by declaring named theorem-style units, restoring the omitted assumption/result provenance, assembling from stated conclusions, and completing notation classification. No target claim, dependency, mechanism source, probability mode, or sketch decomposition needs to change.
