# Proof Step

## Step Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Run mode: interactive
- Progress type: `full`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding proof-sketch SHA-256: `8b5b22e5000e1c5641e2b5baf0c4d48244ce3389941b0cc9857b47510bbf6c93`
- Binding accepted proof-sketch-review SHA-256: `4288579fa3b8583b31faa2c220f5071879da72f06ac3a1dd3d1889cb1096cb7c`
- Binding accepted proof-sketch-review status: `ACCEPTED`
- Binding diagnostic global-proof SHA-256: `c7529eb3ef73cdb215c7ecfb9bad5fdfee639d9eea3c0d91060b4a0aaac03fb0`
- Binding accepted global-proof-review SHA-256: `cd76bd4102c0e811947104173dcc29cd325f2082ae53865d6c8bb25b20b9bb4e`
- Binding accepted global-proof-review status: `ACCEPTED`

The exact direct mathematical dependency set is `step_001`, `step_003`, `step_007`, `step_008`, `step_010`,
and `step_011`, no more and no fewer. Their current proof/review hashes are recorded below.

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: Assemble one unconditional theorem containing the static bridge, equivalent chart form,
  coordinate-free affine rate and \(C^{\mathrm{aff}}\), sharper homogeneous rate and
  \(C^{\mathrm{Pf}}\), exact monic recovery, Counter-example audit, and all dependence/mode statements, with no
  new claim.
- Depends on: `step_001`, `step_003`, `step_007`, `step_008`, `step_010`, `step_011`.
- Assumptions used: Primitive assumptions exactly as allocated; derived outputs from every dependency.
- Technical challenge: Prevent clause loss, target switching, hidden dependence, mode changes, or untracked
  generated outputs at theorem assembly.
