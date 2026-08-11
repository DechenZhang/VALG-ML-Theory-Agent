# Proof Review

## Formalized Setting

- Basic setup:
  Fix a tie label \(\tau\in\{-1,+1\}\), equal to the convention used for
  \(\operatorname{sign}(0)\) in the source protocol, and define
  \[
  \operatorname{sgn}_{\tau}(z):=
  \begin{cases}
  +1,&z>0,\\
  -1,&z<0,\\
  \tau,&z=0.
  \end{cases}
  \]
  Let \(\mathcal X=\{-1,+1\}^n\), let \(\Delta(\mathcal X)\) be the set of
  all probability distributions on \(\mathcal X\), and let
  \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\). Since \(\mathcal X\) is
  finite, so is \(\mathcal H\). Define
  \[
  \operatorname{dc}(\mathcal H)
  :=\min\left\{q\in\mathbb Z_{\ge 0}:\ 
  \exists\Phi:\mathcal X\to\mathbb R^q\ 
  \forall h\in\mathcal H\ 
  \exists u_h\in\mathbb R^q\ 
  \forall x\in\mathcal X,\ 
  \operatorname{sgn}_{\tau}(\langle u_h,\Phi(x)\rangle)=h(x)
  \right\},
  \]
  with \(\operatorname{dc}(\varnothing)=0\). For \(q=0\), use
  \(\mathbb R^0=\{0\}\) and \(\langle0,0\rangle=0\).

  Fix a fully connected, bias-free ReLU architecture with \(n_0=n\),
  \(n_L=1\), positive integer widths \(n_1,\ldots,n_{L-1}\), parameter
  matrices \(\theta_i\in\mathbb R^{n_i\times n_{i-1}}\), and
  \[
  S:=\sum_{i=1}^{L}n_i n_{i-1}.
  \]
  For \(z_0=x\), set \(z_i=\sigma(\theta_i z_{i-1})\) for \(1\le i<L\),
  where \(\sigma(a)=\max\{0,a\}\) coordinatewise, and set
  \(f_\theta(x)=\theta_Lz_{L-1}\). Initialize all entries independently by
  \[
  (\theta_i^{(0)})_{ab}\sim\mathcal N(0,1/n_{i-1}).
  \]
  At ReLU kink points, \(\nabla^{\mathrm{src}}\) is the fixed
  gradient/subgradient selection convention used by the source. Given
  \(\mathcal D\in\Delta(\mathcal X)\) and \(h^\star\in\mathcal H\), draw
  \(x^{(0)},\ldots,x^{(T-1)}\stackrel{\mathrm{iid}}{\sim}\mathcal D\) and
  perform
  \[
  \theta^{(t+1)}=\theta^{(t)}-
  \eta\nabla^{\mathrm{src}}_\theta
  \ell\!\left(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})\right),
  \qquad
  \ell(z)=\log(1+e^{-z}),
  \quad 0\le t<T.
  \]
  Its latter-half aggregate and returned classifier are
  \[
  A_{\mathcal D,h^\star}(x):=
  \sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x),
  \qquad
  \widehat h_{\mathcal D,h^\star}(x):=
  \operatorname{sgn}_{\tau}(A_{\mathcal D,h^\star}(x)).
  \]
  For a binary classifier \(g\), write
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)h(x)<0]
  =\Pr_{x\sim\mathcal D}[g(x)\ne h(x)].
  \]

