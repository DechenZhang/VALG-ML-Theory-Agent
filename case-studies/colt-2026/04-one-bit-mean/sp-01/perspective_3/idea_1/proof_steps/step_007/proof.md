# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 2

## Target Step Claim

- Intended claim: Conditional on \(\mathscr L_{\rm loc}\), almost surely on
  \(\mathcal E_{\rm loc}\), prove the \(W_i(c)\) are iid with mean
  \(\theta(c)\), each group fails the \(\epsilon/2\) target with
  probability at most \(1/4\), and the fixed odd median fails with
  probability at most \(\delta/2\) for legal k-only
  \(\beta_k,\alpha_k\). Combine with step_006 to obtain conditional total
  error below \(\epsilon\).
- Depends on: step_001, step_003, step_005, and step_006.
- Assumptions used: Primitive assumptions `assump:parameter-domain`,
  `assump:independent-samples`, and `assump:precommitted-protocol`. Derived
  inputs are the successful-\(c\) interface from step_001, \(\theta(c)\)
  from step_003, \(V_k\) from step_005, and the tail/rate interface from
  step_006.
- Technical challenge: Uniform conditioning on a random decoder path, exact
  block/error constants, and no cellwise union bound.
- Intended proof tool or cited result: Direct conditional Chebyshev,
  independent group indicators, Hoeffding majority bound, and the triangle
  inequality.
- Output target: Conditional refinement event with stochastic error
  \(\epsilon/2\), total error at most \(3\epsilon/4\), and failure at most
  \(\delta/2\).
