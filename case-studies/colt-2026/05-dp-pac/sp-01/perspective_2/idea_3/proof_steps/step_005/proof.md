# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_005
- Unit attempt: 1
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted diagnostic SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407
- Accepted diagnostic-review SHA-256: fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710
- Accepted step_001 proof/review SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486 / 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Accepted step_004 proof/review SHA-256: a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d / d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18

## Target Step Claim

- Intended claim: Prove the ceiling-aware
  \(\log(en_0/v)\le C_{\rm fp}\log Q\), allocate failure
  \(\beta_{\rm tr}\), and export
  \[
  n_0\le(C_{\rm blk}+1)\frac{k d^2a\log Q}{\alpha}.
  \]
- Depends on: step_001, step_004.
- Assumptions used: Primitive assump:approximate-dp-regime; derived trace
  formula.
- Technical challenge: Noncircular trace fixed point.
- Intended proof tool or cited result: Direct scalar inequalities.
- Output target: Trace budget and technical \(k\)-dependent sample bound.
- Rate objective: Structural/confidence-explicit intermediate rate.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding proof_sketch_review.md, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:approximate-dp-regime: the row uses directly
    \(0<\alpha,\beta<1/4\). The parameters \(\varepsilon,\delta\) enter
    only through the already-produced integer \(k\).
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-boundary-entry} gives the exact
    \(d=0\) bypass and, on the positive branch, \(1\le v\le d\).
  - Lemma~\ref{lem:step-001-candidate-legality} fixes
    \(\beta_{\rm tr}=\beta/4\), while
    Proposition~\ref{prop:step-001-teacher-existence} gives
    \(k\ge2\),
    \[
    a=v+\log(4k/\beta),\qquad
    Q=e+\frac{e k d^2a}{\alpha v},
    \]
    \[
    m=\left\lceil C_{\rm blk}\frac{d^2a\log Q}{\alpha}\right\rceil,
    \qquad n_0=km,
    \]
    with all quantities legal and \(n_0\ge v\).
  - Propositions~\ref{prop:step-004-conditional-trace} and
    \ref{prop:step-004-unconditional-trace} give the pointwise conditional
    and joint unconditional bounds
    \[
    4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
    \le
    4k(en_0/v)^v e^{-c_{\rm tr}m\alpha/d^2},
    \qquad c_{\rm tr}=1/3600.
    \]
- Local conditional hypotheses: None. Fixing an arbitrary indexed sample
  \(S\) is already quantified in the accepted conditional trace proposition;
  no event membership, realizability, or iid condition is assumed here.
- Accepted dependency artifacts: the step_001 and step_004 proof/review pairs
  listed in Step Identity. Their hashes and ACCEPTED review statuses match the
  controller-supplied identities.

The row does not invoke assump:finite-littlestone independently. Its needed
consequences are already contained in the accepted step_001 and step_004
dependency claims above.

The setting permits one sufficiently large universal block constant. Fix it
once and for all as
\[
C_{\rm blk}:=2^{20}.
\tag{1}
\]
The accepted step_001 conclusions hold for every fixed universal
\(C_{\rm blk}\ge1\), so they apply to (1) without changing their interface.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:approximate-dp-regime} and accepted Proposition~\ref{prop:step-001-teacher-existence}, on the \(d\ge1\) branch and with (1), \(n_0\le(C_{\rm blk}+1)kd^2a\log Q/\alpha\) and \(\log(en_0/v)\le C_{\rm fp}\log Q\) for the explicit universal \(C_{\rm fp}=2+\log(C_{\rm blk}+1)\). | Closes the ceiling-aware fixed point and exports the exact technical sample bound. |
| unit_002 | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-004-conditional-trace} and \ref{prop:step-004-unconditional-trace}, and Lemma~\ref{lem:step-005-ceiling-fixed-point}, the choice (1) gives \(4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}\le\beta_{\rm tr}=\beta/4\), both conditionally for every indexed \(S\) and unconditionally under every sample law for which the setting-defined event is measurable. | Allocates exactly the trace failure budget without adding a utility assumption or changing probability mode. |

