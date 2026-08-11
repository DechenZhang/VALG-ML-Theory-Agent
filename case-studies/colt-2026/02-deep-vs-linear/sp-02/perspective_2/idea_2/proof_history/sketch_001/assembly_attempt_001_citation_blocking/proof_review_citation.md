# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/4_proof_sketch.tex:21` invokes Sion's theorem as the external minimax authority without a citation command. The later appendix citation `\citep[Theorem~3.4]{sion1958minimax}` and its matching BibTeX entry do not make this separate public-prose invocation BibTeX-backed. The citation-review contract expressly rejects an external source mentioned in public prose without a citation command and matching bibliography entry. The accepted `step_004` application and the appendix restatement are valid, so the smallest repair is to add the existing Sion citation at this proof-sketch invocation without changing any mathematical statement.

## Nonblocking Concerns

1. `latex_template/5_appendix.tex:623` cites Folland for bounded Fubini but gives no theorem or page locator. The text nevertheless identifies the theorem, instantiates both probability laws and the integrand, and discharges measurability and integrability locally, so applicability is checkable; a precise locator would improve source navigation.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The appendix invokes exactly two external results: bounded Fubini from Folland and Sion (1958), Theorem 3.4. Sion's theorem is restated with nonempty compact convex spaces, the required semicontinuity and quasiconcavity/quasiconvexity orientations, and only the sup-inf/inf-sup equality supplied by the source. All attainment claims are proved separately. No Dynkin or pi-lambda theorem is invoked in this branch.
- Source fidelity: The `sion1958minimax` entry matches Maurice Sion, *On General Minimax Theorems*, Pacific Journal of Mathematics 8(1), 171--176 (1958), DOI `10.2140/pjm.1958.8.171`; the cited locator and statement match Theorem 3.4. The `folland1999real` entry identifies the second edition of Gerald B. Folland's *Real Analysis* (1999), and the bounded Fubini conclusion used is standard and accurately stated. The missing Folland locator is the nonblocking concern above.
- Instantiation and object mapping: For Sion, the maximizing space is `M=K_A`, the minimizing space is `N=Delta(S)`, and the payoff is `G=L_h`; the proof preserves the player orientation and current notation. For Fubini, the measures are `mu_A` and `D`, and the integrand is `a(u,x)=h(x)g_{u,R^0_{D,h}}(x)`.
- Quantitative regime fidelity: Neither external result imports a rate, constant, confidence level, horizon change, or asymptotic regime. The margin `rho=1-2 epsilon` is derived from the binary loss identity and the primitive universal guarantee, while the dimension bound is copied from the primitive mean-response-rank certificate with no cited-rate specialization.
- Assumption discharge: Compactness and convexity of `K_A` and `Delta(S)`, continuity/affinity of `L_h`, and the required semicontinuity and quasi-convexity properties are established before Sion is applied. The setup and adaptive-interface assumption supply measurability for Fubini, and the pointwise bound `|a|=1` supplies integrability under the two probability laws.
- Main theorem internal references: `latex_template/3_main.tex` references only the four numbered assumptions, as permitted; it contains no appendix, local-result, step-ID, unit-ID, or workflow-provenance reference.
- Appendix cited-result traceability: Every accepted dependency used in the appendix is restated through a named, labeled theorem-style result in current notation. The current accepted `step_004` attempt correctly maps Sion's theorem, and the `step_003` Fubini interchange retains its full local discharge. The only blocking traceability defect is the separate uncited Sion invocation in the public proof sketch.
- External BibTeX entries: The two citation commands use `folland1999real` and `sion1958minimax`, and both keys have matching entries in `reference.bib`. A full Tectonic run produces a nonempty bibliography and finishes without unresolved citations. The proof-sketch Sion mention remains defective because it has no citation command at that location.
- Internal label/ref pairs: The bundle has 33 unique labels and 27 referenced labels, with no duplicate labels or unresolved targets. All dependency references identify assumptions or theorem-style result types; the six unreferenced labels are appendix subsection labels and create no citation defect. The final Tectonic run finishes without unresolved-reference warnings.
- Unsupported standard facts: Finite-dimensional compactness, simplex reduction, compact finite-intersection closure, binary loss conversion, and coordinate transfer are proved in the bundle rather than left to vague authority. Bounded Fubini is cited and discharged. Sion is cited and discharged in the appendix, but its uncited public proof-sketch invocation is acceptance-blocking under the explicit public-prose citation rule.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
