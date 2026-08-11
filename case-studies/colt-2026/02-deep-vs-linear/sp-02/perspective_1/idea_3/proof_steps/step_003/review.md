# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_003/proof.md`
- Reviewed proof SHA-256: `df0cecad7f8b44a606a7baf14e55722639159bb315468de7410a18f79afaadc0`
- Binding setting SHA-256: `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`
- Binding proof-sketch SHA-256: `ec48a538bbde2f7a738402d2625a54eecfbb48693d25bed97f9abea9f61450da`
- Binding proof-sketch-review SHA-256: `c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172`
- Accepted dependency proof: `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256 `8be304660660b6bb0291e1f41778b858002ec883a958536da432c72aa07e1198`.
- Accepted dependency review: `perspective_1/idea_3/proof_steps/step_002/review.md`, SHA-256 `d4d87387e2c7b5e282e1cdc288a31798cafb88d0ad2ba288f5c0ae70ade88bb7`, status `ACCEPTED` for sketch attempt 1 and unit attempt 1.
- Diagnostic global-proof SHA-256: `44796754e8c47ace167be50dc508a89304987807e8a85926ffad941fee4956f9`
- Diagnostic global-proof-review SHA-256: `9dd2c6c49ac476c03e9bf8339e892d0f50c936d0651f62eeec1c402ac69a6cac`
- Input-integrity result: Every supplied binding, dependency, diagnostic, and reviewed-proof artifact matched its supplied SHA-256 before review and remained unchanged after review creation and validation. The global diagnostic pair is current and accepted, and was used only as diagnostic context, not as proof evidence, an assumption source, or authority to alter the accepted step interface.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-game-lower-bound} states the accepted row's first obligation for arbitrary fixed \(h\in\mathcal H\) and nonempty finite \(F\subseteq\mathcal X\). It uses the one permitted primitive assumption and the exact accepted `step_002` correlation interface, defines \(A_{xi}=h(x)g_i(x)\), and concludes both the pointwise-in-\(p\) best-response bound and the attained minimum game-value bound at the unchanged threshold \(\rho_\varepsilon\).
- Proof validity: For each fixed \(p\in\Delta_F\), the finite law \(\mathcal D_p=\sum_{x\in F}p_x\delta_x\) is a legal distribution on the arbitrary domain: it is specified by nonnegative masses summing to one, and every expectation used is the displayed finite sum. Accepted Proposition~\ref{prop:step-002-exact-correlation} therefore gives some \(i(p)\in[L]\) with \(p^TAe_{i(p)}\ge\rho_\varepsilon\). Taking the finite maximum gives the bound for that \(p\), and universal generalization gives it for every \(p\). Continuity of the finite maximum on compact nonempty \(\Delta_F\) gives an attained minimum, which remains at least \(\rho_\varepsilon\).
- Cited-result and assumption audit: The accepted dependency is restated with its current objects, quantifiers, conclusion, and prior assumption discharge. The finite Dirac-mixture instantiation does not require topology or a pre-existing measurable structure on \(\mathcal X\): the setting quantifies over arbitrary distributions and the proof defines all needed integrals by finite sums. `assump:universal-adversarial-sq` and catalog membership are not re-assumed; they were already discharged in the accepted dependency. Compactness and the extreme-value theorem are restated and instantiated on the finite simplex.
- Rigor checklist: Zero masses are allowed, so the support may be a proper subset of \(F\). The notation \(i(p)\) is introduced only after fixing an arbitrary \(p\); no simultaneous, measurable, or otherwise regular selector \(p\mapsto i(p)\) is constructed or consumed. The passage from a bound for every \(p\) to a lower bound on the minimum has the correct inequality direction. Quantifiers are \(\forall p\,\exists i\) at this stage, exactly as required before minimax.
- Local adversarial test: Singleton \(F\) gives the sole Dirac law; \(L=1\) gives the only catalog response; duplicated columns do not change the finite maximum; and zero coordinates of \(p\) are harmless. At \(\varepsilon=0\), the dependency supplies correlation at least one, so the game lower bound is exactly one because every matrix payoff is at most one. No distribution restriction, probability conversion, or tape-level measurability claim is introduced.
- Contribution to target step: This lemma supplies the positive value of the minimizing-distribution/maximizing-column game, independently of Sion's theorem.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-column-vertices} isolates exactly the maximizing-simplex vertex identity required by the accepted row, under the fixed nonempty catalog interface and the prior matrix construction.
- Proof validity: For fixed \(p\), \(p^TAw=\sum_i w_i(p^TAe_i)\) is a convex combination of the column payoffs and hence is at most their finite maximum. A maximizing index exists because \([L]\) is finite and nonempty, and its vertex \(e_{i_*}\in\Delta_L\) attains equality. Thus both the equality and attainment are proved directly.
- Cited-result and assumption audit: No external theorem or new assumption is used. Finiteness and nonemptiness of the fixed catalog are part of the accepted dependency interface; the matrix is supplied by the named earlier local lemma. The proof does not attribute this identity to Sion.
- Rigor checklist: The convex-combination inequality has the correct direction for maximization. Zero weights are permitted, no strict positivity is assumed, and repeated catalog functions or repeated matrix columns only enlarge the argmax set. The identity is pointwise in arbitrary \(p\in\Delta_F\).
- Local adversarial test: For \(L=1\), both sides are the sole column payoff. If every column is duplicated or tied, any maximizing vertex still attains the common maximum. Boundary weights with all but one coordinate zero are the witnesses used by the proof, so simplex-boundary cases are included rather than excluded.
- Contribution to target step: This lemma converts Sion's inner maximization over \(w\) into the exact pure-column maximum appearing in the target equation.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-row-vertices} isolates the second required simplex identity for arbitrary fixed \(w\in\Delta_L\), with nonempty finite \(F\) and the same matrix as the first unit.
- Proof validity: The payoff \(p^TAw=\sum_{x\in F}p_x(Aw)_x\) is a convex combination of row payoffs and hence is at least their finite minimum. A minimizing row exists because \(F\) is finite and nonempty, and its point mass \(d_{x_*}\in\Delta_F\) attains equality. Both minima are therefore attained and equal.
- Cited-result and assumption audit: No external result or additional condition is used. The named prior lemma supplies \(F,A\), and the current statement explicitly assumes the nonempty finite-set regime needed for the minimum and point-mass vertex.
- Rigor checklist: The inequality direction is correct for minimization. Point-mass distributions and zero simplex coordinates are expressly legal. There is no interchange of an infinite expectation and an optimization, because all sums and index sets are finite.
- Local adversarial test: For singleton \(F\), \(d_x\) is the sole simplex point and equality is immediate. Tied row values leave a nonempty argmin. The argument remains valid for \(L=1\), duplicate columns, and weights on the boundary of \(\Delta_L\).
- Contribution to target step: This lemma converts Sion's inner minimization over \(p\) into the exact minimum over points \(x\in F\).
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-finite-separator} states the full nonempty-\(F\) sketch-row claim: the correctly oriented game equality, the unchanged lower bound \(\rho_\varepsilon\), attainment by \(w_{h,F}\in\Delta_L\), and every pointwise signed-margin inequality on \(F\).
- Proof validity: The DOI-linked original source states Sion (1958), Theorem 3.4 for compact convex \(M,N\), with a quasi-concave and upper-semicontinuous maximizing variable and a quasi-convex and lower-semicontinuous minimizing variable, yielding \(\sup_M\inf_N f=\inf_N\sup_M f\). Here \(M=\Delta_L\) is the maximizing \(w\)-space, \(N=\Delta_F\) is the minimizing \(p\)-space, both are nonempty compact convex finite-dimensional simplices, and \(f(w,p)=p^TAw\) is continuous affine in each variable. Thus the cited theorem supplies exactly (10), with the asserted orientation and no further output. The two prior vertex lemmas convert its endpoints, Lemma~\ref{lem:step-003-game-lower-bound} supplies positivity, and continuity on compact \(\Delta_L\) independently supplies a maximizing \(w_{h,F}\). Finally,
  \[
  (Aw_{h,F})_x=\sum_i h(x)g_i(x)w_{h,F,i}
  =h(x)\sum_iw_{h,F,i}g_i(x),
  \]
  so the matrix conclusion is identically the exported pointwise conclusion.
- Cited-result and assumption audit: Source identity, title, journal, year, theorem number, DOI, variable map, every source hypothesis, and the used conclusion are all recorded. Direct comparison with the original Theorem 3.4 confirms the restatement and maximizing/minimizing convention. Sion is used only for order equality; positivity, both vertex identities, compactness/continuity attainment, catalog existence, and finite-support legality are separately sourced or proved. The accepted dependency is consumed only through its exact correlation proposition.
- Rigor checklist: The proof distinguishes `sup`/`inf` from `max`/`min` until separate attainment is established. Substitution into Sion preserves the direction \(\max_w\min_p=\min_p\max_w\), and reversing the equality for display does not reverse the lower bound. The final implication from a minimum at least \(\rho_\varepsilon\) to every row inequality is exact. No limit, expectation interchange, stochastic mode upgrade, or unproved common best index occurs.
- Local adversarial test: Singleton \(F\), \(L=1\), duplicate columns, tied extrema, and zero weights all retain compactness, affinity, the vertex identities, and attainment. At \(\varepsilon=0\), Lemma~\ref{lem:step-003-game-lower-bound} gives value at least one while all entries and convex-combination payoffs are at most one, so the game value and exported margins equal one exactly. The proof never needs a measurable \(p\mapsto i(p)\) selector: Sion operates on the payoff function, not on chosen best responses.
- Contribution to target step: This proposition performs the exact quantifier reversal and exports one simultaneous finite-set separator at the original margin, with zero matrix-to-pointwise residual.
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-empty-restriction} supplies exactly the separate \(F=\varnothing\) branch required by the accepted sketch row and does not assign a value to an empty minimax game.
- Proof validity: The fixed catalog is nonempty, so \(L\ge1\), \(e_1\) exists, and \(e_1\in\Delta_L\). The universally quantified margin statement over the empty set is vacuous. No distribution, empty simplex, minimum over an empty index set, or application of Sion is used.
- Cited-result and assumption audit: No external result is used. Nonemptiness of the fixed catalog is inherited from the setting-defined catalog interface already carried by the accepted dependency; the margin notation and parameter range come from `assump:sq-parameter-regime`.
- Rigor checklist: This branch is disjoint from every definition requiring \(F\ne\varnothing\). It produces a genuine weight in the nonempty catalog simplex and only a vacuous pointwise assertion, which is exactly the finite-feasibility interface needed downstream.
- Local adversarial test: The branch remains valid for \(L=1\), duplicate catalog entries, and \(\varepsilon=0\). It does not manufacture a probability measure of total mass one on the empty set.
- Contribution to target step: This lemma completes the every-finite-\(F\) scope without an invalid empty-simplex convention.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The five-unit map explicitly separates: legality of each finite-support proof distribution and the dependency-to-game lower bound; the maximizing-simplex vertex identity; the minimizing-simplex vertex identity; Sion's optimization-order equality, independent attainment, and the exact matrix-to-pointwise export; and the empty-set branch. Compactness of both simplices, continuity of the finite maximum/minimum objectives, existence of extrema, the range of every matrix entry, and the pointwise identity are stated and justified rather than silently imported.

The prose does not smuggle in a measurable or uniform selector \(p\mapsto i(p)\), full support of \(p\), a topology or sigma-algebra on the arbitrary domain, compatibility among weights for different finite sets, strict positivity of simplex coordinates, or catalog distinctness. Boundary checks for singleton \(F\), \(L=1\), duplicates, zero weights, and \(\varepsilon=0\) are consequences of the named units, not new unsupported lemmas. The submitted proof also has every required producer section, five matching theorem-style local units with stable labels, a checked citation application, a named assembly, rate audit, blocker field, and notation/provenance classifications.

## Target Claim Audit

The proof establishes the exact accepted `step_003` row. For every \(h\in\mathcal H\) and every nonempty finite \(F\subseteq\mathcal X\), it uses \(A_{xi}=h(x)g_i(x)\) and proves
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
=
\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
\ge\rho_\varepsilon,
\]
with an attained maximizing weight \(w_{h,F}\) satisfying every pointwise margin on \(F\). It separately proves vacuous feasibility for \(F=\varnothing\). It neither strengthens the conclusion to a weight compatible across different \(F\)'s nor weakens it to an average or approximate margin.

Assumption provenance is closed. `assump:sq-parameter-regime` is the only row-local primitive condition. The fixed nonempty catalog and the universal per-distribution correlation lower bound are accepted derived interfaces from `step_002`, whose current proof and accepting review match the supplied hashes. Finite simplices, matrices, point-mass laws, and optimization witnesses are deterministic constructions or locally proved outputs. There is no local conditional hypothesis or unproved generated invariant.

## Explicit Rate Audit

The step is rate-bearing through R1 and preserves all exposed quantities \(m,\tau,\varepsilon,L,B,k\). Its quantitative output is the exact margin \(\rho_\varepsilon=1-2\varepsilon\), while the accepted catalog interface \(1\le L\le B(1+m/\tau^2)^k\) is carried unchanged. There are no hidden constants; in particular, nothing depends silently on \(F\), \(|\mathcal X|\), a distribution, policy, tape, selector, or catalog multiplicity. The learner, tape space, grid convention, fixed ordered pre-instance catalog, and \(B,k\) are fixed protocol objects; \(h,F\) are arbitrary locally fixed inputs.

The probability mode is deterministic finite-set existence after `step_002` has eliminated learner-tape expectation. The horizon mode remains the fixed finite upper bound \(m\), including \(m=0\). The norm/metric mode is the exact pointwise signed margin on \(F\). There is no auxiliary tolerance, stochastic event, probability conversion, limit, asymptotic threshold, or term absorption. The displayed transfers
\[
\forall p:\ \max_i p^TAe_i\ge\rho_\varepsilon,
\qquad
\min_p\max_i p^TAe_i=\max_w\min_x(Aw)_x\ge\rho_\varepsilon
\]
are exact. Baseline reduction is exact: \(\varepsilon=0\) gives value and margins equal to one; \(m=0\) and every \(\tau>0\) pass through the dependency unchanged; and singleton \(F\), \(L=1\), duplicates, zero weights, and empty \(F\) incur no loss.

## Notation Surface Audit

The notation is explicit and economical. The threshold \(\rho_\varepsilon\) and minimal existential finite-feasibility interface \(w_{h,F}\) are `public-facing`. The index shorthand \([L]\), finite simplex \(\Delta_F\), matrix \(A\), payoff \(f\), and simplex vertices are correctly classified `appendix-local`; they are finite deterministic constructions from the setting's catalog, target, and finite set. The finite law \(\mathcal D_p\), temporary payoffs \(c_i\), and witnesses \(i(p),p_*,i_*,x_*\) are `proof-local` and are not exported.

Every helper has visible provenance. In particular, \(A_{xi}=h(x)g_i(x)\) immediately implies \((Aw)_x=h(x)\sum_iw_ig_i(x)\), so notation does not conceal an object-transfer lemma. The source placeholders \(M,N\) are immediately instantiated. No one-off notation leaks into the downstream interface, and no helper dictionary, free constant, boundedness assertion, selector, event, or generated condition hides a proof obligation.

## Target-Step Assembly Audit

The assembly cites every mathematical input by theorem-style name and stable label. Lemma~\ref{lem:step-003-game-lower-bound} supplies the positive left game value; Lemmas~\ref{lem:step-003-column-vertices} and \ref{lem:step-003-row-vertices} supply the two endpoint identities; the checked Sion application supplies only the middle order equality; and Proposition~\ref{prop:step-003-finite-separator} separately supplies attainment and the exact simultaneous pointwise interface. Lemma~\ref{lem:step-003-empty-restriction} supplies the disjoint empty branch.

These inputs jointly imply the exact target quantifiers and threshold. No bare unit ID, subsection title, global diagnostic, unreviewed claim, invalid empty game, or measurable selection is used as mathematical authority. The output is precisely the finite-feasibility certificate consumed by `step_004`, with no compatibility across finite sets asserted or required.

## Review Rationale

The submitted proof proves the accepted sketch-row claim under exactly the allowed primitive condition and current accepted dependency. The dependency supplies positivity for every legal finite-support distribution; the two direct vertex lemmas identify the simplex extrema; the original Sion Theorem 3.4 applies with maximizing \(w\in\Delta_L\) and minimizing \(p\in\Delta_F\) and supplies only the exact order equality; compactness supplies attainment; and the matrix score is identically the consumed pointwise signed score. The empty restriction is handled without an empty simplex. All five local units, hidden-subclaim risks, boundary cases, explicit dependence, notation surfaces, and assembly links pass independently. No step, dependency, or sketch repair is required, so `None` is the smallest retry target.
