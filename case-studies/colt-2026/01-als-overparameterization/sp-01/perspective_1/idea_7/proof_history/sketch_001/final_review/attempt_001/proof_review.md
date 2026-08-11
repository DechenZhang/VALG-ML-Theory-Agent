# Proof Review

## Formalized Setting

The authoritative formalized setting is
perspective_1/idea_7/setting.md (SHA-256
1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a).
The setting fixes \(r\geq 3\), \(n\), \(q_*=1/4096\),
\(a_*=10/9\), \(b_*=19/18\), \(\kappa _0\), a Gaussian smoothing scale
\(\rho\), accuracy \(\epsilon\), and separate confidence levels
\(\delta_{\rm sm},\delta_{\rm init}\).  A deterministic nonzero base triple
\((\bar A,\bar B,\bar C)\) is normalized to
\((\bar U,\bar V,\bar W)\) with weights \(\bar\lambda_j\).  Independent
\(g_j^{(A)},g_j^{(B)},g_j^{(C)}\sim{\cal N}(0,\rho^2I_n/n)\) produce
\[
 T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j
   =\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j .
\]
The source objective is
\(\mathcal L_k(X,Y,Z)=\frac12\|T-\sum_i x_i\otimes y_i\otimes z_i\|_F^2\).

The proposed procedure uses
\(k=U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\), simultaneous
old-state Jacobi proposal updates, burn and certification horizons, the
observable score/graph clustering rule, minimum-displacement representatives,
an equal-norm best-scalar seed, and zero inactive columns.  It freezes that
single seed, forms all three Khatri--Rao designs, evaluates all three
Moore--Penrose landing solves from the same frozen input, commits them
together, and applies one product-preserving rebalance.  It then runs active
cyclic ALS in \(U,V,W\) order, tests the original relative Frobenius residual,
stops at a pre-registered cap, and repeats independent completed runs.

The primitive assumptions are exactly:

1. assump:base-scale: base column norms lie in
   \([\kappa _0^{-1},\kappa _0]\), with the declared polynomial envelope.
2. assump:cumulative-gram: \(\bar q\leq q_*/4\).
3. assump:base-weight-balance:
   \(\max_j\bar\lambda_j/\min_j\bar\lambda_j\leq 1+1/800\).
4. assump:gaussian-smoothing: the \(3r\) perturbations are mutually
   independent with law \({\cal N}(0,\rho^2I_n/n)\).
5. assump:smoothing-margin:
   \(\kappa _0\rho\leq q_*/128\) and
   \(r(\kappa _0\rho+\kappa _0^2\rho^2)
   \sqrt{\log(9r^2/\delta_{\rm sm})/n}\leq q_*/32\).
6. assump:subquadratic-rank: the displayed \(k\) satisfies \(r<k\leq n\).
7. assump:random-initialization: raw proposal and restart triples are
   independent across slots, modes, and complete runs conditional on \(T\).
8. assump:accuracy-confidence: \(0<\epsilon,\delta_{\rm sm},\delta_{\rm init}<1\).

Realized geometry, coverage, trajectory ratios, certificates, clusters,
landing reserves, target-span membership, quotient basin membership, and
contraction are generated conclusions, not primitive assumptions.  The
setting's source-alignment note classifies this branch as conditional:
it is material because it gives the unchanged strictly subquadratic sufficient
rank and arbitrary-accuracy target, while explicitly retaining the source gap
for unrestricted base geometry and unmodified parallel ALS.

## Formalized Goal

In exact-goal mode, the formalized goal is to choose universal
\(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm stop},C_{\rm rep}\) so that,
uniformly over the three stated base assumptions and the remaining primitive
assumptions, one once-drawn smoothing event of probability at least
\(1-\delta_{\rm sm}\) gives the realized norm floor
\((2\kappa _0)^{-1}\), \(q_{\rm real}\leq q_*\), \(\Gamma\leq1.01\), and all
three target Khatri--Rao Gram floors \(1-q_*^2\), with the linear,
quadratic, normalization, row-sum, and finite-union contributions exposed.

