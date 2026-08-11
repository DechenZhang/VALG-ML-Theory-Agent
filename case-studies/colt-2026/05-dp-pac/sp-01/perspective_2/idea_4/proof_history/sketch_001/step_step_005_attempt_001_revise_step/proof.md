# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof SHA-256 (`step_002`):
  `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f`
- Accepted dependency review SHA-256 (`step_002`):
  `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`

## Target Step Claim

- Intended claim: For a fixed quotient master sample
  \(\bar S=((q_r,y_r))_{r=1}^{n_0}\), prove
  \[
  |\mathcal E_{\bar C}(\bar S)|\le (e n_0/v)^v
  \]
  on the positive branch.
- Depends on: `step_001`, `step_002` in the accepted sketch.  The proof below
  uses only the accepted quotient conclusions of `step_002`; it verifies the
  sole needed positive-branch range \(n_0\ge v\) directly from the
  setting-defined calibration and does not import any unaccepted
  `step_001` claim.
- Assumptions used: Primitive `assump:finite-littlestone`; the accepted
  quotient factorization and equality \(\operatorname{VC}(\bar C)=v\); and
  the setting-defined positive branch.  The parameter range in
  `assump:approximate-dp-regime` is used only to check \(n_0\ge v\), not in
  the combinatorial trace argument.
- Technical challenge: The class \(\bar C\) may be infinite, and the indexed
  master sample may contain repeated quotient records.  The proof must count
  exactly the error vectors used downstream without introducing a factor
  depending on \(|\bar C|\) or selecting representative concepts.
- Intended proof tool or cited result: Coordinatewise xor and a
  self-contained Sauer--Shelah induction on the finite restriction family.
- Output target: A finite VC error-trace family, with the \(v=0\) branch
  bypassed and the \(v=1\), \(v=d\), and \(n_0=v\) boundaries explicit.
- Rate objective: Preserve exponent \(v\) exactly.
- Sketch-row review status: `PENDING`; sketch acceptance is supplied by the
  binding `ACCEPTED` proof-sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:finite-littlestone`: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\).
  - `assump:countable-evaluation-quotient`: used only through the accepted
    quotient factorization and dimension-preservation results from
    `step_002`.
  - `assump:approximate-dp-regime`: its inequalities
    \(0<\alpha,\beta<1/4\) are used only in the deterministic check that the
    setting's positive-branch block length has \(n_0\ge v\).  No privacy or
    probability conclusion is used here.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-002-factorization} (Measurable evaluation
    factorization): \(c\mapsto\bar c\) is a bijection from the nonempty class
    \(C\) to the nonempty quotient class \(\bar C\).
  - Lemma~\ref{lem:step-002-vc} (VC dimension is invariant under the
    evaluation quotient): \(\operatorname{VC}(\bar C)=v\).
  - Lemma~\ref{lem:step-002-ld} (Littlestone dimension is invariant under the
    evaluation quotient): \(\operatorname{LD}(\bar C)=d\), and \(d=0\)
    makes \(C\) and \(\bar C\) singletons and gives \(v=0\).
- Local conditional hypotheses: None.  The sample \(\bar S\) is an arbitrary
  fixed indexed labeled sample.  The condition \(1\le v\le n_0\) is proved
  for the setting's positive branch in
  Claim~\ref{claim:step-005-positive-range}, rather than assumed.
- Accepted dependency artifacts:
  `proof_steps/step_002/proof.md` and `proof_steps/step_002/review.md`, with
  the hashes in `## Step Identity`; the review status is `ACCEPTED`.

