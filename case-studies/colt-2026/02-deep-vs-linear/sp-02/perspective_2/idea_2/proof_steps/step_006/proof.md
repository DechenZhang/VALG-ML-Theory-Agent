# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1

## Target Step Claim

- Intended claim: Expand each \(f_h\) in the fixed basis, prove exact scores and strict signs, handle empty \(\mathcal X/\mathcal H\) and \(r_A=0\), and derive \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\).
- Depends on: step_001, step_003, step_005.
- Assumptions used: Primitive assump:parameter-regime, assump:mean-response-rank; derived map, boundary exclusion, and global witnesses from dependencies.
- Technical challenge: Preserve map independence and exact signs while exposing every quantitative dependency and all degenerate branches.
- Intended proof tool or cited result: Exact basis-coordinate algebra and the definition of dimension complexity; direct substitution of the primitive rank certificate.
- Output target: Full conditional static mean-response-rank theorem.
- Rate objective: R1 and R2: exact public inequalities, no hidden constants, and exact \(m=0,\varepsilon=0,B=1,k=1\) specializations.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:parameter-regime: \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\), \(B\ge1\), and \(k\ge1\), with \(B,k\) fixed numerical constants. In particular,
    \[
    \rho=1-2\varepsilon\in(1/2,1].
    \]
  - assump:mean-response-rank: the already fixed mean-response space has finite dimension and satisfies
    \[
    r_A\le B\bigl(1+m/\tau^2\bigr)^k.
    \]
    This certificate concerns seed-averaged terminal responses over all deterministic complete response rules; it does not concern the catalog or span of individual seed-specific terminal predictors.
- Accepted dependency artifacts:
  - perspective_2/idea_2/proof_steps/step_001/proof.md, SHA-256 a00c8010ea9cf9f8be9c86758351fcd9cfdcd5dfd3c9433f81ad3b1cbf5a6c88.
  - perspective_2/idea_2/proof_steps/step_001/review.md, SHA-256 16df5ae936b8ee9106f65295d1b38260f0f6ac31f77b39405514b08a0301da0f, with status ACCEPTED for sketch attempt 1, Step ID step_001, unit attempt 1.
  - perspective_2/idea_2/proof_steps/step_003/proof.md, SHA-256 de63d61152e43e7859b5e765cf65564277921a71ac3b3f60f7de30508d3cd78d.
  - perspective_2/idea_2/proof_steps/step_003/review.md, SHA-256 84c8164bb4f98d0db1cf1abd726558e0c3710278ac8d80fc769c61cd1cdd914d, with status ACCEPTED for sketch attempt 1, Step ID step_003, unit attempt 1.
  - perspective_2/idea_2/proof_steps/step_005/proof.md, SHA-256 87d7be0fb1b85ac64371c7df963cc94ad88ad0bb99411b2694b3cc53ed9db340.
  - perspective_2/idea_2/proof_steps/step_005/review.md, SHA-256 0043837a7a9cbe26532c225eae343aeadbfa55c765be78fdc569178964b47da8, with status ACCEPTED for sketch attempt 1, Step ID step_005, unit attempt 1.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\(\ref{prop:step-001-mean-response-space}\) supplies the fixed finite-dimensional \(V_A\), its dimension \(r_A\), the empty-domain identity \(V_A=\{0\}\), and the zero-query convention and specialization.
  - Proposition~\(\ref{prop:step-001-fixed-coordinates}\) supplies a basis \(\psi_1,\ldots,\psi_{r_A}\) and the map
    \[
    \varphi_A(x)=(\psi_1(x),\ldots,\psi_{r_A}(x))
    \]
    fixed before every \(\mathcal D,h\), selected complete or valid response rule, and realized learner seed, together with exact coordinates for every \(f\in V_A\).
  - Proposition~\(\ref{prop:step-003-nonzero-rank}\) supplies \(r_A\ge1\) whenever \(\mathcal X\ne\varnothing\) and \(\mathcal H\ne\varnothing\).
  - Proposition~\(\ref{prop:step-005-global-margin}\) supplies, for every \(h\in\mathcal H\), a function \(f_h\in K_A\subseteq V_A\) satisfying
    \[
    h(x)f_h(x)\ge\rho
    \qquad\text{for every }x\in\mathcal X.
    \]
- Local conditional hypotheses: None.