- Rate objective: Full rate objective:
  \(B_{\rm ref}=\lceil\beta_kA_k\rceil\),
  \(G_\delta=2\lceil\alpha_k\log(8/\delta)\rceil+1\), fixed horizon, and
  the conditional-to-unconditional interface retained.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:parameter-domain`: \(k>1\) is fixed and known,
  \(\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and
  \(\delta\in(0,1/2)\). This supplies positive error and confidence scales
  and makes all displayed block and group counts finite and deterministic.
- `assump:independent-samples`: the localization and refinement blocks are
  independent; within refinement, the samples and all per-sample levels,
  colors, branches, types, masks, and dithers have the setting-defined
  independent product law, independently across indices.
- `assump:precommitted-protocol`: the split, refinement seeds, and group
  assignment are fixed before any response. The decoder uses the complete
  localization output only after collection, so conditioning on that output
  changes coefficients in \(W_i(c)\) but does not change any refinement
  query or its seed law.

No support, symmetry, density, selected-cell, frozen-refinement-seed, or
extra moment condition is introduced in this step.

### Derived invariants supplied by accepted dependencies

- The accepted step_001 pair is
  `perspective_3/idea_1/proof_steps/step_001/proof.md` (Unit attempt 2,
  SHA-256
  `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a`)
  and its matching `review.md` with status `ACCEPTED`. Its
  Proposition~\(\ref{prop:step-001-independence}\) supplies the complete
  localization sigma-field \(\mathscr L_{\rm loc}\), measurability of
  \(c,m_0,\mathcal E_{\rm loc}\), independence from the complete refinement
  block, and preservation of the across-index refinement product law after
  conditioning on \(\mathscr L_{\rm loc}\). It also supplies the derived
  event
  \[
    \mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}.
  \]
- The accepted step_003 pair is
  `perspective_3/idea_1/proof_steps/step_003/proof.md` (Unit attempt 1,
  SHA-256
  `ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6`)
  and its matching `review.md` with status `ACCEPTED`. Its
  Proposition~\(\ref{prop:step-003-telescope}\) supplies, under the joint
  refinement sample-and-seed law after conditioning only on localization,
  \[
    \mathbb E[W_i(c)\mid c]=\theta(c)
      =\int_{J_{S,j_S}}(x-m_0)D(dx),
  \]
  as well as the exact outer-residual decomposition and the
  supported-in-\(J_{0,j_0}\) baseline.
- The accepted step_005 pair is
  `perspective_3/idea_1/proof_steps/step_005/proof.md` (Unit attempt 1,
  SHA-256
  `afebc25c4a8ca7376c3ea7206f432cbd5d912235a533bb5c2d04868453e72acd`)
  and its matching `review.md` with status `ACCEPTED`. Its
  Proposition~\(\ref{prop:step-005-conditional-variance}\) supplies, for
  every successful localization output under the same joint conditional
  law,
  \[
    \operatorname{Var}(W_i(c)\mid c)
      \leq C_k^{\rm var}\sigma^kZ_S,
    \qquad
    C_k^{\rm var}
      =24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}.
  \]
  The constant is finite and depends only on fixed \(k\) and its k-only
  design choices.
- The accepted step_006 pair is
  `perspective_3/idea_1/proof_steps/step_006/proof.md` (Unit attempt 1,
  SHA-256
  `03db63c21866407fd8794d8ebadfa3c1d87f89ef0c1ee27bb0e3d65b61579292`)
  and its matching `review.md` with status `ACCEPTED`. Its
  Proposition~\(\ref{prop:step-006-tail}\) and
  Proposition~\(\ref{prop:step-006-rate}\) supply, on
  \(\mathcal E_{\rm loc}\),
  \[
    |\mu-m_0-\theta(c)|\leq\frac{\epsilon}{4},
    \qquad
    A_k:=\frac{\sigma^kZ_S}{\epsilon^2}>0,
  \]
  together with the three exact public rates and a positive k-only lower
  bound for \(A_k\).

### Local conditional hypotheses

- The local concentration statements condition on the full sigma-field
  \(\mathscr L_{\rm loc}\), not merely on the scalar \(c\). Their variance
  and target-transfer conclusions are restricted to the already-produced
  event \(\mathcal E_{\rm loc}\). This is the conditional output demanded
  by the sketch; it is not a new public theorem assumption.
- The supported-in-\(J_{0,j_0(c)}\) condition is used only for the inherited
  baseline-reduction audit for a fixed decoder output. It is not assumed for
  the target population.

The optional global diagnostic pair was not read or used.

## Local Lemma Map

Atomic step = no. Full-transcript conditional iid structure, one-block
accuracy, odd-median amplification, and same-target error assembly are
logically distinct and have separate audit obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the accepted independent-refinement, exact-mean, and conditional-variance conclusions, conditional on the full localization sigma-field \(\mathscr L_{\rm loc}\), the variables \((W_i(c))_{i\in I_{\rm ref}}\) are iid. Their exact conditional mean is \(\theta(c)\); on \(\mathcal E_{\rm loc}\), their common conditional variance is at most \(C_k^{\rm var}\sigma^kZ_S\). | Establishes the exact iid mean/variance interface without freezing refinement public coins or conditioning only on a scalar summary. |
| unit_002 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\), Proposition~\(\ref{prop:step-007-conditional-iid}\), and the accepted definition \(A_k=\sigma^kZ_S/\epsilon^2\), choose \(\beta_k\geq16C_k^{\rm var}\) and \(B_{\rm ref}=\lceil\beta_kA_k\rceil\). Then, on \(\mathcal E_{\rm loc}\), every fixed group mean obeys \(\Pr\{|\overline W_g(c)-\theta(c)|>\epsilon/2\mid\mathscr L_{\rm loc}\}\leq1/4\). | Gives the exact Chebyshev scaling, block ceiling, legal k-only \(\beta_k\), and zero-variance case. |
| unit_003 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\), Proposition~\(\ref{prop:step-007-conditional-iid}\), including its consequence that the refinement-tuple families underlying distinct fixed disjoint groups are conditionally independent given \(\mathscr L_{\rm loc}\), and Lemma~\(\ref{lem:step-007-block}\), choose the universal, hence k-only, constant \(\alpha_k=4\) and \(G_\delta=2\lceil4\log(8/\delta)\rceil+1\). Define the median of the \(G_\delta\) group means to be their \((G_\delta+1)/2\)-th order statistic, with repeated values retained in the ordering. Then, almost surely on \(\mathcal E_{\rm loc}\), its conditional probability given \(\mathscr L_{\rm loc}\) of missing \(\theta(c)\) by more than \(\epsilon/2\) is at most \(\exp(-G_\delta/8)\leq\delta/2\). | Proves the exact majority implication, independent-indicator Hoeffding constant, odd ceiling, tie convention, and confidence choice. |
| unit_004 | proposition | Under Assumption~\(\ref{assump:parameter-domain}\), the accepted tail conclusion of Proposition~\(\ref{prop:step-006-tail}\), and Lemma~\(\ref{lem:step-007-median}\), define the conditional refinement event by median error at most \(\epsilon/2\). On \(\mathcal E_{\rm loc}\), it has conditional failure at most \(\delta/2\), and on it \(|\widehat\mu-\mu|\leq\epsilon/2+\epsilon/4=3\epsilon/4<\epsilon\). The result is exported as an indicator-valued conditional-probability inequality for later integration. | Combines the stochastic and sole tail residual exactly once and produces the conditional-to-unconditional interface consumed by step_008. |

## Cited Result Applications

No external paper theorem is used in this step. The accepted dependencies
and the two elementary concentration inequalities are restated in current
notation before application.

### Accepted dependency: full localization transcript and refinement product kernel

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-001-independence}\) states that the sigma-field
\(\mathscr L_{\rm loc}\) generated by the complete localization block,
including its samples, seed, fixed queries, bits, interval, and decoder
outputs \(c,m_0\), is independent of all refinement samples and seeds.
Conditional on \(\mathscr L_{\rm loc}\), the per-index refinement tuples
retain their original independent product law.

**Instantiated objects, assumptions, and conclusion used.** A refinement
tuple contains \(X_i,L_i,C_i,U_i\), the conditional variables \(T_i,B_i\),
and the complete countable mask family for index \(i\). Dummy fixed values
may be assigned to \(T_i,B_i\) when \(L_i=0\), without changing \(W_i(c)\).
Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\) discharge independence and timing.
Because the tuples have one common law and are independent across \(i\),
applying the same measurable decoder map with the now-fixed value \(c\)
produces conditionally iid \(W_i(c)\). No refinement level, mask, dither, or
other public seed is included in the conditioning sigma-field.

### Accepted dependency: exact common conditional mean

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-003-telescope}\) states that for every fixed
decoder value independent of refinement,
\[
  \mathbb E[W_i(c)\mid X_i=x,c]
    =(x-m_0){\bf1}_{J_{S,j_S}}(x),
  \qquad
  \mathbb E[W_i(c)\mid c]=\theta(c).
\]
The expectation averages over \(X_i\sim D\) and every per-sample refinement
seed. The same accepted result gives
\[
  \mu-m_0=\theta(c)
    +\int_{J_{S,j_S}^c}(x-m_0)D(dx).
\]

**Objects, assumptions, and conclusion used.** The \(W_i(c)\), path, and
joint sample-and-seed law are exactly the setting objects used here. The
full-transcript product kernel above shows that the same integral is the
conditional expectation given \(\mathscr L_{\rm loc}\), even though this
sigma-field contains more information than \(c\). Thus no invalid identity
of arbitrary conditional variances or expectations is inferred merely from
sigma-field inclusion.

### Accepted dependency: variance of the exact statistic

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-005-conditional-variance}\) states that for
every realized localization output satisfying \(|c-\mu|\leq50\sigma\),
under the conditional law averaging over \(X_i\sim D\) and all independent
refinement seeds,
\[
  \operatorname{Var}(W_i(c)\mid c)
    \leq C_k^{\rm var}\sigma^kZ_S.
\]

**Objects, assumptions, and conclusion used.** This is the variance of the
exact random variable whose group averages form the estimator, in the same
absolute scalar interface. The proof below identifies its product-kernel
integral with the conditional variance given the full transcript. The
successful-output condition is precisely the accepted derived event
\(\mathcal E_{\rm loc}\); no event membership is promoted to a primitive
condition.

### Accepted dependency: tail and rate interfaces

**Source and restated statement.** The current accepted
Proposition~\(\ref{prop:step-006-tail}\) and
Proposition~\(\ref{prop:step-006-rate}\) state, for every transcript in
\(\mathcal E_{\rm loc}\),
\[
  |\mu-m_0-\theta(c)|\leq\epsilon/4,
\]
and deterministically define
\[
  A_k=\frac{\sigma^kZ_S}{\epsilon^2}>0
\]
with exact three-regime bounds and a positive lower bound depending only on
fixed \(k\).

**Objects, assumptions, and conclusion used.** The first inequality is the
sole transfer residual between the scalar estimated by the median and the
target \(\mu-m_0\), in the theorem's absolute-value metric. The second
identity is used without replacing \(Z_S\) by an asymptotic expression in
the block calculation. The zero-tail supported-in-\(J_0\) conclusion is
retained for the baseline audit.

### Conditional Chebyshev inequality

For any probability measure \(P\), any square-integrable real random
variable \(Z\) with mean \(m\), and any \(t>0\), Markov's inequality applied
to \((Z-m)^2\) gives
\[
  P\{|Z-m|>t\}
  \leq\frac{\operatorname{Var}_P(Z)}{t^2}.
\]
For almost every realization of \(\mathscr L_{\rm loc}\), its accepted
product kernel is an ordinary probability measure. Proposition~\(\ref{prop:step-007-conditional-iid}\)
proves square integrability there, so this result applies with
\(Z=\overline W_g(c)\), \(m=\theta(c)\), and \(t=\epsilon/2\).

### Hoeffding inequality for independent bounded indicators

If \(I_1,\ldots,I_G\) are independent random variables in \([0,1]\) under
an ordinary probability measure and \(t>0\), then
\[
  \Pr\left\{\sum_{g=1}^G
    (I_g-\mathbb EI_g)\geq t\right\}
  \leq\exp\left(-\frac{2t^2}{G}\right).
\]
For each localization transcript, the fixed disjoint groups are functions
of disjoint families of conditionally independent refinement tuples.
Therefore their bad-group indicators meet the hypotheses under the
conditional product kernel. The application below uses \(t=G/4\), yielding
the exact exponent \(G/8\).

### Local result applications

- Proposition~\(\ref{prop:step-007-conditional-iid}\) is proved in
  unit_001 from the full-transcript product kernel and the exact accepted
  mean and variance interfaces. It is used by
  Lemma~\(\ref{lem:step-007-block}\).
- Lemma~\(\ref{lem:step-007-block}\) is proved in unit_002 by conditional
  variance additivity and the restated Chebyshev inequality. It is used by
  Lemma~\(\ref{lem:step-007-median}\).
- Lemma~\(\ref{lem:step-007-median}\) is proved in unit_003 from the exact
  odd-median implication and the restated Hoeffding inequality. It is used
  by Proposition~\(\ref{prop:step-007-conditional-accuracy}\).
- Proposition~\(\ref{prop:step-007-conditional-accuracy}\) is proved in
  unit_004 by composing the median event with the accepted same-target tail
  bridge. It is the public-facing conditional output consumed by step_008.

## Local Derivation

### unit_001: proposition

**Proposition (Full-transcript conditional iid refinement law).**
\(\label{prop:step-007-conditional-iid}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\), the accepted conclusions of
Proposition~\(\ref{prop:step-001-independence}\),
Proposition~\(\ref{prop:step-003-telescope}\), and
Proposition~\(\ref{prop:step-005-conditional-variance}\), conditional on
the full localization sigma-field \(\mathscr L_{\rm loc}\), the family
\((W_i(c))_{i\in I_{\rm ref}}\) is iid and
\[
  \mathbb E[W_i(c)\mid\mathscr L_{\rm loc}]=\theta(c)
  \quad\text{almost surely}.
\]
On the derived event \(\mathcal E_{\rm loc}\), its common conditional
variance \(v(c)\) satisfies
\[
  v(c):=\operatorname{Var}(W_i(c)\mid\mathscr L_{\rm loc})
  \leq C_k^{\rm var}\sigma^kZ_S
  \quad\text{almost surely}.
\]
Both conditional moments average over every refinement sample and all of
its levels, colors, branches, types, masks, and dithers. No conclusion
conditional on frozen refinement public coins is asserted.

**Proof / justification.** Let \(\Xi_i\) denote the complete refinement
tuple at index \(i\), assigning fixed dummy values to \(T_i,B_i\) on the
level-zero branch. By the accepted independent-refinement interface, there
is a version of the conditional law given \(\mathscr L_{\rm loc}\) under
which
\[
  \mathcal L((\Xi_i)_{i\in I_{\rm ref}}
    \mid\mathscr L_{\rm loc})
  =Q^{\otimes N_{\rm ref}},
\]
where \(Q\) is the setting-defined common refinement sample-and-seed law and
does not depend on the localization transcript.

The statistic is a common measurable map of the form
\[
  W_i(c)=w(c,\Xi_i).
\]
The map \(w\) is the exact setting definition: the transcript enters only
through the \(\mathscr L_{\rm loc}\)-measurable decoder value \(c\), hence
through its path labels and coefficients. Consequently, for a transcript
realization \(\ell\),
\[
  \mathcal L((W_i(c))_{i\in I_{\rm ref}}
    \mid\mathscr L_{\rm loc})(\ell)
  =\bigotimes_{i\in I_{\rm ref}}
    \mathcal L_Q(w(c(\ell),\Xi_i)).
\]
All factors are the same, which proves conditional independence and
identical distribution under the full transcript, not just under its scalar
summary.

The corresponding conditional mean is
\[
  \mathbb E[W_i(c)\mid\mathscr L_{\rm loc}](\ell)
  =\int w(c(\ell),\xi)Q(d\xi).
\]
Proposition~\(\ref{prop:step-003-telescope}\) identifies this exact integral
as \(\theta(c(\ell))\). Thus the displayed mean identity holds. Whenever
the transcript lies in \(\mathcal E_{\rm loc}\), the same product-kernel
calculation gives
\[
  v(c(\ell))
  =\int\bigl(w(c(\ell),\xi)-\theta(c(\ell))\bigr)^2Q(d\xi).
\]
This is exactly the conditional variance controlled by
Proposition~\(\ref{prop:step-005-conditional-variance}\), so
\[
  v(c(\ell))\leq C_k^{\rm var}\sigma^kZ_S.
\]
This argument does not use the generally false principle that conditioning
on a larger sigma-field leaves a conditional variance unchanged; equality
here follows from the explicit transcript-independent product kernel and
the fact that \(w\) depends on the transcript only through \(c\).

The formula also handles \(v(c)=0\): then
\(\int(w(c,\xi)-\theta(c))^2Q(d\xi)=0\), so
\(W_i(c)=\theta(c)\) \(Q\)-almost surely for every \(i\). Finally, since
the groups are fixed and disjoint, the tuple families used by distinct
groups are conditionally independent. \(\square\)

### unit_002: lemma

**Lemma (One-group accuracy at the stochastic target).**
\(\label{lem:step-007-block}\)
Under Assumption~\(\ref{assump:parameter-domain}\),
Proposition~\(\ref{prop:step-007-conditional-iid}\), and the accepted
identity \(A_k=\sigma^kZ_S/\epsilon^2\), choose any k-only constant
\[
  \beta_k\geq16C_k^{\rm var}
\]
and set
\[
  B_{\rm ref}=\lceil\beta_kA_k\rceil.
\]
Then, for every fixed group \(G_g\), almost surely on
\(\mathcal E_{\rm loc}\),
\[
  \Pr\left\{
    |\overline W_g(c)-\theta(c)|>\frac{\epsilon}{2}
    \ \middle|\ \mathscr L_{\rm loc}
  \right\}
  \leq\frac14.
\]
The conclusion includes the zero-variance case and every value of the block
ceiling.

**Proof / justification.** The accepted rate interface has \(A_k>0\), and
\(C_k^{\rm var}>0\) by its explicit formula. Hence the displayed choice is
legal, positive, and depends only on fixed \(k\). The ceiling gives the
exact deterministic inequalities
\[
  1\leq B_{\rm ref},
  \qquad
  B_{\rm ref}\geq\beta_kA_k
    =\beta_k\frac{\sigma^kZ_S}{\epsilon^2}.
\]

Fix a localization transcript in \(\mathcal E_{\rm loc}\). Conditional on
that full transcript, Proposition~\(\ref{prop:step-007-conditional-iid}\)
and the fact that \(G_g\) contains exactly \(B_{\rm ref}\) distinct indices
give
\[
  \mathbb E[\overline W_g(c)\mid\mathscr L_{\rm loc}]
    =\theta(c),
  \qquad
  \operatorname{Var}(\overline W_g(c)
    \mid\mathscr L_{\rm loc})
    =\frac{v(c)}{B_{\rm ref}}.
\]
Conditional Chebyshev at threshold \(\epsilon/2\) therefore yields
\[
\begin{aligned}
  \Pr\left\{
    |\overline W_g(c)-\theta(c)|>\frac{\epsilon}{2}
    \ \middle|\ \mathscr L_{\rm loc}
  \right\}
  &\leq\frac{4v(c)}{B_{\rm ref}\epsilon^2}\\
  &\leq\frac{4C_k^{\rm var}\sigma^kZ_S}
               {B_{\rm ref}\epsilon^2}\\
  &=\frac{4C_k^{\rm var}A_k}{B_{\rm ref}}\\
  &\leq\frac{4C_k^{\rm var}}{\beta_k}
  \leq\frac14.
\end{aligned}
\]
Every scaling and inequality used to select \(\beta_k\) is displayed. If
\(v(c)=0\), the preceding proposition gives
\(\overline W_g(c)=\theta(c)\) conditionally almost surely, so the left side
is exactly zero rather than merely bounded by \(1/4\). No path or cell is
union-bounded: the calculation holds under each successful transcript's
single conditional product kernel. \(\square\)

### unit_003: lemma

**Lemma (Odd-median amplification with exact confidence constants).**
\(\label{lem:step-007-median}\)
Under Assumption~\(\ref{assump:parameter-domain}\),
Proposition~\(\ref{prop:step-007-conditional-iid}\), including its
consequence that the refinement-tuple families underlying distinct fixed
disjoint groups are conditionally independent given
\(\mathscr L_{\rm loc}\), and Lemma~\(\ref{lem:step-007-block}\), choose
the universal, hence k-only, constant
\[
  \alpha_k=4,
  \qquad
  G_\delta=2\left\lceil4\log\frac8\delta\right\rceil+1.
\]
Define the median of the \(G_\delta\) group means to be their
\((G_\delta+1)/2\)-th order statistic, with repeated values retained in the
ordering. Then, almost surely on \(\mathcal E_{\rm loc}\),
\[
  \Pr\left\{
    \left|\operatorname{median}_{1\leq g\leq G_\delta}
      \overline W_g(c)-\theta(c)\right|>\frac{\epsilon}{2}
    \ \middle|\ \mathscr L_{\rm loc}
  \right\}
  \leq \exp(-G_\delta/8)
  \leq\frac\delta2.
\]

**Proof / justification.** Put \(G=G_\delta\) for this proof and define
the bad-group indicators
\[
  I_g={\bf1}\left\{
    |\overline W_g(c)-\theta(c)|>\frac{\epsilon}{2}
  \right\},
  \qquad
  S_G=\sum_{g=1}^GI_g.
\]
The groups are fixed, disjoint, and equally sized. Conditional on the full
localization transcript, Proposition~\(\ref{prop:step-007-conditional-iid}\)
makes their underlying tuple families independent. Hence the \(I_g\) are
conditionally independent Bernoulli variables. Lemma~\(\ref{lem:step-007-block}\)
gives
\[
  \mathbb E[I_g\mid\mathscr L_{\rm loc}]\leq\frac14,
  \qquad
  \mathbb E[S_G\mid\mathscr L_{\rm loc}]\leq\frac G4
\]
on \(\mathcal E_{\rm loc}\).

The displayed definition makes \(G\) an odd positive integer. More
generally, for any odd \(G\geq1\), write \(r=(G+1)/2\) and order the group
means as \(z_{(1)}\leq\cdots\leq z_{(G)}\). If
\(z_{(r)}>\theta(c)+\epsilon/2\), then the \(r,\ldots,G\) entries give
exactly \(r\) or more bad groups. If
\(z_{(r)}<\theta(c)-\epsilon/2\), then the \(1,\ldots,r\) entries do the
same. Thus
\[
  \left\{
    |z_{(r)}-\theta(c)|>\frac\epsilon2
  \right\}
  \subseteq
  \left\{S_G\geq\frac{G+1}{2}\right\}
  \subseteq
  \left\{S_G\geq\frac G2\right\}.
\]
An exact tie \(z_{(r)}=\theta(c)\pm\epsilon/2\) is a success because the
failure event is strict. Repeated group means cause no ambiguity because an
odd sample has the fixed rank \(r\). This proves the majority implication
also for the smallest odd count.

On the median-failure event,
\[
  S_G-\mathbb E[S_G\mid\mathscr L_{\rm loc}]
  \geq\frac G2-\frac G4=\frac G4.
\]
Applying the restated Hoeffding inequality under the conditional product
kernel gives
\[
\begin{aligned}
  \Pr\left\{
    |z_{(r)}-\theta(c)|>\frac\epsilon2
    \ \middle|\ \mathscr L_{\rm loc}
  \right\}
  &\leq
  \Pr\left\{
    S_G-\mathbb E[S_G\mid\mathscr L_{\rm loc}]\geq\frac G4
    \ \middle|\ \mathscr L_{\rm loc}
  \right\}\\
  &\leq\exp\left(-\frac{2(G/4)^2}{G}\right)
   =\exp(-G/8).
\end{aligned}
\]

Let \(L_\delta=\log(8/\delta)>0\). The group ceiling and the choice
\(\alpha_k=4\) give
\[
  G_\delta=2\lceil4L_\delta\rceil+1
    \geq8L_\delta+1.
\]
Therefore
\[
  \exp(-G_\delta/8)
  \leq e^{-1/8}e^{-L_\delta}
  =e^{-1/8}\frac\delta8
  <\frac\delta2.
\]
This includes every \(\delta\in(0,1/2)\). As
\(\delta\uparrow1/2\), \(L_\delta\downarrow\log16\), so the legal odd
group count remains finite and is at least
\(2\lceil4\log16\rceil+1\); the same proof applies at that smallest legal
ceiling. If \(v(c)=0\), every \(I_g=0\) conditionally almost surely, so the
median failure probability is exactly zero. \(\square\)

### unit_004: proposition

**Proposition (Conditional refinement accuracy and same-target assembly).**
\(\label{prop:step-007-conditional-accuracy}\)
Under Assumption~\(\ref{assump:parameter-domain}\), the accepted conclusion
of Proposition~\(\ref{prop:step-006-tail}\), and
Lemma~\(\ref{lem:step-007-median}\), define
\[
  \mathcal E_{\rm ref}
  :=\left\{
    \left|\operatorname{median}_{1\leq g\leq G_\delta}
      \overline W_g(c)-\theta(c)\right|
    \leq\frac\epsilon2
  \right\}.
\]
Then the following conditional-to-unconditional interface holds almost
surely:
\[
  {\bf1}_{\mathcal E_{\rm loc}}
  \Pr(\mathcal E_{\rm ref}^c\mid\mathscr L_{\rm loc})
  \leq\frac{\delta}{2}{\bf1}_{\mathcal E_{\rm loc}}.
\]
Moreover, on \(\mathcal E_{\rm loc}\cap\mathcal E_{\rm ref}\),
\[
  |\widehat\mu-\mu|\leq\frac{3\epsilon}{4}<\epsilon.
\]
Equivalently, without integrating out localization,
\[
  {\bf1}_{\mathcal E_{\rm loc}}
  \Pr\left\{|\widehat\mu-\mu|>\frac{3\epsilon}{4}
    \ \middle|\ \mathscr L_{\rm loc}\right\}
  \leq\frac{\delta}{2}{\bf1}_{\mathcal E_{\rm loc}},
\]
and the same bound holds with the failure threshold \(\epsilon\).

**Proof / justification.** Lemma~\(\ref{lem:step-007-median}\) gives the
first displayed conditional inequality on every successful localization
transcript. On such a transcript, the accepted
Proposition~\(\ref{prop:step-006-tail}\) gives the deterministic, not
event-valued, residual bound
\[
  |\theta(c)-(\mu-m_0)|\leq\frac\epsilon4.
\]
Using the exact estimator definition and the absolute-value triangle
inequality, on \(\mathcal E_{\rm ref}\),
\[
\begin{aligned}
  |\widehat\mu-\mu|
  &=\left|
    \operatorname{median}_{1\leq g\leq G_\delta}\overline W_g(c)
      -(\mu-m_0)
    \right|\\
  &\leq
    \left|
      \operatorname{median}_{1\leq g\leq G_\delta}\overline W_g(c)
        -\theta(c)
    \right|
    +|\theta(c)-(\mu-m_0)|\\
  &\leq\frac\epsilon2+\frac\epsilon4
   =\frac{3\epsilon}{4}<\epsilon,
\end{aligned}
\]
where the final strict inequality uses \(\epsilon>0\). The stochastic
median error and deterministic tail bias are different terms in the exact
step_003 decomposition and each appears once. There is no additional
localization error term: localization supplies the event on which the
recentered variance and tail certificates hold, while the exact target
decomposition is centered at \(m_0\). Thus neither tail bias nor
localization is double-counted.

The total-error failure event on \(\mathcal E_{\rm loc}\) is consequently
contained in \(\mathcal E_{\rm ref}^c\), which proves both
indicator-valued conditional inequalities. They deliberately retain
conditioning on \(\mathscr L_{\rm loc}\); taking expectations and paying
\(\Pr(\mathcal E_{\rm loc}^c)\) are left to step_008.

For the inherited baseline, fix a successful decoder output for which
\(D(J_{0,j_0(c)})=1\). The accepted step_003 conclusion says every retained
higher-level statistic is seedwise zero and
\(\theta(c)=\mu-m_0\); the accepted step_006 conclusion says the outer
residual is exactly zero. Hence the same conditional iid and median proof
amplifies only the level-zero unbiased correction, with no higher-ring or
tail remainder. If \(D\{m_0\}=1\), then \(W_i(c)=0\) for every refinement
seed, every group mean and the median equal zero, and
\(\widehat\mu=m_0=\mu\) exactly on localization success. \(\square\)

## Target-Step Assembly

Proposition~\(\ref{prop:step-007-conditional-iid}\) conditions on the full
localization transcript and uses the accepted product kernel explicitly. It
proves that all refinement statistics remain iid while every refinement
sample, level, color, branch, type, mask, and dither remains random. The
accepted exact-mean and variance interfaces then give
\[
  \mathbb E[W_i(c)\mid\mathscr L_{\rm loc}]=\theta(c),
  \qquad
  \operatorname{Var}(W_i(c)\mid\mathscr L_{\rm loc})
    \leq C_k^{\rm var}\sigma^kZ_S
\]
on \(\mathcal E_{\rm loc}\), with no fixed-seed strengthening or cellwise
union bound.

Lemma~\(\ref{lem:step-007-block}\) uses the exact setting-derived quantity
\(A_k=\sigma^kZ_S/\epsilon^2\), the block ceiling, and the legal k-only
choice
\[
  \beta_k=16C_k^{\rm var}
\]
to prove for every group
\[
  \Pr\left\{|\overline W_g(c)-\theta(c)|>\epsilon/2
    \mid\mathscr L_{\rm loc}\right\}\leq1/4.
\]
Lemma~\(\ref{lem:step-007-median}\) proves the exact majority implication
for the fixed odd median, applies Hoeffding to the independent bad-group
indicators, and uses the legal universal choice \(\alpha_k=4\) to obtain
\[
  \Pr\left\{
    |\operatorname{median}_g\overline W_g(c)-\theta(c)|>\epsilon/2
    \mid\mathscr L_{\rm loc}\right\}
  \leq e^{-G_\delta/8}\leq\delta/2.
\]

Finally,
Proposition~\(\ref{prop:step-007-conditional-accuracy}\) combines this
single stochastic error with the sole accepted step_006 target residual,
exactly once, to give conditional total error at most
\(\epsilon/2+\epsilon/4=3\epsilon/4<\epsilon\). Its
indicator-valued conditional-probability display is precisely the interface
that step_008 can integrate. The zero-variance, smallest legal odd-group,
\(\delta\uparrow1/2\), supported-in-\(J_0\), and point-mass cases are all
included. These named results prove every clause of the binding sketch row
under only the allowed primitive assumptions and accepted dependency pairs.

## Explicit Rate Audit

- Exposed variables: \(k,\sigma,\epsilon,\delta,Z_S\),
  \(A_k=\sigma^kZ_S/\epsilon^2\),
  \(C_k^{\rm var},\beta_k,\alpha_k,B_{\rm ref},G_\delta\), the
  conditional decoder output \(c\), and the target \(\theta(c)\). The
  dependence on \(\lambda\) enters only through localization and is not
  altered or hidden by this conditional refinement step.
- Hidden constants may depend on: only the fixed \(k\) and its k-only design
  constants. Explicitly,
  \(\beta_k=16C_k^{\rm var}\) and \(\alpha_k=4\); there is no other hidden
  concentration constant.
- Hidden constants may not depend on:
  \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,Z_S,A_k,c\), any localization
  transcript, cell, path, sample,
  group, level, mask, dither, or other refinement-seed realization.
- Fixed quantities: \(k\) and all k-only design constants are fixed. The law
  \(D\) is fixed when forming the conditional kernel, while every admissible
  \(D,\lambda,\sigma,\epsilon,\delta\) remains covered uniformly. A
  localization transcript is fixed only inside the local conditional
  calculation.
- Probability mode: high probability conditional on the complete
  localization sigma-field, almost surely on the derived event
  \(\mathcal E_{\rm loc}\), over all independent refinement samples and all
  refinement protocol randomness. It is not conditional on frozen levels,
  colors, branches, types, masks, or dithers. The exported interface is
  \[
    {\bf1}_{\mathcal E_{\rm loc}}
      \Pr(\mathcal E_{\rm ref}^c\mid\mathscr L_{\rm loc})
    \leq(\delta/2){\bf1}_{\mathcal E_{\rm loc}};
  \]
  unconditional integration is intentionally deferred to step_008.
- Horizon mode: fixed non-stopping horizon
  \(N_{\rm ref}=G_\delta B_{\rm ref}\). Both counts are deterministic
  functions of known parameters, every group contains exactly
  \(B_{\rm ref}\) preassigned indices, and no data-dependent stopping or
  regrouping occurs.
- Norm mode: absolute error on \(\mathbb R\) for each group mean, the median,
  and the final target; conditional variance is the exact scalar second
  central moment used by Chebyshev.
- Admissibility conditions and auxiliary tolerances:
  \(k>1\), \(\sigma>0\), \(0<\epsilon\leq c_k\sigma\),
  \(\delta\in(0,1/2)\), the accepted successful-transcript interface,
  \(\beta_k\geq16C_k^{\rm var}\), and \(\alpha_k=4\). The only stochastic
  tolerance is the explicit \(\epsilon/2\) group/median target; the accepted
  deterministic target residual is \(\epsilon/4\).
- Block and group ceilings:
  \[
    \beta_kA_k\leq B_{\rm ref}<\beta_kA_k+1,
    \qquad
    8\log(8/\delta)+1\leq G_\delta
      <8\log(8/\delta)+3.
  \]
  The lower block inequality is exactly what the Chebyshev calculation
  uses. Step_006 gives an explicit positive k-only lower bound on \(A_k\),
  so the additive one in the block ceiling is itself bounded by a k-only
  multiple of \(A_k\); the public sample-count absorption remains assigned
  to step_008. Since \(\log(8/\delta)>\log16\), the additive group ceiling
  is likewise a constant multiple of \(\log(8/\delta)\).
- Term absorption or simplification inequalities:
  \[
    \frac{4C_k^{\rm var}\sigma^kZ_S}
         {B_{\rm ref}\epsilon^2}
    =\frac{4C_k^{\rm var}A_k}{B_{\rm ref}}
    \leq\frac{4C_k^{\rm var}}{\beta_k}
    \leq\frac14,
  \]
  \[
    \exp(-G_\delta/8)
      \leq e^{-1/8}\frac\delta8<\frac\delta2,
    \qquad
    \frac\epsilon2+\frac\epsilon4
      =\frac{3\epsilon}{4}<\epsilon.
  \]
  No variance, confidence, ceiling, or bias term is dropped by prose.
- Probability conversion: no unconditional union bound is taken here. The
  indicator-valued conditional inequality is measurable with respect to
  \(\mathscr L_{\rm loc}\) and is ready for the tower calculation in
  step_008. There is no union bound over the possible cells or paths.
- Contribution to any Rate Specialization Bridge: this step chooses the
  exact k-only block constant and universal group constant, checks the two
  finite ceilings needed for concentration, preserves \(A_k\) and \(Z_S\)
  without regime substitution, and exports conditional failure
  \(\delta/2\). Step_008 retains responsibility for multiplying the counts,
  substituting the three step_006 rates, absorbing localization cost, and
  producing the unconditional public theorem.
- Baseline-reduction check: for a fixed successful output with
  \(D(J_{0,j_0(c)})=1\), all higher retained statistics and the outer
  residual are exactly zero by accepted dependencies. The present proof
  therefore applies to the level-zero unbiased correction with no
  artificial remainder. If \(D\{m_0\}=1\), every \(W_i(c)\), group mean,
  median, and refinement error is exactly zero.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting and output objects.** The setting-defined objects
  \(\mathscr L_{\rm loc},\mathcal E_{\rm loc},W_i(c),\theta(c),Z_S\) and
  \(B_{\rm ref},G_\delta,\overline W_g(c),\widehat\mu\) retain their accepted
  meanings. The accepted step_006 abbreviation
  \(A_k=\sigma^kZ_S/\epsilon^2\) is public-facing. The generated event
  \(\mathcal E_{\rm ref}\) and the two indicator-valued conditional
  inequalities in Proposition~\(\ref{prop:step-007-conditional-accuracy}\)
  are new public-facing outputs for step_008.
- **Proof-local helper objects.** The complete tuple \(\Xi_i\), its common
  product law \(Q\), the measurable map \(w(c,\xi)\), the actual conditional
  variance \(v(c)\), the temporary aliases \(G=G_\delta\) and
  \(L_\delta=\log(8/\delta)\), the bad indicators \(I_g\), their count
  \(S_G\), and the order statistics \(z_{(g)}\) are proof-local. They expose
  the conditioning and majority calculations and are not exported.
  No appendix-local dictionary is introduced.
- **Constant provenance.** \(C_k^{\rm var}\) is the explicit accepted
  step_005 constant. The choice
  \(\beta_k=16C_k^{\rm var}\) is proved by the exact Chebyshev inequality in
  Lemma~\(\ref{lem:step-007-block}\). The universal choice
  \(\alpha_k=4\) is proved sufficient by the exact exponent and ceiling
  calculation in Lemma~\(\ref{lem:step-007-median}\). The factors
  \(4,1/4,1/8,1/2,1/4\), and \(3/4\) all have displayed derivations; no
  free finite constant is introduced.
- **Assumption provenance.** Parameter ranges, block independence, seed
  product law, and precommitment are primitive. The localization event and
  full-transcript conditional kernel are accepted step_001 outputs; the
  exact mean is an accepted step_003 output; variance is an accepted
  step_005 output; and tail/rate control is an accepted step_006 output.
  Conditional iid structure, group success, median success, and
  \(\mathcal E_{\rm ref}\) are proved in this step. No generated success
  event is reclassified as primitive.
- **Conditioning audit.** Every concentration probability conditions on
  the full \(\mathscr L_{\rm loc}\). The proof then averages over all fresh
  refinement samples and per-sample seeds. Conditioning only on scalar \(c\)
  is used solely to identify accepted product-kernel integrals; conditioning
  on frozen refinement public randomness is neither claimed nor needed.
- **Independence and accumulation audit.** Disjoint groups consume disjoint
  conditionally independent tuple families, so their indicators are
  independent. The nonnegative accumulated quantity is only the finite bad
  count \(S_G\); Hoeffding controls it at the fixed horizon. Estimation
  errors are not summed across groups because the odd median selects one
  order statistic.
- **Boundary and baseline audit.** The derivation covers actual conditional
  variance zero, arbitrary exact group-mean ties, median values exactly at
  \(\theta(c)\pm\epsilon/2\), every odd group count (hence the smallest
  legal ceiling), \(\delta\uparrow1/2\), support in the selected \(J_0\),
  and the point-mass case. The strict failure convention and fixed rank make
  every boundary unambiguous.
- **No-union and fixed-horizon audit.** A single realized transcript fixes
  one decoder path, and the accepted mean, variance, and tail interfaces are
  uniform over all successful transcripts. No cellwise or pathwise union
  bound occurs. \(B_{\rm ref},G_\delta,N_{\rm ref}\) and every group are
  fixed before any response.
- **Diagnostic boundary.** The optional `global_proof.md` and
  `global_proof_review.md` were not read or used. They supply no evidence,
  cited result, assumption, dependency, or authority to change the target
  claim.
