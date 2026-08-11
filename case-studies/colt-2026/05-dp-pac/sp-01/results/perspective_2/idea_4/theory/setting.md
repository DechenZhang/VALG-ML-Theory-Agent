# Formalized Setting

- Basic setup:
  Let \((X,\Sigma)\) be a nonempty measurable space and let
  \(C\subseteq\{0,1\}^X\) be a nonempty, possibly infinite, binary concept
  class. Define
  \[
  x\equiv_C x'
  \quad\Longleftrightarrow\quad
  c(x)=c(x')\ \text{for every }c\in C,
  \]
  let \(Q_C:=X/{\equiv_C}\), and write \(\kappa:X\to Q_C\) for the quotient
  map. Equip \(Q_C\) with its discrete sigma-field \(2^{Q_C}\). For each
  \(c\in C\), define \(\bar c:Q_C\to\{0,1\}\) by
  \(\bar c(\kappa(x)):=c(x)\), and set
  \(\bar C:=\{\bar c:c\in C\}\). The quotient hypothesis space is
  \[
  H_C:=\{0,1\}^{Q_C},\qquad
  \mathcal H_C:=\bigotimes_{q\in Q_C}2^{\{0,1\}},
  \]
  and the decoder is
  \(\operatorname{Dec}_C(\bar h):=\bar h\circ\kappa\). Under
  `assump:countable-evaluation-quotient`, \((H_C,\mathcal H_C)\) is a standard
  Borel space. The released object is \(\bar h\in H_C\); its prediction on
  \(X\) is the possibly improper measurable hypothesis
  \(\operatorname{Dec}_C(\bar h)\), which need not belong to \(C\).

  Write
  \[
  v:=\operatorname{VC}(C),\qquad d:=\operatorname{LD}(C).
  \]
  All logarithms are natural. Define \(\log^*u:=0\) for \(0\le u\le1\), and
  for \(u>1\) define
  \(\log^*u:=\min\{j\ge1:\log^{\circ j}(u)\le1\}\), with
  \(\log^{\circ0}(u)=u\). Thus \(\log d\) and \(\log^*d\) are distinct.
  Also define
  \[
  \log^+|C|:=
  \begin{cases}
  \max\{1,\log|C|\},&|C|<\infty,\\
  +\infty,&|C|=\infty.
  \end{cases}
  \]

  Put \(Z_X:=X\times\{0,1\}\) with
  \(\mathcal Z_X:=\Sigma\otimes2^{\{0,1\}}\), and put
  \(Z_Q:=Q_C\times\{0,1\}\) with its discrete sigma-field. For
  \(N\in\mathbb N_0\), define the recordwise quotient map
  \[
  T_N:Z_X^N\to Z_Q^N,\qquad
  T_N((x_r,y_r)_{r=1}^N):=(\kappa(x_r),y_r)_{r=1}^N.
  \]
  Raw labeled datasets are replace-one neighbors, denoted \(s\sim s'\), when
  they differ in at most one coordinate. For a probability measure \(D\) on
  \((X,\Sigma)\), a target \(c\in C\), and \(\bar h\in H_C\), let
  \[
  \bar D:=\kappa_\#D,\qquad
  P_{D,c}:=\mathcal L(x,c(x))\ \ (x\sim D),\qquad
  P_{\bar D,\bar c}:=\mathcal L(q,\bar c(q))\ \ (q\sim\bar D),
  \]
  \[
  \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
  :=D\{x:\bar h(\kappa(x))\ne c(x)\}.
  \]
  Also write
  \(\operatorname{err}_{\bar D}(\bar h,\bar c)
  :=\bar D\{q:\bar h(q)\ne\bar c(q)\}\).
  A learner with sample size \(N\) is a Markov kernel
  \(A_N:(Z_X^N,\mathcal Z_X^{\otimes N})\leadsto(H_C,\mathcal H_C)\). It is
  \((\varepsilon,\delta)\)-DP if, for every \(s\sim s'\) and every
  \(E\in\mathcal H_C\),
  \[
  A_N(s,E)\le e^\varepsilon A_N(s',E)+\delta.
  \]
  The conditional-scope realizable private sample complexity is
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  :=\inf\left\{N\in\mathbb N_0:
  \begin{array}{l}
  \text{there is such an \((\varepsilon,\delta)\)-DP kernel \(A_N\) with}\\[-2pt]
  \displaystyle\sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,\,\bar H\sim A_N(S)}
  [\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]\le\beta
  \end{array}\right\},
  \]
  where the first supremum ranges over all probability measures on
  \((X,\Sigma)\). Learners may depend on
  \(C,\alpha,\beta,\varepsilon,\delta\), may be computationally unbounded, and
  are not required to be proper.

  Define
  \[
  R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta)
  :=
  \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  \[
  R_{\mathrm{fin}}(|C|,\alpha,\beta,\varepsilon)
  :=\frac{\log^+|C|+\log(1/\beta)}{\varepsilon\alpha}
  +\frac{\log(1/\beta)}{\alpha},
  \]
  \[
  R_{\mathrm{old}}(d,\alpha,\beta,\varepsilon,\delta)
  :=\frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  and
  \[
  \Lambda(d,v,\alpha,\beta,\varepsilon,\delta)
  :=1+\log(e+d)+\log(e+v)+\log(e+\alpha^{-1})
  +\log(e+\beta^{-1})+\log(e+\varepsilon^{-1})
  +\log\!\bigl(e+\log(e/\delta)\bigr).
  \]
  When their arguments are suppressed below, \(R_{\mathrm{fin}}\),
  \(R_{\mathrm{old}}\), and \(R_{\mathrm{VC}}\) are evaluated at the current
  \((C,d,v,\alpha,\beta,\varepsilon,\delta)\).
  The notation \(N=\widetilde O(R_{\mathrm{VC}})\) means
  \(N\le K\Lambda^qR_{\mathrm{VC}}\) for universal \(K\ge1\) and
  \(q\in\mathbb N_0\). The tilde may hide only logarithms of the displayed
  parameters: it may not hide another positive power of \(v\), \(d\), or
  \(\log^+|C|\), or any dependence on \(X,D,c\), a decomposition, a list, a
  generated event, or a support set.

  Fix once and for all a default \(\bar c_0\in\bar C\). Define the
  quotient-first pointwise output law \(K_C^{\mathrm{VC\text{-}Lyu}}\) as
  follows. If \(d=0\), use \(N=0\) and output the unique element of \(\bar C\)
  deterministically. If \(d\ge1\), use \(1\le v\le d\), choose the same
  source-valid integer teacher count \(k\ge2\) as Lyu,
  \[
  k=k_{\mathrm{Lyu}}(d,\beta,\varepsilon,\delta)
  =\widetilde O\!\left(
  \frac{d^2\log(1/(\delta\beta))}{\varepsilon}
  \right),
  \]
  and set
  \[
  a:=v+\log(4k/\beta),\qquad
  Q_{\mathrm{blk}}:=e+\frac{e k d^2a}{\alpha v},
  \]
  \[
  m:=\left\lceil C_{\mathrm{blk}}
  \frac{d^2}{\alpha}a\log Q_{\mathrm{blk}}\right\rceil,
  \qquad n_0:=km,qquad N:=n_0,
  \]
  for a sufficiently large universal \(C_{\mathrm{blk}}>0\). First apply
  \(T_N\) to every labeled record. On the resulting quotient dataset, run
  Lyu's same fixed teacher blocks at every stage
  \(j\in\{0,1,\ldots,d\}\), stage parameters \(p_j:=2^jn_0d\), exact valid
  decompositions, exact essential-SOA lists and candidate identities, one
  AboveThreshold process over all source stages, and one Sparse Sample call
  after the successful stage. All restrictions, lists, tests, mechanisms,
  and fallback paths are evaluated on \(Q_C\), never on raw \(X\).
  Totalize every partial or empty source state by a fixed deterministic
  convention ending at \(\bar c_0\); this convention is fixed before seeing
  data and changes none of the source-valid paths. The pointwise law outputs
  \(\bar H\in H_C\), after which prediction uses
  \(\operatorname{Dec}_C(\bar H)\).

  Define the two comparison laws on this same quotient interface. When
  \(|C|<\infty\), let \(K_C^{\mathrm{fin}}\) be the totalized quotient-space
  implementation of the standard finite-class private-ERM learner on
  \(\bar C\). Let \(K_C^{\mathrm{old\text{-}Lyu}}\) be the same totalized
  quotient-space Lyu construction with the source's old block calibration
  yielding the \(d^5\) arm; for \(d=0\), it uses the same no-data singleton
  branch. Both laws have output space \(H_C\), use the same raw record map
  \(T_N\), and use \(\operatorname{Dec}_C\) only after the private release.

  Draw the complete quotient master sample first and then use the same
  uniform partition \(\mathcal P\) into \(k\) fixed blocks of size \(m\) at
  every stage. Conditional on the complete sample, each block is marginally
  uniform without replacement; independence among blocks is not asserted in
  that conditioning. For a labeled quotient sample
  \(\bar S=((q_r,y_r))_{r=1}^{n_0}\), define
  \[
  \mathcal E_{\bar C}(\bar S)
  :=\left\{
  (\mathbf 1\{\bar c(q_r)\ne y_r\})_{r=1}^{n_0}:\bar c\in\bar C
  \right\}.
  \]
  Let \(\Pi_{\bar C}\) denote the growth function of \(\bar C\). For a fixed
  producer block \(i\), let \(\bar S_{-i}\) be the ordered complement of its
  \(m\) records and define
  \[
  \widehat{\operatorname{err}}_{-i}(\bar h)
  :=\frac{1}{(k-1)m}
  \sum_{(q,y)\in\bar S_{-i}}\mathbf 1\{\bar h(q)\ne y\}.
  \]
  Let \(E_{\mathrm{good}}(\bar S,\mathcal P)\) be Lyu's exact simultaneous
  fixed-block high-error relative-deviation and low-error upper-tail event,
  with the source thresholds and tolerance unchanged. Let
  \(L:=L_{\mathrm{Lyu}}(d,\beta,\varepsilon,\delta)\) denote the unchanged
  finite source cap for one stage's essential candidate list, and write
  \(\mathcal G_i\) for teacher block \(i\)'s union of candidates over all
  \(d+1\) stages; its finite-multiplicity target is
  \(|\mathcal G_i|\le(d+1)L\).

  For proof analysis only, refine an actual selected item \(\bar H\) by an
  unreleased occurrence mark. If
  \(I_{\bar s}(\bar h):=\{i\in[k]:\bar h\in\mathcal G_i\}\) is nonempty,
  draw \(J\) uniformly from \(I_{\bar s}(\bar h)\); use \(J=0\) whenever
  this occurrence set is empty, in particular on a totalized fallback path.
  Equip \(H_C\times\{0,1,\ldots,k\}\) with
  \(\mathcal H_C\otimes2^{\{0,1,\ldots,k\}}\), and denote the resulting
  pointwise marked law by \(\widetilde K_C^{\mathrm{VC\text{-}Lyu}}\). The
  algorithm releases only \(\bar H\), never \(J\).

  The quotient construction is the primitive source, not a package of
  derived assumptions. In particular, the proof must establish all of the
  following interfaces from the four technical assumptions:

  1. the map \(c\mapsto\bar c\) is a bijection and
     \(\operatorname{VC}(\bar C)=v\),
     \(\operatorname{LD}(\bar C)=d\), including the \(d=0\) singleton case;
  2. \(T_N\) is measurable, sends every raw neighboring pair to an equal or
     neighboring quotient pair, pushes \(P_{D,c}^N\) to
     \(P_{\bar D,\bar c}^N\), and gives the exact risk identity
     \[
     \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
     =\Pr_{q\sim\bar D}[\bar h(q)\ne\bar c(q)];
     \]
  3. every totalized quotient restriction, list law, occurrence coordinate,
     empirical/population-error event, and exact \(E_{\mathrm{good}}\) event
     has the required measurable interface; the pointwise output laws are
     Markov kernels on the countable discrete quotient input space, and their
     pullbacks along \(T_N\) are raw-input learner kernels;
  4. the marked law is a Markov kernel and has exact output projection
     \[
     \sum_{i=0}^k
     \widetilde K_C^{\mathrm{VC\text{-}Lyu}}(\bar s,E\times\{i\})
     =K_C^{\mathrm{VC\text{-}Lyu}}(\bar s,E)
     \quad(E\in\mathcal H_C),
     \]
     so the unreleased mark changes neither the output marginal nor privacy;
  5. conditioning on \(\bar S\), Sauer--Shelah and the fixed-input
     without-replacement tails give
     \[
     \Pr_{\mathcal P}
     [E_{\mathrm{good}}(\bar S,\mathcal P)^c\mid\bar S]
     \le4k\,\Pi_{\bar C}(n_0)
     e^{-c_{\mathrm{tr}}m\alpha/d^2}
     \le4k(en_0/v)^v e^{-c_{\mathrm{tr}}m\alpha/d^2},
     \tag{Trace}
     \]
     for a universal \(c_{\mathrm{tr}}>0\), and the explicit fixed point
     \[
     n_0=km,\qquad \log(en_0/v)=O(\log Q_{\mathrm{blk}})
     \tag{Fixed point}
     \]
     charges this failure to its allocated fraction of \(\beta\);
  6. conditional on an occurrence producer block, the actual output lies in
     its at most \((d+1)L\) all-stage candidates and, on the generated source
     empirical-success event, its required complement empirical loss obeys
     \[
     \frac{k\alpha}{8(k-1)}\le\frac{\alpha}{4},
     \]
     and the independent \((k-1)m\)-record holdout obeys the one-sided
     Chernoff bound
     \[
     \Pr[\widehat{\operatorname{err}}_{-i}(\bar h)\le\alpha/4
     \mid \operatorname{err}_{\bar D}(\bar h,\bar c)>\alpha]
     \le e^{-9\alpha(k-1)m/32};
     \]
     the finite union over producer marks and \((d+1)L\) candidates is
     absorbed by the same \(C_{\mathrm{blk}}\) and confidence ledger;
  7. Lyu's unchanged one-list replacement, support/sensitivity, common-item,
     AboveThreshold, Sparse Sample, privacy-composition, and PAC-conversion
     arguments consume those interfaces and yield raw-record
     \((\varepsilon,\delta)\)-DP and the stated population guarantee; no
     version-space, list, selector, good event, kernel, neighbor property,
     occurrence projection, or generalization conclusion may be assumed;
  8. \(K_C^{\mathrm{fin}}\) (when \(|C|<\infty\)) and
     \(K_C^{\mathrm{old\text{-}Lyu}}\) admit the same quotient-first
     totalization, output space, raw-input pullback, decoder, DP convention,
     and risk transfer before their bounds are compared with the
     VC-sensitive arm.

- Technical assumptions:
  - `assump:finite-littlestone` (General finite-Littlestone class):
    \(C\subseteq\{0,1\}^X\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). No finite-cardinality, finite-domain,
    Cartesian-product, VC-one-factor, order, balance, public-data,
    finite-support, properness, efficiency, or computational assumption is
    imposed.
  - `assump:countable-evaluation-quotient` (Finite-or-countable measurable
    evaluation quotient): the static quotient \(Q_C=X/{\equiv_C}\) is finite
    or countably infinite and every cell
    \(\kappa^{-1}(\{q\})\), \(q\in Q_C\), belongs to \(\Sigma\). Equivalently,
    the pre-sampling map
    \(\kappa:(X,\Sigma)\to(Q_C,2^{Q_C})\) is measurable. This primitive is
    checked from the evaluation signatures and their fibers; it does not
    assume measurability of any generated restriction, version space, list,
    event, selector, occurrence law, or learner kernel.
  - `assump:realizable-iid` (Realizable distribution-free sampling): for
    utility, \(D\) is an arbitrary probability measure on \((X,\Sigma)\),
    \(c\) is an arbitrary member of \(C\), and the labeled data are i.i.d.
    from \(P_{D,c}\). Realizability is the only utility condition; privacy is
    required for every neighboring pair in \(Z_X^N\), including
    nonrealizable inputs.
  - `assump:approximate-dp-regime` (Learning, confidence, and approximate-DP
    parameters): \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and
    \(0<\delta<1\). For the positive-dimensional VC-sensitive branch, the
    source convention \(\delta\ll1/N\) means that along the asymptotic
    parameter sequences under comparison,
    \[
    \delta K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
    R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta)\longrightarrow0
    \]
    for the universal \(K,q\) in the goal. Hence the claimed
    \(N\le K\Lambda^qR_{\mathrm{VC}}\) has \(N\delta\to0\); no fixed positive
    \(\delta\) is silently absorbed in the source-facing comparison.

# Formalized Goal

- Goal statement:
  **Exact-goal mode, explicitly conditional VC-sensitive upper bound.** Prove
  that universal constants \(K\ge1\) and \(q\in\mathbb N_0\) exist such that,
  for every declared \((X,\Sigma,C)\) satisfying
  `assump:finite-littlestone`, `assump:countable-evaluation-quotient`,
  `assump:realizable-iid`, and `assump:approximate-dp-regime`, the
  quotient-first totalized law \(K_C^{\mathrm{VC\text{-}Lyu}}\), pulled back
  by \(T_N\), is a measurable Markov kernel, is
  \((\varepsilon,\delta)\)-DP on all raw neighboring labeled inputs, and
  satisfies
  \[
  \sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,\,\bar H\sim
  K_C^{\mathrm{VC\text{-}Lyu}}(T_N(S),\cdot)}
  [\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]
  \le\beta.
  \]
  It uses \(N=0\) when \(d=0\). When \(d\ge1\), it uses exactly the
  quotient procedure and calibration above and
  \[
  N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
  R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta).
  \]
  Equivalently, on this explicitly conditional class of measurable
  evaluation quotients,
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  =\widetilde O\!\left(
  \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha}
  \right),
  \]
  with exactly the restricted hidden dependence above. Under the same four
  assumptions, also prove that \(K_C^{\mathrm{old\text{-}Lyu}}\), and
  \(K_C^{\mathrm{fin}}\) when \(|C|<\infty\), are measurable quotient-first
  kernels whose raw pullbacks are \((\varepsilon,\delta)\)-DP and satisfy the
  same \((\alpha,\beta)\) realizable PAC guarantee with, respectively,
  \(N_{\mathrm{old}}=\widetilde O(R_{\mathrm{old}})\) and
  \(N_{\mathrm{fin}}=\widetilde O(R_{\mathrm{fin}})\). Consequently, choosing
  the best source-certified arm gives
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  =\widetilde O\!\left(
  \min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}
  \right),
  \]
  and, at fixed \(\alpha,\beta,\varepsilon\) with \(\delta\) following the
  explicit source-compatible convention,
  \[
  m_C=\widetilde O\!\left(
  \min\{\log^+|C|,d^5,vd^4\}
  \right).
  \]
  The VC-sensitive arm is strictly smaller than \(d^5\) when \(v=o(d)\) and
  returns to the \(d^5\) scale when \(v=\Theta(d)\), including \(v=d\).
  This theorem is conditional only on the primitive countably coded
  evaluation regime: all quotient-preservation, decoding/risk,
  raw-neighbor, event/kernel, marked-projection, finite-reconstruction,
  privacy, and PAC interfaces listed above must be derived. Classes with
  uncountably many evaluation types remain outside the claim, and the claim
  neither characterizes private sample complexity nor proves a universal
  \(\operatorname{poly}(v,\log d)\) or
  \(\operatorname{poly}(v,\log^*d)\) upper bound.

