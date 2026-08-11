# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **Verified assembly-level break in the exact/noiseless baseline.** The public setup defines
   \(Q:\mathbb R^{n\times n\times n}\to\mathbb R^{r\times r\times r}\),
   places \(T\) and \(\widehat T_t\) in the ambient space, and places \(D_r\),
   \(C_t\), and \(\mathcal S_t\) in coefficient space. Nevertheless,
   `latex_template/3_main.tex`, `latex_template/4_proof_sketch.tex`, the baseline
   propositions and concluding baseline uses in `latex_template/5_appendix.tex`,
   and `assembly_report.md` assert \(Q=I\) and \(T=D_r\) without declaring a
   common ambient/coefficient space. A tall column-orthonormal specialization
   with \(n>r\) makes \(Q\) a coordinate map, not the identity on arbitrary
   ambient tensors, and makes \(T\) an isometric embedding of \(D_r\), not
   literally the same typed tensor. A square identity-basis specialization can
   make the equalities literal only after declaring \(n=r\), identifying the two
   tensor spaces, and separating that deterministic noiseless check from the
   large-\(n\), positive-smoothing theorem scope. Thus the advertised baseline
   proposition is not presently a well-formed standalone claim. The accepted
   general derivations already support an assembly-only repair: either state the
   separate square identity-basis specialization explicitly, or use the
   well-typed tall orthonormal relations \(QT=D_r\),
   \(\lVert Q\rVert_{\rm op}=1\), and
   \(\lVert T\rVert_F=\lVert D_r\rVert_F\), without asserting \(Q=I\) or
   \(T=D_r\). The repaired specialization and scope must be synchronized across
   the main theorem, proof sketch, appendix baseline propositions, final theorem
   proof, and assembly report.

## Nonblocking Concerns

1. The public setup should remove a rectangular-singular-value convention
   ambiguity by stating \(n\ge r\), explicitly assuming full column rank, or
   saying that all \(r\) singular values of each \(\widetilde M\) are bounded
   below. As written, the prose says Assumption~\(\ref{assump:base_conditioning}\)
   implies full column rank, while readers who count only
   \(\min\{n,r\}\) singular values for an \(n\times r\) matrix may not obtain
   that implication from the displayed assumption alone. This does not disturb
   the intended conditional chain once the stated full-column-rank convention
   is used.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The extra exact/noiseless baseline paragraph,
  not the literal four-clause conditional event inclusion.
- Standalone theorem attack: Reading the theorem at an allowed tall dimension
  exposes that \(Q\) is rectangular and \(T,D_r\) inhabit different spaces, so
  the displayed baseline equalities have no declared type or scope. Reading it
  instead with \(n=r\) requires a separate specialization outside the stated
  large-\(n\) Gaussian theorem for large \(r\).
- Weakest step-level claim: The baseline-only propositions inherited from
  `step_003` and `step_005` use the same shorthand. Their lower-bound mechanism
  is sound after a common-space or isometric-embedding specialization; the
  general accepted step claims need no repair.
- Candidate counterexamples or stress cases: For tall orthonormal mode bases,
  an ambient residual component orthogonal to the tensor-product base range is
  annihilated by \(Q\), directly showing that coordinate orthonormality does not
  make \(Q\) the ambient identity. Zero components, rank-deficient spans,
  stationary projectors, rank changes, maximal allowed \(L_P,\zeta\), and
  \(T=0\) do not break the general conditional inequalities.
- Explicit-rate stress cases: The general proof retains the projector loss
  \(L_P\), smoothing loss \(\zeta\), coordinate factor \(\kappa^6\), target
  scale \(C_T\), strict margin, and nonnegative squaring. No hidden rate or
  probability conversion was found.
- Appendix self-contained attack surface: The projector recurrence, exact
  same-target bridge, finite-variation limit, squaring, and set-inclusion
  derivations are substantive and self-contained. The baseline propositions
  alone fail standalone typing and theorem-scope discharge.
- Scope or mode upgrade attacks: The proof makes no event-to-unconditional,
  pointwise-to-probability, finite-horizon-to-all-time, or factor-to-tensor
  convergence upgrade. Empty or null certificate events are expressly allowed.
  The only scope failure is presenting the algebraic noiseless baseline without
  separating it from the large-\(n\), positive-smoothing theorem.
- Remaining risk: After the baseline repair, recheck that every public occurrence
  uses one identical specialization and that the full-column-rank convention is
  explicit. No further adversarial blocker was found in the five-step
  conditional theorem.

Verdict alignment: `BLOCKING` has one numbered blocking issue,
`Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
