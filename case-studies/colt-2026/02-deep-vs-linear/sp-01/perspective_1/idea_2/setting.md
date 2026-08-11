# Formalized Setting

- Basic setup:
  - Let \(n\in\mathbb N_{\ge 1}\), \(\mathbb N_0:=\{0,1,2,\ldots\}\), \(\mathcal X:=\{-1,+1\}^n\), and let \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\) be arbitrary. Write \(\Delta(\mathcal X)\) for the set of all probability distributions on \(\mathcal X\). Fix a tie label \(\tau\in\{-1,+1\}\) and define \(\operatorname{sign}_\tau(z)=+1\) for \(z>0\), \(\operatorname{sign}_\tau(0)=\tau\), and \(\operatorname{sign}_\tau(z)=-1\) for \(z<0\). Define
    \[
    \operatorname{dc}(\mathcal H):=\min\Bigl\{d\in\mathbb N_0:\exists\varphi:\mathcal X\to\mathbb R^d\;\forall h\in\mathcal H\;\exists w_h\in\mathbb R^d\;\forall x\in\mathcal X,\ h(x)=\operatorname{sign}_\tau\langle w_h,\varphi(x)\rangle\Bigr\}.
    \]
  - Fix a depth \(L\in\mathbb N_{\ge 1}\), widths \(n_0=n,n_1,\ldots,n_{L-1},n_L=1\) in \(\mathbb N_{\ge 1}\), and weight matrices \(\theta_i\in\mathbb R^{n_i\times n_{i-1}}\). There are no biases. Set \(S:=\sum_{i=1}^{L}n_i n_{i-1}\), write \(\theta=(\theta_1,\ldots,\theta_L)\in\mathbb R^S\), and let \(\sigma(z)=\max\{0,z\}\) act coordinatewise. For \(x\in\mathcal X\), define \(z_0(x):=x\), \(z_i(x):=\sigma(\theta_i z_{i-1}(x))\) for \(i=1,\ldots,L-1\), and
    \[
    f_\theta(x):=\theta_L z_{L-1}(x).
    \]
    To make the source's displayed gradient update single-valued, fix a protocol convention \(\kappa\in[0,1]\) and use the scalar back-propagation selector \(r_\kappa(u)=1\) for \(u>0\), \(r_\kappa(0)=\kappa\), and \(r_\kappa(u)=0\) for \(u<0\) at every ReLU gate. Write \(\nabla_\theta^{(\kappa)}\) for the resulting deterministic back-propagation derivative. The values \(\tau\) and \(\kappa\) are fixed protocol conventions and do not depend on \(\mathcal D\), \(h^\star\), or any realized initialization or sample path; no null-boundary or genericity condition is imposed.
  - Initialize all entries independently according to
    \[
    (\theta_i^{(0)})_{jk}\sim \mathcal N(0,1/n_{i-1}),\qquad i\in\{1,\ldots,L\}.
    \]
    For each distribution \(\mathcal D\in\Delta(\mathcal X)\) and target \(h^\star\in\mathcal H\), draw \(x^{(0)},\ldots,x^{(T-1)}\) independently from \(\mathcal D\), independently of \(\theta^{(0)}\), and use the logistic loss \(\ell(z):=\log(1+e^{-z})\) and the exact one-sample recursion
    \[
    \theta^{(t+1)}=\theta^{(t)}-\eta\nabla_\theta^{(\kappa)}\ell\!\left(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})\right),
    \qquad t=0,\ldots,T-1.
    \]
    Its prescribed latter-half aggregate score and predictor are
    \[
    A_{\mathcal D,h^\star}(x):=\sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x),
    \qquad
    \widehat h_{\mathcal D,h^\star}(x):=\operatorname{sign}_\tau\!\left(A_{\mathcal D,h^\star}(x)\right).
    \]
    For a fresh evaluation point \(x\sim\mathcal D\), define the source classification error with its strict inequality by
    \[
    \mathcal L_{\mathcal D,h^\star}(\widehat h_{\mathcal D,h^\star})
    :=\Pr_{x\sim\mathcal D}\!\left[\widehat h_{\mathcal D,h^\star}(x)h^\star(x)<0\right].
    \]
