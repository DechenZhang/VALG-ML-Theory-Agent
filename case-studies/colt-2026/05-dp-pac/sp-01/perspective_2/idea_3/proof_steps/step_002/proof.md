# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: step_002
- Unit attempt: 2
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted dependency proof: perspective_2/idea_3/proof_steps/step_001/proof.md
- Accepted dependency proof SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486
- Accepted dependency review: perspective_2/idea_3/proof_steps/step_001/review.md
- Accepted dependency review SHA-256: 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Optional global diagnostic SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407 (identity verification only; not used)
- Optional global diagnostic-review SHA-256: fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710 (identity verification only; not used)

## Target Step Claim

- Intended claim: Conditional on indexed \(S\), prove
  \(\lvert\mathcal E_C(S)\rvert\le\Pi_C(n_0)\le(en_0/v)^v\).
- Depends on: step_001.
- Assumptions used: Primitive assump:finite-littlestone; derived
  positive-branch legality.
- Technical challenge: Count traces for possibly infinite \(C\).
- Intended proof tool or cited result: Xor bijection and Sauer--Shelah.
- Output target: Finite error-trace family.
- Rate objective: Preserve exponent \(v\) exactly.
- Row-local review status: PENDING. Acceptance of the sketch is supplied by
  the binding proof_sketch_review.md, not by this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:finite-littlestone: \(C\subseteq\{0,1\}^X\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\), with
    \(v=\operatorname{VC}(C)\le d<\infty\).
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-001-boundary-entry}, certified by the accepted
    step_001 review, gives \(1\le v\le d\) on the \(d\ge1\) branch.
  - Proposition~\ref{prop:step-001-teacher-existence}, certified by the same
    review, supplies the realized positive integer \(n_0\) and proves
    \(n_0\ge v\).
- Local conditional hypotheses:
  - Fix an arbitrary indexed labeled sample
    \(S=((x_r,y_r))_{r=1}^{n_0}\). Conditioning on \(S\) fixes both its
    ordered point sequence and its label vector. No realizability, iid,
    partition, or generated-event hypothesis is used.

The accepted step_001 proof/review pair has the matching sketch attempt,
unit attempt, binding setting, accepted sketch, and accepted sketch-review
identities recorded above, and its review status is ACCEPTED.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:finite-littlestone} and the accepted positive-branch dictionary from Proposition~\ref{prop:step-001-teacher-existence}, for every fixed indexed labeled sample \(S=((x_r,y_r))_{r=1}^{n_0}\), xor by the fixed label vector bijects the prediction-trace set onto \(\mathcal E_C(S)\); hence \(\lvert\mathcal E_C(S)\rvert=\lvert\mathcal T_C(x_{1:n_0})\rvert\le\Pi_C(n_0)\), even if \(C\) is infinite or the indexed points repeat. | Proves the first target inequality and finiteness of the exact error-trace family consumed downstream. |
| unit_002 | lemma | Under Assumption~\ref{assump:finite-littlestone}, on the positive branch Proposition~\ref{prop:step-001-boundary-entry} establishes \(1\le v\le d\) and Proposition~\ref{prop:step-001-teacher-existence} establishes the realized-size bound \(n_0\ge v\), hence \(1\le v\le n_0\); together with the Sauer--Shelah lemma, \(\Pi_C(n_0)\le\sum_{j=0}^{v}\binom{n_0}{j}\le(en_0/v)^v\). | Proves the second target inequality while retaining exponent \(v\) exactly. |

Atomic step = no. The xor reduction and the VC growth bound are independent
nontrivial subclaims and are therefore exposed as separate local units.

## Cited Result Applications

### Accepted dependency: positive-branch legality and realized dictionary

- Source or name: accepted
  Propositions~\ref{prop:step-001-boundary-entry} and
  \ref{prop:step-001-teacher-existence} in the step_001 proof, certified by
  its matching accepted review.
- Restated statement in current notation: on the positive branch \(d\ge1\),
  one has \(1\le v\le d\), and the realized master-sample size \(n_0\) is a
  positive integer satisfying \(n_0\ge v\).
- Instantiated objects: the same \(C,d,v,n_0\) used in the setting and in the
  present fixed indexed sample \(S\).
- Required assumptions of the accepted dependency:
  Assumptions~\ref{assump:finite-littlestone} and
  \ref{assump:approximate-dp-regime}, together with the dependency's scalar
  construction.
