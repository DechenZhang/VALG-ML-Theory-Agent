# Proof Review

## Formalized Setting

The authoritative formalized setting is
perspective_1/idea_7/setting.md (SHA-256
1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a).
The setting fixes \(r\geq 3\), \(n\), \(q_*=1/4096\),
\(a_*=10/9\), \(b_*=19/18\), \(\kappa _0\), a Gaussian smoothing scale
\(\rho\), accuracy \(\epsilon\), and separate confidence levels
\(\delta_{\rm sm},\delta_{\rm init}\). A deterministic nonzero base triple
\((\bar A,\bar B,\bar C)\) is normalized to
\((\bar U,\bar V,\bar W)\) with weights \(\bar\lambda_j\). Independent
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
an equal-norm best-scalar seed, and zero inactive columns. It freezes that
single seed, forms all three Khatri--Rao designs, evaluates all three
Moore--Penrose landing solves from the same frozen input, commits them
together, and applies one product-preserving rebalance. It then runs active
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
contraction are generated conclusions, not primitive assumptions. The
setting's source-alignment note classifies this branch as conditional: it is
material because it gives the unchanged strictly subquadratic sufficient rank
and arbitrary-accuracy target, while explicitly retaining the source gap for
unrestricted base geometry and unmodified parallel ALS.

## Formalized Goal

In exact-goal mode, the formalized goal is to choose universal
\(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm stop},C_{\rm rep}\) so that,
uniformly over the primitive assumptions, one once-drawn smoothing event of
probability at least \(1-\delta_{\rm sm}\) gives the realized norm floor
\((2\kappa _0)^{-1}\), \(q_{\rm real}\leq q_*\), \(\Gamma\leq1.01\), and all
three target Khatri--Rao Gram floors \(1-q_*^2\), with the linear,
quadratic, normalization, row-sum, and finite-union contributions exposed.

Conditional on that fixed instance, every target and proposal slot must have
the observable three-coordinate window with probability
\(\Theta(r^{-5/3}(\log r)^{-3/2})\), giving a universal positive all-target
coverage probability at the stated \(k\). Covered slots must obey
\[
 R_{t+1}\leq
 \left({\Gamma R_t+q_{\rm real}\over
 1-\Gamma q_{\rm real}R_t}\right)^2,\qquad
 S_{t+1}\leq
 { (\Gamma R_t+q_{\rm real})
 \{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}
 \over(1-\Gamma q_{\rm real}R_t)^2},
\]
with \(R_0\leq19/20\), \(S_0\leq rR_0\), persistent denominators, finite
certification, and \(\zeta\leq\tau_r\). The score and graph rule must return
one representative per target without labels. The selected state and
best-scalar seed must generate
\[
\max_M(\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1})\leq48\omega,\quad
\max_{M,j}\|N_M^0(:,j)\|_2\leq\tau_r,\quad
\|s^0\|_\infty\leq128\omega.
\]

Before any landing solve, all three frozen designs must satisfy the stated
\(\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,\eta_{QJ},\eta_A\) bounds in
both induced orientations, including the direct \(Q-J\) cancellation,
positive inverse floors, and positive output normalizers. The joint commit
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
before the cap. Every tape terminates at the cap, and independent restarts
give conditional success at least \(1-\delta_{\rm init}\). The returned rank
is at most \(U(r)\), and total work is polynomial in
\(n,r,k,\kappa _0,\rho^{-1},\log(1/\epsilon),
\log(1/\delta_{\rm init})\), hence polynomial in
\(n,r,\log(1/\epsilon),\log(1/\delta_{\rm init})\) under the declared
envelopes. The exact orthogonal equal-weight specialization must retain the
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
(SHA-256 a9391974...) classify all hard obligations as step-local. All
thirteen current proof/review pairs are hash-matched and accepted; the
assembly is the only failed layer identified below.

## Attempted Claim

