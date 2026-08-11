# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public exact/noiseless baseline has no well-typed object mapping or scope discharge. In `latex_template/3_main.tex`, `latex_template/4_proof_sketch.tex`, and the baseline propositions and final theorem proof in `latex_template/5_appendix.tex`, the assertions `Q=I` and `T=D_r` identify a map from the ambient tensor space \(\mathbb R^{n\times n\times n}\) to the coefficient tensor space \(\mathbb R^{r\times r\times r}\), and tensors in those two spaces, without specifying a common-space identification. Moreover, the baseline is presented as part of a theorem whose quantified scope imposes the large-\(n\) dimension condition and the nondegenerate Gaussian smoothing law, while a literal square identity-coordinate noiseless model is generally outside that scope. The accepted general same-target and projector arguments do support the baseline after an explicit assembly-level specialization, for example a separately stated deterministic check with \(n=r\), identity mode bases, zero perturbations, and an explicit identification of ambient and coefficient tensor spaces; the public bundle must state that specialization and separate it from the large-\(n\) Gaussian theorem before using `Q=I` or `T=D_r`.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The general conditional theorem uses no external theorem statement. Every substantive finite-dimensional tool used by the proof is restated and proved or derived in current notation. The only blocking theorem-style application is the public baseline specialization described above.
- Source fidelity: Kolda--Bader is convention-only in the internal roadmap and is not used as public proof authority. The assembled proof does not import a theorem-critical claim from Kolda--Bader, Arvanitakis--Srinivas--Vijayaraghavan, or Bhaskara--Charikar--Moitra--Vijayaraghavan.
- Instantiation and object mapping: The general map \(Q:\mathbb R^{n\times n\times n}\to\mathbb R^{r\times r\times r}\), the exact image identity, projector geometry, and ambient residual transfer are consistently instantiated. The baseline alone omits the domain/codomain identification needed for `Q=I` and `T=D_r`.
- Quantitative regime fidelity: The general residual and loss floors retain \(\delta,L_P,\zeta,\kappa^6,C_T\), the deterministic event-inclusion probability mode, the all-time-to-asymptotic horizon transition, and the ambient/coefficient Frobenius norm distinction. No hidden rate or probability conversion is introduced. The baseline factor \((\delta-L_P)^2\) is algebraically supported once its separate square noiseless scope is stated.
- Assumption discharge: The general proof discharges base full rank and coordinate distortion from `assump:base_conditioning`, uses certificate clauses 1--4 only in their declared conditional roles, and consumes current accepted dependency results before downstream use. The baseline does not currently discharge compatibility with the main theorem's dimension and smoothing scope, so it must be separated and explicitly specialized.
- Main theorem internal references: Assumption and theorem references are paper-ready, uniquely labeled, and resolved. The main theorem has no forbidden appendix-forward reference. Its embedded baseline paragraph is blocking because the specialization itself is not defined in the theorem's object types and quantified scope.
- Appendix cited-result traceability: The five accepted step derivations are translated into named lemmas and propositions with explicit proofs and theorem-style references. Their dependency chain is traceable. The baseline propositions inherit the same missing common-space specialization and must be repaired in the assembly.
- External BibTeX entries: No external citation command appears in public TeX, `reference.bib` declares that no external citations are used, and `main.tex` emits no empty References section. `ims.bst` is the canonical support file; the `arxiv.sty` changes do not affect citation semantics.
- Internal label/ref pairs: All labels are unique, every `\ref` and `\eqref` target exists, and no internal mathematical result is referenced through a citation command or workflow artifact path.
- Unsupported standard facts: None beyond the blocking baseline mapping. Singular-value decomposition, tensor-product norm calculation, orthogonal projection, distance Lipschitzness, summable-tail completeness, squared-distance continuity, and order preservation under limits are all stated and proved or explicitly derived in the public bundle.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
