# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For \(r_A>0\), select evaluation points making \(E_Z\) injective, prove \(K_A\) compact convex in \(V_A\), and prove every point evaluation continuous; prove the same statements directly for \(r_A=0\).
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:adaptive-sq-interface`, `assump:mean-response-rank`; derived fixed space from `step_001`.
- Technical challenge: Obtain boundedness in a fixed finite-dimensional norm without assuming coefficient bounds; identify the precise closure topology.
- Intended proof tool or cited result: Evaluation functionals span \(V_A^*\); finite-dimensional norm equivalence and Heine--Borel, restated in current notation.
- Output target: Compact fixed body \(K_A\) with continuous evaluations and zero object-transfer residual.
- Rate objective: None.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:adaptive-sq-interface`: every terminal predictor is binary, all seed averages defining \(F_R\) exist, and the interaction with every deterministic complete rule is well-defined. The binary range is used only through the locally available conclusion \(F_R(x)\in[-1,1]\).
  - `assump:mean-response-rank`: \(r_A=\dim V_A<\infty\). This finite rank is the source that makes a finite evaluation coordinate system possible.
- Accepted dependency artifacts:
  - `perspective_2/idea_2/proof_steps/step_001/proof.md`, SHA-256 `a00c8010ea9cf9f8be9c86758351fcd9cfdcd5dfd3c9433f81ad3b1cbf5a6c88`.
  - `perspective_2/idea_2/proof_steps/step_001/review.md`, SHA-256 `16df5ae936b8ee9106f65295d1b38260f0f6ac31f77b39405514b08a0301da0f`, with controlled status `ACCEPTED` for sketch attempt 1, Step ID `step_001`, and unit attempt 1.
- Derived invariants supplied by the accepted dependency:
  - Lemma~\(\ref{lem:step-001-complete-rules}\) supplies the nonempty family \(\mathfrak R_A^{\mathrm{all}}\), and supplies the unique empty rule when \(m=0\).
  - Proposition~\(\ref{prop:step-001-mean-response-space}\) supplies the same fixed functions \(F_R\), the same space \(V_A\), the finite dimension \(r_A\), the pointwise bound \(F_R(x)\in[-1,1]\), and \(V_A=\{0\}\) when \(\mathcal X=\varnothing\).
  - Proposition~\(\ref{prop:step-001-fixed-coordinates}\) supplies a fixed basis \(\psi_1,\ldots,\psi_{r_A}\) and its exact coordinate isomorphism \(a:V_A\to\mathbb R^{r_A}\). This coordinate map is used only to verify that the evaluation norm induces the topology already fixed in `setting.md`; no bound on \(a(F_R)\) is assumed or used.
- Local conditional hypotheses: None.

The primitive parameter regime is part of the branch setting, but no numerical property of \(m,\tau,\varepsilon,B\), or \(k\) is used anew in this step. In particular, this proof does not assume compactness, coefficient boundedness, continuity of evaluations, or any generated membership fact.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), and the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), if \(r_A>0\), then the point evaluations span \(V_A^*\); hence there are \(z_1,\ldots,z_{r_A}\in\mathcal X\) for which \(E_Z(f)=(f(z_1),\ldots,f(z_{r_A}))\) is a linear isomorphism, and \(\|f\|_Z=\|E_Zf\|_\infty\) induces exactly the finite-dimensional topology specified in `setting.md`. | Produces a fixed evaluation coordinate system and identifies the precise topology without postulating bounds in the preselected basis. |
| `unit_002` | lemma | Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), and Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), if \(r_A>0\), every subset of \(V_A\) that is closed in the fixed topology and bounded in \(\|\cdot\|_Z\) is compact. | Restates and proves finite-dimensional Heine--Borel in the exact evaluation norm used here. |
| `unit_003` | proposition | Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted `step_001` conclusions, and Lemmas~\(\ref{lem:step-002-evaluation-coordinates}\) and~\(\ref{lem:step-002-heine-borel}\), if \(r_A>0\), then \(K_A\) is nonempty, closed, bounded, convex, and compact in the one fixed topology of \(V_A\). | Establishes the compact convex body needed downstream using the binary coordinate bound, not arbitrary-basis coefficient bounds. |
| `unit_004` | lemma | Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), and Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), if \(r_A>0\), every point evaluation \(\delta_x(f)=f(x)\) is continuous in the fixed topology and factors exactly through \(E_Z\), with zero residual. | Supplies the continuous evaluation interface and exact same-function transfer consumed by the finite-intersection step. |
| `unit_005` | proposition | Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), and the accepted `step_001` conclusions, if \(r_A=0\), then directly \(V_A=K_A=\{0\}\), the empty evaluation map is an isomorphism to \(\mathbb R^0\), \(K_A\) is nonempty compact convex, and every point evaluation is the zero continuous functional. This includes \(\mathcal X=\varnothing\) and the zero-rank branch at \(m=0\). | Closes the degenerate branch without selecting nonexistent points or invoking a positive-dimensional theorem. |

