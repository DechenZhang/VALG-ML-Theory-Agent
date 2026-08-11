# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For the remaining branch, prove
  \[
  v:=\operatorname{VC}(\mathcal H)<2T.
  \]
- Dependencies: accepted `step_001` proof and review.
- Assumptions used: primitive `assump:source-regime` and primitive `assump:universal-sgd-success`; no derived trajectory hypothesis.
- Technical challenge: maintain the quantifier order through random-target averaging and condition on all information available to the exact SGD learner.
- Intended proof tool: a direct unseen-point no-free-lunch argument on a shattered \(2T\)-point set, together with the elementary Bernoulli inequality proved below.
- Output target: the derived VC certificate \(v<2T\).
- Rate contribution: an exact fixed-horizon \(T\)-sample probability calculation and the strict comparison \(1/4>\varepsilon\).

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:source-regime`: in particular, \(T\in\mathbb Z_{\ge1}\), \(0\le\varepsilon<1/4\), the exact Gaussian initialization is label-independent, the one-sample logistic-SGD update is the one displayed in `setting.md`, the ReLU-kink gradient convention is fixed and makes the recursion single-valued, and the returned classifier uses the fixed tie map \(\operatorname{sgn}_{\tau}\).
  - `assump:universal-sgd-success`: for every fixed \(\mathcal D\in\Delta(\mathcal X)\) and every fixed \(h^\star\in\mathcal H\), the expected risk of that exact \(T\)-step learner is at most \(\varepsilon\).
- Derived invariants supplied by accepted dependencies:
  - The accepted proof and review for `step_001`, specifically Proposition~\ref{prop:step-001-architecture}, establish that on the remaining branch \(\mathcal H\ne\varnothing\), \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\), including the \(L=1\) boundary. Only the identification of the nondegenerate branch and \(T\ge1\) are relevant here; the information argument itself does not use \(d\) or \(S\).
- Local conditional hypotheses: None.

Assumption~\ref{assump:tie-resolved-confident-map} is not used in this step. No property of a realized SGD trajectory is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:source-regime}, if \(Z\subseteq\mathcal X\) has \(2T\) points, \(h_b\in\mathcal H\) realizes each labeling \(b\in\{-1,+1\}^Z\), and the exact learner is run with target \(h_B\), then every iterate and the returned prediction at an independent test point are measurable functions only of the label-independent initialization, ordered training inputs, their sampled labels, and the test input. | Proves that exact SGD has no information channel to an unsampled target bit, including at ReLU kinks. |
| `unit_002` | lemma | Under Assumption~\ref{assump:source-regime} and Lemma~\ref{lem:step-002-label-access}, on the event that the test point was not sampled, its random target label is conditionally fair given the learner's complete information, and the conditional classification error is exactly \(1/2\). | Supplies the theorem-critical unseen-label lower-bound mechanism, including repeated samples and score ties. |
| `unit_003` | lemma | Under Assumption~\ref{assump:source-regime}, for a uniform test point and \(T\) iid uniform training points on a set of size \(2T\), the unseen event has probability \((1-1/(2T))^T\ge1/2\), with equality in the lower bound when \(T=1\). | Gives the exact finite-horizon probability and its boundary case. |
| `unit_004` | proposition | Under Assumption~\ref{assump:source-regime} and Lemmas~\ref{lem:step-002-label-access}, \ref{lem:step-002-unseen-label}, and \ref{lem:step-002-avoidance}, if a \(2T\)-point set is shattered, then the uniform average over its finitely many realized targets of the exact learner's expected risk is at least \(1/4\). | Converts conditional unseen-label error into the exact expected-risk interface of the premise. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:source-regime} and \ref{assump:universal-sgd-success}, the accepted nondegenerate-branch conclusion of Proposition~\ref{prop:step-001-architecture}, and Proposition~\ref{prop:step-002-average-risk}, one has \(\operatorname{VC}(\mathcal H)<2T\). | Selects one fixed target from the finite average and obtains the required contradiction without invoking the premise on a randomized target. |

## Cited Result Applications

No external paper result is used. The elementary inequality needed below is proved inside Lemma~\ref{lem:step-002-avoidance}. The accepted dependency and the local results used later are restated here.

| Result | Restated statement in current notation | Assumption discharge and use |
| ------ | --------------------------------------- | ---------------------------- |
| Accepted Proposition~\ref{prop:step-001-architecture} (First-layer structural bound) | On the remaining branch, \(\mathcal H\ne\varnothing\), \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). | Its accepted proof uses Assumption~\ref{assump:source-regime}; its matching review has status `ACCEPTED`. It identifies the branch in which the present step is invoked. |
| Lemma~\ref{lem:step-002-label-access} (Sampled-label measurability of exact SGD) | In the auxiliary random-label experiment, the exact returned prediction at the test point is measurable with respect to the initialization, ordered training inputs, sampled labels, and test input. | The update in `setting.md` receives the target only through \(h_B(X_t)=B_{X_t}\); the fixed kink convention makes each update single-valued, and the fixed tie convention makes the returned label a deterministic sign. Used by Lemma~\ref{lem:step-002-unseen-label}. |
| Lemma~\ref{lem:step-002-unseen-label} (Fair unseen bit) | Conditional on all information available to the learner, if the test point was not sampled, its label is fair and the conditional mismatch probability is \(1/2\). | The label coordinates are iid fair signs, the initialization is independent of them, and Lemma~\ref{lem:step-002-label-access} fixes the prediction under the conditioning. Used by Proposition~\ref{prop:step-002-average-risk}. |
| Lemma~\ref{lem:step-002-avoidance} (Finite-horizon avoidance) | The unseen event has probability \((1-1/(2T))^T\ge1/2\), including \(T=1\). | Assumption~\ref{assump:source-regime} gives integer \(T\ge1\); iid uniform sampling gives the product, and the scalar inequality is proved by induction. Used by Proposition~\ref{prop:step-002-average-risk}. |
| Proposition~\ref{prop:step-002-average-risk} (Random-label average-risk lower bound) | If \(2T\) points are shattered, the finite uniform average of the exact expected risks of their realizing targets is at least \(1/4\). | The risk/test-point identity uses the same \(\mathcal D_Z\), exact learner, and tie-resolved \(0\)-\(1\) loss as `setting.md`. Used by Proposition~\ref{prop:step-002-vc}. |
| Proposition~\ref{prop:step-002-vc} (VC ceiling from universal exact-SGD success) | Under the two primitive assumptions, \(\operatorname{VC}(\mathcal H)<2T\) on the remaining branch. | Finite maximum-at-least-average selects one deterministic \(h_{b_\star}\), to which Assumption~\ref{assump:universal-sgd-success} applies directly. Used in the target-step assembly and exported to `step_003`. |

## Local Derivation

### unit_001: lemma

**Lemma (Sampled-label measurability of exact SGD).** \(\label{lem:step-002-label-access}\)
Under Assumption~\ref{assump:source-regime}, suppose \(Z\subseteq\mathcal X\) has \(m=2T\) points and, for every \(b\in\{-1,+1\}^{Z}\), a fixed target \(h_b\in\mathcal H\) satisfies \(h_b(z)=b(z)\) for every \(z\in Z\). Let
\[
B=(B_z)_{z\in Z},\qquad B_z\stackrel{\mathrm{iid}}{\sim}\operatorname{Unif}\{-1,+1\},
\]
let \(X_0,\ldots,X_{T-1}\) be iid uniform on \(Z\), let \(X\) be an independent uniform point of \(Z\), and draw the source Gaussian initialization \(\Theta^{(0)}\) independently of \(B,X_0,\ldots,X_{T-1},X\). Run the exact source recursion with target \(h_B\). Then, for every \(0\le t\le T\),
\[
\Theta^{(t)}\text{ is measurable with respect to }
\mathscr F_t:=\sigma\!\left(\Theta^{(0)},(X_s,B_{X_s})_{0\le s<t}\right),
\]
and the returned prediction at \(X\),
\[
\widehat g_B(X):=\widehat h_{\mathcal D_Z,h_B}(X),
\qquad \mathcal D_Z:=\operatorname{Unif}(Z),
\]
is measurable with respect to
\[
\mathscr F:=\sigma\!\left(
X,\Theta^{(0)},(X_s,B_{X_s})_{s=0}^{T-1}
\right).
\]

**Proof.** For a parameter value \(\theta\), an input \(x\in\mathcal X\), and a label \(y\in\{-1,+1\}\), define the exact update map
\[
U(\theta,x,y)
:=\theta-\eta\nabla^{\mathrm{src}}_\theta
\ell\!\left(y f_\theta(x)\right).
\]
All conventions in this expression are fixed before the target is selected. In particular, the fixed source choice at every ReLU kink makes \(U\) single-valued; it cannot encode an unsampled value of the target.

Because every \(X_t\) lies in \(Z\), the target label passed to update \(t\) is exactly
\[
h_B(X_t)=B_{X_t}.
\]
The recursion therefore has the pathwise form
\[
\Theta^{(t+1)}=U\!\left(\Theta^{(t)},X_t,B_{X_t}\right).
\]
At \(t=0\), \(\Theta^{(0)}\) is \(\mathscr F_0\)-measurable. If \(\Theta^{(t)}\) is \(\mathscr F_t\)-measurable, the displayed update shows that \(\Theta^{(t+1)}\) is measurable with respect to
\[
\sigma(\mathscr F_t,X_t,B_{X_t})=\mathscr F_{t+1}.
\]
Induction proves the iterate claim for all \(0\le t\le T\). This induction is pathwise and permits arbitrary repetitions among the \(X_t\)'s.

Consequently every term \(f_{\Theta^{(t)}}(X)\) in
\[
\sum_{t=\lceil T/2\rceil}^{T}f_{\Theta^{(t)}}(X)
\]
is \(\mathscr F\)-measurable. Applying the fixed map \(\operatorname{sgn}_{\tau}\) yields an \(\mathscr F\)-measurable value in \(\{-1,+1\}\), even when the aggregate is zero, because that case returns the fixed label \(\tau\). Thus \(\widehat g_B(X)\) is determined by exactly the information listed in \(\mathscr F\), and no unsampled coordinate of \(B\) enters the recursion or the output. \(\square\)

### unit_002: lemma

**Lemma (Fair unseen bit).** \(\label{lem:step-002-unseen-label}\)
Under Assumption~\ref{assump:source-regime} and the experiment and notation of Lemma~\ref{lem:step-002-label-access}, define
\[
E:=\{X\notin\{X_0,\ldots,X_{T-1}\}\}.
\]
Then, for each \(s\in\{-1,+1\}\),
\[
\Pr(B_X=s\mid\mathscr F)=\frac12
\quad\text{almost surely on }E,
\]
and
\[
\Pr\!\left(\widehat g_B(X)\ne B_X\mid\mathscr F\right)
=\frac12
\quad\text{almost surely on }E.
\]

**Proof.** Condition first on concrete values
\[
X=x,\qquad (X_0,\ldots,X_{T-1})=(x_0,\ldots,x_{T-1}).
\]
On \(E\), \(x\) differs from every \(x_t\). Let \(I=\{x_0,\ldots,x_{T-1}\}\); repetitions merely make \(|I|<T\) and do not add a new label coordinate. The observed label vector \((B_{x_t})_{t=0}^{T-1}\) is measurable with respect to \((B_z)_{z\in I}\). Since the coordinates \((B_z)_{z\in Z}\) are mutually independent fair signs and \(x\notin I\), the coordinate \(B_x\) remains a fair sign after conditioning on every observed label. The initialization \(\Theta^{(0)}\) was drawn independently of the complete label vector, so conditioning on it does not change this conclusion. Averaging this pointwise conditional statement over the conditioned input values gives
\[
\Pr(B_X=s\mid\mathscr F)=\frac12
\quad\text{on }E.
\]
The event \(E\) itself is \(\mathscr F\)-measurable because it depends only on \(X,X_0,\ldots,X_{T-1}\).

By Lemma~\ref{lem:step-002-label-access}, \(\widehat g_B(X)\) is \(\mathscr F\)-measurable and takes one fixed value in \(\{-1,+1\}\) under this conditioning. Therefore, on \(E\),
\[
\begin{aligned}
\Pr\!\left(\widehat g_B(X)\ne B_X\mid\mathscr F\right)
&=\sum_{s\in\{-1,+1\}}
\mathbf 1\{\widehat g_B(X)\ne s\}
\Pr(B_X=s\mid\mathscr F)\\
&=\frac12.
\end{aligned}
\]
If the aggregate score is zero, the first factor still contains the fixed binary value \(\tau\), so the same calculation applies without a no-tie or margin assumption. \(\square\)

### unit_003: lemma

**Lemma (Finite-horizon avoidance).** \(\label{lem:step-002-avoidance}\)
Under Assumption~\ref{assump:source-regime}, if \(X,X_0,\ldots,X_{T-1}\) are independent and uniform on a set \(Z\) of size \(2T\), then
\[
\Pr\!\left[X\notin\{X_0,\ldots,X_{T-1}\}\right]
=\left(1-\frac1{2T}\right)^T
\ge\frac12.
\]
For \(T=1\), both the exact probability and the displayed lower bound equal \(1/2\).

**Proof.** Conditional on any fixed \(X=x\in Z\), each \(X_t\) avoids \(x\) with probability
\[
1-\frac1{|Z|}=1-\frac1{2T}.
\]
The \(T\) training draws are independent, including when their realized values repeat, so multiplication gives
\[
\Pr(E\mid X=x)=\left(1-\frac1{2T}\right)^T.
\]
This expression does not depend on \(x\), proving the equality after averaging over \(X\).

For completeness, for every integer \(k\ge1\) and \(u\in[0,1]\),
\[
(1-u)^k\ge1-ku.
\]
Indeed, equality holds for \(k=1\); if it holds for \(k\), then multiplication by \(1-u\ge0\) gives
\[
(1-u)^{k+1}
\ge(1-ku)(1-u)
=1-(k+1)u+ku^2
\ge1-(k+1)u.
\]
Applying this induction with \(k=T\) and \(u=1/(2T)\in(0,1]\) yields
\[
\left(1-\frac1{2T}\right)^T
\ge1-\frac{T}{2T}=\frac12.
\]
When \(T=1\), the exact product is \(1-1/2=1/2\), so the boundary case incurs no slack. \(\square\)

### unit_004: proposition

**Proposition (Random-label average-risk lower bound).** \(\label{prop:step-002-average-risk}\)
Under Assumption~\ref{assump:source-regime} and Lemmas~\ref{lem:step-002-label-access}, \ref{lem:step-002-unseen-label}, and \ref{lem:step-002-avoidance}, if \(Z\subseteq\mathcal X\) has \(2T\) points and every labeling \(b\in\{-1,+1\}^Z\) has a fixed representative \(h_b\in\mathcal H\) with \(h_b|_Z=b\), then, for \(\mathcal D_Z=\operatorname{Unif}(Z)\),
\[
2^{-2T}\sum_{b\in\{-1,+1\}^Z}
\mathbb E_{\Theta^{(0)},X_{0:T-1}\stackrel{\mathrm{iid}}{\sim}\mathcal D_Z}
\!\left[
\mathcal L_{\mathcal D_Z,h_b}
(\widehat h_{\mathcal D_Z,h_b})
\right]
\ge\frac14.
\]

**Proof.** In the joint experiment of Lemma~\ref{lem:step-002-label-access}, condition on \(B=b\), the initialization, and the ordered training sample. The independent point \(X\sim\mathcal D_Z\) converts the population risk into an indicator expectation. Since \(X\in Z\) and \(h_b|_Z=b\),
\[
\mathcal L_{\mathcal D_Z,h_b}(\widehat h_{\mathcal D_Z,h_b})
=\mathbb E_X\!\left[
\mathbf 1\{\widehat h_{\mathcal D_Z,h_b}(X)\ne b(X)\}
\,\middle|\,
b,\Theta^{(0)},X_{0:T-1}
\right].
\]
Taking expectation over the uniform labeling \(B\), initialization, and training sample, and using that \(B\) has exactly \(2^{2T}\) equiprobable values, gives the exact identity
\[
\begin{aligned}
&2^{-2T}\sum_{b\in\{-1,+1\}^Z}
\mathbb E_{\Theta^{(0)},X_{0:T-1}}
\!\left[
\mathcal L_{\mathcal D_Z,h_b}
(\widehat h_{\mathcal D_Z,h_b})
\right]\\
&\hspace{35mm}
=\Pr\!\left[\widehat g_B(X)\ne B_X\right].
\end{aligned}
\]

Because \(E\in\mathscr F\), the tower property and Lemma~\ref{lem:step-002-unseen-label} yield
\[
\begin{aligned}
\Pr\!\left[\widehat g_B(X)\ne B_X\right]
&\ge
\mathbb E\!\left[
\mathbf 1_E\mathbf 1\{\widehat g_B(X)\ne B_X\}
\right]\\
&=\mathbb E\!\left[
\mathbf 1_E
\Pr\!\left(\widehat g_B(X)\ne B_X\mid\mathscr F\right)
\right]\\
&=\frac12\Pr(E).
\end{aligned}
\]
Lemma~\ref{lem:step-002-avoidance} gives \(\Pr(E)\ge1/2\), and hence the finite average is at least \(1/4\). At \(T=1\), \(\Pr(E)=1/2\) exactly, so this argument still gives the exact lower bound \(1/4\). \(\square\)

### unit_005: proposition

**Proposition (VC ceiling from universal exact-SGD success).** \(\label{prop:step-002-vc}\)
Under Assumptions~\ref{assump:source-regime} and \ref{assump:universal-sgd-success}, and on the remaining branch identified by accepted Proposition~\ref{prop:step-001-architecture},
\[
\operatorname{VC}(\mathcal H)<2T.
\]

**Proof.** Suppose instead that \(\operatorname{VC}(\mathcal H)\ge2T\). Then there is a set \(Z\subseteq\mathcal X\) of exactly \(2T\) points shattered by \(\mathcal H\). For each of the finitely many \(b\in\{-1,+1\}^Z\), shattering supplies at least one \(h\in\mathcal H\) with \(h|_Z=b\). Fix one such representative and call it \(h_b\). This choice is deterministic and is made once for every \(b\).

For each fixed labeling \(b\), define
\[
R_b
:=
\mathbb E_{\Theta^{(0)},X_{0:T-1}\stackrel{\mathrm{iid}}{\sim}\mathcal D_Z}
\!\left[
\mathcal L_{\mathcal D_Z,h_b}
(\widehat h_{\mathcal D_Z,h_b})
\right],
\qquad
\mathcal D_Z=\operatorname{Unif}(Z).
\]
Proposition~\ref{prop:step-002-average-risk} proves
\[
2^{-2T}\sum_{b\in\{-1,+1\}^Z}R_b\ge\frac14.
\]
This is an average over a finite set, so at least one fixed labeling \(b_\star\) satisfies
\[
R_{b_\star}\ge\frac14.
\]
The auxiliary random labeling used to establish the average is now gone: \(\mathcal D_Z\) and \(h_{b_\star}\in\mathcal H\) are fixed, and \(R_{b_\star}\) averages only over the exact Gaussian initialization and the \(T\) iid training draws specified in `setting.md`.

The architecture, step size \(\eta\), and horizon \(T\) were fixed before this witness distribution and target were chosen. Therefore Assumption~\ref{assump:universal-sgd-success} applies directly to this same fixed pair \((\mathcal D_Z,h_{b_\star})\) and the same exact learner, giving
\[
R_{b_\star}\le\varepsilon<\frac14.
\]
This contradicts \(R_{b_\star}\ge1/4\). Thus no \(2T\)-point subset of \(\mathcal X\) is shattered, and \(\operatorname{VC}(\mathcal H)<2T\). When \(T=1\), the lower bound remains \(1/4\) and the strict assumption \(\varepsilon<1/4\) gives the same contradiction. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-architecture} places the proof on the required nondegenerate branch. Lemma~\ref{lem:step-002-label-access} proves from the exact update and fixed ReLU-kink convention that the learner's entire state and tie-resolved prediction use only the sampled target labels. Lemma~\ref{lem:step-002-unseen-label} then proves that an unsampled test label is conditionally fair and incurs conditional error exactly \(1/2\), including for repeated training inputs and a zero aggregate score. Lemma~\ref{lem:step-002-avoidance} proves the exact event probability
\[
\left(1-\frac1{2T}\right)^T\ge\frac12
\]
and checks \(T=1\). Proposition~\ref{prop:step-002-average-risk} composes these facts in the exact expected-risk interface to obtain a finite target average at least \(1/4\). Finally, Proposition~\ref{prop:step-002-vc} selects one fixed target from that finite average and contradicts Assumption~\ref{assump:universal-sgd-success} using \(\varepsilon<1/4\). Hence the exact target-step output is
\[
v=\operatorname{VC}(\mathcal H)<2T.
\]

## Explicit Rate Audit

- Exposed variables: The step exposes the integer horizon \(T\), the threshold \(\varepsilon\), and the structural output \(v=\operatorname{VC}(\mathcal H)\). The auxiliary shattered-set size is exactly \(2T\).
- Hidden constants may depend on: Nothing. The numerical factors \(1/2\) and \(1/4\) are explicit.
- Hidden constants may not depend on: \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), the shattered set, the selected targets, or any distribution.
- Fixed quantities: The architecture, \(\eta\), and \(T\) are fixed before choosing the witness distribution \(\mathcal D_Z\) and the eventual fixed target \(h_{b_\star}\), exactly as required by the universal premise.
- Probability mode: The premise and contradiction use expectation over the exact Gaussian initialization and \(T\) iid training samples. The random labeling and independent test point are finite auxiliary averaging devices; they are eliminated before the universal premise is invoked. The exported VC inequality is deterministic.
- Horizon mode: Fixed finite horizon \(T\). There is no uniform-in-time, stopping-time, or asymptotic claim.
- Norm mode: Exact tie-resolved binary classification error \(\mathcal L_{\mathcal D,h}\), followed by the deterministic combinatorial quantity \(\operatorname{VC}(\mathcal H)\); no surrogate loss, margin, or approximation norm is substituted.
- Admissibility conditions and auxiliary tolerances: \(T\in\mathbb Z_{\ge1}\) and \(0\le\varepsilon<1/4\). There are no auxiliary tolerances.
- Term absorption or simplification inequalities:
  \[
  \Pr(E)=\left(1-\frac1{2T}\right)^T
  \ge1-\frac{T}{2T}=\frac12,
  \qquad
  \frac12\Pr(E)\ge\frac14>\varepsilon.
  \]
- Probability conversion: Conditional error \(1/2\) on \(E\) is integrated to an average risk at least \(1/4\); finite maximum-at-least-average then selects one fixed target with no confidence loss or randomized-target premise.
- Contribution to any Rate Specialization Bridge: The public-facing export \(v<2T\) is consumed by `step_003` to control \(\lvert\mathcal H\rvert\) and remove it from the eventual \(7TSd\) bound. This step performs no polynomial specialization and introduces no \(n\)- or \(\eta\)-dependence.
- Baseline-reduction check: At \(T=1\), the unseen probability is exactly \(1/2\), the risk lower bound is exactly \(1/4\), and strict \(\varepsilon<1/4\) preserves the same conclusion \(v<2\). Repeated samples, arbitrary Gaussian initialization values, ReLU kinks under the fixed convention, and zero aggregate scores do not weaken the bound.

## Blockers

None.

## Notation And Assumption Notes

- The only `public-facing` object introduced by this step is \(v=\operatorname{VC}(\mathcal H)\), with exported conclusion \(v<2T\).
- The named mathematical results are `appendix-local`. The set \(Z\), its size \(m=2T\), the uniform distribution \(\mathcal D_Z\), the representative targets \(h_b\), the risks \(R_b\), and the selected target \(h_{b_\star}\) are `proof-local`. Their existence is proved from the temporary contradiction hypothesis that \(Z\) is shattered; none is an assumption or downstream interface.
- The auxiliary random labeling \(B\), initialization \(\Theta^{(0)}\), ordered training inputs \(X_0,\ldots,X_{T-1}\), independent test point \(X\), exact-trajectory variables \(\Theta^{(t)}\), returned-label abbreviation \(\widehat g_B\), sigma-fields \(\mathscr F_t,\mathscr F\), distinct sampled-index set \(I\), and unseen event \(E\) are `proof-local`. Their joint law is defined explicitly from setting quantities and independent auxiliary draws.
- The constants \(m=2T\), \(1/2\), and \(1/4\) are directly defined from the setting horizon or are numerical. The event probability and all inequalities involving them are proved by Lemmas~\ref{lem:step-002-unseen-label} and \ref{lem:step-002-avoidance}; no free bounded quantity or hidden constant is introduced.
- The event \(E\), iterate measurability, unseen-label fairness, and average-risk lower bound are generated facts proved in this step. None is treated as a primitive condition, local conditional hypothesis, stability invariant, or trajectory assumption.
- `assump:source-regime` and `assump:universal-sgd-success` are primitive theorem conditions. Accepted Proposition~\ref{prop:step-001-architecture} supplies derived branch facts. There are no local conditional hypotheses, and Assumption~\ref{assump:tie-resolved-confident-map} is not used.
- The exact source conventions are preserved: the initialization is independent of target labels; each update sees \(h_B(X_t)\) only through the sampled scalar \(B_{X_t}\); the fixed ReLU-kink selection makes the update path single-valued; the latter-half aggregate is unchanged; and \(\operatorname{sgn}_{\tau}(0)=\tau\) is a fixed binary output. Thus the produced risk is the exact object consumed by Assumption~\ref{assump:universal-sgd-success}.
- The relevant G2 section of `global_proof.md` was read only after confirming that the paired `global_proof_review.md` has status `ACCEPTED`. Its recommendation to expose the conditioning sigma-field, repeated-sample handling, \(T=1\) calculation, and finite target selection was used only for planning. Neither global artifact is used as proof evidence, a cited result, an assumption source, or authority to change the accepted target claim.
