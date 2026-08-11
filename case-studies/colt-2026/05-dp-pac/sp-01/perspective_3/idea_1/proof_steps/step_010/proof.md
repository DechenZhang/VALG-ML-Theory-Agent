# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_010
- Unit attempt: 1

## Target Step Claim

- Intended claim: Construct the executable one-block simulator: pre-draw tags, abort input-independently on overflow, otherwise use each input row at most once, sample nonhidden rows, call A, and restrict to J.
- Depends on: step_004, step_005, step_007, step_009.
- Assumptions used: assump:central-dp is not yet consumed; derived prior/budget outputs.
- Technical challenge: Unknown hidden \(t,Q\), total output size \(n\), and arbitrary adjacent input datasets.
- Intended proof tool or cited result: Direct randomized preprocessing.
- Output target: Simulator with one-use invariant.
- Rate objective: R1: exact fixed sizes \(M,n\).
- Row-local review status in the accepted sketch: PENDING (the acceptance gate is the separate accepted sketch review).

Write

\[
  M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\},
\]

and introduce only the following type aliases:

\[
\begin{aligned}
  \mathsf Z_M&:=([N]\times\{0,1\})^M,\\
  \mathsf S_n&:=(X_{k,N}\times\{0,1\})^n,\\
  \mathsf G_N&:=\{0,1\}^{[N]}.
\end{aligned}
\tag{1}
\]

Under Assumption~\ref{assump:candidate-regime} and the local contradiction
hypothesis

\[
  n<a k\log_2^*N,
\tag{2}
\]

accepted Proposition~\ref{prop:step-005-certificate} places this exact
\(M\) in the hard regime, and accepted
Proposition~\ref{prop:step-004-finite-hard-prior} supplies the finite public
law

\[
  \mu_{N,M}\quad\text{on}\quad [N+1]\times\Delta([N]).
\tag{3}
\]

For every randomized map

\[
  A:\mathsf S_n\longrightarrow\mathcal H_{k,N},
\tag{4}
\]

the target is to define one randomized kernel

\[
  B_{\mu_{N,M},A}:\mathsf Z_M\longrightarrow\mathsf G_N
\tag{5}
\]

with the following exact operational interface.

1. Before evaluating any coordinate of its input, it draws the selector,
   all \(n\) tags, all nonhidden prior instances, and every random feature
   used in a nonhidden row.
2. From the selector and tags alone it computes the hidden-tag count \(U\).
   If \(U>M\), it returns the fixed all-zero one-block hypothesis without
   evaluating any input coordinate and without invoking \(A\).
3. If \(U\le M\), the \(\ell\)-th input record is placed, with tag \(J\), at
   exactly the \(\ell\)-th occurrence of tag \(J\), for
   \(\ell=1,\ldots,U\). Every nonhidden row is sampled independently from
   its already drawn nonhidden instance. The resulting ordered dataset has
   exactly \(n\) labeled product rows.
4. On the nonoverflow branch, the simulator calls \(A\) once on that
   size-\(n\) dataset and outputs the accepted restriction \(D_Jh\).

The construction must be defined on every member of \(\mathsf Z_M\),
including inputs with corrupt or nonrealizable labels. It must not know,
receive, estimate, or query the hidden pair \((t,Q)\) whose labeled law may
later generate its input. This step proves only executability, totality,
typing, fixed sizes, and the one-use invariant. It does not assert
differential privacy or any actual-to-ideal risk relation.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic-setting ranges \(k\ge2\), \(N\ge2\), and \(n\ge1\), the
    setting-defined exact integer \(M=m_{n,k}\), the tagged domain
    \(X_{k,N}=[k]\times[N]\), and the full output spaces in (1).
  - Assumption~\ref{assump:candidate-regime}, used only through the accepted
    hard-regime certificate that makes the public prior (3) available at
    the same \(N,M\).
  - The candidate \(A\) is the arbitrary randomized map in (4), defined on
    every labeled size-\(n\) product dataset. No properness, symmetry, or
    realizability condition is placed on its input or output.
- Accepted dependency step proof/review artifacts:
  - step_004 proof, sketch attempt 1 and unit attempt 1, SHA-256
    \(49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba\);
    matching accepted review SHA-256
    \(4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999\).
    Its consumed interface is
    Proposition~\ref{prop:step-004-finite-hard-prior}.
  - step_005 proof, sketch attempt 1 and unit attempt 1, SHA-256
    \(4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a\);
    matching accepted review SHA-256
    \(f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b\).
    Its consumed interface is
    Proposition~\ref{prop:step-005-certificate}.
  - step_007 proof, sketch attempt 1 and unit attempt 1, SHA-256
    \(5c5a792c80a7692ca1369c17bada22c23a07256df0cdfdaf577c4b9d616566ec\);
    matching accepted review SHA-256
    \(02b3819e190d38b9446e008bf15e8448d5d80c1f2a9a5880e560c71c25bd387e\).
    Its consumed interface is
    Lemma~\ref{lem:step-007-restriction-legality}.
  - step_009 proof, sketch attempt 1 and unit attempt 1, SHA-256
    \(4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c\);
    matching accepted review SHA-256
    \(13e26d0cbc021c8cd3859bb17bda4d8048a1ac07c27cc3f35ffa81305144874b\).
    Its consumed interface is
    Proposition~\ref{prop:step-009-overflow}, including its exact
    selector/tag/count convention.