- Conclusion used: exactly \(1\le v\le n_0\), so the Sauer--Shelah
  simplification has a positive denominator and its required range.
- Assumption discharge: both named assumptions are primitive conditions in
  setting.md, and the scalar construction and resulting \(1\le v\le n_0\)
  interface are proved in step_001 and certified by its accepted review. The
  present step consumes only that accepted interface; it does not add the
  parameter regime as an independent combinatorial hypothesis, nor reprove or
  strengthen the scalar construction.

### Sauer--Shelah lemma in sequence form

- Source or name: the Sauer--Shelah lemma for binary concept classes.
- Restated statement in current notation: if
  \(H\subseteq\{0,1\}^X\) has \(\operatorname{VC}(H)=w<\infty\), then for
  every finite indexed point sequence \(z_{1:n}\), with
  \(q=\lvert\{z_1,\ldots,z_n\}\rvert\),
  \[
  \left|\left\{(h(z_r))_{r=1}^n:h\in H\right\}\right|
  \le \sum_{j=0}^{\min\{w,q\}}\binom qj.
  \tag{SS}
  \]
  This statement places no cardinality restriction on \(H\); it counts only
  its distinct restrictions to the finite set of sampled points.
- Instantiated objects: \(H=C\), \(w=v\), and arbitrary sequences of length
  \(n=n_0\).
- Required assumptions: \(C\) is binary and has finite VC dimension \(v\).
- Assumption discharge: binary-valuedness and finite \(v\le d<\infty\) follow
  from Assumption~\ref{assump:finite-littlestone}; the accepted dependency
  supplies \(1\le v\le n_0\).
- Conclusion used: every length-\(n_0\) prediction-trace set has size at most
  \(\sum_{j=0}^{v}\binom{n_0}{j}\), after accounting for duplicate indexed
  points.

### Internal result applications

- Lemma~\ref{lem:step-002-xor-traces} supplies the exact bijection between
  prediction traces and the error traces entering all later block-deviation
  arguments.
- Lemma~\ref{lem:step-002-vc-growth} supplies the cardinality bound on the
  prediction-trace family with exponent \(v\).

## Local Derivation

### unit_001: lemma

**Lemma (Label-xor bijection for indexed error traces).**
\label{lem:step-002-xor-traces}
Under Assumption~\ref{assump:finite-littlestone} and the accepted
positive-branch dictionary from
Proposition~\ref{prop:step-001-teacher-existence}, for every fixed indexed
labeled sample \(S=((x_r,y_r))_{r=1}^{n_0}\), define the prediction-trace set
\[
\mathcal T_C(x_{1:n_0})
:=\left\{(h(x_r))_{r=1}^{n_0}:h\in C\right\}.
\tag{1}
\]
Then xor by the fixed label vector is a bijection from
\(\mathcal T_C(x_{1:n_0})\) onto \(\mathcal E_C(S)\). Consequently,
\[
\lvert\mathcal E_C(S)\rvert
=\lvert\mathcal T_C(x_{1:n_0})\rvert
\le\Pi_C(n_0),
\tag{2}
\]
and these trace families are finite even when \(C\) is infinite. The
conclusion remains valid when indexed sample points repeat, including for an
arbitrary fixed label vector.

**Proof.** Write \(y=(y_1,\ldots,y_{n_0})\) and define
\[
\Phi_y:\{0,1\}^{n_0}\longrightarrow\{0,1\}^{n_0},
\qquad
\Phi_y(b)_r=b_r\mathbin\oplus y_r.
\tag{3}
\]
For binary coordinates,
\(b_r\mathbin\oplus y_r=\mathbf 1\{b_r\ne y_r\}\), and
\(\Phi_y(\Phi_y(b))=b\). Thus \(\Phi_y\) is an involution and hence a
bijection on the entire binary cube. Moreover, directly from the definition
of the error trace,
\[
\mathcal E_C(S)=\Phi_y\bigl(\mathcal T_C(x_{1:n_0})\bigr).
\tag{4}
\]
The restriction of a bijection to a set is a bijection from that set onto its
image, proving the equality in (2). Notice that this is a bijection between
sets of distinct traces, not between \(C\) and its traces: different
functions in a possibly infinite \(C\) may induce the same vector, and such
duplicates are counted only once. Since both trace sets lie in the finite
cube \(\{0,1\}^{n_0}\), each contains at most \(2^{n_0}\) vectors.

