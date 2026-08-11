# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1

## Target Step Claim

- Intended claim: Derive universal \(a_{\mathrm L},c_\delta>0\) such that,
  for \(m\ge8\), \(\delta\le c_\delta/[m^2\log(m+1)]\), and
  \(m<a_{\mathrm L}\log_2^*d\), every unrestricted
  \((0.1,\delta)\)-DP factor learner has worst-case expected population risk
  strictly greater than \(1/8\).
- Dependencies: step_001.
- Assumptions used: Primitive assump:vc-one-factors and
  assump:global-privacy-range, together with the checked hypotheses of the
  cited ALMM and Bun--Nissim--Stemmer--Vadhan results.
- Technical challenge: The formal ALMM corollary is PAC-form. The stronger
  expected-risk interface must be derived from the active source proof,
  including the with-replacement privacy calculation, rather than quoted from
  that corollary.
- Intended proof tool or cited result: Alon--Livni--Malliaris--Moran (ALMM),
  arXiv:1806.00949v3, lem:bun, lem:reduction, thm:main, thm:shelah, and
  thm:ADPimpliesLD; Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553,
  Lemma 5.9 and its secrecy-of-the-sample calculation.
- Output target: A source-faithful unrestricted expected-risk factor lower
  wrapper with the exact current-notation risk, adjacency, and output-space
  interfaces.
- Rate objective: Exposed variables \(d,m,\delta\), fixed
  \(\varepsilon=0.1\), expectation in exact distributional 0-1 risk, and
  universal constants only; the statement is candidate-wise in \(m\).
- Row-local review status: PENDING in the accepted sketch; sketch-level
  acceptance is supplied by proof_sketch_review.md.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:vc-one-factors: for the fixed factor under consideration,
    \(C_i\subseteq\{0,1\}^{X_i}\) is nonconstant, has
    \(\operatorname{VC}(C_i)=1\), and has finite
    \(d_i=\operatorname{LD}(C_i)\).
  - assump:global-privacy-range: the later global learner has
    \(0<\varepsilon\le0.1\) and \(0<\delta<1\). In this step the source
    wrapper is proved at \(\varepsilon=0.1\); privacy monotonicity then covers
    every smaller \(\varepsilon\).
- Derived invariants supplied by accepted dependencies: None. The accepted
  deterministic dependency step_001 proves, in particular, \(d_i\ge1\)
  (Lemma~\ref{lem:step-001-structural-scales}); this is the only dependency
  conclusion used here.
- Local conditional hypotheses: In the contrapositive proof only, suppose
  that one factor learner \(B\) has worst-case expected risk at most \(1/8\).
  This hypothesis is discharged by contradiction and is not exported.
- Accepted dependency artifacts:
  perspective_1/idea_2/proof_steps/step_001/proof.md and its current ACCEPTED
  review perspective_1/idea_2/proof_steps/step_001/review.md.

No properness, finite-cardinality, ordering of \(X_i\), finite support of the
ambient factor, high-probability utility, or generated event is assumed. The
finite ordered threshold witness is produced by the cited Shelah theorem.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, if an \(m\)-sample factor learner has worst-case expected population risk at most \(1/8\), then with-replacement resampling from any fixed realizable database gives expected empirical loss at most \(1/8\), exactly. | Converts the contradiction hypothesis to the only utility inequality used in ALMM. |
| unit_002 | lemma | Under Assumption~\ref{assump:global-privacy-range} and the Bun et al. secrecy lemma, for the least even \(N\ge9m\), the fixed-database wrapper has privacy parameters \((6(0.1)m/N,e^{6(0.1)m/N}(4m/N)\delta)\), hence is \((0.1,\delta)\)-DP on all replacement-adjacent inputs. | Checks the exact privacy, size-rounding, adjacency, and nonrealizable-input interface. |
| unit_003 | proposition | The proof of ALMM thm:main yields universal \(b_0,c_0>0\): every even-\(N\ge72\), arbitrary-output threshold mechanism that is \((0.1,c_0/(N^2\log N))\)-DP and has expected empirical loss at most \(1/8\) on every realizable database satisfies \(N\ge b_0\log_2^*T\). | Establishes the expected-loss, rather than PAC-form, threshold lower interface by tracing the sole utility use in lem:reduction. |
| unit_004 | lemma | Under Assumption~\ref{assump:vc-one-factors} and the accepted \(d_i\ge1\) dependency, ALMM thm:shelah fixes a finite threshold witness of size \(T=\lfloor\log_2d_i\rfloor\); restriction and binary relabeling map an unrestricted factor output to ALMM's arbitrary threshold-output space without changing loss or replacement privacy. | Embeds the source threshold task in the same factor and discharges label, order, output, and target-object compatibility. |
| unit_005 | proposition | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, Lemmas~\ref{lem:step-008-resampling} and~\ref{lem:step-008-privacy}, Proposition~\ref{prop:step-008-almm-expected}, and Lemma~\ref{lem:step-008-threshold-map}, \(c_\delta=c_0/200\) and \(a_{\mathrm L}=\min\{1,b_0/20\}\) give the exact strict \(>1/8\) factor-risk floor in the target regime. | Performs the delta, parity, sample-factor, log-star, boundary, and strict-contrapositive assembly. |

