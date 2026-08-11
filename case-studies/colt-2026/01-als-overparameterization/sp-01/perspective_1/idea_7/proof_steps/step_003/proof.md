# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Binding setting SHA-256:
  1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256:
  31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256:
  b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency proof SHA-256 (step_002):
  08962ad6eb259d8ef386cf05bafc59b0384dd2de1111f3fe8838cd95d0b19222
- Accepted dependency review SHA-256 (step_002):
  2c32c95ed81863c9272d61295c8d08d93b15f53144840db620045aa5232075bb
- Accepted global diagnostic SHA-256:
  80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0
- Accepted global-review SHA-256:
  a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29

## Target Step Claim

- Intended claim: Use \(k=U(r)\) independent slots to obtain a universal
  positive all-target coverage probability and define the proof-only event
  \(E_{\rm cov}\); labels remain absent from the algorithm.
- Depends on: step_002.
- Assumptions used: assump:subquadratic-rank,
  assump:random-initialization (primitive), and \(E_{\rm win}\) (derived by
  step_002).
- Technical challenge: apply a coupon/union bound without assuming that the
  target events in one slot are independent.
- Intended proof tool or cited result: binomial miss bound and union bound.
- Output target: \(E_{\rm cov}\) and a universal one-run lower bound \(p_0>0\).
- Rate objective: \(k=\Theta(r^{5/3}(\log r)^{5/2})\), with the confidence
  parameters absent from the one-run rank choice.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:subquadratic-rank: for a universal constant \(C_{\rm rank}\),
  \[
  k=U(r)=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil,
  \qquad r<k\le n.
  \]
  Only the displayed formula is used in the coupon calculation; the upper
  feasibility condition \(k\le n\) is part of the setting's admissible
  parameter domain.
- assump:random-initialization: conditional on the once-drawn tensor, the
  raw Gaussian triples \(\Xi_i=(\xi_i^{(U)},\xi_i^{(V)},\xi_i^{(W)})\) are
  independent and identically distributed over slots \(i\), and are
  independent of the smoothing perturbations. This gives independence over
  slots for a fixed target. It gives no independence statement across target
  labels within one slot.

Derived interfaces supplied by the accepted dependency:

- step_002 proves that, on every realized instance in its accepted
  \(E_{\rm sm}\) domain, the proof-only event \(E_{{\rm win},ij}\) is defined
  from slot \(i\)'s raw proposal coordinates and, with \(\mathcal F_{\rm sm}\)
  denoting the smoothing sigma-field,
  \[
  p_{{\rm win},j}:=\Pr(E_{{\rm win},ij}\mid\mathcal F_{\rm sm})
  \in\left[c_{\rm win}r^{-5/3}(\log r)^{-3/2},
  C_{\rm win}r^{-5/3}(\log r)^{-3/2}\right].
  \tag{1}
  \]
  Here \(c_{\rm win}>0\) and \(C_{\rm win}<\infty\) are the universal
  constants explicitly displayed in Proposition~\ref{prop:step-002-joint-window}.
  The same result supplies, on \(E_{{\rm win},ij}\),
  \(R_j(h_i^0)\le19/20\) and \(S_j(h_i^0)\le rR_j(h_i^0)\).
- The event and its probability in (1) are conditional interfaces, not new
  primitive assumptions. We fix an arbitrary realization in the accepted
  \(E_{\rm sm}\) domain while proving the conditional coverage statement;
  no further property of \(E_{\rm sm}\) is used here.

