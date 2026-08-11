# Online Optimization of Piecewise-Lipschitz Functions

Evaluation date: 2026-08-08. Scores use `../RUBRIC.md` and
`W = 0.4 P + 0.4 S + 0.2 N`. The root-level parent
`../../03-piecewise-lipschitz/source.pdf` is the
authority for progress. Public `theory/setting.md` and
`theory/latex_template/*.tex` are the proof evidence; internal review files
were used only to locate obligations.

Novelty is provisional. The attempted current external search failed and its
escalation was rejected, so every novelty score is capped at `N4`. The local
surveys were used only as seed dossiers, not as proof of novelty.

## Source target contracts

### Subproblem 1: polynomial coefficient laws

The parent paper, PDF pp. 3-4, Open Question 1, fixes the monic polynomial

\[
\phi_\alpha(\theta)=\theta^d+\alpha_{d-1}\theta^{d-1}+\cdots+\alpha_0,
\qquad \alpha\in[-R,R]^d,
\]

and asks for natural necessary-and-sufficient conditions on a coefficient-law
class `D` under which the all-law, all-positive-length-interval root-hitting
constant is (a) finite or (b) polynomial in `d` and `R`. The paper's baseline
is Theorem 2: a common full joint-density cap yields the factor
`kappa (2R)^(d-1) [d + R d(d-1)/2]`. The paper explicitly counts interesting
application-specific sufficient conditions as partial progress, but neither a
single sufficient condition nor a finite-only bound settles the requested
characterization.

### Subproblem 2: Pfaffian normalization

The parent paper, PDF p. 4, Counter-example 1 and Open Question 2, asks for a
natural normalization of a one-dimensional Pfaffian vector `F` that guarantees
uniform root anti-concentration for every bounded-joint-density law on the
coefficient cube. A complete normalization result must expose the metric scale
missed by formal Pfaffian degrees, control that conditioning polynomially in
meaningful instance data, and recover Theorem 2 when the features are
polynomials. Counter-example 1 forces `1/delta` dependence for
`F=(1, theta/delta)`. The paper does not require a normalization to cover every
raw Pfaffian presentation, so a natural, checkable sufficient normalization is
eligible to answer the endpoint.

## Ranking: subproblem 1

| Rank | Accepted result | P | S | N | W |
| ---: | --- | ---: | ---: | ---: | ---: |
| 1 | perspective 2 / idea 1 | 7 | 10 | 4 provisional | **7.6** |
| 2 | perspective 1 / idea 1 | 6 | 10 | 3 provisional | **7.0** |

### 1. Perspective 2 / idea 1: endpoint conditional anti-concentration

**Advertised theorem.** For fixed finite endpoint conditional-density caps
`eta=(bar_kappa_0,bar_kappa_infty)`, all `d >= 1`, `R >= 1`, all laws in the
exactly defined class, and all positive-length intervals, the theorem proves
the inner/outer chart bound and

\[
C_{D_{d,R,eta}}\leq
\max\{\bar\kappa_0 B_0,\bar\kappa_\infty B_\infty\}
\leq \bar\kappa_* d+\tfrac12\bar\kappa_* R d^2.
\]

The law class and its two mean conditional caps are public at
`sp-01_revise/results/perspective_2/idea_1/theory/setting.md:25` and
`:42`; the exact theorem is at `latex_template/3_main.tex:3`; its
fixed-parameter polynomial corollary is at `3_main.tex:50`.

**Progress: P7/P10.** This is a broad, class-uniform, explicitly polynomial
sufficient direction for part (b), and it removes the baseline's exponential
`(2R)^(d-1)` factor on a nonempty class that permits singular and dependent
middle coordinates. It does not prove necessity, cover laws without both
endpoint slice conditions, or cover `0 < R < 1`; those residual gaps are
stated at `setting.md:218`-`:233`. One broad direction of a requested
necessary-and-sufficient characterization is capped at `P7`.

**Soundness: S10/S10.** The exact theorem is established.

- The inner sweep `alpha_0=s_0(theta)` has derivative at most
  `B_0=d+R d(d-1)/2`; the reciprocal outer sweep
  `alpha_(d-1)=s_infty(theta)` has derivative at most
  `B_infty=1+R d(d-1)/2`. These are proved separately at
  `latex_template/5_appendix.tex:8`, `:119`, and `:216`.
- Borel sections, jointly measurable conditional-density versions, and the
  matching disintegrations are proved at `5_appendix.tex:332`, `:582`, and
  `:675`; the three chart probability controls are at `:804`, `:862`, and
  `:921`.
