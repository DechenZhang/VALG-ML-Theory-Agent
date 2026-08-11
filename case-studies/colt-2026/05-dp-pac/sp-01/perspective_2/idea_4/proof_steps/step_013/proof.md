# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 3
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_004`:
    `aded5334e6b420fa91d8de54cf36290a5aa726ab4d955f84586afa67311192e5` /
    `483174aef76458d0433547a4eb68628cb79d92d3ceddd0010c6e4835a94b15ec`;
  - `step_007`:
    `f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1` /
    `6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1`;
  - `step_008`:
    `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` /
    `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`;
  - `step_010`:
    `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` /
    `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`;
  - `step_012`:
    `0a5d28b5f44489f7571fe3de7b5770ba5eadc43f52e20ad116feeea84d2d8e2f` /
    `d81afb9811900bf85507a8a87d4132dba0c333bd47da0da095c08701a20fb7ca`.
- Accepted dependency attempt identities refreshed in this artifact:
  `step_004` unit/review attempts (2/2), `step_007` (1/1),
  `step_008` (2/2), `step_010` (2/2), and `step_012` (2/2).
- Refreshed transitive edge: accepted `step_012` unit/review attempts (2/2)
  bind current `step_010` unit/review attempts (2/2), proof/review pair
  `f119835bca16b5d87d71cfd4e52f0cd9bddc4d0b2fdfe21a5d9f96146e9a8e98` /
  `46714f79e4b8525356b6f736fd6849f7e58ca6f68c0d06741fde5849a60c8e74`;
  the accepted `step_012` review above certifies the remaining live ancestor
  paths.
- Diagnostic boundary for this refresh: no `global_proof.md` or
  `global_proof_review.md` artifact was read or used.

## Target Step Claim

- Intended claim: Prove measurable marked producer-block reconstruction,
  (Holdout), the one-sided lower-tail Chernoff bound, finite multiplicity
  domination, and quotient population error at most \(\alpha\).
- Depends on: `step_004`, `step_007`, `step_008`, `step_010`, `step_012`.
- Assumptions used: Primitive `assump:realizable-iid`; derived kernel,
  lists, output, empirical error.
- Technical challenge: Adaptive output versus block-local candidate union;
  no uncountable supremum.
- Intended proof tool or cited result: Finite marked kernel, Fubini on a
  measurable marked event, direct exponential-Markov Chernoff.
- Output target: Unconditional quotient PAC event.
- Rate objective:
  \(k(d+1)L e^{-9\alpha(k-1)m/32}\leq\beta_{\mathrm{gen}}\).
- Row-local review status: `PENDING`; the binding accepted
  `proof_sketch_review.md`, rather than this row-local field, is the sketch
  acceptance gate.

The order of the reconstruction argument is part of the target. First, on
the complete sample/partition/mechanism/mark path, the joint event consisting
of the core event, \(J=i\), and population failure is included in a finite
union over the literal block-local Step 008 family \(\mathcal G_i(\bar S_i)\).
This inclusion is proved without conditioning on \(J\) and without asserting
independence after the mark is generated. Only after that pathwise inclusion
is established is the data-independent partition fixed and the producer
block conditioned upon. The proof then applies a fixed-candidate iid
complement tail and integrates the finite sections. The analysis mark is
projected out exactly; it is never released.

Throughout, \(K_C\) abbreviates the positive-dimensional released quotient
law \(K_C^{\mathrm{VC\text{-}Lyu}}\), and \(\widetilde K_C\) is only its
accepted analysis-only marked lift. This step proves quotient population
utility. It makes no raw decoded-risk, privacy, properness, or public-rate
claim.

The result remains explicitly conditional on
Assumption~\ref{assump:countable-evaluation-quotient}: \(Q_C\) is finite or
countable and the evaluation quotient map is measurable. Nothing here
extends to an uncountable evaluation quotient, characterizes unrestricted
private sample complexity, or solves the unrestricted DP-PAC open problem.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:countable-evaluation-quotient}: \(Q_C\) is finite
    or countably infinite and the quotient map is measurable. This static
    condition supplies the countable-discrete block state and the countable
    coordinate representation used to prove measurability of the
    population-risk map and the bad-candidate sections. It supplies no
    generated list, event, selector, output, or utility conclusion.
  - Assumption~\ref{assump:realizable-iid}: for utility, fix an arbitrary
    probability measure \(D\) and target \(c\in C\); after quotienting, the
    labeled records are iid from \(P_{\bar D,\bar c}\). Thus, conditional on
    any fixed data-independent partition, disjoint indexed groups of master
    records are independent iid quotient examples. This assumption is used
    only for utility, never for a privacy statement.
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-004-occurrence} and
    Propositions~\ref{prop:step-004-lift} and
    \ref{prop:step-004-projection} supply, only on the declared \(d\geq1\)
    VC-Lyu branch, the measurable finite occurrence mark, positive-mark
    support on actual paths, the marked Markov kernel, and the exact
    released-output projection. No Step 004 null-law conclusion is consumed;
    the \(d=0\) branch below uses only the accepted Step 007 bypass.
  - Accepted Lemma~\ref{lem:step-007-fixed-point},
    Propositions~\ref{prop:step-007-conditional-charge} and
    \ref{prop:step-007-tower}, accepted
    Proposition~\ref{prop:step-007-boundaries}, and the accepted universal
    Step 007 block calibration supply the exact fixed-point inequality, the
    deterministic lower bound on \(m\), the null-branch bypass, and
    \(\Pr(E_{\mathrm{good}}^c)\leq\beta_{\mathrm{tr}}\).
  - Accepted Proposition~\ref{prop:step-008-list-envelope} supplies the
    actual Step 008 lists \(\mathcal L_i^r\), their all-stage union, the
    finite cap \((d+1)L\), and the exact formula for \(\log L\).
  - Accepted Proposition~\ref{prop:step-010-mechanism-good} supplies the
    measurable positive-branch mechanism event, its conditional failure
    charge \(\beta_{\mathrm{AT}}+\beta_{\mathrm{SS}}\), actual rather than
    fallback status on that event, literal selected-list membership in
    \(H_C\), and positive occurrence marking. That selected function may be
    improper; no membership in \(\bar C\) is imported.
  - Accepted Lemma~\ref{lem:step-012-empirical} supplies, on the joint
    source/mechanism-good path, the full indexed master-sample bound
    \(e_{\bar S}(\bar H)\leq\alpha/8\) for the same literal selected
    function.
- Local conditional hypotheses:
  - A deterministic partition and one realized producer block are fixed
    only inside Proposition~\ref{prop:step-013-finite-integration}, after
    Proposition~\ref{prop:step-013-pathwise} has proved the full-path
    inclusion. They are not theorem-facing assumptions.
  - A fixed candidate \(h\in H_C\) with population error \(p>\alpha\) is
    used only inside Lemma~\ref{lem:step-013-lower-tail}. In the application,
    it becomes fixed by conditioning on the producer block, not by
    conditioning on \(J\) or the selected output.
  - No core event, list locality, candidate finiteness, actual status,
    empirical bound, population guarantee, or independence statement is
    treated as primitive. Each is supplied by an accepted dependency or
    proved below.

The accepted dependency artifacts are exactly the ten proof/review files
identified by the hashes in `## Step Identity`; every dependency review has
status `ACCEPTED` for sketch attempt 1 and the attempt identities recorded
there.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted Lemma~\ref{lem:step-004-occurrence}, and accepted Proposition~\ref{prop:step-008-list-envelope}, on the declared \(d\geq1\) branch the family \(\mathcal G_i(s_i)=\bigcup_{r=0}^d\mathcal L_i^r(s_i)\) consists of the actual Step 008 lists, depends only on producer-block data \(s_i\), has a measurable finite-list graph, and obeys \(|\mathcal G_i(s_i)|\leq(d+1)L\); the associated bad-candidate section event is measurable even when \(H_C\) is infinite. | Produces the exact finite block-local family and measurable sections needed for the pathwise and Fubini arguments. |
| `unit_002` | proposition | Under accepted Propositions~\ref{prop:step-004-lift}, \ref{prop:step-010-mechanism-good}, and accepted Lemma~\ref{lem:step-012-empirical}, if \(d\geq1\), then for every full realized path and every \(i\in[k]\), core plus \(J=i\) implies (Holdout), and core plus \(J=i\) plus population error \(>\alpha\) is contained pathwise in the finite bad-candidate union over \(\mathcal G_i(\bar S_i)\). | Establishes the mandatory mark-free independence bridge before any partition, producer block, or mark conditioning. |
| `unit_003` | lemma | Under Assumption~\ref{assump:realizable-iid}, if a fixed \(h\in H_C\) has quotient population error \(p>\alpha\), then on \(M=(k-1)m\) iid quotient examples, direct exponential Markov gives \(\Pr[\widehat{\operatorname{err}}(h)\leq\alpha/4]\leq e^{-9Mp/32}\leq e^{-9\alpha(k-1)m/32}\). | Proves the required one-sided lower tail from first principles, with the same function and target. |
| `unit_004` | proposition | Under Assumption~\ref{assump:realizable-iid}, Lemma~\ref{lem:step-013-block-family}, Proposition~\ref{prop:step-013-pathwise}, and Lemma~\ref{lem:step-013-lower-tail}, if \(d\geq1\), then conditioning only after the pathwise inclusion on the data-independent partition and producer block, followed by finite union and integration, gives \(\Pr(E_{\mathrm{core}}\cap\{\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha\})\leq k(d+1)L e^{-9\alpha(k-1)m/32}\). | Converts the adaptive marked output to a finite fixed-candidate probability bound without post-mark independence. |
| `unit_005` | lemma | Under accepted Lemma~\ref{lem:step-007-fixed-point}, accepted Proposition~\ref{prop:step-007-boundaries}, the accepted Step 007 universal block calibration, and accepted Proposition~\ref{prop:step-008-list-envelope}, if \(d\geq1\), then the exact inequalities imply \(k(d+1)L e^{-9\alpha(k-1)m/32}\leq\beta_{\mathrm{gen}}=\beta/4\). | Pays the complete mark, stage, list, and confidence multiplicity using the already accepted parameter calibration. |
| `unit_006` | proposition | Under Assumption~\ref{assump:realizable-iid}, the five accepted dependencies, and Lemmas/Propositions~\ref{lem:step-013-block-family}--\ref{lem:step-013-beta-gen}, the released quotient law satisfies \(\Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]\leq\beta_{\mathrm{tr}}+\beta_{\mathrm{AT}}+\beta_{\mathrm{SS}}+\beta_{\mathrm{gen}}=\beta\), with exact marked projection and all required boundary cases. | Produces the unconditional released quotient PAC event and closes fallback, multiplicity, endpoint, null-branch, and infinite-output-space cases. |

