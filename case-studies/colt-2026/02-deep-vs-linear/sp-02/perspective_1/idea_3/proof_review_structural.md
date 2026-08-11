# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: PASS.  The branch is in exact-goal mode for the conditional
  theorem in `setting.md`.  The public theorem keeps the same three primitive
  assumptions, pre-instance ordered catalog, one common deterministic map,
  quantifier order, pointwise margin (1-2\varepsilon>1/2>0), and literal
  dimension chain
  \(\operatorname{dc}(\mathcal H)\le L\le
  B(1+m/\tau^2)^k\).  It does not claim an all-policy catalog, derive the
  catalog from \((m,\tau)\), or claim the unconditional linear open target.
- Dependency closure: PASS.  The current accepted graph is
  `step_001 -> step_002 -> step_003 -> step_004 -> step_005`, with the
  additional legal `step_001 -> step_005` catalog edge.  Every consumer uses
  an earlier accepted producer, all five current proof/review identities and
  hashes match, and no stale, rejected, downstream, or cyclic dependency is
  used.  The accepted global diagnostic pair was checked only as diagnostic
  context and is not used as proof evidence.
- Sketch-step coverage: PASS.  Each of the five accepted sketch rows has one
  paper-facing appendix subsection, all 17 non-atomic local units are mapped
  below to named theorem-style results, and each step has concluding proof
  text translating its `Target-Step Assembly`.  No accepted step is omitted,
  merged ambiguously, or declared unnecessary.
- Assembly discipline: PASS.  The appendix introduces no independent lemma,
  new assumption, new inequality, mode upgrade, or stronger conclusion beyond
  the 17 accepted units.  Its additional concluding proof environments only
  compose named accepted results, restore quantifiers, and record direct
  definition-level implications.  The final main-theorem proof likewise only
  composes those public results.
- LaTeX bundle structural synchronization: PASS.  `main.tex` is the compile
  entry and loads the five required content files, `arxiv.sty`, the `ims`
  bibliography style, and `reference.bib`.  The content layout is exactly
  Theoretical Setup, Preliminaries, Main Theorem, Proof Sketch, and an appendix
  with Proof Details, one mathematically named subsection for each of the five
  steps, and a final Proof of the Main Theorem subsection.  The supplied clean
  Tectonic log records 18 pages and no warning, error, unresolved reference or
  citation, duplicate label, missing character, or overfull/underfull box.
- Main theorem self-containedness: PASS.  All theorem symbols, parameter
  ranges, catalog objects, the simplex, risk, feature map, and deterministic
  dimension notion are defined in the setup or preliminaries before use.  The
  theorem cites only the three numbered assumptions and setting-derived
  notation, contains no appendix-local dependency, and gives a concise
  reader-facing interface rather than an admissibility dictionary.
- Theorem-style statement shape: PASS.  Every public lemma and proposition
  names its numbered assumption basis and/or named prior theorem-style
  results, states its local conditions, and then states its conclusion.  The
  appendix contains no public `claim`, `hypothesis`, or `invariant`
  environment, and mathematical dependencies use named Lemma, Proposition,
  Theorem, or Assumption references rather than step IDs, unit IDs, or
  subsection titles.
- Explicit-rate and bridge structure: PASS.  The public and appendix claims
  expose exactly \(m,\tau,\varepsilon,L,B,k\), no hidden constants, the
  deterministic probability mode, fixed finite horizon, and pointwise exact
  sign metric.  The appendix proves the only auxiliary comparison
  \(1/\lceil1/\tau\rceil\le\tau\), preserves the exact margin through every
  interface, and substitutes the primitive catalog bound literally.  There is
  no technical-to-public simplification, dropped term, absorption, probability
  conversion, or extra appendix hypothesis requiring a Rate Specialization
  Bridge.  The \(m=0\), \(\varepsilon=0\), \(L=1\), \(B=1\), and \(k=1\)
  specializations are proved without loss.
