# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_3/idea_1`
- Global attempt: 1 under sketch attempt 1
- Goal mode: Exact-goal, unconditional, `material_partial`
- Reviewed `proof_sketch.md`: SHA-256
  `6dbdbee33e82384d0e5d1e68986f1347d39519eb653c40336b08f8dfec199dfc`
- Reviewed `proof_sketch_review.md`: SHA-256
  `30fd3d6f632b9eef96539dd3b40ed5eddbc42827c2683f9357f56de61f2cede0`
- Sketch review status: `ACCEPTED`
- Roadmap identity: the accepted six-step roadmap `step_001` through
  `step_006`, with its claims, dependencies, assumptions, output targets,
  rate objectives, progress type, and conclusion unchanged.

## Status

PARTIAL_BLOCKED

The theorem-level architecture closes without a sketch or theorem-contract
defect. The remaining obligations are the six accepted, source-adequate,
`step-local` proof units; this diagnostic is not proof evidence for them.

## Attempted Theorem Claim

In exact-goal mode, assume exactly `assump:shared-pfaffian-chain`,
`assump:no-forced-root`, and `assump:joint-density-cap` from `setting.md`.
Thus \(N\ge 1\), \(R>0\), \(\kappa\in(0,\infty)\), and the compact interval
\(\Theta\) are fixed; \(b,F_1,\ldots,F_N\) are \(C^1\) in the stated common
one-dimensional Pfaffian convention; no \((b(\theta),F(\theta))\) equals
\((0,0)\); and \(\alpha\) has an arbitrary, possibly correlated, joint
density supported on \([-R,R]^N\) and bounded by \(\kappa\). Put
\(A=(2R)^N\kappa\), and retain exactly the definitions of \(K_R\), \(V_j\),
and \(\Gamma_{\rm piv}(b,F;R)\) from the setting.

The attempted conclusion is the conjunction of the following three clauses.

1. The conditioning functional is finite,
   \(\Gamma_{\rm piv}(b,F;R)<\infty\), and for every
   \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval
   \(I\subseteq\Theta\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:
     b(\theta)+\langle\alpha,F(\theta)\rangle=0]
   \le
   \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|
   =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}|I|.
   \]
   Consequently, the two law and interval suprema of the probability-to-length
   ratio are at most \(A\Gamma_{\rm piv}/(2R)\).
2. For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\), \(R=1\), and
   \(0<\delta\le1\),
   \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\). For the uniform law
   on \([-1,1]^2\), the retained exact audit is
   \[
   \Pr[\exists\theta\in[0,\epsilon]:
      \alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta},\qquad 0<\epsilon\le\delta.
   \]
3. For every \(d\ge1\), the exact monic family with deterministic leading
   term and only the \(d\) lower coefficients random satisfies
   \[
   \Gamma_{\rm piv}(b_d,F_d;R)
   \le d+\frac{Rd(d-1)}2.
   \]
   Hence, for every admissible correlated lower-coefficient law and every
   bounded interval \(I\subset\mathbb R\),
   \[
   \Pr[\exists\theta\in I:p_\alpha(\theta)=0]
   \le \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)|I|.
   \]
   This must arise by exact specialization of the affine theorem, with no
   random leading coordinate, singular augmentation, independent substitute
   proof, or conservative loss.

All bounds are ordinary-probability, law-uniform and interval-uniform bounds
with no hidden constant and no asymptotic or horizon mode. The exposed
quantities remain \(N,R,\kappa,A,\Gamma_{\rm piv},\lvert I\rvert\), with \(d,\delta\),
and \(\epsilon\) exposed in their specializations. The descriptors
\(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) stay fixed and do not acquire a
factor in the bound. The progress type remains `material_partial`: no
polynomial general-instance control of \(\Gamma_{\rm piv}\) in Pfaffian
instance data is claimed.

## Whole-Proof Draft

### Block G1: Root feasibility and finite pivot conditioning (`step_001`)

Let
\[
K_R=\{\theta\in\Theta:|b(\theta)|\le R\|F(\theta)\|_1\}.
\]
If \(\phi_\alpha(\theta)=0\) for some
\(\alpha\in[-R,R]^N\), then
\[
|b(\theta)|=|\langle\alpha,F(\theta)\rangle|
\le R\|F(\theta)\|_1,
\]
so every supported root lies in \(K_R\). Continuity makes \(K_R\) closed in
compact \(\Theta\), hence compact. If \(K_R=\varnothing\), the supported-root
event is empty and the defining convention gives \(\Gamma_{\rm piv}=0\).

Suppose \(K_R\ne\varnothing\). On \(K_R\), \(F(\theta)=0\) would imply
\(b(\theta)=0\), contradicting `assump:no-forced-root`. Therefore the
continuous function \(g(\theta)=\max_j|F_j(\theta)|\) is positive on
\(K_R\), and compactness supplies the nonvacuous structural margin
\[
\rho:=\min_{\theta\in K_R}\max_j|F_j(\theta)|>0.
\]
Define the proof-local finite controls
\[
B_0=\max_{\theta\in\Theta}\max(|b(\theta)|,|F_1(\theta)|,\ldots,|F_N(\theta)|),
\quad
B_1=\max_{\theta\in\Theta}\max(|b'(\theta)|,|F_1'(\theta)|,\ldots,|F_N'(\theta)|).
\]
For each \(\theta\in K_R\), choose a coordinate \(j\) with
\(|F_j(\theta)|\ge\rho\). For \(g=b\) or \(g=F_i\), the quotient rule gives
\[
\left|\left(\frac g{F_j}\right)'\right|
\le \frac{|g'||F_j|+|g||F_j'|}{|F_j|^2}
\le \frac{2B_0B_1}{\rho^2}.
\]
Consequently,
\[
\min_jV_j(\theta)
\le \frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr),
\qquad \theta\in K_R,
\]
which supplies the accepted finiteness interface
\(\Gamma_{\rm piv}<\infty\). The quantities \(B_0,B_1,\rho\) certify
finiteness only; they do not become hidden rate constants or a claimed
polynomial function of Pfaffian format data.