- Technical assumptions:
  - `assump:fixed-source-witnesses` (Fixed source witnesses and parameter regime): \(0\le\varepsilon<1/4\), \(T\in\mathbb N_{\ge 1}\), and \(\eta>0\). For the given \((n,\mathcal H,\varepsilon)\), the architecture \((L,n_1,\ldots,n_{L-1})\), its parameter count \(S\), the constant stepsize \(\eta\), and the horizon \(T\) are selected once and held fixed before \(\mathcal D\) and \(h^\star\) are chosen; in particular, the same witnesses are used for every \((\mathcal D,h^\star)\in\Delta(\mathcal X)\times\mathcal H\).
  - `assump:universal-expected-success` (Universal expected-error SGD premise): For every \(\mathcal D\in\Delta(\mathcal X)\) and every \(h^\star\in\mathcal H\),
    \[
    \mathbb E_{\theta^{(0)},\,x^{(0)},\ldots,x^{(T-1)}}\!\left[\mathcal L_{\mathcal D,h^\star}(\widehat h_{\mathcal D,h^\star})\right]\le\varepsilon,
    \]
    where the expectation is jointly over the independent fan-in-scaled Gaussian initialization and the fresh one-sample SGD draws specified above. No probability is taken over \(\mathcal D\), \(h^\star\), or the final feature map in the deterministic conclusion.

# Formalized Goal

- Goal statement: In exact-goal mode and for the single fixed protocol-convention pair \((\tau,\kappa)\) chosen in Basic setup, prove that there exists a universal numerical constant \(C>0\) such that, for every \(n\), every \(\mathcal H\subseteq\{-1,+1\}^{\{-1,+1\}^n}\), every \(\varepsilon\), and every fixed architecture/stepsize/horizon witness satisfying `assump:fixed-source-witnesses` and `assump:universal-expected-success`,
  \[
  \operatorname{dc}(\mathcal H)\le C\,T S.
  \]
  The conclusion is deterministic and exact: one feature map \(\varphi:\mathcal X\to\mathbb R^d\), independent of \(\mathcal D\) and \(h^\star\), must simultaneously \(\operatorname{sign}_\tau\)-represent all \(h\in\mathcal H\) for some integer \(d\le C T S\). The constant \(C\) may not depend on \(n,\mathcal H,\varepsilon,\eta,T,L\), the widths, or any other architecture detail.

# Note

- Rigor:
  - Source alignment: this is the full deterministic Open Question 1 target and preserves the universal \((\mathcal D,h^\star)\) premise, independent fan-in-scaled Gaussian initialization, exact one-sample constant-stepsize logistic SGD, latter-half aggregation, strict-inequality classification error, \(0\le\varepsilon<1/4\), and dependence only on \(T S\). The source leaves both zero conventions implicit; the fixed generic \((\tau,\kappa)\) only make its displayed sign and SGD maps single-valued and do not exclude boundary trajectories.
  - Progress type: `full`.
  - Materiality: proving this implication closes Gap 1 by producing the exact shared deterministic representation; equivalently, its contrapositive excludes universal source-protocol learning whenever \(\operatorname{dc}(\mathcal H)>C T S\).
  - Assumption support: `assump:fixed-source-witnesses` and `assump:universal-expected-success` are the primitive regime and premise stated in Feldman, Kamath, and Srebro (2026), as frozen in `RESEARCH_BRIEF.md`; no novel theorem-facing assumption is introduced. The Borsuk--Ulam/Euclidean-reduction machinery is standard/literature-derived from *On Reductions and Representations of Learning Problems in Euclidean Spaces* (STOC 2025), but its applicability here is not assumed.
  - Proof-obligation discipline: the \(O(TS)\)-dimensional transcript encoding, arbitrary-depth stratified piecewise-analytic reduction, treatment of every ReLU boundary and dead-unit stratum for the fixed \(\kappa\), tie-compatible nonlinear aggregated-readout bridge for the fixed \(\tau\), and conversion of initialization/sampling randomness into the deterministic Euclidean obstruction are derived proof obligations. None is included in either `assump:` item.
