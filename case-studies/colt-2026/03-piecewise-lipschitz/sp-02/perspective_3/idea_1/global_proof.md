# Global Proof

## Reviewed Sketch Identity

- Branch: perspective_3/idea_1
- Global unit: sketch attempt 3, global unit attempt 1
- Goal mode: exact-goal, unconditional, material_partial
- Current idea.md SHA-256: 5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836
- Current setting.md SHA-256: 91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e
- Reviewed proof_sketch.md SHA-256: 32023800de7b27eca85577e615139a5658106b35406627061879396bb35bf906
- Reviewed proof_sketch_review.md SHA-256: 3b626916a9e03b7539ee88961ad973ee2bbe2d6c3649a5bac51e8028cac5335e
- Sketch review status and viability: ACCEPTED, 10
- Current proof_tracker.md SHA-256: d4cc7213628e737fa83620117e52feb4235874a292830d86f9e4b6f0623ada00
- Current technical_survey.md SHA-256: d3dcf98ac10d1a86a10e38f1fe528b99ffa6e2fdd1b42cd226f98d03226f7603
- Binding graph: step_001; step_002 <- step_001; step_003 <- step_001,step_002; step_004 <- step_001,step_003; step_005 <- step_001; step_006 <- step_001,step_004.

Identity and input-contract preflight passed. The accepted attempt-3 sketch is
the only binding roadmap. The pre-overwrite attempt-2 global proof with
SHA-256 fcb7dc635362de5be5c61bbaf858c09ed9795863e8cdd5598247666d45b178b0
and global review with SHA-256
51006b10c890f501de7e1f6dd672a2ce07502b82251fcd58bbeef81ea006805b
are archived under proof_history/sketch_002/global/attempt_001/ and are
nonbinding diagnostic history only. They supply no current proof evidence,
acceptance, or sketch-attempt-3 interface. All six current steps require fresh
attempt-3 proofs and fresh reviews.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Fix \(N\ge 1\), \(R>0\), \(\kappa\in(0,\infty)\), a compact interval
\(\Theta\subset\mathbb R\), and

\[
\phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle,
\qquad F=(F_1,\ldots,F_N).
\]

Assume exactly assump:shared-pfaffian-chain, assump:no-forced-root, and
assump:joint-density-cap. Thus \(b,F_1,\ldots,F_N\) are \(C^1\) in the
declared one-dimensional Balcan--Nguyen--Sharma Pfaffian convention,
\((b(\theta),F(\theta))\ne(0,0)\) on \(\Theta\), and every admissible law has
an arbitrary, possibly correlated, joint density supported on
\([-R,R]^N\) and capped by \(\kappa\). Set \(A=(2R)^N\kappa\), and use
exactly the setting's \(K_R\), \(V_j\), and
\(\Gamma_{\rm piv}(b,F;R)\).

The attempted theorem is the following exact conjunction.

1. The fixed-family quantity \(\Gamma_{\rm piv}(b,F;R)\) is finite. For every
   \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
   \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
   \le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert
   =\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert.
   \]
   Consequently, with the interval supremum inside the law supremum,
   \[
   \sup_{\mu\in\mathcal D_{N,R,\kappa}}
   \sup_{\substack{I\subseteq\Theta\text{ interval}\\\lvert I\rvert>0}}
   \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
   \phi_\alpha(\theta)=0]}{\lvert I\rvert}
   \le\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}.
   \]
   The law class is nonempty if and only if \(A\ge1\), and the
   positive-length interval index is nonempty if and only if
   \(\lvert\Theta\rvert>0\). These are derived semantic checks, not
   assumptions. If both classes are nonempty, the ordered supremum is a
   finite nonnegative real and is the usual anti-concentration capacity. If
   either class is empty, the displayed
   inequality remains a literal vacuous extended-real inequality under
   \(\sup\varnothing=-\infty\), and no finite nonnegative capacity language
   is applied to that branch.
2. For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\) on \([-1,1]\),
   \(R=1\), and \(0<\delta\le1\),
   \[
   \Gamma_{\rm piv}(b_\delta,F_\delta;1)=\frac1\delta.
   \]
   This is the entire scale-stress target. It introduces no
   \(\epsilon\)-dependent law, wedge probability, or other distributional
   conclusion.
3. For every \(d\ge1\), with \(b_d(\theta)=\theta^d\),
   \(F_d(\theta)=(1,\theta,\ldots,\theta^{d-1})\), and only the \(d\) lower
   coefficients random,
   \[
   \Gamma_{\rm piv}(b_d,F_d;R)\le d+\frac{Rd(d-1)}2.
   \]
   Every \(\mu\in\mathcal D_{d,R,\kappa}\) and every bounded interval
   \(I\subset\mathbb R\) then satisfy
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:p_\alpha(\theta)=0]
   \le \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
   \]
   The identity \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) is literal, the
   leading coefficient is deterministic and outside the random vector, and
   arbitrary correlation among the lower coefficients remains allowed.

All probability statements are ordinary-probability bounds with no hidden
constant, asymptotic mode, horizon, confidence parameter, independence
premise, simple-root premise, or transversality premise. The exposed general
quantities are exactly \(N,R,\kappa,A,\Gamma_{\rm piv}\), and interval length;
\(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) are fixed-family descriptors with
no direct factor. The theorem makes no polynomial general-instance estimate
of \(\Gamma_{\rm piv}\) from those descriptors or any other Pfaffian-format
data. That unresolved full-source question remains outside this exact
material_partial theorem.

## Whole-Proof Draft

### Block G1: Supported-root feasibility and fixed-family finiteness (step_001)

Suppose \(\alpha\in[-R,R]^N\) and \(\phi_\alpha(\theta)=0\). Then

\[
\lvert b(\theta)\rvert
=\lvert\langle\alpha,F(\theta)\rangle\rvert
\le\sum_{i=1}^N\lvert\alpha_i\rvert\lvert F_i(\theta)\rvert
\le R\lVert F(\theta)\rVert_1,
\]

