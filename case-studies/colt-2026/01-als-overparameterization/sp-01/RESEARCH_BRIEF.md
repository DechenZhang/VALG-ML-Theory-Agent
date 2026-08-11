# RESEARCH_BRIEF.md

## Source

- Parent title: Open Problem: How much overparametrization is needed for ALS in tensor decomposition?
- Subproblem ID: subproblem_001 — Open Problem 2 (Subquadratic overparameterization for iterative tensor decomposition)
- Abstract URL: https://proceedings.mlr.press/v336/arvanitakis26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/arvanitakis26a/arvanitakis26a.pdf

## Parent Context

Let

\[
T=\sum_{j=1}^{r} a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n},
\]

where \(A=[a_1\ \cdots\ a_r]\), \(B=[b_1\ \cdots\ b_r]\), and \(C=[c_1\ \cdots\ c_r]\), with \(r\ll n\). An iterative method is run from random initialization with algorithmic rank \(k\) on the least-squares objective

\[
\min_{x_i,y_i,z_i\in\mathbb R^n,\ i\in[k]}
\left\|T-\sum_{i=1}^{k}x_i\otimes y_i\otimes z_i\right\|_F^2.
\]

In the smoothed-analysis model, let \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) be base factor matrices. The source's prose describes these bases as arbitrary well-conditioned factors, while its formal “Smoothed Analysis Setting” says only that they are arbitrary \(n\times r\) matrices and does not restate a conditioning bound; this brief preserves that source-level ambiguity. Independently for \(i\in[r]\),

\[
a_i-\bar a_i\sim\mathcal N\!\left(0,\frac{\rho^2}{n}I\right),
\]

and, mutually independently across \(i\) and the three modes, \(b_i-\bar b_i\) and \(c_i-\bar c_i\) are identically distributed Gaussian perturbations with the same covariance. Equivalently, all perturbations \(\{a_i-\bar a_i,b_i-\bar b_i,c_i-\bar c_i\}_{i\in[r]}\) are i.i.d. \(\mathcal N(0,\rho^2/n\,I)\). Here \(\rho=1/\operatorname{poly}(r)\), so the perturbations have average length \(1/\operatorname{poly}(r)\).

The cited state of the art gives a global-convergence guarantee for a parallel ALS variant at \(k=O(r^2)\). The open problem asks whether an iterative method can cross this quadratic threshold. The source's high-probability requirement is over the smoothed instance, which is drawn once. For a fixed input, the source regards constant or even inverse-polynomial success probability over random initialization as sufficient if independent restarts amplify it while preserving polynomial runtime.

## Exact Subproblem

**Open Problem 2 (Subquadratic overparameterization for iterative tensor decomposition).** Given a smoothed tensor \(T\in\mathbb R^{n\times n\times n}\) from the model stated above with \(\rho=1/\operatorname{poly}(r)\), does overparametrization \(r<k=o(r^2)\) suffice for ALS, gradient descent, or another iterative algorithm to find, with high probability over the randomness of the instance, a rank-\(k\) decomposition in time

\[
\operatorname{poly}(n,r,\log(1/\epsilon))
\]

satisfying

\[
\left\|T-\sum_{i=1}^{k}x_i\otimes y_i\otimes z_i\right\|_F
\le \epsilon\lVert T\rVert_F?
\]

## Evaluation Target

Ask ml-theory-research-agent to establish an iterative-method convergence theorem meeting the subquadratic rank, runtime, approximation, and probability requirements. Acceptable progress includes a full theorem, a nontrivial source-aligned special case, a conditional theorem with explicit and independently checkable extra assumptions, or a precise formal obstruction to a proposed subquadratic iterative analysis. A systematic polynomial lower bound whose primary target is Open Problem 3 belongs to the sibling run.

## Bound-Optimization Objective

Seek the smallest rigorously justified sufficient algorithmic rank \(U(r)\) within the source's smoothed setting. When possible, express the result as

\[
U(r)=O\!\left(r^{1+\beta}\operatorname{polylog} r\right).
\]

A full-resolution result in the exact smoothed setting with \(\beta<1\) resolves Open Problem 2. Rank results first by resolution status and fidelity to the required source scope. Among results with the same status and scope, prefer smaller \(\beta\), then smaller logarithmic factors, weaker additional assumptions, and broader coverage of ALS, gradient descent, or other natural iterative methods. If the rate is not naturally a power law, state \(U(r)\) directly and explain precisely why it is \(o(r^2)\).

