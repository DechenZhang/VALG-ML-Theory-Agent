# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 2
- Review attempt: 2
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_014/proof.md, SHA-256 fdda03bc4eddf577fe529168c38537b610187f60fd3aac85cededc24b3861572
- Binding setting artifact: perspective_1/idea_3/setting.md, SHA-256 5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0
- Binding sketch artifact: perspective_1/idea_3/proof_sketch.md, SHA-256 6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d
- Binding sketch-review artifact: perspective_1/idea_3/proof_sketch_review.md, SHA-256 9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390, status ACCEPTED
- Accepted step_007 proof/review: SHA-256 7d50f8863b85cbe3e619e20837cf10751abe025ff6621b77c3bd369550eb2113 / 716ad09f4b11505604512aade558813fac938524462328a400846e72ac1c0609, status ACCEPTED
- Accepted step_009 proof/review: SHA-256 9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7 / 009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2, status ACCEPTED
- Accepted step_013 proof/review: SHA-256 fefa0cee0010dfe7b61260f76921fc136af637ef7b1b0f583da10fce3d4ed7c4 / 69086ee1a4d2f3f9cfde241c9b81a6d10e8ab23c7f313d6d846e2865f555d4b4, status ACCEPTED

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-014-finite-prior-ceiling} states the exact taskwise PAC ceiling and finite-prior consequence required by the accepted row. It fixes the same candidate and learner, keeps the good event as \(L_\tau\le1/16\), and includes the strict contrapositive needed for the final failure event.
- Proof validity: With \(p_\tau=\Pr[L_\tau>1/16]\) and \(0\le L_\tau\le1\),
  \[
  \mathbb E L_\tau
  \le \frac1{16}(1-p_\tau)+p_\tau
  =\frac1{16}+\frac{15}{16}p_\tau.
  \]
  Thus \(p_\tau\le1/16\) gives \(\mathbb E L_\tau\le31/256\), and the strict contrapositive is valid. The common experiment is a finite task mixture, so its expectation is exactly \(\sum_{\tau\in\mathcal T}\Lambda(\tau)\mathbb E L_\tau\); averaging the taskwise ceiling gives the same ceiling with no limiting or conditioning interchange.
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-007-pac-conversion} supplies the identical bounded-loss interface. The finite common experiment, legal atom tasks, iid conditional samples, and exact global risk are restated in current notation from the accepted step_013 proof and review, which in turn restate and discharge accepted Lemma~\ref{lem:step-012-ideal-experiment}. The current proof uses exact theorem-style labels and statements; step IDs appear only as hash and workflow provenance, not as mathematical authority.
- Rigor checklist: Each atom risk is measurable and \([0,1]\)-valued in the accepted finite-support experiment. The universal PAC premise applies separately to every deterministic atom. Equality \(L_\tau=1/16\) is on the good side, and equality \(p_\tau=1/16\) yields only the required non-strict expectation ceiling.
- Local adversarial test: A bad-event loss identically equal to one attains the upper envelope used in the calculation, so the bound cannot be invalidated by a more extreme \([0,1]\)-valued loss. If every atom attains the ceiling, the finite average attains but does not exceed it, which is exactly the strictness needed later.
- Contribution to target step: Supplies the exact upper side of the averaged contradiction and the exact expectation-to-event conversion after atom extraction.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-014-rational-gap} consumes exactly the low-mass output of accepted Lemma~\ref{lem:step-009-low-mass} and the common-experiment floor of accepted Proposition~\ref{prop:step-013-tensorization}, at the same candidate, learner, and contradiction branch.
- Proof validity: The strict bounds give
  \[
  1-w_L>\frac{127}{128}>0,
  \qquad
  \frac18-\eta_0>\frac{253}{2048}>0.
  \]
  Positivity permits multiplication without reversing or weakening the strict inequalities. Exact arithmetic gives
  \[
  127\cdot253=32131,\qquad
  128\cdot2048=262144,
  \]
  while \(31/256=31744/262144\), leaving the strict margin \(387/262144>0\).
- Cited-result and assumption audit: The two accepted dependency claims are named, restated with \(w_L,\eta_0,R^\star\), and invoked under their exact local PAC and \(n<c_{\rm low}M\) scope. No bare step_009 or step_013 reference supplies a mathematical premise.
- Rigor checklist: All comparisons are rational and displayed. No decimal estimate, asymptotic absorption, hidden constant, probability conversion, or factor union bound is used. The first floor is already strict, and both defect bounds retain strict slack.
- Local adversarial test: Equality at either relaxed comparison \(w_L=1/128\) or \(\eta_0=3/2048\) would still leave the rational product above \(31/256\), but the accepted inputs are stronger and strict. One active factor suffices because its accepted weight is positive.
- Contribution to target step: Proves that the accepted tensorized exact-risk floor strictly exceeds the PAC expectation ceiling by an explicit positive margin.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-014-deterministic-atom} removes both proof devices requested by the row: the finite task prior and the expectation-only conclusion. It exports one deterministic full-product target and one legal block-mixture distribution with exact masses \(\pi_i=\omega_i\), together with the strict PAC failure event.
- Proof validity: If every positive-mass atom satisfied \(\mathbb E L_\tau\le31/256\), the finite conditioning identity would force \(\mathbb E_\star R^\star\le31/256\). Hence an average strictly above the ceiling contains an atom \(\tau_\star\) with \(\mathbb E L_{\tau_\star}>31/256\). Lemma~\ref{lem:step-014-finite-prior-ceiling} then gives \(\Pr[L_{\tau_\star}>1/16]>1/16\). Full Cartesian target assembly gives \(c^{\tau_\star}\in C\), and
  \[
  D^{\tau_\star}(B)
  =\sum_{i=1}^k\pi_iD_i^{\tau_\star}(B\cap X_i)
  \]
  is a probability measure because the blocks are measurable and disjoint, every factor measure is supported on its block, the weights are nonnegative, and \(\sum_i\pi_i=1\). It satisfies \(D^{\tau_\star}(X_i)=\pi_i\).
