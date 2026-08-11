# LITERATURE_SURVEY.md

The active research direction is the exact expressive-power question in the
brief: for a binary class \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\), does one
randomized, adaptive \((m,\tau)\)-SQ algorithm that achieves expected error
\(\varepsilon<1/4\) for every distribution \(\mathcal D\), every target
\(h^\star\), and every tolerance-valid (adversarial) oracle response imply
\(\operatorname{dc}(\mathcal H)\le C m/\tau^2\) with a universal constant and
no dependence on \(|\mathcal X|\)? The embedding is deterministic and exact;
the learner is one algorithm shared by all distributions. Polynomial or
domain-dependent bounds, CSQ-only results, fixed-distribution results,
exact-expectation access, and probabilistic or approximate dimension notions
are recorded as partial or diagnostic evidence only.

The search first checked the workspace for `papers/` and `literature/` (none
were present), then inspected the official COLT source paper, its reference
seeds, official PMLR/JMLR pages, and an arXiv alias audit on 2026-07-22. Exact
and joint alias searches found only the source paper and the Karchmer--Malach
attempt as papers that directly discuss both SQ-type learning and a dimension
notion. The direct section is therefore intentionally sparse rather than
padding it with restricted or changed targets.

## 1. direct theory

### Expressive Power

#### Distribution-independent SQ learning versus deterministic dimension complexity

[D1] Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent? (COLT 2026)

**Identifier:** https://proceedings.mlr.press/v336/feldman26a.html

**Setting:** Binary classes \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\) over an arbitrary domain, deterministic exact dimension complexity, and randomized adaptive SQ algorithms. A query takes values in \([-1,1]\), and the oracle may return any value within tolerance \(\tau\) of the population expectation.

**Goal:** Determine whether the same learner, for every input distribution and target and for every \(\varepsilon<1/4\), forces \(\operatorname{dc}(\mathcal H)=O(m/\tau^2)\) with a universal constant independent of the domain size.

**Main result:** Open Question 2 states the implication but does not prove it or give a counterexample. The paper records the converse (low dimension gives an SQ learner) only with polynomial dependence that includes \(n=\log|\mathcal X|\), and it lists polynomial, domain-dependent, confident-dimension, and probabilistic-dimension variants.

**Key proof techniques:** The paper synthesizes sign representations, SQ oracle transcripts, margin-based halfspace learning, and randomized representation notions; its converse discussion uses Perceptron/rescaling access and finite-bit-complexity margin estimates.

**Limitations:** No forward theorem, lower-bound family, or deterministic derandomization is supplied. The listed variants change at least one target object, quantifier, or rate and do not resolve the exact question.

**Relation to research scope:** direct prior work -- this is the source-direction anchor and fixes the arbitrary-domain, adversarial-tolerance, expectation-over-coins, exact-deterministic, and domain-independent requirements.

[D2] The Power of Random Features and the Limits of Distribution-Free Gradient Descent (ICML 2025; published claim, later correction reported)

**Identifier:** arXiv:2505.10423

**Setting:** Distribution-free mini-batch SGD and its reduction to tolerance-bounded SQ learning, together with average probabilistic dimension complexity (adc), which is a randomized and average-over-target relaxation of deterministic dimension complexity.

**Goal:** Relate distribution-free gradient/SQ resources to a random-feature representation and compare adc with standard dimension complexity.

**Main result:** The published paper claims that distribution-free bSGD yields \(\operatorname{adc}_{\epsilon,\delta}\le\operatorname{poly}(Tp/c^2)\), via a conversion to SQs and an SQ-dimension bound, and claims an infinite separation between adc and standard dimension complexity. Feldman, Kamath, and Srebro (2026) state in the source paper that the relevant upper-bound claims do not hold because of a proof flaw (citing 2026 author communication).

**Key proof techniques:** Approximate-gradient-to-SQ simulation, SQ-dimension/discrepancy arguments, communication-complexity tools, random-feature weak approximation, and boosting.

**Limitations:** The claimed upper bound is not verified after the reported flaw and must not be used as an established theorem. Even before that correction, the conclusion concerns adc, a prior over targets, approximate 0/1 representation, finite-precision bSGD, and polynomial rather than linear dependence; it does not imply a common exact embedding of dimension \(O(m/\tau^2)\) for unrestricted adaptive SQ learning.

