# Proof Review

## Formalized Setting

- Basic setup:
  Let \((X,\Sigma)\) be a nonempty measurable space and let
  \(C\subseteq\{0,1\}^{X}\) be a nonempty binary concept class.  Define
  \[
  x\equiv_Cx'\Longleftrightarrow
  c(x)=c(x')\ \text{for every }c\in C,\qquad
  Q_C=X/{\equiv_C},
  \]
  with quotient map \(\kappa:X\to Q_C\) and discrete sigma-field
  \(2^{Q_C}\).  For \(c\in C\), write
  \(\bar c(\kappa(x))=c(x)\), \(\bar C=\{\bar c:c\in C\}\), and
  \[
  H_C=\{0,1\}^{Q_C},\qquad
  \mathcal H_C=\bigotimes_{q\in Q_C}2^{\{0,1\}},\qquad
  \operatorname{Dec}_C(\bar h)=\bar h\circ\kappa .
  \]
  Put \(v=\operatorname{VC}(C)\), \(d=\operatorname{LD}(C)\), use natural
  logarithms, and use the setting's \(\log^*\) and
  \[
  \log^+|C|=
  \begin{cases}\max\{1,\log|C|\},&|C|<\infty,\\+\infty,&|C|=\infty.\end{cases}
  \]
  Put \(Z_X=X\times\{0,1\}\), \(Z_Q=Q_C\times\{0,1\}\), and
  \(T_N((x_r,y_r)_{r=1}^{N})=((\kappa(x_r),y_r))_{r=1}^{N}\).
  Raw labeled datasets have replace-one adjacency.  For \(D,c,\bar h\), the
  setting uses
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
  A learner is a Markov kernel \(A_N:Z_X^N\leadsto H_C\), and it is
  \((\varepsilon,\delta)\)-DP when
  \(A_N(s,E)\le e^\varepsilon A_N(s',E)+\delta\) for every neighboring raw
  pair and every \(E\in\mathcal H_C\).

- The authoritative conditional-scope sample complexity is
  \[
  m_C(\alpha,\beta;\varepsilon,\delta):=
  \inf\left\{N\in\mathbb N_0:
  \begin{array}{l}
  \text{there is an }(\varepsilon,\delta)\text{-DP kernel }A_N\text{ with}\\[-2pt]
  \displaystyle\sup_D\sup_{c\in C}
  \Pr_{S\sim P_{D,c}^N,\,\bar H\sim A_N(S,\cdot)}
  [\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]\le\beta
  \end{array}\right\}.
  \]
  Learners may depend on \(C,\alpha,\beta,\varepsilon,\delta\), may be
  computationally unbounded, and need not be proper.

- The displayed rates are
  \[
  R_{\mathrm{VC}}=
  \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
       {\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \quad
  R_{\mathrm{old}}=
  \frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha},
  \]
  \[
  R_{\mathrm{fin}}=
  \frac{\log^+|C|+\log(1/\beta)}{\varepsilon\alpha}
  +\frac{\log(1/\beta)}{\alpha},
  \]
  and
  \[
  \Lambda=1+\log(e+d)+\log(e+v)+\log(e+\alpha^{-1})
  +\log(e+\beta^{-1})+\log(e+\varepsilon^{-1})
  +\log(e+\log(e/\delta)).
  \]
  Hidden constants in \(\widetilde O\) may depend only on universal numerical
  choices and may not hide positive powers of \(d,v,\log^+|C|\), or raw,
  list, event, decomposition, or support dependence.

- The quotient-first VC-sensitive law \(K_C^{\mathrm{VC\text{-}Lyu}}\) is
  totalized before sampling.  For \(d=0\), it uses \(N=0\) and the unique
  quotient concept.  For \(d\ge1\), it uses the least feasible source-valid
  teacher count \(k\ge2\), \(a=v+\log(4k/\beta)\),
  \(Q_{\mathrm{blk}}=e+ekd^2a/(\alpha v)\),
  \[
  m=\left\lceil C_{\mathrm{blk}}\frac{d^2}{\alpha}
  a\log Q_{\mathrm{blk}}\right\rceil,\qquad n_0=km,\qquad N=n_0,
  \]
  fixed quotient teacher blocks, exact source restrictions and essential-SOA
  lists, one AboveThreshold run, and one Sparse Sample call.  Empty, invalid,
  failed, and exhausted paths are sent to the fixed \(\bar c_0\).  The old-Lyu
  and finite-class comparison laws use the same quotient input, output space,
  decoder, and raw pullback; \(R_{\mathrm{fin}}=+\infty\) when \(C\) is
  infinite.

- Technical assumptions are exactly:
  assump:finite-littlestone (\(C\ne\varnothing\) and
  \(d=\operatorname{LD}(C)<\infty\), with no finite-cardinality, product,
  properness, efficiency, or computational assumption);
  assump:countable-evaluation-quotient (\(Q_C\) finite or countably infinite
  and every quotient cell is measurable, equivalently \(\kappa\) is
  measurable);
  assump:realizable-iid (arbitrary \(D\), arbitrary \(c\in C\), iid utility
  data, and privacy on every raw neighboring labeled input); and
  assump:approximate-dp-regime
  (\(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), \(0<\delta<1\), with the
  source-compatible \(\delta K\Lambda^qR_{\mathrm{VC}}\to0\) schedule on
  positive-dimensional asymptotic comparisons).

- The Note/Rigor metadata records source alignment with approximate central
  DP, arbitrary realizable distributions, general finite-Littlestone classes,
  and unrestricted improper learners; the quotient restriction is explicitly
  target-changing, progress type is conditional, and materiality is
  material_partial.  Uncountable evaluation quotients and the universal
  polynomial milestones remain outside the claim.

## Formalized Goal

Exact-goal mode, explicitly conditional VC-sensitive upper bound: for every
declared \((X,\Sigma,C)\) satisfying the four assumptions, prove that the
quotient-first totalized \(K_C^{\mathrm{VC\text{-}Lyu}}\), pulled back by
\(T_N\), is a measurable Markov kernel, is \((\varepsilon,\delta)\)-DP on all
raw neighboring labeled inputs, and satisfies
\[
\sup_D\sup_{c\in C}
\Pr_{S\sim P_{D,c}^N,\,\bar H\sim
K_C^{\mathrm{VC\text{-}Lyu}}(T_N(S),\cdot)}
[\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]\le\beta.
\]
It uses \(N=0\) when \(d=0\), and for \(d\ge1\)
\[
N\le K\Lambda^qR_{\mathrm{VC}}.
\]
The old-Lyu arm and, when \(C\) is finite, the finite-class arm must have the
same measurable quotient-first, raw-DP, and realizable-PAC interfaces with
\(N_{\mathrm{old}}=\widetilde O(R_{\mathrm{old}})\) and
\(N_{\mathrm{fin}}=\widetilde O(R_{\mathrm{fin}})\).  Consequently,
\[
m_C=\widetilde O\!\left(\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\right),
\qquad
m_C=\widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right)
\]
under the stated fixed-\(\alpha,\beta,\varepsilon\), source-compatible
\(\delta\)-schedule convention.  The \(d=0\), \(v=d\), finite/infinite-class,
and quotient-scope baselines must be preserved; no unrestricted
characterization or universal polynomial in \(v,\log d,\log^*d\) is claimed.

## Reviewed Roadmap

The accepted sketch and current step pairs cover, in order: step_001
parameter closure and totalization; step_002 quotient factorization and
dimension/risk/neighbor transfers; step_003 countable-domain kernels and raw
pullbacks; step_004 marked lift and exact projection; step_005 VC trace
counting; step_006 fixed-trace concentration; step_007 trace fixed point and
confidence charge; step_008 source/current restrictions and essential lists;
step_009 DDim descent and a common score-\(k\) stage; step_010 mechanism
accuracy and actual output; step_011 all-input privacy; step_012 exact SOA
identity and empirical utility; step_013 marked holdout reconstruction and
PAC conversion; step_014 VC-arm specialization; step_015 the independent
old-Lyu arm; and step_016 the finite arm, deterministic minimum, and
baseline frontier.  All sixteen live proof/review pairs are current and
accepted; the sketch/global artifacts are diagnostic inputs only.

## Attempted Claim

Under the four primitive assumptions in `1_intro.tex`, the bundle assembles
the totalized quotient-first VC-sensitive, old-Lyu, and finite-class private
PAC learners on the finite-or-countable evaluation quotient. Each learner
has a measurable raw pullback, all-input `(epsilon, delta)` privacy, and the
realizable iid population-error guarantee `err <= alpha` with failure
probability at most `beta`. The certified bounds are the VC-sensitive,
old-Lyu, and finite-class rates stated in `3_main.tex`, and choosing the
least certified arm gives the stated minimum/frontier bound. The claim makes
no unrestricted assertion outside the finite-or-countable quotient scope.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The attempted claim matches the authoritative conditional
  scope, four primitive assumptions, raw replace-one privacy, unconditional
  realizable iid PAC mode, decoded population risk, improper quotient output,
  the exact \(d=0\) branch, all three arms, and the scheduled-\(\delta\)
  interpretation. The contribution remains `conditional` and
  `material_partial`; no result for uncountable evaluation quotients or the
  universal polynomial milestones is asserted.
- Roadmap or step coverage: The accepted sketch review and global-proof
  review are current. The diagnostic `global_proof.md` has the permitted
  `PARTIAL_BLOCKED` status. All 16 live proof artifacts are `COMPLETE`, all
  16 paired reviews are `ACCEPTED`, and every review binds the current proof
  hash. The source local-unit counts
  \((6,7,5,4,5,5,5,8,5,4,7,5,6,5,23,7)\) are represented; Step 015 also
  has the extra unconsumed interface proposition identified below.
- Proof-details audit: The aggregate audit exhaustively compared every used
  step, not a representative sample: all 16 `Local Derivation`, `Cited Result
  Applications`, and `Target-Step Assembly` bodies were checked against the
  corresponding appendix subsection. The accepted proof bodies total 15,265
  lines and the appendix 10,710 lines. The substantive local definitions,
  equations, inequalities, cited-result mappings, boundary checks, and
  terminal compositions are present. No source proof-obligation omission was
  found; the first public translation blocker is instead the standalone
  Step-001 source/provenance block at `5_appendix.tex:8-138`, which is present
  outside the permitted theorem/proof shape.
- Adversarial stress test: The raw/quotient map, all-input privacy,
  unconditional PAC mode, \(d=0\), \(d=1\), \(v=1\), \(v=d\), \(k=2\),
  repeated points, empty restrictions, zero-DDim leaves, false mechanism
  reports, fallback paths, finite/infinite \(C\), improper outputs, and
  fixed/scheduled-\(\delta\) cases survive. The adversarial reviewer found no
  theorem- or step-level counterexample.
- LaTeX export structure/provenance gate: All nine required public files and
  required sections are present. An independent cached Tectonic compile from
  inside `latex_template/` exited 0; only overfull-box warnings remain, with
  no TeX/BibTeX error or unresolved reference/citation. The bundle has 133
  unique labels, no duplicate labels, 113 distinct internal reference
  targets with no missing target, and 17 appendix subsections. Syntax passes,
  but public provenance fails because large source/object/audit blocks remain
  outside named theorem-style proofs.
- Main theorem self-containedness: `3_main.tex` uses the four numbered
  assumptions and objects defined in the theoretical setup or preliminaries,
  without appendix-local step IDs or local labels. Its constants are now
  synchronized with the appendix:
  \(K_{\mathrm V}=\max\{1,4K_{\rm fp}\}\),
  \(K_{\mathrm O}=4C_{11}\), and
  \(K_*=\max\{8,K_{\mathrm O},K_{\mathrm V}\}\). The main theorem passes;
  the Step-012 appendix statements do not, because they consume
  \(E_{\rm core}\) before its definition.
- Assumption provenance gate: The theorem-facing basis is exactly the four
  primitive assumptions, and the accepted steps derive quotient
  preservation, measurability, generated events, lists, mechanism success,
  privacy, holdout reconstruction, and arm comparisons. Public export still
  violates producer-before-consumer ordering for \(E_{\rm core}\) and uses
  unnamed workflow authorities for several derived interfaces.
- Redundant public prose gate: No workflow file paths, placeholders, or
  public claim/hypothesis/invariant environments were found. Nevertheless,
  the large standalone blocks at `5_appendix.tex:8-138`, `:3386-3557`,
  `:4246-4370`, `:5484-5643`, `:6383-6520`, and `:6977-7120` expose source
  restatements, object mappings, provenance ledgers, and audit conclusions
  rather than concise exposition integrated into named statements and
  proofs. This is an acceptance blocker under the public-appendix-shape and
  provenance gates.
- Proof-step notation surface gate: Proof-local dictionaries do not leak into
  the main theorem, and the preliminary interface is materially reduced from
  attempt 3. The appendix still exports the duplicate
  `prop:step-015-interfaces` inventory at `5_appendix.tex:8243-8383`; it has
  no `\ref{prop:step-015-interfaces}` consumer and is not a genuine reusable
  bridge.
- Theorem readability and notation economy: The main theorem and frontier
  corollary now give a readable reader-facing interface and synchronized
  constants. The appendix remains non-paper-ready because theorem-critical
  dependencies are sometimes expressed as workflow narration, and the minor
  prose defect "Since its threshold is minimal, Define \(q_*:=6\)" remains at
  `5_appendix.tex:10545-10546`.
- Explicit-rate contract: The VC, old, and finite arms expose their structural,
  sampling, privacy, confidence, horizon, norm, ceiling, and schedule
  dependence. The VC arm retains both additive terms, the old arm retains the
  \(d^5\) scale, the finite arm retains \(\log^+|C|\), and hidden constants
  are universal. No rate-scope, exponent, or probability-mode blocker was
  found.
- Rate Specialization Bridge: `Proposition~\ref{prop:step-016-frontier}`
  states the auxiliary choices, technical-condition checks, displayed term
  absorptions, probability conversion, final hidden-constant dependence, and
  \(q_*=6\) domination of the VC exponent \(4\). This gate passes
  mathematically; the mechanical wording noted above should be cleaned in the
  assembly repair.
- Baseline-reduction check: Exact \(d=0,N=0\) recovery, \(vd^4=d^5\) at
  \(v=d\), the finite/infinite-class convention, independently valid old and
  VC arms, and the distinction between fixed positive \(\delta\) validity and
  scheduled-\(\delta\) asymptotics are retained. No target-changing
  conservative loss was introduced.
- LaTeX appendix full-derivation gate: All 16 used steps, not a sample, passed
  substantive source-to-appendix derivation coverage. Acceptance still fails
  the paper-facing shape and dependency gates: the same derivational material
  is partly duplicated as standalone audit prose, \(E_{\rm core}\) is defined
  after its consumers, named theorem-style dependencies are replaced by
  workflow phrases, and one duplicate proposition is unconsumed.
- LaTeX export citation/reference gate: All four used bibliography keys are
  present and resolve under `ims.bst`; the compile has no unresolved citation
  or reference, duplicate label, malformed bare `ref`/`cite` fragment, or
  internal proof dependency expressed through an external citation command.
  The citation reviewer passes.
- LaTeX export synchronization: The assembly report is contract-valid and
  `COMPLETE`, with SHA-256
  `913d97296a1fdfe5ea0a1f36984485b0f44da08e092205a9c1668e3c4bd78721`.
  Its nine reported bundle hashes match the current public files. Its
  `Blockers = None` assertion is diagnostic and cannot override aggregate or
  specialized-review blockers.
- Specialized-review resolution: Structural
  (`b3b1b3efe95ddbef74a99882a5d3e75eb3920f7dbc10ec13394c98018b3463e2`)
  and rigor
  (`657ed8fefbf547f62573895089e7bd94dd0fc60c05f948a537287b9c996735f9`)
  are valid `BLOCKING` artifacts at `assembly` depth targeting
  `/proof-assembly`. Citation
  (`8c26d49faffa8796636638ebb33476a8973b4d91f970faca4a9f00c814ff5a77`)
  and adversarial
  (`36425a00d2f081d59b29ba07444d91ae5a5d51e64911df41aa1e763c2c12e1f9`)
  are valid `PASS` artifacts. The disagreement is resolved by the
  deepest-issue rule: any valid blocking diagnostic prevents acceptance, and
  both blockers agree on the same smallest assembly retry.

## Critical Issues

1. Structural issue 1 and rigor issue 3, `5_appendix.tex:8-138`,
   `:3386-3557`, `:4246-4370`, `:5484-5643`, `:6383-6520`, and
   `:6977-7120`: large source, object-mapping, provenance, and audit blocks
   remain as standalone public prose outside named theorem/proof
   environments. They separate theorem-critical assumptions and cited-result
   discharges from the statements and proofs that consume them, so the
   appendix is not a paper-ready dependency chain even though the underlying
   derivations are present. Integrate needed material into adjacent named
   theorem-style statements/proofs and remove audit-only narration. Repair
   depth: `assembly`. Smallest target: `/proof-assembly`.

2. Structural issue 2 and rigor issue 2, beginning at
   `5_appendix.tex:4850`: `prop:step-010-interfaces` invokes "the finite-mark
   results of Step~004" rather than named authorities such as
   `lem:step-004-occurrence`, `prop:step-004-lift`, and
   `prop:step-004-projection`. The same defect appears at `:668`,
   `:8353-8358`, `:9578-9580`, and `:9628-9630` through phrases such as
   "kernel-measurability result", "finite-mark lemmas", and
   "finite-mark construction". These unnamed or workflow-style authorities
   leave theorem-critical edges outside the public `Lemma`/`Proposition`
   reference graph. Replace them with explicit named theorem-style
   references and assumption bases. Repair depth: `assembly`. Smallest
   target: `/proof-assembly`.

3. Structural issue 3 and rigor issue 1, `5_appendix.tex:6527`, `:6613`,
   `:6692`, `:6784`, and `:6834`: Step-012 theorem statements consume
   \(E_{\rm core}\) before its sole definition at `:7105`,
   \(E_{\rm core}:=E_{\rm good}\cap E_{\rm mech}\), which appears in later
   standalone prose. The statements are therefore not self-contained, and
   the generated-event dependency is not producer-before-consumer. Define the
   event in a prior named interface with explicit producer references, or
   state the intersection inline before every consumer. Repair depth:
   `assembly`. Smallest target: `/proof-assembly`.

4. Structural issue 4 and rigor issue 4,
   `5_appendix.tex:8243-8383`: `prop:step-015-interfaces` duplicates later
   old-arm results, contains an unnamed finite-mark dependency, and has no
   `\ref{prop:step-015-interfaces}` consumer. The extra theorem-level
   inventory is neither an accepted source unit nor a genuinely reusable
   bridge, so it obscures rather than closes the old-arm dependency graph.
   Remove it, or convert it into a narrowly stated bridge that is actually
   consumed by a named downstream result. Repair depth: `assembly`. Smallest
   target: `/proof-assembly`.

## Failure-Type Rationale

The controlling depth is `assembly`. Both contract-valid blocking reviewers
identify defects introduced by the public-paper translation: theorem-critical
material is present but placed as audit prose, one event is defined after its
theorem-facing consumers, named accepted dependencies are cited through
workflow phrases, and one duplicate interface is orphaned. The accepted
sketch, accepted global diagnostic review, all sixteen accepted proof-step
pairs, exhaustive source-to-appendix audit, citation review, and adversarial
review provide the underlying mathematical content. These defects can be
repaired entirely in the LaTeX assembly without altering any accepted step.
No change to primitive assumptions, learner, theorem scope, metric,
privacy/PAC mode, exposed dependence, success criterion, sketch roadmap, or
idea is required, so `/proof-step`, `/proof-sketch`, and idea revision are
deeper than necessary.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
