# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1

## Target Step Claim

- Intended claim: Construct measurable versions of the two random slice caps,
  prove a.s. equality with the stated conditional \(L^\infty\) norms and
  \(Q_y(A)\leq K(y)\lambda(A)\) for every Borel pivot set, and prove all
  chart root-hitting events are Borel for arbitrary interval endpoint
  conventions.
- Depends on: None.
- Assumptions used: assump:compact-parameter-domain;
  assump:indexed-regime; assump:compact-cube-support;
  assump:mean-endpoint-conditional-caps.
- Technical challenge: Essential suprema of nonunique conditional-density
  versions must be measurable, and conditioning-dependent fiber images must
  enter a legal disintegration.
- Intended proof tool or cited result: Current-notation measurable
  Radon--Nikodym theorem for kernels, rational-interval cap formula plus
  Lebesgue differentiation, sigma-compact exhaustion of intervals, and
  compact projection of compact zero sets.
- Output target: Version-independent measurable cap and Borel event-fiber
  interface.
- Rate objective: Preserve exactly the primitive mean caps, with no a.s. cap
  or hidden version dependence.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:compact-parameter-domain}: \(\Theta\) is compact,
    so every source interval and each of its three chart pieces is bounded.
  - Assumption~\ref{assump:indexed-regime}: \(d\geq 1\), \(R\geq 1\), and
    finite \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) are fixed in the order
    specified in the setting.
  - Assumption~\ref{assump:compact-cube-support}: \(\mu([-R,R]^d)=1\) and
    \(\phi_\alpha\) is the setting's monic polynomial.
  - Assumption~\ref{assump:mean-endpoint-conditional-caps}: each of the two
    endpoint regular conditional laws is Lebesgue absolutely continuous
    almost surely, and its conditional density cap has mean at most the
    corresponding \(\bar\kappa_i\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts: None.

For \(d\geq2\), define the two pivot-conditioning pairs separately by
\[
 (X_0,Y_0):=(\alpha_0,\alpha_{1:d-1}),
 \qquad
 (X_\infty,Y_\infty):=(\alpha_{d-1},\alpha_{0:d-2}),
\]
let \(\nu_0,\nu_\infty\) be the respective laws of \(Y_0,Y_\infty\), and
fix separate regular conditional kernels
\[
 Q^0_y(\,\cdot\,)=\mu(X_0\in\cdot\mid Y_0=y),
 \qquad
 Q^\infty_y(\,\cdot\,)=\mu(X_\infty\in\cdot\mid Y_\infty=y).
\]
No comparison or common refinement of these two conditioning kernels is
used. For \(d=1\), \(\mathbb R^0=\{\varnothing\}\), set
\(Y_0=Y_\infty=\varnothing\), \(X_0=X_\infty=\alpha_0\), and use the one
kernel
\[
 Q^0_\varnothing=Q^\infty_\varnothing
 :=\mathcal L_\mu(\alpha_0).
\]
Thus the two interfaces coincide exactly, and only, in degree one.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, the inner and outer kernels defined above have separately measurable, kernel-version-independent a.s. cap representatives \(\widehat K_0\) and \(\widehat K_\infty\). On one full-measure set for each kernel, the representative equals the conditional density \(L^\infty\)-norm, is finite, dominates that kernel on every Borel pivot set, and the kernel is supported on \([-R,R]\). Moreover \(\widehat K_i(Y_i)=K_i^\mu\) a.s. and has exactly the primitive mean bound. At \(d=1\), the two representatives are the same sole-coefficient cap. | Resolves measurability, density-version ambiguity, kernel-version ambiguity, Borel-set domination, support, null fibers, and the exact mean-cap interface. |
| unit_002 | lemma | Under Assumptions~\ref{assump:compact-parameter-domain}, \ref{assump:indexed-regime}, and \ref{assump:compact-cube-support}, for every bounded interval \(J\) with any endpoint convention, including the empty set or a singleton, \(H_{d,J}\) is Borel. Its inner and outer coordinate sections are Borel and equal the cube-intersected images under \(s_0\) and \(s_\infty\) on their respective charts. | Supplies Borel chart events and exact event sections without projecting an arbitrary Borel set. |
| unit_003 | proposition | Under Assumptions~\ref{assump:compact-parameter-domain}, \ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and \ref{assump:mean-endpoint-conditional-caps}, and under Lemmas~\ref{lem:step-003-kernel-caps} and \ref{lem:step-003-borel-sections}, each chart event admits its legal matching-kernel disintegration, and on a full conditioning-measure set its section probability is dominated by the matching measurable cap times the Lebesgue measure of the exact pivot image. The inner and outer disintegrations remain separate for \(d\geq2\) and use the one common unconditional kernel at \(d=1\). | Assembles the version-independent measurable caps and Borel sections into the exact interface consumed by the next proof step. |

Atomic step = no. Cap measurability/version independence, event Borelness and
section identification, and parameterized disintegration are independent
nontrivial claims and are therefore exposed as three local units.

## Cited Result Applications

No external paper result is used as proof authority. The following standard
measure-theory and topology facts are restated and instantiated in current
notation.

1. **Kernel Radon--Nikodym and regular conditional probability.** Let
   \(S\) be a standard Borel space, \(\nu\) a probability on \(S\), and
   \(Q_y\) a probability kernel from \(S\) to \(\mathbb R\). If
   \(Q_y\ll\lambda\) for \(\nu\)-almost every \(y\), then the measure
   \(\gamma(dy,dx)=\nu(dy)Q_y(dx)\) is absolutely continuous with respect
   to \(\nu\otimes\lambda\). The Radon--Nikodym derivative can be chosen
   jointly measurable and gives a density of \(Q_y\) for
   \(\nu\)-almost every \(y\). A regular conditional kernel also satisfies
   the disintegration identity first on rectangles and, by a pi-lambda
   argument, on every Borel subset of the pivot-conditioning product
   \(\mathbb R\times S\) (equivalently, after swapping coordinates, of
   \(S\times\mathbb R\)).

   Here \(S=\mathbb R^{d-1}\) separately for \(Y_0\) and \(Y_\infty\)
   when \(d\geq2\), and \(S=\mathbb R^0\) when \(d=1\). Standard Borelness
   is immediate. The required a.s. absolute continuity is exactly
   Assumption~\ref{assump:mean-endpoint-conditional-caps}. The construction
   and the extension from rectangles are written out in
   Lemma~\ref{lem:step-003-kernel-caps} and
   Proposition~\ref{prop:step-003-disintegration}.

2. **One-dimensional Lebesgue differentiation.** If
   \(q\in L^1(\mathbb R,\lambda)\), then for \(\lambda\)-almost every
   \(x\),
   \[
   \lim_{r\downarrow0}\frac{1}{2r}
      \int_{x-r}^{x+r}|q(t)-q(x)|\,dt=0.
   \]
   For a conditional density \(q_y\), this identifies its essential
   supremum with the supremum of its averages over bounded rational-endpoint
   intervals. The upper inequality follows by integration; the converse,
   including the value \(+\infty\), is proved explicitly in
   Lemma~\ref{lem:step-003-kernel-caps}. Each \(q_y\) is an
   \(L^1\)-probability density, so the hypothesis is discharged fiberwise.

3. **Compact zero-set projection.** A closed subset of a compact space is
   compact, and the continuous image of a compact set is compact. Every
   bounded interval in \(\mathbb R\), under any open, closed, or half-open
   endpoint convention, is a countable increasing union of compact sets.
   These facts are applied to the continuous map
   \((\alpha,\theta)\mapsto\phi_\alpha(\theta)\) on
   \([-R,R]^d\times K_n\). Compactness of the coefficient factor follows
   from Assumptions~\ref{assump:indexed-regime} and
   \ref{assump:compact-cube-support}; boundedness of each chart interval
   follows from Assumption~\ref{assump:compact-parameter-domain}. The full
   construction appears in Lemma~\ref{lem:step-003-borel-sections}.

4. **Applications of local results.**
   Lemma~\ref{lem:step-003-kernel-caps} supplies exactly the measurable cap,
   full-measure domination set, exact primitive expectation, and conditional
   support used in Proposition~\ref{prop:step-003-disintegration}.
   Lemma~\ref{lem:step-003-borel-sections} supplies exactly the Borel product
   event and its pivot section used there. Neither local lemma supplies a
   probability bound for a chart; the proposition exports only the legal
   conditional interface required by the target step.

## Local Derivation

### unit_001: lemma

**Lemma (Measurable endpoint-kernel caps).**
\(\label{lem:step-003-kernel-caps}\)

**Statement.** Under Assumptions~\ref{assump:indexed-regime},
\ref{assump:compact-cube-support}, and
\ref{assump:mean-endpoint-conditional-caps}, let \(\mu\in
\mathcal D_{d,R,\eta}\), and define the two pivot-conditioning pairs and
kernels as above. There are extended nonnegative measurable functions
\(\widehat K_0\) on the state space of \(Y_0\) and
\(\widehat K_\infty\) on the state space of \(Y_\infty\) such that, for
each \(i\in\{0,\infty\}\), there is a \(\nu_i\)-full measurable set
\(G_i\) on which \(y\in[-R,R]^{d-1}\) (with the unique point of
\(\mathbb R^0\) understood when \(d=1\)) and
\[
 Q^i_y\ll\lambda,\qquad Q^i_y([-R,R])=1,\qquad
 \widehat K_i(y)=\left\|\frac{dQ^i_y}{d\lambda}\right\|_{L^\infty(\mathbb R)}
 <\infty,
\]
and, simultaneously for every Borel \(A\subseteq\mathbb R\),
\[
 Q^i_y(A)\leq \widehat K_i(y)\lambda(A).
 \tag{1}
\]
The random variables satisfy
\[
 \widehat K_0(Y_0)=K_0^\mu,\qquad
 \widehat K_\infty(Y_\infty)=K_\infty^\mu
 \quad\mu\text{-a.s.},
 \tag{2}
\]
and hence
\[
 \mathbb E_\mu\widehat K_0(Y_0)\leq\bar\kappa_0,
 \qquad
 \mathbb E_\mu\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty.
 \tag{3}
\]
Each \(\widehat K_i\) is unchanged \(\nu_i\)-a.s. if the corresponding
regular conditional kernel or density version is changed. When \(d=1\),
\(Q^0=Q^\infty\) and \(\widehat K_0=\widehat K_\infty\) are the same
unconditional sole-coefficient kernel and cap.

**Proof / justification.** Fix first one of the two indices \(i\), retaining
its own conditioning marginal \(\nu_i\) and kernel \(Q^i\). The proof below
is applied separately to \(i=0\) and \(i=\infty\); it does not condition one
kernel on the coordinates of the other.

By the a.s. conditional absolute-continuity clause in
Assumption~\ref{assump:mean-endpoint-conditional-caps},
\(Q^i_y\ll\lambda\) outside a \(\nu_i\)-null set. Define on the product
conditioning-pivot space
\[
 \gamma_i(C):=\int Q^i_y(C_y)\,\nu_i(dy),
 \qquad C_y:=\{x:(y,x)\in C\}.
\]
If \((\nu_i\otimes\lambda)(C)=0\), Tonelli's theorem gives
\(\lambda(C_y)=0\) for \(\nu_i\)-almost every \(y\). Conditional absolute
continuity then gives \(Q^i_y(C_y)=0\) there, so \(\gamma_i(C)=0\).
Thus \(\gamma_i\ll\nu_i\otimes\lambda\). The Radon--Nikodym theorem gives
a nonnegative jointly measurable \(q_i(y,x)\) with
\[
 \gamma_i(dy,dx)=q_i(y,x)\nu_i(dy)\lambda(dx).
\]
For each member \(B\) of a countable pi-system generating
\(\mathcal B(\mathbb R)\), comparison on all rectangles \(D\times B\)
shows
\[
 Q^i_y(B)=\int_B q_i(y,x)\,dx
 \quad\text{for \(\nu_i\)-almost every \(y\)}.
\]
Intersecting the resulting countably many full-measure sets and applying the
uniqueness theorem for finite measures extends this equality to every Borel
\(B\) on one full-measure set. Hence \(q_i(y,\cdot)\) is a density of
\(Q^i_y\) there. This also discharges the measurable kernel
Radon--Nikodym fact in the present notation.

Let
\[
 \mathscr J_{\mathbb Q}:={(a,b):a,b\in\mathbb Q, a<b\}
\]
and define on every conditioning fiber
\[
 \widehat K_i(y):=sup_{J\in\mathscr J_{\mathbb Q}}
                   \frac{Q^i_y(J)}{|J|}\in[0,\infty].
 \tag{4}
\]
For fixed \(J\), the kernel property makes \(y\mapsto Q^i_y(J)\)
measurable. The family in (4) is countable, so \(\widehat K_i\) is
extended-valued measurable on the entire conditioning space, including
fibers on which no density was specified.

We now verify the cap identity without appealing to a jointly measurable
choice of pointwise essential suprema. Fix any fiber on which \(Q^i_y\) has
a density \(q\), and put \(m=\|q\|_{L^\infty(\mathbb R)}\), allowing
\(m=+\infty\). For each \(J\in\mathscr J_{\mathbb Q}\),
\[
 \frac{Q^i_y(J)}{|J|}=\frac{1}{|J|}\int_Jq(x)\,dx\leq m,
\]
so \(\widehat K_i(y)\leq m\). Conversely, let \(a<m\) be finite and
nonnegative. The set \(\{x:q(x)>a\}\) has positive Lebesgue measure. Choose
in it a Lebesgue point \(x\) of \(q\). Some bounded open interval \(L\)
centered at \(x\) then has
\[
 \frac{1}{|L|}\int_Lq(t)\,dt>a.
\]
Approximate the two endpoints of \(L\) by rational numbers. Absolute
continuity of the integral of \(q\in L^1(\mathbb R)\), together with
convergence of interval lengths, preserves this strict inequality for a
nearby \(J\in\mathscr J_{\mathbb Q}\). Thus
\(\widehat K_i(y)>a\). Letting \(a\uparrow m\), and taking arbitrarily
large finite \(a\) when \(m=+\infty\), proves
\[
 \widehat K_i(y)=\|q\|_{L^\infty(\mathbb R)}
 \tag{5}
\]
on every density fiber, including the extended-valued case.

If \(q\) and \(\widetilde q\) are two densities of the same fiber law,
Radon--Nikodym uniqueness makes them equal \(\lambda\)-a.e., so their
\(L^\infty\) norms agree. If \(Q^i\) and \(\widetilde Q^i\) are two regular
conditional kernels for the same pair \((X_i,Y_i)\), conditional-expectation
uniqueness gives \(Q^i_y(J)=\widetilde Q^i_y(J)\) for \(\nu_i\)-almost
every \(y\), for each \(J\in\mathscr J_{\mathbb Q}\). Countability permits
one common full-measure set for all such \(J\), and (4) then gives the same
cap. This proves both density-version and kernel-version independence a.s.

On a density fiber with finite cap, (5) implies
\(q(x)\leq\widehat K_i(y)\) for \(\lambda\)-almost every \(x\). Therefore,
for every Borel \(A\), on the same fiber and without an
\(A\)-dependent exceptional set,
\[
 Q^i_y(A)=\int_Aq(x)\,dx
 \leq\widehat K_i(y)\lambda(A).
\]
The setting's random cap is precisely the essential supremum on the random
density fiber, so (5) proves (2). The exact primitive inequalities in
Assumption~\ref{assump:mean-endpoint-conditional-caps} now give (3), with no
change of constants. Since the right sides of (3) are finite,
\(\widehat K_i(Y_i)<\infty\) almost surely.

It remains to include conditional support in the same full-measure set. From
Assumption~\ref{assump:compact-cube-support},
\[
 0=\mu(X_i\notin[-R,R])
   =\int Q^i_y(\mathbb R\setminus[-R,R])\,\nu_i(dy).
\]
The integrand is nonnegative, hence it vanishes for \(\nu_i\)-almost every
\(y\). Also \(Y_i\) lies in its corresponding \((d-1)\)-dimensional cube
\(\nu_i\)-a.s. Intersect the full-measure sets for the density identity,
finite cap, and support to obtain \(G_i\). This proves all assertions for the
fixed index, and applying the construction independently to \(0\) and
\(\infty\) proves the two-kernel claim for \(d\geq2\).

For \(d=1\), the conditioning marginal is the unit mass on
\(\mathbb R^0=\{\varnothing\}\). The regular conditional law at its sole
point is the unconditional law of \(\alpha_0\). By definition we use that
same law for both endpoint labels, so formula (4) produces one and the same
cap. Equations (1)--(3) then give both setting inequalities for that one cap.
\(\square\)

### unit_002: lemma

**Lemma (Borel root events and exact chart sections).**
\(\label{lem:step-003-borel-sections}\)

**Statement.** Under Assumptions~\ref{assump:compact-parameter-domain},
\ref{assump:indexed-regime}, and
\ref{assump:compact-cube-support}, let \(J\subseteq\Theta\) be any interval
with any endpoint convention; \(J\) may be empty or a singleton. Then
\[
 H_{d,J}=\{\alpha\in[-R,R]^d:\exists\theta\in J,
                    \ \phi_\alpha(\theta)=0\}
\]
is Borel. For \(d\geq2\), define the coordinate reconstruction maps
\[
 T_0(x,y):=(x,y_1,\ldots,y_{d-1}),
 \qquad
 T_\infty(x,y):=(y_0,\ldots,y_{d-2},x),
\]
and \(E^i_J:=T_i^{-1}(H_{d,J})\). For \(d=1\), define both maps by
\(T_0(x,\varnothing)=T_\infty(x,\varnothing)=(x)\). Each \(E^i_J\) is
Borel, every section \((E^i_J)_y:=\{x:(x,y)\in E^i_J\}\) is Borel, and the
following exact identities hold:
\[
 (E^0_J)_y=
 \begin{cases}
 [-R,R]\cap s_0(J;y),&y\in[-R,R]^{d-1},\\
 \varnothing,&y\notin[-R,R]^{d-1},
 \end{cases}
 \quad\text{if }J\subseteq[-1,1],
 \tag{6}
\]
and
\[
 (E^\infty_J)_y=
 \begin{cases}
 [-R,R]\cap s_\infty(J;y),&y\in[-R,R]^{d-1},\\
 \varnothing,&y\notin[-R,R]^{d-1},
 \end{cases}
 \quad\text{if }J\subseteq(1,\infty)
 \text{ or }J\subseteq(-\infty,-1).
 \tag{7}
\]
For \(d=1\), the right sides of (6) and (7) both mean
\([-R,R]\cap(-J)\), since \(s_0(\theta)=s_\infty(\theta)=-\theta\).

**Proof / justification.** Compactness of \(\Theta\) makes \(J\) bounded.
The empty interval is the union of the constant sequence of empty compact
sets, and a singleton is itself compact. Otherwise write
\(a=\inf J<b=\sup J\). For each sufficiently large \(n\), let
\[
 a_n:=\begin{cases}a,&a\in J,\\a+1/n,&a\notin J,\end{cases}
 \qquad
 b_n:=\begin{cases}b,&b\in J,\\b-1/n,&b\notin J,\end{cases}
\]
and take \(K_n=[a_n,b_n]\) when \(a_n\leq b_n\), and \(K_n=\varnothing\)
otherwise. Reindexing if necessary, \((K_n)\) is increasing, every \(K_n\)
is compact and contained in \(J\), and \(J=\bigcup_nK_n\). This explicitly
covers open, closed, and either half-open convention.

For every \(n\), set
\[
 Z_n:=\{(\alpha,\theta)\in[-R,R]^d\times K_n:
                         \phi_\alpha(\theta)=0\}.
\]
The polynomial evaluation map is continuous in \((\alpha,\theta)\).
Therefore \(Z_n\) is closed in the compact space
\([-R,R]^d\times K_n\), hence compact. Its coefficient projection is
compact, and therefore Borel. Exact existential quantification over the
compact exhaustion gives
\[
 H_{d,J}=\bigcup_{n=1}^\infty \operatorname{proj}_\alpha Z_n,
 \tag{8}
\]
so \(H_{d,J}\) is Borel. Notice that (8) projects compact sets before taking
the countable union; it does not invoke the false general assertion that the
projection of an arbitrary Borel set must be Borel.

The maps \(T_0,T_\infty\) are continuous coordinate permutations, so the
sets \(E^0_J,E^\infty_J\) are Borel. Sections of product Borel sets are
Borel: the class of product sets with Borel sections contains all rectangles
and is closed under complements and countable unions. This verifies the
measurability part of the section claim.

For an inner-chart interval and a support-compatible \(y\),
\[
 \phi_{T_0(x,y)}(\theta)=0
 \quad\Longleftrightarrow\quad
 x=-\theta^d-\sum_{j=1}^{d-1}y_j\theta^j=s_0(\theta;y).
\]
Imposing \(T_0(x,y)\in[-R,R]^d\) gives (6); if \(y\) is outside its cube,
the section is empty. For either outer chart, \(\theta\neq0\), and
\[
 \begin{aligned}
 \phi_{T_\infty(x,y)}(\theta)=0
 &\quad\Longleftrightarrow\quad
 \theta+\sum_{j=0}^{d-2}y_j\theta^{j-d+1}+x=0\\
 &\quad\Longleftrightarrow\quad x=s_\infty(\theta;y),
 \end{aligned}
\]
where the first equivalence divides only by the nonzero
\(\theta^{d-1}\). This proves (7) on both signs separately. For \(d=1\),
both sums are empty and both reconstructions are \((x)\), giving the stated
common section.

The argument uses only the zero-set identity, so tangencies and multiple
roots require no separate case. Empty and singleton \(J\) are already
covered by (8), and inclusion or exclusion of any interval endpoint is
preserved by the chosen compact exhaustion. In particular, \(\pm1\) are
included only when they belong to the inner piece; the outer formulas are
used only on the two open outer charts. \(\square\)

### unit_003: proposition

**Proposition (Matching-kernel Borel disintegration interface).**
\(\label{prop:step-003-disintegration}\)

**Statement.** Under Assumptions~\ref{assump:compact-parameter-domain},
\ref{assump:indexed-regime}, \ref{assump:compact-cube-support}, and
\ref{assump:mean-endpoint-conditional-caps}, and under
Lemmas~\ref{lem:step-003-kernel-caps} and
\ref{lem:step-003-borel-sections}, the following statements hold.

For every inner-chart interval \(J\subseteq\Theta\cap[-1,1]\),
\[
 \mu(H_{d,J})
 =\int Q^0_y((E^0_J)_y)\,\nu_0(dy),
 \tag{9}
\]
the integrand is measurable, and for every \(y\in G_0\),
\[
 Q^0_y((E^0_J)_y)
 =Q^0_y(s_0(J;y))
 \leq\widehat K_0(y)\lambda(s_0(J;y)).
 \tag{10}
\]
For every positive- or negative-outer-chart interval
\(J\subseteq\Theta\cap(1,\infty)\) or
\(J\subseteq\Theta\cap(-\infty,-1)\), respectively,
\[
 \mu(H_{d,J})
 =\int Q^\infty_y((E^\infty_J)_y)\,\nu_\infty(dy),
 \tag{11}
\]
the integrand is measurable, and for every \(y\in G_\infty\),
\[
 Q^\infty_y((E^\infty_J)_y)
 =Q^\infty_y(s_\infty(J;y))
 \leq\widehat K_\infty(y)\lambda(s_\infty(J;y)).
 \tag{12}
\]
For \(d\geq2\), (9)--(10) and (11)--(12) use their two distinct
conditioning kernels. For \(d=1\), they use the one unconditional kernel and
the one cap identified in Lemma~\ref{lem:step-003-kernel-caps}.

**Proof / justification.** We first discharge the parameterized-measurability
fact. For a probability kernel \(Q_y\) from a measurable space \(S\) to
\(\mathbb R\), let \(\mathcal M\) be the class of Borel sets
\(E\subseteq\mathbb R\times S\) for which
\(y\mapsto Q_y(E_y)\) is measurable. The class \(\mathcal M\) contains
the whole product and rectangles because
\[
 Q_y((A\times B)_y)=\mathbf 1_B(y)Q_y(A),
\]
It is closed under complements, since
\(Q_y((E^c)_y)=1-Q_y(E_y)\), and under countable disjoint unions, since
countable additivity gives
\(Q_y((\bigcup_nE_n)_y)=\sum_nQ_y((E_n)_y)\). Thus \(\mathcal M\) is a
lambda-system containing the pi-system of measurable rectangles. The
pi-lambda theorem gives
\(\mathcal M=\mathcal B(\mathbb R)\otimes\mathcal B(S)\).

If \(Q_y\) is a regular conditional law of \(X\) given \(Y\), the identity
\[
 \mathbb P((X,Y)\in A\times B)
 =\int_BQ_y(A)\,\nu(dy)
\]
holds for rectangles by definition. The sets on which the corresponding
integral identity holds form another lambda-system: complements follow by
subtracting from one, and disjoint unions follow from countable additivity
and monotone convergence. The pi-lambda theorem therefore extends the
identity to every Borel \(E\subseteq\mathbb R\times S\):
\[
 \mathbb P((X,Y)\in E)=\int Q_y(E_y)\,\nu(dy).
 \tag{13}
\]

Apply (13) first to the inner pair \((X_0,Y_0)\) and the Borel set
\(E^0_J\) from Lemma~\ref{lem:step-003-borel-sections}. Since
\(T_0(X_0,Y_0)=\alpha\), this gives (9). For \(y\in G_0\), that lemma gives
\((E^0_J)_y=[-R,R]\cap s_0(J;y)\), while
Lemma~\ref{lem:step-003-kernel-caps} gives
\(Q^0_y([-R,R])=1\). Thus intersecting the image with \([-R,R]\) does not
change its conditional probability. The continuous image of an interval is
an interval, hence Borel, so applying the simultaneous Borel-set domination
(1) to \(s_0(J;y)\) proves (10).

Apply (13) separately to the outer pair \((X_\infty,Y_\infty)\) and
\(E^\infty_J\). Since \(T_\infty(X_\infty,Y_\infty)=\alpha\), this gives
(11). The exact outer section (7), the support conclusion
\(Q^\infty_y([-R,R])=1\), and the domination (1), all on
\(G_\infty\), give (12). No inner conditional law is used in this outer
calculation and no outer conditional law is used in the inner calculation.

When \(d=1\), both coordinate pairs are \((\alpha_0,\varnothing)\), both
reconstruction maps are the same map, and their conditioning marginal is the
unit mass at \(\varnothing\). The single kernel and cap fixed in
Lemma~\ref{lem:step-003-kernel-caps} therefore make (9)--(12) the appropriate
unconditional identities, rather than two independent conditional sources.
Empty and singleton chart pieces cause no exception: their product events
are Borel, their exact images are empty or singletons, and absolute
continuity makes the conditional probabilities of singleton images zero on
the stated full-measure sets. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-003-kernel-caps} constructs, directly from the two
primitive endpoint kernels, the two measurable cap representatives required
by the sketch row. Equations (2)--(3) prove a.s. equality to the setting's
conditional \(L^\infty\) caps and preserve the two primitive mean bounds
exactly. Equation (1) gives simultaneous domination of every Borel pivot set
on one full-measure set for each kernel. Its proof also shows a.s. invariance
under both density-version and regular-conditional-kernel changes and makes
all conditioning-null fibers harmless.

