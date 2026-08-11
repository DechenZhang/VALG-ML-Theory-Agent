# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Construct \(\mathfrak R_A^{\mathrm{all}},F_R,V_A,r_A\), a fixed basis, and \(\varphi_A\); prove nonemptiness and exact pre-instance independence, including the empty-rule convention at \(m=0\).
- Depends on: None.
- Assumptions used: Primitive `assump:parameter-regime`, `assump:adaptive-sq-interface`, and `assump:mean-response-rank`.
- Technical challenge: Keep complete-rule quantifiers public-transcript based and distinguish the mean-response span from individual terminal predictors; cover empty and zero-query branches.
- Intended proof tool or cited result: Direct current-notation construction and finite-dimensional basis selection; the exact convention and raw-assumption path are fixed in the accepted mechanism witness.
- Output target: One fixed finite-dimensional response space and feature map, before \(\mathcal D,h,R,U\).
- Rate objective: R1, retaining the exact exposed \(B,k,m,\tau\) dependence and the \(m=0\) specialization.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), and fixed numerical \(B,k\ge 1\). In particular, \(I_\tau=[-1-\tau,1+\tau]\) is nonempty and contains \(0\).
  - `assump:adaptive-sq-interface`: the fixed randomized learner \(A\), seed space \(\Omega_A\), seed law \(\mu_A\), public adaptive-query convention, at-most-\(m\) stopping rule, and binary terminal output are fixed; interaction with every deterministic complete response rule is well-defined; all seed averages used below exist.
  - `assump:mean-response-rank`: the span of the seed-averaged terminal responses over all deterministic complete response rules has rank
    \[
    r_A\le B\bigl(1+m/\tau^2\bigr)^k.
    \]
- Accepted dependency artifacts: None. This is the root proof step.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.

`assump:universal-adversarial-guarantee` is not used as an assumption to prove this step's construction, rank interface, or coordinate map. Nonemptiness, bounded seed averages, finite dimensionality, the basis, and pre-instance independence are derived here from the three listed primitive conditions; none is assumed as a generated-object condition. The proof-local span-separation example below directly verifies the universal guarantee only to show that the distinction persists under the full theorem contract.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:adaptive-sq-interface}\), the set of total \(I_\tau\)-valued assignments on all public query-bearing histories admitted by \(A\) is exactly \(\mathfrak R_A^{\mathrm{all}}\), is nonempty, and yields a well-defined terminal predictor for every seed; when \(m=0\), it consists of the unique empty rule. | Constructs the complete public-transcript family, proves nonemptiness, and fixes the zero-query convention without using an instance or a validity condition. |
| `unit_002` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), and Lemma~\(\ref{lem:step-001-complete-rules}\), the functions \(F_R\), space \(V_A\), and rank \(r_A\) are well-defined, \(F_R(x)\in[-1,1]\), and \(r_A\le B(1+m/\tau^2)^k<\infty\); the construction averages over the seed before taking a span and gives no rank bound for seed-specific terminal predictors. It also gives \(V_A=\{0\}\) on the empty domain and the singleton-generator convention at \(m=0\). | Produces the exact finite-dimensional mean-response space, preserves the explicit rank dependence, and prevents substitution of the terminal-predictor span. |
| `unit_003` | proposition | Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), and Proposition~\(\ref{prop:step-001-mean-response-space}\), a basis of \(V_A\) can be selected once before every \(\mathcal D,h\), selected response rule, and realized seed; the resulting \(\varphi_A\) has the exact identity \(f(x)=\langle a(f),\varphi_A(x)\rangle\) for every \(f\in V_A\), including the zero-dimensional convention. Empty-domain and empty-class branches are covered. | Produces the fixed common basis and feature map and proves the required pre-instance quantifier order and zero-residual coordinate interface. |

Atomic step = no. Nonemptiness of the complete-rule family, finite rank of the seed-averaged space, and pre-instance basis selection are logically independent subclaims, and the distinction from the seed-specific terminal span requires a separate scope audit.

## Cited Result Applications

No external paper result, standard theorem requiring citation, or dependency-step result is used.

The following local results are used later in this step and are restated here in current notation.