Atomic step = no. Block-local measurable reconstruction, full-path marked
inclusion, the fixed-candidate lower tail, conditional finite integration,
the exact multiplicity inequality, and the final probability/projection
ledger are independent nontrivial obligations.

## Cited Result Applications

No external paper theorem or unproved standard concentration theorem is
used in this step. The Bernoulli lower tail is derived directly in
Lemma~\ref{lem:step-013-lower-tail}. The accepted dependency results are
restated below in current notation.

### Accepted Step 004 applications

All three applications in this subsection are restricted to the declared
positive-dimensional VC-Lyu marked law. The inactive \(d=0\) case does not
use an occurrence coordinate or any Step 004 Dirac conclusion.

- Accepted Lemma~\ref{lem:step-004-occurrence} states that the all-stage
  occurrence set of an actual terminal output is a nonempty measurable
  subset of \([k]\), while every nonactual/fallback path receives mark
  \(0\).
- Accepted Proposition~\ref{prop:step-004-lift} constructs the marked
  Markov kernel by first assigning the mark on each complete transcript and
  only then integrating the transcript. Thus paths with the same output but
  different partitions or occurrence sets retain their pathwise marks.
- Accepted Proposition~\ref{prop:step-004-projection} gives, for every
  \(B\in\mathcal H_C\),
  \[
    \sum_{j=0}^k\widetilde K_C(\bar s,B\times\{j\})
    =K_C(\bar s,B).
    \tag{1}
  \]
  Equation (1) is used only to remove the unreleased mark after the marked
  population bound is proved. It supplies no privacy claim for
  \((\bar H,J)\).

### Accepted Step 007 applications

On the positive branch, write

\[
 b:=\log(4k/\beta),\qquad a:=v+b,
 \qquad Q:=e+\frac{ekd^2a}{\alpha v},
 \qquad n_0:=km,
 \tag{2}
\]

and

\[
 C_{\rm fp}:=2+\log(1+C_{\rm blk}).
 \tag{3}
\]

