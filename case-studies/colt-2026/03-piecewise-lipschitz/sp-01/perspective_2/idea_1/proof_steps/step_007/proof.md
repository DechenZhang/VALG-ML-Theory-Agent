# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Producer role: distinct Perspective 2 proof-step producer

## Target Step Claim

- Intended claim: Under only the separate theorem-clause threshold
  \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), prove the witness law belongs
  to \(\mathcal D_{d,R,\eta}\) separately for \(d=1\), \(d=2\), and
  \(d\geq3\); compute both caps as \(1/(2R)\), verify cube support,
  singularity for \(d\geq3\), and middle-coordinate dependence for
  \(d\geq4\).
- Depends on: None.
- Assumptions used: `assump:indexed-regime`; the separate theorem-clause
  hypothesis \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\); and the class
  definition, but not `assump:mean-endpoint-conditional-caps` as a premise.
- Technical challenge: Compute the conditional kernels after conditioning on
  all complementary coordinates and keep the threshold isolated from steps
  step_001 through step_006.
- Intended proof tool or cited result: Independence and exact uniform-density
  calculation, followed by \(1/(2R)\leq1/2\).
- Output target: Indexed nonemptiness membership certificate.
- Rate objective: Exact cap height and threshold, with no hidden dependence.
- Row-local review status: `PENDING`.  The controlling
  `proof_sketch_review.md` gate for sketch attempt 1 is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:indexed-regime}: \(d\geq1\) is an integer,
    \(R\geq1\), and the finite pair
    \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) is fixed independently of
    \((d,R)\).
  - Only for the membership conclusion, the separate theorem-clause
    hypothesis
    \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\).
  - The witness random variables and their mutual independence are part of
    the explicit definition of \(\mu^{\mathrm{wit}}_{d,R}\) in
    `setting.md`; they are not properties inferred from a general law in
    \(\mathcal D_{d,R,\eta}\).
  - The displayed definition of \(\mathcal D_{d,R,\eta}\) is used only as
    the membership criterion to be verified.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None.

In particular, Assumption~\ref{assump:mean-endpoint-conditional-caps} is not
an input.  The two conditional-density requirements and their mean bounds are
conclusions proved below for the witness.  Likewise,
Assumption~\ref{assump:compact-cube-support} is not used to assume witness
support; support is checked directly from the witness construction.

## Local Lemma Map

Atomic step = no.  Exact conditional kernels, support and singularity,
middle-coordinate dependence, and the threshold comparison are independent
auditable subclaims.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:indexed-regime}, if \(d=1\) and \(\mu^{\mathrm{wit}}_{1,R}\) is the setting-defined witness, then both empty-complement conditional laws have density \((2R)^{-1}{\bf1}_{[-R,R]}\), and both full-complement caps equal \(1/(2R)\) almost surely. | Proves both density and exact-cap requirements in the degree-one branch. |
| `unit_002` | proposition | Under Assumption~\ref{assump:indexed-regime}, if \(d=2\) and \(\mu^{\mathrm{wit}}_{2,R}\) is the setting-defined witness, then conditioning either endpoint on the other leaves the uniform law on \([-R,R]\), and both full-complement caps equal \(1/(2R)\) almost surely. | Proves both density and exact-cap requirements in the degree-two branch. |
| `unit_003` | proposition | Under Assumption~\ref{assump:indexed-regime}, if \(d\geq3\) and \(\mu^{\mathrm{wit}}_{d,R}\) is the setting-defined witness, then conditioning either endpoint on all other coordinates leaves the uniform law on \([-R,R]\), and both full-complement caps equal \(1/(2R)\) almost surely. | Proves the exact full-complement kernels despite revelation of the middle block. |
| `unit_004` | proposition | Under Assumption~\ref{assump:indexed-regime}, every setting-defined witness is supported on \([-R,R]^d\), and for \(d\geq3\) it is singular with respect to \(d\)-dimensional Lebesgue measure. | Verifies cube support in every branch and the required ambient singularity. |
| `unit_005` | proposition | Under Assumption~\ref{assump:indexed-regime}, if \(d\geq4\), then the middle coordinates of \(\mu^{\mathrm{wit}}_{d,R}\) are dependent. | Verifies the required dependent-middle-block property. |
| `unit_006` | claim | Under Assumption~\ref{assump:indexed-regime} and the exact-cap conclusions of the applicable degree proposition, if the separate theorem-clause threshold holds, then both witness mean caps satisfy the class bounds. | Isolates the only use of the \(1/2\) threshold and supplies the final cap inequalities for membership. |

