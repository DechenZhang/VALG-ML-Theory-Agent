# Proof Step Review

## Step Review Identity

- Branch: `perspective_1/idea_7`
- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_008/proof.md`
- Reviewed proof SHA-256: `66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1`
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Accepted step_006 proof/review SHA-256: `ea92dd21a1780968e93c54c6078fefa05404e117a45f255d9747ce2d6da0f34b` / `c1ac10f07c01cd32a005ddce367a168fc4361a2524a017e90f90a00589e5ce21`
- Accepted step_007 proof/review SHA-256: `67447235b30c97cb32359a421ff0e2ff040d889f5c1f350cf0dea5c0c576be7e` / `56f5685e8e9e03c8e8a5a9dda8c0d32fcc0a3e0b6298be7d33c214437ae82c19`
- Transitive E_sm proof/review SHA-256: `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207` / `da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: observable seed decomposition

- Statement fidelity: PASS. The lemma targets the exact sketch interface and explicitly states the orthogonal decomposition, the orthogonality relation, the stronger `N_M^0=0` conclusion, and both induced coefficient bounds. Its assumptions are the accepted geometry, gauge, and selected row/column interfaces.
- Proof validity: PASS. The proof-only permutation and product-one sign gauge identify the normalized observable seed with the selected oriented factors without changing any represented rank-one term. The accepted step_007 span identity gives `P_M=G_M A_M`; since `G_M` has full column rank under `E_sm`, the orthogonal projection definition makes `N_M^0=(I-G_MG_M^\dagger)P_M=0` exactly and `C_M^0=A_M-I`. The inherited `7 omega` row and `44 omega` column bounds therefore imply the requested `48 omega` bound, and the perpendicular-column bound follows without dividing by `tau_r`.
- Cited-result and assumption audit: PASS. `E_sm`, `E_gauge`, and `E_row` are accepted derived interfaces, with `E_sm` traced to the hash-pinned step_001 geometry result. No landing state, generated basin, or future invariant is used. The projection is in the current realized-factor convention and its full-rank premise is discharged by `q_real<=q_*<1`.
- Rigor checklist: PASS. The decomposition is unique in the exact target span; signs are handled before comparison with the observable third factor; the zero-perpendicular branch is valid for every stored post-Jacobi representative. The `q_real=0` boundary remains well-defined, and a zero observable scalar is rejected by the setting before `P_M^0` is formed.
- Local adversarial test: PASS. Mixed representative signs, a negative raw `theta_j`, and an exact orthogonal component all retain the same product-one chart; the exact component yields `C_M^0=N_M^0=0`. If the target scalar vanishes, the proof does not take a logarithm and correctly follows the observable failure branch.
- Contribution to target step: PASS. Supplies the exact directional and perpendicular seed fields used by the best-scalar and landing interfaces.
- Verdict: PASS
- Repair direction: None

### unit_002: best-scalar transfer

- Statement fidelity: PASS. The lemma proves the required diagonal correlation and observable scalar ratio bounds for every selected target, using the same oriented selected state as unit_001.
- Proof validity: PASS. From the `44 omega` column bound, the proof obtains a positive diagonal coefficient `a`, normalizes its column, and uses the unit-column identity with the unit diagonal of `H_M` to bound the normalized quadratic form. The displayed estimate `d <= 90 q_* omega + (1+q_*)2025 omega^2 < omega/20` justifies the inverse-square-root step and gives `|c_{M,jj}-1|<2 omega`. The diagonal product contributes less than `7 omega`; the off-target scalar contribution is bounded by `Gamma x_*^2 ell_* < omega`, yielding the stated `9 omega` ratio bound. No unproved row control, latent scale, or post-landing object is introduced.
- Cited-result and assumption audit: PASS. The tail bounds `x_*<=3q_*` and `ell_*<=31q_*/20`, the score identity, `Gamma<=1.01`, and the two-orientation `A_M-I` bounds are all accepted dependency outputs. The proof uses only elementary induced-norm, Cauchy--Schwarz, and product estimates in current notation; every numerical endpoint used in the scalar transfer is displayed.
- Rigor checklist: PASS. The argument keeps the diagonal/off-diagonal terms separate, uses `E_{jj}=0`, preserves unequal weights through `Gamma`, and bounds the off-target sum with two maxima and one l1 tail. The positivity conclusion is derived before the ratio is used, and the endpoint remains valid at maximal `q_*` and at `q_real=0`.
- Local adversarial test: PASS. Saturating both accepted tail bounds still leaves `Gamma x_*^2 ell_* / omega < 0.004`; the diagonal perturbation cannot change sign; and the exact orthogonal/equal-weight case gives ratio one. A zero `theta_j` is outside the lemma's selected nonzero branch and is handled by the setting.
- Contribution to target step: PASS. Supplies the positive best-scalar ratio needed for the logarithmic scale coordinate.
- Verdict: PASS
- Repair direction: None

### unit_003: balanced scale and quotient entry

