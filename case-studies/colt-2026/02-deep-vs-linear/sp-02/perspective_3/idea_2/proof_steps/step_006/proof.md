# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Apply the definition of dimension complexity and the
  primitive catalog budget to prove
  \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\), retaining the exact
  formula for \(m=0\), all finite \(\tau>0\), \(L=1\), and \(B=1\).
- Depends on: `step_005`.
- Assumptions used: Primitive `assump:source-parameter-regime`,
  `assump:polynomial-catalog-budget`; derived exact representation from
  `step_005`.
- Technical challenge: Preserve every exposed parameter and boundary regime;
  do not silently replace the conditional polynomial bound by a catalog-free
  or no-base linear rate.
- Intended proof tool or cited result: Definition unfolding and transitivity
  of exact inequalities.
- Output target: Final conditional theorem and quantitative corollary.
- Rate objective: Polynomial dimension target: no hidden constants, auxiliary
  choice, absorption, or probability conversion; append the primitive bound
  verbatim.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- Basic-setting definition of deterministic dimension complexity:
  \[
  \operatorname{dc}(H):=
  \inf\Bigl\{d\in\mathbb N_0:\ \exists\phi:X\to\mathbb R^d,
  \ \forall h\in H\ \exists w_h\in\mathbb R^d\ \forall x\in X,
  \ h(x)\langle w_h,\phi(x)\rangle>0\Bigr\},
  \tag{1}
  \]
  with \(\inf\varnothing=+\infty\). This is the exact pointwise,
  deterministic, common-map definition; it is not an average or
  distribution-dependent notion.
- `assump:source-parameter-regime`: \(m\in\mathbb N_0\) and every finite
  \(\tau>0\) are allowed. In particular, \(m=0\) is not excluded and no
  restriction \(\tau\le1\) is available or needed.
- `assump:polynomial-catalog-budget`: the finite catalog cardinality satisfies
  the primitive, pre-run condition
  \[
  1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k,
  \tag{2}
  \]
  where \(B\ge1\) and the integer \(k\ge1\) are fixed family constants.
  They may depend only on the designated learner family and are independent
  of \(X,H,m,\tau,\varepsilon,D,h\), the reply policy and replies, and the
  learner coins. There are no hidden constants or suppressed parameter
  dependencies in (2).

Accepted dependency artifacts:

- `proof_steps/step_005/proof.md`, SHA-256
  `810ea20a2ac1dbbb2c00b43fec8fcfa22f8597aaa21ad16ebbc0d09e2407cf47`.
- `proof_steps/step_005/review.md`, SHA-256
  `26efe402412382ff36d3e0decbfe690aed170e8377f8e18b9e21c5fd56abf9c9`,
  with controlled status `ACCEPTED` for sketch attempt 1, step `step_005`,
  unit attempt 1, and the proof hash above.

Derived conclusion supplied by the accepted dependency:

- Proposition~\ref{prop:step-005-exact-representation}: the single
  deterministic catalog map \(\phi_G:X\to\mathbb R^L\) satisfies
  \[
  \forall h\in H\ \exists w_h\in\Delta_L\ \forall x\in X,
  \qquad
  h(x)\langle w_h,\phi_G(x)\rangle
  \ge \rho=1-2\varepsilon>\frac12>0.
  \tag{3}
  \]
  In particular, the same map gives strict pointwise signs in exactly
  \(L\) coordinates. The map is fixed independently of \(D,h\), every
  valid policy, replies, transcripts, and learner coins. Only the targetwise
  weight may depend on \(h\), the fixed catalog, and \(\varepsilon\).

Derived invariants supplied by accepted dependencies:

- None. Equation (3) is a completed representation certificate rather than a
  trajectory, event, recurrence, stability, or membership invariant.

Local conditional hypotheses:

- None.

Assumption-provenance classification:

- The parameter regime and catalog-size inequality (2) are primitive,
  checkable conditions.
- The strict common-map representation (3) is the accepted derived output of
  `step_005`; it is not treated as primitive.
- The dimension inequality is proved below by applying definition (1) to that
  accepted output. No generated condition is assumed theorem-facing.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:source-parameter-regime} and \ref{assump:polynomial-catalog-budget}, the basic-setting definition (1), and Proposition~\ref{prop:step-005-exact-representation}, the exact deterministic bound \(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\) holds. It specializes to \(\operatorname{dc}(H)\le L\le B\) at \(m=0\), remains valid for every finite \(\tau>0\), and retains its literal meanings for \(L=1\), \(B=1\), and \(X=\varnothing\). | Unfolds the dimension definition at the accepted \(L\)-coordinate witness, appends the primitive catalog budget without alteration, and closes all requested boundary cases. |

