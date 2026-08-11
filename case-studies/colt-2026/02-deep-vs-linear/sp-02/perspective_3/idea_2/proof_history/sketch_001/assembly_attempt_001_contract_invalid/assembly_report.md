# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under the seven primitive assumptions in `setting.md`, including the static
finite terminal catalog and its explicit polynomial budget, the single map
\(\phi_G(x)=(g_1(x),\ldots,g_L(x))\) satisfies
\[
\forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
\qquad
h(x)\langle w_h,\phi_G(x)\rangle
\ge 1-2\varepsilon>\tfrac12,
\]
and therefore
\[
\operatorname{dc}(H)\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The conclusion is deterministic, fixed-horizon, exact pointwise, and valid on
arbitrary domains, including the empty domain. It retains the exact
\(m=0\), every finite \(\tau>0\), \(L=1\), \(B=1\), and
\(\varepsilon=0\) boundary cases. The theorem remains explicitly
conditional on the catalog assumptions and does not claim the unresolved
catalog-free source theorem.

## Blockers

None

## Notes

All six accepted proof-step/review pairs were checked against the controller's
binding SHA-256 values. The appendix translates every accepted non-atomic
local derivation and each target-step assembly in dependency order. The bundle
uses no external citations, so `reference.bib` and `ims.bst` remain present
while `main.tex` suppresses an empty bibliography. Progress type:
`conditional`; the remaining full source gap is derivation of a
boundary-corrected catalog-free linear bound from \(m\) and \(\tau\) alone.
The copied `arxiv.sty` omits the unused `subfigure`, `algorithm`,
`algorithmic`, and `wasysym` loads: the first conflicted with the canonical
`subcaption` load under current LaTeX, and the others produced unused-package
encoding or font warnings. The theorem environments and proof content are
unchanged.
