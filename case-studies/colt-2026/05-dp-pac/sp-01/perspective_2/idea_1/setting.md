# Formalized Setting

- Basic setup:
  Let \(X\) be an arbitrary nonempty set and let \(C\subseteq\{0,1\}^X\) be an arbitrary, possibly infinite, binary concept class. Write
  
  \[
  v:=\operatorname{VC}(C),\qquad d:=\operatorname{LD}(C),\qquad
  Q(v,d):=(v+1)\bigl(1+\lceil\log_2(d+1)\rceil\bigr).
  \]
  
  Here \(\log_2\) is the ordinary base-two logarithm. Its iterated version is the distinct function \(\log_2^*t:=\min\{k\ge 0:\log_2^{\circ k}(t)\le 1\}\) for \(t>0\); no occurrence of \(\log_2(d+1)\) below may be replaced by \(\log_2^*(d+1)\). Define
  \[
  \log^+|C|:=
  \begin{cases}
  \max\{1,\log_2|C|\},& |C|<\infty,\\
  +\infty,& |C|=\infty.
  \end{cases}
  \]

  For a distribution \(D\) on \(X\), a target \(c\in C\), and any (not necessarily proper) hypothesis \(h:X\to\{0,1\}\), let
  \[
  \operatorname{err}_D(h,c):=\Pr_{x\sim D}[h(x)\ne c(x)].
  \]
  Let \(P_{D,c}\) be the distribution of \((x,c(x))\) for \(x\sim D\), and let \(S\sim P_{D,c}^n\). A randomized learner \(A_n:(X\times\{0,1\})^n\to\{0,1\}^X\) is \((\varepsilon,\delta)\)-differentially private when, for every pair of datasets \(s,s'\) differing in one labeled record, including nonrealizable datasets, and every measurable output event \(E\),
  \[
  \Pr[A_n(s)\in E]\le e^\varepsilon\Pr[A_n(s')\in E]+\delta.
  \]
  Define the unrestricted realizable private sample complexity
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  :=\inf\left\{n\in\mathbb N:\begin{array}{l}
  \text{there exists an \((\varepsilon,\delta)\)-DP learner \(A_n\) such that}\\[-2pt]
  \displaystyle\sup_{D}\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^n,A_n}
  [\operatorname{err}_D(A_n(S),c)>\alpha]\le\beta
  \end{array}\right\}.
  \]
  The learner may depend on \(C,\alpha,\beta,\varepsilon,\delta\), may be computationally unbounded, and may output outside \(C\); the bound is uniform over \(D\) and \(c\).

  The branch's proof-internal construction is specified only as an obligation, not as an additional input promise. Use the standard convention \(\operatorname{LD}(\varnothing)=-1\). For a finite realizable labeled sequence \(s\), write \(C_s:=\{h\in C:h(x_i)=y_i\text{ for every }(x_i,y_i)\in s\}\). For a nonempty restriction \(V=C_s\), put \(V_{x,b}:=\{h\in V:h(x)=b\}\), define the Standard Optimal Algorithm state by
  \[
  \operatorname{SOA}_V(x)\in\arg\max_{b\in\{0,1\}}\operatorname{LD}(V_{x,b})
  \]
  choosing label \(0\) on a tie, and define its dyadic rank band by \(r(V):=\lceil\log_2(\operatorname{LD}(V)+1)\rceil\). The intended learner must construct, for every reached nonempty \(V\), a finite recursive certificate in which each internal node is justified either by (i) a Lyu irreducibility-decomposition transition to restrictions \(V'\) with \(r(V')<r(V)\), or by (ii) an explicitly certified total order of SOA states whose induced labels have the single-cut threshold property and whose off-chain disagreement fibers \(F\subseteq V\) satisfy \(\operatorname{VC}(F)<\operatorname{VC}(V)\). A path is charged once for each rank-band crossing and once for each transition from a certified chain to an off-chain fiber; \(q(T)\) is the largest charge of a root-to-leaf path in a constructed certificate \(T\).

  It is a central proof obligation to construct such a valid \(T_V\) for every reached restriction and prove, with a universal constant \(c_0\),
  \[
  \sup_{V=C_s\ne\varnothing}q(T_V)\le c_0 Q(v,d).
  \]
  The proof must then derive from this construction: low-error candidate coverage; enough stable candidate mass and neighboring-sample support for private selection; all generated membership facts; and end-to-end privacy and utility when Lyu's irreducible/SOA candidate generator and sparse exponential mechanism are used on rank-drop pieces, Cohen et al.'s Reorder-Slice-Compute threshold routine is used only on certified single-cut chain pieces, and independent-block aggregation, private frequency selection, and approximate-DP composition are applied. Certificate existence or validity, the displayed charge bound, low-error coverage, stable mass, support, membership, and privacy of the composed generated procedure are not theorem-facing assumptions.

  For target-spec bookkeeping, \(\Phi_{\mathrm{inh}}(\alpha,\beta,\varepsilon,\delta)\) denotes the explicit privacy/accuracy/confidence factor that the proof must obtain by instantiating the cited parent routines and their approximate-DP composition. It may depend only on \(\alpha,\beta,\varepsilon,\delta\) and universal numerical constants, never on \(X,C,D,c,v,d,|C|\), or any generated certificate. Its exact closed form is deliberately not guessed here; success requires preserving, up to explicitly justified universal or polylogarithmic losses, the parent routines' stated parameter dependence rather than hiding new class dependence in \(\Phi_{\mathrm{inh}}\).