- Derived objects and controls supplied by accepted dependencies:
  - Proposition~\ref{prop:step-005-certificate}, under (2), gives
    \(N\ge N_*\) and \(8\le M<b_*\log_2^*N\) at the exact setting-defined
    budget.
  - Proposition~\ref{prop:step-004-finite-hard-prior} then gives the one
    finite law \(\mu_{N,M}\), fixed publicly before the simulator is
    defined. Only its availability and finite support are used here; its
    strict risk inequality is not used in this construction step.
  - Lemma~\ref{lem:step-007-restriction-legality} gives the total map
    \(D_j:\mathcal H_{k,N}\to\mathsf G_N\) for every \(j\in[k]\).
  - Proposition~\ref{prop:step-009-overflow} gives the exact convention
    \(J\sim\operatorname{Unif}[k]\),
    \(I_1,\ldots,I_n\stackrel{\mathrm{iid}}{\sim}\operatorname{Unif}[k]\),
    independent of \(J\), and
    \(U=\sum_{r=1}^n\mathbf1\{I_r=J\}\). Its tail bound is inherited but is
    not used to prove a risk statement in this step.
- Derived invariants supplied by accepted dependencies: None. In
  particular, input-to-product adjacency, simulator privacy, and
  actual-to-ideal equality are not dependency assumptions.
- Local conditional hypotheses:
  - Equation (2) is the contradiction hypothesis already localized by
    accepted step_005. It is used only to instantiate (3), not as a
    theorem-facing assumption.
- Conditions explicitly not consumed:
  - Assumption~\ref{assump:central-dp} is not used. No privacy conclusion is
    made here.
  - Assumption~\ref{assump:distribution-free-realizable-pac} is not used.
  - No condition says that an input \(z\in\mathsf Z_M\) is realizable,
    iid, generated by (3), or consistent with any threshold.

Under the Assumption Provenance Contract, the candidate ranges and (2) are
pre-run scalar conditions; the prior, restriction, and tag/count objects are
accepted derived outputs; and the preprocessing seed, row map, access
pattern, and simulator kernel are proved locally below.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | **Input-independent public preprocessing** (lem:step-010-public-preprocessing). Under Assumption~\ref{assump:candidate-regime}, (2), and accepted Propositions~\ref{prop:step-004-finite-hard-prior}, \ref{prop:step-005-certificate}, and \ref{prop:step-009-overflow}, there is a completely specified preprocessing seed, sampled before any input access, that contains \(J\), the tags, independent nonhidden prior instances, and conditionally independent nonhidden row features and labels; its law depends only on public objects and not on an input or hidden \((t,Q)\). | Fixes the exact generative order, kernels, independence, and public/hidden information boundary. |
| unit_002 | proposition | **Exact hidden-blind size-\(n\) row construction** (prop:step-010-row-construction). Under Lemma~\ref{lem:step-010-public-preprocessing}, for every fixed preprocessing seed and every arbitrary \(z\in\mathsf Z_M\), the overflow decision is made before input access; on \(U\le M\), the displayed row rule produces exactly one valid member of \(X_{k,N}\times\{0,1\}\) at each of the \(n\) ordered positions, using the \(\ell\)-th input row at the \(\ell\)-th hidden-tag occurrence and using the pre-drawn row at every nonhidden occurrence, without knowledge of hidden \((t,Q)\). | Proves total row-level executability and exact fixed output size on arbitrary labeled inputs. |
| unit_003 | invariant | **Ordered one-use input incidence** (inv:step-010-one-use). Under Proposition~\ref{prop:step-010-row-construction}, for every preprocessing seed and every arbitrary input, overflow has an empty input-access set, while nonoverflow has distinct hidden positions \(r_1<\cdots<r_U\) with input row \(\ell\) entering only row \(r_\ell\); rows \(\ell>U\) are unused and all other product rows are input-independent. | Exports the exact pathwise one-use invariant needed by later audits, without asserting privacy. |
| unit_004 | proposition | **Total executable improper one-block simulator** (prop:step-010-simulator). Under Lemma~\ref{lem:step-010-public-preprocessing}, Proposition~\ref{prop:step-010-row-construction}, Invariant~\ref{inv:step-010-one-use}, and accepted Lemma~\ref{lem:step-007-restriction-legality}, the stated algorithm defines a total kernel \(B_{\mu_{N,M},A}:\mathsf Z_M\to\mathsf G_N\): it returns a fixed all-zero hypothesis without reading the input or calling \(A\) on overflow, and otherwise calls arbitrary randomized \(A\) once on exactly \(n\) rows and returns \(D_JA(\cdot)\). It remains total for \(U=0\), corrupt labels, unused trailing rows, endpoint nonhidden targets, and arbitrary improper or tag-asymmetric \(A\). | Composes the generative construction, one-use invariant, early abort, and restriction into the exact target-step output. |

