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
  target-changing and the progress type is `conditional`.  Its materiality is
  the restored VC-sensitive arm on the countably coded regime.  Uncountable
  evaluation quotients and the universal polynomial milestones remain outside
  the claim.

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
  interpretation. The contribution remains consistently classified
  `conditional`; no result for uncountable evaluation quotients or either
  universal polynomial milestone is asserted.
- Roadmap or step coverage: The accepted sketch review and global-proof
  review are current and hash-bound. The diagnostic `global_proof.md` has the
  permitted `PARTIAL_BLOCKED` status with `Suggested Routing = None`, and its
  paired review is `ACCEPTED`. All 16 live proof artifacts are `COMPLETE`, all
  16 paired reviews are `ACCEPTED`, every review binds the current proof hash
  and producer attempt, and the proof/review local-unit counts agree as
  \((6,7,5,4,5,5,5,8,5,4,7,5,6,5,23,7)\), totaling 107.
- Proof-details audit: This aggregate audit compared all 16 used steps, not a
  sample. It inspected each source `Cited Result Applications`, every local
  unit under `Local Derivation`, each common derivation setup, and every
  `Target-Step Assembly` against the corresponding appendix subsection. All
  107 accepted local units have paper-facing theorem/proof counterparts; a
  unit-scoped display comparison found 551 of 560 displayed derivations
  identical modulo whitespace and equation tags, with the remaining nine
  accounted for by the public \(K_{\mathrm V}\), \(K_{\mathrm O}\), and
  \(K_*\) renamings. Every terminal target assembly is represented. Full
  source-to-appendix preservation nevertheless fails: the first unaccounted
  source obligation is the Step 005 definition of
  \(\mathcal E_{\bar C}(\bar S)\) and \(\Pi_{\bar C}\); the Step 008
  stage dictionary and Step 013 common marked-experiment setup are also
  absent, and Step 015's accepted dependency interface drifts in assembly.
- Adversarial stress test: The raw/quotient map, all-input privacy,
  unconditional PAC mode, \(d=0\), \(d=1\), \(v=1\), \(v=d\), \(k=2\),
  repeated points, empty restrictions, zero-DDim leaves, false mechanism
  reports, fallback paths, finite/infinite \(C\), improper outputs, and
  fixed/scheduled-\(\delta\) cases survive at the accepted-step level. The
  adversarial review found no step-level counterexample, but its standalone
  public-bundle attack confirms that the VC trace/stage dictionaries and the
  marked PAC experiment are undefined without internal workflow files.
- LaTeX export structure/provenance gate: All nine required public files and
  required sections are present. A fresh cached Tectonic compile run from
  inside `latex_template/` exited 0, ran BibTeX and the required reruns, and
  produced a PDF; only overfull-box warnings remain. The bundle has 134
  unique labels, 115 distinct referenced targets with none missing, 17
  appendix subsections, and only lemma, proposition, theorem, corollary, and
  proof environments for public proof content. Syntactic structure passes,
  but semantic provenance fails at the missing definitions, altered Step 015
  dependency, and nonexistent source-local authorities listed below.
- Main theorem self-containedness: `3_main.tex` uses the four numbered
  assumptions and setup/preliminary notation, without appendix-local results,
  proof-step IDs, or local labels. The reader-facing theorem and corollary are
  compact and expose their probability, horizon, norm, and constant
  dependence. The main theorem statement passes; appendix statements in
  Steps 005, 008, and 013 do not, because they consume undefined local
  objects or nonexistent local equation interfaces.
- Assumption provenance gate: The theorem-facing basis is exactly the four
  primitive assumptions, and the accepted steps derive quotient
  preservation, measurability, generated events, lists, mechanism success,
  privacy, holdout reconstruction, and arm comparisons. No generated event is
  promoted to a public theorem assumption. The public proof still fails
  producer/provenance discipline because trace, restriction, and marked-law
  objects are consumed without their accepted definitions.
- Redundant public prose gate: The scan found no workflow artifact paths,
  forbidden audit scaffolding, placeholder text, public
  claim/hypothesis/invariant environments, or copied sketch-row fields. This
  gate passes. The literal `qquad` at `1_intro.tex:127` is separate mechanical
  debris and should be repaired with the blocking notation residues.
