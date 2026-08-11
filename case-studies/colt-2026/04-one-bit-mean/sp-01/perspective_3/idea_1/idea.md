# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: `three_regime_parameter_complete_classification`
  - model_class: `fully_nonadaptive_arbitrary_measurable_one_bit_protocol`
  - data_assumption: `unrestricted_D(k,lambda,sigma)_finite_k_moment_class`
  - regime: `universal_three_k_regime_PAC_scope`
  - algorithm: `general_algorithm`

## Added Dimensions

- Dimension: The classification outcome is constructive and common to all three regimes: zero adaptivity is sufficient, with the different refinement rates arising only from one scale-allocation normalizer.
- Dimension: The refinement primitive is a precommitted padded-dyadic ring sketch. Independent Rademacher masks multiplex all possible localized cells, while the decoder uses the independently decoded coarse cell only to select a path and unmask its ring statistics.
- Dimension: With dyadic widths $h_s=2^s h_0$, the refinement queries sample level $s$ with probability $p_s=h_s^{2-k}/Z_S$, where $Z_S=\sum_{r=0}^S h_r^{2-k}$, and truncate only after $h_S\asymp_k \sigma(\sigma/\epsilon)^{1/(k-1)}$.

## Setting

- Context: Use two independent, simultaneously precommitted sample blocks. The first is the coding-based non-adaptive localization block of Lau and Scarlett (2026), run at confidence $1-\delta/4$. Its decoded value selects the nearest cell of a fixed grid of width $h_0=a_k\sigma$, with $a_k$ chosen so that on the localization-success event the true mean lies in the central portion of that cell's three-cell padding. The second block is fixed before the first block is decoded and contains the universal ring sketch below.
- Model: For every fixed known $k>1$, every refinement user sends exactly $Y=\mathbf 1\{F(X)\ge U\}$, where $U\sim\mathrm{Unif}[-1,1]$ and $F:\mathbb R\to[-1,1]$ is fixed by public randomness before any message. Thus $A=\{x:F(x)\ge U\}$ is an arbitrary measurable, generally non-identical query set, and neither $F$ nor $U$ depends on localization bits.
- Data: The samples are independent from an otherwise unrestricted $D\in\mathcal D(k,\lambda,\sigma)$. No support, density, symmetry, likelihood, or tail-shape condition is added. On the proved localization-success event, if $m_0$ is the selected base-cell center, then $\mathbb E|X-m_0|^k\le C_k\sigma^k$ follows from the defining central-moment bound and $|m_0-\mu(D)|\le C_k\sigma$.
- Algorithm: Let $P_{s,j}$ be half-open cells of the dyadic grid of width $h_s$ (with one fixed boundary tie convention), and pad a cell by $J_{s,j}=P_{s,j-1}\cup P_{s,j}\cup P_{s,j+1}$. Along any base cell, the ancestor paddings are nested; write $R_0=J_0$ and $R_s=J_s\setminus J_{s-1}$. At each level, four-color parent $P_{s,j}$ by $j\bmod4$, so same-color paddings are disjoint, and distinguish the two possible child branches. A refinement query draws its level with law $(p_s)$ and uniformly selects a color; for $s\ge1$ it also uniformly selects a coordinate-or-mass type and a child branch, while at $s=0$ it uses the coordinate type on $J_{0,j}$. For every refinement query and every active parent $P_{s,j}$, draw fresh independent Rademacher masks $\rho_{s,j}$. On its ring set $J_{s,j}\setminus J_{s-1,\mathrm{child}}$, set $F(x)=\rho_{s,j}(x-m_{s,j})/(2h_s)$ for the coordinate type or $F(x)=\rho_{s,j}$ for the mass type, and set $F(x)=0$ off the disjoint union of active rings. The known baseline $Y^0=\mathbf 1\{0\ge U\}$ gives $\mathbb E_U(Y-Y^0)=F(X)/2$. After localization, the decoder keeps only the constant-fraction color/branch matches, multiplies by the target mask, combines the coordinate statistic with $(m_{s,j}-m_0)$ times the mass statistic, and importance-weights by $p_s$. Non-target rings have zero conditional mean after per-query mask averaging. The target rings telescope exactly to $(X-m_0)\mathbf 1\{X\in J_S\}$. A median-of-means aggregation of the resulting scalar sketches supplies confidence $1-\delta/2$.
- Regime: All query randomness, including the localization code, scale/color/branch/type choices, dithers, and per-query countable cell masks, is sampled before messages. Conditional on the independent localization block, the selected refinement path is fixed, so concentration needs no union bound over $\Theta(\lambda/\sigma)$ candidate cells. For an observation at distance $r=|X-m_0|$, any target or non-target activation at level $s\ge1$ has $h_s\lesssim r$, and hence $\sum_{s\ge1:\,\mathrm{active}}h_s^k\le C_k r^k$; the central level uses the separate bound $h_0\mathbb E|X-m_0|\lesssim_k\sigma^2$. Since $1/p_s=Z_S h_s^{k-2}$, this gives refinement variance at most $C_k Z_S\mathbb E|X-m_0|^k\le C_k\sigma^k Z_S$, while outer truncation bias is at most $C_k\sigma^k/h_S^{k-1}\le\epsilon/4$. Consequently $Z_S\asymp_k\sigma^{2-k}$ for $k>2$, $Z_S\asymp\log(\sigma/\epsilon)$ for $k=2$, and $Z_S\asymp_k h_S^{2-k}$ for $1<k<2$, with fixed-horizon absolute-error PAC guarantees and constants depending only on $k$. The localization block's additional $O(\log(1/\delta))$ confidence cost is absorbed by the displayed refinement term because $\epsilon\le c_k\sigma$.

