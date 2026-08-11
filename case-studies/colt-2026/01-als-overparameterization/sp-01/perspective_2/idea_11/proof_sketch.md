# Proof Sketch

## Formalized Setting

This attempt is bound to perspective_2/idea_11/setting.md at SHA-256
3528bacd6c298c1128e64d1527b11b48472f6144acb7437a3e2a395f00ac635a
and to perspective_2/idea_11/idea.md at SHA-256
f0b9f4c3969649daacd18ba2fc6567ce96aa035e5f2b5cc5765b617bf08fd078.
The model is exact asymmetric third-order CP least squares for independently
Gaussian-smoothed factors whose deterministic \(A\)- and \(B\)-mode normalized
columns are orthonormal and whose \(C\)-mode Gram matrix has the stated
near-orthogonal margin. The algorithm starts from joint-zero slots, uses the
finite full-space Haar tape and the zero-safe residual-relative certificate,
rolls every failed scratch transaction back exactly, freezes successful
balanced slots, and finishes with balanced full-space Armijo descent on the
same exact objective.

The primitive conditions are exactly the following eleven setting assumptions:

- assump:base-column-conditioning
- assump:base-product-balance
- assump:two-mode-orthogonality
- assump:c-mode-gram-margin
- assump:gaussian-smoothing
- assump:dimension-regime
- assump:smoothing-scale
- assump:smoothing-bridge
- assump:rank-regime
- assump:random-tape
- assump:accuracy-range

No matching, legal-prefix invariant, certificate passage, accepted-error
ledger, tape success event, PL-chart membership, bounded trajectory, or
convergence property is treated as primitive.

## Formalized Goal

The goal is the binding material_partial, target-spec theorem with

\[
  k=\left\lceil C_{\rm rank}r^{3/2}(\log(2r))^2\right\rceil=o(r^2).
\]

On a once-drawn instance event of probability at least \(1-r^{-10}\), the
intended four-block proof is: (S) static smoothing and two-mode contraction;
(T) one target-blind relative-certificate transaction with unique unresolved
label assignment and the branch-qualified Raw-J output; (B) capture-charge
induction, exact-rollback accounting, and conditional finite-tape recovery;
and (P) same-target balanced PL entry and terminal refinement to

\[
  \left\|T-\sum_{i=1}^k x_i\otimes y_i\otimes z_i\right\|_F
  \le \epsilon\|T\|_F,
  \qquad 0<\epsilon<1.
\]

The instance and conditional-tape probabilities, polynomial discovery work,
\(O(\log(1/\epsilon))\) terminal horizon, relative Frobenius metric, and exact
orthogonal/noiseless no-floor baseline are binding. Protected-span
leverage/projection, source-label queries, matched-mixture exchange, and an
additive terminal floor are forbidden.

## Sketch Identity

- Branch: perspective_2/idea_11
- Sketch attempt: 1
- Setting SHA-256: 3528bacd6c298c1128e64d1527b11b48472f6144acb7437a3e2a395f00ac635a
- Idea SHA-256: f0b9f4c3969649daacd18ba2fc6567ce96aa035e5f2b5cc5765b617bf08fd078
- Goal mode: target-spec
- Progress type: material_partial
- Retry mode: initial sketch

## Proof Roadmap

The approved roadmap is the concise chain (S) static source control, (T) one
relative zero-safe transaction and raw transition, (B) capture-budgeted
induction and tape amplification, and (P) exact-target PL refinement. The
two-mode contraction and orthogonal-tensor strict-saddle calculations would be
direct current-notation arguments, while the terminal module would use the
exact balanced target Jacobian and a Taylor/PL first-exit argument. Prior
idea-10 literature is proof-pattern provenance only and is not a theorem
wrapper.

This roadmap cannot be split into proof steps under the binding setting. The
transaction output Raw-J, which is consumed by (B), is contradicted by the
setting's own nonnegative resolvent padding at the empty orthogonal prefix.
The contradiction is pointwise and precedes any accumulation, matching,
reachability, or terminal argument, so shorter step organization cannot repair
it.

## Rate Objectives

### Binding theorem rate

- Objective type: structural-parameter explicit, confidence-explicit,
  finite-horizon discovery and terminal \(O(\log(1/\epsilon))\) convergence.
- Exposed variables: \(n,r,k,\kappa,\rho,\Gamma_\star,P,\nu_{\rm real},
  \epsilon\), every adaptive \(e_p=P^{-D_{\rm stat}}\mu_{I_p}(q_p)\), and the
  displayed fixed proof exponents.