**Relation to research scope:** direct prior work -- closest joint attempt, but currently diagnostic/partial rather than resolving the exact deterministic, domain-independent target.

## 2. foundation theory

### Component Theory

#### Component: deterministic and randomized Euclidean sign representations

##### Expressive Power

###### Dimension complexity, sign rank, and probabilistic variants

[F1] Limitations of Learning via Embeddings in Euclidean Half Spaces (JMLR 2002)

**Identifier:** https://jmlr.org/papers/v3/bendavid02a.html

**Setting:** Binary concept classes represented as signs of linear functionals after one shared Euclidean embedding; for finite classes this is the sign-rank viewpoint underlying dimension complexity.

**Goal:** Compare VC/sample complexity with the dimension needed for a common Euclidean half-space representation.

**Main result:** The paper defines dimension complexity and constructs classes whose dimension complexity is much larger than their VC dimension, showing that ordinary distribution-free PAC learnability or sample complexity does not force a low-dimensional linear representation.

**Key proof techniques:** Sign-matrix geometry, Euclidean half-space embeddings, and combinatorial/probabilistic separation constructions.

**Limitations:** No SQ premise is assumed and no relation to adaptive tolerance, query count, or \(m/\tau^2\) is proved. The separation cannot by itself furnish a counterexample because the required universal SQ learner is missing.

**Relation to research scope:** component-level foundation -- exact deterministic representation target and a warning against replacing SQ structure with VC dimension.

[F2] Sign Rank versus VC Dimension (COLT 2016)

**Identifier:** https://proceedings.mlr.press/v49/alon16.html

**Setting:** Finite \(N\times N\) sign matrices, their VC dimension, and minimum real sign rank (equivalently finite-domain dimension complexity).

**Goal:** Quantify the largest possible sign rank at a prescribed VC dimension and sharpen lower-bound tools for Euclidean representations.

**Main result:** The maximum sign rank is 3 for VC dimension 1 and \(\widetilde\Theta(\sqrt N)\) for VC dimension 2, with related bounds for larger fixed VC dimension.

**Key proof techniques:** Warren's theorem, probabilistic constructions, low-stabbing-number spanning trees, the moment curve, and Forster-style spectral bounds.

**Limitations:** These are representation lower/upper bounds for finite matrices, not SQ learning results. No class is shown to satisfy the source's distribution-independent unrestricted-SQ premise.

**Relation to research scope:** component-level foundation -- supplies candidate high-dimension families and sign-rank diagnostics, but not the learner side of a counterexample.

[F3] Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity (COLT 2020)

**Identifier:** https://proceedings.mlr.press/v125/kamath20b.html

**Setting:** Randomized feature maps and approximate linear or kernel representations measured by probabilistic dimensional and margin complexity.

**Goal:** Identify representation quantities that are both sufficient and necessary for learning with linear predictors or kernels when exact deterministic representation is too rigid.

**Main result:** The proposed approximate probabilistic notions characterize linear/kernel learning more faithfully than exact deterministic dimension or margin complexity; randomized approximate embeddings can be substantially smaller.

**Key proof techniques:** Minimax/probabilistic representation arguments and conversions between approximation error and linear-predictor learning.

**Limitations:** A bound on \(\operatorname{dc}_{C\varepsilon}\) or a randomized embedding does not yield one exact common feature map. The paper does not establish any unrestricted adaptive-SQ rate.

**Relation to research scope:** component-level foundation -- source-endorsed relaxation and a precise warning that approximate/probabilistic dimension cannot be silently promoted to \(\operatorname{dc}\).

[F4] On Reductions and Representations of Learning Problems in Euclidean Spaces (STOC 2025)

**Identifier:** arXiv:2411.10784

**Setting:** Reductions of concept classes to stochastic convex optimization in Euclidean space, including approximate sign-rank and randomized representations.

**Goal:** Quantify Euclidean dimension required by classification-to-optimization reductions and understand the effect of randomness.

