# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_010
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency step_009 proof/review SHA-256: a4b6fb97f55259816c35a8fe7e48b7bd5ef2b822c706acc50b086ba27e972761 / 664aae39e12238e0929b3ecac0e058070a5b09cb3375a0f6bdd6f2cc50ed6a6f

## Target Step Claim

The accepted sketch row is:

> Evaluate the three exact frozen-input Moore--Penrose solutions
> independently; use ordinary inverses only on E_land_pre; prove exact
> target-span membership and positive normalizers; commit all modes together;
> after one rebalance prove
> \(d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3\).

The three designs are formed from one frozen seed \((X^0,Y^0,Z^0)\).
No landing output is used to form another design.  The quantitative
ordinary-inverse branch is conditional on the accepted E_land_pre certificate;
the Moore--Penrose range statement remains valid on every tape.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- The basic setting fixes \(r\ge3\), positive realized weights \(\lambda_j\),
  and the exact frozen-input Moore--Penrose procedure.
- assump:accuracy-confidence governs only the observable unsuccessful branch
  (a zero active output norm); no confidence or accuracy parameter is used in
  the deterministic landing inequalities.

Derived invariants supplied by the accepted dependency:

- The accepted step_009 artifact supplies, simultaneously for
  \(M\in\{U,V,W\}\),
  \[
  \|\Xi_M-I\|_{\rm row,1}\vee\|\Xi_M-I\|_{\rm col,1}
  \le \beta:=\Gamma\eta_A\le128\omega<1/64, \tag{A1}
  \]
  where
  \[
  \Xi_M=D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1},\quad
  L_M^0=D_\lambda(D_{-M}^0)^{-1},\quad
  \ell_j^0:=\lambda_j^{1/3}e^{-2s_j^0/3}>0.
  \]
- It also supplies
  \[
  (H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0,\quad
  D_{-M}^0\succ0,\quad \lambda_{\min}(J_M^0)\ge1-\eta_J>0, \tag{A2}
  \]
  and the ordinary-inverse coefficient identity on E_land_pre.  Its
  inherited static-geometry part also gives unit columns and
  \(q_{\rm real}\le q_*<1\), so every \(G_M^\top G_M\) is positive definite
  and the target-chart coefficient representation is valid.
- The frozen E_seed fields consumed by step_009 provide
  \(\|s^0\|_\infty\le128\omega\) and
  \(D_M^0=D_\lambda^{1/3}E^0\).  They are fixed before this step.

Local conditional hypotheses: none.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under the exact frozen-input procedure, every Moore--Penrose output lies in the corresponding target span \({\rm range}(G_M)\), including singular designs. | Exact target-span membership on every tape. |
| unit_002 | proposition | Under E_land_pre, all three designs are full column rank, the pseudoinverses equal independent ordinary-inverse formulas, and all active output normalizers are positive. | Legal simultaneous landing formulas and positivity. |
| unit_003 | proposition | On \(E_{\rm land\_pre}\), under the accepted step-009 reserve and the frozen-solve/normalizer conclusion, normalized outputs have target-span coefficient fields \(C_M^{\rm land}\) with both induced masses and every Euclidean column error at most \(2\beta/(1-\beta)\). | Directional quotient entry. |
| unit_004 | proposition | One canonical rebalance is defined, preserves every active rank-one product, and leaves normalized directions unchanged. | Joint commit and same-target rebalance. |
| unit_005 | proposition | The rebalanced product logs obey \(\|s^{\rm land}\|_\infty\le1024\omega\), hence \(d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3\). | Complete E_land quotient-entry bridge. |

## Cited Result Applications

1. Accepted step_009 pre-solve reserve (in particular
   Lemma~\ref{lem:step-009-congruence} and
   Proposition~\ref{prop:step-009-normalizer}): in current notation it supplies
   \[
   \widetilde X_M
   =G_MD_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1}
   =G_M\Xi_ML_M^0, \tag{C1}
   \]
   together with (A1)--(A2), before any landing commit.  Its accepted
   E_sm/E_seed inputs are not landing outputs.
