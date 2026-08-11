# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Progress type: `full`
- Run mode: `interactive`

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_010` | Assemble one unconditional theorem containing verbatim the primitive bridge, both central bounds and (C) bound, the general affine inequality, exact affine-monic recovery, Counter-example 1 audit, and the declared modes/dependence, with no new lemma or assumption. | `step_005`, `step_006`, `step_008`, `step_009` | Primitive assumptions exactly as allocated above; derived outputs from all dependencies | Prevent clause loss, target switching, hidden dependence, mode changes, a homogeneous replacement of the affine baseline, or an untracked generated output. | Dependency-checked theorem assembly only. | Full exact formalized goal. | R1--R5, including both specialization bridges and all baseline obligations. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:parameter-regime`: the setting-defined integers and scalars satisfy
  \(N\geq1\), \(q\geq0\), \(h>0\), \(R>0\), and
  \(0<\kappa<\infty\); \(\Theta=[c-h,c+h]\); all polynomial degrees and
  coefficient budgets are finite static presentation data; and
  \(\mathcal D_{N,R,\kappa}\) is nonempty. The definitions
  \(A=(2R)^N\kappa\), \(\Gamma_{\mathrm{proj}}(F)\), and
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) are used in their original
  quantifier order.
- `assump:balcan-common-chain`: the common triangular chain, total-degree
  conventions \(q,M,\Delta\), and outputs \(G_i,Q_i\) are exactly those in
  the formalized setting, with ambient parameter dimension \(p=1\).
- `assump:anchored-unit-range`: the chain remains in the unit box and
  \(Q_1\equiv1\), so \(G_1\equiv F_1\equiv1\). This is the primitive
  nonvanishing source; no projective-speed or extra norm-margin hypothesis is
  added.
- `assump:cube-density-laws`: each random coefficient vector has one full
  joint Lebesgue density supported on the stated coefficient cube and capped
  by \(\kappa\). Arbitrary coordinate correlation is allowed.
- `assump:affine-chart-data`: when the affine clause is invoked,
  \(F_0\in C^1(\Theta)\), and the measurable sets \(E_1,\ldots,E_N\)
  partition the invoked interval with \(F_j\neq0\) on \(E_j\). This is a
  primitive static chart condition, not a generated invariant.

Derived conclusions supplied by current accepted dependencies:

1. **Central Rate Specialization Bridge and Supremum Closure.** The current
   accepted proof and review are
   `perspective_1/idea_1/proof_steps/step_005/proof.md`, SHA-256
   `8af0c8f33a8e26e96adcc9808aadcd77e6464d930d6acdbcf0e7f255934cc68d`,
   and `perspective_1/idea_1/proof_steps/step_005/review.md`, status
   `ACCEPTED`, SHA-256
   `97aad3d3cc66eea47cf89b8896cc4482387b35decf484914e092b901e58c8712`.
   The accepted interface includes the primitive derivative/projective
   bridge carried by its dependency chain, both literal central probability
   inequalities, the ordered-supremum conclusion, degree-zero \(M\)
   dependence, the \(q=0\) reduction, and the raw Counter-example upper
   certificate.
2. **General Affine Chart Inequality.** The current accepted proof and review
   are `perspective_1/idea_1/proof_steps/step_006/proof.md`, SHA-256
   `1e5b411f11a795a4bf42f383c748f4f2c9bb9164efef4786d1385d119bdc6488`,
   and `perspective_1/idea_1/proof_steps/step_006/review.md`, status
   `ACCEPTED`, SHA-256
   `1f945740984079d404309c917115e57bb70da724b1ad94b04286d978fe1c5d1c`.
   It supplies the original affine event, exact chart integrals, arbitrary
   correlated-law scope, complete exhaustion, tangent/multiple/endpoint and
   identically-zero handling, and extended-real validity.