- Disjoint parameter pieces give a maximum, not a sum, at
  `5_appendix.tex:992`-`:1093`. Independently recomputing the derivatives gives
  exactly the displayed constants, including negative outer parameters.
- The final absorption is literal:
  `B_0 <= d + (R/2)d^2` and `B_infty <= d + (R/2)d^2` for `d,R >= 1`; it is
  proved at `5_appendix.tex:1122`-`:1199`.
- The explicit witnesses have both endpoint conditional caps `1/(2R)`; the
  `d=1`, `d=2`, singular `d>=3`, and dependent `d>=4` cases are proved at
  `5_appendix.tex:1203`-`:1428` and assembled at `:1429`.
- Adversarial checks reproduced: `d=1`, roots at `theta=+/-1`, open and
  half-open intervals, empty chart pieces, densities supported on cube faces,
  singular middle-coordinate marginals, and cap pairs for which the class is
  empty. None changes the theorem or its rate.

No theorem-critical citation supplies the main inequality: Kallenberg and
Folland are used only for standard regular-conditional-density and measure
interfaces, whose hypotheses are discharged in the public appendix. The
proof is self-contained enough to reproduce all critical calculations and
edge cases.

**Technical novelty: N4/N10, provisional.** The nearest local comparators are
the parent paper's Theorem 2 and Balcan-Dick-Pegden (2020), Theorem 18. The new
proof-critical component is the two-coordinate chart: condition on `alpha_0`
near the origin and on `alpha_(d-1)` after reciprocal rescaling outside the
unit interval, then average random slice caps. This is a useful nonroutine
synthesis, but it uses standard one-dimensional image-length and
disintegration tools. No current independent nearest-neighbor search was
available, so `N4` is the maximum defensible score.

**Bottom line.** Substantial established progress: a sound polynomial-rate
sufficient direction, not the necessary-and-sufficient characterization.

### 2. Perspective 1 / idea 1: averaged intercept envelope

**Advertised theorem.** A finite average of the conditional `alpha_0` density
caps implies

\[
\Pr(Z_\alpha\cap I\ne\varnothing)
\leq L_{d,R,Theta}|I|\,E[K(\beta)],
\]

uniformly over laws and intervals. It also constructs random-intercept and
heteroscedastic singular examples with unbounded pointwise slice cap but
finite average. The exact theorem is at
`sp-01_revise/results/perspective_1/idea_1/theory/latex_template/3_main.tex:3`;
its explicit witness and scope boundary are at `3_main.tex:77` and `:137`.

**Progress: P6/P10.** This is a natural, broad sufficient condition for
finiteness that strictly permits singular higher-coordinate marginals and
unbounded pointwise conditional caps. It therefore materially expands the
paper's bounded-full-joint-density baseline. It proves no converse or
necessity, no indexed polynomial dependence in `(d,R)`, and no downstream
application-specific regret improvement. The explicit limitations at
`3_main.tex:137`-`:140` leave the central characterization and part (b) open,
so this is `P6`, below the polynomial endpoint result above.

**Soundness: S10/S10.** The exact theorem is established.

- A root in `I` forces `alpha_0` into a midpoint slab of exact length
  `L|I|`; the derivative envelope, arbitrary-endpoint Borel event, and slab
  implication are proved at `latex_template/5_appendix.tex:8`, `:51`, and
  `:130`. Recomputing the midpoint factor gives `|theta-m_I| <= |I|/2`, so
  the slab width is exactly `L|I|`, not `2L|I|`.
- Conditional integration and averaging of the essential-supremum slice cap
  are complete at `5_appendix.tex:221`-`:377`, including null fibers and
  intervals extending outside coefficient support.
- The random-intercept kernel is constructed explicitly at
  `5_appendix.tex:392`; conditioning gives cap `1/(2 rho)` and therefore the
  exact class envelope, rather than assuming it.
- For the heteroscedastic witness, direct calculation with
  `Y=2|Z|/R ~ Unif[0,1]` gives
  `E K = R^(-1) integral_0^1 y^(-q)dy = 1/[R(1-q)]`; support, null fiber,
  essential-supremum blowup, and the integral are proved at
  `5_appendix.tex:689`-`:1157`.
- The affine-latent exclusion separately checks affine-hull dimension three
  and zero three-dimensional measure, then handles latent dimensions below,
  equal to, and above three at `5_appendix.tex:1161`-`:1524`.
