# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_010/proof.md`
- Reviewed proof SHA-256: `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_001`: `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530` / `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`
  - `step_004`: `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` / `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`
  - `step_009`: `b5c2dd0c3c737d906881e324a6aaacb4d958be8f288106b067a58b980cebbe52` / `71be50c1a5f40c03d5d64dd767a3ba948f2aed385cbdc3375b33ffdd4a5fc5c0`
- Independently checked frozen source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
- Evidence boundary: no `proof_history/` artifact, global diagnostic, assembly artifact, or final-review artifact was used as proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-score-support} states exactly the list-interface sensitivity and finite-effective-domain obligations needed by the accepted row. It expressly does not promote list-coordinate replacement into raw-record adjacency or privacy.
- Proof validity: Replacing one entire list coordinate changes every actual-function occurrence score by at most one, and taking maxima preserves this bound in both directions. The accepted list cap gives \(|\bigcup_iL_i|\le kL\), so adjoining the distinguished symbol \(\perp\) gives at most \(kL+1\) support points and a positive finite exponential-weight normalizer. All-empty lists give score zero.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-001-calibration} supplies the cap and Sparse Sample parameters, accepted Proposition~\ref{prop:step-001-totalization} supplies sanitized total lists, and accepted Lemma~\ref{lem:step-009-legal-state} supplies the actual-function score interface. No generated success event or raw locality fact is assumed.
- Rigor checklist: The maximum-score comparison is valid even for infinite \(H_C\); all nonzero scores occur on the finite union, while outside functions have score zero. Ordered encodings and repeated positions do not alter set-membership scores. At a common adaptive transcript prefix, both executions request the same next stage, but the proof correctly defers the raw-input one-list premise.
- Local adversarial test: One changed list, disjoint replacement lists, all lists empty, one nonempty list, repeated encoded positions, infinite \(H_C\), and formal \(k=2\) all preserve sensitivity and the support bound.
- Contribution to target step: It supplies the exact sensitivity-one query interface and the finite \(kL+1\) support used by the two mechanism calculations.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-abovethreshold} proves one stopped transcript, one simultaneous noise event, legal first selection, and the exact selected-score lower bound. It correctly permits an early false positive when that stage still clears the downstream score margin.
- Proof validity: For \(Z_r\sim\operatorname{Lap}(1/\eta)\), direct integration gives \(\Pr(|Z_r|>t)=e^{-\eta t}\). The union over all \(d+1\) potential queries therefore costs exactly one \(\beta_{\rm AT}\) share. The teacher inequality implies \(\tau_{\rm AT}<k/2\). Hence a `Below` report has \(q_r<k\), every reached score-\(k\) stage reports `Above`, and the accepted score-\(k\) producer prevents exhaustion. At the first `Above`, \(q_{\widehat r}\ge k/2-\tau_{\rm AT}\ge B+\tau_{\rm SS}+2\).
- Cited-result and assumption audit: The frozen Algorithm 2 uses an independent \(\operatorname{Lap}(1/\eta)\) perturbation of each query and no noisy threshold, exactly as restated. The current first-`Above` procedure is a stopped prefix of that process. Lemma 3.2 is restated only for source/interface preflight; no privacy conclusion is consumed here. Accepted Proposition~\ref{prop:step-009-termination} supplies the score-\(k\) stage before mechanism randomness is analyzed.
- Rigor checklist: Pre-sampling all \(d+1\) noises is a valid coupling of the adaptive stopped transcript. The proof uses the correct strict inequality for `Below` and the correct weak threshold for `Above`. No independence across stages is needed for the union bound, and no stagewise success or confidence multiplier is introduced.
- Local adversarial test: An all-empty stage has \(q_r=0\) and cannot pass on the simultaneous event; partially empty tuples remain covered. If the first score-\(k\) stage is stage 0 it is selected immediately. If it is stage \(d\), either a prior safe false positive is selected or stage \(d\) is selected. A false positive with score below \(k\) remains safe because its true score satisfies the full Sparse Sample margin.
- Contribution to target step: It converts the accepted structural score-\(k\) producer into one legal selected tuple with a uniform score certificate.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-010-sparse-output} proves the exact finite exponential-weight tail, separately bounds the failure-symbol mass, and concludes literal selected-list membership without asserting properness.
- Proof validity: The selected score satisfies \(q\ge B+\tau_{\rm SS}+2>0\), so the finite union contains an attained score-\(q\) item. The denominator of the exact Sparse Sample law contains its weight \(e^{\varepsilon_{\rm SS}q}\). Summing at most \(kL+1\) weights below \(q-\tau_{\rm SS}\) yields
  \[
  \Pr(E_{\rm SS}^c\mid\text{selected state})
  \le (kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}
  =\beta_{\rm SS}.
  \]
  The same denominator gives
  \(\Pr(W=\perp)\le e^{-\varepsilon_{\rm SS}(q-B)}\le e^{-2\varepsilon_{\rm SS}}\beta_{\rm SS}/(kL+1)\). Since \(q-\tau_{\rm SS}\ge B+2>B=s(\perp)\), the score-utility event excludes \(\perp\) and forces \(W\) into an actual selected-stage list.