so every supported root lies in \(K_R\). Continuity makes \(K_R\) closed in
compact \(\Theta\), hence compact. If \(K_R=\varnothing\), no supported root
exists and the definition gives \(\Gamma_{\rm piv}=0\).

Assume \(K_R\ne\varnothing\). If \(F(\theta)=0\) at a point of \(K_R\), then
the feasibility inequality forces \(b(\theta)=0\), contradicting
assump:no-forced-root. Hence

\[
g(\theta):=\max_{1\le j\le N}\lvert F_j(\theta)\rvert>0
\quad\text{on }K_R,
\qquad
\rho:=\min_{\theta\in K_R}g(\theta)>0.
\]

Define the proof-local finite controls

\[
B_0=\max_{\theta\in\Theta}
\max\{\lvert b(\theta)\rvert,\lvert F_1(\theta)\rvert,\ldots,
\lvert F_N(\theta)\rvert\},
\]
\[
B_1=\max_{\theta\in\Theta}
\max\{\lvert b'(\theta)\rvert,\lvert F_1'(\theta)\rvert,\ldots,
\lvert F_N'(\theta)\rvert\}.
\]

At each \(\theta\in K_R\), choose \(j\) with
\(\lvert F_j(\theta)\rvert=g(\theta)\ge\rho\). For \(h=b\) or \(h=F_i\),
the quotient rule yields

\[
\left\lvert\left(\frac h{F_j}\right)'\right\rvert
=\frac{\lvert h'F_j-hF_j'\rvert}{\lvert F_j\rvert^2}
\le\frac{2B_0B_1}{\rho^2}.
\]

Consequently,

\[
\min_{1\le j\le N}V_j(\theta)
\le\frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr)
\quad(\theta\in K_R),
\]

which proves \(\Gamma_{\rm piv}(b,F;R)<\infty\). The quantities
\(B_0,B_1,\rho\) witness fixed-family finiteness only; they are not hidden
public-rate constants or a polynomial Pfaffian-format estimate.

### Block G2: Measurable pivot charts and exact graph algebra (step_002)

On \(U_j=\{F_j\ne0\}\), \(V_j\) is continuous. Its extension by \(+\infty\)
on \(U_j^c\) is extended-real Borel. Block G1 guarantees at least one finite
coordinate at every point of \(K_R\). The least minimizing cell has the
explicit Borel representation

\[
E_j=K_R\cap\{V_j<\infty\}
\cap\bigcap_{i<j}\{V_j<V_i\}
\cap\bigcap_{i>j}\{V_j\le V_i\}.
\]

Thus \((E_j)_{j=1}^N\) is a disjoint Borel partition of \(K_R\), and
\(E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}\uparrow E_j\).

For \(\beta=\alpha_{-j}\), let \(\Psi_j(\theta,\beta)\) insert
\(T_j(\theta,\beta)\) in coordinate \(j\) and retain \(\beta\) in every other
original coefficient coordinate. Direct substitution gives

\[
b(\theta)+\langle\Psi_j(\theta,\beta),F(\theta)\rangle=0,
\]

and direct quotient differentiation gives

\[
\partial_\theta T_j
=-\left(\frac b{F_j}\right)'
-\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'.
\]

Therefore, on \(E_j\times[-R,R]^{N-1}\),

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\le V_j(\theta)=\min_iV_i(\theta)
\le\Gamma_{\rm piv}(b,F;R).
\]

After a coordinate permutation, the derivative matrix of \(\Psi_j\) has an
\((N-1)\)-dimensional identity block in the \(\beta\) variables. Hence

\[
J_N\Psi_j=\lvert\det D\Psi_j\rvert
=\lvert\partial_\theta T_j\rvert.
\]

For \(N=1\), the beta space is \([-R,R]^0\), its zero-dimensional volume is
one, and the displayed Jacobian is the scalar derivative. No transformed,
weighted, or augmented coefficient object appears.

### Block G3: Exact event coverage, measurability, and swept volume (step_003)

Fix an interval \(I\subseteq\Theta\), and define

\[
D_{j,m}=\{(\theta,\beta):\theta\in I\cap E_{j,m},\
\beta\in[-R,R]^{N-1},\
\lvert T_j(\theta,\beta)\rvert\le R\},
\]
\[
S_I=\{\alpha\in[-R,R]^N:\exists\theta\in I,\
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}.
\]

Each \(D_{j,m}\) is Borel and \(\Psi_j\) is Borel there. Kechris (1995),
Section 14, Proposition 14.4, applies to the analytic Borel domain and Borel
map into Euclidean standard Borel space, so each
\(\Psi_j(D_{j,m})\) is analytic. Independently, the incidence set

