# RESEARCH_BRIEF.md

## Source

- Parent title: *Open Problem: Is Interaction Necessary for Order-Optimal 1-bit Mean Estimation?*
- Subproblem ID: `subproblem_001` — Order-optimal non-adaptive 1-bit mean estimation
- Abstract URL: https://proceedings.mlr.press/v336/lau26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/lau26a/lau26a.pdf

## Parent Context

We estimate the mean of an unknown one-dimensional distribution from one bit
per independent sample. For $k>1$ and known $\lambda\ge\sigma>0$, the
nonparametric class is

\[
\mathcal D(k,\lambda,\sigma)=\left\{D:\ \mu(D):=\mathbb E_{X\sim D}[X]\in[-\lambda,\lambda],\quad
\mathbb E_{X\sim D}|X-\mu(D)|^k\le \sigma^k\right\}.
\]

The class is otherwise unrestricted: distributions may be discrete,
asymmetric, and unbounded. A protocol observes $X_1,\ldots,X_n\sim D$ only
through $Y_t=\mathbf 1\{X_t\in A_t\}$, for measurable
$A_t\subseteq\mathbb R$. Fully non-adaptive means all $A_1,\ldots,A_n$
are fixed before any messages are observed; public or private randomness is
allowed. The output $\widehat\mu$ must satisfy

\[
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr\{ |\widehat\mu-\mu(D)|>\epsilon\}\le\delta.
\]

The probability is over the samples and all internal protocol randomness.

The adaptive 1-bit minimax benchmark in the source is

\[
r_k(\lambda,\sigma,\epsilon,\delta)
=\log\frac{\lambda}{\sigma}+
\begin{cases}
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.4em]
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,&k=2,\\[0.4em]
\left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2.
\end{cases}
\]

Adaptive threshold queries attain this rate, and a known general-query
two-stage protocol also attains it. The unresolved case is arbitrary general
queries with zero adaptive transitions.

## Exact Subproblem

**Open Problem 1 (Order-optimal non-adaptive 1-bit mean estimation).** Fix
$k>1$. Do there exist constants $c_k,C_k>0$ such that, for all
$\lambda\ge\sigma>0$, all $0<\epsilon\le c_k\sigma$, and all
$\delta\in(0,1/2)$, there is a fully non-adaptive 1-bit protocol that is
$(\epsilon,\delta)$-accurate over $\mathcal D(k,\lambda,\sigma)$ using at
most $n\le C_k r_k(\lambda,\sigma,\epsilon,\delta)$ samples?

## Known Results And Source-Identified Barriers

The following facts are established or explicitly discussed in the source and
serve only as context; none resolves Open Problem 1.

- The benchmark decomposes into localization and refinement. The term
  $\log(\lambda/\sigma)$ localizes the mean from $[-\lambda,\lambda]$ to an
  $O(\sigma)$ interval. For $k\ne2$, the refinement term matches the
  unquantized minimax rate; for $k=2$, the extra
  $\log(\sigma/\epsilon)$ factor is an unavoidable one-bit penalty.
- Lau and Scarlett (2026b, *Order-Optimal Sequential 1-bit Mean Estimation in
  General Tail Regimes*, arXiv:2604.07796, Theorem 5) attain $r_k$ using
  adaptive randomized threshold queries. Their noisy-binary-search localization
  is sequential and uses $O(\log(\lambda/\sigma))$ adaptive localization steps.
- The same work (Section 4.3) gives an order-optimal two-stage arbitrary-query
  protocol. Coding-based non-adaptive queries first localize the mean to an
  $O(\sigma)$ interval; after that interval is decoded, a location-dependent
  refinement block is selected. Thus one adaptive transition suffices.
- Lau and Scarlett (2026a, *Sequential 1-bit Mean Estimation with Near-Optimal
  Sample Complexity*, AISTATS 2026) prove that fully non-adaptive threshold and
  interval protocols require sample complexity scaling linearly with
  $\lambda/\sigma$. The proof exploits locality and therefore does not cover
  arbitrary measurable quantizers. In particular, a general measurable query
  may have a preimage that is a union of many intervals and encode many
  separated locations at once.
- For $k=2$, along the lines of Abdalla and Chen (2026, *Robust Mean Estimation
  under Quantization*, arXiv:2601.07074), truncating to
  $B=\Theta(\max\{\lambda,\sigma^2/\epsilon\})$ and applying stochastic
  quantization gives
  \[
  O\!\left(\frac{B^2}{\epsilon^2}\log\frac1\delta\right)
  \]
  samples. This certified bound has quadratic or worse dependence on
  $\lambda$.
