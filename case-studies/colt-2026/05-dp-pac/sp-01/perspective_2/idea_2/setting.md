# Formalized Setting

- Basic setup:
  Let \(X\) be an arbitrary nonempty set and let \(C\subseteq\{0,1\}^X\) be an arbitrary, possibly infinite, binary concept class. Write
  \[
  v:=\operatorname{VC}(C),\qquad d:=\operatorname{LD}(C).
  \]
  All logarithms \(\log\) are natural logarithms. Define \(\log^*u:=\min\{j\ge 0:\log^{\circ j}(u)\le 1\}\) for \(u>0\), with \(\log^{\circ0}(u)=u\); ordinary \(\log\) and iterated \(\log^*\) are distinct. Define
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
  Let \(P_{D,c}\) be the law of \((x,c(x))\) for \(x\sim D\), and let \(S\sim P_{D,c}^n\). A randomized learner \(A_n:(X\times\{0,1\})^n\to\{0,1\}^X\) is \((\varepsilon,\delta)\)-differentially private if, for every pair of datasets \(s,s'\) differing in one labeled record, including nonrealizable datasets, and every measurable output event \(E\),
  \[
  \Pr[A_n(s)\in E]\le e^\varepsilon\Pr[A_n(s')\in E]+\delta.
  \]
  Define the unrestricted realizable private sample complexity
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  :=\inf\left\{n\in\mathbb N:\begin{array}{l}
  \text{there is an \((\varepsilon,\delta)\)-DP learner \(A_n\) such that}\\[-2pt]
  \displaystyle\sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^n,A_n}
  [\operatorname{err}_D(A_n(S),c)>\alpha]\le\beta
  \end{array}\right\}.
  \]
  The learner may depend on \(C,\alpha,\beta,\varepsilon,\delta\), may be computationally unbounded, and may output outside \(C\); utility is uniform over \(D\) and \(c\).

  For the displayed parameters define
  \[
  R(d,v,\alpha,\beta,\varepsilon,\delta)
  :=\frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
    +\frac{v+\log(1/\beta)}{\alpha}
  \]
  and the logarithmic envelope
  \[
  \Lambda(d,v,\alpha,\beta,\varepsilon,\delta)
  :=1+\log(e+d)+\log(e+v)+\log(e+\alpha^{-1})+\log(e+\beta^{-1})
  +\log(e+\varepsilon^{-1})+\log\!\bigl(e+\log(e/\delta)\bigr).
  \]
  In this branch, \(n=\widetilde O(R)\) means exactly that \(n\le K\Lambda^kR\) for universal constants \(K\ge1\) and integer \(k\ge0\). Thus the tilde can hide only logarithms of the displayed variables. Neither \(K\), \(k\), nor \(\Lambda\) may depend on \(X,C,D,c,|C|\), any Lyu decomposition or candidate list, any RSC slice or transcript, or any generated support event.

  The intended learner \(A_C^{\mathrm{RSC-Lyu}}\) retains Lyu's source construction rather than introducing a new structural decomposition. It uses exactly the source's valid \((p,d)\)-decompositions, essential-SOA-hypothesis lists, irreducibility utility argument, sparse selection, and fixed stage set
  \[
  \mathcal T_d:=\{0,1,\ldots,d\}.
  \]
  This fixed source counter is the sole termination mechanism. There is no branch-local rank-drop, single-cut, star, ordering, or finite-certificate recursion; an infinite restriction is processed symbolically by the exact source stage map and is never enumerated concept by concept.
  Here \(p\in\mathbb N\) is Lyu's auxiliary decomposition parameter, to be chosen and discharged inside the proof from the displayed theorem parameters. If \(H_t\) is the exact source essential list at stage \(t\), the source-side raw controls to be instantiated are
  \[
  |H_t|\le L_{\mathrm{raw}}(p,d):=p^d2^{d^2},\qquad
  B\ge \frac{10\log(L_{\mathrm{raw}}(p,d)/\delta)}{\varepsilon}
  \]
  for the sparse-sampling threshold \(B\). The choice of \(p\), the lists \(H_t\), their membership and support, and satisfaction of the threshold condition are algorithmic or derived objects, not theorem-facing conditions.

  The only procedural change is to run these \(d+1\) exact source stages through one adaptation of Cohen et al.'s generic Reorder-Slice-Compute (RSC) scheduler. The scheduler randomly reorders one master sample, forms noisy disjoint slices, feeds the stage-\(t\) slice and the previously released transcript to Lyu's exact stage-\(t\) map, releases only the privatized stage output, and requires all later state to be postprocessing of released outputs. This is an intended construction, not an assertion that Cohen et al.'s theorem already applies.

  The proof must provide a current-notation RSC-to-Lyu wrapper that (i) identifies every exact source stage map and the precise RSC theorem hypothesis it must satisfy; (ii) proves one-record adjacency of every slice extractor and generated stage map for each fixed prior released transcript; (iii) proves any privacy and neighboring-support condition required by Lyu's input-dependent sparse selection; (iv) couples the noisy disjoint slices and adaptive released transcript to the exact source-stage utility, common-item, list-membership, and low-error events without changing their objects or conclusions; (v) verifies that later stages use no unreleased data except through the current disjoint slice; and (vi) derives end-to-end \((\varepsilon,\delta)\)-DP, probability at least \(1-\beta\), and the bound \(K\Lambda^kR\) from \(L_{\mathrm{raw}}\), \(B\), and the \(d+1\) stages. In particular, the quantitative bridge must show by explicit inequalities that RSC removes exactly the extra factor due to separate per-stage privacy splitting; it may not replace a raw source occurrence of \(d\) syntactically, assume neighboring support, or hide any remaining polynomial factor in \(\Lambda\). Cohen et al.'s threshold/interior-point utility theorem is not part of this construction. RSC adjacency, source-stage compatibility, noisy-slice validity, common mass, neighboring support, membership, privacy, and the \(d^4\) amortization are all generated proof obligations.

  Once \(K,k\) are fixed, the source convention \(\delta\ll1/n\) is interpreted only along asymptotic instance sequences for which
  \[
  \delta\,K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^k
  R(d,v,\alpha,\beta,\varepsilon,\delta)\longrightarrow0.
  \]
  The claimed choice \(n\le K\Lambda^kR\) then satisfies \(n\delta\to0\). Thus \(\delta\) is exposed in the theorem and is neither held at a positive constant nor absorbed into hidden notation in the source-facing comparison.

- Technical assumptions:
  - `assump:finite-littlestone` (Finite Littlestone dimension): \(d=\operatorname{LD}(C)<\infty\). Consequently \(v\le d<\infty\). There is no finite-cardinality, structural, factorization, ordering, stability, support, properness, or computational assumption on \(C\).
  - `assump:realizable-iid` (Realizable distribution-free sampling): for utility, \(D\) is an arbitrary distribution on \(X\), \(c\) is an arbitrary member of \(C\), and the labeled sample is i.i.d. from \(P_{D,c}\). No other distributional condition is imposed.
  - `assump:approximate-dp-regime` (Approximate-DP parameters): \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and \(0<\delta<1\). The source-facing small-\(\delta\) specialization is the explicit self-consistent regime above; it is not an unrecorded condition on a generated sample size.

# Formalized Goal

- Goal statement:
  **Exact-goal mode, universal material-partial upper bound.** Prove that universal \(K\ge1\) and integer \(k\ge0\) exist such that, for every \(C\) satisfying `assump:finite-littlestone` and every parameter choice under `assump:realizable-iid` and `assump:approximate-dp-regime`, the fully instantiated learner \(A_C^{\mathrm{RSC-Lyu}}\) is \((\varepsilon,\delta)\)-DP and uses some
  \[
  n\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^k
  R(d,v,\alpha,\beta,\varepsilon,\delta)
  \]
  samples while satisfying
  \[
  \sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^n,A_C^{\mathrm{RSC-Lyu}}}
  [\operatorname{err}_D(A_C^{\mathrm{RSC-Lyu}}(S),c)>\alpha]\le\beta.
  \]
  Consequently
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  =\widetilde O\!\left(
    \frac{d^4\log(1/(\delta\beta))}{\varepsilon\alpha}
    +\frac{v+\log(1/\beta)}{\alpha}
  \right),
  \]
  where the hidden constant is universal and the tilde has exactly the restricted meaning defined above: it hides no additional positive power of \(d\) or \(v\), no dependence on \(\log^+|C|\), and no unlisted class, distribution, generated-object, stage-count, list-size, or support dependence. After separating the displayed privacy/learning factors and restricting the source-facing comparison to the stated self-consistent small-\(\delta\) sequences, the separately normalized finite-class learner and this universal learner give
  \[
  \widetilde O\!\left(\min\{\log^+|C|,d^4\}\right).
  \]
  This is unconditional over the approved arbitrary-class scope: RSC applicability, adjacency, neighboring support, source-stage compatibility, and the \(d^4\) amortization must be proved and may not appear as final-theorem assumptions. The claim neither characterizes private sample complexity nor reaches a universal \(\operatorname{poly}(v,\log d)\) or \(\operatorname{poly}(v,\log^*d)\) bound.

