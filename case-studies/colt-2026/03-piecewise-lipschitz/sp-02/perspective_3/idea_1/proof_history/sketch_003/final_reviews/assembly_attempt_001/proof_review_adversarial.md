# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Verified public-bundle break in the ordered-supremum statement. In
   `latex_template/3_main.tex:27`, the intended TeX fragment
   `I\ {\rm an\ interval}` is encoded with byte sequence `7b 0d 6d` at file
   offset 903: a raw carriage return replaces the bytes `5c 72` of `\r`.
   TeX therefore receives an endline before `m an\ interval`, rather than the
   `\rm` declaration. This both violates the public-source control-byte
   contract and corrupts the literal interval-index annotation in (T2). The
   appendix proves the intended interval-first, law-second statement, so the
   defect is localized to assembly rather than to an accepted proof step.

## Nonblocking Concerns

1. The public setup says that the functions are `C^1` on a compact interval,
   while the appendix repeatedly invokes an "endpoint-inclusive `C^1`
   convention" and, for singleton `Theta`, an assigned derivative at that
   point. The convention is standard and unambiguous for restrictions of
   ambient `C^1` functions on nondegenerate intervals, and all quantitative
   specializations are ambient polynomials. For an abstract singleton-domain
   family, however, derivative data are not intrinsic to the function values.
   No nonvacuous interval counterexample results, but a paper-ready assembly
   should state the endpoint/singleton convention explicitly in the setup.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The literal (T2) branch statement is the
  weakest public claim. Mathematically, the appendix proves that
  `D_{N,R,kappa}` is nonempty exactly when `A >= 1`, that the positive-length
  interval class is nonempty exactly when `|Theta| > 0`, and that the inner
  interval supremum is taken before the outer law supremum. It also obtains
  `-infinity` in each single-empty and double-empty branch under the declared
  convention. The raw carriage return in the displayed index is nevertheless
  a verified standalone source defect.

- Standalone theorem attack: Reading only the setup, preliminaries, and main
  theorem leaves all quantities in (T1), (T3), (T4), and (T5) defined and
  preserves the deterministic-leading-coefficient monic object. The theorem
  explicitly denies polynomial general-instance control of `Gamma_piv`, so it
  does not present the `material_partial` result as solving the remaining
  Pfaffian-format problem. The only verified standalone break is the malformed
  (T2) index; no internal workflow artifact is otherwise needed to parse the
  theorem.

- Weakest step-level claim: The localized area sweep was attacked with
  tangent roots, repeated roots, countably infinite fibers, interval-sized
  fibers from an identically zero affine combination, empty chart domains,
  and `N=1`. The proof localizes the ambient `C^1` chart into countably many
  disjoint Borel Lipschitz pieces, applies the equal-dimensional area formula
  with multiplicity in `{0,1,...,+infinity}`, and computes the exact Jacobian
  `|partial_theta T_j|`. Thus it never assumes injectivity, finite fibers,
  regular values, transversality, or simple roots. The analytic-image and
  universal-measurability chain makes every image measurable before its volume
  is used. No counterexample to the step claim was found.

- Candidate counterexamples or stress cases: For empty `K_R`, the supported
  root event is empty and `Gamma_piv=0` by definition. For nonempty `K_R`,
  compactness plus no forced root gives a positive maximum-coordinate margin,
  and bounded first derivatives give fixed-family finiteness. Near-zero
  selected pivots enter some finite weak-threshold set `E_{j,m}`, so exhaustion
  loses no point or residual. Lexicographic extended-real comparisons give a
  Borel selector through ties and zero unselected coordinates. Cube faces and
  corners remain in the weak chart constraint. Empty, open, closed, half-open,
  and singleton intervals are retained. Degenerate `Theta` makes the interval
  index empty; `A < 1` makes the law index empty. For `N=1`, the beta cube is
  `R^0` with measure one. Each attack is neutralized by a displayed branch or
  identity, subject only to the endpoint-convention concern above.

- Explicit-rate stress cases: For the scale family, direct differentiation
  gives `V_1=1/delta`, `V_2=delta/theta^2` off zero, and `V_2(0)=+infinity`.
  The global upper bound from pivot one and the matching value at zero prove
  the exact equality `Gamma_piv=1/delta`; at `delta=1` the pointwise minimum
  is exactly one, including both endpoint ties. For the monic family, keeping
  `theta^d` in the deterministic offset and only the `d` lower coefficients
  random gives the exact same polynomial. The constant pivot covers
  `|theta| <= 1`, the top pivot covers `|theta| > 1`, and `d=1` has one pivot
  of exact speed one. The coefficient
  `kappa (2R)^(d-1) (d + R d(d-1)/2)` follows with no hidden constant,
  clipping, threshold, or probability conversion. Empty and singleton
  intervals have exactly zero probability by empty-event and proper-affine-
  hyperplane nullity.

- Appendix self-contained attack surface: The appendix contains six
  paper-facing step subsections, all 24 theorem-style local units with proofs,
  and a final proof of the main theorem in dependency order. The adaptive
  chart construction, analytic event chain, localized area formula, exact
  coverage, monotone exhaustion, full-density transfer, ordered suprema,
  scale equality, and monic bridge are present without proof-step IDs as
  mathematical authority. The three theorem-facing assumptions are the
  numbered primitive conditions; compactness, the positive pivot margin,
  finite conditioning, chart selection, coverage, and measurability are all
  derived by named results rather than inserted as admissibility conditions.
  Main-theorem notation is defined in the setup or preliminaries, while chart
  maps, exhaustion levels, and pivot aliases remain appendix-local. Kechris is
  cited for Borel images of analytic sets and universal measurability, and
  Federer is cited for the equal-dimensional area formula with extended
  multiplicity; both citations have matching BibTeX entries and their stated
  source roles match the claims used. All `label`/`ref` pairs resolve,
  citation keys resolve, and the literal equation tags (A1)--(A71) and
  (T1)--(T5) are unique and referenced consistently.

- Scope or mode upgrade attacks: The coefficient-volume estimate is converted
  to ordinary probability by integrating the same measurable set against the
  full joint density, so arbitrary coefficient correlation is preserved and
  no marginal-density or independence premise is introduced. Pairwise bounds
  remain valid when their right side exceeds one. The two suprema are taken in
  the declared order and are not union bounds. Static fixed-family finiteness
  is never upgraded to a polynomial descriptor bound, and the public theorem
  retains the explicit unresolved general-instance boundary.

- Remaining risk: All binding artifacts and all six current accepted step
  interfaces passed the supplied identity checks before this review. The
  structural, rigor, and citation diagnostics were checked only for unchanged
  hashes and were not read or used as evidence. Apart from the verified T2
  source corruption and the stated endpoint-convention ambiguity, the named
  edge regimes did not produce a mathematical break.
