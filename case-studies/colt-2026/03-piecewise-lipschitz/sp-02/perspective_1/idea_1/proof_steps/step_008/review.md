# Proof Step Review

## Step Review Identity

- Branch path: perspective_1/idea_1
- Sketch attempt: 2
- Step ID: step_008
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_008/proof.md, SHA-256 796a93f69656d53ab9dddddec9866994d6d0a3c6494003eeca984ae42f858e2b
- Binding idea: perspective_1/idea_1/idea.md, SHA-256 90d54348c0603de55463b9e61611436feb86a1c329966f786db2fc8bc43ba910
- Binding setting: perspective_1/idea_1/setting.md, SHA-256 f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Accepted sketch: perspective_1/idea_1/proof_sketch.md, SHA-256 2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a
- Accepted sketch review: perspective_1/idea_1/proof_sketch_review.md, SHA-256 40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8
- Accepted dependency proof/review: step_006, SHA-256 4ec1534fcbcb44eb50e275a2526c60831fc7dd92b59a1d9db3cf90c68320f068 / e775661c8345636704e59b07f3a2f972a4b6f5f1a465eb3a5e8b05a1f3d956fa
- Accepted dependency proof/review: step_007, SHA-256 b769b0f15124e73117ec9860f08d5cdd0eb78100daf134d6a69d1891a7dc4c6d / 3f54140026d5c207c333ea9c53ea443357ad708b16353695ea875fd46dbc7b34
- Diagnostic global proof/review hashes verified: 45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9 / cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db
- Evidence boundary: global_proof.md, step_010, the stale live review, and all proof_history artifacts supplied no proof premise or conclusion. The current accepted step_006 and step_007 proof/review pairs are the only dependency evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-s2-affine-transfer} matches the accepted sketch-attempt-2 transfer obligation. It fixes \(d\geq1\), one arbitrary \(\mu\in\mathcal D_{d,R,\kappa}\), and one bounded interval \(J\), and concludes exactly the step_006 chart integral for the monic root event. Its statement names Assumptions~\ref{assump:parameter-regime} and \ref{assump:cube-density-laws} and the direct accepted step_006 and step_007 results that discharge the presentation and pivot premises.
- Proof validity: Proposition~\ref{prop:step-007-monic-presentation} constructs a deterministic nondegenerate \(\Theta\supseteq J\), sets \(N=d\), and proves pointwise
  \[
  F_0(\theta)+\langle\alpha,F(\theta)\rangle
  =\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
  =p_\alpha(\theta).
  \]
  The actual random vector is exactly \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\); the coefficient of \(\theta^d\) remains the deterministic offset \(F_0\). Lemma~\ref{lem:step-007-pivot-partition} proves the exact measurable nonzero-pivot cover, and Proposition~\ref{prop:step-006-affine-bound} then applies with \(I=J\) and \(N=d\). There is no law augmentation, conditioning, chartwise probability union bound, or event relaxation.
- Cited-result and assumption audit: The affine proposition is restated in the current coefficient ordering, law dimension, event, and interval convention before use. The four step_007 interfaces are direct outputs of a dependency with no proof dependencies; they do not rely on transitive ancestry or the global diagnostic. Assumption~\ref{assump:cube-density-laws} supplies one full joint \(d\)-dimensional density cap, so arbitrary coefficient correlation is preserved. No external root theorem or independence statement is invoked.
- Rigor checklist: Quantifiers occur in the required order: fix \(d\), then an arbitrary admissible law, then an arbitrary bounded \(J\). Polynomial \(C^1\) regularity, \(q=M=0\), \(Q_1=1\), exact dimension, and pivot admissibility are supplied before the affine theorem is applied. The accepted affine result already includes empty and singleton intervals, every endpoint convention, cube faces, tangent and multiple roots, and extended-real chart integrals.
- Local adversarial test: For \(d=1\), the same transfer gives one chart over a zero-dimensional beta cube. For \(d\geq2\), \(\theta=0\) and \(\theta=\pm1\) lie in the constant-pivot cell, while the high pivot is used only for \(\lvert\theta\rvert>1\). An arbitrarily distant bounded \(J\), an empty pivot cell, or coefficients on cube faces changes none of the exact object or law mappings.
- Contribution to target step: This proposition supplies the lossless probability-to-chart-sum bridge on the exact monic event, leaving only deterministic integration in the two dimension branches.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-008-s2-two-cell-ledger} is exactly the \(d\geq2\) deterministic integration obligation in the accepted row. It evaluates the full \(d\)-chart sum, retains the sharper high-chart speed before domination, and targets the literal coefficient-one cap without a chart-count factor.
- Proof validity: The beta cube has exactly \(d-1\) coordinates and
  \[
  \operatorname{Leb}^{d-1}([-R,R]^{d-1})=(2R)^{d-1}.
  \]
  All cells other than \(E_1\) and \(E_d\) are empty. With
  \[
  V_d=d+\frac{Rd(d-1)}2,
  \qquad
  W_d=1+\frac{Rd(d-1)}2,
  \]
  the accepted velocity certificates first give the sharper ledger
  \[
  (2R)^{d-1}\bigl(V_d\lvert E_1\rvert+W_d\lvert E_d\rvert\bigr).
  \]
  Since \(d\geq2\), \(V_d-W_d=d-1\geq0\), so this is at most
  \((2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)\). The cells are disjoint and their union is exactly \(J\), hence \(\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert\). Every inequality has coefficient one and the final constant is the target constant.
