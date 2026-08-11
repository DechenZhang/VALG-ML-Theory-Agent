# Formalized Setting

- Basic setup:
  Fix a tie label \(\tau\in\{-1,+1\}\), equal to the convention used for \(\operatorname{sign}(0)\) in the source protocol, and define
  \[
  \operatorname{sgn}_{\tau}(z):=
  \begin{cases}
  +1,&z>0,\\
  -1,&z<0,\\
  \tau,&z=0.
  \end{cases}
  \]
  Let \(\mathcal X=\{-1,+1\}^n\), let \(\Delta(\mathcal X)\) be the set of all probability distributions on \(\mathcal X\), and let \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Since \(\mathcal X\) is finite, so is \(\mathcal H\). Define
  \[
  \operatorname{dc}(\mathcal H)
  :=\min\left\{q\in\mathbb Z_{\ge 0}:\ 
  \exists\Phi:\mathcal X\to\mathbb R^q\ 
  \forall h\in\mathcal H\ 
  \exists u_h\in\mathbb R^q\ 
  \forall x\in\mathcal X,\ 
  \operatorname{sgn}_{\tau}(\langle u_h,\Phi(x)\rangle)=h(x)
  \right\},
  \]
  with \(\operatorname{dc}(\varnothing)=0\). For \(q=0\), use the standard conventions \(\mathbb R^0=\{0\}\) and \(\langle 0,0\rangle=0\).

  Fix a fully connected, bias-free ReLU architecture with \(n_0=n\), \(n_L=1\), positive integer widths \(n_1,\ldots,n_{L-1}\), parameter matrices \(\theta_i\in\mathbb R^{n_i\times n_{i-1}}\), and
  \[
  S:=\sum_{i=1}^{L}n_i n_{i-1}.
  \]
  For \(z_0=x\), set \(z_i=\sigma(\theta_i z_{i-1})\) for \(1\le i<L\), where \(\sigma(a)=\max\{0,a\}\) coordinatewise, and set \(f_\theta(x)=\theta_Lz_{L-1}\). Initialize all entries independently according to
  \[
  (\theta_i^{(0)})_{ab}\sim\mathcal N(0,1/n_{i-1}).
  \]
  At ReLU kink points, \(\nabla^{\mathrm{src}}\) denotes the fixed gradient/subgradient selection convention used by the source; this convention makes the recursion single-valued and does not assume that kink points are avoided or have probability zero. Given \(\mathcal D\in\Delta(\mathcal X)\) and \(h^\star\in\mathcal H\), draw \(x^{(0)},\ldots,x^{(T-1)}\stackrel{\mathrm{iid}}{\sim}\mathcal D\) and perform the exact source update
  \[
  \theta^{(t+1)}=\theta^{(t)}-
  \eta\nabla^{\mathrm{src}}_\theta\ell\!\left(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})\right),
  \qquad
  \ell(z)=\log(1+e^{-z}),
  \quad 0\le t<T.
  \]
  Its latter-half aggregate and returned classifier are
  \[
  A_{\mathcal D,h^\star}(x):=
  \sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x),
  \qquad
  \widehat h_{\mathcal D,h^\star}(x):=
  \operatorname{sgn}_{\tau}(A_{\mathcal D,h^\star}(x)).
  \]
  For any binary classifier \(g:\mathcal X\to\{-1,+1\}\), write
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)h(x)<0]
  =\Pr_{x\sim\mathcal D}[g(x)\ne h(x)].
  \]

