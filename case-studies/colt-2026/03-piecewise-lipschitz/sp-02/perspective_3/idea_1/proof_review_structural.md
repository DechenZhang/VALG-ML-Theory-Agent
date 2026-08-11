# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The controller-reported exact-copy Tectonic build has two nonfatal `wasysym` font substitutions (`U/wasy/b/n` to `U/wasy/m/n`) at sizes 8 and 6. They are cosmetic: the build produced 26 pages and resolved every reference and citation.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: The bundle proves the exact unconditional `material_partial` theorem in `setting.md`. It preserves arbitrary correlation under a capped full joint density, fixed-family dependence on the strictly finite family-specific `Gamma_piv`, the exact ordered-supremum semantics, the scale-stress identity, and the exact affine-monic baseline with deterministic leading coefficient. It explicitly does not claim polynomial general-instance or presentation-format control of `Gamma_piv`. The authoritative accepted-sketch mapping is `step_005` for scale stress and `step_006` for the all-degree monic bridge; the latter includes `d=6`, while the binding setting contains no separate degree-six target.
- Dependency closure: All six current proof/review pairs bind sketch attempt 3, their exact Step IDs, unit attempt 1, the reviewed proof digests, and `ACCEPTED` status. Their acyclic dependency graph is `step_001`; `step_001 -> step_002`; `step_001,step_002 -> step_003`; `step_001,step_003 -> step_004`; `step_001 -> step_005`; and `step_001,step_004 -> step_006`. No stale or archival proof is consumed.
- Sketch-step coverage: The accepted sketch has exactly `step_001` through `step_006`. All 24 accepted non-atomic local units, all cited-result applications invoked by those units, and all six Target-Step Assembly arguments have substantive paper-facing counterparts in the corresponding appendix subsections and are used by the final theorem proof.
- Assembly discipline: The public proof preserves the accepted step interfaces and combines them in dependency order. Assembly introduces no independent lemma, assumption, inequality, convergence upgrade, probability conversion, norm change, or strengthened claim. `global_proof.md`, `global_proof_review.md`, and `assembly_report.md` were used only as diagnostic context.
- LaTeX bundle structural synchronization: The nine canonical files are present and nonempty. `main.tex` is the compile entry, loads the five content files in paper order, uses `arxiv.sty`, selects `ims.bst`, and loads `reference.bib`. The required setup, preliminaries, main theorem, proof sketch, six mathematical appendix subsections, and final main-theorem proof are present.
- Main theorem self-containedness: The setup and preliminaries define all theorem-facing objects, primitive assumptions, support and density class, interval conventions, `K_R`, every extended pivot speed, `Gamma_piv`, both special families, and the monic descriptor tuple before use. The theorem states the probability, interval, norm, measure, hidden-constant, arbitrary-correlation, empty-index, zero-length, and fixed-family scope explicitly.
- Theorem-style statement shape: Every public lemma and proposition used as proof authority states numbered primitive assumptions or named prior theorem-style results, followed by its local conditions and conclusion. No `claim`, `hypothesis`, or `invariant` environment, step ID, local-unit ID, subsection title, or workflow artifact is used as mathematical authority.
- Explicit-rate and bridge structure: The public rates retain the literal constants `kappa(2R)^(N-1) Gamma_piv |I|`, `A Gamma_piv |I|/(2R)`, `1/delta`, and `kappa(2R)^(d-1)(d+R d(d-1)/2)|I|`. The monic bridge displays the pivot inequalities, compact localization, exact `A/(2R)` algebra, and zero-length completion. There is no term absorption, clipping, auxiliary threshold, hidden constant, or probability-mode change.
- Derivation-over-notation: Proof-local margins, denominator thresholds, chart maps, Lipschitz localizations, reindexing variables, and affine hyperplanes remain in the appendix. The public theorem exposes only setting-derived quantities, while all finiteness, Jacobian, volume, density, and specialization calculations remain visible in the proof bodies.
- Appendix local-unit coverage: Every accepted Local Derivation, every invoked cited-result application, and every Target-Step Assembly was compared directly against the substantive appendix text. Definitions, displayed calculations, inequalities, object maps, assumption discharges, compactness and exhaustion arguments, analytic and measure arguments, extended-multiplicity area formula, constants, cases, and boundary regimes are retained without summary-only substitutions.
- Internal label/ref structure: The repaired source has exactly 76 unique manual tags, namely T1--T5 and A1--A71; 109 unique labels; and exactly 115 `eqref` occurrences, all bound to existing equation labels. No duplicate label, missing internal target, missing bibliography key, malformed bare reference/citation command, forbidden workflow phrase, placeholder, non-ASCII byte, or forbidden control byte was found.

