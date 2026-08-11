# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Define the ideal hidden-coordinate experiment; prove the
  instance vector is i.i.d. \(\mu_{N,M}^k\) and independent of \(J\), the
  ideal global sample is i.i.d. product data, and
  \(\mathbb E e_J=\mathbb E R_{P_{\boldsymbol Q}}\) for arbitrary randomized
  asymmetric \(A\).
- Depends on: `step_004`, `step_007`.
- Assumptions used: The derived finite hard prior from accepted `step_004`.
- Technical challenge: Exact exchangeability without learner symmetry.
- Intended proof tool or cited result: Conditioning and deterministic risk
  decomposition.
- Output target: Ideal product/exchangeability certificate.
- Rate objective: R1, with exact expectation and population-risk modes.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

First fix integers \(N,M\) for which accepted
Proposition~\ref{prop:step-004-finite-hard-prior} supplies a finitely
supported law \(\mu_{N,M}\) on
\(\mathcal I_N=[N+1]\times\Delta([N])\). Thus, in the notation of that
dependency, \(N\ge N_*\), \(M\ge8\), and
\(M<b_*\log_2^*N\). After this public law is fixed, fix integers
\(k\ge2\) and \(n\ge1\), and fix an arbitrary randomized map

\[
A:(X_{k,N}\times\{0,1\})^n\longrightarrow\mathcal H_{k,N}.
\]

The code of \(A\) may depend on the public prior. No privacy or PAC property
of \(A\) is needed in this step.

Define the **ideal hidden-coordinate experiment** in the following order.

1. Draw \(J\sim\operatorname{Unif}[k]\).
2. Conditional on \(J=j\), draw
   \(\Xi_j=(T_j,Q_j)\sim\mu_{N,M}\) and draw
   \(\Xi_i=(T_i,Q_i)\sim\mu_{N,M}\) for every \(i\ne j\), using mutually
   independent draws whose laws do not depend on \(j\). Write
   \(\boldsymbol\Xi=(\Xi_1,\ldots,\Xi_k)\),
   \(\boldsymbol T=(T_1,\ldots,T_k)\), and
   \(\boldsymbol Q=(Q_1,\ldots,Q_k)\). The word "hidden" only designates
   coordinate \(J\); it does not alter any coordinate's law.
3. After \((J,\boldsymbol\Xi)\) has been generated, draw tags
   \(I_1,\ldots,I_n\) independently and uniformly from \([k]\), independently
   of all preceding variables. Conditional on
   \((\boldsymbol\Xi,I_1,\ldots,I_n)\), draw
   \(X_1,\ldots,X_n\) independently with
   \(X_\ell\sim Q_{I_\ell}\), and put
   \(Y_\ell=\tau_{T_{I_\ell}}(X_\ell)\).
4. Form the exact size-\(n\) ordered labeled dataset
   \[
   S^{\mathrm{id}}
   :=\bigl(((I_\ell,X_\ell),Y_\ell)\bigr)_{\ell=1}^n
   \]
   and run \(A\) once with fresh internal randomness independent of the
   experiment, writing \(H:=A(S^{\mathrm{id}})\).

For \(h\in\mathcal H_{k,N}\), define the block population error in the
accepted `step_007` notation by

\[
e_i(h;\boldsymbol T,\boldsymbol Q)
:=\sum_{x\in[N]}Q_i(x)
  \mathbf1\{h(i,x)\ne\tau_{T_i}(x)\}.
\tag{1}
\]

The exact target proved below is

\[
\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k},
\qquad
J\ \perp\!\!\!\perp\ \boldsymbol\Xi,
\tag{2}
\]

\[
\mathcal L\!\left(S^{\mathrm{id}}\mid\boldsymbol\Xi\right)
=\left(P_{\boldsymbol Q}^{c_{\boldsymbol T}}\right)^n,
\tag{3}
\]

and

\[
\mathbb E\,e_J(H;\boldsymbol T,\boldsymbol Q)
=
\mathbb E\,R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T}).
\tag{4}
\]

Here \(\mathcal L\) denotes probability law,
\(\mu_{N,M}^{\otimes k}\) denotes the \(k\)-fold product law, and
\(\perp\!\!\!\perp\) denotes independence.