- For $k=2$, the source also studies the randomized Fourier queries
  \[
  Z_t=2\mathbf 1\{\cos(S_tX_t+\Theta_t)\ge U_t\}-1,
  \]
  where $S_t\sim\mathrm{Unif}[-a,a]$,
  $\Theta_t\sim\mathrm{Unif}[0,2\pi]$, and
  $U_t\sim\mathrm{Unif}[-1,1]$. Let $G_\epsilon$ be an
  $O(\epsilon)$-spaced grid of $[-\lambda,\lambda]$, so that
  $|G_\epsilon|=\Theta(\lambda/\epsilon)$, and decode by
  \[
  \widehat\mu\in\arg\min_{\nu\in G_\epsilon}
  \sum_{t=1}^n\bigl(Z_t-\cos(S_t\nu+\Theta_t)\bigr)^2.
  \]
  The population gap is
  $\Omega(a^2\epsilon^2)$, while the moment-induced bias is
  $O(S_t^2\sigma^2)$, forcing $a\lesssim\epsilon/\sigma^2$ in the given
  analysis. Hoeffding's inequality and a union bound over $G_\epsilon$ then give
  \[
  O\!\left(
    \left(\frac{\sigma}{\epsilon}\right)^8
    \left(\log\frac{\lambda}{\epsilon}+\log\frac1\delta\right)
  \right)
  \]
  samples. This achieves logarithmic dependence on $\lambda$ but has a highly
  suboptimal refinement rate. It is an analyzed construction, not a lower
  bound against all non-adaptive protocols.
- More broadly, the source observes that known non-adaptive estimators use
  i.i.d. queries without refinement queries tailored to the decoded interval;
  this appears to cause poor scaling in either $\lambda$ or $\sigma/\epsilon$.
- Optimal non-adaptive protocols are known for Gaussian, symmetric
  log-concave, and scale-location families (Kipnis and Duchi, 2022; Cai and
  Wei, 2024; Kumar and Vatedka, 2026). Cai and Wei (2024, *Distributed Gaussian
  Mean Estimation under Communication Constraints: Optimal Rates and
  Communication-Efficient Algorithms*) use Gray-code-type quantizers to encode
  multiple location scales in the Gaussian case, but these results rely on
  model-specific likelihood shape, symmetry, parametric CDFs, or scale-location
  structure unavailable in $\mathcal D(k,\lambda,\sigma)$.

The source also points to adjacent literature as possible technique sources,
not as results that resolve Open Problem 1. For robust unquantized mean estimation,
it cites Devroye et al. (2016), Lee and Valiant (2022), Cherapanamjeri et al.
(2022), Minsker (2023), and Dang et al. (2023). For communication lower-bound
tools, it cites Zhang et al. (2013), Shamir (2014), Braverman et al. (2016), Han
et al. (2018), Duchi and Rogers (2019), and Barnes et al. (2020). For evidence
on when interaction does or does not change statistical complexity, it cites
Dagan and Feldman (2020), Gopi et al. (2020), Acharya et al. (2022, 2023), Pour
et al. (2024), and Kazemi et al. (2025). These works do not directly settle the
present scalar, nonparametric setting with exactly one bit per sample.

The source identifies two complementary technical barriers:

- For a positive result, all queries must be precommitted yet support both
  localization and location-dependent refinement. Under only a bounded central
  $k$-th moment, far-tail observations can alias into central regions of global
  or periodic quantizers, so uniform tail and variance control must be proved
  without knowing the localized interval in advance.
- For a negative result, standard packing and locality arguments are
  insufficient because one arbitrary measurable query can encode information
  about many separated locations. A valid lower bound must cover simultaneous
  non-adaptive localization, refinement, and tail control for arbitrary
  randomized measurable query sets.

These barriers are diagnostic observations from the source, not assumptions,
formal impossibility results, or restrictions on allowable solution methods.

## Evaluation Target

Resolve whether the stated universal fully non-adaptive protocol exists. A full
solution must either:

1. construct such a protocol and prove the claimed accuracy and sample-complexity
   bound over the complete required scope; or
2. prove that the existence claim is false for arbitrary measurable randomized
   fully non-adaptive quantizers.

Special cases, conditional theorems, regime-specific bounds, and obstructions
for restricted protocol classes are useful partial progress, but they do not
solve this subproblem or Open Problem 1.

## Required Scope

- Model: One-dimensional mean estimation over
  $\mathcal D(k,\lambda,\sigma)$ with exactly one binary message
  $Y_t=\mathbf 1\{X_t\in A_t\}$ per sample; $A_t$ is any measurable subset
  of $\mathbb R$.
