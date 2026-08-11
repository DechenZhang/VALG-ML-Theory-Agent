# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Fix \(\varphi_{\mathrm{id}}(x)=x\), prove it represents all
  \(h\in\mathcal H\), show its point-mass law succeeds with probability one,
  and derive
  \[
  \operatorname{dc}^{1/2}(\mathcal H)
  \le \operatorname{dc}(\mathcal H)
  \le n\le S\le TS,
  \]
  including \(\mathcal H=\varnothing\).
- Depends on: `step_006`.
- Assumptions used: The primitive integer setup in `setting.md` and the
  derived exact separators supplied by the accepted `step_006` proof and
  review.
- Technical challenge: Preserve the quantifier order and ensure that the
  common map, rather than the target-specific vector \(w_h\), is independent
  of the target and distribution.
- Intended proof tool or cited result: Direct application of the two
  dimension definitions and the identities \(S=m(n+1)\), \(m,T\ge 1\).
- Output target: The final formalized theorem, including exact deterministic
  representation, probability-one confident representation, and the full
  dimension chain.
- Rate objective: Exact constant-one structural inequalities and probability
  one, with no hidden dependence or approximation term.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting has integers \(n,m,T\ge1\),
    \(\mathcal X=\{-1,+1\}^n\), and parameter count
    \(S=mn+m=m(n+1)\).
  - The source tie label \(s_0\in\{-1,+1\}\), the map
    \(\varphi_{\mathrm{id}}(x)=x\in\mathbb R^n\), the source loss, and the
    definitions of \(\operatorname{dc}\) and
    \(\operatorname{dc}^{1/2}\) are exactly those in `setting.md`.
  - Assumptions~\ref{assump:antipodal-oddness},
    \ref{assump:high-accuracy}, and
    \ref{assump:universal-sgd-success} are the primitive assumption basis of
    the accepted `step_006` result. This step does not invoke a new
    consequence of any of them beyond that accepted result.
- Derived invariants supplied by accepted dependencies:
  - The proof/review pair
    `perspective_3/idea_2/proof_steps/step_006/proof.md` and `review.md` is
    fresh and accepted. Its exact exported conclusion is
    \[
    \forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
    \qquad
    \operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
    \tag{7.1}
    \]
    The vector may depend on \(h\), but the feature coordinates are the fixed
    identity coordinates and no distribution, initialization, or trajectory
    appears in (7.1).
- Local conditional hypotheses: None.

No trajectory event, map-sampling event, margin, stability condition,
boundedness property, or additional generated invariant is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:antipodal-oddness}, \ref{assump:high-accuracy}, and \ref{assump:universal-sgd-success} through the accepted exact-separator conclusion (7.1), the one setting-defined map \(\varphi_{\mathrm{id}}(x)=x\) exactly tie-resolved sign-represents every \(h\in\mathcal H\), including vacuously when \(\mathcal H=\varnothing\). | Converts the target-wise vectors from `step_006` into a single target- and distribution-independent feature-map representation. |
| `unit_002` | proposition | Under Proposition~\ref{prop:step-007-common-identity} and the setting definition of confident dimension, the law \(\mathcal P_{\mathrm{id}}=\delta_{\varphi_{\mathrm{id}}}\), fixed before \(\mathcal D\) and \(h\), makes the exact zero-risk event hold with probability one for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\), with the empty-class statement interpreted vacuously. | Establishes the exact probability-one feature-law conclusion, including the infimum-before-probability interface. |
| `unit_003` | lemma | Under the setting definitions of \(\operatorname{dc}\) and \(\operatorname{dc}^{1/2}\), every dimension admitting a deterministic exact common feature map also admits a point-mass confident feature law; hence \(\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)\), including when \(\mathcal H=\varnothing\). | Supplies the first inequality in the requested chain without replacing the deterministic optimum by the particular identity-map dimension. |
| `unit_004` | proposition | Under Proposition~\ref{prop:step-007-common-identity}, Lemma~\ref{lem:step-007-deterministic-to-confident}, and the primitive integer relations \(n,m,T\ge1\), \(S=m(n+1)\), the full chain \(\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)\le n\le S\le TS\) holds, including \(m=1\), \(T=1\), and \(n=1\). | Combines feature admissibility with the exact parameter arithmetic and closes the structural bound. |

The step is non-atomic because common-map representation, probability-one
success, comparison of the two complexity definitions, and parameter-count
arithmetic are independently auditable claims.

