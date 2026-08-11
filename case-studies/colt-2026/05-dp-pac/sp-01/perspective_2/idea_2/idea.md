# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: `private_pac_sample_complexity_upper_bound`
  - model_class: `finite_littlestone_binary_concept_classes`
  - data_assumption: `realizable_distribution_free`
  - regime: `approximate_central_dp`
  - algorithm: `general_algorithm`

## Added Dimensions

- Theorem subtype: a universal one-power improvement of the source-verified Littlestone upper bound. For \(v=\operatorname{VC}(C)\) and \(d=\operatorname{LD}(C)\), target
  \[
  \widetilde O\!\left(
    \frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
    +\frac{v+\log(1/\beta)}{\alpha}
  \right),
  \]
  where the hidden multiplicative constant is universal and the tilde may hide logarithms of the displayed parameters but no additional power of \(d\), \(v\), or \(\log|C|\).
- Procedure refinement: retain Lyu's exact valid \((p,d)\)-decompositions, essential-SOA-hypothesis lists, irreducibility utility argument, sparse selection, and \(d+1\) stage index. Replace only the separate stagewise privacy allocation by the generic Reorder-Slice-Compute privacy scheduler of Cohen et al.: noisy disjoint slices feed the original Lyu stage maps, and later stage state is postprocessing of already private outputs.
- Quantitative refinement: prove a current-notation stage-amortization lemma. Starting from Lyu's raw essential-list bound \(L\le p^d2^{d^2}\), sparse-sampling threshold \(B\ge 10\log(L/\delta)/\varepsilon\), and \(d+1\) source stages, verify the RSC adjacency hypotheses and show that the common master-sample budget is \(\widetilde O(d^4\log(1/(\delta\beta))/(\varepsilon\alpha))\). This lemma must remove exactly the extra factor caused by per-stage privacy splitting; it may not replace a raw source term syntactically or assume neighboring support.
- Failure-driven refinement: there is no recursive rank-drop, single-cut, star, or other finite structural certificate. Termination is the fixed source stage counter \(t\in\{0,\ldots,d\}\), so an irreducible infinite restriction is processed symbolically by Lyu's own end-to-end routine rather than peeled concept by concept.

## Setting

- Context: Central approximate-DP realizable binary PAC learning for every binary class \(C\subseteq\{0,1\}^X\) with finite Littlestone dimension, including infinite classes and unrestricted improper, computationally unbounded learners.
- Model: \(v=\operatorname{VC}(C)\le d=\operatorname{LD}(C)<\infty\). All decomposition objects and essential candidate lists are exactly those produced within Lyu's source construction; no new certificate, finite-cardinality condition, factorization, order, stability event, or support invariant is assumed.
- Data: The input is an i.i.d. sample from an arbitrary distribution on \(X\), labeled by an arbitrary target \(c\in C\); realizability is the only distributional assumption.
- Algorithm: Run Lyu's \(d+1\) decomposition/essential-hypothesis stages through one RSC master scheduler. Each stage consumes its noisy disjoint slice, applies the source stage map, and releases only the RSC-privatized stage output needed by later maps. Prove one-record adjacency of every generated map, couple the noisy slices to the source utility events, then invoke Lyu's sparse selection and VC generalization without changing their objects or conclusions. Cohen et al.'s threshold/interior-point utility theorem is not used.
- Regime: \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and source-compatible approximate privacy with \(\delta\ll1/n\). The fixed-parameter comparison remains uniform over arbitrary finite-Littlestone classes, and the finite-class exponential-mechanism learner remains a separately normalized \(O(\log|C|)\) arm.

## Goal

- Theorem type: Universal approximate-DP PAC sample-complexity upper bound.
- Informal statement: Prove that for every class \(C\) in the setting and every displayed parameter choice, the RSC-scheduled Lyu learner is \((\varepsilon,\delta)\)-DP and, with probability at least \(1-\beta\), outputs a possibly improper hypothesis of population error at most \(\alpha\) using
  \[
  n\le \widetilde O\!\left(
    \frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
    +\frac{v+\log(1/\beta)}{\alpha}
  \right).
  \]
  Thus, at fixed privacy/learning parameters, the generic frontier becomes \(\widetilde O(\min\{\log^+|C|,d^4\})\), with \(\log^+|C|=+\infty\) for infinite \(C\).

## Notes

- Parent foundation papers: *Private Learning of Littlestone Classes, Revisited* (arXiv:2510.00076); *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization* (DOI:10.1145/3564246.3585148)
- Transfer map: preserves Lyu's source decompositions, essential lists, low-error/common-item argument, sparse selection, and PAC conversion; changes only the \(d+1\)-stage privacy/sample scheduler; reuses Cohen et al.'s generic noisy-disjoint-slice RSC privacy theorem, not its threshold utility theorem.
- Source alignment: preserves approximate central DP, arbitrary realizable distributions, every possibly infinite finite-Littlestone binary class, and unrestricted improper/unbounded learners, while keeping \(v\), \(d\), \(\log^*d\), and \(\log|C|\) distinct. No properness, efficiency, finite-cardinality, VC-one, product, or pure-DP restriction is introduced.
- Progress type: material_partial
- Materiality: replacing the verified \(\widetilde O(d^5)\) arm by a universal \(\widetilde O(d^4)\) arm strictly shrinks the unresolved generic interval for all growing \(d\). The result does not reach the source-named \(\operatorname{poly}(v,\log d)\) or \(\operatorname{poly}(v,\log^*d)\) milestones and does not match the \(\Omega(v+\log^*d)\) lower bound, so the characterization gap remains explicit.
- Significance: a source-full \(\widetilde O(v+\log^*d)\) candidate was rejected because Yan's tree/partial-order producer is verified only for VC one, and extending it universally would assume a generated decomposition. Adding a VC-one/star node to the failed certificate was also rejected: a point-function factor crossed with a full \((v-1)\)-cube preserves the same infinite zero-drop obstruction unless a factorization is assumed. The selected route instead keeps the only audited arbitrary-class producer intact and changes the smallest procedure component capable of improving its rate.
- Feasibility: Lyu's end-to-end finite-stage construction and Cohen et al.'s generic RSC privacy scheduler are literature-derived. The novel obligation is the explicit adjacency-and-amortization wrapper, not a structural or stability assumption. It is directly sanity-checked on the infinite point-function class (\(d=1\), root-only irreducible decomposition, finitely many source stages), finite thresholds (source essential lists are processed without manufacturing an order), and the full labeling class on \(v\) points (\(d=v\), exactly \(d+1\) source stages). An empirical VC-trace quotient was rejected because changing one landmark can replace all representatives and leaves neighboring support unproved.
- Consistency: the theorem has no added class or distribution condition. The point-function counterexample is handled by symbolic source decompositions and the finite stage counter, not by enumerating its infinitely many concepts. Candidate coverage, common mass, neighboring support, noisy-slice validity, privacy, and the \(d^4\) rate are all derived outputs with named parent mechanisms; none is moved into theorem assumptions. The setting and goal differ materially from idea_1's false certificate and \(\operatorname{poly}(v,\log d)\) target.
