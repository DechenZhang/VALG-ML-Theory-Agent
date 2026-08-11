# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted step_001 proof/review SHA-256: 467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207 / da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c
- Accepted step_008 proof/review SHA-256: 66f86d6502be0f36ee604c298272af92f3baa210120efb356a45da05fe3032d1 / 2cd27659b43be48576665774753c34efa67f2e968c176350867670d90de87b21

## Target Step Claim

The accepted sketch row is:

> Before any landing solve, derive simultaneously for every
> \(M\in\{U,V,W\}\) the
> \(\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,\eta_{QJ},\eta_A\)
> bounds in both induced orientations. Prove the pair-Gram floor and the two
> induced-norm inverse reserves, the positive diagonal scale congruence for
> the full frozen design, and the positive output-normalizer reserve.

The step consumes only the accepted static realized-geometry interface
E_sm from step_001 and the accepted balanced seed interface E_seed from
step_008. It emits E_land_pre simultaneously for all three modes. No landing
output, predecessor comparator, cyclic state, or generated basin is used.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- assump:subquadratic-rank, used only for \(r\ge 3\) and for the prescribed
  \(\tau_r=q_*^2/(10^4r)\). No realized event is treated as primitive.

Derived invariants supplied by accepted dependencies:

- E_sm (accepted step_001 proof/review above) supplies unit-column realized
  factors \(G_M\in\{U,V,W\}\),
  \[
  H_M:=G_M^\top G_M,\qquad
  \|H_M-I\|_{\rm row,1}\vee\|H_M-I\|_{\rm col,1}
  \le q:=q_{\rm real}\le q_*,
  \qquad \Gamma\le1.01.
  \]
  Thus every \(H_M\) has unit diagonal and induced row/column norm at most
  \(1+q_*\).
- E_seed (accepted step_008 proof/review above) supplies, in the same
  proof-only target permutation and product-one sign chart,
  \[
  P_M^0=G_M(I+C_M^0)+N_M^0,\qquad G_M^\top N_M^0=0,
  \]
  \[
  \|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}
  \le c_0:=48\omega,\qquad
  \max_j\|N_M^0(:,j)\|_2\le\tau_r,
  \]
  together with \(D_M^0=D_\lambda^{1/3}E^0\),
  \(E^0=\operatorname{diag}(e^{s_j^0/3})\), and
  \(\|s^0\|_\infty\le128\omega\). The columns of \(P_M^0\) are unit vectors.

Local conditional hypotheses: none. The conjunction over the three modes is
proved below; it is not an additional acceptance test or setting assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_000 | claim | Under assump:subquadratic-rank, the setting definitions, and the accepted E_sm bound \(\Gamma\le1.01\), the fixed budgets obey \(\eta_J<10^{-6}\), \(\eta_J\le1/64\), and \(\Gamma\eta_A\le128\omega<1/64\). | Numerical slack needed before Neumann inversion and normalizer positivity. |
| unit_001 | lemma | Under E_sm and E_seed, the frozen seed expansions give the prescribed \(\delta_L,\delta_F,\delta_{FL}\) bounds in both induced orientations. | Raw pair/cross-Gram controls. |
| unit_002 | proposition | Under unit_000 and unit_001, the normalized pair Grams satisfy the prescribed \(\eta_J,\eta_{QJ}\) bounds and both Neumann inverse reserves. | Positive normalized pair-Gram interface. |
| unit_003 | lemma | Under unit_002 and E_seed, the actual frozen design Gram is the positive diagonal congruence \(D_{-M}^0J_M^0D_{-M}^0\), and the three Moore--Penrose solves equal the stated ordinary-inverse coefficient formula. | Full-design positivity and pre-solve coefficient identity. |
| unit_004 | proposition | Under unit_000, unit_002, and unit_003, the scale-conjugated coefficient error is at most \(\Gamma\eta_A\), and every output normalizer obeys the two-sided positive reserve; \(\Gamma\eta_A\le128\omega<1/64\). | Complete E_land_pre export for all three modes. |

## Cited Result Applications

