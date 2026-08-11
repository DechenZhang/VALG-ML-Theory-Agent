# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_003/proof.md`, SHA-256 `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\(\ref{lem:step-003-scale-ordering}\) makes the three requested design choices and proves the exact setting-defined ceiling and group-witness interface. The universal choice \(c_k=e^{-1}\) lies in \((0,1)\), is independent of all problem instances, and is therefore a valid \(k\)-only choice under Assumption~\(\ref{assump:parameter-domain}\). The tail calibration uses only the explicit constant exported by the accepted dependency.
- Proof validity: With \(t=\sigma/\epsilon\geq e\), the proof obtains \(h_0=\sigma/(8t)<\sigma\) and \(H_*/h_0=8b_kt^{k/(k-1)}>1\). For \(J=\lceil\log_2(H_*/h_0)\rceil\), the exact ceiling relation \(2^{J-1}<H_*/h_0\leq2^J\) gives \(h_{J-1}=H/2<H_*\leq H<2H_*\). Independently, \(H\geq H_*\), \(b_k\geq4\), and \(t\geq e\) give \(h_{J-1}\geq H_*/2\geq2\sigma e^{1/(k-1)}>\sigma\). Thus the claimed strict endpoint ordering and both sampled group witnesses follow.
- Cited-result and assumption audit: The current `step_002` proof has SHA-256 `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58`, matching its accepted review identity. It supplies exactly \(C_k^{\rm rec}=2^{k-1}(1+50^k)\). The present lemma uses only this deterministic \(k\)-only constant and Assumption~\(\ref{assump:parameter-domain}\); it does not assume the dependency's generated localization event or moment conclusion.
- Rigor checklist: The choices \(\gamma_k=1/8\), \(c_k=e^{-1}\), \(\overline C_k^{\rm tail}=(11/3)(8/3)^{k-1}C_k^{\rm rec}\), and \(b_k=\max\{4,(8\overline C_k^{\rm tail})^{1/(k-1)}\}\) are positive, finite, and depend only on fixed \(k>1\). All strict and weak ceiling endpoints are used with the correct direction; no asymptotic or unstated uniform-in-\(k\) assertion occurs.
- Local adversarial test: At the largest allowed error, \(\epsilon=c_k\sigma\), one has \(t=e\), so all strict scale inequalities remain strict. If \(H_*/h_0\) is an exact power of two, the ceiling identity still has \(2^{J-1}<H_*/h_0=2^J\), so \(h_{J-1}<H_*\) remains valid. Although the lemma states only \(J\geq1\), its two distinct endpoint classifications also force \(J\geq2\), so one sampled index is never required to be both fine and coarse.
- Contribution to target step: This unit legally fixes every requested design constant and supplies the exact scale ordering used by the group, normalizer, and endpoint-calibration units.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\(\ref{prop:step-003-group-law}\) proves the exact prefix/suffix partition and level-mass law from the setting, including the stipulated behavior when either auxiliary group is empty. Its theorem-regime clause uses Lemma~\(\ref{lem:step-003-scale-ordering}\) to conclude the stronger relevant fact \(m=2\).
- Proof validity: Strict dyadic increase makes \(\{j:h_j\leq\sigma\}\) a prefix and \(\{j:h_j>\sigma\}\) its suffix complement, with equality assigned fine exactly as in `setting.md`. Every active weight is positive, hence every active \(W_G\) is positive. Summing \(p_j=m^{-1}w_j/W_G\) within an active group gives mass \(1/m\), and summing over the \(m\) active groups gives one.
- Cited-result and assumption audit: The general partition and normalization clauses need only the proposition's explicitly stated \(k>1\), \(\sigma>0\), \(h_0>0\), and \(J\geq1\) conditions. The theorem-specific \(m=2\) clause correctly cites Assumption~\(\ref{assump:parameter-domain}\) and the prior named scale-ordering lemma.
- Rigor checklist: Empty groups are handled without changing the protocol definition: \(W_G=0\) is used only as an empty-sum extension in inequalities, while \(w_j/W_G\) is evaluated only for \(j\in G\). Since the sampled set is nonempty when \(J\geq1\), at least one group exists and \(m\in\{1,2\}\). No \(0/0\) quantity or zero level probability is introduced.
- Local adversarial test: If \(J=1\) in a general auxiliary family, the sole sampled index belongs to exactly one group and receives mass one. If \(h_j=\sigma\), it belongs to the fine prefix. If the fine group is empty, all indices are coarse; if the coarse group is empty, all are fine. Under the theorem design neither empty case occurs because indices \(0\) and \(J-1\) are strict witnesses for the two groups.
- Contribution to target step: This unit proves group behavior, positivity of every denominator actually used, exact total probability, exact group masses, and the requested empty-group legality.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\(\ref{lem:step-003-fine-normalizer}\) supplies exactly the fine normalizer bound required by the scale certificate and includes the auxiliary empty-fine convention.
- Proof validity: For a nonempty fine prefix ending at \(j_{\rm f}\), backward reindexing gives \(W_{\rm f}=(h_{j_{\rm f}}/\sigma)\sum_{r=0}^{j_{\rm f}}2^{-r}<2h_{j_{\rm f}}/\sigma\leq2\). This is the correct finite geometric series and does not introduce a factor depending on the number of fine levels.
- Cited-result and assumption audit: The statement is self-contained relative to Proposition~\(\ref{prop:step-003-group-law}\); the only used facts are its prefix property and the setting's fine condition \(h_{j_{\rm f}}\leq\sigma\). No distributional, eventwise, or dependency condition is imported.
- Rigor checklist: The strict inequality in the nonempty case is valid for every finite prefix, including when its largest scale is exactly \(\sigma\). The empty case has \(W_{\rm f}=0\), so the uniform weak bound follows in all configurations.
- Local adversarial test: Arbitrarily many fine levels do not enlarge the bound beyond two, and a one-level fine group gives exactly \(h_0/\sigma\leq1\). The transition case \(h_{j_{\rm f}}=\sigma\) yields a finite partial sum strictly below two.
- Contribution to target step: This unit exports the level-count-free bound \(W_{\rm f}\leq2\) consumed by the later fine-variance step.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\(\ref{prop:step-003-coarse-normalizers}\) proves all three coarse-normalizer regimes required by the accepted sketch, treats \(k=2\) directly rather than by a limit, and retains the auxiliary empty-coarse semantics.
- Proof validity: For \(k>2\), the coarse weights decrease with ratio \(2^{-(k-2)}\) and the first is below one, giving \(W_{\rm c}<1/(1-2^{2-k})\). For \(k=2\), every coarse weight is one, so \(W_{\rm c}=n_{\rm c}=J-j_{\rm c}\) exactly. The endpoint identity \(H/2=2^{n_{\rm c}-1}h_{j_{\rm c}}>2^{n_{\rm c}-1}\sigma\) implies \(n_{\rm c}<\log_2(H/\sigma)\), and \(H<2b_k\sigma t\) plus \(\log t\geq1\) gives the displayed explicit multiple of \(\log t\). For \(1<k<2\), backward summation from \(h_{J-1}=H/2\) has decreasing ratio \(2^{-(2-k)}\), yielding the claimed \((H/(2\sigma))^{2-k}\) bound and then the valid ceiling specialization through \(H<2H_*\).
- Cited-result and assumption audit: All invoked inputs are restated direct finite-series facts, Proposition~\(\ref{prop:step-003-group-law}\), Lemma~\(\ref{lem:step-003-scale-ordering}\), and Assumption~\(\ref{assump:parameter-domain}\). No external theorem or hidden tail assumption is used.
- Rigor checklist: The sampled endpoint is \(J-1\), not the unsampled level \(J\), throughout. The logarithm conversion uses natural \(\log\) exactly as in the setting and \(\log_2 t=\log t/\log2\). Every geometric denominator is positive in its stated open regime, and its blow-up as \(k\to2\) is legal because constants need only be finite for fixed \(k\).
- Local adversarial test: At \(k=2\), a one-level coarse suffix has exact count one and satisfies the strict logarithmic bound because \(h_{j_{\rm c}}>\sigma\). At \(t=e\), the additive constant is explicitly dominated by the factor \(\log t=1\), so no hidden \(+1\) remains. For \(k>2\), a first coarse level arbitrarily close above \(\sigma\) is covered by the infinite decreasing sum. For \(1<k<2\), a long suffix is last-term dominated with precisely the displayed geometric denominator. Empty coarse groups contribute zero and create no denominator.
- Contribution to target step: This unit exports the exact constant, logarithmic, and \((H/\sigma)^{2-k}\) structural bounds needed by the three downstream variance regimes.
- Verdict: PASS
- Repair direction: None.