3. **Exact Affine-Monic Baseline Conclusion.** The current accepted proof and
   review are `perspective_1/idea_1/proof_steps/step_008/proof.md`, SHA-256
   `14f4103aebb2c55db4dabe913696aeb4655144377ee1194e4afc2314abeb6ff8`,
   and `perspective_1/idea_1/proof_steps/step_008/review.md`, status
   `ACCEPTED`, SHA-256
   `b95a5ee51b22d696c86923bbaf88fd81744c81aeef754515f2e107da7fd2ffd5`.
   It supplies the exact \(d\)-dimensional lower-coefficient event, the
   deterministic monic leading coefficient, the prescribed chart
   specialization, the zero-dimensional \(d=1\) branch, and the literal
   baseline coefficient.
4. **Counter-example Lower Certificate and Upper-Scale Audit.** The current
   accepted proof and review are
   `perspective_1/idea_1/proof_steps/step_009/proof.md`, SHA-256
   `dedafd879112766a36b21219fd796648dfd794da944fe3de7c371c9159290333`,
   and `perspective_1/idea_1/proof_steps/step_009/review.md`, status
   `ACCEPTED`, SHA-256
   `17743f87e501222f7670bc02b39b8fbc92fb3ec6315f4ad9a6079d815872ee26`.
   It supplies the exact specialized tuple, closed-event probability, lower
   certificate, and distinct projective and raw upper certificates.

Local conditional hypotheses: None. Fixed laws, intervals, chart data, and
specialization parameters below are arbitrary objects under the displayed
primitive quantifiers. No generated event, transversality condition, root
simplicity, independence condition, amplitude condition, or auxiliary margin
is assumed.

The binding setting, sketch, and accepted sketch review have respective
SHA-256 values
`f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`,
`e7035d01ff910e55426d09e1add806b49103404582df2cf3e998000a8eebe898`,
and `ccc24fd25cd6ac468831c0cd84f8aea642d7584e7cd402686da3bb6f82a86561`;
the review status is `ACCEPTED`.

## Local Lemma Map

Atomic step = yes. Local unit count = 0.

The assigned operation is a static logical conjunction of four complete,
current, accepted theorem interfaces. Each mathematical obligation, including
every boundary case and both rate-specialization bridges, was proved and
reviewed by its named producer. This step neither proves an independent
subclaim nor performs a new calculation. The only remaining obligation is to
state the four interfaces together without changing objects, assumptions,
quantifiers, constants, probability mode, or baseline conclusions. Hence no
local lemma, proposition, claim, hypothesis, or invariant is needed, and
there is no hidden local unit.

## Cited Result Applications

External paper results: None. No paper theorem or standard theorem is invoked
anew in this assembly.

1. **Central Rate Specialization Bridge and Supremum Closure (accepted
   dependency).** In the current setting notation, the accepted central
   dependency chain supplies, pointwise for every \(x\in[-1,1]\) and
   \(1\leq i\leq N\),
   \[
   |G_i'(x)|\leq \Delta B_Q(1+qB_P),
   \]
   the exact normalized-derivative identity
   \[
   \frac{d}{dx}\frac{G}{\|G\|_2}
   =\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2},
   \qquad \gamma_G=G/\|G\|_2,
   \]
   and the accepted certificate
   \[
   \Gamma_{\mathrm{proj}}(F)
   \leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
   \]
   For every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
   \(I\subseteq\Theta\) with \(|I|>0\), its named public conclusion is
   \[
   \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
   \langle\alpha,F(\theta)\rangle=0\right]
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
   \leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
   \]
   followed, in the defining interval-then-law supremum order, by
   \[
   C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
   \leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
   \leq\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
   \]
   Its upstream assumptions are discharged by the current accepted dependency
   chain from the primitive setting conditions. It already preserves ordinary
   probability, arbitrary full-joint-density correlation, Euclidean
   projective norm, positive-length interval uniformity, literal constants,
   and degree-zero dependence on \(M\). This assembly uses only those
   conclusions and does not reopen the incidence, cube-section, or derivative
   proofs.

