# Structural Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. This review is bound to `assembly_report.md` SHA-256
   `6df30193da02586c00006fa93f24a0900e89d1642421f70c6d060327821070b1`.
   Its setting, sketch, sketch-review, global-proof, global-review, and all
   thirteen accepted proof/review hashes match the live artifacts. All nine
   reported bundle hashes also match, including `1_intro.tex` SHA-256
   `676475d6cbb2a572daa8de4629b53c1d2ab355bc8bf5541d273c74734114098e`
   and `5_appendix.tex` SHA-256
   `ba9d3c15312857519134fcdf9dde718a048500fae78cee8bb24a723d2dc10c7f`.

2. The setup uses "observable" for the target-dependent raw coordinates
   $Z_{ij}^{(M)}$ and their target/slot event. The authoritative exact goal
   uses the same "jointly observable window" terminology, while
   Proposition~`prop:step-003-witness-interface` explicitly states that the
   algorithm reads no target index, target factor, or raw-coordinate window.
   Thus no label-dependent procedure is introduced. Calling these
   "proof-coordinate" events at their first definition would nevertheless
   distinguish sample-space measurability from algorithmic observability more
   sharply.

3. An isolated cached-only Tectonic run terminated before TeX processing
   because its macOS system-configuration networking thread panicked
   (`Attempted to create a NULL object`, exit code 101). No PDF or compiler
   log was produced. Independent static checks found balanced delimiters and
   environments, 87 unique labels, no duplicate or unresolved internal
   references, and a matching bibliography entry for the sole citation.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Structural Audit

- Goal alignment: This is exact-goal mode. The main theorem matches the
  authoritative conditional target: the once-drawn event has probability at
  least $1-\delta_{\rm sm}$, restart success is conditional at level
  $1-\delta_{\rm init}$, the rank is
  $U(r)=\Theta(r^{5/3}(\log r)^{5/2})=o(r^2)$, the returned tensor satisfies
  the original relative Frobenius criterion at arbitrary accuracy in finite
  polynomial work, and the exact orthogonal equal-weight zero-residual
  baseline is separately preserved. The theorem explicitly identifies the
  result as conditional and does not claim the unrestricted source target.
- Dependency closure: All thirteen step proofs have current accepted reviews
  bound to the live setting and sketch. The appendix dependency order is
  acyclic: static geometry produces the fixed-instance event; window,
  coverage, recurrence, certification, selection, seed, frozen reserves,
  joint landing, cyclic contraction, stopping, restart, and rate blocks are
  consumed only after their producers. The accepted global diagnostic's
  thirteen hard interfaces are each discharged by the corresponding accepted
  step and named public result.
- Sketch-step coverage: Every one of the 54 accepted local units is translated
  in mathematical order, with per-step counts
  $5,5,3,4,3,3,3,3,5,5,5,5,5$. All thirteen target-step assemblies appear as
  concluding proof text inside their appendix subsections. The 57 public
  theorem-style blocks consist of those unit translations plus the direct
  static-event, complete frozen-reserve, and rate-specialization assembly
  bridges.
- Assembly discipline: The three extra public bridges only collect accepted
  conclusions, reconcile public notation, or prove direct term-by-term
  specialization from accepted bounds. No independent lemma, new assumption,
  convergence-mode upgrade, changed step statement, or stronger theorem claim
  was introduced. Attempt 5 adds only `\tag{21}` and `\tag{22}` to the
  existing Step 002 event displays.
- LaTeX bundle structural synchronization: The compile entry, support files,
  bibliography, five content files, required section layout, thirteen
  mathematical appendix subsections, and final main-theorem proof are present.
  The Step 002 local sequence now contains tags (21), (22), and (32), and every
  later manual reference resolves to the intended target-window, competitor,
  and joint-event displays. The restored finite-range certificate includes all
  five accepted ranges and rational endpoints.
- Main theorem self-containedness: The setup and preliminaries define every
  symbol used by the main theorem, including the proposal coordinates,
  $W_{ij}$, $C_{ij}$, $E_{{\rm win},ij}$, procedure, chart metric, stopping
  rule, and probability fields. The theorem exposes a reader-facing claim and
  procedure rather than an opaque admissibility dictionary; its explicit
  runtime specialization is stated in a separate public corollary.
- Theorem-style statement shape: The eight stable setting assumption ids are
  represented by exactly eight numbered public assumptions. Generated
  geometry, coverage, coefficient, seed, landing, basin, stopping, and restart
  conditions are conclusions of named results before final use. No public
  claim, hypothesis, or invariant environment, workflow title, artifact path,
  or audit-scaffolding dependency remains.
- Explicit-rate and bridge structure: The theorem, runtime corollary, and
  appendix Rate Specialization Bridge agree in exposed variables, hidden
  constant dependence, fixed universal choices, conditional probability
  mode, finite-horizon/stopping mode, and Frobenius norm. The bridge displays
  the auxiliary choices, restart conversion, every term domination, final
  dense-work rate, and joint probability conversion; no rate term is absorbed
  by prose alone.
- Derivation-over-notation: Full source derivations remain visible for the
  smoothing decomposition, finite Gaussian product certificate, nonlinear
  recurrence and persistence, certificate residual ledger, score and support
  separation, two-orientation closure, seed transfer, frozen Gram and inverse
  reserves, joint landing, chronological contraction, stopping/runtime, and
  exact baseline. Constants, substitutions, boundary branches, and displayed
  inequality chains are retained rather than replaced by helper notation or
  summaries.
- Appendix local-unit coverage: Direct source-to-appendix comparison of all 54
  units confirms the local statements, cited-result instantiations, actual
  proof bodies, displayed definitions and estimates, finite tables, induction
  and case transitions, boundary and null regimes, and target-step assembly
  arguments. The attempt-5 delta changes no mathematical prose or derivation,
  and the two restored tags clear the sole attempt-4 coverage-interface
  defect.
- Internal label/ref structure: The bundle has 87 unique labels, no duplicate
  labels, no unresolved `ref` or `pageref` targets, no malformed bare
  reference/citation commands, and one external citation with a matching
  `Uschmajew2012` BibTeX key. Required environments balance at
  theorem/lemma/proposition/corollary/proof/assumption counts
  $1/21/36/2/73/8$ in both directions, and all file-level brace balances are
  zero.
