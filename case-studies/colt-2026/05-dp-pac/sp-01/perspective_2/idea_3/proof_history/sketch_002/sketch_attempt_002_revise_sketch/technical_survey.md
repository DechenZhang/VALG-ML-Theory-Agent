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

- Source papers: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, especially `prop:chernoff-sample-without-replacement`, `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `def: essential hypothesis`, `coro: essential hypotheses`, `algo:private sample`, `lemma: privacy of sparse sampling`, `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `lemma: Ldim-of-SOA`, `thm: DP-ERM-littlestone`, and `coro: PAC learning`; Badih Ghazi, Noah Golowich, Ravi Kumar, and Pasin Manurangsi, *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy*, arXiv:2012.03893, especially Lemma 4.4 as restated by Lyu's `lemma: Ldim-of-SOA`.
- Applicability to current branch: This framework matches the formalized procedure and arbitrary-class model, but it requires an explicit convention bridge. In the proof of `thm: DP-ERM-littlestone`, Lyu defines \(E_{\mathrm{good}}\) uniformly over \(h\in C\), not over the eventual improper SOA-output class. Conditional on the labeled master sample, its random teacher blocks are uniform samples without replacement. Therefore error vectors are fixed, xor by the fixed label vector preserves trace cardinality, and Sauer--Shelah gives the sharper count \(\Pi_C(n_0)\le(en_0/v)^v\). Source stages are \(s=1,\ldots,d+1\) with \(p_{s,\mathrm{src}}=2^sn_0d\), whereas the binding branch uses \(r=0,\ldots,d\) and \(p_r=2^rn_0d\). The repaired framework maps \(H_i^r=H_{i,\mathrm{src}}^{r+1}\), keeps the half-scale \(p_r=p_{r+1,\mathrm{src}}/2\), and invokes Lemma 4.3 only through the exact consecutive pairing \((p_{r+1},p_r)=(2p_r,p_r)\). Actual functions, rather than empirical traces, remain the list and output objects.
- Proof roadmap:
  1. Goal: condition on the complete indexed sample and bound the number of distinct error traces by \(\Pi_C(n_0)\). Dependencies: none beyond the positive-dimensional branch. Assumptions: `assump:finite-littlestone`.
  2. Goal: prove the two source deviation clauses for each fixed trace and block, then union bound over blocks and traces. Dependencies: item 1. Assumptions: the uniform random partition and the source thresholds.
  3. Goal: solve \(n_0=km\) with \(m=\lceil C_{\mathrm{blk}}d^2a\log Q/\alpha\rceil\), prove \(\log(en_0/v)=O(\log Q)\), and allocate the trace failure probability. Dependencies: items 1-2. Assumptions: \(1\le v\le d\), \(0<\alpha,\beta<1/4\).
  4. Goal: feed the resulting \(E_{\mathrm{good}}\) into the exact source-stage classes, prove the half-scale \((2p,d)/(p,d)\) bridge, exact essential-function identity, DDim-zero common support, and then instantiate AboveThreshold and Sparse Sample with a total arbitrary-input procedure. Dependencies: items 2-3. Assumptions: all three primitive setting assumptions; every event, support, list-membership, irreducibility, and sensitivity fact is derived.
  5. Goal: prove the selected actual item is exactly \(\operatorname{SOA}_{\mathcal G}\) for a \((d+1)\)-irreducible \(\mathcal G\subseteq C\), apply Lyu's exact fixed output class and PAC conversion, then eliminate \(k,m,n_0,a,Q,p_j,L,B\), noise losses, and failure allocations in favor of the displayed public rate. Dependencies: items 1-4. Assumptions: all three primitive setting assumptions.
- Key lemmas / ingredients: Sauer--Shelah trace counting; the sample-without-replacement multiplicative/KL Chernoff bound; Lyu's fixed-block \(E_{\mathrm{good}}\) inclusion \(H_i^{r+1}\subseteq\bigcap_{i'}H_{i'}^r\); exact Lemma 4.3 pairing \((p_{r+1},p_r)=(2p_r,p_r)\); decomposition-dimension descent; Corollary 4.1's equal-DDim and zero-DDim conclusions; the \(p^d2^{d^2}\) essential-list envelope; one-list replacement privacy of Sparse Sample; sensitivity-one AboveThreshold queries and adaptive/concurrent composition; irreducibility-to-empirical-risk transfer; and `lemma: Ldim-of-SOA` for the exact fixed improper output class.
- Main transfer challenges: The low-error upper tail needs the one-sided hypergeometric/KL form, not a misuse of a small-relative-deviation inequality when the population error is close to zero. The trace fixed point must account for the ceiling and universal \(C_{\mathrm{blk}}\). The integer teacher count, list envelope, Sparse Sample failure score, effective-domain loss, and AboveThreshold noise must be closed simultaneously with \(n_0=km\), exposing all logarithmic \(\alpha\)- and \(n_0\)-dependence. Privacy must be proved for a total procedure on arbitrary nonrealizable neighboring inputs, and PAC transfer must consume exactly Lyu's \((d+1)\)-irreducible SOA class.
- Potential repair techniques and supporting references:
  - Technique: Prove a current-notation one-sided hypergeometric tail by the standard without-replacement mgf/KL argument, using Lyu's `prop:chernoff-sample-without-replacement` for the high-error relative branch and the same source sampling model for the low-error threshold branch.
  - Supporting reference: Lyu, arXiv:2510.00076, `prop:chernoff-sample-without-replacement` and the definition of \(E_{\mathrm{good}}\) inside the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: It yields \(\exp(-c m\alpha/d^2)\) uniformly in both source cases, including zero and very small full-sample error.
  - Technique: Define the teacher count as the least integer satisfying the exact list/noise margin, and prove feasibility with an explicit public candidate \(\bar k\).
  - Supporting reference: Lyu, `coro: essential hypotheses`, `lemma: privacy of sparse sampling`, `lemma: privacy of abovethreshold`, and the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: It exposes every \(\log p_j\), \(\log n_0\), list-size, failure-symbol, effective-domain, privacy, confidence, and rounding term; an explicit \(\bar k\) proves noncircular feasibility and the required public upper envelope.
- Disposition: `selected`
- Branch notes: This is the only framework that changes an actual raw source control while preserving the source algorithmic path. The primary arXiv v1 source was checked directly: its technique overview attributes one factor of \(d\) in the block size to union bounding over at most \(n^d\) traces, and its formal \(E_{\mathrm{good}}\) quantifies over \(h\in C\). The earlier claim that every branch object was source-identical was too strong; the repaired framework records and discharges the factor-two decomposition-scale residual, totalizes omitted arbitrary-input failure paths, and fixes the exact Lemma 4.2 output class. The parent lineage is unchanged.

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