Atomic step = no. The preprocessing kernel, row-level totalization, one-use
incidence statement, and randomized-kernel/output typing are logically
separate obligations.

## Cited Result Applications

### Accepted dependency: hard-regime and exact-budget certificate

- Source or name: Accepted
  Proposition~\ref{prop:step-005-certificate}.
- Restated statement in current notation: With the fixed universal
  calibration of accepted step_005, under
  Assumption~\ref{assump:candidate-regime} and (2), the exact
  \(M=\max\{8,\lceil4n/k\rceil\}\) satisfies
  \[
    N\ge N_*,\qquad 8\le M<b_*\log_2^*N.
  \]
  The accepted proposition also preserves the candidate privacy
  conjunction, although that part is not consumed here.
- Instantiated objects: The present fixed \(k,N,n\) and exact integer \(M\)
  in (1).
- Required assumptions and discharge:
  Assumption~\ref{assump:candidate-regime} is primitive and (2) is the
  explicit local conditional hypothesis.
- Conclusion used: The same \(N,M\) meet the admissibility conditions of
  accepted Proposition~\ref{prop:step-004-finite-hard-prior}. No privacy
  property of \(A\) or of the simulator is inferred from this scalar
  certificate.

### Accepted dependency: finite public hard prior

- Source or name: Accepted
  Proposition~\ref{prop:step-004-finite-hard-prior}.
- Restated statement in current notation: At every admissible \(N,M\),
  there exists a finite probability law \(\mu_{N,M}\) on
  \([N+1]\times\Delta([N])\), selected before and uniformly over every
  source-private one-block kernel.
- Instantiated objects: The exact \(N,M\) certified above and the law in
  (3).
- Required assumptions and discharge: The scalar hard-regime conditions are
  supplied by accepted Proposition~\ref{prop:step-005-certificate}.
- Conclusion used: The simulator may have the full finite support and
  weights of \(\mu_{N,M}\) hardwired publicly and may draw independent
  nonhidden pairs from it. The prior's expected-risk inequality is not used
  or reproved in this step.
- Non-output boundary: The dependency does not supply tags, row
  preprocessing, a simulator, an input-access rule, a privacy certificate,
  or a coupling.

### Accepted dependency: arbitrary-output restriction

- Source or name: Accepted
  Lemma~\ref{lem:step-007-restriction-legality}.
- Restated statement in current notation: For every
  \(h\in\mathcal H_{k,N}\) and every \(j\in[k]\), the function
  \[
    (D_jh)(x)=h(j,x),\qquad x\in[N],
  \]
  is a legal member of the full improper one-block space \(\mathsf G_N\).
- Instantiated objects: The realized selector \(J\) and the arbitrary
  randomized output \(H\) of \(A\) on the synthesized dataset.
- Required assumptions and discharge: \(J\in[k]\) by construction and
  \(H\in\mathcal H_{k,N}\) by the codomain of (4).
- Conclusion used: \(D_JH\) has the exact output type in (5), with no proper
  projection, monotonicity, or tag-symmetry premise.
- Non-output boundary: The accepted exact risk identity from step_007 is
  not needed here; no risk is evaluated.

### Accepted dependency: selector, tags, count, and overflow event

- Source or name: Accepted
  Proposition~\ref{prop:step-009-overflow}.
- Restated statement in current notation: Draw
  \(J\sim\operatorname{Unif}[k]\), then draw exactly \(n\) mutually
  independent tags \(I_1,\ldots,I_n\), each uniform on \([k]\) and
  independent of \(J\), and put
  \[
    U=\sum_{r=1}^n\mathbf1\{I_r=J\}.
  \]
  Then \(U\sim\operatorname{Bin}(n,1/k)\) and, for the exact budget \(M\),
  \(\Pr(U>M)<2^{-9}\). For \(k=2,3\), overflow is impossible.
- Instantiated objects: The first two components of the preprocessing seed
  and the branch variable \(U\).
- Required assumptions and discharge: \(k\ge2,n\ge1\) and the exact budget
  formula are primitive setting data.
- Conclusion used: The simulator uses exactly this input-independent
  selector/tag kernel and the exact integer event \(U>M\). The tail
  probability is recorded as an inherited downstream interface, not used
  here to compare risks.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-010-public-preprocessing} | All selector, tag, nonhidden-instance, and nonhidden-row randomness is sampled in a stated input-independent order before any record access. | Public finite prior and accepted selector/tag kernel. | Supplies a fixed preprocessing seed for the row construction and early branch. |