**Main result:** Some mildly nontrivial reductions require dimension exponentially larger than VC dimension, while natural tasks admit much smaller randomized/approximate representations; the work introduces several variants of dimension complexity.

**Key proof techniques:** A convexity-aware Borsuk--Ulam generalization, topological lower bounds, and randomized representation constructions.

**Limitations:** The target is stochastic convex optimization and altered representation notions, not the exact sign embedding or an SQ query protocol. It gives no \(m/\tau^2\) implication.

**Relation to research scope:** component-level foundation -- modern evidence that randomization can reduce representation dimension, leaving the exact SQ-to-deterministic derandomization step open.

#### Component: randomized adaptive statistical-query learning

##### Expressive Power

###### SQ complexity and distribution independence

[F5] Efficient Noise-Tolerant Learning from Statistical Queries (JACM 1998)

**Identifier:** DOI:10.1145/293347.293351

**Setting:** Algorithms receive bounded population expectations through an SQ oracle with additive tolerance instead of labeled examples; tolerance responses can be adversarial within the allowed interval.

**Goal:** Formalize SQ learning and its robustness to classification noise, and derive upper and lower bounds for noise-tolerant learning.

**Main result:** The SQ framework simulates broad noise-tolerant learning procedures through approximate expectations and gives canonical SQ lower-bound examples such as parity under hard distributions.

**Key proof techniques:** Approximate-expectation simulation, tolerance accounting, and correlation-based lower-bound constructions.

**Limitations:** The foundational results do not connect universal distribution-independent SQ complexity to a shared deterministic sign embedding. Statements tied to one distribution or a restricted query family do not discharge the source quantifiers.

**Relation to research scope:** component-level foundation -- establishes the exact adversarial-tolerance oracle semantics that any transcript proof must respect.

[F6] Weakly Learning DNF and Characterizing Statistical Query Learning Using Fourier Analysis (STOC 1994)

**Identifier:** DOI:10.1145/195058.195147

**Setting:** Weak SQ learning of Boolean functions, chiefly through correlations and Fourier coefficients under a specified distribution.

**Goal:** Characterize weak SQ learning and apply the characterization to DNF.

**Main result:** A statistical-query-dimension/correlation characterization yields weak-learning guarantees for DNF when detectable Fourier correlations exist, and supplies classical SQ lower-bound methodology.

**Key proof techniques:** Fourier analysis, pairwise-correlation packings, and weak-learning reductions.

**Limitations:** The distribution-specific correlation geometry is not one learner valid for every input distribution, and no deterministic common embedding or linear \(m/\tau^2\) bound follows.

**Relation to research scope:** component-level foundation -- fixed-distribution SQ evidence and an explicit quantifier boundary.

[F7] A General Characterization of the Statistical Query Complexity (COLT 2017)

**Identifier:** https://proceedings.mlr.press/v65/feldman17c.html

**Setting:** General statistical search problems over families of distributions, arbitrary bounded queries, and randomized adaptive SQ algorithms.

**Goal:** Give a distribution-aware characterization of SQ query complexity and required tolerance beyond fixed-distribution Boolean learning.

**Main result:** Statistical-dimension quantities, including discrimination-style norms, give nearly tight randomized SQ upper/lower characterizations and explicitly distinguish general distribution families from fixed-distribution formulations.

**Key proof techniques:** Minimax arguments, randomized statistical dimensions, discrimination norms, and adversarial-oracle lower bounds.

**Limitations:** The characterization is query/distribution geometry, not an exact sign-representation theorem. It does not extract one feature map shared by every target and point, let alone dimension linear in \(m/\tau^2\).

**Relation to research scope:** component-level foundation -- strongest general tool for auditing adaptivity, randomization, and universal-distribution quantifiers.

[F8] Evolvability from Learning Algorithms (STOC 2008)

**Identifier:** DOI:10.1145/1374376.1374465

**Setting:** Weak distribution-independent learning by correlational statistical queries (CSQs), linked to margin-based Euclidean representations and evolvability.

**Goal:** Relate learning algorithms and evolvability, and characterize the geometric resources of correlation-only learning.

**Main result:** Weak distribution-independent CSQ learnability is equivalent up to polynomial resources to polynomial margin complexity.

