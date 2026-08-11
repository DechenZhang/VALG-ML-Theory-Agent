# LITERATURE_SURVEY.md

This survey treats the active target as **private PAC sample complexity**, specifically the existence or nonexistence of finite concept-class sequences with a superpolynomial gap between \(\log |C_\kappa|\) and \(\operatorname{VC}(C_\kappa)\), yet unrestricted approximate-DP realizable-PAC sample complexity \(\Omega(\log |C_\kappa|)\). Unless an entry says otherwise, accuracy and confidence are fixed constants, \(\varepsilon\) is a fixed small constant, and \(\delta\) is negligible in the sample size. Proper-only, pure-DP-only, efficient-only, agnostic-only, and infinite-class results are recorded as restricted evidence rather than as solutions.

## 1. direct theory

### Other: Private PAC sample complexity

#### Finite-class separation under approximate DP

[D1] Invited Open Problem: Does Differential Privacy Make PAC Learning Much Harder? (COLT/PMLR 2026)

**Identifier:** https://proceedings.mlr.press/v336/nissim26a.html

**Setting:** Realizable binary PAC learning under approximate \((\varepsilon,\delta)\)-DP, allowing improper and computationally unbounded learners; the central target is a sequence of finite classes.

**Goal:** Determine whether private sample complexity can be \(\Omega(\log |C_\kappa|)\) while \(\log |C_\kappa|\) is superpolynomial in \(\operatorname{VC}(C_\kappa)\).

**Main result:** It records the current envelope
\[
\Omega\!\left(\operatorname{VC}(C)+\log^*\!\operatorname{LD}(C)\right)
\leq n_{\rm priv}(C)
\leq \min\!\left\{O(\log |C|),\widetilde O(\operatorname{LD}(C)^5)\right\},
\]
and poses the three-item existential question; it does not claim a resolution.

**Key proof techniques:** Its appendices explain the threshold/interior-point lifting behind the lower bound and the online-mistake-bound to global-stability transformation behind the upper bound.

**Limitations:** The lower envelope is far below \(\log |C|\) in the sought regime, while the known upper envelope does not rule out equality with \(\Theta(\log |C|)\).

**Relation to research scope:** direct prior work; this is the source-defining statement, and its exact versus intermediate progress distinctions are binding.

[D2] What Can We Learn Privately? (SIAM Journal on Computing 2011; FOCS version 2008)

**Identifier:** arXiv:0803.0924

**Setting:** Distribution-free private PAC and agnostic learning over a finite candidate hypothesis class; the learner may be computationally inefficient.

**Goal:** Establish broad feasibility and generic sample bounds for learning under differential privacy.

**Main result:** An exponential-mechanism analogue of finite-class Occam's razor privately learns using sample complexity linear in \(\log |H|\), up to the standard privacy, accuracy, and confidence factors. Taking \(H=C\) gives the generic \(O(\log |C|)\) upper benchmark used in Open Question 2.

**Key proof techniques:** Score hypotheses by empirical error and sample with the exponential mechanism; combine its utility guarantee with uniform convergence.

**Limitations:** This is an upper bound, not evidence that any class requires \(\Omega(\log |C|)\), and its generic implementation can be exponential time.

**Relation to research scope:** direct prior work; it fixes the exact upper reference that a full affirmative result must match from below.

[D3] Private PAC Learning Implies Finite Littlestone Dimension (STOC 2019)

**Identifier:** arXiv:1806.00949

**Setting:** Approximate-DP PAC learning with arbitrary, possibly improper outputs; the displayed lower bound uses fixed accuracy/confidence and \(\delta=O(1/(m^2\log m))\).

**Goal:** Show that private learnability forces finite Littlestone dimension and obtain a quantitative lower bound.

**Main result:** Every approximately private learner for a class of Littlestone dimension \(d\) needs \(\Omega(\log^* d)\) samples; combined with the ordinary PAC lower bound this yields \(\Omega(\operatorname{VC}(C)+\log^*\operatorname{LD}(C))\). The lower bound explicitly permits improper learners.

**Key proof techniques:** Embed a logarithmic-size threshold family using the order/Littlestone connection, then prove an improper threshold lower bound through homogeneous sets, probabilistic representations, and iterated-log counting.

**Limitations:** Iterated logarithm in \(\operatorname{LD}(C)\) is much weaker than \(\log |C|\); the theorem alone cannot establish Item 3 of the source question.

