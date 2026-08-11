# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 2
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_003 proof SHA-256: 2ec3af5229ee6717bb501939c614b65a7163694fb3f478395c8ff163df2ed551
- Accepted dependency step_003 review SHA-256: 046c8b2ef34d4e749556b11d1ce056457f3d84feffe4e63a9b9d528c3a2a2527
- Accepted dependency step_011 proof SHA-256: 261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0
- Accepted dependency step_011 review SHA-256: 9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af
- Triggering step review SHA-256: a652c01067ff0368fdc319a52d8acd1c4261a0059697aa92973cce3bd029e86e

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
- Rate objective: \(m_{\rm cap}=\lceil C_{\rm stop}
  \log(8\kappa_0^2/\epsilon)\rceil\) and the exact clamped restart count
  \(J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}\), which
  is uniformly \(O(1+\log(1/\delta_{\rm init}))\), with runtime polynomial
  in the variables exposed by the setting.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- Assumption~\ref{assump:base-scale}: in particular,
  \(1\le\kappa _0\le r^{d_\kappa}\).  This is the primitive source of the
  inequality \(5\le8\kappa _0^2\); it is not part of a generated smoothing
  event.
- Assumption~\ref{assump:random-initialization}: conditional on the
  once-drawn tensor, raw Gaussian proposal triples in distinct slots and in
  distinct complete runs are independent.  Restarts reuse the tensor but
  draw fresh proposal tapes.
- Assumption~\ref{assump:accuracy-confidence}:
  \(0<\epsilon<1\) and \(0<\delta_{\rm init}<1\), with the latter confidence
  parameter applying to the conditional restart experiment.

The rank formula k=U(r), proposal horizons, and inactive-column zero padding
are setting-defined objects and are used through the accepted step-003
interface; they are not additional trajectory assumptions.

### Derived invariants supplied by accepted dependencies

- **Accepted all-target coupon coverage.**
  Proposition~\ref{prop:step-003-coupon} proves that, on any fixed realized
  instance in its accepted \(E_{\rm sm}\) domain, the proof-only event
  \(E_{\rm cov}\) has
  \[
  \Pr(E_{\rm cov}\mid{\cal F}_{\rm sm})\ge p_0,\qquad p_0:=26/27.
  \tag{A1}
  \]
  Claim~\ref{claim:step-003-witness-interface} records that the target
  witnesses are proof-only and are not read by the algorithm.
- **Accepted quotient chart and chronological contraction.**
  Lemma~\ref{lem:step-011-quotient-chart} supplies the exact-span balanced
  coordinates.  Proposition~\ref{prop:step-011-chronological-contraction}
  proves that, on the generated covered path, the preceding deterministic
  producers emit \(e^0=e^{\rm land}\) with
  \[
  x_0:=d_Q(e^0,0)\le4096\omega<\rho_{\rm ALS}/3,\qquad
  x_{t+1}\le\ell x_t,\quad \ell:=17/512<1/16,
  \tag{A2}
  \]
  for each completed cyclic sweep in the generated basin.  The same proposition
  proves literal ALS/\({\rm Refresh}_s\) equivalence, exact target-span
  invariance, and positive active products on this path.  The accepted
  static-geometry interface recorded in step_011 gives unit realized
  directions, \(q_{\rm real}\le q_*\), and the target two-mode Khatri--Rao
  Gram floor \(1-q_*^2\).  The events \(E_{\rm sm}\) and \(E_{\rm basin}\)
  are generated interfaces, not primitive conditions.

### Local conditional hypotheses

- In the residual-transfer lemma, the state is locally an exact-span,
  positively oriented, balanced state with
  \(d_Q(e,0)\le\rho_{\rm ALS}\).  The accepted chronological-contraction
  proposition proves this for every state on \(E_{\rm basin}\); it is not
  assumed for an arbitrary tape.
- The literal all-tape claim is quantified over the algorithmically
  admissible nonzero-initialization tape domain defined in
  Proposition~\ref{prop:step-012-finite-tapes}.  The conditional Gaussian
  law gives that domain probability one.  A raw vector equal to zero is not
  in the domain because the setting's map \({\cal N}(\xi)=\xi/\|\xi\|_2\)
  is undefined there.
