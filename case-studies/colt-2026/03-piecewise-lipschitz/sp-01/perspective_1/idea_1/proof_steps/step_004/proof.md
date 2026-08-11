# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For \(\mu_q\), prove that the displayed sheet is its
  exact topological support and lies in the coefficient cube, prove
  \(\rho_q(Z)>0\) almost surely, identify \(Z\) from the first higher
  coefficient, discharge the local hypotheses of `step_003`, and derive
  \[
  K_{\mu_q}(\beta_q(z))
  =\frac{1}{R(2|z|/R)^q}
  \qquad (z\neq0).
  \]
- Dependencies: `step_003`.
- Assumptions used: The primitive explicit definition of \(\mu_q\) and
  the ranges \(d\geq3\), \(R>0\), and \(q\in(0,1)\); the local
  conditional-uniform identity from accepted `step_003`, after all of
  its hypotheses are proved in this step.
- Technical challenge: Establish exact topological support rather than
  mere containment, and handle the collapsed slice at the null value
  \(z=0\) without treating it as a positive-mass conditional law.
- Intended proof tool or cited result: The continuous-image support
  argument for the full-support compact latent rectangle, coordinatewise
  inequalities, atomlessness of uniform \(Z\), and the current-notation
  conditional-uniform lemma from accepted `step_003`.
- Output target: Exact heteroscedastic support and conditional-law
  certificate.
- Rate objective: R3 preliminary, with the exact cap formula and all
  coordinate dependence retained. The \(q\)-integrability calculation is
  not part of this step.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions from the basic setting: Fix arbitrary
  \(d\geq3\), \(R>0\), and \(q\in(0,1)\). Let
  \(Z\sim\operatorname{Unif}[-R/2,R/2]\) and
  \(U\sim\operatorname{Unif}[-1,1]\) be independent, and define
  \[
  \rho_q(z)=\frac R2\left(\frac{2|z|}{R}\right)^q,
  \qquad
  \beta_q(z)=(z,z^2/R,0,\ldots,0),
  \qquad
  \alpha^{(q)}=(\rho_q(Z)U,\beta_q(Z)).
  \]
  The law of \(\alpha^{(q)}\) is \(\mu_q\). These are static primitive
  construction data, not generated support or conditional-law facts.
- Primitive technical assumptions by stable id: None. In particular,
  neither `assump:averaged-intercept-density` nor
  `assump:random-intercept-witness` is assumed for \(\mu_q\) in this
  step.
- Accepted dependency artifacts:
  `proof_steps/step_003/proof.md`, sketch attempt 1 and unit attempt 1,
  status `COMPLETE`, current SHA-256
  `2302d712770cbe9f62efad7528b6823b2b2e020ea61231f974293769e16e78af`,
  paired with `proof_steps/step_003/review.md`, current SHA-256
  `2b2c8aba90dc461988cd36f1306e04ca2d3af9355aad670163fd7e3d5eeea334`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Derived interface supplied by the accepted dependency:
  Lemma~\ref{lem:step-003-conditional-uniform-kernel}. For an arbitrary
  Borel conditioning law \(\pi\), measurable \(G,\rho\), independent
  \(U\sim\operatorname{Unif}[-1,1]\), and a measurable \(\pi\)-full
  set \(H\) on which \(\rho>0\), the variable
  \(G(\beta)+\rho(\beta)U\) has a jointly measurable regular
  conditional density given \(\beta\), equal on \(H\) to
  \[
  \frac{\mathbf1\{|a-G(\beta)|\leq\rho(\beta)\}}
       {2\rho(\beta)},
  \]
  with exact fiber cap \(1/[2\rho(\beta)]\). The lemma installs a
  genuine fallback density on \(H^c\), so it makes no division by zero
  there.
- Derived invariants supplied by accepted dependencies: None. The
  dependency supplies the preceding conditional-kernel implication;
  exact support, cube support, positive width, and the facts needed to
  instantiate that implication are all proved locally below.
- Local conditional hypotheses: The measurable functions, full-measure
  positive-width set, representation, and independence required by
  Lemma~\ref{lem:step-003-conditional-uniform-kernel} are verified in
  Lemma~\ref{lem:step-004-recovery-independence}. They are not assumed in
  the target-step assembly and do not survive as theorem-facing
  conditions.

