# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_003 proof SHA-256: 2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551
- Accepted dependency step_003 review SHA-256: 046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527
- Accepted dependency step_011 proof SHA-256: 261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0
- Accepted dependency step_011 review SHA-256: 9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af

## Target Step Claim

The accepted sketch row is:

> Convert the accepted quotient recurrence to the original residual stopping
> rule; configure the finite cap
> m_cap = ceil(C_stop log(8 kappa_0^2/epsilon)) for every tape; handle
> Moore--Penrose singular branches; charge the dense unfolding runtime; and
> amplify the covered-run success to at least 1-delta_init over
> J = O(log(1/delta_init)) independent restarts.

The output interfaces are the generated stopping event E_stop, the all-tape
finite-work event E_run_cap, and the conditional restart event E_restart. The
residual in this step is the setting's original relative Frobenius residual,
not a quotient surrogate.

- Depends on: step_003 and step_011.
- Assumptions used: assump:random-initialization and
  assump:accuracy-confidence (primitive), together with E_cov and E_basin as
  derived interfaces.
- Technical challenge: separate cap/nonhitting behavior from the covered
  contraction path, retain legal Moore--Penrose behavior on singular designs,
  and keep the two confidence modes nested rather than multiplying them into
  the rank choice.
- Intended proof tools: a target-side quotient-to-Frobenius comparison,
  geometric stopping, an observable counter, dense unfolding cost accounting,
  and an independent-failure product.
- Output target: E_stop, E_run_cap, and E_restart.
- Rate objective: m_cap=ceil(C_stop log(8 kappa_0^2/epsilon)) and
  J=O(log(1/delta_init)), with runtime polynomial in the variables exposed by
  the setting.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:random-initialization: conditional on the once-drawn tensor, raw
  Gaussian proposal triples in distinct slots and in distinct complete runs
  are independent. Restarts reuse the tensor but draw fresh proposal tapes.
- assump:accuracy-confidence: 0 < epsilon < 1 and 0 < delta_init < 1, with
  the confidence parameter applying to the conditional restart experiment.
  The setting-defined finite dimensions and Moore--Penrose CP-ALS procedure
  are fixed as well.

The rank formula k=U(r), proposal horizons, and inactive-column zero padding
are setting-defined objects and are used through the accepted step-003
interface; they are not additional trajectory assumptions.

### Derived invariants supplied by accepted dependencies

- Coverage interface (step_003). On any fixed realized instance in the
  accepted E_sm domain, the proof-only event E_cov has
  \[
  \Pr(E_{\rm cov}\mid{\cal F}_{\rm sm})\ge p_0,\qquad p_0:=26/27.
  \tag{A1}
  \]
  The event is over one complete proposal tape; target labels and witnesses
  are not read by the algorithm.
- Basin interface (step_011). On the covered path, the preceding
  deterministic producers emit an exact-span state e^0=e^land with
  \[
  x_0:=d_Q(e^0,0)\le4096\omega<\rho_{\rm ALS}/3,\qquad
  x_{t+1}\le\ell x_t,\quad \ell:=17/512<1/16,
  \tag{A2}
  \]
  for each completed cyclic sweep in the generated basin. The same
  dependency proves literal ALS/Refresh_s equivalence, exact target-span
  invariance, and positive active products on this path. E_basin is a
  generated invariant, not a primitive condition.
- Static geometry. The step-011 interface includes q_real <= q_*, unit
  realized directions, the target Khatri--Rao Gram floor 1-q_*^2, and
  kappa_0 >= 1 on E_sm.

### Local conditional hypotheses

- In the residual-transfer lemma, the state is locally an exact-span,
  positively oriented, balanced state with d_Q(e,0) <= rho_ALS. Step_011
  proves this for every state on E_basin; it is not assumed for an arbitrary
  tape.
- A relative residual test is made only when ||T||_F > 0. On E_sm the
  target Khatri--Rao floor and positive realized weights imply this. A
  zero-denominator instance is an observable unsuccessful branch and gets no
  convergence assertion.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under E_sm and E_basin, an exact-span balanced state e with x=d_Q(e,0)<=rho_ALS satisfies ||T-T_hat(e)||_F/||T||_F <= 5x <= 8 kappa_0^2 x. | Converts quotient error to the original stopping metric without a dimension-dependent l1 loss. |
