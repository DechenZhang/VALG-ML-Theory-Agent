# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every fixed \((\mathcal D,h,\theta^{(0)}\in E_r)\), define the best path-feature risk before drawing the SGD sample path,
  \[
  F_{\mathcal D,h}(\theta^{(0)})
  :=\inf_{w\in\mathbb R^{d_{\rm path}}}
  R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}}).
  \]
  Use the path-dependent feasible coefficient supplied by step_004 pointwise and prove
  \[
  F_{\mathcal D,h}(\theta^{(0)})
  \le
  \mathbb E\!\left[
  \mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h})
  \,\middle|\, \theta^{(0)}
  \right]
  \]
  for every \(\theta^{(0)}\in E_r\), with the conditional expectation taken over the fresh iid SGD history. The infimum must remain outside and before this history average.
- Depends on: step_004
- Assumptions used: Primitive assump:fixed-source-witnesses and assump:robust-tube; the accepted exact aggregate/tie identity from step_004; local fixed \(\mathcal D\), \(h\), and \(\theta^{(0)}\in E_r\).
- Technical challenge: A different coefficient vector may be used for each history, while the infimum is over one fixed feature map and is not assumed to attain its value. The comparison must preserve the exact strict-error and tie conventions and the order of conditioning and averaging.
- Intended proof tool or cited result: Pointwise feasible-candidate inequality for an infimum, followed by finite conditional averaging over \(\mathcal D^T\).
- Output target: The conditional best-linear-risk comparison consumed by step_006.
- Rate objective: RO-1; exact conditional risk transfer with no approximation or additional error term.
- Review status in the accepted sketch row: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:fixed-source-witnesses: the finite input domain, target class, horizon \(T\in\mathbb N_{\ge 1}\), exact one-sample all-layer update, latter-half score, fixed tie label \(s_0\), and tie-resolved risks are those of Assumption~\ref{assump:fixed-source-witnesses} and the basic setting. Conditional on fixed \(\mathcal D\) and \(h\), the training inputs are iid from \(\mathcal D\) and their labels are given by \(h\).
  - assump:robust-tube: the static event \(E_r\) and its local condition \(\theta^{(0)}\in E_r\) are available. The probability lower bound for \(E_r\) is not used in this conditional step, and no trajectory or gate property is taken from the primitive assumption.
- Derived invariants supplied by accepted dependencies:
  - Accepted perspective_1/idea_3/proof_steps/step_004/proof.md with matching review.md status ACCEPTED: Proposition~\ref{prop:p1-i3-step004-aggregate} supplies, for every initialization in \(E_r\) and every deterministic labeled history, a finite \(w_\omega\in\mathbb R^{d_{\rm path}}\) such that the latter-half score equals \(\langle w_\omega,\varphi_{\theta^{(0)}}(x)\rangle\) for every evaluation input, with the same \(s_0\)-tie decision even at score zero.
- Local conditional hypotheses:
  - Fix arbitrary \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\theta^{(0)}\in E_r\) before drawing the training tuple \(\mathbf x=(x^{(0)},\ldots,x^{(T-1)})\sim\mathcal D^T\).
  - For each such tuple, use the source-consistent labeled history
    \[
    \omega_h(\mathbf x)
    :=((x^{(0)},h(x^{(0)})),\ldots,(x^{(T-1)},h(x^{(T-1)})))
    \]
    and the exact protocol iterates. Every tuple, including one of zero \(\mathcal D^T\)-probability, is allowed; no likely-history event is assumed.
- Accepted dependency proof/review artifacts:
  - perspective_1/idea_3/proof_steps/step_004/proof.md
  - perspective_1/idea_3/proof_steps/step_004/review.md