No realizability, sampling, partition, independence, good-event, learner,
or class-cardinality condition is used in this deterministic step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient} and the accepted quotient factorization and dimension identities, \(0\le v\le d\); moreover, \(v=0\), \(d=0\), and \(\bar C\) being a singleton are equivalent, and then every indexed error-trace family is a singleton. | Proves the zero-dimensional bypass and the positive-branch range \(1\le v\le d\). |
| `unit_002` | proposition | Under Proposition~\ref{prop:step-002-factorization}, for every fixed indexed labeled quotient sample, coordinatewise xor with its label vector is a bijection from prediction traces to error traces, and replication from the distinct quotient support is a bijection onto the indexed prediction traces. | Gives exact trace cardinality, including repeated quotient points, repeated records, and conflicting labels at a repeated point. |
| `unit_003` | lemma | Under Lemma~\ref{lem:step-005-branches}, Lemma~\ref{lem:step-002-vc}, and Proposition~\ref{prop:step-005-xor}, the finite restriction family on the distinct support of a length-\(n_0\) sample has at most \(\sum_{j=0}^{\min\{v,s\}}\binom{s}{j}\le\sum_{j=0}^{\min\{v,n_0\}}\binom{n_0}{j}\) members, where \(s\) is the support size. | Proves Sauer--Shelah directly for the possibly infinite quotient class, with no \(|\bar C|\) term. |
| `unit_004` | lemma | Under Lemma~\ref{lem:step-005-sauer}, if \(1\le v\le n_0\), then \(|\mathcal E_{\bar C}(\bar S)|\le\sum_{j=0}^v\binom{n_0}{j}\le(e n_0/v)^v\); the same calculation explicitly covers \(v=1\), \(v=d\), and \(n_0=v\). | Converts the exact Sauer sum to the target exponent without excluding equality boundaries. |
| `unit_005` | claim | Under Assumption~\ref{assump:approximate-dp-regime}, Lemma~\ref{lem:step-005-branches}, and the setting-defined positive branch, the stipulated sufficiently large universal \(C_{\mathrm{blk}}\) may and does satisfy \(C_{\mathrm{blk}}\ge1\), and the defined sample length \(n_0=km\) obeys \(n_0\ge v\). | Verifies that the actual positive-branch master sample satisfies the scalar premise of the target trace bound without using an unaccepted parameter lemma. |

Atomic step = no.  Xor preservation, duplicate collapse, the finite-family
Sauer induction, binomial compression, and the positive-branch range check
are separate audit obligations.

## Cited Result Applications

No external paper theorem is used.  In particular, Sauer--Shelah is proved
in current notation in Lemma~\ref{lem:step-005-sauer}; finiteness of the
restriction family follows from its inclusion in a finite Boolean cube, not
from finiteness of \(\bar C\).

The accepted dependency and internal application ledger is:

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Exact conclusion used |
| --- | --- | --- | --- |
| Proposition~\ref{prop:step-002-factorization} | For the setting's evaluation quotient, \(c\mapsto\bar c\) is a bijection onto nonempty \(\bar C\). | Assumption~\ref{assump:countable-evaluation-quotient}; discharged in the accepted `step_002` proof and review. | Nonemptiness and the exact quotient concept class used to form traces. |
| Lemma~\ref{lem:step-002-vc} | Finite shattering witnesses transfer in both directions and \(\operatorname{VC}(\bar C)=v\). | Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient}, plus the accepted factorization proposition; discharged in accepted `step_002`. | The restriction family in Lemma~\ref{lem:step-005-sauer} has VC dimension at most \(v\). |
| Lemma~\ref{lem:step-002-ld} | \(\operatorname{LD}(\bar C)=d\), and \(d=0\) implies \(\bar C\) is a singleton and \(v=0\). | The same two primitive assumptions and accepted factorization; discharged in accepted `step_002`. | Null-branch consistency in Lemma~\ref{lem:step-005-branches}. |
| Lemma~\ref{lem:step-005-branches} | For the nonempty quotient class, \(0\le v\le d\), and \(v=0\iff d=0\iff|\bar C|=1\); the zero branch has one error trace. | The three accepted dependency conclusions above; the remaining implications are proved locally. | Separates the division-free null branch from the positive trace calculation. |
| Proposition~\ref{prop:step-005-xor} | Xor is an exact prediction/error-trace bijection, and distinct-support restrictions replicate bijectively to indexed prediction traces. | Only the fixed sample and accepted quotient class; proved locally. | Transfers the Sauer count to the exact error vectors and handles all duplicate patterns. |
| Lemma~\ref{lem:step-005-sauer} | On distinct support size \(s\), the error-trace count is at most the Sauer sum, hence at most the length-\(n_0\) Sauer sum. | Lemma~\ref{lem:step-005-branches}, the accepted VC identity, and Proposition~\ref{prop:step-005-xor}; proved by induction locally. | Produces a finite trace family for possibly infinite \(\bar C\). |
| Lemma~\ref{lem:step-005-binomial} | For \(1\le v\le n_0\), the Sauer sum is at most \((e n_0/v)^v\), including all named equality cases. | Elementary binomial theorem and \(1+x\le e^x\), proved in the local derivation. | Gives the exact target exponent. |
| Claim~\ref{claim:step-005-positive-range} | The setting-defined positive calibration has \(1\le v\le n_0\). | The setting's formulas, \(d\ge1\), \(k\ge2\), and Assumption~\ref{assump:approximate-dp-regime}; checked locally. | Makes Lemma~\ref{lem:step-005-binomial} applicable to the actual master sample. |