Atomic step = no. The ceiling-aware scalar fixed point and the domination of
the trace multiplicity plus confidence logarithm are independent nontrivial
claims, so they are separated into two local units.

## Cited Result Applications

### Accepted step_001 parameter and boundary package

- Source or name: accepted
  Proposition~\ref{prop:step-001-boundary-entry},
  Lemma~\ref{lem:step-001-candidate-legality}, and
  Proposition~\ref{prop:step-001-teacher-existence}, certified by the
  matching step_001 review.
- Restated statement in current notation: the \(d=0\) learner uses no data
  and never evaluates a positive-branch formula. If \(d\ge1\), then
  \(1\le v\le d\), \(k\ge2\), \(\beta_{\rm tr}=\beta/4\), and the exact
  realized dictionary is
  \[
  a=v+\log(4k/\beta),\quad
  Q=e+\frac{e k d^2a}{\alpha v},\quad
  m=\left\lceil C_{\rm blk}\frac{d^2a\log Q}{\alpha}\right\rceil,
  \quad n_0=km,
  \tag{2}
  \]
  with \(n_0\ge v\). Its proof is valid for every fixed universal
  \(C_{\rm blk}\ge1\).
- Instantiated objects: exactly the setting's \(d,v,k,a,Q,m,n_0\), with
  \(C_{\rm blk}=2^{20}\).
- Required assumptions and discharge: the accepted dependency discharges
  the finite-Littlestone branch split and integer legality. The remaining
  scalar range \(0<\alpha,\beta<1/4\) is
  Assumption~\ref{assump:approximate-dp-regime}.
- Conclusion used: all divisions and logarithms in the positive-branch
  derivation are legal, the ceiling in (2) is exact, and the trace allocation
  is \(\beta/4\).

### Accepted step_004 conditional and unconditional trace bounds

- Source or name: accepted
  Propositions~\ref{prop:step-004-conditional-trace} and
  \ref{prop:step-004-unconditional-trace}, certified by the matching
  step_004 review.
- Restated statement in current notation: for every fixed indexed labeled
  sample \(S\),
  \[
  \Pr_{\mathcal P}(E_{\rm good}(S,\mathcal P)^c\mid S)
  \le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
  \le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2},
  \tag{3}
  \]
  where \(c_{\rm tr}=1/3600\). For any law \(\mathsf Q\) of \(S\) for
  which the setting-defined event is measurable, the same two deterministic
  upper bounds hold for
  \(\Pr_{S\sim\mathsf Q,\mathcal P}(E_{\rm good}^c)\).
- Instantiated objects: the same realized dictionary (2), the setting's exact
  event \(E_{\rm good}\), and its data-independent uniform partition.
- Required assumptions and discharge: accepted step_004 already discharges
  trace finiteness, the per-trace tail, the union over all \(k\) blocks, and
  the tower property. Its conditional result is pointwise for arbitrary
  labeled \(S\) and requires neither realizability nor block independence.
- Conclusion used: it remains only to prove that the last scalar expression
  in (3) is at most \(\beta/4\).

### Elementary scalar inequalities

- Source or name: direct scalar facts.
- Restated statement: for \(x\ge0\),
  \(\lceil x\rceil\le x+1\); for \(y\ge1\),
  \(\log y\le y\); logarithm is increasing on \((0,\infty)\).
- Instantiated objects: the ceiling argument in (2),
  \(y=\log Q\), and the positive trace upper bound in (3).
- Required assumptions and discharge: the accepted positive branch and
  Assumption~\ref{assump:approximate-dp-regime} imply all arguments are in
  the stated domains.
- Conclusion used: only the displayed ceiling and logarithm comparisons in
  Lemma~\ref{lem:step-005-ceiling-fixed-point}; no asymptotic theorem is
  invoked.

### Internal result application

