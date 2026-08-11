# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Show `k p_win >= 8 log r`, all targets are covered with
  probability at least `1/2`, and target labels are used only in the proof.
- Depends on: `step_002`.
- Assumptions used: `assump:subquadratic-rank` and
  `assump:random-initialization` (primitive), and `E_win` (derived).
- Technical challenge: coupon bound without cross-target independence.
- Intended proof tool or cited result: independent-slot binomial miss bound
  and union bound.
- Output target: `E_cov` and one-run probability `p_0`.
- Rate objective: Window/coverage objective;
  `k=Theta(r^(5/3)(log r)^(5/2))` independent of `delta_init`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:subquadratic-rank}: for the theorem's universal
    rank constant `C_rank`,
    \[
      k=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil,
      \qquad r<k\le n.
    \]
  - Assumption~\ref{assump:random-initialization}: conditional on the
    once-drawn tensor, the raw Gaussian proposal triples are mutually
    independent across slots and have the same law in every slot. This step
    uses no independence between two different target labels in one slot.
- Derived invariants supplied by accepted dependencies:
  - For every fixed realized tensor `T` in the accepted static event `E_sm`,
    the accepted `step_002` artifact defines `E_win(i,j)` and
    \[
      p_{{\rm win},j}(T):=\Pr(E_{\rm win}(i,j)\mid T),\qquad
      p_{\rm win}(T):=\min_{j\in[r]}p_{{\rm win},j}(T),
    \]
    and proves, for one universal `c_all>0`,
    \[
      p_{{\rm win},j}(T)\ge p_{\rm win}(T)
      \ge c_{\rm all}r^{-5/3}(\log r)^{-3/2}.              \tag{1}
    \]
    Thus `E_win` and its probability are derived outputs; they are not
    theorem assumptions. The occurrence of `E_sm` is the accepted
    dependency's conditional domain, not a primitive condition introduced
    by this step.
- Local conditional hypotheses:
  - The proof first fixes one tensor `T` satisfying `E_sm` and, inside the
    miss calculation, one proof-only target `j`. Both choices are discharged
    uniformly before `E_cov` and `p_0` are exported.
- Universal design-constant choice:
  - Choose the theorem's rank constant once so that
    `C_rank>=16/c_all`. This is permitted by the formalized goal's universal
    choice of `C_rank`; because `c_all` is universal, it introduces no
    instance-, confidence-, or accuracy-dependent condition.
- Accepted dependency artifacts:
  - `perspective_1/idea_6/proof_steps/step_002/proof.md`, sketch attempt 2,
    unit attempt 1, frozen SHA-256
    `401650914ed192f87bedf38edd9b10789c41f92cb8ff3519a50e6fbf486ac77b`,
    with `Step Proof Status = COMPLETE`.
  - `perspective_1/idea_6/proof_steps/step_002/review.md`, frozen SHA-256
    `8e0f16c6408d2b31063fd79f635cf1e4ac7b7a9e65ade86c9dbedbdf62672b5b`,
    with `Step-Review Status = ACCEPTED`.

No coverage event, target-chart membership, certification event, clustering
fact, or cross-target independence is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:subquadratic-rank} and the accepted `step_002` window-rate conclusion, if `C_rank>=16/c_all`, then on every fixed `T` in `E_sm`, `k p_win(T)>=16 log r>=8 log r`. | Cancels the polynomial and logarithmic window rarity against the declared rank without any confidence factor. |
| `unit_002` | lemma | Under Assumption~\ref{assump:random-initialization}, the accepted `step_002` window-rate conclusion, and Lemma~\ref{lem:p1-i6-s2-step003-intensity}, if a fixed proof-only target `j` is considered on a fixed `T` in `E_sm`, then the probability that all `k` independent slots miss that target is at most `r^(-8)`. | Gives a per-target coupon miss bound using slot independence only. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:subquadratic-rank} and~\ref{assump:random-initialization}, the accepted `step_002` conclusion, and Lemmas~\ref{lem:p1-i6-s2-step003-intensity} and~\ref{lem:p1-i6-s2-step003-fixed-target-miss}, the proof-only all-target event `E_cov` has conditional probability at least `1-r^(-7)>=1/2`; its universal lower envelope `p_0` has the same bound, and neither `E_cov` nor any target label is supplied to SC-JEP-ALS. | Exports exactly `E_cov,p_0` by a target union bound that requires no cross-target independence and verifies label erasure. |