- Proof-step notation surface gate: Proof-local dictionaries do not leak into
  the main theorem. Assembly instead removes essential appendix-local
  dictionaries: the Step 008 \(\rho,\gamma,e,e_i,H_i^r,p_r\) setup and the
  Step 013 experiment objects. The accepted Step 015 interface also exports
  composition locally, whereas assembly imports the Step 011 lemma directly.
- Theorem readability and notation economy: The main theorem and frontier
  corollary provide a concise reader-facing interface, and technical
  dictionaries remain appendix-local. The gate fails only where required
  appendix-local notation was deleted or renamed incompletely, not because
  the main theorem is an unreadable dictionary.
- Explicit-rate contract: The VC, old, and finite arms expose their structural,
  sampling, privacy, confidence, horizon, norm, ceiling, and schedule
  dependence. The VC arm retains both additive terms, the old arm retains the
  \(d^5\) scale, the finite arm retains \(\log^+|C|\), and hidden constants
  are universal. The accepted algebra passes, but the public VC proof uses an
  unbound \(K\) after defining \(K_{\mathrm V}\), so the exported rate proof
  is not yet notation-complete.
- Rate Specialization Bridge: `Proposition~\ref{prop:step-016-frontier}`
  states the auxiliary choices, technical-condition checks, displayed term
  absorptions, probability conversion, final hidden-constant dependence, and
  exponent-six domination of the VC exponent four. The mathematical bridge
  is present, but references to internal `(T)` and mismatched `(D.1)` are not
  valid paper-facing authorities.
- Baseline-reduction check: Exact \(d=0,N=0\) recovery, \(vd^4=d^5\) at
  \(v=d\), the finite/infinite-class convention, independently valid old and
  VC arms, and the distinction between fixed positive \(\delta\) validity and
  scheduled-\(\delta\) asymptotics are retained. No target-changing
  conservative loss was introduced.
- LaTeX appendix full-derivation gate: All 16 used steps were audited
  exhaustively. Every accepted local unit and target assembly is represented,
  and no local-unit body is severely compressed. The gate still fails because
  full derivation coverage includes common setup and invoked interfaces, not
  only labeled unit bodies: Step 005 trace objects, Step 008 equations (1)--(3),
  and Step 013 equations (13)--(15) are unaccounted for, while Step 015 changes
  an accepted direct dependency. This was not a representative or sampled
  comparison.
- LaTeX export citation/reference gate: The 62 citation commands use exactly
  `lyu2025` and `sauer1972`, both present in `reference.bib`. All 134 labels are
  unique and all 888 `ref`/`eqref` occurrences resolve syntactically. No
  malformed bare citation/reference command or external citation used for an
  internal result was found. The citation reviewer therefore validly passes;
  syntactic resolution does not validate the bare mathematical tags `(T)` and
  `(D.1)`.
- LaTeX export synchronization: The assembly report is contract-valid and
  `COMPLETE`, with SHA-256
  `7169e916a768afa4a4698f3231ffd3d3c5ac3b08a068365e2cc8188b779a7b87`.
  Its nine reported bundle hashes match the live files, including appendix
  SHA-256
  `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`.
  Its `Blockers = None` assertion is diagnostic and cannot override the
  specialized or aggregate gates.
- Specialized-review resolution: Structural
  (`6e1950c389760353e145eb0cda7ed38dd00f6e5e5416cbd16f21524ad7e3a069`),
  rigor
  (`1d33fa2b5233b6643464a01f74586e9776139f1f92554813f94dfe0ee121b56d`),
  and adversarial
  (`756762d712cb98d8fbd48b23af8a8acc35307e1a725a6803bf40d6c10d80e704`)
  are contract-valid `BLOCKING` artifacts at `assembly` depth targeting
  `/proof-assembly`. Citation
  (`0c3eb0246c86a15d7930f0a18652d97910d6c307c60b68427ede48e15d715d0f`)
  is a contract-valid `PASS`. The differing diagnostic scopes are resolved by
  the deepest-issue rule, not by voting: every blocker is assembly-local and
  any one of the three valid blocking verdicts prevents acceptance.

