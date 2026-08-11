# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove there exists a deterministic \(r\)-tuple
  \((\phi_1,\ldots,\phi_r)\) such that every \(h\in\mathcal H\) is exactly
  represented by at least one block.
- Depends on: accepted step_003 proof/review artifacts.
- Assumptions used: primitive, explicitly conditional
  assump:tie-resolved-confident-map; derived \(r\) budget.
- Technical challenge: Preserve
  \(\exists\mathcal P\,\forall\mathcal D\,\forall h\), avoid selecting a
  target-dependent law, and maintain exact tie success.
- Intended proof tool or cited result: Iid product probability and the finite
  union bound.
- Output target: A simultaneous exact-coverage certificate under one fixed
  tuple.
- Rate objective: Confidence-explicit mode conversion from per-target
  probability \(1/2\) to deterministic existence, with union failure at most
  \(1/2\).
- Row-local review status: PENDING in the accepted sketch; the sketch-level
  review status is ACCEPTED.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency artifact:
  perspective_2/idea_2/proof_steps/step_003/proof.md, sketch attempt 1 and
  unit attempt 1, together with its matching
  perspective_2/idea_2/proof_steps/step_003/review.md, whose status is
  ACCEPTED.
- Primitive conditions:
  - assump:tie-resolved-confident-map: one law \(\mathcal P\) on maps
    \(\phi:\mathcal X\to\mathbb R^d\) is selected before every subsequently
    quantified \(\mathcal D\) and \(h\), and for every \(h\in\mathcal H\) the
    exact full-domain tie-resolved representation event has
    \(\mathcal P\)-probability at least \(1/2\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-003-budget}, with its matching
    ACCEPTED review, applies on the remaining nonempty branch. With
    \[
    M:=\lvert\mathcal H\rvert,
    \qquad
    r:=\left\lceil\log_2(2M)\right\rceil,
    \]
    it supplies \(M\ge1\), \(r\in\mathbb Z_{\ge1}\), and the exported bound
    \(r\le7TS\).
- Local conditional hypotheses: None. Fixing one \(h\) inside a universally
  quantified lemma is not an added theorem assumption.

Assumptions~\ref{assump:source-regime} and
\ref{assump:universal-sgd-success} are not used directly in this step. Their
relevant consequences have already been discharged in the accepted
dependency chain ending at Proposition~\ref{prop:step-003-budget}.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:tie-resolved-confident-map} and accepted Proposition~\ref{prop:step-003-budget}, if \(\phi_1,\ldots,\phi_r\) are iid from the single law \(\mathcal P\) supplied by the assumption, then for every fixed \(h\in\mathcal H\), the probability that no block exactly tie-resolved sign-represents \(h\) on all of \(\mathcal X\) is at most \(2^{-r}\). | Amplifies one target's exact success probability while retaining the same common law and exact tie event. |
| unit_002 | proposition | Under Assumption~\ref{assump:tie-resolved-confident-map}, accepted Proposition~\ref{prop:step-003-budget}, and Lemma~\ref{lem:step-004-single-target}, there are deterministic maps \(\phi_i^*:\mathcal X\to\mathbb R^d\), \(1\le i\le r\), such that every \(h\in\mathcal H\) has an index \(i\) and separator \(w\in\mathbb R^d\) with \(\operatorname{sgn}_{\tau}(\langle w,\phi_i^*(x)\rangle)=h(x)\) for every \(x\in\mathcal X\). | Pays the finite union over all targets and fixes one target-independent deterministic tuple, which is the exact exported certificate. |

## Cited Result Applications

No external paper theorem is used. The only accepted dependency and the two
elementary probability rules used below are restated in current notation.