- Technical assumptions:
  - `assump:source-regime` (Source parameter regime):
    \(n,L,T\in\mathbb Z_{\ge1}\), all widths are positive integers with
    \(n_0=n\) and \(n_L=1\), \(\eta>0\), \(0\le\varepsilon<1/4\), and
    \(d\in\mathbb Z_{\ge0}\) is exposed.
  - `assump:universal-sgd-success` (Universal exact-SGD success): the
    architecture, \(\eta\), and \(T\) are fixed before the distribution and
    target, and
    \[
    \forall\mathcal D\in\Delta(\mathcal X)\ \forall h^\star\in\mathcal H,
    \qquad
    \mathbb E_{\theta^{(0)},\,x^{(0:T-1)}\stackrel{\mathrm{iid}}{\sim}\mathcal D}
    \!\left[\mathcal L_{\mathcal D,h^\star}
    (\widehat h_{\mathcal D,h^\star})\right]
    \le\varepsilon.
    \]
    The expectation is over exactly the stated Gaussian initialization and
    one-sample SGD draws, with no change of learner.
  - `assump:tie-resolved-confident-map` (Target-independent tie-resolved
    confident map): there exists one probability law \(\mathcal P\) on maps
    \(\phi:\mathcal X\to\mathbb R^d\), selected before \(\mathcal D\) and
    \(h\), such that
    \[
    \exists\mathcal P\ \forall\mathcal D\in\Delta(\mathcal X)\
    \forall h\in\mathcal H,
    \qquad
    \Pr_{\phi\sim\mathcal P}\!\left[
      \exists w\in\mathbb R^d\ \forall x\in\mathcal X,
      \ \operatorname{sgn}_{\tau}(\langle w,\phi(x)\rangle)=h(x)
    \right]\ge\frac12.
    \]
    The law is target-independent, the separator may depend on \((\phi,h)\),
    and the event preserves zero-score ties exactly.

The source-alignment metadata classifies this theorem as `conditional`. It
does not claim the source's unconditional target or derive the confident-map
premise from SGD.

## Formalized Goal

Prove the single conditional deterministic dimension-amplification theorem
with the numerical universal constant \(C=7\): every setup satisfying the
three assumptions above obeys
\[
\boxed{\operatorname{dc}(\mathcal H)\le 7TSd}.
\]
The constant is independent of
\(n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d\), and \(\mathcal P\).
For \(\mathcal H\ne\varnothing\), the proof must derive
\(\operatorname{VC}(\mathcal H)<2T\), derive the class-size bound from
Sauer--Shelah and \(S\ge n\), and use independent sampling from
\(\mathcal P\), a union bound, and block concatenation to produce one
deterministic common feature map. The cases \(\mathcal H=\varnothing\) and
\(d=0\) must be discharged exactly. If a separate explicit polynomial bound
\(d\le p(S,T)\), with no hidden \(n\)- or \(\eta\)-dependence, is available,
the same contract specializes to
\(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\).

## Reviewed Roadmap

The accepted sketch has five dependency-ordered steps. `step_001` closes the
empty and zero-dimensional branches and proves \(S\ge n\). `step_002` uses
an unseen-label experiment for the exact source learner to prove
\(\operatorname{VC}(\mathcal H)<2T\). `step_003` proves the finite-domain
growth bound and the integer budget
\(r=\lceil\log_2(2|\mathcal H|)\rceil\le7TS\). `step_004` amplifies the one
common confident-map law to one deterministic tuple covering all targets.
`step_005` concatenates the tuple, preserves scores pointwise, proves
\(\operatorname{dc}(\mathcal H)\le rd\le7TSd\), and supplies the explicitly
conditional polynomial specialization.

## Attempted Claim

Under `assump:source-regime`, `assump:universal-sgd-success`, and the
separately explicit conditional premise `assump:tie-resolved-confident-map`,
every setup satisfies
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The constant \(7\) is numerical and independent of
\(n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d\), and \(\mathcal P\).
If a separate result supplies a fully explicit polynomial bound
\(d\le p(S,T)\) with no hidden \(n\)- or \(\eta\)-dependence, the result
specializes to
\[
\operatorname{dc}(\mathcal H)\le7TSp(S,T).
\]
The attempted claim does not assert that universal SGD success implies the
confident-map premise or the additional polynomial bound.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The public theorem matches the authoritative conditional
  goal, constant, quantifier order, fixed-horizon mode, exact tie-resolved
  metric, and exposed \(S,T,d\) dependence. Its `conditional` progress label
  is faithful; deriving the confident-map premise or a polynomial bound on
  \(d\) remains outside this branch.
- Roadmap or step coverage: The sketch and sketch review are accepted, the
  paired global diagnostic review is accepted and was used only as context,
  and all five current proof/review pairs are attempt-1 `ACCEPTED` artifacts.
  The dependency graph and generated-output flow are acyclic and complete.
- Proof-details audit: All five accepted proofs were inspected directly. The
  appendix contains all 17 non-atomic local units in source order (3, 5, 3,
  2, and 4 by step), plus substantive concluding proof text for all five
  target-step assemblies. This was an exhaustive source-to-appendix audit,
  not a sampled comparison, and no source obligation is omitted or altered.
