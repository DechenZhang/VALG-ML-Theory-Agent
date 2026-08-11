# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 2

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
| unit_003 | proposition | The corrected active proof of ALMM thm:main yields a universal \(b_0>0\) and the explicit choice \(c_0=10^{-4}\): every even-\(N\ge72\), arbitrary-output threshold mechanism that is \((0.1,c_0/(N^2\log N))\)-DP and has expected empirical loss at most \(1/8\) on every realizable database satisfies \(N\ge b_0\log_2^*T\). | Establishes the expected-loss threshold interface by pairing the proved jump \(p_i-p_{i-1}\) with its correctly indexed midpoint and checking every privacy inequality in lem:AtoP and lem:binary. |
| unit_004 | lemma | Under Assumption~\ref{assump:vc-one-factors} and the accepted \(d_i\ge1\) dependency, ALMM thm:shelah fixes a threshold witness of size \(T=\lfloor\log_2d_i\rfloor\); the rowwise all-label bijection \(\psi(x,y)=(x,(y+1)/2)\), output map \(\phi(h)(x_b)=2h(x_b)-1\), and their composition with the factor mechanism preserve replacement adjacency on arbitrary source databases and preserve loss exactly on realizable threshold databases. | Embeds the source task in the factor with a complete all-input mechanism map, including nonrealizable databases. |
| unit_005 | proposition | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, Lemmas~\ref{lem:step-008-resampling} and~\ref{lem:step-008-privacy}, Proposition~\ref{prop:step-008-almm-expected}, and Lemma~\ref{lem:step-008-threshold-map}, \(c_\delta=c_0/200\) and \(a_{\mathrm L}=\min\{1,b_0/20\}\) give the exact strict \(>1/8\) factor-risk floor in the target regime. | Performs the delta, parity, sample-factor, log-star, boundary, and strict-contrapositive assembly. |

## Cited Result Applications

### External and dependency results

