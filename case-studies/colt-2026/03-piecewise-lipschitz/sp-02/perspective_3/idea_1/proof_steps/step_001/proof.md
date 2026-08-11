# Proof Step

## Step Identity

- Sketch attempt: 3
- Step ID: `step_001`
- Unit attempt: 1
- Binding `idea.md` SHA-256: `5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836`
- Binding `setting.md` SHA-256: `91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e`
- Accepted `proof_sketch.md` SHA-256: `32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906`
- Accepted `proof_sketch_review.md` SHA-256: `3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e`
- Accepted diagnostic `global_proof.md` SHA-256: `80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8`
- Accepted diagnostic `global_proof_review.md` SHA-256: `24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd`

## Target Step Claim

- Intended claim: Prove every supported root lies in compact (K_R); if
  (K_R=\varnothing), the root event is empty and \(\Gamma=0\); otherwise
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
- Assumptions used: Primitive `assump:shared-pfaffian-chain`,
  `assump:no-forced-root`.
- Technical challenge: Obtaining a nonvacuous pivot lower bound only on the
  root-feasible set without assuming a globally nonzero prescribed coordinate
  or a theorem-facing norm margin.
- Intended proof tool or cited result: Direct compactness, triangle inequality,
  extreme-value theorem, quotient rule in the exact setting convention.
- Output target: Root-feasibility and finite-conditioning certificate.
- Rate objective: R1: preserve exact \(N,R\) exposure while using
  \(B_0,B_1,\rho\) only as proof-local witnesses of finiteness, not hidden rate
  constants.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting fixes \(N\ge 1\), \(R>0\), a compact interval
    \(\Theta\), the scalar parameter \(\theta\), the affine family
    \(\phi_\alpha=b+\langle\alpha,F\rangle\), and the definitions of
    \(K_R,V_j\), and \(\Gamma_{\rm piv}\).
  - `assump:shared-pfaffian-chain`: only its primitive conclusion that
    \(b,F_1,\ldots,F_N\) are \(C^1\) on \(\Theta\) is used. No degree or
    Pfaffian-format estimate is used.
  - `assump:no-forced-root`: for every \(\theta\in\Theta\),
    \((b(\theta),F(\theta))\ne(0,0)\).
- Derived invariants supplied by accepted dependencies: None. The target row
  has no dependency step artifacts.
- Local conditional hypotheses:
  - In the supported-root implication, \(\alpha\in[-R,R]^N\) and
    \(\phi_\alpha(\theta)=0\) are quantified local antecedents, not added
    theorem assumptions.
  - \(K_R\ne\varnothing\) is used only inside the nonempty branch. The empty
    branch is proved separately.

The condition `assump:joint-density-cap` is neither allowed nor used in this
step. No probability law, sampled event, monic specialization, prescribed
global pivot, transversality condition, or theorem-facing margin is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:shared-pfaffian-chain} and the basic setting, \(K_R\) is compact, every \(\alpha\in[-R,R]^N\) root belongs to \(K_R\), and \(K_R=\varnothing\) makes the supported-root event empty and \(\Gamma_{\rm piv}=0\). | Establishes exact cube-support feasibility, compactness, and the complete empty branch. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemma~\ref{lem:step-001-supported-root-compactness}, if \(K_R\ne\varnothing\), then \(F\ne0\) on \(K_R\), the proof-local margin \(\rho=\min_{K_R}\max_j\lvert F_j\rvert\) is strictly positive, and a nonzero largest-coordinate pivot is available pointwise. | Produces the positive denominator source without a fixed coordinate or an assumed norm margin. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:shared-pfaffian-chain} and \ref{assump:no-forced-root} and Lemmas~\ref{lem:step-001-supported-root-compactness} and \ref{lem:step-001-positive-available-pivot}, if \(K_R\ne\varnothing\), then the proof-local finite controls \(B_0,B_1\) satisfy \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\) on \(K_R\), and consequently \(\Gamma_{\rm piv}<\infty\). | Gives the exact requested crude bound and closes the nonempty branch. |

Atomic step = no. Compact feasibility, strict pivot availability, and the
quotient/supremum estimate are independent nontrivial obligations and are
therefore exposed as three local units.

## Cited Result Applications

No paper result, external citation, or dependency-step result is used. The
only standard facts used later are restated here in the branch notation.

