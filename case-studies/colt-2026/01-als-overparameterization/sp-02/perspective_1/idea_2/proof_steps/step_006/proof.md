# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the exact unconstrained first-update outside-span formulas and residual decomposition showing that the fixed witness does not transfer to unconstrained ALS/GD without a new outside-span control or endogenous witness.
- Depends on: `step_001`, `step_003`.
- Assumptions used: Primitive algorithm comparison only; no new theorem-facing assumption.
- Technical challenge: State a rigorous scope gap without claiming that unconstrained methods always escape, succeed, or fail.
- Intended proof tool or cited result: Direct gradient and least-squares update algebra; exact orthogonal residual decomposition.
- Output target: Non-transfer certificate and explicit remaining source gap.
- Rate objective: None; this is a scope/interface diagnostic, not a quantitative theorem extension.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - None are used directly. The finite-dimensional CP objective, mode-1 matricization convention, Khatri--Rao product, and method-specific Gaussian initializations are definitions from `setting.md`.
  - The unconstrained comparison updates below are the exact one-step procedures fixed by the accepted sketch: Euclidean gradient descent in the full factor variables and the minimum-Frobenius-norm unconstrained ALS (X)-block minimizer. They are comparison definitions, not new theorem-facing assumptions.
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_001`, certified by its matching `review.md`, proves Proposition~\ref{prop:step-001-fixed-span}: for each constrained method and every defined iterate,
    \[
    S_t^M\in\mathcal H_M,
    \qquad
    (I-P_{\mathcal H_M})S_t^M=0.
    \]
    It also proves that the initialization span is a genuine (k)-plane almost surely.
  - Accepted `step_003`, certified by its matching `review.md`, proves Proposition~\ref{prop:step-003-pythagorean-floor}: whenever the represented tensor remains in the fixed subspace,
    \[
    \|T-S_t^M\|_F^2
    =\|(I-P_{\mathcal H_M})T\|_F^2
    +\|P_{\mathcal H_M}T-S_t^M\|_F^2,
    \]
    and hence (F_M(t)\ge \frac12\|(I-P_{\mathcal H_M})T\|_F^2). Its Lemma~\ref{lem:step-003-fixed-witness} verifies the normalized fixed witness only when the fixed residual is nonzero.
- Local conditional hypotheses:
  - For a normalized fixed or endogenous witness, the tensor being normalized is required to have positive Frobenius norm. No witness is defined on a zero-denominator branch.
  - The unconstrained GD identity holds for every finite step size \(\eta_0\); an actual nontrivial GD step normally has \(\eta_0>0\), but positivity is not needed for the algebra.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the accepted initialization-span certificate from Lemma~\ref{lem:step-001-full-rank}, fix an initial triple \((X_0,Y_0,Z_0)\), let \(P_0\) project onto \(\operatorname{range}(X_0)\), and set \(K_0=Z_0\odot Y_0\). The first unconstrained GD and minimum-norm ALS (X)-updates satisfy exactly \((I-P_0)X_1^{\mathrm{uGD}}=\eta_0(I-P_0)T_{(1)}K_0\) and \((I-P_0)X_1^{\mathrm{uALS}}=(I-P_0)T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger\). | Identifies the forcing terms that replace exact fixed-span enforcement at the first unconstrained update. |
| `unit_002` | proposition | For any fixed initialization projector \(\Pi_0=P_0\otimes I_n\otimes I_n\) and any represented tensor \(S_t\), define \(R_0=(I-\Pi_0)T\) and \(\Lambda_t=(I-\Pi_0)S_t\). Then \(T-S_t=(R_0-\Lambda_t)+(\Pi_0T-\Pi_0S_t)\) is an orthogonal decomposition, so \(\|T-S_t\|_F^2=\|R_0-\Lambda_t\|_F^2+\|\Pi_0T-\Pi_0S_t\|_F^2\); moreover \(\Lambda_t=S((I-P_0)X_t,Y_t,Z_t)\). | Gives the exact same-target residual comparison and exposes the generated outside-span tensor component omitted by the constrained witness identity. |
| `unit_003` | claim | Under Propositions~\ref{prop:step-006-first-update} and \ref{prop:step-006-residual-decomposition} and the accepted constrained interfaces, the fixed witness yields only \(\langle W_0,T-S_t\rangle_F=\|R_0\|_F-\langle W_0,\Lambda_t\rangle_F\). A positive fixed fraction requires new control of \(\Lambda_t\), while the normalized vector along \(R_0-\Lambda_t\), when nonzero, is endogenous and still requires a lower bound on its norm. No such control is supplied by the dependencies. | Proves the exact non-transfer certificate while making no claim about the eventual behavior of unconstrained ALS or GD. |

Atomic step = no. The first-update factor algebra, the ambient tensor residual decomposition, and the logical scope consequence are separate auditable obligations.

## Cited Result Applications

No external paper result is used. The accepted dependency results and elementary finite-dimensional identities are applied as follows.

1. **Accepted dependency: fixed-span preservation.**
   - Source: Proposition~\ref{prop:step-001-fixed-span} in accepted `step_001`.
   - Restated statement: for each constrained method, the displayed (Q_M)-parameterization gives (S_t^M\in\mathcal H_M) and zero outside-span leakage at every defined iterate.
   - Instantiated objects: at initialization, (P_0=P_{\mathcal S_M}) and \(\Pi_0=P_{\mathcal H_M}\).
   - Required assumptions and discharge: the primitive dimension, rank-window, and joint-initialization conditions were discharged in accepted `step_001`; this step uses only its certified conclusion.
   - Conclusion used: the constrained proof has the exact source \(\Lambda_t=0\), against which the unconstrained updates are compared.

2. **Accepted dependency: Pythagorean floor and fixed witness.**
   - Source: Proposition~\ref{prop:step-003-pythagorean-floor} and Lemma~\ref{lem:step-003-fixed-witness} in accepted `step_003`.
   - Restated statement: if \(\Lambda_t=(I-\Pi_0)S_t=0\), then the actual residual splits as (R_0+(\Pi_0T-S_t)\), yielding the fixed floor; if \(\|R_0\|_F>0\), (W_0=R_0/\|R_0\|_F\) pairs with every residual by exactly \(\|R_0\|_F\).
   - Instantiated objects: the same realized target, initialization span, tensor projector, Frobenius geometry, and represented tensor as in the comparison below.
   - Required assumptions and discharge: exact membership is supplied by accepted `step_001`; accepted `step_003` discharges the orthogonal decomposition and normalization conditions.
   - Conclusion used: the fixed-witness floor depends essentially on zero leakage, rather than only on the choice of an initialization projector.

3. **Matrix least-squares and gradient identities.**
   - Restated statement: for \(\phi(X)=\frac12\|A-XK^{\mathsf T}\|_F^2\),
     \[
     \nabla\phi(X)=(XK^{\mathsf T}-A)K,
     \]
     and the minimum-Frobenius-norm least-squares minimizer is
     \[
     X_\star=A(K^{\mathsf T})^\dagger
     =AK(K^{\mathsf T}K)^\dagger.
     \]
   - Instantiated objects: \(A=T_{(1)}\), \(K=K_0=Z_0\odot Y_0\).
   - Required assumptions: only finite matrix dimensions; no rank or conditioning assumption on (K_0).
   - Assumption discharge: all matrices are finite by the setting. Proposition~\ref{prop:step-006-first-update} proves both identities directly by a directional derivative and an SVD calculation.
   - Conclusion used: the two exact first-update formulas.

4. **Orthogonal-projector decomposition.**
   - Restated statement: if \(\Pi\) is an orthogonal projector, then \((I-\Pi)u\perp\Pi v\) for all (u,v), and every vector is the sum of its projected and complementary components.
   - Instantiated objects: the ambient tensor Frobenius space and \(\Pi=\Pi_0\).
   - Required assumptions and discharge: \(\Pi_0=P_0\otimes I_n\otimes I_n\) is the orthogonal projector onto \(\operatorname{range}(X_0)\otimes\mathbb R^n\otimes\mathbb R^n\).
   - Conclusion used: Proposition~\ref{prop:step-006-residual-decomposition} and its exact squared-norm identity.

Proposition~\ref{prop:step-006-first-update} and Proposition~\ref{prop:step-006-residual-decomposition} are then used by Claim~\ref{claim:step-006-nontransfer}. The target-step assembly cites all three named local results together with the two accepted dependency interfaces.

## Local Derivation

### unit_001: proposition

**Proposition (Exact first-update leakage for unconstrained GD and ALS).** \label{prop:step-006-first-update}

Under the accepted initialization-span certificate from Lemma~\ref{lem:step-001-full-rank}, fix either method-specific initial triple and suppress its method superscript. Let
\[
\mathcal S_0=\operatorname{range}(X_0),
\qquad
P_0=P_{\mathcal S_0},
\qquad
K_0=Z_0\odot Y_0.
\]
For one full-variable Euclidean unconstrained GD step, whose (X)-component is
\[
X_1^{\mathrm{uGD}}
=X_0-\eta_0\nabla_XF(X_0,Y_0,Z_0),
\]
one has
\[
\boxed{
(I-P_0)X_1^{\mathrm{uGD}}
=\eta_0(I-P_0)T_{(1)}K_0.}
\]
For the minimum-Frobenius-norm unconstrained ALS (X)-block update at the same initial (Y_0,Z_0),
\[
X_1^{\mathrm{uALS}}
=T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger,
\]
one has
\[
\boxed{
(I-P_0)X_1^{\mathrm{uALS}}
=(I-P_0)T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger.}
\]
Thus fixed-span preservation at the first unconstrained (X)-update is equivalent to the vanishing of the displayed forcing term for that update; it is not an algebraic consequence of (X_0\in\mathcal S_0\).

**Proof / justification.** With the setting's fixed Khatri--Rao ordering, the mode-1 matricization of the represented tensor is
\[
S(X,Y_0,Z_0)_{(1)}=XK_0^{\mathsf T}.
\]
Hence, as a function of (X),
\[
F(X,Y_0,Z_0)=\frac12\|T_{(1)}-XK_0^{\mathsf T}\|_F^2.
\]
For any perturbation (H\in\mathbb R^{n\times k}\), the directional derivative is
\[
\begin{aligned}
\frac{d}{d\epsilon}F(X+\epsilon H,Y_0,Z_0)\bigg|_{\epsilon=0}
&=\langle XK_0^{\mathsf T}-T_{(1)},HK_0^{\mathsf T}\rangle_F\\
&=\langle (XK_0^{\mathsf T}-T_{(1)})K_0,H\rangle_F.
\end{aligned}
\]
Therefore
\[
\nabla_XF(X_0,Y_0,Z_0)
=X_0K_0^{\mathsf T}K_0-T_{(1)}K_0.
\]
Substitution into the GD update gives
\[
X_1^{\mathrm{uGD}}
=X_0(I_k-\eta_0K_0^{\mathsf T}K_0)
+\eta_0T_{(1)}K_0.
\]
Because (P_0) projects onto \(\operatorname{range}(X_0)\),
\((I-P_0)X_0=0\). Left multiplication by (I-P_0) proves the first boxed identity. This calculation is unchanged if the (Y)- and (Z)-components are updated simultaneously, because it concerns the (X)-component of the gradient at the common initial triple.

For ALS, take an SVD (K_0=U\Sigma V^{\mathsf T}\). Rowwise orthogonal least squares, or direct SVD substitution, shows that the minimum-Frobenius-norm minimizer of
\(\|T_{(1)}-XK_0^{\mathsf T}\|_F\) is
\[
T_{(1)}(K_0^{\mathsf T})^\dagger.
\]
The SVD also gives
\[
(K_0^{\mathsf T})^\dagger
=U\Sigma^\dagger V^{\mathsf T}
=K_0(K_0^{\mathsf T}K_0)^\dagger,
\]
including when (K_0) is rank deficient or zero. This proves the displayed ALS update. Applying (I-P_0) to it proves the second boxed identity.

The formulas identify exact vanishing conditions. They do not assert that either right-hand side is always nonzero: it may vanish because (K_0=0\), because the target contraction lies in \(\mathcal S_0\), because of rank deficiency, or by accidental cancellation. Conversely, neither unconstrained update contains the left (P_0\) or (Q_0\) factor that made the constrained dependency's zero-leakage conclusion automatic. \(\square\)

### unit_002: proposition

**Proposition (Exact outside-span residual decomposition).** \label{prop:step-006-residual-decomposition}

Fix any orthogonal projector (P_0\) on \(\mathbb R^n\), and define
\[
\mathcal H_0=\operatorname{range}(P_0)\otimes\mathbb R^n\otimes\mathbb R^n,
\qquad
\Pi_0=P_0\otimes I_n\otimes I_n.
\]
For arbitrary finite factors (X_t,Y_t,Z_t\), let
\[
S_t=S(X_t,Y_t,Z_t),
\qquad
R_0=(I-\Pi_0)T,
\qquad
\Lambda_t=(I-\Pi_0)S_t.
\]
Then
\[
\boxed{
\Lambda_t=S((I-P_0)X_t,Y_t,Z_t),}
\]
and the actual residual has the exact orthogonal decomposition
\[
\boxed{
T-S_t
=(R_0-\Lambda_t)
+(\Pi_0T-\Pi_0S_t),}
\]
where the first summand belongs to \(\mathcal H_0^\perp\) and the second belongs to \(\mathcal H_0\). Consequently,
\[
\boxed{
\|T-S_t\|_F^2
=\|R_0-\Lambda_t\|_F^2
+\|\Pi_0T-\Pi_0S_t\|_F^2,}
\]
and
\[
F(X_t,Y_t,Z_t)
=\frac12\|R_0-\Lambda_t\|_F^2
+\frac12\|\Pi_0T-\Pi_0S_t\|_F^2.
\]
If \(\|R_0\|_F>0\) and \(W_0=R_0/\|R_0\|_F\), then
\[
\boxed{
\langle W_0,T-S_t\rangle_F
=\|R_0\|_F-\langle W_0,\Lambda_t\rangle_F.}
\]

**Proof / justification.** Write the columns of the factors as (x_{t,i},y_{t,i},z_{t,i}\). Since (I-\Pi_0=(I-P_0)\otimes I_n\otimes I_n\),
\[
\begin{aligned}
(I-\Pi_0)S_t
&=\sum_{i=1}^k ((I-P_0)x_{t,i})\otimes y_{t,i}\otimes z_{t,i}\\
&=S((I-P_0)X_t,Y_t,Z_t),
\end{aligned}
\]
which proves the first boxed identity. In particular, factor leakage is the exact source of tensor leakage, although nonzero leaking factor columns may still cancel in the represented tensor; no converse is asserted.

Insert (I=\Pi_0+(I-\Pi_0)\) separately on (T\) and (S_t\):
\[
\begin{aligned}
T-S_t
&=(I-\Pi_0)T-(I-\Pi_0)S_t
  +\Pi_0T-\Pi_0S_t\\
&=(R_0-\Lambda_t)+(\Pi_0T-\Pi_0S_t).
\end{aligned}
\]
The complementary projector places (R_0-\Lambda_t\) in \(\mathcal H_0^\perp\), while \(\Pi_0T-\Pi_0S_t\in\mathcal H_0\). Their Frobenius inner product is therefore zero. Expanding the squared norm proves the Pythagorean equality and, after multiplying by the objective coefficient (1/2\), the exact objective identity.

In the branch \(\|R_0\|_F>0\), (W_0\in\mathcal H_0^\perp\) is a unit tensor. It is orthogonal to the in-span residual, so
\[
\begin{aligned}
\langle W_0,T-S_t\rangle_F
&=\langle W_0,R_0-\Lambda_t\rangle_F\\
&=\|R_0\|_F-\langle W_0,\Lambda_t\rangle_F,
\end{aligned}
\]
as claimed. No sign is available for the last inner product from orthogonal projection alone. \(\square\)

### unit_003: claim

**Claim (Fixed-witness non-transfer certificate).** \label{claim:step-006-nontransfer}

Under accepted Proposition~\ref{prop:step-001-fixed-span}, accepted Proposition~\ref{prop:step-003-pythagorean-floor}, and Propositions~\ref{prop:step-006-first-update} and \ref{prop:step-006-residual-decomposition}, the constrained fixed-witness proof does not transfer to the unconstrained comparison dynamics from the current dependency interface alone. More precisely:

1. In the constrained methods, accepted Proposition~\ref{prop:step-001-fixed-span} gives \(\Lambda_t=0\), so accepted Proposition~\ref{prop:step-003-pythagorean-floor} recovers the fixed term \(\|R_0\|_F^2\) exactly.
2. In either unconstrained comparison, Proposition~\ref{prop:step-006-first-update} shows that even the first (X)-update preserves \(\operatorname{range}(X_0)\) only under an additional vanishing relation for its displayed forcing term. Proposition~\ref{prop:step-006-residual-decomposition} therefore supplies only
   \[
   F(X_t,Y_t,Z_t)
   \ge \frac12\|R_0-\Lambda_t\|_F^2
   \ge \frac12\bigl(\max\{\|R_0\|_F-\|\Lambda_t\|_F,0\}\bigr)^2.
   \]
3. For example, an additional outside-span control
   \[
   \|\Lambda_t\|_F\le\gamma\|R_0\|_F
   \qquad\text{for some }0\le\gamma<1
   \]
   would imply the fixed-fraction floor
   \[
   F(X_t,Y_t,Z_t)
   \ge\frac12(1-\gamma)^2\|R_0\|_F^2.
   \]
   Neither accepted dependency proves such a bound for unconstrained iterates.
4. If (R_0-\Lambda_t\ne0\), the endogenous tensor
   \[
   \widetilde W_t
   :=\frac{R_0-\Lambda_t}{\|R_0-\Lambda_t\|_F}
   \in\mathcal H_0^\perp
   \]
   satisfies
   \[
   \langle\widetilde W_t,T-S_t\rangle_F
   =\|R_0-\Lambda_t\|_F.
   \]
   It depends on the generated iterate and yields a positive theorem-facing floor only if a separate argument lower-bounds \(\|R_0-\Lambda_t\|_F\). No such endogenous-witness argument is a branch output.

These statements certify absence of the constrained proof interface only. They do not assert that \(\Lambda_t\) is always nonzero, that cancellation \(\Lambda_t\approx R_0\) occurs along either unconstrained trajectory, or that unconstrained ALS/GD succeeds or fails.

**Proof / justification.** The constrained statement is exactly the specialization \(\Lambda_t=0\) of Proposition~\ref{prop:step-006-residual-decomposition}, with zero leakage supplied by accepted Proposition~\ref{prop:step-001-fixed-span}; it reproduces accepted Proposition~\ref{prop:step-003-pythagorean-floor}.

For an unconstrained represented tensor, drop only the nonnegative in-span squared term in Proposition~\ref{prop:step-006-residual-decomposition}. The reverse triangle inequality gives
\[
\|R_0-\Lambda_t\|_F
\ge\max\{\|R_0\|_F-\|\Lambda_t\|_F,0\},
\]
which proves the displayed lower bound. Substituting the stated conditional control by \(\gamma\) proves the fixed-fraction implication. This is a conditional illustration of the missing interface, not an assumption used to complete this diagnostic.

For the endogenous tensor, normalization is legal precisely when (R_0-\Lambda_t\ne0\). Both \(R_0\) and \(\Lambda_t\) lie in \(\mathcal H_0^\perp\), so the normalized difference also lies there and is orthogonal to \(\Pi_0T-\Pi_0S_t\). Pairing it with the exact residual decomposition gives the displayed identity. Its right-hand side can be zero or arbitrarily smaller than \(\|R_0\|_F\) unless a new trajectory-dependent control is proved.

Finally, Proposition~\ref{prop:step-006-first-update} proves that unconstrained zero leakage is not enforced by the update definition: it requires an additional equality involving (T_{(1)}K_0\) and, for ALS, the pseudoinverse factor. Accidental first-step vanishing does not establish an all-time invariant. Thus the accepted dependencies plus the exact comparison algebra establish the non-transfer certificate and nothing stronger. \(\square\)

### Boundary and degenerate cases

- **Zero target:** if (T=0\), then (R_0=0\), both first-update forcing terms vanish for the displayed minimum-norm ALS and GD comparisons, and no normalized fixed witness is defined. The diagnostic makes no failure claim in this baseline case.
- **Zero or singular Khatri--Rao design:** if (K_0=0\), both outside-span first-update terms vanish. If (K_0\) is singular, the Moore--Penrose formula remains exact. Neither case creates an all-time unconstrained conservation theorem.
- **Accidental first-step preservation:** either displayed forcing term may vanish for a particular target and initialization. The proposition states an exact equality, not an almost-sure escape claim; one preserved step does not imply that later unconstrained updates preserve the span.
- **Factor leakage versus tensor leakage:** nonzero \((I-P_0)X_t\) need not force nonzero \(\Lambda_t\) because rank-one terms may vanish or cancel. Proposition~\ref{prop:step-006-residual-decomposition} keeps the exact tensor quantity \(\Lambda_t\), so no converse is used.
- **Exact cancellation in the complement:** the algebra permits (R_0-\Lambda_t=0\). This observation only shows why the projector identity alone cannot yield the old floor; it does not assert that an unconstrained trajectory reaches such a state.
- **Zero fixed residual:** if \(R_0=0\), the old normalized witness is unavailable and the constrained floor is zero. The decomposition remains valid without division.
- **Literal full-span boundary:** if (P_0=I_n\), then \(\Pi_0=I\), (R_0=\Lambda_t=0\), and all outside-span identities reduce to zero. The current branch has (k<n\), but the algebra itself remains valid.
- **Endogenous zero denominator:** if (R_0=\Lambda_t\), \(\widetilde W_t\) is not defined. The exact residual decomposition still holds and places the whole residual in \(\mathcal H_0\).
- **Exact/noiseless specialization:** no smoothing error appears in any identity. The scope gap is the absence of unconstrained span control, not a smoothing-transfer defect.

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-fixed-span} identifies the exact constrained mechanism: every represented tensor has zero leakage from its method-specific fixed initialization tensor subspace. Accepted Proposition~\ref{prop:step-003-pythagorean-floor} then converts that equality into the fixed same-target residual floor and, on the nonzero branch, the time-independent witness identity.

Proposition~\ref{prop:step-006-first-update} computes the corresponding unconstrained first updates without approximation:
\[
(I-P_0)X_1^{\mathrm{uGD}}
=\eta_0(I-P_0)T_{(1)}K_0,
\qquad
(I-P_0)X_1^{\mathrm{uALS}}
=(I-P_0)T_{(1)}K_0(K_0^{\mathsf T}K_0)^\dagger.
\]
Their vanishing is an additional relation, not an enforced parameterization. Proposition~\ref{prop:step-006-residual-decomposition} then accounts for every component of the actual unconstrained residual:
\[
(I-\Pi_0)(T-S_t)=R_0-\Lambda_t,
\qquad
\Lambda_t=(I-\Pi_0)S_t,
\]
and proves the exact orthogonal squared-norm decomposition. Claim~\ref{claim:step-006-nontransfer} shows that the old fixed witness acquires the uncontrolled subtraction
\[
\langle W_0,T-S_t\rangle_F
=\|R_0\|_F-\langle W_0,\Lambda_t\rangle_F.
\]
It also states precisely the missing alternatives: a new outside-span control that dominates \(\Lambda_t\) at the (R_0\) scale, or an endogenous witness together with a new lower bound on its generated residual norm.

These named results prove the exact `step_006` sketch claim. The output is only a non-transfer and scope certificate. It does not conclude that unconstrained ALS or GD leaves the span on every instance, nor that either method succeeds or fails asymptotically.

## Explicit Rate Audit

None. This step is not rate-bearing. The illustrative parameter \(\gamma<1\) appears only in a conditional statement identifying one sufficient missing interface; it is neither assumed nor exported as a theorem constant.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined objects: (T\), (T_{(1)}\), (S(X,Y,Z)\), (F(X,Y,Z)\), and (K_0=Z_0\odot Y_0\) use exactly the branch's matricization, Khatri--Rao, and Frobenius conventions.
- Accepted dependency objects: the method-specific initialization span and tensor subspace from `step_001`, and the fixed residual/witness interface from `step_003`, are translated here by suppressing the method superscript during one unconstrained comparison.
- `appendix-local` helper objects:
  - (P_0\), the orthogonal projector onto the selected comparison initialization span;
  - \(\mathcal H_0\) and \(\Pi_0=P_0\otimes I_n\otimes I_n\), aliases for the same fixed first-mode tensor subspace and projector used by the dependencies;
  - (R_0=(I-\Pi_0)T\), the accepted fixed residual rewritten with initialization notation;
  - \(\Lambda_t=(I-\Pi_0)S_t\), the exact generated outside-span represented component.
- `proof-local` helper objects:
  - (H\), used only for the GD directional derivative;
  - the SVD factors (U,\Sigma,V\), used only to verify the rank-deficient minimum-norm ALS formula;
  - \(\gamma\), used only in a conditional sufficient-control illustration and not assumed;
  - \(\widetilde W_t\), used only to state what an endogenous witness would be when its denominator is nonzero.
- Public-facing interface: no new theorem object is exported. The sole downstream-facing conclusion is the scope statement that the constrained fixed-witness proof has no unconstrained transfer without a new control of \(\Lambda_t\) or a separately controlled endogenous witness.
- Constant provenance: the objective coefficient (1/2\) comes from `setting.md`. The conditional \(\gamma\) is an explicitly stated local hypothesis inside Claim~\ref{claim:step-006-nontransfer}, not a free branch constant, threshold, or claimed bound.
- Assumption provenance: constrained zero leakage is a derived invariant supplied by accepted `step_001`; the constrained Pythagorean floor is supplied by accepted `step_003`; the unconstrained first-update and residual identities are proved directly here. No unconstrained boundedness, recurrence, persistence, cancellation, escape, or convergence property is assumed.
- Source-convention and residual-to-target audit: all comparisons use the same realized (T\), initialization span, Euclidean first-mode projector, ambient tensor Frobenius norm, and actual CP residual. The only new residual term is the exact same-target quantity \(\Lambda_t\); no population, smoothed-versus-base, whitened, weighted, or surrogate object appears.
- Scope and accumulation audit: the first-update formulas are fixed-time identities. Beyond that first update, \(\Lambda_t\) has unknown sign, size, and accumulation behavior under the present dependencies. This is recorded as an absent interface, not promoted to an all-time defect or failure theorem.
- Generated-output flow: accepted `step_001` and `step_003` produce the constrained mechanism and floor; this step produces the non-transfer certificate consumed only by the final theorem's constrained-scope statement.
- Global diagnostic use: `global_proof.md` was not read or used as evidence, a cited result, an assumption source, or authority to change the accepted step claim.