Lemma~\ref{lem:step-003-borel-sections} proves Borelness of every bounded root
event by compact exhaustion before projection. It covers every endpoint
convention, empty and singleton pieces, and gives the exact inner and outer
sections (6)--(7). Proposition~\ref{prop:step-003-disintegration} combines
those two lemmas to prove that the resulting conditioning-dependent sections
are measurable kernel inputs and satisfy the legal disintegrations (9) and
(11), with the exact fiberwise cap interfaces (10) and (12).

For \(d\geq2\), the inner conclusion uses only
\(Q^0_y=\mathcal L(\alpha_0\mid\alpha_{1:d-1}=y)\), while both outer
conclusions use only
\(Q^\infty_y=\mathcal L(\alpha_{d-1}\mid\alpha_{0:d-2}=y)\). For \(d=1\),
the proof identifies them as the one unconditional law of \(\alpha_0\), as
required by the setting. These named results therefore establish exactly the
accepted step_003 claim, with no dependency artifact and without using the
global diagnostic as evidence.

## Explicit Rate Audit

- Exposed variables: \(\bar\kappa_0\) and \(\bar\kappa_\infty\) appear only
  through the exact bounds
  \(\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0\) and
  \(\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty\). The indices
  \(d,R\) determine the two conditioning interfaces and the support cube but
  acquire no extra multiplicative factor in this step.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\mu\), conditioning values,
  kernel versions, density versions, chart intervals, or \(\Theta\).