| Result | Restated statement in current notation | Object mapping and assumption discharge | Conclusion used / known nonoutputs |
| ------ | --------------------------------------- | --------------------------------------- | ---------------------------------- |
| Accepted step_001, Lemma~\ref{lem:step-001-structural-scales} | Under Assumptions~\ref{assump:canonical-product} and~\ref{assump:vc-one-factors}, every factor has \(d_i=\operatorname{LD}(C_i)\ge1\). | The current factor is exactly \(C_i\subseteq\{0,1\}^{X_i}\). The dependency proof and matching review are accepted at sketch attempt 1, unit attempt 1. | The finite positive Littlestone parameter to which Shelah's theorem is applied. No product identity or final direct-sum conclusion is used. |
| Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, Lemma 5.9, with the exact lem:secrecy-of-the-sample calculation | If a mechanism on \(m\)-record databases is \((\epsilon,\delta)\)-DP with \(\epsilon\le1\), and a new mechanism samples \(m\) rows with replacement from an \(N\)-record input, \(N\ge2m\), before running it, then the new mechanism is \((6\epsilon m/N,e^{6\epsilon m/N}(4m/N)\delta)\)-DP. | Source \(m,N,\epsilon,\delta\) are the factor sample size, fixed empirical-database size, \(0.1\), and the branch delta. Both source and branch use fixed-size replacement adjacency and all output events. The factor learner is private on nonrealizable inputs, as the lemma requires. | The exact privacy parameters in Lemma~\ref{lem:step-008-privacy}. The formal ninefold empirical-learner lemma also supplies high-probability empirical utility from PAC utility, but that conclusion is not used here. |
| ALMM, arXiv:1806.00949v3, lem:ramsey, lem:reduction, lem:AtoP, lem:binary, and the proof of thm:main | For an arbitrary randomized mechanism on even \(N\)-record threshold databases, lem:ramsey produces a large homogeneous set without a utility premise. In lem:reduction, expected empirical loss at most \(1/8\) gives the jump \(p_i-p_{i-1}\ge1/(4N)\). Reindexing the active lem:AtoP midpoint as \(r=(p_i+p_{i-1})/2\) gives separated marginals. With \(T_{\rm bin}=10^3N^2\log^2N-1\), product depth \(D=\lceil10^2N^2\log T_{\rm bin}\rceil\), and \(c_0=10^{-4}\), every endpoint, pairwise, product, and \(D\delta\le1/6\) privacy comparison in lem:AtoP and lem:binary holds. The Ramsey and binary bounds then give \(N=\Omega(\log_2^*T)\). | The current empirical mechanism has arbitrary binary outputs on a finite ordered threshold domain, is replacement-DP on all inputs, and satisfies the expected-loss premise on every realizable database by Lemma~\ref{lem:step-008-resampling}. Proposition~\ref{prop:step-008-factor-floor} puts its delta below \(c_0/(N^2\log N)\). | Proposition~\ref{prop:step-008-almm-expected}. The proof explicitly corrects the active source's off-by-one midpoint and does not use its insufficient printed \(10^{-3}\) delta coefficient. The formal thm:main remains a PAC statement and is not quoted as the expected-loss wrapper. |
| ALMM thm:shelah | If a binary class has Littlestone dimension at least \(d\), then it contains \(\lfloor\log_2d\rfloor\) thresholds: fixed points \(x_1,\ldots,x_T\) and fixed concepts \(c_1,\ldots,c_T\) with \(c_a(x_b)=1\) exactly when \(a\le b\), up to reversal of the order and a binary label bijection. | Take \(d=d_i\). The points lie in \(X_i\), the concepts lie in \(C_i\), and all are fixed before the learner. The rowwise bijection \(\psi\) maps every source-labeled input, realizable or not, into the factor input space; \(\phi\) restricts and relabels arbitrary factor outputs without imposing properness. | The finite threshold subproblem and complete source mechanism in Lemma~\ref{lem:step-008-threshold-map}. |
| ALMM lem:bun and thm:ADPimpliesLD | lem:bun formally turns a private PAC learner into a nine-times-larger private empirical learner; thm:ADPimpliesLD formally gives the \((1/16,1/16)\)-PAC lower bound \(m=\Omega(\log^*d)\). | Their resampling and Shelah roles agree with the current object map. | Known nonoutput boundary: neither formal statement asserts the strict worst-case expected-risk floor proved here, and neither produces the learner-independent hard prior required by step_009. They are not used as if they did. |

### Local results consumed later in this step

| Result | Restated statement and assumptions | Conclusion used |
| ------ | ------------------------------------ | --------------- |
| Lemma~\ref{lem:step-008-resampling} | Under the two named setting assumptions and the discharged contradiction hypothesis, uniform fixed-database resampling gives expected empirical loss at most \(1/8\). | Utility premise for Proposition~\ref{prop:step-008-almm-expected}. |
| Lemma~\ref{lem:step-008-privacy} | Under Assumption~\ref{assump:global-privacy-range}, the same wrapper at the least even \(N\ge9m\) is \((0.1,\delta)\)-DP on all inputs. | Privacy premise for Proposition~\ref{prop:step-008-almm-expected}. |
| Proposition~\ref{prop:step-008-almm-expected} | Under its exact expected-loss, privacy, parity, and delta hypotheses, with the corrected midpoint and \(c_0=10^{-4}\), \(N\ge b_0\log_2^*T\). | Source lower inequality used by Proposition~\ref{prop:step-008-factor-floor}. |
| Lemma~\ref{lem:step-008-threshold-map} | Under Assumption~\ref{assump:vc-one-factors} and the accepted dependency, the factor contains a fixed finite threshold subproblem; \(A_{\rm src}=\phi\circ\widetilde B_N\circ\psi^{\otimes N}\) is defined on every source database, preserves replacement privacy there, and has exact realizable loss identity. | Supplies \(T=\lfloor\log_2d\rfloor\) and validates every input/output hypothesis of the source proposition. |
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

Statement: There is a universal constant \(b_0>0\), and one may take the
explicit universal constant

\[
c_0:=10^{-4},
\]

