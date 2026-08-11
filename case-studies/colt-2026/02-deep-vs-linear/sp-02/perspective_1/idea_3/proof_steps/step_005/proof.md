# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Fix \(\phi(x)=(g_1(x),\ldots,g_L(x))\); for every target use `step_004` to prove \(h(x)\langle w_h,\phi(x)\rangle\ge1-2\varepsilon>1/2>0\) for all \(x\), then derive \(\operatorname{dc}(\mathcal H)\le L\le B(1+m/\tau^2)^k\).  Handle empty \(\mathcal X/\mathcal H\), \(m=0\), \(L=1\), and duplicate coordinates.
- Depends on: `step_001`, `step_004`
- Assumptions used: Primitive `assump:sq-parameter-regime` and `assump:canonical-rounded-output-catalog`; derived fixed catalog data from `step_001` and global weights from `step_004`
- Technical challenge: Preserve pre-instance map independence, strict signs, and every exposed rate variable with no hidden constants or silent boundary loss.
- Intended proof tool or cited result: Exact coordinate algebra and the definition of deterministic dimension complexity; direct substitution of the primitive catalog inequality.
- Output target: Full conditional canonical-policy catalog theorem.
- Rate objective: R1 and R2: exact public margin and dimension inequalities, no hidden constants, and exact \(m=0,\varepsilon=0,L=1,B=1,k=1\) specializations.
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), and \(k\in\mathbb N\) with \(k\ge1\). In particular, the primitive range of \(\varepsilon\) implies the strict scalar comparison \(1-2\varepsilon>1/2>0\).
  - `assump:canonical-rounded-output-catalog`: the finite ordered catalog \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) is fixed before the current distribution, target, oracle interaction, and learner tape and obeys the literal bound
    \[
    1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k.
    \]
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-canonical-membership}: the exact ordered catalog interface from `step_001` is the same pre-instance catalog \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\), and every actual canonical terminal predictor equals one of these functions on all of \(\mathcal X\). This step consumes only the exact catalog identity and pre-instance coordinate interface; it does not use an output under another policy.
  - Accepted Proposition~\ref{prop:step-004-global-separator}: for every \(h\in\mathcal H\), there exists \(w_h\in\Delta_L\) such that
    \[
    \forall x\in\mathcal X,
    \qquad
    h(x)\sum_{i=1}^L w_{h,i}g_i(x)
    \ge \rho_\varepsilon=1-2\varepsilon.
    \]
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `fb5c2d92a2d984dd463c645b754855941dab66c0929d77cf76abbfe12243d787`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `7f9222d12bff6e89ec48b2bf2a2782e06701a778fd72cbb776672dfbc833eff9`, status `ACCEPTED` for sketch attempt 1 and unit attempt 1.
  - `perspective_1/idea_3/proof_steps/step_004/proof.md`, SHA-256 `a10a6c3a302590ad0cb3b474eee0732d80467686fde0f9d53dafb0aa4fe11d7d`.
  - `perspective_1/idea_3/proof_steps/step_004/review.md`, SHA-256 `e8533b235f6be6ab8c356a01667d32fdcac457dd44fc365d6ef237dab6834c84`, status `ACCEPTED` for sketch attempt 1 and unit attempt 1.
- Binding branch artifacts:
  - `perspective_1/idea_3/setting.md`, SHA-256 `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`.
  - `perspective_1/idea_3/proof_sketch.md`, SHA-256 `ec48a538bbde2f7a738402d2625a54eecfbb48693d25bed97f9abea9f61450da`.
  - `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172`, status `ACCEPTED`.