- Source or name: Lemma~\ref{lem:step-005-ceiling-fixed-point} proved below.
- Restated statement in current notation: under the accepted positive-branch
  parameter package and Assumption~\ref{assump:approximate-dp-regime}, the
  choice \(C_{\rm blk}=2^{20}\) gives
  \[
  n_0\le(C_{\rm blk}+1)\frac{k d^2a\log Q}{\alpha},
  \qquad
  \log(en_0/v)\le C_{\rm fp}\log Q,
  \quad C_{\rm fp}=2+\log(C_{\rm blk}+1).
  \]
- Instantiated objects: the exact realized \(k,a,Q,m,n_0,d,v,\alpha\)
  supplied by accepted step_001.
- Required assumptions and discharge: accepted step_001 supplies
  \(d\ge1\), \(1\le v\le d\), \(k\ge2\), and the exact dictionary;
  Assumption~\ref{assump:approximate-dp-regime} supplies
  \(0<\alpha<1/4\).
- Conclusion used: Proposition~\ref{prop:step-005-trace-budget} uses the
  \(C_{\rm fp}\) inequality and the positive-domain checks. It does not use
  the upper sample-size conclusion as a substitute for the exact ceiling
  lower bound on \(m\).

## Local Derivation

### unit_001: lemma

**Lemma (Ceiling-aware trace fixed point and master-size bound).**
\label{lem:step-005-ceiling-fixed-point}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-001-teacher-existence}, and the positive-branch
conclusion of Proposition~\ref{prop:step-001-boundary-entry}, assume
\(d\ge1\) and use the exact dictionary (2) with
\(C_{\rm blk}=2^{20}\). Then
\[
n_0\le(C_{\rm blk}+1)\frac{k d^2a\log Q}{\alpha},
\tag{4}
\]
and, for the explicit universal constant
\[
C_{\rm fp}:=2+\log(C_{\rm blk}+1),
\tag{5}
\]
one has
\[
\log\frac{e n_0}{v}\le C_{\rm fp}\log Q.
\tag{6}
\]
No quantity in (4)-(6) is evaluated on the \(d=0\) branch.

**Proof.** The accepted positive-branch conclusions give
\[
d\ge1,\qquad v\ge1,\qquad k\ge2,\qquad a\ge v\ge1.
\tag{7}
\]
Moreover \(0<\alpha<1/4\), and the definition of \(Q\) gives \(Q>e\),
so \(\log Q>1\). Therefore
\[
\frac{d^2a\log Q}{\alpha}>4>1.
\tag{8}
\]
Apply \(\lceil x\rceil\le x+1\) to the exact definition of \(m\), and
then use (8):
\[
\begin{aligned}
m
&\le C_{\rm blk}\frac{d^2a\log Q}{\alpha}+1\\
&\le(C_{\rm blk}+1)\frac{d^2a\log Q}{\alpha}.
\end{aligned}
\tag{9}
\]
Multiplication by the positive integer \(k\), together with \(n_0=km\),
proves (4). This is the requested explicit control of the ceiling; the
additive one has not been discarded.

Next, (4) and the definition of \(Q\) imply
\[
\begin{aligned}
\frac{e n_0}{v}
&\le(C_{\rm blk}+1)
   \frac{e k d^2a}{\alpha v}\log Q\\
&\le(C_{\rm blk}+1)Q\log Q.
\end{aligned}
\tag{10}
\]
The second line uses the exact inequality
\(e k d^2a/(\alpha v)\le Q\); in particular, \(Q\) was defined before
\(m\) and \(n_0\), so (10) is noncircular. Taking logarithms in (10), using
\(\log Q>1\), and applying \(\log y\le y\) to \(y=\log Q\), gives
\[
\begin{aligned}
\log\frac{e n_0}{v}
&\le \log(C_{\rm blk}+1)+\log Q+\log\log Q\\
&\le \log(C_{\rm blk}+1)+2\log Q\\
&\le \bigl(2+\log(C_{\rm blk}+1)\bigr)\log Q.
\end{aligned}
\tag{11}
\]
The last line uses \(\log Q>1\). Equations (5) and (11) prove (6).
Because \(C_{\rm blk}=2^{20}\) is fixed numerically, \(C_{\rm fp}\) is
universal and has no dependence on \(d,v,k,\alpha,\beta,\varepsilon\), or
\(\delta\). \(\square\)

