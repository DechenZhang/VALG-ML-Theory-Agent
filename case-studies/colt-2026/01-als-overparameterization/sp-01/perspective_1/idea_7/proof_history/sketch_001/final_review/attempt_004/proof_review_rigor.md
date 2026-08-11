# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The attempt-4 Step 002 translation dropped the accepted numbered
   interfaces `(21)` and `(22)`.  In `proof_steps/step_002/proof.md:372-386`,
   `(21)` defines the target window $W_{ij}$ and `(22)` defines the competitor
   event $C_{ij}$.  The current appendix repeats those definitions at
   `latex_template/5_appendix.tex:695-701`, but without either tag; its local
   tag sequence jumps directly from `(20)` to `(23)`.  Nevertheless, the
   proof of Proposition~`prop:step-002-joint-window` still says that `(22)`
   bounds every competitor numerator at `5_appendix.tex:884-885`, and the
   concluding Step 002 composition defines $E_{{\rm win},ij}$ by `(21)`,
   `(22)`, and `(32)` at `:894-895`.  The public setup now defines the event,
   so the underlying accepted mathematics is available, but these two
   nonexistent equation references make the appendix derivation internally
   incomplete and fail exact source-to-appendix preservation.  Restore the
   two tags on the theorem-facing definitions, or replace every use by a
   self-contained named definition.  This is an assembly-only repair.

## Nonblocking Concerns

1. `assembly_report.md` records `Blockers = None` and complete public-source
   verification, but its static checks did not detect the missing manual
   equation interfaces above.  Regenerate the report after the repair.

2. Tectonic again terminated before TeX processing because of the recorded
   macOS system-configuration panic, so no PDF or compiler log is available.
   Static labels, references, citations, delimiters, and environments pass,
   but compilation should be rerun after the assembly repair.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

This review is bound to attempt-4 `assembly_report.md` SHA-256
`830b60a77db4190f6da679f8198b47e142865aa1c0a1d196910bb30d0bede7f3`
and current `5_appendix.tex` SHA-256
`9cff87a1c6a0e85dc84d698f9c45d207ba0a7e62c76b422c6359c250a2cbc18e`.

- Mathematical derivations: BLOCKING only at the Step 002 interface
  references identified above.  Direct comparison of every accepted source
  step against the appendix otherwise preserves the nontrivial equation
  sequences, inequalities, induction/recurrence arguments, boundary cases,
  and target-step compositions.  The Step 009/010 pre-solve chain remains
  noncircular, Step 012 consumes the correct contraction interface, and the
  final theorem uses the correct producer order.
- Statement self-containedness: PASS.  `1_intro.tex:66-87` now defines the
  raw coordinates, $t_r$, $W_{ij}$, $C_{ij}$, and
  $E_{{\rm win},ij}$, and `3_main.tex:22-28` states the exact interval and
  competing-product event carrying the two-sided window rate.  The public
  graph rule, probability nesting, concise landing/contraction interface,
  and separate exact baseline remain self-contained.
- Main theorem constants and notation: PASS.  The fixed constants, exact
  $r^{5/3}(\log r)^{5/2}$ rank, universal window comparison constants,
  stopping norm, horizon, and allowed runtime dependence are exposed without
  the former landing-budget dictionary.
- Derivation-over-notation: BLOCKING at assembly because `(21)` and `(22)`
  are used as mathematical authorities after their tagged displays were
  removed.  The definitions themselves are present and no helper notation
  otherwise replaces a needed derivation.
- Explicit-rate contract: PASS.  The exact window event is now public.  The
  five finite-range rows in the Step 002 integral certificate match the
  accepted source; direct recomputation over every integer $3\le r\le99$
  gives row maxima approximately $0.890465$, $0.891640$, $0.875449$,
  $0.835461$, and $0.796599$, each below its displayed rational endpoint.
  The analytic $r=100$ endpoint is approximately $0.856011<0.857$, and the
  monotonicity calculation covers larger $r$.  The runtime bridge continues
  to state all assumptions, term absorptions, nested probability conversion,
  and hidden-constant dependence.
- Appendix full derivations: BLOCKING only because the accepted Step 002
  definitions `(21)` and `(22)` were not preserved as cited interfaces.  All
  other accepted equation-tag sequences match, with the deliberate Step
  007 theorem-style translation and Step 009/010/011 named-result wrappers
  retaining their source proof obligations.
- Quantifiers and constants: PASS.  Target, slot, mode, rank, fixed-instance,
  complete-run, and all-time cyclic quantifiers agree with the setting.  No
  generated invariant is promoted to a primitive condition.
- Probability or convergence modes: PASS.  The once-drawn smoothing event,
  fixed-instance proposal law, slot independence, target union bound,
  completed-run restart independence, and tower conversion retain their
  accepted conditional order.  Step 002 does not assume target/competitor or
  cross-target independence.
- Boundary cases: PASS.  The finite Step 002 certificate includes every
  integer $r\ge3$ before the analytic regime; singular and off-event tapes
  remain observably capped; and the deterministic $\rho_{\rm sm}=0$
  orthogonal equal-weight baseline remains separately scoped with stationary
  exact factors and zero residual.
- Hidden subclaims: No new mathematical hidden subclaim was found.  Fresh
  scans find no bare `qquad`, raw `a0 < 1.001` or `42 omega`, workflow paths,
  proof-ingredient inventory, placeholder text, public claim/hypothesis/
  invariant environments, duplicate labels, unresolved `\ref`, or missing
  citation keys.  The sole blocker is the explicit Step 002 reference loss.

Verdict alignment: `BLOCKING` has a numbered blocking issue, repair depth
`assembly`, and aligned target `/proof-assembly`.
