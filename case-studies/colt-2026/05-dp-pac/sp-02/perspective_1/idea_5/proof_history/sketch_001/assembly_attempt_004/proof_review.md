# Proof Review

## Formalized Setting

The binding setting is the exact conditional setting in `setting.md`. Let
\(\log\) be the natural logarithm and \(\log^*\) the base-two iterated
logarithm. For a domain \(X\) and a nonempty finite binary concept class
\(C\subseteq\{0,1\}^X\), set
\[
d(C)=\operatorname{VC}(C),\qquad
\ell(C)=\operatorname{LD}(C),\qquad
s(C)=1+\log^*(1+\ell(C)),\qquad
q(C)=d(C)+s(C).
\]
Thus \(q(C)\geq1\), and finiteness gives
\(\ell(C)\leq\log_2|C|\). Write \(Z_X=X\times\{0,1\}\),
\(\mathcal H_X=\{0,1\}^X\), and
\[
R_Q(h)=\Pr_{(x,y)\sim Q}[h(x)\neq y].
\]
Realizability, distribution-free realizable PAC learning, and differential
privacy use exactly the definitions in `setting.md`: PAC probability is
joint over the iid sample and learner randomness, and privacy is the
two-sided pointwise kernel inequality for symmetric ordered replacement
adjacency and every measurable output event. There is no properness,
output-representation, or computational restriction. Fix
\[
\alpha_0=\frac18,\qquad \beta_0=\frac18,
\qquad \varepsilon_0\in(0,1).
\]

The sole novel primitive hypothesis is
`assump:polynomial-global-stability`: there is a universal integer
\(a\geq1\) such that every such \(C\) admits an integer
\(1\leq m_C\leq q(C)^a\) and one randomized producer
\(G_C:Z_X^{m_C}\rightsquigarrow\mathcal H_X\), chosen independently of
the realizable distribution, for which every realizable \(Q\) has a
hypothesis \(h_{C,Q}\in\mathcal H_X\) satisfying
\[
R_Q(h_{C,Q})\leq\frac{\alpha_0}{2},
\qquad
\Pr_{S\sim Q^{m_C},G_C}[G_C(S)=h_{C,Q}]\geq q(C)^{-a}.
\]
The atom may depend on \(Q\), but \(G_C,m_C,a\) may not. This condition
does not assume private learnability or any of the quantitative bridges.

The cited Bun--Livni--Moran bridge has the exact consumed interface
recorded in `setting.md`: a producer of cost \(m\) with an accurate atom
of mass at least \(\eta\) yields an arbitrary-output private learner with
sample bound
\[
n_{\mathrm{BLM}}
\leq C_{\mathrm{BLM}}
\left[
\frac{m}{\eta\varepsilon}
\log\!\left(\frac1{\eta\beta\delta}\right)
+\frac1{\alpha\varepsilon}
\log\!\left(\frac1{\eta\beta}\right)
\right]
\]
in the fixed regime used by the branch, with binary-label recoding,
arbitrary output, source-object mapping, and replacement adjacency all to
be discharged in the proof.

For \(L\geq0\), define
\[
u(L)=\log\log(e^e+L),\qquad b=2a+2,
\]
\[
T_a(q,L)=q^b+u(L),\qquad
\delta_a(q,L)=e^{-T_a(q,L)},
\]
\[
N_a(q,L,\varepsilon)
=\left\lceil
K_a\varepsilon^{-2}q^b(1+T_a(q,L))
\right\rceil,
\]
where \(K_a\geq2\) may depend only on
\(a,\alpha_0,\beta_0,C_{\mathrm{BLM}}\). For a class sequence, write
\[
L_\kappa=\log|C_\kappa|,\quad
d_\kappa=d(C_\kappa),\quad
\ell_\kappa=\ell(C_\kappa),\quad
s_\kappa=s(C_\kappa),\quad
q_\kappa=q(C_\kappa).
\]
The exact sequence premise is
\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\]
together with \(|C_\kappa|\to\infty\). The source-alignment metadata
classifies the branch as `conditional`: the unresolved universal
polynomial global-stability profile remains the exact conditional gap.

