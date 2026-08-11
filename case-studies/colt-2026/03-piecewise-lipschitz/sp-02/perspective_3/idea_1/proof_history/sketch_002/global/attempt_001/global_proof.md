# Global Proof

## Reviewed Sketch Identity

- Branch: perspective_3/idea_1
- Global unit: sketch attempt 2, global unit attempt 1
- Goal mode: exact-goal, unconditional, material_partial
- Current idea.md SHA-256: 5743443042dfc9c20be52d5e563ebc263b0a4a3454c7eb30034c2b811123e836
- Current setting.md SHA-256: 91119d2600ee2f787eb873796569ab53e35201e499bf81658d8a0bc1a8e7c79e
- Reviewed proof_sketch.md SHA-256: aabcf6f6302d5cfab51cc1495d683cfa353390df7bf0fa81c3beecfcb076d108
- Reviewed proof_sketch_review.md SHA-256: 56d6b16524f0935fbfeee3802f4f6fe748cf0eebfdcfcdf1a66ddce763ebc88c
- Sketch review status and score: ACCEPTED, 9
- Current proof_tracker.md SHA-256: 1718466cd0283f3a030e24b516c687aa4a54b767fb7f0da9affb60757d7ea22d
- Current technical_survey.md SHA-256: d3dcf98ac10d1a86a10e38f1fe528b99ffa6e2fdd1b42cd226f98d03226f7603
- Triggering aggregate proof_review.md SHA-256: 39e0234ca7b1412b927e0f6b0b790e1e9567e09482904a6db8ec8d01a90a5a49; its controlling diagnosis was score 6, PROOF_SKETCH_FLAW.

Identity and lineage preflight passed. The accepted attempt-2 sketch is the only binding roadmap. The archived attempt-1 global proof with SHA-256 20173ffea1c58c58bf7d217cfbe38912c9b388eff435912237c341e9803b9ab0 and archived attempt-1 global review with SHA-256 3df11de5344be2f1e8c4e8c4cecfe76db77fb5003b69bc670053defd32c60e7b are stale diagnostic history. All attempt-1 global, step, assembly, public-TeX, specialized-review, and aggregate-review artifacts are stale and cannot establish any attempt-2 claim. All six stable attempt-2 steps require fresh proofs and fresh reviews. In particular, the fresh step_005 proof must obtain the complete 64-hex SHA-256 identities of the then-current attempt-2 step_001 proof and accepted review; it must eliminate, rather than copy or truncate, the malformed attempt-1 dependency digest.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Fix \(N\ge 1\), \(R>0\), \(\kappa<\infty\), a compact interval \(\Theta\subset\mathbb R\), and the affine family

\[
\phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle,
\qquad F=(F_1,\ldots,F_N).
\]

Assume exactly assump:shared-pfaffian-chain, assump:no-forced-root, and assump:joint-density-cap. Thus \(b,F_1,\ldots,F_N\) are \(C^1\) in the stated one-dimensional Balcan--Nguyen--Sharma Pfaffian convention, \((b(\theta),F(\theta))\ne(0,0)\) on \(\Theta\), and the law of \(\alpha\) has an arbitrary correlated joint density supported on \([-R,R]^N\) and capped by \(\kappa\). Let \(A=(2R)^N\kappa\), let

\[
K_R=\{\theta\in\Theta:\lvert b(\theta)\rvert\le R\lVert F(\theta)\rVert_1\},
\]

and define \(V_j\) and \(\Gamma_{\mathrm{piv}}(b,F;R)\) exactly as in setting.md.

The attempted theorem is the exact conjunction below.

1. The fixed-family quantity \(\Gamma_{\mathrm{piv}}(b,F;R)\) is finite. For every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
   \le \kappa(2R)^{N-1}\Gamma_{\mathrm{piv}}(b,F;R)\lvert I\rvert
   =\frac{A\Gamma_{\mathrm{piv}}(b,F;R)}{2R}\lvert I\rvert.
   \]
   Consequently,
   \[
   \sup_{\mu\in\mathcal D_{N,R,\kappa}}
   \sup_{\substack{I\subseteq\Theta\text{ interval}\\\lvert I\rvert>0}}
   \frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]}{\lvert I\rvert}
   \le\frac{A\Gamma_{\mathrm{piv}}(b,F;R)}{2R}.
   \]
2. For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\) on \([-1,1]\), \(R=1\), and \(0<\delta\le1\),
   \[
   \Gamma_{\mathrm{piv}}(b_\delta,F_\delta;1)=\frac1\delta.
   \]
   This clause is static. It contains no \(\epsilon\)-dependent law or root-probability target.
3. For \(d\ge1\), \(b_d(\theta)=\theta^d\), \(F_d(\theta)=(1,\theta,\ldots,\theta^{d-1})\), and only the \(d\) lower coefficients random,
   \[
   \Gamma_{\mathrm{piv}}(b_d,F_d;R)\le d+\frac{Rd(d-1)}2,
   \]
   and every admissible correlated lower-coefficient law and every bounded interval \(I\subset\mathbb R\) satisfy
   \[
   \Pr[\exists\theta\in I:p_\alpha(\theta)=0]
   \le \kappa(2R)^{d-1}\left(d+\frac{Rd(d-1)}2\right)\lvert I\rvert.
   \]
   The equality \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) is literal, and the deterministic leading coefficient is external to the \(d\)-dimensional random law.

The scope is ordinary probability, pairwise in each law and interval and then uniform over both, with no hidden constant, asymptotic regime, horizon, confidence parameter, independence premise, simple-root premise, or transversality premise. The exposed quantitative variables are \(N,R,\kappa,A,\Gamma_{\mathrm{piv}}\), and interval length, and in the specializations \(\delta\) or \(d\). The descriptors \(q,M,\Delta_{\mathrm{rnd}},\Delta_{\mathrm{aff}}\) identify the fixed Pfaffian family but do not directly control the displayed probability constant. The theorem neither claims nor implies polynomial general-instance control of \(\Gamma_{\mathrm{piv}}\) from \(q,M,\Delta_{\mathrm{rnd}},\Delta_{\mathrm{aff}},N,R,A\), or any other Pfaffian-format descriptors. That strict boundary is why the contribution is material_partial, not full.

## Whole-Proof Draft

### Block G1: Root feasibility, compact pivot margin, and fixed-family finiteness (step_001)

A supported root is root-feasible. If \(\alpha\in[-R,R]^N\) and \(\phi_\alpha(\theta)=0\), then

