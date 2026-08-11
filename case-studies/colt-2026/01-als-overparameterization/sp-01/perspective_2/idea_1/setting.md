# Formalized Setting

- Basic setup:
  Fix integers \(n,r\), a conditioning parameter \(\kappa\ge1\), and
  deterministic base-factor matrices
  \(\bar A=[\bar a_1,\ldots,\bar a_r]\),
  \(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
  \(\bar C=[\bar c_1,\ldots,\bar c_r]\) in \(\mathbb R^{n\times r}\).
  For \(M\in\{\bar A,\bar B,\bar C\}\), let
  \(D_M=\operatorname{diag}(\|m_1\|_2,\ldots,\|m_r\|_2)\),
  \(\widetilde M=MD_M^{-1}\), and \(G_M=\widetilde M^\top\widetilde M\).
  Let \(\circ\) denote the Hadamard product and define the static cyclic
  Khatri--Rao deviation
  \[
  \Delta_{\mathrm{KR}}
  :=\max\bigl\{
  \|G_{\bar A}\circ G_{\bar B}-I_r\|_{\mathrm{op}},
  \|G_{\bar A}\circ G_{\bar C}-I_r\|_{\mathrm{op}},
  \|G_{\bar B}\circ G_{\bar C}-I_r\|_{\mathrm{op}}
  \bigr\}.
  \]
  Independently perturb all columns in all three modes and write
  \(A=[a_1,\ldots,a_r]\), \(B=[b_1,\ldots,b_r]\), and
  \(C=[c_1,\ldots,c_r]\) for the realized factors. The observed tensor is
  \[
  T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
  \]
  For every realized nonzero column define
  \(\widetilde a_j=a_j/\|a_j\|_2\), and define
  \(\widetilde b_j,\widetilde c_j\) analogously, together with
  \(\tau_j=\|a_j\|_2\|b_j\|_2\|c_j\|_2\). Thus
  \(T=\sum_{j=1}^r\tau_j\widetilde a_j\otimes
  \widetilde b_j\otimes\widetilde c_j\) almost surely.
  Let \(\widetilde A=[\widetilde a_1,\ldots,\widetilde a_r]\) and define
  \(\widetilde B,\widetilde C\) cyclically. Set
  \(G_A=\widetilde A^\top\widetilde A\), with \(G_B,G_C\) defined
  analogously, and define the realized deviation
  \[
  \Delta_{\mathrm{KR}}^{\mathrm{real}}
  :=\max\bigl\{
  \|G_A\circ G_B-I_r\|_{\mathrm{op}},
  \|G_A\circ G_C-I_r\|_{\mathrm{op}},
  \|G_B\circ G_C-I_r\|_{\mathrm{op}}
  \bigr\}.
  \]

  For algorithmic rank \(k\), use signed coefficients
  \(\alpha=(\alpha_1,\ldots,\alpha_k)\) and unit directions
  \(p_i,q_i,s_i\in\mathbb S^{n-1}\). Write
  \(P=(p_1,\ldots,p_k)\), \(Q=(q_1,\ldots,q_k)\),
  \(S=(s_1,\ldots,s_k)\), and \(\theta=(\alpha,P,Q,S)\). Set
  \[
  \Phi(\alpha,P,Q,S)=\sum_{i=1}^k\alpha_i p_i\otimes q_i\otimes s_i,
  \qquad
  F(\alpha,P,Q,S)=\tfrac12\|T-\Phi(\alpha,P,Q,S)\|_F^2.
  \]
  The signed unit-direction parameterization before coefficient clipping has
  the same rank-\(k\) tensor image as the unnormalized CP parameterization.
  Let
  \[
  B_{\mathrm{box}}=4\kappa r\|T\|_F,
  \qquad
  \mathcal D=[-B_{\mathrm{box}},B_{\mathrm{box}}]^k
  \times(\mathbb S^{n-1})^{3k},
  \qquad
  \eta=\frac{1}{128k^2(B_{\mathrm{box}}+\|T\|_F+1)^2}.
  \]
  Define the constrained zero-residual set
  \(\mathcal Z_T=\{\theta\in\mathcal D:\Phi(\theta)=T\}\). Its
  nonemptiness under the realized good-instance event is a conclusion to be
  proved, not an assumption.
  Full-batch projected/Riemannian gradient descent simultaneously maps,
  using gradients evaluated at \(\theta_t\),
  \(\alpha_t-\eta\nabla_\alpha F\) to the coefficient box by Euclidean
  projection and maps each unit direction \(u\in\{p_i,q_i,s_i\}\) by
  \[
  u^+=\operatorname{Retr}_u(-\eta\operatorname{grad}_uF),
  \qquad
  \operatorname{grad}_uF=(I-uu^\top)\nabla_uF,
  \qquad
  \operatorname{Retr}_u(v)=\frac{u+v}{\|u+v\|_2}.
  \]
  For trajectory diagnostics define the target correlations
  \(u_{ij,t}^{(A)}=\langle p_{i,t},\widetilde a_j\rangle\),
  \(u_{ij,t}^{(B)}=\langle q_{i,t},\widetilde b_j\rangle\), and
  \(u_{ij,t}^{(C)}=\langle s_{i,t},\widetilde c_j\rangle\), as well as the
  off-span leakages
  \(\ell_{i,t}^{(A)}=\|P_{\operatorname{col}(A)^\perp}p_{i,t}\|_2\) and
  its two cyclic analogues. Target-channel coverage, persistence of useful
  correlations, bounds on these leakages, coefficient boundedness, entry
  into a local basin, and any Polyak--Lojasiewicz property are quantities to
  be derived; none is part of the admissible input class.
- Technical assumptions:
  - `assump:base-conditioning` (Polynomially conditioned deterministic bases):
    There is a fixed exponent \(c_0>0\) and a parameter
    \(1\le\kappa\le r^{c_0}\) such that every singular value and every
    column norm of each of \(\bar A,\bar B,\bar C\) lies in
    \([\kappa^{-1},\kappa]\).
  - `assump:base-kr-isometry` (Static cyclic Khatri--Rao near-isometry):
    The independently checkable pre-perturbation quantity defined above
    satisfies \(\Delta_{\mathrm{KR}}\le 1/64\).
  - `assump:gaussian-smoothing` (Source Gaussian perturbations):
    Mutually independently over \(j\in[r]\) and over the three modes,
    \[
    a_j-\bar a_j,\ b_j-\bar b_j,\ c_j-\bar c_j
    \sim\mathcal N(0,\rho^2 I_n/n).
    \]
  - `assump:dimension-regime` (Ambient dimension):
    \(r\ge2\) and \(n\ge C_{\mathrm{dim}}r\log r\), where
    \(C_{\mathrm{dim}}>0\) is fixed, may depend only on the fixed exponent
    \(c_0\), and the claim is asymptotic in \(r\).
  - `assump:smoothing-scale` (Inverse-polynomial smoothing):
    \(0<\rho\le1\) and \(\rho^{-1}\le r^{c_\rho}\) for a fixed exponent
    \(c_\rho>0\). This is the quantitative meaning of
    \(\rho=1/\operatorname{poly}(r)\) used for the runtime specialization.
  - `assump:perturbation-margin` (Conditioning-to-smoothing margin):
    \(\rho\kappa^6\le10^{-3}\).
  - `assump:rank-regime` (Explicit subquadratic algorithmic rank):
    \[
    k=U(r):=\left\lceil C_{\mathrm{rank}}r^{3/2}(\log r)^2\right\rceil,
    \]
    where \(C_{\mathrm{rank}}>0\) is fixed, may depend only on the fixed
    exponents \(c_0,c_\rho\), and is chosen sufficiently large for the
    claimed concentration and anti-concentration bounds. In particular,
    \(k/r^2=O((\log r)^2/\sqrt r)=o(1)\) and \(k>r\) for all sufficiently
    large \(r\).
  - `assump:random-initialization` (One small random initialization):
    Conditional on the realized tensor, all \(p_{i,0},q_{i,0},s_{i,0}\)
    are mutually independent Haar draws from \(\mathbb S^{n-1}\), all
    \(\sigma_i\) are independent Rademacher signs independent of those
    directions, and
    \[
    \alpha_{i,0}=\sigma_i\alpha_0,
    \qquad
    \alpha_0=\|T\|_F(nr\kappa/\rho)^{-10}.
    \]
    No restart, algebraic initializer, deflation step, regularizer, or
    assumed basin test is used.
  - `assump:accuracy-range` (Relative-error tolerance):
    The requested accuracy satisfies \(0<\epsilon<1\).

# Formalized Goal

- Goal statement:
  Establish the following end-to-end quantitative landscape-and-trajectory
  target for the single algorithm and parameter regime above. Uniformly for
  every deterministic base triple satisfying
  `assump:base-conditioning`, `assump:base-kr-isometry`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:perturbation-margin`, use the exact rank in
  `assump:rank-regime` and any tolerance in `assump:accuracy-range`. Prove
  under `assump:gaussian-smoothing` that
  \(\Pr(\Delta_{\mathrm{KR}}^{\mathrm{real}}\le1/32)\ge1-r^{-12}\), and
  construct a good-instance event \(\mathcal E_{\mathrm{inst}}\subseteq
  \{\Delta_{\mathrm{KR}}^{\mathrm{real}}\le1/32\}\) with
  \(\Pr(\mathcal E_{\mathrm{inst}})\ge1-r^{-10}\) over the once-drawn
  smoothed instance on which the following conclusions hold. First,
  \(\mathcal Z_T\ne\varnothing\), and
  the constrained normalized loss
  on \(\mathcal D\) has a quantitative certificate for every non-global
  critical region: outside a coverage-conditioned neighborhood of its
  zero-residual set \(\mathcal Z_T\), one obtains either a
  projected/Riemannian gradient lower
  bound, a polynomial tangent negative-curvature direction, or an explicit
  feasible dormant-component cubic escape direction; inside that
  neighborhood, the loss satisfies a quantitative Polyak--Lojasiewicz
  inequality. The certificate thresholds, neighborhood radius, curvature
  scale, cubic decrease, and PL constant must be explicit inverse-polynomial
  functions of the exposed parameters \(n,r,k,\kappa,\rho\), derived from the
  primitive assumptions rather than imposed as additional hypotheses.
  Second, conditional on every such good realized instance, with probability
  at least \(1-r^{-10}\) over the one initialization in
  `assump:random-initialization`, the stated iterates derive a winning
  representative for every target channel from random-product order
  statistics and the exact first-gradient image, maintain quantitatively
  bounded cyclic off-span leakage and the channel-growth mechanism without
  assuming either property, and enter the derived PL neighborhood within
  \(P_{\mathrm{entry}}(n,r,k,\kappa,\rho^{-1})\) iterations. After at most
  another \(P_{\mathrm{refine}}(n,r,k,\kappa,\rho^{-1})\log(1/\epsilon)\)
  iterations, the output \(\theta_t=(\alpha_t,P_t,Q_t,S_t)\) satisfies
  \[
  \|T-\Phi(\theta_t)\|_F\le\epsilon\|T\|_F.
  \]
  Here \(P_{\mathrm{entry}}\), \(P_{\mathrm{refine}}\), and the work per
  iteration are to be given explicitly as polynomials in
  \(n,r,k,\kappa,\rho^{-1}\), while all landscape scales are to be explicit
  inverse-polynomial functions of the same variables. Their degrees and
  hidden constants
  may depend only on the fixed exponents \(c_0,c_\rho\) and absolute numerical
  margins, and not on \(n,r,k,\kappa,\rho,\epsilon\) or the chosen bases.
  Consequently, because \(k,\kappa,\rho^{-1}=\operatorname{poly}(r)\), the
  total runtime is
  \(\operatorname{poly}(n,r,\log(1/\epsilon))\). The instance and
  initialization probabilities remain separate, and no restart is required.

# Note

- Rigor:
  This is a target-spec formalization because the approved idea fixes the
  rank, algorithm, probability modes, runtime class, and relative-error
  target but does not approve numerical landscape thresholds. Source
  alignment is preserved: the exact asymmetric rank-\(k\) CP least-squares
  objective, source Gaussian smoothing, one random initialization,
  \(U(r)=O(r^{3/2}\log^2r)=o(r^2)\) with exponent \(1+\beta=3/2\), polynomial
  runtime, and relative Frobenius error are unchanged. The explicit
  source-scope delta is the polynomially well-conditioned reading of the
  deterministic bases, `assump:base-kr-isometry`, and
  `assump:perturbation-margin`; the remaining gap is arbitrary bases and
  merely well-conditioned bases without those two restrictions. Progress
  type is `conditional`. Materiality comes from crossing the quadratic
  threshold on a class containing orthogonal triples, one correlated
  well-conditioned mode paired with two orthogonal modes, incoherent dense
  triples with \(r\max\{\mu_A\mu_B,\mu_A\mu_C,\mu_B\mu_C\}\le1/64\), and
  complementary block-correlated triples satisfying the same pair-product
  Gram bound.

  Assumption support is as follows. `assump:base-conditioning` and the
  Khatri--Rao notation are inherited from the source prose and *Guarantees
  for Alternating Least Squares in Overparameterized Tensor Decompositions*.
  `assump:gaussian-smoothing`, `assump:dimension-regime`,
  `assump:smoothing-scale`, and `assump:accuracy-range` are inherited from
  the source smoothed model and requested theorem regime.
  `assump:base-kr-isometry` is a novel primitive condition verified by the
  orthogonal-mode, incoherent-dense-frame, and complementary-block examples
  listed above; `assump:perturbation-margin` is independently checkable on
  each example whenever \(\rho\le10^{-3}\kappa^{-6}\).
  `assump:rank-regime` is the approved explicit \(c=\beta=1/2\)
  redundant-probe regime. `assump:random-initialization` is supported by the
  random-feature mechanism in *Guarantees for Alternating Least Squares in
  Overparameterized Tensor Decompositions* and the small-initialization
  mechanism in *Beyond Lazy Training for Over-parameterized Tensor
  Decomposition*. Realized Khatri--Rao near-isometry, initial feature
  nondegeneracy,
  winning-seed coverage, off-span control, persistence, coefficient
  boundedness, basin entry, PL validity, and convergence are deliberately
  excluded from this inventory and remain proof obligations.