| unit_002 | proposition | On E_basin, the residual after t sweeps is at most 8 kappa_0^2 ell^t, and the declared cap with C_stop log(512/17)>=1 contains a successful test. | Chooses the cap and proves the covered path hits before it. |
| unit_003 | proposition | For every fixed E_sm instance and every proposal tape, all gates, Moore--Penrose calls, and at most m_cap cyclic sweeps have finite observable work; singular/off-event tapes receive no basin claim and either stop at a gate or time out. | Separates cap/nonhitting behavior from good-path convergence. |
| unit_004 | proposition | In dense arithmetic, one complete run costs at most W_run in (13), including proposal, score/filter/cluster, three landing solves, rebalance, residual tests, and capped cyclic sweeps; no condition number occurs. | Supplies the polynomial runtime interface. |
| unit_005 | proposition | With J=max{1,ceil(C_rep log(1/delta_init))} and C_rep>=1/log 27, independent completed runs fail jointly with probability at most delta_init; the smallest-residual successful output has residual at most epsilon. | Amplifies one-run coverage to the requested conditional confidence. |

## Cited Result Applications

1. Accepted step-003 coupon interface. The hash-matched dependency proves
   (A1), conditional over the independent slot tape and without independence
   across target labels. Its proof-only witnesses are used only to identify
   the covered branch.
2. Accepted step-011 cyclic interface. The hash-matched dependency proves
   (A2), exact-span/positive-product invariance, and literal chronological
   equivalence. Its recurrence is used only after its producer.
3. Kronecker and induced-norm facts. For matrices A,B,
   ||A tensor B||_2=||A||_2||B||_2 and
   ||C||_2 <= sqrt(||C||_{row,1}||C||_{col,1}). The diagonal embedding
   Delta(z)=sum_j z_j e_j tensor e_j tensor e_j is an isometry from
   Euclidean coefficient vectors to coefficient tensors.
4. Moore--Penrose existence and dense linear algebra. Every finite matrix has
   a Moore--Penrose pseudoinverse, computable by a dense SVD or
   rank-revealing factorization in O(s^3) arithmetic operations for an
   s-column normal equation. This gives existence and cost only, not an
   inverse bound on a singular branch.
5. Elementary restart probability. Independent failures have probability
   (1-p)^J; this product is used only after conditioning on the fixed tensor.

## Local Derivation

### unit_001: lemma

**Lemma (balanced-chart residual transfer; label
lem:step-012-residual-transfer).** Under the accepted derived interfaces
E_sm and E_basin (and assump:accuracy-confidence for the declared epsilon),
interfaces, let e=(C_U,C_V,C_W,s) be an exact-span, positively oriented,
equal-norm representative with x=d_Q(e,0)<=rho_ALS=1/1024. Let T_hat(e)
be the rank-r tensor represented by its active factors (the inactive k-r
columns are zero). Then
\[
 { \|T-\widehat T(e)\|_F\over\|T\|_F}\le5x\le8\kappa_0^2x.
\tag{1}
\]

**Proof / justification.** Write G_M=U,V,W in the corresponding mode,
A_M=I+C_M, and lambda=(lambda_1,...,lambda_r). The fixed orientation chart
and positive product register give
\[
 p_{M,j}=G_MA_Me_j,\qquad
 \widehat T(e)={\mathscr G}{\cal A}\Delta(\lambda\odot e^s),
 \qquad T={\mathscr G}\Delta(\lambda),
\tag{2}
\]
where \({\mathscr G}=G_U\otimes G_V\otimes G_W\),
\({\cal A}=A_U\otimes A_V\otimes A_W\), and e^s has entries e^{s_j}.
This is the componentwise identity
\(\lambda_je^{s_j}p_{U,j}\otimes p_{V,j}\otimes p_{W,j}\), so it does not
add a factor or change the represented tensor.

