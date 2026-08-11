# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: unrestricted_approximate_dp_pac_sample_lower_bound
  - model_class: general_finite_binary_concept_classes
  - data_assumption: distribution_free_realizable_pac
  - regime: fixed_parameter_approximate_dp
  - algorithm: unrestricted_private_pac_learning

## Added Dimensions

- Structural condition: a finite class \(C\subseteq\{0,1\}^X\) contains a \((k,N)\) disjoint-threshold minor if there are disjoint injections \(\phi_j:[N]\to X\), \(j\in[k]\), and concepts \(c_t\in C\) for every \(t=(t_1,\ldots,t_k)\in[N]^k\) such that \(c_t(\phi_j(q))=\mathbf 1\{q\leq t_j\}\). This is a primitive restriction-table condition, not an accuracy, privacy, tracing, or lower-bound assumption.
- Reduction protocol: use the unrestricted improper threshold hard experiment independently across the \(k\) arms, draw examples from the uniform mixture of the arm distributions, and hide the arm receiving the real threshold sample by a uniform arm permutation.
- Quantitative regime: fixed \(\alpha_0=1/128\), \(\beta_0=1/32\), \(0<\varepsilon_0\leq1\), and \(\delta_m\leq c_\delta/(m^2\log(em))\) for a sufficiently small universal \(c_\delta\); let \(k,N\) grow.

## Setting

- Context: Amplify the known unrestricted approximate-DP lower bound for one threshold chain into a direct-sum lower bound for many disjoint threshold chains, without converting the learner to a proper learner and without comparing databases at long Hamming distance.
- Model: Let \(C\) be any finite binary class containing a \((k,N)\) disjoint-threshold minor. A learner \(A:(X\times\{0,1\})^m\to\{0,1\}^X\) may be improper and computationally unbounded; only \((\varepsilon_0,\delta_m)\)-DP and the realizable PAC guarantee are imposed.
- Data: For a threshold vector \(t\), the adversarial realizable distribution first chooses an arm uniformly from \([k]\), then draws from the corresponding hard one-dimensional threshold distribution used in *Private PAC Learning Implies Finite Littlestone Dimension*, transported through \(\phi_j\). Since the theorem is distribution-free, the learner must succeed on this mixture.
- Algorithm: Given a hypothetical \(m\)-sample learner for \(C\), the reduction builds a learner for a uniformly hidden threshold arm from \(n=\lceil2m/k\rceil+12\) real threshold examples. It samples the \(m\) arm indices; if the hidden arm occurs at most \(n\) times, it uses distinct real examples there and independently simulates all other arms, and otherwise returns a fixed hypothesis. Restricting \(A\)'s arbitrary output to the hidden arm is postprocessing. One changed real example changes at most one input record of \(A\), so the reduction preserves \((\varepsilon_0,\delta_m)\)-DP exactly.
- Regime: The binomial overflow event has a fixed small probability, and random arm permutation makes the hidden arm exchangeable with the simulated arms. On the event that \(A\)'s average mixture error is at most \(\alpha_0\), a uniformly hidden arm has error at most \(8\alpha_0=1/16\) with probability at least \(7/8\). Constants are fixed; the lower bound is asymptotic for \(N\geq N_0\), with \(N_0\) universal.

## Goal

- Theorem type: Conditional unrestricted approximate-DP direct-sum lower-bound theorem.
- Informal statement: Prove that there are universal constants \(c,c_\delta>0\) and \(N_0\) such that, for every \(k\geq1\), \(N\geq N_0\), and finite class \(C\) containing a \((k,N)\) disjoint-threshold minor, every improper, computationally unbounded, distribution-free realizable \((\varepsilon_0,\delta_m)\)-DP PAC learner with accuracy \(\alpha_0\), confidence \(1-\beta_0\), and \(\delta_m\leq c_\delta/(m^2\log(em))\) uses
  \[
  m\geq c\,k\log^*N.
  \]
  The proof couples the simulated data to an iid arm-mixture sample outside the overflow event, uses exchangeability to obtain a constant-accuracy arbitrary-output threshold learner on the hidden arm, and invokes the unrestricted threshold lower bound. Since \(n=\lceil2m/k\rceil+12\) and the inherited \(\delta_m\) is small enough for the \(n\)-sample threshold theorem, \(n=\Omega(\log^*N)\) yields the stated bound.

## Notes

- Parent foundation papers: *Private PAC Learning Implies Finite Littlestone Dimension*; *On the Sample Complexity of Privately Learning Axis-Aligned Rectangles*
- Transfer map: preserves the first paper's arbitrary-output approximate-DP threshold experiment; changes one ordered chain to a primitive disjoint-chain minor; reuses iid simulation, postprocessing, and the multi-coordinate finite-class setting represented by the second paper.
- Source alignment: The conclusion retains arbitrary improper and computationally unbounded learners, approximate DP at the source-scale \(\delta_m\), realizability, arbitrary distributions, and fixed accuracy/confidence. The target-changing limitation is the disjoint-threshold-minor condition and the \(\Omega(k\log^*N)\) scale rather than \(\Omega(\log|C|)\).
- Progress type: conditional
- Materiality: For the exact minor class, \(|C|=N^k\) and \(\operatorname{VC}(C)=k\). The theorem improves the known generic \(\Omega(k+\log^*(k\log N))\) lower envelope to \(\Omega(k\log^*N)\), a multiplicative gain when both \(k\) and \(\log^*N\) grow, while explicitly leaving the required \(k\log N=\log|C|\) scale open.
- Significance: Unlike the rejected static packing and tracing routes, the PAC-to-neighbor transfer is an explicit one-record simulation and the antecedent is checkable before any learner runs. The result tests whether unrestricted approximate-DP hardness has a genuine direct-sum law rather than merely restating the one-chain baseline.
- Feasibility: The threshold lower bound and its arbitrary-output scope are literature-derived from the first parent paper. The direct-sum coupling is novel example-verified: the minor holds exactly for \(k\) disjoint threshold classes; for anchored lower orthants on the star set \(\{q e_j:q\in[N],j\in[k]\}\); and for axis-aligned boxes on \(\{0,\ldots,N\}^k\) after restricting to that star and fixing the lower corner at zero. The \(k=1\) specialization recovers the cited threshold theorem, while constant arm length gives the ordinary \(\Omega(k)\) VC scale after adjusting universal small-\(N\) constants.
- Consistency: The condition constrains only the finite concept restriction table and does not assume decoding, stability, tracing, or the desired lower bound. Overflow is data-independent, each real record is used at most once, other-arm samples are independent of the real input, and output restriction is postprocessing, so no properness, efficiency, pure-DP, or generated-invariant shortcut enters. Instantiating Open Question 2 would still require a different mechanism that upgrades \(\log^*N\) to \(\log N\) while preserving the quantified cardinality-versus-VC separation.
