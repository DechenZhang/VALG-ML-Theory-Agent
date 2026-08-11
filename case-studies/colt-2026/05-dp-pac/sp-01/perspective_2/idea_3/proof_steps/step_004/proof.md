# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_004
- Unit attempt: 1
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted dependency proof: perspective_2/idea_3/proof_steps/step_002/proof.md, SHA-256 46adea5c85c0c6eab7f5664edecb39e54cc4683c72469bb64c3e20d9046e1673
- Accepted dependency review: perspective_2/idea_3/proof_steps/step_002/review.md, SHA-256 0fcb257488e9cb4c10594ae554336b3610555b60536d5566693af1dd8ab02803, status ACCEPTED
- Accepted dependency proof: perspective_2/idea_3/proof_steps/step_003/proof.md, SHA-256 829141cebcc176c3d29cd9f98335a1617cc28d3bf0762dc99d1ee87699984dc4
- Accepted dependency review: perspective_2/idea_3/proof_steps/step_003/review.md, SHA-256 45f6d0c12140fa320754da746a1e3d32b89282b24fa65087ca06516f36e2e389, status ACCEPTED

## Target Step Claim

- Intended claim: Union bound over blocks and distinct traces to prove
  (Trace), then integrate over \(S\), without block independence.
- Depends on: step_002, step_003.
- Assumptions used: No utility assumption for the conditional partition
  statement.
- Technical challenge: Preserve exact event thresholds and conditional
  probability mode.
- Intended proof tool or cited result: Finite union bound and tower property.
- Output target: Exact \(E_{\rm good}\) failure formula.
- Rate objective: Conditional and unconditional confidence interface.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding proof_sketch_review.md, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:finite-littlestone: used only through the accepted
    positive-branch and finite-VC conclusions in step_002 and step_003.
  - assump:approximate-dp-regime: used only through the accepted per-trace
    concentration conclusion in step_003, including \(0<\alpha<1/4\).
  - assump:realizable-iid is not used. In particular, the conditional
    partition statement is valid for every fixed indexed labeled sample,
    including a nonrealizable one.
- Derived invariants supplied by accepted dependencies:
  - Lemma~\ref{lem:step-002-xor-traces} and
    Lemma~\ref{lem:step-002-vc-growth}, certified by the accepted step_002
    review, give for every fixed indexed \(S\)
    \[
    |\mathcal E_C(S)|\le \Pi_C(n_0)
    \le (e n_0/v)^v,
    \]
    and in particular make the distinct error-trace family finite.
  - Proposition~\ref{prop:step-003-per-trace}, certified by the accepted
    step_003 review, gives for every fixed \(S\), every fixed binary trace,
    and every fixed block label the exact two-clause conditional failure
    bound
    \[
    4\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right),
    \qquad c_{\rm tr}=\frac1{3600}.
    \]
- Local conditional hypotheses:
  - For the conditional statement, fix an arbitrary indexed labeled sample
    \(S=((x_r,y_r))_{r=1}^{n_0}\). Conditional on \(S\), randomness remains
    only in the data-independent uniform partition \(\mathcal P\).
  - For the unconditional statement, \(S\) may have any probability law for
    which the setting-defined event is measurable; conditional on its
    realized value, draw the same uniform partition. This is a quantified
    sampling law, not a utility or realizability assumption.

The two dependency proof/review pairs have the exact supplied hashes, matching
sketch attempt, and accepted statuses recorded above. No step_001 artifact,
optional global diagnostic, or proof-history artifact is consumed directly.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}, accepted Lemmas~\ref{lem:step-002-xor-traces} and \ref{lem:step-002-vc-growth}, and the local condition that the indexed \(S\) is fixed, the exact setting-defined event \(E_{\rm good}(S,\mathcal P)\) equals the intersection, over distinct traces \(z\in\mathcal E_C(S)\) and block labels \(i\in[k]\), of the two guarded clauses with thresholds \(\gamma/3,\gamma/2\) and relative tolerance \(1/(5d)\). | Replaces the possibly infinite concept-indexed intersection by the exact finite trace-indexed event without changing any threshold. |
| unit_002 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}, accepted Lemmas~\ref{lem:step-002-xor-traces} and \ref{lem:step-002-vc-growth}, accepted Proposition~\ref{prop:step-003-per-trace}, and Lemma~\ref{lem:step-004-trace-quotient}, for every fixed indexed \(S\), \(\Pr_{\mathcal P}(E_{\rm good}^c\mid S)\le4k|\mathcal E_C(S)|e^{-c_{\rm tr}m\alpha/d^2}\le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}\). | Proves the exact conditional (Trace) chain by one finite union bound, without block or trace independence. |
| unit_003 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime} and Proposition~\ref{prop:step-004-conditional-trace}, for every law of the indexed sample \(S\), the tower property gives the identical unconditional failure chain; hence any scalar confidence budget proved later applies in both conditional and unconditional modes. | Integrates over \(S\) and exports the requested confidence interface without carrying out step_005's scalar budget. |

