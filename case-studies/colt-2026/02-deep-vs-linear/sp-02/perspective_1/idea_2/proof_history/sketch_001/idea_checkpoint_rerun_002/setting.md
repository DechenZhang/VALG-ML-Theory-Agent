# Formalized Setting

- Basic setup:
  Let \(\mathcal X\) be an arbitrary (possibly infinite) domain and let
  \(\mathcal H\subseteq\{+1,-1\}^{\mathcal X}\). For a distribution
  \(\mathcal D\) on \(\mathcal X\), a target \(h\in\mathcal H\), and a
  binary predictor \(g:\mathcal X\to\{+1,-1\}\), define
  \[
  L_{\mathrm{bin}}(\mathcal D,h,g)
  :=\Pr_{x\sim\mathcal D}[g(x)h(x)<0].
  \]
  For a real score \(s:\mathcal X\to\mathbb R\), define the tie-penalized
  loss
  \[
  L_{\mathrm{tie}}(\mathcal D,h,s)
  :=\Pr_{x\sim\mathcal D}[s(x)h(x)\le 0].
  \]
  Thus \(L_{\mathrm{tie}}(\mathcal D,h,g)=
  L_{\mathrm{bin}}(\mathcal D,h,g)\) for every binary \(g\), while the
  identically zero score has tie loss one.

  For \(\alpha\in[0,1]\), define
  \(\operatorname{dc}^{\mathrm{tie}}_{\alpha}(\mathcal H)\) as the least
  \(d\) for which there is a probability law \(\mathsf P\) on feature maps
  \(\Phi:\mathcal X\to\mathbb R^d\), fixed before and shared by every
  \((\mathcal D,h)\), such that
  \[
  \sup_{\mathcal D}\sup_{h\in\mathcal H}
  \mathbb E_{\Phi\sim\mathsf P}
  \left[\inf_{w\in\mathbb R^d}
  L_{\mathrm{tie}}\bigl(\mathcal D,h,
  x\mapsto\langle w,\Phi(x)\rangle\bigr)\right]\le\alpha.
  \]

  An unrestricted SQ query is any
  \(q:\mathcal X\times\{+1,-1\}\to[-1,1]\). For fixed
  \((\mathcal D,h)\), a tolerance-\(\tau\) adaptive oracle policy may use
  the observed transcript, but each reply \(a\) to a current query \(q\)
  must satisfy
  \[
  \left|a-\mathbb E_{x\sim\mathcal D}q(x,h(x))\right|\le\tau.
  \]
  Let \(R\sim\mu\) denote the complete random tape of the fixed learner
  \(A\); conditioning on \(R=r\) makes all queries, stopping decisions, and
  the terminal binary predictor deterministic. Write
  \(A_r^{\mathcal O}(\mathcal D,h)\) for that terminal predictor when the
  deterministic protocol \(A_r\) interacts with oracle policy \(\mathcal O\)
  on the labeled distribution induced by \((\mathcal D,h)\).

  Put
  \[
  K:=\lceil 1/\tau\rceil,\qquad
  G:=\{-1+2j/K:0\le j\le K\},\qquad
  N:=|G|^m=(\lceil1/\tau\rceil+1)^m.
  \]
  Fix a deterministic nearest-grid map \(\rho:[-1,1]\to G\), resolving
  midpoint ties in any fixed way. Since adjacent grid points are separated
  by \(2/K\),
  \[
  |\rho(u)-u|\le 1/K\le\tau\qquad(u\in[-1,1]).
  \]

  For each tape \(r\) and full reply string
  \(z=(z_1,\ldots,z_m)\in G^m\), replay the deterministic protocol \(A_r\),
  supplying \(z_t\) at its \(t\)-th query. Let
  \(g_{r,z}:\mathcal X\to\{+1,-1\}\) be its terminal predictor. If the
  protocol stops after a prefix, all suffixes receive the same terminal
  predictor; equivalently, the response tree is padded to depth \(m\).
  Order \(G^m\) lexicographically and define
  \[
  \phi_r(x):=(g_{r,z}(x))_{z\in G^m}\in\{+1,-1\}^{N},
  \qquad
  \mathsf P_A:=\operatorname{Law}(\phi_R),\quad R\sim\mu.
  \]
  The law \(\mathsf P_A\) depends only on the fixed learner, its tape law,
  and \((m,\tau)\), and is therefore chosen before \((\mathcal D,h)\).

  For each \((\mathcal D,h)\), define the deterministic canonical oracle
  \[
  \mathcal O^{\rho}_{\mathcal D,h}(q)
  :=\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right).
  \]
  It is tolerance-valid by the rounding bound. For tape \(r\), let
  \(z^{\mathcal D,h,r}\in G^m\) be the replies generated recursively by
  this oracle along the adaptive run, padded after early stopping by the
  fixed grid value \(-1\). If \(e_z\in\mathbb R^N\) is the standard basis
  vector for coordinate \(z\), then
  \[
  \langle e_{z^{\mathcal D,h,r}},\phi_r(x)\rangle
  =g_{r,z^{\mathcal D,h,r}}(x),
  \]
  and the predictor on the right is exactly the output of \(A_r\) against
  \(\mathcal O^{\rho}_{\mathcal D,h}\).

