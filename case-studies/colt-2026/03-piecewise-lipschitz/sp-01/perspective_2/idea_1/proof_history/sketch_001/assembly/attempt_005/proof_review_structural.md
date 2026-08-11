# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The proof of Lemma~`\ref{lem:kernel-caps}` in `latex_template/5_appendix.tex` contains substantive mathematical work absent from the accepted `proof_steps/step_003/proof.md` derivation and its accepted cited-result map. In particular, the appendix newly invokes and instantiates a kernel-product theorem, checks product-measure sigma-finiteness and whole-space mass for Radon--Nikodym and measure uniqueness, fixes an explicit generating pi-system, and introduces the finite measure `\rho(E)=\int_E|q|\,d\lambda` together with a truncation inequality to prove absolute continuity of its integral. It also adds explicit cited pi-lambda and monotone-convergence discharges in Proposition~`\ref{prop:matching-disintegration}`. The accepted step instead records no external result as proof authority and gives the rational-endpoint passage only through the higher-level statement that absolute continuity of the integral preserves the strict inequality. These additions are new cited-result applications, assumption discharges, and an inequality, not notation reconciliation or direct composition of accepted claims. They therefore cannot be introduced during assembly. Incorporate any needed strengthened derivation into `step_003`, obtain a fresh accepted step review, and only then reassemble the appendix.

## Nonblocking Concerns

None

## Suggested Repair Depth

step

## Smallest Candidate Repair Target

/proof-step step_003

## Structural Audit

- Goal alignment: The attempted main theorem and fixed-cap corollary preserve the exact goal, primitive assumptions, quantifier order, probability mode, horizon mode, norm mode, and exposed dependence in `setting.md`.
- Dependency closure: All seven accepted sketch-step dependencies close in order, and the current proof/review pairs match their recorded accepted hashes and producer attempts. The unreviewed appendix-level result applications identified above are outside that accepted dependency closure.
- Sketch-step coverage: Every required step `step_001` through `step_007` is used in mathematical order, and each target-step assembly is represented in its corresponding appendix subsection.
- Assembly discipline: Blocking. The Step 003 appendix proof adds the unreviewed derivation, inequalities, cited-result mappings, and assumption discharges listed in Blocking Issue 1.
- LaTeX bundle structural synchronization: The audit is bound to `assembly_report.md` SHA-256 `d7ad004fe25191cb60cb2d2a2bc14f8a2949f6f1e01767f3bd3859376e7f14a1` and `latex_template/5_appendix.tex` SHA-256 `65c76b5f5ca4e8a82d8e1531ad205e07fdba65bf9b61527f52b026a2fb90abaf`. All nine live bundle-file hashes agree with the assembly report, and the required file/layout structure is present; substantive source synchronization fails only as stated above.
- Main theorem self-containedness: The main theorem is reader-facing and self-contained relative to the setup and preliminaries, does not use appendix-local authority, and the fixed-cap corollary states its auxiliary choices and uses the named appendix specialization bridge permitted by the contract.
- Theorem-style statement shape: Public theorem-style units state their assumption bases and local conditions, use paper-facing names, and avoid public claim, hypothesis, invariant, workflow, history, and audit-scaffolding dependencies.
- Explicit-rate and bridge structure: The technical rate and fixed-cap specialization expose the required dependencies, conditions, probability conversion, term absorptions, and hidden-constant scope through the named bridge.
- Derivation-over-notation: Required rate, cap, chart, and witness derivations remain visible; proof-local helper objects do not leak into the reader-facing theorem interface.
- Appendix local-unit coverage: All 23 used accepted non-atomic units and all seven target-step assemblies were directly compared against the appendix proof bodies. Their accepted derivations and final theorem composition are present, but Step 003 is not source-faithful because of the additional unreviewed proof content in Blocking Issue 1.
- Internal label/ref structure: Static inspection found unique labels, no missing internal references, no malformed bare reference or citation commands, and BibTeX entries for every cited key. No shared-template placeholder or prohibited workflow phrase remains.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
