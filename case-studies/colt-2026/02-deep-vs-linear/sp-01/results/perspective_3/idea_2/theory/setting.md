# Formalized Setting

- Basic setup:
  Fix integers $n,m,T\ge 1$, a constant stepsize $\eta>0$, and an accuracy
  parameter $\varepsilon\ge 0$. Let $\mathcal X=\{-1,+1\}^n$ and let
  $\mathcal H\subseteq\{-1,+1\}^{\mathcal X}$, and write
  $\Delta(\mathcal X)$ for the set of all probability distributions on
  $\mathcal X$. Fix once and for all the source tie label
  $s_0\in\{-1,+1\}$ and define
  $$
  \operatorname{sign}_{s_0}(z)=
  \begin{cases}
  +1,&z>0,\\
  -1,&z<0,\\
  s_0,&z=0.
  \end{cases}
  $$
  Thus, for a score $g:\mathcal X\to\mathbb R$, an input distribution
  $\mathcal D$, and a target $h\in\mathcal H$, the source classification error is
  $$
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}\!\left[
  \operatorname{sign}_{s_0}(g(x))h(x)<0\right].
  $$
  In particular, a zero score is an error exactly when $h(x)=-s_0$; the strict
  inequality in the source error definition is retained.

  Use the bias-free depth-two fully connected ReLU network
  $$
  f_{a,W}(x)=a^\top\sigma(Wx),\qquad
  W\in\mathbb R^{m\times n},\quad a\in\mathbb R^m,
  \qquad \sigma(z)=\max\{0,z\}
  $$
  coordinatewise. All entries of both layers are trainable, and the parameter
  count is $S=mn+m=m(n+1)$. At initialization, all weights are independent with
  $$
  W^{(0)}_{ji}\sim\mathcal N(0,1/n),
  \qquad a^{(0)}_j\sim\mathcal N(0,1/m).
  $$
  For a fixed pair $(\mathcal D,h)$, one-sample SGD draws a fresh
  $x^{(t)}\sim\mathcal D$ at every $t=0,\ldots,T-1$ and updates every layer by
  $$
  (a^{(t+1)},W^{(t+1)})=(a^{(t)},W^{(t)})
  -\eta\nabla_{(a,W)}
  \ell\!\left(h(x^{(t)})f_{a^{(t)},W^{(t)}}(x^{(t)})\right),
  \qquad \ell(z)=\log(1+e^{-z}),
  $$
  using exactly the source gradient convention. For a realized initialization
  and sample path $\omega$, define the latter-half aggregate score and returned
  classifier by
  $$
  G_\omega(x):=\sum_{t=\lceil T/2\rceil}^{T}
  f_{a^{(t)},W^{(t)}}(x),
  \qquad \widehat h_\omega(x):=\operatorname{sign}_{s_0}(G_\omega(x)).
  $$
  Write $\mathbb Q_{\mathcal D,h}$ for the joint law of the independent Gaussian
  initialization and the fresh SGD samples. Also define
  $$
  \mathcal D^-(x):=\mathcal D(-x),\qquad
  \mathcal D^{\mathrm{sym}}:=\tfrac12(\mathcal D+\mathcal D^-),
  $$
  and, for every realized trajectory,
  $$
  A_\omega(x):=G_\omega(x)-G_\omega(-x),
  \qquad
  v_\omega:=\sum_{t=\lceil T/2\rceil}^{T}(W^{(t)})^\top a^{(t)}.
  $$

  For a feature map $\varphi:\mathcal X\to\mathbb R^d$, use the same
  tie-resolved homogeneous classifier
  $x\mapsto\operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)$.
  The deterministic dimension complexity $\operatorname{dc}(\mathcal H)$ is the
  least $d$ for which some single $\varphi$ satisfies
  $$
  \forall h\in\mathcal H\ \exists w_h\in\mathbb R^d\ \forall x\in\mathcal X,
  \qquad
  \operatorname{sign}_{s_0}(\langle w_h,\varphi(x)\rangle)=h(x).
  $$
  The confident dimension $\operatorname{dc}^{1/2}(\mathcal H)$ is the least
  $d$ for which there is a law $\mathcal P$ over such feature maps, chosen before
  the distribution and target, such that
  $$
  \forall\mathcal D\ \forall h\in\mathcal H,
  \qquad
  \Pr_{\varphi\sim\mathcal P}\!\left[
  \inf_{w\in\mathbb R^d}
  \Pr_{x\sim\mathcal D}\!\left[
  \operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0
  \right]=0\right]\ge\tfrac12.
  $$
  Finally, let $\varphi_{\mathrm{id}}:\mathcal X\to\mathbb R^n$ be the
  deterministic identity feature map $\varphi_{\mathrm{id}}(x)=x$.

