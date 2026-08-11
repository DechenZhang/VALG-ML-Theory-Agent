# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: step_001
- Unit attempt: 1

## Target Step Claim

Intended claim: derive the once-drawn instance event E_inst, all realized
norm, Gram, product-weight, and tensor-Frobenius bounds, pair and triple
conditioning, the exact balanced rank-k target representation, and the
derived lower-tail event E_lb.

- Dependencies: None.
- Assumptions used: assump:base-column-conditioning,
  assump:base-product-balance, assump:gaussian-smoothing,
  assump:dimension-regime, assump:smoothing-scale, and
  assump:modewise-gram-margin.
- Technical challenge: normalize all Gaussian-perturbed columns while
  preserving an operator-Gram margin, and prove a uniform lower tail for at
  least one normalized off-diagonal Gram entry without imposing a primitive
  source-correlation lower bound.
- Proof tools: a spherical-net Gaussian operator-norm bound, a chi-square
  tail bound, conditional Gaussian small-ball estimates on disjoint label
  pairs, Schur/Kronecker compression, and direct CP product algebra.
- Output target: E_inst, E_lb, the realized norm and Gram bounds, the
  pair/triple product-Gram gaps, Q^star, and the two-sided bound for
  ||T||_F.
- Rate objective: R1, with the lower-tail probability and all variables in
  P exposed.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:base-column-conditioning: every deterministic base column is
  nonzero and has norm in [kappa^(-1), kappa].
- assump:base-product-balance: the deterministic product weights satisfy
  max_j bar_tau_j / min_j bar_tau_j <= Gamma_star.
- assump:gaussian-smoothing: the three perturbation matrices have
  independent columns with law N(0,rho^2 I_n/n).
- assump:dimension-regime: n >= C_dim r log(2r).
- assump:smoothing-scale: 0 < rho <= 1.
- assump:modewise-gram-margin:
  nu_base + C_sm kappa rho sqrt(log(2r)) <= nu_star, with
  nu_star = 1/(C_nu r log(2r)) and sufficiently large fixed C_sm,C_nu.

Derived invariants supplied by accepted dependencies: None. This step is the
first producer of every event used below.

Local conditional hypotheses: None.

The algorithmic rank k occurs only through the setting-defined scale
P=16 n r k kappa rho^(-1) and the already defined rank-k target slot
space. No rank-regime inequality is used in the probabilistic derivation.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under assump:base-column-conditioning, assump:gaussian-smoothing, and assump:dimension-regime, the relative perturbation matrices obey a simultaneous operator bound on an event of probability at least 1-r^(-30). | Supplies the event on which normalization is stable. |
| unit_002 | lemma | Under the six listed primitive assumptions and the event from Lemma \ref{lem:p2-i9-s6-step001-perturbation}, normalized columns have the stated norm, weight-ratio, and realized-Gram bounds. | Produces the structural realized-instance controls. |
| unit_003 | proposition | Under the structural controls from Lemma \ref{lem:p2-i9-s6-step001-normalization}, pair/triple Hadamard Gram gaps, the tensor norm bounds, and the exact balanced target representation hold. | Produces pair/triple conditioning, T, and Q^star. |
| unit_004 | lemma | Under assump:base-column-conditioning, assump:gaussian-smoothing, assump:smoothing-scale, and the perturbation event, the derived event E_lb={nu_real>=P^(-D_lb)} has complement probability at most r^(-20) for a fixed D_lb=60. | Supplies the only finite-smoothing lower scale used by later branch-qualified comparisons. |
| unit_005 | proposition | The intersection E_inst=E_str intersect E_lb has probability at least 1-r^(-10) and carries every requested output; its complement retains the raw structural branch, and the exact zero-defect limit is handled separately. | Assembles the exact target-step interface and probability modes. |

## Cited Result Applications

### Result G1: Gaussian net norm bound

