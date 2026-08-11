# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_1`
- Sketch attempt: 2
- Global unit attempt: 1
- Reviewed sketch: `perspective_1/idea_1/proof_sketch.md`
- Reviewed sketch SHA-256: `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Reviewed sketch review: `perspective_1/idea_1/proof_sketch_review.md`
- Reviewed sketch-review SHA-256: `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`
- Sketch review status: `ACCEPTED`
- Sketch viability score: 9
- Binding setting: `perspective_1/idea_1/setting.md`, SHA-256 `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Binding idea: `perspective_1/idea_1/idea.md`, SHA-256 `90d54348c0603de55463b9e61611436feb86a1c329966f786db2fc8bc43ba910`
- Binding tracker: `perspective_1/idea_1/proof_tracker.md`, SHA-256 `5e44d1e2604adca9fa14b736064973c08cfaabbc1b074e27ac14d49b0e728191`
- Binding technical survey: `perspective_1/idea_1/technical_survey.md`, SHA-256 `0ed8d7940fa0bb20917efc5998326633b0399279a59f988b3e8bee7517d4915b`
- Goal mode: exact-goal, unconditional, `full` progress.
- Evidence rule: the attempt-1 `step_010` review at SHA-256 `bf7784969dba0fd47f8b0142c79e1d49452ca77a344dc113dc12f7c9c710543f`, archived global proof at SHA-256 `ab5340e84579424a3359d13063e91ed62e3db868b3b126c0bf10e5073f98153f`, and archived global review at SHA-256 `bc4164bc1cad6e4856ee1268a586fbd17d5f8aa319f69716ea73b3da580f28c2` are diagnostic lineage only. They identify the prior final-assembly interface defect but establish no attempt-2 claim.
- Freshness rule: all attempt-1 proof, global, review, and assembly artifacts are stale. All ten attempt-2 steps, `step_001` through `step_010`, require fresh proof artifacts and fresh reviews before any result is proof evidence.

## Status

COMPLETE_DRAFT

The accepted attempt-2 sketch supplies a source-adequate, acyclic, and target-exact theorem architecture. Every theorem-critical transition has a current producer, an exact consumer interface, and a boundary-valid control relation. There is no remaining theorem-level gap; the substantial derivations below remain obligations for fresh step proofs.

## Attempted Theorem Claim

The attempted claim is exactly the unconditional theorem in `setting.md`. Assume `assump:parameter-regime`, `assump:balcan-common-chain`, `assump:anchored-unit-range`, and `assump:cube-density-laws`; invoke `assump:affine-chart-data` only for the affine clause. Put
\[
D_*:=\Delta B_Q(1+qB_P),\qquad A:=(2R)^N\kappa.
\]
Then the theorem proves all of the following inseparable conclusions.

1. For every \(x\in[-1,1]\) and every \(i\leq N\),
   \[
   \lvert G_i'(x)\rvert\leq D_*,\qquad
   \Gamma_{\mathrm{proj}}(F)\leq \frac{\sqrt N D_*}{h}.
   \]
   The normalized-derivative identity and the lower bound \(\lVert G\rVert_2\geq1\) are conclusions, not assumptions.
2. For every admissible, possibly arbitrarily correlated law \(\mu\) and every positive-length interval \(I\subseteq\Theta\),
   \[
   \Pr_\mu[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert
   \leq \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2 h}\lvert I\rvert,
   \]
   and therefore
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
   \leq \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2 h}.
   \]
