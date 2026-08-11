# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Use `step_003` on the witness distribution from `step_005`
  and
  \[
  2\varepsilon<\frac{1}{n+1}
  \]
  to rule out infeasibility; conclude an exact identity separator exists for
  every \(h\in\mathcal H\).
- Depends on: `step_003`, `step_004`, and `step_005`.
- Assumptions used: Primitive Assumption~\ref{assump:high-accuracy}; the
  derived approximate-separator, strict-system, and obstruction interfaces
  supplied by the accepted dependency artifacts.
- Technical challenge: Compare the same distribution, target, score class,
  and tie-resolved metric, and preserve the strictness of the numerical gap.
- Intended proof tool or cited result: Direct contradiction and the exact
  equivalence from `step_004`.
- Output target: Exact separators \(w_h\) for all targets.
- Rate objective: The specialization
  \(2\varepsilon<1/(n+1)\) turns the distribution-wise approximate error
  bound into exact pointwise separation.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:high-accuracy`: \(2\varepsilon<1/(n+1)\). This is the
    only primitive condition used directly in the numerical contradiction.
  - `assump:antipodal-oddness`: this is part of the accepted assumption basis
    of `step_003`, `step_004`, and `step_005`; no additional consequence of
    oddness is assumed in this step beyond their accepted conclusions.
  - `assump:universal-sgd-success`: this is part of the accepted assumption
    basis of `step_003`; this step consumes only the deterministic vector
    existence conclusion already proved there and does not invoke an SGD law
    or expectation directly.
  - The basic setting has \(n\ge1\), \(\varepsilon\ge0\),
    \(\mathcal X=\{-1,+1\}^n\), and the fixed tie-resolved loss
    \(\mathcal L_{\mathcal D,h}\).
- Derived invariants supplied by accepted dependencies:
  - Accepted `step_003` proof and review:
    `perspective_3/idea_2/proof_steps/step_003/proof.md` and `review.md`.
    Their exact available conclusion is
    \[
    \forall \mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H
    \ \exists v\in\mathbb R^n,
    \qquad
    \mathcal L_{\mathcal D,h}
       (x\mapsto\langle v,x\rangle)\le2\varepsilon.
    \tag{6.1}
    \]
    The vector in (6.1) is deterministic after the fixed pair
    \((\mathcal D,h)\) is chosen.
  - Accepted `step_004` proof and review:
    `perspective_3/idea_2/proof_steps/step_004/proof.md` and `review.md`.
    For each fixed \(h\), with
    \(Q_h=\{q\in\mathcal X:h(q)=-s_0\}\), their exact available conclusion is
    \[
    \begin{aligned}
    &\exists w\in\mathbb R^n\ \forall x\in\mathcal X,
      \quad \operatorname{sign}_{s_0}(\langle w,x\rangle)=h(x)\\
    &\hspace{35mm}\Longleftrightarrow
      \exists w\in\mathbb R^n\ \forall q\in Q_h,
      \quad h(q)\langle w,q\rangle>0.
    \end{aligned}
    \tag{6.2}
    \]
  - Accepted `step_005` proof and review:
    `perspective_3/idea_2/proof_steps/step_005/proof.md` and `review.md`.
    Conditional on infeasibility of the right-hand strict system in (6.2),
    they produce distinct \(q_1,\ldots,q_k\in Q_h\), positive coefficients,
    and a uniform distribution \(\mathcal D_h^\star\) such that
    \[
    1\le k\le n+1,
    \qquad
    \forall w\in\mathbb R^n,
    \quad
    \mathcal L_{\mathcal D_h^\star,h}
       (x\mapsto\langle w,x\rangle)
    \ge \frac1k\ge\frac1{n+1}.
    \tag{6.3}
    \]
    In particular, `step_005` proves
    \(\mathcal D_h^\star\in\Delta(\mathcal X)\).
- Local conditional hypotheses:
  - Inside the proof of Proposition~\ref{prop:step-006-feasibility}, for one
    fixed \(h\), assume that its strict system is infeasible. This hypothesis
    is used only to instantiate the conditional output (6.3), and is
    discharged by contradiction before any conclusion is exported.

No trajectory event, boundedness condition, margin magnitude, stability
property, or additional generated invariant is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:high-accuracy}, the accepted strict-system interface from `step_004`, and the accepted `step_003` and `step_005` conclusions, for every fixed \(h\in\mathcal H\), the strict system \(h(q)\langle w,q\rangle>0\) for all \(q\in Q_h\) is feasible. | Compares the upper and lower risks on exactly the same witness distribution, target, score, and tie-resolved loss, thereby ruling out infeasibility. |
| `unit_002` | proposition | Under the accepted strict-system equivalence from `step_004` and Proposition~\ref{prop:step-006-feasibility}, every fixed \(h\in\mathcal H\) has a vector \(w_h\in\mathbb R^n\) that exactly tie-resolved sign-represents it on all of \(\mathcal X\). | Converts strict feasibility into the exact identity-separator output required by this step. |

The step is non-atomic because the numerical contradiction and the subsequent
strict-system-to-exact-representation conversion are independently auditable.

## Cited Result Applications

No external paper result or unproved standard theorem is used. The accepted
dependency results are applied as follows.

### Accepted `step_003` approximate-separator conclusion

- Restated current-notation claim: Equation (6.1) holds for every legal
  distribution and target, and supplies an actual deterministic vector for
  that fixed pair.
- Instantiated objects: after `step_005` has produced
  \(\mathcal D_h^\star\), instantiate
  \(\mathcal D=\mathcal D_h^\star\) and use the same fixed target \(h\).
- Required assumptions and discharge: the accepted dependency was proved
  under Assumptions~\ref{assump:antipodal-oddness} and
  \ref{assump:universal-sgd-success}; `step_005` proves that
  \(\mathcal D_h^\star\in\Delta(\mathcal X)\), so it lies in the universal
  distribution domain of (6.1).
- Conclusion used: there is one \(v\in\mathbb R^n\) with
  \[
  \mathcal L_{\mathcal D_h^\star,h}
     (x\mapsto\langle v,x\rangle)\le2\varepsilon.
  \tag{6.4}
  \]
  No expectation, random trajectory, or feature-map law remains in (6.4).

### Accepted Proposition~\ref{prop:step-005-uniform-obstruction}

- Restated current-notation claim: conditional on infeasibility of the strict
  system for the fixed \(h\), accepted `step_005` constructs one distribution
  \(\mathcal D_h^\star\), supported uniformly on \(k\le n+1\) representatives,
  for which (6.3) holds for every \(w\in\mathbb R^n\).
- Instantiated objects: use the same fixed target \(h\), the exact distribution
  \(\mathcal D_h^\star\) produced under the local infeasibility hypothesis,
  and then set \(w=v\), where \(v\) is the actual vector supplied by (6.4).
- Required assumptions and discharge: the accepted proposition consumes the
  representative interface from accepted `step_004` and the certificate
  proved inside accepted `step_005`. The only additional condition is the
  explicitly local infeasibility hypothesis.
- Conclusion used:
  \[
  \mathcal L_{\mathcal D_h^\star,h}
     (x\mapsto\langle v,x\rangle)
  \ge\frac1k\ge\frac1{n+1}.
  \tag{6.5}
  \]

### Accepted Lemmas~\ref{lem:step-004-representatives} and
\ref{lem:step-004-pairwise-strictness}

- Restated current-notation claim: the accepted lemmas jointly prove (6.2):
  the strict system on \(Q_h\) is feasible if and only if the same homogeneous
  identity-coordinate score exactly represents \(h\) on all of \(\mathcal X\).
- Instantiated objects: the vector furnished by strict feasibility in
  Proposition~\ref{prop:step-006-feasibility} and the same fixed target \(h\).
- Required assumptions and discharge: the fixed tie convention and
  Assumption~\ref{assump:antipodal-oddness} are exactly the accepted
  dependency basis. No positive margin magnitude beyond strictness is needed.
- Conclusion used: strict feasibility produces an exact tie-resolved identity
  separator for \(h\).

### Assumption~\ref{assump:high-accuracy}

- Restated current-notation claim: \(2\varepsilon<1/(n+1)\).
- Instantiated objects: the same setting quantities \(n\) and \(\varepsilon\)
  appearing in the upper bound (6.4) and lower bound (6.5).
- Conclusion used: the two deterministic bounds cannot simultaneously hold.
  The inequality remains strict; equality is not rounded away or absorbed.

## Local Derivation

### unit_001: proposition

**Proposition (High-accuracy strict feasibility).**
\label{prop:step-006-feasibility}

Under Assumption~\ref{assump:high-accuracy}, the accepted `step_004`
strict-system interface, and the accepted `step_003` and `step_005`
conclusions (6.1) and (6.3), for every fixed
\(h\in\mathcal H\) there exists \(w_h\in\mathbb R^n\) such that
\[
h(q)\langle w_h,q\rangle>0
\qquad\text{for every }q\in Q_h.
\tag{6.6}
\]

**Proof.** Fix \(h\in\mathcal H\). Suppose for contradiction that the strict
system (6.6) is infeasible. By the accepted `step_005` conclusion, this one
local hypothesis produces an integer \(1\le k\le n+1\) and one legal
distribution \(\mathcal D_h^\star\in\Delta(\mathcal X)\) such that
\[
\forall w\in\mathbb R^n,
\qquad
\mathcal L_{\mathcal D_h^\star,h}
   (x\mapsto\langle w,x\rangle)
\ge\frac1k\ge\frac1{n+1}.
\tag{6.7}
\]
The distribution in (6.7) is fixed after the target and infeasibility
certificate are fixed, and before the universal choice of \(w\).

Now apply the accepted `step_003` conclusion to exactly the pair
\((\mathcal D_h^\star,h)\). This is a legal invocation because (6.7) includes
\(\mathcal D_h^\star\in\Delta(\mathcal X)\). It yields an actual
deterministic vector \(v\in\mathbb R^n\) satisfying
\[
\mathcal L_{\mathcal D_h^\star,h}
   (x\mapsto\langle v,x\rangle)
\le2\varepsilon.
\tag{6.8}
\]
The lower bound (6.7) is universal over all vectors, so it applies to this
same \(v\). Combining (6.7), (6.8), and
Assumption~\ref{assump:high-accuracy} gives the single-chain contradiction
\[
\mathcal L_{\mathcal D_h^\star,h}
   (x\mapsto\langle v,x\rangle)
\le 2\varepsilon
<\frac1{n+1}
\le\frac1k
\le
\mathcal L_{\mathcal D_h^\star,h}
   (x\mapsto\langle v,x\rangle).
\tag{6.9}
\]

Every term in (6.9) concerns the identical target \(h\), identical
distribution \(\mathcal D_h^\star\), identical identity-coordinate score
\(x\mapsto\langle v,x\rangle\), and identical tie-resolved loss
\(\mathcal L\). In particular, no expectation is compared with a realized
loss: accepted `step_003` has already converted its expected learner premise
into existence of the deterministic \(v\) in (6.8). Nor is an infimum used or
interchanged with an expectation; the universal lower bound is simply
instantiated at the produced vector.

Thus the local infeasibility hypothesis is false, and the strict system is
feasible. Choose any feasible vector and denote it by \(w_h\); then (6.6)
holds. \(\square\)

### unit_002: proposition

**Proposition (Exact identity representation for a fixed target).**
\label{prop:step-006-exact-representation}

Under the accepted strict-system equivalence (6.2) and
Proposition~\ref{prop:step-006-feasibility}, for every fixed
\(h\in\mathcal H\) there is \(w_h\in\mathbb R^n\) such that
\[
\forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\tag{6.10}
\]

**Proof.** Fix \(h\in\mathcal H\). Proposition~\ref{prop:step-006-feasibility}
supplies \(w_h\in\mathbb R^n\) satisfying the strict inequalities (6.6) on
every \(q\in Q_h\). The reverse implication in the accepted equivalence
(6.2), proved by Lemmas~\ref{lem:step-004-representatives} and
\ref{lem:step-004-pairwise-strictness}, applies to this same vector and target.
It yields (6.10) on every representative and its antipode, hence on all of
\(\mathcal X\). The scores on the representatives are nonzero by strictness;
the accepted pairwise lemma transfers the opposite nonzero scores to the
antipodes, so the fixed tie convention is preserved exactly rather than
replaced by an ordinary-sign convention. \(\square\)

## Target-Step Assembly

If \(\mathcal H=\varnothing\), the statement
\(\forall h\in\mathcal H\ \exists w_h\) is vacuous. Otherwise, take an
arbitrary \(h\in\mathcal H\). Proposition~\ref{prop:step-006-feasibility}
uses accepted `step_005` only under the temporary strict-infeasibility
hypothesis, applies accepted `step_003` to the exact resulting witness law,
and uses the primitive strict high-accuracy gap to discharge that hypothesis.
It therefore produces a strict separator for this arbitrary target.
Proposition~\ref{prop:step-006-exact-representation} then invokes the accepted
`step_004` equivalence and gives
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
\]
This is exactly the `step_006` claim. The output vector may depend on \(h\),
as required, but it no longer depends on a distribution, initialization, or
SGD trajectory. The common-feature-map and dimension conclusions are left to
`step_007`.

## Explicit Rate Audit

- Exposed variables: \(n,m,S,T,\eta,\varepsilon,\mathcal H\), the fixed
  target \(h\), and, under the temporary infeasibility hypothesis, the
  dependency-produced \(k\) and \(\mathcal D_h^\star\). The operative
  numerical bounds are exactly \(2\varepsilon\), \(1/k\), and
  \(1/(n+1)\).
- Hidden constants may depend on: Nothing. No hidden constant is introduced.
- Hidden constants may not depend on: \(n,m,S,T,\eta,\varepsilon,\mathcal H\),
  \(h\), \(k\), the distribution, initialization, sample path, or selected
  vector.
- Fixed quantities: The architecture, stepsize, and finite horizon inherited
  by accepted `step_003` remain fixed. For the contradiction, \(h\), the
  certificate, \(k\), and \(\mathcal D_h^\star\) are fixed before the lower
  bound is instantiated at \(v\).
- Probability mode: Deterministic. Accepted `step_003` already changed its
  expectation premise into existence of one deterministic vector for each
  fixed pair. This step performs no high-probability, almost-sure, joint, or
  simultaneous-over-target conversion.
- Horizon mode: Fixed finite horizon \(T\), inherited unchanged through
  accepted `step_003`; no time-uniform or asymptotic upgrade occurs here.
- Norm mode: The quantitative comparison uses the exact tie-resolved zero-one
  risk \(\mathcal L_{\mathcal D_h^\star,h}\). The output uses exact pointwise
  tie-resolved sign representation. No margin norm or surrogate loss is
  introduced.
- Admissibility conditions and auxiliary tolerances: \(n\ge1\),
  \(\varepsilon\ge0\), \(1\le k\le n+1\), and the primitive strict condition
  \(2\varepsilon<1/(n+1)\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: The complete bridge is the
  displayed chain (6.9). The implication \(k\le n+1\Rightarrow
  1/(n+1)\le1/k\) is retained explicitly, and no term is dropped or absorbed.
- Probability conversion: None in this step. The deterministic existence
  interface from accepted `step_003` is consumed as stated.
- Contribution to any Rate Specialization Bridge: This is the exactification
  bridge. The approximate upper bound \(2\varepsilon\), the support loss
  \(1/(n+1)\), and the strict primitive threshold are matched in the same
  metric and on the same objects to produce exact separation.
- Baseline-reduction check: At \(\varepsilon=0\), (6.9) begins with a
  nonnegative loss at most zero and then uses
  \(0<1/(n+1)\); exact representation follows without a limit. Thus the
  noiseless specialization preserves the exact theorem-facing conclusion.

## Blockers

None.

## Notation And Assumption Notes

- \(Q_h\) is the `public-facing` representative set inherited from accepted
  `step_004`. This step does not redefine or enlarge it.
- \(w_h\) is the sole new `public-facing` output: a target-dependent vector
  in the setting's fixed identity coordinates. Its existence is proved by
  Proposition~\ref{prop:step-006-feasibility}, and exact correctness is proved
  by Proposition~\ref{prop:step-006-exact-representation}.
- \(k\), the certificate representatives and coefficients, and
  \(\mathcal D_h^\star\) are accepted dependency objects from `step_005`.
  They are `appendix-local` to the contradiction and are not exported by this
  step. Their provenance is conditional strict infeasibility, and that
  condition is discharged before the step conclusion.
- The vector \(v\) in (6.8) is a `proof-local` object produced by accepted
  `step_003` after the exact pair \((\mathcal D_h^\star,h)\) is fixed. It is
  not a random vector and is not exported as \(w_h\); its only role is to
  contradict the universal obstruction.
- The threshold \(2\varepsilon<1/(n+1)\) is a primitive setting condition,
  not a derived invariant or a free choice. The support inequality
  \(1/k\ge1/(n+1)\) is inherited from accepted `step_005`. No new constant,
  margin magnitude, event, radius, or bounded quantity is introduced.
- Same-object audit: both (6.7) and (6.8) use the exact target \(h\), exact
  witness law \(\mathcal D_h^\star\), exact homogeneous score class in
  \(\mathbb R^n\), and exact source tie-resolved loss. The dependence of
  \(\mathcal D_h^\star\) on \(h\) is legal because accepted `step_003` is
  universal over all distribution-target pairs.
- Score and mode audit: the lower bound is universal over deterministic
  \(w\), and the upper bound supplies a deterministic \(v\), so they meet
  without an expectation, random-feature event, infimum attainment claim, or
  interchange of infimum and expectation.
- Strict-boundary audit: if \(2\varepsilon=1/(n+1)\), the weak upper and lower
  bounds could meet and (6.9) would not be contradictory. The accepted
  primitive assumption is strictly below the boundary, exactly as required.
- Support-bound audit: if \(k<n+1\), then \(1/k>1/(n+1)\), so the obstruction
  is stronger. If \(k=n+1\), its lower threshold is exactly
  \(1/(n+1)\), and the strict upper gap still contradicts it. The formal
  \(k=1\) endpoint is included by the same chain.
- Null-vector audit: if accepted `step_003` happens to supply \(v=0\), the
  universal lower bound (6.7) still applies. Indeed, accepted `step_005`
  records that the zero score ties on every witness atom labeled \(-s_0\), so
  its risk is one; a null vector cannot evade the contradiction.
- Zero-error audit: when \(\varepsilon=0\), accepted `step_003` supplies a
  vector of zero witness risk, while accepted `step_005` supplies a strictly
  positive lower bound. No positivity of \(\varepsilon\) is used.
- Assumption provenance: strict infeasibility is only a local conditional
  hypothesis. The witness distribution is a derived dependency output, the
  approximate vector is a derived dependency output, and exact feasibility is
  proved in this step. No derived fact is promoted to a primitive condition.
- The paired `global_proof_review.md` was read and has status `ACCEPTED`. Its
  step-relevant diagnostic observation was the need to match the same target,
  witness distribution, score, and tie-resolved loss across the strict gap.
  That observation was used only to plan the audit above. `global_proof.md`
  is not proof evidence, a cited result, an assumption source, or authority to
  change the accepted step claim.