The global weight is not promoted to a primitive assumption: it is consumed only as the accepted generated output of `step_004`. No random feature map, distribution-dependent feature map, measurable target selector, all-policy catalog, or additional probability event is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:canonical-rounded-output-catalog} and accepted Proposition~\ref{prop:step-001-canonical-membership}, the exact ordered catalog defines one pre-instance map \(\phi:\mathcal X\to\mathbb R^L\), \(\phi(x)=(g_1(x),\ldots,g_L(x))\), independent of the current \(\mathcal D,h\), policy, and tape, and every \(w\in\mathbb R^L\) satisfies \(\langle w,\phi(x)\rangle=\sum_{i=1}^Lw_i g_i(x)\) for every \(x\in\mathcal X\). | Fixes the common deterministic coordinate map and proves the zero-residual mixture-to-linear-score identity. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-004-global-separator}, and Lemma~\ref{lem:step-005-coordinate-map}, the one fixed map \(\phi\) satisfies \(\forall h\in\mathcal H\,\exists w_h\in\Delta_L\,\forall x\in\mathcal X\), \(h(x)\langle w_h,\phi(x)\rangle\ge1-2\varepsilon>1/2>0\), with only \(w_h\) depending on \(h\). | Transfers the accepted global separator through exact coordinates and supplies strict pointwise signs. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:canonical-rounded-output-catalog}, Proposition~\ref{prop:step-005-exact-signs}, and the setting definition of \(\operatorname{dc}\), one has \(\operatorname{dc}(\mathcal H)\le L\le B(1+m/\tau^2)^k\); moreover \(\operatorname{dc}(\mathcal H)=0\) if \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\), and all stated boundary specializations are exact. | Applies the exact definition, appends the primitive size inequality without simplification, and closes all degenerate and quantitative branches. |

Atomic step = no. The coordinate identity and map-independence check, the positive-margin transfer, and the definition-level dimension/rate closure are logically distinct audit obligations.

## Cited Result Applications

### Accepted dependency: exact canonical catalog interface

- Source: accepted Proposition~\ref{prop:step-001-canonical-membership} in `perspective_1/idea_3/proof_steps/step_001/proof.md`, certified by the matching `ACCEPTED` review listed above.
- Restated statement in current notation: for every distribution \(\mathcal D\), target \(h\in\mathcal H\), and tape \(r\in\Omega\), the actual canonical terminal predictor equals some member of the one ordered pre-instance catalog \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) as a function on all of \(\mathcal X\).
- Instantiated objects: exactly the ordered functions \(g_1,\ldots,g_L\) used as coordinates below. No reordering, approximation, random draw, or surrogate output is introduced.
- Required assumptions and discharge: the matching accepted review verifies pathwise canonical validity, delayed application of the primitive membership implication, exact function equality, and the catalog's pre-instance scope. This step uses that accepted output and the primitive catalog-size clause without reopening the SQ execution.
- Conclusion used: the map in Lemma~\ref{lem:step-005-coordinate-map} uses the exact fixed catalog interface exported by `step_001`, not outputs from another policy or a distribution-dependent collection.

### Accepted dependency: one global simplex separator

- Source: accepted Proposition~\ref{prop:step-004-global-separator} in `perspective_1/idea_3/proof_steps/step_004/proof.md`, certified by the matching `ACCEPTED` review listed above.
- Restated statement in current notation: for every \(h\in\mathcal H\), there is one \(w_h\in\Delta_L\) such that
  \[
  h(x)\sum_{i=1}^Lw_{h,i}g_i(x)
  \ge\rho_\varepsilon=1-2\varepsilon
  \qquad\text{for every }x\in\mathcal X.
  \]
- Instantiated objects: the same target \(h\), ordered catalog, simplex, coordinates, original domain, and threshold used in this step.
- Required assumptions and discharge: the matching accepted review verifies finite positive \(L\), compactness of the fixed simplex, relative closedness, finite feasibility, the arbitrary-family finite-intersection argument, and the empty-domain branch. This step consumes only the displayed global separator conclusion.
- Conclusion used: Proposition~\ref{prop:step-005-exact-signs} substitutes the exact coordinate identity into this unchanged pointwise inequality.

### Setting definition: deterministic exact dimension complexity

- Source: the definition in `setting.md`, not an external theorem.
- Restated statement: \(\operatorname{dc}(\mathcal H)\) is the least \(d\in\mathbb N_0\) for which one map \(\psi:\mathcal X\to\mathbb R^d\) satisfies
  \[
  \forall h\in\mathcal H\ \exists u_h\in\mathbb R^d\ \forall x\in\mathcal X,
  \qquad h(x)\langle u_h,\psi(x)\rangle>0.
  \]
