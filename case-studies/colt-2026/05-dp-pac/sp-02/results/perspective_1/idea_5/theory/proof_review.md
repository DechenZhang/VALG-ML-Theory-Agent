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

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The assembled main claim matches the authoritative
  conditional goal, including its exact domain-and-class quantifiers,
  unrestricted learner interface, sample and privacy formulas, asymptotic
  rates, privacy relaxation direction, and lower-bound conclusion. It is
  labeled consistently with the source-alignment metadata as a conditional
  result: the universal polynomial global-stability profile remains the
  stated unresolved hypothesis, and the bundle does not claim to solve the
  unconditional source open problem.
- Roadmap or step coverage: The accepted six-step roadmap is acyclic and all
  six current proof/review pairs are hash-matched and record `ACCEPTED`.
  Step attempts are \(1,1,1,1,2,2\). The repaired `step_005` and refreshed
  `step_006` preserve the accepted sketch interfaces and close the only
  blocker from assembly attempt 4.
- Proof-details audit: The recoding, Bun--Livni--Moran instantiation and
  assumption discharge, five-term sample domination, universal constant
  choice, exact padding and both privacy directions, exact schedule,
  Step-4 asymptotics, repaired Step-5 pointwise ceiling and factorization,
  privacy relaxation, and arbitrary-constant lower-bound contradiction are
  all present with substantive displayed derivations. Step 5 now derives
  \(N_\kappa=\lceil A_\kappa\rceil\) directly from `(PS)` and proves `(PN)`
  using size divergence alone; it does not consume the `(SP)`-scoped Step-4
  conclusions. Step 6 keeps `(AS)` and `(PN)` on those separate legal
  producer paths.
- Adversarial stress test: PASS. The full-cube sequence
  \(X_\kappa=[\kappa]\), \(C_\kappa=\{0,1\}^{X_\kappa}\), which separates
  size divergence from `(SP)`, no longer breaks Step 5 because the repaired
  ceiling proof is pointwise. The audit also covers \(q=1\), \(L=0\),
  \(d_\kappa=0\), \(\ell_\kappa=0\), ignored-record replacement, arbitrary
  finite prefixes, bounded, constant, oscillatory, and unbounded
  \(q_\kappa\), and every fixed noninteger \(\rho>0\). No counterexample,
  scope upgrade, or learner-interface substitution remains unresolved.
- LaTeX export structure/provenance gate: PASS. All nine required bundle
  files and five content inputs are present; the required sections, six
  step-matched appendix subsections, and final main-theorem proof have the
  required shape. Scans found no forbidden public environments, workflow
  provenance, audit scaffolding, placeholders, malformed commands, or
  manual appendix-number dependencies. From an isolated copy,
  `main.tex` compiled successfully with the local Tectonic bundle through
  TeX, BibTeX, all reruns, and PDF generation. The default network-backed
  invocation still panics in the host `system-configuration` runtime before
  reading TeX, but that environment failure is bypassed by the valid cached
  bundle and is not a source defect.
- Main theorem self-containedness: PASS. `latex_template/3_main.tex`
  quantifies the domain sequence before stating
  \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\), and all later occurrences of
  \(X_\kappa\) are bound. It defines the exact learner interface, constants,
  rates, probability modes, privacy modes, fixed-sample and sequence modes,
  comparison direction, and lower-bound conclusion without appendix-local
  or proof-step references. Although detailed, it is a coherent
  reader-facing theorem rather than an admissibility dictionary.
- Assumption provenance gate: PASS. The polynomial global-stability profile
  is the sole novel primitive assumption and is cited by its stable numbered
  identity. Generated learners, padding, asymptotic certificates, ceiling
  control, and privacy comparisons are proved by named public results before
  use; no derived invariant is promoted to an assumption.
- Redundant public prose gate: PASS. No forbidden reviewer, workflow,
  audit, placeholder, or mechanical-translation prose occurs in the public
  TeX.
- Proof-step notation surface gate: PASS. Proof-local constants and aliases
  are classified and remain in the appendix; the theorem exposes only
  setting-level quantities and the necessary constant \(K_a\). No local
  helper dictionary leaks into the theorem interface.
- Theorem readability and notation economy: PASS. The main theorem is a
  direct reader-facing conditional statement and does not expose
  proof-local dictionaries or appendix-only machinery. The preliminaries
  retain only stable setting-derived notation, while proof-local factors and
  witnesses stay with their displayed appendix derivations.
- Explicit-rate contract: PASS. The displayed formulas, constants, fixed
  quantities, probability and horizon modes, every-fixed-\(\rho\)
  quantifier, and privacy-comparison direction are explicit. The appendix
  displays the BLM substitution, all five sample-term dominations, ceiling
  controls, exact privacy logarithm, exponent allocations, product and sum
  absorptions, fixed-\(\rho\) exponential-polynomial bound, source
  allowance, and final comparison; no dependence is silently dropped or
  moved into an undeclared constant.
- Rate Specialization Bridge: Not separately applicable. The public theorem
  states the exact technical rate proved in the appendix rather than a
  simplified proxy, so there is no separate specialization requiring a
  bridge.
- Baseline-reduction check: PASS. Binary recoding and exact padding have
  zero residual. The bounded-\(q_\kappa\) regime retains both
  \(N_\kappa=o(L_\kappa)\) and
  \(\delta_\kappa N_\kappa^\rho\to0\).
- LaTeX appendix full-derivation gate: Exhaustively checked, not sampled.
  All 22 non-atomic source units across `step_001` through `step_006`
  (counts 4, 2, 3, 4, 5, 4), every cited-result mapping and discharge, and
  every target-step assembly appear substantively in the matching appendix
  subsection. Thus all six used steps, not a representative subset, pass
  direct source-to-appendix coverage. The appendix preserves the local
  definitions, equations, inequality chains, substitutions, constants,
  recursion and case reasoning, boundary checks, cited-result mappings,
  assumption discharges, and target-step assembly arguments required by the
  main theorem.
- LaTeX export citation/reference gate: PASS. The bundle has 166 unique
  labels and 198 internal references to 73 distinct targets, with no
  duplicate or unresolved label. Its two citation commands use the sole key
  `bun2021equivalence`, which resolves to the sole bibliography entry. The
  balanced-environment and boundary-aware malformed-command scans are clean,
  and the successful build reports no unresolved references or citations.
- LaTeX export synchronization: `assembly_report.md` is contract-valid with
  `Status = COMPLETE`, `Blockers = None`, and assembly attempt 5. Structural,
  rigor, citation, and adversarial reviews are all contract-valid `PASS`
  artifacts with raw-token `None` routing fields. Their pinned SHA-256
  identities and the current assembly-report and appendix identities match.
  There is no specialist disagreement to resolve. Worker provenance, role
  distinctness, sketch-attempt, assembly-attempt, and idea-slot budget gates
  also pass.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, every aggregate contract gate passes,
the exact conditional goal is proved by the synchronized accepted-step
chain, and the public LaTeX bundle compiles as a complete paper-ready proof.
The repaired Step 5 removes the prior scope defect without changing the
setting, sketch, or theorem claim. Therefore no repair depth applies and the
correct aggregate failure type is `ACCEPTED`.

## Suggested Next Action

None

## Retry Mode

none
