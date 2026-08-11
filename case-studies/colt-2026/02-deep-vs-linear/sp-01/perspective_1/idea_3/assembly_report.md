# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under Assumptions assump:fixed-source-witnesses,
assump:universal-expected-success, assump:constant-depth, and
assump:robust-tube, the single unconditional initialization-gate law
\(\mathcal P_{\rm gate}\) satisfies, for every
\(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)\right]\leq\varepsilon+\delta_0.
\]
Consequently,
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\leq d_{\rm path}\leq S^L\leq S^{L_0},
\qquad
\operatorname{dc}_{2\varepsilon}(\mathcal H)\leq S^{L_0}.
\]
The claim is conditional, expected-risk, tie-resolved, and fixed-horizon,
with no hidden multiplicative constant.

## Blockers

None.

## Notes

Assembly repair attempt 3 (retry mode `repair_assembly`) was built directly
from `setting.md`, the accepted sketch and sketch review, all seven accepted
proof-step/review pairs, and the aggregate repair routing.  The four affected
public interfaces from attempt 2 continue to state their local domains
explicitly: step 2 and step 3
name the complete labeled history and exact finite-horizon state recursion,
step 5 fixes `\mathcal D\in\Delta(\mathcal X)`, `h\in\mathcal H`, and the
stable initialization before sampling, and step 7 quantifies its public
specialization over those same domains.

The step-6 event-split proof was regenerated from its accepted source body.
It explicitly defines the Borel one-step update map, proves by finite
composition induction that every generated state through time `T` is Borel,
and composes those states with the latter-half score, fixed tie map, and finite
risk sum before applying the tower identity.  No claim, assumption, rate,
quantifier, or probability mode was changed.  All 16 accepted local
theorem-style units (2, 2, 3, 2, 2, 3, and 2 by steps) remain represented with
stable public labels, and the final subsection proves the main theorem from
the exact step-6 witness and step-7 specialization.

Attempt 3 repairs only the equation-reference layer identified by the
attempt-2 aggregate review.  Every manually tagged display from (1) through
(102) now has one unique stable label of the form `eq:p1-i3-eqNNN`, and every
hard-coded numeric equation locator in public prose has been replaced by the
matching `\eqref{...}` reference, including equation ranges.  The equations,
theorem statements, assumptions, and proof meaning are unchanged.  A static
check found 102 tags, 102 equation labels, 102 unique equation labels, and no
remaining bare numeric equation locators in the public TeX.

The public bundle contains the five content files, the compile entry, and the
three support files required by the template.  No external citations are used,
so the bibliography support remains present without a visible empty references
section.  Tectonic compilation succeeded and produced `main.pdf`; the final
log has no unresolved references, duplicate labels, LaTeX errors, overfull
boxes, or citation warnings.  Only two nonblocking font-shape warnings from
the shared style remain.