- The joint-density baseline reduction is proved from an explicit conditional
  density at `5_appendix.tex:1684`-`:1883`; it is correctly restricted to
  `B=1` for exact recovery of the paper's displayed coefficient.

Adversarial checks reproduced: `d=1`, `z=0`, `q` approaching either endpoint,
all interval endpoint conventions, multiple/tangent roots, singular beta
marginals, and every full-column-rank latent dimension. No blocking issue was
found.

**Technical novelty: N3/N10, provisional.** Relative to Theorem 2 and the
bounded-density affine-latent extension in Balcan-Dick-Pegden (2020), the
averaged conditional-intercept condition and its heteroscedastic witness are
new-looking and useful. The proof mechanism itself is a direct midpoint
Lipschitz slab plus conditional-density integration; most of the novelty lies
in the condition and example rather than a new root-sweep tool. That fits
`N3`, with no fresh current search available to justify more.

**Bottom line.** Material established progress on finite anti-concentration,
but weaker target coverage than perspective 2.

## Ranking: subproblem 2

| Rank | Accepted result | P | S | N | W |
| ---: | --- | ---: | ---: | ---: | ---: |
| 1= | perspective 1 / idea 1 | 10 | 10 | 4 provisional | **8.8** |
| 1= | perspective 2 / idea 1 | 10 | 10 | 4 provisional | **8.8** |
| 3 | perspective 3 / idea 1 | 7 | 10 | 4 provisional | **7.6** |

The first-place tie is genuine under the requested ordinal rubric. The two
branches give different sufficient normalizations but share much of the same
coefficient-space area-formula and exact monic-recovery machinery.

### 1=. Perspective 1 / idea 1: anchored unit-range presentation

**Advertised theorem.** Under a common Pfaffian chain whose values lie in the
unit box, a literal constant feature `Q_1=1`, and exposed coefficient budgets,
the theorem derives

\[
\Gamma_{proj}(F)\leq
\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}
\]

and hence a uniform central root bound polynomial in the displayed instance
data. The same public theorem handles affine sections, internally recovers the
exact monic Theorem 2 coefficient, and reproduces the counterexample's
`1/delta` scale. Assumptions are at
`sp-02/results/perspective_1/idea_1/theory/latex_template/1_intro.tex:54`-`:98`;
the theorem clauses are at `latex_template/3_main.tex:3`, `:46`, `:70`, `:91`,
and `:166`.

**Progress: P10/P10.** The literal anchor plus unit-range and coefficient
budgets form a natural, static, independently checkable normalization on a
nontrivial Pfaffian subclass. The theorem derives rather than assumes the
conditioning bound, is uniform over arbitrary correlated capped joint laws
and all intervals, exposes the forced metric scale through `B_Q`, and recovers
the exact polynomial baseline with the leading coefficient deterministic.
Those are every paper-level clause for an affirmative normalization answer.
The disclaimer at `3_main.tex:217`-`:221` that not every raw presentation is
normalizable is not a target deviation: the parent question asks for a
sufficient normalization, not a universal conversion theorem.

**Soundness: S10/S10.** The exact theorem is established.

- Differentiating the triangular chain gives
  `|G_i'| <= Delta B_Q(1+qB_P)` and the normalized-curve identity gives the
  displayed `h^(-1)` projective bound; see
  `latex_template/5_appendix.tex:8`-`:318`.
- The central incidence hypersurface has projection Jacobian
  `|<a,gamma'>|/sqrt(1+u^2)` and parameter Jacobian
  `1/sqrt(1+u^2)`. Area then coarea gives the multiplicity-safe coefficient
  volume inequality at `5_appendix.tex:322`-`:615`.
- Ball's `sqrt(2)` cube-section bound and `||a|| <= R sqrt(N)` produce exactly
  `kappa R sqrt(N) sqrt(2)(2R)^(N-1) = A sqrt(N/2)` at
  `5_appendix.tex:620`-`:776`. I independently reproduced this coefficient.
- The affine charts are exhausted at `|F_j| >= 1/m`; their exact determinant
  is `|partial_theta T_j|`, and area-formula multiplicity handles tangent,
  multiple, and persistent roots. The full exhaustion and limit are proved at
  `5_appendix.tex:943`-`:1402`.
- The monic two-pivot specialization gives inner velocity
  `d+R d(d-1)/2`, outer velocity at most the same, and a disjoint two-cell
  length ledger with no factor two; see `5_appendix.tex:1407`-`:1858`.
- Direct wedge integration gives `epsilon/(4 delta)` and the normalized speed
  is `1/delta`; see `5_appendix.tex:1862`-`:2126`.