\[
Z_I=\{(\theta,\alpha)\in(I\cap\Theta)\times[-R,R]^N:
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
\]

is Borel, and its continuous coefficient projection is \(S_I\). The same
proposition therefore makes \(S_I\) analytic. Kechris (1995), Section 21,
Theorem 21.10, makes analytic Euclidean sets universally measurable. Applied
to normalized Lebesgue measure on the bounded coefficient cube, it yields the
Lebesgue-completed measurability required here. These Kechris interfaces
supply measurability, not volume.

On the relative open nonzero-pivot chart, \(\Psi_j\) is \(C^1\) and locally
Lipschitz. For a nondegenerate compact interval, the branch's \(C^1\)
functions admit explicit endpoint extensions by their endpoint affine
tangents; for a degenerate interval no positive-length \(I\) exists and G3 is
not needed. After this current-notation extension, cover the chart by
countably many relatively compact rational boxes, refine them into a
disjoint Borel domain partition, and use bounded derivatives on each box plus
a coordinatewise Lipschitz extension. Federer's (1969) Section 3.2.3 area
formula then applies on every measurable localized piece. Its current-object
mapping is \(m=n=N\), source coordinates \((\theta,\beta)\), target
coordinates the original \(\alpha\), normalized
\(\mathcal H^N=\lambda_N\), and
\(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\). With extended multiplicity,

\[
\int_DJ_N\Psi_j\,d\lambda_N
=\int_{\mathbb R^N}N(\Psi_j,D,a)\,d\lambda_N(a),
\]

so multiplicity at least one on the image gives, after summing the disjoint
localizations,

\[
\lambda_N(\Psi_j(D_{j,m}))
\le\int_{D_{j,m}}\lvert\partial_\theta T_j\rvert\,d\lambda_N.
\]

Federer does not require injectivity, finite fibers, regular values,
transversality, or simple roots. It supplies neither chart selection nor root
coverage, the derivative bound, the beta-cube factor, density conversion, or
control of \(\Gamma_{\rm piv}\).

The chart images cover the event exactly:

\[
S_I=\bigcup_{j=1}^N\bigcup_{m=1}^{\infty}\Psi_j(D_{j,m}).
\]

Indeed, a supported root is in \(K_R\), has a unique selected cell \(E_j\),
has \(F_j\ne0\), enters a finite exhaustion level, and satisfies
\(T_j=\alpha_j\). Conversely, every chart point satisfies the original root
identity. This is exact equality in the original coefficient space, so the
residual-to-target term is zero.

For fixed \(j\), \(D_{j,m}\) and their images increase with \(m\). Analytic
measurability, continuity from below, and monotone convergence for the
nonnegative Jacobian give

\[
\begin{aligned}
\lambda_N\left(\bigcup_m\Psi_j(D_{j,m})\right)
&=\lim_m\lambda_N(\Psi_j(D_{j,m}))\\
&\le\lim_m\int_{D_{j,m}}J_N\Psi_j
=\int_{D_j}J_N\Psi_j,
\end{aligned}
\]

where \(D_j=\bigcup_mD_{j,m}\). Tonelli, the beta-cube volume, and Block G2
give

\[
\int_{D_j}J_N\Psi_j
\le(2R)^{N-1}\int_{I\cap E_j}V_j(\theta)\,d\theta.
\]

Finite image subadditivity and the disjoint parameter cells now yield

\[
\begin{aligned}
\lambda_N(S_I)
&\le(2R)^{N-1}\sum_{j=1}^N
\int_{I\cap E_j}V_j(\theta)\,d\theta\\
&\le(2R)^{N-1}\Gamma_{\rm piv}
\sum_{j=1}^N\lvert I\cap E_j\rvert\\
&=(2R)^{N-1}\Gamma_{\rm piv}\lvert I\cap K_R\rvert\\
&\le(2R)^{N-1}\Gamma_{\rm piv}\lvert I\rvert.
\end{aligned}
\]

The equality in the third line is the no-chart-count-loss mechanism.
Tangencies and multiple or infinite fibers cause no remainder: extended
multiplicity can only enlarge the area-formula integral.

### Block G4: Pairwise density conversion, then ordered suprema (step_004)

Block G4 consumes Block G1 directly for strict finiteness. It consumes Block
G3 only for event measurability and coefficient volume. For a fixed admissible
law \(\mu\) and a fixed positive-length interval \(I\), cube support and the
full joint-density ceiling give first the pairwise inequality

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}(S_I)
&=\int_{S_I}f_\mu(\alpha)\,d\alpha\\
&\le\kappa\lambda_N(S_I)\\
&\le\kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)\lvert I\rvert\\
&=\frac{A\Gamma_{\rm piv}(b,F;R)}{2R}\lvert I\rvert.
\end{aligned}
\]

No product decomposition, marginal cap, conditioning, or independence is
used; the arbitrary correlation is already inside the same full density.
The last line is the exact identity
\(\kappa(2R)^{N-1}=A/(2R)\).

Only after this pairwise result is established are the ordered suprema taken.
The law class is nonempty exactly when \(A\ge1\): necessity follows from

\[
1=\int_{[-R,R]^N}f_\mu\,d\lambda_N
\le\kappa(2R)^N=A,
\]

and sufficiency follows from the uniform cube density
\((2R)^{-N}\mathbf 1_{[-R,R]^N}\le\kappa\). Since \(\Theta\) is a compact
interval, its positive-length interval index is nonempty exactly when
\(\lvert\Theta\rvert>0\). These are consequences of existing definitions,
not theorem assumptions.

If \(A\ge1\) and \(\lvert\Theta\rvert>0\), divide the pairwise inequality by
\(\lvert I\rvert\), take the interval supremum for each fixed law, and then
take the law supremum. Block G1 makes the common upper bound finite, while
nonemptiness and nonnegative probabilities make the ordered supremum a finite
nonnegative anti-concentration capacity. If either index class is empty, the
universal pairwise
statement is vacuous where appropriate, and the displayed ordered supremum is
\(-\infty\) under the standard convention \(\sup\varnothing=-\infty\). The
same extended-real inequality remains true, but that branch is not labeled a
capacity. Suprema introduce no accumulated error or union bound.

### Block G5: Exact static scale-stress certificate (step_005)

For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\), and \(R=1\), the
feasibility inequality is automatic, so \(K_1=[-1,1]\). The constant pivot
gives

\[
V_1(\theta)=\left\lvert\left(\frac{\theta}{\delta}\right)'\right\rvert
=\frac1\delta.
\]

For \(\theta\ne0\), the second pivot gives

\[
V_2(\theta)
=\left\lvert\left(\frac{1}{\theta/\delta}\right)'\right\rvert
=\frac{\delta}{\theta^2},
\]

and \(V_2(0)=+\infty\). Thus the pointwise minimum is at most
\(1/\delta\) everywhere and equals \(1/\delta\) at zero. Therefore

\[
\Gamma_{\rm piv}(b_\delta,F_\delta;1)
=\sup_{\theta\in[-1,1]}\min\{V_1(\theta),V_2(\theta)\}
=\frac1\delta.
\]

This block ends at the authoritative static identity. It creates no law,
\(\epsilon\), wedge event, or probability target.

### Block G6: Exact affine-monic baseline recovery (step_006)

