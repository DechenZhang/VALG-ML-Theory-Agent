# Independent literature, novelty, and proof audit

**Audit date:** 2026-07-22  
**Objects audited:** the six accepted theorem bundles under `sp-01/results` and `sp-02/results`
**Independence:** this audit used the accepted theorem/appendix files, the official source paper, and external primary literature. It did not use the project's `LITERATURE_SURVEY.md` files or its internal proof-review verdicts.

## Bottom line

All six main arguments appear mathematically sound **as conditional or restricted statements**. None solves Open Question 1 or Open Question 2 as posed. The strongest novelty claim supportable from the literature search is “possibly new packaging or bridge”; the central mechanisms of every result are already standard or have close direct precedents.

Progress scale used below: `0` = no implication for the open question; `1` = weak structural lemma/repackaging; `2` = genuine but restrictive special case or weak source-endorsed relaxation; `3` = substantial resolution of a broad endorsed relaxation; `4` = full solution.

| Result | Proof status under stated assumptions | Progress | Novelty assessment | Confidence |
|---|---|---:|---|---|
| OP1 / perspective 1 / idea 3 | Sound | **2/4** | Fixed-gate path linearization is known; the robust-tube-to-universal-law package may be new | High on proof/scope; medium on novelty |
| OP1 / perspective 2 / idea 2 | Sound | **1/4** | Standard VC lower bound, Sauer-Shelah, amplification, union bound, and direct sum | High |
| OP1 / perspective 3 / idea 2 | Sound | **2/4** | Core odd-ReLU linearization and small-error exactification closely match prior results | High |
| OP2 / perspective 1 / idea 2 | Sound | **1/4** | Tailored classical SQ-dimension/average-correlation argument | High |
| OP2 / perspective 2 / idea 3 | Sound modulo an explicit measurability convention | **1/4** | Elementary finite transcript-tree encoding; exact tie formulation may be new | High on mathematics; medium on exact novelty |
| OP2 / perspective 3 / idea 2 | Sound | **1/4** | Standard finite minimax/boosting convexification; polynomial conclusion assumes the missing bound | High |

The official paper asks for unconditional deterministic bounds
\[
\operatorname{dc}(\mathcal H)=O(TS)
\quad\text{and}\quad
\operatorname{dc}(\mathcal H)=O(m/\tau^2).
\]
Polynomial, domain-dependent, confident, and probabilistic variants are listed only as relaxations. Accordingly, a correct theorem about one of those variants is partial progress, not a solution.

## Open Question 1

### Perspective 1, idea 3: robust frozen-gate path representation

**Claim actually proved.** Under constant depth and a high-probability static tube on which every hidden preactivation stays uniformly away from zero and the entire SGD trajectory remains inside the tube,
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}\le S^L\le S^{L_0},
\]
and therefore `dc_{2 eps}(H) <= S^{L0}` when `delta_0 <= eps`.

**Rigor.** The proof is coherent. The gradient envelope is finite on the compact coordinate ball; `eta T G_r <= r` closes the trajectory-containment induction; the positive preactivation margin freezes every gate; and the network output then has an exact path expansion. The infimum over linear coefficients is compared pathwise before averaging, so there is no invalid interchange of infimum and expectation. Splitting on the good initialization event correctly costs at most `delta_0`. The path count `prod_{ell=0}^{L-1} n_ell <= S^L` is also valid.

The serious limitation is substantive, not a proof error: the added tube condition is very strong. It requires a single initialization-only event, uniform over every cube point and every parameter in an entire ball, that freezes all gates and controls all possible labeled histories. That condition removes the feature-learning behavior at the heart of the open question. No argument in the bundle shows that the Gaussian initialization and source SGD satisfy it with useful `delta_0` in a nontrivial regime.

