# Proof Review

## Formalized Setting

- Basic setup:
  Let \(\mathcal X\) be an arbitrary, possibly empty or infinite domain and
  let \(\mathcal H\subseteq\{+1,-1\}^{\mathcal X}\). For every probability
  law \(\mathcal D\) on \(\mathcal X\), target \(h\in\mathcal H\), and
  binary predictor \(g:\mathcal X\to\{+1,-1\}\), define
  \[
  \mathcal L_{\mathcal D,h}(g)
  :=\Pr_{x\sim\mathcal D}[g(x)h(x)<0].
  \]
  Define \(\operatorname{dc}(\mathcal H)\) as the least
  \(d\in\mathbb N_0\) for which one deterministic map
  \(\psi:\mathcal X\to\mathbb R^d\) satisfies
  \[
  \forall h\in\mathcal H\ \exists u_h\in\mathbb R^d\ \forall x\in\mathcal X,
  \qquad h(x)\langle u_h,\psi(x)\rangle>0,
  \]
  with value \(+\infty\) if no finite \(d\) works.

  The fixed randomized learner \(A\) has tape law \(R\sim\mu\) on an
  arbitrary, possibly nonatomic space. Once a tape is fixed, its adaptive
  queries, stopping decisions, and binary terminal predictor are
  deterministic. A tolerance-valid policy may choose each reply adaptively,
  but a reply \(a\) to a reached query
  \(q:\mathcal X\times\{+1,-1\}\to[-1,1]\) must satisfy
  \[
  \left|a-\mathbb E_{x\sim\mathcal D}q(x,h(x))\right|\le\tau.
  \]

  Put
  \[
  K:=\lceil1/\tau\rceil,
  \qquad
  G:=\{-1+2j/K:0\le j\le K\},
  \]
  and fix before every instance a nearest-grid map
  \(\rho:[-1,1]\to G\). Its fixed tie rule gives
  \[
  |\rho(v)-v|\le 1/K\le\tau
  \qquad(v\in[-1,1]).
  \]
  The proof-only canonical policy for an instance is
  \[
  \mathcal O^\rho_{\mathcal D,h}(q)
  :=\rho\!\left(\mathbb E_{x\sim\mathcal D}q(x,h(x))\right).
  \]
  It is used only on its actual reached execution.

  The certified protocol supplies an ordered finite catalog
  \[
  \mathcal C_A^\rho=(g_1,\ldots,g_L),
  \qquad
  1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k,
  \]
  fixed before the current distribution, target, policy, or learner tape.
  Define
  \[
  \phi(x):=(g_1(x),\ldots,g_L(x))\in\{+1,-1\}^L,
  \qquad
  \Delta_L:=\left\{w\in[0,1]^L:\sum_{i=1}^Lw_i=1\right\}.
  \]

- Technical assumptions:
  - `assump:sq-parameter-regime`:
    \(m\in\mathbb N_0\), \(\tau>0\),
    \(\varepsilon\in[0,1/4)\), \(B\ge1\), and
    \(k\in\mathbb N\) with \(k\ge1\). The constants \(B,k\) are fixed
    independently of all learner parameters, domains, classes, instances,
    policies, replies, and tapes; \(m\) is a fixed finite upper bound.
  - `assump:universal-adversarial-sq`: for every distribution
    \(\mathcal D\), every \(h\in\mathcal H\), and every adaptive
    tolerance-valid policy \(\mathcal O\), the actual-run loss is measurable
    and
    \[
    \mathbb E_{R\sim\mu}
    \mathcal L_{\mathcal D,h}
    \bigl(A_R^{\mathcal O}(\mathcal D,h)\bigr)
    \le\varepsilon.
    \]
    The only averaging is over the learner tape; the guarantee is pointwise
    in the adversarial policy.
  - `assump:canonical-rounded-output-catalog`: for every
    \(\mathcal D,h,r\), the terminal function on the actual canonical-policy
    execution obeys
    \[
    A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
    \in\mathcal C_A^\rho.
    \]
    This is only a one-policy actual-execution catalog. It imposes no output,
    finiteness, rank, or measurability condition on other valid policies or
    tolerance-invalid synthetic transcripts.