Assembly attempt 4 states the public theorem titled
"Conditional strictly subquadratic recovery." Under all eight numbered
primitive assumptions it asserts a once-drawn event of probability at least
\(1-\delta_{\rm sm}\); the explicit target/slot event
\(E_{{\rm win},ij}=W_{ij}\cap C_{ij}\), where every target raw coordinate lies
in the required interval and every competing pair product is at most
\(b_*\log r\), with probability
\(\Theta(r^{-5/3}(\log r)^{-3/2})\); rank
\(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil=o(r^2)\); the accepted
ratio recurrence and label-free selection; synchronized frozen landing and
exact target-span entry; cyclic contraction factor \(17/512<1/16\); original
relative Frobenius stopping; capped total work; and conditional restart
success at least \(1-\delta_{\rm init}\). A separate explicit dense-runtime
corollary gives the cost and joint probability conversion, and a separately
scoped deterministic exact-certified-seed corollary gives the orthogonal
equal-weight \(\rho_{\rm sm}=0\) fixed point and zero residual. The attempted
contribution remains `conditional` and does not claim the unrestricted source
target. Its only reviewed blocker is the dangling Step 002 equation-number
interface described below.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The theorem and accepted producer chain cover the exact
  conditional target, including the explicit window event, strict
  subquadratic rank, nested probability modes, synchronized landing, original
  Frobenius stopping metric, polynomial runtime, arbitrary accuracy, and the
  separately scoped exact baseline. Acceptance is blocked only because the
  Step 002 appendix derivation invokes two nonexistent numbered interfaces.
- Source/progress alignment: The theorem remains explicitly conditional on
  the base-scale, cumulative-Gram, near-balance, and smoothing-margin regime
  and disclaims unrestricted-base or unmodified-parallel-ALS recovery. Its
  `conditional`, material progress classification remains faithful.
- Specialized reviewer contracts: All four artifacts are present,
  contract-valid, and bound to `assembly_report.md` SHA-256
  `830b60a77db4190f6da679f8198b47e142865aa1c0a1d196910bb30d0bede7f3`.
  Citation records `PASS`/`None`/`None`; structural, rigor, and adversarial
  each record one identical `BLOCKING` issue at `assembly` depth with target
  `/proof-assembly`. The acceptance gate resolves this verdict disagreement
  in favor of the shared blocking issue.
- Assembly status and synchronization: The report records `COMPLETE`, the
  exact attempted claim, `Blockers = None`, all required files, and current
  binding/output hashes. Its directed and static checks missed manual prose
  equation citations: local Step 002 numbering jumps from `(20)` to `(23)`
  while later proof text still invokes `(21)` and `(22)`.
- Roadmap or step coverage: All thirteen accepted proof/review pairs are
  current and acyclic. Every one of 54 accepted local units appears in order,
  mapped to 57 public theorem-style blocks, with all thirteen target-step
  compositions inside proof environments. No step, local unit, or substantive
  derivation is missing.
- Proof-details audit: The audit was exhaustive, not sampled. The restored
  Step 002 definitions of \(W_{ij}\) and \(C_{ij}\) are present at appendix
  lines 695--701, and the full five-row finite-range certificate is present.
  The sole failure is interface preservation: the definitions lost accepted
  tags `(21)` and `(22)`, yet the joint-window proof at lines 884--885 and the
  concluding composition at lines 894--895 still cite them.
- Adversarial stress test: Removing access to internal Step 002 artifacts
  makes the two manual references impossible to resolve; a local number scan
  confirms the jump `(20)` to `(23)`. Boundary ranks, the finite certificate,
  the analytic regime, singular tapes, zero normalizers, graph thresholds,
  confidence endpoints, and the exact baseline expose no additional
  mathematical counterexample.
- LaTeX export structure/provenance gate: Required files, headings, appendix
  subsections, proof environments, braces, and theorem-style structure are
  present. Prior workflow inventory, branch-local authorities, pseudo-TeX,
  placeholders, and prohibited claim/hypothesis/invariant environments are
  removed. The gate fails only at the dangling manual equation authorities.
