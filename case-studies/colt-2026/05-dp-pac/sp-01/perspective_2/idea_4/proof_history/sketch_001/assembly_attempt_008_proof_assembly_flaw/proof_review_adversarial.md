# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. A fresh isolated Tectonic/BibTeX build succeeds with no unresolved
   reference, citation, duplicate-label, or malformed-TeX diagnostic, but it
   retains eight appendix overfull-box warnings. The largest excess is about
   22.4 pt; this is a presentation issue and does not affect any claim.
2. The mechanism wrappers depend on the frozen arXiv v1 statement of
   Lyu's Sparse Sample and AboveThreshold interfaces. The public appendix
   gives precise citations, current-object mappings, and premise discharge,
   so this source-version dependence is traceable and nonblocking.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The most vulnerable assertion is the single
  learner achieving the minimum of the VC-sensitive, old-Lyu, and finite-class
  certificates while retaining a measurable raw pullback, all-input
  \((\varepsilon,\delta)\)-privacy, and unconditional realizable PAC utility.
  I attacked it with unequal arm horizons, an unavailable finite arm,
  improper quotient outputs, infinite \(C\), and a hypothetical data-dependent
  arm choice. Step 016 chooses one already complete learner from deterministic
  certified thresholds before sampling, assigns the unavailable finite arm
  cost \(+\infty\), and uses the common quotient output and decoder. Thus the
  selected law is not a mixture, and no privacy or confidence composition is
  hidden in the minimum.
- Standalone theorem attack: This review binds sketch attempt 1 and assembly
  attempt 8 to `assembly_report.md` SHA-256
  `ccf3043d39bf2dac28be56acd2ff1dd6c5f6e1a8948f3c8a0750f944be5eab9b`,
  `latex_template/3_main.tex` SHA-256
  `e9202c398962af668b773585e980fcc6913406043808ccfbc48004e825099e52`,
  and `latex_template/5_appendix.tex` SHA-256
  `e16e089e8f0c5b8a541ecb4e479c5e497abce71f68871d4d96152b0eeb5eb68a`.
  The theorem exposes all four primitive assumptions, exact horizons,
  adjacency, probability and risk modes, universal-constant dependence, and
  the finite-or-countable quotient restriction. It neither assumes a
  generated good event nor claims the unrestricted parent open problem.
- Weakest step-level claim: The stopped AboveThreshold privacy interface in
  Step 011 is the sharpest attack surface. Neighboring inputs can have
  different first-crossing times, so a fixed-stage sensitivity statement
  alone would not suffice. The proof instead establishes sensitivity one at
  every common adaptive transcript prefix on all quotient inputs, uses the
  source guarantee for one process with at most one counted crossing, and
  treats termination after at most \(d+1\) queries plus retention of the
  first-crossing prefix as deterministic postprocessing. Exhaustion and
  invalid continuations are totalized constants. Hence stopping is covered
  without conditioning on realizability, \(E_{\rm good}\), or a noise-accuracy
  event. Step 015 independently repeats the corresponding locality,
  mechanism, privacy, SOA, marked-PAC, and rate chain for the old arm rather
  than borrowing the VC-arm conclusion.
- Candidate counterexamples or stress cases: I tested \(d=0\), \(d=1\),
  \(v=1\), \(v=d\), formal \(k=2\), immediate and last-stage crossings,
  no crossing, all-empty and partially empty lists, \(\perp\), invalid
  transcripts, fallback equal in value to an actual output, repeated records,
  repeated list items, duplicate quotient fibers, arbitrary nonrealizable
  neighboring labels, finite and countably infinite quotients, infinite
  \(H_C\), finite and infinite \(C\), and zero-probability producer states.
  Totalization, exact membership scoring, quotient neighbor preservation,
  the singleton \(d=0\) branch, and finite marked sections cover these cases.
- Explicit-rate stress cases: The VC arm retains the least feasible teacher,
  both ceilings, trace multiplicity, mechanism tolerances, producer-list
  multiplicity, and all four confidence shares before deriving
  \(N\le K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\). The independent old arm
  retains its own tuple and derives
  \(N_{\mathrm{old}}\le K_{\mathrm O}\Lambda^6R_{\mathrm{old}}\), while
  the finite exponential-weights arm gives
  \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\). Step 016 displays the
  absorption inequalities and uses \(\Lambda\ge1\) for the common envelope.
  The public schedule
  \(\delta K_*\Lambda^6R_{\mathrm{VC}}\to0\) implies the sharper selected
  VC-arm condition; fixed-parameter validity does not assume this limit.
- Appendix self-contained attack surface: Every accepted proof/review pair
  for Steps 001--016 is current, has status `ACCEPTED`, and matches its live
  proof SHA-256. The appendix contains all accepted local units and their
  substantive derivations. Step 005's source-local claim is legally exposed
  as a proposition with the same statement and proof. The additional public
  interface propositions for Steps 010, 013, and 015 restate accepted cited
  applications and dependency outputs rather than create new mathematical
  assumptions. In particular, Step 013 first proves literal producer-family
  membership and the holdout inequality pathwise, then conditions only on a
  fixed data-independent partition and producer block before applying a
  finite candidate union. Static scans find no workflow-only proof authority,
  forbidden public claim/hypothesis/invariant environment, malformed command,
  duplicate label, missing reference, or missing bibliography key.
- Scope or mode upgrade attacks: Quotient factorization and decoding preserve
  labels, replacement adjacency, VC/Littlestone dimensions, iid sampling, and
  risk exactly. Privacy is proved on every input before utility events.
  Trace and mechanism bounds are integrated into an unconditional quotient
  PAC statement; marked reconstruction uses exact marginal projection and
  never asserts privacy of the unreleased mark. The holdout proof invokes
  complement independence only after the pathwise finite-candidate inclusion.
  No conditional-to-unconditional, fixed-horizon-to-all-time,
  quotient-to-raw, properness, or asymptotic upgrade remains unsupported.
- Remaining risk: No verified break or unresolved high-risk candidate
  counterexample remains. Residual risk is limited to the source-version and
  appendix presentation concerns listed above.