By the definition of d_Q, both induced norms of each C_M are at most x,
so ||C_M||_2 <= x and
\[
 \|{\cal A}\|_2\le(1+x)^3,\qquad
 \|{\cal A}-I\|_2\le(1+x)^3-1.
\tag{3}
\]
For 0<=x<1, the power-series comparison e^x<=1/(1-x) gives
\[
 \|\lambda\odot e^s-\lambda\|_2
 \le(e^x-1)\|\lambda\|_2
 \le {x\over1-x}\|\lambda\|_2.
\tag{4}
\]
At x<=1/1024, (1+x)^3<1.003, x/(1-x)<1.001x, and
(1+x)^3-1<3.004x. The isometry of Delta therefore yields
\[
\begin{aligned}
 \|{\cal A}\Delta(\lambda\odot e^s)-\Delta(\lambda)\|_F
 &\le\|{\cal A}\|_2\|\Delta(\lambda\odot e^s-\lambda)\|_F
      +\|{\cal A}-I\|_2\|\Delta(\lambda)\|_F\\
 &<(1.003)(1.001)x\|\lambda\|_2+3.004x\|\lambda\|_2
 <4.1x\|\lambda\|_2.
\end{aligned}
\tag{5}
\]
The accepted static geometry gives
\(\|G_M\|_2^2=\lambda_{\max}(G_M^\top G_M)\le1+q_*\), and hence
\[
 \|{\mathscr G}\|_2\le(1+q_*)^{3/2}.
\tag{6}
\]
For the target diagonal coefficient tensor, the accepted Khatri--Rao floor
gives
\[
 \|T\|_F^2=\lambda^\top K_U\lambda
 \ge(1-q_*^2)\|\lambda\|_2^2.
\tag{7}
\]
Combining (5)--(7), direct substitution of q_*=1/4096 gives
\[
 { \|T-\widehat T(e)\|_F\over\|T\|_F}
 \le { (1+q_*)^{3/2}\over\sqrt{1-q_*^2}}\,4.1x
 <5x.
\tag{8}
\]
Finally kappa_0>=1 gives 5x<=8 kappa_0^2 x. At x=0, (2) is exactly the
target tensor and the residual is zero, recording the exact baseline.
\(\square\)

### unit_002: proposition

**Proposition (covered-path stopping before the cap; label
prop:step-012-stop-cap).** Under the accepted derived interface E_basin and
assump:accuracy-confidence, let
x_0=d_Q(e^land,0)<=4096 omega<1, and let x_t be the quotient error after
t completed cyclic sweeps. If ell=17/512, then
\[
 { \|T-\widehat T(e^t)\|_F\over\|T\|_F}
 \le8\kappa_0^2\ell^t.
\tag{9}
\]
Choose any universal C_stop with
C_stop log(512/17)>=1 (for example C_stop=1), and set
\[
 m_{\rm cap}=\left\lceil C_{\rm stop}\log{8\kappa_0^2\over\epsilon}\right\rceil.
\tag{10}
\]
Then a covered run has a residual test at most epsilon no later than this
counter.

**Proof / justification.** Step_011 gives x_t<=ell^t x_0. Since x_0<1,
Lemma~\ref{lem:step-012-residual-transfer} gives (9). Put
A=8 kappa_0^2/epsilon. Since ell=17/512, (10) and the displayed choice of
C_stop imply
\[
 \ell^{m_{\rm cap}}
 \le\exp\{-C_{\rm stop}\log A\log(512/17)\}\le A^{-1}.
\tag{11}
\]
The residual at the m_cap-th completed sweep is therefore at most
8 kappa_0^2 A^{-1}=epsilon. The setting tests the original residual after
each completed sweep, so the first hit is no later than the cap. At the
exact orthogonal/equal-weight state x_0=0, every sweep is stationary and the
first completed-sweep residual is exactly zero, independently of the cap.
\(\square\)

### unit_003: proposition

**Proposition (observable cap and Moore--Penrose branch separation; label
prop:step-012-finite-tapes).** Under assump:accuracy-confidence, fix an
E_sm instance with ||T||_F>0. For
every raw proposal tape, the procedure has a finite observable outcome. A
zero proposal contraction, empty certified pool, wrong cluster count, zero
theta_a, or zero active norm at the landing commit terminates that run as
unsuccessful. Otherwise every prescribed Moore--Penrose solve is defined,
including singular designs. The cyclic phase executes no more than m_cap
complete sweeps and returns either the first original-residual hit or an
unsuccessful timeout. No singular or off-event tape receives the E_basin
recurrence.

**Proof / justification.** There are k proposal slots and each has at most
L_prop+1 old-state evaluations. A zero contraction is checked before
normalization, so that gate has a finite failure branch. Certification,
score filtering, graph construction, and connected components are finite
operations on the k-slot list. The setting declares the other listed
failures observable before a cyclic update.

For a surviving landing call, each frozen design is a finite matrix. The
Moore--Penrose rule returns a matrix even when its Gram is singular; no
ordinary inverse is silently substituted. The positive-norm landing gate
either accepts all active columns or marks the run unsuccessful. On an
accepted landing, the literal cyclic update also uses a Moore--Penrose
solution at every mode. A singular cyclic design is thus a legal finite
algebraic branch, but it is outside the hypotheses of the quotient
Refresh_s proof; no d_Q, target-span, or contraction claim is made there.
If a proof-only canonical refresh would require division by a zero output
norm, that refresh is not invoked and the literal tape remains on the
observable capped branch. The original residual is still evaluable for the
literal factors whenever ||T||_F>0.

