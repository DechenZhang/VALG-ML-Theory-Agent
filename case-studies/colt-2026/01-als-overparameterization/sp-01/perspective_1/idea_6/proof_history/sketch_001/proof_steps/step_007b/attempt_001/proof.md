# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007b`
- Unit attempt: 1

## Target Step Claim

From the accepted selected-entry decomposition

\[
 \bar P_M=G_MB_M+N_M,
 \qquad G_M^TN_M=0,
 \qquad \|B_M-I\|_{\rm row,1},\|B_M-I\|_{\rm col,1}\le48\omega,
\]

and `max_j ||N_M(:,j)||_2 <= tau_r`, retain the collective fields
`F_M=N_M^T N_M` and prove the exact held pair-Gram contamination

\[
 \beta_{\perp}=2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4.
\]

The normalized cross and pair Grams at all three first-sweep subupdates must
have the stated `96 omega` and `192 omega+2 beta_perp` deviations and a
`31/32` inverse floor.  The exact active update must be equivalent to the
rank-`r` update with the other `k-r` columns zero, and its output must lie in
the corresponding target span.  In the literal cyclic order `U,V,W`, prove
that all three perpendicular fields are zero after the first sweep and that
the rebalanced quotient state satisfies

\[
 \|e^1\|_Q\le4096(\omega+\beta_{\perp})<\rho_{\rm ALS}/3.
\]

The output targets are `E_pair_entry` and `E_parallel_entry`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive condition: `assump:base-scale` is used only through the setting's
  finite, nonzero scale convention for the literal active factors.  No new
  condition on an arbitrary ALS state is introduced.
- Derived invariant supplied by accepted dependencies: `E_sm`, including unit
  realized columns, `q_real<=q_*`, `Gamma<=1.01`, and the cyclic pair-Gram
  floor `1-q_*^2`, from accepted `step_001` proof hash
  `d8a566c9d56d59699fc65dcc5cd79db0cea9ed2a73df7d703b2bc17aa25f407c` and
  accepted review.
- Derived invariants supplied by the accepted `step_007` dependency: the
  proof-only target permutation and positive orientation, the common
  represented-product amplitude factors `R=diag(1+alpha_j)` with
  `max_j|alpha_j|<=128 omega`, and the exact same-target decomposition
  `bar P_M=G_MB_M+N_M`, `G_M^TN_M=0`,
  `||B_M-I||_row,1<=7 omega`,
  `||B_M-I||_col,1<=33 omega`, and
  `max_j||N_M(:,j)||_2<=tau_r`.  The frozen accepted proof hash is
  `c7dc1d783acce52a45c365db3ea52e56c13669c078069314f7d1eba55961e31f` and
  its accepted review hash is
  `f8ead8e11f427f561aca5cc7dd35601582560ef7fc1d5fac6a47052aa3968337`.
- No local conditional hypothesis is used.  Every pair inverse and every
  target-span statement below is proved in this step before it is consumed.

