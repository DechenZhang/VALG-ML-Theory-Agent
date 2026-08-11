# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Binding setting SHA-256: `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch SHA-256: `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch-review SHA-256: `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`
- Accepted dependency `step_005`: proof SHA-256 `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`; review SHA-256 `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b`.
- Accepted dependency `step_010`: proof SHA-256 `1a25d7e164cfb41995429a54cc28fcf947fa3dd7678993963ef6d022558f5315`; review SHA-256 `9cf294cfaf63ba7f73a4d4f2c47b70e2e5eb1bbb6a11f3dc9225dc2fc6828576`.
- Optional diagnostic pair used only for planning: `global_proof.md` SHA-256 `08f3f4cf7b314f3d177b097cf025d714d8fc1ba83c71afb8142b3679ce59ec75`; accepted `global_proof_review.md` SHA-256 `2425ca6599893234e1f010b8253338eaf3a4723fb44ccfcbc8a0600250cacd40`.

## Target Step Claim

- Intended claim: Prove pathwise that replacing one one-block input row changes at most one global row, then derive exact \((\varepsilon,\delta)\)-DP for the simulator and source-cap membership with no composition loss.
- Depends on: `step_005`, `step_010`.
- Assumptions used: `assump:central-dp`, `assump:candidate-regime`.
- Technical challenge: Randomized preprocessing, overflow branch, arbitrary labels, and random postprocessing.
- Intended proof tool or cited result: One-Lipschitz adjacency coupling, DP postprocessing, common mixtures.
- Output target: Exact simulator DP certificate.
- Rate objective: R1, exact \(\varepsilon,\delta\) with no hidden \(k/n\) factor.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance gate is the separate accepted sketch review).

Write

\[
  M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\},
\]

and use the accepted type aliases

\[
  \mathsf Z_M=([N]\times\{0,1\})^M,
  \qquad
  \mathsf S_n=(X_{k,N}\times\{0,1\})^n,
  \qquad
  \mathsf G_N=\{0,1\}^{[N]}.
\tag{1}
\]

Under the local contradiction hypothesis

\[
  n<a k\log_2^*N,
\tag{2}
\]

accepted Proposition~\ref{prop:step-005-certificate} supplies the exact
source calibration, and accepted
Proposition~\ref{prop:step-010-simulator} supplies the total kernel

\[
  B_{\mu_{N,M},A}:\mathsf Z_M\longrightarrow\mathsf G_N.
\tag{3}
\]

