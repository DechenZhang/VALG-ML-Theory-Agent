# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_006
- Unit attempt: 3

## Target Step Claim

- Intended claim: From the selected-state same-state equation, close the
  dual-coordinate column bootstrap by an explicit quadratic small-root
  inequality.  Transfer the ambient certificate residual entry by entry,
  obtaining a bound \(2\tau_r\) per entry and both induced row and column
  residual masses at most \(2r\tau_r\).  Then close the induced coefficient
  row and column l1 masses at \(O(q_*^2+r\tau_r)\).
- Depends on: accepted step_004, step_004b, and step_005 proofs and reviews.
- Assumptions used: the primitive setting notation and
  assump:random-initialization only for the already-defined procedure;
  \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm cert\_tail},E_{\rm support\_wt},
  E_{\rm cluster},E_{\rm gauge}\) are accepted derived interfaces.
- Technical challenge: retain the same stored state in both pair factors,
  control diagonal normalization before the off-diagonal bootstrap, convert
  one ambient l2 residual into one entrywise charge (not an \(r^2\) charge),
  and absorb the row inequality without assuming the row bound in the
  column argument.
- Intended proof tool: exact dual-basis algebra, the unit-norm projection
  identity, Hadamard l1 bounds, and a two-root small-gain argument.
- Output target: \(E_{\rm col},E_{\rm row\_residual},E_{\rm row}\).
- Rate objective: deterministic bounds with exposed
  \(q_{\rm real},q_*,\Gamma,\tau_r,r\), and
  \(\omega=q_*^2+r\tau_r\), with no hidden condition number.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive setting definitions are \(G_M,\lambda_j,K_M,D_M,\tau_r\), and
  the old-state simultaneous procedure in assump:random-initialization.
- Accepted step_004 supplies \(E_{\rm sm}\): with
  \(H_M=G_M^TG_M=I+F_M\), the diagonal of \(H_M\) is one, the absolute
  row and column off-mass of \(F_M\) is at most
  \(q:=q_{\rm real}\le q_*\), \(\Gamma\le1.01\), and
  \(1-q\le\lambda_{\min}(H_M)\le\lambda_{\max}(H_M)\le1+q\).
- Accepted step_004b supplies \(E_{\rm cert\_eq}\): after its columnwise
  certificate signs, a stored column has the exact same-state equation and
  residual norm at most \(D_M(j,j)\tau_r\), and supplies the
  singleton tail \(a_{\rm cert}=7q_*+8\tau_r\).
- Accepted step_005 supplies \(E_{\rm support\_wt}\), \(E_{\rm cluster}\), and
  \(E_{\rm gauge}\).  Reindexing by its proof-only permutation, every
  selected column j has
  \[
  \sum_{\ell\ne j}|(L_M^T\bar p_{M,j})_\ell|\le a_{\rm cert}+4q_*,
  \quad {31\over32}\lambda_j\le D_M(j,j)\le {33\over32}\lambda_j,
  \]
  and the proof-only barred equation
  \(\bar P_MD_M=G_M\bar K_M+\bar R_M\), with
  \(\|\bar R_M(:,j)\|_2\le D_M(j,j)\tau_r\).
- These are generated derived interfaces, not primitive theorem assumptions.
  Fix one realized \(E_{\rm sm}\) instance and one finite selected run.
  The proof-only reindexing and bars are not algorithmic inputs.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| unit_001 | proposition | The barred same-state equation becomes an exact entrywise dual equation; the initial off-diagonal dual column mass is at most \(a_{\rm cert}+4q_*\), and its diagonal is positive. | Same-state object identity and bootstrap entry. |
| unit_002 | lemma | The normalized dual residual has entrywise magnitude at most \(2\tau_r\), hence both induced residual masses are at most \(2r\tau_r\). | \(E_{\rm row\_residual}\). |
| unit_003 | lemma | The unit-norm identity controls diagonal normalization and gives pointwise and row-mass envelopes for \(H_MB_M\). | Hadamard factors for both gains. |
| unit_004 | proposition | The off-diagonal column mass obeys an explicit quadratic inequality, selects its small root, and gives full coefficient column mass at most \(64\omega\). | \(E_{\rm col}\). |
| unit_005 | proposition | The off-diagonal row mass satisfies a self-absorbing inequality with coefficient below \(1/8\), and full row mass is at most \(128\omega\). | \(E_{\rm row}\). |
| unit_006 | proposition | Units 001--005 assemble the three public interfaces and preserve the exact orthogonal stationary baseline. | Target-step closure. |

