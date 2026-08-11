# Formalized Setting

- Basic setup:
  Let \(\log\) denote the natural logarithm and let \(\log^*\) denote base-two iterated logarithm, with \(\log^*(t)\) the least \(j\geq 0\) for which the \(j\)-fold iterated base-two logarithm of \(t\) is at most \(1\). For a domain \(X\) and a nonempty finite binary concept class \(C\subseteq\{0,1\}^X\), set
  \[
  d(C)=\operatorname{VC}(C),\qquad
  \ell(C)=\operatorname{LD}(C),\qquad
  s(C)=1+\log^*(1+\ell(C)),\qquad
  q(C)=d(C)+s(C).
  \]
  Thus \(q(C)\geq 1\). Finiteness gives the standard counting bound
  \(\ell(C)\leq \log_2|C|\).

  Write \(Z_X=X\times\{0,1\}\) and \(\mathcal H_X=\{0,1\}^X\). A distribution \(Q\) on \(Z_X\) is realizable by \(C\) if there is \(c\in C\) such that \(Q\{(x,y):y=c(x)\}=1\). For \(h\in\mathcal H_X\), define its population zero-one risk by
  \[
  R_Q(h)=\Pr_{(x,y)\sim Q}[h(x)\neq y].
  \]
  All randomized algorithms below are kernels on output spaces in which singleton hypotheses and the events used below are measurable. An equality such as \(G(S)=h\) refers to exact equality as functions on \(X\), and its probability includes both \(S\sim Q^m\) and all internal randomness of \(G\).

  Two ordered samples of the same size are replacement-adjacent if they differ in at most one record. A randomized learner \(A:Z_X^n\rightsquigarrow\mathcal H_X\) is \((\varepsilon,\delta)\)-differentially private if, for every replacement-adjacent \(S,S'\) and every measurable output event \(E\),
  \[
  \Pr[A(S)\in E]\leq e^\varepsilon\Pr[A(S')\in E]+\delta,
  \]
  together with the same inequality after interchanging \(S,S'\). It is distribution-free realizable \((\alpha,\beta)\)-PAC for \(C\) if, for every \(Q\) realizable by \(C\),
  \[
  \Pr_{S\sim Q^n,\,h\sim A(S)}[R_Q(h)>\alpha]\leq\beta.
  \]
  There is no properness, output-representation, or computational restriction. Fix
  \[
  \alpha_0=\frac18,\qquad \beta_0=\frac18,
  \]
  and regard \(\varepsilon_0\in(0,1)\) as an arbitrary fixed constant.

  The stability-to-private-learning conversion is a cited-tool bridge, not an assumption. Theorem 17 (source label `thm:selection`) in Section 5 of Bun, Livni, and Moran, *An Equivalence Between Private Classification and Online Prediction* (arXiv:2003.00563, revised 2021), has the following current-notation interface. If a single randomized map \(G:Z_X^m\rightsquigarrow\mathcal H_X\) has, for every realizable \(Q\), an atom \(h_Q\) satisfying
  \[
  \Pr_{S\sim Q^m,\,G}[G(S)=h_Q]\geq\eta,
  \qquad R_Q(h_Q)\leq\frac\alpha2,
  \]
  then, for every \(\alpha,\beta,\varepsilon,\delta\in(0,1)\), its stable-histogram and private-selection construction gives an arbitrary-output \((\varepsilon,\delta)\)-DP learner with error at most \(\alpha\), failure probability at most \(\beta\), and sample bound
  \[
  n_{\mathrm{BLM}}
  \leq C_{\mathrm{BLM}}
  \left[
    \frac{m}{\eta\varepsilon}
      \log\!\left(\frac1{\eta\beta\delta}\right)
    +
    \frac1{\alpha\varepsilon}
      \log\!\left(\frac1{\eta\beta}\right)
  \right],
  \tag{BLM}
  \]
  for a universal numerical constant \(C_{\mathrm{BLM}}\). The source theorem supplies exactly the displayed dependence on producer cost \(m\), inverse atom mass \(1/\eta\), \(\varepsilon\), \(\beta\), and \(\log(1/\delta)\); it does not state an abstract polynomial dependence that may be invoked without this formula. Applying (BLM), including the binary-label recoding and its arbitrary-output and replacement-adjacency interfaces, is a downstream proof obligation.

  A privacy schedule depending only on a fixed polynomial in \(q=d+s\) is not uniformly self-consistent under the sequence quantifiers: \(|C_\kappa|\to\infty\) does not imply \(q_\kappa\to\infty\). A sufficient slowly growing correction is exposed rather than hidden. For \(L\geq0\), define
  \[
  u(L)=\log\log(e^e+L).
  \]
  Thus \(u(L)\geq1\), \(u(L)\to\infty\) as \(L\to\infty\), and
  \(e^{-u(L)}=1/\log(e^e+L)\). For the exponent \(a\) in
  `assump:polynomial-global-stability`, put \(b=2a+2\), choose
  \(K_a\geq2\) depending only on \(a,\alpha_0,\beta_0\), and
  \(C_{\mathrm{BLM}}\), and define, for \(q\geq1\), \(L\geq0\), and
  \(0<\varepsilon<1\),
  \[
  T_a(q,L)=q^b+u(L),
  \qquad
  \delta_a(q,L)=e^{-T_a(q,L)},
  \]
  \[
  N_a(q,L,\varepsilon)
  =\left\lceil
    K_a\varepsilon^{-2}q^b\bigl(1+T_a(q,L)\bigr)
  \right\rceil.
  \tag{PS}
  \]
  The required privacy-scale bridge is to choose \(K_a\) large enough that substituting
  \(m\leq q^a\), \(\eta=q^{-a}\), \(\alpha=\alpha_0\), \(\beta=\beta_0\), \(\varepsilon=\varepsilon_0\), and \(\delta=e^{-T_a(q,L)}\) into (BLM) yields
  \[
  \begin{aligned}
  n_{\mathrm{BLM}}
  &\leq \frac{C_{\mathrm{BLM}}}{\varepsilon_0}
  \left[
    q^{2a}\!\left(a\log q+\log\frac1{\beta_0}
      +T_a(q,L)\right)
    +\frac1{\alpha_0}\!\left(a\log q+\log\frac1{\beta_0}\right)
  \right]  \\
  &\leq N_a(q,L,\varepsilon_0).
  \end{aligned}
  \tag{SC}
  \]
  This is an elementary quantitative proof obligation, not a second hypothesis: use \(a\log q\leq a q^b\), \(q\geq1\), \(T_a(q,L)\geq q^b\), and \(\varepsilon_0<1\), then increase \(K_a\). If (BLM) uses fewer than \(N_a\) records, the learner ignores the remaining records. The exact privacy logarithm is
  \[
  \log\frac1{\delta_a(q,L)}
  =T_a(q,L)=q^{2a+2}+\log\log(e^e+L).
  \tag{LD}
  \]
  The first term is polynomial in \(d+s=q\); the second is the explicit slowly growing cardinality correction forced by bounded-\(q\) sequences. No dependence on \(|C|\) is hidden in the producer profile or in a constant.

  For a sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\), where each \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) is nonempty and finite, abbreviate
  \[
  L_\kappa=\log|C_\kappa|,\quad
  d_\kappa=d(C_\kappa),\quad
  \ell_\kappa=\ell(C_\kappa),\quad
  s_\kappa=s(C_\kappa),\quad
  q_\kappa=q(C_\kappa).
  \]
  The sequence-level asymptotic bridge is also a proof obligation rather than an assumption. From
  \[
  \forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
  \qquad L_\kappa>d_\kappa^p,
  \tag{SP}
  \]
  together with \(\ell_\kappa\leq\log_2|C_\kappa|\), prove that for every \(t>0\), eventually \(q_\kappa\leq L_\kappa^t\). Equivalently, \(q_\kappa=L_\kappa^{o(1)}\). Since also \(u(L_\kappa)=L_\kappa^{o(1)}\), (PS) then gives
  \[
  T_a(q_\kappa,L_\kappa)=L_\kappa^{o(1)},
  \qquad
  N_a(q_\kappa,L_\kappa,\varepsilon_0)
  =L_\kappa^{o(1)}=o(L_\kappa).
  \tag{AS}
  \]
  The uniform privacy-negligibility bridge is another required deduction, not an assumption. Writing
  \(x_\kappa=q_\kappa^b\geq1\) and \(u_\kappa=u(L_\kappa)\to\infty\), (PS) gives, for every fixed \(\rho>0\),
  \[
  \delta_a(q_\kappa,L_\kappa)
  N_a(q_\kappa,L_\kappa,\varepsilon_0)^\rho
  \leq C_{a,\rho,\varepsilon_0}
  e^{-x_\kappa-u_\kappa}
  \bigl[x_\kappa(1+x_\kappa+u_\kappa)\bigr]^\rho
  \longrightarrow0.
  \tag{PN}
  \]
  Indeed, \(1+x+u\leq(1+x)(1+u)\), the \(x\)-factor is uniformly bounded after multiplication by \(e^{-x}\), and
  \(e^{-u_\kappa}(1+u_\kappa)^\rho\to0\). Hence the chosen \(\delta_\kappa\) is \(o(N_\kappa^{-\rho})\) for every fixed \(\rho>0\), including \(o(1/N_\kappa)\), even when \(q_\kappa\) remains bounded.

- Technical assumptions:
  - `assump:polynomial-global-stability` (Polynomial global-stability profile): There is a universal integer \(a\geq1\) such that, for every domain \(X\) and every nonempty finite \(C\subseteq\{0,1\}^X\), there exist an integer
    \[
    1\leq m_C\leq q(C)^a
    \]
    and a single randomized nonprivate producer
    \(G_C:Z_X^{m_C}\rightsquigarrow\mathcal H_X\), chosen independently of the realizable distribution, such that for every distribution \(Q\) realizable by \(C\) there is a hypothesis \(h_{C,Q}\in\mathcal H_X\) for which
    \[
    R_Q(h_{C,Q})\leq\frac{\alpha_0}{2}
    \qquad\text{and}\qquad
    \Pr_{S\sim Q^{m_C},\,G_C}[G_C(S)=h_{C,Q}]\geq q(C)^{-a}.
    \tag{GS}
    \]
    The atom \(h_{C,Q}\) may depend on \(Q\), but the producer \(G_C\), its sample size, and the exponent \(a\) may not. Both \(G_C\) and \(h_{C,Q}\) may be improper and computationally unbounded. This output-atom condition, including its sample-cost and inverse-mass bounds, is the sole novel primitive hypothesis; private learnability, the conversion (BLM), the privacy specialization (SC), and all sequence asymptotics are not assumed.

# Formalized Goal

- Goal statement:
  Assume `assump:polynomial-global-stability`. Then, for every fixed \(\varepsilon_0\in(0,1)\) and every sequence \(\{C_\kappa\}_{\kappa\in\mathbb N}\) of nonempty finite binary concept classes satisfying
  \[
  \lim_{\kappa\to\infty}|C_\kappa|=\infty
  \]
  and the exact superpolynomial condition (SP), there is a constant \(K_a\), independent of \(\kappa,X_\kappa,C_\kappa,|C_\kappa|\), and for every \(\kappa\) an arbitrary-output, computationally unrestricted learner \(M_\kappa\) using
  \[
  N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0)
  \leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
    \left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right)
  \]
  iid labeled examples such that \(M_\kappa\) is distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_\kappa)\)-DP for
  \[
  \delta_\kappa
  =\exp\!\left[-q_\kappa^{2a+2}
    -\log\log(e^e+L_\kappa)\right],
  \qquad
  \log(1/\delta_\kappa)
  =q_\kappa^{2a+2}+\log\log(e^e+L_\kappa),
  \]
  while
  \[
  N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
  \]
  and, for every fixed \(\rho>0\), \(\delta_\kappa N_\kappa^\rho\to0\). Thus no such sequence can also satisfy Item 3 at this source-compatible approximate-DP scale. More generally, if a source-scale lower bound is stated at an allowed parameter \(\bar\delta(n)\) with \(\bar\delta(N_\kappa)\geq\delta_\kappa\), then \((\varepsilon_0,\delta_\kappa)\)-DP implies \((\varepsilon_0,\bar\delta(N_\kappa))\)-DP, so the same sublogarithmic learner refutes that weaker-privacy lower bound. In particular, (PN) with \(\rho=3\) implies that for every fixed \(c>0\), eventually
  \(\delta_\kappa\leq c/(N_\kappa^2\log(eN_\kappa))\); the constructed learner is therefore stronger-private than the standard displayed source allowance. A proof must instantiate (BLM), establish (SC), derive (AS) from (SP), and prove (PN); none of these conclusions may be promoted to an additional assumption.