1. **Accepted static geometry (step_001).** In current notation, the
   accepted result states \(q\le q_*\), \(\Gamma\le1.01\), and the displayed
   induced row/column Gram bounds for every realized \(G_M\). These are
   discharged by the hash-pinned step_001 artifact and are used only as
   derived controls.

2. **Accepted balanced seed (step_008).** In current notation, the accepted
   result states the decomposition, orthogonality, \(48\omega\) row/column
   fields, \(\tau_r\) perpendicular-column bound, unit normalized columns,
   and \(D_M^0=D_\lambda^{1/3}E^0\). These are discharged by the hash-pinned
   step_008 artifact; no landing object is imported.

3. **Elementary current-notation tools.** For induced \(\nu\)-norms with
   \(\nu\in\{{\rm row},{\rm col}\}\),
   \(\|AB\|_\nu\le\|A\|_\nu\|B\|_\nu\) and
   \(\|A\circ B\|_\nu\le\|A\|_\nu\|B\|_{\max}\). If
   \(\|E\|_\nu<1\), the Neumann identity
   \((I+E)^{-1}=\sum_{m\ge0}(-E)^m\) holds in that induced norm. These
   finite-dimensional inequalities are stated in current notation and their
   hypotheses are checked below.

No paper theorem or generated reserve is cited as evidence for this step.

## Local Derivation