**Prior overlap.** Lakshminarayanan and Singh (NeurIPS 2020, arXiv:2006.10529) define a neural path feature as the input coordinate times the product of path gates, define the neural path value as the product of path weights, and state exactly that the ReLU-network output is their inner product (their Definition 1 and Proposition 1 in the arXiv source). They also discuss fixed neural-path features. Thus the core representation is established prior art. The possibly new part is the exact event-split packaging that turns a robust all-history gate-freezing premise into one target- and distribution-independent probabilistic-dimension law.

**Verdict.** Genuine conditional mathematics and a recognizable source-endorsed relaxation, but only **moderate partial progress (2/4)** because the new premise removes the unresolved dynamic-gate case. Novelty is at most **partial/package-level**, not novelty of the path representation.

### Perspective 2, idea 2: deterministic amplification of a confident map

**Claim actually proved.** If, in addition to universal exact-SGD success, there is already a target-independent random `d`-dimensional map that exactly represents each target with probability at least `1/2`, then
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The polynomial corollary separately assumes `d <= p(S,T)`.

**Rigor.** The proof is sound. If `2T` points were shattered, random labels on the uniform distribution over those points leave an unseen test label fair. The probability of remaining unseen after `T` draws is `(1-1/(2T))^T >= 1/2`, yielding average error at least `1/4`, contrary to `eps < 1/4`. Sauer-Shelah then bounds the finite class size. Independent repetition of the random embedding, followed by a union bound over the finite class, gives one deterministic tuple covering all targets; concatenating the maps preserves the successful block exactly, including ties.

**Prior overlap.** The VC/sample lower-bound step is classical (Ehrenfeucht, Haussler, Kearns, and Valiant 1989), the growth bound is Sauer-Shelah, and the rest is standard probability amplification plus a direct sum. Kamath, Montasser, and Srebro (COLT 2020) introduced the relevant probabilistic-dimension notions; Chornomaz, Moran, and Waknine (STOC 2025) explicitly study randomized representations and their relation to exact sign-rank/dimension complexity. No searched source used the exact constant `7`, but a new numerical constant does not make the mechanism novel.

The extra assumption is close to the desired representational conclusion: it already postulates an exact random embedding, and the theorem only derandomizes it at a logarithmic-in-class-size cost. The SGD premise is used merely to bound VC dimension/class size; it does not construct the map or bound `d`. The polynomial corollary assumes precisely the remaining polynomial estimate.

**Verdict.** Correct but **weak progress (1/4)** and **low novelty**. It is not evidence that SGD itself forces a low-dimensional deterministic representation.

### Perspective 3, idea 2: odd targets and depth-two bias-free ReLU

**Claim actually proved.** For antipodally odd targets, a two-layer bias-free ReLU network, and `2 eps < 1/(n+1)`, universal source success implies that the identity map exactly represents every target:
\[
\operatorname{dc}(\mathcal H)\le n\le S\le TS.
\]

**Rigor.** The proof is sound. The identity
\[
a^\top\sigma(Wx)-a^\top\sigma(-Wx)=\langle W^\top a,x\rangle
\]
holds exactly and remains valid at zero preactivations. The tie-aware pair analysis correctly transfers the source error to the antisymmetric linear score with factor two. Training under the symmetrized distribution and expectation-to-existence gives, for every distribution, a homogeneous separator of error at most `2 eps`. If exact separation failed, a convex-hull/Farkas certificate can be pruned by Caratheodory to at most `n+1` signed points; the uniform distribution on those points forces every separator to make error at least `1/(n+1)`, contradicting the strict accuracy threshold. The handling of the fixed tie label is careful and correct.

**Prior overlap.** Zhang, Saxe, and Latham, *When Are Bias-Free ReLU Networks Effectively Linear Networks?* (TMLR 2025, arXiv:2406.12615v3), state that every two-layer bias-free ReLU function is a linear function plus an even positively homogeneous function; equivalently, its odd part is linear. Their abstract explicitly says that the only odd function expressible by such a network is linear. Chornomaz, Moran, and Waknine (STOC 2025, arXiv:2411.10784, Lemma labeled `l:HellyNum` in the source and Lemma 29 in the proceedings numbering) prove that an `alpha`-representation by halfspaces in `R^d` is exact whenever `alpha < 1/(d+1)`, using the same small-support/Helly principle. The audited proof independently rederives both ingredients and adds the factor-two transfer from the SGD predictor.

