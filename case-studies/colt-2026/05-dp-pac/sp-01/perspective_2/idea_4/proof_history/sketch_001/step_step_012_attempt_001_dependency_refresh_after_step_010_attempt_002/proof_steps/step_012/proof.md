# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_006`:
    `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` /
    `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`;
  - `step_008`:
    `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` /
    `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`;
  - `step_010`:
    `117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925` /
    `ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3`.
- Independently checked primary source: Xin Lyu, *Private Learning of
  Littlestone Classes, Revisited*, arXiv:2510.00076v1,
  `<TEMP_ROOT>/lyu-source.bdDyo3/submission/main.tex`, SHA-256
  `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.
  The checked passages are Definition 4.3
  (`def: essential hypothesis`), the empirical-error paragraph in the
  proof of Theorem 3 (`thm: DP-ERM-littlestone`), and Lemma 4.2
  (`lemma: Ldim-of-SOA`).
- Diagnostic planning pair, not proof evidence: `global_proof.md` SHA-256
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
  and accepted `global_proof_review.md` SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`.

## Target Step Claim

- Intended claim: Prove exact SOA membership and
  \(e_{\bar S}(\bar H)\leq\alpha/8\) for actual outputs on the source-good
  path.
- Depends on: `step_006`, `step_008`, `step_010`.
- Assumptions used: Primitive `assump:finite-littlestone`; derived
  \(E_{\mathrm{good}}\) and actual output.
- Technical challenge: Preserve actual-function identity and improper
  fixed-family membership.
- Intended proof tool or cited result: Lyu Definition 4.3, Theorem 3's
  empirical contradiction, and Lemma 4.2.
- Output target: SOA fixed-family and empirical-error output.
- Rate objective: Internal accuracy bridge.
- Row-local review status: `PENDING`; acceptance of the sketch is supplied
  by the binding `proof_sketch_review.md`, not by this row-local field.

More explicitly, work on the positive branch \(d\geq1\). Fix the indexed
quotient master sample and its partition,

\[
 \bar S=((q_j,y_j))_{j=1}^{n_0},
 \qquad \mathcal P=(B_1,\ldots,B_k),
 \qquad |B_i|=m,
 \qquad n_0=km.
\tag{1}
\]

For every \(f\in H_C\), define the full-master and block empirical errors

\[
 e_{\bar S}(f)
 :=\frac1{n_0}\sum_{j=1}^{n_0}
       \mathbf1\{f(q_j)\ne y_j\},
 \qquad
 e_i(f)
 :=\frac1m\sum_{j\in B_i}
       \mathbf1\{f(q_j)\ne y_j\}.
\tag{2}
\]

Retain the accepted source constants and current restrictions

\[
 \gamma:=\frac{\alpha}{16},
 \qquad
 a_d:=\frac1{5d},
 \qquad
 \rho:=1-\frac1{2d},
\tag{3}
\]

\[
 H_i^r:=\{\bar c\in\bar C:
              e_i(\bar c)\leq\rho^{r+1}\gamma\},
 \qquad
 p_r:=2^rn_0d,
 \qquad 0\leq r\leq d.
\tag{4}
\]

Write \(E_{\mathrm{core}}\) only as a proof-local shorthand for the joint
path condition that the accepted source event \(E_{\mathrm{good}}\) holds
and the conditional mechanism event \(E_{\mathrm{mech}}\) from accepted
Step 010 holds. The target is deterministic on this path. It must prove
that the actual selected output has the exact form

\[
 \bar H=\operatorname{SOA}_{\mathcal G}
 \quad\text{for a nonempty }\mathcal G\subseteq\bar C
 \text{ that is both }n_0\text{- and }(d+1)\text{-irreducible},
\tag{5}
\]

that

\[
 \bar H\in
 \widehat C_{d+1}
 :=\left\{\operatorname{SOA}_{\mathcal A}:
       \varnothing\ne\mathcal A\subseteq\bar C
       \text{ is }(d+1)\text{-irreducible}\right\},
 \qquad
 \operatorname{LD}(\widehat C_{d+1})\leq d,
\tag{6}
\]

and that

\[
 e_{\bar S}(\bar H)\leq2\gamma=\frac{\alpha}{8}.
\tag{7}
\]

The family in (6) is fixed from the static quotient class \(\bar C\), not
from the sample, partition, selected stage, or output. It is an improper
family in \(H_C\); neither (5) nor (6) asserts \(\bar H\in\bar C\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions used directly:
  - Assumption~\ref{assump:finite-littlestone}: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). This proof concerns the source
    mechanism's positive branch \(d\geq1\); the setting's \(d=0\) branch is
    the exact no-data singleton bypass and has no selected source list.
  - The quotient objects \(Q_C,\bar C,H_C\), the indexed sample, and the
    deterministic positive-branch quantities in (1)-(4) are setting or
    accepted-sketch definitions. They are not additional assumptions.