2. **General Affine Chart Inequality (accepted dependency).** Under the five
   primitive assumptions listed above, for every admissible law and every
   interval, the accepted conclusion states
   \[
   \begin{aligned}
   &\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
   F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]\\
   &\quad\leq
   \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   |\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
   \end{aligned}
   \]
   The statement uses the original coefficient cube and the setting-defined
   charts, holds in \([0,+\infty]\), and has only the literal factor
   \(\kappa\). Its accepted proof covers tangent and multiple roots by the
   area formula, interval endpoints and affine-identically-zero coefficient
   classes by full-law nullity, and near-zero pivots by pointwise exhaustion.
   All chart assumptions are primitive or already derived in that accepted
   artifact. This assembly does not condition a density or add a chart-count
   factor.

3. **Exact Affine-Monic Baseline Conclusion (accepted dependency).** For
   every integer \(d\geq1\), every bounded interval \(J\), and every
   possibly correlated law of
   \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) whose full joint
   density is at most \(\kappa\), the accepted conclusion is
   \[
   \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:
   \theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k=0\right]
   \leq\kappa(2R)^{d-1}
   \left(d+\frac{R d(d-1)}2\right)|J|.
   \]
   Its object map keeps the leading coefficient \(1\) as deterministic
   \(F_0(\theta)=\theta^d\) and uses exactly the \(d\) random lower
   coefficients. Its accepted chart ledger includes the prescribed two-cell
   partition for \(d\geq2\), the one-cell, zero-dimensional beta convention
   for \(d=1\), arbitrary correlation, and no chart-count factor. No
   independent polynomial-root result or singular random leading coordinate
   is used here.

4. **Counter-example Lower Certificate and Upper-Scale Audit (accepted
   dependency).** Under the specialization
   \(\Theta=[-1,1]\), \(G(x)=(1,x/\delta)\), and
   \(0<\epsilon\leq\delta\leq1\), with the uniform law on
   \([-1,1]^2\), the accepted result gives
   \[
   (h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)
   =\left(1,0,0,1,2,1,\frac14,1,0,\frac1\delta\right),
   \qquad
   \Gamma_{\mathrm{proj}}(G)=\frac1\delta,
   \]
   \[
   \Pr\!\left[\exists\theta\in[0,\epsilon]:
   \alpha_1+\alpha_2\theta/\delta=0\right]
   =\frac{\epsilon}{4\delta},
   \]
   and
   \[
   \frac1{4\delta}
   \leq C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])
   \leq\frac1\delta
   \leq\frac{\sqrt2}{\delta},
   \qquad \mathcal D=\mathcal D_{2,1,1/4}.
   \]
   The first upper certificate is the exact projective-speed certificate and
   the second is the exact raw-presentation certificate. The accepted result
   explicitly makes no equality claim for
   \(C^{\mathrm{Pf}}_{\mathcal D}\), and neither does this assembly.

## Local Derivation

There is no local derivation because the step is genuinely atomic. All four
applications above are restatements of complete accepted dependency
conclusions in the current setting notation. The proof of the assigned step
is their direct logical conjunction, recorded below. No new inequality,
limit, density conversion, algebraic simplification, or boundary argument is
introduced.

## Target-Step Assembly

**Theorem (Anchored coefficient-normalized Pfaffian hyperplane sweep with
exact affine recovery).**
\label{thm:step-010-anchored-affine-sweep}
Under Assumptions~\ref{assump:parameter-regime},
\ref{assump:balcan-common-chain}, and
\ref{assump:anchored-unit-range}, define all objects exactly as in the
formalized setting. Under Assumption~\ref{assump:cube-density-laws} for the
probabilistic clauses, and additionally under
Assumption~\ref{assump:affine-chart-data} whenever the affine clause is
invoked, all of the following conclusions hold together, with the quantifiers
and specialization scopes stated separately in each clause.