- Technical assumptions:
  - `assump:antipodal-oddness` (Antipodally odd target class): For every
    $h\in\mathcal H$ and every $x\in\mathcal X$, $h(-x)=-h(x)$.
  - `assump:high-accuracy` (Strict high-accuracy regime): The primitive scalar
    condition
    $$
    2\varepsilon<\frac{1}{n+1}
    $$
    holds. For $n\ge1$, this also places $\varepsilon$ inside the source regime
    $\varepsilon<1/4$.
  - `assump:universal-sgd-success` (Exact universal source premise): The one fixed
    architecture, width $m$, stepsize $\eta$, and step count $T$ defined above
    satisfy
    $$
    \forall\mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H,
    \qquad
    \mathbb E_{\omega\sim\mathbb Q_{\mathcal D,h}}
    \bigl[\mathcal L_{\mathcal D,h}(G_\omega)\bigr]
    \le\varepsilon.
    $$
    The expectation is jointly over the Gaussian initialization and all
    one-sample SGD draws; neither the architecture nor $\eta$ nor $T$ may depend
    on the later choice of $\mathcal D$ or $h$.

# Formalized Goal

- Goal statement:
  Under `assump:antipodal-oddness`, `assump:high-accuracy`, and
  `assump:universal-sgd-success`, prove that the identity feature map exactly
  sign-represents the entire class:
  $$
  \forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
  \qquad
  \operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
  $$
  Consequently the point-mass feature law
  $\mathcal P=\delta_{\varphi_{\mathrm{id}}}$, fixed before every
  $\mathcal D$ and $h$, has exact-representation probability one (and hence at
  least $1/2$), and
  $$
  \operatorname{dc}^{1/2}(\mathcal H)
  \le \operatorname{dc}(\mathcal H)
  \le n\le S\le TS.
  $$

# Note

- Rigor:
  Source alignment is exact for the Gaussian initialization, logistic loss,
  one-sample all-layers SGD update, latter-half aggregation, expectation over
  initialization and sampling, and universal order over $\mathcal D$ and $h$.
  The explicit depth-two, antipodal-oddness, and strict high-accuracy
  restrictions leave the unrestricted general-depth, non-odd, unrestricted-
  accuracy $C TS$ question open. Progress type: `material_partial`. Materiality:
  the result proves the source-endorsed confident target with a law of success
  probability one and also deterministic exact representation in this special
  nonlinear, all-layers-trained regime.

  Assumption support: `assump:universal-sgd-success` is exactly the premise of
  Feldman--Kamath--Srebro (COLT 2026); `assump:high-accuracy` is a primitive,
  directly checkable numerical restriction supported by the standard
  $n+1$-point Caratheodory witness bound in $\mathbb R^n$;
  `assump:antipodal-oddness` is the idea's novel example-verified specialization,
  witnessed by odd-cardinality parities, homogeneous halfspaces having no cube
  ties, and arbitrary labels on one representative of each antipodal pair
  extended oddly.

  No antisymmetrization or exact-separation conclusion is assumed. The proof must
  derive $A_\omega(x)=\langle v_\omega,x\rangle$ and
  $\mathcal L_{\mathcal D,h}(A_\omega)\le
  2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)$ from the ReLU identity and
  oddness, including the zero-score cases. It must then show that infeasibility
  of the strict homogeneous identity-separation system yields, by Gordan and
  Caratheodory, at most $n+1$ representatives with label $-s_0$ on which every
  homogeneous halfspace has tie-resolved error at least $1/(n+1)$. These are
  derived proof obligations, not assumptions. No claim from the proof-flawed
  Karchmer--Malach route is used, and no margin, trajectory-stability,
  finite-precision, frozen-feature, target-dependent-feature, or altered-oracle
  condition is imposed.
