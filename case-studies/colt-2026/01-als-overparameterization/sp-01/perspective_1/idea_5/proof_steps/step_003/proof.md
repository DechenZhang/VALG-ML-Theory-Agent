# Proof Step

## Step Identity

- Sketch attempt: 8
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
- Output target: `E_cov`, one-run probability `p_0`.
- Rate objective: the window/coverage objective with
  `k=Theta(r^(5/3)(log r)^(5/2))` independent of `delta_init`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:subquadratic-rank`: for `r>=3`,
    
    \[
    k=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil,
    \qquad r<k\le n.
    \]
  - `assump:random-initialization`: conditional on the once-drawn tensor,
    the raw Gaussian triples are mutually independent across the `k` slots.
    The proof does not require independence between different target events
    formed from the same slot.
- Derived invariants supplied by accepted dependencies:
  - The current unit-attempt-2 proof and `ACCEPTED` review for `step_002`,
    specifically Proposition~\ref{prop:step-002-window-event}, supply, on
    every fixed realized instance in `E_sm`, the slot-target events
    `E_win(j)` and the probabilities
    
    \[
    p_{{\rm win},j}:=\Pr(E_{\rm win}(j)\mid\text{fixed instance}),
    \qquad p_{\rm win}:=\min_{j\in[r]}p_{{\rm win},j},
    \]
    
    with the uniform lower bound
    
    \[
    p_{\rm win}\ge
    c_{\rm all}r^{-5/3}(\log r)^{-3/2}.                 \tag{1}
    \]
    
    Here `c_all>0` is universal and depends only on the fixed numerical
    window constants. This proof uses no other conclusion from `step_002`
    and does not directly consume `step_001`.
- Local conditional hypotheses: None. We fix an arbitrary realized instance
  in `E_sm` because the accepted dependency is a conditional-on-instance
  statement. Every bound below is uniform over that fixed instance, so this
  is not an additional theorem-facing condition.

For slot `i` and proof label `j`, let `E_(i,j)` denote the copy of
`E_win(j)` formed from the `i`-th raw Gaussian triple. Define

\[
 \mathsf M_j:=\bigcap_{i=1}^k E_{i,j}^{\mathsf c},
 \qquad
 E_{\rm cov}:=\bigcap_{j=1}^r\bigcup_{i=1}^k E_{i,j}
             =\bigcap_{j=1}^r\mathsf M_j^{\mathsf c},       \tag{2}
\]

and define the one-run coverage probability, conditional on the fixed
instance, by

\[
 p_0:=\Pr(E_{\rm cov}\mid\text{fixed instance}).            \tag{3}
\]

The term "one run" in (3) means one draw of all `k` proposal slots. This
step proves coverage, not the later trajectory, certification, clustering,
or stopping conclusions. Those conclusions have their own producer steps.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:subquadratic-rank} and accepted Proposition~\ref{prop:step-002-window-event}, if the universal theorem constant satisfies `C_rank>=16/c_all`, then `k p_win>=8 log r`, while `k=Theta(r^(5/3)(log r)^(5/2))` with constants independent of `delta_init`. | Matches the rare-window rate to the exact rank and exposes the constant choice. |
| `unit_002` | proposition | Under Assumption~\ref{assump:random-initialization}, accepted Proposition~\ref{prop:step-002-window-event}, and Proposition~\ref{prop:step-003-rank-match}, for every fixed target `j`, `Pr(mathsf M_j | fixed instance)<=r^(-8)`. | Gives the fixed-target coupon miss bound using only independence across slots. |
| `unit_003` | proposition | Under the conclusions of Propositions~\ref{prop:step-003-target-miss} and \ref{prop:step-003-rank-match}, `Pr(E_cov^c | fixed instance)<=r^(-7)` and hence `p_0>=1-r^(-7)>=1/2`, without any cross-target independence assumption. | Produces `E_cov` and its uniform one-run probability. |
| `unit_004` | proposition | Under the SC-JEP-ALS procedure in the formalized setting, the target indices in `E_(i,j)`, `mathsf M_j`, and `E_cov` are analysis labels only: permuting target labels leaves the tensor, the raw tape, every algorithmic operation, and the pathwise algorithmic output unchanged. | Discharges the no-label part of the target claim. |

Atomic step = no. Rank specialization, the independent-slot miss
calculation, the cross-target union, and pathwise label erasure are distinct
claims and are proved separately.

## Cited Result Applications

### Accepted dependency: the per-slot rare-window event

- Source or name: accepted Proposition~\ref{prop:step-002-window-event} from
  the current unit-attempt-2 `step_002` proof, certified by the matching
  current `ACCEPTED` review.
- Restated statement used here: after fixing any realized instance in
  `E_sm`, for each target `j` and each identically distributed proposal slot,
  `E_win(j)` is measurable with respect to that slot's raw Gaussian triple,
  its probability is `p_(win,j)`, and (1) holds for the minimum target
  probability.
- Instantiated objects: the `k` independent copies `E_(i,j)` in (2), with
  the same fixed target `j` when slot independence is invoked.
- Assumptions required by the dependency: the fixed good-instance context
  and Assumption~\ref{assump:random-initialization}; these were discharged in
  the accepted dependency. Assumption~\ref{assump:subquadratic-rank} is not
  used by that dependency and is applied locally below.
- Conclusion used: the exact lower bound (1) and the fact that every slot has
  the same target-specific probability `p_(win,j)`.
- Boundary: the dependency gives no independence across targets, no
  all-target event, and no rank choice. None of those facts is attributed to
  it here.

### Elementary probability facts

No external paper result is used. The proof uses the following elementary
facts, restated and checked in the current notation.

1. If events `A_1,...,A_k` are independent and each has probability `p`,
   then `Pr(intersection_i A_i^c)=(1-p)^k`. This is the defining finite
   product property of independence.
2. For `0<=x<=1`,
   
   \[
   1-x\le e^{-x}.                                           \tag{4}
   \]
   
   Indeed, `f(x)=e^(-x)-(1-x)` has `f(0)=0` and
   `f'(x)=1-e^(-x)>=0`.