**Primitive-presentation bridge.** For every \(x\in[-1,1]\) and
\(1\leq i\leq N\),
\[
|G_i'(x)|\leq\Delta B_Q(1+qB_P).
\tag{10.1}
\]
The accepted anchor and coordinate envelope also give
\[
G_1\equiv1,
\qquad \|G(x)\|_2\geq1,
\qquad \|G'(x)\|_2
\leq\sqrt N\,\Delta B_Q(1+qB_P).
\]
Writing \(\gamma_G=G/\|G\|_2\), this gives a globally legal normalization
and
\[
\frac{d}{dx}\frac{G}{\|G\|_2}
=\frac{(I_N-\gamma_G\gamma_G^{\mathsf T})G'}{\|G\|_2}.
\tag{10.2}
\]
Consequently, with the original \(x\)-to-\(\theta\) factor \(h^{-1}\),
\[
\Gamma_{\mathrm{proj}}(F)
\leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}h.
\tag{10.3}
\]
The dependence on the chain degree \(M\) is explicitly degree zero; the
parameters \(q,M,\Delta,B_P,B_Q,h^{-1}\) retain their literal
Balcan--Nguyen--Sharma meanings.

**Central swept-hyperplane bounds.** Fix the deterministic presentation
first. For every arbitrary, possibly correlated
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
\(I\subseteq\Theta\) with \(|I|>0\), ordinary probability satisfies
\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
\langle\alpha,F(\theta)\rangle=0\right]\\
&\quad\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|\\
&\quad\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|.
\end{aligned}
\tag{10.4}
\]
With the defining order of suprema displayed literally,
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
\tag{10.5}
\]
Here \(A=(2R)^N\kappa\), every factor is literal, and there is no hidden
constant or confidence parameter. The accepted central interface uses the
area formula for the union of central sections and Ball's sharp cube-section
bound. Its multiplicity convention includes tangent and multiple roots and
interval endpoints, while coefficients giving an identically zero central
combination lie in a proper linear subspace and are null under every
admissible full joint law. No coordinate independence is required.

**General affine chart bound.** Let \(F_0\in C^1(\Theta)\), let
\(I\subseteq\Theta\) be any interval, and let
\(I=\bigsqcup_{j=1}^N E_j\) be the primitive measurable pivot partition.
For \(\beta\in[-R,R]^{N-1}\), indexed by \(i\neq j\), retain the original
charts
\[
T_j(\theta,\beta)
=-\frac{F_0(\theta)}{F_j(\theta)}
-\sum_{i\neq j}\beta_i\frac{F_i(\theta)}{F_j(\theta)},
\tag{10.6}
\]
\[
\partial_\theta T_j(\theta,\beta)
=-\frac{
\left(F_0'(\theta)+\sum_{i\neq j}\beta_iF_i'(\theta)\right)F_j(\theta)
-\left(F_0(\theta)+\sum_{i\neq j}\beta_iF_i(\theta)\right)F_j'(\theta)
}{F_j(\theta)^2}.
\tag{10.7}
\]
Then every arbitrary, possibly correlated
\(\mu\in\mathcal D_{N,R,\kappa}\) satisfies
\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]\\
&\quad\leq
\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta.
\end{aligned}
\tag{10.8}
\]
This is an inequality in \([0,+\infty]\): it remains valid when a chart
integral diverges. It uses the original affine event, original
\(N\)-dimensional coefficient cube, and one literal density factor
\(\kappa\), with no chart-count multiplier. The accepted area-formula
exhaustion covers tangent roots, multiple roots, included endpoints, and
coefficients whose affine combination is identically zero; the latter set is
empty or a proper affine subspace and is law-null. No transversality, simple
root, uniform pivot margin, amplitude, or independence assumption is present.

**Exact affine-monic baseline specialization.** Fix any integer \(d\geq1\),
bounded interval \(J\subset\mathbb R\), and arbitrary possibly correlated
full joint law of
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d\) with density at most
\(\kappa\). Choose a nondegenerate \(\Theta=[c-h,c+h]\) containing \(J\)
and set
\[
F_0(\theta)=\theta^d,
\qquad F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
\qquad
p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k.
\tag{10.9}
\]
In normalized coordinates the deterministic offset and random outputs are
\(Q_0(x)=(c+hx)^d\) and
\(Q_{k+1}(x)=(c+hx)^k\). This specialization has
\[
q=0,\qquad M=0,\qquad N=d,\qquad A=(2R)^d\kappa,
\qquad \Delta_{\mathrm{aug}}=d.
\tag{10.10}
\]
The leading coefficient \(1\) remains deterministic and outside the
\(d\)-dimensional random law.

