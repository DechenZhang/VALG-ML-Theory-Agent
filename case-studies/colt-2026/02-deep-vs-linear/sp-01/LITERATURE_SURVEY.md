# LITERATURE_SURVEY.md

## 1. direct theory

The effective research direction is the universal implication in Open Question 1 of Feldman,
Kamath, and Srebro (2026): for the *same* fully connected ReLU architecture, Gaussian
initialization, constant stepsize, logistic loss, one-sample SGD rule, step count $T$, and
time-aggregated predictor, successful expected-error learning for every input distribution
$\mathcal D$ and every $h^\star\in\mathcal H$ should imply the deterministic bound
$\operatorname{dc}(\mathcal H)\le C T S$. A result about one chosen distribution, ERM or
sample complexity alone, an SQ or approximate-gradient oracle, a different predictor, or a
randomized/approximate dimension notion is not a direct resolution.

**Search and evidence audit.** No `papers/` or `literature/` directory exists in the run root.
The frozen six-page parent paper `../paper.pdf` was read in full and used for reference
expansion. The direct sweep used exact-name, alias, theorem-term, and proxy searches around
"distribution-free gradient descent," "SGD learning versus dimension complexity," "random
features," "probabilistic dimension complexity," and "linear/kernel representation." Canonical
PMLR, NeurIPS, JMLR, arXiv, Crossref, and OpenAlex records were checked, followed by a
same-target missed-paper audit. The direct scope is genuinely sparse: the source paper states the
open question, and the only close claimed algorithm-to-random-feature theorem located is subject
to an explicit proof-flaw notice in the source paper. No verified paper located proves a linear or
polynomial deterministic-dimension bound for the exact protocol, and no located paper gives an
exact-premise counterexample. Semantic Scholar was unavailable because its public endpoint was
rate-limited; this does not change the source-seeded conclusion but makes post-2026 citation
coverage necessarily uncertain.

### Other

#### Distribution-independent algorithm-to-representation implication

[D1] Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent? (COLT 2026)

**Identifier:** https://proceedings.mlr.press/v336/feldman26a.html

**Setting:** Binary classes $\mathcal H\subseteq\{\pm1\}^{\{\pm1\}^n}$; deterministic
dimension complexity; a fully connected ReLU network with $S$ weights; independent
fan-in-scaled Gaussian initialization; logistic loss; one fresh sample from an arbitrary
$\mathcal D$ per SGD step; constant stepsize $\eta$; and the sign of the sum of network
outputs over the latter half of the $T$ iterates.

**Goal:** Decide whether expected classification error at most $\epsilon<1/4$, uniformly over
all $\mathcal D$ and all $h^\star\in\mathcal H$, forces
$\operatorname{dc}(\mathcal H)\le C T S$ for a universal constant $C$.

**Main result:** The paper formulates this implication as Open Question 1; it does not claim a
proof or counterexample. It separately records polynomial, confident-dimension, probabilistic-
dimension, and benign-protocol variants as possible partial progress.

**Key proof techniques:** There is no proof of the target. The paper triangulates the question
using dimension-complexity lower bounds, distribution-specific neural/kernel separations, and
connections between SQ learning and finite-precision approximate gradients.

**Limitations:** This is the authoritative problem statement rather than a resolving theorem.
Open Question 2 on SQ learning is explicitly a distinct, not formally equivalent, question.

**Relation to research scope:** direct prior work - it fixes every target quantifier and protocol
detail. Its full/partial/invalid distinctions are binding downstream.

[D2] The Power of Random Features and the Limits of Distribution-Free Gradient Descent (ICML 2025)

**Identifier:** https://proceedings.mlr.press/v267/karchmer25a.html

**Setting:** A bounded-output differentiable $p$-parameter model trained distribution-freely
under squared loss by clipped, coordinate-rounded mini-batch SGD with $T$ updates, batch-size
and precision conditions, and worst-case valid approximate gradient roundings. The conclusion is
an average-over-target-prior random-feature approximation statement.

**Goal:** Convert distribution-free gradient-based learnability into a polynomial-size random-
feature representation, and relate a newly defined average probabilistic dimension complexity to
SQ dimension.