### unit_002: proposition

**Proposition (Exact allocation of the trace failure).**
\label{prop:step-005-trace-budget}
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-004-conditional-trace} and
\ref{prop:step-004-unconditional-trace}, and
Lemma~\ref{lem:step-005-ceiling-fixed-point}, on the \(d\ge1\) branch the
choice \(C_{\rm blk}=2^{20}\), together with
\[
c_{\rm tr}=\frac1{3600},
\qquad \beta_{\rm tr}=\frac\beta4,
\tag{12}
\]
satisfies
\[
4k\left(\frac{e n_0}{v}\right)^v
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)
\le\beta_{\rm tr}.
\tag{13}
\]
Consequently, for every fixed indexed labeled sample \(S\),
\[
\Pr_{\mathcal P}(E_{\rm good}(S,\mathcal P)^c\mid S)
\le\beta_{\rm tr},
\tag{14}
\]
and for every sample law \(\mathsf Q\) for which the setting-defined event
is measurable,
\[
\Pr_{S\sim\mathsf Q,\mathcal P}(E_{\rm good}(S,\mathcal P)^c)
\le\beta_{\rm tr}.
\tag{15}
\]

**Proof.** First verify explicitly that the one frozen block constant is
large enough. From (5) and \(C_{\rm blk}=2^{20}\),
\[
\begin{aligned}
C_{\rm fp}+2
&=4+\log(2^{20}+1)\\
&<4+21\log2<25.
\end{aligned}
\tag{16}
\]
On the other hand,
\[
c_{\rm tr}C_{\rm blk}
=\frac{2^{20}}{3600}>25,
\tag{17}
\]
because \(2^{20}=1{,}048{,}576>90{,}000=25\cdot3600\). Thus
\[
c_{\rm tr}C_{\rm blk}\ge C_{\rm fp}+2.
\tag{18}
\]

Put, only within this proof,
\[
\ell:=\log(4k/\beta).
\tag{19}
\]
The accepted positive branch has \(k\ge2\), while \(\beta<1/4\), so
\(\ell>\log32>\log4\). Since \(a=v+\ell\), one has
\[
a\ge v,\qquad a\ge\ell,
\tag{20}
\]
and, using \(\log Q>1\),
\[
\log(16k/\beta)
=\ell+\log4
\le2\ell
\le2a\log Q.
\tag{21}
\]
The lower side of the exact ceiling definition gives
\[
c_{\rm tr}\frac{m\alpha}{d^2}
\ge c_{\rm tr}C_{\rm blk}a\log Q.
\tag{22}
\]
Combining (18), (20), and (21) yields the complete exponent domination
\[
\begin{aligned}
c_{\rm tr}C_{\rm blk}a\log Q
&\ge(C_{\rm fp}+2)a\log Q\\
&\ge vC_{\rm fp}\log Q+\log(16k/\beta).
\end{aligned}
\tag{23}
\]
This displays separately the trace-multiplicity charge and the exact
confidence charge; neither is absorbed by prose.

Take the logarithm of the positive left side of (13). By (6), (22), and
(23),
\[
\begin{aligned}
&\log\!\left[
4k\left(\frac{e n_0}{v}\right)^v
e^{-c_{\rm tr}m\alpha/d^2}
\right]\\
&\qquad=\log(4k)+v\log(en_0/v)
          -c_{\rm tr}\frac{m\alpha}{d^2}\\
&\qquad\le\log(4k)+vC_{\rm fp}\log Q
          -vC_{\rm fp}\log Q-\log(16k/\beta)\\
&\qquad=\log(\beta/4).
\end{aligned}
\tag{24}
\]
Exponentiating proves (13) with the exact allocation in (12).