1. **Complete public response rules and zero-query convention, Lemma~\(\ref{lem:step-001-complete-rules}\).** Under `assump:parameter-regime` and `assump:adaptive-sq-interface`, total assignments from the fixed set of admitted public query-bearing histories to \(I_\tau\) form a nonempty complete-rule family; at \(m=0\) this is the singleton containing the empty assignment. The assumptions are discharged directly by \(0\in I_\tau\), the at-most-\(m\) interface, and its well-defined-interaction clause. This result is used to define every \(g_{u,R}\) and \(F_R\) in Proposition~\(\ref{prop:step-001-mean-response-space}\).
2. **Finite seed-averaged response space, Proposition~\(\ref{prop:step-001-mean-response-space}\).** Under the three allowed primitive assumptions and Lemma~\(\ref{lem:step-001-complete-rules}\), averaging each binary \(g_{u,R}\) over \(\mu_A\), then spanning over \(R\), gives a vector space of dimension exactly \(r_A\le B(1+m/\tau^2)^k<\infty\). The interface supplies existence of the averages, and `assump:mean-response-rank` supplies the exact rank inequality. This result is used for basis selection in Proposition~\(\ref{prop:step-001-fixed-coordinates}\).

The elementary basis and coordinate facts used in `unit_003` are proved there directly from the definition of a finite-dimensional basis; no unverified result is imported.

## Local Derivation

### unit_001: lemma

**Lemma (Complete public response rules and the zero-query convention).**
\(\label{lem:step-001-complete-rules}\)
Under Assumptions~\(\ref{assump:parameter-regime}\) and~\(\ref{assump:adaptive-sq-interface}\), let \(\mathscr Q_A\) be the set of all public query-bearing histories
\[
\eta_t=(q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t),
\qquad 1\le t\le m,
\]
admitted by the fixed learner for some seed and some preceding public reply sequence in \(I_\tau\), including histories not reached for a particular seed or reply sequence. Then
\[
\mathfrak R_A^{\mathrm{all}}=I_\tau^{\mathscr Q_A}
=\{R:\mathscr Q_A\to I_\tau\}
\]
is exactly the family of deterministic complete public-transcript response rules. It is nonempty. For every \(R\in\mathfrak R_A^{\mathrm{all}}\) and \(u\in\Omega_A\), interaction stops after at most \(m\) queries and defines \(g_{u,R}:\mathcal X\to\{-1,+1\}\). If \(m=0\), then \(\mathscr Q_A=\varnothing\) and
\[
\mathfrak R_A^{\mathrm{all}}=\{R_\varnothing\},
\]
where \(R_\varnothing\) is the unique empty response rule.

**Proof / justification.**
The set \(\mathscr Q_A\) is determined solely by the fixed public interaction interface: its elements contain public queries and public replies, but no hidden seed coordinate. A total function on \(\mathscr Q_A\) therefore observes the seed only through information already present in the public transcript. Because its domain contains every admitted query-bearing history, not only the histories reached along one seed path, such a function is complete in exactly the sense of the setting. Conversely, every deterministic complete response rule assigns one value in \(I_\tau\) to every element of \(\mathscr Q_A\), so it is an element of \(I_\tau^{\mathscr Q_A}\). This proves the asserted equality of families.

By Assumption~\(\ref{assump:parameter-regime}\), \(\tau>0\), and hence
\[
0\in[-1-\tau,1+\tau]=I_\tau.
\]
Thus the assignment \(R^{\mathrm{zero}}(\eta)=0\) for all \(\eta\in\mathscr Q_A\) is a deterministic complete rule. This only proves all-rule nonemptiness; no claim is made that \(R^{\mathrm{zero}}\) is valid for a later learning instance.

For fixed \(u\) and \(R\), the learner selects its next action from \(u\) and the preceding public transcript. Whenever it issues a query, totality of \(R\) supplies the next reply. Assumption~\(\ref{assump:adaptive-sq-interface}\) makes this recursion well-defined and forces stopping after at most \(m\) queries with a binary predictor \(g_{u,R}\).

If \(m=0\), there is no index \(t\) with \(1\le t\le m\), so \(\mathscr Q_A=\varnothing\). There is exactly one function from the empty set to \(I_\tau\), namely the empty assignment \(R_\varnothing\). The learner makes no query, so no query-round argument or reply is invoked; its seed-dependent terminal output is still the well-defined \(g_{u,R_\varnothing}\). \(\square\)

