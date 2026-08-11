# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Couple the simulator to the ideal experiment so outputs
  coincide on \(U\le M\), and prove ideal expected selected risk is at least
  simulator risk minus \(\Pr(U>M)\).
- Depends on: `step_008`, `step_009`, `step_010`.
- Assumptions used: Derived overflow certificate and simulator.
- Technical challenge: Avoid invalid conditioning and expose the sole
  residual.
- Intended proof tool or cited result: Shared-randomness bounded-loss
  coupling.
- Output target: Actual-to-ideal risk bridge.
- Rate objective: R1, with the exact additive overflow term and expectation
  mode.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

The preceding fields copy the accepted sketch row exactly. A controller
correction received during this attempt confirmed that all three listed
dependencies are binding. This proof therefore consumes the accepted
`step_008` ideal-product/exchangeability interface, the accepted `step_009`
overflow interface, and the accepted `step_010` simulator interface, and no
other step artifact. The coupling below identifies its ideal marginal with
the accepted `step_008` experiment; it does not reprove that dependency's
exchangeability or selected-risk/product-risk identity.

Write

\[
  M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
\tag{1}
\]

Fix an arbitrary hidden one-block instance

\[
  \theta=(t,Q)\in[N+1]\times\Delta([N]).
\tag{2}
\]

Let \(B_{\mu_{N,M},A}\) be the total simulator kernel exported by accepted
Proposition~\ref{prop:step-010-simulator}. For an actual input

\[
  Z^{\mathrm{in}}=(Z^{\mathrm{in}}_1,\ldots,Z^{\mathrm{in}}_M)
  \sim (Q^{\tau_t})^M,
\tag{3}
\]

the fixed-hidden coupling inequality proved below is

\[
\begin{aligned}
 &\mathbb E_{\mathrm{id},\theta}
   R_Q(G^{\mathrm{id}},\tau_t)\\
 &\qquad\ge
   \mathbb E_{\substack{Z^{\mathrm{in}}\sim(Q^{\tau_t})^M\\
                         B_{\mu_{N,M},A}}}
   R_Q\!\left(B_{\mu_{N,M},A}(Z^{\mathrm{in}}),\tau_t\right)
   -\Pr\{U>M\},
\end{aligned}
\tag{4a}
\]

where the second expectation includes the input draw, all input-independent
simulator preprocessing, and the internal randomness of \(A\) if the
nonoverflow call is reached. The first expectation includes the same
selector, tags, nonhidden prior-instance draws, nonhidden row draws, an
infinite iid sequence from the fixed hidden labeled law, and the internal
randomness of the ideal call to \(A\).

If the fixed pair in (2) is then drawn as
\(\Theta=(T,Q)\sim\mu_{N,M}\), independently before the coupling, the
ideal marginal is exactly the accepted `step_008` experiment. Thus the
exact target interface is

\[
\begin{aligned}
 &\mathbb E_{\mathrm{ideal}}
   R_{Q_J}(D_JH^{\mathrm{id}},\tau_{T_J})\\
 &\qquad\ge
   \mathbb E_{\substack{(T,Q)\sim\mu_{N,M}\\
                         Z^{\mathrm{in}}\sim(Q^{\tau_T})^M\\
                         B_{\mu_{N,M},A}}}
   R_Q\!\left(B_{\mu_{N,M},A}(Z^{\mathrm{in}}),\tau_T\right)
   -\Pr\{U>M\}.
\end{aligned}
\tag{4b}
\]

The first expectation in (4b) includes the iid prior vector, independent
uniform selector, exact conditionally iid global sample, and learner
randomness in accepted `step_008`. Accepted
Proposition~\ref{prop:step-009-overflow} gives

\[
  \Pr\{U>M\}<2^{-9}.
\tag{5}
\]

The probability in (5) is only over the selector and the exactly \(n\)
tags. It is independent of the fixed pair in (2).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic-setting ranges \(k\ge2\), \(N\ge2\), and \(n\ge1\), the
    exact budget (1), the tagged domain \(X_{k,N}\), the full improper
    output spaces, and the population 0-1 risk from `setting.md`.
  - The candidate \(A\) is an arbitrary randomized map on every ordered
    size-\(n\) labeled product dataset. No properness, monotonicity,
    symmetry, or computational condition is added.
  - The pair \((t,Q)\) in (2) is fixed but arbitrary. This is a quantifier,
    not a theorem-facing assumption or a random hard-instance premise.
- Setting technical assumptions by stable id: None are newly consumed in
  this step. Any scalar premises needed to instantiate
  \(\mu_{N,M}\) and \(B_{\mu_{N,M},A}\) have already been discharged in
  the accepted `step_010` dependency interface.
