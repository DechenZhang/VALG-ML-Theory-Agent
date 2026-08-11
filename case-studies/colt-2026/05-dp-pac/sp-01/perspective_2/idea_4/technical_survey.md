# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2`, measurable conditional upper bounds for unrestricted approximate-private PAC learning.
- Current idea: `idea_4`, run the VC-trace-calibrated fixed-block Lyu learner on the finite/countable evaluation quotient and decode the released quotient hypothesis.
- Setting / goal summary: Under the four primitive assumptions in `perspective_2/idea_4/setting.md`, prove the exact conditional theorem for a measurable quotient-first learner, with
  \[
  \widetilde O\!\left(
  \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha}\right),
  \]
  and separately normalize the finite-class and old-Lyu arms on the same quotient interface.

## Candidate Frameworks

### Framework 1: Quotient-first VC-trace recalibration of Lyu's fixed-block learner

- Source papers: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; Badih Ghazi, Noah Golowich, Ravi Kumar, and Pasin Manurangsi, *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy*, arXiv:2012.03893; Kasiviswanathan, Lee, Nissim, Raskhodnikova, and Smith, *What Can We Learn Privately?*, arXiv:0803.0924.
- Applicability to current branch: The quotient assumption makes `Q_C` finite or countable discrete, so `Z_Q^N` is countable discrete and `H_C={0,1}^{Q_C}` is standard Borel. Every pointwise totalized source law therefore assembles into a Markov kernel, and its pullback through the measurable record map `T_N` is a raw-input kernel. The quotient map preserves labels, neighbors, VC/LD, and risk exactly. On this interface Lyu's source objects remain actual functions on `Q_C`, not empirical trace representatives. The VC improvement is confined to the fixed-block trace union; the output utility is closed by the unreleased occurrence mark and a finite producer-block/complement holdout argument.
- Proof roadmap:
  1. Prove quotient factorization, bijection, VC/LD preservation, measurable `T_N`, neighbor preservation, pushforward sampling, and the exact decoder-risk identity, including the `d=0` singleton branch.
  2. Totalize every quotient restriction, essential list, stage transcript, fallback, and output law on the countable discrete input space; lift the exact finite Sparse Sample law to a marked kernel and prove its output projection.
  3. Condition on the complete quotient master sample, count error traces by Sauer--Shelah, prove the high-error relative and low-error one-sided without-replacement tails, and close the explicit fixed point `n_0=km`.
  4. Apply Lyu's exact source stages, with the explicit source/current map `H_i^r=H_{i,src}^{r+1}` and `p_{r+1}=2p_r`; derive essential-list bounds, DDim descent, and a score-`k` common stage.
  5. Apply AboveThreshold and Sparse Sample once, prove all-input raw replacement DP through the quotient neighbor map, and identify the selected actual SOA item.
  6. Mark an occurrence block, union over its at most `(d+1)L` all-stage candidates, use the independent complement holdout and a locally proved one-sided Chernoff bound, and charge trace/mechanism/reconstruction failures.
  7. Normalize the new, old-Lyu, and finite-class arms and prove the public rate and baseline specializations.
- Key lemmas / ingredients: Lyu `prop:chernoff-sample-without-replacement`, `def: p-decomposition`, `lemma: number of leaves`, `lemma: p-decomposition`, `def: essential hypothesis`, `coro: essential hypotheses`, `algo:private sample`, `lemma: privacy of sparse sampling`, `algo: abovethreshold`, `lemma: privacy of abovethreshold`, `lemma: Ldim-of-SOA`, `thm: DP-ERM-littlestone`, and `coro: PAC learning`; Sauer--Shelah; finite-population KL/mgf tails; countable-product standard-Borel facts; finite-state Markov-kernel lifting; and an exponential-Markov Bernoulli lower-tail bound.
- Main transfer challenges: The source uses stages indexed `1,...,d+1`, while the branch exposes `0,...,d`; the factor-two pairing must be proved before invoking Lyu Lemma 4.3. The low-error tail must remain valid at empirical error zero. Pointwise finite laws are not enough on arbitrary raw spaces, but countable quotient input makes every pointwise assignment measurable; the pullback and all-input neighbor bridge still must be explicit. The marked holdout must use a producer block whose candidate union is generated from that block alone, and must not assert block independence after conditioning on the complete sample.
- Potential repair techniques and supporting references:
  - Technique: use the quotient map as a primitive measurable coding and prove all kernel claims first on the countable discrete quotient.
  - Supporting reference: `assump:countable-evaluation-quotient` in `setting.md`, plus the standard fact that a countable product of finite discrete spaces is standard Borel.
  - Why it may help: it repairs idea_3's nonmeasurable diagonal without assuming a version space, selector, list, event, or kernel; arbitrary pointwise source laws become kernels on the quotient input.
  - Technique: use Lyu's high-error without-replacement result and a current-notation finite-population mgf/KL derivation for the low-error branch.
  - Supporting reference: Lyu arXiv:2510.00076, `prop:chernoff-sample-without-replacement` and the `E_good` clauses in the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: it supplies a uniform `exp(-c m alpha/d^2)` trace charge, including the near-zero branch, without importing the invalid factor-one two-sided display.
  - Technique: attach an unreleased uniform occurrence mark to an actual Sparse Sample item and condition on its producer block.
  - Supporting reference: Lyu `algo:private sample`, `coro: essential hypotheses`, and the block-local list construction in the proof of `thm: DP-ERM-littlestone`.
  - Why it may help: the mark preserves the output marginal while reducing the adaptive improper output to a finite union of block-local candidates evaluated on an independent complement.