## Cited Result Applications

No paper result, external black-box theorem, or dependency-step result is
used.  The conditional kernels are verified directly from the defining
integral identity for a regular conditional law.  The standard facts used in
the version and support audits are restated here in the exact form needed.

1. **Almost-sure uniqueness of a Euclidean regular conditional law and its
   density.**  If \(X\) and \(Y\) take values in Euclidean Borel spaces and
   \(Q,\widetilde Q\) are regular conditional laws of \(X\) given \(Y\),
   then \(Q_Y=\widetilde Q_Y\) as probability measures almost surely.  If
   this common conditional measure has two Lebesgue densities, those
   densities agree Lebesgue-almost everywhere and therefore have the same
   \(L^\infty\) essential supremum.  Here every pivot is real-valued and
   every complement is \(\mathbb R^0\), \(\mathbb R\), or
   \(\mathbb R^{d-1}\), so the Euclidean Borel hypothesis holds.  The
   propositions below verify one constant conditional kernel directly; this
   fact then makes the resulting cap equality valid for every permissible
   conditional-law and density version at the realized complement.
2. **Measurable images preserve independence.**  If \(X\) is independent
   of a random vector \(Z\), then \(X\) is independent of every measurable
   function of \(Z\).  In
   Proposition~\ref{prop:step-007-high-degree-kernels}, mutual independence
   of \(U_0,U_\infty,S\) is part of the witness definition; the two
   conditioning tuples are explicitly displayed measurable functions of
   \((S,U_\infty)\) and \((U_0,S)\), respectively.
3. **Null product support.**  If \(F\subseteq\mathbb R^m\) is finite with
   \(m\geq1\), then \(\lambda_m(F)=0\), and the product of \(F\) with
   bounded intervals is null for the corresponding product Lebesgue measure.
   In Proposition~\ref{prop:step-007-support-singularity},
   \(m=d-2\geq1\), \(F\) consists of the two constant-sign middle vectors,
   and both endpoint factors are \([-R,R]\) with finite length \(2R\).

The following local results are used later.

| Result used later | Restated application in current notation | Assumptions and their discharge | Conclusion used |
| ----------------- | ----------------------------------------- | ------------------------------- | --------------- |
| Proposition~\ref{prop:step-007-degree-one-kernels} | Apply to the sole coefficient of \(\mu^{\mathrm{wit}}_{1,R}\). | \(d=1\), \(R\geq1\), and the uniform witness definition come from Assumption~\ref{assump:indexed-regime} and `setting.md`. | Both empty-complement kernels have cap \(1/(2R)\). |
| Proposition~\ref{prop:step-007-degree-two-kernels} | Apply separately to \(\alpha_0\mid\alpha_1\) and \(\alpha_1\mid\alpha_0\). | \(d=2\), \(R\geq1\), and endpoint independence are in the setting-defined witness. | Both full-complement kernels have cap \(1/(2R)\). |
| Proposition~\ref{prop:step-007-high-degree-kernels} | Apply to \(U_0\mid(RS,\ldots,RS,U_\infty)\) and \(U_\infty\mid(U_0,RS,\ldots,RS)\). | \(d\geq3\), \(R\geq1\), and mutual independence of \(U_0,U_\infty,S\) are in the setting-defined witness. | Both full-complement kernels have cap \(1/(2R)\). |
| Proposition~\ref{prop:step-007-support-singularity} | Apply to the same witness law in each degree branch. | Coordinate formulas are the witness definition; no class support premise is used. | Cube support for every \(d\), and ambient singularity for \(d\geq3\). |
| Proposition~\ref{prop:step-007-middle-dependence} | Apply when at least two middle coordinates exist. | \(d\geq4\) and \(R\geq1\) ensure that \(\alpha_1,\alpha_2\) exist and \(R\neq-R\). | The middle coordinates are not independent. |
| Claim~\ref{claim:step-007-threshold} | Apply the scalar comparison to the exact cap from the applicable degree proposition. | \(R\geq1\) is from Assumption~\ref{assump:indexed-regime}; the two lower bounds on \(\bar\kappa_i\) are only the separate theorem-clause hypothesis. | Both expected caps are at most their respective \(\bar\kappa_i\). |

## Local Derivation

### unit_001: proposition