No statement from `global_proof.md` is read or used as an assumption,
dependency, cited result, or source of proof authority.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the primitive explicit witness construction with \(d\geq3\), \(R>0\), and \(q\in(0,1)\), the support of \(\mu_q\) is exactly the image of the full-support compact latent rectangle under \(F_q(z,u)=(\rho_q(z)u,z,z^2/R,0,\ldots,0)\), and this image is exactly the displayed heteroscedastic sheet, including the collapsed \(z=0\) fiber and both endpoint fibers. | Proves exact topological support rather than containment. |
| `unit_002` | proposition | Under the same primitive construction and Proposition~\ref{prop:step-004-exact-support}, the sheet lies in \([-R,R]^d\), \(\rho_q(Z)>0\) almost surely, and the claims remain valid for \(d=3\), \(z=0\), and \(z=\pm R/2\). | Proves cube support and discharges every support/positive-width boundary case. |
| `unit_003` | lemma | Under the primitive construction, the first coordinate of \(\beta_q(Z)\) recovers \(Z\), \(\sigma(\beta_q(Z))=\sigma(Z)\), \(U\) is independent of \(\beta_q(Z)\), and explicit measurable \(G_q,\widetilde\rho_q,H_q\) satisfy every local hypothesis of Lemma~\ref{lem:step-003-conditional-uniform-kernel}. | Supplies the exact same-target conditioning bridge and legally discharges the accepted lemma's hypotheses. |
| `unit_004` | proposition | Under the primitive construction, Lemma~\ref{lem:step-004-recovery-independence}, and accepted Lemma~\ref{lem:step-003-conditional-uniform-kernel}, \(\mu_q\) has a jointly measurable conditional-density version whose exact cap satisfies \(K_{\mu_q}(\beta_q(z))=1/[R(2|z|/R)^q]\) for every \(0<|z|\leq R/2\); the \(z=0\) fiber is handled only through the null-fiber fallback. | Proves the exact conditional-law and cap output without performing the step-005 integral. |

Atomic step = no. Exact pushforward support, coordinatewise cube and
positive-width control, recovery/independence, and conditional-kernel
instantiation are distinct nontrivial obligations.

## Cited Result Applications

No external paper result is used.

1. **Accepted dependency: measurable conditional kernel for an affine
   uniform intercept.**
   Lemma~\ref{lem:step-003-conditional-uniform-kernel} has the exact
   statement recorded under `Allowed Assumptions And Dependencies`.
   In the current notation it is instantiated with conditioning variable
   \(\beta_q(Z)\), noise \(U\), location \(G_q=0\), scale
   \(\widetilde\rho_q\), and the full-measure set \(H_q\) defined in
   Lemma~\ref{lem:step-004-recovery-independence}. That local lemma proves
   measurability, the affine representation, independence, full measure,
   and strict positivity before the accepted dependency is invoked.
   Proposition~\ref{prop:step-004-conditional-cap} uses only the
   dependency's conditional-density and exact-cap conclusion. It does
   not use the dependency's reciprocal-width integral or random-intercept
   class proposition.