- Derived invariants and outputs supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-006-good-event} supplies the exact
    event \(E_{\mathrm{good}}\). On it, simultaneously for every actual
    \(\bar c\in\bar C\) and every \(i\in[k]\),

    \[
    \begin{cases}
    (1-a_d)e_{\bar S}(\bar c)
       \leq e_i(\bar c)
       \leq(1+a_d)e_{\bar S}(\bar c),
       &e_{\bar S}(\bar c)>\gamma/3,\\
    0\leq e_i(\bar c)\leq\gamma/2,
       &e_{\bar S}(\bar c)\leq\gamma/3.
    \end{cases}
    \tag{8}
    \]

    Equality at \(e_{\bar S}=\gamma/3\) belongs to the low branch. The
    event is simultaneous over actual functions; empirical traces are used
    only to make its probability union finite.
  - Accepted Lemma~\ref{lem:step-008-stage-map} and
    Propositions~\ref{prop:step-008-essential-lists} and
    \ref{prop:step-008-leaf-scale} supply the exact source/current map,
    actual essential lists, maximal-leaf SOA identity, and the complete
    irreducibility scale. In particular, for
    \(\bar f\in\mathcal L_i^r\), a maximal leaf \(\mathcal G\) satisfies

    \[
      \bar f=\operatorname{SOA}_{\mathcal G},
      \qquad
      \mathcal G\subseteq H_i^r\subseteq\bar C,
      \qquad
      \mathcal G\text{ is }p_r2^{d-t}\text{-irreducible},
    \tag{9}
    \]

    where
    \(t=\operatorname{DDim}_{p_r,d}(H_i^r)
       =\operatorname{LD}(\mathcal G)\), and

    \[
      p_r2^{d-t}\geq p_0=n_0d\geq\max\{n_0,d+1\}.
    \tag{10}
    \]

  - Accepted Proposition~\ref{prop:step-010-mechanism-good} supplies, on
    \(E_{\mathrm{core}}\), a selected stage
    \(\widehat r\in\{0,\ldots,d\}\), a producer \(i\in[k]\), and an
    actual-status terminal output satisfying

    \[
      \bar H\in\mathcal L_i^{\widehat r}.
    \tag{11}
    \]

    It excludes the failure symbol and every fallback status, even when the
    function value selected in (11) equals the default \(\bar c_0\).
- Local conditional hypotheses:
  - Fixing a path in \(E_{\mathrm{core}}\) is the exact conditional scope
    of this step. Neither \(E_{\mathrm{good}}\), \(E_{\mathrm{mech}}\),
    list membership, nor nonfallback status is promoted to a primitive
    theorem assumption.
  - No empirical-error conclusion, fixed-family membership, properness,
    privacy, population error, or PAC event is assumed. The first two are
    proved below; the others are outside this target.
- Accepted dependency artifacts: exactly the six proof/review files whose
  hashes appear in `## Step Identity`. Each review has status `ACCEPTED`
  for sketch attempt 1.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:finite-littlestone}, accepted Lemma~\ref{lem:step-008-stage-map}, accepted Propositions~\ref{prop:step-008-essential-lists}, \ref{prop:step-008-leaf-scale}, and \ref{prop:step-010-mechanism-good}, if \(d\ge1\) and the fixed path lies in \(E_{\mathrm{core}}\), then the actual selected item has an exact current-stage maximal leaf \(\mathcal G\subseteq H_i^{\widehat r}\), satisfies \(\bar H=\operatorname{SOA}_{\mathcal G}\) pointwise on \(Q_C\), and \(\mathcal G\) is \(p_{\widehat r}2^{d-t}\)-irreducible with scale at least \(n_0\) and \(d+1\); moreover \(H_i^{\widehat r}=H_{i,\mathrm{src}}^{\widehat r+1}\) and \(p_{\widehat r}=p_{\widehat r+1,\mathrm{src}}/2\). | Preserves actual status, selected-stage/source identity, exact SOA identity, the full irreducibility scale, and the half-scale convention. |
| `unit_002` | lemma | Under Assumption~\ref{assump:finite-littlestone}, accepted Proposition~\ref{prop:step-006-good-event}, and Proposition~\ref{prop:step-012-selected-leaf}, if \(d\ge1\) and \(E_{\mathrm{core}}\) holds, then every \(g\in\mathcal G\) obeys \(e_{\bar S}(g)\le2\gamma\). | Transfers the selected current restriction's block threshold to the same leaf's full-master errors without applying \(E_{\mathrm{good}}\) to the potentially improper output. |
| `unit_003` | lemma | Under Assumption~\ref{assump:finite-littlestone}, Proposition~\ref{prop:step-012-selected-leaf}, Lemma~\ref{lem:step-012-leaf-error}, and the checked empirical-contradiction pattern in Lyu's proof of Theorem 3, if \(d\ge1\) and \(E_{\mathrm{core}}\) holds, then \(e_{\bar S}(\bar H)\le2\gamma=\alpha/8\). | Uses exact function identity and \(n_0\)-irreducibility on the full indexed sample to prove the internal accuracy bridge. |
| `unit_004` | proposition | Under Assumption~\ref{assump:finite-littlestone}, accepted Lemma~\ref{lem:step-008-stage-map}, Proposition~\ref{prop:step-012-selected-leaf}, and checked Lyu Lemma 4.2, if \(d\ge1\) and \(E_{\mathrm{core}}\) holds, then the same actual output lies in the fixed family \(\widehat C_{d+1}\) of (6), and \(\operatorname{LD}(\widehat C_{d+1})\le d\), without asserting \(\bar H\in\bar C\). | Proves exact fixed improper-family membership and its structural dimension bound. |
| `unit_005` | proposition | Under Assumption~\ref{assump:finite-littlestone} and Propositions~\ref{prop:step-012-selected-leaf}, \ref{prop:step-012-fixed-family}, and Lemma~\ref{lem:step-012-empirical}, if \(d\ge1\) and \(E_{\mathrm{core}}\) holds, then the conclusions preserve \(\widehat r=0\), \(\widehat r=d\), \(d=1\), \(v=1\), \(v=d\), DDim-zero leaves, singleton and duplicate lists, repeated sample points, actual output equal in value to fallback, empty/fallback exclusion on the joint good path, exact \(\alpha/8\) equality, and improperness. | Closes the required endpoint, normalization, status, duplication, and no-overclaim audits. |