For an n by r matrix Z with independent standard Gaussian entries and
n >= C_dim r log(2r), a one-quarter net of the unit sphere has at most
9^r points. For every fixed net point v, Z v is standard Gaussian in R^n,
and the chi-square Chernoff bound gives
P(||Z v||_2 > 2 sqrt(n)) <= exp(-n/2). The net reconstruction inequality
||Z||_op <= 4/3 max_v ||Z v||_2 therefore gives
P(||Z||_op > 3 sqrt(n)) <= 9^r exp(-n/2). The choice of the fixed
C_dim in assump:dimension-regime makes three such events (one per mode)
have total failure probability at most r^(-30). The object map is the
perturbation matrix Z_M in Lemma \ref{lem:p2-i9-s6-step001-perturbation};
the only required source conditions are the Gaussian law and the dimension
regime.

The chi-square inequality used here follows from the moment generating
function of chi^2_n: for lambda in (0,1/2),
E exp(lambda ||g||_2^2)=(1-2 lambda)^(-n/2). Optimizing the Chernoff
bound at the value for threshold 4n gives a bound no larger than exp(-n/2).
Thus no unverified external theorem is being imported.

### Result G2: conditional Gaussian small-ball bound

If X is one-dimensional Gaussian with variance sigma^2>0, then for any
center mu and t>=0,
P(|X|<=t) <= 2t/(sqrt(2 pi) sigma). This is the integral of the Gaussian
density over an interval of length 2t, using its uniform density maximum.
In Lemma \ref{lem:p2-i9-s6-step001-lower-tail}, conditional on the even
columns, each selected odd-even inner product is Gaussian with variance at
least rho^2/(4 kappa^2 n), and the selected odd perturbations are
independent. Hence the product form of the small-ball bound is valid.

### Result G3: Schur/Kronecker compression

For square matrices U,V and the isometry J e_i=e_i tensor e_i,
J^T(U tensor V)J=U o V; consequently
||U o V||_op <= ||U||_op ||V||_op. The analogous three-factor identity
uses J_3 e_i=e_i tensor e_i tensor e_i. In Proposition \ref{prop:p2-i9-s6-step001-target},
U,V are the centered normalized Gram matrices. This is a direct finite
dimensional identity, and its assumptions are only that the displayed
matrices have compatible dimensions.

### Local-result application map

- Lemma \ref{lem:p2-i9-s6-step001-perturbation} supplies the sole event used
  by Lemma \ref{lem:p2-i9-s6-step001-normalization}.
- Lemma \ref{lem:p2-i9-s6-step001-normalization} supplies the hypotheses of
  Proposition \ref{prop:p2-i9-s6-step001-target} and the norm bounds used in
  Lemma \ref{lem:p2-i9-s6-step001-lower-tail}.
- Proposition \ref{prop:p2-i9-s6-step001-target} supplies the structural
  target objects used by Proposition \ref{prop:p2-i9-s6-step001-instance}.
- Lemma \ref{lem:p2-i9-s6-step001-lower-tail} supplies the branch used by
  Proposition \ref{prop:p2-i9-s6-step001-instance}; it is not treated as a
  primitive assumption.

## Local Derivation

### unit_001: lemma

Statement:

Under assump:base-column-conditioning, assump:gaussian-smoothing, and
assump:dimension-regime, let bar D_M=diag(||bar m_1||_2,...,||bar m_r||_2),
Xi_M=M-bar M, Z_M=sqrt(n) Xi_M/rho, and
W_M=Xi_M bar D_M^(-1) for M in {A,B,C}. Then there is an event
E_str with P(E_str)>=1-r^(-30) such that
max_M ||Z_M||_op <= 3 sqrt(n) and max_M ||W_M||_op <= beta, where
beta=3 kappa rho.

Proof / justification:

For a fixed mode, take a one-quarter Euclidean net N of the unit sphere in
R^r with cardinality at most 9^r. For each v in N, Z_M v is a standard
Gaussian vector. Result G1 gives
P(||Z_M v||_2>2 sqrt(n))<=exp(-n/2). The usual net reconstruction is
proved as follows: for a maximizing unit vector x, choose v with
||x-v||_2<=1/4; then
||Z_M x||_2 <= ||Z_M v||_2 + (1/4)||Z_M||_op, and taking the supremum
gives ||Z_M||_op <= (4/3) max_{v in N} ||Z_M v||_2.
A union bound over N and the three modes gives
P(max_M ||Z_M||_op>3 sqrt(n))
 <=3 9^r exp(-n/2) <=r^(-30) after choosing the fixed C_dim large