## Cited Result Applications

### External and dependency results

| Result | Restated statement in current notation | Object mapping and assumption discharge | Conclusion used / known nonoutputs |
| ------ | --------------------------------------- | --------------------------------------- | ---------------------------------- |
| Accepted step_001, Lemma~\ref{lem:step-001-structural-scales} | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, every factor has \(d_i=\operatorname{LD}(C_i)\ge1\). | The current factor is exactly \(C_i\subseteq\{0,1\}^{X_i}\). The dependency proof and matching review are accepted at sketch attempt 1, unit attempt 1. | The finite positive Littlestone parameter to which Shelah's theorem is applied. No product identity or final direct-sum conclusion is used. |
| Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, Lemma 5.9, with the exact lem:secrecy-of-the-sample calculation | If a mechanism on \(m\)-record databases is \((\epsilon,\delta)\)-DP with \(\epsilon\le1\), and a new mechanism samples \(m\) rows with replacement from an \(N\)-record input, \(N\ge2m\), before running it, then the new mechanism is \((6\epsilon m/N,e^{6\epsilon m/N}(4m/N)\delta)\)-DP. | Source \(m,N,\epsilon,\delta\) are the factor sample size, fixed empirical-database size, \(0.1\), and the branch delta. Both source and branch use fixed-size replacement adjacency and all output events. The factor learner is private on nonrealizable inputs, as the lemma requires. | The exact privacy parameters in Lemma~\ref{lem:step-008-privacy}. The formal ninefold empirical-learner lemma also supplies high-probability empirical utility from PAC utility, but that conclusion is not used here. |
| ALMM, arXiv:1806.00949v3, lem:ramsey, lem:reduction, lem:AtoP, lem:binary, and the proof of thm:main | For an arbitrary randomized mechanism on even \(N\)-record threshold databases, lem:ramsey produces a large homogeneous set without a utility premise. In the proof of lem:reduction, the empirical-learning premise is used only to establish \(\mathbb E L_S\le1/8\), equivalently expected empirical accuracy at least \(7/8\), on one balanced realizable \(S\). That inequality gives a jump \(p_j-p_{j-1}\ge1/(4N)\). The remaining lem:AtoP and lem:binary arguments use this jump, homogeneity, and privacy, and the final proof of thm:main yields \(N=\Omega(\log^*T)\). | The current empirical mechanism has arbitrary binary outputs on a finite ordered threshold domain, is replacement-DP, and satisfies the expected-loss premise on every realizable database by Lemma~\ref{lem:step-008-resampling}. Its delta is put below the source \(c_0/(N^2\log N)\) threshold in Proposition~\ref{prop:step-008-factor-floor}. | Proposition~\ref{prop:step-008-almm-expected}. This is a proof-derived expected-loss wrapper; the formal statement of thm:main itself assumes \((1/16,1/16)\)-PAC accuracy and is not quoted as having this stronger interface. |
| ALMM thm:shelah | If a binary class has Littlestone dimension at least \(d\), then it contains \(\lfloor\log_2d\rfloor\) thresholds: fixed points \(x_1,\ldots,x_T\) and fixed concepts \(c_1,\ldots,c_T\) with \(c_a(x_b)=1\) exactly when \(a\le b\), up to reversal of the order and a binary label bijection. | Take \(d=d_i\). The points lie in \(X_i\), the concepts lie in \(C_i\), and all are fixed before the learner. Restricting an output to these points is postprocessing and does not impose properness. | The finite threshold subproblem in Lemma~\ref{lem:step-008-threshold-map}. |
| ALMM lem:bun and thm:ADPimpliesLD | lem:bun formally turns a private PAC learner into a nine-times-larger private empirical learner; thm:ADPimpliesLD formally gives the \((1/16,1/16)\)-PAC lower bound \(m=\Omega(\log^*d)\). | Their resampling and Shelah roles agree with the current object map. | Known nonoutput boundary: neither formal statement asserts the strict worst-case expected-risk floor proved here, and neither produces the learner-independent hard prior required by step_009. They are not used as if they did. |