- Accepted dependency step proof/review artifacts, and no others:
  - `proof_steps/step_008/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41`.
  - `proof_steps/step_008/review.md`, SHA-256
    `5c49ef256d2a14d6f0abb365bd160f319cf7566113733f68dc76663d74f44305`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
  - `proof_steps/step_009/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c`.
  - `proof_steps/step_009/review.md`, SHA-256
    `13e26d0cbc021c8cd3859bb17bda4d8048a1ac07c27cc3f35ffa81305144874b`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
  - `proof_steps/step_010/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `1a25d7e164cfb41995429a54cc28fcf947fa3dd7678993963ef6d022558f5315`.
  - `proof_steps/step_010/review.md`, SHA-256
    `9cf294cfaf63ba7f73a4d4f2c47b70e2e5eb1bbb6a11f3dc9225dc2fc6828576`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
- Derived objects and interfaces supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-008-instance-factorization} supplies the
    ideal instance vector
    \(\boldsymbol\Xi=((T_i,Q_i))_{i=1}^k\sim\mu_{N,M}^{\otimes k}\),
    independent of \(J\sim\operatorname{Unif}[k]\).
  - Accepted Lemma~\ref{lem:step-008-ideal-sample-law} supplies, for every
    fixed realized instance vector, the exact conditional law
    \[
      \mathcal L(S^{\mathrm{id}}\mid\boldsymbol\Xi)
      =(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n,
    \]
    with a row kernel independent of \(J\). This is a conditional iid
    statement; the prior mixture is not asserted to be iid from one fixed
    distribution.
  - Accepted Lemma~\ref{lem:step-008-selector-independence} and
    Proposition~\ref{prop:step-008-selected-risk-identity} supply
    \(J\perp\!\!\!\perp(\boldsymbol\Xi,S^{\mathrm{id}},H)\) and
    \[
      \mathbb E R_{Q_J}(D_JH,\tau_{T_J})
      =\mathbb E R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T})
    \]
    for arbitrary randomized tag-asymmetric \(A\). The coupling uses the
    left side as its ideal selected-risk marginal; the equality to product
    risk is an accepted downstream interface and is not reproved here.
  - Accepted Proposition~\ref{prop:step-009-overflow} supplies
    \(J\sim\operatorname{Unif}[k]\), exactly \(n\) mutually independent
    uniform tags \(I_1,\ldots,I_n\), independent of \(J\), the count
    \[
      U=\sum_{r=1}^n\mathbf1\{I_r=J\},
    \]
    its exact binomial law, the strict certificate (5), and zero overflow
    for \(k=2,3\).
  - Accepted Lemma~\ref{lem:step-010-public-preprocessing} supplies the
    input-independent seed containing \(J\), the tags, independent
    nonhidden pairs \(\Theta_i=(T_i,Q_i)\sim\mu_{N,M}\) for \(i\ne J\),
    and conditionally independent nonhidden rows
    \(((I_r,X_r^\circ),Y_r^\circ)\).
  - Accepted Proposition~\ref{prop:step-010-row-construction} supplies the
    exact nonoverflow occurrence map
    \[
      \widetilde z_r=
      \begin{cases}
        ((J,x_{L_r}),y_{L_r}),&I_r=J,\\
        ((I_r,X_r^\circ),Y_r^\circ),&I_r\ne J,
      \end{cases}
      \qquad
      L_r=\sum_{s=1}^r\mathbf1\{I_s=J\}.
    \tag{6}
    \]
  - Accepted Invariant~\ref{inv:step-010-one-use} supplies the pathwise
    fact that (6) uses input row \(\ell\) only at the \(\ell\)-th hidden
    occurrence, uses no input at \(U=0\), uses all input rows at \(U=M\),
    and reads no input on overflow.
  - Accepted Proposition~\ref{prop:step-010-simulator} supplies the total
    kernel \(B_{\mu_{N,M},A}\): on \(U>M\) it returns the fixed all-zero
    \(g_0\) without reading the input or calling \(A\); on \(U\le M\) it
    calls \(A\) once on (6) and returns the legal improper restriction
    \(D_JH\).
- Derived invariants supplied by accepted dependencies: the exact ideal
  instance/sample/output and selected-risk interface from `step_008`, the
  selector/tag/count law and overflow certificate from `step_009`, and the
  input-independent preprocessing, exact occurrence map, and one-use
  simulator behavior from `step_010`.
- Local conditional hypotheses: None. The event \(\{U\le M\}\) is proved
  and used as one branch of a coupling decomposition; it is not assumed for
  the unconditional conclusion (4b).

Under the Assumption Provenance Contract, the ranges, fixed hidden pair,
and learner type are primitive or quantified setting data; the ideal,
simulator, and overflow interfaces are accepted derived outputs; and the
infinite hidden sequence, shared learner randomization, marginal
identification, coupling-event identity, and risk comparison are proved
locally. No generated event or iid assertion is promoted to a primitive
condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | **Shared realization of a finite randomized learner** (`lem:step-011-shared-randomization`). For arbitrary randomized \(A\) with finite output space, one uniform variable realizes the exact kernel on every dataset and gives identical outputs whenever its two dataset arguments are identical. | Makes synchronization of arbitrary randomized \(A\) a separate checked subclaim. |
| `unit_002` | lemma | **Fixed-hidden common-randomness coupling** (`lem:step-011-coupling-kernel`). Under accepted Propositions~\ref{prop:step-009-overflow} and \ref{prop:step-010-simulator} and Lemma~\ref{lem:step-011-shared-randomization}, for every fixed \((t,Q)\), an infinite iid hidden sequence, the accepted input-independent preprocessing seed, and one shared uniform variable define a joint kernel whose actual marginal is exactly the simulator on an input from \((Q^{\tau_t})^M\), while its ideal marginal calls \(A\) on a size-\(n\) dataset using the same tags and rows. | Fixes the actual input law, all randomness, the coupling kernel, and both marginals. |
| `unit_003` | lemma | **Identification with the accepted ideal experiment** (`lem:step-011-ideal-marginal`). Under accepted Lemmas~\ref{lem:step-008-instance-factorization} and \ref{lem:step-008-ideal-sample-law} and Lemma~\ref{lem:step-011-coupling-kernel}, after fixing \(J=j\) and the complete block-instance vector, the coupled ideal dataset, without conditioning on \(U\le M\), has the accepted iid law \((P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\); after drawing the hidden pair from \(\mu_{N,M}\), the full coupled ideal marginal is exactly the accepted `step_008` experiment. | Matches the coupling to the binding ideal-product/exchangeability interface without an invalid conditional-iid shortcut or a reproof of exchangeability. |
| `unit_004` | proposition | **Exact row and restricted-output identity off overflow** (`prop:step-011-no-overflow-identity`). Under Lemma~\ref{lem:step-011-coupling-kernel} and the exact accepted occurrence map (6), on \(U\le M\) every ordered actual row equals the corresponding ideal row, the shared randomized learner outputs agree, the restrictions agree, and their fixed-hidden risks agree. No equality is claimed on \(U>M\). | Establishes the exact zero-residual baseline, including \(U=0\) and \(U=M\). |
| `unit_005` | proposition | **Bounded selected-risk transfer** (`prop:step-011-risk-transfer`). Under Lemma~\ref{lem:step-011-ideal-marginal}, Proposition~\ref{prop:step-011-no-overflow-identity}, and accepted Proposition~\ref{prop:step-009-overflow}, the two \([0,1]\)-valued risks obey the pointwise one-sided overflow charge, giving the fixed-hidden inequality (4a) and exact accepted-ideal inequality (4b), with residual (5); for \(k=2,3\) the residual is exactly zero. | Assembles the requested expectation inequality and its strict explicit residual. |

Atomic step = no. Shared learner synchronization, correct actual and ideal
marginals, pathwise row/output identity, and the bounded-loss expectation
comparison are separate nontrivial obligations.

## Cited Result Applications

### Accepted dependency: ideal product and exchangeability certificate

- Source or name: Accepted
  Lemmas~\ref{lem:step-008-instance-factorization},
  \ref{lem:step-008-ideal-sample-law}, and
  \ref{lem:step-008-selector-independence}, together with accepted
  Proposition~\ref{prop:step-008-selected-risk-identity}, certified by the
  matching accepted `step_008` review.
- Restated statement in current notation: In the accepted ideal experiment,
  \[
    \boldsymbol\Xi=((T_i,Q_i))_{i=1}^k
      \sim\mu_{N,M}^{\otimes k},
    \qquad
    J\perp\!\!\!\perp\boldsymbol\Xi,
  \]
  and, for every realized vector,
  \[
    \mathcal L(S^{\mathrm{id}}\mid\boldsymbol\Xi)
      =(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n.
  \]
  With \(H\sim A(S^{\mathrm{id}})\) using fresh learner randomness,
  \(J\perp\!\!\!\perp(\boldsymbol\Xi,S^{\mathrm{id}},H)\) and
  \[
    \mathbb E R_{Q_J}(D_JH,\tau_{T_J})
      =\mathbb E R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T}).
  \]
  The sample assertion is conditional iid for a fixed vector; after prior
  mixing, the rows need not be iid from one deterministic distribution.
- Instantiated objects: The same public \(\mu_{N,M}\), selector \(J\),
  full instance vector, tags, ideal dataset, arbitrary randomized \(A\),
  ideal output, and selected restriction used in the local coupling.
- Required assumptions and discharge: The accepted prior availability and
  restriction interfaces have already been discharged inside accepted
  `step_008`. This step uses the identical \(k,N,M,n,\mu_{N,M},A\) and
  reproduces its generative kernels through the coupling construction.
- Conclusion used: Lemmas~\ref{lem:step-008-instance-factorization} and
  \ref{lem:step-008-ideal-sample-law} identify the local ideal marginal;
  the selected restriction is the exact ideal risk on the left of (4b).
  The accepted selected-risk/product-risk equality remains available to
  the downstream transfer step but is not needed to prove the bounded-loss
  inequality itself.
- Non-output boundary: This dependency supplies no actual simulator,
  finite-input coupling, no-overflow equality, or additive overflow charge.

### Accepted dependency: exact usage and overflow certificate

- Source or name: Accepted
  Proposition~\ref{prop:step-009-overflow}, certified by the matching
  accepted `step_009` review.
- Restated statement in current notation: The input-independent selector
  and tags satisfy
  \[
    J\sim\operatorname{Unif}[k],\qquad
    I_1,\ldots,I_n\stackrel{\mathrm{iid}}{\sim}\operatorname{Unif}[k],
    \qquad
    U=\sum_{r=1}^n\mathbf1\{I_r=J\}
      \sim\operatorname{Bin}(n,1/k),
  \]
  and the exact budget (1) obeys \(\Pr(U>M)<2^{-9}\). If
  \(k\in\{2,3\}\), then \(M\ge n\ge U\) pathwise, so overflow has
  probability zero. If \(n<k\), then \(M=8\) and the accepted sharper
  bound is \(\Pr(U>M)<1/9!<2^{-9}\); every \(M=8\) case is covered by
  its small-mean branch.
- Instantiated objects: The same \(J,I_{1:n},U,M\) used in the accepted
  simulator preprocessing and in the local coupling.
- Required assumptions and discharge: \(k\ge2,n\ge1\) and (1) are
  primitive setting data.
- Conclusion used: The coupling branches on the exact event \(U\le M\),
  and its sole residual has the strict bound (5).
- Non-output boundary: This dependency supplies no sample/risk coupling,
  ideal dataset, iid global-data claim, or bounded-loss inequality.

### Accepted dependency: total one-use simulator

- Source or name: Accepted
  Lemma~\ref{lem:step-010-public-preprocessing},
  Proposition~\ref{prop:step-010-row-construction},
  Invariant~\ref{inv:step-010-one-use}, and
  Proposition~\ref{prop:step-010-simulator}, certified by the matching
  accepted `step_010` review.
- Restated statement in current notation: The simulator first draws all
  preprocessing randomness independently of its input. It computes \(U\)
  before input access. On \(U\le M\), it constructs exactly \(n\) ordered
  rows by (6), calls arbitrary randomized \(A\) once, and returns \(D_JH\).
  On \(U>M\), it returns \(g_0\) before input access and without calling
  \(A\). The construction is total for every arbitrary labeled size-\(M\)
  input.
- Instantiated objects: The input (3), the preprocessing seed, the running
  count \(L_r\), the dataset in (6), the output of \(A\), and its
  restriction to tag \(J\).
- Required assumptions and discharge: The accepted simulator package is
  instantiated at the same fixed \(k,N,n,M,\mu_{N,M},A\). The local input
  draw (3) is a legal member of its full input domain and is independent of
  preprocessing.
- Conclusion used: The exact occurrence map, all shared nonhidden rows,
  the early-abort output, and the actual simulator marginal.
- Non-output boundary: The dependency does not supply an ideal sample law,
  coupling equality, population-risk comparison, or overflow-risk charge.

### Locally proved randomized-kernel realization

- Source or name:
  Lemma~\ref{lem:step-011-shared-randomization}; no external theorem is
  cited.
- Restated statement in current notation: Because
  \(\mathcal H_{k,N}\) is finite, there is a deterministic map
  \(\Phi_A(s,v)\) such that, for \(V\sim\operatorname{Unif}(0,1)\),
  \(\Phi_A(s,V)\) has law \(A(s)\) for every dataset \(s\), and equal
  datasets evaluated at the same \(V\) give equal outputs pathwise.
- Instantiated objects: The actual nonoverflow dataset and the ideal
  dataset.
- Required assumptions and discharge: The learner codomain is the finite
  full hypothesis space in `setting.md`; the construction explicitly
  enumerates it and verifies the output probabilities.
- Conclusion used: Dataset equality on \(U\le M\) implies equality of the
  outputs of arbitrary randomized \(A\), without fixing its distribution
  or assuming symmetry.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-011-shared-randomization} | One uniform variable realizes the exact finite learner kernel and synchronizes outputs on equal datasets. | Direct enumeration and inverse-transform intervals in the finite full hypothesis space. | Supplies the common learner randomness in the coupling and the output identity. |
| Lemma~\ref{lem:step-011-coupling-kernel} | One joint kernel has the exact actual simulator marginal and a precisely defined ideal marginal for every fixed \((t,Q)\). | Accepted selector/simulator interfaces, an independent iid hidden sequence, and the locally proved inverse transform. | Supplies every random object used by the remaining units. |
| Lemma~\ref{lem:step-011-ideal-marginal} | Before overflow conditioning, the coupled ideal rows have the accepted fixed-vector product law; after the hidden pair is mixed under \(\mu_{N,M}\), the complete ideal marginal is exactly accepted `step_008`. | Accepted `step_008` instance/sample interfaces plus the distinct hidden occurrence sequence and accepted nonhidden row kernel. | Certifies that the left side of (4b) is the binding ideal selected risk. |
| Proposition~\ref{prop:step-011-no-overflow-identity} | On \(U\le M\), ordered datasets, shared learner outputs, restrictions, and selected risks coincide exactly. | The first \(M\) hidden sequence records are the actual input and (6) uses record \(L_r\). | Supplies the zero-residual part of the risk comparison. |
| Proposition~\ref{prop:step-011-risk-transfer} | Ideal expected selected risk is at least actual expected simulator risk minus \(\Pr(U>M)<2^{-9}\). | Exact nonoverflow identity, risk bounded in \([0,1]\), and the accepted tail certificate. | Exact target-step export. |

No external paper result, diagnostic artifact, privacy theorem, or
unreviewed exchangeability/product-risk statement is used. The exact
exchangeability interface is consumed only from the accepted `step_008`
proof/review pair.

## Local Derivation

### unit_001: lemma

**Lemma (Shared realization of a finite randomized learner).**
\(\label{lem:step-011-shared-randomization}\)
For every randomized map
\(A:(X_{k,N}\times\{0,1\})^n\to\mathcal H_{k,N}\), there is a
deterministic function

\[
  \Phi_A:(X_{k,N}\times\{0,1\})^n\times(0,1)
  \longrightarrow\mathcal H_{k,N}
\]

such that, for \(V\sim\operatorname{Unif}(0,1)\),
\(\Phi_A(s,V)\) has exactly the law \(A(s)\) for every
\(s\in(X_{k,N}\times\{0,1\})^n\). For the same \(V\), equal input datasets give equal
outputs pathwise. No properness, determinism, or tag symmetry of \(A\) is
required.

**Proof / justification.**
Enumerate the finite set
\(\mathcal H_{k,N}=\{h_1,\ldots,h_q\}\). For each dataset \(s\), put

\[
  c_m(s):=\sum_{a=1}^m\Pr\{A(s)=h_a\},\qquad c_0(s):=0,
\]

and let \(\Phi_A(s,v)=h_m\) at the first index satisfying
\(c_m(s)\ge v\). Since \(c_q(s)=1\), this is total, and

\[
  \Pr\{\Phi_A(s,V)=h_m\}=c_m(s)-c_{m-1}(s)
  =\Pr\{A(s)=h_m\}.
\]

This proves the exact learner marginal. Equal datasets and the same \(V\)
give the same two arguments to the same deterministic function, proving
the pathwise synchronization statement. \(\square\)

### unit_002: lemma

**Lemma (Fixed-hidden common-randomness coupling).**
\(\label{lem:step-011-coupling-kernel}\)
Under accepted Propositions~\ref{prop:step-009-overflow} and
\ref{prop:step-010-simulator} and
Lemma~\ref{lem:step-011-shared-randomization}, fix any \((t,Q)\) in (2)
and any arbitrary randomized \(A\). There exists a joint probability
kernel carrying

1. an infinite sequence
   \[
     W_\ell=(X_\ell^\star,Y_\ell^\star),\qquad \ell\ge1,
   \tag{7}
   \]
   of mutually independent draws from \(Q^{\tau_t}\), so
   \(X_\ell^\star\sim Q\) and
   \(Y_\ell^\star=\tau_t(X_\ell^\star)\);
2. independently of (7), the complete input-independent preprocessing seed
   of accepted Lemma~\ref{lem:step-010-public-preprocessing}; and
3. independently of both, one \(V\sim\operatorname{Unif}(0,1)\),

such that the following statements hold.

- The actual input is
  \[
    Z^{\mathrm{in}}_\ell=W_\ell,\qquad \ell=1,\ldots,M,
  \tag{8}
  \]
  and hence has exactly the law (3), independently of simulator
  preprocessing.
- Put \(\Theta_J=(T_J,Q_J):=(t,Q)\), retain the seed's
  \(\Theta_i=(T_i,Q_i)\) for \(i\ne J\), write
  \(\boldsymbol\Xi=(\Theta_1,\ldots,\Theta_k)\), and define the always-present
  ideal ordered dataset
  \[
    S^{\mathrm{id}}=(\widehat z_1,\ldots,\widehat z_n)
  \tag{9}
  \]
  by
  \[
    \widehat z_r=
    \begin{cases}
      ((J,X_{L_r}^\star),Y_{L_r}^\star),&I_r=J,\\[1mm]
      ((I_r,X_r^\circ),Y_r^\circ),&I_r\ne J,
    \end{cases}
    \qquad r\in[n].
  \tag{10}
  \]
  The infinite sequence makes (10) well defined even when \(U>M\).
- There is a deterministic realization \(\Phi_A\) of the learner kernel
  for which
  \[
    H^{\mathrm{id}}:=\Phi_A(S^{\mathrm{id}},V),
    \qquad
    G^{\mathrm{id}}:=D_JH^{\mathrm{id}}
  \tag{11}
  \]
  has the exact ideal call-and-restrict marginal.
- Define the actual output by the accepted simulator control flow:
  \[
    G^{\mathrm{act}}:=
    \begin{cases}
      g_0,&U>M,\\
      D_J\Phi_A(\mathcal P_{\Omega_{\mathrm{pre}}}
                    (Z^{\mathrm{in}}),V),&U\le M.
    \end{cases}
  \tag{12}
  \]
  Its marginal is exactly
  \(B_{\mu_{N,M},A}(Z^{\mathrm{in}})\) with input law (3).
  In the first line of (12), \(V\), (7), and every other coupling-only
  variable are ignored: operationally the actual simulator still reads no
  input and makes no call to \(A\).

Thus (7)-(12) give a coupling of the exact actual and ideal experiments,
with every expectation and source of randomness specified.

**Proof / justification.**
The finite law \(Q^{\tau_t}\) defines the product sequence (7). Only its
first \(M\) coordinates are exposed as the actual input, so (8) is exactly
an iid size-\(M\) input rather than a stopped or conditioned sample. By
construction this sequence is independent of the accepted preprocessing
seed, as required by the input-independent kernel in `step_010`.

The running indices satisfy \(1\le L_r\le U\le n\) at every hidden
position. Hence the infinite sequence gives every hidden row in (10),
including on overflow. Nonhidden rows in (10) are the identical realized
rows already present in the accepted preprocessing seed. Therefore (9) is
always an ordered member of the full size-\(n\) learner domain.

Lemma~\ref{lem:step-011-shared-randomization} makes (11) an exact call to
the randomized kernel \(A\), followed by
the same restriction used by the accepted simulator. In (12), the
nonoverflow branch applies the same realization to the exact accepted row
map, while the overflow branch is the exact fixed output from accepted
Proposition~\ref{prop:step-010-simulator}. Sampling an unused coupling
variable does not create an operational learner call. Equations (8) and
(12), together with the input-independent seed law and that lemma, prove the
actual marginal claim. Equations (9)-(11) define the ideal marginal.
\(\square\)

### unit_003: lemma

**Lemma (Identification with the accepted ideal experiment).**
\(\label{lem:step-011-ideal-marginal}\)
Under accepted Lemmas~\ref{lem:step-008-instance-factorization} and
\ref{lem:step-008-ideal-sample-law}, and under
Lemma~\ref{lem:step-011-coupling-kernel}, fix \(j\in[k]\) and a complete
vector

\[
  \boldsymbol\theta=((t_1,Q_1),\ldots,(t_k,Q_k))
\tag{14}
\]

with \((t_j,Q_j)=(t,Q)\). Conditional on \(J=j\) and on the nonhidden
seed instances taking the values in (14), but without conditioning on
\(U\), \(U\le M\), or any tag-count event, the ideal dataset (9) satisfies

\[
  S^{\mathrm{id}}\sim
  \left(P_{\boldsymbol Q}^{c_{\boldsymbol t}}\right)^n.
\tag{15}
\]

Equivalently, the \(n\) coupled ideal global labeled rows are mutually independent,
and each has the fixed realizable law that first selects a tag uniformly
and then draws its feature from that tag's fixed \(Q_i\). If the nonhidden
instances are not fixed, their marginal is only the corresponding mixture
of the product laws in (15); this lemma does not call that mixture iid from
one deterministic product instance. Moreover, if the hidden pair
\((t,Q)\) is first drawn from \(\mu_{N,M}\), the complete joint marginal
\((J,\boldsymbol\Xi,S^{\mathrm{id}},H^{\mathrm{id}})\) is exactly the
accepted `step_008` ideal experiment, and

\[
  \mathbb E_{(t,Q)\sim\mu_{N,M}}
    \mathbb E_{\mathrm{id},(t,Q)}R_Q(G^{\mathrm{id}},\tau_t)
  =\mathbb E_{\mathrm{ideal}}
    R_{Q_J}(D_JH^{\mathrm{id}},\tau_{T_J}).
\tag{15a}
\]

**Proof / justification.**
Fix ordered tags \(i_1,\ldots,i_n\in[k]\) and features
\(x_1,\ldots,x_n\in[N]\). The accepted tag kernel gives

\[
  \Pr\{I_1=i_1,\ldots,I_n=i_n\mid J=j\}=k^{-n}.
\tag{16}
\]

Conditional on this tag vector and (14), enumerate the positions with
tag \(j\) in increasing order. Formula (10) assigns them the distinct
sequence variables \(X_1^\star,\ldots,X_u^\star\), where \(u\) is the
number of such positions. Their joint mass is the product of the
corresponding \(Q_j\) factors. At every position with tag \(i_r\ne j\),
accepted Lemma~\ref{lem:step-010-public-preprocessing} supplies an
independent feature with law \(Q_{i_r}\). Those nonhidden features are
conditionally mutually independent and are independent of the separately
drawn hidden sequence (7). Therefore

\[
  \Pr\{\text{the ideal feature at row }r\text{ is }x_r
        \text{ for all }r
       \mid J=j,\boldsymbol\theta,I_{1:n}=i_{1:n}\}
  =\prod_{r=1}^n Q_{i_r}(x_r).
\tag{17}
\]

All labels in (10) are deterministic and equal
\(\tau_{t_{i_r}}(x_r)\). Multiplying (16) and (17) gives

\[
  \prod_{r=1}^n\left[
    \frac1k Q_{i_r}(x_r)
    \mathbf1\{y_r=\tau_{t_{i_r}}(x_r)\}
  \right]
\tag{18}
\]

for every ordered labeled row vector. Expression (18) is exactly the
product mass function in (15). This calculation sums over all tag vectors,
including those with \(U>M\); no overflow conditioning appears.

Now draw the hidden pair \((t,Q)\sim\mu_{N,M}\) independently of the
selector before applying the fixed-hidden kernel. Conditional on \(J=j\),
this pair occupies coordinate \(j\), while accepted `step_010`
preprocessing draws every coordinate \(i\ne j\) independently from the
same \(\mu_{N,M}\). These are precisely the hypotheses of accepted
Lemma~\ref{lem:step-008-instance-factorization}; hence the full vector has
law \(\mu_{N,M}^{\otimes k}\) and is independent of \(J\). The row kernel
verified in (16)-(18) is precisely the kernel in accepted
Lemma~\ref{lem:step-008-ideal-sample-law}. Finally,
Lemma~\ref{lem:step-011-shared-randomization} gives the exact same learner
kernel \(A\). Thus the complete coupled ideal marginal equals the accepted
ideal experiment, and its selected restriction is \(D_JH^{\mathrm{id}}\),
which proves (15a). Accepted
Lemma~\ref{lem:step-008-selector-independence} and
Proposition~\ref{prop:step-008-selected-risk-identity} therefore remain
valid for this marginal; their exchangeability and product-risk
conclusions are consumed as accepted facts and are not rederived here.

Conditioning (15) further on \(U\le M\) would restrict the tag vectors in
(16) and generally destroy the iid tag law. The proof never makes that
conditional-iid assertion: later equality on \(U\le M\) is pathwise under
the coupling, while (15) is the unconditioned ideal sample law for the fixed
block vector. \(\square\)

### unit_004: proposition

**Proposition (Exact row and restricted-output identity off overflow).**
\(\label{prop:step-011-no-overflow-identity}\)
Under Lemma~\ref{lem:step-011-coupling-kernel}, accepted
Proposition~\ref{prop:step-010-row-construction}, and accepted
Invariant~\ref{inv:step-010-one-use}, on the event

\[
  E:=\{U\le M\},
\tag{19}
\]

the actual ordered dataset and ideal ordered dataset satisfy, row by row,

\[
  \mathcal P_{\Omega_{\mathrm{pre}}}(Z^{\mathrm{in}})_r
  =\widehat z_r,
  \qquad r=1,\ldots,n.
\tag{20}
\]

Consequently the shared randomized learner outputs and restrictions in
(11)-(12) agree pathwise on \(E\), and

\[
  R_Q(G^{\mathrm{id}},\tau_t)
  =R_Q(G^{\mathrm{act}},\tau_t)
  \qquad\text{on }E.
\tag{21}
\]

This includes \(U=0\) and \(U=M\). No dataset, output, or risk equality is
claimed on \(E^c=\{U>M\}\).

**Proof / justification.**
Fix an outcome in \(E\) and a row \(r\in[n]\). If \(I_r=J\), then

\[
  1\le L_r\le U\le M.
\tag{22}
\]

The exact accepted occurrence map (6) uses actual input row \(L_r\).
By (8), this row is

\[
  Z^{\mathrm{in}}_{L_r}
  =(X_{L_r}^\star,Y_{L_r}^\star).
\]

The first line of (6) is therefore

\[
  ((J,X_{L_r}^\star),Y_{L_r}^\star),
\]

which is exactly the first line of the ideal rule (10). If \(I_r\ne J\),
the second lines of (6) and (10) are literally the same realized
nonhidden row \(((I_r,X_r^\circ),Y_r^\circ)\). This exhaustive row split
proves (20), with ordering preserved.

At \(U=0\), there is no hidden row and the second-line identity applies at
all \(n\) positions; both experiments call \(A\) on the identical all-
nonhidden dataset. At \(U=M\), (22) still holds, and the exact occurrence
map may use all and only the first \(M\) sequence records. Thus neither
endpoint requires a separate conditioning argument or an extra record.

Because (20) gives equal datasets and both calls use the same \(V\),
Lemma~\ref{lem:step-011-shared-randomization} gives equal hypotheses even when
\(A\) is randomized, improper, nonmonotone, or tag-asymmetric. Both sides
then apply the same restriction \(D_J\), so the one-block outputs are
equal. Evaluating the identical functions against the same fixed
\((Q,\tau_t)\) proves (21).

On \(E^c\), accepted Proposition~\ref{prop:step-010-simulator} makes the
actual side return \(g_0\) before reading the input or calling \(A\),
whereas the ideal side still uses (9)-(11). The proof makes no comparison
between those datasets or outputs there. \(\square\)

### unit_005: proposition

**Proposition (Bounded selected-risk transfer).**
\(\label{prop:step-011-risk-transfer}\)
Under Lemma~\ref{lem:step-011-ideal-marginal},
Proposition~\ref{prop:step-011-no-overflow-identity}, and accepted
Proposition~\ref{prop:step-009-overflow}, for every fixed hidden pair
\((t,Q)\) and arbitrary randomized \(A\), define

\[
  L_{\mathrm{id}}:=R_Q(G^{\mathrm{id}},\tau_t),
  \qquad
  L_{\mathrm{act}}:=R_Q(G^{\mathrm{act}},\tau_t).
\tag{23}
\]

Then, on the full coupling space,

\[
  L_{\mathrm{id}}
  \ge L_{\mathrm{act}}-\mathbf1\{U>M\}.
\tag{24}
\]

Taking the exact marginals from
Lemma~\ref{lem:step-011-coupling-kernel} proves (4a). Averaging the hidden
pair under \(\mu_{N,M}\) and applying
Lemma~\ref{lem:step-011-ideal-marginal} proves the exact accepted-ideal
interface (4b). Accepted Proposition~\ref{prop:step-009-overflow} supplies
the strict residual (5).
If \(k=2\) or \(k=3\), then \(U\le M\) pathwise and the same result has
zero residual.

**Proof / justification.**
Population 0-1 risk is a probability, so for every output function,

\[
  0\le L_{\mathrm{id}}\le1,
  \qquad
  0\le L_{\mathrm{act}}\le1.
\tag{25}
\]

On \(E\), Proposition~\ref{prop:step-011-no-overflow-identity} gives
\(L_{\mathrm{id}}=L_{\mathrm{act}}\), so (24) holds with a zero
indicator. On \(E^c\), (25) gives

\[
  L_{\mathrm{act}}-1\le0\le L_{\mathrm{id}},
\]

which is exactly (24) with indicator one. This overflow argument uses only
boundedness. In particular, the actual early-abort output is \(g_0\), but
its risk may be any value in \([0,1]\): it is zero for the all-zero target,
one for the all-one target under any \(Q\), and can take an intermediate
value for other thresholds. No equality or favorable abort-risk property
is assumed.

Taking expectation of (24) over the joint variables in
Lemma~\ref{lem:step-011-coupling-kernel} gives

\[
  \mathbb E_{\mathrm{id},\theta}L_{\mathrm{id}}
  \ge
  \mathbb E_{\mathrm{act},\theta}L_{\mathrm{act}}
  -\mathbb E\mathbf1\{U>M\}.
\tag{26}
\]

The actual marginal identity in that lemma identifies the middle term with
the simulator expectation displayed in (4a), including all of its
preprocessing and learner randomness. The ideal marginal identifies the
first term with the ideal selected-risk expectation. Finally,

\[
  \mathbb E\mathbf1\{U>M\}=\Pr\{U>M\}<2^{-9}
\tag{27}
\]

by the accepted dependency. There is no conditioning-to-expectation
conversion and no interchange of a limit, supremum, or integral: the
ideal dataset uses only finitely many coordinates of (7), and all other
spaces are finite.

Because (26) holds for every fixed \((t,Q)\), average it over
\((t,Q)\sim\mu_{N,M}\). The overflow term is unchanged because its law
depends only on \(J,I_{1:n}\). Lemma~\ref{lem:step-011-ideal-marginal},
specifically (15a), identifies the averaged ideal term with the exact
accepted `step_008` selected-risk expectation. The averaged actual term is
the right-hand simulator expectation in (4b). This proves (4b) without
rederiving or using the accepted equality between ideal selected risk and
product population risk.

For \(k=2,3\), accepted Proposition~\ref{prop:step-009-overflow} gives
\(M\ge n\ge U\), so (21) holds everywhere and the final term in (26) is
exactly zero. For \(n<k\) or \(M=8\), the coupling and pointwise inequality
are unchanged, while the accepted floor-eight estimate supplies the stated
strict residual. \(\square\)

## Target-Step Assembly

Accepted Lemmas~\ref{lem:step-008-instance-factorization},
\ref{lem:step-008-ideal-sample-law}, and
\ref{lem:step-008-selector-independence}, together with accepted
Proposition~\ref{prop:step-008-selected-risk-identity}, supply the exact
ideal instance/sample/output marginal and its selected-risk interface.
Accepted Proposition~\ref{prop:step-009-overflow} supplies the exact
selector/tag/count experiment, the event \(U>M\), its strict probability
below \(2^{-9}\), and the zero-overflow \(k=2,3\) baseline. Accepted
Lemma~\ref{lem:step-010-public-preprocessing},
Proposition~\ref{prop:step-010-row-construction},
Invariant~\ref{inv:step-010-one-use}, and
Proposition~\ref{prop:step-010-simulator} supply the exact actual
preprocessing seed, occurrence map, early abort, and total simulator
kernel. No other dependency artifact is consumed.

For each fixed hidden \((t,Q)\),
Lemma~\ref{lem:step-011-coupling-kernel} couples the actual input to the
first \(M\) records of an infinite iid \(Q^{\tau_t}\) sequence, shares the
selector, every tag, every nonhidden prior instance and row, and a
pathwise realization of arbitrary randomized \(A\), and proves the fixed-
hidden marginals. Lemma~\ref{lem:step-011-ideal-marginal} verifies the
accepted fixed-vector iid row kernel without conditioning on overflow and,
after drawing the hidden pair from \(\mu_{N,M}\), identifies the complete
coupled ideal marginal with accepted `step_008`. It expressly does not
label a conditioned sample or a random-instance mixture iid, and it does
not reprove accepted exchangeability.

Proposition~\ref{prop:step-011-no-overflow-identity} applies the exact
occurrence map (6): at each hidden row, both experiments use sequence record
\(L_r\), and at each nonhidden row they use the same pre-drawn record.
Therefore datasets, shared randomized learner outputs, restrictions, and
selected risks agree exactly on \(U\le M\), including \(U=0\) and
\(U=M\). It makes no equality claim on overflow.

Proposition~\ref{prop:step-011-risk-transfer} uses only this exact identity
and \(0\le R_Q\le1\) to prove the pointwise charge (24), then takes the
fully specified coupling expectation and invokes the accepted strict tail
certificate. Averaging the fixed-hidden result under \(\mu_{N,M}\) and
using the ideal-marginal identification gives (4b). These named results
establish exactly the actual-to-ideal sample/risk bridge (4a)-(5), with the sole residual
\(\Pr(U>M)<2^{-9}\). They do not prove simulator privacy, selected-risk to
product-risk exchangeability, a hard-prior lower bound, fixed-instance
extraction, or theorem closure.

## Explicit Rate Audit

- Exposed variables: The exact integers \(k,N,n\), the exact deterministic
  budget \(M=\max\{8,\lceil4n/k\rceil\}\), the fixed hidden pair
  \((t,Q)\), the arbitrary randomized learner \(A\), the usage count
  \(U\), and the additive residual \(\Pr(U>M)\).
- Hidden constants may depend on: None. The factor 4, floor 8, and residual
  threshold \(2^{-9}\) are explicit.
- Hidden constants may not depend on: \(k,N,n,M\), the fixed hidden pair,
  \(\mu_{N,M}\), \(A\), any dataset, or any random seed.
- Fixed quantities: \(k,N,n,M,\mu_{N,M},A\), and \((t,Q)\) are fixed
  before the actual input and coupling variables are drawn. The infinite
  sequence is an analysis-side coupling device; the actual simulator sees
  only its first \(M\) records and only on the accepted nonoverflow access
  pattern.
- Probability mode: The dataset/output identity is pathwise on
  \(U\le M\). Equation (4a) is a fixed-hidden unconditional expectation
  inequality, and (4b) additionally averages the hidden pair under the
  accepted prior to recover the exact ideal experiment.
  Actual expectation includes the iid size-\(M\) input, simulator
  preprocessing, and any reached \(A\) coins. Ideal expectation includes
  the same shared preprocessing, all hidden sequence draws used by its
  \(n\) rows, and \(A\)'s shared kernel variable. The residual probability
  is over \(J,I_{1:n}\) only. No conditioned sample is called iid.
- Horizon mode: Exact fixed size \(M\) for the actual one-block input and
  exact fixed size \(n\) for the global datasets and each reached learner
  call. There is no expected sample size, stopping time, random horizon,
  asymptotic limit, or repeated residual.
- Norm mode: Population 0-1 risk on the fixed hidden instance
  \((Q,\tau_t)\). Both risks are in \([0,1]\).
- Admissibility conditions and auxiliary tolerances: Only the primitive
  ranges and the three accepted dependency interfaces. There is no new
  tolerance, event assumption, or technical condition.
- Term absorption or simplification inequalities: The exact pointwise
  comparison is (24); the only conversion is
  \(\mathbb E\mathbf1\{U>M\}=\Pr(U>M)\); and the explicit strict
  simplification is (27). No residual is suppressed.
- Probability conversion: Pathwise equality plus boundedness gives (24),
  after which linearity of expectation gives (26). No union bound,
  conditional-probability renormalization, or high-probability/PAC
  conversion occurs.
- Contribution to any Rate Specialization Bridge: This is R1's exact
  actual-to-ideal bridge. It exports one additive overflow residual,
  strictly below \(2^{-9}\), and no other simulation error.
- Baseline-reduction check:
  - \(U=0\): the hidden sequence and actual input are unused; both global
    datasets consist of the same \(n\) nonhidden rows and both restrictions
    agree.
  - \(U=M\): each of the first \(M\) hidden input records is available and
    the exact occurrence map still gives rowwise equality.
  - \(k=2,3\): \(M\ge n\ge U\), so the residual is exactly zero rather
    than conservatively positive.
  - \(n<k\) and \(M=8\): the same coupling is valid, and the accepted
    floor-eight certificate supplies the strict residual.
  - Endpoint thresholds and degenerate \(Q\): the iid sequence and labels
    remain well defined and rowwise identical; no support or
    nondegeneracy assumption is used.
  These exact no-overflow and boundary baselines are not weakened.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`:
  - The minimal exported interface is Proposition~\ref{prop:step-011-risk-transfer},
    namely (4b) with the sole residual (5), supported by the fixed-hidden
    kernel (4a).
  - The accepted objects \(M,U,B_{\mu_{N,M},A}\), and \(D_J\) retain
    their existing public-facing roles.