- Cited-result and assumption audit: Lemmas~\ref{lem:step-007-pivot-partition}, \ref{lem:step-007-low-pivot-chart}, and \ref{lem:step-007-high-pivot-chart} are restated with their exact cells, beta-coordinate conventions, and pointwise speed conclusions. Product-cube volume and finite additivity of Lebesgue measure are stated before use. No probability theorem, root theorem, or step_010 result enters this deterministic unit.
- Rigor checklist: The high-chart estimate is not silently replaced by the common cap: \(W_d\) is retained in the first integral bound and only then dominated using the displayed \(V_d-W_d=d-1\). Closed cube faces are included. The non-strict low cell owns \(\theta=\pm1\), the strict high cell owns the complement, and disjoint finite additivity is valid for open, closed, and half-open \(J\).
- Local adversarial test: If either cell is empty, both its integral and its length are zero. At \(d=2\), the two speeds are \(2+R\) and \(1+R\), so the coefficient-one domination remains exact. Moving \(J\) arbitrarily far from the origin only makes one of the cells empty or restricts the high chart; it introduces no location term. Singleton and empty intervals have zero ledger.
- Contribution to target step: This lemma supplies the exact \(d\geq2\) chart integral with no factor for two charts, \(d\) charts, or a probability union bound.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-008-s2-linear-branch} isolates exactly the required \(d=1\) branch under the named assumptions, accepted transfer proposition, and direct step_007 monic interfaces. It states the target probability formula rather than importing the \(d\geq2\) chart notation.
- Proof validity: At \(d=1\), the random vector is \((\alpha_0)\), \(p_\alpha(\theta)=\theta+\alpha_0\), \(E_1=J\), and there are no nonpivot coordinates. Thus
  \[
  [-R,R]^0=\{()\},\qquad \operatorname{Leb}^0([-R,R]^0)=1=(2R)^0,
  \]
  while the accepted low-chart result gives \(T_1(\theta)=-\theta\) and \(\lvert T_1'(\theta)\rvert=1\). The chart integral is exactly \(\lvert J\rvert\), and Proposition~\ref{prop:step-008-s2-affine-transfer} yields
  \[
  \Pr[\exists\theta\in J:\theta+\alpha_0=0]
  \leq\kappa\lvert J\rvert
  =\kappa(2R)^0\left(1+\frac{R\cdot1\cdot0}{2}\right)\lvert J\rvert.
  \]
- Cited-result and assumption audit: The zero-dimensional measure convention is explicitly stated and applied to the singleton empty tuple. The exact \(d=1\) chart and pivot are direct step_007 outputs, and the probability inequality is the direct local transfer from step_006; no second polynomial-root argument is used.
- Rigor checklist: No nonexistent high chart, second cell, beta coordinate, or \(2R\) factor is introduced. Ordinary probability and the full one-dimensional density cap are retained. Empty and singleton \(J\) have zero right side; the accepted affine interface supplies the required law-null fixed-point event for a singleton.
- Local adversarial test: The argument remains valid whether \(-\alpha_0\) lies at a cube face, outside \(J\), or at any included endpoint of \(J\). The deterministic leading coefficient of \(\theta\) is never randomized. There is no division by \(\theta\), so \(\theta=0\) is harmless.
- Contribution to target step: This proposition closes the only branch not covered by the two-cell ledger and gives exactly the target formula at \(d=1\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. Exact event equality, coefficient ordering, law dimension, deterministic leading coefficient, polynomial regularity, and pivot admissibility are all assigned to Proposition~\ref{prop:step-008-s2-affine-transfer} through the direct accepted dependency interfaces. Cube volume, the sharper high-chart ledger, coefficient-one domination, empty cells, transition ownership, and disjoint length addition are all in Lemma~\ref{lem:step-008-s2-two-cell-ledger}. The zero-dimensional cube, one-cell convention, exact linear chart, and unit speed are all in Proposition~\ref{prop:step-008-s2-linear-branch}.

The standard product-volume and finite-additivity facts are stated in current notation before use. The assembly uses named theorem-style labels, not unit IDs or subsection names, as mathematical authority. It introduces no independent root theorem, probability union bound over charts, randomized leading coefficient, conditional-density premise, auxiliary tolerance, global-diagnostic premise, step_010 conclusion, or stale-history premise.

## Target Claim Audit

The proof establishes the exact sketch-attempt-2 step_008 claim. For every integer \(d\geq1\), every arbitrary-correlated law \(\mu\in\mathcal D_{d,R,\kappa}\), and then every bounded interval \(J\subset\mathbb R\), it proves in ordinary probability

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
\]

The source affine event and target polynomial event are pointwise identical; the random vector has exactly the \(d\) lower coefficients, and the monic coefficient remains deterministic. The \(d\geq2\) and \(d=1\) branches exhaust all admissible dimensions. The proof covers empty and singleton intervals, empty cells, every literal endpoint convention, \(\theta=0\), \(\theta=\pm1\), cube faces, arbitrary interval location, and arbitrary coefficient correlation. It preserves the exact baseline without a hidden constant, weaker remainder, extra factor, confidence parameter, or probability-mode conversion.

## Explicit Rate Audit

R4 is rate-bearing and passes the explicit-rate contract. The exposed variables are \(d,R,\kappa,\lvert J\rvert\), with the accepted specialization data \(q=M=0\), \(N=d\), \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\). Hidden constants are absent and may depend on nothing. Fixed quantities are \(d,R,\kappa\), then one arbitrary admissible full joint law, then one arbitrary bounded \(J\) and its deterministic enclosing presentation.

