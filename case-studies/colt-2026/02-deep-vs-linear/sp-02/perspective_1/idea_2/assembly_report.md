# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:sq-parameter-regime` and
`assump:universal-adversarial-sq`, the pre-instance law
\(\mathsf P_A=\operatorname{Law}(\phi_R)\) satisfies simultaneously for
every distribution \(\mathcal D\) on \(\mathcal X\) and every
\(h\in\mathcal H\)
\[
\begin{aligned}
&\mathbb E_{\Phi\sim\mathsf P_A}
\left[\inf_{w\in\mathbb R^N}
L_{\mathrm{tie}}(\mathcal D,h,x\mapsto\langle w,\Phi(x)\rangle)
\right]\\
&\quad\le
\mathbb E_{R\sim\mu}
L_{\mathrm{tie}}(\mathcal D,h,g_{R,z^{\mathcal D,h,R}})\\
&\quad=
\mathbb E_{R\sim\mu}
L_{\mathrm{bin}}\bigl(
\mathcal D,h,A_R^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\bigr)
\le\varepsilon,
\end{aligned}
\]
and consequently
\[
\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)
\le (\lceil1/\tau\rceil+1)^m.
\]
The bounds are exact, fixed-horizon, and in expectation only over the
learner tape (equivalently the feature-map pushforward); there are no hidden
constants or dropped dependencies.

## Blockers

None

## Notes

The bundle translates all substantive local derivations, the invoked
measure-theoretic result and its assumption checks, every boundary case, and
each final implication from the four current accepted proof/review pairs.
The appendix uses the dependency order `step_001` through `step_004`, keeps
the canonical basis choice tape-side on noninjective map fibers, and retains
the exact `m=0`, `epsilon=0`, and `tau>=1` reductions. The public theorem
uses only the two primitive setting assumptions; canonical-oracle validity,
response-tree totality, measurability, replay synchronization, and the
tie-free loss identity are all proved as named appendix results.
`tectonic --keep-logs --keep-intermediates main.tex` completed with BibTeX
and no TeX, reference, citation, box, or font warnings; generated build files
were then removed so `latex_template/` contains only the canonical source
bundle. The branch-local `arxiv.sty` omits the unused `subfigure`,
`algorithm`, `algorithmic`, and `wasysym` package loads: the shared style's
simultaneous `subfigure`/`subcaption` loads are incompatible, and the other
unused loads produced engine warnings. No proof content or formatting command
used by this bundle depends on those packages.