**Proposition (Degree-one empty-complement kernels).**
\(\label{prop:step-007-degree-one-kernels}\)
Under Assumption~\ref{assump:indexed-regime}, if \(d=1\) and
\(\mu^{\mathrm{wit}}_{1,R}\) is the setting-defined witness law, then both
regular conditional laws in the definition of \(\mathcal D_{1,R,\eta}\)
are the marginal law with Lebesgue density
\[
u_R(x):=\frac{1}{2R}{\bf1}_{[-R,R]}(x).
\]
Consequently,
\[
K_0^{\mu^{\mathrm{wit}}_{1,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{1,R}}
=\frac1{2R}
\quad\text{almost surely}.
\]

**Proof / justification.**
For \(d=1\), the construction is
\(\alpha_0\sim\operatorname{Unif}[-R,R]\).  Its law is
\[
\nu_R(A):=\frac{\lambda_1(A\cap[-R,R])}{2R}
=\int_A u_R(x)\,d\lambda_1(x),
\qquad A\in\mathcal B(\mathbb R).
\]
Both conditioning tuples in the class definition are empty.  Equivalently,
their conditioning space is the one-point space \(\mathbb R^0\), and the
conditional law at that point is the marginal \(\nu_R\).  Since \(R\geq1\),
the interval \([-R,R]\) has positive length, so
\[
\lVert u_R\rVert_{L^\infty(\mathbb R)}=\frac1{2R}.
\]
Any other density version equals \(u_R\) Lebesgue-almost everywhere and hence
has the same essential supremum.  Thus both setting-defined caps, which refer
to the same sole-coefficient density in this branch, equal \(1/(2R)\).
\(\square\)

### unit_002: proposition

**Proposition (Degree-two full-complement kernels).**
\(\label{prop:step-007-degree-two-kernels}\)
Under Assumption~\ref{assump:indexed-regime}, if \(d=2\) and
\(\mu^{\mathrm{wit}}_{2,R}\) is the setting-defined witness law, then a
regular conditional law of \(\alpha_0\) given the full complement
\(\alpha_1\), and a regular conditional law of \(\alpha_1\) given the full
complement \(\alpha_0\), are both the constant kernel \(\nu_R\) with density
\(u_R\).  Consequently,
\[
K_0^{\mu^{\mathrm{wit}}_{2,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{2,R}}
=\frac1{2R}
\quad\text{almost surely}.
\]

**Proof / justification.**
Here \(\alpha_0\) and \(\alpha_1\) are independent with common law
\(\nu_R\).  Define, for all \(y,x\in\mathbb R\) and all Borel
\(A\subseteq\mathbb R\),
\[
Q^0_y(A):=\nu_R(A),
\qquad
Q^\infty_x(A):=\nu_R(A).
\]
These kernels are measurable because they are constant in the conditioning
coordinate.  For Borel \(A,C\subseteq\mathbb R\), independence gives
\[
\begin{aligned}
\mathbb P(\alpha_0\in A,\alpha_1\in C)
&=\nu_R(A)\mathbb P(\alpha_1\in C)
=\int_C Q^0_y(A)\,\mathbb P_{\alpha_1}(dy),\\
\mathbb P(\alpha_1\in A,\alpha_0\in C)
&=\nu_R(A)\mathbb P(\alpha_0\in C)
=\int_C Q^\infty_x(A)\,\mathbb P_{\alpha_0}(dx).
\end{aligned}
\]
Thus these are regular conditional laws after conditioning on the entire
nonpivot coordinate in each direction.  Each has density \(u_R\) and
essential supremum \(1/(2R)\).  Regular conditional laws are determined on a
set of full conditioning-marginal measure by the displayed integral
identities, so any permissible versions yield the same conditional law, and
hence the same density essential supremum, at the realized conditioning
coordinate almost surely.  This proves both asserted random-cap equalities.
\(\square\)

### unit_003: proposition

**Proposition (Higher-degree full-complement kernels).**
\(\label{prop:step-007-high-degree-kernels}\)
Under Assumption~\ref{assump:indexed-regime}, if \(d\geq3\) and
\(\mu^{\mathrm{wit}}_{d,R}\) is the setting-defined witness law, then a
regular conditional law of \(\alpha_0\) given all complementary coordinates
\(\alpha_{1:d-1}\), and a regular conditional law of \(\alpha_{d-1}\)
given all complementary coordinates \(\alpha_{0:d-2}\), are both the
constant kernel \(\nu_R\) with density \(u_R\).  Consequently,
\[
K_0^{\mu^{\mathrm{wit}}_{d,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}
\quad\text{almost surely}.
\]

**Proof / justification.**
The construction is
\[
\alpha_0=U_0,
\qquad
\alpha_j=RS\quad(1\leq j\leq d-2),
\qquad
\alpha_{d-1}=U_\infty,
\]
where \(U_0,U_\infty\sim\nu_R\), \(S\) is Rademacher, and the three
variables are mutually independent.  The two complete conditioning tuples
are therefore
\[
\alpha_{1:d-1}=(RS,\ldots,RS,U_\infty),
\qquad
\alpha_{0:d-2}=(U_0,RS,\ldots,RS).
\]
The first tuple is a measurable function of \((S,U_\infty)\), so it is
independent of \(U_0=\alpha_0\).  The second tuple is a measurable function
of \((U_0,S)\), so it is independent of
\(U_\infty=\alpha_{d-1}\).  In particular, although either complement
contains the entire middle block and hence reveals \(S\) on its support,
that revelation does not reveal its pivot endpoint.

For all \(y,z\in\mathbb R^{d-1}\), define
\[
Q^0_y(A):=\nu_R(A),
\qquad
Q^\infty_z(A):=\nu_R(A)
\quad(A\in\mathcal B(\mathbb R)).
\]
To check the first kernel directly, let \(C\subseteq\mathbb R^{d-1}\) be
Borel.  The independence just proved gives
\[
\begin{aligned}
\mathbb P(\alpha_0\in A,\alpha_{1:d-1}\in C)
&=\nu_R(A)\mathbb P(\alpha_{1:d-1}\in C)\\
&=\int_C Q^0_y(A)\,\mathbb P_{\alpha_{1:d-1}}(dy).
\end{aligned}
\]
The same calculation with the second tuple gives
\[
\mathbb P(\alpha_{d-1}\in A,\alpha_{0:d-2}\in C)
=\int_C Q^\infty_z(A)\,\mathbb P_{\alpha_{0:d-2}}(dz).
\]
Both kernels are constant and therefore measurable, so the two displayed
identities verify them as regular conditional laws on the full complement
spaces, including conditioning values outside the witness support.

Both kernels have density \(u_R\) and cap \(1/(2R)\).  By the checked
almost-sure uniqueness fact restated in `Cited Result Applications`, every
permissible conditional-law and density version gives that same cap at the
realized complement almost surely.  Hence both full-complement random caps
are exactly \(1/(2R)\), not merely bounded by it.  \(\square\)

### unit_004: proposition

**Proposition (Cube support and ambient singularity).**
\(\label{prop:step-007-support-singularity}\)
Under Assumption~\ref{assump:indexed-regime}, the setting-defined law
\(\mu^{\mathrm{wit}}_{d,R}\) satisfies
\[
\mu^{\mathrm{wit}}_{d,R}([-R,R]^d)=1
\quad\text{for every }d\geq1.
\]
If \(d\geq3\), then \(\mu^{\mathrm{wit}}_{d,R}\) is singular with respect
to \(d\)-dimensional Lebesgue measure \(\lambda_d\).

**Proof / justification.**
For \(d=1\), the only coordinate is uniform on \([-R,R]\).  For \(d=2\),
both coordinates are uniform on that interval.  For \(d\geq3\), the two
endpoint coordinates lie in \([-R,R]\) almost surely and every middle
coordinate is \(RS\in\{-R,R\}\).  This proves cube support separately in
all three degree regimes.

Now let \(d\geq3\) and set
\[
A_{d,R}:=[-R,R]\times
\bigl\{(R,\ldots,R),(-R,\ldots,-R)\bigr\}
\times[-R,R]\subseteq\mathbb R^d,
\]
where each displayed middle vector has \(d-2\geq1\) entries.  The witness
construction gives \(\mu^{\mathrm{wit}}_{d,R}(A_{d,R})=1\).  The set
\(A_{d,R}\) is closed and hence Borel.  Its middle factor is a finite subset
of \(\mathbb R^{d-2}\), so its
\((d-2)\)-dimensional Lebesgue measure is zero.  Product measure, applied to
the two product rectangles comprising \(A_{d,R}\), therefore gives
\[
\lambda_d(A_{d,R})=0.
\]
Thus a \(\lambda_d\)-null Borel set carries all witness mass, which is
exactly ambient singularity.  This includes \(d=3\), where the middle factor
is the two-point set \(\{-R,R\}\).  \(\square\)

### unit_005: proposition

**Proposition (Dependence of the middle coordinates).**
\(\label{prop:step-007-middle-dependence}\)
Under Assumption~\ref{assump:indexed-regime}, if \(d\geq4\), then the middle
coordinates of \(\mu^{\mathrm{wit}}_{d,R}\) are dependent; in particular,
\(\alpha_1\) and \(\alpha_2\) are not independent.

**Proof / justification.**
When \(d\geq4\), both \(\alpha_1\) and \(\alpha_2\) exist in the middle
block and satisfy \(\alpha_1=RS=\alpha_2\) almost surely.  Since \(R\geq1\),
the values \(R\) and \(-R\) are distinct.  The Rademacher law gives
\[
\mathbb P(\alpha_1=R)=\mathbb P(\alpha_2=R)=\frac12,
\qquad
\mathbb P(\alpha_1=R,\alpha_2=R)=\frac12.
\]
The last probability differs from the product \(1/4\) of the first two, so
the two coordinates, and hence the middle-coordinate family, are dependent.
\(\square\)

### unit_006: claim

**Claim (Isolated threshold comparison for the witness caps).**
\(\label{claim:step-007-threshold}\)
Under Assumption~\ref{assump:indexed-regime} and the exact-cap conclusion of
the applicable one of
Propositions~\ref{prop:step-007-degree-one-kernels},
\ref{prop:step-007-degree-two-kernels}, and
\ref{prop:step-007-high-degree-kernels}, namely
\[
K_0^{\mu^{\mathrm{wit}}_{d,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}
\quad\text{almost surely},
\]
if the separate theorem-clause hypothesis
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) holds, then
\[
\mathbb E_{\mu^{\mathrm{wit}}_{d,R}}
 K_0^{\mu^{\mathrm{wit}}_{d,R}}
\leq\bar\kappa_0,
\qquad
\mathbb E_{\mu^{\mathrm{wit}}_{d,R}}
 K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
\leq\bar\kappa_\infty.
\]

**Proof / justification.**
The applicable degree proposition proves that each cap is the deterministic
value \(1/(2R)\) almost surely.  Since \(R\geq1\),
\[
\mathbb E K_0^{\mu^{\mathrm{wit}}_{d,R}}
=\mathbb E K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}
\leq\frac12
\leq\min\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
This is the only point in the proof where either lower threshold on a cap
parameter is used.  \(\square\)

## Target-Step Assembly

Fix \((d,R)\) under Assumption~\ref{assump:indexed-regime} and impose only
for this witness-membership clause the separate hypothesis
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\).

- If \(d=1\), Proposition~\ref{prop:step-007-degree-one-kernels} supplies
  both a.s. conditional densities and both exact caps for the empty
  conditioning tuples.  Proposition~\ref{prop:step-007-support-singularity}
  supplies support on \([-R,R]\), and
  Claim~\ref{claim:step-007-threshold} supplies both required mean-cap
  inequalities.
- If \(d=2\), Proposition~\ref{prop:step-007-degree-two-kernels} supplies the
  two exact full-complement conditional densities and caps, now conditioning
  each endpoint on the other.  Proposition~\ref{prop:step-007-support-singularity}
  supplies support on \([-R,R]^2\), and
  Claim~\ref{claim:step-007-threshold} supplies the mean-cap inequalities.
- If \(d\geq3\), Proposition~\ref{prop:step-007-high-degree-kernels} supplies
  the two exact full-complement conditional densities and caps even though
  the complement contains the whole Rademacher middle block.
  Proposition~\ref{prop:step-007-support-singularity} supplies cube support
  and proves ambient singularity.  When \(d\geq4\),
  Proposition~\ref{prop:step-007-middle-dependence} additionally proves the
  required middle-coordinate dependence.  Finally,
  Claim~\ref{claim:step-007-threshold} supplies both mean-cap inequalities.

In each of the three exhaustive degree regimes, the same witness law therefore
is the distribution of a Borel measurable Euclidean random vector and thus is
a Borel probability law on \(\mathbb R^d\).  It satisfies every remaining
item in the exact definition of \(\mathcal D_{d,R,\eta}\): cube support,
a.s. existence of both endpoint conditional densities, and both mean-cap
inequalities.  Hence
\[
\boxed{\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta}}
\qquad(d\geq1, R\geq1)
\]
under the separate theorem-clause threshold.  The ambient singularity for
\(d\geq3\) and middle-coordinate dependence for \(d\geq4\) show directly
that neither an ambient joint density nor coordinate independence was used as
a hidden membership condition.  The threshold is consumed only by
Claim~\ref{claim:step-007-threshold} and this membership assembly; it has no
role in the general root-hitting bound or its steps step_001 through step_006.

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), \(\bar\kappa_0\), and
  \(\bar\kappa_\infty\); the exact exported cap is \(1/(2R)\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d\), \(R\), a conditional-law or
  density version, or a middle-block realization.