## Accepted-Step Source Comparison

- `step_001`: The appendix preserves root feasibility in the original cube, compactness of `K_R`, the empty-`K_R` and `N=1` branches, the positive available-pivot margin, endpoint conventions, the quotient-rule calculation and its constants, and strict fixed-family finiteness. The family-specific margin remains proof-local and yields no polynomial presentation-format claim.
- `step_002`: The appendix preserves extended-real Borel speeds, the exact least-index tie partition, weak-threshold denominator exhaustion, the original-coordinate pivot graph, its root identity and derivative chain, zero unselected features, endpoints, empty cells, and the `N=1` zero-dimensional branch.
- `step_003`: The appendix preserves analytic event construction, the exact Kechris applications, endpoint extensions, Borel domains and global maps, original-coordinate coverage, the Jacobian determinant, countable Lipschitz localization, McShane extension, Federer's extended-multiplicity area formula, nonnegative product integration and monotone limits, critical and infinite fibers, the exact beta-cube factor, disjoint-cell length budget, and empty/singleton interval and `N=1` cases.
- `step_004`: The appendix preserves full-joint-density domination and completed-law event equality without independence, the literal `A/(2R)` conversion, `A >= 1` and `|Theta| > 0` nonemptiness thresholds, interval-first then law-second suprema, direct `step_001` finiteness provenance, and `-infinity` in every empty-index branch.
- `step_005`: The appendix preserves `K_1=[-1,1]`, `V_1=1/delta`, `V_2=delta/theta^2` off zero and `+infinity` at zero, the exact two-sided supremum proof, ties at `theta=+/-delta`, endpoints and `delta=1`, exclusion of `delta=0`, and the fact that this is a conditioning identity rather than a probability claim.
- `step_006`: The appendix preserves the original `d` lower-coefficient coordinates, deterministic leading coefficient one, exact descriptor tuple, constant- and top-pivot calculations, `d=1`, `d=2`, zero and `|theta|=1` boundaries, empty chart and empty-`K_R` branches, compact localization, arbitrary correlated law, exact probability constant, and empty/singleton intervals via proper-affine-hyperplane nullity.

## External-Result And Build Audit

- Kechris Proposition 14.4 is stated in its Polish-space form. The chart application uses the open Polish space `O_j`, analytic `D_{j,m}`, and global Borel `widetilde{Psi}_j`; the event application uses analytic `Z_I` in the Polish space `Theta x R^N` and the global continuous coefficient projection. Coverage, Jacobian, volume, and Lebesgue measurability are proved separately.
- The two external citation keys, `Kechris1995` and `Federer1969`, have complete bibliography entries and are the only cited keys. The controller's exact-copy Tectonic build completed with a 26-page PDF and resolved references and citations. Its two `wasysym` font substitutions are nonblocking cosmetic warnings.

## Protected-Input Verification

Immediately before this review was written, every binding controller input, all nine canonical bundle files, and all six accepted proof/review pairs matched the supplied SHA-256 digest. The pre-overwrite live review also matched the declared stale assembly-attempt-1 digest. No protected input or out-of-scope branch file was modified.
