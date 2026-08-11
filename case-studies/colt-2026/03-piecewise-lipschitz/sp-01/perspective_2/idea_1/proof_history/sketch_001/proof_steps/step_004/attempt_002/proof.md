# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 2

## Target Step Claim

- Intended claim: Using the matching conditioning kernel for each chart, prove
  \(\mu(H_{d,I_0})\leq\bar\kappa_0B_0\lvert I_0\rvert\) and
  \(\mu(H_{d,I_\pm})\leq\bar\kappa_\infty B_\infty\lvert I_\pm\rvert\)
  by fiberwise image control and the tower property, including \(d=1\) and
  zero-length pieces.
- Depends on: step_001, step_002, step_003.
- Assumptions used: assump:indexed-regime; assump:compact-cube-support;
  assump:mean-endpoint-conditional-caps.
- Technical challenge: Use only mean random caps, not almost-sure uniform
  caps, and do not conflate the two conditioning sigma-fields.
- Intended proof tool or cited result: Conditional disintegration, density
  domination on each fiber, and the tower property.
- Output target: Three class-compatible chart probability controls.
- Rate objective: Root-hitting objective with exact dependence
  \(\bar\kappa_0B_0\) and \(\bar\kappa_\infty B_\infty\), in deterministic
  probability mode.
