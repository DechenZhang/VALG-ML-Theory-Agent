# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Binding setting SHA-256: `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256: `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Binding sketch-review SHA-256: `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Reviewed proof artifact: `perspective_1/idea_7/proof_steps/step_009/proof.md`
- Reviewed proof SHA-256: `a4b6fb97f55259816c35a8fe7e48b7bd5ef2b822c706acc50b086ba27e972761`
- Accepted dependency step_001 proof/review SHA-256: `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207` / `da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c`
- Accepted dependency step_008 proof/review SHA-256: `66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1` / `2cd27659b43be48576665774753c34efa67f2e968c176350867670d90de87b21`
- Hash preflight: all supplied setting, sketch, sketch-review, proof, and dependency hashes match the files read for this review.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_000: fixed numerical slack

- Statement fidelity: PASS. The claim fixes the setting constants and the accepted `E_sm` condition \Gamma <= 1.01, and establishes every numerical smallness relation needed by the target row: the three raw budgets, \eta_J, \eta_QJ, \eta_A, and the two 1/64 margins.
- Proof validity: PASS. The identity \omega = (1+10^-4)q_*^2 and the bound (r\tau_r^2=q_*^4/(10^8r)\le q_*^4) give the displayed N1 estimates. The subsequent \alpha_0, \eta_J, \eta_QJ, and Neumann-factor arithmetic has ample strict slack at (q_*=1/4096); (1.01\cdot104<128(1+10^{-4})) gives the required \Gamma\eta_A bound.
- Cited-result and assumption audit: PASS. The only nonlocal quantity is the accepted generated \Gamma bound from `step_001`; no landing output, condition number, or generated reserve is assumed. The rank assumption is used only for (r\ge3) and the prescribed \tau_r.
- Rigor checklist: PASS. All inequalities are uniform in (r\ge3), and strict positivity of (1-\eta_J) and (1-\Gamma\eta_A) is established before either inverse or normalizer is invoked.
- Local adversarial test: PASS. Saturating (r=3), (q=q_*), and the accepted 48\omega seed field still leaves the displayed margins; the exact (q=0) baseline is covered by the same conservative budgets.
- Contribution to target step: PASS. Supplies the fixed numerical slack for the pair-Gram inversion and output-normalizer reserve.
- Verdict: PASS
- Repair direction: None

### unit_001: two-orientation frozen Gram expansion

- Statement fidelity: PASS. The lemma states, for every mode and in both induced row and column orientations, the exact \delta_L, \delta_F, and \delta_FL controls required by the accepted sketch row.
- Proof validity: PASS. From (P_M^0=G_M(I+C_M^0)+N_M^0) and (G_M^\top N_M^0=0), (L_M-H_M=H_MC_M^0) is exact. The full Gram expansion (4) has the two direction terms, the quadratic direction term, and the shared perpendicular term (N_M^{0\top}N_M^0); each entry of the latter is at most \tau_r^2, producing exactly one (r\tau_r^2) induced-norm charge. Subtracting (L_M) gives (5), with the stated \delta_FL bound. Transposition correctly exchanges row and column norms, so the claimed two-orientation closure is valid.
- Cited-result and assumption audit: PASS. `E_sm` supplies unit columns and ||H_M|| <= 1+q_*, while accepted `E_seed` supplies the decomposition, both C-field orientations, orthogonality, and the per-column N bound. No collective perpendicular norm is silently assumed.
- Rigor checklist: PASS. Cross terms with N vanish for the stated reason; all remaining products use induced-norm submultiplicativity with the correct transpose orientation. The argument is simultaneous over U,V,W and introduces no probability or horizon upgrade.
- Local adversarial test: PASS. Coherent signs in C and fully correlated perpendicular columns are covered by absolute induced-norm bounds and the (r\tau_r^2) charge; no (r^2\tau_r) term is smuggled in.
- Contribution to target step: PASS. Produces the raw cross-Gram and pair-Gram interfaces consumed by unit_002.
- Verdict: PASS
- Repair direction: None

### unit_002: normalized pair-Gram and direct Q-J reserves