## Cited Result Applications

No external paper result or unproved standard theorem is used.

### Accepted Proposition~\ref{prop:step-006-exact-representation}

- Restated current-notation claim: Under the three setting assumptions, (7.1)
  holds with the fixed source tie rule.
- Instantiated objects: For an arbitrary fixed \(h\in\mathcal H\), use the
  dependency-provided vector \(w_h\in\mathbb R^n\) and the setting-defined
  identity map \(\varphi_{\mathrm{id}}:\mathcal X\to\mathbb R^n\).
- Required assumptions and discharge: The accepted `step_006` proof derives
  the conclusion under Assumptions~\ref{assump:antipodal-oddness},
  \ref{assump:high-accuracy}, and
  \ref{assump:universal-sgd-success}; its fresh review has status `ACCEPTED`
  and smallest retry target `None`.
- Conclusion used: For the same \(w_h\) and every \(x\),
  \[
  \operatorname{sign}_{s_0}
     (\langle w_h,\varphi_{\mathrm{id}}(x)\rangle)
  =\operatorname{sign}_{s_0}(\langle w_h,x\rangle)
  =h(x).
  \tag{7.2}
  \]

### Setting definitions used directly

- Deterministic dimension: a dimension \(d\) is admissible precisely when one
  feature map \(\varphi:\mathcal X\to\mathbb R^d\) is fixed commonly for the
  class and satisfies
  \(\forall h\,\exists w_h\,\forall x\) exact tie-resolved representation.
- Confident dimension: a dimension \(d\) is admissible precisely when a law
  over maps into \(\mathbb R^d\), chosen before \(\mathcal D,h\), makes
  \[
  \inf_{w\in\mathbb R^d}
  \Pr_{x\sim\mathcal D}\!\left[
  \operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0
  \right]=0
  \]
  with feature-law probability at least \(1/2\), for every
  \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\).
- Parameter count: \(S=m(n+1)\), with \(n,m,T\) positive integers.
- These are definitions and primitive identities from `setting.md`, not cited
  theorems. Later local results use them only in their stated form.

## Local Derivation

### unit_001: proposition

**Proposition (Common identity-map exact representation).**
\label{prop:step-007-common-identity}

Under Assumptions~\ref{assump:antipodal-oddness},
\ref{assump:high-accuracy}, and
\ref{assump:universal-sgd-success} through the accepted exact-separator
conclusion (7.1), the single setting-defined feature map
\(\varphi_{\mathrm{id}}(x)=x\) satisfies
\[
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}
   (\langle w_h,\varphi_{\mathrm{id}}(x)\rangle)=h(x).
\tag{7.3}
\]
The map is independent of \(h\), \(\mathcal D\), and every learner
realization.

**Proof.** First suppose \(\mathcal H=\varnothing\). The outer universal
quantifier over \(h\) in (7.3) is then vacuous. The map
\(\varphi_{\mathrm{id}}(x)=x\) is still fixed by the setting, and no target or
separator is selected.

Now suppose \(\mathcal H\ne\varnothing\), and fix an arbitrary
\(h\in\mathcal H\). Accepted
Proposition~\ref{prop:step-006-exact-representation} supplies a vector
\(w_h\in\mathbb R^n\) satisfying (7.1). Since
\(\varphi_{\mathrm{id}}(x)=x\), the score is unchanged:
\[
\langle w_h,\varphi_{\mathrm{id}}(x)\rangle
=\langle w_h,x\rangle
\qquad\text{for every }x\in\mathcal X.
\tag{7.4}
\]
Applying the same fixed map \(\operatorname{sign}_{s_0}\) to the two equal
scores and then using (7.1) proves (7.2), hence (7.3) for this arbitrary
target. The definition of \(\varphi_{\mathrm{id}}\) contains only \(x\) and
the fixed coordinate dimension \(n\); it is chosen neither after \(h\) nor
after a distribution. Only \(w_h\) is selected after \(h\), exactly as the
dimension definition allows.

The equality is in the setting's tie-resolved convention. If a displayed
score were zero, both sides of (7.4) would receive the same fixed label
\(s_0\); no ordinary-sign convention is substituted. In fact, the accepted
dependency obtains nonzero scores from strict separation, but this additional
fact is not needed for the present implication. Thus the argument applies
unchanged for \(s_0=+1\) and \(s_0=-1\). \(\square\)

### unit_002: proposition

**Proposition (Probability-one point-mass confident representation).**
\label{prop:step-007-point-mass}

