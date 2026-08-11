# Literature Survey

**Normalized scope.** The target is the information-theoretic sample complexity of realizable binary PAC learning under approximate \((\varepsilon,\delta)\)-differential privacy, for arbitrary data distributions and unrestricted learners (improper and computationally unbounded learners are allowed). The class has finite \(\operatorname{LD}(C)\); the main quantities are \(\operatorname{VC}(C)\), \(\operatorname{LD}(C)\), \(\log^*\operatorname{LD}(C)\), and \(\log |C|\). Results for pure DP, proper-only learners, efficient learners, other learning models, or fixed concept families are distinguished below and are not treated as full resolutions.

**Search note.** No run-local `papers/` or `literature/` directory was present. The search started from the official 2026 PMLR paper, whose metadata lists Kobbi Nissim, Uri Stemmer, and Eliad Tsfadia, and exhaustively screened all 20 works in its bibliography in official order. It then used exact-title, private-PAC/Littlestone aliases, sample-complexity theorem terms, global-stability/representation proxy terms, and reference/citation expansion around representative lower- and upper-bound papers. A repeated post-expansion recent-arXiv/missed-paper audit found no verified theorem improving the source-stated unrestricted general bounds. Primary arXiv/PMLR records and paper text were preferred; DOI metadata was used where appropriate. Semantic Scholar rate-limited bulk queries, some ACM landing pages denied automated access, and a repeat download of the official PDF timed out; the official PMLR metadata, previously extracted official bibliography, primary arXiv/PMLR text, OpenAlex, and DOI metadata were sufficient for the dispositions below.

**Source-paper bibliography coverage audit.** Every cited work was screened for a theorem in the required unrestricted approximate-DP PAC model, a neighboring characterization or proof tool, or restricted-family evidence. The audit includes 15 of the 20 cited works as full entries: 5 are generic direct theory and 10 are foundation/restricted evidence. Five are excluded from full-entry treatment for the concrete reasons shown. The source open-problem article itself is D6 and is not one of its own 20 bibliography items.

| # | Official reference identity | Theorem-level relation | Disposition | Survey mapping or exclusion reason |
|---:|---|---|---|---|
| 1 | Alon, Livni, Malliaris, and Moran (2019), *Private PAC Learning Implies Finite Littlestone Dimension* | General unrestricted approximate-DP lower bound | Included: generic direct | D2 |
| 2 | Beimel, Kasiviswanathan, and Nissim (2010), *Bounds on the Sample Complexity for Private Learning and Private Data Release* | Earlier private-learning/data-release bounds | Excluded | Its learning bounds are subsumed for this survey's current approximate-DP VC/LD frontier by D1, F1, and later work; it supplies neither the general \(\log^*\operatorname{LD}\) lower bound nor the current polynomial-\(\operatorname{LD}\) upper bound. |
| 3 | Beimel, Nissim, and Stemmer (2013a), *Characterizing the Sample Complexity of Private Learners* | Pure-DP combinatorial characterization | Included: foundation/restricted | F1 |
| 4 | Beimel, Nissim, and Stemmer (2013b), *Private Learning and Sanitization: Pure vs. Approximate Differential Privacy* | Pure/approximate separation and structured recursive tools | Included: foundation/restricted | F3 |
| 5 | Beimel, Moran, Nissim, and Stemmer (2019), *Private Center Points and Learning of Halfspaces* | Approximate-DP halfspace and center-point bounds | Included: foundation/restricted | D11; restricted-family direct evidence |
| 6 | Bun, Nissim, Stemmer, and Vadhan (2015), *Differentially Private Release and Learning of Threshold Functions* | Proper threshold/release bounds and interior-point equivalence | Included: foundation/restricted | F8 |
| 7 | Bun, Livni, and Moran (2020), *An Equivalence Between Private Classification and Online Prediction* | General sufficiency of finite Littlestone dimension | Included: generic direct | D3 |
| 8 | Cohen et al. (2023), *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization* | Optimal restricted threshold bound and quasi-concave testbed | Included: foundation/restricted | D8 |
| 9 | Dwork, McSherry, Nissim, and Smith (2006), *Calibrating Noise to Sensitivity in Private Data Analysis* | Defines the DP framework and basic mechanisms | Excluded | Foundational for privacy, but it states no private-PAC sample-complexity theorem or class-complexity characterization. |
| 10 | Feldman and Xiao (2014), *Sample Complexity Bounds on Differentially Private Learning via Communication Complexity* | Pure-DP communication characterization | Included: foundation/restricted | F2 |
| 11 | Ghazi et al. (2021), *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy* | General polynomial-in-Littlestone upper bound | Included: generic direct | D4 |
| 12 | Kaplan, Mansour, Stemmer, and Tsfadia (2020), *Private Learning of Halfspaces: Simplifying the Construction and Reducing the Sample Complexity* | Improved approximate-DP halfspace upper bound | Included: foundation/restricted | D12; restricted-family direct evidence |
| 13 | Kasiviswanathan, Lee, Nissim, Raskhodnikova, and Smith (2011), *What Can We Learn Privately?* | Generic finite-class private learner | Included: generic direct | D1 |
| 14 | Littlestone (1987), *Learning Quickly When Irrelevant Attributes Abound: A New Linear-Threshold Algorithm* | Online mistake-bound foundation for Littlestone dimension | Excluded | It contains no privacy or private-sample theorem; the online-to-private theorem that uses this foundation is represented directly by D3. |
| 15 | Lyu (2025 preprint; STOC 2026), *Private Learning of Littlestone Classes, Revisited* | Best source-verified general approximate-DP upper bound | Included: generic direct | D5 |
| 16 | Nissim, Tsfadia, and Yan (2026), *Differentially Private Quasi-Concave Optimization: Bypassing the Lower Bound and Application to Geometric Problems* | Restricted geometric learner and structured optimizer | Included: foundation/restricted | D10 |
| 17 | Sadigurschi and Stemmer (2021), *On the Sample Complexity of Privately Learning Axis-Aligned Rectangles* | Restricted rectangle upper bound | Included: foundation/restricted | D9 |
| 18 | Shelah (1990), *Classification Theory and the Number of Nonisomorphic Models* | Model-theoretic threshold-embedding foundation | Excluded | It is not a private-learning result; the private theorem that instantiates the embedding for the required lower bound is represented directly by D2. |
| 19 | Valiant (1984), *A Theory of the Learnable* | Non-private PAC baseline | Excluded | It provides no differential-privacy theorem; the non-private \(\Theta(\operatorname{VC})\) baseline is context rather than evidence for the unresolved private overhead. |
| 20 | Yan (2025), *An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1* | Approximate-DP VC-dimension-one characterization | Included: foundation/restricted | D7 |