- Hidden constants may depend on: fixed
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,C_{\rm rank},\Gamma_\star\),
  fixed Armijo/protocol constants, and absolute proof constants.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho,P,\nu_{\rm real},
  \epsilon\), the realized instance, prefix, commit order, or adaptive
  \(e_p\).
- Fixed quantities: the primitive class constants and fixed proof exponents.
- Probability mode: once-drawn instance probability at least \(1-r^{-10}\),
  followed by a separate conditional tape probability at least \(1-r^{-10}\).
- Horizon mode: horizon-uniform over the finite discovery prefixes and tape,
  then \(O(\log(1/\epsilon))\) terminal iterations.
- Norm mode: Frobenius residual; operator norm for Gram/transfer controls;
  root,2 for Raw-J; Euclidean balanced-factor orbit distance for PL entry.
- Required bridge or simplification obligations: every numerical term must
  remain raw unless an explicit displayed inequality dominates it; the public
  rate must preserve \(k=O(r^{3/2}\log^2 r)\), polynomial work, the two
  probability modes, and the relative endpoint.
- Baseline invariance obligations: at \(H_M=0\) and exact numerical solution,
  rollback has zero forcing, the exact balanced representation is stationary,
  ledger charges vanish, and arbitrary relative accuracy remains available
  without an additive floor.

The failed interface itself is rate-bearing: its claimed constant \(C_z\) is a
fixed hidden constant and therefore cannot absorb an additional factor growing
like \(r\).

## Assumption Provenance Objectives

The eleven assump:* items listed above are primitive. The intended proof would
have to derive, in order, the once-drawn event, a local legal-prefix record,
certificate reachability, unique unresolved-label assignment,
transaction-specific Raw-J, the all-prefix capture ledger, the stopped tape
event, the all-commit tuple, same-target PL-chart entry, and first-exit
terminal convergence. A local transition lemma could condition on a named
legal-prefix hypothesis and a later induction could discharge that hypothesis
from the empty prefix; it could not make the legal-prefix record a public
assumption.

No producer is assigned in this attempt because the required transaction
output is infeasible before that conditional/inductive bridge can be formed.
In particular, neither a future ledger step nor a later closure step may be
used as the producer of Raw-J.

## Mechanism-Source And Boundary Stress

### Failed candidate (T) to (B) interface

- Step ID: N/A; the gate fails before a legal step graph can be emitted.
- Claim class: generated transaction row bound and recurrence input.
- Theorem role: export the accepted root's \(z_p\) profile from (T) to the
  capture-charge induction in (B).
- Mechanism source: the binding current-notation definitions
  \[
    \Theta_I=(\operatorname{Id}-C_0\Gamma_\star\mathcal T)^{-1}
      C_0\Gamma_\star(S+A_I+P^{-D_{\rm stat}}\mathbf 1),
    \qquad
    z_{p,M,\ell}=\Theta_{I_p;p,M,\ell}+C_{\rm num}e_p,
  \]
  with a nonnegative Neumann inverse when the required transfer gap holds.
- Source-to-claim adequacy: fails. The source supplies a positive
  \(P^{-D_{\rm stat}}\) pad in every off-diagonal coordinate, while the target
  row permits that numerical class only through
  \(e_p=P^{-D_{\rm stat}}\mu_{I_p}(q_p)\).
- Residual-to-target adequacy: the produced and consumed objects are the same
  \(z_p\) row in root,2, so no surrogate bridge is available. The exact
  residual is the empty-prefix \(R_\varnothing=T\); the mismatch is entirely
  between the produced coordinate pad and the consumed Raw-J scale.
- Key positive/control term or structural source: nonnegative Neumann
  inversion and the proposed numerical term \(\sqrt r\,e_p\).
- Opposing defect terms: the coordinatewise
  \(P^{-D_{\rm stat}}\mathbf1\) input, which is independent of \(\mu_I\) and
  hence is not controlled by \(e_p\) with an \(r\)-independent constant.
- Closure/dominance/absorption relation: none exists under the binding
  interface. At the stress state below, the needed inequality is
  \(c\sqrt r P^{-D_{\rm stat}}\le
  C_zP^{-D_{\rm stat}}/(2\sqrt r)\), equivalently \(2cr\le C_z\), which
  fails for unbounded \(r\).
