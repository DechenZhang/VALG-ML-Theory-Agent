# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_008/proof.md`
- Reviewed proof SHA-256: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted `step_006` proof/review SHA-256: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` / `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`
- Accepted `step_007` proof/review SHA-256: `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` / `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-008-stage-map} matches the accepted source/current interface: (H_i^r=H_{i,\mathrm{src}}^{r+1}), (p_r=p_{r+1,\mathrm{src}}/2), and (p_{r+1}=2p_r), with current stages (r=0,\ldots,d). It correctly treats the source's omitted displayed endpoint as a current definition justified by the source's explicit (d+1)-stage algorithm, not as a literal source-list identity.
- Proof validity: Substitution proves the stage and parameter identities. Lifting any finite quotient-labeled Littlestone tree to representatives in (X) proves \(\operatorname{LD}(\bar C)\le d\), and subclass monotonicity gives the required restriction bound. The zero-block-error membership implication is genuinely conditional and proves nonemptiness when later supplied.
- Cited-result and assumption audit: Only Assumption~\ref{assump:finite-littlestone} and setting-defined positive-branch objects are used. No realizability, generated event, class-cardinality, or selector premise is hidden.
- Rigor checklist: The endpoint (r=d), transition range (r<d), positivity and integrality of (p_r), and the distinction between current half-scale lists and literal source-stage lists are all explicit.
- Local adversarial test: At (d=1), the map has current stages (0,1), source stages (1,2), and exactly one pair ((p_1,p_0)=(2n_0,n_0)). Infinite \(\bar C\) does not affect the finite tree-lifting argument.
- Contribution to target step: It supplies the exact endpoint, scale map, dimension premise, and conditional nonemptiness interface used by all later units.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-inclusion} states the required inclusion for every \(r<d\), \(i_*\in[k]\), and all blocks, explicitly conditional on the accepted \(E_{\mathrm{good}}\).
- Proof validity: In the high branch,
  \[
  e_i\le\frac{1+a_d}{1-a_d}e_{i_*}
  \le\frac{1+a_d}{1-a_d}\rho^{r+2}\gamma
  \le\rho^{r+1}\gamma,
  \]
  because ((1-a_d)-\rho(1+a_d)=(d+1)/(10d^2)>0). In the low branch, the accepted bound (e_i\le\gamma/2), Bernoulli's inequality (\rho^d\ge1/2), and (r+1\le d) give (e_i\le\rho^{r+1}\gamma). Both branches have the correct inequality directions.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-006-good-event} supplies exactly the two clauses used, including assigning (e=\gamma/3) to the low branch. Accepted `step_007` is used only for confidence provenance, not to strengthen this deterministic conditional implication.
