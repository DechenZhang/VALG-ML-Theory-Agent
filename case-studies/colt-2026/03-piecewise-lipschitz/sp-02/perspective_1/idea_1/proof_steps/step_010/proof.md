# Proof Step

## Step Identity

- Branch path: `perspective_1/idea_1`
- Sketch attempt: 2
- Step ID: `step_010`
- Unit attempt: 1
- Progress type: `full`
- Run mode: `interactive`

## Binding Artifacts

- Binding `idea.md` SHA-256: `90d54348c0603de55463b9e61611436feb86a1c329966f786db2fc8bc43ba910`
- Binding `setting.md` SHA-256: `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Binding accepted `proof_sketch.md` SHA-256: `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Binding accepted `proof_sketch_review.md` SHA-256: `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`
- Planning-only accepted `global_proof.md` SHA-256: `45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9`
- Paired accepted `global_proof_review.md` SHA-256: `cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db`
- Controller-open `proof_tracker.md` SHA-256 before production: `31b297efd600e9f3f136297dba5afd4e2fc42537b25347f8754d7fbf9ae2cbb8`
- Consumed sketch-attempt-1 same-step proof/review SHA-256 values, diagnostic only: `1588d140a229eb5ca8a4d06dec1cb8dd9b7e813dac7ce0ef416d4068e489a261` / `bf7784969dba0fd47f8b0142c79e1d49452ca77a344dc113dc12f7c9c710543f`

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_010` | Assemble one unconditional theorem containing verbatim the primitive bridge, both central bounds and \(C\) bound, the general affine inequality, exact affine-monic recovery, Counter-example 1 audit, and the declared modes/dependence, with no new lemma or assumption. | `step_001`, `step_002`, `step_005`, `step_006`, `step_007`, `step_008`, `step_009` | Primitive assumptions exactly as allocated above; derived outputs from all seven direct dependencies | Prevent clause loss, target switching, hidden dependence, mode changes, a homogeneous replacement of the affine baseline, promotion of appendix-local objects through nonexporting steps, or an untracked generated output. | Dependency-checked theorem assembly only; restate each public clause from its exact direct producer. | Full exact formalized goal. | R1--R5, including both specialization bridges and all baseline obligations. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:parameter-regime`: \(N\geq1\), \(q\geq0\), \(h>0\), \(R>0\), and \(0<\kappa<\infty\), with \(\Theta=[c-h,c+h]\), nonempty \(\mathcal D_{N,R,\kappa}\), and finite static polynomial degrees and coefficient budgets. The setting definitions \(A=(2R)^N\kappa\), \(\Gamma_{\mathrm{proj}}(F)\), and \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) retain their literal meanings and quantifier order.
- `assump:balcan-common-chain`: the \(p=1\) common triangular chain, total-degree conventions \(q,M,\Delta\), coefficient budgets \(B_P,B_Q\), chain equations, and outputs \(G_i,Q_i\) are exactly those in the formalized setting.
- `assump:anchored-unit-range`: the chain lies in the unit box and \(Q_1\equiv1\), hence \(G_1\equiv F_1\equiv1\). This is the primitive nonvanishing source; no projective-speed, generated boundedness, or extra norm-margin condition is assumed.
- `assump:cube-density-laws`: each random coefficient vector has one full joint Lebesgue density supported on the stated coefficient cube and bounded by \(\kappa\). Coordinate correlation is arbitrary.
- `assump:affine-chart-data`: whenever the general affine clause is invoked, \(F_0\in C^1(\Theta)\), and the measurable cells \(E_1,\ldots,E_N\) partition the invoked interval with \(F_j\neq0\) on \(E_j\). This is a primitive static chart condition, not a generated invariant.

Derived conclusions supplied by current accepted dependencies:

1. **Coordinate derivative envelope.** The accepted proof/review pair is `step_001`, SHA-256 `6c4e3048df8a590bd8c24f6f6b1d6be157c7fe8895af38bd8736ea1c419ac939` / `cd4bc2cee3dabe3638d749cf6996ab6a3bcf6d2a69743bfafcf78b44ad88c3a7`. The review identifies sketch attempt 2, unit attempt 1, and status `ACCEPTED`. Proposition~\ref{prop:step-001-coordinate-envelope} exports the literal coordinatewise envelope
   \[
   D_*:=\Delta B_Q(1+qB_P),
   \qquad |G_i'(x)|\leq D_*
   \]
   for every \(x\in[-1,1]\) and \(1\leq i\leq N\), including the empty-chain convention and degree-zero dependence on \(M\).
2. **Anchored global projective-speed certificate.** The accepted `step_002` proof/review SHA-256 pair is `b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c` / `71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37`. Proposition~\ref{prop:step-002-projective-speed} exports global nonvanishing, the exact normalized Euclidean projector identity, the exact \(x\)-to-\(\theta\) relation, and
   \[
   \Gamma_{\mathrm{proj}}(F)
   \leq \frac{\sqrt N D_*}{h}
   =\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
   \]