### Block G2: Borel selector, finite-pivot exhaustion, and exact charts (`step_002`)

For each \(j\), the extended-real \(V_j\) is Borel: it is continuous on the
open set \(\{F_j\ne0\}\) and is assigned \(+\infty\) on its closed
complement. Finite extended-real comparison therefore makes
\[
E_j=K_R\cap\bigcap_{k<j}\{V_j<V_k\}
          \cap\bigcap_{k>j}\{V_j\le V_k\}
\]
Borel. These cells are disjoint and exhaust \(K_R\). Block G1 guarantees a
finite \(V_j\) at every point of \(K_R\), so the least minimizer is defined,
its selected pivot is nonzero, and
\(V_j(\theta)=\min_kV_k(\theta)\le\Gamma_{\rm piv}\) on \(E_j\).

The sets
\(E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}\) are Borel, increase with \(m\), and
exhaust \(E_j\): every selected pivot is nonzero and hence belongs to some
finite level. For \(\beta=\alpha_{-j}\), define
\[
T_j(\theta,\beta)
=-\frac{b(\theta)+\sum_{i\ne j}\beta_iF_i(\theta)}{F_j(\theta)}.
\]
This is the original coefficient \(\alpha_j\), not a surrogate. It solves
the root equation exactly, and direct differentiation yields
\[
\partial_\theta T_j
=-\left(\frac b{F_j}\right)'
 -\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'.
\]
Thus, for \(|\beta_i|\le R\),
\[
|\partial_\theta T_j(\theta,\beta)|
\le V_j(\theta)\le\Gamma_{\rm piv}.
\]
The least-index rule removes tie ambiguity, while minimization rather than a
union bound is what preserves the one-copy chart budget.

### Block G3: Exact graph-image coverage and noninjective area control (`step_003`)

For an interval \(I\subseteq\Theta\), let
\[
S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,
      \phi_\alpha(\theta)=0\}.
\]
Let \(\Psi_j(\theta,\beta)\) insert \(T_j(\theta,\beta)\) in coordinate
\(j\), retaining \(\beta\) in the other original coefficient coordinates,
and set
\[
D_{j,m}=\{(\theta,\beta):\theta\in I\cap E_{j,m},\ 
 \beta\in[-R,R]^{N-1},\ |T_j(\theta,\beta)|\le R\}.
\]
The domains are measurable. The maps are \(C^1\), hence locally Lipschitz, on
the open sets \(\{F_j\ne0\}\times\mathbb R^{N-1}\), and their Euclidean
\(N\)-Jacobians are
\[
J_N\Psi_j(\theta,\beta)=|\partial_\theta T_j(\theta,\beta)|.
\]
Countable compact localization inside this open set supplies the global
Lipschitz pieces needed by the standard Euclidean area formula.

Coverage is exact in both directions. If \(\alpha\in S_I\), choose a root
\(\theta\). Block G1 puts it in \(K_R\), exactly one \(E_j\) selects a
nonzero pivot, some finite \(m\) contains it, and with
\(\beta=\alpha_{-j}\) one has \(T_j=\alpha_j\). Conversely every image point
from \(D_{j,m}\) lies in the coefficient cube and has the displayed
\(\theta\) as a root. Hence
\[
S_I=\bigcup_{j=1}^N\bigcup_{m\ge1}\Psi_j(D_{j,m}).
\]
The images are analytic, hence Lebesgue measurable; for fixed \(j\) they are
nested because the domains are nested.

The noninjective image-measure form of the Euclidean area formula gives
\[
\lambda_N(\Psi_j(D_{j,m}))
\le\int_{D_{j,m}}J_N\Psi_j
\le(2R)^{N-1}\int_{I\cap E_{j,m}}V_j(\theta)\,d\theta.
\]
No injectivity, simple-root, or transverse-root premise is used. Multiple
preimages are handled by the multiplicity inequality; tangent or constant
fibers with zero Jacobian have null image contribution. The \(N=1\) case uses
the fixed convention \(\lambda_0([-R,R]^0)=1\).

For each \(j\), continuity from below of image measure and monotone
convergence of the nonnegative Jacobian integrals give
\[
\lambda_N\!\left(\bigcup_m\Psi_j(D_{j,m})\right)
\le(2R)^{N-1}\int_{I\cap E_j}V_j(\theta)\,d\theta.
\]
Summing over the finitely many \(j\)'s does not create a chart-count loss,
because the \(E_j\)'s partition \(K_R\) in the parameter variable:
\[
\begin{aligned}
\lambda_N(S_I)
&\le(2R)^{N-1}\sum_j\int_{I\cap E_j}V_j(\theta)\,d\theta\\
&\le(2R)^{N-1}\Gamma_{\rm piv}
       \sum_j|I\cap E_j|\\
&=(2R)^{N-1}\Gamma_{\rm piv}|I\cap K_R|\\
&\le(2R)^{N-1}\Gamma_{\rm piv}|I|.
\end{aligned}
\]
This is coefficient-image volume, not expected root count, and it remains
valid for multiple roots, tangencies, endpoints, and pivot ties.

### Block G4: Arbitrary correlated density conversion and uniformity (`step_004`)

The event \(S_I\) is Lebesgue measurable by Block G3. For any
\(\mu\in\mathcal D_{N,R,\kappa}\), the cap is on the full joint density in
the same coefficient coordinates, so no independence or marginal-density
argument is needed:
\[
\Pr_\mu(S_I)=\int_{S_I}f_\mu(\alpha)\,d\alpha
\le\kappa\lambda_N(S_I)
\le\kappa(2R)^{N-1}\Gamma_{\rm piv}|I|.
\]
The exact algebraic identity
\(\kappa(2R)^{N-1}=A/(2R)\) gives the second displayed form. Since this
inequality holds separately for every admissible \((\mu,I)\), taking the law
and positive-length interval suprema introduces no union bound, probability
conversion, or residual term. Together with Block G1, this closes the general
affine theorem and the finiteness of its anti-concentration ratio.

### Block G5: Exact \(\theta/\delta\) scale audit (`step_005`)