1. **Closed-set compactness and extreme values.** If a real-valued function
   is continuous on \(\Theta\), the inverse image of a closed subset of
   \(\mathbb R\) is closed relative to \(\Theta\); a closed subset of compact
   \(\Theta\) is compact. A finite maximum of continuous real-valued
   functions is continuous. A continuous real-valued function on a nonempty
   compact set attains its minimum and maximum. Thus a pointwise positive
   continuous function on a nonempty compact set has a strictly positive
   attained minimum. Assumption~\ref{assump:shared-pfaffian-chain} supplies
   the required continuity of \(b,F_i,b',F_i'\). This fact is applied to
   \(K_R\), \(\max_j\lvert F_j\rvert\), \(B_0\), and \(B_1\).
2. **Finite triangle inequality.** For real \(x_i\),
   \(\lvert\sum_i x_i\rvert\le\sum_i\lvert x_i\rvert\). In particular,
   \(\alpha\in[-R,R]^N\) implies
   \[
   \left\lvert\sum_{i=1}^N\alpha_iF_i(\theta)\right\rvert
   \le R\sum_{i=1}^N\lvert F_i(\theta)\rvert.
   \]
   The same two-term inequality is used separately for every quotient-rule
   numerator. Cube membership discharges \(\lvert\alpha_i\rvert\le R\).
3. **One-dimensional quotient rule.** If \(g,h\) are \(C^1\) in the setting
   convention and \(h(\theta)\ne0\), then
   \[
   \left(\frac gh\right)'(\theta)
   =\frac{g'(\theta)h(\theta)-g(\theta)h'(\theta)}{h(\theta)^2}.
   \]
   It is instantiated with \(h=F_j\) and, separately, \(g=b\) and
   \(g=F_i\) for every \(i\ne j\). Assumption~\ref{assump:shared-pfaffian-chain}
   supplies \(C^1\) regularity; Lemma~\ref{lem:step-001-positive-available-pivot}
   supplies the nonzero denominator.

The local results used later in the step have the following exact application
interfaces.

| Paper-ready result | Restated assumptions and conclusion | Later use |
| ------------------ | ------------------------------------ | --------- |
| Lemma~\ref{lem:step-001-supported-root-compactness} | Under Assumption~\ref{assump:shared-pfaffian-chain} and the basic setting, \(K_R\) is compact, contains every cube-supported root, and its empty branch has no supported root and has \(\Gamma_{\rm piv}=0\). | Supplies compactness and the empty branch; supplies compactness to Lemma~\ref{lem:step-001-positive-available-pivot}. |
| Lemma~\ref{lem:step-001-positive-available-pivot} | Under the two allowed assumptions and Lemma~\ref{lem:step-001-supported-root-compactness}, nonempty \(K_R\) has \(F\ne0\), \(\rho>0\), and a pointwise pivot of magnitude at least \(\rho\). | Supplies the denominator source to Proposition~\ref{prop:step-001-fixed-family-pivot-bound}. |
| Proposition~\ref{prop:step-001-fixed-family-pivot-bound} | Under the two allowed assumptions and the preceding lemmas, nonempty \(K_R\) satisfies the exact crude pointwise bound and \(\Gamma_{\rm piv}<\infty\). | Supplies the nonempty branch to target-step assembly and the direct finiteness output consumed by `step_004`. |

## Local Derivation

### unit_001: lemma

**Lemma (Compact feasibility of cube-supported roots).**
\(\label{lem:step-001-supported-root-compactness}\)

Statement:
Under Assumption~\ref{assump:shared-pfaffian-chain} and the basic setting
\(N\ge1\), \(R>0\), and compact interval \(\Theta\), the set
\[
K_R=\left\{\theta\in\Theta:
\lvert b(\theta)\rvert\le R\sum_{i=1}^N\lvert F_i(\theta)\rvert
\right\}
\]
is compact. For every \(\alpha\in[-R,R]^N\) and \(\theta\in\Theta\),
\(\phi_\alpha(\theta)=0\) implies \(\theta\in K_R\). Hence, if
\(K_R=\varnothing\), then
\[
\left\{\alpha\in[-R,R]^N:
\exists\theta\in\Theta,\ \phi_\alpha(\theta)=0\right\}=\varnothing
\quad\text{and}\quad
\Gamma_{\rm piv}(b,F;R)=0.
\]

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes \(b,F_1,\ldots,F_N\)
continuous. Therefore the scalar function
\[
\theta\longmapsto
\lvert b(\theta)\rvert-R\sum_{i=1}^N\lvert F_i(\theta)\rvert
\]
is continuous, and \(K_R\) is its inverse image of \(( -\infty,0]\).
Thus \(K_R\) is closed relative to compact \(\Theta\), hence compact. This
relative-topology argument includes both endpoints of \(\Theta\), whether or
not either endpoint belongs to \(K_R\).

