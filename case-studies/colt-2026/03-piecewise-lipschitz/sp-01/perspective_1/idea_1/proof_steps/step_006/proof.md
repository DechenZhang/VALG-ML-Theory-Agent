# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the witness sheet has affine hull dimension \(3\)
  from its curved two-dimensional projection plus a nonzero intercept
  direction, but zero \(3\)-volume inside that hull; use the cited
  baseline's full-rank affine-map and absolutely continuous latent-law
  convention to rule out every latent dimension.
- Dependencies: `step_004`.
- Assumptions used: The derived exact support from accepted `step_004`;
  the cited baseline assumptions are used only for the comparison.
- Technical challenge: Close the \(k=3\) loophole left by curvature
  alone and accurately map the baseline's coefficient and latent
  conventions.
- Intended proof tool or cited result: Noncollinearity, affine-hull
  dimension, a Lipschitz-image zero-volume argument, and the opening
  affine generalization in Appendix Theorem 18 of Balcan--Dick--Pegden,
  *Semi-bandit Optimization in the Dispersed Setting*,
  arXiv:1904.09014.
- Output target: Exact affine-latent nonmembership certificate.
- Rate objective: None; this is a structural coverage comparison, not a
  rate claim.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions from the basic setting: Fix arbitrary
  \(d\geq3\), \(R>0\), and \(q\in(0,1)\), and use the setting-defined
  quantities
  
  \[
  \rho_q(z)=\frac R2\left(\frac{2|z|}{R}\right)^q,
  \qquad
  \alpha^{(q)}=(\rho_q(Z)U,Z,Z^2/R,0,\ldots,0),
  \]
  
  with law \(\mu_q\). These are static primitive construction data.
- Primitive technical assumptions by stable id: None. In particular,
  neither `assump:averaged-intercept-density` nor
  `assump:random-intercept-witness` is used in this structural step.
- Accepted dependency artifacts:
  `proof_steps/step_004/proof.md`, sketch attempt 1 and unit attempt 1,
  status `COMPLETE`, SHA-256
  `1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a`,
  paired with `proof_steps/step_004/review.md`, SHA-256
  `d1ec21173c373c8771589f2ccc178b269eb5a180c93c345680722f86c7af5a03`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Derived interface supplied by the accepted dependency:
  Proposition~\ref{prop:step-004-exact-support} proves
  
  \[
  \operatorname{supp}(\mu_q)=S_q,
  \qquad
  S_q:=\left\{(a,z,z^2/R,0,\ldots,0):
  |z|\leq R/2,\ |a|\leq\rho_q(z)\right\}.
  \tag{1}
  \]
  
  It includes the collapsed point at \(z=0\), both endpoint fibers,
  and the case \(d=3\). Proposition~\ref{prop:step-004-cube-width}
  also proves \(0\leq\rho_q(z)\leq R/2\) on the displayed range.
- Derived invariants supplied by accepted dependencies: Exact
  topological support (1), including its endpoint and collapsed-fiber
  boundary cases.
- Local conditional hypotheses: None.
- Comparison-local source conditions: When testing membership in the
  cited affine-latent baseline, the latent law is a probability with a
  bounded Lebesgue density on a bounded subset of \(\mathbb R^k\), and
  its affine coefficient map has full-column-rank linear part. These
  are not assumptions on \(\mu_q\); they are the defining conditions
  of the comparison class whose membership is refuted.

