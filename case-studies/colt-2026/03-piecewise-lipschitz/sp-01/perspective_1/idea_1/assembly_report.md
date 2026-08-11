# Assembly Report

This is the branch-local controller-private status artifact for Perspective 1,
Idea 1, assembly attempt 1.

## Status

COMPLETE

## Attempted Claim

For the exact setting in `setting.md`, under
`assump:averaged-intercept-density`, simultaneously for every
$\mu\in\mathcal D$ and every positive-length interval
$I\subseteq\Theta$,
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|,
\qquad
C_{\mathcal D}\leq
\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty,
\]
with
\[
L_{d,R,\Theta}
\leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1}.
\]
Under the separately scoped `assump:random-intercept-witness`, the claim
includes the exact conditional density and cap, cube support,
$\bar\kappa_{\mathcal D_{\mathrm{RI}}}=M_{\mathrm{RI}}/2$, the resulting
all-law/all-interval bound, and the exact fixed-width specialization.

For every $d\geq3$, $R>0$, and $q\in(0,1)$, the claim includes the exact
heteroscedastic sheet support, almost-sure positive width, the valid
nonzero-fiber conditional density and cap, infinite essential slice cap,
\[
\int K_{\mu_q}\,d\pi_{\mu_q}=\frac1{R(1-q)},
\qquad
C_{\{\mu_q\}}\leq\frac{L_{d,R,\Theta}}{R(1-q)},
\]
and exclusion from precisely the full-column-rank affine pushforwards of
bounded-support, bounded-Lebesgue-density latent laws. The optional
bounded-joint-density comparison gives
$\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}$ and, at $B=1$, the exact
monic scale
$\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]$.

The theorem is sufficient only. It claims no necessity, converse, indexed
uniform polynomial dependence on $(d,R)$, root simplicity, separation,
transversality, learner, or online guarantee.

## Blockers

None

## Notes

Assembly used sketch attempt 1 and all seven unit-attempt-1 proof/review pairs;
all reviews are `ACCEPTED`, their reviewed proof hashes match the current
artifacts, and the dependency graph is closed and acyclic. The appendix maps
all 25 accepted local derivation units to 25 public theorem-style units and
retains the cited-result checks and each step's concluding composition.

The nine required LaTeX bundle files are present. Tectonic compiled
`main.tex` with BibTeX successfully into a temporary output directory; the
final log has no unresolved references or citations, duplicate labels,
overfull boxes, or LaTeX errors. The only emitted warnings are encoding
warnings inside Tectonic's bundled, unused `algorithm` packages.