Atomic step = no. Exact quotienting by distinct traces, the simultaneous
conditional union, and the conditional-to-unconditional conversion are three
separate proof obligations.

## Cited Result Applications

### Accepted step_002 trace-count result

- Source or name: accepted Lemma~\ref{lem:step-002-xor-traces} and
  Lemma~\ref{lem:step-002-vc-growth}, certified by the matching step_002
  review.
- Restated statement in current notation: on the positive branch, for every
  fixed indexed labeled sample \(S\), label xor maps prediction traces
  bijectively to distinct error traces and
  \[
  |\mathcal E_C(S)|\le\Pi_C(n_0)
  \le\left(\frac{e n_0}{v}\right)^v.
  \tag{TC}
  \]
- Instantiated objects: the same class \(C\), indexed sample \(S\), master
  size \(n_0\), and VC dimension \(v\) used here.
- Required assumptions and discharge: binary-valuedness and finite
  Littlestone dimension are supplied by
  Assumption~\ref{assump:finite-littlestone}; the accepted dependency
  supplies positive-branch legality \(1\le v\le n_0\).
- Conclusion used: the error-trace family in the present union is finite and
  has the two exact cardinality bounds in (TC), including for infinite \(C\)
  and repeated indexed points.

### Accepted step_003 per-trace block result

- Source or name: accepted
  Proposition~\ref{prop:step-003-per-trace}, certified by the matching
  step_003 review.
- Restated statement in current notation: conditional on any fixed indexed
  sample \(S\), fix \(z\in\{0,1\}^{n_0}\) and \(i\in[k]\), and put
  \[
  \bar z:=\frac1{n_0}\sum_{r=1}^{n_0}z_r,
  \qquad
  \bar z_i^{\mathcal P}:=\frac1m\sum_{r\in I_i(\mathcal P)}z_r.
  \]
  For \(\gamma=\alpha/16\), define the two-clause event
  \[
  \mathsf G_{z,i}:=
  \left\{\bar z>\frac\gamma3\Rightarrow
  |\bar z_i^{\mathcal P}-\bar z|\le\frac{\bar z}{5d}\right\}
  \cap
  \left\{\bar z\le\frac\gamma3\Rightarrow
  \bar z_i^{\mathcal P}\le\frac\gamma2\right\}.
  \tag{PT}
  \]
  Then
  \[
  \Pr_{\mathcal P}(\mathsf G_{z,i}^c\mid S)
  \le4\exp\!\left(-\frac{m\alpha}{3600d^2}\right).
  \tag{PB}
  \]
- Instantiated objects: each distinct trace
  \(z\in\mathcal E_C(S)\) and each block label \(i\in[k]\).
- Required assumptions and discharge: the accepted step_003 dependency
  supplies positive integers \(d,k,m,n_0\), the exact marginal uniform
  without-replacement block law, and the primitive parameter range. Once
  \(S,z,i\) are fixed, all hypotheses of (PB) hold.
- Conclusion used: exactly the conditional failure bound for each member of
  the finite trace-block family. No independence statement is among its
  hypotheses or conclusions.

### Finite union bound

- Source or name: elementary finite subadditivity of probability.
- Restated statement: for a finite family of events
  \((A_j)_{j\in J}\) and any conditioning value \(S\),
  \[
  \Pr\!\left(\bigcup_{j\in J}A_j\mathrel{\Big|}S\right)
  \le\sum_{j\in J}\Pr(A_j\mid S).
  \tag{UB}
  \]
- Instantiated objects: \(J=\mathcal E_C(S)\times[k]\) and
  \(A_{(z,i)}=\mathsf G_{z,i}^c\).