# Note

- Rigor:
  Source alignment is unchanged: approximate central DP, arbitrary realizable distributions, every possibly infinite binary class of finite Littlestone dimension, and unrestricted improper and computationally unbounded learners, with \(v,d,\log^*d\), and \(\log|C|\) kept distinct. Progress type is `material_partial`. Materiality is the strict universal improvement of the source-verified \(\widetilde O(d^5)\) arm to \(\widetilde O(d^4)\); the remaining gap to \(\Omega(v+\log^*d)\), a universal \(\operatorname{poly}(v,\log d)\) or \(\operatorname{poly}(v,\log^*d)\) upper bound, and a matching characterization remains explicit. The transfer preserves Lyu's exact source objects and utility conclusions and adapts only the stage scheduler using Cohen et al.'s generic RSC privacy theorem; applicability to Lyu's exact stage maps is a theorem-critical wrapper obligation, and Cohen et al.'s threshold utility result supplies no conclusion here.

  Assumption support: `assump:finite-littlestone` is the standard unrestricted regime of Alon et al., Bun-Livni-Moran, Ghazi et al., Lyu, and the source open problem; `assump:realizable-iid` is their standard distribution-free realizable PAC model; `assump:approximate-dp-regime` is the approximate-central-DP parameter regime of Lyu, Cohen et al., and the source. There are no novel theorem-facing assumptions. The adjacency/amortization wrapper is a novel derived mechanism sanity-checked in the approved idea on the infinite point-function class, finite thresholds, and the full labeling class on \(v\) points; these are verification examples, not scope restrictions or assumption support.

  Explicit-rate audit: exposed variables are \(d,v,\alpha,\beta,\varepsilon,\delta\), and \(|C|\) only in the separate finite-class arm. The auxiliary \(p\), list envelope \(L_{\mathrm{raw}}\), sparse threshold \(B\), \(d+1\) stage transcript, RSC slices, support events, and failure allocations must be eliminated by the proof and cannot enter hidden dependence. The only hidden quantities are universal \(K,k\), and \(\Lambda^k\) contains logarithms only; extra powers of \(d,v\), or \(\log^+|C|\) are forbidden. Utility is high probability jointly over the i.i.d. sample, scheduler randomness, and learner randomness; DP is the neighboring-dataset probability inequality over all algorithmic randomness. The mode is fixed-sample minimax PAC complexity, with no horizon, stopping, conditional-event, or expectation upgrade, and the metric is population binary \(0\)-\(1\) error. When comparing class complexity as \(d\) and \(v\) vary, \(\alpha,\beta,\varepsilon\) are held at the source's fixed constants, while \(\delta\) varies only along schedules satisfying \(\delta K\Lambda^kR\to0\); \(X,D,c\) remain uniformly quantified rather than fixed restrictions. This explicit condition is what guarantees the claimed \(\delta=o(1/n)\) regime.
