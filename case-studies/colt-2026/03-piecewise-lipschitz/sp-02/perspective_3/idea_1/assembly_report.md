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

All three aggregate assembly blockers passed at assembly depth, and the
formalized `material_partial` goal remains unchanged and proved.

### Repair Summary

- The one literal carriage-return byte in the (T2) interval qualifier was
  removed; the public quantifier now reads `I\text{ an interval}` and all
  public TeX contains zero disallowed control bytes.
- All 76 visible manual tags (T1--T5 and A1--A71) have one unique stable
  equation label (`eq:t1`--`eq:t5`, `eq:a1`--`eq:a71`). All 115
  theorem-critical semantic references now use `\eqref`; duplicate labels,
  missing targets, and stale bare semantic references are all zero.
- Kechris Proposition 14.4 is stated in its exact Polish-space form. Chart
  images use the open Polish ambient space `O_j`, analytic `D_{j,m}`, and the
  global Borel map `\widetilde\Psi_j`; the root event uses the global
  coefficient projection from `\Theta\times\mathbb R^N`. Proposition 14.4
  is not credited with coverage, Jacobian, volume, or measurability results;
  those interfaces remain separate.
- The setup states the existing endpoint convention precisely: interior
  derivatives extend continuously, endpoint derivatives are one-sided, and a
  singleton domain uses the derivative in the specified compatible `C^1`
  presentation. Empty and singleton intervals remain literal sets.

### Coverage And Verification

All six sketch-attempt-3 proof/review pairs were identity-checked before use;
each review binds its exact Step ID, producer attempt 1, matching proof digest,
and `ACCEPTED` status. The appendix preserves 6/6 accepted steps, all 24/24
non-atomic local units, every cited-result application, and all 6/6 Target-Step
Assembly arguments, followed by the final main-theorem proof in dependency
order. No proof-step derivation or accepted theorem clause was regenerated or
omitted, and the unresolved boundary remains the absence of a polynomial
general-instance `\Gamma_{\rm piv}` bound in Pfaffian presentation data.

The required live bundle contains exactly these nine files: `main.tex`,
`arxiv.sty`, `ims.bst`, `reference.bib`, `1_intro.tex`, `2_preliminary.tex`,
`3_main.tex`, `4_proof_sketch.tex`, and `5_appendix.tex`. Static checks found
33 uniquely labeled theorem/assumption environments, the three stable
assumption labels, balanced braces and environments, resolved references and
citations, no placeholders or workflow/audit provenance, and no generated
byproducts in `latex_template/`.

A fresh build from an exact temporary copy ran Tectonic through TeX, BibTeX,
and all cross-reference reruns and produced a 26-page PDF. References and
citations resolved. The build has two nonfatal font warnings, both from
`wasysym`: `U/wasy/b/n` falls back to `U/wasy/m/n` at sizes 8 and 6. It is
therefore not reported as warning-free; no TeX or BibTeX errors remain.

The two archived assembly-attempt-1 trees remained byte-identical (10-file
tree digest
`36059c4755f25f16d1b8280d7056059976aa4dc5e7a03ffee901f6853848cefd`; 5-file
final-review tree digest
`8ce4c92bbd5b1613ef8588e7a5d5e6469e01dec01f58e822d5de147e3ae3f0af`). All 20
controller-provided protected input hashes, including the six proof/review
pairs and the open `proof_tracker.md`, revalidated exactly after assembly.
