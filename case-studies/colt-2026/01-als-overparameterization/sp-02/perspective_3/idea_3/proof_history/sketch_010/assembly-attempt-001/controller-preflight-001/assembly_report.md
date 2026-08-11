# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix \(\kappa\ge1\) and a fixed \(q\ge4\). There exist
\(r_0(\kappa,q)\), \(C(\kappa,q)\), and

\[
  \epsilon_0(\kappa)
  =\left(\frac{15}{16}\delta_0\right)^2\kappa_1^{-12}>0,
  \qquad \delta_0=\frac18,\quad \kappa_1=2\kappa^2,
\]

such that, uniformly for every \(r\ge r_0(\kappa,q)\), every
\(n\ge C(\kappa,q)r^4\log r\), every
\(r<k\le\lfloor r^{5/4}\rfloor\), and every deterministic base triple
satisfying the formalized base-conditioning assumption,

\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

On the explicitly conditional event
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced
simultaneous-GD iterates converge in \(d_{\rm bal}\) to a finite
\(\theta_\infty\) and satisfy

\[
  \lim_{t\to\infty}F(\theta_t)
  =F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]

Consequently, for the convergence-and-positive-limit event \(\mathcal F_+\),

\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}
      \mid\mathcal E_{\rm init\_norm}).
\]

The final conditional factor is retained exactly and may be zero. No uniform
positive lower bound for it is proved, so the assembled theorem does not solve
the original unconditional open problem. The remaining certificate-probability
gap is to lower-bound
\(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\)
uniformly over the stated regime.

## Blockers

None

## Notes

- Assembly identity: sketch attempt 10, assembly attempt 1.
- All 15 current proof-step reviews are `ACCEPTED`. The appendix contains one
  dependency-ordered subsection for each step, with respectively
  3, 3, 4, 3, 4, 4, 3, 4, 2, 2, 3, 3, 2, 2, and 3 theorem-style local
  results, for 45 source units in total, followed by a proof of the main
  theorem.
- A source-order pass accounted for every substantive local derivation,
  invoked standard-result application, target-step assembly, boundary case,
  constant and dependence check, probability-mode check, and same-target
  transfer. Only workflow metadata, exact duplicate summaries, and
  nonmathematical audit narration were omitted.
- The original sketch-1 `step_003` was structurally overloaded and was routed
  through `REVISE_SKETCH`. In sketch attempt 10, `step_003` is the accepted
  four-unit normalized Gram argument. Its second local attempt repaired only
  LaTeX and event-alias presentation, so the current overload rule does not
  trigger another sketch revision.
- The public theorem is exactly conditional. The mode-span equality is
  presented as a definition-level algebraic identity proved in the appendix,
  not as an added assumption. The exact raw target, raw coefficient residual,
  and physical Frobenius loss are preserved throughout.
- Static gates passed: labels are unique; every internal reference has a
  target; theorem, proof, and assumption environments balance; stable
  assumption labels match the setting; there are no citation commands,
  malformed references, workflow artifact paths, audit scaffolding, template
  placeholders, unresolved references, or overfull boxes.
- Tectonic completed two TeX and cross-reference passes with zero TeX warnings,
  producing `main.xdv` and a clean `main.log`. The stripped offline bundle does
  not contain the standard physical font `rsfs10.pfb`, so its `xdvipdfmx`
  backend cannot regenerate the final PDF from the stable source without the
  missing bundle resource. Standard `mathrsfs` typography is retained; no
  source-level font substitution was made for this cache limitation.
- `arxiv.sty`, `ims.bst`, and `reference.bib` remain present. The incompatible
  legacy `subfigure` import and unused `algorithm`, `algorithmic`, and
  `wasysym` imports were removed from the style file. No bibliography is
  displayed because the accepted proofs use no external citations.
