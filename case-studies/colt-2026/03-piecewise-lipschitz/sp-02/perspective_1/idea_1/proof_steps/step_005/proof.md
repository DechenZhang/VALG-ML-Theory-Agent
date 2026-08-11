# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_005`
- Unit attempt: 1
- Binding setting SHA-256: `f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83`
- Accepted sketch SHA-256: `2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a`
- Accepted sketch review SHA-256: `40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8`

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_005` | Derive both displayed central inequalities and (C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\leq A\sqrt{N/2}\Gamma_{\mathrm{proj}}(F)\leq AN\Delta B_Q(1+qB_P)/(\sqrt2h)). | `step_002`, `step_004` | Derived only: `step_002`, `step_004`; primitive parameter meanings from `assump:parameter-regime` | Preserve every exposed variable, degree-zero (M)-dependence, law/interval uniformity, and literal constants through substitution and two suprema. | Exact algebra and the definition of (C^{\mathrm{Pf}}_{\mathcal D}). | Complete central theorem clause. | R2, with the R1 Rate Specialization Bridge and R5 scale retention. | PENDING |

Equivalently, the exact target is to prove simultaneously for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval
\(I\subseteq\Theta\) that
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
\tag{5.1}
\]
and then to take both defining suprema explicitly to obtain
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\tag{5.2}
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-regime`: only the primitive parameter meanings are
    used directly. In particular, \(N\geq1\), \(q\geq0\), \(h>0\),
    \(R>0\), \(0<\kappa<\infty\),
    \(\Theta=[c-h,c+h]\), the presentation data are finite and fixed, and
    \[
    A=(2R)^N\kappa.
    \]
    The setting definitions of \(\mathcal D_{N,R,\kappa}\), positive
    interval length, and \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\) are
    used exactly as stated. No density, anchor, chain, or section property is
    reproved or separately assumed here.
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-002-projective-speed} from accepted
    `step_002` gives the same setting-defined normalized curve and the exact
    certificate
    \[
    \Gamma_{\mathrm{proj}}(F)
    \leq
    \frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}.
    \tag{5.3}
    \]
    It also gives \(\gamma_F\in C^1(\Theta;\mathbb R^N)\), so the speed in
    the defining essential supremum is measurable and finite. The accepted
    artifacts are
    `perspective_1/idea_1/proof_steps/step_002/proof.md`, SHA-256
    `b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c`,
    and `perspective_1/idea_1/proof_steps/step_002/review.md`, status
    `ACCEPTED`, SHA-256
    `71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37`.
    The accepted review identifies sketch attempt 2, unit attempt 1, and the
    preceding proof digest.
  - Proposition~\ref{prop:step-004-correlated-central-sweep} from accepted
    `step_004` gives, for every
    \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval
    \(I\subseteq\Theta\),
    \[
    \Pr_{\alpha\sim\mu}\!\left[
      \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
    \right]
    \leq
    A\sqrt{\frac N2}
    \int_I\|\gamma_F'(\theta)\|_2\,d\theta.
    \tag{5.4}
    \]
    This accepted output already has ordinary-probability mode for each
    arbitrary correlated admissible law and uses the same deterministic
    \(F\), coefficient \(A\), Euclidean norm, and interval as the target.
    The accepted artifacts are
    `perspective_1/idea_1/proof_steps/step_004/proof.md`, SHA-256
    `58339caff7775e6a63fc73b4d0a9293c6b42b9faa2f3ed519b8d2ad58d2af8a2`,
    and `perspective_1/idea_1/proof_steps/step_004/review.md`, status
    `ACCEPTED`, SHA-256
    `990ae2d8977f3d8c1b6083b25549246d5e7b6843642b61c4b555bbbf2ad797e6`.
    The accepted review identifies sketch attempt 2, unit attempt 1, and the
    preceding proof digest.
- Local conditional hypotheses: None. A fixed law and a fixed
  positive-length interval are arbitrary quantified objects inside the proof,
  not theorem-facing conditions.

