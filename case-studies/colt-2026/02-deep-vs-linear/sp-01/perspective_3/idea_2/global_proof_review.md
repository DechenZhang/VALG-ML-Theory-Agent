# Global Proof Review

## Global-Proof Review Identity

- Branch: `perspective_3/idea_2`
- Sketch attempt: 1
- Global-proof attempt: 1
- Reviewed setting: `perspective_3/idea_2/setting.md`, SHA-256 `d87d6829e96ea51a870dbedd510d9033c217889a1c4046031492325e82f8fc4a`
- Reviewed sketch: `perspective_3/idea_2/proof_sketch.md`, SHA-256 `5a79f380d088d16fdc9fa96b15332559cb1bb0b4db1c1f3c2402f0b3f3bb58cc`
- Reviewed sketch review: `perspective_3/idea_2/proof_sketch_review.md`, SHA-256 `67b2185318309afcc91a16a891de06bd27df3dd9bcc137a874d53b6480a8b449`; controlled status `ACCEPTED`
- Reviewed global proof: `perspective_3/idea_2/global_proof.md`, SHA-256 `eb75478e5f1b6127adfe7bb389e0480537becc0fe2f88ac4808d6fdc6bad3974a`
- Reviewed global-proof status: `COMPLETE_DRAFT`

## Global-Proof Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Required Repair Bundle

None

## Contract And Status Audit

The diagnostic contains the reviewed-sketch identity, a controlled `COMPLETE_DRAFT` status, the exact attempted theorem, a theorem-level draft, block map, complete sketch-step coverage, dependency and assumption audit, citation and tool audit, quantitative audit, scope-and-closure certificate, exported-interface audit, generated-output flow, gate evidence, early-obstruction audit, gap declaration, diagnostic-boundary note, and controlled routing. `Suggested Routing = None` is aligned with `COMPLETE_DRAFT`. The diagnostic-boundary note correctly bars use of this artifact as proof evidence, an assumption source, or authority to modify the accepted sketch. The detail is sufficient to dispatch the seven unchanged proof-step claims.

## Claim And Sketch Fidelity Audit

The attempted claim is the exact formalized material-partial theorem. It preserves the bias-free depth-two architecture, source tie convention, source learner and finite latter-half aggregate, and exactly the three primitive assumptions: antipodal oddness, strict high accuracy, and universal expected SGD success. It neither adds a margin or trajectory condition nor silently targets the unrestricted-depth or non-odd problem.

The quantifiers are preserved. The learner parameters and protocol are fixed before every distribution and target. Block B3 invokes the premise separately on the legal distribution \(\mathcal D^{\mathrm{sym}}\) and extracts a vector that may depend on \((\mathcal D,h)\), as the intermediate claim permits. Block B6 then proves a separator depending only on the fixed target, and B7 uses one deterministic identity map independent of \(\mathcal D\), \(h\), and the trajectory. The conclusion, exposed factor \(2\), strict threshold \(2\varepsilon<1/(n+1)\), probability-one point-mass statement, and dimension chain all match the accepted sketch. The \(\varepsilon=0\) and empty-class baselines retain the original exact conclusion.

## Theorem-Level Structure Audit

Blocks B0-B7 cover every accepted step and compose in the accepted dependency order. Independently checking the central interfaces gives the following.