For each \(M\in\{U,V,W\}\), let \(M',M''\) denote the other two modes in
the order used by the setting's frozen Khatri--Rao design, and define
\[
 H_M:=G_M^\top G_M,\qquad
 L_M:=G_M^\top P_M^0,\qquad
 F_M:=(P_M^0)^\top P_M^0.
\]
The setting-derived budgets are
\[
\delta_L=(1+q_*)c_0,\qquad
\delta_F=2(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,
\]
\[
\delta_{FL}=(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2,\qquad
\alpha_0=q_*+\delta_F,
\]
\[
\eta_J=\alpha_0^2,\qquad
\eta_{QJ}=2\delta_{FL}+\delta_L^2+\delta_F^2,\qquad
\eta_A=\frac{\eta_{QJ}}{1-\eta_J}.
\]

### unit_000: claim

**Claim (fixed numerical slack; label claim:step-009-numerical-slack).**
Under assump:subquadratic-rank and the accepted E_sm bound
\(\Gamma\le1.01\), with \(q_*=1/4096\) and
\(\tau_r=q_*^2/(10^4r)\), the setting-defined budgets satisfy
\[
c_0<49q_*^2,\quad \delta_L<50q_*^2,\quad
\delta_F<101q_*^2,\quad \delta_{FL}<51q_*^2, \tag{N1}
\]
\[
\eta_J<1.051q_*^2<10^{-6},\qquad
\eta_{QJ}<103q_*^2,\qquad
\eta_A<104q_*^2, \tag{N2}
\]
and, using the accepted \(\Gamma\le1.01\),
\[
\eta_J\le\frac1{64},\qquad
\Gamma\eta_A\le128\omega<\frac1{64}. \tag{N3}
\]

**Proof / justification.** Since
\(\omega=(1+10^{-4})q_*^2\),
\[
c_0=48(1+10^{-4})q_*^2<49q_*^2.
\]
Also \(r\tau_r^2=q_*^4/(10^8r)\le q_*^4\) because \(r\ge3\). Therefore
\[
\delta_L<50q_*^2,\qquad
\delta_F<100q_*^2+4803q_*^4<101q_*^2,
\]
\[
\delta_{FL}<50q_*^2+4803q_*^4<51q_*^2,
\]
where \(4803q_*^2<1\). Consequently
\(\alpha_0<q_*(1+101/4096)<1.025q_*\), so
\(\eta_J<1.051q_*^2<10^{-6}\). Further,
\[
\eta_{QJ}<2(51q_*^2)+50^2q_*^4+101^2q_*^4
<103q_*^2.
\]
Thus \(1/(1-\eta_J)<1.000002\), giving
\(\eta_A<104q_*^2\). Finally,
\[
\Gamma\eta_A<1.01\cdot104q_*^2
<128(1+10^{-4})q_*^2=128\omega<1/64.
\]
This proves (N1)--(N3). \(\square\)

### unit_001: lemma

**Lemma (two-orientation frozen Gram expansion; label
lem:step-009-raw-expansion).** Under the accepted derived interfaces E_sm
and E_seed, for every mode \(M\),
\[
\|L_M-H_M\|_{\rm row,1}\vee\|L_M-H_M\|_{\rm col,1}\le\delta_L, \tag{1}
\]
\[
\|F_M-H_M\|_{\rm row,1}\vee\|F_M-H_M\|_{\rm col,1}\le\delta_F, \tag{2}
\]
\[
\|F_M-L_M\|_{\rm row,1}\vee\|F_M-L_M\|_{\rm col,1}\le\delta_{FL}. \tag{3}
\]

**Proof / justification.**

The geometry event gives
\(\|H_M\|_{\rm row,1}\vee\|H_M\|_{\rm col,1}\le1+q_*\). From the seed
decomposition and \(G_M^\top N_M^0=0\),
\[
L_M=H_M(I+C_M^0),
\]
so \(L_M-H_M=H_MC_M^0\). Submultiplicativity in each orientation gives
(1).

Expanding the full seed Gram, with the two cross terms involving \(N_M^0\)
vanishing by \(G_M^\top N_M^0=0\), gives
\[
F_M-H_M=(C_M^0)^\top H_M+H_MC_M^0
 +(C_M^0)^\top H_MC_M^0+(N_M^0)^\top N_M^0. \tag{4}
\]
For every pair \(i,j\),
\(\left|((N_M^0)^\top N_M^0)_{ij}\right|\le\tau_r^2\), hence each induced row and
column sum is at most \(r\tau_r^2\). Applying the induced-norm product
inequality to (4), and using that transpose exchanges row and column norms,
proves (2).

Subtracting \(L_M=H_M(I+C_M^0)\) from \(F_M\) instead yields
\[
F_M-L_M=(C_M^0)^\top H_M(I+C_M^0)+(N_M^0)^\top N_M^0. \tag{5}
\]
The same two-orientation calculation proves (3). All bounds use the fixed
upper value \(q_*\), so the result is simultaneous over \(M=U,V,W\).
\(\square\)

### unit_002: proposition

**Proposition (normalized pair-Gram and direct Q-J reserves; label
prop:step-009-pair-reserves).** Under Claim~\ref{claim:step-009-numerical-slack}
and the conclusion of Lemma~\ref{lem:step-009-raw-expansion}, define
\[
J_M^0:=F_{M'}\circ F_{M''},\qquad
Q_M^0:=L_{M'}\circ L_{M''}.
\]
Then, in both induced orientations,
\[
\|F_M-I\|_{\rm row,1}\vee\|F_M-I\|_{\rm col,1}\le\alpha_0, \tag{6}
\]
\[
\|J_M^0-I\|_{\rm row,1}\vee\|J_M^0-I\|_{\rm col,1}\le\eta_J, \tag{7}
\]
\[
\|Q_M^0-J_M^0\|_{\rm row,1}\vee\|Q_M^0-J_M^0\|_{\rm col,1}
\le\eta_{QJ}. \tag{8}
\]
Moreover, \(\eta_J\le1/64\) and
\[
\lambda_{\min}(J_M^0)\ge1-\eta_J,\qquad
\|(J_M^0)^{-1}\|_{\rm row,1}\vee\|(J_M^0)^{-1}\|_{\rm col,1}
\le\frac1{1-\eta_J}, \tag{9}
\]
\[
\|(J_M^0)^{-1}-I\|_{\rm row,1}\vee\|(J_M^0)^{-1}-I\|_{\rm col,1}
\le\frac{\eta_J}{1-\eta_J}. \tag{10}
\]

**Proof / justification.**

Because \(P_M^0\) and \(G_M\) have unit columns, every entry of \(F_M\),
\(L_M\), and \(H_M\) has absolute value at most one. In particular the
diagonal of \(F_M\) is one. Set \(E_M:=F_M-I\). Equation (2) and
\(\|H_M-I\|_\nu\le q_*\) give (6), and \(E_M\) has zero diagonal. Therefore
\[
J_M^0=(I+E_{M'})\circ(I+E_{M''})
      =I+E_{M'}\circ E_{M''}. \tag{11}
\]
For either \(\nu={\rm row}\) or \(\nu={\rm col}\),
\[
\|E_{M'}\circ E_{M''}\|_\nu
\le\|E_{M'}\|_\nu\|E_{M''}\|_\nu
\le\alpha_0^2,
\]
which proves (7).

For the direct paired cancellation, use the exact identity
\[
Q_M^0-J_M^0
 =(L_{M'}-F_{M'})\circ L_{M''}
  +F_{M'}\circ(L_{M''}-F_{M''}). \tag{12}
\]
The unit-column observation gives
\(\|L_{M''}\|_{\max}\vee\|F_{M'}\|_{\max}\le1\). Thus (3) and the
Hadamard bound yield the stronger estimate
\[
\|Q_M^0-J_M^0\|_\nu\le2\delta_{FL}
\le2\delta_{FL}+\delta_L^2+\delta_F^2=\eta_{QJ},
\]
proving (8) without inverting either pair. The two nonnegative square terms
are retained because they are part of the binding reserve definition.

Claim~\ref{claim:step-009-numerical-slack} gives \(\eta_J<1\), so the
Neumann series for \(J_M^0=I+(J_M^0-I)\) converges in each induced norm and
gives (9)--(10).
The Schur-product/Khatri--Rao identity says that \(J_M^0\) is the Gram
matrix of the columnwise Kronecker products
\(P_{M'}^0\odot P_{M''}^0\), so it is symmetric positive semidefinite.
Together with the row bound in (7) (or
\(\|J_M^0-I\|_2\le\eta_J\)), Gershgorin gives
\(\lambda_{\min}(J_M^0)\ge1-\eta_J\). \(\square\)

### unit_003: lemma

**Lemma (positive diagonal congruence and ordinary frozen solve; label
lem:step-009-congruence).** Under Proposition~\ref{prop:step-009-pair-reserves}
and the accepted scale identity in E_seed, let
\[
P_{-M}^0:=P_{M'}^0\odot P_{M''}^0,\qquad
K_{-M}:=G_{M'}\odot G_{M''},\qquad
D_{-M}^0:=D_{M'}^0D_{M''}^0.
\]
Then \(D_{-M}^0=D_\lambda^{2/3}(E^0)^2\succ0\) and
\[
(H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0. \tag{13}
\]
Consequently the Moore--Penrose frozen-input update is ordinary on this
event and, for every mode,
\[
\widetilde X_M=G_M\widetilde B_M,\qquad
\widetilde B_M=D_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1}. \tag{14}
\]

**Proof / justification.**

The scale identity from E_seed gives
\[
D_{-M}^0=(D_\lambda^{1/3}E^0)^2
=D_\lambda^{2/3}(E^0)^2,
\]
which is positive diagonal. Since
\(X_{M'}^0=P_{M'}^0D_{M'}^0\) and
\(X_{M''}^0=P_{M''}^0D_{M''}^0\), the frozen Khatri--Rao design in the
setting is
\[
H_M^0=P_{-M}^0D_{-M}^0.
\]
The Khatri--Rao Gram identity gives
\[
(P_{-M}^0)^\top P_{-M}^0
=F_{M'}\circ F_{M''}=J_M^0,
\]
proving (13). Proposition~\ref{prop:step-009-pair-reserves} makes both
factors on the right invertible, so the Moore--Penrose inverse equals the
ordinary inverse.

For completeness, the current unfolding identity is
\[
T_{(M)}=G_MD_\lambda K_{-M}^\top,\qquad
K_{-M}^\top P_{-M}^0=L_{M'}\circ L_{M''}=Q_M^0. \tag{15}
\]
Using (13) and the diagonal inverse gives
\[
\begin{aligned}
T_{(M)}H_M^0((H_M^0)^\top H_M^0)^{-1}
 &=G_MD_\lambda Q_M^0D_{-M}^0
   (D_{-M}^0)^{-1}(J_M^0)^{-1}(D_{-M}^0)^{-1}\\
 &=G_MD_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1},
\end{aligned}
\]
which is (14). This calculation is done for all three frozen inputs before
any output is committed. On a singular or otherwise off-event tape the
setting's Moore--Penrose rule remains the observable fallback; the ordinary
formula and quantitative reserves are asserted only on this generated
pre-solve event. \(\square\)

### unit_004: proposition

**Proposition (scale-conjugated coefficient and normalizer reserve; label
prop:step-009-normalizer).** Under Claim~\ref{claim:step-009-numerical-slack}
and Lemma~\ref{lem:step-009-congruence}, for
every mode define
\[
L_M^0:=D_\lambda(D_{-M}^0)^{-1}
       =D_\lambda^{1/3}(E^0)^{-2},\qquad
\ell_{M,j}^0:=(L_M^0)_{jj}
       =\lambda_j^{1/3}e^{-2s_j^0/3}>0,
\]
and
\[
\Xi_M:=D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1}.
\]
Then, in both induced orientations,
\[
\|\Xi_M-I\|_{\rm row,1}\vee\|\Xi_M-I\|_{\rm col,1}
\le\Gamma\eta_A\le128\omega<\frac1{64}. \tag{16}
\]
If \(\widetilde d_{M,j}:=\|G_M\widetilde B_M(:,j)\|_2\), then
\[
(1-\Gamma\eta_A)\ell_{M,j}^0
\le\widetilde d_{M,j}
\le(1+\Gamma\eta_A)\ell_{M,j}^0, \tag{17}
\]
so every output normalizer is strictly positive before the joint commit.

**Proof / justification.**

By Claim~\ref{claim:step-009-numerical-slack}, \(\eta_J\le1/64\) and
\(\Gamma\eta_A\le128\omega<1/64\); the explicit arithmetic is (N1)--(N3).

By (14), \(\widetilde B_M=\Xi_M L_M^0\). From (8)--(10),
\[
Q_M^0(J_M^0)^{-1}-I
=(Q_M^0-J_M^0)(J_M^0)^{-1},
\]
whose row and column norms are at most \(\eta_A\). Diagonal similarity
multiplies either induced norm by at most
\(\max_i\lambda_i/\min_i\lambda_i=\Gamma\), proving the first inequality
in (16).

For a fixed column \(j\), write \(\Xi_M(:,j)=e_j+v_j\). The column part of
(16) gives \(\|v_j\|_1\le\Gamma\eta_A\). Since every column of \(G_M\) has
norm one,
\[
\|G_M\Xi_M(:,j)-G_M(:,j)\|_2
\le\|v_j\|_1\le\Gamma\eta_A.
\]
The reverse and forward triangle inequalities give
\(1-\Gamma\eta_A\le\|G_M\Xi_M(:,j)\|_2
\le1+\Gamma\eta_A\). Multiplication by the positive
\(\ell_{M,j}^0\) proves (17). All three modes satisfy the same bounds in a
single pre-solve pass. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-009-raw-expansion} expands the exact frozen seed in the
target Gram/cross-Gram convention and supplies \(\delta_L,\delta_F,\delta_{FL}\)
in both orientations, including the shared perpendicular charge
\(r\tau_r^2\). Proposition~\ref{prop:step-009-pair-reserves} uses the zero
diagonal of \(F_M-I\) for the Hadamard cancellation in \(J_M^0\), and uses
the direct \(Q_M^0-J_M^0\) identity before either pair is inverted. Its
Neumann bounds and the numerical check establish the normalized pair floor
and both inverse reserves simultaneously for \(M=U,V,W\).

Lemma~\ref{lem:step-009-congruence} transfers those normalized reserves to the
actual frozen designs through the exact positive diagonal congruence
\((H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0\), and supplies the
ordinary-inverse coefficient formula for all three independent Moore--Penrose
calls. Finally, Proposition~\ref{prop:step-009-normalizer} controls the only
scale similarity by the generated \(\Gamma\le1.01\), proves
\(\Gamma\eta_A\le128\omega<1/64\), and gives strictly positive output
normalizers before any solve is committed. These four results are exactly
the generated interface E_land_pre, with no post-solve or predecessor input.

## Explicit Rate Audit

- Exposed variables: \(q_*=1/4096\), \(q=q_{\rm real}\le q_*\),
  \(\Gamma\le1.01\), \(r\), \(\tau_r=q_*^2/(10^4r)\),
  \(\omega=q_*^2+r\tau_r\), the realized \(\lambda_j\), and the seed fields
  \(C_M^0,N_M^0,s^0\).
- Hidden constants may depend only on the displayed universal numerical
  margins. They may not depend on \(n,\kappa_0,\rho,\epsilon\), either
  confidence parameter, a target label, a generated condition number, or any
  landing output.
- Fixed quantities: the once-drawn realized tensor and the one frozen seed;
  all three mode records are formed once before any solve.
- Probability mode: deterministic conditional on the accepted derived events
  E_sm and E_seed; this step performs no new probability conversion.
- Horizon mode: one simultaneous finite pre-solve pass, with no iterative or
  chronological accumulation and no predecessor comparator.
- Norm mode: induced row/column l1 norms for coefficient/Gram reserves,
  spectral/eigenvalue floor for \(J_M^0\), and Euclidean column norms for the
  output normalizers.
- Admissibility and auxiliary tolerances: only the primitive \(r\ge3\), the
  prescribed \(\tau_r\), and the accepted derived bounds \(q\le q_*\) and
  \(\Gamma\le1.01\). The explicit absorptions are (1)--(5), (11)--(12), and
  (N1)--(N3); no term is hidden in an "up to constants" statement.
- Probability conversion: none.
- Contribution to a rate specialization bridge: this exports the exact
  pre-solve reserve with constants independent of generated condition
  numbers; the downstream landing step may therefore use the ordinary
  inverse without changing the declared runtime dependence.
- Baseline reduction: in the exact orthogonal/equal-weight certified-component
  specialization, \(P_M^0=G_M\), \(s^0=0\), and \(q=0\). Consequently the
  actual defects \(F_M-I\), \(J_M^0-I\), and \(Q_M^0-J_M^0\) vanish, all
  inverse reserves are identities, and output normalizers equal
  \(\lambda_j^{1/3}\). The conservative budgets remain positive because the
  setting keeps the prescribed \(q_*\) and \(\tau_r\); they are not substituted
  for the exact zero defects. Thus the exact zero-residual baseline is
  preserved rather than replaced by a finite-error surrogate.

## Blockers

None.

## Notation And Assumption Notes

- \(H_M=G_M^\top G_M\), \(L_M=G_M^\top P_M^0\), and
  \(F_M=(P_M^0)^\top P_M^0\) are proof-local Gram/cross-Gram abbreviations;
  \(H_M^0\) remains the setting's actual frozen Khatri--Rao design. The
  public-facing outputs are the seven budgets, the two inverse reserves, the
  positive congruence, and the normalizer bounds.
- \(c_0,\delta_L,\delta_F,\delta_{FL},\alpha_0,\eta_J,\eta_{QJ},\eta_A\) are
  directly defined in setting.md; the numerical inequalities (N1)--(N3) are
  proved in Claim~\ref{claim:step-009-numerical-slack}. The helper matrices
  \(E_M\), \(P_{-M}^0\), \(K_{-M}\), \(\Xi_M\), and
  \(\ell_{M,j}^0\) are proof-local or appendix-local translations, with their
  provenance shown before use.
- E_sm and E_seed are accepted generated outputs, not primitive assumptions.
  The simultaneous conjunction over \(M\) is proved here and is consumed
  first by step_010; no generated reserve is assumed in its own proof.
- The paired accepted global_proof.md/global_proof_review.md was consulted
  only for the planning cue that all three reserves must be emitted before
  any solve. It is not evidence, an assumption source, a cited result, or
  authority to change the target claim.
