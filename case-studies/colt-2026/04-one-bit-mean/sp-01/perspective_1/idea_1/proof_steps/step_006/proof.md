# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove exact telescope, residual decomposition, \(\lvert R_0^c\rvert<h_0\), and exact \(x=c\) specialization.
- Depends on: `step_004`.
- Assumptions used: None beyond definitions.
- Technical challenge: Retain both residuals.
- Intended proof tool or cited result: Finite algebraic telescope.
- Output target: Telescope/residual interface.
- Rate objective: Expose all bias terms.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: None beyond the domains built into the setting definitions. In particular, every scale \(h_j\) is positive and \(J\) is a finite integer. No probabilistic event, moment bound, digit-moment claim, or inactivity claim is used.
- Accepted dependencies: The current accepted `step_004` pair: `perspective_1/idea_1/proof_steps/step_004/proof.md` (SHA-256 `5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153`) and `perspective_1/idea_1/proof_steps/step_004/review.md` (SHA-256 `e1cb7b1487f0fc30985da9c01fd7e6424a1805f54d210ba3bd400bf733093d25`, status `ACCEPTED`). The only dependency conclusion used is that, for every real \(c\) and every \(0\leq j\leq J\), the selector \(a_j(c)\) exists uniquely, so the selected quantizer \(Q_j^c=Q_{j,a_j(c)}\) is well defined. The stronger cell-margin and measurability conclusions are available but are not needed for the algebra below.
- Derived invariants supplied by accepted dependencies: Well-defined stable selectors and selected quantizers at all setting scales, as just stated. No generated event or trajectory invariant is involved.
- Local conditional hypotheses: Only the expectation-level export in Proposition~\ref{prop:step-006-residual-interface} additionally considers an arbitrary integrable real random variable \(X\). This is not used to prove the unconditional pointwise target; it merely records the exact signed bias interface available whenever a downstream step has established integrability.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the setting definitions and the accepted stable-selector certificate from `step_004`, for every \(c,x\in\mathbb R\), the finite centered digit sum satisfies \(T_c(x)=[Q_0^c(x)-Q_0^c(c)]-[Q_J^c(x)-Q_J^c(c)]\). | Proves the exact finite telescope with every endpoint term retained. |
| `unit_002` | lemma | Under the setting definitions and the accepted stable-selector certificate from `step_004`, for every \(c,y\in\mathbb R\) and \(0\leq j\leq J\), \(0\leq y-Q_j^c(y)<h_j\); consequently \(-h_0<R_0^c(x)<h_0\) for every \(x\). | Proves the strict fine-residual bound directly from the floor convention, including grid points and negative cells. |
| `unit_003` | proposition | Under the setting definitions, the accepted stable-selector certificate, and Lemmas~\ref{lem:step-006-finite-telescope} and~\ref{lem:step-006-floor-remainder}, every \(c,x\in\mathbb R\) satisfies \(x-c=T_c(x)+R_0^c(x)+R_H^c(x)\) and \(\lvert R_0^c(x)\rvert<h_0\); for any integrable random variable \(X\), the corresponding expectation identity exposes \(\mathbb E R_0^c(X)\) and \(\mathbb E R_H^c(X)\) as two separate signed bias terms. | Gives the exact same-target residual interface without dropping, merging, bounding, or absorbing the top residual. |
| `unit_004` | lemma | Under the setting definitions and the accepted stable-selector certificate, the specialization \(x=c\) gives zero in every centered digit summand, \(T_c(c)=R_0^c(c)=R_H^c(c)=0\), and hence the decomposition specializes exactly to \(0=0+0+0\). | Proves the required exact zero-displacement baseline rather than an \(O(h_0)\) surrogate. |

Atomic step = no. Finite cancellation, the strict floor-remainder range, the two-residual target decomposition, and the exact zero-displacement specialization are distinct audit obligations, so each is exposed as a named local unit.

## Cited Result Applications

No paper result, external theorem, or unproved standard theorem is used.

