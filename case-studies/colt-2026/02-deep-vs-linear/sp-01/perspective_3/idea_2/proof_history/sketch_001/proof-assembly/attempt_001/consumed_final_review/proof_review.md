# Proof Review

## Formalized Setting

- Basic setup:
  Fix integers $n,m,T\ge 1$, a constant stepsize $\eta>0$, and an accuracy
  parameter $\varepsilon\ge 0$. Let $\mathcal X=\{-1,+1\}^n$ and
  $\mathcal H\subseteq\{-1,+1\}^{\mathcal X}$. Fix the source tie label
  $s_0\in\{-1,+1\}$ and use
  \[
  \operatorname{sign}_{s_0}(z)=
  \begin{cases}
  +1,&z>0,\\
  -1,&z<0,\\
  s_0,&z=0.
  \end{cases}
  \]
  For a score $g$, distribution $\mathcal D$, and target $h$, the source
  classification error is
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}\!\left[
  \operatorname{sign}_{s_0}(g(x))h(x)<0\right].
  \]
  Thus a zero score is an error exactly when $h(x)=-s_0$.

  The learner is the bias-free depth-two fully connected ReLU network
  \[
  f_{a,W}(x)=a^\top\sigma(Wx),\qquad
  W\in\mathbb R^{m\times n},\quad a\in\mathbb R^m,
  \qquad \sigma(z)=\max\{0,z\}
  \]
  coordinatewise, with all entries in both layers trainable and
  $S=mn+m=m(n+1)$. Initialization is independent with
  \[
  W^{(0)}_{ji}\sim\mathcal N(0,1/n),\qquad
  a^{(0)}_j\sim\mathcal N(0,1/m).
  \]
  For each fixed $(\mathcal D,h)$, fresh samples $x^{(t)}\sim\mathcal D$
  drive the exact all-layer logistic SGD recursion
  \[
  (a^{(t+1)},W^{(t+1)})=(a^{(t)},W^{(t)})
  -\eta\nabla_{(a,W)}
  \ell\!\left(h(x^{(t)})f_{a^{(t)},W^{(t)}}(x^{(t)})\right),
  \qquad \ell(z)=\log(1+e^{-z}),
  \]
  under the fixed source gradient convention. For a realized initialization
  and sample path $\omega$, define
  \[
  G_\omega(x):=\sum_{t=\lceil T/2\rceil}^{T}
  f_{a^{(t)},W^{(t)}}(x),\qquad
  \widehat h_\omega(x):=\operatorname{sign}_{s_0}(G_\omega(x)),
  \]
  and let $\mathbb Q_{\mathcal D,h}$ be the joint law of initialization and
  the fresh SGD samples. Also define
  \[
  \mathcal D^-(x):=\mathcal D(-x),\qquad
  \mathcal D^{\mathrm{sym}}:=\tfrac12(\mathcal D+\mathcal D^-),
  \]
  \[
  A_\omega(x):=G_\omega(x)-G_\omega(-x),\qquad
  v_\omega:=\sum_{t=\lceil T/2\rceil}^{T}(W^{(t)})^\top a^{(t)}.
  \]

  For a feature map $\varphi:\mathcal X\to\mathbb R^d$, use the classifier
  $x\mapsto\operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)$. The
  deterministic dimension complexity $\operatorname{dc}(\mathcal H)$ is the
  least $d$ for which one common map exactly represents every target. The
  confident dimension $\operatorname{dc}^{1/2}(\mathcal H)$ is the least $d$
  for which a law $\mathcal P$ over feature maps, chosen before the
  distribution and target, satisfies
  \[
  \forall\mathcal D\ \forall h\in\mathcal H,\qquad
  \Pr_{\varphi\sim\mathcal P}\!\left[
  \inf_{w\in\mathbb R^d}
  \Pr_{x\sim\mathcal D}\!\left[
  \operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0
  \right]=0\right]\ge\tfrac12.
  \]
  The deterministic identity map is
  $\varphi_{\mathrm{id}}(x)=x\in\mathbb R^n$.

