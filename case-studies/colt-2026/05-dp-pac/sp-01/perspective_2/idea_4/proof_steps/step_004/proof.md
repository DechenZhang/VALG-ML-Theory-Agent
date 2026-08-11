# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 2
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof SHA-256:
  `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280`
- Accepted dependency review SHA-256:
  `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`
- Diagnostic planning pair, not proof evidence: `global_proof.md` SHA-256
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
  and accepted `global_proof_review.md` SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`.

## Target Step Claim

- Intended claim: Lift the exact output law to
  \(\widetilde K_C\) with a finite occurrence mark and prove the exact
  projection identity.
- Depends on: `step_003`.
- Assumptions used: Derived quotient kernel and finite occurrence sets.
- Technical challenge: Preserve the output marginal while making
  producer-block analysis measurable.
- Intended proof tool or cited result: Finite marked-kernel construction and
  pointwise finite sums.
- Output target: Marked law and projection.
- Rate objective: None.
- Row-local review status: `PENDING`; the binding
  `proof_sketch_review.md`, rather than this row-local field, is the
  acceptance gate.

The controller-expanded target is the declared positive-dimensional law on
\(H_C\times\{0,1,\ldots,k\}\). It requires pathwise uniform splitting over
the nonempty producer-block occurrence coordinates of every actual
Sparse-Sample output, mark \(0\) on and only on fallback or otherwise
nonactual paths, and exact projection to the same released \(K_C\) law.
The proof must retain the realized partition, repeated candidate
occurrences, the adaptively selected stage, empty lists, one/all/no
occurrence, \(k=2\), failure paths, and the full kernel measurability
obligation. The mark is analysis-only: no selector is added and the
released output is not changed.

Throughout this artifact, (K_C) abbreviates the exact positive-branch
(K_C^{\mathrm{VC\text{-}Lyu}}) kernel at its declared sample size, and
(\widetilde K_C) denotes only its marked lift. No statement here silently
switches to the old-Lyu or finite-class pointwise law.
This step remains inside the formal setting's explicitly conditional
finite-or-countable measurable evaluation-quotient regime. It gives no
kernel theorem for uncountable evaluation quotients and does not solve the
unrestricted DP-PAC open problem.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions used directly: None. The measurable quotient
  condition underlying the accepted dependency is not reopened here.
- Derived invariants and interfaces supplied by the sole accepted
  dependency:
  - Accepted Lemma~\ref{lem:step-003-countable-promotion}, **Countable-atom
    promotion of pointwise coordinates and laws**, supplies that every
    pointwise probability family on the countable-discrete quotient input
    is a Markov kernel.
  - Accepted Proposition~\ref{prop:step-003-coding}, **Measurable coding of
    restrictions, finite lists, and transcripts**, supplies a
    standard-Borel complete transcript space \(\mathsf{Tr}_N\), its Markov
    kernel \(\Gamma_N\), every finite stage/block list coordinate, the
    selected-stage and actual/fallback status coordinates, and the terminal
    \(H_C\)-output coordinate. It includes empty lists, invalid states,
    failure symbols, no-success paths, and fallback.
  - Accepted Proposition~\ref{prop:step-003-events}, **Measurable list,
    event, prediction, and error interfaces**, supplies measurable dynamic
    list membership and measurable actual, invalid, failure, exhausted, and
    fallback transcript-status events.
  - Accepted Proposition~\ref{prop:step-003-quotient-kernel}, **Quotient
    kernel for every totalized pointwise output law**, supplies the exact
    released positive-dimensional VC-Lyu quotient kernel \(K_C\) as the
    terminal-output marginal of \(\Gamma_N\). Universally it promotes every
    supplied totalized pointwise law to a kernel; its Dirac null conclusion
    applies only to the three setting-defined learner-arm laws supplied by
    accepted Proposition~\ref{prop:step-001-zero}, not to an arbitrary
    pointwise law on \(H_C\).
- Accepted dependency artifacts:
  - `perspective_2/idea_4/proof_steps/step_003/proof.md`, SHA-256
    `b55c3326656c172d547fc0e26cc17d5ec006ef35a631e7c98934c6bd078d3280`;
  - `perspective_2/idea_4/proof_steps/step_003/review.md`, SHA-256
    `c39a5a44a4c9e0b6bc33f6ceaa9ce98e5f00c61dc4ee701d301f0f96e8fa51aa`,
    status `ACCEPTED` for sketch attempt 1, dependency unit attempt 3 and
    dependency review attempt 3.
- Local conditional hypotheses: None. In particular, actual output,
  nonempty occurrence, measurability, and projection are conclusions below,
  not assumed success events. No realizability, privacy, utility, good-event,
  or population statement is used.

The setting-defined case split \(d\geq1\), the finite teacher count
\(k\geq2\), and the finite stage set \(\{0,\ldots,d\}\) specify the branch
on which the occurrence mark exists. They are not new assumptions. The
\(d=0\) no-data branch is checked separately at the end and needs no
producer mark.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under accepted Propositions~\ref{prop:step-003-coding}, \ref{prop:step-003-events}, and \ref{prop:step-003-quotient-kernel}, on the declared \(d\geq1\) branch the all-stage producer-block lists, their occurrence indicators, the actual-output event, and the occurrence count are measurable and finite, and every actual-output transcript has between one and \(k\) occurrence coordinates. | Produces the exact finite nonempty pathwise set over which the mark may be sampled, without a selector. |
| `unit_002` | lemma | Under Lemma~\ref{lem:step-004-occurrence}, the uniform occurrence weights on actual paths and the point mass at mark \(0\) on nonactual paths form a measurable probability kernel on \(\{0,\ldots,k\}\); positive marks retain every producer-block occurrence and the weights sum exactly to one. | Defines the analysis-only pathwise mark and handles repeated, one/all/no-occurrence, empty-list, failure, and \(k=2\) cases. |
| `unit_003` | proposition | Under accepted Lemma~\ref{lem:step-003-countable-promotion}, accepted Proposition~\ref{prop:step-003-coding}, and Lemma~\ref{lem:step-004-mark-kernel}, integrating the pathwise mark against the exact transcript kernel defines a Markov kernel \(\widetilde K_C:Z_Q^N\leadsto H_C\times\{0,\ldots,k\}\). | Constructs the marked law and proves both probability-kernel axioms. |
| `unit_004` | proposition | Under accepted Proposition~\ref{prop:step-003-quotient-kernel} and Proposition~\ref{prop:step-004-lift}, the \(H_C\)-projection of \(\widetilde K_C\) is exactly \(K_C\) on every measurable event; hence hiding the mark incurs zero output-law or privacy residual. | Proves the target projection identity and the analysis-only boundary. |

Atomic step = no. Measurable finite occurrence, pathwise marking, integration
into a marked kernel, and exact projection are independent audit
obligations.

## Cited Result Applications

No paper result is used. Only the accepted `step_003` interface and local
finite-measure arguments are used.

### Accepted Lemma~\ref{lem:step-003-countable-promotion}:
Countable-atom promotion

- Restated result: For every \(N\in\mathbb N_0\), every family of
  probability measures on a measurable codomain indexed by
  \(Z_Q^N\) is a Markov kernel, because \(Z_Q^N\) is countable discrete.
  The same conclusion holds after adjoining finite or countable discrete
  state indices. At \(N=0\), this is only a kernel-promotion statement:
  the singleton input does not force the supplied output measure to be
  Dirac.
- Instantiated objects: The pointwise marked measures on
  \(H_C\times\{0,\ldots,k\}\) constructed in
  Proposition~\ref{prop:step-004-lift}.
- Required assumptions and discharge: All quotient-space hypotheses were
  discharged in the accepted dependency. This step uses only the exported
  countable-input conclusion.
- Conclusion used: Once the marked object is proved to be a probability
  measure for every fixed quotient input, every fixed-event mass coordinate
  is measurable in that input.

### Accepted Proposition~\ref{prop:step-003-coding}:
Complete transcript kernel

- Restated result: The exact totalized procedure has a standard-Borel
  complete transcript space \(\mathsf{Tr}_N\) and a Markov kernel
  \(\Gamma_N:Z_Q^N\leadsto\mathsf{Tr}_N\). All fixed stage/block lists are
  measurable \(\mathsf{List}(H_C)\)-valued coordinates; selected-stage,
  mechanism-status, failure, fallback, and terminal-output coordinates are
  measurable. The actual Sparse Sample branch is realized as a finite
  categorical draw from the sanitized lists supplied at its selected stage;
  the failure symbol and every invalid or exhausted branch are separately
  totalized to fallback.
- Instantiated objects: The list coordinates
  \(\lambda_{i,r}\), selected-stage coordinate, actual-output event
  \(\mathsf{Act}\), terminal output \(\bar H\), and transcript kernel
  \(\Gamma_N\) below.
- Required assumptions and discharge: The accepted proof/review pair above
  verifies the complete transcript and all boundary states. No underlying
  dependency of `step_003` is imported separately here.
- Conclusion used: On an actual-output transcript, \(\bar H\) occurs in at
  least one selected-stage input list; all coordinates needed to test this
  statement are present in the same realized transcript.

### Accepted Proposition~\ref{prop:step-003-events}:
Dynamic membership and status measurability

- Restated result: The relation between any generated finite list and an
  \(H_C\)-item is Borel, and actual, invalid, failure, exhausted, and
  fallback transcript statuses are measurable. This remains true for empty
  lists, duplicate list entries, arbitrary labels, and improper outputs.
- Instantiated objects: Membership of \(\bar H(\tau)\) in each all-stage
  producer list and the status split \(\mathsf{Act}\sqcup
  \mathsf{Act}^c\).
- Required assumptions and discharge: Measurability is an accepted derived
  conclusion of `step_003`; no truth of a utility event is assumed.
- Conclusion used: Every occurrence indicator and every mark weight below is
  measurable.

### Accepted Proposition~\ref{prop:step-003-quotient-kernel}:
Exact released marginal

- Restated result: Every totalized pointwise \(H_C\)-valued law on
  \(Z_Q^N\) is a Markov kernel. For the exact totalized
  positive-dimensional VC-Lyu procedure used in this step, that kernel is
  the terminal output marginal of \(\Gamma_N\), denoted
  \(K_C:Z_Q^N\leadsto H_C\). Thus, for every
  \(E\in\mathcal H_C\),
  \[
  K_C(\bar s,E)
  =\int_{\mathsf{Tr}_N}
    \mathbf1_E(\bar H(\tau))\,\Gamma_N(\bar s,d\tau).
  \tag{1}
  \]
  On the inactive \(d=0,N=0\) branch, the proposition identifies a Dirac
  law only when the supplied pointwise law is one of the setting-defined
  learner-arm laws furnished by accepted
  Proposition~\ref{prop:step-001-zero}. For an arbitrary supplied law it
  asserts only the kernel property, and the associated raw pullback obeys
  the universal identity \(A_0=K_0\) without a Dirac conclusion.
- Instantiated objects: The exact \(K_C\), not an arbitrary coupling or a
  new algorithm, and the same positive-dimensional VC-Lyu terminal-output
  coordinate used in the marked lift.
- Required assumptions and discharge: The dependency proof/review is
  accepted at the hashes above and covers every totalized input.
- Conclusion used: Equation (1) is the last equality in the projection
  proof.

The internal application ledger is:

| Result | Exact conclusion used later | Discharge and use |
| --- | --- | --- |
| Lemma~\ref{lem:step-004-occurrence} | Measurable \(I(\tau)\subseteq[k]\), finite count \(R(\tau)\), and \(\mathsf{Act}\subseteq\{R\geq1\}\) | Derived from accepted transcript/list/status interfaces; used by Lemma~\ref{lem:step-004-mark-kernel}. |
| Lemma~\ref{lem:step-004-mark-kernel} | A measurable probability vector \((w_0,\ldots,w_k)\) with the exact actual/fallback support rule | Used by Proposition~\ref{prop:step-004-lift} and Proposition~\ref{prop:step-004-projection}. |
| Proposition~\ref{prop:step-004-lift} | Markov kernel \(\widetilde K_C\) on the exact marked codomain and its finite-section formula | Used by Proposition~\ref{prop:step-004-projection}. |
| Proposition~\ref{prop:step-004-projection} | \(\pi_{H\#}\widetilde K_C=K_C\) exactly | This is the target output and the only downstream-facing conclusion. |

## Local Derivation

### unit_001: lemma

**Lemma (Measurable finite producer-block occurrence set).**
\(\label{lem:step-004-occurrence}\)
Under accepted Propositions~\ref{prop:step-003-coding},
\ref{prop:step-003-events}, and
\ref{prop:step-003-quotient-kernel}, fix the declared branch \(d\geq1\),
its finite teacher count \(k\geq2\), and its sample size \(N=n_0\). There
are measurable transcript coordinates
\[
\lambda_{i,r}:\mathsf{Tr}_N\longrightarrow
\mathsf{List}(H_C),
\qquad i\in[k],\quad r\in\{0,\ldots,d\},
\tag{2}
\]
the terminal output \(\bar H:\mathsf{Tr}_N\to H_C\), and a measurable
actual-output event \(\mathsf{Act}\subseteq\mathsf{Tr}_N\). Define the
all-stage producer list by concatenation,
\[
\lambda_i(\tau)
:=\lambda_{i,0}(\tau)\mathbin{\Vert}\cdots
  \mathbin{\Vert}\lambda_{i,d}(\tau),
\tag{3}
\]
and define
\[
a_i(\tau):=
\mathbf1\{\bar H(\tau)\text{ occurs in }\lambda_i(\tau)\},
\quad
I(\tau):=\{i\in[k]:a_i(\tau)=1\},
\quad
R(\tau):=\sum_{i=1}^k a_i(\tau).
\tag{4}
\]
Then every \(a_i\) and \(R\) is measurable, \(I(\tau)\) is finite for
every transcript, and
\[
\tau\in\mathsf{Act}\quad\Longrightarrow\quad
1\leq R(\tau)=|I(\tau)|\leq k.
\tag{5}
\]
The set \(I(\tau)\) is exactly the setting-defined set of producer-block
coordinates whose all-stage candidate union contains the actual output.

**Proof.** Accepted Proposition~\ref{prop:step-003-coding} supplies every
coordinate in (2), including a sanitized empty list when a stage/block list
is absent or invalid. Concatenation in (3) is Borel. To see this directly,
restrict
\(\mathsf{List}(H_C)^{d+1}\) to a component with length vector
\((\ell_0,\ldots,\ell_d)\). On that component concatenation is merely the
coordinate map
\[
H_C^{\ell_0}\times\cdots\times H_C^{\ell_d}
\longrightarrow H_C^{\ell_0+\cdots+\ell_d}
\]
that preserves the displayed order. It is measurable. Taking the countable
disjoint union over all finite length vectors proves measurability on the
whole list space. This derivation keeps every list position, including
repeated positions; it makes no first-occurrence selection.

Accepted Proposition~\ref{prop:step-003-events} makes dynamic membership of
the measurable terminal output in a measurable finite-list coordinate a
Borel event. Therefore each \(a_i\) is a measurable
\(\{0,1\}\)-valued function. The finite sum \(R\) is measurable with range
\(\{0,1,\ldots,k\}\), and (4) makes \(I(\tau)\) a subset of the finite set
\([k]\).

It remains to prove nonemptiness on actual paths rather than assume it.
By the exact transcript construction exported by accepted
Proposition~\ref{prop:step-003-coding}, a transcript in
\(\mathsf{Act}\) records a selected stage \(r_*(\tau)\) and an actual
Sparse Sample categorical outcome. That categorical outcome is one of the
items in the sanitized tuple
\((\lambda_{1,r_*}(\tau),\ldots,
\lambda_{k,r_*}(\tau))\). Hence some \(i\in[k]\) satisfies
\(\bar H(\tau)\in\lambda_{i,r_*}(\tau)\). The selected-stage list is a
sublist of the concatenation (3), so \(a_i(\tau)=1\), proving the lower
bound in (5). The upper bound follows from \(I(\tau)\subseteq[k]\).

This reasoning is pathwise and retains adaptive selection: the realized
\(r_*\), lists, and output are read from the same transcript. If the output
occurs in several producer blocks, every corresponding block index remains
in \(I(\tau)\). Repetitions across stages or positions inside one block are
also retained in (3), but they intentionally map to that one block mark
\(i\), because the setting's mark records producer blocks rather than list
positions. If all lists are empty, (4) gives \(R=0\), and the contrapositive
of (5) shows that the transcript is nonactual. A failure or fallback output
may happen to equal \(\bar c_0\) appearing in a list; its status remains
nonactual and is handled by mark \(0\) below. \(\square\)

### unit_002: lemma

**Lemma (Uniform pathwise occurrence-mark kernel).**
\(\label{lem:step-004-mark-kernel}\)
Under Lemma~\ref{lem:step-004-occurrence}, put
\(\mathsf M_k:=\{0,1,\ldots,k\}\) with its power-set sigma-field and define,
with the convention that the second line is zero off \(\mathsf{Act}\),
\[
w_0(\tau):=\mathbf1_{\mathsf{Act}^c}(\tau),
\qquad
w_i(\tau):=
\mathbf1_{\mathsf{Act}}(\tau)
\frac{a_i(\tau)}{R(\tau)},\qquad i\in[k].
\tag{6}
\]
Then
\[
W(\tau,B):=\sum_{i\in B}w_i(\tau),
\qquad B\subseteq\mathsf M_k,
\tag{7}
\]
is a Markov kernel
\(W:\mathsf{Tr}_N\leadsto\mathsf M_k\). On an actual path it is uniform
on \(I(\tau)\), assigns no mass to \(0\), and retains every distinct
producer-block occurrence. On every fallback or otherwise nonactual path it
is \(\delta_0\), even when the terminal fallback value also occurs in a
candidate list.

**Proof.** Lemma~\ref{lem:step-004-occurrence} makes
\(\mathsf{Act}\), every \(a_i\), and \(R\) measurable, and (5) guarantees
that division in (6) is only performed when \(R\in\{1,\ldots,k\}\).
Equivalently, define the displayed quotient to be zero at \(R=0\); this is
a measurable finite-valued function. Thus every \(w_i\) is measurable.

If \(\tau\notin\mathsf{Act}\), then \(w_0=1\) and all positive weights are
zero. If \(\tau\in\mathsf{Act}\), then \(w_0=0\), and
\[
\sum_{i=1}^k w_i(\tau)
=\frac{\sum_{i=1}^k a_i(\tau)}{R(\tau)}=1.
\tag{8}
\]
Hence the weights are nonnegative and sum to one on every path. For fixed
\(\tau\), (7) is consequently a probability measure on the finite space
\(\mathsf M_k\); for fixed \(B\), it is a finite sum of measurable
functions. These are the two kernel axioms.

When \(I(\tau)=\{i\}\), (6) assigns mass one to \(i\). When
\(I(\tau)=[k]\), it assigns mass \(1/k\) to every producer. In particular,
at the boundary \(k=2\), the only actual-path denominators are \(1\) and
\(2\). If there is no occurrence, Lemma~\ref{lem:step-004-occurrence}
rules out an actual path, so (7) assigns mark \(0\). Empty-list, invalid,
no-success, and Sparse Sample failure paths are all nonactual and obey the
same rule. No representative producer is selected; the kernel splits mass
over all producer coordinates. \(\square\)

### unit_003: proposition

**Proposition (Marked lift of the exact quotient output law).**
\(\label{prop:step-004-lift}\)
Under accepted Lemma~\ref{lem:step-003-countable-promotion}, accepted
Proposition~\ref{prop:step-003-coding}, and
Lemma~\ref{lem:step-004-mark-kernel}, for every
\(\bar s\in Z_Q^N\) and every
\(B\in\mathcal H_C\otimes2^{\mathsf M_k}\), let
\[
B_i:=\{\bar h\in H_C:(\bar h,i)\in B\},
\qquad i\in\mathsf M_k,
\tag{9}
\]
and define
\[
\widetilde K_C(\bar s,B)
:=\sum_{i=0}^k
\int_{\mathsf{Tr}_N}
\mathbf1_{B_i}(\bar H(\tau))w_i(\tau)
\,\Gamma_N(\bar s,d\tau).
\tag{10}
\]
Then
\[
\widetilde K_C:
(Z_Q^N,2^{Z_Q^N})
\leadsto
(H_C\times\mathsf M_k,
 \mathcal H_C\otimes2^{\mathsf M_k})
\tag{11}
\]
is a Markov kernel. It is the pathwise lift of the exact output law, not a
new released mechanism.

**Proof.** Since \(\mathsf M_k\) is finite and discrete, every
\(B\in\mathcal H_C\otimes2^{\mathsf M_k}\) decomposes uniquely as
\[
B=\bigcup_{i=0}^k B_i\times\{i\},
\tag{12}
\]
with each \(B_i\in\mathcal H_C\). The terminal map \(\bar H\) and every
\(w_i\) are measurable, so each integrand in (10) is bounded and
measurable.

Fix \(\bar s\). Nonnegativity is immediate. Equation (8) gives
\[
\widetilde K_C(\bar s,H_C\times\mathsf M_k)
=\int\sum_{i=0}^k w_i(\tau)\,
  \Gamma_N(\bar s,d\tau)=1.
\tag{13}
\]
If \((B^{(n)})_{n\geq1}\) are pairwise disjoint marked events, their
sections \((B_i^{(n)})_{n\geq1}\) are pairwise disjoint for every fixed
\(i\). Applying monotone convergence inside each of the finitely many
nonnegative integrals gives
\[
\widetilde K_C\!\left(\bar s,\bigcup_{n\geq1}B^{(n)}\right)
=\sum_{n\geq1}\widetilde K_C(\bar s,B^{(n)}).
\tag{14}
\]
Thus \(B\mapsto\widetilde K_C(\bar s,B)\) is a probability measure.

For fixed \(B\), (10) assigns one real number in \([0,1]\) to every
\(\bar s\in Z_Q^N\). Accepted
Lemma~\ref{lem:step-003-countable-promotion} makes this coordinate
measurable on the countable-discrete quotient input. Together with the
fixed-input probability property, this proves both Markov-kernel axioms in
(11). In particular, for every \(E\in\mathcal H_C\),
\[
\widetilde K_C(\bar s,E\times\{i\})
=\int\mathbf1_E(\bar H(\tau))w_i(\tau)
\,\Gamma_N(\bar s,d\tau).
\tag{15}
\]
Formula (10) first marks each full internal path and only then integrates it
out. Therefore two paths with the same terminal \(\bar h\) but different
partitions, selected stages, repeated occurrences, or occurrence sets keep
their own weights; no conditional law given only \(\bar h\) and no global
selector is introduced. \(\square\)

### unit_004: proposition

**Proposition (Exact released projection and zero privacy residual).**
\(\label{prop:step-004-projection}\)
Under accepted Proposition~\ref{prop:step-003-quotient-kernel} and
Proposition~\ref{prop:step-004-lift}, let
\(\pi_H:H_C\times\mathsf M_k\to H_C\) be the first-coordinate projection.
Then, for every quotient input \(\bar s\) and every
\(E\in\mathcal H_C\),
\[
(\pi_{H\#}\widetilde K_C)(\bar s,E)
=\sum_{i=0}^k
  \widetilde K_C(\bar s,E\times\{i\})
=K_C(\bar s,E).
\tag{16}
\]
Consequently the analysis-only mark changes neither the released output law
nor any privacy parameter of that released law. No privacy assertion is made
for the unreleased pair \((\bar H,J)\).

**Proof.** Sum (15) over the finite mark space and apply (8):
\[
\begin{aligned}
\sum_{i=0}^k
\widetilde K_C(\bar s,E\times\{i\})
&=\int
\mathbf1_E(\bar H(\tau))
\left(\sum_{i=0}^k w_i(\tau)\right)
\Gamma_N(\bar s,d\tau)\\
&=\int\mathbf1_E(\bar H(\tau))
\Gamma_N(\bar s,d\tau)\\
&=K_C(\bar s,E),
\end{aligned}
\tag{17}
\]
where the last equality is the exact terminal-marginal identity (1). This
proves (16), with no approximation, exceptional event, or residual mass.

For completeness, for any two quotient inputs \(\bar s,\bar s'\), any
\(\varepsilon,\delta\geq0\), and any released event \(E\), (16) gives the
identity
\[
\begin{aligned}
&(\pi_{H\#}\widetilde K_C)(\bar s,E)
-e^\varepsilon(\pi_{H\#}\widetilde K_C)(\bar s',E)-\delta\\
&\hspace{35mm}=
K_C(\bar s,E)-e^\varepsilon K_C(\bar s',E)-\delta.
\end{aligned}
\tag{18}
\]
Thus every future privacy inequality for the actually released kernel is
literally unchanged: the mark consumes zero privacy slack. Equation (18)
does not claim that privacy has already been proved, and it does not claim
privacy if \(J\) were released.

The same zero-residual statement holds on the raw interface by direct
substitution: for every raw input \(s\in Z_X^N\),
\[
\sum_{i=0}^k
\widetilde K_C(T_N(s),E\times\{i\})
=K_C(T_N(s),E).
\tag{19}
\]
Thus a later DP comparison on raw neighboring inputs sees exactly the same
two released-event probabilities before and after this analysis-only lift;
no marked raw kernel or additional privacy theorem is being asserted here.

The status split is essential. On an actual path, \(w_0=0\), including when
there is exactly one occurrence, all \(k\) occurrences, or \(k=2\). On a
nonactual path, \(w_0=1\), including when the fallback value \(\bar c_0\)
coincides with an item in one or more lists. Hence mark \(0\) is used only
for fallback/nonactual paths, and no fallback mass leaks into a positive
producer mark. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-003-coding} supplies the exact
standard-Borel transcript kernel, every stage/block list, the adaptive
selected-stage status, the actual/fallback split, and the terminal output.
Accepted Proposition~\ref{prop:step-003-events} supplies measurable dynamic
membership and status events. Lemma~\ref{lem:step-004-occurrence} combines
those accepted interfaces into the exact pathwise occurrence set from the
setting and proves, rather than assumes, that every actual output has a
nonempty finite set of producer coordinates.

Lemma~\ref{lem:step-004-mark-kernel} gives the unique required support rule:
uniform mass on all positive occurrence coordinates for an actual path and
unit mass at \(0\) for every nonactual path. It explicitly covers repeated
occurrences, adaptively selected stages, empty lists, one/all/no occurrence,
failure/fallback, and \(k=2\), without choosing one producer.
Proposition~\ref{prop:step-004-lift} integrates those pathwise weights
against the accepted transcript kernel and verifies countable additivity,
unit mass, and input-event measurability on the exact codomain
\(H_C\times\{0,\ldots,k\}\).

Finally, accepted Proposition~\ref{prop:step-003-quotient-kernel} identifies
the unmarked terminal marginal with the exact released \(K_C\), and
Proposition~\ref{prop:step-004-projection} proves the finite-sum identity
\[
\sum_{i=0}^k
\widetilde K_C(\bar s,E\times\{i\})=K_C(\bar s,E)
\]
for every input and every measurable released event. The same proposition
shows that the unreleased mark introduces exactly zero output-law and
privacy residual. These named results prove the exact sketch-row claim and
do not add a selector, alter the algorithm, or release the mark.

The setting defines \(k\) and the occurrence analysis only on \(d\geq1\).
On the \(d=0,N=0\) branch, the accepted dependency gives the exact Dirac
release at \(\bar c_0\) for this setting-defined VC-Lyu learner arm, through
the arm-specific null-law premise furnished by accepted
Proposition~\ref{prop:step-001-zero}; no such conclusion is asserted for an
arbitrary pointwise law. The canonical inactive convention
\(\mathsf M_0=\{0\}\) and
\(\widetilde K_C(\varnothing,E\times\{0\})=K_C(\varnothing,E)\) satisfies
the same projection identity. It activates no positive-dimensional list,
stage, or teacher coordinate and preserves the no-data baseline.

## Explicit Rate Audit

None. This step is qualitative and exact. It introduces no rate, hidden
constant, confidence conversion, auxiliary tolerance, term absorption,
probability upgrade, horizon upgrade, or norm comparison. The only finite
parameter appearing is the setting-defined teacher count \(k\); every sum
and occurrence set has its exact finite range. The baseline-reduction check
is exact: projecting away the mark returns \(K_C\) with zero residual, and
the inactive \(d=0\) convention returns the same arm-specific no-data Dirac
law. For an arbitrary empty-input pointwise law, the only universal raw
statement remains \(A_0=K_0\).

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined objects: \(H_C,\mathcal H_C,K_C,k,d,\bar c_0\), the
  stage/block lists, and the setting-defined occurrence convention retain
  their meanings. The finite mark space \(\mathsf M_k=\{0,\ldots,k\}\) is
  merely a short name for the setting's marked coordinate.
- Accepted dependency objects: \(\mathsf{Tr}_N,\Gamma_N,\bar H\), the
  finite-list coordinates, and the transcript-status coordinates are used
  only through the accepted `step_003` results restated above. They are
  derived interfaces, not primitive or local conditional assumptions.
- Appendix-local exported object: \(\widetilde K_C\) and its exact
  projection (16). This is the minimal interface consumed by later finite
  reconstruction. It is analysis-only and should not appear as a released
  theorem output.
- Proof-local objects: \(\lambda_{i,r},\lambda_i,a_i,I,R,\mathsf{Act}\),
  \(w_i,W\), and the measurable sections \(B_i\). They expose the complete
  construction for review but are not theorem assumptions or released
  quantities.
- Repetition convention: Concatenation (3) keeps duplicate list positions
  and all stages. Distinct producer-block coordinates at which the same
  output occurs remain distinct marks. Multiple positions within the same
  producer block map to the same mark \(i\), exactly as required by the
  setting-defined set \(I=\{i:\bar h\in\mathcal G_i\}\). A position- or
  stage-valued selector would change the target codomain and is not added.
- Adaptive-stage provenance: The selected stage and the selected-stage list
  tuple are coordinates of the accepted complete transcript. The mark is
  assigned after that path is realized, before integrating over it; no
  independence or conditioning on the released output is asserted.
- Boundary provenance: Empty and invalid lists are accepted sanitized
  coordinates. Actual output implies nonempty occurrence by
  Lemma~\ref{lem:step-004-occurrence}; no occurrence therefore routes to
  mark \(0\). Failure-symbol, no-success, invalid, and fallback paths also
  route to \(0\). The actual/fallback flag, rather than equality with
  \(\bar c_0\), prevents accidental positive marking of fallback mass.
- Null-law boundary: Arbitrary pointwise laws are promoted to kernels, and
  their empty-input raw pullbacks universally satisfy \(A_0=K_0\). The
  stronger identity \(K_0=A_0=\delta_{\bar c_0}\) is available only for the
  three setting-defined learner-arm laws through the arm-specific Step 001
  premise. This step's inactive convention invokes only the VC-Lyu arm and
  does not turn the arm-specific premise into a generic Dirac claim.
- Constant provenance: No new constant, threshold, radius, rate, margin,
  admissibility parameter, or bounded quantity is introduced. The integer
  \(k\) and finite stage horizon are defined by the setting. The occurrence
  count \(R\in\{0,\ldots,k\}\) is proved finite in
  Lemma~\ref{lem:step-004-occurrence}.
- Assumption provenance: No primitive assumption is consumed independently
  and there are no local conditional hypotheses. Transcript, lists, status,
  and released kernel are supplied by the accepted dependency. Occurrence,
  the mark kernel, the marked law, and projection are proved in this step.
- Privacy boundary: Only the first coordinate is released. Equation (18)
  proves equality of every prospective released-output DP residual. The
  marked pair itself is neither released nor claimed private.
- Global diagnostic boundary: The paired diagnostic review is `ACCEPTED`,
  but neither diagnostic artifact was needed or used for this dependency
  refresh. Every formula and kernel claim above is independently derived
  from the accepted `step_003` interface; neither diagnostic artifact is
  proof evidence, a cited result, an assumption source, or authority to
  alter the target claim.