# Note

- Rigor:
  Source alignment: the goal preserves finiteness, the universal quantifier over all class sequences, \(\lim_\kappa|C_\kappa|=\infty\), the exact quantifier order in Item 2, distribution-free realizability, fixed accuracy, confidence, and \(\varepsilon_0\), source-scale approximate \(\delta\), and arbitrary improper and computationally unbounded outputs. Progress type: `conditional`. Materiality: under one explicit universal nonprivate profile, the theorem rules out Items 1--3 for every admissible sequence rather than only for a construction family; the unresolved universal profile remains the exact conditional gap. Privacy-quantifier audit: the classes \(\{x\mapsto\mathbf 1\{x=j\}:j\in[N]\}\) have unbounded cardinality but \(\operatorname{VC}=\operatorname{LD}=1\), so \(|C_\kappa|\to\infty\) does not force \(q_\kappa\to\infty\). A privacy logarithm bounded by a fixed polynomial in \(q_\kappa\) alone would then remain bounded and could not yield sequence-level \(\delta_\kappa=o(1/N_\kappa)\). The exposed \(u(L_\kappa)=\log\log(e^e+L_\kappa)\) term is a slowly growing target-preserving correction; it remains \(L_\kappa^{o(1)}\) and is a parameter choice, not another theorem assumption. Assumption support: `assump:polynomial-global-stability` is novel and example-verified, not literature-derived. For any fixed realizable class \(F\) of size \(v\), a deterministic ERM with fixed tie-breaking and
  \(m\geq\lceil\log(2v)/(\alpha_0/2)\rceil\) is population-\(\alpha_0/2\) accurate with probability at least \(1/2\); because it has at most \(v\) outputs, some accurate output atom has mass at least \(1/(2v)\). This gives mass at least \(1/8\) for the four-concept chain \(\{\varnothing,\{1\},\{1,2\},\{1,2,3\}\}\), at least \(1/14\) for \(\{A\subseteq[3]:|A|\leq2\}\), and at least \(1/12\) for the six affine-line indicators \(\{x\mapsto\mathbf 1\{v\cdot x=t\}:v\in\mathbb F_2^2\setminus\{0\},\ t\in\mathbb F_2\}\). These examples verify the arbitrary-output atom notion and its nonvacuity but do not prove the universal \(q^a\) cost/mass profile. Parent-paper alignment: Bun--Livni--Moran supplies only the explicitly displayed conversion (BLM), while the VC-one result is quantitative motivation for the \(\log^*\!\operatorname{LD}\) scale and is not a theorem input. The bridges (SC), (LD), (AS), (PN), the Item 2 deductions, and the stronger-privacy comparison remain proof obligations.