### Local results consumed later in this step

| Result | Restated statement and assumptions | Conclusion used |
| ------ | ------------------------------------ | --------------- |
| Lemma~\ref{lem:step-008-resampling} | Under the two named setting assumptions and the discharged contradiction hypothesis, uniform fixed-database resampling gives expected empirical loss at most \(1/8\). | Utility premise for Proposition~\ref{prop:step-008-almm-expected}. |
| Lemma~\ref{lem:step-008-privacy} | Under Assumption~\ref{assump:global-privacy-range}, the same wrapper at the least even \(N\ge9m\) is \((0.1,\delta)\)-DP on all inputs. | Privacy premise for Proposition~\ref{prop:step-008-almm-expected}. |
| Proposition~\ref{prop:step-008-almm-expected} | Under its exact expected-loss, privacy, parity, and delta hypotheses, \(N\ge b_0\log_2^*T\). | Source lower inequality used by Proposition~\ref{prop:step-008-factor-floor}. |
| Lemma~\ref{lem:step-008-threshold-map} | Under Assumption~\ref{assump:vc-one-factors} and the accepted dependency, the factor contains a fixed finite threshold subproblem with exact loss/privacy/output maps. | Supplies \(T=\lfloor\log_2d\rfloor\) and validates application of the source proposition. |
| Proposition~\ref{prop:step-008-factor-floor} | Under the target hypotheses and the preceding results, every eligible factor learner has worst-case expected risk \(>1/8\). | Exact target-step conclusion. |

## Local Derivation

Fix one factor and abbreviate \(C_i\) by \(C_{\mathrm f}\), \(X_i\) by
\(X_{\mathrm f}\), and \(d_i\) by \(d\). For a randomized factor learner
\(B\), define its worst-case expected risk at sample size \(m\) by

\[
\mathcal R_m(B;C_{\mathrm f})
:=\sup_{c\in C_{\mathrm f}}\sup_{D\in\mathcal P(X_{\mathrm f})}
\mathbb E_{S\sim D_c^m,\,B}R_D(B(S),c).
\]

Here \(\mathcal P(X_{\mathrm f})\) denotes all distributions for which the
displayed risks are defined, exactly as in setting.md. This abbreviation is
proof-local and will be eliminated in the target assembly.

### unit_001: lemma

**Lemma (Uniform fixed-database resampling preserves expected loss exactly).**
\(\label{lem:step-008-resampling}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors}
and~\ref{assump:global-privacy-range}, let \(B\) be an \(m\)-sample factor
learner and suppose locally that
\(\mathcal R_m(B;C_{\mathrm f})\le1/8\). For any integer \(N\ge m\), define
on every labeled \(N\)-record database \(Z=(z_1,\ldots,z_N)\) a mechanism
\(\widetilde B_N\) by drawing \(m\) indices independently and uniformly from
\([N]\), forming the ordered with-replacement subsample \(U\), running
\(B(U)\), and returning its output. If
\(Z=((x_j,c(x_j)))_{j=1}^N\) is realizable by some
\(c\in C_{\mathrm f}\), then

\[
\mathbb E_{\widetilde B_N}L_Z(\widetilde B_N(Z))\le\frac18.
\]

Proof / justification:

Let \(P_Z\) be the probability distribution on \(X_{\mathrm f}\) that assigns
mass \(1/N\) to each row instance, counting multiplicity. For every binary
\(h:X_{\mathrm f}\to\{0,1\}\), realizability of \(Z\) gives the pointwise
identity

\[
R_{P_Z}(h,c)
=\frac1N\sum_{j=1}^N\mathbf 1\{h(x_j)\ne c(x_j)\}
=L_Z(h).
\tag{8.1}
\]

The with-replacement subsample \(U\) has exactly the law \((P_Z)_c^m\).
Therefore, using the local contradiction hypothesis only on the valid factor
task \((c,P_Z)\) and then (8.1),

\[
\mathbb E_{U,B}L_Z(B(U))
=\mathbb E_{U,B}R_{P_Z}(B(U),c)
\le\mathcal R_m(B;C_{\mathrm f})
\le\frac18.
\]

The identity includes repeated rows. No utility assertion is made for a
nonrealizable \(Z\); nevertheless \(\widetilde B_N\) is defined there, which
is needed for privacy. \(\square\)

### unit_002: lemma

**Lemma (Exact privacy of the even ninefold wrapper).**
\(\label{lem:step-008-privacy}\)

Statement: Under Assumption~\ref{assump:global-privacy-range}, suppose \(B\)
is \((0.1,\delta)\)-DP under fixed-size replacement adjacency. Let

\[
N:=2\left\lceil\frac{9m}{2}\right\rceil.
\tag{8.2}
\]

Then \(N\) is even, \(9m\le N\le9m+1\le10m\), and the mechanism
\(\widetilde B_N\) of Lemma~\ref{lem:step-008-resampling} is

\[
\left(\frac{6(0.1)m}{N},
e^{6(0.1)m/N}\frac{4m}{N}\delta\right)\text{-DP},
\tag{8.3}
\]

and hence is \((0.1,\delta)\)-DP on all labeled \(N\)-record inputs.

Proof / justification:

The exact Bun--Nissim--Stemmer--Vadhan secrecy lemma applies because
\(N\ge9m\ge2m\) and \(0.1\le1\). It gives (8.3), not merely an unspecified
constant-factor privacy statement. Since \(m/N\le1/9\),

\[
\frac{6(0.1)m}{N}\le\frac1{15}<0.1,
\qquad
e^{6(0.1)m/N}\frac{4m}{N}\delta
\le e^{1/15}\frac49\delta<\delta.
\tag{8.4}
\]

The last strict numerical inequality is \(e^{1/15}<9/4\). Enlarging either
privacy parameter preserves DP directly from its event inequality, so (8.4)
implies the advertised \((0.1,\delta)\) parameters.

