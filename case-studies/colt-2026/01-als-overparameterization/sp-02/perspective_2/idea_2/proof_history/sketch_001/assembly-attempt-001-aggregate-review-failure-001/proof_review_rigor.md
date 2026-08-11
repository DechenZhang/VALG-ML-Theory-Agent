# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The advertised exact/noiseless baseline is not a well-typed specialization of the public setup. The setup defines
   \(Q:\mathbb R^{n\times n\times n}\to\mathbb R^{r\times r\times r}\), places \(T\) in the ambient space, and places \(D_r\) in coefficient space. Nevertheless, `latex_template/3_main.tex` lines 46--52, `latex_template/4_proof_sketch.tex` lines 41--43, and the baseline arguments in `latex_template/5_appendix.tex` lines 248--253, 537--575, 830--871, and 915--916 assert \(Q=I\) and \(T=D_r\) without declaring a common domain, codomain, or identification. For rectangular orthonormal bases, \(Q\) is a coordinate map rather than the identity on ambient tensors; imposing \(n=r\) and identity bases is instead outside the stated large-\(n\) theorem scope for the relevant ranks unless it is explicitly separated as an algebraic baseline. The accepted general derivations do support an assembly-only repair: either state a separate common-space specialization with \(n=r\), identity bases, and noiseless target, or use the weaker and better-typed tall column-orthonormal noiseless specialization \(QT=D_r\), \(\|Q\|_{\rm op}=1\), and \(\|T\|_F=\|D_r\|_F\), without asserting \(Q=I\) or \(T=D_r\). Until one such specialization and its scope are stated consistently in the theorem, sketch, appendix propositions, main proof, and assembly report, the claimed baseline reduction is not rigorous.

## Nonblocking Concerns

1. The paper should make explicit that `assump:base_conditioning` includes full column rank (or state \(n\ge r\)). The proof uses \(\sigma_{\min}(\widetilde M)\|v\|\le\|\widetilde Mv\|\) for every \(v\in\mathbb R^r\), while `assump:dimension` alone does not force \(n\ge r\) for every arbitrary positive \(C_{\rm dim}\) appearing in the parameterized theorem. The intended tall-matrix convention is clear from the setting and the existential choice \(C_{\rm dim}=1\), so this does not affect the accepted conditional derivation, but an explicit statement would remove a rectangular-singular-value convention ambiguity.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: The five-step conditional chain is valid. Base conditioning gives \(\|\Lambda_M\|_{\rm op}\le\kappa^2\) and \(0<\|Q\|_{\rm op}\le\kappa^6\); projector transport gives the exact finite-prefix charge \(L_P\|D_r\|_F\); distance Lipschitzness and the same-target identity retain the full \(E_\rho\) defect; the operator comparison is used in the correct lower-bound direction; finite unsquared variation gives a Cauchy represented-tensor path; and nonnegative squaring plus ordinary limit order gives the final objective floor. The only invalid derivation is the untyped baseline identification described above.
- Statement self-containedness: The four-clause conditional theorem is readable, explicitly conditional, and cites all five primitive assumptions. Its baseline paragraph is not self-contained because it omits the space identification and whether that specialization is inside or outside the large-\(n\), positive-smoothing theorem scope.
- Main theorem constants and notation: The public formula
  \[
  \epsilon=\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2
  \]
  matches the setting and accepted steps, and every allowed dependence is stated. No appendix-local helper dictionary leaks into the main theorem.
- Derivation-over-notation: The appendix displays the singular-value calculation, tensor-product norm calculation, projector recurrence and induction, smoothing subtraction, ambient transfer, target-scale conversion, summable-tail estimate, continuity bound, sign check, squaring, and scalar limit passage. No helper notation substitutes for a missing core derivation.
- Explicit-rate contract: The residual and loss bounds expose \(\kappa,\delta,L_P,\zeta,C_T\), declare no hidden constant, state deterministic event-inclusion probability mode, all-time and asymptotic horizon modes, and the exact Frobenius norms. No term is absorbed or simplified, so no separate Rate Specialization Bridge is needed. The baseline-reduction part of the contract fails only because its specialization is not typed.
- Appendix full derivations: All 16 accepted local units, in the required \(4+2+4+2+4\) distribution, and all five target-step assemblies were compared directly with their current source proofs and accepted reviews, including `step_005` unit attempt 2. The appendix preserves every needed definition, displayed equation, inequality chain, induction step, boundary case, constant check, dependency use, and target assembly; omissions are limited to workflow metadata and redundant audit prose.
- Quantifiers and constants: The strict margins give \(\delta-L_P-\zeta>\delta/2>0\), division occurs only by positive \(\|Q\|_{\rm op}\) and \(C_T\), and the proof never divides by \(\|T\|_F\). The theorem is uniform in the declared dimensions, base triple, time, and realization. The full-column-rank convention concern above should be clarified but does not change the accepted conditional chain.
- Probability or convergence modes: Every implication is pathwise on \(\mathsf C_2\). There is no expectation-to-probability, event-to-unconditional, pointwise-to-uniform, or finite-horizon-to-all-time upgrade. Empty and probability-zero certificate events are correctly allowed, and no lower bound on \(\mathbb P[\mathsf C_2]\) is inferred.
- Boundary cases: The source and appendix cover raw initialization, positive and zero gauge branches, zero or dependent coefficient features, \(\mathcal S_t=\{0\}\), full and rank-changing spans, stationary projectors, the empty finite-prefix sum at \(t=0\), \(T=0\), stationary represented-tensor paths, and factor divergence with represented-tensor convergence. The remaining uncovered boundary is precisely the ambient/coefficient typing and theorem-scope status of the advertised baseline.
- Hidden subclaims: No hidden theorem-critical claim remains in the general conditional proof. The sole hidden premise is the undeclared common-space/isometric identification needed by \(Q=I\) and \(T=D_r\). All labels and references resolve, no forbidden workflow or placeholder prose appears, `main.tex` is the compile entry, `ims.bst` is canonical and unused, `reference.bib` matches the absence of citations, and an independent Tectonic build completed without errors or warnings at `<TEMP_ROOT>/p2-rigor-compile/main.pdf`.