2. Current-setting linear algebra: right multiplication cannot enlarge a
   left column range; positive diagonal congruences are invertible; and
   \(\|G_Mv\|_2\le\|v\|_1\) for unit-column \(G_M\).
3. For \(0<\beta<1\) and \(a\in[1-\beta,1+\beta]\),
   \[
   |\log a|\le-\log(1-\beta)\le\frac{\beta}{1-\beta}. \tag{C2}
   \]
   The interval for \(a\) is proved below.

## Local Derivation

For \(M\in\{U,V,W\}\), let \(M',M''\) be the other modes and put
\[
K_{-M}:=G_{M'}\odot G_{M''},\qquad
P_{-M}^0:=P_{M'}^0\odot P_{M''}^0.
\]
These are proof-local translations of the frozen Khatri--Rao factors.

### unit_001: lemma

**Lemma (unconditional unfolding-range inclusion; label
lem:step-010-range).** Under the exact tensor decomposition, for every frozen
design, including a singular one,
\[
\widetilde X_M:=T_{(M)}H_M^0\big((H_M^0)^\top H_M^0\big)^\dagger
\]
has every column in \({\rm range}(G_M)\).

**Proof / justification.** The exact unfolding identity is
\[
T_{(M)}=G_MD_\lambda K_{-M}^{\top}. \tag{1}
\]
Hence \({\rm range}(T_{(M)})\subseteq{\rm range}(G_M)\), and right
multiplication by \(H_M^0((H_M^0)^\top H_M^0)^\dagger\) preserves that
left column range.  This uses no inverse or good event and applies
independently to all three modes.

### unit_002: proposition

**Proposition (three independent frozen solves and positive normalizers; label
prop:step-010-frozen-solves).** Under E_land_pre, for each mode
\[
\widetilde X_M=G_M\widetilde B_M,\qquad
\widetilde B_M=D_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1}
=\Xi_ML_M^0. \tag{2}
\]
Writing \(\xi_{M,j}:=\Xi_M(:,j)\),
\[
\widetilde x_{M,j}=\ell_j^0G_M\xi_{M,j},\quad
\widetilde d_{M,j}:=\|\widetilde x_{M,j}\|_2
=\ell_j^0a_{M,j},\quad a_{M,j}:=\|G_M\xi_{M,j}\|_2, \tag{3}
\]
and \(1-\beta\le a_{M,j}\le1+\beta\), so
\(\widetilde d_{M,j}>0\).  All three formulas are evaluated from the one
frozen seed before any mode is committed.

**Proof / justification.** The frozen scaling and accepted congruence give
\[
H_M^0=P_{-M}^0D_{-M}^0,\qquad
(H_M^0)^\top H_M^0=D_{-M}^0J_M^0D_{-M}^0. \tag{4}
\]
By (A2), \(H_M^0\) has full column rank, so its Moore--Penrose inverse is
the ordinary inverse.  Since
\[
K_{-M}^{\top}P_{-M}^0
=(G_{M'}^\top P_{M'}^0)\circ(G_{M''}^\top P_{M''}^0)
=Q_M^0,
\]
the unfolding identity yields
\[
\begin{aligned}
T_{(M)}H_M^0\big((H_M^0)^\top H_M^0\big)^{-1}
&=G_MD_\lambda Q_M^0D_{-M}^0
 (D_{-M}^0)^{-1}(J_M^0)^{-1}(D_{-M}^0)^{-1}\\
&=G_MD_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1},
\end{aligned}
\]
which is (2).  Factoring \(L_M^0\) gives (3).  For
\(v_{M,j}:=\xi_{M,j}-e_j\), (A1) and unit columns of \(G_M\) imply
\[
|a_{M,j}-1|\le\|G_Mv_{M,j}\|_2\le\|v_{M,j}\|_1\le\beta. \tag{5}
\]
Thus the interval and positive normalizer follow.  The singular
Moore--Penrose branch was not altered; the ordinary formula is used only
after (A2).

### unit_003: proposition

**Proposition (normalized direction fields; label
prop:step-010-directions).** On the derived event \(E_{\rm land\_pre}\), assume
the accepted step-009 conclusions of Lemma~\ref{lem:step-009-congruence} and
Proposition~\ref{prop:step-009-normalizer}; in particular, for every
\(M\in\{U,V,W\}\),
\[
\beta:=\Gamma\eta_A\le128\omega<1/64<1,\qquad
\|\Xi_M-I\|_{\rm row,1}\vee\|\Xi_M-I\|_{\rm col,1}\le\beta,
\]
where \(\Xi_M:=D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1}\), and the positive
diagonal congruence and ordinary frozen-solve identity hold.
Let the three outputs and their positive normalizers be those supplied by
Proposition~\ref{prop:step-010-frozen-solves}, so that
\[
\widetilde d_{M,j}>0,\qquad
a_{M,j}:=\|G_M\Xi_M(:,j)\|_2\in[1-\beta,1+\beta].
\]
Define \(D_{a,M}:={\rm diag}(a_{M,1},\ldots,a_{M,r})\) and
\[
P_M^{\rm land}:=\big[\widetilde x_{M,j}/\widetilde d_{M,j}\big]_{j=1}^r,
\qquad C_M^{\rm land}:=\Xi_MD_{a,M}^{-1}-I. \tag{6}
\]
Then \(P_M^{\rm land}=G_M(I+C_M^{\rm land})\), its perpendicular field is
zero, and, for \(\nu\in\{{\rm row},{\rm col}\}\),
\[
\|C_M^{\rm land}\|_\nu\le\frac{2\beta}{1-\beta}<3\beta,\qquad
\max_j\|G_MC_M^{\rm land}(:,j)\|_2
\le\frac{2\beta}{1-\beta}<3\beta. \tag{7}
\]
Every output direction has positive inner product with its corresponding
target column \(G_M(:,j)\).