## 1. direct theory

### Other: approximate-DP private PAC sample complexity

#### General characterization and generic bounds

[D1] What Can We Learn Privately? (SIAM Journal on Computing, 2011)

**Identifier:** arXiv:0803.0924

**Setting:** Finite concept classes, central differential privacy, PAC and agnostic learning; the generic construction is information-theoretic and uses pure DP, hence also satisfies approximate DP.

**Goal:** Determine what can be learned privately and give a generic learner independent of special structure in the class.

**Main result:** Any finite class \(C\) is privately agnostically learnable with sample complexity approximately logarithmic in \(|C|\), with the usual additional dependence on privacy, accuracy, and confidence parameters. In the class-complexity convention of the source problem, this gives the generic \(O(\log |C|)\) upper bound.

**Key proof techniques:** Private empirical-risk minimization using a sensitivity-controlled score and private selection (the exponential-mechanism paradigm), plus uniform convergence.

**Limitations:** The bound can be much larger than \(\operatorname{VC}(C)\); it does not exploit finite Littlestone dimension and does not characterize infinite classes. Its pure-DP guarantee is stronger than required, but that strength does not make the \(\log |C|\) dependence tight for approximate DP.

**Relation to research scope:** direct prior work; it supplies one of the two source-stated generic upper bounds and applies to unrestricted learners, but not a combinatorial characterization near \(\operatorname{VC}(C)\).

[D2] Private PAC Learning Implies Finite Littlestone Dimension (STOC 2019)

**Identifier:** arXiv:1806.00949

**Setting:** Realizable binary PAC learning under approximate DP, allowing possibly improper learners, for a class \(C\) of Littlestone dimension \(d\).

**Goal:** Prove a quantitative obstruction to approximate-private learning and characterize a necessary combinatorial condition.

**Main result:** Every approximately differentially private learner for \(C\) requires \(\Omega(\log^* d)\) examples. Thus approximate-DP PAC learnability implies \(d<\infty\). Together with the ordinary PAC lower bound, this gives the source-stated \(\Omega(\operatorname{VC}(C)+\log^*\operatorname{LD}(C))\) dependence up to constant-factor equivalence between sum and maximum.

**Key proof techniques:** A model-theoretic/combinatorial embedding of a large threshold subclass from large Littlestone dimension, followed by approximate-DP lower bounds for thresholds/private interior point; the argument is not restricted to proper threshold outputs.

**Limitations:** It gives only an iterated-logarithmic dependence on \(d\) and no matching general upper bound. It does not show a class whose private sample complexity is polynomial in \(d\), near \(\log |C|\), or even \(\Omega(\operatorname{VC}(C)2^{\log^* d})\).

**Relation to research scope:** direct prior work; this is the general unrestricted approximate-DP lower-bound anchor and preserves the required improper-learner scope.

[D3] An Equivalence Between Private Classification and Online Prediction (FOCS 2020; JACM version)

**Identifier:** arXiv:2003.00563