**Relation to research scope:** direct prior work; it is the strongest general unrestricted approximate-DP lower-bound mechanism presently in the source chain.

[D4] An Equivalence Between Private Classification and Online Prediction (FOCS 2020; revised 2021)

**Identifier:** arXiv:2003.00563

**Setting:** Realizable and agnostic approximate-DP PAC learning for classes of finite Littlestone dimension, with no efficiency guarantee.

**Goal:** Prove the converse to D3 and characterize approximate-private learnability qualitatively.

**Main result:** A class is approximate-DP PAC learnable if and only if it is online learnable, equivalently if and only if its Littlestone dimension is finite. The corrected quantitative construction has doubly exponential dependence on \(d=\operatorname{LD}(C)\).

**Key proof techniques:** Convert a bounded-mistake online learner into a globally stable learner, then repeat on disjoint samples and privately select a frequent stable hypothesis.

**Limitations:** The quantitative bound is far too large to locate the true finite-class sample complexity; global stability certifies feasibility rather than the desired lower separation.

**Relation to research scope:** direct prior work; it supplies the qualitative characterization and the stability framework later improved to polynomial dependence.

[D5] Sample-Efficient Proper PAC Learning with Approximate Differential Privacy (STOC 2021)

**Identifier:** arXiv:2012.03893

**Setting:** Realizable approximate-DP PAC learning of a class with Littlestone dimension \(d\); the output is proper.

**Goal:** Replace the earlier exponential dependence on \(d\) by a polynomial and settle whether finite-Littlestone classes admit proper private learners.

**Main result:** It gives a proper learner with sample complexity \(\widetilde O(d^6/(\varepsilon\alpha^2))\), with an agnostic extension, and thus establishes polynomial dependence on Littlestone dimension.

**Key proof techniques:** Introduce irreducible subclasses, construct stable standard-optimal-algorithm hypotheses, and use private stable selection plus a properization step.

**Limitations:** It is an upper bound and does not expose a class requiring even polynomial dependence on \(d\); later work improves both the exponent and accuracy dependence.

**Relation to research scope:** direct prior work; it constrains any affirmative sequence by a polynomial-in-\(\operatorname{LD}\) upper bound.

[D6] Private Learning of Littlestone Classes, Revisited (arXiv 2025; STOC 2026)

**Identifier:** arXiv:2510.00076

**Setting:** Approximate-DP PAC and online learning of classes with Littlestone dimension \(d\).

**Goal:** Refine irreducibility-based private learning and improve the quantitative general upper bound.

**Main result:** The PAC learner uses
\(\widetilde O(d^5\log(1/\delta)/(\varepsilon\alpha))\) samples, with confidence factors hidden in the polylogarithms; it improves D5 by one power of \(d\) and attains optimal \(1/\alpha\) dependence. The paper also gives a private online learner with a polynomial-in-\(d\) mistake bound.

**Key proof techniques:** Refined irreducibility and decomposition trees, split-and-aggregate interleaving, multiplicative concentration, and a sparse exponential mechanism whose output distribution is explicitly controlled.

**Limitations:** This remains a universal upper bound, not a matching lower bound. It says nothing by itself about whether \(\Omega(\log |C|)\) is attained.

**Relation to research scope:** direct prior work; together with D2 it forces every candidate to satisfy \(n_{\rm priv}(C)\leq\min\{O(\log|C|),\widetilde O(\operatorname{LD}(C)^5)\}\).

[D7] An Optimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1 (arXiv 2025)

**Identifier:** arXiv:2505.06581

**Setting:** Approximate-DP realizable PAC learning for arbitrary classes with \(\operatorname{VC}(C)=1\) and finite \(d=\operatorname{LD}(C)\); both improper and proper learners are treated.

**Goal:** Close the general \(\Omega(\log^* d)\) versus polynomial-in-\(d\) gap in the VC-dimension-one regime.

**Main result:** The improper learner has sample complexity \(\widetilde O(\log^* d/(\alpha\varepsilon))\), nearly matching D3; a proper learner has the same \(d\)-dependence with an additional accuracy-dependent term.

**Key proof techniques:** Represent VC-one classes by rooted trees, bound tree height through threshold dimension, privately select a median level, and use a bounded-growth choosing mechanism to select a path.

**Limitations:** The result is restricted to VC dimension one and is an upper bound; it does not characterize classes with growing VC dimension.

