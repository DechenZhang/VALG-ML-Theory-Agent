# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public VC-arm proof has a verified notation-provenance break. The
   error-trace family `\(\mathcal E_{\bar C}(\bar S)\)` is first consumed in
   `latex_template/5_appendix.tex` at the null-branch trace statement and is
   later union-bounded through `\(\Pi_{\bar C}\)`, but neither object is
   defined anywhere in the public TeX bundle. More seriously, the Step 008
   stage-map lemma says to "define `\(\rho,\gamma,H_i^r,p_r\)` by (1)--(3)"
   even though that subsection begins with (14): the scalar `\(\rho\)`, the
   master and block errors `\(e(\bar h),e_i(\bar h)\)`, and the actual
   restriction `\(H_i^r\)` have no public definitions before they are used.
   The exact missing dictionary is present in the accepted internal
   `proof_steps/step_008/proof.md`, equations (1)--(3). These objects drive
   the trace event, cross-block inclusion, DDim descent, mechanism output,
   and empirical certificate, so deleting access to the workflow files
   leaves the VC-arm derivation incomplete as a paper proof.
2. The marked PAC conversion has a second verified assembly omission.
   Step 013 first uses `\(\bar S_{-i}^\pi\)`,
   `\(\widehat{\operatorname{err}}_{-i}^\pi\)`, `\(r(h)\)`,
   `\(F_\alpha\)`, and the full marked-experiment law
   `\(\widetilde{\mathbb P}_{\bar D,\bar c}\)` in its candidate event,
   pathwise inclusion, and integration ledger without introducing them.
   The accepted `proof_steps/step_013/proof.md` defines the iid sample,
   partition, marked experiment, producer complement, complement loss,
   population-risk alias, and failure event in equations (13)--(15).
   Without that setup, the Fubini/conditioning argument and the final marked
   projection cannot be checked from the public bundle. This is an assembly
   omission, not a counterexample to the accepted Step 013 argument.

## Nonblocking Concerns

1. `latex_template/1_intro.tex` contains the literal token `qquad` rather
   than `\qquad` between the displayed definitions of `\(R_{\mathrm{fin}}\)`
   and `\(R_{\mathrm{old}}\)`. This is a typesetting defect but does not alter
   the intended rate formulas.
2. The old quotient kernel `\(K_{\mathrm o}\)` and universal rate constant
   `\(K_{\mathrm O}\)` remain distinguished only by letter case. Their uses
   are mathematically consistent, but the typography is easy to misread.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the standalone VC-sensitive learner theorem,
  especially its unconditional population-risk bridge. Its accepted
  dependency chain is mathematically coherent, but the live public bundle
  omits definitions needed to state that chain.
- Standalone theorem attack: removing access to `setting.md` and the internal
  proof-step files makes the trace union and source restrictions undefined,
  then makes the marked bad-risk event and its governing probability law
  undefined. The appendix therefore cannot independently support the PAC
  conclusion advertised by the main theorem.
- Weakest step-level claim: the Step 013 marked producer-block reduction.
  In the accepted proof, the full-path inclusion precedes every conditioning
  argument; only afterward are the data-independent partition and producer
  block fixed. Thus no independence conditional on `\(J=i\)` is used, and
  the underlying step survives the adversarial attack once its omitted
  setup is restored.
- Candidate counterexamples or stress cases: `\(d=0\)`, `\(d=1\)`,
  `\(v=1\)`, `\(v=d\)`, `\(k=2\)`, repeated quotient records, conflicting
  arbitrary labels for privacy, empty restrictions, zero-DDim leaves,
  mechanism failure, fallback values also occurring in lists, infinite
  `\(C\)`, and improper outputs were checked. The named accepted results
  cover these regimes; no step-level counterexample was found.
- Explicit-rate stress cases: both teacher and block ceilings remain paid.
  The VC arm retains its two-term `\(R_{\mathrm{VC}}\)` expression and
  exponent four, the old arm exposes `\(d^5\)` with exponent six, and the
  finite arm retains its direct pure-DP tail. The selected-learner
  `\(N_*\delta\to0\)` conclusion is made only under the displayed VC
  schedule, while every fixed `\(0<\delta<1\)` remains covered.
- Appendix self-contained attack surface: this review is pinned to assembly
  attempt 5, assembly-report SHA-256
  `7169e916a768afa4a4698f3231ffd3d3c5ac3b08a068365e2cc8188b779a7b87`,
  and live appendix SHA-256
  `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`.
  The shallow repair is to restore concise paper-facing definitions before
  their first consumers, inside the appropriate named statements or proof
  setup; no source/application inventory needs to be reinstated wholesale.
- Scope or mode upgrade attacks: utility remains unconditional realizable iid
  high probability uniformly over all `\(D,c\)`, whereas privacy remains
  event-free on every raw neighboring labeled input. Exact quotient-to-raw
  risk transfer, adaptive privacy composition, and fixed-versus-scheduled
  `\(\delta\)` modes show no unsupported upgrade.
- Remaining risk: after the two missing setup dictionaries are restored, the
  inspected accepted proof chain has no verified mathematical break. A fresh
  final review should nevertheless rescan notation provenance because the
  successful TeX build cannot detect undefined mathematical symbols.

Verdict alignment: `BLOCKING` has numbered blocking issues,
`Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