The assumptions assump:universal-expected-success and assump:constant-depth are not used here. The event condition \(\theta^{(0)}\in E_r\) is a local conditional hypothesis, while the path coefficient is a generated comparison object supplied by the accepted step_004 result, not a primitive feature-law assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, accepted Proposition~\ref{prop:p1-i3-step004-aggregate}, and fixed \((\mathcal D,h,\theta^{(0)}\in E_r)\), every training tuple \(\mathbf x\in\mathcal X^T\) has a feasible coefficient \(w_{\mathbf x}\) whose path-feature score and source latter-half score agree pointwise; hence their tie-resolved risks are equal. | Converts the exact scalar/tie identity from step_004 into the exact risk identity for each source-consistent history. |
| unit_002 | proposition | Under the same assumptions and Lemma~\ref{lem:p1-i3-step005-pathwise-risk}, the path-independent value \(F_{\mathcal D,h}(\theta^{(0)})=\inf_w R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})\) is at most the conditional \(\mathcal D^T\)-average of the pathwise learner risk, without requiring an attained minimizer or exchanging an infimum with an expectation. | Establishes the exact target-step inequality and exports only the fixed-feature best risk, not a path-dependent optimizer. |

## Cited Result Applications

No external paper theorem is used. The following accepted dependency and elementary facts are restated in the notation of this step.

1. **Accepted exact aggregate dependency (Proposition~\ref{prop:p1-i3-step004-aggregate}).** Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, for every fixed \(\theta^{(0)}\in E_r\) and every deterministic labeled history \(\omega\), define
   \[
   J_T=\{\lceil T/2\rceil,\ldots,T\},
   \qquad
   w_\omega=\sum_{t\in J_T}c(\theta^{(t)}(\omega)).
   \]
   Then
   \[
   A_\omega(x)
   =\langle w_\omega,\varphi_{\theta^{(0)}}(x)\rangle
   \qquad\text{for every }x\in\mathcal X.
   \]
   When the history labels equal \(h\) on their inputs, applying the fixed \(\operatorname{sign}_{s_0}\) to the equal scalars gives identical strict-error indicators, including if the common score is zero. The matching proof and review are accepted; this result is used only as a generated feasible coefficient and exact score identity.
2. **Infimum lower-bound property.** For any nonempty set \(W\), any real-valued function \(q\) on \(W\), and any \(v\in W\), the greatest-lower-bound definition gives
   \[
   \inf_{u\in W}q(u)\le q(v).
   \]
   This assertion does not require the infimum to be attained. Here \(W=\mathbb R^{d_{\rm path}}\) and \(q(w)=R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})\); \(W\) is nonempty, for example because it contains \(w=0\), and \(q\) takes values in \([0,1]\).
3. **Finite conditional averaging.** If a constant \(a\) satisfies \(a\le Z(\mathbf x)\) for every \(\mathbf x\in\mathcal X^T\), then, for any probability mass \(\mathcal D^T\),
   \[
   a
   =a\sum_{\mathbf x\in\mathcal X^T}\mathcal D^T(\mathbf x)
   \le
   \sum_{\mathbf x\in\mathcal X^T}\mathcal D^T(\mathbf x)Z(\mathbf x).
   \]
   This is the conditional expectation inequality used below; the sum is finite because \(\mathcal X\) is finite. It makes no interchange of \(\inf\) and \(\mathbb E\).

## Local Derivation

For fixed \((\mathcal D,h,\theta^{(0)})\), write \(\mathbf x=(x^{(0)},\ldots,x^{(T-1)})\in\mathcal X^T\) and use the source-consistent history \(\omega_h(\mathbf x)\) defined above. Denote by
\[
\theta^{(t)}(\theta^{(0)},\omega_h(\mathbf x))
\]
the exact SGD trajectory generated from \(\theta^{(0)}\) and this history. Let \(w_{\mathbf x}\) be the coefficient vector supplied by Proposition~\ref{prop:p1-i3-step004-aggregate} for this history, and define the corresponding pathwise score and predictor by
\[
\begin{aligned}
A_{\theta^{(0)},\mathbf x}(x)
&:=\sum_{t=\lceil T/2\rceil}^{T}
f_{\theta^{(t)}(\theta^{(0)},\omega_h(\mathbf x))}(x),\\
\widehat h_{\theta^{(0)},\mathbf x}(x)
&:=\operatorname{sign}_{s_0}(A_{\theta^{(0)},\mathbf x}(x)).
\end{aligned}
\]
These are finite-history abbreviations; the feature map remains the initialization-only map \(\varphi_{\theta^{(0)}}\).