Atomic step = no. Dual spanning, topological compactness, convex-body properties, evaluation continuity, and the zero-dimensional branch are independent nontrivial obligations.

## Cited Result Applications

No external paper result is used. Every finite-dimensional fact invoked below is restated and proved in the current notation.

1. **Accepted `step_001` dependency.** Lemma~\(\ref{lem:step-001-complete-rules}\) states that \(\mathfrak R_A^{\mathrm{all}}\ne\varnothing\), including the unique empty rule at \(m=0\). Proposition~\(\ref{prop:step-001-mean-response-space}\) states that \(F_R\in[-1,1]^{\mathcal X}\), that their span is the fixed finite-dimensional space \(V_A\), and that an empty domain forces \(V_A=\{0\}\). Proposition~\(\ref{prop:step-001-fixed-coordinates}\) states that the fixed basis coordinate map \(a:V_A\to\mathbb R^{r_A}\) is a linear isomorphism. The two accepted artifacts and their matching hashes are listed above. These dependency conclusions supply the objects, nonemptiness, finite dimension, and binary bound; they do not supply compactness or continuity.
2. **Evaluation-coordinate lemma, Lemma~\(\ref{lem:step-002-evaluation-coordinates}\).** Its current-notation statement is the `unit_001` row above. Its proof below establishes dual spanning by an explicit finite homogeneous-system argument, extracts a basis from the evaluation family, proves bijectivity of \(E_Z\), and proves topology equivalence by two displayed matrix inequalities. It is used by Lemma~\(\ref{lem:step-002-heine-borel}\), Proposition~\(\ref{prop:step-002-compact-body}\), and Lemma~\(\ref{lem:step-002-continuous-evaluations}\).
3. **Finite-dimensional Heine--Borel lemma, Lemma~\(\ref{lem:step-002-heine-borel}\).** Its current-notation statement is the `unit_002` row above. Its proof below reduces through the isometry \(E_Z\) to bounded sequences in finite-dimensional real coordinate space, proves subsequential compactness by coordinatewise bisection, and proves the metric open-cover implication. It is used only to turn the already proved closedness and boundedness of \(K_A\) into compactness.
4. **Compact response body, Proposition~\(\ref{prop:step-002-compact-body}\).** Its statement is the `unit_003` row above. It proves nonemptiness, closedness, boundedness, convexity, and compactness from the accepted generator interface and the two preceding local lemmas. It is used in the target-step assembly.
5. **Continuous exact evaluations, Lemma~\(\ref{lem:step-002-continuous-evaluations}\), and the zero-dimensional body, Proposition~\(\ref{prop:step-002-zero-dimensional}\).** Their statements are the `unit_004` and `unit_005` rows above. They are used in the target-step assembly to cover, respectively, \(r_A>0\) and \(r_A=0\).

## Local Derivation

### unit_001: lemma

**Lemma (Evaluation coordinates determine the fixed topology).**
\(\label{lem:step-002-evaluation-coordinates}\)
Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), and the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), suppose \(r_A>0\). Then
\[
\operatorname{span}_{\mathbb R}\{\delta_x:x\in\mathcal X\}=V_A^*,
\qquad \delta_x(f):=f(x).
\]
Consequently, there are points \(z_1,\ldots,z_{r_A}\in\mathcal X\) such that \(\delta_{z_1},\ldots,\delta_{z_{r_A}}\) form a basis of \(V_A^*\). For
\[
E_Z:V_A\to\mathbb R^{r_A},
\qquad E_Z(f):=(f(z_1),\ldots,f(z_{r_A})),
\]
the map \(E_Z\) is a linear isomorphism, and
\[
\|f\|_Z:=\|E_Z(f)\|_\infty
\]
is a norm inducing exactly the finite-dimensional topology in which \(K_A\) was defined.