using the setting's natural logarithm and base-two log-star convention, with
the following property. Let \(N\ge72\) be even and let \(T\ge1\). Suppose
\(A\) is an arbitrary-output mechanism on labeled \(N\)-record databases over
a totally ordered \(T\)-point domain, is

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
ALMM arXiv:1806.00949v3; it is not the formal PAC statement of thm:main. The
active source contains an off-by-one midpoint in lem:AtoP and an insufficient
printed delta coefficient in lem:binary. We use the jump actually proved by
lem:reduction, correct the midpoint index, and check all privacy comparisons
with \(c_0=10^{-4}\).

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

Put \(\bar\delta=c_0/(N^2\log N)\). Because each half in (8.7)
contributes at most \(1/2\), (8.7) supplies a positive-half point with
output-\(+1\) probability at least \(3/4\) and a negative-half point with
output-\(+1\) probability at most \(1/4\). Here
\(\bar\delta<10^{-3}\), and the two one-replacement privacy comparisons used
by lem:reduction hold explicitly. Since \(e^{0.1}<10/9\),

\[
\left(\frac34-\bar\delta\right)e^{-0.1}
\ge \left(\frac34-10^{-4}\right)\frac9{10}
>\frac23,
\qquad
e^{0.1}\frac14+\bar\delta
<\frac5{18}+10^{-4}<\frac13.
\]

Thus the source's replacement argument and homogeneity tolerance
\(\eta_N:=1/(100N)\) give one probability-list value at least
\(2/3-\eta_N\) and an earlier value at most \(1/3+\eta_N\). Telescoping over
at most \(N\) increments yields an index \(i\) for which

\[
p_i-p_{i-1}
\ge \frac{1/3-2\eta_N}{N}
=\frac1{3N}-\frac1{50N^2}
\ge\frac1{4N}.
\tag{8.8}
\]

This proves that lem:reduction consumes only (8.5), via (8.7); its formal
\((1/16,1/16)\)-empirical premise was used solely to derive the same expected
loss bound.

We next correct the lem:AtoP index. Set

\[
r:=\frac{p_i+p_{i-1}}2,
\]

the midpoint of the jump in (8.8), rather than the active source's printed
\((p_{i+1}+p_i)/2\). In the source construction, keep all rows but the row at
the jump fixed and move that one row through the large intervening ordered
interval. For a coordinate to the left of the moving row, homogeneity puts
its \(+1\) marginal at most \(p_{i-1}+\eta_N\); for a coordinate to the
right, it is at least \(p_i-\eta_N\). Hence

\[
p_{i-1}+\eta_N
\le r-\left(\frac1{8N}-\frac1{100N}\right)
=r-\frac{23}{200N}
\le r-\frac1{10N},
\]

and

\[
p_i-\eta_N
\ge r+\left(\frac1{8N}-\frac1{100N}\right)
=r+\frac{23}{200N}
\ge r+\frac1{10N}.
\]

Thus the corrected construction has exactly the separated-marginal interface
consumed by lem:binary. Any two moving-row databases share the other
\(N-1\) rows and differ by one replacement, so their output distributions
are \((0.1,\bar\delta)\)-indistinguishable directly; no group-privacy or
realizability restriction is used for this privacy statement.

It remains to audit the binary-search privacy constant. In the setting's
natural-log convention define

\[
T_{\rm bin}:=10^3N^2\log^2N-1,
\qquad
D:=\left\lceil10^2N^2\log T_{\rm bin}\right\rceil.
\]

For \(N\ge72\),

\[
\log T_{\rm bin}
\le \log 1000+2\log N+2\log\log N
\le5\log N.
\]

Consequently, for the product distributions in lem:binary,

\[
D\bar\delta
\le
\left(100N^2\log T_{\rm bin}+1\right)
\frac{10^{-4}}{N^2\log N}
\le501\cdot10^{-4}
<\frac16.
\]

This is the privacy inequality that fails at the source's printed
\(10^{-3}\) coefficient. The coefficient \(10^{-4}\) also implies
\(\bar\delta<10^{-3}\), which was the only delta smallness used in the two
endpoint comparisons above.