- Intended proof tool or cited result: Dependency-checked theorem assembly only.
- Output target: Full exact formalized goal.
- Rate objective: R1--R5, including both baseline invariance obligations.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the binding
  `proof_sketch_review.md`, whose status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: the fixed finite presentation and support regime, including
    \(N\geq1\), \(q,m\geq0\), \(T,R>0\), \(0<\kappa<\infty\), nondegenerate compact
    \(\Theta\subseteq[-T,T]\), and nonempty \(\mathcal D_{N,R,\kappa}\).
  - `assump:balcan-common-chain`: the exact common triangular Pfaffian-chain convention at \(p=1\), with chain
    length \(q\), chain degree \(M\), and output degree \(\Delta\).
  - `assump:anchored-derivative-closure`: the fixed anchor \(F_{j_*}\equiv1\), the supplied deterministic
    polynomial matrix \(B\), and the exact identity \(\widetilde F'=B\widetilde F\).
  - `assump:cube-density-laws`: one arbitrary, possibly correlated, full joint density supported on
    \([-R,R]^N\) and bounded by \(\kappa\).
- Derived invariants and theorem interfaces supplied by accepted direct dependencies:
  - `step_001`: anchor nonvanishing, the literal coefficient-height matrix certificate, homogeneous block
    closure, normalized derivative identity, projective certificate, and its boundary conventions. Proof
    SHA-256 `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11`; review SHA-256
    `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`, status `ACCEPTED`.
  - `step_003`: both exhausted affine pivot-chart inequalities and their measurable, multiplicity-safe,
    arbitrary-correlation interface. Proof SHA-256
    `637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312`; review SHA-256
    `253d7c4f469580dafd08647358cff7696bcc1e31a8da63ad7e54d8e6451c421a`, status `ACCEPTED`.
  - `step_007`: the complete general affine interval-probability chain and
    \(C^{\mathrm{aff}}_{\mathcal D}\) conclusion. Proof SHA-256
    `8be2df25871ae6e1737861b3bd138011f1027951988250dc688e7233e94434e6`; review SHA-256
    `6794ada25352a9328461aa9312532fbe8fae96a5d7a747b11f38c9677e6b0256`, status `ACCEPTED`.
  - `step_008`: the sharper homogeneous projective and certificate interval rates and
    \(C^{\mathrm{Pf}}_{\mathcal D}\) conclusion. Proof SHA-256
    `63c4257a7ec1db6387c7e7c19d467e15c1cc28999e7bcb2c1bdc93466896d12e`; review SHA-256
    `3a1ff16fd516bda0277f07543d5230c048a39c88cb3e1bed2017ef9055ba68b9`, status `ACCEPTED`.
  - `step_010`: the exact affine-monic baseline for the original lower-coefficient law, including all bounded
    intervals and \(d=1\). Proof SHA-256
    `46985d925710c381063b71fb3f47af13680586a5648e2bfbbaea6b44bdf40707`; review SHA-256
    `93724e353a02a14f20dd68edbacece0e244e7dff327d4395f9e9144d69a90255`, status `ACCEPTED`.
  - `step_011`: the complete Counter-example 1 certificate, exact projective speed, all-law upper coefficient,
    selected-law exact probability, and normalized lower ratio. Proof SHA-256
    `1f9537c74192da8502346ba12b457ccc9c8545fa8485aea22d234e0d594f59f3`; review SHA-256
    `729872c64fb9fbc4da6f7e3f0c16c38118afe705134214a0b2764da2065879c8`, status `ACCEPTED`.
- Local conditional hypotheses: None. The conditions \(F_0\equiv0\), \(d\geq1\), and
  \(0<\epsilon\leq\delta\leq1\) are static specializations inside the corresponding exact theorem clauses,
  not generated invariants or new assumptions.

Steps `step_002`, `step_004`, `step_005`, `step_006`, and `step_009` are not direct dependencies and are not
used as mathematical authority here. Their outputs reach this assembly only through the six accepted direct
producer interfaces above. The accepted `global_proof.md` is diagnostic planning context only and is neither a
dependency nor evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, \ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, and the six accepted direct producer interfaces listed above, every static-certificate, pivot-chart, general-affine, sharper-homogeneous, exact affine-monic, Counter-example 1, dependence, probability-mode, interval-mode, norm, coefficient-dimension, and boundary clause stated in Proposition~\ref{prop:step-012-exact-goal-assembly} holds simultaneously. | Performs the dependency-closed conjunction and nothing else. |

Atomic step = no. Although no new mathematical mechanism is proved, the exact conjunction and clause-identity
audit form one non-atomic theorem-style assembly proposition. No second unit is needed because there is no
independent assembly lemma, conversion, simplification, or boundary argument.

## Cited Result Applications

Only accepted dependency results are used. No external paper result, standard theorem, transitive dependency,
or global-diagnostic statement is invoked in this step.

### Accepted dependency: static, nonvanishing, and homogeneous projective certificate

- Source or name: accepted Anchor Nonvanishing Lemma~\ref{lem:step-001-anchor}, Literal Coefficient-Height
  Matrix Certificate Lemma~\ref{lem:step-001-height}, Homogeneous Block Extraction
  Lemma~\ref{lem:step-001-homogeneous-block}, Normalized Derivative and Projective Certificate
  Proposition~\ref{prop:step-001-projective}, and Boundary and Baseline Consistency
  Proposition~\ref{prop:step-001-boundary} from `step_001`.
- Current identity: proof SHA-256
  `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11`; review SHA-256
  `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`; review status `ACCEPTED`.
- Assumption basis: Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and
  \ref{assump:anchored-derivative-closure}; \(F_0\equiv0\) only for the explicitly homogeneous conclusions.
- Restated exact exported interface: under Assumptions~\ref{assump:parameter-regime},
  \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, for every
  \(\theta\in\Theta\),
  \[
  F_{j_*}(\theta)=1,
  \qquad
  \lVert F(\theta)\rVert_2\geq1,
  \qquad
  F(\theta)\neq0,
  \]
  and
  \[
  \lVert B(\theta)\rVert_{\mathrm{op}}
  \leq\lVert B(\theta)\rVert_{\mathrm F}
  \leq\widehat\Lambda_{B,T},
  \qquad
  \sup_{\theta\in\Theta}\lVert B(\theta)\rVert_{\mathrm{op}}
  \leq\widehat\Lambda_{B,T}.
  \]
  The bound uses exactly
  \[
  T_*:=\max\{1,T\},
  \qquad
  \widehat\Lambda_{B,T}^2
  =\sum_{r=0}^{N}\sum_{s=0}^{N}
  \left(\sum_{\ell=0}^{m}\lvert b_{rs,\ell}\rvert T_*^\ell\right)^2,
  \]
  with no hidden dependence. If \(F_0\equiv0\), then
  \[
  F'=B_FF,
  \qquad
  \gamma_F'
  =(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
  \qquad
  \Gamma_{\mathrm{proj}}(F)
  \leq\widehat\Lambda_{B,T}.
  \]
  These conclusions retain \(q=0\), \(m=0\), \(N=1\), interval endpoints, constant \(B\), and
  \(\widehat\Lambda_{B,T}=0\). In the last case \(B\equiv0\) on \(\Theta\) and the derivative bounds vanish.
  The literal constant-matrix heights are \((\sum_{k=1}^d k^2)^{1/2}\) for the displayed monomial shift and
  \(1/\delta\) for the displayed one-entry shear.
- Assumption discharge: the matching accepted review verifies the anchor as the lower/nonvanishing source, the
  coefficient list as the matrix-upper-bound source, the homogeneous block extraction, all denominator and
  Euclidean norm checks, and the stated boundary specializations.
- Nonoutputs: this dependency supplies no root-event probability, chart inequality, affine rate, homogeneous
  cube-section rate, monic probability, or selected-law lower probability.
- Final clause used: the static certificate bridge and homogeneous projective identity/certificate in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

### Accepted dependency: exhausted affine pivot-sweep theorem

- Source or name: accepted Exhausted Affine Pivot-Sweep
  Proposition~\ref{prop:step-003-pivot-sweep} from `step_003`.
- Current identity: proof SHA-256
  `637b6b01d6041dc9b797a04e4a387713dff823f5ee51bd1e872801a5ee119312`; review SHA-256
  `253d7c4f469580dafd08647358cff7696bcc1e31a8da63ad7e54d8e6451c421a`; review status `ACCEPTED`.
- Assumption basis: all four setting assumptions. The accepted direct interface has already discharged its own
  earlier producer requirements; this assembly does not consume them separately.
- Restated exact exported interface: under all four setting assumptions, for every
  \(\mu\in\mathcal D_{N,R,\kappa}\), every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), and every
  measurable legal partition
  \[
  I=\bigsqcup_{j=1}^{N}E_j,
  \qquad
  F_j\neq0\text{ on }E_j,
  \]
  one has both equivalent exhausted chart inequalities
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq\kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
  \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
  &\leq\kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
  \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
  \end{aligned}
  \]
  The finite levels are
  \(E_{j,n}=\{\theta\in E_j:\lvert F_j(\theta)\rvert\geq1/n\}\), with
  \(E_{j,n}\uparrow E_j\); continuity from below and monotone convergence remove the finite pivot margin.
  The conclusion uses the original full \(N\)-dimensional density cap, permits arbitrary coefficient
  correlation, and includes tangent roots, multiple roots, endpoint roots, zero Jacobians, infinite fibers,
  coefficient-cube faces, empty cells, pivots tending to zero, persistent or identically-zero combinations,
  and \(N=1\) with \(\lambda_0([-R,R]^0)=1\). It requires neither injectivity, transversality, root simplicity,
  a finite-root condition, nor a uniform pivot margin.