- B1 is exact because \(\sigma(r)-\sigma(-r)=r\), so each realized depth-two iterate and the exact finite aggregate antisymmetrize to \(\langle v_\omega,x\rangle\).
- B2's four tie cases are exhaustive. If both antipodal source predictions are correct, then \(h(x)(G(x)-G(-x))>0\); its contrapositive proves the pointwise indicator bound even when either source score or \(A(x)\) is zero. Change of variables then gives exactly the factor \(2\).
- B3 applies the universal premise to a legal symmetrized distribution. The resulting nonnegative finite-domain loss has expectation at most \(2\varepsilon\), so at least one realization has loss at most \(2\varepsilon\). No simultaneous realization is asserted.
- B4 selects exactly one member of every antipodal pair, always with label \(-s_0\). On those representatives, tie-resolved correctness is exactly strict positivity of the signed score, and homogeneity transfers strict correctness to the antipode.
- B5's closest-point argument proves that strict infeasibility forces zero into the convex hull of the current signed vectors. Minimal-support affine pruning gives \(k\le n+1\). Positive coefficients summing to one force a nonpositive signed product for every \(w\); since every witness label is \(-s_0\), both a negative product and equality are errors. Uniform counting therefore gives the required \(1/k\) lower bound.
- B6 compares the B3 upper bound and B5 lower bound on the identical target, witness distribution, score class, and tie-resolved loss. The primitive strict gap rules out infeasibility.
- B7 consumes only the resulting target-wise separators and the fixed identity map, so the common-map and dimension conclusions follow without a random or target-dependent feature object.

No theorem-level block, boundary branch, or accepted Step ID is omitted.

## Dependency And Assumption Audit

The dependency graph is acyclic: B1 feeds B2-B3; B4 independently defines the strict system; B5 consumes only the conditional B4 infeasibility interface; B6 is the first meeting of the approximate and obstruction branches; and B7 consumes B6. Every theorem-facing generated object has a producer before its consumers: \(A_\omega,v_\omega\), the loss-transfer inequality, the distribution-wise approximate vector, \(Q_h\), the convex certificate and \(\mathcal D_h^\star\), the exact separator, and the fixed feature law.

Conditional infeasibility is a local proof hypothesis inside B5 and is discharged by contradiction in B6, not promoted to a theorem assumption. No stability, boundedness, gate, support, recurrence, good-event, margin, or common-randomness condition is consumed. Thus the unconditional target is not completed by assuming a missing generated condition.

## Citation And Tool Audit

No theorem-critical external result is consumed. The literature named in `technical_survey.md` is contextual only. The diagnostic restates all needed tools in current notation.

- The ReLU identity uses the exact bias-free depth-two network, the same parameters and latter-half indices, and is valid at zero. The source kink-gradient convention changes parameter generation but not the function identity.
- The tie comparison uses the exact `sign_{s_0}` convention, odd labels at antipodes, and the same strict source error. All four \((s_0,h(x))\) cases and zero-score branches match the branch convention.
- Expectation-to-existence uses the exact law \(\mathbb Q_{\mathcal D^{\mathrm{sym}},h}\) and outputs only a vector for the fixed pair, matching the consumed interface.
- The convex alternative uses the same Euclidean coordinates and signed vectors \(z=h(q)q\) as the strict system. The closest-point inequality supplies the strict separator if the minimizer is nonzero; affine dependence preserves both the vector sum and coefficient sum while deleting support.
- The witness conversion uses the identity \(\langle w,h(q)q\rangle=h(q)\langle w,q\rangle\) with no transformed object or metric. The label \(-s_0\) supplies the exact equality-as-error bridge.

The direct derivations therefore pass source-convention, object-target, raw-assumption-to-interface, and conclusion-interface checks. There is no unresolved source identity, wrapper, or residual-to-target bridge.

## Quantitative Dependence Audit

The diagnostic exposes \(n,m,S,T,\eta,\varepsilon,\mathcal H\), with \(S=m(n+1)\), and introduces \(\mathcal D,h,\omega\) only under the required intermediate quantifiers. There are no hidden constants. The sole loss degradation is the explicit factor \(2\), and the finite obstruction has the exact support bound \(k\le n+1\). The strict specialization retains the equality boundary and uses precisely \(2\varepsilon<1/(n+1)\).

The mode changes are legal: expected learner error becomes deterministic existence for each fixed pair, not a high-probability or simultaneous event; the horizon remains the fixed finite \(T\); Euclidean norm is used only inside the finite convex alternative; and the final metric is exact tie-resolved sign representation. At \(\varepsilon=0\) the same argument reaches exact representation. The final chain \(n\le S\le TS\) uses only \(m,T\ge1\) and has no \(\eta\)-dependence.