For completeness, let \(P_u\) be the separated family furnished by the
corrected lem:AtoP construction and let \(Q_u=P_u^{\otimes D}\). Basic
composition gives every pair \(Q_u,Q_v\) exact
\((0.1D,D\bar\delta)\)-indistinguishability. The separation
\(1/(10N)\), Hoeffding's inequality, and a union bound over the
\(T_{\rm bin}\) probes give each intended binary-search event \(E_u\)
probability

\[
Q_u(E_u)
\ge1-T_{\rm bin}\exp\left(-\frac{2D}{100N^2}\right)
\ge1-\frac1{T_{\rm bin}}
\ge\frac23.
\]

Therefore the product-privacy event inequality gives, for every \(v\),

\[
Q_v(E_u)
\ge e^{-0.1D}\bigl(Q_u(E_u)-D\bar\delta\bigr)
\ge\frac12e^{-0.1D}.
\]

The \(2^{T_{\rm bin}}\) binary-search events are disjoint. Moreover,
\(D\le100N^2\log T_{\rm bin}+1\), so
\(0.1D\le50N^2\log N+0.1\), whereas

\[
(T_{\rm bin}-1)\log2
>500N^2\log^2N-1
>50N^2\log N+0.1.
\]

Thus \(2^{T_{\rm bin}-1}e^{-0.1D}>1\), and summing the preceding lower
bound over the disjoint events gives the same contradiction and homogeneous-
set upper bound as the corrected source argument. Neither lem:AtoP nor
lem:binary uses a success event, an empirical-loss tail guarantee, or
properness after (8.8).

Combining this corrected bound with lem:ramsey gives

\[
\log_2^*T\le N+\log_2^*N+C_0
\tag{8.9}
\]

for a universal \(C_0\ge0\), after the fixed log-base translation. Since
\(\log_2^*N\le N\) and \(N\ge72\), (8.9) implies

\[
\log_2^*T\le\left(2+\frac{C_0}{72}\right)N.
\]

Taking \(b_0=(2+C_0/72)^{-1}\) proves (8.6). This establishes the proposition
without relying on the invalid printed \(10^{-3}\) comparison and with no
unrecorded learner, output, or probability-mode assumption. \(\square\)

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
pattern. For every \(N\)-row arbitrary-output factor mechanism
\(\widetilde B_N\) defined on all binary-labeled inputs, the rowwise bijection
\(\psi(x,y)=(x,(y+1)/2)\), the output map
\(\phi(h)(x_b)=2h(x_b)-1\), and
\(A_{\rm src}=\phi\circ\widetilde B_N\circ\psi^{\otimes N}\) define an ALMM
threshold mechanism on every \(\{\pm1\}\)-labeled source database. The input
map preserves replacement adjacency, including on nonrealizable databases,
so replacement privacy transfers exactly; on every realizable threshold
database, empirical and uniform-row-distribution losses are identical.

Proof / justification:

Item 1 of ALMM thm:shelah, instantiated at \(d\), gives fixed witnesses with

\[
c_a(x_b)=1\quad\Longleftrightarrow\quad a\le b.
\tag{8.11}
\]

This is the threshold pattern used in ALMM. Reversing the order if a source
presentation uses the opposite cut orientation, and applying the displayed
binary label bijection, preserves every 0-1 disagreement indicator.

Let \(X_T=\{x_1,\ldots,x_T\}\). Define on every source row, with no
realizability condition,

\[
\psi:X_T\times\{-1,+1\}\longrightarrow X_T\times\{0,1\},
\qquad
\psi(x,y):=\left(x,\frac{y+1}{2}\right).
\]

This is a bijection. Define the output map on every possibly improper factor
hypothesis by

\[
\phi(h)(x_b):=2h(x_b)-1,
\qquad b\in[T],
\]

and, for every source database
\(Z\in(X_T\times\{-1,+1\})^N\), define the complete source mechanism

\[
A_{\rm src}(Z)
:=\phi\!\left(\widetilde B_N(\psi^{\otimes N}(Z))\right).
\]