- A relative residual test is made only when \(\|T\|_F>0\).  On
  \(E_{\rm sm}\), the full-Gram comparison proved below and positive realized
  weights imply this.  No convergence assertion is made off that domain.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under Assumption~\ref{assump:base-scale}, the accepted static-geometry interface and Lemma~\ref{lem:step-011-quotient-chart}, an exact-span balanced \(E_{\rm basin}\) state \(e\) with \(x=d_Q(e,0)\le\rho_{\rm ALS}\) satisfies \(\|T-\widehat T(e)\|_F/\|T\|_F\le5x\le8\kappa_0^2x\). | Converts quotient error to the original stopping metric using the full three-mode target Gram, without a dimension-dependent \(\ell_1\) loss. |
| unit_002 | proposition | Under Assumptions~\ref{assump:base-scale} and~\ref{assump:accuracy-confidence}, Proposition~\ref{prop:step-011-chronological-contraction}, and Lemma~\ref{lem:step-012-residual-transfer}, the covered residual after \(t\) sweeps is at most \(8\kappa_0^2\ell^t\), and the declared cap contains a successful test. | Chooses the cap and proves the covered path hits before it. |
| unit_003 | proposition | Under Assumption~\ref{assump:accuracy-confidence}, on a fixed \(E_{\rm sm}\) instance, every raw tape in the explicitly defined nonzero-initialization domain has finite observable work through all gates, singular Moore--Penrose calls, and at most \(m_{\rm cap}\) cyclic sweeps. | Separates cap/nonhitting behavior from good-path convergence and fixes the all-tape domain. |
| unit_004 | proposition | For the setting-defined dense dimensions and under Proposition~\ref{prop:step-012-finite-tapes}, one complete run costs at most \(W_{\rm run}\), including proposal, score/filter/cluster, three landing solves, rebalance, residual tests, and capped cyclic sweeps; no condition number occurs. | Supplies the per-run polynomial runtime interface. |
| unit_005 | proposition | Under Assumptions~\ref{assump:random-initialization} and~\ref{assump:accuracy-confidence}, Proposition~\ref{prop:step-003-coupon}, Proposition~\ref{prop:step-011-chronological-contraction}, and Propositions~\ref{prop:step-012-stop-cap}--\ref{prop:step-012-finite-tapes}, the \(J\) completed independent runs fail jointly with probability at most \(\delta_{\rm init}\). | Amplifies one-run coverage to the requested conditional confidence. |

## Cited Result Applications

1. **Accepted coupon dependency.**  The hash-matched
   Proposition~\ref{prop:step-003-coupon}, under
   Assumptions~\ref{assump:subquadratic-rank} and
   \ref{assump:random-initialization} and its accepted window dependency,
   proves (A1) conditional on the fixed smoothed tensor, without targetwise
   independence.  Claim~\ref{claim:step-003-witness-interface} makes its
   witnesses proof-only.  This step uses only the probability and label-free
   conclusions.
2. **Accepted cyclic dependency.**  The hash-matched
   Lemma~\ref{lem:step-011-quotient-chart} translates positive exact-span
   factors into the current balanced quotient coordinates.
   Proposition~\ref{prop:step-011-chronological-contraction}, under the
   accepted \(E_{\rm sm}\) and \(E_{\rm land}\) interfaces, proves (A2),
   exact-span/positive-product invariance, and literal chronological
   equivalence.  Its recurrence is used only on its generated basin.
3. **Khatri--Rao Gram identity and Schur order.**  If matrices have matched
   columns, then
   \((A\odot B)^\top(A\odot B)=(A^\top A)\circ(B^\top B)\); the analogous
   three-mode identity follows by iteration.  If \(H\succeq0\) has unit
   diagonal and \(aI\preceq K\preceq bI\), the Schur product theorem applied
   to \(H\circ(K-aI)\) and \(H\circ(bI-K)\) gives
   \(aI\preceq H\circ K\preceq bI\), because \(H\circ I=I\).  Below,
   \(H=U^\top U\) is positive semidefinite with unit diagonal, while the
   bounds on \(K=(V^\top V)\circ(W^\top W)\) are discharged directly from
   \(q_{\rm real}\le q_*\).