**Relation to research scope:** direct prior work; it is a formal obstruction to seeking the requested sequence entirely inside \(\operatorname{VC}=1\), even though such classes can have very large cardinality.

[D8] Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization (STOC 2023)

**Identifier:** DOI:10.1145/3564246.3585148

**Setting:** Approximate-private learning of one-dimensional thresholds over a finite ordered domain and private quasi-concave optimization.

**Goal:** Obtain the optimal iterated-logarithmic domain dependence for threshold learning and understand the limits of generic quasi-concave optimization.

**Main result:** Thresholds are learnable with \(\widetilde O(\log^*|X|)\) samples, essentially matching the D3 lower bound. The paper also proves an exponential-in-\(\log^*|X|\) barrier for fully generic low-sensitivity quasi-concave optimization.

**Key proof techniques:** A sample-efficient private interior-point/threshold routine and reductions between threshold learning, interior points, and quasi-concave optimization.

**Limitations:** Thresholds have VC dimension one and \(\operatorname{LD}\) logarithmic in the domain size; their private complexity is negligible relative to \(\log |C|\), and the generic optimizer lower bound is not a PAC lower bound for arbitrary improper learners.

**Relation to research scope:** direct prior work; it rules out the canonical threshold route for both the exact and source-stated relaxed separation.

[D9] On the Sample Complexity of Privately Learning Axis-Aligned Rectangles (NeurIPS 2021)

**Identifier:** arXiv:2107.11526

**Setting:** Approximate-DP realizable PAC learning of axis-aligned rectangles over a finite grid \(X^d\).

**Goal:** Reduce the dimension cost while retaining only iterated-logarithmic dependence on the grid size.

**Main result:** The RandMargins learner uses \(\widetilde O(d(\log^*|X|)^{3/2})\) samples when instantiated with the then-current interior-point routine; the later D8 routine yields the near-\(d\log^*|X|\) behavior summarized in D1.

**Key proof techniques:** Repeated private interior-point selection along coordinates, randomized margin sizes, deletion, and a privacy analysis that avoids the usual square-root composition loss.

**Limitations:** This is a special-class upper bound, not a lower bound, and it stays much closer to \(\operatorname{VC}(C)=\Theta(d)\) than to \(\log|C|\).

**Relation to research scope:** direct prior work; it excludes axis-aligned rectangles as the desired positive sequence even when their grid cardinality is made enormous.

[D10] Differentially Private Quasi-Concave Optimization: Bypassing the Lower Bound and Application to Geometric Problems (SODA 2026)

**Identifier:** arXiv:2504.19001

**Setting:** Approximate-DP optimization, center-point selection, and realizable PAC learning of halfspaces over a finite grid \(X^d\).

**Goal:** Bypass the generic quasi-concave-optimization barrier on natural objectives and improve the domain-size dependence for geometric learning.

**Main result:** It gives halfspace learning and center-point algorithms with sample complexity \(\widetilde O(d^{5.5}\log^*|X|)\); it also implies \(\widetilde O(\log^*|X|)\) learning for VC-one classes as an intermediate predecessor to D7.

**Key proof techniques:** Define approximable quasi-concave objectives, use sample-and-aggregate plus the D8 interior-point algorithm, and invoke VC uniform approximation for Tukey-depth and feasibility objectives.

**Limitations:** The upper bound is polynomial in dimension and only iterated-logarithmic in domain size, hence is negligible compared with \(\log|C|\) in the source's separation regime.

**Relation to research scope:** direct prior work; it excludes the known halfspace/center-point geometric route and demonstrates that generic optimization lower bounds may be bypassed by problem structure.

[D11] Private Center Points and Learning of Halfspaces (COLT 2019)

**Identifier:** arXiv:1902.10731

**Setting:** Approximate-DP realizable PAC learning of halfspaces over an arbitrary finite domain \(X\subset\mathbb R^d\), together with private center-point and convex-hull-point computation.

**Goal:** Extend the weak domain-size dependence known for one-dimensional thresholds to halfspaces in fixed dimension.

**Main result:** It gives an \((\varepsilon,\delta)\)-DP halfspace learner with sample complexity
\[
\operatorname{poly}\!\left(d,2^{\log^*|X|},\frac{1}{\alpha\varepsilon},\log\frac{1}{\beta\delta}\right).
\]
It also proves convex-hull-point lower bounds \(\Omega(d+\log^*|X|)\) for approximate DP and \(\Omega(d\log|X|)\) for pure DP.

