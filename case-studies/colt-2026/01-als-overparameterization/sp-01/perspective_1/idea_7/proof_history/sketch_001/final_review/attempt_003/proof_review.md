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

Assembly attempt 3 states the public theorem titled
"Conditional strictly subquadratic recovery." It asserts, under all eight
numbered primitive assumptions, a once-drawn event of probability at least
\(1-\delta_{\rm sm}\), a conditional target/slot window probability of order
\(r^{-5/3}(\log r)^{-3/2}\), rank
\(U(r)=\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\rceil=o(r^2)\), the accepted
ratio recurrence and label-free selection, synchronized frozen landing and
exact target-span entry, cyclic contraction factor \(17/512<1/16\), original
relative Frobenius stopping, capped total work, and conditional restart
success at least \(1-\delta_{\rm init}\). A separate explicit dense-runtime
corollary states the full cost and joint probability conversion, and a
separately scoped deterministic exact-certified-seed corollary states the
orthogonal equal-weight \(\rho_{\rm sm}=0\) fixed point and zero residual.
The attempted contribution remains `conditional`; it does not claim the
unrestricted source target. Its mathematical producer chain is now acyclic,
but the remaining public event-definition, finite-boundary-certificate, and
TeX/exposition defects below prevent acceptance.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The accepted producer chain and the attempt-3 theorem cover
  the conditional target's rank, nested probabilities, landing, contraction,
  original Frobenius criterion, capped runtime, and exact deterministic
  baseline. Public goal coverage still fails because the theorem assigns the
  requested sharp rate to an undefined `target/slot observable window` rather
  than stating the exact raw-coordinate and competing-product event.
- Source/progress alignment: The theorem explicitly remains conditional on
  the base-scale, cumulative-Gram, near-balance, and smoothing-margin regime
  and disclaims unrestricted-base or unmodified-parallel-ALS recovery. This is
  consistent with the branch's `conditional`, material progress label.
- Specialized reviewer contracts: Structural, rigor, citation, and
  adversarial artifacts are present, contract-valid, and bound to attempt-3
  `assembly_report.md` SHA-256
  `8b5d5c509386e513c714b02a98d56fb242b11d6ee750f68ba52f62ca332a8d87`.
  Citation records `PASS`/`None`/`None`; structural, rigor, and adversarial
  each record `BLOCKING`/`assembly`/`/proof-assembly`. The aggregate acceptance
  gate therefore rejects; the three assembly blockers control over the one
  diagnostic pass.
- Assembly status and synchronization: The report records `COMPLETE`, all
  required files, the unchanged setting/sketch/global/step bindings, and live
  bundle hashes. Its assertion that full derivations and public-TeX hygiene
  pass is contradicted by the omitted Step 002 table, bare `qquad` tokens,
  Step 007 pseudo-math, and Step 001 workflow inventory.
- Roadmap or step coverage: All thirteen accepted proof/review pairs remain
  current and acyclic. All 54 accepted local units map in order to 57 public
  theorem-style blocks, and all thirteen target-step assemblies occur inside
  proof environments. The sole substantive source-body omission found by the
  exhaustive structural audit is the five-row finite-range certificate in
  Step 002.
- Proof-details audit: This was an all-step source-to-appendix audit, not a
  representative sample. Attempt 3 restores the Step 002/003/006/008/012
  interfaces and the noncircular Step 009-to-Step 010 reserve chain. The first
  unaccounted proof obligation is Step 002's rational-endpoint table for
  \(3\le r\le99\): the appendix announces the endpoints and then asserts the
  conclusion without displaying them.
- Adversarial stress test: The Step 010 full-rank chain now survives exact
  dependency substitution, and singular tapes, zero normalizers, graph
  thresholds, confidence endpoints, \(\epsilon\downarrow0\), and the exact
  baseline show no mathematical counterexample. The remaining verified attack
  is standalone-interface failure: \(W_{ij}\) and \(C_{ij}\) are defined only
  inside a prior proof body, while later propositions and the main theorem
  consume the window event without an exported definition.
- LaTeX export structure/provenance gate: Required files, headings, appendix
  subsections, final theorem proof, balanced environments/braces, 87 unique
  labels, and recognized internal references are present. The gate still fails
  because `5_appendix.tex:7-40` narrates tools named in the sketch/local units
  and exposes a standalone proof-ingredient inventory.
- Main theorem self-containedness: The former reserve dictionary has been
  moved out of the main theorem, the observable procedure is defined in the
  setup, and the exact baseline is separately scoped. The theorem remains
  non-self-contained only at its window-rate interface: the target coordinate
  interval and competing pair-product event are first defined in the appendix,
  not in theorem-facing setup or the theorem statement.
- Assumption provenance gate: Passes for primitive assumptions and generated
  events. The static event, restart independence, landing reserves, and cyclic
  interfaces now name legal producers, and the exact baseline is conditional
  on its explicit deterministic scope. The window defect is an exported
  definition/statement-shape failure rather than an assumed derived invariant.
- Redundant public prose gate: Fails at the Step 001 opening inventory. Phrases
  such as tools `named in the sketch`, results `proved in the local units`, and
  `unchecked citations` expose workflow/audit provenance instead of concise
  mathematical exposition.
- Proof-step notation surface gate: Fails only in translation. Fourteen bare
  `qquad` tokens occur across preliminaries, the main theorem, and appendix,
  including the complete frozen-reserve producer; Step 007 also leaves
  `a0 < 1.001` and `42 omega` as raw pseudo-math. The accepted source notation
  is sufficient and needs no producer revision.
- Theorem readability and notation economy: Passes. The main theorem now gives
  a concise recovery interface; the detailed frozen reserves live in named
  appendix results, and the runtime and deterministic baseline are separate
  reader-facing corollaries.
- Explicit-rate contract: The dense-runtime corollary and appendix bridge now
  state the full primitive basis, smoothing-event conditioning, auxiliary
  choices, restart/tower conversion, displayed term domination, probability
  mode, norm, horizon, and hidden-constant dependence. The remaining explicit
  rate failure is the undefined event attached to the public window rate.
- Rate Specialization Bridge: Passes. The repaired proposition covers coupon
  and dense-cost producers, choices of \(k,L_{\rm prop},m_{\rm cap},J\),
  term-by-term absorptions, restart conversion, final work dependence, and
  joint probability conversion.
- Baseline-reduction check: Passes. The deterministic
  `ExactCertifiedSeed` corollary is separately scoped at \(\rho_{\rm sm}=0\),
  states exact landing/fixed-point identities, and retains zero residual rather
  than a positive-radius surrogate.
- LaTeX appendix full-derivation gate: Rejects at Step 002. The accepted source
  gives five rational upper endpoints for the ranges \(3\!:\!9\),
  \(10\!:\!19\), \(20\!:\!39\), \(40\!:\!69\), and \(70\!:\!99\); the
  public proof omits the table before claiming the finite-range conclusion.
  Apart from this omission, the exhaustive reviews locate all accepted local
  equations, boundary branches, cited-tool uses, and target compositions.
- LaTeX export citation/reference gate: Passes. The citation reviewer verifies
  faithful Uschmajew scope and object mapping, a complete BibTeX entry, 87
  unique labels, no unresolved recognized references, the noncircular landing
  producer, and correct final theorem producers. Descriptive `Step 009` and
  `(A2)` strings are nonauthoritative presentation concerns only.
- LaTeX export synchronization: The attempt-3 hashes match the report and the
  prior circularity, graph definition, rate bridge, final producer map,
  theorem readability, and baseline scope are repaired. Semantic
  synchronization still fails at the omitted Step 002 table and proof-local
  window definitions, while malformed `qquad`/pseudo-math tokens change public
  formulas. Tectonic again failed before TeX processing because of the macOS
  system-configuration panic, so no PDF/log result is available.

## Critical Issues

1. Rigor and adversarial reviews, `3_main.tex:22-24` and Step 002 appendix:
   the main theorem assigns the sharp window rate to an undefined
   `target/slot observable window`. The exact target interval and competing
   pair-product condition are not stated in theorem-facing setup. Moreover,
   \(W_{ij}\) and \(C_{ij}\) are defined only inside the proof of
   Lemma~`lem:step-002-target-mass` but are consumed by later propositions.
   This prevents standalone statement and exact-goal auditing. Export the
   compact event definition before use. Repair depth: assembly. Target:
   `/proof-assembly`.
2. Structural review, `5_appendix.tex:598`: the Step 002 proof announces five
   rational upper endpoints for the finite ranges \(3\le r\le99\) but omits
   the entire accepted table before asserting the product-reserve conclusion.
   This is the first unaccounted source proof obligation and blocks exhaustive
   full-derivation preservation. Restore the accepted five-row certificate.
   Repair depth: assembly. Target: `/proof-assembly`.
3. Structural, rigor, and adversarial reviews across `2_preliminary.tex`,
   `3_main.tex`, and `5_appendix.tex`: fourteen literal `qquad` tokens lack a
   leading backslash, including theorem-critical recurrence, seed, frozen
   reserve, contraction, and rate displays. Step 007 additionally leaves
   `a0 < 1.001` and `42 omega` outside proper mathematical notation. These
   tokens change or corrupt the public formulas. Restore valid TeX notation
   throughout. Repair depth: assembly. Target: `/proof-assembly`.
4. Structural and rigor reviews, `5_appendix.tex:7-40`: the Step 001 opening
   refers to tools named in the sketch, results proved in local units, and
   unchecked citations, followed by a standalone proof-ingredient inventory.
   This is forbidden workflow/audit provenance. Remove it or integrate only
   necessary mathematical facts into named statements and proofs. Repair
   depth: assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair. Three contract-valid
specialized reviews select assembly depth and `/proof-assembly`, while the
citation review passes. The accepted Step 002 source already contains the
missing finite-range table and window definitions, all formulas exist in valid
source notation, and the Step 001 theorem-style derivations already contain
the mathematical content needed after provenance prose is removed. No proof
step, sketch dependency, primitive assumption, algorithm, theorem mode,
exposed dependence, success criterion, or conditional contribution needs to
change. Score 6 reflects a nearly synchronized proof with localized but still
acceptance-blocking public-assembly defects.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