The accepted sketch row authorizes exactly these two dependency conclusions.
No transitive dependency is reopened, and no statement from
`global_proof.md` is an allowed assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-regime} and accepted Proposition~\ref{prop:step-002-projective-speed}, every interval \(I\subseteq\Theta\) satisfies \(\int_I\lVert\gamma_F'(\theta)\rVert_2\,d\theta\leq\Gamma_{\mathrm{proj}}(F)\lvert I\rvert\). | Converts the local-speed integral in accepted `step_004` into the exact all-interval projective-speed coefficient, including all endpoint conventions. |
| `unit_002` | proposition | Under Assumption~\ref{assump:parameter-regime}, accepted Propositions~\ref{prop:step-002-projective-speed} and \ref{prop:step-004-correlated-central-sweep}, and Lemma~\ref{lem:step-005-speed-length}, every admissible law and positive-length interval satisfy (5.1), the interval and law suprema give (5.2), and the endpoint, zero-length-before-division, \(N=1\), zero-speed, \(q=0\), degree-zero \(M\), and Counter-example 1 upper-scale cases are valid. | Supplies the complete central theorem clause, the exact R1-to-R2 Rate Specialization Bridge, the two ordered suprema, every required boundary audit, degree-zero \(M\)-dependence, and R5 upper-scale retention. |

Atomic step = no. Passing from an essential supremum to an interval integral
is an independent measure-theoretic subclaim. The remaining probability-rate
substitution, exact constant algebra, and nested-supremum closure are packaged
in a separate theorem-style proposition.

## Cited Result Applications

External paper results: None.

1. **Proposition~\ref{prop:step-002-projective-speed} (accepted dependency,
   projective-speed certificate).** Under the upstream assumptions already
   discharged in its accepted proof, this proposition concerns the exact
   branch curve \(F\), proves \(\gamma_F\in C^1\), and concludes (5.3).
   Its current accepted proof and review hashes are recorded in
   `## Allowed Assumptions And Dependencies`. This step uses only those
   exported conclusions and does not import its proof-local notation or add a
   new norm margin.

2. **Proposition~\ref{prop:step-004-correlated-central-sweep} (accepted
   dependency, central local-speed probability bound).** Under its already
   discharged primitive assumptions and accepted incidence dependency, this
   proposition proves (5.4) for every admissible, possibly correlated law and
   every interval. It uses ordinary probability and the exact coefficient
   \(A\sqrt{N/2}\). Its current accepted proof and review hashes are recorded
   above. This step consumes (5.4) without reopening Ball's theorem, density
   integration, incidence geometry, or root-multiplicity handling.

3. **Lemma~\ref{lem:step-005-speed-length} (local interval-speed lemma).**
   For the accepted \(C^1\) normalized curve, this lemma applies the defining
   property of the essential supremum and proves
   \[
   \int_I\|\gamma_F'(\theta)\|_2\,d\theta
   \leq\Gamma_{\mathrm{proj}}(F)|I|.
   \]
   It is proved in `unit_001` and used in
   Proposition~\ref{prop:step-005-central-rate-bridge}.

4. **Proposition~\ref{prop:step-005-central-rate-bridge} (local target
   proposition).** This proposition composes the two accepted dependencies
   and the local interval-speed lemma, performs the literal constant
   simplification, and takes the interval supremum followed by the law
   supremum. It is proved in `unit_002` and is the sole mathematical interface
   exported in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Projective speed controls every interval length).**
\label{lem:step-005-speed-length}
Under Assumption~\ref{assump:parameter-regime} and accepted
Proposition~\ref{prop:step-002-projective-speed}, every interval
\(I\subseteq\Theta\), with any endpoint convention, satisfies
\[
\int_I\|\gamma_F'(\theta)\|_2\,d\theta
\leq\Gamma_{\mathrm{proj}}(F)|I|.
\tag{5.5}
\]