3. For finitely many events `A_j`,
   
   \[
   \Pr\left(\bigcup_j A_j\right)\le\sum_j\Pr(A_j).          \tag{5}
   \]
   
   This follows pointwise from
   `1_(union_j A_j)<=sum_j 1_(A_j)` and taking expectations. No
   independence among the `A_j` is involved.

### Local-result use map

- Proposition~\ref{prop:step-003-rank-match} supplies the exponent in the
  miss bound of Proposition~\ref{prop:step-003-target-miss}.
- Proposition~\ref{prop:step-003-target-miss} supplies one marginal miss
  probability per target to Proposition~\ref{prop:step-003-coverage}.
- Proposition~\ref{prop:step-003-coverage} exports `E_cov` and `p_0`.
- Proposition~\ref{prop:step-003-label-erasure} verifies that these
  target-indexed events are proof devices and not algorithmic inputs.

## Local Derivation

### unit_001: proposition

**Proposition (rank-window matching with a confidence-free constant).**
\label{prop:step-003-rank-match}
Under Assumption~\ref{assump:subquadratic-rank} and accepted
Proposition~\ref{prop:step-002-window-event}, fix the universal theorem
constant so that

\[
 C_{\rm rank}\ge {16\over c_{\rm all}}.                     \tag{6}
\]

Then, for every `r>=3` and every fixed realized instance in `E_sm`,

\[
 k p_{\rm win}\ge 8\log r.                                 \tag{7}
\]

Moreover,

\[
 k=\Theta\left(r^{5/3}(\log r)^{5/2}\right),                \tag{8}
\]

where both comparison constants are universal and neither depends on
`delta_init`.

**Proof.** Combining the exact ceiling formula for `k` with (1) gives

\[
\begin{aligned}
 k p_{\rm win}
 &\ge C_{\rm rank}r^{5/3}(\log r)^{5/2}
       c_{\rm all}r^{-5/3}(\log r)^{-3/2}\\
 &=C_{\rm rank}c_{\rm all}\log r
 \ge16\log r
 \ge8\log r.                                                \tag{9}
\end{aligned}
\]