**Key proof techniques:** Tukey depth, coordinatewise private quasi-concave optimization, private center-point selection, and a sample-and-aggregate reduction from halfspace learning to finding a point in the convex hull of consistent separators.

**Limitations:** This is a special-class upper bound; its convex-hull lower bound is not an unrestricted PAC lower bound, and the learner's domain dependence is far below \(\log|C|\) in the source's target regime.

**Relation to research scope:** direct prior work; it is the first cited high-dimensional halfspace route and the predecessor improved by D12 and, in domain dependence, D10.

[D12] Private Learning of Halfspaces: Simplifying the Construction and Reducing the Sample Complexity (arXiv 2020)

**Identifier:** arXiv:2004.07839

**Setting:** Approximate-DP realizable PAC learning of halfspaces on a finite grid \(X^d\), and approximate private solution of feasible linear-inequality systems.

**Goal:** Simplify D11's center-point construction and improve its polynomial dependence on dimension.

**Main result:** It gives an \((\varepsilon,\delta)\)-DP halfspace learner using
\[
d^{2.5}2^{O(\log^*|X|)}\frac{1}{\varepsilon\alpha}
\operatorname{polylog}\!\left(\frac{d}{\alpha\beta\varepsilon\delta}\right)
\]
samples, improving the preceding dimension dependence by a factor of about \(d^2\).

**Key proof techniques:** Reduction to private linear feasibility, a high-dimensional generalization of the RecConcave paradigm, convexification of coordinate objectives, and iterative coordinatewise optimization.

**Limitations:** This is again an upper bound for a special geometric class, not Item 3; D10 later replaces its \(2^{O(\log^*|X|)}\) domain factor by polylogarithmic factors times \(\log^*|X|\).

**Relation to research scope:** direct prior work; it reinforces that halfspaces remain much easier than \(\log|C|\), despite a large grid and small VC dimension.

## 2. foundation theory

The direct-theory sweep was nonzero. A lightweight component-level foundation pass was used because the exact lower-bound bridge remains thin and because pure-DP or proper-learning results are easy to misapply to the unrestricted approximate-DP target.

### Component Theory

#### Component: PAC, privacy, and online-complexity baselines

##### Other: Private PAC sample complexity

[F1] A Theory of the Learnable (STOC 1984)

**Identifier:** DOI:10.1145/800057.808710

**Setting:** Distribution-free realizable learning from labeled i.i.d. examples.

**Goal:** Formalize probably approximately correct learning and efficient learnability.

**Main result:** It establishes the PAC framework in which one learner must succeed for every target concept and example distribution with prescribed accuracy and confidence.

**Key proof techniques:** Random sampling, consistency, and distribution-free probabilistic guarantees.

**Limitations:** It contains no privacy constraint; the later VC theory supplies the sharp non-private sample-complexity characterization used as the baseline here.

**Relation to research scope:** component-level foundation; it fixes the realizable arbitrary-distribution quantifiers that a private lower bound must preserve.

[F2] Calibrating Noise to Sensitivity in Private Data Analysis (TCC 2006)

**Identifier:** DOI:10.1007/11681878_14

**Setting:** Randomized statistical mechanisms on neighboring databases.

**Goal:** Introduce differential privacy and generic sensitivity-calibrated mechanisms.

**Main result:** It formalizes the neighboring-dataset likelihood-ratio guarantee and develops noise mechanisms for low-sensitivity statistics.

**Key proof techniques:** Global sensitivity, Laplace noise, and composition-style privacy reasoning.

**Limitations:** It is not a learning sample-complexity result and does not distinguish concept-class combinatorics.

**Relation to research scope:** component-level foundation; it supplies the privacy model, while the source specifically requires the approximate \(\delta>0\) regime rather than only pure DP.

[F3] Learning Quickly When Irrelevant Attributes Abound: A New Linear-Threshold Algorithm (FOCS 1987)

**Identifier:** DOI:10.1109/SFCS.1987.37

**Setting:** Realizable online binary prediction under a mistake-bound criterion.

**Goal:** Analyze online learnability and mistake complexity.

**Main result:** It introduced the online mistake-bound framework associated with Littlestone dimension; finite Littlestone dimension characterizes realizable online learnability and equals the optimal worst-case mistake bound.

**Key proof techniques:** Adversarial online sequences, mistake trees, and dimension-decreasing prediction strategies.

