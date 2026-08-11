# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_003` | For every interval \(I\), prove the central root-set coefficient-volume inequality given in the `step_003` witness, with tangent, multiple, endpoint, and identically-zero cases handled measure-theoretically. | `step_002` | Primitive: `assump:parameter-regime`, `assump:anchored-unit-range`; derived: `step_002` \(C^1\) normalized curve and nonvanishing | Compute the projection/coarea Jacobian on the incidence hypersurface and ensure union volume is controlled without simple roots or transversality. | Standard Euclidean area/coarea formula in current notation; Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9, as source-convention and integrand cross-check. | Central incidence projection interface. | R2: exact local sweep integrand, before quantitative section bounding. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: \(N\geq1\), \(R>0\), and
    \(\Theta=[c-h,c+h]\) is a nondegenerate compact interval. This supplies
    the Euclidean coefficient dimension and the coefficient cube
    \([-R,R]^N\).
  - `assump:anchored-unit-range`: \(F_1\equiv1\). This is used directly to
    handle \(N=1\) and to verify that coefficient vectors whose combination
    vanishes identically lie in a proper linear subspace.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-002-projective-speed} from accepted
    `step_002` proves on all of \(\Theta\) that
    \[
    F_1=1,\qquad \lVert F\rVert_2\geq1,
    \qquad
    F\in C^1(\Theta;\mathbb R^N),
    \qquad
    \gamma_F=\frac{F}{\lVert F\rVert_2}\in
    C^1(\Theta;\mathbb R^N),
    \qquad \lVert\gamma_F\rVert_2=1.
    \]
    In particular, \(\lVert F\rVert_2\in C^1(\Theta)\), because the proved
    lower bound keeps the Euclidean norm away from its only nonsmooth point.
    Its stronger quantitative conclusion
    \(\Gamma_{\mathrm{proj}}(F)\leq\sqrt N\,D_*/h\) is not needed for the
    present geometric inequality. The accepted dependency artifacts are
    `perspective_1/idea_1/proof_steps/step_002/proof.md`, SHA-256
    `49765e6c5b90d32376cd6d897ee38978833783a445f579e55569b01369f4db1a`,
    and `perspective_1/idea_1/proof_steps/step_002/review.md`, status
    `ACCEPTED`, SHA-256
    `77b678ece545313b11204c39471dfc90511c167150b440fa457d550e849c8568`.
- Local conditional hypotheses: None. A fixed interval \(I\subseteq\Theta\)
  and its interior are quantified proof variables, not theorem-facing
  conditions.

No density cap, independence condition, simple-root condition,
transversality condition, or positive lower bound on
\(\lvert\langle a,\gamma_F'(\theta)\rangle\rvert\) is assumed. Ball's cube
section theorem and the probability conversion belong to `step_004` and are
not used here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-regime} and accepted Proposition~\ref{prop:step-002-projective-speed}, if \(J\subseteq\operatorname{int}(\Theta)\) is open, then the central incidence set over \(J\times(-R,R)^N\) is a regular \(C^1\) hypersurface and its coefficient-projection and parameter-coordinate tangential Jacobians are respectively \(\lvert u\rvert/\sqrt{1+u^2}\) and \(1/\sqrt{1+u^2}\), where \(u=\langle a,\gamma_F'(\theta)\rangle\). | Supplies the exact current-notation Jacobian product used by area and coarea, including \(u=0\). |
| `unit_002` | lemma | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range} and accepted Proposition~\ref{prop:step-002-projective-speed}, for every interval \(I\subseteq\Theta\), normalization preserves its root event; endpoint roots and identically-zero combinations lie in proper coefficient subspaces; stationary normalized subintervals sweep one null hyperplane; and for \(N=1\) both sides of the target inequality are zero. | Removes every boundary or degenerate class without a transversality or simple-root premise. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range}, accepted Proposition~\ref{prop:step-002-projective-speed}, and Lemmas~\ref{lem:step-003-incidence-jacobians} and \ref{lem:step-003-null-degeneracies}, every interval \(I\subseteq\Theta\) satisfies the exact central root-set coefficient-volume inequality from the accepted witness; tangent critical values are coefficient-null, distinct root locations are counted by projection multiplicity, and identically-zero fibers are allowed to have infinite counting multiplicity on their null subspace. | Proves and exports the exact `step_003` central incidence projection interface. |

Atomic step = no. The incidence Jacobian computation, the null-degeneracy
analysis, and the multiplicity-based area/coarea assembly are independent
nontrivial obligations and are exposed separately.

## Cited Result Applications