Thus the ceiling causes no loss. To verify (8) rather than hide it in
asymptotic notation, put `B_r=r^(5/3)(log r)^(5/2)`. Since `r>=3` implies
`B_r>=1`,

\[
 C_{\rm rank}B_r\le k\le C_{\rm rank}B_r+1
                    \le(C_{\rm rank}+1)B_r.                 \tag{10}
\]

The accepted constant `c_all` depends only on the fixed numerical window
constants, so the choice (6), and hence both constants in (10), is universal.
In particular, no accuracy or confidence parameter enters `k`. \(\square\)

### unit_002: proposition

**Proposition (fixed-target miss probability from slot independence).**
\label{prop:step-003-target-miss}
Under Assumption~\ref{assump:random-initialization}, accepted
Proposition~\ref{prop:step-002-window-event}, and
Proposition~\ref{prop:step-003-rank-match}, fix a realized instance in
`E_sm` and a target `j`. Then

\[
 \Pr(\mathsf M_j\mid\text{fixed instance})
 =(1-p_{{\rm win},j})^k
 \le e^{-k p_{{\rm win},j}}
 \le r^{-8}.                                                 \tag{11}
\]

This conclusion uses no relation among the events for two different target
labels.

**Proof.** Conditional on the fixed instance, `E_(i,j)` is measurable with
respect to the `i`-th raw Gaussian triple. Assumption~\ref{assump:random-initialization}
makes those triples independent across `i`, and the proposal slots are
identically distributed. Therefore the events
`E_(1,j),...,E_(k,j)` are independent and all have probability
`p_(win,j)`. The exact product formula and (4) give

\[
 \Pr(\mathsf M_j\mid\text{fixed instance})
 =(1-p_{{\rm win},j})^k
 \le e^{-k p_{{\rm win},j}}.                                \tag{12}
\]

By the definition of the minimum probability,
`p_(win,j)>=p_win`. Proposition~\ref{prop:step-003-rank-match} then gives

\[
 e^{-k p_{{\rm win},j}}
 \le e^{-k p_{\rm win}}
 \le e^{-8\log r}=r^{-8}.                                   \tag{13}
\]

The boundary cases cause no problem: if `p_(win,j)=1`, the miss probability
is zero; otherwise every displayed logarithm-free probability inequality is
valid on `[0,1]`. No event for a second target was conditioned on or
multiplied. \(\square\)

### unit_003: proposition

**Proposition (simultaneous coverage without cross-target independence).**
\label{prop:step-003-coverage}
Under the conclusions of Propositions~\ref{prop:step-003-rank-match} and
\ref{prop:step-003-target-miss}, for every fixed realized instance in
`E_sm`, the event in (2) satisfies

\[
 \Pr(E_{\rm cov}^{\mathsf c}\mid\text{fixed instance})
 \le r^{-7},
 \qquad
 p_0\ge1-r^{-7}\ge\frac12.                                  \tag{14}
\]

The bound remains valid under arbitrary dependence among the target events
inside any one slot.

**Proof.** By the finite set identity in (2), failure of simultaneous
coverage is exactly the union of the target-miss events:

\[
 E_{\rm cov}^{\mathsf c}=\bigcup_{j=1}^r\mathsf M_j.         \tag{15}
\]

Apply the union bound (5), not an independence formula, and then
Proposition~\ref{prop:step-003-target-miss} separately for each target:

\[
 \Pr(E_{\rm cov}^{\mathsf c}\mid\text{fixed instance})
 \le\sum_{j=1}^r
      \Pr(\mathsf M_j\mid\text{fixed instance})
 \le r\,r^{-8}=r^{-7}.                                      \tag{16}
\]

Since `r>=3`, `r^(-7)<=3^(-7)<1/2`. Taking complements and using (3) proves
(14). The accepted dependency already incorporated its explicit finite-r
window constant into `c_all`; consequently no additional rank-dependent or
confidence-dependent small-r adjustment is needed here. \(\square\)

