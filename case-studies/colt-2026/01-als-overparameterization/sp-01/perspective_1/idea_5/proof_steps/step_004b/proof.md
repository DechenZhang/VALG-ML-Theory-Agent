# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_004b
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every certified proposal slot, before score filtering,
  labels, or clustering, derive the raw right-sided certificate equation
  P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw, with the pair matrix formed from
  the same stored state and with per-column residual at most D_M(a,a)tau_r.
  Split the coefficient-vector Gram defect, the scalar normalization defect,
  and the finite-support certificate defect using eta_G=2q_*+q_*^2,
  eta_N=5q_*^2, and eta_C=2sqrt(r)tau_r; state the proof-only barred
  post-score equation; and derive the global, target-label-free
  LOW/singleton/multi-support/threshold-straddling tail ledger before any
  clustering or E_cov use.
- Depends on: accepted step_004 proof and matching accepted review (the
  stored-state event E_cert and the realized geometry interface inherited by
  that accepted step).
- Assumptions used: primitive assump:random-initialization only for the
  proposal-state procedure; the static event E_sm and the stored-state event
  E_cert are derived interfaces, not primitive assumptions.
- Technical challenge: retain raw column signs and same-state identity;
  expand Hadamard Gram leakage at vector level; cancel scalar normalization
  without charging a spurious first-order shape error; convert one finite
  per-mode l2 certificate budget to l1 only on finite supports; and close all
  support cases without a target chart, covered-slot label, or clustering.
- Intended proof tool: exact multilinearity, Gershgorin/Cauchy-Schwarz,
  reciprocal normalization identity, finite-support l2-to-l1 conversion, and
  a scale-free coordinate ledger.
- Output target: E_cert_eq and E_cert_tail.
- Rate objective: deterministic certificate-scale bounds uniform in r, with
  the exposed charge eta_C=2sqrt(r)tau_r and no hidden label, chart, or
  E_cov dependence.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:random-initialization}: the proposal procedure uses the
    raw state and its same-state contraction, and a stored state is not
    replaced by a look-ahead state. No probability calculation is made here.
- Derived invariants supplied by accepted dependencies:
  - The accepted step_004 proof/review supplies the static realized geometry
    interface E_sm: for every mode M, G_M has unit columns,
    H_M:=G_M^T G_M has off-diagonal absolute row and column mass at most
    q:=q_real<=q_*, and Gamma<=1.01; hence
    (1-q)I <= H_M <= (1+q)I.
  - The accepted step_004 proof/review supplies the certificate predicate and
    proves it for every covered witness: a stored slot considered here has
    unit directions p_M, nonzero same-state contraction norm d_M, and
    projective residual at most tau_r. For an arbitrary certified slot outside
    coverage, the same predicate is supplied directly by the setting's
    storage rule; it is a local conditional hypothesis, not a theorem premise.
  - The setting definitions of T, G_M, lambda, K_M, and D_M are used
    without rebinding the setting-level raw symbols.
- Local conditional hypotheses:
  - For one slot, fix a stored state satisfying the setting's certificate
    predicate zeta<=tau_r and choose one minimizing projective sign in each
    mode. All conclusions below are uniform over certified slots. The
    proof-only labels LOW, I_vartheta, and the target-coordinate indices are
    not algorithm inputs.

No E_cov, target-window chart, E_chart_l1, score-filter outcome, or cluster
assignment is used. In particular, the all-certified ledger is produced
before the first label-dependent consumer.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under E_cert, the exact same-state raw right-sign equation and its per-column residual bound hold, with Sigma_M on the right. | Produces E_cert_eq in the raw convention. |
| unit_002 | lemma | Under E_sm and E_cert, the dual span coefficients, perpendicular residual, coefficient norms, contraction scales, and 0.69<=alpha_M<=1.03 bounds are valid on the non-LOW branch. | Supplies all finite denominators used by the ledger. |
| unit_003 | lemma | Under E_sm, the exact coefficient-vector Hadamard expansion has l1 defect at most eta_G=2q_*+q_*^2. | Separates linear and quadratic Gram leakage. |
| unit_004 | lemma | The reciprocal scalar identity has second-order remainder at most eta_N=5q_*^2; its first-order part is scalar and is absorbed into alpha_M. | Supplies the normalization reserve without changing coordinate shape. |
| unit_005 | lemma | Under E_cert, each mode obeys a normalized coordinate equation with l1 error at most eta_0; on every finite support the certificate contribution is exactly charged by eta_C=2sqrt(r)tau_r. | Creates the sign-independent coordinate ledger. |
| unit_006 | lemma | For the threshold core I_vartheta, all outside mass is bounded by 33eta_0; retained coordinates have legal denominators and the three-mode ratio/profile bounds, including 144eta_0. | Proves the global denominator/profile interface without labels. |
| unit_007 | lemma | If the core is singleton, its common coordinate is the unique top coordinate and the singleton tail and component score bounds hold. | Produces the singleton branch and a_cert. |
| unit_008 | proposition | If the core has at least two coordinates, the multi-support tail-score and weighted profile/score bounds hold. | Produces the multi-support branch consumed by the weighted classifier. |
| unit_009 | proposition | Empty-core and threshold-straddling cases have no omitted high-score branch: empty core has score <0.17lambda_min, while a non-LOW singleton must have a common top index; otherwise the slot is LOW or multi-support. | Closes the LOW/straddle dichotomy. |
| unit_010 | proposition | After a later score proof establishes common sign sgn(theta), right-column sign absorption gives the proof-only barred equation and preserves the initialized rank-one tensor. | States the exact post-score barred convention without premature sign assumptions. |

