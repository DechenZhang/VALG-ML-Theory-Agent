# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_006/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact first-update leakage for unconstrained GD and ALS

- Statement fidelity: The proposition proves the exact first-(X)-update identities requested by the accepted sketch for full-variable Euclidean GD and the minimum-Frobenius-norm unconstrained ALS block update, relative to the genuine initialization span supplied by accepted `step_001`. It does not strengthen the identities into an escape or generic-nonvanishing claim.
- Proof validity: The mode-1 identity (S(X,Y_0,Z_0)_{(1)}=XK_0^{\mathsf T}) gives 
  \(\nabla_XF=XK_0^{\mathsf T}K_0-T_{(1)}K_0\). Since ((I-P_0)X_0=0), projecting the GD update leaves exactly 
  \(\eta_0(I-P_0)T_{(1)}K_0\). Rowwise least squares gives the unique minimum-Frobenius-norm minimizer 
  \(T_{(1)}(K_0^{\mathsf T})^\dagger=T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger\), so the ALS projection formula follows exactly.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-full-rank} is used only to identify 
  \(\operatorname{range}(X_0)\) as the method's (k)-dimensional initialization span. The gradient and Moore--Penrose identities are restated and directly derived in current dimensions; no design-rank, conditioning, factor-bound, or trajectory assumption is imported.
- Rigor checklist: Matrix dimensions are consistent with (K_0\in\mathbb R^{n^2\times k}). The thin-SVD/pseudoinverse calculation remains valid when (K_0) is rank deficient or zero. The GD identity is valid for every finite 
  \(\eta_0\), and simultaneous updates of the other blocks do not alter the (X)-gradient evaluated at the common initial triple.
- Local adversarial test: At (T=0), (K_0=0), 
  \(\eta_0=0\), singular (K_0), or accidental target-span cancellation, the displayed forcing term can vanish and the proposition reduces correctly. These cases do not create an all-time unconstrained invariant, and the proof does not say otherwise.
- Contribution to target step: It identifies the exact generated factor-level complement term that replaces the constrained left-(Q_M) enforcement at the first unconstrained update.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact outside-span residual decomposition

- Statement fidelity: The proposition supplies the exact same-target residual decomposition required by the sketch for an arbitrary represented tensor relative to the fixed initialization projector. It also identifies the tensor leakage exactly as 
  \(\Lambda_t=S((I-P_0)X_t,Y_t,Z_t)\).
- Proof validity: Tensor-product linearity gives the formula for 
  \(\Lambda_t\). Splitting both (T) and (S_t) with the orthogonal projector 
  \(\Pi_0\) gives 
  \(T-S_t=(R_0-\Lambda_t)+(\Pi_0T-\Pi_0S_t)\), with the two summands in complementary subspaces. Pythagoras therefore yields the displayed squared-norm and objective equalities, and orthogonality gives the fixed-witness pairing when 
  \(\|R_0\|_F>0\).
- Cited-result and assumption audit: Only the setting's Euclidean tensor-product projector convention and elementary orthogonal-projection facts are used. Every helper tensor is defined from the original target, represented tensor, and initialization projector; no surrogate, population, or transformed residual enters.
- Rigor checklist: The proof keeps factor leakage distinct from tensor leakage and explicitly allows cancellation among rank-one terms. The fixed witness is normalized only on its positive-denominator branch, and no sign is assigned to 
  \(\langle W_0,\Lambda_t\rangle_F\).
- Local adversarial test: The identities remain valid for (R_0=0), 
  \(\Lambda_t=0\), exact complement cancellation (R_0=\Lambda_t), the algebraic full-span case (P_0=I_n), zero factors, and arbitrarily large finite factors.
- Contribution to target step: It exposes the exact uncontrolled same-target term that prevents the constrained Pythagorean floor from carrying over automatically.
- Verdict: PASS
- Repair direction: None.

### unit_003: Fixed-witness non-transfer certificate