### unit_004: proposition

**Proposition (target labels are proof-only).**
\label{prop:step-003-label-erasure}
Under the SC-JEP-ALS procedure in the formalized setting, fix a realized
tensor and all raw proposal randomness. The target indices appearing in
`E_(i,j)`, `mathsf M_j`, and `E_cov` are used only to analyze that fixed
path. For every permutation of `[r]`, relabeling

\[
 (\lambda_j,u_j,v_j,w_j)_{j=1}^r
 \quad\text{as}\quad
 (\lambda_{\pi(j)},u_{\pi(j)},v_{\pi(j)},w_{\pi(j)})_{j=1}^r
                                                                    \tag{17}
\]

leaves the represented tensor, every algorithmic operation, and the
pathwise SC-JEP-ALS output unchanged. It merely permutes the proof events in
(2). Thus no target label is an algorithmic input to the coverage mechanism.

**Proof.** The sum defining the tensor is invariant under (17):

\[
 \sum_{j=1}^r\lambda_{\pi(j)}u_{\pi(j)}\otimes
 v_{\pi(j)}\otimes w_{\pi(j)}
 =\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j=T.         \tag{18}
\]

For a fixed random tape, initialization normalizes the three raw Gaussian
vectors in each slot and does not read `j`. Every subsequent proposal update
is a contraction with `T`; certification uses `zeta`; filtering uses
\(\sigma_i=|\langle T,p_i\otimes q_i\otimes s_i\rangle|\); and the graph
uses observable modewise inner products. The representative rule, balanced scalar
initialization, active least-squares updates, residual stopping rule, and
restart comparison likewise use only `T`, the generated states, and fixed
numerical constants. Hence (18) makes the entire path identical after a
target relabeling.

By contrast, `E_(i,j)` is defined by comparing the `i`-th raw coordinates
with the `j`-th realized factors. Under (17), `E_(i,j)` is renamed
`E_(i,pi(j))`; the family is permuted. Because `E_cov` intersects over the
entire target set, its truth value is unchanged. Any target-to-slot witness
extracted from `E_cov` is therefore proof bookkeeping used by downstream
arguments, not information supplied to the algorithm. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-002-window-event} supplies the uniform
per-target, per-slot lower probability. Proposition~\ref{prop:step-003-rank-match}
multiplies that exact rate by the setting's exact rank and makes the universal
choice of `C_rank`, obtaining `k p_win>=8 log r` while preserving
`k=Theta(r^(5/3)(log r)^(5/2))` with no `delta_init` dependence.

For each fixed target, Proposition~\ref{prop:step-003-target-miss} uses only
the independent proposal slots to obtain miss probability at most `r^(-8)`.
Proposition~\ref{prop:step-003-coverage} then applies a plain union bound over
the `r` target misses, so arbitrary within-slot and cross-target dependence is
allowed; it exports `E_cov` and the uniform one-run bound
`p_0>=1-r^(-7)>=1/2`. Finally,
Proposition~\ref{prop:step-003-label-erasure} proves pathwise that all target
indices used to define those events are proof labels and that the algorithm
is unchanged by their permutation. These four named propositions establish
the exact `step_003` claim.

## Explicit Rate Audit

- Exposed variables: `r`, the ambient admissibility parameter `n`, `k`,
  `p_win`, the exact rank constant `C_rank`, the inherited universal lower
  constant `c_all`, the one-run coverage probability `p_0`, and
  `delta_init` solely to record that it does not enter `k`.
- Hidden constants may depend on: only the fixed numerical window constants
  through the inherited `c_all`; the displayed valid choice is
  `C_rank>=16/c_all`.
- Hidden constants may not depend on: `n`, `kappa_0`, `rho`, the deterministic
  base triple, the fixed realized instance, `epsilon`, `delta_sm`,
  `delta_init`, or any generated condition number.
- Fixed quantities: an arbitrary realized instance in `E_sm` is fixed before
  proposal probability is taken. The target is fixed only for the marginal
  miss calculation and is then unioned over all `r` labels.