**Setting:** Realizable binary classification under approximate DP for every class of finite Littlestone dimension.

**Goal:** Prove that finite Littlestone dimension is sufficient for private PAC learnability, completing the qualitative equivalence with online learnability.

**Main result:** Every class with finite \(\operatorname{LD}(C)\) has an approximate-DP PAC learner. The corrected general construction has double-exponential dependence on \(d=\operatorname{LD}(C)\), establishing finiteness rather than a sharp quantitative rate.

**Key proof techniques:** Convert a bounded-mistake online learner into a globally stable batch learner; recursively combine hypotheses or force an additional online mistake, then repeat on disjoint data and privately select a frequent stable output.

**Limitations:** Global stability in this construction is extremely small, producing a double-exponential sample bound. Qualitative equivalence of learnability does not characterize quantitative private sample complexity.

**Relation to research scope:** direct prior work; it establishes the exact learnable-class regime but leaves the source's quantitative characterization question open.

[D4] Sample-Efficient Proper PAC Learning with Approximate Differential Privacy (STOC 2021)

**Identifier:** arXiv:2012.03893

**Setting:** Proper realizable PAC learning under approximate DP for a binary class of Littlestone dimension \(d\).

**Goal:** Replace the earlier exponential-scale upper bound by a polynomial bound and obtain a proper private learner.

**Main result:** The class can be properly learned with sample complexity \(\widetilde O(d^6)\) when privacy and learning parameters are suppressed. The paper also gives polynomial-in-primal-and-dual-Littlestone-dimension sanitization bounds.

**Key proof techniques:** A structural property called irreducibility, Standard Optimal Algorithm hypotheses from restricted classes, stable candidate generation, and private selection; the sanitization result additionally uses a proper-learning-to-data-release reduction.

**Limitations:** The \(d^6\) dependence is far above \(\operatorname{VC}(C)+\log^* d\) and does not separately exploit small VC dimension. Properness is stronger than the required unrestricted model, so it does not invalidate the upper bound, but may obscure improvements available to improper learners.

**Relation to research scope:** direct prior work; it was the first polynomial-in-\(\operatorname{LD}(C)\) general upper bound and is valid as an upper bound for the unrestricted target.

[D5] Private Learning of Littlestone Classes, Revisited (STOC 2026)

**Identifier:** arXiv:2510.00076

**Setting:** Approximate-private online and realizable PAC learning of Littlestone classes; for the PAC result, \(d=\operatorname{LD}(C)\), accuracy \(\alpha\), confidence \(1-\beta\), and privacy \((\varepsilon,\delta)\) are explicit.

**Goal:** Refine irreducibility-based private learning and improve both private online learning and the general private PAC upper bound.

**Main result:** As a PAC consequence, the paper gives sample complexity \(\widetilde O(d^5\log(1/(\delta\beta))/(\varepsilon\alpha))\), improving the earlier result by factors of roughly \(d/\alpha\) and attaining optimal \(1/\alpha\) dependence. Under the source convention this is \(\widetilde O(\operatorname{LD}^5(C))\).

**Key proof techniques:** A refined interpretation of irreducibility through a decomposition dimension, bounded candidate pools, and a sparse exponential mechanism that samples from input-dependent candidates while controlling the output distribution.

**Limitations:** The class-complexity term remains polynomial in \(d\), with no generic dependence polynomial in \(\operatorname{VC}(C)\) and \(\log d\) or \(\log^* d\). Its primary theorem is about private online learning; the relevant PAC improvement is a separate consequence.

**Relation to research scope:** direct prior work; this is the best source-verified general Littlestone-dimension upper bound, but it does not close the stated gap.

[D6] Invited Open Problem: Does Differential Privacy Make PAC Learning Much Harder? (COLT 2026)

**Identifier:** https://proceedings.mlr.press/v336/nissim26a.html

**Setting:** Standard realizable binary PAC learning, arbitrary distributions, approximate DP with constant \(\varepsilon\) and \(\delta\ll 1/n\), unrestricted and computationally unbounded learners; class-complexity dependence is emphasized.

**Goal:** State the current quantitative frontier and ask for a combinatorial characterization of private PAC sample complexity.

**Main result:** The paper records the current interval
\[
\Omega\!\left(\operatorname{VC}(C)+\log^*\operatorname{LD}(C)\right)
\quad\text{to}\quad
\min\!\left\{O(\log |C|),\widetilde O(\operatorname{LD}^5(C))\right\},
\]
and identifies a generic \(\operatorname{poly}(\operatorname{VC}(C),\log^*\operatorname{LD}(C))\) upper bound, or even \(\operatorname{poly}(\operatorname{VC}(C),\log\operatorname{LD}(C))\), as major progress.

**Key proof techniques:** Expository reconstructions of the threshold/private-interior-point lifting lower bound and the online-to-global-stability upper-bound route; theorem statements are attributed to the original papers above.