1. **Accepted stable-selector certificate (`step_004`).** Source: the accepted dependency pair identified above. Restated in current notation: for every \(c\in\mathbb R\) and every setting scale \(0\leq j\leq J\), there is a unique \(a_j(c)\in\mathcal S\) satisfying the stable-band condition, and hence \(Q_j^c=Q_{j,a_j(c)}\) is well defined. Instantiated objects: the same \(c\), \(h_j\), \(a_j(c)\), and \(Q_j^c\) appearing in the present setting. Required conditions: the setting-defined positive scales; these were discharged in the accepted dependency proof. Conclusion used: only well-definedness of every selected quantizer. The dependency's margin, boundary, and Borel conclusions are not invoked as algebraic assumptions.
2. **Finite selected-quantizer telescope (Lemma~\ref{lem:step-006-finite-telescope}).** Restated conclusion: the centered sum of \(Q_j^c-Q_{j+1}^c\) cancels at every intermediate scale and leaves exactly the scale-\(0\) endpoint minus the scale-\(J\) endpoint. Its assumptions are the setting definitions and the accepted selector well-definedness. It is used in Proposition~\ref{prop:step-006-residual-interface}.
3. **Floor-quantizer remainder range (Lemma~\ref{lem:step-006-floor-remainder}).** Restated conclusion: \(0\leq y-Q_j^c(y)<h_j\) for every real \(y\); at \(j=0\), the difference of the two remainders at \(x\) and \(c\) lies strictly in \((-h_0,h_0)\). Its assumptions are discharged by the setting definitions and accepted selector well-definedness. It is used in Proposition~\ref{prop:step-006-residual-interface} and to justify integrability in its conditional expectation export.
4. **Exact two-residual interface (Proposition~\ref{prop:step-006-residual-interface}).** Restated conclusion: pointwise, \(x-c\) is the telescope plus the separate fine and top residuals; under the proposition's explicit local integrability condition, taking expectations leaves those same two residual expectations visible. It is used in the target-step assembly.
5. **Exact zero-displacement specialization (Lemma~\ref{lem:step-006-zero-displacement}).** Restated conclusion: at \(x=c\), all centered objects occurring in this step vanish identically. It is used in the target-step assembly to discharge the baseline specialization.

## Local Derivation

### unit_001: lemma

**Lemma (Finite selected-quantizer telescope).** \(\label{lem:step-006-finite-telescope}\)
Under the setting definitions and the accepted stable-selector certificate from `step_004`, for every \(c,x\in\mathbb R\),

\[
T_c(x)
=\bigl(Q_0^c(x)-Q_0^c(c)\bigr)
-\bigl(Q_J^c(x)-Q_J^c(c)\bigr).
\]

**Proof / justification.**
The accepted dependency makes every \(Q_j^c\) appearing below well defined. By the setting definition \(D_j^c=Q_j^c-Q_{j+1}^c\), each summand in \(T_c(x)\) is

\[
\begin{aligned}
D_j^c(x)-D_j^c(c)
&=\bigl(Q_j^c(x)-Q_{j+1}^c(x)\bigr)
  -\bigl(Q_j^c(c)-Q_{j+1}^c(c)\bigr)\\
&=\bigl(Q_j^c(x)-Q_j^c(c)\bigr)
  -\bigl(Q_{j+1}^c(x)-Q_{j+1}^c(c)\bigr).
\end{aligned}
\]

Therefore, for \(J\geq1\), the finite sum expands as

\[
\begin{aligned}
T_c(x)
&=\sum_{j=0}^{J-1}\bigl(Q_j^c(x)-Q_j^c(c)\bigr)
  -\sum_{j=0}^{J-1}\bigl(Q_{j+1}^c(x)-Q_{j+1}^c(c)\bigr)\\
&=\bigl(Q_0^c(x)-Q_0^c(c)\bigr)
  -\bigl(Q_J^c(x)-Q_J^c(c)\bigr),
\end{aligned}
\]

because every term with index \(1,\ldots,J-1\) occurs once with each sign. If the formally degenerate case \(J=0\) is allowed, the defining sum is empty and both endpoint terms on the right are the same, so the identity remains valid. In particular, the stated identity includes the boundary case \(J=1\), where there are no intermediate terms and the single summand already equals the two endpoints. No limiting argument or infinite rearrangement is involved. \(\square\)

### unit_002: lemma

**Lemma (Floor-quantizer remainder range).** \(\label{lem:step-006-floor-remainder}\)
Under the setting definitions and the accepted stable-selector certificate from `step_004`, fix \(c,y\in\mathbb R\) and \(0\leq j\leq J\). Then

\[
0\leq y-Q_j^c(y)<h_j.
\]

Consequently, for every \(c,x\in\mathbb R\),

\[
-h_0<R_0^c(x)<h_0,
\qquad\text{and hence}\qquad
\lvert R_0^c(x)\rvert<h_0.
\]

**Proof / justification.**
Put \(a=a_j(c)\), which is uniquely defined by the accepted dependency, and set

\[
v=\frac{y-a h_j}{h_j}.
\]

The defining property of the floor function is

\[
\lfloor v\rfloor\leq v<\lfloor v\rfloor+1.
\]

Because \(h_j>0\), multiplication by \(h_j\) preserves both inequality directions. Using

\[
Q_j^c(y)=a h_j+h_j\lfloor v\rfloor
\]

gives

\[
0\leq y-Q_j^c(y)<h_j.
\]