The audit reproduced `N=1`, `q=0`, `Delta=0`, stationary normalized curves,
all interval endpoints, tangent/multiple/infinite fibers, vanishing pivots,
`d=1,2`, negative outer parameters, and `epsilon=delta`. The Federer area and
coarea statements and Ball section theorem are stated with the dimensions and
objects actually used; no citation upgrades the conclusion.

**Technical novelty: N4/N10, provisional.** Edelman-Kostlan already provides
normalized evaluation-curve zero geometry, Ball provides cube sections, and
Balcan-Dick-Pegden provides polynomial/affine sweeps. The new proof-critical
part is the explicit bridge from a bounded common Pfaffian-chain presentation
to projective speed, integrated with a fully rigorous arbitrary-density sweep
and exact affine recovery. This is a nontrivial synthesis, but the component
tools and chain-rule bridge are standard enough that, absent a fresh
nearest-neighbor search, `N4` is the defensible cap.

**Bottom line.** A mathematically complete affirmative solution to Open
Question 2 under the rubric's sufficient-normalization reading.

### 1=. Perspective 2 / idea 1: anchored derivative closure

**Advertised theorem.** A literal constant feature and supplied polynomial
matrix identity `tilde F' = B tilde F` yield projective conditioning bounded by
the explicit coefficient-height `Lambda_hat`. The theorem proves both an
affine swept-section bound and a sharper homogeneous bound, internally recovers
Theorem 2, and registers Counter-example 1. The primitive certificate is at
`sp-02/results/perspective_2/idea_1/theory/latex_template/1_intro.tex:100`;
the exact theorem is at `latex_template/3_main.tex:3`, with affine,
homogeneous, monic, and scale clauses at `:25`, `:42`, `:63`, `:85`, and
`:127`.

**Progress: P10/P10.** The derivative-closure identity is a static symbolic
certificate, not a root-event or anti-concentration assumption. Its coefficient
height changes by `1/delta` in the paper's counterexample and is explicitly
computable for monomial, exponential, and exponential-polynomial dictionaries.
The resulting bounds are uniform over laws and intervals, polynomial in the
declared certificate data, and recover the exact monic baseline in the original
`d` random lower coefficients. Thus it satisfies every affirmative
normalization clause. The explicit nonclaim about unrestricted presentations at
`3_main.tex:154`-`:157` does not violate the paper's existential sufficient-
normalization endpoint.

**Soundness: S10/S10.** The exact theorem is established.

- Coefficient-height evaluation gives
  `sup ||B(theta)||_op <= Lambda_hat`; in the homogeneous case derivative
  closure yields
  `gamma'=(I-gamma gamma^T)B_F gamma`. These are proved at
  `latex_template/5_appendix.tex:7`-`:456`.
- Persistent-root coefficients form an empty set or proper affine subspace and
  are law-null (`5_appendix.tex:459`-`:755`). The measurable pivot exhaustion,
  exact original-coordinate determinant, and multiplicity-safe area bound are
  complete at `:758`-`:1399`.
- Fixed-section parametrization and pivot cancellation give the coordinate-free
  affine swept-area integral at `5_appendix.tex:1400`-`:2001`.
- Brunn-Minkowski central maximality plus Ball's theorem gives every translated
  cube section volume at most `sqrt(2)(2R)^(N-1)`
  (`5_appendix.tex:2004`-`:2265`). On a root section,
  `||tilde F|| <= sqrt(1+NR^2)||F||` and `||(1,a)||` has the same bound, so
  the affine velocity factor is exactly `(1+NR^2)Lambda_hat`; see
  `5_appendix.tex:2268`-`:2959`.
- In the homogeneous section the radial derivative cancels exactly; combining
  it with the section bound reproduces `A sqrt(N/2)` at
  `5_appendix.tex:2962`-`:3474`.
- The constant derivative-shift matrix for
  `(theta^d,1,theta,...,theta^(d-1))` has squared Frobenius norm
  `sum_{k=1}^d k^2`. The two monic velocities and exact cube ledger are proved
  at `5_appendix.tex:3478`-`:4523`; the counterexample speed and wedge
  probability are at `:4526`-`:5032`.

I independently recomputed the matrix entries, section velocity factor, monic
charts, and wedge probability, and stress-tested zero certificate, `N=1`,
vanishing pivots, stationary directions, persistent/tangent/multiple roots,
cube boundaries, remote monic intervals, and `epsilon=delta`. No dependency or
mode gap remains.