### unit_001: lemma

**Lemma (Pathwise exact risk identity).** \label{lem:p1-i3-step005-pathwise-risk}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, accepted Proposition~\ref{prop:p1-i3-step004-aggregate}, and the local conditions \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\theta^{(0)}\in E_r\), for every \(\mathbf x\in\mathcal X^T\) there is a vector \(w_{\mathbf x}\in\mathbb R^{d_{\rm path}}\) such that
\[
\operatorname{sign}_{s_0}(A_{\theta^{(0)},\mathbf x}(x))
=\operatorname{sign}_{s_0}
  (\langle w_{\mathbf x},\varphi_{\theta^{(0)}}(x)\rangle)
\qquad\text{for every }x\in\mathcal X,
\]
and therefore
\[
R_{\mathcal D,h}(w_{\mathbf x},\varphi_{\theta^{(0)}})
=
\mathcal L_{\mathcal D,h}
(\widehat h_{\theta^{(0)},\mathbf x}).
\]

**Proof / justification.** The history \(\omega_h(\mathbf x)\) is deterministic and source-consistent for \(h\). Proposition~\ref{prop:p1-i3-step004-aggregate} therefore gives, for every evaluation input \(x\),
\[
A_{\theta^{(0)},\mathbf x}(x)
=
\langle w_{\mathbf x},\varphi_{\theta^{(0)}}(x)\rangle.
\]
Applying the same fixed function \(\operatorname{sign}_{s_0}\) to equal real numbers gives the displayed prediction equality. Multiplying each prediction by the same \(h(x)\) and testing the identical strict inequality \(<0\) makes the two error indicators equal for every evaluation \(x\); taking probability under the same \(\mathcal D\) yields the risk identity.

If the common score is zero, both signs are exactly the prescribed tie label \(s_0\), so the equality still holds. For \(T=1\), \(J_T=\{1\}\), and the same proposition supplies the single terminal-state coefficient; no empty sum is involved. No coefficient is required to be nonzero, and cancellations among paths or times do not affect scalar equality. \(\square\)

### unit_002: proposition

**Proposition (Conditional infimum-before-expectation comparison).** \label{prop:p1-i3-step005-conditional-comparison}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, Proposition~\ref{prop:p1-i3-step004-aggregate}, and Lemma~\ref{lem:p1-i3-step005-pathwise-risk}, fix \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\theta^{(0)}\in E_r\) before drawing \(\mathbf X\sim\mathcal D^T\). Define
\[
F_{\mathcal D,h}(\theta^{(0)})
:=
\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}}).
\]
Then \(F_{\mathcal D,h}(\theta^{(0)})\in[0,1]\) and
\[
F_{\mathcal D,h}(\theta^{(0)})
\le
\mathbb E_{\mathbf X\sim\mathcal D^T}
\left[
\mathcal L_{\mathcal D,h}
(\widehat h_{\theta^{(0)},\mathbf X})
\right].
\tag{1}
\]
The right side is the conditional expectation of the setting's random learner loss given the fixed initialization \(\theta^{(0)}\), using the independent-sample conditional law. The conclusion does not require an optimizer attaining the infimum.

**Proof / justification.** The risk in the definition of \(F_{\mathcal D,h}(\theta^{(0)})\) lies in \([0,1]\) for every \(w\), because it is a probability. Since \(\mathbb R^{d_{\rm path}}\) is nonempty, its infimum exists as a finite real number in \([0,1]\); it need not be attained.