Accepted Lemma~\ref{lem:step-007-fixed-point} and Item 5 of accepted
Proposition~\ref{prop:step-007-boundaries} state, respectively,

\[
 \log\frac{en_0}{v}\leq C_{\rm fp}\log Q,
 \qquad
 m\geq C_{\rm blk}\frac{d^2}{\alpha}a\log Q,
 \tag{4}
\]

where the second inequality is the lower side of the exact accepted
ceiling. The accepted universal calibration used by
Proposition~\ref{prop:step-007-conditional-charge} is

\[
 \frac{C_{\rm blk}}{3600}
 \geq4+\log(1+C_{\rm blk})=C_{\rm fp}+2.
 \tag{5}
\]

Accepted Proposition~\ref{prop:step-007-tower} gives

\[
 \Pr(E_{\rm good}^c)\leq\beta_{\rm tr}=\beta/4.
 \tag{6}
\]

Item 7 of accepted Proposition~\ref{prop:step-007-boundaries} gives the
exact \(N=0\) singleton-law bypass when \(d=0\). Equations (2)--(5) are
used in the finite-multiplicity calculation, and (6) is used once in the
positive-branch final ledger.

### Accepted Step 008 application

Accepted Proposition~\ref{prop:step-008-list-envelope} defines the actual
current essential lists \(\mathcal L_i^r\), including the totalized empty
list for an empty outer restriction, and states

\[
 \mathcal G_i:=\bigcup_{r=0}^d\mathcal L_i^r,
 \qquad
 |\mathcal G_i|\leq(d+1)L,
 \tag{7}
\]

with

\[
 L=(2^dn_0d)^d2^{d^2},
 \qquad
 \log L=d\log n_0+d\log d+2d^2\log2.
 \tag{8}
\]

The elements in (7) are actual functions in \(H_C\), not empirical-trace
representatives. This step uses only (7)--(8) and the block-local definition
of the lists; no DDim descent or properness conclusion is imported.

### Accepted Step 010 application

Accepted Proposition~\ref{prop:step-010-mechanism-good} defines a measurable
event \(E_{\rm mech}\) and states, for every fixed realizable sample and
partition satisfying \(E_{\rm good}\),

\[
 \Pr(E_{\rm mech}^c\mid\bar S,\mathcal P,E_{\rm good})
 \leq\beta_{\rm AT}+\beta_{\rm SS}=\beta/2.
 \tag{9}
\]

On \(E_{\rm mech}\), the terminal output is an actual selected-stage list
item in \(H_C\), not fallback; it may be improper. Its accepted marked
occurrence is positive and obeys

\[
 J=i\quad\Longrightarrow\quad
 \bar H\in\mathcal G_i(\bar S_i).
 \tag{10}
\]

Equation (10) is a pathwise support statement. No independence conditional
on \(J=i\) is stated or used.

### Accepted Step 012 application

Accepted Lemma~\ref{lem:step-012-empirical} states that on

\[
 E_{\rm core}:=E_{\rm good}\cap E_{\rm mech},
 \tag{11}
\]

the same literal actual output satisfies

\[
 \widehat{\operatorname{err}}_{\bar S}(\bar H)
 :=\frac1{n_0}\sum_{(q,y)\in\bar S}
       \mathbf1\{\bar H(q)\ne y\}
 \leq\frac{\alpha}{8}.
 \tag{12}
\]

This dependency gives a deterministic full-master empirical certificate on
the core path. It supplies no population or probability conclusion.

### Local-result applications

- Lemma~\ref{lem:step-013-block-family} supplies the measurable finite
  random family and its candidate-section measurability to
  Proposition~\ref{prop:step-013-pathwise} and
  Proposition~\ref{prop:step-013-finite-integration}.
- Proposition~\ref{prop:step-013-pathwise} supplies the mandatory
  full-path inclusion, before any conditioning, to
  Proposition~\ref{prop:step-013-finite-integration}.
- Lemma~\ref{lem:step-013-lower-tail} supplies the fixed-candidate iid
  complement estimate to
  Proposition~\ref{prop:step-013-finite-integration}.
- Proposition~\ref{prop:step-013-finite-integration} and
  Lemma~\ref{lem:step-013-beta-gen} supply the core population-failure
  charge to Proposition~\ref{prop:step-013-pac}.
- Proposition~\ref{prop:step-013-pac} combines that charge with (1), (6),
  (9), and the exact confidence allocation to produce the target output.

## Local Derivation

