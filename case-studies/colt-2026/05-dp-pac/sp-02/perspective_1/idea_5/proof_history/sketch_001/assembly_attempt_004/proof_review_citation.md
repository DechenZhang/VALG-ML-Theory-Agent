# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public Step 5 citation chain does not discharge the sequence premise required by its cited dependency. Proposition prop:step-005-privacy-negligibility fixes an arbitrary sequence of nonempty finite classes satisfying only |C_kappa| -> infinity, but its estimate eq:app-a94 comes from Lemma lem:step-005-factorization. That lemma takes the sequence quantities from Lemma lem:step-005-ceiling, which in turn takes them from Proposition prop:step-004-sample-subpower. The latter is scoped through Proposition prop:step-004-q-subpower to sequences satisfying the exact superpolynomial premise (SP). Size divergence alone does not imply (SP), so the Step 5 proposition applies its named lemmas to a newly quantified sequence without proving that the sequence lies in their domain. Consequently the public proof of privacy negligibility is not closed as stated. Proposition prop:step-005-source-allowance, the Step 6 rate and privacy certificates, and the final main-theorem proof all consume this defective proposition. The accepted step_005 proof operates inside the formalized goal's ambient (SP) scope, so this is an assembly-introduced statement-scope defect. The shallow repair is either to add the exact (SP) premise to Proposition prop:step-005-privacy-negligibility or to rebase Lemmas lem:step-005-ceiling and lem:step-005-factorization on the setting-defined exact N_a formula and Lemma lem:step-002-sc-domination, which proves the broader Step 5 statement without using Proposition prop:step-004-sample-subpower.

## Nonblocking Concerns

1. No TeX engine is installed in the review environment, so citation, label, and reference hygiene was checked statically rather than against a fresh compilation log.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The only external theorem used is Bun--Livni--Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3, Section 5.2, Theorem 17, source label thm:selection. Direct inspection of the v3 source archive (SHA-256 8c023b35df7296a311ce59c194857db5701f924db7fc4abf4a63af9aa7eb189c) confirms the arbitrary-output conclusion, symmetric fixed-length one-record replacement privacy, and the two-term sample rate restated as Theorem thm:step-001-blm-selection.
- Source fidelity: The public restatement preserves the source domain and codomain, permits the frequent accurate witness outside the class, retains both source rate terms, and specializes only to alpha_0 = beta_0 = 1/8, epsilon_0 in (0,1), and delta in (0,e^-2]. The source construction depends on the fixed producer and public parameters, not on the realizable distribution or its witness. The universal constant extraction is valid in this restricted parameter regime.
- Instantiation and object mapping: The appendix explicitly maps the source objects to C^plus/minus, Q^plus/minus, G_C^plus/minus, m_C, eta = q^(-a), alpha_0, beta_0, epsilon_0, and delta_a(q,L). Lemma lem:step-001-binary-recoding proves risk, realizability, product-law, atom-event, measurable-output, and ordered-adjacency transport in both directions. Lemma lem:step-001-blm-admissibility checks all parameter domains, including q = 1, m_C = 1, eta = 1, and delta_a(q,L) <= e^-2. Proposition prop:step-001-uniform-blm preserves the required distribution-free quantifier order.
- Quantitative regime fidelity: Equation eq:app-a6 retains the exact structural m/eta term, both logarithmic factors, epsilon, alpha, beta, and delta dependencies. The later specialization and padding use named public results and preserve the same learner, exact integer arity, arbitrary output range, PAC mode, and replacement-DP convention. No source dependence is silently dropped.
- Assumption discharge: All hypotheses of the external BLM theorem and all Step 1 object mappings are discharged. The internal Step 5 application described in Blocking Issue 1 is not discharged: the cited ceiling and factorization chain carries (SP), while Proposition prop:step-005-privacy-negligibility states only size divergence.
- Main theorem internal references: The main theorem in 3_main.tex refers only to Assumption assump:polynomial-global-stability and introduces no appendix-local theorem, step ID, or proof-local constant in its statement.
- Appendix cited-result traceability: All 22 accepted local units occur under matching public theorem-style labels, and their target-step derivations are present. The sole additional step-prefixed public label is the external theorem restatement thm:step-001-blm-selection.

| Accepted step | Local units in unit order | Public appendix labels in the same order |
| --- | ---: | --- |
| step_001 | 4 | lem:step-001-binary-recoding; lem:step-001-blm-admissibility; prop:step-001-uniform-blm; prop:step-001-binary-private-learner |
| step_002 | 2 | lem:step-002-sc-domination; prop:step-002-exact-padding |
| step_003 | 3 | lem:step-003-log-correction; prop:step-003-exact-privacy-schedule; prop:step-003-bounded-q-activation |
| step_004 | 4 | lem:step-004-iterated-log-subpower; prop:step-004-q-subpower; lem:step-004-schedule-subpower; prop:step-004-sample-subpower |
| step_005 | 5 | lem:step-005-ceiling; lem:step-005-factorization; lem:step-005-x-supremum; prop:step-005-privacy-negligibility; prop:step-005-source-allowance |
| step_006 | 4 | prop:step-006-sequence-learners; prop:step-006-rate-certificates; lem:step-006-privacy-relaxation; prop:step-006-omega-contradiction |

- External BibTeX entries: Both public citation commands use bun2021equivalence, and reference.bib contains exactly that source identity with arXiv id 2003.00563 and the v3 revision note. No external source is used without a matching citation.
- Internal label/ref pairs: Static scanning found no duplicate labels, unresolved ref or eqref targets, malformed bare reference or citation fragments, or internal theorem references made through citation commands. Unreferenced section and equation labels do not affect proof authority.
- Unsupported standard facts: None. The scalar ceiling, logarithm, exponential-polynomial, integration, differentiation, padding, postprocessing, and reverse ordered-privacy steps used by the proof are displayed or proved. The single use of "similarly" accompanies an explicit reverse ordered inequality and does not hide a cited result.