**Main result:** The published paper claims a bound $d\le\operatorname{poly}(Tp/c)$ for an
average probabilistic random-feature representation, where $c$ is gradient precision, together
with claimed SQ-dimension relationships. Feldman, Kamath, and Srebro (2026) explicitly report
that the claimed upper bounds do **not** hold because of a proof flaw (citing Karchmer and Malach,
personal communication, 2026). Accordingly, these claims are historical route evidence, not
usable theorems.

**Key proof techniques:** The claimed route converts clipped finite-precision mini-batch SGD to
SQ learning, relates SQ dimension to single random-feature weak approximation using discrepancy
and communication-complexity norms, and boosts weak random features into a strong linear
combination. Because the upper-bound proof is flawed, downstream work must re-establish every
such bridge rather than cite it as valid.

**Limitations:** Even absent the flaw, the protocol uses squared loss, bounded outputs, clipping,
rounding, large mini-batches, and a precision parameter, rather than the exact Gaussian-initialized
one-sample logistic SGD protocol. Its conclusion is polynomial and average probabilistic, not the
deterministic $C T S$ bound uniform over every target.

**Relation to research scope:** direct prior work - it is the closest located full-direction
precursor, but both a theorem-validity failure and major protocol/target mismatches prevent it from
settling or directly implying Open Question 1.

## 2. foundation theory

The direct sweep was nonzero but too sparse to supply reliable proof tools, so a lightweight
multi-object foundation pass was used. The first component concerns deterministic and randomized
Euclidean representations; the second concerns what standard or altered gradient procedures can
simulate or separate from fixed features. None of these entries is evidence that the exact universal
SGD premise holds for a class or that the desired deterministic $C T S$ conclusion follows.

### Component Theory

#### Component: deterministic and randomized Euclidean representation

##### Other

###### Dimension, sign-rank, and randomized representation

[F1] Limitations of Learning Via Embeddings in Euclidean Half Spaces (JMLR 2002)

**Identifier:** https://jmlr.org/papers/v3/bendavid02a.html

**Setting:** Finite binary concept classes embedded by a single feature map into Euclidean half
spaces; complexity is exact representation dimension or achievable margin.

**Goal:** Compare VC dimension, hence ERM sample learnability, with the Euclidean dimension and
margin required by linear embeddings.

**Main result:** Most finite classes of constant VC dimension require embedding dimension nearly
as large as the instance-space size and cannot obtain substantially nontrivial margins; the lower
bounds remain robust to a small fraction of representation errors.

**Key proof techniques:** Counting/probabilistic arguments over sign patterns and geometric
embedding/margin bounds.

**Limitations:** It is an existence result about representability and ERM-level learnability. It
provides neither an efficient learner nor the exact SGD premise, and therefore cannot itself be a
counterexample to Open Question 1.

**Relation to research scope:** component-level foundation - it defines the deterministic
dimension-complexity obstruction, while also showing why an ERM-only separation is out of
scope for the target implication.

[F2] Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity (COLT 2020)

**Identifier:** arXiv:2003.04180

**Setting:** Distribution-independent and distribution-dependent randomized feature maps for
binary classification or regression, with expected approximation error under 0-1, hinge, margin,
or squared losses.

**Goal:** Define representation complexities that are not merely sufficient but also necessary for
learning by reductions to low-dimensional linear predictors or bounded-norm kernels.

**Main result:** The paper establishes necessity/sufficiency relationships for probabilistic
dimension and margin complexity, dimension-reduction relations, and an exponential gap:
there are classes with $\operatorname{dc}_\varepsilon(\mathcal H)\le O(n^4/\varepsilon)$
but deterministic $\operatorname{dc}(\mathcal H)\ge 2^{\Omega(n^{1/4})}$. This verifies that
randomized approximate representation cannot be silently identified with deterministic exact
representation.

**Key proof techniques:** Johnson-Lindenstrauss random projection, probabilistic sign-rank,
threshold-circuit/sign-rank lower bounds, covering arguments, and reductions characterizing
linear or kernel learning.

**Limitations:** The expectation and approximation in $\operatorname{dc}_\varepsilon$ are
strict relaxations of exact deterministic dimension complexity. The paper does not analyze the
specified ReLU SGD trajectory or give an $(S,T)$ dependence.