3. **Central Rate Specialization Bridge and supremum closure.** The accepted `step_005` proof/review SHA-256 pair is `e3dbe02dd8b6b20828d0e2ff563c95e91d9000865c4d8002db18f746f65d2737` / `d8d4ddf8f57ba935f27eac6437e0ee3921b1323b6b9f1cd6cd8550e58c930135`. Proposition~\ref{prop:step-005-central-rate-bridge} exports only the two literal central probability inequalities and the ordered-supremum \(C^{\mathrm{Pf}}_{\mathcal D}\) conclusion, with ordinary probability, arbitrary correlation, interval and law uniformity, and every stated zero-length-before-division and degree-zero branch.
4. **General affine chart inequality.** The accepted `step_006` proof/review SHA-256 pair is `4ec1534fcbcb44eb50e275a2526c60831fc7dd92b59a1d9db3cf90c68320f068` / `e775661c8345636704e59b07f3a2f972a4b6f5f1a465eb3a5e8b05a1f3d956fa`. Proposition~\ref{prop:step-006-affine-bound} exports the original affine event and coefficient cube, the exact chart integrals, arbitrary-correlated-law scope, measurable pivot exhaustion, tangent, multiple, endpoint, identically-zero, \(N=1\), empty, singleton, and extended-real branches, and no chart-count factor.
5. **Exact monic object, pivot, and velocity certificate.** The accepted `step_007` proof/review SHA-256 pair is `b769b0f15124e73117ec9860f08d5cdd0eb78100daf134d6a69d1891a7dc4c6d` / `3f54140026d5c207c333ea9c53ea443357ad708b16353695ea875fd46dbc7b34`. Proposition~\ref{prop:step-007-monic-presentation} and Lemmas~\ref{lem:step-007-pivot-partition}, \ref{lem:step-007-low-pivot-chart}, and \ref{lem:step-007-high-pivot-chart} export the exact normalized presentation, the unchanged lower-coefficient object, the parameter and augmented-degree data, the prescribed cells, both chart formulas and velocity certificates, transition handling, and the \(d=1\) convention.
6. **Exact affine-monic probability conclusion.** The accepted `step_008` proof/review SHA-256 pair is `796a93f69656d53ab9dddddec9866994d6d0a3c6494003eeca984ae42f858e2b` / `1bc23f593d16c262e76775c16b5820312570f482b37264c3d92e860109230fa0`. Proposition~\ref{prop:step-008-s2-affine-transfer}, Lemma~\ref{lem:step-008-s2-two-cell-ledger}, and Proposition~\ref{prop:step-008-s2-linear-branch} jointly export only
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq \kappa(2R)^{d-1}
   \left(d+\frac{R d(d-1)}2\right)|J|
   \]
   for the arbitrary correlated \(d\)-dimensional lower-coefficient law, with deterministic leading coefficient and the zero-dimensional \(d=1\) branch.
7. **Counter-example 1 scale certificate.** The accepted `step_009` proof/review SHA-256 pair is `9758e4e566fddb8008a675e2274c89c41acabd3a856713f65c89841e4e795c81` / `188e5d507b8c294a79cdacb58e1765ef337927acfcc681488c031759e698532e`. Proposition~\ref{prop:step-009-s2-presentation-speed}, Lemma~\ref{lem:step-009-s2-closed-wedges}, and Proposition~\ref{prop:step-009-s2-scale-certificate} export the exact tuple, \(B_Q=1/\delta\), normalized speed, probability \(\epsilon/(4\delta)\), lower certificate \(1/(4\delta)\), and the distinct \(1/\delta\) and \(\sqrt2/\delta\) upper comparisons, without an equality or optimality claim.

Local conditional hypotheses: None. Fixed laws, intervals, chart cells, and specialization parameters below are arbitrary objects under the displayed primitive or dependency quantifiers. No generated event, independence condition, transversality condition, simple-root condition, amplitude condition, uniform pivot margin, finite-integral condition, or auxiliary tolerance is assumed.

The seven dependency reviews are current for their proof artifacts and all record `ACCEPTED`. `step_003` and `step_004` are not direct dependencies and are not consumed as proof evidence; their transitive outputs reach this step only through the accepted, narrower `step_005` interface.

## Local Lemma Map

Atomic step = no. Local unit count = 1.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-unit-range}; under Assumption~\ref{assump:cube-density-laws} for the probabilistic clauses; under Assumption~\ref{assump:affine-chart-data} for the general affine clause; and under the accepted direct conclusions Proposition~\ref{prop:step-001-coordinate-envelope}, Proposition~\ref{prop:step-002-projective-speed}, Proposition~\ref{prop:step-005-central-rate-bridge}, Proposition~\ref{prop:step-006-affine-bound}, Proposition~\ref{prop:step-007-monic-presentation}, Lemmas~\ref{lem:step-007-pivot-partition}, \ref{lem:step-007-low-pivot-chart}, and \ref{lem:step-007-high-pivot-chart}, Proposition~\ref{prop:step-008-s2-affine-transfer}, Lemma~\ref{lem:step-008-s2-two-cell-ledger}, Proposition~\ref{prop:step-008-s2-linear-branch}, Proposition~\ref{prop:step-009-s2-presentation-speed}, Lemma~\ref{lem:step-009-s2-closed-wedges}, and Proposition~\ref{prop:step-009-s2-scale-certificate}, all primitive, central, general affine, detailed monic, exact affine-monic, and Counter-example clauses of the formalized goal hold together with their literal constants, quantifiers, modes, boundary branches, and full progress type. | Packages exactly the seven accepted producer interfaces into one paper-ready unconditional theorem, without adding a mathematical mechanism, assumption, rate, citation, or derived claim. |

The final conjunction is non-atomic as a theorem statement because it has six separately quantified mathematical clauses and five rate/mode audits. It needs no helper lemma: every clause is already a complete accepted conclusion, and the sole proof operation is named dependency application followed by logical conjunction.

## Cited Result Applications

External paper results and newly invoked standard theorems: None. No geometric, probabilistic, calculus, area-formula, cube-section, or polynomial-root theorem is invoked anew in this step.

1. **Proposition~\ref{prop:step-001-coordinate-envelope} (Coordinate derivative envelope for a bounded common chain).** Under Assumptions~\ref{assump:balcan-common-chain} and \ref{assump:anchored-unit-range}, it defines \(D_*=\Delta B_Q(1+qB_P)\) and concludes
   \[
   |G_i'(x)|\leq D_*
   \quad
   (x\in[-1,1],\ 1\leq i\leq N).
   \]
   The conclusion includes \(G_i\in C^1([-1,1])\), the endpoint convention, \(q=0\) with \(M=B_P=0\), \(\Delta=0\), constant and zero outputs, and degree-zero \(M\)-dependence. Both assumptions are primitive and are listed above. This result supplies only the primitive coordinate derivative clause and the accepted object \(D_*\).