### unit_005: lemma

- Statement fidelity: Lemma~\(\ref{lem:step-003-endpoint-calibration}\) exposes the bottom and top endpoint inequalities implicit in the accepted sketch's required tail-calibrated choice of \(b_k\); it does not assume or claim the later residual-bias conclusion.
- Proof validity: The bottom identity is immediate from \(h_0=\gamma_k\epsilon\) and \(\gamma_k=1/8\). Since \(H\geq H_*\) and \(k-1>0\), \(H^{k-1}\geq b_k^{k-1}\sigma^k/\epsilon\). Therefore \(\overline C_k^{\rm tail}\sigma^k/H^{k-1}\leq(\overline C_k^{\rm tail}/b_k^{k-1})\epsilon\leq\epsilon/8\), exactly by the earlier displayed design inequality.
- Cited-result and assumption audit: The accepted dependency supplies the explicit \(k\)-only \(C_k^{\rm rec}\), while the prior scale-ordering lemma defines \(\overline C_k^{\rm tail}\), \(b_k\), and the endpoint ordering. All assumption and constant provenance is visible.
- Rigor checklist: Raising \(H\geq H_*\) to \(k-1\) preserves direction because \(k>1\). The algebra \(H_*^{k-1}=b_k^{k-1}\sigma^k/\epsilon\) is exact. No residual-support or moment inequality from a future step is silently used.
- Local adversarial test: The estimate remains valid when the maximum defining \(b_k\) is attained by either branch, because \(b_k\geq(8\overline C_k^{\rm tail})^{1/(k-1)}\) in both cases. It also remains valid at \(H=H_*\) and \(\epsilon=c_k\sigma\), where only weak endpoint inequalities are needed.
- Contribution to target step: This unit proves that the chosen \(b_k\) is genuinely tail-calibrated and exports the two endpoint bounds used by the later bias bridge.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the five-unit map. Positivity and \(k\)-only dependence of the design constants are proved in Lemma~\(\ref{lem:step-003-scale-ordering}\); group partition, active-denominator positivity, total mass, and empty-group semantics are proved in Proposition~\(\ref{prop:step-003-group-law}\); the fine and three coarse sums have separate named results; and endpoint tail calibration has its own lemma. The ceiling identity and every finite geometric-series calculation are restated before use and displayed in the corresponding proofs. The assembly cites only theorem-style named results and the accepted dependency, never a subsection or bare unit ID as mathematical authority.

