# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 5
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_003/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_003

## Blocking Issues

1. **The cross-mode full-operator tail (21j) is not proved.** In Lemma~\(\ref{lem:step-003-terracini-chaos}\), equations (21d) and (21g)--(21h) correctly reduce the fully adaptive norm to the positive-semidefinite weighted covariance sum
   \[
     E^{ab}(E^{ab})^*
     =\sum_jR_j^{bc}\otimes p_j^a(p_j^a)^{\mathsf T}
   \]
   and bound both unconditional second-moment orientations by
   \(\kappa_1^8(k-1)/r^2\). They do not establish the required fixed-factor conditional tail at squared scale \(k/r^2+t/r\), uniformly for the six mode permutations. Without (21j), the six cross-mode blocks have no high-probability operator bound and (21) cannot be assembled. The smallest repair is to prove (21j), or restate and fully discharge a theorem that gives it for the exact ACG-normalized weighted covariance law, within the current `step_003` interface.
2. **The same-mode product-direction Gram tail (21k) is not proved.** Proposition~\(\ref{prop:step-003-offblock-split}\) identifies each same-mode block exactly, but no local derivation or checked cited result gives the conditional \(C(\kappa)e^{-t}\) tail at scale \(\sqrt{k}/r+\sqrt{t/r}\) for the three product-direction Gram deviations. Without (21k), the nine-block union and hence \(\mathcal E_{\rm TF}(t)\), (TF), quotient-frame coercivity, the unconditional construction of \(W_0\), and the \(r^{-20}\)-failure deficit event remain unavailable. The smallest repair is the corresponding sharp same-mode tail in the same `step_003` producer rerun.

## Per-Lemma Audit

### unit_001: uniform moments for conditioned elliptic angular laws

- Statement fidelity: The lemma uses exactly the primitive initialization law and the accepted conditioning and Gaussianization outputs, with the required uniform fixed-realized-factor conditional scope.
- Proof validity: Direction normalization removes the nonzero balancing scalar. The singular-value interval for \(H_M\) gives
  \(|\langle u,p\rangle|\le\kappa_1^2|\langle v,z\rangle|/\|z\|\), and the spherical even-moment formula then gives (3). Odd symmetry gives centering, while the second moment gives the covariance and coordinate bounds in (4).
- Cited-result and assumption audit: The accepted dependency objects and spherical moment identity are restated in current notation. No radial, Gram, deficit, trajectory, or loss event is assumed.
- Rigor checklist: Component and mode independence, almost-sure nonzero Gaussian images, dimensions, quantifiers, and dependence only on \(\kappa\) are correct.
- Local adversarial test: Extremal allowed singular values of \(H_M\) still give the displayed \(\kappa_1^2\) ratio and \(\kappa_1^4/r\) covariance bound.
- Contribution to target step: Supplies the ACG angular law, centering, and moments used by the quotient, correlation, and off-block calculations.
- Verdict: PASS
- Repair direction: None.

### unit_002: exact gauge quotient and Terracini blocks

- Statement fidelity: The proposition proves the exact two-dimensional CP gauge, the quotient spectrum, the raw tangent range, and all off-component blocks required by the accepted row.
- Proof validity: Parallel/perpendicular decomposition gives three mutually orthogonal perpendicular variations and one common-core term. Orthogonality to \(\mathcal K_i\) forces equal parallel coefficients, yielding eigenvalues in \([1,3]\) on \(\mathcal H_i\). Direct tensor pairings give (10), and the accepted nonzero-rescaling result identifies \(\operatorname{range}J=\mathscr S_0\).
- Cited-result and assumption audit: Every dependency is current and accepted; only the exact span-transfer conclusion is used to identify the raw tangent space.
- Rigor checklist: The quotient inner product, adjoints, component/mode block order, and tensor Frobenius convention agree with the setting.
- Local adversarial test: Gauge coefficients with zero sum are exactly null, while the common scaling direction survives with quotient eigenvalue three.
- Contribution to target step: Supplies the within-component coercive source and exact off-component operator algebra.
- Verdict: PASS
- Repair direction: None.

### unit_003: raw diagonal-core target correlation

- Statement fidelity: The lemma proves the exact raw-target correlation event (TC), including the \(k/r+\log r\) scale and fixed-factor conditional failure budget.
- Proof validity: Contracting with \(D_r\) gives the three Hadamard-product vectors. Each component energy lies in \([0,1]\), is independent across components, and has mean at most \(\kappa_1^8/r\). Scalar Bernstein at \(u=30\log r\), followed by the three-pair union bound, gives the stated result.
- Cited-result and assumption audit: Bernstein is restated with boundedness, independence, and mean hypotheses discharged locally.
- Rigor checklist: Quotient projection is norm-contracting, constants and probability conversion are explicit, and the raw \(D_r\) convention is preserved.
- Local adversarial test: At \(k=r^{5/4}\), the bound is \(O_\kappa(r^{1/4}+\log r)=o(r)\), as required by the later projection comparison.
- Contribution to target step: Completely proves (TC).
- Verdict: PASS
- Repair direction: None.

