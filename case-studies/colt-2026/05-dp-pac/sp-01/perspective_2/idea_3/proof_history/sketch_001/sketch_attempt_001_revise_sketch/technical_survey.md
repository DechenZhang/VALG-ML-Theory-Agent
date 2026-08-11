# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2`, universal upper-bound improvements for unrestricted approximate-private PAC learning.
- Current idea: `idea_3`, retain Xin Lyu's fixed-block DP-ERM/PAC learner exactly and replace only the coarse Littlestone-exponent trace union bound in its event \(E_{\mathrm{good}}\) by the actual VC trace count.
- Setting / goal summary: Under `assump:finite-littlestone`, `assump:realizable-iid`, and `assump:approximate-dp-regime`, prove the exact-goal, `material_partial` bound
  \[
  \widetilde O\!\left(
  \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha}
  \right)
  \]
  for every possibly infinite finite-Littlestone class, with only logarithms of the displayed parameters hidden.

## Candidate Frameworks

### Framework 1: VC-trace recalibration of Lyu's fixed-block DP-ERM

- Source papers: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076, current arXiv source, especially `prop:chernoff-sample-without-replacement`, `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `def: essential hypothesis`, `coro: essential hypotheses`, `algo:private sample`, `lemma: privacy of sparse sampling`, `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `lemma: Ldim-of-SOA`, `thm: DP-ERM-littlestone`, and `coro: PAC learning`; Badih Ghazi, Noah Golowich, Ravi Kumar, and Pasin Manurangsi, *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy*, arXiv:2012.03893, especially Lemma 4.4 as restated by Lyu's `lemma: Ldim-of-SOA`.
- Applicability to current branch: This framework matches the formalized procedure and arbitrary-class model exactly. In the proof of `thm: DP-ERM-littlestone`, Lyu defines \(E_{\mathrm{good}}\) uniformly over \(h\in C\), not over the eventual improper SOA-output class. Conditional on the labeled master sample, its random teacher blocks are uniform samples without replacement. Therefore error vectors are fixed, xor by the fixed label vector preserves trace cardinality, and Sauer--Shelah gives the sharper count \(\Pi_C(n_0)\le(en_0/v)^v\). All decompositions, lists, candidates, stages, support objects, private mechanisms, and the PAC output class remain source-identical.
- Proof roadmap:
  1. Goal: condition on the complete indexed sample and bound the number of distinct error traces by \(\Pi_C(n_0)\). Dependencies: none beyond the positive-dimensional branch. Assumptions: `assump:finite-littlestone`.
  2. Goal: prove the two source deviation clauses for each fixed trace and block, then union bound over blocks and traces. Dependencies: item 1. Assumptions: the uniform random partition and the source thresholds.
  3. Goal: solve \(n_0=km\) with \(m=\lceil C_{\mathrm{blk}}d^2a\log Q/\alpha\rceil\), prove \(\log(en_0/v)=O(\log Q)\), and allocate the trace failure probability. Dependencies: items 1-2. Assumptions: \(1\le v\le d\), \(0<\alpha,\beta<1/4\).
  4. Goal: feed the resulting \(E_{\mathrm{good}}\) into Lyu's unchanged inclusion, decomposition descent, essential-list, common-item, AboveThreshold, Sparse Sample, empirical-risk, and all-input privacy interfaces. Dependencies: items 2-3. Assumptions: all three primitive setting assumptions; every event, support, list-membership, and sensitivity fact is derived.
  5. Goal: apply Lyu's improper SOA-output class control and PAC conversion, then eliminate \(k,m,n_0,a,Q,p_j\), list sizes, and failure allocations in favor of the displayed public rate. Dependencies: items 1-4. Assumptions: all three primitive setting assumptions.
