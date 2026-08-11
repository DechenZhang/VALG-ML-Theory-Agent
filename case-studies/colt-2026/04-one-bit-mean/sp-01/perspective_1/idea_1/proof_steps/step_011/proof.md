# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove bottom/top bias and
  \(\lvert(\mu-c)-\theta(c)\rvert\leq\epsilon/4\).
- Depends on: `step_002`, `step_003`, `step_006`, `step_007`, `step_008`.
- Assumptions used: `assump:moment-class`; derived controls.
- Technical challenge: Same-target transfer at \(\epsilon\) scale.
- Intended proof tool or cited result: Quantizer residual and tail moment.
- Output target: Bias certificate.
- Rate objective: Each residual \(\leq\epsilon/8\).
- Sketch-row review status: `PENDING`; the separate
  `proof_sketch_review.md` acceptance gate records `ACCEPTED` for sketch
  attempt 1.

Throughout, \(\mu=\mu(D)\), and \(\mathbb E_D\) denotes expectation of a
fresh scalar \(X\sim D\) after the localization transcript, and hence its
actual decoder center \(c\), has been fixed.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-domain`: \(k>1\), \(\sigma>0\), and
    \(0<\epsilon\leq c_k\sigma\). The accepted scale dependency fixes
    \(c_k=e^{-1}\), \(\gamma_k=1/8\), and the tail-calibrated \(b_k\).
  - `assump:moment-class`: \(D\in\mathcal D(k,\lambda,\sigma)\), in
    particular \(\mathbb E_D|X-\mu|^k\leq\sigma^k\). This primitive input
    has already been translated to the actual center by the accepted
    `step_002` dependency.
- Accepted dependency artifacts:
  - `proof_steps/step_002/proof.md`, SHA-256
    `f22f51f16d14638bd26f5f83662c33620f142a3b3d1bd167cbb32b982d509c58`,
    and `proof_steps/step_002/review.md`, SHA-256
    `a549919aa08482df95acaf2b6551b14f1da4e0ae2c8301f30a06a654062229e2`,
    whose review status is `ACCEPTED`.
  - `proof_steps/step_003/proof.md`, SHA-256
    `3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf`,
    and `proof_steps/step_003/review.md`, SHA-256
    `b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de`,
    whose review status is `ACCEPTED`.
  - `proof_steps/step_006/proof.md`, SHA-256
    `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58`,
    and `proof_steps/step_006/review.md`, SHA-256
    `df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`,
    whose review status is `ACCEPTED`.
  - `proof_steps/step_007/proof.md`, SHA-256
    `ae20b081db5273b80dd726d07fb34b0f24db20bebd007c973bea2b4a79276498`,
    and `proof_steps/step_007/review.md`, SHA-256
    `6bba1a0d83b472a6d4dfea84753e84dd9bf12264d1c2c0695071db6f0d3f263d`,
    whose review status is `ACCEPTED`.
  - `proof_steps/step_008/proof.md`, SHA-256
    `13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5`,
    and `proof_steps/step_008/review.md`, SHA-256
    `7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1`,
    whose review status is `ACCEPTED`.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\(\ref{lem:step-002-recentered-moment}\) gives, for every
    localization transcript in the generated event
    \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\),
    \[
    \mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k,
    \qquad C_k^{\rm rec}=2^{k-1}(1+50^k).
    \]
  - Accepted Lemma~\(\ref{lem:step-003-endpoint-calibration}\) gives
    \[
    h_0=\frac{\epsilon}{8},
    \qquad
    \overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
    \leq\frac{\epsilon}{8},
    \]
    where
    \[
    \overline C_k^{\rm tail}
    =\frac{11}{3}\left(\frac83\right)^{k-1}C_k^{\rm rec}.
    \]
  - Accepted Proposition~\(\ref{prop:step-006-residual-interface}\) and
    Lemma~\(\ref{lem:step-006-floor-remainder}\) give the exact residual
    decomposition, the scale-\(J\) floor-remainder range, and
    \(|R_0^c(x)|<h_0\).
  - Accepted Lemma~\(\ref{lem:step-007-stable-support}\) gives the exact top
    support \(R_H^c(x)=0\) whenever \(|x-c|\leq3H/8\), including equality.
  - Accepted Proposition~\(\ref{prop:step-008-target-interface}\) gives
    \(\theta(c)=\mathbb E_DT_c(X)\) and the exact signed same-target identity
    \[
    (\mu-c)-\theta(c)
    =\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X).
    \]
- Local conditional hypotheses: None.

The event \(\mathcal E_{\rm loc}\) is an accepted generated event, not a
primitive condition. The deterministic residual bounds hold for every real
\(c\); only the top-moment integration uses the accepted eventwise recentered
moment. Thus the final certificate is uniform over every localization
transcript in \(\mathcal E_{\rm loc}\), with the same actual center in
\(Q_j^c,T_c,R_0^c,R_H^c\), and \(\theta(c)\).

## Local Lemma Map

Atomic step = no. The pointwise top envelope, its localized moment
integration, the bottom residual expectation, and the exact same-target
assembly are distinct nontrivial obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Lemma~\(\ref{lem:step-006-floor-remainder}\), Proposition~\(\ref{prop:step-006-residual-interface}\), and Lemma~\(\ref{lem:step-007-stable-support}\), for every \(c,x\in\mathbb R\), \(\lvert R_H^c(x)\rvert\leq(11/3)\lvert x-c\rvert\mathbf 1\{\lvert x-c\rvert>3H/8\}\). | Converts exact top support and floor geometry into a target-scale pointwise envelope. |
| `unit_002` | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), accepted Lemmas~\(\ref{lem:step-002-recentered-moment}\), \(\ref{lem:step-003-endpoint-calibration}\), and Lemma~\(\ref{lem:step-011-top-envelope}\), every localization transcript in \(\mathcal E_{\rm loc}\) satisfies \(\lvert\mathbb E_D R_H^c(X)\rvert\leq\epsilon/8\). | Proves the top residual bias with the exact tail constant and endpoint calibration. |
| `unit_003` | lemma | Under accepted Lemma~\(\ref{lem:step-006-floor-remainder}\) and Lemma~\(\ref{lem:step-003-endpoint-calibration}\), every real \(c\) satisfies \(\lvert\mathbb E_D R_0^c(X)\rvert\leq\epsilon/8\). | Proves the bottom residual bias without a localization or tail assumption. |
| `unit_004` | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), accepted Proposition~\(\ref{prop:step-008-target-interface}\), and Lemmas~\(\ref{lem:step-011-top-bias}\), \(\ref{lem:step-011-bottom-bias}\), every localization transcript in \(\mathcal E_{\rm loc}\) satisfies \(\lvert(\mu-c)-\theta(c)\rvert\leq\epsilon/4\), with each signed residual separately bounded by \(\epsilon/8\). | Assembles the exact target identity and both residual budgets into the binding bias certificate. |

## Cited Result Applications

No external paper result is used in this step. Every mathematical input below
is a current accepted dependency result or a local result proved below.

### Accepted dependency: actual-center recentered moment

- Source or name: accepted
  Lemma~\(\ref{lem:step-002-recentered-moment}\), validated by the current
  `ACCEPTED` `step_002` review and the proof/review hashes recorded above.
- Restated statement in current notation: for every localization transcript
  in \(\mathcal E_{\rm loc}\), the actual decoder center satisfies
  \[
  \mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k,
  \qquad C_k^{\rm rec}=2^{k-1}(1+50^k).
  \]
- Instantiated objects: the same actual center \(c\), law \(D\), draw \(X\),
  and scale \(\sigma\) used by the residuals in this step.
- Required assumptions and discharge: `assump:moment-class` supplies the
  central \(k\)-moment, while the accepted localization dependency inside
  `step_002` supplies \(|c-\mu|\leq50\sigma\). Its accepted review validates
  that event and actual-center mapping.
- Conclusion used: the eventwise bound on \(\mathbb E_D|X-c|^k\) in
  Lemma~\(\ref{lem:step-011-top-bias}\). No moment about an oracle or surrogate
  center is used.

### Accepted dependency: tail-calibrated endpoint scales

- Source or name: accepted
  Lemmas~\(\ref{lem:step-003-scale-ordering}\) and
  \(\ref{lem:step-003-endpoint-calibration}\), validated by the current
  `ACCEPTED` `step_003` review and the proof/review hashes recorded above.
- Restated statement in current notation: with
  \[
  \gamma_k=\frac18,
  \quad
  \overline C_k^{\rm tail}
  =\frac{11}{3}\left(\frac83\right)^{k-1}C_k^{\rm rec},
  \quad
  b_k=\max\left\{4,
    (8\overline C_k^{\rm tail})^{1/(k-1)}
  \right\},
  \]
  the setting scales obey
  \[
  h_0=\frac\epsilon8,
  \qquad H\geq H_*,
  \qquad
  \overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
  \leq\frac\epsilon8.
  \]
- Instantiated objects: the exact bottom scale \(h_0\) and top scale
  \(H=h_J\) used by \(R_0^c\) and \(R_H^c\).
- Required assumptions and discharge: `assump:parameter-domain` and the
  accepted deterministic constant \(C_k^{\rm rec}\). The accepted dependency
  proves \(H^{k-1}\geq b_k^{k-1}\sigma^k/\epsilon\) and
  \(b_k^{k-1}\geq8\overline C_k^{\rm tail}\).
- Conclusion used: the exact \(\epsilon/8\) endpoint bounds in
  Lemmas~\(\ref{lem:step-011-top-bias}\) and
  \(\ref{lem:step-011-bottom-bias}\).

### Accepted dependency: exact residual and floor interfaces

- Source or name: accepted
  Lemma~\(\ref{lem:step-006-floor-remainder}\) and
  Proposition~\(\ref{prop:step-006-residual-interface}\), validated by the
  current `ACCEPTED` `step_006` review and the proof/review hashes recorded
  above.
- Restated statement in current notation: for every \(c,y\in\mathbb R\),
  \[
  0\leq y-Q_J^c(y)<H,
  \qquad |R_0^c(y)|<h_0,
  \]
  and for every integrable \(X\),
  \[
  (\mu-c)-\mathbb E_DT_c(X)
  =\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X).
  \]
- Instantiated objects: the exact selected top quantizer \(Q_J^c\), bottom
  residual \(R_0^c\), top residual \(R_H^c\), and telescope \(T_c\) at the
  actual center.
- Required assumptions and discharge: selected-quantizer well-definedness and
  positive finite scales were discharged by the accepted dependency chain.
  Integrability follows here from the accepted \(k\)-moment when the top bias
  is used; the bottom residual is bounded directly.
- Conclusion used: the top floor geometry in
  Lemma~\(\ref{lem:step-011-top-envelope}\), and the strict bottom bound in
  Lemma~\(\ref{lem:step-011-bottom-bias}\).

### Accepted dependency: exact top support

- Source or name: accepted
  Lemma~\(\ref{lem:step-007-stable-support}\), validated by the current
  `ACCEPTED` `step_007` review and the proof/review hashes recorded above.
- Restated statement in current notation: for every \(c,x\in\mathbb R\),
  \[
  |x-c|\leq\frac{3H}{8}
  \quad\Longrightarrow\quad R_H^c(x)=0,
  \qquad
  R_H^c(x)=R_H^c(x)
    \mathbf1\left\{|x-c|>\frac{3H}{8}\right\}.
  \]
  Equality at \(|x-c|=3H/8\) is included in the zero region.
- Instantiated objects: the exact top residual and exact scale \(H\) consumed
  by this step, not an asymptotic or truncated surrogate.
- Required assumptions and discharge: the accepted stable-cell margin and
  exact top-residual definition in the dependency chain. No distributional
  support assumption is present.
- Conclusion used: restriction of the pointwise top envelope to the moment
  tail in Lemma~\(\ref{lem:step-011-top-envelope}\).

### Accepted dependency: conditional mean and same-target identity

- Source or name: accepted
  Propositions~\(\ref{prop:step-008-conditional-mean}\) and
  \(\ref{prop:step-008-target-interface}\), validated by the current
  `ACCEPTED` `step_008` review and the proof/review hashes recorded above.
- Restated statement in current notation: for every deterministic center
  \(t\),
  \[
  \theta(t):=\mathbb E_DT_t(X),
  \]
  and for the generated actual center,
  \[
  \mathbb E[Z_i(c)\mid c]=\theta(c),
  \qquad
  (\mu-c)-\theta(c)
  =\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X).
  \]
- Instantiated objects: the same actual \(c\), selected telescope, and two
  residuals appearing in the pointwise dependencies above.
- Required assumptions and discharge: the accepted `step_008` pair discharges
  the refinement/localization independence, inverse-weight legality,
  integrability, and finite conditional-expectation calculation. This step
  consumes only its accepted output and does not reopen that calculation.
- Conclusion used: the exact signed equality in
  Proposition~\(\ref{prop:step-011-bias-certificate}\). Neither residual is
  omitted or replaced by a surrogate target.

### Local-result application register

| Result | Restated conclusion used later | Assumption discharge |
| ------ | ------------------------------- | -------------------- |
| Lemma~\(\ref{lem:step-011-top-envelope}\) | \(|R_H^c(x)|\leq(11/3)|x-c|\mathbf1\{|x-c|>3H/8\}\). | Accepted top floor-remainder and support interfaces; proved in `unit_001`. |
| Lemma~\(\ref{lem:step-011-top-bias}\) | On \(\mathcal E_{\rm loc}\), \(|\mathbb E_D R_H^c(X)|\leq\epsilon/8\). | Accepted actual-center moment, endpoint calibration, and the preceding top envelope; proved in `unit_002`. |
| Lemma~\(\ref{lem:step-011-bottom-bias}\) | For every \(c\), \(|\mathbb E_D R_0^c(X)|\leq\epsilon/8\). | Accepted strict bottom range and \(h_0=\epsilon/8\); proved in `unit_003`. |
| Proposition~\(\ref{prop:step-011-bias-certificate}\) | On \(\mathcal E_{\rm loc}\), \(|(\mu-c)-\theta(c)|\leq\epsilon/4\), with both component bounds exposed. | Accepted exact same-target identity and the two preceding bias lemmas; proved in `unit_004`. |

## Local Derivation

### unit_001: lemma

**Lemma (Top residual pointwise tail envelope).**
\(\label{lem:step-011-top-envelope}\)

Under accepted Lemma~\(\ref{lem:step-006-floor-remainder}\),
Proposition~\(\ref{prop:step-006-residual-interface}\), and
Lemma~\(\ref{lem:step-007-stable-support}\), for every
\(c,x\in\mathbb R\),
\[
\left|R_H^c(x)\right|
\leq\frac{11}{3}|x-c|
\mathbf1\left\{|x-c|>\frac{3H}{8}\right\}.
\]
In particular, the right-hand side is zero at \(x=c\) and at the support
boundary \(|x-c|=3H/8\).

**Proof / justification.** For this proof only, write
\[
\rho_J^c(y):=y-Q_J^c(y).
\]
Accepted Lemma~\(\ref{lem:step-006-floor-remainder}\) gives
\(0\leq\rho_J^c(y)<H\) for every real \(y\). Therefore
\[
\begin{aligned}
R_H^c(x)
&=Q_J^c(x)-Q_J^c(c)\\
&=(x-c)-\bigl(\rho_J^c(x)-\rho_J^c(c)\bigr),
\end{aligned}
\]
and hence, with \(R=|x-c|\),
\[
|R_H^c(x)|
\leq R+|\rho_J^c(x)-\rho_J^c(c)|
<R+H.
\tag{11.1}
\]

If \(R\leq3H/8\), accepted
Lemma~\(\ref{lem:step-007-stable-support}\) gives \(R_H^c(x)=0\),
including equality and both displacement signs. If \(R>3H/8\), then
\(H<8R/3\), so (11.1) yields
\[
|R_H^c(x)|<R+\frac{8R}{3}=\frac{11R}{3}.
\]
Combining the two cases and relaxing the strict active-tail inequality to a
non-strict one proves the displayed supported envelope. At \(R=0\), this also
agrees with the accepted exact zero-displacement identity. \(\square\)

### unit_002: lemma

**Lemma (Localized top-residual bias).**
\(\label{lem:step-011-top-bias}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:moment-class}\), accepted
Lemmas~\(\ref{lem:step-002-recentered-moment}\) and
\(\ref{lem:step-003-endpoint-calibration}\), and
Lemma~\(\ref{lem:step-011-top-envelope}\), every localization transcript in
\(\mathcal E_{\rm loc}\) satisfies
\[
\left|\mathbb E_D R_H^c(X)\right|
\leq\mathbb E_D|R_H^c(X)|
\leq
\overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
\leq\frac{\epsilon}{8},
\]
where
\[
\overline C_k^{\rm tail}
=\frac{11}{3}\left(\frac83\right)^{k-1}C_k^{\rm rec}.
\]

**Proof / justification.** Fix an arbitrary localization transcript in
\(\mathcal E_{\rm loc}\), so its actual decoder output \(c\) is fixed during
\(\mathbb E_D\). Put \(R=|X-c|\). Since \(k>1\) and \(H>0\), on the event
\(R>3H/8\),
\[
R
=\frac{R^k}{R^{k-1}}
\leq\frac{R^k}{(3H/8)^{k-1}}
=\left(\frac83\right)^{k-1}\frac{R^k}{H^{k-1}}.
\]
Multiplying by the tail indicator and applying
Lemma~\(\ref{lem:step-011-top-envelope}\) gives the pointwise estimate
\[
|R_H^c(X)|
\leq\frac{11}{3}\left(\frac83\right)^{k-1}
\frac{|X-c|^k}{H^{k-1}}.
\tag{11.2}
\]
The right-hand side is integrable because accepted
Lemma~\(\ref{lem:step-002-recentered-moment}\) gives, on the fixed generated
event,
\[
\mathbb E_D|X-c|^k\leq C_k^{\rm rec}\sigma^k.
\]
Taking expectations in (11.2) therefore yields
\[
\begin{aligned}
\mathbb E_D|R_H^c(X)|
&\leq\frac{11}{3}\left(\frac83\right)^{k-1}
  \frac{\mathbb E_D|X-c|^k}{H^{k-1}}\\
&\leq\frac{11}{3}\left(\frac83\right)^{k-1}
  C_k^{\rm rec}\frac{\sigma^k}{H^{k-1}}\\
&=\overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}\\
&\leq\frac\epsilon8.
\end{aligned}
\]
The last line is exactly the accepted endpoint calibration. Absolute
integrability now also justifies
\(|\mathbb E_D R_H^c(X)|\leq\mathbb E_D|R_H^c(X)|\). The calculation is
uniform over every transcript in \(\mathcal E_{\rm loc}\) and uses the
moment about its actual center. \(\square\)

### unit_003: lemma

**Lemma (Bottom quantization residual bias).**
\(\label{lem:step-011-bottom-bias}\)

Under accepted Lemma~\(\ref{lem:step-006-floor-remainder}\) and
Lemma~\(\ref{lem:step-003-endpoint-calibration}\), for every real center
\(c\) and every law \(D\),
\[
\left|\mathbb E_D R_0^c(X)\right|
\leq\mathbb E_D|R_0^c(X)|
<h_0=\frac\epsilon8,
\]
and consequently
\(\left|\mathbb E_D R_0^c(X)\right|\leq\epsilon/8\).

**Proof / justification.** Accepted
Lemma~\(\ref{lem:step-006-floor-remainder}\) gives the pointwise strict bound
\[
|R_0^c(x)|<h_0
\qquad\text{for every }x\in\mathbb R.
\]
Thus \(R_0^c(X)\) is integrable for every law \(D\), and monotonicity of
expectation gives
\[
|\mathbb E_D R_0^c(X)|
\leq\mathbb E_D|R_0^c(X)|<h_0.
\]
Accepted Lemma~\(\ref{lem:step-003-endpoint-calibration}\) identifies the
same setting scale as \(h_0=\epsilon/8\). This proof does not require
localization, a support restriction, or a moment bound. At \(X=c\), the
accepted exact zero-displacement identity makes the residual zero rather than
merely smaller than \(h_0\). \(\square\)

### unit_004: proposition

**Proposition (Localized telescope-to-mean bias certificate).**
\(\label{prop:step-011-bias-certificate}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:moment-class}\), accepted
Proposition~\(\ref{prop:step-008-target-interface}\), and
Lemmas~\(\ref{lem:step-011-top-bias}\) and
\(\ref{lem:step-011-bottom-bias}\), every localization transcript in
\(\mathcal E_{\rm loc}\) satisfies
\[
\left|\mathbb E_D R_0^c(X)\right|\leq\frac\epsilon8,
\qquad
\left|\mathbb E_D R_H^c(X)\right|\leq\frac\epsilon8,
\]
and
\[
\boxed{
\left|(\mu-c)-\theta(c)\right|\leq\frac\epsilon4
}.
\]

**Proof / justification.** Fix any localization transcript in
\(\mathcal E_{\rm loc}\). Accepted
Proposition~\(\ref{prop:step-008-target-interface}\) uses the same actual
center throughout and gives the exact signed identity
\[
(\mu-c)-\theta(c)
=\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X).
\tag{11.3}
\]
Lemma~\(\ref{lem:step-011-bottom-bias}\) supplies the first component bound,
and Lemma~\(\ref{lem:step-011-top-bias}\) supplies the second. Applying the
scalar triangle inequality to (11.3) yields
\[
\begin{aligned}
\left|(\mu-c)-\theta(c)\right|
&\leq\left|\mathbb E_D R_0^c(X)\right|
     +\left|\mathbb E_D R_H^c(X)\right|\\
&\leq\frac\epsilon8+\frac\epsilon8
=\frac\epsilon4.
\end{aligned}
\]
Both residuals remain separately visible, so cancellation is not needed for
the bound. This proves the exact binding target on the accepted generated
localization event. \(\square\)

## Target-Step Assembly

Accepted Lemma~\(\ref{lem:step-006-floor-remainder}\) and
Lemma~\(\ref{lem:step-007-stable-support}\) concern the exact selected top
quantizer at the actual decoder center. Lemma~\(\ref{lem:step-011-top-envelope}\)
combines them to prove
\[
|R_H^c(x)|
\leq\frac{11}{3}|x-c|
\mathbf1\left\{|x-c|>\frac{3H}{8}\right\}.
\]
Accepted Lemma~\(\ref{lem:step-002-recentered-moment}\) then controls the
\(k\)-moment about that same actual center on \(\mathcal E_{\rm loc}\).
Lemma~\(\ref{lem:step-011-top-bias}\) composes the supported envelope and
the elementary tail-power inequality to obtain
\[
|\mathbb E_D R_H^c(X)|
\leq\overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
\leq\frac\epsilon8,
\]
where the last inequality is precisely accepted
Lemma~\(\ref{lem:step-003-endpoint-calibration}\).

Independently, accepted Lemma~\(\ref{lem:step-006-floor-remainder}\) gives
\(|R_0^c(x)|<h_0\), and
Lemma~\(\ref{lem:step-011-bottom-bias}\) combines this with the accepted
identity \(h_0=\epsilon/8\) to prove
\[
|\mathbb E_D R_0^c(X)|\leq\frac\epsilon8.
\]

Finally, accepted Proposition~\(\ref{prop:step-008-target-interface}\)
identifies \(\theta(c)\) as the exact conditional pseudo-observation mean and
supplies
\[
(\mu-c)-\theta(c)
=\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X).
\]
Proposition~\(\ref{prop:step-011-bias-certificate}\) applies the triangle
inequality with the two separately proved \(\epsilon/8\) bounds and concludes
\[
\left|(\mu-c)-\theta(c)\right|\leq\frac\epsilon4.
\]
This is the exact `step_011` claim, in absolute value, uniformly for every
accepted localized center and with no unaccounted residual, surrogate center,
support assumption, confidence conversion, or changed rate interface.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\), \(\sigma>0\),
  \(0<\epsilon\leq e^{-1}\sigma\), \(h_0=\epsilon/8\), \(H=h_J\),
  \(D\), \(\mu(D)\), the actual generated center \(c\), and
  \(\theta(c)=\mathbb E_DT_c(X)\). The inherited \(\lambda\) and \(\delta\)
  remain in their setting domains but do not enter this deterministic
  population-bias calculation.
- Hidden constants may depend on: fixed \(k\) only. The two relevant constants
  are explicit:
  \[
  C_k^{\rm rec}=2^{k-1}(1+50^k),
  \qquad
  \overline C_k^{\rm tail}
  =\frac{11}{3}\left(\frac83\right)^{k-1}C_k^{\rm rec}.
  \]
- Hidden constants may not depend on: \(\lambda,\sigma,\epsilon,\delta,D,c\),
  the localization transcript, \(J,H\), or any sample count.
- Fixed quantities: \(k\), the accepted design constants, the law \(D\), and
  one localization transcript are fixed while \(\mathbb E_D\) is taken. No
  asymptotic limit is used.
- Probability mode: the bottom bound is deterministic for every \(c\). The
  top and combined certificates are pathwise for every localization transcript
  in the accepted generated event \(\mathcal E_{\rm loc}\), equivalently
  uniform over the eventwise actual-center interface. This step proves no
  probability for that event and performs no unconditional confidence upgrade.
- Horizon mode: static population bias for the deterministic finite scale
  family; no stopping-time, all-time, or horizon-uniform claim.
- Norm mode: absolute value on \(\mathbb R\).
- Admissibility conditions and auxiliary tolerances: \(k>1\),
  \(0<\epsilon\leq e^{-1}\sigma\), the accepted eventwise recentered moment,
  \(H>0\), \(H\geq H_*\), and the accepted tail-calibrated choice of \(b_k\).
  The generated localization event is not promoted to a primitive assumption.
  No auxiliary tolerance is introduced.
- Term absorption or simplification inequalities:
  \[
  H^{k-1}\geq H_*^{k-1}
  =b_k^{k-1}\frac{\sigma^k}{\epsilon},
  \qquad
  b_k^{k-1}\geq8\overline C_k^{\rm tail},
  \]
  so
  \[
  \overline C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}
  \leq\frac{\overline C_k^{\rm tail}}{b_k^{k-1}}\epsilon
  \leq\frac\epsilon8.
  \]
  Together with \(h_0=\epsilon/8\), the exact final composition is
  \[
  \frac\epsilon8+\frac\epsilon8=\frac\epsilon4.
  \]
- Probability conversion: None. The accepted identity
  \(\mathbb E[Z_i(c)\mid c]=\theta(c)\) is consumed without altering its
  conditioning mode.
- Contribution to any Rate Specialization Bridge: this step exports the
  deterministic \(\epsilon/4\) telescope-to-target margin, with each residual
  at most \(\epsilon/8\), for the later conditional median and unconditional
  PAC steps. It introduces no sample count and changes none of the three
  regime rates.
- Baseline-reduction check: at \(x=c\), accepted zero displacement gives
  \(R_0^c(c)=R_H^c(c)=T_c(c)=0\) exactly. In the specialization
  \(D=\delta_c\) with \(\mu=c\), \(\theta(c)=0\) and both bias terms are
  exactly zero; the proof does not replace this baseline by an
  \(O(\epsilon)\) surrogate.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined public-facing objects:** \(X,D,\mu,k,\sigma,\epsilon\),
  \(h_0,H,Q_J^c,T_c,R_0^c,R_H^c\) retain exactly their meanings from
  `setting.md`. The same actual decoder center \(c\) is used in every object.
- **Accepted public-facing objects:**
  - \(C_k^{\rm rec}=2^{k-1}(1+50^k)\) is inherited from accepted `step_002`.
  - \(\overline C_k^{\rm tail}=(11/3)(8/3)^{k-1}C_k^{\rm rec}\),
    \(\gamma_k=1/8\), \(b_k\), and the endpoint calibration are inherited
    from accepted `step_003`.
  - \(\theta(c)=\mathbb E_DT_c(X)=\mathbb E[Z_i(c)\mid c]\) is inherited
    from accepted `step_008`.
- **New public-facing interface:**
  Proposition~\(\ref{prop:step-011-bias-certificate}\) exports only the two
  component residual bounds and
  \(|(\mu-c)-\theta(c)|\leq\epsilon/4\). It introduces no new public helper
  symbol.
- **Appendix-local results:**
  Lemmas~\(\ref{lem:step-011-top-envelope}\),
  \(\ref{lem:step-011-top-bias}\), and
  \(\ref{lem:step-011-bottom-bias}\) expose the proof obligations separately
  but add no notation to the downstream theorem interface.
- **Proof-local objects:** \(R=|x-c|\) or \(|X-c|\), and
  \(\rho_J^c(y)=y-Q_J^c(y)\), are direct expressions in setting notation used
  only in local derivations. The latter is bounded in \([0,H)\) by accepted
  Lemma~\(\ref{lem:step-006-floor-remainder}\); it is not an assumed bounded
  helper or an exported residual.
- **Constant provenance:** the factor \(11/3=1+8/3\) is proved in
  Lemma~\(\ref{lem:step-011-top-envelope}\) from the exact support threshold
  \(3H/8\) and the top floor-remainder range. The factor
  \((8/3)^{k-1}\) is proved by the displayed tail-power inequality. Their
  product with the accepted \(C_k^{\rm rec}\) is exactly the accepted
  \(\overline C_k^{\rm tail}\); no free constant is introduced.
- **Assumption provenance:** `assump:moment-class` is primitive. The localized
  actual-center moment is an accepted derived invariant from `step_002`; scale
  calibration is accepted from `step_003`; residual identities and the bottom
  floor bound are accepted from `step_006`; top support is accepted from
  `step_007`; and the exact \(\theta(c)\)-to-target identity is accepted from
  `step_008`. The two residual expectation bounds are proved in this step.
- **Event provenance and typing:** \(\mathcal E_{\rm loc}\) is the generated
  accepted event on which the recentered moment holds. The top and final bias
  certificates are eventwise consequences for every realized actual center in
  that event. The proof does not assume localization success theorem-facing,
  does not condition the fresh population law \(D\) on the event, and does not
  claim an unconditional probability statement.
- **Support and boundary audit:** accepted top support includes
  \(|x-c|=3H/8\), so the top residual is zero at the threshold. On the strict
  tail, \(H<8|x-c|/3\) has the correct direction. At \(x=c\), both residuals
  vanish exactly. The proof also permits negative floor cells and arbitrary
  one-sided heavy tails because it uses only absolute displacement and the
  accepted \(k\)-moment.
- **Finite-interchange audit:** no scale sum is interchanged here. The bottom
  residual is uniformly bounded, and (11.2) dominates the top residual by the
  accepted integrable \(|X-c|^k\). Thus every expectation and triangle
  inequality is applied after absolute integrability is established.
- **Dependency boundary:** only the five dispatched accepted dependency
  proof/review pairs were used. No same-step attempt, prior idea branch,
  downstream review, final review, or global diagnostic was read or used.
