# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(\mathcal D\in\Delta(\mathcal X)\) and every
  \(h\in\mathcal H\), prove that there is a deterministic
  \(v\in\mathbb R^n\) such that
  \[
  \mathcal L_{\mathcal D,h}(x\mapsto\langle v,x\rangle)\le 2\varepsilon.
  \]
- Depends on: `step_001` and `step_002`.
- Assumptions used: Primitive `assump:universal-sgd-success` and primitive
  `assump:antipodal-oddness`; the exact score and risk interfaces supplied by
  the accepted dependency artifacts.
- Technical challenge: Invoke the universal premise on the legal
  symmetrized distribution while evaluating the transferred score on the
  original distribution, then remove the trajectory randomness without
  changing the order of \(\mathcal D\) and \(h\) quantifiers.
- Intended proof tool or cited result: The accepted exact linearization and
  factor-two risk-transfer propositions, followed by a finite-domain
  expectation-to-existence argument.
- Output target: A distribution-wise deterministic approximate homogeneous
  separator in the fixed identity coordinates.
- Rate objective: Fixed-horizon conversion of expected source error
  \(\varepsilon\) to deterministic risk \(2\varepsilon\), with the factor
  \(2\) explicit and no hidden term.
- Row-local review status: `PENDING` in the accepted sketch; the sketch-level
  review status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency artifacts:
  - `perspective_3/idea_2/proof_steps/step_001/proof.md` and its
    `review.md`, whose review status is `ACCEPTED`. The exact available claim
    is
    \[
    \forall\omega\ \forall x\in\mathcal X,
    \qquad A_\omega(x)=\langle v_\omega,x\rangle.
    \]
  - `perspective_3/idea_2/proof_steps/step_002/proof.md` and its
    `review.md`, whose review status is `ACCEPTED`. The exact available claim
    is, for every evaluation distribution \(\mathcal D\), target \(h\), and
    realized trajectory \(\omega\),
    \[
    \mathcal L_{\mathcal D,h}(A_\omega)
    \le 2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
    \]
    This claim is pathwise and therefore remains valid when the trajectory was
    generated under \(\mathcal D^{\mathrm{sym}}\) but the left-hand risk is
    evaluated under another fixed \(\mathcal D\).
- Binding setting definitions: \(\mathcal X=\{-1,+1\}^n\),
  \(\mathcal D^-(x)=\mathcal D(-x)\),
  \(\mathcal D^{\mathrm{sym}}=(\mathcal D+\mathcal D^-)/2\), the fixed
  \(\operatorname{sign}_{s_0}\) rule, the strict zero-one loss
  \(\mathcal L_{\mathcal D,h}\), the aggregate \(G_\omega\), and the
  setting-defined vector \(v_\omega\).
- Primitive conditions:
  - `assump:antipodal-oddness`: \(h(-x)=-h(x)\) for every
    \(h\in\mathcal H\) and \(x\in\mathcal X\).
  - `assump:universal-sgd-success`: for every legal distribution \(\widetilde
    \mathcal D\) and every target \(h\), the same fixed learner satisfies
    \[
    \mathbb E_{\omega\sim\mathbb Q_{\widetilde\mathcal D,h}}
    [\mathcal L_{\widetilde\mathcal D,h}(G_\omega)]\le\varepsilon.
    \]
  - The basic setup has \(n\ge1\), so \(\mathcal X\) is finite, and
    \(\mathcal D\) is a probability distribution. These are setting data,
    not additional technical assumptions.
- Derived invariants supplied by accepted dependencies: only the exact score
  identity from `step_001` and the exact pathwise risk transfer from `step_002`.
  No trajectory stability, boundedness, good event, or recurrence property is
  supplied or used.
- Local conditional hypotheses: In the finite-extraction lemma below, an
  expectation bound for a fixed probability law is explicitly a local
  conditional hypothesis. It is discharged by the expected-transfer
  proposition before the target-step assembly. Fixing arbitrary
  \(\mathcal D,h\) is a quantifier instantiation, not a new theorem
  assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic finite-cube setup, every \(\mathcal D\in\Delta(\mathcal X)\) has \(\mathcal D^{\mathrm{sym}}\in\Delta(\mathcal X)\). | Makes the distribution used in the universal premise a legal input. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:antipodal-oddness} and~\ref{assump:universal-sgd-success}, and the accepted exact score/risk propositions, for every \(\mathcal D,h\), \(\mathbb E_{\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}\mathcal L_{\mathcal D,h}(\langle v_\omega,\cdot\rangle)\le2\varepsilon\). | Exports the exact expected-risk interface with factor \(2\). |
