# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, canonical disjoint Cartesian factorization as a class-intrinsic direct-sum interface.
- Current idea: `idea_3`, countably coded quotient-first Yan factors plus an unrestricted weighted ALMM direct-sum lower bound.
- Setting / goal summary: Under `assump:canonical-product`, `assump:vc-one-factors`, and `assump:countably-coded-evaluation`, prove the exact conditional two-sided theorem in `setting.md`: a measurable routed quotient learner with arbitrary-distribution upper sample complexity of order
  \[
  \frac{M_{\oplus}(C)}{\varepsilon}
  \log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta},
  \]
  and, at every candidate satisfying `assump:candidate-delta-budget`, an unrestricted-improper lower bound \(\Omega(M_{\oplus}(C))\), with both \(k=1\) baselines intact.

## Candidate Frameworks

### Framework 1: Countable quotient-first Yan learning with an ALMM expected-risk direct sum

- Source papers: Chao Yan, *An \(\widetilde O\)ptimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581v2: `thm:learn vc` at the audited source lines 233--237; the threshold-dimension comparison at 251--256; `thm:private median` at 304--307; `def: k-bounded` and `lem:choosing mechanism` at 310--325; the reference transform/tree/distance construction at 329--471; `alg:improperlearner` at 479--525; and the order and final-comparison lemmas at 534--583. Yan's `thm:privacy-OPTPrivateLearner` at 527--532, the unlabeled block-good claim at 554--563, and the raw confidence corollary/final theorem at 585--599 are known non-outputs for the all-input replacement wrapper, improper-core marginal, and exact fixed-confidence quota used here. Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553: `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` at audited source lines 625--676 with proofs at 1947--2053, and Lemma 5.9 for with-replacement resampling. Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949v3 / STOC 2019: `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and `thm:ADPimpliesLD`.
- Applicability to current branch: Pullback along \(\kappa_i\) is a bijection from \(\bar C_i\) to \(C_i\), so it preserves every finite label pattern, VC dimension, Littlestone dimension, and factor risk. More importantly, \((Q_i\times\{0,1\})^{q_i}\) is countable discrete. Hence every totalized version-space, core, depth, summary, tie-breaking, and selector map is measurable, and any per-input probability law on the standard-Borel space \(\mathcal H_i=\{0,1\}^{Q_i}\) is automatically a Markov kernel. This directly repairs the prior raw-space diagonal obstruction without assuming a generated selector property. Yan supplies the VC-one tree, finite-depth, private-median, choosing, and deterministic comparison ingredients. The exact branch interface still needs three current-notation wrappers: replacement-private finite-support histograms on arbitrary inputs; a direct \(\operatorname{VC}(\mathcal K_i)\le1\) argument for improper cores; and fixed-confidence bad-count concentration that avoids the raw \((t+2)\beta_{\rm raw}\) union bound. ALMM's proof, not merely its printed PAC corollary, supplies the expected-risk lower interface; finite minimax then fixes hard priors before the hidden-factor simulators are defined.
- Proof roadmap:
  1. Prove quotient and product identities, exact risk pullback, and standard-Borel output measurability; then totalize Yan's mechanism on the countable discrete quotient and prove its exact replacement-DP and unpadded fixed-confidence utility interfaces.
  2. Prove measurable routing/prefix/padding, the at-most-two-affected-factor adjacency certificate, basic composition, and weighted arbitrary-mass utility with no balance condition and no all-factor union bound.
  3. Derive the ALMM unrestricted expected-risk floor at one factor, including the with-replacement privacy calculation, finite threshold witness, and compact finite minimax prior.
  4. Combine the independent global VC lower certificate with a high-\(\log^*d_i\) factor split, uniform binomial overflow control, and a total one-use hidden-factor simulator whose input replacement changes at most one global row.
  5. Put all factor inequalities in one product-prior experiment, sum them in the exact global risk, convert the strict expectation gap to the exact PAC failure event, and assemble the conditional characterization and both \(k=1\) baselines.