Atomic step = no. Actual selected-leaf recovery, master-error transfer for
the leaf class, the irreducibility contradiction, the fixed-family source
application, and the boundary/status audit are independent obligations.

## Cited Result Applications

### Accepted dependency: exact simultaneous source event

Accepted Proposition~\ref{prop:step-006-good-event} states exactly (8) for
every actual function in \(\bar C\), using the indexed master normalization
\(1/n_0\) and block normalization \(1/m\). Its proof deduplicates equal
error traces only inside a finite union; the conclusion remains pointwise
for each actual function. Lemma~\ref{lem:step-012-leaf-error} applies (8)
only to \(g\in\mathcal G\subseteq\bar C\). It does not apply (8) to
\(\bar H\), because the selected SOA function need not belong to
\(\bar C\).

### Accepted dependency: source/current lists and exact leaf witnesses

Accepted Lemma~\ref{lem:step-008-stage-map} states, for every current
\(0\le r\le d\),

\[
 H_i^r=H_{i,\mathrm{src}}^{r+1},
 \qquad
 p_r=2^rn_0d=\frac{p_{r+1,\mathrm{src}}}{2},
\tag{12}
\]

and, only for a current transition \(r<d\),

\[
 p_{r+1}=2p_r.
\tag{13}
\]

It also proves \(\operatorname{LD}(\bar C)\le d\) directly from
Assumption~\ref{assump:finite-littlestone}. Accepted
Proposition~\ref{prop:step-008-essential-lists} defines
\(\mathcal L_i^r\) as the actual Definition 4.3 essential-function set of
the nonempty current class and as the empty set only for an empty outer
restriction. Accepted Proposition~\ref{prop:step-008-leaf-scale} gives
(9)-(10) for every actual list member. Proposition
~\ref{prop:step-012-selected-leaf} consumes those exact interfaces. No
same-scale substitute, empirical-trace representative, or nonexistent
transition beyond stage \(d\) is introduced.

### Accepted dependency: mechanism-good actual output

Accepted Proposition~\ref{prop:step-010-mechanism-good} states that,
conditional on a fixed realizable sample and partition satisfying
\(E_{\mathrm{good}}\), the mechanism event has conditional failure at most
\(\beta/2\), and on that event there are
\(\widehat r\in\{0,\ldots,d\}\) and \(i\in[k]\) satisfying (11). More
importantly for this deterministic step, its conclusion records actual
Sparse Sample status: the output is a literal member of the current list,
not \(\perp\) or a totalized fallback. This proof uses the pathwise output
interface only. It neither recharges the \(\beta/2\) tail nor derives a new
probability statement.

### Lyu Definition 4.3: actual essential function

Let \(\mathcal A\subseteq\{0,1\}^{Q_C}\) be nonempty and let
\(t=\operatorname{DDim}_{p,d}(\mathcal A)\). Definition 4.3 says that an
actual function \(f:Q_C\to\{0,1\}\) is \((p,d)\)-essential to
\(\mathcal A\) exactly when, in every optimal
\((p,d)\)-decomposition of \(\mathcal A\), there is a leaf
\(\mathcal A_\ell\) with

\[
 \operatorname{LD}(\mathcal A_\ell)=t,
 \qquad
 \operatorname{SOA}_{\mathcal A_\ell}=f
 \quad\text{pointwise on all of }Q_C.
\tag{14}
\]

For the current application,
\(\mathcal A=H_i^{\widehat r}\), \(p=p_{\widehat r}\), and
\(f=\bar H\). Nonemptiness follows from actual list membership, and the
optimal decomposition and dimension premises are already discharged by
accepted Step 008. Equation (14) supplies literal function identity, not
equality only on \(\bar S\).

### Lyu Theorem 3 proof: empirical restriction contradiction

The printed statement of Lyu Theorem 3 contains the malformed phrase
`\(\operatorname{SOA}_{\mathcal G}(h)\)`. That phrase is not used. The
proof itself explicitly uses an output
\(\widehat h=\operatorname{SOA}_{\mathcal G}\), a class
\(\mathcal G\) irreducible for at least the sample length, and the fact that
every \(g\in\mathcal G\) has empirical error at most a threshold \(2u\).
It proves the following current-notation implication:

> If \(S=((x_j,y_j))_{j=1}^n\) is indexed,
> \(\varnothing\ne\mathcal G\subseteq\{0,1\}^{\mathcal X}\) is
> \(n\)-irreducible, \(h=\operatorname{SOA}_{\mathcal G}\), and every
> \(g\in\mathcal G\) has \(e_S(g)\le2u\), then
> \(e_S(h)\le2u\).

Indeed, if \(e_S(h)>2u\), no \(g\in\mathcal G\) can agree with \(h\) on
all \(x_1,\ldots,x_n\); otherwise their indexed error indicators are
identical. The restriction of \(\mathcal G\) along the full SOA-labeled
sequence is therefore empty, contradicting \(n\)-irreducibility.

Instantiate this implication with

\[
 \mathcal X=Q_C,
 \quad S=\bar S,
 \quad n=n_0,
 \quad h=\bar H,
 \quad u=\gamma.
\tag{15}
\]

Proposition~\ref{prop:step-012-selected-leaf} supplies the exact SOA
identity and \(n_0\)-irreducibility, while
Lemma~\ref{lem:step-012-leaf-error} supplies the premise for every
\(g\in\mathcal G\). Lemma~\ref{lem:step-012-empirical} reproduces the
contradiction in full rather than importing Theorem 3's privacy, sample
bound, realizability statement, high-constant-probability analysis, or
unsupported probability-one sentence.