- Fixed quantities: The finite pair
  \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) is fixed before \((d,R)\)
  varies.
- Probability mode: Exact almost-sure computation of each random conditional
  cap, followed by its exact expectation.  There is no exceptional event or
  confidence parameter.
- Horizon mode: Static at each indexed \((d,R)\); there is no time or limiting
  scope.
- Norm mode: The conditional \(L^\infty(\mathbb R)\) norm with respect to
  one-dimensional Lebesgue measure.
- Admissibility conditions and auxiliary tolerances: \(d\geq1\), \(R\geq1\),
  and, only for this nonemptiness clause,
  \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\).  There are no auxiliary
  tolerances.
- Term absorption or simplification inequalities:
  \[
  \frac1{2R}\leq\frac12\leq
  \min\{\bar\kappa_0,\bar\kappa_\infty\}.
  \]
  No term is hidden or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This exact comparison is
  the complete indexed-nonemptiness bridge.  It is deliberately disjoint
  from the general root-hitting rate bridge.
- Baseline-reduction check: N/A.  The witness certificate is a new static
  nonemptiness clause.  The boundary \(d=1\) is nevertheless computed
  exactly, with both caps referring to the same sole coefficient and no
  remainder.

## Blockers

None.

## Notation And Assumption Notes

- \(\lambda_k\) denotes \(k\)-dimensional Lebesgue measure; \(\lambda_1\)
  is the Lebesgue reference measure already used by the class definition.
  This is `proof-local` notation.