2. **Proposition~\ref{prop:step-002-projective-speed} (Anchored global projective-speed certificate).** Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range} and accepted Proposition~\ref{prop:step-001-coordinate-envelope}, it concludes
   \[
   G_1(x)=F_1(\theta)=1,
   \qquad
   \|G(x)\|_2,\|F(\theta)\|_2\geq1,
   \]
   \[
   \gamma_G'(x)
   =\frac{(I_N-\gamma_G(x)\gamma_G(x)^{\mathsf T})G'(x)}
          {\|G(x)\|_2},
   \qquad
   \gamma_F(\theta)=\gamma_G\!\left(\frac{\theta-c}{h}\right),
   \]
   \[
   \gamma_F'(\theta)
   =\frac1h\gamma_G'\!\left(\frac{\theta-c}{h}\right),
   \qquad
   \Gamma_{\mathrm{proj}}(F)
   \leq\frac{\sqrt N D_*}{h}.
   \]
   These are global Euclidean identities and bounds, including one-sided endpoints, \(N=1\), \(q=0\), stationary normalized curves, and the required \(B_Q=1/\delta\) scale. The anchor discharges nonvanishing before normalization.

3. **Proposition~\ref{prop:step-005-central-rate-bridge} (Central Rate Specialization Bridge and supremum closure).** With the deterministic presentation fixed first, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval \(I\subseteq\Theta\), this accepted dependency concludes
   \[
   \Pr_{\alpha\sim\mu}\!\left[
   \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
   \right]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
   \leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
   \]
   and, with the interval supremum taken first for fixed law and the law supremum taken second,
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
   \leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
   \]
   Every coefficient is literal, \(A=(2R)^N\kappa\), dependence on \(M\) is degree zero, and correlation is arbitrary. Empty and singleton intervals are handled with zero right side before division; endpoint inclusion is unchanged. The accepted producer already discharges its internal inputs. This step consumes only this central output and does not promote the primitive bridge through it.

4. **Proposition~\ref{prop:step-006-affine-bound} (General affine chart inequality).** Under all five primitive assumptions and accepted Proposition~\ref{prop:step-001-coordinate-envelope}, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\), it concludes first the sharper coefficient-cube-restricted inequality and then the public bound
   \[
   \begin{aligned}
   &\Pr_{\alpha\sim\mu}\!\left[
   \exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0
   \right]\\
   &\quad\leq
   \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
   \end{aligned}
   \]
   Both the sharper and public inequalities are valid in \([0,+\infty]\). The accepted statement uses the original affine event and coefficient ordering, exact setting charts, one full joint density, arbitrary correlation, and a measurable finite-level exhaustion. It includes empty and singleton intervals, included endpoints, near-zero pivots, tangent and multiple roots, infinite fibers, affine-identically-zero coefficients, \(N=1\), and divergent limiting chart integrals, without a chart-count factor.

5. **Direct `step_007` monic results.** Proposition~\ref{prop:step-007-monic-presentation} states that for every \(d\geq1\) and bounded interval \(J\subset\mathbb R\), a nondegenerate \(\Theta=[c-h,c+h]\supseteq J\) has
   \[
   Q_0(x)=(c+hx)^d,
   \qquad
   Q_{k+1}(x)=(c+hx)^k,
   \]
   \[
   F_0(\theta)=\theta^d,
   \qquad
   F_{k+1}(\theta)=\theta^k,
   \qquad
   F_0(\theta)+\langle\alpha,F(\theta)\rangle=p_\alpha(\theta),
   \]
   with
   \[
   q=0,\quad M=0,\quad B_P=0,\quad N=d,
   \quad A=(2R)^d\kappa,\quad \Delta_{\mathrm{aug}}=d,
   \]
   and with the monic coefficient deterministic and outside \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\). Lemma~\ref{lem:step-007-pivot-partition} supplies the prescribed measurable cells and proves their pivots are active. Lemma~\ref{lem:step-007-low-pivot-chart} supplies
   \[
   T_1(\theta,\beta)
   =-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
   \qquad
   |\partial_\theta T_1|
   \leq d+R\sum_{k=1}^{d-1}k
   =d+\frac{R d(d-1)}2,
   \]
   including \(T_1=-\theta\) and \(|T_1'|=1\) for \(d=1\). Lemma~\ref{lem:step-007-high-pivot-chart} supplies, for \(d\geq2\) and \(|\theta|>1\),
   \[
   T_d(\theta,\beta)
   =-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
   \]
   \[
   |\partial_\theta T_d|
   \leq1+R\sum_{k=0}^{d-2}(d-1-k)
   =1+\frac{R d(d-1)}2
   \leq d+\frac{R d(d-1)}2.
   \]
   These four results, and not `step_008`, directly supply the detailed monic presentation and chart certificate.

6. **Accepted exact affine-monic recovery.** Proposition~\ref{prop:step-008-s2-affine-transfer} transfers the accepted general affine theorem to the identical monic event and \(d\)-dimensional lower-coefficient law. Lemma~\ref{lem:step-008-s2-two-cell-ledger} gives, for \(d\geq2\),
   \[
   \sum_{j=1}^{d}\int_{E_j}\int_{[-R,R]^{d-1}}
   |\partial_\theta T_j|\,d\beta\,d\theta
   \leq(2R)^{d-1}
   \left(d+\frac{R d(d-1)}2\right)|J|,
   \]
   without a chart-count factor. Proposition~\ref{prop:step-008-s2-linear-branch} gives exactly \(\kappa|J|\) when \(d=1\), using \(\operatorname{Leb}^0([-R,R]^0)=1\). The accepted dependency assembly therefore concludes, for every \(d\geq1\), every arbitrary \(\mu\in\mathcal D_{d,R,\kappa}\), and then every bounded interval \(J\),
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq\kappa(2R)^{d-1}
   \left(d+\frac{R d(d-1)}2\right)|J|.
   \]
   The leading coefficient stays deterministic, coefficient correlation is arbitrary, and no independent root theorem or probability conversion is introduced.