- Required assumptions and discharge: (TC) makes \(J\) finite. No
  independence among any of its events is required.
- Conclusion used: the conditional simultaneous failure probability is at
  most the sum of the accepted per-pair failure bounds.

### Tower property for the sample-partition experiment

- Source or name: law of total probability, equivalently the tower property
  for conditional expectation.
- Restated statement: if \(A\) is an event in the joint experiment that first
  draws \(S\sim\mathsf Q\) and then draws \(\mathcal P\) according to its
  conditional partition law, then
  \[
  \Pr_{S\sim\mathsf Q,\mathcal P}(A)
  =\mathbb E_{S\sim\mathsf Q}
    [\Pr_{\mathcal P}(A\mid S)].
  \tag{Tower}
  \]
- Instantiated objects: \(A=E_{\rm good}(S,\mathcal P)^c\).
- Required assumptions and discharge: the setting defines the joint
  sample-partition experiment and the event. The uniform partition is drawn
  data-independently after the indexed sample, so the conditional law used
  in step_003 is the law appearing in (Tower).
- Conclusion used: a pointwise-in-\(S\) deterministic upper bound passes
  unchanged to the unconditional probability.

### Internal result applications

- Lemma~\ref{lem:step-004-trace-quotient} identifies the exact finite event
  to which the union bound applies.
- Proposition~\ref{prop:step-004-conditional-trace} supplies the pointwise
  conditional failure formula used by
  Proposition~\ref{prop:step-004-unconditional-trace}.

## Local Derivation

Fix the positive branch and an arbitrary indexed labeled master sample
\[
S=((x_r,y_r))_{r=1}^{n_0}.
\tag{1}
\]
For \(h\in C\), its indexed error trace is
\[
z(h;S):=({\bf1}\{h(x_r)\ne y_r\})_{r=1}^{n_0}
\in\mathcal E_C(S).
\tag{2}
\]
For a trace \(z\in\mathcal E_C(S)\) and a partition \(\mathcal P\), define
\[
\bar z:=\frac1{n_0}\sum_{r=1}^{n_0}z_r,
\qquad
\bar z_i^{\mathcal P}:=
\frac1m\sum_{r\in I_i(\mathcal P)}z_r,
\quad i\in[k].
\tag{3}
\]
Use the event \(\mathsf G_{z,i}\) in (PT), with the exact sketch thresholds
\(\gamma/3,\gamma/2\) and relative tolerance \(1/(5d)\).

### unit_001: lemma

**Lemma (Exact reduction of the good event to distinct indexed traces).**
\label{lem:step-004-trace-quotient}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, accepted
Lemmas~\ref{lem:step-002-xor-traces} and
\ref{lem:step-002-vc-growth}, and the local hypothesis that the indexed
sample \(S\) is fixed, let
\(\mathsf G_{z,i}\) be defined by (PT). Then, for every partition
\(\mathcal P\), the exact setting-defined event satisfies
\[
E_{\rm good}(S,\mathcal P)
=\bigcap_{z\in\mathcal E_C(S)}\ \bigcap_{i=1}^k
\mathsf G_{z,i}.
\tag{4}
\]
In particular, (4) preserves the strict guards
\(e_S(h)>\gamma/3\) and \(e_S(h)\le\gamma/3\), the non-strict good-event
thresholds, and all indexed multiplicities. It does not choose a concept
representative for any trace.

**Proof.** For every \(h\in C\), equations (2)-(3) give the exact identities
\[
e_S(h)=\overline{z(h;S)},
\qquad
e_i(h)=\overline{z(h;S)}{}_i^{\mathcal P}.
\tag{5}
\]
Therefore the \((h,i)\) component of the definition of \(E_{\rm good}\) is
exactly \(\mathsf G_{z(h;S),i}\). If two concepts have the same indexed error
trace, both quantities in (5) agree for every block and every partition, so
their two guarded clauses are identical. Conversely, by the definition of
\(\mathcal E_C(S)\), every \(z\in\mathcal E_C(S)\) equals \(z(h;S)\) for at
least one \(h\in C\). Removing only duplicate copies of identical clauses
from the concept-indexed intersection therefore gives (4), with no choice of
a representative and no change of event. Repeated sample points remain
separate coordinates throughout (2)-(5), even when their underlying
\(x_r\)'s agree. \(\square\)

