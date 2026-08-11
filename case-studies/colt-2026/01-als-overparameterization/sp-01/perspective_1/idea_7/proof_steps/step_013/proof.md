# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_013
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_008 proof/review SHA-256: 66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1 / 2cd27659b43be48576665774753c34efa67f2e968c176350867670d90de87b21
- Accepted dependency step_010 proof/review SHA-256: 0e5a33ae48c86f832c42f0de46d2956550ba92ce8cf322afaf35783bdcb91024 / 9e6e6f07bfe64756c3c2af3c2fcb5deaa88914eb5dda5aca2ef90492229682b9
- Accepted dependency step_011 proof/review SHA-256: 261a9f185e507aa82a022051791ca90bf29faf473440d54920e1632433219ed0 / 9dbaa42776c3f3c91b8172d6564261627673fd75bd854542e810084efb8ad1af
- Accepted dependency step_012 proof/review SHA-256: e0d860a0172c8926ee8fb049fa4b0241f3345ef1e848f936819fa792b6b7d78e / 0bd8442d48d0c1307391d74139179d3c72100443b3ef346e3b03fb022fbc9789

## Target Step Claim

The accepted sketch row is:

> Under the deterministic orthogonal equal-weight specialization, verify that
> all three frozen landing outputs and every cyclic refresh equal the exact
> target factors with common product error zero and residual exactly zero.

The step consumes the E_seed, E_land, and E_basin interfaces from steps 008,
010, and 011, and the original residual-test semantics from step 012. It is a
terminal deterministic specialization: it must preserve the exact equality
conclusion and may not replace it by an \(O(\omega)\) envelope.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:base-scale supplies the positive scale convention and the fixed
  numerical definitions used by the main theorem. No quantitative part of the
  baseline calculation depends on the value of \(\kappa _0\).
- assump:accuracy-confidence supplies \(0<\epsilon<1\) for the final
  residual test. The deterministic identities below do not use either
  confidence parameter.

### Derived invariants supplied by accepted dependencies

- The accepted step-008 E_seed interface supplies the observable balanced
  seed notation, the target permutation/product-one sign chart, and the
  definitions of \(C_M^0,N_M^0,s^0\). Their exact values in the baseline are
  derived in Lemma~\ref{lem:step-013-baseline-geometry}, not assumed.
- The accepted step-010 interface supplies the synchronized frozen-input
  Moore--Penrose formulas, the positive-norm rebalance rule, and the fact
  that all three designs are formed from the one frozen seed. The baseline
  calculation below independently evaluates those formulas in all modes.
- The accepted step-011 interface supplies the chronological Refresh_s
  convention and its product-one scale-equivariance. The normal equations
  are also evaluated directly below, so no perturbative contraction bound is
  used as evidence for equality.
- The accepted step-012 interface supplies the original relative Frobenius
  residual test and the finite-cap semantics. The exact residual calculation
  below shows that the first test is zero for every \(\epsilon>0\).

### Local conditional specialization

Let \(\mathsf B\) denote the deterministic orthogonal equal-weight certified
component specialization, after the proof-only target permutation and
product-one sign gauge:

\[
 U^\top U=V^\top V=W^\top W=I_r,\qquad
 \lambda_1=\cdots=\lambda_r=:\lambda>0.
\tag{B1}
\]
In particular, \(q_{\rm real}=0\) and \(\Gamma=1\) in this specialization.

The selected certified representatives are the exact component directions
\(p_j=u_j,q_j=v_j,s_j=w_j\). A product-one sign gauge means that any signs
used before this chart satisfy
\(\varepsilon_{U,j}\varepsilon_{V,j}\varepsilon_{W,j}=1\), so the represented
rank-one term is unchanged. This is a local deterministic specialization,
not a new primitive assumption or a probabilistic event.