4. **Kronecker and induced-norm facts.**  For finite matrices \(A,B\),
   \(\|A\otimes B\|_2=\|A\|_2\|B\|_2\) and
   \(\|C\|_2\le\sqrt{\|C\|_{\rm row,1}\|C\|_{\rm col,1}}\).  The
   diagonal embedding
   \(\Delta(z)=\sum_jz_je_j\otimes e_j\otimes e_j\) is an isometry from
   Euclidean coefficient vectors to coefficient tensors.
5. **Moore--Penrose existence and dense linear algebra.**  Every finite
   matrix has a Moore--Penrose pseudoinverse, computable by a dense SVD or
   rank-revealing factorization in \(O(s^3)\) arithmetic operations for an
   \(s\)-column normal equation.  This gives existence and cost only, never
   an inverse reserve on a singular branch.
6. **Conditional restart product.**  Conditional on the fixed tensor,
   Assumption~\ref{assump:random-initialization} makes complete-run tapes
   independent.  Hence failures of runs whose individual failure
   probabilities are at most \(1-p\) have joint probability at most
   \((1-p)^J\).  It is applied only after
   Proposition~\ref{prop:step-012-finite-tapes} makes every run a completed
   finite trial.

## Local Derivation

### unit_001: lemma

**Lemma (balanced-chart residual transfer;
\label{lem:step-012-residual-transfer}).**
Under Assumption~\ref{assump:base-scale}, the accepted static-geometry
interface recorded in
Proposition~\ref{prop:step-011-chronological-contraction}, and the coordinate
conclusion of Lemma~\ref{lem:step-011-quotient-chart}, let
\(e=(C_U,C_V,C_W,s)\) be a generated \(E_{\rm basin}\) state represented in
the exact-span, positively oriented, equal-norm chart, and suppose
\(x=d_Q(e,0)\le\rho_{\rm ALS}=1/1024\).  If \(\widehat T(e)\) denotes the
rank-\(r\) tensor represented by its active factors, with the inactive
\(k-r\) columns zero, then
\[
 { \|T-\widehat T(e)\|_F\over\|T\|_F}\le5x\le8\kappa_0^2x.
\tag{1}
\]

**Proof / justification.** Write \(G_M=U,V,W\) in the corresponding mode,
\(A_M=I+C_M\), and \(\lambda=(\lambda_1,\ldots,\lambda_r)^\top\). The fixed orientation chart
and positive product register give
\[
 p_{M,j}=G_MA_Me_j,\qquad
 \widehat T(e)={\mathscr G}{\cal A}\Delta(\lambda\odot e^s),
 \qquad T={\mathscr G}\Delta(\lambda),
\tag{2}
\]
where \({\mathscr G}=G_U\otimes G_V\otimes G_W\),
\({\cal A}=A_U\otimes A_V\otimes A_W\), and \(e^s\) has entries \(e^{s_j}\).
This is the componentwise identity
\(\lambda_je^{s_j}p_{U,j}\otimes p_{V,j}\otimes p_{W,j}\), so it does not
add a factor or change the represented tensor.

