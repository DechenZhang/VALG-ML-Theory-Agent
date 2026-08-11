# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove digit inactivity, magnitude, top support, and fine/coarse pathwise activation sums.
- Depends on: `step_004`, `step_005`, `step_006`.
- Assumptions used: None beyond definitions.
- Technical challenge: Two-scale cells and rare-tail accumulation.
- Intended proof tool or cited result: Stable margins and geometric sums.
- Output target: Activation/support certificate.
- Rate objective: Moment-compatible scale budget.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: None beyond the setting domains and definitions. The proof uses only \(k>1\), \(\sigma>0\), \(h_j>0\), \(h_{j+1}=2h_j\), \(H=h_J\), and the setting definitions of \(\mathcal J_{\mathrm f}\), \(\mathcal J_{\mathrm c}\), \(D_j^c\), and \(R_H^c\). No localization, moment, support, or probability condition is assumed.
- Accepted dependency: `perspective_1/idea_1/proof_steps/step_004/proof.md` (SHA-256 `5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153`) together with its `ACCEPTED` review (SHA-256 `e1cb7b1487f0fc30985da9c01fd7e6424a1805f54d210ba3bd400bf733093d25`). This pair supplies the unique selected quantizers and, for every \(0\leq \ell\leq J\), the exact closed-radius implication

  \[
  |x-c|\leq \frac{3h_\ell}{8}
  \quad\Longrightarrow\quad
  Q_\ell^c(x)=Q_\ell^c(c),
  \]

  including the left-closed/right-open endpoint and candidate-grid boundary trace.
- Accepted dependency: `perspective_1/idea_1/proof_steps/step_005/proof.md` (SHA-256 `a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239`) together with its `ACCEPTED` review (SHA-256 `11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6`). This pair supplies, for every selected digit and every real input \(y\),

  \[
  -h_j<D_j^c(y)<2h_j,
  \]

  with both strict endpoints audited at all shifted-grid boundaries.
- Accepted dependency: `perspective_1/idea_1/proof_steps/step_006/proof.md` (SHA-256 `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58`) together with its `ACCEPTED` review (SHA-256 `df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`). This pair supplies the exact top residual \(R_H^c(x)=Q_J^c(x)-Q_J^c(c)\), retains it in the displacement interface, and proves the exact zero-displacement identities.
- Derived invariants supplied by accepted dependencies: selected-cell stability at scales \(j\), \(j+1\), and \(J\); strict selected-digit boundedness; and the exact top-residual and zero-displacement interfaces. These are accepted deterministic conclusions, not primitive conditions.
- Local conditional hypotheses: None. The variables \(c,x\) and finite index subsets below are universally quantified deterministic objects.

For compactness, define the appendix-local abbreviation

\[
\Delta_j^c(x):=D_j^c(x)-D_j^c(c),
\qquad 0\leq j<J.
\]

For fixed \(c,x\), write the proof-local abbreviation \(R=|x-c|\). Define

\[
C_k^{\mathrm{act}}
:=\frac{3(8/3)^k}{1-2^{-k}}.
\]

Its finiteness follows from \(k>1\), and Proposition~\ref{prop:step-007-coarse-ledger} proves its adequacy rather than assuming it.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the accepted exact selected-cell margin and top-residual interface, for every \(c,x\in\mathbb R\), \(\Delta_j^c(x)=0\) when \(R\leq3h_j/8\), and \(R_H^c(x)=0\) when \(R\leq3H/8\), with equality included. | Proves two-scale digit inactivity and exact top support, including half-open boundary cases. |
| `unit_002` | lemma | Under the accepted strict digit range and Lemma~\ref{lem:step-007-stable-support}, every centered digit satisfies \(-3h_j<\Delta_j^c(x)<3h_j\), and \(\Delta_j^c(x)\neq0\) implies \(h_j<8R/3\). | Proves magnitude and the strict active-scale cutoff. |
| `unit_003` | lemma | Under the dyadic law \(h_j=2^jh_0\), every finite collection of scales below a threshold has an explicit geometric power sum independent of its cardinality. | Supplies the finite accumulation mechanism. |
| `unit_004` | proposition | Under Lemmas~\ref{lem:step-007-digit-envelope} and~\ref{lem:step-007-dyadic-cutoff}, for every \(c,x\), \(\sum_{j\in\mathcal J_{\mathrm f}}|\Delta_j^c(x)|\leq16\min\{R,\sigma\}\). | Exports the count-free fine activation interface. |
| `unit_005` | proposition | Under Lemmas~\ref{lem:step-007-digit-envelope} and~\ref{lem:step-007-dyadic-cutoff}, for every \(c,x\), \(\sum_{j\in\mathcal J_{\mathrm c}}h_j^{k-1}|\Delta_j^c(x)|\leq C_k^{\mathrm{act}}R^k\). | Exports the moment-compatible coarse activation interface. |

