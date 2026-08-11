# Formalized Setting

- Basic setup:
  Let \(X\) be an arbitrary nonempty set and let \(C\subseteq\{0,1\}^X\) be an arbitrary nonempty, possibly infinite, binary concept class. Write
  \[
  v:=\operatorname{VC}(C),\qquad d:=\operatorname{LD}(C).
  \]
  All logarithms are natural. Define \(\log^*u:=0\) for \(0\le u\le1\), and for \(u>1\) define \(\log^*u:=\min\{j\ge1:\log^{\circ j}(u)\le1\}\), with \(\log^{\circ0}(u)=u\); ordinary \(\log\) and iterated \(\log^*\) are distinct. Define
  \[
  \log^+|C|:=
  \begin{cases}
  \max\{1,\log|C|\},& |C|<\infty,\\
  +\infty,& |C|=\infty.
  \end{cases}
  \]
  For a distribution \(D\) on \(X\), a target \(c\in C\), and any possibly improper hypothesis \(h:X\to\{0,1\}\), let
  \[
  \operatorname{err}_D(h,c):=\Pr_{x\sim D}[h(x)\ne c(x)].
  \]
  Let \(P_{D,c}\) be the law of \((x,c(x))\) for \(x\sim D\). A randomized learner \(A_N:(X\times\{0,1\})^N\to\{0,1\}^X\) is \((\varepsilon,\delta)\)-differentially private if, for every pair of labeled datasets \(s,s'\) that differ in one record, including nonrealizable datasets, and every measurable output event \(E\),
  \[
  \Pr[A_N(s)\in E]\le e^\varepsilon\Pr[A_N(s')\in E]+\delta.
  \]
  The unrestricted realizable private sample complexity is
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  :=\inf\left\{N\in\mathbb N_0:
  \begin{array}{l}
  \text{there is an \((\varepsilon,\delta)\)-DP learner \(A_N\) such that}\\[-2pt]
  \displaystyle\sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,A_N}
  [\operatorname{err}_D(A_N(S),c)>\alpha]\le\beta
  \end{array}\right\}.
  \]
  Learners may depend on \(C,\alpha,\beta,\varepsilon,\delta\), may be computationally unbounded, and may output outside \(C\).

  Define the target rate and a logarithmic envelope by
  \[
  R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta)
  :=
  \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  \[
  \Lambda(d,v,\alpha,\beta,\varepsilon,\delta)
  :=1+\log(e+d)+\log(e+v)+\log(e+\alpha^{-1})
  +\log(e+\beta^{-1})+\log(e+\varepsilon^{-1})
  +\log\!\bigl(e+\log(e/\delta)\bigr).
  \]
  Here \(N=\widetilde O(R_{\mathrm{VC}})\) means that \(N\le K\Lambda^qR_{\mathrm{VC}}\) for universal \(K\ge1\) and \(q\in\mathbb N_0\). Thus the tilde may hide only logarithms of the displayed parameters. It may not hide another positive power of \(v\), \(d\), or \(\log^+|C|\), nor any dependence on \(X,D,c\), a decomposition, a candidate list, a generated event, or a support set.

  Define the learner \(A_C^{\mathrm{VC\text{-}Lyu}}\) by two branches.

  If \(d=0\), then \(v=0\) and the nonempty class \(C\) consists of one function \(c_C\). The learner uses \(N=0\) samples and outputs \(c_C\) deterministically.

  If \(d\ge1\), then \(1\le v\le d\). Retain Lyu's exact information-theoretic learner, including the source-valid teacher count
  \[
  k=k_{\mathrm{Lyu}}(d,\beta,\varepsilon,\delta)
  =\widetilde O\!\left(
    \frac{d^2\log(1/(\delta\beta))}{\varepsilon}
  \right),
  \]
  the same fixed teacher blocks at every stage \(j\in\{0,1,\ldots,d\}\), the exact valid decompositions, the exact essential-SOA lists and candidate identities, one AboveThreshold process over the source stages, one Sparse Sample call after the successful stage, and Lyu's unchanged PAC conversion. In particular, there is no RSC scheduler, fresh-slice replacement, new certificate, output quotient, properness requirement, or computational restriction.

  Only the master-sample block calibration changes. For
  \[
  a:=v+\log(4k/\beta),\qquad
  Q:=e+\frac{e k d^2a}{\alpha v},
  \]
  choose a universal constant \(C_{\mathrm{blk}}>0\) and set
  \[
  m:=\left\lceil C_{\mathrm{blk}}\frac{d^2}{\alpha}a\log Q\right\rceil,
  \qquad n_0:=km.
  \]
  Set \(N:=n_0\) in this branch and retain Lyu's stage parameters \(p_j:=2^j n_0d\) for \(j=0,\ldots,d\). The complete labeled master sample \(S=((x_r,y_r))_{r=1}^{n_0}\) is drawn first; then \(\mathcal P\) is a uniform partition of \(S\) into the same \(k\) fixed blocks of size \(m\) used by all source stages. Conditional on \(S\), each block is marginally a uniform sample without replacement from \(S\); independence among the blocks is neither asserted nor needed. Define the error-trace family
  \[
  \mathcal E_C(S):=
  \left\{
    \bigl(\mathbf 1\{h(x_r)\ne y_r\}\bigr)_{r=1}^{n_0}:h\in C
  \right\}.
  \]
  Xoring by the fixed label vector is a bijection on traces, so
  \[
  |\mathcal E_C(S)|\le \Pi_C(n_0)\le (en_0/v)^v,
  \]
  where \(\Pi_C\) is the growth function and the last inequality is the Sauer--Shelah bound (the displayed calibration has \(n_0\ge v\)). Let \(E_{\mathrm{good}}(S,\mathcal P)\) denote Lyu's exact simultaneous fixed-block high-error relative-deviation and low-error upper-tail event, with its source thresholds and tolerance unchanged. The sole new quantitative bridge to be proved is
  \[
  \Pr_{\mathcal P}\!\left(E_{\mathrm{good}}(S,\mathcal P)^c\mid S\right)
  \le 4k\,\Pi_C(n_0)\exp\!\left(-c_{\mathrm{tr}}m\alpha/d^2\right)
  \le 4k(en_0/v)^v\exp\!\left(-c_{\mathrm{tr}}m\alpha/d^2\right),
  \tag{Trace}
  \]
  for a universal \(c_{\mathrm{tr}}>0\), followed by the fixed-point calculation
  \[
  n_0=km,\qquad \log(en_0/v)=O(\log Q),
  \tag{Fixed point}
  \]
  which makes the right-hand side of (Trace) at most the allocated constant fraction of \(\beta\) when \(C_{\mathrm{blk}}\) is sufficiently large.

  Neither \(E_{\mathrm{good}}\) nor any list-membership, common-item, candidate-support, neighboring-list sensitivity, privacy, or population-generalization conclusion is a condition on the theorem. They are generated proof obligations. The proof must derive (Trace) after conditioning on \(S\), feed it into Lyu's unchanged fixed-block decomposition and sparse-selection argument without changing any source object, reverify the source support and neighboring-dataset interfaces, derive end-to-end \((\varepsilon,\delta)\)-DP, and carry out the unchanged PAC conversion for the potentially improper SOA-output class, whose required VC control is also a derived source interface. The source generalization contribution \((d+\log(1/\beta))/\alpha\) remains explicit even when it is dominated by the private-ERM term for \(d\ge1\).

- Technical assumptions:
  - `assump:finite-littlestone` (Arbitrary finite-Littlestone class): \(C\subseteq\{0,1\}^X\) is nonempty and \(d=\operatorname{LD}(C)<\infty\). Consequently \(v\le d<\infty\). No finite-cardinality, finite-domain, factorization, order, decomposition-certificate, stability, support, properness, or computational assumption is imposed.
  - `assump:realizable-iid` (Realizable distribution-free sampling): for utility, \(D\) is an arbitrary distribution on \(X\), \(c\) is an arbitrary member of \(C\), and the labeled sample is i.i.d. from \(P_{D,c}\). Realizability is the only utility assumption; privacy is still required on every neighboring pair of labeled datasets.
  - `assump:approximate-dp-regime` (Approximate central-DP parameters): \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and \(0<\delta<1\). For the positive-dimensional source branch, the convention \(\delta\ll1/N\) is interpreted along asymptotic parameter sequences for which
    \[
    \delta K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
    R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta)\longrightarrow0
    \]
    for the universal \(K,q\) in the goal; then the claimed \(N\le K\Lambda^qR_{\mathrm{VC}}\) satisfies \(N\delta\to0\). No positive constant \(\delta\) is silently absorbed in the source-facing asymptotic comparison.