The full branch remains conditional on Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), \(\ref{assump:universal-adversarial-guarantee}\), and~\(\ref{assump:mean-response-rank}\). This step directly invokes only Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:mean-response-rank}\); the adaptive-interface and universal-guarantee assumptions have already been discharged in the accepted dependency conclusions. No generated membership, separator, sign, or representation fact is treated as primitive.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:mean-response-rank}\), accepted Proposition~\(\ref{prop:step-001-fixed-coordinates}\), and accepted Proposition~\(\ref{prop:step-005-global-margin}\), for every \(h\in\mathcal H\) there is a unique basis-coordinate vector \(w_h\in\mathbb R^{r_A}\) for the selected \(f_h\) such that \(\langle w_h,\varphi_A(x)\rangle=f_h(x)\) and \(h(x)\langle w_h,\varphi_A(x)\rangle\ge\rho>1/2>0\) for every \(x\); the basis and map retain their pre-instance independence. | Transfers each global witness to exact nonzero scores with zero residual and proves the exact sign relation while keeping only the weights target-dependent. |
| unit_002 | lemma | Under Proposition~\(\ref{prop:step-006-exact-score-transfer}\) and accepted Proposition~\(\ref{prop:step-003-nonzero-rank}\), the fixed map \(\varphi_A:\mathcal X\to\mathbb R^{r_A}\) makes \(r_A\) admissible in the definition of \(\operatorname{dc}(\mathcal H)\), so \(\operatorname{dc}(\mathcal H)\le r_A\); moreover, if \(\mathcal X=\varnothing\) or \(\mathcal H=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\), and if \(r_A=0\), one of those two empty regimes must hold and \(\operatorname{dc}(\mathcal H)=r_A=0\). | Converts strict scores into the exact dimension-complexity inequality and closes all empty and zero-rank branches. |
| unit_003 | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:mean-response-rank}\), Proposition~\(\ref{prop:step-006-exact-score-transfer}\), and Lemma~\(\ref{lem:step-006-dimension-admissibility}\), the exact conclusion is \(\operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k\), with deterministic pointwise margin \(\rho\), no hidden constant, and the exact \(m=0,\varepsilon=0,B=1,k=1\) specializations. | Concatenates the representation and primitive rank inequalities without an absorption or scope change and records the full conditional theorem interface. |

Atomic step = no. Exact coordinate transfer, admissibility in the definition of dimension complexity, and quantitative concatenation with boundary specializations are distinct obligations.

## Cited Result Applications

No external paper result or unproved standard theorem is used.

1. **Accepted finite mean-response space, Proposition~\(\ref{prop:step-001-mean-response-space}\).** Its required primitive assumptions are Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), together with accepted Lemma~\(\ref{lem:step-001-complete-rules}\). The current branch assumes those three primitive conditions, and the hash-identified step_001 proof/review pair proves and accepts the complete-rule input. In the current notation the result gives the fixed space
   \[
   V_A=\operatorname{span}_{\mathbb R}
   \{F_R:R\in\mathfrak R_A^{\mathrm{all}}\},
   \qquad r_A=\dim V_A<\infty,
   \]
   with \(V_A=\{0\}\) and \(r_A=0\) when \(\mathcal X=\varnothing\). At \(m=0\), the all-rule family contains only the unique empty rule, \(V_A\) has one generator, and the exact rank specialization is \(r_A\le B\). Proposition~\(\ref{prop:step-006-polynomial-closure}\) uses its zero-query and empty-domain interfaces; no claim about individual terminal-predictor rank is used.
2. **Accepted fixed coordinates, Proposition~\(\ref{prop:step-001-fixed-coordinates}\).** Its required primitive assumptions are Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), and its generated input is accepted Proposition~\(\ref{prop:step-001-mean-response-space}\). The primitive conditions hold in the current setting, and the generated input is discharged by the same hash-identified accepted step_001 artifact. The proposition fixes a basis \((\psi_j)_{j=1}^{r_A}\), with the empty basis when \(r_A=0\), and fixes
   \[
   \varphi_A(x)=(\psi_1(x),\ldots,\psi_{r_A}(x))
   \]
   before every distribution, target, selected rule, and realized seed. Every \(f\in V_A\) has a unique vector \(a(f)\) satisfying
   \[
   f(x)=\langle a(f),\varphi_A(x)\rangle
   \quad\text{for every }x.
   \]
   Proposition~\(\ref{prop:step-006-exact-score-transfer}\) instantiates this result with the accepted \(f_h\).