**Limitations:** Online mistake complexity is not itself private PAC sample complexity; D4 supplies only a qualitative equivalence, with quantitatively lossy transformations.

**Relation to research scope:** component-level foundation; \(\operatorname{LD}(C)\) is both the learnability criterion and the parameter in the best general private bounds.

#### Component: Restricted lower bounds and model-separation mechanisms

##### Other: Private PAC sample complexity

[F4] Differentially Private Release and Learning of Threshold Functions (FOCS 2015; corrected arXiv revision 2024)

**Identifier:** arXiv:1504.07553

**Setting:** Approximate-DP interior points, threshold query release, distribution learning, and **proper** PAC learning of thresholds over a finite ordered domain.

**Goal:** Prove nonconstant domain-size dependence and relate several threshold problems.

**Main result:** The corrected version proves \(\Omega(\log^*|X|)\) sample complexity for the interior-point problem and for proper threshold learning, with constant-factor reductions among the listed tasks.

**Key proof techniques:** Recursive hard database distributions and an inductive lifting from a domain of size \(d\) with \(n\) rows to an exponentially larger domain with \(n+1\) rows.

**Limitations:** The PAC reduction is proper-only; using it alone for Item 3 would be invalid. D3 is needed for an unrestricted improper lower bound, and even D3 remains only iterated logarithmic.

**Relation to research scope:** component-level foundation; it is the cleanest lower-bound mechanism to generalize, but the proper-to-unrestricted bridge is a theorem-critical missing step.

[F5] Characterizing the Sample Complexity of Private Learners (ITCS 2013)

**Identifier:** DOI:10.1145/2422436.2422450

**Setting:** Pure-DP PAC learning, including proper and improper representation-based learners.

**Goal:** Replace class cardinality by a finer complexity measure for private learning.

**Main result:** Representation and probabilistic-representation dimensions characterize, up to the stated parameter factors, the sample complexity of pure-private learning and expose proper/improper separations.

**Key proof techniques:** Small hypothesis representations, probabilistic covers, and private selection over a representation.

**Limitations:** The characterization is for pure DP. Approximate DP can collapse its domain-size lower bounds, so it cannot resolve the source question without a new lifting theorem.

**Relation to research scope:** component-level foundation; useful for candidate lower-bound certificates, but pure-DP hardness is out of scope as a full result.

[F6] Sample Complexity Bounds on Differentially Private Learning via Communication Complexity (COLT 2014; SIAM Journal on Computing 2015)

**Identifier:** arXiv:1402.6278

**Setting:** Pure-DP PAC learning and the one-way public-coin communication complexity of an associated evaluation problem.

**Goal:** Characterize pure-private learning sample complexity through communication complexity.

**Main result:** It relates probabilistic representation dimension, hence pure-DP learning sample complexity, to one-way communication complexity and derives strong pure-DP lower bounds, including for thresholds.

**Key proof techniques:** Reductions between private representations and one-way protocols, boosting, and communication lower bounds.

**Limitations:** The communication characterization is not known to characterize approximate-DP PAC learning; importing its \(\Omega(\log|C|)\) consequences directly would violate the source scope.

**Relation to research scope:** component-level foundation; it suggests certificate-style lower-bound routes but also pinpoints the missing approximate-DP analogue.

[F7] Private Learning and Sanitization: Pure vs. Approximate Differential Privacy (APPROX/RANDOM 2013)

**Identifier:** DOI:10.1007/978-3-642-40328-6_26

**Setting:** Comparisons between pure and approximate DP for learning and sanitization, including point functions and threshold-related tasks.

**Goal:** Determine how permitting \(\delta>0\) changes learnability and sample complexity.

**Main result:** It exhibits large pure-versus-approximate separations; in particular, point functions admit approximate-private learning with no domain-cardinality dependence even though proper pure-private learning can require logarithmic dependence.

**Key proof techniques:** Choosing mechanisms, probabilistic representations, sanitization-to-learning reductions, and recursive quasi-concave optimization.

**Limitations:** Its separations show why pure-DP lower bounds are fragile; they do not furnish an unrestricted approximate-DP \(\Omega(\log|C|)\) class.

**Relation to research scope:** component-level foundation; it directly warns against the forbidden shortcut of treating pure-DP hardness as approximate-DP hardness.

[F8] Bounds on the Sample Complexity for Private Learning and Private Data Release (TCC 2010)