### unit_004: off-component split and the variance source

- Statement fidelity: The proposition claims only the exact same-mode algebra, the block-row \(k/r^2\) quadratic scale, the six cross-mode arrays, and their two-stage factorizations.
- Proof validity: Equations (18)--(20a) follow from the block formula (10). In particular, the \(i\)-th output column of (20a) is exactly \(\sum_{j\ne i}p_j^a\langle p_i^b,y_j\rangle\langle p_i^c,p_j^c\rangle\). Conditional component/mode independence gives (19).
- Cited-result and assumption audit: Only accepted angular inputs and the proved covariance bound are used. No operator concentration is asserted.
- Rigor checklist: The proof correctly distinguishes a fixed block-row quadratic scale from a full operator-variance or uniform-supremum bound.
- Local adversarial test: Taking scalar block norms first loses one angular factor and produces the stated \(k/r\) rather than \(k/r^2\) second-moment scale.
- Contribution to target step: Gives the exact random-operator interface for both the new covariance reduction and any later proof of (TF).
- Verdict: PASS
- Repair direction: None.

### unit_007: fixed-input cross-mode mean square and raw-block lower tail

- Statement fidelity: The lemma explicitly limits its theorem-facing upper bound to inputs deterministic relative to the initialization directions and limits its isotropic lower tail to one unprojected cross-mode block.
- Proof validity: Entrywise expansion of \(Q_{B,C}(Y)\), mode independence, and the angular covariance bound give (20c). Since \(A_p\) is independent of \(Q_{B,C}(Y)\) and \(\mathbb E(A_p^{\mathsf T}A_p)=I_k\), conditioning on \(Q\) gives the equality in (20d). For the one-column isotropic input, the first and second moments in (20i)--(20k) are correct, and Paley--Zygmund gives probability at least \(1/36\).
- Cited-result and assumption audit: The angular covariance, exact factorization, and Paley--Zygmund inequality are stated before use. No independence between an ACG Gaussian vector and its own normalizer is assumed.
- Rigor checklist: The proof does not upgrade deterministic-input expectation to a data-dependent supremum or unprojected scope to quotient scope.
- Local adversarial test: The lower-tail input yields the natural \(\sqrt{k}/r\) scale but is correctly not used as an upper bound or a contradiction to (TF).
- Contribution to target step: Proves the fixed-input second-moment scale for all six cross-mode arrays and supplies the increment-size stress used in `unit_005`.
- Verdict: PASS
- Repair direction: None.

### unit_008: quotient/full-operator lower bound at the leading scale

- Statement fidelity: The lemma is explicitly diagnostic in the isotropic specialization and concerns the actual projected complete off-component operator.
- Proof validity: The selected unit input belongs to \(\mathcal H_{j_0}\). Projection onto \(\mathcal H_i\) changes the first-mode response only in the \(p_i^a\) direction, so the perpendicular component gives (20o). Conditional component independence and spherical moments give (20p)--(20r), and Paley--Zygmund yields the claimed \(1/144\) probability and \(\sqrt{k-1}/(2r)\) lower bound.
- Cited-result and assumption audit: All inputs are local and the only probabilistic tool is the restated Paley--Zygmund inequality with moments computed in the proof.
- Rigor checklist: Measurability, quotient membership, normalization, the \(r\ge2\) boundary, and the transition from a unit-input response to operator norm are correct.
- Local adversarial test: Other projected mode components cannot cancel the retained first-mode perpendicular component.
- Contribution to target step: Confirms that the leading \(\sqrt{k}/r\) order is necessary for the quotient/full operator without refuting a matching upper tail.
- Verdict: PASS
- Repair direction: None.

### unit_009: canonical data-dependent top-singular alignment test

- Statement fidelity: The lemma is a one-slice diagnostic, with the probability over \(A_p\), the remaining conditional expectation over the \(C\)-directions, and the limitation of the conclusion all stated explicitly.
- Proof validity: The normalized-Gaussian good event gives \(\|A_p\|_{\rm op}\le5\sqrt{k/r}\), while \(\|A_p\|_F^2=k\) gives the deterministic lower bound. Truncating one coordinate of a top right singular vector gives (20w). The input (20x), exact factorization, and spherical second/fourth moments give (20z) with \(\Delta_r=2(r-1)/(r^2(r+2))\), hence the stated RMS interval.
- Cited-result and assumption audit: The Gaussian operator-norm and chi lower-tail bounds are restated and correctly instantiated. The data-dependent choices can be made with deterministic tie-breaking.
- Rigor checklist: All matrix dimensions, conditioning scopes, and normalization factors are correct.
- Local adversarial test: The construction aligns only one output slice and is correctly not used to control or refute the fully adaptive multi-column supremum.
- Contribution to target step: Tests the principal top-singular alignment concern and finds the target leading order for this canonical adaptive input.
- Verdict: PASS
- Repair direction: None.