| `unit_003` | lemma | For fixed \(\mathcal D,h\), if a probability law on realized trajectories has measurable displayed risk and satisfies \(\mathbb E\mathcal L_{\mathcal D,h}(\langle v_\omega,\cdot\rangle)\le c\) for \(c\ge0\), then one deterministic value \(v\in\mathbb R^n\) has risk at most \(c\). | Removes randomness using the finite set of possible loss values. |

The step is non-atomic because legality of the symmetrized invocation,
expected-risk transfer, and finite expectation extraction are independently
auditable claims.

## Cited Result Applications

| Result | Restated current-notation claim | Assumption discharge and use |
| ------ | -------------------------------- | ---------------------------- |
| Assumption~\ref{assump:universal-sgd-success} | For every \(\widetilde\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\), the fixed architecture, Gaussian initialization, one-sample all-layer SGD protocol, and latter-half aggregate obey \(\mathbb E_{\mathbb Q_{\widetilde\mathcal D,h}}\mathcal L_{\widetilde\mathcal D,h}(G_\omega)\le\varepsilon\). | Lemma~\ref{lem:step-003-sym-law} proves that \(\widetilde\mathcal D=\mathcal D^{\mathrm{sym}}\) is legal. The architecture, \(\eta\), and \(T\) are unchanged; only the fresh sample distribution is instantiated as allowed by the universal quantifier. |
| Accepted Proposition~\ref{prop:step-001-aggregate} from `step_001` | For every realized trajectory and every \(x\), \(A_\omega(x)=\langle v_\omega,x\rangle\). | The accepted dependency proves this directly from the bias-free depth-two ReLU identity. It identifies the transferred score with the fixed identity-coordinate homogeneous score. |
| Accepted Proposition~\ref{prop:step-002-risk-transfer} from `step_002` | For every evaluation \(\mathcal D,h,\omega\), \(\mathcal L_{\mathcal D,h}(A_\omega)\le2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\). | The accepted dependency proves this pathwise under Assumption~\ref{assump:antipodal-oddness}; hence it can be integrated under \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\) even though its left side uses the original \(\mathcal D\). |
| Lemma~\ref{lem:step-003-sym-law} | \(\mathcal D^{\mathrm{sym}}\) is a probability distribution whenever \(\mathcal D\) is. | This is a direct finite-bijection calculation in the current notation and supplies the source-premise domain check. |
| Proposition~\ref{prop:step-003-expected-transfer} | For fixed \(\mathcal D,h\), the expected identity-coordinate risk under \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\) is at most \(2\varepsilon\). | It combines the two accepted dependency claims and the universal premise; its proof appears below and is the only expected-risk interface used by Lemma~\ref{lem:step-003-finite-extraction}. |
| Lemma~\ref{lem:step-003-finite-extraction} | A finite-valued nonnegative risk random variable with expectation at most \(c\) has a realized value at most \(c\). | The finite range is proved from \(|\mathcal X|<\infty\); no probabilistic theorem beyond finite partitioning is invoked. |

No external paper result or unproved theorem is used.

## Local Derivation

### unit_001: lemma

**Lemma (Legality of antipodal symmetrization).**
\label{lem:step-003-sym-law}

Under the basic setting \(\mathcal X=\{-1,+1\}^n\) and for any
\(\mathcal D\in\Delta(\mathcal X)\), the setting-defined distribution
\[
\mathcal D^{\mathrm{sym}}(x)
 :=\frac{\mathcal D(x)+\mathcal D(-x)}2
\]
belongs to \(\Delta(\mathcal X)\).

**Proof.** Each term in the numerator is nonnegative. The map
\(x\mapsto-x\) is a bijection of the finite cube, so
\[
\sum_{x\in\mathcal X}\mathcal D^-(x)
 =\sum_{x\in\mathcal X}\mathcal D(-x)
 =\sum_{z\in\mathcal X}\mathcal D(z)=1.
\]
Therefore
\[
\sum_{x\in\mathcal X}\mathcal D^{\mathrm{sym}}(x)
 =\frac12\left(\sum_x\mathcal D(x)+\sum_x\mathcal D^-(x)\right)=1,
\]
and \(\mathcal D^{\mathrm{sym}}(x)\ge0\) for every \(x\). This is exactly
membership in \(\Delta(\mathcal X)\). \(\square\)