**Proof / justification.** Accepted
Proposition~\ref{prop:step-002-projective-speed} gives
\(\gamma_F\in C^1(\Theta;\mathbb R^N)\). Therefore
\(\theta\mapsto\|\gamma_F'(\theta)\|_2\) is a nonnegative measurable
function. By the setting definition
\[
\Gamma_{\mathrm{proj}}(F)
=\operatorname*{ess\,sup}_{\theta\in\Theta}
  \|\gamma_F'(\theta)\|_2,
\]
there is a Lebesgue-null subset of \(\Theta\) outside which
\[
\|\gamma_F'(\theta)\|_2\leq\Gamma_{\mathrm{proj}}(F).
\]
Integrating this almost-everywhere inequality on \(I\) gives
\[
\int_I\|\gamma_F'(\theta)\|_2\,d\theta
\leq
\int_I\Gamma_{\mathrm{proj}}(F)\,d\theta
=\Gamma_{\mathrm{proj}}(F)\operatorname{Leb}(I)
=\Gamma_{\mathrm{proj}}(F)|I|.
\]
Changing endpoint inclusion changes neither the Lebesgue integral nor
\(\operatorname{Leb}(I)=|I|\). This proves (5.5), including empty and
singleton intervals. \(\square\)

### unit_002: proposition

**Proposition (Central Rate Specialization Bridge and supremum closure).**
\label{prop:step-005-central-rate-bridge}
Under Assumption~\ref{assump:parameter-regime}, accepted
Propositions~\ref{prop:step-002-projective-speed} and
\ref{prop:step-004-correlated-central-sweep}, and
Lemma~\ref{lem:step-005-speed-length}, every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length interval
\(I\subseteq\Theta\) satisfy
\[
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|.
\tag{5.6}
\]
Moreover,
\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\tag{5.7}
\]
The last coefficient is literally
\[
\frac{(2R)^N\kappa N\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\tag{5.8}
\]
It has degree-zero dependence on \(M\). Under \(q=0\), where the setting
convention gives \(M=B_P=0\), it reduces exactly to
\(AN\Delta B_Q/(\sqrt2\,h)\). Under the Counter-example 1 tuple, with
\(0<\delta\leq1\),
\[
R=1,\quad \kappa=1/4,\quad A=(2R)^N\kappa=1,\quad
N=2,\quad q=M=B_P=0,\quad
\Delta=1,\quad B_Q=1/\delta,\quad h=1,
\]
it is exactly \(\sqrt2/\delta\).
Before the capacity quotient, the chain (5.6) also holds for empty and
singleton intervals, with both right-hand terms equal to zero, and it is
unchanged by endpoint convention. When \(N=1\) or when
\(\Gamma_{\mathrm{proj}}(F)=0\), the accepted interfaces make the relevant
probability and capacity zero, so no division by speed is required.

**Proof / justification.** Fix the deterministic presentation and the full
parameter tuple first. Let
\(\mu\in\mathcal D_{N,R,\kappa}\) be arbitrary, and then let
\(I\subseteq\Theta\) be an arbitrary interval, initially without assuming
positive length. This order is fixed presentation, then law, then interval.
For compact notation within this proof only, define the coefficient root event
\[
\mathsf Z_I
:=\left\{\alpha\in\mathbb R^N:
  \exists\theta\in I,\ \langle\alpha,F(\theta)\rangle=0
\right\}.
\tag{5.9}
\]
Accepted Proposition~\ref{prop:step-004-correlated-central-sweep} gives
\[
\Pr_{\alpha\sim\mu}(\mathsf Z_I)
\leq
A\sqrt{\frac N2}
\int_I\|\gamma_F'(\theta)\|_2\,d\theta.
\tag{5.10}
\]
Lemma~\ref{lem:step-005-speed-length} applies to this same interval and
same normalized curve. Substitution into (5.10) yields the first requested
central inequality:
\[
\Pr_{\alpha\sim\mu}(\mathsf Z_I)
\leq
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|.
\tag{5.11}
\]

Accepted Proposition~\ref{prop:step-002-projective-speed} gives (5.3) for
the same deterministic feature presentation and Euclidean norm. Since
\(A>0\), \(N\geq1\), and \(|I|\geq0\), multiplying (5.3) by the nonnegative
factor \(A\sqrt{N/2}|I|\) preserves its direction. The exact algebra is
\[
\begin{aligned}
A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
&\leq
A\sqrt{\frac N2}\,
\frac{\sqrt N\,\Delta B_Q(1+qB_P)}{h}|I|\\
&=
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|,
\end{aligned}
\tag{5.12}
\]
where
\[
\sqrt{\frac N2}\sqrt N
=\sqrt{\frac{N^2}{2}}
=\frac N{\sqrt2}
\quad\text{because }N\geq1.
\tag{5.13}
\]
Equations (5.11)--(5.12) prove both inequalities in (5.6), with no dropped
term, domination threshold, or new constant. This conclusion is already
valid when \(I\) is empty or a singleton: then \(|I|=0\), the accepted
interval inequality (5.10) has zero integral, and hence it forces the root
probability to be zero before any quotient is formed. Open, closed, and
half-open versions have the same length and integral because their endpoints
are Lebesgue-null; all root-event endpoint handling is already part of the
exact accepted interface (5.10).

It remains to take the two suprema rather than merely state uniformity. Only
now restrict to the intervals appearing in the capacity definition, for which
\(|I|>0\). Division of (5.6) by this positive \(|I|\) gives, for the
arbitrary pair
\((\mu,I)\),
\[
\frac{\Pr_{\alpha\sim\mu}(\mathsf Z_I)}{|I|}
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\tag{5.14}
\]
First fix \(\mu\) and take the interval supremum in the definition of
\(C^{\mathrm{Pf}}_{\mathcal D}\). The two right-hand coefficients do not
depend on \(I\), so monotonicity of the supremum gives
\[
\sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
\frac{\Pr_{\alpha\sim\mu}(\mathsf Z_I)}{|I|}
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\tag{5.15}
\]
Now take the law supremum. The same coefficients are independent of \(\mu\),
and hence
\[
\begin{aligned}
&\sup_{\mu\in\mathcal D_{N,R,\kappa}}
 \sup_{\substack{I\subseteq\Theta\ \mathrm{interval}\\|I|>0}}
 \frac{\Pr_{\alpha\sim\mu}(\mathsf Z_I)}{|I|}\\
&\qquad\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
\end{aligned}
\tag{5.16}
\]
The left-hand side of (5.16) is exactly the setting definition of
\(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\), so (5.7) follows.

Finally, inserting the setting equality \(A=(2R)^N\kappa\) into the last
coefficient gives (5.8) by equality, not asymptotic notation. The parameter
\(M\) occurs nowhere in (5.6)--(5.8); with the separately exposed coefficient
budget \(B_P\) held fixed, its dependence is therefore explicitly degree
zero. For \(q=0\), the exact setting convention \(M=B_P=0\) turns
\(1+qB_P\) into one and gives the stated reduction. Substitution of the
Counter-example 1 tuple gives
\[
\frac{1\cdot2\cdot1\cdot(1/\delta)\cdot1}
     {\sqrt2\cdot1}
=\frac{\sqrt2}{\delta},
\tag{5.17}
\]
so the upper rate retains the required \(1/\delta\) metric scale. This step
uses no Counter-example lower-probability calculation.

If \(\Gamma_{\mathrm{proj}}(F)=0\), (5.11) gives zero probability for every
admissible law and interval, and (5.7) gives
\(C^{\mathrm{Pf}}_{\mathcal D}=0\); no division by the speed occurs. The
algebra above is also valid when \(N=1\). More specifically, the exact
accepted projective certificate then has \(F=(1)\), \(\Delta=0\), and
\(\Gamma_{\mathrm{proj}}(F)=0\), while the accepted probability interface
has zero right-hand side; thus both displayed chains reduce to \(0\leq0\).
The only division used in the supremum closure is by the explicitly required
positive interval length. This completes the proposition. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-correlated-central-sweep} supplies
the ordinary-probability inequality with the exact local-speed integral for
every admissible law and interval. Lemma~\ref{lem:step-005-speed-length}
(`unit_001`) bounds that same integral by
\(\Gamma_{\mathrm{proj}}(F)|I|\), yielding the first displayed central
inequality. Accepted Proposition~\ref{prop:step-002-projective-speed} supplies
the raw-presentation certificate for that same \(\Gamma_{\mathrm{proj}}(F)\).
Proposition~\ref{prop:step-005-central-rate-bridge} (`unit_002`) substitutes
it and uses the exact identity
\[
\sqrt{\frac N2}\sqrt N=\frac N{\sqrt2}
\]
to obtain the second displayed central inequality. The same proposition then
checks empty, singleton, and endpoint variants before any quotient; it divides
only by the required positive interval length, takes first the interval
supremum and then the law supremum, and identifies their nested value with the
setting definition of \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\). Therefore
the named results prove exactly
\[
\boxed{
\Pr_{\alpha\sim\mu}\!\left[
  \exists\theta\in I:\langle\alpha,F(\theta)\rangle=0
\right]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}|I|}
\]
for all allowed \(\mu\) and positive-length \(I\), and
\[
\boxed{
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)
\leq
\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.}
\]
This is the exact accepted sketch-row claim. No geometric, density, or
regularity assertion is added at assembly.