## Local Derivation

### unit_001: lemma

**Lemma (Null and positive quotient-VC branches).**
\(\label{lem:step-005-branches}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:countable-evaluation-quotient}, Proposition~\ref{prop:step-002-factorization},
Lemma~\ref{lem:step-002-vc}, and Lemma~\ref{lem:step-002-ld},
\[
0\le v\le d.
\]
Moreover, the following are equivalent:
\[
v=0,\qquad d=0,\qquad |\bar C|=1.
\tag{1}
\]
In this case, for every \(n_0\in\mathbb N_0\) and every indexed labeled
sample \(\bar S\in Z_Q^{n_0}\),
\[
|\mathcal E_{\bar C}(\bar S)|=1.
\tag{2}
\]
If \(d\ge1\), then \(1\le v\le d\).

**Proof.** If \(A=\{q_1,\ldots,q_t\}\subseteq Q_C\) is shattered by
\(\bar C\), label every node at level \(r\) of a complete binary tree of
depth \(t\) by \(q_r\).  Every root-to-leaf bit string is a labeling of
\(A\), so shattering of \(A\) supplies a quotient concept realizing that
path.  Thus this tree is shattered by \(\bar C\).  Consequently every
finite VC witness of size \(t\) gives a Littlestone witness of depth \(t\),
and the accepted identities imply
\[
v=\operatorname{VC}(\bar C)
\le \operatorname{LD}(\bar C)=d<\infty.
\tag{3}
\]

The class \(\bar C\) is nonempty by the accepted factorization proposition.
If it contained distinct \(\bar c_0,\bar c_1\), they would disagree at some
\(q\in Q_C\).  Because the labels are binary, these two functions would
realize both labels on \(\{q\}\), so \(\{q\}\) would be shattered.  Hence
\(v=0\) forces \(|\bar C|=1\).  Conversely, a singleton binary class cannot
shatter a point or a depth-one tree, so it has \(v=d=0\).  The accepted
Littlestone quotient lemma supplies the remaining implication
\(d=0\Rightarrow|\bar C|=1\), proving (1).

When \(\bar C\) is a singleton, the definition of
\(\mathcal E_{\bar C}(\bar S)\) contains exactly the one vector generated by
its unique concept.  This remains true for \(n_0=0\), when that vector is
the empty vector, and proves (2).  Finally, (1) and (3) show that \(d\ge1\)
implies \(1\le v\le d\). \(\square\)

### unit_002: proposition