Under Proposition~\ref{prop:step-007-common-identity} and the setting
definition of \(\operatorname{dc}^{1/2}\), define the law
\[
\mathcal P_{\mathrm{id}}:=\delta_{\varphi_{\mathrm{id}}}
\tag{7.5}
\]
before any distribution or target is chosen. Then, for every
\(\mathcal D\in\Delta(\mathcal X)\) and every \(h\in\mathcal H\),
\[
\Pr_{\varphi\sim\mathcal P_{\mathrm{id}}}\!\left[
\inf_{w\in\mathbb R^n}
\Pr_{x\sim\mathcal D}\!\left[
\operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0
\right]=0\right]=1.
\tag{7.6}
\]
For \(\mathcal H=\varnothing\), the universally quantified conclusion is
vacuous and the same law remains fixed.

**Proof.** The point mass (7.5) is determined entirely by the setting-defined
identity map, so it has no dependence on \(\mathcal D\), \(h\), an SGD
trajectory, or a later random choice. If \(\mathcal H=\varnothing\), there is
no target instance to check, and the required
\(\forall\mathcal D\,\forall h\in\mathcal H\) statement holds vacuously.

Otherwise, fix an arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and
\(h\in\mathcal H\). Proposition~\ref{prop:step-007-common-identity} supplies
\(w_h\) such that, for every \(x\in\mathcal X\),
\[
\operatorname{sign}_{s_0}
  (\langle w_h,\varphi_{\mathrm{id}}(x)\rangle)h(x)
=h(x)^2=1.
\tag{7.7}
\]
Consequently the strict error event in (7.6) is empty at \(w=w_h\), for
every distribution \(\mathcal D\), and its probability is zero. Since every
classification risk is nonnegative,
\[
0\le
\inf_{w\in\mathbb R^n}
\Pr_{x\sim\mathcal D}\!\left[
\operatorname{sign}_{s_0}
  (\langle w,\varphi_{\mathrm{id}}(x)\rangle)h(x)<0
\right]
\le0.
\tag{7.8}
\]
Thus the infimum equals zero; no minimizer or interchange of an infimum with
a probability is being asserted. The sole map in the support of
\(\mathcal P_{\mathrm{id}}\) therefore belongs to the event in (7.6), so its
point-mass probability is exactly one. In particular it is at least
\(1/2\), as required by the confident-dimension definition. \(\square\)

### unit_003: lemma

**Lemma (Deterministic representation implies confident representation).**
\label{lem:step-007-deterministic-to-confident}

Under the setting definitions of \(\operatorname{dc}\) and
\(\operatorname{dc}^{1/2}\), for every class \(\mathcal H\), including
\(\mathcal H=\varnothing\), every deterministic-admissible feature dimension
is also confident-admissible. Consequently
\[
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H).
\tag{7.9}
\]

**Proof.** Let \(d\) be any deterministic-admissible dimension. By definition,
there is one map \(\varphi:\mathcal X\to\mathbb R^d\), selected commonly for
the class, such that for every \(h\in\mathcal H\) some
\(u_h\in\mathbb R^d\) satisfies
\[
\operatorname{sign}_{s_0}(\langle u_h,\varphi(x)\rangle)=h(x)
\qquad\text{for every }x\in\mathcal X.
\tag{7.10}
\]
Choose the point-mass law \(\delta_\varphi\) before \(\mathcal D\) and \(h\).
For any subsequently fixed \(\mathcal D\) and \(h\), (7.10) at
\(w=u_h\) makes the inner risk in the confident-dimension definition zero.
Nonnegativity then makes its infimum zero, and the point-mass law assigns
probability one to that event. Hence the same \(d\) is
confident-admissible. If \(\mathcal H=\varnothing\), both universal target
conditions used in this implication are vacuous, so the implication remains
valid. Therefore the set of deterministic-admissible dimensions is contained
in the set of confident-admissible dimensions. Taking the least dimensions
in the two setting definitions proves (7.9). \(\square\)

### unit_004: proposition

**Proposition (Exact dimension and parameter-count chain).**
\label{prop:step-007-dimension-chain}

Under Proposition~\ref{prop:step-007-common-identity},
Lemma~\ref{lem:step-007-deterministic-to-confident}, and the primitive integer
relations \(n,m,T\ge1\) and \(S=m(n+1)\),
\[
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H)
\le n\le S\le TS.
\tag{7.11}
\]
This includes \(\mathcal H=\varnothing\) and the boundary values
\(m=1\), \(T=1\), and \(n=1\).

