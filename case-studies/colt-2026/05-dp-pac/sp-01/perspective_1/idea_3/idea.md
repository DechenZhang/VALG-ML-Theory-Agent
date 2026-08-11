# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: `private_pac_sample_complexity_characterization`
  - model_class: `finite_littlestone_binary_concept_classes`
  - data_assumption: `realizable_distribution_free`
  - regime: `approximate_central_dp`
  - algorithm: `general_algorithm`

## Added Dimensions

- Dimension: Retain the canonical disjoint Cartesian factorization from the preceding branch: \(X=\bigsqcup_{i=1}^kX_i\), \(C=\prod_{i=1}^k C_i\), every factor is nonconstant, \(\operatorname{VC}(C_i)=1\), and \(d_i:=\operatorname{LD}(C_i)<\infty\). Define \(s_i:=1+\log^*(d_i+1)\) and the intrinsic direct-sum measure
  \[
  M_{\oplus}(C):=\sum_{i=1}^k s_i.
  \]
- Dimension: Add the primitive *countably coded evaluation* condition. Each block \(X_i\) is measurable, and the equivalence relation
  \[
  x\equiv_i x'\quad\Longleftrightarrow\quad
  c(x)=c(x')\ \text{for every }c\in C_i
  \]
  has a finite or countable quotient \(Q_i=X_i/{\equiv_i}\) whose cells are measurable. Equivalently, the quotient map \(\kappa_i:X_i\to Q_i\), with \(Q_i\) given the discrete sigma-field, is measurable. This is a static condition on the measurable evaluation structure, not an assumed property of a version space, selector, learner, or generated output.
- Dimension: Replace the raw-space factor call by a quotient-first implementation: run Yan's VC-one mechanism on \(\bar C_i\subseteq\{0,1\}^{Q_i}\), use the product Borel output space \(\{0,1\}^{Q_i}\), and pull the selected hypothesis back by \(\kappa_i\). The finite or countable discrete sample space makes every totalized version-space, core, depth, summary, and output map measurable; proving those statements remains an upper-bound obligation.

## Setting

- Context: Information-theoretic realizable binary PAC learning for the countably coded canonical Cartesian-product subclass. The restriction is weaker than countability of \(X\): an uncountable block is allowed whenever the class sees only countably many measurable evaluation types.
- Model: A target is an arbitrary tuple \(c=(c_1,\ldots,c_k)\in\prod_i C_i\). The constructed upper learner is quotient-coded and may be improper, while the lower bound quantifies over every randomized, computationally unbounded, possibly improper learner with measurable finite-evaluation cylinders; no properness or efficiency restriction is imposed.
- Data: The sample distribution is an arbitrary probability measure on the measurable disjoint union \(X\), with no balance, finite-support, product-distribution, or public-data assumption. Every target factors through \(\kappa_i\), and pushforward to \(Q_i\) preserves its factor risk exactly; thus the quotient condition changes measurable structure but not the distribution-free quantifier.
- Algorithm: Fix factor accuracy \(1/64\), factor failure probability \(1/4096\), and factor privacy \((\varepsilon/2,\delta/2)\). For a universal constant \(K_Y\) obtained from Yan's private-median/choosing component bounds together with the retained fixed-confidence calibration, use
  \[
  q_i:=\left\lceil
  K_Y\frac{s_i}{\varepsilon}
  \log^2\!\left(\frac{e s_i}{\varepsilon\delta}\right)
  \right\rceil.
  \]
  Measurably route each record to its block and evaluation cell, take the first \(q_i\) records in sample order, pad shortages with a fixed quotient record, run the totalized Yan mechanism on \(Q_i\), and combine the pulled-back hypotheses piecewise. A replacement changes at most two factor inputs, so basic composition gives global \((\varepsilon,\delta)\)-DP. Retain the preceding weighted-occupancy argument for arbitrary block masses and retain its one-use hidden-factor reduction for the lower bound.
- Regime: Fix global accuracy and failure probability at \(1/16\), take \(0<\varepsilon\le1/10\), and allow every \(0<\delta<1\) in the upper clause. For a lower-bound candidate \(n\), put \(\omega_i=s_i/M_{\oplus}(C)\) and \(m_{n,i}=\max\{8,\lceil4n\omega_i\rceil\}\), and require only
  \[
  0<\delta\le
  \min\left\{
  \frac{1}{n\log(n+1)},
  \min_i\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
  \right\},
  \]
  where \(c_\delta>0\) is the universal constant in the Alon--Livni--Malliaris--Moran lower interface.

## Goal

- Theorem type: Conditional two-sided approximate-DP direct-sum characterization under countably coded evaluation.
- Informal statement: Uniformly over every class in the setting, prove that the quotient-first routed learner is a measurable \((\varepsilon,\delta)\)-DP PAC kernel and that
  \[
  \operatorname{SC}_{\varepsilon,\delta}(C)
  \le O\!\left(\sum_i q_i\right)
  \le O\!\left(
  \frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}
  \right).
  \]
  For every candidate \(n\) satisfying the displayed small-\(\delta\) condition, prove against all unrestricted improper learners that \(n=\Omega(M_{\oplus}(C))\). Consequently, whenever that condition holds at \(n=\operatorname{SC}_{\varepsilon,\delta}(C)\), the same intrinsic \(M_{\oplus}\) characterizes private sample complexity up to Yan's explicit privacy polylogarithm, with universal hidden constants and no hidden dependence on \(k\), factor cardinalities, or the \(d_i\) beyond \(M_{\oplus}\).