Local conditional hypotheses: None. The only conditionalization is the
probability disintegration already present in (1) and the fixed-instance
conditioning used below. In particular, no target-event independence is
assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under assump:random-initialization and the accepted step_002 interface (1), for a fixed target \(j\), the slot-miss event \(B_j=\bigcap_{i=1}^kE_{{\rm win},ij}^{\,c}\) satisfies \(\Pr(B_j\mid\mathcal F_{\rm sm})\le r^{-C_{\rm rank}c_{\rm win}}\). | Converts the per-slot window mass into an exponential miss bound using only independence over slots. |
| unit_002 | proposition | Under assump:subquadratic-rank, unit_001, and the accepted step_002 interface, \(E_{\rm cov}:=\bigcap_{j=1}^rB_j^c\) obeys \(\Pr(E_{\rm cov}\mid\mathcal F_{\rm sm})\ge1-r^{1-C_{\rm rank}c_{\rm win}}\). Choosing \(C_{\rm rank}c_{\rm win}\ge4\) gives the universal bound \(p_0:=26/27\). | Performs the target union bound without any independence across targets. |
| unit_003 | claim | On \(E_{\rm cov}\), the proof-only witness \(i(j)=\min\{i:E_{{\rm win},ij}\}\) exists for every target and inherits \(R_j(h_{i(j)}^0)\le19/20\), \(S_j(h_{i(j)}^0)\le rR_j(h_{i(j)}^0)\); \(i(j)\) and all target labels are absent from the algorithmic procedure. | Exports the exact coverage/witness interface to step_004 and the one-run success witness to step_012 without label leakage. |

## Cited Result Applications

1. Accepted dependency step_002. Proposition~\ref{prop:step-002-joint-window}
   in the hash-matched dependency proves (1), uniformly in slot \(i\) and
   target \(j\), conditional on the fixed smoothed instance. It also proves
   the ratio initialization on each \(E_{{\rm win},ij}\). The present step
   uses exactly this public interface and does not reuse the dependency's
   internal Gaussian regression or product-tail arguments.
2. Elementary exponential inequality. For \(x\in[0,1]\),
   \(1-x\le e^{-x}\). Applying it to \(x=p_{{\rm win},j}\) is valid because
   \(p_{{\rm win},j}\) is a probability. The inequality is the only
   simplification of the binomial miss term.
3. Finite union bound. For arbitrary events \(A_1,\ldots,A_r\),
   \(\Pr(\bigcup_jA_j)\le\sum_j\Pr(A_j)\). This result requires no
   independence and is used precisely for the target-indexed miss events.

## Local Derivation

Fix throughout an arbitrary realized smoothed instance in the domain on
which the accepted step_002 interface holds, and condition on its
\(\sigma\)-field \(\mathcal F_{\rm sm}\). Write

\[
\mathscr E_{ij}:=E_{{\rm win},ij},\qquad
p_j:=p_{{\rm win},j}=\Pr(\mathscr E_{ij}\mid\mathcal F_{\rm sm}).
\tag{2}
\]

The event \(\mathscr E_{ij}\) is evaluated from the raw Gaussian tape in slot
\(i\), with the target index used only to state the analysis event. By the
accepted dependency, (1) gives \(p_j\ge c_{\rm win}r^{-5/3}(\log r)^{-3/2}\).

### unit_001: lemma

**Lemma (Fixed-target slot-miss bound;
\label{lem:step-003-slot-miss}).**
Under Assumption~\ref{assump:random-initialization} and the accepted
Proposition~\ref{prop:step-002-joint-window}, fix \(j\in[r]\) and define

\[
B_j:=\bigcap_{i=1}^k\mathscr E_{ij}^{\,c}.
\tag{3}
\]

Then, conditional on \(\mathcal F_{\rm sm}\),

\[
\Pr(B_j\mid\mathcal F_{\rm sm})=(1-p_j)^k
\le e^{-kp_j}
\le r^{-C_{\rm rank}c_{\rm win}}.
\tag{4}
\]

No relation among \(\mathscr E_{1j},\ldots,\mathscr E_{rj}\) for a common
slot is required.

**Proof / justification.**
For fixed \(j\), each \(\mathscr E_{ij}\) is a measurable function of the
raw triple \(\Xi_i\) and the fixed realized tensor. The primitive
initialization assumption makes the \(\Xi_i\)'s independent over \(i\), so
the indicators \(1_{\mathscr E_{ij}}\) are independent and have the common
conditional success probability \(p_j\). Therefore the first equality in
(4) holds. The elementary inequality in Cited Result 2 gives the first
inequality. From (1) and the rank formula,

