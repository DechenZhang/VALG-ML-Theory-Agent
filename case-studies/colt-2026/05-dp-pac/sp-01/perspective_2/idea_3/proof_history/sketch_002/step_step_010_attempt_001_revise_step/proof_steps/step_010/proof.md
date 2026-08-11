# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_010`
- Unit attempt: 1
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Accepted proof sketch SHA-256: `51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8`
- Accepted proof-sketch review SHA-256: `98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89`
- Accepted diagnostic global proof/review SHA-256: `dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407` / `fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710`
- Accepted `step_006` proof/review SHA-256: `3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f` / `331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303`
- Accepted `step_008` proof/review SHA-256: `42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43` / `c29ea8c6302be8940d7e8f7a9e20180f2dde081dc50a3081eecbd59fb81e329d`
- Frozen primary source checked: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex` SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Target Step Claim

- Intended claim: Prove every actual selected item is exactly
  \(\operatorname{SOA}_{\mathcal G}\) for a
  \(p_r2^{d-t}\)-irreducible
  \(\mathcal G\subseteq H_i^r\subseteq C\), hence is
  \(n_0\)- and \((d+1)\)-irreducible, and has master error at most
  \(2\gamma=\alpha/8\).
- Depends on: `step_006`, `step_008`.
- Assumptions used: Primitive `assump:finite-littlestone`; derived actual
  selection and \(E_{\rm good}\).
- Technical challenge: Preserve exact identity rather than sample-trace
  membership.
- Intended proof tool or cited result: Definition 4.3, decomposition leaf
  condition, and Lyu Theorem 3 empirical contradiction.
- Output target: Exact fixed-class membership witness and empirical utility.
- Rate objective: Internal-to-public accuracy bridge.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding `proof_sketch_review.md`, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\subseteq\{0,1\}^X\) is nonempty,
    \(X\) is nonempty, and \(d=\operatorname{LD}(C)<\infty\). On the
    positive branch \(d\ge1\), every nonempty subclass of \(C\) has
    Littlestone dimension at most \(d\).
  - `assump:realizable-iid` is not invoked independently in the local
    deterministic argument. It is part of the already-discharged basis of
    the accepted `step_008` utility-path conclusion that produces an actual
    selected item.
  - `assump:approximate-dp-regime` is likewise not invoked independently.
    Its mechanism-parameter and confidence consequences are already
    discharged by accepted `step_008`.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-006-source-map} supplies, for
    \(0\le r\le d\),
    \[
    \rho:=1-\frac1{2d},\qquad \gamma:=\frac\alpha{16},\qquad
    H_i^r=\{h\in C:e_i(h)\le \rho^{r+1}\gamma\},
    \qquad p_r=2^rn_0d.
    \tag{1}
    \]
  - Accepted Proposition~\ref{prop:step-006-essential-lists} supplies the
    exact actual-function lists
    \(\mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r)\) when
    \(H_i^r\ne\varnothing\), and the totalized empty list otherwise. For
    every \(f\in\mathcal L_i^r\), every optimal
    \((p_r,d)\)-decomposition has a degree-attaining leaf
    \(G\subseteq H_i^r\) with
    \(\operatorname{SOA}_G\equiv f\) on all of \(X\).
  - Accepted Lemma~\ref{lem:step-006-leaf-irreducibility} supplies, for
    such a leaf with \(t=\operatorname{LD}(G)\),
    \[
    K:=p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\},
    \tag{2}
    \]
    and proves that \(G\) is \(K\)-, \(n_0\)-, and
    \((d+1)\)-irreducible under Lyu's exact fixed-SOA convention.
  - Accepted Proposition~\ref{prop:step-008-actual-output} supplies the
    generated event \(\mathcal E_{\rm mech}\). For every realizable
    master-sample realization and partition in \(E_{\rm good}\), on
    \(\mathcal E_{\rm mech}\) the learner has a first reported stage
    \(\widehat r\in\{0,\ldots,d\}\) and returns an actual function
    \[
    \widehat f\in\bigcup_{i=1}^k\mathcal L_i^{\widehat r}.
    \tag{3}
    \]
    This is membership of the same function on \(X\), not membership of an
    error trace. The conditional mechanism failure is at most
    \(\beta_{\rm AT}+\beta_{\rm SS}\); together with the already-accepted
    trace charge, the failure before generalization is at most
    \(3\beta/4\).
- Local conditional hypotheses:
  - The master-error statements below fix the positive branch, an indexed
    labeled master sample, and a realized partition for which the
    earlier-produced event \(E_{\rm good}\) holds. This is conditioning on
    a derived event, not a new primitive assumption.
  - The selected-output assembly additionally fixes a mechanism outcome in
    \(\mathcal E_{\rm mech}\). No list membership, leaf identity,
    irreducibility, or error bound is assumed beyond the accepted dependency
    conclusions just listed.

For an indexed sample \(S=((x_u,y_u))_{u=1}^{n_0}\) and block index set
\(I_i\), write
\[
e_S(h):=\frac1{n_0}\sum_{u=1}^{n_0}
  \mathbf 1\{h(x_u)\ne y_u\},
\qquad
e_i(h):=\frac1m\sum_{u\in I_i}
  \mathbf 1\{h(x_u)\ne y_u\}.
\tag{4}
\]
The accepted generated event used in this step is exactly
\[
E_{\rm good}:=
\bigcap_{h\in C}\bigcap_{i=1}^k
\left(
\left\{e_S(h)>\frac\gamma3\Rightarrow
 |e_i(h)-e_S(h)|\le\frac{e_S(h)}{5d}\right\}
\cap
\left\{e_S(h)\le\frac\gamma3\Rightarrow
 e_i(h)\le\frac\gamma2\right\}
\right).
\tag{5}
\]

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumption~\ref{assump:finite-littlestone} and accepted Propositions~\ref{prop:step-006-essential-lists} and \ref{prop:step-008-actual-output} and Lemma~\ref{lem:step-006-leaf-irreducibility}, if \(d\ge1\) and a utility-path realization lies in \(E_{\rm good}\cap\mathcal E_{\rm mech}\), then the actual selected function \(\widehat f\) is exactly \(\operatorname{SOA}_G\) on all of \(X\) for a nonempty degree-attaining leaf \(G\subseteq H_i^{\widehat r}\subseteq C\) that is \(p_{\widehat r}2^{d-t}\)-, \(n_0\)-, and \((d+1)\)-irreducible, where \(t=\operatorname{LD}(G)\); the conclusion remains exact at \(d=1\) and at decomposition dimension zero. | Converts actual list selection into the exact leaf identity and both irreducibility interfaces, with no trace quotient. |
| unit_002 | lemma | Under Assumption~\ref{assump:finite-littlestone}, accepted Proposition~\ref{prop:step-006-source-map}, and the local condition \(E_{\rm good}\), if \(d\ge1\), \(0\le r\le d\), and \(g\in H_i^r\), then \(e_S(g)\le2\gamma\); at \(d=1\) the high-error branch in fact gives \(e_S(g)\le5\gamma/4\). | Proves the full-master bound for every member of every possible selected leaf's parent class. |
| unit_003 | lemma | Under Assumption~\ref{assump:finite-littlestone}, if a nonempty \(G\subseteq C\) is \(n_0\)-irreducible in Lyu's fixed-SOA sense, \(f\equiv\operatorname{SOA}_G\) on \(X\), and every \(g\in G\) has \(e_S(g)\le2\gamma\), then \(e_S(f)\le2\gamma\), for arbitrary indexed points, including repetitions. | Makes the exact Lyu Theorem 3 empty-restriction contradiction self-contained in current notation. |

Atomic step = no. Exact selected-object identity, transfer of block-threshold
membership to full-master error, and the irreducibility contradiction are
independent nontrivial obligations.

## Cited Result Applications

### Accepted `step_006` exact list and leaf interface

- Source or name: accepted
  Proposition~\ref{prop:step-006-source-map},
  Proposition~\ref{prop:step-006-essential-lists}, and
  Lemma~\ref{lem:step-006-leaf-irreducibility}, certified by the matching
  accepted `step_006` review.
- Restated statement in current notation: equations (1)-(2) hold. If an
  actual function \(f\) belongs to \(\mathcal L_i^r\), then
  \(H_i^r\ne\varnothing\), and in every optimal
  \((p_r,d)\)-decomposition there is a degree-attaining leaf
  \(G\subseteq H_i^r\) with
  \(\operatorname{SOA}_G\equiv f\) on \(X\). For
  \(t=\operatorname{LD}(G)\), the leaf is
  \(p_r2^{d-t}\)-irreducible and is also \(n_0\)- and
  \((d+1)\)-irreducible.
- Instantiated objects: \(r=\widehat r\), an index \(i\) witnessing (3),
  the same actual selected function \(\widehat f\), and a leaf of the
  current class \(H_i^{\widehat r}\).
- Required assumptions and discharge: Assumption~\ref{assump:finite-littlestone}
  supplies the ambient dimension bound. The accepted dependency already
  discharges positive integer scales, nonempty/empty list totalization,
  optimal-decomposition existence, and shorter-length irreducibility.
- Conclusion used: exact function identity, subclass containment, and the
  three irreducibility scales. No empirical error or selection event is
  supplied by this dependency.

### Accepted `step_008` actual selected item

- Source or name: accepted
  Proposition~\ref{prop:step-008-actual-output}, certified by the matching
  accepted `step_008` review.
- Restated statement in current notation: on every realizable fixed input
  and partition in \(E_{\rm good}\), the event
  \(\mathcal E_{\rm mech}\) implies (3). The output is one actual function
  in the set union of the current essential-function lists; it is not
  \(\perp\), a fallback, a block representative, or a trace class.
- Instantiated objects: the same current lists from accepted `step_006`, the
  generated first stage \(\widehat r\), and the learner output
  \(\widehat f\).
- Required assumptions and discharge: accepted `step_008` already
  discharges the primitive parameter regime, realizable utility path,
  teacher margin, finite mechanism tails, stopping rule, and strict
  exclusion of \(\perp\).
- Conclusion used: only actual list membership and its inherited confidence
  mode. Exact leaf identity and empirical error remain current obligations.

### Lyu Definition 4.2, irreducibility definition, and Definition 4.3

- Source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*,
  arXiv:2510.00076v1, frozen TeX hash recorded in Step Identity. The exact
  labels are `def: p-decomposition`, `def: irreducible`, and
  `def: essential hypothesis`.
- Restated decomposition leaf condition: in a valid
  \((p,d)\)-decomposition, every leaf \(G\) is
  \(p2^{d-\operatorname{LD}(G)}\)-irreducible. The decomposition degree is
  the largest leaf dimension, and an optimal decomposition minimizes that
  degree.
- Restated irreducibility convention: a nonempty class \(G\) is
  \(q\)-irreducible if, for every sequence \(z_1,\ldots,z_q\),
  \[
  \operatorname{LD}\!left(
    G|_{(z_1,\operatorname{SOA}_G(z_1)),\ldots,
          (z_q,\operatorname{SOA}_G(z_q))}
  \right)=\operatorname{LD}(G).
  \tag{6}
  \]
  The labels in every restriction are supplied by the one fixed function
  \(\operatorname{SOA}_G\), not by successively recomputed SOA functions.
- Restated essential-function definition: if
  \(t=\operatorname{DDim}_{p,d}(H)\), then an actual function
  \(f:X\to\{0,1\}\) is \((p,d)\)-essential to \(H\) exactly when every
  optimal \((p,d)\)-decomposition of \(H\) has a leaf \(G\) satisfying
  \[
  \operatorname{LD}(G)=t,
  \qquad \operatorname{SOA}_G\equiv f
  \quad\text{as functions on }X.
  \tag{7}
  \]
- Current-object mapping: \((H,p,f,G)\) maps to
  \((H_i^{\widehat r},p_{\widehat r},\widehat f,G)\). Accepted `step_006`
  checks all source applicability hypotheses and the leaf scale (2).
- Conclusion used and non-output boundary: (6)-(7) justify the exact
  selected-function restriction in
  Proposition~\ref{prop:step-010-exact-leaf-witness} and
  Lemma~\ref{lem:step-010-irreducible-contradiction}. These definitions do
  not by themselves prove that the learner selected a list item or that
  any member has low master error.

### Lyu Theorem 3 proof: empirical empty-restriction contradiction

- Source or name: the proof of Theorem 3
  (`thm: DP-ERM-littlestone`) in the same frozen arXiv v1 source.
- Source statement used: the utility proof takes an actual
  \(\widehat h=\operatorname{SOA}_{\mathcal G}\) with
  \(\mathcal G\subseteq H_i^j\), observes on its good event that every
  member of \(H_i^j\) has master error at most \(2\alpha_{\rm src}\), and
  argues that \(\operatorname{err}_S(\widehat h)>2\alpha_{\rm src}\)
  would force
  \[
  \mathcal G|_{(x_1,\widehat h(x_1)),\ldots,
                    (x_n,\widehat h(x_n))}=\varnothing,
  \]
  contradicting irreducibility.
- Current-object mapping: source \((n,\alpha_{\rm src},j,\widehat h,
  \mathcal G)\) maps to
  \((n_0,\gamma,r,\widehat f,G)\). The source uses
  \(nd\)-irreducibility and consumes only length \(n\); accepted (2)
  directly supplies both \(n_0d\) as a lower scale and
  \(n_0\)-irreducibility. The source's parent-class master-error assertion
  is not imported: Lemma~\ref{lem:step-010-parent-master-error} proves its
  current counterpart from (1) and (5).
- Required assumptions and discharge: exact actual-function identity comes
  from Proposition~\ref{prop:step-010-exact-leaf-witness}; the full-master
  bound for every leaf member comes from
  Lemma~\ref{lem:step-010-parent-master-error}; and the source definition
  (6) is checked directly in
  Lemma~\ref{lem:step-010-irreducible-contradiction}.
- Conclusion used and known non-outputs: only the deterministic empirical
  contradiction is used. The printed probability-one amplification,
  asymptotic teacher count, public sample rate, literal source-stage scale,
  and theorem-statement typo `SOA_G(h)` are not used as outputs.

### Local-result application map

- Proposition~\ref{prop:step-010-exact-leaf-witness} will supply the exact
  selected leaf \(G\), its containment, actual-function identity, and the
  two shorter irreducibility levels.
- Lemma~\ref{lem:step-010-parent-master-error} will supply
  \(e_S(g)\le2\gamma\) for every \(g\in G\), because
  \(G\subseteq H_i^{\widehat r}\).
- Lemma~\ref{lem:step-010-irreducible-contradiction} will combine those two
  outputs into \(e_S(\widehat f)\le2\gamma\). These results are proved
  below before they are used in Target-Step Assembly.

## Local Derivation

The \(d=0\) branch evaluates no positive-branch stage, list, decomposition,
or selection object. Fix \(d\ge1\) for the remainder.

### unit_001: proposition

**Proposition (Exact selected leaf witness and inherited irreducibility).**
\label{prop:step-010-exact-leaf-witness}
Under Assumption~\ref{assump:finite-littlestone}, accepted
Propositions~\ref{prop:step-006-essential-lists} and
\ref{prop:step-008-actual-output}, and accepted
Lemma~\ref{lem:step-006-leaf-irreducibility}, suppose \(d\ge1\) and fix a
utility-path realization in
\(E_{\rm good}\cap\mathcal E_{\rm mech}\). Then there are
\(\widehat r\in\{0,\ldots,d\}\), \(i\in[k]\), an optimal
\((p_{\widehat r},d)\)-decomposition of the nonempty class
\(H_i^{\widehat r}\), and a degree-attaining leaf
\(G\subseteq H_i^{\widehat r}\) such that, for
\(t:=\operatorname{LD}(G)\),
\[
G\subseteq H_i^{\widehat r}\subseteq C,
\qquad
\widehat f\equiv\operatorname{SOA}_G
\quad\text{on every }x\in X,
\tag{8}
\]
and \(G\) is
\[
K:=p_{\widehat r}2^{d-t}\text{-irreducible},
\qquad
K\ge n_0d\ge\max\{n_0,d+1\}.
\tag{9}
\]
Consequently \(G\) is both \(n_0\)- and
\((d+1)\)-irreducible. At \(d=1\), (9) remains valid already at
\(\widehat r=0\). If the decomposition dimension is zero, then
\(t=0\), the leaf \(G\) is a singleton, and (8) is still equality of the
actual selected function on all of \(X\).

**Proof.** Accepted Proposition~\ref{prop:step-008-actual-output} gives (3).
Choose an index \(i\) for which
\(\widehat f\in\mathcal L_i^{\widehat r}\). The totalized empty-class
convention in accepted
Proposition~\ref{prop:step-006-essential-lists} implies
\(H_i^{\widehat r}\ne\varnothing\). Apply the exact Definition 4.3
interface from that proposition to any fixed optimal
\((p_{\widehat r},d)\)-decomposition. It supplies a degree-attaining leaf
\(G\), with
\[
t=\operatorname{LD}(G)
=\operatorname{DDim}_{p_{\widehat r},d}(H_i^{\widehat r}),
\]
and gives (8). Because a decomposition leaf is a restriction subclass of
its root class, the two containments in (8) are literal containments of
function classes. The equality in (8) is the source equality on \(X\), not
an equality on the indexed sample.

Accepted Lemma~\ref{lem:step-006-leaf-irreducibility} applies to this exact
degree-attaining leaf and gives (9), including the already-proved
shorter-sequence implications. Thus no change of irreducibility convention
or scale occurs here.

For the smallest dimension, accepted `step_006` gives \(n_0\ge2\). Hence,
when \(d=1\),
\[
K\ge p_0=n_0\ge2=d+1,
\]
even if \(\widehat r=0\) and \(t=d=1\).

For the decomposition-dimension-zero boundary, degree attainment gives
\(t=0\). The leaf \(G\) is nonempty. If it contained two distinct
functions, they would disagree at some \(x\in X\), and the two nonempty
restrictions at \((x,0)\) and \((x,1)\) would witness a depth-one
Littlestone tree, contradicting \(\operatorname{LD}(G)=0\). Therefore
\(G=\{g\}\) for one function \(g\), and
\(\operatorname{SOA}_G=g=\widehat f\) on all of \(X\). This also shows
directly that the zero-dimensional leaf remains nonempty under every
restriction labeled by \(\widehat f\). \(\square\)

### unit_002: lemma

**Lemma (Full-master error of every current-class member).**
\label{lem:step-010-parent-master-error}
Under Assumption~\ref{assump:finite-littlestone}, accepted
Proposition~\ref{prop:step-006-source-map}, and the local condition
\(E_{\rm good}\), suppose \(d\ge1\). For every
\(0\le r\le d\), every \(i\in[k]\), and every \(g\in H_i^r\),
\[
e_S(g)\le2\gamma.
\tag{10}
\]
This includes \(d=1\), the boundary \(e_S(g)=\gamma/3\), and every
nonempty DDim-zero leaf member.

**Proof.** Fix \(r,i,g\) as in the statement. By (1),
\[
e_i(g)\le\rho^{r+1}\gamma\le\gamma,
\tag{11}
\]
because \(0<\rho<1\).

If \(e_S(g)\le\gamma/3\), then (10) is immediate. In particular, the
closed boundary \(e_S(g)=\gamma/3\) belongs to this case.

If \(e_S(g)>\gamma/3\), the high-error clause of (5) gives
\[
e_i(g)\ge\left(1-\frac1{5d}\right)e_S(g).
\tag{12}
\]
The denominator is positive because \(d\ge1\). Combining (11)-(12),
\[
e_S(g)
\le \frac{\gamma}{1-1/(5d)}
=\frac{5d}{5d-1}\gamma
\le\frac54\gamma
<2\gamma.
\tag{13}
\]
The inequality \(5d/(5d-1)\le5/4\) is sharp at the permitted boundary
\(d=1\). Thus both exhaustive guards prove (10). The proof does not use
nonemptiness of the whole class beyond the displayed membership of \(g\),
and it is uniform over all stages, including \(r=d\). \(\square\)

### unit_003: lemma

**Lemma (Irreducibility forbids the high-error SOA restriction).**
\label{lem:step-010-irreducible-contradiction}
Under Assumption~\ref{assump:finite-littlestone}, let \(n_0\ge1\), let
\(S=((x_u,y_u))_{u=1}^{n_0}\) be any indexed labeled sample, and let
\(G\subseteq C\) be nonempty and \(n_0\)-irreducible under the exact
fixed-SOA convention (6). If
\[
f\equiv\operatorname{SOA}_G\quad\text{on }X,
\qquad
e_S(g)\le2\gamma\quad\text{for every }g\in G,
\tag{14}
\]
then
\[
e_S(f)\le2\gamma.
\tag{15}
\]
The conclusion permits repeated sample points and does not require
\(f\in C\).

**Proof.** Suppose instead that \(e_S(f)>2\gamma\), and form the exact
source restriction
\[
G_S^f
:=G|_{(x_1,f(x_1)),\ldots,(x_{n_0},f(x_{n_0}))}.
\tag{16}
\]
If \(G_S^f\ne\varnothing\), choose \(g\in G_S^f\). Then
\(g(x_u)=f(x_u)\) for every indexed coordinate \(u\), so, with the same
labels \(y_u\),
\[
\mathbf 1\{g(x_u)\ne y_u\}
=\mathbf 1\{f(x_u)\ne y_u\}
\quad(1\le u\le n_0).
\]
Consequently \(e_S(g)=e_S(f)>2\gamma\), contradicting (14). Therefore
\[
G_S^f=\varnothing.
\tag{17}
\]

On the other hand, (14) identifies every label in (16) with
\(\operatorname{SOA}_G(x_u)\). The source definition of
\(n_0\)-irreducibility, applied to the point sequence
\(x_1,\ldots,x_{n_0}\), gives
\[
\operatorname{LD}(G_S^f)=\operatorname{LD}(G).
\tag{18}
\]
Since \(G\) is nonempty, \(\operatorname{LD}(G)\ge0\), while the empty
class in (17) cannot explain even the root of a depth-zero Littlestone tree
and therefore cannot have the same dimension. This contradicts (18),
proving (15).

Nothing in the argument requires the \(x_u\)'s to be distinct. Repeating a
point repeats the same fixed label \(f(x_u)\), exactly as permitted by the
universal sequence quantifier in (6). If \(e_S(f)=0\), (15) is immediate;
if \(\operatorname{LD}(G)=0\), Proposition~\ref{prop:step-010-exact-leaf-witness}
also shows directly that \(G=\{f\}\), so (14) already implies (15).
\(\square\)

## Target-Step Assembly

Fix any realizable positive-branch master-sample realization and partition
in \(E_{\rm good}\), and any mechanism outcome in
\(\mathcal E_{\rm mech}\). Accepted
Proposition~\ref{prop:step-008-actual-output} gives an actual selected
function \(\widehat f\), not a trace class. Proposition~\ref{prop:step-010-exact-leaf-witness}
(unit_001) then supplies indices \(\widehat r,i\), a nonempty
degree-attaining leaf \(G\), and \(t=\operatorname{LD}(G)\), with
\[
G\subseteq H_i^{\widehat r}\subseteq C,
\qquad
\widehat f\equiv\operatorname{SOA}_G\text{ on }X,
\qquad
G\text{ is }p_{\widehat r}2^{d-t}\text{-irreducible}.
\tag{19}
\]
The same proposition gives the exact lower scale
\[
p_{\widehat r}2^{d-t}ge n_0d\ge\max\{n_0,d+1\},
\tag{20}
\]
and hence both \(n_0\)- and \((d+1)\)-irreducibility.

By Lemma~\ref{lem:step-010-parent-master-error} (unit_002), every
\(g\in G\subseteq H_i^{\widehat r}\) satisfies
\(e_S(g)\le2\gamma\). Apply
Lemma~\ref{lem:step-010-irreducible-contradiction} (unit_003) to the exact
identity and \(n_0\)-irreducibility in (19)-(20). It gives
\[
e_S(\widehat f)\le2\gamma
=2\left(\frac\alpha{16}\right)
=\frac\alpha8.
\tag{21}
\]

Define the fixed, data-independent improper family already specified by the
accepted sketch,
\[
\widehat C_{d+1}
:=\left\{\operatorname{SOA}_{F}:
F\subseteq C\text{ is }(d+1)\text{-irreducible}\right\}.
\tag{22}
\]
Equations (19)-(20) imply
\(\widehat f\in\widehat C_{d+1}\) with the very same function on \(X\).
Thus (19)-(22) prove the exact accepted `step_010` row: every actual selected
item has the required current-leaf witness, both irreducibility levels,
exact fixed-family membership, and master error at most
\(2\gamma=\alpha/8\). No sample-trace representative, properness claim,
population bound, or Lemma 4.2 conclusion is used.

## Explicit Rate Audit

- Exposed variables: \(d,n_0,r,t,p_r,\alpha,\gamma\), with
  \(\gamma=\alpha/16\). The inherited confidence quantities are
  \(\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS}\).
- Hidden constants may depend on: None. This step introduces no hidden
  constant.
- Hidden constants may not depend on: \(X,C,D,c,S,\mathcal P\), any stage,
  block, decomposition, leaf, list, trace, event, or selected function, nor
  on any exposed scalar parameter.
- Fixed quantities: the deterministic derivation fixes the indexed master
  sample, realized partition, and one selected mechanism outcome. The
  selected stage and list index may depend on those objects, but every bound
  is uniform over their full accepted ranges.
- Probability mode: the identity and empirical-error implication are
  deterministic conditional on the already-produced
  \(E_{\rm good}\cap\mathcal E_{\rm mech}\). This step introduces no new
  event and no new failure probability. Accepted `step_008` retains the
  mechanism charge \(\beta_{\rm AT}+\beta_{\rm SS}=\beta/2\) and the
  combined pre-generalization charge \(3\beta/4\).
- Horizon mode: one fixed master sample and one of the exactly \(d+1\)
  stages \(r=0,\ldots,d\). There is no repeated, asymptotic, all-time, or
  stopping-time upgrade.
- Norm mode: exact equality of binary functions on \(X\), empirical binary
  \(0\)-\(1\) error \(e_S\), and Littlestone/decomposition dimension. No
  population risk is asserted.
- Admissibility conditions and auxiliary tolerances: \(d\ge1\),
  \(n_0\ge2\), \(0\le r\le d\), \(0\le t\le d\), nonempty classes for
  SOA/irreducibility, and the inherited \(\gamma=\alpha/16\). The \(d=0\)
  branch bypasses all these objects.
- Term absorption or simplification inequalities: membership gives
  \(e_i(g)\le\rho^{r+1}\gamma\le\gamma\); the high-error event gives
  \[
  e_S(g)\le\frac{\gamma}{1-1/(5d)}
  \le\frac54\gamma<2\gamma;
  \]
  the leaf scale gives (20); and the final tolerance conversion is the exact
  equality \(2\gamma=\alpha/8\). No term is absorbed by prose.
- Probability conversion: None. Only deterministic implications on the
  accepted events are proved here.
- Contribution to any Rate Specialization Bridge: equation (21) is the
  exact internal-to-public accuracy bridge consumed by `step_011`; it costs
  no additional samples and leaves no hidden list or stage factor.
- Baseline-reduction check: at \(d=1\), already
  \(p_0=n_0\ge d+1=2\), and the worst high-error denominator is exactly
  \(4/5\), giving \(5\gamma/4<2\gamma\). At decomposition dimension zero,
  the selected leaf is a singleton and the exact identity/error conclusion
  remains valid. At \(d=0\), the accepted zero-sample learner bypasses the
  positive branch rather than receiving a weakened surrogate conclusion.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects: the learner output \(\widehat f\), its master error
  \(e_S(\widehat f)\), and the fixed class \(\widehat C_{d+1}\) in (22).
  The minimal downstream interface is
  \[
  \widehat f\in\widehat C_{d+1},
  \qquad e_S(\widehat f)\le\alpha/8.
  \]
- Appendix-local accepted objects: \(E_{\rm good}\),
  \(\mathcal E_{\rm mech}\), \(H_i^r\), \(p_r\), and
  \(\mathcal L_i^r\). They are generated by accepted dependencies, not
  theorem assumptions. Equations (1), (3), and (5) translate them into the
  current step without changing their definitions.
- Appendix-local witness objects: the selected stage \(\widehat r\), list
  index \(i\), leaf \(G\), leaf dimension \(t\), and scale
  \(K=p_{\widehat r}2^{d-t}\). Proposition~\ref{prop:step-010-exact-leaf-witness}
  proves their existence and bounds. Only the existential exact-identity
  witness and fixed-family membership are exported.
- Proof-local objects: the restricted class \(G_S^f\) in (16) and the
  temporary generic function \(f\) in
  Lemma~\ref{lem:step-010-irreducible-contradiction}. They are eliminated
  before the downstream interface.
- Constant and tolerance provenance: \(\rho=1-1/(2d)\), the relative
  tolerance \(1/(5d)\), and \(\gamma=\alpha/16\) are exact accepted
  source/sketch quantities. The numbers \(2\), \(5/4\), and \(1/8\) in
  the proof are derived explicitly in (13) and (21); no free constant,
  margin, threshold, or radius is introduced.
- Assumption provenance: finite Littlestone dimension is primitive.
  \(E_{\rm good}\), \(\mathcal E_{\rm mech}\), current-class/list
  membership, actual selection, and the positive integer scales are derived
  outputs of accepted dependencies. Exact leaf identity, the full-master
  member bound, and the empty-restriction contradiction are proved in this
  step. No generated condition is promoted to a primitive assumption.
- Actual-function and improperness boundary: \(\widehat f\) need not lie in
  \(C\). What is proved is the exact equality
  \(\widehat f=\operatorname{SOA}_G\) on every point of \(X\) for
  \(G\subseteq C\). Distinct functions with the same sample trace are never
  identified.
- Empty and DDim-zero boundary: an empty current class has an empty list, so
  it cannot witness the actual selected item in (3). A selected item from a
  DDim-zero class has a nonempty singleton leaf and therefore the exact SOA
  identity; Lemma~\ref{lem:step-010-parent-master-error} applies to its sole
  member.
- Infinite-class and repeated-point boundary: no cardinality of \(C\) is
  used. The source definitions apply to possibly infinite finite-LD classes,
  while the restriction argument is indexed and permits repeated points.
- Generated-output flow: accepted `step_006` produces exact lists, leaf
  witnesses, and irreducibility before accepted `step_008` produces actual
  selection. This step composes those outputs with the already-produced
  event to obtain exact fixed-family membership and empirical utility for
  `step_011`.
- Source audit boundary: the frozen arXiv v1 TeX was checked directly.
  Definition 4.3 supplies equality on \(X\); Definition 4.2 supplies the
  leaf scale; Definition `def: irreducible` uses the fixed SOA labels in
  (6); and the proof of Theorem 3 supplies only the empirical contradiction
  pattern. Its endpoint omission, literal stage scale, asymptotic rate, and
  probability-one sentence are not consumed.
- Diagnostic boundary: the paired `global_proof_review.md` has status
  `ACCEPTED`. The only step-relevant diagnostic planning split used here was
  leaf identity -> parent-class master bound -> empty-restriction
  contradiction. Every mathematical assertion was independently obtained
  from the setting, accepted dependencies, checked source statements, and
  the named local derivations above. The global diagnostic was not used as
  evidence, a cited result, an assumption source, or authority to change the
  target claim.