| Proposition~\ref{prop:step-010-row-construction} | On nonoverflow, every one of the \(n\) ordered rows is valid and is either a raw hidden input row lifted to tag \(J\) or an independent nonhidden row from its public realized instance. | The preceding preprocessing lemma and \(U\le M\). | Supplies the exact size-\(n\) argument passed to \(A\). |
| Invariant~\ref{inv:step-010-one-use} | Every used input coordinate has one distinct image row; trailing coordinates have none; overflow has no input access. | The occurrence-count row rule. | Supplies the one-use portion of the target and the later adjacency-audit interface. |
| Proposition~\ref{prop:step-010-simulator} | The early-abort/call/restrict procedure is a total kernel \(\mathsf Z_M\to\mathsf G_N\) for every arbitrary randomized \(A\). | The three local results and accepted restriction legality. | Exact target-step export. |

No external paper theorem, concentration theorem, privacy theorem, or
diagnostic artifact is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Input-independent public preprocessing).**
\(\label{lem:step-010-public-preprocessing}\)
Under Assumption~\ref{assump:candidate-regime}, the local hypothesis (2),
accepted Propositions~\ref{prop:step-004-finite-hard-prior},
\ref{prop:step-005-certificate}, and
\ref{prop:step-009-overflow}, the following ordered procedure defines a
preprocessing seed \(\Omega_{\mathrm{pre}}\) before any input coordinate is
evaluated:

1. draw \(J\sim\operatorname{Unif}[k]\);
2. draw \(I_1,\ldots,I_n\) independently and uniformly from \([k]\),
   independently of \(J\);
3. conditional on \(J\), independently draw
   \[
     \Theta_i=(T_i,Q_i)\sim\mu_{N,M},
     \qquad i\in[k]\setminus\{J\};
   \]
4. conditional on \(J,I_{1:n},(\Theta_i)_{i\ne J}\), independently draw
   \[
     X_r^\circ\sim Q_{I_r}
     \quad\text{for every }r\in[n]\text{ with }I_r\ne J,
   \]
   and set
   \[
     Y_r^\circ:=\tau_{T_{I_r}}(X_r^\circ).
   \]

The seed consists of precisely these realized objects. Its distribution
depends only on the public tuple
\((k,N,n,M,\mu_{N,M})\), is independent of every
\(z\in\mathsf Z_M\), and contains neither a hidden instance
\((t,Q)\), a block-instance draw \(\Theta_J\), nor a synthetic feature or
label at a position whose tag equals \(J\). Conditional on the realized
selector, tags, and nonhidden instances, the nonhidden labeled
rows

\[
  \left((I_r,X_r^\circ),Y_r^\circ\right),
  \qquad r:I_r\ne J,
\tag{6}
\]

are mutually independent, and each row with tag \(i\ne J\) has labeled law
\(Q_i^{\tau_{T_i}}\) after its tag is suppressed.

**Proof / justification.**
Accepted Proposition~\ref{prop:step-005-certificate} discharges the exact
\(N,M\) conditions for accepted
Proposition~\ref{prop:step-004-finite-hard-prior}, so the finite public law
\(\mu_{N,M}\) exists before the present simulator is defined. The first two
draws use the selector/tag product kernel certified by accepted
Proposition~\ref{prop:step-009-overflow}. Once \(J=j\) is fixed, the finite
product law

\[
  \bigotimes_{i\in[k]\setminus\{j\}}\mu_{N,M}
\]

defines all nonhidden instances. Each realized \(Q_i\) is a probability
distribution on the finite set \([N]\), so the further finite conditional
product

\[
  \bigotimes_{\substack{r\in[n]\\ I_r\ne J}}Q_{I_r}
\tag{7}
\]

defines the nonhidden feature draws. For any fixed values
\((x_r)_{r:I_r\ne J}\), (7) gives the exact conditional mass

\[
  \prod_{\substack{r\in[n]\\ I_r\ne J}}Q_{I_r}(x_r),
\tag{8}
\]

which proves conditional mutual independence and the stated marginal
kernels. Applying the deterministic threshold label
\(\tau_{T_{I_r}}\) gives exactly the labeled law in the lemma.

All four randomization stages are completed without referring to an input
argument. In particular, the sampling code knows the public distribution
\(\mu_{N,M}\) and its own realized nonhidden pairs
\((T_i,Q_i)\), but it neither draws nor receives \((T_J,Q_J)\).
A later hidden pair \((t,Q)\) is therefore not an input to this procedure.
Endpoint draws \(T_i=1\) and \(T_i=N+1\) are executable: their deterministic
labels are respectively all one and all zero. Point-mass \(Q_i\)'s are also
valid factors in (7).