- Rigor checklist: Positive denominators, the strict high/closed low split, empty-left-side vacuity, all (i_*), and all (r<d) are handled. No block independence is used.
- Local adversarial test: The cases \(e=0\), \(e=\gamma/3\), \(d=1\), and a nonempty next-stage restriction all preserve the exact inclusion. Without \(E_{\mathrm{good}}\), the inclusion can fail, and this unit does not claim otherwise.
- Contribution to target step: It supplies the sole cross-block class inclusion needed for every factor-two Lemma 4.3 application.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-decompositions} covers exactly the required nonempty-class existence, optimal attainment, finite-tree/leaf bound, and leaf irreducibility interfaces for every positive integer (p).
- Proof validity: The source existence claim applies after the local \(\operatorname{LD}\le d\) check. In the source greedy construction, nonempty expanded nodes have depth at most (B=p(2^{d+1}-1)), empty children are not expanded, and hence the constructed binary tree has depth at most (B+1) and is finite. The nonempty set of attained integer degrees is contained in \(\{0,\ldots,d\}\), so its least value is attained by an optimal tree. Lyu Lemma 4.1 and the valid-leaf clause then give the leaf cap and exact irreducibility scale.
- Cited-result and assumption audit: The frozen v1 Definition 4.2, existence claim, and Lemma 4.1 have the claimed statement roles and no finite-domain or finite-class premise. Empty outer restrictions are deliberately outside these source invocations.
- Rigor checklist: Tree finiteness is derived from bounded binary depth rather than class enumeration; optimality uses discreteness rather than compactness; nonunique optimal trees remain allowed; and only nonempty leaves are assigned SOA/irreducibility roles downstream.
- Local adversarial test: A countably infinite domain or class changes neither bounded depth nor the integer degree set. Empty children do not generate an infinite branch, and nonuniqueness does not affect attainment.
- Contribution to target step: It provides finite optimal trees, the source leaf cap, and irreducible leaf witnesses for essentiality and later SOA export.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-transition} uses only \(\mathcal G=H_{i_*}^{r+1}\), \(\mathcal H=H_i^r\), and \((2p,p)=(p_{r+1},p_r)\), conditional on \(E_{\mathrm{good}}\) and nonempty \(\mathcal G\), exactly as required by the accepted sketch.
- Proof validity: Inclusion gives nonempty \(\mathcal G\subseteq\mathcal H\), and (p_{r+1}=2p_r) gives the literal source scale. Lyu Lemma 4.3 therefore yields \(\operatorname{DDim}_{p_{r+1},d}(\mathcal G)\le\operatorname{DDim}_{p_r,d}(\mathcal H)\). Only when both values equal (t) does it yield pointwise SOA equality. Fixing an arbitrary optimal superclass tree and using essentiality in any optimal subclass tree correctly upgrades that equality to cross-stage essential-set inclusion.
- Cited-result and assumption audit: The frozen source states the comparison in this direction for arbitrary chosen optimal ((2p,d))- and ((p,d))-trees and states the SOA conclusion only under equality. The submitted proof preserves both qualifications.
- Rigor checklist: All tree quantifiers are universal where essentiality needs them; actual functions on (Q_C), rather than empirical traces, are compared; and no strict DDim drop is claimed.
- Local adversarial test: Unequal DDim values yield only the weak comparison, while nonunique optimal trees still yield inheritance because the superclass tree was arbitrary. Empty \(\mathcal G\) invokes no source result.
- Contribution to target step: It exports the exact factor-two comparison and equality-only actual-SOA inheritance required by the next structural step.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-essential-lists} preserves Definition 4.3's quantifier over every optimal tree, defines lists as sets of actual functions, totalizes only an empty outer restriction to the empty list, and restates all four clauses of Corollary 4.1.
- Proof validity: Every essential function occurs among maximal-leaf SOAs in any one fixed finite optimal tree, so the list is finite and has size at most (p_r^d2^{d^2}), with duplicates only reducing cardinality. The cited corollary then gives same-((p,d))/same-DDim inheritance, existence under \(\operatorname{DDim}_{2p,d}=\operatorname{DDim}_{p,d}\), and, for a nonempty DDim-zero class, finiteness and exact equality of the essential set with the class.
- Cited-result and assumption audit: Frozen v1 Definition 4.3 and Corollary 4.1 contain exactly these all-optimal-tree and four-clause statements. None requires finite \(\bar C\). Source results are never applied to an empty outer restriction.
- Rigor checklist: Nonempty class and nonempty essential set are not conflated; DDim zero is not assigned to the empty class; list ordering is separate from mathematical set identity; and actual functions are not replaced by trace representatives.
- Local adversarial test: An infinite class can have a finite or empty essential set; a DDim-zero nonempty class is forced into the source's finite exact-support case; and nonunique trees preserve the universal definition.
- Contribution to target step: It supplies finite actual lists and every Corollary 4.1 interface needed by later descent and support arguments.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-list-envelope} uses the authoritative accepted dictionary (L(k)=p_d^d2^{d^2}) and exports exactly one-stage and all-stage list caps.
- Proof validity: Monotonicity (p_r\le p_d) gives \(|\mathcal L_i^r|\le L(k)\), and a union over exactly (d+1) stages gives \(|\mathcal G_i|\le(d+1)L(k)\). Expanding (p_d=2^dn_0d) gives
  \[
  \log L(k)=d\log n_0+d\log d+2d^2\log2
  \]
  with no omitted power or factor.