- Technical assumptions:
  - `assump:sq-parameter-regime` (SQ parameter regime):
    \(m\in\mathbb N_0\), \(\tau>0\), and
    \(\varepsilon\in[0,1/4)\).
  - `assump:universal-adversarial-sq` (Universal adversarial-SQ learner):
    One randomized adaptive algorithm \(A\), fixed independently of
    \((\mathcal D,h)\), makes at most \(m\) unrestricted SQ queries of
    tolerance \(\tau\), returns a binary predictor, and, for every
    distribution \(\mathcal D\) on \(\mathcal X\), every
    \(h\in\mathcal H\), and every adaptive tolerance-valid oracle policy
    \(\mathcal O\), satisfies
    \[
    \mathbb E_{R\sim\mu}
    L_{\mathrm{bin}}\bigl(\mathcal D,h,
    A_R^{\mathcal O}(\mathcal D,h)\bigr)\le\varepsilon.
    \]
    The expectation is only over the learner tape; the oracle guarantee is
    pointwise for every valid policy.

# Formalized Goal

- Goal statement:
  Under `assump:sq-parameter-regime` and
  `assump:universal-adversarial-sq`, the pre-instance law \(\mathsf P_A\)
  defined above satisfies, simultaneously for every distribution
  \(\mathcal D\) on the arbitrary domain \(\mathcal X\) and every
  \(h\in\mathcal H\),
  \[
  \begin{aligned}
  &\mathbb E_{\Phi\sim\mathsf P_A}
  \left[\inf_{w\in\mathbb R^N}
  L_{\mathrm{tie}}\bigl(\mathcal D,h,
  x\mapsto\langle w,\Phi(x)\rangle\bigr)\right]\\
  &\quad\le
  \mathbb E_{R\sim\mu}
  L_{\mathrm{tie}}\bigl(\mathcal D,h,
  g_{R,z^{\mathcal D,h,R}}\bigr)
  =\mathbb E_{R\sim\mu}
  L_{\mathrm{bin}}\bigl(\mathcal D,h,
  A_R^{\mathcal O^{\rho}_{\mathcal D,h}}(\mathcal D,h)\bigr)
  \le\varepsilon.
  \end{aligned}
  \]
  Consequently,
  \[
  \operatorname{dc}^{\mathrm{tie}}_{\varepsilon}(\mathcal H)
  \le N=(\lceil1/\tau\rceil+1)^m.
  \]

# Note

- Rigor:
  Assumption support: `assump:sq-parameter-regime` is the \((m,\tau,
  \varepsilon<1/4)\) regime inherited from the COLT 2026 parent open problem
  and the approved idea; `assump:universal-adversarial-sq` is exactly that
  source's universal learner and adversarial-oracle premise. No additional
  theorem-facing premise is introduced. The randomized-map/pointwise-infimum
  form is calibrated to the COLT 2020 probabilistic-dimension foundation,
  with the approved tie-penalized loss repair. Grid rounding, complete-tape
  replay, and suffix
  padding are explicit constructions rather than assumptions; the approved
  idea records direct checks at \((m,\tau)=(1,1/2),(2,1/2),(2,1/3)\),
  including singleton and two-point domains. Source alignment: the same
  learner, arbitrary domains, every distribution and target, adversarial
  tolerance semantics, and expectation only over learner randomness are
  preserved, while the conclusion is explicitly changed from deterministic
  exact \(O(m/\tau^2)\) dimension to the tie-penalized probabilistic bound
  above. Progress type: `material_partial`. Materiality: the result is a
  nonvacuous domain-independent embedding at error \(\varepsilon\), but it
  asserts neither fixed-product nor finite-domain structure, a favorable
  oracle, confidence/zero-error representation, deterministic exactification,
  nor polynomial response-tree compression.