The internal randomness used by \(A\) is intentionally not a component of
\(\Omega_{\mathrm{pre}}\). It remains the fresh internal randomization of
the one call to the kernel \(A\), if that call is reached. Thus every
random choice belonging to preprocessing is fixed before input access,
without converting randomized \(A\) into a deterministic map.
\(\square\)

### unit_002: proposition

**Proposition (Exact hidden-blind size-\(n\) row construction).**
\(\label{prop:step-010-row-construction}\)
Under Lemma~\ref{lem:step-010-public-preprocessing}, fix any realization
\(\omega\) of \(\Omega_{\mathrm{pre}}\) and any arbitrary labeled input

\[
  z=(z_1,\ldots,z_M)\in\mathsf Z_M,
  \qquad z_\ell=(x_\ell,y_\ell).
\tag{9}
\]

Define, using only the selector and tags in \(\omega\),

\[
  L_r:=\sum_{s=1}^r\mathbf1\{I_s=J\},
  \qquad
  U:=L_n.
\tag{10}
\]

The value of \(U\) is computed before any \(z_\ell\) is evaluated. If
\(U>M\), the row-construction procedure stops immediately and evaluates no
input coordinate. If \(U\le M\), it defines an ordered size-\(n\) labeled
product dataset

\[
  \mathcal P_\omega(z)
  =(\widetilde z_1,\ldots,\widetilde z_n)\in\mathsf S_n
\tag{11}
\]

by the exact rule

\[
  \widetilde z_r=
  \begin{cases}
    ((J,x_{L_r}),y_{L_r}), & I_r=J,\\[2mm]
    ((I_r,X_r^\circ),Y_r^\circ), & I_r\ne J.
  \end{cases}
\tag{12}
\]

Thus, on nonoverflow, the \(\ell\)-th input row is used exactly at the
\(\ell\)-th hidden-tag occurrence for every \(\ell\in[U]\), every
nonhidden row is the pre-drawn row (6), and the rule requires no knowledge
of a hidden \(t\) or \(Q\). It is valid for every binary label pattern in
(9), including patterns inconsistent with every threshold.

**Proof / justification.**
The seed is drawn before the input is accessed by
Lemma~\ref{lem:step-010-public-preprocessing}. Both \(L_r\) and \(U\) are
functions only of the already drawn \(J,I_1,\ldots,I_n\). Consequently the
comparison \(U>M\) can be resolved before evaluating any coordinate of
(9). On overflow, the procedure takes no later row-construction action, so
it never attempts to access a nonexistent \((M+1)\)-st record.

Suppose \(U\le M\). For each position \(r\) with \(I_r=J\), (10) gives

\[
  1\le L_r\le U\le M.
\tag{13}
\]

Hence \(z_{L_r}\) is an available input record. Since
\(x_{L_r}\in[N]\), \(J\in[k]\), and \(y_{L_r}\in\{0,1\}\), the first line
of (12) lies in \(X_{k,N}\times\{0,1\}\), regardless of whether
\(y_{L_r}=\tau_t(x_{L_r})\) for any \(t\).

For each position with \(I_r\ne J\), the seed already contains
\(X_r^\circ\in[N]\) and
\(Y_r^\circ=\tau_{T_{I_r}}(X_r^\circ)\in\{0,1\}\), so the second line of
(12) has the same required type. There is one and only one applicable line
of (12) for every \(r\in[n]\). Thus (11) has exactly \(n\) ordered labeled
rows and belongs to the full domain \(\mathsf S_n\) of \(A\).

If \(r\) is the \(\ell\)-th occurrence of tag \(J\), then by definition
\(L_r=\ell\), so the first line of (12) uses \(z_\ell\), including its raw
label. This is why no hidden threshold \(t\) is needed. The feature
distribution \(Q\) of a later hidden input law is likewise unnecessary:
the procedure takes hidden features directly from the input records.
Nonhidden features and labels use only the simulator's publicly drawn
instances, whose exact conditional kernels were proved in
Lemma~\ref{lem:step-010-public-preprocessing}.
\(\square\)

### unit_003: invariant

**Invariant (Ordered one-use input incidence).**
\(\label{inv:step-010-one-use}\)
Under Proposition~\ref{prop:step-010-row-construction}, for every fixed
preprocessing seed \(\omega\) and every arbitrary input
\(z\in\mathsf Z_M\), the following statements hold pathwise.

- If \(U>M\), no coordinate of \(z\) is evaluated.
- If \(U\le M\), let
  \[
    r_\ell:=\min\left\{r\in[n]:
      \sum_{s=1}^r\mathbf1\{I_s=J\}=\ell\right\},
    \qquad \ell=1,\ldots,U.
  \tag{14}
  \]
  Then
  \[
    1\le r_1<\cdots<r_U\le n,
    \qquad
    \widetilde z_{r_\ell}=((J,x_\ell),y_\ell).
  \tag{15}
  \]
  No row of \(\mathcal P_\omega(z)\) other than row \(r_\ell\) depends on
  input coordinate \(z_\ell\); coordinates \(z_{U+1},\ldots,z_M\) are not
  evaluated at all.