- Instantiated objects: \(d=L\), \(\psi=\phi\), and \(u_h=w_h\) in the nondegenerate branch; \(d=0\) and the unique map into \(\mathbb R^0\) in the empty-class or empty-domain branches.
- Required conditions and discharge: Proposition~\ref{prop:step-005-exact-signs} supplies one common \(\phi\), a weight for each target, and strict pointwise positivity. Vacuity of the relevant universal quantifier supplies the zero-dimensional degenerate branches.
- Conclusion used: Proposition~\ref{prop:step-005-dimension-closure} obtains \(\operatorname{dc}(\mathcal H)\le L\), or the sharper equality \(\operatorname{dc}(\mathcal H)=0\) in the stated empty cases.

### Local result applications

- Lemma~\ref{lem:step-005-coordinate-map}, proved below, supplies the fixed map, its exact independence interface, and the coordinate identity. It is used by Proposition~\ref{prop:step-005-exact-signs}.
- Proposition~\ref{prop:step-005-exact-signs}, proved below, supplies the exact strict-sign certificate. It is used by Proposition~\ref{prop:step-005-dimension-closure}.
- Proposition~\ref{prop:step-005-dimension-closure}, proved below, applies the setting definition and primitive catalog inequality and supplies the final quantitative conclusion.

No external paper result or unproved standard theorem is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Exact pre-instance catalog coordinates).**
\(\label{lem:step-005-coordinate-map}\)

Statement:
Under Assumption~\ref{assump:canonical-rounded-output-catalog} and accepted Proposition~\ref{prop:step-001-canonical-membership}, let \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) be the exact ordered catalog interface and define
\[
\phi:\mathcal X\to\mathbb R^L,
\qquad
\phi(x):=(g_1(x),\ldots,g_L(x)).
\]
Then \(\phi\) is fixed before and independently of the current distribution \(\mathcal D\), target \(h\), oracle policy, and learner tape. For every \(w=(w_1,\ldots,w_L)\in\mathbb R^L\) and every \(x\in\mathcal X\),
\[
\langle w,\phi(x)\rangle
=\sum_{i=1}^Lw_i g_i(x).
\]
This identity is exact for \(L=1\), repeated catalog functions, and arbitrary finite or infinite \(\mathcal X\).

Proof / justification:
Assumption~\ref{assump:canonical-rounded-output-catalog} fixes the finite ordered list \((g_1,\ldots,g_L)\) after the protocol and \(\rho\) are fixed but before the current distribution, target, oracle interaction, or learner tape. Accepted Proposition~\ref{prop:step-001-canonical-membership} exports this same ordered catalog as an exact function-valued interface on the actual canonical executions. Therefore defining \(\phi\) uses only pre-instance catalog data; it makes no selection depending on \(\mathcal D\), \(h\), a policy, a reply, or a tape. In particular, \(\phi\) is deterministic and is not sampled from a random feature-map law.

For each \(x\in\mathcal X\), every catalog function is binary, so
\[
\phi(x)=(g_1(x),\ldots,g_L(x))\in\{-1,+1\}^L\subseteq\mathbb R^L.
\]
By the definition of the Euclidean inner product and by the definition of the coordinates of \(\phi(x)\),
\[
\langle w,\phi(x)\rangle
=\sum_{i=1}^L w_i\phi_i(x)
=\sum_{i=1}^L w_i g_i(x). \tag{1}
\]
There is no approximation or residual in (1). If two catalog functions coincide, (1) merely contains repeated equal coordinates; linear independence or distinctness is nowhere required. If \(L=1\), it reads \(\langle(w_1),(g_1(x))\rangle=w_1g_1(x)\). The calculation is pointwise and finite-dimensional, so the cardinality of \(\mathcal X\) is irrelevant. This proves the lemma.

### unit_002: proposition

**Proposition (Exact target signs from the global simplex separator).**
\(\label{prop:step-005-exact-signs}\)

Statement:
Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-004-global-separator}, and Lemma~\ref{lem:step-005-coordinate-map}, the one fixed map \(\phi\) satisfies
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\ge1-2\varepsilon>\frac12>0.
\]
The map \(\phi\) is fixed before \(\mathcal D,h\), the policy, and the tape, while the existential weight may depend on \(h\) and on no current instance object other than \(h\). The assertion includes empty \(\mathcal H\), empty \(\mathcal X\), \(L=1\), repeated coordinates, and infinite domains.