The accepted diagnostic `global_proof.md`, SHA-256
`b8d7e0ea77be6ddd86ffc69a41bd175bd7ad91c7b3bb65b330e4b8370e2115c4`,
was read only together with its accepted `global_proof_review.md`,
SHA-256
`bd91a3a3f2501ce0e40f17dd7674d30e515790a828d7bd5586e417f45d79976b`.
Its suggestion to separate affine-hull dimension from within-hull
nullity was used as planning context only. Neither diagnostic artifact
is used as evidence, a cited result, an assumption source, or authority
to change the target claim.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the primitive witness range and accepted Proposition~\ref{prop:step-004-exact-support}, the sheet \(S_q\) has affine hull exactly \(E_d=\{(a,z,w,0,\ldots,0):a,z,w\in\mathbb R\}\), hence affine dimension exactly \(3\), including when \(d=3\). | Supplies the exact dimension certificate, not merely nonplanarity. |
| `unit_002` | proposition | Under the same primitive range and accepted support identity, \(S_q=T(D_q)\) for \(D_q=\{(a,z):|z|\leq R/2,|a|\leq\rho_q(z)\}\) and \(T(a,z)=(a,z,z^2/R,0,\ldots,0)\); the map is explicitly \(\sqrt2\)-Lipschitz and \(S_q\) has zero induced \(\mathcal H^3\)-measure in \(E_d\). | Closes the three-dimensional loophole without using the non-Lipschitz latent parametrization. |
| `unit_003` | lemma | Under Propositions~\ref{prop:step-006-affine-hull} and \ref{prop:step-006-null-volume}, the fixed-monic descending-order embedding \(\iota_d(a_0,\ldots,a_{d-1})=(1,a_{d-1},\ldots,a_0)\) preserves support, affine dimension, and within-hull Hausdorff nullity. | Maps the branch coefficient convention exactly to the source convention. |
| `unit_004` | proposition | Under the full-column-rank affine-latent source convention, an affine pushforward of a latent Lebesgue-density probability has induced density \(p(x)/\sqrt{\det(A^\top A)}\) at the image point \(b+Ax\), is absolutely continuous with respect to induced \(k\)-volume in its affine image, and has affine-support dimension exactly \(k\). | Restates and checks the only source interface consumed by the comparison. |
| `unit_005` | proposition | Under Lemmas/Propositions~\ref{lem:step-006-monic-embedding} and \ref{prop:step-006-affine-pushforward}, no latent dimension can give a full-column-rank bounded-density affine representation of \(\mu_q\): \(k\neq3\) fails by affine dimension, while \(k=3\) fails by within-hull nullity and absolute continuity; degenerate and over-ambient dimensions are explicit. | Proves the exact affine-latent nonmembership target. |

Atomic step = no. Exact affine dimension, within-hull nullity,
coordinate-convention translation, source pushforward measure, and the
all-dimensions contradiction are logically independent obligations.

## Cited Result Applications

1. **Accepted exact-support dependency.**
   Proposition~\ref{prop:step-004-exact-support} in the accepted
   dependency states exactly (1) for every \(d\geq3\), \(R>0\), and
   \(q\in(0,1)\). Its assumptions are the primitive explicit witness
   construction, already fixed above. Its conclusion is used in
   Propositions~\ref{prop:step-006-affine-hull} and
   \ref{prop:step-006-null-volume}. No conditional-density or cap
   conclusion from `step_004` is needed here.

2. **Lipschitz control of Hausdorff measure.**
   If \(F:A\to\mathbb R^n\) is \(L\)-Lipschitz, then for every
   \(s\geq0\),
   \[
   \mathcal H^s(F(A))\leq L^s\mathcal H^s(A).
   \tag{2}
   \]
   This follows directly by mapping any sufficiently fine cover of
   \(A\): diameters increase by at most \(L\), so the defining sum of
   \(s\)-powers increases by at most \(L^s\). A bounded subset of
   \(\mathbb R^2\) has zero \(\mathcal H^3\)-measure, as a mesh of
   side length \(\delta\) uses \(O(\delta^{-2})\) sets of diameter
   \(O(\delta)\), whose total cubed diameter is \(O(\delta)\to0\).
   Proposition~\ref{prop:step-006-null-volume} checks the exact
   Lipschitz constant and applies (2). Thus no unverified regularity of
   \(\rho_q\) is used.

