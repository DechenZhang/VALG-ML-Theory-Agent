# RESEARCH_BRIEF.md

## Source

- Parent title: Open Problem: How much overparametrization is needed for ALS in tensor decomposition?
- Subproblem ID: subproblem_002 — Open Problem 3 (Polynomial lower bound)
- Abstract URL: https://proceedings.mlr.press/v336/arvanitakis26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/arvanitakis26a/arvanitakis26a.pdf

## Parent Context

Let

\[
T=\sum_{j=1}^{r} a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n},
\]

where \(A=[a_1\ \cdots\ a_r]\), \(B=[b_1\ \cdots\ b_r]\), and \(C=[c_1\ \cdots\ c_r]\), with \(r\ll n\). With algorithmic rank \(k\), ALS, gradient descent, or another iterative method is run from random initialization on

\[
\min_{x_i,y_i,z_i\in\mathbb R^n,\ i\in[k]}
\left\|T-\sum_{i=1}^{k}x_i\otimes y_i\otimes z_i\right\|_F^2.
\]

In the smoothed-analysis model, let \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) be base factor matrices. The source's prose describes these bases as arbitrary well-conditioned factors, while its formal “Smoothed Analysis Setting” says only that they are arbitrary \(n\times r\) matrices and does not restate a conditioning bound; this brief preserves that source-level ambiguity. Independently for \(i\in[r]\),

\[
a_i-\bar a_i\sim\mathcal N\!\left(0,\frac{\rho^2}{n}I\right),
\]

and, mutually independently across \(i\) and the three modes, \(b_i-\bar b_i\) and \(c_i-\bar c_i\) are identically distributed Gaussian perturbations with the same covariance. Equivalently, all perturbations \(\{a_i-\bar a_i,b_i-\bar b_i,c_i-\bar c_i\}_{i\in[r]}\) are i.i.d. \(\mathcal N(0,\rho^2/n\,I)\), with \(\rho\approx1/\operatorname{poly}(r)\).

The source reports an \(O(r^2)\) ALS upper bound and experiments suggesting that superlinear overparametrization is necessary. It seeks a distributional optimization lower bound, not merely worst-case tensor-decomposition hardness. It suspects the obstruction may hold for random tensors and possibly up to \(k=r^{2-c}\); an explicit well-conditioned tensor requiring \(k=\Theta(r^2)\) is source-mentioned as interesting, but a random or smoothed lower bound is identified as more compelling.

## Exact Subproblem

**Open Problem 3 (Polynomial lower bound).** Can one prove that there exists a universal constant \(c>0\) such that ALS and gradient descent (and other iterative methods) require overparametrization \(k\ge r^{1+c}\)? More precisely, for a smoothed instance from the model stated above and overparametrized rank \(r<k\le r^{1+c}\), does the algorithm converge to a solution of positive objective value with constant probability?

The paper does not specify whether this constant probability is over the smoothed instance, random initialization, or their joint randomness; this brief preserves that ambiguity and requires the chosen probability space to be stated.

The paper also does not specify whether “ALS and gradient descent (and other iterative methods)” requires coverage of both named methods or permits an algorithm-specific result; this brief uses the conjunctive reading for literal full progress and treats one-method results as algorithm-specific/source-aligned progress.

## Evaluation Target

Ask ml-theory-research-agent to prove a source-faithful superlinear overparametrization lower bound for random-initialized iterative tensor-decomposition dynamics. Acceptable progress includes a full smoothed-instance lower bound, a lower bound for a precisely specified major iterative method, a source-aligned random-tensor or explicit well-conditioned special case, a conditional lower bound with transparent assumptions, a counterexample to a claimed convergence regime, or a precise formal obstruction. An algorithmic subquadratic upper bound whose primary target is Open Problem 2 belongs to the sibling run.

## Bound-Optimization Objective

Seek the largest rigorously justified failure threshold \(L(r)\) within the source's smoothed setting. When possible, express the result as

\[
L(r)=\Omega\!\left(\frac{r^{1+\alpha}}{\operatorname{polylog} r}\right).
\]

A source-faithful result with any universal \(\alpha>0\) resolves the algorithm-specific version for exactly the algorithms it covers. It is a full resolution of Open Problem 3 only if it meets the Full-progress criterion below. Rank results first by resolution status and fidelity to the required source scope, including the smoothed model and required algorithmic coverage. Among results with the same status and scope, prefer larger \(\alpha\), then stronger probability guarantees, weaker additional assumptions, and smaller logarithmic losses. If the rate is not naturally a power law, state \(L(r)\) directly and explain precisely how it gives a superlinear lower bound.

Report the strongest proved rate explicitly. Do not claim necessity, optimality, or tightness beyond the algorithms, initialization protocol, instance distribution, and probability quantifiers actually covered.

## Required Bound Certificate

Every claimed theorem must report:

- the achieved failure threshold \(L(r)\), including logarithmic factors, and the corresponding exponent \(\alpha\) when applicable;
- the exact iterative algorithm or rigorously defined algorithmic class covered;
- whether the theorem treats the full smoothed model or only a source-mentioned special case;
- the base-matrix class, conditioning interpretation, and quantifier used for the smoothed model;
- the instance and initialization probability space (and any restart protocol) under which failure occurs;
- every additional assumption beyond the source setting; and
- whether the result is a full resolution, partial result, conditional result, or formal obstruction for this subproblem.

## Required Scope

- Model: Third-order CP tensor \(T=\sum_{j=1}^{r}a_j\otimes b_j\otimes c_j\in\mathbb R^{n\times n\times n}\) and the rank-\(k\) least-squares objective stated above.
- Data assumptions: The displayed Open Problem 3 statement uses the stated smoothed-analysis model. The subsequent discussion separately emphasizes random rank-\(r\) tensors as a compelling alternative, without formally saying whether a random-only theorem is a literal full resolution of the displayed smoothed problem. Report which model is covered; a lower bound only for a pathological worst-case tensor is not a full resolution.
- Algorithm or protocol: At minimum, a precisely specified ALS or gradient-descent update rule with random initialization. Any claim covering “other iterative methods” must define that algorithmic class rather than extrapolate from one update rule.
- Regime: A universal constant \(c>0\), overparametrized rank \(r<k\le r^{1+c}\), and constant failure probability under an explicitly stated interpretation of the source's instance and initialization randomness. Stronger source-mentioned regimes such as \(r<k\le r^{2-c}\) are welcome but not required.
- Desired theorem type: A distributional optimization lower bound proving convergence to positive value of the least-squares objective, hence failure to reach a global optimum, with the probability and rank quantifiers explicit.

## Out Of Scope

- Open Problem 2's subquadratic convergence upper bound as the primary theorem target.
- Generic NP-hardness or worst-case tensor-rank hardness that does not analyze the specified random-initialized iterative dynamics.
- Mere existence of a bad stationary point without proving that the algorithm reaches a positive-objective solution with the required probability.
- A finite-time slowdown result that does not establish the source's claimed convergence to positive objective value.
- Treating a single pathological tensor as a full resolution; such a well-conditioned construction may count only as source-aligned partial progress unless extended to the random or smoothed setting.

## Constraints And Forbidden Shortcuts

- Do not assume the failure event, bad-basin membership, positive limiting objective, or trapping invariant that constitutes the main conclusion.
- Do not hide generated events, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the result is explicitly conditional.
- Preserve the existence of an absolute constant \(c>0\), the rank condition \(k\le r^{1+c}\), constant probability, the stated base-matrix interpretation, the smoothed/random instance distribution, and random initialization.
- Specify the ALS or gradient-descent variant, update schedule, initialization law, and any tie-breaking or regularization needed for the lower-bound statement.
- Do not replace convergence to positive objective value by the weaker facts that bad critical points exist, early iterates have positive loss, or convergence is merely slow.
- Do not infer a lower bound for an undefined class of “other iterative methods” from a proof for one algorithm; state the exact covered class and residual gap.
- Do not claim the full distributional result from a worst-case pathological tensor or from an event whose probability vanishes with \(r\).

## Success Criteria

- Full progress: an accepted theorem giving a universal \(c>0\) and proving, in the source's displayed smoothed setting, either for both a precisely specified ALS variant and a precisely specified gradient-descent variant, or for a rigorously defined algorithmic class explicitly containing both, that every \(r<k\le r^{1+c}\) leads with constant probability under an explicitly stated source-consistent probability interpretation to convergence at positive objective value.
- Source-endorsed random-instance route: an accepted theorem with the same rank, algorithm, convergence, and probability requirements for random rank-\(r\) tensors. The paper explicitly emphasizes this route but does not say whether it is a literal full resolution of the displayed smoothed-instance question; report its status separately rather than automatically calling it full or partial.
- Partial progress: an accepted superlinear lower bound for ALS or gradient descent individually, an explicit well-conditioned tensor, an \(r^{2-c}\) regime restricted to a special case, one method, or conditional assumptions, or another conditional theorem, each with the remaining gap to the exact smoothed multi-method target stated explicitly. An \(r^{2-c}\) result satisfying all full-progress requirements is full progress rather than partial progress.
- Formal obstruction: a rigorous diagnosis showing that a proposed lower-bound mechanism fails or that an algorithm-class formulation needs an additional precise restriction, without silently changing the source target.
- Invalid acceptance: worst-case hardness unrelated to the dynamics, mere bad-critical-point existence, finite-time delay, vanishing failure probability, an assumed bad basin or invariant, or missing dependence on \(r,k,c\) and the instance/initialization randomness.
- If no result passes the proof gates, the run should return a precise proof-failure diagnosis localized to this lower-bound subproblem rather than an unsupported acceptance claim.
