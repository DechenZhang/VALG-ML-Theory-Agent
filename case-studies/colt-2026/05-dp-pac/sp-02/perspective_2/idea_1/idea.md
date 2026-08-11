# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: unrestricted_approximate_dp_pac_sample_lower_bound
  - model_class: general_finite_binary_concept_classes
  - data_assumption: distribution_free_realizable_pac
  - regime: fixed_parameter_approximate_dp
  - algorithm: unrestricted_private_pac_learning

## Added Dimensions

- Bridge architecture: an explicit two-part audit of static target-identification reductions, covering (i) decoding arbitrary hypotheses through disjoint accuracy balls under one common marginal and (ii) decoding through arbitrary disjoint output events whose only privacy comparison is endpoint group privacy.
- Privacy scale: fixed \(\alpha_0=1/16\), \(\beta_0=1/8\), \(0<\varepsilon_0\leq 1\), and \(\delta_m=1/(100m^2\log(em))\), matching the polynomially negligible approximate-DP scale used by the unrestricted lower-bound source chain.
- Claim scope: a route obstruction for static packing lifts, not a lower bound for all approximate-DP learners and not an instantiation of the three Open Question 2 items.

## Setting

- Context: Audit the common black-box strategy that imports a pure-DP, proper-learning, representation, or communication identification lower bound and tries to make it both improper-robust and approximate-DP-robust by postprocessing the learner's hypothesis and applying group privacy.
- Model: Let \(C\subseteq\{0,1\}^X\) be finite with \(V=\operatorname{VC}(C)\). The learner \(A:(X\times\{0,1\})^m\to\{0,1\}^X\) is randomized, may output any hypothesis, may be computationally unbounded, and is \((\varepsilon_0,\delta_m)\)-DP.
- Data: The PAC contract is realizable and distribution-free. The common-marginal certificate consists of \(M\) targets \(c_1,\ldots,c_M\in C\) and a distribution \(D\) on \(X\) with \(\Pr_D[c_i(x)\neq c_j(x)]>2\alpha_0\), so the arbitrary-output success regions \(B_i=\{h:\Pr_D[h(x)\neq c_i(x)]\leq\alpha_0\}\) are disjoint. The endpoint certificate allows arbitrary realizable databases \(S_0,S_1,\ldots,S_M\) and arbitrary disjoint measurable events \(B_i\), with the actual distances \(d_H(S_0,S_i)=r\) for every \(i\) and \(\Pr[A(S_i)\in B_i]\geq1-\beta_0\).
- Algorithm: No properness, representation, communication, or runtime condition is imposed on \(A\). The reduction under audit may postprocess \(A(S)\) arbitrarily, but its endpoint privacy step uses only the standard \(r\)-fold group-privacy inequality.
- Regime: Let \(m,M\to\infty\) with fixed \(\alpha_0,\beta_0,\varepsilon_0\). The endpoint obstruction is evaluated both for general \(r\leq m\) and for the constant-fraction regime \(r\geq\rho m\), where \(\rho>0\) is fixed.

## Goal

- Theorem type: Two-ceiling obstruction theorem for static target-identification lifts.
- Informal statement: Prove, first, that every common-marginal certificate above has \(M\leq(K/\alpha_0)^V\) for a universal constant \(K\), by the VC packing bound; hence \(\log M=O(V)\) at fixed accuracy and such an improper-robust decoder cannot witness the superpolynomial cardinality-versus-VC regime. Second, prove for every endpoint certificate, without restricting the output space or computation of \(A\),
  \[
  M(1-\beta_0)\leq e^{\varepsilon_0 r}+M\delta_m\frac{e^{\varepsilon_0 r}-1}{e^{\varepsilon_0}-1}.
  \]
  Thus pure DP recovers the usual logarithmic packing consequence, whereas at \(\delta_m=1/(100m^2\log(em))\) and \(r\geq\rho m\) the accumulated additive term eventually exceeds the success margin and the endpoint argument is vacuous. Conclude only that these two static lifts cannot discharge the missing scope; do not conclude that another neighbor-local approximate-DP certificate or reduction is impossible.

## Notes

- Parent foundation papers: *Private PAC Learning Implies Finite Littlestone Dimension*; *Sample Complexity Bounds on Differentially Private Learning via Communication Complexity*
- Transfer map: preserves the first paper's arbitrary-output approximate-DP PAC quantifiers; audits the second paper's pure-DP certificate/identification route; replaces a hypothetical black-box lift by exact VC-packing and approximate group-privacy ceiling calculations.
- Source alignment: The theorem keeps realizability, arbitrary distributions, fixed accuracy/confidence, fixed small \(\varepsilon\), source-scale \(\delta\), and arbitrary improper computationally unbounded learners. It is explicitly restricted to two static proof architectures and does not claim Item 3 or construct \(C_\kappa\).
- Progress type: obstruction
- Materiality: It rules out two precise black-box repairs of the missing unrestricted approximate-DP bridge: common-marginal decoding is capped by VC dimension, while endpoint group-privacy accounting loses its lower-bound force at the source's polynomial \(\delta_m\). The exact finite-class separation remains open.
- Significance: The obstruction applies to arbitrary hypothesis spaces and arbitrary postprocessing, so it identifies failures of the reduction interface rather than merely repeating a properness or efficiency limitation; it is preferable to a speculative tracing certificate with no verified class instantiation.
- Feasibility: The theorem-critical tools are standard/literature-derived: the disagreement-metric triangle inequality, the VC packing lemma, postprocessing, and exact \((\varepsilon,\delta)\) group privacy. Direct checks are concrete: ordered thresholds have common-marginal packing \(O(1/\alpha_0)\); point functions have packing at most \(1+1/\alpha_0\); and all labelings of \(d\) atoms admit constant-distance packings of size \(2^{\Theta(d)}\), saturating \(\log M=\Theta(V)\) but never exceeding the VC ceiling.
- Consistency: The privacy calculation gives \(M(1-\beta_0)\leq e^{\varepsilon_0r}\) at \(\delta=0\), becomes vacuous for \(r=\rho m\) and \(\delta_m=1/(100m^2\log(em))\), and remains informative for exponentially small \(\delta\); these three parameter checks isolate exactly the pure-to-approximate loss. No lower bound, generated invariant, proper-output decoder, or computational restriction is assumed, and the empty tracker makes the branch non-duplicate.