enough in assump:dimension-regime. Define E_str to be the event in the
last display.

Since every base column norm is at least kappa^(-1),
||bar D_M^(-1)||_op<=kappa. On E_str,
||W_M||_op = (rho/sqrt(n)) ||Z_M bar D_M^(-1)||_op
 <=3 kappa rho=beta. This proves the claimed simultaneous perturbation
control and records the exact probability mode.

### unit_002: lemma

Statement:

Under the six primitive assumptions listed in Allowed Assumptions And
Dependencies and on the event E_str of Lemma \ref{lem:p2-i9-s6-step001-perturbation},
if the fixed class constants C_sm,C_nu are sufficiently large, then for
every mode M and label j,
\[
 (2\kappa)^{-1}\le \|m_{j,M}^{raw}\|_2\le2\kappa,\qquad
 \frac{\tau_{\max}}{\tau_{\min}}\le2\Gamma_\star,\qquad
 \nu_{\rm real}\le\nu_\star\le2\nu_\star.
\]
Here m_{j,M}^{raw} denotes the realized (unnormalized) column, so all
realized normalized columns are well-defined and nonzero.

Proof / justification:

Write bar u_{j,M}=bar m_{j,M}/||bar m_{j,M}||_2,
w_{j,M}=xi_{j,M}/||bar m_{j,M}||_2, and
s_{j,M}=||bar u_{j,M}+w_{j,M}||_2. On E_str,
max_j ||w_{j,M}||_2<=||W_M||_op<=beta. The margin assumption and the
fixed sufficiently large constants imply
\[
 \beta=3\kappa\rho
 \le \frac{3\nu_\star}{C_{\rm sm}\sqrt{\log(2r)}}
 \le \frac1{20}.
\]
Thus 1-beta <=s_{j,M}<=1+beta, and
||m_{j,M}^{raw}||_2=||bar m_{j,M}||_2 s_{j,M} gives the displayed
(2 kappa)^(-1) and 2 kappa bounds.

Let bar U_M and U_M be the matrices of base and realized normalized
columns, and let D_{s,M}=diag(s_{1,M},...,s_{r,M}). Then
U_M=(bar U_M+W_M)D_{s,M}^{-1}. Since
||bar U_M||_op=sqrt(||bar G_M||_op)<=2,
\[
 \|U_M-\bar U_M\|_{\rm op}
 \le \frac{\|W_M\|_{\rm op}+2\|D_{s,M}^{-1}-I\|_{\rm op}}{1-\beta}
 \le4\beta.
\]
The second inequality uses
||D_{s,M}^{-1}-I||_op<=beta/(1-beta) and beta<=1/20.
Consequently, with G_M=U_M^T U_M,
\[
 \|G_M-\bar G_M\|_{\rm op}
 \le2\|\bar U_M\|_{\rm op}\|U_M-\bar U_M\|_{\rm op}
      +\|U_M-\bar U_M\|_{\rm op}^2
 \le17\beta=51\kappa\rho.
\]
Choose the fixed C_sm so that 51 kappa rho <= C_sm kappa rho
sqrt(log(2r)). The modewise margin then gives
||G_M-I||_op<=nu_base+C_sm kappa rho sqrt(log(2r))<=nu_star; taking the
maximum over modes proves the realized Gram bound.

The product weight satisfies
tau_j=bar_tau_j product_M s_{j,M}. Hence
\[
 \frac{\tau_{\max}}{\tau_{\min}}
 \le \Gamma_\star\left(\frac{1+\beta}{1-\beta}\right)^3
 \le \Gamma_\star(21/19)^3<2\Gamma_\star.
\]
All columns are nonzero by the lower norm bound. The stronger inequality
nu_real<=nu_star implies the claimed nu_real<=2 nu_star.

### unit_003: proposition

Statement:

Under the primitive assumptions and the conclusions of
Lemma \ref{lem:p2-i9-s6-step001-normalization}, the centered matrices
E_M=G_M-I_r have zero diagonal and, for distinct modes M,N,
\[
 \|G_M\circ G_N-I_r\|_{\rm op}\le\nu_{\rm real}^2\le\frac1{16},
 \qquad
 \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}
 \le\nu_{\rm real}^3\le\frac1{16}.