**Limitations:** This is a gap-defining open-problem article, not a new characterization theorem. Its restricted-family evidence and proposed milestones must not be reported as a solution.

**Relation to research scope:** direct prior work; it is the binding source of the exact regime, baselines, progress criteria, and forbidden scope substitutions.

#### Restricted-family and low-VC evidence

[D7] An \(\widetilde O\)ptimal Differentially Private Learner for Concept Classes with VC Dimension 1 (arXiv, 2025)

**Identifier:** arXiv:2505.06581

**Setting:** Approximate-DP realizable PAC learning for any binary class with \(\operatorname{VC}(C)=1\) and \(d=\operatorname{LD}(C)\); the current version also supplies a proper learner.

**Goal:** Match the general \(\Omega(\log^* d)\) lower bound throughout the VC-dimension-one regime.

**Main result:** A nearly optimal learner with class-complexity dependence \(\widetilde O(\log^* d)\), matching \(\Omega(\log^* d)\) up to suppressed parameter and polylogarithmic factors.

**Key proof techniques:** The tree/partial-order structure of VC-dimension-one classes, an exponential bound on tree height via threshold dimension, partition-and-aggregate, private median for a path length, and a choosing mechanism for a unique good path.

**Limitations:** The structural tree representation is special to \(\operatorname{VC}(C)=1\); the result does not extend to general VC dimension and is not a general characterization.

**Relation to research scope:** direct prior work; it is source-approved special-case progress and evidence that \(\log^*\operatorname{LD}(C)\) can be the right overhead when VC dimension is minimal.

[D8] Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization (STOC 2023)

**Identifier:** DOI:10.1145/3564246.3585148

**Setting:** Approximate-DP learning of one-dimensional thresholds over a finite ordered domain \(X\), and additive-error private quasi-concave optimization.

**Goal:** Close the remaining domain-size gap for private threshold learning and determine the generic quasi-concave-optimization rate.

**Main result:** Thresholds can be learned with \(O(\log^*|X|)\) domain-size dependence, matching the Alon et al. lower bound even for improper learners; since finite-domain threshold \(\operatorname{LD}\) is logarithmic in \(|X|\), this is \(\Theta(\log^*\operatorname{LD})\) up to an additive iterated-log constant. In contrast, generic additive-error quasi-concave optimization has \(\Theta(2^{\log^*|X|})\) dependence.

**Key proof techniques:** The Reorder-Slice-Compute paradigm, which randomly reorders and slices data so computations can be charged to controlled pieces without paying naive adaptive-composition cost.

**Limitations:** Threshold order structure is highly special. The generic quasi-concave lower bound does not automatically transfer to every private PAC class, and the threshold learner does not yield a general VC/LD characterization.

**Relation to research scope:** direct prior work; this is restricted-family evidence near the generic lower bound, not a full answer.

[D9] On the Sample Complexity of Privately Learning Axis-Aligned Rectangles (NeurIPS 2021)

**Identifier:** arXiv:2107.11526

**Setting:** Approximate-private learning of \(d\)-dimensional axis-aligned rectangles over a finite grid \(X^d\).

**Goal:** Remove unnecessary superlinear dependence on dimension while retaining iterated-logarithmic dependence on the grid size.

**Main result:** A learner with sample complexity \(\widetilde O(d(\log^*|X|)^{1.5})\), improving earlier alternatives that were linear in \(\log |X|\) or superlinear in \(d\). Later threshold machinery is reported by the 2026 source to sharpen the restricted-family picture to \(\widetilde O(\operatorname{VC}(C)\log^*\operatorname{LD}(C))\).

**Key proof techniques:** Iteratively delete exposed data points while structuring the computation to avoid the full cost of adaptive privacy composition.

**Limitations:** The argument uses product order and rectangle geometry. It is not a theorem for arbitrary classes with the same VC and Littlestone dimensions.

**Relation to research scope:** direct prior work; it shows near-lower-bound behavior for a structured family but is only restricted partial evidence.

[D10] Differentially Private Quasi-Concave Optimization: Bypassing the Lower Bound and Application to Geometric Problems (SODA 2026)

**Identifier:** arXiv:2504.19001

**Setting:** Approximate-DP optimization of an approximated quasi-concave objective, private center points, and realizable PAC learning of \(d\)-dimensional halfspaces over a finite domain.

**Goal:** Identify natural structure that bypasses the generic quasi-concave lower bound and improve geometric private-learning bounds.

**Main result:** Approximated quasi-concave functions admit a generic optimizer with \(\widetilde O(\log^*|X|)\) domain dependence. Applications give \(\widetilde O(d^{5.5}\log^*|X|)\) bounds for center points and halfspace learning, replacing the prior exponential dependence on \(\log^*|X|\).

**Key proof techniques:** Define and exploit approximated quasi-concavity, construct a tailored private optimizer, and reduce center-point and halfspace tasks to that structured optimization problem.

