# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The simplified three-regime rate in Theorem~`thm:main` is not presented
   through either public Rate Specialization Bridge form required by the
   Explicit Rate Contract.  `latex_template/3_main.tex` states
   \(n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta)\) and follows the theorem
   with prose pointing to Proposition~`prop:rate-specialization-bridge`, but it
   contains no corollary stating the auxiliary choices and either proving the
   specialization there or citing that named appendix proposition in its
   proof.  The appendix proposition does verify the technical conditions,
   term absorptions, probability conversion, all three substitutions, and
   final hidden-constant dependence, so this is an assembly defect rather than
   a failed proof step.  Add the required short corollary to `3_main.tex` with
   the auxiliary choices and a proof citing the existing appendix bridge (or
   give the self-contained bridge proof there).

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: The public sample-complexity statement is the
  weakest interface.  Its appendix derivation is complete, but its presentation
  in `3_main.tex` omits the contract-required public corollary and auxiliary
  choices.
- Standalone theorem attack: Removing the prose after Theorem~`thm:main`
  leaves the simplified rate with no public specialization bridge in the main
  theorem file.  Retaining that prose still does not satisfy either permitted
  corollary form, so the attack is a verified assembly break.
- Weakest step-level claim: The all-alias conditional second-moment bound in
  `step_005`, especially the single \(Z_S=S+1\) factor at \(k=2\), is the most
  vulnerable mathematical unit.  Direct coefficient checks and pointwise
  summation before expectation neutralize the attack; no step-level break was
  found.
- Candidate counterexamples or stress cases: An asymmetric unbounded dyadic
  atomic tail with finite central \(k\)-moment, arranged so observations hit
  same-color aliases at many scales, was the strongest stress case.  Alias
  means cancel by independent target/alias masks, alias squares remain in the
  calculation, and the pointwise activation ledger charges their total by
  \(C_k|X-m_0|^k\) before expectation.  Negative ancestors, half-open boundary
  atoms, zero variance, supported-cell laws, and point masses also survive.
- Explicit-rate stress cases: The derivation survives \(k=2\) with arbitrarily
  large \(S\), fixed \(k\) on either side of two, \(S=1\),
  \(\lambda=\sigma\), \(\epsilon=c_k\sigma\), and
  \(\delta\uparrow1/2\).  The remaining failure is the missing public
  corollary interface, not a dropped rate factor or invalid absorption.
- Appendix self-contained attack surface: Proposition~
  `prop:rate-specialization-bridge` and its proof contain the auxiliary
  choices, threshold checks, displayed absorptions, unconditional probability
  conversion, regime substitutions, and final \(k\)-only dependence.  The
  final theorem proof uses it correctly, and an isolated Tectonic build
  succeeds.  No appendix derivation gap was found.
- Scope or mode upgrade attacks: Conditioning only on the complete
  localization transcript leaves refinement observations and seeds
  conditionally iid; the tower step then restores the stated unconditional
  joint probability.  The fixed, non-stopping horizon, absolute norm, one-bit
  count, and zero-interaction claim undergo no unsupported upgrade.
- Remaining risk: After the assembly-level corollary repair, no concrete
  theorem-level or step-level counterexample remains from the tested boundary,
  tail, alias, conditioning, baseline, or rate regimes.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