\[
kp_j\ \ge\ \left(C_{\rm rank}r^{5/3}(\log r)^{5/2}\right)
       \left(c_{\rm win}r^{-5/3}(\log r)^{-3/2}\right)
 =C_{\rm rank}c_{\rm win}\log r,
\tag{5}
\]

where the ceiling in \(k\) only increases the left side. Exponentiating
(5) proves the final inequality in (4). The proof has used independence
only in the slot index \(i\), and nowhere factors events with different
target labels. \(\square\)

### unit_002: proposition

**Proposition (All-target coupon coverage;
\label{prop:step-003-coupon}).**
Under Assumption~\ref{assump:subquadratic-rank}, Assumption~\ref{assump:random-initialization},
and the accepted Proposition~\ref{prop:step-002-joint-window}, define

\[
E_{\rm cov}:=\bigcap_{j=1}^r\bigcup_{i=1}^k\mathscr E_{ij}
       =\bigcap_{j=1}^r B_j^{\,c}.
\tag{6}
\]

Then, for every fixed smoothed instance in the accepted dependency domain,

\[
\Pr(E_{\rm cov}\mid\mathcal F_{\rm sm})
\ge 1-r^{\,1-C_{\rm rank}c_{\rm win}}.
\tag{7}
\]

Choose the universal rank constant once and for all so that

\[
C_{\rm rank}c_{\rm win}\ge4.
\tag{8}
\]

Then, for all \(r\ge3\),

\[
\Pr(E_{\rm cov}\mid\mathcal F_{\rm sm})\ge1-r^{-3}\ge
p_0,\qquad p_0:=1-3^{-3}={26\over27}>0.
\tag{9}
\]

No independence across the \(r\) target-indexed events is asserted or used.

**Proof / justification.**
The complement of (6) is \(\bigcup_{j=1}^rB_j\). Applying the finite
union bound and Lemma~\ref{lem:step-003-slot-miss} gives

\[
\Pr(E_{\rm cov}^{\,c}\mid\mathcal F_{\rm sm})
\le\sum_{j=1}^r\Pr(B_j\mid\mathcal F_{\rm sm})
\le r\,r^{-C_{\rm rank}c_{\rm win}}
=r^{\,1-C_{\rm rank}c_{\rm win}},
\tag{10}
\]

which proves (7). Under (8), the exponent is at most \(-3\), and
\(r^{-3}\le3^{-3}\) for \(r\ge3\), proving (9). The events \(B_j\) may be
maximally correlated for different \(j\); (10) remains valid because it is a
union bound rather than a product calculation. \(\square\)

### unit_003: claim

**Claim (Proof-only witnesses and label-free procedure interface;
\label{claim:step-003-witness-interface}).**
Under the hypotheses of Proposition~\ref{prop:step-003-coupon}, on the
event \(E_{\rm cov}\), for every \(j\in[r]\) the finite nonempty set

\[
\mathcal I_j:=\{i\in[k]:\mathscr E_{ij}\text{ occurs}\}
\tag{11}
\]

has a proof-only canonical witness \(i(j):=\min\mathcal I_j\). The
accepted step_002 conclusion then gives

\[
R_j(h_{i(j)}^0)\le{19\over20},\qquad
S_j(h_{i(j)}^0)\le rR_j(h_{i(j)}^0).
\tag{12}
\]

The construction of \(E_{\rm cov}\), \(\mathcal I_j\), and \(i(j)\) is an
analysis definition only: the SL-SC-JEP-ALS procedure does not read any
target index \(j\), any \(u_j,v_j,w_j\), any raw-coordinate window event, or
the proof-only witness. It executes the same slotwise Jacobi, score, and
clustering rules for every tape. Thus (6) is a generated probabilistic
interface and not a label-dependent acceptance test.