\[
\lvert b(\theta)\rvert
=\lvert\langle\alpha,F(\theta)\rangle\rvert
\le\sum_{i=1}^N\lvert\alpha_i\rvert\lvert F_i(\theta)\rvert
\le R\lVert F(\theta)\rVert_1,
\]

so \(\theta\in K_R\). Continuity makes \(K_R\) closed in compact \(\Theta\), hence compact. If \(K_R=\varnothing\), no supported root exists and the definition gives \(\Gamma_{\mathrm{piv}}=0\); the general probability conclusions are then zero-equals-zero.

Assume \(K_R\ne\varnothing\). If \(F(\theta)=0\) at a point of \(K_R\), feasibility gives \(b(\theta)=0\), contrary to assump:no-forced-root. Thus

\[
g(\theta)=\max_{1\le j\le N}\lvert F_j(\theta)\rvert
\]

is continuous and strictly positive on \(K_R\), and compactness gives the nonvacuous available-pivot margin

\[
\rho:=\min_{\theta\in K_R}g(\theta)>0.
\]

Set

\[
B_0=\max_{\theta\in\Theta}\max\{\lvert b(\theta)\rvert,\lvert F_1(\theta)\rvert,\ldots,\lvert F_N(\theta)\rvert\},
\]
\[
B_1=\max_{\theta\in\Theta}\max\{\lvert b'(\theta)\rvert,\lvert F_1'(\theta)\rvert,\ldots,\lvert F_N'(\theta)\rvert\}.
\]

At each \(\theta\in K_R\), choose \(j\) with \(\lvert F_j(\theta)\rvert=g(\theta)\ge\rho\). For \(h=b\) or \(h=F_i\), the quotient rule gives

\[
\left\lvert\left(\frac h{F_j}\right)'(\theta)\right\rvert
=\frac{\lvert h'F_j-hF_j'\rvert}{\lvert F_j\rvert^2}
\le\frac{2B_0B_1}{\rho^2}.
\]

Therefore

\[
\min_{1\le j\le N}V_j(\theta)
\le \frac{2B_0B_1}{\rho^2}\bigl(1+R(N-1)\bigr)
\]

uniformly on \(K_R\), proving \(\Gamma_{\mathrm{piv}}<\infty\). The quantities \(B_0,B_1,\rho\) are proof-local witnesses of fixed-family finiteness. This bound is not, and must not be represented as, polynomial control in Pfaffian-format descriptors.

### Block G2: Borel least-pivot cells and exact original-coordinate graphs (step_002)

On \(U_j=\{F_j\ne0\}\), \(V_j\) is continuous. Extending it by \(+\infty\) on the closed complement gives an extended-real Borel function. Block G1 gives at least one finite \(V_j\) at every point of \(K_R\), so the least minimizing index exists. An explicit Borel description is

\[
E_j=K_R\cap\{V_j<\infty\}
\cap\bigcap_{i<j}\{V_j<V_i\}
\cap\bigcap_{i>j}\{V_j\le V_i\}.
\]

Thus \((E_j)_{j=1}^N\) is a finite disjoint Borel partition of \(K_R\), and

\[
E_{j,m}=E_j\cap\{\lvert F_j\rvert\ge1/m\}\uparrow E_j.
\]

For \(\beta=\alpha_{-j}\), define \(T_j\) as in the setting and let \(\Psi_j(\theta,\beta)\) be the original coefficient vector obtained by inserting \(T_j(\theta,\beta)\) in coordinate \(j\) and leaving all other coordinates equal to \(\beta\). This is exact coordinate insertion, not a transformed, weighted, or augmented coefficient vector. Direct substitution gives

\[
b(\theta)+\left\langle\Psi_j(\theta,\beta),F(\theta)\right\rangle=0.
\]

Direct quotient differentiation gives the theorem-critical interface

\[
\partial_\theta T_j
=-\left(\frac b{F_j}\right)'
-\sum_{i\ne j}\beta_i\left(\frac{F_i}{F_j}\right)'.
\]

For \(\beta\in[-R,R]^{N-1}\) and \(\theta\in E_j\),

\[
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\le V_j(\theta)
=\min_iV_i(\theta)
\le\Gamma_{\mathrm{piv}}(b,F;R).
\]

After a fixed coordinate permutation, the derivative matrix of \(\Psi_j\) has an \((N-1)\)-dimensional identity block in the \(\beta\) variables, so

\[
J_N\Psi_j=\lvert\det D\Psi_j\rvert=\lvert\partial_\theta T_j\rvert.
\]

This identity includes \(N=1\): the beta factor is the one-point space \([-R,R]^0\), its zero-dimensional Lebesgue measure is one, and the Jacobian is the scalar derivative.

### Block G3: Analytic measurability, exact image coverage, and swept volume (step_003)

Fix a Borel interval \(I\subseteq\Theta\). Define

\[
D_{j,m}=
\{(\theta,\beta):
\theta\in I\cap E_{j,m},\
\beta\in[-R,R]^{N-1},\
\lvert T_j(\theta,\beta)\rvert\le R\}
\]

and

\[
S_I=
\{\alpha\in[-R,R]^N:
\exists\theta\in I,\
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}.
\]

The sets \(D_{j,m}\) are Borel and \(\Psi_j\) is Borel on them. Kechris (1995), first edition, Section 14, Proposition 14.4, p. 86, applies because a Borel subset of Euclidean space is analytic and the Borel image of an analytic set in a standard-Borel target is analytic. Hence every \(\Psi_j(D_{j,m})\) is analytic. Independently, the incidence set

\[
Z_I=
\{(\theta,\alpha)\in(I\cap\Theta)\times[-R,R]^N:
b(\theta)+\langle\alpha,F(\theta)\rangle=0\}
\]

is Borel by continuity, and \(S_I\) is its continuous coefficient projection, so the same proposition makes \(S_I\) analytic. Kechris (1995), Section 21, Theorem 21.10, p. 155, makes analytic Euclidean sets universally measurable. Restricting and normalizing Lebesgue measure on the bounded coefficient cube converts that conclusion into measurability in the Lebesgue completion on the cube. Kechris supplies analyticity and measurability only; it supplies no volume inequality.

The area-formula source requires a Lipschitz map. The branch map is \(C^1\), hence locally Lipschitz, on the open nonzero-pivot chart. The closed-interval \(C^1\) convention permits a direct \(C^1\) extension past the endpoints of \(\Theta\). Cover each open chart by countably many compact rational boxes whose closures lie inside the chart, refine to a disjoint Borel partition, and use bounded derivatives on each containing box. A coordinatewise standard Lipschitz extension places each restriction in the ambient Euclidean source convention. Federer (1969), Section 3.2.3, p. 243, then gives, piecewise and after summing the disjoint domain partition,

\[
\lambda_N(\Psi_j(D_{j,m}))
\le\int_{D_{j,m}}J_N\Psi_j\,d\lambda_N.
\]

More explicitly, Federer's measurable-domain Lipschitz area formula says that for a Lipschitz \(f:\mathbb R^m\to\mathbb R^n\), \(m\le n\), and Lebesgue-measurable \(D\),

\[
\int_DJ_mf(x)\,d\mathcal L^m(x)
=\int_{\mathbb R^n}N(f,D,y)\,d\mathcal H^m(y),
\]

where \(N(f,D,y)=\#(D\cap f^{-1}(y))\in\mathbb N\cup\{+\infty\}\). Here \(m=n=N\), \(\mathcal H^N=\mathcal L^N=\lambda_N\) in Federer's normalized equal-dimensional convention, \(f=\Psi_j\), and \(J_Nf=\lvert\det D\Psi_j\rvert\). Since \(N(f,D,y)\ge1\) on \(f(D)\), the multiplicity identity implies the image-measure inequality. No injectivity, finite-fiber, regular-value, transversality, or simple-root condition is used. Those properties are neither source hypotheses nor source outputs.

The graph images cover exactly the root event:

\[
S_I=\bigcup_{j=1}^N\bigcup_{m=1}^\infty\Psi_j(D_{j,m}).
\]

For the forward inclusion, a supported root lies in \(K_R\), has one selected cell \(E_j\), has \(F_j\ne0\), enters some finite exhaustion level, and satisfies \(T_j=\alpha_j\). The reverse inclusion is the exact graph identity from Block G2. Thus there is no event enlargement and no residual-to-target term.

For fixed \(j\), the domains and images increase with \(m\). Analytic measurability, continuity from below, the nonnegative Jacobian, and monotone convergence yield

\[
\lambda_N\left(\bigcup_m\Psi_j(D_{j,m})\right)
=\lim_m\lambda_N(\Psi_j(D_{j,m}))
\le\lim_m\int_{D_{j,m}}J_N\Psi_j
=\int_{D_j}J_N\Psi_j,
\]

where \(D_j=\bigcup_mD_{j,m}\). Tonelli and Block G2 give

\[
\int_{D_j}J_N\Psi_j
\le(2R)^{N-1}\int_{I\cap E_j}V_j(\theta)\,d\theta.
\]

Finally, image subadditivity over the finite chart family and the disjoint parameter partition give

\[
\begin{aligned}
\lambda_N(S_I)
&\le(2R)^{N-1}\sum_{j=1}^N
\int_{I\cap E_j}V_j(\theta)\,d\theta\\
&\le(2R)^{N-1}\Gamma_{\mathrm{piv}}
\sum_{j=1}^N\lvert I\cap E_j\rvert\\
&=(2R)^{N-1}\Gamma_{\mathrm{piv}}\lvert I\cap K_R\rvert\\
&\le(2R)^{N-1}\Gamma_{\mathrm{piv}}\lvert I\rvert.
\end{aligned}
\]

The third line is the no-chart-count-loss identity. Multiple or infinite preimages only increase the multiplicity integral. Tangent or identically-zero coefficient fibers may have zero Jacobian and lower-dimensional image; the extended-multiplicity formula remains valid and introduces no positive-volume exception.

### Block G4: Full-joint-density conversion and exact uniformity (step_004)

The event \(S_I\) is Lebesgue measurable by Block G3 and is the same event whose coefficient volume was bounded. For every admissible joint density,

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
=\int_{S_I}f_\mu(\alpha)\,d\alpha
\le\kappa\lambda_N(S_I).
\]

Substitution gives, literally,

\[
\Pr_\mu(S_I)
\le\kappa(2R)^{N-1}\Gamma_{\mathrm{piv}}\lvert I\rvert
=\frac{A\Gamma_{\mathrm{piv}}}{2R}\lvert I\rvert.
\]

The source is the cap on the full joint density, so arbitrary correlation creates no marginal-density or conditioning term. This is a pairwise statement for every \((\mu,I)\); taking the law supremum and then the positive-length interval supremum adds no union bound, probability conversion, or constant. If \(K_R=\varnothing\), the event is empty. If the displayed right side exceeds one, it remains a valid upper bound and no unrecorded small-interval threshold is needed.

### Block G5: Exact static scale certificate (step_005)

For \(b_\delta=0\), \(F_\delta=(1,\theta/\delta)\), and \(R=1\), the feasibility inequality is automatic, so \(K_1=[-1,1]\). Pivoting on the constant coordinate gives

\[
V_1(\theta)
=\left\lvert\left(\frac{\theta}{\delta}\right)'\right\rvert
=\frac1\delta.
\]

For \(\theta\ne0\), pivoting on \(\theta/\delta\) gives

\[
V_2(\theta)
=\left\lvert\left(\frac{1}{\theta/\delta}\right)'\right\rvert
=\frac{\delta}{\theta^2},
\]

while \(V_2(0)=+\infty\) by the extended-pivot convention. Hence the pointwise minimum is at most \(1/\delta\) everywhere and equals \(1/\delta\) at \(\theta=0\). Therefore

\[
\Gamma_{\mathrm{piv}}(b_\delta,F_\delta;1)
=\sup_{\theta\in[-1,1]}\min\{V_1(\theta),V_2(\theta)\}
=\frac1\delta.
\]

This block ends here. It does not assert the attempt-1 \(\epsilon/(4\delta)\) probability identity or any other distributional conclusion. Its fresh proof may use the attempt-2 step_001 definitions only after recording the complete current proof and review identities.

### Block G6: Same-target affine-monic recovery (step_006)

Let \(d\ge1\), \(b_d(\theta)=\theta^d\), and \(F_d=(1,\theta,\ldots,\theta^{d-1})\). For \(\lvert\theta\rvert\le1\), the constant pivot is legal and

\[
V_{\mathrm{const}}(\theta)
=d\lvert\theta\rvert^{d-1}
+R\sum_{k=1}^{d-1}k\lvert\theta\rvert^{k-1}
\le d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2.
\]

For \(d\ge2\) and \(\lvert\theta\rvert>1\), the top random coordinate \(\theta^{d-1}\) is nonzero. Since \(\theta^d/\theta^{d-1}=\theta\), and writing \(m=d-1-k\),

\[
V_{\mathrm{top}}(\theta)
=1+R\sum_{m=1}^{d-1}\frac{m}{\lvert\theta\rvert^{m+1}}
\le1+\frac{Rd(d-1)}2
\le d+\frac{Rd(d-1)}2.
\]

For \(d=1\), the constant and top labels refer to the same sole random coordinate, the empty sums vanish, and \(V=1\) on all of \(\mathbb R\). At \(\theta=0\) and \(\lvert\theta\rvert=1\), the constant pivot applies; the top pivot is used only where it is nonzero. Thus at every parameter value a legal pivot has speed at most

\[
C_d=d+\frac{Rd(d-1)}2,
\]

so \(\Gamma_{\mathrm{piv}}(b_d,F_d;R)\le C_d\) on every compact localization.

For a positive-length bounded interval \(I\subset\mathbb R\), choose a compact interval \(\Theta\) containing its closure. The polynomial family satisfies all three primitive assumptions on this \(\Theta\), and the pivot bound is independent of the auxiliary compact interval. Moreover,

\[
b_d(\theta)+\langle\alpha,F_d(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta)
\]

for the identical \(d\)-vector of random lower coefficients. Applying Block G4 with \(N=d\) gives

\[
\Pr[\exists\theta\in I:p_\alpha(\theta)=0]
\le\kappa(2R)^{d-1}C_d\lvert I\rvert.
\]

No leading random coordinate is introduced. The descriptor mapping is exactly \(q=0\), \(M=0\), \(N=d\), \(\Delta_{\mathrm{rnd}}=d-1\), \(\Delta_{\mathrm{aff}}=d\), and \(A=(2R)^d\kappa\). If \(I\) has length zero, it is empty or a singleton. The empty case is trivial; at a singleton, \(F_d\) contains the constant coordinate one, so the coefficient event is a proper affine hyperplane in \(\mathbb R^d\), hence has Lebesgue and admissible-law probability zero. The literal zero right side is valid in every bounded-interval boundary case.

### Final assembly

Block G1 proves the general finiteness clause. Blocks G1--G4 prove the exact affine probability theorem and its two uniform suprema. Block G5 proves only the binding static scale equality. Block G6 applies the established affine theorem to the identical monic target and yields the literal Theorem 2 constant. The dependency flow is acyclic, every produced object is consumed in the same coordinates and measure space, and no generated condition is assumed. These three outputs form exactly the conjunction in setting.md. The remaining full-source question, polynomial general-instance control of \(\Gamma_{\mathrm{piv}}\), is neither required for this material_partial theorem nor assigned to a proof step.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: root feasibility and pivot finiteness | Makes every supported root chartable and proves \(\Gamma_{\mathrm{piv}}<\infty\) | step_001 | None | assump:shared-pfaffian-chain, assump:no-forced-root | None at diagnostic level; fresh local proof and review required |
| G2: measurable exact graph charts | Produces disjoint cells, exhaustion, original-coordinate graphs, and the Jacobian bound | step_002 | G1 | assump:shared-pfaffian-chain and G1 derived controls | None at diagnostic level; fresh local proof and review required |
| G3: measurable swept-volume bound | Converts chart speed to \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\mathrm{piv}}\lvert I\rvert\) with multiplicity and exhaustion handled | step_003 | G1, G2, and exact Kechris and Federer interfaces | Primitive regularity and no-forced-root assumptions; derived chart controls | None at diagnostic level; fresh local proof, review, and exact locator restatements required |
| G4: density conversion | Proves the affine probability theorem, the \(A/(2R)\) identity, and uniform suprema | step_004 | G3 | assump:joint-density-cap | None at diagnostic level; fresh local proof and review required |
| G5: scale audit | Proves exactly \(\Gamma_{\mathrm{piv}}(b_\delta,F_\delta;1)=1/\delta\) and nothing distributional | step_005 | G1 definitions | Specialized deterministic instances of the first two primitive assumptions | None at diagnostic level; fresh proof must use fresh complete dependency hashes |
| G6: monic recovery | Proves the two-pivot certificate, exact same-target bridge, and literal baseline bound | step_006 | G1, G4 | Specialized instances of all three primitive assumptions | None at diagnostic level; fresh local proof and review required |
| Final conjunction | Joins G4, G5, and G6 without changing the goal | Direct assembly role | G1--G6 | Exactly the three primitive assumptions | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | G1 and final finiteness clause | Producer for step_002, step_003, step_005, and step_006 | Root-feasibility lemma; compact positive-margin lemma; quotient-bound proposition; empty-\(K_R\) branch | Fixed-family only; no Pfaffian-format polynomial bound |
| step_002 | G2 | Consumes step_001 and produces for step_003 | Borel extended-speed lemma; least-minimizer cell lemma; exhaustion claim; exact graph and determinant calculation | Original coefficient coordinates; no global prescribed pivot |
| step_003 | G3 | Consumes step_001 and step_002 and produces for step_004 | Analytic-image application; universal-measurability wrapper; countable Lipschitz localization; Federer application; exact coverage; monotone exhaustion; no-chart-count-loss assembly | Must restate the three exact locators and known nonoutputs in the fresh proof |
| step_004 | G4 and main affine theorem | Consumes step_003 and produces for step_006 and assembly | Measurable-event density domination; exact cube factor; \(A/(2R)\) algebra; pairwise-to-uniform argument | Full joint density preserves arbitrary correlation |
| step_005 | G5 and scale clause | Consumes only current attempt-2 step_001 definitions | Two-pivot calculation including \(\theta=0\); exact supremum | Static target only; future dependency identities must be fresh complete SHA-256 values |
| step_006 | G6 and monic clause | Consumes step_001 and step_004 | Constant-pivot lemma; top-pivot lemma; \(d=1\) and boundary cases; compact localization; zero-length hyperplane argument; exact object and descriptor bridge; theorem substitution | Deterministic leading coefficient stays outside the random law |