**Verdict.** A correct and clean **restricted special case (2/4)**. The SGD-to-odd-part bridge may be a useful packaging, but the decisive structure and exactification threshold have close prior precedents. Novelty is therefore **low to partial**, not a new general phenomenon.

## Open Question 2

### Perspective 1, idea 2: fixed-product SQ lower bound

**Claim actually proved.** Under a fixed distribution/prior second-moment witness,
\[
m\ge R\tau^2\left(\frac{1-R^{-1/2}}2-\varepsilon\right).
\]
For a finite Bessel family with constant `B`, this gives
\[
\operatorname{dc}(\mathcal H)\le K\le 8Bm/\tau^2.
\]

**Rigor.** The first-exit proof is sound. Before exit, all surviving targets see the same transcript for a fixed learner seed. The second-moment condition and Markov bound charge each round by at most `1/(R tau^2)`; first-exit sets are disjoint, so total exited mass is at most `m/(R tau^2)`. Cauchy-Schwarz bounds the common survivor predictor's full-prior correlation by `R^{-1/2}`, and removing exited mass costs at most one more exited-mass term. Averaging the resulting risk lower bound over learner seeds and comparing with the pointwise adversarial-oracle guarantee yields the theorem. Uniform Bessel families give `R=K/B`, and `phi(x)=(h_1(x),...,h_K(x))` gives the separate trivial exact representation.

**Prior overlap.** This is squarely in the classical statistical-query-dimension tradition. Kearns (JACM 1998) introduced SQ learning; Blum, Furst, Jackson, Kearns, Mansour, and Rudich (STOC 1994) give the classical correlation/SQ-dimension lower-bound method with the characteristic dimension-times-tolerance-squared scaling; Feldman (COLT 2017, PMLR 65:785-830, paper identifier `feldman17c`) gives a general characterization unifying average-correlation, discrimination-norm, and spectral SQ lower bounds. The audited result is a transparent constant-explicit fixed-product specialization, not a new lower-bound paradigm.

The fixed-product witness is not derived from arbitrary dimension complexity or from arbitrary distribution-independent SQ learnability. The finite Bessel corollary covers a narrow, already correlation-controlled family; `dc(H) <= K` is immediate from listing its members.

**Verdict.** Correct but **weak progress (1/4)** and **low novelty**. It establishes a familiar special case rather than the required universal upper bound.

### Perspective 2, idea 3: response-tree probabilistic dimension

**Claim actually proved.** Enumerating an endpoint-inclusive tolerance grid at every node gives
\[
\operatorname{dc}^{\rm tie}_{\varepsilon}(\mathcal H)
\le (\lceil1/\tau\rceil+1)^m
\le (2+1/\tau)^m.
\]

**Rigor.** The combinatorial proof is sound. The grid has covering radius `1/K <= tau`; rounding is valid node by node with no accumulated tolerance. For each fixed random tape, every padded grid-reply string determines a terminal binary predictor. Putting all leaves into coordinates yields an instance-independent feature map. The canonical valid transcript selects a standard-basis coordinate whose score equals the learner output exactly, so the infimal tie loss is pointwise bounded by the learner's binary loss before expectation.

There is one technical caveat: on an arbitrary domain and an arbitrary tape space, the proof invokes a standing measurability convention for the map-valued pushforward and for the infimum-over-weights risk functional rather than deriving measurability from a specified sigma-algebra. This is acceptable as an explicit regularity convention, but the theorem is not fully foundational without it. It does not affect the finite tree logic.

**Prior overlap.** Finite response-tree enumeration and one-hot leaf encoding are standard decision-tree/transcript techniques. Kamath, Montasser, and Srebro (2020) provide the probabilistic-dimension framework. I did not find the exact tie-penalized formula stated verbatim in the searched literature, so the precise formulation may be new; the proof mechanism is elementary and expected.

