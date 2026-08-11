# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_008/proof.md`, SHA-256 `b4c82bcce38a326a6904eb8690545899e5c0416c8574b31fece9391edd9b3b4f`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, status `ACCEPTED`
- Accepted dependency proof: `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`
- Accepted dependency review: `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, status `ACCEPTED`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_008

## Blocking Issues

1. Location: `## Cited Result Applications`, the sentence beginning "The remaining active labels," and the proof of Proposition~\ref{prop:step-008-almm-expected}. Defect: the proof consumes ALMM `lem:finiteramsey`/`lem:ramsey`, `lem:lbhomog`, `lem:AtoP`, and `lem:binary`, but records only broad one-line roles for them. It does not restate their exact current-notation hypotheses and conclusions, including the homogeneous-set size bound, the branch where the homogeneous set is too small, the expected-loss-adapted hypothesis of the large-homogeneous-set argument, the finite-cube distribution interface, and the quantitative binary-search conclusion with its delta discharge. Thus the central expected-loss wrapper relies on cited results by labels and broad prose, contrary to the cited-result contract. Downstream effect: `unit_001`, and therefore the exported factor floor, is not yet a contract-valid proof authority even though the primary source supports the intended adaptation. Smallest repair direction: in `unit_001`, restate every actually consumed ALMM internal result in current notation with its assumptions, conclusion, and discharge, or give the corresponding derivation inline; explicitly show that the printed empirical-PAC premise is used only to obtain \(\mathbb E L\le1/8\) in `lem:reduction` and that the remainder of the chain uses only the resulting jump, homogeneity, privacy, and the displayed delta cap.

2. Location: `unit_004`, both its Local Lemma Map entry and the theorem statement beginning "Under Assumptions ... and the accepted `step_001` conclusions." Defect: "the accepted `step_001` conclusions" is a workflow reference, not a named theorem-style dependency, and the statement also leaves its required prior local results recoverable only from surrounding prose and equation (7). Under the local-unit contract, this is not a sufficiently explicit assumption/dependency basis. Downstream effect: Proposition~\ref{prop:step-008-factor-floor} cannot be cited as a self-contained paper-ready proposition despite its valid assembly calculation. Smallest repair direction: replace the phrase with the exact dependency, at least Lemma~\ref{lem:step-001-quotient-invariance}, and explicitly name Proposition~\ref{prop:step-008-almm-expected}, Lemma~\ref{lem:step-008-shelah-tasks}, and Lemma~\ref{lem:step-008-resampling} in the proposition's statement; identify \(\mathfrak T_{i,m}\) as the universe supplied by the named Shelah-task lemma rather than only by an equation number.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition targets the exact empirical threshold obstruction needed by the sketch: even \(N\ge72\), arbitrary improper bit-vector output, replacement privacy on every labeled database, the concrete ALMM delta scale, and expected empirical loss at most \(1/8\). It does not substitute the printed PAC conclusion for the required expectation interface.
- Proof validity: Direct inspection of ALMM arXiv:1806.00949v3 confirms the mathematical route. In `lem:reduction`, the empirical PAC hypothesis is used to derive \(\mathbb E L\le(15/16)(1/16)+(1/16)\le1/8\); the rest of that proof obtains the marginal gap. The later homogeneous-set, `lem:AtoP`, and `lem:binary` arguments use that gap, replacement privacy, finite output marginals, and the delta cap. The final iterated-log calculation yields a universal \(N=\Omega(\log^*t)\) bound. The submitted proof nevertheless does not restate those later cited interfaces with the detail required for a proof-step artifact.
- Cited-result and assumption audit: The source labels and their roles are genuine. `thm:main`, `lem:bun`, and `thm:ADPimpliesLD` have PAC premises and are correctly marked as nonoutputs for this proposition. `thm:shelah` and `lem:reduction` are accurately described. The unexpanded uses of `lem:finiteramsey`/`lem:ramsey`, `lem:lbhomog`, `lem:AtoP`, and `lem:binary` are the blocking citation defect; their source hypotheses are not discharged locally result by result.
- Rigor checklist: Binary relabeling preserves errors and DP. ALMM's `def:private` is fixed-size replacement adjacency, and its algorithms may output arbitrary hypotheses. The stronger cap \(1/(1000N^2\log_2N)\) covers either the natural-log or base-two reading of the source cap. Evenness supplies balanced databases, and \(N\ge72\) covers the small numerical branches.
- Local adversarial test: At \(N=72\), the delta cap is below the auxiliary one-replacement threshold used by ALMM, and no properness or high-probability inference is needed after the expectation line. A finite ordered domain is order-isomorphic to a finite subset of \(\mathbb R\), so the source's domain convention does not narrow the claim. No mathematical counterexample was found.
- Contribution to target step: Supplies the only theorem-critical ALMM expected-empirical-loss obstruction.
- Verdict: REVISE_STEP
- Repair direction: Fully restate and discharge the consumed internal ALMM chain inside this unit; no change to the proposition, sketch row, or constants is needed.