3. **Accepted point-mass zero-rank exclusion, Proposition~\(\ref{prop:step-003-nonzero-rank}\).** Its primitive assumptions are Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:universal-adversarial-guarantee}\); its generated inputs are accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) and the exact-correlation proposition proved earlier in step_003. The current branch supplies the primitive conditions, and the hash-identified accepted step_001 and step_003 artifacts discharge both generated inputs. If both \(\mathcal X\) and \(\mathcal H\) are nonempty, the result instantiates an available point mass and produces a nonzero member of \(V_A\), so \(r_A\ge1\). Lemma~\(\ref{lem:step-006-dimension-admissibility}\) uses exactly the contrapositive boundary implication \(r_A=0\Rightarrow(\mathcal X=\varnothing\text{ or }\mathcal H=\varnothing)\).
4. **Accepted global exact-margin witness, Proposition~\(\ref{prop:step-005-global-margin}\).** Its primitive threshold condition is Assumption~\(\ref{assump:parameter-regime}\); its generated inputs are the compactness and evaluation-continuity conclusions and the finite-margin conclusion stated and discharged inside the hash-identified accepted step_005 proof/review pair. Thus no compactness, finite feasibility, or global membership condition is newly assumed here. In current notation the proposition gives, for every \(h\in\mathcal H\), an \(f_h\in K_A\) with \(h(x)f_h(x)\ge\rho\) for every \(x\in\mathcal X\). The body is the same setting-defined \(K_A\subseteq V_A\), and the threshold is unchanged, including \(\rho=1\). Proposition~\(\ref{prop:step-006-exact-score-transfer}\) uses only this exported global-witness conclusion.
5. **Exact fixed-basis score transfer, Proposition~\(\ref{prop:step-006-exact-score-transfer}\).** Under the assumptions and accepted dependencies stated in unit_001, it supplies the target weights, exact score identity, strict signs, and map-independence interface. Lemma~\(\ref{lem:step-006-dimension-admissibility}\) and Proposition~\(\ref{prop:step-006-polynomial-closure}\) use these conclusions.
6. **Dimension-complexity admissibility, Lemma~\(\ref{lem:step-006-dimension-admissibility}\).** Under the prior local proposition and accepted nonzero-rank boundary result, it gives \(\operatorname{dc}(\mathcal H)\le r_A\) and the exact empty/zero-rank cases. Proposition~\(\ref{prop:step-006-polynomial-closure}\) uses this inequality.
7. **Exact conditional polynomial closure, Proposition~\(\ref{prop:step-006-polynomial-closure}\).** Under its stated assumptions and prior local results, it combines the dimension-complexity inequality, exact signed margin, and primitive rank certificate. It is the output used in the target-step assembly.

The definition of \(\operatorname{dc}(\mathcal H)\) is used directly as given in setting.md. Basis expansion, evaluation of a finite sum, and substitution into an inequality are proved explicitly below rather than invoked as external results.

## Local Derivation

### unit_001: proposition

**Proposition (Exact score transfer through the pre-instance basis).**
\(\label{prop:step-006-exact-score-transfer}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:mean-response-rank}\), accepted Proposition~\(\ref{prop:step-001-fixed-coordinates}\), and accepted Proposition~\(\ref{prop:step-005-global-margin}\), the basis \(\psi_1,\ldots,\psi_{r_A}\) and map \(\varphi_A\) are fixed before every learning instance. For every \(h\in\mathcal H\) and every \(f_h\in K_A\) supplied by the accepted global-margin proposition, there is a unique \(w_h\in\mathbb R^{r_A}\) such that
\[
f_h=\sum_{j=1}^{r_A}(w_h)_j\psi_j
\]
and, for every \(x\in\mathcal X\),
\[
\langle w_h,\varphi_A(x)\rangle=f_h(x),
\qquad
h(x)\langle w_h,\varphi_A(x)\rangle\ge\rho>\frac12>0.
\]
Consequently every score is nonzero and has exact sign \(h(x)\). Only \(f_h\) and its coordinate vector \(w_h\) may depend on \(h\); the basis and feature map do not.

