# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:polynomial-global-stability`, fix any
\(\varepsilon_0\in(0,1)\). For every sequence of domains
\(\{X_\kappa\}_{\kappa\in\mathbb N}\) and every sequence
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) such that
\(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) is nonempty and finite for every
\(\kappa\), \(|C_\kappa|\to\infty\), and
\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\]
there is a constant \(K_a\geq2\), depending only on
\(a,\alpha_0,\beta_0\) and the universal numerical constant
\(C_{\mathrm{BLM}}\), and independent of
\(\kappa,X_\kappa,C_\kappa,|C_\kappa|\), every realizable distribution,
and \(\varepsilon_0\), such that for every \(\kappa\) there is an
arbitrary-output, computationally unrestricted learner \(M_\kappa\) using
exactly
\[
N_\kappa
=\left\lceil
K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right)
\right\rceil
\]
iid labeled examples. The learner is distribution-free realizable
\((\alpha_0,\beta_0)\)-PAC in population zero-one risk and
\((\varepsilon_0,\delta_\kappa)\)-differentially private under symmetric
ordered replacement adjacency, where
\[
\delta_\kappa
=\exp\!\left[-q_\kappa^{2a+2}-\log\log(e^e+L_\kappa)\right],
\qquad
\log(1/\delta_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa).
\]
Moreover,
\[
N_\kappa
\leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right),
\qquad
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\]
and, for every fixed real \(\rho>0\),
\(\delta_\kappa N_\kappa^\rho\to0\). If an allowed privacy schedule
satisfies \(\bar\delta(N_\kappa)\geq\delta_\kappa\), the same learner is
\((\varepsilon_0,\bar\delta(N_\kappa))\)-DP. In particular, for every
fixed \(c>0\), eventually
\[
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Consequently, at the exact schedule or any eventually larger allowed
schedule, no eventual \(\Omega(L_\kappa)\) sample lower bound can hold for
all eligible arbitrary-output, computationally unrestricted,
distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learners. The PAC
probability is joint over the iid sample and learner randomness, privacy is
pointwise for every adjacent pair and measurable output event, and the
theorem is explicitly conditional on the sole novel primitive assumption
`assump:polynomial-global-stability`.

## Blockers

None

## Notes

- Assembly attempt 4 is a `repair_assembly` response to the aggregate
  `PROOF_ASSEMBLY_FLAW` review whose SHA-256 is
  `6c550813f925130e93ce0c0b18b6cde41e32750c7d7d3e7bf31c78ff38650d54`.
  It retains sketch attempt 1. The accepted sketch and all six current
  proof/review pairs (`step_001` through `step_006`) were rechecked; each
  review records `ACCEPTED`, and each reviewed proof SHA-256 still matches
  the current proof artifact.
- The attempt-4 repair changes only
  Proposition~`prop:step-006-sequence-learners` in `5_appendix.tex`. Its
  prefix now quantifies "any sequence of domains
  \(\{X_\kappa\}_{\kappa\in\mathbb N}\), and any sequence
  \(\{C_\kappa\}_{\kappa\in\mathbb N}\)" before requiring
  \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), instead of quantifying only the
  class sequence while leaving \(X_\kappa\) unbound. This introduces no
  assumption and changes no learner, rate, privacy, asymptotic, or
  lower-bound conclusion. No other public TeX file is changed in attempt 4.
- The appendix has one paper-facing subsection for each of the six sketch
  steps. Each used source unit from `Local Derivation`, each invoked cited
  result application, and each `Target-Step Assembly` was translated into
  theorem-style LaTeX with its substantive derivation preserved. The
  appendix ends with a proof of the main theorem citing the assembled public
  results.
- The preserved attempt-2 repair makes the affected appendix theorem-style statements
  self-contained by binding their domains, classes, fixed privacy parameter,
  class and sequence quantities, exact sequence quantifiers, and local
  constants. The public Bun--Livni--Moran statement is now restricted to the
  consumed regime
  \(\alpha_0=\beta_0=1/8\), \(\varepsilon_0\in(0,1)\), and
  \(\delta\in(0,e^{-2}]\). Its exact two-term bound uses one universal
  \(C_{\mathrm{BLM}}\), with constant absorption justified only in that
  fixed regime rather than over the unrestricted source parameter cube.
- All 129 manual appendix equation tags were replaced by unique
  `eq:app-a*` labels in numbered `equation` environments, and every literal
  appendix-equation dependency was replaced by `\eqref`. The final source
  contains no `\tag{A.*}` or literal `(A.*)` dependency. The label audit
  finds 166 unique labels, 73 distinct referenced labels, no duplicates, and
  no referenced label without a target.
- In the lower-bound contradiction, the exact-schedule branch now sets
  \(\kappa_{\mathrm{priv}}=0\), while the comparison-schedule branch uses
  its eventual privacy-comparison tail index. Thus the common maximum is
  defined in both branches.
- The public theorem matches the formalized conditional goal and preserves
  the exact sample, privacy, probability, horizon, norm, and hidden-constant
  interfaces. No new assumption, unreviewed lemma, or convergence-mode
  upgrade was introduced.
- The public-TeX hygiene, theorem-surface, label/reference, citation-key,
  assumption-label, placeholder, and workflow-language scans pass. The
  label audit finds 166 labels, 73 distinct referenced labels, no duplicate
  labels, and no referenced label without a target. The attempt-2 bundle
  previously completed TeX, BibTeX, all required reruns, and PDF generation;
  that final log had no unresolved references or citations, no multiply
  defined labels, and no overfull or underfull boxes. Its only two
  diagnostics were nonfatal template-font substitutions: bold `wasy` shapes
  at sizes 8 and 6 were unavailable and the corresponding medium shapes were
  used instead. An isolated attempt-4 compile of a copied bundle could not
  enter TeX because the local Tectonic 0.16.9 binary panics in
  `reqwest/system-configuration` while opening its cached bundle URL. This is
  an environment limitation before TeX input, not an identified source
  error; attempt 4 changes only the domain-sequence binder in
  `5_appendix.tex`, and all static checks pass.