Finally, accepted
Proposition~\ref{prop:step-004-conditional-trace} bounds the conditional
failure probability by the left side of (13), proving (14) pointwise for
every \(S\). Accepted
Proposition~\ref{prop:step-004-unconditional-trace} supplies the same scalar
upper bound after the tower-property integration over any sample law for
which the setting-defined event is measurable, proving (15). No new union
bound, independence assertion, realizability
condition, or later mechanism/generalization failure is introduced here.
\(\square\)

## Target-Step Assembly

The accepted boundary
Proposition~\ref{prop:step-001-boundary-entry} first separates the exact
\(d=0\) learner. On that branch the learner already uses \(N=0\), and this
step does not define or evaluate \(a,Q,m,n_0\), \(1/v\), or \(1/d\).

On the \(d\ge1\) branch, accepted
Proposition~\ref{prop:step-001-teacher-existence} gives
\(1\le v\le d\), \(k\ge2\), and the exact realized dictionary (2).
Lemma~\ref{lem:step-005-ceiling-fixed-point} retains the ceiling and proves
both required scalar exports:
\[
\boxed{
\log(en_0/v)\le C_{\rm fp}\log Q,
\qquad
n_0\le(C_{\rm blk}+1)\frac{k d^2a\log Q}{\alpha},
}
\tag{25}
\]
where
\(C_{\rm blk}=2^{20}\) and
\(C_{\rm fp}=2+\log(2^{20}+1)\) are explicit universal constants.

Proposition~\ref{prop:step-005-trace-budget} combines the first inequality
in (25) with the exact accepted step_004 trace formula and proves
\[
\boxed{
4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}
\le\beta_{\rm tr}=\beta/4,
\qquad c_{\rm tr}=1/3600.
}
\tag{26}
\]
The conditional and unconditional confidence modes in (14)-(15) follow from
the corresponding accepted step_004 propositions. Equations (25)-(26) are
exactly the accepted step_005 output target. No source-stage wrapper,
AboveThreshold or Sparse Sample accuracy claim, PAC conversion, privacy
claim, or public auxiliary elimination assigned to step_006 or later is used
or proved.

## Explicit Rate Audit

- Exposed variables: \(d,v,k,\alpha,\beta,a,Q,m,n_0\), the exact allocation
  \(\beta_{\rm tr}=\beta/4\), and the exact dependency constant
  \(c_{\rm tr}=1/3600\).
- Hidden constants may depend on: nothing. The only new constants are fixed
  explicitly as \(C_{\rm blk}=2^{20}\) and
  \(C_{\rm fp}=2+\log(2^{20}+1)\).
- Hidden constants may not depend on: \(X,C,D,c,|C|\), a sample, partition,
  trace, block, decomposition, list, stage, generated event, support set,
  mechanism output, or any exposed scalar parameter.
- Fixed quantities: for (14), the class and public scalars are fixed and the
  indexed sample \(S\) is arbitrary but fixed before partition randomness.
  For (15), \(S\) is integrated under an arbitrary law for which the
  setting-defined event is measurable.
- Probability mode: pointwise conditional high probability over the uniform
  partition given every \(S\), and joint unconditional high probability
  after the accepted tower conversion. Both failures are at most exactly
  \(\beta/4\); there is no expectation-only or conditional-on-good-event
  conclusion.
- Horizon mode: one fixed master sample and its one reused partition. This
  step makes no repeated-stage, stopping-time, or all-time assertion.
- Norm mode: the rate is a scalar failure-probability bound. The inherited
  event concerns binary empirical-error deviations, but no new norm or
  population-error conversion is introduced here.