### unit_002: proposition

**Proposition (Expected factor-two identity-coordinate risk transfer).**
\label{prop:step-003-expected-transfer}

Under Assumptions~\ref{assump:antipodal-oddness} and
\ref{assump:universal-sgd-success}, and using the accepted
Propositions~\ref{prop:step-001-aggregate} and
\ref{prop:step-002-risk-transfer}, for every
\(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\omega\sim\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}
 \left[\mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle)\right]
 \le 2\varepsilon.
\]

**Proof.** Fix \(\mathcal D\in\Delta(\mathcal X)\) and
\(h\in\mathcal H\) arbitrarily. By Lemma~\ref{lem:step-003-sym-law},
\(\mathcal D^{\mathrm{sym}}\) is a legal input distribution. Let
\(\omega\) be any realized trajectory in the probability law
\(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\). Proposition~\ref{prop:step-001-aggregate}
gives the pointwise identity
\[
 A_\omega(x)=\langle v_\omega,x\rangle\qquad(x\in\mathcal X),
\]
so the two scores have exactly the same tie-resolved loss under the original
evaluation distribution:
\[
\mathcal L_{\mathcal D,h}(A_\omega)
 =\mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle).
\]
Proposition~\ref{prop:step-002-risk-transfer} is pathwise for every
realized parameter trajectory and every evaluation distribution. Applying it
with this original \(\mathcal D\), the fixed target \(h\), and the same
trajectory gives
\[
\mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle)
 =\mathcal L_{\mathcal D,h}(A_\omega)
 \le 2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
\tag{3.1}
\]
The law of \(\omega\) in (3.1) is exactly the law generated by the learner
when its input distribution is \(\mathcal D^{\mathrm{sym}}\); no law for a
different \(\mathcal D\) is substituted. Both sides are measurable bounded
losses in \([0,1]\), so taking expectation under this same law preserves the
inequality and gives
\[
\begin{aligned}
\mathbb E_{\omega\sim\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}
 \mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle)
&\le 2\mathbb E_{\omega\sim\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}
 \mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\\
&\le 2\varepsilon.
\end{aligned}
\]
The second inequality is exactly Assumption~\ref{assump:universal-sgd-success}
instantiated at the legal pair \((\mathcal D^{\mathrm{sym}},h)\). The factor
\(2\) is not absorbed or rounded. \(\square\)

### unit_003: lemma

**Lemma (Finite-domain expectation-to-existence).**
\label{lem:step-003-finite-extraction}

Under the finite setting domain \(\mathcal X=\{-1,+1\}^n\) and the fixed
tie convention, fix \(\mathcal D\in\Delta(\mathcal X)\) and
\(h\in\mathcal H\). Let \(\mathbb Q\) be any probability law on realized
trajectories for which the setting-defined vector \(v_\omega\) and the
displayed loss are measurable.
If, for a local scalar \(c\ge0\),
\[
\mathbb E_{\omega\sim\mathbb Q}
 \left[\mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle)\right]
 \le c,
\tag{3.2}
\]
then there is one deterministic vector \(v\in\mathbb R^n\) with
\[
\mathcal L_{\mathcal D,h}(x\mapsto\langle v,x\rangle)\le c.
\]