# Formalized Goal

- Goal statement:
  **Exact-goal mode, universal VC-sensitive material-partial upper bound.** Prove that universal constants \(K\ge1\) and \(q\in\mathbb N_0\) exist such that, for every \(C\) satisfying `assump:finite-littlestone` and every parameter choice under `assump:realizable-iid` and `assump:approximate-dp-regime`, the learner \(A_C^{\mathrm{VC\text{-}Lyu}}\) is \((\varepsilon,\delta)\)-DP and satisfies
  \[
  \sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,A_C^{\mathrm{VC\text{-}Lyu}}}
  \left[\operatorname{err}_D(A_C^{\mathrm{VC\text{-}Lyu}}(S),c)>\alpha\right]
  \le\beta,
  \]
  using \(N=0\) when \(d=0\), and, when \(d\ge1\), using Lyu's unchanged procedure with the VC-calibrated fixed blocks above and
  \[
  N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
  R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta).
  \]
  Equivalently,
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  =\widetilde O\!\left(
  \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha}
  \right),
  \]
  with exactly the restricted hidden dependence defined above. At fixed \(\alpha,\beta,\varepsilon\) and after retaining the displayed logarithmic \(\delta\)-dependence in the source-compatible regime, combining this new arm with the separately normalized finite-class learner and Lyu's existing universal learner gives the visible class-complexity frontier
  \[
  \widetilde O\!\left(
    \min\{\log^+|C|,\ d^5,\ v d^4\}
  \right).
  \]
  The new arm is strictly smaller than \(d^5\) when \(v=o(d)\), but returns to the \(d^5\) scale when \(v=\Theta(d)\), including \(v=d\). This is an unconditional goal over the stated arbitrary-class scope: (Trace), the fixed-point inequality, \(E_{\mathrm{good}}\), list membership, the common item, candidate support, neighboring-list sensitivity, privacy, PAC generalization, and the displayed rate must all be derived and may not be added as final-theorem assumptions. The claim does not characterize private sample complexity and does not assert a universal \(\operatorname{poly}(v,\log d)\) or \(\operatorname{poly}(v,\log^*d)\) upper bound.

