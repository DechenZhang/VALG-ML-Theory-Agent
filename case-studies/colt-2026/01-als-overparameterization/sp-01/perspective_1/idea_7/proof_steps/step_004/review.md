# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Binding sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Reviewed proof artifact: perspective_1/idea_7/proof_steps/step_004/proof.md
- Reviewed proof SHA-256: 6b2073b568dc2f94ffa871256831a26a2f2b6772b980b1c2207fd679ddde7922
- Accepted dependency proof SHA-256 (step_001): 467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207
- Accepted dependency review SHA-256 (step_001): da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c
- Accepted dependency proof SHA-256 (step_003): 2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551
- Accepted dependency review SHA-256 (step_003): 046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527
- Accepted global diagnostic SHA-256: 80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0
- Accepted global-review SHA-256: a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29
- Hash preflight: all binding hashes match the frozen artifacts. The global artifacts are used only as planning context.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: simultaneous coefficient and pair-mass recurrence

- Statement fidelity: PASS. The lemma at proof.md lines 119--148 targets the exact simultaneous old-state Jacobi recurrence in the accepted sketch, including the first update from a possibly out-of-span initialization. It uses the accepted \(E_{\rm sm}\) Gram interface and the step-003 window witness only.
- Proof validity: PASS. Dividing by the positive target coefficient gives the coefficient vector \(e_j+\beta_M^t\), with \(\lvert\beta_{M,\ell}^t\rvert\le\Gamma R_t\). The target row leakage is at most \(\Gamma qR_t\), so the displayed \(D_t\) is positive before division. The off-target numerator bound and the summed numerator bound (7) correctly use, respectively, the Gram row and column off-diagonal masses. Taking a termwise maximum and an \(\ell_1\) sum yields exactly both displayed \(R\) and \(S\) recurrences.
- Cited-result and assumption audit: PASS. The only imported facts are the accepted step-001 \(q_{\rm real}\) row/column Gram bounds and the accepted step-003 \(R_0,S_0\) window interface. The proof does not assume a target-span component for \(h^0\); it explicitly observes that the first updated mode lies in \({\rm span}(G_M)\), and subsequent updates remain there.
- Rigor checklist: PASS. The condition \(\Gamma R_t<1\) implies every off-target \(\beta\) has magnitude below one, while \(\beta_j=1\); the target denominator bound is therefore valid with signed coefficients. The argument handles nonzero contractions before normalization and keeps the absolute-ratio definitions of the setting. No cross-target independence or probability upgrade is used.
- Local adversarial test: PASS. Arbitrary signs of the off-target coefficients and an arbitrary perpendicular component in the initial state do not break (5)--(7). A vanishing target denominator is excluded by the proved \(D_t>0\), rather than assumed away.
- Contribution to target step: PASS. This unit supplies the exact displayed recurrence, first-update activation, denominator producer, and target-span entry required downstream.
- Verdict: PASS
- Repair direction: None.

### unit_002: noncircular scalar envelope and finite chart entry

- Statement fidelity: PASS. The proposition at proof.md lines 206--242 gives an invariant \(R_t\le19/20\), a uniform denominator floor, the \(\ell_1\)-mass recurrence, and explicit finite entry bounds with universal \(C_{\rm burn}=2048\). These are the requested finite-horizon interfaces.
- Proof validity: PASS. The scalar map \(f(x)\) is increasing on the invariant interval, and \(f(x)/x\) is increasing for \(x\ge q/\gamma\), so the numerical \(49/50\) envelope is applied in the correct direction. The \(x<q/\gamma\) branch is already below \(1/128\), preserving the invariant. The \(S\) recurrence coefficient and additive term are bounded explicitly, giving (16), and \(N_R,N_S(r)\) correctly handle the \(r\)-dependent initial \(S_0\). Once both \(R_t\le1/128\) and \(S_t\le1/64\) hold, (18) gives the \(1/7200\) small-\(S\) bound, the \(\Lambda\) bound, and the coordinate bound; the latter two updates are then aligned with (11). The numerical comparison with \(2048\log r\) covers \(r\ge3\).
- Cited-result and assumption audit: PASS. This unit consumes only the recurrence from unit_001, the step-003 initial bounds, and the primitive \(r\ge3\) domain. No generated chart membership or denominator condition is used as an assumption; induction proves it before each reuse.
- Rigor checklist: PASS. The strict inequalities at \(\bar R=19/20\), \(q_*=1/4096\), and \(\gamma\le1.01\) give \(D_t>999/1000\) and \(\gamma R_t<1\). The small-\(S\) persistence statement is used after the preceding \(S_t\le1/64\) condition has been established, where the exact recurrence (rather than the coarse \(+q\) envelope) is below \(1/7200\). The extra two updates correctly align \(R_{L_{\rm burn}-1},S_{L_{\rm burn}-1}\), \(\Lambda_{L_{\rm burn}}\), and the coordinate bound.
- Local adversarial test: PASS. The additive \(q\) floor prevents an invalid claim of convergence to zero; the proof only claims finite chart entry and then uses the sharper \(R\)-dependent recurrence for persistence. Large \(r\) is handled through \(N_S(r)=O(\log r)\), and the \(r=3\) boundary is covered.
- Contribution to target step: PASS. This unit is the noncircular producer of \(E_{\rm RS}\), denominator persistence, \(E_{\rm chart}\), and the modewise \(\ell_1\) chart interface.
- Verdict: PASS
- Repair direction: None.