2. **Continuous-pushforward support criterion.**
   If a probability law \(\lambda\) has topological support \(T\),
   \(F:T\to\mathbb R^d\) is continuous, and \(F(T)\) is closed, then
   \(\operatorname{supp}(F_\#\lambda)=F(T)\). Indeed, the pushforward
   is concentrated on the closed image. Conversely, for
   \(y=F(x)\) and every open neighborhood \(O\ni y\), the relatively
   open set \(F^{-1}(O)\) contains \(x\in T\), hence has positive
   \(\lambda\)-mass by the definition of support. This argument is
   proved and instantiated directly in
   Proposition~\ref{prop:step-004-exact-support}; no unverified theorem
   or stronger open-mapping property is used.

3. **Independence under a measurable map.**
   If \(U\) is independent of \(Z\) and \(h\) is Borel measurable,
   then \(U\) is independent of \(h(Z)\). In the present construction,
   for Borel sets \(A\) and \(C\),
   \[
   \Pr(U\in A,h(Z)\in C)
   =\Pr(U\in A)\Pr(Z\in h^{-1}(C))
   =\Pr(U\in A)\Pr(h(Z)\in C).
   \]
   Lemma~\ref{lem:step-004-recovery-independence} applies this identity
   with \(h=\beta_q\) and also proves the reverse measurable recovery
   \(Z=\operatorname{pr}_1(\beta_q(Z))\).

4. **Local-result application map.**
   Proposition~\ref{prop:step-004-exact-support} produces the exact
   sheet. Proposition~\ref{prop:step-004-cube-width} proves that this
   actual support lies in the coefficient cube and that its only
   zero-width fiber is probabilistically null. Lemma~\ref{lem:step-004-recovery-independence}
   verifies every hypothesis of the accepted conditional-uniform lemma.
   Proposition~\ref{prop:step-004-conditional-cap} then applies that
   accepted lemma to the actual intercept and actual higher-coordinate
   vector. No local result is used before its assumptions are proved.

## Local Derivation

### unit_001: proposition

**Proposition (Exact support of the heteroscedastic sheet).**
\(\label{prop:step-004-exact-support}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), define
\[
T_q=[-R/2,R/2]\times[-1,1]
\]
and
\[
F_q:T_q\longrightarrow\mathbb R^d,
\qquad
F_q(z,u)=(\rho_q(z)u,z,z^2/R,0,\ldots,0).
\tag{1}
\]
When \(d=3\), the trailing list of zeros in (1) is empty. Then
\[
\operatorname{supp}(\mu_q)=F_q(T_q)=S_q,
\tag{2}
\]
where
\[
S_q=\left\{(a_0,z,z^2/R,0,\ldots,0):
|z|\leq R/2,\ |a_0|\leq\rho_q(z)\right\}.
\tag{3}
\]
In particular, (2) includes the collapsed fiber at \(z=0\) and the
fibers at \(z=\pm R/2\).

**Proof / justification.** Since \(q>0\), the map
\(z\mapsto |z|^q\), and hence \(\rho_q\), is continuous at every
\(z\), including \(z=0\). Because \(R>0\), the other coordinates in
(1) are continuous as well. Thus \(F_q\) is continuous on the compact
rectangle \(T_q\), so \(F_q(T_q)\) is compact and therefore closed in
\(\mathbb R^d\).

For every \((z,u)\in T_q\),
\(|\rho_q(z)u|\leq\rho_q(z)\), so (1) lies in the set (3). This proves
\(F_q(T_q)\subseteq S_q\). Conversely, take any point of \(S_q\).
If \(z\neq0\), then \(\rho_q(z)>0\), and
\[
u=\frac{a_0}{\rho_q(z)}\in[-1,1]
\]
satisfies \(F_q(z,u)=(a_0,z,z^2/R,0,\ldots,0)\). If \(z=0\), then
\(q>0\) gives \(\rho_q(0)=0\), and the defining inequality in (3)
forces \(a_0=0\). Choosing, for example, \(u=0\) again gives the
point as an image under \(F_q\). Therefore
\[
F_q(T_q)=S_q.
\tag{4}
\]

The independence and uniform laws of \(Z\) and \(U\) imply that their
joint law is normalized two-dimensional Lebesgue measure on \(T_q\).
Every nonempty relatively open subset of \(T_q\), including one meeting
an edge or corner, has positive joint probability. Hence the support of
\((Z,U)\) is exactly \(T_q\). The random coefficient vector satisfies
\(\alpha^{(q)}=F_q(Z,U)\), so \(\mu_q=(F_q)_\#\mathcal L(Z,U)\).

The pushforward is concentrated on the closed set \(F_q(T_q)\), which
gives \(\operatorname{supp}(\mu_q)\subseteq F_q(T_q)\). For the reverse
inclusion, fix \(y=F_q(z,u)\) and an arbitrary open neighborhood
\(O\subseteq\mathbb R^d\) of \(y\). Continuity makes
\(F_q^{-1}(O)\) a relatively open subset of \(T_q\) containing
\((z,u)\). It therefore has positive joint probability, and
\[
\mu_q(O)=\Pr(F_q(Z,U)\in O)>0.
\]
Thus every point of \(F_q(T_q)\) belongs to the topological support,
proving (2).

At \(z=0\), all \((0,u)\) map to the single point
\((0,0,0,\ldots,0)\). Although the event \(Z=0\) will have probability
zero, every neighborhood of this point has positive pushforward mass by
the preceding preimage argument, so the collapsed point remains in the
topological support. At \(z=\pm R/2\), relative neighborhoods of the
latent boundary likewise have positive mass; hence the full endpoint
fibers, including their \(u=\pm1\) endpoints, are also in the support.
\(\square\)

### unit_002: proposition

**Proposition (Cube support and almost-sure positive width).**
\(\label{prop:step-004-cube-width}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), and using
Proposition~\ref{prop:step-004-exact-support},
\[
S_q\subseteq[-R,R]^d,
\qquad
\mu_q([-R,R]^d)=1,
\qquad
\Pr(\rho_q(Z)>0)=1.
\tag{5}
\]
These conclusions include \(d=3\), the collapsed support point at
\(z=0\), and both endpoint fibers \(z=\pm R/2\).

**Proof / justification.** For \(|z|\leq R/2\), put
\(t=2|z|/R\). The condition \(R>0\) gives \(t\in[0,1]\), and
\(q>0\) gives \(t^q\in[0,1]\). Therefore
\[
0\leq\rho_q(z)=\frac R2t^q\leq\frac R2.
\tag{6}
\]
Every point of \(S_q\) consequently satisfies
\[
|a_0|\leq\rho_q(z)\leq R/2\leq R,
\qquad
|\alpha_1|=|z|\leq R/2\leq R,
\tag{7}
\]
and
\[
|\alpha_2|=\frac{z^2}{R}
\leq\frac{(R/2)^2}{R}=\frac R4\leq R.
\tag{8}
\]
All remaining coordinates are zero. Equations (7)--(8) prove
\(S_q\subseteq[-R,R]^d\). Proposition~\ref{prop:step-004-exact-support}
then proves cube support of the actual law, not merely of an auxiliary
containing set.

Because \(R>0\) and \(q>0\),
\[
\rho_q(z)=0\quad\Longleftrightarrow\quad z=0.
\tag{9}
\]
The uniform law on the nondegenerate interval \([-R/2,R/2]\) has no
atoms, so \(\Pr(Z=0)=0\). Equation (9) proves the almost-sure statement
in (5). This does not remove the origin from the topological support:
that distinct support issue was proved in
Proposition~\ref{prop:step-004-exact-support}.

For \(d=3\), the only coordinates are \(a_0,z,z^2/R\), and the same
bounds (6)--(8) apply with no trailing coordinates. At
\(z=\pm R/2\), one has
\(\rho_q(z)=R/2\) and \(z^2/R=R/4\), so both endpoints satisfy the
cube bounds explicitly. At \(z=0\), all displayed coordinates vanish.
The upper restriction \(q<1\) is part of the binding witness range but
is not needed for (5); its integrability role is reserved for
`step_005`. \(\square\)

### unit_003: lemma

**Lemma (Recovery of the latent coordinate and inherited independence).**
\(\label{lem:step-004-recovery-independence}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), let \(b_1\) denote the first coordinate
of a higher-coefficient vector \(b\in[-R,R]^{d-1}\), and define
\[
G_q(b)=0,
\qquad
\widetilde\rho_q(b)
=\frac R2\left(\frac{2|b_1|}{R}\right)^q,
\qquad
H_q=\{b:0<|b_1|\leq R/2\}.
\tag{10}
\]
Then \(G_q,\widetilde\rho_q\), and \(H_q\) are measurable,
\[
Z=\operatorname{pr}_1(\beta_q(Z)),
\qquad
\sigma(\beta_q(Z))=\sigma(Z),
\tag{11}
\]
\(U\) is independent of \(\beta_q(Z)\),
\(\pi_{\mu_q}(H_q)=1\), \(\widetilde\rho_q>0\) on \(H_q\), and
\[
\rho_q(Z)U
=G_q(\beta_q(Z))+\widetilde\rho_q(\beta_q(Z))U.
\tag{12}
\]
Thus all local hypotheses of accepted
Lemma~\ref{lem:step-003-conditional-uniform-kernel} are discharged.

**Proof / justification.** The condition \(d\geq3\) ensures that the
higher-coordinate vector has a first coordinate. By its primitive
definition,
\[
\beta_q(Z)=(Z,Z^2/R,0,\ldots,0),
\]
so projection onto that first coordinate gives the first identity in
(11) exactly. Since \(\beta_q(Z)\) is a measurable function of \(Z\),
\(\sigma(\beta_q(Z))\subseteq\sigma(Z)\). The recovery identity gives
the reverse inclusion and hence equality in (11). There is no inverse
ambiguity from the quadratic coordinate because the signed linear
coordinate \(Z\) is retained.

For Borel sets \(A\subseteq[-1,1]\) and
\(C\subseteq[-R,R]^{d-1}\), independence of \(U\) and \(Z\) gives
\[
\begin{aligned}
\Pr(U\in A,\beta_q(Z)\in C)
&=\Pr(U\in A,Z\in\beta_q^{-1}(C))\\
&=\Pr(U\in A)\Pr(Z\in\beta_q^{-1}(C))\\
&=\Pr(U\in A)\Pr(\beta_q(Z)\in C).
\end{aligned}
\tag{13}
\]
Thus \(U\) is independent of the actual conditioning vector
\(\beta_q(Z)\).

The functions in (10) are continuous, hence measurable, and \(H_q\)
is Borel. Along the actual higher-coordinate curve,
\[
\widetilde\rho_q(\beta_q(z))
=\frac R2\left(\frac{2|z|}{R}\right)^q
=\rho_q(z).
\tag{14}
\]
Equations (12) and (14) follow. Moreover,
\[
\pi_{\mu_q}(H_q)
=\Pr(0<|Z|\leq R/2)=1
\tag{15}
\]
because \(Z\) is supported on \([-R/2,R/2]\) and has no atom at zero.
For every \(b\in H_q\), \(R>0\), \(q>0\), and \(b_1\neq0\) imply
\(\widetilde\rho_q(b)>0\). Also
\(|G_q(b)|+\widetilde\rho_q(b)\leq R/2\leq R\) on \(H_q\).
Thus (10)--(15) verify the accepted conditional-uniform lemma's
measurability, representation, independence, full-measure,
positive-width, and support hypotheses before that lemma is used.
No reciprocal-width integrability assertion is made. \(\square\)

### unit_004: proposition

**Proposition (Conditional density and exact heteroscedastic cap).**
\(\label{prop:step-004-conditional-cap}\)
Under the primitive explicit witness construction with \(d\geq3\),
\(R>0\), and \(q\in(0,1)\), Lemma~\ref{lem:step-004-recovery-independence},
and accepted Lemma~\ref{lem:step-003-conditional-uniform-kernel}, the
actual intercept \(\alpha_0^{(q)}=\rho_q(Z)U\) has a jointly measurable
regular conditional density given the actual vector \(\beta_q(Z)\).
One valid version satisfies, for every \(0<|z|\leq R/2\),
\[
f_{\mu_q}(a_0\mid\beta_q(z))
=\frac{\mathbf1\{|a_0|\leq\rho_q(z)\}}{2\rho_q(z)},
\tag{16}
\]
and its exact Lebesgue essential-supremum cap is
\[
K_{\mu_q}(\beta_q(z))
=\frac{1}{2\rho_q(z)}
=\frac{1}{R(2|z|/R)^q}.
\tag{17}
\]
At \(z=0\), no formula in (16)--(17) is asserted; the chosen regular
conditional version uses a genuine fallback density on that
\(\pi_{\mu_q}\)-null fiber.

**Proof / justification.** Lemma~\ref{lem:step-004-recovery-independence}
proves that the accepted conditional-uniform lemma applies with
\[
\beta=\beta_q(Z),\quad G=G_q,\quad
\rho=\widetilde\rho_q,\quad H=H_q,
\quad Y=\alpha_0^{(q)}.
\tag{18}
\]
In particular, the noise is independent of the actual conditioning
vector, not merely of an unrecovered latent surrogate. Accepted
Lemma~\ref{lem:step-003-conditional-uniform-kernel} therefore supplies
a jointly measurable regular conditional-density version. Explicitly,
it may be taken as
\[
f_{\mu_q}(a_0\mid b)=
\begin{cases}
\displaystyle
\frac{\mathbf1\{|a_0|\leq\widetilde\rho_q(b)\}}
     {2\widetilde\rho_q(b)}, & b\in H_q,\\[8pt]
\displaystyle
\frac{\mathbf1\{|a_0|\leq R\}}{2R}, & b\notin H_q.
\end{cases}
\tag{19}
\]
The second line is a probability density because \(R>0\). It is used
only to define a measurable version on the null complement, and no
quotient involving \(\widetilde\rho_q=0\) occurs there.

For every \(0<|z|\leq R/2\), \(\beta_q(z)\in H_q\), and (14) turns
the first line of (19) into (16). That density equals the positive
constant \(1/[2\rho_q(z)]\) on an interval of positive Lebesgue length
\(2\rho_q(z)\), and is zero outside it. Its essential supremum is
therefore exactly, not merely at most, \(1/[2\rho_q(z)]\). Finally,
\[
2\rho_q(z)
=R\left(\frac{2|z|}{R}\right)^q,
\]
which proves the exact identity (17).

At \(z=\pm R/2\), the denominator in (17) is \(R\), so the chosen
cap is exactly \(1/R\); the formula remains valid at both support
endpoints. At \(z=0\), the topological support contains the collapsed
point by Proposition~\ref{prop:step-004-exact-support}, but
\(\pi_{\mu_q}(\{\beta_q(0)\})=\Pr(Z=0)=0\). A regular conditional law
is not determined on this null fiber. The fallback in (19) is a legal
version choice and must not be mistaken for a positive-mass
conditional-uniform assertion at zero. In particular, neither (17)
nor a reciprocal-width integral is evaluated there. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-004-exact-support} identifies the actual
topological support of \(\mu_q\) with the full image of \(F_q\) and
proves that this image equals the displayed sheet. Its two-inclusion
argument treats \(z=0\) separately, while its pushforward-neighborhood
argument retains that collapsed point and both endpoint fibers in the
support.

Proposition~\ref{prop:step-004-cube-width} proves coordinate by
coordinate that this exact support lies in \([-R,R]^d\), including
the minimal degree \(d=3\), and proves
\(\rho_q(Z)>0\) almost surely while preserving the null collapsed
support point. Lemma~\ref{lem:step-004-recovery-independence} then
recovers \(Z\) exactly from the first higher coefficient, proves
independence of \(U\) from the actual conditioning vector, and verifies
the measurable positive-width full-measure interface required by the
accepted conditional-uniform lemma.

Only after those hypotheses are discharged,
Proposition~\ref{prop:step-004-conditional-cap} invokes accepted
Lemma~\ref{lem:step-003-conditional-uniform-kernel}. It obtains a
jointly measurable conditional-density version and the exact cap
\[
K_{\mu_q}(\beta_q(z))
=\frac{1}{R(2|z|/R)^q}
\quad\text{for every }0<|z|\leq R/2,
\]
with no division or substantive conditional assertion at the null
fiber \(z=0\). These named results jointly prove every clause of the
binding `step_004` row for all \(d\geq3\), \(R>0\), and
\(q\in(0,1)\). No essential-supremum-over-fibers or
\(q\)-integrability calculation is performed; those quantitative
obligations remain exactly with `step_005`.

## Explicit Rate Audit

- Exposed variables: \(d\geq3\), \(R>0\), \(q\in(0,1)\),
  \(z\in[-R/2,R/2]\), \(\rho_q(z)\), the coordinates of
  \(\alpha^{(q)}\), and the exact conditional cap
  \(K_{\mu_q}(\beta_q(z))\) for \(z\neq0\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,q,z\), the conditioning
  version, a truncation around zero, or any unreported parameter.
- Fixed quantities: Arbitrary \(d,R,q\) in the displayed ranges are
  fixed while support points and conditioning fibers vary. No limit in
  \(q\) or \(z\) is taken.
- Probability mode: Exact deterministic support and coordinate
  identities; an almost-sure positive-width statement under the
  atomless law of \(Z\); and a regular conditional-density identity for
  a specified measurable version on a \(\pi_{\mu_q}\)-full set.
- Horizon mode: Static; there is no time, recursion, stopping rule, or
  asymptotic horizon.
- Norm mode: Euclidean topological support in \(\mathbb R^d\),
  coordinatewise absolute value for cube support, and Lebesgue
  essential supremum in the scalar intercept coordinate.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(d\geq3\), \(R>0\), \(q\in(0,1)\), and the primitive uniform and
  independence construction. There is no cutoff, tolerance, density
  assumption on the higher-coordinate marginal, or reciprocal-width
  integrability premise.
- Term absorption or simplification inequalities: None. The exact
  coordinate bounds are
  \[
  |a_0|\leq R/2,\qquad |z|\leq R/2,\qquad z^2/R\leq R/4,
  \]
  and the exact cap simplification is
  \[
  \frac{1}{2\rho_q(z)}
  =\frac{1}{R(2|z|/R)^q}.
  \]
- Probability conversion: None. The only exceptional fiber is removed
  by the exact identity \(\Pr(Z=0)=0\), not by a confidence or union
  bound.
- Contribution to any Rate Specialization Bridge: This step exports
  the exact pointwise cap formula and exact support certificate to
  `step_005`, `step_006`, and final assembly. It does not integrate the
  cap, remove a cutoff, or derive the singleton \(C\)-bound.
- Baseline-reduction check: The accepted conditional-uniform lemma is
  specialized without loss to the actual pair
  \((\alpha_0^{(q)},\beta_q(Z))\). No inherited affine-latent baseline
  conclusion is altered here; that structural comparison belongs to
  `step_006`.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(Z,U,\rho_q,\beta_q,\alpha^{(q)}\),
  \(\mu_q\), \(K_{\mu_q}\), \(d,R,q\), and the displayed sheet retain
  exactly their meanings from `setting.md`.
- `appendix-local`: \(F_q\) names the continuous latent-to-coefficient
  map demanded by the target row. It is defined directly from the
  setting expressions and carries no extra assumption.
- `proof-local`: \(T_q\) abbreviates the setting-defined latent
  rectangle, and \(S_q\) abbreviates the displayed sheet. Neither is a
  new theorem-facing object or condition.
- `proof-local`: \(G_q,\widetilde\rho_q,H_q\) are the translated
  current-notation objects used only to instantiate accepted
  Lemma~\ref{lem:step-003-conditional-uniform-kernel}. Their
  measurability, full-measure, positivity, support, representation, and
  independence properties are proved by
  Lemma~\ref{lem:step-004-recovery-independence}; none is assumed.
- `proof-local`: The projection \(\operatorname{pr}_1\) is used only
  to express the exact identity recovering \(Z\). The variables
  \(a_0,b,b_1,t,A,C,O\) are scoped dummy coordinates, sets, or
  abbreviations inside their displayed derivations.
- `proof-local`: The fallback density
  \(\mathbf1\{|a_0|\leq R\}/(2R)\) is inherited from the construction
  in the accepted conditional-uniform lemma and is used only on the
  null complement of \(H_q\). Its value has no effect on any target
  almost-everywhere identity.
- `public-facing`: No helper constant or event is exported. The minimal
  downstream interfaces are exact sheet support, cube support,
  almost-sure positive width, recovery of \(Z\), and the cap formula
  (17).
- Constant provenance: \(R\) and \(q\) are primitive setting
  parameters; \(R/2\), \(R/4\), and the coefficient one in (17) are
  obtained by exact algebra. No free constant, radius, margin,
  threshold, or finite bound is introduced.
- Assumption provenance: The laws of \(Z,U\), their independence, and
  the formulas defining the coefficient vector are primitive. Exact
  support, cube support, positive width, latent recovery, independence
  from the actual higher-coordinate vector, the full-measure valid-fiber
  set, the conditional density, and the cap are all proved in this
  step. No generated support or conditional-law condition is promoted
  to a primitive assumption.
- Null-fiber scope: The point \(z=0\) belongs to exact topological
  support but has zero \(Z\)-probability. Conditional-density versions
  are arbitrary there; the selected fallback prevents division by zero
  and is not exported as a physical conditional law at that fiber.
- Endpoint scope: Both \(z=\pm R/2\) and \(|a_0|=R/2\) occur in the
  topological support. The cube bounds and cap formula remain exact at
  those endpoints.
- Dimension scope: For \(d=3\), all trailing zero lists are empty. For
  every \(d>3\), the remaining \(d-3\) coefficient coordinates vanish.
- Integrability boundary: This artifact does not compute
  \(\int K_{\mu_q}\,d\pi_{\mu_q}\), prove essential unboundedness, or
  use \(q<1\) to evaluate a singular integral. Those are binding
  `step_005` obligations.