**Proof.** Lemma~\ref{lem:step-007-deterministic-to-confident} gives the first
inequality in (7.11). Proposition~\ref{prop:step-007-common-identity} shows
that the single map \(\varphi_{\mathrm{id}}:\mathcal X\to\mathbb R^n\) is
deterministic-admissible, so the least admissible deterministic dimension
satisfies
\[
\operatorname{dc}(\mathcal H)\le n.
\tag{7.12}
\]
This remains true for \(\mathcal H=\varnothing\), because the representation
condition is then vacuous while the identity map is still an admissible
candidate.

For the parameter inequalities, positivity of \(m\) gives
\[
n\le n+1\le m(n+1)=S,
\tag{7.13}
\]
and positivity of \(T\), together with \(S>0\), gives
\[
TS-S=(T-1)S\ge0,
\qquad\text{hence}\qquad S\le TS.
\tag{7.14}
\]
Combining (7.9), (7.12), (7.13), and (7.14) proves (7.11).

At \(m=1\), (7.13) reads \(n\le n+1=S\), so no strict width lower bound is
used. At \(T=1\), (7.14) is the equality \(S=TS\), so no multi-step
horizon is used. At \(n=1\), \(S=2m\) and the arithmetic becomes
\(1\le2m\le2mT\); the common feature map is the one-dimensional identity,
and accepted (7.1) supplies its target separators. These checks also hold
simultaneously when several boundary values equal one. The tie label does not
enter the arithmetic, and the representation inequalities retain the same
fixed \(\operatorname{sign}_{s_0}\) convention already checked in
Proposition~\ref{prop:step-007-common-identity}. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-007-common-identity} consumes the sole accepted
dependency interface (7.1) and proves exact representation by one literal
identity map; the target-specific vector may vary with \(h\), while the map
does not vary with \(h\), \(\mathcal D\), or a learner realization.
Proposition~\ref{prop:step-007-point-mass} then applies the exact separator
inside the infimum in the confident event, proves the inner risk is exactly
zero for every \((\mathcal D,h)\), and obtains feature-law probability exactly
one under \(\delta_{\varphi_{\mathrm{id}}}\).

Lemma~\ref{lem:step-007-deterministic-to-confident} proves the definition-level
comparison \(\operatorname{dc}^{1/2}\le\operatorname{dc}\), and
Proposition~\ref{prop:step-007-dimension-chain} combines it with identity-map
admissibility and the exact parameter arithmetic to obtain
\[
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H)
\le n\le S\le TS.
\]
The empty-class branch is taken before any target is fixed, both tie labels
are preserved, and the endpoint values \(m=T=n=1\) require no excluded
strict inequality. These conclusions are exactly the `step_007` sketch row
and the final formalized theorem.

## Explicit Rate Audit

- Exposed variables: \(n,m,S,T,\mathcal H\), the generic distribution
  \(\mathcal D\), target \(h\), feature dimension \(d\), and fixed tie label
  \(s_0\). The public quantitative conclusions are probability \(1\) and
  \(\operatorname{dc}^{1/2}\le\operatorname{dc}\le n\le S\le TS\).
- Hidden constants may depend on: Nothing. There are no hidden constants.
- Hidden constants may not depend on: \(n,m,S,T,\eta,\varepsilon,\mathcal H\),
  \(\mathcal D,h,s_0\), initialization, SGD samples, or feature-map draws.
- Fixed quantities: The setting's architecture, \(\eta\), \(\varepsilon\), and
  finite horizon \(T\) remain fixed. The identity map and its point-mass law
  are fixed before the universal choices of \(\mathcal D\) and \(h\).
- Probability mode: Exact deterministic representation, followed by
  probability one over the point-mass feature law. There is no expectation,
  high-probability loss, union bound, or conditioning in this step.
- Horizon mode: Fixed finite horizon. The proof uses \(T\) only through the
  exact arithmetic \(S\le TS\) and makes no time-uniform or asymptotic claim.
- Norm mode: Exact pointwise tie-resolved sign representation and the exact
  tie-resolved zero-one risk inside the confident-dimension definition. No
  margin norm, surrogate risk, or approximation metric is introduced.
- Admissibility conditions and auxiliary tolerances: Exactly
  \(n,m,T\ge1\) and \(S=m(n+1)\); there is no auxiliary tolerance.