**Technical novelty: N4/N10, provisional.** The coefficient-space area
machinery and normalized-curve geometry have close precedents in
Balcan-Dick-Pegden, Edelman-Kostlan, Federer, and Ball. The supplied polynomial
derivative-closure certificate and its exact affine integration are a useful,
proof-critical synthesis, but the identity-to-speed step is standard linear
ODE/projective calculus. The current nearest-neighbor search could not be run,
so `N4` is provisional. Its portfolio-marginal novelty is lower than its
standalone novelty because perspective 1 proves a parallel sweep and monic
recovery.

**Bottom line.** A second mathematically complete affirmative solution to Open
Question 2, tied with perspective 1 under the requested scoring rule.

### 3. Perspective 3 / idea 1: adaptive coordinate pivot

**Advertised theorem.** For any fixed `C^1` Pfaffian affine family with no
forced root, an adaptive least-variation coordinate pivot has finite
conditioning `Gamma_piv` and yields

\[
\Pr[\exists\theta\in I:\ b(\theta)+\langle\alpha,F(\theta)\rangle=0]
\leq \kappa(2R)^{N-1}\Gamma_{piv}|I|.
\]

It also records exact `1/delta` scale and exact monic recovery. The assumptions
are at
`sp-02/results/perspective_3/idea_1/theory/latex_template/1_intro.tex:62`-`:83`;
the public theorem is at `latex_template/3_main.tex:3`.

**Progress: P7/P10.** The result proves broad fixed-family finiteness and a
uniform anti-concentration theorem without assuming projective speed. It also
handles the source counterexample and exact polynomial specialization. However,
its rate is expressed through `Gamma_piv`, whose only general bound uses raw
fixed-family amplitudes, derivatives, and a minimum pivot margin. The theorem
explicitly disclaims polynomial control in Pfaffian presentation data at
`3_main.tex:66`-`:77`. This leaves the paper's central complexity-conditioning
bridge open, so the result is substantial one-direction progress capped at
`P7`, not a full normalization answer.

**Soundness: S10/S10.** The exact theorem is established.

- Root feasibility is compact, and no-forced-root gives a positive maximum-
  coordinate margin on the feasible set. Quotient differentiation then proves
  strict finiteness of `Gamma_piv`; see
  `latex_template/5_appendix.tex:8`-`:200`.
- Extended pivot speeds are Borel, the lexicographic minimum selector is
  measurable, and the denominator exhaustions recover every selected point at
  a finite level (`5_appendix.tex:204`-`:466`).
- Each original-coordinate chart has determinant `|partial_theta T_j|`, bounded
  by its selected `V_j`. The area formula with extended multiplicity, analytic
  image measurability, and monotone exhaustion proves the coefficient-volume
  bound without a chart-count factor (`5_appendix.tex:469`-`:937`).
- Full-joint-density conversion and the exact nonempty/vacuous supremum branches
  are proved at `5_appendix.tex:940`-`:1177`.
- Direct calculation gives `Gamma_piv=1/delta` for the scale-stress family
  (`5_appendix.tex:1180`-`:1331`). Constant and highest-lower-degree pivots give
  the exact monic coefficient at `5_appendix.tex:1334`-`:1790`.

The audit reproduced empty feasible sets, zero conditioning, singleton
domains, empty law classes (`A<1`), `N=1`, tied pivots, pivots tending to zero,
tangent/multiple/persistent roots, cube faces, `delta=1`, and all monic outer
signs. Federer supplies only the correctly dimensioned equal-dimensional area
formula; Kechris supplies analytic-image measurability. Their hypotheses are
explicitly discharged.

**Technical novelty: N4/N10, provisional.** The adaptive minimum-ratio
functional, measurable least-index pivoting, and chart-count-free ledger are a
nontrivial proof-critical synthesis. The underlying coefficient sweep is close
to Balcan-Dick-Pegden and standard area-formula arguments, and the result does
not solve the new complexity bridge. With no current independent search,
`N4` is the maximum defensible score.

**Bottom line.** Substantial established fixed-family finiteness, but not the
paper-requested polynomial normalization theorem.

## Verification note

All five public bundles passed static inspection for placeholders and omitted-
proof markers. A fresh Tectonic build was attempted for every bundle, but the
installed Tectonic binary failed before TeX processing with the same macOS
`system-configuration` null-object panic, including in cached-only mode. This
is an environment failure rather than an artifact defect; it does not affect
the mathematical scores. Existing compiled PDFs are present in the result
folders.