| Result | Restated statement in current notation | Assumption discharge and use |
| ------ | --------------------------------------- | ---------------------------- |
| Accepted Proposition~\ref{prop:step-003-budget} (Explicit repetition budget) | On the remaining nonempty branch, \(M=\lvert\mathcal H\rvert\ge1\), and \(r=\lceil\log_2(2M)\rceil\) is a positive integer satisfying \(r\le7TS\). | Its current proof has a matching ACCEPTED review. This step uses the exact definition of \(r\), positivity of \(M,r\), and the exported size bound. |
| Iid coordinate product rule | If \(E\) is a measurable event for one \(\mathcal P\)-distributed map and \(\phi_1,\ldots,\phi_r\) are iid from \(\mathcal P\), then \(\Pr[\phi_i\notin E\text{ for all }i]=\prod_{i=1}^r\Pr[\phi_i\notin E]=\mathcal P(E^c)^r\). | This is the defining rectangle identity for the product law \(\mathcal P^r\). Here \(r\ge1\), and the exact event is measurable because Assumption~\ref{assump:tie-resolved-confident-map} assigns it a probability. Used in Lemma~\ref{lem:step-004-single-target}. |
| Finite union bound | For a finite family of events \((F_h)_{h\in\mathcal H}\), \(\Pr[\bigcup_{h\in\mathcal H}F_h]\le\sum_{h\in\mathcal H}\Pr[F_h]\). | The setting makes \(\mathcal H\) finite. The inequality follows by integrating \(\mathbf 1_{\cup_hF_h}\le\sum_h\mathbf 1_{F_h}\); it does not require independence across targets. Used in Proposition~\ref{prop:step-004-covering}. |
| Lemma~\ref{lem:step-004-single-target} (Independent amplification for one target) | Under the common-law premise and accepted positive integer \(r\), every fixed target is missed by all \(r\) iid blocks with probability at most \(2^{-r}\). | Proved below from the exact premise event and the iid coordinate product rule. Used in Proposition~\ref{prop:step-004-covering}. |
| Proposition~\ref{prop:step-004-covering} (Common deterministic exact-cover tuple) | There is one deterministic \(r\)-tuple such that every target has a block and separator realizing the exact full-domain \(\operatorname{sgn}_{\tau}\) event. | Proved below by a finite union bound and \(M2^{-r}\le1/2<1\). Used in the target-step assembly and exported to step_005. |

## Local Derivation

### unit_001: lemma

**Lemma (Independent amplification for one target).**
\(\label{lem:step-004-single-target}\)
Under Assumption~\ref{assump:tie-resolved-confident-map} and accepted
Proposition~\ref{prop:step-003-budget}, fix the single law \(\mathcal P\)
supplied before all distributions and targets, and let
\(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\ge1\). If
\(\phi_1,\ldots,\phi_r\) are iid with law \(\mathcal P\), then, for every
fixed \(h\in\mathcal H\),
\[
\Pr_{(\phi_1,\ldots,\phi_r)\sim\mathcal P^r}
\!\left[
  \forall i\in\{1,\ldots,r\},\quad
  \nexists w\in\mathbb R^d\quad
  \forall x\in\mathcal X,\quad
  \operatorname{sgn}_{\tau}
  \!\left(\langle w,\phi_i(x)\rangle\right)=h(x)
\right]
\le2^{-r}.
\]

**Proof.** Choose the one \(\mathcal P\) occurring before the universal
\(\mathcal D\)- and \(h\)-quantifiers in
Assumption~\ref{assump:tie-resolved-confident-map}. For a fixed
\(h\in\mathcal H\), define the exact one-map event
\[
E_h
:=
\left\{
\phi:\mathcal X\to\mathbb R^d:\quad
\exists w\in\mathbb R^d\quad
\forall x\in\mathcal X,\quad
\operatorname{sgn}_{\tau}
\!\left(\langle w,\phi(x)\rangle\right)=h(x)
\right\}.
\tag{1}
\]
The displayed probability in the assumption makes \(E_h\) measurable. The
event contains no \(\mathcal D\). The finite hypercube \(\mathcal X\) is
nonempty, so \(\Delta(\mathcal X)\) contains a point mass and the universal
distribution quantifier is not vacuous. Consequently, after the single law
\(\mathcal P\) has been fixed, that quantifier does not change the event or
permit a new law, and the premise gives
\[
\mathcal P(E_h)\ge\frac12,
\qquad
\mathcal P(E_h^c)\le\frac12
\tag{2}
\]
for every fixed \(h\in\mathcal H\).