## Formalized Goal

Under exactly the three assumptions above, prove that the deterministic common
feature map \(\phi=\phi_{\mathcal C_A^\rho}\), fixed independently of the
current distribution, target, valid policy, and learner tape, satisfies
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\ge 1-2\varepsilon>\tfrac12>0.
\]
Only \(w_h\) may depend on \(h\). Consequently,
\[
\operatorname{dc}(\mathcal H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]

## Reviewed Roadmap

Accepted sketch attempt 1 has five dependency-ordered steps. `step_001`
proves reached-query validity of the rounded canonical policy and actual
catalog membership. `step_002` uses the measurable finite-valued actual-run
loss to extract a catalog function of risk at most \(\varepsilon\), then
converts risk exactly to correlation at least \(1-2\varepsilon\).
`step_003` applies the every-distribution conclusion to every finitely
supported law on a finite restriction and uses a finite bilinear game to
obtain one simplex weight separating that restriction. `step_004` proves
compactness and closedness in the one fixed simplex and uses the
finite-intersection property to obtain one weight for the whole arbitrary
domain. `step_005` transfers that weight through the exact catalog-coordinate
map and closes the deterministic dimension bound. The accepted graph is the
main chain `step_001 -> step_002 -> step_003 -> step_004 -> step_005`, together
with the direct catalog-coordinate dependency `step_001 -> step_005`.

## Attempted Claim

Under `assump:sq-parameter-regime`,
`assump:universal-adversarial-sq`, and
`assump:canonical-rounded-output-catalog`, the pre-instance ordered catalog
defines one deterministic feature map \(\phi:\mathcal X\to\mathbb R^L\)
such that every \(h\in\mathcal H\) has a simplex weight \(w_h\) with the
pointwise margin
\[
h(x)\langle w_h,\phi(x)\rangle
\ge1-2\varepsilon>\tfrac12>0
\qquad(x\in\mathcal X),
\]
and hence
\[
\operatorname{dc}(\mathcal H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The claim is deterministic, pointwise, fixed-horizon, and conditional on the
catalog certificate, with no hidden constants or omitted dependencies. It
does not derive the catalog from \((m,\tau)\) alone and does not claim the
unconditional \(O(m/\tau^2)\) bound posed by the parent open problem.

## Review Mode

split

## Review Verdict

- Score: 10
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The public theorem proves the authoritative conditional
  goal with the exact three primitive assumptions, common-map quantifiers,
  deterministic pointwise margin, and literal dimension chain. It makes no
  all-policy catalog or unconditional linear-dimension claim.
- Roadmap or step coverage: PASS. The five-step dependency graph is closed and
  acyclic. All five current attempt-1 proof/review pairs are identity-matched,
  accepted, and used in dependency order; no stale or archived proof is used.
- Proof-details audit: PASS. Exhaustive source-to-appendix comparison checked
  all 17 non-atomic local units, in per-step counts \(2+2+5+5+3\), every
  displayed derivation, every cited-result application, all five target-step
  assemblies, and the final theorem assembly. No accepted mathematical
  obligation is summarized away or replaced by an unreviewed lemma.
- Adversarial stress test: PASS. The canonical-policy scope, finite-range
  minimum without measurable selector, finite-game quantifier conversion,
  fixed-simplex globalization, arbitrary-domain closure, strict-sign transfer,
  and all identified boundary cases withstand direct aggregate rechecking.
- LaTeX export structure/provenance gate: PASS. The bundle contains exactly the
  nine required source/support files and the required setup, preliminaries,
  theorem, proof-sketch, five proof-detail subsections, and final theorem
  proof. It contains no generated build artifacts, placeholders, workflow
  prose, audit scaffolding, invalid public environments, or malformed bare
  commands.
- Main theorem self-containedness: PASS. The theorem uses only the three
  numbered assumptions and notation introduced before it; it states the
  catalog, feature map, dependence restrictions, margin, dimension bound,
  deterministic mode, and boundary cases without appendix-local notation.
- Assumption provenance gate: PASS. Canonical-policy validity, catalog
  correlation, finite simultaneous separation, global separation, and exact
  coordinate transfer are derived in the proof. None is imported as an
  unstated assumption or strengthened catalog premise.
- Redundant public prose gate: PASS. Public TeX contains mathematical
  exposition rather than copied workflow metadata, dependency inventories,
  or review narration.
- Proof-step notation surface gate: PASS. Public statements use mathematical
  names and numbered assumptions, lemmas, propositions, and equations; step
  IDs and local-unit IDs do not leak into the paper-facing proof.
- Theorem readability and notation economy: PASS. The reader-facing theorem
  is concise and contains only primitive objects and the exact conclusion;
  finite games, constraint families, and compactness witnesses remain local
  to the appendix derivations.
- Explicit-rate contract: PASS. The proof preserves
  \(\operatorname{dc}(\mathcal H)\le L\le
  B(1+m/\tau^2)^k\) literally, with exposed \(m,\tau,\varepsilon,L,B,k\),
  fixed finite horizon, deterministic probability mode, zero hidden
  constants, and no dropped term, absorption, or probability conversion.
- Rate Specialization Bridge: Not required. The technical and public rates,
  constants, assumptions, and conclusion modes are identical.
- Baseline-reduction check: PASS. The proof covers empty domains and classes,
  \(m=0\), \(\varepsilon=0\), \(L=1\), \(B=1\), \(k=1\), every
  \(\tau>0\), duplicate catalog entries, infinite domains, and arbitrary
  including nonatomic tape laws. It avoids empty-simplex and empty-minimum
  invocations.
- LaTeX appendix full-derivation gate: PASS. The appendix contains substantive
  paper-facing proofs of all 17 accepted local units, all cited-result
  applications, all five accepted target-step assemblies, and the final
  assembly. In particular, Sion's theorem is used only for the minimax order
  equality after its compactness, convexity, continuity, and affinity
  hypotheses are discharged; vertex identities, positivity, and attainment
  are proved separately.
- LaTeX export citation/reference gate: PASS. The bundle has 93 unique labels
  and 187 reference commands addressing 52 existing targets, with no duplicate
  label or missing target. Its two citation commands use the sole key
  `Sion1958`, which has one matching BibTeX entry and a source-faithful theorem
  application.
- LaTeX export synchronization: PASS. The live setting, assembly report,
  appendix, and four specialized reviews retain the controller-bound SHA-256
  identities. An independent cached Tectonic/BibTeX build run from inside
  `latex_template/` completed all reruns, produced an 18-page PDF, and left a
  final log with no TeX or package warning, error, unresolved reference or
  citation, duplicate label, missing character, or overfull/underfull box.
- Specialized-review resolution: PASS. Structural, rigor, citation, and
  adversarial specialist artifacts each report the exact contract tuple
  `PASS / None / None / None`. There is no blocking disagreement and no
  nonblocking concern to carry into the aggregate verdict.
- Worker-provenance gate: PASS. The branch has exactly 22 distinct worker
  handles, including the current aggregate reviewer, and the required
  controller run-scoped handles are present; the recorded branch rows are
  schema-correct.
- Source/progress alignment: PASS. The theorem remains explicitly
  `conditional`. It is a domain-independent polynomial exact-dimension result
  under the one-policy catalog certificate; deriving that certificate from
  \((m,\tau)\) alone and proving the unconditional linear
  \(O(m/\tau^2)\) target remain open.

## Critical Issues

None

## Failure-Type Rationale

No failure type applies. All four specialist reviews and every independent
aggregate gate pass without a blocking or nonblocking concern, and the
assembled proof establishes the authoritative formalized goal. The aligned
final failure type is therefore `ACCEPTED`.

## Suggested Next Action

None

## Retry Mode

none