Let \(d\ge1\), \(b_d(\theta)=\theta^d\), and
\(F_d=(1,\theta,\ldots,\theta^{d-1})\). For
\(\lvert\theta\rvert\le1\), the constant pivot is legal and

\[
\begin{aligned}
V_{\rm const}(\theta)
&=d\lvert\theta\rvert^{d-1}
+R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}\\
&\le d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\end{aligned}
\]

For \(d\ge2\) and \(\lvert\theta\rvert>1\), pivot on
\(\theta^{d-1}\). Since \(b_d/\theta^{d-1}=\theta\), and after writing
\(m=d-1-k\) for the remaining monomials,

\[
V_{\rm top}(\theta)
=1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\le1+R\sum_{m=1}^{d-1}m
\le d+\frac{Rd(d-1)}2.
\]

For \(d=1\), the constant and top labels are the same coordinate, both sums
are empty, and \(V=1\). The constant pivot covers zero and
\(\lvert\theta\rvert=1\); the top pivot is used only on
\(\lvert\theta\rvert>1\). Hence every parameter has a legal pivot bounded by

\[
C_d:=d+\frac{Rd(d-1)}2,
\qquad
\Gamma_{\rm piv}(b_d,F_d;R)\le C_d
\]

on every compact localization.

If \(I\subset\mathbb R\) is a positive-length bounded interval, choose a
compact interval \(\Theta\) containing its closure. The pointwise pivot bound
is independent of that auxiliary localization, all primitive assumptions
hold, and

\[
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta)
\]

for the identical \(d\)-vector of random lower coefficients. Applying only
the pairwise output of Block G4, not its supremum interpretation, gives

\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\le\kappa(2R)^{d-1}C_d\lvert I\rvert.
\]

The descriptor tuple is exactly \(q=0\), \(M=0\), \(N=d\),
\(\Delta_{\rm rnd}=d-1\), \(\Delta_{\rm aff}=d\), and
\(A=(2R)^d\kappa\). If a bounded interval has zero length, it is empty or a
singleton. The empty case is immediate; for a singleton, the event is one
proper affine hyperplane because \(F_d\) contains the constant coordinate
one. It has Lebesgue and admissible-law probability zero, matching the zero
right-hand side. Thus positive-length, zero-length, \(d=1\), zero, and unit
boundary cases all retain the literal Theorem 2 constant.

### Final assembly

Block G1 proves the separate strict-finiteness clause. Blocks G1--G4 prove the
pairwise affine probability theorem; Block G4 then proves the ordered-supremum
consequence with the exact nonempty/vacuous branch semantics. Block G5 proves
only the exact \(1/\delta\) static scale certificate. Block G6 uses only the
pairwise affine output and exact polynomial algebra to recover the monic
baseline. Every consumer follows its legal producer, every object transfer is
an identity in the original coefficient space, and no generated condition is
promoted to a theorem assumption. These outputs are exactly the conjunction
in setting.md. Polynomial general-instance control of \(\Gamma_{\rm piv}\)
remains explicitly unresolved and outside the claim.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: supported-root feasibility and finite conditioning | Proves root localization, a positive available-pivot margin, and strict finiteness | step_001 | None | assump:shared-pfaffian-chain, assump:no-forced-root | None |
| G2: measurable exact charts | Produces disjoint Borel cells, exhaustion, original-coordinate graph maps, and exact Jacobian control | step_002 | G1 / step_001 | Primitive \(C^1\) regularity plus G1 controls | None |
| G3: measurable swept coefficient volume | Proves exact event coverage, measurability, and coefficient-volume rate | step_003 | G1, G2 / step_001, step_002 | Primitive regularity/no-forced-root, derived charts, exact cited-tool hypotheses | None |
| G4: pairwise probability and branch-qualified scope | Proves the correlated-law pairwise inequality before ordered suprema; consumes G1 directly for finiteness and G3 only for measurability/volume | step_004 | G1, G3 / step_001, step_003 | assump:joint-density-cap plus G1 and G3 outputs | None |
| G5: static scale audit | Proves exactly \(\Gamma_{\rm piv}(b_\delta,F_\delta;1)=1/\delta\) | step_005 | G1 / step_001 | Exact specialized deterministic family | None |
| G6: affine-monic bridge | Proves the two-pivot certificate and literal correlated-law Theorem 2 bound | step_006 | G1, pairwise G4 / step_001, step_004 | Exact specialized primitive assumptions | None |
| Final conjunction | Joins G1, G4, G5, and G6 without changing target or branch semantics | Direct assembly | G1--G6 | Exactly the three primitive assumptions | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | G1 and final strict-finiteness clause | Direct producer for step_002, step_003, step_004, step_005, step_006 | Supported-root lemma; compact positive-pivot lemma; quotient bound; empty-\(K_R\) branch | Fixed-family finiteness only; no polynomial Pfaffian-format bound |
| step_002 | G2 | Consumes step_001; produces only for step_003 | Borel extended speeds; least-index partition; exhaustion; graph, derivative, determinant | Original coefficient coordinates; no global prescribed pivot |
| step_003 | G3 | Consumes step_001,step_002; produces only measurability/volume for step_004 | Kechris applications; Lipschitz localization; Federer application; coverage; monotone limit; disjoint-cell budget | It does not export G1 finiteness |
| step_004 | G4 and main affine conclusion | Consumes step_001 directly for finiteness and step_003 for measurability/volume; pairwise output goes to step_006 | Density domination; exact algebra; class nonemptiness equivalences; interval-then-law suprema; empty branches | \(A\ge1\) and \(\lvert\Theta\rvert>0\) are conclusions, not assumptions |
| step_005 | G5 and scale clause | Consumes current attempt-3 step_001 definitions | Two-pivot calculation including \(\theta=0\); exact supremum | Static \(1/\delta\) only; fresh dependency hashes required |
| step_006 | G6 and monic clause | Consumes step_001 and only pairwise step_004 output | Two pivots; \(d=1\); localization; zero-length nullity; object/descriptor bridge; substitution | No random leader and no supremum-semantic dependency |