## Dependency And Assumption Audit

The accepted dependency graph is

\[
\mathrm{step\_001}\to\mathrm{step\_002}\to\mathrm{step\_003}
\to\mathrm{step\_004}\to\mathrm{step\_006},
\]

with step_003 also depending directly on step_001, step_005 depending on step_001, and step_006 depending on step_001. It is acyclic and every consumer follows its producer.

| Theorem-facing condition or object | Provenance class | Producer or source | Consumers | Audit result |
| ---------------------------------- | ---------------- | ------------------ | --------- | ------------ |
| \(C^1\) regularity and fixed Pfaffian descriptor convention | primitive condition | assump:shared-pfaffian-chain | G1--G3 and specializations | Valid; only \(C^1\) is used in the general rate mechanism |
| No coefficient-independent forced root | primitive condition | assump:no-forced-root | G1 and all chart consumers | Valid lower and nondegeneracy source on \(K_R\) |
| Cube support and full joint-density cap | primitive condition | assump:joint-density-cap | G4 and G6 | Valid; no independence or marginal cap is substituted |
| Root feasibility, \(\rho>0\), finite \(\Gamma_{\mathrm{piv}}\) | derived control | step_001 and G1 | G2--G6 and final finiteness clause | Legal same-object flow |
| Borel cells, exhaustion, \(T_j\), \(\Psi_j\), Jacobian bound | derived control | step_002 and G2 | G3 | Legal same-coordinate flow |
| Analytic and Lebesgue-measurable \(S_I\) and coefficient-volume bound | derived control | step_003 and G3 | G4 | Legal source-backed flow |
| General affine probability theorem | derived control | step_004 and G4 | G6 and final assembly | Legal exact-event flow |
| Exact static \(1/\delta\) value | derived control | step_005 and G5 | Final assembly | Legal; no probability target added |
| Monic certificate and exact baseline probability bound | derived control | step_006 and G6 | Final assembly | Legal same-target baseline flow |

