# Technical Survey

## Current Idea Branch

- Perspective: perspective_2, universal VC-sensitive upper bounds for unrestricted approximate-private PAC learning.
- Current idea: idea_1, the proposed dyadic SOA chain-or-rank-drop certificate with Lyu rank-node routines and Cohen et al. chain-node routines.
- Setting / goal summary: For every possibly infinite binary class \(C\) of finite Littlestone dimension, prove an unconditional sample bound
  \[
  K\,\Phi_{\mathrm{inh}}(\alpha,\beta,\varepsilon,\delta)
  [(v+1)(1+\lceil\log_2(d+1)\rceil)]^5
  [\log(2+Q(v,d))]^k,
  \]
  with no certificate, stability, support, or membership assumption in the theorem.

## Candidate Frameworks

### Framework 1: Lyu decomposition dimension and sparse DP-ERM

- Source papers: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076, especially Definition def: p-decomposition, Claim claim: exist decomposition, Lemma lemma: p-decomposition, Corollary coro: essential hypotheses, Lemma lemma: privacy of sparse sampling, Theorem thm: DP-ERM-littlestone, and Corollary coro: PAC learning in the current arXiv source.
- Applicability to current branch: The source applies to arbitrary possibly infinite finite-Littlestone classes and supplies the correct approximate-DP PAC baseline. It is source-compatible at the model level. Its structural and quantitative interfaces are not those required here: valid decompositions have raw-Littlestone depth allowances \(p(2^{d-t+1}-1)\), leaves are irreducible rather than lower dyadic-rank pieces, and the PAC result is an end-to-end \(\widetilde O(d^5)\) construction rather than a theorem parameterized by an external charge \(q(T)\).
- Proof roadmap:
  1. Goal: use valid \((p,d)\)-decompositions to enumerate essential SOA hypotheses. Dependencies: none. Assumptions: assump:finite-littlestone and the source decomposition definitions.
  2. Goal: use interleaved blocks, AboveThreshold, and sparse sampling to find a common essential hypothesis. Dependencies: item 1. Assumptions: assump:finite-littlestone, assump:realizable-iid, and assump:approximate-dp-regime.
  3. Goal: use irreducibility for low empirical error and VC generalization for PAC utility. Dependencies: items 1-2. Assumptions: all three setting assumptions and the source good-event conclusions produced inside its own algorithm.
- Key lemmas / ingredients: Existence and leaf-count bounds for valid decompositions; decomposition-dimension monotonicity under restriction/intersection; matching SOA leaves when decomposition dimensions agree; sparse sampling privacy for lists of size at most \(L\); the source DP-ERM and PAC corollary.
- Main transfer challenges: The source does not output a dyadic rank drop, a threshold-ordered SOA chain, a VC-drop off-chain fiber, a certificate charge recurrence, neighboring-sample support for a hybrid certificate, or a rule replacing every raw \(d\) in its proof by \(q(T)\). Its formal sparse-sampling privacy lemma assumes list size \(L\) and \(B\ge 10\log(L/\delta)/\varepsilon\); it does not produce the needed common item or prove utility/support of branch-generated lists.
- Potential repair techniques and supporting references:
  - Technique: Add a separate structural node for irreducible VC-one star/tree pieces.
  - Supporting reference: Li-Yang Yan, *An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581, as summarized in LITERATURE_SURVEY.md entry D7.
  - Why it may help: The VC-one result uses special tree/partial-order structure, a private path/median routine, and a choosing mechanism. It also shows why a single total-order threshold interface is not the general VC-one interface. Adding such a node changes the algorithm specified by the current idea and is not a proof-sketch repair under unchanged setting.md.
- Disposition: rejected
- Branch notes: Lyu is retained as the correct baseline and source preflight, but its theorem cannot be used as a black-box rank-node routine with \(d\) syntactically replaced by \(q(T)\).

### Framework 2: Cohen et al. Reorder-Slice-Compute and threshold learning

- Source papers: Edith Cohen, Xin Lyu, Jelani Nelson, Tamas Sarlos, and Uri Stemmer, *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*, DOI:10.1145/3564246.3585148 and arXiv:2211.06387, especially Algorithm algo:partition and Theorems theo:partition-private, theo:partition-privatek, theo:threshold-utility, theo:threshold-privacy, and theo:learning-threshold.
- Applicability to current branch: The generic RSC theorem is a privacy theorem for noisy disjoint slices processed by explicitly adjacency-preserving maps. The threshold utility theorem is for actual thresholds over a fixed finite totally ordered domain and uses the paper's specific TreeLog/interior-point maps. Neither accepts an arbitrary data-dependent order of SOA states as a plug-in utility interface.
- Proof roadmap:
  1. Goal: fix a finite ordered domain and construct adjacency-preserving noisy slices. Dependencies: none. Assumptions: assump:approximate-dp-regime plus the source-only finite-order and adjacency-preserving-map hypotheses.
  2. Goal: apply the TreeLog/interior-point recursion and its order-specific utility analysis. Dependencies: item 1. Assumptions: the source true finite-order threshold/interior-point structure; this is not supplied by a setting assumption.
  3. Goal: transfer the interior-point solution to a realizable threshold learner. Dependencies: items 1-2. Assumptions: assump:realizable-iid restricted to a genuine threshold class and the source parameter conditions.
