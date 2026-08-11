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
\forall p\in\mathbb N\ \exists\kappa_0(p)\
\forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\]
together with \(|C_\kappa|\to\infty\). The source-alignment metadata
classifies the branch as `conditional`: the unresolved universal
polynomial global-stability profile remains the exact conditional gap.

## Formalized Goal

Assume `assump:polynomial-global-stability`. For every fixed
\(\varepsilon_0\in(0,1)\) and every sequence of nonempty finite binary
classes satisfying \(|C_\kappa|\to\infty\) and the exact superpolynomial
condition above, prove that one constant \(K_a\), independent of
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
\(\varepsilon_0\in(0,1)\). For every sequence
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) of nonempty finite binary concept
classes such that \(|C_\kappa|\to\infty\) and
\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\
\forall\kappa\geq\kappa_0(p):
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
\leq1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
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
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: PASS. The main theorem matches the authoritative
  conditional goal, including all sequence quantifiers, exact arity,
  unrestricted output and computation, PAC and privacy modes, displayed
  dependence, bounded-\(q_\kappa\) regime, and conditional progress label.
- Roadmap or step coverage: PASS. The six accepted proof/review pairs are
  current and hash-matched, and every dependency points to an earlier
  accepted result. No specialized reviewer or aggregate check found a
  step-, sketch-, or idea-level mathematical defect.
- Proof-details audit: BLOCKING only at the public-assembly interface. The
  underlying recoding, cited-result application, sample domination,
  padding, exact schedule, sequence asymptotics, privacy factorization,
  privacy relaxation, and lower-bound contradiction are substantively
  valid. Several appendix statements nevertheless leave their objects or
  conditions implicit, and one public proof has an undefined branch-local
  index.
- Adversarial stress test: BLOCKING at assembly depth. The accepted proof
  survives \(q=1\), \(d=0\), \(L=0\), bounded, oscillatory, or unbounded
  \(q_\kappa\), every fixed real \(\rho>0\), exact ceilings, padding, and
  exact or larger privacy allowances. Near-one source parameters expose an
  overbroad public BLM restatement, and the exact-schedule case exposes the
  undefined \(\kappa_{\mathrm{priv}}\) use.
- LaTeX export structure/provenance gate: The nine required bundle files,
  five content includes, required sections, one subsection per sketch
  step, final main-theorem proof, allowed public theorem environments,
  template-instantiation scan, workflow-provenance scan, and public-prose
  hygiene scan pass. The internal equation-reference discipline fails
  because 129 manually tagged equations are cited by literal numbers.
- Main theorem self-containedness: PASS. `3_main.tex` uses only setup and
  preliminary notation plus the numbered primitive assumption; it does
  not cite appendix-local results or expose a proof-local dictionary.
- Assumption provenance gate: PASS. The universal stability profile is the
  sole nonstandard primitive assumption and remains explicitly
  conditional. Every learner, schedule, rate, and privacy certificate has
  a named accepted producer; no generated invariant is promoted to a
  theorem assumption.
- Redundant public prose gate: PASS. No forbidden audit scaffolding,
  workflow marker, template placeholder, or mechanical translation phrase
  was found in the public TeX.
- Proof-step notation surface gate: PASS. Proof-local aliases and constants
  remain in the appendix. The public theorem exposes only setting-derived
  quantities and the necessary constant \(K_a\).
- Theorem readability and notation economy: PASS. The main theorem is a
  reader-facing conditional statement rather than an opaque admissibility
  dictionary.
- Explicit-rate contract: PASS. Exposed variables, hidden-constant
  dependence, fixed quantities, probability mode, sequence horizon,
  population-risk mode, exact ceiling, privacy schedule, and every-fixed-
  \(\rho\) scope are stated. All term dominations and the \(\rho=3\)
  specialization are displayed.
- Rate Specialization Bridge: Not separately applicable. The public theorem
  states the same exact technical rate proved in the appendix rather than
  a simplified rate with dropped terms.
- Baseline-reduction check: PASS. Binary recoding and exact padding have
  zero residual, and bounded-\(q_\kappa\) sequences retain both
  \(N_\kappa=o(L_\kappa)\) and
  \(\delta_\kappa N_\kappa^\rho\to0\).
- LaTeX appendix full-derivation gate: PASS after an all-step, not sampled,
  comparison. For `step_001` through `step_006`, all 22 non-atomic local
  units (counts 4, 2, 3, 4, 5, 4), the BLM cited-result mapping and
  discharge, every substantive displayed derivation, boundary check, and
  target-step assembly are represented in the matching appendix
  subsection or final theorem proof. No proof-obligation content is
  missing; the blockers concern the paper-facing interfaces of that
  content.