### unit_002: proposition

**Proposition (Conditional simultaneous trace-block bound).**
\label{prop:step-004-conditional-trace}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, accepted
Lemmas~\ref{lem:step-002-xor-traces} and
\ref{lem:step-002-vc-growth}, accepted
Proposition~\ref{prop:step-003-per-trace}, and
Lemma~\ref{lem:step-004-trace-quotient}, for every fixed indexed labeled
sample \(S\),
\[
\begin{aligned}
\Pr_{\mathcal P}\!\left(E_{\rm good}(S,\mathcal P)^c\mid S\right)
&\le
4k|\mathcal E_C(S)|
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)\\
&\le
4k\Pi_C(n_0)
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)\\
&\le
4k\left(\frac{e n_0}{v}\right)^v
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right),
\end{aligned}
\tag{6}
\]
where the accepted dependency supplies the explicit universal value
\(c_{\rm tr}=1/3600\). This is a conditional statement over partition
randomness only and does not assume independence among blocks or traces.

**Proof.** Lemma~\ref{lem:step-004-trace-quotient} and De Morgan's law give
the exact finite-union identity
\[
E_{\rm good}(S,\mathcal P)^c
=\bigcup_{z\in\mathcal E_C(S)}\ \bigcup_{i=1}^k
\mathsf G_{z,i}^c.
\tag{7}
\]
The family is finite by Lemmas~\ref{lem:step-002-xor-traces} and
\ref{lem:step-002-vc-growth}. Conditional on the fixed \(S\), every
\(z\in\mathcal E_C(S)\) is a fixed binary vector and every \(i\in[k]\) is a
fixed block label. Thus
Proposition~\ref{prop:step-003-per-trace}, restated as (PB), applies
separately to every pair and gives
\[
\Pr_{\mathcal P}(\mathsf G_{z,i}^c\mid S)
\le4\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right).
\tag{8}
\]
Applying (UB) to (7) and then summing the common bound (8) over exactly
\(k|\mathcal E_C(S)|\) pairs proves
\[
\Pr_{\mathcal P}(E_{\rm good}^c\mid S)
\le4k|\mathcal E_C(S)|
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right).
\tag{9}
\]
Substituting the deterministic inequalities from
Lemmas~\ref{lem:step-002-xor-traces} and
\ref{lem:step-002-vc-growth}, restated in (TC), proves the remaining two
lines of (6). The calculation uses only marginal per-pair estimates and
finite subadditivity. In particular, the block index sets jointly form a
partition and are generally dependent; no product, factorization, or
independence assertion occurs in (7)-(9). \(\square\)

### unit_003: proposition

**Proposition (Unconditional trace confidence by the tower property).**
\label{prop:step-004-unconditional-trace}
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime} and
Proposition~\ref{prop:step-004-conditional-trace}, let \(\mathsf Q\) be any
law of the indexed labeled sample \(S\), and conditional on \(S\) draw the
data-independent uniform partition used by the learner. Then
\[
\begin{aligned}
\Pr_{S\sim\mathsf Q,\mathcal P}
   (E_{\rm good}(S,\mathcal P)^c)
&\le
4k\Pi_C(n_0)
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)\\
&\le
4k\left(\frac{e n_0}{v}\right)^v
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right).
\end{aligned}
\tag{10}
\]
Consequently, for any \(\eta\in[0,1]\), if a separate scalar argument proves
\[
4k\left(\frac{e n_0}{v}\right)^v
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)
\le\eta,
\tag{11}
\]
then both confidence interfaces hold:
\[
\Pr_{\mathcal P}(E_{\rm good}\mid S)\ge1-\eta
\quad\text{for every fixed }S,
\qquad
\Pr_{S\sim\mathsf Q,\mathcal P}(E_{\rm good})\ge1-\eta.
\tag{12}
\]
This proposition does not verify (11) for \(\eta=\beta/4\); that is the
ceiling-aware fixed-point obligation assigned to step_005.