Assume first that \(d\geq1\). Fix arbitrary \(D\) and \(c\in C\), and
write \(\bar D=\kappa_\#D\) and \(\bar c\) for the quotient target. Let

\[
 \bar S=(Z_1,\ldots,Z_{n_0})
 \sim P_{\bar D,\bar c}^{n_0},
 \qquad Z_j=(Q_j,\bar c(Q_j)),
 \tag{13}
\]

then draw the setting's data-independent uniform indexed partition
\(\mathcal P\), the learner transcript, and the accepted analysis-only mark.
Denote the resulting full marked experiment by
\(\widetilde{\mathbb P}_{\bar D,\bar c}\). For a realized partition
\(\pi\), let \(\bar S_i^\pi\) be the ordered \(m\)-record producer block and
\(\bar S_{-i}^\pi\) its ordered \(M=(k-1)m\)-record complement. Define

\[
 \widehat{\operatorname{err}}_{-i}^\pi(h)
 :=\frac1M\sum_{(q,y)\in\bar S_{-i}^\pi}
       \mathbf1\{h(q)\ne y\},
 \qquad
 r(h):=\operatorname{err}_{\bar D}(h,\bar c).
 \tag{14}
\]

The superscript \(\pi\) is suppressed when the realized partition is clear.
Let

\[
 F_\alpha:=\{r(\bar H)>\alpha\}.
 \tag{15}
\]

These definitions name the common probability space; they assert no
independence beyond Assumption~\ref{assump:realizable-iid}.

### unit_001: lemma

**Lemma (Measurable block-local all-stage candidate family).**
\(\label{lem:step-013-block-family}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Lemma~\ref{lem:step-004-occurrence}, and accepted
Proposition~\ref{prop:step-008-list-envelope}, suppose \(d\geq1\). For every
producer \(i\in[k]\) and local labeled block \(s_i\in Z_Q^m\), let
\(\mathcal L_i^r(s_i)\) be the actual ordered Step 008 current essential
list at stage \(r\), with its accepted empty-list totalization, and set

\[
 \mathcal G_i(s_i)
 :=\bigcup_{r=0}^d\mathcal L_i^r(s_i).
 \tag{16}
\]

Then:

1. \(\mathcal G_i(s_i)\) depends only on the \(m\) labeled records in
   \(s_i\) and the public parameter tuple, not on \(s_{-i}\), the selected
   stage, mechanism coins, output, or mark;
2. its concatenated finite-list encoding and membership graph
   \[
     \{(s_i,h)\in Z_Q^m\times H_C:h\in\mathcal G_i(s_i)\}
     \tag{17}
   \]
   are measurable;
3. for every local block state,
   \[
     |\mathcal G_i(s_i)|\leq(d+1)L;
     \tag{18}
   \]
4. for every partition \(\pi\), the event
   \[
    A_i^\pi:=
    \bigcup_{h\in\mathcal G_i(\bar S_i^\pi):\ r(h)>\alpha}
      \{\widehat{\operatorname{err}}_{-i}^\pi(h)\leq\alpha/4\}
    \tag{19}
   \]
   is measurable. This is a finite random union, not an uncountable
   supremum event.

**Proof.** The Step 008 restriction at stage \(r\) is computed from the
block empirical errors of \(s_i\) alone. Its decomposition/list convention
was fixed before sampling as a deterministic lookup on the local quotient
state. Consequently each actual list \(\mathcal L_i^r(s_i)\), and therefore
their all-stage union (16), is a function only of \(s_i\) and public
parameters. Taking the union over all stages rather than only the selected
stage is what removes any dependence of the candidate family on the
adaptive mechanism transcript.

The local input space \(Z_Q^m\) is countable discrete. Thus the pre-fixed
finite-list coordinate \(s_i\mapsto\mathcal L_i^r(s_i)\) is measurable for
every \(r\). Concatenating the \(d+1\) ordered list encodings is measurable,
and dynamic membership in the concatenation is the finite-list membership
relation already proved measurable by accepted
Lemma~\ref{lem:step-004-occurrence}.
This proves (17). Removing repeated entries across stages is unnecessary
for measurability; it only converts the encoding to the mathematical set in
(16).

Accepted Proposition~\ref{prop:step-008-list-envelope} gives
\(|\mathcal L_i^r(s_i)|\leq L\) at every stage, including an empty
totalized list. Subadditivity over exactly \(d+1\) stages proves (18).

It remains to check the section in (19). Because \(Q_C\) is finite or
countable on the accepted quotient interface, enumerate it as
\((q_\ell)\). For \(h\in H_C\),

\[
 r(h)=\sum_{\ell}\bar D(q_\ell)
       \mathbf1\{h(q_\ell)\ne\bar c(q_\ell)\}
 \tag{20}
\]

is the monotone limit of measurable finite coordinate sums. Hence
\(h\mapsto r(h)\) is \(\mathcal H_C\)-measurable. The complement empirical
error in (14) is a finite measurable sum in \((h,\bar S_{-i})\). Combining
these two facts with the measurable finite-list graph (17), (19) is a
finite measurable disjunction over the entries of the concatenated list.
If all lists are empty, that disjunction is empty. If a function occurs at
several stages, retaining several encoding positions can only repeat the
same measurable event and never enlarges the cardinality bound beyond
(18). \(\square\)

### unit_002: proposition

**Proposition (Full-path marked inclusion and Holdout).**
\(\label{prop:step-013-pathwise}\)
Under accepted Propositions~\ref{prop:step-004-lift} and
\ref{prop:step-010-mechanism-good}, accepted
Lemma~\ref{lem:step-012-empirical}, and
Lemma~\ref{lem:step-013-block-family}, suppose \(d\geq1\). For every
complete realization of the sample, partition, learner transcript,
mechanism coins, and analysis mark, and every \(i\in[k]\),

\[
 E_{\rm core}\cap\{J=i\}
 \quad\Longrightarrow\quad
 \bar H\in\mathcal G_i(\bar S_i)
 \quad\text{and}\quad
 \widehat{\operatorname{err}}_{-i}(\bar H)
 \leq\frac{k\alpha}{8(k-1)}\leq\frac\alpha4.
 \tag{21}
\]

Consequently the following inclusion holds pathwise:

\[
 \boxed{
 E_{\rm core}\cap\{J=i\}\cap F_\alpha
 \subseteq
 \bigcup_{h\in\mathcal G_i(\bar S_i):\ r(h)>\alpha}
 \{\widehat{\operatorname{err}}_{-i}(h)\leq\alpha/4\}.
 }
 \tag{22}
\]

No probability conditioning, independence statement, or distributional
claim about \(J\) is used in (21)--(22).

**Proof.** On \(E_{\rm core}\), accepted
Proposition~\ref{prop:step-010-mechanism-good} gives actual rather than
fallback status. The accepted occurrence mark is therefore positive, and
if its realized value is \(J=i\), its support rule (10) gives the literal
membership

\[
 \bar H\in\mathcal G_i(\bar S_i).
 \tag{23}
\]

Accepted Lemma~\ref{lem:step-012-empirical} applies to this same function
and the same full indexed master sample, giving

\[
 \sum_{(q,y)\in\bar S}
   \mathbf1\{\bar H(q)\ne y\}
 \leq n_0\frac\alpha8.
 \tag{24}
\]

Every summand is nonnegative, so deleting the \(m\) producer-block terms
can only reduce the numerator. Since \(n_0=km\) and
\(n_0-m=(k-1)m\),

\[
\begin{aligned}
 \widehat{\operatorname{err}}_{-i}(\bar H)
 &\leq\frac{n_0}{n_0-m}\frac\alpha8\\
 &=\frac{k\alpha}{8(k-1)}
 \leq\frac\alpha4,
\end{aligned}
 \tag{25}
\]

where the last inequality is exactly \(k/(k-1)\leq2\) for \(k\geq2\).
This is (Holdout). It compares the same literal \(\bar H\), the same target
labels \(y=\bar c(q)\), and the same zero-one loss in the full and
complement samples.

If \(F_\alpha\) also occurs, then the function \(h=\bar H\) supplied by
(23) satisfies \(r(h)>\alpha\), and (25) supplies its right-hand event in
(22). Thus that literal function witnesses the finite union, proving the
inclusion.

The proof has not conditioned on \(J=i\); \(\{J=i\}\) is simply one
measurable event on the already realized full path. In particular, it does
not claim that \(\bar S_{-i}\) is independent of \(J\), the selected stage,
the transcript, or \(\bar H\). The independence argument begins only after
(22), in Proposition~\ref{prop:step-013-finite-integration}. \(\square\)

### unit_003: lemma

**Lemma (Direct one-sided iid Bernoulli lower tail).**
\(\label{lem:step-013-lower-tail}\)
Under Assumption~\ref{assump:realizable-iid}, let \(h\in H_C\) be fixed,
put \(p=r(h)>\alpha\), and let \(M=(k-1)m\geq1\) fresh quotient examples
be iid from \(P_{\bar D,\bar c}\). If \(Y\) is the number of errors of
\(h\) on those examples, then

\[
\begin{aligned}
 \Pr\left[\frac YM\leq\frac\alpha4\right]
 &\leq \Pr[Y\leq Mp/4]\\
 &\leq e^{-9Mp/32}\\
 &\leq e^{-9\alpha(k-1)m/32}.
\end{aligned}
 \tag{26}
\]

**Proof.** The error indicators are iid Bernoulli\((p)\), so
\(Y\sim\operatorname{Bin}(M,p)\). Because \(p>\alpha\), the first event in
(26) is contained in \(\{Y\leq Mp/4\}\).

For \(\lambda=\log4>0\), exponential Markov applied to
\(e^{-\lambda Y}\) gives

\[
\begin{aligned}
 \Pr[Y\leq Mp/4]
 &\leq e^{\lambda Mp/4}\mathbb E[e^{-\lambda Y}]\\
 &=e^{\lambda Mp/4}(1-p+pe^{-\lambda})^M\\
 &=e^{\lambda Mp/4}(1-3p/4)^M\\
 &\leq\exp\left\{Mp\left(\frac{\lambda}{4}-\frac34\right)\right\},
\end{aligned}
 \tag{27}
\]

where \(1-x\leq e^{-x}\) was used in the last line. The elementary series
bound

\[
 e^{3/2}>1+\frac32+\frac{(3/2)^2}{2}
              +\frac{(3/2)^3}{6}>4
\]

implies \(\log4<3/2\). Hence the exponent in (27) is at most
\(-3Mp/8\), which is no larger than \(-9Mp/32\). This proves the second
line of (26). The last line follows from \(p>\alpha\) and
\(M=(k-1)m\). Every constant is explicit, and no cited Chernoff statement
or asymptotic estimate is used. \(\square\)

### unit_004: proposition

**Proposition (Finite producer integration after the pathwise inclusion).**
\(\label{prop:step-013-finite-integration}\)
Under Assumption~\ref{assump:realizable-iid},
Lemma~\ref{lem:step-013-block-family},
Proposition~\ref{prop:step-013-pathwise}, and
Lemma~\ref{lem:step-013-lower-tail}, suppose \(d\geq1\). Then

\[
 \widetilde{\mathbb P}_{\bar D,\bar c}
 \left(E_{\rm core}\cap F_\alpha\right)
 \leq k(d+1)L
       \exp\left(-\frac{9\alpha(k-1)m}{32}\right).
 \tag{28}
\]

**Proof.** Proposition~\ref{prop:step-013-pathwise} has already proved
(22) on the full sample/partition/mechanism/mark path. We now, and only
now, condition on the data-independent partition and producer block.

Fix a deterministic indexed partition \(\pi\) and \(i\in[k]\). Because
the master coordinates in (13) are iid and \(\pi\) is fixed independently
of them, the random vectors \(\bar S_i^\pi\) and
\(\bar S_{-i}^\pi\) are independent; the complement consists of exactly
\(M=(k-1)m\) iid quotient examples. This is conditioning on the partition,
not conditioning on the complete master sample. No independence among
blocks conditional on the complete sample is asserted.

Next condition on \(\bar S_i^\pi=s_i\). By
Lemma~\ref{lem:step-013-block-family}, the set
\(\mathcal G_i(s_i)\) is now a fixed finite set of at most \((d+1)L\)
literal functions and does not depend on the complement. For every member
\(h\) of this set with \(r(h)>\alpha\),
Lemma~\ref{lem:step-013-lower-tail} applies to the independent complement
and gives

\[
 \Pr\left[
   \widehat{\operatorname{err}}_{-i}^\pi(h)\leq\alpha/4
   \mid\mathcal P=\pi,\bar S_i^\pi=s_i
 \right]
 \leq e^{-9\alpha(k-1)m/32}.
 \tag{29}
\]

Here the product regular conditional law is chosen to be the iid complement
law also on producer states of probability zero; this is legitimate on the
countable discrete block space and makes (29) pointwise in \(s_i\).
The function in (29) is fixed by \(s_i\). It is not obtained by
conditioning on \(J=i\), the selected stage, \(\bar H\), or any mechanism
event. Applying the finite union bound to (19) therefore yields

\[
 \Pr[A_i^\pi\mid\mathcal P=\pi,\bar S_i^\pi=s_i]
 \leq(d+1)L e^{-9\alpha(k-1)m/32}.
 \tag{30}
\]

Empty lists give an empty union, and repeated candidates only reduce the
number of distinct terms. The bound in (30) is uniform in \(s_i\) and
\(\pi\). Measurability from
Lemma~\ref{lem:step-013-block-family} permits the tower integral, first
over \(\bar S_i^\pi\) and then over the finite partition law. Writing
\(A_i:=A_i^{\mathcal P}\), this gives

\[
 \widetilde{\mathbb P}_{\bar D,\bar c}(A_i)
 \leq(d+1)L e^{-9\alpha(k-1)m/32}.
 \tag{31}
\]

The event \(A_i\) depends only on the sample and partition, so integrating
the learner and mark kernels contributes unit mass. On \(E_{\rm core}\),
accepted actual status excludes mark \(0\). The positive mark events are
disjoint, and (22) gives

\[
\begin{aligned}
 \widetilde{\mathbb P}_{\bar D,\bar c}
   (E_{\rm core}\cap F_\alpha)
 &=\sum_{i=1}^k
   \widetilde{\mathbb P}_{\bar D,\bar c}
   (E_{\rm core}\cap\{J=i\}\cap F_\alpha)\\
 &\leq\sum_{i=1}^k
   \widetilde{\mathbb P}_{\bar D,\bar c}(A_i)\\
 &\leq k(d+1)L e^{-9\alpha(k-1)m/32}.
\end{aligned}
 \tag{32}
\]

This proves (28). The mark is used only to obtain the finite pathwise
decomposition in the first line of (32); it is never used as a source of
conditional independence. \(\square\)

### unit_005: lemma

**Lemma (Exact finite-multiplicity domination by the accepted block
calibration).**
\(\label{lem:step-013-beta-gen}\)
Under accepted Lemma~\ref{lem:step-007-fixed-point}, the accepted universal
Step 007 calibration (5), accepted
Proposition~\ref{prop:step-007-boundaries}, and accepted
Proposition~\ref{prop:step-008-list-envelope}, suppose \(d\geq1\). Then

\[
 k(d+1)L
 \exp\left(-\frac{9\alpha(k-1)m}{32}\right)
 \leq\beta_{\rm gen}=\frac\beta4.
 \tag{33}
\]

**Proof.** Retain \(a,b,Q,C_{\rm fp}\) from (2)--(3). The accepted positive
branch gives \(1\leq v\leq d\), \(k\geq2\), and \(a=v+b\geq1\). Since
\(a\geq v\) and \(0<\alpha<1/4\),

\[
 Q=e+\frac{ekd^2a}{\alpha v}>e+8ed^2>d,
 \tag{34}
\]

so \(\log Q>1\), \(\log d\leq\log Q\), and
\(\log2\leq\log Q\). From the accepted fixed point (4),

\[
\begin{aligned}
 \log n_0
 &=\log(en_0/v)+\log v-1\\
 &\leq C_{\rm fp}\log Q+\log d\\
 &\leq(C_{\rm fp}+1)\log Q.
\end{aligned}
 \tag{35}
\]

Substituting (35) into the exact accepted list formula (8) gives

\[
\begin{aligned}
 \log L
 &=d\log n_0+d\log d+2d^2\log2\\
 &\leq(C_{\rm fp}+1)d\log Q+d\log Q+2d^2\log Q\\
 &\leq(C_{\rm fp}+4)d^2\log Q.
\end{aligned}
 \tag{36}
\]

The exact confidence multiplicity is

\[
\begin{aligned}
 \log\frac{k(d+1)L}{\beta_{\rm gen}}
 &=\log\frac{4k}{\beta}+\log(d+1)+\log L\\
 &=b+\log(d+1)+\log L.
\end{aligned}
 \tag{37}
\]

Here \(b\leq a\), \(d+1\leq2d\), \(d^2a\geq1\), and \(\log Q>1\).
Consequently

\[
 b\leq d^2a\log Q,
 \qquad
 \log(d+1)\leq2\log Q\leq2d^2a\log Q,
 \tag{38}
\]

and (36)--(38) yield the fully displayed multiplicity bound

\[
 \log\frac{k(d+1)L}{\beta_{\rm gen}}
 \leq(C_{\rm fp}+7)d^2a\log Q.
 \tag{39}
\]

The same accepted Step 007 block calibration pays this term. Indeed, (5)
implies

\[
 \frac{9C_{\rm blk}}{32}
 =\frac{2025}{2}\frac{C_{\rm blk}}{3600}
 \geq\frac{2025}{2}(C_{\rm fp}+2)
 \geq C_{\rm fp}+7,
 \tag{40}
\]

where the last difference is positive because \(C_{\rm fp}>0\). Using the
lower ceiling inequality from accepted
Proposition~\ref{prop:step-007-boundaries}, displayed in (4), and
\(k-1\geq1\),

\[
\begin{aligned}
 \frac{9\alpha(k-1)m}{32}
 &\geq\frac{9C_{\rm blk}}{32}(k-1)d^2a\log Q\\
 &\geq(C_{\rm fp}+7)d^2a\log Q\\
 &\geq\log\frac{k(d+1)L}{\beta_{\rm gen}}.
\end{aligned}
 \tag{41}
\]

Exponentiating (41) proves (33). Thus the exact accepted trace fixed point
and the already fixed universal block constant pay the producer, stage,
list, and confidence multiplicities. No new parameter-dependent constant is
chosen and no term is absorbed by prose. \(\square\)

### unit_006: proposition

**Proposition (Unconditional released quotient PAC ledger and boundary
integrity).**
\(\label{prop:step-013-pac}\)
Under Assumption~\ref{assump:realizable-iid}, accepted
Propositions~\ref{prop:step-004-projection},
\ref{prop:step-007-tower},
\ref{prop:step-007-boundaries},
\ref{prop:step-010-mechanism-good}, accepted
Lemma~\ref{lem:step-012-empirical},
Proposition~\ref{prop:step-013-finite-integration}, and
Lemma~\ref{lem:step-013-beta-gen}, the released quotient law obeys, for
every allowed \(D\) and \(c\in C\),

\[
 \Pr_{\bar S\sim P_{\bar D,\bar c}^{n_0},\,
          \bar H\sim K_C(\bar S,\cdot)}
 \left[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha\right]
 \leq\beta
 \tag{42}
\]

on the positive branch. Equivalently, the released quotient output has
population error at most \(\alpha\) with probability at least \(1-\beta\).
The accepted \(d=0\) branch satisfies the same conclusion with zero failure
probability and no data.

**Proof.** First suppose \(d\geq1\). Since \(E_{\rm good}\) is determined
by the sample and partition, integrating the uniform conditional bound (9)
over its successful sections gives

\[
\begin{aligned}
 \widetilde{\mathbb P}_{\bar D,\bar c}
   (E_{\rm good}\cap E_{\rm mech}^c)
 &=\mathbb E\left[
   \mathbf1_{E_{\rm good}}
   \Pr(E_{\rm mech}^c\mid\bar S,\mathcal P,E_{\rm good})
   \right]\\
 &\leq\beta_{\rm AT}+\beta_{\rm SS}.
\end{aligned}
 \tag{43}
\]

There is no additional empirical-certificate failure on
\(E_{\rm core}=E_{\rm good}\cap E_{\rm mech}\): accepted
Lemma~\ref{lem:step-012-empirical} is deterministic on that path.
Accepted Proposition~\ref{prop:step-007-tower}, (43),
Proposition~\ref{prop:step-013-finite-integration}, and
Lemma~\ref{lem:step-013-beta-gen} therefore give

\[
\begin{aligned}
 \widetilde{\mathbb P}_{\bar D,\bar c}(F_\alpha)
 &\leq
 \widetilde{\mathbb P}_{\bar D,\bar c}(E_{\rm good}^c)
 +\widetilde{\mathbb P}_{\bar D,\bar c}
    (E_{\rm good}\cap E_{\rm mech}^c)
 +\widetilde{\mathbb P}_{\bar D,\bar c}
    (E_{\rm core}\cap F_\alpha)\\
 &\leq\beta_{\rm tr}+\beta_{\rm AT}
          +\beta_{\rm SS}+\beta_{\rm gen}\\
 &=\frac\beta4+\frac\beta4+\frac\beta4+\frac\beta4=\beta.
\end{aligned}
 \tag{44}
\]

Let

\[
 B_\alpha:=\{h\in H_C:r(h)>\alpha\}.
\]

It is measurable by (20), and \(F_\alpha\) is its pullback by the terminal
output coordinate. The exact projection (1), integrated over the iid
sample, says

\[
 \widetilde{\mathbb P}_{\bar D,\bar c}
  [\bar H\in B_\alpha]
 =\Pr_{\bar S,\,\bar H\sim K_C(\bar S,\cdot)}
  [\bar H\in B_\alpha].
 \tag{45}
\]

Combining (44)--(45) proves (42). This projects out the mark; it neither
releases \(J\) nor assigns it a privacy property.

The remaining boundary cases preserve the same argument:

1. Accepted Proposition~\ref{prop:step-007-boundaries} gives the setting's
   \(d=0\) branch: \(\bar C\) has the unique released member, \(N=0\), and
   its quotient population error against the unique target is zero. The
   teacher, blocks, \(\mathcal G_i\), positive marks, and every denominator
   containing \(k-1\) are bypassed. This arm-specific conclusion is not
   inferred from Step 004 or promoted to a generic Dirac statement for an
   arbitrary empty-input pointwise law.
2. At \(k=2\), the complement size is \(M=m\), and (25) is exactly
   \(2(\alpha/8)=\alpha/4\). No block-independence claim conditional on the
   complete sample is introduced. This is the exact formal envelope boundary;
   accepted Step 010 additionally observes that its realized least-feasible
   teacher cannot equal \(2\), so no nonexistent mechanism path is used.
3. At \(d=1\), \(\mathcal G_i\) is the union of the two actual endpoint
   lists \(r=0,1\), and (18) is \(|\mathcal G_i|\leq2L\). Selection at
   stage \(0\) or stage \(d\) is included because (16) uses all stages.
4. At \(v=1\) and \(v=d\), the accepted fixed point and inequalities
   (34)--(41) remain valid; this step introduces no extra structural power
   or rate claim.
5. Empty stage lists give empty finite sections. Repeated functions within
   the all-stage encoding or across producer blocks only repeat union terms
   and cannot increase the bound. Repeated sample values remain independent
   indexed iid draws before realization and retain their literal
   multiplicities in every empirical sum.
6. A fallback path lies in the complement of \(E_{\rm mech}\) whenever
   \(E_{\rm good}\) holds and is paid in (43); outside
   \(E_{\rm good}\) it is paid by \(\beta_{\rm tr}\). Its mark is \(0\),
   and it is never inserted into a positive producer union. An actual
   selected function equal in value to \(\bar c_0\) remains actual by
   status and is treated normally.
7. The space \(H_C\) may be infinite or uncountable as a set. The proof
   uses only the finite families in (16), measurable coordinate risks, and
   finite unions; it never forms an uncountable supremum over \(H_C\).

Thus all fallback/core, multiplicity, empty-list, selected-endpoint,
smallest-parameter, repeated-record, and infinite-output-space regimes obey
the same unconditional quotient PAC conclusion. \(\square\)

## Target-Step Assembly

Accepted Step 008 first supplies the actual block-local lists. Lemma
~\ref{lem:step-013-block-family} takes their union over all \(d+1\) stages,
not over a selected stage, and proves that this family depends only on the
producer block, is measurably encoded, and has size at most \((d+1)L\).

Proposition~\ref{prop:step-013-pathwise} then performs the high-risk step in
the required order. On every complete path, accepted actual marking gives
\(\bar H\in\mathcal G_i(\bar S_i)\) when \(J=i\), and accepted Step 012
gives the full-master error of that same function. Deleting the producer
block yields

\[
 \widehat{\operatorname{err}}_{-i}(\bar H)
 \leq\frac{k}{k-1}\frac\alpha8\leq\frac\alpha4.
\]

Together with population failure, this proves the full-path inclusion (22)
before any conditional independence is invoked.

Lemma~\ref{lem:step-013-lower-tail} proves directly that a fixed bad
candidate has complement lower-tail probability at most
\(e^{-9\alpha(k-1)m/32}\). Only after (22) is available does
Proposition~\ref{prop:step-013-finite-integration} fix the independent
partition, condition on \(\bar S_i\), apply that fixed-candidate bound to
the now deterministic finite family, and integrate. It obtains exactly

\[
 \widetilde{\mathbb P}(E_{\rm core}\cap F_\alpha)
 \leq k(d+1)L e^{-9\alpha(k-1)m/32}.
\]

Lemma~\ref{lem:step-013-beta-gen} uses the accepted Step 007 fixed point and
lower ceiling inequality, the exact Step 008 formula for \(\log L\), and
the same accepted universal block calibration to prove that this term is at most
\(\beta_{\rm gen}\), with every logarithmic domination displayed in
(34)--(41).

Finally, Proposition~\ref{prop:step-013-pac} integrates the accepted
mechanism charge and assembles

\[
 \beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}+\beta_{\rm gen}=\beta.
\]

Accepted Proposition~\ref{prop:step-004-projection} transfers the marked
bound exactly to the released quotient law. These named results prove the
exact `step_013` row. They do not condition on \(J\) for independence,
release the mark, use an uncountable union, recharge privacy, or claim raw
decoded risk, properness, or a public sample rate.

## Explicit Rate Audit

- Exposed variables: \(d,v,k,m,n_0,L,a,Q,\alpha,\beta\), the four exact
  confidence shares
  \(\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS},\beta_{\rm gen}\),
  complement size \(M=(k-1)m\), and the fixed-point constant
  \(C_{\rm fp}=2+\log(1+C_{\rm blk})\).