For \(b=0\), \(F=(1,\theta/\delta)\), \(R=1\), one has
\(K_1=[-1,1]\) and
\[
V_1=\frac1\delta,\qquad
V_2(\theta)=\frac{\delta}{\theta^2}\quad(\theta\ne0),
\qquad V_2(0)=+\infty.
\]
Thus \(\min(V_1,V_2)\le1/\delta\) everywhere and equals \(1/\delta\) at
\(\theta=0\) (indeed throughout \(|\theta|\le\delta\)), proving
\(\Gamma_{\rm piv}=1/\delta\).

For \(r=\epsilon/\delta\le1\), a root in \([0,\epsilon]\) is, up to the
null coefficient axes, exactly the union of the two opposite-sign wedges
\[
\alpha_1\alpha_2\le0,\qquad \lvert\alpha_1\rvert\le r\lvert\alpha_2\rvert.
\]
Each half contributes area \(r/2\), so the total area is \(r\). Multiplication
by the uniform density \(1/4\) gives exactly
\(\epsilon/(4\delta)\). The constant pivot is active at \(\theta=0\),
\(\epsilon=\delta\) is included, and \(\delta=0\) is correctly outside the
declared family. This calculation exposes rather than hides the required
conditioning scale.

### Block G6: Exact affine-monic recovery (`step_006`)

For \(b_d(\theta)=\theta^d\) and
\(F_d=(1,\theta,\ldots,\theta^{d-1})\), the constant pivot on
\(|\theta|\le1\) has
\[
V_{\rm const}(\theta)
=d|\theta|^{d-1}+R\sum_{k=1}^{d-1}k|\theta|^{k-1}
\le d+\frac{Rd(d-1)}2.
\]
For \(d\ge2\) and \(|\theta|>1\), the top pivot is nonzero and
\[
V_{\rm top}(\theta)
=1+R\sum_{m=1}^{d-1}\frac{m}{|\theta|^{m+1}}
\le1+\frac{Rd(d-1)}2
\le d+\frac{Rd(d-1)}2.
\]
For \(d=1\), the sole constant pivot has speed one. The pointwise minimum is
therefore globally bounded by the target constant, including at
\(\theta=0\) and \(|\theta|=1\), where the constant pivot is used.

For a positive-length bounded interval \(I\subset\mathbb R\), choose a
compact interval \(\Theta\) containing its closure. The preceding bound is
independent of this auxiliary localization, the primitive assumptions hold,
and Block G4 applies with \(N=d\), \(q=M=0\),
\(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and
\(A=(2R)^d\kappa\). The produced affine object and the consumed polynomial
are identical:
\[
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]
The same \(d\)-dimensional lower-coefficient vector, law, interval, and event
are used; the source ordering differs at most by a coordinate permutation.
Literal substitution into Block G4 gives
\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\le\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|I|.
\]
If a bounded interval has length zero, it is empty or a singleton. The empty
case is trivial, and at a singleton the root condition is a proper affine
hyperplane because the constant feature is one; absolute continuity gives
probability zero. Thus the displayed bound also holds in that boundary case.

### Block G7: Final assembly and progress boundary

Block G4 supplies finiteness and the general law- and interval-uniform affine
bound; Block G5 supplies the exact \(1/\delta\) scale certificate and wedge
probability; Block G6 supplies the exact monic baseline from Block G4 itself.
Their conjunction is exactly the formalized theorem, with no changed
assumption, dependence, probability mode, interval scope, metric, or
conclusion.