\]
Moreover, with Phi_star and tau as defined in setting.md,
\[
 \sqrt{15/16}\|\tau\|_2\le\|T\|_F
 \le\sqrt{17/16}\|\tau\|_2,\qquad T\ne0.
\]
The balanced slots
q_j^star=(tau_j^(1/3)m_{j,A},tau_j^(1/3)m_{j,B},tau_j^(1/3)m_{j,C}),
augmented by joint-zero slots, represent T exactly and lie inside the
radius guard.

Proof / justification:

Every normalized Gram has unit diagonal, so E_M has zero diagonal and
G_M\circ G_N-I=E_M\circ E_N. By Result G3,
||E_M\circ E_N||_op<=||E_M||_op||E_N||_op<=nu_real^2. The same compression
with three tensor factors gives
G_A\circ G_B\circ G_C-I=E_A\circ E_B\circ E_C and the bound
nu_real^3. Since nu_real<=nu_star and C_nu is sufficiently large,
both bounds are at most 1/16.

The exact Gram identity is
Phi_star^* Phi_star=G_A\circ G_B\circ G_C, because the inner product of
two tensor columns is the product of the three modewise inner products.
Therefore
\[
 \|T\|_F^2=\tau^T(\Phi_\star^*\Phi_\star)\tau
 \in[15\|\tau\|_2^2/16,17\|\tau\|_2^2/16].
\]
All realized norms are positive, so every tau_j is positive and T is
nonzero. Finally, the tensor of the three factors in q_j^star is
tau_j phi_j; summing the r nonzero slots and the k-r joint-zero slots
is exactly T. From the norm bounds in Lemma \ref{lem:p2-i9-s6-step001-normalization},
tau_j^(1/3)<=2 kappa<R_max=8 kappa, so the exact state is inside the
certificate radius guard (indeed, strictly inside 2 R_max).

### unit_004: lemma

Statement:

Under assump:base-column-conditioning, assump:gaussian-smoothing,
assump:smoothing-scale, and the event E_str of
Lemma \ref{lem:p2-i9-s6-step001-perturbation}, let
D_lb=60, nu_lb=P^(-D_lb), and
E_lb={nu_real>=nu_lb} (defined arbitrarily on the null event of a zero
Gaussian column). Then
\[
 \mathbb P(E_{\rm lb}^c)\le r^{-20}.
\]
The assertion is a derived event statement; no lower bound on nu_real is
assumed.

Proof / justification:

Let m=floor(r/2) and use the disjoint pairs (p_s,q_s)=(2s-1,2s)
in mode A. On E_str, all selected columns have norm at least
(2 kappa)^(-1) and at most 2 kappa. If nu_real<nu_lb, then for every
selected pair
\[
 |X_s|:=|\langle a_{p_s},a_{q_s}\rangle|
 \le \nu_{\rm lb}\|a_{p_s}\|_2\|a_{q_s}\|_2
 \le4\kappa^2\nu_{\rm lb},
\]
because an off-diagonal Gram entry is bounded by the operator norm of
G_A-I_r.

Condition on all even columns a_{q_s}. The odd perturbations are still
independent, and
X_s=\langle\bar a_{p_s},a_{q_s}\rangle
 +\langle a_{p_s}-\bar a_{p_s},a_{q_s}\rangle
is Gaussian with conditional variance
rho^2||a_{q_s}||_2^2/n >=rho^2/(4 kappa^2 n).
Result G2, with t=4 kappa^2 nu_lb, gives the conditional bound
\[
 \mathbb P(|X_s|\le t\mid a_{q_s})
 \le C_{\rm sb}\frac{\kappa^3\sqrt n}{\rho}\,P^{-D_{\rm lb}}
 =:b.
\]
The X_s are conditionally independent because the odd perturbation columns
are independent. Restricting to the event that all even columns have the
required lower norm and dropping all other restrictions can only enlarge
the event, hence
\[
 \mathbb P(E_{\rm str}\cap E_{\rm lb}^c)\le b^m.
\]
The scale P=16nrk kappa rho^(-1) satisfies
kappa^3 sqrt(n) rho^(-1)<=P^5 and P>=16r. Thus, with the fixed choice
D_lb=60 (and the fixed class threshold on r),
b<=C_sb P^(-55)<=r^(-40). Since m>=1,
P(E_str intersect E_lb^c)<=r^(-40).
Combining this with P(E_str^c)<=r^(-30) yields
P(E_lb^c)<=r^(-30)+r^(-40)<=r^(-20).