**Proof / justification.**
By (6), each union over \(i\) is nonempty on \(E_{\rm cov}\); finiteness of
\([k]\) makes the minimum in (11) well-defined. Equation (12) is exactly
the ratio conclusion of Proposition~\ref{prop:step-002-joint-window} applied
to the witness event \(\mathscr E_{i(j)j}\). The final statement follows by
inspection of the setting's procedure: target labels occur only in the
proof definitions of \(A_{\ell\mid j},B_{\ell\mid j},C_{\ell\mid j}\) and
\(E_{{\rm win},ij}\); no such quantities are computed by the algorithm. A
proof may use \(i(j)\) to organize the subsequent targetwise induction,
while the actual state evolution remains the unlabeled stored-state
trajectory. \(\square\)

## Target-Step Assembly

Fix a realized smoothed instance for which the accepted step_002 interface
holds. Proposition~\ref{prop:step-002-joint-window} supplies a uniform
per-target lower probability \(p_j\ge c_{\rm win}r^{-5/3}(\log r)^{-3/2}\).
Lemma~\ref{lem:step-003-slot-miss} uses the \(k\) independent raw slots to
make each target miss probability at most \(r^{-C_{\rm rank}c_{\rm win}}\).
Proposition~\ref{prop:step-003-coupon} takes a union over targets and, after
the single universal choice (8), produces

\[
E_{\rm cov}=\{\text{every target has at least one jointly observable
window slot}\},\qquad
\Pr(E_{\rm cov}\mid\mathcal F_{\rm sm})\ge p_0={26\over27}.
\tag{13}
\]

Claim~\ref{claim:step-003-witness-interface} records the targetwise initial
ratio interface for any proof-only witness and explicitly separates it from
the label-free procedure. The proof never assumes independence among the
events for different targets in a slot or across the target index; only the
primitive slot independence is used. Therefore (13) is exactly the
accepted sketch-row output \(E_{\rm cov},p_0\), ready for step_004's
trajectory induction and step_012's restart calculation.

For completeness, the rank scaling has no hidden confidence factor. With
\(C_{\rm rank}\) fixed universally and \(r\ge3\),

\[
C_{\rm rank}r^{5/3}(\log r)^{5/2}\le k
\le\left(C_{\rm rank}+{1\over3^{5/3}(\log3)^{5/2}}\right)
 r^{5/3}(\log r)^{5/2},
\tag{14}
\]

so \(k=\Theta(r^{5/3}(\log r)^{5/2})\). The upper feasibility and
subquadratic statement are already part of assump:subquadratic-rank;
indeed \(k/r^2=O((\log r)^{5/2}/r^{1/3})=o(1)\) for fixed
\(C_{\rm rank}\). If an unconditional nested probability is desired, the
tower property and the accepted instance bound give

\[
\Pr(E_{\rm sm}\cap E_{\rm cov})\ge
\Pr(E_{\rm sm})\,p_0\ge(1-\delta_{\rm sm})p_0,
\tag{15}
\]

but the theorem-facing one-run initialization guarantee remains the
conditional bound (13), with \(\delta_{\rm init}\) reserved for independent
restarts in step_012.

## Explicit Rate Audit

- Exposed variables: \(r\), \(k=U(r)\), and the universal constants
  \(c_{\rm win}\) and \(C_{\rm rank}\). The exported miss exponent is
  \(C_{\rm rank}c_{\rm win}\), and the rank rate is
  \(r^{5/3}(\log r)^{5/2}\).
- Hidden constants may depend on: only the fixed universal numerical
  \(c_{\rm win},C_{\rm win}\) from step_002 and the chosen universal
  \(C_{\rm rank}\).
- Hidden constants may not depend on: \(n\), the realized base triple or
  smoothed instance, \(j\), \(i\), \(\kappa_0\), \(\rho\), \(\epsilon\),
  \(\delta_{\rm sm}\), or \(\delta_{\rm init}\).
- Fixed quantities: the realized tensor is fixed while conditioning on
  \(\mathcal F_{\rm sm}\); \(q_*,a_*,b_*\) and the comparison constants from
  step_002 are fixed numerical quantities.
- Probability mode: conditional on the once-drawn smoothed instance and
  over the \(k\) raw proposal slots. Equation (15) is an optional nested
  conversion and is not substituted for the conditional theorem clause.