By the definition of \(d_Q\), both induced norms of each \(C_M\) are at most
\(x\), so \(\|C_M\|_2\le x\) and
\[
 \|{\cal A}\|_2\le(1+x)^3,\qquad
 \|{\cal A}-I\|_2\le(1+x)^3-1.
\tag{3}
\]
For \(0\le x<1\), the power-series comparison \(e^x\le1/(1-x)\) gives
\[
 \|\lambda\odot e^s-\lambda\|_2
 \le(e^x-1)\|\lambda\|_2
 \le {x\over1-x}\|\lambda\|_2.
\tag{4}
\]
At \(x\le1/1024\), \((1+x)^3<1.003\),
\(x/(1-x)<1.001x\), and \((1+x)^3-1<3.004x\). The isometry of \(\Delta\)
therefore yields
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
It remains to compare the denominator with the same coefficient norm used in
(5).  Put \(H_U=U^\top U\), \(H_V=V^\top V\), and \(H_W=W^\top W\), and
define the two-mode and full three-mode Khatri--Rao Grams
\[
 K_{VW}:=(W\odot V)^\top(W\odot V)=H_W\circ H_V,
 \qquad
 K_{UVW}:=(W\odot V\odot U)^\top(W\odot V\odot U)
          =H_U\circ H_V\circ H_W,
\]
where column \(j\) of \(W\odot V\odot U\) is
\(w_j\otimes v_j\otimes u_j\).  For each row \(j\),
\[
 \sum_{\ell\ne j}|(K_{VW})_{j\ell}|
 \le \left(\max_{\ell\ne j}|(H_W)_{j\ell}|\right)
       \sum_{\ell\ne j}|(H_V)_{j\ell}|
 \le q_*^2.
\]
Thus symmetry and Gershgorin give
\((1-q_*^2)I\preceq K_{VW}\preceq(1+q_*^2)I\).  Since
\(H_U\succeq0\) and \(\operatorname{diag}(H_U)=I\), the checked Schur-order
fact in Cited Result 3 gives the full sandwich
\[
 (1-q_*^2)\|\lambda\|_2^2
 \le \lambda^\top K_{UVW}\lambda
 =\left\|\sum_{j=1}^r\lambda_j
        u_j\otimes v_j\otimes w_j\right\|_F^2
 =\|T\|_F^2
 \le(1+q_*^2)\|\lambda\|_2^2.
\tag{7}
\]
This is the required full three-mode Gram identity; the two-mode Gram is used
only as the Schur-order input.
Combining (5)--(7), direct substitution of \(q_*=1/4096\) gives
\[
 { \|T-\widehat T(e)\|_F\over\|T\|_F}
 \le { (1+q_*)^{3/2}\over\sqrt{1-q_*^2}}\,4.1x
 <5x.
\tag{8}
\]
Finally Assumption~\ref{assump:base-scale} gives \(\kappa_0\ge1\), hence
\(5x\le8\kappa_0^2x\).  At \(x=0\), (2) is exactly the target tensor and
the residual is zero.  This is a conditional exact-entry statement; it does
not assert that the frozen landing produces that entry in the baseline
specialization.
\(\square\)

### unit_002: proposition

**Proposition (covered-path stopping before the cap;
\label{prop:step-012-stop-cap}).**
Under Assumptions~\ref{assump:base-scale} and
\ref{assump:accuracy-confidence}, the accepted
Proposition~\ref{prop:step-011-chronological-contraction}, and
Lemma~\ref{lem:step-012-residual-transfer}, suppose a covered run has the
generated \(E_{\rm basin}\) entry
\(x_0=d_Q(e^{\rm land},0)\le4096\omega<1\), and let \(x_t\) be its quotient
error after \(t\) completed cyclic sweeps. With \(\ell=17/512\),
\[
 { \|T-\widehat T(e^t)\|_F\over\|T\|_F}
 \le8\kappa_0^2\ell^t.
\tag{9}
\]
Choose any universal \(C_{\rm stop}\) with
\(C_{\rm stop}\log(512/17)\ge1\) (for example \(C_{\rm stop}=1\)), and set
\[
 m_{\rm cap}=\left\lceil C_{\rm stop}\log{8\kappa_0^2\over\epsilon}\right\rceil.
\tag{10}
\]
Then the covered run has an original relative-Frobenius residual test at most
\(\epsilon\) no later than this counter.

