# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(d\geq1,R\geq1\), support-compatible \(\alpha_{1:d-1}\), and interval \(J\subseteq[-1,1]\) with any endpoint convention, prove \(\lvert s_0'\rvert\leq d+Rd(d-1)/2\) and \(\lambda(s_0(J))\leq B_0(d,R)\lvert J\rvert\), including empty/singleton \(J\), \(\theta=\pm1\), and \(d=1\).
- Depends on: None.
- Assumptions used: `assump:indexed-regime`; `assump:compact-cube-support`.
- Technical challenge: Keep the empty sum and arbitrary endpoint conventions exact; show continuous interval image length rather than merely image diameter prose.
- Intended proof tool or cited result: Direct differentiation, triangle inequality, \(\sum_{j=1}^{d-1}j=d(d-1)/2\), mean-value theorem, and connectedness of continuous interval images; no cited result is theorem-critical.
- Output target: Inner deterministic image-length certificate.
- Rate objective: Root-hitting structural-rate objective: preserve exact \(B_0(d,R)\).
- Row-local review status: `PENDING`. The controlling `proof_sketch_review.md` gate for sketch attempt 1 is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:indexed-regime`: \(d\in\mathbb N\), \(d\geq1\), and \(R\geq1\). The fixed cap parameters in this assumption are not used in this deterministic step.
  - `assump:compact-cube-support`: the polynomial is monic in the setting's ascending coefficient convention, and every support-compatible tuple satisfies \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), hence \(\lvert\alpha_j\rvert\leq R\) for \(1\leq j\leq d-1\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. Support compatibility is a universal quantifier in the target claim, not an assumed generated-object property.
- Accepted dependency step proof/review artifacts: None, because the sketch row has `Depends on: None`.

## Local Lemma Map

Atomic step = no. The derivative control and the conversion from Lipschitz control to the Lebesgue length of an arbitrary-endpoint interval image are separate nontrivial subclaims.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:indexed-regime} and \ref{assump:compact-cube-support}, if \(d\geq1\), \(R\geq1\), and \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), then \(s_0(\cdot;\alpha_{1:d-1})\) has the displayed exact derivative, satisfies \(\lvert s_0'(\theta;\alpha_{1:d-1})\rvert\leq B_0(d,R)\) for every \(\theta\in[-1,1]\), and is \(B_0(d,R)\)-Lipschitz on \([-1,1]\). | Proves the exact pointwise derivative bound and supplies the quantitative input for the image-length argument. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:indexed-regime} and \ref{assump:compact-cube-support} and Lemma~\ref{lem:step-001-unit-001}, if \(d\geq1\), \(R\geq1\), \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), and \(J\subseteq[-1,1]\) is an interval with any endpoint convention, then its image under \(s_0(\cdot;\alpha_{1:d-1})\) is an interval (or empty) and \(\lambda(s_0(J;\alpha_{1:d-1}))\leq B_0(d,R)\lvert J\rvert\), including empty and singleton \(J\). | Converts the exact Lipschitz constant into the exact exported inner image-length certificate. |

## Cited Result Applications

No paper theorem, external black-box result, or dependency step is used.

1. **Mean-value theorem, in the needed Lipschitz form.** If a real-valued function is continuous on the closed segment between any \(x,z\in[-1,1]\), differentiable on its interior, and has \(\lvert f'\rvert\leq L\) there, then \(\lvert f(x)-f(z)\rvert\leq L\lvert x-z\rvert\). Here \(f=s_0(\cdot;\alpha_{1:d-1})\) is a polynomial, so continuity and differentiability hold on every such segment; the explicit calculation at the start of Lemma~\ref{lem:step-001-unit-001} establishes the derivative bound with \(L=B_0(d,R)\) before the mean-value theorem is invoked.
2. **Continuous images of real intervals.** Every interval in \(\mathbb R\), regardless of which finite endpoints it contains, is connected; the continuous image of a connected set is connected; and connected subsets of \(\mathbb R\) are intervals. Here \(J\subseteq[-1,1]\) is an interval and \(s_0\) is a polynomial, so these assumptions are discharged directly.
3. **Lebesgue length of a bounded interval.** For every nonempty bounded interval \(A\subseteq\mathbb R\), including open, closed, half-open, and singleton cases, \(\lambda(A)=\operatorname{diam}(A)\); both quantities are zero for a singleton, and endpoint inclusion does not change either quantity. This is applied to nonempty \(J\) and \(s_0(J;\alpha_{1:d-1})\); the empty case is proved separately without assigning a diameter to the empty set.
4. **Lemma~\ref{lem:step-001-unit-001} (Inner-sweep derivative and Lipschitz control).** Restated in current notation: under the two allowed setting assumptions and for every support-compatible nonpivot tuple, \(\lvert s_0'\rvert\leq B_0(d,R)\) on \([-1,1]\), hence \(s_0\) is \(B_0(d,R)\)-Lipschitz. Its assumptions are discharged in `unit_001`; its conclusion is used by Lemma~\ref{lem:step-001-unit-002} and in the target-step assembly.
5. **Lemma~\ref{lem:step-001-unit-002} (Inner interval image length).** Restated in current notation: under the same allowed assumptions and the preceding derivative-control lemma, every arbitrary-endpoint interval \(J\subseteq[-1,1]\) satisfies \(\lambda(s_0(J;\alpha_{1:d-1}))\leq B_0(d,R)\lvert J\rvert\). Its assumptions are discharged in `unit_002`; its conclusion is the exported image-length part of the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Inner-sweep derivative and Lipschitz control).** \(\label{lem:step-001-unit-001}\)

Statement:
Under Assumptions~\ref{assump:indexed-regime} and \ref{assump:compact-cube-support}, if \(d\in\mathbb N\), \(d\geq1\), \(R\geq1\), and \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), then for every \(\theta\in[-1,1]\),
\[
\partial_\theta s_0(\theta;\alpha_{1:d-1})
=-d\theta^{d-1}-\sum_{j=1}^{d-1}j\alpha_j\theta^{j-1}
\]
and
\[
\bigl\lvert\partial_\theta s_0(\theta;\alpha_{1:d-1})\bigr\rvert
\leq d+\frac{Rd(d-1)}2
=B_0(d,R).
\]
Consequently, for all \(x,z\in[-1,1]\),
\[
\lvert s_0(x;\alpha_{1:d-1})-s_0(z;\alpha_{1:d-1})\rvert
\leq B_0(d,R)\lvert x-z\rvert.
\]

Proof / justification:
By the setting definition,
\[
s_0(\theta;\alpha_{1:d-1})
=-\theta^d-\sum_{j=1}^{d-1}\alpha_j\theta^j.
\]
This is a polynomial in \(\theta\), so termwise differentiation is valid on all of \(\mathbb R\) and gives
\[
\partial_\theta s_0(\theta;\alpha_{1:d-1})
=-d\theta^{d-1}-\sum_{j=1}^{d-1}j\alpha_j\theta^{j-1}.
\]
First suppose \(d\geq2\). For \(\theta\in[-1,1]\), \(\lvert\theta\rvert^{d-1}\leq1\), and for every \(1\leq j\leq d-1\),
\[
\lvert\alpha_j\rvert\leq R,
\qquad
\lvert\theta\rvert^{j-1}\leq1.
\]
The triangle inequality therefore yields the fully explicit chain
\[
\begin{aligned}
\bigl\lvert\partial_\theta s_0(\theta;\alpha_{1:d-1})\bigr\rvert
&\leq d\lvert\theta\rvert^{d-1}
  +\sum_{j=1}^{d-1}j\lvert\alpha_j\rvert
       \lvert\theta\rvert^{j-1}\\
&\leq d+R\sum_{j=1}^{d-1}j\\
&=d+\frac{Rd(d-1)}2\\
&=B_0(d,R).
\end{aligned}
\]
No term is dropped or absorbed. For \(d\geq2\) and distinct \(x,z\in[-1,1]\), the closed segment joining them is contained in \([-1,1]\). The mean-value theorem and the displayed derivative bound give
\[
\lvert s_0(x;\alpha_{1:d-1})-s_0(z;\alpha_{1:d-1})\rvert
\leq B_0(d,R)\lvert x-z\rvert.
\]
The same inequality is immediate when \(x=z\). Thus the map is \(B_0(d,R)\)-Lipschitz on the whole closed chart, including \(\theta=-1\) and \(\theta=1\).

When \(d=1\), the coefficient tuple is the unique empty tuple, every displayed sum is empty and equals zero, and
\[
s_0(\theta)=-\theta,
\qquad
s_0'(\theta)=-1,
\qquad
B_0(1,R)=1.
\]
Therefore, for all \(x,z\in[-1,1]\),
\[
\lvert s_0(x)-s_0(z)\rvert=\lvert x-z\rvert
=B_0(1,R)\lvert x-z\rvert.
\]
Hence both the derivative formula and the Lipschitz conclusion remain exact in the degree-one boundary case, without invoking a \(0^0\) convention. This also verifies that the finite-sum identity is being used with the correct empty-sum value.

At the radius boundary \(R=1\), cube support gives \(\lvert\alpha_j\rvert\leq1\) and the same displayed calculation gives exactly
\(B_0(d,1)=d+d(d-1)/2\). Thus no strict inequality in \(R\), limiting argument, or additional slack is used.

### unit_002: lemma

**Lemma (Inner interval image length).** \(\label{lem:step-001-unit-002}\)

Statement:
Under Assumptions~\ref{assump:indexed-regime} and \ref{assump:compact-cube-support} and Lemma~\ref{lem:step-001-unit-001}, if \(d\geq1\), \(R\geq1\), \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), and \(J\subseteq[-1,1]\) is an interval with any endpoint convention, then
\[
s_0(J;\alpha_{1:d-1})
:=\{s_0(\theta;\alpha_{1:d-1}):\theta\in J\}
\]
is an interval (or is empty) and
\[
\lambda\bigl(s_0(J;\alpha_{1:d-1})\bigr)
\leq B_0(d,R)\lvert J\rvert.
\]
This conclusion includes empty and singleton \(J\), arbitrary endpoint inclusion, and intervals containing either or both of \(\theta=\pm1\).

Proof / justification:
If \(J=\varnothing\), then \(s_0(J;\alpha_{1:d-1})=\varnothing\), so both sides of the asserted inequality are zero. If \(J=\{\theta_0\}\), then its image is the singleton \(\{s_0(\theta_0;\alpha_{1:d-1})\}\), and again both Lebesgue lengths are zero.

Now suppose that \(J\) contains at least two points. It is connected because it is an interval, independently of whether either endpoint is included. The map \(s_0(\cdot;\alpha_{1:d-1})\) is continuous because it is a polynomial. Its image is therefore connected and hence is an interval in \(\mathbb R\). It is bounded because Lemma~\ref{lem:step-001-unit-001} makes the map Lipschitz on the bounded set \([-1,1]\).

For arbitrary \(u,v\in s_0(J;\alpha_{1:d-1})\), choose \(x,z\in J\) with
\(u=s_0(x;\alpha_{1:d-1})\) and
\(v=s_0(z;\alpha_{1:d-1})\). Lemma~\ref{lem:step-001-unit-001} gives
\[
\lvert u-v\rvert
\leq B_0(d,R)\lvert x-z\rvert
\leq B_0(d,R)\operatorname{diam}(J).
\]
Taking the supremum over \(u,v\) proves
\[
\operatorname{diam}\bigl(s_0(J;\alpha_{1:d-1})\bigr)
\leq B_0(d,R)\operatorname{diam}(J).
\]
Both sets in this comparison are bounded intervals. Their Lebesgue lengths equal their diameters regardless of open, closed, or half-open endpoint conventions. Consequently,
\[
\begin{aligned}
\lambda\bigl(s_0(J;\alpha_{1:d-1})\bigr)
&=\operatorname{diam}\bigl(s_0(J;\alpha_{1:d-1})\bigr)\\
&\leq B_0(d,R)\operatorname{diam}(J)\\
&=B_0(d,R)\lvert J\rvert.
\end{aligned}
\]
This argument includes endpoint values \(\theta=\pm1\) when present and needs no endpoint closure, monotonicity, injectivity, transversality, or simple-root condition. At \(d=1\), the image is exactly \(-J\), so
\(\lambda(s_0(J))=\lvert J\rvert=B_0(1,R)\lvert J\rvert\); the boundary specialization is exact.

## Target-Step Assembly

Fix arbitrary \(d\geq1\), \(R\geq1\), a support-compatible tuple \(\alpha_{1:d-1}\), and an arbitrary-endpoint interval \(J\subseteq[-1,1]\), exactly as quantified in the sketch row. Lemma~\ref{lem:step-001-unit-001} proves, for every \(\theta\in[-1,1]\),
\[
\bigl\lvert s_0'(\theta;\alpha_{1:d-1})\bigr\rvert
\leq d+\frac{Rd(d-1)}2
=B_0(d,R).
\]
Lemma~\ref{lem:step-001-unit-002} then proves for the same tuple and interval
\[
\lambda\bigl(s_0(J;\alpha_{1:d-1})\bigr)
\leq B_0(d,R)\lvert J\rvert.
\]
The two lemmas jointly discharge the derivative and image-length parts of the exact `step_001` claim. Their proofs explicitly include empty and singleton \(J\), arbitrary endpoint conventions, \(\theta=\pm1\), and \(d=1\). There are no dependency claims, cited paper conclusions, extra hypotheses, exceptional events, or altered constants in this assembly. The exported interface is exactly the inner deterministic image-length certificate consumed downstream, with the setting-defined constant \(B_0(d,R)\).

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), and \(\lvert J\rvert\); the certificate is uniform over every support-compatible \(\alpha_{1:d-1}\) and every interval \(J\subseteq[-1,1]\). The exact structural factor is \(B_0(d,R)=d+Rd(d-1)/2\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d\), \(R\), \(J\), \(\alpha_{1:d-1}\), \(\mu\), \(\Theta\), \(\eta\), endpoint conventions, or any undisplayed quantity.
- Fixed quantities: The branch fixes \(\eta\) and \(\Theta\), but neither enters this deterministic step. No limiting operation is taken; each allowed \(d,R\) is handled pointwise.
- Probability mode: Deterministic and pointwise. No law, expectation, conditioning, confidence parameter, or exceptional event is used.
- Horizon mode: Static and uniform over all allowed inner intervals; there is no time horizon, recurrence, stopping rule, or limiting upgrade.
- Norm mode: Ordinary absolute value for the scalar derivative and Lebesgue length on \(\mathbb R\) for interval images and source intervals.
- Admissibility conditions and auxiliary tolerances: \(d\in\mathbb N\), \(d\geq1\), \(R\geq1\), \(\alpha_{1:d-1}\in[-R,R]^{d-1}\), and \(J\subseteq[-1,1]\) an interval. There are no auxiliary parameters or tolerances.
- Term absorption or simplification inequalities: No absorption is used. For \(d\geq2\), the complete quantitative derivation is
  \[
  \lvert s_0'(\theta)\rvert
  \leq d\lvert\theta\rvert^{d-1}
      +\sum_{j=1}^{d-1}j\lvert\alpha_j\rvert\lvert\theta\rvert^{j-1}
  \leq d+R\sum_{j=1}^{d-1}j
  =d+\frac{Rd(d-1)}2.
  \]
  For \(d=1\), the sum is empty and the exact identity \(\lvert s_0'(\theta)\rvert=1=B_0(1,R)\) supplies the same conclusion without a power-bound convention at \(\theta=0\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the exact, unsimplified inner factor \(B_0(d,R)\). It performs no public polynomial specialization and loses no \(d\)- or \(R\)-dependence.
- Baseline-reduction check, if applicable: The relevant boundary specialization is \(d=1\). Then the nonpivot tuple and sum are empty, \(s_0=-\theta\), \(B_0(1,R)=1\), and \(\lambda(s_0(J))=\lvert J\rvert\). Thus the same target conclusion holds exactly, with no remainder or conservative loss.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(s_0(\theta;\alpha_{1:d-1})\) and \(B_0(d,R)\) are copied directly from `setting.md`; neither is newly assumed or redefined.
- Public-facing image notation: \(s_0(J;\alpha_{1:d-1})\) denotes the direct image of \(J\) under the setting-defined sweep. It is the minimal exported interface needed by downstream disintegration and is defined explicitly in Lemma~\ref{lem:step-001-unit-002}.
- Proof-local notation: \(\operatorname{diam}(A)=\sup\{\lvert u-v\rvert:u,v\in A\}\) is used only inside the image-length proof. It introduces no constant or theorem-facing condition. Bound variables \(x,z,u,v\) are proof-local.
- Empty-tuple convention: for \(d=1\), \(\alpha_{1:d-1}\) is the unique element of \([-R,R]^0\), and the setting's empty-sum convention gives \(s_0(\theta)=-\theta\). No coefficient is invented in this case.
- Helper-object surface: there are no appendix-local helper objects. The only exported objects are the already setting-defined \(B_0\) and the direct image set in the exact target certificate; all diameter bookkeeping is proof-local.
- Constant provenance: the only quantitative constant is \(B_0(d,R)=d+Rd(d-1)/2\), directly defined in `setting.md` and re-derived exactly in Lemma~\ref{lem:step-001-unit-001}. No free constant, radius, threshold, margin, finite-tube quantity, or hidden bounded quantity is introduced.
- Assumption provenance: \(d\geq1\) and \(R\geq1\) are primitive under `assump:indexed-regime`; monicity and \(\lvert\alpha_j\rvert\leq R\) for support-compatible tuples are primitive under `assump:compact-cube-support`. No generated object, event, local-validity condition, stability fact, boundedness invariant, recurrence, or closure condition is assumed.
- Scope and accumulation: the argument is a one-shot deterministic calculation. No defect, forcing term, or error is accumulated, and no closure or entry-state gate is implicated.
- Global diagnostic boundary: `global_proof.md` was read only after its paired `global_proof_review.md` was verified `ACCEPTED`, with the reviewed hashes matching the current setting, sketch, sketch review, and diagnostic. Its step-relevant planning idea was the direct derivative-to-Lipschitz-to-connected-image route. That diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the target claim, dependencies, constants, or output.

## Artifact Validation

- Target fidelity: The assembly proves both and only the two conclusions in the accepted `step_001` row, with the exact constant \(B_0(d,R)\).
- Allowed-input check: Every nontrivial line uses only `assump:indexed-regime`, `assump:compact-cube-support`, the setting definitions, the three fully restated elementary one-dimensional facts, or an earlier named local lemma.
- Dependency check: The target has no dependencies, and no dependency artifact or downstream conclusion is used.
- Local-unit coverage: Both independent nontrivial subclaims appear in the Local Lemma Map and have matching derivation subsections, self-contained statements, and stable paper-ready labels.
- Citation check: No external paper theorem is consumed. Every standard theorem used is restated in current notation with its hypotheses discharged.
- Boundary check: Empty \(J\), singleton \(J\), all endpoint conventions, \(\theta=\pm1\), support-boundary coefficients, \(R=1\), and \(d=1\) are explicitly handled. No monotonicity, injectivity, transversality, or root multiplicity assumption is hidden.
- Rate check: The exposed variables, absent hidden constants, deterministic probability mode, static horizon mode, absolute-value/Lebesgue-length norms, exact finite-sum identity, and degree-one reduction are recorded. No term is dropped or absorbed.
- Assumption-provenance check: All theorem-facing conditions are primitive; no derived invariant is promoted to an assumption.
- Assembly closure: Lemmas~\ref{lem:step-001-unit-001} and \ref{lem:step-001-unit-002} imply the exact target under the allowed assumptions, so `Step Proof Status = COMPLETE` and `Blockers = None` are consistent.
- Artifact-scope check: This producer writes only `perspective_2/idea_1/proof_steps/step_001/proof.md` and does not modify any setting, sketch, diagnostic, review, tracker, log, dependency, downstream, assembly, or accepted-result artifact.