**Proof / justification.**
Every \(\delta_x\) is an algebraic linear functional on the function space \(V_A\). Let
\[
W:=\operatorname{span}_{\mathbb R}\{\delta_x:x\in\mathcal X\}\subseteq V_A^*.
\]
The accepted basis \(\psi_1,\ldots,\psi_{r_A}\) shows directly that \(\dim V_A^*=r_A\): the coordinate functionals that return the coefficients in
\(f=\sum_{j=1}^{r_A}a(f)_j\psi_j\) form a basis of the dual.

Suppose for contradiction that \(W\ne V_A^*\), and put \(s=\dim W<r_A\). Choose a basis \(\lambda_1,\ldots,\lambda_s\) of \(W\). In the accepted basis of \(V_A\), the equations
\[
\lambda_i\!\left(\sum_{j=1}^{r_A}c_j\psi_j\right)=0,
\qquad 1\le i\le s,
\]
form an \(s\)-by-\(r_A\) homogeneous real linear system. Row reduction has at most \(s<r_A\) pivot columns, so at least one coordinate is free; choosing a nonzero value for one free coordinate and solving for the pivot coordinates gives a nonzero vector \(c\in\mathbb R^{r_A}\) in its nullspace. Thus
\[
f:=\sum_{j=1}^{r_A}c_j\psi_j\ne0
\quad\text{and}\quad
\lambda_i(f)=0\quad(1\le i\le s).
\]
Every \(\delta_x\) belongs to \(W\), hence is a linear combination of the \(\lambda_i\), so \(f(x)=\delta_x(f)=0\) for every \(x\in\mathcal X\). Equality of functions is pointwise in \(\mathbb R^{\mathcal X}\), making \(f\) the zero vector, a contradiction. Therefore \(W=V_A^*\).

One can now extract a basis from the spanning evaluation family without any choice of non-evaluation functionals. Starting with the empty list, if the selected evaluations do not yet span \(V_A^*\), the equality \(W=V_A^*\) supplies an evaluation outside their span; append it. Each addition raises the span dimension by one, so after exactly \(r_A\) additions the selected evaluations form a basis. Write them as \(\delta_{z_1},\ldots,\delta_{z_{r_A}}\). In particular, \(r_A>0\) forces \(\mathcal X\ne\varnothing\).

The map \(E_Z\) is linear. If \(E_Z(f)=0\), all basis functionals \(\delta_{z_i}\) vanish on \(f\). Since every \(\delta_x\) is their linear combination, \(f(x)=0\) for every \(x\), and hence \(f=0\). Thus \(E_Z\) is injective. Images under \(E_Z\) of any basis of the \(r_A\)-dimensional domain are then \(r_A\) linearly independent vectors in \(\mathbb R^{r_A}\), so they span the codomain. Hence \(E_Z\) is also surjective.

Injectivity makes \(\|f\|_Z=\|E_Zf\|_\infty\) positive definite; homogeneity and the triangle inequality follow from the sup norm, so this is a norm. It remains to identify its topology with the fixed topology in `setting.md`, rather than silently changing the meaning of the closure defining \(K_A\).

Let \(a(f)\) be the accepted coordinate vector in the fixed basis and let
\[
M_{ij}:=\psi_j(z_i),\qquad 1\le i,j\le r_A.
\]
Then \(E_Z(f)=M a(f)\). The already proved bijectivity of \(E_Z\) makes \(M\) invertible. Directly from finite matrix multiplication,
\[
\|E_Z(f)\|_\infty
\le
\left(\max_{1\le i\le r_A}\sum_{j=1}^{r_A}|M_{ij}|\right)
\|a(f)\|_\infty
\]
and
\[
\|a(f)\|_\infty
\le
\left(\max_{1\le i\le r_A}\sum_{j=1}^{r_A}|(M^{-1})_{ij}|\right)
\|E_Z(f)\|_\infty.
\]
Both displayed multipliers are finite sums of fixed real entries. Thus the evaluation norm and the fixed-basis coordinate norm have exactly the same convergent sequences, open balls, and closed sets. The latter is the finite-dimensional topology already specified in the setting, so \(\|\cdot\|_Z\) induces that same topology. These inequalities establish topological equivalence only; no bound on \(a(F_R)\), or on coefficients of any convex combination, was assumed or used. \(\square\)