**Proof.** Apply (Tower) and the first \(\Pi_C(n_0)\)-based conclusion of
Proposition~\ref{prop:step-004-conditional-trace}, displayed in (6):
\[
\begin{aligned}
\Pr_{S\sim\mathsf Q,\mathcal P}(E_{\rm good}^c)
&=\mathbb E_{S\sim\mathsf Q}
  [\Pr_{\mathcal P}(E_{\rm good}^c\mid S)]\\
&\le\mathbb E_{S\sim\mathsf Q}\!\left[
4k\Pi_C(n_0)
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right)
\right]\\
&=4k\Pi_C(n_0)
\exp\!\left(-c_{\rm tr}\frac{m\alpha}{d^2}\right).
\end{aligned}
\tag{13}
\]
The quantity inside the expectation is deterministic in \(S\). The last
inequality in (10) follows from
Lemma~\ref{lem:step-002-vc-growth}, restated in (TC). If (11) holds,
Proposition~\ref{prop:step-004-conditional-trace} gives the first statement
in (12) pointwise for every \(S\), and
Proposition~\ref{prop:step-004-unconditional-trace} gives the second.
No property of \(\mathsf Q\), and no independence among the blocks, is used.
In particular, taking
\(\mathsf Q=P_{D,c}^{n_0}\) yields the setting's unconditional realizable-iid
sample interface for every \(D\) and \(c\in C\), but neither realizability nor
iid structure was needed to derive (10). \(\square\)

## Target-Step Assembly

Fix any indexed labeled sample \(S\) on the positive branch.
Lemma~\ref{lem:step-004-trace-quotient} identifies the setting's exact
concept-indexed \(E_{\rm good}\) with the intersection of the exact accepted
Proposition~\ref{prop:step-003-per-trace} clauses over the finite distinct
error-trace family supplied by Lemmas~\ref{lem:step-002-xor-traces} and
\ref{lem:step-002-vc-growth}.
Proposition~\ref{prop:step-004-conditional-trace} applies the
finite union bound to the exact complement and proves
\[
\boxed{
\Pr_{\mathcal P}\!\left(E_{\rm good}(S,\mathcal P)^c\mid S\right)
\le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2},
\qquad c_{\rm tr}=\frac1{3600}.
}
\tag{Trace}
\]
This is exactly the accepted sketch row's conditional failure formula, with
the guards \(e_S(h)>\gamma/3\) and \(e_S(h)\le\gamma/3\), good thresholds
\(e_S(h)/(5d)\) and \(\gamma/2\), and indexed block multiplicity unchanged.
The union is over distinct indexed traces and all \(k\) blocks; it invokes no
independence.

Proposition~\ref{prop:step-004-unconditional-trace} then applies the tower
property to prove the same two upper bounds after integrating over \(S\), for
an arbitrary sample law and therefore for the setting's law
\(P_{D,c}^{n_0}\). Its implication (11)-(12) is the exact
conditional/unconditional confidence interface exported to later steps. No
utility assumption was imported into the conditional partition statement,
and no comparison of the right-hand side with \(\beta/4\), no bound on
\(\log(en_0/v)\), and no fixed-point calculation was performed here.

## Explicit Rate Audit

- Exposed variables: \(k,\Pi_C(n_0),n_0,v,m,\alpha,d\), with exact
  coefficient \(4\), exact accepted constant \(c_{\rm tr}=1/3600\), and the
  structural simplification \((en_0/v)^v\).
- Hidden constants may depend on: nothing. No asymptotic notation is used.
- Hidden constants may not depend on: \(X,C,S,D,c\), the sample law, labels,
  repeated-point pattern, partition, block, trace, concept representative,
  stage, list, support set, or generated event.
- Fixed quantities: for (Trace), \(C\), all public scalar parameters, and the
  full indexed sample \(S\) are fixed before partition randomness is drawn.
  For (10), only \(C\) and the public scalars are fixed, and \(S\) is
  integrated under an arbitrary law.
- Probability mode: (Trace) is pointwise conditional high probability over
  the random partition given \(S\). Equation (10) is unconditional joint
  high probability over \(S\) and the subsequent partition. The conversion
  is exactly the tower property. There is no expectation-only conclusion.
- Horizon mode: one fixed master sample, all \(k\) fixed blocks, and the
  finite family of distinct master-sample traces. There is no stage, all-time,
  or stopping-time claim.
- Norm mode: scalar absolute and relative deviations of indexed binary
  \(0\)-\(1\) error means; the rate itself bounds a failure probability.