- Cited-result and assumption audit: The only substantive input is the proved source list cap in Proposition~\ref{prop:step-008-essential-lists}; (p_d) and (L(k)) are the accepted deterministic positive-branch definitions.
- Rigor checklist: The exponent (d\ge1), exact (d+1) stage count, empty-list case, and duplicate removal across leaves or stages are all handled.
- Local adversarial test: At (d=1), the formula is \(\log L=\log n_0+2\log2\); at (v=d), only the already fixed (n_0) changes, so no new structural power is introduced.
- Contribution to target step: It supplies the finite multiplicity and exact logarithm consumed by mechanism and reconstruction steps.
- Verdict: PASS
- Repair direction: None.

### unit_007: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-leaf-scale} gives every actual essential item a maximal-leaf witness in every optimal tree, exact pointwise SOA identity, and both required irreducibility scales.
- Proof validity: Definition 4.3 supplies \(t=\operatorname{DDim}_{p_r,d}(H_i^r)=\operatorname{LD}(\mathcal A_\ell)\) and \(\bar f=\operatorname{SOA}_{\mathcal A_\ell}\). The valid-leaf clause supplies (p_r2^{d-t})-irreducibility. Since (0\le t\le d), (r\ge0), (n_0=km\ge2), and (d\ge1), the scale is at least \(p_0=n_0d\ge\max\{n_0,d+1\}\).
- Cited-result and assumption audit: The witness and source scale come only from the already checked decomposition and essentiality interfaces. The proof does not assume properness of the SOA function.
- Rigor checklist: The monotonicity from (K)-irreducibility to (q\le K) is proved: extend any (q)-tuple to length (K) by repetitions, and use monotonicity of Littlestone dimension under further restriction. Nonemptiness of (Q_C) and integrality of all scales hold in the setting.
- Local adversarial test: At (d=1), (p_0=n_0\ge2=d+1). Repeated points in the extension are permitted by the source's sequence quantifier, and an improper SOA remains an actual member of (H_C).
- Contribution to target step: It exports exact SOA identity plus (n_0)- and ((d+1))-irreducibility to their distinct later consumers.
- Verdict: PASS
- Repair direction: None.

### unit_008: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-boundaries} now separates the unconditional endpoint, empty-state, DDim-zero, scalar/list/scale, infinite-class, \(v=d\), duplicate-trace, nonunique-tree, and actual-function clauses from the first-transition and \(d=1\) transition inclusions, which it states only when \(E_{\mathrm{good}}\) occurs. The local-lemma-map row records the same split.
- Proof validity: Equation (16) proves the first factor-two parameter pair unconditionally, while (17) is invoked only on \(E_{\mathrm{good}}\). Items 2-4 and 6-9 follow from the cited named results. At \(d=1\), the proof correctly keeps the scalar, endpoint, list, and irreducibility calculations unconditional and invokes the sole cross-block inclusion only under the event.
- Cited-result and assumption audit: Propositions~\ref{prop:step-008-inclusion} and~\ref{prop:step-008-transition} retain their explicit \(E_{\mathrm{good}}\) hypotheses. The boundary proposition neither promotes that derived event to a primitive condition nor exports an unconditional inclusion.
- Rigor checklist: Every requested degeneracy is covered with the correct scope. The statement and proof distinguish parameter pairing from class inclusion, distinguish empty restrictions from DDim zero, and preserve actual functions rather than trace representatives.
- Local adversarial test: Outside \(E_{\mathrm{good}}\), cross-block inclusion can fail, and the repaired proposition makes no such claim. On \(E_{\mathrm{good}}\), Unit 2 supplies both the first transition and the unique \(d=1\) transition. At \(d=1\), \(p_0=n_0\), \(p_1=2n_0\), and the leaf scale remains at least \(n_0\ge2=d+1\).
- Contribution to target step: It closes every required boundary and convention audit while preserving the conditional scope of the two event-dependent inclusions.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The endpoint definition, quotient LD bound, two event branches, finite-tree argument, optimal attainment, factor-two comparison, all-optimal-tree essentiality, exact list logarithm, irreducibility monotonicity, and boundary scope split each have named local units. The repaired proof contains no conditional-to-unconditional upgrade, hidden class-cardinality premise, unreviewed descent claim, or trace-to-function substitution. Final scans found no control characters, malformed bare `label`/`ref`/`cite` fragments, unmatched displayed or inline math delimiters, duplicate local labels, or unresolved `step-008` references.