**Key proof techniques:** Correlation-query simulations, margin representations, evolvability mutations, and boosting-style amplification.

**Limitations:** CSQs are a strict restriction of unrestricted SQs; margin complexity is stronger and quantitatively different from exact dimension complexity; the polynomial equivalence is not the requested linear \(m/\tau^2\) implication.

**Relation to research scope:** component-level foundation -- source-cited partial bridge, not a transfer to the exact unrestricted protocol.

#### Component: SQ-to-linear-learning converse and oracle-simulation bridges

##### Expressive Power

###### Converse and simulation results

[F9] A Simple Polynomial-Time Rescaling Algorithm for Solving Linear Programs (STOC 2004)

**Identifier:** DOI:10.1145/1007352.1007404

**Setting:** Perceptron/rescaling methods for linearly separable feasibility and halfspace learning when a positive margin is available.

**Goal:** Obtain polynomial-time progress for ill-conditioned linear feasibility through geometric rescaling.

**Main result:** The Perceptron-style access pattern can be implemented through expectation/SQ estimates; as used in the source paper, a finite-dimensional representation with margin \(\gamma\) yields query and inverse-tolerance complexity polynomial in the dimension and \(\log(1/\gamma)\).

**Key proof techniques:** Potential-improving Perceptron updates, geometric rescaling, and margin conditioning.

**Limitations:** This is the converse direction (dimension to SQ), not the forward implication. Margin control and finite encoding introduce domain/bit-complexity dependence.

**Relation to research scope:** component-level foundation -- identifies the known converse pipeline that cannot simply be reversed.

[F10] Statistical Active Learning Algorithms for Noise Tolerance and Differential Privacy (NeurIPS 2013; extended arXiv version)

**Identifier:** arXiv:1307.3102

**Setting:** Active statistical learning algorithms whose operations estimate expectations of filtered examples, including thresholds, rectangles, and linear separators.

**Goal:** Build efficient active learners robust to random classification noise and differentially private constraints using statistical estimates.

**Main result:** The framework gives SQ-compatible implementations of the relevant Perceptron/halfspace procedures; the source paper cites its appendix for converting the converse halfspace access pattern to SQ queries.

**Key proof techniques:** Localization/filtering, statistical estimation, margin methods, and Perceptron-style updates.

**Limitations:** It assumes an existing low-dimensional halfspace representation and therefore supports only the converse. It does not construct a feature map from an arbitrary adaptive SQ learner.

**Relation to research scope:** component-level foundation -- makes the known representation-to-SQ simulation explicit while retaining its finite-domain/margin assumptions.

[F11] Efficient Active Learning of Halfspaces: An Aggressive Approach (JMLR 2013)

**Identifier:** https://jmlr.org/papers/v14/gonen13a.html

**Setting:** Active learning of finite-bit-complexity halfspaces with quantitative dependence on the achievable margin.

**Goal:** Analyze aggressive halfspace updates and the margin induced by finite representations.

**Main result:** The bit-complexity estimate used by the source paper gives a bound of the form \(\log(1/\gamma)=O(nd\log d)\), where \(n=\log|\mathcal X|\) under a finite encoding.

**Key proof techniques:** Margin geometry, aggressive/Perceptron updates, and determinant/bit-complexity bounds.

**Limitations:** The estimate is finite-domain/finite-encoding dependent and feeds only the converse learner. It neither removes \(n\) nor proves a forward SQ-to-dimension bound.

**Relation to research scope:** component-level foundation -- locates exactly where domain-size dependence enters the known converse and the source-endorsed domain-dependent relaxation.

[F12] On the Power of Differentiable Learning versus PAC and SQ Learning (NeurIPS 2021)

**Identifier:** https://proceedings.neurips.cc/paper/2021/hash/cc225865b743ecc91c4743259813f604-Abstract.html

**Setting:** Mini-batch SGD with approximate gradient access, compared with PAC and SQ oracles under explicit precision and batch-size regimes.

**Goal:** Determine when differentiable learning is equivalent to SQ learning and when fine gradient precision lets SGD simulate sample-based PAC learning.