## Dependency And Assumption Audit

The accepted graph is exactly

\[
\begin{gathered}
\mathrm{step\_001},\qquad
\mathrm{step\_002}\leftarrow\mathrm{step\_001},\\
\mathrm{step\_003}\leftarrow
(\mathrm{step\_001},\mathrm{step\_002}),\qquad
\mathrm{step\_004}\leftarrow
(\mathrm{step\_001},\mathrm{step\_003}),\\
\mathrm{step\_005}\leftarrow\mathrm{step\_001},\qquad
\mathrm{step\_006}\leftarrow
(\mathrm{step\_001},\mathrm{step\_004}).
\end{gathered}
\]

It is acyclic and earlier-only. In particular, G1 is the direct legal source
of strict finiteness for G4; G3 is not treated as retransmitting that result.

| Theorem-facing condition or object | Provenance class | Producer or source | Consumers | Audit result |
| ---------------------------------- | ---------------- | ------------------ | --------- | ------------ |
| \(C^1\) regularity and descriptor convention | primitive condition | assump:shared-pfaffian-chain | G1--G3 and specializations | Valid; descriptors do not become rate factors |
| No coefficient-independent forced root | primitive condition | assump:no-forced-root | G1 and chart consumers | Valid lower/nondegeneracy source on \(K_R\) |
| Cube support and full joint-density cap | primitive condition | assump:joint-density-cap | G4 and G6 | Valid; no independence or marginal cap substituted |
| Root feasibility, \(\rho>0\), finite \(\Gamma_{\rm piv}\) | derived control | G1 / step_001 | G2--G6, final finiteness | Legal same-object flow; G4 consumes directly |
| Borel cells, exhaustion, \(T_j,\Psi_j\), Jacobian bound | derived control | G2 / step_002 | G3 | Legal original-coordinate flow |
| Measurable \(S_I\) and coefficient-volume bound | derived control | G3 / step_003 | G4 | Legal cited-tool-backed flow; no finiteness export |
| Pairwise arbitrary-correlated affine probability theorem | derived control | G4 / step_004 | G6, final assembly | Produced before suprema; zero-residual transfer |
| Law/interval class nonemptiness equivalences | derived semantic checks | Integration, uniform cube law, interval geometry in step_004 | Supremum interpretation only | Valid; neither is assumed |
| Exact \(1/\delta\) conditioning value | derived control | G5 / step_005 | Final scale clause | Exact static target; no probability output |
| Exact monic bridge and baseline rate | derived control | G6 / step_006 | Final assembly | Legal same-target baseline flow |

No generated event, local-validity condition, recurrence, stability property,
boundedness fact, or theorem conclusion is promoted to a primitive assumption.
There is no missing assumption-provenance bridge or circular dependency.

## Citation And Tool Audit

The theorem-critical preflight fixes the following exact source identities and
interfaces. Motivating whole-paper or whole-book references in
technical_survey.md are not used as proof authority in place of these
locators.

| Source or tool | Stable identity and statement role | Current-object mapping | Hypothesis discharge | Conclusion interface used | Compatibility and known nonoutputs |
| -------------- | ---------------------------------- | ---------------------- | -------------------- | ------------------------- | ---------------------------------- |
| Kechris, Classical Descriptive Set Theory, Springer GTM 156, first ed. (1995), Section 14, Proposition 14.4, p. 86 | Borel image of an analytic set under a Borel map into a standard Borel space is analytic | Sources \(D_{j,m}\subset\mathbb R^N\), \(Z_I\subset\mathbb R^{N+1}\); maps \(\Psi_j\), coefficient projection; target original \(\mathbb R^N\) | Borel sets are analytic; Euclidean spaces are Polish/standard Borel; domains/maps are Borel | Chart images and \(S_I\) are analytic | Same scalar/coefficient convention; no volume, Jacobian, coverage, density, or conditioning estimate |
| Kechris, same edition, Section 21, Theorem 21.10, p. 155 | Analytic sets are universally measurable | Analytic chart images and \(S_I\subset[-R,R]^N\) | Proposition 14.4 gives analyticity; normalized cube Lebesgue measure is finite Borel | Lebesgue-completed measurability | Same Euclidean structure; no volume, coverage, or probability control |
| Federer, Geometric Measure Theory, Springer Grundlehren 153 (1969), Section 3.2.3, p. 243 | Measurable-domain Lipschitz area formula with extended multiplicity | \(m=n=N\); source \((\theta,\beta)\); target original \(\alpha\); localized \(\Psi_j\); \(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\) | Measurable domains; endpoint extension; countable Borel Lipschitz localization; normalized \(\mathcal H^N=\lambda_N\) | \(\int_DJ_N\Psi_j=\int N(\Psi_j,D,a)d\lambda_N(a)\), hence image-volume upper bound | Equal-dimensional original coordinates; no injectivity, finite fibers, regular values, transversality, simple roots, coverage, derivative bound, beta factor, density conversion, or \(\Gamma\) control |
| Compactness, extreme values, quotient rule, finite Borel minimization | Direct current-notation derivations | Exact \(b,F,K_R,V_j\) | \(C^1\), compactness, no-forced-root | G1 margin/finiteness and G2 charts/derivative | Same objects and ratios; no metric transfer or descriptor estimate |
| Endpoint extension, Lipschitz localization, Tonelli, continuity below, monotone convergence | Standard Euclidean tools in current notation | Locally \(C^1\) insertion maps, nonnegative Jacobian, nested domains/images | Nonzero-pivot charts, Borel domains, nonnegative integrands, finite beta cube | Area preflight, exact limit, beta integration | Same Lebesgue normalization; no new margin or stochastic output |
| Density domination, cube normalization, affine-hyperplane nullity | Direct Lebesgue tools in original coefficient space | Same \(S_I\), uniform cube law, singleton monic event | Full density cap, cube volume, constant monic feature | Pairwise probability, law-class equivalence, zero-length boundary | Arbitrary correlated absolutely continuous laws; singular laws are out of scope; no independence output |