1. **Proposition~\ref{prop:step-002-projective-speed} (accepted dependency:
   anchored projective-speed certificate).** Under
   Assumptions~\ref{assump:parameter-regime} and
   \ref{assump:anchored-unit-range} and its accepted dependency, this
   proposition proves \(F_1=1\), \(\lVert F\rVert_2\geq1\), and
   \(F\in C^1(\Theta;\mathbb R^N)\), hence
   \(\lVert F\rVert_2\in C^1(\Theta)\), and
   \(\gamma_F=F/\lVert F\rVert_2\in C^1(\Theta;\mathbb R^N)\) with
   \(\lVert\gamma_F\rVert_2=1\). The proof and accepted review identities are
   recorded in `## Allowed Assumptions And Dependencies`. The current step
   uses exactly these nonvanishing, normalization, unit-norm, and regularity
   conclusions. It does not use the dependency as authority for the desired
   coefficient-volume inequality.

2. **Regular level-set theorem (standard Euclidean theorem, restated).** Let
   \(U\subseteq\mathbb R^{N+1}\) be open and let \(g\in C^1(U)\). If
   \(\nabla g(z)\neq0\) at every \(z\in g^{-1}(0)\), then \(g^{-1}(0)\) is
   an embedded \(C^1\), hence countably \(N\)-rectifiable, hypersurface. Its
   tangent space at \(z\) is \(\ker Dg(z)\), and
   \(\nabla g(z)/\lVert\nabla g(z)\rVert_2\) is a unit normal. In
   Lemma~\ref{lem:step-003-incidence-jacobians},
   \[
   g(\theta,a)=\langle a,\gamma_F(\theta)\rangle,
   \qquad
   \nabla g=(\langle a,\gamma_F'(\theta)\rangle,\gamma_F(\theta)).
   \]
   Accepted Proposition~\ref{prop:step-002-projective-speed} gives \(C^1\)
   regularity and \(\lVert\gamma_F\rVert_2=1\), so the gradient norm is
   \(\sqrt{1+\langle a,\gamma_F'\rangle^2}\geq1\). Thus every hypothesis is
   discharged without root transversality.

3. **Area formula on a rectifiable set (standard Euclidean theorem,
   restated).** If \(E\subseteq\mathbb R^d\) is countably
   \(N\)-rectifiable, \(f:E\to\mathbb R^N\) is Lipschitz, and \(B\subseteq E\)
   is measurable, then, with values allowed in \([0,+\infty]\),
   \[
   \int_B J_E f(z)\,d\mathcal H^N(z)
   =\int_{\mathbb R^N}
     \#\bigl(B\cap f^{-1}(y)\bigr)\,dy.
   \]
   Here \(E\) is the incidence hypersurface, \(B\) is its restriction to the
   interval and open coefficient cube, and \(f=\pi(\theta,a)=a\), which is
   \(1\)-Lipschitz. The right-hand side is the extended-valued number of root
   locations. This is used in
   Proposition~\ref{prop:step-003-central-volume} both on the full incidence
   set and on its tangent locus.

4. **Coarea formula on a rectifiable set (standard Euclidean theorem,
   restated).** If \(E\) is countably \(N\)-rectifiable,
   \(\tau:E\to\mathbb R\) is Lipschitz, and \(\varphi:E\to[0,+\infty]\) is
   measurable, then
   \[
   \int_E \varphi(z)J_E\tau(z)\,d\mathcal H^N(z)
   =\int_{\mathbb R}
      \int_{E\cap\tau^{-1}(t)}
      \varphi(z)\,d\mathcal H^{N-1}(z)\,dt.
   \]
   We take \(\tau(\theta,a)=\theta\) and
   \(\varphi(\theta,a)=\lvert\langle
   a,\gamma_F'(\theta)\rangle\rvert\). Lemma~\ref{lem:step-003-incidence-jacobians}
   proves before this use that
   \(J_E\pi=\varphi J_E\tau\) and that \(J_E\tau>0\). Each fiber is
   isometric to \(\gamma_F(t)^\perp\cap(-R,R)^N\), so the formula produces
   exactly the target section measure and integrand.

5. **Zero-derivative consequence of the one-variable mean-value theorem
   (standard theorem, restated).** If a scalar \(C^1\) function has derivative
   zero on an interval interior, it is constant there and, by continuity, on
   the whole interval. Applying this coordinatewise to a \(C^1\) vector curve
   proves the stationary-curve assertion in
   Lemma~\ref{lem:step-003-null-degeneracies}. The dependency supplies the
   required \(C^1\) regularity.

6. **Edelman--Kostlan, *How Many Zeros of a Random Polynomial Are Real?*,
   Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9
   (source-convention cross-check only).**
   The portion relevant to the accepted sketch is its Euclidean
   coefficient-space zero-count convention: after a nonvanishing feature
   curve is normalized to a unit curve \(\gamma\), integration over the
   root section \(\{a:\langle a,\gamma(\theta)\rangle=0\}\) carries the local
   motion factor \(\lvert\langle a,\gamma'(\theta)\rangle\rvert\), together
   with the coefficient density when an expected zero count is formed. The
   current objects map as \(\gamma=\gamma_F\) and \(a\) is the current
   Euclidean coefficient vector. Accepted
   Proposition~\ref{prop:step-002-projective-speed} supplies the
   nonvanishing \(C^1\) normalization. **Conclusion used in this proof:
   none.** The integrand is derived independently from the regular
   level-set theorem and the two standard formulas above. The cited theorem
   supplies neither the current truncated-cube union-volume inequality nor
   any handling of projection multiplicity, tangent roots, endpoints, or
   identically-zero combinations.

7. **Lemma~\ref{lem:step-003-incidence-jacobians} (local incidence-geometry
   lemma).** Under the stated primitive dimension/cube condition and the
   accepted \(C^1\) unit-curve conclusion, it proves regularity of the exact
   incidence hypersurface and the identity
   \[
   J_{\mathcal S_J}\pi
   =\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
    J_{\mathcal S_J}\tau.
   \]
   It is proved in `unit_001` and used by the target proposition.

8. **Lemma~\ref{lem:step-003-null-degeneracies} (local null-degeneracy
   lemma).** Under exactly the target assumptions and accepted dependency,
   it identifies all endpoint, identically-zero, stationary, and \(N=1\)
   classes and proves the required zero-volume conclusions. It is proved in
   `unit_002` and used by the target proposition.

9. **Proposition~\ref{prop:step-003-central-volume} (local target
   proposition).** Under exactly the target assumptions, accepted dependency,
   and the preceding local lemmas, it applies area and coarea to obtain the
   accepted witness inequality for every interval. It is proved in
   `unit_003` and is the sole mathematical output exported by the
   target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Exact Jacobians of the central incidence hypersurface).**
\label{lem:step-003-incidence-jacobians}
Under Assumption~\ref{assump:parameter-regime} and accepted
Proposition~\ref{prop:step-002-projective-speed}, let
\(J\subseteq\operatorname{int}(\Theta)\) be an open interval and put
\(K^\circ=(-R,R)^N\). With \(\gamma=\gamma_F\), define
\[
\mathcal S_J
:=\{(\theta,a)\in J\times K^\circ:
       \langle a,\gamma(\theta)\rangle=0\},
\qquad
\pi(\theta,a):=a,
\qquad
\tau(\theta,a):=\theta.
\]
Then \(\mathcal S_J\) is an embedded \(C^1\), hence countably
\(N\)-rectifiable, hypersurface. At every \((\theta,a)\in\mathcal S_J\), set
\[
u(\theta,a):=\langle a,\gamma'(\theta)\rangle.
\]
The vector
\[
n(\theta,a)
=\frac{(u(\theta,a),\gamma(\theta))}
       {\sqrt{1+u(\theta,a)^2}}
\]
is a unit normal, and the tangential Jacobians satisfy
\[
J_{\mathcal S_J}\pi(\theta,a)
=\frac{\lvert u(\theta,a)\rvert}
       {\sqrt{1+u(\theta,a)^2}},
\qquad
J_{\mathcal S_J}\tau(\theta,a)
=\frac1{\sqrt{1+u(\theta,a)^2}}.
\]
In particular, everywhere on \(\mathcal S_J\), including at \(u=0\),
\[
J_{\mathcal S_J}\pi
=\lvert\langle a,\gamma'(\theta)\rangle\rvert
 J_{\mathcal S_J}\tau.
\tag{3.1}
\]

**Proof / justification.** On the open cylinder
\(U=J\times\mathbb R^N\), define
\[
g(\theta,a):=\langle a,\gamma(\theta)\rangle.
\]
The accepted dependency gives \(\gamma\in C^1\) and
\(\lVert\gamma(\theta)\rVert_2=1\), so \(g\in C^1(U)\). Its full Euclidean
gradient is
\[
\nabla g(\theta,a)
=\bigl(\langle a,\gamma'(\theta)\rangle,\gamma(\theta)\bigr)
=(u,\gamma),
\]
and hence, at every point rather than merely at a regular root,
\[
\lVert\nabla g(\theta,a)\rVert_2^2
=u^2+\lVert\gamma(\theta)\rVert_2^2
=1+u^2\geq1.
\]
The regular level-set theorem therefore makes \(g^{-1}(0)\) an embedded
\(C^1\) hypersurface. Intersecting it with the open cylinder
\(J\times K^\circ\) gives the asserted \(\mathcal S_J\), with unit normal
\(n=\nabla g/\lVert\nabla g\rVert_2\). Notice that this regularity comes from
the coefficient gradient \(\nabla_a g=\gamma\), not from the root derivative
\(u\); tangent roots \(u=0\) remain regular incidence points.

It remains to compute both tangential Jacobians. Let
\(e_0=(1,0,\ldots,0)\in\mathbb R^{N+1}\) denote the unit vector in the
\(\theta\)-direction, and let \(T=T_{(\theta,a)}\mathcal S_J=n^\perp\).
Choose an orthonormal basis \(v_1,\ldots,v_N\) of \(T\), and write
\(s_i=\langle v_i,e_0\rangle\). Since coefficient projection removes only
the \(e_0\)-component,
\[
\langle\pi v_i,\pi v_j\rangle
=\langle v_i,v_j\rangle-s_is_j
=\delta_{ij}-s_is_j.
\]
Thus the square of the \(N\)-dimensional tangential Jacobian is
\[
\begin{aligned}
\bigl(J_{\mathcal S_J}\pi\bigr)^2
&=\det(I_N-ss^{\mathsf T})
=1-\lVert s\rVert_2^2.
\end{aligned}
\]
The orthonormal basis \(v_1,\ldots,v_N,n\) of \(\mathbb R^{N+1}\) gives
\[
1=\lVert e_0\rVert_2^2
=\sum_{i=1}^N\langle e_0,v_i\rangle^2
 +\langle e_0,n\rangle^2
=\lVert s\rVert_2^2+\langle e_0,n\rangle^2.
\]
Consequently
\[
J_{\mathcal S_J}\pi
=\lvert\langle e_0,n\rangle\rvert
=\frac{\lvert u\rvert}{\sqrt{1+u^2}}.
\]

For the scalar coordinate map \(\tau\), its tangential gradient is the
orthogonal projection \(P_Te_0\). Hence
\[
\begin{aligned}
J_{\mathcal S_J}\tau
&=\lVert P_Te_0\rVert_2
=\sqrt{1-\langle e_0,n\rangle^2}\\
&=\sqrt{1-\frac{u^2}{1+u^2}}
=\frac1{\sqrt{1+u^2}}.
\end{aligned}
\]
This number is strictly positive for every finite \(a\) and
\(\gamma'(\theta)\). Multiplying it by \(\lvert u\rvert\) proves (3.1),
including the tangent case \(u=0\). No division by \(u\), choice of root
branch, or transversality assumption has occurred. \(\square\)

### unit_002: lemma

**Lemma (Null boundary and degenerate coefficient classes).**
\label{lem:step-003-null-degeneracies}
Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-unit-range} and accepted
Proposition~\ref{prop:step-002-projective-speed}, let
\(I\subseteq\Theta\) be any interval and write \(\gamma=\gamma_F\). Then:

1. For every \(a\in\mathbb R^N\) and \(\theta\in I\),
   \[
   \langle a,F(\theta)\rangle=0
   \quad\Longleftrightarrow\quad
   \langle a,\gamma(\theta)\rangle=0.
   \tag{3.2}
   \]
2. The coefficient vectors producing a root at any point of
   \(I\setminus\operatorname{int}(I)\) lie in a union of at most two proper
   linear hyperplanes and therefore form an \(N\)-dimensional Lebesgue-null
   set.
3. If \(I\neq\varnothing\), the set
   \[
   \mathcal Z_I
   :=\{a\in\mathbb R^N:
        \langle a,F(\theta)\rangle=0
        \text{ for every }\theta\in I\}
   \]
   is a proper linear subspace and is Lebesgue-null. Consequently every law
   absolutely continuous with respect to \(N\)-dimensional Lebesgue measure,
   including every later admissible coefficient law, assigns
   \(\mathcal Z_I\) probability zero.
4. If \(L\subseteq\Theta\) is a nondegenerate interval and
   \(\gamma'=0\) on \(\operatorname{int}(L)\), then \(\gamma\) is constant
   on \(L\). The coefficient vectors having a root somewhere on \(L\) then
   form one fixed proper hyperplane, while the target sweep integrand
   vanishes throughout \(L\).
5. If \(N=1\), then \(F=\gamma=(1)\), the coefficient root set is
   \(\{0\}\), and both sides of the target coefficient-volume inequality
   are zero for every interval \(I\), including empty and degenerate ones.

**Proof / justification.** The accepted dependency gives
\(F(\theta)\neq0\) and
\[
F(\theta)=\lVert F(\theta)\rVert_2\gamma(\theta),
\qquad \lVert F(\theta)\rVert_2>0.
\]
Taking the inner product with \(a\) proves (3.2).

Every interval differs from its ordinary interior by at most two endpoints.
For a fixed endpoint \(t\), its root coefficients form
\[
H_t:=\{a\in\mathbb R^N:\langle a,\gamma(t)\rangle=0\}
=\gamma(t)^\perp.
\]
Because \(\lVert\gamma(t)\rVert_2=1\), this is a proper linear hyperplane.
To see its Lebesgue nullity directly, apply an orthogonal change of
coordinates sending \(\gamma(t)\) to the first coordinate vector. It sends
\(H_t\) to \(\{a_1=0\}\), which has zero \(N\)-dimensional Lebesgue measure
by Fubini. Orthogonal maps preserve Lebesgue measure, and a finite union of
null sets is null. This proves the endpoint assertion without deciding
whether either endpoint belongs to \(I\).

If \(I\neq\varnothing\), choose any \(t_0\in I\). The set
\(\mathcal Z_I\) is an intersection of kernels of linear functionals and is
therefore a linear subspace. Moreover,
\[
\mathcal Z_I\subseteq
\{a:\langle a,F(t_0)\rangle=0\}.
\]
The latter is proper because \(F_1(t_0)=1\), or equivalently because
\(F(t_0)\neq0\). Thus \(\mathcal Z_I\) is proper and is contained in a null
hyperplane. Absolute continuity gives its stated probability-zero
consequence. In particular, the zero coefficient vector, whose combination
vanishes identically, causes no positive-volume exception.

Suppose next that \(\gamma'=0\) on the interior of a nondegenerate interval
\(L\). The scalar mean-value theorem applied to every coordinate of
\(\gamma\) shows that each coordinate is constant on
\(\operatorname{int}(L)\); continuity extends the same value to any included
endpoints. Hence the root coefficient set over \(L\) is the single fixed
hyperplane \(\gamma(L)^\perp\), already proved null, and
\(\langle a,\gamma'(\theta)\rangle=0\) throughout the interval interior.
This covers stationary normalized curves and stationary subintervals without
assigning them a positive sweep cost.

Finally, if \(N=1\), Assumption~\ref{assump:anchored-unit-range} gives
\(F_1=1\), so \(F=\gamma=(1)\). For nonempty \(I\), a root exists exactly
when \(a=0\), and for empty \(I\) no root exists. In either case the
one-dimensional coefficient volume is zero. Also
\(\gamma'=0\), while
\(\gamma(\theta)^\perp\cap[-R,R]=\{0\}\). With the standard convention
\(\mathcal H^0(\{0\})=1\), the integrand is still zero and so is its
integral. This proves every claim. \(\square\)

### unit_003: proposition

**Proposition (Central root-set coefficient-volume inequality).**
\label{prop:step-003-central-volume}
Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:anchored-unit-range}, accepted
Proposition~\ref{prop:step-002-projective-speed}, and
Lemmas~\ref{lem:step-003-incidence-jacobians} and
\ref{lem:step-003-null-degeneracies}, every interval
\(I\subseteq\Theta\), with no restriction on endpoint inclusion, satisfies
\[
\boxed{
\operatorname{Leb}^N
\left\{a\in[-R,R]^N:
  \exists\theta\in I,\ \langle a,F(\theta)\rangle=0\right\}
\leq
\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle\gamma_F'(\theta),a\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.}
\tag{3.3}
\]
The inequality holds without simple roots or transversality. More precisely,
the coefficient image of all interior tangent incidences is
\(N\)-dimensional Lebesgue-null; distinct root locations increase the
projection counting multiplicity; and a coefficient vector whose combination
vanishes identically is permitted to have infinite counting multiplicity on
the proper null subspace from
Lemma~\ref{lem:step-003-null-degeneracies}.

**Proof / justification.** Lemma~\ref{lem:step-003-null-degeneracies} proves
(3.3) directly when \(N=1\), so assume \(N\geq2\). Put
\[
K=[-R,R]^N,
\qquad K^\circ=(-R,R)^N,
\qquad J=\operatorname{int}(I),
\qquad \gamma=\gamma_F.
\]
If \(J=\varnothing\), the interval \(I\) is empty or a singleton. Its root
coefficient set is empty or a proper hyperplane, respectively, and hence has
zero volume by Lemma~\ref{lem:step-003-null-degeneracies}; the integral over
such an \(I\) is zero. Thus suppose \(J\neq\varnothing\). Since \(I\subseteq
\Theta\), its ordinary interior \(J\) is an open subinterval of
\(\operatorname{int}(\Theta)\), so
Lemma~\ref{lem:step-003-incidence-jacobians} applies.

The root coefficient set is Lebesgue measurable. Indeed, exhaust \(J\) by
compact intervals \(J_m\subset J\) with \(J_m\uparrow J\). For each \(m\),
the zero set of the continuous map
\((\theta,a)\mapsto\langle a,\gamma(\theta)\rangle\) in \(J_m\times K\) is
compact, so its coefficient projection is compact. The interior-root set is
the countable union of these compact projections, and adding the at most two
endpoint hyperplanes preserves Borel measurability.

The cube boundary \(\partial K\) has zero \(N\)-dimensional Lebesgue measure.
Together with the endpoint conclusion of
Lemma~\ref{lem:step-003-null-degeneracies}, this shows that the left-hand
side of (3.3) has the same volume as
\[
\pi(\mathcal S_J),
\qquad
\mathcal S_J
=\{(\theta,a)\in J\times K^\circ:
    \langle a,\gamma(\theta)\rangle=0\}.
\tag{3.4}
\]
For \(a\in\mathbb R^N\), let
\[
\mathcal N_J(a)
:=\#\{\theta\in J:(\theta,a)\in\mathcal S_J\}
\in\{0,1,2,\ldots,+\infty\}.
\]
This is exactly the multiplicity of \(a\) under the coefficient projection
\(\pi\). The indicator of a nonempty fiber is pointwise bounded by
\(\mathcal N_J(a)\), including when the fiber is infinite. The area formula
therefore gives
\[
\begin{aligned}
\operatorname{Leb}^N\bigl(\pi(\mathcal S_J)\bigr)
&=\int_{\mathbb R^N}
  \mathbf 1_{\{\mathcal N_J(a)\geq1\}}\,da\\
&\leq\int_{\mathbb R^N}\mathcal N_J(a)\,da\\
&=\int_{\mathcal S_J}
  J_{\mathcal S_J}\pi(\theta,a)\,d\mathcal H^N(\theta,a).
\end{aligned}
\tag{3.5}
\]
All equalities and inequalities are valid in the extended nonnegative sense;
in particular no finiteness or discreteness of every root fiber was assumed.

By the exact identity (3.1) from
Lemma~\ref{lem:step-003-incidence-jacobians}, followed by the coarea formula
for \(\tau(\theta,a)=\theta\), the final integral in (3.5) equals
\[
\begin{aligned}
&\int_{\mathcal S_J}
 \lvert\langle a,\gamma'(\theta)\rangle\rvert
 J_{\mathcal S_J}\tau(\theta,a)
 \,d\mathcal H^N(\theta,a)\\
&\quad=
\int_J\int_{\gamma(\theta)^\perp\cap K^\circ}
 \lvert\langle\gamma'(\theta),a\rangle\rvert
 \,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\tag{3.6}
\]
The fiber identification used here is exact: the map
\(a\mapsto(\theta,a)\) is an isometry from
\(\gamma(\theta)^\perp\cap K^\circ\) onto
\(\mathcal S_J\cap\tau^{-1}(\theta)\).

For completeness, replacing the open cube section in (3.6) by the closed
one does not change its \(\mathcal H^{N-1}\)-integral. The cube boundary is
the union of \(2N\) affine faces. A central hyperplane
\(\gamma(\theta)^\perp\) cannot contain any such face: containment would
force all components of \(\gamma(\theta)\) tangent to the face to vanish and
would also force its remaining component times \(\pm R\) to be zero,
contradicting \(R>0\) and \(\lVert\gamma(\theta)\rVert_2=1\). Its intersection
with each face therefore has affine dimension at most \(N-2\), and hence
zero \(\mathcal H^{N-1}\)-measure. Also, \(I\setminus J\) contains at most
two points, so replacing \(J\) by \(I\) does not change the outer Lebesgue
integral. Combining (3.4)--(3.6) now proves exactly (3.3).

It remains to verify explicitly that the counting argument has not hidden a
root-type restriction. Define the tangent incidence locus
\[
\mathcal C_J
:=\{(\theta,a)\in\mathcal S_J:
      \langle a,\gamma'(\theta)\rangle=0\}.
\]
It is measurable, and
Lemma~\ref{lem:step-003-incidence-jacobians} gives
\(J_{\mathcal S_J}\pi=0\) on \(\mathcal C_J\). Applying the area formula to
this measurable subset yields
\[
\int_{\mathbb R^N}
 \#\bigl(\mathcal C_J\cap\pi^{-1}(a)\bigr)\,da
=\int_{\mathcal C_J}J_{\mathcal S_J}\pi\,d\mathcal H^N
=0.
\]
Hence \(\operatorname{Leb}^N(\pi(\mathcal C_J))=0\). Every tangent root lies
in this locus. At any root, differentiating
\(F=\lVert F\rVert_2\gamma\) gives
\[
\frac{d}{d\theta}\langle a,F(\theta)\rangle
=\lVert F(\theta)\rVert_2
  \langle a,\gamma'(\theta)\rangle,
\]
because the term containing
\(\langle a,\gamma(\theta)\rangle\) vanishes there. Since
\(\lVert F(\theta)\rVert_2>0\), a higher-order or ordinary multiple root at
one interior root location has zero first derivative exactly when the
corresponding incidence has \(u=0\), and is therefore included in the same
null image. Several distinct root locations instead give several distinct
incidence preimages and only increase \(\mathcal N_J(a)\). If
\(\langle a,F(\cdot)\rangle\) vanishes identically, then
\(\mathcal N_J(a)=+\infty\) when \(J\neq\varnothing\); the area formula
allows this extended value, and
Lemma~\ref{lem:step-003-null-degeneracies} independently places all such
coefficients in a proper null subspace. Endpoint roots were removed only by
null hyperplanes, and stationary pieces were shown in that lemma to project
to one fixed null hyperplane while contributing zero integrand. Thus no
simple-root, finite-root, or transversality condition was used. This proves
the proposition. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-002-projective-speed} supplies the exact
same-target \(C^1\) unit curve \(\gamma_F=F/\lVert F\rVert_2\) and global
nonvanishing needed before the incidence set is formed.
Lemma~\ref{lem:step-003-incidence-jacobians} proves from the unit coefficient
gradient that the incidence is regular even at tangent roots and establishes
the exact product
\[
J_{\mathcal S_J}\pi
=\lvert\langle a,\gamma_F'(\theta)\rangle\rvert
 J_{\mathcal S_J}\tau.
\]
Lemma~\ref{lem:step-003-null-degeneracies} proves that normalization does not
change roots and disposes of endpoints, stationary normalized curves,
identically-zero combinations, and \(N=1\) by proper-subspace nullity.
Proposition~\ref{prop:step-003-central-volume} then bounds the root-union
indicator by the full extended-valued projection multiplicity, applies the
area formula, and uses coarea with the displayed Jacobian product to obtain
for every interval \(I\subseteq\Theta\)
\[
\operatorname{Leb}^N
\left\{a\in[-R,R]^N:
  \exists\theta\in I,\ \langle a,F(\theta)\rangle=0\right\}
\leq
\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
\lvert\langle\gamma_F'(\theta),a\rangle\rvert
\,d\mathcal H^{N-1}(a)\,d\theta.
\]
This is exactly the accepted `step_003` witness and the central incidence
projection interface consumed by `step_004`. The assembly uses no conclusion
from `global_proof.md`, no density or independence property, no Ball section
bound, and no assembly-only lemma or assumption.

## Explicit Rate Audit

- Exposed variables: \(N\), \(R\), the interval \(I\), and the deterministic
  normalized curve \(\gamma_F\) through the exact local quantity
  \(\lvert\langle\gamma_F'(\theta),a\rangle\rvert\). The output is the
  literal coefficient-volume inequality above; \(A,\kappa,q,M,\Delta,B_P,
  B_Q,h^{-1}\) do not enter this step's exported bound.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(N,R,I,F\), a coefficient vector, a
  section orientation, a root multiplicity, or any later law.
- Fixed quantities: The deterministic feature presentation and coefficient
  cube are fixed while the asserted inequality is proved for each interval.
- Probability mode: Deterministic \(N\)-dimensional Lebesgue coefficient
  volume. No probability, expectation, confidence parameter, conditioning,
  or density conversion occurs.
- Horizon mode: Every interval \(I\subseteq\Theta\), including all endpoint
  conventions and the degenerate empty or singleton cases. There is no
  iterative, asymptotic, stopping-time, or supremum upgrade.
- Norm mode: Euclidean inner product and norm in coefficient space,
  \(N\)-dimensional Lebesgue measure for the root coefficient set, and
  \((N-1)\)-dimensional Euclidean Hausdorff measure on each central section.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:anchored-unit-range} and accepted
  Proposition~\ref{prop:step-002-projective-speed}. There is no auxiliary
  tolerance, positive root-derivative margin, section bound, or density
  assumption.
- Term absorption or simplification inequalities: None. The sole comparison
  is the pointwise counting inequality
  \(\mathbf1_{\{\mathcal N_J\geq1\}}\leq\mathcal N_J\), and the Jacobian
  relation is the exact equality
  \(J\pi=\lvert\langle a,\gamma_F'\rangle\rvert J\tau\). Endpoint and cube
  boundary additions are measure-zero equalities, not absorbed quantitative
  terms.
- Probability conversion: None. The later conversion from coefficient volume
  to arbitrary-law probability is expressly deferred to `step_004`.
- Contribution to any Rate Specialization Bridge: This step supplies the
  exact local sweep integrand required by R2 before Ball's orientation-uniform
  section estimate and the joint-density cap are applied. It introduces no
  loss or hidden orientation factor.
- Baseline-reduction check, if applicable: If \(N=1\), both sides are exactly
  zero. If \(\gamma_F\) is stationary on the whole interval, the root set is
  one fixed null hyperplane and both sides are again exactly zero. Empty and
  singleton intervals likewise give zero coefficient volume and zero outer
  integral. These are exact reductions, not conservative losses.

## Blockers

None

## Notation And Assumption Notes

- The setting already defines \(F\), \(\gamma_F\), \(\Theta\), \(N\), and
  \(R\). The abbreviation \(\gamma=\gamma_F\) is `proof-local`; it does not
  rename or transform the consumed normalized curve.
- \(K=[-R,R]^N\) and \(K^\circ=(-R,R)^N\) are `proof-local` abbreviations
  defined directly from the setting quantity \(R\). No new radius or margin
  is introduced. Passing between them is proved to change neither coefficient
  volume nor section integrals.
- \(J=\operatorname{int}(I)\) is `proof-local` and is derived directly from
  the quantified interval. Endpoint restoration is proved in
  Lemma~\ref{lem:step-003-null-degeneracies}; endpoint exclusion is not a
  local conditional hypothesis used by the exported conclusion.
- The functions and geometric objects \(g\), \(\mathcal S_J\), \(\pi\),
  \(\tau\), \(u\), \(n\), \(e_0\), and the tangent space \(T\) are
  `proof-local`. Their regularity, unit-normal formula, and Jacobians are
  proved in Lemma~\ref{lem:step-003-incidence-jacobians} from the accepted
  \(C^1\) unit curve; none is an assumed bounded or generated invariant.
- The multiplicity \(\mathcal N_J\), tangent locus \(\mathcal C_J\), and
  identically-zero subspace \(\mathcal Z_I\) are `proof-local` measurable or
  linear objects. Their extended-value, critical-image, and nullity properties
  are proved in the named local results. In particular, finiteness of
  \(\mathcal N_J\) is never assumed.
- The exact inequality in
  Proposition~\ref{prop:step-003-central-volume} is the sole `public-facing`
  interface. It exports no helper constant or auxiliary set. All displayed
  numerical factors in the Jacobians are exact and derive from the unit norm
  of \(\gamma_F\); there is no free constant, threshold, rate, margin, or
  finite-tube quantity.
- Assumption~\ref{assump:parameter-regime} is used only for \(N\geq1\),
  \(R>0\), and the interval/cube definitions.
  Assumption~\ref{assump:anchored-unit-range} is used directly for
  \(F_1=1\), the \(N=1\) reduction, and properness of the identically-zero
  coefficient subspace. Accepted
  Proposition~\ref{prop:step-002-projective-speed} supplies the derived
  global nonvanishing and \(C^1\) unit normalized curve. No generated event,
  recurrence, stability condition, or local-validity condition is promoted
  to a primitive assumption.
- Tangent roots, higher-order roots, several distinct roots, infinite root
  fibers, endpoint roots, coefficient-cube boundary points, stationary
  normalized subintervals, \(N=1\), and identically-zero combinations are all
  handled inside the named units. None is excluded through notation or an
  unproved genericity claim.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED` and to bind
  the supplied current global-proof hash. Its step-relevant diagnostic idea
  was to organize the calculation through the incidence normal and the ratio
  of coefficient-projection and parameter-coordinate Jacobians. Lemma~\ref{lem:step-003-incidence-jacobians}
  independently proves that calculation. The diagnostic was not used as
  evidence, a cited result, an assumption source, or authority to change the
  target claim, dependencies, scope, measures, or constants.
- Edelman--Kostlan Theorem 5.1 was used only to cross-check the Euclidean
  normalization and the sign-insensitive local integrand. The standard
  area/coarea proof in current notation is the sole source of the exported
  inequality and all multiplicity and degeneracy conclusions.