Report the strongest proved rate explicitly. Do not call the rate optimal or tight unless a matching lower bound is also established for the same algorithmic scope, instance model, and probability protocol.

## Required Bound Certificate

Every claimed theorem must report:

- the achieved sufficient-rank bound \(U(r)\), including logarithmic factors, and the corresponding exponent \(\beta\) when applicable;
- the exact iterative algorithm or rigorously defined algorithmic class covered;
- whether the theorem treats the full smoothed model or only a source-mentioned special case;
- the base-matrix class, conditioning interpretation, and quantifier used for the smoothed model;
- the smoothed-instance, initialization, and restart probability quantifiers;
- every additional assumption beyond the source setting; and
- whether the result is a full resolution, partial result, conditional result, or formal obstruction for this subproblem.

## Required Scope

- Model: Third-order CP tensor \(T=\sum_{j=1}^{r}a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}\), optimized through the rank-\(k\) least-squares objective above.
- Data assumptions: The stated smoothed-analysis model with \(\rho=1/\operatorname{poly}(r)\) and \(r\ll n\), including the source's unresolved distinction between arbitrary and arbitrary well-conditioned base factors. A theorem must state which source-consistent base class and quantifier it covers. A theorem only for Gaussian or random-unit-vector factors is a source-mentioned special case and must be labeled partial rather than a full resolution of the smoothed target.
- Algorithm or protocol: ALS, gradient descent, or another precisely specified iterative method, run from random initialization. The source focus excludes replacing the iterative method by a sophisticated algebraic recovery algorithm.
- Regime: \(r<k=o(r^2)\), runtime \(\operatorname{poly}(n,r,\log(1/\epsilon))\), and high probability over the smoothed instance; any restart argument must include its initialization probability and total runtime.
- Desired theorem type: A global-convergence or end-to-end approximation upper bound yielding a rank-\(k\) output with relative Frobenius error at most \(\epsilon\).

## Out Of Scope

- Open Problem 3's polynomial lower bound as the primary theorem target.
- Merely re-proving the known \(k=O(r^2)\) ALS guarantee without a strictly subquadratic rank bound.
- Solving tensor decomposition with simultaneous diagonalization or another non-iterative algebraic recovery method.
- Treating the overcomplete regime \(r\gg n\), random tensors, or well-conditioned-distribution variants as a full resolution unless the exact smoothed target is also discharged; these may be clearly labeled special-case progress.

## Constraints And Forbidden Shortcuts

- Do not assume the main convergence or approximation conclusion.
- Do not hide generated alignment events, feature-span properties, invariants, recurrences, stability, boundedness, or basin-membership facts as primitive assumptions unless the theorem is explicitly conditional and scored as such.
- Preserve explicit dependence on \(n,r,k,\rho,\epsilon\), runtime, the base-matrix class and quantifier, smoothed-instance probability, and random-initialization probability.
- Do not silently weaken \(k=o(r^2)\) to \(k=O(r^2)\), omit the \(\operatorname{poly}(n,r,\log(1/\epsilon))\) runtime, or replace relative Frobenius error by a different objective.
- If success for a fixed input is only constant or inverse polynomial over random initialization, prove the restart amplification and retain overall polynomial runtime.
- Do not claim full progress after narrowing the source's smoothed model to random factors or another easier distribution without explicitly labeling the remaining gap.

## Success Criteria

- Full progress: an accepted theorem for a specified iterative method in the stated smoothed model, with \(r<k=o(r^2)\), the requested polynomial runtime, the requested relative Frobenius error, and the source-faithful probability guarantees.
- Partial progress: an accepted strictly subquadratic theorem for a nontrivial source-mentioned special case, or a conditional theorem with explicit additional assumptions, together with a precise statement of what remains to reach the full smoothed target.
- Formal obstruction: a rigorous counterexample to a proposed upper-bound formulation or a precise proof-level diagnosis identifying an unavoidable missing property, without presenting the sibling lower-bound target as solved.
- Invalid acceptance: a result based on a non-iterative algebraic method, \(k=\Theta(r^2)\) with no subquadratic improvement, assumed convergence/invariants, silent distributional narrowing, or missing rank, runtime, error, or probability dependence.
- If no result passes the proof gates, the run should return a precise proof-failure diagnosis localized to this subproblem rather than an unsupported acceptance claim.
