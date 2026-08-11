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
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) with
\(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) nonempty and finite, such that
\(|C_\kappa|\to\infty\) and
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
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: PASS for the repaired public goal and main theorem, but
  FORMALLY BLOCKING at one appendix interface. The assembled claim retains
  the authoritative conditional goal's exact domain-and-class sequence
  premise, learner scope, sample arity, PAC and privacy modes, rate,
  privacy relaxation, and lower-bound conclusion. The appendix's
  sequence-learner proposition is not a closed standalone statement
  because its domain sequence is unbound.
- Roadmap or step coverage: PASS. The accepted six-step roadmap is acyclic;
  all six current proof/review pairs are `ACCEPTED` and hash-matched. No
  specialized reviewer or aggregate check found a step-, sketch-, or
  idea-level defect.
- Proof-details audit: SUBSTANTIVE PASS, FORMALLY BLOCKING at the appendix
  theorem interface. The recoding, BLM instantiation and assumption
  discharge, five-term sample domination, universal constant choice,
  padding and both privacy directions, exact schedule, sequence
  asymptotics, privacy factorization, privacy relaxation, and arbitrary-
  constant lower-bound contradiction are all preserved. The standalone
  statement of `prop:step-006-sequence-learners` leaves \(X_\kappa\) free.
- Adversarial stress test: BLOCKING only at assembly depth. The proof
  survives \(q=1\), \(d=0\), \(L=0\), bounded, oscillatory, and unbounded
  \(q_\kappa\), every fixed real \(\rho>0\), exact ceilings, padding, and
  exact or eventually larger privacy schedules. The repaired main theorem
  binds \(\{X_\kappa\}\); standalone reading of the appendix sequence-
  learner proposition exposes the remaining free \(X_\kappa\) symbols.
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
- Theorem-style statement shape gate: BLOCKING. Appendix Proposition
  `prop:step-006-sequence-learners` uses \(X_\kappa\) in the class and
  learner signatures without first quantifying the domain sequence, so
  the proposition is not a closed standalone public statement.
- Assumption provenance gate: PASS. The numbered polynomial global-
  stability profile is the sole novel primitive assumption and remains
  explicitly conditional. Every learner, schedule, rate, and privacy
  certificate has an accepted producer; no derived invariant is promoted
  to an assumption.
- Redundant public prose gate: PASS. No forbidden reviewer, workflow,
  audit, placeholder, or mechanical-translation prose occurs in the public
  TeX.
- Proof-step notation surface gate: PASS. Proof-local constants and aliases
  remain in the appendix; the theorem exposes only setting-level quantities
  and the necessary constant \(K_a\).
- Theorem readability and notation economy: PASS. The main theorem is a
  direct reader-facing conditional statement and does not expose
  proof-local dictionaries or appendix-only machinery.
- Explicit-rate contract: PASS. The theorem states the exact sample and
  privacy formulas, ceiling, hidden dependence, fixed quantities,
  probability and horizon modes, every-fixed-\(\rho\) quantifier, and
  allowed-schedule comparison proved in the appendix.
- Rate Specialization Bridge: Not separately applicable. The public theorem
  states the exact technical rate proved by the accepted steps; it does not
  drop terms or substitute a simplified rate.
- Baseline-reduction check: PASS. Binary recoding and exact padding have
  zero residual. The bounded-\(q_\kappa\) regime retains both
  \(N_\kappa=o(L_\kappa)\) and
  \(\delta_\kappa N_\kappa^\rho\to0\).
- LaTeX appendix full-derivation gate: PASS by exhaustive comparison, not
  sampling. All 22 non-atomic source units across `step_001` through
  `step_006` (counts 4, 2, 3, 4, 5, 4), every cited-result mapping and
  discharge, and every target-step assembly appear substantively in the
  matching appendix subsection; the final theorem proof closes the same
  dependency chain. The separate statement-shape blocker is not an omitted
  derivation.
- LaTeX export citation/reference gate: PASS. The bundle has 166 unique
  labels and 73 distinct referenced targets, with no duplicate or
  unresolved label. Its sole external citation key, `bun2021equivalence`,
  resolves in `reference.bib`; all mathematical dependencies use stable
  theorem or equation references.
- LaTeX export synchronization: BLOCKING only for the appendix theorem-
  interface omission. `assembly_report.md` is contract-valid with
  `Status = COMPLETE`, `Blockers = None`, and assembly attempt 3. The
  structural, rigor, and citation reviews are contract-valid `PASS` reviews;
  the adversarial review is a contract-valid `BLOCKING` review at depth
  `assembly` with target `/proof-assembly`. Their pinned SHA-256 hashes,
  the assembly-report hash, and the appendix hash were verified against the
  current artifacts. The three `PASS` diagnostics cannot override the
  verified adversarial defect; the deepest-issue rule therefore selects its
  assembly repair without changing any accepted step. The attempt-2
  appendix and support files are byte-
  identical to the current bundle, and attempt 3 changes only the repaired
  domain bindings in the intro and main theorem. An isolated current-bundle
  Tectonic invocation panicked before TeX processing in the local
  `reqwest/system-configuration` runtime; the prior cached build therefore
  remains the available compile evidence and yielded no contrary TeX
  diagnostic.

## Critical Issues

1. Adversarial review, confirmed by the aggregate theorem-style
   self-containedness check; `latex_template/5_appendix.tex:1497-1504`:
   Proposition `prop:step-006-sequence-learners` introduces a sequence
   `\{C_\kappa\}` and immediately uses
   `C_\kappa\subseteq\{0,1\}^{X_\kappa}`, then defines
   `M_\kappa:Z_{X_\kappa}^{N_\kappa}\rightsquigarrow\mathcal H_{X_\kappa}`,
   without quantifying or otherwise introducing the domain sequence
   `\{X_\kappa\}_{\kappa\in\mathbb N}`. Deleting surrounding prose leaves
   free symbols in the proposition statement and proof, so it is not a
   standalone public theorem-style result. The repaired `1_intro.tex` and
   `3_main.tex`, and the authoritative setting, already bind exactly this
   domain sequence; the smallest repair is to import that ambient/domain
   quantifier into this appendix proposition. Repair depth: assembly.
   Target: `/proof-assembly`.

## Failure-Type Rationale

The accepted setting, sketch, global proof, six step proofs, and repaired
public main theorem already contain the missing domain binding. The
exhaustive source-to-appendix comparison found no omitted derivation or
unsupported implication, and the specialized reviews expose no step-,
sketch-, or idea-level defect. The failure is confined to the
paper-facing appendix proposition, so `PROOF_ASSEMBLY_FLAW` is the
smallest accurate classification. No `/proof-step`, `/proof-sketch`, or
idea revision is warranted.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
