# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove every supported root lies in compact \(K_R\); if
  \(K_R=\varnothing\), the root event is empty and \(\Gamma=0\); otherwise
  prove
  \[
  \rho=\min_{\theta\in K_R}\max_j\lvert F_j(\theta)\rvert>0,
  \]
  derive the explicit crude quotient bound
  \[
  \min_j V_j(\theta)
  \le 2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr),
  \]
  and conclude \(\Gamma_{\rm piv}(b,F;R)<\infty\).
- Depends on: None.
- Assumptions used: Primitive `assump:shared-pfaffian-chain` and
  `assump:no-forced-root`.
- Technical challenge: Obtain a nonvacuous pivot lower bound only on the
  root-feasible set, without assuming a globally nonzero prescribed
  coordinate or a theorem-facing norm margin.
- Intended proof tool or cited result: Direct compactness, the triangle
  inequality, the extreme-value theorem, and the quotient rule in the exact
  setting convention.
- Output target: Root-feasibility and finite-conditioning certificate.
- Rate objective: R1 preserves exact \(N,R\) exposure while using
  \(B_0,B_1,\rho\) only as proof-local witnesses of finiteness, not as hidden
  rate constants.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:shared-pfaffian-chain`: in this step, only its consequence that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on the compact interval \(\Theta\) is
    used.
  - `assump:no-forced-root`: \((b(\theta),F(\theta))\ne(0,0)\) for every
    \(\theta\in\Theta\).
- Derived invariants supplied by accepted dependencies: None; this step has no
  dependencies.
- Local conditional hypotheses:
  - The supported-root implication quantifies over a coefficient vector
    \(\alpha\in[-R,R]^N\) and assumes \(\phi_\alpha(\theta)=0\) only as the
    antecedent of that implication.
  - The condition \(K_R\ne\varnothing\) is used only in the nonempty branch of
    the case split. It is not a theorem-facing assumption.

The density condition `assump:joint-density-cap` is not used. In particular,
the supported-root restriction is a deterministic statement about every
coefficient vector in the cube.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain}, \(K_R\) is compact, every cube-supported root lies in \(K_R\), and \(K_R=\varnothing\) implies an empty supported-root event and \(\Gamma_{\rm piv}=0\). | Proves the supported-root restriction, compactness, and the degenerate branch. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemma~\ref{lem:step-001-root-feasible}, if \(K_R\ne\varnothing\), then \(F\ne0\) on \(K_R\) and \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\). | Produces the nonvacuous denominator source on exactly the root-feasible set. |
| `unit_003` | proposition | Under Assumption~\ref{assump:shared-pfaffian-chain} and Lemma~\ref{lem:step-001-pivot-margin}, if \(K_R\ne\varnothing\), then the setting-derived finite controls \(B_0,B_1\) give \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\) on \(K_R\), and hence \(\Gamma_{\rm piv}<\infty\). | Converts the compact pivot margin into the exact fixed-family finiteness certificate. |

Atomic step = no. Compact root restriction, strict pivot nondegeneracy, and
quotient control are logically distinct nontrivial claims and are therefore
proved as separate local units.

## Cited Result Applications

No paper result, external theorem, or dependency artifact is used as proof
evidence. The following elementary standard facts are restated in the exact
form used.

### Compactness and extreme values

- Source or name: closed-subset compactness, continuity of a finite maximum,
  and the extreme-value theorem.
- Restated statement in current notation: a closed subset of compact
  \(\Theta\) is compact; the maximum of finitely many continuous real-valued
  functions is continuous; and a continuous real-valued function on a
  nonempty compact set attains its minimum and maximum. In particular, if its
  value is strictly positive everywhere, its attained minimum is strictly
  positive. A continuous function on compact \(\Theta\) is bounded.
- Instantiated objects: \(K_R\), the function
  \(\theta\mapsto\max_j\lvert F_j(\theta)\rvert\), and the functions
  \(b,F_i,b',F_i'\).
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} gives
  continuity of all listed functions, and compactness of \(\Theta\) is part
  of the basic setting. Lemma~\ref{lem:step-001-root-feasible} proves that
  \(K_R\) is closed in \(\Theta\). Strict positivity on \(K_R\) is proved,
  rather than assumed, in Lemma~\ref{lem:step-001-pivot-margin}.
- Conclusion used: compactness of \(K_R\), existence and positivity of
  \(\rho\), and finiteness of \(B_0,B_1\).

### Quotient rule

- Source or name: one-dimensional quotient rule.
- Restated statement in current notation: if \(g,h\) are \(C^1\) and
  \(h(\theta)\ne0\), then
  \[
  \left(\frac gh\right)'(\theta)
  =\frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}{h(\theta)^2}.
  \]
- Instantiated objects: \(h=F_j\) and
  \(g\in\{b,F_i:i\ne j\}\).
- Assumption discharge: Assumption~\ref{assump:shared-pfaffian-chain} gives
  \(C^1\) regularity. Lemma~\ref{lem:step-001-pivot-margin} and the
  pointwise largest-coordinate choice give \(\lvert F_j\rvert\ge\rho>0\).
- Conclusion used: the explicit coordinate-ratio derivative bounds in
  Proposition~\ref{prop:step-001-fixed-family-bound}.

### Local result applications

The local results used later in this step are restated here for application
auditing.

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-001-root-feasible} | Under Assumption~\ref{assump:shared-pfaffian-chain}, \(K_R\) is compact, cube-supported roots lie in it, and its empty branch has no supported root and has \(\Gamma_{\rm piv}=0\). | Supplies compactness to Lemma~\ref{lem:step-001-pivot-margin} and the empty branch to the target assembly. |
| Lemma~\ref{lem:step-001-pivot-margin} | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemma~\ref{lem:step-001-root-feasible}, nonempty \(K_R\) has \(F\ne0\) and the positive margin \(\rho\). | Supplies the denominator source to Proposition~\ref{prop:step-001-fixed-family-bound}. |
| Proposition~\ref{prop:step-001-fixed-family-bound} | Under Assumption~\ref{assump:shared-pfaffian-chain} and Lemma~\ref{lem:step-001-pivot-margin}, the explicit \(B_0,B_1,\rho\) bound holds on nonempty \(K_R\), so \(\Gamma_{\rm piv}<\infty\). | Supplies the nonempty branch to the target assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Supported-root restriction and compact feasible set).**
\(\label{lem:step-001-root-feasible}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and the basic setting
\(N\ge1\), \(R>0\), and compact \(\Theta\), the set
\[
K_R=\{\theta\in\Theta:\lvert b(\theta)\rvert
\le R\lVert F(\theta)\rVert_1\}
\]
is compact. For every \(\alpha\in[-R,R]^N\) and \(\theta\in\Theta\),
\(\phi_\alpha(\theta)=0\) implies \(\theta\in K_R\). Consequently, if
\(K_R=\varnothing\), then no coefficient vector in \([-R,R]^N\) has a root
in \(\Theta\), and \(\Gamma_{\rm piv}(b,F;R)=0\).

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes \(b,F_1,\ldots,F_N\)
continuous. Hence
\[
\theta\longmapsto
\lvert b(\theta)\rvert-R\sum_{i=1}^N\lvert F_i(\theta)\rvert
\]
is continuous, and \(K_R\) is its inverse image of the closed set
\(( -\infty,0]\). Thus \(K_R\) is closed in compact \(\Theta\), so it is
compact.

Now fix \(\alpha\in[-R,R]^N\) and suppose
\(\phi_\alpha(\theta)=0\). Then
\[
\begin{aligned}
\lvert b(\theta)\rvert
&=\left\lvert\sum_{i=1}^N\alpha_iF_i(\theta)\right\rvert\\
&\le\sum_{i=1}^N\lvert\alpha_i\rvert\lvert F_i(\theta)\rvert\\
&\le R\sum_{i=1}^N\lvert F_i(\theta)\rvert
=R\lVert F(\theta)\rVert_1.
\end{aligned}
\]
Therefore \(\theta\in K_R\). If \(K_R\) is empty, this implication excludes
every supported root. The defining empty-set branch of
\(\Gamma_{\rm piv}\) then gives \(\Gamma_{\rm piv}(b,F;R)=0\).

### unit_002: lemma

**Lemma (Compact available-pivot margin).**
\(\label{lem:step-001-pivot-margin}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} and Lemma~\ref{lem:step-001-root-feasible}, if
\(K_R\ne\varnothing\), then \(F(\theta)\ne0\) for every
\(\theta\in K_R\), and
\[
\rho:=\min_{\theta\in K_R}\max_{1\le j\le N}
\lvert F_j(\theta)\rvert
\]
is well-defined and strictly positive. Consequently, for every
\(\theta\in K_R\), at least one coordinate \(j\) satisfies
\(\lvert F_j(\theta)\rvert\ge\rho>0\).

Proof / justification:
Take \(\theta\in K_R\). If \(F(\theta)=0\), then the defining inequality for
\(K_R\) yields
\[
\lvert b(\theta)\rvert\le R\lVert F(\theta)\rVert_1=0,
\]
so \(b(\theta)=0\). This would give
\((b(\theta),F(\theta))=(0,0)\), contrary to
Assumption~\ref{assump:no-forced-root}. Thus \(F(\theta)\ne0\) throughout
\(K_R\), which implies
\[
\max_{1\le j\le N}\lvert F_j(\theta)\rvert>0
\quad\text{for every }\theta\in K_R.
\]

The maximum of these finitely many continuous coordinate magnitudes is
continuous. By Lemma~\ref{lem:step-001-root-feasible}, \(K_R\) is nonempty
and compact, so this maximum attains its minimum there. If the attained
minimum were zero, its minimizer would satisfy \(F_j=0\) for every \(j\),
contradicting the nonvanishing just proved. Hence \(\rho>0\). At each point,
one of the finitely many coordinates attains the displayed maximum, proving
the last assertion.

### unit_003: proposition

**Proposition (Fixed-family pivot-variation bound).**
\(\label{prop:step-001-fixed-family-bound}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and
Lemma~\ref{lem:step-001-pivot-margin}, suppose \(K_R\ne\varnothing\), and
define
\[
B_0:=\max_{\theta\in\Theta}
\max\bigl\{\lvert b(\theta)\rvert,
\lvert F_1(\theta)\rvert,\ldots,\lvert F_N(\theta)\rvert\bigr\},
\]
\[
B_1:=\max_{\theta\in\Theta}
\max\bigl\{\lvert b'(\theta)\rvert,
\lvert F_1'(\theta)\rvert,\ldots,\lvert F_N'(\theta)\rvert\bigr\}.
\]
Then \(B_0,B_1<\infty\), and for every \(\theta\in K_R\),
\[
\min_{1\le k\le N}V_k(\theta)
\le
\frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr).
\]
Consequently,
\[
\Gamma_{\rm piv}(b,F;R)
\le
\frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr)<\infty.
\]

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes each of
\(b,F_i,b',F_i'\) continuous on compact \(\Theta\). The extreme-value
theorem therefore makes both displayed maxima finite.

Fix \(\theta\in K_R\). By
Lemma~\ref{lem:step-001-pivot-margin}, choose a coordinate \(j\) attaining
\(\max_k\lvert F_k(\theta)\rvert\). Then
\(\lvert F_j(\theta)\rvert\ge\rho>0\), so \(V_j(\theta)\) is evaluated on
its ordinary, finite-pivot branch. For any
\(g\in\{b,F_i:i\ne j\}\), the quotient rule and the definitions of
\(B_0,B_1\) give
\[
\begin{aligned}
\left\lvert\left(\frac{g}{F_j}\right)'(\theta)\right\rvert
&=\frac{\lvert g'(\theta)F_j(\theta)
-g(\theta)F_j'(\theta)\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le
\frac{\lvert g'(\theta)\rvert\lvert F_j(\theta)\rvert
+\lvert g(\theta)\rvert\lvert F_j'(\theta)\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le\frac{B_1B_0+B_0B_1}{\rho^2}
=\frac{2B_0B_1}{\rho^2}.
\end{aligned}
\]
Applying this bound once with \(g=b\) and once for each of the \(N-1\)
indices \(i\ne j\) yields
\[
\begin{aligned}
V_j(\theta)
&=\left\lvert\left(\frac b{F_j}\right)'(\theta)\right\rvert
+R\sum_{i\ne j}
\left\lvert\left(\frac{F_i}{F_j}\right)'(\theta)\right\rvert\\
&\le\frac{2B_0B_1}{\rho^2}
\bigl(1+R(N-1)\bigr).
\end{aligned}
\]
Since the minimum over all pivots is at most this particular finite value,
the pointwise claim follows. Taking the supremum over \(K_R\) gives the
displayed bound on \(\Gamma_{\rm piv}\). Its right-hand side is finite because
\(B_0,B_1<\infty\) and \(\rho>0\). When \(N=1\), the ratio sum is empty and
the same derivation gives the factor \(1+R(N-1)=1\).

This is a bound for the fixed deterministic family. It does not estimate
\(B_0\), \(B_1\), or \(\rho^{-1}\) from the Pfaffian format descriptors
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\).

## Target-Step Assembly

Lemma~\ref{lem:step-001-root-feasible} proves that \(K_R\) is compact and
contains every root produced by a coefficient vector in \([-R,R]^N\). It
also closes the degenerate case: if \(K_R=\varnothing\), the supported-root
event is empty and the definition gives \(\Gamma_{\rm piv}=0\).

In the remaining case \(K_R\ne\varnothing\),
Lemma~\ref{lem:step-001-pivot-margin} derives from the no-forced-root primitive
the strict compact margin
\(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\). Thus coordinate zeros are
allowed, but at least one coordinate is uniformly available at every
root-feasible point. Proposition~\ref{prop:step-001-fixed-family-bound} then
uses a pointwise largest-magnitude coordinate and the exact quotient rule to
prove
\[
\min_jV_j(\theta)
\le2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr)
\quad(\theta\in K_R),
\]
and therefore \(\Gamma_{\rm piv}(b,F;R)<\infty\).

These two cases establish every clause of the exact `step_001` row. The
assembly exports supported-root feasibility, qualitative pivot availability,
and fixed-family finiteness only. It makes no claim that
\(\Gamma_{\rm piv}\), \(B_0\), \(B_1\), or \(\rho^{-1}\) is polynomially
controlled by Pfaffian-format data, preserving the binding `material_partial`
boundary.

## Explicit Rate Audit

- Exposed variables: The deterministic finiteness certificate explicitly
  displays \(N,R,B_0,B_1,\rho\) and \(\Gamma_{\rm piv}(b,F;R)\).
  The public downstream interface exposes \(N,R\) and
  \(\Gamma_{\rm piv}\); \(B_0,B_1,\rho\) remain proof-local witnesses.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The family, \(q,M\),
  \(\Delta_{\rm rnd}\), \(\Delta_{\rm aff}\), \(N\), \(R\), or an
  unrecorded pivot scale. There is no hidden multiplicative constant.
- Fixed quantities: The deterministic family \((b,F)\), its exact Pfaffian
  presentation, compact \(\Theta\), \(N\), and \(R\) are fixed when this
  static certificate is evaluated.
- Probability mode: Deterministic. No probability law, expectation,
  conditioning event, or confidence parameter is used.
- Horizon mode: Static and uniform over \(\theta\in K_R\); there is no time
  horizon, limiting argument, stopping rule, or interval-length asymptotic.
- Norm mode: The \(\ell_1\) feasibility norm in \(K_R\), the maximum
  coordinate magnitude for the proof-local pivot margin, and scalar absolute
  values for coordinate-ratio derivatives.
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}; the quantitative bound is used only in the
  nonempty-\(K_R\) branch. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. Each quotient derivative is bounded explicitly by
  \[
  \frac{B_1B_0+B_0B_1}{\rho^2}
  =\frac{2B_0B_1}{\rho^2},
  \]
  and summing the one offset ratio and the \(N-1\) feature ratios gives
  exactly \(2B_0B_1\rho^{-2}(1+R(N-1))\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step proves only that
  the setting-defined \(\Gamma_{\rm piv}\) is finite. Downstream probability
  bounds use \(\Gamma_{\rm piv}\) itself; they do not hide or substitute the
  proof-local controls \(B_0,B_1,\rho\).
- Baseline-reduction check, if applicable: No baseline specialization is
  performed in this step. The exact monic baseline is assigned to
  `step_006`; nothing here weakens or changes that obligation.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(K_R\), \(V_j\), and
  \(\Gamma_{\rm piv}(b,F;R)\) retain exactly their definitions from
  `setting.md`. The exported interface is the supported-root restriction,
  qualitative availability of a nonzero pivot on \(K_R\), and finiteness of
  \(\Gamma_{\rm piv}\).
- Proof-local helper objects: \(\rho\), \(B_0\), and \(B_1\) are used only to
  certify fixed-family finiteness. The margin \(\rho\) is defined from the
  setting functions and proved positive by
  Lemma~\ref{lem:step-001-pivot-margin}; \(B_0,B_1\) are defined from setting
  functions and proved finite by
  Proposition~\ref{prop:step-001-fixed-family-bound}. None is an additional
  assumption or a hidden public-rate constant.
- Pointwise pivot choice: the coordinate chosen in
  Proposition~\ref{prop:step-001-fixed-family-bound} is a proof-local finite
  choice at one fixed \(\theta\). No measurable or globally prescribed
  selector is asserted or needed in this step.
- Appendix-local helper objects: None.
- Constant provenance: \(R\) and \(N\) are primitive basic-setting
  quantities. Every new constant in the proof is either directly defined from
  the setting functions or proved finite/positive by the named local units;
  no free bounded quantity is introduced.
- Assumption provenance: Compactness of \(K_R\), nonvanishing of \(F\) on
  \(K_R\), positivity of \(\rho\), and finiteness of the quotient controls
  are derived in this step. The cube-membership and root equations in
  Lemma~\ref{lem:step-001-root-feasible} are local quantified antecedents,
  and \(K_R\ne\varnothing\) is a local case condition. There is no generated
  event, recurrence, stability condition, or invariant assumed as primitive.
- Diagnostic boundary: `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED`. Its
  step-relevant planning suggestion was the three-unit decomposition into
  root feasibility, compact pivot margin, and quotient control. Every claim
  and inequality above was independently derived from `setting.md` and the
  accepted `step_001` row. The diagnostic was not used as evidence, a cited
  result, an assumption source, or authority to change the target claim.
- Progress boundary: This proof establishes fixed-family finiteness only. It
  neither claims nor implies polynomial control of \(\Gamma_{\rm piv}\) in
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other Pfaffian-format data,
  so the accepted `material_partial` boundary is unchanged.