### unit_005: full multi-column covariance reduction and remaining sharp tail

- Statement fidelity: The unit preserves the exact accepted-row scope: fixed-factor conditional ACG laws, all six cross-mode and three same-mode arrays, the quotient operator, the \(\sqrt{k}/r+\sqrt{t/r}\) rate, and a finite \(C(\kappa)e^{-t}\) tail.
- Proof validity: The new algebra through (21h) is valid. With component-then-coordinate output ordering, \(R_j^{bc}\in\mathbb R^{k\times k}\) and \(p_j^a(p_j^a)^{\mathsf T}\in\mathbb R^{r\times r}\), so (21d) acts on \(\mathbb R^k\otimes\mathbb R^r\). Each \(R_j^{bc}=D_j^cG_bD_j^c\) and \(S_j^{bc}=B_p(D_j^c)^2B_p^{\mathsf T}\) is PSD, and they are the two Gram orientations of \(B_pD_j^c\), giving equal nonzero spectra and equal operator norms. The operators \(L_j^{ab}\) read disjoint input blocks, so \(L_j^{ab}(L_\ell^{ab})^*=0\) for \(j\ne\ell\); their output blocks give (21d) exactly.
- Cited-result and assumption audit: Conditional on \(B_p,C_p\), the \(a\)-mode columns are iid and independent, which gives (21f). Full expectation is then legitimate: \(\sum_jd_j^c(d_j^c)^{\mathsf T}=C_0^2\) because \(C_0\) is symmetric; off-diagonal output blocks vanish by the independent centered \(b\)-mode inner product; off-diagonal input blocks vanish by the independent centered \(a\)-mode inner product. The diagonal blocks give exactly \((k-1)\tau_c\Gamma_a\) and \((k-1)\tau_c\Gamma_b\). Since \(\operatorname{tr}\Gamma_c=1\), \(\tau_c=\operatorname{tr}(\Gamma_c^2)\le\|\Gamma_c\|_{\rm op}\le\kappa_1^4/r\), and (21h) follows in both orientations.
- Rigor checklist: Adjoint orientation, component/coordinate block order, dimensions, PSD claims, conditional means, both second-moment orientations, mode permutations, and all independence steps check out. Equations (21d) and (21j) would indeed imply the cross-mode norm bound, and (21k), a nine-block union, the elementary \(3\times3\) block estimate, and contractive quotient projection would imply (21).
- Local adversarial test: Equation (21l) validly shows that a standard per-component bounded-increment argument which first replaces \(R_j^{bc}\) by \(\|R_j^{bc}\|_{\rm op}\) must take an increment bound already of order \(k/r^2\) in squared norm with non-negligible probability; its Bernstein linear term therefore incurs a leading logarithmic loss at polynomial confidence. This obstruction is limited to that crude route. It neither disproves (21j) nor rules out a structure-preserving decoupling, weighted-covariance, chaining, or refined matrix-concentration proof under the existing step interface.
- Contribution to target step: The exact adaptive covariance identity and target-scale second moments are genuine progress, but the unit still supplies no proved tail event and therefore does not produce (TF).
- Verdict: REVISE_STEP
- Repair direction: Prove (21j) and (21k), including all mode permutations and the finite fixed-factor conditional tail prefactors, without changing the current claim, assumptions, dependencies, quotient convention, or exported deficit interface. Route to `/proof-sketch` only if a rigorous counterexample or necessity argument shows that one of those interfaces must change.

### unit_006: raw tangent deficit conditional on the frame estimate