- Technical assumptions:
  - `assump:antipodal-oddness` (Antipodally odd target class): for every
    $h\in\mathcal H$ and $x\in\mathcal X$, $h(-x)=-h(x)$.
  - `assump:high-accuracy` (Strict high-accuracy regime):
    \[
    2\varepsilon<\frac{1}{n+1}.
    \]
  - `assump:universal-sgd-success` (Exact universal source premise): the one
    fixed architecture, width $m$, stepsize $\eta$, and horizon $T$ satisfy
    \[
    \forall\mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H,
    \qquad
    \mathbb E_{\omega\sim\mathbb Q_{\mathcal D,h}}
    \bigl[\mathcal L_{\mathcal D,h}(G_\omega)\bigr]
    \le\varepsilon.
    \]

The source-alignment metadata classifies the branch as `material_partial`.
It preserves the exact source learner and universal quantifier order, while
explicitly restricting to depth two, antipodally odd targets, and
$2\varepsilon<1/(n+1)$. The unrestricted-depth, non-odd,
unrestricted-accuracy source question remains open.

## Formalized Goal

Under `assump:antipodal-oddness`, `assump:high-accuracy`, and
`assump:universal-sgd-success`, prove
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\]
Consequently, the point-mass law
$\mathcal P=\delta_{\varphi_{\mathrm{id}}}$ has exact-representation
probability one for every distribution-target pair and
\[
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H)
\le n\le S\le TS.
\]

## Reviewed Roadmap

The accepted sketch has seven dependency-ordered steps. `step_001` proves
exact pathwise ReLU antisymmetrization. `step_002` proves the tie-aware
factor-two antipodal risk transfer. `step_003` invokes universal success on
$\mathcal D^{\mathrm{sym}}$ and extracts a deterministic
$2\varepsilon$-risk identity-coordinate vector. `step_004` converts exact
representation into a strict system on one $-s_0$-labeled representative per
antipodal pair. `step_005` derives and prunes a convex infeasibility
certificate to at most $n+1$ representatives and constructs the uniform risk
obstruction. `step_006` uses the strict accuracy gap to rule out
infeasibility and obtain exact target-wise separators. `step_007` fixes the
common identity map, obtains the probability-one Dirac law, and proves the
dimension and parameter-count chain.

## Attempted Claim

Under `assump:antipodal-oddness`, `assump:high-accuracy`, and
`assump:universal-sgd-success`, every target in the class has an exact
tie-resolved homogeneous separator in the common identity coordinates:
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\]
The point-mass law on the identity map has feature-law success probability
one for every distribution-target pair, and
\[
\operatorname{dc}^{1/2}(\mathcal H)
\leq\operatorname{dc}(\mathcal H)\leq n\leq S\leq TS,
\qquad S=m(n+1).
\]

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The attempted claim matches `setting.md` in architecture,
  learner, tie rule, quantifiers, assumptions, exact representation,
  probability-one feature law, and dimension chain. Its `material_partial`
  classification is consistent, and the public theorem states that the
  unrestricted source regimes remain open.
- Roadmap or step coverage: The sketch and sketch review are accepted; the
  paired global diagnostic review is accepted and was used only to interpret
  expected structure. All seven current proof artifacts and matching
  attempt-1 `ACCEPTED` step reviews were loaded. The dependency graph is
  acyclic and every step is used in the final assembly.
- Proof-details audit: All seven proof bodies, cited-result application
  sections, target-step assemblies, and paired reviews were compared directly
  with the live appendix. All 19 accepted non-atomic local units are
  represented in source order, and the target-step conclusions are translated
  into named public results or concluding proof text. The source derivations
  remain sufficient, but the paper-facing translation omits the `step_003`
  measurability discharge identified below.
- Specialized-review contract gate: Structural, rigor, citation, and
  adversarial artifacts are present and contract-valid. Each records the raw
  verdict `BLOCKING`, at repair depth `assembly`, with candidate target
  `/proof-assembly`. They agree on the controlling defects; the rigor review
  additionally treats the preliminary placement of $Q_h$ as blocking.