This argument is uniform in the conditional means
<bar a_{p_s},a_{q_s}>; it uses only the isotropic variance and the norm
floor. It also shows why a disjoint-pair lower-tail event is available even
when the deterministic base correlations vanish.

### unit_005: proposition

Statement:

Under the six primitive assumptions and the conclusions of
Lemmas \ref{lem:p2-i9-s6-step001-normalization} and
\ref{lem:p2-i9-s6-step001-lower-tail} and Proposition \ref{prop:p2-i9-s6-step001-target},
define E_inst=E_str intersect E_lb. Then
\[
 \mathbb P(E_{\rm inst})\ge1-r^{-10}.
\]
On E_inst, all realized nonvanishing, norm, product-weight, realized-Gram,
pair/triple conditioning, tensor-norm, nonzero-target, exact-representation,
and radius-guard conclusions in the target step hold simultaneously. On the
structural raw branch E_str intersect E_lb^c, the same conclusions except
the lower-tail inequality hold, and no later proof may absorb a numerical
term into nu_real^2 using E_lb.

Proof / justification:

By Lemma \ref{lem:p2-i9-s6-step001-lower-tail} and the definition of
E_inst,
\[
 \mathbb P(E_{\rm inst}^c)
 \le \mathbb P(E_{\rm str}^c)+
       \mathbb P(E_{\rm str}\cap E_{\rm lb}^c)
 \le r^{-30}+r^{-40}<r^{-10}.
\]
The simultaneous conclusions follow from Lemma \ref{lem:p2-i9-s6-step001-normalization}
and Proposition \ref{prop:p2-i9-s6-step001-target}; all are properties of the
once-drawn matrices and no trajectory object is used. The raw branch retains
the structural event but intentionally carries no statement of the form
e <= c nu_real^2 or B_perp <= c tau_min eta0; those comparisons are
reserved for later steps on E_lb.

For baseline reduction, in the formal exact orthogonal/noiseless
specialization G_M=I_r, H_M=0, and e=0, the pair and triple identities,
the exact balanced representation, and the zero structural source hold by
equality. This is the limit branch and does not invoke the positive-threshold
event E_lb; it preserves the exact-target and no-floor conclusion rather
than replacing it by a weaker numerical statement.

## Target-Step Assembly

Lemma \ref{lem:p2-i9-s6-step001-perturbation} gives a simultaneous Gaussian
relative-perturbation event with failure at most r^(-30). On that event,
Lemma \ref{lem:p2-i9-s6-step001-normalization} transfers the deterministic
column conditioning and the modewise Gram margin to the realized columns,
including nonvanishing norms, the factor-two product-weight ratio, and
nu_real<=2 nu_star. Proposition \ref{prop:p2-i9-s6-step001-target} then
uses the exact Schur/Kronecker compression to produce the pair and triple
conditioning, the two-sided tensor norm estimate, the nonzero realized
target, and the exact balanced rank-k representation inside the radius
guard. Lemma \ref{lem:p2-i9-s6-step001-lower-tail} independently derives
E_lb from conditional Gaussian small-ball estimates with failure at most
r^(-20) and explicitly leaves the complement raw. Proposition \ref{prop:p2-i9-s6-step001-instance}
intersects the two once-drawn events and proves the exact target claim with
probability at least 1-r^(-10). No generated trajectory, tape realization,
protected state, history, or certificate is assumed or used.

## Explicit Rate Audit

- Exposed variables: n,r,k,kappa,rho,Gamma_star,nu_base,nu_star,P, the
  realized norms and weights, the realized nu_real, and the fixed lower-tail
  exponent D_lb=60; the confidence exponents 10,20,30,40 are explicit.