- Statement fidelity: PASS. The proposition targets the exact normalized pair Grams (J_M^0) and cross pair (Q_M^0), gives both induced orientations, and exports the spectral floor together with both Neumann inverse reserves.
- Proof validity: PASS. Unit-column normalization makes (F_M-I) have zero diagonal and norm at most \alpha_0. The Hadamard expansion (J=I+E_{M'}\circ E_{M''}) therefore gives ||J-I|| <= \alpha_0^2 in each orientation. The identity (12) is an exact pre-inversion cancellation; ||L||_max and ||F||_max are at most one, so the stronger (2\delta_{FL}) bound implies the binding \eta_QJ budget. The Neumann series yields (9)--(10), and the Khatri--Rao Gram identity plus symmetry/zero diagonal justifies \lambda_min(J) >= 1-\eta_J.
- Cited-result and assumption audit: PASS. Every nonlocal input is the named unit_001 or the accepted `E_sm`/`E_seed` interface. The finite-dimensional Hadamard, Neumann, Gram, and Gershgorin uses are stated in current notation or discharged directly; no inverse is used before the direct Q-J estimate.
- Rigor checklist: PASS. Both row and column norms are carried separately, the diagonal of J is one, and \eta_J<1 is established before invoking Neumann. The PSD/spectral argument applies to the actual frozen Khatri--Rao Gram, not a surrogate.
- Local adversarial test: PASS. At maximal allowed \alpha_0 the pair-Gram perturbation remains below 1/64; at the exact orthogonal seed (F=J=Q=I). Singular designs are not conflated with the good event.
- Contribution to target step: PASS. Supplies the normalized pair-Gram floor and inverse reserves for every mode before any solve.
- Verdict: PASS
- Repair direction: None

### unit_003: positive diagonal congruence and ordinary frozen solve

- Statement fidelity: PASS. The lemma matches the target's full-design congruence and states the ordinary-inverse coefficient formula for all three frozen Moore--Penrose calls.
- Proof validity: PASS. Equal positive seed scales give (D_{-M}^0=D_\lambda^{2/3}(E^0)^2\succ0). The Khatri--Rao scaling and Gram identities yield ((H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0), hence full column rank on unit_002's event. The unfolding identity and cancellation of the diagonal scale factors give (14) with the correct matrix order.
- Cited-result and assumption audit: PASS. The scale identity and frozen designs come from the setting/accepted `E_seed`; the pair-Gram inverse is the accepted unit_002 conclusion. The off-event Moore--Penrose fallback is kept separate from the quantitative ordinary-inverse branch.
- Rigor checklist: PASS. Positive diagonal congruence is established before inversion, dimensions and mode ordering are consistent with the setting's Khatri--Rao designs, and all three mode records are formed from the same frozen input before a commit.
- Local adversarial test: PASS. Unequal positive \lambda_j are retained in the diagonal factors, while the exact equal-weight orthogonal case reduces to identity; singular/off-event tapes are not claimed to satisfy (14).
- Contribution to target step: PASS. Transfers normalized reserves to the actual frozen designs and proves the pre-solve coefficient identity.
- Verdict: PASS
- Repair direction: None

### unit_004: scale-conjugated coefficient and normalizer reserve

- Statement fidelity: PASS. The proposition exports the exact two-sided normalizer bounds and the both-orientation coefficient-error reserve required by `E_land_pre`, with no post-solve object in its assumptions.
- Proof validity: PASS. Factoring \widetilde{B} = \Xi L and using 
  (QJ^{-1}-I=(Q-J)J^{-1}) gives ||QJ^{-1}-I|| <= \eta_A. Diagonal similarity by (D_\lambda) costs at most \Gamma in either induced orientation. Columnwise \ell1 control and unit target columns then give the forward/reverse triangle bounds (17), including strict positivity.
- Cited-result and assumption audit: PASS. \Gamma and all scale quantities are accepted/generated setting objects; no hidden condition number or landing output is used. The proof uses only unit_002 and unit_003 plus the fixed numerical claim.
- Rigor checklist: PASS. The column norm argument is valid even when \Xi is nonsymmetric; \Gamma controls both row and column diagonal similarities, and \Gamma\eta_A<1 ensures the lower bound. The baseline \Xi=I gives the exact \lambda_j^{1/3} normalizer.
- Local adversarial test: PASS. Worst-case \lambda ratio \Gamma=1.01 and arbitrary signs in off-diagonal coefficient errors remain covered by the \ell1 triangle bound; no output is fed back into a frozen design.
- Contribution to target step: PASS. Completes the simultaneous `E_land_pre` interface with positive pre-commit normalizers.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

PASS. The five mapped units cover all independent claims used by the target assembly: fixed arithmetic, raw two-orientation expansions, paired Hadamard cancellation, spectral/Neumann inversion, positive scale congruence, ordinary pseudoinverse reduction, diagonal-similarity control, and normalizer positivity. The proof does not import a landing output, predecessor comparator, basin invariant, or target-label assumption. The shared perpendicular contribution is explicitly bounded entrywise, and references in the assembly use theorem-style labels rather than bare unit IDs.

## Target Claim Audit

PASS. Conditional on the accepted generated `E_sm` and `E_seed` interfaces, the artifact proves for every (M\in\{U,V,W\}), before any landing solve, the prescribed \delta_L, \delta_F, \delta_FL, \alpha_0, \eta_J, \eta_QJ, and \eta_A bounds in both induced orientations; \lambda_min(J_M^0) >= 1-\eta_J; both inverse and inverse-minus-identity reserves; the positive diagonal full-design congruence; the ordinary-inverse formulas; and the strictly positive output-normalizer reserve. Quantifier order, conditional deterministic mode, same frozen seed, and no-post-solve interface are preserved exactly.

## Explicit Rate Audit

- Exposed variables: (r), (q_*=1/4096), (q=q_{\rm real}\le q_*), \Gamma <= 1.01, \tau_r, \omega, the realized positive \lambda_j, and the accepted seed fields (C_M^0,N_M^0,s^0).
- Hidden constants: only fixed numerical margins; no dependence on (n,\kappa_0,\rho,\epsilon), either confidence parameter, labels, generated condition numbers, or landing outputs.
- Fixed quantities and horizon: one once-drawn instance and one frozen active seed; all three mode records are derived in one finite pre-solve pass with no chronological accumulation.
- Probability mode: deterministic conditional on accepted `E_sm` and `E_seed`; no new probability conversion is made.
- Norm mode: induced row/column \ell1 for coefficient and Gram reserves, spectral minimum for J, and Euclidean column norms for output normalizers.
- Admissibility and absorption: (r\ge3), the prescribed \tau_r, (q\le q_*), and \Gamma <= 1.01 are explicit; (1)--(5), (11)--(12), and (N1)--(N3) display all term absorptions.
- Contribution to rate specialization: exports an inverse/normalizer reserve with constants independent of generated condition numbers for the downstream landing step.
- Baseline reduction: at the exact orthogonal equal-weight certified-component specialization the actual defects vanish, (J=Q=I), \Xi=I, and the normalizers equal \lambda_j^{1/3}; the fixed positive \tau_r and conservative envelopes are not substituted for the exact zero-defect conclusion.

## Notation Surface Audit

PASS. (H_M,L_M,F_M,E_M,P_{-M}^0,K_{-M},\Xi_M), and \ell_{M,j}^0 are explicitly defined proof-local or appendix-local translations from setting objects. The public-facing exports are only the seven budgets, the inverse reserves, the positive congruence, the coefficient formula, and the normalizer bounds. No helper alias hides a rate, boundedness claim, or generated condition number.

## Target-Step Assembly Audit

PASS. Accepted `step_001` supplies the realized unit-column Gram and \Gamma controls; accepted `step_008` supplies the balanced decomposition, scale identity, and perpendicular bound. Unit_000 fixes the numerical margins, unit_001 supplies both raw orientations, unit_002 supplies the pair-Gram and Q-J reserves, unit_003 transfers them to the actual frozen designs, and unit_004 supplies the scale-conjugated coefficient and normalizer bounds. The dependency order is acyclic and every result is produced before `step_010`; no unreviewed bridge is required.

## Review Rationale

ACCEPTED is the smallest sound outcome. The submitted proof is faithful to the accepted step row and closes its local obligations under the unchanged setting and hash-matched dependencies. The raw expansions retain the shared perpendicular (r\tau_r^2) charge, the direct Q-J cancellation precedes inversion, the positive diagonal congruence proves full frozen-design rank, and the \Gamma-controlled similarity yields strictly positive normalizers in all modes. Boundary, baseline, explicit-rate, and off-event branches are separated correctly, so no step retry or sketch revision is required.