No archived artifact, prior idea branch, or unreviewed global statement is
used as evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under `E_sm` and the accepted `step_007` decomposition, the exact same-mode Gram splits as `H_M^par+F_M`, and the held pair's perpendicular contribution has induced row and column mass at most `beta_perp`. | Retains the coherent shared-perpendicular field, including the `r tau_r^4` term. |
| `unit_002` | proposition | Under the same dependencies, the direction-only cross and pair Grams differ from `J_0=H_{M'} circ H_{M''}` by at most `96 omega` and `192 omega+2 beta_perp`; every held pair Gram has eigenvalue at least `31/32`. | Establishes the ordinary inverse branch for all first-sweep solves. |
| `unit_003` | proposition | For an ordinary active solve with held direction pair `A,B`, the exact coefficient matrix is `Z_M=diag(lambda) C_{AB}J_{AB}^{-1}R^{-2}D_lambda^{-2}`, and its normalized coefficient discrepancy is bounded by `3000(omega+beta_perp)` before carried held-output effects. | Converts the Gram ledger into a mode-update error without hiding weight imbalance. |
| `unit_004` | lemma | In chronological `U,V,W` order, target-span held-output effects enter with gain at most `1/8`; after canonical column normalization and one product-one rebalance, the envelopes are `3072 eta`, `3456 eta`, and `3888 eta`, where `eta=omega+beta_perp`. | Controls the sequential first-sweep quotient state and the common product register. |
| `unit_005` | proposition | The exact unfolding and Moore--Penrose block identity make every active output a column of `range(G_M)` and make the zero-padded rank-`k` update identical to the active rank-`r` update. | Proves exact zero-padding equivalence and `N_U^+=N_V^+=N_W^+=0`. |
| `unit_006` | claim | The preceding units package `E_pair_entry` and `E_parallel_entry`; the orthogonal equal-weight stationary specialization has zero contamination and zero first-sweep error. | Closes the target interface and the baseline-reduction obligation. |

Atomic step = no.  The collective Gram identity, inverse branch, coefficient
transfer, chronological recurrence, and exact range/zero-padding identity are
independent nontrivial claims.

## Cited Result Applications

### Accepted realized-geometry result

The accepted `step_001` result (Proposition~\ref{prop:step-001-smoothed-event})
states, in the current setting notation, that the realized matrices
`G_U=U,G_V=V,G_W=W` have unit columns, every mode Gram
`H_M=G_M^TG_M` has induced off-diagonal row and column mass at most `q_*`,
and every direction-only cyclic pair Gram
`J_0=H_{M'} circ H_{M''}` has

\[
 \lambda_{\min}(J_0)\ge 1-q_*^2.                         \tag{1}
\]

It also supplies `Gamma<=1.01` and positive realized weights.  These are
derived fields of `E_sm`, not assumptions on a generic pair of directions.

### Accepted selected-entry result

The accepted `step_007` result (Lemma~\ref{lem:step-007-projector} and
Lemma~\ref{lem:step-007-quotient}) states, for the actual selected stored
representatives and after the proof-only sign/permutation convention,

\[
 \bar P_M=G_MB_M+N_M,
 \quad G_M^TN_M=0,
 \quad \|B_M-I\|_{\rm row,1}\le7\omega,
 \quad \|B_M-I\|_{\rm col,1}\le33\omega,              \tag{2}
\]

and `max_j ||N_M(:,j)||_2 <= tau_r`.  The same result gives
`|alpha_j|<=128 omega` for the common equal-norm amplitude factor
`R=diag(1+alpha_j)`.  The bars preserve each literal initialized rank-one
term, so using them in the normal-equation calculation does not change the
algorithmic tensor.

### Elementary finite-dimensional identities

For compatible matrices, the following identities are checked directly in
the current notation and are used below:

\[
 (A\odot B)^T(C\odot D)=(A^TC)\circ(B^TD),                \tag{3}
\]

\[
 \|X\circ Y\|_{\rm row,1}
 \le \|X\|_{\rm row,1}\max_{ij}|Y_{ij}|,
 \qquad
 \|X\circ Y\|_{\rm col,1}
 \le \|X\|_{\rm col,1}\max_{ij}|Y_{ij}|,                \tag{4}
\]

and, whenever `A` and `A+Delta` are invertible,

\[
 (A+\Delta)^{-1}-A^{-1}
 =-A^{-1}\Delta(A+\Delta)^{-1}.                          \tag{5}
\]

If `K_a` is an active `n^2 x r` design and `K_k=[K_a,0]`, then

\[
 K_k^TK_k=\operatorname{diag}(K_a^TK_a,0),qquad
 (K_k^TK_k)^\dagger
 =\operatorname{diag}((K_a^TK_a)^{-1},0)                \tag{6}
\]

whenever `K_a^T K_a` is invertible.  Equation (6) is the exact
Moore--Penrose block identity used for the frozen zero columns.