### unit_002: lemma

- Statement fidelity: The lemma gives the exact finite, learner-independent Shelah witness and task universe required by the target, together with an explicit base-two log-star shift.
- Proof validity: ALMM `thm:shelah` states that Littlestone dimension at least \(d\) supplies \(\lfloor\log d\rfloor\) thresholds. The accepted quotient-invariance lemma transfers the factor dimension and finite patterns exactly. Taking \(t_i=\max\{1,\lfloor\ln d_i\rfloor\}\) is valid under the source's base-two convention and also under a natural-log convention. For \(r_i\ge8\), the displayed bounds \(t_i\ge(\ln2/2)\log_2d_i\ge\log_2\log_2d_i\) imply \(\log_2^*t_i\ge r_i-2\). Each row-counting measure is a legal finite mixture of Dirac measures, even if raw singletons are not measurable sets.
- Cited-result and assumption audit: Assumption~\ref{assump:vc-one-factors} and the named accepted Lemma~\ref{lem:step-001-quotient-invariance} supply exactly the dimension and finite-pattern inputs. The witness and representatives are chosen from the class before any learner is supplied; no measurable section or learner-dependent selection is used.
- Rigor checklist: The \(d_i=1\) branch uses nonconstancy only to provide a length-one pattern and is not fed into the high-log-star conclusion. Repeated database rows are permitted in \([t_i]^{N_m}\), and the task family is finite for each fixed \(i,m\).
- Local adversarial test: At \(r_i=8\), the inequalities used for the two-iteration loss are already strict; at \(d_i=1\), the later factor-floor implication is trivial from \(m\ge8\). Quotient collisions cannot collapse distinct witness patterns by the accepted dependency.
- Contribution to target step: Produces the finite task universe and the exact LD-to-threshold complexity bridge.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: The lemma implements the exact with-replacement resampling wrapper, arbitrary-output finite-evaluation postprocessing, all-input replacement privacy, empirical/population risk identity, delta translation, and \(m=8\) boundary required by the sketch row.
- Proof validity: For the least even \(N_m\ge9m\), \(9m\le N_m\le9m+1\le10m\). Substitution into the BNSV formulas gives \(\varepsilon_m'=0.6m/N_m\le1/15\) and \(\delta_m'=e^{0.6m/N_m}(4m/N_m)\delta\le(10/21)\delta<\delta\). The inequalities \(10m\le(m+1)^2\) and \(\ln N_m\le2\ln(m+1)\) give the displayed conservative coefficient \(c_\delta=\ln2/200000\). Equation (18) is pointwise equality with multiplicities, so taking expectations proves (13) without a generalization or support residual.
- Cited-result and assumption audit: In BNSV arXiv:1504.07553v1, Lemma 5.9 states that an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-PAC learner on \(m\) rows yields an empirical learner on \(9m\) rows with the same displayed privacy and accuracy parameters. The exact \(6\) and \(4\) formulas do not occur in that statement; they occur in the immediately preceding `lem:secrecy-of-the-sample`, which assumes \(\varepsilon\le1\) and \(N\ge2m\). The submitted proof makes this distinction correctly and discharges both hypotheses.
- Rigor checklist: The secrecy proof conditions on the multiplicity of the replaced row and iterates replacement privacy across all selected copies, so repeated sampling is not treated as a single replacement. Finite-evaluation cylinders make the output-vector postprocessing measurable, and totality/all-input privacy cover nonrealizable resampled databases.
- Local adversarial test: At \(m=8\), \(N_m=72\) exactly, \(\varepsilon'_8=1/15\), and the delta multiplier is strictly below one. For odd \(m\), the extra row still leaves \(N_m\le10m\). Repeated raw witness points in the database are counted identically in empirical loss and in the row-counting distribution.
- Contribution to target step: Transfers the factor learner's expected population-risk premise to the exact ALMM empirical interface with valid privacy constants.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Its mathematical conclusion is the exact sketch-row implication and the stronger strict finite-task contrapositive, with universal constants and no properness, finite-ambient-output, or high-probability restriction. Its assumption/dependency wording is not contract-valid because it names only "accepted `step_001` conclusions" rather than the exact theorem-style dependencies and prior local results.
- Proof validity: Conditional on the preceding results, the derivation is correct. For \(r_i<8\), \(m\ge8\) and \(a_{\rm L}\le1\) suffice. For \(r_i\ge8\), \(N_m\le10m\), the ALMM proposition, and \(\log_2^*t_i\ge r_i-2\ge r_i/2\) yield \(m\ge(a_0/20)r_i\). Negating the assertion that every member of the fixed finite universe has loss at most \(1/8\) gives a task with loss strictly greater than \(1/8\).
- Cited-result and assumption audit: No new external source is needed here. The exact accepted dependency available is Lemma~\ref{lem:step-001-quotient-invariance}; the relevant prior local results are Proposition~\ref{prop:step-008-almm-expected}, Lemma~\ref{lem:step-008-shelah-tasks}, and Lemma~\ref{lem:step-008-resampling}. The statement must name them rather than relying on a step ID, surrounding prose, or an equation number.
- Rigor checklist: The finite universe is fixed using only \(C_i,i,m\) before \(A\). The quantifier negation is strict, the low-\(r_i\) branch cannot enter the contrapositive premise, and all constants remain universal.
- Local adversarial test: Equality \(m=a_{\rm L}r_i\) is intentionally outside the strict contrapositive and still satisfies the forward implication. At \(m=8\), the resampling unit remains valid. Arbitrary improper outputs are retained through finite evaluation rather than extended to a proper threshold.
- Contribution to target step: Assembles the expected-risk factor floor and exports the fixed finite task universe to downstream minimax.
- Verdict: REVISE_STEP
- Repair direction: Replace the workflow-style dependency phrase and equation-only provenance with the exact named dependency and prior theorem-style results in the statement and Local Lemma Map.

## Primary-Source Audit

- ALMM source: arXiv:1806.00949v3, source archive SHA-256 `90d1ad2757740a9cbdc8a5d3d9e84db2a8981258f15c42e6ebb5ce09a1ad29e6`, extracted `ADP.tex` SHA-256 `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`. The labels `thm:shelah`, `thm:main`, `lem:bun`, `lem:reduction`, and `thm:ADPimpliesLD` all exist with the roles recorded above. The active proof also uses `lem:finiteramsey`/`lem:ramsey`, `lem:lbhomog`, `lem:AtoP`, and `lem:binary`. `thm:main`, `lem:bun`, and `thm:ADPimpliesLD` are PAC-facing statements; the expected-loss interface must be derived from the proof, not attributed to those statements.
- BNSV source: arXiv:1504.07553v1, source archive SHA-256 `a2011ce37e5559ddea38e594ed64c1cd47e14f5146fcf5c4f8bf849ea5cdb960`, extracted `thresholds.tex` SHA-256 `26ef98af700bd48d71c16eec61e8309c403222a1845a2097da5c31b5d3d7e318`. Lemma 5.9 is the \(9m\) PAC-to-empirical reduction with unchanged displayed \((\varepsilon,\delta)\). The exact formulas \(\widetilde\varepsilon=6\varepsilon m/N\) and \(\widetilde\delta=e^{6\varepsilon m/N}(4m/N)\delta\), including the multiplicity argument for with-replacement sampling, are stated and proved in the immediately preceding `lem:secrecy-of-the-sample`.

## Hidden Subclaim Scan

No additional mathematical bridge is missing from the four-unit decomposition: source-proof adaptation, finite witness/log-star translation, resampling/risk identity, and final assembly are separately represented. The material hidden-interface issue is the compressed ALMM internal citation chain inside `unit_001`, already recorded as Blocking Issue 1. Finite order relabeling, finite-evaluation postprocessing, and monotonicity from \((\varepsilon_m',\delta_m')\) to \((0.1,\delta_m')\) are routine and explicitly visible. No generated event, invariant, proper-output condition, or learner-dependent task choice is smuggled into the proof.

## Target Claim Audit

The displayed units, once the two local contract defects are repaired, establish exactly the `step_008` sketch claim. The learner is arbitrary and possibly improper, privacy is replacement DP on all labeled inputs, utility is expected exact distributional \(0\)-\(1\) risk, the finite task universe is fixed before the learner, and the conclusion is fixed-factor/fixed-\(m\), not uniform over candidates. The quotient-to-raw witness transfer is exact, and the contrapositive concludes strict risk \(>1/8\). No PAC high-probability premise is inferred from expected risk. The defects do not require a changed claim, assumption, dependency list, tool, or output target, so `REVISE_SKETCH` is not warranted. The accepted `step_001` proof is sound and current, so `BLOCKED_BY_DEPENDENCY` is not warranted.

## Explicit Rate Audit

The step exposes \(i,d_i,r_i,t_i,m,N_m,\delta\), fixes the source privacy and risk constants, and states the expected-risk, fixed-sample, exact-risk modes. The choices \(a_{\rm L}=\min\{1,a_0/20\}\) and \(c_\delta=\ln2/200000\) have explicit universal provenance. Equations (8)--(9), (14)--(17), and (22) display every log-star shift, even-rounding loss, delta translation, and final constant absorption. There is no probability-mode conversion or hidden cardinality dependence. At \(k=1\), this step preserves the unrestricted ALMM intermediate floor assigned by the sketch; the accepted roadmap leaves the final expectation-to-PAC conversion to `step_014`.

## Notation Surface Audit

The proof classifies \(a_{\rm L},c_\delta,\mathfrak T_{i,m}\) as public-facing, the source-witness package and \(N_m\) as appendix-local, and the resampling parameters/databases as proof-local. These classifications are appropriate, and all helper constants and objects have visible provenance. The one notation/provenance defect is localized to `unit_004`'s workflow phrase and equation-only reference to \(\mathfrak T_{i,m}\); replacing them with named theorem-style references is sufficient. No unnecessary helper cascade affects the exported interface.

## Target-Step Assembly Audit

The assembly's mathematical dependency order is correct: Proposition~\ref{prop:step-008-almm-expected} supplies the expected empirical obstruction; Lemma~\ref{lem:step-008-shelah-tasks} supplies the fixed witness and log-star bridge; Lemma~\ref{lem:step-008-resampling} supplies privacy and exact risk transfer; and Proposition~\ref{prop:step-008-factor-floor} supplies the final implication and strict finite-task floor. Those conclusions jointly imply the target with no residual. Formal acceptance must wait for the cited-interface repair in `unit_001` and the theorem-statement dependency repair in `unit_004`; a fresh step review is required after the producer rerun.

## Review Rationale

`REVISE_STEP` with `/proof-step step_008` is the smallest sound route. Independent primary-source inspection supports the expected-loss adaptation, the arbitrary-improper-output scope, the exact BNSV resampling formulas, the finite Shelah witness, all constant and boundary calculations, and the strict contrapositive. The accepted sketch and dependency therefore need no change. The submitted artifact is nevertheless not contract-valid because its central ALMM source chain is not restated at the interfaces actually consumed, and its final proposition names an accepted step generically instead of naming theorem-style dependencies. Both defects are confined to this proof artifact and can be repaired without changing its claim, constants, decomposition, or downstream interface.