**Relation to research scope:** component-level foundation - it supplies the source-endorsed
probabilistic-dimension target and warns that proving it would be material partial progress, not a
proof of the deterministic conclusion.

[F3] On Reductions and Representations of Learning Problems in Euclidean Spaces (STOC 2025)

**Identifier:** arXiv:2411.10784

**Setting:** Reductions of finite classification problems to stochastic convex optimization in
Euclidean dimension (D), including deterministic and randomized representations.

**Goal:** Quantify the Euclidean dimension required for such reductions as a function of VC
dimension and determine how randomization changes representability.

**Main result:** Some classes require dimension exponentially larger than VC dimension even for
slightly nontrivial deterministic reductions, while natural tasks admit substantially smaller
randomized representations. The latter resolves a random-representation question raised by
Kamath, Montasser, and Srebro (2020).

**Key proof techniques:** A convexity-sensitive generalization of the Borsuk-Ulam theorem,
topological lower bounds, and reductions between classification representations and stochastic
convex optimization.

**Limitations:** The optimization reduction and its random representation are not the fixed ReLU,
Gaussian-initialized logistic-SGD procedure, and the paper does not prove a $T S$ dimension
bound.

**Relation to research scope:** component-level foundation - it sharpens the deterministic-versus-
randomized representation divide that any attempted derandomization of SGD initialization must
cross.

[F4] A Linear Lower Bound on the Unbounded Error Probabilistic Communication Complexity (JCSS 2002)

**Identifier:** DOI:10.1016/S0022-0000(02)00019-3

**Setting:** Sign matrices and unbounded-error communication protocols; matrix sign-rank is the
minimum rank of a real matrix with a prescribed sign pattern.

**Goal:** Lower-bound unbounded-error communication complexity through geometric/algebraic
properties of sign matrices.

**Main result:** The paper gives the spectral sign-rank lower-bound method now commonly called
Forster's bound, yielding linear communication lower bounds for explicit functions and a reusable
route to deterministic dimension-complexity lower bounds.

**Key proof techniques:** Matrix scaling/isotropic position, spectral norm estimates, and
linear-algebraic separation.

**Limitations:** This is a lower-bound tool for a fixed evaluation matrix. It supplies no
distribution-independent SGD learner, so a high sign-rank class found with this method is not an
Open Question 1 counterexample unless the exact SGD premise is proved independently.

**Relation to research scope:** component-level foundation - since deterministic dimension
complexity equals the sign-rank of the class evaluation matrix (for finite classes), the method is a
candidate obstruction certificate on the conclusion side only.

#### Component: gradient-based learning and its relation to SQ or fixed features

##### Other

###### Protocol simulation and distribution-specific separations

[F5] On the Power of Differentiable Learning versus PAC and SQ Learning (NeurIPS 2021)

**Identifier:** https://proceedings.neurips.cc/paper/2021/hash/cc225865b743ecc91c4743259813f604-Abstract.html

**Setting:** Mini-batch SGD on differentiable models with clipped/finite-precision gradients,
where the precision $\rho$ and batch size $b$ are explicit resources; model architectures may
be constructed to simulate algorithms.

**Goal:** Characterize when differentiable learning has SQ power and when it can simulate full
sample-based PAC learning.

**Main result:** SGD can simulate SQ algorithms; when $b\rho^2$ is sufficiently large its power
is equivalent to SQ, while sufficiently fine precision relative to batch size allows simulation of
PAC learning. Polynomially many precision bits can recover PAC power regardless of batch size.

**Key proof techniques:** Bidirectional simulations among statistical queries, finite-precision
gradient updates, and sample-based algorithms using differentiable computational gadgets.

**Limitations:** The constructed models and gradient oracle differ from the exact benign fully
connected ReLU/logistic/standard-initialization protocol. Indeed, the source paper cites this line
as showing why arbitrary architectures or initializations can "cheat."

**Relation to research scope:** component-level foundation - it supplies a possible SQ bridge but
also identifies precision and architecture obstacles that must not be hidden in a claimed exact-
protocol proof.

[F6] Statistical Query Algorithms for Mean Vector Estimation and Stochastic Convex Optimization (Mathematics of Operations Research 2021)