- Probability mode: conditional probability over one full run's `k`
  proposal slots, uniformly for every fixed good instance. Slot independence
  is used only with a fixed target. Cross-target independence is neither
  stated nor used. This step is not multiplied by the smoothing probability
  and does not perform restart amplification.
- Horizon mode: fixed initialization coverage for the finite set of `k`
  slots in one run. There is no burn-in, certification-horizon, all-time, or
  restart claim.
- Norm mode: no norm estimate is introduced. The accepted dependency's raw
  coordinate event is used only through its scalar probability interface.
- Admissibility conditions and auxiliary tolerances: `r>=3`, the setting
  condition `r<k<=n`, and the universal theorem-constant choice (6). There is
  no accuracy or confidence tolerance in the coverage rank.
- Term absorption or simplification inequalities: (9) is the exact rate
  multiplication; (10) proves the two-sided `Theta` statement including the
  ceiling; (12)--(13) prove the fixed-target miss; and (16) gives the exact
  finite union `r*r^(-8)=r^(-7)`.
- Probability conversion: (12) uses genuine cross-slot independence for one
  target; (16) uses only the union bound across targets; `r>=3` gives
  `1-r^(-7)>=1/2`. The finite-small-r part is already present in the
  inherited constant `c_all`.
- Contribution to any Rate Specialization Bridge: this step exports a
  universal constant one-run coverage source at exact rank
  `Theta(r^(5/3)(log r)^(5/2))`. Later restart amplification may spend
  `O(log(1/delta_init))` independent runs; it need not and must not enlarge
  `k`.
- Baseline-reduction check: in the orthogonal equal-weight specialization,
  accepted Proposition~\ref{prop:step-002-window-event} retains the same
  lower bound with vanishing regression means. Equations (9)--(16) are
  otherwise unchanged, so coverage introduces no baseline error floor or
  probability-mode loss.

## Blockers

None.

## Notation And Assumption Notes

- `E_(i,j)` is an `appendix-local` slot copy of the accepted
  `public-facing` event `E_win(j)`; it is defined from the setting's `i`-th
  raw Gaussian triple and introduces no new generated assumption.
- `mathsf M_j` is a `proof-local` miss event. `E_cov` and `p_0` are the
  minimal `public-facing` outputs consumed downstream. `E_cov` is proved in
  Proposition~\ref{prop:step-003-coverage}; it is not assumed as a primitive
  condition.
- `p_(win,j)`, `p_win`, and `c_all` are inherited from accepted
  Proposition~\ref{prop:step-002-window-event}. Their probability and
  constant provenance are not redefined here.
- `C_rank` is a `public-facing` setting constant. Its lower choice (6) is
  proved sufficient by Proposition~\ref{prop:step-003-rank-match}; it is not
  a data-dependent, confidence-dependent, or generated-object condition.
- `B_r=r^(5/3)(log r)^(5/2)` is a `proof-local` abbreviation used only to
  display the ceiling comparison (10). The elementary test function `f` in
  the proof of (4) and the generic events `A_i,A_j` in the probability facts
  are also `proof-local` verification devices and are not exported.
- The fixed-instance conditioning is the probability context of the
  accepted dependency. The proof is uniform in that instance and directly
  consumes no artifact or conclusion from `step_001`.
- The target indices, their permutation in (17), and any target-to-slot
  witness extracted on `E_cov` are `proof-local`. The pathwise algorithm
  remains label-free by Proposition~\ref{prop:step-003-label-erasure}.
- All generated events used in the target assembly have explicit producers:
  `E_win,p_win` come from the accepted dependency, while `E_cov,p_0` are
  proved in this step. No trajectory, certification, clustering, basin, or
  stopping invariant is assumed.
- The accepted `global_proof.md` was read only after confirming that its
  paired `global_proof_review.md` has status `ACCEPTED`. Its step-relevant
  planning suggestion was the independent-slot miss calculation followed by
  a target union and a label-erasure check. No diagnostic statement was used
  as evidence, a cited result, an assumption source, or authority to change
  the target claim.