- Accumulation behavior / scope compatibility: unsupported pointwise; the
  contradiction occurs on the first accepted root, before summation.
  Capture telescoping cannot reduce an already false per-root export.
- Obligation locality classification: idea/theorem-contract defect.
- Noncircular closure status: no closure is available. Raw-J is required as
  an input to the ledger and cannot be proved using the later ledger without
  circularity.
- Entry-state / first-update stress result: take the empty prefix and exact
  orthogonal equal-weight factors. Then \(H=S=A_\varnothing=0\). Since the
  Neumann series is entrywise nonnegative,
  \[
    \Theta_{\varnothing;p,M,\ell}
      \ge C_0\Gamma_\star P^{-D_{\rm stat}}
      \quad(\ell\ne p),
  \]
  and hence
  \[
    \|z_p\|_{{\rm root},2}
      \ge c\sqrt r\,P^{-D_{\rm stat}}. \tag{counter-lower}
  \]
  For the exact atom \(q_p\), with common weight \(\tau\),
  \(D_\varnothing=\|T\|_F=\sqrt r\,\tau\),
  \(s_\varnothing=\tau\), \(g^3=\tau\), and
  \(\Delta F_\varnothing=\tau^2/2\). Therefore
  \[
    \mu_\varnothing(q_p)
      \le {\Delta F_\varnothing\over D_\varnothing^2}
      ={1\over2r},
    \qquad
    e_p\le {P^{-D_{\rm stat}}\over2r}. \tag{counter-mu}
  \]
  The binding Raw-J right side at \(\nu_{\rm real}=0\) is consequently at
  most \(C_zP^{-D_{\rm stat}}/(2\sqrt r)\), contradicting
  (counter-lower) for large \(r\).
- Baseline conclusion preserved: the intended exact-target stationary and
  arbitrary-accuracy conclusion is not weakened in this diagnostic. It is
  simply not reachable through the contradictory transaction interface.
- Producer-consumer provenance: intended producer (T), consumers (B), tape
  recovery, PL entry, and final theorem. No legal producer-consumer path
  exists under the binding definitions.
- Null or boundary regime tested: empty prefix,
  \(\nu_{\rm real}=0\), positive adaptive solver tolerance, equal weights,
  and an exact unresolved atom. The same scale conflict persists whenever
  \(\nu_{\rm real}\) is too small to dominate the fixed pad.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: yes. Removing structural leakage does not remove the numerical
  pad; it exposes the contradiction.
- Repair route if source is unsupported: revise the idea/formalized setting.
  A transaction-specific envelope padded by \(e_p\mathbf1\), or a Raw-J
  bound retaining \(\sqrt r P^{-D_{\rm stat}}\), changes the theorem-facing
  interface. Imposing a lower-tail condition to absorb the pad would also
  change the approved contract and contradict the requested raw complement
  branch.

### Exact baseline obligation

- Step ID: N/A; candidate block (P).
- Claim class: exact/noiseless baseline invariance.
- Theorem role: preserve the no-floor arbitrary-accuracy endpoint.
- Mechanism source: exact CP representation, joint-zero unused slots, exact
  rollback, and \(R(Q^\star)=0\).
- Source-to-claim adequacy: these definitions make \(Q^\star\) stationary and
  make failed probes leave the represented tensor unchanged.
- Residual-to-target adequacy: \(Q^\star\) represents the exact same target
  \(T\), so the Frobenius residual is exactly zero.
- Key positive/control term or structural source: exact target equality.
- Opposing defect terms: none at \(H=e=0\); the positive pad in the failed
  Raw-J interface is an analysis-interface defect, not an actual residual.
- Closure/dominance/absorption relation: stationary equality at the target.
- Accumulation behavior / scope compatibility: exact rollback contributes
  zero at every failed trial; the stationary target has zero forcing.
- Obligation locality classification: step-local in isolation, but
  disconnected from discovery by the idea-level Raw-J defect.
- Noncircular closure status: direct from \(R(Q^\star)=0\).
- Entry-state / first-update stress result: if the exact target is reached,
  the terminal gradient is zero and no update is needed; if \(T=0\), the
  all-zero early return already satisfies the theorem.
- Baseline conclusion preserved: yes, as a binding obligation; no finite-error
  surrogate or additive floor is proposed.
- Producer-consumer provenance: exact representation from the setting would
  feed candidate block (P) and final assembly after a valid discovery path.
- Null or boundary regime tested: \(T=0\) and \(H=e=0\).
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without exact target equality the stationary baseline would not
  follow; that source is present.