7. **Direct `step_009` scale results.** Proposition~\ref{prop:step-009-s2-presentation-speed} supplies, for \(0<\delta\leq1\),
   \[
   (q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h)
   =\left(0,0,1,2,1,\frac14,1,0,\frac1\delta,1\right),
   \]
   \[
   \gamma_F(\theta)
   =\frac{(\delta,\theta)}{\sqrt{\delta^2+\theta^2}},
   \qquad
   \|\gamma_F'(\theta)\|_2
   =\frac{\delta}{\delta^2+\theta^2},
   \qquad
   \Gamma_{\mathrm{proj}}(F)=\frac1\delta.
   \]
   Lemma~\ref{lem:step-009-s2-closed-wedges} gives, for every \(0<\epsilon\leq\delta\), the exact closed-event probability
   \[
   \Pr\!\left[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0\right]
   =\frac{\epsilon}{4\delta}.
   \]
   Proposition~\ref{prop:step-009-s2-scale-certificate} then concludes
   \[
   \frac1{4\delta}
   \leq C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])
   \leq\frac1\delta
   \leq\frac{\sqrt2}{\delta},
   \qquad \mathcal D=\mathcal D_{2,1,1/4},
   \]
   where the two upper values are the projective and raw-presentation comparisons. It asserts neither equality nor optimality for the capacity.

8. **Proposition~\ref{prop:step-010-s2-exact-goal-assembly} (local assembly proposition).** Its statement below is the clause-by-clause conjunction of Applications 1--7 under their unchanged assumption bases. It is used in `## Target-Step Assembly`. Its proof applies those named results only; it contains no independent mathematical lemma or new cited-result application.

## Local Derivation

### unit_001: proposition

**Proposition (Anchored coefficient-normalized Pfaffian sweep with exact affine recovery).**
\label{prop:step-010-s2-exact-goal-assembly}

**Statement.** Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain}, and
\ref{assump:anchored-unit-range}, define all setting objects with their
original meanings. Under Assumption~\ref{assump:cube-density-laws} for each
probabilistic clause, and additionally under
Assumption~\ref{assump:affine-chart-data} whenever the general affine clause
is invoked, the following conclusions hold together. Each clause retains the
separate assumption basis and quantifier scope displayed below.

**Primitive-presentation bridge.** Under
Assumptions~\ref{assump:balcan-common-chain} and
\ref{assump:anchored-unit-range}, define
\[
D_*:=\Delta B_Q(1+qB_P).
\]
For every \(x\in[-1,1]\) and \(1\leq i\leq N\), including one-sided endpoint
derivatives,
\[
|G_i'(x)|\leq D_*.
\]
The literal coordinatewise bound gives
\[
\|G'(x)\|_2\leq\sqrt N D_*.
\]
Moreover,
\[
G_1(x)=F_1(\theta)=1,
\qquad
\|G(x)\|_2,\|F(\theta)\|_2\geq1,
\]
so normalization is globally legal. With \(\gamma_G=G/\|G\|_2\),
\[
\frac{d}{dx}\frac{G}{\|G\|_2}
=\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2},
\]
\[
\gamma_F(\theta)=\gamma_G\!\left(\frac{\theta-c}{h}\right),
\qquad
\gamma_F'(\theta)
=\frac1h\gamma_G'\!\left(\frac{\theta-c}{h}\right),
\]
and hence
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N D_*}{h}
=\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
\]
The parameters \(q,M,\Delta,B_P,B_Q,h^{-1}\) retain their exact
Balcan--Nguyen--Sharma meanings. Dependence on \(M\) is explicitly degree
zero when \(B_P\) is held fixed. At \(q=0\), \(M=B_P=0\) and
\(D_*=\Delta B_Q\). At \(N=1\), the anchor makes the normalized curve
constant and the speed zero. If the Euclidean projector annihilates \(G'\),
the normalized curve is stationary and its projective speed is zero; this is
a conclusion of the identity, not an added branch assumption.

**Central swept-hyperplane bounds.** Fix the complete deterministic
presentation before any law or interval is selected. For every arbitrary,
possibly correlated \(\mu\in\mathcal D_{N,R,\kappa}\), and then every
interval \(I\subseteq\Theta\) with \(|I|>0\), ordinary probability satisfies
\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]\\
&\quad\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|\\
&\quad\leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|.
\end{aligned}
\]
The defining inner-then-outer order is retained literally:
\[
\begin{aligned}
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
&:=\sup_{\mu\in\mathcal D_{N,R,\kappa}}
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0]}{|I|}\\
&\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\\
&\leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\end{aligned}
\]
Here \(A=(2R)^N\kappa\), every factor is literal, and there is no hidden
constant or confidence parameter. Before division, the probability chain is
also valid for empty and singleton intervals, with zero right side. Every
literal endpoint convention is retained. The accepted central producer's
ordinary-probability interface already covers tangent and multiple roots,
stationary normalized curves, interval endpoints, \(N=1\), and coefficients
for which the central combination is identically zero. Arbitrary coefficient
correlation is allowed throughout.