- Technical assumptions:
  - `assump:finite-littlestone` (Finite Littlestone dimension): \(d=\operatorname{LD}(C)<\infty\). This implies \(v\le d<\infty\); there is no finiteness, cardinality, structural-decomposition, properness, or computational assumption on \(C\).
  - `assump:realizable-iid` (Realizable distribution-free sampling): for utility, \(D\) is an arbitrary distribution on \(X\), \(c\) is an arbitrary member of \(C\), and the labeled sample is i.i.d. from \(P_{D,c}\). No other distributional condition is imposed.
  - `assump:approximate-dp-regime` (Approximate-DP parameter regime): \(0<\alpha,\beta<1/2\), \(0<\varepsilon\le 1\), and \(0<\delta<1\). The source's primary class-complexity comparison fixes \(\alpha,\beta,\varepsilon\) at small constants and considers admissible asymptotic choices with \(n\delta_n\to0\), i.e. \(\delta_n=o(1/n)\); dependence on all four parameters must remain explicit through \(\Phi_{\mathrm{inh}}\).

# Formalized Goal

- Goal statement:
  **Target-spec mode, universal material-partial upper bound.** Prove that there are universal constants \(K,k\ge 1\) such that every class satisfying `assump:finite-littlestone`, under `assump:realizable-iid` and `assump:approximate-dp-regime`, admits an unrestricted learner of the form described above for which
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  \le
  K\,\Phi_{\mathrm{inh}}(\alpha,\beta,\varepsilon,\delta)\,
  Q(v,d)^5\,[\log(2+Q(v,d))]^k.
  \]
  Equivalently, after the explicit privacy/learning factor is separated, the new class-complexity arm is \(\widetilde O(Q(v,d)^5)=\widetilde O([(v+1)(1+\log_2(d+1))]^5)\), uniformly over arbitrary possibly infinite \(C\), arbitrary \(D\), and arbitrary \(c\in C\). At fixed source-comparison values of \(\alpha,\beta,\varepsilon\), with the approximate-DP \(\delta=o(1/n)\) factor kept separate, taking the best of this learner and the established finite-cardinality and generic Littlestone learners must yield the visible frontier
  \[
  \widetilde O\!\left(\min\left\{\log^+|C|,\ d^5,\ Q(v,d)^5\right\}\right).
  \]
  The success criterion is the unconditional universal \(Q(v,d)^5\) arm itself: \(q(T)\), certificate existence, low-error coverage, stable mass, support, membership, or any other generated object may not occur as an assumption or condition of the final theorem. The result does not claim a matching characterization or the stronger \(\operatorname{poly}(v,\log_2^*(d+1))\) upper bound.

# Note

- Rigor:
  Source alignment is unchanged: approximate central DP, arbitrary realizable distributions, unrestricted improper and computationally unbounded learners, and every binary class of finite Littlestone dimension. Progress type is `material_partial`. Materiality is the source-authorized universal \(\operatorname{poly}(\operatorname{VC},\log_2(\operatorname{LD}+1))\) milestone; it improves the existing \(\widetilde O(d^5)\) arm when \(v\log_2(d+1)=o(d)\), while the remaining source gap is between the lower benchmark \(\Omega(v+\log_2^*(d+1))\) and a matching characterization or universal \(\operatorname{poly}(v,\log_2^*(d+1))\) upper bound. Parent/transfer provenance is Lyu, *Private Learning of Littlestone Classes, Revisited* (arXiv:2510.00076), for irreducibility/SOA generation and sparse selection, and Cohen et al., *Optimal Differentially Private Learning of Thresholds and Quasi-Concave Optimization* (DOI:10.1145/3564246.3585148), for Reorder-Slice-Compute on certified ordered pieces, with block aggregation and approximate-DP accounting inherited rather than assumed.

  Assumption support: `assump:finite-littlestone` is the standard unrestricted class regime of Alon et al., Bun-Livni-Moran, Ghazi et al., Lyu, and the source open problem; `assump:realizable-iid` is the standard distribution-free realizable PAC model used by those generic results and the source; `assump:approximate-dp-regime` is the source/Lyu approximate-central-DP regime. There are no novel theorem-facing assumptions. The novel certificate and charge bridge remain proof obligations; the recorded threshold, finite-grid rectangle, and full-labeling-cube checks are only feasibility examples, not support for an assumption or a restriction of theorem scope.

  Explicit-rate audit: exposed variables are \(v,d,\alpha,\beta,\varepsilon,\delta\), with \(|C|\) exposed only in the alternative finite-class frontier; \(q(T)\) is not exposed. The displayed \(K,k\) are universal, the logarithmic tilde loss is only in \(Q(v,d)\), and \(\Phi_{\mathrm{inh}}\) may depend only on the four named privacy/learning parameters. The primary comparison fixes \(\alpha,\beta,\varepsilon\), keeps the inherited \(\delta\)-factor separate, and uses \(n\delta_n\to0\); \(X,C,D,c\) are not hidden fixed quantities because the claim is uniform over them. Utility is high probability jointly over the i.i.d. sample and learner randomness, while DP is the deterministic neighboring-dataset probability inequality over learner randomness. The sample-complexity mode is the fixed-sample minimax quantity \(m_C\), with no horizon or stopping-time upgrade, and the risk metric is population binary \(0\)-\(1\) error \(\operatorname{err}_D\).