## Formalized Goal

Assume `assump:polynomial-global-stability`. For every fixed
\(\varepsilon_0\in(0,1)\), every sequence of domains
\(\{X_\kappa\}_{\kappa\in\mathbb N}\), and every sequence of nonempty
finite binary classes \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) satisfying
\(|C_\kappa|\to\infty\) and the exact superpolynomial condition above,
prove that one constant \(K_a\), independent of
\(\kappa,X_\kappa,C_\kappa,|C_\kappa|\), and one arbitrary-output,
computationally unrestricted learner \(M_\kappa\) exist at every index,
with exact sample arity
\[
N_\kappa=N_a(q_\kappa,L_\kappa,\varepsilon_0)
\leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right).
\]
The learner must be distribution-free realizable
\((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_\kappa)\)-DP for
\[
\delta_\kappa
=\exp\!\left[-q_\kappa^{2a+2}
-\log\log(e^e+L_\kappa)\right],
\qquad
\log(1/\delta_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa),
\]
while
\[
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\qquad
\delta_\kappa N_\kappa^\rho\longrightarrow0
\quad\text{for every fixed }\rho>0.
\]
If \(\bar\delta(N_\kappa)\geq\delta_\kappa\), the same learner must
remain private at \(\bar\delta(N_\kappa)\). In particular, for every
fixed \(c>0\), eventually
\[
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Consequently, no eventual \(\Omega(L_\kappa)\) lower bound can hold on
the identical unrestricted learner interface at the exact or any
eventually larger allowed schedule. The proof must instantiate the BLM
bridge, prove the exact sample domination, exact privacy logarithm,
subpower sample asymptotics, and privacy-negligibility bridge; none may be
promoted to an assumption.

## Reviewed Roadmap

The accepted six-step roadmap is acyclic. `step_001` proves the binary
recoding and Bun--Livni--Moran wrapper; `step_002` proves the explicit
sample domination, universal \(K_a\), ceiling, and exact-size padding;
`step_003` proves the exact privacy schedule; `step_004` derives the
subpower and sublogarithmic sample bounds from the exact sequence
quantifiers; `step_005` proves privacy negligibility for every fixed
\(\rho>0\) and the standard allowance; and `step_006` attaches all
certificates to the same learner family, proves privacy monotonicity, and
derives the eventual lower-bound contradiction. All six current proof
artifacts have current matching `ACCEPTED` reviews.

## Attempted Claim

Under `assump:polynomial-global-stability`, fix any
\(\varepsilon_0\in(0,1)\). For every sequence of domains
\(\{X_\kappa\}_{\kappa\in\mathbb N}\) and every sequence
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) such that
\(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) is nonempty and finite for every
\(\kappa\), \(|C_\kappa|\to\infty\), and
\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\]
there is a constant \(K_a\geq2\), depending only on
\(a,\alpha_0,\beta_0\) and the universal numerical constant
\(C_{\mathrm{BLM}}\), and independent of
\(\kappa,X_\kappa,C_\kappa,|C_\kappa|\), every realizable distribution,
and \(\varepsilon_0\), such that for every \(\kappa\) there is an
arbitrary-output, computationally unrestricted learner \(M_\kappa\) using
exactly
\[
N_\kappa
=\left\lceil
K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right)
\right\rceil
\]
iid labeled examples. The learner is distribution-free realizable
\((\alpha_0,\beta_0)\)-PAC in population zero-one risk and
\((\varepsilon_0,\delta_\kappa)\)-differentially private under symmetric
ordered replacement adjacency, where
\[
\delta_\kappa
=\exp\!\left[-q_\kappa^{2a+2}-\log\log(e^e+L_\kappa)\right],
\qquad
\log(1/\delta_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa).
\]
Moreover,
\[
N_\kappa
\leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right),
\qquad
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\]
and, for every fixed real \(\rho>0\),
\(\delta_\kappa N_\kappa^\rho\to0\). If an allowed privacy schedule
satisfies \(\bar\delta(N_\kappa)\geq\delta_\kappa\), the same learner is
\((\varepsilon_0,\bar\delta(N_\kappa))\)-DP. In particular, for every
fixed \(c>0\), eventually
\[
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Consequently, at the exact schedule or any eventually larger allowed
schedule, no eventual \(\Omega(L_\kappa)\) sample lower bound can hold for
all eligible arbitrary-output, computationally unrestricted,
distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learners. The PAC
probability is joint over the iid sample and learner randomness, privacy is
pointwise for every adjacent pair and measurable output event, and the
theorem is explicitly conditional on the sole novel primitive assumption
`assump:polynomial-global-stability`.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_STEP_FLAW

## Audit Summary

- Goal coverage: The assembled main claim matches the authoritative
  conditional goal, including its exact domain-and-class quantifiers,
  unrestricted learner interface, sample and privacy formulas, asymptotic
  rates, privacy relaxation direction, and lower-bound conclusion.
  Acceptance is nevertheless blocked because the proof of `(PN)` consumes
  a Step-4 dependency outside its proved sequence scope.
- Roadmap or step coverage: The accepted six-step roadmap is acyclic and all
  six current proof/review pairs are hash-matched and record `ACCEPTED`.
  Aggregate inspection finds a producer defect in `step_005`: `unit_001`
  imports an `(SP)`-scoped exact-ceiling proposition, whereas `unit_004` and
  the target-step assembly export `(PN)` from size divergence alone.
- Proof-details audit: The recoding, Bun--Livni--Moran instantiation and
  assumption discharge, five-term sample domination, universal constant
  choice, exact padding and both privacy directions, exact schedule,
  Step-4 asymptotics, scalar Step-5 factorization, privacy relaxation, and
  arbitrary-constant lower-bound contradiction are substantively present.
  The blocking gap is the unproved scope transition inside `step_005`, not
  the exponential-versus-polynomial calculation itself.
- Adversarial stress test: BLOCKING at step depth. For
  \(X_\kappa=[\kappa]\) and
  \(C_\kappa=\{0,1\}^{X_\kappa}\), size diverges but
  \(L_\kappa=\kappa\log2<d_\kappa=\kappa\), so `(SP)` fails already at
  \(p=1\). Thus `prop:step-004-sample-subpower` cannot be instantiated for
  every sequence claimed by Step 5. The numerical `(PN)` conclusion remains
  true because the exact setting-defined formula for \(N_a\) gives the
  ceiling bound directly.
- LaTeX export structure/provenance gate: PASS. All nine required bundle
  files and five content inputs are present; the required sections, six
  step-matched appendix subsections, and final main-theorem proof have the
  required shape. Scans found no forbidden public environments, workflow
  provenance, audit scaffolding, placeholders, malformed commands, or
  manual appendix-number dependencies.
- Main theorem self-containedness: PASS. `latex_template/3_main.tex`
  now quantifies the domain sequence before stating
  \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), and all later occurrences of
  \(X_\kappa\) are bound. It uses no appendix-local result or constant.