- Statement fidelity: PASS. The proposition states the exact norm-product identity, relative product-log definition and bound, equal positive scales in all modes, and the two-sided exponential scale interface required by the sketch.
- Proof validity: PASS. Equal-norm balancing gives `gamma_j^0=sigma_j` exactly. The ratio bound from unit_002 has `|u_j|<=9 omega<1/2`, so the displayed logarithm inequality gives `|s_j^0|<=18 omega<128 omega`; exponentiating the definition yields the exact diagonal identity and both scale bounds. The proof does not replace the baseline equality by an envelope.
- Cited-result and assumption audit: PASS. The only nonlocal input is the named unit_002 conclusion; all scale objects are defined directly from the setting's observable seed and `D_lambda`. No condition number, landing output, or extra admissibility condition is imported.
- Rigor checklist: PASS. Positivity of `sigma_j` is established before taking logs, the prescribed positive `tau_r` is not silently sent to zero, and the fixed finite seed transaction introduces no horizon or probability upgrade.
- Local adversarial test: PASS. At the exact baseline `u_j=0` and the scale coordinate is exactly zero; at the largest allowed ratio perturbation the denominator in the logarithm bound remains positive.
- Contribution to target step: PASS. Exports the balanced scale congruence and `s^0` bound to `E_seed` before any frozen landing design is formed.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

PASS. The local lemma map covers the independent sign/gauge identification, exact target-span projection, both induced coefficient orientations, diagonal normalization, weighted off-target score control, positivity before logarithms, and the equal-norm cube-root transfer. The claim that two unit-factor triples representing the same rank-one tensor differ by a product-one sign gauge is used inside unit_001 and is justified by the nonzero unit columns; it is not an unlisted theorem-level assumption. No landing output, comparator, reserve, or cyclic invariant is smuggled into the derivation.

## Target Claim Audit

PASS. Conditional on the accepted `E_sm`, `E_gauge`, `E_row`, and support/tail interfaces, the artifact proves the exact step_008 claim: `P_M^0=G_M(I+C_M^0)+N_M^0` with `G_M^T N_M^0=0`, `N_M^0=0<=tau_r`, both row/column coefficient fields at most `48 omega`, `||s^0||_infty<=128 omega`, and `D_M^0=D_lambda^(1/3)E^0`. The seed is the actual observable active seed, not a surrogate, and it is emitted before every landing design.

## Explicit Rate Audit

- Exposed variables: `r`, `q_real<=q_*`, `Gamma<=1.01`, `tau_r=q_*^2/(10^4 r)`, `omega=q_*^2+r tau_r`, `eta_score(r)`, the realized positive `lambda_j`, and the finite selected representative set.
- Hidden constants: only the displayed universal numerical margins (`2,7,9,18,44,48,128`) and the fixed `q_*`; they do not depend on `n`, `kappa_0`, `rho`, `epsilon`, either confidence parameter, a target label, a generated condition number, or a landing output.
- Fixed quantities: the once-realized target factors and weights, the prescribed positive `tau_r`, and one selected representative per target.
- Probability mode: deterministic conditional on the accepted generated interfaces; this step performs no probability conversion or union bound.
- Horizon mode: one finite seed-transfer transaction before all landing calls; no iterative or all-time claim is made.
- Norm mode: Euclidean target-span columns, induced row/column `l_1` coefficient masses, perpendicular Euclidean columns, and the `l_infty` product-log coordinate.
- Auxiliary conditions and absorption: `q<=q_*`, `Gamma<=1.01`, `eta_score(r)<1/2000`, and `|u_j|<1/2` are explicit; inequalities (8)--(14) and (17) display all diagonal, tail, ratio, and logarithm absorptions. No rate category is dropped by prose.
- Baseline reduction: in the exact orthogonal equal-weight certified-component specialization, all off-target correlations and residuals vanish, `sigma_j=lambda_j`, and the actual seed has `C_M^0=N_M^0=s^0=0`; the exact zero-residual baseline is preserved with the setting's fixed positive tolerance.

## Notation Surface Audit

PASS. `H_M`, `G_M`, `P_M`, `A_M`, `c_M`, and `sigma_j` are setting or accepted-dependency objects. `q,t,omega,beta,x_*,ell_*` are setting-derived/accepted ledger quantities; `a,z,u,B,d,alpha,delta_M` are explicitly proof-local. The only public-facing exports are `C_M^0`, `N_M^0`, `s^0`, `D_M^0`, `E^0`, and `E_seed`; no one-off helper dictionary or hidden bounded constant is exported.

## Target-Step Assembly Audit

PASS. Accepted step_006 supplies the selected representative bijection, tail ledger, and term-preserving gauge; accepted step_007 supplies the same oriented stored state, exact target-span identity, and both coefficient orientations; transitive accepted step_001 supplies the realized Gram/pseudoinverse geometry. Lemma~`lem:step-008-seed-decomp`, Lemma~`lem:step-008-best-scalar`, and Proposition~`prop:step-008-seed-interface` are dependency-ordered and jointly produce `E_seed` before step_009 or the baseline specialization. The assembly uses no archival artifact and has an acyclic producer-consumer path.

## Review Rationale

`ACCEPTED` is the smallest sound outcome. The proof establishes the exact sketch-row interface under the unchanged setting and accepted dependencies. In particular, the apparent perpendicular-field obligation is discharged as the stronger exact `N_M^0=0` consequence of the already-proved target-span membership, the row and column constants are transferred explicitly, the weighted scalar ratio and logarithm retain all exposed rate dependence, and the zero-scalar, `q_real=0`, and exact-baseline cases are handled without an invalid division or tolerance specialization. No local flaw or sketch/interface change remains.