- Assumption discharge: the matching accepted review verifies measurable root and chart domains, finite-level
  Lipschitz regularity, exact equal-dimensional Jacobian, multiplicity-favorable area control, full root-event
  coverage, persistent-root zero probability, and the one full joint-density conversion.
- Nonoutputs: this dependency supplies no coordinate-free Hausdorff integral, cube-section cap, affine public
  coefficient, projective coefficient, monic speed cap, or Counter-example specialization.
- Final clause used: the complete equivalent chart formulation and all its degeneracy conventions in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

### Accepted dependency: complete general affine rate

- Source or name: accepted Literal General Affine Probability Chain
  Proposition~\ref{prop:step-007-affine-event-rate}, Zero-Certificate Static-Event Dichotomy
  Claim~\ref{claim:step-007-zero-certificate}, and Affine Dispersion Certificate
  Proposition~\ref{prop:step-007-affine-dispersion} from `step_007`.
- Current identity: proof SHA-256
  `8be2df25871ae6e1737861b3bd138011f1027951988250dc688e7233e94434e6`; review SHA-256
  `6794ada25352a9328461aa9312532fbe8fae96a5d7a747b11f38c9677e6b0256`; review status `ACCEPTED`.
- Assumption basis: Assumption~\ref{assump:cube-density-laws} and the setting parameter definitions, together
  with the accepted derived inputs already closed inside this direct producer. Those transitive inputs are not
  direct dependencies of this assembly.
- Restated exact exported interface: under the allocated primitive assumptions and accepted derived inputs, for
  every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with
  \(\lvert I\rvert>0\),
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
  &\leq
  \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  \,d\mathcal H^{N-1}(a)\,d\theta\\
  &\leq
  \kappa\sqrt2(2R)^{N-1}(1+NR^2)
  \widehat\Lambda_{B,T}\lvert I\rvert\\
  &=
  \frac{A(1+NR^2)\widehat\Lambda_{B,T}}
  {\sqrt2R}\lvert I\rvert.
  \end{aligned}
  \]
  Consequently,
  \[
  C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
  \leq
  \frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
  \]
  The result uses ordinary probability, the original arbitrary-correlated law, all positive-length intervals,
  Euclidean norms and \(\mathcal H^{N-1}\), and the literal identity
  \[
  \kappa\sqrt2(2R)^{N-1}
  =\frac{A}{\sqrt2R}.
  \]
  If \(\widehat\Lambda_{B,T}=0\), a nonempty static root section is a law-null proper-hyperplane event rather
  than being silently declared empty.
- Assumption discharge: the matching accepted review verifies that the section-size and velocity controls act
  on the same affine section, that the only density conversion is already contained in the accepted swept-area
  input, and that division occurs only for \(\lvert I\rvert>0\) before the interval and law suprema are taken.
- Nonoutputs: this dependency supplies no sharper homogeneous coefficient, exact monic coefficient, selected
  Counter-example lower probability, independence claim, or new Pfaffian degree factor.
- Final clause used: the complete coordinate-free affine probability chain and
  \(C^{\mathrm{aff}}_{\mathcal D}\) conclusion in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

### Accepted dependency: sharper homogeneous projective rate

- Source or name: accepted Exact Radial Cancellation
  Lemma~\ref{lem:step-008-radial-cancellation}, Sharp Homogeneous Interval Rate
  Proposition~\ref{prop:step-008-homogeneous-rate}, and Defining-Supremum Closure for the Homogeneous Pfaffian
  Rate Proposition~\ref{prop:step-008-pf-capacity} from `step_008`.
- Current identity: proof SHA-256
  `63c4257a7ec1db6387c7e7c19d467e15c1cc28999e7bcb2c1bdc93466896d12e`; review SHA-256
  `3a1ff16fd516bda0277f07543d5230c048a39c88cb3e1bed2017ef9055ba68b9`; review status `ACCEPTED`.
- Assumption basis: Assumptions~\ref{assump:cube-density-laws} and
  \ref{assump:anchored-derivative-closure}, the static specialization \(F_0\equiv0\), and the accepted derived
  inputs already closed inside this direct producer.
- Restated exact exported interface: if \(F_0\equiv0\), then on every actual homogeneous root section,
  \[
  \frac{\lvert\langle a,F'(\theta)\rangle\rvert}
  {\lVert F(\theta)\rVert_2}
  =\lvert\langle a,\gamma_F'(\theta)\rangle\rvert.
  \]
  For every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
  \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
  \[
  \begin{aligned}
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:
  \langle\alpha,F(\theta)\rangle=0]
  &\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\\
  &\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}\lvert I\rvert,
  \end{aligned}
  \]
  and
  \[
  C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
  \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
  \]
  The coefficient identity is literal:
  \[
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}
  =A\sqrt{\frac N2}.
  \]
  The conclusion retains arbitrary correlation, ordinary probability, all positive-length intervals, the
  ordinary projective supremum, Euclidean norms, \(N=1\), stationary projective curves, radial rescaling,
  interval endpoints, and the \(\mathcal H^0\) convention.
