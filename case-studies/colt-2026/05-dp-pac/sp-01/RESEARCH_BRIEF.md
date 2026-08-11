# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Does Differential Privacy Make PAC Learning Much Harder?
- Subproblem ID: Open Question 1 (`subproblem_001`)
- Abstract URL: https://proceedings.mlr.press/v336/nissim26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/nissim26a/nissim26a.pdf

## Parent Context

Let \(C\) be a concept class and use standard realizable binary PAC learning: a target concept \(c\in C\) labels examples, the sample distribution is arbitrary, and the learner must output a hypothesis with the usual accuracy/confidence guarantee. A randomized algorithm \(A:(X\times\{0,1\})^n\to W\) is \((\varepsilon,\delta)\)-differentially private if, for every pair of neighboring datasets \(S,S'\) (differing in one example) and every event \(E\subseteq W\),
\[
\Pr[A(S)\in E]\le e^\varepsilon\Pr[A(S')\in E]+\delta.
\]
A private learner is a PAC learner satisfying this guarantee with respect to its training data; learners may be improper and computationally unbounded. The source uses the standard approximate-DP regime in which \(\varepsilon\) is a small constant and \(\delta\) is a small function of the dataset size, much smaller than \(1/|S|\). It suppresses dependence on privacy, accuracy, and confidence parameters and focuses on dependence on the VC dimension \(\operatorname{VC}(C)\), the Littlestone dimension \(\operatorname{LD}(C)\), and \(\log |C|\).

Non-private PAC sample complexity is \(\Theta(\operatorname{VC}(C))\). A class \(C\) is DP PAC learnable if and only if \(\operatorname{LD}(C)<\infty\), and every finite \(C\) has a generic private learner using \(O(\log |C|)\) samples. The current general bounds for private learning range from
\[
\Omega\!\left(\operatorname{VC}(C)+\log^*(\operatorname{LD}(C))\right)
\quad\text{to}\quad
\min\!\left\{O(\log |C|),\operatorname{poly}(\operatorname{LD}(C))\right\},
\]
with the stated Littlestone-dimension upper bound sharpened in the source to \(\widetilde O(\operatorname{LD}^5(C))\). The unrestricted approximate-DP setting remains open; a characterization for pure DP, where \(\delta=0\), does not resolve it. As a known special case, Yan (2025) essentially characterizes the private sample complexity of classes with \(\operatorname{VC}(C)=1\) by \(\log^*(\operatorname{LD}(C))\). The paper also notes that it is not known whether any class requires \(\Omega(\operatorname{VC}(C)\cdot 2^{\log^*(\operatorname{LD}(C))})\) samples, which would give separation evidence but would still be close to non-private complexity relative to the full range of current bounds.

## Source Proof-Sketch Context

The paper's Appendix A sketches the lower-bound mechanism behind the \(\log^*(\operatorname{LD}(C))\) term. A class of Littlestone dimension \(d\) contains a logarithmic-size embedded family of one-dimensional thresholds; private threshold learning is related to the Private Interior Point problem. An inductive lifting argument turns hardness for \(n\) inputs on a grid of size \(d\) into hardness for \(n+1\) inputs on an exponentially larger grid, yielding iterated-logarithmic sample dependence. The simple interior-point explanation is for proper threshold learners; Theorem 2's lower bound is unrestricted via the later Alon et al. result.

Appendix B sketches the upper-bound mechanism. An online learner making at most \(d=\operatorname{LD}(C)\) mistakes is transformed into a globally stable learner. Recursive pairing of independently generated hypotheses either finds a stable output or constructs realizable sequences forcing one additional mistake; once \(d\) mistakes are forced, the target concept is identified. Repetition and private selection then privatize the stable output. The appendix's original construction gives a very large bound; later work sharpens the general upper bound to \(\widetilde O(d^5)\).

## Exact Subproblem

**Open Question 1.** Characterize the sample complexity of private learning: identify a combinatorial measure of a class that determines the sample complexity of privately learning it, analogously to the characterization of non-private learning by VC dimension.

The source leaves the phrase "combinatorial measure" intentionally open-ended. Its concrete formulations ask whether private PAC learning can be tightly characterized in terms of \(\operatorname{VC}(C)\) and \(\operatorname{LD}(C)\). Source-stated intermediate goals include reducing the gap between the general bounds above, for example by proving a generic upper bound
\[
\operatorname{poly}\!\left(\operatorname{VC}(C),\log^*(\operatorname{LD}(C))\right).
\]
The source states that even a generic upper bound \(\operatorname{poly}(\operatorname{VC}(C),\log(\operatorname{LD}(C)))\) would constitute major progress.

## Evaluation Target

Make rigorous progress toward a general characterization of approximate-DP PAC sample complexity. A full resolution requires a genuine combinatorial measure (or equivalent characterization) with uniform, asymptotically matching upper and lower bounds for all classes in scope. The paper's source-stated major-but-partial directions are a generic upper bound \(\operatorname{poly}(\operatorname{VC}(C),\log^*(\operatorname{LD}(C)))\), or even \(\operatorname{poly}(\operatorname{VC}(C),\log(\operatorname{LD}(C)))\), the latter explicitly called major progress. Other nontrivial universal bounds, counterexamples to candidate measures, conditional theorems, and precise obstructions are partial progress when their scope is explicit.

## Required Scope

- Model: PAC learning under approximate \((\varepsilon,\delta)\)-differential privacy.
- Data assumptions: Standard realizable binary PAC model, arbitrary example distributions, with fixed accuracy/confidence constants unless a claimed theorem states otherwise.
- Algorithm or protocol: Unrestricted private PAC learners, including improper and computationally unbounded learners.
- Regime: Concept classes with \(\operatorname{LD}(C)<\infty\), with \(\varepsilon\) a small constant and \(\delta\) much smaller than the inverse dataset size; retain the source's convention of focusing on class-complexity dependence.
- Desired theorem type: A general combinatorial characterization or a theorem that nontrivially tightens the generic upper/lower-bound gap; restricted or conditional results must be labeled as such.

## Out Of Scope

- Open Question 2's construction of a finite-class sequence with an \(\Omega(\log |C_\kappa|)\) private sample lower bound is a sibling target and must not be presented as the primary result here.
- A characterization only for pure DP (\(\delta=0\)) is not a full resolution of this approximate-DP question.
- Bounds only for one specific class family, including thresholds, axis-aligned rectangles, or halfspaces, are not a full general characterization.
- The source's \(\operatorname{VC}(C)=1\) result, which essentially characterizes complexity by \(\log^*(\operatorname{LD}(C))\), is a special case and not a general characterization.
- A characterization of non-private or online learning without a theorem for private PAC learning does not answer this subproblem.

## Constraints And Forbidden Shortcuts

- Do not assume the main conclusion or posit a candidate measure without proving its claimed relation to private sample complexity.
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.
- Preserve explicit dependence on \(\operatorname{VC}(C)\), \(\operatorname{LD}(C)\), \(\log^*(\operatorname{LD}(C))\), and \(\log |C|\) whenever they occur; do not conflate \(\log\) with \(\log^*\).
- Do not silently replace approximate DP by pure DP, proper learning, efficient learning, or a restricted concept family.
- The source suppresses privacy and learning parameters only to compare class-complexity measures. State any additional parameter restrictions needed by a claimed theorem.
- Do not cite a known bound as new progress without proving a strict strengthening or a genuinely new characterization consequence.

## Success Criteria

- **Full progress:** Prove a correct general characterization for approximate-DP PAC sample complexity: define the measure and prove uniform upper and lower bounds matching in the claimed asymptotic dependence (for example, \(\Theta(M(C))\)) for every class in scope, with all parameter assumptions discharged.
- **Major but partial progress:** Prove a generic upper bound \(\operatorname{poly}(\operatorname{VC}(C),\log^*(\operatorname{LD}(C)))\) or even \(\operatorname{poly}(\operatorname{VC}(C),\log(\operatorname{LD}(C)))\), without a full matching characterization.
- **Partial progress:** Prove another nontrivial universal bound, rigorously rule out a natural candidate characterization, establish a special-case/conditional theorem, or give separation evidence such as a class requiring \(\Omega(\operatorname{VC}(C)\cdot 2^{\log^*(\operatorname{LD}(C))})\) samples, while clearly delimiting its scope.
- **Formal obstruction:** Identify a precise false lemma, incompatible requirement, counterexample family, or barrier theorem that rules out a clearly stated approach and prove that obstruction.
- **Well-diagnosed failure:** Isolate the earliest unresolved claim, list its exact assumptions and quantifiers, and explain why the available tools do not prove it or why a candidate construction fails.
- **Invalid acceptance:** Do not accept a result that merely solves the sibling question, handles pure DP or a single class family as though it were general, assumes the desired characterization, drops requested parameter dependence, or relies on an unproved central claim.