- Hidden constants may depend on: Only the once-fixed universal
  \(C_{\rm blk}\) already calibrated and accepted in Step 007. The lower
  tail has no hidden constant.
- Hidden constants may not depend on:
  \(d,v,\alpha,\beta,\varepsilon,\delta,X,\Sigma,C,D,c\), a sample,
  partition, block, list, stage, candidate, event, transcript, output, or
  mark.
- Fixed quantities: The argument is uniform in every allowed \(D,c\) and
  parameter tuple. For the conditional tail application, the partition and
  producer block are fixed only after the full-path inclusion; all public
  parameters remain fixed throughout.
- Probability mode: Conditional fixed-candidate iid lower tail inside the
  proof, followed by finite section integration and an unconditional
  high-probability quotient PAC statement over iid sampling, random
  partition, mechanism randomness, and the analysis-only mark. The final
  law is the released unmarked marginal.
- Horizon mode: One fixed sample of size \(n_0=km\), one partition, exactly
  \(d+1\) finite source-stage lists, one learner transcript, and one finite
  mark. There is no all-time, stopping-time, or asymptotic upgrade.
- Norm mode: Quotient population binary zero-one error. The intermediate
  metrics are the same binary zero-one loss on the full master sample and
  the producer complement.
- Admissibility conditions and auxiliary tolerances:
  \(d\geq1\), \(1\leq v\leq d\), \(k\geq2\), \(m\geq1\),
  \(0<\alpha,\beta<1/4\), exact \(a,Q,L\), exact confidence shares, and
  the accepted universal calibration (5). The \(d=0\) branch bypasses
  every positive-dimensional expression.
