# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`

## Target Step Claim

- Intended claim: Construct the measurable quotient Markov kernel for every
  totalized pointwise law and prove its raw pullback is a kernel on
  \(Z_X^N\).
- Depends on: `step_001`, `step_002`.
- Assumptions used: Primitive
  `assump:countable-evaluation-quotient`; derived
  quotient map and totalized procedure.
- Technical challenge: The countable discrete input must support every
  restriction, list, event, transcript, and output coordinate without
  importing a selector.
- Intended proof tool or cited result: Countable-discrete measurability and
  standard-Borel product facts.
- Output target: \(K_C\) and \(K_C\circ T_N\) kernels, together with the
  measurable event interfaces.
- Rate objective: None.
- Row-local review status: `PENDING`; the binding
  `proof_sketch_review.md`, rather than this row-local
  field, is the acceptance gate.

The controller-expanded target requires the construction for every
\(N\in\mathbb N_0\), including the empty input, and requires explicit
coverage of empty lists, fallback and invalid source paths, duplicate
records, arbitrary labels, and potentially improper outputs. It does not
authorize a measurable selector or any later privacy or PAC conclusion.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:countable-evaluation-quotient`: \(Q_C\) is
    finite or countably infinite, every quotient cell is in \(\Sigma\), and
    hence the quotient map is measurable. This is the only primitive
    condition used directly in this step.
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-totalization}, **Pre-sampling
    totalization of the quotient procedure**, supplies the fixed total
    pointwise procedure: every quotient input and internal path has a
    terminal output in \(H_C\); invalid or unavailable source objects are
    sanitized; and every terminal failure path returns \(\bar c_0\).
  - Accepted Proposition~\ref{prop:step-001-zero}, **Exact
    zero-dimensional law**, supplies the \(N=0\), \(d=0\) Dirac law.
  - Accepted Proposition~\ref{prop:step-002-factorization}, **Measurable
    evaluation factorization**, supplies measurable \(\kappa\) and
    measurable decoding of every \(\bar h\in H_C\).
  - Accepted Proposition~\ref{prop:step-002-borel}, **Countable quotient and
    output Borel structure**, supplies the countable-discrete spaces
    \(Z_Q^N\), including \(Z_Q^0\), and the standard-Borel output
    \((H_C,\mathcal H_C)\) with measurable evaluation coordinates.
  - Accepted Proposition~\ref{prop:step-002-record-map}, **Measurable record
    transport and replacement adjacency**, supplies measurable
    \(T_N:Z_X^N\to Z_Q^N\) for every \(N\in\mathbb N_0\). Only its
    measurability conclusion is consumed here; its adjacency conclusion is
    reserved for the later privacy step.
  - Accepted Proposition~\ref{prop:step-002-risk}, **Exact risk transfer for
    every quotient output**, supplies measurability of the fixed-target
    population-risk functional on all of \(H_C\), including improper
    outputs.
- Accepted dependency artifacts:
  - `perspective_2/idea_4/proof_steps/step_001/proof.md`,
    SHA-256
    `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530`,
    accepted by `step_001/review.md`, SHA-256
    `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`.
  - `perspective_2/idea_4/proof_steps/step_002/proof.md`,
    SHA-256
    `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f`,
    accepted by `step_002/review.md`, SHA-256
    `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`.
- Local conditional hypotheses: None. In particular, no realizability, good
  event, source-valid path, privacy inequality, PAC conclusion, measurable
  selector, or propriety condition is assumed.

The pointwise restrictions, lists, validity flags, events, transcripts, and
output laws are generated objects. Their measurable interfaces are proved
below rather than classified as primitive conditions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:countable-evaluation-quotient} and accepted Proposition~\ref{prop:step-002-borel}, for every \(N\in\mathbb N_0\), every function from \(Z_Q^N\) to a measurable space is measurable, and every assignment of a probability measure to each quotient input is a Markov kernel. | Gives the selector-free promotion principle from pointwise objects and laws to measurable quotient coordinates and kernels. |
| `unit_002` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted Propositions~\ref{prop:step-001-totalization} and~\ref{prop:step-002-borel}, and Lemma~\ref{lem:step-003-countable-promotion}, all realized restriction/decomposition tokens, finite \(H_C\)-lists, validity flags, finite-stage transcripts, and their coordinate laws have measurable interfaces; invalid states and fallback are included. | Establishes the measurable list and transcript interfaces without a hyperspace selector. |
| `unit_003` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted Propositions~\ref{prop:step-002-borel} and~\ref{prop:step-002-risk}, and Proposition~\ref{prop:step-003-coding}, quotient evaluation, decoded evaluation, empirical-error, population-error, dynamic-list-membership, exact \(E_{\mathrm{good}}\), transcript-status, and fallback events are measurable. | Establishes every event and output-coordinate interface consumed later. |
| `unit_004` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted Proposition~\ref{prop:step-001-totalization}, Lemma~\ref{lem:step-003-countable-promotion}, and Proposition~\ref{prop:step-003-coding}, every totalized pointwise \(H_C\)-valued output law on \(Z_Q^N\) defines a Markov kernel \(K_N:Z_Q^N\leadsto H_C\), including the exact \(d=0,N=0\) law and all fallback paths. | Constructs the required quotient learner kernel for every totalized pointwise law. |
| `unit_005` | proposition | Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted Proposition~\ref{prop:step-002-record-map}, and Proposition~\ref{prop:step-003-quotient-kernel}, \(A_N(s,E):=K_N(T_N(s),E)\) is a Markov kernel \(Z_X^N\leadsto H_C\) for every \(N\in\mathbb N_0\). | Produces the exact raw-input pullback kernel with unchanged output codomain. |

Atomic step = no. Pointwise-law promotion, finite-list/transcript coding,
event measurability, quotient-kernel construction, and raw pullback are
independent audit obligations.

## Cited Result Applications

No paper result is used in this step. The accepted dependency results and
the standard measurable-space facts used below are restated here.

### Accepted Proposition~\ref{prop:step-001-totalization}:
Pre-sampling totalization of the quotient procedure

- Restated result: Under the primitive conditions discharged in its accepted
  proof and with the public positive-branch tuple fixed before sampling, the
  quotient procedure assigns a finite \(H_C\)-list or the empty list at every
  list coordinate, assigns a defined continuation to every invalid source
  state, and returns an element of \(H_C\) on every internal path. Exact
  source-valid successful paths are unchanged; every terminal failure,
  invalid transcript, no-success path, Sparse Sample failure symbol, or
  residual fallback returns the fixed \(\bar c_0\in H_C\).
- Instantiated objects: The quotient input \(\bar s\in Z_Q^N\), the fixed
  partition and stage coordinates, the essential lists, the finite source
  transcript, and the terminal quotient output.
- Assumptions required and discharge: The dependency's scalar and source
  premises were discharged in its accepted proof, whose accepted
  proof/review hashes are listed above. This step uses only its exported
  total pointwise-procedure conclusion and does not reopen its rate or source
  claims.
- Conclusion used: Each fixed input and internal randomization has a defined
  terminal \(H_C\)-output, and every structural coordinate used before that
  output has a fixed pointwise value or a fixed sanitized value.

### Accepted Proposition~\ref{prop:step-001-zero}: Exact
zero-dimensional law

- Restated result: If \(d=0\), then \(C\) and \(\bar C\) are singletons and,
  at \(N=0\), the quotient output law is the Dirac measure at the unique
  \(\bar c_0\in\bar C\subseteq H_C\).
- Instantiated objects: The one-point space
  \(Z_Q^0=\{\varnothing\}\) and the measure \(\delta_{\bar c_0}\) on
  \((H_C,\mathcal H_C)\).
- Assumption discharge: The accepted dependency proof derives the singleton
  conclusion from its named primitive finite-Littlestone condition.
- Conclusion used: The null branch is a pointwise Borel probability law and
  is included in the kernel construction rather than treated as an omitted
  boundary.

### Accepted Propositions~\ref{prop:step-002-factorization} and
\ref{prop:step-002-borel}: quotient and output measurable spaces

- Restated result: Under
  Assumption~\ref{assump:countable-evaluation-quotient}, \(\kappa\) is
  measurable, \(Z_Q^N\) is countable discrete for every
  \(N\in\mathbb N_0\), and
  \[
  (H_C,\mathcal H_C)
  =\left(\{0,1\}^{Q_C},
  \bigotimes_{q\in Q_C}2^{\{0,1\}}\right)
  \]
  is standard Borel. Every coordinate
  \(e_q(\bar h)=\bar h(q)\) is measurable, and every decoded
  \(\bar h\circ\kappa\) is raw-measurable.
- Instantiated objects: The exact quotient data spaces and exact output
  space appearing in the target row.
- Assumption discharge: Countability and measurable quotient cells are
  exactly the primitive condition allowed in this step.
- Conclusion used: The input has the full power-set sigma-field, output
  cylinders are measurable, and finite-list/transcript codes can be built
  from a standard-Borel factor.

### Accepted Proposition~\ref{prop:step-002-record-map}: measurable record
transport

- Restated result: For every \(N\in\mathbb N_0\), the recordwise quotient
  map
  \[
  T_N: (Z_X^N,\mathcal Z_X^{\otimes N})
  \longrightarrow (Z_Q^N,2^{Z_Q^N})
  \]
  is measurable, including the unique empty-tuple map \(T_0\).
- Instantiated objects: The exact \(T_N\) in the raw pullback
  \(A_N(s,E)=K_N(T_N(s),E)\).
- Assumption discharge: Its accepted proof derives measurability atom by
  atom from the measurable quotient cells. Its separate neighbor conclusion
  is not used in this step.
- Conclusion used: Composition of a quotient-kernel event coordinate with
  \(T_N\) is raw-input measurable.

### Accepted Proposition~\ref{prop:step-002-risk}: measurable risk
functional

- Restated result: For every fixed probability measure \(D\), target
  \(c\in C\), and corresponding \((\bar D,\bar c)\), the map
  \[
  \bar h\longmapsto
  \operatorname{err}_{\bar D}(\bar h,\bar c)
  \]
  is \(\mathcal H_C\)-measurable for every \(\bar h\in H_C\), with no
  propriety assumption.
- Instantiated objects: Population-error events of the form
  \(\{\bar h:\operatorname{err}_{\bar D}(\bar h,\bar c)>a\}\).
- Assumption discharge: The dependency proves the claim by finite sums or a
  monotone limit of countably many evaluation-coordinate sums.
- Conclusion used: Population-error sections are Borel output events.

### Standard-Borel closure and diagonal facts

- Restated result: Finite products and countable disjoint unions of standard
  Borel spaces are standard Borel; adjoining finitely or countably many
  isolated points preserves standard Borelness. If \(Y\) is standard Borel,
  its diagonal \(\{(y,y):y\in Y\}\) belongs to
  \(\mathcal Y\otimes\mathcal Y\). Coordinate projections from these
  products and disjoint unions are measurable.
- Instantiated objects: \(Y=H_C\), the finite-list space
  \(\bigsqcup_{\ell\ge0}H_C^\ell\), finite transcript products, real-valued
  mechanism-noise coordinates, and \(H_C\) with isolated failure tokens.
- Assumptions required and discharge: Accepted
  Proposition~\ref{prop:step-002-borel} supplies that \(H_C\) is standard
  Borel; finite discrete alphabets and \(\mathbb R\) are standard Borel.
  The diagonal assertion follows, for example, by transporting the closed
  diagonal through a Borel realization of \(Y\) as a Borel subset of a
  Polish space.
- Conclusion used: The list-membership relation and all transcript
  coordinate projections used below are measurable.

The internal application ledger is:

| Result | Assumptions and instantiated objects | Exact conclusion used later | Assumption discharge and use |
| --- | --- | --- | --- |
| Lemma~\ref{lem:step-003-countable-promotion} | Countable-discrete \(Z_Q^N\), arbitrary measurable coordinate space, and a pointwise family of probability measures | Arbitrary pointwise coordinates are measurable; arbitrary pointwise laws are kernels | Accepted Proposition~\ref{prop:step-002-borel}; used by Propositions~\ref{prop:step-003-coding} and~\ref{prop:step-003-quotient-kernel}. |
| Proposition~\ref{prop:step-003-coding} | Accepted total procedure, finite lists/stages, standard-Borel \(H_C\) | Measurable restriction tokens, lists, transcripts, and coordinate kernels | Accepted Proposition~\ref{prop:step-001-totalization}, standard-Borel closure, and the preceding lemma; used by Propositions~\ref{prop:step-003-events} and~\ref{prop:step-003-quotient-kernel}. |
| Proposition~\ref{prop:step-003-events} | Coded lists/transcripts, quotient evaluations, fixed-target risk | Measurable list, event, transcript-status, empirical/population-error, and output-coordinate interfaces | Accepted Propositions~\ref{prop:step-002-borel} and~\ref{prop:step-002-risk}; used in target assembly. |
| Proposition~\ref{prop:step-003-quotient-kernel} | Any pointwise \(H_C\)-law supplied by a totalized procedure | Quotient Markov kernel \(K_N\) | Lemma~\ref{lem:step-003-countable-promotion} and accepted totalization; used by Proposition~\ref{prop:step-003-raw-pullback}. |
| Proposition~\ref{prop:step-003-raw-pullback} | Quotient kernel \(K_N\) and measurable \(T_N\) | Raw Markov kernel \(A_N=K_N\circ T_N\) | Accepted Proposition~\ref{prop:step-002-record-map}; used in target assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Countable-atom promotion of pointwise coordinates and laws).**
\(\label{lem:step-003-countable-promotion}\)
Under Assumption~\ref{assump:countable-evaluation-quotient} and accepted
Proposition~\ref{prop:step-002-borel}, fix any
\(N\in\mathbb N_0\) and put \(S_N:=Z_Q^N\). Then:

1. for every measurable space \((Y,\mathcal Y)\), every function
   \(f:S_N\to Y\) is \(2^{S_N}/\mathcal Y\)-measurable;
2. for every family \((\mu_{\bar s})_{\bar s\in S_N}\) of probability
   measures on \((Y,\mathcal Y)\),
   \[
   K(\bar s,B):=\mu_{\bar s}(B),
   \qquad \bar s\in S_N,\quad B\in\mathcal Y,
   \tag{1}
   \]
   is a Markov kernel from \(S_N\) to \(Y\); and
3. the same conclusions hold after adjoining any finite or countable
   discrete collection of partition, stage, or history indices to \(S_N\).

No compatibility, enumeration, or selector condition is required of the
pointwise family in (1).

**Proof.** Accepted Proposition~\ref{prop:step-002-borel} gives
\(\sigma(S_N)=2^{S_N}\), including when \(N=0\), where \(S_0\) is a
singleton. For \(B\in\mathcal Y\), the preimage \(f^{-1}(B)\) is simply a
subset of \(S_N\), hence belongs to \(2^{S_N}\). This proves the first
claim.

For the second claim, \(B\mapsto K(\bar s,B)\) is the probability measure
\(\mu_{\bar s}\) for each fixed \(\bar s\). For fixed \(B\in\mathcal Y\),
\(\bar s\mapsto\mu_{\bar s}(B)\) is an arbitrary function from \(S_N\) to
\([0,1]\), so the first claim makes it measurable. These are exactly the two
Markov-kernel axioms. A finite or countable product of \(S_N\) with a
discrete index set is again countable discrete, so the same proof gives the
third claim. At no point is a choice made from a quotient cell or from an
uncountable family of source classes. \(\square\)

### unit_002: proposition

**Proposition (Measurable coding of restrictions, finite lists, and
transcripts).**
\(\label{prop:step-003-coding}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Propositions~\ref{prop:step-001-totalization} and
\ref{prop:step-002-borel}, and
Lemma~\ref{lem:step-003-countable-promotion}, fix
\(N\in\mathbb N_0\). Every restriction, decomposition, finite-list,
validity, event-status, finite-stage transcript, and terminal-output
coordinate of the totalized quotient procedure has a measurable interface.
More precisely:

1. every realized restriction or decomposition may be coded in its
   countable realized range with the discrete sigma-field;
2. every sanitized finite list is a measurable coordinate with values in
   the standard-Borel space
   \[
   \mathsf{List}(H_C):=\bigsqcup_{\ell=0}^{\infty}H_C^\ell,
   \tag{2}
   \]
   and its empty-list, length, item, and membership coordinates are
   measurable;
3. the finite transcript may be coded in a standard-Borel space built from
   finite/countable discrete flags, finitely many copies of (2), finitely
   many real or uniform randomization coordinates, and
   \[
   H_C^\dagger:=H_C\sqcup\{\perp,\dagger\},
   \tag{3}
   \]
   where \(\perp\) is the Sparse Sample failure symbol and \(\dagger\) is an
   optional invalid-state token; and
4. every family of pointwise transcript laws indexed by the quotient input
   is a Markov kernel, and every measurable transcript coordinate has a
   Markov-kernel marginal.

The construction includes empty input, empty restrictions and lists,
invalid source paths, no-success exhaustion, and terminal fallback. It does
not put a sigma-field on the full hyperspace \(2^{H_C}\) and does not choose
a representative from any raw quotient cell.

**Proof.** Let \(\mathfrak P_N\) denote the finite set of data-independent
indexed partitions used by the procedure at its declared sample size; when
no partition is used, including the \(N=0\) branch, let
\(\mathfrak P_N\) be a singleton. Let \(\mathfrak A_N\) collect the finitely
many stage indices and finite-alphabet structural-history flags that can
precede a list or restriction coordinate. The structural state space
\[
\mathsf U_N:=S_N\times\mathfrak P_N\times\mathfrak A_N
\tag{4}
\]
is countable discrete. Duplicate records, arbitrary binary labels, and
nonrealizable samples remain ordinary atoms of \(S_N\); they do not alter
this conclusion.

Fix one restriction coordinate \(R:\mathsf U_N\to2^{H_C}\) generated by the
pointwise procedure. Its realized range
\[
\mathscr R_R:=\{R(u):u\in\mathsf U_N\}
\tag{5}
\]
is countable. Equip only this token set with its full power-set sigma-field.
Then \(R:\mathsf U_N\to\mathscr R_R\) is measurable by
Lemma~\ref{lem:step-003-countable-promotion}. The same construction codes
every realized decomposition or leaf-class object. This is the precise
measurable interface required by the algorithm: emptiness, the fixed chosen
decomposition, the sanitized list, and later finite coordinates are
functions of the token and the countable state. We neither assert nor need
that an arbitrary member of \(2^{H_C}\), or the possibly non-Borel class
\(\bar C\), is itself a Borel subset of \(H_C\).

By the standard-Borel closure facts, (2) is standard Borel. The component
\(\ell=0\) is the unique empty list. Length is the measurable disjoint-union
tag, and the \(j\)-th item map on components of length at least \(j\) is a
coordinate projection. Sending lists of length below \(j\) to the isolated
token \(\dagger\) makes this a total measurable
\(\mathsf{List}(H_C)\to H_C^\dagger\) coordinate. The list-membership
relation
\[
\mathsf M:=\{(\lambda,\bar h)\in
\mathsf{List}(H_C)\times H_C:\bar h\text{ occurs in }\lambda\}
\tag{6}
\]
is Borel: on the component \(H_C^\ell\times H_C\), it is
\[
\bigcup_{j=1}^{\ell}
\{((\bar h_1,\ldots,\bar h_\ell),\bar h):\bar h_j=\bar h\},
\tag{7}
\]
a finite union of inverse images of the Borel diagonal of \(H_C\). Taking
the countable union over \(\ell\) proves (6). Accepted
Proposition~\ref{prop:step-001-totalization} ensures that every list reaching
the measured interface is either a genuine finite \(H_C\)-list or the empty
list. Thus each list coordinate
\(\lambda:\mathsf U_N\to\mathsf{List}(H_C)\) is measurable by
Lemma~\ref{lem:step-003-countable-promotion}, regardless of how the fixed
pointwise source choice varies among atoms.

Invalidity, oversize, nonfiniteness, non-\(H_C\) output, source failure,
empty union, and fallback are predicates on the countable state (4). Hence
each corresponding flag set is measurable before sanitization. After
sanitization, only the empty list, valid finite \(H_C\)-lists, actual
\(H_C\)-items, and the isolated tokens in (3) enter the transcript. This
avoids any need to impose a measurable structure on an untrusted source
object outside \(H_C\).

There are finitely many stages and, on the positive branch, finitely many
teacher/list coordinates. Consequently a complete transcript fits in a
finite product or finite disjoint union of spaces of the following types:
\[
\mathfrak P_N,\quad \mathfrak A_N,\quad
\mathsf{List}(H_C),\quad \mathbb R,\quad [0,1],\quad H_C^\dagger.
\tag{8}
\]
Call one such container \(\mathsf{Tr}_N\). It is standard Borel. Variable
stopping times are represented by a finite disjoint-union tag, not by an
infinite transcript.

For a fixed input atom \(\bar s\), the accepted totalized procedure gives a
pointwise probability law \(\nu_{\bar s}\) on \(\mathsf{Tr}_N\). Concretely,
the partition has a finite law, AboveThreshold uses finitely many real
noise coordinates, and a Sparse Sample call has a finite categorical law
because its sanitized input lists are finite and its failure-symbol weight
is positive. Concatenate the already fixed ordered lists and retain each
candidate at its first occurrence; this gives a deterministic finite support
order on every countable structural state and hence introduces no global
enumeration of \(H_C\). Comparisons with fixed thresholds are Borel subsets
of the real-noise coordinates; the categorical draw in that finite order can
be realized by consecutive intervals in one \([0,1]\) coordinate. Invalid
or exhausted paths use the constant terminal convention. Thus every
fixed-input transcript is a Borel random element and \(\nu_{\bar s}\) is a
Borel probability measure.

Lemma~\ref{lem:step-003-countable-promotion} now makes
\[
\Gamma_N(\bar s,B):=\nu_{\bar s}(B),
\qquad B\in\mathcal B(\mathsf{Tr}_N),
\tag{9}
\]
a Markov kernel. If \((Y,\mathcal Y)\) is a measurable space and
\(\pi:\mathsf{Tr}_N\to Y\) is any measurable list, flag, event-status,
stage, or terminal-output coordinate, then, for \(A\in\mathcal Y\),
\[
\Gamma_N^\pi(\bar s,A)
:=\Gamma_N(\bar s,\pi^{-1}(A))
\tag{10}
\]
is a kernel: it is a probability measure in \(A\) for fixed \(\bar s\), and
is measurable in \(\bar s\) for fixed \(A\) by (9). This proves all four
claims. For \(N=0\), (4), (8), and (9) reduce to singleton structural and
transcript spaces, so no positive-branch coordinate is silently activated.
\(\square\)

### unit_003: proposition

**Proposition (Measurable list, event, prediction, and error interfaces).**
\(\label{prop:step-003-events}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Propositions~\ref{prop:step-002-borel} and
\ref{prop:step-002-risk}, and
Proposition~\ref{prop:step-003-coding}, all of the following interfaces are
measurable for every \(N\in\mathbb N_0\):

1. quotient evaluation and joint decoded evaluation;
2. empirical-error and fixed-target population-error events, including
   arbitrary labels, duplicate records, and improper outputs;
3. dynamic finite-list membership, empty-list, list-validity,
   transcript-status, invalid-path, and fallback events; and
4. on the declared block horizon \(N=n_0=km\), the exact source event
   \(E_{\mathrm{good}}(\bar S,\mathcal P)\) and every one of its finite
   stage/block sections.

More generally, any family of Borel output-event sections indexed by a
countable quotient state has a measurable joint graph.

**Proof.** The quotient evaluation map is jointly measurable. Indeed,
\[
\{(\bar h,q)\in H_C\times Q_C:\bar h(q)=1\}
=\bigcup_{q\in Q_C}
e_q^{-1}(\{1\})\times\{q\},
\tag{11}
\]
a countable union of measurable rectangles. Using the measurable quotient
cells, the joint decoded evaluation is also measurable because
\[
\{(\bar h,x)\in H_C\times X:\bar h(\kappa(x))=1\}
=\bigcup_{q\in Q_C}
e_q^{-1}(\{1\})\times\kappa^{-1}(\{q\}).
\tag{12}
\]
This proves the output-coordinate interface for every
\(\bar h\in H_C\); no membership in \(\bar C\) is required.

For \(\bar s=((q_r,y_r))_{r=1}^N\), define the total empirical-error map
\[
\widehat R_N(\bar s,\bar h):=
\begin{cases}
0,&N=0,\\[2pt]
\displaystyle\frac1N\sum_{r=1}^N
\mathbf1\{\bar h(q_r)\ne y_r\},&N\ge1.
\end{cases}
\tag{13}
\]
For each fixed \(\bar s\), (13) is a finite sum of measurable evaluation
indicators. Since \(S_N\) is countable, for every Borel
\(B\subseteq[0,1]\),
\[
\{(\bar s,\bar h):\widehat R_N(\bar s,\bar h)\in B\}
=\bigcup_{\bar s\in S_N}
\{\bar s\}\times
\{\bar h:\widehat R_N(\bar s,\bar h)\in B\}
\tag{14}
\]
is a countable union of measurable rectangles. Thus (13) is jointly
measurable. Repeated \(q_r\)'s and arbitrary \(y_r\)'s merely repeat or
change finitely many summands and do not affect (14). For fixed
\((\bar D,\bar c)\), accepted Proposition~\ref{prop:step-002-risk} makes
\(\bar h\mapsto\operatorname{err}_{\bar D}(\bar h,\bar c)\) measurable,
so every threshold event for population error is in \(\mathcal H_C\), also
for improper \(\bar h\).

If \(\lambda:\mathsf U_N\to\mathsf{List}(H_C)\) is any generated list
coordinate, then
\[
\{(u,\bar h):\bar h\text{ occurs in }\lambda(u)\}
=\{(u,\bar h):(\lambda(u),\bar h)\in\mathsf M\}
\tag{15}
\]
is measurable by Proposition~\ref{prop:step-003-coding}. The empty-list and
length/cap events are inverse images under measurable list coordinates.
List validity, source validity, Above/Below status, first legal stage,
no-success exhaustion, invalid transcript, Sparse Sample failure, and
fallback are measurable discrete flags in the same proposition. In
particular, the terminal output map sends every fallback flag to the
constant \(\bar c_0\), whose singleton is Borel in the standard-Borel space
\(H_C\).

At the actual block horizon, \(S_N\times\mathfrak P_N\) is countable
discrete. The exact event
\[
\mathsf E_{\mathrm{good}}
:=\{(\bar s,\mathcal P):
E_{\mathrm{good}}(\bar s,\mathcal P)\text{ holds}\}
\tag{16}
\]
is therefore measurable as a subset of that space, as are its finitely many
stage, block, high-error, low-error, and complement-error sections. This
argument does not take a supremum over a nonmeasurable function class and
does not select a representative trace: the exact pointwise predicate in
the setting is evaluated on each countable input/partition atom.

Finally, let \((B_u)_{u\in\mathsf U}\) be any family with
\(B_u\in\mathcal H_C\), where \(\mathsf U\) is countable discrete. Then
\[
\{(u,\bar h):\bar h\in B_u\}
=\bigcup_{u\in\mathsf U}\{u\}\times B_u
\tag{17}
\]
is measurable. Formula (17) covers every remaining pointwise Borel output
event and proves the general assertion. \(\square\)

### unit_004: proposition

**Proposition (Quotient kernel for every totalized pointwise output law).**
\(\label{prop:step-003-quotient-kernel}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Proposition~\ref{prop:step-001-totalization},
Lemma~\ref{lem:step-003-countable-promotion}, and
Proposition~\ref{prop:step-003-coding}, fix
\(N\in\mathbb N_0\). Let a totalized pointwise quotient law assign to every
\(\bar s\in Z_Q^N\) a Borel probability measure
\(\mu_{\bar s}\) on the exact output space \((H_C,\mathcal H_C)\). Then
\[
K_N(\bar s,E):=\mu_{\bar s}(E),
\qquad E\in\mathcal H_C,
\tag{18}
\]
is a Markov kernel
\[
K_N:(Z_Q^N,2^{Z_Q^N})\leadsto(H_C,\mathcal H_C).
\tag{19}
\]
This applies to every deterministic or randomized totalization, without a
support-cardinality or propriety restriction. In particular it applies to
the exact totalized quotient-first Lyu law, its totalized old-Lyu analogue,
and, when defined, the totalized finite-class pointwise law. If \(d=0\),
\(N=0\), (18) is exactly the Dirac law at the unique \(\bar c_0\).
At the public sample size of any setting-defined arm, its notation \(K_C\)
means the corresponding kernel \(K_N\) in (18).

**Proof.** A pointwise output law is, by definition, a probability measure
\(\mu_{\bar s}\) on \((H_C,\mathcal H_C)\) for each fixed input. For the
procedure exported by accepted
Proposition~\ref{prop:step-001-totalization}, this law exists directly as
the terminal-output marginal of the pointwise transcript law constructed in
Proposition~\ref{prop:step-003-coding}. All exact source-valid paths output
their actual \(H_C\)-item, while invalid, empty, exhausted, or failure paths
output the fixed \(\bar c_0\). Hence no mass is assigned outside \(H_C\),
and the output marginal has total mass one. More explicitly, on the
positive branch its support for fixed \(\bar s\) is contained in
\[
\{\bar c_0\}\ \cup\
\bigcup_{\mathcal P\in\mathfrak P_N}
\bigcup_{r=0}^{d}\bigcup_{i=1}^{k}
\mathcal L_i^r(\bar s,\mathcal P),
\tag{18a}
\]
which is finite by accepted totalization; continuous mechanism coins change
only the masses on this finite Borel set. A separately supplied totalized
pointwise law needs no transcript representation or finite-support
property; its Borel probability measures \(\mu_{\bar s}\) are already the
complete pointwise input.

Applying Lemma~\ref{lem:step-003-countable-promotion} with \(Y=H_C\) proves
(19): for fixed \(\bar s\), \(E\mapsto K_N(\bar s,E)\) is the probability
measure \(\mu_{\bar s}\), and for fixed \(E\in\mathcal H_C\),
\(\bar s\mapsto K_N(\bar s,E)\) is measurable on the countable discrete
input. This remains true if the pointwise supports vary arbitrarily with
\(\bar s\), are not uniformly finite, or contain improper hypotheses. Thus
the result does not obtain measurability by choosing a global list
enumeration or a selector.

When \(d=0\), accepted Proposition~\ref{prop:step-001-zero} gives
\(\mu_{\varnothing}=\delta_{\bar c_0}\), and \(Z_Q^0\) is a singleton, so
(18) includes the exact empty-input branch. When \(d\ge1\), all quotient
datasets, including duplicate records and arbitrary/nonrealizable labels,
are atoms of \(Z_Q^N\) on which the accepted procedure is total. Therefore
none is removed from the kernel domain. \(\square\)

### unit_005: proposition

**Proposition (Measurable raw pullback of the quotient kernel).**
\(\label{prop:step-003-raw-pullback}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Proposition~\ref{prop:step-002-record-map}, and
Proposition~\ref{prop:step-003-quotient-kernel}, for every
\(N\in\mathbb N_0\) and every quotient kernel \(K_N\) produced there, define
\[
A_N(s,E):=K_N(T_N(s),E),
\qquad s\in Z_X^N,\quad E\in\mathcal H_C.
\tag{20}
\]
Then
\[
A_N:(Z_X^N,\mathcal Z_X^{\otimes N})
\leadsto(H_C,\mathcal H_C)
\tag{21}
\]
is a Markov kernel. Its output is the same quotient hypothesis in \(H_C\);
decoding occurs only after release and no propriety condition is introduced.

**Proof.** For fixed \(s\in Z_X^N\), \(E\mapsto A_N(s,E)\) is the
probability measure \(K_N(T_N(s),\cdot)\). For fixed
\(E\in\mathcal H_C\), the kernel property of \(K_N\) makes
\(\bar s\mapsto K_N(\bar s,E)\) measurable on \(Z_Q^N\), while accepted
Proposition~\ref{prop:step-002-record-map} makes \(T_N\) measurable on the
raw product space. Their composition in (20) is therefore
\(\mathcal Z_X^{\otimes N}\)-measurable. This proves both kernel axioms.

For \(N=0\), both input spaces are singletons and \(T_0\) is the unique
empty-tuple map, so the same argument gives the exact Dirac pullback. For
\(N\ge1\), raw duplicates, same-cell records, and arbitrary labels are all
in the domain of the measurable \(T_N\); no realizability condition is used.
Equation (20) is an exact pullback into \(H_C\), not a kernel on a trace,
list, representative, or raw-selector surrogate. The accepted neighbor
property of \(T_N\) and all pointwise privacy inequalities are deliberately
unused here. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-totalization} supplies the complete
pointwise quotient procedure and ensures that every valid, empty, invalid,
failure, exhausted, and fallback path terminates in \(H_C\). Accepted
Proposition~\ref{prop:step-002-borel} supplies the exact countable-discrete
input and standard-Borel output spaces.

Lemma~\ref{lem:step-003-countable-promotion} proves the central promotion
principle: on every \(Z_Q^N\), arbitrary pointwise coordinates are
measurable and arbitrary pointwise Borel probability laws are kernels.
Proposition~\ref{prop:step-003-coding} applies that principle to the actual
source state space, coding realized restrictions and decompositions only in
their countable ranges, coding finite lists in
\(\mathsf{List}(H_C)\), and coding the finite random transcript in a
standard-Borel space. This proves list/transcript measurability without a
hyperspace sigma-field or a selector.
Proposition~\ref{prop:step-003-events} then proves the exact list-membership,
source-event, transcript-status, fallback, prediction, empirical-error, and
population-error interfaces, including \(E_{\mathrm{good}}\) and
potentially improper outputs.

Proposition~\ref{prop:step-003-quotient-kernel} turns every totalized
pointwise \(H_C\)-law into the required quotient Markov kernel \(K_N\), with
the \(d=0,N=0\) Dirac law and every arbitrary-label input included. Finally,
accepted Proposition~\ref{prop:step-002-record-map} and
Proposition~\ref{prop:step-003-raw-pullback} prove that
\(A_N=K_N\circ T_N\) is a raw-input learner kernel for every
\(N\in\mathbb N_0\). These named results establish exactly the target row.
They do not assert an occurrence-mark lift, privacy, PAC utility, or any
later rate conclusion.

## Explicit Rate Audit

None. This is a qualitative measurable-space and exact-kernel step. It
introduces no rate, hidden constant, confidence conversion, auxiliary
tolerance, term absorption, probability upgrade, or norm comparison. The
sample-size quantifier is exact over every finite \(N\in\mathbb N_0\), and
the \(N=0\) baseline is proved as a genuine singleton-input kernel rather
than inferred asymptotically.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects:
  \(Q_C,Z_Q,Z_X,H_C,\mathcal H_C,\kappa,T_N,\operatorname{Dec}_C,\bar c_0\),
  the exact pointwise laws, and the two error functionals retain their
  meanings from `setting.md`.
- Accepted dependency objects: The total procedure and zero-dimensional law
  are used only through
  Propositions~\ref{prop:step-001-totalization} and
  \ref{prop:step-001-zero}; the quotient Borel structure, raw record map, and
  measurable risk are used only through
  Propositions~\ref{prop:step-002-borel},
  \ref{prop:step-002-record-map}, and~\ref{prop:step-002-risk}. These are
  derived accepted interfaces, not primitive conditions.
- Public-facing objects defined in this step: \(K_N\) in (18) and its raw
  pullback \(A_N\) in (20). They expose exactly the downstream kernel
  interface and no transcript bookkeeping.
- Appendix-local objects: \(S_N\), \(\mathsf{List}(H_C)\), the
  list-membership relation \(\mathsf M\), the total empirical-error map
  \(\widehat R_N\), and the measurable event graph (17). They certify
  downstream event interfaces but are not new theorem assumptions.
- Proof-local objects: \(\mathsf U_N,\mathfrak P_N,\mathfrak A_N\), each
  realized restriction-token range \(\mathscr R_R\), the transcript
  container \(\mathsf{Tr}_N\), the isolated tokens \(\perp,\dagger\), and
  the transcript kernel \(\Gamma_N\). They are coding devices only.
- Restriction/decomposition provenance: A generated restriction or
  decomposition is coded by its value in the countable range realized from
  countably many quotient inputs and finite structural histories. No
  sigma-field is placed on all of \(2^{H_C}\), no claim that \(\bar C\) is a
  Borel subset of \(H_C\) is needed, and no measurable selector of
  decompositions or raw representatives is introduced. Fixed pointwise
  choices are measurable because their domain is countable discrete.
- List and transcript provenance: Finite lists and every invalid/empty-list
  sanitation rule are supplied by accepted
  Proposition~\ref{prop:step-001-totalization}; their measurability is proved
  in Proposition~\ref{prop:step-003-coding}. Transcript and output laws are
  generated by the fixed finite mechanisms and are promoted to kernels in
  this step.
- Event provenance: \(E_{\mathrm{good}}\), source-validity flags, transcript
  outcomes, fallback status, empirical-error events, and population-error
  events are all generated objects. Their measurable interfaces are proved
  in Proposition~\ref{prop:step-003-events}; none is an assumption or a
  claimed success event.
- Boundary provenance: \(N=0\) uses the accepted exact Dirac law. Empty
  restrictions and invalid lists are sanitized to the empty list; invalid,
  no-success, and mechanism-failure paths return \(\bar c_0\). Duplicate
  records and arbitrary labels remain input atoms. Improper outputs remain
  legitimate elements of the standard-Borel space \(H_C\).
- Constant provenance: No new constant, radius, threshold, rate, margin,
  admissibility parameter, bounded quantity, or finite-tube quantity is
  introduced.
- Assumption provenance: Countability and measurable quotient cells are the
  sole primitive condition used directly. All pointwise procedure,
  quotient-space, record-map, and risk properties are named accepted
  dependency conclusions. All restriction, list, transcript, event, and
  kernel interfaces are proved locally. There are no local conditional
  hypotheses.
- Scope boundary: The occurrence mark belongs to the next proof step. This
  artifact proves neither marked projection nor any privacy, neighbor-use,
  PAC, concentration, or rate claim.
- Global diagnostic boundary: The optional `global_proof.md`
  and `global_proof_review.md` were not read or used.
  No diagnostic statement is evidence, an assumption source, a cited
  result, or authority for the target claim.