No generated event, realized trajectory, stability property, local-validity condition, recurrence, boundedness condition, or theorem conclusion is promoted to a primitive assumption. The Borel and measurable domains used inside the area-formula application are local derived facts, not public hypotheses. There is no missing derived-condition bridge and no circular use of the final probability bound.

## Citation And Tool Audit

The locator audit was run independently of the sketch-review verdict. Publisher identity records match Kechris's 1995 first edition and place Section 14 on pp. 85--88 and Section 21 on pp. 149--166; the cited proposition and theorem pages lie in those sections. Federer's original 1969 Grundlehren volume 153 and its unchanged first-edition reprint place Section 3.2 in the Rectifiability chapter, including p. 243. Statement direction, source conventions, current-object mappings, hypotheses, exact interfaces, and nonoutputs were checked as follows.

| Source or tool | Identity and locator verdict | Current-object mapping | Hypothesis discharge | Exact conclusion interface | Known nonoutputs and status |
| -------------- | ---------------------------- | ---------------------- | -------------------- | -------------------------- | --------------------------- |
| Kechris, Classical Descriptive Set Theory, Springer GTM 156, first ed. (1995), Section 14, Proposition 14.4, p. 86 | VERIFIED: Borel images of analytic sets under Borel maps into a standard Borel target are analytic | Analytic source is \(D_{j,m}\subset\mathbb R^N\) or \(Z_I\subset\mathbb R^{N+1}\); maps are \(\Psi_j\) or coefficient projection; target is \(\mathbb R^N\) | Borel sets are analytic; Euclidean spaces are Polish and standard Borel; \(\Psi_j\) and projection are Borel | Each chart image and \(S_I\) are analytic | No Lebesgue volume, Jacobian, event coverage, or \(\Gamma_{\mathrm{piv}}\) estimate; valid for step_003 |
| Kechris, same edition, Section 21, Theorem 21.10, p. 155 | VERIFIED: every analytic subset of a standard Borel or Polish space is universally measurable | Analytic chart images and \(S_I\subset[-R,R]^N\) | Analyticity comes from Proposition 14.4; normalized Lebesgue measure on the bounded cube gives the Euclidean completion consequence | Required chart-image and root-event Lebesgue measurability | No volume estimate, density conversion, or fiber regularity; Euclidean wrapper obligation discharged |
| Federer, Geometric Measure Theory, Springer Grundlehren 153 (1969), Section 3.2.3, p. 243 | VERIFIED: measurable-domain Lipschitz area formula with extended multiplicity | \(m=n=N\); domain coordinates are \((\theta,\beta)\); target is original \(\alpha\); map is each Lipschitz-localized \(\Psi_j\); \(J_N\Psi_j=\lvert\partial_\theta T_j\rvert\) | Domain pieces are Lebesgue measurable; countable \(C^1\)-to-Lipschitz localization supplies Lipschitz maps; normalized \(\mathcal H^N=\mathcal L^N\) in equal dimensions | \(\int_DJ_N\Psi_j=\int N(\Psi_j,D,a)d\lambda_N(a)\), hence \(\lambda_N(\Psi_j(D))\le\int_DJ_N\Psi_j\) | No injectivity, finite fibers, regular values, transversality, simple roots, graph coverage, beta-cube factor, density conversion, or \(\Gamma_{\mathrm{piv}}\) control; valid for step_003 |
| Closed-interval \(C^1\) extension and countable Lipschitz localization | Direct standard Euclidean tool in the branch convention | Extend \(b,F_i\) past endpoints without changing them on \(\Theta\); localize \(\Psi_j\) inside \(F_j\ne0\) | One-dimensional endpoint extensions are explicit; compact boxes inside a \(C^1\) chart have bounded derivative; disjoint Borel refinement preserves integrals | Makes the Federer global-Lipschitz interface applicable piecewise | Does not provide the area formula or volume estimate; current-notation feasibility checked |
| Quotient rule, determinant calculation, Tonelli, continuity from below, and monotone convergence | Direct standard calculus and measure tools | Ratios \(b/F_j,F_i/F_j\), insertion map \(\Psi_j\), and nested domains and images | \(F_j\ne0\) on each chart; integrands are nonnegative and measurable; chart family finite | Exact derivative, Jacobian, and limiting integral relations in G1--G3 | No hidden rate or transversality output; current-notation feasibility checked |
| Density domination and proper-affine-hyperplane nullity | Direct Lebesgue tools | Same \(S_I\subset\mathbb R^N\) for volume and probability; singleton monic event in \(\mathbb R^d\) | Full density \(f_\mu\le\kappa\); monic feature vector contains one, so a singleton equation is proper | \(\mu(S_I)\le\kappa\lambda_N(S_I)\); zero probability for zero-length singleton intervals | Does not apply to singular laws, which are outside assump:joint-density-cap; valid |