- \(\nu_R(A)=\lambda_1(A\cap[-R,R])/(2R)\) and
  \(u_R=(2R)^{-1}{\bf1}_{[-R,R]}\) denote the setting-defined uniform
  endpoint law and its density.  They are `proof-local` abbreviations defined
  directly from the original setting quantity \(R\).
- The kernels \(Q^0\) and \(Q^\infty\) are `proof-local` generated objects.
  Their existence and exact formulas are proved in
  Propositions~\ref{prop:step-007-degree-two-kernels} and
  \ref{prop:step-007-high-degree-kernels}; they are not assumed conditional
  invariants.
- \(A_{d,R}\) is the `proof-local` finite-middle-block support set used only
  to prove singularity in
  Proposition~\ref{prop:step-007-support-singularity}.  Its null measure is
  proved there rather than assumed.
- The `public-facing` object exported by this step is only the setting-defined
  membership certificate
  \(\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta}\), together with the
  accepted claim's exact cap, support, singularity, and dependence properties.
  No proof-local kernel or support-set notation is exported downstream.
- Constant provenance: \(1/(2R)\) is the exact essential supremum proved by
  the three degree-specific kernel propositions.  The number \(1/2\) is the
  explicit theorem-clause threshold and is not a newly chosen constant.  The
  comparison between them is proved by
  Claim~\ref{claim:step-007-threshold} using the primitive condition
  \(R\geq1\).
- Assumption provenance: endpoint independence and the Rademacher middle
  block are part of the setting-defined witness construction.  Cube support,
  conditional absolute continuity, exact caps, ambient singularity, and
  middle-coordinate dependence are all proved in this step.  No generated
  event, boundedness condition, local-validity condition, or invariant is
  assumed, and there are no dependency-supplied facts.
- Threshold isolation: the separate inequalities
  \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) are used only in
  Claim~\ref{claim:step-007-threshold} and the final membership assembly.
  In particular, they are not added to
  Assumption~\ref{assump:indexed-regime}, are not used to prove any general
  root-hitting estimate, and do not enter steps step_001 through step_006.
- Global-diagnostic boundary: `global_proof.md` was read only after confirming
  that the paired `global_proof_review.md` has status `ACCEPTED`.  Its
  step-relevant planning observation was to compute the three degree regimes
  by independent endpoint innovations while auditing the singular and
  dependent middle block.  Every such statement was independently derived in
  the local units above; the diagnostic was not used as evidence, a cited
  result, an assumption source, or authority to alter the target claim.
