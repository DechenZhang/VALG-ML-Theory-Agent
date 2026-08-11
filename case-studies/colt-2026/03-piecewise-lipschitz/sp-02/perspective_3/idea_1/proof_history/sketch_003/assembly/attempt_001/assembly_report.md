# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under the three stable primitive assumptions in `setting.md`, the assembled
bundle proves the unconditional affine coordinate-pivot sweep theorem:
`Gamma_piv(b,F;R)` is finite; every admissible full joint law and every
positive-length interval satisfy

\[
\Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|;
\]

and the interval-first, law-second supremum has the literal extended-real
empty-index semantics from the formalized goal. It is a finite nonnegative
capacity only when `A >= 1` and `|Theta| > 0`.

The bundle also proves the exact scale-stress identity
`Gamma_piv(b_delta,F_delta;1)=1/delta` for every `0 < delta <= 1`, and the
exact monic specialization with deterministic leading coefficient,

\[
\Gamma_{\rm piv}(b_d,F_d;R)\leq d+\frac{R d(d-1)}2,
\]

and, for every bounded interval and every admissible arbitrarily correlated
law on the lower coefficients,

\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)|I|.
\]

There are no hidden constants or probability, horizon, norm, or measure mode
changes. The progress type remains `material_partial`: no polynomial
general-instance bound on `Gamma_piv` in Pfaffian presentation data is
claimed.

## Blockers

None

## Notes

All six sketch-attempt-3 proof/review pairs were identity-checked before use;
each review records the matching step, producer attempt 1, reviewed proof
digest, and `ACCEPTED` status. The appendix contains one mathematical
subsection for each of the six source steps and translates all 24 local
theorem-style units, their cited interfaces, boundary cases, and concluding
step reasoning. Its final theorem proof cites the six named public blocks in
the accepted dependency order.

The public source uses BibTeX-backed Kechris and Federer references and
retains analytic/universal measurability, endpoint extension, Lipschitz
localization, extended multiplicity, exact coverage, monotone exhaustion,
density completion, empty-index semantics, the scale audit, and the complete
monic bridge. No stale assembly, proof history, global diagnostic, or final
review was used as mathematical evidence.

Tectonic completed TeX, BibTeX, and all cross-reference reruns without a
warning. The generated PDF was removed. The shared style was instantiated
with only compile-compatibility cleanup: the conflicting obsolete
`subfigure` load and two unused algorithm-package loads were removed. All 17
controller-protected input digests were revalidated after assembly, and the
live public bundle contains exactly the required nine source files.
