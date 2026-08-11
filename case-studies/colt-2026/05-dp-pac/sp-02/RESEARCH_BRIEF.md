# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Does Differential Privacy Make PAC Learning Much Harder?
- Subproblem ID: Open Question 2 (`subproblem_002`)
- Abstract URL: https://proceedings.mlr.press/v336/nissim26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/nissim26a/nissim26a.pdf

## Parent Context

Use standard realizable binary PAC learning: a target concept \(c\in C\) labels examples, the sample distribution is arbitrary, and the learner must output a hypothesis with the usual accuracy/confidence guarantee. A randomized algorithm \(A:(X\times\{0,1\})^n\to W\) is \((\varepsilon,\delta)\)-differentially private if, for every pair of neighboring datasets \(S,S'\) (differing in one example) and every event \(E\subseteq W\),
\[
\Pr[A(S)\in E]\le e^\varepsilon\Pr[A(S')\in E]+\delta.
\]
A private learner is a PAC learner satisfying this guarantee with respect to its training data; learners may be improper and computationally unbounded. For a finite concept class \(C\), non-private PAC learning has sample complexity \(\Theta(\operatorname{VC}(C))\), while a generic private PAC learner uses \(O(\log |C|)\) samples. The source considers approximate DP in the standard regime where \(\varepsilon\) is a small constant and \(\delta\) is a small function of the dataset size, much smaller than \(1/|S|\), and suppresses dependence on privacy, accuracy, and confidence parameters to focus on class-complexity dependence.

The Littlestone dimension \(\operatorname{LD}(C)\) characterizes whether private learning is possible: \(C\) is DP PAC learnable if and only if \(\operatorname{LD}(C)<\infty\). Known general bounds place private sample complexity between \(\Omega(\operatorname{VC}(C)+\log^*(\operatorname{LD}(C)))\) and \(\min\{O(\log |C|),\operatorname{poly}(\operatorname{LD}(C))\}\). Despite the potentially large generic gap, no known class forces private sample complexity far from the lower bound and close to \(\log |C|\).

For eventually nonnegative functions \(f\) and \(g\) of \(\kappa\), the source says that \(f(\kappa)\) is **superpolynomial** in \(g(\kappa)\) if, for every \(p\in\mathbb N\), there is an integer \(\kappa_0\) such that for all \(\kappa\geq\kappa_0\),
\[
f(\kappa)>(g(\kappa))^p.
\]

## Source Proof-Sketch Context

The paper's Appendix A sketches the lower-bound mechanism behind the \(\log^*(\operatorname{LD}(C))\) term. A class of Littlestone dimension \(d\) contains a logarithmic-size embedded family of one-dimensional thresholds; private threshold learning is related to the Private Interior Point problem. An inductive lifting argument turns hardness for \(n\) inputs on a grid of size \(d\) into hardness for \(n+1\) inputs on an exponentially larger grid, yielding iterated-logarithmic sample dependence. The simple interior-point explanation is for proper threshold learners; Theorem 2's lower bound is unrestricted via the later Alon et al. result. This existing mechanism does not provide the \(\Omega(\log |C_\kappa|)\) lower bound requested here.

Appendix B sketches the upper-bound mechanism. An online learner making at most \(d=\operatorname{LD}(C)\) mistakes is transformed into a globally stable learner. Recursive pairing of independently generated hypotheses either finds a stable output or constructs realizable sequences forcing one additional mistake; repetition and private selection then privatize the stable output. The appendix's original construction gives a very large bound, while later work sharpens the general upper bound to \(\widetilde O(d^5)\). Thus every proposed sequence must be consistent with both the generic \(O(\log |C_\kappa|)\) learner and the polynomial-in-\(\operatorname{LD}(C_\kappa)\) upper bound.

## Exact Subproblem

**Open Question 2.** Does there exist a sequence of finite-size classes
\[
C=\{C_\kappa\}_{\kappa\in\mathbb N}
\]
such that:

1. \(\displaystyle\lim_{\kappa\to\infty}|C_\kappa|=\infty\);
2. \(\log |C_\kappa|\) is superpolynomial in \(\operatorname{VC}(C_\kappa)\); and
3. the number of samples required to learn \(C_\kappa\) under differential privacy is \(\Omega(\log |C_\kappa|)\)?

## Evaluation Target

Resolve the existential question either by proving, constructively or nonconstructively, the existence of such a class sequence and all three conditions, including the approximate-DP sample lower bound, or by proving that no sequence of finite classes can satisfy all three conditions in the stated setting. The source's intermediate relaxation keeps Items 1 and 2 but asks for private sample complexity closer to \(\log |C_\kappa|\) than to \(\operatorname{VC}(C_\kappa)\) on a logarithmic scale, or even on a log-log scale. It also permits analogous intermediate comparisons using \(\operatorname{LD}(C_\kappa)\) or \(\operatorname{poly}(\operatorname{LD}(C_\kappa))\) as the upper reference. Because the paper states "closer" qualitatively, every claimed relaxed result must define and prove a precise asymptotic comparison. Conditional constructions, restricted lower bounds, counterexamples to proposed constructions, and formal obstructions are partial progress when their limitations are explicit.

## Required Scope

- Model: PAC learning under approximate \((\varepsilon,\delta)\)-differential privacy.
- Data assumptions: Standard realizable binary PAC model, arbitrary example distributions, with fixed accuracy/confidence constants unless a claimed theorem states otherwise.
- Algorithm or protocol: For an affirmative resolution, the Item 3 lower bound must apply to private PAC learning in the source's unrestricted setting, not silently only to proper or computationally efficient learners.
- Regime: A sequence indexed by every \(\kappa\in\mathbb N\) in which each \(C_\kappa\) is finite, \(|C_\kappa|\to\infty\), and the source's standard privacy-parameter convention applies.
- Desired theorem type: An affirmative existence proof, constructive or nonconstructive, with proofs of Items 1--3, or a universal nonexistence theorem ruling out every sequence satisfying Items 1--3; any source-stated relaxed separation is partial rather than full progress.

## Out Of Scope

- Open Question 1's general combinatorial characterization of private sample complexity is a sibling target and must not become the primary result here.
- A sequence that fails either size divergence or the superpolynomial separation in Item 2 cannot be a full answer.
- For an affirmative resolution, a lower bound only for pure DP, proper learners, efficient learners, or another restricted model is not a full answer unless it is lifted to the source's unrestricted approximate-DP setting.
- Thresholds, axis-aligned rectangles, and halfspaces cannot supply the requested positive answer through their cited known bounds: the source explains that these bounds are negligible relative to \(\log |C|\) and much closer to \(\operatorname{VC}(C)\).
- A logarithmic- or log-log-scale separation is only the source-stated intermediate direction, not a proof of Item 3.

## Constraints And Forbidden Shortcuts

- Do not assume either resolution of the existential question. For an affirmative result, do not assume the \(\Omega(\log |C_\kappa|)\) private sample lower bound; for a negative result, quantify over all finite-class sequences rather than only a proposed construction family.
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.
- Preserve the quantifiers in the definition of superpolynomial growth: the claim must hold for every \(p\in\mathbb N\), eventually for all \(\kappa\).
- Preserve explicit dependence on \(|C_\kappa|\), \(\operatorname{VC}(C_\kappa)\), and any \(\operatorname{LD}(C_\kappa)\) quantity used. Do not replace \(\log |C_\kappa|\) by a different benchmark in a claimed full solution.
- Every \(C_\kappa\) must be finite; an infinite class or a sequence with only an unbounded domain is not enough.
- For an affirmative result, prove the lower bound for the source's approximate-DP realizable-PAC regime. State any privacy, accuracy, confidence, or distributional constants needed to make the asymptotic claim precise; agnostic-only hardness is not a full answer.
- For an affirmative resolution, do not infer an unrestricted learner lower bound solely from a proper-learner or computational lower bound.

## Success Criteria

- **Full progress (affirmative):** Prove, constructively or nonconstructively, the existence of a sequence \(C=\{C_\kappa\}_{\kappa\in\mathbb N}\) and rigorously establish finiteness, Item 1, the quantified superpolynomial relation in Item 2, and the \(\Omega(\log |C_\kappa|)\) unrestricted approximate-DP PAC sample lower bound in Item 3.
- **Full progress (negative):** Prove universally that no sequence of finite classes in the source's unrestricted approximate-DP PAC regime can satisfy Items 1--3 simultaneously. The impossibility proof must quantify over all admissible sequences and may not only rule out a specified construction family.
- **Source-stated intermediate progress:** Prove Items 1 and 2 together with a precisely defined lower bound placing private sample complexity closer to \(\log |C_\kappa|\) than to \(\operatorname{VC}(C_\kappa)\) on a logarithmic scale, or even on a log-log scale; an analogous precise comparison may use \(\operatorname{LD}(C_\kappa)\) or \(\operatorname{poly}(\operatorname{LD}(C_\kappa))\) as the upper reference.
- **Other partial progress:** Establish a substantial conditional or restricted lower bound whose missing lift is stated exactly, or rigorously eliminate a proposed construction or route.
- **Formal obstruction:** Prove that a clearly specified construction family cannot satisfy one of Items 1--3, or derive a precise incompatibility that eliminates a broad proposed route.
- **Well-diagnosed failure:** Identify the first unproved condition or reduction, preserve its quantifiers, and explain exactly why the proposed sequence or lower-bound argument fails.
- **Invalid acceptance:** Do not accept an affirmative construction missing any of Items 1--3 as full progress, a restricted-family impossibility argument as universal nonexistence, a pure-DP/proper/efficient-only lower bound as unrestricted, a sequence of infinite classes, a hidden assumption of the lower bound, a dropped parameter dependence, or a solution whose primary target is Open Question 1.