### unit_002: lemma

**Lemma (Heine--Borel in evaluation coordinates).**
\(\label{lem:step-002-heine-borel}\)
Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), and Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), suppose \(r_A>0\). If \(C\subseteq V_A\) is closed in the fixed finite-dimensional topology and bounded in \(\|\cdot\|_Z\), then \(C\) is compact in that topology.

**Proof / justification.**
Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) makes \(E_Z\) an isometric linear homeomorphism from \((V_A,\|\cdot\|_Z)\) onto \((\mathbb R^{r_A},\|\cdot\|_\infty)\). Hence \(D:=E_Z(C)\) is closed and bounded in \(\mathbb R^{r_A}\). We prove directly that such a \(D\) is compact.

First, every sequence in \(D\) has a convergent subsequence with limit in \(D\). Indeed, boundedness places every coordinate sequence in some real interval \([-Q,Q]\). A bounded real sequence has a convergent subsequence by the following bisection argument: bisect \([-Q,Q]\), retain a closed half containing infinitely many terms, and iterate; choose successively increasing indices from the retained halves. The nested intervals have lengths tending to zero, so completeness of \(\mathbb R\) gives their unique common limit, and the chosen subsequence converges to it. Applying this argument successively to the first, second, through \(r_A\)-th coordinates, each time taking a subsequence of the preceding one, produces a final subsequence converging in every coordinate. Because there are only finitely many coordinates, coordinatewise convergence is convergence in \(\|\cdot\|_\infty\). Closedness of \(D\) puts the limit in \(D\).

For completeness, this subsequence property implies the open-cover definition of compactness here. It first implies total boundedness: otherwise, for some \(\eta>0\), one could choose recursively a sequence of points whose pairwise distances are at least \(\eta\), and such a sequence has no convergent subsequence. Now let \(\mathcal U\) be an open cover of \(D\). If there were no \(\delta>0\) such that every relative ball \(B_D(y,\delta)\) is contained in some member of \(\mathcal U\), one could choose \(y_n\in D\) for which \(B_D(y_n,1/n)\) is contained in no cover member. A convergent subsequence \(y_{n_j}\to y\), together with one cover member containing \(y\), contradicts that choice for all sufficiently large \(j\). Thus such a \(\delta\) exists. A finite \(\delta/2\)-net, supplied by total boundedness, yields finitely many \(\delta\)-balls, each contained in a cover member, and those finitely many members cover \(D\). Hence \(D\) is compact.

Finally, the continuous inverse \(E_Z^{-1}\) maps the compact set \(D\) onto \(C\), so \(C\) is compact in the fixed topology of \(V_A\). \(\square\)

### unit_003: proposition

**Proposition (The fixed response body is compact and convex).**
\(\label{prop:step-002-compact-body}\)
Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted conclusions of Lemma~\(\ref{lem:step-001-complete-rules}\) and Proposition~\(\ref{prop:step-001-mean-response-space}\), and Lemmas~\(\ref{lem:step-002-evaluation-coordinates}\) and~\(\ref{lem:step-002-heine-borel}\), suppose \(r_A>0\). Then
\[
K_A=
\overline{\operatorname{conv}}
\{F_R:R\in\mathfrak R_A^{\mathrm{all}}\}
\]
is a nonempty compact convex subset of \(V_A\), where the closure and compactness use the one fixed finite-dimensional topology from `setting.md`. Moreover,
\[
K_A\subseteq\{f\in V_A:\|f\|_Z\le1\}.
\]