# Note

- Rigor:
  Source alignment: approximate central DP, arbitrary realizable
  distributions, general finite-Littlestone classes, and unrestricted
  improper computationally unbounded learners are preserved; the
  finite-or-countable measurable evaluation quotient and quotient-first
  procedure are explicit target-changing restrictions. Progress type:
  `conditional`. Materiality: the theorem restores the
  \(\widetilde O(vd^4)\) arm on a primitive regime that includes infinite
  classes and uncountable raw domains with countably many evaluation types,
  strictly improves the \(d^5\) frontier when \(v=o(d)\), and is not merely
  the finite-class boundary. Uncountable evaluation quotients, the two
  proposed universal poly\((v,\log d)\)/poly\((v,\log^*d)\) milestones, and a
  full characterization remain open. The idea 3 nonmeasurable point-class
  witness is excluded upstream because its evaluation quotient has
  uncountably many singleton types; no failed downstream list, event, or
  kernel interface is assumed. No Cartesian-product or VC-one decomposition
  is introduced, so this remains a general-class Lyu arm rather than a
  product characterization.

  Source/transfer alignment: Lyu, *Private Learning of Littlestone Classes,
  Revisited* (arXiv:2510.00076), supplies the fixed-block decomposition,
  essential-list, AboveThreshold, Sparse Sample, privacy, old \(d^5\), and
  PAC machinery; Ghazi et al., *Sample-Efficient Proper PAC Learning with
  Approximate Differential Privacy* (arXiv:2012.03893), calibrates the
  irreducibility/SOA and explicit VC bookkeeping lineage; the standard
  finite-class arm is the private-ERM route recorded in
  *What Can We Learn Privately?* (arXiv:0803.0924). Relative to idea 3, the
  only semantic delta is the primitive quotient restriction, quotient-first
  totalization/decoding, and the explicitly conditional theorem scope. The
  trace fixed point, finite reconstruction, producer holdout, one-sided
  Chernoff exponent, finite multiplicity, privacy arithmetic, \(d=0\),
  finite-class, old-\(d^5\), and \(v=d\) components are unchanged.

  Compact assumption-support map: `assump:finite-littlestone` -> Lyu and the
  COLT open-problem regime; `assump:countable-evaluation-quotient` -> standard
  countable-discrete measurability plus direct checks for finite-domain
  classes (including finite thresholds and finite-grid rectangles),
  countable-index point functions, and replicated domains
  \(X=Q\times Y\) whose concepts depend only on countable \(Q\);
  `assump:realizable-iid` -> the standard distribution-free realizable PAC
  model of the parent sources; `assump:approximate-dp-regime` -> Lyu's
  approximate-central-DP parameters and the open problem's explicit
  \(\delta\ll1/N\) convention. Learner-kernel measurability, quotient
  preservation of VC/LD, exact risk transfer, raw-neighbor preservation,
  marked-law projection, event measurability, holdout/Chernoff reconstruction,
  all privacy and utility statements, and common normalization of the three
  rate arms are derived obligations, not assumption support.