Atomic step = no. Rank-rate cancellation, a fixed-target independent-slot
miss calculation, and the cross-target union/label-erasure assembly are
separate auditable claims.

## Cited Result Applications

1. **Accepted dependency: Three-mode proposal window and ratio transfer.**
   The accepted `step_002` proof and review, with the exact hashes listed
   above, establish in the current branch notation that, conditional on any
   fixed `T` in `E_sm`, every slot-target event `E_win(i,j)` has probability
   `p_(win,j)(T)` and that the uniform envelope (1) holds with a universal
   `c_all>0`. The present proof instantiates only this event/probability
   interface. It does not import the dependency's ratio conclusions or any
   sketch-attempt-1 artifact.

2. **Elementary exponential miss inequality.** For every `x in [0,1]` and
   integer `m>=0`,
   \[
      (1-x)^m\le e^{-mx}.                                  \tag{2}
   \]
   Indeed, `1-x<=e^(-x)` follows because
   `f(x)=e^(-x)-(1-x)` has `f(0)=0` and
   `f'(x)=1-e^(-x)>=0`; raising nonnegative sides to the `m`th power proves
   (2). In Lemma~\ref{lem:p1-i6-s2-step003-fixed-target-miss}, set
   `x=p_(win,j)(T)` and `m=k`.

3. **Setting-defined label-free procedure.** The SC-JEP-ALS procedure draws
   raw Gaussian slots, applies the old-state Jacobi map, evaluates `zeta`,
   filters by the observable scores, and builds the observable correlation
   graph. Its setting definition explicitly supplies no target label to any
   of those operations. Proposition~\ref{prop:p1-i6-s2-step003-coverage}
   uses this procedural fact only to distinguish the proof event `E_cov`
   from an algorithmic gate.

No external paper result is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Rank-window intensity).**
\label{lem:p1-i6-s2-step003-intensity}
Under Assumption~\ref{assump:subquadratic-rank} and the accepted `step_002`
window-rate conclusion, if the universal design constant satisfies
`C_rank>=16/c_all`, then for every `r>=3` and every fixed realized tensor `T`
in `E_sm`,
\[
  k p_{\rm win}(T)\ge16\log r\ge8\log r.                 \tag{3}
\]

**Proof / justification.**
The ceiling in Assumption~\ref{assump:subquadratic-rank} and (1) give
\[
\begin{aligned}
 k p_{\rm win}(T)
 &\ge C_{\rm rank}r^{5/3}(\log r)^{5/2}
       c_{\rm all}r^{-5/3}(\log r)^{-3/2}\\
 &=C_{\rm rank}c_{\rm all}\log r
 \ge16\log r.
\end{aligned}                                                \tag{4}
\]
Because `r>=3`, `log r>0`, so the last quantity is also at least
`8 log r`. The cancellation in (4) is exact: no asymptotic absorption and no
confidence parameter is present. \(\square\)

### unit_002: lemma

**Lemma (Fixed-target independent-slot miss bound).**
\label{lem:p1-i6-s2-step003-fixed-target-miss}
Under Assumption~\ref{assump:random-initialization}, the accepted `step_002`
window-rate conclusion, and Lemma~\ref{lem:p1-i6-s2-step003-intensity}, fix
one realized tensor `T` in `E_sm` and one proof-only target `j`. Then
\[
 \Pr\!\left(\bigcap_{i=1}^k E_{\rm win}(i,j)^c\,\middle|\,T\right)
 \le r^{-8}.                                                \tag{5}
\]

**Proof / justification.**
For fixed `T,j`, the event `E_win(i,j)` is a function of `T` and the raw
Gaussian triple in slot `i`. Assumption~\ref{assump:random-initialization}
makes those triples independent and identically distributed across `i`.
Consequently the events in (5) are independent across slots for this fixed
target, and
\[
 \Pr\!\left(\bigcap_{i=1}^k E_{\rm win}(i,j)^c\,\middle|\,T\right)
   =\bigl(1-p_{{\rm win},j}(T)\bigr)^k.                    \tag{6}
\]
Applying (2), then `p_(win,j)(T)>=p_win(T)`, and finally (3), gives
\[
 \bigl(1-p_{{\rm win},j}(T)\bigr)^k
 \le e^{-k p_{{\rm win},j}(T)}
 \le e^{-k p_{\rm win}(T)}
 \le e^{-8\log r}=r^{-8}.                                 \tag{7}
\]
This calculation says nothing about, and requires nothing from, the joint
law of `E_win(i,j)` and `E_win(i,j')` for `j!=j'`. \(\square\)

