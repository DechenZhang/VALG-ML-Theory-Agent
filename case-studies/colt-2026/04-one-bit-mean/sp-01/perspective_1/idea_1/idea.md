# Idea

## Perspective Anchor

- Tuple: `analysis_target=order_optimal_sample_complexity_upper_bound; model_class=fully_nonadaptive_arbitrary_measurable_one_bit_protocol; data_assumption=unrestricted_D(k,lambda,sigma)_finite_k_moment_class; regime=universal_three_k_regime_PAC_scope; algorithm=precommitted_multiscale_localization_refinement_protocol`

## Added Dimensions

- Dimension: use two independent but simultaneously precommitted subblocks: the coding-based non-adaptive localization block of arXiv:2604.07796 and a center-free redundant shifted-dyadic digit block whose bits are reinterpreted only at decoding time.
- Dimension: at resolution (h_j=2^j h_0), use four shifted floor quantizers (Q_{j,a}(x)=a h_j+h_j\lfloor(x-a h_j)/h_j\rfloor), (a\in\{0,1/4,1/2,3/4\}), and dithered one-bit queries of the bounded digit (F_{j,a,b}=Q_{j,a}-Q_{j+1,b}).
- Dimension: truncate the digit telescope at (h_0=\Theta(\epsilon)) and (H=h_J=\Theta_k(\sigma(\sigma/\epsilon)^{1/(k-1)})); sample fine levels with mass proportional to (h_j/\sigma) and coarse levels with mass proportional to ((h_j/\sigma)^{2-k}).

## Setting

- Context: Fix known (k>1), (lambda\geq\sigma>0), (0<\epsilon\leq c_k\sigma), and (delta\in(0,1/2)). Split the sample indices in advance into a localization block and a refinement block, and generate every query set and all public randomness for both blocks before any message is observed.
- Model: The localization block is the non-adaptive coding localization of arXiv:2604.07796; its cited guarantee supplies (with probability at least (1-\delta/4)) an output (c) satisfying (|c-\mu|\leq L_k\sigma). For a refinement index, pre-sample a level (j\in\{0,\ldots,J-1\}), an offset pair ((a,b)) uniformly from ({0,1/4,1/2,3/4}^2), and (U\sim\mathrm{Unif}[-1,2]), and query the measurable set
  
  \[
  A_{j,a,b,U}=\{x:F_{j,a,b}(x)/h_j\geq U\}.
  \]
  
  Since (-h_j<F_{j,a,b}(x)<2h_j), the dither identity gives
  
  \[
  \mathbb E_U\!\left[3h_j\bigl(\mathbf 1\{X\in A_{j,a,b,U}\}-\mathbf 1\{F_{j,a,b}(c)/h_j\geq U\}\bigr)\right]
  =F_{j,a,b}(X)-F_{j,a,b}(c).
  \]
- Data: The samples are independent with common law (D\in\mathcal D(k,\lambda,\sigma)). No support, symmetry, density, likelihood, or tail assumption beyond the stated central (k)-th moment is added.
- Algorithm: After all bits arrive, decode (c) from the independent localization block. At every level choose (a_j(c)) whose shifted (h_j)-cell contains (c) at distance at least (3h_j/8) from both boundaries. Retain, by zeroing the other terms in the decoder, only refinement samples whose offset pair equals ((a_j(c),a_{j+1}(c))), and multiply a retained centered dither bit by (16/p_j), where (p_j) is its precommitted level probability. Normalize the fine weights (p_j\propto h_j/\sigma) over (h_j\leq\sigma) and the coarse weights (p_j\propto(h_j/\sigma)^{2-k}) over (h_j>\sigma), assigning one half of the total mass to each nonempty group. Apply median-of-means to these importance-weighted pseudo-observations and add (c). With (Q_j=Q_{j,a_j(c)}), the exact deterministic identity
  
  \[
  \sum_{j=0}^{J-1}\!\left[(Q_j-Q_{j+1})(x)-(Q_j-Q_{j+1})(c)\right]
  =[Q_0(x)-Q_0(c)]-[Q_J(x)-Q_J(c)]
  \]
  
  leaves a fine residual of magnitude at most (h_0) and a top residual supported on (|x-c|\geq 3H/8). A level-(j) digit difference is identically zero on (|x-c|\leq 3h_j/8) and has magnitude (O(h_j)). Allocate a constant total level mass to (h_j\leq\sigma) with (p_j\propto h_j/\sigma), and the remaining constant mass to (h_j>\sigma) with (p_j\propto(h_j/\sigma)^{2-k}).