**Identifier:** DOI:10.1287/moor.2020.1111

**Setting:** Mean estimation and stochastic convex optimization accessed through bounded-
tolerance statistical queries, including approximate first-order information.

**Goal:** Characterize the query complexity of mean estimation in general norms and transfer the
characterization to stochastic convex optimization.

**Main result:** The work gives SQ upper and lower bounds for mean estimation and stochastic
convex optimization, supporting formal simulations between tolerant statistical queries and
approximate gradient information.

**Key proof techniques:** Reductions between mean estimation and stochastic optimization,
convex duality/geometric norm arguments, and statistical-query lower bounds.

**Limitations:** An SQ or adversarially approximate population-gradient interface is not a pathwise
one-sample SGD trajectory. The conversion does not preserve the exact logistic update,
Gaussian initialization, time-averaged classifier, or a linear $T S$ cost.

**Relation to research scope:** component-level foundation - it is a rigorous tool for an altered-
oracle partial result, but a separate stochastic-oracle-to-exact-SGD bridge would be required.

[F7] Quantifying the Benefit of Using Differentiable Learning over Tangent Kernels (ICML 2021)

**Identifier:** https://proceedings.mlr.press/v139/malach21a.html

**Setting:** Gradient descent on differentiable models versus the corresponding tangent kernel,
including a biased sparse-parity distribution and a specially constructed differentiable model.

**Goal:** Quantify when successful gradient learning implies some tangent-kernel advantage and
when nonlinear parameter movement can beat every kernel method.

**Main result:** Under regularity conditions, gradient success implies a possibly tiny weak-
learning advantage for a related tangent kernel; without them, a constructed differentiable model
learns a fixed-distribution sparse-parity problem while kernels cannot obtain nontrivial advantage.

**Key proof techniques:** First-order/tangent-feature comparison, gradient-norm and initialization
control, SQ/random-feature lower bounds, and an explicit support-selection/parity-computation
gadget.

**Limitations:** The separation selects a helpful input distribution and uses a designed model
with nonstandard modules/activations or fixed computation. It therefore illustrates precisely the
distribution dependence and architecture-encoding shortcuts excluded from a full solution.

**Relation to research scope:** component-level foundation - it provides a stress test for any
claimed kernel simulation, but is out of scope as a counterexample to the universal premise.

[F8] The Merged-Staircase Property: A Necessary and Nearly Sufficient Condition for SGD Learning of Sparse Functions on Two-Layer Neural Networks (COLT 2022)

**Identifier:** https://proceedings.mlr.press/v178/abbe22a.html

**Setting:** Sparse functions on the Boolean cube under the uniform distribution, represented in
the distribution-orthogonal Fourier-Walsh basis, and two-layer networks trained by one-pass
batch SGD in a mean-field regime.

**Goal:** Characterize which latent sparse functions are learnable with $O(d)$ samples by this
nonlinear but regular SGD regime, and compare them with arbitrary fixed linear features.

**Main result:** The merged-staircase property is necessary and generically nearly sufficient for
strong $O(d)$-scale SGD learnability; suitable staircase functions yield superpolynomial
separations from linear methods.

**Key proof techniques:** Dimension-free mean-field dynamics, Fourier support hierarchies,
global convergence via polynomial identity testing, and strengthened lower bounds against linear
features.

**Limitations:** The staircase basis and learnability theorem are tied to a specified distribution,
and the optimizer/model/loss regime differs from Open Question 1. It does not establish that one
architecture and stepsize succeeds over every $\mathcal D$.

**Relation to research scope:** component-level foundation - it is the strongest located regular-
network testbed separation, but its distribution dependence is residual motivation rather than
evidence against the universal implication.

## 3. empirical practice

The exact target is a universal mathematical implication, so empirical evidence cannot prove or
disprove it. The papers below are retained only because they repeatedly observe when trained
networks do or do not behave like their initialization-time linearization. None tests universality
over all input distributions, deterministic dimension complexity, or the $T S$ dependence.

[E1] Wide Neural Networks of Any Depth Evolve as Linear Models Under Gradient Descent (NeurIPS 2019)

**Identifier:** arXiv:1902.06720