**General affine chart bound.** Let \(F_0\in C^1(\Theta)\), let
\(I\subseteq\Theta\) be any interval, and let
\(I=\bigsqcup_{j=1}^N E_j\) be the primitive measurable pivot partition.
For \(\beta\in[-R,R]^{N-1}\), indexed by the coordinates \(i\neq j\), use
the original charts
\[
T_j(\theta,\beta)
=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)},
\]
\[
\partial_\theta T_j(\theta,\beta)
=-\frac{
\left(F_0'(\theta)+\sum_{i\neq j}\beta_iF_i'(\theta)\right)F_j(\theta)
-\left(F_0(\theta)+\sum_{i\neq j}\beta_iF_i(\theta)\right)F_j'(\theta)
}{F_j(\theta)^2}.
\]
Then every arbitrary, possibly correlated
\(\mu\in\mathcal D_{N,R,\kappa}\) satisfies
\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}\!\left[
\exists\theta\in I:F_0(\theta)+\langle\alpha,F(\theta)\rangle=0
\right]\\
&\quad\leq
\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
\end{aligned}
\]
This inequality is in \([0,+\infty]\), so a divergent chart integral is an
allowed right side. The accepted finite-level sets
\(E_{j,m}=\{\theta\in E_j:|F_j(\theta)|\geq1/m\}\) increase to \(E_j\),
and every root enters some finite level; no uniform pivot margin is asserted.
The conclusion uses the original \(N\)-dimensional coefficient cube and one
literal factor \(\kappa\), with no chart-count multiplier. It includes empty
and singleton intervals, every included endpoint, cube faces, near-zero
pivots, tangent and multiple roots, infinite fibers, \(N=1\), and the
affine-identically-zero coefficient class. No transversality, simple-root,
finite-fiber, finite-integral, amplitude, conditional-density, or
independence assumption is present.

**Exact affine-monic presentation and chart certificate.** Fix any integer
\(d\geq1\) and bounded interval \(J\subset\mathbb R\). Choose a nondegenerate
\(\Theta=[c-h,c+h]\supseteq J\) and set
\[
F_0(\theta)=\theta^d,
\qquad
F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\]
\[
Q_0(x)=(c+hx)^d,
\qquad
Q_{k+1}(x)=(c+hx)^k\quad(0\leq k\leq d-1),
\]
\[
p_\alpha(\theta)
=F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
\]
The exact specialization data are
\[
q=0,
\qquad M=0,
\qquad B_P=0,
\qquad N=d,
\qquad A=(2R)^d\kappa,
\qquad \Delta_{\mathrm{aug}}=d.
\]
The monic coefficient \(1\) remains deterministic and outside the random
\(d\)-dimensional lower-coefficient vector
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\).

For \(d\geq2\), use exactly
\[
E_1=J\cap\{|\theta|\leq1\},
\qquad
E_d=J\cap\{|\theta|>1\},
\qquad
E_j=\varnothing\quad(j\notin\{1,d\}).
\]
The transition points \(\theta=0,1,-1\), when present, belong to the
constant-pivot cell, where \(F_1=1\). On \(E_d\),
\(F_d=\theta^{d-1}\neq0\). With the nonpivot coordinates indexed by their
polynomial exponents, the low chart is
\[
T_1(\theta,\beta)
=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
\qquad
\partial_\theta T_1
=-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1},
\]
and its literal certificate is
\[
|\partial_\theta T_1|
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{R d(d-1)}2
\qquad(|\theta|\leq1).
\]
For \(d\geq2\), the high chart is
\[
T_d(\theta,\beta)
=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},
\qquad
\partial_\theta T_d
=-1+\sum_{k=0}^{d-2}(d-1-k)\beta_k\theta^{k-d},
\]
and its literal certificate is
\[
|\partial_\theta T_d|
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{R d(d-1)}2
\leq d+\frac{R d(d-1)}2
\qquad(|\theta|>1).
\]
Every negative power is restricted to the strict high cell. For \(d=1\),
use \(E_1=J\); the beta cube is the unique zero-dimensional tuple,
\(T_1=-\theta\), and \(|T_1'|=1\). Empty cells and intervals contained in
only one regime introduce no additional branch or factor.

**Exact affine-monic probability recovery.** Fix \(d\geq1\), then an
arbitrary possibly correlated law
\(\mu\in\mathcal D_{d,R,\kappa}\), and then an arbitrary bounded interval
\(J\subset\mathbb R\). For the exact presentation above, ordinary probability
satisfies
\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)|J|.
\]
The coefficient \((2R)^{d-1}\) is the exact beta-cube volume. There is no
factor for two charts or \(d\) charts, no interval enlargement, no law
augmentation, no conditional density, and no random leading coordinate. At
\(d=1\), the bound reduces exactly to \(\kappa|J|\) because the beta cube has
volume one and the sole chart has speed one. Empty and singleton \(J\), all
literal endpoints, cube faces, transition points, arbitrary interval
location, empty cells, and arbitrary coefficient correlation remain within
the accepted conclusion.

**Counter-example 1 scale audit.** Let \(0<\delta\leq1\),
\(\Theta=[-1,1]\), \(c=0\), \(h=1\), and
\[
G(x)=\left(1,\frac{x}{\delta}\right),
\qquad
F(\theta)=\left(1,\frac{\theta}{\delta}\right).
\]
For the uniform law on \([-1,1]^2\), the exact tuple is
\[
(h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)
=\left(1,0,0,1,2,1,\frac14,1,0,\frac1\delta\right).
\]
The exact normalized curve and speed are
\[
\gamma_F(\theta)
=\frac{(\delta,\theta)}{\sqrt{\delta^2+\theta^2}},
\qquad
\|\gamma_F'(\theta)\|_2
=\frac{\delta}{\delta^2+\theta^2},
\qquad
\Gamma_{\mathrm{proj}}(F)=\frac1\delta.
\]
For every \(0<\epsilon\leq\delta\), including \(\epsilon=\delta\),
\[
\Pr\!\left[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0\right]
=\frac{\epsilon}{4\delta}.
\]
Consequently, for \(\mathcal D=\mathcal D_{2,1,1/4}\),
\[
\frac1{4\delta}
\leq C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])
\leq
\underbrace{A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)}_{1/\delta}
\leq
\underbrace{\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}}_{\sqrt2/\delta}.
\]
The first upper value is the projective comparison and the second is the raw
presentation comparison. The chain is only a lower/upper certificate: it
asserts neither equality nor optimality for
\(C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\). At \(\delta=1\), the probability
is \(\epsilon/4\); at \(\epsilon=\delta\), it is \(1/4\). No limiting
argument is used.