- Theorem-style statement shape gate: BLOCKING at the Step-5 dependency
  boundary. Appendix Proposition `prop:step-005-privacy-negligibility`
  quantifies a new class sequence under only \(|C_\kappa|\to\infty\), but
  applies `lem:step-005-factorization`, whose sequence quantities inherit
  `(SP)` through `lem:step-005-ceiling` and
  `prop:step-004-sample-subpower`.
- Assumption provenance gate: BLOCKING at `step_005`. The polynomial
  global-stability profile remains the sole novel primitive assumption and
  the theorem remains explicitly conditional, but the accepted Step-5
  producer exports an `(SP)`-free ceiling/factorization interface without
  proving it from the pointwise setting formula.
- Redundant public prose gate: PASS. No forbidden reviewer, workflow,
  audit, placeholder, or mechanical-translation prose occurs in the public
  TeX.
- Proof-step notation surface gate: PASS. Proof-local constants and aliases
  remain in the appendix; the theorem exposes only setting-level quantities
  and the necessary constant \(K_a\).
- Theorem readability and notation economy: PASS. The main theorem is a
  direct reader-facing conditional statement and does not expose
  proof-local dictionaries or appendix-only machinery.
- Explicit-rate contract: The displayed formulas, constants, fixed
  quantities, probability and horizon modes, every-fixed-\(\rho\)
  quantifier, and privacy-comparison direction are correct. The scalar
  rate calculation passes, but its Step-5 dependency provenance does not,
  so the rate certificate is not yet proved on its declared full scope.