The counter is initialized before the first cyclic solve and ranges over the
finite set {1,...,m_cap}. At each count the original residual is tested; a
hit returns success, and the final nonhit returns unsuccessful. Thus an
arbitrary noncovered, singular, off-chart, or nonhitting tape cannot cause
unbounded work or justify the good-path recurrence.
\(\square\)

### unit_004: proposition

**Proposition (dense per-run runtime; label prop:step-012-dense-cost).** In
the dense arithmetic model put
\[
 B_s:=n^3s+n^2s^2+s^3,\qquad
 L:=L_{\rm prop}=O(\log r),\qquad m:=m_{\rm cap}.
\tag{12}
\]
There is a universal c_cost such that one complete run, including all
unsuccessful branches, costs at most
\[
 W_{\rm run}\le c_{\rm cost}\left[
 n^3+kL(n^3+n)+kn^3+k^2n+(m+1)B_k+kn\right].
\tag{13}
\]
This bound is independent of every generated condition number.

**Proof / justification.** Materializing the three dense unfoldings costs
O(n^3) once. A contraction of an n by n^2 unfolding with one Khatri--Rao
vector costs O(n^3); three contractions per Jacobi commit, including
certification look-ahead, give O(k L n^3). Generating and normalizing raw
vectors costs O(kn). Scores use at most O(k n^3) dense tensor contractions.
The three modewise inner products for every retained pair and the connected
graph cost O(k^2 n), covering filtering, clustering, and tie handling.

The frozen landing pass has three products of an n by n^2 unfolding with an
n^2 by k design, dense Gram formation, and three k-column Moore--Penrose
factorizations. Their
combined cost is O(B_k); the one rebalance is lower order. A cyclic sweep has
the same dense upper bound O(B_k), including construction of the reconstructed
tensor for the original residual test (O(n^3 k)). Inactive k-r columns may
be removed for a sharper B_r bound, but retaining the prescribed zero-padded
arrays is covered by B_k. Singular pseudoinverses use the same
dimension-controlled factorization, so no inverse condition number enters.
There are at most m sweeps, proving (13).
\(\square\)

### unit_005: proposition

**Proposition (conditional restart amplification; label
prop:step-012-restart).** Under assump:random-initialization and
assump:accuracy-confidence, condition on a fixed E_sm instance and the
accepted step-003 coverage interface. Let
J=max{1,ceil(C_rep log(1/delta_init))} and choose
C_rep>=1/log 27. If each complete run uses the declared cap and has the
covered success probability in (A1), then
\[
 \Pr(\text{all \(J\) runs fail}\mid{\cal F}_{\rm sm})
 \le(1-p_0)^J=27^{-J}\le\delta_{\rm init}.
\tag{14}
\]
On the complementary event, the smallest-residual successful output has at
most k nonzero terms and original relative residual at most epsilon.

**Proof / justification.** Step_003 gives a one-run coverage probability at
least p_0=26/27. On a fixed E_sm tensor, the accepted deterministic chain
from coverage through step_011 supplies the landing and E_basin, and
Proposition~\ref{prop:step-012-stop-cap} supplies a residual hit before the
cap. Thus a complete run succeeds with probability at least p_0. Fresh
proposal tapes make complete-run outcomes independent conditional on
{\cal F}_{\rm sm}, even though the tensor is reused, proving the failure
product. Since J log 27 >= log(1/delta_init) when
C_rep>=1/log 27 (and J>=1 handles the complementary small-log range),
(14) follows.

Every successful run passed the original residual test, so minimum-residual
selection cannot increase its residual. Only the active rank-r columns can
be nonzero and r<=k; all inactive columns remain exactly zero.
\(\square\)

## Target-Step Assembly

On a fixed E_sm instance, the accepted step-003 coupon result provides
E_cov and p_0=26/27. Define
\[
 E_{\rm stop}:=E_{\rm cov}\cap E_{\rm basin}\cap
 \{\text{the original residual hits epsilon at some }t\le m_{\rm cap}\},
\tag{15}
\]
and let E_run_cap be the event that the observable finite-tape procedure
returns either a success or an unsuccessful gate/timeout result within its
declared work. Define E_restart as the event that at least one of the J
completed runs lies in E_stop. The accepted step-011 result then produces the
exact-span landing entry, literal cyclic chronology, and no-forcing
recurrence (A2) on that covered branch. Lemma
\ref{lem:step-012-residual-transfer} uses the original target factors and
the target Khatri--Rao floor to transfer quotient error to the actual
relative Frobenius residual. Proposition
\ref{prop:step-012-stop-cap} therefore proves that a covered run hits the
declared threshold by m_cap, with no additive error floor.