**Limitations:** The conclusion is geometric and domain-specific; it does not show that arbitrary classes admit an approximated quasi-concave surrogate or a general \(\operatorname{poly}(\operatorname{VC},\log^*\operatorname{LD})\) bound.

**Relation to research scope:** direct prior work; it is strong restricted-family evidence and a reusable structural clue, but not a general characterization.

[D11] Private Center Points and Learning of Halfspaces (COLT 2019)

**Identifier:** arXiv:1902.10731

**Setting:** Approximate-DP realizable learning of halfspaces over an arbitrary finite domain \(X\subset\mathbb R^d\), together with private approximate center-point and convex-hull tasks; the paper also compares approximate and pure privacy for the convex-hull problem.

**Goal:** Build a private halfspace learner through a high-dimensional analogue of the private median and identify the sample cost forced by the finite domain.

**Main result:** It gives a halfspace learner with sample complexity \(\operatorname{poly}(d,2^{\log^*|X|})\), using a private approximate center-point algorithm with the same qualitative dependence. It also proves an \(\Omega(d+\log^*|X|)\) approximate-DP lower bound for privately outputting a point in the convex hull, versus \(\Omega(d\log|X|)\) under pure DP.

**Key proof techniques:** Reduce private halfspace learning to privately locating an approximate center point, use high-dimensional depth/convexity structure, and transfer privacy lower bounds from finite ordered domains to the convex-hull task.

**Limitations:** The result is confined to finite-domain halfspaces, and its upper bound is exponential in \(\log^*|X|\). The convex-hull lower bound is for an auxiliary geometric task and does not by itself lower-bound every improper private halfspace learner or a general class with the same VC/LD values.

**Relation to research scope:** direct prior work; it is restricted-family evidence and the first center-point bridge in the halfspace line, not an unrestricted characterization.

[D12] Private Learning of Halfspaces: Simplifying the Construction and Reducing the Sample Complexity (NeurIPS 2020)

**Identifier:** arXiv:2004.07839

**Setting:** Approximate-DP realizable learning of halfspaces over a finite grid \(G\subset\mathbb R^d\), via a private approximate linear-feasibility problem.

**Goal:** Simplify the earlier center-point construction and reduce its polynomial dependence on dimension.

**Main result:** It gives a private halfspace learner with sample complexity approximately \(d^{2.5}2^{\log^*|G|}\), improving D11 by a factor of \(d^2\). Its core algorithm privately finds a point satisfying most constraints in a feasible linear system.

**Key proof techniques:** An iterative private linear-feasibility algorithm fixes the solution one coordinate at a time, with private one-dimensional choices and controlled violation of constraints.

**Limitations:** The bound still has exponential dependence on \(\log^*|G|\), assumes finite-grid halfspaces, and does not transfer to arbitrary finite-Littlestone classes. D10 later improves the domain dependence using additional approximated-quasi-concavity structure.

**Relation to research scope:** direct prior work; it records a material restricted-family improvement and a linear-feasibility interface, but not a general VC/LD characterization.

## 2. foundation theory

### Testbed Theory

#### Testbed: representation, communication, stability, and task-reduction interfaces

This lightweight foundation pass isolates mechanisms that characterize neighboring regimes or transfer learnability. Pure-DP entries are deliberately not counted as direct solutions of the approximate-DP question.

##### Other: candidate characterization interfaces and reusable reductions

[F1] Characterizing the Sample Complexity of Private Learners (ITCS 2013; arXiv version 2014)

**Identifier:** arXiv:1402.2224

**Setting:** Private PAC learning under pure \(\varepsilon\)-DP, with privacy/accuracy/confidence dependence handled separately from a class parameter.

**Goal:** Find a combinatorial quantity analogous to VC dimension that is necessary and sufficient for pure-private learning.

**Main result:** Probabilistic representation dimension \(\operatorname{RepDim}(C)\) characterizes pure-DP learning sample complexity up to the stated parameter factors: a learner using \(m\) samples yields \(\operatorname{RepDim}(C)=O(m)\), and a representation yields a learner with \(m=O(\operatorname{RepDim}(C))\) in the suppressed-parameter convention.

**Key proof techniques:** Probabilistic hypothesis representations and two-way reductions between representations and private learners, using private selection for the upper direction.

**Limitations:** The characterization is for pure DP. Approximate DP can be strictly easier, so \(\operatorname{RepDim}\) cannot be imported as the answer without a new theorem relating it to approximate-private sample complexity.

**Relation to research scope:** testbed-level foundation; it is the clearest model of what a successful measure theorem should look like, but the source explicitly rules out treating it as a resolution.

[F2] Sample Complexity Bounds on Differentially Private Learning via Communication Complexity (COLT 2014)

**Identifier:** arXiv:1402.6278

**Setting:** Primarily pure-DP PAC learning, randomized one-way communication for concept evaluation, and comparisons with approximate DP.