- Derivation-over-notation: PASS.  Preliminary notation is limited to the
  reusable setting-derived margin, catalog map, and simplex.  Proof-local
  objects such as reached queries, scalar-loss ranges, finite games,
  constraint sets, and compactness witnesses remain in the relevant appendix
  proofs.  Definitions do not replace the visible grid, integral, minimax,
  compactness, coordinate, or dimension derivations.
- Appendix local-unit coverage: PASS.  The exhaustive source comparison below
  inspected the actual statements and proof bodies for every non-atomic unit,
  including displayed definitions, inequalities, extrema, substitutions,
  cited-result hypothesis checks, boundary cases, and assumption discharge.
  No source derivation is replaced by a summary, citation-only proof,
  provenance note, or routine/similar shortcut.
- Internal label/ref structure: PASS.  The nine-file bundle has 93 unique
  labels and 187 internal reference commands, with no duplicate label or
  unresolved target.  Both external citation commands use `Sion1958`, whose
  BibTeX entry is present.  Independent scans found no malformed command,
  placeholder, forbidden audit scaffolding, workflow path/reference, public
  unit/step label, or mechanical translation debris.

### Exhaustive Local-Unit Comparison

| Accepted source unit | Paper-facing result | Source proof content confirmed in the appendix |
| --- | --- | --- |
| `step_001/unit_001` | Lemma~`lem:step-001-canonical-validity` | Grid spacing and midpoint covering radius, positivity of (K), (1/K\le\tau) including \(\tau\ge1\), first-query and reached-prefix induction, pathwise maximum error, early stopping, \(m=0\), arbitrary tapes, oracle-only exact centers, and exclusion of invalid synthetic strings. |
| `step_001/unit_002` | Proposition~`prop:step-001-canonical-membership` | Delayed activation of the catalog antecedent after actual validity, pointwise terminal-function equality, repeated-entry handling, universal instance/tape closure, absence of a measurable index requirement, and canonical-policy-only scope. |
| `step_002/unit_001` | Lemma~`lem:step-002-attained-low-risk` | Measurability of only the scalar loss (Z), finite and nonempty range (S=Z(\Omega)), attained minimum, positivity-of-integral comparison (s_*\le\mathbb EZ\le\varepsilon), selection of (r_*,i_*), same-function risk equality, nonatomic/zero-mass-fiber handling, and the \(L=1,m=0,\varepsilon=0\) cases. |
| `step_002/unit_002` | Proposition~`prop:step-002-exact-correlation` | The pointwise binary identity, expectation under the same distribution, exact risk-correlation equality, correct inequality reversal, zero transfer residual, and exact correlation one at \(\varepsilon=0\). |
| `step_003/unit_001` | Lemma~`lem:step-003-game-lower-bound` | Construction of each finite law \(\mathcal D_p\) as a finite sum, legal every-distribution instantiation, the varying witness (i(p)), payoff chain, finite maximum, compactness/continuity and attained outer minimum, zero-mass coordinates, and no selector or domain-measurability assumption. |
| `step_003/unit_002` | Lemma~`lem:step-003-column-vertices` | Full convex-combination expansion, upper inequality, maximizing vertex attainment, zero simplex coordinates, \(L=1\), and duplicate-column cases. |
| `step_003/unit_003` | Lemma~`lem:step-003-row-vertices` | Full convex-combination expansion, lower inequality, point-mass attainment, boundary simplex points, singleton restriction, and tied-row cases. |
| `step_003/unit_004` | Proposition~`prop:step-003-finite-separator` | Sion source identity and exact statement, maximizing/minimizing variable orientation, compact-convex and continuity/affinity hypothesis discharge, separate attainment, both vertex substitutions, complete game-value chain, matrix-to-pointwise identity, and the singleton, \(L=1\), duplicate, zero-weight, and \(\varepsilon=0\) cases. |
| `step_003/unit_005` | Lemma~`lem:step-003-empty-restriction` | Existence of (e_1\in\Delta_L), vacuous pointwise feasibility, and explicit avoidance of an empty probability simplex, empty minimum, or minimax invocation. |
| `step_004/unit_001` | Lemma~`lem:step-004-simplex-compact` | Explicit nonemptiness witness, coordinate and affine closedness, Euclidean boundedness inequality, Heine--Borel application, and the singleton-simplex case. |
| `step_004/unit_002` | Lemma~`lem:step-004-constraint-closed` | Exact pointwise functional and constraint definitions, finite-dimensional Lipschitz chain, inverse image of the closed ray, relative closedness, no topology on \(\mathcal X\), and duplicate-coordinate handling. |
| `step_004/unit_003` | Lemma~`lem:step-004-finite-intersections` | Exact translation of the accepted finite separator into intersection membership, empty-family convention and witness, singleton coverage, and explicit absence of compatible witness selection across finite sets. |
| `step_004/unit_004` | Lemma~`lem:step-004-compact-fip` | Empty-index and nonempty-ambient cases, open complements, arbitrary open cover, finite subcover, De Morgan contradiction inside the compact space, and arbitrary-cardinality rather than sequential closure. |
| `step_004/unit_005` | Proposition~`prop:step-004-global-separator` | Complete instantiation (Y=\Delta_L,J=\mathcal X,D_x=C_{h,x}), total-intersection selection, exact constraint unfolding, zero residual, and empty through uncountable domains, \(L=1\), duplicates, and threshold-one cases. |
| `step_005/unit_001` | Lemma~`lem:step-005-coordinate-map` | Pre-instance catalog-order provenance, deterministic map independence, coordinate-by-coordinate Euclidean identity, zero residual, repeated coordinates, \(L=1\), and arbitrary-domain scope. |
| `step_005/unit_002` | Proposition~`prop:step-005-exact-signs` | Scalar proof (1-2\varepsilon>1/2>0), same-catalog global-weight substitution, complete score chain, map/weight dependence and quantifier order, no target selector, and empty, singleton, duplicate, and infinite-domain cases. |
| `step_005/unit_003` | Proposition~`prop:step-005-dimension-closure` | Exact instantiation of the dimension definition, separate \(\mathbb R^0\) arguments for empty class/domain, literal catalog-size substitution, no absorption, and all stated parameter, domain, coordinate, and tape-space specializations. |