### unit_002: proposition

**Proposition (Finite seed-averaged response space and its exact scope).**
\(\label{prop:step-001-mean-response-space}\)
Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), and Lemma~\(\ref{lem:step-001-complete-rules}\), define for every \(R\in\mathfrak R_A^{\mathrm{all}}\)
\[
F_R(x):=\int_{\Omega_A}g_{u,R}(x)\,\mu_A(du),
\qquad
V_A:=\operatorname{span}_{\mathbb R}
\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\},
\qquad
r_A:=\dim V_A.
\]
Then every \(F_R\) is a well-defined member of \([-1,1]^{\mathcal X}\), and
\[
r_A\le B\bigl(1+m/\tau^2\bigr)^k<\infty.
\]
This is an average-before-span construction and does not assert or imply a bound by \(r_A\) on the span of the seed-specific functions \(g_{u,R}\). If \(\mathcal X=\varnothing\), then \(V_A=\{0\}\) and \(r_A=0\). If \(m=0\), then
\[
V_A=\operatorname{span}_{\mathbb R}\{F_{R_\varnothing}\},
\qquad r_A\in\{0,1\},
\qquad r_A\le B.
\]

**Proof / justification.**
Lemma~\(\ref{lem:step-001-complete-rules}\) supplies a terminal binary function \(g_{u,R}\) for every seed and every complete rule. Assumption~\(\ref{assump:adaptive-sq-interface}\) supplies the measurability and existence needed for the displayed seed integral. Pointwise,
\[
-1\le g_{u,R}(x)\le 1,
\]
so monotonicity of integration against the probability law \(\mu_A\) gives
\[
-1\le \int_{\Omega_A}g_{u,R}(x)\,\mu_A(du)\le 1.
\]
Thus \(F_R:\mathcal X\to[-1,1]\) is well-defined. Taking finite real linear combinations of these functions defines the vector subspace \(V_A\subseteq\mathbb R^{\mathcal X}\).

