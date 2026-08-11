# Adversarial Proof Review

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

## Adversarial Audit

- Weakest theorem-level claim: The selected-learner small-`delta` conclusion survives the strongest schedule attack. The proof gives `N_* <= min{B_fin,B_o,B_V} <= B_V = K_V Lambda^4 R_VC` before taking limits, so the declared VC schedule implies `N_* delta -> 0`. The standalone old arm is governed separately by `delta K_O Lambda^6 R_old -> 0`; no reverse implication or fixed-positive-`delta` asymptotic claim is made.
- Standalone theorem attack: After only the setup and preliminaries, the main theorem exposes its four primitive assumptions, output space, raw replace-one privacy mode, realizable iid utility mode, exact fixed horizons, rate variables, universal-constant dependence, finite/infinite-class convention, and conditional finite-or-countable quotient scope. The appendix proves the theorem-critical kernel, privacy, PAC, rate, and minimum-selection links without relying on internal workflow artifacts.
- Weakest step-level claim: The highest-risk local interfaces are Step 011's adaptive privacy composition and Step 013's marked holdout. Step 011 proves simultaneous one-list locality, sensitivity one at every common transcript prefix, uniform privacy of every history-indexed second kernel, exact additive-`delta` composition, data-independent partition mixing, and raw pullback. Step 013 first proves the marked bad-output inclusion pathwise and only then conditions on the producer block, reducing the adaptive output to finitely many producer-local fixed candidates before applying the iid complement tail.
- Candidate counterexamples or stress cases: The attacks using `d=0`, `d=1`, `v=1`, `v=d`, formal `k=2`, zero DDim, empty restrictions or lists, no selected stage, invalid or fallback paths, a fallback value also present in a list, repeated records, repeated candidates, neighboring executions selecting different stages, improper outputs, infinite `C`, and fixed positive `delta` are all neutralized by explicit branches or identities. The source/current half-scale map is exact: `H_i^r=H_{i,src}^{r+1}`, `p_r=p_{r+1,src}/2`, and the actual current transition is `p_{r+1}=2p_r`.
- Explicit-rate stress cases: The teacher count is activated only after a ceiling-aware finite witness proves feasibility. Trace concentration uses marginal without-replacement laws rather than block independence. The producer/stage/list multiplicity is paid by a displayed exponent inequality. The VC, old-Lyu, and finite-class arms retain their separate bounds, and the finite arm is disabled by cost `+infinity` when `C` is infinite. No hidden positive power of `d`, `v`, or `log^+|C|` is introduced.
- Appendix self-contained attack surface: The public appendix contains theorem-style statements and substantive derivations for the countable quotient kernel, raw pullback, marked lift and exact projection, adaptive approximate-DP composition, pathwise marked reconstruction, fixed-candidate lower tail, rate bridges, and final arm selection. In particular, the repaired displayed equations (7.2) and (7.3) establish the selected and standalone-old schedules directly.
- Scope or mode upgrade attacks: Privacy is proved on every labeled neighboring input without conditioning on utility events; PAC utility is unconditional over iid sampling, partition, and mechanism randomness; and the mark is projected out rather than released. Finite-parameter validity holds for every allowed `0<delta<1`, while convergence statements require their displayed schedules. The theorem consistently excludes uncountable evaluation quotients and does not claim to resolve the unrestricted open problem.
- Remaining risk: No acceptance-blocking adversarial issue remains under the stated conditional scope.
