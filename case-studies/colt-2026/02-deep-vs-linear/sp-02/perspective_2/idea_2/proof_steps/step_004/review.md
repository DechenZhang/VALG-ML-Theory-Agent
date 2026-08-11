# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_2/idea_2/proof_steps/step_004/proof.md`, SHA-256 `b0bc2cb36d2701682dd265668d466935b08f7195350aafc0bba3f11092a0d057`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite-simplex minima occur at vertices

- Statement fidelity: The lemma states the exact simplex reduction required by the accepted sketch row for every nonempty finite \(S\), every real coefficient family, and the singleton case. It includes attainment at a vertex and does not introduce a \(\lvert S\rvert\ge2\) restriction.
- Proof validity: Finiteness and nonemptiness provide a minimizing \(x_*\). Nonnegative simplex weights and unit total mass give every convex combination at least \(a_{x_*}\), while the vertex \(p^{x_*}\) attains equality. The quantifiers and both attainment claims are correct.
- Cited-result and assumption audit: No external result or derived invariant is used. The simplex and its vertices are defined directly from the finite subset \(S\), and the proof uses only the basic setting.
- Rigor checklist: Repeated minimum values are harmless, no limiting or compactness argument is needed, and the singleton specialization is an identity. The empty simplex is correctly outside the statement.
- Local adversarial test: For \(S=\{x_*\}\), the only probability vector is \(p^{x_*}\), so both sides equal \(a_{x_*}\). Arbitrary signs of the \(a_x\) do not affect the argument.
- Contribution to target step: It identifies \(\min_{p\in\Delta(S)}L_h(f,p)\) with \(\min_{x\in S}h(x)f(x)\) without changing \(\rho\).
- Verdict: PASS
- Repair direction: None.

### unit_002: Sion's max-min equality on the fixed response body

- Statement fidelity: The proposition targets the exact fixed-body interface: the same \(K_A\), the finite simplex \(\Delta(S)\), the payoff \(L_h\), the maximizing \(f\)-variable, the minimizing \(p\)-variable, and attainment of all displayed extrema. Its restatement of Sion (1958), Theorem 3.4 now requires both spaces to be nonempty, convex, and compact, matching the cited source.
- Proof validity: Accepted `step_002` supplies a fixed nonempty compact convex \(K_A\) and continuous point evaluations, including the \(r_A=0\) branch. For nonempty finite \(S\), the proof establishes that \(\Delta(S)\) is nonempty, convex, closed, bounded, and compact. The payoff is continuous affine in each variable, hence has the source-required upper-semicontinuity/quasiconcavity and lower-semicontinuity/quasiconvexity orientations. The source mapping \(M=K_A\), \(N=\Delta(S)\), \(G=L_h\) is explicit and the max-min orientation is preserved. Inner attainment follows from continuity on compact sets; outer maximum attainment follows from the finite minimum of continuous evaluations; outer minimum attainment follows from the displayed continuity bound for \(v(p)=\max_{f\in K_A}L_h(f,p)\).
- Cited-result and assumption audit: Sion's source statement is restated in current notation before use, with both compactness hypotheses, source variable orientation, and the exact order equality. The proof independently discharges compactness and convexity of \(K_A\) and \(\Delta(S)\), and identifies the topology and payoff objects. Accepted `step_002` proof/review hashes are `d0034bd3eca13915507bbdb9038a5363e0050e2536a870fe15d7bb99bb33fd78` and `909474f05a0a839e2f6443b67bd5200a3d700358ea7a9b2132cbde219f0444b4`; no dependency conclusion beyond its accepted interface is used.
- Rigor checklist: The proof distinguishes Sion's order equality from the separate four attainment arguments, checks finite real-valuedness, and uses no sign reversal or player swap. The Lipschitz estimate for the finite minimum and the finite-sum bound for \(v\) give the required outer continuity. The two object-mapping separators are now paper-ready `\qquad` commands.
- Local adversarial test: If \(\Delta(S)\) were not compact, the cited theorem would not be certified by the old one-space statement; the repaired proof explicitly proves its compactness. For a singleton \(S\), the simplex is a singleton and the minimax statement reduces to the point-mass case. The \(r_A=0\) body is handled directly by the accepted zero-dimensional dependency.
- Contribution to target step: It supplies the exact max-min/min-max equality and the attained maximum over the one fixed \(K_A\), which are the interfaces needed by units 003 and 004.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact-center witnesses lower-bound the fixed-body min-max value

- Statement fidelity: The proposition has the exact pointwise-in-\(p\) lower-bound interface required by the sketch. It allows the exact-center witness to depend on \(p\), while explicitly keeping \(K_A\) fixed, and concludes \(\min_p\max_f L_h(f,p)\ge\rho\).
- Proof validity: Each \(p\in\Delta(S)\) is converted into the available finitely supported law \(\mathcal D_p\). Accepted `step_003` supplies \(F_{R^0_{\mathcal D_p,h}}\in K_A\) with payoff at least \(\rho\), so the inner maximum is at least \(\rho\) for every \(p\); taking the attained outer minimum preserves the bound. No common witness across different \(p\)'s is required.
- Cited-result and assumption audit: The accepted exact-correlation dependency is restated with its current objects, membership, and correlation conclusion. Its proof/review hashes are `de63d61152e43e7859b5e765cf65564277921a71ac3b3f60f7de30508d3cd78d` and `84c8164bb4f98d0db1cf1abd726558e0c3710278ac8d80fc769c61cd1cdd914d`, both accepted for sketch attempt 1, `step_003`, unit attempt 1. The universal guarantee is consumed only through that accepted result.
- Rigor checklist: The quantifier pattern is explicitly \(\forall p\,\exists f_p^0\in K_A\), which yields a pointwise lower bound before the minimum is taken. The threshold is exactly \(\rho\), with no probability, tolerance, or \(\lvert S\rvert\) term.
- Local adversarial test: Different \(p\)'s may induce different exact-center rules and mean responses, but all witnesses lie in the same pre-instance body. Thus no hidden variation of \(V_A\), \(K_A\), or the feature map occurs.
- Contribution to target step: It supplies the min-max lower bound needed to turn Sion's equality into a simultaneous finite margin.
- Verdict: PASS
- Repair direction: None.