**Identifier:** DOI:10.1007/978-3-642-11799-2_26

**Setting:** Pure-DP learning and data release over finite discrete domains, with both proper and improper hypotheses allowed in the comparison.

**Goal:** Determine when privacy creates sample costs beyond VC dimension and separate proper from improper private learning.

**Main result:** For the point-function class \(\mathrm{POINT}_d\) on \(\{0,1\}^d\), every proper pure-private PAC learner needs \(\Omega(d)=\Omega(\log|\mathrm{POINT}_d|)\) samples at fixed parameters, whereas an efficient improper pure-private learner uses \(O(1)\) samples. The work also gives logarithmic domain-size lower bounds for private data release.

**Key proof techniques:** Minimal hypothesis representations, privacy-based packing across neighboring databases, and randomized high-weight improper hypotheses that avoid identifying the target point.

**Limitations:** The logarithmic learning lower bound is pure-DP and proper-only, and the same paper's constant-sample improper learner shows why it cannot establish Item 3 against unrestricted learners.

**Relation to research scope:** component-level foundation; it is a sharp restricted analogue of the desired separation and a direct warning that cardinality lower bounds can disappear under improper output.

#### Component: Order-property bridge from Littlestone dimension to thresholds

##### Other: Private PAC sample complexity

[F9] Classification Theory and the Number of Non-Isomorphic Models (2nd ed., 1990)

**Identifier:** https://openlibrary.org/isbn/9780444702609

**Setting:** Model-theoretic classification through stability, the order property, and rank notions; in the learning-theory translation, Shelah's \(2\)-rank corresponds to Littlestone dimension.

**Goal:** Relate bounded rank to exclusion of arbitrarily long ordered configurations.

**Main result:** The consequence used in D3 is the rank/order bridge: if \(\operatorname{LD}(H)\ge d\), then \(H\) contains an embedded threshold family of size \(\lfloor\log d\rfloor\), while \(d\) embedded thresholds imply \(\operatorname{LD}(H)\ge\lfloor\log d\rfloor\). This is the structural input that transfers threshold hardness to general Littlestone classes.

**Key proof techniques:** Model-theoretic stability, order-property configurations, ranks, and tree arguments.

**Limitations:** The monograph is not a DP or PAC-learning result. Its full text was not accessible in this run, so the quantitative ML formulation above was checked through D3, Theorem 3 and its combinatorial appendix, rather than attributed as a verbatim theorem of the monograph.

**Relation to research scope:** component-level foundation; it supplies the structural bridge behind the known \(\Omega(\log^*\operatorname{LD})\) lower bound, not a route by itself to \(\Omega(\log|C|)\).

## 3. empirical practice

No empirical-practice papers are included. The active question is an existential, distribution-free theorem about unrestricted sample complexity. Benchmark accuracy, implementation efficiency, and observed privacy-utility tradeoffs cannot certify an information-theoretic \(\Omega(\log|C|)\) lower bound, and no recurring empirical phenomenon in the direct source chains bears specifically on Items 1--3.

## 4. gap and open problem

### Other: Private PAC sample complexity

#### Exact finite-class separation

**Search path / outcome:** direct theory found; lightweight component foundation used

**Gap statement:** No verified source constructs a sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) satisfying finite size, \(|C_\kappa|\to\infty\), superpolynomial \(\log|C_\kappa|\) versus \(\operatorname{VC}(C_\kappa)\), and unrestricted approximate-DP realizable-PAC sample complexity \(\Omega(\log|C_\kappa|)\). No verified source proves that every such sequence is impossible either.

- Evidence pattern: D2 supplies the \(O(\log|C|)\) target upper bound; D3 supplies only \(\Omega(\operatorname{VC}+\log^*\operatorname{LD})\); D6 supplies \(\widetilde O(\operatorname{LD}^5)\); D7--D12 show that major low-VC or geometric families are much easier than \(\log|C|\).
- Supporting papers / absence pattern: D1 explicitly poses the question in 2026 after incorporating D2--D12; the direct and missed-paper audit found no later source claiming a resolution.
- Why it matters downstream: This is the central source target. A full branch must prove all three items or a universal nonexistence result; any restriction or weakened benchmark must be labeled partial, conditional, obstruction, or diagnostic.
- Status: supported

#### Missing unrestricted approximate-DP lower-bound bridge

**Search path / outcome:** direct theory found; component foundation used