- Technical assumptions:
  - `assump:source-regime` (Source parameter regime): \(n,L,T\in\mathbb Z_{\ge1}\), all network widths are positive integers with \(n_0=n\) and \(n_L=1\), \(\eta>0\) is fixed, \(0\le\varepsilon<1/4\), and the confident-map dimension \(d\in\mathbb Z_{\ge0}\) is an exposed parameter.
  - `assump:universal-sgd-success` (Universal exact-SGD success): The architecture, \(\eta\), and \(T\) above are fixed before the distribution and target are chosen, and
    \[
    \forall\mathcal D\in\Delta(\mathcal X)\ \forall h^\star\in\mathcal H,
    \qquad
    \mathbb E_{\theta^{(0)},\,x^{(0:T-1)}\stackrel{\mathrm{iid}}{\sim}\mathcal D}
    \!\left[\mathcal L_{\mathcal D,h^\star}
    (\widehat h_{\mathcal D,h^\star})\right]
    \le\varepsilon.
    \]
    The expectation is over exactly the stated Gaussian initialization and one-sample SGD draws; there is no change of loss, update, architecture, or returned predictor.
  - `assump:tie-resolved-confident-map` (Target-independent tie-resolved confident map): There exists one probability law \(\mathcal P\) on maps \(\phi:\mathcal X\to\mathbb R^d\), selected before \(\mathcal D\) and \(h\), with the exact quantifier order
    \[
    \exists\mathcal P\ \forall\mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H,
    \qquad
    \Pr_{\phi\sim\mathcal P}\!\left[
      \exists w\in\mathbb R^d\ \forall x\in\mathcal X,
      \ \operatorname{sgn}_{\tau}(\langle w,\phi(x)\rangle)=h(x)
    \right]\ge\frac12.
    \]
    Thus \(\mathcal P\) is independent of the subsequently quantified \(\mathcal D\) and \(h\), while the separator \(w\) may depend on \((\phi,h)\). The displayed exact-sign event, rather than zero error under a strict \(<0\) score-loss convention, resolves all zero-score ties. The parameter \(d\) remains explicit throughout; no dependence on \(n\), \(\eta\), \(\mathcal D\), or \(h\) may be hidden in a later bound on \(d\).

# Formalized Goal

- Goal statement:
  Prove the following single conditional deterministic dimension-amplification theorem: there is a numerical universal constant \(C>0\), independent of \(n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d\), and \(\mathcal P\), such that every setup satisfying `assump:source-regime`, `assump:universal-sgd-success`, and `assump:tie-resolved-confident-map` obeys
  \[
  \boxed{\operatorname{dc}(\mathcal H)\le C\,T S d.}
  \]
  One may target the explicit numerical choice \(C=7\). For \(\mathcal H\ne\varnothing\), the proof must derive, rather than assume, \(\operatorname{VC}(\mathcal H)<2T\); derive the needed bound on \(|\mathcal H|\) from Sauer--Shelah and \(S\ge n\); and use independent sampling from \(\mathcal P\), a union bound, and block concatenation to produce one deterministic common feature map. The cases \(\mathcal H=\varnothing\) and \(d=0\) must be discharged under the stated conventions. As a specialization inside this same theorem contract, any separately established explicit bound \(d\le p(S,T)\), where \(p\) is a polynomial with no hidden \(n\)- or \(\eta\)-dependence, yields \(\operatorname{dc}(\mathcal H)\le C T S p(S,T)=\operatorname{poly}(S,T)\); this specialization is not a second theorem target.

# Note

- Rigor:
  Source alignment: the exact Gaussian initialization, logistic one-sample SGD trajectory, latter-half aggregation, and universal \((\mathcal D,h^\star)\) premise are unchanged; the added target-independent confident-map condition is explicit, and the conclusion is conditional rather than the source's unconditional \(C TS\) target. Progress type: `conditional`. Materiality: the theorem converts any future \(d=\operatorname{poly}(S,T)\) tie-resolved confident bound into the source-endorsed deterministic polynomial endpoint with only an \(O(TS)\) amplification factor, while leaving both the unconditional polynomial implication and exact linear implication open. Assumption support: `assump:source-regime` and `assump:universal-sgd-success` are the parameter regime and exact premise of Feldman--Kamath--Srebro (COLT 2026); `assump:tie-resolved-confident-map` is the source-endorsed confident-dimension interface, calibrated by Kamath--Montasser--Srebro (COLT 2020), with the approved idea's tie-resolved finite-domain form directly checkable for (i) a point mass on a common separating embedding, (ii) a finite mixture in which every target is covered by at least half the maps, and (iii) a continuous feature law whose successful maps have positive finite-domain separation margin. The VC bound, Sauer--Shelah estimate, and concatenation construction are derived proof obligations, not assumptions.
