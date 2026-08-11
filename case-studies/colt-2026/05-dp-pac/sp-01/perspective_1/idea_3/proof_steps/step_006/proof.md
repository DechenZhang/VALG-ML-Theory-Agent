# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the exact public bridge
  \[
  Q_{\oplus}\le C_{\rm quota}\frac{M}{\varepsilon}
  \log^2\!\left(\frac{eM}{\varepsilon\delta}\right),
  \]
  including each ceiling and every natural-log monotonicity/absorption
  inequality, with no factor/quotient cardinality term.
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:vc-one-factors`,
  `assump:global-privacy-range`; derived: accepted `step_001` conclusion
  \(M\ge 2k\).
- Technical challenge: Sum heterogeneous factor logarithms and absorb the
  \(+k\) ceiling error at the exact public scale.
- Intended proof tool or cited result: Direct monotonicity and ceiling
  arithmetic.
- Output target: Public Rate Specialization Bridge and \(C_{\rm quota}\).
- Rate objective: Upper public-rate objective: all
  \(k,d_i,s_i,M,\varepsilon,\delta\) dependence explicit; deterministic
  fixed-sample bridge; universal constants only.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level
  acceptance is supplied by the current accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:vc-one-factors}: every factor is nonconstant,
    has VC dimension one, and has finite \(d_i=\operatorname{LD}(C_i)\).
    In the accepted dependency this gives \(s_i\ge2\).
  - Assumption~\ref{assump:global-privacy-range}:
    \(0<\varepsilon\le1/10\) and \(0<\delta<1\).
- Derived invariants supplied by accepted dependencies:
  - Lemma~\ref{lem:step-001-logstar} from the accepted `step_001` proof
    gives, with \(M=M_{\oplus}(C)=\sum_{i=1}^k s_i\),
    \[
    s_i\ge2\quad(1\le i\le k),
    \qquad M\ge2k.
    \tag{1}
    \]
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256
    `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256
    `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`,
    with `Step-Review Status = ACCEPTED` for sketch attempt 1, `step_001`,
    unit attempt 1, and the preceding proof hash.

No generated event, random quantity, learner property, cardinality bound, or
local conditional hypothesis is assumed. The dependency is used only through
the scalar conclusions in (1).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range} and accepted Lemma~\ref{lem:step-001-logstar}, if \(L_i=\log(e s_i/(\varepsilon\delta))\) and \(L=\log(eM/(\varepsilon\delta))\), then \(2\le s_i\le M\), \(1<L_i\le L\), and \(\sum_i s_iL_i^2\le ML^2\). | Checks every log argument, natural-log monotonicity, and the heterogeneous logarithm sum. |
| `unit_002` | lemma | Under the same assumptions, accepted dependency, and Lemma~\ref{lem:step-006-log-domination}, every exact quota ceiling satisfies \(q_i\le(K_Y/\varepsilon)s_iL_i^2+1\), and hence \(Q_{\oplus}\le(K_YM/\varepsilon)L^2+k\). | Resolves every ceiling and exposes its total residual as exactly one \(+1\) per factor. |
| `unit_003` | proposition | Under the same assumptions, accepted dependency, and Lemma~\ref{lem:step-006-ceiling-sum}, the public choice \(C_{\rm quota}=\max\{1,K_Y+1/20\}\) gives \(Q_{\oplus}\le C_{\rm quota}(M/\varepsilon)L^2\). | Absorbs \(k\) using \(M\ge2k\), completes the public Rate Specialization Bridge, and leaves no cardinality or separate \(k\) term. |

Atomic step = no. Natural-log domination, ceiling summation, and public-scale
absorption are independent nontrivial obligations and are separated above.

## Cited Result Applications