**Proof / justification.**
Accepted Proposition~\(\ref{prop:step-001-fixed-coordinates}\) constructs the basis and \(\varphi_A\) from the fixed all-rule mean-response space. Its construction occurs before any distribution, target, validity restriction, selected complete or valid rule, or realized learner seed. Fixing a later \(h\) therefore does not change this basis or map.

Now fix an arbitrary \(h\in\mathcal H\). Accepted Proposition~\(\ref{prop:step-005-global-margin}\) supplies \(f_h\in K_A\) satisfying
\[
h(x)f_h(x)\ge\rho
\qquad\text{for every }x\in\mathcal X.
\]
By the setting definition, the closure defining \(K_A\) is taken inside \(V_A\), so \(K_A\subseteq V_A\). Since \(\psi_1,\ldots,\psi_{r_A}\) is a basis of \(V_A\), there is a unique coordinate vector \(w_h\in\mathbb R^{r_A}\) with
\[
f_h=\sum_{j=1}^{r_A}(w_h)_j\psi_j.
\]
Evaluating this equality at an arbitrary \(x\in\mathcal X\) gives the exact basis-score identity
\[
\begin{aligned}
f_h(x)
&=\sum_{j=1}^{r_A}(w_h)_j\psi_j(x)\\
&=\left\langle w_h,
  (\psi_1(x),\ldots,\psi_{r_A}(x))\right\rangle\\
&=\langle w_h,\varphi_A(x)\rangle.
\end{aligned}
\]
There is no approximation, limit, norm conversion, or coordinate residual in this equality. Multiplying by the setting label \(h(x)\in\{-1,+1\}\) and using the accepted global margin yields
\[
h(x)\langle w_h,\varphi_A(x)\rangle
=h(x)f_h(x)
\ge\rho.
\]
Assumption~\(\ref{assump:parameter-regime}\) gives \(\rho=1-2\varepsilon>1/2>0\). Hence the score cannot vanish. If \(h(x)=+1\), then \(\langle w_h,\varphi_A(x)\rangle>0\); if \(h(x)=-1\), then \(\langle w_h,\varphi_A(x)\rangle<0\). Thus its exact sign is \(h(x)\), with no tie convention.

When \(\mathcal H=\varnothing\), the universal target statement is vacuous and the already fixed map remains defined. When \(\mathcal X=\varnothing\), the pointwise equalities and inequalities are vacuous; accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) gives \(V_A=\{0\}\) and \(r_A=0\), so \(f_h=0\), \(w_h\) is the empty vector, and the basis expansion is the empty sum. These conventions preserve the statement without selecting a nonexistent point. \(\square\)

### unit_002: lemma

**Lemma (Dimension-complexity admissibility and degenerate branches).**
\(\label{lem:step-006-dimension-admissibility}\)
Under Proposition~\(\ref{prop:step-006-exact-score-transfer}\) and accepted Proposition~\(\ref{prop:step-003-nonzero-rank}\),
\[
\operatorname{dc}(\mathcal H)\le r_A.
\]
If \(\mathcal X=\varnothing\) or \(\mathcal H=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\). If \(r_A=0\), then at least one of \(\mathcal X,\mathcal H\) is empty and
\[
\operatorname{dc}(\mathcal H)=r_A=0.
\]

**Proof / justification.**
Proposition~\(\ref{prop:step-006-exact-score-transfer}\) gives one fixed map
\[
\varphi_A:\mathcal X\to\mathbb R^{r_A}
\]
such that, for every \(h\in\mathcal H\), there exists \(w_h\in\mathbb R^{r_A}\) satisfying
\[
h(x)\langle w_h,\varphi_A(x)\rangle>0
\qquad\text{for every }x\in\mathcal X.
\]
Thus \(d=r_A\) belongs to the set of admissible dimensions in the definition of \(\operatorname{dc}(\mathcal H)\). Taking the infimum over that subset of \(\mathbb N_0\) gives
\[
\operatorname{dc}(\mathcal H)\le r_A.
\]
In particular, the admissible set is nonempty, so the empty-infimum convention is never invoked under the theorem premises.

If \(\mathcal H=\varnothing\), dimension \(d=0\) is admissible: use the unique map from \(\mathcal X\) to \(\mathbb R^0\), and the target-indexed requirement is vacuous. Since admissible dimensions lie in \(\mathbb N_0\), this proves \(\operatorname{dc}(\mathcal H)=0\).

