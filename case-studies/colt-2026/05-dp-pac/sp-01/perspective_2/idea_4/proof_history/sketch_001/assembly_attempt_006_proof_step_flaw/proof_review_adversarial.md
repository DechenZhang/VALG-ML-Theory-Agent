# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The preliminaries specify the two Lyu-family learners partly through
   forward references to the appendix and phrases such as "exact valid source
   restrictions."  The public appendix does define the fixed restrictions,
   mechanisms, totalization, and fallback paths in full, so this is a
   reader-facing presentation concern rather than a standalone-definition
   break.
2. The old comparison arm shifts the literal source-stage indexing:
   \(H_{\mathrm o,i}^r=H_{\mathrm o,i,\mathrm{src}}^{r+1}\) while
   \(p_{\mathrm o,r}=p_{\mathrm o,r+1,\mathrm{src}}/2\).  The exact map,
   factor-two recurrence, inclusion, descent, privacy, PAC conversion, and
   rate are all rederived for the shifted construction, but the label
   "old-Lyu" is slightly looser than an exact transcription of the source
   algorithm.
3. Several terminal appendix propositions include lengthy whole-step
   assembly narration after their direct derivations.  In one such passage,
   Lemma~\ref{lem:step-012-empirical} is called a proposition.  The
   reference resolves to the correct proved result and no implication is
   missing, so these are editorial rather than acceptance-blocking defects.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The most vulnerable claim is that the
  VC-sensitive quotient procedure simultaneously gives a measurable raw
  kernel, all-input approximate privacy, unconditional realizable PAC
  utility, and \(N\le K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\).  The attack
  was neutralized by the countable-discrete kernel promotion and raw-neighbor
  transport, the finite-transcript adaptive-composition proof, the
  pathwise marked-producer inclusion followed by fixed-candidate holdout,
  and the ceiling-aware rate-elimination proposition.  None of these links
  assumes its generated good event or output status.
- Standalone theorem attack: Reading the setup, preliminaries, and main
  theorem alone exposes the four primitive assumptions, quotient and raw
  spaces, decoder, privacy quantifier, risk mode, all three rate expressions,
  logarithmic envelope, deterministic fallback, and the three learner
  interfaces.  The theorem itself uses no undefined appendix-local constant
  or step-local hypothesis.  The rate corollary's sole appendix dependency
  is the named specialization proposition permitted for a public bridge;
  the forward-referenced procedural detail noted above does not alter the
  theorem's quantifiers or assumptions.
- Weakest step-level claim: The main attacks were Step 013's producer-mark
  reconstruction and Step 015's independent old-arm completion.  Step 013
  first proves a pathwise inclusion for the realized mark, then conditions
  only on the data-independent partition and producer block before applying
  a finite union bound to at most \((d+1)L\) fixed candidates; it never claims
  that the mark or selected output is independent of the complement.  Step
  015 contains its own finite-transcript submeasure proof of adaptive
  composition, in both neighbor directions, and has no dependency on the
  VC-arm Step 011 privacy result.
- Candidate counterexamples or stress cases: The audit tested \(d=0\),
  \(d=1\), \(v=1\), \(v=d\), \(k=2\), finite and infinite \(C\), countably
  infinite \(Q_C\), repeated raw examples, raw neighbors whose quotient
  images coincide, empty or malformed restrictions, distinct private
  stopping stages, collision of an actual output with the default
  \(\bar c_0\), failure-symbol paths, and correlation of the analysis mark
  with the full sample.  Named boundary, totalization, locality, projection,
  and holdout results cover each case.  No compatible stress case falsifies
  privacy, measurability, or utility.
- Explicit-rate stress cases: All integer ceilings and confidence shares
  remain visible.  The VC arm proves the fixed-point and term-dominance
  inequalities before obtaining \(K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\);
  the old and finite arms separately prove
  \(K_{\mathrm O}\Lambda^6R_{\mathrm{old}}\) and
  \(8R_{\mathrm{fin}}\).  The deterministic minimum selects a complete arm
  before observing data.  The frontier bridge checks \(v=d\), \(v=o(d)\),
  \(d=0\), the infinite-class \(+\infty\) convention, fixed \(\delta\), and
  the distinct selected-learner and standalone-old-arm small-\(\delta\)
  schedules without hiding an additional positive power of \(d\), \(v\),
  or \(\log^+|C|\).
- Appendix self-contained attack surface: Every required sketch step has a
  public appendix subsection with theorem-style statements and substantive
  proofs, followed by a named proof of the main theorem.  The high-risk
  trace, DDim, mechanism, privacy, SOA, marked holdout, PAC-ledger, and rate
  derivations are present rather than delegated to workflow artifacts.  The
  public files contain no proof-history dependency, workflow-only proof
  reference, public claim/hypothesis/invariant environment, missing label,
  or missing citation.  A cached Tectonic/BibTeX build completes with only
  overfull-box warnings.
- Scope or mode upgrade attacks: The theorem remains explicitly conditional
  on a finite-or-countable measurable evaluation quotient and makes no claim
  for uncountably many evaluation types.  Privacy holds on every raw
  replace-one input, including nonrealizable inputs; utility alone uses
  realizable iid sampling.  Conditional trace and mechanism bounds are
  integrated into an unconditional \(1-\beta\) PAC statement, the analysis
  mark is projected out exactly, and the minimum is not a mixture or
  data-dependent arm selection.  No probability, horizon, norm, or scope
  upgrade was found.
- Remaining risk: No verified break or unresolved high-risk candidate
  counterexample remains.  Residual risk is confined to the forward-reference
  and public-exposition issues listed as nonblocking concerns.