- Admissibility conditions and auxiliary tolerances: the positive branch has
  \(d\ge1\), \(1\le v\le d\), \(k\ge2\),
  \(0<\alpha,\beta<1/4\), \(Q>e\), and
  \(\beta_{\rm tr}=\beta/4\). The \(d=0\) branch bypasses every positive
  formula.
- Term absorption or simplification inequalities: (9) controls the ceiling;
  (10)-(11) prove the fixed point; (16)-(18) verify the universal-constant
  choice; (21) controls \(\log(16k/\beta)\); and (22)-(24) prove the exact
  exponent domination. No term is dropped by asymptotic notation.
- Probability conversion: the finite trace/block union and tower conversion
  are accepted step_004 conclusions. This step supplies only their scalar
  premise (13), so the probability mode is unchanged.
- Contribution to any Rate Specialization Bridge: (4) is the exact
  technical \(k\)-dependent sample bound consumed by step_012. This step does
  not eliminate \(k,a,Q\) or assert the final public \(\Lambda\)-rate.
- Baseline-reduction check: the exact \(d=0,N=0\) branch is untouched. The
  positive derivation remains valid at \(v=1\) and at \(v=d\); no false
  saving or final \(d^5\) comparison is claimed here, because that public
  specialization belongs to step_012.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting/sketch-defined objects: \(a,Q,m,n_0,k\),
  \(\beta_{\rm tr}=\beta/4\), and \(E_{\rm good}\). The minimal downstream
  interface exported here is the budget (14)-(15) and technical sample bound
  (4).
- Public-facing technical constant: \(C_{\rm blk}=2^{20}\) is the explicit
  universal calibration used in the learner's setting-defined block size.
- Appendix-local constants: \(C_{\rm fp}=2+\log(C_{\rm blk}+1)\) is proved
  in Lemma~\ref{lem:step-005-ceiling-fixed-point}, and
  \(c_{\rm tr}=1/3600\) is inherited from accepted step_004. They are
  eliminated into the completed trace budget and are not free bounded
  quantities.
- Proof-local notation: \(\ell=\log(4k/\beta)\) is introduced only in
  Proposition~\ref{prop:step-005-trace-budget} and eliminated in (21)-(24).
  The symbol \(\mathsf Q\) denotes an arbitrary law of the indexed sample
  for which the setting-defined event is measurable; it is inherited from
  the accepted tower-property interface and is eliminated after (15). No
  other helper object is introduced.
- Constant provenance: \(C_{\rm blk}\) is explicitly chosen from the
  universal freedom in the setting; accepted step_001 applies to this fixed
  value. \(C_{\rm fp}\) is defined directly from it and proved sufficient in
  (10)-(11). The exact \(c_{\rm tr}\) is inherited from the accepted trace
  dependency. Inequalities (16)-(18) prove their quantitative compatibility.
- Assumption provenance: the row directly uses only the primitive scalar
  ranges in Assumption~\ref{assump:approximate-dp-regime}. Positive-branch
  legality, \(k\ge2\), \(n_0=km\), \(n_0\ge v\), the trace formula, and the
  conditional/unconditional probability interfaces are accepted dependency
  conclusions. No generated-object fact is promoted to a primitive
  condition or local conditional hypothesis.
- Generated-output flow: accepted step_004 produces the trace formula;
  Proposition~\ref{prop:step-005-trace-budget} supplies its scalar
  \(\beta/4\) closure; later consumers may use only that completed budget.
  This step neither assumes nor proves membership in \(E_{\rm good}\).
- Boundary note: accepted step_001 already proves the exact \(d=0\) learner.
  All divisions by \(d\) and \(v\), and all occurrences of \(Q,m,n_0\), are
  confined to \(d\ge1\), where \(1\le v\le d\). The entry case \(d=v=1\)
  is therefore legal.
- Diagnostic boundary: the paired global_proof_review.md has status
  ACCEPTED. The diagnostic's step-relevant planning idea was to separate the
  ceiling-aware bound from the exponent domination. Every mathematical line
  above is independently derived from the setting and accepted dependencies;
  the diagnostic is not used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
