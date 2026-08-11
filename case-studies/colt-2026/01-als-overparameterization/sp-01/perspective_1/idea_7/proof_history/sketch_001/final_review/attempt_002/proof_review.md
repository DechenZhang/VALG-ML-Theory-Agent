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

Assembly attempt 2 states the public theorem titled
"Conditional strictly subquadratic synchronized landing." It asserts the
nested \(1-\delta_{\rm sm}\) instance event and conditional
\(1-\delta_{\rm init}\) proposal/restart guarantee in the formalized goal,
with rank \(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil\), the
window and ratio recurrences, label-free representative selection, frozen
synchronized landing, exact target-span entry, quotient contraction, original
Frobenius stopping criterion, capped total runtime, and the exact orthogonal
equal-weight zero-residual statement. It also exposes the complete frozen-Gram
reserve dictionary in the main theorem and adds a public runtime-rate
corollary citing an appendix specialization proposition. The attempted claim
is conditional and does not claim resolution of the unrestricted source open
problem. Attempt 2 repairs the previous malformed assumption reference and
quotient metric, but the public theorem, corollary, and appendix composition
still have the assembly defects below.

## Review Mode

split

## Review Verdict

- Score: 5
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: All thirteen accepted producer steps remain aligned with the
  conditional exact goal, including the strict subquadratic rank, nested
  probability modes, original Frobenius stopping metric, capped runtime, and
  exact baseline. The attempt-2 public bundle still fails to establish those
  outputs through a noncircular, self-contained paper-facing composition.
- Source/progress alignment: The branch remains consistently classified as
  `conditional` and material. Nothing in this review upgrades it to a full
  solution of the unrestricted-base, unmodified-parallel-ALS source target.
- Specialized reviewer contracts: The structural, rigor, citation, and
  adversarial reviews are all present and contract-valid. Each records raw
  `Reviewer Verdict = BLOCKING`, numbered issues, raw
  `Suggested Repair Depth = assembly`, and raw
  `Smallest Candidate Repair Target = /proof-assembly`. There is no depth or
  route disagreement.
- Assembly status and synchronization: `assembly_report.md` records attempt 2
  as `COMPLETE`, binds the unchanged setting, sketch, global review, and all
  thirteen accepted step pairs, and records the current public bundle hashes.
  Its claims of complete dependency translation and public-TeX hygiene are
  contradicted by all four direct specialized reviews, so the report does not
  discharge the aggregate acceptance gates.
- Roadmap or step coverage: All 54 accepted local units occur in the appendix
  in dependency order, and all thirteen target-step compositions plus the
  final theorem composition now occur inside proof environments. The remaining
  failures are not missing producer steps: they are omitted accepted interface
  displays, wrong producer substitutions, and public composition errors.
- Proof-details audit: The attempt-2 comparison was exhaustive rather than
  sampled. The first unaccounted theorem-critical source interface is the
  realized-Gram display used by Step 002: the appendix invokes equation `(1)`
  but starts its local numbering at `(2)`. Analogous missing interfaces occur
  in Steps 003, 006, and 008, and Step 012 substitutes the landing conclusion
  for the accepted Step 011 contraction interface. Most seriously, Step 010
  replaces its pre-solve Step 009 congruence and floor with its own downstream
  quotient-entry result, making the public frozen-solve proof circular.
- Adversarial stress test: Singular designs, zero normalizers, graph-threshold
  boundary slots, extreme confidence values, zero accuracy limit, and the
  exact orthogonal/equal-weight state were checked. The accepted source proofs
  cover these cases. The verified public attacks are the circular landing
  dependency, underdefined observable graph, incomplete rate bridge, and
  wrong final-composition producers, all of which remain assembly-local.
- LaTeX export structure/provenance gate: Required files, section headings,
  theorem-style environment inventory, unique labels, and recognized reference
  targets are present. The gate still fails because `setting.md` appears as a
  public authority, all thirteen concluding blocks are titled `Step
  composition`, numbered dependency inventories remain, and proof-critical
  passages retain raw ASCII/pseudo-TeX notation.