This calculation is valid for every real \(v\), so it includes negative quantizer cells and points exactly on a shifted grid, where the remainder is \(0\).

At scale zero, write

\[
r_x=x-Q_0^c(x),
\qquad
r_c=c-Q_0^c(c).
\]

The first part gives \(r_x,r_c\in[0,h_0)\). Hence

\[
-h_0< -r_c\leq r_x-r_c\leq r_x<h_0.
\]

Since \(R_0^c(x)=r_x-r_c\), the claimed strict two-sided and absolute-value bounds follow. The strictness is preserved even when one remainder is zero; no cell-margin estimate is needed. \(\square\)

### unit_003: proposition

**Proposition (Exact two-residual displacement and bias interface).** \(\label{prop:step-006-residual-interface}\)
Under the setting definitions, the accepted stable-selector certificate from `step_004`, Lemma~\ref{lem:step-006-finite-telescope}, and Lemma~\ref{lem:step-006-floor-remainder}, for every \(c,x\in\mathbb R\),

\[
x-c=T_c(x)+R_0^c(x)+R_H^c(x),
\qquad
\lvert R_0^c(x)\rvert<h_0.
\]

Both residuals in the displayed equality are retained as separate signed terms. Moreover, if \(X\) is any integrable real random variable, then all terms below are integrable and

\[
\mathbb E(X-c)
=\mathbb E T_c(X)
 +\mathbb E R_0^c(X)
 +\mathbb E R_H^c(X).
\]

Thus, whenever \(\mu=\mathbb E X\), the exact telescope-to-mean discrepancy is

\[
(\mu-c)-\mathbb E T_c(X)
=\mathbb E R_0^c(X)+\mathbb E R_H^c(X),
\]

with neither bias term discarded, merged into the other, or bounded in this step.

**Proof / justification.**
Add and subtract the scale-zero selected quantizer values:

\[
\begin{aligned}
x-c
&=\bigl[(x-Q_0^c(x))-(c-Q_0^c(c))\bigr]
  +\bigl[Q_0^c(x)-Q_0^c(c)\bigr]\\
&=R_0^c(x)+\bigl[Q_0^c(x)-Q_0^c(c)\bigr].
\end{aligned}
\]

Lemma~\ref{lem:step-006-finite-telescope} rearranges, without approximation, to

\[
Q_0^c(x)-Q_0^c(c)
=T_c(x)+\bigl[Q_J^c(x)-Q_J^c(c)\bigr]
=T_c(x)+R_H^c(x).
\]

Substitution proves

\[
x-c=T_c(x)+R_0^c(x)+R_H^c(x).
\]

The strict fine-residual bound is exactly Lemma~\ref{lem:step-006-floor-remainder}. Notice that the algebra does not replace \(R_H^c(x)\) by zero and does not combine it with \(R_0^c(x)\).

For the expectation export, suppose \(X\) is integrable. Lemma~\ref{lem:step-006-floor-remainder} gives

\[
Q_j^c(X)=X-\bigl(X-Q_j^c(X)\bigr),
\qquad
0\leq X-Q_j^c(X)<h_j
\]

for \(j=0,J\). Thus \(Q_0^c(X)\) and \(Q_J^c(X)\) are integrable. The endpoint representation in Lemma~\ref{lem:step-006-finite-telescope} then makes \(T_c(X)\) integrable; the top residual is an integrable difference involving \(Q_J^c(X)\); and the fine residual is bounded in absolute value by \(h_0\). Taking expectations in the already proved pointwise equality is therefore legitimate and yields the displayed formulas. This expectation passage introduces no moment estimate, inactivity statement, probability event, or residual bound beyond the strict floor-remainder bound proved here. \(\square\)

### unit_004: lemma

**Lemma (Exact zero-displacement specialization).** \(\label{lem:step-006-zero-displacement}\)
Under the setting definitions and the accepted stable-selector certificate from `step_004`, for every \(c\in\mathbb R\) and every \(0\leq j<J\),

\[
D_j^c(c)-D_j^c(c)=0.
\]

Consequently,

\[
T_c(c)=0,
\qquad
R_0^c(c)=0,
\qquad
R_H^c(c)=0,
\]

and the exact displacement decomposition at \(x=c\) is

\[
c-c=T_c(c)+R_0^c(c)+R_H^c(c),
\qquad\text{i.e.}\qquad
0=0+0+0.
\]

**Proof / justification.**
Each centered digit summand is the difference of the same real number from itself, so it is zero. The finite sum defining \(T_c(c)\) is therefore zero, including the empty-sum case. Directly from the two residual definitions,

\[
R_0^c(c)
=\bigl(c-Q_0^c(c)\bigr)-\bigl(c-Q_0^c(c)\bigr)=0,
\]

and