- Term absorption or simplification inequalities: The complete arithmetic is
  \(n\le n+1\le m(n+1)=S\) and
  \(TS-S=(T-1)S\ge0\). No term is dropped or absorbed.
- Probability conversion: Exact equality (7.7) makes the pointwise error
  indicator zero, hence the risk and its infimum are zero for every
  \(\mathcal D,h\); the point mass then assigns the event probability one.
  No expectation-to-probability or simultaneous-randomness conversion occurs.
- Contribution to any Rate Specialization Bridge: This is the final
  structural-parameter closure. It exposes every factor as one and upgrades
  neither the horizon nor the probability mode.
- Baseline-reduction check: At \(\varepsilon=0\), the accepted dependency
  still supplies exact separators, and this step produces the identical exact
  representation and probability-one conclusions with no residual. For
  \(\mathcal H=\varnothing\), all target quantifiers are vacuous and the same
  chain follows. The boundary values \(m=1\), \(T=1\), and \(n=1\) were
  checked directly in Proposition~\ref{prop:step-007-dimension-chain}.

## Blockers

None.

## Notation And Assumption Notes

- \(\varphi_{\mathrm{id}}\) is a setting-defined `public-facing` object. It is
  the literal map \(x\mapsto x\), not a learned, transformed,
  target-dependent, distribution-dependent, or trajectory-dependent map.
- Each \(w_h\) is an accepted-dependency `public-facing` existential object
  supplied by (7.1) after \(h\) is fixed. Its allowed target dependence does
  not transfer to \(\varphi_{\mathrm{id}}\), and it is independent of
  \(\mathcal D\). No simultaneous measurable selection of the family
  \(h\mapsto w_h\) is needed by either dimension definition.
- \(\mathcal P_{\mathrm{id}}=\delta_{\varphi_{\mathrm{id}}}\) is a new
  `public-facing` helper object directly defined from the setting map. It is
  fixed before \(\mathcal D,h\), has singleton support, and introduces no
  confidence parameter or measurability interchange.
- The generic \(d\), \(\varphi\), and \(u_h\) in
  Lemma~\ref{lem:step-007-deterministic-to-confident} are `proof-local`
  objects quantified directly by the two setting definitions. They export
  only the inequality (7.9).
- The complexities \(\operatorname{dc}\) and
  \(\operatorname{dc}^{1/2}\), the count \(S\), and the integers \(n,m,T\)
  are setting-defined `public-facing` quantities. No new constant, radius,
  threshold, rate, margin, event, bounded quantity, or finite-tube quantity is
  introduced.
- Assumption provenance: \(n,m,T\ge1\) and \(S=m(n+1)\) are primitive static
  setting conditions. Exact separator existence is a derived output supplied
  by the fresh accepted `step_006` proof/review pair. Common-map exactness,
  zero risk, probability-one success, and the dimension inequalities are
  proved in this step. There are no local conditional hypotheses.
- Quantifier audit: the common map and point-mass law are fixed first; then
  \(\mathcal D\) and \(h\) are arbitrary; only then is the target-specific
  separator used inside the infimum. Thus the proof establishes
  \(\exists\mathcal P\,\forall\mathcal D\,\forall h\) in the required order,
  not a target- or distribution-dependent feature law.
- Infimum audit: a concrete vector has risk zero and all risks are
  nonnegative, so the infimum equals zero. No attainment theorem, exchange of
  infimum and probability, or common separator across targets is asserted.
- Tie audit: every score is evaluated by the identical setting map
  \(\operatorname{sign}_{s_0}\). Equation (7.7) therefore covers any zero
  score under either \(s_0=+1\) or \(s_0=-1\); no tie is silently changed into
  an ordinary positive or negative sign.
- Empty-class audit: when \(\mathcal H=\varnothing\), no \(h\) or \(w_h\) is
  selected. Exact representation and confident success are universal
  statements over an empty target set, and the identity map remains an
  admissible dimension-\(n\) candidate. The deterministic-to-confident
  admissible-dimension inclusion remains valid, so the full chain is
  preserved.
- Boundary audit: \(m=1\) yields \(S=n+1\); \(T=1\) yields \(TS=S\); and
  \(n=1\) yields \(S=2m\). These equalities are compatible with every weak
  inequality in the target chain, including when all three values equal one.
- No `global_proof.md` artifact was read or used. The target, dependency
  interface, assumptions, and evidence base come only from the allowed
  setting, accepted sketch/review, and fresh accepted `step_006` proof/review.