**Proof / justification.** From (5), \(D_{a,M}\) is positive and
\(\|D_{a,M}^{-1}\|_\nu\le(1-\beta)^{-1}\).  The identity
\[
\Xi_MD_{a,M}^{-1}-I
=(\Xi_M-I)D_{a,M}^{-1}+(D_{a,M}^{-1}-I) \tag{8}
\]
and (A1) give two terms each at most \(\beta/(1-\beta)\) in either
orientation, proving the first bound in (7).  Since
\(2/(1-\beta)=128/63<3\), the displayed strict bound follows.
For a column,
\[
\left\|\frac{G_M\xi_{M,j}}{a_{M,j}}-G_M(:,j)\right\|_2
\le\frac{\|G_Mv_{M,j}\|_2+|a_{M,j}-1|}{a_{M,j}}
\le\frac{2\beta}{1-\beta}.
\]
The range lemma gives zero perpendicular field.  Also
\(\langle G_M(:,j),G_M\xi_{M,j}\rangle\ge1-\beta>0\), so the proof-only
target sign chart is unchanged.

### unit_004: proposition

**Proposition (joint commit and product-preserving rebalance; label
prop:step-010-rebalance).** On the derived event \(E_{\rm land\_pre}\), under
the setting's rule that all three frozen-input designs are formed before any
commit and their outputs are committed together, let
\[
(\widetilde X_U,\widetilde X_V,\widetilde X_W)
\]
be the three outputs from the common frozen seed
\((X^0,Y^0,Z^0)\) supplied by
Proposition~\ref{prop:step-010-frozen-solves}.  Assume, as that proposition
concludes, that every active normalizer satisfies
\(\widetilde d_{M,j}>0\) before commitment.  With
\[
\widetilde\gamma_j:=\prod_{M\in\{U,V,W\}}\widetilde d_{M,j}>0,
\]
set
\[
X_M^{\rm land}(:,j):=\widetilde\gamma_j^{1/3}
\frac{\widetilde X_M(:,j)}{\widetilde d_{M,j}}. \tag{9}
\]
This preserves each active rank-one product exactly and leaves normalized
directions unchanged.