No external paper result or unproved standard theorem is used. The elementary
facts about ceilings and the natural logarithm are proved at their points of
use. The accepted dependency and local results used later are restated here in
current notation.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-logstar}, Log-star and aggregate-size comparisons | For the setting-defined \(s_i=1+\log^*(d_i+1)\) and \(M=\sum_i s_i\), one has \(s_i\ge2\) and \(M\ge2k\). | Assumption~\ref{assump:vc-one-factors} is the lemma's primitive basis. The proof/review hashes and accepted status are recorded above. | Positivity of every summand, \(s_i\le M\), \(M\ge2\), and \(k\le M/2\). |
| Lemma~\ref{lem:step-006-log-domination}, Endpoint-safe domination of heterogeneous natural logarithms | With \(L_i=\log(e s_i/(\varepsilon\delta))\) and \(L=\log(eM/(\varepsilon\delta))\), all arguments exceed \(20e\), \(1<L_i\le L\), and \(\sum_i s_iL_i^2\le ML^2\). | The accepted dependency gives \(s_i\ge2\) and \(M\ge2k\); Assumption~\ref{assump:global-privacy-range} gives the exact open/closed parameter endpoints. | Termwise domination of the heterogeneous logarithm sum. |
| Lemma~\ref{lem:step-006-ceiling-sum}, Ceiling-resolved heterogeneous quota sum | Applying \(\lceil x\rceil\le x+1\) separately to every setting-defined quota gives \(Q_{\oplus}\le(K_YM/\varepsilon)L^2+k\). | The quota definition is from the setting; Lemma~\ref{lem:step-006-log-domination} discharges the only simplification. | Technical quota inequality before ceiling absorption. |
| Proposition~\ref{prop:step-006-public-quota-bridge}, Public quota Rate Specialization Bridge | With \(C_{\rm quota}=\max\{1,K_Y+1/20\}\), the exact technical sum implies the target public rate. | The accepted dependency gives \(k\le M/2\); the privacy range and \(L>1\) give \(M/2\le (M/\varepsilon)L^2/20\). | Exact target-step conclusion and downstream public interface. |

## Local Derivation

### unit_001: lemma