Atomic step = no.  The identity, residual transfer, diagonal bound, column
root, and row absorption are independent nontrivial obligations.

## Cited Result Applications

No external paper theorem is used.  The accepted dependencies are restated in
current notation above.  The only elementary facts used are
\(\|H_M^{-1}\|_2\le(1-q)^{-1}\),
\(\|L_M(:,\ell)\|_2^2=e_\ell^TH_M^{-1}e_\ell\le(1-q)^{-1}\), and
\(\sum_i|a_ib_i|\le\|a\|_\infty\|b\|_1\).  Their hypotheses are exactly the
accepted \(E_{\rm sm}\) Gram bounds.  No statement from global_proof.md is
used as evidence.

## Local Derivation

Reindex by the proof-only target permutation and write
\(\bar P_M=[\bar p_{M,1},\ldots,\bar p_{M,r}]\).  Define
\[
 H_M=G_M^TG_M=I+F_M,\quad L_M=G_MH_M^{-1},\quad
 B_M=L_M^T\bar P_M,\quad \widehat R_M=L_M^T\bar R_M,
\]
\[
 d_{M,j}=D_M(j,j),\quad \alpha_{M,j}=d_{M,j}/\lambda_j,\quad
 \mu_{\ell j}=\lambda_\ell/\lambda_j,\quad
 Y_M=H_MB_M,\quad
 \rho_{M,\ell j}=\widehat R_M(\ell,j)/\lambda_j .
\]
Thus \(31/32\le\alpha_{M,j}\le33/32\) and
\(\Gamma^{-1}\le\mu_{\ell j}\le\Gamma\).

### unit_001: proposition