The full-source question remains explicit and unresolved: Blocks G1-G6 prove
only finiteness of \(\Gamma_{\rm piv}\) for a fixed admissible affine family
and exact control in the two named specializations. They do not bound
\(\Gamma_{\rm piv}\) polynomially in general Pfaffian instance data such as
\((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) together with meaningful
coefficient-size or representation parameters. This is outside the binding
`material_partial` conclusion and is not reassigned to any proof step.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: root feasibility and pivot finiteness | Proves supported roots lie in compact \(K_R\), produces \(\rho>0\), and proves \(\Gamma_{\rm piv}<\infty\) | step_001 | None | assump:shared-pfaffian-chain; assump:no-forced-root | Step-local compactness, maximum-coordinate selection, and quotient-bound evidence |
| G2: Borel adaptive charts | Produces the disjoint Borel partition, finite-pivot exhaustion, exact graph map, and derivative interface | step_002 | G1 / step_001 | assump:shared-pfaffian-chain; G1 pivot availability | Step-local extended-real measurability, tie rule, exhaustion, and quotient differentiation evidence |
| G3: swept coefficient volume | Gives exact graph-image coverage and \((2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) volume control without injectivity or chart-count loss | step_003 | G1, G2 / step_001, step_002 | Primitive regularity/nondegeneracy plus accepted chart interfaces | Step-local area-formula instantiation, analytic measurability, monotone exhaustion, and boundary evidence |
| G4: density conversion | Proves the arbitrary-correlated-law affine probability theorem and both suprema | step_004 | G3 / step_003 | assump:joint-density-cap; G3 volume certificate | Step-local density integration, event measurability, exact algebra, and uniform-supremum evidence |
| G5: scale stress | Proves \(\Gamma_{\rm piv}=1/\delta\) and the exact wedge probability | step_005 | Common definitions and G1 / step_001 | Specialized instances of all three primitive assumptions | Step-local speed, wedge-equivalence, and planar-area evidence |
| G6: monic recovery | Proves the two-pivot \(\Gamma\) bound and exact Theorem 2 constant with only lower coefficients random | step_006 | G1 and G4 / step_001, step_004 | The three primitives in the exact monic specialization | Step-local monomial calculus, compact localization, zero-length interval, identity, metadata, and substitution evidence |
| G7: final conjunction | Assembles G4-G6 and records the material_partial boundary | Direct assembly role | G4, G5, G6 | No new assumption | Direct conjunction after accepted step proofs; the polynomial general-instance \(\Gamma\) question stays outside the theorem |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | G1; finiteness clause and chart availability | No dependencies; feeds step_002-step_006 exactly as accepted | Root inclusion in \(K_R\); empty-\(K_R\) branch; positive \(\rho\); explicit \(B_0,B_1,\rho\) quotient bound | No polynomial Pfaffian-complexity estimate is claimed |
| step_002 | G2; G3 domains, maps, and integrand | Consumes only step_001; feeds only step_003 | Borel extended \(V_j\); least-index cell formula; disjoint exhaustion; exact \(T_j\); derivative inequality | Selector prevents an \(N\)-chart length factor |
| step_003 | G3; G4 coefficient-volume certificate | Consumes step_001, step_002; feeds step_004 | Measurability/localization; Jacobian; noninjective area formula; two-way coverage; \(m\uparrow\infty\); disjoint-cell sum; \(N=1\), multiplicity, tangency, endpoints | Highest-risk local step, with source and interface already fixed |
| step_004 | G4; general affine theorem and affine clause | Consumes step_003; feeds step_006 and assembly | Same-event full-density domination; exact \(A/(2R)\) conversion; pairwise-to-uniform suprema | No independence, marginal cap, confidence event, or small-interval threshold |
| step_005 | G5; final scale-stress clause | Uses step_001 only for common definitions; feeds assembly | Exact speeds, behavior at zero, wedge equivalence, and area | Retains \(1/\delta\) and \(\epsilon/(4\delta)\) literally |
| step_006 | G6; final monic baseline clause | Consumes step_001, step_004; feeds assembly | Constant/top pivots; \(d=1\); localization; zero-length intervals; object/descriptor map; literal rate substitution | Deterministic leading term stays outside the \(d\)-dimensional law |

## Dependency And Assumption Audit

| Condition or object | Provenance classification | Producer | Consumers / final use | Audit result |
| ------------------- | ------------------------- | -------- | --------------------- | ------------ |
| \(C^1\) common Pfaffian representation and descriptor convention | Primitive condition: assump:shared-pfaffian-chain | setting.md | G1-G3 and specialization metadata | Used only for regularity and descriptors; no hidden quantitative Pfaffian bound is inferred |
| No forced root | Primitive condition: assump:no-forced-root | setting.md | G1 and every downstream chart consumer | Supplies nonvanishing on \(K_R\); not replaced by a derived theorem assumption |
| Full joint-density cap and cube support | Primitive condition: assump:joint-density-cap | setting.md | G1 feasibility, G4 probability, G5-G6 | Full joint cap permits arbitrary correlation; no independence is introduced |
| Root restriction, \(\rho>0\), finite \(\Gamma_{\rm piv}\) | Accepted-roadmap derived conclusion | step_001 / G1 | step_002-step_006 and finiteness clause | Legal producer precedes all consumers |
| Borel cells, exhaustion, \(T_j\), derivative bound | Accepted-roadmap derived conclusion | step_002 / G2 | step_003 / G3 | Legal producer precedes the sole theorem-critical consumer |
| Exact image coverage and coefficient-volume bound | Accepted-roadmap derived conclusion | step_003 / G3 | step_004 / G4 | Produced by area control, not assumed as admissibility |
| General affine probability theorem | Accepted-roadmap derived conclusion | step_004 / G4 | step_006 / G6 and assembly | Produced before exact monic specialization |
| Scale-stress and monic certificates | Accepted-roadmap derived conclusions | step_005, step_006 / G5, G6 | Final assembly | Exact specializations, not new primitive assumptions |
| Local measurable-domain and source-tool hypotheses | Local conditional hypotheses inside G3 only | Verified in step_003 from G2 and \(C^1\) regularity | G3 local application only | They do not appear as theorem-facing assumptions |

Missing derived-condition bridges: None. There is no generated trajectory,
good-event, recurrence, stability, local-validity, support, or boundedness
condition hidden in the unconditional theorem assumptions. Polynomial
general-instance control of \(\Gamma_{\rm piv}\) is an explicitly excluded
full-source target, not a missing bridge for the attempted theorem.

## Citation And Tool Audit

| Source or tool | Current-branch objects and role | Assumptions / source-convention checks | Conclusion interface and known boundary | Affected block / local discharge |
| -------------- | ------------------------------- | -------------------------------------- | --------------------------------------- | -------------------------------- |
| Euclidean Lipschitz area/multiplicity formula; Azais--Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642 | \(\Psi_j:(\theta,\beta)\mapsto\alpha\) on measurable \(D_{j,m}\subset\mathbb R^N\); image-volume bound | Same Euclidean coordinates, Lebesgue measure, and \(N\)-Jacobian. G2 gives \(C^1\) maps on \(\{F_j\ne0\}\); compact localization gives Lipschitz pieces. Current wrapper: \(\lambda_N(\Psi(D))\le\int_DJ_N\Psi\). | Multiplicity-safe image measure; no injectivity or simple-root premise. It does not supply coverage, density conversion, or disjointness. Exact source statement must be checked when step_003 becomes evidence. | G3 / step_003; interface preflight passes, proof-level citation discharge remains step-local |
| Compactness, extreme-value theorem, quotient rule | \(K_R,\rho,B_0,B_1,V_j\) | Exact scalar \(C^1\) convention; \(K_R\) closed in compact \(\Theta\); nonvanishing supplied by assump:no-forced-root | \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\); no complexity-rate output | G1 / step_001; direct primitive-source derivation |
| Finite Borel minimization with least-index ties | Extended \(V_j\), \(E_j\), \(E_{j,m}\) | Extended \(V_j\) Borel; at least one finite by G1; same scalar parameter convention | Unique disjoint Borel partition and finite-pivot exhaustion; no volume output | G2 / step_002; direct current-notation fact |
| Continuity from below, monotone convergence, Tonelli, analytic-image measurability | Nested \(D_{j,m}\), images, nonnegative \(J_N\Psi_j\), beta integration | Lebesgue/analytic measurability; nonnegative integrands; finite beta cube; \(\lambda_0([-R,R]^0)=1\) | Passes \(m\to\infty\), integrates beta, and preserves exact coverage without a signed defect | G3 / step_003; standard measure facts localized there |
| Full-density domination | Same measurable \(S_I\) under \(\lambda_N\) and \(\mu\) | Primitive \(f_\mu\le\kappa\) a.e. on original cube; no product convention | \(\Pr_\mu(S_I)\le\kappa\lambda_N(S_I)\); singular laws outside class | G4 / step_004; direct primitive-source integration |
| Planar integration and monomial quotient differentiation | Scale wedges in G5; constant/top pivots in G6 | Exact specialized families, Euclidean area, original coordinates, \(d\)-dimensional lower-coefficient law | Exact \(1/\delta\), \(\epsilon/(4\delta)\), and monic pivot bounds; no surrogate | G5-G6 / step_005, step_006; direct derivations |
| Proper-affine-hyperplane nullity | Singleton monic interval event | Constant feature one makes the affine equation nonconstant in \(\alpha\); law has density | Zero probability for \(\lvert I\rvert=0\); positive-length theorem unchanged | G6 / step_006; standard Euclidean fact |
| Balcan--Nguyen--Sharma (2025), Definitions 2--4; Balcan--Dick--Pegden, arXiv:1904.09014, Theorem 18 | Descriptor convention and coordinate-fiber provenance | Branch fixes \(p=1\), distinguishes random/affine degrees, and keeps offset outside law | Not proof authority for the new affine volume inequality or monic constant | Metadata only; no theorem-critical conclusion deferred to them |

## Quantitative Dependence Audit

### General affine theorem

- Exposed variables: \(N,R,\kappa,A=(2R)^N\kappa\),
  \(\Gamma_{\rm piv}(b,F;R)\), and \(\lvert I\rvert\).
- Hidden constants: None. In particular, no dependence is hidden on the
  family, \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\), the law, correlations,
  root multiplicity, a pivot margin, or a Pfaffian scale.
