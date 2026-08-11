# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/3_main.tex:27` contains the disallowed carriage-return byte `0x0D` at byte offset 903. It replaces the `r` in the intended interval qualifier, so the frozen source is literally `I\ {<CR>m an\ interval}` rather than a valid `I\text{ an interval}`-type predicate. This corrupts a quantifier in the public statement of (T2), not merely source formatting, and fails the required ASCII/control-byte gate. The smallest repair is assembly-level source regeneration.
2. The public proof uses manually typed equation authority instead of label/reference pairs: the bundle contains 76 manual `\tag{...}` equations (T1--T5 and A1--A71), 115 theorem-critical citations of those tags through constructs such as `\textup{(A30)}`, and zero `\eqref{...}` uses. This affects the proof sketch, local appendix derivations, specialization bridges, and final theorem proof. The otherwise resolving theorem-style labels do not cure these untracked equation dependencies. Each cited equation needs a unique `\label{eq:...}` and `\eqref{eq:...}` reference (with the intended display numbering preserved if desired), which is an assembly-level repair.

## Nonblocking Concerns

1. `assembly_report.md` says Tectonic completed without a warning, whereas the controller's frozen-bundle compile reports two nonfatal `wasysym` font-substitution warnings. The source scan found `wasysym` loaded by `arxiv.sty` but no explicit use of its symbols, so this does not presently establish mathematical or rendered-symbol corruption; the compile provenance is nevertheless inaccurate.
2. `latex_template/5_appendix.tex:1151` calls the nested expression the "ordered law-then-interval expression" and then correctly says that the interval supremum is taken first. The formulas and subsequent branch analysis use the correct inner-interval/outer-law order, but the first phrase is avoidably ambiguous.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: All six accepted proofs were checked against the actual appendix proof bodies. Step 001 preserves compact root feasibility, the positive fixed-family pivot atlas, and strict finiteness. Step 002 preserves the extended Borel speeds, least-index selector, exact denominator exhaustion, original-coordinate graph, and velocity bound. Step 003 preserves analytic/completed measurability, countable Lipschitz localization, the determinant identity, Federer's extended-multiplicity area formula, Tonelli/monotone exhaustion, and exact coefficient-volume constant. Step 004 preserves full-joint density integration, arbitrary correlation, exact `A/(2R)` algebra, and every ordered-supremum branch. Step 005 proves the literal `1/delta` equality. Step 006 preserves the same-object affine-monic presentation, deterministic leading coefficient, both pivot calculations, and the exact probability transfer. No mathematical step-level blocker was found.
- Statement self-containedness: The three theorem-critical assumptions are numbered, uniquely labeled, and expose the family, nondegeneracy, and full-joint-law basis. The fixed-family `material_partial` boundary is explicit: dependence on finite family-specific `Gamma_piv` is permitted, and no polynomial general-instance or presentation-format control is claimed. The malformed interval qualifier in Blocking Issue 1 prevents the public main theorem source itself from passing.
- Main theorem constants and notation: The general coefficient is exactly `kappa (2R)^(N-1) Gamma_piv = A Gamma_piv/(2R)`. The scale certificate is exactly `1/delta`. The monic certificate is `d + R d(d-1)/2`, yielding `kappa (2R)^(d-1)(d + R d(d-1)/2)|I|`; at fixed `d=6` this is `kappa (2R)^5(6+15R)|I|`. No hidden factor, transformed coefficient law, or randomized leading coefficient appears.
- Derivation-over-notation: The proof bodies contain the required algebra, inequalities, determinant/Jacobian calculation, compactness, measurability, completion, multiplicity, and boundary arguments rather than replacing them with theorem counts or labels. Blocking Issue 2 is a source-reference defect: manually repeated display numbers are used as authority instead of resolvable equation identities.
- Explicit-rate contract: Quantified parameters and every exposed constant match the setting. `Gamma_piv` finiteness comes directly from Step 001, not from the area formula or a hidden Pfaffian-format bound. The right side is intentionally not clipped when it exceeds one, and no confidence, horizon, asymptotic, tolerance, or independence parameter is introduced.
- Appendix full derivations: The line-by-line map is complete: Step 001 maps to appendix lines 6--201; Step 002 to 202--466; Step 003 to 467--930; Step 004 to 931--1170; Step 005 to 1171--1324; and Step 006 to 1325--1783. Lines 1784--1830 assemble only these reviewed results into the main theorem. Aggregate propositions introduce no new unreviewed lemma or bridge.
- Quantifiers and constants: The law is fixed arbitrarily before each ordinary-probability statement and may have fully correlated coordinates. The interval supremum is inner and the law supremum outer. The law class is nonempty exactly for `A>=1`; the positive-length interval class is nonempty exactly for `|Theta|>0`; every empty outer or inner index gives the literal extended-real value `-infinity`. The exact cube factor is `(2R)^(N-1)`, including the zero-dimensional `N=1` convention.
- Probability or convergence modes: Root events are analytic and Lebesgue measurable; completion under the absolutely continuous law justifies ordinary probability. Area-formula multiplicity is extended-valued, Tonelli is applied only to nonnegative quantities, and monotone convergence restores every nonzero pivot without a residual. There is no probability conversion, union bound, limiting confidence statement, or product-law assumption.
- Boundary cases: The derivations cover `N=1`, `d=1`, `d=2`, the implied fixed `d=6` case, empty `K_R`, empty and singleton intervals, `A<1`, `|Theta|=0`, `theta=0`, `theta=+/-1`, negative interval locations, `delta=1`, tangent and multiple roots, identically-zero root fibers, arbitrarily small nonzero pivots, cube faces/corners, empty chart regions, and numerical upper bounds above one. Literal zero-length and empty-index values are preserved.
- Hidden subclaims: Every appendix theorem-style result traces to a reviewed local unit or its reviewed target-step assembly. Both external citations have matching BibTeX entries and their object/hypothesis interfaces are discharged in the proof. Apart from the 76 manually tagged equations, the scan found 33 unique labels with all 33 referenced, no duplicate or unresolved theorem-style label, both citation keys resolved, no malformed bare reference/citation fragment, no disallowed public claim/hypothesis/invariant environment, no workflow placeholder prose, and no proof-local notation exported without definition.