All expectations in (4) are over exactly the analysis-side prior draws, the
uniform hidden coordinate, the exact size-\(n\) ideal sample, and the internal
randomness of \(A\). The right-hand side is the exact product population
0-1 risk, not empirical risk and not an average-only surrogate distribution.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting definitions
    \(X_{k,N}=[k]\times[N]\),
    \(c_{\boldsymbol t}(i,x)=\tau_{t_i}(x)\),
    \(\mathcal H_{k,N}=\{0,1\}^{X_{k,N}}\),
    \(P_{\boldsymbol Q}(i,x)=k^{-1}Q_i(x)\), realizable labeled laws,
    and population 0-1 risk.
  - The static ranges \(k\ge2\), \(n\ge1\), and exact fixed sample size
    \(n\), together with an arbitrary randomized size-\(n\) learner \(A\).
    These are fixed inputs, not generated invariants.
  - The independent random draws explicitly specified in the ideal
    experiment. Independence is part of the local probability construction,
    while the resulting independence statements (2) and their persistence
    through data generation are proved below rather than assumed.
- Setting technical assumptions by stable id: None. In particular, this step
  does not consume `assump:candidate-regime`, `assump:central-dp`, or
  `assump:distribution-free-realizable-pac`.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_004/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba`.
  - `proof_steps/step_004/review.md`, SHA-256
    `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
  - `proof_steps/step_007/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `5c5a792c80a7692ca1369c17bada22c23a07256df0cdfdaf577c4b9d616566ec`.
  - `proof_steps/step_007/review.md`, SHA-256
    `02b3819e190d38b9446e008bf15e8448d5d80c1f2a9a5880e560c71c25bd387e`,
    whose `Step-Review Status` is `ACCEPTED` and which reviews the preceding
    proof hash.
- Derived objects supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies one
    finite law \(\mu_{N,M}\), fixed before \(A\) and the experiment. Only the
    existence, probability-law status, finite support, and public quantifier
    order of this prior are needed here; its strict hardness inequality is
    not used to prove (2)--(4).
  - Accepted Lemma~\ref{lem:step-007-restriction-legality} and
    Proposition~\ref{prop:step-007-risk-identity} supply the legal restriction
    \(D_i h\) and the exact identity between its one-block risk and (1).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. Every independence and sample-law
  property consumed in the final identity is proved as a local result.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | **Hidden-coordinate instance factorization** (`lem:step-008-instance-factorization`). Under accepted Proposition~\ref{prop:step-004-finite-hard-prior} and the stated ideal experiment, if \(J\) is uniform and every coordinate instance is drawn independently from the same \(\mu_{N,M}\) before data generation, then \(\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}\) and \(J\perp\!\!\!\perp\boldsymbol\Xi\). | Establishes the i.i.d. hard-instance vector and the required pre-data independence, including degenerate prior support. |
| `unit_002` | lemma | **Conditional i.i.d. tagged-product sample law** (`lem:step-008-ideal-sample-law`). Under Lemma~\ref{lem:step-008-instance-factorization} and the primitive tagged-product definitions, if \(I_1,\ldots,I_n\) are fresh i.i.d. uniform tags, the \(X_\ell\) are conditionally independent with \(X_\ell\sim Q_{I_\ell}\), and \(Y_\ell=\tau_{T_{I_\ell}}(X_\ell)\), then for every realized instance vector the exact size-\(n\) row law is \((P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\), and this row kernel does not depend on \(J\). | Proves the exact fixed-size ideal global sample claim without replacing a conditional product law by an invalid unconditional i.i.d. assertion. |
| `unit_003` | lemma | **Persistence of selector independence through an asymmetric learner** (`lem:step-008-selector-independence`). Under Lemmas~\ref{lem:step-008-instance-factorization} and \ref{lem:step-008-ideal-sample-law}, if \(A\) is any randomized map run with fresh coins, then \(J\) is independent of \((\boldsymbol\Xi,S^{\mathrm{id}},H)\), equivalently \(\Pr(J=i\mid\boldsymbol\Xi,S^{\mathrm{id}},H)=1/k\) almost surely. | Makes the conditional averaging valid even when \(A\) treats tags asymmetrically and is randomized. |
| `unit_004` | proposition | **Deterministic tagged-product risk decomposition** (`prop:step-008-risk-decomposition`). Under the primitive product-distribution definition and accepted Proposition~\ref{prop:step-007-risk-identity}, for every fixed \((\boldsymbol t,\boldsymbol Q,h)\), \(R_{P_{\boldsymbol Q}}(h,c_{\boldsymbol t})=k^{-1}\sum_i e_i(h;\boldsymbol t,\boldsymbol Q)=k^{-1}\sum_i R_{Q_i}(D_i h,\tau_{t_i})\). | Identifies the uniform coordinate average with the exact product population risk. |
| `unit_005` | proposition | **Selected-coordinate averaging for arbitrary randomized learners** (`prop:step-008-selected-risk-identity`). Under accepted Proposition~\ref{prop:step-007-risk-identity}, Lemma~\ref{lem:step-008-selector-independence}, and Proposition~\ref{prop:step-008-risk-decomposition}, the ideal experiment satisfies the conditional and unconditional selected-risk identities, including (4), for every randomized tag-asymmetric \(A\). | Assembles independent uniform selection, the legal restriction interface, and deterministic risk decomposition into the exact exchangeability certificate. |

Atomic step = no. The instance-vector factorization, conditional sample law,
persistence of independence through randomized postprocessing, deterministic
risk decomposition, and final conditional expectation are independent
auditable obligations.

## Cited Result Applications

### Accepted dependency: finite public hard prior

- Source or name: Accepted
  Proposition~\ref{prop:step-004-finite-hard-prior}, certified by the matching
  accepted `step_004` review.
- Restated statement in current notation: There are universal
  \(b_*,d_*>0\) and \(N_*\ge2\) such that, whenever
  \(N\ge N_*\), \(M\ge8\), and \(M<b_*\log_2^*N\), there is a probability
  law \(\mu_{N,M}\) supported on finitely many pairs
  \((t,Q)\in[N+1]\times\Delta([N])\). It is selected independently of any
  later learner and remains public before that learner is fixed. The
  dependency additionally proves a strict prior-averaged hardness
  inequality for every source-private one-block kernel.
- Instantiated objects: The same fixed \(N,M\), the exact law
  \(\mu_{N,M}\), and the \(k\) coordinate draws \(\Xi_i=(T_i,Q_i)\).
- Required assumptions and discharge: The scalar admissibility conditions
  are exactly those recorded above and in the accepted dependency. Its
  matching review verifies the proof hash and `ACCEPTED` status.
- Conclusion used: A genuine finite probability law exists before the ideal
  experiment and can be sampled independently \(k\) times. The strict
  hardness inequality and source-privacy quantifier are not invoked here.

### Accepted dependency: arbitrary-output restriction and exact block risk

- Source or name: Accepted
  Lemma~\ref{lem:step-007-restriction-legality} and
  Proposition~\ref{prop:step-007-risk-identity}, certified by the matching
  accepted `step_007` review.
- Restated statement in current notation: For every
  \(h\in\mathcal H_{k,N}\) and \(i\in[k]\),
  \((D_i h)(x)=h(i,x)\) is a legal arbitrary one-block hypothesis, and for
  every \(t_i\in[N+1]\) and every distribution \(Q_i\) on \([N]\),
  \[
  R_{Q_i}(D_i h,\tau_{t_i})
  =\sum_{x\in[N]}Q_i(x)
    \mathbf1\{h(i,x)\ne\tau_{t_i}(x)\}.
  \]
- Instantiated objects: Each realized \(H\), coordinate \(i\), random
  threshold \(T_i\), and random distribution \(Q_i\) in the ideal
  experiment.
- Required assumptions and discharge: The full improper product output
  space, threshold definitions, and population-risk convention are primitive
  setting definitions. The accepted result explicitly covers endpoint
  thresholds, point masses, non-full-support distributions, and arbitrary
  randomized or asymmetric realized outputs.
- Conclusion used: The block error in (1) is exactly the population risk of
  the legal restricted hypothesis, with zero residual.

### Elementary finite conditional-expectation identity

- Source or name: Finite conditional averaging and total expectation.
- Restated statement in current notation: If a finite-valued \(J\) obeys
  \(\Pr(J=i\mid\mathcal G)=1/k\) almost surely for every \(i\in[k]\), and
  \(a_1,\ldots,a_k\) are \(\mathcal G\)-measurable, then
  \[
  \mathbb E[a_J\mid\mathcal G]=\frac1k\sum_{i=1}^k a_i
  \quad\text{almost surely},
  \]
  and summing this equality over the atoms of the finite sigma-field gives
  \(\mathbb E a_J=\mathbb E[k^{-1}\sum_i a_i]\).
- Instantiated objects: \(\mathcal G\) is generated by
  \((\boldsymbol\Xi,S^{\mathrm{id}},H)\), and
  \(a_i=e_i(H;\boldsymbol T,\boldsymbol Q)\).
- Required assumptions and discharge: Conditional uniformity of \(J\) is
  proved by Lemma~\ref{lem:step-008-selector-independence}; each \(a_i\) is a
  deterministic finite sum once \((\boldsymbol\Xi,H)\) is fixed and lies in
  \([0,1]\) because it is a probability-weighted sum of indicators.
- Conclusion used: The selected error becomes the exact finite average of
  realized block errors before any outer expectation is taken.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-008-instance-factorization} | The instance vector has product law \(\mu_{N,M}^{\otimes k}\) and is independent of uniform \(J\). | Direct finite atom factorization from the stated generative order and the accepted prior. | Supplies the pre-data law and independence for the ideal sample construction. |
| Lemma~\ref{lem:step-008-ideal-sample-law} | Conditional on the vector, the exact \(n\) rows are independent with common law \(P_{\boldsymbol Q}^{c_{\boldsymbol T}}\), with a kernel independent of \(J\). | Uniform independent tags and independent conditional block draws. | Supplies both the ideal product-data certificate and the no-\(J\)-dependence needed after sampling. |
| Lemma~\ref{lem:step-008-selector-independence} | \(J\) remains uniform after conditioning on the instance vector, ideal sample, and randomized output. | The preceding two lemmas and the stochastic kernel of arbitrary \(A\). | Justifies the selected-coordinate conditional average without learner symmetry. |
| Proposition~\ref{prop:step-008-risk-decomposition} | The uniform average of block errors is exactly product population risk. | Primitive definition of \(P_{\boldsymbol Q}\) and accepted `step_007`. | Converts the conditional average into the target risk. |
| Proposition~\ref{prop:step-008-selected-risk-identity} | Conditional selected risk equals product risk almost surely, and their full expectations are equal. | Selector independence and deterministic decomposition. | Exact target-step export. |

No external paper result or unproved standard theorem is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Hidden-coordinate instance factorization).**
\(\label{lem:step-008-instance-factorization}\)
Under accepted Proposition~\ref{prop:step-004-finite-hard-prior} and the
ideal experiment above, if \(J\sim\operatorname{Unif}[k]\) and, conditional
on each \(J=j\), the coordinate instances
\(\Xi_1,\ldots,\Xi_k\) are mutually independent with their common law
\(\mu_{N,M}\), then

\[
\mathcal L(\boldsymbol\Xi\mid J=j)=\mu_{N,M}^{\otimes k}
\quad\text{for every }j\in[k],
\tag{5}
\]

and consequently (2) holds. This remains true when \(\mu_{N,M}\) has
singleton support or repeated coordinate draws occur.

**Proof / justification.**
Let \(\mathcal Z=\operatorname{supp}(\mu_{N,M})\), which is a nonempty
finite set because the accepted dependency supplies a finitely supported
probability law. For every \(j\in[k]\) and
\(\boldsymbol\xi=(\xi_1,\ldots,\xi_k)\in\mathcal Z^k\), the specified
conditional independence gives

\[
\begin{aligned}
\Pr\{J=j,\boldsymbol\Xi=\boldsymbol\xi\}
&=\Pr\{J=j\}
  \Pr\{\boldsymbol\Xi=\boldsymbol\xi\mid J=j\}\\
&=\frac1k\prod_{i=1}^k\mu_{N,M}(\{\xi_i\}).
\end{aligned}
\tag{6}
\]

The product on the right does not depend on \(j\). Summing (6) over
\(j\) gives

\[
\Pr\{\boldsymbol\Xi=\boldsymbol\xi\}
=\prod_{i=1}^k\mu_{N,M}(\{\xi_i\}),
\]

which is the product law in (2). Equation (6) then factors as

\[
\Pr\{J=j,\boldsymbol\Xi=\boldsymbol\xi\}
=\Pr\{J=j\}\Pr\{\boldsymbol\Xi=\boldsymbol\xi\},
\]

proving independence. If the prior has singleton support, all coordinates
are the same deterministic pair almost surely, but the same factorization
still proves both the product law and independence from \(J\). Calling one
coordinate hidden therefore creates no selection bias. \(\square\)

### unit_002: lemma

**Lemma (Conditional i.i.d. tagged-product sample law).**
\(\label{lem:step-008-ideal-sample-law}\)
Under the primitive tagged-product definitions and
Lemma~\ref{lem:step-008-instance-factorization}, suppose that after
\((J,\boldsymbol\Xi)\) is generated, the tags
\(I_1,\ldots,I_n\) are drawn independently from
\(\operatorname{Unif}[k]\), independently of the preceding variables;
conditional on \((\boldsymbol\Xi,I_1,\ldots,I_n)\), the features are
independent with \(X_\ell\sim Q_{I_\ell}\); and
\(Y_\ell=\tau_{T_{I_\ell}}(X_\ell)\). Then for every realized
\(\boldsymbol\xi=((t_i,Q_i))_{i=1}^k\in\mathcal Z^k\) and every
\(j\in[k]\),

\[
\mathcal L\!\left(S^{\mathrm{id}}\mid
  \boldsymbol\Xi=\boldsymbol\xi,J=j\right)
=\left(P_{\boldsymbol Q}^{c_{\boldsymbol t}}\right)^n.
\tag{7}
\]

In particular, the conditional row kernel is independent of \(j\), and (3)
holds.

**Proof / justification.**
Fix \(\boldsymbol\xi=((t_i,Q_i))_{i=1}^k\) and \(j\). For any row index
\(\ell\), any \(i\in[k]\), \(x\in[N]\), and \(y\in\{0,1\}\), the tag,
feature, and deterministic-label rules give

\[
\begin{aligned}
&\Pr\left\{((I_\ell,X_\ell),Y_\ell)=((i,x),y)
  \mid\boldsymbol\Xi=\boldsymbol\xi,J=j\right\}\\
&\qquad=\frac1k Q_i(x)\,
  \mathbf1\{y=\tau_{t_i}(x)\}\\
&\qquad=P_{\boldsymbol Q}(i,x)\,
  \mathbf1\{y=c_{\boldsymbol t}(i,x)\}\\
&\qquad=P_{\boldsymbol Q}^{c_{\boldsymbol t}}
  \bigl(\{((i,x),y)\}\bigr).
\end{aligned}
\tag{8}
\]

The first line on the right uses neither \(j\) nor any property of the
learner. The pairs \((I_\ell,X_\ell)\) are mutually independent conditional
on \(\boldsymbol\Xi\): tags are drawn independently, and the conditional
feature draws use independent randomness across rows. Labels are
deterministic rowwise functions. Therefore the \(n\) labeled rows are
conditionally independent and all have the common law in (8), which proves
(7).

By Lemma~\ref{lem:step-008-instance-factorization}, the conditional law of
\(\boldsymbol\Xi\) itself is the same for every \(j\). Since (7) is also the
same for every \(j\), summing over \(J\) yields (3). Importantly, (3) is a
conditional i.i.d. statement for each fixed product instance. Unconditionally,
the rows share the random vector \(\boldsymbol\Xi\), so no stronger
unconditional i.i.d. assertion is made or needed.

Equation (8) remains valid for \(t_i=1\) or \(t_i=N+1\), when the labels in
that block are constant, and when \(Q_i\) is a point mass or has zeros. No
division by \(Q_i(x)\) occurs. It also defines an exact size-\(n\) dataset
when no sampled tag equals the later-designated hidden coordinate \(J\).
\(\square\)

### unit_003: lemma

**Lemma (Persistence of selector independence through an asymmetric
learner).**
\(\label{lem:step-008-selector-independence}\)
Under Lemmas~\ref{lem:step-008-instance-factorization} and
\ref{lem:step-008-ideal-sample-law}, if \(A\) is any randomized map with the
domain and codomain in the Formalized Setting and is run on
\(S^{\mathrm{id}}\) with fresh internal randomness, then

\[
J\ \perp\!\!\!\perp\
(\boldsymbol\Xi,S^{\mathrm{id}},H).
\tag{9}
\]

Equivalently, for every \(i\in[k]\),

\[
\Pr\{J=i\mid\boldsymbol\Xi,S^{\mathrm{id}},H\}=\frac1k
\quad\text{almost surely}.
\tag{10}
\]

No permutation invariance, tag symmetry, properness, or determinism of
\(A\) is required.

**Proof / justification.**
Because all involved spaces are finite, represent the randomized learner by
its stochastic kernel

\[
K_A(h\mid s):=\Pr\{A(s)=h\},
\qquad h\in\mathcal H_{k,N}.
\]

For a fixed instance vector \(\boldsymbol\xi\), let
\(p_{\boldsymbol\xi}(s)\) denote the product-sample mass furnished by
Lemma~\ref{lem:step-008-ideal-sample-law}. Equations (6)--(8), followed by
the independent learner call, give for every atom with
\(\boldsymbol\xi\in\mathcal Z^k\),

\[
\begin{aligned}
&\Pr\{J=j,\boldsymbol\Xi=\boldsymbol\xi,
       S^{\mathrm{id}}=s,H=h\}\\
&\qquad=\frac1k
  \left(\prod_{i=1}^k\mu_{N,M}(\{\xi_i\})\right)
  p_{\boldsymbol\xi}(s)K_A(h\mid s).
\end{aligned}
\tag{11}
\]

Every factor after \(1/k\) is independent of \(j\). Summing (11) over
\(j\) shows that it equals

\[
\Pr\{J=j\}\Pr\{\boldsymbol\Xi=\boldsymbol\xi,
S^{\mathrm{id}}=s,H=h\},
\]

which proves (9), including zero-mass atoms by omission. The finite
conditional-probability formula gives (10) on every positive-mass atom.

The kernel \(K_A(h\mid s)\) may depend arbitrarily on every tag and every
row of \(s\). Thus (11) does not assert that the law of \(H\) is invariant
under permutations of tags. It uses only that \(J\) is an analysis-side
variable not supplied as an argument to \(A\), and that the sample kernel
in (7) does not depend on \(J\). The learner may also have the public prior
hardwired into its code; this changes \(K_A\) but introduces no \(j\)-factor.
\(\square\)

### unit_004: proposition

**Proposition (Deterministic tagged-product risk decomposition).**
\(\label{prop:step-008-risk-decomposition}\)
Under the primitive product-distribution definition and accepted
Proposition~\ref{prop:step-007-risk-identity}, for every fixed
\(\boldsymbol t\in[N+1]^k\), every vector of probability distributions
\(\boldsymbol Q=(Q_1,\ldots,Q_k)\) on \([N]\), and every arbitrary
\(h\in\mathcal H_{k,N}\),

\[
\begin{aligned}
R_{P_{\boldsymbol Q}}(h,c_{\boldsymbol t})
&=\frac1k\sum_{i=1}^k e_i(h;\boldsymbol t,\boldsymbol Q)\\
&=\frac1k\sum_{i=1}^k
  R_{Q_i}(D_i h,\tau_{t_i}).
\end{aligned}
\tag{12}
\]

The equality is deterministic and does not require any distributional
symmetry of \(\boldsymbol Q\) or any structural property of \(h\).

**Proof / justification.**
Expanding the population risk on the finite tagged domain and using the
definition \(P_{\boldsymbol Q}(i,x)=k^{-1}Q_i(x)\) gives

\[
\begin{aligned}
R_{P_{\boldsymbol Q}}(h,c_{\boldsymbol t})
&=\sum_{i=1}^k\sum_{x\in[N]}
  \frac1k Q_i(x)
  \mathbf1\{h(i,x)\ne c_{\boldsymbol t}(i,x)\}\\
&=\frac1k\sum_{i=1}^k\sum_{x\in[N]}Q_i(x)
  \mathbf1\{h(i,x)\ne\tau_{t_i}(x)\}\\
&=\frac1k\sum_{i=1}^k e_i(h;\boldsymbol t,\boldsymbol Q).
\end{aligned}
\tag{13}
\]

Accepted Proposition~\ref{prop:step-007-risk-identity} identifies the
\(i\)-th inner sum with
\(R_{Q_i}(D_i h,\tau_{t_i})\), proving the second equality in (12). The
calculation remains exact for unequal block distributions, endpoint
thresholds, point masses, and arbitrary nonmonotone or tag-asymmetric
hypotheses. \(\square\)

### unit_005: proposition

**Proposition (Selected-coordinate averaging for arbitrary randomized
learners).**
\(\label{prop:step-008-selected-risk-identity}\)
Under accepted Proposition~\ref{prop:step-007-risk-identity},
Lemma~\ref{lem:step-008-selector-independence}, and
Proposition~\ref{prop:step-008-risk-decomposition}, for the ideal experiment
and every randomized map \(A\) specified above,

\[
\mathbb E\!\left[
e_J(H;\boldsymbol T,\boldsymbol Q)
\mid\boldsymbol\Xi,S^{\mathrm{id}},H
\right]
=R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T})
\quad\text{almost surely}.
\tag{14}
\]

Consequently,

\[
\begin{aligned}
\mathbb E\,
R_{Q_J}(D_JH,\tau_{T_J})
&=\mathbb E\,e_J(H;\boldsymbol T,\boldsymbol Q)\\
&=\mathbb E\,R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T}),
\end{aligned}
\tag{15}
\]

where the expectations retain all prior, sample, selector, and learner
randomness.

**Proof / justification.**
Conditional on \((\boldsymbol\Xi,S^{\mathrm{id}},H)\), every quantity
\(e_i(H;\boldsymbol T,\boldsymbol Q)\) is fixed. By (10), the remaining
coordinate selector is uniform, so the elementary finite
conditional-expectation identity restated above gives

\[
\begin{aligned}
\mathbb E\!\left[
e_J(H;\boldsymbol T,\boldsymbol Q)
\mid\boldsymbol\Xi,S^{\mathrm{id}},H
\right]
&=\sum_{i=1}^k\frac1k
  e_i(H;\boldsymbol T,\boldsymbol Q)\\
&=R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T}),
\end{aligned}
\]

where the last equality is the pathwise application of
Proposition~\ref{prop:step-008-risk-decomposition}. Taking expectations and
using the total-expectation part of the same restated finite identity proves
the second equality in (15), which is (4). The first equality in (15) is the
pathwise accepted
Proposition~\ref{prop:step-007-risk-identity} at the realized
\((J,H,T_J,Q_J)\).

The proof averages over an independent uniform \(J\) after conditioning on
the complete realized vector, sample, and output. It never replaces
\(e_J\) by \(e_1\), never permutes \(A\), and never assumes the errors
\(e_1,\ldots,e_k\) have the same distribution. Thus deliberate tag
asymmetry of \(A\) is fully covered. For \(k=2\) and \(k=3\), the
conditional sums are exactly \((e_1+e_2)/2\) and
\((e_1+e_2+e_3)/3\), respectively. Samples in which the selected tag does
not occur require no special conditioning and remain part of the same
unconditioned identity. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies the
finite law before any coordinate, data, or learner randomness is generated.
Lemma~\ref{lem:step-008-instance-factorization} then proves directly from
the ordered construction that the full instance vector has law
\(\mu_{N,M}^{\otimes k}\) and is independent of \(J\); the coordinate
designated hidden is not sampled from a different law.

Lemma~\ref{lem:step-008-ideal-sample-law} proves that, conditional on each
fixed instance vector, the exact \(n\) labeled rows have law
\((P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\). Its row kernel contains no
\(J\). Lemma~\ref{lem:step-008-selector-independence} combines these two
factorizations with the arbitrary stochastic kernel of \(A\), proving that
\(J\) remains conditionally uniform even after the complete sample and
randomized, tag-asymmetric output are revealed.

Accepted Proposition~\ref{prop:step-007-risk-identity} provides the exact
legal one-block interpretation of every block error.
Proposition~\ref{prop:step-008-risk-decomposition} proves deterministically
that the uniform average of those block errors is the exact population risk
under the equal-tag product distribution. Finally,
Proposition~\ref{prop:step-008-selected-risk-identity} takes the conditional
uniform average and proves

\[
\mathbb E e_J(H;\boldsymbol T,\boldsymbol Q)
=\mathbb E R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T}).
\]

These named results establish every part of the exact `step_008` row. The
certificate is an equality in population-risk and expectation modes; it
uses no learner symmetry, no PAC averaging premise, no privacy claim, no
overflow conditioning, and no later simulation or coupling artifact.

## Explicit Rate Audit

- Exposed variables: Exact integers \(k\ge2\), \(n\ge1\), and the admissible
  fixed \(N,M\); the dependency law \(\mu_{N,M}\); the uniform tag weight
  \(1/k\); and the exact size-\(n\) ideal sample.
- Hidden constants may depend on: None. This step introduces no hidden
  constant.
- Hidden constants may not depend on: \(k,N,M,n\), the learner, the prior
  support point, the hidden coordinate, the sample, or learner randomness.
- Fixed quantities: \(k,N,M,n\), the accepted public prior, and the arbitrary
  learner kernel are fixed before the experiment is run. The prior may
  depend only on \(N,M\), as supplied by the dependency.
- Probability mode: Equations (2), (3), and (14) are exact distributional or
  conditional-expectation identities. Equation (4) is expectation over the
  prior vector, uniform \(J\), exact i.i.d. conditional sample, and internal
  randomness of \(A\). No high-probability statement or probability-mode
  conversion is asserted.
- Horizon mode: Exact fixed sample size \(n\) for \(A\), and a prior indexed
  by the exact fixed one-block budget \(M\). This step neither identifies
  \(M\) with an expected count nor requires a stopping time or asymptotic
  limit.
- Norm mode: Exact population 0-1 risk
  \(R_{P_{\boldsymbol Q}}(H,c_{\boldsymbol T})\) and exact one-block
  population 0-1 risks of the restrictions. No empirical or excess-risk
  metric appears.
- Admissibility conditions and auxiliary tolerances: Only the scalar
  conditions under which accepted `step_004` supplies \(\mu_{N,M}\), plus
  \(k\ge2\) and \(n\ge1\). There is no auxiliary tolerance, privacy use,
  overflow event, or PAC condition in this step.
- Term absorption or simplification inequalities: None. Every exported
  relation is an equality.
- Probability conversion: None. The finite tower property takes an exact
  conditional equality to an exact unconditional equality.
- Contribution to any Rate Specialization Bridge: This step supplies R1's
  ideal product/exchangeability interface. Downstream steps may compare a
  simulator to this experiment, but no comparison loss is introduced here.
- Baseline-reduction check: At \(k=2\) and \(k=3\), the identity reduces
  exactly to the displayed two- and three-block averages. Endpoint targets,
  point-mass block distributions, singleton prior support, arbitrary
  nonmonotone outputs, and deliberately tag-asymmetric randomized learners
  retain equality with zero conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The ideal experiment variables
  \(J\), \(\boldsymbol\Xi=(\boldsymbol T,\boldsymbol Q)\),
  \(I_1,\ldots,I_n\), the row features \(X_1,\ldots,X_n\), the deterministic
  labels \(Y_1,\ldots,Y_n\), \(S^{\mathrm{id}}\), and \(H\); the accepted
  prior \(\mu_{N,M}\); the block errors \(e_i\); and equations (2)--(4) form
  the minimal interface consumed downstream. Every object is defined from
  the setting or accepted dependencies before use.
- `Appendix-local`: The inherited instance space
  \(\mathcal I_N=[N+1]\times\Delta([N])\) types the accepted prior, and the
  finite support \(\mathcal Z=\operatorname{supp}(\mu_{N,M})\) is used only
  to write atomwise factorizations. Both come from the accepted finite-prior
  conclusion and are not new theorem-facing sets or conditions.
- `Proof-local`: The realized vectors \(\boldsymbol\xi\), sample atoms \(s\),
  output atoms \(h\), the product-sample mass
  \(p_{\boldsymbol\xi}(s)\), the learner kernel \(K_A(h\mid s)\), and the
  generic conditional-expectation symbols \(\mathcal G,a_1,\ldots,a_k\) are
  finite-probability bookkeeping objects. They are not exported.
- Constant and bounded-quantity provenance: The only numerical weight is
  \(1/k\), directly defined by the primitive uniform-tag law and the product
  distribution. The source constants \(b_*,d_*,N_*\) and fixed lower budget
  \(8\) are inherited from accepted `step_004`; \(b_*,N_*\) enter only its
  scalar admissibility conditions here, while \(d_*\) is part of that
  dependency's source-privacy provenance and is not otherwise consumed. Each
  \(e_i\) and each displayed population risk belongs to \([0,1]\) directly
  because it is a probability-weighted indicator sum; this supplies
  integrability without a new boundedness assumption. No new margin,
  threshold, rate, event probability, or bounded helper quantity is
  introduced.
- Assumption provenance: The finite hard prior is a derived object supplied
  by accepted `step_004`; restriction legality and risk equality are derived
  outputs supplied by accepted `step_007`. The iid vector law, independence
  of \(J\), conditional product-data law, persistence of independence through
  \(A\), deterministic risk decomposition, and selected-risk identity are
  all proved in this step. None is treated as a primitive condition or local
  conditional hypothesis.
- Generative-order discipline: \(J\) and all hard block instances are
  generated, and their independence is certified, before any data row is
  drawn. The sample is generated only from the realized vector and fresh
  uniform tags; \(A\) is called last. Thus neither data nor learner output is
  used to choose \(J\) or the hard vector.
- Conditional-law discipline: The sample is i.i.d. product data conditional
  on the fixed vector. The shared random vector can make the rows dependent
  after prior averaging, so no unconditional-i.i.d. strengthening is used.
- Asymmetry discipline: No joint exchangeability of the learner output is
  asserted. The selected-block identity comes solely from conditional
  averaging over the independent uniform \(J\).
- Boundary discipline: Singleton prior support, repeated coordinate draws,
  endpoint thresholds \(T_i=1,N+1\), point-mass or non-full-support \(Q_i\),
  and samples containing no row with tag \(J\) are included without a
  division, conditioning exclusion, or changed sample size.
- Diagnostic boundary: The paired diagnostics
  `global_proof.md` (SHA-256
  `08f3f4cf7b314f3d177b097cf025d714d8fc1ba83c71afb8142b3679ce59ec75`)
  and `global_proof_review.md` (SHA-256
  `2425ca6599893234e1f010b8253338eaf3a4723fb44ccfcbc8a0600250cacd40`)
  were checked, and the review status is `ACCEPTED`. Their step-relevant
  planning suggestion was to expose instance factorization, conditional iid
  sampling, deterministic decomposition, and conditional averaging as
  separate local units. Every such statement was independently proved above;
  neither diagnostic was used as evidence, a cited result, an assumption
  source, or authority to alter the target claim.