For completeness, let \(Z=\{x_1,\ldots,x_{n_0}\}\). If some indexed points
repeat, a restriction \(h|_Z\) determines every coordinate of
\((h(x_r))_{r=1}^{n_0}\), and equality of those ordered vectors implies
equality of the two restrictions on \(Z\). Hence repeated indices neither
create nor merge any trace beyond the ordinary restriction to \(Z\). Even if
two repeated records carry different fixed labels, (3) is still a bijection,
so the same cardinality conclusion holds. Finally, in the standard sequence
form of the growth function,
\[
\Pi_C(n_0)
=\sup_{z_{1:n_0}\in X^{n_0}}
\left|\left\{(h(z_r))_{r=1}^{n_0}:h\in C\right\}\right|,
\tag{5}
\]
and the particular sequence \(x_{1:n_0}\) is among those over which the
supremum is taken. This proves the inequality in (2). \(\square\)

### unit_002: lemma

**Lemma (VC growth bound at the realized master-sample size).**
\label{lem:step-002-vc-growth}
Under Assumption~\ref{assump:finite-littlestone}, on the positive branch,
Proposition~\ref{prop:step-001-boundary-entry} establishes \(1\le v\le d\)
and Proposition~\ref{prop:step-001-teacher-existence} establishes the
realized-size bound \(n_0\ge v\); therefore \(1\le v\le n_0\). Under these
two named propositions and the Sauer--Shelah lemma (SS), the growth function
obeys
\[
\Pi_C(n_0)
\le\sum_{j=0}^{v}\binom{n_0}{j}
\le\left(\frac{e n_0}{v}\right)^v.
\tag{6}
\]
This conclusion applies to possibly infinite \(C\), and the exponent on the
right-hand side is exactly \(v\).

**Proof.** Fix an arbitrary indexed sequence \(z_{1:n_0}\) and let
\(q=\lvert\{z_1,\ldots,z_{n_0}\}\rvert\le n_0\). Applying (SS) gives
\[
\left|\left\{(h(z_r))_{r=1}^{n_0}:h\in C\right\}\right|
\le\sum_{j=0}^{\min\{v,q\}}\binom qj
\le\sum_{j=0}^{v}\binom{n_0}{j}.
\tag{7}
\]
For the second inequality, set \(\binom qj=0\) when \(j>q\) and use
\(\binom qj\le\binom{n_0}j\) for \(0\le j\le q\). Taking the supremum over
all \(z_{1:n_0}\) proves the first inequality in (6). This also shows
directly why duplicate points cause no difficulty in the growth bound.

It remains to simplify the binomial sum without changing its exponent.
Because \(1\le v\le n_0\), one has \(0<v/n_0\le1\). The binomial theorem and
\((v/n_0)^j\ge(v/n_0)^v\) for every \(0\le j\le v\) give
\[
\left(1+\frac v{n_0}\right)^{n_0}
=\sum_{j=0}^{n_0}\binom{n_0}{j}
  \left(\frac v{n_0}\right)^j
\ge\left(\frac v{n_0}\right)^v
  \sum_{j=0}^{v}\binom{n_0}{j}.
\tag{8}
\]
Using \(1+u\le e^u\) at \(u=v/n_0\) and rearranging (8),
\[
\sum_{j=0}^{v}\binom{n_0}{j}
\le\left(\frac{n_0}{v}\right)^v
     \left(1+\frac v{n_0}\right)^{n_0}
\le\left(\frac{n_0}{v}\right)^v e^v
=\left(\frac{e n_0}{v}\right)^v.
\tag{9}
\]
No replacement of \(v\) by \(d\), and no class-cardinality factor, occurs.
This proves (6). \(\square\)

## Target-Step Assembly

On the positive branch, Proposition~\ref{prop:step-001-boundary-entry}
establishes \(1\le v\le d\), and
Proposition~\ref{prop:step-001-teacher-existence} establishes the realized
master-sample bound \(n_0\ge v\); hence these two propositions give
\(1\le v\le n_0\). Fix any indexed labeled sample
\(S=((x_r,y_r))_{r=1}^{n_0}\). Lemma~\ref{lem:step-002-xor-traces}
(unit_001) proves, by the label-xor bijection,
\[
\lvert\mathcal E_C(S)\rvert
\le\Pi_C(n_0).
\]
Lemma~\ref{lem:step-002-vc-growth} (unit_002) applies Sauer--Shelah and the
explicit binomial-sum calculation to prove
\[
\Pi_C(n_0)\le\left(\frac{e n_0}{v}\right)^v.
\]
Combining these two named results yields the exact accepted sketch-row claim
\[
\boxed{
\lvert\mathcal E_C(S)\rvert
\le\Pi_C(n_0)
\le\left(\frac{e n_0}{v}\right)^v
}.
\]
The sample \(S\) was arbitrary, so the conclusion is deterministic and
pointwise after conditioning on \(S\). The proof counts distinct traces, not
concepts; it therefore remains valid for infinite \(C\), duplicate functions,
and duplicate indexed points. The optional global diagnostic was not used as
evidence, a cited result, an assumption source, or planning authority.