**Proof.** Define the finite subset-sum set
\[
\mathscr R_{\mathcal D}
 :=\left\{\sum_{x\in\mathcal X}\mathcal D(x)b_x:
 (b_x)_{x\in\mathcal X}\in\{0,1\}^{\mathcal X}\right\}.
\]
It has at most \(2^{|\mathcal X|}\) elements. For the random variable
\[
Y(\omega):=
\mathcal L_{\mathcal D,h}(x\mapsto\langle v_\omega,x\rangle),
\]
the loss is a bounded measurable random variable under the stated local
hypothesis. Each indicator in the defining loss is either zero or one, including when
the score is zero. Hence \(Y(\omega)\in\mathscr R_{\mathcal D}\) for every
realized \(\omega\). The finite events
\(\{Y=r\}\), \(r\in\mathscr R_{\mathcal D}\), partition the trajectory
space, and therefore
\[
\mathbb E_{\mathbb Q}Y
 =\sum_{r\in\mathscr R_{\mathcal D}}r\,\mathbb Q[Y=r],
\qquad
\sum_{r\in\mathscr R_{\mathcal D}}\mathbb Q[Y=r]=1.
\tag{3.3}
\]
Suppose, toward a contradiction, that no realized trajectory has
\(Y(\omega)\le c\). Then every value with positive probability in (3.3)
is strictly larger than \(c\). The finite nonempty set
\[
\{r\in\mathscr R_{\mathcal D}:\mathbb Q[Y=r]>0\}
\]
has a minimum \(\gamma\), and the supposition gives \(\gamma>c\). Thus
\(\mathbb E_{\mathbb Q}Y\ge\gamma>c\), contradicting (3.2). Consequently
there is an \(r\le c\) with \(\mathbb Q[Y=r]>0\). That event is nonempty;
choose one realized trajectory \(\omega_0\) in it and set
\(v:=v_{\omega_0}\). Then the displayed deterministic risk bound holds.

This argument includes all boundary values. If \(c=0\), nonnegativity of
the loss and (3.2) force a positive-probability value \(r=0\), so the
selected vector has exactly zero risk. If \(c\ge1\), every loss is already
at most \(1\le c\), and the same conclusion is immediate. No strict
positivity, margin, atom assumption on the trajectory law, or limit argument
is used. \(\square\)

## Target-Step Assembly

If \(\mathcal H=\varnothing\), the target quantifier over \(h\) is vacuous.
Otherwise fix an arbitrary pair in the order
\[
\mathcal D\in\Delta(\mathcal X),\qquad h\in\mathcal H.
\]
Lemma~\ref{lem:step-003-sym-law} makes the distribution
\(\mathcal D^{\mathrm{sym}}\) a legal input to the unchanged learner.
Proposition~\ref{prop:step-003-expected-transfer}, using
Propositions~\ref{prop:step-001-aggregate} and
\ref{prop:step-002-risk-transfer}, then supplies (3.2) with
\[
\mathbb Q=\mathbb Q_{\mathcal D^{\mathrm{sym}},h},qquad c=2\varepsilon.
\]
Lemma~\ref{lem:step-003-finite-extraction} therefore produces one
deterministic \(v=v(\mathcal D,h)\in\mathbb R^n\) satisfying
\[
\forall\mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H\ \exists
v=v(\mathcal D,h),qquad
\mathcal L_{\mathcal D,h}(x\mapsto\langle v,x\rangle)\le2\varepsilon.
\]

The dependence shown in \(v(\mathcal D,h)\) is intentional and is limited to
this intermediate existential interface. The trajectory law used to obtain
it is the legal auxiliary law \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\),
with the architecture, initialization rule, stepsize, horizon, and update
protocol fixed before \(\mathcal D,h\) are chosen. No single trajectory is
claimed to serve multiple pairs, and no trajectory-dependent feature map is
exported: every score above uses the same identity coordinates
\(x\mapsto x\). The only quantitative loss from the source premise is the
exact factor \(2\), supplied by the accepted risk-transfer proposition.

## Explicit Rate Audit

- Exposed variables: \(n,m,S,T,\eta,\varepsilon,\mathcal H,\mathcal D,h\),
  the trajectory law \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\), and the
  exact multiplicative factor \(2\). The selected vector is allowed to be
  pair-dependent at this intermediate step.
- Hidden constants may depend on: Nothing. The only displayed numerical
  factor is exactly \(2\).
- Hidden constants may not depend on: \(n,m,S,T,\eta,\varepsilon\), the
  class, the distribution, the target, initialization, the sample path, or
  any feature-map law.
- Fixed quantities: The architecture, Gaussian initialization convention,
  stepsize, and finite horizon are fixed before the universal choices of
  \(\mathcal D\) and \(h\). For each fixed pair, only the legal sample law
  changes to \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\).
- Probability mode: The source premise and Proposition~\ref{prop:step-003-expected-transfer}
  are in expectation under the explicitly displayed law. Lemma~\ref{lem:step-003-finite-extraction}
  converts that expectation bound to deterministic existence via a
  positive-probability finite-loss event; it makes no high-probability,
  almost-sure, or simultaneous-over-\((\mathcal D,h)\) claim.
