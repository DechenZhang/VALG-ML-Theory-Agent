# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On clause 3, prove \(\widehat T_t\to\widehat T_\infty\) and
  \[
  \mathcal L(X_t,Y_t,Z_t)\to\|T-\widehat T_\infty\|_F^2<\infty.
  \]
- Depends on: None.
- Assumptions used: Explicitly conditional clause 3 only.
- Technical challenge: Prove convergence at represented-tensor level without importing factor boundedness, descent, or Kurdyka--Lojasiewicz hypotheses.
- Intended proof tool or cited result: The Cauchy criterion in finite-dimensional Frobenius space and continuity of squared norm.
- Output target: A represented-tensor limit and a finite objective limit.
- Rate objective: None; no quantitative convergence rate is claimed from an unquantified finite-variation sum.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: None. The proof uses only the setting-defined ambient space \(\mathbb R^{n\times n\times n}\), the fixed target \(T\), the represented tensors \(\widehat T_t\), and the objective definition. It does not use any quantitative content of `assump:dimension`, `assump:rank_window`, `assump:base_conditioning`, `assump:gaussian_smoothing`, or `assump:independent_initialization`.
- Derived invariants supplied by accepted dependencies: None; this is a root step.
- Local conditional hypotheses: Exactly clause 3 of \(\mathsf C_2(\delta,L_P,\zeta,C_T)\), namely
  \[
  \sum_{t=0}^{\infty}\|\widehat T_{t+1}-\widehat T_t\|_F<\infty.
  \]
  This is an explicitly conditional theorem-facing hypothesis about the realized represented-tensor path. It is not a primitive assumption and is not claimed to follow from the ALS dynamics or the joint smoothing-and-initialization law.
- Accepted dependency artifacts: None.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under explicitly conditional clause 3, the represented-tensor sequence \((\widehat T_t)_{t\ge0}\) is Cauchy in ambient Frobenius norm and therefore converges to an element \(\widehat T_\infty\in\mathbb R^{n\times n\times n}\). | Produces the represented-tensor limit without any claim about factor convergence. |
| `unit_002` | proposition | Under explicitly conditional clause 3 and Lemma~\ref{lem:step-004-finite-variation}, the objective satisfies \(\mathcal L(X_t,Y_t,Z_t)\to\|T-\widehat T_\infty\|_F^2<\infty\). | Produces the exact finite objective-limit interface consumed downstream. |

Atomic step = no. The convergence of the represented tensors and the continuity passage to the objective are distinct nontrivial claims and are separated into two local units.

## Cited Result Applications

No external paper result is used.

1. **Tail property of a convergent nonnegative series.** If \(v_t\ge0\) and \(\sum_{t=0}^{\infty}v_t<\infty\), then each tail
   \[
   V_N:=\sum_{t=N}^{\infty}v_t
   \]
   is finite and \(V_N\to0\) as \(N\to\infty\). Here \(v_t=\|\widehat T_{t+1}-\widehat T_t\|_F\), nonnegativity follows from the norm, and summability is exactly clause 3. The conclusion is used in Lemma~\ref{lem:step-004-finite-variation}.

2. **Completeness of the ambient Frobenius space.** The space \(\mathbb R^{n\times n\times n}\), equipped with \(\|\cdot\|_F\), is isometric to the finite-dimensional Euclidean space \(\mathbb R^{n^3}\), so every Frobenius-Cauchy sequence converges to an element of the same space. The setting fixes a positive integer \(n\), and Lemma~\ref{lem:step-004-finite-variation} verifies the Cauchy hypothesis.

3. **Continuity of squared Frobenius distance.** For fixed \(T\) and tensors \(R,S\) in the ambient space,
   \[
   \big|\|T-R\|_F^2-\|T-S\|_F^2\big|
   \le
   \|R-S\|_F\big(\|T-R\|_F+\|T-S\|_F\big).
   \]
   This follows by applying the Frobenius inner product identity \(\|A\|_F^2-\|B\|_F^2=\langle A-B,A+B\rangle\) and Cauchy--Schwarz with \(A=T-R\) and \(B=T-S\). Proposition~\ref{prop:step-004-objective-limit} applies it with \(R=\widehat T_t\) and \(S=\widehat T_\infty\).