# Note

- Rigor:
  Source alignment is preserved: approximate central DP, arbitrary realizable distributions, every possibly infinite nonempty binary class of finite Littlestone dimension, and unrestricted improper and computationally unbounded learners, with \(v\), \(d\), \(\log^*d\), and \(\log|C|\) kept distinct. Progress type is `material_partial`. Materiality is a target-changing repair of idea_2's unsupported universal \(\widetilde O(d^4)\) claim: it improves Lyu's source-valid \(\widetilde O(d^5)\) arm only through the proved trace exponent \(v\), is strict when \(v=o(d)\), and honestly gives no power improvement on the full-cube regime \(v=d\). The unresolved general \(v\ge2\) regime is directly narrowed, but the gaps to \(\operatorname{poly}(v,\log d)\), \(\operatorname{poly}(v,\log^*d)\), and a characterization remain.

  The parent source is Xin Lyu, *Private Learning of Littlestone Classes, Revisited* (arXiv:2510.00076); Sauer--Shelah/VC trace bookkeeping is aligned with Ghazi et al., *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy* (arXiv:2012.03893). The semantic delta is only the conditional trace union bound (Trace) and its explicit fixed-point choice of \(m\). Lyu's fixed blocks, exact decompositions, essential lists, common-item argument, AboveThreshold process, Sparse Sample mechanism, support/sensitivity objects, \(d+1\) stages, privacy accounting, and PAC conversion are unchanged.

  Assumption support: `assump:finite-littlestone` is the standard unrestricted class regime of Lyu and the source open problem; `assump:realizable-iid` is their standard distribution-free realizable PAC model; `assump:approximate-dp-regime` is Lyu's approximate-central-DP parameter regime with its small-\(\delta\) convention made explicit. There are no novel theorem-facing assumptions. The VC-calibrated event bound, source-list/support/common-item interfaces, privacy, and generalization are derived obligations, not assumption support.

  Explicit-rate audit: exposed variables are \(d,v,\alpha,\beta,\varepsilon,\delta\), with \(|C|\) appearing only in the separate finite-class arm. The teacher count \(k\), block size \(m\), master size \(n_0\), \(a,Q\), source list parameters, stage objects, and failure allocations must be eliminated through explicit inequalities; none may enter hidden dependence. The only hidden quantities are universal \(K,q\), and \(\Lambda^q\) contains logarithms only. Utility is high probability jointly over the i.i.d. data, random fixed partition, and learner randomness; privacy is the neighboring-dataset inequality over all learner randomness. The mode is fixed-sample minimax PAC complexity and the metric is population binary \(0\)-\(1\) error. In the class-complexity frontier, \(\alpha,\beta,\varepsilon\) are fixed, while \(\delta\) follows the explicit source-compatible schedules above.
