# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \((\mathcal D,h)\), prove the exact-center rule is deterministic, complete, public, and valid for every reached seed path; derive \(\mathbb E_{\mathcal D}[hF_{R^0}]\ge\rho\), and show nonempty \(\mathcal X,\mathcal H\) force \(r_A\ge1\).
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:universal-adversarial-guarantee`; derived all-rule inclusion from `step_001`.
- Technical challenge: Preserve the every-valid-policy quantifier and seed-only expectation; handle \(m=0\), arbitrary \(\tau>0\), and point masses without introducing oracle randomness.
- Intended proof tool or cited result: Direct legality check, Fubini/linearity under the setting's measurability premise, and \(hg=1-2\mathbf 1\{g\ne h\}\).
- Output target: Per-distribution fixed-body witness with exact correlation \(\rho\), plus the zero-rank boundary exclusion.
- Rate objective: R2, exact \(\rho=1-2\varepsilon\), including \(\varepsilon=0\), with zero tolerance residual.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), and \(\varepsilon\in[0,1/4)\), so
    \[
    \rho=1-2\varepsilon\in(1/2,1].
    \]
  - `assump:adaptive-sq-interface`: for every admitted public query-bearing history, the current query is a bounded measurable map \(q_t:\mathcal X\times\{-1,+1\}\to[-1,1]\); interaction with every deterministic complete response rule is well-defined; the terminal predictor is binary; and all seed and population expectations used below exist with the measurability needed for their displayed iterated forms.
  - `assump:universal-adversarial-guarantee`: for every \(\mathcal D\in\mathcal P(\mathcal X)\), \(h\in\mathcal H\), and every deterministic complete \((\mathcal D,h,\tau)\)-valid rule \(R\),
    \[
    \mathbb E_{U\sim\mu_A}\mathcal L_{\mathcal D,h}(g_{U,R})\le\varepsilon.
    \]
    The quantifier is pointwise in every valid rule; it neither chooses a favorable rule nor averages over response rules.
- Accepted dependency artifacts:
  - `perspective_2/idea_2/proof_steps/step_001/proof.md`, SHA-256 `a00c8010ea9cf9f8be9c86758351fcd9cfdcd5dfd3c9433f81ad3b1cbf5a6c88`.
  - `perspective_2/idea_2/proof_steps/step_001/review.md`, SHA-256 `16df5ae936b8ee9106f65295d1b38260f0f6ac31f77b39405514b08a0301da0f`, with status `ACCEPTED` for sketch attempt 1, step `step_001`, unit attempt 1.
- Derived objects and controls supplied by the accepted dependency:
  - Lemma~\(\ref{lem:step-001-complete-rules}\) constructs the fixed nonempty family \(\mathfrak R_A^{\mathrm{all}}\) of deterministic complete public-transcript rules, gives a well-defined binary \(g_{u,R}\) for every seed and rule, and proves that \(m=0\) has the unique empty rule.
  - Proposition~\(\ref{prop:step-001-mean-response-space}\) constructs the well-defined seed averages \(F_R\), their fixed span \(V_A\), and \(r_A=\dim V_A<\infty\), with every \(F_R\in[-1,1]^{\mathcal X}\).
- Derived invariants supplied by accepted dependencies: the all-rule family, seedwise terminal predictors, seed-averaged functions, and fixed mean-response space just listed. Validity of the exact-center rule, its membership in the valid-rule family, its correlation, and the nonzero-rank conclusion are not imported; they are proved below.
- Local conditional hypotheses: None.

The primitive rank certificate is not applied directly in this step. It underwrites the already accepted finite-space dependency, while the argument below uses only that dependency's exact all-rule and mean-response-space interfaces. No statement from a nondependency proof step is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:adaptive-sq-interface}\), and accepted Lemma~\(\ref{lem:step-001-complete-rules}\), for every \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\), the historywise population-expectation assignment \(R^0_{\mathcal D,h}\) is deterministic, complete, public-transcript based, belongs to \(\mathfrak R_A^{\mathrm{all}}\), and is \((\mathcal D,h,\tau)\)-valid with zero deviation on every reached seed path; for \(m=0\) it is the unique empty rule. | Discharges completeness, publicness, arbitrary positive tolerance, every-reached-seed validity, and the zero-query convention without changing the oracle model. |
| `unit_002` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:universal-adversarial-guarantee}\), accepted Proposition~\(\ref{prop:step-001-mean-response-space}\), and Lemma~\(\ref{lem:step-003-exact-center-legality}\), for every \((\mathcal D,h)\), the raw response \(F_{R^0_{\mathcal D,h}}\) lies in the fixed body \(K_A\) and satisfies the exact identity and bound \(\mathbb E_{\mathcal D}[hF_{R^0}]=1-2\mathbb E_U\mathcal L_{\mathcal D,h}(g_{U,R^0})\ge\rho\). | Converts the every-valid-rule accuracy premise into the exact seed-averaged fixed-body correlation witness, with no response-policy averaging or tolerance residual. |
| `unit_003` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:universal-adversarial-guarantee}\), accepted Proposition~\(\ref{prop:step-001-mean-response-space}\), and Proposition~\(\ref{prop:step-003-exact-correlation}\), if \(\mathcal X\ne\varnothing\) and \(\mathcal H\ne\varnothing\), then every point-target pair has a point-mass exact-center witness with nonzero signed value, so \(V_A\ne\{0\}\) and \(r_A\ge1\). | Excludes the false zero-dimensional sign branch exactly when the domain and class are both nonempty. |

Atomic step = no. Historywise response legality, expectation/correlation conversion, and the point-mass rank consequence are independent nontrivial obligations and are therefore separated into three named units.

## Cited Result Applications

1. **Accepted complete-rule dependency, Lemma~\(\ref{lem:step-001-complete-rules}\).** Under `assump:parameter-regime` and `assump:adaptive-sq-interface`, deterministic total \(I_\tau\)-valued assignments on all admitted public query-bearing histories are exactly \(\mathfrak R_A^{\mathrm{all}}\); every such rule defines \(g_{u,R}\), and at \(m=0\) the family is the singleton containing the empty rule. The proof and accepting review are the hash-identified artifacts above. Lemma~\(\ref{lem:step-003-exact-center-legality}\) uses this result only after directly checking that its population-expectation assignment is such a total public assignment.
2. **Accepted mean-response-space dependency, Proposition~\(\ref{prop:step-001-mean-response-space}\).** Under its stated primitive assumptions and the complete-rule lemma, each \(F_R(x)=\int g_{u,R}(x)\,\mu_A(du)\) is well-defined, \(V_A=\operatorname{span}\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}\), and \(r_A=\dim V_A<\infty\). Proposition~\(\ref{prop:step-003-exact-correlation}\) uses the exact definition of \(F_R\) and the raw-family inclusion; Proposition~\(\ref{prop:step-003-nonzero-rank}\) uses only \(F_R\in V_A\) and \(r_A=\dim V_A\). The dependency's basis and coordinate conclusion is not used here.
3. **Bounded Fubini theorem.** If \(P\) and \(Q\) are probability laws and \(a\) is a jointly measurable bounded real function on their product, then \(a\) is integrable and
   \[
   \int\!\left(\int a(u,x)\,P(du)\right)Q(dx)
   =\int\!\left(\int a(u,x)\,Q(dx)\right)P(du).
   \]
   Here \(P=\mu_A\), \(Q=\mathcal D\), and \(a(u,x)=h(x)g_{u,R^0_{\mathcal D,h}}(x)\). The setting's measurability convention and Assumption~\(\ref{assump:adaptive-sq-interface}\) supply joint measurability and the displayed expectations, while binary \(h,g\) give \(|a|=1\). Thus every hypothesis is discharged in current notation. This standard result supplies only the interchange of the two deterministic integrals; the loss identity and accuracy bound are proved separately.
4. **Exact-center legality, Lemma~\(\ref{lem:step-003-exact-center-legality}\).** Under the two assumptions and accepted dependency stated in that lemma, \(R^0_{\mathcal D,h}\) is a particular deterministic member of \(\mathfrak R_{A,\tau}(\mathcal D,h)\subseteq\mathfrak R_A^{\mathrm{all}}\), with zero validity deviation. Proposition~\(\ref{prop:step-003-exact-correlation}\) uses this result to invoke the universal guarantee for this one rule and to place its mean response in the fixed generating family.
5. **Exact signed correlation, Proposition~\(\ref{prop:step-003-exact-correlation}\).** Under its explicitly stated assumptions and accepted dependency, every distribution-target pair has \(F_{R^0}\in K_A\) and exact correlation at least \(\rho\). Proposition~\(\ref{prop:step-003-nonzero-rank}\) instantiates this result with point masses. No claim from the diagnostic global proof or from another nondependency step is used.
6. **Point-mass zero-rank exclusion, Proposition~\(\ref{prop:step-003-nonzero-rank}\).** Under its three stated primitive assumptions, the accepted mean-response-space dependency, and Proposition~\(\ref{prop:step-003-exact-correlation}\), nonempty \(\mathcal X\) and \(\mathcal H\) let one instantiate \(\mathcal D=\delta_{x_0}\), obtaining a nonzero raw response in \(V_A\) and hence \(r_A\ge1\). Its assumptions are discharged by the point-mass clause in the basic setup, the exact correlation proposition, and the accepted identity \(r_A=\dim V_A\). The target-step assembly uses precisely this boundary conclusion and nothing stronger.

## Local Derivation

### unit_001: lemma

**Lemma (Exact-center legality under the public complete-rule convention).**
\(\label{lem:step-003-exact-center-legality}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:adaptive-sq-interface}\), and accepted Lemma~\(\ref{lem:step-001-complete-rules}\), for every \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\), define on every admitted public query-bearing history
\[
(q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t)
\]
the reply
\[
R^0_{\mathcal D,h}(q_1,v_1,\ldots,q_t)
:=\mathbb E_{x\sim\mathcal D}q_t(x,h(x)).
\]
Then \(R^0_{\mathcal D,h}\) is a deterministic complete public-transcript response rule in \(\mathfrak R_A^{\mathrm{all}}\) and
\[
R^0_{\mathcal D,h}\in\mathfrak R_{A,\tau}(\mathcal D,h).
\]
Its validity deviation is exactly zero at every round reached by every seed. If \(m=0\), then \(R^0_{\mathcal D,h}\) is the unique empty response rule and the validity assertion is vacuous.

**Proof / justification.**
Fix \(\mathcal D\) and \(h\). At any admitted public query-bearing history, the displayed current query \(q_t\) is a bounded measurable map with values in \([-1,1]\). The setting's measurability convention therefore makes
\(\mathbb E_{x\sim\mathcal D}q_t(x,h(x))\) well-defined, and boundedness gives
\[
-1\le \mathbb E_{x\sim\mathcal D}q_t(x,h(x))\le1.
\]
Because \(\tau>0\),
\[
[-1,1]\subseteq[-1-\tau,1+\tau]=I_\tau.
\]
Thus the formula assigns an admissible reply to every admitted history, including histories not reached by a particular seed or preceding reply path.

For fixed \((\mathcal D,h)\), the formula is deterministic. Its only history input is the public transcript and, in particular, the public query \(q_t\); it has no hidden-seed input. Hence accepted Lemma~\(\ref{lem:step-001-complete-rules}\) identifies it as a deterministic complete public-transcript rule in \(\mathfrak R_A^{\mathrm{all}}\).

Now fix any seed and any round reached when that seed interacts with this rule. At the reached query \(q_t\), the reply is its population center itself, so
\[
\left|
R^0_{\mathcal D,h}(q_1,v_1,\ldots,q_t)
-\mathbb E_{x\sim\mathcal D}q_t(x,h(x))
\right|=0\le\tau.
\]
This check holds separately on every reached path for every seed. Therefore the rule is \((\mathcal D,h,\tau)\)-valid. No error accumulates over the at most \(m\) rounds: every per-round deviation is zero.

If \(m=0\), there is no query-bearing history on which to assign a value. Accepted Lemma~\(\ref{lem:step-001-complete-rules}\) gives the unique empty rule, so \(R^0_{\mathcal D,h}\) is that rule and validity has no reached round to check. This also covers immediate stopping without introducing a phantom oracle reply. \(\square\)

### unit_002: proposition

**Proposition (Exact seed-averaged correlation from the every-valid-rule guarantee).**
\(\label{prop:step-003-exact-correlation}\)
Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:universal-adversarial-guarantee}\), accepted Proposition~\(\ref{prop:step-001-mean-response-space}\), and Lemma~\(\ref{lem:step-003-exact-center-legality}\), for every \(\mathcal D\in\mathcal P(\mathcal X)\) and \(h\in\mathcal H\),
\[
F_{R^0_{\mathcal D,h}}
\in\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
\subseteq K_A\subseteq V_A
\]
and
\[
\begin{aligned}
\mathbb E_{x\sim\mathcal D}
  [h(x)F_{R^0_{\mathcal D,h}}(x)]
&=1-2\,\mathbb E_{U\sim\mu_A}
  \mathcal L_{\mathcal D,h}(g_{U,R^0_{\mathcal D,h}})\\
&\ge1-2\varepsilon=\rho>\frac12.
\end{aligned}
\]
The accuracy expectation is solely over the learner seed. No distribution over response policies and no favorable seed or arbitrary valid-rule selection is introduced.

**Proof / justification.**
Lemma~\(\ref{lem:step-003-exact-center-legality}\) gives
\(R^0_{\mathcal D,h}\in\mathfrak R_A^{\mathrm{all}}\). Accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) therefore defines its seed average and puts it in the raw generating family for \(V_A\). By the setting definition
\[
K_A=\overline{\operatorname{conv}}
\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
\quad\text{inside }V_A,
\]
every raw generator belongs to \(K_A\), proving the displayed membership. This uses no compactness claim and no result from `step_002`.

The setting's measurability convention and Assumption~\(\ref{assump:adaptive-sq-interface}\) make the bounded function
\((u,x)\mapsto h(x)g_{u,R^0_{\mathcal D,h}}(x)\) measurable for the displayed expectations. Applying the bounded Fubini theorem restated above gives
\[
\begin{aligned}
\mathbb E_{x\sim\mathcal D}
 [h(x)F_{R^0_{\mathcal D,h}}(x)]
&=\int_{\mathcal X}h(x)
  \left(\int_{\Omega_A}g_{u,R^0_{\mathcal D,h}}(x)\,\mu_A(du)\right)
  \mathcal D(dx)\\
&=\int_{\Omega_A}
  \left(\int_{\mathcal X}h(x)g_{u,R^0_{\mathcal D,h}}(x)\,
  \mathcal D(dx)\right)\mu_A(du).
\end{aligned}
\]
For every fixed \((u,x)\), both \(h(x)\) and
\(g_{u,R^0_{\mathcal D,h}}(x)\) lie in \(\{-1,+1\}\), so the pointwise identity
\[
h(x)g_{u,R^0_{\mathcal D,h}}(x)
=1-2\mathbf 1\{g_{u,R^0_{\mathcal D,h}}(x)\ne h(x)\}
\]
holds in both the correct-label and incorrect-label cases. Integrating first over \(x\) yields
\[
\int_{\mathcal X}h(x)g_{u,R^0_{\mathcal D,h}}(x)\,\mathcal D(dx)
=1-2\mathcal L_{\mathcal D,h}(g_{u,R^0_{\mathcal D,h}}).
\]
The outer seed integral consequently gives the exact identity
\[
\mathbb E_{x\sim\mathcal D}[h(x)F_{R^0_{\mathcal D,h}}(x)]
=1-2\mathbb E_{U\sim\mu_A}
\mathcal L_{\mathcal D,h}(g_{U,R^0_{\mathcal D,h}}).
\]

Lemma~\(\ref{lem:step-003-exact-center-legality}\) proves that this particular deterministic complete rule is valid. The universal quantifier in Assumption~\(\ref{assump:universal-adversarial-guarantee}\) therefore applies to it and gives
\[
\mathbb E_{U\sim\mu_A}
\mathcal L_{\mathcal D,h}(g_{U,R^0_{\mathcal D,h}})
\le\varepsilon.
\]
Substitution, with no term discarded, gives
\[
1-2\mathbb E_U\mathcal L_{\mathcal D,h}(g_{U,R^0})
\ge1-2\varepsilon=\rho>\frac12.
\]
Thus exact-center replies are used only to select one rule already covered by the every-valid-rule premise; they do not replace that premise by an exact-expectation oracle assumption. Tolerance creates zero residual. If \(m=0\), the same calculation uses the unique empty rule and contains no query-round step. If \(\varepsilon=0\), nonnegativity of loss and the universal bound force its seed expectation to be zero, so the correlation is exactly \(1\), not merely positive. \(\square\)

### unit_003: proposition

**Proposition (Point-mass exclusion of the zero-rank branch).**
\(\label{prop:step-003-nonzero-rank}\)
Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:universal-adversarial-guarantee}\), accepted Proposition~\(\ref{prop:step-001-mean-response-space}\), and Proposition~\(\ref{prop:step-003-exact-correlation}\), if \(\mathcal X\ne\varnothing\) and \(\mathcal H\ne\varnothing\), then for every \(x_0\in\mathcal X\) and \(h\in\mathcal H\),
\[
h(x_0)F_{R^0_{\delta_{x_0},h}}(x_0)\ge\rho>0.
\]
Consequently \(V_A\ne\{0\}\) and \(r_A\ge1\); in particular, \(r_A=0\) is incompatible with all premises in the nonempty-domain, nonempty-class regime.

**Proof / justification.**
When \(\mathcal X\ne\varnothing\), the basic setup makes the point mass \(\delta_{x_0}\) an available member of \(\mathcal P(\mathcal X)\). Proposition~\(\ref{prop:step-003-exact-correlation}\), applied with \(\mathcal D=\delta_{x_0}\), gives
\[
\begin{aligned}
h(x_0)F_{R^0_{\delta_{x_0},h}}(x_0)
&=\mathbb E_{x\sim\delta_{x_0}}
  [h(x)F_{R^0_{\delta_{x_0},h}}(x)]\\
&\ge\rho>\frac12>0.
\end{aligned}
\]
Hence \(F_{R^0_{\delta_{x_0},h}}\) is not the zero function. The same proposition puts this function in \(V_A\), so \(V_A\) contains a nonzero vector. Accepted Proposition~\(\ref{prop:step-001-mean-response-space}\) identifies \(r_A\) with \(\dim V_A\), and therefore \(r_A\ge1\).

If \(m=0\), Lemma~\(\ref{lem:step-003-exact-center-legality}\) identifies every exact-center rule above with the unique empty rule; the point-mass correlation and nonzero-rank conclusion still follow without a response round. If \(\mathcal X=\varnothing\), no point mass is invoked and the eventual pointwise sign condition is vacuous. If \(\mathcal H=\varnothing\), no target is selected and the target-indexed conclusion is vacuous. Thus the rank exclusion is asserted exactly on, and only on, the nonempty branch where a zero score would obstruct the required signs. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-003-exact-center-legality}\) defines the exact-center assignment on every admitted public query-bearing history, proves that it is deterministic, complete, and public-transcript based, and checks zero deviation on every round reached by every seed. Because it is a particular member of the full valid-rule family, rather than a favorable rule chosen outside that family, the every-valid-policy quantifier remains unchanged. The same lemma handles arbitrary \(\tau>0\) and the unique empty rule at \(m=0\).

Proposition~\(\ref{prop:step-003-exact-correlation}\) places that rule's seed-averaged response in the raw generating family and hence in the same fixed body \(K_A\) for every \((\mathcal D,h)\). Bounded Fubini and the binary signed-loss identity give the exact equality
\[
\mathbb E_{\mathcal D}[hF_{R^0}]
=1-2\mathbb E_U\mathcal L_{\mathcal D,h}(g_{U,R^0}),
\]
after which the universal guarantee gives the unchanged threshold \(\rho=1-2\varepsilon\). The calculation averages over the learner seed only in the accuracy premise and introduces neither oracle-policy randomness nor a tolerance term.

Finally, Proposition~\(\ref{prop:step-003-nonzero-rank}\) applies the same exact statement to every available point mass. On a nonempty domain with a nonempty target class it obtains a nonzero generator of \(V_A\), proving \(r_A\ge1\); empty-domain and empty-class branches remain vacuous. These three named results establish every clause of the binding target step and export the exact per-distribution fixed-body witness and zero-rank boundary fact required downstream.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\) through the exact threshold \(\rho=1-2\varepsilon\); \(m\) and \(\tau\) appear in the fixed-horizon legality interface, with identically zero tolerance defect; \(r_A\) appears only in the exact nonzero-rank boundary conclusion.
- Hidden constants may depend on: None. There are no hidden constants.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,A,\mu_A,m,\tau,\varepsilon,\mathcal D,h,R,U\), response precision, or domain cardinality.
- Fixed quantities: For one invocation, \(A,\mu_A,m,\tau\), and the already constructed all-rule mean-response space are fixed before \(\mathcal D,h\) and the exact-center rule are instantiated. The statement then holds for every \(\mathcal D\) and \(h\).
- Probability mode: Deterministic exact expectation statement. The learning guarantee averages only over \(U\); \(\mathbb E_{x\sim\mathcal D}\) is a population integral. There is no high-probability event, response-policy distribution, confidence parameter, conditional event, or selected seed.
- Horizon mode: Fixed finite upper horizon \(m\in\mathbb N_0\). Validity is checked at every reached round and every seed path; no all-time or horizon-uniform upgrade is made.
- Norm mode: Scalar population correlation \(\mathbb E_{\mathcal D}[hF]\), with the point-mass specialization giving a pointwise signed value. No norm conversion is used.
- Admissibility conditions and auxiliary tolerances: \(\tau>0\), \(m\in\mathbb N_0\), and \(\varepsilon\in[0,1/4)\). There is no auxiliary tolerance, and no upper bound on \(\tau\) is introduced.
- Term absorption or simplification inequalities: None. The complete quantitative step is the displayed exact identity followed by
  \[
  1-2\mathbb E_U\mathcal L
  \ge1-2\varepsilon=\rho.
  \]
  The tolerance contribution is exactly zero rather than absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The proposition exports the exact per-distribution lower bound \(\rho\) to the finite minimax step; no approximation or confidence conversion is required.
- Baseline-reduction check: At \(\varepsilon=0\), nonnegative loss and \(\mathbb E_U\mathcal L\le0\) give correlation exactly \(1\). At \(m=0\), the unique empty rule yields the same identity without any query-round lemma. Every \(\tau>0\) is covered with zero response deviation. For each allowed \(\varepsilon<1/4\), \(\rho>1/2\) remains strict; the excluded endpoint \(\varepsilon=1/4\) is not silently added.

## Blockers

None

## Notation And Assumption Notes

- \(\rho=1-2\varepsilon\) and \(I_\tau=[-1-\tau,1+\tau]\) are setting-defined, `public-facing` expressions. No new margin, slack, or tolerance parameter is introduced.
- \(R^0_{\mathcal D,h}\) is the minimal `public-facing` downstream witness. It is defined from the setting objects \(\mathcal D,h\) and the current public query, and Lemma~\(\ref{lem:step-003-exact-center-legality}\) proves its completeness, all-rule membership, and validity. Its dependence on \((\mathcal D,h)\) does not change the already fixed family \(\mathfrak R_A^{\mathrm{all}}\), space \(V_A\), body \(K_A\), or feature map.
- \(F_{R^0_{\mathcal D,h}}\) uses the accepted dependency's existing seed-average notation and is the `public-facing` function consumed downstream. Proposition~\(\ref{prop:step-003-exact-correlation}\) proves both its fixed-body membership and its exact correlation; neither fact is assumed.
- \(K_A\) is a setting-defined fixed body. This step uses only its defining raw-family inclusion. It does not assume or use compactness, evaluation continuity, or any artifact proving those properties.
- \(\delta_{x_0}\) is an `appendix-local` specialization of the setting's available point-mass laws. It is used only to derive the nonzero-rank boundary and introduces no distributional assumption.
- \(\mathbf 1\{g\ne h\}\) is `proof-local` indicator notation for the loss event. The identity relating it to \(hg\) is checked pointwise before integration.
- Constant provenance: no new constant, radius, threshold, rate, or bounded quantity is introduced. The query bound \([-1,1]\), the tolerance interval \(I_\tau\), \(\varepsilon\), and \(\rho\) come directly from the setting. The zero tolerance residual is proved in Lemma~\(\ref{lem:step-003-exact-center-legality}\), and the exact factor \(2\varepsilon\) is derived in Proposition~\(\ref{prop:step-003-exact-correlation}\).
- Assumption provenance: the complete all-rule family, \(F_R\), \(V_A\), and \(r_A\) are accepted derived objects from `step_001`; exact-center validity is a derived generated condition proved in Lemma~\(\ref{lem:step-003-exact-center-legality}\); fixed-body membership and correlation are proved in Proposition~\(\ref{prop:step-003-exact-correlation}\); and nonzero rank is proved in Proposition~\(\ref{prop:step-003-nonzero-rank}\). No generated event, stability condition, recurrence, boundedness invariant, or local-validity condition is promoted to a primitive assumption.
- Expectation and measurability mode: the population center and loss use \(\mathcal D\), every seed average uses the fixed law \(\mu_A\), and bounded Fubini is applied only after the setting's joint measurability convention and boundedness are recorded. There is no expectation over response rules, no oracle randomness, and no interchange involving a supremum, infimum, or adaptive limit.
- Boundary provenance: \(m=0\) is discharged by the accepted unique-empty-rule output and the same seed/loss identity; nonempty \(\mathcal X,\mathcal H\) are used only to select a point mass and target for the rank exclusion; if either is empty, the relevant quantifier is vacuous and no nonexistent point or distribution is selected.
- Diagnostic boundary: `global_proof.md` and `global_proof_review.md` were not consulted. No diagnostic statement, nondependency step artifact, or prior branch is used as evidence, an assumption source, a cited result, or authority to alter the target claim.
