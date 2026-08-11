# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \(e_{A_\omega,h}(x)\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x)\)
  and hence
  \(\mathcal L_{\mathcal D,h}(A_\omega)\le
  2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\).
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:antipodal-oddness` and the fixed tie
  convention.
- Technical challenge: Check every zero-score branch and retain strict source
  error counting.
- Intended proof tool or cited result: Direct two-label/two-tie-sign case
  analysis and the change of variables \(x\mapsto -x\).
- Output target: Exact pair-error transfer with factor \(2\).
- Rate objective: Numerical-error objective; the only loss is the explicit
  factor \(2\).
- Row-local review status: `PENDING` in the accepted sketch; the sketch-level
  review status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency artifacts:
  `perspective_3/idea_2/proof_steps/step_001/proof.md` and
  `perspective_3/idea_2/proof_steps/step_001/review.md`. The review status is
  `ACCEPTED`. The exact available dependency claim is
  \[
  \forall \omega\ \forall x\in\mathcal X,
  \qquad A_\omega(x)=\langle v_\omega,x\rangle.
  \]
- Binding setting definitions: the fixed map \(\operatorname{sign}_{s_0}\),
  the strict source error \(\mathcal L_{\mathcal D,h}\),
  \(A_\omega(x)=G_\omega(x)-G_\omega(-x)\),
  \(\mathcal D^-(x)=\mathcal D(-x)\), and
  \(\mathcal D^{\mathrm{sym}}=(\mathcal D+\mathcal D^-)/2\).
- Primitive conditions:
  - `assump:antipodal-oddness`: for every \(h\in\mathcal H\) and
    \(x\in\mathcal X\), \(h(-x)=-h(x)\).
  - The basic setup has \(s_0,h(x)\in\{-1,+1\}\) and the finite domain
    \(\mathcal X=\{-1,+1\}^n\); these are setting data, not additional
    technical assumptions.
- Derived invariants supplied by accepted dependencies: the exact structural
  identity \(A_\omega=\langle v_\omega,\cdot\rangle\) supplied by accepted
  `step_001`. No stability, boundedness, recurrence, or event membership is
  supplied or needed.
- Local conditional hypotheses: None. The choices of
  \(h,\omega,x,\mathcal D\) below are arbitrary universal quantifiers, not
  extra theorem conditions.

Neither `assump:high-accuracy` nor `assump:universal-sgd-success` is used in
this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:antipodal-oddness}, the fixed tie convention, and the setting definition \(A_\omega(x)=G_\omega(x)-G_\omega(-x)\), for every \(h\in\mathcal H\), realized \(\omega\), and \(x\in\mathcal X\), \(e_{A_\omega,h}(x)\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x)\). | Establishes the exact tie-aware pointwise comparison, including every source-score and antisymmetric-score tie. |
| `unit_002` | proposition | Under Assumption~\ref{assump:antipodal-oddness} and Lemma~\ref{lem:step-002-pair-error}, for every \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and realized \(\omega\), \(\mathcal L_{\mathcal D,h}(A_\omega)\le \mathcal L_{\mathcal D,h}(G_\omega)+\mathcal L_{\mathcal D^-,h}(G_\omega)=2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\). | Integrates the pointwise result and proves the exact factor-two risk transfer by the antipodal change of variables. |

The step is non-atomic because the pointwise tie comparison and the
distributional change of variables are independently auditable claims.

## Cited Result Applications

No external paper result or unproved standard theorem is used.

| Result | Restated current-notation claim | Assumption discharge and use |
| ------ | -------------------------------- | ---------------------------- |
| Accepted Proposition (Exact latter-half aggregate linearization) from `step_001` | For every realized \(\omega\) and every \(x\in\mathcal X\), \(A_\omega(x)=\langle v_\omega,x\rangle\). | The dependency proof derives this from the exact bias-free depth-two architecture and is independently `ACCEPTED`. It identifies the transferred score as the required homogeneous identity-coordinate score. The tie comparison itself uses only the setting definition of \(A_\omega\), so no extra property of the trajectory is imported. |
| Lemma~\ref{lem:step-002-pair-error} | Simultaneous correct classification of \(G_\omega(x)\) and \(G_\omega(-x)\), against the odd labels \(h(x)\) and \(h(-x)\), forces strict correct classification of \(A_\omega(x)\); equivalently, the target pointwise indicator inequality holds. | Assumption~\ref{assump:antipodal-oddness} supplies the opposite label, and the four possible pairs \((s_0,h(x))\) are checked directly from the setting's tie rule. It is used by Proposition~\ref{prop:step-002-risk-transfer}. |
| Proposition~\ref{prop:step-002-risk-transfer} | Integrating the pointwise comparison under \(\mathcal D\), substituting \(z=-x\) in its second term, and using \(\mathcal D^{\mathrm{sym}}=(\mathcal D+\mathcal D^-)/2\) gives the exact factor-two risk inequality. | The negation map is a bijection of the finite cube, and all distributions and losses are the setting-defined objects. This proposition is the exported risk interface for `step_003`. |

## Local Derivation

For any score \(F:\mathcal X\to\mathbb R\), define the pointwise error
indicator
\[
e_{F,h}(z)
:=\mathbf 1\!\left\{
\operatorname{sign}_{s_0}(F(z))h(z)<0
\right\}.
\]
Because both factors inside the product lie in \(\{-1,+1\}\), this indicator
is zero exactly when \(\operatorname{sign}_{s_0}(F(z))=h(z)\), and it is one
exactly when the two labels differ.

### unit_001: lemma

**Lemma (Tie-aware antipodal pair-error comparison).**
\label{lem:step-002-pair-error}

Under Assumption~\ref{assump:antipodal-oddness} and the fixed
\(\operatorname{sign}_{s_0}\) convention, if \(h\in\mathcal H\), \(\omega\)
is any realized trajectory, and \(x\in\mathcal X\), then
\[
e_{A_\omega,h}(x)
\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x),
\qquad
A_\omega(x)=G_\omega(x)-G_\omega(-x).
\]

**Proof.** Fix the stated objects and abbreviate
\[
y:=h(x),\qquad u:=G_\omega(x),\qquad q:=G_\omega(-x).
\]
Assumption~\ref{assump:antipodal-oddness} gives \(h(-x)=-y\). Suppose first
that both source indicators on the right vanish. Thus \(u\) is correctly
classified with label \(y\), while \(q\) is correctly classified with label
\(-y\). Unwinding the tie definition gives all four possible cases:

| \(s_0\) | \(y=h(x)\) | Correctness at \(x\) | Correctness at \(-x\) | Forced sign of \(A_\omega(x)=u-q\) |
| ------- | ------------ | -------------------- | ----------------------- | -------------------------------------- |
| \(+1\) | \(+1\) | \(u\ge 0\) | \(q<0\) | \(u-q>0\), so \(y(u-q)>0\) |
| \(+1\) | \(-1\) | \(u<0\) | \(q\ge 0\) | \(u-q<0\), so \(y(u-q)>0\) |
| \(-1\) | \(+1\) | \(u>0\) | \(q\le 0\) | \(u-q>0\), so \(y(u-q)>0\) |
| \(-1\) | \(-1\) | \(u\le 0\) | \(q>0\) | \(u-q<0\), so \(y(u-q)>0\) |

In every row, one correctness constraint may be weak because its label equals
the tie label, but the opposite-label constraint is strict. Consequently
\(yA_\omega(x)>0\), so \(A_\omega(x)\ne0\) and
\(\operatorname{sign}_{s_0}(A_\omega(x))=y=h(x)\). Hence
\(e_{A_\omega,h}(x)=0\).

This table also exhausts the source-score ties. More explicitly, if \(u=0\)
is correct, then \(y=s_0\), and simultaneous correctness forces \(q\) to have
the strict sign for label \(-s_0\). If \(q=0\) is correct, then
\(-y=s_0\), and simultaneous correctness forces \(u\) to have the strict sign
for label \(-s_0\). If a zero occurs at a point whose target label is not
\(s_0\), its source indicator is already one. If \(u=q=0\), exactly one of
the opposite target labels \(y,-y\) equals \(s_0\), so exactly one of the two
source indicators is one.

It remains to check the possible tie of the antisymmetric score itself. If
\(A_\omega(x)=0\) and \(y=s_0\), then its indicator is zero and the desired
inequality is automatic. If \(A_\omega(x)=0\) and \(y=-s_0\), then its
indicator is one; simultaneous source correctness is impossible because the
four-case calculation would force \(yA_\omega(x)>0\). Therefore at least one
source indicator equals one. Thus the desired inequality also holds in every
\(A_\omega(x)=0\) branch.

Finally, if at least one source indicator is one for any other reason, then
the right-hand side is at least one while the left-hand side is an indicator
and hence at most one. Together with the simultaneous-correctness case, this
proves the pointwise inequality in all cases. \(\square\)

### unit_002: proposition

**Proposition (Exact factor-two risk transfer).**
\label{prop:step-002-risk-transfer}

Under Assumption~\ref{assump:antipodal-oddness} and
Lemma~\ref{lem:step-002-pair-error}, if
\(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\omega\) is
any realized trajectory, then
\[
\mathcal L_{\mathcal D,h}(A_\omega)
\le
\mathcal L_{\mathcal D,h}(G_\omega)
+\mathcal L_{\mathcal D^-,h}(G_\omega)
=2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
\]

**Proof.** Multiply the pointwise inequality of
Lemma~\ref{lem:step-002-pair-error} by \(\mathcal D(x)\) and sum over the
finite cube. By the definition of the source loss,
\[
\begin{aligned}
\mathcal L_{\mathcal D,h}(A_\omega)
&=\sum_{x\in\mathcal X}\mathcal D(x)e_{A_\omega,h}(x)\\
&\le
\sum_{x\in\mathcal X}\mathcal D(x)e_{G_\omega,h}(x)
+\sum_{x\in\mathcal X}\mathcal D(x)e_{G_\omega,h}(-x)\\
&=\mathcal L_{\mathcal D,h}(G_\omega)
+\sum_{x\in\mathcal X}\mathcal D(x)e_{G_\omega,h}(-x).
\end{aligned}
\]
The indicator in the final sum evaluates \(G_\omega(-x)\) against the label
\(h(-x)\), exactly as required by its definition; no label is held fixed
during the substitution. Since \(x\mapsto -x\) is a bijection of
\(\mathcal X\), setting \(z=-x\) gives
\[
\begin{aligned}
\sum_{x\in\mathcal X}\mathcal D(x)e_{G_\omega,h}(-x)
&=\sum_{z\in\mathcal X}\mathcal D(-z)e_{G_\omega,h}(z)\\
&=\sum_{z\in\mathcal X}\mathcal D^-(z)e_{G_\omega,h}(z)\\
&=\mathcal L_{\mathcal D^-,h}(G_\omega).
\end{aligned}
\]
Finally, finite linearity and the setting definition of the symmetrized
distribution yield
\[
\begin{aligned}
2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)
&=2\sum_{z\in\mathcal X}
\frac{\mathcal D(z)+\mathcal D^-(z)}{2}
e_{G_\omega,h}(z)\\
&=\mathcal L_{\mathcal D,h}(G_\omega)
+\mathcal L_{\mathcal D^-,h}(G_\omega).
\end{aligned}
\]
Combining the displays proves the claimed exact factor-two transfer. No
symmetry of \(\mathcal D\) is assumed. \(\square\)

## Target-Step Assembly

Fix arbitrary \(h\in\mathcal H\), realized trajectory \(\omega\), and
\(x\in\mathcal X\). Lemma~\ref{lem:step-002-pair-error} uses only
Assumption~\ref{assump:antipodal-oddness}, the setting's fixed tie rule, and
the definition of \(A_\omega\) to prove
\[
e_{A_\omega,h}(x)
\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x)
\]
for both values of \(s_0\), both values of \(h(x)\), every source-score tie,
and every \(A_\omega(x)=0\) branch. Proposition~\ref{prop:step-002-risk-transfer}
then sums precisely this inequality under an arbitrary original distribution
\(\mathcal D\), performs the bijective substitution \(z=-x\), and invokes the
setting definition of \(\mathcal D^{\mathrm{sym}}\) to obtain
\[
\mathcal L_{\mathcal D,h}(A_\omega)
\le2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
\]

The independently accepted exact-aggregate proposition from `step_001`
identifies this same \(A_\omega\) pointwise with
\(x\mapsto\langle v_\omega,x\rangle\). Thus the pair-error and risk bounds
are attached to the exact homogeneous identity-coordinate score required by
the dependency graph, without changing the target claim or adding a trajectory
condition. These named results prove the complete accepted `step_002` row.

## Explicit Rate Audit

- Exposed variables: \(\mathcal D,h,\omega,s_0\) and the exact multiplicative
  factor \(2\); \(n\) appears only through the finite domain
  \(\mathcal X=\{-1,+1\}^n\). No dependence is hidden.
- Hidden constants may depend on: Nothing; there is no hidden constant.
- Hidden constants may not depend on:
  \(n,m,S,T,\eta,\varepsilon,\mathcal H,\mathcal D,h,s_0\), initialization,
  or the SGD sample path.
- Fixed quantities: For the pointwise comparison, \(h,\omega,x\) are fixed
  arbitrarily. For the risk comparison, \(\mathcal D,h,\omega\) are fixed
  arbitrarily. The source architecture and finite horizon remain exactly those
  in `setting.md`.
- Probability mode: Deterministic and pathwise in \(\omega\). Each
  \(\mathcal L\) is only the exact expectation over its displayed input
  distribution. There is no expectation, conditioning, or high-probability
  statement over initialization or SGD samples in this step.
- Horizon mode: Fixed finite horizon, already contained in the unchanged
  definition of \(G_\omega\); no horizon-uniform or asymptotic upgrade occurs.
- Norm mode: Tie-resolved zero-one classification error with the setting's
  strict error event; no norm, margin, or surrogate loss is introduced.
- Admissibility conditions and auxiliary tolerances: Only primitive
  `assump:antipodal-oddness` and the binding tie convention; no auxiliary
  tolerance is introduced.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. The two source risks satisfy the exact identity
  \[
  \mathcal L_{\mathcal D,h}(G_\omega)
  +\mathcal L_{\mathcal D^-,h}(G_\omega)
  =2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Exports the exact factor
  \(2\) consumed by `step_003` and ultimately by the strict threshold
  \(2\varepsilon<1/(n+1)\). This step performs no expectation-to-existence or
  exactification conversion itself.
- Baseline-reduction check: The transfer is independent of \(\varepsilon\), so
  it remains exact at \(\varepsilon=0\). It also remains valid for either tie
  label, a symmetric or nonsymmetric \(\mathcal D\), zero source scores, and
  \(A_\omega(x)=0\); no weaker zero-defect surrogate replaces the target.

## Blockers

None.

## Notation And Assumption Notes

- The indicator \(e_{F,h}(z)\) is an `appendix-local` abbreviation for the
  integrand already present in the setting definition of
  \(\mathcal L_{\mathcal D,h}(F)\). It is exported only through the exact
  pointwise comparison required by the sketch row.
- The abbreviations \(y=h(x)\), \(u=G_\omega(x)\), and
  \(q=G_\omega(-x)\) are `proof-local`. They are defined directly from
  setting objects and are not exported. No new constant, radius, threshold,
  rate, event, or bounded quantity is introduced.
- The quantities \(G_\omega,A_\omega,v_\omega,\mathcal D^-\), and
  \(\mathcal D^{\mathrm{sym}}\) are setting-defined objects. The
  `public-facing` output of this step is only the exact risk interface
  \(\mathcal L_{\mathcal D,h}(A_\omega)\le
  2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\), together with its
  pointwise pair-error source.
- The generated trajectory is used only to provide a fixed realized score
  \(G_\omega\). No boundedness, stability, recurrence, gate pattern,
  local-validity event, or other generated invariant is assumed. Accepted
  `step_001` supplies the exact derived identity
  \(A_\omega=\langle v_\omega,\cdot\rangle\).
- Assumption~\ref{assump:antipodal-oddness} is a primitive setting condition.
  The simultaneous-correctness implication and every tie conclusion are proved
  inside Lemma~\ref{lem:step-002-pair-error}; none is treated as an assumption.
- The accepted `global_proof.md` was read only after confirming that its paired
  `global_proof_review.md` has controlled status `ACCEPTED`. Its step-relevant
  planning idea was the four-case correctness table followed by the exact
  antipodal change of variables. Both arguments were independently derived in
  the named local units above. The diagnostic was not used as evidence, a
  cited result, an assumption source, or authority to change the target claim.
- This step preserves the source learner, strict error convention, fixed tie
  label, original distribution on the left, and symmetrized distribution on
  the right. It does not claim progress beyond the branch's accepted
  `material_partial` theorem contract.