All clauses use ordinary probability for each fixed displayed law, the exact
interval scopes stated in their clauses, Euclidean projective norm for the
central result, scalar absolute chart velocity for the affine results, and
literal constants with no confidence parameter. The full deterministic
presentation is fixed before the central law and interval suprema are taken.
The theorem has progress type `full` for the declared anchored, unit-range,
coefficient-controlled normalization. It preserves the source's Balcan
\(q,M,\Delta\) convention, arbitrary correlated full joint laws, explicit
\(N,R,\kappa,A\) and conditioning dependence, exact internal affine-monic
recovery, and Counter-example metric scale. It does not claim that every raw
Pfaffian presentation admits this normalization with polynomial budgets.

**Proof / justification.** Proposition~\ref{prop:step-001-coordinate-envelope}
supplies the primitive coordinatewise derivative envelope and every one of
its degree-zero and endpoint branches. Proposition~\ref{prop:step-002-projective-speed}
supplies the anchor-derived nonvanishing, exact normalized-projector identity,
same-target coordinate relation, and projective-speed certificate.

Proposition~\ref{prop:step-005-central-rate-bridge} supplies exactly the two
central probability inequalities and the defining inner-then-outer supremum
closure. It is used only for those central outputs. Proposition~\ref{prop:step-006-affine-bound}
supplies the general affine event inequality in its original coefficient
dimension, chart, law, and extended-real modes.

Proposition~\ref{prop:step-007-monic-presentation} and
Lemmas~\ref{lem:step-007-pivot-partition},
\ref{lem:step-007-low-pivot-chart}, and
\ref{lem:step-007-high-pivot-chart} supply directly the exact detailed monic
presentation, prescribed pivots, chart formulas, literal velocity
certificates, transition behavior, and zero-dimensional convention. None of
those objects is promoted through `step_008`. Proposition~\ref{prop:step-008-s2-affine-transfer},
Lemma~\ref{lem:step-008-s2-two-cell-ledger}, and
Proposition~\ref{prop:step-008-s2-linear-branch} supply only the exact
affine-monic probability conclusion, with its \(d\geq2\) and \(d=1\)
branches.

Finally, Proposition~\ref{prop:step-009-s2-presentation-speed},
Lemma~\ref{lem:step-009-s2-closed-wedges}, and
Proposition~\ref{prop:step-009-s2-scale-certificate} supply the exact
Counter-example tuple, speed, closed-event probability, lower certificate,
and distinct upper comparisons. Their accepted conclusion expressly rules
out an equality or optimality claim.

Each displayed clause is therefore a literal restatement of a direct accepted
producer conclusion in the identical object, coefficient dimension, law,
interval, norm, and probability mode. Taking their logical conjunction proves
the proposition. This proof introduces no calculation, source theorem,
assumption, simplification, probability conversion, hidden constant, or
generated output. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-010-s2-exact-goal-assembly} is the single local
assembly unit. Its proof applies, in producer order, accepted
Proposition~\ref{prop:step-001-coordinate-envelope}, accepted
Proposition~\ref{prop:step-002-projective-speed}, accepted
Proposition~\ref{prop:step-005-central-rate-bridge}, accepted
Proposition~\ref{prop:step-006-affine-bound}, the four accepted named
`step_007` monic results, the three accepted named `step_008` results, and the
three accepted named `step_009` results. Those are exactly the seven direct
dependency artifacts in the accepted row.

The proposition states the primitive bridge directly from the `step_001` and
`step_002` producers, states only the central output from `step_005`, states
the general affine output from `step_006`, states the detailed monic
certificate directly from `step_007`, states only the exact monic probability
output from `step_008`, and states the scale audit from `step_009`. Thus no
transitive proof ancestry or appendix-local object is treated as an export of
a narrower producer. Direct logical conjunction of these named results proves
the exact `step_010` target, including every R1--R5 declaration and baseline
obligation. No subsection title, local unit ID, diagnostic global statement,
or stale artifact is mathematical authority.

## Explicit Rate Audit

The assembly performs no quantitative derivation. It preserves the accepted
R1--R5 interfaces as follows.

### R1: Primitive Presentation And Projective Speed