3. **Full-column-rank affine-pushforward convention in the cited
   baseline.**
   The source is Balcan, Dick, and Pegden, *Semi-bandit Optimization in
   the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18's
   opening affine generalization, in the audited cache
   `<TEMP_ROOT>/semibandit-audit.YWhVeD/dispersionToolAppendix.tex`,
   SHA-256
   `abd2e9340e00ad71fa2657bfbc0fb86b6f480b698eaaf39fee3dd3b6b6fad65d`.
   The source statement is at cached lines 4--17. Its proof treats the
   descending full coefficient vector
   \((\alpha_d,\alpha_{d-1},\ldots,\alpha_0)\) at lines 30--33,
   gives affine-image volume
   \[
   \sqrt{\det(A^\top A)}(2R_{\mathrm{lat}})^k,
   \tag{3}
   \]
   identifies the image as \(k\)-dimensional at lines 56--59, and at
   lines 96--101 gives the induced within-image density bound
   \[
   \frac{\kappa}{\sqrt{\det(A^\top A)}}.
   \tag{4}
   \]
   Here \(A\) is the linear part of the affine map; positivity of the
   determinant in (3)--(4), together with the asserted
   \(k\)-dimensional image, is exactly the full-column-rank convention.
   The symbol \(R_{\mathrm{lat}}\) merely renames the source's latent
   cube radius to distinguish it from the branch coefficient radius.

   There is a source-level coordinate-count typo that must not be
   silently propagated: cached line 8 names the lower vector
   \((\alpha_{d-1},\ldots,\alpha_0)\), which has \(d\) entries, while
   declaring codomain \(\mathbb R^{d+1}\). Lines 30--33 unambiguously
   use the full descending vector with \(d+1\) entries. This proof
   consumes only that unambiguous proof convention, translated by
   Lemma~\ref{lem:step-006-monic-embedding}.

   The source's separate premise that no real number is a forced root
   appears at lines 9--11. Its root-hitting implication appears at
   lines 14--16, and the later proof derives root-section and root-bound
   estimates. None of those premises, intersections, Cauchy root
   bounds, or quantitative root-hitting outputs is used here. The only
   consumed interface is the antecedent class's full-rank affine
   volume and induced-density convention (3)--(4), independently
   restated in Proposition~\ref{prop:step-006-affine-pushforward}.

## Local Derivation

### unit_001: proposition

**Proposition (Exact affine hull of the witness sheet).**
\(\label{prop:step-006-affine-hull}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), and accepted
Proposition~\ref{prop:step-004-exact-support}, define
\[
E_d:=\{(a,z,w,0,\ldots,0):a,z,w\in\mathbb R\}\subseteq\mathbb R^d.
\tag{5}
\]
Then
\[
\operatorname{aff}(S_q)=E_d,
\qquad
\dim\operatorname{aff}(S_q)=3.
\tag{6}
\]
This conclusion also holds in the minimal case \(d=3\), when
\(E_d=\mathbb R^3\).

**Proof / justification.** Every point of \(S_q\) in (1) has only its
first three coordinates possibly nonzero. Moreover, the collapsed
point
\[
o=(0,0,0,0,\ldots,0)
\tag{7}
\]
belongs to \(S_q\). Consequently
\(\operatorname{aff}(S_q)\) is a linear subspace contained in \(E_d\).

At either endpoint \(z=\pm R/2\), the definition gives
\[
\rho_q(\pm R/2)
=\frac R2\left(\frac{2(R/2)}R\right)^q
=\frac R2.
\tag{8}
\]
Hence all four points below belong to the accepted exact support:
\[
o,
\qquad
p_+=\left(0,\frac R2,\frac R4,0,\ldots,0\right),
\qquad
p_-=\left(0,-\frac R2,\frac R4,0,\ldots,0\right),
\tag{9}
\]
and
\[
r=\left(\frac R2,\frac R2,\frac R4,0,\ldots,0\right).
\tag{10}
\]
The projections of \(o,p_+,p_-\) onto the
\((\alpha_1,\alpha_2)\)-coordinates are
\[
(0,0),\qquad(R/2,R/4),\qquad(-R/2,R/4).
\]
The determinant of the two nonzero projected vectors is
\[
\det\begin{pmatrix}R/2&-R/2\\R/4&R/4\end{pmatrix}
=\frac{R^2}{4}>0,
\tag{11}
\]
so the curved projection contributes two independent affine
directions. More explicitly, the direction space of
\(\operatorname{aff}(S_q)\) contains
\[
p_+-p_-=R e_1,
\qquad
p_++p_-=\frac R2e_2,
\qquad
r-p_+=\frac R2e_0.
\tag{12}
\]
Because \(R>0\), these span \(E_d\). The reverse containment was
already established, proving (6). For \(d=3\), there are no trailing
coordinates and the same three independent directions span all of
\(\mathbb R^3\). The collapsed origin causes no loss: it is part of
the topological support by the accepted dependency, while the nonzero
directions are supplied by endpoint fibers. \(\square\)

### unit_002: proposition