### unit_003: proposition

**Proposition (All-target coverage without label dependence).**
\label{prop:p1-i6-s2-step003-coverage}
Under Assumptions~\ref{assump:subquadratic-rank} and
\ref{assump:random-initialization}, the accepted `step_002` conclusion, and
Lemmas~\ref{lem:p1-i6-s2-step003-intensity} and
\ref{lem:p1-i6-s2-step003-fixed-target-miss}, define the proof-only event
\[
 E_{\rm cov}:=\bigcap_{j=1}^r\bigcup_{i=1}^k E_{\rm win}(i,j).       \tag{8}
\]
For every fixed realized tensor `T` in `E_sm`,
\[
 \Pr(E_{\rm cov}\mid T)\ge1-r^{-7}\ge {1\over2}.           \tag{9}
\]
Therefore the uniform one-run coverage probability
\[
 p_0:=\inf_{T:\,E_{\rm sm}(T)\ {\mathrm{holds}}}
             \Pr(E_{\rm cov}\mid T)                       \tag{10}
\]
satisfies `p_0>=1-r^(-7)>=1/2`. The labels in (8) are analysis indices only:
neither `j` nor membership in `E_cov` is queried by or supplied to the
SC-JEP-ALS proposal, certification, filtering, or clustering rules.

**Proof / justification.**
The complement of (8) is the event that at least one target is missed by all
slots. By the union bound and
Lemma~\ref{lem:p1-i6-s2-step003-fixed-target-miss},
\[
\begin{aligned}
 \Pr(E_{\rm cov}^c\mid T)
 &=\Pr\!\left(
      \bigcup_{j=1}^r\bigcap_{i=1}^k E_{\rm win}(i,j)^c
      \,\middle|\,T\right)\\
 &\le\sum_{j=1}^r
      \Pr\!\left(\bigcap_{i=1}^k E_{\rm win}(i,j)^c
      \,\middle|\,T\right)
 \le r\,r^{-8}=r^{-7}.                                    \tag{11}
\end{aligned}
\]
The union bound in (11) is valid for arbitrary dependence among different
targets. Since `r>=3`, `r^(-7)<=3^(-7)<1/2`, which proves (9). The right-hand
side is uniform over all fixed `T` in `E_sm`, so taking the infimum in (10)
proves the asserted bound on `p_0`.

Finally, (8) is only a proof certificate that each latent target has at least
one witness among the already drawn slots. The setting-defined algorithm
does not evaluate (8): it applies identical target-free operations to the
slots and later uses only `zeta`, tensor scores, and pairwise mode
correlations. Thus conditioning later arguments on `E_cov` does not change
the procedure or introduce a target-label oracle. \(\square\)

## Target-Step Assembly

The accepted `step_002` dependency supplies the exact per-slot event and the
uniform lower rate (1). Lemma~\ref{lem:p1-i6-s2-step003-intensity} combines
that rate with the exact rank in
Assumption~\ref{assump:subquadratic-rank} and proves the requested
`k p_win>=8 log r` inequality. For each fixed target,
Lemma~\ref{lem:p1-i6-s2-step003-fixed-target-miss} uses only the slotwise
independence in Assumption~\ref{assump:random-initialization} to obtain the
`r^(-8)` miss probability. Proposition~\ref{prop:p1-i6-s2-step003-coverage}
then unions over targets without any cross-target independence, exports
`E_cov` and `p_0>=1/2`, and verifies from the setting-defined procedure that
all target labels remain proof-only. These conclusions are exactly the
accepted sketch-2 row.

## Explicit Rate Audit

