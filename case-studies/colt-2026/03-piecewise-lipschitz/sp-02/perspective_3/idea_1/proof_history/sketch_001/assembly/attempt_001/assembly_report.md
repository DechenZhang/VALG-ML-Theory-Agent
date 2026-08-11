# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:shared-pfaffian-chain`, `assump:no-forced-root`, and
`assump:joint-density-cap`, the fixed affine family has
\(\Gamma_{\rm piv}(b,F;R)<\infty\), and every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(|I|>0\) satisfy
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq
\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|,
\]
with the same constant bounding the nested supremum over all admissible,
arbitrarily correlated laws and all positive-length intervals.  For the
scale-stress family,
\(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\), and under the uniform
law on \([-1,1]^2\), the root probability on \([0,\epsilon]\) is exactly
\(\epsilon/(4\delta)\) for \(0<\epsilon\leq\delta\leq1\).  For every
integer \(d\geq1\), the exact monic lower-coefficient family satisfies, on
every compact localization,
\[
\Gamma_{\rm piv}(b_d,F_d;R)
\leq d+\frac{Rd(d-1)}2,
\]
and every \(\mu\in\mathcal D_{d,R,\kappa}\) and bounded interval
\(I\subset\mathbb R\) satisfy
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|I|.
\]
The coefficient of \(\theta^d\) is deterministic and remains outside the
\(d\)-dimensional random lower-coefficient law.  All bounds are ordinary
probability statements with no hidden constants or independence premise.
This is a `material_partial` theorem: polynomial general-instance control of
\(\Gamma_{\rm piv}\) from
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other Pfaffian-format data
remains unresolved.

## Blockers

None

## Notes

All six accepted proof steps are represented in source order.  The appendix
preserves root feasibility and fixed-family conditioning, measurable adaptive
charts, the full area-formula and exhaustion argument, arbitrary-correlation
density conversion, the exact scale-stress wedge calculation, and the exact
monic specialization including singleton intervals.  Setting notation,
assumption labels, coefficient dimensions, probability modes, and constants
are synchronized across the setup, main theorem, proof sketch, appendix, and
bibliography.  A temporary-copy Tectonic build completed through BibTeX with
no warnings, unresolved references, or unresolved citations.