In particular, each input record has at most one image row. If \(U=0\), the
input-access set is empty and all \(n\) rows are nonhidden pre-drawn rows.
If \(U=M\), every input record has exactly one image row. The statement is
about row incidence only and makes no differential-privacy claim.

**Proof / justification.**
On overflow, the first bullet is part of the control flow proved in
Proposition~\ref{prop:step-010-row-construction}. Now fix \(U\le M\). The
running count \(L_r\) in (10) starts at zero, is nondecreasing, and
increases by exactly one precisely at the positions with \(I_r=J\).
Because its terminal value is \(U\), it hits each integer
\(\ell=1,\ldots,U\) at a unique first position \(r_\ell\), and those
positions are strictly increasing. At \(r_\ell\), one has
\(I_{r_\ell}=J\) and \(L_{r_\ell}=\ell\), so the first line of (12) gives
the identity in (15).

At a hidden position \(r\), the only input coordinate named by (12) is
\(z_{L_r}\). The map from hidden positions to positive running counts is
the bijection \(r_\ell\mapsto\ell\). At a nonhidden position, the second
line of (12) is already fixed by \(\omega\) and names no input coordinate.
Therefore \(z_\ell\), for \(\ell\le U\), occurs in exactly row \(r_\ell\),
and every \(\ell>U\) occurs in no row. This proves the one-use incidence
claim for arbitrary features and labels, without any realizability premise.
\(\square\)

### unit_004: proposition

**Proposition (Total executable improper one-block simulator).**
\(\label{prop:step-010-simulator}\)
Under Assumption~\ref{assump:candidate-regime}, the local hypothesis (2),
accepted Propositions~\ref{prop:step-004-finite-hard-prior},
\ref{prop:step-005-certificate}, and
\ref{prop:step-009-overflow}, accepted
Lemma~\ref{lem:step-007-restriction-legality}, and
Lemma~\ref{lem:step-010-public-preprocessing},
Proposition~\ref{prop:step-010-row-construction}, and
Invariant~\ref{inv:step-010-one-use}, the following algorithm defines a
total randomized kernel
\[
  B_{\mu_{N,M},A}:\mathsf Z_M\longrightarrow\mathsf G_N
\]
for every arbitrary randomized \(A\) in (4).

On input \(z\in\mathsf Z_M\):

1. sample the complete seed \(\Omega_{\mathrm{pre}}\) in the order stated
   by Lemma~\ref{lem:step-010-public-preprocessing};
2. compute \(U\) from \(J,I_1,\ldots,I_n\), without evaluating \(z\);
3. if \(U>M\), return the fixed hypothesis
   \[
     g_0(x):=0\quad(x\in[N])
   \tag{16}
   \]
   immediately, without evaluating any coordinate of \(z\) and without
   invoking \(A\);
4. if \(U\le M\), construct the exact
   \(\mathcal P_{\Omega_{\mathrm{pre}}}(z)\in\mathsf S_n\) from (12), draw
   \[
     H\sim A(\mathcal P_{\Omega_{\mathrm{pre}}}(z))
   \]
   using \(A\)'s own fresh internal randomness, and return \(D_JH\).

This simulator has exact input size \(M\), makes at most one call to \(A\)
and only with exact input size \(n\), uses each input row at most once, and
is defined on every arbitrary size-\(M\) labeled input. It does not know a
hidden \(t,Q\), does not require \(A\) to be proper or tag-symmetric, and
does not infer privacy or an ideal-law coupling.

**Proof / justification.**
The seed law is a valid input-independent probability kernel by
Lemma~\ref{lem:step-010-public-preprocessing}. On the overflow branch,
\(g_0\) is a fixed member of \(\mathsf G_N\); the control flow reaches (16)
before any input dereference or call to \(A\). Thus this branch is total and
input-independent even when the supplied input has arbitrary corrupt
labels.

On the nonoverflow branch,
Proposition~\ref{prop:step-010-row-construction} proves that the argument of
\(A\) is a valid member of its complete domain \(\mathsf S_n\) and has
exactly \(n\) rows. Therefore the randomized map \(A\) returns some
\(H\in\mathcal H_{k,N}\). Since \(J\in[k]\), accepted
Lemma~\ref{lem:step-007-restriction-legality} gives
\(D_JH\in\mathsf G_N\), regardless of whether \(H\) is a threshold,
monotone, proper, symmetric, deterministic, or tag-asymmetric.

Equivalently, if \(E\subseteq\mathsf G_N\) and
\(A(s,h)\) denotes the output probability assigned by \(A\) to
\(h\in\mathcal H_{k,N}\) on \(s\in\mathsf S_n\), then the simulator kernel
is the well-defined finite expectation