Atomic step = no. Two-scale support, strict digit magnitude, geometric summation, and the fine and coarse ledgers are independent nontrivial obligations.

## Cited Result Applications

No external paper result or unproved standard theorem is used. The geometric series is derived explicitly in Lemma~\ref{lem:step-007-dyadic-cutoff}.

1. **Accepted exact selected-cell margin and boundary trace.** Proposition~\ref{prop:step-004-cell-margin} and Lemma~\ref{lem:step-004-boundary-trace} in the current accepted `step_004` pair state that \(Q_\ell^c\) is constant on \([c-3h_\ell/8,c+3h_\ell/8]\). A possible equality occurs only at the included left boundary; the right comparison is strict. A center on any candidate grid is the midpoint of the uniquely selected opposite-shift cell. Scale positivity was discharged in that dependency. Lemma~\ref{lem:step-007-stable-support} instantiates this result at \(\ell=j,j+1,J\).
2. **Accepted strict selected-digit range.** Lemma~\ref{lem:step-005-digit-range} in the current accepted `step_005` pair gives \(-h_j<D_j^c(y)<2h_j\) for every real \(y\), including all boundaries of either selected grid. Lemma~\ref{lem:step-007-digit-envelope} applies it at \(y=x,c\).
3. **Accepted exact top residual and zero displacement.** Proposition~\ref{prop:step-006-residual-interface} and Lemma~\ref{lem:step-006-zero-displacement} in the current accepted `step_006` pair give \(R_H^c(x)=Q_J^c(x)-Q_J^c(c)\) and exact vanishing of every \(\Delta_j^c(c)\) and \(R_H^c(c)\). The first identifies the top object in Lemma~\ref{lem:step-007-stable-support}; the second supplies the inherited baseline audit.
4. **Stable two-scale inactivity and top support.** Lemma~\ref{lem:step-007-stable-support}, under items 1 and 3, proves inclusive inactivity and support-indicator identities. It is used by Lemma~\ref{lem:step-007-digit-envelope} and the target assembly.
5. **Strict digit envelope and activation cutoff.** Lemma~\ref{lem:step-007-digit-envelope}, under item 2 and Lemma~\ref{lem:step-007-stable-support}, proves strict magnitude and the supported envelope \(3h_j\mathbf 1\{h_j<8R/3\}\). Both ledger propositions use it.
6. **Finite dyadic cutoff summation.** Lemma~\ref{lem:step-007-dyadic-cutoff} follows directly from \(h_j=2^jh_0\). Proposition~\ref{prop:step-007-fine-ledger} uses it with exponent \(1\), and Proposition~\ref{prop:step-007-coarse-ledger} uses it with exponent \(k\).
7. **Fine and coarse ledgers.** Proposition~\ref{prop:step-007-fine-ledger} exports the constant-\(16\) fine sum. Proposition~\ref{prop:step-007-coarse-ledger} exports the exact \(C_k^{\mathrm{act}}\) weighted sum. Their assumptions are discharged by items 5 and 6.

## Local Derivation

### unit_001: lemma

**Lemma (Stable two-scale digit inactivity and top-cell support).** \(\label{lem:step-007-stable-support}\)
Under Proposition~\ref{prop:step-004-cell-margin}, Lemma~\ref{lem:step-004-boundary-trace}, and the exact top-residual interface in Proposition~\ref{prop:step-006-residual-interface}, fix \(c,x\in\mathbb R\) and put \(R=|x-c|\). Then, for every \(0\leq j<J\),

