# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: `private_pac_sample_complexity_characterization`
  - model_class: `finite_littlestone_binary_concept_classes`
  - data_assumption: `realizable_distribution_free`
  - regime: `approximate_central_dp`
  - algorithm: `general_algorithm`

## Added Dimensions

- Dimension: Require the class to have a canonical disjoint Cartesian factorization. Concretely, the finest partition \(X=\bigsqcup_{i=1}^k X_i\) for which \(C=\prod_{i=1}^k C_i\), with \(C_i=\{c|_{X_i}:c\in C\}\), exists, every factor is nonconstant, and every factor satisfies \(\operatorname{VC}(C_i)=1\) and \(d_i:=\operatorname{LD}(C_i)<\infty\).
- Dimension: Define the intrinsic direct-sum measure
  \[
  M_{\oplus}(C):=\sum_{i=1}^k\bigl(1+\log^*(d_i+1)\bigr).
  \]
  The factorization gives \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\), and, when the factors are finite, \(\log|C|=\sum_i\log|C_i|\); these quantities are not identified with one another.

## Setting

- Context: Information-theoretic realizable binary PAC learning for the above Cartesian-factorizable subclass of all finite-Littlestone classes; the factorization is a static property of \(C\), not an algorithm, learner, stability event, or DP-divergence certificate.
- Model: A target is an arbitrary tuple \(c=(c_1,\ldots,c_k)\in\prod_i C_i\), while the learner may output any improper hypothesis on \(X\) and may be computationally unbounded.
- Data: Examples are i.i.d. from an arbitrary distribution \(D\) on \(X\). Writing \(\rho_i=D(X_i)\) only decomposes \(D\) into its block masses and conditional distributions; no balance, product-distribution, finite-domain, or public-data assumption is imposed.
- Algorithm: Put \(s_i:=1+\log^*(d_i+1)\), and for the upper bound fix \(\alpha_{\mathrm{fac}}=1/64\), \(\beta_{\mathrm{fac}}=1/4096\), \(\varepsilon_{\mathrm{fac}}=\varepsilon/2\), and \(\delta_{\mathrm{fac}}=\delta/2\). For a universal constant \(K\) from Yan's improper VC-one theorem, use the explicit factor quota
  \[
  q_i:=\left\lceil
  K\frac{s_i\log^2\!\bigl(s_i/(\varepsilon_{\mathrm{fac}}\beta_{\mathrm{fac}}\delta_{\mathrm{fac}})\bigr)}{\varepsilon_{\mathrm{fac}}}
  \frac{48}{\alpha_{\mathrm{fac}}}
  \left(10\log\frac{48e}{\alpha_{\mathrm{fac}}}+\log\frac{5}{\beta_{\mathrm{fac}}}\right)
  \right\rceil.
  \]
  Route records by block, take the first \(q_i\) routed records in sample order, pad a shortage to length \(q_i\) with a fixed factor record, run the factor learner, and combine its hypotheses piecewise; utility is invoked only on unpadded factor inputs. Under replacement adjacency, a record moved from block \(a\) to block \(b\) changes the selected/padded input of at most those two factor mechanisms by one replacement each. Basic composition of their \((\varepsilon/2,\delta/2)\) guarantees therefore makes the joint learner \((\varepsilon,\delta)\)-DP, with no \(k\)-dependent privacy loss. The lower bound quantifies over every approximate-DP learner, including joint and improper learners, and uses independently chosen factor targets with an adversarial block-mixture distribution; every factor record used in its simulation enters at most one global row, so one factor replacement induces one global replacement and preserves \((\varepsilon,\delta)\)-DP.
- Regime: Fix global accuracy and failure probability at \(1/16\), and allow \(0<\varepsilon\le 1/10\). Let
  \[
  \pi_i:=\frac{s_i}{M_{\oplus}(C)},\qquad
  m_{n,i}:=\max\{8,\lceil4n\pi_i\rceil\}.
  \]
  For the lower direction, require only the budget-sensitive, source-supported conjunction
  \[
  0<\delta\le
  \min\left\{
  \frac{1}{n\log(n+1)},
  \min_{1\le i\le k}\frac{c_{\delta}}{m_{n,i}^2\log(m_{n,i}+1)}
  \right\}
  \]
  for an absolute constant \(c_{\delta}>0\). The first term enforces the source convention \(\delta=o(1/n)\); the second imposes the Alon et al. hypothesis at each factor-sample budget at which the lower theorem may be consumed. The number of nonconstant factors and all \(d_i\) are finite but otherwise unrestricted.

## Goal

- Theorem type: Conditional two-sided approximate-DP direct-sum characterization.
- Informal statement: Let \(\mathrm{SC}_{\varepsilon,\delta}(C)\) be the least \(n\) for which an \((\varepsilon,\delta)\)-DP learner has distributional 0-1 error at most \(1/16\) with probability at least \(15/16\). Uniformly over every class satisfying the factorization condition, every \(0<\varepsilon\le1/10\), and every \(0<\delta<1\), prove the upper bound, and prove the lower bound for every candidate \(n\) satisfying the displayed budget-sensitive \(\delta\) condition. Thus, whenever that condition holds at \(n=\mathrm{SC}_{\varepsilon,\delta}(C)\),
  \[
  \Omega\!\left(M_{\oplus}(C)\right)
  \;\le\;
  \mathrm{SC}_{\varepsilon,\delta}(C)
  \;\le\;
  O\!\left(\sum_{i=1}^k q_i\right)
  \;\le\;
  O\!\left(
  \frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}
  \right)
  =\widetilde O\!\left(\frac{M_{\oplus}(C)}{\varepsilon}\right),
  \]
  where the displayed logarithm is the dependence inherited from Yan, the hidden constants are universal after fixing the stated accuracy/confidence constants, and there is no hidden dependence on \(k\), the \(d_i\), or factor cardinalities beyond \(M_{\oplus}(C)\). The lower bound must be a direct-sum theorem for unrestricted improper learners, not a proper-learning or pure-DP reduction. In particular, for fixed small \(\varepsilon\), this is the intended class-complexity characterization up to Yan's displayed logarithmic dependence on \(1/\delta\).