- Cited-result and assumption audit: Frozen Algorithm 1 assigns actual items score \(|\{i:u\in\mathcal L_i\}|\), assigns \(\perp\) score exactly \(B\), and uses weights \(\exp(\varepsilon_s\,\mathrm{score})\) with no factor \(1/2\). Frozen Lemma 3.1 supplies the checked list-level privacy calibration but is not used as a utility shortcut or raw-privacy theorem. All utility inequalities are derived from the displayed finite law.
- Rigor checklist: The bad-set calculation includes both low-score actual items and \(\perp\); the strict score cutoff only strengthens the displayed weak exponential bound. The conditioning is on the single adaptively selected tuple and preceding transcript, after which the Sparse Sample categorical law is exact and fresh. No union over stages or Sparse Sample calls occurs.
- Local adversarial test: One maximum item, many tied maximum items, union size strictly below \(kL\), partially empty lists, an infinite ambient \(H_C\), and an actual item equal in value to \(\bar c_0\) all preserve the tail. The failure symbol remains a distinct support point outside \(H_C\).
- Contribution to target step: It excludes the failure symbol and every low-score outcome with the allocated \(\beta_{\rm SS}\) share, producing an actual possibly improper quotient function.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-010-mechanism-good} assembles the exact conditional mechanism event, actual/nonfallback output, positive producer mark, and unchanged released projection required by the accepted row and downstream consumers.
- Proof validity: Conditional on any fixed realizable sample and partition satisfying the accepted \(E_{\rm good}\) antecedent, Unit 2 fails with probability at most \(\beta_{\rm AT}\). Uniformly over every selected state on that event, Unit 3 fails with conditional probability at most \(\beta_{\rm SS}\). The tower property gives the single ledger \(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\), without multiplying the Sparse Sample charge by \(d+1\). On the event, the terminal output is an exact selected-list item, so the totalization uses actual status rather than fallback status.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-totalization} supplies the exhaustive fallback table. Accepted Lemma~\ref{lem:step-004-occurrence} makes actual status imply a nonempty producer-block occurrence set, accepted Proposition~\ref{prop:step-004-lift} supplies the marked kernel, and accepted Proposition~\ref{prop:step-004-projection} gives exact first-coordinate marginal \(K_C\). These dependency conclusions are used only after actual status is proved locally.
- Rigor checklist: The seven listed fallback classes are all excluded on the mechanism event. An actual sampled function equal to \(\bar c_0\) remains actual and positively marked; value equality does not turn it into fallback. Under the marked lift, \(J\in[k]\) almost surely and \(\bar H\in\mathcal G_J\), while summing out \(J\) returns exactly the released law. No privacy assertion is made for \((\bar H,J)\).
- Local adversarial test: First- and last-stage success, early safe false positives, all-empty and partially empty tuples, \(\perp\), invalid/out-of-support paths, and formal \(k=2\) marking formulas all pass. The accepted teacher inequality actually makes realized \(k=2\) infeasible, so no nonexistent positive-branch path is used. At \(d=0\), this mechanism step is inactive: universally the raw pullback has only \(A_0=K_0\), while the stronger Dirac law is available solely for the setting-defined VC-Lyu arm through accepted Proposition~\ref{prop:step-001-zero}.
- Contribution to target step: It exports the actual selected stage/output and the complete two-share mechanism ledger with exact mark projection.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the four-unit map. List-coordinate sensitivity and finite support are isolated in Unit 1; simultaneous stopped-threshold accuracy and endpoint handling are isolated in Unit 2; the finite exponential tail and failure-symbol exclusion are isolated in Unit 3; and status, confidence, marking, projection, and fallback assembly are isolated in Unit 4. Finite-support maximum attainment, Laplace-tail integration, the tower over one selected state, and finite mark summation are proved within the units where they are used.

The proof uses theorem-style labels in its assembly and does not rely on a unit ID, subsection title, diagnostic, prior review, or archival artifact as mathematical authority. It does not smuggle in raw-record list locality, mechanism privacy, empirical error, population error, or an unconditional source-good event.

## Target Claim Audit

The proof establishes the exact accepted `step_010` claim on the positive-dimensional branch. Accepted `step_009` supplies a literal score-\(k\) current quotient function conditional on its realizable source-good antecedent. The four local results then prove, using fresh mechanism randomness, that one stopped AboveThreshold transcript and exactly one Sparse Sample call return a literal member of \(\bigcup_i\mathcal L_i^{\widehat r}\) except with conditional probability at most \(\beta/2\). Fallback remains defined and is never reclassified as actual.