For coordinate \(i\), the event that block \(i\) fails to represent \(h\) is
\(\{\phi_i\in E_h^c\}\). Since all coordinates have the same law
\(\mathcal P\) and are independent, the product-measure identity and (2) give
\[
\begin{aligned}
\Pr_{\mathcal P^r}
\!\left[\bigcap_{i=1}^r\{\phi_i\in E_h^c\}\right]
&=\prod_{i=1}^r\mathcal P(E_h^c)\\
&=\mathcal P(E_h^c)^r\\
&\le\left(\frac12\right)^r
=2^{-r}.
\end{aligned}
\tag{3}
\]
Membership in \(E_h\) is exactly the full-domain event in the statement, so
(3) is the claimed failure bound. In particular, the calculation neither
requires nor permits a law depending on \(h\), and it never replaces
\(\operatorname{sgn}_{\tau}\) by a strict-margin or approximate event.
\(\square\)

### unit_002: proposition

**Proposition (Common deterministic exact-cover tuple).**
\(\label{prop:step-004-covering}\)
Under Assumption~\ref{assump:tie-resolved-confident-map}, accepted
Proposition~\ref{prop:step-003-budget}, and
Lemma~\ref{lem:step-004-single-target}, let
\[
M:=\lvert\mathcal H\rvert,
\qquad
r:=\left\lceil\log_2(2M)\right\rceil.
\]
Then \(1\le r\le7TS\), and there are deterministic maps
\(\phi_i^*:\mathcal X\to\mathbb R^d\), \(1\le i\le r\), such that
\[
\forall h\in\mathcal H\quad
\exists i\in\{1,\ldots,r\}\quad
\exists w\in\mathbb R^d\quad
\forall x\in\mathcal X,
\qquad
\operatorname{sgn}_{\tau}
\!\left(\langle w,\phi_i^*(x)\rangle\right)=h(x).
\tag{4}
\]

**Proof.** Accepted Proposition~\ref{prop:step-003-budget} gives
\(M\ge1\), the displayed definition of the positive integer \(r\), and
\(r\le7TS\). Draw one random tuple
\((\phi_1,\ldots,\phi_r)\sim\mathcal P^r\) from the product of the single law
fixed by Assumption~\ref{assump:tie-resolved-confident-map}. For each
\(h\in\mathcal H\), let
\[
F_h
:=
\bigcap_{i=1}^r\{\phi_i\in E_h^c\},
\tag{5}
\]
where \(E_h\) is the exact event (1). Thus \(F_h\) is precisely the event
that this tuple leaves \(h\) uncovered. By
Lemma~\ref{lem:step-004-single-target},
\[
\Pr_{\mathcal P^r}(F_h)\le2^{-r}
\qquad\text{for every }h\in\mathcal H.
\tag{6}
\]

The events \(F_h\) may be dependent because they are evaluated on the same
tuple; no independence across targets is needed. Since \(\mathcal H\) is
finite, the pointwise indicator inequality
\[
\mathbf 1_{\cup_{h\in\mathcal H}F_h}
\le
\sum_{h\in\mathcal H}\mathbf 1_{F_h}
\]
and (6) imply
\[
\Pr_{\mathcal P^r}
\!\left[\bigcup_{h\in\mathcal H}F_h\right]
\le
\sum_{h\in\mathcal H}\Pr_{\mathcal P^r}(F_h)
\le
M2^{-r}.
\tag{7}
\]
The definition of \(r\) gives
\[
r\ge\log_2(2M),
\qquad
M2^{-r}
\le
M2^{-\log_2(2M)}
=\frac12<1.
\tag{8}
\]
Combining (7)--(8), the complementary simultaneous-coverage event
\[
G:=\bigcap_{h\in\mathcal H}F_h^c
\]
satisfies
\[
\Pr_{\mathcal P^r}(G)
=1-\Pr_{\mathcal P^r}
  \!\left[\bigcup_{h\in\mathcal H}F_h\right]
\ge\frac12>0.
\tag{9}
\]
The empty event has probability zero, so (9) proves that \(G\) contains at
least one tuple. Fix one such realization and call it
\((\phi_1^*,\ldots,\phi_r^*)\). This tuple is fixed once, before any target is
selected from \(\mathcal H\). For every \(h\in\mathcal H\), membership in
\(F_h^c\) gives some \(i\in\{1,\ldots,r\}\) with
\(\phi_i^*\in E_h\); by the definition (1) of \(E_h\), that membership gives
some \(w\in\mathbb R^d\) satisfying (4).