**Proof / justification.** Proposition~\ref{prop:step-010-frozen-solves}
states that every mode formula uses only the same frozen
\((X^0,Y^0,Z^0)\), so the three outputs are computed and then committed as
one transaction.  Its positive-normalizer conclusion gives
\(\widetilde\gamma_j>0\), and
\[
X_U^{\rm land}(:,j)\otimes X_V^{\rm land}(:,j)\otimes X_W^{\rm land}(:,j)
=\frac{\widetilde\gamma_j}
{\widetilde d_{U,j}\widetilde d_{V,j}\widetilde d_{W,j}}
\widetilde x_j\otimes\widetilde y_j\otimes\widetilde z_j
=\widetilde x_j\otimes\widetilde y_j\otimes\widetilde z_j. \tag{10}
\]
Only positive scales change, so \(P_M^{\rm land}\) and \(C_M^{\rm land}\)
are unchanged; inactive columns remain zero.

### unit_005: proposition

**Proposition (quotient entry after one rebalance; label
prop:step-010-quotient-entry).** On the derived conjunction
\(E_{\rm land\_pre}\cap E_{\rm seed}\), assume the accepted seed-scale
conclusion \(\|s^0\|_\infty\le128\omega\), the accepted step-009 reserve
\(\beta=\Gamma\eta_A\le128\omega<1/64\), and the following named
conclusions: Lemma~\ref{lem:step-010-range} gives exact target-span
membership for the Moore--Penrose outputs; Proposition~\ref{prop:step-010-frozen-solves}
gives \(\widetilde d_{M,j}=\ell_j^0a_{M,j}\) with
\(a_{M,j}\in[1-\beta,1+\beta]\); Proposition~\ref{prop:step-010-directions}
gives \(P_M^{\rm land}=G_M(I+C_M^{\rm land})\), zero perpendicular field, and
positive target orientation; and Proposition~\ref{prop:step-010-rebalance} gives the common
frozen-input joint commit and product-preserving rebalance.  Then
\[
\|s^{\rm land}\|_\infty\le1024\omega,\qquad
d_Q(e^{\rm land},0)\le1024\omega.
\tag{11}
\]
Consequently \(d_Q(e^{\rm land},0)\le4096\omega<\rho_{\rm ALS}/3\).

**Proof / justification.** Since
\(\ell_j^0=\lambda_j^{1/3}e^{-2s_j^0/3}\), (3) gives
\[
\frac{\widetilde\gamma_j}{\lambda_j}
=e^{-2s_j^0}\prod_{M\in\{U,V,W\}}a_{M,j}.
\tag{12}
\]
The quotient log is therefore
\[
s_j^{\rm land}=-2s_j^0+\sum_{M\in\{U,V,W\}}\log a_{M,j}. \tag{13}
\]
By (C2) and (5), \(|\log a_{M,j}|\le\beta/(1-\beta)<2\beta\le256\omega\).
Thus
\[
|s_j^{\rm land}|\le2(128\omega)+3(256\omega)=1024\omega. \tag{14}
\]
The definition of \(d_Q\) takes the maximum of the three direction
quantities and the scale log.  Proposition~\ref{prop:step-010-directions}
bounds every direction quantity by \(3\beta\le384\omega\), so (11) follows.
Finally,
\[
\omega=q_*^2+r\tau_r=q_*^2(1+10^{-4}),\quad
q_*={1\over4096},\quad \rho_{\rm ALS}={1\over1024},
\]
and hence
\[
4096\omega={1+10^{-4}\over4096}
<{1\over3072}={\rho_{\rm ALS}\over3},
\tag{15}
\]
because \(1+10^{-4}<4/3\).

## Target-Step Assembly

Lemma~\ref{lem:step-010-range} gives exact target-span membership for each
Moore--Penrose output without assuming a nonsingular design.  On the derived
event \(E_{\rm land\_pre}\), Proposition~\ref{prop:step-010-frozen-solves}
invokes the positive diagonal congruence and pair-Gram floor supplied by
Lemma~\ref{lem:step-009-congruence} and
Proposition~\ref{prop:step-009-normalizer} to replace each pseudoinverse by
its own ordinary inverse, derives the exact coefficient identity, and proves
all active normalizers positive from the explicit \(\beta<1\) reserve.  Its
statement also records that all three outputs use the one frozen seed.