- `Appendix-local`:
  - The fixed hidden pair \(\theta=(t,Q)\), infinite hidden sequence
    \(W_{1:\infty}\), complete block vector
    \(\boldsymbol\theta\), ideal dataset \(S^{\mathrm{id}}\), ideal and
    actual outputs \(G^{\mathrm{id}},G^{\mathrm{act}}\), and event
    \(E=\{U\le M\}\) expose the coupling and iid-law audit. They need not
    enter the public theorem statement.
  - The type and preprocessing notation
    \(\Omega_{\mathrm{pre}},\mathcal P_{\Omega_{\mathrm{pre}}},L_r\),
    \(\Theta_i=(T_i,Q_i)\), and
    \((X_r^\circ,Y_r^\circ)\) is translated directly from the accepted
    `step_010` interface.
- `Proof-local`:
  - The enumeration \(h_1,\ldots,h_q\), cumulative probabilities
    \(c_m(s)\), common uniform \(V\), kernel realization \(\Phi_A\),
    and dummy tag/feature vectors used in (16)-(18) are eliminated from the
    exported result.
- Constant and bounded-quantity provenance:
  - The constants 4 and 8 come directly from the setting-defined budget.
  - The target residual scale \(2^{-9}\) and the exact zero-overflow
    clauses are inherited from accepted
    Proposition~\ref{prop:step-009-overflow}.
  - The bounds in (25) follow directly from the definition of population
    0-1 risk; no free bounded constant is introduced.
