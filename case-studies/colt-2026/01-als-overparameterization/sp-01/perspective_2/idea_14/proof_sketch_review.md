# Proof Sketch Review

## Reviewed Sketch Identity

- Perspective / idea: perspective_2/idea_14
- Sketch attempt: 1 (initial)
- Binding idea SHA-256: d0f9aaccd10811d76aefce7e7feb1e6d7b7162ffa5a4771a10482c59ee74b668
- Binding setting SHA-256: 3163dcca89bc0108d13bde12c457a9772cacd15b02131a83b1bc996e16c7bb9d
- Binding proof-sketch SHA-256: 7568a68182dc9395bcbe2b7c23010c5223ec31d9509dd7ccc93eb25467a9d79d
- Binding technical-survey SHA-256: 8c04d39c24d97bbf0dc9d82eee8ba770d06f4fc907c7f15fde187a2a73a94a54
- Reviewed on-disk sketch SHA-256: 7568a68182dc9395bcbe2b7c23010c5223ec31d9509dd7ccc93eb25467a9d79d
- Progress type: material_partial
- Roadmap: six rows, step_001 through step_006 (instance split, local transaction, tape, gate/assignment, release ledger, PL/Armijo).
- Freeze: binding hashes match; only this review file is written.

## Sketch Viability Score

3

## Sketch Review Status

IDEA_FAIL

## Smallest Retry Target

/subagent-idea-generator

## Retry Mode

new_idea

## Audit Summary

- Goal alignment: The exact CP loss, public-block material-partial scope, unknown permutations, two probability statements, subquadratic rank, arbitrary relative accuracy, and rho=0/no-floor baseline are preserved. The theorem is not instantiated because the binding local smoothness interface is false on an allowed transaction state and the release ledger consumes an unproduced candidate-error bound.
- Dependency audit: The graph is acyclic, but step_002 bundles activation, angular capture, radial dynamics, Hessian, Armijo, signs, and rollback; step_006 bundles chart, first-exit, PL, rate, and baseline. No legal producer exists for the declared L bound, so downstream rows consume a missing interface.
- High-risk/rate coverage: The sketch names all r^3 triples, unknown permutations, rollback, finite accumulation, entry traces, and projected-to-realized transfer. R1-R4 expose main parameters and probability/horizon/norm modes, but omit a cap-radius inequality, a kappa-uniform radial bound, an error-to-chart inequality, and complete rate specialization.
- Assumptions/citations: All ten primitive IDs are named and no generated event, label, gate passage, tape success, boundedness, or PL membership is assumed: assump:public-block-partition, assump:block-supported-source, assump:base-conditioning, assump:base-product-balance, assump:gaussian-smoothing, assump:dimension-and-smoothing-scale, assump:smoothing-margin, assump:rank-regime, assump:block-tape, assump:relative-accuracy. Parent papers are motivation only and supply no current-notation transaction theorem.

## Early Obstruction Audit

- Limiting-case stress: Take rho=0, disjoint blocks, equal products, and every base column norm equal to an allowed kappa >= 2. At the empty prefix on a matching block, choose exact block directions, so s = ||R_empty,alpha||_F = kappa^3. Along q(g)=(g u,g v,g w), f(g)=C-kappa^3 g^3+0.5 g^6 and f''(g)=-6 kappa^3 g+15 g^4. At g=kappa^(-1), the radial Hessian is Omega(kappa^2) (up to a fixed factor for unit-speed factor coordinates), while the binding L=C_loc(1+g^3||R||_F+g^6) <= 3 C_loc. The state is in [delta,2 R_max] for large P. The required Hessian bound therefore fails on the exact noiseless baseline for unbounded exposed kappa.
- Theorem-critical bridge and witness: step_001 static concentration/support is plausible. step_002's direct derivative source exposes missing g||R_alpha|| and mixed radial terms; its witness is source-inadequate for L and Armijo. step_005 has no source for e_t <= C zeta_tx, and step_006 has no quantitative target-side margin after release.
- Entry/activation trace: T=0 and exact-target stationary branches are coherent, but the legal empty-prefix rho=0 radial path traverses the failing L region. A custom radial metric is not defined; introducing one changes the procedure and displacement convention.
- Exported interface/residual bridge: The gate exports (s, Delta, L), but raw f'' does not map to L uniformly. Direction isolation and scalar decrease do not imply |g^3-s|, factor distance, or e_t <= C zeta_tx. The two-bracket projected-to-realized identity is valid, but neither C r zeta_tx nor C sqrt(r) lambda_leak is derived or compared with a generated PL radius.
- Tape/scope: A fixed-angle cap in 3d=Theta(log r) dimensions can have polynomial mass, but a P^(-C) accuracy cap has mass zeta^(Theta(d)); the cap radius and basin/convergence relation are absent. Rollback gives finite t<=r scope, but the per-commit charge and strict nonmatching margin are unsupported.
- Gate/baseline: The goal only states nonmatching norm <= lambda_leak while the gate requires norm >= lambda_leak; equality is not rejected. The exact rho=0 baseline is stationary at the target, but the required transaction mechanism does not satisfy its smoothness contract. A weaker/stopped endpoint would violate baseline invariance.
- Provenance/citations/flow: Generated outputs are correctly labeled as conclusions, but the intended flow primitive -> step_001 -> step_002 -> tape/gate -> ledger -> PL breaks at L and e_t. No cited result has source identity, label, object mapping, convention compatibility, or conclusion-interface match for these claims.
- Locality/repair: Static split and conditional union bounds are step-local in principle. L/Hessian/decrease is an idea/theorem-contract defect. Cap, strict floor, candidate stopping, ledger, release, and PL first-exit are sketch/interface defects after a new transaction contract. Reordering or subdividing the sketch cannot make the binding L inequality true; repair requires changing L/gate, defining a different metric/procedure, or restricting primitive kappa.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| E_inst and norm/weight event | static concentration/support | Gaussian tails and disjoint blocks | seven static assumption IDs above; direct derivation | plausible | Euclidean/Frobenius match | tails plus margin give reserves | raw Gaussian controls export E_inst | exact realized T | one-time | primitive -> step_001 | step_001 -> all later rows | T=0 and rho=0 named | step-local | None |
| matching split/nonmatching floor | structural isolation | leakage expansion and disjoint blocks | direct step_001 derivation | principal split plausible; strict floor absent | block projector convention matches | need E_j < c lambda and nonmatching < lambda | leakage/pair counting not quantified | projected block vs residual incomplete | one-time; disjoint prefix | step_001 -> step_004 | step_001 output consumed by gate/ledger | rho=0 works; equality boundary open | sketch/interface defect | /proof-sketch |
| local L and transaction | Hessian/signed decrease | exact radial/angular derivatives | direct current-notation derivative | fails: f'' needs g times norm(R) and mixed terms absent from L | factor displacement suggests Euclidean metric; radial metric unspecified | rho=0 has s=norm(R)=kappa^3, g=kappa^(-1), Hessian Omega(kappa^2), L=O(C_loc) | raw derivative cannot export L uniformly | no bridge fixes false L | Armijo source invalid before capture | no legal L producer | step_002 intended; gate/tape/ledger consume | empty-prefix exact baseline fails | idea/theorem-contract defect | /subagent-idea-generator |
| cap and zeta capture | candidate/tape input | sphere volume and finite dynamics | direct fact intended in step_002 | conditional; radius and stopping absent | block sphere matches; tolerance unbound | fixed-angle cap may be polynomial; zeta-radius cap is not | d,H_tx,delta,Delta_tr listed but no basin inequality | candidate error not dominated | accepted errors persist | step_002 -> step_003/005 | intended producer missing | delta and rollback named | sketch/interface defect | /proof-sketch |
| conditional tape | finite probability | independent starts and union bound | assump:block-tape, assump:rank-regime | valid only after p_cap source | conditional mode matches | need p_cap >= r^(-C) and N_tx exponent | N_tx depends on missing cap constant | no target bridge | finite retries; rollback | step_002 -> step_003 | step_003 -> gate/ledger | skipped/zero blocks named | sketch/interface defect | /proof-sketch |
| gate/assignment | no false positives/one-to-one | score/decrease identities and split | direct derivation plus candidate | matching plausible; strict rejection absent | exact residual metric matches | isolation/Delta observable, but Delta/L blocked and <= lambda allows equality | score, Delta, L measured; no margin | accepted q not shown close enough | one commit; finite rollback | step_003 -> step_004 -> step_005 | step_004 -> ledger | sign and empty-prefix named | sketch/interface defect | /proof-sketch |
| prefix ledger/release | invariant and target entry | support, rollback, telescope | direct algebra plus intended candidate lemma | support plausible; error charge unsupported | projected/realized Frobenius only partial | need sum e_t and C r zeta+C sqrt(r)lambda <= chart radius | no e_t, Gram transfer, or radius source | projected state not dominated at PL scale | finite norm-triangle accumulation | step_004 -> step_005 -> step_006 | step_005 intended producer | unused zeros and rho=0 bracket named | sketch/interface defect | /proof-sketch |
| PL chart/terminal rate | membership/coercivity/convergence | balanced Jacobian/Gram continuity | direct calculation intended; no wrapper | conditional only | exact target named; entry convention open | need Gram margin, entry distance, first-exit recurrence, rate specialization | box/balance IDs listed; inequalities absent | surrogate entry not adequate | contractive only after entry | step_005 -> step_006 -> theorem | step_006 intended producer | target stationary; noisy boundary open | sketch/interface defect | /proof-sketch |
| rho=0 baseline/no-floor | baseline invariance | exact block representation and stationary target | assump:gaussian-smoothing rho=0; direct identity | target valid but transaction source fails | objective/target match; L fails | same radial counterexample occurs in baseline | no margin controls missing kappa^2 | weaker endpoint not baseline-preserving | zero leakage; radial defect active | primitive -> transaction edge fails | theorem consumes baseline | target stationary; first transaction fails | idea/theorem-contract defect | /subagent-idea-generator |

## Blocking Issues

1. Binding block-scale Hessian is false on an allowed state (setting.md:109-116, 123-146; proof_sketch.md:170-187). The exact rho=0 kappa-growing example gives radial Hessian Omega(kappa^2) at g=kappa^(-1), but L=O(C_loc). No fixed protocol constant can hide exposed kappa. Repair requires changing L/the gate, defining a different metric/procedure, or restricting the primitive regime; a sketch-only reordering cannot repair it.
2. The gate does not export the capture error used by step_005 (proof_sketch.md:219-238). Direction isolation and scalar loss decrease do not force |g^3-s|, factor distance, or e_t <= C zeta_tx. A terminal tolerance check or new observable condition is required.
3. Polynomial tape mass is asserted without a cap radius (proof_sketch.md:101-114, 178-195). A zeta=P^(-C) cap in 3d=Theta(log r) dimensions is superpolynomially small; only a fixed-angle basin can give polynomial mass, with the basin/convergence proof absent.
4. The no-false-positive and release interfaces lack strict margins (proof_sketch.md:201-238): <= lambda in the goal does not rule out the >= lambda gate; the C r zeta+C sqrt(r)lambda transfer and chart-radius comparison are absent.
5. The six rows compress the required 15-field evidence contract and mark broad bundles step-local (proof_sketch.md:74-84, 258-301). A concise repair must expose lemma-sized subunits and full producer/consumer, convention, accumulation, and entry evidence.

## Required Repair Bundle

1. New idea/procedure contract: replace L by a scale-correct bound containing radial/mixed terms (at least g||R||, g^2||R||, and g^4), or define a non-Euclidean radial metric and rewrite Armijo/displacement, or impose a kappa-independent primitive restriction. Recheck rho=0 and rate dependence. This is the reason for /subagent-idea-generator.
2. After that change, make candidate production explicit: run to checked zeta tolerance or add a radial/directional residual gate, derive e_t with kappa factors, and preserve rollback.
3. Specify a fixed-angle cap, its polynomial mass, basin invariance, radial escape, and explicit H_tx/N_tx union bounds over r^3 triples and prefixes.
4. Add strict nonmatching margins, prefix-uniform isolation, accumulated-error inequalities, projected-to-realized dominance, chart-entry radius, and first-exit PL recurrence, including rho=0.
5. Keep six top-level rows only if each has stable lemma-sized subunits and the full Gate Evidence fields; otherwise split transaction dynamics/certificate and chart/terminal rate. Mark unresolved interfaces as sketch defects.

Target-preserving repair check: items 2-5 are same-setting sketch repairs, but item 1 is not. Under the binding setting, the radial Hessian inequality is false for an allowed exact-baseline family. No proof reorganization can preserve the current setting, gate, and goal simultaneously. A new idea may alter only the transaction metric/gate/procedure while retaining the exact objective, rank regime, probability split, relative endpoint, and rho=0/no-floor requirement.

## Review Rationale

The public-block direction is materially distinct and its static leakage/assignment claims may be salvageable. The binding transaction contract nevertheless requires a uniform Hessian upper bound disproved by direct current-coordinate differentiation on the exact noiseless regime. This is deeper than a missing step, citation, or concise decomposition. Because repair requires changing the local gate, radial metric/procedure, or primitive scale regime, REVISE_SKETCH cannot preserve the current formalized setting and goal. The controlled result is IDEA_FAIL with score 3 and retry target /subagent-idea-generator.