### unit_003: target-chart self-map and contraction

- Statement fidelity: PASS. The lemma at proof.md lines 330--379 defines the signed target chart, the exact current-notation ratio map, its self-map domain, the \(1/4\) contraction metric, and the state-direction conversion. It is stronger than, but faithful to, the accepted chart obligation.
- Proof validity: PASS. The formula
  \(p_M(x)=G_M\mathsf K_M^{-1}(e_j+x)/\|G_M\mathsf K_M^{-1}(e_j+x)\|\)
  is well-defined because \(q<1\), and its correlations have the prescribed ratios. The Gram spectral bounds yield (24). On the chart, the \(\beta\) coordinate, numerator, denominator, and pair-mass bounds are numerically valid. The product-difference estimate (26), the off-target induced-column bound \(1+q\), and target-row denominator variation give (27), whose coefficient is strictly below \(1/4\) after the \(2\gamma/100\) factor.
- Cited-result and assumption audit: PASS. The Neumann/spectral and normalization facts are restated in current notation, and the only geometric input is the accepted \(E_{\rm sm}\) Gram margin. The chart uses proof-only target labels/signs and does not alter the label-free procedure.
- Rigor checklist: PASS. Both quotient denominators are bounded below before division; the induced norm orientation used for the \(\ell_1\) estimate is the correct column-sum orientation, while Gram symmetry supplies the matching row bound. The normalization factor \(4\) is conservative under \(q\le1/4096\). No hidden dependence on \(r,n,\kappa_0,\rho\), or confidence parameters enters the contraction constant.
- Local adversarial test: PASS. The argument remains valid for signed off-target coordinates, maximal dependence between target trajectories, and the exact \(q=0\) component case. The map is applied only after unit_002 has put the state in the declared chart.
- Contribution to target step: PASS. Supplies the self-map and contraction mechanism needed to turn ratio displacement into the observable projective residual.
- Verdict: PASS
- Repair direction: None.

### unit_004: finite projective certificate and stored-state interface

- Statement fidelity: PASS. The proposition at proof.md lines 438--490 matches the procedure's burn/certification schedule, proves a stored old state rather than exporting a look-ahead image, and uses the exact \(\tau_r\) and \(L_{\rm cert}\) from the setting.
- Proof validity: PASS. The state at \(L_{\rm burn}\) is in the chart by unit_002 (small-\(S\) persistence also gives \(S_{L_{\rm burn}}\)), and the self-map keeps later states there. The first in-chart displacement is \(\Delta_{L_{\rm burn}+1}=d_{\rm ch}(x^{L_{\rm burn}+1},x^{L_{\rm burn}})\), so the diameter bound \(2/256\) is applied to two chart states; for later indices (23) gives the geometric displacement. Equation (24) bounds the sign-minimized Euclidean \(\zeta\) by ratio displacement. The look-ahead \(h^{L_{\rm prop}+1}\) is used only as a proof/computation device for evaluating \(\zeta(h^{L_{\rm prop}})\), while the recorded state is \(h^{L_{\rm prop}}\). The numerical check \(4^{-L_{\rm cert}}/32\le q_*^2/(10^4r)\) is valid for all \(r\ge3\) with \(C_{\rm cert}=64\).
- Cited-result and assumption audit: PASS. This unit consumes only the generated chart and recurrence interfaces and the primitive finite horizon. It does not assume a future certificate or a landing output. Continuation after an earlier certificate is explicitly proof-only; an earlier stored state already meets the exported threshold.
- Rigor checklist: PASS. The first-update/out-of-span issue has already been discharged by unit_001, so all chart states used here are span states. The index convention in (29) is consistent: the bound at \(t=L_{\rm burn}\) controls \(\Delta_{L_{\rm burn}+1}\), and contraction is invoked only once both consecutive states are in the chart. Certification is evaluated at \(t=L_{\rm burn},\ldots,L_{\rm prop}\), including the final look-ahead test without exporting it.
- Local adversarial test: PASS. Early threshold crossing, a zero contraction off the covered branch, and a nonhitting tape are all handled by the observable procedure; on the covered branch the denominator floor rules out those failures through the finite horizon. The exact orthogonal/equal-weight component has \(R=S=\zeta=0\) and is stationary.
- Contribution to target step: PASS. Produces \(E_{\rm cert}\) and the precise stored-state interface consumed by step_005.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS. The independent claims are explicitly partitioned into the coefficient recurrence (unit_001), scalar invariant and finite entry (unit_002), chart representation/contraction (unit_003), and residual/horizon conversion (unit_004). The intermediate \(\Lambda\) estimate, \(S\)-persistence, norm conversion, and look-ahead indexing are proved within those units rather than smuggled in at assembly. No target-label, score, clustering, landing, or cyclic-ALS conclusion is used prematurely.

