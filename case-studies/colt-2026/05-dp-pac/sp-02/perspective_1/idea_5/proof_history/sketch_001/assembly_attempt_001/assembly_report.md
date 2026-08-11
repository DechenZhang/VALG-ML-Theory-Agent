# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:polynomial-global-stability`, fix any
\(\varepsilon_0\in(0,1)\). For every sequence
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) of nonempty finite binary concept
classes such that \(|C_\kappa|\to\infty\) and
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

- Assembly attempt 1 uses sketch attempt 1. The accepted sketch and all six
  current proof/review pairs (`step_001` through `step_006`) were checked;
  each review records `ACCEPTED`, and each reviewed proof SHA-256 matches the
  current proof artifact.
- The appendix has one paper-facing subsection for each of the six sketch
  steps. Each used source unit from `Local Derivation`, each invoked cited
  result application, and each `Target-Step Assembly` was translated into
  theorem-style LaTeX with its substantive derivation preserved. The
  appendix ends with a proof of the main theorem citing the assembled public
  results.
- The public theorem matches the formalized conditional goal and preserves
  the exact sample, privacy, probability, horizon, norm, and hidden-constant
  interfaces. No new assumption, unreviewed lemma, or convergence-mode
  upgrade was introduced.
- The public-TeX hygiene, label/reference, citation-key, assumption-label,
  placeholder, and workflow-language scans pass. A full Tectonic compilation
  resolves the Bun--Livni--Moran citation and all internal references without
  warnings.