Proof / justification:
Assumption~\ref{assump:sq-parameter-regime} gives \(0\le\varepsilon<1/4\). Multiplying the strict upper bound by \(2\) and subtracting from \(1\) gives
\[
2\varepsilon<\frac12
\quad\Longrightarrow\quad
\rho_\varepsilon=1-2\varepsilon>\frac12>0. \tag{2}
\]

Fix an arbitrary \(h\in\mathcal H\). Accepted Proposition~\ref{prop:step-004-global-separator} supplies a weight \(w_h\in\Delta_L\) such that, simultaneously for every \(x\in\mathcal X\),
\[
h(x)\sum_{i=1}^Lw_{h,i}g_i(x)
\ge\rho_\varepsilon=1-2\varepsilon. \tag{3}
\]
Applying the exact identity (1) from Lemma~\ref{lem:step-005-coordinate-map} with \(w=w_h\) gives, for each such \(x\),
\[
\begin{aligned}
h(x)\langle w_h,\phi(x)\rangle
&=h(x)\sum_{i=1}^Lw_{h,i}g_i(x)\\
&\ge1-2\varepsilon\\
&>\frac12>0.
\end{aligned} \tag{4}
\]
The equality in the first line is coordinate-for-coordinate, and the inequality in the second line is exactly (3); no approximate sign or distributional exceptional set is introduced.

The catalog and hence \(\phi\) were fixed before the arbitrary target was chosen. The dependency producing \(w_h\) fixes only \(h\) and uses the already fixed catalog; no current distribution, policy, reply, or tape occurs in its conclusion. Thus the quantifier order is one common \(\phi\), followed by a target-specific \(w_h\), followed by all points. No measurable simultaneous selector \(h\mapsto w_h\) is required by this \(\forall h\,\exists w_h\) statement.

If \(\mathcal H=\varnothing\), the target quantifier in the proposition is vacuous. If \(\mathcal X=\varnothing\) and \(h\in\mathcal H\), accepted Proposition~\ref{prop:step-004-global-separator} supplies a point of the nonempty \(\Delta_L\), and every pointwise assertion in (3)--(4) is vacuous. If \(L=1\), membership in \(\Delta_1\) forces \(w_h=(1)\). Duplicate coordinates cause no change to (1), and an infinite domain is already covered pointwise by the accepted global separator. This proves the proposition.

### unit_003: proposition

**Proposition (Deterministic dimension closure with the exact catalog bound).**
\(\label{prop:step-005-dimension-closure}\)