- Cited-result and assumption audit: The accepted step_013 artifact explicitly carries the finite product law, full-product target, legal mixture, iid sample, and exact-risk identity in its restatement of Lemma~\ref{lem:step-012-ideal-experiment} and Lemma~\ref{lem:step-013-exact-risk-sum}. Their assumptions and object mappings are checked in the accepted step_013 review. The current proof restates these interfaces before use and cites theorem-style labels throughout.
- Rigor checklist: \(\mathcal T=\operatorname{supp}(\Lambda)\) is finite and consists only of positive-mass atoms. Selection is from a finite deterministic list after the learner algorithm is fixed, not after observing a sample or learner output. The selected sample law and learner kernel are exactly the conditional laws in the common experiment.
- Local adversarial test: Zero-mass task tuples cannot be selected because they are excluded from \(\mathcal T\). A selected factor task may have finite support, but finite support is an allowed witness inside the theorem's unrestricted distribution family and is not promoted to a learner or theorem assumption. Arbitrary coupling among factor predictions is already absorbed by the pointwise exact global-risk identity.
- Contribution to target step: Produces the required deterministic, legal, full-product strict PAC-failure witness.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-014-candidate-closure} proves the exact candidate-wise unrestricted lower conclusion. It quantifies over the same measurable randomized, improper, joint, computationally unbounded replacement-DP learner as the setting and discharges, rather than exports, the temporary hypothesis \(n<c_{\rm low}M_{\oplus}(C)\).
- Proof validity: Under a universal PAC guarantee and \(n<c_{\rm low}M\), accepted Lemma~\ref{lem:step-009-low-mass} supplies \(w_L<1/128\) and a nonempty active set, while accepted Proposition~\ref{prop:step-009-almm-eligibility} checks the exact budgets and both candidate-delta conjuncts. Accepted Proposition~\ref{prop:step-013-tensorization} and Lemma~\ref{lem:step-014-rational-gap} give \(\mathbb E_\star R^\star>31/256\), whereas Lemma~\ref{lem:step-014-finite-prior-ceiling} gives \(\mathbb E_\star R^\star\le31/256\). The contradiction proves the negation of \(n<c_{\rm low}M\), namely \(n\ge c_{\rm low}M\), and Proposition~\ref{prop:step-014-deterministic-atom} supplies the explicit witness on that branch.
- Cited-result and assumption audit: Assumption~\ref{assump:candidate-delta-budget} is cited by its stable setting label. Every dependency and local proof authority is cited by an exact lemma or proposition label. The original defect involving bare step_009 and step_013 authority is absent from the repaired derivation and target-step assembly.
- Rigor checklist: The proof never changes \(n\), \(m_{n,i}\), \(\delta\), \(A_n\), output space, decoder, target class, risk metric, or probability space. Equality in either non-strict delta cap is permitted. At \(n=1\), all logarithmic denominators remain positive. The conclusion uses no uniform-in-candidate or asymptotic upgrade.
- Local adversarial test: With one active factor, positive weight preserves strict tensorization. At \(k=1\), accepted Proposition~\ref{prop:step-013-one-factor-baseline} gives zero overflow and the unreduced strict floor \(>1/8\), which the same atom and bounded-loss argument converts to the exact strict PAC failure event. The inactive one-factor contradiction branch is closed by accepted Lemma~\ref{lem:step-009-low-mass}, whose proof uses the additive VC certificate, so the baseline is not weakened to an expectation-only or finite-support-only surrogate.
- Contribution to target step: Completes the fixed-candidate lower theorem and preserves the exact unrestricted one-factor VC/ALMM baseline.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. The exact PAC ceiling, rational separation, deterministic positive-mass atom extraction, and fixed-candidate logical closure are the four independent obligations and each has a matching named derivation. The finite conditioning identity follows directly from the explicitly defined finite product law and conditional task experiment; legality and exact block masses of the selected mixture are proved inside Proposition~\ref{prop:step-014-deterministic-atom}. Measurability and boundedness are inherited from the accepted finite-task common experiment and the setting's binary-risk convention. Local unit IDs occur only as audit handles; the mathematical prose and assembly rely on theorem-style labels.