Conditional on that fixed instance, every target and proposal slot must have
the observable three-coordinate window with probability
\(\Theta(r^{-5/3}(\log r)^{-3/2})\), giving a universal positive
all-target coverage probability at the stated \(k\).  Covered slots must
obey
\[
 R_{t+1}\leq
 \left({\Gamma R_t+q_{\rm real}\over
 1-\Gamma q_{\rm real}R_t}\right)^2,\qquad
 S_{t+1}\leq
 {(\Gamma R_t+q_{\rm real})
 \{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}
 \over(1-\Gamma q_{\rm real}R_t)^2},
\]
with \(R_0\leq19/20\), \(S_0\leq rR_0\), persistent denominators, finite
certification, and \(\zeta\leq\tau_r\).  The score and graph rule must return
one representative per target without labels.  The selected state and
best-scalar seed must generate
\[
\max_M(\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1})\leq48\omega,\quad
\max_{M,j}\|N_M^0(:,j)\|_2\leq\tau_r,\quad
\|s^0\|_\infty\leq128\omega.
\]

Before any landing solve, all three frozen designs must satisfy the stated
\(\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,\eta_{QJ},\eta_A\) bounds in
both induced orientations, including the direct \(Q-J\) cancellation,
positive inverse floors, and positive output normalizers.  The joint commit
and one rebalance must produce exact target-span entry with
\(d_Q(e^{\rm land},0)\leq4096\omega<\rho_{\rm ALS}/3\), without feeding a
landing output or post-solve comparator into another landing call.

From that generated exact-span state, chronological cyclic quotient refreshes
must equal the literal ALS orbit, remain in the chart, and contract strongly
enough to reach the original relative Frobenius residual
\[
\left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes\widehat z_i
\right\|_F\leq\epsilon\|T\|_F
\]
before the cap.  Every tape terminates at the cap, and independent restarts
give conditional success at least \(1-\delta_{\rm init}\).  The returned rank
is at most \(U(r)\), and total work is polynomial in
\(n,r,k,\kappa _0,\rho^{-1},\log(1/\epsilon),
\log(1/\delta_{\rm init})\), hence polynomial in
\(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init})\) under the declared
envelopes.  The exact orthogonal equal-weight specialization must retain the
exact certified seed, stationary landing and cyclic state, and zero residual
for every positive \(\epsilon\), including the deterministic
\(\rho_{\rm sm}=0\) no-floor limit.

## Reviewed Roadmap

The accepted roadmap is the following dependency-ordered chain:

1. Static Gaussian smoothing and realized geometry.
2. Observable extreme-window probability.
3. Simultaneous all-target coverage.
4. Simultaneous \(R,S\) recurrence, denominator persistence, and certification.
5. Same-state certificate equation and global residual ledger.
6. Observable score, clustering, and product-one gauge.
7. Selected coefficient closure in both row and column orientations.
8. Observable best-scalar balanced seed and quotient entry data.
9. All-three frozen Gram and normalizer reserve bridge.
10. Joint frozen landing, exact-span membership, and one rebalance.
11. Chronological cyclic quotient contraction.
12. Original-residual stopping, finite cap, runtime, and restarts.
13. Exact orthogonal equal-weight baseline.

The accepted sketch (SHA-256 31b7c729...) and accepted global review
(SHA-256 a9391974...) classify all hard obligations as step-local.  All
thirteen current proof/review pairs are hash-matched and accepted; the
assembly is the only failed layer identified below.

## Attempted Claim

The public attempted claim is the theorem titled
“Conditional strictly subquadratic synchronized landing” in
latex_template/3_main.tex.  In exact content, it asserts that universal
constants give the nested \(1-\delta_{\rm sm}\) instance event and conditional
\(1-\delta_{\rm init}\) proposal/restart guarantee described in the
formalized goal, with the explicit \(r^{5/3}(\log r)^{5/2}\) rank, all displayed
window, recurrence, seed, frozen-reserve, \(d_Q\), contraction, stopping, and
runtime bounds, and the exact orthogonal equal-weight zero-residual clause.
The public source's assumption range is intended to read
Assumptions~\ref{assump:gaussian-smoothing}--\ref{assump:accuracy-confidence};
the actual byte sequence at line 10 is recorded as an assembly blocker below.
The attempted claim is conditional, not a claim that the unrestricted source
open problem has been solved.