- Disposition: `selected`
- Branch notes: This framework preserves Lyu's exact arbitrary-class decomposition, list identity, AboveThreshold, Sparse Sample, privacy, and baseline machinery. The only semantic delta from idea_3 is the primitive countable evaluation quotient and quotient-first decoding. Ghazi et al. are used for the irreducibility/SOA VC bookkeeping lineage, not as a source of measurability. The finite-class arm is normalized separately and is never used to prove the infinite-class arm.

### Framework 2: Generic measurable VC-envelope replacement

- Source papers: Ghazi et al., arXiv:2012.03893; standard VC uniform-convergence theory.
- Applicability to current branch: `backup` only. On a countable quotient, a product-measurable evaluation envelope is available, but using a generic supremum over the full improper SOA class would add unnecessary interface work and would obscure the source's finite producer-block mechanism. The selected framework gives the required holdout/multiplicity witness directly.
- Proof roadmap:
  1. Establish measurability of the quotient evaluation map and the SOA-output class.
  2. Apply a relative VC inequality to the data-dependent output after proving fixed-class membership.
  3. Compare the resulting confidence term with the block calibration.
- Key lemmas / ingredients: countable product measurability, Lyu `lemma: Ldim-of-SOA`, Sauer--Shelah/relative VC bounds.
- Main transfer challenges: the exact source PAC conversion and the requested producer-block Chernoff interface would still need to be shown; a generic envelope must not silently replace the finite-reconstruction target.
- Potential repair techniques and supporting references:
  - Technique: use the selected marked finite reconstruction as the primary utility proof and retain the VC envelope only as a consistency check.
  - Supporting reference: Lyu arXiv:2510.00076, `coro: PAC learning` and `algo:private sample`.
  - Why it may help: it avoids an unnecessary supremum and keeps the public rate tied to the exact source list multiplicity.
- Disposition: `backup`
- Branch notes: No source object or theorem is changed by this backup; it is not consumed by the selected roadmap.

### Framework 3: RSC stage-scheduler substitution

- Source papers: Lyu, arXiv:2510.00076; Cohen et al., *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization*, arXiv:2211.06387.
- Applicability to current branch: `rejected`. Lyu already uses one AboveThreshold process to avoid naive stage composition, and its utility proof reuses one fixed block family. RSC supplies no missing teacher-count or fixed-block concentration improvement and would break the source cross-stage inclusion.
- Proof roadmap:
  1. Wrap each Lyu stage as an already-private RSC computation.
  2. Transfer the fixed-block inclusion to disjoint noisy slices.
  3. Claim a removable stage factor in the sample rate.
- Key lemmas / ingredients: RSC privacy accounting and Lyu's fixed-block utility theorem.
- Main transfer challenges: RSC requires already-DP computations, while fresh slices do not satisfy Lyu's common-item invariant; the claimed rate-saving factor is not present in the source arithmetic.
- Potential repair techniques and supporting references:
  - Technique: improve the actual fixed-block trace control instead of replacing the scheduler.
  - Supporting reference: Lyu `E_good` and `thm: DP-ERM-littlestone`.
  - Why it may help: the selected quotient-first framework changes a real source control and leaves the source stage machinery intact.
- Disposition: `rejected`
- Branch notes: retained only as negative roadmap memory; no RSC object enters the selected proof.