## Target Claim Audit

The proof establishes the exact accepted step_014 row. Under one fixed admissible candidate and one unrestricted replacement-\((\varepsilon,\delta)\)-DP learner, the local branch \(n<c_{\rm low}M_{\oplus}(C)\) yields a strict exact-global-risk expectation floor above \(31/256\). Universal PAC gives the opposite ceiling for every deterministic atom. Finite extraction returns a full-product target \(c\in C\) and a legal probability measure \(D\) with \(D(X_i)=\omega_i\) for which
\[
\Pr_{S\sim D_c^n,A_n}
\left[R_D(h_{A_n(S)},c)>\frac1{16}\right]
>\frac1{16}.
\]
Thus every universally PAC learner at an admissible candidate satisfies \(n\ge c_{\rm low}M_{\oplus}(C)\). Quantifiers, strict thresholds, exact risk, learner scope, and candidate-wise horizon all match the setting and sketch.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), finite \(k\), \((d_i,s_i,\pi_i,m_{n,i})_i\), \(M_{\oplus}(C)\), \(\varepsilon\), \(\delta\), \(w_L\), and \(\eta_0\).
- Hidden constants: \(c_{\rm low}\) is the universal constant explicitly fixed by accepted Lemma~\ref{lem:step-009-low-mass}; no new hidden constant is introduced. It is independent of the class, factors, quotient or task-support cardinalities, learner, target, distribution, candidate, and privacy parameters.
- Fixed quantities: the \(1/16\) accuracy and failure thresholds, \(1/8\) factor floor, \(1/128\) low-mass threshold, \(3/2048\) overflow comparison, source constant \(c_\delta\), binary loss, and logarithm conventions.
- Probability mode: taskwise high-probability PAC is converted to a taskwise expectation ceiling, averaged over one finite proof prior, compared to an expectation lower bound under that same prior, and converted back to one deterministic strict failure event. No joint-overflow event or probability-mode upgrade appears.
- Horizon and norm modes: one fixed candidate and its exact budgets; exact distributional binary \(0\)-\(1\) risk. There is no asymptotic, all-time, stopping-time, or uniform-in-candidate claim.
- Admissibility and absorption: Assumption~\ref{assump:candidate-delta-budget} is retained at the actual candidate, including the first \(1/[n\log(n+1)]\) cap and every factor-budget cap, with equality allowed. The complete numerical absorption is the displayed exact margin \(387/262144>0\).
- Baseline reduction: at \(k=1\), zero overflow preserves the accepted strict \(>1/8\) floor and the present bounded-loss/atom bridge restores the exact PAC failure event. No conservative \(\eta_0\) loss, properness restriction, quotient-output restriction, or expectation-only conclusion remains.

## Notation Surface Audit

The public-facing interface is minimal: \(M=M_{\oplus}(C)\), \(\pi_i=\omega_i\), the universal \(c_{\rm low}\), the candidate lower conclusion, and the selected \(c,D\). The finite product law \(\Lambda\), support \(\mathcal T\), atom tasks, and common risk \(R^\star\) are appropriately appendix-local translations of the accepted common experiment. The atom loss \(L_\tau\), bad probability \(p_\tau\), and selected atom \(\tau_\star\) are proof-local and defined before use. Every constant and helper has setting, accepted-dependency, or direct-derivation provenance, and no helper object becomes a theorem-facing assumption.

## Target-Step Assembly Audit

Accepted Lemma~\ref{lem:step-009-low-mass} and Proposition~\ref{prop:step-009-almm-eligibility} supply the same-candidate active-mass and numerical eligibility interfaces. The finite common experiment and exact risk identity are restated from the accepted step_013 dependency through Lemma~\ref{lem:step-012-ideal-experiment} and Lemma~\ref{lem:step-013-exact-risk-sum}; Proposition~\ref{prop:step-013-tensorization} supplies the strict floor, and Proposition~\ref{prop:step-013-one-factor-baseline} supplies the zero-overflow specialization. Lemma~\ref{lem:step-014-rational-gap}, Lemma~\ref{lem:step-014-finite-prior-ceiling}, Proposition~\ref{prop:step-014-deterministic-atom}, and Proposition~\ref{prop:step-014-candidate-closure} then jointly prove the exact target. The assembly uses named theorem-style authorities throughout and contains no missing bridge, bare proof-step authority, local-unit authority, candidate switch, or scope change.

## Review Rationale

ACCEPTED is warranted because all four local units are self-contained relative to the setting, checked restatements, and hash-matched accepted dependencies, and each derivation is valid under its displayed conditions. The repaired proof fully resolves the supplied prior blocker: step IDs remain only in audit metadata, while every mathematical dependency in the local statements, derivations, and assembly is an exact named lemma or proposition with a current-notation restatement. Independent checks confirm the bounded-loss boundary, exact rational margin, finite positive-mass extraction, legal full-product target and mixture, fixed-candidate and delta scope, unrestricted learner quantifiers, assumption provenance, rate modes, and exact \(k=1\) baseline. No producer, dependency, or sketch repair is required, so None is the smallest retry target.