**Lemma (Endpoint-safe domination of heterogeneous natural logarithms).**
\(\label{lem:step-006-log-domination}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and
\ref{assump:global-privacy-range} and accepted
Lemma~\ref{lem:step-001-logstar}, define the proof-local quantities
\[
L_i:=\log\!\left(\frac{e s_i}{\varepsilon\delta}\right)
\quad(1\le i\le k),
\qquad
L:=\log\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{2}
\]
Then every argument in (2) is finite and strictly larger than \(20e\), and
\[
2\le s_i\le M,
\qquad
1<L_i\le L,
\qquad
\sum_{i=1}^k s_iL_i^2\le ML^2.
\tag{3}
\]

Proof / justification:
Accepted Lemma~\ref{lem:step-001-logstar} gives \(s_i\ge2\) and
\(M=\sum_{j=1}^k s_j\). Because all summands are positive,
\[
M-s_i=\sum_{j\ne i}s_j\ge0,
\tag{4}
\]
where the sum is empty and equals zero when \(k=1\). Thus
\(2\le s_i\le M\). The same accepted lemma gives \(M\ge2k\), so
\(M\ge2\) because \(k\ge1\).

Assumption~\ref{assump:global-privacy-range} gives
\(0<\varepsilon\delta<1/10\). Consequently, for every factor,
\[
\frac{e s_i}{\varepsilon\delta}>20e>e,
\qquad
\frac{eM}{\varepsilon\delta}>20e>e.
\tag{5}
\]
These inequalities verify positivity and finiteness of both logarithm
arguments for every allowed \(\varepsilon,\delta\). Because the setting's
\(\log\) is the natural logarithm and it is strictly increasing on
\((0,\infty)\), (4) gives
\[
1<\log(20e)<L_i\le L.
\tag{6}
\]
Both sides in \(0<L_i\le L\) are nonnegative, so squaring preserves the
order: \(L_i^2\le L^2\). Multiplying separately by the positive,
heterogeneous weights \(s_i\) and summing the finite family gives
\[
\sum_{i=1}^k s_iL_i^2
\le \sum_{i=1}^k s_iL^2
=ML^2.
\tag{7}
\]
No equality or comparability among the \(s_i\)'s was used.

The endpoint checks are contained in (5): \(\varepsilon=1/10\) is allowed,
and for every admissible \(\delta<1\) the arguments stay strictly above
\(20e\), with limiting lower value \(20e\) as \(\delta\uparrow1\); as
\(\varepsilon\downarrow0\) or \(\delta\downarrow0\), each parameter remains
positive and the arguments only increase. Neither excluded zero endpoint is
inserted into a logarithm.

### unit_002: lemma

**Lemma (Ceiling-resolved heterogeneous quota sum).**
\(\label{lem:step-006-ceiling-sum}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and
\ref{assump:global-privacy-range}, accepted
Lemma~\ref{lem:step-001-logstar}, and
Lemma~\ref{lem:step-006-log-domination}, the setting-defined exact quotas
obey, for every \(i\),
\[
q_i
\le
K_Y\frac{s_i}{\varepsilon}L_i^2+1,
\tag{8}
\]
and their heterogeneous sum satisfies
\[
Q_{\oplus}
\le
\frac{K_Y}{\varepsilon}\sum_{i=1}^k s_iL_i^2+k
\le
K_Y\frac{M}{\varepsilon}L^2+k.
\tag{9}
\]

Proof / justification:
For a real number \(x\), if \(m=\lceil x\rceil\), then
\(m-1<x\le m\); hence \(m<x+1\), and in particular
\(\lceil x\rceil\le x+1\). Apply this inequality separately to each of the
\(k\) setting-defined numbers
\[
x_i:=K_Y\frac{s_i}{\varepsilon}
\log^2\!\left(\frac{e s_i}{\varepsilon\delta}\right)
=K_Y\frac{s_i}{\varepsilon}L_i^2.
\tag{10}
\]
All \(x_i\) are finite and positive by Assumption~\ref{assump:global-privacy-range},
the setting condition \(K_Y>0\), and
Lemma~\ref{lem:step-006-log-domination}. Since \(q_i=\lceil x_i\rceil\),
(8) follows for every factor, including a factor for which \(x_i\) happens
to be an integer.

Summing the \(+1\) from (8) over exactly \(k\) factors gives the first
inequality in (9); no ceiling is discarded or replaced by an unspecified
constant. The second inequality is exactly (7), multiplied by the positive
factor \(K_Y/\varepsilon\). This proves the technical quota inequality while
retaining the entire ceiling residual as the explicit term \(+k\).

### unit_003: proposition

**Proposition (Public quota Rate Specialization Bridge).**
\(\label{prop:step-006-public-quota-bridge}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and
\ref{assump:global-privacy-range}, accepted
Lemma~\ref{lem:step-001-logstar}, and
Lemma~\ref{lem:step-006-ceiling-sum}, define the universal public constant
\[
C_{\rm quota}:=\max\left\{1,K_Y+\frac1{20}\right\}.
\tag{11}
\]
Then
\[
Q_{\oplus}
\le C_{\rm quota}\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{12}
\]
The constant in (11) depends only on the fixed universal source constant
\(K_Y\), and (12) contains neither a separate factor-count term nor any
factor-class or quotient cardinality term.

Proof / justification:
Let
\[
A:=\frac{M}{\varepsilon}L^2
=\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{13}
\]
This proof-local quantity is positive. Accepted
Lemma~\ref{lem:step-001-logstar} gives \(M\ge2k\), hence
\[
k\le\frac M2.
\tag{14}
\]
Lemma~\ref{lem:step-006-log-domination} gives \(L>1\), while
Assumption~\ref{assump:global-privacy-range} gives
\(\varepsilon\le1/10\). Therefore the ceiling residual has the explicit
public-scale domination
\[
k
\le \frac M2
=\frac{\varepsilon}{2L^2}A
\le\frac1{20}A.
\tag{15}
\]
Combining (9) and (15) gives
\[
Q_{\oplus}
\le K_YA+k
\le\left(K_Y+\frac1{20}\right)A
\le C_{\rm quota}A,
\tag{16}
\]
which is (12).

Equation (11) is the only specialization choice. Equations (4)--(7) verify
the logarithmic conditions, (8)--(10) retain every exact quota ceiling, and
(14)--(16) perform the sole term absorption. The argument is deterministic,
so no event, union bound, conditioning step, or probability conversion is
present. Its inputs are only \(s_i,M,k,\varepsilon,\delta\), and \(K_Y\);
there is therefore no route by which \(|C_i|\), \(|Q_i|\), or any finite
support size could enter (12).

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-001-logstar} supplies the exact dependency
interface \(s_i\ge2\) and \(M\ge2k\). From it and the two primitive
assumptions, Lemma~\ref{lem:step-006-log-domination} verifies every natural-log
argument, proves the termwise monotonicity needed for heterogeneous
\((s_i)_i\), and establishes
\(\sum_i s_iL_i^2\le ML^2\). Lemma~\ref{lem:step-006-ceiling-sum} then applies
the ceiling inequality to every exact \(q_i\) and proves
\[
Q_{\oplus}\le K_Y(M/\varepsilon)L^2+k.
\]
Finally, Proposition~\ref{prop:step-006-public-quota-bridge} uses the exact
dependency bound \(k\le M/2\) and the exact privacy endpoints to prove
\(k\le (M/\varepsilon)L^2/20\). With the universal choice (11), these named
results imply exactly the binding `step_006` row, including its public Rate
Specialization Bridge and the absence of a separate factor, factor-class, or
quotient cardinality term.

The requested stress cases do not change any step of the assembly:

- If \(d_i=1\), then directly from the setting definition
  \(s_i=1+\log^*2=2\). If all \(d_i=1\), then \(M=2k\), so (14) is tight;
  nevertheless (15) absorbs all \(k\) ceilings. All factor log arguments are
  \(2e/(\varepsilon\delta)>20e\).
- Heterogeneous factors are handled term by term in (7); no maximum-to-sum
  factor, averaging assumption, or comparison among distinct \(s_i\)'s is
  used.
- If \(k=1\), then \(M=s_1\), so \(L_1=L\) and the heterogeneous-log
  comparison is equality. The exact one-factor statement is
  \(q_1\le K_Y(M/\varepsilon)L^2+1\), and (15) absorbs that sole ceiling at
  the same quota order without adding a cardinality term.
- The equality boundary \(M=2k\), including the all-\(d_i=1\) regime, is
  permitted. The proof uses the non-strict inequality \(k\le M/2\).
- At the allowed endpoint \(\varepsilon=1/10\), every admissible
  \(\delta<1\) leaves each log argument strictly above \(20e\); the smallest
  limiting value as \(\delta\uparrow1\) is \(20e\). For every
  allowed positive \(\varepsilon,\delta\) approaching zero, the arguments
  remain finite and positive and increase. Thus squaring never reverses the
  natural-log comparison.
- The only logarithms in the quota bridge have arguments
  \(e s_i/(\varepsilon\delta)\) and
  \(eM/(\varepsilon\delta)\); (5) checks both families explicitly. The
  base-two iterated logarithm occurs only inside the already defined \(s_i\)
  and is not confused with the natural logarithm in (2).

## Explicit Rate Audit

- Exposed variables: \(k\), \((d_i,s_i,q_i)_i\),
  \(M=M_{\oplus}(C)\), \(Q_{\oplus}\), \(\varepsilon\), and \(\delta\).
  The quotient sets \(Q_i\) and factor classes \(C_i\) remain in the ambient
  setting but neither their sizes nor their finiteness are rate variables.
- Hidden constants may depend on: only the fixed universal numerical source
  constant \(K_Y\) and the fixed natural-log convention. Explicitly,
  \(C_{\rm quota}=\max\{1,K_Y+1/20\}\).
- Hidden constants may not depend on:
  \(X,\Sigma,C,k,d_i,s_i,q_i,|C_i|,|Q_i|,D,\rho_i,n,\varepsilon\), or
  \(\delta\).
- Fixed quantities: \(K_Y\), the natural-log convention, and the setting's
  definition of \(s_i\). No accuracy, confidence, or sample-size quantity is
  changed by this bridge.
- Probability mode: deterministic and pointwise in every allowed structural
  and privacy parameter tuple. There is no random event or failure
  probability.
- Horizon mode: static/fixed-sample rate specialization. The quota inequality
  itself is independent of \(n\) and introduces no asymptotic,
  horizon-uniform, or candidate-uniform upgrade.
- Norm mode: scalar sample-quota count; no risk, norm, or metric conversion is
  performed.
- Admissibility conditions and auxiliary tolerances: exactly
  Assumptions~\ref{assump:vc-one-factors} and
  \ref{assump:global-privacy-range}, together with the accepted dependency
  conclusions (1). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: equations (4)--(7) prove
  natural-log domination, equations (8)--(10) resolve every ceiling, and
  equations (14)--(16) prove
  \[
  k\le M/2=(\varepsilon/(2L^2))A\le A/20
  \]
  before absorbing \(+k\).
- Probability conversion: None; the bridge is deterministic.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-006-public-quota-bridge}
  is the complete public bridge. Its auxiliary choice is (11), its technical
  checks are (4)--(7), its term simplification is (8)--(16), its probability
  conversion is the identity because no probability mode is present, and its
  final public rate is (12).
- Baseline-reduction check: when \(k=1\), \(M=s_1\), \(Q_{\oplus}=q_1\), and
  \(L_1=L\). Thus the proof reduces to the exact one-factor quota plus its one
  ceiling, followed by the same universal absorption. At the further endpoint
  \(d_1=1\), \(M=2\). No cardinality, support, probability, or mode loss is
  introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(s_i\), \(q_i\), \(M=M_{\oplus}(C)\),
  \(Q_{\oplus}\), \(\varepsilon\), \(\delta\), and \(K_Y\) are defined in
  `setting.md`. The only new public-facing object is
  \(C_{\rm quota}=\max\{1,K_Y+1/20\}\), directly defined from the fixed
  universal source constant and a numerical ceiling-absorption constant.
- `Proof-local`: \(L_i\) and \(L\) in (2) abbreviate the two repeated
  setting-derived natural-log expressions. They expose rather than hide every
  log argument and are not exported as theorem parameters.
- `Proof-local`: \(x_i\) in (10) is exactly the real quantity inside the
  setting-defined ceiling for \(q_i\). It is used only to prove the individual
  ceiling inequality.
- `Proof-local`: \(A=(M/\varepsilon)L^2\) in (13) abbreviates the public rate
  scale solely while displaying the exact coefficient in the \(+k\)
  absorption. It is not an extra rate, tolerance, or admissibility parameter.
- Constant provenance: \(K_Y\) is the setting-fixed universal source
  constant. The number \(1/20\) is proved in (15) from
  \(M\ge2k\), \(\varepsilon\le1/10\), and \(L>1\). Hence
  \(C_{\rm quota}\) has no free or data-dependent component.
- Assumption provenance: the parameter ranges are primitive conditions from
  Assumption~\ref{assump:global-privacy-range}. The facts \(s_i\ge2\) and
  \(M\ge2k\) are derived outputs of the accepted dependency, not primitive
  assumptions added here. The inequalities \(s_i\le M\), logarithm bounds,
  ceiling bounds, and ceiling absorption are proved in the three local units.
- Generated-object provenance: this deterministic scalar step introduces no
  event, learner, trajectory, stability condition, boundedness invariant, or
  other generated object.
- Cardinality surface: no \(|C_i|\), \(|Q_i|\), factor support size, or
  finiteness condition is used. The final interface also has no separate
  \(+k\) term after the proved absorption.
- Diagnostic boundary: the optional `global_proof.md` and
  `global_proof_review.md` were not read and were not used for planning,
  evidence, assumptions, citations, or claim changes.