\[
B_{\mu_{N,M},A}(z,E)
=
\mathbb E_{\Omega_{\mathrm{pre}}}
\left[
\begin{cases}
  \mathbf1\{g_0\in E\}, & U>M,\\[1mm]
  \displaystyle
  \sum_{h\in\mathcal H_{k,N}}
    A(\mathcal P_{\Omega_{\mathrm{pre}}}(z),h)
    \mathbf1\{D_Jh\in E\}, & U\le M.
\end{cases}
\right].
\tag{17}
\]

Every term is nonnegative, the expression equals one when
\(E=\mathsf G_N\), and it is additive over disjoint events. Because all
input and output spaces are finite, (17) is a total randomized kernel on
every \(z\in\mathsf Z_M\). Formula (17) is a mathematical description of
the procedural branches; on \(U>M\) it contains no evaluation of
\(\mathcal P_\omega(z)\) and no \(A\)-term.

Invariant~\ref{inv:step-010-one-use} proves the exact access pattern. In
particular:

- at \(U=0\), no input row is read, all \(n\) rows come from the realized
  nonhidden instances, and \(A\) is called once on that size-\(n\) dataset;
- at \(1\le U\le M\), precisely the first \(U\) input rows are read once
  each, in their original order, and all trailing rows are ignored;
- at \(U=M\), all \(M\) rows are used once if that event is possible;
- at \(U>M\), no row is read and \(A\) is not called.

The same clauses apply to endpoint labels, point-mass nonhidden
distributions, and arbitrary nonrealizable input labels. For \(k=2,3\),
accepted Proposition~\ref{prop:step-009-overflow} says the overflow branch
has probability zero, but the branch remains defined. No step of this proof
uses Assumption~\ref{assump:central-dp}, compares two input datasets,
identifies an ideal sample law, or evaluates population risk. Those are
separate downstream obligations.
\(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-005-certificate} keeps the exact
setting-defined \(M\) and, under the localized contradiction hypothesis,
places the same \(N,M\) inside the interface of accepted
Proposition~\ref{prop:step-004-finite-hard-prior}. The latter supplies the
finite public \(\mu_{N,M}\) before the simulator is defined. Accepted
Proposition~\ref{prop:step-009-overflow} supplies the exact selector, tag,
count, and overflow convention, while accepted
Lemma~\ref{lem:step-007-restriction-legality} supplies the final improper
output type.

Lemma~\ref{lem:step-010-public-preprocessing} uses those accepted objects to
draw every preprocessing random variable before input access and proves the
conditional product kernel for all nonhidden rows.
Proposition~\ref{prop:step-010-row-construction} then gives the exact
hidden-blind row rule: the \(\ell\)-th input record goes to the \(\ell\)-th
hidden-tag occurrence, every other row is pre-drawn, every row is well
typed, and the resulting dataset has exactly \(n\) rows.
Invariant~\ref{inv:step-010-one-use} proves pathwise that each input
coordinate has at most one image, that unused trailing rows are never read,
and that both \(U=0\) and overflow have empty access sets.

Finally, Proposition~\ref{prop:step-010-simulator} installs the fixed
all-zero early return, the sole call to arbitrary randomized \(A\), and the
accepted restriction \(D_J\), and proves that the resulting object is a
total kernel
\(\mathsf Z_M\to\mathsf G_N\) on every arbitrary labeled input.
These named results prove exactly the accepted step_010 row: executable
preprocessing, early input-independent abort, exact fixed sizes, arbitrary
improper output, and the one-use invariant. They do not claim the
differential-privacy certificate assigned to step_012 or the ideal-risk
coupling assigned to step_011.

## Explicit Rate Audit

- Exposed variables: The exact integers \(k,N,n\), the exact deterministic
  budget
  \(M=m_{n,k}=\max\{8,\lceil4n/k\rceil\}\), the finite prior
  \(\mu_{N,M}\), and the usage count \(U\). The surrounding candidate
  variables \(\varepsilon,\delta\) remain fixed but do not enter the
  construction or any conclusion of this step.
- Hidden constants may depend on: None. This construction introduces no
  hidden constant.
- Hidden constants may not depend on: \(k,N,n,M,\varepsilon,\delta\), the
  input, a hidden \(t,Q\), the learner \(A\), or any random seed.
- Fixed quantities: \(k,N,n,M\), the public law \(\mu_{N,M}\), and the
  arbitrary kernel \(A\) are fixed before \(B_{\mu_{N,M},A}\) receives an
  input. A hidden \((t,Q)\), if later used to generate an input
  distribution, is not fixed as simulator code or supplied to it.
- Probability mode: The construction is a randomized kernel over
  \(\Omega_{\mathrm{pre}}\) and, on nonoverflow, \(A\)'s internal
  randomness. The one-use statement is pathwise for every preprocessing
  seed and every arbitrary input. The accepted
  \(\Pr(U>M)<2^{-9}\) certificate is inherited but no risk or probability
  conversion is performed here.