- Horizon mode: Fixed finite horizon \(T\), inherited unchanged through
  \(G_\omega\); no all-time or asymptotic upgrade occurs.
- Norm mode: The exact tie-resolved zero-one classification risk from
  `setting.md`; no margin, surrogate norm, or relaxed score metric is used.
- Admissibility conditions and auxiliary tolerances: \(\mathcal D\in\Delta(\mathcal X)\),
  \(h\in\mathcal H\), \(\varepsilon\ge0\), and the two primitive assumptions
  listed above. `assump:high-accuracy` is not needed until `step_006`; no
  auxiliary tolerance is introduced here.
- Term absorption or simplification inequalities: None. The pathwise factor
  \(2\) is retained exactly, and expectation monotonicity gives
  \(\mathbb E Y\le2\mathbb E\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G)\le2\varepsilon\).
- Probability conversion: The finite partition in (3.3) converts an
  expectation bound into existence of one realized vector. The selected
  event has positive probability, but no numerical confidence level is
  asserted or needed.
- Contribution to any Rate Specialization Bridge: Exports the exact
  distribution-wise \(2\varepsilon\) homogeneous-risk interface consumed by
  `step_006`; exactification and the threshold \(2\varepsilon<1/(n+1)\) are
  downstream obligations.
- Baseline-reduction check: At \(\varepsilon=0\), the extracted vector has
  exactly zero \(\mathcal D\)-risk. The source learner, tie convention,
  expectation mode, and finite horizon remain unchanged; the step does not
  replace the later exact representation conclusion by this intermediate
  approximate statement.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathscr R_{\mathcal D}\) is `proof-local` finite subset-sum notation,
  defined directly from the finite cube and the setting distribution. It is
  used only to prove expectation-to-existence and is not exported.
- \(Y(\omega)\) is `proof-local` notation for the displayed identity-coordinate
  risk. The scalar \(c\) in Lemma~\ref{lem:step-003-finite-extraction} is a
  `proof-local` nonnegative threshold; in the target assembly it is exactly
  the setting-derived expression \(2\varepsilon\). No free constant is
  introduced.
- The generic law \(\mathbb Q\), the selected trajectory \(\omega_0\), and
  the minimum \(\gamma\) are `proof-local`. In the target assembly,
  \(\mathbb Q\) is instantiated as the setting-defined law
  \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\); \(\omega_0\) is proved to
  exist in a positive-probability event; and \(\gamma\) is proved to exist as
  the minimum of a finite nonempty set of positive-probability loss values.
- \(\mathcal D^-\), \(\mathcal D^{\mathrm{sym}}\), \(G_\omega\),
  \(A_\omega\), and \(v_\omega\) are setting-defined. The sole
  `public-facing` output is the deterministic vector existence statement
  \(\forall\mathcal D\ \forall h\ \exists v:\mathcal L_{\mathcal D,h}(\langle v,\cdot\rangle)\le2\varepsilon\).
- The generated vector \(v_\omega\) is supplied by the setting and the
  accepted `step_001` identity; no boundedness, stability, recurrence,
  local-validity event, or other generated invariant is assumed. The selected
  deterministic \(v\) is produced by Lemma~\ref{lem:step-003-finite-extraction}
  before downstream exactification consumes it.
- The expectation premise is applied to \(\mathcal D^{\mathrm{sym}}\) only
  after Lemma~\ref{lem:step-003-sym-law} proves legality. Its induced law may
  vary with the fixed pair \((\mathcal D,h)\) exactly as the universal premise
  permits; this does not make the identity feature coordinates or a feature
  law target-dependent.
- No all-time, recursive, or accumulated generated condition is present, so
  closure and entry-state obligations are inapplicable beyond the finite
  probability partition proved in Lemma~\ref{lem:step-003-finite-extraction}.
- The paired `global_proof_review.md` was read and is marked `ACCEPTED`. Its
  step-relevant planning idea was to invoke the universal premise on the legal
  symmetrization and use finite loss values for deterministic extraction. Both
  points were independently proved above. `global_proof.md` was not used as
  evidence, a cited result, an assumption source, or authority to change the
  target claim.
- The branch remains the accepted `material_partial` specialized theorem; no
  unrestricted-depth, non-odd, or lower-accuracy claim is introduced.
