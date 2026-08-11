# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The measurable-law interface in `step_002` and Proposition~\(\ref{prop:step-002-preinstance-law}\) assumes a property not supplied by the formalized setting.  Equation~(A.13) asserts that \((r,x)\mapsto g_{r,z}(x)\) is jointly measurable for every fixed synthetic response string \(z\), including strings that no tolerance-valid oracle can produce, on the ground that this is entailed by the phrase "randomized learner."  Complete-tape determinism does not imply that assertion, and the primitive guarantee only requires an expected loss for actual runs against tolerance-valid policies.  The gap has a concrete counterexample.  Take \(m=1\), \(\tau=1/2\), \(\varepsilon=1/8\), \(G=\{-1,0,1\}\), \(\mathcal X=\{x_0,x_1\}\), \(\mathcal H=\{h\}\) with \(h\equiv+1\), and a nonatomic tape space.  Choose a measurable tape event \(E\) of mass \(1/8\) and a nonmeasurable \(B\subset E\).  The learner asks the constant query \(q\equiv1\).  On every tolerance-valid reply, it outputs \(p=(-1,+1)\) on \(E\) and \(h\) off \(E\); hence, for every distribution \(\mathcal D\), its expected binary loss is \(\mu(E)\mathcal D(\{x_0\})\le\varepsilon\).  Define the unused synthetic reply \(-1\) to output \(h\) on \(B\) and \(p\) off \(B\), and define reply \(0\) as on the valid branch.  This changes no valid-oracle execution because every valid reply to \(q\equiv1\) lies in \([1/2,1]\).  For the balanced distribution on \(\mathcal X\), the response-tree feature map has optimal homogeneous tie loss \(0\) on \(B\) and off \(E\), but \(1/2\) on \(E\setminus B\): on \(E\setminus B\), all three coordinates equal \(p\), so the two feature vectors are antipodal.  Thus \(r\mapsto F_{\mathcal D,h}(\phi_r)=\tfrac12\mathbf 1_{E\setminus B}(r)\) is nonmeasurable.  By the final-sigma-algebra equivalence (A.19), \(F_{\mathcal D,h}\) is not measurable, so (A.12) and the theorem's feature-law expectation are undefined.  Repair requires adding measurable transition/output-kernel or joint finite-execution typing for every fixed transcript to the primitive learner model; that changes the theorem-facing setting rather than merely repairing the assembly.

## Nonblocking Concerns

1. Proposition~\(\ref{prop:step-002-preinstance-law}\) declares \(\mathfrak F_N\) to contain every map \(\mathcal X\to\mathbb R^N\), while (A.11) applies \(L_{\mathrm{tie}}\) to every such map.  On a nontrivial measurable domain, a nonmeasurable map need not define a measurable error event.  After the blocking execution-measurability premise is repaired, the construction should restrict the map space to measurable maps or define the loss functional only on \(T(\Omega_R)\) and give a measurable extension off that image.

## Suggested Repair Depth

idea

## Smallest Candidate Repair Target

/subagent-idea-generator

## Adversarial Audit

- Weakest theorem-level claim: The pre-instance response-tree law supports a measurable optimal tie-risk functional for every \((\mathcal D,h)\), so its expectation is a well-defined pushforward of the tape expectation.
- Standalone theorem attack: The written assumptions control only valid-oracle executions; they do not type the learner measurably on every invalid synthetic transcript used as a feature coordinate.  The explicit one-query construction in Blocking Issue 1 satisfies the stated universal risk premise but makes the theorem's integrand nonmeasurable.
- Weakest step-level claim: `step_002`, `unit_004`, specifically the unsupported implication from complete-tape determinism to joint replay measurability in (A.13).  Every subsequent parameter-integral, factorization, selected-coordinate, and pushforward-risk statement depends on it.
- Candidate counterexamples or stress cases: The \(m=1\), \(\tau=1/2\), two-point-domain example above is a verified break, not merely a candidate.  Separate attacks using \(m=0\), root or intermediate stopping, unread padding, midpoint rounding, \(\tau\ge1\), duplicate tape-to-map fibers, and \(\varepsilon=0\) are neutralized by explicit arguments in the appendix.
- Explicit-rate stress cases: No rate defect was found.  The exact count \(N=(\lceil1/\tau\rceil+1)^m\), including \(N=1\) at \(m=0\), follows from the finite response-string enumeration without hidden dependence.
- Appendix self-contained attack surface: The appendix exposes the critical issue rather than proving it: the sentence before (A.13) declares measurable finite execution to be inherent typing and not an additional premise.  Nothing in the two numbered assumptions discharges that claim for tolerance-invalid fixed strings.
- Scope or mode upgrade attacks: There is a verified upgrade from deterministic behavior after tape conditioning plus measurable expected risk along every valid policy to joint measurability of outputs over tape and input along all synthetic fixed transcripts.  The latter is strictly stronger.
- Remaining risk: This review is bound to `assembly_report.md` SHA-256 `ba8f04e2b02e9c08af7e7da00cf45e63cdff078df7e10099238881b369b21e53` and `latex_template/5_appendix.tex` SHA-256 `ebf1d03ff26770e834544562b18615ad34d08e029707474d898aedc723859e7e`.  If measurable-kernel semantics are intended as part of the term "randomized algorithm," they must be stated in the formalized primitive assumption; without that repair, the current theorem is not well-defined for all learners admitted by its literal contract.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