- Key lemmas / ingredients: evaluation-quotient dimension preservation; additive VC and Littlestone identities for a disjoint full product; countable-discrete measurability and standard-Borel product kernels; exact quotient risk pullback; Yan's reference transform, positive \((TD+1)\) endpoint, private median, finite-positive-support choosing, and final comparison; BNSV's replacement-private bounded-growth proof; the direct improper-core closure \(\operatorname{VC}\le1\); Hoeffding on a fixed-confidence bad-block count; symmetrized multiset routing; support-two composition; weighted shortage mass; exact ceiling/log quota domination; the ALMM source-proof expected-loss transition; finite compact minimax; optimized binomial overflow; one-use replacement coupling; and bounded-loss PAC-to-expectation conversion.
- Main transfer challenges: The quotient fixes measurability but does not itself prove all-input privacy or utility. The totalization must be inside the privacy analysis: inconsistent samples, empty version spaces/cores, empty choosing support, and fallback outputs cannot be patched after the fact. The score orientation and one-leaving/one-entering histogram relation must match the BNSV proof under replacement adjacency. The raw Yan confidence corollary cannot be used because substituting \(\beta_{\rm fac}/(t+2)\) introduces an uncontrolled fixed point and outer logarithm; the branch must use the two median sides plus a marginal bad-core bound and Hoeffding. On the lower side, the formal ALMM PAC corollary is not the required prior-ready expected-risk statement, and the hidden-factor construction must remain private for arbitrary nonrealizable neighboring inputs while using every factor input row at most once.
- Potential repair techniques and supporting references:
  - Technique: Work entirely on the countable quotient, adjoin a root/failure sentinel, deterministically enumerate all point-level choices, and define every partial source branch on every quotient dataset before randomization.
  - Supporting reference: Yan arXiv:2505.06581v2, audited transform/tree/algorithm material at lines 329--525; `assump:countably-coded-evaluation` for the countable discrete input convention.
  - Why it may help: A finite power of a countable discrete space is countable discrete, so all internal sample-dependent maps are measurable. Each totalized per-input output law is a probability measure on the standard-Borel product space, which supplies the exact kernel interface that failed on the prior raw measurable space.
  - Technique: At a released layer, encode one candidate summary per block and repeat the BNSV bounded-growth proof for the histogram relation \(q'(p)-q(p)=\mathbf1\{p=v\}-\mathbf1\{p=u\}\), including empty-support and sentinel transitions.
  - Supporting reference: BNSV arXiv:1504.07553, `alg:choosing`, `lem:CMprivacy`, `lem:CMutility`, and their audited proofs at lines 1947--2053; Yan `thm:private median` and `lem:choosing mechanism`.
  - Why it may help: The positive score support is finite even when \(Q_i\) and the candidate layer are countably infinite. One replacement removes at most one summary and adds at most one, so the source likelihood-ratio proof applies without a finite-domain or realizability restriction.
  - Technique: Let \(\mathcal K_i\) consist of all nonempty-version-space core indicators plus zero, prove \(\operatorname{VC}(\mathcal K_i)\le1\), fix the marginal bad probability before choosing the number of blocks, and use the two median sides plus one good opposite-side comparison block.
  - Supporting reference: Yan `thm:learn vc`, `lem: must comparable` at audited lines 416--421, and the order/final-comparison lemmas at 534--583; standard Hoeffding concentration.
  - Why it may help: Comparable pairs cannot realize \((1,0)\), while incomparable pairs cannot realize \((1,1)\). This supplies the missing improper-core marginal, and counting bad blocks avoids the raw \((t+2)\beta_{\rm raw}\) union bound, retaining the exact squared-log quota.
  - Technique: Derive the factor expected-risk floor through fixed-database resampling, then restrict to the finite Shelah threshold witness and apply compact finite minimax before constructing any simulator.
  - Supporting reference: ALMM arXiv:1806.00949v3, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; BNSV Lemma 5.9.
  - Why it may help: The resampling wrapper converts population expected risk into exact expected empirical loss on a uniform finite database while preserving the source privacy scale. Minimax produces one learner-independent prior per eligible factor, which is required for a common product-prior direct-sum experiment.
- Disposition: `selected`
- Branch notes: This is the parent-preserving framework named in `idea.md`. The prior same-perspective diagnostics are used only as nonbinding repair context. Their sole idea-level failure was raw-space nonmeasurability of version-space nonemptiness on an allowed uncountable countable-cocountable space. The new primitive quotient condition excludes exactly that example and makes the Yan input space countable discrete; it does not assume a selector or learner. The earlier privacy, improper-core, confidence, ALMM, minimax, occupancy, and one-use obligations remain proof obligations and are retained explicitly rather than treated as consequences of the paper titles.

### Framework 2: Use Yan's printed final theorem as a black-box factor kernel

- Source papers: Chao Yan, arXiv:2505.06581v2, `thm:privacy-OPTPrivateLearner` and the raw corollary/final theorem at audited lines 527--599.
- Applicability to current branch: The headline theorem has the correct qualitative VC-one and \(\log^*\operatorname{LD}\) behavior, but it does not by itself export the branch's totalized all-input replacement kernel, fixed quotient-output sigma-field, improper-core marginal, or exact \(q_i\) confidence calibration.
- Proof roadmap:
  1. Instantiate the printed theorem on \(\bar C_i\).
  2. Attempt to identify its output and privacy conventions with the branch interfaces.
  3. Reject the black-box transfer where totalization, replacement adjacency, and the raw confidence fixed point remain unproved.
- Key lemmas / ingredients: Yan's final privacy and PAC statements.
- Main transfer challenges: The missing interfaces are theorem-critical and cannot be deferred to postprocessing; the raw confidence substitution can add an unbounded logarithm.
- Potential repair techniques and supporting references:
  - Technique: Open the source proof and use Framework 1's current-notation wrappers.
  - Supporting reference: Yan's internal labeled components and BNSV's choosing proof listed above.
  - Why it may help: Those components expose the exact sensitivity, core, and confidence mechanisms needed by the branch.
- Disposition: `rejected`
- Branch notes: Rejected as a black-box roadmap, not as a source. Framework 1 uses the relevant internal source interfaces with explicit non-output boundaries.

### Framework 3: Proper-product hardness amplification

- Source papers: Bun, Nissim, Stemmer, and Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, `thm:lb-higher-general` and its hidden-coordinate proof.
- Applicability to current branch: The theorem uses proper outputs, conjunction semantics on a Cartesian power, and a common always-one point. The branch lower bound concerns disjoint factors and every unrestricted improper learner.
- Proof roadmap:
  1. Encode the factor problem as a proper conjunction product.
  2. Check the properness and anchor hypotheses.
  3. Reject the theorem conclusion when those hypotheses are absent.
- Key lemmas / ingredients: Hidden-coordinate sampling and one-record embedding.
- Main transfer challenges: Properness, conjunction structure, and the common anchor would change the theorem contract.
- Potential repair techniques and supporting references:
  - Technique: Retain only the one-use hidden-coordinate coupling pattern and prove the disjoint-mixture reduction directly.
  - Supporting reference: The proof of BNSV `thm:lb-higher-general` as precedent, together with the ALMM unrestricted factor interface.
  - Why it may help: The one-use adjacency idea survives, while the theorem's incompatible utility assumptions are not imported.
- Disposition: `rejected`
- Branch notes: Rejected as the lower theorem authority. The selected framework derives its own unrestricted disjoint-mixture statement.
