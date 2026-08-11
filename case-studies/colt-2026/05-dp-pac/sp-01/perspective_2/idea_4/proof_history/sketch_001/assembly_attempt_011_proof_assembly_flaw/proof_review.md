# Proof Review

## Formalized Setting

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

## Formalized Goal

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

## Reviewed Roadmap

The accepted sketch has sixteen dependency-ordered steps. `step_001`
closes the scalar dictionary, teacher feasibility, null branch, and
totalization; `step_002` constructs the evaluation quotient and exact
dimension, adjacency, iid, and risk transfers; `step_003` promotes the
totalized pointwise laws to quotient and raw Markov kernels; and
`step_004` constructs the analysis-only occurrence mark with exact released
projection. `step_005` proves the VC trace count, `step_006` the two
fixed-trace without-replacement tails and simultaneous event, and
`step_007` the ceiling-aware trace fixed point and confidence charge.
`step_008` builds the source/current restriction and essential-list
interfaces, `step_009` proves finite DDim descent to a common-score stage,
`step_010` proves AboveThreshold/Sparse Sample accuracy, `step_011`
proves all-input quotient and raw privacy, `step_012` proves exact SOA
identity and master empirical utility, and `step_013` performs marked
finite reconstruction and unconditional PAC conversion. Finally,
`step_014` normalizes the VC-sensitive rate, `step_015` independently
proves the old-Lyu comparison arm, and `step_016` proves the finite arm,
deterministic common-interface minimum, rate specialization, and boundary
reductions.

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the totalized
quotient-first VC-sensitive, old-Lyu, and (when `|C| < infinity`)
finite-class laws on the finite-or-countable measurable evaluation quotient
are measurable Markov kernels whose raw pullbacks are all-input
`(epsilon, delta)`-DP and have realizable iid population error at most
`alpha` with failure probability at most `beta`. When `d = 0`, all three
available arms use the same exact zero-sample Dirac law and `m_C = 0`. When
`d >= 1`, universal constants give

`N_VC <= K_V Lambda^4 R_VC`,
`N_old <= K_O Lambda^6 R_old`, and
`N_fin <= 8 R_fin` for finite `C`; the finite arm has pure `epsilon`-DP,
and its cost is `+infinity` when `C` is infinite. Hence, for
`K_* = max{8,K_O,K_V}`,

`m_C(alpha,beta;epsilon,delta) <= K_* Lambda^6
min{R_fin,R_old,R_VC}`.

With `alpha`, `beta`, and `epsilon` fixed and delta following the declared
selected-learner schedule
`delta K_V Lambda^4 R_VC -> 0`, this yields
`m_C = tilde O(min{log^+|C|,d^5,v d^4})` and the selected sample size
satisfies `N_* delta -> 0`. The standalone old arm instead uses its separate
schedule `delta K_O Lambda^6 R_old -> 0`. The claim is conditional on the
finite-or-countable quotient scope: the unrestricted DP-PAC open problem,
uncountable evaluation quotients, and a universal polynomial in `v` and
`log d` remain unresolved.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The theorem otherwise matches the authoritative exact-goal,
  explicitly conditional target. It retains the finite-or-countable
  measurable evaluation-quotient scope, all-input replace-one privacy,
  realizable-only iid utility, possibly improper quotient output, exact raw
  risk transfer, the three certified arms, and the unresolved unrestricted
  scope. Acceptance fails only because the public rate bridge is not
  synchronized with the accepted selected-learner schedule.
- Roadmap or step coverage: All sixteen live producer proofs are
  `COMPLETE`. All sixteen live reviews are `ACCEPTED`, bind sketch
  attempt 1 and the current producer attempt, and contain the current proof
  SHA-256. The dependency closure is current and acyclic. Every accepted
  sketch step has a matching appendix subsection and a named path to the
  final theorem.
- Proof-details audit: The structural and rigor reviewers are `BLOCKING`
  at assembly depth; the citation and adversarial reviewers are `PASS`.
  All four artifacts satisfy their raw-token contracts. The disagreement was
  resolved by the deepest-issue rule, not voting, and the aggregate audit
  independently reproduced the shared assembly blocker.
- Adversarial stress test: The accepted proofs withstand the tested null,
  smallest-dimension, endpoint, repeated-record, same-cell replacement,
  arbitrary-label, fallback, improper-output, finite/infinite-class,
  fixed-positive-`delta`, and scheduled-`delta` cases. In particular,
  equation (7.2) correctly gives
  `N_* delta <= delta K_V Lambda^4 R_VC`; that calculation exposes rather
  than cures the contradictory proposition statement.
- LaTeX export structure/provenance gate: The nine required bundle files
  exist. The public structure has the required setup, preliminaries, main
  theorem, proof sketch, appendix, sixteen step subsections, and final main
  theorem proof. The four numbered assumption labels exactly preserve the
  setting IDs. No public claim/hypothesis/invariant environment, workflow
  authority, audit scaffolding, placeholder, malformed reference command, or
  forbidden provenance phrase was found.
- Main theorem self-containedness: The main theorem uses only setup and
  preliminary notation, the four numbered assumptions, and theorem-local
  universal constants defined before use. It states the conditional scope,
  output and decoder, privacy and probability modes, fixed horizons,
  population-risk norm, finite/infinite convention, and hidden-constant
  restrictions. Its reader-facing corollary uses the permitted named
  appendix-bridge shape, but the named bridge does not state the corollary's
  selected-learner premise.
