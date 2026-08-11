# Proof Review

## Formalized Setting

- Basic setup:
  Let \((X,\Sigma)\) be a nonempty measurable space and let
  \(C\subseteq\{0,1\}^X\) be a nonempty binary concept class.  Define
  \[
  x\equiv_C x'\quad\Longleftrightarrow\quad
  c(x)=c(x')\ \text{for every }c\in C,
  \]
  let \(Q_C=X/{\equiv_C}\), and write \(\kappa:X\to Q_C\) for the quotient
  map.  Equip \(Q_C\) with the discrete sigma-field \(2^{Q_C}\).  For
  \(c\in C\), define \(\bar c(\kappa(x)):=c(x)\), set
  \(\bar C=\{\bar c:c\in C\}\), and let
  \[
  H_C=\{0,1\}^{Q_C},\qquad
  \mathcal H_C=\bigotimes_{q\in Q_C}2^{\{0,1\}},\qquad
  \operatorname{Dec}_C(\bar h)=\bar h\circ\kappa .
  \]
  The released object is \(\bar h\in H_C\), and its decoded prediction may
  be improper.  Write \(v=\operatorname{VC}(C)\) and
  \(d=\operatorname{LD}(C)\), use natural logarithms, and use the stated
  conventions for \(\log^*\) and
  \[
  \log^+|C|=\begin{cases}\max\{1,\log|C|\},&|C|<\infty,\\
  +\infty,&|C|=\infty.\end{cases}
  \]
  Put \(Z_X=X\times\{0,1\}\), \(Z_Q=Q_C\times\{0,1\}\), and
  \[
  T_N((x_r,y_r)_{r=1}^{N})
  =((\kappa(x_r),y_r))_{r=1}^{N}.
  \]
  Raw labeled datasets use replace-one adjacency.  For a probability measure
  \(D\), target \(c\), and output \(\bar h\), set
  \[
  \bar D=\kappa_\#D,\quad
  P_{D,c}=\mathcal L(x,c(x)),\quad
  P_{\bar D,\bar c}=\mathcal L(q,\bar c(q)),
  \]
  \[
  \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
  =D\{x:\bar h(\kappa(x))\ne c(x)\},\qquad
  \operatorname{err}_{\bar D}(\bar h,\bar c)
  =\bar D\{q:\bar h(q)\ne\bar c(q)\}.
  \]
  A learner is a Markov kernel
  \(A_N:Z_X^N\leadsto H_C\), and it is
  \((\varepsilon,\delta)\)-DP when
  \(A_N(s,E)\le e^\varepsilon A_N(s',E)+\delta\) for every raw neighboring
  pair and every \(E\in\mathcal H_C\).

- The authoritative conditional-scope private sample-complexity definition is
  \[
  m_C(\alpha,\beta;\varepsilon,\delta)
  :=\inf\left\{N\in\mathbb N_0:
  \begin{array}{l}
  \text{there is an }(\varepsilon,\delta)\text{-DP Markov kernel }A_N
  \text{ with}\\[-2pt]
  \displaystyle\sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,\,\bar H\sim A_N(S)}
  [\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]\le\beta
  \end{array}\right\}.
  \]
  Learners may depend on \(C,\alpha,\beta,\varepsilon,\delta\), may be
  computationally unbounded, and need not be proper.

- The displayed rate objects are
  \[
  R_{\mathrm{VC}}=
  \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  \[
  R_{\mathrm{fin}}=
  \frac{\log^+|C|+\log(1/\beta)}{\varepsilon\alpha}
  +\frac{\log(1/\beta)}{\alpha},\qquad
  R_{\mathrm{old}}=
  \frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  and
  \[
  \Lambda=1+\log(e+d)+\log(e+v)+\log(e+\alpha^{-1})
  +\log(e+\beta^{-1})+\log(e+\varepsilon^{-1})
  +\log(e+\log(e/\delta)).
  \]
  Suppressed arguments are the current
  \((d,v,\alpha,\beta,\varepsilon,\delta)\).  The notation
  \(N=\widetilde O(R_{\mathrm{VC}})\) means
  \(N\le K\Lambda^qR_{\mathrm{VC}}\) for universal \(K,q\), with no hidden
  positive power of \(d,v,\log^+|C|\), or dependence on raw objects,
  decompositions, lists, events, or supports.

- The quotient-first VC-sensitive law is the stated totalized
  \(K_C^{\mathrm{VC\text{-}Lyu}}\): for \(d=0\), \(N=0\) and the unique
  quotient concept are used; for \(d\ge1\), the source-valid teacher count
  \(k\ge2\), \(a=v+\log(4k/\beta)\),
  \(Q_{\mathrm{blk}}=e+ekd^2a/(\alpha v)\),
  \[
  m=\left\lceil C_{\mathrm{blk}}\frac{d^2}{\alpha}
  a\log Q_{\mathrm{blk}}\right\rceil,\qquad n_0=km,\qquad N=n_0,
  \]
  and the fixed source teacher blocks, source restrictions, essential-SOA
  lists, AboveThreshold, Sparse Sample, and deterministic fallback are used
  on quotient records.  The procedure is pulled back through \(T_N\).
  The old-Lyu and finite-class comparison laws use the same quotient input,
  output space, decoder, and raw pullback, with the finite arm disabled by
  \(R_{\mathrm{fin}}=+\infty\) when \(C\) is infinite.

- The four technical assumptions are exactly:
  - assump:finite-littlestone: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\), with no finite-cardinality,
    finite-domain, product, properness, efficiency, or computational
    assumption.
  - assump:countable-evaluation-quotient: \(Q_C\) is finite or countably
    infinite and every quotient cell \(\kappa^{-1}(\{q\})\) is in
    \(\Sigma\), equivalently \(\kappa:(X,\Sigma)\to(Q_C,2^{Q_C})\) is
    measurable.  This is a static pre-sampling condition and assumes no
    generated restriction, list, selector, event, or learner measurability.
  - assump:realizable-iid: \(D\) is arbitrary, \(c\) is arbitrary in \(C\),
    utility samples are iid from \(P_{D,c}\), and privacy is required for
    every raw neighboring labeled input, including nonrealizable labels.
  - assump:approximate-dp-regime:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), \(0<\delta<1\), and on
    the positive VC branch the source convention is
    \[
    \delta K\Lambda^qR_{\mathrm{VC}}\longrightarrow0
    \]
    along the stated asymptotic sequences, for the universal constants in
    the goal; no fixed positive \(\delta\) is silently absorbed.

- Source-direction metadata in the authoritative Note/Rigor classifies this
  contribution as explicitly conditional and material_partial: it preserves
  approximate central DP, arbitrary realizable distributions, general
  finite-Littlestone classes, and unrestricted improper learners, while
  restricting to finite-or-countable measurable evaluation quotients.  The
  uncountable-quotient regime, universal polynomial milestones, and a full
  characterization remain open.

## Formalized Goal

Exact-goal mode, explicitly conditional VC-sensitive upper bound: prove that
universal \(K\ge1\) and \(q\in\mathbb N_0\) exist such that, for every
\((X,\Sigma,C)\) satisfying the four assumptions, the quotient-first
totalized \(K_C^{\mathrm{VC\text{-}Lyu}}\), pulled back by \(T_N\), is a
measurable Markov kernel, is \((\varepsilon,\delta)\)-DP on all raw
neighboring labeled inputs, and satisfies
\[
\sup_D\sup_{c\in C}
\Pr_{S\sim P_{D,c}^N,\,\bar H\sim
K_C^{\mathrm{VC\text{-}Lyu}}(T_N(S),\cdot)}
[\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]\le\beta .
\]
It uses \(N=0\) when \(d=0\), and for \(d\ge1\)
\[
N\le K\Lambda^qR_{\mathrm{VC}}.
\]
Equivalently, on this explicitly conditional class of measurable evaluation
quotients,
\[
m_C(\alpha,\beta;\varepsilon,\delta)
=\widetilde O\!\left(
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
{\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}\right).
\]
The goal also requires the old-Lyu and finite-class arms, their same
privacy/PAC interface, and the deterministic
\[
m_C=\widetilde O\!\left(\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\right)
\]
frontier, including \(N=0\) at \(d=0\), \(vd^4=d^5\) at \(v=d\), the
finite/infinite-class convention, and no claim outside the quotient regime.
All listed quotient-preservation, decoding/risk, raw-neighbor,
kernel/event, marked-projection, finite-reconstruction, privacy, and PAC
interfaces are derivation obligations, not extra assumptions.

## Reviewed Roadmap

The accepted sketch and current step pairs cover all sixteen steps:
step_001 parameter closure and totalization; step_002 evaluation quotient,
dimension preservation, neighbor map, and exact risk transfer; step_003
countable-domain kernel and raw pullback; step_004 marked-kernel lift and
released projection; step_005 VC trace counting; step_006 fixed-trace
concentration; step_007 trace fixed point and confidence charge; step_008
source/current restrictions, essential lists, and irreducibility; step_009
DDim descent and a common score-\(k\) stage; step_010 mechanism accuracy
and actual output; step_011 all-input privacy; step_012 exact SOA identity
and empirical utility; step_013 marked holdout reconstruction and PAC
conversion; step_014 VC-arm rate specialization; step_015 independent
old-Lyu quotient arm; and step_016 finite arm, common minimum, and baseline
frontier.  Every live proof-step review records ACCEPTED and binds the
current proof artifact; the accepted sketch review and global proof review
are diagnostic inputs only.

## Attempted Claim

Conditioned on the four primitive assumptions in 1_intro.tex, assemble the
quotient-first VC-sensitive, old-Lyu, and finite-class private PAC learners,
including measurable raw pullbacks, all-input \((\varepsilon,\delta)\)
privacy, realizable iid population error at most \(\alpha\) with failure
probability at most \(\beta\), and the stated minimum/frontier rate bounds.
The finite-or-countable evaluation quotient assumption is part of the
theorem scope; no unrestricted claim is made outside it.

## Review Mode

split

## Review Verdict

- Score: 5
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The formalized setting, source-direction label
  (conditional/material_partial), quotient restriction, raw replacement-DP
  quantifier, decoded population-risk target, null branch, and three rate
  arms are aligned.  The current public bundle does not yet prove that goal.
- Roadmap or step coverage: All sixteen current proof/review pairs exist,
  are accepted, and are dependency-ordered.  The local-unit counts are
  source/appended \(6,7,5,4,5,5,5,8,5,4,7,5,6,5,23,7\), respectively;
  all sixteen appendix subsections are present.  This does not discharge the
  missing paper-facing compositions.
- Proof-details audit: The accepted sources contain 15,265 lines and the
  appendix contains 11,387 lines.  Direct comparison of every subsection
  found matching theorem-unit counts, but each source Target-Step Assembly
  is emitted as a standalone paragraph after the final proof environment.
  The source-to-appendix audit therefore fails at the first required
  target-step composition for step_001 and repeats for steps_002--016.
- Adversarial stress test: The live public interface is vulnerable to the
  free-learner reading of \(m_C\), to an uninstantiable prose-only
  \(K_C^{\mathrm{VC\text{-}Lyu}}\), and to a schedule satisfying undefined
  \(q_*\) but not the proved VC exponent.  The accepted local mathematics
  covers the listed boundary cases, so these are assembly/interface defects,
  not a newly identified step or idea obstruction.
- LaTeX export structure/provenance gate: Required files
  main.tex, arxiv.sty, ims.bst, reference.bib, and the five content files
  exist; sections, assumption labels, appendix headings, and allowed
  theorem environments are present.  The public appendix nevertheless has
  sixteen \paragraph{Assembly of the step.} blocks (lines
  731, 1184, 1766, 2205, 2576, 3098, 3611, 4474, 5118, 5809, 6754, 7367,
  8179, 8719, 10576, 11345), sixteen Supporting facts blocks, imperative
  sketch-row openings, dependency inventories, source restatements, and
  Consequences summaries.  These are forbidden workflow/audit scaffolding.
- Main theorem self-containedness: The theorem statement itself avoids
  appendix-local labels, but the public definition of \(m_C\) in
  1_intro.tex:61-68 omits the existential DP-kernel predicate and the
  learner binding from the infimum.  Literally, the displayed \(A_N\) is
  free; under the natural implicit reading, privacy is dropped.  In
  addition, 3_main.tex:7-10 refers to a law “defined in the preliminaries”
  whose exact integer choices and measurable map are not defined there.
- Assumption provenance gate: The setting correctly marks generated
  restrictions, lists, events, kernels, and occurrence marks as derived
  obligations.  The public preliminaries (2_preliminary.tex:8-50) instead
  expose proof-only confidence allocations, teacher/list/sample dictionaries,
  fallback details, occurrence metadata, and comparison bookkeeping without
  named public results proving them.  This obscures primitive versus derived
  conditions and fails the notation/provenance gate.
- Redundant public prose gate: The appendix's Supporting facts, dependency
  and source/audit paragraphs, Consequences blocks, imperative openings, and
  standalone assembly paragraphs violate the required paper-facing hygiene
  contract.  A successful TeX parse cannot cure this.
- Proof-step notation surface gate: Local source proofs classify and derive
  their helper objects, but assembly promotes generated-object dictionaries
  into public preliminaries and leaves the final interfaces in workflow
  paragraphs.  The smallest repair is bundle-local reassembly.
- Theorem readability and notation economy: The main theorem is readable at
  the statement level, but the learner laws and technical calibration are
  opaque prose references.  Move proof-local calibration and occurrence
  data into named appendix results and expose a concise, exact learner
  interface.
- Explicit-rate contract: The rate variables and hidden-constant intent are
  stated, and prop:step-016-frontier contains substantial inequalities.
  However 3_main.tex:61 invokes \(\delta K\Lambda^{q_*}R_{\mathrm{VC}}\to0\),
  while the appendix proves an exponent \(q=4\) (and a corresponding
  constant) and 5_appendix.tex:11138-11145 does not define \(q_*\).
  The public schedule can therefore be weaker than the proved schedule.
- Rate Specialization Bridge: The named frontier proposition cannot bridge
  an undefined \(q_*\); it must state the auxiliary choices, prove the
  \(q_*\ge4\) domination (or use the proved exponent), verify all technical
  conditions, show every absorption inequality and probability conversion,
  and state final hidden-constant dependence.
- Baseline-reduction check: The \(d=0\), \(v=d\), finite/infinite-class, and
  scheduled-\(\delta\) cases are present in the accepted sources and
  appendix prose.  The final public proof still needs these reductions
  cited through named theorem-style results, not subsection prose.
- LaTeX appendix full-derivation gate: This is the controlling failure.
  Every one of the sixteen source Target-Step Assembly sections must be
  translated into concluding proof text inside an allowed proof environment.
  The current paragraphs are outside proofs, and the surrounding audit
  scaffolding is not valid repetition or removable metadata because it
  remains public while the actual composition is omitted from proof bodies.
- LaTeX export citation/reference gate: The support file and citation keys
  exist, but 5_appendix.tex:11386 says “Propositions and lemmas in the
  preceding subsections” and then cites only the VC rate, old rate, finite
  arm, minimum, and frontier.  It omits exact old-arm kernel, DP, and PAC
  authorities (including prop:step-015-kernel, prop:step-015-dp, and
  prop:step-015-pac).  Public prose also names Sauer--Shelah and old-Lyu/Lyu
  without local citation commands in 4_proof_sketch.tex and the
  preliminaries/main files.  An isolated cached TeX invocation was not
  independently reproducible because the local Tectonic runtime panicked
  before compilation; the assembly report's cached exit-0 claim is treated
  as diagnostic only.
- LaTeX export synchronization: The nine-file bundle and all accepted step
  artifacts are present, but the assembly report's claim that workflow
  metadata and audit wrappers were removed is contradicted by the live
  appendix scan.  No tracker, proof, sketch, or specialized review was
  modified.
- Specialized-review resolution: Structural
  (ede7f9cfab5118fa35bbb262518c94a4d5adeb1719b66c95d555b9f8e14bf410),
  rigor (5913467fe62bc021f7b10e3fa78e395a4a9234b742240622c73b0094181af33c),
  citation (a1ff757abc52067342cb1c194fb5c460a3d12c422e30074918cc5beb5e2d586f),
  and adversarial
  (739de76a5afc69e0d1a72afc4fec58457445b7acd4e2bacc77382434189a4e59)
  are all contract-valid raw-token BLOCKING reviews with assembly depth and
  /proof-assembly targets.  They agree on the controlling appendix defect;
  the adversarial review adds the public quantifier and rate-interface
  blockers, which are resolved at the same assembly depth.

## Critical Issues

1. Aggregate full-derivation check, 5_appendix.tex lines 731, 1184, 1766,
   2205, 2576, 3098, 3611, 4474, 5118, 5809, 6754, 7367, 8179, 8719,
   10576, and 11345: all sixteen Target-Step Assembly arguments are
   standalone paragraphs outside allowed proof environments.  They contain
   the theorem-critical implications that compose local units into the
   exact step interfaces consumed downstream.  Their absence from proof
   bodies leaves the final dependency chain unproved.  Repair depth:
   assembly.  Smallest target: /proof-assembly.

2. Aggregate public-appendix hygiene check, 5_appendix.tex lines 7-145 and
   the corresponding ranges of every step subsection: sixteen Supporting
   facts headings, imperative Prove/Construct/Lift/Solve/Instantiate
   openings, dependency inventories, source/object restatements, and
   Consequences summaries remain exposed.  This violates the public
   appendix-shape and provenance contracts and cannot be accepted as
   removable metadata while the compositions are absent.  Repair depth:
   assembly.  Smallest target: /proof-assembly.

3. Adversarial reviewer, 1_intro.tex:61-68: the public \(m_C\) display
   quantifies only over the PAC inequality; it does not bind an
   \((\varepsilon,\delta)\)-DP Markov kernel \(A_N\).  A literal reading
   permits a nonprivate ERM and changes the theorem target.  Restore the
   exact authoritative infimum with the DP-kernel existential in the public
   setup.  Repair depth: assembly.  Smallest target: /proof-assembly.

4. Adversarial reviewer, 2_preliminary.tex:14-50 and 3_main.tex:7-10: the
   three learner laws are named or described in prose, without exact
   integer choices, totalization, or a measurable transition law available
   before the theorem.  The reader-facing theorem cannot verify its kernel,
   privacy, or sample-size claim from the public bundle.  Move the exact
   interface into named public results and give the theorem a concise bridge.
   Repair depth: assembly.  Smallest target: /proof-assembly.

5. Adversarial reviewer, 3_main.tex:57-68 and 5_appendix.tex:8694-8708,
   11138-11145: the corollary uses \(q_*\) in the
   \(\delta K_*\Lambda^{q_*}R_{\mathrm{VC}}\) schedule, but \(q_*\) is not
   defined or shown to dominate the proved VC exponent \(4\).  The explicit
   rate and asymptotic schedule therefore have a missing bridge.  Repair
   depth: assembly.  Smallest target: /proof-assembly.

6. Citation reviewer, 5_appendix.tex:11386 and public files
   2_preliminary.tex:46, 3_main.tex:35, 4_proof_sketch.tex:13,33: the final
   proof relies on “preceding subsections” and omits named old-arm kernel,
   privacy, and PAC authorities; public prose names external
   Sauer--Shelah/Lyu constructions without their BibTeX-backed citation
   commands.  Replace prose dependencies by theorem-style references and
   cite or locally restate each named external result.  Repair depth:
   assembly.  Smallest target: /proof-assembly.

## Failure-Type Rationale

The deepest required repair is assembly.  All four specialized artifacts are
valid and unanimously route to assembly; all sixteen accepted step pairs,
the accepted sketch, and the accepted global diagnostic provide the
mathematical source material.  The blockers are failures of public
translation, theorem-interface binding, citation wiring, and rate
specialization in the assembled bundle.  They can be repaired without
changing primitive assumptions, the quotient-first procedure, theorem scope,
privacy/PAC modes, exposed target, or success criterion.  A step or sketch
retry would discard accepted source work and is not supported by the
diagnostics; idea failure is not justified.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
