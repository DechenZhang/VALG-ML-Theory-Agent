# Proof Step Review

## Step Review Identity

- Branch: perspective_1/idea_7
- Sketch attempt: 1
- Step ID: step_013
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_7/proof_steps/step_013/proof.md
- Reviewed proof SHA-256: 7c1046fb3ff7abf95be341b05d02c6f0a2473e98bd879efb6d9ee645d8abe5e5
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Binding sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_008 proof/review SHA-256: 66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1 / 2cd27659b43be48576665774753c34efa67f2e968c176350867670d90de87b21
- Accepted dependency step_010 proof/review SHA-256: 0e5a33ae48c86f832c42f0de46d2956550ba92ce8cf322afaf35783bdcb91024 / 9e6e6f07bfe64756c3c2af3c2fcb5deaa88914eb5dda5aca2ef90492229682b9
- Accepted dependency step_011 proof/review SHA-256: 261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0 / 9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af
- Accepted dependency step_012 proof/review SHA-256: e0d860a0172c8926ee8fb049fa4b0241f3345ef1e848f936819fa792b6b7d78e / 0bd8442d48d0c1307391d74139179d3c72100443b3ef346e3b03fb022fbc9789

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: exact orthogonal equal-weight seed and frozen Grams

- Statement fidelity: PASS. The lemma states the exact baseline specialization, including the certified component representatives, and targets the required score, balanced seed, zero C/N/s fields, and identity pair/cross Grams in every held-mode ordering.
- Proof validity: PASS. Orthogonality in all three modes eliminates every cross term in \(\theta_j\), gives \(P_M^0=G_M\), and yields \(H_M^0=\lambda^{2/3}K_M\) and \((H_M^0)^\top H_M^0=\lambda^{4/3}I_r\). The proof-only permutation and product-one sign chart preserve each represented rank-one term.
- Cited-result and assumption audit: PASS. The accepted step_008 seed/gauge interface is used only for the observable-seed convention and notation; the zero defect values are derived locally. The local \(\mathsf B\) hypothesis explicitly includes exact certified representatives. The \(\rho_{\rm sm}=0\) language is identified as a deterministic limiting specialization and is not asserted as a positive-\(\rho\) Gaussian event.
- Rigor checklist: PASS. \(\lambda>0\) makes all cube roots and norms well-defined; the Khatri--Rao identity is instantiated for U, V, and W; signs and permutations are handled before the score calculation. The proof does not use a perturbative reserve to replace an exact equality.
- Local adversarial test: PASS. Negative raw representative signs, a nontrivial target permutation, and the exact zero-interference case all reduce to the product-one chart. A zero score is outside the stated certified-component specialization and is already an unsuccessful branch in the setting.
- Contribution to target step: PASS. Supplies the exact frozen input and all zero-defect/identity-Gram facts used by the landing and cyclic units.
- Verdict: PASS
- Repair direction: None

### unit_002: three exact frozen landing solves

- Statement fidelity: PASS. The proposition evaluates all three synchronized Moore--Penrose calls from the same frozen seed and includes positivity of every active output normalizer.
- Proof validity: PASS. With \(T_{(M)}=\lambda G_MK_M^\top\), \(K_M^\top K_M=I_r\), and \(H_M^0=\lambda^{2/3}K_M\), the products are \(\lambda^{5/3}G_M\), the Gram pseudoinverses are \(\lambda^{-4/3}I_r\), and the outputs are \(\lambda^{1/3}G_M\) in all modes. The exact active block is nonsingular, so the Moore--Penrose and ordinary inverses agree. The zero-padding/inactive-column convention is inherited from the setting and accepted step_010 interface.
- Cited-result and assumption audit: PASS. The frozen-input and joint-commit semantics come from accepted step_010; the displayed mode formulas are independently derived rather than imported from a post-solve state. No landing output is used to construct another design.
- Rigor checklist: PASS. Dimensions and powers of \(\lambda\) are consistent in every unfolding, the normalizers are strictly positive, and the argument covers the three mode orderings used by the unfoldings.
- Local adversarial test: PASS. The active design Gram is positive definite even though the full rank-\(k\) tape has zero inactive columns; the Moore--Penrose block structure therefore returns zero inactive columns and the displayed active solution. Singular/off-event behavior is not silently assigned the baseline formula.
- Contribution to target step: PASS. Establishes the exact pre-rebalance outputs and positive-norm premise for the joint rebalance.
- Verdict: PASS
- Repair direction: None

### unit_003: joint rebalance and product-one gauge

- Statement fidelity: PASS. The proposition targets the one committed joint rebalance, exact product preservation, balanced factors, \(\gamma_j=\lambda\), and \(s_j=0\), while explicitly treating positive scale and product-one sign gauges.
- Proof validity: PASS. Each raw active norm is \(\lambda^{1/3}\), so the product is \(\lambda\) and the rebalance multiplier returns the same normalized factor. The componentwise scale product is one, which proves preservation of every rank-one term; the same calculation applies to product-one signs.
- Cited-result and assumption audit: PASS. The rebalance rule and synchronized commit are the accepted step_010 interface, and all quantities needed for the calculation are produced by unit_002. No unproved post-landing comparator or scale is introduced.
- Rigor checklist: PASS. Positivity of norms precedes division and cube roots; the logarithm is taken only after \(\gamma_j=\lambda>0\). The distinction between proof-only sign orientation and positive quotient scaling is respected.
- Local adversarial test: PASS. Arbitrary positive product-one rescalings and mixed signs leave the represented term unchanged and are returned to the same balanced chart; no sign with product \(-1\) is admitted as a product-preserving gauge.
- Contribution to target step: PASS. Closes the joint landing/rebalance and exact common-product claim.
- Verdict: PASS
- Repair direction: None

### unit_004: all cyclic normal equations are stationary

- Statement fidelity: PASS. The proposition covers every mode, every first-mode choice (all six cyclic permutations), the exact normal-equation output, canonical Refresh_s, and stationarity over all subsequent sweeps.
- Proof validity: PASS. At the balanced exact state each held design is \(\lambda^{2/3}K_M\), so the same computation as unit_002 returns \(\lambda^{1/3}G_M\). The generic mode identity plus induction covers the other five orderings and all later sweeps. Equation (20) correctly verifies positive product-one scale equivariance.
- Cited-result and assumption audit: PASS. The accepted step_011 refresh convention is used for chronology and gauge interpretation, while the normal equations and zero register are checked directly. The active-rank/zero-inactive convention is the setting's declared procedure; no singular cyclic tape is claimed to be stationary.
- Rigor checklist: PASS. The held factors are unchanged after each exact block, the products are \(\lambda\), and the refreshed log register is zero before the next block. The inverse identity in (20) is valid because the exact Gram is positive definite.
- Local adversarial test: PASS. Changing the first mode, applying a positive product-one scale gauge, or applying a product-one sign orientation cannot alter the canonical representative. The exact state has no forcing term to accumulate across sweeps.
- Contribution to target step: PASS. Establishes the exact fixed-point and chronological-refresh portion of the sketch row.
- Verdict: PASS
- Repair direction: None

### unit_005: exact residual and no-floor stopping

- Statement fidelity: PASS. The proposition targets the original relative Frobenius residual, includes inactive zero padding, and states exact zero after landing and every cyclic refresh.
- Proof validity: PASS. Unit_003 gives each active product \(\lambda u_j\otimes v_j\otimes w_j\), and unit_004 preserves it block by block. Orthogonality of the three factor families makes the rank-one tensors mutually orthonormal and gives \(\|T\|_F=\lambda\sqrt r>0\), hence residual zero and the original stopping inequality.
- Cited-result and assumption audit: PASS. Step_012 is used only for the original residual-test/cap semantics; no quotient surrogate or convergence theorem is substituted. The accuracy assumption is cited in stable form, while the exact identity itself is deterministic.
- Rigor checklist: PASS. The denominator is strictly positive, the argument works for every permitted \(\epsilon\), and the finite cap is not used to manufacture an error floor. The stated immediate-after-landing observation is stronger than the configured post-sweep test and does not alter the algorithmic semantics.
- Local adversarial test: PASS. At \(\epsilon\downarrow0\) the same equality remains exact; the positive \(\rho_{\rm ALS}\) chart radius contributes no residual term at its origin. Positive smoothing is not claimed to make a random draw exactly baseline.
- Contribution to target step: PASS. Supplies the exact zero-residual/no-floor baseline conclusion.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