## Target Claim Audit

The five named results jointly establish the exact accepted `step_003` row: legal \(k\)-only choices of \(\gamma_k,b_k,c_k\); \(J\geq1\), \(H_*\leq H<2H_*\), and strict fine/coarse sampled endpoint witnesses; the prefix/suffix and empty-group-safe probability law; \(W_{\rm f}\leq2\); and the required constant, logarithmic, and \((H/\sigma)^{2-k}\) coarse bounds. Quantifiers cover every fixed \(k>1\), every theorem-admissible \(\epsilon\), all three regimes, and the largest-error endpoint. The output is deterministic, has no unsupported probability upgrade, and uses only the accepted direct dependency.

## Explicit Rate Audit

The proof exposes \(k,\sigma,\epsilon,t,h_0,H_*,J,h_j,H,W_{\rm f},W_{\rm c},p_j\) and states that \(\lambda,\delta\) do not enter this deterministic certificate. All hidden constants are explicit functions of fixed \(k\) only and are declared independent of \(\lambda,\sigma,\epsilon,\delta,D,c,J,H\), transcripts, and sample counts. The probability mode is deterministic, the horizon is the fixed finite scale family, and no stochastic or norm-mode conversion occurs. The proof displays every needed simplification: the ceiling bound, the \(k=2\) domination using \(\log(\sigma/\epsilon)\geq1\), the \(1<k<2\) substitution of \(H<2H_*\), and the tail-endpoint inequality. It preserves the exact structural dependence required by later variance and public-rate bridges and makes no premature sample-complexity claim. No separate baseline reduction applies to this scale-only step.

## Notation Surface Audit

All setting objects retain their original definitions. The accepted dependency's \(C_k^{\rm rec}\) is used with unchanged meaning. The requested design constants and the scale/normalizer certificate are classified as public-facing; \(\overline C_k^{\rm tail}\) is explicitly defined and is a useful single helper because it determines \(b_k\) and the downstream endpoint inequality. The bookkeeping quantities \(t,j_{\rm f},j_{\rm c},n_{\rm c},\alpha,\beta\) are correctly classified as proof-local and are not exported. The empty-sum convention is explicitly scoped away from probability denominators. No opaque helper dictionary, unexplained bounded quantity, or notation drift hides a derivation.

## Target-Step Assembly Audit

The current accepted Lemma~\(\ref{lem:step-002-recentered-moment}\) supplies exactly the finite \(k\)-only constant used to choose \(b_k\). Lemma~\(\ref{lem:step-003-scale-ordering}\) then supplies legal constants and endpoint witnesses; Proposition~\(\ref{prop:step-003-group-law}\) converts those witnesses into the exact level law; Lemma~\(\ref{lem:step-003-fine-normalizer}\) and Proposition~\(\ref{prop:step-003-coarse-normalizers}\) prove all normalizer bounds; and Lemma~\(\ref{lem:step-003-endpoint-calibration}\) verifies the tail-calibrated endpoint. These conclusions imply the target without any additional assumption, citation, bridge, or unreviewed local claim.

## Review Rationale

The submitted proof is faithful to the accepted sketch row and setting, its direct dependency is current, and each of its five local units is self-contained and valid. The ceiling endpoints, theorem and auxiliary empty-group cases, exact \(k=2\) count, both geometric open regimes, constant provenance, explicit structural dependence, and final assembly all withstand the required boundary tests. No producer or sketch interface must change, so the status and retry target recorded above are the smallest correct routing decision.