Now fix \(\alpha\in[-R,R]^N\) and suppose
\(\phi_\alpha(\theta)=0\). The exact affine convention gives
\(b(\theta)=-\sum_{i=1}^N\alpha_iF_i(\theta)\), so
\[
\begin{aligned}
\lvert b(\theta)\rvert
&=\left\lvert\sum_{i=1}^N\alpha_iF_i(\theta)\right\rvert\\
&\le\sum_{i=1}^N\lvert\alpha_i\rvert\lvert F_i(\theta)\rvert\\
&\le R\sum_{i=1}^N\lvert F_i(\theta)\rvert
=R\lVert F(\theta)\rVert_1.
\end{aligned}
\]
This is the exact cube-support feasibility implication, so
\(\theta\in K_R\). If \(K_R\) is empty, the implication rules out every
root for every coefficient vector in the cube. The empty-set clause in the
setting definition of \(\Gamma_{\rm piv}\), rather than an empty-supremum
convention, then gives \(\Gamma_{\rm piv}(b,F;R)=0\).

### unit_002: lemma

**Lemma (Positive available-pivot margin on the feasible set).**
\(\label{lem:step-001-positive-available-pivot}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} and Lemma~\ref{lem:step-001-supported-root-compactness},
if \(K_R\ne\varnothing\), then \(F(\theta)\ne0\) for every
\(\theta\in K_R\), and the proof-local quantity
\[
\rho:=\min_{\theta\in K_R}\max_{1\le j\le N}
\lvert F_j(\theta)\rvert
\]
exists and satisfies \(\rho>0\). For each \(\theta\in K_R\), every index
attaining \(\max_j\lvert F_j(\theta)\rvert\) is a legal pivot and has
\(\lvert F_j(\theta)\rvert\ge\rho\).

Proof / justification:
Let \(\theta\in K_R\). If all coordinates of \(F(\theta)\) were zero, then
the defining feasibility inequality would give
\[
\lvert b(\theta)\rvert
\le R\lVert F(\theta)\rVert_1=0,
\]
and hence \(b(\theta)=0\). This would be the simultaneous zero
\((b(\theta),F(\theta))=(0,0)\), contradicting
Assumption~\ref{assump:no-forced-root}. Thus \(F(\theta)\ne0\) at every
point of \(K_R\). Notice that this conclusion is only needed and only proved
on \(K_R\): a point off \(K_R\) with \(F=0\) and \(b\ne0\) remains legal
and root-free.

Define the proof-local function
\[
g(\theta)=\max_{1\le j\le N}\lvert F_j(\theta)\rvert.
\]
It is continuous as a finite maximum of continuous functions, and the
nonvanishing just proved gives \(g(\theta)>0\) throughout \(K_R\). By
Lemma~\ref{lem:step-001-supported-root-compactness}, the present
\(K_R\) is nonempty and compact. Hence \(g\) attains its minimum at some
\(\theta_*\in K_R\). Since \(g(\theta_*)>0\), that attained minimum is
\(\rho>0\). At every fixed \(\theta\), the finite coordinate set has a
maximizer \(j\), and
\(\lvert F_j(\theta)\rvert=g(\theta)\ge\rho\).

Individual coordinates may vanish and maximizers may tie. Neither causes a
problem: at least one largest coordinate is nonzero, and each maximizer has
the same adequate magnitude. The selection is pointwise; no measurable,
continuous, or globally prescribed index is asserted. If \(N=1\), the sole
coordinate is necessarily the maximizer and is nonzero on \(K_R\). The
extreme-value argument includes compact-set endpoints and uses no interior or
transversality claim.

### unit_003: proposition

**Proposition (Crude fixed-family pivot-variation bound).**
\(\label{prop:step-001-fixed-family-pivot-bound}\)