Statement:
Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:canonical-rounded-output-catalog}, Proposition~\ref{prop:step-005-exact-signs}, and the setting definition of deterministic exact dimension complexity,
\[
\operatorname{dc}(\mathcal H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
If \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\), then the sharper conclusion \(\operatorname{dc}(\mathcal H)=0\) holds under that same definition. The specializations \(m=0\), \(\varepsilon=0\), \(L=1\), \(B=1\), \(k=1\), every \(\tau>0\), infinite domains, duplicate coordinates, and arbitrary including nonatomic tape spaces retain the literal conclusions with no change of mode.

Proof / justification:
First suppose \(\mathcal H\ne\varnothing\) and \(\mathcal X\ne\varnothing\). Proposition~\ref{prop:step-005-exact-signs} supplies one map \(\phi:\mathcal X\to\mathbb R^L\) such that for every \(h\in\mathcal H\) there exists \(w_h\in\mathbb R^L\) satisfying
\[
\forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle>0. \tag{5}
\]
Thus \(d=L\), \(\psi=\phi\), and \(u_h=w_h\) are admissible in the exact definition of \(\operatorname{dc}(\mathcal H)\). Since that complexity is the least admissible \(d\in\mathbb N_0\), (5) gives
\[
\operatorname{dc}(\mathcal H)\le L. \tag{6}
\]

Now suppose \(\mathcal H=\varnothing\) or \(\mathcal X=\varnothing\). Let \(d=0\) and let \(\psi_0:\mathcal X\to\mathbb R^0\) be the unique zero-dimensional map. If \(\mathcal H=\varnothing\), the quantifier over targets in the definition is empty. If \(\mathcal X=\varnothing\), then for each \(h\in\mathcal H\) choose the unique \(u_h\in\mathbb R^0\); the quantifier over points is empty. In either case the strict-sign condition is satisfied vacuously, so \(d=0\) is admissible. Because the definition minimizes over \(\mathbb N_0\), no value below zero is possible, and therefore
\[
\operatorname{dc}(\mathcal H)=0. \tag{7}
\]
Since \(L\ge1\), (7) also implies (6) in these degenerate branches.

Finally, Assumption~\ref{assump:canonical-rounded-output-catalog} states, without an asymptotic symbol or hidden multiplicative constant, that
\[
L\le B\left(1+\frac{m}{\tau^2}\right)^k. \tag{8}
\]
Appending (8) directly to (6) proves the claimed chain. No term is dropped, dominated, or absorbed.

The requested specializations follow without changing any preceding line:

- If \(m=0\), then (8) becomes exactly
  \[
  L\le B\left(1+\frac{0}{\tau^2}\right)^k=B.
  \]
- If \(\varepsilon=0\), then (4) gives margin at least \(1\). Since \(w_h\in\Delta_L\) and every \(h(x)g_i(x)\in\{-1,+1\}\),
  \[
  h(x)\langle w_h,\phi(x)\rangle
  \le\sum_{i=1}^Lw_{h,i}=1,
  \]
  so every nonvacuous pointwise margin is exactly \(1\).
- If \(L=1\), then \(\Delta_1=\{(1)\}\), \(\phi(x)=(g_1(x))\), and all identities and strict signs above use that sole coordinate.
- If \(B=1\), (8) reads \(L\le(1+m/\tau^2)^k\). If \(k=1\), it reads \(L\le B(1+m/\tau^2)\). If both hold, it reads \(L\le1+m/\tau^2\). Together with \(m=0\) and \(1\le L\), this further forces \(L=1\), consistently with the preceding branch.
- Every \(\tau>0\) is allowed: \(\tau^2>0\), so (8) is defined exactly as written, and this step imposes no additional lower or upper restriction on \(\tau\).
- Infinite cardinality of \(\mathcal X\) does not enter (1), (4), or the definition-level implication (5)--(6). Repeated catalog functions remain legal coordinates; no rank or distinctness premise is used.
- The conclusion is deterministic. The tape and its law do not occur in \(\phi\), \(w_h\), (4), or (6)--(8). Hence arbitrary and nonatomic tape spaces inherited from the setting require no almost-sure, in-probability, or expectation qualification.

This proves the proposition.

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-canonical-membership} supplies the exact ordered pre-instance catalog interface, and Assumption~\ref{assump:canonical-rounded-output-catalog} supplies its primitive independence and size clauses. Lemma~\ref{lem:step-005-coordinate-map} uses precisely those functions to define
\[
\phi(x)=(g_1(x),\ldots,g_L(x))
\]
before the current \(\mathcal D,h\), policy, or tape, and proves the exact coordinate identity
\[
\langle w_h,\phi(x)\rangle
=\sum_{i=1}^Lw_{h,i}g_i(x).
\]

For each arbitrary target, accepted Proposition~\ref{prop:step-004-global-separator} supplies \(w_h\in\Delta_L\) with the same catalog mixture at margin \(\rho_\varepsilon\) on every point. Proposition~\ref{prop:step-005-exact-signs} combines these two exact interfaces and the primitive range \(\varepsilon<1/4\) to obtain
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\ge1-2\varepsilon>\frac12>0.
\]
Thus the feature map is common and pre-instance, while only the weight is target-specific.