- Assumption discharge: the matching accepted review verifies exact radial cancellation before inequalities,
  the same central section and Euclidean convention, the literal coefficient multiplication, the stationary
  proper-hyperplane event, and the defining interval-then-law supremum closure.
- Nonoutputs: this dependency supplies no affine deterministic-offset rate, monic baseline, exact
  Counter-example projective value, selected-law lower probability, or independence statement.
- Final clause used: the sharper homogeneous probability chain and
  \(C^{\mathrm{Pf}}_{\mathcal D}\) conclusion in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

### Accepted dependency: exact affine-monic baseline

- Source or name: accepted Exact Positive-Length Affine-Monic Sweep
  Proposition~\ref{prop:step-010-positive-length} and Degenerate Bounded Intervals Are Law-Null
  Lemma~\ref{lem:step-010-degenerate-interval} from `step_010`.
- Current identity: proof SHA-256
  `46985d925710c381063b71fb3f47af13680586a5648e2bfbbaea6b44bdf40707`; review SHA-256
  `93724e353a02a14f20dd68edbacece0e244e7dff327d4395f9e9144d69a90255`; review status `ACCEPTED`.
- Assumption basis: Assumption~\ref{assump:cube-density-laws} specialized to dimension \(d\), with the accepted
  deterministic monomial presentation and chart package already closed inside this direct producer.
- Restated exact exported interface: for every integer \(d\geq1\), every bounded interval
  \(J\subset\mathbb R\), and every arbitrary, possibly correlated, full joint law of
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with density at most \(\kappa\), let
  \[
  F_0(\theta)=\theta^d,
  \qquad
  F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
  \qquad
  p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
  \]
  The random vector has exactly the \(d\) lower coefficients, and the leading coefficient one is deterministic
  and remains external to the law. Then
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
  \leq
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
  \]
  This includes \(d=1\), where the coefficient is exactly \(\kappa\), and zero-length bounded intervals,
  where both sides are zero. The complete disclosed specialization has
  \[
  q=0,
  \quad M=0,
  \quad\Delta=d,
  \quad N=d,
  \quad m=0,
  \quad A=(2R)^d\kappa,
  \]
  with the constant derivative-shift matrix of the augmented monomial tuple satisfying
  \[
  \widehat\Lambda_{B,T}
  =\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
  \]
  It retains the exact beta volume \((2R)^{d-1}\), all bounded interval locations and endpoint
  conventions, arbitrary correlation, and scalar absolute-value chart velocity.
- Assumption discharge: the matching accepted review verifies exact same-polynomial object mapping, the
  original \(d\)-dimensional coefficient law, deterministic leading term, beta-volume and partition-length
  identities, the outer-to-common velocity comparison, \(d=1\), zero-length intervals, transition points, and
  empty cells.
- Nonoutputs: this dependency supplies no coarser general affine replacement, no homogeneous replacement, no
  random leading coordinate, no independent polynomial-root theorem, no confidence parameter, and no
  independence assumption.
- Final clause used: the exact deterministic-leading-coefficient affine-monic baseline in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

### Accepted dependency: Counter-example 1 scale audit

- Source or name: accepted Exact One-Entry Derivative Certificate
  Lemma~\ref{lem:step-011-shear-certificate}, Exact Euclidean Projective Speed
  Lemma~\ref{lem:step-011-projective-speed}, Exact Homogeneous Upper Coefficient
  Proposition~\ref{prop:step-011-upper-coefficient}, Exact Root-Wedge Equivalence
  Lemma~\ref{lem:step-011-root-wedges}, Exact Wedge Probability
  Proposition~\ref{prop:step-011-wedge-probability}, and Exact Normalized Upper/Lower Scale Comparison
  Proposition~\ref{prop:step-011-scale-comparison} from `step_011`.
- Current identity: proof SHA-256
  `1f9537c74192da8502346ba12b457ccc9c8545fa8485aea22d234e0d594f59f3`; review SHA-256
  `729872c64fb9fbc4da6f7e3f0c16c38118afe705134214a0b2764da2065879c8`; review status `ACCEPTED`.
- Assumption basis: the displayed specialization of all four setting assumptions, with independence used only
  for the selected uniform lower-law equality and not for the all-law upper conclusion.