- Horizon mode: Exact fixed input size \(M\) and exact fixed synthesized
  size \(n\). There is no expected sample size, stopping time, adaptive
  number of input records, asymptotic limit, or repeated use.
- Norm mode: None. This step evaluates no empirical, population, or excess
  risk and proves no metric comparison.
- Admissibility conditions and auxiliary tolerances: The primitive
  candidate regime and localized (2) are used only to instantiate the
  accepted prior at the same \(N,M\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The row counts and
  occurrence indices are exact identities.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies the
  exact fixed-size \(M\)-input/\(n\)-row simulator interface and no rate
  simplification. The accepted overflow probability remains available for
  step_011 and step_013.
- Baseline-reduction check:
  - \(U=0\) gives exact input-free nonhidden preprocessing followed by one
    legal call to \(A\).
  - \(1\le U\le M\) uses exactly the first \(U\) input rows once each.
  - \(U=M\) uses every input row once.
  - \(U>M\) returns the exact fixed all-zero output before any input read or
    \(A\)-call.
  - For \(k=2,3\), the accepted zero-overflow baseline is retained.
  No conservative extra row, random sample size, proper decoder, or
  conditional realizability restriction replaces these exact cases.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing:
  - \(B_{\mu_{N,M},A}\) and
    Proposition~\ref{prop:step-010-simulator} are the minimal generated
    simulator interface.
  - The fixed \(g_0\) in (16) is the public default output.
  - Invariant~\ref{inv:step-010-one-use} is the public downstream
    one-use interface; its internal occurrence notation need not be
    exported.
  - The accepted objects \(M,\mu_{N,M},J,I_{1:n},U\), and \(D_J\) retain
    their existing public-facing classifications.
- Appendix-local:
  - The type aliases \(\mathsf Z_M,\mathsf S_n,\mathsf G_N\), the complete
    preprocessing seed \(\Omega_{\mathrm{pre}}\), the nonhidden draws
    \(\Theta_i=(T_i,Q_i)\), the rows
    \(((I_r,X_r^\circ),Y_r^\circ)\), and the deterministic nonoverflow row
    map \(\mathcal P_\omega\) expose the construction for review and later
    proof translation.
- Proof-local:
  - The running counts \(L_r\), occurrence positions \(r_\ell\), dummy input
    coordinates \((x_\ell,y_\ell)\), event \(E\), and kernel coordinate
    \(A(s,h)\) are used only to prove the row and total-kernel statements.
- Constant and bounded-quantity provenance:
  - The constants \(4\) and \(8\) in \(M\) are primitive setting
    quantities. No new constant, radius, margin, or tolerance is
    introduced.
  - The all-zero function \(g_0\) is defined explicitly in (16), not chosen
    by a boundedness or existence assertion.
  - The finite support of \(\mu_{N,M}\) is supplied by accepted
    Proposition~\ref{prop:step-004-finite-hard-prior}.
- Assumption provenance:
  - Assumption~\ref{assump:candidate-regime} and (2) only discharge the
    accepted prior's scalar availability conditions.
  - The prior, selector/tags, overflow event, and restriction are accepted
    derived objects.
  - The preprocessing seed and its independence, the exact row map, the
    no-read control flow, the one-use incidence property, and the total
    simulator kernel are proved by named local results in this step.
  - No generated realizability, event membership, stability, boundedness,
    recurrence, or privacy condition is assumed.
- Public-information boundary:
  - The simulator knows \(k,N,n,M\), the public support and weights of
    \(\mu_{N,M}\), the code/kernel of \(A\), the realized selector and
    nonhidden pairs that it draws, and the threshold formula for labeling
    those nonhidden pairs.
  - It does not know or receive the hidden pair \((t,Q)\). Its only access
    to hidden data is through the raw feature and raw binary label of each
    input row actually read on nonoverflow.
- Data-access boundary:
  - Input access occurs only after the seed is complete and after
    \(U\le M\) has been decided.
  - Corrupt labels are passed through unchanged at hidden positions.
    Unused trailing rows are never evaluated. Overflow causes no input
    evaluation, and \(U=0\) causes no input evaluation while still
    producing exactly \(n\) valid rows for \(A\).
- Randomness boundary:
  - \(\Omega_{\mathrm{pre}}\) contains all preprocessing randomness and is
    independent of the input.
  - \(A\)'s internal coins are sampled only within the one nonoverflow call
    to \(A\); they are not frozen as part of preprocessing.
- Claim boundary:
  - This artifact proves no adjacency implication, no
    \((\varepsilon,\delta)\)-DP property, no source-cap membership for the
    simulator, no ideal sample law, no output coupling, and no risk
    inequality. The row-incidence invariant is exported so that those
    separate downstream steps can establish their own claims.
- Diagnostic boundary: Neither global_proof.md nor
  global_proof_review.md was read or used. No diagnostic statement is proof
  evidence, a cited result, an assumption source, or authority to change
  the target claim.