Balcan--Dick--Pegden and Azais--Wschebor motivate the affine sweep in technical_survey.md, but this diagnostic does not use a whole paper or whole book as theorem-critical authority. The three exact locators above are the only external theorem interfaces needed for the swept-volume block.

## Quantitative Dependence Audit

| Target | Exposed variables | Hidden constants and fixed quantities | Probability and horizon mode | Norm or metric mode | Exact bridge and baseline result |
| ------ | ----------------- | ------------------------------------- | ---------------------------- | ------------------- | -------------------------------- |
| General affine theorem | \(N,R,\kappa,A,\Gamma_{\mathrm{piv}},\lvert I\rvert\) | No hidden constant; fixed deterministic family and exact presentation while \(\mu,I\) vary | Ordinary probability for every law and positive-length interval; no asymptotic or stopping mode | \(\ell_1\) in \(K_R\), scalar ratio speed in \(V_j\), and \(\lambda_N\) in coefficient space | Exact beta-cube factor \((2R)^{N-1}\), exact density cap, and \(\kappa(2R)^{N-1}=A/(2R)\) |
| Static scale certificate | \(\delta\in(0,1]\) | No hidden constant; \([-1,1]\), \(R=1\), and \(N=2\) fixed | Deterministic static identity; no law, event, \(\epsilon\), or probability mode | Same ratio-speed functional | Both legal pivot speeds and \(\theta=0\) give literal \(1/\delta\) |
| Monic recovery | \(d,R,\kappa,\lvert I\rvert\), with \(N=d\) and \(A=(2R)^d\kappa\) | No hidden constant and no dependence on compact localization or correlations | Ordinary probability for every admissible correlated law and bounded interval | Same coefficient-space Lebesgue metric and ratio speed | Exact object equality and literal substitution give \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert I\rvert\) |