### Lyu Lemma 4.2: Littlestone dimension of irreducible SOAs

For a binary class \(\mathcal H\) with
\(\operatorname{LD}(\mathcal H)\le d\), define

\[
 \widehat{\mathcal H}_{d+1}
 :=\{\operatorname{SOA}_{\mathcal A}:
       \varnothing\ne\mathcal A\subseteq\mathcal H
       \text{ is }(d+1)\text{-irreducible}\}.
\tag{16}
\]

Lyu Lemma 4.2, restating Ghazi et al. Lemma 4.4, concludes

\[
 \operatorname{LD}(\widehat{\mathcal H}_{d+1})\le d.
\tag{17}
\]

Use \(\mathcal H=\bar C\). Accepted
Lemma~\ref{lem:step-008-stage-map} supplies
\(\operatorname{LD}(\bar C)\le d\), and
Proposition~\ref{prop:step-012-selected-leaf} supplies a nonempty
\((d+1)\)-irreducible \(\mathcal G\subseteq\bar C\) with the same SOA
function as \(\bar H\). The lemma supplies only (17). It supplies no
properness, measurability, privacy, empirical-risk, or population-risk
conclusion.

### Local-result applications

- Proposition~\ref{prop:step-012-selected-leaf} supplies the exact
  selected-stage leaf, actual SOA identity, and irreducibility scales to
  Lemma~\ref{lem:step-012-leaf-error},
  Lemma~\ref{lem:step-012-empirical}, and
  Proposition~\ref{prop:step-012-fixed-family}.
- Lemma~\ref{lem:step-012-leaf-error} supplies the all-\(g\) empirical
  premise to Lemma~\ref{lem:step-012-empirical}.
- Lemma~\ref{lem:step-012-empirical} and
  Proposition~\ref{prop:step-012-fixed-family} supply the two exported
  conclusions assembled below.
- Proposition~\ref{prop:step-012-boundaries} verifies that the same named
  conclusions cover every requested endpoint, duplication, status, and
  improper-output boundary without changing their claims.

## Local Derivation

### unit_001: proposition

**Proposition (Actual selected item has an exact current maximal-leaf
SOA).**
\(\label{prop:step-012-selected-leaf}\)
Under Assumption~\ref{assump:finite-littlestone}, accepted
Lemma~\ref{lem:step-008-stage-map}, accepted
Propositions~\ref{prop:step-008-essential-lists},
\ref{prop:step-008-leaf-scale}, and
\ref{prop:step-010-mechanism-good}, suppose \(d\ge1\) and the fixed path
lies in \(E_{\mathrm{core}}\). Then there are
\(\widehat r\in\{0,\ldots,d\}\), \(i\in[k]\), and, in every optimal
\((p_{\widehat r},d)\)-decomposition of
\(H_i^{\widehat r}\), a nonempty leaf \(\mathcal G\) such that, with

\[
 t:=\operatorname{DDim}_{p_{\widehat r},d}(H_i^{\widehat r})
   =\operatorname{LD}(\mathcal G),
\tag{18}
\]

one has

\[
 \bar H\in\mathcal L_i^{\widehat r},
 \qquad
 \mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C,
 \qquad
 \bar H=\operatorname{SOA}_{\mathcal G}
 \quad\text{pointwise on }Q_C.
\tag{19}
\]

The leaf \(\mathcal G\) is
\(p_{\widehat r}2^{d-t}\)-irreducible, and

\[
 p_{\widehat r}2^{d-t}
 \ge p_0=n_0d
 \ge\max\{n_0,d+1\}.
\tag{20}
\]

Thus \(\mathcal G\) is both \(n_0\)-irreducible and
\((d+1)\)-irreducible. The exact source/current identities are

\[
 H_i^{\widehat r}=H_{i,\mathrm{src}}^{\widehat r+1},
 \qquad
 p_{\widehat r}
 =2^{\widehat r}n_0d
 =\frac{p_{\widehat r+1,\mathrm{src}}}{2}.
\tag{21}
\]

If \(\widehat r<d\), the next current scale satisfies
\(p_{\widehat r+1}=2p_{\widehat r}\). If \(\widehat r=d\), there is no
current transition beyond the selected endpoint. The conclusion records
actual selected status even if \(\bar H=\bar c_0\) as a function.

**Proof.** Accepted
Proposition~\ref{prop:step-010-mechanism-good} gives the selected stage,
producer, actual-status output, and first relation in (19). Because the
output is a literal member of \(\mathcal L_i^{\widehat r}\), this list is
nonempty. By the piecewise definition in accepted
Proposition~\ref{prop:step-008-essential-lists}, the corresponding outer
restriction \(H_i^{\widehat r}\) is therefore nonempty and the selected
function is genuinely \((p_{\widehat r},d)\)-essential to it. No DDim or
SOA is evaluated on an empty class.

Apply accepted Proposition~\ref{prop:step-008-leaf-scale} to this exact
list membership. It gives, in every optimal current decomposition, a
maximal leaf \(\mathcal G\), (18), the subset relation in (19), the
pointwise identity in (19), and the full scale (20). That proposition also
proves that irreducibility at the scale in (20) implies irreducibility at
each smaller positive integer scale, giving \(n_0\) and \(d+1\).

Finally, accepted Lemma~\ref{lem:step-008-stage-map} gives (21). Its
factor-two statement gives \(p_{\widehat r+1}=2p_{\widehat r}\) only when
\(\widehat r<d\). The selected list throughout this argument remains the
current half-source-scale list at \(p_{\widehat r}\); it is not relabeled
as a literal source-stage list. At \(\widehat r=d\), (21) uses the source
endpoint \(d+1\) and does not invent a current stage \(d+1\).

