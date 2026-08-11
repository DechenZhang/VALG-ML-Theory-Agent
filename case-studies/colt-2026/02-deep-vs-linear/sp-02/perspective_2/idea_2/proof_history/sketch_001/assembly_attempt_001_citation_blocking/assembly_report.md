# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix numerical \(B\ge 1\) and \(k\ge 1\). For every arbitrary domain
\(\mathcal X\), binary class
\(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), admissible parameters
\(m,\tau,\varepsilon\), and fixed learner \(A\) satisfying
`assump:parameter-regime`, `assump:adaptive-sq-interface`,
`assump:universal-adversarial-guarantee`, and
`assump:mean-response-rank`, a basis
\(\psi_1,\ldots,\psi_{r_A}\) of the static mean-response space \(V_A\) can be
chosen once, before every learning instance, so that
\[
\varphi_A(x):=(\psi_1(x),\ldots,\psi_{r_A}(x))
\in\mathbb R^{r_A}
\]
is deterministic and independent of the instance distribution, selected
target, every tolerance-valid response policy, and realized learner seed.
For every \(h\in\mathcal H\), there is a target-dependent
\(w_h\in\mathbb R^{r_A}\) such that
\[
h(x)\langle w_h,\varphi_A(x)\rangle
\ge 1-2\varepsilon=\rho>\frac12>0
\qquad\text{for every }x\in\mathcal X.
\]
Thus every score has exact deterministic sign \(h(x)\), with no tie, and
\[
\operatorname{dc}(\mathcal H)
\le r_A
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
The statement is conditional and has no probability qualification,
domain-cardinality dependence, or hidden constants. If \(\mathcal X\) or
\(\mathcal H\) is empty, then \(\operatorname{dc}(\mathcal H)=0\); if both
are nonempty, the premises imply \(r_A\ge1\). At \(m=0\), the upper bound is
\(r_A\le B\); at \(\varepsilon=0\), the signed margin is \(1\); at \(B=1\),
the upper bound is \(r_A\le(1+m/\tau^2)^k\); and at \(k=1\), it is
\(r_A\le B(1+m/\tau^2)\).

## Blockers

None

## Notes

All six accepted proof-step derivations and their target assemblies are
translated into the public appendix in dependency order. The bundle preserves
the fixed-space compactness argument, exact-center seed-only correlation,
source-faithful Sion application, arbitrary-domain compact finite-intersection
argument, and exact basis-score transfer. Progress remains `conditional`:
deriving the static rank certificate from `m,tau` alone and obtaining the
unconditional universal linear bound remain open.
