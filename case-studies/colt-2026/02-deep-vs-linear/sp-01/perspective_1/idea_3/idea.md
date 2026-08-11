# Idea

## Perspective Anchor

- Tuple: (analysis_target=deterministic_dimension_complexity_linear_TS_implication, model_class=fully_connected_relu_network_with_S_parameters, data_assumption=universal_all_distribution_all_target_learning_premise, regime=arbitrary_boolean_cube_class_with_epsilon_below_one_quarter, algorithm=gaussian_initialized_logistic_one_sample_sgd_with_latter_half_time_aggregation)

## Added Dimensions

- Target-changing fallback: after screening unsupported source-faithful full routes, replace the exact deterministic conclusion by the source-endorsed probabilistic-dimension target while retaining the exact learner premise and exposing the added representation error.
- Architecture specialization: fix a universal constant depth bound $L_0$ and require the source architecture to have $1\le L\le L_0$; widths remain arbitrary and every layer remains trainable.
- Primitive robust-tube condition: require a static activation-margin and worst-case gradient-budget event, defined on a parameter ball before any SGD samples are drawn, to hold under Gaussian initialization with failure probability at most an exposed $\delta_0\le\varepsilon$.
- Representation mechanism: on the robust event, expand every exact latter-half aggregate in the fixed path-feature map determined by the initialization gate pattern; average only over this target- and distribution-independent feature-map law.

## Setting

- Context: $\mathcal X=\{-1,+1\}^n$ and $\mathcal H\subseteq\{-1,+1\}^{\mathcal X}$ is arbitrary. Let $s_0:=\operatorname{sign}(0)\in\{-1,+1\}$ be the fixed source tie label and define $\operatorname{sign}_{s_0}(z)=+1$ for $z>0$, $-1$ for $z<0$, and $s_0$ for $z=0$. For $\alpha\ge0$, use the exact nonvacuous quantifier order
  \[
  \operatorname{dc}_{\alpha}(\mathcal H)
  :=\min\left\{d\ge0:\ \exists\mathcal P\ \forall\mathcal D\ \forall h\in\mathcal H,\quad
  \mathbb E_{\varphi\sim\mathcal P}\!\left[
  \inf_{w\in\mathbb R^d}\Pr_{x\sim\mathcal D}
  \bigl(\operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0\bigr)
  \right]\le\alpha\right\},
  \]
  where $\mathcal P$ is a law over maps $\varphi:\mathcal X\to\mathbb R^d$ chosen before every later pair $(\mathcal D,h)$.
- Model: use the exact bias-free fully connected ReLU network from the source with widths $n_0=n,n_1,\ldots,n_{L-1},n_L=1$, parameter count $S=\sum_{\ell=1}^L n_\ell n_{\ell-1}$, independent fan-in-scaled Gaussian initialization, and the fixed constant-depth restriction $L\le L_0$.
- Data: one fixed architecture, constant stepsize $\eta$, and positive step count $T$ attain expected classification error at most $\varepsilon<1/4$ for every distribution $\mathcal D$ on $\mathcal X$ and every $h^\star\in\mathcal H$; expectation remains over initialization and fresh one-sample SGD draws.
- Algorithm: use exactly the source logistic loss and one-sample update on every layer, and return $\operatorname{sign}_{s_0}$ of the sum of network outputs over the latter half of the trajectory, with the same fixed tie label as in the source protocol.
- Regime: fix $r>0$ and $0\le\delta_0\le\varepsilon$ before initialization, $\mathcal D$, and $h$. For initialization $\theta^{(0)}$, let $B_\infty(\theta^{(0)},r)$ be its closed coordinatewise radius-$r$ ball and let $u_{\ell,j}(\theta,x)$ be hidden-unit $(\ell,j)$'s preactivation. Define
  \[
  M_r(\theta^{(0)}):=
  \inf_{\substack{\theta\in B_\infty(\theta^{(0)},r),\ x\in\mathcal X,\\1\le\ell\le L-1,\ 1\le j\le n_\ell}}
  |u_{\ell,j}(\theta,x)|,
  \qquad
  G_r(\theta^{(0)}):=
  \sup_{\substack{\theta\in B_\infty(\theta^{(0)},r),\ x\in\mathcal X,\\y\in\{-1,+1\}}}
  \left\|\nabla_\theta\ell\bigl(yf_\theta(x)\bigr)\right\|_\infty,
  \]
  where the latter is the coordinate sup norm of the full vectorized parameter gradient under the fixed source ReLU derivative convention. When $L=1$, the hidden-unit infimum is over the empty set and, by convention, $M_r:=+\infty$. The robust event is $E_r:=\{M_r>0,\ \eta T G_r\le r\}$, and the added primitive condition is $\Pr_{\theta^{(0)}}(E_r)\ge1-\delta_0$. This is a static finite-domain robustness condition, not an assumption about the realized SGD sample path or a representation conclusion.

## Goal

- Theorem type: conditional source-endorsed probabilistic-dimension upper bound.
- Informal statement: under the exact universal SGD premise, its fixed tie convention, and the robust-tube condition, with $d_{\rm path}:=\prod_{\ell=0}^{L-1}n_\ell$, prove $\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\le S^{L_0}$; in particular, $\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}$ when $\delta_0\le\varepsilon$.