## Notes

- Parent foundation papers: *An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1* (arXiv:2505.06581); *Private PAC Learning Implies Finite Littlestone Dimension* (arXiv:1806.00949)
- Transfer map: preserves Yan's sharp VC-one upper and the unrestricted Alon et al. \(\log^*\operatorname{LD}\) lower interface; changes one factor to the canonical disjoint Cartesian product; reuses basic privacy composition at two affected blocks and adds a one-record block-mixture direct-sum lower lemma.
- Source alignment: Preserves approximate central DP with \(0<\varepsilon\le1/10\) and \(\delta=o(1/n)\), realizability, arbitrary distributions, unrestricted improper learners, and explicit VC/LD/log-star/cardinality distinctions. The lower-bound \(\delta\) conjunct is imposed at the actual factor budgets required by Alon et al., rather than by a stronger uniform convenience schedule. The Cartesian VC-one factorization is an explicit target-changing restriction; arbitrary finite-Littlestone classes with a higher-VC indecomposable factor remain open.
- Progress type: conditional
- Materiality: This gives a class-intrinsic near-matching characterization for products with arbitrarily large VC dimension and heterogeneous Littlestone dimensions, and determines that their privacy overhead aggregates as \(\sum_i\log^*d_i\), between the general \(\operatorname{VC}+\log^*\operatorname{LD}\) lower baseline and \(\operatorname{VC}(1+\log^*\operatorname{LD})\), while \(\log|C|\) may be much larger.
- Significance: The branch goes beyond a single family and beyond the known VC-one theorem by proving a direct-sum law for every finite product of arbitrary VC-one classes. Unrestricted padded representations either revert to pure-DP representation dimension or encode a learner, whereas this measure is read directly from the class's Cartesian components.
- Feasibility: Yan's upper theorem is literature-derived for arbitrary positive \(\delta\) and has exactly the displayed \(1/\varepsilon\) and squared-log dependence; using \((\varepsilon/2,\delta/2)\) stays inside its supported range. Alon et al. prove the unrestricted lower interface at \(\varepsilon=0.1\) and \(\delta\le c_{\delta}/(m^2\log(m+1))\); privacy monotonicity extends it to every \(0<\varepsilon\le0.1\). The padded fixed-length routing and at-most-two-block basic composition are standard/literature-derived privacy mechanisms. For \(N_i\sim\mathrm{Bin}(n,\rho_i)\), \(n\) a sufficiently large universal multiple of \(\sum_iq_i\) makes the under-quota mass at most a constant accuracy budget via \(\sum_{\rho_i<2q_i/n}\rho_i\le 2\sum_iq_i/n\) and Chernoff control on the remaining blocks; the fixed \(\alpha_{\mathrm{fac}},\beta_{\mathrm{fac}}\) then control the weighted factor error without a union bound or balance assumption. For the lower direction, a hidden factor \(i\) receives \(m_{n,i}\) input records, its simulated usage is binomial with mean \(n\pi_i\), and the factor-four buffer makes overflow a constant-probability loss that can be absorbed in the fixed accuracy gap. Because each factor input record is used in at most one simulated row, the reduction preserves replacement adjacency and hence the global learner's exact \((\varepsilon,\delta)\) budget. Full Cartesian equality supplies independent hard target coordinates, records outside \(X_i\) are uninformative about \(c_i\), and weights \(\pi_i\propto s_i\) turn the per-factor lower scales into an additive direct-sum target. This is directly checkable for products of finite-chain thresholds, products of point functions, and heterogeneous products containing both. Disjointness is needed for the two-block composition bridge, full product equality is needed for independent lower witnesses, and VC-one is the weakest currently supported factor condition because an arbitrary finite-Littlestone factor reinstates the original gap; no ordering, properness, efficiency, or finite-cardinality condition is needed.
- Consistency: The finest product partition makes \(M_{\oplus}\) intrinsic rather than a chosen representation or desired certificate, and its defining tests mention neither a learner nor DP divergence. Threshold products test the log-star terms, point-function products test the additive VC terms, and heterogeneous products test nonuniform block weights. The conjunction over all \(m_{n,i}\) is required because the averaging argument may identify its successful hard factor only after the global learner is run; it is still strictly weaker than a uniform \(O(1/(n^2\log n))\) condition whenever every \(\pi_i\) is small, while the separate \(1/(n\log(n+1))\) term records the source's \(\delta\ll1/n\) convention. Weakening Cartesian equality to a subclass destroys the independent-target lower source, while allowing overlapping blocks destroys the at-most-two-factor replacement property, so the stated structural clauses are tied to the two theorem directions rather than proof convenience.