Under the same event, Proposition~\ref{prop:step-010-directions} applies the
normalizers to obtain the target-chart coefficient fields, both induced
direction bounds, zero perpendicular fields, and the fixed target
orientation.  The setting's synchronized joint-commit rule together with the
positive normalizers is discharged by
Proposition~\ref{prop:step-010-rebalance}, which proves exact preservation of
every represented term.  Finally, under the accepted \(E_{\rm seed}\) scale
bound, Proposition~\ref{prop:step-010-quotient-entry} gives
\(d_Q(e^{\rm land},0)\le1024\omega\le4096\omega\) and the
\(\rho_{\rm ALS}/3\) entry.  No landing output is used as an input to another
landing solve; singular/off-event tapes retain the observable
Moore--Penrose fallback without an unsupported basin claim.

## Explicit Rate Audit

- Exposed variables: \(r,q_*=1/4096,\Gamma,\eta_A,\beta=\Gamma\eta_A,
  \tau_r,\omega,\rho_{\rm ALS}\), positive realized weights \(\lambda_j\),
  and the accepted seed log field \(s^0\).
- Hidden constants may depend only on fixed numerical margins.  They may not
  depend on \(n,\kappa_0,\rho,\epsilon\), either confidence parameter, a
  target label, a generated condition number, or a post-solve comparator.
- Fixed quantities: one realized tensor and one frozen active seed; all three
  mode solves are one finite transaction.
- Probability mode: deterministic conditional on accepted E_land_pre/E_seed;
  no probability conversion is performed.
- Horizon mode: one synchronized landing pass and one rebalance, with no
  chronological accumulation.
- Norm mode: induced row/column \(\ell_1\), Euclidean column norms, and
  quotient \(d_Q\).
- Admissibility and auxiliary tolerances: \(\beta\le128\omega<1/64\),
  \(r\ge3\), and positive \(\lambda_j\).  Absorptions are
  \(2/(1-\beta)<3\), \(|\log a|<2\beta\), and
  \(2\|s^0\|_\infty+6\beta\le1024\omega\).
- Probability conversion: none.
- Contribution to rate specialization: exact target-span entry and a
  basin-scale quotient radius independent of generated condition numbers or
  landing predecessors.
- Baseline reduction: in the exact orthogonal/equal-weight certified seed,
  \(q=0\), \(C_M^0=N_M^0=s^0=0\), \(J_M^0=Q_M^0=I\), and \(\Xi_M=I\).
  Hence \(a_{M,j}=1\), all outputs equal the exact target factors, the
  rebalance is the identity, and \(d_Q(e^{\rm land},0)=0\).

## Blockers

None.

## Notation And Assumption Notes

- \(K_{-M},P_{-M}^0,\Xi_M,L_M^0,\ell_j^0,D_{a,M},a_{M,j}\), and
  \(v_{M,j}\) are proof-local translations of the frozen Khatri--Rao,
  coefficient, and normalization objects.  The helper
  \(\beta=\Gamma\eta_A\) is directly defined from the accepted reserve.
- \(C_M^{\rm land},P_M^{\rm land},s^{\rm land}\) are the minimal
  public-facing quotient outputs consumed by step_011; other helpers are
  proof-local.  Constants \(2,3\) are proved in
  Proposition~\ref{prop:step-010-directions}, and \(1024\) in
  Proposition~\ref{prop:step-010-quotient-entry}.
- Exact target-span membership is proved by
  Lemma~\ref{lem:step-010-range}, and positive normalizers by
  Proposition~\ref{prop:step-010-frozen-solves}.  The joint commit is a finite
  operation after all formulas are complete.  Singular or zero-normalizer tapes retain observable
  Moore--Penrose/failure behavior; the quantitative E_land conclusion is only
  on E_land_pre.