- Restated exact exported interface: for \(0<\delta\leq1\),
  \[
  \Theta=[-1,1],
  \qquad
  \widetilde F=(F_0,F_1,F_2)=(0,1,\theta/\delta),
  \]
  with augmented coordinates ordered \(0,1,2\), one has
  \[
  (q,M,\Delta,N,m)=(0,0,1,2,0),
  \qquad
  B_{2,1}=\frac1\delta
  \]
  as the sole nonzero closure entry, and
  \[
  \widehat\Lambda_{B,T}
  =\Gamma_{\mathrm{proj}}(F)
  =\frac1\delta,
  \qquad
  \lVert\gamma_F'(\theta)\rVert_2
  =\frac{1}{\delta(1+(\theta/\delta)^2)},
  \qquad
  \gamma_F'(0)=(0,1/\delta).
  \]
  With \(R=1\), \(\kappa=1/4\), and \(A=1\), every possibly correlated
  \(\mu\in\mathcal D_{2,1,1/4}\) and every positive-length interval
  \(I\subseteq[-1,1]\) satisfy
  \[
  \Pr_{\alpha\sim\mu}[\exists\theta\in I:
  \alpha_1+\alpha_2\theta/\delta=0]
  \leq\frac1\delta\lvert I\rvert,
  \qquad
  C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta.
  \]
  For the selected law in which \(\alpha_1,\alpha_2\) are independent uniform random variables on
  \([-1,1]\), and only for that selected lower-law calculation,
  \[
  \Pr[\exists\theta\in[0,\epsilon]:
  \alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}
  \qquad(0<\epsilon\leq\delta),
  \]
  and therefore
  \[
  \frac{
  \Pr[\exists\theta\in[0,\epsilon]:
  \alpha_1+\alpha_2\theta/\delta=0]
  }{\lvert[0,\epsilon]\rvert}
  =\frac1{4\delta}.
  \]
  The exact event includes both opposite-sign wedges, coefficient axes, the \(\theta=0\) and
  \(\theta=\epsilon\) endpoint boundaries, \(\epsilon=\delta\), \(\delta=1\), and limits through positive
  \(\epsilon\downarrow0\).
- Assumption discharge: the matching accepted review verifies the ordered closure matrix, exact Euclidean
  normalized derivative, arbitrary-correlation scope of the upper theorem, the selected product law only for
  the lower equality, both wedges, all null boundaries, and division only by positive \(\epsilon\).
- Nonoutputs: this dependency does not impose independence on the all-law upper theorem, does not modify the
  affine-monic baseline, and supplies no conclusion for \(\epsilon=0\) after division.
- Final clause used: the complete upper/lower Counter-example 1 scale audit in
  Proposition~\ref{prop:step-012-exact-goal-assembly}.

## Local Derivation

### unit_001: proposition

**Proposition (Anchored derivative-closure Pfaffian coefficient-sweep theorem).**
\(\label{prop:step-012-exact-goal-assembly}\)

Under Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain},
\ref{assump:anchored-derivative-closure}, and \ref{assump:cube-density-laws}, and the accepted conclusions of
Lemmas~\ref{lem:step-001-anchor}, \ref{lem:step-001-height}, and
\ref{lem:step-001-homogeneous-block}, Propositions~\ref{prop:step-001-projective} and
\ref{prop:step-001-boundary}, Proposition~\ref{prop:step-003-pivot-sweep},
Propositions~\ref{prop:step-007-affine-event-rate} and \ref{prop:step-007-affine-dispersion},
Propositions~\ref{prop:step-008-homogeneous-rate} and \ref{prop:step-008-pf-capacity},
Proposition~\ref{prop:step-010-positive-length}, Lemma~\ref{lem:step-010-degenerate-interval}, and
Lemmas~\ref{lem:step-011-shear-certificate}, \ref{lem:step-011-projective-speed}, and
\ref{lem:step-011-root-wedges} and Propositions~\ref{prop:step-011-upper-coefficient},
\ref{prop:step-011-wedge-probability}, and \ref{prop:step-011-scale-comparison}, the following clauses hold
simultaneously.

1. **Static certificate bridge and anchor.** For every \(\theta\in\Theta\),
   \[
   F_{j_*}(\theta)=1,
   \qquad
   \lVert F(\theta)\rVert_2\geq1,
   \qquad
   F(\theta)\neq0,
   \]
   and
   \[
   \sup_{\theta\in\Theta}\lVert B(\theta)\rVert_{\mathrm{op}}
   \leq\widehat\Lambda_{B,T}.
   \]
   The coefficient is the literal setting certificate
   \[
   \widehat\Lambda_{B,T}^2
   =\sum_{r=0}^{N}\sum_{s=0}^{N}
   \left(\sum_{\ell=0}^{m}\lvert b_{rs,\ell}\rvert
   \max\{1,T\}^{\ell}\right)^2.
   \]
   If \(F_0\equiv0\), then, for the lower principal block \(B_F\),
   \[
   F'=B_FF,
   \qquad
   \gamma_F'
   =(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
   \qquad
   \Gamma_{\mathrm{proj}}(F)
   \leq\widehat\Lambda_{B,T}.
   \]
   These conclusions include \(q=0\), \(m=0\), \(N=1\), interval endpoints, constant \(B\), and
   \(\widehat\Lambda_{B,T}=0\), with the zero-certificate derivative conclusions equal to zero.

2. **Equivalent exhausted affine pivot-chart inequalities.** For every
   \(\mu\in\mathcal D_{N,R,\kappa}\), every interval \(I\subseteq\Theta\) with
   \(\lvert I\rvert>0\), and every measurable partition
   \[
   I=\bigsqcup_{j=1}^{N}E_j,
   \qquad
   F_j\neq0\text{ on }E_j,
   \]
   one has
   \[
   \begin{aligned}
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
   &\leq\kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
   \mathbf 1\{\lvert T_j(\theta,\beta)\rvert\leq R\}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta\\
   &\leq\kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert\,d\beta\,d\theta.
   \end{aligned}
   \]
   These inequalities are the limits of the finite exhaustion sets
   \(E_{j,n}=\{\theta\in E_j:\lvert F_j(\theta)\rvert\geq1/n\}\). They use the original full joint density
   and hold without independence, injectivity, transversality, root simplicity, finite fibers, or a uniform
   pivot margin. Tangent, multiple, endpoint, persistent, and identically-zero roots, zero Jacobians, pivots
   approaching zero, cube faces, empty cells, and \(N=1\) are included with the conventions stated above.

3. **Single general affine swept-area rate.** For every
   \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with
   \(\lvert I\rvert>0\),
   \[
   \begin{aligned}
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
   &\leq
   \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
   \frac{\lvert F_0'(\theta)+\langle a,F'(\theta)\rangle\rvert}
   {\lVert F(\theta)\rVert_2}
   \,d\mathcal H^{N-1}(a)\,d\theta\\
   &\leq
   \kappa\sqrt2(2R)^{N-1}(1+NR^2)
   \widehat\Lambda_{B,T}\lvert I\rvert\\
   &=
   \frac{A(1+NR^2)\widehat\Lambda_{B,T}}
   {\sqrt2R}\lvert I\rvert,
   \end{aligned}
   \]
   and consequently
   \[
   C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
   \leq
   \frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
   \]
   This conclusion is for the original arbitrary-correlated law, ordinary probability, every positive-length
   interval, and Euclidean vector, operator, Frobenius, and Hausdorff conventions. At
   \(\widehat\Lambda_{B,T}=0\), a nonempty static section is retained as a proper law-null hyperplane event.

4. **Sharper homogeneous source rate.** If \(F_0\equiv0\), then on the actual root section
   \[
   \frac{\lvert\langle a,F'(\theta)\rangle\rvert}
   {\lVert F(\theta)\rVert_2}
   =\lvert\langle a,\gamma_F'(\theta)\rangle\rvert,
   \]
   and, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
   \(I\subseteq\Theta\) with \(\lvert I\rvert>0\),
   \[
   \begin{aligned}
   \Pr_{\alpha\sim\mu}[\exists\theta\in I:
   \langle\alpha,F(\theta)\rangle=0]
   &\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\\
   &\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}\lvert I\rvert.
   \end{aligned}
   \]
   Consequently,
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
   \]
   The conclusion retains arbitrary correlation, the ordinary projective supremum, stationary projective
   curves, radial rescaling, \(N=1\), endpoints, and \(\mathcal H^0\).