Assumption~\(\ref{assump:mean-response-rank}\) applies to exactly this space and gives
\[
r_A=\dim\operatorname{span}_{\mathbb R}
\left\{x\mapsto\int_{\Omega_A}g_{u,R}(x)\,\mu_A(du):
R\in\mathfrak R_A^{\mathrm{all}}\right\}
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
The right-hand side is finite because \(B,k\) are finite real numbers, \(m\in\mathbb N_0\), and \(\tau>0\). Hence \(r_A\in\mathbb N_0\), rather than \(r_A=\infty\).

For contrast only, define the proof-local seed-specific terminal span
\[
W_A^{\mathrm{seed}}
:=\operatorname{span}_{\mathbb R}
\{g_{u,R}:u\in\Omega_A,\ R\in\mathfrak R_A^{\mathrm{all}}\}.
\]
The defining operations are different:
\[
V_A=\operatorname{span}_{R}
\left\{\int g_{u,R}\,d\mu_A(u)\right\},
\qquad
W_A^{\mathrm{seed}}=\operatorname{span}_{u,R}\{g_{u,R}\}.
\]
Neither the definition of \(V_A\) nor Assumption~\(\ref{assump:mean-response-rank}\) replaces the seed integral by a choice of \(u\). In particular, no individual \(g_{u,R}\) is claimed to lie in \(V_A\), and no finiteness or cardinality assertion about \(W_A^{\mathrm{seed}}\) is used downstream.

The distinction can be arbitrarily large even inside the full conditional theorem contract. Fix any integer \(N\ge5\), take \(\mathcal X_N=\{1,\ldots,N\}\), \(m=0\), \(B=k=1\), any \(\tau>0\), and \(\varepsilon=1/N<1/4\). Let \(\mathcal H=\{h_+\}\), where \(h_+(i)=+1\) for every \(i\), let \(U\) be uniform on \(\{1,\ldots,N\}\), and let the zero-query learner with seed \(j\) return
\[
g_{j,R_\varnothing}(i)
=\begin{cases}
-1,&i=j,\\
+1,&i\ne j.
\end{cases}
\]
The unique mean response is the nonzero constant function
\[
F_{R_\varnothing}(i)=\frac{N-1}{N}-\frac1N=1-\frac2N,
\]
so \(r_A=1\) and the mean-response-rank certificate holds with equality. On the other hand, the \(N\) terminal predictors are linearly independent. Indeed, if \(\sum_{j=1}^Nc_jg_{j,R_\varnothing}=0\) and \(S=\sum_{j=1}^Nc_j\), then evaluation at \(i\) gives \(S-2c_i=0\) for every \(i\). Hence every \(c_i=S/2\), so \(S=NS/2\). Since \(N\ne2\), this forces \(S=0\) and then every \(c_i=0\). Therefore \(\dim W_A^{\mathrm{seed}}=N\) while \(r_A=1\). As \(N\) is arbitrary, the primitive mean-response-rank certificate supplies no seed-specific terminal-rank bound. This example is only a scope check and is not an assumption used by the theorem.

For completeness, this example also obeys the universal premise that is not otherwise used in this step. For every probability law \(\mathcal D\) on \(\mathcal X_N\), the unique response rule is \(R_\varnothing\), and
\[
\mathbb E_U\mathcal L_{\mathcal D,h_+}(g_{U,R_\varnothing})
=\frac1N\sum_{j=1}^N\mathcal D(\{j\})
=\frac1N=\varepsilon.
\]
Thus the gap between the two spans is compatible with every primitive condition, not a consequence of dropping the learning guarantee.

If \(\mathcal X=\varnothing\), there is only one real-valued function on \(\mathcal X\), the empty function, which is the zero vector of \(\mathbb R^{\mathcal X}\). Every \(g_{u,R}\) and \(F_R\) is this function, so \(V_A=\{0\}\) and \(r_A=0\).

If \(m=0\), Lemma~\(\ref{lem:step-001-complete-rules}\) gives the single rule \(R_\varnothing\), so \(V_A\) is the span of its one seed average and has dimension zero or one. The primitive bound specializes without loss or asymptotic notation to
\[
r_A\le B\bigl(1+0/\tau^2\bigr)^k=B.
\]
\(\square\)

### unit_003: proposition

**Proposition (One pre-instance basis and exact coordinate map).**
\(\label{prop:step-001-fixed-coordinates}\)
Under Assumptions~\(\ref{assump:parameter-regime}\), \(\ref{assump:adaptive-sq-interface}\), and~\(\ref{assump:mean-response-rank}\), and Proposition~\(\ref{prop:step-001-mean-response-space}\), there is a basis \(\psi_1,\ldots,\psi_{r_A}\) of \(V_A\), chosen once with the empty basis when \(r_A=0\), such that the deterministic map
\[
\varphi_A:\mathcal X\to\mathbb R^{r_A},
\qquad
\varphi_A(x):=(\psi_1(x),\ldots,\psi_{r_A}(x)),
\]
is fixed before any distribution \(\mathcal D\), target \(h\), selected complete or valid response rule, or realized seed \(u\). For each \(f\in V_A\), its unique coordinate vector \(a(f)\in\mathbb R^{r_A}\) obeys
\[
f(x)=\langle a(f),\varphi_A(x)\rangle
\qquad\text{for every }x\in\mathcal X.
\]
This statement remains valid when \(r_A=0\), \(\mathcal X=\varnothing\), \(\mathcal H=\varnothing\), or \(m=0\).

**Proof / justification.**
Proposition~\(\ref{prop:step-001-mean-response-space}\) proves that \(V_A\) is finite-dimensional with dimension \(r_A\). By the definition of finite dimension, it admits a linearly independent spanning list of exactly \(r_A\) functions; fix any such list \(\psi_1,\ldots,\psi_{r_A}\) once. When \(r_A=0\), \(V_A=\{0\}\) and the unique basis list is empty.

For \(r_A>0\), the spanning property gives coefficients \(a(f)_1,\ldots,a(f)_{r_A}\) such that
\[
f=\sum_{j=1}^{r_A}a(f)_j\psi_j.
\]
If two coefficient vectors gave the same function, subtracting the expansions would give a linear relation among the basis functions, so linear independence makes the coefficients equal. Thus \(a(f)\) is unique. Evaluating the expansion at any \(x\in\mathcal X\) yields the exact, zero-residual identity
\[
f(x)=\sum_{j=1}^{r_A}a(f)_j\psi_j(x)
=\left\langle a(f),(\psi_1(x),\ldots,\psi_{r_A}(x))\right\rangle
=\langle a(f),\varphi_A(x)\rangle.
\]

The dependence order follows directly from the construction:
\[
(\mathcal X,A,\Omega_A,\mu_A,m,\tau,\text{complete public interface})
\longmapsto \mathscr Q_A
\longmapsto \mathfrak R_A^{\mathrm{all}}
\longmapsto \{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
\longmapsto V_A,r_A
\longmapsto (\psi_1,\ldots,\psi_{r_A}),\varphi_A.
\]
No \(\mathcal D\), target \(h\), validity constraint, selected rule, or realized seed appears as an input to this chain. The law \(\mu_A\), not a realized seed, enters the definition of every \(F_R\). Although \(V_A\) uses the entire all-rule family, it does not use a later choice of one response rule. Any later valid-rule family is, by definition, a subset of this already fixed all-rule family.

The numerical constants \(B,k\) certify that the basis list is finite through the exact inequality in Proposition~\(\ref{prop:step-001-mean-response-space}\); they do not introduce an instance-dependent choice. The construction also does not use \(\varepsilon\) or the universal performance guarantee.

If \(r_A=0\), then \(f=0\) is the only element of \(V_A\), \(a(f)\) and \(\varphi_A(x)\) are the empty vectors in \(\mathbb R^0\), and their inner product is \(0=f(x)\). If \(\mathcal X=\varnothing\), Proposition~\(\ref{prop:step-001-mean-response-space}\) forces exactly this zero-dimensional branch and there is no pointwise condition to check. If \(\mathcal H=\varnothing\), the construction is unchanged because no target class or target was used; its later target-indexed use is vacuous. If \(m=0\), the same basis is built from \(V_A=\operatorname{span}\{F_{R_\varnothing}\}\), with no query-round argument, and its dimension satisfies the exact specialization \(r_A\le B\). \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-001-complete-rules}\) constructs exactly the deterministic complete public-transcript family \(\mathfrak R_A^{\mathrm{all}}\), proves it nonempty without selecting a valid instance-dependent rule, and proves that \(m=0\) has the unique empty rule and no query-round obligation.