- LaTeX export citation/reference gate: The two external citation uses have
  the matching `bun2021equivalence` BibTeX entry, and theorem, assumption,
  proposition, lemma, and section labels are unique and resolved in the
  frozen successful compile. BLOCKING for the source scope of the public
  BLM restatement and for the absence of stable equation
  `\\label`/`\\eqref` dependencies.
- LaTeX export synchronization: `assembly_report.md` is contract-valid with
  `Status = COMPLETE` and `Blockers = None`, but it cannot support
  acceptance in view of the four valid specialized `BLOCKING` reviews.
  The frozen bundle compiled and resolved citations/references, with one
  4.2525pt overfull box near appendix line 717; this also makes the report's
  claim of compilation "without warnings" inaccurate. A repeat compile in
  the current environment was stopped before TeX processing by a local
  Tectonic runtime panic, so it supplied no contrary source diagnostic.
- Specialized review synthesis: structural, rigor, citation, and
  adversarial reviews are all contract-valid `BLOCKING` artifacts with
  `Suggested Repair Depth = assembly` and
  `Smallest Candidate Repair Target = /proof-assembly`. They agree on the
  controlling depth; no disagreement requires deeper routing.

## Critical Issues

1. Structural, rigor, citation, and adversarial reviewers; appendix
   theorem-style statements including
   `thm:step-001-blm-selection`,
   `prop:step-001-binary-private-learner`,
   `prop:step-002-exact-padding`,
   `prop:step-003-exact-privacy-schedule`,
   `lem:step-004-iterated-log-subpower`,
   `prop:step-004-q-subpower`,
   `prop:step-005-privacy-negligibility`, and
   `prop:step-006-sequence-learners`: objects, parameter mappings, exact
   sequence quantifiers, or local conditions are left free or imported
   from surrounding prose and literal display `(A.57)`. This prevents the
   final proof from depending on standalone theorem-style results with the
   accepted interfaces. Repair depth: assembly. Target: `/proof-assembly`.
2. Citation and adversarial reviewers; `thm:step-001-blm-selection`: the
   premise uses \(\alpha\) before quantifying it and the public theorem
   strengthens the source's absolute \(O(\cdot)\) bound into a pure
   universal-constant inequality over the full parameter cube without the
   additive/range justification available only in the consumed fixed
   regime. The downstream fixed
   \((\alpha_0,\beta_0,\varepsilon_0,\delta_C)\) application is supported,
   but the public cited theorem is not source-faithful as stated. Specialize
   it to the consumed regime, retain the source \(O(\cdot)\) form, or add a
   valid range/additive term without changing accepted proof content.
   Repair depth: assembly. Target: `/proof-assembly`.
3. All four specialized reviewers; `latex_template/5_appendix.tex`: the 129
   displays `\\tag{A.1}` through `\\tag{A.129}` and literal prose
   references such as `(A.12)`, `(A.57)`, and `(A.111)--(A.115)` have no
   stable equation `\\label`/`\\eqref` links. These dependencies can become
   silently incorrect after an insertion or renumbering, and `(A.57)` is
   even used as a theorem-facing hypothesis. Convert every mathematical
   dependency to stable labeled references or named self-contained public
   results. Repair depth: assembly. Target: `/proof-assembly`.
4. Rigor and adversarial reviewers;
   `prop:step-006-omega-contradiction`: the appendix defines
   \(\kappa_{\mathrm{priv}}\) only in the comparison-schedule branch but
   includes it in the common maximum `(A.129)` in the exact-schedule
   branch. The accepted `step_006` proof correctly sets a baseline index in
   the exact branch, so this is a literal assembly omission. Restore that
   definition or split the two branch-specific maxima. Repair depth:
   assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

The accepted step proofs already contain the missing quantifiers, object
mappings, fixed-regime BLM justification, and exact-schedule baseline index.
The all-step appendix comparison found no omitted mathematical derivation,
and all reviewers agree that the final claim, roadmap, dependency graph,
rate derivations, and conditional theorem contract remain valid. The
defects were introduced only while translating accepted content into the
paper-facing appendix and its reference structure. No `/proof-step`,
`/proof-sketch`, or idea revision is needed; `/proof-assembly` is therefore
the deepest required and smallest supported repair target.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