If \(\mathcal X=\varnothing\), again \(d=0\) is admissible. Use the unique map \(\varnothing\to\mathbb R^0\); for every \(h\in\mathcal H\), choose the empty vector in \(\mathbb R^0\), and the condition over \(x\in\varnothing\) is vacuous. Hence \(\operatorname{dc}(\mathcal H)=0\). Accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) additionally gives \(r_A=0\) in this branch.

Finally, suppose \(r_A=0\). If both \(\mathcal X\) and \(\mathcal H\) were nonempty, accepted Proposition~\(\ref{prop:step-003-nonzero-rank}\) would give \(r_A\ge1\), a contradiction. Therefore \(\mathcal X=\varnothing\) or \(\mathcal H=\varnothing\). The preceding two paragraphs give \(\operatorname{dc}(\mathcal H)=0=r_A\). This exhausts the zero-rank boundary without asking a zero-dimensional score to realize a nonempty sign constraint. \(\square\)

### unit_003: proposition

**Proposition (Exact conditional polynomial dimension closure).**
\(\label{prop:step-006-polynomial-closure}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:mean-response-rank}\), Proposition~\(\ref{prop:step-006-exact-score-transfer}\), and Lemma~\(\ref{lem:step-006-dimension-admissibility}\), the fixed map \(\varphi_A:\mathcal X\to\mathbb R^{r_A}\) satisfies, for every \(h\in\mathcal H\), the existence of \(w_h\in\mathbb R^{r_A}\) with
\[
h(x)\langle w_h,\varphi_A(x)\rangle
\ge1-2\varepsilon=\rho>\frac12>0
\qquad\text{for every }x\in\mathcal X,
\]
and
\[
\operatorname{dc}(\mathcal H)
\le r_A
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
The conclusion is deterministic and has no hidden constants. It remains conditional on the primitive mean-response-rank certificate and makes no catalog-rank, seed-specific-rank, rank-free, unconditional, or linear-in-\(1+m/\tau^2\) claim.

**Proof / justification.**
The pointwise score statement, including exact pre-instance map independence and strict positivity, is Proposition~\(\ref{prop:step-006-exact-score-transfer}\). Lemma~\(\ref{lem:step-006-dimension-admissibility}\) gives the first dimension inequality
\[
\operatorname{dc}(\mathcal H)\le r_A.
\]
Assumption~\(\ref{assump:mean-response-rank}\) gives, for the identical \(r_A\),
\[
r_A\le B\bigl(1+m/\tau^2\bigr)^k.
\]
Transitivity yields the displayed chain. Both inequalities are retained verbatim: no term is absorbed, no asymptotic notation is introduced, and no constant is hidden.

All requested parameter boundaries follow by direct substitution.

- If \(m=0\), then
  \[
  B\bigl(1+m/\tau^2\bigr)^k
  =B(1+0)^k=B,
  \]
  so \(\operatorname{dc}(\mathcal H)\le r_A\le B\). Accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) identifies the unique empty complete response rule in this regime; the score transfer uses no query-round argument.
- If \(\varepsilon=0\), then \(\rho=1\), and the pointwise guarantee becomes
  \[
  h(x)\langle w_h,\varphi_A(x)\rangle\ge1
  \]
  with no margin degradation or probabilistic surrogate.
- If \(B=1\), the rank bound is exactly
  \[
  r_A\le\bigl(1+m/\tau^2\bigr)^k.
  \]
- If \(k=1\), the rank bound is exactly
  \[
  r_A\le B\bigl(1+m/\tau^2\bigr).
  \]
- If \(B=1\) and \(k=1\), it is exactly
  \[
  r_A\le1+m/\tau^2.
  \]

The substitutions use only \(m\in\mathbb N_0\), \(\tau>0\), \(B\ge1\), and \(k\ge1\); no upper bound on \(\tau\) is added. Empty \(\mathcal X\), empty \(\mathcal H\), and \(r_A=0\) are already closed by Lemma~\(\ref{lem:step-006-dimension-admissibility}\). The primitive certificate, rather than the number of possible response transcripts, terminal predictors, or queries by itself, supplies the second inequality. Therefore this is exactly the approved conditional polynomial theorem. \(\square\)

## Target-Step Assembly