## Goal

- Theorem type: Full constructive three-regime sample-complexity classification theorem.
- Informal statement: Prove that for every fixed $k>1$ there are constants $c_k,C_k>0$ such that, for every $\lambda\ge\sigma>0$, $0<\epsilon\le c_k\sigma$, and $\delta\in(0,1/2)$, the fully non-adaptive localization-plus-padded-ring protocol above uses exactly one bit per independent sample and satisfies $\sup_{D\in\mathcal D(k,\lambda,\sigma)}\Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}\le\delta$, with probability over the samples and all protocol randomness, using
  \[
  n\le C_k\left[\log\frac{\lambda}{\sigma}+
  \begin{cases}
  \dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.35em]
  \dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,&k=2,\\[0.35em]
  \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2.
  \end{cases}\right]
  \]
  Thus the answer to the source existence question is affirmative in all three regimes, without suppressing any $\lambda,\sigma,\epsilon,\delta$ dependence.

## Notes

- Parent foundation papers: *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes* (arXiv:2604.07796); *Robust Mean Estimation under Quantization* (arXiv:2601.07074)
- Transfer map: preserves the first paper's coding-based non-adaptive localization and randomized-threshold refinement identity, and the second paper's dithered bounded-function encoding; changes the location-selected second stage into masked padded-dyadic rings; reuses median-of-means confidence amplification.
- Source alignment: Preserves the unrestricted class, arbitrary randomized non-identical measurable queries, zero adaptive transitions, all $\lambda,\sigma,\epsilon,\delta$ quantifiers, all three fixed-$k$ regimes, the exact $k=2$ logarithm, and constants depending only on $k$; there is no target-changing weakening.
- Progress type: full
- Materiality: The theorem would settle Gap 3 and Open Problem 1 positively: it gives one parameter-complete protocol and explains the three different rates through $Z_S$, rather than proving only a $k=2$ or structured-distribution case.
- Significance: Decoder-side selection of a precommitted dyadic path directly targets the missing zero-transition bridge in the known two-stage protocol. The padded-cell construction retains global arbitrary queries but replaces Fourier small-frequency bias and fixed-range variance by a central-moment charge at the scale where each observation is active.
- Feasibility: Coding localization, one-bit dither identities, and median-of-means are standard/literature-derived. The ring multiplexer is novel example-verified but primitive: disjoint same-color paddings make $F$ a measurable bounded function, $\mathbb E_U(Y-Y^0)=F(X)/2$ is an exact one-line identity, and fresh per-query Rademacher orthogonality cancels every non-target ring. Three concrete checks are: (i) for a point mass or any distribution supported in the selected $J_0$, all higher-level query differences are exactly zero; (ii) for the asymmetric mean-zero two-atom residual with mass $p$ at $R$ and mass $1-p$ at $-pR/(1-p)$, the entire alias/target charge is at most $C_k pR^k Z_S$; and (iii) for an unbounded asymmetric dyadic atomic tail with masses $q_j$ at distances $2^j\sigma$, summing the per-observation geometric charges gives $C_kZ_S\sum_j q_j(2^j\sigma)^k$. At $k=2$, the disjoint target rings also give $\sum_s\mathbb E[(X-m_0)^2\mathbf 1_{R_s}]\le C\sigma^2$, so uniform level sampling costs one $S\asymp\log(\sigma/\epsilon)$, not $S^2$.
- Consistency: Localization success is produced by the independent first block, not assumed as a primitive invariant, and decoder-side path selection never changes a query. The only tail and alias budget is derived from the allowed central $k$-th moment. The supported-in-$J_0$ check preserves the zero-tail-alias baseline, and the setting leaves arbitrary discrete, asymmetric, and unbounded distributions in scope.