## Review Mode

split

## Review Verdict

- Score: 5
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The accepted step chain covers the conditional target,
  including nested probability modes, strict subquadratic rank, original
  Frobenius stopping metric, polynomial runtime, and exact baseline.  The
  public bundle does not yet provide a paper-valid theorem because its
  assumption and metric interfaces are malformed.
- Source/progress alignment: The branch remains consistently conditional
  and material.  This review does not imply full source-target closure; the
  remaining unrestricted-base gap is explicitly preserved.
- Specialized reviewer contracts: proof_review_structural.md,
  proof_review_rigor.md, proof_review_citation.md, and
  proof_review_adversarial.md are all present and contract-valid.  Each has
  raw Reviewer Verdict = BLOCKING, numbered issues, raw
  Suggested Repair Depth = assembly, and raw
  Smallest Candidate Repair Target = /proof-assembly.  There is no
  reviewer disagreement to resolve.
- Assembly status and synchronization: assembly_report.md records
  Status = COMPLETE, all nine required bundle files, and hashes matching
  the current setting and all thirteen accepted proof/review pairs.  The
  report's claims that malformed references, workflow prose, and pseudo-TeX
  are absent are contradicted by direct source inspection, so the report
  cannot discharge the aggregate gates.
- Roadmap or step coverage: All thirteen proof/review artifacts are current,
  accepted, and acyclic.  The producer hashes in the report match the files:
  steps 001--013 are all synchronized, including repaired attempts for steps
  005, 007, 010, 011, and 012.  The accepted global diagnostic is
  PARTIAL_BLOCKED only because it defers B1--B4 to local steps; its global
  review is accepted and is diagnostic context, not proof authority.
- Proof-details audit: The accepted Markdown source contains the local
  definitions, equations, inequalities, induction/recurrence arguments,
  cited-result mappings, boundary cases, and target assemblies.  The public
  translation does not preserve all of them: the first unaccounted source
  target assembly is step 001, whose paragraph{Assembly.} is outside a
  proof environment and whose surrounding paragraph is workflow-style
  composition rather than concluding proof text.
- Exhaustive appendix audit: This is not a representative or sampled
  comparison.  Every current step's Local Derivation, every Cited Result
  Applications block, and every Target-Step Assembly block was compared with
  its matching appendix subsection.  All thirteen source target assemblies
  are emitted as out-of-proof paragraph{Assembly.} blocks at lines 413, 929,
  1135, 1616, 2073, 2343, 2613, 2830, 3208, 3484, 3938, 4336, and 4754.
  Their short producer/provenance summaries do not translate the accepted
  target-step arguments into allowed proof text.  In addition, the
  source-to-appendix comparison finds substantive syntax loss in the
  step-002 coupon calculation, step-007 selected coefficient closure,
  step-009 frozen-reserve algebra, step-012 residual/full-Gram bridge, and
  step-013 baseline derivation.  Therefore the full-derivation gate rejects
  acceptance even though the assembly report reports 4,327 source lines and
  4,795 appendix lines.
- Adversarial stress test: The weakest public interfaces are the malformed
  quotient metric, the unnamed generated-event dependencies, and the exact
  baseline specialization.  The accepted source proofs address singular
  tapes, zero residual, rho_sm=0, chronological refresh order, and
  conditional probability; the public bundle cannot expose those protections
  reliably until assembly is repaired.
- LaTeX export structure/provenance gate: Required files and section headings
  exist, and no forbidden claim/hypothesis/invariant environment is needed.
  Nevertheless, the appendix contains 13 out-of-proof assembly paragraphs,
  repeated audit/provenance prose, raw step identifiers, and mechanical
  source fragments, so it is not paper-facing or self-contained.
- Main theorem self-containedness: Fails at the public interface.  Line 10
  of 3_main.tex contains a carriage return followed by ef{...} rather than
  ref{...}, and line 78 of 2_preliminary.tex contains widetilde C_V rather
  than \widetilde C_V.  The theorem therefore does not bind the Gaussian
  assumption range or define the stated four-field quotient metric.