## Notes

- Parent foundation papers: *An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1* (arXiv:2505.06581); *Private PAC Learning Implies Finite Littlestone Dimension* (arXiv:1806.00949)
- Transfer map: preserves Yan's VC-one factor rate and the Alon--Livni--Malliaris--Moran unrestricted lower interface; changes the factor procedure to quotient-first measurable coding; reuses the prior two-affected-block composition, weighted occupancy, and one-use lower direct sum.
- Source alignment: Preserves approximate central DP, realizability, arbitrary distributions on the declared measurable space, unrestricted improper and computationally unbounded learners, and explicit VC/LD/log-star/cardinality distinctions. Canonical VC-one product structure and countably coded evaluation are explicit target-changing restrictions; arbitrary finite-Littlestone classes and uncountably many evaluation types remain open.
- Progress type: conditional
- Materiality: The branch restores a genuine two-sided theorem for products with arbitrarily many heterogeneous VC-one factors while repairing the exact one-factor defect that invalidated the preceding branch. It covers finite domains, countable domains, and uncountable domains with countably many observable evaluation types, so it is broader than a single fixed family, but it does not claim the source's full universal characterization.
- Significance: No source-faithful full candidate survives the support gates: pure-DP representation or communication measures do not have the required approximate-DP reverse bridge, and an exact feasible-kernel measure merely restates private learnability. Among supported weaker candidates, this primitive quotient repair preserves both directions and the unaffected lower chain, whereas deleting the upper clause would largely overlap the existing tagged-threshold lower branch.
- Feasibility: The new theorem-critical condition is primitive and example-verified, while the learner and lower mechanisms are literature-derived. Since each \(Q_i\) is countable discrete, its fixed-length labeled sample space is countable discrete and \(\{0,1\}^{Q_i}\) is standard Borel; hence any totalized Yan transition kernel is measurable, and its finite-support private-median/choosing implementation has measurable output probabilities. Measurable quotienting, routing, composition, and pullback then give a global kernel, while pushforward preserves arbitrary-distribution risk. The condition is checked directly for finite-chain threshold products, countable-domain point-function products, heterogeneous products of those factors, and uncountable replicated domains \(X_i=Q_i\times Y_i\) whose concepts depend only on the countable coordinate. Standard Borel structure without countable evaluation coding was rejected because projections used by core nonemptiness need not be Borel.
- Consistency: The countable-cocountable point-function counterexample is excluded at the primitive level because its evaluation quotient is uncountable and its identity quotient is not measurable into an uncountable discrete space; no derived selector property is assumed. Quotienting preserves every factor's VC and Littlestone dimensions and the full Cartesian target freedom, so the prior product identities, arbitrary-mass upper accounting, candidate-wise lower condition, unrestricted one-use lower reduction, and \(k=1\) lower baseline remain unchanged. The repaired \(k=1\) upper baseline is now a measurable Yan learner on the declared subclass, not a finite-support or set-theoretic surrogate.