Accepted Proposition~\(\ref{prop:step-005-global-margin}\) gives each global \(f_h\) in the one fixed \(K_A\subseteq V_A\). Accepted Proposition~\(\ref{prop:step-001-fixed-coordinates}\) gives the basis and feature map before any target or learning instance is selected. Proposition~\(\ref{prop:step-006-exact-score-transfer}\) composes these interfaces by the exact equality
\[
\langle w_h,\varphi_A(x)\rangle=f_h(x),
\]
so the accepted margin transfers with zero residual:
\[
h(x)\langle w_h,\varphi_A(x)\rangle
=h(x)f_h(x)\ge\rho>\frac12>0.
\]
This proves nonzero exact signs while allowing only \(w_h\), not the feature map, to depend on \(h\).

Lemma~\(\ref{lem:step-006-dimension-admissibility}\) applies the definition of dimension complexity to that same fixed map and proves
\[
\operatorname{dc}(\mathcal H)\le r_A.
\]
It also proves \(\operatorname{dc}(\mathcal H)=0\) for empty \(\mathcal X\) or empty \(\mathcal H\), and uses accepted Proposition~\(\ref{prop:step-003-nonzero-rank}\) to show that \(r_A=0\) cannot coexist with a nonempty domain and nonempty class.

Finally, Proposition~\(\ref{prop:step-006-polynomial-closure}\) concatenates the dimension inequality with the primitive certificate, giving exactly
\[
\operatorname{dc}(\mathcal H)
\le r_A
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
It records the \(m=0,\varepsilon=0,B=1,k=1\) cases by equality-level substitution, with no hidden constant, probability conversion, catalog bound, or unconditional/linear strengthening. These named results establish every clause of the binding step_006 row and the full approved conditional theorem.

## Explicit Rate Audit

- Exposed variables: \(\operatorname{dc}(\mathcal H),r_A,B,k,m,\tau,\varepsilon\), with
  \[
  \operatorname{dc}(\mathcal H)\le r_A\le B(1+m/\tau^2)^k,
  \qquad
  \rho=1-2\varepsilon.
  \]
- Hidden constants may depend on: None. There are no hidden constants.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,A,\mu_A,m,\tau,\varepsilon,B,k,\mathcal D,h,R,U\), response precision, terminal-predictor catalog size, or domain cardinality.
- Fixed quantities: \(B\ge1\) and \(k\ge1\) are fixed numerical constants before the learner instance. For one theorem instance, \(\mathcal X,A,\mu_A,m,\tau\), the complete-response interface, \(V_A\), its basis, and \(\varphi_A\) are fixed before any \(\mathcal D,h\), selected valid response rule, or realized seed. Only the global witness and its coordinates may depend on \(h\).
- Probability mode: Deterministic. Seed averaging is already internal to the definition of \(F_R\) and the accepted dependencies; the final score and dimension conclusions have no probability qualifier, confidence parameter, event, or response-policy average.
- Horizon mode: Fixed finite upper horizon \(m\in\mathbb N_0\). No all-time or horizon-uniform upgrade is claimed.
- Norm mode: Exact algebraic dimensions \(\operatorname{dc}(\mathcal H)\) and \(r_A\), together with the pointwise signed-score inequality on every \(x\in\mathcal X\). No norm conversion is used.
- Admissibility conditions and auxiliary tolerances: The full theorem uses the four primitive assumptions from setting.md. Directly in this step, \(m\in\mathbb N_0\), \(\tau>0\), \(\varepsilon\in[0,1/4)\), \(B\ge1\), \(k\ge1\), and the primitive mean-response-rank certificate are used. There is no auxiliary tolerance, domain-size restriction, or upper bound on \(\tau\).
- Term absorption or simplification inequalities: None. Coordinate transfer is an equality, strict signs follow from \(\rho>1/2>0\), and the public dimension statement is the exact transitive chain
  \[
  \operatorname{dc}(\mathcal H)\le r_A
  \quad\text{and}\quad
  r_A\le B(1+m/\tau^2)^k.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step is the complete bridge. It converts the accepted global witness to a score with zero residual, invokes the exact-sign definition of \(\operatorname{dc}\), and appends the primitive rank inequality without simplification loss.
- Baseline-reduction check:
  - \(m=0\) gives \(r_A\le B\) and uses the accepted unique empty-rule convention, with no query-round lemma.
  - \(\varepsilon=0\) gives the unchanged signed threshold \(1\).
  - \(B=1\) gives \(r_A\le(1+m/\tau^2)^k\).
  - \(k=1\) gives \(r_A\le B(1+m/\tau^2)\).
  - \(B=k=1\) gives \(r_A\le1+m/\tau^2\).
  - Empty \(\mathcal X\) or empty \(\mathcal H\) gives \(\operatorname{dc}(\mathcal H)=0\); \(r_A=0\) is compatible only with one of these vacuous sign regimes.

## Blockers

None

## Notation And Assumption Notes

- \(V_A,r_A,K_A,(\psi_j)_{j=1}^{r_A}\), and \(\varphi_A\) are setting-defined, public-facing objects whose construction, finiteness, basis choice, and pre-instance independence are accepted outputs of step_001.
- \(\rho=1-2\varepsilon\) is a setting-defined, public-facing threshold. Its strict bound \(\rho>1/2\) comes directly from Assumption~\(\ref{assump:parameter-regime}\).
- \(f_h\) is the public-facing generated witness supplied by accepted Proposition~\(\ref{prop:step-005-global-margin}\). Its membership in \(K_A\) and its simultaneous inequalities are accepted derived conclusions, not assumptions.
- \(w_h\) is the sole new public-facing object. It is the unique coordinate vector of a selected \(f_h\) in the already fixed basis. Its existence, uniqueness, zero-residual score identity, and target-only dependence are proved in Proposition~\(\ref{prop:step-006-exact-score-transfer}\).
- The empty vector in \(\mathbb R^0\), empty basis sum, and unique maps to or from an empty set are proof-local boundary conventions used in the explicit \(\mathcal X=\varnothing\), \(\mathcal H=\varnothing\), and \(r_A=0\) audits. They introduce no theorem parameter or downstream notation.
- Helper-object surface: no appendix-local helper constant, event, radius, margin, threshold, rate, finite-tube quantity, catalog, or response-tree encoding is introduced. The proof exports only the existing map and the target weights needed by the formalized goal.
- Constant provenance: \(B,k,m,\tau,\varepsilon,\rho\) come directly from setting.md. No new constant is introduced. The upper bound is copied from Assumption~\(\ref{assump:mean-response-rank}\), and the positive sign threshold is copied from Assumption~\(\ref{assump:parameter-regime}\) after the exact coordinate identity.
- Assumption provenance: the fixed basis and map are accepted derived outputs of step_001; the nonzero-rank boundary is an accepted derived output of step_003; each global witness is an accepted derived output of step_005; coordinate weights and exact scores are proved in unit_001; dimension admissibility and all empty/zero-rank conclusions are proved in unit_002; and the quantitative theorem closure is proved in unit_003. No generated event, validity condition, stability condition, recurrence, boundedness invariant, or global membership fact is treated as primitive.
- Map-independence audit: the basis and \(\varphi_A\) depend only on the fixed domain and learner-side objects \(A,\mu_A,m,\tau\) and the complete-response interface, plus a once-fixed basis choice. They do not depend on \(\mathcal D,h\), a selected tolerance-valid response policy, or a realized learner seed. Selecting \(f_h\) and then taking its coordinates changes only \(w_h\).
- Scope boundary: the theorem is conditional on Assumption~\(\ref{assump:mean-response-rank}\). The proof neither derives that assumption from \(m,\tau\) alone nor bounds the number or span of individual predictors \(g_{u,R}\). It therefore does not assert an unconditional, catalog/rank-free, or universal linear dimension theorem.
- Boundary audit: empty \(\mathcal H\) makes the target quantifier vacuous and gives \(\operatorname{dc}=0\); empty \(\mathcal X\) gives \(V_A=\{0\}\), \(r_A=0\), and a vacuous score condition; accepted point-mass correlation excludes \(r_A=0\) when both sets are nonempty; \(m=0\) uses the unique empty rule and gives \(r_A\le B\); \(\varepsilon=0\) retains threshold \(1\); and \(B=1\), \(k=1\), or both are handled by exact substitution.
- Diagnostic boundary: global_proof.md and global_proof_review.md were not read. No diagnostic file, prior branch, nondependency step, or proof-history artifact is used as proof evidence, an assumption source, a cited result, or authority to change the binding target claim.