**Proof / justification.**
Proposition~\ref{prop:step-011-chronological-contraction} gives
\(x_t\le\ell^t x_0\). Since \(x_0<1\),
Lemma~\ref{lem:step-012-residual-transfer} gives (9). Put
\(A=8\kappa_0^2/\epsilon\). Assumptions~\ref{assump:base-scale} and
\ref{assump:accuracy-confidence} give \(A>1\). Since \(\ell=17/512\),
(10) and the displayed choice of \(C_{\rm stop}\) imply
\[
 \ell^{m_{\rm cap}}
 \le\exp\{-C_{\rm stop}\log A\log(512/17)\}\le A^{-1}.
\tag{11}
\]
The residual at the \(m_{\rm cap}\)-th completed sweep is therefore at most
\(8\kappa_0^2A^{-1}=\epsilon\). The setting tests the original residual after
each completed sweep, so the first hit is no later than the cap. If an exact
quotient entry \(x_0=0\) is supplied, the accepted contraction forces
\(x_t=0\) for every completed sweep, and
Lemma~\ref{lem:step-012-residual-transfer} makes the first tested residual
zero. This conditional statement does not prove the baseline landing trace.
\(\square\)

### unit_003: proposition

**Proposition (observable cap and Moore--Penrose branch separation;
\label{prop:step-012-finite-tapes}).**
Under Assumption~\ref{assump:accuracy-confidence}, fix a generated
\(E_{\rm sm}\) instance, for which (7) gives \(\|T\|_F>0\). Define the
algorithmically admissible raw domain of one complete run and of all \(J\)
restarts by
\[
 \Omega_{\rm raw}^{(1),\circ}:=
 \left\{(\xi_i^{(M)})_{i\in[k],\,M\in\{U,V,W\}}:
       \|\xi_i^{(M)}\|_2>0\ \text{for every }i,M\right\},
 \qquad
 \Omega_{\rm raw}^{(J),\circ}:=
       (\Omega_{\rm raw}^{(1),\circ})^J.
\tag{12}
\]
For every tape in \(\Omega_{\rm raw}^{(1),\circ}\), the setting's procedure
is initialized and has a finite observable outcome. A zero proposal
contraction, empty certified pool, wrong cluster count, zero \(\theta_a\), or
zero active norm at the landing commit terminates that run as unsuccessful.
Otherwise every prescribed Moore--Penrose solve is defined, including for a
singular design. The cyclic phase executes no more than \(m_{\rm cap}\)
complete sweeps and returns either the first original-residual hit or an
unsuccessful timeout. No singular or off-event tape receives the generated
\(E_{\rm basin}\) recurrence. Under the conditional Gaussian law,
\(\Pr(\Omega_{\rm raw}^{(J),\circ}\mid{\cal F}_{\rm sm})=1\).

**Proof / justification.**
The domain (12) is exactly where every initial normalization
\({\cal N}(\xi_i^{(M)})\) in the written procedure is defined. A nondegenerate
Gaussian vector in finite dimension is zero with probability zero; a finite
union over \(3kJ\) raw vectors proves the final probability-one assertion.
No statement is made about a raw-zero array outside (12).

There are \(k\) proposal slots and each has at most
\(L_{\rm prop}+1\) old-state evaluations. A zero contraction is checked before
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
literal factors because \(\|T\|_F>0\).

The counter is initialized before the first cyclic solve and ranges over the
finite set \(\{1,\ldots,m_{\rm cap}\}\). After each counted completed sweep,
the original residual is tested; a hit returns success, and the final nonhit
returns unsuccessful. Thus any admissible noncovered, singular, off-chart,
or nonhitting tape cannot cause unbounded work or justify the good-path
recurrence. This deterministic completion property is the event
\(E_{\rm run\_cap}\).
\(\square\)

### unit_004: proposition