4. **Local result used downstream.** Lemma~\ref{lem:step-004-finite-variation}, proved below from clause 3 and the first two standard facts, states that \(\widehat T_t\to\widehat T_\infty\) in Frobenius norm. It is used by Proposition~\ref{prop:step-004-objective-limit} and in the target-step assembly.

5. **Local result used in assembly.** Proposition~\ref{prop:step-004-objective-limit}, proved below from clause 3, Lemma~\ref{lem:step-004-finite-variation}, and the squared-distance inequality, states that the objective converges to \(\|T-\widehat T_\infty\|_F^2<\infty\). It is used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Finite represented-tensor variation gives ambient convergence).** \(\label{lem:step-004-finite-variation}\)

Statement: Under explicitly conditional clause 3, the represented-tensor sequence \((\widehat T_t)_{t\ge0}\) is Cauchy in ambient Frobenius norm and therefore there exists \(\widehat T_\infty\in\mathbb R^{n\times n\times n}\) such that
\[
\widehat T_t\longrightarrow\widehat T_\infty
\qquad\text{in Frobenius norm.}
\]

Proof / justification: Define the proof-local increment norms and their tails by
\[
v_j:=\|\widehat T_{j+1}-\widehat T_j\|_F,
\qquad
V_N:=\sum_{j=N}^{\infty}v_j.
\]
Clause 3 says \(V_0<\infty\). Hence the tail property of a convergent nonnegative series gives \(V_N\to0\).

For integers \(s>t\ge0\), the represented-tensor increments telescope exactly:
\[
\widehat T_s-\widehat T_t
=\sum_{j=t}^{s-1}(\widehat T_{j+1}-\widehat T_j).
\]
The triangle inequality therefore yields
\[
\|\widehat T_s-\widehat T_t\|_F
\le \sum_{j=t}^{s-1}v_j
\le V_t.
\tag{1}
\]
Given \(\varepsilon>0\), choose \(N\) such that \(V_N<\varepsilon\). Since the tails are nonincreasing, (1) gives
\[
\|\widehat T_s-\widehat T_t\|_F<\varepsilon
\qquad\text{for all }s>t\ge N.
\]
Thus \((\widehat T_t)_{t\ge0}\) is Cauchy. Completeness of the finite-dimensional ambient Frobenius space gives a tensor \(\widehat T_\infty\) in that same space with \(\widehat T_t\to\widehat T_\infty\).

For completeness, letting \(s\to\infty\) in (1) and using continuity of the norm also gives the proof-local tail estimate
\[
\|\widehat T_\infty-\widehat T_t\|_F\le V_t\longrightarrow0.
\tag{2}
\]
No factor norm, Gram matrix, descent inequality, design-rank persistence, or quotient-space property enters this derivation. \(\square\)

### unit_002: proposition

**Proposition (Finite objective limit from represented-tensor convergence).** \(\label{prop:step-004-objective-limit}\)

Statement: Under explicitly conditional clause 3 and Lemma~\ref{lem:step-004-finite-variation}, for the fixed target tensor \(T\) from the setting,
\[
\mathcal L(X_t,Y_t,Z_t)
\longrightarrow
\|T-\widehat T_\infty\|_F^2<\infty.
\]

Proof / justification: By the objective definition,
\[
\mathcal L(X_t,Y_t,Z_t)=\|T-\widehat T_t\|_F^2.
\]
Applying the squared-distance inequality with \(R=\widehat T_t\) and \(S=\widehat T_\infty\), followed by the triangle inequality, gives
\[
\begin{aligned}
\big|\mathcal L(X_t,Y_t,Z_t)-\|T-\widehat T_\infty\|_F^2\big|
&\le
\|\widehat T_t-\widehat T_\infty\|_F
\big(\|T-\widehat T_t\|_F+\|T-\widehat T_\infty\|_F\big)\\
&\le
\|\widehat T_t-\widehat T_\infty\|_F
\big(2\|T-\widehat T_\infty\|_F
+\|\widehat T_t-\widehat T_\infty\|_F\big).
\end{aligned}
\tag{3}
\]
Lemma~\ref{lem:step-004-finite-variation} makes the first factor on the right tend to zero. The remaining factor tends to the finite number \(2\|T-\widehat T_\infty\|_F\), because both \(T\) and \(\widehat T_\infty\) belong to the finite-dimensional ambient tensor space. Hence the right-hand side of (3) tends to zero, proving the displayed objective convergence and the finiteness of its limit. \(\square\)