- Exposed variables: \(q,M,\Delta,N,B_P,B_Q,h^{-1}\), with \(M\) explicitly degree zero when \(B_P\) is fixed.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any presentation parameter, law, interval, point, coordinate, or unrecorded range or norm margin.
- Fixed quantities: The complete deterministic common-chain presentation and \(\Theta\).
- Probability mode: Deterministic.
- Horizon mode: Pointwise on all of \([-1,1]\) and \(\Theta\), including one-sided endpoints, followed by the setting-defined essential supremum.
- Norm mode: Scalar absolute coordinate derivative, Euclidean vector and operator norms, and Euclidean projective speed.
- Admissibility conditions and auxiliary tolerances: Exactly Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-unit-range}; no tolerance, generated event, or extra margin.
- Term absorption or simplification inequalities: None in this assembly. The accepted producers expose \(D_*=\Delta B_Q(1+qB_P)\), \(|G'|_2\leq\sqrt N D_*\), \(|G|_2\geq1\), the Euclidean projector contraction, and the exact factor \(h^{-1}\) literally.
- Probability conversion: None.
- Contribution to a Rate Specialization Bridge: This is the exact raw presentation-to-projective-speed bridge consumed by R2.
- Baseline-reduction check: At \(q=0\), \(M=B_P=0\) and \(D_*=\Delta B_Q\). At \(N=1\) or for a stationary normalized curve, the speed is zero. Counter-example 1 has \(B_Q=1/\delta\), so the required scale is retained without a hidden factor.

### R2: Central All-Law And All-Interval Bound

- Exposed variables: \(A=(2R)^N\kappa\), \(N\), \(\Gamma_{\mathrm{proj}}(F)\), and after R1 specialization \(q,M,\Delta,B_P,B_Q,h^{-1}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), any exposed parameter, coefficient correlation, endpoint convention, or section orientation.
- Fixed quantities: The deterministic presentation and the full central tuple are fixed before \(\mu\) and \(I\) range.
- Probability mode: Ordinary probability for each fixed arbitrary correlated full joint law; no expectation, confidence, conditioning, or union-bound conversion.
- Horizon mode: Every positive-length interval, followed first by the interval supremum for fixed law and then by the law supremum. Empty and singleton intervals are handled before the quotient.
- Norm mode: Euclidean projective speed and ordinary Lebesgue interval length; the accepted producer's coefficient and section measures remain Euclidean.
- Admissibility conditions and auxiliary tolerances: Exactly the central primitive assumptions and accepted R1 interface; no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped. The accepted central producer preserves the literal coefficients \(A\sqrt{N/2}\) and \(AN\Delta B_Q(1+qB_P)/(\sqrt2 h)\).
- Probability conversion: None in this assembly. The accepted producer already exports ordinary probability under the full joint density.
- Contribution to a Rate Specialization Bridge: R2 contains the complete R1-to-R2 public bridge and the exact two ordered suprema.
- Baseline-reduction check: At \(q=0\), the raw coefficient becomes \(AN\Delta B_Q/(\sqrt2 h)\). At zero projective speed the interval probabilities and capacity are zero. This central theorem is not substituted for the general affine theorem or exact affine-monic baseline.

### R3: General Affine Chart Bound

- Exposed variables: \(\kappa,R,N,F_0,F,I,(E_j)_{j=1}^N\), and the exact integrals of \(|\partial_\theta T_j|\) over \(E_j\times[-R,R]^{N-1}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The law, interval, presentation, coefficient correlation, pivot margin, root multiplicity, transversality, integral finiteness, or any exposed object.
- Fixed quantities: The deterministic affine presentation, interval, and measurable pivot partition for each invocation while the law is arbitrary.
- Probability mode: Ordinary probability under each arbitrary correlated capped full joint density.
- Horizon mode: Every interval, after the complete pointwise pivot exhaustion; a divergent chart integral remains legal in the extended-real sense.
- Norm mode: Scalar absolute chart Jacobian and Lebesgue coefficient volume, with zero-dimensional beta measure one at \(N=1\).
- Admissibility conditions and auxiliary tolerances: Exactly the five primitive assumptions and the accepted `step_001` regularity interface. The threshold \(1/m\) is dependency-local and absent from the theorem surface.
- Term absorption or simplification inequalities: No chart term is absorbed and no chart-count factor is added. The exported probability coefficient is literally \(\kappa\).
- Probability conversion: None in this assembly. The accepted affine producer already applies the one full-joint-density domination.
- Contribution to a Rate Specialization Bridge: R3 preserves the deterministic offset outside the random vector and is the same general affine theorem consumed by R4.
- Baseline-reduction check: The original random-vector dimension and affine event are unchanged, permitting exact monic specialization without a singular random leading coordinate, changed mode, or remainder.

### R4: Exact Affine-Monic Baseline

- Exposed variables: \(d,R,\kappa,|J|\), with \(q=M=B_P=0\), \(N=d\), \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(J,c,h\), interval location, coefficient correlation, chart count, pivot margin, leading-coordinate approximation, or auxiliary threshold.
- Fixed quantities: \(d,R,\kappa\), one arbitrary admissible lower-coefficient law, the deterministic monic presentation, and a nondegenerate enclosing \(\Theta\).
- Probability mode: Ordinary probability for every arbitrary possibly correlated law of the \(d\) lower coefficients.
- Horizon mode: Every bounded interval \(J\), with its literal endpoint convention and no enlargement.
- Norm mode: Scalar absolute chart velocity and Euclidean Lebesgue coefficient volume, including zero-dimensional measure at \(d=1\).
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\), bounded \(J\), the full \(d\)-dimensional joint density cap, and the accepted deterministic chart interfaces; no auxiliary tolerance.
- Term absorption or simplification inequalities: The accepted producers retain \(\operatorname{Leb}^{d-1}([-R,R]^{d-1})=(2R)^{d-1}\), the sharper high-chart speed, \(1+R d(d-1)/2\leq d+R d(d-1)/2\), and the exact disjoint partition length. This assembly performs no simplification.
- Probability conversion: None in this assembly or specialization; the single density conversion belongs to the accepted R3 producer.
- Contribution to a Rate Specialization Bridge: R4 is the complete exact baseline bridge from the same general affine theorem, with the detailed certificate directly sourced from `step_007` and probability conclusion directly sourced from `step_008`.
- Baseline-reduction check: At \(d=1\), the beta cube has volume one, the sole speed is one, and the probability bound is exactly \(\kappa|J|\). For all \(d\), the deterministic leading coefficient, lower-coefficient law dimension, ordinary-probability mode, and literal baseline coefficient remain unchanged.

### R5: Counter-example 1 Scale

- Exposed variables: \(\delta,\epsilon\), with \(0<\epsilon\leq\delta\leq1\), and the complete specialized tuple.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta,\epsilon\), sign branch, boundary, law, interval, or presentation parameter.
- Fixed quantities: The deterministic feature \(F=(1,\theta/\delta)\), \(\delta\), the uniform full joint law on \([-1,1]^2\), and \(\mathcal D_{2,1,1/4}\).
- Probability mode: Exact ordinary probability under the witness law for the lower event, and ordinary law/interval-uniform probability for the accepted upper capacity interface.
- Horizon mode: Every closed interval \([0,\epsilon]\) in the stated range, followed by the setting-defined capacity; no small-interval limit is used.
- Norm mode: Euclidean projective norm, planar Lebesgue coefficient area, and ordinary interval length.
- Admissibility conditions and auxiliary tolerances: Exactly \(0<\epsilon\leq\delta\leq1\); no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The dependency supplies \(B_Q=1/\delta\), exact speed \(1/\delta\), exact probability \(\epsilon/(4\delta)\), exact quotient \(1/(4\delta)\), exact projective comparison \(1/\delta\), and exact raw comparison \(\sqrt2/\delta\).
- Probability conversion: Exact integration of the fixed full joint density over the two closed wedges is already completed by the accepted producer; this assembly performs none.
- Contribution to a Rate Specialization Bridge: R5 compares the independently proved lower certificate with both accepted central upper certificates.
- Baseline-reduction check: At \(\epsilon=\delta\), the probability is \(1/4\); at \(\delta=1\), it is \(\epsilon/4\). For every positive admissible \(\epsilon\), the quotient is \(1/(4\delta)\). The presentation exposes \(B_Q=1/\delta\), and neither capacity equality nor optimality is asserted.