- Term absorption or simplification inequalities:
  - Holdout is exactly (25):
    \[
      \widehat{\operatorname{err}}_{-i}(\bar H)
      \leq\frac{k}{k-1}\frac\alpha8\leq\frac\alpha4.
    \]
  - The direct lower tail is (26)--(27), with exponent at least
    \(9Mp/32\).
  - The list and confidence multiplicity is explicitly bounded in
    (34)--(39).
  - The accepted block exponent dominates it through the exact chain
    (40)--(41).
- Probability conversion: The full-path inclusion (22) precedes all
  conditioning. The proof then conditions on the data-independent
  partition and producer block, takes one finite candidate union, integrates
  its measurable sections, sums the disjoint positive marks, adds the three
  earlier confidence shares, and finally projects out the mark exactly.
- Contribution to any Rate Specialization Bridge: Equation (33) closes the
  finite-reconstruction confidence term required by the later VC-arm rate
  specialization. This step does not eliminate \(k,m,L,a,Q\) into a public
  sample-complexity statement.
- Baseline-reduction check: The \(d=0\) no-data branch has zero quotient
  error. At \(k=2\), Holdout has its maximal factor two and the complement
  remains nonempty. At \(d=1\), both actual list stages are included. At
  \(v=1\) and \(v=d\), the accepted fixed point remains unchanged. Empty
  lists, repeated candidates, repeated sample values, and infinite \(H_C\)
  incur no additional term.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined objects:
  \(Q_C,H_C,\bar C,\bar D,\bar c,K_C,k,m,n_0,d,v,\alpha,\beta,L,a,Q\),
  the master sample, partition, and complement empirical error retain their
  setting meanings.