**Proposition (dense per-run runtime;
\label{prop:step-012-dense-cost}).**
For the setting-defined finite dimensions and horizons, under the completion
conclusion of Proposition~\ref{prop:step-012-finite-tapes}, put in the dense
exact-arithmetic model
\[
 B_s:=n^3s+n^2s^2+s^3,\qquad
 L:=L_{\rm prop},\qquad m:=m_{\rm cap}.
\tag{13}
\]
There is a universal c_cost such that one complete run, including all
unsuccessful branches, costs at most
\[
 W_{\rm run}\le c_{\rm cost}\left[
 n^3+kL(n^3+n)+kn^3+k^2n+(m+1)B_k+kn\right].
\tag{14}
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
There are at most \(m\) sweeps by
Proposition~\ref{prop:step-012-finite-tapes}, proving (14).
\(\square\)

### unit_005: proposition

**Proposition (conditional restart amplification;
\label{prop:step-012-restart}).**
Under Assumptions~\ref{assump:random-initialization} and
\ref{assump:accuracy-confidence}, condition on a fixed generated
\(E_{\rm sm}\) instance. Suppose complete runs use the cap in (10), and
invoke the accepted Proposition~\ref{prop:step-003-coupon}, the accepted
Proposition~\ref{prop:step-011-chronological-contraction}, and the local
Propositions~\ref{prop:step-012-stop-cap} and
\ref{prop:step-012-finite-tapes}. Let
\[
 J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\},
 \qquad C_{\rm rep}\ge1/\log27.
\tag{15}
\]
Then
\[
 \Pr(\text{all \(J\) runs fail}\mid{\cal F}_{\rm sm})
 \le(1-p_0)^J=27^{-J}\le\delta_{\rm init}.
\tag{16}
\]
On the complementary event, the smallest-residual successful output has at
most \(k\) nonzero terms and original relative residual at most \(\epsilon\).

**Proof / justification.**
Proposition~\ref{prop:step-003-coupon} gives a one-run coverage probability
at least \(p_0=26/27\). On a fixed \(E_{\rm sm}\) tensor, the accepted
deterministic chain through
Proposition~\ref{prop:step-011-chronological-contraction} supplies the
generated \(E_{\rm basin}\) on that covered branch, and
Proposition~\ref{prop:step-012-stop-cap} supplies a residual hit before the
cap. Proposition~\ref{prop:step-012-finite-tapes} makes every admissible tape
a completed success/failure trial, and its domain has conditional probability
one. Fresh complete-run tapes make these outcomes independent conditional on
\({\cal F}_{\rm sm}\), even though the tensor is reused. Therefore the
failure product in (16) holds. Since
\[
 J\log27\ge C_{\rm rep}\log(1/\delta_{\rm init})\log27
 \ge\log(1/\delta_{\rm init}),
\]
the final inequality in (16) follows. The clamp in (15) remains exact for
\(\delta_{\rm init}\) near one.

Every successful run passed the original residual test, so minimum-residual
selection cannot increase its residual. Only the active rank-\(r\) columns
can be nonzero and \(r\le k\); all inactive columns remain exactly zero.
\(\square\)

## Target-Step Assembly

Fix a generated \(E_{\rm sm}\) instance.  For completed run
\(a\in[J]\), let \(E_{\rm cov}^{(a)}\) and \(E_{\rm basin}^{(a)}\) denote
the accepted generated interfaces on its fresh tape, and define
\[
 E_{\rm stop}^{(a)}:=E_{\rm cov}^{(a)}\cap E_{\rm basin}^{(a)}\cap
 \left\{\exists t\le m_{\rm cap}:
 {\|T-\widehat T(e^{t,a})\|_F\over\|T\|_F}\le\epsilon\right\},
 \qquad
 E_{\rm restart}:=\bigcup_{a=1}^J E_{\rm stop}^{(a)}.
\tag{17}
\]
Let \(E_{\rm run\_cap}\) be the event that every one of the \(J\) runs
returns either success or an observable gate/timeout failure within its
declared work.  Proposition~\ref{prop:step-012-finite-tapes} proves this for
every tape in \(\Omega_{\rm raw}^{(J),\circ}\), a conditional
probability-one domain.  Its singular and off-event branches are never fed
into the quotient recurrence.

