# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_002
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every decoder value \(c\), prove nested ancestor
  paddings; pairwise-disjoint target rings with
  \(\dot\bigcup_{s=0}^S R_s(c)=J_{S,j_S}\);
  \([m_0-H,m_0+H]\subset J_{S,j_S}\);
  \(\lvert d_s\rvert\leq h_s\); same-color padding disjointness; and joint
  Borel measurability and \([-1,1]\)-boundedness of every precommitted
  \(F_i\), including all half-open ties and negative indices.
- Depends on: step_001.
- Assumptions used: Primitive assumptions `assump:parameter-domain` and
  `assump:precommitted-protocol`. The only derived input used from step_001
  is that the scalar \(c\) is defined on every localization transcript;
  localization success is not used.
- Technical challenge: Exact padded-ring arithmetic and countable-mask
  measurability.
- Intended proof tool or cited result: Direct interval endpoint calculation,
  Euclidean division \(j_{s-1}=2j_s+b_s\), four-color spacing, and a
  pointwise countable Borel sum.
- Output target: Exact path partition, outer containment, \(d_s\) bound,
  query-legality geometry, and supported-in-\(J_{0,j_0}\) inactivity.
- Rate objective: None.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:parameter-domain`: \(\sigma>0\). Together with the setting's
  positive design choices and definitions, this gives \(h_0>0\),
  \(h_s=2^s h_0\), finite \(S\geq1\), and \(H=h_S\). No moment,
  distributional, accuracy, or confidence conclusion is used in this
  deterministic step.
- `assump:precommitted-protocol`: the refinement levels, colors, types,
  branches, countable mask families, and dithers are sampled before any bit
  is observed and are available to the decoder. The proof uses this
  assumption only for timing and availability. Borel measurability and
  boundedness of the displayed query formula are proved below rather than
  imported from the assumption.

### Derived invariants supplied by accepted dependencies

- The accepted dependency pair
  `perspective_3/idea_1/proof_steps/step_001/proof.md` (Unit attempt 2,
  SHA-256
  `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a`)
  and its `review.md` with status `ACCEPTED` supplies an interval midpoint
  \(c\in\mathbb R\) defined on every localization transcript, including the
  trivial branch, ties, and localization failure. This is the only
  dependency conclusion used. In particular, this proof does not use
  \(\mathcal E_{\rm loc}\), core membership, a recentered moment, or any
  localization-success property.

### Local conditional hypotheses

None. The scalar \(c\) is universally quantified over \(\mathbb R\), not
conditioned on a success event.

## Local Lemma Map

Atomic step = no. Ancestor arithmetic, finite ring telescoping, four-color
support geometry, and countable-mask measurability are independent
non-atomic obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted always-defined-scalar conclusion of Proposition~\(\ref{prop:step-001-localization}\), for every \(c\in\mathbb R\) the minimum-index nearest-center rule and all ancestors are defined, \(j_{s-1}=2j_s+b_s\) with \(b_s\in\{0,1\}\) even for negative indices, \(J_{s-1,j_{s-1}}\subseteq J_{s,j_s}\), \(|d_s|<h_s/2\), and \([m_0-H,m_0+H]\subset J_{S,j_S}\). | Supplies path existence, exact child identity, nesting, the required \(d_s\) bound, and outer containment. |
| unit_002 | proposition | Under Assumption~\(\ref{assump:parameter-domain}\) and Lemma~\(\ref{lem:step-002-ancestor}\), for every \(c\in\mathbb R\), \(R_0(c),\ldots,R_S(c)\) are pairwise disjoint and \(\dot\bigcup_{s=0}^S R_s(c)=J_{S,j_S}\); equivalently their indicators sum exactly to \({\bf1}_{J_{S,j_S}}\), and \(J_{0,j_0}\) meets no higher target ring. | Gives the exact finite telescope and the target-ring supported-in-\(J_0\) baseline. |
| unit_003 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and Lemma~\(\ref{lem:step-002-ancestor}\), for every fixed \((s,\ell)\) the paddings \(J_{s,j}\), \(j\equiv\ell\pmod4\), are pairwise disjoint with a one-cell gap; every ring is Borel, every coordinate amplitude on a ring has magnitude at most \(3/4\), and every decoder-retained higher-level target or same-color alias ring is inactive on \(J_{0,j_0}\). | Supplies unique same-color activation, endpoint-safe amplitude bounds, Borel pieces, and the full retained supported-in-\(J_0\) baseline. |
| unit_004 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:precommitted-protocol}\) and Lemma~\(\ref{lem:step-002-color}\), for every \(i\in I_{\rm ref}\) the map defined by the displayed query formula is jointly Borel in \(x\) and its complete countable precommitted query seed, is in \([-1,1]\) for every seed realization, and yields a precommitted Borel superlevel query for every dither value; its formula contains no \(c\). | Proves countable-mask measurability, boundedness, and query-legality geometry. |

## Cited Result Applications

### Accepted dependency: always-defined localization scalar

**Source and current-notation statement.** The accepted
Proposition~\(\ref{prop:step-001-localization}\) in the current step_001
artifact states, among its conclusions, that the localization decoder returns
an interval on every transcript and that its midpoint \(c\in\mathbb R\) is
defined in the zero-query branch, after every Hamming tie, and on every
localization-failure transcript.

**Instantiated object and conclusion used.** Its midpoint is exactly the
setting's decoder value \(c\). The present step uses only the conclusion that
this real scalar exists on every transcript, so the deterministic map
\(c\mapsto(j_s,b_s,m_s,d_s,R_s(c))\) can be evaluated everywhere. The
dependency review discharges the source assumptions and certifies the proof
artifact and attempt identified above. None of its event, probability,
moment, independence, or rate conclusions is used here.

### Elementary Borel closure facts

For real-valued Borel functions on a measurable space, finite sums and
products are Borel because addition and multiplication are continuous. If
\(g_n\) are real-valued Borel functions and \(g_n\to g\) pointwise, then
\(g\) is Borel. For completeness, for every \(a\in\mathbb R\),
\[
  \{g>a\}
  =\bigcup_{\substack{r\in\mathbb Q\\r>a}}
    \bigcup_{N=1}^{\infty}\bigcap_{n\geq N}\{g_n>r\},
\]
which is measurable and characterizes the pointwise limit. In the countable
product mask space used below, each mask coordinate is Borel by the
definition of the product sigma-field. These facts apply because every
partial query sum below is finite and Borel, and the full query sum is its
everywhere pointwise limit.

### Local result applications

- Lemma~\(\ref{lem:step-002-ancestor}\) is established in unit_001 from the
  setting's grid and direct integer and endpoint arithmetic. It is used by
  Proposition~\(\ref{prop:step-002-partition}\),
  Lemma~\(\ref{lem:step-002-color}\), and the target assembly.
- Proposition~\(\ref{prop:step-002-partition}\) is established in unit_002
  from the nested-padding conclusion. It is used in the target assembly and
  exports the exact target-ring partition downstream.
- Lemma~\(\ref{lem:step-002-color}\) is established in unit_003 by direct
  four-color spacing and endpoint calculations. It is used by
  Proposition~\(\ref{prop:step-002-queries}\) and the target assembly.
- Proposition~\(\ref{prop:step-002-queries}\) is established in unit_004
  from the Borel closure facts and the unique same-color support conclusion.
  It is used in the target assembly and exports the bounded measurable query
  certificate downstream.

## Local Derivation

### unit_001: lemma

**Lemma (Dyadic ancestor, padding, and outer-radius geometry).**
\(\label{lem:step-002-ancestor}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and the accepted
always-defined-scalar conclusion of
Proposition~\(\ref{prop:step-001-localization}\), let \(c\in\mathbb R\) be
any realized decoder value and define \(j_0,j_s,b_s,m_s,d_s\) exactly as in
the setting. Then the minimum-index nearest-center rule is well defined and,
for every \(1\leq s\leq S\),
\[
  j_{s-1}=2j_s+b_s,\qquad b_s\in\{0,1\},
  \qquad J_{s-1,j_{s-1}}\subseteq J_{s,j_s}.
\]
Moreover,
\[
  |d_s|<\frac{h_s}{2}\leq h_s,
  \qquad
  [m_0-H,m_0+H]\subset J_{S,j_S}.
\]
All statements hold for positive and negative indices, both child values,
and every nearest-center or half-open grid tie.

**Proof / justification.** Since \(h_0>0\), put \(t=c/h_0\). The integer
\[
  j_0=\lceil t\rceil-1
\]
satisfies \(j_0<t\leq j_0+1\). If the last inequality is strict, the center
\((j_0+1/2)h_0\) is the unique nearest grid center. If
\(t=j_0+1\), the centers with indices \(j_0\) and \(j_0+1\) tie, and
\(j_0\) is the minimum index. Thus this formula is exactly the setting's
tie rule, for negative as well as positive \(t\), and the selected index is
defined for every real \(c\).

For \(s\geq1\), define the proof-local Euclidean remainder
\[
  r_s:=j_0-2^s\left\lfloor\frac{j_0}{2^s}\right\rfloor
      =j_0-2^sj_s.
\]
The defining floor inequalities give
\(r_s\in\{0,1,\ldots,2^s-1\}\), including when \(j_0<0\). Hence
\[
\begin{aligned}
  j_{s-1}
  &=\left\lfloor\frac{2^sj_s+r_s}{2^{s-1}}\right\rfloor
    =2j_s+\left\lfloor\frac{r_s}{2^{s-1}}\right\rfloor,\\
  b_s&=j_{s-1}-2j_s
      =\left\lfloor\frac{r_s}{2^{s-1}}\right\rfloor\in\{0,1\}.
\end{aligned}
\]
This proves the exact child identity without a sign convention hidden in
integer division.

Writing \(h_s=2h_{s-1}\), direct endpoint calculation gives, for any
integer \(j\),
\[
\begin{aligned}
  J_{s,j}&=[(j-1)h_s,(j+2)h_s),\\
  J_{s-1,2j}&=[(j-\tfrac12)h_s,(j+1)h_s),\\
  J_{s-1,2j+1}&=[jh_s,(j+\tfrac32)h_s).
\end{aligned}
\]
Both child paddings are subsets of \(J_{s,j}\), with the same half-open
endpoint convention. Substituting \(j=j_s\) and the exact value of \(b_s\)
therefore proves
\(J_{s-1,j_{s-1}}\subseteq J_{s,j_s}\). Iteration gives the full nested
chain \(J_{0,j_0}\subseteq\cdots\subseteq J_{S,j_S}\).

The same Euclidean remainder gives
\[
  m_0=(j_0+\tfrac12)h_0
      =\left(j_s+\vartheta_s\right)h_s,
  \qquad
  \vartheta_s:=\frac{r_s+1/2}{2^s}\in(0,1).
\]
Thus \(m_0\) lies strictly inside the ancestor cell \(P_{s,j_s}\). Since
\(m_s=(j_s+1/2)h_s\),
\[
  d_s=m_s-m_0=(\tfrac12-\vartheta_s)h_s,
  \qquad |d_s|<h_s/2.
\]
In particular the target's weaker bound \(|d_s|\leq h_s\) holds.

At \(s=S\), \(H=h_S\) and
\(m_0=(j_S+\vartheta_S)H\) with
\(0<\vartheta_S<1\). Consequently
\[
  (j_S-1)H<m_0-H\leq m_0+H<(j_S+2)H.
\]
The two strict outer inequalities show that even both endpoints of the
closed interval \([m_0-H,m_0+H]\) lie in the half-open padding
\(J_{S,j_S}=[(j_S-1)H,(j_S+2)H)\). This proves the outer containment and
all asserted boundary cases. \(\square\)

### unit_002: proposition

**Proposition (Exact padded-ring partition).**
\(\label{prop:step-002-partition}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and
Lemma~\(\ref{lem:step-002-ancestor}\), for every \(c\in\mathbb R\) the
setting-defined target rings are pairwise disjoint and satisfy
\[
  \mathop{\dot\bigcup}_{s=0}^S R_s(c)=J_{S,j_S},
  \qquad
  \sum_{s=0}^S{\bf1}\{x\in R_s(c)\}
    ={\bf1}\{x\in J_{S,j_S}\}
  \quad\text{for every }x\in\mathbb R.
\]
Furthermore, every \(x\in J_{0,j_0}\) belongs to no target ring
\(R_s(c)\) with \(s\geq1\).

**Proof / justification.** For proof-local brevity write
\(\mathbf J_s:=J_{s,j_s}\). By the exact child identity in
Lemma~\(\ref{lem:step-002-ancestor}\), for every \(s\geq1\),
\[
  R_s(c)
  ={\cal R}_{s,j_s,b_s}
  =J_{s,j_s}\setminus J_{s-1,2j_s+b_s}
  =\mathbf J_s\setminus\mathbf J_{s-1},
\]
whereas \(R_0(c)={\cal R}_{0,j_0}=\mathbf J_0\). Since
\(\mathbf J_{s-1}\subseteq\mathbf J_s\), this is the exact disjoint
one-step identity
\[
  \mathbf J_s=\mathbf J_{s-1}\mathbin{\dot\cup}R_s(c).
\]
Iterating it through the finite set of levels gives
\[
  \mathbf J_S
  =R_0(c)\mathbin{\dot\cup}R_1(c)
    \mathbin{\dot\cup}\cdots\mathbin{\dot\cup}R_S(c).
\]
Equivalently, if \(t<s\), then
\(R_t(c)\subseteq\mathbf J_t\subseteq\mathbf J_{s-1}\), while
\(R_s(c)\cap\mathbf J_{s-1}=\varnothing\); hence every two target rings
are disjoint. The indicator identity is the pointwise form of this disjoint
union and remains exact at every half-open endpoint.

Finally, if \(x\in\mathbf J_0\), nesting gives
\(x\in\mathbf J_{s-1}\) for every \(s\geq1\). Thus
\(x\notin\mathbf J_s\setminus\mathbf J_{s-1}=R_s(c)\). This is the exact
target-ring supported-in-\(J_{0,j_0}\) inactivity statement. \(\square\)

### unit_003: lemma

**Lemma (Four-color support, endpoint, and amplitude geometry).**
\(\label{lem:step-002-color}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and
Lemma~\(\ref{lem:step-002-ancestor}\), fix any \(0\leq s\leq S\) and
\(\ell\in\{0,1,2,3\}\). Then the paddings
\(\{J_{s,j}:j\equiv\ell\pmod4\}\) are pairwise disjoint, so the rings at
any fixed branch are also pairwise disjoint. Every padding and ring is Borel.
For each such ring,
\[
  \left|\frac{x-m_{s,j}}{2h_s}\right|\leq\frac34
  \quad\text{whenever }x\text{ belongs to the ring},
\]
while the mass amplitude equals one. In addition, for \(s\geq1\), every
\(x\in J_{0,j_0}\) belongs to neither the target ring nor any non-target
ring \({\cal R}_{s,j,b_s}\) with \(j\equiv j_s\pmod4\). Thus all
higher-level rings retained by the decoder-selected color and branch are
inactive on \(J_{0,j_0}\).

**Proof / justification.** The padding has the explicit form
\[
  J_{s,j}=[(j-1)h_s,(j+2)h_s).
\]
If \(j<j'\) and \(j\equiv j'\pmod4\), then \(j'\geq j+4\). The right
endpoint of \(J_{s,j}\) is \((j+2)h_s\), while the left endpoint of
\(J_{s,j'}\) is at least \((j+3)h_s\). Hence the paddings are disjoint and
have a gap of at least one full cell. This arithmetic is unchanged for
negative \(j,j'\). Since every ring is a subset of its padding, fixed-color
rings are also pairwise disjoint.

For \(s\geq1\), the child-padding formulas in
Lemma~\(\ref{lem:step-002-ancestor}\) give the exact ring forms
\[
\begin{aligned}
  {\cal R}_{s,j,0}
    &=[(j-1)h_s,(j-\tfrac12)h_s)
      \ \cup\ [(j+1)h_s,(j+2)h_s),\\
  {\cal R}_{s,j,1}
    &=[(j-1)h_s,jh_s)
      \ \cup\ [(j+\tfrac32)h_s,(j+2)h_s).
\end{aligned}
\]
At level zero, \({\cal R}_{0,j}=J_{0,j}\). Thus all paddings and rings are
finite unions or differences of half-open intervals and hence are Borel.
The displayed formulas also settle every child-padding boundary: a child's
included left endpoint is subtracted, while its excluded right endpoint
belongs to the outer ring whenever it lies in the parent.

For any \(x\in J_{s,j}\),
\[
  -\frac{3h_s}{2}\leq x-m_{s,j}<\frac{3h_s}{2}.
\]
Every ring is contained in \(J_{s,j}\), so division by \(2h_s>0\) gives
the coordinate bound \(3/4\), including equality at the included left
padding endpoint. The mass amplitude is the constant one.

It remains to include the alias part of the supported-in-\(J_0\) baseline.
Fix \(s\geq1\) and \(x\in J_{0,j_0}\). Nesting gives
\(x\in J_{s,j_s}\). For \(j=j_s\), the stronger inclusion
\(x\in J_{s-1,j_{s-1}}\) excludes \(x\) from
\({\cal R}_{s,j_s,b_s}\). For any other
\(j\equiv j_s\pmod4\), same-color padding disjointness gives
\(J_{s,j}\cap J_{s,j_s}=\varnothing\), so
\(x\notin{\cal R}_{s,j,b_s}\subseteq J_{s,j}\). These two cases exhaust
all rings used by a query whose color and branch equal the decoder-retained
\((\kappa_s,b_s)\). There is no boundary exception because all inclusions
and disjointness statements used the exact half-open sets. \(\square\)

### unit_004: proposition

**Proposition (Jointly Borel bounded precommitted query functions).**
\(\label{prop:step-002-queries}\)
Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:precommitted-protocol}\) and
Lemma~\(\ref{lem:step-002-color}\), for every \(i\in I_{\rm ref}\), the
setting formula for \(F_i\) defines a jointly Borel map of the sample value
and its complete precommitted level, color, type, branch, and countable mask
seed. For every seed realization and every \(x\in\mathbb R\),
\[
  |F_i(x)|\leq1.
\]
Consequently each realized \(F_i:\mathbb R\to[-1,1]\) is Borel, and for
every precommitted dither \(u\in[-1,1]\), the query
\(\{x:F_i(x)\geq u\}\) is Borel. The map and query contain no decoder value
\(c\) and therefore are fixed before any message under
Assumption~\(\ref{assump:precommitted-protocol}\).

**Proof / justification.** Fix \(i\) and let
\[
  \mathcal M_i:=\{-1,+1\}^{\{0,\ldots,S\}\times\mathbb Z}
\]
carry its countable product Borel sigma-field. Its coordinates are the masks
\(\rho_{i,s,j}\). The appendix-local query-seed space is the finite disjoint
union
\[
\begin{aligned}
  \Omega_i^{\rm qry}
  :=&\ \bigl(\{0\}\times\{0,1,2,3\}\times\mathcal M_i\bigr)\\
  &\mathbin{\dot\cup}
  \mathop{\dot\bigcup}_{s=1}^S
  \bigl(\{s\}\times\{0,1,2,3\}
     \times\{{\rm coord},{\rm mass}\}\times\{0,1\}
     \times\mathcal M_i\bigr),
\end{aligned}
\]
with the finite coordinates discrete. This is exactly the seed information
used by \(F_i\); the level-zero component correctly has no child variable.

Fix \(s,\ell\), and for \(N\geq1\) truncate the relevant sum to indices
\(j\equiv\ell\pmod4\) with \(|j|\leq N\). Each summand is a product of a
mask coordinate, a continuous affine function (or the constant one), and
the indicator of a Borel ring from
Lemma~\(\ref{lem:step-002-color}\). It is therefore jointly Borel in
\((x,\rho)\), and each finite partial sum is jointly Borel. Same-color
disjointness implies that at every fixed \((x,\rho)\) at most one summand
of the full countable sum is nonzero. Thus the partial sums converge
everywhere, indeed eventually stabilize, to the displayed full sum. The
pointwise-limit fact restated above proves that the full sum is jointly
Borel. Finite case distinctions over \(L_i,C_i,T_i,B_i\) preserve joint
Borel measurability on \(\mathbb R\times\Omega_i^{\rm qry}\).

The same uniqueness shows the range bound without any convergence or
absolute-summability assumption. If no ring is active, \(F_i(x)=0\). If a
level-zero or coordinate ring is active, the unique summand has magnitude at
most \(3/4\) by Lemma~\(\ref{lem:step-002-color}\). If a mass ring is
active, its unique summand is \(\rho_{i,s,j}\) and has magnitude one. Hence
\(|F_i(x)|\leq1\) for every \(x\), every countable mask realization, every
finite seed value, every half-open endpoint, and every positive or negative
active index.

For fixed query seed \(\omega\), the section
\(x\mapsto F_i(x,\omega)\) is Borel. Therefore, for every fixed dither
\(u\in[-1,1]\), its superlevel set is Borel. More strongly,
\[
  \{(x,\omega,u):F_i(x,\omega)-u\geq0\}
\]
is Borel in
\(\mathbb R\times\Omega_i^{\rm qry}\times[-1,1]\). Assumption~
\(\ref{assump:precommitted-protocol}\) places \(\omega\) and \(u\) before
the first response, and the defining formula contains no \(c\) or response
bit. Thus both the function and its query set are precommitted, including
their entire countable mask realization. \(\square\)

## Target-Step Assembly

The accepted dependency
Proposition~\(\ref{prop:step-001-localization}\) supplies only the fact that
\(c\) exists on every transcript. Starting from any such real value,
Lemma~\(\ref{lem:step-002-ancestor}\) proves the exact negative-index-safe
Euclidean child identity, nested ancestor paddings, the stronger bound
\(|d_s|<h_s/2\), and
\([m_0-H,m_0+H]\subset J_{S,j_S}\). In particular it implies the target's
\(|d_s|\leq h_s\) clause without any localization-success condition.

Proposition~\(\ref{prop:step-002-partition}\) identifies every higher
target ring as the exact difference of two consecutive nested paddings. Its
finite disjoint iteration proves both pairwise disjointness and
\[
  \mathop{\dot\bigcup}_{s=0}^S R_s(c)=J_{S,j_S},
  \qquad
  \sum_{s=0}^S{\bf1}\{x\in R_s(c)\}
  ={\bf1}\{x\in J_{S,j_S}\}
\]
for every \(x\), including every padding endpoint.

Lemma~\(\ref{lem:step-002-color}\) proves same-color padding disjointness
with an explicit one-cell gap, gives exact Borel formulas for both child
rings, proves the coordinate bound \(3/4\) and mass bound one, and combines
nesting with color separation to show exact inactivity of every
decoder-retained higher target or alias ring on \(J_{0,j_0}\). Finally,
Proposition~\(\ref{prop:step-002-queries}\) converts those disjoint Borel
  pieces into a jointly Borel countable-mask map, proves every realized
  \(F_i\) is \([-1,1]\)-valued, and proves its dithered superlevel query is
  Borel and precommitted, with no \(c\) in its definition. These four named results
jointly establish every clause of the binding sketch row, including negative
indices, both child branches, half-open ties, \(S=1\), and the
supported-in-\(J_{0,j_0}\) baseline.

## Explicit Rate Audit

None.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting objects.** The setting-defined
  \(j_0(c),j_s,b_s,m_0,m_s,d_s,J_{s,j_s},R_s(c),F_i,A_i,h_s,H\) retain
  their original meanings. The only exported conclusions are the exact
  path/ring geometry, outer containment, \(d_s\) control, same-color support
  separation, supported-in-\(J_0\) retained-ring inactivity, and bounded
  Borel query certificate proved by the named local results.
- **Appendix-local objects.** The mask space \(\mathcal M_i\) and query-seed
  space \(\Omega_i^{\rm qry}\) merely formalize joint measurability of the
  setting's already specified countable seed family. They add no randomness,
  assumption, or downstream theorem parameter and are not exported.
- **Proof-local objects.** The scalar \(t=c/h_0\) is a direct expression in
  setting objects. The Euclidean remainder \(r_s\) and fractional cell
  coordinate \(\vartheta_s\), including their bounds, are derived by
  Lemma~\(\ref{lem:step-002-ancestor}\). The abbreviation
  \(\mathbf J_s=J_{s,j_s}\), generic query-seed value \(\omega\), truncation
  index \(N\), and finite mask partial sums are used only in the displayed
  derivations and are not exported.
- **Constant provenance.** No new free constant, rate, radius, threshold, or
  tolerance is introduced. The values \(1/2\) and \(3/4\) follow exactly
  from the dyadic center and the division by \(2h_s\); the outer radius is
  the setting quantity \(H=h_S\).
- **Assumption provenance.** Positivity and the finite dyadic scale family are
  primitive setting conditions. The existence of \(c\) on every transcript
  is the sole accepted dependency output. Ancestor nesting, ring
  disjointness, outer containment, displacement boundedness, Borel
  measurability, query boundedness, and baseline inactivity are generated
  facts proved in this step. No localization event, selected-cell success,
  moment bound, distributional property, stability condition, or local
  conditional hypothesis is assumed.
- **Boundary and scope.** Euclidean remainders are defined from floors and
  therefore cover negative indices. All set calculations retain the
  setting's left-closed/right-open convention, while strict outer endpoint
  inequalities place the closed radius-\(H\) interval inside the final
  half-open padding. The telescope is finite over the fixed levels
  \(0,\ldots,S\), so no limiting or accumulated defect is present.
- **Diagnostic boundary.** The optional `global_proof.md` was not read or
  used. No diagnostic statement serves as evidence, an assumption, a cited
  result, or authority to alter the target claim.