For each fixed \(\mathbf x\in\mathcal X^T\), Lemma~\ref{lem:p1-i3-step005-pathwise-risk} supplies the feasible vector \(w_{\mathbf x}\). The infimum lower-bound property therefore gives the pointwise inequality
\[
\begin{aligned}
F_{\mathcal D,h}(\theta^{(0)})
&\le
R_{\mathcal D,h}
(w_{\mathbf x},\varphi_{\theta^{(0)}})\\
&=
\mathcal L_{\mathcal D,h}
(\widehat h_{\theta^{(0)},\mathbf x})
\qquad\text{for every }\mathbf x\in\mathcal X^T.
\end{aligned}
\tag{2}
\]
The left side of (2) is fixed before the training tuple is drawn. The vector \(w_{\mathbf x}\) may vary with \(\mathbf x\), and hence with the target labels, but it is used only as a separate feasible comparison point in (2); it is not asserted to be one optimizer shared by all tuples.

Because the training inputs are independent of the fixed initialization and iid from \(\mathcal D\), their conditional law is \(\mathcal D^T\). Writing its mass explicitly and multiplying (2) by the nonnegative mass gives
\[
\begin{aligned}
&\mathbb E_{\mathbf X\sim\mathcal D^T}
\left[
\mathcal L_{\mathcal D,h}
(\widehat h_{\theta^{(0)},\mathbf X})
\right]\\
&\quad=
\sum_{\mathbf x\in\mathcal X^T}
\mathcal D^T(\mathbf x)
\mathcal L_{\mathcal D,h}
(\widehat h_{\theta^{(0)},\mathbf x})\\
&\quad\ge
\sum_{\mathbf x\in\mathcal X^T}
\mathcal D^T(\mathbf x)
F_{\mathcal D,h}(\theta^{(0)})\\
&\quad=
F_{\mathcal D,h}(\theta^{(0)}).
\end{aligned}
\tag{3}
\]
The final equality uses \(\sum_{\mathbf x}\mathcal D^T(\mathbf x)=1\). This is an average of the pointwise inequalities, not an interchange of \(\inf\) and expectation: no expression of the form \(\inf_w\mathbb E[R(w,\varphi)]\) is introduced, and no measurable minimizing selector is needed. Independence gives the displayed finite sum as a version of
\[
\mathbb E\!\left[
\mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h})
\,\middle|\,\theta^{(0)}
\right]
\]
at this fixed initialization. \(\square\)

## Target-Step Assembly

Fix arbitrary \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\theta^{(0)}\in E_r\) before the SGD samples are drawn. For each resulting tuple, accepted Proposition~\ref{prop:p1-i3-step004-aggregate} supplies a finite history-dependent coefficient and exact latter-half scalar equality in the one initialization feature map. Lemma~\ref{lem:p1-i3-step005-pathwise-risk} transfers that scalar equality to equality of the two strict tie-resolved risk indicators. Proposition~\ref{prop:p1-i3-step005-conditional-comparison} then applies the infimum property to each feasible coefficient and averages only after this pointwise comparison, yielding
\[
\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})
\le
\mathbb E\!\left[
\mathcal L_{\mathcal D,h}(\widehat h_{\mathcal D,h})
\,\middle|\,\theta^{(0)}
\right]
\]
for every \(\theta^{(0)}\in E_r\).

The feature map is fixed by initialization and is independent of the sample tuple, while all sample/target dependence remains confined to the feasible coefficient. The argument is exact at zero scores, includes nonattained infima and deterministic or zero-probability histories, and for \(T=1\) uses the single prescribed state \(t=1\). Thus it proves precisely the accepted step_005 claim and exports no stronger path-independent optimizer or unconditional event statement.

## Explicit Rate Audit