Statement:
Under Assumptions~\ref{assump:shared-pfaffian-chain} and
\ref{assump:no-forced-root} and Lemmas~\ref{lem:step-001-supported-root-compactness}
and \ref{lem:step-001-positive-available-pivot}, suppose
\(K_R\ne\varnothing\), and define the proof-local controls
\[
B_0:=\max_{\theta\in\Theta}
\max\left\{\lvert b(\theta)\rvert,
\lvert F_1(\theta)\rvert,\ldots,\lvert F_N(\theta)\rvert\right\},
\]
\[
B_1:=\max_{\theta\in\Theta}
\max\left\{\lvert b'(\theta)\rvert,
\lvert F_1'(\theta)\rvert,\ldots,\lvert F_N'(\theta)\rvert\right\}.
\]
Then \(B_0,B_1<\infty\), and for every \(\theta\in K_R\),
\[
\min_{1\le k\le N}V_k(\theta)
\le
2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr).
\]
Consequently,
\[
\Gamma_{\rm piv}(b,F;R)
\le2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr)<\infty.
\]

Proof / justification:
Assumption~\ref{assump:shared-pfaffian-chain} makes each of
\(b,F_i,b',F_i'\) continuous on compact \(\Theta\). The displayed maxima
therefore exist and are finite. In the nonempty branch, \(B_0\ge\rho>0\),
although the argument never divides by \(B_0\). No positivity of \(B_1\) is
required.

