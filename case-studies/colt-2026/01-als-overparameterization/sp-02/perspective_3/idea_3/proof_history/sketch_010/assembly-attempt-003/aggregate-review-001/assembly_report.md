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

- Assembly identity: sketch attempt 10, assembly attempt 3.
- Assembly attempt 3 restores the four accepted declaration families before
  their first public use: the pre-balancing, balanced, and normalized
  coefficient vectors with their physical-mode pairing; the Gaussian mode
  arrays and \(A/B/C\)-to-\(a/b/c\) elliptic aliases; the fixed-target
  normalized projection energy with its nonzero-target and zero-subspace
  domain; and the remaining-initialization conditional probability law after
  the realized smoothing matrices are fixed. These are notation restorations
  only and do not change any accepted claim, assumption, constant, event, or
  dependency interface.
- All 15 current proof-step reviews are `ACCEPTED`. The appendix contains one
  dependency-ordered subsection for each step, with respectively
  3, 3, 4, 3, 4, 4, 3, 4, 2, 2, 3, 3, 2, 2, and 3 theorem-style local
  results, for 45 source units in total, followed by a proof of the main
  theorem.
- A source-order pass accounted for every substantive local derivation,
  invoked standard-result application, target-step assembly, boundary case,
  constant and dependence check, probability-mode check, and same-target
  transfer. The 15 formerly standalone auxiliary blocks were removed only
  after their substantive standard-tool statements, object mappings,
  assumption discharges, and boundary checks were integrated into the
  corresponding theorem-style statements and proofs.
- The original sketch-1 `step_003` was structurally overloaded and was routed
  through `REVISE_SKETCH`. In sketch attempt 10, `step_003` is the accepted
  four-unit normalized Gram argument. Its second local attempt repaired only
  LaTeX and event-alias presentation, so the current overload rule does not
  trigger another sketch revision.
- The public theorem is exactly conditional. The mode-span equality is
  presented as a definition-level algebraic identity proved in the appendix,
  not as an added assumption. The exact raw target, raw coefficient residual,
  and physical Frobenius loss are preserved throughout.
- On all of
  `E_init_norm \cap C_path`, the endpoint proof now selects `W_0` directly
  from the existential clause defining `E_deficit`. The canonical projected
  witness from step 009 is used only under its raw-leverage hypothesis and is
  not treated as event-wide authority.
- Undefined source aliases `(Haar)`, `(LEV)`, `(T)`, and `(T1)`--`(T3)` were
  replaced by exact displayed hypotheses/conclusions and named public
  dependencies. Step 004 cites `lem:step-002-balancing-scalars`; endpoint
  existence and zero-path claims cite `lem:step-011-finite-path-limit`,
  displacement cites `prop:step-011-path-radius`, and factor-radius claims
  cite `prop:step-011-uniform-factor-radius`.
- Static gates passed: labels are unique; every internal reference has a
  target; theorem, proof, and assumption environments balance; stable
  assumption labels match the setting; every surviving cross-used display
  uses a stable ASCII label and `\eqref`; and there are no manual tags,
  malformed references, workflow artifact paths, audit scaffolding, template
  placeholders, duplicate labels, unresolved references, or layout warnings.
- The exact current-notation applications are supported by seven BibTeX
  sources: Davidson--Szarek (rectangular Gaussian norm tail), Stewart--Sun
  (Weyl perturbation), Laurent--Massart (chi-square concentration), Tropp
  (self-adjoint matrix Bernstein), Folland (Haar uniqueness), Besse
  (bi-invariant compact-group curvature), and Bakry--Gentil--Ledoux
  (Bakry--Emery log-Sobolev criterion). Every citation key resolves through
  `reference.bib` and `ims.bst`.
- Assembly attempt 3 completed two network-enabled Tectonic stabilization
  passes. Each ran TeX, BibTeX, the required TeX rerun, and `xdvipdfmx`,
  regenerated the 51-page `main.pdf`, and exited successfully. `main.log`
  and `main.blg` contain no unresolved reference, undefined citation,
  multiply-defined label, overfull-box, underfull-box, or BibTeX warning.
- `arxiv.sty`, `ims.bst`, and `reference.bib` remain present, and `main.tex`
  invokes the bibliography with `ims.bst` after all five canonical content
  files.