- Fixed quantities: \(\eta\) and \(\Theta\) are fixed as in the setting; the
  claims hold pointwise for every admitted \(d,R,\mu\).
- Probability mode: a.s. identities under the relevant conditioning
  marginal, followed by exact deterministic expectation inequalities. There
  is no confidence parameter or theorem-level exceptional event.
- Horizon mode: static and uniform over every bounded chart interval; no
  iterative, limiting, or stopping-time scope is present.
- Norm mode: conditional \(L^\infty(\mathbb R,\lambda)\) density norm and
  one-dimensional Lebesgue measure of Borel pivot sets.
- Admissibility conditions and auxiliary tolerances: exactly the four listed
  setting assumptions; no auxiliary tolerance or a.s. uniform cap is added.
- Term absorption or simplification inequalities: None. The two primitive
  mean caps are preserved separately and exactly.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact two mean-cap interfaces to step_004; it performs no public-rate
  simplification.
- Baseline-reduction check: at \(d=1\), both conditioning tuples reduce to
  \(\mathbb R^0\), the two kernels and caps coincide with the unconditional
  sole-coefficient density and its exact \(L^\infty\) norm, and no remainder
  or extra constant appears.

## Blockers

None

## Notation And Assumption Notes

- \((X_0,Y_0)\), \((X_\infty,Y_\infty)\), their marginals \(\nu_i\), and
  their kernels \(Q^i\) are `appendix-local` translations of the two regular
  conditional laws already specified in
  Assumption~\ref{assump:mean-endpoint-conditional-caps}. They are not new
  assumptions. For \(d\geq2\) the two translations remain separate; for
  \(d=1\) they are explicitly identified on \(\mathbb R^0\).