### unit_004: Attained simultaneous margin on every finite restriction

- Statement fidelity: The proposition states the exact target chain and selects an attaining \(f_{h,S}\in K_A\) with \(h(x)f_{h,S}(x)\ge\rho\) for every \(x\in S\). It keeps the nonempty-\(S\) scope and separately records the singleton and empty-set boundaries.
- Proof validity: Unit 001 gives the first equality, unit 002 gives the correctly oriented minimax equality and attainment, and unit 003 gives the final lower bound. Selecting the attained maximizer yields all pointwise inequalities. The assembly uses the same fixed body and payoff throughout.
- Cited-result and assumption audit: Every authority is a named theorem-style local result or an accepted dependency with an explicit current-notation interface. No new citation, assumption, bridge, or favorable policy is introduced. The cited Sion application is source-faithful through unit 002.
- Rigor checklist: The equality chain preserves the exact threshold and all quantifiers. For \(S=\{x_0\}\), the conclusion reduces to the accepted point-mass correlation. Empty \(S\) is not passed to Sion and is correctly reserved for the downstream empty-intersection convention.
- Local adversarial test: The selected maximizer exists by unit 002 even when \(r_A=0\); if the nonempty premises also hold, the accepted point-mass result rules that branch out. The \(\varepsilon=0\) specialization retains margin \(1\), and no strictness is lost under the finite restriction.
- Contribution to target step: It exports exactly the attained finite simultaneous \(\rho\)-margin consumed by `step_005`.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the four-unit map. Unit 001 contains the simplex extreme-point identity; unit 002 contains the source application, both compactness checks, continuity arguments, and all attainment claims; unit 003 contains the finitely supported-law construction and the varying-witness quantifiers; and unit 004 contains the equality chain, pointwise conversion, singleton trace, and empty-set exclusion. The finite maxima used in the continuity estimate are proved finite from accepted compactness and continuous evaluation. The repaired proof contains no hidden bridge, generated invariant, or unreviewed citation.

## Target Claim Audit

The proof establishes exactly the accepted `step_004` row: for every \(h\in\mathcal H\) and nonempty finite \(S\subseteq\mathcal X\), an attained \(f_{h,S}\in K_A\) satisfies

\[
\max_{f\in K_A}\min_{x\in S}h(x)f(x)\ge\rho.
\]

The fixed body and its evaluation topology come from accepted `step_002`; the per-distribution exact-center witnesses and threshold come from accepted `step_003`; Sion is applied with both compact convex spaces in the source orientation; and the simplex identity converts the minimizing distribution to the least signed evaluation. The proof keeps \(K_A,V_A,\varphi_A\) fixed while witnesses may vary with \(p\), and it covers \(r_A=0\), singleton restrictions, \(\varepsilon=0\), and the separate empty-set boundary without changing scope or quantifiers.

## Explicit Rate Audit

The step is rate-bearing through Objective R2. The only exposed quantitative variable introduced here is \(\varepsilon\) through the exact threshold \(\rho=1-2\varepsilon\); no hidden constants, auxiliary tolerances, confidence parameters, horizon upgrades, or domain-cardinality terms occur. The probability mode is deterministic, the horizon mode is the inherited fixed finite \(m\), and the norm mode is the pointwise signed margin on \(S\). All displayed transformations are exact equalities followed by the lower bound \(\ge\rho\); no term is dropped or absorbed. At \(\varepsilon=0\), the chain preserves margin \(1\), and the singleton case reduces to the point-mass baseline.

## Notation Surface Audit

\(\Delta(S)\) and \(L_h\) are necessary appendix-local objects; the temporary \(v(p)\), finite evaluation maxima, and finitely supported law \(\mathcal D_p\) are proof-local; \(f_{h,S}\) and \(\rho\) are the minimal public-facing outputs. All helper objects are defined from setting quantities or accepted dependencies, and the proof exports no unnecessary dictionary. The repaired object mapping uses `\qquad` in both places, and a scan of the submitted proof found no bare `qquad`, `quad`, `ref`, `eqref`, `cite`, `citep`, or `citet` command fragments.

## Target-Step Assembly Audit

The named local results and accepted dependencies jointly imply the exact target. Accepted `step_002` supplies one fixed nonempty compact convex \(K_A\) and continuous evaluations; unit 002 supplies the source-faithful Sion equality and all required attainment; accepted `step_003` plus unit 003 supplies the pointwise min-max lower bound; and units 001 and 004 convert the result into an attained simultaneous margin on \(S\). The assembly uses theorem-style labels rather than unit IDs as mathematical authority, preserves the exact \(\rho\) threshold, and introduces no new dependency or sketch interface.

## Review Rationale

ACCEPTED is the smallest sound status. The repaired proof is faithful to the accepted sketch and target, all four local units are self-contained and pass their rigor and adversarial checks, and both accepted dependencies are current and hash-matched. The earlier source-fidelity issue is resolved by stating Sion (1958), Theorem 3.4 with compactness of both \(K_A\) and \(\Delta(S)\) and the correct maximizing/minimizing orientation; the earlier paper-readiness issue is resolved by repairing both `\qquad` fragments. No dependency, sketch, assumption, quantifier, rate, or target change is required, so the smallest retry target is `None`.