The source mapping is exact at the interfaces consumed: Algorithm 1's domain, actual-item scores, distinguished \(\perp\), exponent, and support; Lemma 3.1's list cap and threshold premise; Algorithm 2's independent query noise and threshold comparison; and Lemma 3.2's sensitivity-one premise and privacy-only conclusion. The proof derives utility directly and correctly leaves raw locality and privacy to `step_011`.

Assumption provenance is sound. `assump:approximate-dp-regime` is the sole primitive condition used directly. The parameter tuple, teacher margin, list cap, totalization, score-\(k\) producer, actual/fallback transcript status, mark, and projection are accepted derived interfaces. \(E_{\rm AT}\), \(E_{\rm SS}\), \(E_{\rm mech}\), score separation, and actual output membership are derived locally. The theorem remains explicitly conditional on the finite-or-countable measurable evaluation quotient and makes no claim for uncountable quotients or the unrestricted DP-PAC open problem.

## Explicit Rate Audit

This is a quantitative mechanism-confidence step, not a public sample-complexity specialization. Its exposed quantities are \(d,k,L,B,\eta,\varepsilon_{\rm SS},\beta_{\rm AT},\beta_{\rm SS},\tau_{\rm AT},\tau_{\rm SS}\), each inherited as an exact accepted expression in \(d,v,\alpha,\beta,\varepsilon,\delta\). There is no new hidden constant; the inherited source constants remain universal and cannot depend on the class, domain, distribution, sample, partition, lists, stage, event, or output.

The probability mode is conditional high probability over fresh mechanism coins after fixing a realizable sample and partition in \(E_{\rm good}\). The horizon is one stopped transcript of at most \(d+1\) queries and one selected Sparse Sample call. The controlled metric is integer occurrence score and exact categorical support membership, not risk or a statistical norm. Every simplification is displayed through
\[
q_{\widehat r}\ge k/2-\tau_{\rm AT}\ge B+\tau_{\rm SS}+2,
\]
\[
(d+1)e^{-\eta\tau_{\rm AT}}=\beta_{\rm AT},
\qquad
(kL+1)e^{-\varepsilon_{\rm SS}\tau_{\rm SS}}=\beta_{\rm SS}.
\]
No term, stage factor, confidence conversion, structural power, or auxiliary tolerance is hidden. Elimination of \(k,L,B\) remains correctly assigned to `step_014`.

The baseline audit passes. The \(d=0\) arm bypasses the mechanisms and retains the accepted arm-specific no-data Dirac law; generic empty-input kernel promotion yields only \(A_0=K_0\). The formal \(k=2\) dictionary and marked formulas are well-defined, while the accepted teacher inequality transparently rules out realized feasibility at \(k=2\). No claim depends on \(v=d\), finite class cardinality, or the asymptotic small-\(\delta\) schedule.

## Notation Surface Audit

The notation is scoped and classified. The selected stage, mechanism-good event, and actual-output membership are appendix-local downstream interfaces. Generic list tuples, unions, scores, noises, bad support, and component events are proof-local. No new public-facing helper is introduced. Every threshold, score, support size, event, and constant has setting, dependency, source, or local-unit provenance; no alias hides finiteness, boundedness, probability mode, or fallback status.

## Target-Step Assembly Audit

Accepted Step 001 supplies the exact mechanism dictionary, list cap, teacher inequality, stopped procedure, and fallback table. Lemma~\ref{lem:step-010-score-support} proves the finite list interface. Accepted Proposition~\ref{prop:step-009-termination} supplies the score-\(k\) actual function. Proposition~\ref{prop:step-010-abovethreshold} produces a legal selected stage with the full score margin; Lemma~\ref{lem:step-010-sparse-output} converts that margin into actual list membership; and Proposition~\ref{prop:step-010-mechanism-good} performs the tower/ledger and status/mark/projection assembly. Accepted Step 004 then supplies positive producer marking and exact released projection. These named results jointly imply the target without an unstated bridge or changed dependency.

The assembly expressly stops at mechanism utility. It proves no raw or quotient DP, no privacy for the mark, no empirical-error certificate, no population-error guarantee, and no public sample-complexity theorem.

## Review Rationale

`ACCEPTED` with `Smallest Retry Target = None` is the smallest sound decision. The exact proof, setting, sketch, accepted review, three dependency pairs, and frozen source match their pinned hashes. Fresh line-by-line review confirms the source laws, all four local derivations, finite and adaptive probability accounting, actual/fallback and mark status, exact projection, assumption provenance, notation surface, explicit conditional scope, and every requested boundary case. No local proof flaw, dependency flaw, or sketch-interface change remains.