The two operations inside `unit_001` are direct definition unfolding and
transitivity. They require no additional independent lemma, approximation,
limit, probability conversion, or parameter-selection subclaim.

## Cited Result Applications

No external paper result or unproved standard theorem is used.

Accepted dependency result application:

- **Proposition~\ref{prop:step-005-exact-representation} (Exact common-map
  catalog representation).** Source: the accepted `step_005` proof/review
  pair with the hashes listed above. Restated in current notation, it supplies
  the one map \(\phi_G:X\to\mathbb R^L\) and, for every \(h\in H\), one
  vector \(w_h\in\Delta_L\subseteq\mathbb R^L\) for which (3) holds at
  every \(x\in X\). Its required assumptions are discharged by the accepted
  dependency review. Its conclusion has the exact strict-product shape in
  (1), with \(d=L\), and this is the only dependency conclusion used here.

Setting-definition application:

- **Definition (Deterministic dimension complexity).** Equation (1) says that
  any integer \(d\in\mathbb N_0\) admitting one map
  \(\phi:X\to\mathbb R^d\) and targetwise vectors with strict pointwise
  products is an admissible element of the set whose infimum is
  \(\operatorname{dc}(H)\). The accepted dependency supplies exactly these
  objects with \(d=L\); no theorem or extra assumption is needed to infer
  that the infimum is at most this admissible value.

Local result application:

- **Proposition~\ref{prop:step-006-dimension-chain} (Boundary-corrected
  catalog dimension bound).** It combines the preceding definition
  application with the literal primitive inequality (2). The target-step
  assembly uses its full conclusion, including its deterministic,
  fixed-horizon, exact-sign, and boundary meanings.

## Local Derivation

### unit_001: proposition

**Proposition (Boundary-corrected catalog dimension bound).**
\(\label{prop:step-006-dimension-chain}\)

