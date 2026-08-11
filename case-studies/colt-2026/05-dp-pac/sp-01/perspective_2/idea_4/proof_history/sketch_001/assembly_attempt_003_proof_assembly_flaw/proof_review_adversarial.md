# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The sixteen terminal target-step compositions are substantive `proof`
   environments but do not have an immediately attached theorem heading. The
   named-result references and derivations are present and the structural
   review accepts them; attaching each composition to its proposition would
   improve paper readability.
2. Near `latex_template/5_appendix.tex:7804`,
   `Proposition~\ref{lem:step-012-empirical}` names a lemma label as a
   proposition. The reference resolves and the mathematics is unchanged, but
   the result type should be synchronized in a later editorial pass.
3. The public theorem calls the old-arm universal constant
   `K_{\mathrm O}` (`3_main.tex:39-53`), while its appendix rate proposition
   calls the same existential constant `K_{\mathrm{old}}`
   (`5_appendix.tex:10042-10095`). Identifying these names is immediate, so
   this is a notation-synchronization concern rather than a missing rate
   argument.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: the final deterministic minimum of the VC,
  old-Lyu, and finite arms, together with the scheduled frontier. Reading only
  `1_intro.tex`, `2_preliminary.tex`, and `3_main.tex` now exposes the exact
  Markov-kernel existential in `m_C`, the all-input DP predicate, the common
  quotient/raw interface, the totalized laws and calibration choices, the
  arm rates, and the finite/infinite-class convention. The final appendix
  proof cites complete theorem-style arm interfaces and the minimum proposition.
- Standalone theorem attack: replacing the realizable sample by arbitrary raw
  labels still leaves the quotient pullback and DP proof applicable; replacing
  a raw neighbor by one with the same quotient record gives equality, while a
  changed quotient record gives one-record adjacency. The exact iid pushforward
  and risk identity then prevent a quotient-to-raw scope or metric upgrade.
- Weakest step-level claim: the marked producer-block holdout argument and its
  composition with the adaptive mechanisms. Stressing repeated candidates,
  multiple producer blocks, selected-stage dependence, empty lists, fallback,
  and an analysis-only mark is neutralized by the finite occurrence kernel,
  exact output projection, pathwise producer inclusion, and integration over a
  fixed producer block before the independent complement tail. The old arm has
  the same argument on its independent tuple; no conditioning on the realized
  mark is used to claim independence.
- Candidate counterexamples or stress cases: `d=0` and `d=1`; `v=1` and
  `v=d`; `k=2`; zero-DDim and empty or duplicate restrictions; immediate and
  last-stage success; mechanism failure and fallback paths; finite classes with
  one element and infinite classes; improper outputs; arbitrary nonrealizable
  labels; and countably many quotient cells. The checked branches either use
  the exact singleton/no-data law or the displayed totalization and finite
  support bounds, with no surviving counterexample.
- Explicit-rate stress cases: the ceiling-aware VC and old fixed points retain
  their integer remainders and expose `d^4(v+log(1/beta))` and `d^5`, while the
  finite arm pays its ceiling directly. The frontier defines `q_*=6` and
  displays
  `delta K_V Lambda^4 R_VC <= delta K_* Lambda^6 R_VC`, so the selected-arm
  `N delta -> 0` implication is valid under the stated schedule and is not
  silently asserted for fixed positive `delta` or for the standalone old arm.
- Appendix self-contained attack: removing the internal proof-step files
  leaves named theorem/lemma/proposition statements, cited-result mappings,
  local derivations, boundary cases, and all sixteen in-proof terminal
  compositions in `5_appendix.tex`. Label/reference and citation checks are
  closed. The standalone proof-block formatting noted above is a readability
  issue, not an omitted implication or workflow-only dependency.
- Scope or mode upgrade attacks: utility remains unconditional iid high
  probability uniformly over `D,c`, while privacy remains all-input raw
  replace-one DP; the two modes are not conflated. Fixed positive `delta` is
  separated from the optional asymptotic schedules, the finite arm is pure DP,
  and no claim is made beyond a finite-or-countable measurable quotient.
- Remaining risk: no verified break or unresolved high-risk candidate remains.
  The only residual issues are the three notation/readability concerns above;
  they do not require a proof, sketch, or idea repair.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target =
None`.