- Statement fidelity: The proposition explicitly assumes the local TF--TC intersection and does not present its conclusion as an unconditional output of this partial step.
- Proof validity: The within-block quotient lower bound and (TF) give \(J^*J\succeq I/2\). The projection formula and (TC) give tangent energy at most \(2C_{\rm TC}(k/r+\log r)\le r/2\). Pythagoras then gives the normal component, and \(\widehat D_0\in\mathscr S_0\) gives the exact raw residual pairing.
- Cited-result and assumption audit: The projection formula is restated and the accepted raw-span identity is used in the correct coefficient Frobenius convention.
- Rigor checklist: Equations (22), (26), and (27) state the finite thresholds and prefactor-aware probability conversion without assuming independence of TF and TC.
- Local adversarial test: Removing TF loses the quotient inverse bound, and removing TC loses tangent-projection control; no other deterministic implication is missing.
- Contribution to target step: Correctly closes the raw deficit and confidence bookkeeping once a valid TF event is supplied.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No additional hidden independent subclaim was found. Attempt 5 now lists and proves the full-adaptive covariance identity, equal-spectrum Gram companions, both global second-moment orientations, fixed-input and quotient lower-scale diagnostics, and the conditional TF--TC-to-deficit implication as named units. It does not silently promote (21j), (21k), or \(\mathcal E_{\rm TF}\) to proved facts. The bounded-increment diagnosis is valid only for the explicitly described norm-first per-component route and is not evidence that every structure-preserving proof route fails.

## Target Claim Audit

The exact `step_003` target is not proved. The current proof establishes the ACG moments, exact quotient geometry, raw tangent range, (TC), same- and cross-mode block formulas, deterministic-input second moments, matching lower-order diagnostics, the exact fully adaptive covariance representation, both second-moment orientations at scale \(k/r^2\), and the deterministic/event implication from TF--TC to the raw deficit. It does not establish the two uniform tails (21j)--(21k), so it cannot prove (21), (TF), the lower bound on the full quotient Gram, or export \(W_0\) and \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\). The accepted `step_001` and `step_002` dependency pairs are synchronized and are not the source of failure.

## Explicit Rate Audit

The proved portions preserve every exposed variable and mode: \(\kappa,r,k\), \(r<k\le r^{5/4}\), fixed-realization conditional probability, initialization-only horizon, quotient/operator/Frobenius norms, and hidden dependence only on \(\kappa\). (TC) has the proved \(k/r+\log r\) scale and \(r^{-25}\) failure. Equations (21g)--(21h) give both full-operator second moments at \(O_\kappa(k/r^2)\), while the isotropic projected lower bound confirms the necessary \(\sqrt{k}/r\) leading order. The missing cross-mode squared tail must be \(O_\kappa(k/r^2+t/r)\), and the missing same-mode tail must be \(O_\kappa(\sqrt{k}/r+\sqrt{t/r})\), each with finite \(C(\kappa)e^{-t}\) prefactor. Only after those estimates can one set \(t=30\log r\), absorb the TF scale below \(1/2\), and obtain (27). The raw target, initial core, tangent span, and coefficient residual remain unchanged, so the baseline normalization obligation is preserved.

## Notation Surface Audit

The public-facing output remains only \(W_0\) and the setting-defined deficit event, neither of which is exported by this partial proof. The ACG directions and quotient frame are appendix-local; \(Q_{B,C}\), the diagnostic inputs, \(G_b,G_c,C_0,d_j^c,D_j^c,R_j^{bc},S_j^{bc},L_j^{ab}\), and the covariance matrices \(\Gamma_M\) are proof-local with explicit provenance. Their dimensions and mode associations are visible. \(\mathcal E_{\rm TC}\) is proved, while \(\mathcal E_{\rm TF}(t)\) and every constant appearing only in (21), (21j), or (21k) are explicitly unresolved rather than treated as bounded generated objects.

## Target-Step Assembly Audit

All assembly links after the two missing tails are valid. The six versions of (21j) and three versions of (21k) would bound the nine unprojected mode blocks; the displayed \(3\times3\) estimate and contractive quotient projection would give (21). Taking \(t=30\log r\) would give (TF), which together with the proved within-block lower bound yields \(J^*J\succeq I/2\). The proved (TC), projection formula, Pythagoras, raw tangent-span identity, and \(\widehat D_0\in\mathscr S_0\) would then construct the exact raw witness. Equation (27) correctly converts the two event budgets. No third mathematical bridge is missing, but the two tail producers are absent, so the target assembly remains incomplete.

## Review Rationale

`REVISE_STEP` is the smallest evidence-based status. Attempt 5 materially strengthens the local proof: it removes the data-dependent-input ambiguity by an exact identity for \(E^{ab}(E^{ab})^*\), verifies the PSD and equal-spectrum structure, and proves both full second-moment orientations at the target \(k/r^2\) scale. Those calculations are synchronized with the accepted dependencies and reveal no dimension, conditioning, quotient, rate, or downstream-interface defect. The new bounded-increment stress test rules out only a crude norm-first concentration route; it does not establish that the requested tail is false, that an extra leading logarithm is necessary, or that the sketch claim, dependency list, intended broad decoupling/matrix-concentration tool class, output target, or dominance relation must change. Thus the exact remaining work is still local to `unit_005`: prove (21j)--(21k) under the unchanged row interface and submit the repaired proof for a fresh review.