Actual versus fallback status comes from the accepted transcript, not from
the function value. Hence equality \(\bar H=\bar c_0\) does not change any
of the preceding memberships or identities. \(\square\)

### unit_002: lemma

**Lemma (Every member of the selected leaf has small master error).**
\(\label{lem:step-012-leaf-error}\)
Under Assumption~\ref{assump:finite-littlestone}, accepted
Proposition~\ref{prop:step-006-good-event}, and
Proposition~\ref{prop:step-012-selected-leaf}, suppose \(d\ge1\) and
\(E_{\mathrm{core}}\) holds. Then every \(g\in\mathcal G\) satisfies

\[
 e_{\bar S}(g)\le2\gamma.
\tag{22}
\]

This is a statement about actual members \(g\in\bar C\); it makes no
application of \(E_{\mathrm{good}}\) to the potentially improper
\(\bar H=\operatorname{SOA}_{\mathcal G}\).

**Proof.** Fix \(g\in\mathcal G\). By (19) and the selected current
restriction (4),

\[
 e_i(g)\le\rho^{\widehat r+1}\gamma\le\gamma,
\tag{23}
\]

because \(0<\rho<1\) and \(\widehat r+1\ge1\). Also
\(g\in\mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C\), so the exact
event (8) applies to this same actual function.

If \(e_{\bar S}(g)\le\gamma/3\), then immediately

\[
 e_{\bar S}(g)\le\gamma/3\le2\gamma.
\tag{24}
\]

This branch includes equality at \(\gamma/3\). If instead
\(e_{\bar S}(g)>\gamma/3\), the lower half of the high-error relative
clause in (8), together with (23), gives

\[
 (1-a_d)e_{\bar S}(g)
 \le e_i(g)
 \le\rho^{\widehat r+1}\gamma
 \le\gamma.
\tag{25}
\]

Since \(d\ge1\),

\[
 a_d=\frac1{5d}\le\frac15,
 \qquad
 1-a_d\ge\frac45,
 \qquad
 \frac1{1-a_d}\le\frac54\le2.
\tag{26}
\]

Dividing (25) by the positive \(1-a_d\) and using (26) yields

\[
 e_{\bar S}(g)
 \le\frac{\gamma}{1-a_d}
 \le\frac54\gamma
 \le2\gamma.
\tag{27}
\]

The two exhaustive event branches prove (22). The argument is uniform in
the selected stage, including \(0\) and \(d\), and in every leaf member;
no union, independence, or new confidence factor is used. \(\square\)

### unit_003: lemma

**Lemma (Indexed irreducible-SOA empirical contradiction).**
\(\label{lem:step-012-empirical}\)
Under Assumption~\ref{assump:finite-littlestone},
Proposition~\ref{prop:step-012-selected-leaf},
Lemma~\ref{lem:step-012-leaf-error}, and the checked empirical argument in
Lyu's proof of Theorem 3, suppose \(d\ge1\) and
\(E_{\mathrm{core}}\) holds. Then

\[
 e_{\bar S}(\bar H)\le2\gamma=\frac{\alpha}{8}.
\tag{28}
\]

The empirical error in (28) uses all \(n_0\) indexed master records with
normalization \(1/n_0\), including repetitions.

**Proof.** Suppose, for contradiction, that

\[
 e_{\bar S}(\bar H)>2\gamma.
\tag{29}
\]

Restrict the nonempty leaf \(\mathcal G\) along the complete ordered
sequence of master inputs, labeled by the exact SOA function:

\[
 \mathcal R
 :=\mathcal G|_{(q_1,\bar H(q_1)),\ldots,
                       (q_{n_0},\bar H(q_{n_0}))}.
\tag{30}
\]

If \(g\in\mathcal R\), then
\(g(q_j)=\bar H(q_j)\) for every indexed coordinate \(j\). Consequently,
for every \(j\), including every repeated occurrence of a quotient point,

\[
 \mathbf1\{g(q_j)\ne y_j\}
 =\mathbf1\{\bar H(q_j)\ne y_j\}.
\tag{31}
\]

Summing (31) and dividing by the same \(n_0\) gives

\[
 e_{\bar S}(g)=e_{\bar S}(\bar H)>2\gamma,
\tag{32}
\]

contradicting Lemma~\ref{lem:step-012-leaf-error}. Hence

\[
 \mathcal R=\varnothing.
\tag{33}
\]

On the other hand, Proposition~\ref{prop:step-012-selected-leaf} gives
\(\bar H=\operatorname{SOA}_{\mathcal G}\) pointwise and says that
\(\mathcal G\) is \(n_0\)-irreducible. Applying the definition of
\(n_0\)-irreducibility to the exact point sequence
\(q_1,\ldots,q_{n_0}\) gives

\[
 \operatorname{LD}(\mathcal R)
 =\operatorname{LD}(\mathcal G)=t\ge0.
\tag{34}
\]

Thus \(\mathcal R\) must be nonempty: an empty binary class has no
depth-zero Littlestone witness and cannot have the nonnegative dimension
of the nonempty leaf \(\mathcal G\). This contradicts (33). Repeated
sample points cause no difficulty, because irreducibility quantifies over
sequences of points and permits repetitions; moreover the labels in (30)
are the single function values \(\bar H(q_j)\).

Therefore (29) is false and \(e_{\bar S}(\bar H)\le2\gamma\). Finally,

\[
 2\gamma=2\left(\frac{\alpha}{16}\right)=\frac{\alpha}{8},
\tag{35}
\]