- Horizon mode: one finite \(k\)-slot run; the union is finite-horizon and
  makes no all-time or cross-restart assertion.
- Norm/event mode: membership in the raw-coordinate event
  \(E_{{\rm win},ij}\), with the projective \(R,S\) bounds in (12). No
  surrogate norm or unlabeled score is substituted for this interface.
- Admissibility conditions and auxiliary tolerances: \(r\ge3\), the two
  primitive assumptions listed above, and the accepted conditional domain of
  step_002; no new trajectory or coverage condition is assumed.
- Term absorption or simplification inequalities: (5) uses the exact
  cancellation of the \(r^{5/3}\) and \((\log r)^{3/2}\) powers, and
  \(1-p\le e^{-p}\); (10) charges the target union explicitly. The ceiling
  only improves the lower bound and is bounded in (14).
- Probability conversion: the fixed-target product uses only slot
  independence; the target union uses no independence. The optional tower
  conversion is (15).
- Contribution to any Rate Specialization Bridge: exports the universal
  \(p_0\) to step_004 and step_012; no confidence-dependent choice of
  \(k\) is introduced.
- Baseline-reduction check: in the exact orthogonal/equal-weight
  specialization, step_002's lower \(p_{\rm win}\) remains valid (the
  regression shifts only disappear), so the same coupon bound gives (13).
  This step does not replace the later exact zero-residual baseline with a
  finite-error surrogate.

## Blockers

None

## Notation And Assumption Notes

- Public-facing objects: \(E_{\rm cov}\) and the universal constant
  \(p_0=26/27\) are the only exported outputs. The per-target events
  \(E_{{\rm win},ij}\) and \(p_{{\rm win},j}\) are inherited from the
  accepted step_002 interface.
- Proof-only objects: \(B_j\), \(\mathcal I_j\), \(i(j)\), and the
  target-indexed indicators are finite-union bookkeeping. They are not
  algorithmic acceptance variables. \(\mathcal F_{\rm sm}\) is the
  conditioning sigma-field already used by step_002.
- Constant provenance: \(c_{\rm win}\) is the explicit positive constant
  proved in step_002; \(C_{\rm rank}\) is the universal setting constant,
  chosen to satisfy (8); \(p_0\) is proved in
  Proposition~\ref{prop:step-003-coupon}. No free margin or probability
  constant is introduced.
- Assumption provenance: slot independence is primitive. The window event,
  its probability, \(E_{\rm cov}\), and the witness map are generated
  objects proved or supplied by the named steps. No generated coverage,
  trajectory, certification, or basin fact is promoted to a primitive
  assumption.
- Mechanism witness and boundary audit: the claim class is a generated
  probabilistic activation/coverage event used by step_004 and step_012.
  Its mechanism source is the positive per-slot Gaussian-window mass from
  step_002 plus independent slot repetition. The opposing defect is a
  target miss; (4) charges it exponentially and (10) charges the finite
  target union. The positive margin is \(c_{\rm win}>0\), and (8) makes the
  residual \(r^{1-C_{\rm rank}c_{\rm win}}\le r^{-3}\). If the source
  vanished (\(c_{\rm win}=0\)), a positive coverage lower bound would be
  impossible; this is why the explicit source is retained. The \(r=3\)
  boundary is covered by (9), and perfect dependence across target labels
  does not invalidate the union bound.
- Generated-output flow: step_002 produces
  \(E_{\rm win},p_{\rm win}\); this step produces \(E_{\rm cov},p_0\);
  step_004 consumes the coverage event for ratio/certification induction,
  and step_012 consumes \(p_0\) for restart amplification. The path is
  finite and acyclic.
- Global diagnostic boundary: the paired global diagnostic and review
  hashes above were accepted. Their coupon-bound observation was used only
  as planning context; neither artifact is evidence, a cited-result source,
  an assumption source, or authority to change the exact step claim.
- Hash preflight: the setting, sketch, sketch review, and accepted
  step_002 proof/review hashes in Step Identity were recomputed before this
  artifact was finalized.