5. **Exact affine-monic baseline specialization.** For every integer \(d\geq1\), every bounded interval
   \(J\subset\mathbb R\), and every possibly correlated
   \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with full joint density at most \(\kappa\), set
   \[
   F_0(\theta)=\theta^d,
   \qquad
   F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
   \qquad
   p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
   \]
   The presentation has
   \[
   q=0,
   \quad M=0,
   \quad\Delta=d,
   \quad N=d,
   \quad m=0,
   \quad A=(2R)^d\kappa,
   \]
   where the constant derivative-shift matrix of the augmented monomial tuple satisfies
   \[
   \widehat\Lambda_{B,T}
   =\left(\sum_{k=1}^{d}k^2\right)^{1/2}.
   \]
   The deterministic leading coefficient remains outside the \(d\)-dimensional random law. Then
   \[
   \Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
   \leq
   \kappa(2R)^{d-1}
   \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert.
   \]
   This is valid for every bounded \(J\), including empty and singleton intervals. At \(d=1\) it reduces
   exactly to \(\kappa\lvert J\rvert\). The result uses the original lower-coefficient law, retains arbitrary
   correlation, and introduces neither a random leading coordinate nor an independent polynomial-root theorem.

6. **Counter-example 1 scale audit.** For \(0<\delta\leq1\),
   \[
   \Theta=[-1,1],
   \qquad
   \widetilde F=(0,1,\theta/\delta),
   \qquad
   (q,M,\Delta,N,m)=(0,0,1,2,0),
   \]
   with the sole nonzero closure entry \(B_{2,1}=1/\delta\),
   \[
   \widehat\Lambda_{B,T}
   =\Gamma_{\mathrm{proj}}(F)
   =\frac1\delta,
   \qquad
   \lVert\gamma_F'(\theta)\rVert_2
   =\frac{1}{\delta(1+(\theta/\delta)^2)}.
   \]
   With \(R=1\), \(\kappa=1/4\), and \(A=1\), every possibly correlated admissible law and every
   positive-length \(I\subseteq[-1,1]\) satisfy
   \[
   \Pr[\exists\theta\in I:\alpha_1+\alpha_2\theta/\delta=0]
   \leq\frac1\delta\lvert I\rvert,
   \qquad
   C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta.
   \]
   For the selected independent uniform law on \([-1,1]^2\), and only for this selected-law lower equality,
   \[
   \Pr[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0]
   =\frac{\epsilon}{4\delta}
   \qquad(0<\epsilon\leq\delta),
   \]
   and the normalized lower ratio is exactly
   \[
   \frac{
   \Pr[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0]
   }{\lvert[0,\epsilon]\rvert}
   =\frac1{4\delta}.
   \]
   Both sign wedges, coefficient axes, endpoint roots, \(\epsilon=\delta\), \(\delta=1\), and limits through
   positive \(\epsilon\downarrow0\) are included. Independence is not asserted for any other law.