- Fixed quantities: the deterministic family and exact representation,
  together with \(N,R,\kappa\), while the law and interval range.
- Probability mode: ordinary probability for each law, followed by exact
  suprema; no conditioning event, confidence parameter, or union-bound loss.
- Horizon mode: each positive-length interval and a uniform interval
  supremum; no iterative, all-time, stopping-time, or asymptotic upgrade.
- Norm/metric mode: the \(\ell_1\) feasibility test in \(K_R\), scalar
  coordinate-ratio speed in \(V_j\), and Euclidean Lebesgue coefficient
  measure.
- Auxiliary quantities: \(B_0,B_1,\rho\) prove only finiteness; \(m\) is a
  monotone-exhaustion index. None appears in or is hidden by the public rate.
- Exact conversion: \(\kappa(2R)^{N-1}=A/(2R)\); no term is dropped,
  dominated, or asymptotically absorbed.

### Scale-stress audit

- Exposed variables: \(0<\epsilon\le\delta\le1\), with fixed
  \(N=2,R=1,\kappa=1/4,A=1,q=M=0\).
- The exact outputs are \(1/\delta\) and \(\epsilon/(4\delta)\), with no
  hidden dependence, limiting qualification, or alternate metric.
- The specialization preserves the mandatory \(1/\delta\) baseline scale;
  it does not replace it by formal Pfaffian degrees.

### Monic baseline

- Exposed variables: \(d,R,\kappa,\lvert I\rvert\), with fixed
  \(q=M=0,N=d,\Delta_{\rm rnd}=d-1,\Delta_{\rm aff}=d\), and
  \(A=(2R)^d\kappa\).
- Probability mode is ordinary probability for every arbitrarily correlated
  lower-coefficient law; horizon mode is every bounded interval in
  \(\mathbb R\); norm mode is the same scalar chart speed and
  \(d\)-dimensional coefficient volume.
- The compact interval used for localization is auxiliary and cannot affect
  the constant. There is no random leading-coordinate tolerance or singular
  law conversion.
- Baseline invariance conclusion: the exact same polynomial and law recover
  \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\), including \(d=1\) and
  zero-length intervals, with no remainder or conservative loss.