## Scope And Closure Review

The scope-and-closure certificate covers every theorem-critical structural equality, signed comparison, generated separator, strict-system interface, support claim, witness lower bound, quantitative exactification, common-map closure, and baseline specialization. Each row identifies its primitive or earlier-derived mechanism source, exact local relation, producer-consumer path, boundary stress, and `step-local` classification.

There is no all-time, limiting, invariant, basin, or recurrence closure. The only time accumulation is a finite sum of pointwise zero residuals. The pairwise error inequality integrates without an omitted defect and retains its factor \(2\). The convex accumulation has positive coefficients with unit total and a zero-residual support-pruning relation. Exactification is one finite contradiction per target. These mechanisms are scope-compatible and noncircular.

The applicable entry and boundary traces also pass. B1 is active at initialization, after the first update, at ReLU kinks, and for zero parameters. B2 includes every source tie and \(A(x)=0\). B5 remains active at \(p=0\), \(w=0\), equality of a witness score, \(k=n+1\), and \(n=1\). B6 remains active at \(\varepsilon=0\), while the one boundary where it would cease to work is explicitly excluded. B7 needs no transition: the point-mass map is already exact, and the empty class is vacuous.

All exported interfaces have feasible raw controls and exact target-side objects. Residuals are zero except for the explicit multiplicative loss factor \(2\), which is exactly dominated by the primitive strict threshold. The generated-output flow is legal and no closure or assembly label creates an unsupported output.

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| B1 / `step_001`: \(A_\omega=\langle v_\omega,\cdot\rangle\) | Exact structural linearization used by B2-B3 | \(\sigma(r)-\sigma(-r)=r\) and absence of bias | Primitive depth-two architecture plus direct derivation | Gives equality of the exact consumed score, not a surrogate | Same ReLU, parameters, indices, aggregate, and Euclidean pairing; kink-gradient convention is immaterial | \(f_t(x)-f_t(-x)=\langle(W^{(t)})^Ta^{(t)},x\rangle\), then sum | Realized parameters directly export \(A_\omega,v_\omega\) | Pointwise residual is zero | Finite accumulation of zero residuals | Architecture produces the identity before B2-B3 | Producer B1; consumers B2-B3 | Initialization, first update, kinks, zero parameters, \(T=1\) all pass | `step-local` | None |
| B2 / `step_002`: tie-aware loss transfer | Signed structural comparison used by B3 | Oddness, fixed tie label, and B1 | Primitive oddness/tie convention plus exact B1 score | Simultaneous correctness forces the strict sign required for A-correctness | Same labels, source strict error, score, and antipodal distribution convention | \(e_A(x)\le e_G(x)+e_G(-x)\), hence \(L_D(A)\le2L_{D^{\rm sym}}(G)\) | Two exact source errors and oddness export the required loss inequality | Same target and loss; exact change of variables; only factor \(2\) | Pointwise nonnegative inequality integrates with no omitted class | Oddness and B1 precede B2; B2 precedes B3 | Producer B2; consumer B3 | All four \((s_0,h(x))\) cases, source ties, and \(A(x)=0\) pass | `step-local` | None |
| B3 / `step_003`: distribution-wise \(2\varepsilon\) vector | Expectation/mode conversion used by B6 | Universal premise on \(D^{\rm sym}\) plus B1-B2 | Primitive universal success and accepted earlier outputs | Produces exactly an identity-coordinate vector for the original distribution | Same learner, law, target, finite horizon, aggregate, and tie-resolved loss | \(\mathbb E_\omega L_D(\langle v_\omega,\cdot\rangle)\le2\varepsilon\Rightarrow\exists v:L_D(v)\le2\varepsilon\) | Universal expected bound legally applies to every symmetrization | Same original-\(D\) loss and vector; factor \(2\) retained | One-shot existence; no union, probability upgrade, or time defect | Premise and B1-B2 produce the vector before B6 | Producer B3; consumer B6 | Nonsymmetric/point-mass \(D\), \(v=0\), \(T=1\), and \(\varepsilon=0\) pass | `step-local` | None |
| B4 / `step_004`: strict system on \(Q_h\) | Exact support/sign interface used by B5-B6 | Oddness, homogeneity, and representative label \(-s_0\) | Primitive target and tie rule plus direct derivation | Strict signed correctness on representatives is equivalent to exact full-cube representation | Same identity coordinates, target, tie label, and homogeneous score | \(h(q)\langle w,q\rangle>0\) on \(Q_h\) iff exactness on \(Q_h\cup(-Q_h)\) | One representative per pair and its label directly export the strict system | Antipodal score relation is exact; residual zero | Finite conjunction, no iterative defect | \(Q_h\) is defined before infeasibility is tested | Producer B4; consumers B5-B6 | Either tie label, zero score, and \(n=1\) pass | `step-local` | None |
| B5 / `step_005`: zero certificate with \(k\le n+1\) | Structural infeasibility certificate and support source | Closest point in \(\operatorname{conv}(Z_h)\) and affine pruning | B4 conditional infeasibility plus direct finite Euclidean derivation | Failure of a common strict positive inner product yields exactly the needed nonnegative zero certificate | Same signed vectors, strict inequalities, dimension, and inner product as B4 | \(\langle p,z\rangle\ge\lVert p\rVert_2^2\); hence \(p=0\); affine dependence prunes to \(k\le n+1\) | Finite \(Z_h\), positive coefficients, and preserved vector/scalar sums export the certificate | Certificate is in the target coordinates with zero residual | Unit positive coefficient budget; pruning introduces no defect | Conditional B4 infeasibility produces the certificate before its lower-bound use | Producer B5 certificate sub-block; consumers B5 lower bound and B6 | \(p=0\), \(k=n+1\), \(n=1\), and zero-coefficient pruning pass | `step-local` | None |
| B5 / `step_005`: uniform witness lower bound | Structural signed lower bound used by B6 | Positive zero certificate and labels \(-s_0\) | Earlier B5 certificate and B4 representative convention | A nonpositive signed product is exactly a tie-resolved error | Same score, target, uniform distribution, and tie convention | \(\sum_i\alpha_i h(q_i)\langle w,q_i\rangle=0\Rightarrow L_{D_h^\star}(w)\ge1/k\ge1/(n+1)\) | Positive weights and finite support export one erroneous uniform atom for every \(w\) | Signed product equals target-score product; no metric or object residual | Finite uniform counting; no coefficient lower bound is required | Certificate precedes distribution and lower-bound export | Producer B5; consumer B6 | \(w=0\), negative products, equality, and \(k\le n+1\) pass | `step-local` | None |
| B6 / `step_006`: strict exactification | Quantitative theorem closure for each target | B3 upper bound, B5 lower bound, and strict high-accuracy premise | Two independently derived interfaces plus primitive threshold | Both inequalities concern the identical target, witness distribution, score class, and loss | Same tie, metric, coordinates, and quantifier convention | \(\inf_wL\le2\varepsilon<1/(n+1)\le\inf_wL\), contradiction | Upper/lower interfaces and positive numerical gap directly export strict feasibility | No distribution, object, metric, or probability residual | One finite contradiction; factor \(2\) and support cost exposed | B3 and B5 precede B6; feasibility is not assumed | Producer B6; consumers B7 and final theorem | \(\varepsilon=0\) and \(v=0\) pass; equality boundary is explicitly excluded | `step-local` | None |
| B7 / `step_007`: common identity map and dimension chain | Common-feature, probability, and final theorem closure | B6 separators, identity map, definitions, and \(m,T\ge1\) | Accepted derived separators plus primitive integer setup | Target-specific weights with one fixed map give exactly both complexity interfaces | Produced and consumed map is literally \(x\mapsto x\); no procedure change | Exactness gives point-mass success probability one and \(\operatorname{dc}^{1/2}\le\operatorname{dc}\le n\le S\le TS\) | Separators and fixed map directly export every final interface | Feature and score residuals are zero | No accumulation; point-mass event is exact | B6 produces all separators before B7 | Producer B7; consumer final theorem | Empty class and \(m=T=n=1\) pass | `step-local` | None |
| Exact/noiseless and empty-class baseline | Baseline invariance | Same B1-B7 interfaces at \(\varepsilon=0\), or vacuous target quantifiers | Primitive specialization and already-derived exact bridges | Preserves the original exact representation conclusion, not only vanishing error | Source protocol, tie rule, horizon, and identity target are unchanged | \(0<1/(n+1)\) closes B6; empty class needs no separator | Zero-error intermediate interface or vacuity exports the original theorem | No surrogate, limiting residual, or probability loss | Finite exact argument or no target branch | Baseline premise precedes consumers and exactness is concluded | Primitive specialization plus B3-B7; final theorem consumes it | Mechanism remains active at \(\varepsilon=0\); empty class is already true | `step-local` | None |