**Proof / justification.**
The accepted dependency gives \(\mathfrak R_A^{\mathrm{all}}\ne\varnothing\), so the generating family and its convex hull are nonempty. It also gives, for every complete rule \(R\) and every selected evaluation point \(z_i\),
\[
|F_R(z_i)|\le1.
\]
Therefore
\[
\|F_R\|_Z=\max_{1\le i\le r_A}|F_R(z_i)|\le1.
\]
If \(f=\sum_{j=1}^N\alpha_jF_{R_j}\) is any finite convex combination, then \(\alpha_j\ge0\), \(\sum_j\alpha_j=1\), and for every \(i\),
\[
|f(z_i)|
\le\sum_{j=1}^N\alpha_j|F_{R_j}(z_i)|
\le\sum_{j=1}^N\alpha_j=1.
\]
Thus the entire convex hull lies in the closed evaluation-norm unit ball. That ball is closed because the reverse triangle inequality
\[
|\|f\|_Z-\|g\|_Z|\le\|f-g\|_Z
\]
makes the norm continuous. Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) proves that this norm topology is exactly the topology used in the defining closure. Taking that closure therefore gives
\[
K_A\subseteq\{f\in V_A:\|f\|_Z\le1\}.
\]
This is the required boundedness derivation. It uses only values of the same functions at the selected points; it does not assume bounds on their coefficients in \(\psi_1,\ldots,\psi_{r_A}\).

By definition as a closure, \(K_A\) is closed in the fixed topology, and it remains nonempty because it contains its nonempty convex hull. To prove convexity of the closure rather than assume it, let \(f,g\in K_A\), \(\theta\in[0,1]\), and \(\eta>0\). Choose convex-hull elements \(f_0,g_0\) with
\(\|f-f_0\|_Z<\eta\) and \(\|g-g_0\|_Z<\eta\). The convex-hull element \(\theta f_0+(1-\theta)g_0\) then satisfies
\[
\|\theta f+(1-\theta)g-[\theta f_0+(1-\theta)g_0]\|_Z
\le \theta\|f-f_0\|_Z+(1-\theta)\|g-g_0\|_Z
<\eta.
\]
Since this holds for every \(\eta>0\), \(\theta f+(1-\theta)g\in K_A\). Hence \(K_A\) is convex.

The body is now proved closed and bounded in \(\|\cdot\|_Z\). Lemma~\(\ref{lem:step-002-heine-borel}\) makes it compact in the same fixed topology. \(\square\)

### unit_004: lemma

**Lemma (Every point evaluation is continuous with exact reconstruction).**
\(\label{lem:step-002-continuous-evaluations}\)
Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), the accepted conclusions of Propositions~\(\ref{prop:step-001-mean-response-space}\) and~\(\ref{prop:step-001-fixed-coordinates}\), and Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), suppose \(r_A>0\). For every \(x\in\mathcal X\), the functional
\[
\delta_x:V_A\to\mathbb R,\qquad \delta_x(f)=f(x),
\]
is continuous in the fixed topology. More precisely, if \(e_1,\ldots,e_{r_A}\) are the standard coordinate vectors and
\[
b_i(x):=(E_Z^{-1}e_i)(x),
\]
then every \(f\in V_A\) obeys
\[
f(x)=\sum_{i=1}^{r_A}b_i(x)f(z_i),
\qquad
|f(x)|\le
\left(\sum_{i=1}^{r_A}|b_i(x)|\right)\|f\|_Z.
\]
In particular,
\[
\delta_x(f)-(\delta_x\circ E_Z^{-1})(E_Zf)=0,
\]
so the evaluation-coordinate transfer concerns the identical function and has zero residual.

**Proof / justification.**
Fix \(x\in\mathcal X\). The composition \(\ell_x:=\delta_x\circ E_Z^{-1}\) is a linear functional on \(\mathbb R^{r_A}\). Every \(y\in\mathbb R^{r_A}\) has the finite expansion \(y=\sum_i y_ie_i\), so linearity gives, without invoking any representation theorem,
\[
\ell_x(y)=\sum_{i=1}^{r_A}y_i\ell_x(e_i)
=\sum_{i=1}^{r_A}y_i b_i(x).
\]
Consequently,
\[
|\ell_x(y)|
\le\sum_{i=1}^{r_A}|b_i(x)|\,|y_i|
\le\left(\sum_{i=1}^{r_A}|b_i(x)|\right)\|y\|_\infty.
\]
The finite coefficient sum proves continuity of \(\ell_x\). Taking \(y=E_Zf\), using \(E_Z^{-1}E_Zf=f\), and recalling that \(E_Z\) is an isometry for \(\|\cdot\|_Z\), gives both displayed claims and continuity of \(\delta_x=\ell_x\circ E_Z\). No bound uniform in \(x\) is claimed or needed. \(\square\)

### unit_005: proposition