The unresolved polynomial dependence of general
\(\Gamma_{\rm piv}\) on Pfaffian instance data is retained as the explicit
full-source gap. It is not silently assigned to a hidden constant or claimed
as a consequence of fixed descriptors.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Root feasibility, \(\rho>0\), finite \(\Gamma_{\rm piv}\) | Structural nondegeneracy and finite theorem constant | Static compact \(K_R\) for every supported root | Root implies \(\lvert b\rvert\le R\lVert F\rVert_1\); \(\rho=\min_{K_R}\max_j\lvert F_j\rvert\); explicit quotient bound | Positive maximum-coordinate margin \(\rho\) | Small or zero individual pivots and quotient denominators | Static compact-set comparison; no accumulated defect | Structural lower/upper comparison | Cube support, compactness, no-forced-root, \(C^1\) bounds; empty \(K_R\) separate | Nonvanishing \(F\) on \(K_R\) supplies genuine lower content | Same \(b,F,K_R,V_j\); zero residual | step-local | Primitives produce \(\rho\) before every consumer | N/A: no iteration; empty/nonempty branches tested first | Largest-coordinate choice dominates denominator powers; \(B_0,B_1\) bound numerators | assump:shared-pfaffian-chain; assump:no-forced-root; cube support | \(K_R,\rho,B_0,B_1,\Gamma_{\rm piv}<\infty\) from step_001 | Empty \(K_R\) gives empty event; simultaneous \(F=0\) excluded on nonempty \(K_R\) | A forced root destroys every finite linear interval ratio |
| Borel selector, exhaustion, exact chart, derivative certificate | Generated chart condition and Jacobian interface | Every \(\theta\in K_R\), finite pivots, static exhaustion | Least-index comparisons; \(E_{j,m}\uparrow E_j\); exact derivative; bound by \(V_j\) | Finite nonzero pivot from step_001 | Ties, coordinate zeros, no prescribed global pivot | Finite partition has no forcing; every point enters finite \(m\) | Algebraic coupling and structural lower/upper comparison | step_001, Borel minimization, quotient differentiation; selected zero excluded | Finite selected \(V_j\) supplies the needed denominator and speed | \(T_j\) is original \(\alpha_j\); zero residual | step-local | Pivot availability precedes construction and step_003 consumption | Each selected \(F_j\ne0\), so the chart activates at finite \(m\) | Tie rule makes cells disjoint; \(\lvert\beta_i\rvert\le R\) yields the speed bound | \(C^1\) regularity and cube radius | Pivot availability; cells, exhaustion, maps, derivative | Least index resolves ties; zero pivot has \(V_j=+\infty\); small pivots enter later levels | Without a nonzero pivot the graph is undefined; without ties chart length duplicates |
| Exact graph-image coverage and coefficient volume | Multiplicity-safe image closure and no-chart-count-loss bridge | Every interval, \(m\uparrow\infty\), finite chart sum | Exact image union; \(\lambda_N(\Psi_j(D_{j,m}))\le\int_{D_{j,m}}\lvert\partial_\theta T_j\rvert\) | Nonnegative Jacobian controlled by step_002 | Multiplicity, tangency, constant fibers, measurability, small denominators, chart count | Nonnegative Jacobian on nested domains/images; monotone convergence; finite budget \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\le\lvert I\rvert\) | Summable control and structural upper comparison | Euclidean area formula, step_002, monotone measure tools; no simple-root exclusion | Formula supplies image measure under multiplicity, exactly the needed claim type | Images equal original \(S_I\) in coefficient space; zero residual | step-local | step_001-step_002 produce maps/controls before step_004 | Every root selects a nonzero pivot and enters finite \(m\) before use | Each level obeys image measure at most Jacobian integral; monotone limit and finite cell budget close accumulation | Primitive regularity/nondegeneracy; Lebesgue convention | Cells, \(T_j\), derivative bound, finite \(\Gamma\) | \(N=1\) beta volume one; tangencies/multiplicity/endpoints/ties handled without injectivity | Without area control multiplicity breaks change of variables; without disjoint cells a chart factor appears |
| Full-density conversion and uniform affine theorem | Unconditional probability, exact rate, law/interval closure | Every admissible correlated law and positive-length interval, then suprema | \(\Pr_\mu(S_I)\le\kappa\lambda_N(S_I)\); exact \(A/(2R)\) identity | Full joint-density cap | Correlation and concentration near swept set | Pairwise bound precedes suprema; no accumulated error | Structural upper comparison and algebraic coupling | assump:joint-density-cap plus step_003; singular laws excluded | Full joint cap is exactly the probability source for correlated laws | Identical \(S_I\) under volume/probability; zero residual | step-local | step_003 volume output precedes density integration | N/A: no update; empty event immediate | Density domination and exact algebra; no conditioning or absorption | assump:joint-density-cap; \(A=(2R)^N\kappa\) | Measurable \(S_I\), volume certificate, finite \(\Gamma\) | Empty event zero; right side may exceed one; singular mass outside class | Without full density, singular mass can defeat volume conversion |
| Exact \(1/\delta\) conditioning and wedge probability | Quantitative scale audit | \(0<\epsilon\le\delta\le1\), \(\theta\in[-1,1]\), uniform square law | \(V_1=1/\delta\); \(V_2=\delta/\theta^2\) off zero; wedge area \(\epsilon/\delta\) | Exact derivative and wedge geometry | Pivot 2 undefined at zero; varying speed; coefficient axes | Static exact calculation; no accumulated defect | Algebraic coupling and structural lower/upper comparison | Specialized primitives and uniform density; \(\delta=0\) excluded | Derivative and area directly supply conditioning/probability scales | Wedge equals original root event; zero residual | step-local | Specialized primitives directly produce both outputs | Pivot 1 active at zero; \(\epsilon=\delta\) remains valid | Pointwise minimum attains \(1/\delta\); wedge area times \(1/4\) gives probability | Exact scale family and uniform law | Speeds, wedge equivalence, probability from step_005 | Axes null; \(\delta=1\), \(\epsilon=\delta\) valid; \(\delta=0\) excluded | Omitting the scale contradicts the exact wedge probability |
| Exact monic \(\Gamma\) certificate and Theorem 2 rate | Baseline invariance and public specialization | Every \(d\ge1\), correlated lower-coefficient law, bounded interval | Constant/top pivot bounds; exact polynomial identity; substitute into step_004 | Constant pivot near zero; top pivot at large magnitude | Power growth, top-pivot zero, \(d=1\), localization, zero-length interval, leading-coordinate augmentation | Static two-region split; global pointwise bound; localization adds no defect | Algebraic coupling and structural upper comparison | Direct polynomial calculus and step_004; top pivot only for \(\lvert\theta\rvert>1\); singleton hyperplane nullity | Complementary pivots supply the exact target constant | Same \(d\)-vector, law, interval, polynomial; zero residual | step-local | Polynomial calculation and step_004 precede baseline assembly | \(d=1\) speed one; constant pivot active at zero/unit boundary; singleton null | Regionwise bounds imply \(\Gamma\le d+Rd(d-1)/2\); literal substitution, no absorption | Exact monic family, descriptors, lower-coefficient density | General theorem plus step_006 speed/identity | \(d=1\), zero, unit boundary, positive/zero lengths preserve conclusion | Constant pivot alone grows; random-leading augmentation breaks object/density interface |
| Final conjunction and material_partial boundary | Theorem closure and source-direction fidelity | Exact three-clause theorem only | Conjoin step_004, step_005, step_006 outputs | Accepted derived outputs with exact identities | Risk of overclaiming polynomial general-instance \(\Gamma\) control | Finite logical conjunction; no accumulated defect | Algebraic coupling | G4-G6 outputs; general polynomial control excluded from contract | Each source has the target clause's claim type, scope, and dependence | Exact same-target clauses; no remainder or mode transfer | step-local | Acyclic G1-G4 path plus G5 and specialization G6 | N/A: static boundary cases certified in producer rows | Exact conjunction with full-source gap stated, not absorbed | Three primitive assumptions only | Outputs of step_004-step_006 | Empty-root, scale, \(d=1\), interval boundaries already covered | Treating descriptors as polynomial \(\Gamma\) control would strengthen the conclusion without a source |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Root feasibility, positive \(\rho\), finite \(\Gamma_{\rm piv}\) | G1 / step_001 | Compact \(K_R\), cube inequality, no-forced-root, \(B_0,B_1\) | Small pivots controlled by maximum-coordinate choice; simultaneous \(F=0\) source-excluded; polynomial \(\rho^{-1}\) control outside interface | Same \(b,F,K_R,V_j\); zero residual | \(\min_jV_j\le2B_0B_1\rho^{-2}(1+R(N-1))\) | \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\) | G2-G6 and finiteness clause | valid; no blocker for finiteness and no complexity export |
| Borel cells, finite exhaustion, exact graph, derivative bound | G2 / step_002 | G1 pivot, Borel \(V_j\), least-index rule, cube bound | Ties ordered; selected zeros excluded; nonselected zeros harmless; \(m\) is not a theorem tolerance | \(T_j\) equals original \(\alpha_j\); zero residual | Exact derivative and \(\lvert\beta_i\rvert\le R\) give \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma\) | Nonzero pivot from G1; \(1/m\) only exhausts | G3 / step_003 | valid; exact original-coordinate interface |
| \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert\) | G3 / step_003 and Euclidean area formula | G2 maps/derivative, beta volume, exact coverage | Multiplicity/tangency controlled by image measure; denominator boundary by exhaustion; no uncontrolled volume class | Exact original-space image union; zero residual | Area inequality, monotone limit, \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\le\lvert I\rvert\) | G2 Jacobian certificate; no transversality margin | G4 / step_004 | valid; source locator and regularity proof remain step-level evidence |
| General affine probability and ratio bounds | G4 / step_004 | G3 volume and primitive full-density cap | Correlation controlled by joint cap; singular laws excluded; no marginal/independence defect | Same measurable \(S_I\) under \(\lambda_N,\mu\); zero residual | \(\Pr(S_I)\le\kappa\lambda_N(S_I)\), exact \(A/(2R)\), then pairwise suprema | Primitive \(\kappa\); no slack | G6 and final assembly | valid; exact law and interval interface |
| Exact scale certificate and probability | G5 / step_005 | Feature derivatives, \(\delta>0\), \(0<\epsilon\le\delta\), uniform density | Pivot-2 zero controlled by pivot 1; axes null; no uncontrolled scale term | Exact wedge/root-event equivalence; zero residual | Pointwise speed minimum; wedge area \(\epsilon/\delta\) times \(1/4\) | Primitive \(\delta>0\), exact density | Final assembly and progress audit | valid; no hidden dependence |
| Monic certificate and exact Theorem 2 rate | G6 / step_006 | Two pivots, G4, exact lower-coefficient law/descriptors | Large growth uses top pivot; zero uses constant pivot; \(d=1\), zero lengths explicit; no augmentation | Exact \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) under same law, interval, metric | Regionwise bound, constant-free localization, literal substitution | Constant and top features; no threshold | Final assembly | valid; exact baseline and zero residual |
| Final three-clause material_partial theorem | G7 direct assembly | G4, G5, G6 outputs | Within-contract defects controlled; polynomial general-instance \(\Gamma\) control outside theorem | Exact conjunction; no transfer | Direct assembly with unchanged assumptions, modes, dependence, conclusions | No extra margin | Final theorem use | valid; full-source gap explicit, not an interface blocker |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Root-feasible restriction, \(\rho>0\), and finite \(\Gamma_{\rm piv}\) | G1 / `step_001`, from the regularity and no-forced-root primitives | G2-G6 and final finiteness clause | Primitive assumptions \(\to\) `step_001` \(\to\) every named consumer | `derived` | `valid`; same objects and no missing dependency |
| Borel least-minimizer partition, exhaustion, exact graph, and derivative bound | G2 / `step_002`, from G1 and direct calculus | G3 / `step_003` | `step_001` \(\to\) `step_002` \(\to\) `step_003` | `derived` | `valid`; produced before its sole theorem-critical consumer |
| Exact root-event coefficient-volume certificate | G3 / `step_003`, from G1-G2 and the current-notation area formula | G4 / `step_004` | `step_001`,`step_002` \(\to\) `step_003` \(\to\) `step_004` | `derived` | `valid`; exact same-event output |
| General arbitrary-correlated-law affine probability theorem | G4 / `step_004`, from G3 and the primitive density cap | G6 / `step_006` and final affine clause | `step_003` plus density primitive \(\to\) `step_004` \(\to\) `step_006`/assembly | `derived` | `valid`; exact mode and constant preserved |
| Exact \(1/\delta\) conditioning and wedge probability | G5 / `step_005`, from specialized primitive data and direct algebra | Final scale clause and progress audit | Specialized primitives and common definitions \(\to\) `step_005` \(\to\) assembly | `derived` | `valid`; no surrogate or scale residual |
| Exact same-object monic bridge and Theorem 2 constant | G6 / step_006, from direct polynomial identities and G4 | Final baseline clause | step_004 plus monic calculation \(\to\) step_006 \(\to\) assembly | derived | valid; same \(d\)-dimensional coefficient target |
| Final exact-goal `material_partial` conjunction | G7 direct assembly | Attempted theorem claim | G4, G5, G6 \(\to\) final conjunction | `derived` | `valid`; no new assumption, bridge, or output target |