- Statement fidelity: The claim proves only the accepted diagnostic conclusion: the constrained fixed-witness interface is unavailable for the unconstrained comparisons from the current dependencies alone. It expressly makes no assertion that unconstrained iterates always leave the span, that complement cancellation occurs, or that either unconstrained method succeeds or fails.
- Proof validity: Dropping only the nonnegative in-span residual term gives 
  \(F\ge\frac12\|R_0-\Lambda_t\|_F^2\). The reverse triangle inequality gives the displayed conditional lower bound, and the illustrative hypothesis 
  \(\|\Lambda_t\|_F\le\gamma\|R_0\|_F\), (0\le\gamma<1), yields exactly 
  \(\frac12(1-\gamma)^2\|R_0\|_F^2\). When (R_0-\Lambda_t\ne0), the endogenous normalized complement residual pairs with the actual residual by exactly its norm; the proof correctly notes that this identity supplies no positive floor without a separate lower bound.
- Cited-result and assumption audit: Accepted `step_001` supplies constrained zero leakage, and accepted `step_003` supplies the constrained fixed residual/floor interface. No unconstrained invariant is imported. The parameter 
  \(\gamma\) is used only as a local conditional illustration of a missing interface, not as an assumed or exported theorem constant.
- Rigor checklist: The fixed witness is used only when 
  \(\|R_0\|_F>0\), and the endogenous witness only when 
  \(R_0-\Lambda_t\ne0\). Unknown sign, magnitude, persistence, and accumulation of 
  \(\Lambda_t\) are left unresolved. The conclusion is about non-transfer of this proof mechanism, not impossibility of every alternative unconstrained argument.
- Local adversarial test: Zero target, zero fixed residual, accidental first-step preservation, exact complement cancellation, singular ALS design, and zero GD forcing all preserve the stated diagnostic scope. None is converted into a success, failure, escape, or convergence statement.
- Contribution to target step: It assembles the first-update and residual identities into the exact constrained-only scope certificate consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No unlisted independent nontrivial subclaim is used. The gradient calculation and rank-deficient minimum-norm least-squares mapping are proved inside unit_001; tensor-product leakage and Pythagoras are proved inside unit_002; and the reverse-triangle, conditional-\(\gamma\), endogenous-witness, and logical scope consequences are contained in unit_003. The boundary discussion specializes these identities and does not assert generic escape, persistence, convergence, success, or failure.

## Target Claim Audit

The proof establishes the exact `step_006` sketch-row claim under the current accepted `step_001` and `step_003` interfaces. It gives both unconstrained first-update complement formulas, verifies the minimum-norm ALS formula without a rank assumption, gives the exact actual-residual decomposition with every term accounted for, and identifies the missing outside-span or endogenous-residual control. Its scope remains a fixed-time/algebraic non-transfer diagnostic and does not upgrade the material-partial constrained theorem to unconstrained ALS or GD.

## Explicit Rate Audit

None

## Notation Surface Audit

The notation surface is controlled and correctly classified. (P_0), 
\(\mathcal H_0\), 
\(\Pi_0\), (R_0), and 
\(\Lambda_t\) are appendix-local translations of the initialization-span geometry and exact leakage residual; (H), the SVD factors, 
\(\gamma\), and 
\(\widetilde W_t\) are proof-local. No new public theorem object, hidden bounded quantity, or helper dictionary is exported.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-001-fixed-span} supplies the constrained zero-leakage mechanism, and accepted Proposition~\ref{prop:step-003-pythagorean-floor} together with Lemma~\ref{lem:step-003-fixed-witness} supplies the constrained floor and legal fixed-witness branch. Proposition~\ref{prop:step-006-first-update}, Proposition~\ref{prop:step-006-residual-decomposition}, and Claim~\ref{claim:step-006-nontransfer} then jointly imply the exact non-transfer certificate. The assembly uses named theorem-style results, preserves the same target and Frobenius metric, and leaves the unconstrained source problem explicitly unresolved.

## Review Rationale

`ACCEPTED` is warranted because all three local units are exact, dependency-disciplined, and sufficient for the deliberately narrow sketch claim. The proof handles rank-deficient and zero ALS designs, arbitrary finite GD step size, zero and full-span residual boundaries, factor-versus-tensor cancellation, and both fixed and endogenous zero-denominator branches. Most importantly, it identifies the missing unconstrained interface without turning that absence into an unsupported dynamical success or failure assertion. No producer, dependency, or sketch repair is needed, so `Smallest Retry Target = None`.