Every displayed constant is literal and there is no hidden constant or confidence parameter. The general
probability mode is ordinary probability for each fixed admissible full joint law. The general interval mode is
uniform over all positive-length subintervals, while the monic baseline also covers zero-length bounded
intervals. All vector, operator, Frobenius, projective, scalar-velocity, Lebesgue, and Hausdorff conventions are
the Euclidean conventions stated in the setting. The deterministic instance data
\((\Theta,T,q,M,\Delta,N,R,\kappa,A,m,B)\) and presentation are fixed before \(\mu\) and \(I\) range. The
general affine and homogeneous bounds depend linearly on \(\widehat\Lambda_{B,T}\); after that supplied
certificate is fixed, their additional dependence on \(q,M,\Delta\) is exactly degree zero.

**Proof / justification.** The proof is dependency-only conjunction.

The accepted `step_001` results give clause 1 verbatim, including anchor nonvanishing, the literal matrix
coefficient certificate, homogeneous block identity, normalized-vector identity, exact dependence, and boundary
conventions. The accepted `step_003` proposition gives clause 2 verbatim, including both chart inequalities,
the finite exhaustion, the original arbitrary-correlated density, and every stated degeneracy convention. The
accepted `step_007` propositions give clause 3 verbatim, including the coordinate-free integral, the literal
\(A(1+NR^2)\widehat\Lambda_{B,T}/(\sqrt2R)\) coefficient, the zero-certificate interpretation, and the two
defining suprema. The accepted `step_008` propositions give clause 4 verbatim, including exact radial
cancellation, both \(A\sqrt{N/2}\) interval bounds, and the defining
\(C^{\mathrm{Pf}}_{\mathcal D}\) supremum. The accepted `step_010` proposition and lemma give clause 5
verbatim for the original \(d\)-dimensional lower-coefficient law, including \(d=1\), every bounded interval,
and the deterministic leading coefficient. The accepted `step_011` lemmas and propositions give clause 6
verbatim, keeping the arbitrary-correlated all-law upper statement separate from the selected independent-law
lower equality.

These six clauses use the same setting objects, coefficient dimensions, laws, intervals, and Euclidean
conventions as their consumers. Their conjunction therefore has zero producer-to-consumer residual. No new
inequality, term absorption, rate simplification, probability conversion, source result, assumption, helper
constant, quantifier exchange, mode upgrade, or boundary exclusion is introduced. Steps `step_002`,
`step_004`, `step_005`, `step_006`, and `step_009` are not consumed directly; their accepted outputs are already
closed inside the six legal producers. This proves the proposition. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-012-exact-goal-assembly} is exactly the target-step assembly. Its producer map is:

- the static certificate, anchor, normalized derivative identity, and projective certificate are exactly the
  accepted `step_001` interface;
- both exhausted measurable pivot-chart inequalities and all root-degeneracy conventions are exactly the
  accepted `step_003` interface;
- the complete coordinate-free general affine probability chain and
  \(C^{\mathrm{aff}}_{\mathcal D}\) bound are exactly the accepted `step_007` interface;
- the sharper homogeneous interval chain and \(C^{\mathrm{Pf}}_{\mathcal D}\) bound are exactly the accepted
  `step_008` interface;
- the exact arbitrary-correlated affine-monic baseline with deterministic leading coefficient is exactly the
  accepted `step_010` interface; and
- the exact Counter-example 1 certificate, all-law upper coefficient, selected-law probability, and normalized
  lower ratio are exactly the accepted `step_011` interface.

Thus assembly performs only conjunction. Every inseparable formalized-goal clause has one legal direct producer;
the produced and consumed objects are identical clause by clause; and the residual is zero. There is no
assembly-level absorption, probability conversion, limiting argument, rate simplification, new claim, or use of
transitive ancestry as direct authority. This proves the exact accepted `step_012` row.

## Explicit Rate Audit

- Exposed variables:
  - Static certificate: \(T,m,N\), all \(b_{rs,\ell}\), \(T_*=\max\{1,T\}\), and
    \(\widehat\Lambda_{B,T}\), with \(q,M,\Delta\) disclosed.
  - General affine clause: \(N,R,\kappa,A=(2R)^N\kappa\),
    \(\widehat\Lambda_{B,T}\), \(\lvert I\rvert\), the arbitrary law \(\mu\), and the interval \(I\).
  - Homogeneous clause: the same variables together with \(\Gamma_{\mathrm{proj}}(F)\).
  - Monic clause: \(d,R,\kappa,\lvert J\rvert\), the exact \(d\)-dimensional lower-coefficient law, and the
    disclosed \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\) specialization.
  - Counter-example clause: \(0<\epsilon\leq\delta\leq1\),
    \((q,M,\Delta,N,m)=(0,0,1,2,0)\), \(R=1\), \(\kappa=1/4\), and \(A=1\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: any presentation coefficient, \(q,M,\Delta,N,T,m,R,\kappa,A\), law,
  correlation, interval, interval location, pivot, root multiplicity, section orientation, certificate,
  \(d,\delta,\epsilon\), endpoint convention, or other instance quantity.
- Fixed quantities: the deterministic presentation, chain data, matrix \(B\), coefficient list, support/density
  parameters, and supplied certificate are fixed before a general law and interval are selected. The monic tuple
  is fixed before its lower-coefficient law and bounded interval range. The selected product law is fixed only
  for the Counter-example lower equality.
- Probability mode: ordinary probability for each fixed full joint law. There is no confidence parameter,
  expectation, almost-sure statement, conditioning event, or independence reduction. Independence occurs only
  in the selected Counter-example lower law.
- Horizon mode: pairwise for every positive-length general interval, followed by the defining interval and law
  suprema for \(C^{\mathrm{aff}}\) and \(C^{\mathrm{Pf}}\). The monic result is uniform over every bounded
  \(J\), including zero-length intervals. The Counter-example lower equality is for every
  \([0,\epsilon]\) with \(0<\epsilon\leq\delta\); \(\epsilon\downarrow0\) is only through positive lengths.
- Norm mode: Euclidean vector norm and inner product, induced Euclidean operator norm, Euclidean Frobenius norm,
  ordinary scalar absolute chart velocity, Euclidean Lebesgue measure, and Euclidean
  \(\mathcal H^{N-1}\), with \(\lambda_0\) and \(\mathcal H^0\) conventions as stated by the producers.
- Admissibility conditions and auxiliary tolerances: exactly the four stable setting assumptions and the static
  specializations stated in the corresponding clauses. There is no auxiliary tolerance, pivot margin,
  amplitude envelope, transversality premise, simple-root condition, minimum positive interval length, or
  additional admissibility threshold.
- Term absorption or simplification inequalities: assembly drops and absorbs no term. It preserves the producer
  identities
  \[
  \kappa\sqrt2(2R)^{N-1}
  =\frac{A}{\sqrt2R},
  \qquad
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}
  =A\sqrt{\frac N2},
  \]
  the exact monic coefficient
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right),
  \]
  and the exact Counter-example equalities
  \[
  \widehat\Lambda_{B,T}
  =\Gamma_{\mathrm{proj}}(F)
  =\frac1\delta,
  \qquad
  \Pr[\exists\theta\in[0,\epsilon]:
  \alpha_1+\alpha_2\theta/\delta=0]
  =\frac{\epsilon}{4\delta}.
  \]