- Hidden constants may depend on: fixed class constants C_dim,C_sm,C_nu,
  the absolute Gaussian/net constants, and the fixed baseline class
  parameters (including Gamma_star).
- Hidden constants may not depend on: n,r,k,kappa,rho, the deterministic
  base triple, the realized perturbations, the tape, the commit order, or
  epsilon.
- Fixed quantities: the deterministic base triple, the fixed proof exponent
  D_lb, and the fixed concentration-margin constants.
- Probability mode: once-drawn high probability over the independent source
  perturbations. P(E_lb^c)<=r^(-20) and
  P(E_inst^c)<=r^(-10). No tape probability is combined at this step.
- Horizon mode: one draw, then uniform over every later trajectory prefix
  conditional on E_inst; the event itself has no time accumulation.
- Norm mode: Euclidean column norms, operator norms for modewise Grams,
  entrywise normalized correlations in the lower-tail argument, and tensor
  Frobenius norm.
- Admissibility conditions and auxiliary tolerances: n>=C_dim r log(2r),
  0<rho<=1, the six primitive assumptions, sufficiently large fixed
  C_dim,C_sm,C_nu, and D_lb=60. The event E_lb is derived, not an
  admissibility condition.
- Term absorption or simplification inequalities: beta<=1/20; the
  normalization bound ||G_M-bar G_M||<=51 kappa rho; the margin transfer;
  (21/19)^3<2; nu_real^2,nu_real^3<=1/16; and
  r^(-30)+r^(-40)<r^(-10). No positive numerical term is absorbed into
  nu_real^2 on the raw branch.
- Probability conversion: the three-mode net union gives r^(-30), the
  conditional disjoint-pair small-ball estimate gives r^(-40) on the
  structural event, and their union gives the displayed r^(-20) and
  r^(-10) bounds.
- Contribution to any Rate Specialization Bridge: this step supplies the
  once-drawn structural event, the branch-qualified lower scale, and the
  exact target/norm interfaces. Public runtime and accuracy substitutions are
  deferred to later steps.
- Baseline-reduction check: the exact orthogonal/noiseless specialization
  has G_M=I, exact pair/triple identities, exact representation, and zero
  structural source. The positive-threshold E_lb branch is not asserted in
  that limit; equality supplies the baseline conclusion.

## Blockers

None.

## Notation And Assumption Notes

- bar D_M, bar U_M, Xi_M, Z_M, W_M, beta, s_{j,M}, and D_{s,M} are
  proof-local or appendix-local abbreviations defined directly from the setting's
  base and realized matrices. They are not theorem assumptions and are not
  exported downstream.
- E_str is an appendix-local structural event produced by
  Lemma \ref{lem:p2-i9-s6-step001-perturbation}. E_lb and nu_lb=P^(-60)
  are public-facing derived interfaces for later branch-aware steps.
  E_inst=E_str intersect E_lb is the public-facing once-drawn event.
- D_lb=60 is a fixed proof exponent selected from the direct inequality
  kappa^3 sqrt(n) rho^(-1)<=P^5; it is not a free dimension-dependent
  constant. The absolute small-ball and net constants are supplied by the
  displayed density and net derivations.
- Every realized nonvanishing, norm, Gram, weight, pair/triple, tensor,
  target, and lower-tail statement is proved in this step. There are no
  generated-object or history conditions imported from a dependency.
- The exact target Q^star, the normalized columns, T, Phi_star, and P are
  setting-defined objects. The balanced representation proof uses only their
  displayed definitions and direct tensor multiplication.
- The Gaussian operator and small-ball facts in Cited Result Applications
  are restated in current notation and their assumptions are discharged by
  assump:gaussian-smoothing, assump:dimension-regime, and the norm event;
  no external paper result or prior branch artifact is used as evidence.
- The formal exact H=e=0 branch is a baseline specialization. It is kept
  distinct from finite smoothing E_lb, so the proof never silently turns a
  positive numerical tolerance into a structural lower bound.
- No global_proof.md, prior same-step proof, or proof_history artifact is
  used as a cited result or assumption source. The proof is fresh for sketch
  attempt 6 and uses only the current setting, the accepted sketch row, and
  the direct derivations above.