Write \(\rho_{\rm sm}:=\rho\) for the smoothing scale in the setting. For
clarity, \(\mathsf B\) is the \(\rho_{\rm sm}=0\) deterministic limit of
the smoothing perturbation (all perturbation vectors are zero). The main
theorem's primitive smoothing assumption keeps \(\rho_{\rm sm}>0\); this
terminal audit does not replace that theorem or claim that a positive-
\(\rho_{\rm sm}\) Gaussian draw is exactly \(\mathsf B\). The algorithmic
chart radius \(\rho_{\rm ALS}=1/1024\) remains strictly positive throughout.
Likewise, the bookkeeping thresholds \(q_*,\tau_r,\omega\) remain those of
the main theorem; the proof uses exact zero defects rather than a floor. A
formal no-floor limit \(q_*,\tau_r\downarrow0\) leaves every displayed
identity unchanged.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under \(\mathsf B\), the observable score seed has \(\theta_j=\lambda\), \(P_M^0=G_M\), \(C_M^0=N_M^0=0\), \(s^0=0\), and every frozen normalized pair/cross Gram is identity in each mode ordering. | Establishes the exact baseline input and all zero defect fields. |
| unit_002 | proposition | Under \(\mathsf B\), the three frozen Moore--Penrose solves from the common seed are explicitly \(\widetilde X=\lambda^{1/3}U\), \(\widetilde Y=\lambda^{1/3}V\), and \(\widetilde Z=\lambda^{1/3}W\). | Proves all three landing outputs directly, including positive normalizers. |
| unit_003 | proposition | Under \(\mathsf B\), the joint positive rebalance preserves each rank-one product and returns the balanced exact factors; every product log is zero. The same conclusion holds in any product-one scale/sign gauge. | Handles the one-transaction rebalance and quotient gauge. |
| unit_004 | proposition | Starting from the balanced exact factors, each cyclic U, V, and W normal equation, in every cyclic mode ordering, returns the same factors and refreshes the common-product register to zero. | Proves the exact cyclic fixed point and chronological Refresh_s identity. |
| unit_005 | proposition | Under \(\mathsf B\) and assump:accuracy-confidence, the represented tensor after landing and after every refresh is exactly \(T\), so the original relative Frobenius residual is zero and the cap has no error-floor dependence. | Closes the exact residual/no-floor and stopping conclusion. |

## Cited Result Applications

1. **Accepted balanced-seed interface (step 008).** The hash-matched
   artifact defines \(P_M^0,D_M^0,s^0\) after the proof-only permutation and
   product-one gauge. We use only that notation and the fact that the
   observable seed is the input to every frozen design; the zero values are
   proved in Lemma~\ref{lem:step-013-baseline-geometry}.
2. **Accepted frozen landing interface (step 010).** In current notation,
   for each \(M\), the setting computes
   \[
   \widetilde X_M=T_{(M)}H_M^0
       ((H_M^0)^\top H_M^0)^\dagger
   \]
   from the same frozen \(H_M^0\), then applies the positive product-
   preserving rebalance. The present calculation verifies the exact
   ordinary inverse and its output, rather than importing a reserve bound.
3. **Accepted chronological interface (step 011).** Proposition
   \(\ref{prop:step-011-refresh-equivariance}\) states that positive
   componentwise scales with product one are a gauge of a full-rank normal
   equation and that Refresh_s represents the literal chronological update.
   We instantiate and check the normal equations for all three modes directly.
4. **Accepted stopping interface (step 012).** The original test is
   \(\|T-\widehat T\|_F/\|T\|_F\le\epsilon\) after a completed sweep and the
   cap is finite. We use only this test semantics; no quotient bound or
   finite-\(\omega\) approximation is used to establish the baseline residual.
5. **Elementary Khatri--Rao and pseudoinverse identities.** For matched
   columns, \((A\odot B)^\top(A\odot B)=(A^\top A)\circ(B^\top B)\), and a
   positive scalar multiple of an orthonormal-column matrix has Moore--Penrose
   inverse obtained by dividing by that scalar. These identities are
   instantiated explicitly below, including all three mode orderings.

## Local Derivation