**Proposition (Indexed xor identity and duplicate-support collapse).**
\(\label{prop:step-005-xor}\)
Under Proposition~\ref{prop:step-002-factorization}, fix any
\(n_0\in\mathbb N_0\) and any indexed labeled quotient sample
\[
\bar S=((q_r,y_r))_{r=1}^{n_0}.
\]
Define its prediction-trace family and distinct quotient support by
\[
\mathcal P_{\bar C}(\bar S)
:=\{(\bar c(q_r))_{r=1}^{n_0}:\bar c\in\bar C\},
\qquad
A_{\bar S}:=\{q_r:1\le r\le n_0\}.
\tag{4}
\]
Then coordinatewise xor with the fixed label vector is a bijection
\[
\chi_{\mathbf y}:\mathcal P_{\bar C}(\bar S)
\longrightarrow\mathcal E_{\bar C}(\bar S),
\qquad
\chi_{\mathbf y}(z)_r=z_r\oplus y_r,
\tag{5}
\]
and replication along the indexed sample is a bijection
\[
\rho_{\bar S}:\bar C|_{A_{\bar S}}
\longrightarrow\mathcal P_{\bar C}(\bar S),
\qquad
\rho_{\bar S}(f)=(f(q_r))_{r=1}^{n_0}.
\tag{6}
\]
Consequently,
\[
|\mathcal E_{\bar C}(\bar S)|
=|\mathcal P_{\bar C}(\bar S)|
=\left|\bar C|_{A_{\bar S}}\right|.
\tag{7}
\]
These identities hold with arbitrary repeated quotient points, exact
duplicate labeled records, or different labels attached to repeated points.

**Proof.** For bits \(z_r,y_r\),
\(z_r\oplus y_r=\mathbf 1\{z_r\ne y_r\}\).  Therefore (5) sends the
prediction vector of each \(\bar c\) to exactly its error vector.  On the
whole cube \(\{0,1\}^{n_0}\), xor with \(\mathbf y=(y_r)_{r=1}^{n_0}\) is
an involution:
\[
\chi_{\mathbf y}(\chi_{\mathbf y}(z))=z.
\]
Its restriction in (5) is thus bijective onto the error-trace family.

The map in (6) is surjective by the definition of the prediction-trace
family.  If \(f,g\in\bar C|_{A_{\bar S}}\) are distinct, then they differ at
some \(q\in A_{\bar S}\).  By definition of the support, \(q=q_r\) for at
least one index \(r\), and the corresponding replicated coordinates differ.
Thus \(\rho_{\bar S}\) is injective, proving (7).

Repeated points only repeat coordinates under \(\rho_{\bar S}\) and cannot
create another trace.  The label vector is fixed before xor is applied, so
even if \(q_r=q_t\) but \(y_r\ne y_t\), the global involution argument still
preserves cardinality exactly.  When \(n_0=0\), the support is empty and all
three sets in (7) contain the unique empty function or empty vector.
\(\square\)

### unit_003: lemma

**Lemma (Sauer--Shelah counting on a finite quotient restriction).**
\(\label{lem:step-005-sauer}\)
Under Lemma~\ref{lem:step-005-branches}, Lemma~\ref{lem:step-002-vc}, and
Proposition~\ref{prop:step-005-xor}, let \(\bar S\) be any fixed indexed
labeled quotient sample of length \(n_0\), and put
\(s:=|A_{\bar S}|\le n_0\).  Then
\[
|\mathcal E_{\bar C}(\bar S)|
\le \sum_{j=0}^{\min\{v,s\}}\binom{s}{j}
\le \sum_{j=0}^{\min\{v,n_0\}}\binom{n_0}{j}.
\tag{8}
\]
Equivalently, for the setting's growth function (defined on indexed
samples),
\[
|\mathcal E_{\bar C}(\bar S)|
\le \Pi_{\bar C}(n_0)
\le \sum_{j=0}^{\min\{v,n_0\}}\binom{n_0}{j}.
\tag{9}
\]
The conclusion does not require \(\bar C\) to be finite.