- Adversarial stress test: The accepted source proof survives ReLU kinks,
  zero parameters, $T=1$, both tie labels, source and antisymmetric score
  ties, $v=0$, $w=0$, $n=1$, $k=1$, $k=n+1$, $\varepsilon=0$, the empty
  target class, and the strict-threshold boundary. The public
  `prop:step-006-feasibility` does not survive a standalone assumption test:
  for $n=1$, $s_0=-1$, $\varepsilon=0$, and the constant $+1$ target, its
  stated high-accuracy assumption holds while the displayed system requires
  both $w>0$ and $-w>0$. This attacks the assembled proposition's incomplete
  assumption basis, not the accepted three-assumption source theorem.
- LaTeX export structure/provenance gate: All five content files and all four
  support files exist; required sections, three stable numbered assumptions,
  seven appendix step subsections, the final theorem proof, and only allowed
  public theorem-style environments are present. Scans found no workflow
  provenance, audit scaffolding, template placeholders, disallowed
  claim/hypothesis/invariant environments, or mechanical prose debris. The
  ten bare `qquad` fragments nevertheless make several public displays
  mathematically malformed.
- Main theorem self-containedness: PASS. `3_main.tex` uses only setup and
  preliminary notation and the three numbered assumptions; it does not cite
  appendix-local results or proof-step identifiers. The appendix theorem
  interfaces listed below do not meet the corresponding standalone gate.
- Assumption provenance gate: BLOCKING at assembly depth. The main theorem
  has the correct three primitive assumptions, but
  `prop:step-006-feasibility` advertises only high accuracy while its proof
  consumes the oddness- and universal-success-dependent outputs of steps 003
  and 005. The following exact-representation proposition also fails to state
  a clean primitive or named-prior-result basis.
- Redundant public prose gate: PASS. No copied sketch-row metadata, workflow
  narration, forbidden audit phrases, or boilerplate assembled-conclusion
  prose appears in the public TeX.
- Proof-step notation surface gate: BLOCKING at assembly depth only because
  `2_preliminary.tex` promotes $Q_h$ and announces its derived representative
  property even though neither is needed to read the main theorem. Other
  helper objects remain appendix-local or proof-local.
- Theorem readability and notation economy: The main theorem is concise and
  reader-facing, with no technical dictionary. The preliminary $Q_h$ block
  must be moved to the strict-feasibility appendix subsection to satisfy the
  definitional-only preliminary contract.
- Explicit-rate contract: The accepted proof exposes the exact factor $2$,
  support bound $k\le n+1$, strict threshold
  $2\varepsilon<1/(n+1)$, fixed finite horizon, expectation-to-existence
  mode, probability-one Dirac conclusion, and zero hidden-constant
  dependence. No term is silently absorbed. Public source fidelity remains
  blocked where bare `qquad` corrupts these displays.
- Rate Specialization Bridge: The exactification proof displays the complete
  chain comparing $2\varepsilon$, $1/(n+1)$, $1/k$, and the same witness
  risk. No separate asymptotic specialization is needed, but the surrounding
  step-006 theorem interfaces must state their complete assumption basis.
- Baseline-reduction check: PASS. The exact $\varepsilon=0$ case, empty
  class, $T=1$, $n=1$, $m=1$, $k=n+1$, zero-score cases, and probability-one
  point-mass conclusion retain the original specialized theorem rather than a
  weaker surrogate. Equality at $2\varepsilon=1/(n+1)$ is correctly excluded.
- LaTeX appendix full-derivation gate: BLOCKING after an exhaustive audit of
  all used steps, not a sample. Steps 001, 002, 004, 005, 006, and 007 retain
  their substantive definitions, equations, inequalities, case arguments,
  boundary checks, and target assemblies. The first unaccounted obligation is
  the `step_003` finite-recursion measurability bridge: the appendix assumes
  measurability in `lem:step-003-finite-extraction` and applies it in
  `prop:step-003-approximate-separator` without proving that the finite SGD
  states, $v_\omega$, and finite tie-resolved loss are measurable.
- LaTeX export citation/reference gate: PASS. There are no external citation
  commands or visible empty References section. Public labels are unique,
  every referenced label exists, and the recorded compile log has no
  unresolved reference or citation warning. Mathematical dependencies use
  named theorem-style results and numbered assumptions.
