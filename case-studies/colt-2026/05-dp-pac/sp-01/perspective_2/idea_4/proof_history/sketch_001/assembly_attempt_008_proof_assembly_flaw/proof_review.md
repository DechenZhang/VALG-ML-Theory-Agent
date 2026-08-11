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

1. `step_001` closes the parameter dictionary and totalizes every fallback path.
2. `step_002` proves quotient factorization, dimension preservation, neighbor and iid transfer, and exact decoded-risk equality.
3. `step_003` promotes pointwise quotient laws to measurable kernels and constructs raw pullbacks.
4. `step_004` constructs the analysis-only occurrence mark and proves exact projection to the released law.
5. `step_005` proves the finite VC trace count.
6. `step_006` proves the fixed-trace without-replacement tails and the exact good event.
7. `step_007` closes the trace fixed point and its confidence charge.
8. `step_008` maps source restrictions and essential lists to the current quotient objects.
9. `step_009` proves DDim descent and a common score-`k` stage.
10. `step_010` proves mechanism accuracy and actual-item output.
11. `step_011` proves all-input quotient privacy and raw-neighbor transfer.
12. `step_012` proves the exact SOA identity and empirical utility.
13. `step_013` performs the marked producer-block holdout and unconditional PAC conversion.
14. `step_014` eliminates VC-arm auxiliaries and proves the public VC-sensitive rate.
15. `step_015` independently constructs and verifies the old-Lyu quotient arm.
16. `step_016` proves the finite arm, selects the least complete arm, and derives the baseline frontier.