- Key lemmas / ingredients: RSC privacy without a multiplicative dependence on the number of slices in epsilon; TreeLog utility and privacy; the finite-order threshold/interior-point equivalence.
- Main transfer challenges: The branch must produce a fixed source-compatible order, prove that every relevant target is a genuine single-cut threshold on it, keep the order and slicing maps adjacency-preserving under neighboring samples, bound its finite size, and map the returned cut to a low-error hypothesis. RSC alone supplies none of these utility, support, membership, or mapping facts. The threshold theorem does not cover infinite ordered domains.
- Potential repair techniques and supporting references:
  - Technique: Prove a fixed-order, neighbor-compatible wrapper before invoking RSC.
  - Supporting reference: Cohen et al., arXiv:2211.06387, Theorems theo:partition-private and theo:learning-threshold.
  - Why it may help: These statements specify exactly what the wrapper must export. The point-function boundary class below shows that such a wrapper cannot exist for all classes using only a single-cut order.
- Disposition: rejected
- Branch notes: The parent source is valid only on genuinely certified finite threshold pieces. Calling a collection a chain, or ordering it after observing the sample, does not discharge the source hypotheses.

### Framework 3: Universal dyadic SOA chain-or-rank-drop hybrid

- Source papers: perspective_2/idea_1/idea.md; Lyu, arXiv:2510.00076; Cohen et al., DOI:10.1145/3564246.3585148 / arXiv:2211.06387.
- Applicability to current branch: This is the proposed parent hybrid. It would target the exact \(Q(v,d)^5\) arm if it produced a finite certificate, a rank-or-VC potential decrease, source-compatible private node routines, and all generated support facts.
- Proof roadmap:
  1. Goal: construct a finite certificate for every nonempty restriction. Dependencies: none. Assumptions: assump:finite-littlestone; no generated certificate condition may be assumed.
  2. Goal: charge every branch by dyadic-rank or VC decreases. Dependencies: item 1. Assumptions: only certificate validity produced by item 1.
  3. Goal: route blocks through Lyu or Cohen et al. routines and aggregate privately. Dependencies: items 1-2. Assumptions: assump:realizable-iid, assump:approximate-dp-regime, and generated node interfaces proved by the earlier items.
- Key lemmas / ingredients: A universal chain-or-rank-drop dichotomy, a well-founded charge recurrence, fixed finite threshold orders, stable candidate lists, neighboring-sample support, and a modular \(q(T)^5\) parent analysis.
- Main transfer challenges: The first lemma fails on the source-compatible boundary test
  \[
  C_\star=\{h_0\}\cup\{h_x:x\in X\},\qquad
  h_0\equiv0,\quad h_x(z)=\mathbf 1\{z=x\},
  \]
  for infinite \(X\). Here \(\operatorname{VC}(C_\star)=\operatorname{LD}(C_\star)=1\). Every finite all-SOA restriction is another infinite copy of \(C_\star\), so neither VC nor dyadic rank decreases. Its singleton-positive SOA states cannot all lie in a single-cut total order: at coordinate \(x\), only state \(h_x\) has label \(1\), so \(h_x\) would have to be an endpoint, and an order has only two endpoints. Grouping at least two unhandled point states leaves VC dimension one; handling them one by one cannot yield a finite certificate on infinite \(X\).
- Branch-boundary note: A trivial one-state chain \(\{h_0\}\) only packages an infinite family of singleton disagreement fibers. It is either an infinite-branch certificate, contrary to finiteness, or a new symbolic node for which Cohen et al. supplies neither a finite threshold domain nor a neighbor-compatible routing mechanism.
- Potential repair techniques and supporting references:
  - Technique: Add a private heavy-point/star or general VC-one tree node, or permit an infinite symbolic certificate with a new private routine.
  - Supporting reference: LITERATURE_SURVEY.md entry D7 (arXiv:2505.06581) for a different VC-one structural algorithm.
  - Why it may help: Such a routine could handle the star class without a total-order threshold reduction. It changes the specified procedure and theorem-critical mechanism source, so it requires idea revision rather than a later proof step.
- Disposition: rejected
- Branch notes: No framework is selected. The exact current idea has an idea/theorem-contract obstruction before step-level proof work.