Proposition~\ref{prop:step-005-dimension-closure} applies the exact definition of deterministic dimension complexity to this strict-sign certificate, proves the sharper value zero for an empty class or domain, and then appends the primitive inequality with no hidden constant:
\[
\boxed{
\operatorname{dc}(\mathcal H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
}
\]
The three named local results and the two accepted dependency interfaces therefore prove the exact accepted `step_005` row. No random feature map, distribution-dependent map, approximate sign, output catalog for another policy, or new stochastic mode enters the assembly.

## Explicit Rate Audit

- Exposed variables: \(m,\tau,\varepsilon,L,B,k\), with the exact companion margin \(\rho_\varepsilon=1-2\varepsilon\) and exact chain \(\operatorname{dc}(\mathcal H)\le L\le B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\), \(\mathcal X,\mathcal H,\mathcal D,h\), any policy or reply, the learner tape or its law, or catalog multiplicities.
- Fixed quantities: the certified learner and protocol, deterministic nearest-grid rule \(\rho\), ordered pre-instance catalog \(\mathcal C_A^\rho\), and family constants \(B,k\). Although \(B,k\) are fixed family constants, both remain visibly exposed. A target is fixed only while its own \(w_h\) is obtained.
- Probability mode: deterministic. The accepted dependencies have already eliminated the premise expectation; this step introduces no event, averaging, almost-sure claim, or probability conversion.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\). This static closure makes no all-time, stopping-time, or horizon-uniform upgrade.
- Norm mode: exact pointwise signed Euclidean margin on every \(x\in\mathcal X\), followed by the strict pointwise sign metric in the stated definition of \(\operatorname{dc}\). There is no average, exceptional set, surrogate norm, or approximate representation.
- Admissibility conditions and auxiliary tolerances: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), \(k\in\mathbb N\) with \(k\ge1\), and primitive \(1\le L\le B(1+m/\tau^2)^k\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: none. The only scalar comparison is displayed exactly,
  \[
  \varepsilon<\frac14
  \Longrightarrow
  1-2\varepsilon>\frac12>0.
  \]
  The object transfer is the equality \(\langle w_h,\phi(x)\rangle=\sum_iw_{h,i}g_i(x)\), and the rate uses the literal primitive inequality \(L\le B(1+m/\tau^2)^k\). No rate term is absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step is the direct final R1/R2 bridge. It exports the exact public margin and the exact deterministic dimension chain without a technical-to-public simplification.
- Baseline-reduction check: \(m=0\) gives \(L\le B\); \(\varepsilon=0\) gives pointwise margin exactly \(1\); \(L=1\) uses \(\Delta_1=\{(1)\}\); \(B=1\) and \(k=1\) substitute literally as recorded above; empty \(\mathcal H\) or \(\mathcal X\) gives \(\operatorname{dc}=0\); every \(\tau>0\), infinite domains, duplicate coordinates, and arbitrary or nonatomic tape laws preserve the same deterministic conclusion.

## Blockers

None

## Notation And Assumption Notes

- \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\), \(\Delta_L\), and \(\operatorname{dc}(\mathcal H)\) are setting-defined `public-facing` objects. The catalog's exact ordered identity is also the interface certified by accepted `step_001`; no other-policy catalog or synthetic-output object is introduced.
- \(\rho_\varepsilon:=1-2\varepsilon\) is `public-facing` notation fixed by the accepted sketch and inherited unchanged from accepted `step_004`. Its provenance is the setting parameter \(\varepsilon\), and its strict lower bound is derived explicitly in (2).
- \(\phi(x)=(g_1(x),\ldots,g_L(x))\) is the minimal `public-facing` map needed by the final theorem. Lemma~\ref{lem:step-005-coordinate-map} proves its pre-instance independence and exact coordinate identity. It is deterministic, not a generated random map, and does not depend on \(\mathcal D,h\), a policy, replies, or a tape.
- The global \(w_h\in\Delta_L\) is a `public-facing` accepted dependency object generated by accepted Proposition~\ref{prop:step-004-global-separator}. Its only allowed current-instance dependence is on \(h\). It is not assumed primitive, distribution-selected, tape-selected, or required to form a measurable selector over targets.
- The zero-dimensional map \(\psi_0:\mathcal X\to\mathbb R^0\) and zero-dimensional vectors used to audit empty \(\mathcal H\) or \(\mathcal X\) are `proof-local` setting-derived objects. They introduce no new constant and prove \(\operatorname{dc}=0\) directly from the stated definition.
- The constants and bounds \(L\), \(B\), \(k\), \(m\), \(\tau\), and \(\varepsilon\) are all primitive setting quantities. No new constant, radius, threshold, error, event, boundedness condition, recurrence, or invariant is introduced. The mixture-to-score residual and dimension-closure residual are both exactly zero.
- Assumption provenance is closed: catalog identity and actual canonical membership are supplied by accepted `step_001`; the global pointwise separator is supplied by accepted `step_004`; coordinate equality, strict positivity, and the definition-level dimension implication are proved in this step. No local conditional hypothesis is used for the unconditional step conclusion.
- The optional global diagnostic pair was not consumed as evidence, a cited result, an assumption source, or planning authority. The proof uses only the binding setting and sketch, the accepted sketch review, the two accepted dependency proof/review pairs, and the local derivations above.