\[
R\leq\frac{3h_j}{8}
\quad\Longrightarrow\quad
\Delta_j^c(x)=0.
\]

Equivalently,

\[
\Delta_j^c(x)
=\Delta_j^c(x)\mathbf 1\!\left\{R>\frac{3h_j}{8}\right\}.
\]

At the top scale,

\[
R\leq\frac{3H}{8}
\quad\Longrightarrow\quad
R_H^c(x)=0,
\qquad
R_H^c(x)
=R_H^c(x)\mathbf 1\!\left\{R>\frac{3H}{8}\right\}.
\]

These implications include equality for both displacement signs and remain valid when \(c\) or \(x\) is a shifted-grid boundary.

**Proof / justification.**
Fix \(0\leq j<J\) and suppose \(R\leq3h_j/8\). Proposition~\ref{prop:step-004-cell-margin} at scale \(j\) gives

\[
Q_j^c(x)=Q_j^c(c).
\]

The digit also uses scale \(j+1\). Since \(h_{j+1}=2h_j\),

\[
R\leq\frac{3h_j}{8}
<\frac{3h_{j+1}}{8}
=\frac{3h_j}{4},
\]

so the same accepted proposition at scale \(j+1\) gives \(Q_{j+1}^c(x)=Q_{j+1}^c(c)\). Therefore

\[
\begin{aligned}
\Delta_j^c(x)
&=\bigl(Q_j^c(x)-Q_{j+1}^c(x)\bigr)
  -\bigl(Q_j^c(c)-Q_{j+1}^c(c)\bigr)\\
&=0.
\end{aligned}
\]

The support-indicator identity follows by splitting into \(R\leq3h_j/8\) and \(R>3h_j/8\).

At scale \(J\), \(h_J=H\). If \(R\leq3H/8\), Proposition~\ref{prop:step-004-cell-margin} gives \(Q_J^c(x)=Q_J^c(c)\). Proposition~\ref{prop:step-006-residual-interface} then gives \(R_H^c(x)=0\), and the top support-indicator identity follows.

At \(R=3h_j/8\), the accepted scale-\(j\) cell contains both endpoints of the closed stable radius: a possible equality is at its included left boundary, while the positive endpoint is strictly below the excluded right boundary. The same displacement is strictly inside the scale-\(j+1\) radius \(3h_j/4\). The identical left-included/right-strict argument handles \(R=3H/8\). Lemma~\ref{lem:step-004-boundary-trace} shows that a center on any candidate grid is the midpoint of the selected opposite-shift cell, including for negative grid indices. At \(x=c\), \(R=0\), and every conclusion is exactly zero, consistently with Lemma~\ref{lem:step-006-zero-displacement}. \(\square\)

### unit_002: lemma

**Lemma (Strict centered-digit envelope and active-scale cutoff).** \(\label{lem:step-007-digit-envelope}\)
Under the accepted Lemma~\ref{lem:step-005-digit-range} and Lemma~\ref{lem:step-007-stable-support}, fix \(c,x\in\mathbb R\), put \(R=|x-c|\), and let \(0\leq j<J\). Then

\[
-3h_j<\Delta_j^c(x)<3h_j,
\qquad
|\Delta_j^c(x)|<3h_j.
\]

Moreover,

\[
\Delta_j^c(x)\neq0
\quad\Longrightarrow\quad
R>\frac{3h_j}{8},
\qquad
R>\frac{3h_j}{8}
\quad\Longleftrightarrow\quad
h_j<\frac{8R}{3},
\]

and

\[
|\Delta_j^c(x)|
\leq3h_j\mathbf 1\!\left\{R>\frac{3h_j}{8}\right\}
=3h_j\mathbf 1\!\left\{h_j<\frac{8R}{3}\right\}.
\]

In particular, a level with \(R=3h_j/8\) is inactive.

**Proof / justification.**
Because \(D_j^c=F_{j,a_j(c),a_{j+1}(c)}\), Lemma~\ref{lem:step-005-digit-range} gives

\[
-h_j<D_j^c(y)<2h_j
\qquad (y=x,c).
\]

Thus

\[
D_j^c(x)-D_j^c(c)>-h_j-2h_j=-3h_j,
\qquad
D_j^c(x)-D_j^c(c)<2h_j-(-h_j)=3h_j.
\]

