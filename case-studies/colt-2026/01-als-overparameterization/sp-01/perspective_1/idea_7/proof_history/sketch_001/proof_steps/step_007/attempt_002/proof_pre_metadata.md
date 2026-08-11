# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted step_005 proof/review: db087ef40c797ff7429828fda26c3bafa05ec43d714c0b94318282e1b9da35fd / dd2b09855813b7d769bcee5bbb11b174ba8e8fd91e499515940c68091e2499be
- Accepted step_006 proof/review: ea92dd21a1780968e93c54c6078fefa05404e117a45f255d9747ce2d6da0f34b / c1ac10f07c01cd32a005ddce367a168fc4361a2524a017e90f90a00589e5ce21

## Target Step Claim

The accepted sketch row is:

> From the selected same-state equation, close the dual-coordinate column
> bootstrap and both induced row/column coefficient masses, including
> per-entry projected residual at most 2 tau_r.

The step consumes the generated E_sm, E_cert_eq, E_support, and E_cluster
interfaces from steps 005 and 006.  It exports E_col, E_row_residual, and
E_row.  The residual is charged once as r tau_r; no landing or cyclic
invariant is used.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:subquadratic-rank supplies r >= 3.

Derived invariants supplied by accepted dependencies:

- E_sm (step_001): for every mode M, H_M = G_M^T G_M has unit diagonal and
  ||H_M - I||_row,1 and ||H_M - I||_col,1 are at most
  q = q_real <= q_*; also Gamma <= 1.01.  Thus H_M has eigenvalues in
  [1-q,1+q] and ||G_M^dagger||_2 <= (1-q)^(-1/2).