Probability mode is ordinary probability under the full \(d\)-dimensional density cap; horizon mode is every bounded interval with its literal endpoint convention; norm and measure mode are scalar absolute chart velocity and Euclidean Lebesgue coefficient volume, including zero-dimensional measure at \(d=1\). There are no auxiliary tolerances, asymptotics, stopping rules, conditioning events, or confidence parameters. The displayed relations

\[
\operatorname{Leb}^{d-1}([-R,R]^{d-1})=(2R)^{d-1},
\qquad
1+\frac{Rd(d-1)}2\leq d+\frac{Rd(d-1)}2
\]

and the exact disjoint length identity perform all simplification. No probability conversion occurs locally. The result is the affine-monic baseline itself, and its \(d=1\) reduction is exactly \(\kappa\lvert J\rvert\), so the baseline invariance obligation is preserved without conservative loss.

## Notation Surface Audit

The public-facing surface is correctly limited to \(p_\alpha\), the original lower-coefficient law, and the boxed probability inequality. The accepted presentation, \(\Theta,F_0,F,Q_i,E_j,T_1,T_d\), beta cube, and \(V_d\) are correctly classified as dependency-supplied appendix-local objects for this step. \(\operatorname{Leb}^m\) and \(W_d\) are proof-local, explicitly defined, and used enough to clarify the exact volume and domination calculations. No helper alias hides an assumption, boundedness claim, constant, or rate, and no dependency notation is exported unnecessarily to step_010.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-008-s2-affine-transfer} supplies the exact monic-event chart inequality from the accepted step_006 and direct step_007 interfaces. Lemma~\ref{lem:step-008-s2-two-cell-ledger} evaluates its complete chart sum for \(d\geq2\), and Proposition~\ref{prop:step-008-s2-linear-branch} evaluates it for \(d=1\). These cases jointly imply the exact boxed target with all quantifiers, constants, dimensions, and modes intact.

Every assembly reference has a paper-ready theorem-style name and stable label. The assembly adds no lemma, assumption, law transformation, chart union bound, independent citation, or final-theorem claim. The accepted global pair remains diagnostic only, and the output is exactly the minimal probability interface assigned to step_008 for direct consumption by step_010.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest controlled decision. All three local units pass independently, both accepted dependencies are fresh and apply to the exact monic objects, and the named-result assembly proves the exact R4 baseline. The cube volume, sharper high-chart cap, coefficient-one domination, partition ledger, zero-dimensional branch, arbitrary-correlation mode, deterministic leading coefficient, and all requested boundary cases close with literal constants. No local proof defect, dependency defect, or sketch-interface defect remains.