If source databases \(Z,Z'\) differ by replacement of row \(t\), their
images under \(\psi^{\otimes N}\) agree in every row other than \(t\) and,
because \(\psi\) is injective, differ in row \(t\). Thus the images are
replacement-adjacent even when either database is nonrealizable. For every
measurable source-output event \(E\), factor-mechanism privacy gives

\[
\begin{aligned}
\Pr[A_{\rm src}(Z)\in E]
&=\Pr[\widetilde B_N(\psi^{\otimes N}(Z))\in\phi^{-1}(E)]\\
&\le e^\varepsilon
\Pr[\widetilde B_N(\psi^{\otimes N}(Z'))\in\phi^{-1}(E)]+\delta\\
&=e^\varepsilon\Pr[A_{\rm src}(Z')\in E]+\delta.
\end{aligned}
\]

The reverse ordered pair gives the other direction. Hence
\(A_{\rm src}\) has exactly the all-input replacement-privacy parameters of
\(\widetilde B_N\); output postprocessing alone is not being used to hide an
input-map obligation.

Finally, let \(\tau_a:X_T\to\{-1,+1\}\) be the source threshold
\(\tau_a(x_b)=+1\) iff \(a\le b\). By (8.11),
\((\tau_a(x_b)+1)/2=c_a(x_b)\). Therefore, for every ordered source database
\(Z=((x_{b_t},\tau_a(x_{b_t})))_{t=1}^N\), allowing repetitions, the mapped
database \(\psi^{\otimes N}(Z)\) is realizable by \(c_a\), and every factor
hypothesis \(h\) satisfies the pointwise identity

\[
\begin{aligned}
L_Z^{\rm src}(\phi(h))
&=\frac1N\sum_{t=1}^N
\mathbf1\{2h(x_{b_t})-1\ne\tau_a(x_{b_t})\}\\
&=\frac1N\sum_{t=1}^N
\mathbf1\{h(x_{b_t})\ne c_a(x_{b_t})\}\\
&=L_{\psi^{\otimes N}(Z)}^{\rm fac}(h).
\end{aligned}
\]

Taking expectation over \(\widetilde B_N\) preserves this equality, and the
same termwise equality is the population-loss identity for the uniform row
distribution. The output lies in the full source space \(\{\pm1\}^{X_T}\),
not merely the threshold subclass, so no properness is introduced. The
witness and both maps are fixed before the learner, even when the ambient
\(X_{\mathrm f}\) or \(C_{\mathrm f}\) is infinite. \(\square\)

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
subproblem and constructs
\(A_{\rm src}=\phi\circ\widetilde B_N\circ\psi^{\otimes N}\). Its all-input
adjacency proof transfers the privacy supplied by
Lemma~\ref{lem:step-008-privacy}, and its realizable loss identity transfers
the expected empirical bound supplied by
Lemma~\ref{lem:step-008-resampling}. Equations (8.15), (8.16), and
Proposition~\ref{prop:step-008-almm-expected} therefore imply

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
hardness. It pairs the actual jump \(p_i-p_{i-1}\) with
\(r=(p_i+p_{i-1})/2\), proves the \(1/(10N)\) separated-marginal interface,
and checks with \(c_0=10^{-4}\) that every endpoint and product-privacy
inequality holds, including \(D\bar\delta<1/6\). It neither invokes the
weaker formal PAC corollary as if it stated the desired result nor relies on
the active source's invalid printed \(10^{-3}\) coefficient.
Lemma~\ref{lem:step-008-threshold-map} supplies the fixed finite Shelah
witness and defines the complete mechanism
\(A_{\rm src}=\phi\circ\widetilde B_N\circ\psi^{\otimes N}\). Its rowwise
input bijection proves replacement adjacency for every source database,
including nonrealizable inputs, while its realizable loss identity is exact.
Finally, Proposition~\ref{prop:step-008-factor-floor} checks every remaining
constant and boundary and exports

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
  the explicit source-wrapper coefficient \(c_0=10^{-4}\), the even ninefold
  resampling rule, and the two fixed log conventions.
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
  domination; Proposition~\ref{prop:step-008-almm-expected} proves the two
  endpoint privacy comparisons, the corrected \(23/(200N)>1/(10N)\)
  marginal gap, \(\log T_{\rm bin}\le5\log N\), and
  \(D\bar\delta\le501\cdot10^{-4}<1/6\); (8.14)--(8.15) prove the
  delta-denominator translation; (8.16) proves the additive log-star
  translation; and \(N\le10m\) gives the final sample-factor translation.
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
- **Appendix-local objects.** The constants \(b_0,c_0\), even empirical size
  \(N=2\lceil9m/2\rceil\), threshold size
  \(T=\lfloor\log_2d\rfloor\), and \(r=\log_2^*d\) are appendix-local.
  Proposition~\ref{prop:step-008-almm-expected} defines \(c_0=10^{-4}\) and
  derives \(b_0=(2+C_0/72)^{-1}\); the remaining objects are defined directly
  from setting quantities. None is a theorem assumption.
- **Proof-local objects.** The fixed database \(Z\), its uniform row
  distribution \(P_Z\), the with-replacement sample \(U\), mechanism
  \(\widetilde B_N\), source output marginal \(A_Z(x)\), homogeneous
  probabilities \(p_j\), corrected midpoint \(r=(p_i+p_{i-1})/2\),
  homogeneity tolerance \(\eta_N\), binary depth \(T_{\rm bin}\), product
  count \(D\), product distributions \(Q_u\), events \(E_u\), witness domain
  \(X_T\), rowwise bijection \(\psi\), output map \(\phi\), composed mechanism
  \(A_{\rm src}\), and the abbreviation \(\ell=\log_2\) are proof-local
  generated objects or aliases. The notation \(\mathcal P(X_{\mathrm f})\)
  means the setting's collection of allowed factor distributions, and
  \(\mathcal R_m(B;C_{\mathrm f})\) is the proof-local displayed supremum over
  that collection. Their required risk, privacy, jump, adjacency, and loss
  properties are proved in the named local units.
- **Constant provenance.** The proof chooses \(c_0=10^{-4}\) directly and
  verifies every use of the approximate-privacy parameter, in particular
  \(D\bar\delta<1/6\); it does not inherit the source's printed
  \(10^{-3}\) coefficient. The intermediate \(C_0\) in (8.9) is a
  proof-local universal constant from the corrected ALMM Ramsey/binary
  calculation, and \(b_0=(2+C_0/72)^{-1}\). The factors \(200\) and \(20\)
  are proved respectively by (8.14) and the chain
  \(N\le10m\), \(\log_2^*T\ge r/2\). The constants
  \(9,10,72,1/15\) come directly from (8.2)--(8.4), while \(501\) comes from
  the displayed ceiling-aware product-privacy calculation. No free bounded
  quantity is introduced.
- **Assumption provenance.** The factor structure and privacy range are the
  only primitive setting conditions. The threshold witness is cited and
  fixed locally; the wrapper, resample, empirical-loss identity, and privacy
  controls are derived here. The sole local hypothesis
  \(\mathcal R_m(B;C_{\mathrm f})\le1/8\) is discharged by contradiction.
  There is no generated invariant or event promoted to a primitive condition.
- **Adjacency and outputs.** The branch and both sources use fixed-size
  replacement adjacency. Privacy is checked on nonrealizable databases. The
  all-row bijection \(\psi(x,y)=(x,(y+1)/2)\) maps one source-row replacement
  to exactly one factor-row replacement before the factor mechanism is run;
  \(\phi(h)(x_b)=2h(x_b)-1\) is deterministic output postprocessing. The
  factor hypothesis may be improper, and \(\phi\) gives an arbitrary binary
  function on the finite threshold domain, exactly the ALMM output space.
  Reversing the order, when needed, is also a fixed bijective renaming. The
  displayed realizable loss identity proves zero residual rather than merely
  asserting that relabeling preserves loss.
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