- Probability conversion: None at assembly. Each direct producer already closed its own authorized conversion.
  Conjunction does not repeat, strengthen, or change a probability mode.
- Contribution to any Rate Specialization Bridge: this step exposes the already proved R1--R5 clauses together.
  It adds no auxiliary choice or technical-to-public simplification. The general affine, homogeneous, monic, and
  Counter-example rates remain the literal accepted producer rates.
- Baseline-reduction check: the exact affine-monic recovery remains
  \[
  \kappa(2R)^{d-1}
  \left(d+\frac{Rd(d-1)}2\right)\lvert J\rvert
  \]
  for the original \(d\) lower coefficients and deterministic leading coefficient, including
  \(d=1\) and zero-length \(J\). It is not replaced by the coarser general affine or homogeneous rate. The
  separate Counter-example baseline retains the exact \(1/\delta\) certificate and upper coefficient and the
  exact selected-law normalized ratio \(1/(4\delta)\). Both baseline-invariance obligations are preserved with
  zero residual and no conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- `public-facing`: Proposition~\ref{prop:step-012-exact-goal-assembly} exports only the setting-defined symbols
  and the exact public symbols already exported by the six accepted direct producers. It introduces no new
  theorem-facing helper object, rate, radius, threshold, margin, event, or admissibility package.
- `public-facing inherited objects`: \(T_*\), \(\widehat\Lambda_{B,T}\), \(B_F\), \(\gamma_F\),
  \(\Gamma_{\mathrm{proj}}(F)\), \(A\), \(C^{\mathrm{aff}}_{\mathcal D}\),
  \(C^{\mathrm{Pf}}_{\mathcal D}\), the setting-defined charts \(T_j\), and the displayed monic and
  Counter-example tuples retain exactly their original meanings.
- `appendix-local`: the finite pivot exhaustion notation \(E_{j,n}\) is inherited from the accepted chart
  producer solely to record the required measurable limiting convention. It is not a theorem assumption,
  public conditioning parameter, or new assembly object.
- `proof-local`: None. The conjunction proof introduces no local alias or helper dictionary.
- Constant provenance: every constant is setting-defined or inherited from a named accepted direct producer.
  In particular, the general affine coefficient comes from accepted `step_007`, the homogeneous coefficient
  from accepted `step_008`, the monic coefficient from accepted `step_010`, and the exact \(1/\delta\),
  \(1/(4\delta)\) scales from accepted `step_011`. No constant is first introduced or bounded in this step.
- Assumption provenance: the four stable setting assumptions are the only primitive conditions. Nonvanishing,
  matrix boundedness, projective boundedness, chart validity, multiplicity-safe root coverage, all rate
  conclusions, monic object compatibility, and Counter-example event geometry are accepted derived outputs.
  No generated event, local-validity condition, stability property, recurrence, boundedness fact, pivot margin,
  or invariant is promoted to a primitive condition or local conditional hypothesis.
- Direct-dependency boundary: the mathematical dependency set is exactly `step_001`, `step_003`, `step_007`,
  `step_008`, `step_010`, and `step_011`. Steps `step_002`, `step_004`, `step_005`, `step_006`, and `step_009`
  are neither cited nor consumed directly; their outputs are present only inside accepted direct producer
  conclusions. No proof-history artifact is read or used.
- Diagnostic boundary: `global_proof.md` was consulted only after verifying that the paired
  `global_proof_review.md` has SHA-256
  `cd76bd4102c0e811947104173dcc29cd325f2082ae53865d6c8bb25b20b9bb4e` and status `ACCEPTED`. Its sole
  step-relevant planning reminder was that final assembly is the verbatim conjunction of the six direct
  producer interfaces with zero residual. It was not used as evidence, a cited result, an assumption source, or
  authority to change the target claim, dependency set, quantifiers, constants, modes, or boundary clauses.