**Proposition (exact selected-state dual equation and entry branch).**
\label{prop:step-006-dual-equation}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces, for every
mode M and selected column j,
\[
 B_M(:,j)d_{M,j}=\bar K_M(:,j)+\widehat R_M(:,j),
\tag{6.1}
\]
and, entrywise,
\[
 \alpha_{M,j}B_M(\ell,j)
 =\mu_{\ell j}Y_{M',\ell j}Y_{M'',\ell j}+\rho_{M,\ell j}.
\tag{6.2}
\]
If \(C_M=B_M-I\), then
\[
 \chi_0:=\max_{M,j}\sum_{\ell\ne j}|C_M(\ell,j)|
 \le a_{\rm cert}+4q_*<1/256,
\tag{6.3}
\]
and \(B_M(j,j)>15/16\).

**Proof.** Multiplying
\(\bar P_MD_M=G_M\bar K_M+\bar R_M\) by \(L_M^T\), and using
\(L_M^TG_M=I\), gives (6.1).  Since
\(G_{M'}^T\bar P_{M'}=H_{M'}B_{M'}=Y_{M'}\), the same-state definition gives
\[
 \bar K_M(:,j)=\operatorname{diag}(\lambda)
   (Y_{M'}(:,j)\circ Y_{M''}(:,j)).
\]
Division by \(\lambda_j\) gives (6.2).  The singleton dual tail in the
accepted step_005 chart gives (6.3), unchanged by bars or reindexing.
As \(a_{\rm cert}=7q_*+8\tau_r\), \(r\ge3\), and
\(8\tau_r=q_*^2/(1250r)<q_*\), we have
\(\chi_0<12q_*<1/256\).

For positivity, step_005 gives
\(\langle g_{M,j},\bar p_{M,j}\rangle>31/32\).  Also
\[
 \|L_M(:,j)-g_{M,j}\|_2
 \le \|G_M\|_2\|H_M^{-1}-I\|_2
 \le {\sqrt{1+q}\,q\over1-q}<2q_* .
\]
Consequently \(B_M(j,j)>31/32-2q_*>15/16\). \(\qed\)

### unit_002: lemma

**Lemma (entrywise dual residual and induced masses).**
\label{lem:step-006-residual}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces (in particular the accepted
upper denominator margin \(D_M(j,j)/\lambda_j\le33/32\)),
\[
 |\rho_{M,\ell j}|\le2\tau_r
\tag{6.4}
\]
for every M,ell,j.  Hence
\[
 \max_{M,j}\sum_\ell|\rho_{M,\ell j}|\le2r\tau_r,\qquad
 \max_{M,\ell}\sum_j|\rho_{M,\ell j}|\le2r\tau_r .
\tag{6.5}
\]

**Proof.** The certificate gives
\(\|\bar R_M(:,j)\|_2\le d_{M,j}\tau_r\), while
\[
 \|L_M(:,\ell)\|_2^2=e_\ell^TH_M^{-1}e_\ell\le(1-q)^{-1}.
\]
Therefore
\[
 |\rho_{M,\ell j}|
 \le {33\over32\sqrt{1-q}}\tau_r<2\tau_r.
\]
The two sums in (6.5) follow by summing this entrywise bound over one
index at a time.  In particular, the row estimate is not obtained by
summing a column estimate again. \(\qed\)

### unit_003: lemma

**Lemma (diagonal normalization and Hadamard envelopes).**
\label{lem:step-006-envelope}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces and
Propositions~\ref{prop:step-006-dual-equation} and
Lemma~\ref{lem:step-006-residual}, let
\[
 \chi=\max_{M,j}\sum_{\ell\ne j}|B_M(\ell,j)|,\qquad
 \delta=\max_{M,j}|B_M(j,j)-1|,\qquad
 \eta=\max_{M,\ell}\sum_{j\ne\ell}|C_M(\ell,j)|.
\]
For each selected \((M,j)\), define the orthogonal projection residual
\[
 p^{\perp}_{M,j}:=\bar p_{M,j}-G_MB_M(:,j).
\]
On the local initial branch \(\chi\le\chi_0\),
\[
 \delta\le2(q_*+\chi)\chi+2\tau_r^2+2q_*^2\chi,
\tag{6.6}
\]
and for \(\ell\ne j\),
\[
 |Y_M(\ell,j)|\le\beta_\infty:=q_*+2\chi+2q_*^2,
\tag{6.7}
\]
\[
 \sum_{j\ne\ell}|Y_M(\ell,j)|
 \le\beta_{\rm row}:=q_*+2\eta+2q_*^2.
\tag{6.8}
\]

**Proof.** Since \(G_ML_M^T=G_MH_M^{-1}G_M^T\) is the orthogonal
projection onto \({\rm range}(G_M)\), the displayed definition makes
\(p^{\perp}_{M,j}\perp{\rm range}(G_M)\).  The accepted certificate says
that \(\bar p_{M,j}\) is within \(\tau_r\) of a normalized same-state
contraction in that range, hence
\(\|p^{\perp}_{M,j}\|_2\le\tau_r\).  Therefore, for
\(b=B_M(:,j)=ae_j+e\), \(e_j=0\),
\[
 1=b^TH_Mb+\|p^{\perp}_{M,j}\|_2^2.
\]
Before expanding, the displayed projection identity and
\(H_M\succeq(1-q)I\) give
\[
 |a|\le\|b\|_2\le(1-q)^{-1/2}<1+2q_*.
\]
Now the spectral bound on \(F_M\), \(\|e\|_2\le\chi\), and this proved
diagonal bound imply (6.6); the last \(2q_*^2\chi\) is the harmless
third-order correction from \(|a|-1\).  The initial estimate
\(\chi_0<12q_*\) then gives \(\delta<2q_*\) by direct substitution.

Write \(H_MB_M=I+C_M+F_M+F_MC_M\).  For \(\ell\ne j\),
\[
 |F_MC_M(\ell,j)|
 \le |F_M(\ell,j)|\delta+
       \sum_{m\ne j}|F_M(\ell,m)||C_M(m,j)|
 \le q_*(\delta+\chi).
\]
Using \(|F_M(\ell,j)|\le q_*\), \(|C_M(\ell,j)|\le\chi\), and
\(\delta<2q_*\) yields (6.7).  For a fixed row ell, the off-row l1 masses
of \(C_M\) and \(F_M\) are at most \(\eta\) and \(q_*\).  The corresponding
\(F_MC_M\) mass is at most \(q_*(\eta+\delta)\), hence at most
\(q_*(\eta+2q_*)\).  This proves (6.8). \(\qed\)

### unit_004: proposition

**Proposition (column small root and full column mass).**
\label{prop:step-006-column-root}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces and
Proposition~\ref{prop:step-006-dual-equation},
Lemma~\ref{lem:step-006-residual}, and
Lemma~\ref{lem:step-006-envelope}, on the local branch
\(\chi\le\chi_0\), the off-diagonal mass satisfies
\[
 \chi\le4(q_*+2\chi+2q_*^2)^2+4r\tau_r.
\tag{6.9}
\]

With
\[
 \omega:=q_*^2+r\tau_r=(1+10^{-4})q_*^2,
\tag{6.10}
\]
the initial branch selects
\[
 \chi\le32\omega,\qquad
 \max_M\|B_M-I\|_{\rm col,1}\le64\omega.
\tag{6.11}
\]

**Proof.** For \(\ell\ne j\), (6.2), \(\alpha_{M,j}\ge31/32\), (6.7), and
(6.4) imply
\[
 \sum_{\ell\ne j}|B_M(\ell,j)|
 \le {32\over31}(1.01\beta_\infty^2+2r\tau_r)
 \le4\beta_\infty^2+4r\tau_r.
\]
Taking the maximum proves (6.9).  Let
\[
 F(x)=4(q_*+2x+2q_*^2)^2+4r\tau_r-x.
\]
Then \(F(\chi)\ge0\).  Since \(\chi<1/256\), while
\[
 F(1/32)<0
\]
(the full positive term is below \(0.0161\), whereas \(1/32=0.03125\)), the two
roots straddle \(1/32\).  Further, using \(r\tau_r=q_*^2/10^4\),
\[
 q_*+64\omega+2q_*^2<1.017q_*,
\]
and so \(F(32\omega)<0\), because
\(4(1.017)^2q_*^2+4r\tau_r<4.14q_*^2<32\omega\).
The first root is below \(32\omega\); the initial branch lies below \(1/32\),
so \(F(\chi)\ge0\) forces \(\chi\le32\omega\).

Substitution in (6.6), using \(q_*\le1/4096\), gives
\(\delta\le16\omega\).  Thus every column of \(B_M-I\) has mass at most
\(\chi+\delta\le48\omega<64\omega\). \(\qed\)

### unit_005: proposition

**Proposition (row small gain and full row mass).**
\label{prop:step-006-row-closure}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces and
Propositions~\ref{prop:step-006-dual-equation} and
\ref{prop:step-006-column-root}, and Lemmas~\ref{lem:step-006-residual}
and~\ref{lem:step-006-envelope}, with the local condition
\(\chi\le32\omega\), let
\[
 \eta=\max_{M,\ell}\sum_{j\ne\ell}|C_M(\ell,j)|.
\]
Then
\[
 \eta\le4(q_*+2\chi+2q_*^2)(q_*+2\eta+2q_*^2)+4r\tau_r.
\tag{6.12}
\]

The coefficient of \(\eta\) is below \(1/8\), and
\[
 \eta\le32\omega,\qquad
 \max_M\|B_M-I\|_{\rm row,1}\le128\omega.
\tag{6.13}
\]

**Proof.** Sum (6.2) over \(j\ne\ell\).  Lemma
\ref{lem:step-006-envelope} bounds one factor pointwise by
\(\beta_\infty\) and the other row by \(\beta_{\rm row}\).  The denominator
and weight margins and (6.5) therefore give (6.12).  After (6.11),
\(\beta_\infty<2q_*\), so the self coefficient \(8\beta_\infty<1/8\).
Absorption gives
\[
 \eta(1-8\beta_\infty)
 \le4\beta_\infty(q_*+2q_*^2)+4r\tau_r.
\]
The right side is at most \(20\omega\), and
\(1-8\beta_\infty>7/8\), hence \(\eta<24\omega<32\omega\).
Adding the diagonal bound \(\delta\le16\omega\) gives a full row mass below
\(48\omega\), and thus the displayed \(128\omega\) bound. \(\qed\)

### unit_006: proposition

**Proposition (assembled selected-state bridge).**
\label{prop:step-006-assembly}

Under the accepted \(E_{\rm sm},E_{\rm cert\_eq},E_{\rm support\_wt},
E_{\rm cluster},E_{\rm gauge}\) interfaces and the preceding accepted local
Propositions~\ref{prop:step-006-dual-equation},
\ref{prop:step-006-column-root}, \ref{prop:step-006-row-closure} and
Lemma~\ref{lem:step-006-residual}, simultaneously for all modes,
\[
 E_{\rm col}:\quad \max_M\|L_M^T\bar P_M-I\|_{\rm col,1}\le64\omega,
\]
\[
 E_{\rm row\_residual}:\quad
 |\rho_{M,\ell j}|\le2\tau_r,\quad
 \max_M\{\|\rho_M\|_{\rm col,1},\|\rho_M\|_{\rm row,1}\}\le2r\tau_r,
\]
and
\[
 E_{\rm row}:\quad \max_M\|L_M^T\bar P_M-I\|_{\rm row,1}\le128\omega.
\]
Here \(\omega=q_*^2+r\tau_r\).

**Proof.** Unit 001 gives the exact same-state entry equation and the
initial branch.  Unit 002 gives the entrywise and induced residual fields.
Unit 003 supplies the diagonal and Hadamard envelopes.  Unit 004 solves the
column quadratic before any row estimate is used.  Unit 005 then absorbs the
row self-gain.  This acyclic composition is exactly the three requested
interfaces. \(\qed\)

## Target-Step Assembly

Multiplication of the accepted barred equation by the true-factor left dual
gives (6.2), with both pair factors evaluated at the same selected stored
state.  The accepted singleton chart supplies the \(31/32\) denominator and
the initial dual column branch.  The residual lemma transfers each ambient
certificate column to the dual basis once, yielding \(2\tau_r\) per entry and
\(2r\tau_r\) after summing over either one index.  The unit-norm identity
then controls diagonal normalization and gives the factor envelopes.  The
off-diagonal equation has the explicit quadratic (6.9); its sign test at
\(1/32\) and \(32\omega\) selects the small root rather than assuming a
basin.  Only after this column closure is the row equation summed, and its
self coefficient is below \(1/8\).  The resulting coefficient leakage is
\(O(q_*^2+r\tau_r)\) with the stated constants.  No target label, coverage
chart, look-ahead state, or post-update pair matrix is used.

## Explicit Rate Audit

- Exposed variables: \(r,q_{\rm real},q_*,\Gamma,\tau_r,\lambda_\ell/\lambda_j\),
  \(\omega=q_*^2+r\tau_r\), entrywise Euclidean residuals, and induced row and
  column l1 masses.
- Hidden constants: only the displayed universal numerical constants and the
  fixed \(q_*\) reserve; no dependence on \(n,k,\kappa_0,\rho\), confidence
  parameters, the base triple, labels, selected-pool size, or an unlisted
  condition number.
- Fixed/probability/horizon mode: deterministic and conditional on the
  accepted \(E_{\rm sm}\) and selected-run interfaces; no new probability
  conversion; fixed-state finite horizon, not an all-time trajectory claim.
- Norm mode: ambient certificate columns use l2, dual residuals and
  coefficient errors use entrywise and induced l1 norms.
- Absorption: all terms are displayed before absorption; the certificate
  contribution is \(r\tau_r\), static Gram leakage is \(q_*^2\), and the
  row self coefficient is explicitly below \(1/8\).
- Baseline reduction: at the orthogonal equal-weight stationary
  specialization, \(q=0,H_M=I,B_M=I,\bar R_M=0\), so all coefficient and
  residual fields vanish.  A finite orthogonal transient retains its
  nonzero certificate charge and is controlled by the explicit \(r\tau_r\)
  term, rather than being silently treated as stationary.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing outputs are only \(E_{\rm col},E_{\rm row\_residual},E_{\rm row}\).
  \(B_M,C_M,Y_M,\widehat R_M,\rho_M,\chi,\delta,\eta,\beta_\infty,
  \beta_{\rm row},\omega\), and the permutation are proof-local or
  appendix-local aliases defined from setting quantities or accepted outputs.
- \(a_{\rm cert}\), the denominator margins, \(q_*\), and \(\tau_r\) are
  inherited or setting-defined; \(32,64,128\) are proved absorption constants.
  No free bounded quantity or generated condition number is introduced.
- The bars are proof-only sign copies; raw setting-level \(P,Q,S,K,D,\theta\)
  remain unchanged.  The paired global proof diagnostic was read only for
  planning and is not a cited result or assumption source.
- All generated events used here have explicit provenance as accepted
  predecessors; the local initial branch is closed by the displayed root
  argument before the public interfaces are exported.
- Baseline exactness is retained: a finite transient may have nonzero
  certificate residual, while an exact stationary orthogonal representative
  has zero residual.