For \(d\geq2\), use exactly
\[
E_1=J\cap\{|\theta|\leq1\},
\qquad E_d=J\cap\{|\theta|>1\},
\qquad E_j=\varnothing\quad(j\notin\{1,d\}),
\tag{10.11}
\]
whereas for \(d=1\), use \(E_1=J\). The accepted chart certificates are
\[
|\partial_\theta T_1|
\leq d+R\sum_{k=1}^{d-1}k
=d+\frac{R d(d-1)}2
\qquad(|\theta|\leq1),
\tag{10.12}
\]
and, for \(d\geq2\),
\[
|\partial_\theta T_d|
\leq1+R\sum_{k=0}^{d-2}(d-1-k)
=1+\frac{R d(d-1)}2
\leq d+\frac{R d(d-1)}2
\qquad(|\theta|>1).
\tag{10.13}
\]
For \(d=1\), the nonpivot beta cube is zero-dimensional with volume one,
the sole chart is \(T_1=-\theta\), and
\(|\partial_\theta T_1|=1\). The same affine theorem therefore gives,
without a separate polynomial-root citation or a random leading coordinate,
\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:p_\alpha(\theta)=0\right]
\leq\kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)|J|.
\tag{10.14}
\]
There is no factor for the number of charts, no interval enlargement, and no
change in the law dimension or ordinary-probability mode.

**Counter-example 1 scale audit.** For
\(\Theta=[-1,1]\), \(G(x)=(1,x/\delta)\), and
\(0<\delta\leq1\), use the uniform law on \([-1,1]^2\). The exact tuple is
\[
(h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)
=\left(1,0,0,1,2,1,\frac14,1,0,\frac1\delta\right),
\tag{10.15}
\]
with \(c=0\), \(x=\theta\), and
\(\Gamma_{\mathrm{proj}}(G)=1/\delta\). For every
\(0<\epsilon\leq\delta\),
\[
\Pr\!\left[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0\right]
=\frac{\epsilon}{4\delta}.
\tag{10.16}
\]
Consequently, for \(\mathcal D=\mathcal D_{2,1,1/4}\),
\[
\frac1{4\delta}
\leq C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])
\leq
\underbrace{A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(G)}_{1/\delta}
\leq
\underbrace{
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}
}_{\sqrt2/\delta}.
\tag{10.17}
\]
Thus both upper certificates retain the necessary \(1/\delta\) metric
scale. Equation (10.17) is only a lower/upper certificate chain; it does not
claim equality for \(C^{\mathrm{Pf}}_{\mathcal D}\).

All clauses above have ordinary probability under each fixed displayed law,
the exact horizon and interval scopes stated in their clauses, Euclidean
projective norm for the central bound, scalar absolute chart velocity for the
affine bound, and no hidden constants or confidence parameter. The full
deterministic presentation is fixed before the central law and interval
suprema are taken. This theorem has `full` progress type under the exact
anchored, unit-range, coefficient-controlled normalization; it does not claim
that every raw Pfaffian presentation admits this normalization with polynomial
budgets.

**Assembly.** The accepted Central Rate Specialization Bridge and Supremum
Closure supplies (10.1)--(10.5), including the primitive bridge carried by
its accepted dependency interface and the literal central rates. The accepted
General Affine Chart Inequality supplies (10.6)--(10.8), with all its
extended-real and degenerate-case scope unchanged. The accepted Exact
Affine-Monic Baseline Conclusion supplies (10.9)--(10.14), including the
deterministic leading coefficient and \(d=1\) branch. The accepted
Counter-example Lower Certificate and Upper-Scale Audit supplies
(10.15)--(10.17), including the exact probability and the distinction between
the two upper certificates. Direct conjunction of these four named accepted
interfaces proves the theorem. No clause is used to prove another producer's
premise, and no new assumption, lemma, calculation, rate, probability
conversion, or generated output is introduced. \(\square\)