## Target Claim Audit

PASS. On every fixed \(E_{\rm sm}\) realization and every step-003 covered window pair, the proof establishes the exact displayed \(R,S\) recurrences whenever \(\Gamma R_t<1\), proves that condition and the target denominator before each subsequent division, enters a fixed chart by \(L_{\rm burn}=\lceil2048\log r\rceil\), and obtains \(\zeta\le\tau_r\) at or before \(L_{\rm prop}=L_{\rm burn}+L_{\rm cert}\). The result is deterministic conditional on the once-drawn instance and covered slot; no extra probability or confidence factor is introduced. The exported events \(E_{\rm RS},E_{\rm chart},E_{\rm chart\_l1},E_{\rm cert}\) and the stored-old-state convention match the accepted sketch row exactly.

## Explicit Rate Audit

PASS. Exposed quantities are \(r\), \(q_*=1/4096\), \(\Gamma\le1.01\), \(\tau_r=q_*^2/(10^4r)\), and the fixed finite horizons \(L_{\rm burn}=\lceil2048\log r\rceil\), \(L_{\rm cert}=\lceil64\log r\rceil\). The scalar absorptions (12)--(19), chart contraction (26)--(27), and threshold inequality are displayed rather than asserted. Hidden constants are universal and do not depend on \(n,\kappa_0,\rho,\epsilon\), confidence parameters, target/slot labels, or generated condition numbers. The probability mode remains conditional on \(E_{\rm sm}\) and the step-003 coverage event; the horizon is finite, and the norm mode is target-relative pair/\(\ell_1\) ratios followed by Euclidean projective distance. The exact \(q=0,\Gamma=1\) baseline is preserved with zero ratios and zero \(\zeta\).

## Notation Surface Audit

PASS. \(q,\gamma,D_t,\bar R,d_*,\rho_R,\rho_S,N_R,N_S,\Lambda_t\) are local bookkeeping quantities, while only the four named events are exported. Signed ratios and the target chart are explicitly proof-only translations of the setting's absolute ratios. The reused symbol \(\mathsf K_M\) is distinguished from the setting's coefficient matrix \(K_M\). The first-displacement wording is resolved by the displayed index convention \(\Delta_{L_{\rm burn}+1}\); no downstream interface changes are needed.

## Target-Step Assembly Audit

PASS. The accepted step-001 \(E_{\rm sm}\) Gram interface and step-003 covered-slot witness supply the only external inputs. Unit_001 gives the exact recurrence and first-update span entry; unit_002 gives the invariant, finite burn, and \(\ell_1\) chart bounds; unit_003 gives the chart self-map and contraction; unit_004 converts successive ratio displacement to the algorithmic \(\zeta\) and respects the stored-old-state rule. These named results jointly imply the exact sketch-row outputs, with no missing dependency or unproved generated invariant. Downstream step_005 receives a certified state only after this producer has established its denominator and chart conditions.

## Review Rationale

ACCEPTED is the smallest sound status. The recurrence algebra, denominator induction, scalar envelopes, small-\(S\) persistence, chart-map indexing, contraction-to-\(\zeta\) conversion, finite constants, conditional probability mode, assumption provenance, and baseline trace all pass. The proof does not require a new bridge, changed dependency, or changed target claim. The only potentially ambiguous phrase (“first in-chart displacement”) is resolved internally by (29) as the displacement between the consecutive chart states \(L_{\rm burn}\) and \(L_{\rm burn}+1\), so no retry is warranted.