## Hard-Step Localization Audit

Every theorem-critical obligation is `step-local` under the unchanged accepted sketch. `step_001` instantiates an exact scalar identity and finite sum. `step_002` instantiates the fixed four-case tie analysis and integration. `step_003` invokes the already universal premise and extracts one realization. `step_004` proves the fixed representative equivalence. `step_005`, although the highest-risk unit, has a complete same-setting mechanism and output interface: closest-point separation, coefficient-preserving affine pruning, and tie-aware uniform counting. `step_006` compares already-produced bounds at the fixed strict scale. `step_007` applies the definitions to the already-produced separators.

None of these tasks needs a new assumption, Step ID, dependency, source, convention bridge, residual bridge, generated-output allocation, mode change, or weakened conclusion. In particular, the theorem-critical support and lower-bound claims are not justified by the label "later geometry"; their concrete direct mechanisms and source objects are already exposed.

## Early Idea-Failure Screen

- Contract contradiction: none within the exact specialized setting. The proof uses only properties supplied by the depth-two, bias-free, odd, high-accuracy theorem contract.
- Missing mechanism: none. Exact antisymmetrization, strict tie transfer, convex support, signed witness counting, and quantitative domination each have an adequate primitive or earlier-derived source.
- Source-convention and object-target stress: all direct derivations use the branch's actual score, tie rule, Euclidean coordinates, target, distribution, and feature map. No transformed or surrogate object is transferred to the theorem target.
- Residual and persistent-defect stress: the algebraic, antipodal, convex, and feature-map bridges have zero residual. The sole factor \(2\) is exposed and strictly dominated. No additive, adversarial-sign, empirical, event-level, or accumulated defect remains.
- Limiting and boundary stress: ReLU kinks, zero parameters, source ties, \(A=0\), \(w=0\), \(p=0\), \(n=1\), \(T=1\), \(k=n+1\), \(\varepsilon=0\), and empty \(\mathcal H\) preserve the route. The equality case for the numerical threshold is correctly outside the primitive setting.
- Entry-state trace: the only iterative object is the SGD trajectory, but the B1 identity is valid at initialization and after every first or later update without an activation condition. No later block requires an iterative invariant.
- Generated-condition and mode stress: every generated output has a legal producer, and no common trajectory, probability upgrade, or uniform-in-time event is needed.
- Baseline invariance: the exact/noiseless and empty-class conclusions are preserved exactly.
- Same-setting repair plausibility: no repair is needed. Removing bias-freeness/depth two, oddness, or the strict accuracy condition would require a theorem-contract change, but those excluded regimes are not unresolved obligations of this branch.

The early screen therefore finds no sketch/interface defect or idea/theorem-contract defect inside the reviewed theorem.

## Review Rationale

The global diagnostic is complete, faithful, and independently viable at theorem level. The tie-sensitive transfer, expectation-to-existence conversion, strict-system alternative, support-\((n+1)\) certificate, uniform witness lower bound, and strict high-accuracy contradiction all have source-compatible, noncircular producer-consumer interfaces under the unchanged accepted sketch. Every remaining obligation is a bounded local derivation, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