- Exposed variables: `r`,
  `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, the conditional probabilities
  `p_(win,j)(T),p_win(T)`, the coverage event `E_cov`, and its uniform
  lower probability `p_0`.
- Hidden constants may depend on: only the accepted universal Gaussian
  window constant `c_all`; the theorem constant is chosen explicitly as any
  universal `C_rank>=16/c_all`.
- Hidden constants may not depend on: `n,r,k,kappa_0,rho`, the deterministic
  base triple, the fixed realized tensor in `E_sm`, the slot or target,
  `delta_sm,delta_init,epsilon`, proposal horizons, or any generated
  condition number.
- Fixed quantities: `T` is fixed in `E_sm` when proposal probabilities are
  taken; `r,k` and the universal proposal constants are fixed for the run.
- Probability mode: conditional on every fixed realized tensor in `E_sm`,
  over the `k` proposal slots in one full run. The output is uniform in `T`
  and yields the deterministic lower envelope `p_0>=1/2`.
- Horizon mode: static one-run coverage at initialization, before any Jacobi
  commit. This is neither an all-time claim nor a restart amplification.
- Norm mode: no vector-norm rate is asserted. The quantitative objects are
  scalar event probabilities and the finite target/slot unions.
- Admissibility conditions and auxiliary tolerances: exactly `r>=3`,
  Assumptions~\ref{assump:subquadratic-rank} and
  \ref{assump:random-initialization}, the accepted derived `E_win` interface
  on `E_sm`, and the universal theorem choice `C_rank>=16/c_all`. There is no
  auxiliary confidence or numerical tolerance.
- Term absorption or simplification inequalities:
  \[
    k p_{\rm win}(T)\ge C_{\rm rank}c_{\rm all}\log r
       \ge16\log r\ge8\log r,
  \]
  \[
    (1-p_{{\rm win},j}(T))^k\le e^{-k p_{\rm win}(T)}
       \le r^{-8},\qquad
    r\cdot r^{-8}=r^{-7}\le3^{-7}<{1\over2}.
  \]
  No term is dropped or described only asymptotically.
- Probability conversion: independence is used only across slots after
  fixing one target. Arbitrary dependence across targets is allowed; the
  conversion to simultaneous coverage is the explicit finite union (11).
- Contribution to any Rate Specialization Bridge: the exact cancellation of
  `r^(5/3)(log r)^(5/2)` against the accepted window rate produces a
  logarithmic coupon intensity. Neither `C_rank` nor `k` depends on
  `delta_init`; the later restart step alone will use `delta_init`.
- Baseline-reduction check: in the orthogonal equal-weight deterministic
  specialization, the accepted `step_002` rate remains valid (with zero
  competitor shifts). The same intensity and union calculation therefore
  gives `E_cov,p_0` without a new error floor or any change to the exact
  baseline conclusion.

## Blockers

None.

## Notation And Assumption Notes

- `E_win(i,j)`, `p_(win,j)(T)`, `p_win(T)`, and `c_all` are
  `public-facing` accepted dependency objects translated exactly from
  `step_002`; no property beyond (1) is imported.
- `C_rank` is a `public-facing` setting design constant. Its lower threshold
  `16/c_all` is directly defined from the accepted universal dependency
  constant and fixed once for all instances; it is not a generated
  boundedness condition.
- The fixed tensor `T in E_sm` and fixed target `j` are `proof-local`
  conditional choices. The tensor condition is inherited as the dependency's
  probability domain, and the target choice is removed by the finite union.
- `E_cov` and `p_0` are the only new `public-facing` outputs. `E_cov` is
  proved in Proposition~\ref{prop:p1-i6-s2-step003-coverage}; it is a derived
  run event, not a primitive assumption or an observable algorithmic gate.
- The target-miss intersections and target union in (11) are `proof-local`
  bookkeeping objects. They add no helper constant, margin, or hidden event.
- Cross-slot independence for a fixed target is primitive under
  Assumption~\ref{assump:random-initialization}. Cross-target independence is
  neither primitive nor derived and is not used.
- The accepted sketch-2 `global_proof.md`, SHA-256
  `cc2840004ec9cc0f943dd6003c8c146301159403089bae3db51e24106f55ae98`,
  was read only after verifying that its paired review, SHA-256
  `2f203ae42ff3870e12d2a050e5cadf07f97f367f71d7a306506435b03779b35b`,
  has `Global-Proof Review Status = ACCEPTED`. Its suggestion to use a
  fixed-target slot miss calculation followed by a target union guided the
  local decomposition. Every inequality is independently proved above; the
  diagnostic is not evidence, a cited result, an assumption source, or
  authority to change the target claim.
- No sketch-attempt-1 proof or archived artifact is used as current evidence.