Fix \(\theta\in K_R\). Choose, only at this point, an index \(j\) attaining
\(\max_k\lvert F_k(\theta)\rvert\). By
Lemma~\ref{lem:step-001-positive-available-pivot},
\(\lvert F_j(\theta)\rvert\ge\rho>0\), so \(\theta\in U_j\) and the ordinary
finite formula for \(V_j(\theta)\) applies. The quotient rule for the offset
ratio gives every term explicitly:
\[
\begin{aligned}
\left\lvert\left(\frac b{F_j}\right)'(\theta)\right\rvert
&=\frac{\left\lvert b'(\theta)F_j(\theta)
-b(\theta)F_j'(\theta)\right\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le\frac{\lvert b'(\theta)\rvert\lvert F_j(\theta)\rvert
+\lvert b(\theta)\rvert\lvert F_j'(\theta)\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le\frac{B_1B_0+B_0B_1}{\rho^2}
=\frac{2B_0B_1}{\rho^2}.
\end{aligned}
\]
For each individual \(i\ne j\), a separate application gives
\[
\begin{aligned}
\left\lvert\left(\frac{F_i}{F_j}\right)'(\theta)\right\rvert
&=\frac{\left\lvert F_i'(\theta)F_j(\theta)
-F_i(\theta)F_j'(\theta)\right\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le\frac{\lvert F_i'(\theta)\rvert\lvert F_j(\theta)\rvert
+\lvert F_i(\theta)\rvert\lvert F_j'(\theta)\rvert}
{\lvert F_j(\theta)\rvert^2}\\
&\le\frac{B_1B_0+B_0B_1}{\rho^2}
=\frac{2B_0B_1}{\rho^2}.
\end{aligned}
\]
These are all quotient-rule terms in \(V_j\): one offset ratio and exactly
\(N-1\) feature ratios. Therefore
\[
\begin{aligned}
V_j(\theta)
&=\left\lvert\left(\frac b{F_j}\right)'(\theta)\right\rvert
+R\sum_{i\ne j}
\left\lvert\left(\frac{F_i}{F_j}\right)'(\theta)\right\rvert\\
&\le \frac{2B_0B_1}{\rho^2}
+R(N-1)\frac{2B_0B_1}{\rho^2}\\
&=2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr).
\end{aligned}
\]
The extended value \(V_k=+\infty\) at a zero pivot does not affect this
argument: the selected \(j\) is nonzero, so
\[
\min_{1\le k\le N}V_k(\theta)\le V_j(\theta)<\infty.
\]
Taking the supremum over the nonempty set \(K_R\) proves the displayed bound
on \(\Gamma_{\rm piv}\); its right-hand side is finite because
\(B_0,B_1<\infty\) and \(\rho>0\).

If an unselected numerator coordinate satisfies \(F_i(\theta)=0\), the
formula remains valid: the term
\(F_i(\theta)F_j'(\theta)\) is then zero, while
\(F_i'(\theta)F_j(\theta)\) is still bounded explicitly. If
\(b(\theta)=0\), the term \(b(\theta)F_j'(\theta)\) vanishes and the
remaining term is bounded; if \(b\equiv0\), then also \(b'\equiv0\), so the
entire offset-ratio derivative is zero. If \(B_1=0\), every derivative in
both displayed numerators is zero and the bound is exactly zero. For
\(N=1\), the feature-ratio sum is empty and the factor is
\(1+R(N-1)=1\). All formulas use the \(C^1\) derivative convention on the
compact interval from the setting and remain valid at its endpoints; no
interior extension is introduced.

The proposition is only a fixed-family finiteness certificate. It does not
bound \(B_0\), \(B_1\), or \(\rho^{-1}\) by
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or by any other Pfaffian-format
data.

## Target-Step Assembly

Lemma~\ref{lem:step-001-supported-root-compactness} first gives the exact
support implication
\[
\alpha\in[-R,R]^N,\quad \phi_\alpha(\theta)=0
\quad\Longrightarrow\quad \theta\in K_R
\]
and proves that \(K_R\) is compact. If \(K_R=\varnothing\), the same lemma
shows that the supported-root event is empty and invokes the setting's
explicit empty branch to obtain \(\Gamma_{\rm piv}=0\).

If \(K_R\ne\varnothing\),
Lemma~\ref{lem:step-001-positive-available-pivot} excludes simultaneous
\(F=0\) on \(K_R\) using Assumption~\ref{assump:no-forced-root} and proves
\[
\rho=\min_{\theta\in K_R}\max_j\lvert F_j(\theta)\rvert>0.
\]
Proposition~\ref{prop:step-001-fixed-family-pivot-bound} then selects a
largest coordinate pointwise, bounds every quotient-rule term, and yields
the exact requested estimate
\[
\min_jV_j(\theta)
\le2B_0B_1\rho^{-2}\bigl(1+R(N-1)\bigr)
\quad(\theta\in K_R).
\]
Taking the defining supremum proves
\(\Gamma_{\rm piv}(b,F;R)<\infty\). The two cases jointly prove every clause
of the accepted `step_001` row.

The stable downstream interface is supported-root feasibility, qualitative
availability of a legal pivot, and strict fixed-family finiteness. In the
repaired six-step graph, the finiteness conclusion travels directly along
`step_001 -> step_004`; it is not attributed to or retransmitted through
`step_003`. The proof-local quantities \(B_0,B_1,\rho\) are not exported as
public rate factors.

## Explicit Rate Audit

- Exposed variables: The exact deterministic certificate displays
  \(N,R,B_0,B_1,\rho\) and \(\Gamma_{\rm piv}(b,F;R)\). The stable public
  interface retains the setting quantities \(N,R,\Gamma_{\rm piv}\), while
  \(B_0,B_1,\rho\) remain proof-local witnesses.
- Hidden constants may depend on: None; there is no hidden constant.
- Hidden constants may not depend on: The family, its Pfaffian presentation,
  \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff},N,R\), or any unrecorded pivot
  scale. No dependence is hidden.
- Fixed quantities: The deterministic family \((b,F)\), its fixed
  presentation, compact \(\Theta\), \(N\), and \(R\) are fixed while this
  certificate is evaluated.
- Probability mode: Deterministic. No probability, expectation, confidence
  level, density, or conditioning event appears.
- Horizon mode: Static and uniform over \(K_R\). There is no horizon,
  asymptotic limit, stopping rule, or interval-length limit.
- Norm mode: The \(\ell_1\) norm in the exact support-feasibility test, the
  maximum coordinate magnitude in the proof-local pivot margin, and scalar
  absolute values in \(V_j\).
- Admissibility conditions and auxiliary tolerances: \(N\ge1\), \(R>0\),
  Assumptions~\ref{assump:shared-pfaffian-chain} and
  \ref{assump:no-forced-root}; \(\rho,B_0,B_1\) are used only when
  \(K_R\ne\varnothing\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. Each quotient derivative is bounded by the displayed identity
  \[
  (B_1B_0+B_0B_1)\rho^{-2}=2B_0B_1\rho^{-2},
  \]
  and one offset term plus exactly \(R(N-1)\) feature-term weights gives
  \(2B_0B_1\rho^{-2}(1+R(N-1))\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies strict
  finiteness directly to `step_004`. Later probability bounds retain
  \(\Gamma_{\rm piv}\) itself and do not substitute \(B_0,B_1,\rho\) into a
  public theorem rate.
- Baseline-reduction check, if applicable: For \(N=1\), the result reduces
  exactly to the single offset-ratio bound with an empty feature sum. For
  \(K_R=\varnothing\), it reduces exactly to the defining value zero. The
  exact monic baseline is assigned to `step_006`, and this step neither
  changes nor weakens it.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(K_R\), \(V_j\), and
  \(\Gamma_{\rm piv}(b,F;R)\) retain exactly the scalar and coefficient
  conventions in `setting.md`. No transformed, augmented, monic, or
  surrogate coefficient object is introduced.
- Proof-local helper objects: \(g(\theta)=\max_j\lvert F_j(\theta)\rvert\),
  \(\rho\), \(B_0\), and \(B_1\). The function \(g\) is defined from the
  setting coordinates; Lemma~\ref{lem:step-001-positive-available-pivot}
  proves \(\rho>0\); Proposition~\ref{prop:step-001-fixed-family-pivot-bound}
  proves \(B_0,B_1<\infty\). None is an assumption, an appendix-local
  dictionary, a hidden public rate factor, or a polynomial format estimate.
- Pointwise choice: The maximizing index \(j\) in
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound} is an unnamed
  proof-local choice for a fixed \(\theta\). It is not a helper function and
  has no measurability, continuity, or global-pivot requirement.
- Appendix-local helper objects: None.
- Constant provenance: \(N\) and \(R\) are basic-setting quantities.
  \(\rho,B_0,B_1\) are directly defined from the fixed setting functions and
  are proved positive or finite by named local results before use. No free
  bounded quantity or theorem-facing norm margin is introduced.
- Assumption provenance: Compactness of \(K_R\), supported-root membership,
  nonvanishing of \(F\) on \(K_R\), positivity of \(\rho\), and finiteness of
  \(\Gamma_{\rm piv}\) are all derived in this step. Cube membership and the
  root equation are local antecedents; nonempty \(K_R\) is a branch
  condition. There is no accepted dependency, generated event, recurrence,
  stability condition, or invariant used as a primitive condition.
- Boundary audit: \(R>0\) is preserved exactly and is never divided by;
  \(K_R=\varnothing\) and \(K_R\ne\varnothing\) are separate branches;
  \(N=1\) has an empty feature sum; \(b=0\) causes no division and removes
  the appropriate numerator term; individual pivot zeros are bypassed by a
  largest nonzero coordinate; simultaneous \(F=0\) is excluded only on
  \(K_R\); ties are harmless; compact interval endpoints are included; and
  zero individual derivatives or \(B_1=0\) simply make the corresponding
  quotient terms vanish. Every quotient numerator and denominator appears in
  Proposition~\ref{prop:step-001-fixed-family-pivot-bound}.
- Forbidden-shortcut audit: The proof does not use
  `assump:joint-density-cap`, any later probability result, the
  monic specialization, a prescribed coordinate, transversality, simple-root
  reasoning, or an assumed global norm margin.
- Producer-consumer provenance: The repaired graph is `step_001`;
  `step_002 <- step_001`; `step_003 <- step_001,step_002`;
  `step_004 <- step_001,step_003`; `step_005 <- step_001`; and
  `step_006 <- step_001,step_004`. In particular, this artifact is the direct
  producer of the finiteness input for `step_004`.
- Diagnostic boundary: The accepted diagnostic pair was consulted only after
  `global_proof_review.md` with SHA-256
  `24ad84083a200f89cc8c7973ee168783bca0c81c3432ac73e24f50e4606184dd`
  was verified `ACCEPTED` for `global_proof.md` with SHA-256
  `80b090266336b304ff4ca0184709b45eff448c3f1758efdaa09d923c8dbfaee8`.
  Its step-relevant planning interface was the three-part feasibility,
  positive-margin, and quotient-control decomposition. The diagnostic was not
  used as evidence, a cited result, an assumption source, or authority to
  change the target. The consumed sketch-attempt-2 proof/review pair
  (`0a5355f86a9086ad945b96629d8e05f2dd8e77c9abcc1faa855a54dfd5e8d252`,
  `c0f43d8431f1714cc8a4ecbb1501ac465974b6603b078b2601f1b3f3e88df5c3`)
  was consulted only as same-step diagnostic history and supplies no current
  identity, local unit, assumption, or proof evidence.
- Progress boundary: This is a fixed-family `material_partial` finiteness
  proof. It neither claims nor implies polynomial control of
  \(\Gamma_{\rm piv}\), \(B_0\), \(B_1\), or \(\rho^{-1}\) from
  \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or any other general
  Pfaffian-format data. The unresolved full-source complexity question remains
  outside this step and outside the accepted theorem claim.