The final theorem proof is intended to consume these sixteen interfaces without adding a new mathematical obligation.
## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the bundle
assembles totalized quotient-first VC-sensitive, old-Lyu, and finite-class
private PAC learners on the finite-or-countable evaluation quotient. Each
available learner has a measurable raw pullback, all-input
`(epsilon, delta)` privacy, and the realizable iid population-error
guarantee `err <= alpha` with failure probability at most `beta`. The
certified bounds are the VC-sensitive, old-Lyu, and finite-class rates
stated in `3_main.tex`; choosing the least certified arm gives the stated
minimum/frontier bound. The claim makes no unrestricted assertion outside
the finite-or-countable quotient scope.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The attempted theorem matches the authoritative four-assumption conditional target: finite-or-countable measurable evaluation quotient, quotient-first release and raw decoding, all-input replacement privacy, unconditional realizable iid PAC utility, the three certified rates, deterministic minimum, and scheduled-delta frontier. The source-direction classification remains `conditional`; uncountable evaluation quotients and the unrestricted DP-PAC problem remain open.
- Roadmap or step coverage: All sixteen live `step_001` through `step_016` proof/review pairs pass their current binding checks. Every proof has status `COMPLETE`, every review has status `ACCEPTED`, each review records the proof's current unit attempt and exact SHA-256, and every required review audit section is present. The reviews contain 107 distinct local-unit audits with counts `6, 7, 5, 4, 5, 5, 5, 8, 5, 4, 7, 5, 6, 5, 23, 7`.
- Proof-details audit: The required cited-result, local-derivation, and target-step sections contain 11,118 body lines, or 11,166 lines including their three headings in each of sixteen proofs. An exhaustive comparison, not a sample, accounted for all 107 source labels in source order and all 558 distinct per-step equation tags. The only label conversion is the semantics-preserving `claim:step-005-positive-range` to `prop:step-005-positive-range`. The four nonliteral tags are exact dependency restatements: Step 013 tag `(11)` and Step 016 tags `(C.V)`, `(C.O)`, and `(C.Odelta)`. A normalized five-token comparison covered every local unit; direct review of the lowest-overlap units confirmed that table-to-prose compression and removal of workflow metadata did not remove proof content.
- Adversarial stress test: The adversarial specialist returned `PASS` after testing unequal arm horizons, finite-arm unavailability, improper outputs, infinite classes, the deterministic arm choice, stopped privacy with differing crossing times, `d=0`, `d=1`, endpoint stages, empty lists, fallbacks, repeated records, arbitrary neighboring labels, countably infinite quotients, and fixed versus scheduled delta. No mathematical counterexample or deeper defect was found.
- LaTeX export structure/provenance gate: The complete nine-file bundle is present. `main.tex` inputs all five content files in order and uses `ims.bst` with `reference.bib`; the setup, preliminaries, theorem, proof sketch, sixteen step subsections, and final theorem proof have the required structure. Three additional appendix interface propositions in Steps 010, 013, and 015 only package accepted dependencies, checked source applications, and a fully proved adaptive-composition interface. This gate is nevertheless blocking because public workflow-facing narration remains.
- Main theorem self-containedness: Blocking. The main theorem names the VC-sensitive and old-Lyu kernels before the preliminaries specify the accuracy substitutions, contraction, and exact stage restrictions that determine their lists and output laws. Appendix-only definitions cannot retroactively identify theorem-facing kernels.
- Assumption provenance gate: Blocking only at the public statement surface. The primitive assumption set is correct and no generated event is promoted to a theorem assumption, but two theorem-style statements refer implicitly to `the setting` or `all four setting assumptions` instead of naming numbered assumptions or prior theorem-style producers.
- Redundant public prose gate: Blocking. The appendix retains `The sketch maps`, several `requested` or `required by the target` phrases, and a mechanical Step 016 sentence phrased as a proposition that `choose[s]` and `derive[s]`. These are assembly presentation defects.
- Proof-step notation surface gate: Passed. The appendix has 39 lemmas, 71 propositions, one theorem, one corollary, 111 proofs, and no public claim, hypothesis, or invariant environment. All environments are balanced. The 107 accepted local units are exposed through allowed theorem-style results, and the three extra interface propositions introduce no new assumption or stronger claim.
- Theorem readability and notation economy: Blocking for the same local law-identity, premise-shape, and workflow-prose defects. Apart from them, the theorem exposes its assumptions, output and decoder, privacy and probability modes, exact horizons, universal-constant dependence, rates, and conditional scope without importing appendix-local helper notation.
- Explicit-rate contract: Passed. The VC, old, finite, minimum, and frontier statements expose all structural, privacy, confidence, and accuracy variables; retain fixed horizons and ceiling payments; specify universal hidden-constant dependence; and hide no additional positive power of `d`, `v`, or `log^+|C|`.
- Rate Specialization Bridge: Passed. `prop:step-016-frontier` states the auxiliary choices and verifies technical conditions, term-absorption inequalities, probability conversion, the common `K_* Lambda^6` envelope, and the scheduled-delta implication used by the public corollary.
- Baseline-reduction check: Passed. The bundle preserves the exact `d=0, N=0` branch, the `v=d` return to the `d^5` scale, the independently verified old arm, finite-arm availability only for finite `C`, the `+infinity` convention for infinite `C`, and the declared small-delta schedule.
- LaTeX appendix full-derivation gate: Passed for every used step, not a representative subset. The comparison includes every cited-result application, local derivation, and target-step assembly. The appendix retains the fixed-trace branches, fixed point, source-object maps, DDim descent, mechanism utility and adaptive privacy composition, exact SOA contradiction, marked finite reconstruction, all rate eliminations, old and finite arms, and boundary calculations.
- LaTeX export citation/reference gate: Passed. There are 134 unique labels, 890 internal references to 113 targets, no missing or duplicate target, and no appendix forward reference. The 75 citation commands use exactly `lyu2025` and `sauer1972`, both present in `reference.bib`; no malformed bare reference or citation command was found.
- LaTeX export synchronization: Passed against frozen assembly attempt 8. All supplied hashes match, including `assembly_report.md` `ccf3043d39bf2dac28be56acd2ff1dd6c5f6e1a8948f3c8a0750f944be5eab9b`, the three reviewed public TeX hashes, and all four specialist hashes. A fresh isolated cached Tectonic/BibTeX build succeeded and produced a 710,995-byte PDF with no TeX or BibTeX error and no unresolved reference or citation. Its final log has eight overfull boxes, maximum 22.38173 pt, plus two nonblocking font-shape substitutions.