The conclusion is exponential in `m` for fixed `tau`, whereas the source asks for polynomial, ideally linear, deterministic exact dimension. It also changes the target to an expected probabilistic dimension with tie-penalized loss. Thus it gives a universal finite certificate but does not narrow the central polynomial-vs-exponential barrier.

**Verdict.** Correct but **weak progress (1/4)**. Exact-statement novelty is **plausible but low-value**; confidence on “not previously stated verbatim” is only medium.

### Perspective 3, idea 2: minimax grid-leaf span exactification

**Claim actually proved.** On finite domains, the all-tapes/grid-leaf output pool `P_N` has a span `V_N`. Robust distribution-independent SQ learning implies, for each target, one distribution-independent mixture over this pool whose barycenter has pointwise signed margin at least `1-2 eps`; consequently
\[
\operatorname{dc}(\mathcal H_N)\le \dim V_N.
\]
The polynomial corollary separately assumes that `dim V_N` is polynomial in `m_N + 1/tau_N`.

**Rigor.** The proof is sound. For each distribution, the rounded valid oracle pushes the tape law to a mixture in the static pool with average disagreement at most `eps`. Because both the domain and distinct predictor pool are finite, von Neumann minimax converts `for every D, there exists mu_D` into one `mu_h` that works for every distribution. Testing point masses gives pointwise disagreement at most `eps`, and the binary identity `1{g != h}=(1-hg)/2` yields margin `1-2 eps`. Expanding the barycenter in a basis of the common span gives exact target-specific linear weights.

**Prior overlap.** The conversion is the standard weak-learning/boosting game argument: a distribution-wise weak predictor implies a convex combination that works on all examples. Freund and Schapire's game-theoretic boosting analysis (COLT 1996) is a canonical source. Chornomaz, Moran, and Waknine's proof that halfspaces are complete for exact reductions to SCO likewise uses minimax to turn per-distribution existence into a single exact object. The application to the particular all-tapes grid-leaf span may be new packaging, but the mathematical engine is established.

The exact theorem leaves `d_N=dim V_N` uncontrolled; it can be as large as `|X_N|`. The polynomial corollary assumes the polynomial span inequality rather than deriving it from SQ learnability. That assumption is essentially the missing complexity step, so the corollary does not constitute evidence for the open conjecture.

**Verdict.** A correct structural reduction but **weak progress (1/4)** and **low novelty**. It identifies a precise bottleneck, not a polynomial bound.

## Citation and originality concerns

The accepted bundles' bibliographies are effectively empty for these arguments (the OP2 bundles contain no relevant primary citations, and the OP1 bundles do not cite the direct overlaps above). At minimum, a research-facing version should cite:

1. Lakshminarayanan-Singh for neural path features and fixed-gate path linearization.
2. Kamath-Montasser-Srebro and Chornomaz-Moran-Waknine for probabilistic/randomized dimension representations.
3. Ehrenfeucht-Haussler-Kearns-Valiant and Sauer for the OP1 amplification proof.
4. Zhang-Saxe-Latham and Chornomaz-Moran-Waknine for the odd-ReLU result.
5. Kearns, Blum et al., and Feldman 2017 for the SQ correlation lower bound.
6. Freund-Schapire for the minimax/convex-hull exactification.

Omitting these citations currently makes elementary or known ingredients look more original than the evidence supports.

## Search record and limitations

Searches were run on 2026-07-22 against the arXiv API, OpenAlex, Crossref, Google Scholar, Semantic Scholar, PMLR, and primary-paper source/PDF files. Query families included the exact source-paper title; `probabilistic dimension complexity`; `dimension complexity statistical query`; `distribution-independent SQ`; `SQ transcript/tree`; `bias-free ReLU odd antisymmetric linear`; `neural path features`; `fixed/stable gates`; and `weak learning minimax convex hull`. Direct title/author searches were also run for the papers listed below.

