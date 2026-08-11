# Assembly Report

## Status

PARTIAL_BLOCKED

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
probability. In the exact/noiseless coordinate-orthonormal specialization
\(Q=I\), \(E_\rho=0\), and \(T=D_r\), the assembled proof preserves the
stronger baseline floor
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2.
\]

## Blockers

1. The required post-repair compile verification is pending. A controller-side
   Tectonic run reached TeX and identified the package conflict
   `subcaption.sty:66 Package subcaption Error: This package can't be used in
   cooperation with the subfigure package.` The conflicting legacy
   `subfigure` import has now been removed from `arxiv.sty`, matching the
   warning-free Perspective 1 support preamble. This sandbox's Tectonic still
   exits with code 101 before TeX processing because its macOS
   `system-configuration` proxy initialization panics with `Attempted to
   create a NULL object`. Consequently the repaired bundle still needs a
   controller-side compile to certify zero errors, unresolved references, and
   warnings. Smallest repair target: `/proof-assembly` compile verification.

## Notes

- Assembly identity: sketch attempt 1, assembly attempt 1.
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
- `ims.bst` remains byte-identical to the canonical shared support file.
  `arxiv.sty` differs only by removal of the incompatible legacy `subfigure`
  import; `caption` and `subcaption` remain active. `reference.bib` remains
  present, and the empty bibliography is suppressed because the accepted
  proofs invoke no external source theorem.