- E_cert_eq (step_005): before the new sign choice made in this step, the
  selected score-oriented objects are denoted by barred symbols and obey
  bar P_M D_M = G_M bar K_M + bar R_M, where
  bar K_M = D_lambda (bar c_M' circ bar c_M''),
  bar c_M = G_M^T bar P_M, and bar sigma_a = |theta_a| > 0.
  The residual obeys ||bar R_M(:,a)||_2 <= d_M,a tau_r.  Their score
  identity is
  bar sigma_a = <T,bar p_U,a tensor bar p_V,a tensor bar p_W,a>
              = sum_j lambda_j bar c_U,ja bar c_V,ja bar c_W,ja.
  Every selected barred column is in range(G_M).
- E_support, E_cluster, and E_gauge (step_006): a proof-only permutation
  associates selected column a with target a and gives the absolute tail
  bounds max_{j != a} |bar c_M,ja| < 2 eta and
  sum_{j != a} |bar c_M,ja| <= ell_* = eta/(1-(14/5) eta),
  where eta = eta_score(r) < 1/2000.  It also gives a product-one,
  term-preserving sign gauge, but does not assert positive target
  correlations.  The retained score/coverage interface and Gamma <= 1.01
  imply bar sigma_a >= 0.85 sigma_max > 0.765 lambda_min
  > (3/4) lambda_max.  This is the same bar sigma_a before the explicit
  sign transformation.  Norm bounds for the transformed correlations are
  inherited from the same unit columns and E_sm.

Local conditional hypotheses: none.  Target indices, the permutation, and
all signs below are proof-only annotations.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| unit_001 | lemma | The pre-gauge barred score identity is carried through an explicit product-one sign transformation; the transformed dual equation has a positive diagonal, projected residuals normalized by d_M,a are entrywise at most 2 tau_r, and off-diagonal normalized coefficients obey a product inequality. | E_row_residual and the input to E_col. |
| unit_002 | proposition | The selected per-column correlation tails close the normalized dual-coordinate column mass at 42 omega. | E_col. |
| unit_003 | proposition | Under Lemma [lem:step-007-dual-equation] and Proposition [prop:step-007-column], the column bound gives a small-gain row recurrence; its positive denominator selects the small root, with max_M ||A_M-I||_row,1 <= 7 omega and max_M ||A_M-I||_col,1 <= 44 omega. | E_row. |

## Cited Result Applications

1. The accepted step_001 realized-geometry result is used only through the
   current H_M, q, Gamma, eigenvalue, and pseudoinverse bounds listed above.
2. The accepted step_005 signed equation and step_006 support/cluster/gauge
   results are used in exactly the current realized-factor notation.  The
   step_006 gauge contributes only the proof-only permutation and
   term-preserving product-one option; positivity is derived in unit_001.
   No landing state or later ALS invariant is imported.
3. The only other tools are Cauchy-Schwarz, the elementary Hadamard product
   norm inequality, and induced row/column l1 estimates, all derived below.

## Local Derivation

Reindex by the proof-only target permutation and put

    q = q_real,  t = r tau_r,  omega = q_*^2 + t,  eta = eta_score(r).

The displayed definition of eta_score, tau_r = q_*^2/(10000 r), and
q <= q_* imply

    eta <= (3/2) q_*,       ell_* <= (31/20) q_*,       x_* := 2 eta <= 3 q_*,
    x_* ell_* <= (93/20) q_*^2.                                    (A)

For example,
sqrt(r(1+q_*)) tau_r <= q_*/10^6 and
1.4(1+q_*) tau_r/(1-tau_r) <= q_*/10^6; hence
eta <= 1.4(1+q_*) q_* + 2 q_*/10^6 < (3/2) q_*.
Since eta < 1/2000, division by 1-(14/5)eta gives the stated ell_* bound.
All constants in (A) are universal and remain valid when q_real = 0.

### unit_001: lemma

Lemma [lem:step-007-dual-equation] (sign-covariant dual equation, positive
diagonal, and projected residual).

Under E_sm, E_cert_eq, E_support, and E_cluster, first keep the score-oriented
step-005 objects barred.  After the proof-only target permutation, write

    bar c_M,ja = (G_M^T bar P_M)(j,a),   bar sigma_a = |theta_a|
      = sum_j lambda_j bar c_U,ja bar c_V,ja bar c_W,ja
      > (3/4) lambda_max.

For each a let xi_M,a = sign(bar c_M,aa).  Then
xi_U,a xi_V,a xi_W,a = 1.  Define the transformed, product-one objects

    p_M,a = xi_M,a bar p_M,a,
    c_M,ja = xi_M,a bar c_M,ja,
    k_M,a = xi_M',a xi_M'',a bar k_M,a = xi_M,a bar k_M,a,
    r_M,a = xi_M,a bar r_M,a.

Stacking the transformed columns defines P_M, K_M, and R_M.

The transformed objects obey

    P_M D_M = G_M K_M + R_M,   c_M = G_M^T P_M,                 (B0)

and the score identity is unchanged.  Set sigma_a = bar sigma_a and relabel
these transformed objects without bars.  Define

    A_M = G_M^dagger P_M = H_M^(-1) G_M^T P_M,   c_M = H_M A_M.

For every selected column a, a_M,a = A_M(a,a) is positive and
0.74 < a_M,a < 1.001.  Put

    Delta_M = diag(a_M,a),   Z_M = A_M Delta_M^(-1),
    h_M,ja = (H_M Z_M)(j,a) = c_M,ja / a_M,a.

Then h_M,aa > 2/3.  If

    eps_M,ja = (G_M^dagger R_M)(j,a) / d_M,a,

then |eps_M,ja| <= 2 tau_r for every M,j,a.  For j != a,

    |Z_M(j,a)| <= 4 |h_M',ja h_M'',ja| + 3 tau_r.                 (B)

Proof.

The barred score identity and the accepted retained-pool bounds are the
pre-gauge facts.  If xi_U,a xi_V,a xi_W,a were negative, the dominant term
in that identity would be negative and the off-target bounds would give

    bar sigma_a <= lambda_max x_* ||bar c_M',-a||_2
                            ||bar c_M'',-a||_2
                 <= lambda_max x_*(1+q_*) < (3/4) lambda_max,

contradicting the displayed retained score floor.  Thus the signs xi_M,a
have product one.  Multiplying the barred same-state equation in mode M by
xi_M,a gives (B0), because
xi_M',a xi_M'',a = xi_M,a.  The residual column is transformed by the same
sign, so its norm bound remains ||R_M(:,a)||_2 <= d_M,a tau_r.  The product
of all three transformed correlations equals the barred product, so the
score identity is unchanged, and every absolute tail in (A) is unchanged.
This is an explicit proof-only
product-one gauge; no positivity is imported from E_gauge.  By construction
c_M,aa = |bar c_M,aa| > 3/4.

Since P_M is in range(G_M), A_M is well-defined and P_M = G_M A_M.
The unit column norm and the eigenvalue floor give
||A_M(:,a)||_2 <= (1-q)^(-1/2).  Therefore

    |c_M,aa - A_M(a,a)|
      <= ||H_M(a,-a)||_2 ||A_M(-a,a)||_2
      <= q / sqrt(1-q).                                         (C)

Combining (C) with c_M,aa > 3/4 and |c_M,aa| <= 1 proves
0.74 < a_M,a < 1.001 and h_M,aa > 2/3.

Apply G_M^dagger to (B0).  Columnwise this is

    d_M,a A_M(:,a) = K_M(:,a) + (G_M^dagger R_M)(:,a).             (D)

The pseudoinverse norm and the residual bound give

    ||eps_M,:,a||_2 <= tau_r / sqrt(1-q) < 2 tau_r,              (E)

which proves the dual-residual entrywise assertion.  The directly projected
residual used by E_row_residual obeys, separately,

    |(G_M^T R_M)(j,a)| / d_M,a
       <= sqrt(1+q) tau_r < 2 tau_r.                             (E')

Consequently, both the dual residual array eps and the directly projected
array in (E') have every induced row and column sum bounded by 2 r tau_r.

Also

    d_M,a <= ||G_M||_2 ||K_M(:,a)||_2
           <= lambda_max (1+q),

because ||c_M' circ c_M''||_2 <= sqrt(1+q).  Hence
d_M,a / lambda_a <= Gamma(1+q) < 1.02.

For j != a, divide the j coordinate of (D) by the a coordinate.  The
denominator, divided by lambda_a, has absolute value at least

    9/16 - 1.02 tau_r / sqrt(1-q) > 0.56.                       (F)

Using c_M',ja = a_M',a h_M',ja, c_M'',ja = a_M'',a h_M'',ja and the
upper bound 1.001 on each diagonal factor, the product part of the numerator
divided by lambda_a is at most 1.02 |h_M',ja h_M'',ja|.  The residual part
divided by lambda_a is at most 1.02 tau_r.  Division by (F) makes both
coefficients strictly smaller than 2, so the safe bound (B) follows.  The
residual is bounded entrywise before any sum.  QED.

### unit_002: proposition

Proposition [prop:step-007-column] (normalized dual-coordinate column
bootstrap).

Under Lemma [lem:step-007-dual-equation],

    max_M ||Z_M - I||_col,1 <= 42 omega.                          (G)

Proof.

For each selected column a, (A), (C), and a_M,a > 0.74 give

    ||h_M,-a||_2
      <= ||c_M,-a||_2 / a_M,a
      <= (3/2) sqrt(x_* ell_*).                                  (H)

Sum (B) over j != a and use Cauchy-Schwarz:

    sum_{j != a} |Z_M(j,a)|
      <= 4 ||h_M',-a||_2 ||h_M'',-a||_2 + 3(r-1) tau_r
      <= 9 x_* ell_* + 3 t
      <= 42 (q_*^2+t) = 42 omega.                                 (I)

Taking the maximum over M and a proves (G).  This is a genuine column
bootstrap: no row mass, landing output, or cyclic condition occurs.
QED.

### unit_003: proposition

Proposition [prop:step-007-row] (two-orientation coefficient closure).

Under Lemma [lem:step-007-dual-equation] and Proposition
[prop:step-007-column], let

    R = max_M ||Z_M - I||_row,1,    C = max_M ||Z_M - I||_col,1.

Then

    R <= 5 omega,
    max_M ||A_M-I||_row,1 <= 7 omega,
    max_M ||A_M-I||_col,1 <= 44 omega.                            (J)

The normalized residual entries still obey |eps_M,ja| <= 2 tau_r, and
their row or column sums are charged once as 2 r tau_r.

Proof.

Fix M and row j.  For a != j, set v_M,ja = (H_M Z_M)(j,a).  From (G),

    max_{a != j} |v_M,ja| <= q + (1+q) C =: u,                   (K)

since the direct H_M(j,a) term has row mass q, the off-diagonal Z entry is
at most C, and the remaining Gram row contributes at most q C.  Also,

    sum_{a != j} |v_M,ja|
      <= q + (1+q) ||Z_M-I||_row,1.                              (L)

To verify (L), the l=j term in H_M Z_M contributes the row error.  Each
l != j term contributes its off-diagonal row mass and its one diagonal
entry Z_M(l,l)=1, weighted by the H_M row mass q.

Sum (B) over a != j, use (K) for one factor and (L) for the other, and
take the maximum over modes.  This gives

    R <= 4 u { q + (1+q) R } + 3 t.                              (M)

By (G), t = q_*^2/10000, and q <= q_*,

    u <= q + 42(1+q_*)(1+10^(-4)) q_*^2 < (51/50) q_*,
    4 u (1+q) < 1/1000.                                         (N)

Thus (M) has a positive denominator and

    R <= (4 u q + 3 t) / (1 - 4 u (1+q)) < 5 omega.               (O)

This is the small-root selection.  Before inserting (G), (M) is the usual
quadratic/small-gain envelope; (G) puts the solution in the small branch,
and (N) excludes the large branch without assuming a row tube.

It remains to transfer from normalized columns to A_M.  Let z be a column
of Z_M, with z_a=1 and ||z-e_a||_1 <= C, and write a0 = a_M,a.  The unit
norm identity 1 = (a0 z)^T H_M (a0 z) gives

    |z^T H_M z - 1| <= 2 q C + (1+q) C^2 =: delta_a.              (P)

At q <= q_* and C <= 42 omega, delta_a < 1/100 and
|a0-1| <= 2 delta_a <= omega.  (The last inequality is the direct endpoint
check using omega = (1+10^(-4)) q_*^2 and q_* = 1/4096.)
Since a0 < 1.001, (G), (O), and this diagonal bound imply

    ||A_M-I||_col,1 <= 1.001 C + omega < 44 omega,
    ||A_M-I||_row,1 <= 1.001 R + omega < 7 omega.

This proves (J).  Equation (E) gives the entrywise 2 tau_r residual, and
summing over at most r entries gives 2 r tau_r in either orientation, never
r^2 tau_r.  QED.

## Target-Step Assembly

The accepted step_006 support and gauge interfaces first provide one selected
stored state per target, a proof-only permutation, and a term-preserving
product-one sign option.  Lemma [lem:step-007-dual-equation] starts from the
barred step-005 score identity, proves the dominant sign product, explicitly
transforms the equation and residual, and only then applies the true-factor
dual.  It proves the positive diagonal and bounds every projected residual
entry before summation.  Proposition [prop:step-007-column] uses
only the accepted per-column correlation tails to produce the 42 omega
column interface.  Proposition [prop:step-007-row] then uses that interface
to bound held correlation rows, solve the positive-denominator small-gain
inequality, and transfer from normalized dual columns to A_M-I.  Therefore
E_col, E_row_residual, and E_row hold with both induced orientations at
O(omega), and with one residual charge r tau_r.  All objects are from the
selected stored state; no landing or cyclic object is consumed.
Because the accepted stored-state interface places every selected column in
range(G_M), the orthogonal complement field is exactly zero at this stage
and therefore satisfies the later step_008 budget tau_r.

## Explicit Rate Audit

- Exposed variables: q = q_real <= q_*, Gamma <= 1.01, r, tau_r, eta_score(r),
  and omega = q_*^2 + r tau_r.
- Hidden constants may depend only on the fixed numerical margins displayed
  in the proof.
- Hidden constants may not depend on n, kappa_0, rho, epsilon, either
  confidence parameter, a target label, a condition number, or a generated
  landing/basin object.
- Fixed quantities: the realized instance (G_M,D_lambda) conditional on the
  accepted generated interfaces; q_* = 1/4096; the prescribed positive
  tau_r = q_*^2/(10000 r); and the one finite selected-state horizon
  consisting of the r selected columns and one same-state equation.
- Probability mode is deterministic conditional on the accepted generated
  interfaces.  The horizon is one selected state per target; residuals are
  not accumulated over later sweeps.
- Norm mode is target-span dual coordinates, induced row/column l1 mass, and
  Euclidean projected residuals.
- The term absorptions are (A), (F), (I), and (M)--(P).  In particular, all
  residuals are bounded entrywise first and charged only as 2 r tau_r.
- No probability conversion is introduced.  The output is the exact
  O(q_*^2 + r tau_r) interface consumed by step_008.
- In the exact orthogonal/equal-weight baseline, q_real = 0 while the
  prescribed tau_r remains positive.  The exact certified component has
  actual residual R_M(:,a) = 0, so its off-target coordinates vanish and
  A_M = Z_M = I; the original same-state equation and zero-residual baseline
  are unchanged.  The prescribed positive tolerance is not changed.

## Blockers

None.

## Notation And Assumption Notes

- H_M, barred c_M/bar P_M/bar K_M/bar R_M, and the transformed
  c_M/P_M/K_M/R_M are distinct appendix-local translations of the setting's
  realized Gram, pre-gauge score-oriented objects, and post-gauge objects.
  A_M, Z_M, h_M, and eps_M are the dual, normalized-dual,
  held-correlation, and projected-residual objects.  A_M-I and the three
  exported events E_col, E_row_residual, E_row are public-facing; x_*,
  ell_*, u, R, C, and delta_a are proof-local.
- q, t, and omega are direct setting expressions.  eta and ell_* are
  inherited from the accepted step-005/006 ledger.  The constants 2, 3,
  42, 44, and 5 are proved in the named local units.
- E_sm, E_cert_eq, E_support, E_cluster, and E_gauge are generated outputs
  supplied by accepted dependencies, not primitive assumptions.  The
  permutation and the product-one sign option are proof-only and preserve
  represented terms; positivity is produced by unit_001, not imported from
  E_gauge.
- The paired global_proof.md/global_proof_review.md was consulted only for
  the planning cue to close a column mass before the row small-gain step.
  It is not evidence, an assumption source, a cited result, or authority to
  change the target claim.