**Gap statement:** Existing mechanisms do not bridge from a structural certificate to \(\Omega(\log|C|)\) against arbitrary improper approximate-DP learners. Pure-DP representation, communication, and proper-learning lower bounds (F5--F8) and proper threshold/interior-point reductions (F4) lose exactly the model strength that Item 3 requires; D3 removes properness but yields only \(\Omega(\log^*\operatorname{LD})\).

- Evidence pattern: Approximate DP defeats domain-cardinality lower bounds for point functions (F7), while F8's pure-private point-function lower bound itself collapses under improper output; F4 explicitly leaves improper learning open; D3's later improper argument changes the proof method but retains iterated-logarithmic scale.
- Supporting papers / absence pattern: F4--F8 and D3 form the complete restricted-to-unrestricted mechanism chain identified from the open-problem bibliography and citation expansion; none exports a logarithmic-in-cardinality unrestricted lower bound.
- Why it matters downstream: A viable lower-bound perspective must either create an approximate-DP-robust certificate/reduction or prove that one of these restricted mechanisms lifts without assuming properness, purity, efficiency, or agnostic hardness.
- Status: supported

#### Necessary structural regime for a positive sequence

**Search path / outcome:** direct theory found

**Gap statement:** D2 and D6 imply that any positive sequence must lie in the narrow regime
\[
\log|C_\kappa|=\widetilde O(\operatorname{LD}(C_\kappa)^5),
\]
because an \(\Omega(\log|C_\kappa|)\) lower bound must coexist with the universal \(\widetilde O(\operatorname{LD}^5)\) learner. Together with Item 2, this forces \(\operatorname{LD}(C_\kappa)\) itself to be superpolynomial in \(\operatorname{VC}(C_\kappa)\), up to polylogarithmic qualifications. D7 further rules out keeping VC dimension identically one.

- Evidence pattern: Universal upper bounds eliminate candidates with \(\log|C|\) asymptotically larger than every permitted polynomial in \(\operatorname{LD}\); special-class upper bounds eliminate thresholds, rectangles, and halfspaces even when their domains grow rapidly.
- Supporting papers / absence pattern: D2, D6, and D7--D12.
- Why it matters downstream: Candidate generation should target growing-VC classes with very large Littlestone dimension and no known low-complexity structural learner, while checking both generic upper bounds before attempting a lower bound. This is a central narrowing, not a solution.
- Status: supported

#### Precisely quantified intermediate separation

**Search path / outcome:** direct theory found; no theorem meeting the source's relaxed comparison was found

**Gap statement:** D1 authorizes intermediate progress when Items 1 and 2 hold and private complexity is provably closer to \(\log|C|\) than to \(\operatorname{VC}(C)\) on a log or log-log scale, but the phrase "closer" is qualitative. A downstream theorem must choose and prove a precise comparison. For example, when \(1< V_\kappa\leq m_\kappa\leq L_\kappa\), with \(V_\kappa=\operatorname{VC}(C_\kappa)\), \(m_\kappa=n_{\rm priv}(C_\kappa)\), and \(L_\kappa=\log|C_\kappa|\), log-scale closeness could be defined as
\[
|\log m_\kappa-\log L_\kappa|<|\log m_\kappa-\log V_\kappa|,
\]
equivalently \(m_\kappa^2>V_\kappa L_\kappa\); this is an illustrative formalization, not a result attributed to D1.

- Evidence pattern: The special families D7--D12 remain near the lower endpoint under ordinary log and log-log comparisons, while the general bounds D3/D6 leave a large middle regime unclassified.
- Supporting papers / absence pattern: D1 states the relaxation; D3, D6, and D7--D12 delimit it but do not attain it.
- Why it matters downstream: A rigorous intermediate branch can be material partial progress only if it proves Items 1 and 2 and states its distance metric, endpoint quantities, fixed parameters, and asymptotic quantifiers. Replacing \(\log|C|\) by \(\operatorname{LD}\) or \(\operatorname{poly}(\operatorname{LD})\) must remain explicitly partial.
- Status: supported

### Source-paper bibliography audit (20/20)

The official 2026 open-problem paper has 20 bibliography items. All 20 qualify either as direct theory or as component-level foundation for Open Question 2; therefore the checked-exclusion set is empty. D1 is the audited source paper itself and is not one of its own 20 bibliography items.