- Assumption provenance gate: The public theorem assumes only the four
  primitive setting conditions. Quotient preservation, kernels, generated
  events, list support, mechanism success, privacy, empirical utility,
  marked projection, reconstruction, and PAC conversion are derived by named
  appendix results before final use. No generated invariant is hidden in a
  theorem-facing admissibility package.
- Redundant public prose gate: No copied sketch-row fields, standalone source
  audit blocks, workflow narration, mechanical translation debris, or
  forbidden appendix-hygiene phrase was found.
- Proof-step notation surface gate: Step-local dictionaries remain in their
  appendix derivations. The theorem exposes only the stable setting rates,
  `Lambda`, exact arm horizons, and universal comparison constants; no
  proof-local event, radius, unit ID, or local constant leaks into its
  statement.
- Theorem readability and notation economy: The main theorem is a readable
  conditional three-arm result rather than an admissibility dictionary, and
  the corollary gives the reader-facing frontier and remaining open scope.
  The preliminary notation is used to define the exact learner laws and
  theorem rates. No opaque derived-invariant package is used as a public
  interface.
- Explicit-rate contract: The VC, old, and finite rates declare exposed
  variables, universal hidden-constant dependence, fixed quantities,
  unconditional probability mode, fixed-horizon mode, population binary-risk
  norm, ceilings, and finite/infinite boundaries. The selected-learner
  schedule nevertheless fails exact public synchronization as described
  below.
- Rate Specialization Bridge: `cor:frontier` and accepted Step 016 use
  `delta K_V Lambda^4 R_VC -> 0`. The named appendix bridge
  `prop:step-016-frontier` instead declares
  `delta K_* Lambda^6 R_VC -> 0` and says the implication is not asserted
  under a weaker premise, despite its own (7.2) proving the accepted
  `K_V Lambda^4` domination. This gate is blocking.
- Baseline-reduction check: The exact `d=0` zero-sample law, `v=1`,
  `v=d` identity `vd^4=d^5`, `v=Theta(d)` scale, finite-class arm,
  infinite-class `+infinity` convention, fixed-positive-`delta` validity,
  separate old-arm schedule, and unresolved uncountable-quotient scope are
  preserved. The selected-learner schedule drift is an unreviewed
  strengthening, not an allowed conservative baseline presentation.
- LaTeX appendix full-derivation gate: All used Steps 001--016, not a sample,
  were compared source-to-appendix. All 107 accepted local units, every
  `Cited Result Applications` body, every `Local Derivation`, and every
  `Target-Step Assembly` were audited. Of 559 distinct source display tags,
  555 occur literally; Step 013 tag (11) and Step 016 tags (C.V), (C.O), and
  (C.Odelta) are exact named dependency restatements. No definition,
  inequality chain, ceiling calculation, recurrence, boundary case,
  assumption discharge, cited-result mapping, or target assembly is omitted.
  The first and only unaccounted source-to-public obligation is Step 016
  Unit 007's exact selected-learner schedule, whose derivation is present but
  whose public proposition statement was changed during assembly.
- LaTeX export citation/reference gate: A fresh cached Tectonic build from
  `latex_template/` completed with BibTeX and all reruns. The bundle has
  134 unique labels, no missing reference target, and exactly the cited keys
  `lyu2025` and `sauer1972`, both present in `reference.bib`. The log
  has no unresolved reference or citation. Eight appendix overfull boxes
  (maximum 22.38173 pt), duplicate terminal-square risk from explicit
  `\\square` inside proof environments, and font substitutions are
  nonblocking paper-readiness concerns.
- LaTeX export synchronization: The setting, accepted Step 016, assembly
  attempted claim, and `cor:frontier` all record the selected schedule
  `delta K_V Lambda^4 R_VC -> 0`; only
  `prop:step-016-frontier` substitutes the stronger
  `delta K_* Lambda^6 R_VC -> 0`. Thus the assembly report's `COMPLETE`
  status and statement that no accepted rate or schedule changed are
  inconsistent with the frozen public appendix.

## Critical Issues

1. Source reviewers: structural and rigor; aggregate checks: accepted-step
   synchronization, explicit-rate contract, and Rate Specialization Bridge.
   Location: `latex_template/3_main.tex`, Corollary
   `cor:frontier`; `latex_template/5_appendix.tex`, Proposition
   `prop:step-016-frontier`, Item 5 and equation (7.2); accepted
   `proof_steps/step_016/proof.md`, Unit 007; and
   `assembly_report.md`. Defect: the corollary and accepted source prove
   that `delta K_V Lambda^4 R_VC -> 0` implies `N_* delta -> 0`, while
   the appendix proposition replaces that premise by the strictly stronger
   `delta K_* Lambda^6 R_VC -> 0` and disclaims the weaker premise even
   though (7.2) proves it. Downstream effect: the named public bridge does
   not support the corollary that cites it, the accepted Step 016 statement
   is altered, and the assembly report is not truthful about synchronization.
   Selected repair depth: assembly. Target: `/proof-assembly`. Restore the
   exact `K_V Lambda^4` selected-learner schedule and matching proof prose
   in the appendix, retain the standalone old-arm schedule separately, and
   regenerate a synchronized assembly report without changing accepted
   proof-step artifacts.

## Failure-Type Rationale

The controlling defect is assembly-local. Accepted Step 016 already contains
the exact required inequality, schedule, boundary statement, and proof, and
the public corollary already states the correct premise. No proof-step,
sketch, primitive assumption, learner, theorem scope, probability mode,
metric, exposed dependence, or success criterion must change. A fresh
assembly can restore the accepted proposition statement and report
synchronization, so `PROOF_ASSEMBLY_FLAW` is the deepest required and
smallest supported failure type.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly

