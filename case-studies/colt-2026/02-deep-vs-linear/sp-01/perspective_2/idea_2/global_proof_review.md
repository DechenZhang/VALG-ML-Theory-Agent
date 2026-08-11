# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_2/idea_2`.
- Sketch attempt: 1.
- Reviewed setting: `perspective_2/idea_2/setting.md`, SHA-256 `7d163ac6220a644f3c6136468f01c42508463aebefb79bcb59c4e449138dd307`.
- Reviewed sketch: `perspective_2/idea_2/proof_sketch.md`, SHA-256 `dea4d9c2d1a0431366c6a88089647174c7f3126667489d7edd2b76421704ec20`.
- Reviewed sketch review: `perspective_2/idea_2/proof_sketch_review.md`, SHA-256 `ce9888ddec3ffb12ee3faac8d26e6740d52be72015fbc4636b72dcb99acdfbd6`; its controlled status is `ACCEPTED` for this sketch.
- Reviewed global proof: `perspective_2/idea_2/global_proof.md`, SHA-256 `128863d505df881ae680bed963bbb60f1d9c98ead851b4692e53da13787ccebc`.
- Reviewed global proof status: `COMPLETE_DRAFT`.

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The reviewed diagnostic contains every required section: reviewed-sketch identity, one controlled status, attempted theorem claim, whole-proof draft, theorem-level block map, sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative dependence audit, scope and closure certificate, generated-output flow, early obstruction audit, global gaps, diagnostic-boundary note, and suggested routing. It additionally exposes an exported-interface table and producer-side gate-evidence table. The recorded hashes of the setting, sketch, and sketch review match the current inputs, and the sketch review is an accepted review of sketch attempt 1.

`COMPLETE_DRAFT` and `Suggested Routing = None` are aligned. The diagnostic reports no theorem-level gap while still reserving every local derivation for independently reviewed proof-step artifacts. Its boundary note expressly denies proof-evidence, citation-source, assumption-source, or roadmap-changing authority to `global_proof.md`. Thus the diagnostic status does not overclaim what this stage certifies.

## Claim And Sketch Fidelity Audit

The attempted claim is exactly the formalized conditional claim
\[
\operatorname{dc}(\mathcal H)\le 7TSd
\]
under the three stable assumptions `assump:source-regime`, `assump:universal-sgd-success`, and `assump:tie-resolved-confident-map`. It preserves the quantifier order in which the architecture, step size, and horizon are fixed before the distribution and target, and one law \(\mathcal P\) is fixed before all subsequently quantified distributions and targets. It does not present the confident-map premise as an SGD consequence, remove the factor \(d\), or claim the source's unconditional target.

The diagnostic also preserves the exact Gaussian initialization, logistic one-sample updates, fixed ReLU-kink convention, latter-half aggregate, expected-risk mode, and fixed tie label. Its conclusion is deterministic, fixed-horizon, and exact on the full domain. The optional \(d\le p(S,T)\) statement remains a specialization asserted only when that separate explicit inequality is available, with no hidden \(n\)- or \(\eta\)-dependence.

The inherited baseline obligations are unchanged. The empty class has dimension zero by definition; the \(d=0\) branch uses the unique zero map and the same tie convention to obtain dimension zero; \(T=1\) retains the strict \(1/4>\varepsilon\) contradiction; \(v=0\) retains \(M=r=1\); amplification yields deterministic existence; and concatenation preserves actual scores, including zeros. No exact baseline is replaced by an approximate, positive-dimensional, conditioned, or high-probability surrogate.

## Theorem-Level Structure Audit

All five accepted sketch steps have one faithful theorem-level block and the same dependency interface:

| Block | Accepted step | Export | Consumers | Review result |
| --- | --- | --- | --- | --- |
| G1 | `step_001` | Null-branch closure and \(S\ge n\) | G3 and final branch assembly; branch facts also orient G2-G5 | Faithful and step-local, including \(L=1\) |
| G2 | `step_002` | \(v=\operatorname{VC}(\mathcal H)<2T\) | G3 | Faithful and step-local |
| G3 | `step_003` | Class-count bound and integer \(r\le7TS\) | G4 and G5 | Faithful and step-local |
| G4 | `step_004` | One deterministic tuple covering every target | G5 | Faithful and step-local |
| G5 | `step_005` | One common exact map, the main bound, and the conditional polynomial specialization | Final assembly | Faithful and step-local |

The graph is acyclic. G1 closes the two null branches or supplies \(S\ge n\); G2 derives the capacity ceiling; G3 converts that ceiling to a finite repetition budget; G4 converts target-wise confidence under one common law to simultaneous deterministic coverage; and G5 performs exact direct-sum assembly. No block consumes a certificate before its producer, and the final assembly covers every branch in `setting.md`.

## Dependency And Assumption Audit

The three `assump:*` items are used with correct provenance. `assump:source-regime` is primitive and supplies the exact protocol and scalar boundaries. `assump:universal-sgd-success` is primitive and is invoked only after G2 selects one fixed witness distribution and one fixed target. `assump:tie-resolved-confident-map` is a primitive explicitly conditional hypothesis and supplies the \(d=0\) event and G4's common law.

Sampled-label-only access in G2 is not an added assumption: it follows syntactically from the frozen update, because after label-independent initialization each update depends on the target only through the sampled scalar \(h^\star(X_t)\), and the fixed kink convention makes the recursion single-valued. The derived objects \(S\ge n\), \(v<2T\), \(r\le7TS\), the covering tuple, and the common feature map each have an earlier producer and an explicit consumer path. The separate inequality \(d\le p(S,T)\) is consumed only by the optional specialization and is not used to complete the main theorem by assumption. No good event, trajectory property, stability condition, or generated representation certificate is hidden among the public assumptions.

## Citation And Tool Audit

The two papers named in the diagnostic provide only source and perspective lineage; no theorem-critical statement, label, or wrapper is imported from either. Consequently there is no unresolved source-identity, statement-shape, hypothesis-discharge, or non-output-boundary obligation attached to those citations.

The theorem-critical tools are self-contained current-notation derivations. For G2, the source objects are the exact SGD state and exact expected classification risk. Conditional on the test point \(X\), the ordered training inputs, all sampled labels, initialization, and the event that \(X\) was unseen, the returned binary prediction is fixed while \(B_X\) is still fair. This remains true with repeated training inputs because the unseen event excludes the coordinate \(X\), with ties because \(\operatorname{sgn}_\tau\) still returns a fixed binary value, and at \(T=1\), where the avoidance probability is exactly \(1/2\). Finite averaging over labelings then selects one fixed \(h_b\), so the proof consumes the universal fixed-target premise rather than an unavailable average-target premise.

For G3, the Sauer--Shelah recursion and binomial estimate are stated on the exact \(N=2^n\) domain, with \(v=0\) split before division by \(v\). Bernoulli's inequality, iid product probability, the finite union bound, and the direct-sum identity are each mapped to their current objects, parameter ranges, boundary cases, and downstream interface. None substitutes a different learner, tie convention, metric, feature law, or representation event. The raw-assumption-to-output paths and source-convention checks are therefore sufficient for step-local classification.

## Quantitative Dependence Audit

- Exposed final variables are exactly \(S,T,d\); the constant is the numerical value \(7\) and has no hidden dependence.
- The learner calculation is in expectation at fixed finite horizon \(T\). The confident premise has per-target probability at least \(1/2\), G4 uses exactly \(r\) iid draws, and the conclusion is deterministic existence.
- The VC lower bound is \(\tfrac12(1-1/(2T))^T\ge1/4>\varepsilon\), including equality in the avoidance bound at \(T=1\).
- For \(v=0\), nonempty \(\mathcal H\) has \(M=1\) and \(r=1\). For \(v\ge1\), the diagnostic exposes \(\log_2M\le2T(n+\log_2e)\) and
  \[
  r\le2T(n+\log_2e)+2\le5Tn+2\le7TS,
  \]
  using \(\log_2e<3/2\), \(n\ge1\), \(S\ge n\), and \(S,T\ge1\). The ceiling residual is explicitly paid by \(2\le2TS\).
- At \(L=1\), \(n_1=n_L=1\), so the sole matrix contributes \(S=n\); no hidden depth assumption is used.
- The representation mode is exact tie-resolved sign equality, not a norm, margin, or approximation surrogate. The polynomial specialization is monotone scalar substitution under a separately established explicit \(d\)-bound and introduces no new probability conversion or residual.

## Scope And Closure Review

The scope-and-closure certificate has separate rows for the empty-class branch, the zero-dimensional branch, \(S\ge n\), \(v<2T\), \(r\le7TS\), deterministic simultaneous coverage, exact common-map closure, and the polynomial specialization. Each row names its theorem role, concrete relation, primitive and generated controls, producer path, consumers, boundary stress, failure mode, and `step-local` locality. The producer-side gate-evidence table covers the same obligations; its combined null-branch row expressly supplies both independent implications, while the certificate keeps their mechanisms separate.

No all-time, invariant, stability, basin, or recurrence claim occurs. The only accumulated scopes are finite and have concrete controls: G2 uses the exact product \((1-1/(2T))^T\) with no additive trajectory defect; G4 uses independent failure \(2^{-r}\) and pays the complete finite union by \(M2^{-r}\le1/2\); and G5 has identically zero cross-block interference. These relations satisfy the scope-accumulation gate and do not rely on category labels alone.

Noncircularity holds row by row: definitions and primitive assumptions feed G1, the learner premise feeds G2, G1 and G2 feed G3, the common law and G3 feed G4, and G3 and G4 feed G5. The optional polynomial row is explicitly conditional on a separate \(d\)-bound and does not manufacture that bound in assembly. Entry and boundary traces are adequate: empty and \(d=0\) branches already satisfy the conclusion; \(L=1\), \(T=1\), \(v=0\), \(M=r=1\), repeated samples, arbitrary initialization, and zero scores all leave the stated mechanism active or make the conclusion already true.

Exported-interface and residual-to-target adequacy also pass. The G2 average transfers to a fixed target with unchanged distribution, learner, horizon, risk, and expectation; G3 exposes and dominates every scalar residual; G4 produces exactly the event G5 consumes; and G5's produced feature map is the object in the definition of \(\operatorname{dc}\), with pointwise score residual zero. There is no transformed or surrogate object needing an unrecorded bridge.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Empty-class closure | Exact baseline closure | Definition \(\operatorname{dc}(\varnothing)=0\) | Binding setting definition | Directly supplies the branch conclusion | Same dimension definition and parameter scope as the goal | \(0\le7TSd\) | Emptiness exports the exact final inequality | Produced and consumed dimension coincide; residual zero | No generated process or accumulated defect | Definition -> G1 -> assembly | G1 closes the branch; assembly consumes it | The conclusion is already true, including at \(d=0\) | `step-local` | None |
| Zero-dimensional closure | Exact tie-boundary baseline closure | Unique zero map/vector, fixed \(\tau\), and `assump:tie-resolved-confident-map` | Binding definitions plus primitive conditional premise | A probability-at-least-\(1/2\) deterministic event forces every target to equal the constant \(\tau\) | Premise and conclusion use the same \(\mathbb R^0\), zero inner product, and \(\operatorname{sgn}_\tau\) | \(d=0\Rightarrow h\equiv\tau\Rightarrow\operatorname{dc}(\mathcal H)=0=7TSd\) | Raw controls are \(d=0\), exact success, and the tie rule; export is exact zero dimension | The zero map is the consumed map; pointwise score residual zero | No draw-dependent defect or accumulation | Primitive premise -> G1 -> assembly | G1 produces exact closure; nondegenerate blocks are bypassed | At the null-dimensional entry no update or draw is needed; zero scores give \(\tau\) | `step-local` | None |
| \(S\ge n\) | Structural lower comparison used by the public rate | First-layer parameter count and positive width | `assump:source-regime` | Supplies exactly the lower bound needed to remove \(n\) | Same fully connected architecture, including \(L=1\) | \(S\ge n_1n\ge n\) | Positive widths and the definition of \(S\) export \(n\le S\) | Exact scalar transfer; no object residual | Finite sum; no repeated defect | Primitive architecture -> G1 -> G3 | G1 produces; G3 consumes | At \(L=1\), \(n_1=1\) and \(S=n\) | `step-local` | None |
| \(\operatorname{VC}(\mathcal H)<2T\) | Structural capacity and learner-to-count bridge | Fair random labeling on a shattered \(2T\)-point set and unseen-label conditioning | Direct current-notation consequence of `assump:source-regime` and `assump:universal-sgd-success` | Gives a lower bound in the exact expected classification-risk interface needed for contradiction | Exact initialization, updates, kink rule, aggregate, tie label, distribution, target, horizon, and risk are retained | \(\Pr(E)=(1-1/(2T))^T\ge1/2\), hence average risk \(\ge1/4>\varepsilon\) | Universal success, label-independent initialization, and sampled-label-only updates export \(v<2T\) | Finite averaging selects one fixed target under the same \(\mathcal D\), learner, horizon, and expectation; residual zero | Repeated samples are included in the product; no additive trajectory error | Primitive learner premise -> G2 -> G3 | G2 produces the VC ceiling; G3 consumes it | At \(T=1\), the lower bound is exactly \(1/4\); ties are fixed predictions independent of the unseen fair bit | `step-local` | None |
| \(r\le7TS\) | Quantitative count-to-budget bridge | Sauer--Shelah recursion, binomial estimate, derived \(v<2T\), and derived \(S\ge n\) | Direct current-notation combinatorics from G1/G2 outputs | Bounds the exact finite class cardinality and exact integer repetition count | Same finite domain \(N=2^n\); no representation convention enters | \(r\le2T(n+\log_2e)+2\le5Tn+2\le7TS\), with \(v=0\) separate | Raw \(N,v,n,S,T\) support the exported integer budget | Ceiling residual \(2\le2TS\); every scalar term is dominated at target scale | Finite sum and one ceiling; no repeated or hidden defect | G1 + G2 -> G3 -> G4/G5 | G3 produces the budget; G4/G5 consume | \(v=0\) gives \(M=r=1\); \(v=N\), \(n=1\), \(T=1\), and \(S=n\) are covered | `step-local` | None |
| Deterministic tuple covering all targets | Probability-mode conversion and generated coverage | One common law, iid block draws, and a finite union bound | Primitive explicitly conditional `assump:tie-resolved-confident-map` plus G3 | Exact per-target success under the same law supplies exact simultaneous coverage | Law, domain, dimension, full-domain event, and tie convention coincide between source and consumer | Fixed-target failure \(\le2^{-r}\); union failure \(\le M2^{-r}\le1/2<1\) | Common \(\mathcal P\), per-target success, finite \(M\), and exact \(r\) export one fixed tuple | Produced and consumed representation events are identical; no score, margin, distribution, or probability residual | Failure multiplies over exactly \(r\) iid draws and the finite union is fully paid | Primitive common law + G3 -> G4 -> G5 | G4 produces the tuple; G5 consumes it | At \(M=r=1\), one draw succeeds with probability at least \(1/2\); zero scores remain valid | `step-local` | None |
| Common map and \(\operatorname{dc}(\mathcal H)\le7TSd\) | Exact deterministic theorem closure | Covering tuple, selected block separators, and direct-sum identity | Direct derivation from G3/G4 outputs | Supplies exactly one target-independent map and target-specific separators required by \(\operatorname{dc}\) | Same coordinates, inner product, domain, and tie map | \(\langle u_h,\Phi(x)\rangle=\langle w_{i(h),h},\phi_{i(h)}(x)\rangle\), so \(\operatorname{dc}\le rd\le7TSd\) | A covered block for every target and \(r\le7TS\) support the exact exported map | Produced \(\Phi\) is the consumed target object; pointwise score residual zero | Inactive blocks contribute exactly zero; no accumulated interference | G3 + G4 -> G5 -> assembly | G5 produces map and bound; theorem assembly consumes | At \(r=1\) the map is the successful block; zero block scores preserve \(\tau\) | `step-local` | None |
| Polynomial specialization | Conditional public quantitative specialization | Main bound plus a separately established explicit \(d\le p(S,T)\) | Derived G5 output plus explicit scalar control | Supplies exactly the displayed polynomial endpoint when its premise is available | Same deterministic dimension, horizon, and exact representation interface | \(7TSd\le7TSp(S,T)\) | Main bound and an explicit \(d\)-bound with no hidden \(n\) or \(\eta\) support the export | Only nonnegative scalar slack; representation residual zero | No probability conversion, iteration, or dropped term | Separate \(d\)-bound + G5 -> specialization | G5 and the separate bound produce; specialization consumes | If \(d=p=0\), G1 already supplies exact closure; absent the separate bound, no specialization is asserted | `step-local` | None |

## Hard-Step Localization Audit

Every theorem-critical obligation is `step-local` under the unchanged accepted sketch. `step_001` instantiates binding definitions and the first-layer count. `step_002` must formalize a delicate conditioning argument, but the mechanism source, conditioning information, exact output interface, repeated-sample treatment, tie handling, \(T=1\) trace, and average-to-fixed-target transfer are already fixed. `step_003` must supply the full Sauer--Shelah induction and scalar inequalities, but no new combinatorial interface or rate bridge is needed. `step_004` only instantiates the common-law iid product and finite union calculation. `step_005` only instantiates exact direct-sum algebra and optional scalar substitution.

No future proof step is being used as the first source of a lower bound, generated condition, probability conversion, common map, or quantitative specialization. There is no `sketch/interface defect` and no `idea/theorem-contract defect` among the five blocks.

## Early Idea-Failure Screen

- Contract contradiction: none; the theorem remains explicitly conditional and exact.
- Missing mechanism: none; each block has a source of the correct claim type already present in a primitive condition, earlier generated output, or checked direct derivation.
- Source-convention and object-target stress: pass; the exact source learner is used in G2, the common confident event is unchanged in G4, and G5 produces the exact map consumed by \(\operatorname{dc}\). No transformed or surrogate object occurs.
- Residual-to-target stress: pass; target averaging, ceiling loss, coverage conversion, direct sum, and polynomial substitution expose all residuals, each zero or explicitly dominated.
- Persistent-defect and accumulation stress: pass; only two finite products occur, their complete costs are displayed, and cross-block interference is identically zero.
- Limiting and boundary stress: pass for \(\mathcal H=\varnothing\), \(d=0\), \(L=1\), \(T=1\), \(v=0\), \(v=N\), \(n=1\), \(S=n\), \(M=r=1\), repeated samples, random initialization, and zero scores.
- Entry-state trace: pass; no convergence or invariant is claimed, and in each applicable null or first-draw case the source is active or the theorem conclusion already holds.
- Generated-condition provenance: pass; every derived object has a legal producer and every consumer follows it. The confident map is honestly an explicitly conditional primitive input.
- Dependence and mode: pass; no hidden \(n\), \(\eta\), confidence, approximation, horizon, or norm dependence enters the conclusion.
- Baseline invariance: pass; all exact branches and specializations retain their original conclusions.
- Same-setting repair plausibility: no repair is needed. Deriving a polynomial confident dimension from SGD or removing \(d\) would be new theorem content outside this conditional contract, not an obligation disguised as local proof work.

## Review Rationale

The global diagnostic is contract-valid, faithful, and detailed enough to guide the five independent proof steps without supplying them new assumptions or interfaces. Its highest-risk transition, universal SGD success to \(\operatorname{VC}(\mathcal H)<2T\), has a source-adequate and boundary-tested information mechanism; the remaining transitions have exact finite combinatorial, probabilistic, or algebraic interfaces. All theorem-critical certificate and gate-evidence obligations are noncircular and step-local, so `ACCEPTED` with no retry target is the smallest sound decision.
