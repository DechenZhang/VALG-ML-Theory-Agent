# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. Step 005's local `claim:step-005-positive-range` is assembled as the
   proposition `prop:step-005-positive-range`. The statement, derivation,
   and every downstream reference are present with the new label, so this is
   theorem-environment and label drift rather than a missing interface.
2. An isolated Tectonic/BibTeX build succeeds with no unresolved reference,
   citation, duplicate-label, or malformed-TeX failure. It reports only
   overfull boxes, the largest observed one being about 22.4 pt in the
   appendix; these are presentation defects and do not change a claim.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The weakest claim is the simultaneous
  all-input privacy, unconditional realizable PAC, and explicit three-arm
  minimum in Theorem~\(\ref{thm:main}\). I tried to separate its interfaces
  by using nonrealizable neighboring inputs, coincident quotient images,
  improper SOA outputs, infinite \(C\), different arm sample sizes, and a
  data-dependent winner. The quotient record map preserves equal-or-one
  replacement, privacy is proved before any realizability event, decoded
  risk is exact for every output in \(H_C\), the finite arm alone is disabled
  at infinite \(C\), and Step 016 chooses one complete arm from fixed
  certified thresholds before seeing data. Thus the privacy and PAC modes do
  not leak across one another, and the selected law is not a mixture.
- Standalone theorem attack: This review binds sketch attempt 1 and assembly
  attempt 7 to `assembly_report.md` SHA-256
  `e7f25723ae479461d4a1d013a15b09b57e0c52d8f6441c783a57a2423f86e314`
  and `latex_template/5_appendix.tex` SHA-256
  `97882501fd830b5615860510e429a45c07b25433a1eb5b60415e7824233078ca`.
  The report, global diagnostic, and all prior review verdicts were used only
  to locate attack surfaces. Reading the setting, nine public TeX files, and
  live proofs supplies the finite-Littlestone, countable measurable quotient,
  realizable-iid utility, and approximate-DP assumptions explicitly. The
  main statement quantifies privacy over every raw replace-one pair and PAC
  risk uniformly over \(D\) and \(c\), with all sampling, partition, and
  mechanism randomness inside the unconditional failure probability. It
  makes no claim for uncountable evaluation quotients or for a resolution of
  the unrestricted parent open problem.
- Weakest step-level claim: Step 015 remains the highest-risk interface. Its
  old arm has its own quotient kernel, trace event, shifted source-stage map,
  essential lists, stopped AboveThreshold transcript, Sparse Sample call,
  all-input composition, SOA certificate, marked producer reconstruction,
  holdout conversion, confidence ledger, and \(d^5\) rate; none is imported
  from the VC arm. For (C6), fixing two coordinates gives
  \(e_m=A+(a+b)B+abC\) with \(C\ge0\); averaging preserves \(a+b\), increases
  \(ab\), decreases squared spread by \((a-b)^2/2\), and converges to the
  constant mean vector, proving the required upper bound by continuity. For
  (C7), exponential Markov with
  \(\lambda=-\log(1-\theta)>0\), followed by
  \(\log(1-p\theta)\le-p\theta\), reduces the exponent to
  \(-pM[\theta+(1-\theta)\log(1-\theta)]\). The derivative check
  \(-\log(1-\theta)-\theta\ge0\) proves the claimed
  \(-\theta^2pM/2\) exponent. No sign, conditioning, or endpoint reversal
  survives these direct reconstructions.
- Candidate counterexamples or stress cases: For (C6), \(m=0\) gives
  \(e_0=1\), \(m=1\) is equality, \(N=1\) has only endpoint equalities, and
  the smoothing proof includes \(m=N\); the actual use has
  \(1\le m<N\). For (C7), \(M=0\) and \(p=0\) make both sides one; for every
  \(0<\theta<1\), including \(p=1\), the logarithm and Markov direction are
  legal; \(\theta=3/4\) yields exactly \(9pM/32\). I also tested \(d=0\),
  \(d=1\), \(v=1\), \(v=d\), \(k=2\), finite and infinite \(C\), repeated
  examples, arbitrary labels, empty restrictions, no selected stage,
  \(\perp\), and fallback collisions. Step 016 excludes finite-arm \(M=0\)
  from nonempty \(C\), sends the only possible \(M=1\) case to the exact
  \(d=0,N=0\) law, and assigns \(+\infty\) rather than a surrogate when
  \(M=|C|=\infty\).
- Explicit-rate stress cases: Step 015 retains the least feasible teacher,
  both ceilings, trace multiplicity, mechanism defects, producer-list
  multiplicity, and confidence shares before proving
  \(N_{\rm old}\le K_{\rm O}\Lambda^6R_{\rm old}\); the universal constant
  hides no positive power of \(d\). Step 016 derives
  \(N_{\rm fin}\le8R_{\rm fin}\) from the exact finite Gibbs tail and uses
  the accepted VC certificate
  \(N_{\rm V}\le K_{\rm V}\Lambda^4R_{\rm VC}\). Choosing the least fixed
  threshold gives \(N_{j_*}\le\min_j B_j\), which is sufficient even if the
  selector does not minimize the unknown actual sample sizes. Since
  \(\Lambda\ge1\), the common \(K_*\Lambda^6\) envelope is valid. The
  baseline identities \(vd^4=d^5\) at \(v=d\) and
  \(vd^4=o(d^5)\) at \(v=o(d)\) retain the exposed powers.
- Appendix self-contained attack surface: The frozen Lyu source has SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  Direct inspection confirms Proposition 2, Algorithm 1/Lemma 3.1, Algorithm
  2/Lemma 3.2, Definitions 4.2--4.3, Lemmas 4.1--4.3, and Corollary 4.1 with
  the source quantifiers used here. In particular, the endpoint stage,
  factor-two DDim pair, arbitrary optimal-tree SOA mapping, DDim-zero list,
  fixed SOA family, one-list privacy relation, and stopped AboveThreshold
  privacy formula are instantiated on nonempty source classes only. Across
  Steps 001--016, the appendix contains quotient factorization; kernel and
  marked projection; VC traces and concentration; fixed-point confidence;
  source mapping, lists, and descent; mechanism utility and privacy; SOA and
  holdout PAC conversion; rate closure; the independent old arm; and the
  finite arm and frontier. All 107 live local labels are represented, with
  the single semantically identical Step 005 relabeling noted above.
- Scope or mode upgrade attacks: Steps 001--004 close totalization,
  measurability, quotient dimension, raw adjacency, and marked projection;
  Steps 005--007 close finite trace counting, without-replacement tails, and
  the ceiling-aware confidence ledger; Steps 008--012 close the exact source
  stage map, DDim descent, list/mechanism interfaces, all-input privacy, and
  the empirical SOA certificate; Steps 013--014 close producer-local
  conditioning, unconditional PAC, and the VC-arm rate; Steps 015--016 close
  the old and finite comparison arms and deterministic frontier. Conditional
  good-path statements are charged before the PAC conclusion. The public
  schedule \(\delta K_*\Lambda^6R_{\rm VC}\to0\) implies the selected
  learner's \(N_*\delta\to0\), while fixed \(\delta\) is used only for the
  finite-parameter theorem and the standalone old arm keeps its distinct
  \(\delta K_{\rm O}\Lambda^6R_{\rm old}\to0\) schedule. No probability,
  privacy, horizon, properness, or asymptotic mode is silently upgraded.
- Remaining risk: No verified break or unresolved high-risk candidate remains.
  Residual risk is limited to the two presentation issues listed above; the
  frozen appendix builds and the theorem-critical source-to-appendix chain is
  complete.