PASS. The five-unit map covers the score/gauge identification, all three Khatri--Rao Gram identities, the synchronized full frozen solve (with the setting's zero inactive block), rebalance product preservation, all six cyclic orderings, scale equivariance, refreshed-register chronology, and the residual denominator. The proof-local Khatri--Rao aliases are explicitly defined and scoped; they are not confused with the setting's coefficient bookkeeping objects. No generated positive-\(\rho\) event, basin, reserve, or condition number is smuggled in as a primitive assumption.

## Target Claim Audit

PASS. Under the explicitly conditional deterministic orthogonal/equal-weight certified-component specialization, the proof establishes the exact sketch-row claim: all three frozen landing outputs equal the target factors, one joint rebalance preserves the products and sets every product log to zero, every cyclic refresh in every mode ordering is the same exact state, and the original relative Frobenius residual is exactly zero. The proof does not weaken this to an \(O(\omega)\) envelope. The positive-\(\rho\) assumptions remain binding for the main theorem; \(\rho\)-zero is identified only as the permitted deterministic limiting baseline and is not used to claim a positive-probability smoothing event.

## Explicit Rate Audit

None. This is an exact deterministic specialization rather than a rate-bearing step. For completeness, the exposed quantities are the common positive weight \(\lambda\), rank \(r\), and \(\epsilon\); hidden constants have no dependence on them, the probability mode is deterministic conditional on the local specialization, the cyclic claim is horizon-uniform (including the stationary continuation), and the norm mode is the original Frobenius residual. The baseline check preserves exact zero rather than absorbing a tolerance, \(\omega\), \(\tau_r\), or chart-radius term.

## Notation Surface Audit

PASS. \(G_M,K_M,H_M^0,H_M\) are defined as proof-local current-notation translations, while \(P_M^0,D_M^0,C_M^0,N_M^0,s^0\) and the Refresh_s objects retain their accepted setting meanings. The proof explicitly scopes its Khatri--Rao \(K_M\) aliases and exports only the exact baseline facts; no helper alias hides a condition number, rate, or generated event. Every local result has a theorem-style title and stable label used in the assembly.

## Target-Step Assembly Audit

PASS. Unit_001 produces the exact frozen seed and identity Grams; unit_002 evaluates the three frozen Moore--Penrose solves; unit_003 handles the single joint rebalance and gauges; unit_004 proves the chronological cyclic fixed point; and unit_005 transfers that fixed point to the original residual and stopping semantics. The accepted step_008, step_010, step_011, and step_012 interfaces are consumed only after their hash-matched conclusions are named, and the dependency path is acyclic. The deterministic baseline is terminal and does not feed a positive-\(\rho\) theorem claim.

## Review Rationale

ACCEPTED is the smallest sound outcome. The exact active frozen designs have positive Gram \(\lambda^{4/3}I\) in every mode, so the Moore--Penrose outputs, rebalance, and all cyclic normal equations can be evaluated directly without a perturbative reserve. The proof covers all mode orderings and product-one gauges, preserves the full rank-\(k\) zero padding, and computes the represented tensor and residual exactly. Its explicit separation of the deterministic \(\rho\)-zero limit from the binding positive-\(\rho\) main theorem keeps the baseline/no-floor clause within the accepted sketch scope. No local proof flaw, hidden independent subclaim, dependency gap, or sketch/interface change remains.