Thus the final quantifier order is
\[
\exists(\phi_1^*,\ldots,\phi_r^*)\quad
\forall h\in\mathcal H\quad
\exists i\in\{1,\ldots,r\}\quad
\exists w\in\mathbb R^d\quad
\forall x\in\mathcal X,
\]
not a separate tuple or law chosen after \(h\). No distribution appears in
the fixed tuple or in (4), because the exact event (1) is independent of
\(\mathcal D\). This proves the proposition. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-003-budget} supplies the same positive
integer
\[
r=\left\lceil\log_2(2\lvert\mathcal H\rvert)\right\rceil\le7TS
\]
that appears in the accepted sketch. Assumption~\ref{assump:tie-resolved-confident-map}
supplies one law before all targets, and
Lemma~\ref{lem:step-004-single-target} proves that \(r\) iid draws from this
one law miss any fixed target with probability at most \(2^{-r}\).
Proposition~\ref{prop:step-004-covering} pays the entire finite target union
by
\[
\lvert\mathcal H\rvert\,2^{-r}\le\frac12<1
\]
and fixes a tuple in the positive-probability simultaneous-coverage event.
Consequently the exact target-step output is
\[
\boxed{
\exists(\phi_1^*,\ldots,\phi_r^*)\quad
\forall h\in\mathcal H\quad
\exists i\in\{1,\ldots,r\}\quad
\exists w\in\mathbb R^d\quad
\forall x\in\mathcal X,
\quad
\operatorname{sgn}_{\tau}
\!\left(\langle w,\phi_i^*(x)\rangle\right)=h(x)
}.
\]
This is one deterministic common tuple and the exact full-domain
tie-resolved certificate consumed by step_005.

## Explicit Rate Audit

- Exposed variables: The proof exposes
  \(M=\lvert\mathcal H\rvert\),
  \(r=\lceil\log_2(2M)\rceil\), \(T\), \(S\), the feature dimension \(d\),
  the common law \(\mathcal P\), and the exact per-target probability
  threshold \(1/2\). The exported tuple has exactly \(r\le7TS\) blocks, each
  mapping into \(\mathbb R^d\).
- Hidden constants may depend on: Nothing. The constants \(1/2\) and \(1\)
  are explicit numerical values.
- Hidden constants may not depend on:
  \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d,\mathcal P,M\), or \(r\).
- Fixed quantities: During the product experiment, the finite class
  \(\mathcal H\), the one target-independent law \(\mathcal P\), and the
  accepted integer \(r\) are fixed before the random tuple is drawn. A
  target is fixed only for the single-target calculation; the final event
  intersects over all targets before the tuple is fixed.
- Probability mode: The primitive input is per-target probability at least
  \(1/2\) under one common law. The intermediate product experiment has
  fixed-target failure at most \(2^{-r}\) and simultaneous failure at most
  \(M2^{-r}\le1/2\). Positive probability is used only to prove existence;
  the exported conclusion is deterministic.
- Horizon mode: Fixed finite horizon \(T\), inherited only through the
  accepted deterministic bound \(r\le7TS\). This step makes no all-time or
  asymptotic claim.
- Norm mode: Exact equality after \(\operatorname{sgn}_{\tau}\) on every
  \(x\in\mathcal X\). No norm, risk, margin, approximation, or
  almost-everywhere surrogate is introduced.