## Explicit Rate Audit

- Exposed variables: \(n_0\) and \(v\). The structural dependence is exactly
  \((e n_0/v)^v\).
- Hidden constants may depend on: nothing. The number \(e\) is the explicit
  universal numerical base of the natural logarithm.
- Hidden constants may not depend on: \(X,C,d,n_0,v\), the indexed sample,
  its labels, repeated-point pattern, any partition, block, stage, list,
  support set, or generated event.
- Fixed quantities: the class \(C\) and indexed labeled sample \(S\) are fixed
  for the pointwise conditional statement; the bound is uniform over both.
- Probability mode: deterministic for every fixed \(S\), hence valid
  pointwise conditional on \(S\). No failure probability or expectation is
  introduced.
- Horizon mode: fixed finite indexed length \(n_0\).
- Norm mode: none; the quantity bounded is finite-set cardinality.
- Admissibility conditions and auxiliary tolerances: exactly
  \(1\le v\le n_0\), supplied by the accepted dependency. There are no
  auxiliary tolerances.
- Term absorption or simplification inequalities: equations (8)-(9) display
  the complete simplification
  \(\sum_{j=0}^{v}\binom{n_0}{j}\le(en_0/v)^v\); no term is hidden or
  absorbed by asymptotic notation.
- Probability conversion: none.
- Contribution to any Rate Specialization Bridge: this finite trace count is
  the exact cardinality input for the later conditional union bound and keeps
  the trace exponent at \(v\), rather than \(d\) or \(\log|C|\).
- Baseline-reduction check: at \(v=d\), the same formula becomes
  \((e n_0/d)^d\), recovering the coarse exponent-\(d\) scale without a
  stronger claim. At \(v=1\), it gives \(e n_0\). The \(d=0\) zero-sample
  branch is already closed by step_001; the expression \(1/v\) is never
  evaluated there.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing, setting-defined objects: \(\mathcal E_C(S)\),
  \(\Pi_C(n_0)\), \(v\), and the realized \(n_0\). The only exported new
  information is their cardinality chain in the boxed display.
- Proof-local objects: the prediction-trace set
  \(\mathcal T_C(x_{1:n_0})\), fixed label vector \(y\), xor involution
  \(\Phi_y\), distinct-point set \(Z\), and its cardinality \(q\). Each is
  defined directly from the fixed indexed sample and eliminated from the
  target-step interface.
- Proof-local checked-citation variables: \(H,w,z_{1:n},n\) are dummy
  objects used only to restate Sauer--Shelah in current notation; the
  application immediately instantiates them as \(C,v,z_{1:n_0},n_0\).
- Constant provenance: no helper constant, threshold, radius, rate, margin,
  event, or bounded generated quantity is introduced. The finite bounds are
  proved by Lemmas~\ref{lem:step-002-xor-traces} and
  \ref{lem:step-002-vc-growth}.
- Assumption provenance: assump:finite-littlestone is primitive.
  Positive-branch legality \(1\le v\le n_0\) is a derived conclusion of the
  accepted step_001 dependency. Fixed \(S\) is only a local conditional
  hypothesis, quantified arbitrarily; no generated invariant is assumed.
- Repeated points and potentially inconsistent fixed labels do not require a
  realizability condition: repeated points are collapsed only for counting
  prediction restrictions, while xor by any fixed binary label vector is an
  ambient-cube bijection.
- Infinite \(C\) causes no cardinality issue because the proof counts the
  image of \(C\) in the finite cube \(\{0,1\}^{n_0}\), and Sauer--Shelah is a
  restriction-count theorem with no finiteness assumption on \(C\).
- The optional global_proof.md content was not consulted. Its paired review
  was not used as evidence, a cited result, an assumption source, or authority
  to alter the target claim.