- Assumption provenance:
  - The fixed hidden pair is arbitrary quantified setting data.
  - The ideal instance/sample/output and selected-risk interface, the
    selector/tag/count law, overflow certificate, simulator seed,
    occurrence map, one-use behavior, restriction, and early-abort output
    are accepted dependency outputs.
  - The actual iid input, infinite hidden sequence, shared
    randomized-learner realization, identification of the coupled ideal
    representation with the accepted ideal marginal, nonoverflow equality,
    and risk inequality are proved in named local units here.
  - The event \(U\le M\) is not assumed. It is one branch in the
    unconditional decomposition (24).
- Exact randomness ledger:
  - The joint coupling samples \(W_1,\ldots,W_M\), the complete accepted
    preprocessing seed, and \(V\). The actual output depends on \(V\) only
    if its nonoverflow learner call is reached; its overflow output is
    exactly \(g_0\) and ignores both the input and \(V\).
  - Ideal selected risk averages over the complete seed, every coordinate
    of the infinite hidden sequence addressed by (10), and \(V\). Only at
    most the first \(n\) hidden sequence coordinates are ever addressed.
  - The two sides share \(J,I_{1:n}\), all nonhidden instances, all
    nonhidden rows, the first \(M\) hidden records, and \(V\). Variables
    sampled solely for analysis and ignored by an actual branch do not
    alter that branch's marginal or operational access pattern.