**Proposition (Direct zero-dimensional and empty-domain branch).**
\(\label{prop:step-002-zero-dimensional}\)
Under Assumptions~\(\ref{assump:adaptive-sq-interface}\) and~\(\ref{assump:mean-response-rank}\), and the accepted conclusions of Lemma~\(\ref{lem:step-001-complete-rules}\) and Proposition~\(\ref{prop:step-001-mean-response-space}\), suppose \(r_A=0\). Then
\[
V_A=K_A=\{0\}.
\]
The empty evaluation map
\[
E_\varnothing:V_A\to\mathbb R^0,
\qquad E_\varnothing(0)=(),
\]
is a linear isomorphism and induces the unique zero-dimensional topology. The body \(K_A\) is nonempty, compact, and convex, and for every \(x\in\mathcal X\), point evaluation on \(V_A\) is the zero continuous functional. These conclusions hold in particular when \(\mathcal X=\varnothing\), and they require no query-round argument when \(m=0\).

**Proof / justification.**
A real vector space of dimension zero contains only its zero vector, so \(V_A=\{0\}\). The accepted dependency gives a nonempty complete-rule family and places every \(F_R\) in \(V_A\); hence every generator is the zero function. Its convex hull is exactly \(\{0\}\), and its closure in the unique topology of the singleton space is still \(\{0\}\). Therefore \(K_A=\{0\}\).

Both \(V_A\) and \(\mathbb R^0\) are singleton vector spaces, so \(E_\varnothing\) is directly linear, injective, and surjective. The set \(\{0\}\) is convex. It is compact directly from the open-cover definition: any open cover has one member containing its only point, and that single member is a finite subcover. Every point evaluation has domain \(\{0\}\) and value \(\delta_x(0)=0\), so it is the zero functional and is continuous.

If \(\mathcal X=\varnothing\), there is exactly one function \(\mathcal X\to\mathbb R\), namely the zero function; the accepted dependency therefore forces \(r_A=0\), and there is no \(x\) for which an evaluation must be checked. If \(m=0\), the accepted dependency supplies the unique empty response rule; when its mean-response span has dimension zero, the preceding argument applies without mentioning a query or reply. \(\square\)

## Target-Step Assembly

Assume first that \(r_A>0\). Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) proves that the point evaluations span \(V_A^*\), selects \(r_A\) actual domain points \(z_1,\ldots,z_{r_A}\), and makes \(E_Z\) a linear isomorphism. Its two explicit matrix inequalities prove that \(\|f\|_Z=\|E_Zf\|_\infty\) induces the topology already fixed in `setting.md`; no arbitrary-basis coefficient bound is assumed.

Proposition~\(\ref{prop:step-002-compact-body}\) then uses the accepted binary-output consequence
\(|F_R(z_i)|\le1\) to put every generator and every convex combination in the evaluation-norm unit ball. Because the closure defining \(K_A\) is now identified with this same norm topology, the body is nonempty, closed, bounded, and convex. The current-notation Heine--Borel proof in Lemma~\(\ref{lem:step-002-heine-borel}\) makes it compact in precisely that topology. Lemma~\(\ref{lem:step-002-continuous-evaluations}\) proves every evaluation continuous via \(E_Z^{-1}\) and gives the exact same-function identity
\[
f(x)=(\delta_x\circ E_Z^{-1})(E_Zf),
\]
so the exported object-transfer residual is zero.

If \(r_A=0\), Proposition~\(\ref{prop:step-002-zero-dimensional}\) proves directly that \(V_A=K_A=\{0\}\), that the empty evaluation map is an isomorphism, that the body is nonempty compact convex, and that every point evaluation is zero and continuous. Every empty domain necessarily lies in this branch, so no nonexistent evaluation point is selected.

Finally, \(m=0\) requires no separate query argument. The accepted dependency supplies the unique empty rule. If its mean-response span has rank zero, Proposition~\(\ref{prop:step-002-zero-dimensional}\) applies; if it has positive rank, Lemma~\(\ref{lem:step-002-evaluation-coordinates}\), Proposition~\(\ref{prop:step-002-compact-body}\), and Lemma~\(\ref{lem:step-002-continuous-evaluations}\) apply unchanged because they use only the already formed functions, finite rank, and the binary bound. Thus all clauses of the binding `step_002` claim, including empty \(\mathcal X\), \(m=0\), the precise closure topology, and zero residual, are proved.