All theorem-critical sources have fixed identity, current-object mapping,
hypothesis discharge, conclusion-interface match, source-convention
compatibility, and explicit nonoutputs. No unlocated theorem family is treated
as discharged.

## Quantitative Dependence Audit

| Target | Exposed variables | Hidden constants / fixed quantities | Probability mode | Horizon / limit mode | Norm / metric mode | Specialization obligations | Baseline obligation |
| ------ | ----------------- | ----------------------------------- | ---------------- | -------------------- | ------------------ | -------------------------- | ------------------- |
| General affine theorem | \(N,R,\kappa,A,\Gamma_{\rm piv},\lvert I\rvert\) | No hidden constant; fixed family/presentation while laws and intervals vary | Ordinary pairwise probability, then interval sup inside law sup; empty branches extended-real | Every positive-length interval; no horizon/asymptotic/stopping mode | \(\ell_1\) feasibility, scalar ratio speed, coefficient \(\lambda_N\) | Exact beta volume, density conversion, \(\kappa(2R)^{N-1}=A/(2R)\); no tolerance | Remain applicable to identical monic lower-coefficient object |
| Scale certificate | \(\delta\in(0,1]\), fixed \(N=2,R=1,\Theta=[-1,1]\) | No hidden constant or formal-degree dependence | Deterministic; no law, event, wedge, or \(\epsilon\) | Static exact identity | Same pivot-variation functional | Both pivots and zero attainment | Preserve visible \(1/\delta\) |
| Monic recovery | \(d,R,\kappa,\lvert I\rvert\), \(N=d\), \(A=(2R)^d\kappa\) | No hidden constant or localization/correlation dependence | Ordinary probability for every correlated lower-coefficient law | Every bounded interval, including zero length | Original \(d\)-coefficient Lebesgue space and pivot speed | Literal two-region bound/substitution; no absorption | Exact \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\), deterministic leader external |

The only general analytic scale is the fixed family's
\(\Gamma_{\rm piv}\). The proof-local \(B_0,B_1,\rho\) establish finiteness
but do not enter the public rate. The descriptors
\(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) are fixed and recorded; no direct
factor, hidden constant, or polynomial estimate in them is claimed. No term
is dropped, dominated, or absorbed. Baseline invariance is exact identity of
the affine and polynomial objects under the same law and interval.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key control / structural source | Defect / forcing terms | Accumulation / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Locality | Noncircular closure | Entry / first-update stress | Dominance relation | Primitive controls | Generated controls | Boundary stress | Failure without mechanism |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------- | ---------------------- | ---------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | -------- | ------------------- | --------------------------- | ------------------ | ------------------ | ------------------ | --------------- | ------------------------- |
| Root feasibility, \(\rho>0\), finite \(\Gamma\) | Structural nondegeneracy and finite constant | Static fixed family on compact \(\Theta\) | Root feasibility; \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\); explicit quotient bound | No-forced-root plus compactness | Individual pivots can vanish/be small | Static pointwise selection; no accumulated defect | structural lower/upper comparison | Primitive no-forced-root; empty \(K_R\) handled; forced roots excluded | Genuine positive lower source on \(K_R\) | Same \(b,F,K_R,V_j\); zero residual | step-local | Primitive source \(\to\rho\to\Gamma\) before consumers; direct G1 to G4 | N/A: no dynamics | Largest coordinate controls denominators; \(B_0,B_1\) control numerators | \(C^1\), no forced root, cube feasibility | \(K_R,\rho,B_0,B_1,\Gamma\) | Empty \(K_R\) gives empty event; simultaneous \(F=0\) impossible on nonempty \(K_R\) | Forced root gives probability one on arbitrarily short intervals |
| Borel cells, graph, derivative/Jacobian | Generated chart and original-object coupling | Finite partition and all beta in cube | Least-index cells; exhaustion; exact derivative; \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma\) | G1 nonzero pivot and quotient algebra | Ties, zeros, small denominators | Finite partition; exact nested interface to G3 | algebraic coupling and structural lower/upper comparison | G1; zero pivot has \(V_j=+\infty\); tie rule | Nonzero pivot supplies exact graph; cube supplies \(R\)-weights | Original coordinate insertion; zero residual | step-local | G1 before G2 before G3 | Static: tie selects immediately; each nonzero pivot enters finite \(m\) | Substitution and triangle inequality; disjoint cells | \(C^1\), support radius | Pivot margin, cells, graph | Ties, \(N=1\), small nonzero pivots covered | No pivot makes graph/Jacobian undefined |
| Measurable exact event and volume bound | Measurability, multiplicity-safe volume, countable closure | Every interval; finite charts, countable exhaustion | Exact image union; area inequality; \(1_{D_{j,m}}\uparrow1_{D_j}\) | Nonnegative Jacobian and G2 velocity | Multiple/tangent/infinite fibers, boundaries, denominator approach | Accumulated Jacobian is nonnegative; continuity below/MCT exact; finite budget \((2R)^{N-1}\Gamma\lvert I\rvert\) | summable control and structural lower/upper comparison | Exact Kechris/Federer interfaces and localization; no injectivity exclusion | Federer supplies image-volume claim; Kechris measurability direction | Exact set equality in original coefficient space and \(\lambda_N\); zero residual | step-local | G1,G2 before G3; limit proves coverage | Static: every root enters a finite first level with graph active | Area inequality, monotone limit, \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\) | Regularity/no-forced-root and source hypotheses | Cells, maps, Jacobian | Endpoints, ties, \(N=1\), tangent/multiple/infinite fibers pass | Missing measurability blocks density integration; missing area control makes multiplicity unsafe |
| Pairwise correlated-law inequality | Unconditional probability and rate | Every admissible law/positive interval before suprema | \(\mu(S_I)\le\kappa\lambda_N(S_I)\le A\Gamma\lvert I\rvert/(2R)\) | Full joint-density ceiling | Correlation and density concentration | Static pairwise inequality; no classwise accumulation | structural lower/upper comparison | Joint-density cap; singular laws excluded | Full cap has exact probability-domination content | Identical \(S_I\) for volume/probability; zero residual | step-local | G3 before G4; G1 separately before finiteness use | N/A: no dynamics/mode conversion | Density domination and exact algebra | Joint cap and cube support | G3 volume | Empty event zero; bound above one valid | Singular hypersurface mass can defeat volume-to-probability transfer |
| Ordered suprema and branch semantics | Scope closure; capacity language only when nonempty | Interval sup inside law sup | Pairwise ratio bound; \(\mathcal D\ne\varnothing\iff A\ge1\); interval index nonempty iff \(\lvert\Theta\rvert>0\) | Pairwise G4, direct G1 finiteness, exact semantic checks | Empty index classes; mislabeling \(-\infty\) | Suprema add no defect; common bound uniform; empty branch exact | structural lower/upper comparison | G1, pairwise G4, density normalization, uniform cube, interval geometry | Exact sources establish class claims and finite bound | Exact pairwise ratios; empty branch exact extended-real semantics | step-local | Pairwise theorem precedes suprema; checks use class definitions | \(A=1\) admits uniform law; \(A<1\) empty; \(\lvert\Theta\rvert=0\) empty interval class | Nonempty: interval then law sup; empty: \(\sup\varnothing=-\infty\) | \(N,R,\kappa,\Theta\) | G1 finiteness and pairwise G4 | Both empty branches vacuous and not capacities | Without split, finiteness can be sourced illegally or empty sup mislabeled |
| Exact \(1/\delta\) scale | Static quantitative specialization | \(0<\delta\le1\), \([-1,1]\), \(R=1\) | \(V_1=1/\delta\); \(V_2=\delta/\theta^2\) off zero, \(+\infty\) at zero | Constant pivot and exact derivative | Second-pivot singularity/variation | Static minimum/supremum; no stochastic defect | structural lower/upper comparison | Exact family; \(\delta=0\) excluded | Global upper by \(V_1\), equality at zero | Produced value is target; zero residual | step-local | Features directly produce value | At zero constant pivot active and attains value | Pointwise upper and zero attainment | \(\delta>0\), exact features | Common definitions | \(\theta=0\), \(\delta=1\) pass; no law/wedge | Omitting scale contradicts metric audit |
| Monic certificate and Theorem 2 rate | Baseline invariance and same-target specialization | Every \(d\ge1\), correlated law, bounded interval | Constant pivot inside unit region; top pivot outside; pairwise G4 substitution | Constant/top random monomial coordinates; exact identity | Large powers, top singularity, \(d=1\), zero length, augmentation temptation | Static complementary split; global bound independent of localization | algebraic coupling and structural lower/upper comparison | Polynomial identities and pairwise G4; top only outside unit region; leader deterministic | Two legal pivots give exact global upper and preserve \(d\)-density | Affine object equals polynomial under same law/interval; zero residual | step-local | Algebra and pairwise G4 before baseline use | \(d=1\) gives \(V=1\); constant active at zero/unit boundary; singleton proper hyperplane | \(\Gamma\le d+Rd(d-1)/2\), literal rate substitution | Specialized primitive assumptions | G1 definitions, pairwise G4 | \(d=1\), zero, unit, positive/zero length pass | Constant pivot alone grows; random leader breaks law interface |

