# Proof Step Review

## Step Review Identity

- Registered reviewer: `codex-cli:p2_step012_reviewer_idea4_v2`
- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_012/proof.md`
- Reviewed proof SHA-256: `0a5d28b5f44489f7571fe3de7b5770ba5eadc43f52e20ad116feeea84d2d8e2f`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted direct dependency proof/review SHA-256 pairs:
  - `step_006`: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` / `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`
  - `step_008`: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`
  - `step_010`: `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` / `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`
- Current transitive dependency proof/review SHA-256 pairs:
  - `step_001`: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` / `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`
  - `step_002`: `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` / `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`
  - `step_003`: `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280` / `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`
  - `step_004`: `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` / `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`
  - `step_005`: `f1ba8be90c3ec4c84ac79bed9bb8ad537d9912e5737e6362e50647c3634557c5` / `40bbda8f8bb5f05d545f348a4d1a047454e86a8a6833db9f28a756d0a12ef67b`
  - `step_007`: `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` / `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`
  - `step_009`: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` / `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`
- Independently checked source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
- Evidence boundary: the stale live review, `proof_history/`, global diagnostics, assembly artifacts, trackers, worker logs, final reviews, and results were not used as proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-selected-leaf} proves the exact first part of the sketch-row target. On the joint source/mechanism-good path it recovers the actual selected current list member, its source/current stage identity, a nonempty maximal leaf \(\mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C\), pointwise equality \(\bar H=\operatorname{SOA}_{\mathcal G}\) on all of \(Q_C\), and irreducibility at both scales consumed downstream. It does not replace the current half-source-scale list by a literal source-stage list.
- Proof validity: Accepted Step 010 gives literal selected-list membership and actual status. The piecewise list definition in accepted Step 008 then forces the outer restriction to be nonempty. Definition 4.3 and accepted Proposition~\ref{prop:step-008-leaf-scale} apply to that exact list member in every optimal decomposition and give \(t=\operatorname{LD}(\mathcal G)\), exact SOA identity, and \(p_{\widehat r}2^{d-t}\)-irreducibility. The displayed chain \(p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}\) is valid because \(d\ge1\) and \(n_0=km\ge2\). Accepted Step 008 already proves monotonicity to the two smaller integer irreducibility scales.
- Cited-result and assumption audit: The only primitive condition used directly is Assumption~\ref{assump:finite-littlestone}. The selected list, actual/fallback status, source/current map, essentiality, leaf witness, and irreducibility scale are accepted derived outputs at the exact hashes above. Membership in \(E_{\mathrm{core}}\) is a local conditional hypothesis, not a primitive theorem assumption.
- Rigor checklist: The quantifier over every optimal decomposition is retained; choosing any one such decomposition supplies the witness needed later. Empty restrictions receive no DDim or SOA. The argument distinguishes actual status from output value, handles \(\widehat r=0\) and \(\widehat r=d\), and invokes a next-current factor-two relation only when \(\widehat r<d\).
- Local adversarial test: At \(d=1\), including \(t=0\), the scale is at least \(n_0\ge2=d+1\). At the endpoint \(\widehat r=d\), no nonexistent current stage \(d+1\) is used. An actual selected function equal to \(\bar c_0\) remains actual. Duplicate list occurrences do not alter the function identity.
- Contribution to target step: It supplies the exact selected leaf, actual SOA function, source/current identity, and the \(n_0\)- and \((d+1)\)-irreducibility inputs used by Units 2-4.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-012-leaf-error} proves exactly the required master empirical-error transfer for every actual member of the selected leaf. It expressly does not apply \(E_{\mathrm{good}}\) to the potentially improper output \(\bar H\).
- Proof validity: For \(g\in\mathcal G\subseteq H_i^{\widehat r}\), current-restriction membership gives \(e_i(g)\le\rho^{\widehat r+1}\gamma\le\gamma\). Because the same \(g\) lies in \(\bar C\), accepted Step 006 applies pointwise. If \(e_{\bar S}(g)\le\gamma/3\), the target is immediate, including equality. Otherwise, the lower relative clause gives \((1-a_d)e_{\bar S}(g)\le e_i(g)\), hence \(e_{\bar S}(g)\le\gamma/(1-a_d)\le(5/4)\gamma\le2\gamma\). All inequality directions and denominators are correct.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-006-good-event} supplies the exact master/block normalizations and the high/low branch split. Proposition~\ref{prop:step-012-selected-leaf} supplies actual leaf membership. No trace representative, block independence, realizability strengthening, or new confidence event is assumed.
- Rigor checklist: Equality at \(e_{\bar S}(g)=\gamma/3\) is assigned to the low branch. The constant check uses \(a_d=1/(5d)\le1/5\), so division is legal. The proof is uniform over all leaf members and both selected-stage endpoints and adds no union bound.
- Local adversarial test: Master error zero, the \(\gamma/3\) boundary, \(d=1\), \(\widehat r=d\), repeated master records, and an infinite \(\bar C\) all preserve the pointwise argument. If \(\bar H\notin\bar C\), the event is still used only on the actual \(g\)'s.
- Contribution to target step: It establishes the all-\(g\) premise required by the indexed irreducibility contradiction.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-012-empirical} proves the exact target bound \(e_{\bar S}(\bar H)\le2\gamma=\alpha/8\) on all \(n_0\) indexed master records. It retains repeated coordinates and permits equality at \(\alpha/8\).
- Proof validity: Assuming strict error \(>2\gamma\), any \(g\in\mathcal G\) agreeing with \(\bar H\) at every indexed master input would have exactly the same error indicators and therefore the same forbidden error, contradicting Unit 2. Hence the complete \(\bar H\)-labeled restriction is empty. Lyu's Definition 4.1 quantifies over every length-\(n_0\) sequence and labels it by the fixed original \(\operatorname{SOA}_{\mathcal G}\); Unit 1 supplies that exact pointwise SOA identity and \(n_0\)-irreducibility. The restriction must retain \(\operatorname{LD}(\mathcal G)=t\ge0\), so it cannot be empty. This is a valid contradiction.
- Cited-result and assumption audit: The checked Theorem 3 passage is used only as this empirical contradiction pattern, which the unit reproduces fully. The malformed SOA expression in the printed theorem statement, its privacy/rate claims, its source-specific master-error assertion, its high-constant-probability analysis, and its unsupported probability-one conversion are not imported.
- Rigor checklist: The restriction has exactly \(n_0\) entries and the normalization remains \(1/n_0\). Repeated points are allowed by the source's sequence quantifier; their SOA labels are consistent because \(\bar H\) is a function. The argument begins with a strict \(>\), so its negation is the required weak \(\le\). The arithmetic \(2(\alpha/16)=\alpha/8\) is exact.
- Local adversarial test: Repeated quotient points, repeated labeled records, a DDim-zero leaf \(t=0\), \(d=1\), and exact output error \(\alpha/8\) all pass. Even with repeated inputs, coordinatewise function equality preserves every error indicator rather than deduplicating the sample.
- Contribution to target step: It proves the full-master empirical certificate consumed by Step 013.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-fixed-family} proves literal membership of the selected output in the fixed family of SOAs of nonempty \((d+1)\)-irreducible subclasses of \(\bar C\), together with the exact bound \(\operatorname{LD}(\widehat C_{d+1})\le d\). The family depends only on static \(\bar C\) and \(d\), not on the sample, partition, lists, stage, event, or selected output.
- Proof validity: Unit 1 supplies the same nonempty \(\mathcal G\subseteq\bar C\), its \((d+1)\)-irreducibility, and pointwise identity \(\bar H=\operatorname{SOA}_{\mathcal G}\), which directly proves membership. Accepted Step 008 gives \(\operatorname{LD}(\bar C)\le d\). Frozen Lyu Lemma 4.2 has exactly that hypothesis and concludes exactly \(\operatorname{LD}(\widehat C_{d+1})\le d\).
- Cited-result and assumption audit: Lyu Lemma 4.2 is accurately restated from the pinned v1 source. It supplies only the Littlestone-dimension bound. It supplies no current-output membership, properness, measurability, privacy, empirical utility, population utility, or PAC conclusion; those are not attributed to it.
- Rigor checklist: The output family is a class of functions on \(Q_C\) inside \(H_C\), and it may be improper relative to \(\bar C\). No empirical trace is substituted for a function. Nonemptiness of the witness class makes SOA well-defined. The source requires only an upper bound on \(\operatorname{LD}(\bar C)\), not equality.
- Local adversarial test: Infinite \(\bar C\), a countably infinite quotient, DDim-zero witness classes, \(d=1\), and \(\bar H\notin\bar C\) all remain within the source statement. The fixed family remains unchanged across different samples or selected stages.
- Contribution to target step: It supplies the exact sample-independent improper-family membership and structural LD interface required by the sketch row.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-boundaries} covers the requested positive-branch endpoints and integrity regimes: \(\widehat r=0\), \(\widehat r=d\), \(d=1\), \(v=1\), \(v=d\), DDim zero, singleton and duplicate candidates, repeated sample entries, actual-value/fallback-status equality, empty and fallback exclusion, equality at \(\alpha/8\), and improper output. It makes no claim beyond the preceding named conclusions.
- Proof validity: Each item is a direct specialization of Units 1, 3, and 4 or of accepted Step 010's status interface. In particular, DDim zero means \(t=0\) for a nonempty selected leaf; repeated sample points remain indexed in Unit 3; and a selected value equal to \(\bar c_0\) is distinguished from fallback by transcript status. Empty lists, \(\perp\), and fallback are excluded by actual membership on \(E_{\mathrm{mech}}\), while \(E_{\mathrm{good}}\) is used separately only for error transfer.
- Cited-result and assumption audit: The proposition introduces no new source use or assumption. Its inputs are the primitive finite-Littlestone condition, the three preceding local results, and the accepted actual-status output. The positive-branch hypothesis is explicit; the setting's \(d=0\) no-data singleton branch bypasses Step 012 entirely.
- Rigor checklist: At \(\widehat r=d\), no current transition or list at \(d+1\) is invented. At \(d=1\), both irreducibility scales are valid, including \(t=0\). Candidate multiplicity does not change set membership or SOA identity. No strict-error, properness, probability, privacy, or sample-rate claim is added.
- Local adversarial test: The no-data \(d=0\) branch activates none of the formulas containing \(d^{-1}\); at \(d=1\), both stages work. The cases \(r=0\), \(r=d\), duplicate/repeated records, a DDim-zero leaf, an actual default-valued output, and an improper output all retain the target conclusions with the same normalizations.
- Contribution to target step: It closes every requested degenerate, endpoint, status, duplication, and no-overclaim boundary.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the five-unit map. Actual selected-list recovery and exact leaf identity are isolated in Unit 1; the master-error transfer for actual leaf members is Unit 2; the full indexed irreducibility contradiction is Unit 3; fixed improper-family membership and Lyu's dimension bound are Unit 4; and all endpoint/status/duplicate/improper boundaries are Unit 5. The only small facts used inside those units are displayed where needed: positivity of \(1-a_d\), the \(5/4\) constant bound, nonemptiness forced by actual list membership, the nonnegative LD of a nonempty leaf, exact error-indicator equality, and \(2\gamma=\alpha/8\).

The proof does not hide a conditional-to-unconditional conversion, a measurable selector, a trace-to-function substitution, a properness assertion, or an extra source output. It uses theorem-style names and stable labels in the target assembly rather than local unit IDs or subsection titles as mathematical authority.

## Target Claim Audit

The submitted proof establishes exactly the accepted `step_012` claim on the positive-dimensional branch and no more: conditional on the derived joint source/mechanism-good path, every actual selected quotient output is the exact SOA of one nonempty subclass \(\mathcal G\subseteq\bar C\) that is both \(n_0\)- and \((d+1)\)-irreducible, lies in the fixed improper family \(\widehat C_{d+1}\) with \(\operatorname{LD}(\widehat C_{d+1})\le d\), and has indexed master empirical error at most \(\alpha/8\).

Dependency provenance is current and closed. The direct Step 006, 008, and 010 proof/review hashes match the submitted proof and the binding identities above. Their transitive paths are `step_006 -> step_005 -> (step_001, step_002)`, `step_008 -> (step_006, step_007)` with `step_007 -> (step_001, step_006)`, and `step_010 -> (step_001, step_004, step_009)` with `step_004 -> step_003`, `step_003 -> (step_001, step_002)`, and `step_009 -> step_008`. Every current proof/review pair on those paths matches the SHA-256 pair recorded above, and every corresponding current review certifies its current producer attempt.

Assumption provenance is sound. Assumption~\ref{assump:finite-littlestone} is primitive. Realizability enters only through the accepted Step 009/010 producer path; \(E_{\mathrm{good}}\), \(E_{\mathrm{mech}}\), restrictions, lists, actual status, leaf identity, and irreducibility are derived. \(E_{\mathrm{core}}\) is only a local conditional hypothesis for a pathwise lemma. No generated event, membership, boundedness, or status fact is promoted to a theorem-facing primitive.

The result remains explicitly within the setting's finite-or-countable measurable evaluation-quotient regime. This local proof neither removes that primitive restriction nor supplies the missing measurability or learning interfaces for uncountable evaluation quotients. It does not claim to solve the unrestricted DP-PAC open problem, obtain a universal polynomial in \(v\) and \(\log d\) or \(\log^*d\), prove privacy, or prove population PAC utility.

## Explicit Rate Audit

- Exposed variables: \(d,v,k,m,n_0,\alpha,\gamma,a_d,\rho,\widehat r,t,p_{\widehat r}\). The exact quantitative outputs are \(e_{\bar S}(\bar H)\le2\gamma=\alpha/8\) and \(p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}\).
- Hidden constants: None. The only numerical comparison introduced locally is \((1-a_d)^{-1}\le5/4\le2\), with \(a_d=1/(5d)\), and every factor is displayed.
- Fixed quantities: The indexed sample, partition, public parameters, accepted restrictions/lists, selected stage, selected output, and dependency events are fixed before the deterministic argument.
- Probability mode: Deterministic conditional on \(E_{\mathrm{core}}=E_{\mathrm{good}}\cap E_{\mathrm{mech}}\). No failure probability, union bound, tower, conditioning conversion, or confidence charge is added. In particular, the proof does not recharge the accepted mechanism or trace ledgers.
- Horizon mode: One selected stage from the fixed \(d+1\)-stage horizon and one length-\(n_0\) restriction. There is no all-time, asymptotic, stopping-time, or horizon-uniform upgrade.
- Norm mode: Indexed full-master empirical binary zero-one error with normalization \(1/n_0\); block empirical zero-one error with normalization \(1/m\) is used only in Unit 2. No population, decoded raw-space, or alternative norm is asserted.
- Admissibility and auxiliary tolerances: The proof uses exactly \(d\ge1\), \(\gamma=\alpha/16\), \(a_d=1/(5d)\), \(\rho=1-1/(2d)\), the accepted positive-branch integer dictionary, the exact source event, actual selected status, and the accepted leaf scale. No new tolerance, threshold, or margin is introduced.
- Rate bridge and baseline reduction: The step contributes only the exact \(\alpha/8\) internal certificate used by Step 013 and introduces no sample, positive structural power, or hidden logarithm. The \(d=0\) no-data branch bypasses it; \(d=1\), \(v=1\), and \(v=d\) preserve the same certificate. Public sample-complexity specialization remains outside this step.

## Notation Surface Audit

No new public-facing helper is introduced. The fixed family \(\widehat C_{d+1}\) and the exact SOA/irreducibility/error outputs are appendix-local. Inherited events, restrictions, lists, scales, selected stage, and selected output retain their accepted appendix-local meanings. The conjunction \(E_{\mathrm{core}}\), empirical-error extensions \(e_{\bar S},e_i\), one selected leaf \(\mathcal G\), its dimension \(t\), and the restricted class \(\mathcal R\) are proof-local.

Every helper and constant has visible provenance. In particular, \(\widehat C_{d+1}\) is defined solely from static \(\bar C\) and \(d\); it is not a generated sample-dependent family. The notation keeps actual functions distinct from empirical traces, current stages distinct from source stages, actual transcript status distinct from fallback value, and the improper family distinct from \(\bar C\). The step exports only the minimal interface consumed by Step 013.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-010-mechanism-good} first supplies a literal actual current-list output. Proposition~\ref{prop:step-012-selected-leaf} combines that output with accepted Step 008 to obtain the same function as \(\operatorname{SOA}_{\mathcal G}\) and both irreducibility scales. Lemma~\ref{lem:step-012-leaf-error} uses accepted \(E_{\mathrm{good}}\) only on actual \(g\in\mathcal G\subseteq\bar C\) to prove their master-error bound. Lemma~\ref{lem:step-012-empirical} applies the exact indexed SOA-labeled restriction to prove the output's \(\alpha/8\) empirical bound. Proposition~\ref{prop:step-012-fixed-family} uses the same \(\mathcal G\), not a surrogate or trace representative, for fixed-family membership and the exact Lyu Lemma 4.2 LD bound. Proposition~\ref{prop:step-012-boundaries} preserves all requested endpoints and status boundaries.

These named results jointly imply the exact target. No extra lemma, changed dependency, source wrapper, probability conversion, rate term, or downstream PAC argument is required. The assembly correctly stops before privacy, population generalization, decoded risk, and public sample-complexity claims.

## Review Rationale

The submitted attempt proves the unchanged Step 012 interface using only the binding setting, accepted sketch, current accepted dependencies, named local results, and the independently checked frozen source. All five units pass statement, derivation, citation, assumption-provenance, constant, mode, notation, boundary, and adversarial review. The exact actual-function identity, leaf-only use of \(E_{\mathrm{good}}\), full indexed \(n_0\)-irreducibility contradiction, equality at \(\alpha/8\), fixed sample-independent improper family, and Lyu Lemma 4.2 bound assemble without a missing bridge. No producer, dependency, or sketch retry is justified, so `None` is the smallest retry target.