## Critical Issues

1. Aggregate full-derivation check and adversarial issue 1, Step 005 and
   Step 008: `5_appendix.tex:1930` first consumes
   \(\mathcal E_{\bar C}(\bar S)\), and `:2055` consumes the growth function
   \(\Pi_{\bar C}\), but neither is defined in the public bundle. At
   `:3278-3282`, `lem:step-008-stage-map` says to define
   \(\rho,\gamma,H_i^r,p_r\) by `(1)--(3)`, although that subsection begins
   at equation (14); the accepted Step 008 source additionally defines
   \(e(\bar h)\) and \(e_i(\bar h)\) in those missing equations. These are
   the objects used by the trace union, eventwise inclusion, DDim descent,
   mechanism output, and empirical certificate. The public VC-arm chain is
   therefore not self-contained. Restore concise paper-facing definitions
   before their first consumers. Repair depth: `assembly`. Smallest target:
   `/proof-assembly`.

2. Structural issue 1, rigor issue 1, adversarial issue 2, and the aggregate
   full-derivation check, Step 013: the accepted source at
   `proof_steps/step_013/proof.md:313-347` defines the iid master sample, full
   marked experiment \(\widetilde{\mathbb P}_{\bar D,\bar c}\), producer and
   complement blocks, \(M=(k-1)m\), complement empirical error, population
   risk \(r(h)\), and \(F_\alpha\) in equations (13)--(15). The appendix
   omits that setup, then uses these objects at `5_appendix.tex:6501-6504`,
   cites nonexistent local equation (14) at `:6547`, uses \(F_\alpha\) at
   `:6580`, and first uses the marked law at `:6711`. This prevents auditing
   measurability, conditioning order, pathwise inclusion, and Fubini from the
   paper alone. Restore the accepted setup before the first Step 013
   consumer. Repair depth: `assembly`. Smallest target: `/proof-assembly`.

3. Structural issue 2 and aggregate dependency synchronization check,
   Step 015: the accepted proof declares exactly Steps 002, 003, and 004 as
   dependencies and derives adaptive composition/postprocessing within its
   own standard interface. Assembly instead makes
   `prop:step-015-interfaces` depend on
   `lem:step-011-adaptive-composition` at `5_appendix.tex:7588-7595` and
   `:7719-7724`, and repeats that imported premise in the old-arm privacy
   result at `:8785-8792`. This changes the accepted old-arm producer graph
   and its claimed independence from the VC-arm privacy path. Carry the
   accepted Step 015 composition argument locally and remove the Step 011
   dependency. Repair depth: `assembly`. Smallest target: `/proof-assembly`.

4. Rigor issue 2 and aggregate notation/reference checks: the VC rate proof
   uses bare \(K\) at `5_appendix.tex:7429` after equation (22) defines
   \(K_{\mathrm V}\); the old-arm assembly invokes internal target tag `(T)`
   at `:9389`; and the minimum proof invokes `(D.1)` at `:9828`, although the
   public interface is `(D1)` at `:7611`. These are undefined or mismatched
   mathematical authorities. In addition, `1_intro.tex:127` contains the
   literal token `qquad` rather than `\qquad`. Complete the public renames,
   replace internal metadata tags with named public results or actual public
   equation identifiers, and fix the typesetting token. Repair depth:
   `assembly`. Smallest target: `/proof-assembly`.

## Failure-Type Rationale

The controlling depth is `assembly`. Three contract-valid specialized
reviews identify only public-translation omissions, dependency drift, and
notation residues, and the independent aggregate audit confirms them. The
accepted sources already contain the missing trace/stage and marked-experiment
definitions, Step 015 already contains its local composition interface, and
the intended constants and public named results already exist. Restoring and
renaming this material requires no new lemma and no change to an accepted
proof-step claim, dependency contract, primitive assumption, learner,
theorem scope, metric, privacy/PAC mode, exposed dependence, success
criterion, sketch roadmap, or idea. Thus `/proof-step`, `/proof-sketch`, and
idea revision are deeper than necessary, while acceptance is forbidden until
the paper-ready assembly is repaired.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