- \(\widehat K_0,\widehat K_\infty\) are `appendix-local` derived objects
  proved by Lemma~\ref{lem:step-003-kernel-caps}. They are the minimal
  downstream interface: each equals the corresponding setting cap a.s. and
  introduces no new constant. They need not appear in the public main
  theorem.
- The product measures \(\gamma_i\), the rational family
  \(\mathscr J_{\mathbb Q}\), the jointly measurable representatives
  \(q_i\), and the full-measure sets \(G_i\) are `proof-local` objects.
  Their provenance is the kernel Radon--Nikodym construction and the
  rational-interval formula proved in
  Lemma~\ref{lem:step-003-kernel-caps}. No value assigned on a
  \(\nu_i\)-null fiber is consumed as a theorem premise. The density
  \(q_i\) is relative to \(\nu_i\otimes\lambda\), not an ambient
  Lebesgue density of \(\mu\).
- \(T_i,E^i_J\), and the section notation \((E^i_J)_y\) are
  `appendix-local` coordinate translations proved in
  Lemma~\ref{lem:step-003-borel-sections}. The events are derived objects,
  not primitive event-membership assumptions.
- The compact-exhaustion objects \(a_n,b_n,K_n,Z_n\), the one-fiber
  witnesses \(m,a,L\), and the pi-lambda class \(\mathcal M\) are
  `proof-local`. They are used only inside the named local results and are
  not exported to downstream steps.
- No new radius, threshold, rate, margin, admissibility parameter, finite-tube
  quantity, or hidden bounded constant is introduced. The only bounds are
  the setting-defined finite \(\bar\kappa_i\), and their exact use is proved
  in (3).
- Conditional absolute continuity and cube support are primitive conditions.
  Measurable caps, finite-cap full-measure sets, conditional pivot support,
  Borel root events, exact chart sections, and legal disintegration are all
  derived in this step. There is no local conditional hypothesis and no
  accepted dependency object.
- The paired `global_proof.md` and `global_proof_review.md` were read only
  after confirming `Global-Proof Review Status = ACCEPTED`. The diagnostic
  suggested the rational-interval cap and compact-exhaustion organization.
  Every such fact was independently derived above; the global proof was not
  used as evidence, a cited result, an assumption source, or authority to
  change the target claim.
