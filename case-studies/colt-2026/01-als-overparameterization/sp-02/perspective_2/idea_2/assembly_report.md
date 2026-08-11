# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix \(\kappa\ge 1\) and \(q>0\). For positive constants
\(r_0,C_{\rm dim},\delta,L_P,\zeta,C_T\) depending only on
\((\kappa,q)\), with \(r_0\in\mathbb N\), \(L_P<\delta/4\), and
\(\zeta<\delta/4\), define
\[
\epsilon=
\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
\]
For every \(r\ge r_0\), every \(n,k\) in the formalized dimension and
rank window, every admissible deterministic base triple, and the formalized
half-relaxed parallel Jacobi ALS trajectory under the joint smoothing-and-
initialization law,
\[
\mathsf C_2(\delta,L_P,\zeta,C_T)
\subseteq
\left\{
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\text{ exists and is finite, and }
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2
\right\}.
\]
This is an explicitly conditional, outcome-by-outcome event inclusion. It
does not assert that the four-clause certificate is nonempty or has positive
probability. Separately from this positive-Gaussian-smoothing theorem, take a
deterministic zero-smoothing baseline in a tall ambient space \(n\ge r\),
with column-orthonormal deterministic bases, every perturbation vector equal
to zero, and
\[
T=\sum_{j=1}^r\bar a_j\otimes\bar b_j\otimes\bar c_j.
\]
Then the well-typed relations
\[
QT=D_r,\qquad E_\rho=0,\qquad \|Q\|_{\rm op}=1,
\qquad \|T\|_F=\|D_r\|_F
\]
hold. For every trajectory satisfying the normalized entry-deficit, finite
projector-path, and finite represented-tensor-variation clauses, the assembled
proof preserves the stronger algebraic baseline floor
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2.
\]
This last conclusion is not asserted as an event under the positive Gaussian
smoothing law.

## Blockers

None

## Notes

- Assembly identity: sketch attempt 1, assembly attempt 2.
- This repair responds only to the aggregate `PROOF_ASSEMBLY_FLAW`.  Every
  public and private baseline occurrence now uses the tall partial-isometry
  relations \(QT=D_r\), \(\|Q\|_{\rm op}=1\), and
  \(\|T\|_F=\|D_r\|_F\), and explicitly separates the deterministic
  zero-smoothing comparison from the positive-Gaussian-smoothing theorem.
- The public base-conditioning assumption now states the existing rectangular
  convention explicitly: all \(r\) singular values are controlled, so
  the full-column-rank interpretation is unambiguous and no new assumption is
  introduced.
- All five current proof/review pairs were checked as accepted and current.
  `step_001`--`step_004` use unit attempt 1; `step_005` uses the repaired and
  accepted unit attempt 2.
- The appendix contains one dependency-ordered subsection for each of the
  five accepted steps, with 4, 2, 4, 2, and 4 theorem-style local units,
  respectively, plus the final proof of the main theorem.
- A source-order pass accounted for every substantive local derivation,
  invoked standard-result application, target-step assembly, boundary case,
  constant/dependence check, probability-mode check, and exact/noiseless
  baseline argument. Repeated dependency restatements and audit metadata were
  omitted only where the full producing theorem and proof already appear
  earlier in the same bundle.
- Static gates passed: all internal references have matching unique labels;
  theorem/environment and brace counts balance; stable assumption labels
  exactly match `setting.md`; the main theorem has no appendix-forward proof
  references; no external citation commands are present; and scans found no
  workflow-only paths, audit scaffolding, forbidden theorem environments,
  template placeholders, or malformed reference commands.
- Independent Tectonic verification for assembly attempt 2 exited with status
  zero after the reference rerun and `xdvipdfmx`, writing
  `<TEMP_ROOT>/p2-assembly-attempt2/main.pdf`.  The repaired source has no overfull or
  underfull boxes, unresolved references or citations, or compile errors.  The
  retained log contains only the two pre-existing nonblocking `wasy` bold-font
  fallback notices at `\maketitle`; Tectonic emitted no warning after the
  baseline line-wrap repair.
- `ims.bst` remains byte-identical to the canonical shared support file.
  `arxiv.sty` differs only by removal of the incompatible legacy `subfigure`
  import and the unused `algorithm`/`algorithmic` imports; `caption` and
  `subcaption` remain active. `reference.bib` remains present, and the empty
  bibliography is suppressed because the accepted proofs invoke no external
  source theorem.