## Notes

- Parent foundation papers: Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent? (COLT 2026); Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity (COLT 2020, arXiv:2003.04180)
- Transfer map: preserves the exact Gaussian/logistic/one-sample-SGD/latter-half protocol; adds a static robust initialization tube and fixed constant depth, then reuses the probabilistic-dimension quantifier order with an exact fixed-gate path expansion.
- Source alignment: the learner, expectation mode, and universal quantifiers over $(\mathcal D,h)$ are unchanged. The target change is explicit: this is a conditional bound on $\operatorname{dc}_{\varepsilon+\delta_0}$ at fixed constant depth, not an unconditional deterministic bound. General depth, the source regime without robust stability, and the exact deterministic $C T S$ implication remain open.
- Progress type: conditional
- Materiality: for $\delta_0\le\varepsilon$, the conclusion has the source-requested $\operatorname{dc}_{C\varepsilon}$ form with $C=2$ and explicit polynomial dimension $S^{L_0}$. It derives the target-independent feature-law producer in a checkable stable-gate regime without claiming deterministic exactification.
- Significance: a fresh source-faithful full-candidate screen found no supported route. A shared-rank/minimax construction still produces features depending on $(\mathcal D,h)$ rather than one rank-$O(TS)$ factorization; the exact transcript-to-SCO/topological route has no producer for prediction-preserving convex fibers or exact shared derandomization; an unconditional path-feature route has neither gate stability under the source premise nor a conversion from positive expected error to exact deterministic representation; and sign-rank/parity counterexample candidates have no theorem establishing the exact universal SGD premise. The selected fallback is the weakest supported target change and is distinct from Perspective 2's confident-map amplification and Perspective 3's depth-two odd/high-accuracy identity embedding.
- Feasibility: the robust-tube condition itself is novel example-verified; the implication from $E_r$ to gate stability is the standard small-movement argument; and fixed-gate path expansion is standard algebra, with the exact finite-domain formulation checked directly. On $E_r$, induction gives $\|\theta^{(t)}-\theta^{(0)}\|_\infty\le t\eta G_r\le r$ for every possible labeled sample history, while $M_r>0$ fixes every hidden gate. For a path $p=(i_0,\ldots,i_{L-1})$, set $\varphi_{\theta^{(0)},p}(x)=x_{i_0}\prod_{\ell=1}^{L-1}{\bf1}\{u^{(0)}_{\ell,i_\ell}(x)>0\}$. Every network output and latter-half aggregate is then exactly the same real linear score in this one $d_{\rm path}$-dimensional map; applying the same $\operatorname{sign}_{s_0}$ therefore preserves zero-score ties exactly. For each stable initialization, its best tie-resolved linear-classifier error is at most the conditional sample-path expected SGD error; averaging over initialization and charging $E_r^c$ by one gives the claimed $\varepsilon+\delta_0$ error. Finally, $d_{\rm path}\le S^L\le S^{L_0}$. The robust condition has the following separate verification regimes. (i) If $L=1$, then $M_r=+\infty$ and the logistic linear-model gradient satisfies $G_r\le1$ on Boolean inputs, so any $r\ge\eta T$ makes $E_r$ deterministic. (ii) For any fixed depth-two architecture and finite $T$, take a deterministic $r(\eta)\downarrow0$ with $\eta/r(\eta)\downarrow0$. The finite set of Gaussian first-layer preactivations is nonzero almost surely and the local full-gradient suprema are finite, hence $\Pr(E_{r(\eta)})\to1$ as $\eta\downarrow0$. (iii) More generally, for fixed depth and widths let $\beta:=2^n\sum_{\ell=1}^{L-2}2^{-n_\ell}$. Conditional on a nonzero preceding activation, each Gaussian preactivation is nonzero almost surely and a whole width-$n_\ell$ ReLU layer dies with probability $2^{-n_\ell}$; thus a union bound gives $\Pr(M_0>0)\ge1-\beta$. If $\beta<\delta_0$, then the same $r(\eta)$ argument gives $\Pr(E_{r(\eta)})\ge1-\delta_0$ for all sufficiently small $\eta$. (iv) A concrete depth-three support witness has $n=1$, $n_1=n_2=2$, $W_1=(1,-1)^\top$, $W_2=\left(\begin{smallmatrix}2&-1\\-1&2\end{smallmatrix}\right)$, and $W_3=(1,1)$. Its hidden preactivations are $(1,-1),(2,-1)$ at $x=1$ and $(-1,1),(-1,2)$ at $x=-1$, so every hidden margin is at least one. Continuity yields a positive-margin parameter neighborhood, compactness yields a uniform finite $G_r$ there, sufficiently small $\eta$ enforces the step budget, and Gaussian full support gives that neighborhood positive probability.
- Consistency: $E_r$ is determined by initialization, a fixed parameter ball, and worst-case static bounds before the run; it is not a hidden generated invariant. The feature-map law is the Gaussian-initialization law of the gate map and is fixed independently of $\mathcal D$ and $h$. All layers still follow the exact SGD update, unstable initializations are retained through the explicit $\delta_0$ charge, and no confident representation, oddness, identity embedding, frozen tangent model, exact convex reduction, or desired deterministic map is assumed.