- Accepted dependency objects:
  \(E_{\rm good},E_{\rm mech},\mathcal L_i^r,\bar H,J,\widetilde K_C\)
  and the full-master empirical bound are derived accepted interfaces, not
  primitive conditions.
- Public-facing exported interface: only the released quotient PAC
  conclusion (42). It introduces no new public helper or auxiliary
  dictionary.
- Appendix-local objects: the all-stage family \(\mathcal G_i\), the
  marked law, and the exact finite-reconstruction inequality (28) are the
  minimal interfaces needed by later proof assembly and rate
  specialization.
- Proof-local objects:
  \(\widetilde{\mathbb P}_{\bar D,\bar c},E_{\rm core},F_\alpha,r(h),
  A_i^\pi,M,b,C_{\rm fp},Y,\lambda\) and deterministic partition/block
  sections are used only inside this proof.
- Helper-object and measurability provenance: \(\mathcal G_i\) is the
  union of the literal accepted Step 008 lists and is proved block-local,
  finite, and measurably encoded by
  Lemma~\ref{lem:step-013-block-family}. The population-risk map is proved
  measurable as the countable coordinate sum (20); no measurable
  supremum, output-class enumeration, or permissibility assumption is
  introduced.
- Constant provenance:
  \(9/32\) is proved by direct exponential Markov in
  Lemma~\ref{lem:step-013-lower-tail}. \(C_{\rm fp}\) and
  \(C_{\rm blk}\) retain their accepted Step 007 definitions and
  calibration. Every other factor is a direct expression in accepted
  setting quantities. No free bounded constant, threshold, or margin is
  introduced.