- LaTeX export synchronization: BLOCKING. The live `main.log` and `main.pdf`
  record a successful 13-page compile with only font-shape warnings, and all
  support files are present. A fresh local Tectonic invocation failed before
  TeX parsing in its runtime configuration, so it does not contradict that
  compile evidence. Successful compilation cannot detect the legal but
  malformed bare `qquad` tokens. The `COMPLETE` assembly report's claim of no
  blockers is contradicted by direct source comparison and all four current
  specialized reviews.
- Worker provenance and budget gate: PASS. The branch records distinct
  assembler, structural, rigor, citation, adversarial, and aggregate handles.
  Idea slot 2 and sketch, global, step, and assembly attempt 1 are within the
  configured budgets.

## Critical Issues

1. Source: structural, rigor, citation, and adversarial specialized reviews,
   confirmed by the theorem-style statement and assumption-provenance gates.
   Locations: `latex_template/5_appendix.tex:458`, `:578`, `:626`, `:661`,
   and `:702`. Defect: the step-005 propositions depend on a subsection-level
   fixed target, $Q_h$, $Z_h$, representative facts, and local infeasibility
   without including those conditions in their theorem statements;
   `prop:step-005-obstruction` also describes an already negated
   `\nexists w` display as an infeasible system. More seriously,
   `prop:step-006-feasibility` claims feasibility under high accuracy alone
   while consuming the oddness- and universal-success-dependent step-003 and
   step-005 interfaces, and `prop:step-006-exact-representation` inherits an
   incomplete dependency basis. Downstream effect: these public propositions
   are not valid standalone claims, and one is false under its displayed
   assumption alone. Selected repair depth: assembly; target:
   `/proof-assembly`.

2. Source: all four specialized reviews, confirmed by the exhaustive
   source-to-appendix audit. Location:
   `latex_template/5_appendix.tex:265`--`:358`, corresponding to accepted
   `step_003`. Defect: `lem:step-003-finite-extraction` explicitly requires
   measurability, but the public expected-transfer and approximate-separator
   proofs establish only boundedness before applying it. They omit the
   accepted finite-recursion argument that every SGD coordinate is
   measurable, $v_\omega$ is a finite algebraic function of those
   coordinates, and the finite tie-resolved loss is a finite sum of Borel
   indicators. Downstream effect: the expectation-to-deterministic-existence
   bridge is not discharged in the paper-facing proof. Selected repair depth:
   assembly; target: `/proof-assembly`.

3. Source: structural, citation, and adversarial specialized reviews,
   confirmed by a full public-TeX scan. Locations:
   `latex_template/1_intro.tex:70` and
   `latex_template/5_appendix.tex:525`, `:531`, `:544`, `:559` twice,
   `:582` twice, `:637`, and `:710`. Defect: ten intended `\qquad` commands
   are bare `qquad` tokens. TeX accepts them as ordinary math variables, so
   compilation succeeds while the setup, support-pruning identities,
   cancellation premise, obstruction statements, and the theorem-critical
   exact-representation conclusion are malformed. Downstream effect: the
   bundle is not source-faithful or paper-ready. Selected repair depth:
   assembly; target: `/proof-assembly`.

4. Source: rigor specialized review and the aggregate notation-economy gate.
   Location: `latex_template/2_preliminary.tex:11`--`:17`. Defect: the
   preliminary section exports the proof-local representative set $Q_h$,
   which is unnecessary for reading the main theorem, and announces its
   one-representative-per-antipodal-pair property before the appendix proves
   it. Downstream effect: the preliminary section is not definitional-only
   and obscures the provenance of a derived fact. Move both the definition
   and proved property into the strict-feasibility appendix subsection.
   Selected repair depth: assembly; target: `/proof-assembly`.

## Failure-Type Rationale

Every controlling defect is in the paper-facing translation. The current
setting, exact specialized target, accepted sketch, and all seven accepted
step proof/review pairs already contain sufficient mathematical interfaces to
repair the bundle without changing a proof-step claim, primitive assumption,
learner, quantifier, probability mode, metric, exposed dependence, success
criterion, or conclusion. The smallest and deepest necessary repair is
therefore assembly, not step, sketch, or idea. The correct routing is
`PROOF_ASSEMBLY_FLAW`, followed by recompilation and fresh structural, rigor,
citation, adversarial, and aggregate reviews.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