**Proof.** We first prove the finite-cube form of Sauer--Shelah.  For an
integer \(t\ge0\), a class \(\mathcal F\subseteq\{0,1\}^B\) on a
\(t\)-point set \(B\), and an integer \(r\ge0\), suppose
\(\operatorname{VC}(\mathcal F)\le r\).  We claim
\[
|\mathcal F|\le S(t,r):=\sum_{j=0}^{r}\binom{t}{j},
\tag{10}
\]
where \(\binom{t}{j}=0\) for \(j>t\), and set \(S(t,-1):=0\).

The proof is by induction on \(t\).  At \(t=0\), the Boolean cube contains
only the empty function, so (10) holds.  For \(t\ge1\), fix \(x\in B\),
write \(B'=B\setminus\{x\}\), and define
\[
\mathcal F_b:=\{f|_{B'}:f\in\mathcal F,\ f(x)=b\},\quad b\in\{0,1\},
\]
\[
\mathcal U:=\mathcal F_0\cup\mathcal F_1,
\qquad
\mathcal I:=\mathcal F_0\cap\mathcal F_1.
\tag{11}
\]
Partitioning \(\mathcal F\) by its value at \(x\), followed by the finite
set identity \(|F_0|+|F_1|=|F_0\cup F_1|+|F_0\cap F_1|\), gives
\[
|\mathcal F|=|\mathcal U|+|\mathcal I|.
\tag{12}
\]
Any set shattered by \(\mathcal U\) is shattered by \(\mathcal F\), so
\(\operatorname{VC}(\mathcal U)\le r\).  If a set \(D\subseteq B'\) is
shattered by \(\mathcal I\), then for every labeling of \(D\), membership
in both \(\mathcal F_0\) and \(\mathcal F_1\) supplies both extensions at
\(x\).  Hence \(D\cup\{x\}\) is shattered by \(\mathcal F\), and
\(\operatorname{VC}(\mathcal I)\le r-1\).  For \(r=0\), this says
\(\mathcal I=\varnothing\): otherwise \(\{x\}\) would be shattered.
The induction hypothesis and Pascal's identity now yield
\[
|\mathcal F|
\le S(t-1,r)+S(t-1,r-1)
=S(t,r),
\tag{13}
\]
which proves (10).

Apply (10) to the restriction family
\[
\mathcal F_{\bar S}:=\bar C|_{A_{\bar S}}
\subseteq\{0,1\}^{A_{\bar S}}.
\]
This family is finite because the ambient cube has \(2^s\) elements, even
when \(\bar C\) is infinite.  If a subset of \(A_{\bar S}\) is shattered
by \(\mathcal F_{\bar S}\), it is shattered by \(\bar C\); the accepted
VC identity therefore gives
\(\operatorname{VC}(\mathcal F_{\bar S})\le v\).  Equations (7) and (10)
give the first inequality in (8).  Since \(s\le n_0\), for every
\(0\le j\le s\) one has \(\binom{s}{j}\le\binom{n_0}{j}\); adding the
remaining nonnegative terms proves the second inequality.

For any indexed \(n_0\)-sample, Proposition~\ref{prop:step-005-xor} shows
that xor preserves the prediction-trace count.  Taking the supremum over
the quotient-point sequences gives (9).  No concept representative is
selected for a trace, and no cardinality of \(\bar C\) enters the proof.
\(\square\)

### unit_004: lemma

**Lemma (Positive-dimensional Sauer-sum compression).**
\(\label{lem:step-005-binomial}\)
Under Lemma~\ref{lem:step-005-sauer}, if \(1\le v\le n_0\), then every fixed
indexed labeled quotient sample \(\bar S\) of length \(n_0\) satisfies
\[
|\mathcal E_{\bar C}(\bar S)|
\le \sum_{j=0}^{v}\binom{n_0}{j}
\le \left(\frac{e n_0}{v}\right)^v.
\tag{14}
\]
This statement includes \(v=1\), remains unchanged when \(v=d\), and uses a
nonstrict premise \(v\le n_0\), so it includes \(n_0=v\).

**Proof.** Put \(x:=v/n_0\in(0,1]\).  Since \(x^j\ge x^v\) for
\(0\le j\le v\), the binomial theorem gives
\[
(1+x)^{n_0}
=\sum_{j=0}^{n_0}\binom{n_0}{j}x^j
\ge x^v\sum_{j=0}^{v}\binom{n_0}{j}.
\tag{15}
\]
Using \(1+x\le e^x\) and \(n_0x=v\),
\[
\sum_{j=0}^{v}\binom{n_0}{j}
\le x^{-v}(1+x)^{n_0}
\le \left(\frac{n_0}{v}\right)^v e^{n_0x}
=\left(\frac{e n_0}{v}\right)^v.
\tag{16}
\]
Together with (8), this proves (14).

At \(v=1\), (14) reads
\(|\mathcal E_{\bar C}(\bar S)|\le1+n_0\le e n_0\) for \(n_0\ge1\).
At \(n_0=v\), the exact Sauer sum is
\(\sum_{j=0}^v\binom{v}{j}=2^v\le e^v\), which is precisely the right side
of (14).  If \(v=d\), substitution in (14) gives
\((e n_0/d)^d\) with no extra factor or exponent; no class-cardinality term
appears in any case. \(\square\)

### unit_005: claim

**Claim (The positive branch lies in the Sauer range).**
\(\label{claim:step-005-positive-range}\)
Under Assumption~\ref{assump:approximate-dp-regime},
Lemma~\ref{lem:step-005-branches}, and the setting-defined positive branch
\(d\ge1\), fix the stipulated sufficiently large universal
block constant so that, in particular, \(C_{\mathrm{blk}}\ge1\).  Then the
setting-defined values
\[
a=v+\log(4k/\beta),\qquad
Q_{\mathrm{blk}}=e+\frac{e k d^2a}{\alpha v},
\]
\[
m=\left\lceil C_{\mathrm{blk}}
\frac{d^2}{\alpha}a\log Q_{\mathrm{blk}}\right\rceil,
\qquad n_0=km
\]
satisfy \(1\le v\le n_0\).

**Proof.** Lemma~\ref{lem:step-005-branches} gives \(1\le v\le d\).
Moreover, \(k\ge2\), \(0<\beta<1/4\), and \(0<\alpha<1/4\), so
\[
a>v,qquad Q_{\mathrm{blk}}>e,qquad
\log Q_{\mathrm{blk}}>1,qquad \alpha^{-1}>4.
\]
Since \(d\ge1\) and \(C_{\mathrm{blk}}\ge1\),
\[
m
\ge C_{\mathrm{blk}}\frac{d^2}{\alpha}a\log Q_{\mathrm{blk}}
>4v.
\tag{17}
\]
Thus \(n_0=km\ge m\ge v\).  Requiring
\(C_{\mathrm{blk}}\ge1\) does not add a new parameter assumption: it is one
of the finite lower bounds included in the setting's choice of a
"sufficiently large universal" block constant. \(\square\)

## Target-Step Assembly

The zero-dimensional case is separate.  By
Lemma~\ref{lem:step-005-branches}, \(v=0\) is exactly the singleton,
\(d=0\) case, and
\(|\mathcal E_{\bar C}(\bar S)|=1\), including for the empty sample.  The
setting's no-data learner therefore bypasses the positive-dimensional trace
union.  The undefined expression \((e n_0/v)^v\) is never invoked at
\(v=0\).

On the positive branch, Claim~\ref{claim:step-005-positive-range} gives
\(1\le v\le n_0\).  Proposition~\ref{prop:step-005-xor} gives the exact
chain
\[
|\mathcal E_{\bar C}(\bar S)|
=|\mathcal P_{\bar C}(\bar S)|
=\left|\bar C|_{A_{\bar S}}\right|.
\tag{18}
\]
Thus neither xor nor repeated quotient records cost a multiplicative factor.
Lemma~\ref{lem:step-005-sauer} bounds this finite restriction family, and
Lemma~\ref{lem:step-005-binomial} compresses the resulting sum.  Hence
\[
|\mathcal E_{\bar C}(\bar S)|
\le \Pi_{\bar C}(n_0)
\le \sum_{j=0}^{v}\binom{n_0}{j}
\le \left(\frac{e n_0}{v}\right)^v,
\tag{19}
\]
which is the exact accepted `step_005` claim.

The proof of Lemma~\ref{lem:step-005-sauer} operates only on the finite set
of restrictions inside \(\{0,1\}^{A_{\bar S}}\).  It therefore applies when
\(\bar C\) is infinite and does not select or count concepts.  The boundary
calculations in Lemma~\ref{lem:step-005-binomial} explicitly retain
\(v=1\), \(v=d\), and \(n_0=v\), while
Proposition~\ref{prop:step-005-xor} covers every duplicate-record pattern.
All downstream source lists may continue to contain actual quotient
functions; (19) counts only the exact error vectors used in the finite
trace union.

## Explicit Rate Audit

None.  This is an exact finite combinatorial cardinality bound, not a
sample-complexity specialization.  Both exposed variables \(n_0\) and \(v\)
remain explicit, the exponent is exactly \(v\), and there is no hidden
constant, confidence conversion, probability mode, or dependence on
\(|C|\), \(|\bar C|\), \(d\), a support set, or a trace representative.
When \(v=d\), the displayed exponent simply becomes \(d\).

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects are the setting-defined
  \(\mathcal E_{\bar C}(\bar S)\), \(\Pi_{\bar C}\), \(n_0\), \(v\), and
  the exported bound (19).  The error-trace set is the sole interface needed
  by downstream trace-tail steps.
- The prediction family \(\mathcal P_{\bar C}(\bar S)\), distinct support
  \(A_{\bar S}\), and restriction family \(\bar C|_{A_{\bar S}}\) are
  `appendix-local`.  They expose the exact finite object being counted but
  are not exported as algorithmic objects.
- The label vector \(\mathbf y\), xor map \(\chi_{\mathbf y}\), replication
  map \(\rho_{\bar S}\), support size \(s\), induction classes
  \(\mathcal F_b,\mathcal U,\mathcal I\), and binomial shorthand \(S(t,r)\)
  are `proof-local`.  Every one is defined before use.
- The convention for \(\Pi_{\bar C}(n)\) is the supremum of prediction-trace
  cardinalities over indexed quotient samples of length \(n\).  This agrees
  with (and is robust to) finite domains and repeated inputs.  The proof also
  gives the stronger fixed-support inequality (8), so no convention about
  repeated points affects the conclusion.
- The only constant used in the trace inequality is the mathematical
  constant \(e\).  The setting-defined \(C_{\mathrm{blk}}\) is not a new
  helper constant; the local check uses only that a stipulated sufficiently
  large universal constant includes the lower bound \(C_{\mathrm{blk}}\ge1\).
- Assumption provenance is exact.  Nonemptiness and finite Littlestone
  dimension are primitive.  Quotient bijectivity and exact VC/LD dimensions
  are supplied by accepted `step_002`.  The finite restriction family, xor
  bijection, duplicate-collapse identity, Sauer bound, and \(n_0\ge v\)
  range are proved in named local results.  The fixed sample is universally
  quantified and is not a generated event or conditional probability
  statement.
- No realizability, iid sampling, partition randomness, block independence,
  learner output, stability condition, measurable selector, or good event is
  assumed or produced here.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified current and `ACCEPTED` at SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`.
  Its step-relevant suggestion was the xor/Sauer organization.  That
  suggestion was rederived completely in the named local results above and
  was not used as evidence, a cited result, an assumption source, or
  authority to alter the target claim.