- Main theorem self-containedness: The attempt-1 malformed reference and
  quotient metric are repaired. Attempt 2 nevertheless underdefines the
  analyzed observable clustering procedure in the public setup, leaves the
  main theorem dominated by a seven-budget frozen-reserve dictionary, and
  places the deterministic \(\rho_{\rm sm}=0\) exact-seed conclusion inside a
  theorem quantified under positive-\(\rho\) Gaussian smoothing.
- Assumption provenance gate: The accepted steps derive the smoothing event,
  coverage, landing reserves, and recurrence interfaces from primitive
  assumptions. Public theorem-style statements still say `Under E_sm` or
  condition on a generated `E_sm` instance without naming
  Proposition~`prop:step-001-geometry`; the rate bridge uses restart
  independence without listing the random-initialization assumption. These
  are public assumption-discharge failures, not missing producer mathematics.
- Redundant public prose gate: Fails. The appendix retains thirteen `Step
  composition` headings, numbered source/dependency inventories, explicit
  diagnostic/workflow sentences, branch-local `setting.md` references, and
  mechanical phrases such as `On an the landing`.
- Proof-step notation surface gate: Fails at assembly. Raw aliases and ASCII
  expressions remain in the Step 007 and Step 012 regions, while bare local
  equation tokens `(1)` and `(A)`--`(C)` replace accepted named or displayed
  interfaces in Steps 002, 003, 006, and 008. The accepted step interfaces
  themselves remain sufficient.
- Theorem readability and notation economy: Fails. The 131-line main theorem
  exposes the technical \(\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,
  \eta_{QJ},\eta_A\) dictionary and pair-Gram formulas. The new corollary only
  simplifies runtime; it does not provide a concise reader-facing recovery
  theorem or move the technical dictionary behind a named appendix bridge.
- Explicit-rate contract: Fails at the public bridge. The corollary and
  appendix proposition omit the random-initialization premise used for restart
  amplification; the corollary also fails to state the fixed smoothing-event
  conditioning and the smoothing/envelope basis for \(\rho^{-1}\). Its final
  simplification drops terms from the dense bound without displayed
  domination inequalities.
- Rate Specialization Bridge: Present in name but contract-incomplete. It does
  not fully discharge auxiliary assumptions, event conditioning, probability
  conversion, and term absorption, and the final theorem proof does not cite
  the bridge or the dense-cost proposition for its runtime conclusion.
- Baseline-reduction check: The accepted Step 013 derivation preserves the
  exact deterministic certified-seed fixed point and zero residual. The public
  theorem states that content, but under the same quantifier block as the
  positive-smoothing theorem. It must be separately scoped as a deterministic
  theorem/corollary so the \(\rho_{\rm sm}=0\) baseline does not contradict the
  theorem's positive-\(\rho\) primitive assumption.
- LaTeX appendix full-derivation gate: Reject. All local-unit blocks and target
  compositions are present, but source-to-appendix preservation fails at the
  first missing Step 002 interface and then at the Step 003 window display,
  Step 006 coordinate ledger, Step 008 tail/score/coefficient interfaces,
  Step 010 pre-solve reserve, and Step 012 contraction interface. Public
  ASCII/pseudo-TeX in substantive inequalities adds an independent failure.
- LaTeX export citation/reference gate: The external Uschmajew citation now
  has a faithful locator, scope, object map, and BibTeX entry; all 85 recognized
  labels are unique and resolve statically. Semantic citation closure still
  fails because Step 010 cites a downstream consumer, the Step 006 graph cites
  `setting.md`, and the final theorem proof attributes the static event,
  recurrence, gauge, and runtime to results that do not state those outputs.
- LaTeX export synchronization: Producer hashes and file inventory are
  synchronized, and attempt 2 fixed the first-round malformed controls,
  `texttt` blocks, empty math fragments, and out-of-proof target compositions.
  The surviving interface omissions and mistranslations show that the public
  proof is not semantically synchronized with the accepted producers.
  Tectonic again terminated before TeX processing because of the installed
  macOS system-configuration failure, so no PDF/log result is available.

## Critical Issues