This proves the strict magnitude. It remains true at any grid boundary because the accepted range proof resets the appropriate half-open floor remainder to zero and excludes both digit endpoints.

The contrapositive of Lemma~\ref{lem:step-007-stable-support} gives \(\Delta_j^c(x)\neq0\Rightarrow R>3h_j/8\). Since \(h_j>0\), the latter is equivalent to \(h_j<8R/3\). When \(R\leq3h_j/8\), the envelope has both sides zero; when \(R>3h_j/8\), strict magnitude implies the asserted non-strict envelope. No converse is claimed: after leaving the stable radius, the centered digit may still vanish by cell constancy or cancellation. \(\square\)

### unit_003: lemma

**Lemma (Finite dyadic cutoff summation).** \(\label{lem:step-007-dyadic-cutoff}\)
Under \(h_j=2^jh_0\) with \(h_0>0\), let \(\alpha>0\) and let \(\mathcal A\) be a finite subset of nonnegative scale indices. If \(\mathcal A\neq\varnothing\) and \(M=\max\mathcal A\), then

\[
\sum_{j\in\mathcal A}h_j^\alpha
\leq\sum_{j=0}^{M}h_j^\alpha
=h_M^\alpha
  \frac{1-2^{-\alpha(M+1)}}{1-2^{-\alpha}}
<\frac{h_M^\alpha}{1-2^{-\alpha}}.
\]

Consequently, if \(h_j<T\) for every \(j\in\mathcal A\), where \(T>0\), then

\[
\sum_{j\in\mathcal A}h_j^\alpha
<\frac{T^\alpha}{1-2^{-\alpha}}.
\]

The same conclusion holds if \(h_j\leq T\) for every \(j\in\mathcal A\). If \(\mathcal A=\varnothing\), its sum is \(0\).

**Proof / justification.**
For nonempty \(\mathcal A\), positivity gives

\[
\sum_{j\in\mathcal A}h_j^\alpha
\leq\sum_{j=0}^{M}h_j^\alpha.
\]

Since \(h_j=2^{j-M}h_M\), the change of variables \(r=M-j\) gives

\[
\sum_{j=0}^{M}h_j^\alpha
=h_M^\alpha\sum_{r=0}^{M}2^{-\alpha r}
=h_M^\alpha
  \frac{1-2^{-\alpha(M+1)}}{1-2^{-\alpha}}.
\]

The denominator is positive and the numerator is strictly less than one. If \(h_M<T\), substitution gives the strict threshold bound. If only \(h_M\leq T\), the already strict finite-geometric-factor inequality still gives a strict bound by \(T^\alpha/(1-2^{-\alpha})\). The empty case is the empty-sum convention. The estimate depends on the largest scale, not on \(|\mathcal A|\). \(\square\)

### unit_004: proposition

**Proposition (Count-free fine activation ledger).** \(\label{prop:step-007-fine-ledger}\)
Under Lemma~\ref{lem:step-007-digit-envelope}, Lemma~\ref{lem:step-007-dyadic-cutoff}, and

\[
\mathcal J_{\mathrm f}
=\{0\leq j<J:h_j\leq\sigma\},
\]

for every \(c,x\in\mathbb R\),

\[
\sum_{j\in\mathcal J_{\mathrm f}}
\left|D_j^c(x)-D_j^c(c)\right|
\leq16\min\{|x-c|,\sigma\}.
\]

This includes an empty fine group, \(h_j=\sigma\), \(x=c\), and any finite number of fine levels, with a constant independent of \(J\).

**Proof / justification.**
Fix \(c,x\), put \(R=|x-c|\), and define

\[
\mathcal A_{\mathrm f}(R)
:=\left\{j\in\mathcal J_{\mathrm f}:h_j<\frac{8R}{3}\right\}.
\]

Lemma~\ref{lem:step-007-digit-envelope} gives

\[
\sum_{j\in\mathcal J_{\mathrm f}}|\Delta_j^c(x)|
\leq3\sum_{j\in\mathcal A_{\mathrm f}(R)}h_j.
\tag{7.1}
\]

