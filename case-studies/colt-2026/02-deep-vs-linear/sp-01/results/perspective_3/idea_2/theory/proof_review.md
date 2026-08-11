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

- Score: 9
- Failure Type: ACCEPTED

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
  with the live appendix, not sampled. All 19 accepted non-atomic local units
  pass source-to-appendix coverage: steps 001, 002, 003, 004, 005, 006, and
  007 contribute respectively 2, 2, 3, 2, 4, 2, and 4 units. Their
  definitions, displays, inequalities, substitutions, finite case analyses,
  compactness and continuity argument, coefficient-pruning recursion,
  boundary checks, cited-result discharges, and target-step assemblies are
  preserved in mathematical order. The additional public propositions only
  package accepted target-step assemblies and introduce no independent lemma.
- Specialized-review contract gate: Structural, rigor, citation, and
  adversarial artifacts are fresh for assembly attempt 2 and contract-valid.
  Each records raw-token `PASS`, with raw-token `Blocking Issues = None`,
  `Suggested Repair Depth = None`, and
  `Smallest Candidate Repair Target = None`. There is no reviewer
  disagreement to resolve.
- Adversarial stress test: The accepted source proof survives ReLU kinks,
  zero parameters, $T=1$, both tie labels, source and antisymmetric score
  ties, $v=0$, $w=0$, $n=1$, $k=1$, $k=n+1$, $\varepsilon=0$, the empty
  target class, and the strict-threshold boundary. The repaired step-005
  interfaces fix the target and define $Q_h,Z_h$ before use, and both
  step-006 propositions now state all three primitive assumptions. The
  exactification compares the same target, witness distribution, score class,
  and tie-resolved loss on both sides.
- LaTeX export structure/provenance gate: All five content files and all four
  support files exist; required sections, three stable numbered assumptions,
  seven appendix step subsections, the final theorem proof, and only allowed
  public theorem-style environments are present. Scans found no workflow
  provenance, audit scaffolding, template placeholders, disallowed
  claim/hypothesis/invariant environments, mechanical prose debris, or
  malformed bare commands. All ten formerly bare `qquad` tokens are repaired
  as `\qquad`.
- Main theorem self-containedness: PASS. `3_main.tex` is concise and uses only
  preliminary notation and the three numbered assumptions; it does not cite
  appendix-local results, proof-step identifiers, or local proof notation.
  Every appendix theorem-style statement fixes its objects, states its
  primitive or named-prior-result basis and local conditions, and states its
  conclusion before proof.
- Assumption provenance gate: PASS. The public theorem uses exactly the three
  primitive conditions from `setting.md`. Generated scores, measurability,
  representative properties, convex certificates, witness distributions,
  strict feasibility, and common-map conclusions are all derived by named
  prior results before use; no generated invariant is promoted to a theorem
  assumption.
- Redundant public prose gate: PASS. No copied sketch-row metadata, workflow
  narration, forbidden audit phrases, or boilerplate assembled-conclusion
  prose appears in the public TeX.
- Proof-step notation surface gate: PASS. The repaired preliminaries contain
  only setting-derived notation needed to orient the theorem. $Q_h,Z_h$ and
  all convex, support, finite-range, and trajectory abbreviations are local to
  the appendix proofs that derive and use them.
- Theorem readability and notation economy: The main theorem is concise and
  reader-facing, with no technical dictionary or proof-local aliases. Public
  notation is directly defined from setting quantities, and derivations are
  shown rather than hidden behind admissibility or boundedness packages.
- Explicit-rate contract: The accepted proof exposes the exact factor $2$,
  support bound $k\le n+1$, strict threshold
  $2\varepsilon<1/(n+1)$, fixed finite horizon, expectation-to-existence
  mode, probability-one Dirac conclusion, and zero hidden-constant
  dependence. No term is silently absorbed and no asymptotic, all-time, or
  high-probability upgrade is claimed.
- Rate Specialization Bridge: The exactification proof displays the complete
  chain comparing $2\varepsilon$, $1/(n+1)$, $1/k$, and the same witness
  risk. It verifies the strict primitive condition and converts the already
  deterministic approximate separator to exact feasibility, so no separate
  asymptotic specialization proposition is needed.
- Baseline-reduction check: PASS. The exact $\varepsilon=0$ case, empty
  class, $T=1$, $n=1$, $m=1$, $k=n+1$, zero-score cases, and probability-one
  point-mass conclusion retain the original specialized theorem rather than a
  weaker surrogate. Equality at $2\varepsilon=1/(n+1)$ is correctly excluded.
- LaTeX appendix full-derivation gate: PASS after exhaustive comparison of
  every used step, not a representative sample. In particular, the repaired
  step-003 proof derives Borel measurability of the finite SGD recursion,
  $v_\omega$, and both finite-domain losses before expectation and finite-range
  extraction; step 005 retains the closest-point inequality and every affine
  coefficient update; and each subsection contains its target assembly as a
  named bridge or concluding proof text.
- LaTeX export citation/reference gate: PASS. There are no external citation
  commands or visible empty References section. Public labels are unique,
  every referenced label exists, and mathematical dependencies name their
  theorem type or numbered assumption. The recorded compile log contains no
  unresolved reference, citation, or duplicate-label warning.
- LaTeX export synchronization: PASS. `assembly_report.md` has
  `Status = COMPLETE`; the live `main.log` and 13-page `main.pdf` postdate the
  repaired TeX and record successful cached Tectonic compilation with only
  nonblocking font-shape warnings. An additional isolated invocation hit a
  host Tectonic runtime panic before TeX parsing, which does not contradict
  the fresh branch-local compile evidence or the independent static gates.
- Worker provenance and budget gate: PASS. The branch records distinct
  assembler, structural, rigor, citation, adversarial, and aggregate handles.
  The attempt-2 assembler and four fresh reviewers are recorded with
  `configured_model=gpt-5.6-sol`, `configured_reasoning=max`, and budget 100.
  Idea slot 2 is within the idea budget 30, sketch attempt 1 is within the
  sketch budget 10, and global, step, assembly, and review attempts are within
  their budget 100.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, every aggregate contract gate passes, and
the public bundle proves the exact formalized goal under the three stated
primitive assumptions. The conclusion remains explicitly classified as a
`material_partial` depth-two, antipodally odd, strict-high-accuracy theorem;
it is not presented as resolving the unrestricted source problem. Therefore
the controlling failure type is `ACCEPTED`, with no repair target.

## Suggested Next Action

None

## Retry Mode

none