- Row-local review status: PENDING. The controlling sketch-attempt-1 review is
  ACCEPTED.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:indexed-regime`: \(d\in\mathbb N\), \(d\geq1\), \(R\geq1\), and
    the finite pair
    \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\) is fixed
    independently of \(d,R\).
  - `assump:compact-cube-support`: \(\mu([-R,R]^d)=1\), and the polynomial and
    its two sweeps are exactly the monic setting objects.
  - `assump:mean-endpoint-conditional-caps`: the two endpoint conditional
    laws are Lebesgue absolutely continuous almost surely and satisfy the two
    separate mean bounds
    \(\mathbb E_\mu K_0^\mu\leq\bar\kappa_0\) and
    \(\mathbb E_\mu K_\infty^\mu\leq\bar\kappa_\infty\).
- Derived invariants supplied by accepted dependencies:
  - Lemma~\ref{lem:step-001-unit-002}: the exact inner image-length
    certificate.
  - Propositions~\ref{prop:step-002-positive-outer-certificate} and
    \ref{prop:step-002-negative-outer-certificate}: the two sign-separated
    exact outer image-length certificates.
  - Lemma~\ref{lem:step-003-kernel-caps}: the two measurable finite-cap
    full-measure interfaces and their exact mean bounds.
  - Proposition~\ref{prop:step-003-disintegration}: the matching-kernel
    disintegrations and exact chart sections.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `proof_steps/step_001/proof.md`, SHA-256
    `0aa0e570fd177aaae9828a816336e96ed8fc73d344a9025408a98e0fbd6d0361`,
    paired with unit-attempt-1 `proof_steps/step_001/review.md`, SHA-256
    `669402f2e36d6f7dce8ce479e548fc99c3d92fc95a113bc7a7ec7add73948228`,
    whose status is ACCEPTED and whose reviewed proof hash is the preceding
    proof hash.
  - `proof_steps/step_002/proof.md`, SHA-256
    `d7c01883f5e130aa33071b3363f803abbe0aba5c42d3a7a31a61cc0bf9d3d05a`,
    paired with unit-attempt-1 `proof_steps/step_002/review.md`, SHA-256
    `751c00f720eb9674ef69b813b21a888cad110115e66809cce8fc8ea336274d10`,
    whose status is ACCEPTED and whose reviewed proof hash is the preceding
    proof hash.
  - `proof_steps/step_003/proof.md`, SHA-256
    `ee49de9b8de6d218926e612450f7172e209465eb6bcda1a8c254f624fc93cebd`,
    paired with unit-attempt-3 `proof_steps/step_003/review.md`, SHA-256
    `8a20f6423c00d84663b723e74a2bee2d4d88e70d094b18fa08d32bf640009ef6`,
    whose status is ACCEPTED and whose reviewed proof hash is the preceding
    proof hash.

Use the notation exported by step_003. For \(d\geq2\), the inner pair is
\[
 (X_0,Y_0)=(\alpha_0,\alpha_{1:d-1})
\]
with marginal \(\nu_0\) and kernel \(Q^0_y\), while the outer pair is
\[
 (X_\infty,Y_\infty)=(\alpha_{d-1},\alpha_{0:d-2})
\]
with marginal \(\nu_\infty\) and kernel \(Q^\infty_y\). The corresponding
measurable caps and finite-cap full-measure sets are
\(\widehat K_0,G_0\) and \(\widehat K_\infty,G_\infty\). For \(d=1\), both
pairs are \((\alpha_0,\varnothing)\), and the two labels denote the same
unconditional kernel and the same cap, as proved by
Lemma~\ref{lem:step-003-kernel-caps}. The two primitive mean inequalities
remain separate.

## Local Lemma Map

Atomic step = no. The inner chart and the two signed outer charts require
three separate conditioning calculations. In particular, the two outer
calculations cannot be replaced by a symmetry or union argument.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, and under Lemmas~\ref{lem:step-001-unit-002} and \ref{lem:step-003-kernel-caps} and Proposition~\ref{prop:step-003-disintegration}, every \(\mu\in\mathcal D_{d,R,\eta}\) and \(I\in\mathcal I(\Theta)\) satisfy \(\mu(H_{d,I_0})\leq\bar\kappa_0B_0(d,R)\lvert I_0\rvert\); if \(I_0\) is empty or a singleton, its event has probability zero. | Exact inner chart probability control. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, and under Proposition~\ref{prop:step-002-positive-outer-certificate}, Lemma~\ref{lem:step-003-kernel-caps}, and Proposition~\ref{prop:step-003-disintegration}, every \(\mu\in\mathcal D_{d,R,\eta}\) and \(I\in\mathcal I(\Theta)\) satisfy \(\mu(H_{d,I_+})\leq\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert\); if \(I_+\) is empty or a singleton, its event has probability zero. | Exact positive-outer chart probability control. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, and under Proposition~\ref{prop:step-002-negative-outer-certificate}, Lemma~\ref{lem:step-003-kernel-caps}, and Proposition~\ref{prop:step-003-disintegration}, every \(\mu\in\mathcal D_{d,R,\eta}\) and \(I\in\mathcal I(\Theta)\) satisfy \(\mu(H_{d,I_-})\leq\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert\); if \(I_-\) is empty or a singleton, its event has probability zero. | Exact negative-outer chart probability control. |

## Cited Result Applications

No external paper theorem or global-proof statement is used as proof
authority. Each dependency below is the result in the currently hashed proof
artifact accepted by its paired review.

1. **Lemma~\ref{lem:step-001-unit-002} (Inner interval image length).** In
   current notation, under Assumptions~\ref{assump:indexed-regime} and
   \ref{assump:compact-cube-support}, every
   \(y\in[-R,R]^{d-1}\) and every arbitrary-endpoint interval
   \(J\subseteq[-1,1]\), including an empty set or singleton, satisfy
   \[
   \lambda(s_0(J;y))\leq B_0(d,R)\lvert J\rvert.
   \]
   The current inner conditioning set \(G_0\) consists of such
   support-compatible \(y\), so the dependency assumptions are discharged
   fiberwise.

2. **Proposition~\ref{prop:step-002-positive-outer-certificate} (Positive
   outer pivot and image certificate).** Under the same two structural
   assumptions, every support-compatible nonpivot tuple and every
   arbitrary-endpoint \(J\subseteq(1,\infty)\), including an empty set or
   singleton, satisfy
   \[
   \lambda(s_\infty(J;y))
   \leq B_\infty(d,R)\lvert J\rvert.
   \]
   For \(d\geq2\), every \(y\in G_\infty\) lies in
   \([-R,R]^{d-1}\) and can be extended by the pivot value zero to a vector
   in \([-R,R]^d\); the conclusion depends only on \(y\). At \(d=1\), the
   proposition's exact empty-tuple specialization applies.

3. **Proposition~\ref{prop:step-002-negative-outer-certificate} (Negative
   outer pivot and image certificate).** Under the same two structural
   assumptions, every support-compatible nonpivot tuple and every
   arbitrary-endpoint \(J\subseteq(-\infty,-1)\), including an empty set or
   singleton, satisfy
   \[
   \lambda(s_\infty(J;y))
   \leq B_\infty(d,R)\lvert J\rvert.
   \]
   The support-compatible extension for \(y\in G_\infty\) and the
   degree-one discharge are exactly as stated for the positive certificate;
   the cited proposition itself supplies the negative-sign calculation.

4. **Lemma~\ref{lem:step-003-kernel-caps} (Measurable endpoint-kernel
   caps).** For each \(i\in\{0,\infty\}\), this accepted dependency supplies
   a \(\nu_i\)-full measurable set \(G_i\) such that
   \(\widehat K_i(y)<\infty\) on \(G_i\) and, simultaneously for every
   Borel \(A\subseteq\mathbb R\),
   \[
   Q^i_y(A)\leq\widehat K_i(y)\lambda(A),\qquad y\in G_i.
   \]
   It also supplies
   \[
   \mathbb E_\mu\widehat K_0(Y_0)\leq\bar\kappa_0,
   \qquad
   \mathbb E_\mu\widehat K_\infty(Y_\infty)
   \leq\bar\kappa_\infty.
   \]
   Its assumptions are discharged by the current class membership and the
   three listed primitive conditions. Finiteness on \(G_i\), rather than an
   almost-sure uniform numerical cap, is the only pointwise cap property
   used below.

5. **Proposition~\ref{prop:step-003-disintegration} (Matching-kernel Borel
   disintegration interface).** For an inner chart interval \(J\), it gives
   \[
   \mu(H_{d,J})=\int Q^0_y((E^0_J)_y)\,\nu_0(dy),
   \quad
   Q^0_y((E^0_J)_y)=Q^0_y(s_0(J;y))
   \quad(y\in G_0).
   \]
   For either signed outer chart interval \(J\), it gives separately
   \[
   \mu(H_{d,J})=\int Q^\infty_y((E^\infty_J)_y)\,\nu_\infty(dy),
   \quad
   Q^\infty_y((E^\infty_J)_y)=Q^\infty_y(s_\infty(J;y))
   \quad(y\in G_\infty).
   \]
   Here \(E^i_J\) is the accepted Borel lift of the same root event to the
   corresponding pivot-conditioning coordinates. The accepted step_003
   proof discharged its Borel-section premise before exporting this
   interface. The present target row consumes that derived interface and
   does not add a new primitive assumption.

6. **Full-measure restriction and nonnegative integration.** If \(G\) has
   full \(\nu\)-measure and \(f\) is a nonnegative measurable function, then
   \(\int f\,d\nu=\int_G f\,d\nu\). If \(0\leq f\leq g\) on \(G\), then
   \(\int_Gf\,d\nu\leq\int_Gg\,d\nu\). Below the section-probability
   integrands are measurable by
   Proposition~\ref{prop:step-003-disintegration}, and all products are
   formed only on \(G_i\), where \(\widehat K_i\) is finite.

7. **Proposition~\ref{prop:step-004-inner-chart-probability} (Inner chart
   probability control).** Its statement is the `unit_001` row above. It is
   proved below from items 1, 4, 5, and 6 and is used in the target-step
   assembly.

8. **Proposition~\ref{prop:step-004-positive-outer-probability} (Positive
   outer chart probability control).** Its statement is the `unit_002` row
   above. It is proved below from items 2, 4, 5, and 6 and is used in the
   target-step assembly.

9. **Proposition~\ref{prop:step-004-negative-outer-probability} (Negative
   outer chart probability control).** Its statement is the `unit_003` row
   above. It is proved below from items 3, 4, 5, and 6 and is used in the
   target-step assembly.

## Local Derivation

### unit_001: proposition

**Proposition (Inner chart probability control).**
\(\label{prop:step-004-inner-chart-probability}\)

**Statement.** Under Assumptions~\ref{assump:indexed-regime},
\ref{assump:compact-cube-support}, and
\ref{assump:mean-endpoint-conditional-caps}, and under
Lemmas~\ref{lem:step-001-unit-002} and
\ref{lem:step-003-kernel-caps} and
Proposition~\ref{prop:step-003-disintegration}, fix \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), and set
\(I_0=I\cap[-1,1]\). Then
\[
 \mu(H_{d,I_0})
 \leq\bar\kappa_0B_0(d,R)\lvert I_0\rvert.
 \tag{14}
\]
If \(I_0\) is empty or a singleton, then \(\mu(H_{d,I_0})=0\).

**Proof / justification.** Proposition~\ref{prop:step-003-disintegration}
gives a measurable inner section-probability integrand. Because
\(\nu_0(G_0)=1\), restrict the integral to the finite-cap set before making
any pointwise product:
\[
\begin{aligned}
 \mu(H_{d,I_0})
 &=\int_{G_0}Q^0_y((E^0_{I_0})_y)\,\nu_0(dy)\\
 &=\int_{G_0}Q^0_y(s_0(I_0;y))\,\nu_0(dy).
 \tag{15}
\end{aligned}
\]
For every \(y\in G_0\), Lemma~\ref{lem:step-003-kernel-caps} gives the
finite number \(\widehat K_0(y)\) and simultaneous Borel-set domination,
while Lemma~\ref{lem:step-001-unit-002} gives
\[
 \lambda(s_0(I_0;y))
 \leq B_0(d,R)\lvert I_0\rvert.
 \tag{16}
\]
Both dependencies apply because \(G_0\subseteq[-R,R]^{d-1}\) up to the
degree-one empty-tuple convention. Therefore
\[
\begin{aligned}
 \mu(H_{d,I_0})
 &\leq\int_{G_0}\widehat K_0(y)
       \lambda(s_0(I_0;y))\,\nu_0(dy)\\
 &\leq B_0(d,R)\lvert I_0\rvert
       \int_{G_0}\widehat K_0(y)\,\nu_0(dy)\\
 &\leq B_0(d,R)\lvert I_0\rvert
       \mathbb E_\mu\widehat K_0(Y_0)\\
 &\leq\bar\kappa_0B_0(d,R)\lvert I_0\rvert.
 \tag{17}
\end{aligned}
\]

The degenerate cases do not rely on an extended-valued product. If
\(I_0=\varnothing\), then \(H_{d,I_0}=\varnothing\), hence its probability
is zero. If \(I_0=\{\theta_0\}\), then \(s_0(I_0;y)\) is a singleton for
every \(y\), so its Lebesgue measure is zero. On \(G_0\) the cap is finite,
and thus
\[
 Q^0_y((E^0_{I_0})_y)
 =Q^0_y(s_0(I_0;y))
 \leq\widehat K_0(y)\,0=0.
\]
Equation (15) then gives \(\mu(H_{d,I_0})=0\). Thus no value of the form
zero times infinity occurs, including when \(\bar\kappa_0=0\).

### unit_002: proposition

**Proposition (Positive outer chart probability control).**
\(\label{prop:step-004-positive-outer-probability}\)

**Statement.** Under Assumptions~\ref{assump:indexed-regime},
\ref{assump:compact-cube-support}, and
\ref{assump:mean-endpoint-conditional-caps}, and under
Proposition~\ref{prop:step-002-positive-outer-certificate},
Lemma~\ref{lem:step-003-kernel-caps}, and
Proposition~\ref{prop:step-003-disintegration}, fix \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), and set
\(I_+=I\cap(1,\infty)\). Then
\[
 \mu(H_{d,I_+})
 \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert.
 \tag{18}
\]
If \(I_+\) is empty or a singleton, then \(\mu(H_{d,I_+})=0\).

**Proof / justification.** The positive-chart instance of
Proposition~\ref{prop:step-003-disintegration} and the full-measure property
of \(G_\infty\) give
\[
\begin{aligned}
 \mu(H_{d,I_+})
 &=\int_{G_\infty}Q^\infty_y((E^\infty_{I_+})_y)\,
       \nu_\infty(dy)\\
 &=\int_{G_\infty}Q^\infty_y(s_\infty(I_+;y))\,
       \nu_\infty(dy).
 \tag{19}
\end{aligned}
\]
Only the outer kernel appears here. For \(d\geq2\), every
\(y\in G_\infty\) belongs to \([-R,R]^{d-1}\). Appending the pivot value
zero gives a support-compatible coefficient vector, so
Proposition~\ref{prop:step-002-positive-outer-certificate} yields
\[
 \lambda(s_\infty(I_+;y))
 \leq B_\infty(d,R)\lvert I_+\rvert.
 \tag{20}
\]
At \(d=1\), that proposition supplies the same conclusion directly under
the empty-tuple convention. On \(G_\infty\), the cap
\(\widehat K_\infty(y)\) is finite and dominates the outer kernel. Hence
\[
\begin{aligned}
 \mu(H_{d,I_+})
 &\leq\int_{G_\infty}\widehat K_\infty(y)
       \lambda(s_\infty(I_+;y))\,\nu_\infty(dy)\\
 &\leq B_\infty(d,R)\lvert I_+\rvert
       \int_{G_\infty}\widehat K_\infty(y)\,\nu_\infty(dy)\\
 &\leq B_\infty(d,R)\lvert I_+\rvert
       \mathbb E_\mu\widehat K_\infty(Y_\infty)\\
 &\leq\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert.
 \tag{21}
\end{aligned}
\]

If \(I_+=\varnothing\), its root event is empty. If
\(I_+=\{\theta_+\}\), the positive certificate makes
\(s_\infty(I_+;y)\) a singleton of Lebesgue measure zero. Restricting first
to \(G_\infty\), where \(\widehat K_\infty(y)<\infty\), gives
\[
 Q^\infty_y((E^\infty_{I_+})_y)
 =Q^\infty_y(s_\infty(I_+;y))
 \leq\widehat K_\infty(y)\,0=0.
\]
Equation (19) proves \(\mu(H_{d,I_+})=0\), without assigning or multiplying
any cap value on a conditioning-null fiber.

### unit_003: proposition

**Proposition (Negative outer chart probability control).**
\(\label{prop:step-004-negative-outer-probability}\)

**Statement.** Under Assumptions~\ref{assump:indexed-regime},
\ref{assump:compact-cube-support}, and
\ref{assump:mean-endpoint-conditional-caps}, and under
Proposition~\ref{prop:step-002-negative-outer-certificate},
Lemma~\ref{lem:step-003-kernel-caps}, and
Proposition~\ref{prop:step-003-disintegration}, fix \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), and set
\(I_-=I\cap(-\infty,-1)\). Then
\[
 \mu(H_{d,I_-})
 \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert.
 \tag{22}
\]
If \(I_-\) is empty or a singleton, then \(\mu(H_{d,I_-})=0\).

**Proof / justification.** Apply the negative-chart instance of
Proposition~\ref{prop:step-003-disintegration} through the outer kernel and
then restrict to its own finite-cap full-measure set:
\[
\begin{aligned}
 \mu(H_{d,I_-})
 &=\int_{G_\infty}Q^\infty_y((E^\infty_{I_-})_y)\,
       \nu_\infty(dy)\\
 &=\int_{G_\infty}Q^\infty_y(s_\infty(I_-;y))\,
       \nu_\infty(dy).
 \tag{23}
\end{aligned}
\]
For \(d\geq2\), append the pivot value zero to each
\(y\in G_\infty\subseteq[-R,R]^{d-1}\). The resulting coefficient vector
is support-compatible, and the specifically negative-sign
Proposition~\ref{prop:step-002-negative-outer-certificate} yields
\[
 \lambda(s_\infty(I_-;y))
 \leq B_\infty(d,R)\lvert I_-\rvert.
 \tag{24}
\]
At \(d=1\), its empty-tuple specialization gives the exact same bound. The
outer cap is finite on \(G_\infty\), so its Borel-set domination and its own
mean inequality give
\[
\begin{aligned}
 \mu(H_{d,I_-})
 &\leq\int_{G_\infty}\widehat K_\infty(y)
       \lambda(s_\infty(I_-;y))\,\nu_\infty(dy)\\
 &\leq B_\infty(d,R)\lvert I_-\rvert
       \int_{G_\infty}\widehat K_\infty(y)\,\nu_\infty(dy)\\
 &\leq B_\infty(d,R)\lvert I_-\rvert
       \mathbb E_\mu\widehat K_\infty(Y_\infty)\\
 &\leq\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert.
 \tag{25}
\end{aligned}
\]

If \(I_-=\varnothing\), then \(H_{d,I_-}=\varnothing\). If
\(I_-=\{\theta_-\}\), the negative certificate gives a singleton image of
Lebesgue measure zero, and on the finite-cap set \(G_\infty\),
\[
 Q^\infty_y((E^\infty_{I_-})_y)
 =Q^\infty_y(s_\infty(I_-;y))
 \leq\widehat K_\infty(y)\,0=0.
\]
Equation (23) therefore gives \(\mu(H_{d,I_-})=0\). This is a separate
negative-chart calculation and does not infer the result by a sign symmetry.

## Target-Step Assembly

Fix the exact target-row objects \(d,R,\mu,I\). Proposition~\ref{prop:step-004-inner-chart-probability}
(`unit_001`) gives
\[
 \mu(H_{d,I_0})
 \leq\bar\kappa_0B_0(d,R)\lvert I_0\rvert.
\]
Proposition~\ref{prop:step-004-positive-outer-probability} (`unit_002`) and
Proposition~\ref{prop:step-004-negative-outer-probability} (`unit_003`) give,
respectively,
\[
 \mu(H_{d,I_+})
 \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert,
 \qquad
 \mu(H_{d,I_-})
 \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert.
\]
These are three separate chart controls. No union bound, addition of the two
outer probabilities, maximum, class supremum, polynomial specialization, or
witness argument is performed here. In particular, each outer proposition
uses the mean outer cap once for its own event, so no factor two enters either
bound.

At \(d=1\), Lemma~\ref{lem:step-003-kernel-caps} identifies the inner and
outer labels with the same unconditional law of \(\alpha_0\) and the same
finite cap, while the setting gives
\[
 s_0(\theta)=s_\infty(\theta)=-\theta,
 \qquad B_0(1,R)=B_\infty(1,R)=1.
\]
The inner proposition applies the primitive inequality with
\(\bar\kappa_0\), and each outer proposition applies the distinct primitive
inequality with \(\bar\kappa_\infty\). Thus the kernel coincidence is used
exactly in degree one and does not merge the two cap hypotheses or the two
conditioning interfaces in any higher degree. The three named propositions
therefore prove the exact step_004 claim.

## Explicit Rate Audit

- Exposed variables: \(d,R,\bar\kappa_0,\bar\kappa_\infty\), and the three
  separate lengths \(\lvert I_0\rvert,\lvert I_+\rvert,\lvert I_-\rvert\).
  The exact factors are
  \[
  B_0(d,R)=d+\frac{Rd(d-1)}2,
  \qquad
  B_\infty(d,R)=1+\frac{Rd(d-1)}2.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\eta,\mu,I,\Theta\), a
  conditioning value, a kernel or density version, an endpoint convention,
  or any undisplayed quantity.
- Fixed quantities: \(\eta\) and \(\Theta\) are fixed as in the setting. The
  proof fixes one admitted \(d,R,\mu,I\) and is uniform over all such choices.
- Probability mode: Exact probability under each fixed law \(\mu\), obtained
  by matching-kernel disintegration and deterministic expectation bounds.
  There is no confidence parameter, exceptional theorem event, or
  almost-sure uniform cap.
- Horizon mode: Static and interval-uniform. There is no time horizon,
  recurrence, limit, stopping rule, or scope upgrade.
- Norm mode: One-dimensional Lebesgue measure for source and pivot-image
  intervals and conditional \(L^\infty(\mathbb R,\lambda)\) density caps.
- Admissibility conditions and auxiliary tolerances: Exactly the three
  target-row assumptions and accepted steps step_001, step_002, and step_003.
  There is no auxiliary tolerance or cap threshold.
- Term absorption or simplification inequalities: None. Equations (17),
  (21), and (25) retain the exact products
  \(\bar\kappa_0B_0(d,R)\),
  \(\bar\kappa_\infty B_\infty(d,R)\), and
  \(\bar\kappa_\infty B_\infty(d,R)\), respectively. The two outer events
  are not combined and no factor two is introduced.
- Probability conversion: The only conversion is the exact tower/disintegration
  identity for each matching kernel. Restriction to \(G_i\) loses no mass
  because \(\nu_i(G_i)=1\). No union bound or conditioning-to-high-probability
  conversion occurs.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  three weighted chart controls to step_005. It performs no maximum or public
  polynomial specialization.
- Baseline-reduction check: At \(d=1\), the two sweeps are both \(-\theta\),
  both structural factors are one, and both conditioning labels are the same
  unconditional kernel and cap. Applying the two primitive mean bounds under
  their respective labels gives exactly
  \(\bar\kappa_0\lvert I_0\rvert\) and
  \(\bar\kappa_\infty\lvert I_\pm\rvert\), with no remainder or conservative
  loss.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(H_{d,J}\), \(I_0,I_+,I_-\),
  \(s_0,s_\infty\), \(B_0,B_\infty\), and
  \(\bar\kappa_0,\bar\kappa_\infty\) retain exactly their definitions from
  `setting.md`. The only public-facing outputs are the three probability
  inequalities in the target-step assembly.
- Appendix-local accepted dependency objects: \((X_i,Y_i)\), \(\nu_i\),
  \(Q^i\), \(\widehat K_i\), and the Borel lifts \(E^i_J\) are direct
  translations of the endpoint conditional laws and chart events proved in
  step_003. They are not new assumptions and are not exported beyond the
  proof interface.
- Proof-local accepted dependency objects: \(G_0,G_\infty\) are the
  full-measure sets from Lemma~\ref{lem:step-003-kernel-caps}. They are used
  immediately to ensure that every pointwise cap-image product is a product
  of finite nonnegative real numbers. No arbitrary value on a null
  conditioning fiber is used.
- Proof-local construction: for \(d\geq2\), appending pivot value zero to an
  outer nonpivot tuple \(y\in[-R,R]^{d-1}\) only instantiates the accepted
  step_002 propositions. It introduces no random object, event, assumption,
  or exported notation.
- Helper-object surface: no new constant, radius, threshold, margin,
  admissibility parameter, event, rate, finite-tube quantity, or boundedness
  hypothesis is introduced. Bound variables and the zero pivot extension are
  proof-local.
- Constant provenance: \(B_0(d,R)\) and \(B_\infty(d,R)\) are directly
  defined in `setting.md` and bounded image lengths are inherited from the
  accepted step_001 and step_002 results. The two \(\bar\kappa_i\) are fixed
  primitive setting parameters. No hidden constant is present.
- Assumption provenance: the indexed regime, cube support, and mean endpoint
  caps are primitive. Support-compatible conditioning values, measurable
  caps, cap finiteness on full-measure sets, conditional pivot support, Borel
  chart events, exact event sections, and legal disintegrations are derived
  outputs of accepted step_003. The three probability bounds and all
  empty/singleton zero-probability claims are proved in this step. There is no
  local conditional hypothesis, generated invariant, recurrence, or closure
  condition.
- Conditioning scope: for \(d\geq2\), the inner proof uses only the law of
  \(\alpha_0\) conditional on \(\alpha_{1:d-1}\), and the two outer proofs
  use only the law of \(\alpha_{d-1}\) conditional on
  \(\alpha_{0:d-2}\). The interfaces are identified only when \(d=1\), where
  both are the unconditional law of the sole coefficient.

## Artifact Validation

- Target fidelity: The three named local propositions prove only the inner,
  positive-outer, and negative-outer probability controls in the accepted
  step_004 row, with the exact constants.
- Allowed-input check: Every nontrivial line uses a listed primitive condition,
  an accepted dependency claim, a fully restated elementary integration fact,
  or one of the three local propositions.
- Dependency check: The proof and review hashes recorded above match the
  accepted identities for unit attempt 1 of step_001, unit attempt 1 of
  step_002, and unit attempt 3 of step_003.
- Local-unit coverage: There are exactly three non-atomic local units, all
  propositions, with stable paper-ready labels and matching derivation
  subsections. No additional local lemma, claim, hypothesis, or invariant is
  used.
- Boundary check: Empty and singleton pieces have probability zero; arbitrary
  endpoint conventions are inherited exactly; all products are formed on
  finite-cap full-measure sets; and \(d=1\) uses one common unconditional
  kernel with two separately applied primitive mean inequalities.
- Rate check: The exact \(B_0\) and \(B_\infty\) factors are preserved, no
  term is absorbed, and neither outer bound acquires a factor two.
- Assembly closure: Propositions~\ref{prop:step-004-inner-chart-probability},
  \ref{prop:step-004-positive-outer-probability}, and
  \ref{prop:step-004-negative-outer-probability} imply the exact target, so
  `Step Proof Status = COMPLETE` and `Blockers = None` are consistent.
- Artifact-scope check: This producer writes only
  `perspective_2/idea_1/proof_steps/step_004/proof.md` and does not modify any
  setting, sketch, diagnostic, dependency, review, tracker, log, downstream,
  assembly, or accepted-result artifact.