**Proposition (Zero three-volume inside the affine hull).**
\(\label{prop:step-006-null-volume}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), and accepted
Proposition~\ref{prop:step-004-exact-support}, define
\[
D_q:=\{(a,z)\in\mathbb R^2:|z|\leq R/2,
\ |a|\leq\rho_q(z)\}
\tag{13}
\]
and
\[
T:D_q\longrightarrow E_d,
\qquad
T(a,z)=(a,z,z^2/R,0,\ldots,0).
\tag{14}
\]
Then \(T(D_q)=S_q\), the map \(T\) is
\(\sqrt2\)-Lipschitz in Euclidean norm, and
\[
\mathcal H^3_{E_d}(S_q)=0,
\tag{15}
\]
where \(\mathcal H^3_{E_d}\) is the induced three-dimensional
Hausdorff volume in the affine hull from
Proposition~\ref{prop:step-006-affine-hull}.

**Proof / justification.** The definitions (1), (13), and (14) give
both inclusions directly: every \((a,z)\in D_q\) maps to the displayed
sheet, and every displayed sheet point is \(T(a,z)\) for its first two
coordinates. Thus
\[
T(D_q)=S_q.
\tag{16}
\]
No division by \(\rho_q(z)\) occurs, including at \(z=0\).

Take \((a,z),(a',z')\in D_q\). Since
\(|z|,|z'|\leq R/2\),
\[
\left|\frac{z^2-(z')^2}{R}\right|
=\frac{|z-z'||z+z'|}{R}
\leq |z-z'|.
\tag{17}
\]
Consequently
\[
\begin{aligned}
\|T(a,z)-T(a',z')\|_2^2
&=|a-a'|^2+|z-z'|^2
 +\left|\frac{z^2-(z')^2}{R}\right|^2\\
&\leq |a-a'|^2+2|z-z'|^2\\
&\leq2\bigl(|a-a'|^2+|z-z'|^2\bigr).
\end{aligned}
\tag{18}
\]
This is the explicit \(\sqrt2\)-Lipschitz estimate.

The accepted bound \(\rho_q(z)\leq R/2\) puts \(D_q\) inside the
bounded square \([-R/2,R/2]^2\). Covering that square by a mesh of
side length \(\delta\) uses at most
\((\lceil R/\delta\rceil+1)^2\) squares, each of diameter at most
\(\sqrt2\delta\). The sum of cubed diameters is therefore at most
\[
(\lceil R/\delta\rceil+1)^2(\sqrt2\delta)^3,
\tag{19}
\]
which tends to zero as \(\delta\downarrow0\). Hence
\(\mathcal H^3(D_q)=0\). Applying the directly restated Lipschitz
cover estimate (2) and (18) yields
\[
\mathcal H^3_{E_d}(S_q)
=\mathcal H^3_{E_d}(T(D_q))
\leq(\sqrt2)^3\mathcal H^3(D_q)=0.
\]

The map whose regularity matters is \(T(a,z)\). The original latent
map \((z,u)\mapsto(\rho_q(z)u,z,z^2/R,0,\ldots,0)\) is not invoked:
for \(q<1\), its first coordinate is only Holder at \(z=0\), but that
fact has no bearing on (18). This also handles the collapsed fiber and
the minimal case \(d=3\). \(\square\)

### unit_003: lemma

**Lemma (Fixed-monic descending-coordinate embedding).**
\(\label{lem:step-006-monic-embedding}\)
Under Propositions~\ref{prop:step-006-affine-hull} and
\ref{prop:step-006-null-volume}, define the source-coordinate embedding
\[
\iota_d:\mathbb R^d\longrightarrow\mathbb R^{d+1},
\qquad
\iota_d(a_0,a_1,\ldots,a_{d-1})
=(1,a_{d-1},a_{d-2},\ldots,a_0).
\tag{20}
\]
Then \(\iota_d\) places the branch coefficient vector in the source's
descending full-coefficient order with fixed leading coefficient
\(\alpha_d=1\). It is an affine isometry, and
\[
\operatorname{supp}((\iota_d)_\#\mu_q)=\iota_d(S_q),
\tag{21}
\]
\[
\dim\operatorname{aff}(\iota_d(S_q))=3,
\qquad
\mathcal H^3_{\operatorname{aff}(\iota_d(S_q))}
   (\iota_d(S_q))=0.
\tag{22}
\]

**Proof / justification.** For \(x,y\in\mathbb R^d\), the leading
coordinates of \(\iota_d(x)\) and \(\iota_d(y)\) cancel and the
remaining coordinates are merely reversed. Therefore
\[
\|\iota_d(x)-\iota_d(y)\|_2=\|x-y\|_2.
\tag{23}
\]
Thus \(\iota_d\) is an affine isometry from \(\mathbb R^d\) onto the
closed fixed-monic hyperplane whose first, leading-coefficient
coordinate equals one. Formula (20), rather
than a dimension-only assertion, gives the exact ordering bridge:
the branch vector \((\alpha_0,\ldots,\alpha_{d-1})\) becomes the
source vector \((\alpha_d,\ldots,\alpha_0)\) with \(\alpha_d=1\).

Writing the affine map as \(\iota_d(x)=c_*+Q_dx\), equation (23)
gives \(Q_d^\top Q_d=I_d\). Therefore, if a lower-coordinate affine
map has linear part \(B\), its source-order fixed-monic composition
has linear part \(Q_dB\), and
\[
(Q_dB)^\top(Q_dB)=B^\top B.
\tag{23a}
\]
Thus this coordinate translation preserves full column rank and the
exact Gram-determinant normalization, not only affine dimension.

Because \(\iota_d\) is a homeomorphism onto its closed image, support
is transported exactly. Indeed, every ambient neighborhood of
\(\iota_d(x)\) with \(x\in S_q\) pulls back to a neighborhood of a
support point and hence has positive pushforward mass. Conversely,
the pushforward is concentrated on the closed set \(\iota_d(S_q)\).
This proves (21). Affine isometries commute with affine hulls, preserve
their dimensions, and preserve induced Hausdorff measures. Applying
Propositions~\ref{prop:step-006-affine-hull} and
\ref{prop:step-006-null-volume} proves (22). \(\square\)

### unit_004: proposition

**Proposition (Full-rank affine pushforward interface).**
\(\label{prop:step-006-affine-pushforward}\)
Let \(k\geq1\) be an integer. Let \(X\in\mathbb R^k\) have a probability density
\(p\) with respect to \(k\)-dimensional Lebesgue measure, with
\(p\leq\kappa<\infty\) almost everywhere and bounded support. Let
\[
\mathfrak f(x)=b+Ax,
\qquad
A\in\mathbb R^{(d+1)\times k},
\qquad
\operatorname{rank}(A)=k,
\tag{24}
\]
and put
\[
L=b+\operatorname{im}(A),
\qquad
J_A:=\sqrt{\det(A^\top A)}>0.
\tag{25}
\]
Then \(\nu:=\mathfrak f_\#\mathcal L(X)\) is absolutely continuous
with respect to the induced \(k\)-dimensional Hausdorff volume
\(\mathcal H^k_L\) on \(L\), with exact density
\[
g(b+Ax)=\frac{p(x)}{J_A}
\quad\text{for Lebesgue-almost every }x,
\qquad
g\leq\frac{\kappa}{J_A}.
\tag{26}
\]
Moreover,
\[
\operatorname{aff}(\operatorname{supp}\nu)=L,
\qquad
\dim\operatorname{aff}(\operatorname{supp}\nu)=k.
\tag{27}
\]

**Proof / justification.** Full column rank makes \(\mathfrak f\)
one-to-one from \(\mathbb R^k\) onto \(L\), with inverse on \(L\)
given by
\[
x=A^\dagger(y-b),
\qquad
A^\dagger=(A^\top A)^{-1}A^\top.
\tag{28}
\]
The \(k\)-dimensional volume scaling of the linear map \(A\) is exactly
the Gram determinant \(J_A\): for every Borel set
\(B\subseteq\mathbb R^k\),
\[
\mathcal H^k_L(b+A B)=J_A\,\mathcal L^k(B).
\tag{29}
\]
This is precisely the determinant convention recorded in source
formula (3). Applying (29) first to simple functions and then to the
nonnegative density \(p\) gives, for every Borel \(C\subseteq L\),
\[
\begin{aligned}
\nu(C)
&=\int_{\mathfrak f^{-1}(C)}p(x)\,dx\\
&=\int_C
 \frac{p(A^\dagger(y-b))}{J_A}\,
 d\mathcal H^k_L(y).
\end{aligned}
\tag{30}
\]
This proves (26), including the exact determinant normalization and
within-image absolute continuity. It is the current-notation form of
the source interface (4), not a use of its root theorem.

It remains to justify the support dimension, since bounded density
does not mean that \(p\) is positive throughout its bounding cube.
Every Borel probability on Euclidean space gives full mass to its
topological support: the complement is the union of a countable base
of open sets of zero measure. Suppose
\(H:=\operatorname{aff}(\operatorname{supp}\nu)\) were a proper
affine subspace of \(L\). Then \(\mathcal H^k_L(H)=0\), while
\(\nu(H)=1\). This contradicts (26). Hence \(H=L\), proving (27)
without any full-support or lower-density assumption on the latent
law. \(\square\)

### unit_005: proposition

**Proposition (Exclusion of every affine-latent dimension).**
\(\label{prop:step-006-nonmembership}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), accepted
Proposition~\ref{prop:step-004-exact-support},
Lemma~\ref{lem:step-006-monic-embedding}, and
Proposition~\ref{prop:step-006-affine-pushforward}, the full descending
coefficient law \((\iota_d)_\#\mu_q\) is not the affine pushforward of
any bounded-density latent probability under a full-column-rank affine
map into \(\mathbb R^{d+1}\). Consequently \(\mu_q\) is not an affine
image of a bounded-density latent law in the cited affine-latent
baseline convention.

**Proof / justification.** If \(\mu_q\) had such an affine
representation in the branch's ascending lower-coordinate order,
composition with \(\iota_d\) would give a representation in the
source's descending full-coordinate order. Equation (23a) shows that
this composition preserves full column rank and the Gram determinant.
It therefore suffices to exclude source-order representations.

First consider a positive integer \(k\) for which a source-style
representation could exist. Suppose for contradiction that
\[
(\iota_d)_\#\mu_q=\mathfrak f_\#\mathcal L(X),
\tag{31}
\]
where \(X\) has a bounded Lebesgue density in \(\mathbb R^k\) and
\(\mathfrak f(x)=b+Ax\) has full-column-rank \(A\). Equality of laws
gives equality of their topological supports. By
Lemma~\ref{lem:step-006-monic-embedding}, the left support has affine
dimension \(3\). By
Proposition~\ref{prop:step-006-affine-pushforward}, the right support
has affine dimension \(k\). Thus
\[
k=3.
\tag{32}
\]
This excludes every positive latent dimension \(k\neq3\) by dimension
alone, including \(k=1,2\) and every \(k>3\) for which full column rank
is ambiently possible.

For the only remaining case \(k=3\), let
\(L=b+\operatorname{im}(A)\). Proposition~\ref{prop:step-006-affine-pushforward}
gives
\[
\mathfrak f_\#\mathcal L(X)\ll\mathcal H^3_L
\quad\text{and}\quad
L=\operatorname{aff}(\operatorname{supp}
 (\mathfrak f_\#\mathcal L(X))).
\tag{33}
\]
Equality (31), support identity (21), and (22) identify this affine
image with \(\operatorname{aff}(\iota_d(S_q))\) and give
\[
\mathcal H^3_L(\iota_d(S_q))=0.
\tag{34}
\]
Absolute continuity in (33) therefore implies
\[
(\mathfrak f_\#\mathcal L(X))(\iota_d(S_q))=0.
\tag{35}
\]
But the accepted exact support and (21) give
\[
((\iota_d)_\#\mu_q)(\iota_d(S_q))=\mu_q(S_q)=1,
\tag{36}
\]
contradicting (31). This closes exactly the dimension-three loophole
left by curvature alone.

For completeness, a zero-dimensional latent variable, if admitted by
convention, has a one-point affine image and hence affine-support
dimension zero, contradicting (22). If \(k>d+1\), no
\((d+1)\times k\) matrix has full column rank, so no member of the
comparison class exists. Thus every nonnegative latent dimension is
covered. The minimal witness dimension \(d=3\) is included: then the
branch sheet spans all three lower-coefficient coordinates, its monic
embedding lies in \(\mathbb R^4\), and the \(k=3\) null-volume
contradiction above is unchanged.

This argument makes no claim about rank-deficient affine maps paired
with singular latent laws or any broader comparison class. More
importantly, it never asks whether a real number is a forced root and
never invokes a root-section estimate, a Cauchy root bound, or the
source's root-hitting conclusion. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-006-affine-hull} uses the accepted exact
support to prove that the curved
\((\alpha_1,\alpha_2)\)-projection supplies two independent
directions and a nonzero endpoint intercept fiber supplies the third.
It proves the exact equality
\(\operatorname{aff}(S_q)=E_d\), including \(d=3\), rather than only
showing that the sheet is not planar.

Proposition~\ref{prop:step-006-null-volume} then uses the exact graph
domain \(D_q\) and map
\(T(a,z)=(a,z,z^2/R,0,\ldots,0)\). Its displayed estimate proves that
\(T\) is \(\sqrt2\)-Lipschitz on the whole domain, including \(z=0\),
and hence that the sheet has zero three-dimensional Hausdorff volume
inside its exact affine hull. No regularity of the Holder function
\(z\mapsto\rho_q(z)\) is substituted for this argument.

Lemma~\ref{lem:step-006-monic-embedding} maps these two actual support
facts into the source's full descending coefficient order through the
fixed monic affine isometry. Proposition~\ref{prop:step-006-affine-pushforward}
restates and derives the source's full-column-rank interface with the
exact factor \(\sqrt{\det(A^\top A)}\): any such latent-density
pushforward is absolutely continuous with respect to induced
\(k\)-volume and has affine-support dimension \(k\).

Finally, Proposition~\ref{prop:step-006-nonmembership} composes those
interfaces. Affine dimension excludes every \(k\neq3\); within-image
absolute continuity and zero three-volume exclude \(k=3\); a point
latent and over-ambient dimensions are handled explicitly. This proves
the exact binding `step_006` claim. The comparison uses neither the
source's no-forced-root premise nor any root-bound output.

## Explicit Rate Audit

None. This step proves a structural support/nonmembership comparison.
The determinant factor is retained exactly to verify the cited
measure convention, but no theorem-facing root-hitting rate,
asymptotic rate, probability conversion, auxiliary tolerance, or term
absorption is introduced.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined and dependency objects: \(d,R,q,\rho_q,\mu_q\) and
  the displayed sheet retain their meanings from `setting.md`.
  \(S_q\) is an appendix-local abbreviation for the exact accepted
  support (1); it is not a new support assumption.
- `appendix-local` objects: \(E_d\), \(D_q\), \(T\), and the fixed-monic
  embedding \(\iota_d\). They package the geometric proof and source
  translation. The minimal public-facing export is only: affine hull
  dimension three, zero within-hull three-volume, and affine-baseline
  nonmembership.
- `proof-local` objects: the support points \(o,p_+,p_-,r\); the
  fixed-monic translation vector \(c_*\), linear part \(Q_d\), and a
  generic lower-coordinate linear part \(B\); and the source-comparison
  variables \(k,X,p,\kappa,b,A,\mathfrak f,L,J_A,A^\dagger,g,\nu,H\).
  Here \(\mathcal L(X)\) denotes the law of \(X\). These objects are
  defined only to check the source interface and are not exported.
- Constant provenance: \(R/2\) and \(R/4\) come directly from the
  setting-defined endpoint and quadratic coordinate. The Lipschitz
  constant \(\sqrt2\) is proved in (17)--(18). The determinant factor
  \(J_A=\sqrt{\det(A^\top A)}\) is the exact full-rank affine volume
  factor in the cached source and is rederived in (29)--(30).
  \(R_{\mathrm{lat}}\) is only a renamed source dummy for its bounded
  latent cube radius; the contradiction is independent of its value.
- Assumption provenance: Exact support is a derived invariant supplied
  by accepted `step_004`. Every dimension, nullity, embedding, density,
  and nonmembership statement is proved in a named local unit. The
  latent density and full-rank map are comparison-local hypotheses, not
  primitive conditions imposed on the new theorem or on \(\mu_q\).
  No local conditional hypothesis is used.
- Boundary and degeneracy notes: \(z=0\) is included in the support and
  in \(D_q\), but no division by \(\rho_q(0)\) occurs. The endpoint
  fibers activate all three affine directions. The proof covers
  \(d=3\), latent \(k=0\), every positive \(k\neq3\), \(k=3\), and
  dimensions too large for full column rank. Rank-deficient maps and
  singular latent laws are outside the precisely cited baseline and
  are not claimed to be excluded.
- Source boundary: The cached opening statement has an internal
  coordinate-count typo, so the proof uses and explicitly translates
  only its unambiguous full-vector convention from lines 30--33. The
  no-forced-root premise and all root-bound outputs are recorded as
  known non-outputs and are not used.
- Diagnostic boundary: The paired global diagnostic and review were
  accepted, but contributed only the planning decision to separate the
  two geometry obligations. All mathematical evidence appears in the
  accepted dependency, the checked source interface, or the local
  derivations above.