- Data assumptions: Independent $X_t\sim D$, uniformly for every
  $D\in\mathcal D(k,\lambda,\sigma)$, with $k>1$ fixed and known,
  $\lambda\ge\sigma>0$ known; no additional tail, support, symmetry, or
  parametric assumptions for a full-resolution claim.
- Algorithm or protocol: Fully non-adaptive arbitrary 1-bit quantizers: all
  $A_1,\ldots,A_n$ are selected before any messages, with public or private
  randomness permitted; the final decoder may use the complete transcript and
  randomness.
- Regime: All $\lambda\ge\sigma>0$, all
  $0<\epsilon\le c_k\sigma$, all $\delta\in(0,1/2)$, and all three source
  regimes: $1<k<2$; $k=2$; and
  $k>2$. Preserve the explicit $r_k$ dependence.
- Desired theorem type: Either an order-optimal non-adaptive upper bound with
  constants depending only on $k$, or an information-theoretic impossibility
  / lower-bound theorem showing that the claimed bound cannot hold for
  arbitrary fully non-adaptive quantizers.

## Out Of Scope

- Sibling subproblems: None; the source has one formal open problem.
- Re-proving the already known adaptive threshold-query rate or the known
  two-stage general-query protocol is not a resolution of this zero-adaptivity
  target.
- Results restricted to threshold or interval queries alone do not settle the
  arbitrary-measurable-quantizer question; those families are already known to
  be suboptimal.
- Results for Gaussian, symmetric log-concave, scale-location, or other
  parametric families do not establish the claim for
  $\mathcal D(k,\lambda,\sigma)$.
- A fixed parameter tuple, a bounded-support subclass, or a single convenient
  $k$ value may be useful partial progress but is not a full resolution of the
  universal statement.

## Constraints And Forbidden Shortcuts

- Do not make $A_t$ depend on earlier bits, directly or indirectly. A decoder
  may reinterpret the collected bits after the fact, but query sets must have
  been fixed before observations.
- Do not restrict the proof to local, threshold, interval, or i.i.d. query
  families when claiming a lower bound against the source target; it must cover
  arbitrary measurable sets and allowed public/private randomization.
- Do not assume the mean has already been localized to an $O(\sigma)$ interval
  or assume a generated localization/refinement invariant; localization must be
  achieved by the same precommitted queries if it is needed.
- Do not add bounded support, symmetry, density, known likelihood, or stronger
  moment/tail assumptions except in a clearly labeled conditional or partial
  result. Do not turn such a result into a full claim for
  $\mathcal D(k,\lambda,\sigma)$.
- Preserve the source's quantifier order and explicit dependence on
  $\lambda,\sigma,\epsilon,\delta$, including the separate $k=2$ factor
  $\log(\sigma/\epsilon)$. Constants may depend on $k$ only.
- Any impossibility result must be uniform enough to refute the asserted
  all-parameter existence claim and must account for the learner's allowed
  randomness and arbitrary non-identical query sets.
- For a fixed $k$, a full negative resolution must establish the logical
  negation of the existence claim: for every $c,C>0$, there are admissible
  $\lambda,\sigma,\epsilon,\delta$, with $0<\epsilon\le c\sigma$, such that
  every fully non-adaptive protocol using at most
  $C r_k(\lambda,\sigma,\epsilon,\delta)$ samples fails for some
  $D\in\mathcal D(k,\lambda,\sigma)$. If the answer depends on the $k$-regime,
  a full resolution must classify all three regimes.

## Success Criteria

- Full resolution: an accepted theorem either constructs a fully non-adaptive
  arbitrary-query protocol satisfying the stated accuracy and
  $n\le C_k r_k$ bound for every quantified parameter, or proves an
  impossibility/order-separation theorem that answers the existence question
  negatively for arbitrary measurable randomized fully non-adaptive quantizers
  over the complete required scope. Only this category counts as solving the
  subproblem.
- Partial only: a rigorous theorem for a nontrivial parameter or $k$
  regime, or a lower/upper bound that materially narrows the gap while retaining
  arbitrary non-adaptive quantizers and explicit parameter dependence. It must
  clearly state which universal quantifiers remain open and must not be reported
  as a solution to Open Problem 1.
- Diagnostic only: a proved barrier or counterexample for a precisely
  specified protocol class, with the missing extension to all measurable
  quantizers identified. This does not count as a resolution.
- Invalid acceptance: arguments that use adaptive queries, solve only
  threshold/interval or parametric subclasses while claiming the general result,
  assume the desired rate/conclusion, hide localization/tail events as
  primitive assumptions, omit the requested parameter dependence, or provide
  only heuristic discussion.
