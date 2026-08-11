# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: The public proof uses no external theorem or paper result. Every nontrivial dependency is either proved inline or stated as a named lemma or proposition in the bundle before use. The current accepted proof-step identities are consistent with their matching reviews: `step_001`--`step_004` are unit attempt 1 and `step_005` is unit attempt 2. The final appendix gives paper-facing statements and proofs for the coordinate map, projector transport, coefficient and ambient residual floors, finite-variation convergence, limit passage, event inclusion, and deterministic baseline.
- Source fidelity: The finite-dimensional SVD, orthogonal-projection identity, induced operator-norm inequality, distance-to-subspace Lipschitz bound, nonnegative-series tail fact, finite-dimensional completeness, Frobenius polarization identity, Cauchy--Schwarz inequality, and scalar order preservation under limits are all restated or directly derived in current notation. Kolda--Bader and the smoothed-analysis papers mentioned in branch-local background are not used as public proof authority or theorem-critical mechanism sources.
- Instantiation and object mapping: In the positive-smoothing theorem, $Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C$ maps ambient tensors in $\mathbb R^{n\times n\times n}$ to coefficient tensors in $\mathbb R^{r\times r\times r}$, and every use of $Q(T-\widehat T_t)=D_r+E_\rho-C_t$ preserves that domain and codomain. In the separate deterministic tall baseline, column orthonormality gives $\Lambda_M=\bar M^{\mathsf T}$, hence $\Lambda_M\bar m_j=e_j$, $QT=D_r$, $E_\rho=0$, and $\|Q\|_{\mathrm{op}}=1$. The ambient CP summands are orthonormal, so $\|T\|_F=\sqrt r=\|D_r\|_F$. The proof uses the well-typed coefficient identity $Q(T-\widehat T_t)=D_r-C_t$ and the norm-one operator comparison; it never identifies the rectangular map $Q$ with an ambient identity when $n>r$.
- Quantitative regime fidelity: The main conditional result retains the complete factor $(\delta-L_P-\zeta)/(\kappa^6C_T)$, proves $\delta-L_P-\zeta>\delta/2$, checks nonnegativity before squaring, and exposes
  \[
  \epsilon=\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
  \]
  No dependence on $r,n,k,t$, the deterministic base triple, or the realization is hidden. The all-time residual mode, asymptotic objective mode, ambient/coefficient Frobenius norms, and deterministic event-inclusion probability mode agree across the theorem and appendix. The deterministic baseline removes the smoothing and coordinate losses without changing the floor, yielding $(\delta-L_P)^2\|T\|_F^2$.
- Assumption discharge: Assumption~\ref{assump:base_conditioning} supplies full column rank and the three coordinate-map norm bounds. Certificate clauses 1--2 supply the entry reserve and projector-path budget, clause 3 supplies finite represented-tensor variation, and clause 4 supplies the smoothing and target-scale bounds. The main closure consumes exactly those interfaces and does not infer certificate nonemptiness or positive probability. The zero-smoothing baseline is explicitly separated from Assumption~\ref{assump:gaussian_smoothing} and the positive-smoothing joint law; it uses only the normalized entry-deficit, projector-path, and finite-variation clauses needed for the unchanged algebraic floor.
- Main theorem internal references: The main theorem statement refers only to numbered assumptions and setting notation available before the theorem. It contains no appendix-forward theorem reference, proof-step identifier, local-unit identifier, or internal workflow citation. Its deterministic baseline statement includes the complete tall column-orthonormal specialization and is proved by named appendix propositions.
- Appendix cited-result traceability: Every mathematical dependency is named in paper-ready form as a Lemma, Proposition, or Theorem reference. Dependency order is acyclic: the coordinate and projector results precede the residual bridge; finite variation precedes objective convergence; and both precede theorem closure. The repaired baseline proposition derives its rectangular object mapping explicitly, cites the same-target and projector propositions, and is then cited by the limiting-baseline proposition and final theorem proof. No public proof relies on archived reviews, `proof_history/`, branch-local proof files, reviewer decisions, or workflow provenance.
- External BibTeX entries: No `\cite`, `\citep`, or `\citet` command appears in the public TeX, and `reference.bib` contains no entry. `main.tex` invokes no bibliography command, so the compiled output does not expose an empty References section. `ims.bst` remains a support file only.
- Internal label/ref pairs: Static extraction found 37 unique labels, 79 internal reference uses, no duplicate labels, and no unresolved targets. Stable assumption labels exactly match the five ids in `setting.md`. A fresh Tectonic compilation completed after its reference rerun with no unresolved references, unresolved citations, duplicate-label warnings, or bibliography warnings; the only log notices were unrelated `wasy` bold-font fallbacks.
- Unsupported standard facts: None. All theorem-critical standard facts are proved or restated with their finite-dimensional hypotheses and current objects. No vague appeal to a standard theorem, named inequality, paper title, subsection, claim environment, hypothesis environment, invariant environment, or bare workflow identifier supplies proof authority.