The exact certificate proved here is that, for all arbitrary labeled
neighbors \(z\simeq z'\) in \(\mathsf Z_M\) and all
\(E\subseteq\mathsf G_N\),

\[
  B_{\mu_{N,M},A}(z,E)
  \le e^\varepsilon B_{\mu_{N,M},A}(z',E)+\delta.
\tag{4}
\]

No realizability premise is imposed on \(z,z'\).  Moreover, if

\[
  \Delta_M:=\frac{d_*}{M^2\log M},
\tag{5}
\]

then the same total kernel has the exact source-cap interface

\[
  B_{\mu_{N,M},A}(z,E)
  \le e^{0.1}B_{\mu_{N,M},A}(z',E)+\Delta_M
\tag{6}
\]

on the exact size-\(M\) one-block input space and full improper output
space.  Thus it belongs to the source-cap learner set defined explicitly
below.  Equations (4)--(6) contain one privacy charge, not a composition,
group-privacy, overflow, \(k\), or \(n\) multiplier.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:candidate-regime}, with the constants fixed by accepted `step_005`, supplies the pre-run scalar ranges for \(k,N,n,\varepsilon,\delta\) and the exact definition of \(M\).
  - Assumption~\ref{assump:central-dp}: for all arbitrary labeled \(s\simeq s'\) in \(\mathsf S_n\) and every \(F\subseteq\mathcal H_{k,N}\),
    \[
      \Pr_A[A(s)\in F]
      \le e^\varepsilon\Pr_A[A(s')\in F]+\delta.
    \tag{7}
    \]
    The probabilities in (7) are over the internal coins of the arbitrary randomized map \(A\), and (7) applies whether or not \(s,s'\) are realizable.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_005/proof.md`, sketch attempt 1 and unit attempt 1, with the proof and accepted-review hashes recorded in `Step Identity`.  Its consumed interface is Proposition~\ref{prop:step-005-certificate}.
  - `proof_steps/step_010/proof.md`, sketch attempt 1 and unit attempt 1, with the proof and accepted-review hashes recorded in `Step Identity`.  Its consumed interfaces are Lemma~\ref{lem:step-010-public-preprocessing}, Proposition~\ref{prop:step-010-row-construction}, Invariant~\ref{inv:step-010-one-use}, and Proposition~\ref{prop:step-010-simulator}.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_010` supplies an input-independent preprocessing seed \(\Omega_{\mathrm{pre}}\), its selector \(J\), tags \(I_{1:n}\), hidden count \(U\), the nonoverflow deterministic map \(\mathcal P_\omega:\mathsf Z_M\to\mathsf S_n\), the pathwise one-use incidence invariant, the fixed overflow output \(g_0\), and totality of (3) on every arbitrary labeled input.
  - Accepted `step_005`, under (2), supplies
    \[
      N\ge N_*,\qquad M\in\mathbb Z_{\ge8},\qquad
      M<b_*\log_2^*N,
    \tag{8}
    \]
    and
    \[
      0<\varepsilon\le0.1,
      \qquad
      0<\delta<\Delta_M,
    \tag{9}
    \]
    while preserving both primitive candidate-\(\delta\) conjuncts.
- Local conditional hypotheses:
  - Equation (2) is the contradiction hypothesis inherited through accepted `step_005` and `step_010`.  It is used only to obtain the exact source parameters and simulator already constructed in those dependencies; it is not promoted to a theorem-facing assumption.
  - Fixing a preprocessing seed, an adjacent input pair, a differing row index, or an output event is proof-local universal instantiation, not a generated-object hypothesis.
- Conditions explicitly not assumed:
  - No input realizability, iid input law, hidden threshold, hidden distribution, product-sample law, properness, tag symmetry, or deterministic behavior of \(A\) is assumed.
  - No adjacency-preservation or simulator-privacy statement is imported from a diagnostic artifact or assumed from the name of the simulator.  Both are derived below.

No proof-step dependency other than accepted `step_005` and accepted
`step_010` is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | **Deterministic one-row preprocessing map** (`lem:step-012-one-row-map`). Under accepted `step_010`, for every fixed input-independent preprocessing seed and every arbitrary one-block neighboring pair, overflow reads neither input, while off overflow the two synthesized global datasets are equal or differ by replacement in exactly one row. | Proves the pathwise adjacency map and exhausts overflow, \(U=0\), unused, used, nonhidden, feature-and-label, and nonrealizable cases. |
| `unit_002` | proposition | **Fixed-seed privacy kernel with learner coins retained** (`prop:step-012-fixed-seed-kernel`). Under Assumption~\ref{assump:central-dp} and Lemma~\ref{lem:step-012-one-row-map}, the fixed-seed global-output kernel is exactly \((\varepsilon,\delta)\)-DP; overflow is a constant kernel and nonoverflow invokes (7) once, with \(A\)'s coins still random. | Turns the pathwise row map into one seedwise DP inequality without composition or group privacy. |
| `unit_003` | lemma | **Common input-independent mixture and restriction preserve one charge** (`lem:step-012-postprocess-mixture`). Under Proposition~\ref{prop:step-012-fixed-seed-kernel} and the accepted input-independent seed law, first mixing into a joint seed/global-output kernel and then restricting by \((\omega,h)\mapsto D_{J(\omega)}h\) produce (4), with \(\sum_\omega\nu(\omega)\delta=\delta\). | Proves common-mixture integration followed by postprocessing at event level and identifies the resulting law with the total simulator. |
| `unit_004` | proposition | **Exact source-cap membership** (`prop:step-012-source-membership`). Under Assumptions~\ref{assump:candidate-regime} and \ref{assump:central-dp}, (2), accepted Propositions~\ref{prop:step-005-certificate} and \ref{prop:step-010-simulator}, and Lemma~\ref{lem:step-012-postprocess-mixture}, the simulator is a total exact-size source learner and belongs to the explicitly defined source-cap set at \((0.1,\Delta_M)\). | Checks typing, totality, scalar admissibility, event-level privacy, and hard-regime eligibility instead of inferring membership from privacy notation alone. |

Atomic step = no.  Deterministic adjacency preservation, the DP call over
the still-random learner, restriction/common mixing, and exact source-set
eligibility are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: hard-regime and exact source-parameter certificate

- Source or name: Accepted Proposition~\ref{prop:step-005-certificate} from `step_005`.
- Restated statement in current notation: Under Assumption~\ref{assump:candidate-regime} and (2), the exact setting-defined \(M\) and the present \(N,\varepsilon,\delta\) satisfy (8)--(9).  In particular, \(M\) is the exact integer input size required by the one-block source interface, \(\varepsilon\le0.1\), and \(\delta<d_*/(M^2\log M)\).
- Instantiated objects: The same \(N,M,\varepsilon,\delta\) used by the simulator in (3).
- Required assumptions and discharge: Assumption~\ref{assump:candidate-regime} is primitive; (2) is the declared local contradiction hypothesis.
- Conclusion used: The source-cap number \(\Delta_M\) is positive and finite, the exact sample and domain parameters are source-admissible, and parameter monotonicity from \((\varepsilon,\delta)\) to \((0.1,\Delta_M)\) is available.
- Non-output boundary: The dependency does not prove privacy or totality of the generated simulator; those conclusions come from the present local units and accepted `step_010`, respectively.

### Accepted dependency: total one-use simulator

- Source or name: Accepted Lemma~\ref{lem:step-010-public-preprocessing}, Proposition~\ref{prop:step-010-row-construction}, Invariant~\ref{inv:step-010-one-use}, and Proposition~\ref{prop:step-010-simulator} from `step_010`.
- Restated statement in current notation: The input-independent preprocessing seed is sampled before input access and excludes \(A\)'s internal coins.  For a fixed seed \(\omega\), \(U=U(\omega)\) depends only on \(J,I_{1:n}\).  On \(U>M\), the simulator reads no input, does not call \(A\), and returns \(g_0\).  On \(U\le M\), it builds \(\mathcal P_\omega(z)\in\mathsf S_n\) so that input row \(\ell\le U\) appears only at the \(\ell\)-th hidden-tag position \(r_\ell\), rows \(\ell>U\) are unused, every nonhidden row is fixed by \(\omega\), and it returns \(D_JA(\mathcal P_\omega(z))\).  This defines the total kernel (3) for all \(z\in\mathsf Z_M\).
- Instantiated objects: The same simulator (3), preprocessing seed \(\omega\), row map \(\mathcal P_\omega\), and fixed all-zero output \(g_0\) used below.
- Required assumptions and discharge: Assumption~\ref{assump:candidate-regime} and (2) are exactly the conditions of the accepted dependency; no input-law condition is required.
- Conclusion used: Input independence of the common seed, exact totality, the exhaustive branch behavior, and pathwise one-use incidence.
- Non-output boundary: Accepted `step_010` expressly proves no adjacency implication, DP inequality, or source-cap membership.  None is attributed to it here.

### Primitive assumption: central replacement privacy of the product learner

- Source or name: Assumption~\ref{assump:central-dp}.
- Restated statement in current notation: Equation (7) holds for every event in the full improper output space and every arbitrary labeled replacement-neighboring pair in \(\mathsf S_n\).
- Instantiated objects: On a nonoverflow seed, \(s=\mathcal P_\omega(z)\), \(s'=\mathcal P_\omega(z')\), and an arbitrary global-output event \(F\subseteq\mathcal H_{k,N}\).
- Assumption discharge: Lemma~\ref{lem:step-012-one-row-map} proves that \(s=s'\) or \(s\simeq s'\).  Both datasets have exact size \(n\) by accepted `step_010`.
- Conclusion used: A single inequality (7), over the unfixed internal coins of \(A\), for each nonoverflow fixed preprocessing seed.
- Non-output boundary: The assumption says nothing directly about the one-block input, the randomized preprocessing, the overflow branch, the restriction, or the common seed mixture.  Those bridges are proved locally.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Use |
| ------ | -------------------- | -------------------- | --- |
| Lemma~\ref{lem:step-012-one-row-map} | Every fixed seed maps arbitrary one-block neighbors to equal or one-replacement global datasets off overflow, and overflow accesses neither input. | Accepted one-use row formula and input-independent branch variable from `step_010`. | Supplies the exact adjacency premise for the sole application of (7). |
| Proposition~\ref{prop:step-012-fixed-seed-kernel} | Keeping \(A\)'s coins random, every fixed preprocessing seed defines an \((\varepsilon,\delta)\)-DP global-output kernel. | Lemma~\ref{lem:step-012-one-row-map} and Assumption~\ref{assump:central-dp}. | Supplies an event-level inequality before restriction and mixing. |
| Lemma~\ref{lem:step-012-postprocess-mixture} | The common input-independent seed mixture, followed by restriction of the resulting joint seed/global-output kernel, gives exactly (4), with one \(\delta\). | Fixed-seed proposition and accepted seed independence. | Proves exact simulator privacy. |
| Proposition~\ref{prop:step-012-source-membership} | The total simulator satisfies every defining type, parameter, and event inequality of the exact source-cap set. | Accepted `step_005`, accepted `step_010`, and the preceding mixture lemma. | Exact target-step export. |

No external paper theorem is invoked in this step.  Postprocessing, common
mixtures, and parameter monotonicity are proved directly through event
preimages, finite sums, and displayed inequalities below.

## Local Derivation

### unit_001: lemma

**Lemma (Deterministic one-row preprocessing map).**
\(\label{lem:step-012-one-row-map}\)
Under Assumption~\ref{assump:candidate-regime}, the local hypothesis (2),
and accepted Proposition~\ref{prop:step-010-row-construction} and
Invariant~\ref{inv:step-010-one-use}, fix any realization \(\omega\) of
the input-independent preprocessing seed and any arbitrary
\(z,z'\in\mathsf Z_M\) with \(z\simeq z'\).  Then exactly one of the
following holds.

1. If \(U(\omega)>M\), the preprocessing control flow evaluates no
   coordinate of either input, so its output branch is identical on
   \(z,z'\).
2. If \(U(\omega)\le M\), the two exact size-\(n\) datasets
   \(\mathcal P_\omega(z)\) and \(\mathcal P_\omega(z')\) are equal or
   replacement-adjacent.  More precisely, if the inputs differ only at
   row \(q\), then they are equal when \(q>U\), while for \(q\le U\)
   they can differ only at the single global row \(r_q\), the \(q\)-th
   hidden-tag occurrence.

This assertion includes \(U=0\), a changed unused record, a changed used
record, simultaneous replacement of the record's feature and label, and
arbitrary possibly nonrealizable label patterns.  All nonhidden global
rows and all hidden rows other than \(r_q\) coincide.  In particular, the
map never produces group-adjacent datasets.

**Proof / justification.**
Accepted `step_010` gives

\[
  U=\sum_{r=1}^n\mathbf1\{I_r=J\},
\tag{10}
\]

as a function only of \(J,I_{1:n}\), all of which belong to \(\omega\).
Hence the same value of \(U\), and therefore the same overflow branch, is
used on \(z\) and \(z'\).  When \(U>M\), accepted
Proposition~\ref{prop:step-010-row-construction} stops before either input
is read.  This proves the first branch pathwise, not only in distribution.

Suppose \(U\le M\).  Accepted `step_010` gives distinct hidden positions

\[
  1\le r_1<\cdots<r_U\le n
\tag{11}
\]

depending only on \(\omega\), and its exact row rule gives, for
\(z_\ell=(x_\ell,y_\ell)\),

\[
  \bigl(\mathcal P_\omega(z)\bigr)_{r_\ell}
  =((J,x_\ell),y_\ell),
  \qquad \ell=1,\ldots,U.
\tag{12}
\]

Every other position is a nonhidden row already fixed by \(\omega\).
The same formulas, with primes, hold for \(z'\), with exactly the same
positions \(r_\ell\) and exactly the same nonhidden rows.

If \(z=z'\), the synthesized datasets are equal.  Otherwise adjacency in
\(\mathsf Z_M\) supplies one index \(q\in[M]\) such that
\(z_\ell=z'_\ell\) for every \(\ell\ne q\).  If \(q>U\), accepted
Invariant~\ref{inv:step-010-one-use} says row \(q\) is unused, and (12)
shows equality of every used hidden row; all nonhidden rows also coincide.
Thus

\[
  \mathcal P_\omega(z)=\mathcal P_\omega(z').
\tag{13}
\]

If \(q\le U\), then for every hidden row \(r_\ell\) with \(\ell\ne q\),
the equality \(z_\ell=z'_\ell\) and (12) give equal rows.  At the sole
remaining hidden position,

\[
  \bigl(\mathcal P_\omega(z)\bigr)_{r_q}=((J,x_q),y_q),
  \qquad
  \bigl(\mathcal P_\omega(z')\bigr)_{r_q}=((J,x'_q),y'_q).
\tag{14}
\]

Equation (14) is one replacement even if both \(x_q\ne x'_q\) and
\(y_q\ne y'_q\).  It is still a legal replacement when either raw label
is inconsistent with every threshold because both labels remain elements
of \(\{0,1\}\), and Assumption~\ref{assump:central-dp} is stated on all
labeled datasets.  Every nonhidden row is a component of the fixed seed,
so no nonhidden row changes.  Thus the synthesized datasets differ in at
most the one row \(r_q\), proving replacement adjacency and excluding any
group-adjacency charge.

Finally, if \(U=0\), there are no positions in (11), every synthesized
row is nonhidden and seed-fixed, and (13) holds for every pair of inputs.
This also proves the requested null case. \(\square\)

### unit_002: proposition

**Proposition (Fixed-seed privacy kernel with learner coins retained).**
\(\label{prop:step-012-fixed-seed-kernel}\)
Under Assumptions~\ref{assump:candidate-regime} and
\ref{assump:central-dp}, the local hypothesis (2), accepted
Proposition~\ref{prop:step-010-simulator}, and
Lemma~\ref{lem:step-012-one-row-map}, fix a preprocessing seed \(\omega\)
but do not fix the internal coins of \(A\).  Define the all-zero global
hypothesis

\[
  h_0(i,x):=0
  \qquad ((i,x)\in X_{k,N}),
\tag{15}
\]

and the global-output kernel \(K_\omega:\mathsf Z_M\to\mathcal H_{k,N}\)
by

\[
  K_\omega(z,F)=
  \begin{cases}
    \mathbf1\{h_0\in F\}, & U(\omega)>M,\\[1mm]
    \Pr_A\!\left[A(\mathcal P_\omega(z))\in F\right],
      & U(\omega)\le M,
  \end{cases}
\tag{16}
\]

for every \(F\subseteq\mathcal H_{k,N}\).  Then, for all arbitrary
\(z\simeq z'\) in \(\mathsf Z_M\),

\[
  K_\omega(z,F)
  \le e^\varepsilon K_\omega(z',F)+\delta
  \qquad(F\subseteq\mathcal H_{k,N}).
\tag{17}
\]

On overflow the two output laws coincide exactly.  On nonoverflow, (17)
uses Assumption~\ref{assump:central-dp} at most once.  The statement holds
for arbitrary randomized \(A\); its internal coins are precisely the
randomness under \(\Pr_A\) in (16), not part of the fixed seed.

**Proof / justification.**
The function \(h_0\) belongs to the full output space
\(\mathcal H_{k,N}\), and \(D_Jh_0=g_0\) for every \(J\).  Thus the first
line of (16) is an analytical global-output lift of the simulator's actual
fixed overflow output; it does not call \(A\).

If \(U(\omega)>M\), the seed fixes the same branch for both inputs, and

\[
  K_\omega(z,F)=\mathbf1\{h_0\in F\}=K_\omega(z',F).
\tag{18}
\]

Since \(e^\varepsilon\ge1\) and \(\delta\ge0\), (18) implies (17).  This
also shows directly that overflow contributes no privacy residual.

Suppose \(U(\omega)\le M\).  By
Lemma~\ref{lem:step-012-one-row-map},
\(\mathcal P_\omega(z)=\mathcal P_\omega(z')\) or
\(\mathcal P_\omega(z)\simeq\mathcal P_\omega(z')\).  In the equality
case the two laws in (16) coincide, including when \(U=0\) or the changed
input row is unused.  In the adjacent case, Assumption~\ref{assump:central-dp}
applied once to the exact size-\(n\) pair and the event \(F\) gives

\[
\begin{aligned}
  K_\omega(z,F)
  &=\Pr_A[A(\mathcal P_\omega(z))\in F]\\
  &\le e^\varepsilon
    \Pr_A[A(\mathcal P_\omega(z'))\in F]+\delta\\
  &=e^\varepsilon K_\omega(z',F)+\delta.
\end{aligned}
\tag{19}
\]

No coin of \(A\) was conditioned on or fixed in (19).  Arbitrary feature
and label replacements are covered because the premise of (19) is the
replacement adjacency proved in Lemma~\ref{lem:step-012-one-row-map}, not
realizability.  There is one invocation of (7), so neither group privacy
nor sequential composition appears. \(\square\)

### unit_003: lemma

**Lemma (Common input-independent mixture and restriction preserve one charge).**
\(\label{lem:step-012-postprocess-mixture}\)
Under Assumptions~\ref{assump:candidate-regime} and
\ref{assump:central-dp}, the local hypothesis (2), accepted
Lemma~\ref{lem:step-010-public-preprocessing} and
Proposition~\ref{prop:step-010-simulator}, and
Proposition~\ref{prop:step-012-fixed-seed-kernel}, let \(\nu\) be the law
of the input-independent preprocessing seed on its finite seed space
\(\mathsf\Omega_{\mathrm{pre}}\).  For
\(G\subseteq\mathsf\Omega_{\mathrm{pre}}\times\mathcal H_{k,N}\), define
its seed section

\[
  G_\omega:=\{h\in\mathcal H_{k,N}:(\omega,h)\in G\},
\tag{20}
\]

and form the joint seed/global-output kernel

\[
  \widehat K(z,G)
  :=\sum_{\omega\in\mathsf\Omega_{\mathrm{pre}}}
       \nu(\omega)K_\omega(z,G_\omega).
\tag{21}
\]

Then \(\widehat K\) is \((\varepsilon,\delta)\)-DP.  Applying only after
this common mixture the deterministic postprocessing map

\[
  \Phi(\omega,h):=D_{J(\omega)}h
\tag{22}
\]

produces exactly the accepted simulator law.  Consequently (4) holds with
exactly one additive \(\delta\).

**Proof / justification.**
The seed space is finite: accepted `step_010` samples finitely many tags,
finitely many elements of the finite-support prior, and features from the
finite domain \([N]\).  For each \(G\), every section \(G_\omega\) in
(20) is therefore a valid event in the global output space.  Equation
(21) is a total kernel: all summands are nonnegative, its value on
\(\mathsf\Omega_{\mathrm{pre}}\times\mathcal H_{k,N}\) is
\(\sum_\omega\nu(\omega)K_\omega(z,\mathcal H_{k,N})=1\), and finite
additivity follows by taking disjoint seed sections and using additivity of
each \(K_\omega\).  The seedwise inequality (17) is uniform in \(\omega\)
and in the event, so for arbitrary \(z\simeq z'\),

\[
\begin{aligned}
  \widehat K(z,G)
  &=\sum_\omega\nu(\omega)K_\omega(z,G_\omega)\\
  &\le\sum_\omega\nu(\omega)
       \bigl(e^\varepsilon K_\omega(z',G_\omega)+\delta\bigr)\\
  &=e^\varepsilon\sum_\omega\nu(\omega)K_\omega(z',G_\omega)
    +\delta\sum_\omega\nu(\omega)\\
  &=e^\varepsilon\widehat K(z',G)+\delta.
\end{aligned}
\tag{23}
\]

Here accepted Lemma~\ref{lem:step-010-public-preprocessing} supplies the
same input-independent weights \(\nu(\omega)\) for \(z\) and \(z'\), and
\(\sum_\omega\nu(\omega)=1\).  Thus (23) first proves exact DP for the
common joint mixture.  The overflow subset
\(\{\omega:U(\omega)>M\}\), the \(U=0\) subset, and every nonoverflow
subset are determined solely by this common seed.  No input-dependent
conditioning, normalization, or change of measure occurs.

Now fix \(E\subseteq\mathsf G_N\) and use the one joint-output event

\[
  G_E:=\Phi^{-1}(E)
  =\{(\omega,h):D_{J(\omega)}h\in E\}.
\tag{24}
\]

On an overflow seed, (15) gives \(\Phi(\omega,h_0)=g_0\), so that seed's
contribution to \(\widehat K(z,G_E)\) is
\(\nu(\omega)\mathbf1\{g_0\in E\}\), independently of \(z\).  On a
nonoverflow seed, its contribution is

\[
  \nu(\omega)\Pr_A\!\left[
    D_{J(\omega)}A(\mathcal P_\omega(z))\in E
  \right],
\tag{25}
\]

with all internal randomness of \(A\) retained.  Summing these two exact
branches is precisely accepted Proposition~\ref{prop:step-010-simulator},
so

\[
  B_{\mu_{N,M},A}(z,E)=\widehat K(z,G_E).
\tag{26}
\]

Finally apply (23) to \(G=G_E\) and use (26) for both inputs.  This is the
event-preimage proof of postprocessing after the common mixture and gives
(4).  The additive term in (23) is \(\delta\), not \(\delta\) times the
number of seeds, \(n\), \(k\), \(U\), or an overflow factor. \(\square\)

### unit_004: proposition

**Proposition (Exact source-cap membership).**
\(\label{prop:step-012-source-membership}\)
Under Assumptions~\ref{assump:candidate-regime} and
\ref{assump:central-dp}, the local hypothesis (2), accepted
Propositions~\ref{prop:step-005-certificate} and
\ref{prop:step-010-simulator}, and
Lemma~\ref{lem:step-012-postprocess-mixture}, define the exact source-cap
learner set at the present \(N,M\) by

\[
\begin{aligned}
  \mathcal K^{\mathrm{src}}_{N,M}:=
  \bigl\{K:\;&\mathsf Z_M\longrightarrow\mathsf G_N
      \text{ a total randomized kernel}:\\[-1mm]
    &K(z,E)\le e^{0.1}K(z',E)+\Delta_M\\[-1mm]
    &\text{for all }z\simeq z'\text{ in }\mathsf Z_M
      \text{ and }E\subseteq\mathsf G_N\bigr\}.
\end{aligned}
\tag{27}
\]

Then

\[
  B_{\mu_{N,M},A}\in\mathcal K^{\mathrm{src}}_{N,M}.
\tag{28}
\]

More fully, the same \(N,M\) satisfy the source scalar conditions in
(8), the simulator has exact input size \(M\), full arbitrary one-block
output space \(\mathsf G_N\), and is total on all labeled inputs, and its
event probabilities satisfy (6).  Thus (28) is exact source-interface
membership, not an inference from the phrase
"\((\varepsilon,\delta)\)-DP" alone.

**Proof / justification.**
Accepted Proposition~\ref{prop:step-010-simulator} proves that
\(B_{\mu_{N,M},A}\) is a total randomized kernel with domain exactly
\(\mathsf Z_M\) and codomain exactly the full improper space
\(\mathsf G_N\).  Its totality includes overflow, \(U=0\), arbitrary
corrupt input labels, and unused trailing records.

Accepted Proposition~\ref{prop:step-005-certificate}, applied to the same
\(N,M,\varepsilon,\delta\), gives (8)--(9).  In particular, \(M\ge8\)
implies \(\log M>0\), so \(\Delta_M\) in (5) is a well-defined positive
source cap.  Lemma~\ref{lem:step-012-postprocess-mixture} gives, for every
defining pair and event in (27),

\[
  B_{\mu_{N,M},A}(z,E)
  \le e^\varepsilon B_{\mu_{N,M},A}(z',E)+\delta.
\tag{29}
\]

Because probabilities are nonnegative, \(\varepsilon\le0.1\), and
\(\delta<\Delta_M\),

\[
\begin{aligned}
  e^\varepsilon B_{\mu_{N,M},A}(z',E)+\delta
  &\le e^{0.1}B_{\mu_{N,M},A}(z',E)+\delta\\
  &< e^{0.1}B_{\mu_{N,M},A}(z',E)+\Delta_M.
\end{aligned}
\tag{30}
\]

The weak inequality required in (27) follows.  Equations (8), (27), and
(30), together with the exact total kernel typing, check every component
of the source interface separately.  No accuracy, realizability, or
properness property has been added to that learner set, and no private
eligibility is inferred without the event-level derivation (29)--(30).
This proves (28). \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-010-simulator} supplies the total
one-block simulator and accepted Invariant~\ref{inv:step-010-one-use}
supplies its precise incidence map, but neither dependency claims privacy.
Lemma~\ref{lem:step-012-one-row-map} uses that incidence formula to prove
the missing pathwise statement: for every fixed preprocessing seed,
arbitrary neighboring one-block inputs yield either identical or
one-replacement global datasets off overflow, while overflow reads neither
input.  The proof separately covers \(U=0\), unused and used changed rows,
simultaneous feature-and-label replacement, fixed nonhidden rows, and
nonrealizable inputs.

Proposition~\ref{prop:step-012-fixed-seed-kernel} then keeps the arbitrary
learner's internal coins distributed and applies
Assumption~\ref{assump:central-dp} once to each nonoverflow adjacent pair;
overflow and equal-dataset cases have identical laws.  Hence there is one
seedwise \((\varepsilon,\delta)\) charge and never a group-privacy or
composition charge.

Lemma~\ref{lem:step-012-postprocess-mixture} first integrates the uniform
fixed-seed inequalities into one joint seed/global-output kernel, with the
displayed calculation \(\sum_\omega\nu(\omega)\delta=\delta\).  It then
takes the exact event preimage under
\((\omega,h)\mapsto D_{J(\omega)}h\) and identifies both branches with the
accepted simulator.  This proves exact (4), with no hidden \(k\), \(n\),
\(U\), seed-count, or overflow factor.

Finally, accepted Proposition~\ref{prop:step-005-certificate} supplies the
same exact \(N,M\), \(\varepsilon\le0.1\), and \(\delta<\Delta_M\).
Proposition~\ref{prop:step-012-source-membership} combines these scalar
facts with the total input/output typing from accepted `step_010` and the
event-level inequality just proved.  It thereby establishes membership in
the explicitly defined exact source-cap learner set, rather than merely
renaming the simulator private.  These four named results prove every
clause of the accepted `step_012` row.

## Explicit Rate Audit

- Exposed variables: \(k,N,n,\varepsilon,\delta\), the exact integer \(M=m_{n,k}\), and the exact source cap \(\Delta_M=d_*/(M^2\log M)\).
- Hidden constants may depend on: No new hidden constant is introduced.  The inherited source constants \(b_*,d_*,N_*\) and the already fixed theorem constants have exactly the provenance certified by accepted `step_005`.
- Hidden constants may not depend on: \(k,N,n,M,\varepsilon,\delta\), either input dataset, a differing row, a hidden instance, \(A\), its coins, a preprocessing seed, or an event.
- Fixed quantities: \(k,N,n,M,\varepsilon,\delta\), the code/kernel of arbitrary randomized \(A\), and the public simulator kernel are fixed before its one-block input.  The seed is then sampled from one input-independent law; \(A\)'s coins remain fresh inside its sole nonoverflow call.
- Probability mode: Pathwise for the adjacency map; event-level probability over \(A\)'s internal coins for a fixed preprocessing seed; then exact expectation over common preprocessing randomness.  No realizable input distribution, confidence event, or conditioning conversion is used.
- Horizon mode: Exact fixed one-block input size \(M\), exact fixed global input size \(n\), and at most one invocation of \(A\).  There is no expected size, stopping time, repeated invocation, all-time scope, or asymptotic privacy claim.
- Norm mode: No risk or norm is evaluated.  Privacy uses the exact central one-record replacement relation on arbitrary labeled datasets and all output events.
- Admissibility conditions and auxiliary tolerances: Exactly Assumption~\ref{assump:candidate-regime}, Assumption~\ref{assump:central-dp}, and the local contradiction hypothesis (2) through accepted `step_005` and `step_010`.  There is no auxiliary tolerance.
- Term absorption or simplification inequalities: The complete common-mixture calculation is displayed in (23), the exact postprocessing identity in (26), and parameter monotonicity in (30).  No additive term is suppressed or absorbed by prose.
- Probability conversion: None.  The seed average is part of the simulator's exact output law, not a conversion between probability modes.
- Contribution to any Rate Specialization Bridge: The step exports exact \((\varepsilon,\delta)\)-DP and exact \((0.1,\Delta_M)\) source-set membership at the same \(N,M\), with zero privacy residual and no \(k/n\) loss.
- Baseline-reduction check:
  - On overflow, both fixed-seed laws equal the point mass at \(g_0\).
  - At \(U=0\), the synthesized global dataset is input-independent and the laws coincide even though \(A\) remains randomized.
  - A changed row \(q>U\) is unused and changes no synthesized row.
  - A changed row \(q\le U\) changes at most the single row \(r_q\), including simultaneous feature-and-label replacement.
  - Every nonhidden row is common, arbitrary nonrealizable labels remain in scope, restriction is exact, and the common mixture adds exactly one \(\delta\).
  Thus exact central replacement privacy is preserved in every boundary regime; no conservative group-privacy or composition surrogate replaces it.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing:
  - The inherited simulator \(B_{\mu_{N,M},A}\) and Proposition~\ref{prop:step-012-source-membership} form the minimal downstream interface: exact simulator DP and exact source-cap membership.
  - The event inequality (4) is the exact generated privacy certificate consumed downstream.
- Appendix-local:
  - The accepted type aliases \(\mathsf Z_M,\mathsf S_n,\mathsf G_N\), the directly defined source cap \(\Delta_M\), and the exact source set \(\mathcal K^{\mathrm{src}}_{N,M}\) expose the source-interface check without enlarging the public theorem statement.
  - The inherited preprocessing objects \(\Omega_{\mathrm{pre}},J,I_{1:n},U,\mathcal P_\omega,r_\ell,g_0\) retain their accepted `step_010` provenance.  They are not new assumptions.
- Proof-local:
  - The finite seed space \(\mathsf\Omega_{\mathrm{pre}}\), seed law \(\nu\), fixed seed \(\omega\), inputs \(z,z'\), possible differing index \(q\), events \(E,F,G,G_\omega,G_E\), analytic global all-zero lift \(h_0\), joint map \(\Phi\), and kernels \(K_\omega,\widehat K\) are used only in the privacy derivation and are not exported.
- Helper-object provenance:
  - \(\Delta_M\) is the exact expression certified by accepted Proposition~\ref{prop:step-005-certificate}; positivity and finiteness follow from its \(d_*>0\) and \(M\ge8\).
  - \(\mathcal K^{\mathrm{src}}_{N,M}\) is defined in (27) directly from the accepted source domain, full arbitrary output space, replacement adjacency, and source privacy parameters.  Membership is proved component by component in Proposition~\ref{prop:step-012-source-membership}.
  - \(h_0\) is explicitly defined in (15) and satisfies \(D_Jh_0=g_0\); it introduces no existence, boundedness, or selection assumption.
  - \(K_\omega\) and \(\widehat K\) are locally proved total finite kernels.  Their only output randomness conditional on a nonoverflow seed is the still-distributed internal randomness of \(A\).
- Constant provenance: No new numerical constant, radius, threshold, margin, or tolerance is introduced.  The numbers \(0.1\) and \(d_*\) and the exact budget \(M\) are inherited from accepted `step_005`; no candidate-dependent hidden quantity is used.
- Assumption provenance:
  - Assumptions~\ref{assump:candidate-regime} and \ref{assump:central-dp} are primitive pre-run conditions.
  - Input independence of the seed, the row construction, the one-use incidence relation, the fixed overflow behavior, and simulator totality are accepted derived outputs of `step_010`.
  - The deterministic adjacency map, fixed-seed DP, postprocessed common mixture, and source membership are proved in this step by named local results.
  - Equation (2) is only a local conditional hypothesis in the global contradiction proof.  No generated event membership, realizability, stability, boundedness, recurrence, or privacy condition is assumed.
- Boundary provenance:
  - Overflow is handled by (18) and the paragraph after (24); \(U=0\) and unused changes by (13); used changes by (14); arbitrary feature-and-label replacement and nonrealizable labels immediately after (14); nonhidden rows by their seed-fixed construction; the complete common mixture by (23); and postprocessing by (24)--(26).
- Randomness boundary:
  - Only preprocessing randomness is fixed in the seedwise analysis.  The internal coins of \(A\) are never fixed, conditioned away, shared across neighboring executions, or treated as deterministic.  They remain exactly the probability source governed by Assumption~\ref{assump:central-dp}.
- Diagnostic boundary:
  - The paired `global_proof.md` and `global_proof_review.md` were read only after confirming that the review status is `ACCEPTED`.  Their step-relevant planning suggestion was to separate the fixed-seed adjacency map, event-level postprocessing, common-mixture integration, and parameter-monotonicity check.  Every such statement was independently proved above.  Neither diagnostic artifact is proof evidence, a cited result, an assumption source, or authority to change the accepted target, assumptions, dependencies, or output.