- Adversarial stress test: The null class, \(d=0\), \(L=1\), \(T=1\),
  \(v=0\), \(v=N\), \(|\mathcal H|=r=1\), repeated samples, zero scores, and
  success probability exactly \(1/2\) are covered. The repaired update map
  matches the authoritative recursion, so no verified attack remains.
- LaTeX export structure/provenance gate: All required content and support
  files exist. Required sections, stable numbered assumptions, five appendix
  step subsections, and the final main-theorem proof are present. Scans found
  no workflow provenance, forbidden audit scaffolding, placeholders, or
  disallowed public theorem environments. A fresh clean Tectonic build of
  assembly attempt 2 succeeded; only one underfull-box warning and two
  font-shape fallback warnings were present.
- Main theorem self-containedness: PASS. The theorem uses only setup and
  preliminary notation and numbered assumptions, with no appendix-local or
  proof-step interface in its statement.
- Assumption provenance gate: PASS. The confident-map condition is an
  explicit primitive condition of the formalized conditional theorem. Every
  other theorem-facing certificate is produced by a named accepted step and
  public appendix result before use.
- Redundant public prose gate: PASS. No copied sketch-row metadata, workflow
  narration, audit scaffolding, or mechanical phrase blocker was found.
- Proof-step notation surface gate: PASS. Public notation is limited to the
  quantities needed for the theorem and the named appendix bridges; local
  events, sigma-fields, counting helpers, and witness choices remain local.
- Theorem readability and notation economy: PASS. The main theorem has a
  concise reader-facing interface, and the optional polynomial corollary is
  separately and explicitly conditioned.
- Explicit-rate contract: PASS. The numerical constant \(7\), exposed
  variables, prohibited hidden dependence, deterministic conclusion,
  expectation/probability conversions, fixed horizon, exact metric, and every
  ceiling or scalar absorption are stated.
- Rate Specialization Bridge: PASS. The public corollary states the separate
  \(d\le p(S,T)\) condition and proves
  \(7TSp-7TSd=7TS(p-d)\ge0\), without changing probability, horizon, norm,
  or tie mode.
- Baseline-reduction check: PASS. Empty-class and zero-dimensional conclusions
  remain exact; the \(T=1\), \(v=0\), \(r=1\), zero-score, and \(p=d\)
  specializations retain their claimed conclusions.
- LaTeX appendix full-derivation gate: PASS. This was an exhaustive audit of
  every used step, not a sample. All 17 source units and all five target
  assemblies are accounted for with their substantive definitions, equations,
  inequalities, conditioning and probability arguments, boundary checks,
  dependency discharges, and concluding target-step arguments. In particular,
  `latex_template/5_appendix.tex:168` now has the exact accepted update
  `\theta-\eta\nabla^{\mathrm{src}}_\theta`.
- LaTeX export citation/reference gate: PASS. There are no external citation
  commands or visible empty References section. All 49 public labels are
  unique, every referenced label exists, and the fresh compile reports no
  unresolved reference or citation.
- LaTeX export synchronization: PASS. The `COMPLETE` assembly report, public
  theorem, appendix, accepted step interfaces, and authoritative setting agree
  on the exact update, assumptions, quantifiers, tie convention, constant, and
  conditional polynomial specialization. Structural, rigor, citation, and
  adversarial reviews are all contract-valid `PASS` artifacts with no blocker,
  repair depth, or candidate retry target; there is no reviewer disagreement.
- Worker provenance and budget gate: PASS. The run-scoped literature and
  perspective-selection handles are recorded, and this five-step branch has
  distinct handles for the twelve perspective roles and all ten step roles.
  Idea slot 2, sketch/global/step attempt 1, and assembly attempt 2 are within
  the configured and controller hard limits; the consumed assembly attempt-1
  review artifacts are archived and are not used as current proof evidence.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, the aggregate contract checks pass, and
the repaired assembly proves the exact formalized conditional claim without a
remaining assembly-, step-, sketch-, or idea-level blocker. The correct final
failure type is therefore `ACCEPTED`. This classification accepts only the
explicitly conditional amplification theorem: it does not claim the source's
unconditional polynomial or linear dimension-complexity implication.

## Suggested Next Action

None

## Retry Mode

none