## Local Derivation

### unit_001: lemma

**Lemma (collective perpendicular pair-Gram identity).**
\label{lem:step-007b-perp}

Under `E_sm` and the accepted `step_007` decomposition (2), define

\[
 H_M:=G_M^TG_M,
 \quad C_M:=B_M-I,
 \quad F_M:=N_M^TN_M,
 \quad H_M^{\rm par}:=B_M^TH_MB_M,
 \quad \|A\|_{rc}:=\max\{\|A\|_{\rm row,1},\|A\|_{\rm col,1}\}.
\]

Then

\[
 \bar P_M^T\bar P_M=H_M^{\rm par}+F_M,                         \tag{7}
\]

and, for every held pair `(M',M'')`, the part of its direction-only pair
Gram containing at least one perpendicular factor is

\[
 J_{\perp}:=H_{M'}^{\rm par}\circ F_{M''}
       +F_{M'}\circ H_{M''}^{\rm par}
       +F_{M'}\circ F_{M''}.                                 \tag{8}
\]

It obeys

\[
 \|J_{\perp}\|_{rc}\le
 \beta_{\perp}:=2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4.       \tag{9}
\]

**Proof / justification.**

The cross terms between `G_MB_M` and `N_M` vanish because `G_M^TN_M=0`,
which proves (7).  From (2), `||H_M||_{rc}<=1+q_*` and
`||B_M||_{rc}<=1+48 omega`; hence

\[
 \|H_M^{\rm par}\|_{rc}
 \le(1+q_*)(1+48\omega)^2.                              \tag{10}
\]

Every entry of `F_M` is an inner product of two columns of `N_M`, so
`max_{ij}|F_M(i,j)|<=tau_r^2`.  Applying (4) to each of the first two
terms in (8) and noting that every row or column of `F_{M'}\circ F_{M''}`
has at most `r` entries gives (9).  This is the point at which the coherent
shared-perpendicular contribution `r tau_r^4` is retained; replacing `F_M`
by a per-column scalar would lose precisely this term.

The numerical definition `tau_r=q_*^2/(10^4 r)` gives, for `r>=3`,

\[
 \beta_{\perp}
 \le {3q_*^4\over10^8r^2}+{q_*^8\over10^{16}r^3}
 <10^{-8}\,\omega,qquad
 \omega:=q_*^2+r\tau_r.                                  \tag{11}
\]

All quantities in (7)--(11) are evaluated at the selected stored state;
no arbitrary tube point is being assumed.

### unit_002: proposition

**Proposition (cross/pair deviations and the ordinary inverse branch).**
\label{prop:step-007b-pair-floor}

Under `E_sm` and the accepted `step_007` decomposition, for a held pair
`A=M'`, `B=M''`, define

\[
 J_0:=H_A\circ H_B,
 \qquad C_{AB}:=(H_AB_A)\circ(H_BB_B),                    \tag{12}
\]

\[
 J_{AB}:=(H_A^{\rm par}+F_A)\circ
          (H_B^{\rm par}+F_B),
 \quad \Delta_c:=C_{AB}-J_0,
 \quad \Delta_p:=J_{AB}-J_0.                              \tag{13}
\]

Then

\[
 \|\Delta_c\|_{rc}\le96\omega,qquad
 \|\Delta_p\|_{rc}\le192\omega+2\beta_{\perp}<1/512,   \tag{14}
\]

and `lambda_min(J_AB) >= 31/32`.  The same bounds, with no larger fresh
defect, hold at the second and third subupdates after the carried
target-span direction effects are accounted for as in Lemma~
\ref{lem:step-007b-sequential}.

**Proof / justification.**

Write `E_M=H_MC_M`.  The row and column bounds in (2) imply

\[
 \|E_M\|_{\rm row,1}\le(1+q_*)7\omega,qquad
 \|E_M\|_{\rm col,1}\le(1+q_*)33\omega.                 \tag{15}
\]

Expanding the first expression in (13) gives the exact identity

\[
 \Delta_c=E_A\circ H_B+H_A\circ E_B+E_A\circ E_B.       \tag{16}
\]

All entries of each `H_M` have absolute value at most one.  Equations
(4) and (15), using the row bounds for rows and the column bounds for
columns, give respectively

\[
 \|\Delta_c\|_{\rm row,1}<16\omega,qquad
 \|\Delta_c\|_{\rm col,1}<68\omega,                     \tag{17}
\]

where the product term is at most
`(1+q_*)^2(33 omega)^2<omega`.  Thus the first bound in (14) follows.

For the parallel part, direct expansion gives

\[
 H_M^{\rm par}-H_M=C_M^TH_M+H_MC_M+C_M^TH_MC_M.          \tag{18}
\]

Using (2), (15), and (4) (with the transpose exchanging the row and
column bounds) yields

\[
 \|H_M^{\rm par}-H_M\|_{rc}<64\omega.                   \tag{19}
\]

Expanding `J_AB-J_0` into the two parallel differences, their product, and
the three terms in (8), then using (4), (9), and (19), gives

\[
 \|\Delta_p\|_{rc}
 <128\omega+64^2\omega^2+\beta_{\perp}
 \le192\omega+2\beta_{\perp}.                           \tag{20}
\]

The numerical slack in (20) is intentional: it covers both row and column
orientations without identifying them.  Since `q_*^2<1/512` and (11)
holds, (14) and (1) imply

\[
 \lambda_{\min}(J_{AB})
 \ge \lambda_{\min}(J_0)-\|\Delta_p\|_2
 \ge1-q_*^2-(192\omega+2\beta_{\perp})>31/32.          \tag{21}
\]

The diagonal amplitude matrix used by the literal design is positive by
`|alpha_j|<=128 omega`; hence multiplying `J_AB` on both sides by that
diagonal matrix preserves nonsingularity.  The last sentence of the
proposition is proved after the carried-output estimate in Lemma~
\ref{lem:step-007b-sequential}; no future target-span membership is used in
(16)--(21).

### unit_003: proposition

**Proposition (exact active solve and coefficient resolvent).**
\label{prop:step-007b-resolvent}

Under the hypotheses of Proposition~\ref{prop:step-007b-pair-floor}, let
\[
 D:=D_{\lambda}:=\operatorname{diag}(\lambda_j^{1/3}),
 \qquad R:=\operatorname{diag}(1+\alpha_j),
 \qquad E:=D^2R^2.
\]

For a mode `M` with held pair `(A,B)`, the active design is
`K_{AB}=(\bar P_B\odot\bar P_A)E` and its exact least-squares output is

\[
 X_M^+=G_MZ_M,qquad
 Z_M=\operatorname{diag}(\lambda),C_{AB}J_{AB}^{-1}R^{-2}D^{-2}.  \tag{22}
\]

If the held pair has only the fresh entry defects in (14), then

\[
 \|D^{-1}Z_M-I\|_{rc}
 \le8\Gamma^2(\|\Delta_c\|_{rc}+\|\Delta_p\|_{rc})
       +4\|\alpha\|_\infty
 <3000(\omega+\beta_{\perp}).                           \tag{23}
\]

**Proof / justification.**

The Khatri--Rao identity (3) gives

\[
 K_{AB}^TK_{AB}=EJ_{AB}E,
 \qquad
 T_{(M)}K_{AB}=G_M\operatorname{diag}(\lambda)C_{AB}E.     \tag{24}
\]

The inverse floor (21) makes the active solve ordinary, and (24) gives
(22) by cancellation of the two diagonal `E` factors.  In particular, the
output is already in `range(G_M)`; no projection has been inserted.

For the quantitative part, define the diagonal similarity
`S_D(A)=D^2AD^{-2}`.  Since
`max_i D_{ii}/min_i D_{ii}=Gamma^(1/3)`,

\[
 \|S_D(A)\|_{rc}\le\Gamma^{2/3}\|A\|_{rc}le\Gamma^2\|A\|_{rc}.  \tag{25}
\]

From `C_AB=J_0+Delta_c`, `J_AB=J_0+Delta_p`,

\[
 C_{AB}J_{AB}^{-1}-I
   =(\Delta_c-\Delta_p)J_{AB}^{-1},qquad
 \|J_{AB}^{-1}\|_2\le32/31<2.                           \tag{26}
\]

Moreover `|alpha_j|<1/2`, so
`||R^{-2}||_infty<2` and `||R^{-2}-I||_infty<=4||alpha||_infty`.
Using

\[
 D^{-1}Z_M
 =S_D(C_{AB}J_{AB}^{-1}R^{-2}),                     \tag{27}
\]

split the right-hand side into the term with `R^{-2}` and the diagonal
term `R^{-2}-I`.  The first term is bounded by (25)--(26), and the second
term is diagonal so its similarity norm is unchanged.  This gives the first
inequality in (23).  Substituting (14), `Gamma<=1.01`, and
`||alpha||_infty<=128 omega` gives

\[
 8(1.01)^2(288\omega+2\beta_{\perp})+512\omega
 <3000(\omega+\beta_{\perp}),                           \tag{28}
\]

 which proves (23).  The estimate is relative to the target coefficient
 matrix and therefore does not introduce a factor depending on the absolute
 weight scale.  Since `3000 eta<1/2`, every diagonal entry of `D^{-1}Z_M`
 is positive; hence every active output column is nonzero and remains in the
 same positive proof chart.

### unit_004: lemma

**Lemma (chronological held-output recurrence and canonical rebalance).**
\label{lem:step-007b-sequential}

Under `E_sm`, `E_best`, `E_quotient`, and the conclusions of
Propositions~\ref{prop:step-007b-pair-floor}--
\ref{prop:step-007b-resolvent}, set
`eta=omega+beta_perp`.  Perform the literal cyclic solves in order `U,V,W`
and, after each solve, represent the new columns by their positive unit
directions; perform the product-one equal-norm rebalance after the completed
sweep.  If `e_U,e_V,e_W` denote the corresponding direction/product
quotient envelopes, then

\[
 e_U\le3072\eta,qquad
 e_V\le3072\eta+{e_U\over8},qquad
 e_W\le3072\eta+{e_U+e_V\over8}.                         \tag{29}
\]

Consequently,

\[
 e_U\le3072\eta,qquad e_V\le3456\eta,qquad
 e_W\le3888\eta.                                        \tag{30}
\]

The common represented-product field is updated only by the current solve;
the previous two historical product values are not accumulated.

**Proof / justification.**

We first isolate the only effect of a carried target-span output.  Let
`G_A(I+E_A)` be a unit-direction held matrix produced by an earlier solve,
with its diagonal component absorbed into the product-one gauge.  In the
cross-minus-pair expression in (26), the terms linear in a diagonal
component of `E_A` occur identically in `C_AB` and `J_AB` and cancel.  For
the remaining off-diagonal component, expand the two Hadamard products as in
(16) and (18).  Every linear term contains an off-diagonal entry of the
other realized Gram and every quadratic term contains either that entry or a
previously bounded chart defect.  Equations (4), (15), and the unit-column
normalization therefore give the explicit held-input estimate

\[
 \|\mathcal T_{M|A,B}(E_A)-\mathcal T_{M|A,B}(0)\|_{rc}
 \le(q_*+4e_{\max})\|E_A\|_{rc},qquad
 e_{\max}:=4096\eta.                                    \tag{31}
\]

Here `T_{M|A,B}` denotes the left side of (27) after the diagonal target
coefficient and the current common product have been removed.  To make the
constant visible, the row estimate in (31) is obtained by summing the
off-diagonal entries of `H_A` and `H_B`, and the column estimate by the
transposed sum; the two quadratic terms are bounded by
`2(48 omega+e_max)||E_A||_rc`.  Since

The displayed coefficient is a conservative shorthand for the direct
factor `4{q_*+4(48 omega+e_max)}`: the two inverse/resolvent factors and the
amplitude factor are each bounded by two, and this expanded factor is still
strictly below `1/8` for the numerical values of `q_*`, `omega`, and
`e_max=4096 eta`.  Thus the stated gain does not rely on an unproved basin
condition.

\[
 q_*+4e_{\max}<1/8,                                    \tag{32}
\]

the carried output has gain at most `1/8`.  This calculation is a local
normal-equation expansion; it does not assume a future basin or target-span
invariance.  The diagonal cancellation is exactly why a raw per-mode
amplitude error is not added as a fourth persistent field.

At the first `U` solve both held modes are the accepted selected entry, so
Proposition~\ref{prop:step-007b-resolvent} gives the first inequality in
(29).  After this solve, `F_U=0` by the exact range argument of
Proposition~\ref{prop:step-007b-range}; the remaining `F_W` terms are no
larger than the fresh beta ledger in (9).  Applying (31) to the carried U
output gives the second inequality.  After the `V` solve, both `F_U` and
`F_V` vanish, and applying (31) to the two carried outputs gives the third
inequality.  Thus the unknown-sign perpendicular fields are charged during
one finite sweep and cannot recur after their mode has been solved.

For completeness, the column-normalization and final equal-norm balance used
in these three estimates are algebraic.  If `D^{-1}Z=I+E` with
`||E||_rc<=3888 eta<1/256`, then each column norm is positive; expanding
`||G_MZ(:,j)||_2^2` with `G_M^TG_M=H_M` and using the unit-column identity
shows that the diagonal correction is absorbed by the product coordinate and
that the direction-coordinate change is at most
`(1+8q_*+32 e_max)||E||_rc`.  The product-one cube-root/log inequalities
`|log(1+x)|<=2|x|` and `|(1+x)^(1/3)-1|<=2|x|` apply because
`e_max<1/256`.  With the displayed values of `q_*` and `eta`, this factor is
strictly below `4096/3888`; rounding the three stages upward gives exactly
(29)--(30).  The balance preserves every represented rank-one product, so
it changes only the quotient representative.

Numerically, the unnormalized substitution in (28) is below `3000 eta`;
the first `3072 eta` entry in (29) includes the strictly smaller than
`1.01` normalization/rebalance factor.  The subsequent `3456` and `3888`
roundings include the same factor after the carried `1/8` terms.

### unit_005: proposition

**Proposition (exact range containment and zero-padding equivalence).**
\label{prop:step-007b-range}

Under the inverse floors of Proposition~\ref{prop:step-007b-pair-floor},
the exact unfolding identity for the realized tensor is

\[
 T_{(M)}=G_M\operatorname{diag}(\lambda)
       (G_{M''}\odot G_{M'})^T.                            \tag{33}
\]

Therefore each nonsingular active cyclic update is exactly `G_M Z_M` and
has no perpendicular component.  With the inactive columns set to zero,
the full rank-`k` update is exactly the active rank-`r` update followed by
zero padding.  In particular, after the literal first sweep,

\[
 N_U^+=0,qquad N_V^+=0,qquad N_W^+=0.                    \tag{34}
\]

**Proof / justification.**

Equation (33) is the direct mode-unfolding of
`T=sum_j lambda_j g_{Uj} otimes g_{Vj} otimes g_{Wj}`.  Multiplication by
any active design and its ordinary inverse leaves the left factor `G_M`,
which proves range containment for each mode in the literal order.  The first
U output consequently has `N_U^+=0`; the V output has `N_V^+=0`, regardless
of the one remaining W perpendicular field; and the W output has `N_W^+=0`.

For the zero-padded procedure, write the full held design as
`K_k=[K_a,0]`.  Equation (6) gives the block Gram and its pseudoinverse, and
`T_(M)K_k=[T_(M)K_a,0]`.  Thus the full update is `[X_M^+,0]`, exactly the
active update with the prescribed inactive columns unchanged.  No singular
active branch is invoked: (21) proves the active Gram is positive definite
before this identity is used.

### unit_006: claim

**Claim (entry interfaces and baseline).**
\label{claim:step-007b-entry}

Under the preceding local results, define `E_pair_entry` to be the event-like
derived output consisting of (9), (14), and the three `31/32` inverse floors.
Define `E_parallel_entry` to consist of (30), (34), and the canonically
rebalanced completed state `e^1`.  Then

\[
 \|e^1\|_Q\le4096(\omega+\beta_{\perp})
 <{\rho_{\rm ALS}\over3},qquad \rho_{\rm ALS}=1/1024.   \tag{35}
\]

At the deterministic orthogonal equal-weight stationary specialization,
`H_M=I`, `Gamma=1`, `B_M=I`, `N_M=0`, `F_M=0`, and every first-sweep solve
is stationary with `e^1=0`.  A finite orthogonal certificate transient is
not assigned zero perpendicular error before its actual first sweep.

**Proof / justification.**

Equations (9), (14), (21), (30), and (34) are exactly the public fields
listed in the two definitions.  Since `beta_perp<10^{-8}omega` and
`omega=q_*^2(1+10^{-4})<6.0\cdot10^{-8}`,

\[
 4096(\omega+\beta_{\perp})<2.46\cdot10^{-4}
 <1/3072=\rho_{\rm ALS}/3.                              \tag{36}
\]

The quotient norm in (35) is the setting's direction-plus-common-product
norm after the final product-one balance; the literal tensor and all inactive
zero columns are unchanged by that balance and by the proof-only notation.
At the orthogonal stationary point all displayed identities reduce to the
identity pair Gram and `Z_M=D`, so the first sweep and its quotient register
are exactly zero.  This proves the baseline statement without extending the
positive-smoothing probability domain to `rho=0`.

## Target-Step Assembly

Lemma~\ref{lem:step-007b-perp} starts from the actual accepted selected
representatives and proves the exact identity

\[
 \bar P_M^T\bar P_M=H_M^{\rm par}+F_M,
 \qquad
 \|J_{\perp}\|_{rc}\le
 2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4.                 \tag{37}
\]

Proposition~\ref{prop:step-007b-pair-floor} compares the exact held cross and
pair Grams with the same realized target pair Gram `J_0`, retaining the
amplitude-free `96 omega` and `192 omega+2 beta_perp` defects and proving the
`31/32` floor before any inverse is used.  Proposition~
\ref{prop:step-007b-resolvent} then computes the literal active normal
equation and transfers these defects to the target-relative coefficient,
including the explicit `Gamma` and `alpha` factors.  Lemma~
\ref{lem:step-007b-sequential} composes the three actual held-input solves in
the prescribed order, with the carried-output gain `1/8`, the common product
coordinate overwritten at each stage, and the final bounds
`3072 eta`, `3456 eta`, and `3888 eta`.  Proposition~
\ref{prop:step-007b-range} proves that the outputs are exact unfolding-range
vectors and that the rank-`k` Moore--Penrose update is the active rank-`r`
update plus frozen zeros.  Claim~\ref{claim:step-007b-entry} packages these
facts as `E_pair_entry` and `E_parallel_entry` and gives (35), which is the
exact sketch-row conclusion.

No target-span membership is used to establish the first U solve: the only
inputs there are the accepted decomposition, the realized pair floor, and the
explicit `F_M` ledger.  Target-span membership is a generated consequence of
(33)--(34), so the downstream invariant-tube proof can consume it without a
dependency cycle.

## Explicit Rate Audit

- Exposed variables: `r`, `q_*`, `tau_r`, `omega`, `beta_perp`, `Gamma`, the
  realized pair Gram, the selected coefficient row/column masses, and the
  one-sweep quotient norm.
- Hidden constants may depend on: universal finite-dimensional algebraic
  constants and the fixed numerical values `q_*` and `rho_ALS` only.
- Hidden constants may not depend on: `n`, `k`, `kappa_0`, `rho`, the
  deterministic base triple, either confidence parameter, `epsilon`, a target
  label, or a generated condition number.
- Fixed quantities: `tau_r=q_*^2/(10^4 r)`,
  `omega=q_*^2+r tau_r`, and `rho_ALS=1/1024`.
- Probability mode: deterministic conditional on the accepted `E_sm`,
  `E_best`, and `E_quotient` chain; this step adds no probability loss.
- Horizon mode: exactly one literal cyclic U/V/W sweep; the `r tau_r^4`
  charge is not accumulated over later sweeps because (34) is exact.
- Norm mode: induced row/column l1 Gram norms, Euclidean perpendicular
  columns, target-relative coefficient norms, and the setting quotient `d_Q`.
- Admissibility conditions and auxiliary tolerances: `r>=3`, the accepted
  `q_real<=q_*`, `Gamma<=1.01`, and the setting-defined `tau_r`; no generated
  basin or stability condition is assumed.
- Term absorption: (11), (14), (21), (28), (31)--(32), and (36) display all
  uses of `tau_r`, `beta_perp`, `omega`, `Gamma`, and the inverse floor.
- Probability conversion: none; all probability-bearing work is upstream.
- Contribution to the rate specialization bridge: supplies exact-span entry
  in one sweep with `||e^1||_Q<rho_ALS/3`, independent of `kappa_0`; runtime
  arithmetic for the literal factors remains exposed to later steps.
- Baseline reduction: at the deterministic orthogonal equal-weight
  stationary representative, all defects, perpendicular fields, and the
  common product register are exactly zero.  Finite certificate transients
  retain their explicit `tau_r` charge.

## Blockers

None.

## Notation And Assumption Notes

- `H_M`, `B_M`, `C_M`, `N_M`, and `F_M` are exact current-branch objects;
  `F_M=N_M^TN_M` is proof-local but is retained until the corresponding mode
  solve.  `J_0`, `C_AB`, `J_AB`, `Delta_c`, and `Delta_p` are appendix-local
  direction-only Gram objects.  `E_pair_entry` and `E_parallel_entry` are the
  only public-facing outputs.
- `D_lambda`, `R`, and `E=D_lambda^2R^2` are setting-derived diagonal
  amplitude factors.  `alpha_j` is the accepted `step_007` common
  represented-product amplitude error; it is not a new per-mode state.
- `omega`, `beta_perp`, and `eta` are proof-local constants explicitly
  defined in (11), (9), and Lemma~\ref{lem:step-007b-sequential}.  Their
  provenance is respectively the setting definition of `tau_r` and the
  named local bounds (9), (29).
- The `1/8` held-output gain is proved by the local off-diagonal Hadamard
  expansion (31); it is not a generated local-validity assumption.  The
  exact range statement (33)--(34) is likewise proved here, not imported as
  target-span membership.
- The common product coordinate is overwritten at each literal subupdate in
  the proof-only representation; no historical `s_U` or `s_V` is exported
  from this step.
- `global_proof.md` and its paired `global_proof_review.md` were inspected
  only for planning context; the review is accepted.  The diagnostic idea
  used here was to retain the collective `F_M` field and charge the coherent
  `r tau_r^4` term before exact unfolding-range entry.  Neither global file
  is used as evidence, a cited result, an assumption source, or authority to
  change the target claim.
- The orthogonal `rho=0` statement is an algebraic deterministic
  specialization only; it does not replace the positive-smoothing primitive
  domain.