- Admissibility conditions and auxiliary tolerances: the accepted
  dependencies supply the positive branch, \(1\le v\le n_0\), exact
  integers \(k,m,n_0\), and \(c_{\rm tr}=1/3600\). The exact tolerances are
  \(\gamma=\alpha/16\), branch threshold \(\gamma/3\), upper threshold
  \(\gamma/2\), and relative tolerance \(1/(5d)\).
- Term absorption or simplification inequalities: the only simplifications
  are the displayed deterministic substitutions
  \(|\mathcal E_C(S)|\le\Pi_C(n_0)\le(en_0/v)^v\). No exponent, trace
  multiplicity, block multiplicity, ceiling, or confidence term is absorbed.
- Probability conversion: equation (9) is one finite union bound over
  \(k|\mathcal E_C(S)|\) events; equation (13) is one tower-property
  integration. Neither conversion requires block independence.
- Contribution to any Rate Specialization Bridge: (Trace) is the exact raw
  failure expression consumed by step_005. This step does not prove
  \(\log(en_0/v)\le C_{\rm fp}\log Q\), choose \(C_{\rm blk}\), or compare
  the expression with \(\beta_{\rm tr}=\beta/4\).
- Baseline-reduction check: at \(v=d\), the final multiplicity becomes the
  coarse exponent-\(d\) trace factor. At \(v=1\), it is \(en_0\). Infinite
  \(C\), duplicate concepts, and repeated indexed points remain covered
  because the union uses distinct finite traces. The \(d=0\) branch is
  already bypassed by the accepted positive-branch dependencies and never
  evaluates \(1/v\) or \(1/d\) here.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting/sketch-defined objects: \(E_{\rm good}\),
  \(\mathcal E_C(S)\), \(\Pi_C(n_0)\), \(k,m,n_0,d,v,\alpha\), and
  \(\gamma=\alpha/16\). The exported public-facing interface is exactly
  (Trace) and its unconditional counterpart (10).
- Public-facing inherited constant: \(c_{\rm tr}=1/3600\), proved by the
  accepted Proposition~\ref{prop:step-003-per-trace}; no new constant is
  chosen in this step.
- Appendix-local objects: the indexed trace \(z(h;S)\), its master mean
  \(\bar z\), its block mean \(\bar z_i^{\mathcal P}\), and the exact
  trace-block event \(\mathsf G_{z,i}\). The sketch-defined block index set
  \(I_i\) is written \(I_i(\mathcal P)\) only to expose its dependence on the
  realized partition. These objects are direct expressions from
  setting-defined sample and partition objects and are eliminated from the
  exported formula.
- Proof-local objects: the arbitrary sample law \(\mathsf Q\), the generic
  confidence level \(\eta\), the finite union index \(J\), and generic event
  symbols in the restated probability tools. None enters a theorem-facing
  parameter dictionary.
- Constant provenance: the coefficient \(4\) and exponent constant
  \(1/3600\) are inherited from the accepted per-trace proposition; the
  factor \(k|\mathcal E_C(S)|\) is the exact cardinality of the finite union.
  No free threshold, rate, margin, radius, or bounded quantity is introduced.
- Assumption provenance: assump:finite-littlestone and
  assump:approximate-dp-regime are primitive. Finiteness and the trace
  cardinality chain are accepted step_002 conclusions. Each per-trace
  conditional bound is an accepted step_003 conclusion. The generated event
  \(E_{\rm good}\) is proved in this step through
  Lemma~\ref{lem:step-004-trace-quotient} and
  Proposition~\ref{prop:step-004-conditional-trace}; it is not assumed.
- Conditional-scope note: fixing \(S\) is a local conditional hypothesis
  quantified over every indexed labeled sample. It imposes no iid,
  realizability, population-utility, or class-cardinality condition. The
  optional specialization \(S\sim P_{D,c}^{n_0}\) occurs only after the
  pointwise result is complete.
- Dependence note: the proof uses the marginal per-trace/block bounds from
  step_003 and finite subadditivity. The \(k\) block index sets are allowed to
  be mutually dependent because they arise from one partition.
- Indexed-data note: traces retain coordinates \(r\in[n_0]\). Repeated
  underlying sample points are never collapsed when block means are formed.
- Scope boundary: step_005 alone is responsible for the ceiling-aware
  fixed-point and the \(\beta/4\) allocation. No such budget is claimed here.
- The optional global_proof.md and global_proof_review.md were not read or
  used as evidence, cited results, assumption sources, or authority to alter
  the target claim.