- Admissibility conditions and auxiliary tolerances: \(M\ge1\),
  \(r=\lceil\log_2(2M)\rceil\), and \(r\le7TS\) are supplied by the accepted
  dependency; one common \(\mathcal P\) and exact success probability at
  least \(1/2\) are supplied by the primitive conditional premise. There are
  no auxiliary tolerances.
- Term absorption or simplification inequalities:
  \[
  \Pr(F_h)\le2^{-r},
  \qquad
  \Pr\!\left(\bigcup_hF_h\right)
  \le M2^{-r}
  \le M2^{-\log_2(2M)}
  =\frac12.
  \]
- Probability conversion: The simultaneous event has probability at least
  \(1/2>0\); fixing one of its realizations removes all probability from the
  output without changing the event, law, domain, dimension, target class,
  or tie convention.
- Contribution to any Rate Specialization Bridge: The step exports a common
  family of at most \(7TS\) \(d\)-dimensional blocks. Step_005 can therefore
  concatenate them at dimension \(rd\le7TSd\); this step does not itself
  perform or hide that multiplication.
- Baseline-reduction check: If \(M=1\), then \(r=1\), and (9) reduces exactly
  to the primitive success probability at least \(1/2\). Success exactly
  \(1/2\) is sufficient. A successful separator may have zero scores;
  because the event always uses the same \(\operatorname{sgn}_{\tau}\), such
  ties remain exact. The empty-class and \(d=0\) theorem branches were
  already closed exactly by accepted step_001 and are intentionally not
  reopened through the logarithmic budget.

## Blockers

None

## Notation And Assumption Notes

- The accepted object
  \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\) and the deterministic
  tuple asserted in Proposition~\ref{prop:step-004-covering} are
  public-facing: they form the minimal certificate exported to step_005.
  The abbreviation \(M=\lvert\mathcal H\rvert\) is proof-local and comes
  directly from the accepted dependency and setting class.
- For each target, \(E_h\) is a proof-local event defined directly from the
  setting's exact \(\operatorname{sgn}_{\tau}\), inner product, domain, and
  feature dimension. The failure events \(F_h\) and simultaneous event \(G\)
  are proof-local. The product law \(\mathcal P^r\) and random tuple are
  proof-local objects derived from the primitive common law and the accepted
  integer \(r\). Their measurability follows from the premise's probability
  statement and finite products, complements, and unions.
- Lemma~\ref{lem:step-004-single-target} and
  Proposition~\ref{prop:step-004-covering} are appendix-local theorem-style
  results. The block index \(i\) and separator \(w\) are existential
  witnesses, not additional public notation; the exported interface records
  their existence for each target.
- The only probability threshold is the exact \(1/2\) from
  Assumption~\ref{assump:tie-resolved-confident-map}. The failure rates
  \(2^{-r}\) and \(M2^{-r}\) are proved by the two named local units. The
  block-count bound \(r\le7TS\) is inherited from accepted
  Proposition~\ref{prop:step-003-budget}. No free constant, margin, radius,
  confidence parameter, or bounded quantity is introduced.
- The random tuple and events are generated only inside this proof. Their
  required properties are proved by Lemma~\ref{lem:step-004-single-target}
  and Proposition~\ref{prop:step-004-covering}; no generated coverage event
  is treated as primitive. The sole theorem-wide conditional input is
  Assumption~\ref{assump:tie-resolved-confident-map}, exactly as authorized
  by the explicitly conditional formalized goal.
- The common law is fixed before every \(\mathcal D\) and \(h\). The proof
  samples from its one product law, intersects over the full finite target
  class, and fixes the tuple only afterward. Thus neither the law nor the
  tuple is selected separately for a target, and the universal
  \(\mathcal D\)-quantifier is not exchanged with an existential choice.
- The paired global_proof_review.md has controlled status ACCEPTED for the
  current global_proof.md. Its step_004 diagnostic suggestion -- name the
  exact event, use one common product law, pay the finite union, and then fix
  a positive-probability tuple -- was used only as planning context. Every
  part is independently proved above; the diagnostic was not used as proof
  evidence, a cited result, an assumption source, or authority to change the
  target claim.
