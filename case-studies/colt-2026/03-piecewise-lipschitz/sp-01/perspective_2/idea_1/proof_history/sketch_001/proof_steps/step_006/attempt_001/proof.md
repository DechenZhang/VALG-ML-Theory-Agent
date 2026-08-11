# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1

## Target Step Claim

- Intended claim: Divide by \(\lvert I\rvert\), take the interval and law
  suprema with the empty-class convention, and prove for every \(d\geq1,R\geq1\)
  that \(M_\eta(d,R)\leq\bar\kappa_*d+(\bar\kappa_*/2)Rd^2\), with fixed
  \(\eta\), no hidden constants, and no threshold imported from nonemptiness.
- Depends on: step_005.
- Assumptions used: assump:indexed-regime.
- Technical challenge: Preserve every exposed parameter, handle the empty class,
  and prove rather than narrate each simplification.
- Intended proof tool or cited result: Direct supremum monotonicity and the exact
  inequalities \(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and
  \(d(d-1)\leq d^2\).
- Output target: Public class-uniform degree-three polynomial bound.
- Rate objective: Root-hitting structural-rate objective and its full Rate
  Specialization Bridge: no auxiliary choice, no probability conversion, exact
  termwise domination.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:indexed-regime`: \(d\in\mathbb N\) with \(d\geq1\), \(R\geq1\),
    and the finite pair \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\)
    is fixed independently of \(d,R\).
  - The quantified objects \(\mu\in\mathcal D_{d,R,\eta}\) and
    \(I\in\mathcal I(\Theta)\) are target objects carried by the accepted
    dependency, not additional assumptions introduced by this step. In
    particular, \(I\in\mathcal I(\Theta)\) means \(\lvert I\rvert>0\).
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-005-exact-maximum} from the accepted step_005
    proof: for every admitted \(d,R\), \(\mu\in\mathcal D_{d,R,\eta}\), and
    \(I\in\mathcal I(\Theta)\),
    \[
      \mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert.
    \]
    This is the exact per-law, per-interval interface; it does not include a
    class supremum or the polynomial specialization.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `perspective_2/idea_1/proof_steps/step_005/proof.md`, SHA-256
    `118738d2a5b881f45bddc5991bf94bfed33bdfad31cc7f84c1c66fda32f0075b`,
    sketch attempt 1, step_005, unit attempt 1, with `Step Proof Status =
    COMPLETE`.
  - `perspective_2/idea_1/proof_steps/step_005/review.md`, SHA-256
    `4b082c18fc1110faa99a6d990daa439df4806b6c42cd187463870c1de59735d4`,
    paired with the proof above, with `Step-Review Status = ACCEPTED` and
    reviewed proof hash `118738d2a5b881f45bddc5991bf94bfed33bdfad31cc7f84c1c66fda32f0075b`.

The accepted dependency is consumed only through its exact scalar
per-law/per-interval bound. No statement from a global diagnostic, the
nonemptiness witness, or a prior branch is an assumption or proof authority.

## Local Lemma Map

Atomic step = no. The class-supremum closure and the fixed-\(\eta\) polynomial
comparison are independent nontrivial claims. The two chart-coefficient
comparisons are exposed separately so that every dominated term and its source
inequality is auditable.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | ---------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:indexed-regime} and accepted Proposition~\ref{prop:step-005-exact-maximum}, the exact class constant satisfies \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\), including the declared value-zero convention when either supremum index set is empty. | Performs positive-length division and both deterministic suprema. |
| `unit_002` | lemma | Under Assumption~\ref{assump:indexed-regime}, \(\bar\kappa_0B_0(d,R)\leq P_\eta(d,R)\) for every \(d\geq1,R\geq1\). | Controls the inner chart coefficient term by term. |
| `unit_003` | lemma | Under Assumption~\ref{assump:indexed-regime}, \(\bar\kappa_\infty B_\infty(d,R)\leq P_\eta(d,R)\) for every \(d\geq1,R\geq1\). | Controls the outer chart coefficient term by term. |
| `unit_004` | proposition | Under Assumption~\ref{assump:indexed-regime} and Lemmas~\ref{lem:step-006-inner-polynomial-domination}--\ref{lem:step-006-outer-polynomial-domination}, \(M_\eta(d,R)\leq P_\eta(d,R)\) for every \(d\geq1,R\geq1\). | Takes the exact maximum and exports the public polynomial interface. |

## Cited Result Applications

1. **Proposition~\ref{prop:step-005-exact-maximum} (accepted per-law
   maximum interface).** In the current branch notation, under the setting
   degree/radius regime, for every \(\mu\in\mathcal D_{d,R,\eta}\) and every
   positive-length \(I\in\mathcal I(\Theta)\),
   \[
     \mu(H_{d,I})\leq
     \max\{\bar\kappa_0B_0(d,R),
             \bar\kappa_\infty B_\infty(d,R)\}\lvert I\rvert
     =M_\eta(d,R)\lvert I\rvert.
   \]
   The proof artifact is the current
   `perspective_2/idea_1/proof_steps/step_005/proof.md` listed above. Its
   paired review is current and `ACCEPTED`; the review's recorded proof hash
   equals the proof hash. The object mapping is identity: the same \(d,R,\mu,I\),
   root event, interval length, and setting-defined \(M_\eta\) are consumed.
   The dependency's own use of `assump:compact-parameter-domain` and
   `assump:indexed-regime`, together with its quantified law and interval
   objects, is discharged by that accepted proof under the current setting;
   this step consumes only the resulting interface and does not silently add a
   new condition.
   The dependency has already discharged the chart partition, endpoint
   conventions, event measurability, and three chart probability controls.
   This step does not re-prove or strengthen that interface.

2. **Supremum monotonicity and the setting's empty-index convention.** If a
   real-valued family \(a_x\) satisfies \(a_x\leq m\) for every element of a
   nonempty index set, then \(\sup_x a_x\leq m\); applying this twice gives
   \(\sup_\mu\sup_I a_{\mu,I}\leq m\). Here the family is
   \(a_{\mu,I}=\mu(H_{d,I})/\lvert I\rvert\), whose denominator is positive
   by \(I\in\mathcal I(\Theta)\). If either index set in the definition of
   \(C_{\mathcal D_{d,R,\eta}}\) is empty, the setting explicitly defines
   that constant to be zero. This elementary order fact is applied in
   Proposition~\ref{prop:step-006-class-supremum} with all its conditions
   checked there.

3. **Maximum monotonicity.** For real numbers \(u,v,w\), if \(u\leq w\) and
   \(v\leq w\), then \(\max\{u,v\}\leq w\). This is used only after the two
   termwise inequalities proved as Lemmas~\ref{lem:step-006-inner-polynomial-domination}
   and \ref{lem:step-006-outer-polynomial-domination}; no external theorem or
   paper result is invoked.

4. **Proposition~\ref{prop:step-006-class-supremum} (Class-supremum closure
   with empty-index convention).** Under
   Assumption~\ref{assump:indexed-regime} and accepted
   Proposition~\ref{prop:step-005-exact-maximum}, it states
   \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\) for every allowed \(d,R\),
   including the value-zero case when either supremum index set is empty. It
   is proved below from item 1, item 2, and the nonnegativity of \(M_\eta\),
   and is used in the target-step assembly.

5. **Lemma~\ref{lem:step-006-inner-polynomial-domination} (Inner-chart
   coefficient domination).** Under Assumption~\ref{assump:indexed-regime},
   it states \(\bar\kappa_0B_0(d,R)\leq P_\eta(d,R)\) for every allowed
   \(d,R\). It is proved below by displayed termwise inequalities and is used
   in Proposition~\ref{prop:step-006-polynomial-specialization} and the
   target-step assembly.

6. **Lemma~\ref{lem:step-006-outer-polynomial-domination} (Outer-chart
   coefficient domination).** Under Assumption~\ref{assump:indexed-regime},
   it states \(\bar\kappa_\infty B_\infty(d,R)\leq P_\eta(d,R)\) for every
   allowed \(d,R\). It is proved below using both \(1\leq d\) and
   \(d(d-1)\leq d^2\), and is used in
   Proposition~\ref{prop:step-006-polynomial-specialization} and the
   target-step assembly.

7. **Proposition~\ref{prop:step-006-polynomial-specialization} (Fixed-\(\eta\)
   polynomial specialization).** Under Assumption~\ref{assump:indexed-regime}
   and the two preceding lemmas, it states
   \(M_\eta(d,R)\leq P_\eta(d,R)\) for every allowed \(d,R\). It is proved
   below using item 3 and is used in the target-step assembly.

## Local Derivation

### unit_001: proposition

**Proposition (Class-supremum closure with empty-index convention).**
\label{prop:step-006-class-supremum}

**Statement.** Under Assumption~\ref{assump:indexed-regime} and accepted
Proposition~\ref{prop:step-005-exact-maximum}, for every \(d\geq1\) and
\(R\geq1\),
\[
  C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R),
\]
where the conclusion includes the setting convention that the left side is
zero if \(\mathcal D_{d,R,\eta}\) or \(\mathcal I(\Theta)\) is empty.

**Proof / justification.** First note from Assumption~\ref{assump:indexed-regime}
that \(\bar\kappa_0,\bar\kappa_\infty\geq0\), \(d\geq1\), and \(R\geq1\). Hence
\[
 B_0(d,R)=d+\frac{R d(d-1)}2\geq0,
 \qquad
 B_\infty(d,R)=1+\frac{R d(d-1)}2\geq0,
\]
so the setting-defined quantity
\(M_\eta(d,R)=\max\{\bar\kappa_0B_0(d,R),
\bar\kappa_\infty B_\infty(d,R)\}\) is nonnegative.

Suppose first that both \(\mathcal D_{d,R,\eta}\) and
\(\mathcal I(\Theta)\) are nonempty. For every \(\mu\) in the law class and
every \(I\) in the interval class, the accepted dependency gives
\[
  \frac{\mu(H_{d,I})}{\lvert I\rvert}
  \leq M_\eta(d,R),
\]
because \(\lvert I\rvert>0\). Taking the interval supremum while holding
\(\mu\) fixed preserves the inequality, and then taking the law supremum
preserves it again:
\[
 \sup_{\mu\in\mathcal D_{d,R,\eta}}
 \sup_{I\in\mathcal I(\Theta)}
 \frac{\mu(H_{d,I})}{\lvert I\rvert}
 \leq M_\eta(d,R).
\]
The left side is exactly \(C_{\mathcal D_{d,R,\eta}}\) by its setting
definition.

If either indexing set is empty, the setting definition assigns
\(C_{\mathcal D_{d,R,\eta}}=0\). The nonnegativity established above then
gives \(C_{\mathcal D_{d,R,\eta}}=0\leq M_\eta(d,R)\). Thus no nonemptiness
premise, finiteness assumption on the class constant, or witness threshold is
used.

### unit_002: lemma

**Lemma (Inner-chart coefficient domination by the fixed-\(\eta\) polynomial).**
\label{lem:step-006-inner-polynomial-domination}

**Statement.** Under Assumption~\ref{assump:indexed-regime}, for every
\(d\geq1\) and \(R\geq1\),
\[
  \bar\kappa_0B_0(d,R)\leq P_\eta(d,R).
\]

**Proof / justification.** The definition \(\bar\kappa_*=
\max\{\bar\kappa_0,\bar\kappa_\infty\}\) gives
\(0\leq\bar\kappa_0\leq\bar\kappa_*\). Since \(R\geq1\),
\(d\geq1\), and \(d(d-1)\geq0\), termwise multiplication and addition give
\[
\begin{aligned}
 \bar\kappa_0B_0(d,R)
 &=\bar\kappa_0d+
   \frac{\bar\kappa_0}{2}R d(d-1)\\
 &\leq\bar\kappa_*d+
   \frac{\bar\kappa_*}{2}R d(d-1)\\
 &\leq\bar\kappa_*d+
   \frac{\bar\kappa_*}{2}R d^2\\
 &=P_\eta(d,R).
\end{aligned}
\]
The second inequality is the explicit pointwise comparison
\(d(d-1)\leq d^2\). No term is discarded and no threshold depending on
\(d\) or \(R\) is introduced.

### unit_003: lemma

**Lemma (Outer-chart coefficient domination by the fixed-\(\eta\) polynomial).**
\label{lem:step-006-outer-polynomial-domination}

**Statement.** Under Assumption~\ref{assump:indexed-regime}, for every
\(d\geq1\) and \(R\geq1\),
\[
  \bar\kappa_\infty B_\infty(d,R)\leq P_\eta(d,R).
\]

**Proof / justification.** The definition of \(\bar\kappa_*\) gives
\(0\leq\bar\kappa_\infty\leq\bar\kappa_*\). Because \(d\geq1\),
\(\bar\kappa_*\leq\bar\kappa_*d\); because \(R\geq1\) and
\(d(d-1)\geq0\), the quadratic terms are ordered in the same direction.
Therefore
\[
\begin{aligned}
 \bar\kappa_\infty B_\infty(d,R)
 &=\bar\kappa_\infty+
   \frac{\bar\kappa_\infty}{2}R d(d-1)\\
 &\leq\bar\kappa_*+
   \frac{\bar\kappa_*}{2}R d(d-1)\\
 &\leq\bar\kappa_*d+
   \frac{\bar\kappa_*}{2}R d^2\\
 &=P_\eta(d,R).
\end{aligned}
\]
The first inequality uses the cap maximum termwise, the second uses both
\(1\leq d\) and \(d(d-1)\leq d^2\). All multipliers are nonnegative, so the
inequality direction is preserved, including the boundary case
\(\bar\kappa_*=0\).

### unit_004: proposition

**Proposition (Fixed-\(\eta\) polynomial specialization of the exact maximum).**
\label{prop:step-006-polynomial-specialization}

**Statement.** Under Assumption~\ref{assump:indexed-regime} and
Lemmas~\ref{lem:step-006-inner-polynomial-domination} and
\ref{lem:step-006-outer-polynomial-domination}, for every \(d\geq1\) and
\(R\geq1\),
\[
 M_\eta(d,R)
 =\max\{\bar\kappa_0B_0(d,R),
          \bar\kappa_\infty B_\infty(d,R)\}
 \leq P_\eta(d,R)
 =\bar\kappa_*d+\frac{\bar\kappa_*}{2}R d^2.
\]

**Proof / justification.** Lemmas~\ref{lem:step-006-inner-polynomial-domination}
and \ref{lem:step-006-outer-polynomial-domination} give two inequalities with
the same right-hand side \(P_\eta(d,R)\). Maximum monotonicity therefore gives
\[
 \max\{\bar\kappa_0B_0(d,R),
          \bar\kappa_\infty B_\infty(d,R)\}
 \leq\max\{P_\eta(d,R),P_\eta(d,R)\}
 =P_\eta(d,R).
\]
The left side is the setting-defined \(M_\eta(d,R)\), so the claimed
specialization follows. The comparison is pointwise for every allowed index;
it is not an asymptotic statement. For fixed \(\eta\), the displayed
\(P_\eta(d,R)\) has monomials \(d\) and \(Rd^2\), total degree at most three
in \((d,R)\), and explicit coefficients \(\bar\kappa_*\) and
\(\bar\kappa_*/2\) depending only on that fixed \(\eta\). If
\(\bar\kappa_*=0\), the formula degenerates to the zero polynomial while the
same inequality remains valid.

## Target-Step Assembly

Fix \(d\geq1\), \(R\geq1\), and the target-row fixed
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\). Whenever
\(\mu\in\mathcal D_{d,R,\eta}\) and \(I\in\mathcal I(\Theta)\) exist, the
accepted Proposition~\ref{prop:step-005-exact-maximum} gives the exact
per-law, per-interval inequality
\[
 \mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert.
\]
Proposition~\ref{prop:step-006-class-supremum} divides by the positive
interval length and takes the interval and law suprema, while also handling
the case in which either supremum index set is empty. Hence
\[
 C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R).
\]
Lemmas~\ref{lem:step-006-inner-polynomial-domination} and
\ref{lem:step-006-outer-polynomial-domination}, composed in
Proposition~\ref{prop:step-006-polynomial-specialization}, establish the
pointwise fixed-\(\eta\) comparison
\[
 M_\eta(d,R)\leq P_\eta(d,R)
 =\bar\kappa_*d+\frac{\bar\kappa_*}{2}R d^2.
\]
Therefore the exact target-row conclusion is
\[
 \boxed{
 C_{\mathcal D_{d,R,\eta}}
 \leq M_\eta(d,R)
 \leq P_\eta(d,R)
 =\bar\kappa_*d+\frac{\bar\kappa_*}{2}R d^2.}
\]
This composition uses no hypothesis from the separate witness clause. In
particular, \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) is neither assumed nor
needed here. The step exports only the class-supremum and polynomial controls;
the per-interval weighted estimate remains exactly the accepted step_005
interface.

## Explicit Rate Audit

- Exposed variables: \(d\), \(R\), \(\bar\kappa_0\),
  \(\bar\kappa_\infty\), and the fixed pair \(\eta\); the consumed
  per-interval interface also exposes \(\lvert I\rvert\) and the ratio
  \(\mu(H_{d,I})/\lvert I\rvert\). The public output exposes exactly
  \((d,R,\eta)\) through \(C_{\mathcal D_{d,R,\eta}}\), \(M_\eta\), and
  \(P_\eta\). The exact chart lengths \(\lvert I_0\rvert\),
  \(\lvert I_+\rvert\), and \(\lvert I_-\rvert\) remain exposed in the
  accepted step_005 weighted estimate; this specialization neither changes
  nor hides them.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\eta,\mu,I,\Theta\), conditioning
  values, conditional-density versions, endpoint conventions, or any
  undisplayed law parameter. The dependence on \(\eta\) is displayed through
  \(\bar\kappa_*\), rather than hidden.
- Fixed quantities: \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\) and the source
  domain \(\Theta\) are fixed before \(d,R\) vary. No coefficient in
  \(P_\eta\) hides dependence on \(d\) or \(R\).
- Probability mode: deterministic for each fixed law and interval through the
  accepted step_005 bound, followed by deterministic division and deterministic
  suprema. There is no confidence parameter, exceptional event, expectation-
  to-tail conversion, or other probability-mode upgrade.
- Horizon mode: static and uniform over every positive-length interval. There is
  no horizon, iteration, stopping time, limit, or all-time assertion.
- Norm mode: the consumed ratio uses one-dimensional Lebesgue interval length;
  the output is a probability bound. No new norm or metric is introduced.
- Admissibility conditions and auxiliary tolerances: `assump:indexed-regime`,
  the target quantifiers \(\mu\in\mathcal D_{d,R,\eta}\) and
  \(I\in\mathcal I(\Theta)\), and the accepted step_005 interface. There is
  no auxiliary tolerance and no \(1/2\) nonemptiness threshold.
- Term absorption or simplification inequalities: all comparisons are explicit:
  \(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and
  \(d(d-1)\leq d^2\), together with nonnegativity of \(R\), \(d\), and the
  cap parameters. They yield the displayed inner and outer inequalities and
  then maximum monotonicity. No term is silently dropped, absorbed, or hidden.
- Probability conversion: division by \(\lvert I\rvert>0\) is legal for every
  member of \(\mathcal I(\Theta)\); deterministic supremum monotonicity gives
  the class bound. If either index set is empty, the setting's value-zero
  convention is used directly. There is no probabilistic conversion.
- Contribution to any Rate Specialization Bridge: this step supplies the full
  bridge from the technical per-law coefficient \(M_\eta\) to the public
  class-level polynomial \(P_\eta\): no auxiliary choice is needed, the
  conditions \(d\geq1,R\geq1\) are checked, every term-absorption inequality
  is displayed, the probability mode is unchanged, and the final dependence is
  explicit.
- Baseline-reduction check: no inherited recovery or zero-defect theorem is part
  of this target. At \(d=1\), the setting gives \(B_0=B_\infty=1\), so the
  exact class interface remains \(C_{\mathcal D_{1,R,\eta}}\leq\bar\kappa_*\).
  The polynomial gives the conservative same-target bound
  \(\bar\kappa_*\leq\bar\kappa_*(1+R/2)=P_\eta(1,R)\); the exact \(M_\eta\)
  conclusion is preserved and is not replaced by this conservative expression.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined objects retained without redefinition: \(\mathcal D_{d,R,\eta}\),
  \(\mathcal I(\Theta)\), \(H_{d,I}\), \(B_0(d,R)\),
  \(B_\infty(d,R)\), \(M_\eta(d,R)\), \(\bar\kappa_*\), and
  \(P_\eta(d,R)\). The public-facing exported interface is the exact pair
  \(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\leq P_\eta(d,R)\).
- Accepted dependency object: Proposition~\ref{prop:step-005-exact-maximum}
  is an appendix-local derived control supplied by the accepted step_005
  proof/review pair. It is not promoted to a primitive assumption and no
  stronger per-law fact is inferred.
- Local helper surface: no new public constant, radius, threshold, margin,
  event, rate parameter, bounded quantity, recurrence, or invariant is
  introduced. The local propositions use only setting-defined symbols; their
  theorem labels are audit/public proof references, not helper variables. The
  generic metavariables \(a_x\), \(u\), \(v\), and \(w\) used to restate
  elementary order facts are proof-local and are not exported.
- Constant provenance: every coefficient and rate term is directly defined in
  `setting.md`; the inequalities in Lemmas~\ref{lem:step-006-inner-polynomial-domination}
  and \ref{lem:step-006-outer-polynomial-domination} prove the only comparison
  needed. There are no free or chosen constants.
- Assumption provenance: `assump:indexed-regime` is primitive. The per-law
  maximum is an accepted derived conclusion. Class-supremum closure and the
  polynomial comparison are proved in this step. No generated object,
  event, local-validity condition, stability fact, recurrence, boundedness,
  or invariant is assumed.
- Boundary and null regimes: the proof explicitly covers empty law classes,
  empty interval families, positive-length division, \(d=1\), \(R=1\), and
  \(\bar\kappa_*=0\). The separate witness threshold is not used. At \(d=1\),
  the exact \(M_\eta\) interface is retained before the conservative polynomial
  comparison.
- Mechanism-source and output flow: the claim is a static quantitative upper
  comparison. Its source is the accepted step_005 per-law control plus the
  primitive fixed-\(\eta\) regime and the displayed scalar inequalities. There
  is no opposing persistent or accumulated defect. The producer-consumer path
  is step_005 -> step_006 -> final class-uniform theorem, with the empty-index
  convention checked before the supremum export.
- Obligation locality: class-supremum closure and polynomial specialization are
  `step-local`; no sketch/interface or theorem-contract change is required.
- Global diagnostic boundary: the current global diagnostic was inspected only
  for preflight consistency together with its paired review, whose status is
  `ACCEPTED`. Its only step-relevant planning observation was to separate the
  supremum closure from the two termwise chart-coefficient comparisons; all
  three claims are independently proved above. No `global_proof.md` statement
  is used as proof evidence, a cited result, an assumption source, or authority
  to alter the accepted target, dependencies, or scope.

## Artifact Validation

- Input identity: `setting.md` SHA-256
  `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`;
  `proof_sketch.md` SHA-256
  `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`;
  accepted `proof_sketch_review.md` SHA-256
  `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`.
- Dependency identity: current `step_005/proof.md` SHA-256
  `118738d2a5b881f45bddc5991bf94bfed33bdfad31cc7f84c1c66fda32f0075b`;
  paired current review SHA-256
  `4b082c18fc1110faa99a6d990daa439df4806b6c42cd187463870c1de59735d4`;
  review status `ACCEPTED`, with matching reviewed-proof hash.
- Target fidelity: the artifact proves only the accepted step_006 row: class
  supremum closure, empty-index handling, and the displayed fixed-\(\eta\)
  polynomial specialization. It does not prove witness membership or alter the
  step_005 dependency.
- Self-check: all four non-atomic local units have theorem-style statements and
  matching derivations; every dominated term is displayed; all exposed rate
  categories and boundary cases are recorded; `Step Proof Status = COMPLETE`
  and `Blockers = None` are therefore consistent.
- Artifact scope: this producer writes only
  `perspective_2/idea_1/proof_steps/step_006/proof.md`; it does not modify any
  review, dependency, sketch, tracker, worker log, history, assembly, or
  accepted-result artifact.