## Explicit Rate Audit

The assembly introduces no quantitative operation. It preserves the complete
accepted R1--R5 declarations as follows.

### R1: Primitive Presentation To Projective Speed

- Exposed variables: \(q,M,\Delta,N,B_P,B_Q,h^{-1}\), with \(M\)
  explicitly degree zero.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: Any presentation parameter, law,
  interval, \(R\), or \(\kappa\).
- Fixed quantities: The complete deterministic common-chain presentation and
  \(\Theta\).
- Probability mode: Deterministic.
- Horizon mode: Pointwise on all of \(\Theta\), hence available for every
  downstream interval.
- Norm mode: Euclidean vector and operator norms, followed by the
  setting-defined Euclidean essential-supremum projective speed.
- Admissibility conditions and auxiliary tolerances: Exactly the primitive
  common-chain, anchor, unit-range, and parameter conditions; no tolerance or
  extra norm margin.
- Term absorption or simplification inequalities: None. The accepted bridge
  retains \(\Delta B_Q(1+qB_P)\),
  \(\|G'\|_2\leq\sqrt N\Delta B_Q(1+qB_P)\),
  \(\|G\|_2\geq1\), and \(h^{-1}\) literally.
- Probability conversion: None.
- Contribution to a Rate Specialization Bridge: It is the exact raw
  presentation-to-projective-speed bridge consumed by R2.
- Baseline-reduction check: At \(q=0\), \(M=B_P=0\) and the factor becomes
  \(\Delta B_Q\). Counter-example 1 has \(B_Q=1/\delta\), so the required
  metric scale is preserved.

### R2: Central All-Law And All-Interval Bound

- Exposed variables: \(A=(2R)^N\kappa\), \(N\),
  \(\Gamma_{\mathrm{proj}}(F)\), and after R1 specialization
  \(q,M,\Delta,B_P,B_Q,h^{-1}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\mu\), \(I\), any exposed
  parameter, correlation, endpoint convention, or section orientation.
- Fixed quantities: The deterministic presentation and
  \((N,R,\kappa)\) are fixed before \(\mu\) and \(I\) range.
- Probability mode: Ordinary probability for each fixed arbitrary correlated
  full joint law; no confidence or union-bound conversion.
- Horizon mode: Every positive-length interval, followed first by the
  interval supremum and then by the law supremum.
- Norm mode: Euclidean projective speed, ordinary interval length, Lebesgue
  coefficient volume, and Hausdorff section measure in the accepted producer.
- Admissibility conditions and auxiliary tolerances: Exactly the central
  primitive assumptions; no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is dropped. The
  accepted dependency preserves
  \[
  \kappa R\sqrt N\,\sqrt2(2R)^{N-1}
  =A\sqrt{N/2}
  \]
  and then supplies the literal coefficient
  \(AN\Delta B_Q(1+qB_P)/(\sqrt2 h)\).
- Probability conversion: Already completed by the accepted central producer
  using the full joint density; this assembly performs none.
- Contribution to a Rate Specialization Bridge: R2 contains the complete
  R1-to-R2 bridge and the defining ordered suprema.
- Baseline-reduction check: At \(q=0\) the raw coefficient becomes
  \(AN\Delta B_Q/(\sqrt2 h)\); at zero projective speed the probability and
  \(C^{\mathrm{Pf}}_{\mathcal D}\) reduce to zero. This central result is not
  substituted for or used to weaken the affine-monic baseline.

### R3: General Affine Chart Bound

- Exposed variables: \(\kappa,R,N,F_0,F,I,(E_j)_{j=1}^N\), and the exact
  integrals of \(|\partial_\theta T_j|\) over
  \(E_j\times[-R,R]^{N-1}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The law, interval, presentation,
  coefficient correlation, pivot margins, root multiplicity, transversality,
  or any exposed variable.
- Fixed quantities: The deterministic affine presentation, interval, and
  pivot partition for each invocation while the law ranges arbitrarily.
- Probability mode: Ordinary probability under each arbitrary correlated
  capped full joint density.
- Horizon mode: Every interval, with the full result after pointwise pivot
  exhaustion; divergent chart integrals remain legal in the extended-real
  sense.
- Norm mode: Scalar absolute Jacobian and Lebesgue coefficient volume, with
  zero-dimensional beta measure one when \(N=1\).
- Admissibility conditions and auxiliary tolerances: Exactly the five named
  primitive assumptions. The accepted proof's \(1/m\) threshold is
  proof-local and absent from the theorem.
- Term absorption or simplification inequalities: No chart term is absorbed
  and no chart-count factor is added. The exported coefficient is literally
  \(\kappa\).
- Probability conversion: Already completed once by the accepted producer
  from the full joint density; this assembly performs none.
- Contribution to a Rate Specialization Bridge: R3 preserves the deterministic
  affine offset outside the random vector and is the same theorem consumed by
  R4.
- Baseline-reduction check: The original random-vector dimension and affine
  event are unchanged, permitting the exact monic specialization without a
  singular random leading coordinate or weaker remainder.

### R4: Exact Affine-Monic Baseline

- Exposed variables: \(d,R,\kappa,|J|\), with
  \(q=M=0\), \(N=d\), \(A=(2R)^d\kappa\), and
  \(\Delta_{\mathrm{aug}}=d\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(J,c,h\), coefficient correlation, a
  chart count, a pivot margin, a leading-coordinate approximation, or an
  auxiliary threshold.
- Fixed quantities: \(d,R,\kappa\), the deterministic monic presentation,
  and a nondegenerate enclosing \(\Theta\).
- Probability mode: Ordinary probability for every arbitrary possibly
  correlated law of the \(d\) lower coefficients.
- Horizon mode: Every bounded interval \(J\), with no enlargement.
- Norm mode: Scalar absolute chart velocity and Lebesgue coefficient volume.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\),
  bounded \(J\), the full joint density cap, and the accepted deterministic
  chart interfaces; no auxiliary tolerance.
- Term absorption or simplification inequalities: The accepted dependency
  retains the exact beta-cube factor \((2R)^{d-1}\), the exact disjoint
  partition length, and the literal high-chart domination before cell lengths
  are combined. This assembly performs no new simplification.
- Probability conversion: None in this assembly or specialization; the one
  density conversion belongs to R3.
- Contribution to a Rate Specialization Bridge: R4 is the complete exact
  baseline bridge from the general affine theorem itself.
- Baseline-reduction check: At \(d=1\), the beta cube has volume one, the
  sole speed is one, and (10.14) reduces exactly to \(\kappa|J|\). For all
  \(d\), the deterministic leading coefficient, law dimension, probability
  mode, and literal baseline coefficient remain unchanged.

### R5: Counter-example 1 Scale

- Exposed variables: \(\delta,\epsilon\), with
  \(0<\epsilon\leq\delta\leq1\), and the complete tuple in (10.15).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(\delta\), \(\epsilon\), a sign
  branch, boundary, law, interval, or presentation parameter.
- Fixed quantities: The deterministic feature \(G=(1,x/\delta)\), the value
  of \(\delta\), and the uniform full joint law on \([-1,1]^2\).
- Probability mode: Exact ordinary probability under that law.
- Horizon mode: Every closed interval \([0,\epsilon]\) in the stated range;
  no small-interval limit is used.
- Norm mode: Euclidean projective norm, planar Lebesgue coefficient area, and
  ordinary interval length.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(0<\epsilon\leq\delta\leq1\); no auxiliary tolerance.
- Term absorption or simplification inequalities: None. The accepted
  dependency supplies the exact probability \(\epsilon/(4\delta)\), exact
  quotient \(1/(4\delta)\), exact projective certificate \(1/\delta\), and
  exact raw certificate \(\sqrt2/\delta\).
- Probability conversion: Exact integration of the fixed full joint density
  over the exact closed event, already completed in the accepted producer.
- Contribution to a Rate Specialization Bridge: R5 compares the independently
  proved lower certificate with both accepted central upper certificates.
- Baseline-reduction check: At \(\epsilon=\delta\), the probability is
  \(1/4\); at \(\delta=1\), it is \(\epsilon/4\); for every positive
  admissible \(\epsilon\), the quotient remains \(1/(4\delta)\). The
  presentation exposes \(B_Q=1/\delta\), and no equality for
  \(C^{\mathrm{Pf}}_{\mathcal D}\) is asserted.

Source alignment is unchanged from the binding setting. The theorem preserves
the Balcan \(q,M,\Delta\) convention, arbitrary correlated full joint
densities, all-law/all-positive-length-interval central uniformity, explicit
\(N,R,\kappa,A\) and conditioning dependence, Counter-example 1's metric
scale, and exact internal affine recovery of the monic baseline without a
singular random leading coordinate. The progress type remains `full` for the
declared anchored, unit-range, coefficient-controlled normalization. The
theorem does not assert polynomial-budget conversion of every raw Pfaffian
presentation.

## Blockers

None

## Notation And Assumption Notes

- No new mathematical symbol is introduced for use in a derivation. The
  theorem reuses only setting-defined objects and exact accepted dependency
  objects.
- `public-facing`: the primitive bridge, \(\Gamma_{\mathrm{proj}}(F)\),
  both central inequalities, the ordered definition and bound for
  \(C^{\mathrm{Pf}}_{\mathcal D}\), the setting-defined affine charts and
  their exact integral, the monic polynomial and literal baseline rate, and
  the complete Counter-example tuple and certificates. These are precisely
  the minimal interfaces required by the formalized goal.
- `appendix-local`: none introduced by this assembly. The monic pivot cells
  and chart velocities are inherited dependency objects restated because the
  exact baseline bridge is theorem-facing; no new chart helper is defined.
- `proof-local`: none. There is no local event abbreviation, constant,
  threshold, margin, exhaustion level, or auxiliary tolerance.
- Constant provenance is exact. \(A=(2R)^N\kappa\) is setting-defined; all
  central coefficients come from the accepted central dependency; the
  affine coefficient \(\kappa\) comes from the accepted affine dependency;
  the monic coefficient comes from the accepted exact baseline dependency;
  and the Counter-example constants come from its accepted scale certificate.
  No constant is chosen or bounded in this step.
- Assumption provenance is exact. The five stable assumption IDs above are
  primitive. The derivative and projective certificates, central probability
  interface, affine event coverage, monic event map, and Counter-example
  certificates are accepted derived outputs. There is no generated invariant,
  event, local-validity condition, stability condition, boundedness condition,
  or recurrence promoted to a primitive assumption.
- The theorem is unconditional in the workflow sense: every theorem-facing
  condition is primitive and there is no local conditional hypothesis. The
  affine clause is invoked under the primitive static chart-data assumption
  already present in the formalized goal.
- Boundary and degenerate cases are inherited without exclusion: \(N=1\),
  \(q=0\), stationary normalized curves, tangent and multiple roots, interval
  endpoints, affine-identically-zero coefficients, divergent affine
  integrals, \(d=1\), empty monic chart cells, zero-dimensional beta volume,
  \(\epsilon=\delta\), \(\delta=1\), and every positive admissible
  \(\epsilon\).
- The optional `global_proof.md` was not read or used. Its SHA-256
  `ab5340e84579424a3359d13063e91ed62e3db868b3b126c0bf10e5073f98153f`
  and the paired accepted review SHA-256
  `bc4164bc1cad6e4856ee1268a586fbd17d5f8aa319f69716ea73b3da580f28c2`
  were validated only as binding identities. No global diagnostic statement
  is evidence, a cited result, an assumption source, or authority to change
  the target claim.