which proves (28). The contradiction began with a strict \(>\), so the
exported conclusion correctly permits exact equality at
\(\alpha/8\). \(\square\)

### unit_004: proposition

**Proposition (Membership in the fixed improper irreducible-SOA
family).**
\(\label{prop:step-012-fixed-family}\)
Under Assumption~\ref{assump:finite-littlestone}, accepted
Lemma~\ref{lem:step-008-stage-map},
Proposition~\ref{prop:step-012-selected-leaf}, and checked Lyu Lemma 4.2,
suppose \(d\ge1\) and \(E_{\mathrm{core}}\) holds. Define the static family

\[
 \widehat C_{d+1}
 :=\left\{\operatorname{SOA}_{\mathcal A}:
       \varnothing\ne\mathcal A\subseteq\bar C
       \text{ is }(d+1)\text{-irreducible}\right\}.
\tag{36}
\]

Then

\[
 \bar H\in\widehat C_{d+1},
 \qquad
 \operatorname{LD}(\widehat C_{d+1})\le d.
\tag{37}
\]

The first membership in (37) is literal equality of functions on \(Q_C\).
It does not assert \(\bar H\in\bar C\), and the second conclusion does not
assert any measurability, empirical, population, or privacy property.

**Proof.** Proposition~\ref{prop:step-012-selected-leaf} gives a nonempty
\(\mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C\), proves that it
is \((d+1)\)-irreducible, and gives the pointwise identity
\(\bar H=\operatorname{SOA}_{\mathcal G}\). Thus the same function
\(\bar H\) is one of the elements in the sample-independent definition
(36). This proves the first part of (37) without selecting a trace
representative or a proper concept.

Accepted Lemma~\ref{lem:step-008-stage-map} proves
\(\operatorname{LD}(\bar C)\le d\). Every hypothesis of checked Lyu
Lemma 4.2, restated in (16)-(17), is now discharged with
\(\mathcal H=\bar C\). Its conclusion is precisely the second part of
(37). \(\square\)

### unit_005: proposition

**Proposition (Endpoint, normalization, status, and improperness
audit).**
\(\label{prop:step-012-boundaries}\)
Under Assumption~\ref{assump:finite-littlestone},
Propositions~\ref{prop:step-012-selected-leaf} and
\ref{prop:step-012-fixed-family}, and
Lemma~\ref{lem:step-012-empirical}, suppose \(d\ge1\) and
\(E_{\mathrm{core}}\) holds. Then the exact SOA, fixed-family, and
empirical-error conclusions remain valid in all of the following boundary
and identity regimes.

1. If \(\widehat r=0\), the selected current class is source stage \(1\),
   \(H_i^0=H_{i,\mathrm{src}}^1\), and the selected-list parameter is
   \(p_0=n_0d=p_{1,\mathrm{src}}/2\). The proof uses this exact current
   list, not a same-scale or literal source-stage substitute.
2. If \(\widehat r=d\), the selected current class is the explicit source
   endpoint \(H_i^d=H_{i,\mathrm{src}}^{d+1}\), with
   \(p_d=p_{d+1,\mathrm{src}}/2\). No current \(H_i^{d+1}\), no next-stage
   essential list, and no transition beyond \(d\) is used.
3. If \(d=1\), the only possible selected stages are \(0\) and \(1\),
   \(p_0=n_0\), \(p_1=2n_0\), and
   \(p_{\widehat r}2^{1-t}\ge n_0\ge2=d+1\). Thus both the full-sample and
   fixed-family irreducibility uses remain legal, including \(t=0\).
4. The proof is unchanged at \(v=1\) and at \(v=d\). The parameter \(v\)
   does not enter (18)-(37); it only affects already fixed upstream sample
   quantities. No additional \(v\)- or \(d\)-power is introduced here.
5. A singleton current list, one function repeated in several lists, or
   duplicate encodings of the same list item still supplies one actual
   function \(\bar H\) and one producer \(i\). Essentiality and SOA
   equality concern that function, not its multiplicity. If the selected
   function equals \(\bar c_0\), accepted actual transcript status keeps it
   actual; equality of values never turns it into fallback.
6. An empty selected tuple, an empty selected list, \(\perp\), and every
   totalized fallback path are absent on the joint source/mechanism-good
   path. Specifically, accepted \(E_{\mathrm{mech}}\) supplies (11), which
   implies that the chosen list and current restriction are nonempty.
   The source event \(E_{\mathrm{good}}\) supplies the error transfer, but
   is not by itself misrepresented as a mechanism-status event.
7. If the selected maximal leaf has \(t=0\), it is still nonempty and the
   same scale (20), indexed restriction (30), and fixed-family argument
   apply. DDim zero is never assigned to an empty outer restriction.
8. Repeated quotient points or repeated labeled records remain separate
   indices in both sums in (2). Equality of functions on all \(Q_C\) gives
   coordinatewise equality (31), so no deduplication changes the
   \(1/n_0\) normalization or shortens the \(n_0\)-point irreducibility
   sequence.
9. The threshold identity is exactly
   \(2\gamma=\alpha/8\). The proof excludes only
   \(e_{\bar S}(\bar H)>\alpha/8\) and therefore makes no unjustified
   strict-error claim at equality.
10. The output is guaranteed to lie in \(H_C\) and in the fixed family
    \(\widehat C_{d+1}\). It may lie outside \(\bar C\); no properness of
    the quotient output or decoded raw hypothesis is asserted.