**Goal:** Re-express pure-private sample complexity through communication complexity and derive separations.

**Main result:** Pure-DP sample complexity is equivalent, up to parameter-level transformations, to randomized one-way communication complexity of evaluation. Consequences include a pure-DP \(\Omega(\operatorname{LD}(C))\) lower bound and classes separating pure from approximate private learning, even with \(\operatorname{LD}(C)=2\) in one construction.

**Key proof techniques:** Reductions among probabilistic representations, one-way communication protocols, and private learners; communication lower bounds then transfer to pure-private sample lower bounds.

**Limitations:** The central equivalence is pure-DP-specific, and its strong lower bounds need not survive when \(\delta>0\). It supplies neither the current approximate-DP upper bound nor a matching measure in that regime.

**Relation to research scope:** testbed-level foundation; it suggests communication-like candidates while proving that privacy-regime fidelity is essential.

[F3] Private Learning and Sanitization: Pure vs. Approximate Differential Privacy (APPROX-RANDOM 2013)

**Identifier:** arXiv:1407.2674

**Setting:** Pure versus approximate DP for learning and sanitization, with concrete point, threshold, and rectangle classes and quasi-concave promise problems.

**Goal:** Determine whether approximate DP can reduce sample complexity and build recursive algorithms for structured private problems.

**Main result:** Approximate DP can require significantly fewer samples than pure DP. The paper develops recursive quasi-concave-promise algorithms and applies them to private learners/sanitizers for several structured classes; it also shows that VC dimension characterizes label-private learning, a weaker privacy model.

**Key proof techniques:** Recursive domain reduction for quasi-concave promise problems and reductions from learning/sanitization tasks to those recurrences.

**Limitations:** The positive results concern specific families or weaker label privacy, and the separations do not characterize unrestricted approximate-DP sample complexity.

**Relation to research scope:** testbed-level foundation; it is evidence against silently transferring a pure-DP measure and supplies the recursive ancestor of interior-point/quasi-concave methods.

[F4] Synthetic Data Generators: Sequential and Private (arXiv, 2019/2020 version)

**Identifier:** arXiv:1902.03468

**Setting:** Private synthetic-data generation for possibly infinite statistical-query classes and proper private PAC learning, without computational-efficiency requirements.

**Goal:** Replace finite query-class cardinality by a learnability condition and relate private proper learning to private data release.

**Main result:** Any privately proper PAC-learnable class admits a private synthetic-data generator with sample complexity independent of domain size, yielding an equivalence between the tasks in the paper's setting.

**Key proof techniques:** A task reduction that converts a proper private learner into a sequential/private synthetic-data construction rather than enumerating a finite query class.

**Limitations:** The premise is proper private learnability and the target is synthetic data; the result does not quantify arbitrary-class PAC complexity by VC/LD or remove properness for the source problem.

**Relation to research scope:** testbed-level foundation; it offers a possible bridge to sanitization tools but any use must discharge properness and quantitative-loss issues.

[F5] Closure Properties for Private Classification and Online Prediction (arXiv, 2020)

**Identifier:** arXiv:2003.04509

**Setting:** Boolean classes formed by aggregating a base class, plus realizable-to-agnostic transformations for proper or improper private learners.

**Goal:** Understand how online and private learnability, and their sample costs, behave under class composition and learning-model transformations.

**Main result:** The paper bounds the Littlestone dimension of composed classes and gives direct private-learner transformations with near-optimal composition dependence, bypassing the worse dependence obtained by routing only through Littlestone-dimension bounds. It also transforms realizable private learners into agnostic ones.

**Key proof techniques:** Structural bounds for aggregated classes and black-box transformations that combine private learners while controlling privacy and utility directly.

**Limitations:** These are relative closure/transfer theorems requiring a learner for the base class; they do not supply an absolute combinatorial characterization for an arbitrary class.

**Relation to research scope:** testbed-level foundation; direct transformations may preserve small complexity better than a lossy detour through \(\operatorname{LD}\), a useful design principle for later ideas.

[F6] Ramsey Theorems for Trees and a General 'Private Learning Implies Online Learning' Theorem (arXiv, 2024)

**Identifier:** arXiv:2407.07765

**Setting:** General classification tasks, including multiclass and partial classes where the older threshold-embedding proof is unavailable.

**Goal:** Prove that private learnability implies online learnability without relying on binary threshold embeddings.

**Main result:** DP learnability implies online learnability for the broader classification settings considered, via new Ramsey-type theorems for Littlestone trees.

**Key proof techniques:** Direct combinatorial reasoning on labeled trees and Ramsey homogenization, replacing the model-theoretic threshold-subclass route.

**Limitations:** The contribution is chiefly qualitative and targets broader models; it provides no tighter quantitative upper or lower bound for the required realizable binary approximate-DP setting.