For completeness, an adjacent pair \(Z,Z'\) differs by replacement of one
row, exactly the adjacency in the cited lemma. Its proof conditions on the
multiplicity with which that row is selected in the with-replacement index
sample, so duplicate selections are already covered by (8.3); no group-
privacy shortcut is used. The calculation applies to every adjacent pair,
including nonrealizable databases, because \(B\)'s DP guarantee does. All
later restriction and binary relabeling of the output is deterministic
postprocessing. If the original factor mechanism is
\((\varepsilon,\delta)\)-DP for \(\varepsilon<0.1\), it is first
\((0.1,\delta)\)-DP by the same monotonicity, so this calculation also proves
the smaller-epsilon boundary needed downstream. \(\square\)

### unit_003: proposition

**Proposition (ALMM threshold lower bound from expected empirical loss).**
\(\label{prop:step-008-almm-expected}\)

Statement: There are universal constants \(b_0,c_0>0\), expressed using the
setting's natural logarithm and base-two log-star convention, with the
following property. Let \(N\ge72\) be even and let \(T\ge1\). Suppose \(A\)
is an arbitrary-output mechanism on labeled \(N\)-record databases over a
totally ordered \(T\)-point domain, is

\[
\left(0.1,\frac{c_0}{N^2\log N}\right)\text{-DP}
\]

or more private, and satisfies

\[
\mathbb E_{h\sim A(Z)}L_Z(h)\le\frac18
\tag{8.5}
\]

for every database \(Z\) realizable by the threshold class. Then

\[
N\ge b_0\log_2^*T.
\tag{8.6}
\]

Proof / justification:

This is the precise expected-loss variant obtained from the labeled proof of
ALMM arXiv:1806.00949v3; it is not the formal PAC statement of thm:main. We
record why the modification is valid.

First, ALMM lem:ramsey is stated for every possibly randomized algorithm on
fixed-size inputs. It colors \((N+1)\)-subsets by discretized values of
\(A_Z(x)=\Pr_{h\sim A(Z)}[h(x)=+1]\), and produces a large
\(N\)-homogeneous ordered set. Its statement and proof use neither accuracy
nor properness.

Second, the only utility invocation in the active lower-bound proof occurs in
lem:reduction. On a balanced increasing threshold-realizable database
\(Z=((x_j,y_j))_{j=1}^N\), (8.5) is exactly

\[
\frac78\le
\frac1N\sum_{j\le N/2}(1-A_Z(x_j))
+\frac1N\sum_{j>N/2}A_Z(x_j).
\tag{8.7}
\]

Because each half contributes at most \(1/2\), (8.7) supplies a positive-half
point with output-\(+1\) probability at least \(3/4\) and a negative-half
point with output-\(+1\) probability at most \(1/4\). The one-replacement
\((0.1,\delta)\)-DP inequalities and the \(1/(10^2N)\) homogeneity error then
give the source endpoint bounds \(2/3-O(1/N)\) and \(1/3+O(1/N)\).
Telescoping the homogeneous probability list gives exactly the source
conclusion

\[
p_j-p_{j-1}\ge\frac1{4N}
\tag{8.8}
\]

for some \(j\). Thus the proof of lem:reduction consumes only (8.5), via
(8.7); its formal \((1/16,1/16)\)-empirical premise was used solely to derive
the same bound
\((1-1/16)(1/16)+(1/16)\cdot1\le1/8\).

After (8.8), ALMM lem:AtoP restricts arbitrary outputs to a binary vector on
an interval and uses homogeneity plus replacement privacy to construct a
family of pairwise indistinguishable distributions with separated coordinate
marginals. ALMM lem:binary uses only those two properties, product privacy,
Chernoff concentration, and disjoint binary-search events. Neither argument
uses a success event, a tail guarantee for empirical loss, or properness.
With the source choice \(\delta\le1/(10^3N^2\log N)\) under its fixed log
convention, these lemmas give the same homogeneous-set upper bound as in the
published proof. Combining it with lem:ramsey gives

\[
\log_2^*T\le N+\log_2^*N+C_0
\tag{8.9}
\]

for a universal \(C_0\), after the fixed log-base translation. Since
\(N\ge72\), decreasing a universal constant \(b_0>0\) if necessary turns
(8.9) into (8.6). Likewise choose \(c_0>0\) no larger than the source
\(10^{-3}\) constant after converting its fixed logarithm to the setting's
natural logarithm. This proves the proposition with no unrecorded learner,
output, or probability-mode assumption. \(\square\)

### unit_004: lemma

**Lemma (Finite Shelah threshold witness and exact factor/source map).**
\(\label{lem:step-008-threshold-map}\)

Statement: Under Assumption~\ref{assump:vc-one-factors} and the accepted
dependency conclusion \(d=\operatorname{LD}(C_{\mathrm f})\ge1\), put

\[
T:=\lfloor\log_2d\rfloor.
\tag{8.10}
\]

When \(T\ge1\), there are fixed distinct points
\(x_1,\ldots,x_T\in X_{\mathrm f}\) and fixed concepts
\(c_1,\ldots,c_T\in C_{\mathrm f}\) whose restriction is the \(T\)-threshold
pattern. Any arbitrary-output factor mechanism, after restriction to these
points and the bijection \(0\mapsto-1,1\mapsto+1\), is an arbitrary-output
ALMM threshold mechanism with the same replacement-privacy parameters and
the same empirical and uniform-distribution losses.

Proof / justification:

Item 1 of ALMM thm:shelah, instantiated at \(d\), gives fixed witnesses with

\[
c_a(x_b)=1\quad\Longleftrightarrow\quad a\le b.
\tag{8.11}
\]

This is the threshold pattern used in ALMM. Reversing the order if a source
presentation uses the opposite cut orientation, and applying the displayed
binary label bijection, preserves every 0-1 disagreement indicator.

Define the source output from a factor hypothesis \(h\) to be the vector
\((2h(x_b)-1)_{b=1}^T\in\{\pm1\}^T\). This deterministic restriction is
postprocessing, so it preserves replacement DP for every source output
event. It lands in the complete source hypothesis space, not merely in the
threshold subclass; consequently no properness is introduced. A database
realizable by one of the threshold patterns (8.11) is the restriction of a
database realizable by the corresponding \(c_a\in C_{\mathrm f}\). On that
database, and on its uniform row distribution, the source
empirical/population loss is term-by-term identical to the factor loss in
(8.1). Thus the produced source object and the consumed ALMM object coincide
after a bijective label/order renaming, with zero residual. The witness is
finite even when the ambient \(X_{\mathrm f}\) or \(C_{\mathrm f}\) is
infinite, and it is fixed before the learner. \(\square\)

### unit_005: proposition

**Proposition (Current-notation unrestricted factor risk floor).**
\(\label{prop:step-008-factor-floor}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors}
and~\ref{assump:global-privacy-range},
Lemmas~\ref{lem:step-008-resampling} and~\ref{lem:step-008-privacy},
Proposition~\ref{prop:step-008-almm-expected}, and
Lemma~\ref{lem:step-008-threshold-map}, let \(b_0,c_0\) be the universal
constants in Proposition~\ref{prop:step-008-almm-expected} and define

\[
c_\delta:=\frac{c_0}{200},
\qquad
a_{\mathrm L}:=\min\left\{1,\frac{b_0}{20}\right\}.
\tag{8.12}
\]

For every integer \(m\ge8\), every
\(0<\delta\le c_\delta/[m^2\log(m+1)]\), and every factor with
\(d=\operatorname{LD}(C_{\mathrm f})\) satisfying
\(m<a_{\mathrm L}\log_2^*d\), every unrestricted
\((0.1,\delta)\)-DP \(m\)-sample learner \(B\) satisfies

\[
\sup_{c\in C_{\mathrm f}}\sup_{D\in\mathcal P(X_{\mathrm f})}
\mathbb E_{S\sim D_c^m,\,B}R_D(B(S),c)>\frac18.
\tag{8.13}
\]

Proof / justification:

Suppose instead that the supremum in (8.13) is at most \(1/8\), and choose
the even \(N\) in (8.2). Lemma~\ref{lem:step-008-resampling} supplies
expected empirical loss at most \(1/8\) on every realizable fixed database,
while Lemma~\ref{lem:step-008-privacy} supplies \((0.1,\delta)\)-DP on all
inputs. Also \(N\ge9m\ge72\).

The delta translation is explicit. For \(m\ge8\),

\[
10m\le(m+1)^2,
\qquad
\log N\le\log(10m)\le2\log(m+1),
\]

and \(N\le10m\), so

\[
N^2\log N\le200m^2\log(m+1).
\tag{8.14}
\]

Consequently the second privacy parameter of the wrapper is at most

\[
\delta
\le\frac{c_0}{200m^2\log(m+1)}
\le\frac{c_0}{N^2\log N}.
\tag{8.15}
\]

It remains to translate the finite threshold size without hiding an additive
log-star loss. Put \(r=\log_2^*d\) and
\(T=\lfloor\log_2d\rfloor\). In the active regime,
\(a_{\mathrm L}\le1\), \(m\ge8\), and \(m<a_{\mathrm L}r\) imply \(r>8\).
Hence \(T\ge2\). If \(\ell=\log_2\), then

\[
\ell d<T+1\le2T,
\quad
\ell^2d\le1+\ell T,
\quad
\ell^3d\le\ell(1+\ell T)\le T.
\]

The last inequality holds for every \(T\ge2\). By monotonicity of the
base-two stopping time and the identity
\(\log_2^*(\ell^3d)=r-3\) in this active regime,

\[
\log_2^*T\ge r-3\ge\frac r2.
\tag{8.16}
\]

Lemma~\ref{lem:step-008-threshold-map} now gives the fixed \(T\)-threshold
subproblem with exact source conventions. Equations (8.15), (8.16), and
Proposition~\ref{prop:step-008-almm-expected} imply

\[
N\ge b_0\log_2^*T\ge\frac{b_0}{2}r.
\]

Since \(N\le10m\), this yields

\[
m\ge\frac{N}{10}\ge\frac{b_0}{20}r
\ge a_{\mathrm L}r,
\]

contradicting the strict premise \(m<a_{\mathrm L}r\). Therefore no learner
can have worst-case expected risk at most \(1/8\), which is exactly the
strict inequality (8.13).

At \(d=1\), the accepted dependency gives
\(r=\log_2^*1=0\), so the strict subcritical premise is impossible; no
hardness is falsely asserted. At the sample boundary \(m=8\), \(N=72\), all
logarithms and (8.14) are valid. Odd \(m\) is covered by \(N=9m+1\), even
\(m\) by \(N=9m\). Smaller epsilon is covered by the monotonicity established
in Lemma~\ref{lem:step-008-privacy}. \(\square\)

## Target-Step Assembly

Fix any factor \(C_i\), set \(d=d_i\), and consider any unrestricted
\((0.1,\delta)\)-DP learner \(B\) using \(m\) examples. The accepted
dependency supplies \(d_i\ge1\). Lemma~\ref{lem:step-008-resampling}
converts a hypothetical worst-case expected-risk bound \(\le1/8\) into the
exact expected empirical-loss premise on every fixed realizable database.
Lemma~\ref{lem:step-008-privacy} gives the exact Bun et al. privacy parameters
on the least even \(N\ge9m\), including all nonrealizable adjacent inputs.
Proposition~\ref{prop:step-008-almm-expected} proves, from the active ALMM
source proof, that this expected-loss premise is sufficient for threshold
hardness; it does not invoke the weaker formal PAC corollary as if it stated
the desired result. Lemma~\ref{lem:step-008-threshold-map} supplies the fixed
finite Shelah witness and exact label, order, arbitrary-output, adjacency,
and loss maps. Finally, Proposition~\ref{prop:step-008-factor-floor} checks
every constant and boundary and exports

\[
m\ge8,\quad
\delta\le\frac{c_\delta}{m^2\log(m+1)},\quad
m<a_{\mathrm L}\log_2^*d_i
\quad\Longrightarrow\quad
\sup_{c_i,D_i}\mathbb E R_{D_i}(B(S),c_i)>\frac18.
\]

This is the exact accepted step_008 claim. It proves neither the finite hard
prior assigned to step_009 nor any product/direct-sum lower bound.

## Explicit Rate Audit

- Exposed variables: factor Littlestone dimension \(d\), factor sample size
  \(m\), approximate-privacy parameter \(\delta\), fixed
  \(\varepsilon=0.1\), and exact expected 0-1 risk.
- Hidden constants may depend on: only universal numerical constants in the
  checked ALMM v3 and Bun et al. source proofs, plus the fixed natural-log,
  base-two-log-star, and binary-label conventions.
- Hidden constants may not depend on: \(C_i,X_i,d,m,\delta\), factor
  cardinality, target, distribution, learner, or any product parameter.
- Fixed quantities: risk threshold \(1/8\), source privacy constant \(0.1\),
  the even ninefold resampling rule, and the two fixed log conventions.
- Probability mode: expectation jointly over the i.i.d. factor sample and all
  learner randomness. The conclusion is a deterministic impossibility
  statement for each learner; it is not a high-probability risk guarantee.
- Horizon mode: fixed sample size \(m\), candidate-wise. No uniform-in-\(m\),
  asymptotic, stopping-time, or cross-candidate statement is inferred.
- Norm mode: exact distributional 0-1 risk \(R_D\); on the uniform fixed
  database it equals empirical 0-1 loss pointwise.
- Admissibility conditions and auxiliary tolerances: \(m\ge8\),
  \(0<\delta\le c_\delta/[m^2\log(m+1)]\), and
  \(m<a_{\mathrm L}\log_2^*d\). There is no confidence parameter or hidden
  auxiliary tolerance.
- Term absorption or simplification inequalities: (8.4) proves exact privacy
  domination; (8.14)--(8.15) prove the delta-denominator translation;
  (8.16) proves the additive log-star translation; and \(N\le10m\) gives the
  final sample-factor translation.
- Probability conversion: None. Expected population loss is identified
  exactly with expected empirical loss. In particular, no Markov conversion
  and no use of ALMM's formal PAC conclusion occurs.
- Contribution to any Rate Specialization Bridge: Exports the universal
  constants \(a_{\mathrm L},c_\delta\) and strict factor floor consumed by
  step_009 and the later candidate-wise lower calibration.
- Baseline-reduction check: For a one-factor class in the active large-
  \(\log^*d\) regime, this is exactly the unrestricted ALMM lower mechanism
  up to the proved universal resampling constants. The \(d=1\) and other
  subcritical-inactive regimes are not replaced by a false expected-risk
  assertion; the independent VC lower step handles them in the final theorem.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** \(d=d_i\), \(m\), \(\delta\), and distributional
  risk are setting/sketch objects. The only new public-facing objects are the
  universal constants \(a_{\mathrm L}=\min\{1,b_0/20\}\) and
  \(c_\delta=c_0/200\), exported as the minimal downstream interface.
- **Appendix-local objects.** The source constants \(b_0,c_0\), even empirical
  size \(N=2\lceil9m/2\rceil\), threshold size
  \(T=\lfloor\log_2d\rfloor\), and \(r=\log_2^*d\) are appendix-local. Each is
  defined from setting quantities or supplied and bounded by a named cited-
  source proposition; none is a theorem assumption.
- **Proof-local objects.** The fixed database \(Z\), its uniform row
  distribution \(P_Z\), the with-replacement sample \(U\), mechanism
  \(\widetilde B_N\), source output marginal \(A_Z(x)\), homogeneous
  probabilities \(p_j\), restricted binary output vector, and the abbreviation
  \(\ell=\log_2\) are proof-local generated objects or aliases. The notation
  \(\mathcal P(X_{\mathrm f})\) means the setting's collection of allowed
  factor distributions, and \(\mathcal R_m(B;C_{\mathrm f})\) is the
  proof-local displayed supremum over that collection. Their required risk,
  privacy, jump, and postprocessing properties are proved in the named local
  units.
- **Constant provenance.** \(b_0,c_0\) come from the fully identified ALMM v3
  proof after fixed convention conversion. The intermediate \(C_0\) in (8.9)
  is a proof-local universal constant exported by the same source calculation
  and is used only to choose \(b_0\). The factors \(200\) and \(20\)
  are proved respectively by (8.14) and the chain
  \(N\le10m\), \(\log_2^*T\ge r/2\). The constants
  \(9,10,72,1/15\) come directly from (8.2)--(8.4). No free bounded quantity
  is introduced.
- **Assumption provenance.** The factor structure and privacy range are the
  only primitive setting conditions. The threshold witness is cited and
  fixed locally; the wrapper, resample, empirical-loss identity, and privacy
  controls are derived here. The sole local hypothesis
  \(\mathcal R_m(B;C_{\mathrm f})\le1/8\) is discharged by contradiction.
  There is no generated invariant or event promoted to a primitive condition.
- **Adjacency and outputs.** The branch and both sources use fixed-size
  replacement adjacency. Privacy is checked on nonrealizable databases. The
  factor hypothesis may be improper; restriction gives an arbitrary binary
  function on the finite threshold domain, exactly the ALMM output space.
  Relabeling \(0,1\) as \(-1,+1\) and reversing an order are bijective
  postprocessings preserving all losses and privacy events.
- **Known nonoutputs.** ALMM thm:ADPimpliesLD is PAC-form and is not evidence
  for (8.13) by itself. This step also does not produce a hard prior, compact
  game, simultaneous factor task, PAC failure witness, or product lower
  bound; those belong to later accepted sketch steps.
- **Diagnostic boundary.** The paired global_proof.md and
  global_proof_review.md were checked, and the review status is ACCEPTED.
  Their step-relevant suggestion to inspect the sole utility line in
  lem:reduction was used only for planning. The proof above independently
  inspects and restates ALMM arXiv:1806.00949v3 and Bun et al.
  arXiv:1504.07553; the diagnostic is not evidence, a cited result, an
  assumption source, or authority to alter the target claim.