If \(R=0\), the cutoff set and both sides of the target inequality are zero. Suppose \(0<R\leq\sigma\). Lemma~\ref{lem:step-007-dyadic-cutoff}, with \(\alpha=1\) and \(T=8R/3\), gives

\[
\sum_{j\in\mathcal A_{\mathrm f}(R)}h_j
<\frac{8R/3}{1-2^{-1}}
=\frac{16R}{3}
\]

when the cutoff set is nonempty; the required non-strict bound is immediate if it is empty. Hence (7.1) gives

\[
\sum_{j\in\mathcal J_{\mathrm f}}|\Delta_j^c(x)|
\leq16R
=16\min\{R,\sigma\}.
\]

Now suppose \(R>\sigma\). If \(\mathcal J_{\mathrm f}\) is empty, the claim is immediate. Otherwise \(h_j\leq\sigma\) for every fine level, and Lemma~\ref{lem:step-007-dyadic-cutoff} with \(\alpha=1\) gives

\[
\sum_{j\in\mathcal J_{\mathrm f}}h_j<2\sigma.
\]

Enlarging the cutoff sum in (7.1) to all fine levels yields

\[
\sum_{j\in\mathcal J_{\mathrm f}}|\Delta_j^c(x)|
<6\sigma
\leq16\sigma
=16\min\{R,\sigma\}.
\]

At \(R=\sigma\), the first case applies. The second case explicitly permits the included transition level \(h_j=\sigma\). No line depends on the number of fine levels. \(\square\)

### unit_005: proposition

**Proposition (Moment-compatible coarse activation ledger).** \(\label{prop:step-007-coarse-ledger}\)
Under \(k>1\), Lemma~\ref{lem:step-007-digit-envelope}, Lemma~\ref{lem:step-007-dyadic-cutoff}, and

\[
\mathcal J_{\mathrm c}
=\{0\leq j<J:h_j>\sigma\},
\]

for every \(c,x\in\mathbb R\),

\[
\sum_{j\in\mathcal J_{\mathrm c}}
h_j^{k-1}\left|D_j^c(x)-D_j^c(c)\right|
\leq C_k^{\mathrm{act}}|x-c|^k,
\qquad
C_k^{\mathrm{act}}
=\frac{3(8/3)^k}{1-2^{-k}}.
\]

This includes an empty coarse group, \(x=c\), the largest sampled level \(j=J-1\), and arbitrarily large \(|x-c|\).

**Proof / justification.**
Fix \(c,x\), put \(R=|x-c|\), and define

\[
\mathcal A_{\mathrm c}(R)
:=\left\{j\in\mathcal J_{\mathrm c}:h_j<\frac{8R}{3}\right\}.
\]

Multiplying the envelope in Lemma~\ref{lem:step-007-digit-envelope} by \(h_j^{k-1}>0\) and summing gives

\[
\sum_{j\in\mathcal J_{\mathrm c}}
h_j^{k-1}|\Delta_j^c(x)|
\leq3\sum_{j\in\mathcal A_{\mathrm c}(R)}h_j^k.
\tag{7.2}
\]

If \(R=0\), the cutoff set is empty and the claim is \(0\leq0\). If \(R>0\), Lemma~\ref{lem:step-007-dyadic-cutoff}, with \(\alpha=k\) and \(T=8R/3\), gives

\[
\sum_{j\in\mathcal A_{\mathrm c}(R)}h_j^k
<\frac{(8R/3)^k}{1-2^{-k}}.
\]

Combining with (7.2),

\[
\sum_{j\in\mathcal J_{\mathrm c}}
h_j^{k-1}|\Delta_j^c(x)|
<\frac{3(8/3)^k}{1-2^{-k}}R^k
=C_k^{\mathrm{act}}R^k,
\]

which implies the stated non-strict bound. The denominator is positive because \(k>1\), so the constant is finite and depends only on \(k\). Empty groups and cutoff sets are covered by the empty-sum convention.

No restriction \(R\leq H\) is used. An arbitrarily distant observation may make every sampled coarse scale eligible, including \(j=J-1\), but those scales remain a finite subset below \(8R/3\) and are charged once to \(R^k\). At \(R=3h_j/8\), that scale is excluded by the strict cutoff and is inactive by Lemma~\ref{lem:step-007-stable-support}. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-007-stable-support} applies the accepted scale-\(j\) and scale-\(j+1\) cell margins to prove