- Iid/conditioning discipline:
  - For every fixed complete block vector, (15) is the ideal dataset law
    before conditioning on overflow.
  - Conditional on \(U\le M\), only pathwise row equality is used. The
    conditional ideal sample is not called iid.
  - When nonhidden block instances remain random, the global marginal is a
    mixture of fixed-instance iid laws and is not mislabeled as a single
    iid law.
- Boundary discipline:
  - \(U=0\), \(U=M\), \(k=2,3\), \(n<k\), \(M=8\), the exact small/large
    tail threshold \(n/k=2\) inherited from `step_009`, \(t=1\), \(t=N+1\),
    point-mass or otherwise degenerate \(Q\), arbitrary improper and
    tag-asymmetric \(A\), and the actual early-abort \(g_0\) output are all
    covered explicitly. No equality is asserted on overflow.
- Claim boundary:
  - This artifact proves no simulator differential privacy or
    source-privacy membership (`step_012`).
  - It does not reprove hidden-coordinate exchangeability or the equality
    between selected and product population risk. Those are consumed only
    as the accepted `step_008` ideal interface. This artifact does not
    combine that equality with hardness or prove the average product-risk
    lower bound assigned to `step_013`.
  - It does not apply the hard-prior risk guarantee, extract a fixed hard
    instance, invoke PAC, or close the final theorem.
  - It consumes exactly the three dependencies in the accepted row and
    adds no dependency or assumption to repair it. The controller's
    dependency correction was incorporated before finalization.
- Diagnostic boundary: Neither `global_proof.md` nor
  `global_proof_review.md` was read or used. No diagnostic statement is
  proof evidence, a cited result, an assumption source, or authority to
  change the target claim.