3. For every allowed affine presentation and every interval \(I\subseteq\Theta\),
   \[
   \Pr_\mu[\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
   \leq \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta,
   \]
   in the extended-real sense and without independence, transversality, simple roots, or a uniform pivot margin.
4. For every \(d\geq1\), every bounded interval \(J\), and every admissible joint law of the \(d\) lower coefficients of
   \(p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\), the exact prescribed two-chart presentation has velocity cap
   \[
   V_d:=d+\frac{Rd(d-1)}2
   \]
   and gives
   \[
   \Pr_\mu[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq\kappa(2R)^{d-1}V_d\lvert J\rvert.
   \]
   Here \(q=M=0\), \(N=d\), \(A=(2R)^d\kappa\), \(\Delta_{\mathrm{aug}}=d\), and the monic leading coefficient is deterministic and external to the \(d\)-dimensional law.
5. For \(G(x)=(1,x/\delta)\), \(0<\delta\leq1\), the presentation has \(B_Q=1/\delta\), and for \(0<\epsilon\leq\delta\),
   \[
   \Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta},\qquad
   C^{\mathrm{Pf}}_{\mathcal D}\geq\frac1{4\delta}.
   \]

All constants are literal. Hidden constants and confidence parameters are absent. The probability mode is ordinary probability for each fixed law; the central interval mode is uniform over all positive-length intervals; the monic interval mode covers every bounded interval; the projective norm is Euclidean; and the deterministic presentation is fixed while \(\mu\) and \(I\) range. The exposed central tuple is \((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\), with degree-zero dependence on \(M\).

## Whole-Proof Draft

The accepted dependency graph has four branches and one final conjunction. The central branch is
\[
\texttt{step\_001}\to\texttt{step\_002}\to\texttt{step\_003}\to\texttt{step\_004},
\qquad
\{\texttt{step\_002},\texttt{step\_004}\}\to\texttt{step\_005}.
\]
The affine branch is \(\texttt{step\_001}\to\texttt{step\_006}\); the independent monic certificate is `step_007`, and \(\{\texttt{step\_006},\texttt{step\_007}\}\to\texttt{step\_008}\). The scale branch is \(\texttt{step\_005}\to\texttt{step\_009}\). Final assembly directly consumes exactly `step_001`, `step_002`, `step_005`, `step_006`, `step_007`, `step_008`, and `step_009`.

### Block B1: Primitive coefficient envelope (`step_001`)

Let \(z(x)=(x,\eta_1(x),\ldots,\eta_q(x))\). Every coordinate of \(z(x)\) has absolute value at most one. If \(S(z)=\sum_\nu s_\nu z^\nu\) has total degree at most \(r\), then for every coordinate \(\ell\),
\[
\lvert S(z)\rvert\leq\sum_\nu\lvert s_\nu\rvert,
\qquad
\lvert\partial_\ell S(z)\rvert
\leq\sum_\nu\nu_\ell\lvert s_\nu\rvert
\leq r\sum_\nu\lvert s_\nu\rvert.
\]
Thus \(\lvert P_j(z(x))\rvert\leq B_P\), and
\(\lvert\partial_xQ_i(z(x))\rvert,\lvert\partial_{y_j}Q_i(z(x))\rvert\leq\Delta B_Q\). The ordinary chain rule on the actual common chain gives
\[
G_i'(x)=\partial_xQ_i(z(x))
+\sum_{j=1}^q\partial_{y_j}Q_i(z(x))P_j(x,\eta_1(x),\ldots,\eta_j(x)),
\]
and hence
\[
\lvert G_i'(x)\rvert
\leq\Delta B_Q+q\Delta B_QB_P
=D_*.
\]
This is pointwise, includes the empty sum when \(q=0\), and includes \(\Delta=0\). The chain degree \(M\) contributes no extra factor because evaluation is controlled by the coefficient \(\ell_1\)-budget on the unit box. The produced object is the actual derivative \(G_i'\), so the residual to every consumer is zero.

### Block B2: Anchor, normalization, and projective transfer (`step_002`)

The literal anchor gives \(G_1(x)=1\) and therefore \(\lVert G(x)\rVert_2\geq1\) everywhere. For \(\gamma_G=G/\lVert G\rVert_2\), direct differentiation yields
\[
\gamma_G'
=\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\lVert G\rVert_2}.
\]
The matrix in the numerator is the Euclidean orthogonal projector onto \(\gamma_G^\perp\); its operator norm is at most one, including the zero projector when \(N=1\). Block B1 gives \(\lVert G'\rVert_2\leq\sqrt N D_*\), whence
\[
\lVert\gamma_G'(x)\rVert_2\leq\sqrt N D_*.
\]
Because \(\gamma_F(\theta)=\gamma_G((\theta-c)/h)\),
\[
\gamma_F'(\theta)=h^{-1}\gamma_G'(x(\theta)),
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\frac{\sqrt N D_*}{h}.
\]
The anchor is the theorem-critical lower source for the normalization denominator. The produced and consumed normalized curves are identical, and the only coordinate transfer is the explicit factor \(h^{-1}\). At endpoints, for constant curves, and for \(N=1\), the same identity remains valid.

### Block B3: Central incidence and the root-set integral (`step_003`)

Fix a central interval \(I\) and write \(u(\theta)=\gamma_F(\theta)\) and \(K=[-R,R]^N\). On the interior of \(I\), define
\[
g(\theta,a)=\langle a,u(\theta)\rangle,
\qquad
\mathcal S_I=\{(\theta,a)\in I\times K:g(\theta,a)=0\}.
\]
Because \(F(\theta)=\lVert F(\theta)\rVert_2u(\theta)\) with \(\lVert F(\theta)\rVert_2\geq1\), this incidence equation is equivalent pointwise to \(\langle a,F(\theta)\rangle=0\). Thus normalization introduces no changed root set or target residual.
Since \(\nabla_a g=u(\theta)\) and \(\lVert u(\theta)\rVert_2=1\), the incidence level is a regular, countably \(N\)-rectifiable hypersurface. Let \(\pi(\theta,a)=a\) and \(\tau(\theta,a)=\theta\). With \(v=\langle a,u'(\theta)\rangle\), the current-notation tangential Jacobians are
\[
J_{\mathcal S_I}\pi=\frac{\lvert v\rvert}{\sqrt{1+v^2}},
\qquad
J_{\mathcal S_I}\tau=\frac1{\sqrt{1+v^2}}.
\]
The Euclidean area formula for \(\pi\), followed by coarea for \(\tau\), therefore gives
\[
\begin{aligned}
\operatorname{Leb}^N\{a\in K:\exists\theta\in I,\ \langle a,F(\theta)\rangle=0\}
&\leq\int_{\mathcal S_I}J_{\mathcal S_I}\pi\,d\mathcal H^N\\
&=\int_I\int_{u(\theta)^\perp\cap K}
\lvert\langle u'(\theta),a\rangle\rvert\,d\mathcal H^{N-1}(a)\,d\theta.
\end{aligned}
\tag{C1}
\]
The inequality is indicator at most projection multiplicity. Multiple roots only increase that multiplicity. Tangent roots have zero projection Jacobian and their critical image is Lebesgue-null by the same area formula. Endpoint root sets are individual hyperplanes and are also Lebesgue-null. Coefficients producing an identically zero combination lie in
\(\bigcap_{\theta\in I}u(\theta)^\perp\), a proper linear subspace, hence are null for every admissible density. If \(u'\equiv0\), the root set is one fixed null hyperplane and both sides of (C1) vanish. Thus (C1) is the exact target-side coefficient-volume interface, not a simple-root or transversality surrogate.

### Block B4: Ball section scaling and arbitrary-law conversion (`step_004`)

For \(N\geq2\), Ball's central cube-section theorem, scaled from the unit-volume cube to \([-R,R]^N\), gives for every unit vector \(u\)
\[
\mathcal H^{N-1}(u^\perp\cap[-R,R]^N)
\leq\sqrt2(2R)^{N-1}.
\]
On the same section,
\[
\lvert\langle u'(\theta),a\rangle\rvert
\leq\lVert u'(\theta)\rVert_2\lVert a\rVert_2
\leq R\sqrt N\lVert u'(\theta)\rVert_2.
\]
No product structure is used: \(f_\mu\leq\kappa\) on the full joint cube implies probability at most \(\kappa\) times coefficient volume. Applying these facts to (C1),
\[
\Pr_\mu[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq \kappa R\sqrt N\sqrt2(2R)^{N-1}
\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta.
\]
The coefficient is literally
\[
\kappa R\sqrt N\sqrt2(2R)^{N-1}
=\kappa(2R)^N\sqrt{N/2}=A\sqrt{N/2}.
\tag{C2}
\]
For \(N=1\), the anchor gives \(\gamma_F\equiv1\) and the root event is \(\{\alpha=0\}\), so the same conclusion holds directly. Ball supplies only the orientation-uniform section size; Block B3 supplies section motion and multiplicity.

### Block B5: Central rate and both suprema (`step_005`)

Since \(\Gamma_{\mathrm{proj}}(F)\) is the essential supremum of \(\lVert\gamma_F'\rVert_2\), (C2) gives, for every fixed admissible \(\mu\) and every positive-length \(I\),
\[
\Pr_\mu[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert.
\]
Substitution of Block B2 gives the exact second rate:
\[
A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}(F)
\leq A\sqrt{N/2}\frac{\sqrt N D_*}{h}
=\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2 h}.
\]
Dividing by the same positive \(\lvert I\rvert\), taking the interval supremum, and then the law supremum yields the two displayed bounds for \(C^{\mathrm{Pf}}_{\mathcal D}\). The estimates preceding the suprema already hold for every law and interval, so this is not a union bound or a probability-mode upgrade. Block B5 exports only the two central probability inequalities and the \(C^{\mathrm{Pf}}_{\mathcal D}\) conclusion. It does not export the primitive derivative or normalization claims of Blocks B1 and B2.

### Block B6: Measurable affine pivot exhaustion (`step_006`)

Fix the affine data, an interval \(I\), and its measurable pivot partition. For each \(j,m\), put
\[
E_{j,m}=\{\theta\in E_j:\lvert F_j(\theta)\rvert\geq1/m\},
\]
\[
D_{j,m}=\{(\theta,\beta):\theta\in E_{j,m},\ \beta\in[-R,R]^{N-1},\
\lvert T_j(\theta,\beta)\rvert\leq R\}.
\]
Let \(\Psi_j(\theta,\beta)\) insert \(T_j(\theta,\beta)\) as coefficient \(j\) and retain \(\beta\) in the other coordinates. On each finite-level set the selected denominator is separated from zero, the current \(C^1\) formulas give a Lipschitz chart after the standard measurable-set restriction, and
\[
\lvert\det D\Psi_j(\theta,\beta)\rvert
=\lvert\partial_\theta T_j(\theta,\beta)\rvert.
\tag{A1}
\]
If \(\alpha\in[-R,R]^N\) has a root at \(\theta\in E_{j,m}\), then \(\beta=\alpha_{-j}\), \(T_j(\theta,\beta)=\alpha_j\), and \(\alpha=\Psi_j(\theta,\beta)\). Conversely every chart output satisfies the same affine root equation. Therefore, using image indicator at most area-formula multiplicity,
\[
\operatorname{Leb}^N(\text{root coefficients covered at level }m)
\leq\sum_j\int_{D_{j,m}}\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta.
\tag{A2}
\]
Every root in \(E_j\) enters some finite level because its selected pivot is nonzero. The sets \(E_{j,m}\) increase to \(E_j\). Enlarging \(D_{j,m}\) to \(E_{j,m}\times[-R,R]^{N-1}\), applying the full joint-density cap, and using monotone convergence gives
\[
\Pr_\mu[\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0]
\leq\kappa\sum_j\int_{E_j}\int_{[-R,R]^{N-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta.
\tag{A3}
\]
The target explicitly permits an infinite right side. Tangencies and multiple roots are harmless for an image-volume upper bound; endpoint root sets are null. The affine-identically-zero coefficient set is empty or lies in a proper affine hyperplane obtained by evaluating at one point, since \(F_1=1\). Near-zero pivots require later exhaustion levels but no uniform margin. For \(N=1\), the \(\beta\)-cube is zero-dimensional with volume one. The produced coefficient vector and the consumed affine event agree exactly.

### Block B7: Exact monic presentation and both chart velocities (`step_007`)

Fix \(d\geq1\), a bounded interval \(J\), and a nondegenerate \(\Theta=[c-h,c+h]\supseteq J\). Take
\[
F_0(\theta)=\theta^d,\qquad F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1).
\]
In normalized coordinates the functions are exactly \(Q_0(x)=(c+hx)^d\) and \(Q_{k+1}(x)=(c+hx)^k\). Thus \(q=M=0\), \(N=d\), \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\).

For \(d\geq2\), let
\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},\qquad
E_d=J\cap\{\lvert\theta\rvert>1\},
\]
with all other cells empty. On \(E_1\), pivoting on \(\alpha_0\) gives
\[
T_1(\theta,\beta)=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\]
and hence
\[
\lvert\partial_\theta T_1\rvert
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{Rd(d-1)}2=V_d.
\tag{M1}
\]
On \(E_d\), the pivot \(F_d(\theta)=\theta^{d-1}\) is nonzero, and solving for \(\alpha_{d-1}\) gives
\[
T_d(\theta,\beta)=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
\]
Since \(\lvert\theta\rvert>1\), every \(\lvert\theta^{k-d}\rvert\leq1\), so
\[
\lvert\partial_\theta T_d\rvert
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{Rd(d-1)}2\leq V_d.
\tag{M2}
\]
When \(d=1\), use \(E_1=J\), \(T_1=-\theta\), and \(\lvert T_1'\rvert=1=V_1\). The transition \(\lvert\theta\rvert=1\) belongs to the constant-pivot cell. The affine expression is pointwise equal to \(p_\alpha\), and the deterministic leading coefficient never enters the random vector. Block B7 exports the presentation, prescribed cells, exact chart formulas, both velocity certificates, parameter bookkeeping, and the \(d=1\) convention directly to Blocks B8 and B10.

### Block B8: Exact affine-monic probability bridge (`step_008`)

Apply (A3) in dimension \(d\) with the exact data from Block B7. Each \(\beta\)-domain has volume \((2R)^{d-1}\), and the two nonempty cells form a disjoint partition of \(J\) up to a null boundary. Therefore
\[
\begin{aligned}
\Pr_\mu[\exists\theta\in J:p_\alpha(\theta)=0]
&\leq\kappa\sum_{j\in\{1,d\}}\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta\\
&\leq\kappa(2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)\\
&=\kappa(2R)^{d-1}V_d\lvert J\rvert.
\end{aligned}
\tag{M3}
\]
For \(d=1\), \((2R)^0=1\), and the same calculation is \(\Pr(\text{root in }J)\leq\kappa\lvert J\rvert\). This is an exact specialization of the same affine theorem under an arbitrary correlated joint law. Block B8 exports only the probability conclusion (M3); the detailed chart certificates remain direct outputs of Block B7.

### Block B9: Counter-example 1 and the exact scale (`step_009`)

For \(G(x)=(1,x/\delta)\), \(0<\delta\leq1\), the exact normalized presentation has
\[
h=1,\quad q=M=0,\quad\Delta=1,\quad N=2,\quad
B_Q=\max\{1,1/\delta\}=1/\delta.
\]
For the uniform law on \([-1,1]^2\), \(R=1\), \(\kappa=1/4\), and \(A=1\). Set \(t=\epsilon/\delta\leq1\). Away from coefficient-null axes, a root in \([0,\epsilon]\) is equivalent to opposite coefficient signs and
\(\lvert\alpha_1\rvert\leq t\lvert\alpha_2\rvert\). The two triangular wedges have total area
\[
2\int_0^1 tu\,du=t.
\]
Multiplication by the density \(1/4\) gives
\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]
Dividing by \(\epsilon\) yields \(C^{\mathrm{Pf}}_{\mathcal D}\geq1/(4\delta)\). Direct differentiation also gives
\(\Gamma_{\mathrm{proj}}(F)=1/\delta\): its maximum occurs at \(\theta=0\). Thus the first central upper coefficient is \(1/\delta\), while the raw-presentation upper coefficient is \(\sqrt2/\delta\). Both have the required scale. The equality remains valid at \(\epsilon=\delta\), and \(\delta=1\) produces the unscaled baseline.

### Block B10: Dependency-only final conjunction (`step_010`)

Final assembly performs no derivation and imports no theorem. It directly conjoins these exact current interfaces:

- Block B1 / `step_001`: the primitive derivative envelope.
- Block B2 / `step_002`: anchor nonvanishing, the normalized-projective identity, and the projective-speed certificate.
- Block B5 / `step_005`: only the central probability and \(C^{\mathrm{Pf}}_{\mathcal D}\) clauses.
- Block B6 / `step_006`: the general affine chart inequality.
- Block B7 / `step_007`: the exact monic presentation, prescribed pivots, chart formulas, both velocity certificates, parameter tuple, and \(d=1\) convention.
- Block B8 / `step_008`: only the exact affine-monic probability conclusion.
- Block B9 / `step_009`: the Counter-example tuple, exact lower probability, and scale comparison.

This seven-producer conjunction is exactly the direct dependency list in the attempt-2 row. It does not treat transitive ancestry as an export: in particular, Block B5 does not stand in for Blocks B1 or B2, and Block B8 does not stand in for Block B7. The objects, coefficient dimensions, laws, intervals, norms, and modes agree clause by clause, every transfer residual is zero or coefficient-null, and no feedback edge or generated assumption appears.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B1, primitive envelope | Produces \(D_*\) and each coordinate derivative bound | `step_001` | None | `assump:balcan-common-chain`, `assump:anchored-unit-range` | None at theorem level; fresh local coefficient and chain-rule proof required |
| B2, projective bridge | Produces nonvanishing, normalization identity, and \(\Gamma_{\mathrm{proj}}\) rate | `step_002` | B1 | `assump:parameter-regime`, `assump:anchored-unit-range` | None at theorem level; fresh local normalization proof required |
| B3, central incidence | Transfers the root event to the exact coefficient-volume integral | `step_003` | B2 | `assump:parameter-regime`, `assump:anchored-unit-range` | None at theorem level; fresh area/coarea wrapper proof required |
| B4, central section bound | Adds Ball scaling, cube radius, and arbitrary joint-density conversion | `step_004` | B3 | `assump:parameter-regime`, `assump:cube-density-laws` | None at theorem level; fresh source and \(N=1\) checks required |
| B5, central closure | Produces both central inequalities and both defining suprema | `step_005` | B2, B4 | Primitive parameter meanings only | None; exact integration, substitution, and suprema remain local |
| B6, affine exhaustion | Produces the general extended-real affine chart inequality | `step_006` | B1 | All five primitive assumptions when affine clause is invoked | None at theorem level; fresh Lipschitz, area, exhaustion, and null-set proof required |
| B7, monic certificate | Produces exact monic objects, pivots, formulas, velocities, and bookkeeping | `step_007` | None | Primitive scalar specialization of the setting | None; direct algebra remains local |
| B8, monic rate | Produces the exact affine-monic probability conclusion | `step_008` | B6, B7 | `assump:cube-density-laws` in dimension \(d\) | None; exact finite integration remains local |
| B9, lower scale | Produces \(B_Q=1/\delta\), wedge probability, and scale comparison | `step_009` | B5 for upper comparison | Displayed primitive example and uniform law | None; exact planar calculation remains local |
| B10, assembly | Conjoins every inseparable exact-goal clause using seven direct interfaces | `step_010` assembly role | B1, B2, B5, B6, B7, B8, B9 | No new assumptions | None; dependency identity and verbatim clause checks remain local |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | B1 and direct primitive clause in B10 | Feeds B2, B6, B10 | Unit-box coefficient estimates, exact chain rule, \(q=0\), \(\Delta=0\), degree-zero \(M\) | Attempt-2 proof and review both required |
| `step_002` | B2 and direct normalized-projective clause in B10 | Consumes B1; feeds B3, B5, B10 | Anchor lower source, projector identity, Euclidean norm, \(h^{-1}\) transfer, endpoints | Attempt-2 proof and review both required |
| `step_003` | B3 | Consumes B2; feeds B4 | Incidence regularity, two tangential Jacobians, area/coarea composition, multiplicity, null residuals | Attempt-2 proof and review both required |
| `step_004` | B4 | Consumes B3; feeds B5 | Ball hypothesis and scaling, density conversion, coefficient-radius estimate, \(N=1\) | Attempt-2 proof and review both required |
| `step_005` | B5 and central clause in B10 | Consumes B2 and B4; feeds B9 and B10 | Integral-to-essential-supremum bound, literal substitution, quotient, two suprema | Exports only central clauses; fresh proof and review required |
| `step_006` | B6 and direct affine clause in B10 | Consumes B1; feeds B8 and B10 | Finite-level Lipschitz legality, determinant, coverage, density cap, monotone convergence, extended-real cases | Attempt-2 proof and review both required |
| `step_007` | B7 and detailed monic clause in B10 | Independent; feeds B8 and B10 | Exact normalized presentation, two pivots and formulas, both velocity bounds, \(d=1\), bookkeeping | Direct exporter; fresh proof and review required |
| `step_008` | B8 and exact monic probability clause in B10 | Consumes B6 and B7; feeds B10 | Exact event mapping, \((2R)^{d-1}\), partition length, arbitrary correlation, \(d=1\) | Exports only probability conclusion; fresh proof and review required |
| `step_009` | B9 and direct scale clause in B10 | Consumes B5 only for upper comparison; feeds B10 | Coefficient budget, projective speed, both wedges, axes, equality boundaries | Attempt-2 proof and review both required |
| `step_010` | B10 | Directly consumes B1, B2, B5, B6, B7, B8, B9 | Exact seven-interface identity, clause and mode preservation, no new lemma or algebra | Attempt-2 proof and review both required |

## Dependency And Assumption Audit

The five theorem-facing assumptions are primitive and fixed before any random draw or root event is evaluated:

| Condition | Provenance class | Exact role | Producer if derived | Consumers | Audit result |
| --------- | ---------------- | ---------- | ------------------- | --------- | ------------ |
| `assump:parameter-regime` | primitive condition | Fixes \(N,q,h,R,\kappa,\Theta\), nonempty law class, and finite static presentation data | N/A | B2-B6 and specializations | Valid primitive input |
| `assump:balcan-common-chain` | primitive condition | Fixes the actual \(p=1\) chain and output representation | N/A | B1, B6, B7 convention | Valid primitive input |
| `assump:anchored-unit-range` | primitive condition | Gives unit-box evaluation and literal lower source \(G_1=1\) | N/A | B1-B3, B6 | Valid primitive input |
| `assump:cube-density-laws` | primitive condition | Gives cube support and full joint-density cap without independence | N/A | B4, B6, B8, B9 | Valid primitive input |
| `assump:affine-chart-data` | primitive condition | Gives deterministic offset and measurable nonzero-pivot cover | N/A | B6 | Valid primitive input; fallback \(E_1=I\) exists |
| Derivative envelope \(D_*\) | derived conclusion | Controls the actual feature derivative | B1 / `step_001` | B2, B6 regularity, B10 | Produced before every consumer |
| Nonvanishing and projective speed | derived conclusion | Defines and bounds the normalized curve | B2 / `step_002` | B3, B5, B10 | Produced from anchor and B1 |
| Central incidence-volume interface | derived conclusion | Converts root union to an integral | B3 / `step_003` | B4 | Produced before density conversion |
| Central arbitrary-law interface | derived conclusion | Bounds every fixed \(\mu,I\) | B4 / `step_004` | B5 | Produced before suprema |
| Central public rate | derived conclusion | Supplies the exact central clauses | B5 / `step_005` | B9 comparison, B10 | Does not export B1 or B2 |
| Affine chart coverage and integral | derived conclusion | Supplies the exact general affine clause | B6 / `step_006` | B8, B10 | Exhaustion proves rather than assumes coverage |
| Monic presentation and velocities | derived conclusion | Supplies exact object and rate data | B7 / `step_007` | B8, B10 | Does not rely on desired monic probability |
| Monic probability bound | derived conclusion | Supplies exact baseline conclusion | B8 / `step_008` | B10 | Does not export B7 internals |
| Counter-example scale | derived conclusion | Supplies exact lower and normalization audit | B9 / `step_009` | B10 | Direct example, noncircular |
| Full theorem | derived conclusion | Final conjunction | B10 / `step_010` | Final use | Seven direct inputs, no missing path |

No generated event, regularity event, recurrence, boundedness condition, or local-validity condition is promoted to a theorem assumption. Local fixed-interval, fixed-chart, and finite-exhaustion hypotheses occur only inside the relevant step-local wrappers and are discharged before export. The dependency graph is acyclic. Most importantly, the final conjunction has direct paths `step_001 -> step_010`, `step_002 -> step_010`, and `step_007 -> step_010`; it does not rely on illegal transitive exports through `step_005` or `step_008`.

## Citation And Tool Audit

| Source or tool | Stable identity or statement | Current-branch objects and role | Hypotheses and discharge | Convention and object-target match | Needed conclusion and known nonoutputs | Affected blocks | Preflight |
| -------------- | ---------------------------- | ------------------------------- | ------------------------ | ---------------------------------- | -------------------------------------- | --------------- | --------- |
| Balcan--Nguyen--Sharma, Definitions 2--4 | *Algorithm Configuration for Structured Pfaffian Settings*, arXiv:2409.04367 | Fixes \(p=1\), common triangular chain, \(q,M,\Delta\) convention | Discharged by `assump:balcan-common-chain`; total degree and normalized coordinate are explicit | Same monomial basis and chain/output convention | Convention only; does not supply \(D_*\), projective speed, or anti-concentration | B1, B7 | Source identity and interface fixed |
| Monomial coefficient envelope and chain rule | Direct primitive-source derivation restated in B1 | Actual \(P_j,Q_i,z(x),G_i\) | Unit box and coefficient budgets are primitive; \(C^1\) chain is primitive | Same \(x\)-coordinate and actual derivatives; residual zero | Produces exactly \(\lvert G_i'\rvert\leq D_*\); no root estimate | B1 | Raw-assumption feasibility passed, including \(q=0,\Delta=0\) |
| Euclidean normalization identity | Direct current-notation derivation restated in B2 | Actual nonzero \(G\), Euclidean projector, exact \(x(\theta)\) | Anchor gives denominator at least one; B1 gives numerator; \(h>0\) primitive | Same normalized target and norm; exact \(h^{-1}\) transfer | Produces nonvanishing, identity, and speed certificate only | B2 | Raw-assumption and target-transfer preflight passed |
| Euclidean area and coarea formulas on a rectifiable hypersurface | Standard tool, exact current-notation statements and Jacobians fixed in B3 | \(\mathcal S_I\), projection \(\pi\), parameter map \(\tau\) | \(u\in C^1\), unit coefficient gradient, rectifiability, Lipschitz maps; endpoints split off | Same coefficient cube, root set, Euclidean measures, and interval | Gives (C1), multiplicity control, and critical-image nullity; does not give section size | B3 | Standard-tool convention and raw-assumption feasibility passed |
| Edelman--Kostlan, Theorem 5.1 | *How Many Zeros of a Random Polynomial Are Real?*, DOI:10.1090/S0273-0979-1995-00571-9 | Cross-checks normalized hyperplane-motion integrand and arbitrary-density convention | Not invoked as proof authority for (C1) | Compatible normalized Euclidean geometry | Nonoutput: does not supply the present union-area wrapper, Ball bound, Pfaffian bridge, or affine chart | B3 | Identity fixed; lineage/cross-check only |
| Ball, main cube-slicing theorem | *Cube Slicing in R^n*, DOI:10.1090/S0002-9939-1986-0840631-0 | Central section \(u^\perp\cap[-R,R]^N\) | Unit normal; central section of a cube; scale by \(2R\); \(N=1\) handled directly | Same Euclidean hyperplane and \(\mathcal H^{N-1}\) measure as B3 | Gives \(\sqrt2(2R)^{N-1}\); does not give motion, density conversion, or affine bounds | B4 | Source identity, scaling, boundary, and nonoutputs fixed |
| Cauchy--Schwarz, cube radius, and density integration | Direct standard facts restated in B4 | Same section points \(a\), joint density \(f_\mu\) | Cube support and full cap from `assump:cube-density-laws` | Same coefficient event and probability space | Gives exact algebra (C2); no independence or probability conversion | B4 | Raw-assumption feasibility passed |
| Euclidean area formula for affine charts | Standard tool, exact map and determinant fixed in B6 | \(D_{j,m}\), \(\Psi_j\), coefficient image | Finite pivot margin, \(C^1\) data, measurable restriction, Lipschitz chart | \(\Psi_j\) is the consumed coefficient vector; root equation exact | Gives image-volume upper bound with multiplicity; no uniform pivot margin | B6 | Convention, raw controls, determinant, and target mapping fixed |
| Monotone convergence theorem | Standard nonnegative integration theorem | Increasing \(E_{j,m}\) and nonnegative \(\lvert\partial_\theta T_j\rvert\) | Selected pivot is nonzero at each covered root | Same full chart integral; no residual root remains | Gives the extended-real limit; it does not prove finite monic velocity | B6 | Scope and boundary preflight passed |
| Balcan--Dick--Pegden, Theorem 18 | *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014 | Affine-coefficient lineage | Not invoked for the general affine conclusion | Compatible lower-coefficient geometry only as lineage | Nonoutput: the exact arbitrary-\(F_0,F\) chart integral and current monic charts are derived here | B6-B8 | Identity fixed; not a theorem-critical dependency |
| Direct monic chart differentiation | Direct current-notation derivation restated in B7 | Exact \(p_\alpha\), lower coefficients, prescribed pivots | Explicit monomials, cube bound, two branch cells | Same scalar polynomial and \(d\)-dimensional law; deterministic leading term external | Gives (M1), (M2), \(V_d\), and \(d=1\); no independent root theorem | B7-B8 | Raw-assumption, boundary, and target preflight passed |
| Direct planar wedge calculation | Direct current-notation derivation restated in B9 | Exact Counter-example feature and uniform square law | \(0<\epsilon\leq\delta\leq1\) | Same event, coordinates, Euclidean scale, and density | Gives exact probability and lower scale; axes and edges are null | B9 | Raw-assumption and residual preflight passed |

Every theorem-critical cited source has a stable identity, a current-object mapping, a hypothesis-discharge path, a conclusion-interface match, and stated nonoutputs. Every theorem-critical standard or direct tool has its exact setting convention, raw-assumption path, boundary branches, and downstream interface exposed. A future step must still supply a formal citation or self-contained statement where paper-ready proof standards require it; that local presentation duty does not change the fixed theorem interface.

## Quantitative Dependence Audit

| Rate objective | Exposed variables | Hidden constants | Fixed quantities | Probability mode | Horizon or interval mode | Norm or measure mode | Exact bridge and baseline obligation |
| -------------- | ----------------- | ---------------- | ---------------- | ---------------- | ------------------------ | -------------------- | ------------------------------------ |
| R1, primitive-to-projective | \(q,M,\Delta,N,B_P,B_Q,h^{-1}\) | None | Full deterministic presentation and \(\Theta\) | Deterministic | Pointwise on \(\Theta\) | Euclidean vector and operator norms | \(D_*=\Delta B_Q(1+qB_P)\), \(\sqrt N\), exact \(h^{-1}\); \(M\) degree zero; retain \(B_Q=1/\delta\) |
| R2, central all-law bound | \(A,N,\Gamma_{\mathrm{proj}},q,M,\Delta,B_P,B_Q,h^{-1}\) with \(A=(2R)^N\kappa\) | None | Presentation and \(N,R,\kappa\) | Ordinary probability for each arbitrary correlated law | Every positive-length \(I\), then interval-inside-law suprema | Euclidean speed, Lebesgue volume, Hausdorff section measure | Exact identity \(\kappa R\sqrt N\sqrt2(2R)^{N-1}=A\sqrt{N/2}\), then literal R1 substitution |
| R3, general affine | \(\kappa,R,N,F_0,F,(E_j)_j\) and exact chart integrals | None | Deterministic affine data and chosen pivot partition | Ordinary probability under full joint density cap | Every interval; extended-real limit allowed | Lebesgue coefficient volume and absolute Jacobian | Restrict \(\lvert T_j\rvert\leq R\), finite exhaustion, exact determinant, monotone limit; deterministic offset remains external |
| R4, exact monic baseline | \(d,R,\kappa,\lvert J\rvert\), with \(q=M=0,N=d,A=(2R)^d\kappa,\Delta_{\mathrm{aug}}=d\) | None | \(d,R,\kappa\) and a deterministic \(\Theta\supseteq J\) | Ordinary probability for every correlated lower-coefficient law | Every bounded \(J\) | Scalar chart velocity and coefficient volume | Exact two velocities, \((2R)^{d-1}\), partition length, \(d=1\); recover exactly \(\kappa(2R)^{d-1}V_d\lvert J\rvert\) |
| R5, Counter-example scale | \(\delta,\epsilon\), specialized \(h,q,M,\Delta,N,B_Q,R,\kappa,A\) | None | Uniform square law and displayed feature | Exact ordinary probability | \([0,\epsilon]\), \(0<\epsilon\leq\delta\leq1\) | Euclidean projective norm and planar area | Two wedges give \(\epsilon/(4\delta)\); \(B_Q=1/\delta\), \(\Gamma=1/\delta\); no scale suppression |

There is no confidence parameter, union-bound conversion, asymptotic qualification, or law-dependent constant. The presentation tuple is held fixed while the central suprema range over laws and intervals. The monic baseline invariance obligation is preserved exactly, including arbitrary correlation, all bounded intervals, the \(d=1\) branch, and a deterministic leading coefficient. The Counter-example baseline invariance obligation is also exact: the lower constant is \(1/(4\delta)\), while both projective and raw-presentation upper constants retain order \(1/\delta\).

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------------------------ | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Derivative envelope \(D_*\) | Primitive-source quantitative upper bound; starts R1 | Every \(x\in[-1,1]\), every coordinate | Chain rule with one direct partial and \(q\) chain partials | Unit-box coefficient envelope | The \(q\) factors \(P_j\); no uncontrolled term | Pointwise and non-iterated; supremum later adds no defect | Structural upper comparison | Primitive common chain and anchored unit range; endpoints included | Coefficient budgets bound every actual partial and chain value in the same monomial convention | Produced and consumed object is the same \(G_i'\); residual zero | `step-local` | Primitives -> B1 -> B2, B6, B10; no projective claim assumed | N/A, static differentiation | \(\Delta B_Q+q\Delta B_QB_P=D_*\) | \(q,\Delta,B_P,B_Q\), unit box | None | \(q=0,\Delta=0\), endpoints pass; zero source forces zero derivative | Without unit-range evaluation, coefficient budgets would not control derivatives |
| Nonvanishing and projective speed | Structural lower source plus normalized R1 bridge | All \(\Theta\), essential supremum | Projector identity and exact coordinate transfer | Literal anchor \(G_1=1\) and B1 | Denominator failure, normalization term, \(h^{-1}\) scale | Pointwise; essential supremum adds no forcing | Structural lower/upper comparison and algebraic coupling | Primitive anchor, B1, \(h>0\); no zero denominator allowed by setting | Anchor has the required lower content; B1 controls the exact numerator | \(\gamma_F=\gamma_G\circ x\), \(\gamma_F'=h^{-1}\gamma_G'\); residual zero | `step-local` | Anchor -> B1 -> B2 -> B3, B5, B10 | At every endpoint and interior point the anchor is active before normalization; no update needed | \(\lVert\gamma_G'\rVert\leq\lVert G'\rVert/\lVert G\rVert\leq\sqrt ND_*\), then \(h^{-1}\) | Anchor, \(h\) | B1 derivative bound | \(N=1\), constant curves, \(q=0\), endpoints pass | Without anchor, normalized target may be undefined |
| Central incidence coefficient-volume interface | Root-event theorem-closure bridge | Every interval and cube coefficient set | Area formula for \(\pi\), coarea for \(\tau\), exact Jacobian ratio | Unit coefficient gradient and projection tangential Jacobian | Multiplicity, tangencies, multiple roots, endpoints, identically-zero combinations | Nonnegative multiplicity integral over \(I\); no signed forcing | Algebraic coupling and structural upper comparison | B2 unit \(C^1\) curve plus standard Euclidean area/coarea; endpoints and proper subspace are source-null | Unit gradient supplies regularity and Jacobian source adequate for image volume | Projection is exact root coefficient set; only endpoint and proper-subspace null residuals | `step-local` | B2 -> B3 -> B4; final probability is not assumed | Stationary segment has zero Jacobian and one fixed null hyperplane | Indicator \(\leq\) projection multiplicity and \(J\pi/J\tau=\lvert\langle\gamma',a\rangle\rvert\) | Anchor, interval, cube | B2 normalized curve | Stationary, tangent, multiple, endpoint, \(N=1\) pass | Without regular incidence or exact Jacobian, root union volume is unsupported |
| Central arbitrary-law probability | Section-size and density conversion | Every correlated admissible law and interval | Bound (C1) sectionwise and integrate | Ball section cap, cube radius, full joint density cap | Orientation, coefficient magnitude, correlation | Nonnegative interval integral; same deterministic coefficient for every law and interval | Structural upper comparison | Ball DOI for \(N\geq2\), direct \(N=1\), primitive cube law | Ball supplies section size while B3 separately supplies motion; density cap has full-law content | Same event, section, cube, metric, and law; volume-to-probability residual zero | `step-local` | Ball and primitives plus B3 -> B4 -> B5 | N/A, static estimate; zero speed case already null by B3 | Exact coefficient identity (C2) | \(R,\kappa,N\), cube support | B3 incidence integral | All orientations, \(N=1\), zero speed pass | Without Ball, orientation-uniform section size is missing; without full cap, correlation scope fails |
| Central rate and suprema | Quantitative specialization and all-law/all-interval closure | Every positive-length interval, then both suprema | \(\int_I\lVert\gamma'\rVert\leq\Gamma\lvert I\rvert\), B2 substitution | Uniform B4 bound and B2 speed certificate | Hidden \(\mu,I,M\) dependence; none present | Suprema of already uniform inequalities; no probability accumulation | Algebraic coupling and structural upper comparison | Accepted-derived B2 and B4; positive length for division | Inputs have identical event, norm, and deterministic presentation | Same event and denominator; substitution residual zero | `step-local` | B2, B4 -> B5 -> B9, B10 | N/A, static closure | \(A\sqrt{N/2}(\sqrt ND_*/h)=AND_*/(\sqrt2h)\) | Parameter meanings | B2 and B4 outputs | Arbitrarily short positive intervals, \(\Gamma=0,q=0\) pass | Missing uniformity would invalidate the suprema |
| General affine exhaustion | Generated chart coverage and affine theorem closure | Every interval, measurable partition, arbitrary correlated law; extended-real allowed | Finite-level root-to-image map, determinant (A1), image bound (A2), monotone limit (A3) | Nonzero selected pivot and exact chart Jacobian | Near-zero pivots, arbitrary cells, tangencies, multiplicity, correlation, divergence | Increasing nonnegative chart integrals; monotone limit is valid even when infinite, exactly matching target scope | Structural upper comparison and stopping/conditioning argument at finite pivot levels | Primitive pivot cover, B1 regularity, standard area formula, density cap; no uniform margin required | Pivot has support content needed to solve actual root equation at some finite level | \(\Psi_j(\theta,\alpha_{-j})=\alpha\); every root enters finite \(m\); residual empty | `step-local` | Primitive cover and B1 -> B6 -> B8, B10 | Any root has first finite \(m\geq1/\lvert F_j(\theta)\rvert\) before consumption | Restrict \(\lvert T_j\rvert\leq R\), area bound, enlarge, sum, monotone convergence | \(C^1\) data, pivot cover, cube cap | B1 regularity | Near-zero pivots, empty cells, endpoints, tangent/multiple roots, \(N=1\), infinite integrals pass | Without nonzero pivot, coverage fails; without extended-real target, divergence would obstruct closure |
| Exact monic chart certificate | Structural pivot support and quantitative R4 source | Every \(d\geq1\), bounded \(J\), both cells | Exact formulas (M1), (M2), and \(d=1\) formula | Constant pivot on low cell; nonzero \(\theta^{d-1}\) pivot on high cell | Lower-term derivatives, negative powers, transition, empty sums | Pointwise on disjoint finite partition; later accumulation is constant times total length | Structural lower/upper comparison and algebraic coupling | Primitive monic data; low/high branch excludes pivot zero; \(d=1\) direct | Pivots supply exact lower support, and cube bound controls every derivative coefficient | Affine expression equals \(p_\alpha\); lower-coefficient vector identical; residual zero | `step-local` | Monic primitives -> B7 -> B8, B10 | At \(0\) and \(\lvert\theta\rvert=1\) low pivot is active; outside, high pivot active; \(d=1\) low pivot everywhere | Direct derivative sums equal \(d(d-1)/2\), high cap \(\leq V_d\) | \(d,R,J,\Theta\), monomials | None | \(d=1,d=2,\theta=0,\lvert\theta\rvert=1\), distant \(J\), empty cells pass | A vanishing prescribed pivot would make the chart undefined, but partition excludes it |
| Exact affine-monic probability | Baseline invariance and public R4 bridge | Every \(d\geq1\), bounded \(J\), arbitrary correlated lower-coefficient law | Apply B6 to B7, integrate cube and cells | B6 exact affine theorem and B7 \(V_d\) certificate | Correlation, smaller high cap, location of \(J\), \(d=1\) | Finite nonnegative sum on disjoint cells; no repeated defect | Algebraic coupling and structural upper comparison | Accepted-derived B6 and B7; deterministic leading coefficient external | General chart output has exact claim class and dimension needed by baseline | Same polynomial event, law, interval, and scalar metric; residual zero | `step-local` | B6 and B7 -> B8 -> B10; baseline not assumed upstream | First chart use already has exact object and active pivot | \(\kappa(2R)^{d-1}V_d(\lvert E_1\rvert+\lvert E_d\rvert)=\kappa(2R)^{d-1}V_d\lvert J\rvert\) | Joint cap in dimension \(d\) | B6 chart bound, B7 certificate | \(d=1\) zero-dimensional cube, unit transition, empty cells pass | Missing either exact object map or velocity cap would break exact baseline invariance |
| Counter-example scale | Exact lower-scale and normalization audit | \(0<\epsilon\leq\delta\leq1\) | Coefficient budget, exact projective derivative, two-wedge area | Slope \(1/\delta\) in both \(B_Q\) and wedge width | Axes, wedge edges, sign cases | One finite interval calculation; ratio constant in allowed range | Structural lower/upper comparison | Explicit feature and uniform square law; allowed boundaries included | The slope source has the exact metric-scale content needed for the lower bound | Same event, coordinate, law, and norm; null axes and edges only | `step-local` | Direct example -> B9 -> B10; B5 used only for comparison | At \(\theta=0\), projective speed is already \(1/\delta\) | Two wedge area \(=\epsilon/\delta\), density \(=1/4\) | \(\delta,\epsilon\), uniform law | B5 upper rate for comparison | \(\epsilon=\delta,\delta=1\), small \(\epsilon\), axes and edges pass | If \(B_Q\) omitted \(1/\delta\), the upper theorem would contradict the exact lower scale |
| Full theorem conjunction | Exact-goal closure of all clauses | Static final theorem with all declared quantifiers and modes | Direct conjunction of seven producer outputs | Complete legal producer set | Clause loss, hidden dependence, mode drift, illegal transitive export | No recursive or limiting defect; static conjunction | Algebraic coupling | B1, B2, B5, B6, B7, B8, B9, all fresh before use | Each source has the exact claim class of its final clause | Same objects and modes clause by clause; upstream residuals zero or null | `step-local` | Seven direct producers -> B10 -> theorem; no feedback | Anchor, finite affine level, monic pivots, and Counter-example speed are active before assembly | Verbatim conjunction; no assembly algebra | Five primitive assumptions as allocated | Seven derived interfaces | Inherits every listed central, affine, monic, and scale boundary case | Any missing direct producer would recreate a sketch/interface defect |

Every row has a concrete current-interface relation. There is no recursive, all-time, or limsup recurrence. The only accumulated scopes are nonnegative interval integration, monotone affine exhaustion, finite monic chart addition, and suprema of already uniform bounds; their controls and finite or explicitly extended-real endpoints are displayed above.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| \(D_*\) and coordinate derivative envelope | B1 / `step_001`, direct derivation | Common chain, unit box, coefficient budgets | Direct partial and all \(q\) chain terms controlled; no uncontrolled class | Same \(G_i'\) in same \(x\)-coordinate; residual zero | Exact chain-rule sum to \(D_*\) | Unit-box envelope; no selected threshold | B2, B6 regularity, B10 | valid |
| Nonvanishing, identity, and projective-speed certificate | B2 / `step_002` | Anchor, B1, projector norm, \(h>0\) | Denominator, numerator, and coordinate scale all controlled | Exact \(\gamma_F=\gamma_G\circ x\); zero residual | Projector comparison and exact \(h^{-1}\) transfer | Primitive anchor margin one | B3, B5, B10 | valid |
| Central incidence root-set integral | B3 / `step_003`, standard area/coarea | B2 unit curve, unit coefficient gradient, cube | Multiplicity favorable; tangent, endpoint, and identically-zero classes coefficient-null | Same root coefficient set; null residual only | Indicator at most multiplicity and exact Jacobian ratio | Unit gradient; no transversality threshold | B4 | valid |
| Central arbitrary-law integral bound | B4 / `step_004`, Ball plus density cap | B3, cube radius, Ball section cap, joint density cap | Orientation, magnitude, correlation controlled; none uncontrolled | Same event, cube, section, law, and norm; residual zero | Exact algebra (C2) | Ball orientation-uniform cap | B5 | valid |
| Central probability and \(C^{\mathrm{Pf}}\) rates | B5 / `step_005` | B2 and B4 exact outputs | No dropped term, hidden \(M\), or law/interval defect | Same event and positive interval denominator; residual zero | Integral-to-supremum, literal substitution, two suprema | Earlier anchor and Ball sources; no new slack | B9 comparison, B10 | valid; exports only central clauses |
| General affine chart inequality | B6 / `step_006`, standard area formula | Primitive pivot cover, finite \(1/m\) margin, \(C^1\) data, cube cap | Near-zero pivots by exhaustion; tangency/multiplicity by area; divergence target-permitted | Exact coefficient map and event; every root enters finite level; residual empty | Cube restriction, area formula, enlargement, sum, monotone limit | Nonzero pivot supplies finite-level margin | B8, B10 | valid |
| Exact monic presentation and \(V_d\) certificate | B7 / `step_007`, direct derivation | Explicit monomials, coefficient cube, prescribed cells | Negative powers, transition, \(d=1\), interval location controlled | Exact \(p_\alpha\), same lower coefficients, deterministic leading term; residual zero | Direct formulas (M1), (M2), high cap \(\leq V_d\) | Constant pivot or \(\lvert\theta\rvert^{d-1}>1\) | B8, B10 | valid |
| Exact affine-monic probability | B8 / `step_008` | B6, B7, cube volume, partition identity | Correlation and both cells controlled; no singular-coordinate defect | Same event, law dimension, interval, and metric; residual zero | Exact finite integration (M3) | B7 velocity source | B10 | valid; exports only probability conclusion |
| Counter-example tuple, exact probability, and lower scale | B9 / `step_009`, direct calculation | Explicit coefficients, uniform density, allowed range | Axes and wedge edges null; both sign branches controlled | Same feature, event, law, interval, and scale; residual zero | Wedge area times density, then divide by \(\epsilon\) | Slope \(1/\delta\) | B10 | valid |
| Full exact-goal theorem | B10 / `step_010` | Direct outputs B1, B2, B5, B6, B7, B8, B9 | Every defect class already allocated; no new class | Same objects and modes clause by clause | Verbatim seven-interface conjunction | Upstream sources; no assembly-only slack | Final theorem | valid |

The two narrowed interfaces are explicit: B5 exports only the central theorem clauses, and B8 exports only the exact monic probability conclusion. B1, B2, and B7 therefore remain direct B10 inputs. No source-supplied object is transformed, weighted, homogenized, or replaced by a surrogate target.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Pfaffian derivative envelope \(D_*\) | B1 / `step_001`, direct from primitive chain and unit-box data | B2, B6 regularity, B10 primitive clause | primitives -> B1 -> B2 and B6; B1 -> B10 | derived | valid |
| Nonvanishing and projective-speed certificate | B2 / `step_002` | B3, B5, B10 normalized-projective clause | B1 -> B2 -> B3 and B5; B2 -> B10 | derived | valid |
| Central incidence coefficient-volume interface | B3 / `step_003`, current-notation standard wrapper | B4, then central final use | B2 -> B3 -> B4 -> B5 -> B10 | derived | valid |
| Central arbitrary-law probability interface | B4 / `step_004`, Ball plus primitive density cap | B5 | B3 -> B4 -> B5 -> B10 | derived | valid |
| Literal central rates and \(C^{\mathrm{Pf}}\) | B5 / `step_005` | B9 comparison and B10 central clause | B2 and B4 -> B5 -> B9 and B10 | derived | valid |
| Exhausted affine chart bound | B6 / `step_006`, exact maps and monotone exhaustion | B8 and B10 general affine clause | primitives plus B1 -> B6 -> B8 and B10 | derived | valid |
| Exact monic object, pivots, formulas, velocities, and \(d=1\) | B7 / `step_007`, direct monomial derivation | B8 and B10 detailed monic clause | monic primitives -> B7 -> B8 and B10 | derived | valid |
| Exact affine-monic probability bound | B8 / `step_008` | B10 baseline conclusion | B6 and B7 -> B8 -> B10 | derived | valid |
| Counter-example 1 scale certificate | B9 / `step_009`, direct coefficient and wedge calculation | B10 scale clause | direct example and B5 comparison -> B9 -> B10 | derived | valid |
| Full assembled theorem | B10 / `step_010`, seven direct producers | Final theorem statement | B1, B2, B5, B6, B7, B8, B9 -> B10 | derived | valid |

No consumer precedes its producer. No closure or assembly label creates a theorem-facing output by assertion. Every generated output has the same source convention and target object as its consumer, and every final public clause has a direct dependency path.

## Early Obstruction And Repair Plausibility

- Contract contradictions: none. The theorem is restricted to the declared anchored, unit-range, coefficient-controlled presentation and does not claim normalization of every raw Pfaffian presentation. The exact goal and all five primitive assumption IDs agree.
- Theorem-critical mechanisms: the anchor supplies the only needed structural lower source; the central incidence has unit coefficient gradient; Ball supplies section size while the incidence Jacobian supplies motion; a selected nonzero affine pivot supplies chart coverage; the prescribed monic pivots supply both exact chart regimes; and \(1/\delta\) supplies the lower-example scale. None is a future-step label without a source.
- Source and convention preflight: all cited sources have stable identities and stated nonoutputs. The standard area/coarea and direct-derivation wrappers act on the exact branch objects, with raw assumptions, Jacobians, target mappings, and boundary branches exposed.
- Residual-to-target stress: \(G_i'\), \(\gamma_F\), the central root coefficient set, \(\Psi_j\), \(p_\alpha\), and the Counter-example event are the exact consumed objects. The only residual sets are endpoints, critical images, coefficient axes or wedge edges, and proper affine or linear subspaces, all null for admissible laws. The monic leading coefficient remains deterministic; no singular, homogenized, or surrogate random coordinate appears.
- Correlation and probability scope: every probability conversion uses only the full joint density cap. No independence, conditional event, confidence conversion, or union bound appears. Central inequalities hold separately for every law and positive-length interval before either supremum.
- Accumulation and noncircularity: central multiplicity is nonnegative; interval integration is controlled by the uniform speed bound; affine exhaustion is monotone with an explicitly allowed infinite endpoint; monic cells form a finite disjoint partition; and B10 is a static conjunction. No persistent adversarial-sign defect or circular generated condition is present.
- `N=1`: the anchor makes the central normalized curve constant and the root event \(\{\alpha=0\}\) null; affine charts use a zero-dimensional \(\beta\)-cube of volume one.
- `q=0` and `Delta=0`: the chain sum is empty, and zero output degree forces zero coordinate derivatives; the normalized curve is stationary, so the central coefficient event is a fixed null hyperplane.
- Stationary curves: B3 has zero projection Jacobian and a fixed null section, so a vanished motion source does not leave a false positive-volume conclusion.
- Tangent or multiple roots: area-formula multiplicity is favorable for the upper bound; critical images have zero coefficient volume. Neither simple roots nor transversality is required.
- Interval endpoints: each endpoint root condition is one proper hyperplane and is admissible-law null. Arbitrarily short but positive central intervals remain covered by the same uniform inequality.
- Near-zero pivots and empty chart cells: every selected nonzero pivot enters some finite exhaustion level; empty cells contribute zero. No uniform pivot margin is asserted.
- Extended-real affine integrals: monotone convergence is valid for nonnegative Jacobians even if the limit diverges, and the exact goal explicitly permits that outcome.
- `d=1`: the single chart has \(T_1=-\theta\), velocity one, and zero-dimensional cube volume one. `d=2` has the same low/high split with both formulas well-defined.
- `theta=0` and `abs(theta)=1`: both lie in the constant-pivot cell. For `abs(theta)>1`, the high pivot \(\theta^{d-1}\) is nonzero and every negative-power derivative factor has magnitude at most one. Thus every bounded monic interval, regardless of location, is covered.
- `epsilon=delta` and `delta=1`: the two wedges still have exact total area one at \(\epsilon=\delta\); \(\delta=1\) gives \(B_Q=1\) and probability \(\epsilon/4\). Axes and equality edges are null.
- Baseline invariance: the monic conclusion is exactly \(\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\), not a remainder or stopped surrogate. The Counter-example conclusion is exactly \(1/(4\delta)\), and both upper interfaces retain \(1/\delta\).
- Attempt-1 interface defect: the stale final step improperly treated primitive and monic internals as transitive exports. Attempt 2 repairs exactly that defect by making B1, B2, and B7 direct B10 inputs while retaining the narrower B5 and B8 outputs. The roadmap, block map, coverage, scope certificate, exported interfaces, generated-output flow, and final conjunction all use the same seven direct inputs.
- Same-setting repair plausibility: no further repair is needed. No primitive assumption, step claim, dependency, output target, mechanism source, theorem scope, metric, exposed dependence, success criterion, or conclusion must change. There is no `sketch/interface defect` and no candidate `idea/theorem-contract defect`.

## Global Gaps And Hard Steps

None.

The theorem architecture closes at diagnostic granularity. This does not certify a local proof: all ten attempt-2 steps remain substantial fresh proof obligations, and each must receive a fresh accepted review before it can be consumed.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, or generated-output interface. Attempt-1 proof, global, review, and assembly artifacts remain stale and cannot supply attempt-2 evidence.

## Suggested Routing

None

Continue with all ten attempt-2 steps in the accepted dependency order, requiring a fresh proof and fresh review for each. After `step_001` and `step_002`, the central incidence wrapper in `/proof-step step_003` is the highest-risk central unit; after `step_001`, `/proof-step step_006` is the parallel high-risk affine unit. Final `/proof-step step_010` may run only after its seven direct producers are freshly accepted.
