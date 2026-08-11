# Proof Step Review

## Step Review Identity

- Sketch attempt: 4
- Step ID: `step_002`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_002/proof.md` (SHA-256 `7b7b4247671ae955f2451e8a533547762e3f2836add40889e32e2473a123dc7a`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Absolute-Gram and Schur source bounds

- Statement fidelity: PASS. The lemma states the exact setting-defined `E_M`, `H_M`, `J_M`, and cyclic `K_M` objects and proves (R-src) together with the `J` induced row/column bound. Its assumptions are the accepted Step 001 event interface and the stable modewise Gram-margin assumption; no realized kernel is promoted to a primitive condition.
- Proof validity: PASS. Symmetry and zero diagonals of normalized Gram errors are established first. Entrywise absolute value preserves each column Euclidean norm, Cauchy--Schwarz gives the row/column `sqrt(r) nu_real` bounds, and a second columnwise Cauchy--Schwarz gives the cyclic Schur bound `nu_real^2`. The argument uses no operator-norm claim for an entrywise-absolute Gram matrix.
- Cited-result and assumption audit: PASS. The accepted Step 001 proposition is restated in current notation with the signed operator bound and normalized-Gram conventions. The only other inputs are explicitly restated elementary induced-norm and Cauchy--Schwarz facts, with their use visible.
- Rigor checklist: PASS. Diagonal entries, symmetry, finite support (`r-1` rather than an unbounded count), and the equality of row and column sums are handled explicitly. The bound remains valid when a column is zero off diagonal or when all correlations vanish.
- Local adversarial test: PASS. Dense signed correlations, a single nonzero off-diagonal entry, and the exact `H_M=0` limit all satisfy the displayed inequalities; no hidden absolute-Gram spectral estimate is needed.
- Contribution to target step: PASS. This unit supplies the complete static `H/J/K` source used by the leakage, transfer, and small-gain units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Static leakage and first-chain source budget

- Statement fidelity: PASS. The proposition proves the cyclic versions of (R-leak), the exact off-diagonal expansion of `S_{j,M,ell}`, and the global `3 r nu_real^2 (1 + sqrt(r) nu_real)` budget required by the sketch row.
- Proof validity: PASS. The leakage calculation applies the accepted realized weight ratio after the Schur column bound. Multiplication of `K_A(I+H_A)` retains the direct two-mode term and every first transitive three-label term. Nonnegativity and the row-sum bounds give the one-time sum over roots and modes; deleting the prescribed output diagonal can only reduce it.
- Cited-result and assumption audit: PASS. The accepted Step 001 weight interface and the prior static-kernel lemma are named and used in their current branch notation. Cyclic relabeling is a valid explicit symmetry of the setting-defined objects, not an imported result.
- Rigor checklist: PASS. The `t=j` and `t=ell` terms in the displayed sum are harmless because the relevant `H` diagonal entries vanish; the proof does not accidentally delete a transitive path. The weight ratio is applied only to the nonnegative leakage sum.
- Local adversarial test: PASS. A vanishing direct `j`-to-`ell` correlation still leaves the displayed transitive sum, and the all-zero-correlation limit gives zero leakage and source. The bound also covers nonuniform but `2 Gamma_star`-balanced weights.
- Contribution to target step: PASS. It exports exactly the static leakage and `S` interfaces consumed by later resolvent and ledger steps.
- Verdict: PASS
- Repair direction: None.

### unit_003: Entrywise-l1 norm of the exact transfer

- Statement fidelity: PASS. The lemma addresses the exact (R-transfer) map on the setting's zero-diagonal array domain and proves the requested `1 -> 1` bound with the correct `nu_real + eta_0` and `1 + sqrt(r) nu_real` factors.
- Proof validity: PASS. For each input coordinate the proof sums its two, and only its two, cyclic output-mode blocks. The omitted output diagonal only decreases the column sum. Root blocks are disjoint, and entrywise nonnegativity (with the explicit `|Tcal Z| <= Tcal |Z|` reduction for signed arrays) justifies the induced norm conclusion.
- Cited-result and assumption audit: PASS. The exact transfer convention is restated before use, and the prior `J`/`H` entry bounds are the only nontrivial inputs. No history, certificate, or generated row condition is assumed.
- Rigor checklist: PASS. Input/output mode orientation, `t != j` and `ell != j`, the diagonal `J` contribution, and the finite root block decomposition are all accounted for. The cyclic cases are the same indexed calculation.
- Local adversarial test: PASS. The `H=0` case leaves only the numerical padding contribution, while a single large allowed entry and a dense allowed row both obey the factorized column-sum bound.
- Contribution to target step: PASS. It supplies the l1 resolvent gap used by the next Neumann-envelope step and by the scaled `q_res` interface.
- Verdict: PASS
- Repair direction: None.

### unit_004: Fixed-root block-l2 norm of the exact transfer

- Statement fidelity: PASS. The lemma proves the exact rootwise induced norm in (J-row-gap), rather than assuming a rowwise trajectory estimate or changing the array convention.
- Proof validity: PASS. For a fixed root, the principal `J` restrictions and diagonal multipliers are the exact restrictions of (R-transfer). Their operator bounds follow from the inherited l1/infinity bounds and the entrywise `H` bound. The three output inequalities reduce to the displayed symmetric mode adjacency `A_3`; its eigenvalues give the factor 2, and taking the maximum over roots gives the declared rootwise operator norm.
- Cited-result and assumption audit: PASS. The static-kernel lemma is restated through its exact restricted matrices, and the elementary induced-norm inequality and `A_3` calculation are supplied before use. No unsupported operator norm for `|G-I|` appears.
- Rigor checklist: PASS. The transpose in the `J` block is consistent with the setting's coefficient `J_M(t,ell)`, all vectors are indexed by `L_j`, and the proof handles the smallest case `r=2`. The componentwise norm comparison is valid for arbitrary signed input because triangle inequalities are applied before the nonnegative scalar comparison.
- Local adversarial test: PASS. Principal-submatrix deletion, a one-coordinate root block, unequal mode blocks, and zero transfer coefficients all preserve the bound. The factor 2 is the exact worst-case norm of the three-mode off-diagonal adjacency, not an unexplained multiplicity.
- Contribution to target step: PASS. It supplies the independent fixed-root gap required for the rowwise Neumann envelope and `q_row`.
- Verdict: PASS
- Repair direction: None.

### unit_005: Compatible strict small-gain selection

- Statement fidelity: PASS. The proposition converts both raw transfer estimates into `q_res,q_row <= 1/4` under fixed proof-parameter choices, without adding an instance, history, or asymptotic admissibility premise.
- Proof validity: PASS. The proof keeps the numerical `P^{-D_stat}` term explicit, uses the accepted `nu_real` and `P >= 16r` bounds, and displays the three contributions in (34). The explicit choices in (30)--(31) make them at most `21/255`, `42/505`, and `21/260`, each strictly below `1/12`, so their sum is strictly below `1/4`.
- Cited-result and assumption audit: PASS. `C_nu` is selected as the already-declared fixed Gram-margin constant, and `D_stat` is selected after the accepted `D_lb` ordering. These are fixed proof parameters, not generated conditions. The accepted Step 001 event supplies every realized bound used in (32).
- Rigor checklist: PASS. The calculation is uniform for `r >= 2`, preserves the `Gamma_star` dependence, and does not use the optional `E_lb` numerical-to-structural absorption. No hidden limit, term absorption, or probability conversion is invoked.
- Local adversarial test: PASS. At `r=2` the displayed worst-case estimates still give the strict margin; as `r` grows the terms decrease. The exact `H=0,e_num=0` branch gives zero, while finite `e_num` is retained honestly.
- Contribution to target step: PASS. It closes both small-gain interfaces and completes the step's target assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The local lemma map covers the independent static-kernel, leakage/source, l1-transfer, rootwise-transfer, and parameter-selection claims. The elementary Cauchy--Schwarz, induced-norm, nonnegative-column, and three-mode adjacency facts are restated before use. The cyclic relabelings are direct instances of the displayed mode-symmetric definitions. No history, matching, certificate, Neumann envelope, row profile, or trajectory invariant is smuggled into this static step.

## Target Claim Audit

PASS. Conditional on the accepted derived `E_inst` from Step 001 and the two sketch-row primitive IDs, the proof establishes the exact setting-defined `H/J/K`, cyclic leakage, `S` budget, transfer map, both induced transfer bounds, and the strict `q_res,q_row <= 1/4` margins. It preserves the zero-diagonal array convention, retains direct and transitive source paths, and does not claim a stronger history or trajectory result. Quantifiers are uniform over all realized instances in `E_inst`, all roots and labels, and all `r >= 2` in the fixed-constant selection. The exact orthogonal/noiseless specialization is recorded as an equality branch.

## Explicit Rate Audit

PASS. The exposed dependence is stated for `r`, `n`, `k`, `kappa`, `rho` (through the setting-defined `P`), `Gamma_star`, `nu_real`, `nu_star`, `P`, `D_stat`, `eta_0`, the kernel entries, leakage terms, induced norms, and scaled gaps. Hidden constants are restricted to fixed class/proof constants and universal numerical constants and are explicitly prohibited from depending on instance, history, tape, horizon, or `epsilon`. The proof declares the fixed quantities, deterministic conditional-on-`E_inst` probability mode, static/horizon-uniform scope, exact operator/entrywise/rootwise norm modes, and the auxiliary `D_stat` selection. Every displayed numerical domination is supported by (10)--(12), (16)--(18), (20), (23)--(28), and (32)--(34), with no prose-only absorption. There is no public-rate simplification to bridge, and the baseline reduction is checked in the final audit.

## Notation Surface Audit

PASS. `E_M`, `L_j`, `J_{M,j}`, `D_{M,j}`, `A_3`, and `beta` are explicitly classified as proof-local helpers or exact restrictions. The setting-defined `H_M`, `J_M`, `K_M`, `S`, `Tcal`, `eta_0`, `q_res`, and `q_row` are the minimal public-facing derived interfaces needed downstream; none is presented as an algorithm input. No unexplained radius, event, threshold, or boundedness constant is introduced.

## Target-Step Assembly Audit

PASS. The dependency path is acyclic and complete: accepted Step 001 `E_inst` -> static kernels and source budget -> the two exact transfer norms -> strict scaled gaps. The assembly cites the theorem-style local labels, preserves the exact setting target, and exports no global-proof diagnostic as proof authority. All accepted dependency artifacts are current: the Step 001 proof hash and accepted review hash match the referenced attempt, and the reviewed Step 002 proof hash matches this review identity.

## Review Rationale

The frozen unit-attempt-1 proof is complete under the accepted sketch and setting. Each local result has an explicit theorem-style statement, valid assumption provenance, and a self-contained derivation. The potentially fragile rootwise estimate is proved by an exact restricted-block factorization and the norm-2 three-mode adjacency calculation; the static source preserves both direct and transitive paths, and the small-gain arithmetic keeps the numerical padding visible. Boundary, baseline, probability, horizon, and rate modes are all aligned with the Step 002 contract. Therefore no producer repair or sketch/interface change is required, and the smallest retry target is `None`.