- Assumption provenance gate: The formalized final target is conditional
  where allowed, and the accepted producers derive generated events and
  invariants.  Public appendix propositions instead use raw names such as
  E_sm, E_cert, E_support, and E_cluster, bare assump:* strings, and “the
  preceding result_003 coverage interface” without consistently naming the
  producer theorem.  This hides derived-invariant provenance in public
  theorem statements; the accepted source interfaces already exist, so the
  repair is assembly-level.
- Redundant public prose gate: Fails.  Direct scans find 53 workflow or
  audit hits, including “The local-result applications,” repeated “Auxiliary
  facts” and “Assembly” paragraphs, “preceding result,” “specified
  dependency,” “sketch-row claim,” “global proof diagnostic,” and mechanical
  repetitions such as “the preceding result the preceding result.”  These
  must be integrated into mathematical statements/proofs or removed.
- Proof-step notation surface gate: Fails in the public translation, not in
  the accepted step interfaces.  The appendix exports raw local aliases,
  escaped source notation, (A1)/(A2) and E_* interfaces, and raw assump:*
  identifiers where typed public results are required.  The accepted step
  reviews classify the underlying helper objects correctly; assembly must
  keep proof-local dictionaries out of theorem-facing prose.
- Theorem readability and notation economy: The intended main theorem is
  reader-facing, but the malformed d_Q definition and unbounded technical
  baseline dictionary B make the public interface incomplete.  The theorem's
  explicit rate is readable in scope but its simplified polynomial sentence
  lacks the required bridge.
- Explicit-rate contract: The detailed public work bound exposes
  \(n,r,k,\kappa _0,\rho^{-1},\log(1/\epsilon)\), and
  \(\log(1/\delta_{\rm init})\), and states probability, horizon, norm, and
  hidden-constant modes.  The subsequent simplification to polynomial
  dependence drops the technical choices without a public Rate
  Specialization Bridge proposition or bridge proof.  The local step-012
  cost expansion is not a named bridge and is partly pseudo-TeX, so it cannot
  discharge auxiliary choices, term absorption, and final dependence.
- Rate Specialization Bridge: Fails for the same assembly reason.  No named
  appendix bridge proves the auxiliary parameter choices, technical
  condition verification, absorption inequalities, probability conversion,
  and final hidden-constant dependence for the simplified runtime sentence.
- Baseline-reduction check: The accepted step-013 source proves the exact
  orthogonal equal-weight, exact-certified-seed, deterministic rho_sm=0
  trace.  The public theorem only names an exact orthogonal equal-weight
  specialization, while the appendix introduces an undefined B/B1
  dictionary without exposing the exact-certified-seed and deterministic
  scope in the theorem-facing clause.  This is a target-preserving assembly
  repair, not an idea or sketch defect.
- LaTeX appendix full-derivation gate: Reject.  The exhaustive comparison
  above finds omitted or un-auditable definitions, displayed equations,
  inequality chains, cited-result mappings, and target assemblies replaced
  by texttt source fragments, empty inline-math fragments, or short workflow
  summaries.  There are 68 literal texttt occurrences and 32 empty inline
  math fragments in 5_appendix.tex.
- LaTeX export citation/reference gate: Fails despite the presence of the
  Uschmajew2012 BibTeX key.  Several internal authorities are bare
  assump:* strings, raw lem:/prop: strings, Lemma [label], (A1)/(A2), or
  prose such as “the preceding result”; these are not typed resolvable
  theorem dependencies.  The external ALS citation at lines 3526--3536
  lacks the stable result locator and current-notation hypothesis/conclusion
  mapping supplied by accepted step 011.  Static label counts therefore do
  not establish citation closure.
- LaTeX export synchronization: Hash synchronization is good at the
  producer level, but public TeX is not synchronized with those accepted
  interfaces.  The assembly report claims no malformed controls or
  scaffolding while the source contains both.  Tectonic terminated in the
  installed macOS networking/configuration thread before TeX processing, so
  no PDF/log result can override the static blockers.

## Critical Issues