- Rate Specialization Bridge: Not separately applicable. The public theorem
  states the exact technical rate proved by the accepted steps; it does not
  drop terms or substitute a simplified rate.
- Baseline-reduction check: PASS. Binary recoding and exact padding have
  zero residual. The bounded-\(q_\kappa\) regime retains both
  \(N_\kappa=o(L_\kappa)\) and
  \(\delta_\kappa N_\kappa^\rho\to0\).
- LaTeX appendix full-derivation gate: Exhaustively checked, not sampled.
  All 22 non-atomic source units across `step_001` through `step_006`
  (counts 4, 2, 3, 4, 5, 4), every cited-result mapping and discharge, and
  every target-step assembly appear substantively in the matching appendix
  subsection. That full comparison confirms that the Step-5 scope defect is
  inherited from the accepted producer rather than introduced only by
  assembly translation.
- LaTeX export citation/reference gate: PASS. The bundle has 166 unique
  labels and 73 distinct referenced targets, with no duplicate or
  unresolved label. Its sole external citation key, `bun2021equivalence`,
  resolves in `reference.bib`; all mathematical dependencies use stable
  theorem or equation references.
- LaTeX export synchronization: `assembly_report.md` is contract-valid with
  `Status = COMPLETE`, `Blockers = None`, and assembly attempt 4. Structural
  is contract-valid `PASS`; rigor and citation are contract-valid
  `BLOCKING` reviews routing to assembly; adversarial is contract-valid
  `BLOCKING` routing to `step_005`. All six pinned hashes match the current
  specialized reviews, assembly report, and appendix. The disagreement is
  resolved by the deepest-issue rule: the same scope transition occurs in
  accepted `step_005`, so an assembly-only repair cannot validate the
  producer's broader exported interface. A fresh compile from a temporary
  copy again stopped before TeX input because Tectonic panicked in its local
  `reqwest/system-configuration` runtime. Static structure, label,
  reference, citation, and provenance checks pass; the assembly report's
  prior successful bundle compile remains the available compile evidence.

## Critical Issues

1. Adversarial review, confirmed by the aggregate source-to-appendix and
   assumption-provenance checks; `proof_steps/step_005/proof.md:56`,
   `:136`, `:244`, and `:351`, with the same chain at
   `latex_template/5_appendix.tex:1195`, `:1247`, and `:1346`:
   `step_005` obtains the exact ceiling through
   `prop:step-004-sample-subpower`, whose sequence quantities inherit exact
   `(SP)` from `prop:step-004-q-subpower`, then exports `(PN)` for every
   size-divergent sequence without discharging `(SP)`. The full-cube
   sequence above witnesses that the dependency cannot be instantiated on
   the exported scope. `prop:step-005-source-allowance`, Step 6, and the
   final theorem consume this unproved interface. Repair `step_005` by
   deriving the ceiling directly from the setting-defined formula for
   \(N_a\) and the accepted fixed \(K_a\geq2\), preserving the broader true
   claim without the Step-4 scope restriction. Repair depth: step. Target:
   `/proof-step step_005`. The controller must then run a fresh
   `/proof-step-review step_005` before any downstream reuse.

## Failure-Type Rationale

The controlling defect is already present in the accepted `step_005`
producer: an `(SP)`-scoped dependency is used to justify a broader
size-divergence-only interface. Merely adding `(SP)` to the public appendix
proposition would narrow the Step-5 output, while changing its dependency
to a direct pointwise ceiling proof during assembly would introduce a
producer repair that has not received same-step review. Therefore
`PROOF_STEP_FLAW` is the deepest necessary and smallest sound
classification. The accepted sketch already calls for this direct
factorization and the numerical conclusion is true under the unchanged
setting, so no sketch or idea revision is needed.

## Suggested Next Action

/proof-step step_005

## Retry Mode

repair_step
