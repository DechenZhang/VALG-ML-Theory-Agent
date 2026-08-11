# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. A fresh TeX compilation could not be reproduced because the available Tectonic binary panics in its local `system-configuration` runtime before reading the TeX input. Static checks of citations, bibliography entries, labels, and references pass.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem identity: The only external theorem used is Bun--Livni--Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3, Section 5.2, Theorem 17, source label `thm:selection`. Direct inspection of the v3 source file `privatelittlestone.tex` (SHA-256 `4b4cf5c00ee876ed6abbc37e5fce08f63effbfa68c4ceb4f50f645872a555882`) confirms the full-function output space, symmetric fixed-length one-record replacement privacy, and exact two-term asymptotic sample dependence restated publicly as Theorem `thm:step-001-blm-selection`.
- Source fidelity: The public restatement preserves the source domain and codomain, permits the frequently accurate witness outside the class, and retains both terms in the source sample bound. It specializes only to `alpha_0 = beta_0 = 1/8`, `epsilon_0 in (0,1)`, and `delta in (0,e^-2]`. The source algorithm depends on the fixed producer `G` and public parameters, not on the realizable distribution or its witness, so the use of one universal constant `C_BLM` in this restricted regime is justified.
- Instantiation and object mapping: The appendix explicitly maps the source objects to the binary recodings of the class, distribution, and producer; `m_C`; `eta = q^{-a}`; `alpha_0`; `beta_0`; `epsilon_0`; and `delta_a(q,L)`. Lemma `lem:step-001-binary-recoding` verifies risk, realizability, iid product law, the atom-probability event, measurable arbitrary-output scope, and ordered adjacency in both directions. Lemma `lem:step-001-blm-admissibility` checks the source parameter domains, including the boundary cases `q=1`, `m_C=1`, and `eta=1`. Proposition `prop:step-001-uniform-blm` preserves the required distribution-free quantifier order.
- Quantitative fidelity: Equation `eq:app-a6` retains the structural `m/eta` term, the second source term, both logarithmic factors, and the complete dependence on privacy, accuracy, confidence, and approximate-privacy parameters. The specialization and padding steps preserve the same learner, exact integer arity, arbitrary output range, PAC probability mode, and replacement-DP convention. No source dependence is silently discarded.
- Repaired Step 5 scope chain: The current Lemma `lem:step-005-ceiling` derives its ceiling directly from the exact pointwise definition of `N_a` and does not invoke the `(SP)`-scoped Step 4 sample-subpower proposition. The ensuing factorization and supremum argument establish `(PN)` from size divergence, exact `(LD)`, pointwise `(PS)`, and a uniform structural-factor bound. Thus Proposition `prop:step-005-privacy-negligibility` now discharges every premise for the arbitrary size-divergent sequence it quantifies over; the attempt-4 scope defect is absent.
- Step 6 provenance: The final construction keeps the `(AS)` certificate inherited from Step 4 and the `(PN)` certificate inherited from the repaired Step 5 as distinct dependency chains. Step 6 does not use `(AS)` to justify `(PN)` or otherwise reintroduce the former scope defect.
- Assumption discharge: Every hypothesis of the external BLM theorem and every object translation used at its application are explicitly discharged. The later internal propositions state or inherit their sequence hypotheses consistently. All six current proof-step reviews, the proof-sketch review, and the global-proof review are accepted, and the current assembly exposes the accepted claims without strengthening their cited premises.
- Main-theorem reference discipline: The theorem in `3_main.tex` refers only to the numbered global-stability assumption. Its statement contains no appendix-local result, workflow step identifier, or proof-local constant.
- Appendix traceability: All accepted local proof units appear under matching public theorem-style labels with their target derivations. The only additional public step-prefixed label is the BLM theorem restatement; it is clearly identified as an external cited result rather than an internally accepted proof unit.
- External bibliography: The two public citation commands both resolve to `bun2021equivalence`, and `reference.bib` contains the matching Bun--Livni--Moran entry with arXiv identifier `2003.00563` and the v3 revision information. No external result is used without a matching bibliography entry.
- Internal references: Static scanning found no duplicate labels and no unresolved `ref` or `eqref` target. It also found no malformed bare citation/reference fragment, no internal theorem referenced through an external citation command, no workflow-artifact citation, and no forbidden claim/hypothesis/invariant environment.
- Unsupported standard facts: None. The ceiling estimates, logarithmic bounds, exponential-versus-polynomial limits, padding, postprocessing, and reverse ordered-privacy argument used by the proof are either displayed or proved at the point of use. No appeal to a standard fact hides an additional citation-dependent obligation.