## Target-Step Assembly

On every realized trajectory satisfying explicitly conditional clause 3, Lemma~\ref{lem:step-004-finite-variation} proves the exact represented-tensor conclusion
\[
\widehat T_t\to\widehat T_\infty
\quad\text{in ambient Frobenius norm}.
\]
Proposition~\ref{prop:step-004-objective-limit} then applies to the same represented tensors and the same fixed target \(T\), giving
\[
\mathcal L(X_t,Y_t,Z_t)\to\|T-\widehat T_\infty\|_F^2<\infty.
\]
These two named results establish exactly the `step_004` sketch claim. The implication is pathwise on clause 3. It neither uses nor proves factor convergence, factor boundedness, ALS descent, Gram conditioning, a Kurdyka--Lojasiewicz property, a convergence rate, or any lower bound on the probability of \(\mathsf C_2\).

## Explicit Rate Audit

None. Clause 3 supplies a finite realized variation sum but no numerical bound uniform in \(r,n,k\), the base triple, or the realization. The proof-local tails \(V_t\) are used only as Cauchy witnesses; no theorem-facing convergence rate, hidden constant, term absorption, probability conversion, or Rate Specialization Bridge is claimed.

## Blockers

None.

## Notation And Assumption Notes

- \(v_t=\|\widehat T_{t+1}-\widehat T_t\|_F\) is `proof-local`. It is defined directly from setting objects, is nonnegative by definition, and introduces no new assumption.
- \(V_N=\sum_{t=N}^{\infty}v_t\) is `proof-local`. Its finiteness is inherited exactly from explicitly conditional clause 3, and its convergence to zero is proved using the tail property of a convergent nonnegative series. It is not exported as a public rate or a uniform bounded constant.
- \(\widehat T_\infty\) is `public-facing`, because its existence and the value \(\|T-\widehat T_\infty\|_F^2\) form the minimal interface consumed by `step_005`. Its existence is proved by Lemma~\ref{lem:step-004-finite-variation}, not assumed.
- No new constants, radii, thresholds, margins, admissibility parameters, stochastic events, bounded-factor quantities, or generated invariants are introduced.
- Assumption provenance: clause 3 is used only as the explicitly authorized conditional hypothesis of the formalized theorem. No primitive condition or accepted dependency supplies or is needed for the convergence argument.
- Probability boundary: the proof fixes an arbitrary realized trajectory satisfying clause 3 and proves a deterministic implication. It does not assert that clause 3, or the full certificate \(\mathsf C_2\), occurs with any positive probability.
- Scope and boundary cases: the first increment \(v_0\) is included. If the represented tensor is stationary, all increments vanish and \(\widehat T_\infty=\widehat T_0\). Zero components, changing least-squares design ranks, unbounded or nonconvergent factor representatives, and product-gauge reparameterizations do not affect the argument because only \(\widehat T_t\) is controlled and claimed to converge.
- Exact/noiseless baseline: the proof does not use smoothing residuals or noise parameters, so the exact/noiseless specialization leaves the convergence and finite-objective-limit conclusion unchanged. In the zero-variation boundary case, the represented tensor is stationary and the same conclusion is immediate.
- Diagnostic boundary: `global_proof.md` was read only after confirming that the paired `global_proof_review.md` has status `ACCEPTED`. Its step-relevant tail notation \(V_N\) was used as planning guidance only. Neither diagnostic artifact is used as proof evidence, a cited result, an assumption source, or authority to change the target claim.