**Main result:** Infinite-width squared-loss gradient dynamics equal those of the first-order
linearization, and experiments report close agreement for several finite architectures,
optimization methods, and losses.

**Relation to research scope:** empirical context - it shows that kernel-like behavior can be a
good regime-dependent approximation, not that arbitrary finite ReLU SGD learning admits one
fixed (O(TS))-dimensional deterministic feature map.

[E2] On Lazy Training in Differentiable Programming (NeurIPS 2019)

**Identifier:** arXiv:1812.07956

**Main result:** Theoretical path bounds identify scaling as the source of lazy, linearized
training; numerical experiments find that forcing common convolutional networks into the lazy
regime degrades performance.

**Relation to research scope:** empirical context - it motivates studying feature movement
beyond tangent kernels, while giving no distribution-independent representation theorem.

[E3] Deep Learning versus Kernel Learning: An Empirical Study of Loss Landscape Geometry and the Time Evolution of the Neural Tangent Kernel (2020)

**Identifier:** arXiv:2010.15110

**Main result:** Across several architectures and datasets, the empirical NTK changes rapidly
during an early transient, learns useful features, and later tracks network performance more
closely; the work reports correlated changes in loss geometry and kernel dynamics.

**Relation to research scope:** empirical context - it supports the practical relevance of learned
features but concerns selected datasets/distributions and has no theorem about dimension
complexity or universal SGD success.

[E4] Limitations of the NTK for Understanding Generalization in Deep Learning (2022)

**Identifier:** arXiv:2206.10012

**Main result:** Experiments exhibit finite-width networks with better data-scaling exponents than
their empirical or infinite initialization-time NTKs; limited kernel pretraining does not close the
gap, and the empirical NTK keeps evolving through much of training.

**Relation to research scope:** empirical context - it reinforces that a tangent-kernel proof may
miss feature learning, but empirical scaling on selected tasks neither supplies the universal
premise nor rules out a different (O(TS))-dimensional representation.

## 4. gap and open problem

### Other

#### Exact deterministic $C T S$ implication

**Search path / outcome:** direct theory found, but only as the authoritative open-question
statement plus one flawed and protocol-mismatched claimed precursor; lightweight component
foundation used.

**Gap statement:**

- Evidence pattern: No verified theorem found converts the exact pathwise, one-sample,
  Gaussian-initialized logistic-SGD guarantee, uniform over $\mathcal D$ and $h^\star$, into a
  *single deterministic* feature map that sign-represents every member of $\mathcal H$ in
  $C T S$ dimensions. No exact-premise class with unbounded
  $\operatorname{dc}(\mathcal H)/(TS)$ was found either.
- Supporting papers / absence pattern: D1 states precisely this gap. D2 is the closest attempted
  distribution-free algorithm-to-feature conversion, but its reported upper bound is flawed and,
  even as stated, targets a clipped finite-precision mini-batch process and average probabilistic
  representation. F1-F4 control only the representation side; F5-F8 alter the protocol or fix a
  favorable distribution.
- Why it matters downstream: A positive proof must expose a deterministic feature map shared by
  all targets and all distributions, preserve expectation over initialization and SGD sampling,
  and account linearly for both stored parameters and time. A negative proof must verify the full
  universal premise before invoking a sign-rank lower bound. Either direction would fully resolve
  the source question.
- Source-direction status: central; only an exact proof or exact-premise counterexample is `full`.
- Status: supported.

#### Polynomial deterministic dimension bound

**Search path / outcome:** direct theory sparse; mixed component foundation used.

**Gap statement:**

- Evidence pattern: No verified $\operatorname{dc}(\mathcal H)=\operatorname{poly}(S,T)$
  theorem was found for the exact SGD premise. D2's claimed polynomial statement is both flawed
  and about a weaker average probabilistic notion with extra precision dependence.
- Supporting papers / absence pattern: D1 explicitly endorses a polynomial deterministic bound
  as partial progress. F2-F3 show why randomized approximate representations cannot simply be
  derandomized into such a bound; F4 supplies potential deterministic lower-bound certificates.
