# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove the exact event union over the three domain pieces,
  apply finite subadditivity, and derive the weighted bound followed by
  \(M_\eta(d,R)\lvert I\rvert\) via the maximum rather than the sum; audit
  \(\pm1\), empty pieces, singleton pieces, and arbitrary endpoints.
- Depends on: step_004.
- Assumptions used: assump:compact-parameter-domain;
  assump:indexed-regime.
- Technical challenge: The interval pieces are disjoint but the events are
  not; endpoint roots must be included once, and the chart coefficients must
  be combined by a weighted maximum.
- Intended proof tool or cited result: Exact set identity, finite union bound,
  length additivity, and
  \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\).
- Output target: Exact per-law, per-interval two-chart maximum bound.
- Rate objective: Root-hitting objective with the exact
  \(M_\eta(d,R)\) interface and no summed chart constant.
- Row-local review status: PENDING. The controlling sketch-attempt-1 review is
  ACCEPTED.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:compact-parameter-domain`: \(\Theta\subseteq\mathbb R\) is the
    fixed compact source domain, and the theorem ranges over every
    \(I\in\mathcal I(\Theta)\) with arbitrary endpoint convention.
  - `assump:indexed-regime`: \(d\in\mathbb N\), \(d\geq1\), \(R\geq1\), and
    the finite pair
    \(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\) is fixed
    independently of \(d,R\).
- Derived invariants supplied by accepted dependencies:
  - Proposition~\ref{prop:step-004-inner-chart-probability}: for every
    admitted \(d,R,\mu,I\),
    \[
      \mu(H_{d,I_0})
      \leq \bar\kappa_0B_0(d,R)\lvert I_0\rvert,
    \]
    with probability zero when \(I_0\) is empty or a singleton.
  - Proposition~\ref{prop:step-004-positive-outer-probability}: for every
    admitted \(d,R,\mu,I\),
    \[
      \mu(H_{d,I_+})
      \leq \bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert,
    \]
    with probability zero when \(I_+\) is empty or a singleton.
  - Proposition~\ref{prop:step-004-negative-outer-probability}: for every
    admitted \(d,R,\mu,I\),
    \[
      \mu(H_{d,I_-})
      \leq \bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert,
    \]
    with probability zero when \(I_-\) is empty or a singleton.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `proof_steps/step_004/proof.md`, SHA-256
    `2ca180a73c0bb2d16d89e29b523e4104bf50526c2ea283ac91cfef0a8bc030b8`,
    paired with sketch-attempt-1, unit-attempt-1
    `proof_steps/step_004/review.md`, SHA-256
    `074823fd04097ae6b79f4cdbc28258e436d879f0774aa0204edbd46a1404d54e`.
    The review status is ACCEPTED and its recorded reviewed-proof hash equals
    the current dependency proof hash.

The dependency is consumed only through the three displayed probability
controls. Its proof used the matching conditional kernels and mean cap
assumptions already encoded by \(\mu\in\mathcal D_{d,R,\eta}\); this step
does not introduce those derived interfaces as new primitive assumptions.

## Local Lemma Map

Atomic step = no. The exact parameter decomposition and event identity, the
probability union bound, and the weighted-maximum conversion are distinct
claims and are exposed separately.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:compact-parameter-domain} and \ref{assump:indexed-regime}, every \(I\in\mathcal I(\Theta)\) satisfies \(I=I_0\mathbin{\dot\cup}I_+\mathbin{\dot\cup}I_-\), with \(\pm1\) assigned only to \(I_0\) when present, \(\lvert I\rvert=\lvert I_0\rvert+\lvert I_+\rvert+\lvert I_-\rvert\), and \(H_{d,I}=H_{d,I_0}\cup H_{d,I_+}\cup H_{d,I_-}\), for every endpoint convention and including empty or singleton pieces. | Exact parameter partition, length identity, endpoint audit, and event union. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:compact-parameter-domain} and \ref{assump:indexed-regime}, Lemma~\ref{lem:step-005-three-piece-decomposition}, and the three accepted chart-probability propositions from step_004, every \(d,R,\mu,I\) in the target range satisfies the exact weighted chart bound \(\mu(H_{d,I})\leq\bar\kappa_0B_0\lvert I_0\rvert+\bar\kappa_\infty B_\infty(\lvert I_+\rvert+\lvert I_-\rvert)\); event overlap is handled by finite subadditivity, and empty or singleton pieces contribute zero probability. | Converts the three dependency outputs into the first target inequality. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:compact-parameter-domain} and \ref{assump:indexed-regime}, Lemma~\ref{lem:step-005-three-piece-decomposition}, and Proposition~\ref{prop:step-005-weighted-chart-bound}, every \(d,R,\mu,I\) in the target range satisfies \(\mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert\) through \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\). | Exports the exact maximum of the chart constants, never their sum. |

## Cited Result Applications

No external paper theorem or global-proof statement is used as proof
authority. The accepted dependency and the elementary measure facts used
below are restated in current notation.

1. **Proposition~\ref{prop:step-004-inner-chart-probability} (Inner chart
   probability control).** For every \(d\geq1\), \(R\geq1\),
   \(\mu\in\mathcal D_{d,R,\eta}\), and
   \(I\in\mathcal I(\Theta)\), the accepted dependency proves
   \[
     \mu(H_{d,I_0})
     \leq\bar\kappa_0B_0(d,R)\lvert I_0\rvert.
   \]
   It also proves \(\mu(H_{d,I_0})=0\) when \(I_0\) is empty or a
   singleton. The current objects and quantifiers are identical to those in
   the dependency, so no object translation is required.

2. **Proposition~\ref{prop:step-004-positive-outer-probability} (Positive
   outer chart probability control).** For the same target objects, the
   accepted dependency proves
   \[
     \mu(H_{d,I_+})
     \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert,
   \]
   with probability zero for an empty or singleton \(I_+\). It is used only
   for the positive-outer event.

3. **Proposition~\ref{prop:step-004-negative-outer-probability} (Negative
   outer chart probability control).** For the same target objects, the
   accepted dependency separately proves
   \[
     \mu(H_{d,I_-})
     \leq\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert,
   \]
   with probability zero for an empty or singleton \(I_-\). It is used only
   for the negative-outer event; no sign symmetry is invoked here.

4. **Finite additivity of Lebesgue measure.** If finitely many Borel sets
   are pairwise disjoint, then the Lebesgue measure of their union is the sum
   of their Lebesgue measures. The three pieces below are intersections of
   intervals and hence Borel, and their disjointness and exact union are
   proved directly before this fact is applied.

5. **Finite subadditivity of probability.** For measurable events
   \(E_1,E_2,E_3\),
   \[
     \mu(E_1\cup E_2\cup E_3)
     \leq\mu(E_1)+\mu(E_2)+\mu(E_3),
   \]
   without any disjointness assumption. The chart root events are Borel by
   the accepted dependency chain through step_003 and step_004. This is the
   exact fact needed because one polynomial may have roots in more than one
   chart piece.

6. **Lemma~\ref{lem:step-005-three-piece-decomposition} (Three-piece
   parameter and event decomposition).** Its statement is the `unit_001`
   row above. It is proved below from the setting definitions and finite
   additivity and is used in both later propositions.

7. **Proposition~\ref{prop:step-005-weighted-chart-bound} (Weighted chart
   union bound).** Its statement is the `unit_002` row above. It is proved
   below from items 1--3, 5, and 6 and is used in the target-step assembly and
   the exact-maximum proposition.

8. **Proposition~\ref{prop:step-005-exact-maximum} (Exact two-chart maximum
   bound).** Its statement is the `unit_003` row above. It is proved below by
   a direct scalar inequality and is used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (Three-piece parameter and event decomposition).**
\(\label{lem:step-005-three-piece-decomposition}\)

**Statement.** Under Assumptions~\ref{assump:compact-parameter-domain} and
\ref{assump:indexed-regime}, fix \(d\geq1\) and an arbitrary-endpoint
interval \(I\in\mathcal I(\Theta)\), and define
\[
 I_0=I\cap[-1,1],\qquad
 I_+=I\cap(1,\infty),\qquad
 I_-=I\cap(-\infty,-1).
\]
Then, allowing any of the pieces to be empty or a singleton,
\[
 I=I_0\mathbin{\dot\cup}I_+\mathbin{\dot\cup}I_-,
 \qquad
 \lvert I\rvert
 =\lvert I_0\rvert+\lvert I_+\rvert+\lvert I_-\rvert,
 \tag{26}
\]
the points \(1\) and \(-1\), when contained in \(I\), belong only to
\(I_0\), and
\[
 H_{d,I}=H_{d,I_0}\cup H_{d,I_+}\cup H_{d,I_-}.
 \tag{27}
\]
These identities hold without changing the endpoint convention of \(I\).

**Proof / justification.** The three subsets
\[
 [-1,1],\qquad (1,\infty),\qquad(-\infty,-1)
\]
are pairwise disjoint and have union \(\mathbb R\). Intersecting this exact
partition with \(I\), without taking a closure or changing any endpoint,
gives the first identity in (26). In particular, if \(1\in I\), then
\(1\in I_0\) and \(1\notin I_+\cup I_-\); if \(-1\in I\), then
\(-1\in I_0\) and \(-1\notin I_+\cup I_-\). If either boundary point is
excluded by the endpoint convention of \(I\), it is absent from every
piece. Thus each included boundary root is allocated exactly once.

Each piece is an interval intersection, hence a Borel set, possibly empty or
a singleton. Finite additivity of Lebesgue measure on this pairwise-disjoint
union gives the length identity in (26). This argument depends only on exact
set membership, so open, closed, and half-open endpoint conventions all give
the same additivity statement. Empty and singleton pieces have Lebesgue
length zero and cause no correction term.

For the event identity, fix a coefficient vector \(\alpha\). By definition,
\(\alpha\in H_{d,I}\) if and only if some \(\theta\in I\) satisfies
\(\phi_\alpha(\theta)=0\). The exact partition in (26) puts that witness
\(\theta\) in exactly one of \(I_0,I_+,I_-\), which proves the forward
inclusion in (27). Conversely, a root in any one of the three pieces is a
root in \(I\), proving the reverse inclusion. The events in (27) need not be
disjoint: the same polynomial may have different roots in different pieces.
The event identity therefore does not assert probability additivity.

### unit_002: proposition

**Proposition (Weighted chart union bound).**
\(\label{prop:step-005-weighted-chart-bound}\)

**Statement.** Under Assumptions~\ref{assump:compact-parameter-domain} and
\ref{assump:indexed-regime}, Lemma~\ref{lem:step-005-three-piece-decomposition},
and Propositions~\ref{prop:step-004-inner-chart-probability},
\ref{prop:step-004-positive-outer-probability}, and
\ref{prop:step-004-negative-outer-probability}, fix \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and
\(I\in\mathcal I(\Theta)\). Then
\[
 \mu(H_{d,I})
 \leq
 \bar\kappa_0B_0(d,R)\lvert I_0\rvert
 +\bar\kappa_\infty B_\infty(d,R)
    \bigl(\lvert I_+\rvert+\lvert I_-\rvert\bigr).
 \tag{28}
\]
If any piece is empty or a singleton, its event has probability zero and its
weighted term in (28) is zero.

**Proof / justification.** Lemma~\ref{lem:step-005-three-piece-decomposition}
gives the exact event identity (27). The three chart events may overlap
because one polynomial may have roots in several pieces, so disjoint-event
additivity is unavailable and is not used. Finite subadditivity instead gives
\[
 \mu(H_{d,I})
 \leq
 \mu(H_{d,I_0})+\mu(H_{d,I_+})+\mu(H_{d,I_-}).
 \tag{29}
\]
Apply the three matching accepted dependency propositions to the three terms
on the right-hand side of (29):
\[
\begin{aligned}
 \mu(H_{d,I})
 &\leq
 \bar\kappa_0B_0(d,R)\lvert I_0\rvert
 +\bar\kappa_\infty B_\infty(d,R)\lvert I_+\rvert
 +\bar\kappa_\infty B_\infty(d,R)\lvert I_-\rvert\\
 &=
 \bar\kappa_0B_0(d,R)\lvert I_0\rvert
 +\bar\kappa_\infty B_\infty(d,R)
   \bigl(\lvert I_+\rvert+\lvert I_-\rvert\bigr),
\end{aligned}
\]
which is (28). The two outer controls share one coefficient but are applied
to separate events; factoring that coefficient after addition does not
introduce a factor two.

The dependency propositions explicitly cover every endpoint convention and
prove zero probability when the matching piece is empty or a singleton.
Lemma~\ref{lem:step-005-three-piece-decomposition} gives zero length for the
same pieces. Hence every degenerate contribution is exactly \(0\), including
an inner singleton \(\{1\}\) or \(\{-1\}\), and neither side of (28) needs an
unstated endpoint correction.

### unit_003: proposition

**Proposition (Exact two-chart maximum bound).**
\(\label{prop:step-005-exact-maximum}\)

**Statement.** Under Assumptions~\ref{assump:compact-parameter-domain} and
\ref{assump:indexed-regime}, Lemma~\ref{lem:step-005-three-piece-decomposition},
and Proposition~\ref{prop:step-005-weighted-chart-bound}, fix \(d\geq1\),
\(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and
\(I\in\mathcal I(\Theta)\). Then
\[
 \mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert,
 \tag{30}
\]
where
\[
 M_\eta(d,R)
 =\max\{\bar\kappa_0B_0(d,R),
              \bar\kappa_\infty B_\infty(d,R)\}.
\]

**Proof / justification.** Introduce only for this scalar calculation the
proof-local aliases
\[
 A=\bar\kappa_0B_0(d,R),\qquad
 C=\bar\kappa_\infty B_\infty(d,R),\qquad
 x=\lvert I_0\rvert,\quad y=\lvert I_+\rvert,\quad z=\lvert I_-\rvert.
\]
Assumption~\ref{assump:indexed-regime} gives nonnegative cap parameters,
\(d\geq1\), and \(R\geq1\), so
\[
 B_0(d,R)=d+\frac{Rd(d-1)}2\geq0,
 \qquad
 B_\infty(d,R)=1+\frac{Rd(d-1)}2\geq0.
\]
Consequently \(A,C,x,y,z\geq0\). If \(m=\max\{A,C\}\), then
\(A\leq m\) and \(C\leq m\), and multiplication by the nonnegative lengths
and addition give the displayed, exact inequality
\[
 Ax+C(y+z)
 \leq mx+m(y+z)
 =\max\{A,C\}(x+y+z).
 \tag{31}
\]
By Lemma~\ref{lem:step-005-three-piece-decomposition},
\(x+y+z=\lvert I\rvert\). By the setting definition,
\(\max\{A,C\}=M_\eta(d,R)\). Applying (31) to the right-hand side of
Proposition~\ref{prop:step-005-weighted-chart-bound} proves (30). This is the
maximum of the two chart coefficients. No estimate by \(A+C\), and no sum of
chart constants, appears.

## Target-Step Assembly

Fix the exact target-row objects \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and
\(I\in\mathcal I(\Theta)\). Lemma~\ref{lem:step-005-three-piece-decomposition}
proves the exact parameter partition, allocates \(\pm1\) only to \(I_0\),
proves length additivity for the actual endpoint convention of \(I\), and
proves the exact event union. Proposition~\ref{prop:step-005-weighted-chart-bound}
then uses finite subadditivity, which remains valid when the three root events
overlap, and the three accepted step_004 probability controls to obtain
\[
 \mu(H_{d,I})
 \leq
 \bar\kappa_0B_0(d,R)\lvert I_0\rvert
 +\bar\kappa_\infty B_\infty(d,R)
   \bigl(\lvert I_+\rvert+\lvert I_-\rvert\bigr).
 \tag{32}
\]
The same two named results show that empty and singleton pieces have both
zero length and zero event probability, including singleton pieces at
\(\pm1\).

Finally, Proposition~\ref{prop:step-005-exact-maximum} applies
\[
 Ax+C(y+z)\leq\max\{A,C\}(x+y+z)
\]
with the exact chart coefficients and the exact piece lengths to turn (32)
into
\[
 \mu(H_{d,I})
 \leq M_\eta(d,R)\lvert I\rvert.
\]
Thus the three paper-ready local results prove exactly the step_005 claim and
export the required maximum interface to step_006. This step does not divide
by \(\lvert I\rvert\), take class or interval suprema, specialize to
\(P_\eta(d,R)\), or address the independent witness clause.

## Explicit Rate Audit

- Exposed variables: \(d,R,\bar\kappa_0,\bar\kappa_\infty\), the exact
  lengths \(\lvert I_0\rvert,\lvert I_+\rvert,\lvert I_-\rvert\), and
  \(\lvert I\rvert\). The exported coefficient is exactly
  \[
    M_\eta(d,R)
    =\max\!\left\{
      \bar\kappa_0\!\left(d+\frac{Rd(d-1)}2\right),
      \bar\kappa_\infty\!\left(1+\frac{Rd(d-1)}2\right)
    \right\}.
  \]
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\eta,\mu,I,\Theta\), endpoint
  conventions, conditioning values, density or kernel versions, or any
  undisplayed quantity.
- Fixed quantities: \(\eta\) and \(\Theta\) are fixed as in the setting. The
  proof fixes one admitted \(d,R,\mu,I\) and is uniform over every such
  choice.
- Probability mode: Exact probability under each fixed \(\mu\), with one
  finite-subadditivity inequality for three measurable events. There is no
  confidence parameter, exceptional theorem event, conditioning conversion,
  or high-probability statement.
- Horizon mode: Static and uniform over all positive-length intervals. There
  is no time horizon, recurrence, limit, stopping rule, or scope upgrade.
- Norm mode: One-dimensional Lebesgue length for \(I\) and its chart pieces;
  the output is a probability bound. Conditional \(L^\infty\) norms occur
  only inside the already accepted step_004 producer interface.
- Admissibility conditions and auxiliary tolerances: Exactly
  Assumptions~\ref{assump:compact-parameter-domain} and
  \ref{assump:indexed-regime}, the quantified membership
  \(\mu\in\mathcal D_{d,R,\eta}\), and the accepted step_004 dependency.
  There is no auxiliary tolerance or threshold.
- Term absorption or simplification inequalities: The sole conversion is the
  fully displayed inequality
  \[
    Ax+C(y+z)
    \leq\max\{A,C\}(x+y+z),
  \]
  valid because all five quantities are nonnegative. No term is dropped,
  asymptotically absorbed, or replaced by a summed constant.
- Probability conversion: The exact event union is followed by finite
  subadditivity because the root events may overlap. No probability-mode
  conversion occurs.
- Contribution to any Rate Specialization Bridge: This step exports the exact
  per-law, per-interval coefficient \(M_\eta(d,R)\) to step_006. It performs
  no class supremum or polynomial specialization.
- Baseline-reduction check: No inherited recovery or zero-defect theorem is
  part of this step. At \(d=1\), the setting gives
  \(B_0(1,R)=B_\infty(1,R)=1\), so the same proof exports exactly
  \(\max\{\bar\kappa_0,\bar\kappa_\infty\}\lvert I\rvert\), with the same
  endpoint allocation and no remainder or conservative sum.

## Blockers

None.

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(H_{d,J}\), \(I_0,I_+,I_-\),
  \(B_0(d,R)\), \(B_\infty(d,R)\), and \(M_\eta(d,R)\) retain exactly their
  definitions from `setting.md`. The only public-facing outputs are the
  weighted chart inequality (32) and
  \(\mu(H_{d,I})\leq M_\eta(d,R)\lvert I\rvert\).
- Accepted dependency objects: the three chart root-event probability
  controls are derived event controls supplied by the current accepted
  step_004 proof/review pair. They are appendix-local proof inputs here, not
  new theorem assumptions.
- Locally proved objects: the exact parameter partition, length identity, and
  event union are proved by Lemma~\ref{lem:step-005-three-piece-decomposition};
  the weighted probability control and maximum control are proved by the two
  local propositions. No generated event identity is assumed.
- Proof-local aliases: \(A,C,x,y,z\), and \(m\) in the scalar calculation are
  defined directly from setting quantities and are used only inside the
  proof of Proposition~\ref{prop:step-005-exact-maximum}. They are not
  exported.
- Helper-object surface: no new public constant, radius, threshold, margin,
  admissibility parameter, event, rate, finite-tube quantity, boundedness
  hypothesis, recurrence, or invariant is introduced.
- Constant provenance: \(B_0,B_\infty,M_\eta\), and the two cap parameters are
  directly defined in `setting.md`; \(A,C,m\) are proof-local deterministic
  expressions formed from them. No hidden constant is present.
- Assumption provenance: compactness of the source domain and the indexed
  regime are primitive. The chart probability bounds, including zero
  probability for empty and singleton pieces, are accepted derived controls.
  The partition, event identity, finite-union estimate, and maximum estimate
  are proved in this step. There is no local conditional hypothesis or
  unproved generated condition.
- Endpoint and degeneracy scope: \(\pm1\) enter only \(I_0\) when present;
  arbitrary open, closed, and half-open endpoints are preserved exactly.
  Empty and singleton pieces have zero length, and the accepted dependency
  gives their events zero probability.
- Global diagnostic boundary: `global_proof.md` was not read or used. No
  global diagnostic statement serves as evidence, a cited result, an
  assumption source, or authority to alter the target claim.

## Artifact Validation

- Input identity: `setting.md` has SHA-256
  `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`;
  `proof_sketch.md` has SHA-256
  `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`;
  and accepted `proof_sketch_review.md` has SHA-256
  `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`.
- Target fidelity: The three named local results prove only the exact
  step_005 row: parameter and event decomposition, finite-subadditivity
  weighted chart control, and the maximum interface \(M_\eta\lvert I\rvert\).
- Allowed-input check: Every nontrivial line uses a listed primitive
  condition, one of the three accepted dependency conclusions, a restated
  finite measure fact, or an earlier named local result.
- Dependency check: The current step_004 proof hash is
  `2ca180a73c0bb2d16d89e29b523e4104bf50526c2ea283ac91cfef0a8bc030b8`;
  its current review hash is
  `074823fd04097ae6b79f4cdbc28258e436d879f0774aa0204edbd46a1404d54e`;
  and that review accepts sketch attempt 1, step_004, unit attempt 1 while
  recording the same proof hash.
- Local-unit coverage: There are exactly three non-atomic local units, with
  stable paper-ready labels and matching derivation subsections. No hidden
  partition, event, probability, endpoint, or scalar-maximization subclaim is
  used.
- Boundary check: The proof preserves arbitrary endpoint conventions,
  allocates each included \(\pm1\) endpoint only to \(I_0\), handles event
  overlap by subadditivity, and gives empty and singleton pieces zero length
  and zero probability.
- Rate check: The exact weighted chart bound is preserved, the scalar
  inequality is displayed, and the exported constant is exactly
  \(M_\eta(d,R)\), not a sum and not a hidden-constant bound.
- Assembly closure: Lemma~\ref{lem:step-005-three-piece-decomposition},
  Proposition~\ref{prop:step-005-weighted-chart-bound}, and
  Proposition~\ref{prop:step-005-exact-maximum} imply the exact target, so
  `Step Proof Status = COMPLETE` and `Blockers = None` are consistent.
- Artifact-scope check: This producer writes only
  `perspective_2/idea_1/proof_steps/step_005/proof.md` and does not modify any
  setting, sketch, diagnostic, dependency, review, tracker, worker-log,
  downstream, assembly, or accepted-result artifact.