**Relation to research scope:** testbed-level foundation; it is a threshold-free lower-bound toolkit, but broader-model necessity is only residual context for the binary quantitative target.

[F7] The Role of Randomness in Stability (arXiv, 2025)

**Identifier:** arXiv:2502.08007

**Setting:** Randomness complexity of replicability and differential privacy for learning tasks, with global stability as a weak primitive.

**Goal:** Quantify the random bits needed for stable learning and relate weak global stability to strong stability notions.

**Main result:** A weak-to-strong stability boosting theorem controls randomness complexity by the best deterministic global-stability probability. For PAC learning, bounded randomness complexity is equivalent to finite Littlestone dimension and has at most logarithmic dependence on excess error.

**Key proof techniques:** Boost global stability/replication probability into stronger replicability or DP guarantees while tracking randomness rather than sample size.

**Limitations:** Randomness complexity is not training-sample complexity. Finite \(\operatorname{LD}\) again characterizes feasibility, but the theorem does not yield matching approximate-DP sample bounds.

**Relation to research scope:** testbed-level foundation; it refines the stability interface behind upper bounds, while the missing conversion from randomness/stability parameters to sharp sample complexity remains substantive.

[F8] Differentially Private Release and Learning of Threshold Functions (FOCS 2015; revised arXiv version 2024)

**Identifier:** arXiv:1504.07553

**Setting:** Approximate-DP release of threshold queries and proper PAC learning of thresholds over a totally ordered finite domain \(X\), with extensions to distribution learning in Kolmogorov distance and multidimensional proper thresholds.

**Goal:** Determine the domain-size cost of private threshold release/proper learning and isolate a simpler complete problem that supports both upper and lower bounds.

**Main result:** Threshold release and proper threshold learning require \(\Omega(\log^*|X|)\) samples and admit an upper bound \(2^{(1+o(1))\log^*|X|}\); the task is impossible on an infinite domain at finite sample size in the stated model. The lower bound extends to \(\Omega(\ell\log^*|X|)\) for proper thresholds in \(\ell\) dimensions.

**Key proof techniques:** Reductions in both directions among threshold release, proper threshold learning, and the private interior-point problem, followed by recursive domain lifting for the upper and lower bounds.

**Limitations:** The learning statements are proper and threshold-specific, and the upper bound was later improved by D8. Its lower bound alone does not establish the unrestricted improper-learner theorem needed for a general class; D2 supplies that later general lower-bound transfer.

**Relation to research scope:** testbed-level foundation; it is the canonical interior-point mechanism behind the iterated-logarithmic lower bound, with properness and ordered-domain scope kept explicit.

## 3. empirical practice

No empirical-practice papers were included in this run. The active target is a distribution-free, realizable, information-theoretic theorem for unrestricted learners, and the verified practice literature predominantly changes the problem to efficient optimization, local privacy, public-data assistance, distributional assumptions, or benchmark performance. Such evidence cannot establish the formal sample-complexity gap and would not help distinguish \(\log\operatorname{LD}\) from \(\log^*\operatorname{LD}\). This omission is deliberate rather than evidence that private learning lacks applications.

## 4. gap and open problem

### Other: approximate-DP private PAC sample complexity

#### General combinatorial characterization

**Search path / outcome:** direct theory found; lightweight foundation used

**Gap statement:** No verified measure \(M(C)\) is known for which unrestricted approximate-DP realizable binary PAC sample complexity is uniformly characterized by matching upper and lower bounds for every finite-Littlestone class.

- **Evidence pattern:** Pure DP has representation/communication characterizations (F1-F2), while approximate DP has a qualitative finite-\(\operatorname{LD}\) characterization (D2-D3) but quantitatively nonmatching bounds (D1, D4-D6).
- **Supporting papers / absence pattern:** D6 explicitly poses this question after incorporating D1-D5; exact-name, alias, sample-complexity, representation, and stability searches found no later verified general characterization. F3 shows why a pure-DP measure cannot be transferred without proof.
- **Why it matters downstream:** A full perspective must define a genuine class measure and prove both directions in the same approximate-DP, unrestricted model. Merely renaming optimal sample complexity, assuming the required learner, or citing pure-DP \(\operatorname{RepDim}\) is circular or out of scope.
- **Source-direction role:** central; this is exactly Open Question 1 and its full-progress criterion.
- **Status:** supported

#### Generic upper-bound dependence

**Search path / outcome:** direct theory found; lightweight foundation used

**Gap statement:** The verified generic upper bound remains
\[
\min\!\left\{O(\log |C|),\widetilde O(\operatorname{LD}^5(C))\right\},
\]
with no general \(\operatorname{poly}(\operatorname{VC}(C),\log\operatorname{LD}(C))\), let alone \(\operatorname{poly}(\operatorname{VC}(C),\log^*\operatorname{LD}(C))\), theorem found.