- Regime: The same construction covers all (lambda\geq\sigma>0), the full PAC range, and all (1<k<2), (k=2), and (k>2). Conditional on successful localization, (mathbb E|X-c|^k\leq C_k\sigma^k). The digit variance is (O_k(\sigma^2)) for (k>2), (O(\sigma^2\log(\sigma/\epsilon))) for (k=2), and (O_k(\sigma^kH^{2-k})) for (1<k<2); the omitted top residual is (O_k(\sigma^k/H^{k-1})=O(\epsilon)).

## Goal

- Theorem type: Uniform PAC order-optimal fully non-adaptive arbitrary-query upper bound.
- Informal statement: For every fixed (k>1), prove that constants (c_k,C_k>0) exist such that the precommitted protocol above is ((\epsilon,\delta))-accurate uniformly over every (D\in\mathcal D(k,\lambda,\sigma)), for every (lambda\geq\sigma>0), (0<\epsilon\leq c_k\sigma), and (delta\in(0,1/2)), using at most
  
  \[
  C_k\!\left[\log\frac{\lambda}{\sigma}+\begin{cases}
  \dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.35em]
  \dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,&k=2,\\[0.35em]
  \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2
  \end{cases}\right]
  \]
  
  samples, with probability over samples and all protocol randomness.

## Notes

- Parent foundation papers: *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes* (arXiv:2604.07796); *Robust Mean Estimation under Quantization* (arXiv:2601.07074)
- Transfer map: preserves the former paper's coding localization, three-regime moment accounting, and confidence amplification; changes its location-chosen refinement into a decoder-selected precommitted digit bank; reuses the latter paper's uniform-dither identity on bounded dyadic digits.
- Source alignment: preserves arbitrary measurable fully non-adaptive one-bit queries, unrestricted (mathcal D(k,\lambda,\sigma)), every parameter and quantifier, all three (k)-regimes, the exact displayed (r_k), and constants depending only on (k); localization is produced by the same precommitted transcript and is not assumed.
- Progress type: full
- Materiality: If the digit variance and residual bounds are proved as stated, this constructs the missing zero-transition protocol and closes Gap 1 over its complete source-locked scope.
- Significance: The digit telescope removes the two failures of nearby constructions: decoder-side recentering avoids a fixed range proportional to (lambda), while stable shifted cells make coarse digits activate only on moment-controlled tails rather than paying the Fourier construction's small-frequency bias.
- Feasibility: Localization and median-of-means are standard/literature-derived, and bounded-digit dithering is inherited from arXiv:2601.07074. The shifted-digit compiler is novel example-verified: (i) if (c) lies exactly on an unshifted boundary, one of the four offsets places it at least (3h_j/8) inside a cell; (ii) for (x=c), every centered digit and the top residual vanish exactly; (iii) for (x=c\pm h_j/8), every level of width at least (h_j) is pathwise inactive while the finer digit telescope preserves the signed displacement up to (h_0); and (iv) for the asymmetric rare-tail law (X-\mu=R) with probability (p) and (X-\mu=-pR/(1-p)) otherwise, with (pR^k\lesssim\sigma^k), only scales (h_j\lesssim R) activate, the weighted second moment is controlled by the geometric sum of (h_j^k), and the omitted tail is at most (O(\sigma^k/H^{k-1})). The coarse normalization is respectively (O_k(1)), (Theta(\log(\sigma/\epsilon))), and (Theta_k((H/\sigma)^{2-k})), giving exactly the three target refinement orders; sparse dictionary multiplexing and a Fourier-phase route were rejected because their background variance or bias did not pass the full-rate gate.
- Consistency: Each refinement bit is the indicator of a precommitted measurable union of intervals and uses one independent sample; (c) changes only the decoder's baseline and choice among already queried offset pairs. The exact telescope is noncircular, the stable-cell rule is primitive and directly checkable, the moment bound supplies both the level-activation variance and top-tail bias, and no generated localization event, stronger data class, restricted query family, or hidden parameter dependence is made theorem-facing.
