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
thirteen current proof/review pairs are hash-matched and accepted. Assembly
attempt 5 is complete, current, and bound to those accepted producers.

## Attempted Claim

The assembled theorem is the exact conditional target: one once-drawn event
at probability `1-delta_sm`, conditional proposal/restart confidence
`1-delta_init`, rank `U(r)=Theta(r^(5/3)(log r)^(5/2))`, the explicit
event `E_win,ij = W_ij intersection C_ij` in which every target raw coordinate
has absolute value in
`[sqrt(a_* log r), sqrt(a_* log r) + 1/sqrt(a_* log r)]` and every competing
pair product is at most `b_* log r`, frozen synchronized landing, exact
target-span entry, cyclic contraction, the original Frobenius stopping
criterion, polynomial runtime, and the exact orthogonal equal-weight
zero-residual baseline. No generated event, basin, reserve, comparator, or
condition number is promoted to a primitive assumption. Public rates state
their exposed variables, probability mode, horizon, norm, and hidden-constant
dependence. The attempted contribution remains conditional and does not claim
the unrestricted source target.

## Review Mode

split

## Review Verdict

- Score: 8
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: Passes. The theorem and accepted producer chain prove the
  exact conditional target, including the explicit window event, strictly
  subquadratic rank, nested probability modes, synchronized landing, original
  Frobenius stopping metric, polynomial runtime, arbitrary accuracy, and the
  separately scoped exact baseline.
- Source/progress alignment: The theorem remains explicitly conditional on
  the base-scale, cumulative-Gram, near-balance, and smoothing-margin regime
  and disclaims unrestricted-base or unmodified-parallel-ALS recovery. Its
  `conditional`, material progress classification remains faithful.
- Specialized reviewer contracts: All four artifacts are present,
  contract-valid, and bound to attempt-5 `assembly_report.md` SHA-256
  `6df30193da02586c00006fa93f24a0900e89d1642421f70c6d060327821070b1`.
  Structural, rigor, citation, and adversarial all record `PASS`, with
  `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest
  Candidate Repair Target = None`. There is no reviewer disagreement.
- Assembly status and synchronization: The report records `COMPLETE`, the
  exact attempted claim, `Blockers = None`, all required files, and current
  binding/output hashes. The report, four specialized reviews, accepted
  setting/sketch/global artifacts, thirteen step proof/review pairs, and nine
  bundle files are mutually hash-consistent.
- Roadmap or step coverage: All thirteen accepted proof/review pairs are
  current and acyclic. Every one of 54 accepted local units appears in order,
  mapped to 57 public theorem-style blocks, with all thirteen target-step
  compositions inside proof environments. No step, local unit, or substantive
  derivation is missing.
- Proof-details audit: Passes exhaustively, not by sampling. Every used
  accepted proof's local derivation, cited-result application, and target-step
  assembly was compared against all thirteen appendix subsections. Definitions,
  displayed equations, inequality chains, recurrences, boundary branches,
  cited-tool discharges, and final compositions are preserved. Step 002 now
  restores tags `(21)` and `(22)` before every consumer while retaining `(32)`
  and the full five-row finite-range certificate.
- Adversarial stress test: Passes. Boundary ranks, the finite-certificate to
  analytic transition, arbitrary within-slot target dependence, singular or
  zero off-event tapes, zero normalizers, confidence endpoints, the synchronized
  landing chain, and the exact baseline expose no counterexample or hidden
  mode upgrade.
- Public-TeX compile/support gate: All nine required bundle and support files
  are present and wired through `main.tex`, `reference.bib`, and `ims.bst`.
  The only available compiler, Tectonic, panics in the local macOS
  system-configuration layer before reading TeX and produces no PDF or log.
  This is an environmental limitation rather than proof evidence; independent
  static source checks and all four specialized audits pass.
- LaTeX export structure/provenance gate: Required files, headings, appendix
  subsections, proof environments, braces, and theorem-style structure are
  present. Prior workflow inventory, branch-local authorities, pseudo-TeX,
  placeholders, and prohibited claim/hypothesis/invariant environments are
  absent. There are fourteen appendix subsections, including all thirteen
  proof steps and the final main-theorem proof.
- Main theorem self-containedness: Passes. The setup defines
  \(Z_{ij}^{(M)},W_{ij},C_{ij},E_{{\rm win},ij}\) before the theorem; the
  theorem states the exact target interval and competitor condition; the
  observable graph rule, concise landing/contraction interface, probability
  nesting, and baseline scope are public and reader-facing.
- Assumption provenance gate: Passes. Primitive assumptions remain numbered;
  generated geometry, coverage, seed, landing, basin, stopping, restart, and
  baseline objects are supplied by named public results before final use.
- Redundant public prose gate: Passes. The Step 001 workflow/proof-ingredient
  inventory, dependency narration, audit scaffolding, and placeholder prose
  are absent.
- Proof-step notation surface gate: Passes. Bare `qquad`, raw
  `a0 < 1.001`, raw `42 omega`, proof-local dictionaries, malformed commands,
  and unresolved manual equation interfaces are absent; public notation
  matches the accepted source interfaces.
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
- LaTeX appendix full-derivation gate: Passes for all used steps, not a
  representative sample. All substantive definitions, tables, inequalities,
  boundary branches, cited-tool discharges, local units, and target-step
  assemblies are present with no unaccounted proof obligation.
- LaTeX export citation/reference gate: Passes. Citation review verifies the
  Uschmajew locator/scope/object map, complete BibTeX entry, 87 unique labels,
  no unresolved recognized references, noncircular landing chain, public
  algorithm/event definitions, correct final theorem producers, one matched
  external citation key, and no duplicate labels or malformed reference
  commands.
- LaTeX export synchronization: Passes. All current hashes match and every
  prior assembly blocker is repaired, including the target-window export,
  finite certificate, malformed math, workflow inventory, citation chain,
  explicit rates, baseline scope, and Step 002 equation interfaces. Static
  checks find balanced braces and environments, eight stable assumption
  labels, 87 unique labels, and 68 distinct resolved reference targets.

## Critical Issues

None

## Failure-Type Rationale

`ACCEPTED` applies because all four specialized reviews pass, the independent
aggregate checks find no blocker, the complete assembly is synchronized with
all accepted producers, and the exact formalized conditional goal is proved.
The unavailable compiler result is caused before TeX processing by the local
Tectonic runtime and is retained as a nonblocking environmental concern.
Score 8 reflects that limitation and the minor presentation concerns about
nonmonotone local equation numbering and proof-coordinate observability
terminology; neither affects mathematical closure or the acceptance route.

## Suggested Next Action

None

## Retry Mode

none