1. Structural and rigor reviews, 3_main.tex:10 and 2_preliminary.tex:78:
   malformed public interfaces.  A carriage return followed by
   ef{assump:gaussian-smoothing} is not a theorem assumption reference, and
   widetilde C_V is not the second quotient coefficient.  The main theorem's
   quantifier and d_Q definition are therefore not self-contained.  The
   accepted setting and step artifacts contain the intended objects.
   Repair depth: assembly.  Target: /proof-assembly.
2. Structural, rigor, citation, and adversarial reviews throughout
   5_appendix.tex: forbidden workflow and audit scaffolding.  The 13
   assembly paragraphs and 53 detected workflow phrases expose producer
   lineage, raw event names, preceding-step narration, and mechanical
   repetitions rather than paper-facing proof.  This prevents public
   provenance and theorem-reference gates.  Repair depth: assembly.
   Target: /proof-assembly.
3. Structural and rigor reviews, all 13 appendix subsections: each source
   Target-Step Assembly is outside an allowed proof environment (lines 413,
   929, 1135, 1616, 2073, 2343, 2613, 2830, 3208, 3484, 3938, 4336, 4754).
   The final Proof of the Main Theorem section likewise has no concluding
   proof environment containing the composition argument.  The accepted
   local derivations remain available for translation, so this is an
   assembly repair.  Repair depth: assembly.  Target: /proof-assembly.
4. Rigor and citation reviews, 5_appendix.tex step-002, step-007, step-009,
   step-012, and step-013 regions: 68 escaped texttt source fragments and
   32 empty math fragments replace coupon identities, selected-coefficient
   inequalities, frozen-Gram/residual bridges, and baseline equations.
   Required definitions and inequality chains are not auditable in paper
   notation.  Repair depth: assembly.  Target: /proof-assembly.
5. Structural, rigor, and citation reviews, appendix theorem statements:
   raw E_*/assump:* names, Lemma~lem:..., Lemma [lem:...], backtick event
   assumptions, and unlabelled (A1)/(A2) aliases hide generated-invariant
   producers and cross-step authorities.  Replace them with named
   theorem-style statements and numbered assumption references already
   supplied by the accepted steps.  Repair depth: assembly.  Target:
   /proof-assembly.
6. Rigor review and aggregate rate gate, 3_main.tex:113-121 and step-012
   cost region: the detailed runtime is followed by a simplified
   polynomial sentence without a named Rate Specialization Bridge proving
   auxiliary choices, technical conditions, term absorption, probability
   conversion, and final hidden-constant dependence.  Repair depth:
   assembly.  Target: /proof-assembly.
7. Rigor review, 3_main.tex:123-127 and appendix step-013: the exact
   baseline clause omits the exact-certified-seed and deterministic rho_sm=0
   scope, while the appendix uses an undefined B/B1 dictionary.  This can
   be repaired by synchronizing the public baseline statement with the
   accepted step-013 derivation.  Repair depth: assembly.  Target:
   /proof-assembly.
8. Citation review, appendix step-011 lines 3526--3536: the sole external
   Uschmajew2012 use is broad and lacks the accepted source locator,
   hypothesis discharge, object mapping, and explicit non-output boundary.
   The BibTeX key exists and the accepted local proof is sufficient; the
   public citation application needs faithful assembly.  Repair depth:
   assembly.  Target: /proof-assembly.

## Failure-Type Rationale

PROOF_ASSEMBLY_FLAW is the deepest required repair.  All four specialized
reviews independently identify assembly-only defects, all thirteen accepted
step proofs and reviews are current and hash-matched, and the accepted sketch
and global review classify B1--B4 as step-local under the unchanged theorem
contract.  The missing syntax, typed theorem references, baseline scope,
runtime bridge, citation mapping, and full target-assembly translations can
be supplied from the already accepted setting and step artifacts without
changing primitive assumptions, the algorithm, theorem scope or mode, the
exposed dependence, the success criterion, or the conditional progress type.
Thus a step, sketch, or idea retry would discard valid work and is not
supported by the evidence.  Acceptance is forbidden until the public bundle
passes the exhaustive source-to-appendix and paper-readiness gates.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