- Assumption provenance: the static finite-or-countable measurable quotient
  and iid realizable quotient sampling are the only primitive conditions
  used. Candidate lists, events, actual output, empirical error, mark
  support, list cap, fixed point, and projection are accepted derived
  outputs. Block-local measurability, Holdout, pathwise inclusion, the
  Bernoulli tail, finite integration, multiplicity domination, and the final
  ledger are proved by the six named local results.
- Conditioning discipline: no proof line conditions on \(J=i\) to claim
  independence. Proposition~\ref{prop:step-013-pathwise} first proves the
  event inclusion on complete paths. Proposition
  ~\ref{prop:step-013-finite-integration} then fixes the independent
  partition and producer data, making each candidate fixed before exposing
  the iid complement.
- Status discipline: \(E_{\rm core}\) includes actual mechanism status.
  Fallback paths have mark \(0\) and are charged in the trace/mechanism
  complement; an actual output equal in value to \(\bar c_0\) remains
  actual. The mark is never released.
- Object-target discipline: full empirical error, complement empirical
  error, and population error always use the same literal quotient function
  and the same target \(\bar c\). No trace representative, transformed
  hypothesis, or surrogate metric appears.
- Boundary discipline: the \(d=0\) branch bypasses positive-dimensional
  notation; \(d=1,v=1,v=d,k=2\), first/last-stage selection, empty lists,
  duplicate candidates, repeated indexed records, and infinite \(H_C\) are
  explicitly covered in Proposition~\ref{prop:step-013-pac}.
- No-overclaim boundary: this artifact proves no raw decoded-risk identity,
  raw or quotient privacy result, privacy for the marked pair, properness,
  finite-class claim, old-arm claim, or public sample-complexity rate.
- Diagnostic boundary: no global diagnostic was read or used for unit
  attempt 3. Every inclusion, tail, scalar domination, and probability
  conversion is proved from the setting, the current accepted dependencies,
  and the six named local results.