- Repair route if source is unsupported: N/A for the baseline itself. Repair
  must preserve it while changing the incompatible transaction interface.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Raw-J: \(\|z_p\|_{{\rm root},2}\le C_z(\nu_{\rm real}^2+r\nu_{\rm real}^3+\sqrt r e_p)\) | Candidate block (T), from the binding definitions of \(\Theta_I,z_p,e_p\) | At the empty orthogonal prefix: \(S=A=H=0\); the Neumann inverse is nonnegative; every off-diagonal input contains \(P^{-D_{\rm stat}}\); \(e_p=P^{-D_{\rm stat}}\mu_I\) | Structural terms vanish. The coordinate pad is persistent and uncontrolled by \(e_p\) uniformly because \(\mu_I\le1/(2r)\) at the exact equal-weight atom. | Same \(z_p\), same root,2 norm, no transformed or surrogate object; (counter-lower) versus (counter-mu) is the exact target-side comparison. | Required domination reduces to \(2cr\le C_z\), impossible for fixed \(C_z\) and unbounded \(r\). Neither capture telescoping nor rollback alters this first accepted row. | No setting margin relates \(P^{-D_{\rm stat}}\) to \(e_p\) with an \(r\)-independent factor, and the approved complement branch forbids a new lower-tail absorption. | Candidate block (B), tape recovery, PL entry, final theorem | idea/theorem-contract defect: change the transaction-specific padding or retain \(\sqrt r P^{-D_{\rm stat}}\) in the exported row. |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Once-drawn static event and two-mode contractions | Intended block (S), not assigned a step in this blocked attempt | Intended block (T) | Instance conditioning and label-isolation source | Primitive assumptions -> (S) -> (T) | derived | The local static route is plausible, but no proof graph is emitted after the downstream theorem-contract failure. |
| Unique unresolved-label transaction and Raw-J row | Intended block (T) | Intended block (B) | Legal-prefix extension and accepted-error control | (S) -> (T) -> (B) | derived | Raw-J has no feasible producer under the binding \(\Theta_I,z_p,e_p\) definitions. |
| All-prefix ledger and all-commit tape event | Intended block (B) | Intended block (P) | Same-target chart entry | (T) -> (B) -> (P) | derived | Its required transaction input is false pointwise; a later induction cannot repair the missing producer. |
| PL-chart entry and terminal residual rate | Intended block (P) | Final assembly | Arbitrary relative Frobenius accuracy | (B) -> (P) -> theorem | derived | The exact-target local geometry may be proved independently, but generated chart entry has no legal all-commit producer until the Raw-J contract changes. |

## Sketch Steps

None

## Dependency Notes

No dependency graph is emitted. The intended (S) -> (T) -> (B) -> (P) chain
would be acyclic, and the intended local-prefix pattern would be a conditional
transition lemma followed by a finite induction from the empty prefix.
However, (T) cannot export the exact object required by (B) under the binding
setting. Assigning that contradiction to a future proof step, an induction,
or terminal assembly would violate producer-before-consumer and noncircular
closure requirements.

After an approved idea/setting revision, a fresh sketch should retain the
same exact objective, full-space target-blind procedure, exact rollback,
strictly subquadratic rank, separate probabilities, relative metric, and
no-floor baseline, and should then split the four blocks into the smallest
lemma-sized acyclic graph.

## Blockers

1. **Infeasible Raw-J export (idea/theorem-contract defect).** The
   binding coordinatewise \(P^{-D_{\rm stat}}\mathbf1\) pad forces
   \(\|z_p\|_{{\rm root},2}\ge c\sqrt rP^{-D_{\rm stat}}\) at the empty
   orthogonal prefix, while an exact equal-weight atom has
   \(\mu_I\le1/(2r)\) and makes the binding Raw-J right side at
   \(\nu_{\rm real}=0\) at most
   \(C_zP^{-D_{\rm stat}}/(2\sqrt r)\). A fixed \(C_z\) cannot satisfy both
   bounds for unbounded \(r\).
2. **Required repair changes the formalized interface.** Repair requires at
   least one of: replace the transaction row's fixed pad by an \(e_p\)-scaled
   pad; add the retained \(\sqrt rP^{-D_{\rm stat}}\) class to Raw-J; or add
   a new lower-tail/dominance condition. The first two change the approved
   generated output, and the third changes the theorem conditions and the
   requested complement-branch semantics. None is legal inside
   /proof-sketch under the pinned setting.