Source alignment is unchanged from the binding setting. The proposition
preserves the Balcan \(q,M,\Delta\) convention, arbitrary correlated full
joint densities, all-law/all-positive-length-interval central uniformity,
explicit \(N,R,\kappa,A\) and conditioning dependence, Counter-example 1's
metric scale, and exact internal affine recovery of the monic baseline without
a singular random leading coordinate. Progress type remains `full` for the
declared anchored, unit-range, coefficient-controlled normalization. The
proposition does not assert polynomial-budget conversion of every raw
Pfaffian presentation.

## Blockers

None

## Notation And Assumption Notes

- \(D_*=\Delta B_Q(1+qB_P)\) is `public-facing` and is inherited unchanged from accepted Proposition~\ref{prop:step-001-coordinate-envelope}. Its finiteness and coordinatewise derivative bound are accepted derived conclusions, not primitive boundedness assumptions.
- The setting-defined \(F,G,\gamma_F,\Gamma_{\mathrm{proj}}(F),A,\mathcal D_{N,R,\kappa},C^{\mathrm{Pf}}_{\mathcal D}\), affine charts \(T_j\), and chart velocities are `public-facing` because they occur in the formalized goal.
- The monic \(F_0,F,p_\alpha,Q_0,\ldots,Q_d\), specialization tuple, \(\Delta_{\mathrm{aug}}\), prescribed cells, \(T_1,T_d\), and both velocity certificates are `public-facing` in this step. They are direct accepted `step_007` outputs required by the detailed formalized-goal clause; they are not imported through `step_008`.
- The exact monic probability bound is `public-facing` and comes only from the accepted `step_008` target assembly. The proof-local ledger objects used inside that dependency are not promoted here.
- The affine exhaustion sets \(E_{j,m}\) are `appendix-local` accepted dependency objects. They are restated only to preserve the measurable exhaustion scope; no exhaustion level, threshold, or uniform margin is exported.
- No new `proof-local` mathematical helper is introduced by this assembly. The label `prop:step-010-s2-exact-goal-assembly` and local unit handle `unit_001` are proof organization only. All displayed mathematical symbols are setting-defined, target-specified, or exact accepted dependency objects.
- Constant provenance is exact. \(A=(2R)^N\kappa\) is setting-defined; \(D_*\) and the projective coefficient come from `step_001` and `step_002`; both central coefficients come from `step_005`; the affine coefficient \(\kappa\) comes from `step_006`; the monic tuple and velocity constants come from `step_007`; the monic probability coefficient comes from `step_008`; and the Counter-example constants come from `step_009`. No constant is chosen, bounded, simplified, or hidden in this step.
- Assumption provenance is exact. The five stable assumption IDs are primitive. Coordinate derivatives, nonvanishing, normalized speed, central probability, affine coverage, monic object and pivots, monic probability, and Counter-example certificates are accepted derived outputs. There is no local conditional hypothesis used for an unconditional theorem-facing conclusion.
- Generated-output flow is direct and acyclic: `step_001`, `step_002`, `step_005`, `step_006`, `step_007`, `step_008`, and `step_009` feed this proposition, which feeds the final theorem. Neither `step_005` nor `step_008` is used as a proxy for an upstream interface it does not export.
- Boundary and degenerate cases are inherited without exclusion: \(N=1\), \(q=0\), \(\Delta=0\), stationary normalized curves, empty and singleton intervals, all literal endpoints, tangent and multiple roots, infinite fibers, affine-identically-zero coefficients, near-zero pivots, divergent affine integrals, \(d=1\), \(d=2\), \(\theta=0\), \(|\theta|=1\), empty monic cells, zero-dimensional beta volume, \(\epsilon=\delta\), \(\delta=1\), and every positive admissible \(\epsilon\).
- The accepted global pair was read only after its binding hashes and `ACCEPTED` review status were verified. Its step-relevant planning observation was the seven-producer direct conjunction and the prohibition on proxy exports through `step_005` and `step_008`. That observation affected only proof organization. The global diagnostic is not proof evidence, a cited result, an assumption source, or authority to change the target claim.
- The sketch-attempt-1 same-step proof and review were consulted only as permitted diagnostic history. Their review identified the missing direct producer paths. No stale identity, dependency digest, local-unit classification, theorem label, statement, or mathematical conclusion is used as current evidence. The attempt-2 identity, dependency list, one-unit map, label, proposition, and assembly are fresh.
