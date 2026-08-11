# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The accepted internal baseline-audit prose in step_001, step_003, and step_005 still uses the older square common-space shorthand \(Q=I\) and \(T=D_r\) without spelling out \(n=r\). The repaired public bundle does not rely on that shorthand: it separately derives the well-typed tall relations \(QT=D_r\), \(\|Q\|_{\rm op}=1\), and \(\|T\|_F=\|D_r\|_F\). Thus this is lineage/documentation residue rather than a defect in the assembled theorem or its proof. The assembly report's statement that every private occurrence was rewritten should be read as referring to the assembled bundle, not every retained proof-step audit paragraph.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The separate deterministic tall column-orthonormal zero-smoothing baseline. It survives the attack: \(\Lambda_M=\bar M^{\mathsf T}\), \(Q=\bar A^{\mathsf T}\otimes\bar B^{\mathsf T}\otimes\bar C^{\mathsf T}\), \(QT=D_r\), and \(\|Q\|_{\rm op}=1\). The \(r\) ambient CP summands are orthonormal, so \(\|T\|_F=\sqrt r=\|D_r\|_F\). Hence \(\|R\|_F\ge\|QR\|_F\) is in the direction needed for the residual floor even when \(R\) has a component in \(\ker Q\).
- Standalone theorem attack: The positive-Gaussian event inclusion and the deterministic zero-smoothing comparison are explicitly separated. The public base assumption now controls all \(r\) singular values of each rectangular \(n\times r\) normalized base, so full column rank and the left coordinate maps are unambiguous. The theorem states only a pathwise set inclusion and expressly permits an empty or probability-zero certificate event.
- Weakest step-level claim: The direction-sensitive transfer in step_003, followed by squaring and limit passage in step_005. The accepted proofs retain the exact identity \(Q(T-\widehat T_t)=D_r+E_\rho-C_t\), subtract the fixed smoothing error once, use \(\|QR\|_F\le\|Q\|_{\rm op}\|R\|_F\) without assuming injectivity, check the margin before squaring, and pass the lower bound to the same finite objective limit.
- Candidate counterexamples or stress cases: Tall bases with \(n>r\), residual mass in \(\ker Q\), zero and full coefficient spans, rank-changing spans, stationary projectors, zero components, \(T=0\), nearly saturated strict margins, stationary represented tensors, and empty or null certificate events were tested. The general theorem remains valid in each compatible case; incompatible cases are excluded by an explicit primitive or conditional hypothesis rather than silently assumed away.
- Explicit-rate stress cases: The general floor retains \(L_P\), \(\zeta\), \(\kappa^6\), and \(C_T\), with \(m=\delta-L_P-\zeta>\delta/2\) and \(\epsilon=(m/(\kappa^6C_T))^2\). No hidden dependence on \(r,n,k,t\), the base triple, or the realization appears. In the tall deterministic baseline, the smoothing and coordinate losses genuinely disappear and the unchanged limiting floor is \((\delta-L_P)^2\|T\|_F^2\).
- Appendix self-contained attack surface: The appendix contains the full coordinate-map calculation, gauge case split, projector recurrence and finite-prefix telescoping, distance perturbation, same-target ambient transfer, tall-baseline derivation, finite-variation Cauchy proof, squaring, scalar limit argument, and event-inclusion proof. No theorem-critical derivation requires the internal workflow artifacts. An independent Tectonic build completed successfully with all references resolved; only the pre-existing nonblocking wasy bold-font fallbacks remain.
- Scope or mode upgrade attacks: No fixed-time-to-all-time, coefficient-to-ambient equality, conditional-to-unconditional, event-to-positive-probability, represented-tensor-to-factor, or finite-variation-to-rate upgrade occurs. Clause 2 supplies the full all-time projector budget, clause 3 supplies the infinite-horizon summable variation, and the final probability statement remains set inclusion only.
- Remaining risk: The source-level task of proving a uniform positive lower bound on \(\mathbb P[\mathsf C_2]\) remains open and is accurately excluded from this conditional theorem. No acceptance-blocking adversarial risk remains in the repaired proof bundle.

Verdict alignment: PASS has Blocking Issues = None, Suggested Repair Depth = None, and Smallest Candidate Repair Target = None.