- Exposed variables: \(\mathcal D,h,\theta^{(0)},T,d_{\rm path}\), and the conditional risk value; the admissibility condition is \(\theta^{(0)}\in E_r\) with fixed finite \(T\ge1\). The comparison has exact zero representation residual and no additional error term.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mathcal D,h,\theta^{(0)},\mathcal H,n,S,L\), widths, \(T,\eta,r,M_r,G_r,\varepsilon,\delta_0,s_0,\kappa\), or any realized history.
- Fixed quantities: The architecture, initialization-only map rule, protocol conventions, and finite horizon are fixed before arbitrary \(\mathcal D\) and \(h\); within this step \(\mathcal D,h,\theta^{(0)}\) are fixed before the \(\mathcal D^T\) sample average.
- Probability mode: Deterministic pointwise inequality for every finite labeled history conditional on \(\theta^{(0)}\in E_r\), followed by conditional expectation over iid training inputs. No initialization probability conversion or high-probability statement is performed here.
- Horizon mode: Fixed finite horizon, with states indexed by \(t=0,\ldots,T\) and latter-half index set \(J_T=\{\lceil T/2\rceil,\ldots,T\}\); \(T=1\) is included.
- Norm mode: Tie-resolved \(0\)-\(1\) classification risk; the coefficient lies in the Euclidean feature space \(\mathbb R^{d_{\rm path}}\), and no coefficient norm bound is required.
- Admissibility conditions and auxiliary tolerances: \(\theta^{(0)}\in E_r\), finite \(T\ge1\), and the exact accepted step_004 identity. No margin, approximation tolerance, or optimizer-attainment condition is introduced.
- Term absorption or simplification inequalities: None; the risk identity has zero residual, and (3) only averages the exact pointwise inequality.
- Probability conversion: None beyond identifying the finite \(\mathcal D^T\) conditional law; the \(E_r^c\) complement and its \(\delta_0\) charge are deferred to step_006.
- Contribution to any Rate Specialization Bridge: Exports the conditional inequality at exactly the source risk scale for step_006; it contributes no dimension factor, confidence loss, or additive error.
- Baseline-reduction check: At \(T=1\), \(J_T=\{1\}\), and the same one-candidate comparison applies. At a zero aggregate score, both sides use \(s_0\). If the infimum is attained, the proof remains unchanged; if it is not attained, the displayed feasible-point argument still applies. The gate-free \(L=1\) case is inherited exactly through step_004's identity.

## Blockers

None

## Notation And Assumption Notes

- Local notation: \(\mathbf x\in\mathcal X^T\) is a finite training-input tuple; \(\omega_h(\mathbf x)\) is its source-consistent labeled history; \(w_{\mathbf x}\) is the accepted step_004 aggregate coefficient; \(A_{\theta^{(0)},\mathbf x}\) and \(\widehat h_{\theta^{(0)},\mathbf x}\) are finite-history score/predictor abbreviations. These objects are defined from the setting update and are scoped only to this step.
- Surface classification: \(F_{\mathcal D,h}(\theta^{(0)})\) and the conditional inequality are the minimal public-facing output needed by step_006. The tuple, labeled history, generated states, path coefficient, score, and predictor are appendix-local finite-scope objects; no random coefficient is exported as a feature or optimizer. No additional proof-local constant, radius, threshold, event, or helper bound is introduced.
- Constant provenance: \(d_{\rm path}\) and \(\varphi_{\theta^{(0)}}\) come directly from setting.md; \(w_{\mathbf x}\) is a finite sum of accepted step_004 path coefficients; \(F_{\mathcal D,h}\) is the setting-risk infimum. There are no free bounded constants.
- Assumption provenance: assump:fixed-source-witnesses supplies the exact risk/update protocol and iid sample law; assump:robust-tube supplies only the local event condition. The exact aggregate coefficient and score equality are supplied by the accepted step_004 dependency. The pointwise risk comparison and conditional averaging are proved here; no derived trajectory or gate fact is re-assumed.
- Quantifier and law note: \(\theta^{(0)}\) and the initialization-only feature map are fixed before the training tuple. \(\mathcal D\) and \(h\) are arbitrary fixed choices in this conditional statement, and every \(\mathbf x\in\mathcal X^T\) is covered. The finite sum is a canonical version of the conditional expectation because the sample tuple is independent of initialization.
- Tie and degeneracy note: Equality is at the real score level, so \(s_0\) ties, zero path products, cancellations, inactive paths, and any nonattained infimum require no extra margin or selector.
- Diagnostic boundary: The paired global_proof.md and global_proof_review.md were read only after confirming the global review status is ACCEPTED. Their step-relevant planning suggestion was to keep the path-independent infimum on the left of a pointwise feasible-candidate inequality and average afterward. That diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the target claim.
