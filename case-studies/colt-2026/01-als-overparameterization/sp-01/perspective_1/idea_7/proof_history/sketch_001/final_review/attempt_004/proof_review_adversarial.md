# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. **The Step 002 proof and its concluding composition invoke two nonexistent equation interfaces.** The accepted Step 002 source tags the target-window definition $W_{ij}$ as (21) and the competitor-event definition $C_{ij}$ as (22). In the attempt-4 appendix, the corresponding definitions at `latex_template/5_appendix.tex:695` and `latex_template/5_appendix.tex:699` are present but untagged, so the local sequence jumps from (20) to (23). Nevertheless, the proof of Proposition~`prop:step-002-joint-window` says that (22) bounds every competitor numerator at line 884, and the concluding Step 002 composition defines $E_{{\rm win},ij}$ by (21), (22), and (32) at lines 894--895. Removing access to the accepted workflow artifact leaves those two cited mathematical authorities undefined. Restore `\tag{21}` and `\tag{22}` on the exact displayed definitions, or replace every stale use with an unambiguous self-contained definition or named public interface. The underlying accepted event and probability argument need not change.

## Nonblocking Concerns

1. A TeX-engine result remains unavailable: the recorded cached-only Tectonic invocation failed before source processing because of the environment's macOS system-configuration panic. Static delimiter, environment, label/reference, citation, and hygiene checks therefore remain the available verification until the assembly repair can be compiled.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the event-to-coverage bridge at the start of the final theorem chain. The exact window events are now public, but the Step 002 proof still cites the missing manual interfaces (21) and (22) when converting the event into the ratio bound and when composing the step conclusion.
- Standalone theorem attack: the setup and main theorem define $Z_{ij}^{(M)}$, $W_{ij}$, $C_{ij}$, and $E_{{\rm win},ij}$ before use, so the former theorem-facing notation blocker is repaired. The appendix does not survive the stricter standalone-proof attack because its own numbered derivation invokes (21) and (22) after omitting those tags.
- Weakest step-level claim: Step 002's passage from the raw-coordinate event to $R_j(h_i^0)\le19/20$. Its accepted mathematics remains present, but the public proof identifies the competitor constraint only through nonexistent equation (22). This is a translation failure rather than a break in the accepted step.
- Candidate counterexamples or stress cases: deleting access to `proof_steps/step_002/proof.md` makes the two manual references impossible to resolve; scanning the local equation sequence confirms (20) is followed by (23). Boundary tests for $r=3$, the finite-range certificate through $r=99$, the analytic $r\ge100$ regime, singular off-event designs, zero normalizers, threshold-adjacent graph pairs, and the exact orthogonal equal-weight seed expose no additional verified counterexample.
- Explicit-rate stress cases: the five finite-range rows, analytic endpoint, two-sided window probability, exact $r^{5/3}(\log r)^{5/2}$ rank, absorption inequalities, nested probability conversion, and hidden-constant dependence are present. The only rate-chain break is the dangling Step 002 interface citation.
- Appendix self-contained attack surface: blocking only at the missing (21)/(22) tags. The former bare `qquad` fragments are repaired, and $W_{ij}$ and $C_{ij}$ are now defined at section level and restated in both consuming propositions.
- Scope or mode upgrade attacks: no unsupported upgrade was verified. The once-drawn smoothing probability remains separate from conditional proposal/restart confidence, and the exact $\rho_{\rm sm}=0$ baseline remains a deterministic corollary with zero residual.
- Remaining risk: after restoring the two Step 002 interfaces, rerun the manual equation-reference scan and obtain a clean TeX compile when the environment permits. This review is bound to assembly-report SHA-256 `830b60a77db4190f6da679f8198b47e142865aa1c0a1d196910bb30d0bede7f3` and appendix SHA-256 `9cff87a1c6a0e85dc84d698f9c45d207ba0a7e62c76b422c6359c250a2cbc18e`.