## Early Obstruction And Repair Plausibility

- Contract contradiction check: None. The attempted claim is verbatim in
  scope and dependence from `setting.md`; it remains unconditional and
  `material_partial` and does not turn the remaining full-source gap into a
  claimed theorem.
- Theorem-critical mechanism check: Each block has a nonvacuous source and a
  concrete relation. G1 uses the positive compact margin \(\rho\); G2 uses
  the finite selected pivot and exact quotient identity; G3 uses the
  noninjective image-measure area formula plus the displayed monotone and
  finite chart-budget relations; G4 uses the full density ceiling; G5 uses
  exact derivative and wedge geometry; G6 uses complementary constant/top
  pivots and the exact same-object identity.
- Source-to-claim check: No upper-bound-only source is used as a substitute
  for structural nondegeneracy. In particular, `assump:no-forced-root` and
  compactness supply a true positive lower pivot margin on \(K_R\). The area
  formula supplies image measure, not merely expected multiplicity. The full
  joint-density cap supplies probability for arbitrary correlations.
- Residual-to-target check: All critical bridges are exact. The chart inserts
  the original coefficient; the graph images equal \(S_I\); volume and
  probability concern that same event; the scale wedge equals its root event;
  and the affine monic object equals \(p_\alpha\). No transformed, weighted,
  baseline-only, or surrogate residual remains.
