# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Under the named conditional prefix interface, prove score
  decomposition and the singleton/mixed-support angular landscape dichotomy.
- Dependencies: `step_003`.
- Assumptions used: derived instance event; an explicitly conditional legal
  protected-prefix interface; `assump:base-product-balance`.
- Technical challenge: nonorthogonal paths and Hessian gap.
- Intended proof tool or cited result: direct product-sphere
  stationarity/Hessian expansion.
- Output target: isolation margin and certificate dichotomy.
- Rate objective: R2; retain all structural, history, and numerical defects.
- Sketch-row review status: `PENDING`. The sketch-level authority is the
  accepted `proof_sketch_review.md`, not this row-local field.

## Step Proof Status

PARTIAL_BLOCKED

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base-product-balance` is used only to translate a realized
    product-weight ratio into `tau_+/tau_- <= 2 Gamma_star`.
  - No other primitive condition is used directly in the local calculations.
    The realized Gram and norm conclusions are supplied by the accepted
    dependency, rather than being reintroduced as assumptions.
- Derived invariants supplied by accepted dependencies:
  - On `E_inst`, the accepted Step 002 artifacts supply the realized
    nonzero columns, `nu_real`, the absolute-Gram kernels, and the exact
    unresolved target coordinates.
  - The accepted Step 003 artifacts supply, for one legal finite history, the
    exact actual-history array `A_I`, the convergent statewise `Theta_I`, and
    the prescribed zero-diagonal conventions. They do not supply a bound on
    the full tensor `sum_{i in I} E_i` in spectral norm, nor a source-exclusion
    bound for its components orthogonal to all realized target spans.
- Local conditional hypotheses:
  - Fix a finite protected state `I` with `|I|<r`, balanced protected slots,
    joint-zero slots outside `I`, an analysis injection, and the exact
    protected residual `R_I` from `setting.md`.
  - Fix a full-space scratch state `(g,u,v,w)` with `(u,v,w)` on the three
    ambient spheres and `g>0`. The certificate inequalities in `setting.md`
    may be imposed when testing the obstruction below.
  - The phrase "legal conditional prefix interface" is used only in the
    form explicitly exported by Step 003: finite accepted tensors `E_i` and
    their sampled contractions `A_I`. No additional outside-span, history
    spectral-norm, or capture-versus-history inequality is silently assumed.
- Accepted dependency artifacts:
  - `perspective_2/idea_9/proof_steps/step_003/proof.md`, sketch attempt 4,
    unit attempt 1, `Step Proof Status = COMPLETE`.
  - `perspective_2/idea_9/proof_steps/step_003/review.md`, with
    `Step-Review Status = ACCEPTED`, reviewing that exact artifact.

All statements below are deterministic after conditioning on the accepted
instance and on the displayed finite history. The missing control identified
below is a generated invariant, not a primitive condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted realized target and a finite protected residual, the exact radial score identity and capture inequality hold for every full-space unit triple. | Fixes the scalar decomposition and exposes the only lower bound on the positive score supplied by `Cert`. |
| `unit_002` | lemma | Under the same conditional state, the exact product-sphere gradient and Hessian formulas hold, and the certificate converts to score-gradient and score-Hessian inequalities with the displayed `P` rates. | Supplies the valid local angular equations without invoking an external strict-saddle theorem. |
| `unit_003` | proposition | Orthogonalizing the unresolved realized columns gives a diagonal reference tensor plus a static perturbation of size `O(tau_+ nu_real)`, while the history perturbation has an uncontrolled full spectral norm `omega_I`; `A_I` and `Theta_I` do not bound `omega_I`. | Identifies the precise residual-to-target gap that prevents the landscape dichotomy from being assembled. |
| `unit_004` | proposition | The currently declared conditional interface admits an invisible outside-span rank-one residual for which a full-space scratch state satisfies every displayed certificate inequality but is far from every unresolved target atom, whenever the unconstrained perturbation scale exceeds the capture and Hessian thresholds. | Gives an explicit boundary witness showing that the missing source-exclusion/capture bridge is theorem-critical. |
| `unit_005` | hypothesis | A target-preserving repair requires a generated outside-span bound and an explicit comparison of that bound with the capture and curvature thresholds before the singleton/mixed-support exchange argument can be used. | Records the smallest `/proof-sketch` repair interface; it is not consumed as an assumption in this blocked proof. |

## Cited Result Applications

1. **Accepted Step 003 statewise envelope.** For a finite conditional history,
   Step 003 proves that `A_I` is a finite nonnegative array and that the
   setting-defined `Theta_I` is the convergent resolvent of
   `S+A_I+e_num*1`. Its proof explicitly does not bound the full accepted
   error tensor. We use only this stated interface.

2. **Elementary orthogonalization fact (proved here).** If a symmetric Gram
   matrix `G` satisfies `||G-I||_op <= nu < 1/2`, then, with
   `W=G^(1/2)`,
   `||W-I||_op <= nu/(1+sqrt(1-nu)) <= nu` and
   `||W||_op <= sqrt(1+nu)`. This follows by applying the scalar inequality
   `|sqrt(lambda)-1|=|lambda-1|/(sqrt(lambda)+1)` to every eigenvalue.

3. **Elementary sphere differential identities (proved in unit_002).** For
   a trilinear tensor `R`, the derivative and the second geodesic derivative
   on a product of unit spheres are obtained by differentiating the three
   great-circle curves. No cited strict-saddle or tensor-decomposition
   theorem is used.

## Local Derivation

### unit_001: lemma

**Lemma (Exact score, radial root, and capture floor).**
\label{lem:step-004-score}

Under the accepted realized target, if `I` is a finite conditional protected
state and `(u,v,w)` is a unit triple, then with

\[
s=s_I(u,v,w)=\langle R_I,u\otimes v\otimes w\rangle,
\qquad t=g^3,
\]

the exact radial objective is

\[
f_I(g,u,v,w)=\frac12\|R_I\|_F^2-t s+\frac12t^2,
\qquad \partial_g f_I=-3g^2(s-t),
\]

and

\[
\Delta F_I(g,u,v,w)=t s-\frac12t^2
 =\frac12s^2-\frac12(t-s)^2\le\frac12s^2.
\]

Consequently, any state satisfying the capture inequality in `Cert` obeys

\[
s^2\ge 2\|R_I\|_F^2 P^{-D_{\rm cap}}.
\tag{4.1}
\]

**Proof.** Since all three factors are unit vectors,
`||g^3 u tensor v tensor w||_F^2=g^6=t^2` and the cross inner product is
`t s`. Expanding the square gives the first display; differentiating
`t=g^3` gives the radial derivative. Completing the square in `t` gives the
identity for `Delta F` and its upper bound. The capture part of `Cert` then
implies (4.1). No lower bound on `s` stronger than (4.1) is available from
the stated certificate.

### unit_002: lemma

**Lemma (Exact product-sphere gradient and Hessian).**
\label{lem:step-004-angular-calculus}

Under the same conditional state, define

\[
a_A=R_I\times_2 v^\top\times_3 w^\top,
\quad
a_B=R_I\times_1 u^\top\times_3 w^\top,
\quad
a_C=R_I\times_1 u^\top\times_2 v^\top.
\]

For tangent vectors
`xi=(xi_A,xi_B,xi_C)` with
`xi_A\perp u`, `xi_B\perp v`, and `xi_C\perp w`,

\[
\operatorname{grad}_{\mathcal S}s
 = (P_{u^\perp}a_A,P_{v^\perp}a_B,P_{w^\perp}a_C),
\qquad
\operatorname{grad}_{\mathcal S}f_I=-g^3\operatorname{grad}_{\mathcal S}s,
\]

and

\[
\begin{aligned}
\langle\operatorname{Hess}_{\mathcal S}s\,\xi,\xi\rangle
={}&2\langle R_I,
 \xi_A\otimes\xi_B\otimes w
 +\xi_A\otimes v\otimes\xi_C
 +u\otimes\xi_B\otimes\xi_C\rangle\\
&-s(\|\xi_A\|_2^2+\|\xi_B\|_2^2+\|\xi_C\|_2^2),\\
\langle H_{\rm ang}\xi,\xi\rangle
={}&-g^3\langle\operatorname{Hess}_{\mathcal S}s\,\xi,\xi\rangle.
\end{aligned}
\tag{4.2}
\]

If the certificate holds, then

\[
\|\operatorname{grad}_{\mathcal S}s\|_2
 \le {e_{\rm num}N_I(g)\over g^3},
\qquad
\operatorname{Hess}_{\mathcal S}s
 \preceq -{N_I(g)P^{-D_{\rm gap}}\over g^3}I.
\tag{4.3}
\]

**Proof.** Differentiate `s` in each factor and project to the corresponding
tangent space. Along the three product great circles, the mixed second
derivatives produce the three cross terms in (4.2); the second derivative of
each unit-speed sphere curve contributes `-s||xi_M||^2`. The identity for
`f_I` in unit_001 gives the sign and scale of the Hessian. Finally,
`e_ang=e_num` in `Cert` gives the first inequality in (4.3), while
`H_ang/N_I >= P^{-D_gap}I` and `H_ang=-g^3 Hess s` give the second.

### unit_003: proposition

**Proposition (Target-frame decomposition and the unbounded history defect).**
\label{prop:step-004-frame-defect}

Under the accepted Step 002 realized Gram bound, let
`U=U_I` and `m=|U|>=1`. For each mode let `V_M` be the matrix of unresolved
normalized realized columns and let

\[
G_{M,U}=V_M^\top V_M,
\qquad Q_M=V_M G_{M,U}^{-1/2},
\qquad W_M=G_{M,U}^{1/2}.
\]

Then the columns of `Q_M` are orthonormal and the unresolved target tensor
has the decomposition

\[
T_U=D_U+W_{\rm stat},
\qquad
D_U=\sum_{j\in U}\tau_j q_{j,A}\otimes q_{j,B}\otimes q_{j,C},
\]

with

\[
\|W_{\rm stat}\|_\sigma
\le 3\tau_+\nu_{\rm real}(1+\nu_{\rm real}).
\tag{4.4}
\]

Writing `W_hist=-sum_{i in I}E_i`, the current residual is
`R_I=D_U+W_{\rm stat}+W_{\rm hist}`. The Step 003 outputs constrain the
sampled array `A_I` and hence `Theta_I`, but they provide no bound on

\[
\omega_I:=\|W_{\rm hist}\|_\sigma
 =\sup_{x,y,z\in\mathbb S^{n-1}}
 |\langle W_{\rm hist},x\otimes y\otimes z\rangle|.
\tag{4.5}
\]

In particular, a tensor `W_perp=d_A\otimes d_B\otimes d_C` with
`d_M\perp\operatorname{span}(V_M)` is invisible to every contraction used in
`A_I`, while having `\|W_perp\|_\sigma=1`.

**Proof.** The Gram restriction has the same operator deviation bound as the
full Gram. The orthogonalization fact in Cited Result 2 gives the claims on
`Q_M,W_M`. For unit `x,y,z`, set `a=W_A Q_A^\top x`, `b=W_B Q_B^\top y`,
and `c=W_C Q_C^\top z`. The difference between
`sum_j tau_j a_j b_j c_j` and
`sum_j tau_j (Q_A^\top x)_j(Q_B^\top y)_j(Q_C^\top z)_j` is telescoped in
the three factors. Each term is at most
`tau_+ ||W_M-I||_op ||a'||_2||b'||_2` using
`||p\circ q||_2<=||p||_2||q||_2` and `||W_N||_op<=sqrt(1+nu_real)`.
Summing the three terms proves (4.4). The history identity follows directly
from the definition of `R_I` and `E_i`. If every `d_M` is orthogonal to the
corresponding unresolved span, then all target-frame contractions in
`(R-hist-src)` vanish, but the rank-one tensor has spectral norm one. Thus the
finite sampled array and the full tensor norm are different interfaces.

The proposition deliberately does not assert that an arbitrary `W_perp` is
generated by the transaction protocol. Excluding it requires a generated
source-exclusion proof, which is absent from the accepted Step 003 interface.

### unit_004: proposition

**Proposition (Invisible rank-one certificate obstruction).**
\label{prop:step-004-invisible-certificate}

The declared conditional interface does not imply the Step 004 landscape
dichotomy. Let `m=1`, let `q_A,q_B,q_C` be orthonormal unresolved target
directions, and choose unit `d_A,d_B,d_C` orthogonal to the corresponding
full realized target spans and to all protected directions. For any
`0<zeta<(2R_{\max})^3`, consider the interface completion

\[
R_\zeta=\tau q_A\otimes q_B\otimes q_C
 +\zeta d_A\otimes d_B\otimes d_C,
\qquad \tau>0.
\tag{4.6}
\]

The sampled history array can be the same as for the first summand (the
second summand is invisible to `A_I`), while the full residual is (4.6).
At

\[
(u,v,w)=(d_A,d_B,d_C),\qquad g^3=\zeta,
\]

one has `s_I=\zeta`, `grad_S f_I=0`,
`H_{\rm ang}=\zeta^2 I` on the product tangent space, and
`Delta F_I=\zeta^2/2`. Also `Sep=0` for a protected span orthogonal to the
`d_M`. Hence all displayed certificate inequalities hold whenever

\[
{\zeta^2\over 1+\sqrt{\tau^2+\zeta^2}+\zeta^{4/3}}
 \ge P^{-D_{\rm gap}},
\qquad
{\zeta^2\over2(\tau^2+\zeta^2)}\ge P^{-D_{\rm cap}}.
\tag{4.7}
\]

For fixed positive `tau,zeta`, these inequalities hold for all sufficiently
large `P`, and the setting permits arbitrarily large `P` through the ambient
dimension `n`. The candidate directions have zero correlation with the only
unresolved atom and therefore are not an `O(eta_0)` perturbation of it.

**Proof.** All contractions between the two rank-one summands in (4.6)
vanish. At the `d` triple, the first summand has zero score and zero first
and second mixed contractions. The second summand is a rank-one tensor at
its own unit factors, so its score is `zeta`, its tangent gradient is zero,
and its score Hessian is `-zeta I`; (4.2) therefore gives
`H_ang=zeta^2 I`. The radial identity in unit_001 gives the stated root and
capture. The norm of (4.6) is `sqrt(tau^2+zeta^2)`, and separation is zero by
construction. This proves (4.7) and the failure of target matching.

This is an interface counterexample: it is not an assertion that the
algorithm has already generated (4.6). The current sketch has no producer
that rules out this completion from the conditional `A_I` interface. A
proof that the factor-difference form of each `E_i` excludes it would itself
be the missing source-exclusion bridge and must be assigned and proved before
the landscape conclusion can be consumed.

### unit_005: hypothesis

**Required source-exclusion/capture bridge for a repaired sketch.**
\label{hyp:step-004-repair-interface}

To make the singleton/mixed-support claim step-local, a repaired sketch must
export, from primitive conditions and accepted protected-prefix outputs, a
current-notation bound of the form

\[
\omega_I\le \omega_{\parallel,I}+\omega_{\perp,I},
\qquad
\omega_{\perp,I}le c_\perp
\min\left\{ {\tau_-\over m},
 {\|R_I\|_F P^{-D_{\rm cap}/2}\over 1},
 {N_I(g)P^{-D_{\rm gap}}\over g^3}\right\},
\tag{4.8}
\]

and a corresponding target-frame transfer inequality that bounds
`omega_parallel,I` by the actual `A_I`/`Theta_I` entries. It must also state
the source of the bound for components in each mode-orthogonal complement
(for example, a proved stationarity/source-exclusion recurrence for accepted
slots), not merely name `R-euc` or a future induction. Under (4.8), the
standard two-label exchange direction in (4.2) can compare the positive
mixed-support score curvature with the static and history defects; the
alternative is a singleton branch. The capture comparison in (4.8) is
necessary because (4.1) alone allows scores below an uncontrolled history
component.

This is a repair obligation, not a theorem assumption used by the present
artifact. If it can be derived in the same setting, the smallest route is
`/proof-sketch` to add the producer and its dependency before `step_004`.

## Target-Step Assembly

Lemmas~\ref{lem:step-004-score} and
\ref{lem:step-004-angular-calculus} completely establish the exact radial,
angular-gradient, and angular-Hessian interfaces for the current residual.
Proposition~\ref{prop:step-004-frame-defect} then gives the strongest
unconditional target-frame decomposition available from accepted Step 003:
the static nonorthogonality is explicitly `O(tau_+ nu_real)`, but the full
history spectral defect `omega_I` is not controlled by `A_I` or `Theta_I`.
Proposition~\ref{prop:step-004-invisible-certificate} shows that this is not
cosmetic. At arbitrarily large allowed `P`, an interface-invisible rank-one
component can satisfy the exact certificate while lying a constant distance
from every unresolved atom. Therefore the singleton/mixed-support
alternative and its isolation margin cannot be concluded under the exact
sketch-row assumptions.

The obstruction is a `sketch/interface defect`, not a newly assumed
primitive condition: the setting could in principle support a generated
source-exclusion bridge, but no accepted dependency currently supplies it.
Because this step cannot export the required isolation/matching producer,
Step 005 and the later generated-output flow cannot legally consume a
complete Step 004 result.

## Mechanism Witness And Boundary Audit

| Obligation | Claim class / theorem role | Available mechanism source | Missing or opposing term | Required control relation | Boundary stress and failure mode | Producer / consumers | Locality / retry |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Current-residual singleton isolation | support, signed curvature, landscape | Exact equations (4.1)--(4.3) and static orthogonalization | `W_hist` components outside all target spans; `omega_I` | Bound `omega_perp` below both mixed-curvature and capture scales, then use a two-label exchange direction | The invisible rank-one family (4.6)--(4.7) makes the source active while the target conclusion is false; no boundary exclusion is available | Step 003 exports `A_I,Theta_I`; Step 004 should export isolation to Step 005 and Step 009 | `sketch/interface defect` -> `/proof-sketch` |
| Generated certificate-to-label output | membership, object-target bridge | Positive score, radial equation, angular Hessian | An interface-invisible certificate can have no unresolved label | A source-exclusion producer must precede label matching; `A_I` sampling alone is insufficient | `Sep=0` in (4.6), so the existing separation gate does not repair it | Intended Step 004 -> Step 005, 009, 011, 014 | `sketch/interface defect` -> `/proof-sketch` |
| Capture-rate specialization | quantitative threshold | Exact capture identity (4.1) | `P^{-D_cap}` may be arbitrarily smaller than an uncontrolled history component as `n` grows | State and prove `P^{-D_cap}` versus the generated outside-span error, or change the certificate threshold | Conditions (4.7) pass for fixed `tau,zeta` and sufficiently large allowed `P` | `Cert` is consumed by Step 004; no current producer controls the residual scale | `sketch/interface defect` -> `/proof-sketch` |

The positive term in the intended curvature claim is the rank-one target
score `g^3 s_I`; the opposing term is the full history contraction in the
same angular Hessian, not merely the sampled `A_I` entries. The source-to-
claim mismatch is therefore concrete and theorem-critical. The exact target
object in the goal is the realized atom `phi_j` under Euclidean direction and
radius metrics; the witness candidate in (4.6) is orthogonal to that object,
so no surrogate-target ambiguity is involved.

## Explicit Rate Audit

- Exposed variables: `n,r,k,kappa,rho,Gamma_star,P,nu_real,eta0,e_num`,
  `D_cap,D_gap`, `tau_-`, `tau_+`, `m`, `N_I(g)`, `s_I`, `g`, the history
  spectral scale `omega_I`, and the witness scale `zeta`.
- Hidden constants may depend on: only the fixed class and protocol
  constants already permitted by `setting.md` and fixed numerical constants
  in the displayed inequalities.
- Hidden constants may not depend on: dimensions, `P`, the realized
  instance, protected history, commit order, target label, tape, or
  `epsilon`.
- Fixed quantities: one accepted realized instance and one finite conditional
  history; the obstruction then lets `P` grow through `n` while keeping the
  displayed local scales fixed.
- Probability mode: deterministic conditional on `E_inst` and the local
  history. No probability conversion is performed in this step.
- Horizon mode: one-state conditional; no all-prefix or trajectory claim is
  made because the missing generated source is precisely the blocker.
- Norm mode: full tensor spectral norm for the history defect, product-sphere
  angular Hessian, Euclidean direction distance, and Frobenius capture norm.
- Admissibility conditions and auxiliary tolerances: the exact `Cert`
  inequalities, `q_res,q_row<=1/4` from accepted dependencies, and
  `e_num=P^{-D_stat}`. No unlisted outside-span admissibility condition is
  imposed.
- Term absorption or simplification inequalities: (4.1), (4.4), and (4.7)
  are explicit. No history term is absorbed into `eta0`, `nu_real`, or a
  capture margin.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this blocked step supplies
  the exact differential identities and identifies the missing
  capture/source-exclusion comparison; it supplies no public rate.
- Baseline-reduction check: in the exact `H=0`, `e_num=0`, empty-history
  branch the missing history tensor is zero and the diagonal target has the
  expected atom-wise landscape. The obstruction concerns finite generated
  history and cannot be erased by merely noting that the exact baseline is
  benign.

## Blockers

1. **Missing outside-span history/source-exclusion producer (`sketch/interface
   defect`).** Accepted Step 003 supplies only the sampled target-frame array
   `A_I` and its Neumann envelope `Theta_I`; it does not prove or export a
   bound on `omega_I=||sum_{i in I}E_i||_sigma`, nor on mode-orthogonal
   contractions consumed by a full-space angular Hessian. The exact formulas
   (4.2)--(4.3) show that this quantity enters the theorem-critical
   curvature and stationarity claims.
2. **Capture threshold is not linked to the missing defect.** The exact
   certificate gives only (4.1). Since `P` can grow with `n` without an
   upper relation to the generated history scale, the interface witness
   (4.6)--(4.7) cannot be ruled out. A proof cannot silently choose an
   exponent or absorb this term.
3. **Generated-output flow is incomplete.** Step 004 is supposed to produce
   the isolation/matching-ready interface for Step 005 and Step 009, but no
   accepted producer currently supplies the source-exclusion bound before
   this step. Adding it as a local hypothesis would make the target
   conditional on an unproved generated invariant and would violate the
   Assumption Provenance Contract.

Smallest repair target: `/proof-sketch`.

Required repair bundle:

- Add a named pre-landscape generated-output bridge (or strengthen the
  conditional prefix interface) that proves a full history tensor
  spectral/orthogonal-complement bound from primitive conditions and accepted
  prefix outputs.
- State the exact comparison of that bound with the mixed-support curvature
  scale and with `||R_I||_F P^{-D_cap/2}`; retain `P,n,r` dependence.
- Expose the producer-consumer path from that bound to Step 004, then to
  Step 005 and the finite-prefix induction. Do not promote the bound to a
  primitive assumption or hide it in `Theta_I`.

## Notation And Assumption Notes

- `s,t,N_I(g)`, `a_A,a_B,a_C`, tangent vectors, `V_M,Q_M,W_M`, `D_U`,
  `W_stat`, `W_hist`, `omega_I`, and `zeta` are proof-local helpers defined
  in the displayed units. `D_U` is an appendix-local diagonal reference
  object; it is not exported as the theorem target. `omega_I` is a
  proof-local diagnostic quantity whose missing bound is the blocker.
- `tau_-` and `tau_+` are direct expressions from the realized target
  weights restricted to the unresolved set. `nu_real` and `eta0` are
  accepted setting/Step 002 quantities. `zeta` is an explicit witness scale,
  not a theorem parameter or added assumption; its admissible inequalities
  are displayed in (4.7).
- The only new numerical constants are fixed universal constants in the
  inequalities; their provenance is direct algebra or the stated
  orthogonalization inequality. No free bounded radius, event, or threshold
  is introduced.
- The protected state and `A_I` are local conditional hypotheses exactly as
  in accepted Step 003. Generated matching, boundedness, stationarity of
  prior slots, and source-exclusion are not reclassified as primitive facts.
- The exact target consumed by the theorem is the realized `T` and its atom
  `phi_j`; the diagnostic tensor (4.6) is compared in the same full-space
  Frobenius/spectral and sphere metrics. No projected, whitened, or
  orthogonalized surrogate is used as a theorem conclusion.
- The paired `global_proof.md` and `global_proof_review.md` were read only for
  planning context (their conditional landscape idea and dependency names).
  They are not cited as proof evidence, an assumption source, or authority to
  change the Step 004 claim.
- Baseline scope: when `H=0`, `e_num=0`, and `A_I=0`, the accepted Step 003
  interface gives no history defect and the exact diagonal landscape is
  recovered. This does not prove the finite-history bridge required here.