Every row is step-local. Each source is primitive, produced by an
accepted-sketch dependency, supplied by a fully preflighted citation, or a
checked direct current-notation derivation. There is no sketch/interface
defect or idea/theorem-contract defect.

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls before export | Defect split | Residual-to-target adequacy | Dominance / transfer | Margin source | Consumers | Status |
| ------------------ | -------- | -------------------------- | ------------ | --------------------------- | -------------------- | ------------- | --------- | ------ |
| Root restriction, \(\rho>0\), finite \(\Gamma\) | G1 / step_001 | Compact \(K_R\), cube inequality, no-forced-root, \(B_0,B_1\) | Small pivots handled by largest coordinate; simultaneous zero excluded; complexity control intentionally absent | Same fixed-family objects; zero residual | Explicit quotient bound with \(\rho^{-2}\) | Positive compact \(\rho\) | G2--G6, final finiteness | valid exact target; general complexity estimate out of scope |
| Borel cells, exhaustion, graph/Jacobian bound | G2 / step_002 | G1 pivot, Borel speeds, quotient rule, beta cube | Ties least-indexed; selected zero excluded; small pivots exhausted | Exact original coordinate; zero residual | Derivative plus triangle inequality | G1 pivot; \(1/m\) only exhaustion | G3 | valid |
| Measurable event and coefficient-volume bound | G3 / step_003 plus exact citations | Borel incidence/domains/maps, localization, G2 Jacobian, cube volume | Multiplicity handled by Federer; boundaries by monotone exhaustion; no volume remainder | Exact image union equals original event in same \(\lambda_N\) | Area formula, MCT, Tonelli, disjoint lengths | G2 Jacobian; no transversality margin | G4 | valid; no finiteness export |
| Pairwise probability and \(A/(2R)\) form | G4 / step_004 | G3 measurability/volume and primitive full density cap | Correlation handled by joint cap; no marginal/product defect | Same \(S_I\); zero residual | Density domination and exact algebra | Primitive \(\kappa\) | G6, assembly | valid before suprema |
| Ordered-supremum branch output | G4 / step_004 plus direct G1 | Pairwise bound, G1 finiteness, exact class checks | Empty classes are semantic branches, not assumptions/defects | Exact ratios; empty branches exact \(-\infty\) | Interval then law sup when nonempty; vacuous otherwise | Exact thresholds \(A\ge1\), \(\lvert\Theta\rvert>0\), interpretation only | Assembly only | valid; capacity language only nonempty |
| Exact scale value | G5 / step_005 | Exact derivatives and common definitions | Pivot-2 singularity handled by constant pivot; no distributional defect | Exact conditioning target; zero residual | Global upper and zero attainment | \(\delta>0\), constant coordinate | Scale clause | valid; no probability output |
| Monic certificate and exact rate | G6 / step_006 | Two pivots, pairwise G4, identical \(d\)-law | Large powers/top pivot; zero/constant; \(d=1\), zero length; no augmentation | Exact polynomial identity; zero residual | Pointwise \(\Gamma\) bound, literal substitution | Constant/top random coordinates | Monic clause | valid |