- Main theorem self-containedness: Passes. The setup defines
  \(Z_{ij}^{(M)},W_{ij},C_{ij},E_{{\rm win},ij}\) before the theorem; the
  theorem states the exact target interval and competitor condition; the
  observable graph rule, concise landing/contraction interface, probability
  nesting, and baseline scope are public and reader-facing.
- Assumption provenance gate: Passes. Primitive assumptions remain numbered;
  generated geometry, coverage, seed, landing, basin, stopping, restart, and
  baseline objects are supplied by named public results before final use.
- Redundant public prose gate: Passes. The Step 001 workflow/proof-ingredient
  inventory and prior provenance narration are removed.
- Proof-step notation surface gate: Passes apart from the same stale equation
  numbers. Bare `qquad`, raw `a0 < 1.001`, raw `42 omega`, and proof-local
  dictionary leakage are repaired; public notation otherwise matches accepted
  source interfaces.
- Theorem readability and notation economy: Passes. The main theorem has a
  concise recovery interface, detailed reserves stay behind named appendix
  results, and runtime and deterministic baseline claims use separate
  reader-facing corollaries.
- Explicit-rate contract: Passes. The exact window event is theorem-facing,
  the finite and analytic window bounds are present, and the runtime bridge
  states exposed variables, assumptions, auxiliary choices, term absorption,
  probability conversion, norm, horizon, and hidden-constant dependence.
- Rate Specialization Bridge: Passes. It states the full primitive basis and
  generated smoothing event, displays the dense-cost domination, applies
  restart independence and the tower conversion, and gives the final joint
  probability and work dependence.
- Baseline-reduction check: Passes. The deterministic
  `ExactCertifiedSeed` corollary is separately scoped at \(\rho_{\rm sm}=0\)
  and gives exact landing, stationary cyclic factors, and zero residual.
- LaTeX appendix full-derivation gate: Rejects only at the Step 002 interface
  references. All substantive definitions, tables, inequalities, boundary
  branches, cited-tool discharges, and target-step assemblies are present,
  but accepted definitions `(21)` and `(22)` are cited after their tags were
  removed. Exact source-to-appendix preservation therefore remains incomplete.
- LaTeX export citation/reference gate: Passes. Citation review verifies the
  Uschmajew locator/scope/object map, complete BibTeX entry, 87 unique labels,
  no unresolved recognized references, noncircular landing chain, public
  algorithm/event definitions, and correct final theorem producers. The
  dangling parenthesized numbers are manual prose references outside the
  label parser, not an external-citation defect.
- LaTeX export synchronization: All report hashes match and every attempt-3
  blocker is repaired: window export, finite certificate, malformed math,
  workflow inventory, citation chain, rates, and baseline scope. Semantic
  synchronization fails only because the two Step 002 manual references do
  not resolve. Tectonic again failed before TeX processing due to the macOS
  system-configuration panic, so no PDF/log result is available.

## Critical Issues

1. Structural, rigor, and adversarial reviews, `5_appendix.tex:695-701,
   884-895`: the public definitions of \(W_{ij}\) and \(C_{ij}\) are present
   but lack their accepted equation tags `(21)` and `(22)`, while the
   joint-window proof and concluding Step 002 composition cite those numbers.
   The local sequence instead jumps from `(20)` to `(23)`, leaving two
   theorem-critical mathematical authorities undefined in the standalone
   appendix. Restore `\tag{21}` and `\tag{22}` on the exact definitions, or
   replace every stale number with an unambiguous displayed definition or
   named public result. Repair depth: assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair. Three contract-valid
specialized reviews identify the same local assembly defect and the citation
review passes. The accepted Step 002 definitions and all underlying
probability mathematics are already present; only their public equation
interfaces must be restored or the stale references rewritten. No proof step,
sketch dependency, primitive assumption, algorithm, theorem mode, exposed
dependence, success criterion, or conditional contribution changes. Score 6
reflects a paper-ready proof chain with one localized but still
acceptance-blocking synchronization error.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