- **Evidence pattern:** D1 supplies the finite-cardinality route; D3-D5 successively improve the online/global-stability route to \(\widetilde O(\operatorname{LD}^5)\). D7-D10 obtain iterated-logarithmic domain dependence only under extra class structure, while D11-D12 document the earlier halfspace route with \(2^{\log^*|X|}\)-type dependence.
- **Supporting papers / absence pattern:** D6 states both proposed polynomial-in-VC-and-logarithm milestones after accounting for D5. Proxy searches for private PAC sample complexity, Littlestone classes, global stability, and composition returned transformations or neighboring models (F4-F7), not a better unrestricted bound.
- **Why it matters downstream:** This is the cleanest source-authorized major-partial target. Later ideas must expose where VC dimension enters and must not conflate \(\log\operatorname{LD}\) with \(\log^*\operatorname{LD}\).
- **Source-direction role:** central; either proposed generic bound is expressly major progress.
- **Status:** supported

#### Generic lower-bound and separation dependence

**Search path / outcome:** direct theory found; lightweight foundation used

**Gap statement:** Beyond \(\Omega(\operatorname{VC}(C)+\log^*\operatorname{LD}(C))\), no verified general lower bound or class-specific separation in the required model shows substantially larger unavoidable overhead; even \(\Omega(\operatorname{VC}(C)2^{\log^*\operatorname{LD}(C)})\) remains open in the source.

- **Evidence pattern:** D2 is unrestricted and approximate-private but only iterated-logarithmic in \(\operatorname{LD}\). Stronger communication/representation lower bounds in F1-F2 are for pure DP; F8's threshold lower bound is proper/restricted. The concrete approximate-DP families D7-D12 do not supply a general hard example, and their special structure supports upper bounds unavailable for arbitrary classes.
- **Supporting papers / absence pattern:** D6 explicitly records the absence of such a class. Searches found lower bounds for private online/list/multiclass, pure DP, generic quasi-concave optimization, or smoothed/local models, none of which establishes the required binary PAC separation.
- **Why it matters downstream:** A lower-bound perspective needs an unrestricted improper-learner argument and a concept class in the exact model. Solving the sibling finite-class \(\Omega(\log |C|)\) question may provide evidence, but it must not be substituted for this characterization target.
- **Source-direction role:** central as partial-progress/separation evidence; Open Question 2 itself is out of scope as the primary deliverable.
- **Status:** supported

#### Restricted-to-general structural bridge

**Search path / outcome:** direct theory found; lightweight foundation used

**Gap statement:** There is no verified structural theorem lifting the near-lower-bound behavior of VC-dimension-one classes, thresholds, rectangles, or halfspaces to every finite-Littlestone class with comparable dependence on \(\operatorname{VC}(C)\) and \(\log^*\operatorname{LD}(C)\).

- **Evidence pattern:** D7 uses the special tree structure of VC-one classes; D8 and F8 use total order plus threshold/interior-point machinery; D9 uses rectangle/product geometry; D10-D12 use center points, linear feasibility, or approximated quasi-concavity for halfspaces. Each proof exposes extra structure absent from a generic VC/LD specification.
- **Supporting papers / absence pattern:** The restricted papers are positive evidence for the desired scale, while D6 explicitly says the unrestricted setting remains poorly understood. F5 shows that direct transformations can outperform routing through a coarse Littlestone bound, but does not provide the missing universal decomposition.
- **Why it matters downstream:** A promising perspective should identify a generic decomposition, closure operation, or stability parameter that subsumes these mechanisms and prove its cost for arbitrary classes; simply analyzing another fixed family is only labeled partial progress.
- **Source-direction role:** narrowed but material; restricted results are allowed partial progress, never a full characterization.
- **Status:** supported

#### Candidate-interface transfer

**Search path / outcome:** direct theory found; lightweight foundation used

**Gap statement:** Known representation, one-way communication, sanitization, global-stability, replicability, and randomness interfaces do not currently yield a quantitatively tight approximate-DP sample-complexity measure in the required model.

- **Evidence pattern:** F1-F2 characterize or lower-bound pure DP; F4 transfers proper learning to synthetic data; F7 characterizes randomness rather than samples; F8 characterizes a threshold testbed through interior points; D3-D5 convert stability/irreducibility into learners but lose polynomial powers of \(\operatorname{LD}\).
- **Supporting papers / absence pattern:** F3 proves real pure/approximate separations, and F5-F6 supply transfer tools without the desired absolute rate. D11-D12 give geometric/feasibility interfaces only for halfspaces. No audited source proves matching approximate-DP sample bounds from any of these interfaces.
- **Why it matters downstream:** These interfaces are legitimate perspective seeds only if a new branch states and proves the missing two-way quantitative bridge, including privacy regime, proper/improper status, and all VC/LD/log/log-star dependence.
- **Source-direction role:** residual foundation feeding a central gap; importing an existing neighboring characterization unchanged is out of scope.
- **Status:** supported