1. Rigor, citation, and adversarial reviews, `5_appendix.tex:3301-3370`:
   Proposition~`prop:step-010-frozen-solves` uses the later
   Proposition~`prop:step-010-quotient-entry` to obtain the full-rank premise
   needed to prove the frozen solve, while quotient entry consumes the frozen
   solve. It also substitutes static geometry for the Step 009 coefficient
   reserve. This makes the public landing proof circular. Restore the accepted
   pre-solve Step 009 positive congruence, pair-Gram floor, and coefficient
   reserve. Repair depth: assembly. Target: `/proof-assembly`.
2. Rigor and structural reviews, Steps 002, 003, 006, 008, and 012: accepted
   theorem-critical interfaces were omitted or replaced while their bare
   equation aliases remain. The first failure is Step 002's missing realized
   Gram display `(1)`; subsequent failures include the Step 003 window
   probability, Step 006 coordinate ledger, Step 008 tail/score/coefficient
   interfaces, and Step 012's substitution of landing for cyclic contraction.
   These omissions break local derivations despite complete unit counts.
   Repair depth: assembly. Target: `/proof-assembly`.
3. Structural, citation, and adversarial reviews, public setup and Step 006:
   the observable clustering procedure is not defined in the bundle, and
   Proposition~`prop:step-006-graph` imports `the graph in setting.md` instead
   of stating the retained-pool threshold, three-mode edge rule, exactly-\(r\)
   failure test, and representative tie-break. A theorem reader cannot identify
   the analyzed algorithm. Translate the already accepted rule into the public
   setup and proposition. Repair depth: assembly. Target: `/proof-assembly`.
4. Structural, rigor, and adversarial reviews, runtime corollary and
   `prop:rate-specialization-bridge`: restart probability conversion uses
   Assumption~`assump:random-initialization` and a generated smoothing event
   absent from the statements; the \(\rho^{-1}\) envelope basis is not stated;
   and the simplified polynomial bound omits displayed domination inequalities.
   The final theorem proof also fails to cite the dense-cost/rate bridge.
   Repair depth: assembly. Target: `/proof-assembly`.
5. Structural and rigor reviews, `3_main.tex`: the public main theorem remains
   a 131-line technical reserve dictionary with no concise full-result
   corollary, and it scopes the deterministic \(\rho_{\rm sm}=0\)
   `ExactCertifiedSeed` conclusion inside a positive-\(\rho\) smoothing
   theorem. Move the reserve package behind a named appendix interface and
   state the deterministic baseline under a separate compatible quantifier
   scope. Repair depth: assembly. Target: `/proof-assembly`.
6. Structural, rigor, and adversarial reviews, final main-theorem proof:
   the proof names `prop:step-001-realized-gram` as the probability-bearing
   static-event producer instead of `prop:step-001-geometry`, attributes the
   recurrence, gauge, and runtime to results that do not state those outputs,
   and omits the rate bridge. Exact-statement substitution therefore does not
   prove the public theorem. Repair the composition with the already accepted
   producer results. Repair depth: assembly. Target: `/proof-assembly`.
7. Structural and rigor reviews throughout `5_appendix.tex`: `Step
   composition` headings, stale numbered dependency inventories, two
   `setting.md` references, raw ASCII inequalities, malformed list fragments,
   and mechanical prose remain in public proof text. These defects prevent a
   self-contained paper-ready appendix even where the accepted mathematics is
   present. Repair depth: assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair. All four specialized
reviews independently select assembly depth and `/proof-assembly`. The
accepted Step 009/010 proofs already contain the acyclic frozen-rank argument;
the accepted Steps 002, 003, 006, 008, and 012 contain the missing interfaces;
the setting contains the observable graph rule; and the accepted runtime and
baseline arguments contain the needed scopes and producer facts. Repairing
the public translation, theorem organization, assumption lists, rate bridge,
and final composition does not require a new proof step, roadmap change,
primitive assumption, algorithm change, scope weakening, or idea revision.
Acceptance remains forbidden until those assembly defects and the exhaustive
source-to-appendix mismatches are cleared.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