Proposition \ref{prop:step-012-finite-tapes} handles every other tape by a
separate observable branch: finite proposal gates, legal Moore--Penrose
outputs on singular matrices, and the fixed counter for nonhitting cyclic
tapes. It never feeds an off-event or singular state into the quotient
recurrence. Proposition \ref{prop:step-012-dense-cost} charges dense
unfolding products, Gram factorizations, residual tests, and all capped
failed or successful runs. Finally, Proposition
\ref{prop:step-012-restart} applies conditional cross-run independence and
the product bound (14), yielding the requested 1-delta_init conditional
success and zero-padded rank bound. The outer 1-delta_sm instance event is
not conflated with this conditional restart probability.

At the exact orthogonal equal-weight component seed, C_M=s=0, the
Kronecker difference in (5) is zero, every residual test is zero, landing
and every cyclic update are stationary, and the first completed-sweep test
succeeds for every epsilon>0. This preserves the baseline conclusion.

## Explicit Rate Audit

- Exposed variables: n,r,k=U(r), L_prop=O(log r), kappa_0, rho^{-1}
  (runtime is independent of it apart from the declared admissible regime),
  log(1/epsilon), and log(1/delta_init). Fixed numerical quantities are
  q_*=1/4096, rho_ALS=1/1024, and ell=17/512.
- Hidden constants may depend only on universal dense-operation and fixed
  numerical constants, including C_stop and C_rep.
- Hidden constants may not depend on a generated comparator, basin radius,
  reserve, trajectory, target label, matrix condition number, epsilon,
  either confidence event, or an unlisted precision parameter.
- Fixed quantities: one realized tensor while conditioning on F_sm, the
  prescribed dense representation, and the U/V/W order. Inactive columns
  remain zero.
- Probability mode: first a once-drawn event with probability at least
  1-delta_sm; conditional on it, one run succeeds with probability at least
  p_0 and J fresh runs with probability at least 1-delta_init. The confidence
  parameters are not hidden in k. A joint lower bound is
  (1-delta_sm)(1-delta_init) by conditioning.
- Horizon mode: the quotient recurrence is horizon-uniform only on generated
  E_basin; every tape has a fixed stopping-time cap, so the all-tape runtime
  is finite without claiming off-event convergence.
- Norm mode: d_Q internally and the original relative Frobenius norm for the
  stopping/output claim; costs count arithmetic on dense n by n^2 unfoldings.
- Admissibility: x<=rho_ALS, x_0<=4096 omega<1, q_real<=q_*,
  lambda_min(K_M)>=1-q_*^2, kappa_0>=1, and
  C_stop log(512/17)>=1. Singular branches need only the legal pseudoinverse
  and cap.
- Term absorption: (3)--(8) prove the dimension-free residual bridge, (11)
  proves cap absorption, and (14) proves restart absorption. No sqrt(r)
  term is introduced by an l1 tensor-sum bound.
- Probability conversion: the conditional coupon probability comes from
  step-003, the restart product is conditional on the fixed tensor, and the
  outer smoothing event is combined only by the tower statement above.
- Contribution to the Rate Specialization Bridge: this step turns the
  quotient geometric rate into the original epsilon residual with the
  displayed logarithmic cap, and supplies finite polynomial cost and
  O(log(1/delta_init)) restarts.
- Baseline reduction: at the exact orthogonal equal-weight seed the
  Kronecker difference in (5) is zero, every residual test is zero, and no
  cap or restart loss changes the exact conclusion.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing outputs are E_stop, E_run_cap, E_restart, the original
  residual guarantee, the cap, and the runtime expression. Delta, mathscr G,
  mathcal A, lambda tensor e^s, x_t, B_s, and W_run are proof-local aliases.
- The constants 4.1, 5, and 8 are derived in Lemma
  \ref{lem:step-012-residual-transfer}; C_stop is chosen by (10)--(11);
  p_0=26/27 is inherited from step-003; and
  C_rep>=1/log 27 is chosen in the restart proposition.
- E_sm, E_cov, E_basin, chart membership, positive products, and recurrence
  applicability are generated conditions. E_sm and E_cov are supplied by
  accepted dependencies; the residual bridge and cap behavior are proved
  here; off-event states are only local conditional branches.
- The paired global_proof.md/global_proof_review.md artifacts were consulted
  only for planning cues (Kronecker residual bridge, separate cap branch,
  and restart product). They are not evidence, a cited result, an assumption
  source, or authority to change the target claim.