- Key lemmas / ingredients: Sauer--Shelah trace counting; the sample-without-replacement multiplicative/KL Chernoff bound; Lyu's fixed-block \(E_{\mathrm{good}}\) inclusion \(H_i^{j+1}\subseteq\bigcap_{i'}H_{i'}^j\); decomposition-dimension descent; the \(p^d2^{d^2}\) essential-list envelope; one-list replacement privacy of Sparse Sample; sensitivity-one AboveThreshold queries and concurrent composition; irreducibility-to-empirical-risk transfer; and `lemma: Ldim-of-SOA` for the improper output class.
- Main transfer challenges: The low-error upper tail needs the one-sided hypergeometric/KL form, not a misuse of a small-relative-deviation inequality when the population error is close to zero. The fixed-point proof must account for the ceiling and for the universal constant \(C_{\mathrm{blk}}\). The source-valid teacher count and list threshold must be closed simultaneously with \(n_0\) so that only displayed logarithms remain. Finally, privacy must be rechecked on arbitrary nonrealizable neighboring inputs even though utility is realizable.
- Potential repair techniques and supporting references:
  - Technique: Prove a current-notation one-sided hypergeometric tail by the standard without-replacement mgf/KL argument, using Lyu's `prop:chernoff-sample-without-replacement` for the high-error relative branch and the same source sampling model for the low-error threshold branch.
  - Supporting reference: Lyu, arXiv:2510.00076, `prop:chernoff-sample-without-replacement` and the definition of \(E_{\mathrm{good}}\) inside the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: It yields \(\exp(-c m\alpha/d^2)\) uniformly in both source cases, including zero and very small full-sample error.
  - Technique: Isolate a source-parameter closure lemma before the public Rate Specialization Bridge.
  - Supporting reference: Lyu, `coro: essential hypotheses`, `lemma: privacy of sparse sampling`, `lemma: privacy of abovethreshold`, and the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: It exposes every \(\log p_j\), list-size, privacy, confidence, and rounding term and proves that decreasing the master sample does not invalidate a source threshold.
- Disposition: `selected`
- Branch notes: This is the only framework that changes an actual raw source control while preserving every source object. The primary arXiv source was checked directly: its technique overview explicitly attributes one factor of \(d\) in the block size to union bounding over at most \(n^d\) traces, and its formal \(E_{\mathrm{good}}\) quantifies over \(h\in C\). The parent lineage is unchanged.

### Framework 2: RSC stage-scheduler substitution

- Source papers: `perspective_2/idea_2/technical_survey.md`; Lyu, arXiv:2510.00076; Edith Cohen et al., *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*, arXiv:2211.06387 / DOI:10.1145/3564246.3585148.
- Applicability to current branch: None. RSC consumes already-private computations and removes disjoint slices, while Lyu's utility proof reuses one fixed block family. Lyu already uses one AboveThreshold process to avoid naive stage composition, so scheduler replacement removes no factor from the current \(d^2\cdot d^3\) sample arithmetic.
- Proof roadmap:
  1. Goal: instantiate each Lyu stage as an already-private RSC computation. Dependencies: none. Assumptions: the same three primitive setting assumptions plus generated tuple interfaces that idea_2 could not produce.
  2. Goal: transfer Lyu's fixed-block inclusion and common-item utility to removed RSC slices. Dependencies: item 1. Assumptions: a generated cross-stage coupling, absent in idea_2.
  3. Goal: derive a \(d^4\) public rate. Dependencies: items 1-2. Assumptions: a removable stage factor, which the source arithmetic disproves.
- Key lemmas / ingredients: RSC privacy accounting and Lyu's fixed-block utility theorem.
- Main transfer challenges: Source-object mismatch and no removable rate factor.
- Potential repair techniques and supporting references:
  - Technique: Improve the actual fixed-block concentration control rather than replacing the scheduler.
  - Supporting reference: Lyu, arXiv:2510.00076, the definition of \(E_{\mathrm{good}}\) and the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: The source arithmetic is teacher count times block size, and Framework 1 improves the latter while preserving all fixed-block objects.
- Disposition: `rejected`
- Branch notes: Used only as negative roadmap memory. No RSC object or theorem enters the selected branch.

### Framework 3: Dyadic SOA rank-drop / threshold-chain certificate

- Source papers: `perspective_2/idea_1/technical_survey.md`; Lyu, arXiv:2510.00076; Cohen et al., arXiv:2211.06387.
- Applicability to current branch: None. The required finite certificate and charge fail on the allowed infinite point-function class with \(v=d=1\).
- Proof roadmap:
  1. Goal: construct a finite rank-drop or threshold-chain certificate for every reached restriction. Dependencies: none. Assumptions: only `assump:finite-littlestone`.
  2. Goal: charge every continuation to a strict rank or VC decrease. Dependencies: item 1. Assumptions: certificate validity produced by item 1.
  3. Goal: route certificate nodes through private source routines. Dependencies: items 1-2. Assumptions: generated node support and adjacency interfaces.
- Key lemmas / ingredients: The proposed rank/VC-drop recurrence and finite single-cut pieces.
- Main transfer challenges: Persistent zero-drop point-function continuations and absence of a universal finite threshold order.
- Potential repair techniques and supporting references:
  - Technique: Replace the false finite-chain node by a VC-one tree routine.
  - Supporting reference: Li-Yang Yan, *An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581, summarized in `LITERATURE_SURVEY.md` D7.
  - Why it may help: It handles point-function/star structure, but changes the algorithm and is unnecessary for Framework 1.
- Disposition: `rejected`
- Branch notes: Used only as boundary-test memory; the selected branch retains Lyu's symbolic arbitrary-class machinery and never constructs such a certificate.