## Explicit Rate Audit

- Exposed variables: The full central-instance tuple is
  \((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\), with
  \(A=(2R)^N\kappa\). The quantified law \(\mu\), interval \(I\), and
  intermediate setting quantity \(\Gamma_{\mathrm{proj}}(F)\) are also
  displayed before specialization. Dependence on \(M\) is explicitly degree
  zero.
- Hidden constants may depend on: None. Every numerical factor, including
  \(\sqrt2\), is literal.
- Hidden constants may not depend on: Any exposed parameter, the deterministic
  presentation, \(\mu\), \(I\), coefficient correlation, interval endpoint
  convention, or the Counter-example scale \(\delta\).
- Fixed quantities: The deterministic common-chain presentation, \(F\),
  \(\Theta\), and the full tuple
  \((q,M,\Delta,N,R,\kappa,A,B_P,B_Q,h^{-1})\) are fixed while \(\mu\) and
  positive-length \(I\) range over their nested suprema. No asymptotic limit
  or parameter choice is made.
- Probability mode: Ordinary probability for each fixed arbitrary admissible
  law. There is no confidence parameter, expectation, conditioning, union
  bound over laws or intervals, or independence assumption.
- Horizon mode: A deterministic inequality for every positive-length interval,
  followed first by the interval supremum and then by the law supremum. This
  is interval-uniform, not an iterative, stopping-time, or asymptotic mode.
- Norm mode: The Euclidean norm \(\|\gamma_F'(\theta)\|_2\) and the
  setting-defined Euclidean projective speed. The probability quotient uses
  ordinary Lebesgue interval length \(|I|\).
- Admissibility conditions and auxiliary tolerances: Exactly the primitive
  parameter meanings in Assumption~\ref{assump:parameter-regime} and the two
  current accepted dependencies. In particular, \(N\geq1\), \(h>0\), and
  \(|I|>0\) where division is used. There is no auxiliary tolerance, chosen
  threshold, confidence level, transversality condition, or new norm margin.
- Term absorption or simplification inequalities: No term is dropped or
  absorbed. The complete bridge is
  \[
  \int_I\|\gamma_F'\|_2
  \leq\Gamma_{\mathrm{proj}}(F)|I|,
  \qquad
  \Gamma_{\mathrm{proj}}(F)
  \leq\frac{\sqrt N\,\Delta B_Q(1+qB_P)}h,
  \]
  followed by the equality
  \[
  A\sqrt{\frac N2}\frac{\sqrt N\,\Delta B_Q(1+qB_P)}h
  =\frac{AN\Delta B_Q(1+qB_P)}{\sqrt2\,h}.
  \]
- Probability conversion: None in this step. Accepted `step_004` already
  exports ordinary probability under each full joint law; this step only
  preserves that mode through deterministic inequalities and suprema.
- Contribution to any Rate Specialization Bridge: This is the exact R1-to-R2
  public Rate Specialization Bridge. Auxiliary parameter choice: none.
  Technical conditions: \(N\geq1\), \(h>0\), and finite accepted
  projective speed are verified before the interval comparison; \(|I|>0\)
  is imposed only for the capacity quotient. Empty and singleton intervals
  are handled first with zero length and are never divided by. Simplification:
  (5.5) and the exact algebra (5.12)--(5.13). Probability conversion: none.
  Final rate: (5.6)--(5.8), followed by the inner interval supremum and then
  the outer law supremum in (5.15)--(5.16).
- Baseline-reduction check, if applicable: For \(q=0\), the setting convention
  \(M=B_P=0\) reduces the coefficient exactly to
  \(AN\Delta B_Q/(\sqrt2\,h)\). Under Counter-example 1, it becomes exactly
  \(\sqrt2/\delta\), retaining the required \(1/\delta\) upper scale. If
  \(\Gamma_{\mathrm{proj}}(F)=0\), the probability and
  \(C^{\mathrm{Pf}}_{\mathcal D}\) both reduce to zero. The separate exact
  affine-monic baseline is not replaced, weakened, or invoked by this central
  specialization.

## Blockers

None

## Notation And Assumption Notes

- The setting already defines \(A\), \(F\), \(\gamma_F\),
  \(\Gamma_{\mathrm{proj}}(F)\), \(\mathcal D_{N,R,\kappa}\),
  \(C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)\), and interval length. None is a
  new helper object.
- The probability inequalities (5.6) and (5.7), including their exact raw
  coefficient, are the minimal `public-facing` interface exported by this
  step. No helper constant is exported with them.
- \(\mathsf Z_I\) in (5.9) is `proof-local`. It is merely an abbreviation of
  the setting's central root event for the quantified interval. It is not an
  assumed good event, generated invariant, local-validity condition, or new
  theorem-facing condition; accepted
  Proposition~\ref{prop:step-004-correlated-central-sweep} supplies its
  probability bound.
- The Lebesgue-null set implicit in the definition of essential supremum is
  `proof-local` to Lemma~\ref{lem:step-005-speed-length}. Its existence is the
  defining property of the setting-defined essential supremum, and it is not
  exported or conditioned upon.
- No new public, appendix-local, or proof-local constant, radius, threshold,
  margin, rate, tolerance, bounded quantity, or finite-tube quantity is
  introduced. The factors \(A\), \(N\), \(\sqrt2\), \(\Delta\), \(B_Q\),
  \(q\), \(B_P\), and \(h^{-1}\) are inherited from the setting or accepted
  dependencies, and every combination is derived by displayed equality.
- Constant provenance is exact: \(A=(2R)^N\kappa\) is setting-defined;
  \(A\sqrt{N/2}\) is inherited from accepted `step_004`; and
  \(\sqrt N\Delta B_Q(1+qB_P)/h\) is inherited from accepted `step_002`.
  Proposition~\ref{prop:step-005-central-rate-bridge} proves their product is
  the target coefficient. There are no hidden constants.
- Assumption provenance is exact: only primitive parameter meanings are used
  directly. Measurability and finiteness of projective speed are accepted
  derived conclusions of `step_002`; the arbitrary-law probability interface
  is an accepted derived conclusion of `step_004`. No generated condition is
  reclassified as primitive, and there is no local conditional hypothesis
  used in the unconditional target assembly.
- The symbol \(\delta\) and the tuple used in (5.17) are original
  formalized-goal specialization objects. They are `proof-local` to the R5
  audit here; only the resulting upper-scale identity \(\sqrt2/\delta\) is
  exported for downstream comparison. The lower probability calculation is
  not imported into this step.
- The optional `global_proof.md` was read only after its paired
  `global_proof_review.md` was verified to have status `ACCEPTED` for the
  current hashes
  `45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9`
  and
  `cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db`.
  Its step-relevant planning observation was to expose the
  integral-to-essential-supremum passage, exact substitution, and nested
  suprema. Those operations were independently proved in the two named local
  units. The diagnostic was not used as evidence, a cited result, an
  assumption source, or authority to alter the target claim, dependencies,
  assumptions, scope, mode, norm, or constants.
- The pre-overwrite sketch-attempt-1 proof and review were consulted only as
  permitted same-step diagnostics for stable unit handles and boundary-audit
  coverage. Every local unit above was regenerated against the attempt-2
  sketch and the two current accepted dependency artifacts; no stale claim or
  stale dependency digest is used as evidence.