Set
\[
G_U:=U,\quad G_V:=V,\quad G_W:=W,\qquad
K_U:=W\odot V,\quad K_V:=W\odot U,\quad K_W:=V\odot U.
\tag{1}
\]
The Khatri--Rao column \(K_M(:,j)\) is the tensor product of the two held
target directions in the order used by the corresponding unfolding. Under
\(\mathsf B\),
\[
K_U^\top K_U=K_V^\top K_V=K_W^\top K_W=I_r,
\tag{2}
\]
because each factor Gram is \(I_r\). The target tensor and its unfoldings are
\[
T=\lambda\sum_{j=1}^r u_j\otimes v_j\otimes w_j,\quad
T_{(1)}=\lambda U K_U^\top,\quad
T_{(2)}=\lambda V K_V^\top,\quad
T_{(3)}=\lambda W K_W^\top.
\tag{3}
\]

### unit_001: lemma

**Lemma (exact orthogonal equal-weight seed and frozen Grams; label
lem:step-013-baseline-geometry).** Under the local
specialization \(\mathsf B\) and the accepted step-008 seed convention, the
observable scores satisfy \(\theta_j=\lambda\), the balanced frozen seed is
\[
X^0=\lambda^{1/3}U,\qquad Y^0=\lambda^{1/3}V,\qquad
Z^0=\lambda^{1/3}W,
\tag{4}
\]
and, for every \(M\in\{U,V,W\}\),
\[
P_M^0=G_M,\quad D_M^0=\lambda^{1/3}I_r,\quad
C_M^0=0,\quad N_M^0=0,\quad s^0=0,
\tag{5}
\]
\[
F_M^0=(P_M^0)^\top P_M^0=I_r,\quad
G_M^\top P_M^0=I_r.
\tag{6}
\]
Consequently, in all three held-mode orderings,
\[
\begin{array}{c|c|c}
M & J_M^0=F_{M'}^0\circ F_{M''}^0 &
Q_M^0=(G_{M'}^\top P_{M'}^0)\circ(G_{M''}^\top P_{M''}^0)\\ \hline
U & I\circ I=I & I\circ I=I\\
V & I\circ I=I & I\circ I=I\\
W & I\circ I=I & I\circ I=I
\end{array}
\tag{7}
\]
and every actual frozen pair Gram is \(\lambda^{4/3}I_r\).

**Proof / justification.** For an exact representative,
\[
\theta_j=\left\langle
\lambda\sum_{\ell=1}^r u_\ell\otimes v_\ell\otimes w_\ell,\,
u_j\otimes v_j\otimes w_j\right\rangle
=\lambda
\tag{8}
\]
by (B1). If a product-one sign chart is used, the three signs multiply to
one and the same inner product and represented rank-one term result. The
setting's observable seed therefore gives (4), and normalizing its columns
gives (5). Equations (6)--(7) follow from (B1) and the Khatri--Rao identity.
Finally, for each mode \(M\),
\[
H_M^0=(P_{M'}^0D_{M'}^0)\odot(P_{M''}^0D_{M''}^0)
=\lambda^{2/3}K_M,
\tag{9}
\]
so (2) gives \((H_M^0)^\top H_M^0=\lambda^{4/3}I_r\). This also proves
that the exact seed has no perpendicular or product-log defect. The line
\(\lambda^{4/3}I_r\) is valid for each of the U, V, and W orderings in (7).
Thus the actual left-hand defects in the bridge (the differences bounded by
\(\delta_L,\delta_F,\delta_{FL}\), and \(Q_M^0-J_M^0\)) are zero, while the
conservative budget constants \(\eta_J,\eta_{QJ},\eta_A\) may remain positive
at the main-theorem threshold values. All these bounds are therefore sharp
upper bounds at the baseline, and the budget constants become zero in the
optional formal \(q_*,\tau_r\downarrow0\) no-floor limit; no budget is used
to weaken the equalities above.
\(\square\)

### unit_002: proposition

**Proposition (three exact frozen landing solves; label
prop:step-013-frozen-landing).** Under \(\mathsf B\), with
the synchronized frozen designs of the setting, the Moore--Penrose outputs
are well-defined and, mode by mode,
\[
\begin{array}{c|c|c|c}
M & H_M^0 & T_{(M)}H_M^0 &
T_{(M)}H_M^0((H_M^0)^\top H_M^0)^\dagger\\ \hline
U & \lambda^{2/3}K_U & \lambda^{5/3}U & \lambda^{1/3}U\\
V & \lambda^{2/3}K_V & \lambda^{5/3}V & \lambda^{1/3}V\\
W & \lambda^{2/3}K_W & \lambda^{5/3}W & \lambda^{1/3}W
\end{array}
\tag{10}
\]
Thus \(\widetilde X_U=\lambda^{1/3}U\),
\(\widetilde X_V=\lambda^{1/3}V\), and
\(\widetilde X_W=\lambda^{1/3}W\), with every active output norm equal to
\(\lambda^{1/3}>0\).

**Proof / justification.** The U row follows from (2)--(3) and (9):
\[
T_{(1)}H_U^0
=\lambda U K_U^\top(\lambda^{2/3}K_U)
=\lambda^{5/3}U,\qquad
((H_U^0)^\top H_U^0)^\dagger=\lambda^{-4/3}I_r.
\tag{11}
\]
Their product is \(\lambda^{1/3}U\). Replacing \((U,K_U)\) by
\((V,K_V)\) and \((W,K_W)\) gives, respectively,
\[
T_{(2)}H_V^0=\lambda^{5/3}V,\qquad
T_{(3)}H_W^0=\lambda^{5/3}W,
\tag{12}
\]
with the same Gram inverse and the same output scale. These are three
independent evaluations from the one frozen seed; no output in one row is an
input to another row. Since \(\lambda^{4/3}I_r\) is nonsingular, the
Moore--Penrose rule agrees with the displayed ordinary inverse, while the
calculation remains valid at the exact \(\rho_{\rm sm}=0\) specialization.
\(\square\)

### unit_003: proposition

**Proposition (joint rebalance and product-one gauge; label
prop:step-013-rebalance-gauge).** Under \(\mathsf B\) and the
outputs of Proposition~\ref{prop:step-013-frozen-landing}, the setting's
single joint rebalance returns
\[
X_U^{\rm land}=\lambda^{1/3}U,\qquad
X_V^{\rm land}=\lambda^{1/3}V,\qquad
X_W^{\rm land}=\lambda^{1/3}W,
\tag{13}
\]
preserves every represented rank-one product, and has
\(\gamma_j^{\rm land}=\lambda\) and \(s_j^{\rm land}=0\) for every \(j\).
The same represented tensor and quotient state result after any positive
product-one scale gauge or proof-only product-one sign gauge.

**Proof / justification.** Proposition~\ref{prop:step-013-frozen-landing}
gives \(\|\widetilde x_j\|_2=\|\widetilde y_j\|_2
=\|\widetilde z_j\|_2=\lambda^{1/3}\). Hence
\[
\widetilde\gamma_j
=\|\widetilde x_j\|_2\|\widetilde y_j\|_2\|\widetilde z_j\|_2
=\lambda,
\tag{14}
\]
and the rebalance multiplier is \(\widetilde\gamma_j^{1/3}
=\lambda^{1/3}\). Dividing each output by its norm therefore gives (13).
More generally, for nonzero factors and positive scalars
\(R_{U,j},R_{V,j},R_{W,j}\) with
\(R_{U,j}R_{V,j}R_{W,j}=1\),
\[
(R_{U,j}x_j)\otimes(R_{V,j}y_j)\otimes(R_{W,j}z_j)
=x_j\otimes y_j\otimes z_j.
\tag{15}
\]
The rebalance uses positive norms and is exactly such a product-one
rescaling. A product-one sign gauge has the same identity with signs in
place of positive scalars. Thus neither gauge changes the represented term,
and the common product remains \(\lambda\), giving
\(s_j=\log(\lambda/\lambda)=0\).
\(\square\)

### unit_004: proposition

**Proposition (all cyclic normal equations are stationary; label
prop:step-013-cyclic-fixed).** Under \(\mathsf B\), start a
cyclic active ALS sweep from the balanced state (13), with inactive columns
zero. For each mode \(M\in\{U,V,W\}\), regardless of which mode is first,
the held design is \(\lambda^{2/3}K_M\), its Gram is
\(\lambda^{4/3}I_r\), and the exact normal equation returns
\(\lambda^{1/3}G_M\). After the product-preserving canonical refresh, the
state is unchanged and the refreshed common-product register is \(s=0\).
Consequently every chronological Refresh_s state and every full cyclic
sweep equal the same exact quotient state; this holds for all six
permutations of the U/V/W mode order.

**Proof / justification.** For the displayed U/V/W order, the U block uses
the held factors \(Y=\lambda^{1/3}V\), \(Z=\lambda^{1/3}W\), hence
\[
H_U=\lambda^{2/3}K_U,\quad H_U^\top H_U=\lambda^{4/3}I_r,\quad
T_{(1)}H_U=\lambda^{5/3}U,\quad
\widetilde X_U=\lambda^{1/3}U.
\tag{16}
\]
Its solved product with the held factors is \(\lambda\) in each component,
so Refresh_s writes \(s_U^+=0\) and the canonical representative is again
the state (13). The V block then has the unchanged held U and W factors and
similarly obeys
\[
H_V=\lambda^{2/3}K_V,\quad
T_{(2)}H_V=\lambda^{5/3}V,\quad
\widetilde X_V=\lambda^{1/3}V,\quad s_V^+=0.
\tag{17}
\]
The W block gives
\[
H_W=\lambda^{2/3}K_W,\quad
T_{(3)}H_W=\lambda^{5/3}W,\quad
\widetilde X_W=\lambda^{1/3}W,\quad s_W^+=0.
\tag{18}
\]
Thus the U/V/W chronological intermediate states are all exactly (13).
For any other first mode, use the same generic identity
\[
T_{(M)}=\lambda G_MK_M^\top,\qquad
H_M=\lambda^{2/3}K_M,\qquad K_M^\top K_M=I_r,
\tag{19}
\]
and then apply the remaining two identities in their chosen order. This
proves all six mode permutations, not only the displayed cyclic order.

For completeness, the accepted scale-equivariance interface can be checked
directly. If a literal state is changed by positive diagonal
\(R_UR_VR_W=I\), then the mode-M design changes to \(H_MR_M^{-1}\), and
\[
T_{(M)}H_MR_M^{-1}
\big(R_M^{-1}H_M^\top H_MR_M^{-1}\big)^{-1}
=T_{(M)}H_M(H_M^\top H_M)^{-1}R_M.
\tag{20}
\]
Therefore the solved factors differ only by the same gauge, and the
canonical Refresh_s representative is (13). The sign gauge is handled by
the proof-only orientation and preserves each product by (15). Induction
over sweeps proves stationarity forever, with no accumulated forcing term.
\(\square\)

### unit_005: proposition

**Proposition (exact residual and no-floor stopping; label
prop:step-013-zero-residual).** Under \(\mathsf B\) and
Assumption~\ref{assump:accuracy-confidence}, after the joint landing and
after every cyclic refresh, the active factors represent exactly
\[
\widehat T
=\lambda\sum_{j=1}^r u_j\otimes v_j\otimes w_j=T,
\tag{21}
\]
and the inactive \(k-r\) columns contribute zero. Hence
\[
\frac{\|T-\widehat T\|_F}{\|T\|_F}=0\le\epsilon,\qquad
\|T\|_F=\lambda\sqrt r>0.
\tag{22}
\]
The first original residual test is therefore successful (whether it is
performed immediately after landing or after the first completed cyclic
sweep), for every \(\epsilon>0\); no \(\omega\)-, \(\tau_r\)-, or positive-radius
error floor is present.

**Proof / justification.** Equation (13) gives, componentwise,
\[
x_j^{\rm land}\otimes y_j^{\rm land}\otimes z_j^{\rm land}
=\lambda u_j\otimes v_j\otimes w_j.
\tag{23}
\]
Proposition~\ref{prop:step-013-cyclic-fixed} shows that the same equality is
preserved by every block and every refresh. The tensors
\(u_j\otimes v_j\otimes w_j\) are mutually orthonormal in the Frobenius inner
product under (B1), so \(\|T\|_F^2=r\lambda^2\). This proves (21)--(22) and
the stopping assertion. In the deterministic \(\rho_{\rm sm}=0\) limit
there is no perturbation term to dominate, and in the optional formal
no-floor limit \(q_*,\tau_r\downarrow0\) the same exact calculation remains
valid. The positive \(\rho_{\rm ALS}\) chart radius is only a neighborhood
for the main theorem; the baseline state is its exact origin, so no radius
term enters (22).
\(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-013-baseline-geometry} derives the exact observable score,
balanced seed, zero coefficient/perpendicular/product-log fields, and all
three identity pair/cross Grams. Proposition~\ref{prop:step-013-frozen-landing}
then evaluates the three synchronized frozen-input pseudoinverse calls from
that single seed. It explicitly gives the U, V, and W outputs and their
positive normalizers, so no mode-specific predecessor or post-solve design is
used. Proposition~\ref{prop:step-013-rebalance-gauge} applies the one joint
positive rebalance, proves product preservation, and handles both positive
scale and product-one sign gauges. Proposition~\ref{prop:step-013-cyclic-fixed}
checks the chronological U/V/W normal equations and their generic permutation,
and proves that every Refresh_s register remains zero. Finally,
Proposition~\ref{prop:step-013-zero-residual} identifies the represented tensor
with \(T\), computes its strictly positive Frobenius norm, and applies the
accepted step-012 residual-test semantics. Thus all three frozen landing
outputs, every cyclic refresh, the common product error, and the original
residual have the exact values required by the sketch row. The argument is a
deterministic specialization and leaves the positive-\(\rho\) main-theorem
assumptions untouched.

## Explicit Rate Audit

This terminal specialization is not rate-bearing. For completeness:

- Exposed variables: the common positive weight \(\lambda\), rank \(r\), and
  the requested accuracy \(\epsilon>0\).
- Hidden constants may depend on none of these quantities; all identities are
  exact.
- Fixed quantities: the orthogonal target factors, the one frozen seed, and
  the inactive zero padding.
- Probability mode: deterministic conditional on \(\mathsf B\); no
  probability conversion is performed.
- Horizon mode: every finite cyclic horizon and the infinite stationary
  continuation have the same state; the finite cap is reached only through
  the observable stopping rule.
- Norm mode: the original Frobenius residual is exactly zero.
- Admissibility: \(\lambda>0\), \(r\ge3\), and the positive-norm canonical
  rebalance. The displayed Gram is exactly \(\lambda^{4/3}I_r\), so no
  condition-number reserve is needed.
- Baseline-reduction check: setting the realized interference to zero gives
  \(C_M^0=N_M^0=s^0=0\), \(J_M^0=Q_M^0=I\), and all landing/cyclic maps equal
  the identity in quotient, while preserving the exact represented tensor.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathsf B\) is a proof-local deterministic specialization consisting of
  (B1) and exact certified representatives. It is not promoted to a
  primitive assumption for the positive-smoothing theorem.
- \(K_U,K_V,K_W\) are proof-local Khatri--Rao matrices defined in (1);
  \(P_M^0,D_M^0,C_M^0,N_M^0,s^0\) are the accepted step-008 public seed
  objects. \(H_M^0\) and \(H_M\) are proof-local frozen/current designs.
- The common \(\lambda\) is directly the realized positive weight in (B1).
  The scales \(\lambda^{1/3}\) and \(\lambda^{2/3}\) are derived in
  Lemmas~\ref{lem:step-013-baseline-geometry} and
  \ref{prop:step-013-frozen-landing}; no free bounded constant is introduced.
- The only generated conditions used are the accepted seed, landing, and
  chronological interfaces. Their exact baseline values are proved locally;
  no perturbative reserve, generated comparator, or condition number is used
  as an assumption.
- The symbol \(\rho_{\rm sm}=0\) denotes only the deterministic smoothing
  limit, while the setting's positive smoothing assumption and the positive
  algorithmic radius \(\rho_{\rm ALS}=1/1024\) remain binding for the main
  theorem. The phrase “no floor” refers to the exact equality (22), not to a
  weakened \(O(\omega)\) estimate.
- No global_proof.md artifact was read or used.