Forward-response search for the 2026 open-problem paper found no substantive response paper: the exact-title arXiv and OpenAlex routes returned no citing record; Google Scholar showed the source record/two versions and no cited-by route; Crossref did not index the PMLR item; Semantic Scholar returned HTTP 429. No direct response appeared in the broader recent-arXiv searches through the audit date. These are negative search results, not proof that no unpublished manuscript exists.

Three Google Scholar exact-phrase result pages (`probabilistic sign-rank`, `statistical query` plus `dimension complexity`, and `bias-free ReLU odd linear`) returned no parseable result block; the broad `probabilistic dimension complexity` query was very noisy. The novelty verdicts therefore rely primarily on identified primary sources, not citation-count completeness.

The source paper was published on 2026-06-29, only 23 days before this audit. Forward-citation evidence is consequently weak. Database indexing can lag, abstracts do not expose every theorem, and exact equivalence between differently formalized statements can be missed. “Low novelty” above means a direct technical overlap was found; “possibly new packaging” is deliberately weaker than a claim of first publication.

Karchmer and Malach, *The Power of Random Features and the Limits of Distribution-Free Gradient Descent* (ICML 2025, arXiv:2505.10423), looks superficially like strong prior art for the desired polynomial random-feature conclusions. However, Feldman, Kamath, and Srebro's 2026 open-problem paper explicitly says the relevant upper bounds are invalid because of a proof flaw. The arXiv record remained version 1 in this search and no public correction was found. It should not be treated as an established solution or as valid prior art for a theorem whose proof depends on the flawed step.

## Primary sources

- Vitaly Feldman, Pritish Kamath, Nathan Srebro. [Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?](https://proceedings.mlr.press/v336/feldman26a.html), PMLR 336, 2026.
- Chandrashekar Lakshminarayanan, Amit Vikram Singh. [Neural Path Features and Neural Path Kernel: Understanding the Role of Gates in Deep Learning](https://arxiv.org/abs/2006.10529), NeurIPS 2020.
- Yedi Zhang, Andrew Saxe, Peter E. Latham. [When Are Bias-Free ReLU Networks Effectively Linear Networks?](https://arxiv.org/abs/2406.12615), TMLR 2025.
- Bogdan Chornomaz, Shay Moran, Tom Waknine. [On Reductions and Representations of Learning Problems in Euclidean Spaces](https://arxiv.org/abs/2411.10784), STOC 2025, DOI [10.1145/3717823.3718213](https://doi.org/10.1145/3717823.3718213).
- Pritish Kamath, Omar Montasser, Nathan Srebro. [Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity](https://proceedings.mlr.press/v125/kamath20b.html), COLT 2020.
- Andrzej Ehrenfeucht, David Haussler, Michael Kearns, Leslie Valiant. [A General Lower Bound on the Number of Examples Needed for Learning](https://doi.org/10.1016/0890-5401(89)90002-3), Information and Computation, 1989.
- Norbert Sauer. [On the Density of Families of Sets](https://doi.org/10.1016/0097-3165(72)90019-2), Journal of Combinatorial Theory A, 1972.
- Michael Kearns. [Efficient Noise-Tolerant Learning from Statistical Queries](https://doi.org/10.1145/293347.293351), JACM, 1998.
- Avrim Blum, Merrick Furst, Jeffrey Jackson, Michael Kearns, Yishay Mansour, Steven Rudich. [Weakly Learning DNF and Characterizing Statistical Query Learning Using Fourier Analysis](https://doi.org/10.1145/195058.195147), STOC 1994.
- Vitaly Feldman. [A General Characterization of the Statistical Query Complexity](https://proceedings.mlr.press/v65/feldman17c.html), COLT 2017.
- Yoav Freund, Robert Schapire. [Game Theory, On-Line Prediction and Boosting](https://doi.org/10.1145/238061.238163), COLT 1996.
- Ari Karchmer, Eran Malach. [The Power of Random Features and the Limits of Distribution-Free Gradient Descent](https://arxiv.org/abs/2505.10423), ICML 2025. Cited only with the validity warning above.