**Proof.** Items 1 and 2 are the endpoint cases of (21), with the
transition range recorded in
Proposition~\ref{prop:step-012-selected-leaf}. Item 3 substitutes \(d=1\)
into (18)-(21); the scale inequality is the accepted exact bound (20), not
an asymptotic estimate. Item 4 follows because no derivation after the
fixed upstream dictionary contains \(v\).

For Item 5, accepted mechanism-good status uses set membership rather than
positional multiplicity, while Definition 4.3 and (19) identify actual
functions pointwise. Item 6 follows from (11) and the status audit already
contained in accepted Proposition~\ref{prop:step-010-mechanism-good}; the
separate role of (8) remains visible. Item 7 follows from the nonempty leaf
in Proposition~\ref{prop:step-012-selected-leaf} and does not require a
positive \(t\).

Items 8 and 9 are the explicit indexed calculation (31)-(35). Item 10 is
exactly Proposition~\ref{prop:step-012-fixed-family} together with the
actual-output boundary in (19). None of these specializations adds a
privacy, probability, population-risk, raw-risk, properness, or sample-size
conclusion. \(\square\)

## Target-Step Assembly

On the joint source-good plus mechanism-good path, accepted
Proposition~\ref{prop:step-010-mechanism-good} first supplies a literal
actual current-list member and its selected stage. Proposition
~\ref{prop:step-012-selected-leaf} combines that status with accepted
Definition 4.3 and leaf-scale interfaces to obtain one nonempty
\(\mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C\) satisfying the
exact pointwise identity

\[
 \bar H=\operatorname{SOA}_{\mathcal G}
\]

and the exact scale

 \[
 \mathcal G\text{ is }p_{\widehat r}2^{d-t}\text{-irreducible},
 \qquad
 p_{\widehat r}2^{d-t}\ge n_0d
 \ge\max\{n_0,d+1\}.
 \]

The same proposition preserves the selected current/source stage identity
and the half-scale convention, with a factor-two next-current pairing only
when \(\widehat r<d\).

Lemma~\ref{lem:step-012-leaf-error} next uses the exact two-clause
\(E_{\mathrm{good}}\) interface on each actual
\(g\in\mathcal G\). Membership in the selected restriction gives
\(e_i(g)\le\rho^{\widehat r+1}\gamma\le\gamma\); the low event branch is
already below \(2\gamma\), while the high branch gives

\[
 e_{\bar S}(g)
 \le\frac{\gamma}{1-a_d}
 \le\frac54\gamma
 \le2\gamma.
\]

Lemma~\ref{lem:step-012-empirical} then applies the checked Lyu Theorem 3
contradiction to the same actual function and the same indexed master
sample. If \(e_{\bar S}(\bar H)>2\gamma\), every member of
\(\mathcal G\) is excluded from the restriction along the complete
\(\bar H=\operatorname{SOA}_{\mathcal G}\)-labeled \(n_0\)-tuple. The
restriction is empty, contradicting \(n_0\)-irreducibility. Hence

\[
 e_{\bar S}(\bar H)\le2\gamma=\alpha/8.
\]

Finally, Proposition~\ref{prop:step-012-fixed-family} uses the same leaf,
not a surrogate class or trace, to prove

\[
 \bar H\in\widehat C_{d+1},
 \qquad
 \operatorname{LD}(\widehat C_{d+1})\le d.
\]

Proposition~\ref{prop:step-012-boundaries} verifies that the two exported
conclusions retain literal identity, normalization, actual status, endpoint
scope, equality allowance, and improperness in every requested boundary
regime. These named results prove exactly the accepted `step_012` row and
supply the empirical-error/actual-SOA interface to `step_013`. They prove
no privacy, population error, decoded raw risk, PAC guarantee, or extra
confidence/sample factor.

## Explicit Rate Audit

- Exposed variables:
  \(d,v,k,m,n_0,\alpha,\gamma,a_d,\rho,\widehat r,t,p_{\widehat r}\).
  The exported quantitative statement is exactly
  \(e_{\bar S}(\bar H)\le2\gamma=\alpha/8\); the structural scale is exactly
  \(p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}\).
- Hidden constants may depend on: None. Every numerical factor used here is
  displayed.
- Hidden constants may not depend on:
  \(X,\Sigma,C,\bar C,Q_C,D,c\), the sample, partition, selected stage,
  block, list, leaf, decomposition, empirical trace, event realization,
  mechanism transcript, or output.
- Fixed quantities: The sample, partition, accepted lists, selected stage,
  output, and all public parameters are fixed on one
  \(E_{\mathrm{core}}\) path before the deterministic argument is made.
- Probability mode: Deterministic conditional on the accepted
  source-good and mechanism-good path. This step adds no failure event,
  union bound, tower, independence assertion, or confidence charge. In
  particular, it does not recharge Step 010's conditional \(\beta/2\).
- Horizon mode: One selected stage among the fixed \(d+1\) current stages
  and one length-\(n_0\) irreducibility restriction. There is no repeated,
  stopping-time, asymptotic, or all-time upgrade.
- Norm mode: Indexed full-master empirical binary zero-one error with
  normalization \(1/n_0\). Block error with normalization \(1/m\) appears
  only in the transfer (23)-(27). No population or raw-space risk is
  bounded.
- Admissibility conditions and auxiliary tolerances:
  \(d\ge1\), the accepted positive-branch integer dictionary,
  \(\gamma=\alpha/16\), \(a_d=1/(5d)\),
  \(\rho=1-1/(2d)\), the accepted event (8), actual list status (11), and
  the exact accepted leaf scale (20). No additional tolerance is chosen.