## Target Claim Audit

All eight units establish the accepted `step_008` structural package with the correct quantifiers: exact source/current endpoint and half-scale map; event-conditional cross-block inclusion; nonempty-class finite optimal decompositions; the correctly directed factor-two DDim comparison; equality-only pointwise SOA and essential-set inheritance; all four essential-set clauses; exact list cap/logarithm; actual maximal-leaf witnesses at both irreducibility scales; and the boundary package with transition inclusions kept conditional on \(E_{\mathrm{good}}\). Empty outer restrictions, \(d=1\), infinite countable quotients/classes, duplicate traces, nonunique trees, and \(v=d\) all have valid routes. The proof establishes exactly the sketch-row claim and does not claim later DDim descent, selection, privacy, empirical utility, or PAC utility.

## Explicit Rate Audit

The rate-bearing interface is correct. The proof keeps \(p_r^d2^{d^2}\), \(L(k)=p_d^d2^{d^2}\), \((d+1)L(k)\), and \(p_r2^{d-t}\) exact; displays \(\log L(k)=d\log n_0+d\log d+2d^2\log2\); uses no hidden constant; and records the fixed-sample, conditional-on-\(E_{\mathrm{good}}\), empirical zero-one-error mode. The accepted dependency alone carries the unconditional \(\beta/4\) charge. All stage and scale inequalities are displayed, no term is absorbed by prose, and the \(d=1\), \(v=d\), and \(d=0\) baseline routes are preserved. No rate-interface repair is needed.

## Notation Surface Audit

The exported appendix-local objects \(H_i^r,p_r,\mathcal L_i^r,\mathcal G_i\), optimal trees, leaf witnesses, and DDim/SOA/irreducibility interfaces are exactly those required downstream. Source-indexed aliases, generic classes, degree sets, and leaf variables are proof-local; no new public-facing helper is introduced. Every constant and helper has setting, dependency, source, or local-result provenance. The source/current half-scale distinction, actual-function identity, empty-state totalization, and all-optimal-tree quantifier remain visible rather than hidden by notation.

## Target-Step Assembly Audit

The named results jointly imply the exact target claim. Lemma~\ref{lem:step-008-stage-map} supplies the endpoint, half-scale map, and LD premise; Proposition~\ref{prop:step-008-inclusion} supplies the event-conditional class inclusion; Proposition~\ref{prop:step-008-decompositions} supplies finite optimal trees and leaf irreducibility; Proposition~\ref{prop:step-008-transition} supplies the correctly directed factor-two comparison and equality-only actual-SOA inheritance; Propositions~\ref{prop:step-008-essential-lists} and~\ref{prop:step-008-list-envelope} supply the exact finite-list interface; and Proposition~\ref{prop:step-008-leaf-scale} supplies both irreducibility scales. The final appeal to Proposition~\ref{prop:step-008-boundaries} explicitly certifies structural boundaries unconditionally and the first and \(d=1\) transition inclusions only on \(E_{\mathrm{good}}\). No new lemma, dependency, source result, rate term, or sketch bridge is needed.

## Review Rationale

`ACCEPTED` is the smallest sound status. The frozen source, accepted sketch, and accepted `step_006`/`step_007` dependencies match their recorded hashes and supply exactly the interfaces consumed here. All eight local units pass statement, derivation, citation, assumption-provenance, boundary, notation, and adversarial review. Attempt 2 repairs the prior scope defect in the lemma-map row, Unit 8 statement and proof, and target assembly without changing the sketch claim or any dependency. The exact source/current map, event-conditional inclusions, finite essential lists, actual SOA identities, factor-two comparison, and irreducibility scales now assemble without a missing condition or hidden subclaim, so no retry target remains.
