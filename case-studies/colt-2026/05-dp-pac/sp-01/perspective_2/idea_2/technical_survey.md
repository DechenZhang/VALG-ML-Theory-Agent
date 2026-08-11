# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2`, universal upper-bound improvement for unrestricted approximate-DP PAC learning.
- Current idea: `idea_2`, retain Lyu's exact decomposition, essential-hypothesis, sparse-sampling, and utility machinery while replacing only its stage scheduler by Cohen et al.'s Reorder-Slice-Compute (RSC) paradigm.
- Setting / goal summary: Under `assump:finite-littlestone`, `assump:realizable-iid`, and `assump:approximate-dp-regime`, prove in exact-goal mode a universal
  \[
  \widetilde O\!\left(
  \frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{v+\log(1/\beta)}{\alpha}
  \right)
  \]
  sample bound, with no extra class assumption and no hidden positive power of \(d\), \(v\), or \(\log|C|\).

## Candidate Frameworks

### Framework 1: One RSC run with one noisy disjoint slice per Lyu stage

- Source papers: Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076, especially `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `lemma: number of leaves`, `coro: essential hypotheses`, `algo:private sample`, `lemma: privacy of sparse sampling`, `thm: DP-ERM-littlestone`, and `coro: PAC learning`; Cohen et al., *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*, arXiv:2211.06387 / DOI:10.1145/3564246.3585148, especially `algo:partition`, `theo:partition-private`, `coro:kdelayed`, and `theo:partition-privatek`.
- Applicability to current branch: The two papers match the intended parent lineage, but their relevant interfaces do not compose in the claimed direction. RSC receives a tuple \((m_i,\mathcal A_i,E_i)\) in which \(\mathcal A_i\) is already \((\varepsilon_0,\delta_0)\)-DP and \(E_i\) is a deterministic adjacency-preserving multiset-to-list map. Its theorem accounts for adaptive slicing; it does not privatize an arbitrary Lyu stage map. Lyu's PAC stages, meanwhile, repeatedly query the same fixed teacher blocks through one AboveThreshold instance and invoke Sparse Sample only at the successful stage.
- Proof roadmap:
  1. Instantiate each exact Lyu stage as an RSC tuple, conditional on earlier released outputs, and prove the per-slice DP and adjacency-preserving-map hypotheses.
  2. Couple Cohen's geometrically perturbed disjoint slices to Lyu's fixed-partition event \(E_{good}\) and recover \(H_i^{j+1}\subseteq\bigcap_{i'}H_{i'}^j\).
  3. Apply `theo:partition-private`, then Lyu's essential-list and sparse-sampling results.
  4. Eliminate all RSC and Lyu auxiliary parameters and derive the public \(d^4\) bound.
- Key lemmas / ingredients: Cohen's RSC privacy theorem; Lyu's interleaving inclusion on \(E_{good}\); the essential-list bound \(p^d2^{d^2}\); Sparse Sample privacy under replacement of one bounded list; Lyu's decomposition-dimension descent.
- Main transfer challenges: The first RSC tuple is not supplied as an already-DP Lyu stage computation; publishing deterministic essential lists is not a valid substitute. Lyu's sensitivity-one frequency query and Sparse Sample lemma could plausibly be assembled into such a wrapper, but the exact tuple, raw-record mapping, and output interface are not stated. RSC slices are removed, whereas Lyu reuses every teacher block at every stage. Lyu's cross-stage inclusion is stated for the fixed partition, not for stage-specific adaptive noisy slices. Most decisively, Lyu already uses sparse vector to avoid naive privacy composition over the stages, so there is no stagewise factor in its current \(d^5\) arithmetic for RSC to remove.
- Potential repair techniques and supporting references:
  - Technique: Make each stage independently DP before passing it to RSC.
  - Supporting reference: Cohen et al., `algo:partition` and `theo:partition-private`.
  - Why it may help: Lyu's existing Laplace frequency test and Sparse Sample mechanism may meet RSC's compute interface after a careful raw-record-to-one-list proof. Even granting that bridge, each fresh stage still needs the source utility resources, so it does not supply the requested \(d^4\) rate.
  - Technique: Use delayed computations so all stages can revisit each teacher slice.
  - Supporting reference: Cohen et al., `coro:kdelayed`.
  - Why it may help: It addresses data reuse only after each computation is already DP, and with \(k=d+1\) it incurs explicit \(O(\varepsilon_0(d+\log(1/\widehat\delta)))\) and \(2(d+1)\tau\delta_0\) privacy losses. It therefore restores rather than removes a raw stage-count dependence.
- Disposition: `rejected`
- Branch notes: The tuple wrapper is a downstream sketch/interface gap, but the fixed-block/disjoint-slice conflict and the absent rate-saving factor are theorem-contract defects. Repairing those defects requires changing the algorithm/procedure or abandoning the exact \(d^4\) dependence, so this framework cannot be opened as a proof-step roadmap under the current exact goal.

### Framework 2: Put the complete Lyu learner in one RSC slice

- Source papers: Lyu, arXiv:2510.00076, `thm: DP-ERM-littlestone` and `coro: PAC learning`; Cohen et al., arXiv:2211.06387, `algo:partition` and `theo:partition-private`.
- Applicability to current branch: Taking \(\tau=1\), \(E_1\) to be a fixed adjacency-preserving ordering, and \(\mathcal A_1\) to be Lyu's complete already-private learner is the only immediate source-valid compute mapping. It preserves Lyu's internal data reuse and utility proof.
- Proof roadmap:
  1. Use Lyu's full learner as the sole already-private RSC computation.
  2. Apply the \(\tau=1\) RSC privacy theorem.
  3. Invoke Lyu's PAC corollary unchanged.
- Key lemmas / ingredients: `thm: DP-ERM-littlestone`, `coro: PAC learning`, and `theo:partition-private` with \(\tau=1\).
- Main transfer challenges: RSC becomes an outer wrapper and does not alter Lyu's choices
  \[
  k=\frac{d^2\log(1/\delta)}{\varepsilon},\qquad
  \frac{n}{k}\asymp\frac{d^3}{\alpha},
  \]
  hence it returns the same \(\widetilde O(d^5\log(1/\delta)/(\varepsilon\alpha))\) bound.
- Potential repair techniques and supporting references:
  - Technique: Improve either the teacher count or fixed-block interleaving bound before applying the wrapper.
  - Supporting reference: Lyu, `lemma: number of leaves`, `coro: essential hypotheses`, and the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: Removing a raw \(d\) from those controls could in principle yield \(d^4\), but neither parent source gives that improvement, and it is not a scheduler-only change.
- Disposition: `rejected`
- Branch notes: This is interface-valid but misses the exact theorem target. It is merely a repackaging of the existing \(d^5\) baseline and is not material progress for this branch.