The descriptors \(q,M,\Delta_{\mathrm{rnd}},\Delta_{\mathrm{aff}}\) are fixed and recorded, but no displayed constant depends on them directly. The only general analytic scale is the fixed family's \(\Gamma_{\mathrm{piv}}\). The proof-local finiteness witnesses \(B_0,B_1,\rho\) are not hidden public-rate constants. No term is dropped, asymptotically dominated, or absorbed. Baseline invariance passes because the general affine theorem is applied to the identical monic object and identical \(d\)-dimensional lower-coefficient law.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------- | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Root feasibility, \(\rho>0\), finite \(\Gamma_{\mathrm{piv}}\) | Structural nondegeneracy and finite theorem constant | Static fixed family on compact \(\Theta\) | Root implies \(\lvert b\rvert\le R\lVert F\rVert_1\); \(\rho=\min_{K_R}\max_j\lvert F_j\rvert\); quotient bound \(2B_0B_1\rho^{-2}(1+R(N-1))\) | assump:no-forced-root plus compactness supplies positive denominators | Individual coordinates may vanish or be small | Static; no repeated defect; largest-coordinate selection is pointwise | structural lower/upper comparison | Primitive no-forced-root; \(K_R=\varnothing\) handled separately; forced roots excluded | Genuine positive lower source on \(K_R\), not merely an upper bound | Same \(b,F,K_R,V_j\); no surrogate and zero residual | step-local | Primitive assumptions produce \(\rho\) before every chart consumer | N/A: no iterative process | \(\lvert F_j\rvert\ge\rho\) controls both quotient denominators; \(B_0,B_1\) bound numerators | \(C^1\) regularity, no forced root, cube feasibility | \(K_R,\rho,B_0,B_1\), finite \(\Gamma_{\mathrm{piv}}\) | Empty \(K_R\) gives empty event; simultaneous \(F=0\) on nonempty \(K_R\) is impossible | A forced root gives probability one on arbitrarily short containing intervals |
| Borel cells and exact graph and Jacobian interface | Generated chart certificate | Finite static partition of \(K_R\), all beta values in cube | Least-index formula for \(E_j\); \(E_{j,m}\uparrow E_j\); \(\partial_\theta T_j=-(b/F_j)'-\sum\beta_i(F_i/F_j)'\) | G1 available nonzero pivot and exact quotient algebra | Ties, selected-coordinate zeros, small denominators, other-coordinate zeros | Finite partition; nested exhaustion has an exact producer for G3; no signed accumulation | algebraic coupling and structural upper comparison | G1 derived pivot availability; selected zero has \(V_j=+\infty\); all ties handled | Nonzero pivot supplies exactly the graph claim; beta cube supplies exact \(R\) weights | \(T_j\) solves the original equation and \(\Psi_j\) is original \(\alpha\); zero residual | step-local | G1 precedes G2 and G2 precedes G3 | N/A: static construction | Triangle inequality gives \(\lvert\partial_\theta T_j\rvert\le V_j\le\Gamma_{\mathrm{piv}}\); least index makes cells disjoint | \(C^1\) regularity and cube radius | Pivot availability, cells, exhaustion, graph map | Every nonzero selected pivot enters finite \(m\); every tie gets a unique least index | Without a pivot the graph and Jacobian are undefined |
| Measurable exact event coverage and swept-volume bound | Measurability, limiting closure, and multiplicity-safe coefficient volume | Every Borel interval; finite charts and countable exhaustion and localization | \(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\); \(\lambda_N(\Psi(D))\le\int_DJ_N\Psi\); nested limit | Nonnegative Jacobian integral plus G2 velocity certificate | Multiple, tangent, or infinite fibers; chart boundaries; denominator approach to zero | Accumulated objects are nested domains and images; defect sign is nonnegative; continuity from below and monotone convergence give the exact limit; disjoint chart budget is \(\lvert I\cap K_R\rvert\le\lvert I\rvert\) | summable control and structural upper comparison | Exact Kechris and Federer locators; countable Lipschitz localization; no injectivity boundary exclusion | Federer supplies image measure with extended multiplicity; Kechris supplies measurability in the required direction | Exact set equality in original coefficient space and same \(\lambda_N\); zero residual | step-local | G1 and G2 produce charts and bounds before G3; the limit proves rather than assumes coverage | N/A: static exhaustion; each selected nonzero pivot enters a finite first level | \(\sum_j\int_{I\cap E_j}V_j\le\Gamma_{\mathrm{piv}}\lvert I\cap K_R\rvert\); no chart-count factor | \(C^1\), no-forced-root, and Euclidean source hypotheses | Borel cells, graph maps, Jacobian bounds, measurable images | \(N=1\) beta volume one; endpoints, tangencies, ties, and infinite fibers are allowed | Missing measurability blocks density integration; missing area inequality makes multiplicity unsafe |
| Full-density probability theorem and suprema | Unconditional rate and scope closure | Every admissible law and positive-length interval | \(\mu(S_I)\le\kappa\lambda_N(S_I)\); \(\kappa(2R)^{N-1}=A/(2R)\) | Primitive full joint-density ceiling | Arbitrary correlation and density concentration near swept set | Pairwise inequality only; suprema add no accumulated error | structural upper comparison | assump:joint-density-cap; singular laws excluded by scope | Full joint cap has exactly the probability domination content required | Identical measurable \(S_I\) for volume and probability; zero residual | step-local | G3 produces measurable volume before G4 consumes it | N/A: no dynamic update or mode conversion | Pointwise density domination followed by exact algebra | Joint-density cap and support | G3 event-volume bound | Empty event gives zero; a bound above one remains valid | Without an absolutely continuous full-joint cap, hypersurface mass can invalidate conversion |
| Exact \(1/\delta\) scale certificate | Static exact quantitative specialization | \(0<\delta\le1\), \(\Theta=[-1,1]\), \(R=1\) | \(V_1=1/\delta\); \(V_2=\delta/\theta^2\) off zero and \(+\infty\) at zero | Constant pivot and \((\theta/\delta)'=1/\delta\) | Second pivot is singular at zero and varies off zero | Static pointwise minimum and supremum; no accumulated or probability defect | structural lower/upper comparison | Explicit deterministic family; \(\delta=0\) excluded by scope | Value at zero supplies the matching lower equality and \(V_1\) the global upper equality | Produced control is exactly consumed \(\Gamma_{\mathrm{piv}}\); zero residual | step-local | Specialized features directly produce the value | N/A: no process; \(\theta=0\) is the tested boundary state | Global upper \(1/\delta\) and attainment at zero close equality | \(\delta>0\), constant coordinate | Common conditioning definitions | \(\theta=0\) and \(\delta=1\) pass | Omitting the scale would contradict the fixed-family rescaling audit |
| Monic \(\Gamma_{\mathrm{piv}}\) bound and literal Theorem 2 recovery | Baseline invariance and same-target specialization | Every \(d\ge1\), correlated lower-coefficient law, bounded interval | Constant-pivot bound on \(\lvert\theta\rvert\le1\); top-pivot bound on \(\lvert\theta\rvert>1\); exact substitution into G4 | Constant and top monomial coordinates plus \(b_d+\langle\alpha,F_d\rangle=p_\alpha\) | Large-power growth, top-pivot singularity at zero, \(d=1\), interval boundaries, singular-augmentation temptation | Static disjoint region split; pointwise global bound independent of compact localization; no accumulated defect | algebraic coupling and structural upper comparison | Polynomial identities and G4; top pivot only off the unit region; no leading random coordinate | Two pivots support the upper claim on complementary regimes; density source remains \(d\)-dimensional | Produced affine object equals consumed polynomial under the same law, interval, and probability; zero residual | step-local | Direct pivot algebra and already-produced G4 precede baseline use | N/A: static specialization; \(d=1\), zero, and unit boundary traced directly | \(\Gamma_{\mathrm{piv}}\le d+Rd(d-1)/2\), then literal multiplication by \(\kappa(2R)^{d-1}\lvert I\rvert\) | Specialized primitive assumptions | G4 theorem and monic pivot certificate | \(d=1\), \(\theta=0\), \(\lvert\theta\rvert=1\), zero-length and positive-length bounded intervals pass | Constant pivot alone is unbounded at infinity; randomizing the leader breaks the law interface |

Every row is step-local: its mechanism source already exists in the primitive assumptions, an earlier accepted-sketch dependency, an exact cited interface with discharged hypotheses, or a checked direct current-notation derivation. No row requires a changed step claim, dependency, assumption, output target, generated-output flow, metric, scope, probability mode, exposed dependence, success criterion, boundary exclusion, or theorem conclusion.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Root feasibility, \(\rho>0\), finite \(\Gamma_{\mathrm{piv}}\) | G1 and step_001 | Compact \(K_R\), cube inequality, no-forced-root, \(B_0,B_1\) | Small individual pivots controlled by largest coordinate; simultaneous zero source-excluded; polynomial format control intentionally uncontrolled and outside target | Same fixed-family objects; zero transfer residual | Explicit quotient bound with \(\rho^{-2}\) | \(\rho=\min_{K_R}\max_j\lvert F_j\rvert>0\) | G2--G6 | valid for exact target; no general-complexity export claimed |
| Borel cells, exhaustion, exact graph and Jacobian bound | G2 and step_002 | G1 pivot availability, Borel \(V_j\), quotient rule, beta cube | Ties controlled by least index; selected zero excluded; small pivots exhausted; no unrelated defect | Exact original coefficient insertion; zero residual | Exact derivative plus triangle inequality | G1 nonzero pivot; \(1/m\) is only an exhaustion device | G3 | valid |
| Measurable \(S_I\) and \(\lambda_N(S_I)\le(2R)^{N-1}\Gamma_{\mathrm{piv}}\lvert I\rvert\) | G3 and step_003 with exact Kechris and Federer sources | Borel incidence, domains, maps, countable Lipschitz localizations, G2 Jacobian, beta cube | Infinite, multiple, and tangent fibers handled by extended multiplicity; chart boundaries by monotone exhaustion; no uncontrolled volume term | Exact image union equals original event in same \(\lambda_N\) space; zero residual | Area formula, monotone convergence, Tonelli, and disjoint-length identity | Jacobian bound from G2; no transversality margin | G4 | valid |
| General probability theorem and \(A/(2R)\) form | G4 and step_004 | G3 measurable volume and primitive full density cap | Correlation controlled by full joint cap; singular laws excluded by scope | Identical event for volume and probability; zero residual | \(\mu(S)\le\kappa\lambda_N(S)\) and exact algebra | Primitive \(\kappa\) | G6 and final assembly | valid |
| Exact static \(\Gamma_{\mathrm{piv}}=1/\delta\) | G5 and step_005 | Explicit deterministic derivatives and common definitions | Pivot-2 singularity at zero handled by pivot 1; no distributional defect | Identical conditioning functional; zero residual | Global upper via \(V_1\), equality attained at zero | \(\delta>0\) and constant coordinate | Final scale clause | valid; no probability output authorized |
| Monic certificate and literal baseline rate | G6 and step_006 | Two direct pivot calculations, G4, exact lower-coefficient law | Large-\(\theta\) growth handled by top pivot; zero by constant pivot; \(d=1\) separate; no augmented-law defect | Exact polynomial equality under same \(d\)-law and interval; zero residual | Pointwise \(\Gamma_{\mathrm{piv}}\) bound and literal theorem substitution | Constant and top coordinates; no auxiliary threshold | Final monic clause | valid |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Root feasibility, positive pivot margin, finite \(\Gamma_{\mathrm{piv}}\) | G1 and step_001 from first two primitive assumptions | G2--G6 and final finiteness clause | Primitive assumptions \(\to\) G1 \(\to\) listed consumers | derived | valid |
| Borel partition, exhaustion, graph map, derivative and Jacobian control | G2 and step_002 | G3 and step_003 | G1 \(\to\) G2 \(\to\) G3 | derived | valid |
| Analytic and Lebesgue event plus coefficient-volume certificate | G3 and step_003 with exact Kechris and Federer interfaces | G4 and step_004 | G1, G2 \(\to\) G3 \(\to\) G4 | derived | valid |
| General arbitrary-correlation affine probability theorem | G4 and step_004 from G3 and joint cap | G6 and step_006 plus final assembly | G3 plus primitive density cap \(\to\) G4 \(\to\) G6 and assembly | derived | valid |
| Exact scale-stress conditioning value | G5 and step_005 from specialized features | Final static scale clause | G1 definitions plus specialized family \(\to\) G5 \(\to\) assembly | derived | valid; fresh dependency identities required in the future proof artifact |
| Exact same-target monic bridge and Theorem 2 rate | G6 and step_006 from polynomial algebra and G4 | Final baseline clause | G4 plus exact specialization \(\to\) G6 \(\to\) assembly | derived | valid |

## Early Obstruction And Repair Plausibility

- Source-direction fidelity: the theorem is a nontrivial affine \(C^1\) Pfaffian-family anti-concentration theorem and exactly recovers the source's monic baseline. It is correctly labeled material_partial because it exposes, but does not polynomially control, the fixed-family metric \(\Gamma_{\mathrm{piv}}\). No already-easy or dominated regime is presented as full progress.
- Exact-goal gate: attempt 2 removes the attempt-1 \(\epsilon/(4\delta)\) law-specific probability conclusion. G5 proves only the authoritative static equality. No goal quantifier, law, interval parameter, or conclusion is added.
- Source identity and direction: all three theorem-critical locators pass identity, statement-direction, source-convention, object-mapping, hypothesis-discharge, conclusion-interface, and known-nonoutput preflight. Kechris is used only from Borel or analytic objects to analytic and universally measurable images. Federer is used only from a measurable domain and Lipschitz-localized map to the multiplicity identity and image-measure upper bound.
- Assumption provenance: all theorem assumptions are primitive. Root feasibility, pivot margin, cells, measurability, volume, and specializations have named producers. No derived invariant is hidden in an admissibility package.
- Theorem-critical mechanism witnesses: G1 has the positive source \(\rho>0\); G2 has exact graph algebra; G3 has extended multiplicity plus nonnegative nested exhaustion and a finite disjoint chart budget; G4 has the full joint-density cap; G5 has equality attained at zero; G6 has complementary constant and top pivots and exact object equality.
- Exported-interface and residual-to-target adequacy: every output is in the original coefficient coordinates. \(T_j\) reconstructs the original \(\alpha_j\), chart images equal the original event, volume and probability consume the same set, and the affine monic object equals the target polynomial. Every residual is zero.
- Generated-output flow and noncircular closure: every consumer follows a legal producer. The probability theorem is not used to prove pivot finiteness or event volume. The monic theorem consumes G4 rather than citing the baseline as authority.
- Static exhaustion accumulation: the only countable accumulation has nested domains and images and a nonnegative Jacobian. Continuity from below and monotone convergence give the exact limiting integral. The finite chart sum is paid by \(\sum_j\lvert I\cap E_j\rvert=\lvert I\cap K_R\rvert\), so there is no persistent \(N\)-fold defect.
- Baseline invariance: the tested entry is the exact monic family with deterministic leading coefficient. For \(d=1\) the sole pivot has speed one; for \(d\ge2\) the two regions cover all parameters; the only theorem transfer is exact equality under the same law. The original baseline constant, distribution dimension, correlation allowance, and interval scope survive unchanged.
- Boundary stress: \(K_R=\varnothing\) gives an empty event; nonempty \(K_R\) has \(F\ne0\); \(N=1\) uses zero-dimensional fiber volume one; ties use the least index; selected-pivot zeros cannot occur; every nonzero selected pivot enters finite exhaustion; tangent, multiple, and infinite fibers need no injectivity; \(\theta=0\), \(\delta=1\), \(d=1\), and \(\lvert\theta\rvert=1\) satisfy the formulas; zero-length monic intervals have probability zero by proper-hyperplane nullity.
- Hard-obligation locality: each obligation attached to step_001 through step_006 is step-local. The accepted sketch already fixes its mechanism source, raw controls, exact output, defect split, dependency flow, boundary handling, and same-target interface. There is no sketch/interface defect and no idea/theorem-contract defect.
- Same-setting repair plausibility: no repair is required at theorem-diagnostic level. If a future local proof fails to instantiate one of these fixed interfaces, that failure must be classified from the fresh proof and review; this diagnostic cannot silently change the roadmap.
- Stale-evidence screen: no attempt-1 proof, review, assembly, or TeX statement is used above. The triggering aggregate and archived global artifacts explain only why the sketch was revised. All attempt-2 mathematical evidence remains to be freshly produced and reviewed.

## Global Gaps And Hard Steps

None.

There is no unresolved theorem-level interface, source, mechanism, dependency, rate, baseline, or boundary gap in the diagnostic architecture. This does not mean that any attempt-2 step has already been proved: all six steps still require fresh proof and review.

## Diagnostic Boundary Note

This global_proof.md is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, scope, rate, or conclusion. Every local lemma, direct derivation, source application, and assembly transition above must be independently established in fresh attempt-2 step artifacts and accepted by fresh step reviews.

## Suggested Routing

None

Continue with fresh proof and review for all six steps in dependency order, beginning with /proof-step step_001. The fresh step_003 proof must retain the exact Kechris and Federer locator interfaces and nonoutputs audited here. The fresh step_005 proof must record complete current attempt-2 step_001 proof and review SHA-256 identities and must not reproduce the malformed attempt-1 digest.