Proposition~\(\ref{prop:step-001-mean-response-space}\) then constructs the seed-averaged functions \(F_R\), their span \(V_A\), and its rank \(r_A\). It proves the exact finite bound
\[
r_A\le B\bigl(1+m/\tau^2\bigr)^k
\]
with no hidden constant, and it explicitly keeps the order "average over \(U\), then span over \(R\)" separate from the uncontrolled span of individual \(g_{u,R}\). It also closes the empty-domain and zero-query branches.

Finally, Proposition~\(\ref{prop:step-001-fixed-coordinates}\) fixes a basis and \(\varphi_A\) only after the all-rule mean-response space is determined and before every \(\mathcal D,h\), selected rule, or realized seed. Its identity
\[
f(x)=\langle a(f),\varphi_A(x)\rangle
\]
is exact for every \(f\in V_A\), including \(r_A=0\). The empty-class branch is vacuous but uses the same already constructed map. Together these three results prove every part of the binding `step_001` row and export one fixed finite-dimensional response space and feature map for the later proof steps.

## Explicit Rate Audit

- Exposed variables: \(r_A,B,k,m,\tau\), exactly through \(r_A\le B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None; there are no hidden constants.
- Hidden constants may not depend on: \(\mathcal X,\mathcal H,A,\mu_A,m,\tau,\varepsilon,\mathcal D,h,R,u\), response precision, or domain cardinality.
- Fixed quantities: \(B\ge1\) and \(k\ge1\) are the numerical constants specified in `assump:parameter-regime`, fixed before the learner instance and independently of \(\mathcal X,\mathcal H,m,\tau,\varepsilon,\mathcal D,h\), response rules, and learner seeds. For one theorem instance, \(\mathcal X,A,\Omega_A,\mu_A,m,\tau\), and the complete public-response interface are fixed before \(\mathcal D,h\), a selected response rule, and a realized seed.
- Probability mode: Deterministic. The seed expectation is part of the definition of \(F_R\); there is no probabilistic conclusion, confidence level, or response-policy average.
- Horizon mode: Fixed finite upper horizon \(m\in\mathbb N_0\). No horizon-uniform or all-time claim is made.
- Norm mode: Exact algebraic dimension of \(V_A\); no norm estimate is asserted in this step.
- Admissibility conditions and auxiliary tolerances: \(m\in\mathbb N_0\), \(\tau>0\), and \(B,k\ge1\). There is no auxiliary tolerance. The value of \(\tau\) is unrestricted above.
- Term absorption or simplification inequalities: None. The rank inequality is copied exactly from the primitive certificate.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact rank inequality for direct concatenation in `step_006`; no asymptotic notation or simplification is needed.
- Baseline-reduction check: At \(m=0\),
  \[
  B(1+m/\tau^2)^k=B(1+0)^k=B,
  \]
  so the exact specialization is \(r_A\le B\), with the unique empty rule and no query argument. At \(B=1,k=1\), the bound is exactly \(r_A\le1+m/\tau^2\). Empty \(\mathcal X\) gives the stronger exact identity \(r_A=0\). No specialization changes the fixed-map conclusion.

## Blockers

None

## Notation And Assumption Notes

- \(I_\tau=[-1-\tau,1+\tau]\) is a setting-defined expression. Its only local use is the directly checked fact \(0\in I_\tau\).
- \(\mathscr Q_A\) is `proof-local`. It is the set of all public query-bearing histories admitted by the fixed complete-response interface and is introduced only to write \(\mathfrak R_A^{\mathrm{all}}=I_\tau^{\mathscr Q_A}\) precisely.
- \(R^{\mathrm{zero}}\) is `proof-local`. It proves nonemptiness and is not assumed valid for any \((\mathcal D,h)\).
- \(R_\varnothing\) is `public-facing` only as the required \(m=0\) convention. Its existence and uniqueness are proved in Lemma~\(\ref{lem:step-001-complete-rules}\).
- \(\mathfrak R_A^{\mathrm{all}}\), \(F_R\), \(V_A\), \(r_A\), the basis \((\psi_j)_{j=1}^{r_A}\), and \(\varphi_A\) are `public-facing` outputs needed by downstream proof steps and the final theorem.
- \(W_A^{\mathrm{seed}}\) is `proof-local`. It is used only to audit the scope of `assump:mean-response-rank` and is not exported, assumed finite, or consumed later.
- The generic coordinate vector \(a(f)\) is `appendix-local`. Its zero-residual identity is exported, but the main theorem need only instantiate coordinates at its eventual target witness.
- The arbitrary-\(N\) zero-query example and its symbols \(N,\mathcal X_N,h_+,i,j,S,c_j\) are `proof-local`; they demonstrate that mean-response rank one is compatible with arbitrarily large seed-specific terminal rank even under the full universal guarantee.
- Constant provenance: no new theorem-facing constant, radius, margin, threshold, rate, or boundedness parameter is introduced. The displayed bound uses only the setting quantities \(B,k,m,\tau\). In the proof-local separation example, \(N\ge5\) is an arbitrary finite domain size and \(\varepsilon=1/N\) is an explicit permitted instantiation of the setting parameter, not a theorem hypothesis or exported constant. The pointwise bound \(|F_R(x)|\le1\) is proved in Proposition~\(\ref{prop:step-001-mean-response-space}\) from binary terminal outputs and the probability-law property of \(\mu_A\).
- Assumption provenance: complete-rule nonemptiness and the zero-query convention are proved in `unit_001`; existence and boundedness of seed averages and finite rank are proved in `unit_002`; basis existence, coordinate equality, and pre-instance independence are proved in `unit_003`. No generated event, local-validity fact, stability condition, recurrence, or invariant is assumed.
- Empty regimes: \(\mathcal X=\varnothing\) implies \(V_A=\{0\}\) and \(r_A=0\). An empty \(\mathcal H\) does not force \(V_A=\{0\}\); it only makes every later target-indexed representation demand vacuous. At \(m=0\), \(\mathfrak R_A^{\mathrm{all}}\) is the singleton \(\{R_\varnothing\}\), regardless of whether the learner's seed-randomized terminal predictor is constant.
- Diagnostic boundary: the paired `global_proof.md` and `global_proof_review.md` were checked against their live hashes, and `global_proof_review.md` has status `ACCEPTED`. The step-relevant planning guidance used was the construction order "all complete rules, then seed averages, then span, then basis" and the zero-rule/empty-rule boundary split. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the binding target claim.
