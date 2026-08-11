# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On \(\mathcal E_{\rm loc}\), prove
  \(\mathbb E_D\lvert X-c\rvert^k\leq C_k^{\rm rec}\sigma^k\).
- Depends on: `step_001`.
- Assumptions used: `assump:moment-class`; derived localization.
- Technical challenge: Preserve actual-center compatibility.
- Intended proof tool or cited result: Direct power inequality.
- Output target: Recentered moment.
- Rate objective: A finite constant depending only on \(k\).
- Sketch-row review status: `PENDING`; the separate `proof_sketch_review.md`
  acceptance gate records `ACCEPTED` for sketch attempt 1.

Throughout this artifact, \(\mu=\mu(D)\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:moment-class`: \(D\in\mathcal D(k,\lambda,\sigma)\), so
    \(\mathbb E_D\lvert X-\mu\rvert^k\leq\sigma^k\). No support,
    symmetry, density, or stronger tail condition is used.
- Accepted dependency artifacts:
  - `proof_steps/step_001/proof.md`, whose
    Lemma~\(\ref{lem:step-001-midpoint}\) produces the actual decoder center
    \(c\) and the generated event
    \(\mathcal E_{\rm loc}=\{\lvert c-\mu\rvert\leq50\sigma\}\).
  - `proof_steps/step_001/review.md`, which records `ACCEPTED` and validates
    that exact dependency interface.
- Derived invariants supplied by accepted dependencies:
  - The center \(c\) is always defined, and on the generated event
    \(\mathcal E_{\rm loc}\) it satisfies
    \(\lvert c-\mu\rvert\leq50\sigma\).
- Local conditional hypotheses: None.

The occurrence of \(\mathcal E_{\rm loc}\) is not promoted to a primitive
condition. It is the accepted dependency's generated event, exactly as required
by the binding sketch row.

## Local Lemma Map

Atomic step = no. Although the proof is a single direct calculation, its
translation of the primitive central moment to the generated actual center is a
downstream-facing derived invariant and is therefore exposed as one named local
lemma.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:moment-class}\) and accepted Lemma~\(\ref{lem:step-001-midpoint}\), for every localization outcome in \(\mathcal E_{\rm loc}\), \(\mathbb E_D\lvert X-c\rvert^k\leq2^{k-1}(1+50^k)\sigma^k\). | Recenter the primitive moment at the actual decoder center and supply an explicit \(k\)-only constant. |

## Cited Result Applications

### Accepted dependency: midpoint localization wrapper

- Source or name: accepted Lemma~\(\ref{lem:step-001-midpoint}\) from
  `proof_steps/step_001/proof.md`, validated by the `ACCEPTED`
  `proof_steps/step_001/review.md`.
- Restated statement in current notation: the dependency constructs the actual
  decoder output \(c\), defines
  \[
  \mathcal E_{\rm loc}:=\{\lvert c-\mu\rvert\leq50\sigma\},
  \]
  and proves that \(c\) is always defined and
  \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\). In particular, every
  localization outcome in \(\mathcal E_{\rm loc}\) obeys
  \(\lvert c-\mu\rvert\leq50\sigma\).
- Instantiated objects: the dependency's midpoint \(c\), the setting mean
  \(\mu(D)\), the setting scale \(\sigma\), and the same generated event
  \(\mathcal E_{\rm loc}\).
- Required assumptions and discharge: the dependency proof discharges its own
  primitive assumptions and its review accepts that discharge. This step uses
  only the accepted output \(\lvert c-\mu\rvert\leq50\sigma\) on
  \(\mathcal E_{\rm loc}\); it does not reopen or strengthen the dependency's
  hypotheses.
- Conclusion used: the pathwise displacement bound for the actual decoder
  center. The dependency's probability lower bound is recorded for provenance
  but is not needed in the moment calculation.

### Direct scalar power inequality

- Source or name: direct triangle and two-term power inequalities; no external
  citation is used.
- Restated statement: for every \(u,v\geq0\) and \(k>1\),
  \[
  (u+v)^k\leq2^{k-1}(u^k+v^k).
  \]
  Indeed, \(t\mapsto t^k\) is convex on \([0,\infty)\), and its midpoint
  inequality gives
  \[
  \left(\frac{u+v}{2}\right)^k
  \leq\frac{u^k+v^k}{2}.
  \]
- Instantiated objects: after the scalar triangle inequality,
  \(u=\lvert X-\mu\rvert\) and \(v=\lvert\mu-c\rvert\).
- Required assumptions and discharge: the formalized setting fixes \(k>1\),
  and both instantiated quantities are nonnegative absolute values.
- Conclusion used:
  \[
  \lvert X-c\rvert^k
  \leq2^{k-1}\bigl(\lvert X-\mu\rvert^k
              +\lvert\mu-c\rvert^k\bigr)
  \]
  pointwise.

### Local-result application register

- Source or name: Lemma~\(\ref{lem:step-002-recentered-moment}\), actual-center
  moment recentering (`unit_001`).
- Restated statement: under Assumption~\(\ref{assump:moment-class}\) and
  accepted Lemma~\(\ref{lem:step-001-midpoint}\), for every localization
  transcript in \(\mathcal E_{\rm loc}\),
  \[
  \mathbb E_D\lvert X-c\rvert^k
  \leq2^{k-1}(1+50^k)\sigma^k.
  \]
- Required assumptions and discharge: the primitive central moment bound comes
  from `assump:moment-class`, while the generated event and its
  \(50\sigma\) displacement bound come from the accepted dependency. The local
  derivation below discharges the remaining direct power-inequality step.
- Conclusion used: the displayed recentered moment is the sole local result
  invoked in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (actual-center moment recentering).**
\(\label{lem:step-002-recentered-moment}\)

Under Assumption~\(\ref{assump:moment-class}\) and accepted
Lemma~\(\ref{lem:step-001-midpoint}\), for every localization transcript whose
generated center \(c\) lies in
\(\mathcal E_{\rm loc}=\{\lvert c-\mu\rvert\leq50\sigma\}\),
\[
\mathbb E_D\lvert X-c\rvert^k
\leq 2^{k-1}(1+50^k)\sigma^k.
\]

**Proof / justification.** Fix an arbitrary localization transcript in
\(\mathcal E_{\rm loc}\). Relative to the distributional expectation
\(\mathbb E_D\), its output \(c\) is now a fixed real number. For every
\(x\in\mathbb R\), the scalar triangle inequality and the direct power
inequality restated above give
\[
\begin{aligned}
\lvert x-c\rvert^k
&=\lvert (x-\mu)+(\mu-c)\rvert^k\\
&\leq\bigl(\lvert x-\mu\rvert+\lvert\mu-c\rvert\bigr)^k\\
&\leq2^{k-1}\left(
    \lvert x-\mu\rvert^k+\lvert\mu-c\rvert^k
  \right).
\end{aligned}
\]
Taking expectation with respect to \(X\sim D\) is legitimate because the
right-hand side is integrable: its first term has finite expectation by
Assumption~\(\ref{assump:moment-class}\), and its second term is a finite
constant for the fixed transcript. Hence
\[
\mathbb E_D\lvert X-c\rvert^k
\leq2^{k-1}\left(
  \mathbb E_D\lvert X-\mu\rvert^k+\lvert\mu-c\rvert^k
\right).
\]
Assumption~\(\ref{assump:moment-class}\) and the accepted dependency bound on
\(\mathcal E_{\rm loc}\) now yield
\[
\begin{aligned}
\mathbb E_D\lvert X-c\rvert^k
&\leq2^{k-1}\left(\sigma^k+(50\sigma)^k\right)\\
&=2^{k-1}(1+50^k)\sigma^k.
\end{aligned}
\]
The argument holds for every transcript in the generated event, so the claimed
on-event statement is pathwise in the localization output.

For the zero-displacement boundary \(c=\mu\), the original expression itself
gives the sharper exact specialization
\[
\mathbb E_D\lvert X-c\rvert^k
=\mathbb E_D\lvert X-\mu\rvert^k
\leq\sigma^k.
\]
Thus recentering preserves the primitive moment when no translation is present;
the displayed exported constant only covers the full localization radius.
\(\square\)

## Target-Step Assembly

Accepted Lemma~\(\ref{lem:step-001-midpoint}\) supplies the actual center used
by the protocol and proves the derived displacement invariant
\(\lvert c-\mu\rvert\leq50\sigma\) on the generated event
\(\mathcal E_{\rm loc}\). Assumption~\(\ref{assump:moment-class}\) supplies the
only primitive moment input,
\(\mathbb E_D\lvert X-\mu\rvert^k\leq\sigma^k\).

Lemma~\(\ref{lem:step-002-recentered-moment}\) composes exactly those two
inputs through the direct power inequality and proves, for every localization
outcome in \(\mathcal E_{\rm loc}\),
\[
\mathbb E_D\lvert X-c\rvert^k
\leq C_k^{\rm rec}\sigma^k,
\qquad
C_k^{\rm rec}:=2^{k-1}(1+50^k).
\]
The constant is finite for every fixed \(k>1\) and depends only on \(k\). The
center in this conclusion is the dependency's actual decoder output, not an
oracle center or a surrogate. This is the exact binding `step_002` claim and
exports the requested recentered moment.

## Explicit Rate Audit

- Exposed variables: fixed moment order \(k>1\), scale \(\sigma>0\), law \(D\),
  setting mean \(\mu(D)\), and actual decoder center \(c\). The quantitative
  output is \(C_k^{\rm rec}\sigma^k\).
- Hidden constants may depend on: fixed \(k\) only. In fact the constant is
  explicit: \(C_k^{\rm rec}=2^{k-1}(1+50^k)\).
- Hidden constants may not depend on: \(\lambda,\sigma,\epsilon,\delta,D,c\),
  the localization transcript, or any sample count.
- Fixed quantities: \(k\) is fixed. No limit or asymptotic simplification is
  taken.
- Probability mode: pathwise for every localization transcript in the generated
  event \(\mathcal E_{\rm loc}\); \(\mathbb E_D\) is the population expectation
  over \(X\sim D\). This step performs no probability conversion and does not
  alter the dependency's bound
  \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\).
- Horizon mode: static population-moment statement; no horizon, stopping time,
  or horizon-uniform upgrade is involved.
- Norm mode: absolute value on \(\mathbb R\), raised to the \(k\)-th power.
- Admissibility conditions and auxiliary tolerances: the primitive central
  moment inequality and the accepted generated radius
  \(\lvert c-\mu\rvert\leq50\sigma\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
  \mathbb E_D\lvert X-c\rvert^k
  \leq2^{k-1}\left(
      \sigma^k+(50\sigma)^k
    \right)
  =2^{k-1}(1+50^k)\sigma^k.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step exports the
  \(k\)-only recentered-moment constant consumed by `step_010` and `step_011`;
  it makes no sample-complexity simplification itself.
- Baseline-reduction check: at \(c=\mu\), the exact identity
  \(\lvert X-c\rvert=\lvert X-\mu\rvert\) recovers the primitive bound
  \(\mathbb E_D\lvert X-c\rvert^k\leq\sigma^k\) without the conservative
  translation constant.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined expressions:
  - \(X\sim D\), \(\mu=\mu(D)\), \(k\), and \(\sigma\) retain exactly their
    meanings in `setting.md`.
  - \(\mathbb E_D\) denotes population expectation for a generic draw with law
    \(D\). No empirical moment is introduced.
- Accepted dependency objects:
  - \(c\) is the actual public-facing decoder center produced by accepted
    Lemma~\(\ref{lem:step-001-midpoint}\).
  - \(\mathcal E_{\rm loc}=\{\lvert c-\mu\rvert\leq50\sigma\}\) is a generated
    event supplied by that accepted dependency, not a primitive assumption and
    not a new local hypothesis.
- Public-facing helper object:
  - \(C_k^{\rm rec}:=2^{k-1}(1+50^k)\) is the sole new exported object. It is
    defined directly from the fixed setting parameter \(k\), and
    Lemma~\(\ref{lem:step-002-recentered-moment}\) proves that it bounds the
    recentered moment. It is finite and independent of every problem quantity
    other than \(k\).
- Proof-local objects:
  - The dummy nonnegative scalars \(u,v\) in the direct power inequality and the
    fixed scalar \(x\) in the pointwise derivation are proof-local and are not
    exported.
- Appendix-local objects: None.
- Constant provenance: the radius \(50\) is inherited from the accepted
  dependency claim; the factor \(2^{k-1}\) is derived by the displayed convexity
  calculation; their combination into \(C_k^{\rm rec}\) is proved in
  Lemma~\(\ref{lem:step-002-recentered-moment}\). No free bounded constant is
  introduced.
- Assumption provenance: the central moment is primitive under
  `assump:moment-class`. The center, event, and radius are accepted derived
  outputs of `step_001`. The recentered moment is proved in this step. No
  generated-object fact is treated as primitive.
- Conditional interpretation: fixing a localization transcript before taking
  \(\mathbb E_D\) makes the claim pointwise in the generated center. Independence
  is not needed for this deterministic translation inequality, so this step does
  not import `assump:iid-independent-randomness` beyond the accepted dependency.
- Boundary audit: \(c=\mu\) recovers the exact primitive moment; degenerate laws
  are allowed; \(\sigma>0\) is part of the setting; and the calculation remains
  valid for every fixed \(k>1\), including \(k\) arbitrarily close to one.
- Diagnostic context boundary: `global_proof.md` was not read or used for this
  step.