### Target-Step Assembly Comparison

| Accepted target assembly | Appendix concluding proof | Comparison result |
| --- | --- | --- |
| `step_001` | `Conclusion of the canonical-execution argument` | Preserves the pathwise validity-to-membership order, restores arbitrary \((\mathcal D,h)\), and exports only actual canonical executions and exact catalog membership. |
| `step_002` | `Conclusion of the scalar-loss extraction argument` | Preserves the actual finite scalar-range minimum, same-function risk/correlation conversion, \(\forall(\mathcal D,h)\exists i\) closure, and selector/fiber/policy exclusions. |
| `step_003` | `Conclusion of the finite-separation argument` | Preserves the empty/nonempty split, positive left game value, both vertex identities, checked Sion equality, independent attainment, exact pointwise interface, and lack of cross-(F) compatibility. |
| `step_004` | `Conclusion of the fixed-simplex globalization argument` | Preserves fixed-simplex compactness, closed exact constraints, complete FIP input, arbitrary-family compactness implication, \(\forall h\exists w_h\forall x\) closure, and unchanged threshold. |
| `step_005` | `Conclusion of the exact-coordinate and dimension argument` | Preserves the ordered common map, exact global mixture, strict margin, exact dimension definition, primitive rate inequality, and every degenerate/baseline branch. |

The final `Proof of the Main Theorem` then cites the named results from all
five subsections in dependency order and identifies exactly the public margin,
dimension bound, and zero-dimensional empty cases.  It adds no mathematical
obligation beyond the five checked target-step assemblies.