| No. | Official bibliography item | Survey mapping | Relevance decision |
|---:|---|---:|---|
| 1 | Alon et al. (2019), *Private PAC Learning Implies Finite Littlestone Dimension* | D3 | Direct: unrestricted approximate-DP lower bound. |
| 2 | Beimel, Kasiviswanathan, and Nissim (2010), *Bounds on the Sample Complexity for Private Learning and Private Data Release* | F8 | Foundation: pure-DP proper/improper separation. |
| 3 | Beimel, Nissim, and Stemmer (2013a), *Characterizing the Sample Complexity of Private Learners* | F5 | Foundation: pure-DP representation dimension. |
| 4 | Beimel, Nissim, and Stemmer (2013b), *Private Learning and Sanitization: Pure vs. Approximate Differential Privacy* | F7 | Foundation: pure/approximate separation. |
| 5 | Beimel, Moran, Nissim, and Stemmer (2019), *Private Center Points and Learning of Halfspaces* | D11 | Direct: approximate-DP halfspace upper bound. |
| 6 | Bun, Nissim, Stemmer, and Vadhan (2015), *Differentially Private Release and Learning of Threshold Functions* | F4 | Foundation: interior-point and proper-threshold mechanism. |
| 7 | Bun, Livni, and Moran (2020), *An Equivalence Between Private Classification and Online Prediction* | D4 | Direct: finite-Littlestone learnability characterization. |
| 8 | Cohen et al. (2023), *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization* | D8 | Direct: optimal threshold upper bound and optimization barrier. |
| 9 | Dwork, McSherry, Nissim, and Smith (2006), *Calibrating Noise to Sensitivity in Private Data Analysis* | F2 | Foundation: differential-privacy definition and mechanisms. |
| 10 | Feldman and Xiao (2014), *Sample Complexity Bounds on Differentially Private Learning via Communication Complexity* | F6 | Foundation: pure-DP communication characterization. |
| 11 | Ghazi et al. (2021), *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy* | D5 | Direct: first polynomial-in-Littlestone upper bound. |
| 12 | Kaplan, Mansour, Stemmer, and Tsfadia (2020), *Private Learning of Halfspaces: Simplifying the Construction and Reducing the Sample Complexity* | D12 | Direct: improved approximate-DP halfspace upper bound. |
| 13 | Kasiviswanathan et al. (2011), *What Can We Learn Privately?* | D2 | Direct: generic \(O(\log|C|)\) learner. |
| 14 | Littlestone (1987), *Learning Quickly When Irrelevant Attributes Abound: A New Linear-Threshold Algorithm* | F3 | Foundation: online mistake dimension. |
| 15 | Lyu (2025), *Private Learning of Littlestone Classes, Revisited* | D6 | Direct: \(\widetilde O(\operatorname{LD}^5)\) upper bound. |
| 16 | Nissim, Tsfadia, and Yan (2026), *Differentially Private Quasi-Concave Optimization: Bypassing the Lower Bound and Application to Geometric Problems* | D10 | Direct: geometric and halfspace upper bounds. |
| 17 | Sadigurschi and Stemmer (2021), *On the Sample Complexity of Privately Learning Axis-Aligned Rectangles* | D9 | Direct: rectangle upper bound. |
| 18 | Shelah (1990), *Classification Theory and the Number of Non-Isomorphic Models* | F9 | Foundation: order-property/rank bridge. |
| 19 | Valiant (1984), *A Theory of the Learnable* | F1 | Foundation: realizable PAC model. |
| 20 | Yan (2025), *An Optimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1* | D7 | Direct: VC-one upper bound and obstruction. |

### Coverage limitations

The official source bibliography was audited item by item: 20/20 entries are mapped above, all 20 were retained as direct or foundation theory, and none was excluded. Primary arXiv or proceedings versions were checked for D2--D7, D9--D12, and F4; F8 was checked through its extended journal version while retaining the DOI of the official TCC item; durable metadata was checked for the remaining entries. The ACM page for D8 was not reliably accessible during this run; its threshold upper bound and generic quasi-concave lower bound were cross-checked through D1 and D10 and against its indexed abstract. The full Shelah monograph (F9) was also not text-accessible, so its exact quantitative learning-theory translation was verified through D3, Theorem 3 and its appendix. Search coverage is therefore complete for the source paper's bibliography and strong for the theorem chain defining the open problem, but it is not a claim that every tangential differential-privacy paper has been enumerated.