- Term absorption or simplification inequalities:

  \[
  \rho^{\widehat r+1}\le1,
  \qquad
  \frac1{1-a_d}\le\frac54\le2,
  \qquad
  2\gamma=\frac{\alpha}{8},
  \]

  \[
  p_{\widehat r}2^{d-t}
  \ge n_0d\ge\max\{n_0,d+1\}.
  \]

  No term, ceiling, confidence share, or structural factor is absorbed by
  prose.
- Probability conversion: None. The result is a pathwise internal
  certificate for the already selected actual output.
- Contribution to any Rate Specialization Bridge: Equation (28) is the
  exact \(\alpha/8\) full-master input used by `step_013` to obtain its
  complement empirical threshold. This step introduces no new sample or
  positive power of \(d\) or \(v\).
- Baseline-reduction check: At \(d=1\), both selected endpoints and both
  irreducibility uses remain legal. At \(v=1\) and \(v=d\), the proof is
  unchanged. The \(d=0\) theorem branch retains its exact no-data singleton
  bypass and does not invoke this positive-branch source certificate.
  Singleton and repeated candidate occurrences retain the same actual
  function conclusion.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined objects: \(Q_C,\bar C,H_C,\bar c_0,d,v,k,m,n_0,\alpha\),
  the indexed master sample \(\bar S\), partition blocks, and current
  quotient procedure retain their setting meanings.
- Inherited appendix-local objects:
  \(E_{\mathrm{good}},E_{\mathrm{mech}},\gamma,a_d,\rho,H_i^r,p_r,
  \mathcal L_i^r\), selected \(\widehat r\), and actual output \(\bar H\)
  come from accepted dependencies. Their event, list, stage, and status
  properties are derived interfaces, not primitive assumptions.
- New appendix-local exported object:
  \(\widehat C_{d+1}\) in (36) is the fixed improper SOA family required by
  the target. Its definition uses only the static \(\bar C\) and \(d\), and
  Proposition~\ref{prop:step-012-fixed-family} proves its dimension bound.
  The exact SOA identity, irreducibility package, and empirical bound are
  also appendix-local outputs for downstream use.
- Proof-local objects:
  \(E_{\mathrm{core}}\) is only shorthand for the joint conditional path;
  \(e_{\bar S},e_i,\mathcal G,t\), and the restricted class \(\mathcal R\)
  in (30) are scoped to this derivation. The errors in (2) merely extend the
  accepted empirical-error notation to arbitrary \(H_C\)-valued functions;
  (8) is invoked only for actual \(\bar C\) members.
- Public-facing helper objects: None are newly introduced. The proof exports
  only the exact structural and empirical interfaces required by the
  accepted sketch.
- Constant and threshold provenance:
  \(\gamma,a_d,\rho,p_r,n_0\) are inherited exact formulas. The bound
  \(5/4\) is derived in (26), the target \(2\gamma=\alpha/8\) in (35), and
  the irreducibility scale in (20) is supplied by accepted
  Proposition~\ref{prop:step-008-leaf-scale}. No free constant, threshold,
  bounded quantity, or rate is introduced.
- Assumption provenance:
  finite Littlestone dimension is primitive. The two good events, actual
  selected status, current list membership, source/current map, leaf
  identity, and full irreducibility scale are accepted derived outputs.
  The all-leaf-member master-error bound, irreducibility contradiction,
  fixed-family membership, and boundary conclusions are proved in the five
  named local results. No generated object is treated as primitive.
- Actual-object discipline:
  \(E_{\mathrm{good}}\) controls actual \(g\in\bar C\), not the improper
  output directly. Definition 4.3 supplies equality of functions on all of
  \(Q_C\), not equality of traces. The same function \(\bar H\) is consumed
  in the indexed restriction, empirical error, and fixed-family statement.
- Source-convention discipline:
  The current selected class is source stage \(\widehat r+1\), but its
  structural parameter is one half of the correspondingly indexed source
  parameter. The factor-two current pair is used only for transitions
  before the endpoint; no transition is needed for the selected-leaf or
  empirical argument. The malformed output expression in the source
  theorem statement is excluded in favor of the proof's explicit
  \(\widehat h=\operatorname{SOA}_{\mathcal G}\) identity.
- Status and empty-state discipline:
  \(E_{\mathrm{mech}}\) supplies actual list membership and excludes
  \(\perp\), empty selected tuples, and fallback. \(E_{\mathrm{good}}\)
  supplies the error comparison. These roles are not conflated. An actual
  output equal to \(\bar c_0\) remains actual by transcript status.
- Duplicate and normalization discipline:
  Lists are mathematical sets of functions, so repeated encodings or
  occurrences do not alter identity. Master records remain indexed; all
  repetitions receive weight \(1/n_0\), and the irreducibility sequence has
  exactly \(n_0\) entries.
- No-overclaim boundary:
  \(\bar H\in\widehat C_{d+1}\subseteq H_C\) does not imply
  \(\bar H\in\bar C\). This artifact proves no properness, privacy,
  population error, decoded raw risk, PAC statement, measurability upgrade,
  or public sample-rate claim.
- Global diagnostic boundary:
  the paired global-proof review is `ACCEPTED` at the hashes in
  `## Step Identity`. Its Block H suggestion -- transfer the block threshold
  to all leaf members, then use the full indexed SOA-labeled restriction
  and the fixed irreducible-SOA family -- was used only to plan the local
  units. Every claim above was independently proved from accepted
  dependencies and the checked frozen source. Neither diagnostic artifact
  was used as evidence, a cited result, an assumption source, or authority
  to change the target claim.
- No prior same-step artifact, prior idea branch, `proof_history/` artifact,
  unrelated proof step, tracker, worker log, final artifact, or
  accepted-results artifact was read or used as proof evidence.