Proposition~\ref{prop:step-003-coupon} gives
\(\Pr(E_{\rm cov}^{(a)}\mid{\cal F}_{\rm sm})\ge26/27\).  On each covered
branch, Proposition~\ref{prop:step-011-chronological-contraction} produces
the exact-span chronology and (A2).  Lemma~\ref{lem:step-012-residual-transfer}
uses the full three-mode Gram sandwich (7) to transfer that quotient error to
the original relative Frobenius residual, and
Proposition~\ref{prop:step-012-stop-cap} proves
\(E_{\rm cov}^{(a)}\subseteq E_{\rm stop}^{(a)}\).  Therefore
Proposition~\ref{prop:step-012-restart} gives the nested probabilities
\[
 \Pr(E_{\rm restart}\mid{\cal F}_{\rm sm})\ge1-\delta_{\rm init}
 \quad\text{on }E_{\rm sm},
 \qquad
 \Pr(E_{\rm sm}\cap E_{\rm restart})
 \ge(1-\delta_{\rm sm})(1-\delta_{\rm init}).
\tag{18}
\]
The second inequality is the tower calculation
\(\mathbb E[1_{E_{\rm sm}}
\Pr(E_{\rm restart}\mid{\cal F}_{\rm sm})]\); it does not move either
confidence parameter into \(k\).  Every successful output passed the original
residual test and has only its \(r\le k\) active columns nonzero.

It remains to charge all restarts rather than only one run.  Define the
proof-local ceiling bounds
\[
 \bar k:=1+C_{\rm rank}r^{5/3}(\log r)^{5/2},\qquad
 R_\epsilon:=2+C_{\rm stop}
 \left(\log8+2\log\kappa_0+\log(1/\epsilon)\right).
\]
From the setting definitions and \(0<\delta_{\rm init}<1\),
\[
 k\le\bar k,\quad
 L_{\rm prop}\le2+(C_{\rm burn}+C_{\rm cert})\log r,\quad
 m_{\rm cap}+1\le R_\epsilon,\quad
 J\le1+C_{\rm rep}\log(1/\delta_{\rm init}).
\tag{19}
\]
Applying Proposition~\ref{prop:step-012-dense-cost} to each completed run
and summing, including early failed runs, gives the displayed total-work
bound
\[
\begin{aligned}
 W_{\rm total}\ &\le J W_{\rm run}\\
 &\le c_{\rm cost}\bigl(1+C_{\rm rep}\log(1/\delta_{\rm init})\bigr)
 \Big[ n^3
 +\bar k\{2+(C_{\rm burn}+C_{\rm cert})\log r\}(n^3+n)
 +\bar k n^3+\bar k^2n\\
 &\hspace{46mm}
 +R_\epsilon(n^3\bar k+n^2\bar k^2+\bar k^3)+\bar k n\Big].
\end{aligned}
\tag{20}
\]
In particular, after exposing the prescribed rank powers, (20) is
\[
\begin{aligned}
 W_{\rm total}=O\!\Big((1+\log(1/\delta_{\rm init}))\big[&n^3
 +n^3r^{5/3}(\log r)^{7/2}+nr^{10/3}(\log r)^5\\
 &+(1+\log\kappa_0+\log(1/\epsilon))
 \{n^3r^{5/3}(\log r)^{5/2}
 +n^2r^{10/3}(\log r)^5+r^5(\log r)^{15/2}\}\big]\Big).
\end{aligned}
\tag{21}
\]
The hidden constant in (21) depends only on the fixed universal algorithmic
constants.  The bound is independent of \(\rho^{-1}\), hence is in
particular polynomial in the full list of variables allowed by the setting.

For the exact/noiseless baseline, the scope of this step is conditional: if
the exact quotient entry \(e^0=0\) is supplied, (A2) keeps every completed
cyclic state at zero and Lemma~\ref{lem:step-012-residual-transfer} gives an
exactly zero first tested residual for every \(\epsilon>0\).  Neither the cap
nor the restart rule weakens that conclusion.  This step does not prove that
the frozen landing produces \(e^0=0\); the complete landing specialization is
the separate \(E_{\rm baseline}\) obligation of step_013.

## Explicit Rate Audit

