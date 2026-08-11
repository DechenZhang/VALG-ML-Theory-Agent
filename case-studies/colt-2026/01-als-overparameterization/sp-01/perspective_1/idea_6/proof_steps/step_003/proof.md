# Proof Step

## Step Identity

- Sketch attempt: 9
- Step ID: step_003
- Unit attempt: 1
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`

## Target Step Claim

- Intended claim: Show `k p_win >= 8 log r`, all targets are covered with
  probability at least `1/2`, and target labels are used only in the proof.
- Depends on: step_002.
- Assumptions used: `assump:subquadratic-rank`,
  `assump:random-initialization` (primitive), `E_win` (derived).
- Technical challenge: coupon bound without cross-target independence.
- Intended proof tool or cited result: independent-slot binomial miss bound
  and union bound.
- Output target: `E_cov`, one-run probability `p_0`.
- Rate objective: window/coverage objective;
  `k=Theta(r^(5/3)(log r)^(5/2))` independent of `delta_init`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:subquadratic-rank`: for `r>=3`,
    `k=ceil(C_rank r^(5/3)(log r)^(5/2))`, with `r<k<=n`.
  - `assump:random-initialization`: conditional on the once-drawn tensor,
    the raw Gaussian triples are independent and identically distributed
    across the `k` proposal slots.  Independence between target-indexed
    events within a slot is neither stated nor used.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_002` proof (SHA-256
    `5889a06820e1d9d4cb1cde4914b9f6e27c547e36e624613ece2684b5896974cc`)
    and review (SHA-256
    `cba7e61693ade0ed7c18611ef2d88b553f0fbbbdfc214088bf5fc559b7352072`)
    supply, uniformly for every fixed `T in E_sm`, slot `i`, and target
    `j`, the event `E_win(i,j)` and
    \[
    \Pr_{\rm init}(E_{\rm win}(i,j)\mid T)\ge p_{\rm win}(r),\qquad
    p_{\rm win}(r)=c_{\rm win}r^{-5/3}(\log r)^{-3/2},
    \tag{1}
    \]
    where `c_win>0` is universal.  This proof sets
    `c_all:=c_win` to match the accepted sketch notation.  The fixed good
    instance `T in E_sm` is the domain of the accepted dependency statement,
    not a new primitive assumption used here.
- Local conditional hypotheses: None.
- No `proof_history` artifact or unrelated proof step is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under Assumption~\ref{assump:subquadratic-rank} and the accepted `step_002` lower envelope, if `C_rank>=16/c_all`, then `k p_win>=16 log r>=8 log r`. | Preserves the exact rank/window cancellation and fixes the universal rank constant. |
| unit_002 | proposition | Under Assumption~\ref{assump:random-initialization} and the accepted `step_002` event interface, for each fixed target the number of witnessing slots is binomial and its miss probability is at most `exp(-k p_win)`. | Uses only independence across slots. |
| unit_003 | proposition | Under Assumptions~\ref{assump:subquadratic-rank} and~\ref{assump:random-initialization}, the accepted dependency, and the preceding rank and miss results, `E_cov` has conditional probability at least `1-r^(-7)>=1/2=:p_0`, without cross-target independence. | Produces `E_cov` and `p_0`. |
| unit_004 | claim | Under the setting-defined SC-JEP-ALS procedure, target indices and `E_win,E_cov` membership occur only in the analysis; the implemented proposal, certification, filtering, graph, and representative rules do not consume them. | Discharges the proof-only-label claim. |

Atomic step = no.  The rate cancellation, fixed-target miss calculation,
cross-target union, and algorithmic label audit are separate auditable claims.

## Cited Result Applications

### Accepted step_002 window lower envelope

Proposition~\ref{prop:p1-i6-s002-assembly} in the accepted dependency states
in current notation that, for every fixed `T in E_sm`, target `j`, and slot
`i`, (1) holds uniformly, with a universal `c_win>0`.  Its required
assumptions are already discharged in the accepted dependency proof/review.
The present proof uses only (1) and the fact that `E_win(i,j)` is determined
by the raw Gaussian triple in slot `i` once `T,j` are fixed.  It does not use
the dependency's ratio conclusions.

### Independent Bernoulli miss formula

If `I_1,...,I_k` are independent Bernoulli variables with common success
probability `p`, then
\[
\Pr\!\left\{\sum_{i=1}^k I_i=0\right\}=(1-p)^k.
\tag{2}
\]
Here `I_i=1_{E_win(i,j)}` for one fixed `T,j`; slot independence is exactly
Assumption~\ref{assump:random-initialization}.  The elementary inequality
`1-x<=exp(-x)` for `x in [0,1]` follows from
`log(1-x)<=-x` (with the endpoint `x=1` immediate).

### Finite union bound

For arbitrary events `A_1,...,A_r`,
`Pr(union_j A_j)<=sum_j Pr(A_j)`.  This statement requires no independence.
It is applied to the target-miss events, which may be dependent because the
same slot can witness several targets.

### Local-result flow

Lemma~\ref{lem:p1-i6-s003-rank-window} and
Proposition~\ref{prop:p1-i6-s003-target-miss} feed
Proposition~\ref{prop:p1-i6-s003-coverage}.  The latter and
Claim~\ref{claim:p1-i6-s003-proof-labels} jointly produce the complete
target interface.

## Local Derivation

Throughout, fix an arbitrary realized tensor `T in E_sm` and take
probabilities only over the `k` proposal triples in one full run.  Let
`c_all:=c_win` as above.

### unit_001: lemma

**Lemma (Exact rank-window cancellation).**
\label{lem:p1-i6-s003-rank-window}

Under Assumption~\ref{assump:subquadratic-rank} and the accepted
Proposition~\ref{prop:p1-i6-s002-assembly}, if the universal rank constant is
chosen so that `C_rank>=16/c_all`, then, for every `r>=3`,
\[
k p_{\rm win}(r)\ge16\log r\ge8\log r.
\tag{3}
\]

**Proof.** The ceiling in the prescribed rank can only increase its value, so
using (1) and `c_all=c_win`,
\[
\begin{aligned}
k p_{\rm win}(r)
&\ge C_{\rm rank}r^{5/3}(\log r)^{5/2}
       c_{\rm all}r^{-5/3}(\log r)^{-3/2}\\
&=C_{\rm rank}c_{\rm all}\log r
 \ge16\log r\ge8\log r.
\end{aligned}
\tag{4}
\]
The powers of `r` cancel exactly and the logarithmic powers leave exactly one
factor `log r`; no asymptotic comparison or hidden rank factor is used.
\(\square\)

### unit_002: proposition

**Proposition (Independent-slot miss bound for one target).**
\label{prop:p1-i6-s003-target-miss}

Under Assumption~\ref{assump:random-initialization} and accepted
Proposition~\ref{prop:p1-i6-s002-assembly}, fix `T in E_sm` and `j in [r]`,
and define
\[
N_j:=\sum_{i=1}^k {\bf 1}_{E_{\rm win}(i,j)},\qquad
p_j(T):=\Pr_{\rm init}(E_{\rm win}(1,j)\mid T).
\tag{5}
\]
Then, conditionally on `T`, `N_j` is `Bin(k,p_j(T))`,
`p_j(T)>=p_win(r)`, and
\[
\Pr_{\rm init}(N_j=0\mid T)
=(1-p_j(T))^k
\le (1-p_{\rm win}(r))^k
\le e^{-k p_{\rm win}(r)}.
\tag{6}
\]

**Proof.** For fixed `T,j`, the event in slot `i` is the same measurable
function of that slot's raw Gaussian triple.  The triples are i.i.d. across
slots by Assumption~\ref{assump:random-initialization}; hence the indicators
in (5) are i.i.d. Bernoulli with parameter `p_j(T)`.  The accepted dependency
gives `p_j(T)>=p_win(r)`.  Formula (2), monotonicity in the success
probability, and `1-x<=e^{-x}` give (6).  No assertion is made about
independence across different targets. \(\square\)

### unit_003: proposition

**Proposition (Simultaneous all-target coverage).**
\label{prop:p1-i6-s003-coverage}

Under Assumptions~\ref{assump:subquadratic-rank} and
\ref{assump:random-initialization}, accepted
Proposition~\ref{prop:p1-i6-s002-assembly},
Lemma~\ref{lem:p1-i6-s003-rank-window}, and
Proposition~\ref{prop:p1-i6-s003-target-miss}, define
\[
E_{\rm cov}:=\bigcap_{j=1}^r\bigcup_{i=1}^k E_{\rm win}(i,j).
\tag{7}
\]
For every fixed `T in E_sm`,
\[
\Pr_{\rm init}(E_{\rm cov}\mid T)
\ge1-r^{-7}\ge\frac12=:p_0.
\tag{8}
\]
This conclusion does not assume independence between target-indexed events.

**Proof.** The complement of (7) is the union of the `r` miss events
`{N_j=0}`.  The finite union bound, (6), and (3) give
\[
\begin{aligned}
\Pr_{\rm init}(E_{\rm cov}^c\mid T)
&\le\sum_{j=1}^r\Pr_{\rm init}(N_j=0\mid T)\\
&\le r e^{-k p_{\rm win}(r)}
 \le r e^{-8\log r}=r^{-7}.
\end{aligned}
\tag{9}
\]
Because `r>=3`, `1-r^(-7)>=1-3^(-7)>1/2`.  Defining the universal exported
success lower bound as `p_0:=1/2` proves (8).  Equation (9) only sums marginal
miss probabilities; the target miss events may be arbitrarily dependent.
\(\square\)

### unit_004: claim

**Claim (Target indices are proof-only).**
\label{claim:p1-i6-s003-proof-labels}

Under the SC-JEP-ALS procedure fixed in `setting.md`, the target index `j`
and membership in `E_win(i,j)` or `E_cov` are used only to state and prove
the coverage witness.  The proposal dynamics, certification, filtering,
clustering, and representative selection do not consume a target label or
either event.

**Proof.** The implemented proposal phase draws the raw Gaussian triples and
then computes normalized initial vectors, contractions with the observed
tensor `T`, projective residuals `zeta`, scores `sigma_i`, pairwise mode
inner products, graph components, and observable tie breakers.  Every one of
these quantities is a function of `T` and the generated proposal states.
Neither the target index `j`, the target-coordinate inequalities defining
`E_win(i,j)`, nor the coverage intersection (7) appears in an update, gate,
score, graph edge, or tie-breaking rule.  Thus (7) supplies a proof witness
for later analysis but does not alter which slots the algorithm certifies,
retains, clusters, or selects. \(\square\)

## Target-Step Assembly

The accepted Proposition~\ref{prop:p1-i6-s002-assembly} supplies the uniform
per-slot lower envelope (1).  Lemma~\ref{lem:p1-i6-s003-rank-window} applies
the prescribed rank with the universal choice `C_rank>=16/c_all` and proves
the exact requested inequality `k p_win>=8 log r` while preserving the
`r^(5/3)(log r)^(5/2)` rank dependence.  For each fixed target,
Proposition~\ref{prop:p1-i6-s003-target-miss} uses only slot independence to
obtain the binomial miss bound.  Proposition~\ref{prop:p1-i6-s003-coverage}
then uses a target union, not target independence, to produce `E_cov` with
conditional one-run probability at least `1-r^(-7)>=p_0=1/2`.
Claim~\ref{claim:p1-i6-s003-proof-labels} verifies that the target indices
used in this event are absent from the algorithm.  These four named results
prove every part of the exact sketch-row claim and export precisely
`E_cov,p_0` to `step_004`, `step_005`, and `step_010`.

## Explicit Rate Audit

- Exposed variables: `r`, `k`, `C_rank`, `p_win`, `c_all`, and `p_0`; the
  exact interfaces are
  `k=ceil(C_rank r^(5/3)(log r)^(5/2))`,
  `p_win=c_all r^(-5/3)(log r)^(-3/2)`, and `p_0=1/2`.
- Hidden constants may depend on: `C_rank` may depend only on the universal
  `c_all=c_win` produced by `step_002`, hence only on its fixed numerical
  thresholds and finite universal small-r minimum.
- Hidden constants may not depend on: `n`, `kappa_0`, `rho`, `epsilon`,
  `delta_sm`, `delta_init`, the deterministic base triple, the realized good
  tensor `T`, a slot, or a target.
- Fixed quantities: one arbitrary `T in E_sm` and one full run of `k` slots.
- Probability mode: conditional on the fixed once-drawn good instance, over
  proposal randomness in one run.  The conclusion is uniform in that
  instance.  No smoothing or restart probability is merged into this bound.
- Horizon mode: fixed one-run, `k`-slot initialization coverage; no sweep or
  restart horizon is involved.
- Norm mode: event probability for the accepted raw-coordinate window; this
  step asserts no additional norm bound.
- Admissibility conditions and auxiliary tolerances: `r>=3`,
  `C_rank>=16/c_all`, and the two named primitive assumptions.  There is no
  auxiliary confidence tolerance.
- Term absorption or simplification inequalities: equation (4) displays the
  exact polynomial and logarithmic cancellation; no term is absorbed.
- Probability conversion: equations (6) and (9) explicitly perform the
  fixed-target binomial miss bound and target union, yielding
  `Pr(E_cov|T)>=1-r^(-7)>=p_0`.
- Contribution to any Rate Specialization Bridge: `E_cov,p_0` supply the
  one-run success input for later restart amplification.  In particular,
  `delta_init` does not enter `k`; it is handled only by the number of full
  restarts downstream.
- Baseline-reduction check: in the orthogonal equal-weight specialization,
  the accepted one-slot lower envelope remains valid (and may be
  conservative), the same independent-slot and union calculation applies,
  and labels remain proof-only.  This coverage step introduces no residual
  floor, changed rank dependence, or weakening of the exact baseline claim.

## Blockers

None.

## Notation And Assumption Notes

- `p_win` and `E_win` are inherited public-facing dependency outputs.
  `c_all:=c_win` is a public-facing notation bridge from the accepted
  dependency to the accepted sketch; it introduces no new constant.
- `E_cov` and `p_0:=1/2` are the only new public-facing outputs.  `E_cov` is
  a generated event proved by Proposition~\ref{prop:p1-i6-s003-coverage},
  not a primitive assumption.  Its consumers are `step_004`, `step_005`,
  and `step_010`; `p_0` is the universal success lower bound used by the
  restart calculation.
- `p_j(T)` and `N_j` are proof-local.  The sharper lower bound `1-r^(-7)` is
  appendix-local and is not an additional downstream interface.
- `C_rank>=16/c_all` is the explicit universal theorem-constant choice fixed
  by the accepted sketch, not a generated-object condition.  All other
  constants are inherited from `setting.md` or accepted `step_002`.
- `T in E_sm` is the fixed domain in the accepted dependency statement.
  `E_sm` is a derived upstream event, not reclassified here as primitive.
  There are no local conditional generated-object hypotheses.
- The accepted global diagnostic and review (SHA-256
  `a4d5f9953eedd3eced7248328b79839083bbda8a9c246b506a018d529d8f7ffd`
  and
  `1354d398c8555f0864d2b9067a510851296afa22be648290ba363849bae6f2b8`)
  were paired with review status `ACCEPTED`.  Their independent-slot/target
  union split was used only as planning guidance, not as evidence, a cited
  result, an assumption source, or authority to change the target claim.
- This artifact is bound to sketch-9 SHA-256
  `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
  and accepted sketch-review SHA-256
  `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`.
