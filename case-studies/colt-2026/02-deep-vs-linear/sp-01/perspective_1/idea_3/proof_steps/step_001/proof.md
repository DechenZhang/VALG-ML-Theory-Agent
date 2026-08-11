# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every initialization and finite \(r\), derive an explicit finite bound on \(G_r\), with \(G_r\le1\) for \(L=1\), using the exact fixed-\(\kappa\) gradient.
- Depends on: None
- Assumptions used: Primitive `assump:fixed-source-witnesses`; static \(r\) from `assump:robust-tube`
- Technical challenge: Bound all forward activations and back-propagated coordinates without assuming selector continuity
- Intended proof tool or cited result: Direct forward/backward recurrences and \(\lvert\ell'\rvert\le1\)
- Output target: Finite static gradient envelope
- Rate objective: RO-1: establish finite \(G_r\) with no hidden uniform constant required
- Review status in the accepted sketch row: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:fixed-source-witnesses`: only the fixed finite architecture, exact logistic-loss protocol, and fixed selector \(\kappa\in[0,1]\) are used. In LaTeX-ready form, these are the relevant clauses of Assumption~\ref{assump:fixed-source-witnesses} together with the architecture definitions in `setting.md`.
  - `assump:robust-tube`: only the prior choice of a deterministic finite radius \(r>0\) is used, as specified by Assumption~\ref{assump:robust-tube}. Neither membership in \(E_r\) nor the probability lower bound for \(E_r\) is used.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. Quantification over a generic \(\theta\in B_\infty(\theta^{(0)},r)\) is the domain in the definition of \(G_r\), not a claim that a generated trajectory lies in that ball.
- Accepted dependency proof/review artifacts: None.

The assumptions `assump:universal-expected-success` and `assump:constant-depth` are not used in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, for every deterministic \(\theta^{(0)}\in\mathbb R^S\), every \(\theta\in B_\infty(\theta^{(0)},r)\), and every \(x\in\mathcal X\), the exact forward coordinates satisfy \(\lvert u_{\ell,j}\rvert,\lvert z_{\ell,j}\rvert\le a_\ell\). | Supplies bounded inputs to every layer-gradient outer product, using only the static ball. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube} and Lemma~\ref{lem:p1-i3-step001-forward}, the exact fixed-\(\kappa\) adjoints satisfy \(\lvert\delta_{\ell,j}\rvert\le b_\ell\), hence \(G_r(\theta^{(0)})\le C_r(\theta^{(0)})<\infty\); if \(L=1\), then \(C_r=1\) and \(G_r\le1\). | Proves the target claim at all kinks, layers, and closed-ball boundary points, including the gate-free depth-one case. |

## Cited Result Applications

No external paper result or dependency result is used.

1. **Direct logistic differentiation.** For \(\ell(a)=\log(1+e^{-a})\), direct scalar differentiation gives
   \[
   \ell'(a)=-\frac{1}{1+e^a},
   \qquad
   \left|\frac{\partial}{\partial f}\ell(yf)\right|
   =\frac{1}{1+e^{yf}}\le1
   \quad(y\in\{-1,+1\}).
   \]
   The proof applies this identity to the finite scalar \(f_\theta(x)\). It infers no continuity of the selected ReLU back-propagation map.
2. **Lemma~\ref{lem:p1-i3-step001-forward} (`unit_001`).** Its current-notation assumptions are a finite architecture, finite \(r\), deterministic \(\theta^{(0)}\in\mathbb R^S\), \(\theta\) in the stated closed ball, and \(x\in\{-1,+1\}^n\). Its conclusion \(\lvert z_{\ell,j}\rvert\le a_\ell\) is used by Proposition~\ref{prop:p1-i3-step001-gradient}.
3. **Proposition~\ref{prop:p1-i3-step001-gradient} (`unit_002`).** It combines the forward envelope with the exact protocol-defined selected adjoint recursion and exports
   \[
   \|\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))\|_\infty
   \le C_r(\theta^{(0)}).
   \]
   Taking the exact supremum from `setting.md` yields the target conclusion.

## Local Derivation

### unit_001: lemma

**Lemma (Finite-ball forward envelope).** \label{lem:p1-i3-step001-forward}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube}, fix any deterministic initialization \(\theta^{(0)}\in\mathbb R^S\) and the finite radius \(r>0\) from the setting. Define
\[
B:=\max\{1,\|\theta^{(0)}\|_\infty+r\},
\qquad
a_0:=1,
\qquad
a_\ell:=n_{\ell-1}B a_{\ell-1}
\quad(1\le\ell\le L-1).
\]
Then \(B,a_0,\ldots,a_{L-1}\) are finite, and for every \(\theta\in B_\infty(\theta^{(0)},r)\), every \(x\in\mathcal X\), every hidden layer \(1\le\ell\le L-1\), and every \(j\in[n_\ell]\),
\[
|u_{\ell,j}(\theta,x)|\le a_\ell,
\qquad
|z_{\ell,j}(\theta,x)|\le a_\ell.
\]
For \(L=1\), the hidden-layer conclusion is vacuous and \(a_0=1\).

**Proof / justification.** The vector \(\theta^{(0)}\in\mathbb R^S\) has finitely many finite real coordinates, and \(r\) is finite, so \(B<\infty\). For every \(\theta\) in the closed ball and every weight coordinate,
\[
|\theta_{\ell,jk}|
\le |(\theta^{(0)}_\ell)_{jk}|
   +|\theta_{\ell,jk}-(\theta^{(0)}_\ell)_{jk}|
\le \|\theta^{(0)}\|_\infty+r
\le B.
\tag{1}
\]
All inequalities are weak, so (1) includes every point with \(\|\theta-\theta^{(0)}\|_\infty=r\).

At the input, \(z_0(\theta,x)=x\) and every coordinate has magnitude \(1=a_0\). Suppose every coordinate of \(z_{\ell-1}(\theta,x)\) has magnitude at most \(a_{\ell-1}\). The exact forward equation and (1) give
\[
\begin{aligned}
|u_{\ell,j}(\theta,x)|
&=\left|\sum_{k=1}^{n_{\ell-1}}
       \theta_{\ell,jk}z_{\ell-1,k}(\theta,x)\right| \\
&\le\sum_{k=1}^{n_{\ell-1}}
       |\theta_{\ell,jk}|\,|z_{\ell-1,k}(\theta,x)| \\
&\le n_{\ell-1}B a_{\ell-1}=a_\ell.
\end{aligned}
\tag{2}
\]
For every real \(v\), \(0\le\sigma(v)\le|v|\). Therefore (2) also gives
\[
|z_{\ell,j}(\theta,x)|
=|\sigma(u_{\ell,j}(\theta,x))|
\le |u_{\ell,j}(\theta,x)|\le a_\ell.
\]
Finite induction over the hidden layers proves the claim. Explicitly,
\[
a_\ell=B^\ell\prod_{q=0}^{\ell-1}n_q,
\qquad 0\le\ell\le L-1,
\tag{3}
\]
where an empty product is one. Thus every displayed envelope is finite. \(\square\)

### unit_002: proposition

**Proposition (Exact fixed-selector gradient envelope).** \label{prop:p1-i3-step001-gradient}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses} and~\ref{assump:robust-tube} and Lemma~\ref{lem:p1-i3-step001-forward}, define
\[
b_L:=1,
\qquad
b_\ell:=n_{\ell+1}B b_{\ell+1}
\quad(1\le\ell\le L-1),
\qquad
C_r(\theta^{(0)}):=\max_{1\le\ell\le L}b_\ell a_{\ell-1}.
\tag{4}
\]
Then, for every \(\theta\in B_\infty(\theta^{(0)},r)\), every \(x\in\mathcal X\), every \(y\in\{-1,+1\}\), every layer \(\ell\in[L]\), and every weight coordinate \((j,k)\in[n_\ell]\times[n_{\ell-1}]\),
\[
\left|
 [\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))]_{\ell,jk}
\right|
\le b_\ell a_{\ell-1}
\le C_r(\theta^{(0)}).
\tag{5}
\]
Consequently,
\[
G_r(\theta^{(0)})\le C_r(\theta^{(0)})<\infty.
\tag{6}
\]
If \(L=1\), then \(C_r(\theta^{(0)})=1\) and \(G_r(\theta^{(0)})\le1\).

**Proof / justification.** Fix \(\theta,x,y\) in the quantified domains. The forward equations are finite sums and products of finite real coordinates, so \(f_\theta(x)\in\mathbb R\). Because \(n_L=1\), the output has one adjoint coordinate. Define the protocol-selected output adjoint by
\[
\delta_{L,1}
:=\frac{\partial}{\partial f}\ell(yf)\bigg|_{f=f_\theta(x)}
=-\frac{y}{1+e^{y f_\theta(x)}}.
\tag{7}
\]
Thus \(|\delta_{L,1}|\le1=b_L\). For \(\ell=L-1,L-2,\ldots,1\), the exact single-valued back-propagation convention in `setting.md` defines
\[
\delta_{\ell,j}
:=\rho_\kappa(u_{\ell,j}(\theta,x))
  \sum_{q=1}^{n_{\ell+1}}
  \theta_{\ell+1,qj}\delta_{\ell+1,q}.
\tag{8}
\]
This is the selected adjoint definition even at \(u_{\ell,j}=0\); it does not assert existence of an ordinary derivative there.

Assume \(|\delta_{\ell+1,q}|\le b_{\ell+1}\) for every \(q\in[n_{\ell+1}]\). The fixed convention gives
\[
0\le\rho_\kappa(v)\le1
\quad\text{for every }v\in\mathbb R,
\tag{9}
\]
including \(\rho_\kappa(0)=\kappa\) for \(\kappa=0\), \(\kappa=1\), and every intermediate choice. From (1), (8), and (9),
\[
|\delta_{\ell,j}|
\le\sum_{q=1}^{n_{\ell+1}}
   |\theta_{\ell+1,qj}|\,|\delta_{\ell+1,q}|
\le n_{\ell+1}B b_{\ell+1}=b_\ell.
\tag{10}
\]
Backward induction proves \(|\delta_{\ell,j}|\le b_\ell\) at every layer. Explicitly,
\[
b_\ell=B^{L-\ell}\prod_{q=\ell+1}^{L}n_q,
\qquad 1\le\ell\le L,
\tag{11}
\]
where \(n_L=1\) and an empty product is one.

The same selected back-propagation convention gives the exact layerwise coordinate formula
\[
[\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))]_{\ell,jk}
=\delta_{\ell,j}z_{\ell-1,k}(\theta,x).
\tag{12}
\]
Applying (10) and Lemma~\ref{lem:p1-i3-step001-forward} to (12) proves (5). Hence
\[
\|\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))\|_\infty
\le C_r(\theta^{(0)})
\tag{13}
\]
pointwise on the full parameter, input, and label domain defining \(G_r\). Taking the supremum proves the first inequality in (6). The maximum in (4) ranges over finitely many layers, while (3) and (11) express all factors through finite \(B,n_0,\ldots,n_L,L\); hence \(C_r(\theta^{(0)})<\infty\).

No extreme-value theorem for the selected gradient is needed. Forward preactivations and \(f_\theta(x)\) are continuous in \(\theta\), but the selected gradient can be discontinuous when a hidden preactivation crosses zero. Estimate (13) includes those zero preactivations through (9), so the supremum is bounded whether or not it is attained.

When \(L=1\), there are no hidden adjoints or ReLU selectors. Equations (4) and (12) reduce to \(a_0=b_1=C_r=1\) and
\[
\left|
[\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))]_{1,1k}
\right|
=\left|\frac{-y x_k}{1+e^{y f_\theta(x)}}\right|
\le1.
\]
Thus \(G_r\le1\), including zero weights, every finite radius, and every closed-ball boundary point. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:p1-i3-step001-forward} bounds every activation coordinate on the entire static ball using only (1). Proposition~\ref{prop:p1-i3-step001-gradient} then bounds the exact protocol-selected adjoints and all layer-gradient coordinates, including hidden kinks, by the finite deterministic quantity \(C_r(\theta^{(0)})\). The pointwise domain is exactly the domain in the definition of \(G_r\), so
\[
G_r(\theta^{(0)})\le C_r(\theta^{(0)})<\infty.
\]
For \(L=1\), the proposition gives \(C_r=1\) and hence \(G_r\le1\). This is the exact target-step claim.

The result is static. The finite set \(\mathcal X\times\{-1,+1\}\) is covered uniformly, so every labeled datum that could occur in any finite history is covered. The proof neither introduces a history nor asserts that any realized or hypothetical iterate lies in \(B_\infty(\theta^{(0)},r)\).

## Explicit Rate Audit

- Exposed variables: \(G_r(\theta^{(0)})\), \(\theta^{(0)}\), \(r\), \(L\), widths \(n_0,\ldots,n_L\), and explicit \(B,a_\ell,b_\ell,C_r\) in (3), (4), and (11). The bound is uniform in the exposed protocol selector \(\kappa\in[0,1]\). The RO-1 variables \(T,\eta,\varepsilon,\delta_0,s_0\) do not enter this static bound.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any architecture, initialization, radius, input, label, selector, sample, target, distribution, or history quantity.
- Fixed quantities: A finite architecture, one deterministic \(\theta^{(0)}\in\mathbb R^S\), finite \(r>0\), and fixed \(\kappa\).
- Probability mode: Deterministic for every \(\theta^{(0)}\in\mathbb R^S\); no event or expectation is used.
- Horizon mode: Static and horizon-free. The bound covers every possible labeled datum but makes no trajectory-containment claim.
- Norm mode: Coordinate sup norm on the full vectorized all-layer gradient, exactly matching \(G_r\).
- Admissibility conditions and auxiliary tolerances: \(L\ge1\); finite positive integer widths with \(n_L=1\); \(\theta^{(0)}\in\mathbb R^S\); \(0<r<\infty\); and \(\kappa\in[0,1]\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. Each coordinate is bounded directly by \(b_\ell a_{\ell-1}\), and \(C_r\) is their finite-layer maximum.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step supplies finite exact \(G_r\) to the later primitive relation \(T\eta G_r\le r\); it neither uses that relation nor proves containment.
- Baseline-reduction check: At \(L=1\), both recursions are empty beyond \(a_0=b_1=1\), so \(G_r\le1\) has no loss. The algebra also remains valid at \(r=0\), although the theorem-facing assumption fixes \(r>0\).

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: setting-defined \(G_r(\theta^{(0)})\), together with its finiteness and the depth-one bound \(G_r\le1\), is the only downstream interface exported by this step.
- `Appendix-local`: \(B,a_\ell,b_\ell,C_r\). The first is defined directly from setting objects; the recurrences use only \(B\) and the setting widths; Proposition~\ref{prop:p1-i3-step001-gradient} proves that \(C_r\) bounds the exact gradient. None is a new assumption or downstream admissibility parameter.
- `Proof-local`: selected adjoints \(\delta_{\ell,j}\) in (7)--(8), defined solely from the exact current parameter, input, label, logistic factor, and fixed selector.
- Assumption provenance: no generated event, trajectory membership, gate-stability fact, recurrence, or local-validity condition is assumed or proved. A generic parameter in the ball is simply quantified over in the static supremum. Assumption~\ref{assump:robust-tube} contributes only the finite fixed radius; neither \(M_r>0\) nor \(\eta T G_r\le r\) is used.
- Boundary conventions: finite sums cover width-one layers. The case \(L=1\) has no hidden gate and is proved separately. Zero weights, zero activations, hidden preactivation ties, \(\kappa=0\), \(\kappa=1\), and every closed-ball boundary point obey the same bound. The predictor tie label \(s_0\) does not enter the logistic-gradient envelope.
- Finite-space note: \(\mathcal X\) and the label set are finite, but their cardinalities are not used to repair a continuity issue; the estimate is pointwise uniform. Likewise, compactness of the finite-radius closed ball is not used to claim a maximum for the possibly discontinuous selected gradient.
- Diagnostic boundary: the paired `global_proof.md` and `global_proof_review.md` were read only after confirming review status `ACCEPTED`. Their step-relevant planning suggestion was the forward/backward coordinate recurrence. Every recurrence and bound is independently derived here; the diagnostic is not evidence, a cited result, an assumption source, or authority to alter the accepted target claim.