- Exposed variables: \(n,r,k=U(r)\), \(L_{\rm prop}=O(\log r)\),
  \(\kappa_0\), \(\rho^{-1}\)
  (runtime is independent of it apart from the declared admissible regime),
  \(\log(1/\epsilon)\), and \(1+\log(1/\delta_{\rm init})\). Fixed numerical
  quantities are \(q_*=1/4096\), \(\rho_{\rm ALS}=1/1024\), and
  \(\ell=17/512\).
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
  \(E_{\rm basin}\); every tape in \(\Omega_{\rm raw}^{(J),\circ}\) has a
  fixed stopping-time cap, so the all-tape-on-domain runtime is finite without
  claiming off-event convergence.
- Norm mode: d_Q internally and the original relative Frobenius norm for the
  stopping/output claim; costs count arithmetic on dense n by n^2 unfoldings.
- Admissibility: \(x\le\rho_{\rm ALS}\),
  \(x_0\le4096\omega<1\), \(q_{\rm real}\le q_*\), the full-Gram sandwich
  (7), \(\kappa_0\ge1\), \(C_{\rm stop}\log(512/17)\ge1\), and the nonzero
  raw initialization domain (12). Singular branches need only the legal
  pseudoinverse and cap.
- Term absorption: (3)--(8) prove the dimension-free residual bridge, (11)
  proves cap absorption, (16) proves restart absorption, and (19)--(21)
  expose the total restarted runtime. No \(\sqrt r\) term is introduced by an
  \(\ell_1\) tensor-sum bound.
- Probability conversion: the conditional coupon probability comes from
  step-003, the restart product is conditional on the fixed tensor, and the
  outer smoothing event is combined only by the tower statement above.
- Contribution to the Rate Specialization Bridge: this step turns the
  quotient geometric rate into the original \(\epsilon\) residual with the
  displayed logarithmic cap, and supplies finite polynomial cost with the
  uniform \(O(1+\log(1/\delta_{\rm init}))\) restart factor.
- Baseline reduction: conditional on an exact quotient entry \(e^0=0\), the
  accepted recurrence and the residual-transfer lemma give an exactly zero
  first tested residual, and no cap or restart loss changes that conclusion.
  The proof that the baseline frozen landing actually produces \(e^0=0\)
  remains the separate step_013 obligation.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing outputs are \(E_{\rm stop}\), \(E_{\rm run\_cap}\),
  \(E_{\rm restart}\), the original residual guarantee, the cap, and the
  total runtime expression. The maps \(\Delta,{\mathscr G},{\cal A}\), the
  coefficient vector \(\lambda\odot e^s\), \(x_t\), \(B_s\),
  \(W_{\rm run}\), \(\bar k\), and \(R_\epsilon\) are proof-local aliases.
  The pair/full Grams \(K_{VW},K_{UVW}\) and the raw-tape domains
  \(\Omega_{\rm raw}^{(1),\circ},\Omega_{\rm raw}^{(J),\circ}\) are
  appendix-local audit objects; only their conclusions are exported.
- The constants \(4.1,5,8\) and the full-Gram bounds are derived in
  Lemma~\ref{lem:step-012-residual-transfer}; \(C_{\rm stop}\) is chosen by
  (10)--(11); \(p_0=26/27\) is inherited from
  Proposition~\ref{prop:step-003-coupon}; \(C_{\rm rep}\ge1/\log27\) is
  chosen in Proposition~\ref{prop:step-012-restart}; and \(\bar k,R_\epsilon\)
  are direct ceiling bounds from setting quantities in (19).
- \(E_{\rm sm},E_{\rm cov},E_{\rm basin}\), chart membership, positive
  products, and recurrence applicability are generated conditions supplied by
  accepted dependencies. Assumption~\ref{assump:base-scale}, including
  \(\kappa_0\ge1\), remains primitive. The residual bridge, cap behavior,
  admissible-tape totality, and restart arithmetic are proved here; off-event
  states are only local conditional branches.
- The paired global_proof.md/global_proof_review.md artifacts were consulted
  only for planning cues (Kronecker residual bridge, separate cap branch,
  and restart product). They are not evidence, a cited result, an assumption
  source, or authority to change the target claim.