- Why it matters downstream: Establishing any explicit polynomial bound while preserving the
  exact premise would constrain possible counterexamples and isolate which part of the desired
  linear $T S$ dependence remains open. Conversely, an exact-premise superpolynomial lower
  bound would refute every polynomial version and hence the linear conjecture.
- Source-direction status: central source-endorsed `material_partial`, or `full` for an exact-
  premise counterexample ruling out all polynomial bounds; hidden dependence on $n$,
  $\eta$, or other undeclared quantities is not acceptable.
- Status: supported.

#### Confident or probabilistic dimension complexity

**Search path / outcome:** direct precursor found but invalid; component foundation used.

**Gap statement:**

- Evidence pattern: F2 gives the right distribution-independent randomized representation notion
  and strong separation from deterministic dimension, while F3 confirms that randomization can
  materially shrink Euclidean representations. No verified theorem found derives
  $\operatorname{dc}^{1/2}(\mathcal H)$ or
  $\operatorname{dc}_{C\varepsilon}(\mathcal H)$ bounds from the exact SGD premise with
  explicit $(S,T)$ dependence.
- Supporting papers / absence pattern: D1 explicitly asks for these relaxations. D2 aims at an even
  weaker average-over-target-prior notion and is flawed; it therefore cannot fill this gap. F2's
  quantifier order $\exists\mathcal P\,\forall\mathcal D\,\forall h$ is a necessary guardrail:
  choosing features after seeing $\mathcal D$ would answer a different question.
- Why it matters downstream: Random initialization naturally suggests a distribution over
  feature maps, so this is the closest source-endorsed target for converting success in expectation
  into representation. A useful proof must still make one feature-map distribution work uniformly
  over $(\mathcal D,h)$ and must keep any approximation error proportional to the SGD error.
- Source-direction status: central source-endorsed `material_partial`; it must never be labeled a
  deterministic full solution without a rigorous derandomization/exactification bridge.
- Status: supported.

#### Exact-SGD versus SQ/approximate-gradient bridge

**Search path / outcome:** no exact bridge found; component foundation used.

**Gap statement:**

- Evidence pattern: F5-F6 relate finite-precision clipped mini-batch or approximate population
  gradients to SQ algorithms, but the target learner uses one sampled logistic gradient with no
  adversarial rounding/clipping interface. The random trajectory and time-aggregated sign
  predictor are theorem-critical, not cosmetic.
- Supporting papers / absence pattern: D1 calls the SQ question similar but not formally related.
  D2 attempts to compose an altered-gradient-to-SQ bridge with random features and fails at the
  upper-bound level. F7-F8 show that nonlinear feature learning can depend sharply on
  distribution, initialization, and protocol.
- Why it matters downstream: A valid transfer theorem preserving the exact update and
  quantitative resources could unlock the representation tools in F2-F6. Without it, importing an
  SQ conclusion silently changes the algorithm and is an invalid shortcut. A rigorous
  impossibility result for such a transfer would be a useful `obstruction` even if it does not
  resolve Open Question 1.
- Source-direction status: narrowed but central mechanism gap; exact transfer is
  `material_partial` toward the main implication, while a precise failure construction is an
  `obstruction` or `diagnostic` and must state the remaining source gap.
- Status: supported for the absence of a verified exact bridge; uncertain as to whether a
  fundamentally different post-2026 bridge exists outside the audited sources.

#### Fixed-distribution neural-versus-linear separations

**Search path / outcome:** substantial component and empirical literature found; excluded from
the direct target by source constraints.

**Gap statement:**

- Evidence pattern: F7-F8 and E1-E4 establish that nonlinear training can differ strongly from
  fixed features in selected regimes and distributions. Those phenomena explain why the question
  is important but do not address its universal premise.
- Supporting papers / absence pattern: F7 uses a helpful biased parity distribution and a designed
  model; F8 uses a distribution-defined Fourier staircase; the empirical papers use selected
  datasets. D1 explicitly identifies this distribution dependence as the limitation of all known
  large separations.
- Why it matters downstream: These works can supply stress tests and candidate mechanisms, but
  an idea that merely reproves one of their separations should be rejected as non-material for this
  subproblem unless it also proves the same fixed SGD architecture succeeds for every
  $\mathcal D$.
- Source-direction status: out of scope as a solution and retained only as residual context.
- Status: supported.