## Explicit Rate Audit

None. This step is not rate-bearing: it uses only the finiteness of \(r_A\) and introduces no rate, hidden constant, probability conversion, horizon upgrade, auxiliary tolerance, or term absorption.

## Blockers

None

## Notation And Assumption Notes

- \(\delta_x:f\mapsto f(x)\) is `appendix-local`. The continuity of this setting-defined point-evaluation operation is a public-facing output, but the symbol itself need not appear in the public theorem.
- \(W=\operatorname{span}\{\delta_x:x\in\mathcal X\}\), its temporary basis \((\lambda_i)\), and the homogeneous-system coefficients \(c_j\) are `proof-local`. They are used only to prove that evaluations span \(V_A^*\).
- \(Z=(z_1,\ldots,z_{r_A})\), \(E_Z\), and \(\|\cdot\|_Z\) are `appendix-local`. They witness compactness and continuity. The minimal public-facing export is the fixed body \(K_A\) together with compactness, convexity, and continuity of all point evaluations.
- The accepted coordinate map \(a(f)\) is inherited from `step_001` and remains `appendix-local`. The matrix \(M=(\psi_j(z_i))\) and the two finite row-sum multipliers involving \(M\) and \(M^{-1}\) are `proof-local`, directly defined from the accepted basis and locally selected points. They prove topology equivalence only. No bound on \(a(F_R)\) is assumed or used to establish boundedness of the generating family or \(K_A\).
- \(D=E_Z(C)\), the bound \(Q\) and the quantities \(\eta,\delta\) inside the Heine--Borel proof, and the sequence/subsequence indices are `proof-local`. They are locally chosen proof quantities, not theorem constants, rates, or admissibility parameters.
- \(b_i(x)=(E_Z^{-1}e_i)(x)\) and \(\sum_i|b_i(x)|\) are `proof-local`, derived in Lemma~\(\ref{lem:step-002-continuous-evaluations}\). The sum is finite for each fixed \(x\); no uniform-in-\(x\) bound is assumed, claimed, or needed.
- \(E_\varnothing\) is `appendix-local` and records the required empty-coordinate convention in the \(r_A=0\) branch.
- \(K_A\) is a `public-facing` generated output already defined in `setting.md`. Its nonemptiness, boundedness, convexity, and compactness are proved in this step rather than treated as primitive conditions or dependency outputs.
- Constant provenance: this step introduces no public constant, radius, threshold, margin, rate, or tolerance. The bound \(1\) in \(\|F_R\|_Z\le1\) is proved from the accepted binary-output conclusion. All matrix row sums and pointwise evaluation coefficients are finite proof-local quantities explicitly derived by named local units.
- Assumption provenance: finite \(V_A\), generator nonemptiness, the binary bound, the fixed basis, the empty-domain conclusion, and the unique empty rule at \(m=0\) are accepted derived outputs of `step_001`. Dual spanning and topology identification are proved in `unit_001`; the needed Heine--Borel implication is proved in `unit_002`; body boundedness/convexity/compactness are proved in `unit_003`; evaluation continuity and zero residual are proved in `unit_004`; and the zero-dimensional branch is proved in `unit_005`. There is no generated event, stability condition, recurrence, local-validity condition, or conditional hypothesis.
- Closure topology: the overline in \(K_A\) is always the fixed finite-dimensional topology stated in `setting.md`. Lemma~\(\ref{lem:step-002-evaluation-coordinates}\) proves, before closure boundedness is used, that this topology equals the evaluation-norm topology. No pointwise-product topology or topology varying with a finite restriction is introduced.
- Boundary regimes: \(r_A>0\) itself forces \(\mathcal X\ne\varnothing\). Empty \(\mathcal X\) forces \(r_A=0\) and is handled without evaluations. The proof is independent of \(\mathcal H\). At \(m=0\), the sole generator comes from the unique empty response rule, and both rank branches use no query-round reasoning.
- Diagnostic boundary: live hashes verified that `global_proof.md` is the artifact accepted by the paired `global_proof_review.md`, whose controlled status is `ACCEPTED`. The only step-relevant planning idea used was to choose evaluation coordinates before proving boundedness and to treat \(r_A=0\) directly. Neither diagnostic artifact was used as proof evidence, a cited result, an assumption source, or authority to change the binding target claim.