Atomic step = no. The raw identity, norm/scale bounds, three defect classes,
coordinate ledger, profile normalization, and the four support cases are
independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: step_004 stored-state interface

- Source: accepted perspective_1/idea_5/proof_steps/step_004/proof.md and
  its ACCEPTED review.
- Restated result in current notation: on the derived event E_cert, a stored
  state has unit mode directions and, for every mode, a nonzero same-state
  contraction y_M=T(.,p_{M'},p_{M''}) (cyclically), with d_M=||y_M||_2>0
  and a sign epsilon_M for which ||p_M-epsilon_M y_M/d_M||_2<=tau_r.
- Assumptions discharged: E_cert is produced by the accepted chart and
  certification units of step_004; zero contractions are routed to the
  procedure's unsuccessful branch there. The present proof uses no claim that
  the slot was covered by E_cov.
- Conclusion used: the exact residual identity in
  Proposition~\ref{prop:step-004b-raw} and all
  certificate-scale bounds below.

### Accepted dependency: realized geometry from step_004

- Source: the accepted step_004 proof's restated E_sm interface.
- Restated result: for H_M=G_M^TG_M, unit diagonal and row/column absolute
  off-diagonal mass are at most q<=q_*; consequently
  (1-q)I <= H_M <= (1+q)I, ||G_M||_2<=sqrt(1+q), and the dual
  L_M=G_MH_M^{-1} satisfies ||L_M||_2<=1/sqrt(1-q).
- Assumptions discharged: the accepted predecessor derives E_sm from the
  primitive base/smoothing assumptions. It is used here only as an accepted
  derived interface.

### Elementary tools

- Symmetric Gershgorin: a unit-diagonal symmetric Gram matrix with absolute
  row mass at most q<1 has spectrum in [1-q,1+q].
- Cauchy-Schwarz: ||a circ b||_1<=||a||_2||b||_2 and
  ||a circ b||_2<=||a||_infty||b||_2.
- Finite-support conversion: if |T|<=r, then
  ||v_T||_1<=sqrt(r)||v_T||_2.

These tools are proved by their displayed applications below; no external
paper theorem is used.

## Local Derivation

Throughout, fix one certified slot and suppress its slot index. Use cyclic
mode notation (G_U,G_V,G_W)=(U,V,W) and let H_M=G_M^TG_M,
L_M=G_MH_M^{-1}. Define q:=q_real<=q_*, lambda_min:=min_i lambda_i,
mu_i:=lambda_i/lambda_min in [1,Gamma], and Gamma<=1.01. All target-coordinate
indices i are proof-only indices in the realized factor basis.

### unit_001: proposition

Proposition (raw same-state right-sign certificate).
Label: prop:step-004b-raw.
\label{prop:step-004b-raw}

Under E_cert, for every mode M and certified slot, let
y_M:=T(.,p_{M'},p_{M''})=G_M k_M^raw, d_M:=||y_M||_2>0, where
k_M^raw:=diag(lambda)((G_{M'}^T p_{M'}) circ (G_{M''}^T p_{M''})).
If epsilon_M is a minimizing projective sign, then with
R_M^raw(:,a):=d_M(p_M-epsilon_M y_M/d_M),

  p_M d_M=epsilon_M G_M k_M^raw+R_M^raw,
  ||R_M^raw(:,a)||_2<=d_M tau_r.                         (4.1)

For a matrix of certified columns, this is exactly

  P_M^raw D_M = G_M K_M^raw Sigma_M + R_M^raw,
  Sigma_M=diag(epsilon_{M,a}),                            (4.2)

with Sigma_M acting on the right.

Proof. The definition of zeta gives
||p_M-epsilon_M y_M/d_M||_2<=tau_r; multiplying by d_M gives (4.1).
Multilinearity of T gives the displayed G_M k_M^raw with both other
directions taken from the same stored state. Stacking columns gives (4.2).
No pre-update or look-ahead direction occurs. The norm bound is exactly the
certificate definition.

### unit_002: lemma

Lemma (span distance, coefficient norms, and scale factors).
Label: lem:step-004b-scale.
\label{lem:step-004b-scale}

Under E_sm and E_cert, put c_M:=L_M^T p_M,
s_M:=||c_M||_2, and p_M^perp:=p_M-G_Mc_M. Then

  ||p_M^perp||_2<=tau_r,
  (1-tau_r^2)/(1+q)<=s_M^2<=1/(1-q),  |s_M-1|<=q_*.       (4.3)

Moreover d_M>=sigma, where sigma:=|theta| and
theta=<T,p_U tensor p_V tensor p_W>, and

  d_M<=lambda_max(1+q),  a_M:=d_M/lambda_min<=Gamma(1+q).   (4.4)

For every certified slot define
alpha_M:=a_Ms_M/(s_{M'}s_{M''}); on the branch
sigma>=0.7lambda_min it satisfies
  0.69<=alpha_M<=1.03.                                      (4.5)

Proof. Since epsilon_M y_M/d_M lies in span(G_M), the certificate distance
gives ||p_M^perp||<=tau_r. Orthogonality of the Gram projection gives
||G_Mc_M||^2=1-||p_M^perp||^2; the spectral bounds on H_M give (4.3).
At q<=q_* and the declared tau_r, direct substitution yields
|s_M-1|<=q_* (the lower endpoint is sqrt((1-tau_r^2)/(1+q)) and the
upper endpoint is 1/sqrt(1-q)).

Cauchy-Schwarz gives d_M=||y_M||>=|<p_M,y_M>|=sigma. For the upper
bound, the correlation vector G_{M'}^Tp_{M'} has l2 norm at most
sqrt(1+q) and infinity norm at most one. Thus the l2 norm of its
Hadamard product with the other correlation vector is at most
sqrt(1+q), and ||G_M||_2<=sqrt(1+q) gives (4.4).
Finally, (4.3) implies
0.995<=s_M/(s_{M'}s_{M''})<=1.005; combine this with
0.7<=a_M<=1.01(1+q) to obtain (4.5), with slack.

### unit_003: lemma

Lemma (vector-level Hadamard Gram budget).
Label: lem:step-004b-gram.
\label{lem:step-004b-gram}

Under E_sm and the local certificate predicate, write H_M=I+F_M and
tilde x_M:=c_M/s_M. Then ||tilde x_M||_2=1 and

  ((H_{M'}c_{M'}) circ (H_{M''}c_{M''}))/(s_{M'}s_{M''})
  =tilde x_{M'} circ tilde x_{M''}+g_M,                    (4.6)

where
g_M=(F_{M'}tilde x_{M'}) circ tilde x_{M''}
  +tilde x_{M'} circ (F_{M''}tilde x_{M''})
  +(F_{M'}tilde x_{M'}) circ (F_{M''}tilde x_{M''})

satisfies ||g_M||_1<=eta_G:=2q_*+q_*^2.                   (4.7)

Proof. Symmetry of H_M gives both row and column absolute mass at most q;
hence ||F_M||_2<=q by the spectral bound. Expanding the two vectors, rather
than a product of Gram matrices, gives (4.6). Since both tilde x vectors
have l2 norm one, ||(F tilde x) circ y||_1<=q and the analogous second term
is at most q; the cross term is at most q^2. Replacing q by q_* gives (4.7),
with no rank factor.

### unit_004: lemma

Lemma (reciprocal normalization and scalar cancellation).
Label: lem:step-004b-normalization.
\label{lem:step-004b-normalization}

Under Lemma~\ref{lem:step-004b-scale}, set nu_M:=s_M-1. For
B_M:=s_{M'}s_{M''}/s_M,

  B_M=1+nu_{M'}+nu_{M''}-nu_M
      +(nu_{M'}-nu_M)(nu_{M''}-nu_M)/(1+nu_M).              (4.8)

The last term has absolute value at most eta_N:=5q_*^2. The linear part
in (4.8) is a scalar for a fixed mode and slot and is absorbed into alpha_M;
it does not become a coordinate-vector leakage term.

Proof. Multiply the right side of (4.8) by 1+nu_M; the numerator becomes
(1+nu_{M'})(1+nu_{M''}), proving the identity. Since |nu_M|<=q_*,
the remainder is at most 4q_*^2/(1-q_*)<5q_*^2. In (4.6), the exact scalar
is retained in alpha_M; therefore no first-order scalar term is silently
charged to eta_G.

### unit_005: lemma

Lemma (normalized absolute coordinate equation and finite certificate charge).
Label: lem:step-004b-residual.
\label{lem:step-004b-residual}

Under E_sm and the local certificate predicate, let x_M:=|tilde x_M| and
r_M:=L_M^TR_M^raw/(lambda_min s_{M'}s_{M''}). Then

  alpha_M tilde x_M
  =epsilon_M diag(mu)(tilde x_{M'} circ tilde x_{M''}+g_M)+r_M,
  ||r_M||_2<2tau_r.                                       (4.9)

For every mode there is a real error vector e_M such that

  (alpha_M/mu_i)x_{M,i}
  =x_{M',i}x_{M'',i}+e_{M,i}, ||e_M||_1<=eta_0,             (4.10)

where eta_0:=eta_G+eta_N+eta_C, eta_C:=2sqrt(r)tau_r,
eta_rel:=8eta_0.                                           (4.11)

On any coordinate set T of size at most r, the contribution of the
certificate residual to the l1 error is at most eta_C; this is the only
l2-to-l1 conversion in this step.

Proof. Apply L_M^T to (4.1), use G_M^Tp_M=H_Mc_M, and divide by
lambda_min s_{M'}s_{M''}. The result is (4.9), with
alpha_M=a_Ms_M/(s_{M'}s_{M''}). The norm bound follows from
||L_M||_2<=1/sqrt(1-q), (4.4), and the lower bounds on the two s's; the
resulting multiplier is below two.

Taking absolute values in (4.9), and defining e_{M,i} as the difference
between the two nonnegative sides in (4.10), gives
|e_{M,i}|<=|g_{M,i}|+|r_{M,i}|/mu_i. Hence
||e_M||_1<=eta_G+sqrt(r)||r_M||_2<=eta_G+eta_C<=eta_0.
The reserve eta_N is included for the scalar reciprocal remainder from
Lemma~\ref{lem:step-004b-normalization}; it is not counted a second time as
vector leakage. The same
argument restricted to T gives the asserted finite-support charge.

### unit_006: lemma

Lemma (all-certified threshold denominators and profile).
Label: lem:step-004b-profile.
\label{lem:step-004b-profile}

Under Lemma~\ref{lem:step-004b-residual} on the non-LOW branch, set
vartheta:=1/8,
vartheta_*:=vartheta-8eta_rel, and
  I:=I_vartheta:={i:min_M x_{M,i}>=vartheta}, O:=[r]\I.
Then vartheta_*>1/16 and
  X:=sum_{M in {U,V,W}} sum_{i in O}x_{M,i} <=33eta_0.  (4.12)
For every i,l in I, all pair denominators are positive and
  | (x_{M,i}/x_{M,l}) /
      ((mu_i/mu_l)(x_{M',i}x_{M'',i}/(x_{M',l}x_{M'',l})))-1 |
    <=33eta_0,                                             (4.13)
and
  |mu_i^2x_{M,i}^2/kappa_I^2-1|<=144eta_0,                 (4.14)
where kappa_I:=(sum_{i in I}mu_i^{-2})^{-1/2}.

Proof. Let b:=0.68. From (4.10), summing over the three modes at one
index gives
  b(x_U+x_V+x_W)
  <=x_Ux_V+x_Ux_W+x_Vx_W+|e_U|+|e_V|+|e_W|.                (4.15)
For z=min(a,b,c)<=vartheta and 0<=a,b,c<=1,
  (ab+ac+bc)/(a+b+c)<=(1+2vartheta)/(2+vartheta)=10/17. (4.16)
To verify (4.16), order z<=a<=b; the ratio increases in a and b and then
in z, so its maximum is at (1,1,vartheta). Summing (4.15) over O, using
||e_M||_1<=eta_0 and (4.16), gives
  X<=3eta_0/(0.68-10/17)<33eta_0.                          (4.17)
Direct substitution of q_*=1/4096, eta_N=5q_*^2, and
eta_C<=2q_*^2/(10^4sqrt3) gives eta_0<4.89 10^{-4} and hence
vartheta_*>0.0937>1/16.

For i in I, the divided equation has alpha_M/mu_i>=0.68; using the
slightly weaker floor x_{M,i}>=vartheta_* in (4.10) gives
  x_{M',i}x_{M'',i}>=0.68vartheta_*-eta_0>0.                (4.18)
Thus write e_{M,i}=xi_{M,i}x_{M',i}x_{M'',i}. The denominator bound is
  |xi_{M,i}|<=d_0:=eta_0/(0.68vartheta_*-eta_0)
  <16eta_0<1/128.                                          (4.19)
Before dividing by a retained pair, the same ledger gives the useful
threshold propagation inequality
  mu_i x_{M',i}x_{M'',i}
  >=alpha_M(x_{M,i}-eta_rel),                               (4.19a)
and its two cyclic copies: indeed the un-divided error is at most
Gamma eta_0<=alpha_M eta_rel on the non-LOW branch.  This rules out a
coordinate above vartheta+8eta_rel being paired with two arbitrarily small
coordinates; combined with (4.31), it is the quantitative propagation
interface used in the straddle dichotomy below.
Dividing two equations and multiplying the three cyclic relations gives
(4.13): each factor (1+xi_i)/(1+xi_l) differs from one by at most
2d_0/(1-d_0)<33eta_0.

More explicitly, after the three-mode product cancellation, the squared
profile ratio is the inverse of two such factors. Therefore
  |(mu_i^2x_{M,i}^2)/(mu_l^2x_{M,l}^2)-1|<68eta_0.            (4.20)
Let y_i=mu_i^2x_{M,i}^2, choose any reference value, and put
Z=sum_{i in I}mu_i^{-2}. The weighted denominator differs from Z by at most
68eta_0; its reciprocal differs by less than 72eta_0 because
68eta_0<1/16. Also, from (4.17), the outside l2 mass satisfies
sum_{i in O}x_{M,i}^2<=(33eta_0)^2<eta_0.
Using the exact identity
  y_i/kappa_I^2=q_i(1-t_M^2)Z/Z_M,
  |q_i-1|<=68eta_0, |Z/Z_M-1|<72eta_0,
where t_M^2=sum_O x_{M,i}^2 and Z_M=sum_I mu_i^{-2}q_i, the upper
deviation is 2(68eta_0)/(1-68eta_0)<141eta_0, and the lower deviation
is at most 2(68eta_0)/(1+68eta_0)+(33eta_0)^2<137eta_0.
This proves the conservative bound (4.14).

### unit_007: lemma

Lemma (singleton core and component score).
Label: lem:step-004b-singleton.
\label{lem:step-004b-singleton}

Under Lemma~\ref{lem:step-004b-profile}, if I={j}, then
  max_M sum_{i!=j}x_{M,i}
  <=2Gamma(eta_G+eta_N)+2eta_C
    +eta_rel^2/(4vartheta_*^2)
  <=1.43 10^{-3}<a_cert<1/512,                              (4.21)
where a_cert:=7q_*+8tau_r, and
  min_M x_{M,j}>=1-64eta_0.                                 (4.22)
Moreover, with
  s_-:=1-96eta_0-8tau_r, s_+:=1+96eta_0+8tau_r,
the observable score obeys
  s_-lambda_j<=|theta|<=s_+lambda_j.                       (4.23)
Numerically, `s_->0.953` and `s_+<1.047` uniformly in `r>=3`.

Proof. Put A_M=sum_{i not=j}x_{M,i} and A=max_M A_M. From (4.15) on
O and Cauchy-Schwarz,
  0.68A<=A^2+eta_0.
Since (4.17) gives A<=33eta_0, the small root satisfies
  A<=eta_0/(0.68-33eta_0)<1.51eta_0.
The first inequality in (4.21) is a deliberately looser defect-separated
envelope: its first two terms are at least 2eta_0, and the displayed
numerical value follows from eta_0<4.89 10^{-4}, eta_rel=8eta_0, and
(4.18). The unit norm then gives
  x_{M,j}=sqrt(1-||x_{M,O}||_2^2)>=1-A^2,
which implies (4.22). In particular, j is the unique top index in every
mode.

For completeness, write Y_M:=H_M tilde x_M and B_s:=s_Us_Vs_W.
Expansion of the three H_M=I+F_M factors gives
  |sum_i mu_iY_{U,i}Y_{V,i}Y_{W,i}
    -sum_i mu_i tilde x_{U,i}tilde x_{V,i}tilde x_{W,i}|
  <=g_*:=Gamma(3q_*+3q_*^2+q_*^3).                          (4.24)
The absolute contribution of O is at most Gamma A; the j contribution has
magnitude between lambda_j/lambda_min times 1-3A^2 and 1+3A^2. Since
B_s in [(1-q_*)^3,(1+q_*)^3], (4.24), and the numerical inequalities
  3q_*+3A^2+Gamma A+g_*<96eta_0+8tau_r,
  4q_*+3A^2+Gamma A+g_*<96eta_0+8tau_r
imply (4.23). No sign of the tail is assumed; the dominant j term is
compared by the triangle inequality.

### unit_008: proposition

Proposition (multi-support profile and score tail).
Label: prop:step-004b-multi.
\label{prop:step-004b-multi}

Under Lemma~\ref{lem:step-004b-profile}, if m:=|I|>=2, then
  tail_score:=sum_{i notin I}mu_i x_{U,i}x_{V,i}x_{W,i}
  <=8Gamma(eta_G+eta_N)+8eta_C+2eta_rel^2/vartheta_*
  <=4.29 10^{-3}<16eta_0.                                  (4.25)
The profile (4.14) holds on I, and
  |theta|/lambda_min
  <=kappa_I+144eta_0+tail_score
  <=Gamma/sqrt(m)+160eta_0.                                 (4.26)
Consequently
  |theta|<=lambda_max(1/sqrt(m)+160eta_0).                  (4.27)
In particular, `s_mix:=1/sqrt(2)+160eta_0` obeys
`1.01 s_mix<0.794` at the declared worst-case reserve.

Proof. For every i in O, min_M x_{M,i}<vartheta, so
x_Ux_Vx_W<=vartheta(x_Ux_V+x_Ux_W+x_Vx_W). Summing and using (4.16),
(4.17), and mu_i<=Gamma gives a bound below 2.46eta_0, hence the
looser defect-separated bound (4.25). This explicitly shows that no
coordinatewise r tau_r sum is being made.

It remains to justify the core score constant. On I, the exact equations
(4.10) imply, whenever the three coordinates are nonzero,
  x_{M,i}^2=(alpha_{M'}alpha_{M''}/mu_i^2) /
    ((1+xi_{M',i})(1+xi_{M'',i})).                           (4.28)
Thus, with d_0<=16eta_0 and t_M^2=sum_Ox_{M,i}^2<eta_0, summing (4.28)
over I gives pair-product bounds
  (1-t_M^2)kappa_I^2(1-d_0)^2
  <=alpha_{M'}alpha_{M''}
  <=(1-t_M^2)kappa_I^2(1+d_0)^2.
Combining the two upper pair products for alpha_M with the complementary
lower pair product gives
  alpha_M<=kappa_I (1+d_0)^2/((1-d_0)sqrt(1-t_M^2))
  <=kappa_I(1+50eta_0).                                    (4.29)
Multiplying (4.10) by mu_i x_{M,i} and summing only on I gives
  sum_{i in I}mu_i x_{U,i}x_{V,i}x_{W,i}
  <=alpha_U+Gamma eta_0
  <=kappa_I+52eta_0.                                        (4.30)
The signed Gram expansion (4.24), restricted to the core and combined with
B_s<=1+4q_*, adds less than 12eta_0. Therefore the core contribution to
|theta|/lambda_min is at most kappa_I+64eta_0; retaining the larger
declared reserve gives (4.26). Finally,
kappa_I=(sum_{i in I}mu_i^{-2})^{-1/2}<=Gamma/sqrt(m); multiplying (4.26)
by lambda_min yields (4.27).

### unit_009: proposition

Proposition (LOW and threshold-straddling dichotomy).
Label: prop:step-004b-straddle.
\label{prop:step-004b-straddle}

Under Lemma~\ref{lem:step-004b-residual}, every certified slot has the
following no-label alternatives:

1. LOW: sigma<0.7lambda_min.
2. A singleton core as in Lemma~\ref{lem:step-004b-singleton}, with a common
   top index.
3. A multi-support core as in Proposition~\ref{prop:step-004b-multi}.

There is no omitted empty-core high-score case. More precisely, if
sigma>=0.17lambda_min and I=emptyset, then a contradiction results, so
an empty-core slot has sigma<0.17lambda_min. If sigma>=0.7lambda_min
and the top indices do not coincide, the singleton alternative is impossible;
the slot is therefore LOW or multi-support.

Proof. The non-LOW branch has alpha_M>=0.69 by
Lemma~\ref{lem:step-004b-scale}, so (4.17)
gives X<33eta_0. If I=emptyset, then each of the three unit vectors has
l1 norm at least one, so X>=3, a contradiction. This already proves the
non-LOW part of the dichotomy.

We prove the stronger 0.17 empty-core boundary. Define
S:=sum_i mu_i x_{U,i}x_{V,i}x_{W,i} and D:=Gamma eta_0.
Multiplying (4.10) by mu_i x_{M,i} and summing gives
  |alpha_M-S|<=D,
  S sum_i|x_{M,i}^2-x_{N,i}^2|<=4D.                         (4.31)
Let g_* be (4.24) and B_s=s_Us_Vs_W. If
sigma>=0.17lambda_min, then
  S>=0.17/(1+q_*)^3-g_*>0.169.                              (4.32)
If I=emptyset, for each i choose a mode N(i) with x_{N(i),i}<vartheta.
Equation (4.31) gives, for every M,
  x_{M,i}^2<=vartheta^2+4D/S,
  S<=Gamma sqrt(vartheta^2+4D/S).                            (4.33)
At the displayed worst-case constants,
`4Gamma eta_0/0.169<0.0117`, so the right side of (4.33) is at most
`1.01 sqrt(1/64+0.0117)<0.167`, contradicting (4.32). Hence an empty core has score below
0.17lambda_min.

Finally, if sigma>=0.7lambda_min and I={j},
Lemma~\ref{lem:step-004b-singleton} gives x_{M,j}>1-64eta_0 and tail l1
below a_cert; hence j is the unique top index in
every mode. A top-index mismatch therefore cannot be a non-LOW singleton.
This proves all alternatives without a target label or clustering input.

### unit_010: proposition

Proposition (proof-only barred post-score convention).
Label: prop:step-004b-barred.
\label{prop:step-004b-barred}

Under the local certificate predicate, if a later score step has established theta!=0 and
epsilon_U=epsilon_V=epsilon_W=epsilon:=sgn(theta), choose signs
delta_U,delta_V,delta_W with delta_Udelta_Vdelta_W=epsilon columnwise, and
write Delta_M:=diag(delta_{M,a}). Define, by right column multiplication,
  bar P_M:=P_M^raw Delta_M,
  bar K_M:=diag(lambda)((G_{M'}^Tbar P_{M'}) circ
      (G_{M''}^Tbar P_{M''})),
  bar R_M:=R_M^raw Delta_M.
Then
  bar P_M D_M=G_M bar K_M+bar R_M,
  ||bar R_M(:,a)||_2<=D_M(a,a)tau_r.                        (4.34)
The bars are proof-only and represent the same initialized rank-one terms,
because the setting-level z direction already carries sgn(theta).

Proof. In column a, multiplying (4.2) by delta_{M,a} gives a right
coefficient sign delta_Mepsilon. Since
delta_{M'}delta_{M''}=epsilon delta_M, this is exactly the pair-matrix sign
in bar K_M. Residual norms are unchanged. The product of the three direction
signs is epsilon, which cancels the setting-level z amplitude sign when the
represented rank-one tensor is written with bar theta=|theta|. No algorithmic
state or look-ahead object is changed.

For reference, the common sign condition is compatible with the certificate:
taking the inner product of (4.1) with p_M gives
|theta-epsilon_Md_M|<=d_Mtau_r. Since tau_r<1, every nonzero certified slot
has epsilon_M=sgn(theta); Proposition~\ref{prop:step-004b-barred} deliberately
keeps this as a post-score
interface because the algorithmic bars are not formed until after filtering.

## Target-Step Assembly

Proposition~\ref{prop:step-004b-raw} gives the exact same-stored-state raw
equation and the sign matrix on the right, with no pre-update pair matrix.
Lemmas~\ref{lem:step-004b-scale}--\ref{lem:step-004b-residual} split the
coefficient-vector, scalar, and finite-support defects and produce the exact
normalized absolute equations. Lemma~\ref{lem:step-004b-profile} derives the
no-label threshold denominator, the retained-core ratio product, and the
profile while explicitly accounting for the l2 mass outside the core. The
singleton and multi-support results provide the two weighted tail ledgers;
Proposition~\ref{prop:step-004b-straddle} proves that empty and mismatched-top
cases do not form a third high-score branch. Proposition~\ref{prop:step-004b-barred}
converts the raw equation to the exact post-score convention consumed by later
steps, without asserting score signs before that consumer.

Together these units produce E_cert_eq and E_cert_tail for every certified
slot on the derived static event, before labels, score filtering, clustering,
or any use of E_cov. The exported ledger is:

  eta_G=2q_*+q_*^2, eta_N=5q_*^2, eta_C=2sqrt(r)tau_r,
  eta_0=eta_G+eta_N+eta_C, eta_rel=8eta_0,

with LOW, the common singleton/core set I_vartheta, vartheta_*>1/16,
singleton tail <=a_cert, multi tail-score <=16eta_0, the profile reserve
144eta_0, and the component/mix score margins (4.23), (4.26). All target
indices in this description are proof-only realized-basis indices.
The certificate residual is compared only with the same stored-state
contraction in this step; no claim about distance to a target component is
exported.  The residual-to-realized-target dual conversion is reserved for
the accepted downstream selected-state step.

## Explicit Rate Audit

- Exposed variables: r, q_real (bounded by fixed q_*), Gamma, tau_r,
  eta_G, eta_N, eta_C, eta_0, eta_rel, vartheta, vartheta_*,
  a_cert, s_-, s_+, and support size m.
- Hidden constants may depend on: only displayed universal numerical constants
  and the fixed q_* reserve.
- Hidden constants may not depend on: n, k, kappa_0, rho, either confidence
  parameter, the base triple, a target label, a chart condition number, or
  the number of certified slots.
- Fixed quantities: the realized instance on E_sm and one certified stored
  state; all inequalities are deterministic and uniform over slots.
- Probability mode: conditional/deterministic on derived E_sm and E_cert
  interfaces. No new union bound or probability conversion is used.
- Horizon mode: fixed certificate state; no accumulation over proposal time and
  no all-time ALS claim.
- Norm mode: Euclidean coefficient/residual norms, finite-support l1 mass,
  target-basis coordinate ratios, and original scalar score |theta|.
- Admissibility conditions and auxiliary tolerances: r>=3,
  tau_r=q_*^2/(10^4r), q<=q_*, Gamma<=1.01, and the non-LOW threshold
  sigma>=0.7lambda_min only inside conditional local units.
- Term absorption/simplification: (4.7), (4.8), (4.12), (4.19), (4.20),
  (4.21), (4.25), and (4.31)-(4.33) display every numerical absorption;
  eta_N is retained as a scalar reserve and never used to hide a vector
  factor of r.
- Probability conversion: none.
- Contribution to a rate-specialization bridge: supplies the explicit
  sqrt(r)tau_r certificate charge and all r-uniform tail/profile constants
  consumed by filtering and selected-state bridge.
- Baseline reduction: when q_real=0, a genuinely stationary stored state has
  F_M=0, g_M=0, and R_M^raw=0; (4.1) becomes the exact same-state normal
  equation. A finite orthogonal transient retains its nonzero certificate
  residual, charged by eta_C; no positive residual floor is asserted at the
  stationary baseline.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing outputs are only E_cert_eq and E_cert_tail. LOW, I,
  tail_M, tail_score, kappa_I, s_-, and s_+ are fields of the latter; their
  coordinate labels are proof-only and are not algorithm inputs.
- H_M, L_M, c_M, s_M, alpha_M, B_M, g_M, r_M, and e_M are appendix-local
  or proof-local objects defined from current setting notation. Their
  boundedness is proved in units 002--005; no free finite constant is
  introduced.
- The threshold objects I, O, X, vartheta_*, d_0, xi_{M,i}, kappa_I, Z,
  Z_M, t_M, S, D, g_*, and B_s are proof-local. Each is defined in the
  relevant named result and is exported only through the compact ledger
  fields listed in the assembly; none is a new theorem-facing assumption.
- eta_G is a direct expression from q_*; eta_N is the proved remainder in
  unit 004; eta_C is the proved finite-support conversion in unit 005;
  eta_0 and eta_rel are derived reserves. vartheta_*, a_cert, s_-, and s_+
  are direct expressions from these proved quantities.
- The event E_cert is a generated-object condition supplied by the accepted
  predecessor, and all uses here are conditional on that supplied event.
  E_sm is likewise an accepted derived static event. No chart membership,
  support, score, cluster, stability, or boundedness fact is promoted to a
  primitive assumption.
- The paired global_proof.md/global_proof_review.md was read; the review
  status is ACCEPTED. Its step-relevant suggestions (vector Gram expansion,
  reciprocal identity, finite-support charge, and support-case ledger) were
  used only as planning prompts and were independently derived above. The
  diagnostic is not proof evidence, a cited result, an assumption source, or
  authority to change the target claim.
- The raw setting-level symbols P,Q,S,K,D,theta remain raw. The barred symbols
  are introduced only by the conditional post-score proposition and are never
  substituted for raw algorithm objects in this step.