\[
R_H^c(c)=Q_J^c(c)-Q_J^c(c)=0.
\]

Substitution gives the exact displayed specialization. This is an identity, not a bound of order \(h_0\) or \(H\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-006-finite-telescope} proves the exact endpoint formula

\[
T_c(x)
=\bigl(Q_0^c(x)-Q_0^c(c)\bigr)
-\bigl(Q_J^c(x)-Q_J^c(c)\bigr)
\]

by a finite signed cancellation in which every intermediate selected quantizer appears once with each sign. Lemma~\ref{lem:step-006-floor-remainder} proves directly from the floor convention that the two scale-zero remainders lie in \([0,h_0)\), and hence that their difference satisfies the required strict bound \(\lvert R_0^c(x)\rvert<h_0\). Proposition~\ref{prop:step-006-residual-interface} combines these two exact statements to obtain

\[
x-c=T_c(x)+R_0^c(x)+R_H^c(x),
\]

retaining the fine residual and the top residual as distinct signed terms. Its expectation-level export likewise exposes the only two algebraic telescope biases separately as \(\mathbb E R_0^c(X)\) and \(\mathbb E R_H^c(X)\), conditional only on integrability and without importing any future digit-moment, inactivity, tail-support, or bias-control claim. Finally, Lemma~\ref{lem:step-006-zero-displacement} proves that every centered digit summand and both residuals vanish exactly at \(x=c\), so the required baseline is \(0=0+0+0\), not an asymptotic or bounded-remainder surrogate. These named results jointly establish the exact sketch-row claim and export the requested telescope/residual interface.

## Explicit Rate Audit

This step is not rate-bearing. It proves exact deterministic identities and the strict scale-zero bound with constant \(1\). No hidden constant, probability parameter, horizon conversion, norm conversion, asymptotic qualification, term domination, or term absorption occurs. The top residual remains fully exposed for its legal downstream producer to control, and the fine and top signed expectations remain separate in the conditional expectation interface.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined, public-facing objects:** \(h_j\), \(a_j(c)\), \(Q_j^c\), \(D_j^c\), \(T_c\), \(R_0^c\), and \(R_H^c\) are all defined in `setting.md`. The minimal public-facing export is the endpoint telescope, the exact two-residual decomposition, the strict \(\lvert R_0^c\rvert<h_0\) bound, the expectation identity with both signed bias terms exposed, and the exact \(x=c\) specialization. No new public-facing helper object is introduced.
- **Proof-local objects:** \(v=(y-a_j(c)h_j)/h_j\) and the scale-zero remainders \(r_x=x-Q_0^c(x)\), \(r_c=c-Q_0^c(c)\) are direct expressions in setting notation used only inside Lemma~\ref{lem:step-006-floor-remainder}. They are not exported. The letters \(x,y,c\) are quantified real variables, not generated objects.
- **Appendix-local objects:** None beyond the four named local results. In particular, no residual dictionary or combined-bias alias is introduced; the two residuals remain visible in every exported equality.
- **Constant and scale provenance:** Every \(h_j\), including \(h_0\), is setting defined. The strict factor-one bound follows from the half-open floor remainder range \([0,h_0)\), proved in Lemma~\ref{lem:step-006-floor-remainder}; it is not an assumed margin and carries no hidden constant. No new radius, threshold, rate, or finite-tube quantity appears.
- **Assumption provenance:** The target is deterministic and uses no primitive technical assumption beyond the setting-defined object domains. The only accepted derived input is selector/quantizer well-definedness from `step_004`. The pointwise telescope, floor-remainder bound, residual decomposition, and zero-displacement identities are proved in this step. No localization event, moment condition, stability event, digit inactivity, tail support, recurrence, or boundedness invariant is assumed.
- **Local conditional scope:** Integrability of an arbitrary \(X\) is used only inside the explicitly conditional expectation clause of Proposition~\ref{prop:step-006-residual-interface}. It is not needed for any pointwise target conclusion. That proposition proves from the floor-remainder range that all displayed telescope and residual terms are integrable once \(X\) is integrable; it does not import a future moment certificate.
- **Boundary and quantifier audit:** The formulas hold for every real \(c,x\), including negative floor cells and shifted-grid points. The proof explicitly covers \(J=1\), the formally empty \(J=0\) telescope, and \(x=c\). All sums are finite, so there is no interchange of an infinite sum, expectation, or limit.
- **Accepted dependency boundary:** The accepted stable-selector geometry supplies a unique \(a_j(c)\) and hence well-defined \(Q_j^c\). Its cell-margin conclusion is not used to prove the telescope or residual range, and no claim from a future step is imported.
- **Diagnostic boundary:** `global_proof.md` was not read and supplied no evidence, cited result, assumption, or authority to modify the target claim.