Every raw-control package supports the exact exported interface under the
accepted dependencies. There is no missing margin, defect split,
source-convention bridge, object-target bridge, or residual domination.

## Generated Output Flow

| Generated output | Producer | Consumers / final use | Dependency path | Provenance | Flow status |
| ---------------- | -------- | --------------------- | --------------- | ---------- | ----------- |
| Root feasibility, pivot margin, finite \(\Gamma\) | G1 / step_001 from first two primitive assumptions | G2--G6 and final finiteness | Primitive \(\to\) step_001 \(\to\) each consumer, including direct step_001 to step_004 | derived | valid |
| Borel partition, exhaustion, graph/Jacobian | G2 / step_002 | G3 / step_003 | step_001 \(\to\) step_002 \(\to\) step_003 | derived | valid |
| Measurable event and coefficient volume | G3 / step_003 with Kechris/Federer | G4 / step_004 | step_001,step_002 \(\to\) step_003 \(\to\) step_004; no finiteness carried | derived | valid |
| Pairwise affine probability theorem | G4 / step_004 from G3 and density cap | G6 / step_006, final assembly | step_003 plus cap \(\to\) pairwise step_004 \(\to\) step_006/assembly | derived | valid |
| Ordered-supremum branch semantics | G4 / step_004 from pairwise output, G1, semantic checks | Final assembly only | step_001,step_003 \(\to\) step_004 \(\to\) assembly; no path to step_006 | derived | valid |
| Exact scale conditioning | G5 / step_005 from specialized algebra | Final scale clause | Specialized family plus G1 definitions \(\to\) step_005 \(\to\) assembly | derived | valid |
| Exact monic bridge and Theorem 2 rate | G6 / step_006 from polynomial algebra and pairwise G4 | Final monic clause | Pairwise step_004 plus specialization \(\to\) step_006 \(\to\) assembly | derived | valid |

All generated outputs have legal producers, earlier-only dependency paths,
complete consumers, exact provenance, and same-target interfaces.

## Early Obstruction And Repair Plausibility

- Contract contradiction: none. The claim preserves the exact unconditional
  setting, assumptions, quantifiers, constants, probability mode,
  ordered-supremum order, specializations, and material_partial label.
- Mechanism witnesses: G1 has \(\rho>0\); G2 exact graph algebra; G3 exact
  analytic/area sources, nonnegative exhaustion, and disjoint-cell budget; G4
  the full density cap and direct G1 finiteness; G5 equality attained at zero;
  G6 complementary pivots and exact object equality.
- Source and convention adequacy: Kechris is used only for
  analyticity/universal measurability, Federer only for multiplicity and image
  volume, and direct tools only in exact scalar/original-coefficient
  conventions. All nonoutputs are explicit.
- Export and residual adequacy: \(T_j\) reconstructs the original coordinate,
  chart images equal \(S_I\), volume and probability use the same event, the
  scale calculation produces the target functional, and the affine monic
  object equals the target polynomial. All residuals are zero.
- Provenance and flow: every generated condition has a producer before its
  consumer. G3 does not retransmit finiteness; G4 receives it directly from
  G1. Neither \(A\ge1\) nor \(\lvert\Theta\rvert>0\) is assumed.
- Scope accumulation: the only countable accumulation is the static nested
  chart exhaustion. Its Jacobian is nonnegative, continuity below and
  monotone convergence give the exact limit, and
  \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\le\lvert I\rvert\).
  Pairwise uniformity precedes suprema, so no classwise defect accumulates.
- Entry and boundary stress: no recursive entry-state gate is triggered.
  Static activation handles every selected pivot at finite exhaustion level,
  \(K_R=\varnothing\), \(N=1\), ties, coordinate zeros, tangencies, infinite
  fibers, \(A=1\), \(A<1\), \(\lvert\Theta\rvert=0\), \(\theta=0\),
  \(\delta=1\), \(d=1\), \(\lvert\theta\rvert=1\), and zero-length monic
  intervals.
- Baseline invariance: the deterministic leader stays outside the same
  \(d\)-dimensional correlated law. Exact object equality preserves the
  original constant, dimension, probability mode, interval scope, and
  arbitrary-correlation allowance with no remainder.
- Progress boundary: no polynomial general-instance estimate of
  \(\Gamma_{\rm piv}\) from \(q,M,\Delta_{\rm rnd},\Delta_{\rm aff}\) or
  other Pfaffian-format descriptors is stated or delegated. The full-source
  gap remains explicit.
- Locality: every theorem-critical obligation is step-local under the
  unchanged accepted graph. No sketch repair or theorem-contract change is
  indicated.
- History: attempt-2 global and step artifacts remain diagnostic history only.
  No historical proof, review, or acceptance is consumed as current evidence.

## Global Gaps And Hard Steps

None

The theorem closes at the required diagnostic level. This does not certify
any local proof: every step still requires a fresh attempt-3 proof and a fresh
accepting review.

## Diagnostic Boundary Note

This global_proof.md is diagnostic only and cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target, generated
flow, scope, rate, or conclusion. Every local unit, direct derivation, cited
application, and assembly transition above must be independently established
in fresh attempt-3 step artifacts and accepted by fresh step reviews.

## Suggested Routing

None

Continue with fresh proofs and reviews for all six steps under the binding
graph, beginning with /proof-step step_001. The fresh step_003 proof must
retain the exact Kechris and Federer identities, mappings, interfaces, and
nonoutputs. The fresh step_005 proof must record complete 64-hex SHA-256
identities for the then-current attempt-3 step_001 proof and accepted review.
