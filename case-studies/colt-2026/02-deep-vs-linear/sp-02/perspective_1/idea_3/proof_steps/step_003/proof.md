# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every fixed \(h\) and nonempty finite \(F\subseteq\mathcal X\), set \(A_{xi}=h(x)g_i(x)\), apply `step_002` to every finitely supported \(\mathcal D_p\), and prove \(\min_{p\in\Delta_F}\max_i p^TAe_i=\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x\ge\rho_\varepsilon\).  Select \(w_{h,F}\) attaining the right side.  Treat \(F=\varnothing\) separately by vacuity.
- Depends on: `step_002`
- Assumptions used: Primitive `assump:sq-parameter-regime`; derived per-distribution correlation from `step_002` (which already discharges the universal premise and canonical membership)
- Technical challenge: Preserve the exact minimizing-distribution/maximizing-mixture orientation and explain why finitely supported proof distributions require only finite pointwise sums and do not narrow the theorem premise.
- Intended proof tool or cited result: Sion (1958), Theorem 3.4, DOI 10.2140/pjm.1958.8.171, fully specialized and mapped above; simplex extreme-point equalities.
- Output target: Exact simultaneous \(\rho_\varepsilon\)-margin on every finite restriction.
- Rate objective: R1: preserve the exact margin through minimax, with no approximation or probability conversion; retain all exposed \(m,\tau,\varepsilon,L,B,k\) from the producer contract.
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), and \(k\ge1\). This step uses \(\rho_\varepsilon=1-2\varepsilon\) and preserves all six exposed quantities \(m,\tau,\varepsilon,L,B,k\) without changing their scope.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-002-exact-correlation}: for every distribution \(\mathcal D\) on \(\mathcal X\) and every \(h\in\mathcal H\), there exists an index \(i\in\{1,\ldots,L\}\) in the fixed nonempty ordered catalog such that
    \[
    \mathbb E_{x\sim\mathcal D}[h(x)g_i(x)]\ge\rho_\varepsilon.
    \]
    The accepted dependency already discharged `assump:universal-adversarial-sq`, canonical-policy validity, and canonical terminal-function membership. This proof does not invoke those premises again and does not require a choice of \(i\) that is measurable or uniform in \(\mathcal D\).
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_002/proof.md`, SHA-256 `8be304660660b6bb0291e1f41778b858002ec883a958536da432c72aa07e1198`.
  - `perspective_1/idea_3/proof_steps/step_002/review.md`, SHA-256 `d4d87387e2c7b5e282e1cdc288a31798cafb88d0ad2ba288f5c0ae70ade88bb7`, status `ACCEPTED` for sketch attempt 1 and unit attempt 1.

The fixed catalog notation \((g_1,\ldots,g_L)\), its nonemptiness \(L\ge1\), and \(\Delta_L\) are the setting objects on which the accepted dependency conclusion is stated. For a nonempty finite \(F\), write
\[
\Delta_F:=\left\{p\in[0,1]^F:\sum_{x\in F}p_x=1\right\}.
\]
Write \([L]:=\{1,\ldots,L\}\). For \(i\in[L]\), let \(e_i\) be the \(i\)-th vertex of \(\Delta_L\); for \(x\in F\), let \(d_x\) be the point-mass vertex of \(\Delta_F\). These are finite-dimensional deterministic objects, not generated conditions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:sq-parameter-regime}, accepted Proposition~\ref{prop:step-002-exact-correlation}, and the checked finite-dimensional compactness and attainment facts, if \(h\in\mathcal H\) is fixed and \(F\subseteq\mathcal X\) is finite and nonempty, then for \(A_{xi}=h(x)g_i(x)\), every \(p\in\Delta_F\) satisfies \(\max_{i\in[L]}p^TAe_i\ge\rho_\varepsilon\), and consequently \(\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i\ge\rho_\varepsilon\). | Supplies the positive lower game value solely by legal finite-support instantiations of the accepted every-distribution conclusion. |
| `unit_002` | lemma | Under the fixed nonempty catalog interface accompanying accepted Proposition~\ref{prop:step-002-exact-correlation} and the matrix construction of Lemma~\ref{lem:step-003-game-lower-bound}, if \(p\in\Delta_F\), then \(\max_{w\in\Delta_L}p^TAw=\max_{i\in[L]}p^TAe_i\), with both maxima attained. | Proves the maximizing-simplex vertex identity independently of Sion. |
| `unit_003` | lemma | Under the nonempty finite-set and matrix construction of Lemma~\ref{lem:step-003-game-lower-bound}, if \(w\in\Delta_L\), then \(\min_{p\in\Delta_F}p^TAw=\min_{x\in F}(Aw)_x\), with both minima attained. | Proves the minimizing-simplex vertex identity independently of Sion. |
| `unit_004` | proposition | Under Assumption~\ref{assump:sq-parameter-regime}, accepted Proposition~\ref{prop:step-002-exact-correlation}, Lemmas~\ref{lem:step-003-game-lower-bound}, \ref{lem:step-003-column-vertices}, and \ref{lem:step-003-row-vertices}, the checked specialization of Sion's Theorem 3.4, and the checked finite-dimensional attainment facts, if \(h\in\mathcal H\) is fixed and \(F\subseteq\mathcal X\) is finite and nonempty, then \(\min_{p\in\Delta_F}\max_i p^TAe_i=\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x\ge\rho_\varepsilon\), the right maximum is attained by some \(w_{h,F}\in\Delta_L\), and \(h(x)\sum_iw_{h,F,i}g_i(x)\ge\rho_\varepsilon\) for every \(x\in F\). | Applies the checked Sion order equality and independently proves attainment and the exact pointwise interface. |
| `unit_005` | lemma | Under Assumption~\ref{assump:sq-parameter-regime} and the setting-defined fixed nonempty catalog interface accompanying accepted Proposition~\ref{prop:step-002-exact-correlation}, if \(h\in\mathcal H\) is fixed and \(F=\varnothing\), then \(e_1\in\Delta_L\) satisfies \(h(x)\sum_i(e_1)_ig_i(x)\ge\rho_\varepsilon\) for every \(x\in F\) vacuously, without defining an empty simplex or invoking minimax. | Covers the empty finite restriction separately, as required by the target row. |

Atomic step = no. The dependency-to-game implication, the two vertex identities, the cited minimax order equality with attainment, and the empty-set branch are independent audit obligations.

## Cited Result Applications

### Accepted dependency: exact per-distribution catalog correlation

- Source: accepted Proposition~\ref{prop:step-002-exact-correlation} in `perspective_1/idea_3/proof_steps/step_002/proof.md`, certified by the matching `ACCEPTED` review listed above.
- Restated statement in current notation: after the dependency's assumptions have been discharged, for every distribution \(\mathcal D\) on \(\mathcal X\) and every target \(h\in\mathcal H\), some \(i\in[L]\) satisfies \(\mathbb E_{\mathcal D}[hg_i]\ge\rho_\varepsilon\).
- Instantiated objects: for fixed nonempty finite \(F\) and each \(p\in\Delta_F\), \(\mathcal D=\mathcal D_p\), where \(\mathcal D_p\) assigns mass \(p_x\) to \(x\in F\), and the target is the same fixed \(h\).
- Required assumptions and discharge: \(\mathcal D_p\) is a distribution because \(p_x\ge0\) and \(\sum_{x\in F}p_x=1\). The theorem premise and the accepted dependency range over every distribution; thus \(\mathcal D_p\) is a legal proof instance. The accepted dependency review discharges all learner, canonical-policy, catalog-membership, and scalar-loss assumptions.
- Conclusion used: for each \(p\), there is an index \(i(p)\) with \(p^TAe_{i(p)}\ge\rho_\varepsilon\). No selector \(p\mapsto i(p)\) is constructed or measured.

### Sion's finite-dimensional minimax theorem

- Source: Maurice Sion, *On General Minimax Theorems*, Pacific Journal of Mathematics 8 (1958), Theorem 3.4, DOI `10.2140/pjm.1958.8.171`.
- Restated statement in the orientation used here: let \(M\) be the maximizing domain and \(N\) the minimizing domain. If \(M,N\) are nonempty compact convex sets and a real-valued payoff \(f:M\times N\to\mathbb R\) is upper semicontinuous and quasi-concave in its first variable and lower semicontinuous and quasi-convex in its second variable, then
  \[
  \sup_{w\in M}\inf_{p\in N}f(w,p)
  =
  \inf_{p\in N}\sup_{w\in M}f(w,p).
  \]
  In particular, a continuous function affine in each variable meets these hypotheses.
- Instantiated objects: \(M=\Delta_L\) is the maximizing catalog-mixture simplex, \(N=\Delta_F\) is the minimizing distribution simplex, and
  \[
  f(w,p):=p^TAw.
  \]
- Required assumptions and discharge: \(L\ge1\) and \(F\ne\varnothing\) make both simplices nonempty. Each is convex. Each is closed and bounded in a finite-dimensional Euclidean space, hence compact. For fixed \(p\), \(w\mapsto p^TAw\) is real-valued, continuous, and affine, hence quasi-concave; for fixed \(w\), \(p\mapsto p^TAw\) is real-valued, continuous, and affine, hence quasi-convex. Thus every hypothesis is satisfied in the stated maximizing/minimizing orientation.
- Conclusion used: only the equality between the two optimization orders. Sion's theorem is not used to produce the positive lower bound, prove either simplex vertex identity, prove catalog existence, justify the finite-support instantiation, or select the maximizing weight.

### Finite-dimensional compactness and attainment

- Standard result restated: a closed and bounded subset of a finite-dimensional Euclidean space is compact (Heine--Borel), and a continuous real-valued function on a nonempty compact set attains its minimum and maximum (the extreme-value theorem).
- Instantiated objects: \(\Delta_F\) and \(\Delta_L\) are intersections of finitely many closed halfspaces and one closed affine hyperplane inside \([0,1]^F\) and \([0,1]^L\), respectively, so they are closed and bounded. The functions
  \[
  p\longmapsto\max_{i\in[L]}p^TAe_i,
  \qquad
  w\longmapsto\min_{x\in F}(Aw)_x
  \]
  are a finite maximum and a finite minimum of continuous affine functions, hence continuous.
- Conclusion used: the left minimum in the target equality exists, and the right maximum is attained by a weight \(w_{h,F}\). These attainment facts are justified independently of Sion's order equality.

### Local result applications

- Lemma~\ref{lem:step-003-game-lower-bound}, proved below, uses the accepted dependency for every \(\mathcal D_p\) and supplies the exact lower bound on the minimizing player's game value. It is used by Proposition~\ref{prop:step-003-finite-separator}.
- Lemma~\ref{lem:step-003-column-vertices}, proved below, supplies the exact pure-column representation of the maximizing inner problem. It is used by Proposition~\ref{prop:step-003-finite-separator}.
- Lemma~\ref{lem:step-003-row-vertices}, proved below, supplies the exact point-mass representation of the minimizing inner problem. It is used by Proposition~\ref{prop:step-003-finite-separator}.
- Proposition~\ref{prop:step-003-finite-separator}, proved below, combines the three lemmas and the checked Sion equality to produce the nonempty-finite-set output used in the target-step assembly.
- Lemma~\ref{lem:step-003-empty-restriction}, proved below, supplies the disjoint empty-set branch used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Finite-support instances lower-bound the distribution game).**
\(\label{lem:step-003-game-lower-bound}\)

Statement:
Under Assumption~\ref{assump:sq-parameter-regime}, accepted Proposition~\ref{prop:step-002-exact-correlation}, and the finite-dimensional compactness and attainment facts restated above, fix \(h\in\mathcal H\) and a nonempty finite \(F\subseteq\mathcal X\). Define
\[
A\in\mathbb R^{F\times L},
\qquad
A_{xi}:=h(x)g_i(x).
\]
Then every \(p\in\Delta_F\) satisfies
\[
\max_{i\in[L]}p^TAe_i\ge\rho_\varepsilon,
\]
and the minimum exists and obeys
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
\ge\rho_\varepsilon.
\]

Proof / justification:
Fix an arbitrary \(p\in\Delta_F\). Since \(F\ne\varnothing\), define the
finitely supported probability distribution
\[
\mathcal D_p:=\sum_{x\in F}p_x\delta_x,
\qquad
\mathbb E_{z\sim\mathcal D_p}[u(z)]
:=\sum_{x\in F}p_xu(x)
\]
where \(\delta_x\) is the Dirac law at \(x\), for each pointwise function
\(u\) used below. Coordinates with \(p_x=0\)
cause no difficulty; the support is merely contained in \(F\). This
finite-sum definition adds no singleton-measurability assumption. Accepted
Proposition~\ref{prop:step-002-exact-correlation} applies because its
quantifier is over every distribution, not only full-support or nonatomic
distributions. It gives an index \(i(p)\in[L]\) such that
\[
\begin{aligned}
p^TAe_{i(p)}
&=\sum_{x\in F}p_xA_{x,i(p)}\\
&=\sum_{x\in F}p_xh(x)g_{i(p)}(x)\\
&=\mathbb E_{x\sim\mathcal D_p}[h(x)g_{i(p)}(x)]\\
&\ge\rho_\varepsilon. \tag{1}
\end{aligned}
\]
The expectation in (1) is exactly the displayed finite sum. Thus this instantiation introduces no topology or measurability condition on \(F\), on \(p\), or on the catalog coordinates. It also does not restrict the theorem to finite-support distributions: \(\mathcal D_p\) is only one legal instance of an already universal every-distribution premise.

Because \(i(p)\) is among the finitely many indices maximized over,
\[
\max_{i\in[L]}p^TAe_i
\ge p^TAe_{i(p)}
\ge\rho_\varepsilon. \tag{2}
\]
No common index for different \(p\)'s is claimed in (2). The function
\(p\mapsto\max_i p^TAe_i\) is a finite maximum of continuous affine functions. The simplex \(\Delta_F\) is nonempty and compact, so the extreme-value theorem gives a minimizing \(p_*\). Since (2) holds for every \(p\), it holds at \(p_*\), proving
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
=\max_{i\in[L]}p_*^TAe_i
\ge\rho_\varepsilon. \tag{3}
\]
This proves the lemma.

### unit_002: lemma

**Lemma (Catalog-simplex maximization occurs at a column vertex).**
\(\label{lem:step-003-column-vertices}\)

Statement:
Under the fixed nonempty catalog interface accompanying accepted Proposition~\ref{prop:step-002-exact-correlation} and the matrix construction in Lemma~\ref{lem:step-003-game-lower-bound}, if \(p\in\Delta_F\), then
\[
\max_{w\in\Delta_L}p^TAw
=\max_{i\in[L]}p^TAe_i,
\]
and each side is attained.

Proof / justification:
Fix \(p\in\Delta_F\) and put \(c_i:=p^TAe_i\) for this proof only. Every \(w\in\Delta_L\) has \(w_i\ge0\) and \(\sum_iw_i=1\), so matrix multiplication gives
\[
p^TAw
=\sum_{i=1}^L w_i p^TAe_i
=\sum_{i=1}^Lw_ic_i
\le\sum_{i=1}^Lw_i\max_{j\in[L]}c_j
=\max_{j\in[L]}c_j. \tag{4}
\]
Since \([L]\) is finite and nonempty, choose \(i_*\in\arg\max_i c_i\). The vertex \(e_{i_*}\in\Delta_L\) gives
\[
p^TAe_{i_*}=c_{i_*}=\max_{i\in[L]}c_i. \tag{5}
\]
Equations (4)--(5) prove the identity and attainment directly. They allow zero coordinates of \(w\), and duplicate columns merely create additional maximizing vertices; neither case changes the equality.

### unit_003: lemma

**Lemma (Distribution-simplex minimization occurs at a point mass).**
\(\label{lem:step-003-row-vertices}\)

Statement:
Under the nonempty finite-set and matrix construction in Lemma~\ref{lem:step-003-game-lower-bound}, if \(w\in\Delta_L\), then
\[
\min_{p\in\Delta_F}p^TAw
=\min_{x\in F}(Aw)_x,
\]
and each side is attained.

Proof / justification:
Fix \(w\in\Delta_L\). For every \(p\in\Delta_F\),
\[
p^TAw
=\sum_{x\in F}p_x(Aw)_x
\ge\sum_{x\in F}p_x\min_{y\in F}(Aw)_y
=\min_{y\in F}(Aw)_y. \tag{6}
\]
Because \(F\) is finite and nonempty, choose \(x_*\in\arg\min_{x\in F}(Aw)_x\). Its point-mass vertex \(d_{x_*}\in\Delta_F\) satisfies
\[
d_{x_*}^TAw=(Aw)_{x_*}=\min_{x\in F}(Aw)_x. \tag{7}
\]
Equations (6)--(7) prove the identity and attainment directly. In particular, all other point-mass coordinates are zero; boundary points of \(\Delta_F\) are part of the argument rather than an excluded case.

### unit_004: proposition

**Proposition (Exact finite minimax separator).**
\(\label{prop:step-003-finite-separator}\)

Statement:
Under Assumption~\ref{assump:sq-parameter-regime}, accepted Proposition~\ref{prop:step-002-exact-correlation}, Lemmas~\ref{lem:step-003-game-lower-bound}, \ref{lem:step-003-column-vertices}, and \ref{lem:step-003-row-vertices}, the checked finite-dimensional specialization of Sion's Theorem 3.4, and the finite-dimensional compactness and attainment facts restated above, fix \(h\in\mathcal H\) and a nonempty finite \(F\subseteq\mathcal X\), and let \(A_{xi}=h(x)g_i(x)\). Then
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
=
\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
\ge\rho_\varepsilon. \tag{8}
\]
Moreover, the maximum on the right is attained by some \(w_{h,F}\in\Delta_L\), and this weight satisfies
\[
\forall x\in F,
\qquad
h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)
\ge\rho_\varepsilon. \tag{9}
\]

Proof / justification:
Apply Sion's Theorem 3.4 with maximizing variable \(w\in\Delta_L\), minimizing variable \(p\in\Delta_F\), and payoff
\[
f(w,p):=p^TAw.
\]
The cited-result audit above verifies that both domains are nonempty compact convex sets and that \(f\) is continuous and affine in each variable with the required quasi-concave/quasi-convex orientation. Sion therefore supplies exactly the optimization-order equality
\[
\sup_{w\in\Delta_L}\inf_{p\in\Delta_F}p^TAw
=
\inf_{p\in\Delta_F}\sup_{w\in\Delta_L}p^TAw. \tag{10}
\]

Attainment is separate from the cited equality. By Lemma~\ref{lem:step-003-row-vertices}, the inner infimum on the left is
\[
w\longmapsto\min_{x\in F}(Aw)_x.
\]
This is the finite minimum of continuous affine functions of \(w\), hence is continuous. Since \(\Delta_L\) is nonempty and compact, it attains its maximum at some \(w_{h,F}\in\Delta_L\). By Lemma~\ref{lem:step-003-column-vertices}, the inner supremum on the right is
\[
p\longmapsto\max_{i\in[L]}p^TAe_i.
\]
This finite maximum is continuous, and its minimum on compact \(\Delta_F\) is attained, as already recorded in Lemma~\ref{lem:step-003-game-lower-bound}. Thus the suprema and infima in (10) may be written as the maxima and minima appearing below.

Substituting the two independently proved vertex identities into (10), and then using Lemma~\ref{lem:step-003-game-lower-bound} for positivity, gives
\[
\begin{aligned}
\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
&=\max_{w\in\Delta_L}\min_{p\in\Delta_F}p^TAw\\
&=\min_{p\in\Delta_F}\max_{w\in\Delta_L}p^TAw\\
&=\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i\\
&\ge\rho_\varepsilon. \tag{11}
\end{aligned}
\]
Reversing the displayed equality in (11) yields exactly the orientation in (8): the distribution player is the outer minimizer and the catalog-mixture player is the outer maximizer. Sion supplies the middle equality only; Lemma~\ref{lem:step-003-game-lower-bound} supplies the lower bound, and Lemmas~\ref{lem:step-003-column-vertices} and \ref{lem:step-003-row-vertices} supply the endpoint identities.

For the independently obtained maximizer \(w_{h,F}\), (11) says
\[
\min_{x\in F}(Aw_{h,F})_x\ge\rho_\varepsilon.
\]
Therefore each \(x\in F\) satisfies
\[
(Aw_{h,F})_x
=\sum_{i=1}^LA_{xi}w_{h,F,i}
=h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)
\ge\rho_\varepsilon,
\]
which is (9). The matrix payoff and the exported pointwise score are identical; there is no residual, surrogate object, norm conversion, or loss of margin.

If \(F\) is a singleton, \(\Delta_F\) consists of its sole point mass, and the same proof reduces to one row. If \(L=1\), \(\Delta_L=\{e_1\}\), so the maximizing step is still attained. Duplicate columns affect neither the convex-combination calculation nor Sion's hypotheses, and zero weights are explicitly permitted in both simplices. If \(\varepsilon=0\), then \(\rho_\varepsilon=1\); Lemma~\ref{lem:step-003-game-lower-bound} gives game value at least \(1\), and (because every entry of \(A\) lies in \(\{-1,+1\}\)) every payoff is at most \(1\), so the game value and every exported finite-set margin are exactly \(1\). This proves the proposition.

### unit_005: lemma

**Lemma (Empty finite restriction is vacuously feasible).**
\(\label{lem:step-003-empty-restriction}\)

Statement:
Under Assumption~\ref{assump:sq-parameter-regime} and the setting-defined fixed nonempty catalog interface accompanying accepted Proposition~\ref{prop:step-002-exact-correlation}, fix \(h\in\mathcal H\) and let \(F=\varnothing\). Then \(e_1\in\Delta_L\) and
\[
\forall x\in F,
\qquad
h(x)\sum_{i=1}^L(e_1)_ig_i(x)\ge\rho_\varepsilon
\]
holds vacuously.

Proof / justification:
The fixed catalog has \(L\ge1\), so its first simplex vertex \(e_1\) exists and belongs to \(\Delta_L\). There is no \(x\in\varnothing\) at which the displayed inequality could fail. This branch defines no probability simplex or distribution indexed by the empty set, takes no minimum indexed by the empty set, and does not invoke Sion's theorem. This proves the lemma.

## Target-Step Assembly

Fix an arbitrary \(h\in\mathcal H\) and a finite \(F\subseteq\mathcal X\). If \(F=\varnothing\), Lemma~\ref{lem:step-003-empty-restriction} gives a weight in \(\Delta_L\) satisfying all constraints vacuously, without an empty simplex or minimax argument.

Suppose now that \(F\ne\varnothing\). Lemma~\ref{lem:step-003-game-lower-bound} instantiates accepted Proposition~\ref{prop:step-002-exact-correlation} separately for every finitely supported \(\mathcal D_p\) and proves
\[
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i\ge\rho_\varepsilon.
\]
Lemmas~\ref{lem:step-003-column-vertices} and \ref{lem:step-003-row-vertices} prove the two simplex identities by direct convex-combination inequalities. The checked application of Sion's Theorem 3.4 then supplies only the equality between the maximizing-mixture/minimizing-distribution and minimizing-distribution/maximizing-mixture orders. Proposition~\ref{prop:step-003-finite-separator} composes these inputs, independently justifies attainment, and yields the exact target equation
\[
\boxed{
\min_{p\in\Delta_F}\max_{i\in[L]}p^TAe_i
=
\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x
}
\ge\rho_\varepsilon,
\qquad A_{xi}=h(x)g_i(x).
\]
Its maximizing weight \(w_{h,F}\) satisfies
\[
\forall x\in F,
\qquad
h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)\ge\rho_\varepsilon.
\]
Since \(h\) and \(F\) were arbitrary, the nonempty and empty branches together prove exact simultaneous \(\rho_\varepsilon\)-feasibility on every finite restriction, with no compatibility between weights for different finite sets asserted or needed.

## Explicit Rate Audit

- Exposed variables: \(m,\tau,\varepsilon,L,B,k\), with \(\rho_\varepsilon=1-2\varepsilon\) and the unchanged accepted catalog range \(1\le L\le B(1+m/\tau^2)^k\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\), \(\mathcal X,\mathcal H,h,F,p\), any distribution, policy, reply, learner tape, catalog multiplicity, or selected weight.
- Fixed quantities: the certified learner and protocol objects, nearest-grid rule, ordered pre-instance catalog, and family constants \(B,k\). The target \(h\) and finite set \(F\) are fixed only inside one application and are arbitrary in the output.
- Probability mode: deterministic finite-set existence. The accepted dependency has already eliminated the learner-tape expectation. This step adds no stochastic event, average, high-probability claim, or measurable selection.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\). This static finite game does not alter the horizon or invoke an asymptotic/stopping-time argument.
- Norm mode: exact pointwise signed margin \(h(x)\sum_iw_ig_i(x)\) on a finite restriction; no average-margin, surrogate-norm, or exceptional-set statement is substituted.
- Admissibility conditions and auxiliary tolerances: exactly the setting ranges \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), \(k\ge1\), the accepted nonempty finite catalog, and \(F\ne\varnothing\) only in the minimax branch. There is no auxiliary tolerance. The branch \(F=\varnothing\) is handled separately.
- Term absorption or simplification inequalities:
  \[
  \forall p\in\Delta_F:\quad
  \max_i p^TAe_i\ge p^TAe_{i(p)}\ge\rho_\varepsilon,
  \]
  and
  \[
  \min_p\max_i p^TAe_i
  =\max_w\min_x(Aw)_x
  \ge\rho_\varepsilon.
  \]
  Both transfers are exact. No term is dropped, dominated, or absorbed.
- Probability conversion: None. Each \(\mathcal D_p\) is a deterministic legal instance of the accepted every-distribution conclusion, and minimax is a deterministic finite-dimensional equality.
- Contribution to any Rate Specialization Bridge: the step exports the exact R1 finite-set margin consumed by `step_004`, with zero matrix-to-pointwise residual and unchanged \(\rho_\varepsilon\). It performs no public-rate simplification.
- Baseline-reduction check: at \(\varepsilon=0\), \(\rho_\varepsilon=1\) and the game value and finite pointwise margins equal \(1\) exactly. Singleton \(F\), \(L=1\), duplicate columns, and zero simplex weights preserve the same equality and inequality without loss. The quantities \(m,\tau,B,k\), including \(m=0\) and every \(\tau>0\), pass through the accepted dependency unchanged. Empty \(F\) is vacuous and does not create an empty-game convention.

## Blockers

None

## Notation And Assumption Notes

- \(\rho_\varepsilon:=1-2\varepsilon\) is `public-facing` notation copied from the accepted sketch and defined directly from the primitive setting parameter \(\varepsilon\). No new margin, threshold, or constant is introduced.
- The fixed catalog \((g_1,\ldots,g_L)\) and \(\Delta_L\) are setting-defined objects carried by the accepted dependency interface. The fact \(L\ge1\) makes \(\Delta_L\) nonempty; this step does not re-invoke learner behavior or catalog membership.
- The shorthand \([L]=\{1,\ldots,L\}\) is `appendix-local` notation for the fixed catalog index set. For nonempty finite \(F\), \(\Delta_F\), its point-mass vertices \(d_x\), and the standard catalog vertices \(e_i\) are also `appendix-local` finite-dimensional notation defined explicitly above. They are deterministic setting-derived constructions, not assumptions or generated invariants.
- \(A_{xi}=h(x)g_i(x)\) and \(f(w,p)=p^TAw\) are `appendix-local` exact abbreviations built from the original target and catalog functions. Every entry lies in \(\{-1,+1\}\). The identity \((Aw)_x=h(x)\sum_iw_ig_i(x)\) proves zero residual between the matrix object and the downstream pointwise score.
- \(\mathcal D_p\) and the Dirac laws \(\delta_x\) in its finite-mixture definition are `proof-local`. For each \(p\in\Delta_F\), \(\mathcal D_p\) is merely a legal proof instance of the accepted every-distribution premise, not a restriction of the theorem, a new theorem assumption, or a measurability requirement. All expectations used here are finite sums.
- The source placeholders \(M,N\) are `proof-local` checked-citation objects immediately instantiated as \(\Delta_L,\Delta_F\). The temporary scalars \(c_i\), per-distribution existential index \(i(p)\), minimizing point \(p_*\), maximizing column \(i_*\), and minimizing row \(x_*\) are `proof-local`; their existence is proved in the named local units or supplied existentially by the accepted dependency. No map \(p\mapsto i(p)\) is asserted to be measurable or selected globally, and none of these objects is exported.
- The weights \(w_{h,F}\) are generated conclusions proved by Proposition~\ref{prop:step-003-finite-separator}; their minimal existential finite-feasibility interface is `public-facing` because it is consumed by `step_004`. No compatibility, measurability, or uniform choice across different \(F\)'s is asserted.
- Assumption provenance is closed: `assump:sq-parameter-regime` is the only primitive row-local condition; the per-distribution positive correlation and the fixed nonempty catalog interface are supplied by the accepted `step_002` dependency; there is no local conditional hypothesis, event, stability condition, recurrence, or unproved generated invariant.
- Sion's theorem supplies only (10), the equality of optimization orders. The accepted dependency supplies positivity; Lemmas~\ref{lem:step-003-column-vertices} and \ref{lem:step-003-row-vertices} supply the vertex identities; finite-dimensional compactness and continuity supply attainment; and the setting/accepted dependency supplies catalog existence. None of these roles is transferred to the citation.
- The empty-set branch is disjoint: it uses \(e_1\in\Delta_L\) and vacuity, defines no probability simplex indexed by the empty set, and invokes no minimax theorem. Singleton \(F\), \(L=1\), duplicate columns, zero weights, and \(\varepsilon=0\) are handled in the named derivations and exact-rate audit.
- The accepted `global_proof.md` was read only for the step-relevant planning pattern in Block B3: instantiate the accepted correlation result for every \(\mathcal D_p\), orient Sion with maximizing \(w\) and minimizing \(p\), and separate attainment and empty \(F\). Its paired `global_proof_review.md` has status `ACCEPTED` and SHA-256 `9dd2c6c49ac476c03e9bf8339e892d0f50c936d0651f62eeec1c402ac69a6cac`, and it reviews `global_proof.md` at SHA-256 `44796754e8c47ace167be50dc508a89304987807e8a85926ffad941fee4956f9`. Neither diagnostic artifact is used as proof evidence, a cited result, an assumption source, or authority to alter the target claim, dependencies, assumptions, scope, or margin.