**Main result:** SGD can simulate SQ learning generally; when batch size times gradient precision squared is sufficiently large its power is equivalent to SQ, while sufficiently fine precision can exceed SQ power and approach PAC power.

**Key proof techniques:** Encoding SQ expectations in gradient coordinates, approximate-gradient simulation, and precision/batch-size reductions.

**Limitations:** Oracle equivalence does not imply a deterministic sign embedding. The result supplies no common feature map and cannot replace the source's adversarial SQ semantics or exact \(m/\tau^2\) target.

**Relation to research scope:** component-level foundation -- legitimate access-model bridge, but a separate representation theorem is still required.

## 3. empirical practice

These papers document distribution-dependent neural-versus-linear phenomena that motivate the open problem. None supplies evidence for the universal implication, and empirical or fixed-distribution success cannot replace the exact SQ premise.

[E1] Quantifying the Benefit of Using Differentiable Learning over Tangent Kernels (ICML 2021)

**Identifier:** https://proceedings.mlr.press/v139/malach21a.html

**Main result:** Under specified input distributions, differentiable neural learning can obtain a useful feature-learning advantage while the corresponding tangent-kernel method has no nontrivial advantage; parity-mixture constructions make distribution-created correlations explicit.

**Relation to research scope:** empirical context -- distribution dependent and therefore neither a universal SQ learner nor a deterministic dimension lower/upper theorem.

[E2] The Staircase Property: How Hierarchical Structure Can Guide Deep Learning (NeurIPS 2021)

**Identifier:** https://proceedings.neurips.cc/paper/2021/hash/a45a1d12ee0fb7f1f872ab91da18f899-Abstract.html

**Main result:** A hierarchical Fourier/staircase condition predicts when gradient learning discovers increasingly complex components in canonical synthetic distributions, with theoretical and empirical evidence for feature-learning gains.

**Relation to research scope:** empirical context -- the staircase basis is distribution-specific and does not yield an all-distributions SQ-to-dimension result.

[E3] The Merged-Staircase Property: A Necessary and Nearly Sufficient Condition for SGD Learning of Sparse Functions on Two-Layer Neural Networks (COLT 2022)

**Identifier:** https://proceedings.mlr.press/v178/abbe22a.html

**Main result:** In a mean-field two-layer setting for sparse functions, the merged-staircase property is necessary and nearly sufficient for efficient SGD learning, while linear feature maps fail in the same regime.

**Relation to research scope:** empirical context -- sharp distributional mechanism, but not a universal adaptive SQ protocol or deterministic exact dimension theorem.

[E4] Positive Distribution Shift as a Framework for Understanding Tractable Learning (ICML 2026, to appear)

**Identifier:** arXiv:2602.08907

**Main result:** Deliberately chosen train/test covariate shifts can make computationally hard classes tractable for standard gradient-based procedures; the paper formalizes positive distribution shift and connects it to membership-query-style access.

**Relation to research scope:** empirical context -- the favorable shift is precisely a distributional assumption and therefore reinforces, rather than resolves, the source's universal-distribution barrier.

## 4. gap and open problem

### Expressive Power

#### Exact unrestricted-SQ-to-deterministic-dimension implication

**Search path / outcome:** Direct theory found but sparse (D1--D2); component foundation searches covered exact sign rank, randomized representations, SQ dimensions, and converse simulations; exact-name, alias, theorem-term, and same-sub-target arXiv audits found no verified additional forward theorem or counterexample.

**Gap statement:**

- Evidence pattern: Every positive bridge found changes at least one theorem-critical ingredient: unrestricted SQ to CSQ, exact deterministic dimension to margin/probabilistic/average dimension, arbitrary domains to finite encodings, or the forward implication to its converse. D2 is the closest joint attempt, but its relevant upper-bound proof is reported flawed by D1.
- Supporting papers / absence pattern: D1 states the exact open question; D2 claims a polynomial adc result and an infinite adc-versus-dc separation but is not reliable as proof evidence; F1--F4 show representation gaps; F5--F8 delimit SQ, fixed-distribution, and CSQ geometry; F9--F12 establish only converse or oracle-simulation routes. No verified family simultaneously satisfies the full universal unrestricted-SQ premise and has unbounded \(\operatorname{dc}(\mathcal H)/(m/\tau^2)\).
- Why it matters downstream: A first idea should remain source-faithful and either derive one exact feature map from all randomized adaptive transcripts or construct a high-sign-rank family with one fixed learner that works for every distribution and target. Favorable oracle responses, per-distribution algorithms, and relaxed embeddings are invalid shortcuts.
- Source-direction classification: central -- this is the exact requested theorem/counterexample, including arbitrary domains, adversarial tolerance, expectation over learner coins, and no \(|\mathcal X|\) dependence.
- Status: supported

#### Randomized learner versus one deterministic exact embedding

**Search path / outcome:** Direct attempted result D2 plus component foundation F1--F4; randomized/approximate representation literature is nonzero, but no exactification theorem was found.

**Gap statement:**

- Evidence pattern: F3 and F4 show that randomized or approximate embeddings can be much smaller than deterministic exact sign representations. D2's adc notion averages over a target prior and random features, while the source requires one exact embedding for the whole class.
- Supporting papers / absence pattern: F1 and F2 provide deterministic sign-rank lower bounds; F3 and F4 provide probabilistic/approximate alternatives; D2 is a diagnostic claimed route with a reported flaw. No minimax or derandomization result gives dimension \(O(m/\tau^2)\) independent of \(\mathcal D\), \(h^\star\), oracle replies, and learner randomness.
- Why it matters downstream: Any transcript-feature construction must identify which randomness is shared, distinguish exact from approximate representation, and prove that a single map works simultaneously for all targets and distributions. A counterexample based only on probabilistic dimension would be partial, not a disproof of Open Question 2.
- Source-direction classification: central -- deterministic exactness is an explicit source constraint; probabilistic/confident/approximate variants are narrowed partial targets.
- Status: supported

#### Adversarial tolerance, adaptivity, and distribution independence

**Search path / outcome:** SQ component search and same-target audit; fixed-distribution Fourier/SQ-dimension papers and CSQ equivalences were retained as foundations, not direct solutions.

**Gap statement:**

- Evidence pattern: Under the source oracle, each response is any value in a tolerance interval, and an adaptive learner induces a response tree. F5 and F7 model this adversarial structure; F6 and F8 obtain geometry only in fixed-distribution or correlation-only settings.
- Supporting papers / absence pattern: The literature found no theorem compressing every branch of an arbitrary randomized, adaptive, \(m\)-round protocol into one exact sign rank of order \(m/\tau^2\). The CSQ--margin bridge in F8 does not transfer automatically to unrestricted queries.
- Why it matters downstream: A proof must survive all tolerance-valid answers and preserve one algorithm across all \(\mathcal D\). A restricted nonadaptive or deterministic protocol theorem could be useful partial progress only if the restriction and remaining gap are explicit.
- Source-direction classification: central -- these quantifiers and adversarial semantics are part of the exact premise, not optional technical details.
- Status: supported

#### Domain-size dependence and the known converse

**Search path / outcome:** Converse foundation path F9--F11; no forward theorem removing finite-encoding dependence was found.

**Gap statement:**

- Evidence pattern: F9 and F10 convert a low-dimensional, positive-margin halfspace representation into SQ-compatible learning. F11 bounds the margin using finite bit complexity and introduces \(n=\log|\mathcal X|\). This proves only \(\operatorname{dc}\Rightarrow\mathrm{SQ}\), with polynomial/domain-dependent parameters.
- Supporting papers / absence pattern: D1 explicitly records \(\operatorname{poly}(m,1/\tau,n)\) as a relaxation. No located argument reverses the pipeline, removes \(n\), and obtains linear \(m/\tau^2\) dependence on an arbitrary domain.
- Why it matters downstream: A finite-domain theorem with explicit \(n\) dependence is material partial progress, but cannot be presented as resolving the exact statement. Any claimed universal constant must state that hidden constants do not depend on the domain, \(m\), or \(\tau\).
- Source-direction classification: narrowed -- domain-dependent and converse results are source-endorsed partial context, while the exact domain-independent forward target remains central.
- Status: supported