- Exported-interface check: Every consumer sees the exact output named by its
  dependency. No new margin, threshold, defect split, wrapper conclusion, or
  dependency is needed. The exhaustion threshold \(1/m\) disappears through
  the explicit monotone relation and is not a theorem parameter.
- Accumulation and noncircularity check: The only accumulated construction is
  G3's static exhaustion. Its integrand is nonnegative, its domains and images
  are nested, and its cumulative chart budget is exactly
  \(\lvert I\cap K_R\rvert\le\lvert I\rvert\). The producer chain is acyclic and does not assume a
  later volume or probability conclusion.
- Entry/boundary check: No recursive or dynamical Entry-State Gate applies.
  The static activation trace is nevertheless explicit: every selected pivot
  enters a finite exhaustion level before use. Empty \(K_R\), \(N=1\),
  multiple and tangent roots, pivot ties and zeros, \(\theta=0\),
  \(\epsilon=\delta\), \(d=1\), \(\lvert\theta\rvert=1\), and zero-length monic
  intervals all have target-compatible behavior.
- Mode and dependence check: There is no probability-mode, horizon-mode, or
  norm-mode upgrade. Pairwise uniform inequalities justify the two suprema.
  All rate conversions are exact; no hidden polynomial dependence or
  asymptotic absorption is introduced.
- Baseline invariance check: The monic specialization keeps the deterministic
  leading coefficient outside the \(d\)-dimensional law and recovers the
  literal Theorem 2 constant from G4. It is not replaced by a remainder,
  singular augmentation, or independent baseline argument.
- Same-setting repair plausibility: No sketch or theorem-contract repair is
  indicated. The remaining citation, measurability, calculus, and boundary
  derivations fit inside the six accepted step claims and dependencies.
- Full-source gap: A polynomial general-instance estimate for
  \(\Gamma_{\rm piv}\) is not supplied by \(\rho>0\): compactness proves
  positivity but gives no polynomial lower bound in Pfaffian instance data.
  Adding such a conclusion would change the current theorem's exposed
  dependence and success scope and would require a new source-adequate
  mechanism. It remains the explicitly declared source-level gap, not a
  `sketch/interface defect` or `idea/theorem-contract defect` of this
  `material_partial` theorem.

## Global Gaps And Hard Steps

There is no unresolved global dependency, generated-output flow, exported
interface, or theorem-contract link. The following unresolved obligations are
all `step-local` proof-evidence tasks under the unchanged accepted roadmap.

1. `step_001`: The mechanism source is the no-forced-root primitive on compact
   \(K_R\), and the concrete control is the displayed \(\rho,B_0,B_1\)
   quotient inequality. Likely local units are a root-feasibility lemma, a
   compact nonvanishing-margin lemma, a quotient-bound lemma, and a target-step
   assembly covering \(K_R=\varnothing\). The null-source stress is decisive:
   a forced root would falsify the finite ratio.
2. `step_002`: The mechanism source is the finite pivot from `step_001`; the
   concrete control is the least-index Borel cell formula together with the
   exact derivative identity. Likely units are an extended-\(V_j\)
   measurability lemma, a selector/partition and finite-exhaustion lemma, an
   exact graph-and-Jacobian claim, and their assembly. Ties and selected-pivot
   zeros must be handled explicitly.
3. `step_003`: The mechanism source is the current-notation Euclidean area
   formula applied to G2's exact maps. The accumulated defect is only the
   nonnegative Jacobian on nested domains; continuity from below, monotone
   convergence, and the finite budget
   \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\) close it. Likely units are a measurable
   domain/analytic-image lemma, a localized area-formula application with
   \(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\), a two-way graph-image coverage lemma,
   an exhaustion-limit proposition, a no-chart-count-loss proposition, and a
   boundary claim for \(N=1\), tangencies, multiplicities, constant fibers,
   endpoints, and ties. This is the highest-risk local proof, but no new
   interface or mechanism is required.
4. `step_004`: The mechanism source is the primitive full joint-density cap,
   and the concrete control is
   \(\Pr(S_I)\le\kappa\lambda_N(S_I)\). Likely units are a same-event
   measurability/density-domination lemma, the exact \(A/(2R)\) algebraic
   conversion, and a pairwise-to-two-suprema assembly. Correlation must never
   be replaced by independence or marginal control.
5. `step_005`: The mechanism source is the exact specialized derivative and
   planar geometry. Likely units are a two-pivot speed calculation, a claim
   locating the supremum including \(\theta=0\), a root-event/wedge
   equivalence lemma, and the exact area integration. The \(\delta=0\)
   boundary remains excluded while \(\epsilon=\delta\) remains included.
6. `step_006`: The mechanism source is complementary constant/top monomial
   pivots plus the already proved `step_004` output. Likely units are the two
   pivot calculations, a \(d=1\) and region-boundary claim, a compact
   localization lemma, a zero-length interval hyperplane-nullity lemma, an
   exact object-and-descriptor mapping proposition, and a literal-rate
   assembly. The same \(d\)-dimensional lower-coefficient law must be retained
   throughout.

Outside the attempted theorem, the full-source polynomial bound on
\(\Gamma_{\rm piv}\) remains open. It is not a seventh local step and must not
be inferred from the proof-local finiteness witnesses.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target, exposed
dependence, progress type, or conclusion. Every provisional local unit and
tool application above must be independently proved or discharged by the
corresponding `/proof-step` and accepted review before theorem assembly.

## Suggested Routing

None

Continue with all six accepted steps in dependency order, beginning with
`/proof-step step_001`. Once its dependencies are accepted, prioritize
`/proof-step step_003` as the highest-risk local area-formula and exhaustion
obligation; this priority does not change the accepted roadmap.