Statement: Under Assumptions~\ref{assump:source-parameter-regime} and
\ref{assump:polynomial-catalog-budget}, the basic-setting definition (1), and
the accepted Proposition~\ref{prop:step-005-exact-representation},
\[
\operatorname{dc}(H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\tag{4}
\]
This conclusion is deterministic, fixed-horizon, and measured in the exact
strict pointwise sign representation of (1). It holds without alteration at
\(m=0\), for every finite \(\tau>0\), at \(L=1\), at \(B=1\), and on the
empty domain. It is conditional on the primitive catalog budget and makes no
catalog-free or boundary-unadjusted \(Cm/\tau^2\) assertion.

Proof / justification:

The accepted Proposition~\ref{prop:step-005-exact-representation} supplies a
single deterministic map
\[
\phi_G:X\longrightarrow\mathbb R^L
\]
and, for each \(h\in H\), a vector
\(w_h\in\Delta_L\subseteq\mathbb R^L\) such that, simultaneously for every
\(x\in X\),
\[
h(x)\langle w_h,\phi_G(x)\rangle
\ge\rho>\frac12>0.
\tag{5}
\]
Thus the product required in (1) is strictly positive. The catalog cardinality
\(L\) is a finite positive integer, so \(d=L\) is an element of
\(\mathbb N_0\). Consequently the pair consisting of \(\phi_G\) and the
targetwise vectors \(w_h\) makes \(d=L\) an admissible element of the set in
(1). That set is therefore nonempty and, directly from the definition of an
infimum,
\[
\operatorname{dc}(H)\le L.
\tag{6}
\]
This inference uses the exact quantifier order
\(\exists\phi_G\,\forall h\,\exists w_h\,\forall x\) already supplied by
the dependency; it does not replace the common map by a distributionwise,
policywise, or pointwise-selected map.

Assumption~\ref{assump:polynomial-catalog-budget} states, without any
simplification,
\[
1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k.
\tag{7}
\]
Here \(B\ge1\) and the integer \(k\ge1\) are fixed family constants. They
may depend only on the designated learner family and are independent of
\(X,H,m,\tau,\varepsilon,D,h\), the reply policy and replies, and the learner
coins. There are no hidden constants or suppressed parameter dependencies in
(7). Appending the upper inequality in (7) verbatim to (6), and using only
transitivity, gives (4).

The requested boundary regimes are literal specializations of the same two
inequalities:

- If \(m=0\), then for every finite \(\tau>0\),
  \[
  B\left(1+\frac{0}{\tau^2}\right)^k=B,
  \qquad
  \operatorname{dc}(H)\le L\le B.
  \tag{8}
  \]
  The bound does not collapse to zero.
- For every finite \(\tau>0\), the denominator \(\tau^2\) is positive and
  (4) is defined exactly as written. Since \(m\ge0\), its base satisfies
  \(1+m/\tau^2\ge1\). No small-tolerance assumption, large-tolerance limit,
  or deletion of the leading \(1\) is used.
- If \(L=1\), (5) is the accepted strict one-coordinate representation and
  definition (1) gives \(\operatorname{dc}(H)\le1\); equation (7) remains
  the literal inequality
  \(1\le B(1+m/\tau^2)^k\).
- If \(B=1\), (4) becomes
  \[
  \operatorname{dc}(H)\le L
  \le\left(1+\frac{m}{\tau^2}\right)^k.
  \tag{9}
  \]
  In the joint case \(B=1\) and \(m=0\), (7) and \(L\ge1\) force
  \(L=1\), consistently with the preceding case.
- If \(X=\varnothing\), the unique map
  \(X\to\mathbb R^0\), together with the unique vector in \(\mathbb R^0\)
  for each \(h\in H\), satisfies the pointwise condition in (1) vacuously.
  Hence \(\operatorname{dc}(H)=0\), and (4) reads
  \(0\le L\le B(1+m/\tau^2)^k\). No distribution on the empty domain is
  constructed.

Only (6) follows from the accepted strict representation alone. The second
inequality in (4) uses the primitive finite-catalog budget (7); this proof
does not derive such a budget for an arbitrary unrestricted response tree.
Likewise, it never replaces (7) by \(Cm/\tau^2\), which would be incompatible
with (8). Every displayed statement is deterministic, concerns the given
fixed finite horizon \(T\le m\), and uses the exact dimension notion and
strict pointwise sign metric in (1). \(\square\)

## Target-Step Assembly

The accepted Proposition~\ref{prop:step-005-exact-representation} supplies
one strict \(L\)-coordinate common-map witness in the exact format of the
dimension definition. Proposition~\ref{prop:step-006-dimension-chain} applies
that definition to obtain \(\operatorname{dc}(H)\le L\), then appends the
primitive catalog budget
\[
L\le B\left(1+\frac{m}{\tau^2}\right)^k
\]
without changing any parameter, constant, or mode. The same proposition
checks \(m=0\), every finite \(\tau>0\), \(L=1\), \(B=1\), and empty
\(X\), and records why neither a catalog-free conclusion nor a no-base
\(Cm/\tau^2\) rate follows. Therefore the named dependency and local
proposition prove exactly the accepted `step_006` claim.

## Explicit Rate Audit

- Exposed variables: \(\operatorname{dc}(H),L,B,k,m,\tau\). The accepted
  representation continues to expose
  \(\varepsilon\) through \(\rho=1-2\varepsilon>1/2\), but no
  \(\varepsilon\)-dependence is suppressed in the dimension chain: once
  strict signs are established, (1) records only the coordinate count.
- Hidden constants may depend on: None. The factor \(B\) and exponent \(k\)
  are displayed primitive family constants, not hidden constants.
- Hidden constants may not depend on: \(X,H,D,h\), a reply policy, replies,
  transcripts, learner coins, \(m,\tau,\varepsilon,L,B\), or \(k\).
- Fixed quantities: For each theorem instance, the learner specification,
  its primitive catalog, and \(X,H\) are fixed. Across the designated learner
  family, \(B,k\) are fixed while \(m,\tau\), and \(L\) remain explicitly
  visible. No asymptotic limit is taken.
- Probability mode: Deterministic. There is no event, confidence parameter,
  expectation, high-probability statement, conditioning, or union bound in
  this step. Learner randomness has already been eliminated in the accepted
  representation certificate.
- Horizon mode: Fixed finite horizon \(T\le m\), including \(m=0\). The
  step makes no horizon-uniform, all-time, stopping-time, or asymptotic
  upgrade.
- Norm mode: Exact deterministic dimension complexity from (1), witnessed by
  a Euclidean map into \(\mathbb R^L\) and strict pointwise signed inner
  products. No average loss, risk, norm surrogate, or probabilistic embedding
  metric replaces this notion.
- Admissibility conditions and auxiliary tolerances:
  \(m\in\mathbb N_0\), every finite \(\tau>0\), \(B\ge1\), integer
  \(k\ge1\), finite integer \(L\ge1\), and the accepted strict
  representation under \(0\le\varepsilon<1/4\). There is no proof-local
  tolerance or auxiliary parameter; \(\tau\) is the exposed primitive SQ
  tolerance.
- Term absorption or simplification inequalities: None. The complete
  quantitative derivation is
  \[
  \operatorname{dc}(H)\le L,
  \qquad
  1\le L\le B\left(1+\frac{m}{\tau^2}\right)^k,
  \]
  followed by transitivity. No term is dropped, dominated, rounded, or
  absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This is the final
  conditional quantitative closure. It copies the primitive technical and
  public rate unchanged, so there is no auxiliary choice, technical-to-public
  simplification, or separate probability bridge.
- Baseline mode: Exact boundary specialization, not a limiting or approximate
  surrogate.
- Baseline-reduction check: At \(m=0\), (4) is exactly
  \(\operatorname{dc}(H)\le L\le B\); for every finite \(\tau>0\), the
  leading base remains; at \(L=1\), the accepted one-coordinate witness gives
  \(\operatorname{dc}(H)\le1\); at \(B=1\), (9) holds with no hidden
  multiplier; and for empty \(X\), \(\operatorname{dc}(H)=0\). The
  dependency's exact-margin-one baseline at \(\varepsilon=0\) is unchanged,
  because this step only counts its coordinates. No baseline conclusion is
  weakened.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The setting-defined dimension
  \(\operatorname{dc}(H)\), catalog size \(L\), parameters \(B,k,m,\tau\),
  and the exact chain (4) are public-facing. The accepted map \(\phi_G\) and
  weights \(w_h\) are used only to certify the first inequality and are not
  enlarged by a new public helper dictionary.
- **Appendix-local objects.** None.
- **Proof-local objects.** None. In particular, no one-off rate constant,
  admissibility radius, event, or shorthand is introduced.
- **Constant and parameter provenance.** \(B\ge1\), integer \(k\ge1\),
  \(m\in\mathbb N_0\), finite \(\tau>0\), and finite integer \(L\ge1\)
  are original setting quantities. The leading \(1\) and the full expression
  \(B(1+m/\tau^2)^k\) occur literally in the primitive budget. No constant
  \(C\), rounding factor, asymptotic notation, or suppressed dependence is
  introduced.
- **Assumption provenance.** The parameter regime and catalog budget are
  primitive. The strict common-map representation is supplied by the accepted
  dependency. Proposition~\ref{prop:step-006-dimension-chain} proves the only
  new derived output, the exact dimension chain, by definition unfolding and
  transitivity. There is no generated event, boundedness fact, recurrence,
  stability condition, or local conditional hypothesis.
- **Probability, horizon, and norm modes.** The result is deterministic,
  fixed-horizon for executions of depth at most \(m\), and uses the exact
  strict pointwise Euclidean sign representation in the definition of
  \(\operatorname{dc}(H)\). No mode conversion occurs.
- **Boundary audit.** Equations (8)-(9) handle \(m=0\) and \(B=1\);
  positivity of every finite \(\tau\) keeps the exact denominator valid; the
  dependency supplies the one-coordinate case \(L=1\); and the empty-domain
  definition gives \(\operatorname{dc}(H)=0\) vacuously. These are direct
  specializations, not limiting arguments.
- **Conditional-scope audit.** The accepted representation gives
  \(\operatorname{dc}(H)\le L\). The advertised polynomial upper bound on
  \(L\) is used only because
  Assumption~\ref{assump:polynomial-catalog-budget} states it. No conclusion
  is claimed for an unrestricted response tree lacking such a catalog and
  budget, and the boundary-correct expression is not replaced by
  \(Cm/\tau^2\).
- **Diagnostic boundary.** `global_proof.md` and
  `global_proof_review.md` were not read or used. No diagnostic statement is
  evidence, a cited result, an assumption source, or authority for this target
  claim.