\[
|x-c|\leq\frac{3h_j}{8}
\quad\Longrightarrow\quad
D_j^c(x)-D_j^c(c)=0
\]

for every sampled level, including equality. It applies the scale-\(J\) margin to the exact accepted top residual to prove

\[
|x-c|\leq\frac{3H}{8}
\quad\Longrightarrow\quad
R_H^c(x)=0.
\]

The proof covers both displacement signs, phase endpoints, candidate-grid boundaries, \(j=0\), \(j=J-1\), and the exact \(x=c\) baseline supplied by Lemma~\ref{lem:step-006-zero-displacement}.

Lemma~\ref{lem:step-007-digit-envelope} combines support with the accepted strict digit range to prove

\[
\left|D_j^c(x)-D_j^c(c)\right|<3h_j,
\qquad
\left|D_j^c(x)-D_j^c(c)\right|
\leq3h_j\mathbf1\!\left\{h_j<\frac{8|x-c|}{3}\right\}.
\]

The strict cutoff retains inactivity at \(|x-c|=3h_j/8\). Lemma~\ref{lem:step-007-dyadic-cutoff} then controls accumulation without counting levels. Proposition~\ref{prop:step-007-fine-ledger} gives

\[
\sum_{j\in\mathcal J_{\mathrm f}}
\left|D_j^c(x)-D_j^c(c)\right|
\leq16\min\{|x-c|,\sigma\},
\]

and Proposition~\ref{prop:step-007-coarse-ledger} gives

\[
\sum_{j\in\mathcal J_{\mathrm c}}
h_j^{k-1}\left|D_j^c(x)-D_j^c(c)\right|
\leq
\frac{3(8/3)^k}{1-2^{-k}}|x-c|^k.
\]

Empty fine or coarse groups contribute zero. The fine constant is independent of the number of fine levels, and the coarse estimate remains valid when a rare observation activates every available scale. These results jointly prove every component of the binding sketch row and export exactly the activation/support certificate consumed by the fine-variance, coarse-variance, and top-bias steps. No moment expectation, variance conclusion, localization event, or future bias estimate is imported.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\); \(c,x\) through \(|x-c|\); \(\sigma\); the finite dyadic scales \(h_j\); \(H=h_J\); \(J\); and \(\mathcal J_{\mathrm f},\mathcal J_{\mathrm c}\).
- Hidden constants may depend on: None. The fine constant is exactly \(16\), and the coarse constant is exactly \(C_k^{\mathrm{act}}=3(8/3)^k/(1-2^{-k})\).
- Hidden constants may not depend on: \(c,x,\sigma,\epsilon,J,H\), the number of levels, or a distribution \(D\).
- Fixed quantities: \(k\) and the deterministic finite scale family are fixed while each pathwise inequality is evaluated. No asymptotic limit is taken.
- Probability mode: Deterministic and pathwise for every \(c,x\in\mathbb R\); no expectation, event, or confidence parameter occurs.
- Horizon mode: Uniform over every finite setting scale horizon \(J\); no all-time or stopping-time upgrade.
- Norm mode: Absolute value on \(\mathbb R\).
- Admissibility conditions and auxiliary tolerances: Only \(k>1\), \(\sigma>0\), and positive dyadic scales. There is no auxiliary tolerance or generated condition.
- Term absorption or simplification inequalities: No term is hidden or absorbed. For \(R\leq\sigma\),

  \[
  3\sum_{h_j<8R/3}h_j
  <3\frac{8R/3}{1-1/2}=16R.
  \]

  For \(R>\sigma\), the fine sum is \(<6\sigma\leq16\sigma\). The coarse calculation is

  \[
  3\sum_{h_j<8R/3}h_j^k
  <\frac{3(8R/3)^k}{1-2^{-k}}.
  \]

- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: The fine ledger supplies the count-free pathwise input to the later fine second-moment calculation; the coarse ledger supplies an \(R^k\) charge compatible with a later recentered \(k\)-moment input; and top support supplies the later top-residual restriction. This step makes no moment, variance, bias, or public-rate claim.
- Baseline-reduction check: At \(x=c\), \(R=0\), every digit and the top residual vanish exactly, both activation sums are zero, and both budgets have zero right-hand side.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined, public-facing objects:** \(h_j\), \(H=h_J\), \(\sigma\), \(D_j^c\), \(R_H^c\), \(\mathcal J_{\mathrm f}\), and \(\mathcal J_{\mathrm c}\). The minimal public-facing export is inclusive digit inactivity, strict digit magnitude, top support, the fine ledger with constant \(16\), and the coarse ledger with the displayed \(k\)-only constant.
- **Appendix-local object:** \(\Delta_j^c(x)=D_j^c(x)-D_j^c(c)\) abbreviates an exact setting expression and introduces no new digit.
- **Proof-local objects:** \(R=|x-c|\), \(\alpha\), \(\mathcal A\), \(M\), \(T\), \(\mathcal A_{\mathrm f}(R)\), and \(\mathcal A_{\mathrm c}(R)\). None is exported or used as an assumption.
- **Constant provenance:** The constant \(16\) is proved from the digit factor \(3\), reciprocal margin \(8/3\), and dyadic factor \((1-2^{-1})^{-1}=2\). The constant \(C_k^{\mathrm{act}}=3(8/3)^k/(1-2^{-k})\) is defined from \(k\) and proved adequate in Proposition~\ref{prop:step-007-coarse-ledger}; it is finite for fixed \(k>1\). No hidden constant is used.
- **Margin and cutoff provenance:** The radii \(3h_j/8\) and \(3H/8\) are accepted derived margins from Proposition~\ref{prop:step-004-cell-margin}. The reciprocal strict cutoff \(h_j<8|x-c|/3\) is derived in Lemma~\ref{lem:step-007-digit-envelope}; it is not assumed.
- **Assumption provenance:** Stable cells come from accepted `step_004`; strict digit boundedness comes from accepted `step_005`; and the exact top residual and zero baseline come from accepted `step_006`. Inactivity, top support, magnitude, and both ledgers are proved here. No localization event, moment bound, realized support event, boundedness hypothesis, recurrence, variance statement, or tail assumption is used.
- **Smallest and top levels:** The setting gives

  \[
  \frac{H_*}{h_0}
  =\frac{b_k}{\gamma_k}
   \left(\frac{\sigma}{\epsilon}\right)^{k/(k-1)}
  >1,
  \]

  hence \(J\geq1\). The proof treats \(j=0\) without a predecessor and \(j=J-1\) using the scale-\(J\) margin. Top support separately uses \(Q_J^c\). The sum statements also remain true under a formal empty sampled-level set.
- **Boundary audit:** At \(R=3h_j/8\), a scale-\(j\) left equality is included and the right endpoint is strictly interior; scale \(j+1\) has radius \(3h_j/4\). At \(R=3H/8\), the same geometry makes the top residual zero. A center on a candidate grid is the midpoint of the selected opposite-shift cell. Arbitrary grid-boundary inputs retain the strict digit range. A level \(h_j=\sigma\) is fine and is explicitly covered.
- **Empty groups, long fine ranges, and rare observations:** Empty group sums are zero. The dyadic lemma controls any finite number of fine levels through the largest scale, independently of \(J\). No restriction \(R\leq H\) is imposed: when \(R\gg H\), all sampled levels may be eligible, but the coarse sum remains bounded by \(C_k^{\mathrm{act}}R^k\).
- **Probability and scope:** Every conclusion is simultaneous and deterministic over all real \(c,x\) and sampled levels. There is no expectation/sum interchange, distributional argument, probability conversion, or limit.
- **Diagnostic boundary:** The planning pair `global_proof.md` (SHA-256 `42f61c1c7e3353966d6a6c069c0cf8b4e457b7ab9edd3e3f090e3859d1519f38`) and `global_proof_review.md` (SHA-256 `3bacc907ecf192208b1e4d5d0ff2b0c6924427460b4f0fccd1094e4939cf78d8`, status `ACCEPTED`) was read only for the step-relevant planning warning to sum active scales pathwise using the strict cutoff before any future moment operation. Every inequality above was independently derived from the accepted dependencies and setting definitions. The diagnostic supplied no evidence, cited result, assumption, or authority to alter the target claim.