The structural and rigor specialists are contract-valid and return `BLOCKING` at depth `assembly`; the citation and adversarial specialists are contract-valid and return `PASS`. Under the deepest-issue rule, the assembly blockers control. No specialist or aggregate check supports a step-, sketch-, or idea-level rerun.

## Critical Issues

1. **Reviewer/source:** Rigor specialist, freshly confirmed in the frozen preliminaries and appendix. **Location:** `latex_template/2_preliminary.tex:90-119` and `latex_template/2_preliminary.tex:184-195`; the omitted definitions first appear at `latex_template/5_appendix.tex:3385-3404`, `latex_template/5_appendix.tex:8469-8473`, and `latex_template/5_appendix.tex:8811-8817`. **Defect:** The theorem-facing VC-sensitive law omits `gamma = alpha/16`, `rho = 1 - 1/(2d)`, and the exact restriction `H_i^r = {h in bar C: err_{S_i}(h) <= rho^(r+1) gamma}`. The old law likewise omits `gamma_o = alpha/16`, `rho`, and its old-indexed restriction formula. Source citations and phrases such as `restriction conventions` or `original d-based restrictions` do not select these theorem-accuracy substitutions. **Downstream effect:** The theorem asserts privacy, PAC utility, and exact horizons for two preliminary laws that are underdetermined before use, while the appendix proves fully specified versions. **Repair depth:** assembly. **Target:** `/proof-assembly`.
2. **Reviewer/source:** Structural specialist, freshly confirmed in the public appendix. **Location:** `latex_template/5_appendix.tex:2295`, `:3352`, `:3625`, `:4171`, `:6243`, `:6289`, `:6922`, and `:10812-10814`. **Defect:** Public proof text retains sketch-, request-, and target-facing narration, followed by a mechanical Step 016 terminal sentence framed as a proposition that chooses and derives. **Downstream effect:** The bundle fails the paper-ready provenance and redundant-prose gates even though the mathematical derivations are present. **Repair depth:** assembly. **Target:** `/proof-assembly`.
3. **Reviewer/source:** Structural specialist, freshly confirmed in the theorem-style statement text. **Location:** `latex_template/5_appendix.tex:5536` and `latex_template/5_appendix.tex:9918`. **Defect:** `lem:step-011-record-locality` invokes `the setting's` construction rather than numbered assumptions or named prior results, and `prop:step-015-pac` invokes `all four setting assumptions` rather than explicitly citing `assump:finite-littlestone`, `assump:countable-evaluation-quotient`, `assump:realizable-iid`, and `assump:approximate-dp-regime`. **Downstream effect:** These theorem-critical statements fail the explicit assumption-basis shape contract and make their premises nonlocal. **Repair depth:** assembly. **Target:** `/proof-assembly`.

## Failure-Type Rationale

All sixteen mathematical producer steps remain complete and accepted, their current proof hashes and unit attempts are bound by their reviews, and exhaustive source-to-appendix comparison finds their substantive derivations intact. The citation and adversarial audits find no false lemma, source mismatch, unsupported scope upgrade, invalid rate transition, or counterexample. The blockers concern only placement of already accepted restriction definitions, explicit naming of already available premises, and public presentation prose.

Those defects can be repaired by reassembling the frozen accepted material without changing an accepted claim, proof step, dependency, primitive assumption, algorithm, theorem scope or mode, metric, exposed dependence, or success criterion. Therefore `PROOF_ASSEMBLY_FLAW` is the deepest justified failure type; a step rerun, sketch revision, or new idea is not warranted.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly

