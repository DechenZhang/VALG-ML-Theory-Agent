# LITERATURE_SURVEY.md

**Normalization.** `Normalization | Targets: existence or impossibility of the explicit three-regime order-optimal sample bound for fully non-adaptive arbitrary measurable randomized one-bit quantizers | Objects: the full moment class D(k,lambda,sigma) and the zero-adaptivity arbitrary-query protocol model | Splittable: yes, but only for foundation mapping; splitting cannot redefine the direct target.`

**Scope lock.** The exact target is the universal statement over all distributions in
\(\mathcal D(k,\lambda,\sigma)\), all \(\lambda\geq\sigma>0\), all sufficiently small
\(\epsilon/\sigma\), all \(\delta\in(0,1/2)\), and every fixed \(k>1\). Queries may be
arbitrary measurable, randomized, and non-identical, but every query must be fixed before any
message is observed. The required benchmark is

\[
r_k=\log\frac{\lambda}{\sigma}+
\begin{cases}
\frac{\sigma^2}{\epsilon^2}\log\frac1\delta,&k>2,\\
\frac{\sigma^2}{\epsilon^2}\log\frac{\sigma}{\epsilon}\log\frac1\delta,&k=2,\\
\left(\frac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\frac1\delta,&1<k<2.
\end{cases}
\]

Results for adaptive protocols, one adaptive transition, threshold/interval queries, parametric
families, bounded support, or one \(k\)-regime are retained only as explicitly labeled partial,
conditional, obstruction, or diagnostic evidence. None is treated as a full resolution.

**Search record and limitations.** No `papers/` or `literature/` directory was present, and no
pending literature-survey rerun feedback existed. The search used the official COLT/PMLR source
and PDF, exact-title and alias searches on arXiv, theorem-term searches for non-adaptive minimax
rates and adaptivity gaps, and seed expansion through the official source and the two closest
predecessors. Durable metadata was checked against arXiv, PMLR/JMLR, Crossref, or OpenAlex. The
exact-name missed-paper audit found the COLT open problem, its AISTATS predecessor, and its
extended sequential paper, but no additional full-scope theorem. Semantic Scholar was rate
limited, and no Zotero, Obsidian, or local library was configured. Accordingly, statements of
nonexistence below mean "not found in this search and explicitly described as unresolved by the
official July 2026 source," not a bibliometric proof that no unindexed manuscript exists.

## 1. direct theory

### Other: Minimax sample complexity and interaction complexity

#### Fully non-adaptive arbitrary-query one-bit mean estimation over finite-moment classes

[D1] Open Problem: Is Interaction Necessary for Order-Optimal 1-bit Mean Estimation? (COLT/PMLR 2026)

**Identifier:** arXiv:2607.02896

**Setting:** Scalar population mean estimation over the unrestricted class
\(\mathcal D(k,\lambda,\sigma)\), with one measurable binary query per independent sample and
public or private protocol randomness. The paper distinguishes fully adaptive, two-stage, and
fully non-adaptive protocols.

**Goal:** Determine whether zero adaptive transitions and arbitrary measurable queries can attain
the adaptive minimax benchmark \(r_k\) in all three moment regimes, or whether one transition is
information-theoretically necessary.

**Main result:** The paper formalizes this exact question as Open Problem 1. It records that
adaptive threshold queries and a two-stage arbitrary-query protocol attain \(r_k\), that
non-adaptive threshold and interval families have linear rather than logarithmic
\(\lambda/\sigma\) dependence, and that the arbitrary measurable fully non-adaptive case is
unresolved. It also analyzes a non-adaptive Fourier construction with logarithmic
\(\lambda\)-dependence but \(O((\sigma/\epsilon)^8(\log(\lambda/\epsilon)+\log(1/\delta)))\)
samples when \(k=2\).

**Key proof techniques:** Synthesis of adaptive noisy binary search, coding-theoretic
localization, location-dependent refinement, locality lower bounds for intervals, and a
second-order bias/population-gap analysis for randomized Fourier queries.

**Limitations:** It states rather than resolves the target. The Fourier calculation is a
diagnostic upper bound for one construction, not an impossibility result for arbitrary measurable
queries.

**Relation to research scope:** direct prior work - it is the full-scope source and the controlling
statement of what counts as `full`, `material_partial`, and `diagnostic` progress; it poses the
`full` target but does not itself claim progress toward resolving it.

[D2] Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes (arXiv 2026, v2)

**Identifier:** arXiv:2604.07796

**Setting:** The same nonparametric class \(\mathcal D(k,\lambda,\sigma)\) for every fixed
\(k>1\). The main estimator uses sequential randomized threshold queries; separate results cover
general one-bit queries in two stages and non-adaptive interval-query lower bounds.

**Goal:** Characterize the adaptive one-bit minimax sample complexity across all tail regimes and
reduce the number of adaptive stages without losing the rate.

**Main result:** Theorem 5 attains the three-regime rate \(r_k\); Theorem 9 gives a matching lower
bound for arbitrary one-bit estimators and proves the special \(k=2\)
\(\log(\sigma/\epsilon)\) penalty. Theorem 11 proves
\(\Omega((\lambda\sigma/\epsilon^2)\log(1/\delta))\) for fully non-adaptive interval queries.
Theorem 16 gives non-adaptive coding-based \(O(\log(\lambda/\sigma)+\log(1/\delta))\)
localization, which combined with a location-dependent second stage yields an order-optimal
two-stage protocol.

**Key proof techniques:** Noisy binary-search localization; a geometric spatial grid;
randomized-threshold identities for local mean contributions; variance-aware allocation and
median-of-means; multiscale hard distributions and KL chain rules; redundant codebooks with
nearest-neighbor Hamming decoding.

**Limitations:** Refinement queries are chosen after localization in the two-stage construction.
The non-adaptive separation covers threshold and interval queries only; its locality argument does
not apply to unions of many intervals or arbitrary measurable sets.

**Relation to research scope:** direct prior work - it establishes the exact benchmark and the
closest positive and negative comparators, but is `diagnostic` relative to the zero-transition
arbitrary-query target, which remains open.

[D3] Sequential 1-bit Mean Estimation with Near-Optimal Sample Complexity (AISTATS 2026)

**Identifier:** arXiv:2509.21940

**Setting:** Scalar distributions with mean in \([-\lambda,\lambda]\) and bounded variance, with
randomized sequential interval queries. It also studies non-adaptive interval protocols and a
two-stage general-query variant.

**Goal:** Obtain nearly minimax one-bit mean estimation under finite variance and identify an
adaptivity gap within simple query families.

**Main result:** It gives an \((\epsilon,\delta)\)-PAC sequential estimator with sample complexity
matching the unquantized rate up to logarithmic factors plus the unavoidable localization term,
proves a large adaptive/non-adaptive gap for interval queries, and gives a two-stage construction
using more general queries.

**Key proof techniques:** Sequential localization, interval-based multiscale refinement,
locality-based non-adaptive lower bounds, and Gray-code-style coarse localization for the staged
variant.

**Limitations:** The conference result treats \(k\geq2\), has extra logarithmic losses, and is
substantially extended by D2. Its lower bound remains tied to intervals, and its positive staged
protocol still uses an adaptive transition.

**Relation to research scope:** direct prior work - retained because it is the archival source for
the first restricted adaptivity gap, while its target weakening makes it diagnostic rather than a
solution.

[D4] Robust Mean Estimation under Quantization (arXiv 2026)

**Identifier:** arXiv:2601.07074

**Setting:** Distributed, non-adaptive quantization in which each bit depends on one sample, with
one-dimensional and multivariate variants and optional adversarial corruption. The scalar scheme
uses independent uniform dithers and a fixed quantization range \(B\) that must dominate relevant
distribution quantiles.

**Goal:** Construct robust mean estimators from independently quantized samples and quantify the
price of the fixed dynamic range.

**Main result:** In one dimension, Theorem 3.1 bounds the error by
\(C\max\{\sigma,B\}\sqrt{\log(1/\delta)/n}\), plus \(2\eta B\) under an \(\eta\)-fraction of
corruptions. The dither identity turns the expected sign bit into a clipped observation. Applied
under only a variance bound to the present class, bias control forces a large range (the source
uses \(B=\Theta(\max\{\lambda,\sigma^2/\epsilon\})\)), producing polynomial rather than
logarithmic dependence on \(\lambda\).

**Key proof techniques:** Uniform dithering, clipping/trimmed-mean bias control, Bernstein
concentration, and coordinatewise robust aggregation.

**Limitations:** The rate depends quadratically on the fixed range and does not attain \(r_2\).
The paper does not provide a universal multiscale refinement mechanism or a lower bound for all
non-identical arbitrary measurable queries.

**Relation to research scope:** direct prior work - a rigorous non-adaptive arbitrary-query upper
bound and useful `diagnostic`; a sharpening would count as `material_partial` only if it improves
source-relevant parameter dependence while preserving arbitrary non-adaptive queries.

## 2. foundation theory

### Component Theory

#### Component: structured and nonparametric one-bit quantizer design

##### Other: Minimax efficiency under communication

###### Non-adaptive coding, dithering, and parametric efficiency

[F1] Mean Estimation From One-Bit Measurements (IEEE Transactions on Information Theory 2022)

**Identifier:** DOI:10.1109/TIT.2022.3174409

**Setting:** One-dimensional location estimation from one-bit measurements, primarily for known
log-concave/location-family structure; both adaptive stochastic approximation and restricted
distributed/non-adaptive schemes are studied asymptotically.

**Goal:** Determine sharp asymptotic mean-squared error and efficient one-bit designs when the
likelihood or CDF structure is known.

**Main result:** It derives asymptotically efficient adaptive estimators and asymptotic lower
bounds for distributed one-bit estimation under regularity assumptions, quantifying how fixed
quantizers lose information relative to sequentially centered ones.

**Key proof techniques:** Fisher information, local asymptotic normality, stochastic
approximation, CDF inversion, and asymptotic minimax analysis.

**Limitations:** Known density shape, log-concavity/location structure, asymptotic MSE, and
regularity assumptions are unavailable for the full moment class. It supplies no finite-sample
uniform \((\epsilon,\delta)\) theorem with the required parameter dependence.

**Relation to research scope:** component-level foundation - it identifies what adaptive
recentering buys and supplies efficiency tools, but model structure prevents a full-scope claim.

[F2] Distributed Gaussian Mean Estimation under Communication Constraints: Optimal Rates and Communication-Efficient Algorithms (JMLR 2024)

**Identifier:** arXiv:2001.08877

**Setting:** Univariate and multivariate Gaussian location models under independent distributed
communication protocols with specified per-machine bit budgets.

**Goal:** Characterize minimax risk as a function of communication and construct statistically
optimal protocols.

**Main result:** It proves optimal Gaussian minimax rates; in one dimension the rate depends on
the total bit budget once each machine can send at least one bit. Its optimal construction and
lower bound both decompose the task into localization and refinement, using multiscale/Gray-code
quantizers to encode location efficiently.

**Key proof techniques:** Decision-theoretic minimax reduction, localization-refinement
decomposition, Gray-code-type multiscale quantization, and Gaussian testing lower bounds.

**Limitations:** Gaussian symmetry and a known parametric likelihood make distant query cells
comparable and tails exactly controllable. These are precisely the properties missing from
\(\mathcal D(k,\lambda,\sigma)\).

**Relation to research scope:** component-level foundation - the clearest positive template for
precommitted multiscale localization/refinement, but conditional on Gaussian structure.

[F3] One-Bit Distributed Mean Estimation with Unknown Variance (TMLR 2026)

**Identifier:** arXiv:2501.18502

**Setting:** Each user observes one sample from a location-scale family and sends one bit; both
adaptive and non-adaptive protocols are considered when the variance is unknown. Sharp results
focus on symmetric log-concave distributions.

**Goal:** Compare adaptive and non-adaptive asymptotic MSE without known scale and determine when
interaction changes the best constant.

**Main result:** It proves asymptotic normality and MSE bounds for simple protocols, matching
adaptive lower bounds for a symmetric log-concave class. A refined squared-Hellinger analysis
gives non-adaptive lower bounds and strict adaptive/non-adaptive asymptotic gaps for several
generalized Gaussian families.

**Key proof techniques:** Scale-location normalization, stochastic approximation, asymptotic
normality, and squared-Hellinger lower bounds.

**Limitations:** The result is asymptotic and distribution-family-specific. A constant-factor MSE
gap inside a symmetric location-scale family neither proves nor refutes the universal
finite-sample three-regime statement.

**Relation to research scope:** component-level foundation - useful evidence that interaction can
matter even with one bit, but only a `conditional` parametric analogue.

[F4] Nonparametric One-Bit Quantizers for Distributed Estimation (IEEE Transactions on Signal Processing 2010)

**Identifier:** DOI:10.1109/TSP.2010.2046597

**Setting:** Nonparametric distributed parameter estimation from one-bit sensor messages, assuming
bounded observations and knowledge of finitely many noise moments.

**Goal:** Design one-bit estimators without specifying a full parametric noise density and identify
moment-based optimal quantizers.

**Main result:** It constructs unbiased or asymptotically unbiased estimators with bounded known
variance, identifies uniformly optimal quantizers using first-moment information, and determines
minimax quantizers when two moments are known; consistency can survive dependent local noise.

**Key proof techniques:** Moment problems, unbiased estimating equations, minimax quantizer
design, and dithering comparisons.

**Limitations:** Bounded observations and stronger moment/noise structure remove the unbounded-tail
aliasing central to the source problem. The guarantees do not expose the required
\((\lambda,\sigma,\epsilon,\delta,k)\) PAC rate.

**Relation to research scope:** component-level foundation - a nonparametric quantizer-design
precedent whose bounded-support assumption must remain explicit.

#### Component: unquantized refinement under weak moment assumptions

##### Other: High-probability mean-estimation rates

###### Robust refinement and sharp deviation tools

[F5] Sub-Gaussian Mean Estimators (Annals of Statistics 2016)

**Identifier:** DOI:10.1214/16-AOS1440

**Setting:** Unquantized mean estimation for broad real-valued distribution classes under weak
moment assumptions, with high-probability deviation as the performance criterion.

**Goal:** Determine when estimators can achieve sub-Gaussian confidence behavior despite
heavy-tailed samples.

**Main result:** It develops robust mean estimators with sub-Gaussian-type deviations under finite
variance and related moment conditions and clarifies limitations of confidence-uniform
constructions.

**Key proof techniques:** Median-of-means, robust truncation, confidence amplification, and
two-point lower-bound constructions.

**Limitations:** Samples are observed in full. The estimators can truncate or aggregate after
seeing magnitudes, so they do not supply precommitted one-bit query sets or simultaneous
localization.

**Relation to research scope:** component-level foundation - establishes the unquantized
refinement baseline and robust aggregation tools only.

[F6] Optimal Sub-Gaussian Mean Estimation in \(\mathbb R\) (FOCS 2022)

**Identifier:** arXiv:2011.08384

**Setting:** Arbitrary real-valued distributions with finite, unknown variance, observed without
quantization.

**Goal:** Achieve the exact Gaussian leading constant in high-probability mean estimation without
knowing the variance.

**Main result:** The estimator attains error
\(\sigma(1+o(1))\sqrt{2\log(1/\delta)/n}\), tight up to \(1+o(1)\), over the full finite-variance
class.

**Key proof techniques:** A two-parameter \(\psi\)-estimator, an implicit analysis of dependent
sums, mathematical programming, and duality.

**Limitations:** Full sample values are used, and the result addresses \(k=2\) only. It does not
explain how a fixed one-bit design can implement the estimator's distribution-sensitive
truncation or weighting.

**Relation to research scope:** component-level foundation - a sharp target for local refinement,
not a communication protocol.

[F7] Efficient Median of Means Estimator (COLT/PMLR 2023)

**Identifier:** https://proceedings.mlr.press/v195/minsker23a.html

**Setting:** Unquantized heavy-tailed mean estimation under minimal distributional assumptions.

**Goal:** Modify median-of-means to obtain nearly optimal sub-Gaussian constants with an efficient
procedure.

**Main result:** It gives a median-of-means modification with sub-Gaussian deviation bounds and
nearly optimal constants under weaker conditions than preceding sharp analyses.

**Key proof techniques:** Block means, robust aggregation, and refined concentration analysis.

**Limitations:** It presumes access to block averages of real samples. Under one bit per sample,
constructing a comparable low-variance local statistic before knowing the relevant location is the
missing bridge.

**Relation to research scope:** component-level foundation - provides confidence amplification
and refinement machinery after a suitable one-bit base estimator exists.

[F8] Optimality in Mean Estimation: Beyond Worst-Case, Beyond Sub-Gaussian, and Beyond \(1+\alpha\) Moments (NeurIPS 2023)

**Identifier:** arXiv:2311.12784

**Setting:** Unquantized scalar mean estimation for arbitrary distributions with finite mean,
including classes described only by \(1+\alpha\) moments.

**Goal:** Determine whether estimators can exploit instance-specific distribution features to beat
worst-case rates and formalize a useful notion between instance optimality and admissibility.

**Main result:** For every finite-mean distribution it constructs a moment-preserving nearby
alternative with separated mean that is hard to distinguish; it introduces neighborhood
optimality and proves median-of-means optimal up to constants in that sense.

**Key proof techniques:** Hard alternative construction, moment preservation, indistinguishability,
and local minimax/neighborhood analysis.

**Limitations:** The construction is not passed through arbitrary randomized measurable one-bit
channels, and it does not couple localization uncertainty to refinement across
\([-\lambda,\lambda]\).

**Relation to research scope:** component-level foundation - a promising source of heavy-tail hard
families, but a channel-level contraction bridge is still needed.

#### Component: lower bounds for communication and interaction

##### Other: Information contraction and interactive separations

###### Arbitrary-channel lower-bound tools

[F9] Communication Lower Bounds for Statistical Estimation Problems via a Distributed Data Processing Inequality (STOC 2016)

**Identifier:** DOI:10.1145/2897518.2897582

**Setting:** Distributed statistical estimation with samples held across machines and transcripts
limited by communication, allowing broad interactive protocols.

**Goal:** Convert statistical indistinguishability at the sample level into communication-aware
minimax lower bounds.

**Main result:** It develops a distributed data-processing inequality and applies it to sharp
communication lower bounds for canonical estimation problems.

**Key proof techniques:** Strong data-processing inequalities, information complexity, testing
reductions, and transcript KL/mutual-information control.

**Limitations:** Generic communication bounds can be too coarse in one dimension and do not by
themselves force an extra cost beyond \(r_k\) for arbitrary one-bit measurable sets. A hard family
whose contraction captures simultaneous localization, refinement, and tails is still required.

**Relation to research scope:** component-level foundation - a candidate framework for a full
negative result, not evidence that the desired separation already holds.

[F10] Geometric Lower Bounds for Distributed Parameter Estimation under Communication Constraints (COLT 2018; IEEE TIT 2021)

**Identifier:** DOI:10.1109/TIT.2021.3108952

**Setting:** Distributed parametric estimation under per-sample communication constraints,
including Gaussian and related models.

**Goal:** Relate the geometry of score functions and quantized Fisher information to minimax risk.

**Main result:** It proves geometric bounds on the Fisher information retained by communicated
messages and derives minimax lower bounds for several distributed estimation models.

**Key proof techniques:** Fisher-information data processing, score geometry, van Trees/local
minimax reductions, and communication-constrained testing.

**Limitations:** Smooth parametric score structure is absent for arbitrary discrete, asymmetric,
or unbounded members of \(\mathcal D(k,\lambda,\sigma)\). Fisher information alone may miss the
global multiscale localization issue.

**Relation to research scope:** component-level foundation - reusable for carefully embedded
parametric subfamilies, but any lower bound must remain uniform over arbitrary query sets.

[F11] Lower Bounds for Learning Distributions under Communication Constraints via Fisher Information (JMLR 2020)

**Identifier:** arXiv:1902.02890

**Setting:** High-dimensional nonparametric and structured distribution learning with independent,
sequential, or blackboard communication and a per-node bit budget.

**Goal:** Give one lower-bound method that works across communication models and exposes how score
tails change the cost of quantization.

**Main result:** It geometrically characterizes Fisher information in quantized samples and derives
minimax lower bounds for multiple models; the impact of communication changes qualitatively with
the score's tail behavior.

**Key proof techniques:** Quantized Fisher-information geometry, local minimax reductions, and
separate handling of independent and interactive transcripts.

**Limitations:** The paper's theorem objects are distribution learning and parametric/structured
models, not scalar finite-moment mean estimation. The score-based assumptions cannot be silently
imposed on the source class.

**Relation to research scope:** component-level foundation - useful for organizing tail-sensitive
channel contraction, with a missing nonparametric embedding step.

[F12] The Role of Interactivity in Structured Estimation (COLT 2022)

**Identifier:** arXiv:2203.06870

**Setting:** High-dimensional sparse mean estimation and compressive sensing under communication,
local-privacy, or linear-measurement constraints.

**Goal:** Determine whether interaction changes minimax rates when the unknown parameter has
combinatorial structure.

**Main result:** It proves interactive/noninteractive separations for sparse mean estimation and
larger polynomial gaps for block sparsity.

**Key proof techniques:** Structured packing, information constraints, and Baranyai hypergraph
decomposition to break correlated sums into independent components.

**Limitations:** Its separation uses high-dimensional sparsity, whereas the present target is
scalar and nonparametric. The result demonstrates possibility of an interaction gap but supplies
no such gap for arbitrary scalar quantizers.

**Relation to research scope:** component-level foundation - source-faithful evidence that
interaction effects are problem-dependent, not a transferable theorem for this class.

## 3. empirical practice

The empirical stream is necessarily adjacent. The exact target is a minimax population theorem,
and no benchmark can empirically validate uniform performance over an unrestricted moment class.
The papers below establish that quantized mean aggregation matters operationally and that global,
correlated, or multiscale codes can work in structured finite-data settings; they are not evidence
for the formal gap in Section 4.

[E1] Distributed Mean Estimation with Limited Communication (ICML 2017)

**Identifier:** arXiv:1611.00429

**Main result:** Structured random rotation plus coding improves deterministic finite-vector mean
aggregation from the naive \(\Theta(d/n)\) MSE to \(O(1/n)\) at constant bits per dimension, and
experiments demonstrate the schemes in distributed \(k\)-means and PCA.

**Relation to research scope:** empirical context - validates randomized global coding as a
practical communication primitive, but studies empirical vector means, more than one total bit
per vector, and no moment-class PAC guarantee.

[E2] New Bounds for Distributed Mean Estimation and Variance Reduction (2021)

**Identifier:** arXiv:2002.09268

**Main result:** Lattice-based quantization yields error depending on pairwise input dispersion
rather than absolute vector norm, with experiments showing improvements in distributed learning
and variance-reduction tasks.

**Relation to research scope:** empirical context - supports the usefulness of translation-robust
codes, but assumes a fixed finite dataset and vector communication, not one independent bit per
population sample.

[E3] EDEN: Communication-Efficient and Robust Distributed Mean Estimation for Federated Learning (ICML 2022)

**Identifier:** arXiv:2108.08842

**Main result:** EDEN handles heterogeneous client bit budgets and packet loss; federated-learning
experiments report consistent gains over prior distributed mean-estimation compressors.

**Relation to research scope:** empirical context - shows why robust quantized aggregation matters
in practice, while its vector, multi-bit, finite-client setting does not test the source's tail or
zero-adaptivity theorem.

[E4] Correlated Quantization for Distributed Mean Estimation and Optimization (2022)

**Identifier:** arXiv:2203.04925

**Main result:** Shared correlation makes the leading error depend on mean deviation rather than
only absolute range, improves convergence when used inside distributed optimization, and
outperforms existing protocols on diverse experiments.

**Relation to research scope:** empirical context - suggests that public randomness and
cross-query code design can outperform i.i.d. quantizers, but clients quantize a fixed vector
dataset with a richer communication budget.

## 4. gap and open problem

### Other: Minimax sample complexity and interaction complexity

#### Order-optimal fully non-adaptive arbitrary-query upper bound

**Search path / outcome:** direct theory found, component foundation used

**Gap statement:**

- Missing result: a single fully non-adaptive arbitrary-measurable one-bit protocol with a
  uniform \((\epsilon,\delta)\) guarantee and sample complexity at most \(C_k r_k\) over the
  complete quantified scope.
- Evidence pattern: D1 explicitly states the exact fully non-adaptive arbitrary-query problem as
  unresolved. D2 achieves \(r_k\) only by selecting refinement queries after a code-based
  localization stage. D3 has the same staged structure with weaker rates, and D4 is genuinely
  non-adaptive but pays polynomial dependence through its fixed dynamic range. F1--F4 show that
  multiscale non-adaptive designs can be optimal when a known likelihood, symmetry, bounded
  support, or finite moment description controls query bias.
- Supporting papers / absence pattern: The exact-name, alias, theorem-term, and source-citation
  sweeps found no theorem that precommits arbitrary measurable \(A_1,\ldots,A_n\), covers the full
  unrestricted class, and proves \(n\leq C_k r_k\). The closest positive result is D2's two-stage
  protocol; D1's Fourier diagnostic trades logarithmic \(\lambda\)-dependence for an
  \((\sigma/\epsilon)^8\) refinement cost.
- Why it matters downstream: A `full` positive branch must construct one transcript whose bits can
  be reinterpreted after localization while proving uniform bias, variance, and tail-alias control
  for all intervals, all three \(k\)-regimes, and the exact \(\delta\)-dependence. A theorem for
  Gaussian, symmetric, bounded-support, threshold, interval, i.i.d.-query, or already-localized
  models is only `conditional` or `diagnostic`; a regime-specific arbitrary-query improvement can
  be `material_partial` if it preserves explicit parameters and states the remaining quantifiers.
- Source-direction status: central. This is the positive half of the source's exact success
  criterion, not a narrowed or residual-context direction.
- Status: supported

#### Arbitrary-query lower bound or interaction separation

**Search path / outcome:** direct theory found, component foundation used

**Gap statement:**

- Missing result: an information-theoretic lower bound for arbitrary randomized, non-identical,
  measurable fully non-adaptive queries that logically negates the asserted all-parameter
  existence theorem.
- Evidence pattern: D2 proves a strong non-adaptive lower bound only for interval queries, whose
  locality forces samples to be spread over \(\Theta(\lambda/\sigma)\) candidate locations. D1
  explains why that proof cannot cover a measurable set with many separated components. F9--F11
  offer channel-level information contraction tools, and F12 proves that interaction gaps can be
  real in structured high-dimensional problems, but none couples the scalar moment-class tail
  construction to every non-identical randomized measurable query.
- Supporting papers / absence pattern: No searched paper proves that arbitrary fully
  non-adaptive quantizers require more than \(C r_k\) for a source-valid parameter sequence. The
  general one-bit minimax lower bound in D2 matches \(r_k\) even for adaptive protocols and thus
  establishes the benchmark, not a zero-vs-one-transition separation.
- Why it matters downstream: A `full` negative branch must negate the quantified existence claim:
  for every proposed constants \(c,C>0\), exhibit admissible parameters and a hard distribution
  against every randomized, non-identical, fully non-adaptive measurable protocol with
  \(n\leq C r_k\). The proof must survive public/private randomness and global coding sets. A lower
  bound for thresholds, intervals, periodic cells, bounded-complexity unions, or i.i.d. queries is
  an `obstruction` or `diagnostic`, not a resolution.
- Source-direction status: central. This is the negative half of the source's exact success
  criterion; restricted-query separations are explicitly narrowed evidence.
- Status: supported

#### Three-regime and parameter-complete classification

**Search path / outcome:** direct theory found, mixed component foundation used

**Gap statement:**

- Missing result: a source-valid answer that preserves the explicit refinement rate in each of
  \(1<k<2\), \(k=2\), and \(k>2\), including all
  \(\lambda,\sigma,\epsilon,\delta\) dependencies and constants depending only on \(k\).
- Evidence pattern: D2 shows that the adaptive benchmark changes qualitatively at \(k=2\): the
  quantization penalty \(\log(\sigma/\epsilon)\) is unavoidable only there, while the heavy-tail
  exponent for \(1<k<2\) differs from the quadratic \(k>2\) refinement rate. F5--F8 recover useful
  unquantized robust-mean mechanisms, but none supplies a common precommitted one-bit
  implementation. Existing non-adaptive constructions in D1 and D4 are analyzed mainly at
  \(k=2\).
- Supporting papers / absence pattern: No searched direct theorem classifies whether the answer to
  Open Problem 1 is the same in all three regimes or proves the required explicit dependence in
  even one full arbitrary-query regime. Parametric asymptotics in F1--F3 do not preserve the
  source's uniform \(\epsilon,\delta,\lambda,\sigma\) quantifiers.
- Why it matters downstream: Any branch that silently fixes \(k=2\), treats \(\delta\) as constant,
  suppresses \(\lambda/\sigma\), or drops the middle-regime logarithm changes the theorem target.
  Such a result can still be `material_partial` only if it attacks an unresolved arbitrary-query
  regime and states exactly which source quantifiers remain open. A claimed full resolution must
  classify all \(1<k<2\), \(k=2\), and \(k>2\) regimes with constants depending only on \(k\).
- Source-direction status: central. Regime or parameter suppression is a target narrowing; it may
  be useful partial progress but cannot be labeled `full`.
- Status: supported
