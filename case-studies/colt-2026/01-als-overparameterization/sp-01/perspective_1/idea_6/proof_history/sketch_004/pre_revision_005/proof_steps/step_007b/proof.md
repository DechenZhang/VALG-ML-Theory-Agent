# Proof Step

## Step Identity

- Sketch attempt: 2
- Setting SHA-256: a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab
- Sketch SHA-256: c6126ab9b81d7a7cbcae3b9b857923f3fe8e275ed1ba4376fd830270c5ec95e1
- Sketch-review SHA-256: 524bc3e32fc6d334d4c6c78bf8e347888df2cd4bbbd21bf7c3dc1414c0c9b3a4
- Step ID: step_007b
- Unit attempt: 2

## Target Step Claim

- Intended claim: From the accepted selected entry decomposition
  bar P_M=G_M B_M+N_M, retain F_M=N_M^T N_M and prove the exact held
  pair-Gram contamination
  beta_perp=2(1+q_*)(1+48omega)^2 tau_r^2+r tau_r^4; verify the
  normalized cross and pair-Gram deviations and a 31/32 inverse floor at
  all three first-sweep subupdates; prove exact zero-padding equivalence and
  range containment; and show the completed first cyclic sweep has
  N_U^+=N_V^+=N_W^+=0 and
  norm(e^1)_Q<=4096(omega+beta_perp)<rho_ALS/3.
- Dependencies: step_001, step_007.
- Assumptions used: E_sm, E_best, and E_quotient (derived accepted
  outputs), and assump:base-scale only for the setting's finite nonzero
  active-factor scale convention.
- Technical challenge: coherent shared perpendicular columns, amplitude-
  conjugated pair Grams, sequential inverse branches, and exact target-span
  entry.
- Intended proof tool or cited result: orthogonal projector identity,
  induced row/column Hadamard bounds, Neumann/resolvent inverse estimates,
  exact matricized unfolding range, Moore--Penrose block identity, and the
  product-preserving equal-norm quotient gauge.
- Output target: E_pair_entry and E_parallel_entry.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:base-scale, used only for the setting-defined finite nonzero
    active columns and the positive scale convention in the literal
    Moore--Penrose update. No new condition on an arbitrary ALS state is
    introduced.
- Derived invariants supplied by accepted dependencies:
  - E_sm from accepted step_001 proof
    83ce9b561ae357ace3afd0f3be937b154643ab0b4b008b14bd16a6aabf7b9764
    and review
    4313048f58f570d9427ed2f59c3962b113c076e5a9381592de4e7e77e23e3458.
    It supplies unit realized columns, q_real<=q_*, Gamma<=1.01,
    positive realized weights, and the direction-only cyclic pair floor
    1-q_*^2.
  - E_best and E_quotient from accepted step_007 proof
    36058dc7e1c1d72d5541422e33b7330038a2d99ebbe03711da8e150b8a62f792
    and review
    6ca23ff8669d80026d04d3788f1e917f54b71fd00882104d5013cdd13411e8e2.
    In particular, it supplies the proof-only oriented matrices bar P_M,
    the positive common amplitude factors R=diag(1+alpha_j) with
    |alpha_j|<=128 omega, and
    bar P_M=G_M B_M+N_M, G_M^T N_M=0,
    ||B_M-I||_(row,1)<=7 omega,
    ||B_M-I||_(col,1)<=33 omega, and
    max_j ||N_M(:,j)||_2<=tau_r.
- Local conditional hypotheses:
  - Units 003a--003b temporarily assume that already-carried held directions
    lie in the target span and have quotient error at most rho_ALS/3. Unit 005
    proves this condition chronologically before each use; it is not a
    theorem-facing assumption.
- No global diagnostic, archived artifact, prior idea branch, or downstream
  proof is used as evidence.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under E_sm and the accepted step_007 decomposition, the exact same-mode Gram splits into a parallel part plus F_M, and every held pair's perpendicular contribution has induced row and column mass at most beta_perp. | Retains the coherent shared-perpendicular field, including r tau_r^4. |
| unit_002 | proposition | Under E_sm and unit 001, the initial U held normalized cross and pair Grams differ from the target pair Gram by at most 96 omega and 192 omega+2 beta_perp, and the normalized pair Gram has the 31/32 floor. | Establishes the first ordinary inverse branch. |
| unit_003a | lemma | For each carried target-span held direction, the unit-column identity removes the diagonal linear term; explicit mixed initial/carried and two-carried Hadamard expansions give both induced-orientation cross and pair-Gram bounds. | Supplies the termwise V/W Gram perturbations. |
| unit_003b | proposition | Under the carried-Gram lemma and a current inverse floor, the relative coefficient matrix, its diagonal lower bound, the normalized output directions, and the single refreshed product vector obey the scale-equivariant resolvent bound. | Supplies the rank-free coefficient and quotient transfer used at U,V,W. |
| unit_004 | lemma | If the current active pair Gram is invertible with the already-proved 31/32 floor and the active scales are positive, the exact zero-padded Moore--Penrose solve equals the rank-r solve and its output is in range(G_M). | Proves zero padding and N_M^+=0 without a downstream/circular premise. |
| unit_005 | proposition | In chronological U,V,W order, the three pair floors hold before use; separate scalar output envelopes satisfy eps_U<=3072 eta, eps_V<=3072 eta+eps_U/8, eps_W<=3072 eta+(eps_U+eps_V)/8; the final quotient tuple has the maximum bound <4096 eta. | Produces the complete first-sweep target-span entry. |
| unit_006 | claim | The preceding units package E_pair_entry and E_parallel_entry; the exact orthogonal equal-weight stationary specialization has zero contamination and zero first-sweep error. | Closes the target interface and baseline obligation. |

Atomic step = no. The collective Gram identity, first inverse,
quotient transfer, exact range/zero-padding identity, and chronological
recurrence are independent nontrivial proof units.

## Cited Result Applications

### Accepted realized-geometry dependency

The accepted step_001 interface states that, on E_sm, each G_M has unit
columns, H_M=G_M^T G_M has off-diagonal row and column mass at most q_*,
and each direction-only cyclic pair Gram J_{0,M}=H_{M'} circ H_{M''}
has

\[
  \lambda_{\min}(J_{0,M})\ge 1-q_*^2.                 \tag{1}
\]

It also supplies Gamma<=1.01 and positive lambda_j. These are accepted
derived outputs, not assumptions on a generic quotient state.

### Accepted selected-entry dependency

The accepted step_007 lemmas give, after its proof-only permutation and
orientation,

\[
 \bar P_M=G_MB_M+N_M,\qquad G_M^TN_M=0,                 \tag{2}
\]
\[
 \|B_M-I\|_{\mathrm{row},1}\le7\omega,\quad
 \|B_M-I\|_{\mathrm{col},1}\le33\omega,\quad
 \max_j\|N_M(:,j)\|_2\le\tau_r.                        \tag{3}
\]

They also give the common equal-norm represented-product factor
R=diag(1+alpha_j) with |alpha_j|<=128 omega. The bars preserve the
literal initialized rank-one terms. This is a same-initialization interface;
it contains no later ALS or basin conclusion.

### Elementary current-notation tools

For matrices with compatible dimensions, the induced norms satisfy
||AB||_(row,1)<=||A||_(row,1)||B||_(row,1) and the analogous column
inequality. Also

\[
 \|A\circ B\|_{\mathrm{row},1}
 \le \|A\|_{\mathrm{row},1}\max_{ij}|B_{ij}|,\qquad
 \|A\circ B\|_{\mathrm{col},1}
 \le \|A\|_{\mathrm{col},1}\max_{ij}|B_{ij}|.           \tag{4}
\]

These follow by expanding each row or column sum. For a real symmetric
matrix, ||J-J_0||_2<=||J-J_0||_(row,1) and Weyl's inequality give a
minimum-eigenvalue transfer. If both induced norms of A are below one, the
Neumann series gives the corresponding inverse bound. These are
finite-dimensional identities, not imported theorem assumptions.

## Local Derivation

Throughout this proof put

\[
 q:=q_*=1/4096,\qquad t:=\tau_r={q^2\over10^4r},\qquad
 \omega:=q^2+rt,
\]
\[
 \beta:=2(1+q)(1+48\omega)^2t^2+rt^4,\qquad
 \eta:=\omega+\beta,\qquad \rho_0:=\rho_{\rm ALS}=1/1024. \tag{5}
\]

For each mode let H_M=G_M^T G_M, C_M=B_M-I,
H_M^par=B_M^T H_M B_M, and F_M=N_M^T N_M. Define
||A||_rc=max(||A||_(row,1),||A||_(col,1)). The target pair Gram for a
mode M is J_{0,M}=H_{M'} circ H_{M''}. The proof-local diagonal matrices
are D_lambda=diag(lambda_j^(1/3)), Lambda=diag(lambda_j), and
D_in=D_lambda R_in, where R_in is the current common equal-norm product
factor. At the initial U update R_in=R=diag(1+alpha_j) from step_007;
after a refresh R_in is recomputed from the single current log register.

For a normalized target-span direction matrix P_M=G_M(I+E_M), define the
scalar output envelope (including the one product-vector output) by

\[
 \varepsilon_M:=\max\{\|E_M\|_{\mathrm{row},1},
 \|E_M\|_{\mathrm{col},1},
 \max_j\|G_ME_M(:,j)\|_2,\ \|s_M\|_\infty\}.             \tag{6}
\]

Here \(s_M\in\mathbb R^r\) is the single represented-product log vector
emitted by the mode-\(M\) block; the subscript records the block, not a third
simultaneous amplitude field.  The symbols
\(\mathbf z_U,\mathbf z_V,\mathbf z_W\) below denote chronological tuple
states, whereas \(\varepsilon_U,\varepsilon_V,\varepsilon_W\) are scalar
envelopes.  Only the final legal target-span tuple \(e^1\) is assigned the
setting's \(d_Q\) norm.

### unit_001: lemma

**Lemma (collective perpendicular pair-Gram ledger).**
\label{lem:p1-i6-s007b-perp-ledger}

Under E_sm and the accepted step_007 decomposition (2)--(3), for every
mode M,

\[
 \bar P_M^T\bar P_M=H_M^{\rm par}+F_M,                \tag{7}
\]

and, for a held pair (M',M''), the portion of its direction pair Gram
containing at least one perpendicular factor is

\[
 H_{M'}^{\rm par}\circ F_{M''}
 +F_{M'}\circ H_{M''}^{\rm par}
 +F_{M'}\circ F_{M''}.                                \tag{8}
\]

Both its induced row and column norms are at most beta in (5).

**Proof.**

Equation (7) follows by expanding (2); the cross terms vanish because
G_M^T N_M=0. Every entry of F_M obeys
|F_M(i,j)|<=||N_M(:,i)||_2||N_M(:,j)||_2<=t^2. Moreover, by (4) and
||C_M||_(row,1),||C_M||_(col,1)<=48 omega,

\[
 \|H_M^{\rm par}\|_{\rm rc}
 \le (1+q)(1+48\omega)^2.                              \tag{9}
\]

For a row (and identically for a column), (4) and the entrywise bound on F
give

\[
 \|H_{M'}^{\rm par}\circ F_{M''}\|_{\rm rc}
 \le (1+q)(1+48\omega)^2t^2,
\]

and the same bound holds for the other mixed term. The last term has at
most r entries per row or column, each bounded by t^4, so it is at most
rt^4. Summing proves the asserted beta bound. This explicitly retains
coherent perpendicular columns; no rank-free estimate for F_M is used.
For the numerical reserve, q<=1/4096, r>=3, and omega<6*10^(-8) imply
(1+q)(1+48 omega)^2<2. Hence

\[
 2(1+q)(1+48\omega)^2t^2
 <{4q^4\over10^8r^2}\le {1\over4}\,10^{-8}q^2,
 \qquad
 rt^4={q^8\over10^{16}r^3}\le {1\over4}\,10^{-8}q^2.
\]

Since omega>=q^2, these two inequalities give beta<10^(-8)omega.

### unit_002: proposition

**Proposition (initial normalized cross/pair Grams and inverse branch).**
\label{prop:p1-i6-s007b-initial-gram}

Under E_sm, the accepted step_007 decomposition, and Lemma
\ref{lem:p1-i6-s007b-perp-ledger}, define for the initial U update

\[
 C_U^{\rm cr}:=(G_V^T\bar P_V)\circ(G_W^T\bar P_W),\qquad
 J_U:=\bar P_V^T\bar P_V\circ\bar P_W^T\bar P_W.        \tag{10}
\]

Then

\[
 \|C_U^{\rm cr}-J_{0,U}\|_{\rm rc}\le96\omega,\qquad
 \|J_U-J_{0,U}\|_{\rm rc}\le192\omega+2\beta<1/512,   \tag{11}
\]

and lambda_min(J_U)>=31/32. Consequently the amplitude-scaled active
Gram D_in^2 J_U D_in^2 is on the ordinary inverse branch.

**Proof.**

Write (C_M=B_M-I).  The transpose swaps the two induced norms, so the
following common bound is used (rather than an asymmetric row/column claim):
\[
\begin{aligned}
 \|C_M^TH_M+H_MC_M\|_{\rm row,1}
 &\le(33+7)(1+q)\omega,\\
 \|C_M^TH_M+H_MC_M\|_{\rm col,1}
 &\le(7+33)(1+q)\omega,\\
 \|C_M^TH_MC_M\|_{\rm row,1},\ \|C_M^TH_MC_M\|_{\rm col,1}
 &\le231(1+q)\omega^2.
\end{aligned}                                                   \tag{12}
\]
Indeed, for the first row estimate (C_M^T) contributes its row norm
(33\omega) and (C_M) its row norm (7\omega); the column estimate is
the transposed calculation.  Hence, for both orientations,
\[
 \|H_M^{\rm par}-H_M\|_{\rm rc}
 \le40(1+q)\omega+231(1+q)\omega^2<48\omega.          \tag{13}
\]
This is a single valid common bound for the symmetric difference in (13),
and is the bound used below.

The same-mode parallel Gram has
\(\|H_M^{\rm par}\|_{\rm rc}\le(1+q)(1+48\omega)^2).  Expanding the
parallel pair difference and applying (4), with the common (48\omega)
bound in each orientation, gives
\[
 \|H_V^{\rm par}\circ H_W^{\rm par}-J_{0,U}\|_{\rm rc}
 \le2(1+q)(1+48\omega)^2(48\omega)+(48\omega)^2
 <192\omega.                                             \tag{14}
\]
For the cross Gram, (G_M^T\bar P_M=H_MB_M), and the same expansion with
the supplied (7\omega,33\omega) bounds gives
\[
 \|(H_VC_V)\circ H_W+H_V\circ(H_WC_W)
 +(H_VC_V)\circ(H_WC_W)\|_{\rm rc}<96\omega.             \tag{15}
\]
Adding the exact perpendicular identity (8) to (14) proves the pair part of
(11), with the displayed (2\beta) reserve covering the two mixed
parallel/perpendicular terms in both orientations.  Since (1) holds and
the common perturbation in (11) is (<1/512), Weyl's inequality gives
\[
 \lambda_{\min}(J_U)
 \ge1-q^2-(192\omega+2\beta)>31/32.                   \tag{16}
\]
The diagonal (D_{\rm in}=D_\lambda R) is positive because the accepted
weights are positive and \(|\alpha_j|\le128\omega<1/2\).  Thus the
amplitude-scaled Gram is invertible by diagonal congruence; no absolute
weight scale is used.

### unit_003a: lemma

**Lemma (carried-direction Gram and mixed Hadamard expansion).**
\label{lem:p1-i6-s007b-carried-gram}

Under E_sm, let every already-carried held direction be a unit-column
target-span matrix (P_N=G_N(I+E_N)) with scalar envelope
\(\varepsilon_N\le\rho_0/3\). Put
\[
 Q_N:=G_N^TP_N=H_N+H_NE_N,qquad
 \widehat H_N:=P_N^TP_N=H_N+\Delta_N .                 \tag{17}
\]
Then, in both induced orientations,
\[
\begin{aligned}
 2(H_NE_N)_{jj}+(E_N^TH_NE_N)_{jj}&=0,
 &|(H_NE_N)_{jj}|&\le\tfrac12\varepsilon_N^2,\\
 \|\Delta_N\|_{\rm rc}&\le3\varepsilon_N,
 &\operatorname{diag}(\Delta_N)&=0.                  \tag{18}
\end{aligned}
\]
If \(\Delta C_M^0,\Delta J_M^0\) denote the cross/pair differences with
all carried directions replaced by their target matrices (initial held
matrices, if any, are left unchanged), then
\[
\begin{aligned}
 \|\Delta C_M-\Delta C_M^0\|_{\rm rc}
 &\le(8q+4\rho_0)\sum_{N\in\mathcal H_M}\varepsilon_N,\\
 \|\Delta J_M-\Delta J_M^0\|_{\rm rc}
 &\le(8q+16\rho_0)\sum_{N\in\mathcal H_M}\varepsilon_N. \tag{19}
\end{aligned}
\]

**Proof.**

The first identity in (18) is the diagonal of
\(\operatorname{diag}(P_N^TP_N)=\mathbf1\), and the last follows because
both \(P_N\) and \(G_N\) have unit columns.  Since
\(\|H_N\|_{\rm rc}\le1+q\),
\[
 \|H_NE_N-\operatorname{Diag}(H_NE_N)\|_{\rm rc}
 \le(1+q)\varepsilon_N,qquad
 \|\Delta_N\|_{\rm rc}
 \le2(1+q)\varepsilon_N+(1+q)\varepsilon_N^2<3\varepsilon_N.
\]
For an initial held matrix, (2)--(3), orthogonality, and
\(34\omega+\tau_r^2<q\) imply
\(|(G_N^T\bar P_N)_{ij}|,|(\bar P_N^T\bar P_N)_{ij}|\le2q\) for
\(i\ne j\), while every diagonal is at most \(1+2q\).

The exact mixed expansions used later are, at V (U carried and W initial),
\[
 C_V-C_V^0=(H_UE_U)\circ\bar Q_W,qquad
 J_V-J_V^0=\Delta_U\circ\bar H_W,                    \tag{20}
\]
and, at W (both held modes carried),
\[
\begin{aligned}
 C_W-C_W^0&=(H_UE_U)\circ H_V+H_U\circ(H_VE_V)
 +(H_UE_U)\circ(H_VE_V),\\
 J_W-J_W^0&=\Delta_U\circ H_V+H_U\circ\Delta_V
 +\Delta_U\circ\Delta_V.                             \tag{21}
\end{aligned}
\]
Split each (H_NE_N) into its off-diagonal part and the diagonal in (18).
Applying the Hadamard inequality (4) separately to rows and columns gives
\[
\begin{aligned}
 \|C_V-C_V^0\|_{\rm rc}
 &\le2q(1+q)\varepsilon_U+(1+2q)\tfrac12\varepsilon_U^2
 \le(4q+2\rho_0)\varepsilon_U,\\
 \|J_V-J_V^0\|_{\rm rc}
 &\le2q(3\varepsilon_U)\le(8q+4\rho_0)\varepsilon_U.  \tag{22}
\end{aligned}
\]
In (21), the first two cross terms obey the first bound in (22), the last
cross term is at most \((1+q)^2\varepsilon_U\varepsilon_V\), and the first
two pair terms are at most \(2q(3\varepsilon_U+3\varepsilon_V)\).  The last
pair term is at most \(9\varepsilon_U\varepsilon_V\).  Since
\(ab\le(\rho_0/6)(a+b)\) for \(a,b\le\rho_0/3\), these estimates imply
\[
\begin{aligned}
 \|C_W-C_W^0\|_{\rm rc}
 &\le(8q+4\rho_0)(\varepsilon_U+\varepsilon_V),\\
 \|J_W-J_W^0\|_{\rm rc}
 &\le(8q+16\rho_0)(\varepsilon_U+\varepsilon_V).       \tag{23}
\end{aligned}
\]
Equations (22)--(23) prove (19) in both induced orientations and show
explicitly where the off-diagonal \\(q\\) and quadratic \\(\\rho_0\\) charges enter.

### unit_003b: proposition

**Proposition (held-input resolvent and scale-equivariant normalized output).**
\label{prop:p1-i6-s007b-held-transfer}

Under E_sm, the accepted step_007 interface, Lemma
\ref{lem:p1-i6-s007b-carried-gram}, and the local condition that any
already-carried held direction has target-span envelope at most
rho_0/3, consider one exact mode-M solve. Let Delta_C and Delta_J denote
the normalized cross and pair-Gram differences from J_{0,M}. If
||Delta_J||_rc<=1/64, then the exact coefficient matrix is

\[
 Z_M=\Lambda C_M^{\rm cr}J_M^{-1}R_{\rm in}^{-2}D_\lambda^{-2}, \tag{16}
\]

and the canonical unit-direction/product refresh has envelope

\[
 \varepsilon_M^+\le3072\eta+\ell_0\sum_{N\in\mathcal H_M}\varepsilon_N,\qquad
 \ell_0:=8q+32\rho_0={17\over512}<{1\over8}.           \tag{17}
\]

Here \(\mathcal H_M\) is the set of held directions already produced in the
target span; initial held directions contribute only to the 3072 eta term.
The normalized Gram bounds needed for the next solve satisfy

\[
 \|\Delta_C\|_{\rm rc}\le96\omega+8\sum_{N\in\mathcal H_M}\varepsilon_N,
\quad
 \|\Delta_J\|_{\rm rc}\le192\omega+2\beta+8\sum_{N\in\mathcal H_M}\varepsilon_N. \tag{18}
\]

**Proof.**

Let K_M^tar=G_{M'} odot G_{M''} and
K_M^hold=P_{M'} odot P_{M''} after the proof-only orientation. The held
active factors are P_{M'}D_in and P_{M''}D_in, so their Khatri--Rao
matrix is K_M^hold D_in^2 and its Gram is D_in^2J_MD_in^2. Exact
matricized ALS gives

\[
 C_M^{\rm cr}:=(G_{M'}^TP_{M'})\circ(G_{M''}^TP_{M''}),\qquad
 J_M:=P_{M'}^TP_{M'}\circ P_{M''}^TP_{M''}.             \tag{16a}
\]

For positive diagonal held rescalings S_{M'} and S_{M''}, the design is
right-multiplied by S_{M'}S_{M''}; the same diagonal factors appear on both
sides of its Gram and cancel in the exact least-squares solve. The resulting
new mode is therefore on the same literal rank-one orbit after the
compensating product-one rescaling. This proves the scale-equivariance used
to represent every intermediate by the common D_in gauge.

\[
 T_{(M)}=G_M\Lambda(K_M^{\rm tar})^T,\quad
 X_M^+=G_M\Lambda(C_M^{\rm cr})J_M^{-1}D_{\rm in}^{-2}, \tag{19}
\]

which is (16) after D_in^{-2}=R_in^{-2}D_lambda^{-2}.

For the all-initial baseline, (11) gives
\(\|\Delta C_M^0\|_{\rm rc}\le96\omega) and
\(\|\Delta J_M^0\|_{\rm rc}\le192\omega+2\beta\).  The exact carried
contributions are those in Lemma~\ref{lem:p1-i6-s007b-carried-gram}; in
particular, its equations (20)--(23) display separately the mixed V terms,
the two-carried W terms, and both induced orientations.  Adding those bounds
to the all-initial ledger gives (18), with the (2\beta) charge omitted
after the perpendicular fields have been removed.

It remains to transfer (18) through the exact solve. Since
J_{0,M}=I+E_{0,M} with ||E_{0,M}||_rc<=q^2 and
||J_M-J_{0,M}||_rc<=1/64, the induced-norm Neumann series gives

\[
 \|J_M^{-1}\|_{\rm rc}<2,\qquad
 \|J_M^{-1}-J_{0,M}^{-1}\|_{\rm rc}
 \le4\|J_M-J_{0,M}\|_{\rm rc}.                         \tag{22}
\]

Define the scale-free relative coefficient matrix
\[
 \mathcal A_M:=\Lambda C_M^{\rm cr}J_M^{-1}\Lambda^{-1}.
\]
Then (16) is equivalently
\[
 X_M^+=G_M\mathcal A_MR_{\rm in}^{-2}D_\lambda,qquad
 \mathcal A_M-I=\Lambda(C_M^{\rm cr}-J_M)J_M^{-1}\Lambda^{-1}. \tag{23}
\]
The diagonal conjugation costs at most \(\Gamma\le1.01), while (22) and
Lemma~\ref{lem:p1-i6-s007b-carried-gram} give, in both orientations,
\[
\begin{aligned}
 \|\mathcal A_M-I\|_{\rm rc}
 &\le8\Gamma^2(\|\Delta C_M^0\|_{\rm rc}+\|\Delta J_M^0\|_{\rm rc})
 +(32q+16\rho_0)\sum_{N\in\mathcal H_M}\varepsilon_N,\\
 d_M:=\max_j\|G_M(\mathcal A_M-I)(:,j)\|_2
 &\le4\Gamma^2(\|\Delta C_M^0\|_{\rm rc}+\|\Delta J_M^0\|_{\rm rc})
 +(8q+8\rho_0)\sum_{N\in\mathcal H_M}\varepsilon_N.       \tag{24}
\end{aligned}
\]
The first line is below (1/4), hence every diagonal entry of
\(\mathcal A_M\) is at least (3/4).  Put
\(\nu_{M,j}=\|G_M\mathcal A_M(:,j)\|_2\),
\(E_M^+=\mathcal A_M\operatorname{diag}(\nu_M)^{-1}-I), and
\(s_{M,j}^+=\log\nu_{M,j}).  Since \(d_M<1/8\),
\[
 |\nu_{M,j}^{-1}-1|\le2d_M,qquad |\log\nu_{M,j}|\le2d_M,qquad
 \|E_M^+\|_{\rm rc}\le\|\mathcal A_M-I\|_{\rm rc}+2(1+\|\mathcal A_M-I\|_{\rm rc})d_M. \tag{25}
\]
Also \(\max_j\|G_ME_M^+(:,j)\|_2\le3d_M\).  Equations (24)--(25),
with (q=\rho_0/4), bound the carried part by
\(36q+24\rho_0\le8q+32\rho_0), while the static part obeys
\[
 8(1.01)^2(288\omega+2\beta)<3072(\omega+\beta).       \tag{26}
\]
This proves (17), including the normalized direction and vector-(s) bounds.
Finally the held norms and the solved norm multiply as
\[
 (\lambda_j^{1/3}e^{s_j/3})^2
 \bigl(\lambda_j^{1/3}e^{-2s_j/3}\nu_{M,j}\bigr)=\lambda_j\nu_{M,j}, \tag{27}
\]
so the incoming common product register cancels exactly; (s_M^+) is the
single refreshed vector, not three historical scalar fields.

### unit_004: lemma

**Lemma (exact range containment and zero-padding identity).**
\label{lem:p1-i6-s007b-range-padding}

Under E_sm, the exact unfolding identity, a positive active scale matrix
\(D_{\rm in}\), and the local current-solve hypothesis
\(\lambda_{\min}(J_M)\ge31/32\), the exact cyclic active update in mode M
has the form \(X_M^+=G_M Z_M\), while its inactive \(k-r\) columns remain
zero.  Thus its perpendicular field is exactly zero: \(N_M^+=0\).

**Proof.**

The setting's exact unfolding identity is

\[
 T_{(M)}=G_M\Lambda(G_{M''}\odot G_{M'})^T.             \tag{25}
\]

Let the active columns be ordered first. Because the other k-r factors are
exactly zero, the full Khatri--Rao design has the block form
[K_M^hold D_in^2,0], and its Gram is

\[
 \begin{bmatrix}D_{\rm in}^2J_MD_{\rm in}^2&0\\0&0\end{bmatrix}. \tag{26}
\]

The local floor makes \(J_M\) invertible before this lemma is invoked.  The
Moore--Penrose inverse prescribed in the setting is therefore
\[
\operatorname{diag}\!\left(D_{\rm in}^{-2}J_M^{-1}D_{\rm in}^{-2},0\right).
\]
Multiplying (25) by this block matrix gives the active formula (19) and zero
inactive columns.  Every active output is a linear combination of columns of
\(G_M\), hence lies in \(\operatorname{range}(G_M)\) and has zero
perpendicular field.  The lemma is applied only after each chronological
floor is established; it does not use a later first-sweep proposition.

### unit_005: proposition

**Proposition (chronological first-sweep entry).**
\label{prop:p1-i6-s007b-first-sweep}

Under E_sm, E_best, and E_quotient, execute the literal cyclic U,V,W
updates in the setting order and represent each literal intermediate by the
proof-only product-preserving equal-norm refresh.  Let
\(\varepsilon_U,\varepsilon_V,\varepsilon_W\) be the scalar output envelopes
from Proposition~\ref{prop:p1-i6-s007b-held-transfer}; let
\(\mathbf z_U,\mathbf z_V,\mathbf z_W\) denote the chronological tuple states
(the held fields are not identified with these scalars).  Then the normalized
cross and pair-Gram deviations before every solve obey (11) at U and (18) at
V and W; each normalized pair Gram has minimum eigenvalue at least 31/32; and
the scalar envelopes satisfy

\[
 \varepsilon_U\le3072\eta,\qquad
 \varepsilon_V\le3072\eta+{\varepsilon_U\over8},\qquad
 \varepsilon_W\le3072\eta+{\varepsilon_U+\varepsilon_V\over8}. \tag{27}
\]

After the complete sweep all three perpendicular fields vanish.  The legal
completed quotient tuple is
\(\displaystyle e^1=(E_U^+,E_V^+,E_W^+,s_W^+)\), and

\[
 \|e^1\|_Q\le\max\{\varepsilon_U,\varepsilon_V,\varepsilon_W\}
 \le3888\eta<4096\eta<\rho_0/3.                         \tag{28}
\]

**Proof.**

At U, unit 002 gives the pair inverse before the solve.  Applying the
conditional unit 004 at this already-established floor gives \(N_U^+=0\) and
a target-span U output; Proposition~\ref{prop:p1-i6-s007b-held-transfer}
then gives \(\varepsilon_U\le3072\eta\).  The U-held direction is therefore
legal input at V, while W retains only its accepted initial decomposition.
Using (18),

\[
 \|\Delta_J^V\|_{\rm rc}\le192\omega+2\beta+8\varepsilon_U,\qquad
 \|\Delta_C^V\|_{\rm rc}\le96\omega+8\varepsilon_U.      \tag{29}
\]

At W the analogous bounds are

\[
 \|\Delta_J^W\|_{\rm rc}\le192\omega+8(\varepsilon_U+\varepsilon_V),\qquad
 \|\Delta_C^W\|_{\rm rc}\le96\omega+8(\varepsilon_U+\varepsilon_V), \tag{30}
\]

because the perpendicular ledger has already been removed from U and V.
The numerical values in (5) imply

\[
 \beta<10^{-8}\omega,\quad \eta<6.1\cdot10^{-8},\quad
 \varepsilon_U<1.9\cdot10^{-4},\quad
 \varepsilon_U+\varepsilon_V<4.0\cdot10^{-4}.           \tag{31}
\]

Consequently the right sides for Delta_J^V and Delta_J^W are below 1/64.
Since q^2<1/64, Weyl's inequality and (1) give

\[
 \lambda_{\min}(J_V),\lambda_{\min}(J_W)
 \ge1-q^2-1/64>31/32.                                  \tag{32}
\]

Thus the ordinary inverse branch is established before each V/W solve.
Applying unit 004 immediately after each floor gives \(N_V^+=0\) and
\(N_W^+=0\), respectively.  Proposition~\ref{prop:p1-i6-s007b-held-transfer}
then gives the second and third scalar recurrences in (27), because
\(\ell_0<1/8\).  Substitution yields

\[
 \varepsilon_V\le3456\eta,\qquad
 \varepsilon_W\le3888\eta<4096\eta.                    \tag{33}
\]

For the final numerical comparison, beta<10^{-8}omega and
omega=q^2(1+10^{-4}) imply

\[
 4096\eta<4096q^2(1.00011)=q(1.00011)
 <{1\over3072}={\rho_0\over3}.                          \tag{34}
\]

The three conditional applications of unit 004 have shown
\(N_U^+=N_V^+=N_W^+=0\); the final refresh is a positive product-one scaling
and does not reintroduce perpendicular parts.  The completed common register
is only \(s_W^+\): \(s_U^+\) and \(s_V^+\) were overwritten.  Therefore the
maximum in (28), rather than a single scalar reused for all fields, is exactly
the setting's legal \(d_Q\) interface.

### unit_006: claim

**Claim (entry interface and baseline reduction).**
\label{claim:p1-i6-s007b-entry}

Under the hypotheses of Proposition~\ref{prop:p1-i6-s007b-first-sweep},
E_pair_entry consists of the three normalized inverse branches and their
cross/pair bounds, while E_parallel_entry consists of exact range entry,
N_U^+=N_V^+=N_W^+=0, and (28). At the exact orthogonal equal-weight
stationary specialization, beta=0, every normalized cross and pair Gram is
the identity, every update is stationary, and e^1=0.

**Proof.**

The first part is exactly the producer-consumer interface established by
units 001--005: the pair ledger is consumed before each inverse, the active
Moore--Penrose block is legal, and the range output is produced before the
target-span state is consumed downstream. The construction is finite (one
cyclic sweep), so no repeated rt^4 accumulation is asserted.

At the orthogonal equal-weight stationary point, H_M=I, B_M=I, N_M=0,
R=I, and alpha=0. Hence F_M=0, beta=0, C_M^cr=J_M=I, and (16) returns
Z_M=D_lambda in every mode. The product-one refresh installs s=0, and the
exact range identity leaves all three directions unchanged. This preserves
the zero-residual baseline rather than replacing it by a finite tolerance
floor.

## Target-Step Assembly

Lemma~\ref{lem:p1-i6-s007b-perp-ledger} proves the exact collective identity
and the required

\[
 \beta_\perp=2(1+q_*)(1+48\omega)^2\tau_r^2+r\tau_r^4
\]

bound in both induced orientations. Proposition
\ref{prop:p1-i6-s007b-initial-gram} proves the initial 96 omega cross
bound, the 192 omega+2 beta_perp pair bound, and the first 31/32 inverse
floor. Proposition~\ref{prop:p1-i6-s007b-held-transfer} supplies the exact
amplitude-conjugated coefficient formula, the carried-direction bounds, and
the common-product quotient transfer. Lemma
\ref{lem:p1-i6-s007b-range-padding} proves exact zero-padding and range
containment for every nonsingular active solve. Proposition
\ref{prop:p1-i6-s007b-first-sweep} applies those results in chronological
U,V,W order, proves the two later inverse floors before use, and obtains
epsilon_U<=3072 eta, epsilon_V<=3456 eta, and the final maximum
<4096 eta<rho_ALS/3, with all
three perpendicular fields zero. Claim~\ref{claim:p1-i6-s007b-entry} packages
these outputs as E_pair_entry and E_parallel_entry and preserves the exact
orthogonal baseline. Therefore the exact sketch-row target is proved.

## Explicit Rate Audit

- Exposed variables: r, q_*, tau_r, omega, beta_perp, eta, Gamma, the
  induced row/column Gram masses, the three subupdate index positions, and
  the quotient direction/product error and the represented-product log vector. The absolute lambda_j scale is
  exposed only through the ratio Gamma.
- Hidden constants may depend on: fixed numerical constants in the setting
  (q_*, rho_ALS, and the displayed 7, 33, 48, 96, 192, 3072, 4096
  budgets) only.
- Hidden constants may not depend on: n, k, kappa_0, rho, epsilon, either
  confidence parameter, the deterministic base triple, target labels, or a
  generated condition number.
- Fixed quantities: condition first on the accepted E_sm instance and the
  finite selected entry; then execute exactly one cyclic U,V,W sweep. The
  values q_* and rho_ALS are fixed numerical constants.
- Probability mode: deterministic conditional on the accepted derived
  interfaces; this step adds no probability loss.
- Horizon mode: one finite first cyclic sweep, with no all-time or
  horizon-uniform upgrade.
- Norm mode: induced row/column l1 norms for Gram perturbations, Euclidean
  column direction errors, the single represented-product log coordinate,
  and the setting quotient norm d_Q at the completed state.
- Admissibility conditions and auxiliary tolerances: only the primitive
  setting scale convention, E_sm, E_best, E_quotient, and the locally
  proved rho_ALS/3 carried-state bound are used. The latter is proved by
  unit 005 before the V and W applications.
- Term absorption or simplification inequalities: (9), (11)--(15),
  (22)--(24), and (31)--(34) explicitly retain tau_r^2, r tau_r^4, q_*,
  Gamma, and the normalization factors.
- Probability conversion: None; the conditional pathwise conclusion is
  passed unchanged to downstream steps.
- Contribution to any Rate Specialization Bridge: supplies the finite entry
  offset 4096(omega+beta_perp)<rho_ALS/3; no public rate is simplified here.
- Baseline-reduction check: at the exact orthogonal equal-weight stationary
  state, F_M=0, beta_perp=0, all three solves return the target, and the
  quotient error is exactly zero.

## Blockers

None.

## Notation And Assumption Notes

- H_M, C_M, H_M^par, F_M, J_M, and the normalized cross matrices are
  appendix-local exact objects. D_lambda, R, D, and Z_M are proof-local
  bookkeeping. The only public-facing exports are the E_pair_entry
  inverse/range interface and the E_parallel_entry bound.
- F_M=N_M^T N_M is retained as a collective field; its mixed Hadamard
  terms are controlled by the row/column mass of H_M^par, while its fully
  perpendicular term carries the explicit r tau_r^4 budget.
- beta, eta, rho_0, and ell_0 are directly defined from setting constants
  and proved inequalities. rho_0 is the sketch-defined fixed downstream
  tube constant, not an added assumption.
- The generated target-span condition is supplied only by Lemma
  \ref{lem:p1-i6-s007b-range-padding} after each inverse; it is never used
  to prove the first U inverse. The local target-span condition in units
  003a--003b
  is therefore conditional and is discharged chronologically by unit 005.
- The common product register is refreshed after each held-input solve by a
  product-one equal-norm representation. Historical intermediate scalar
  values are not accumulated in the completed state.
- The source-to-claim mechanism is noncircular: accepted selected-entry
  projection controls feed the collective ledger; the target pair floor and
  induced resolvent feed each inverse; exact unfolding independently forces
  range containment; only then is the target-span output consumed.
- The exact orthogonal stationary entry is active and fixed: N_M=0, B_M=I,
  R=I, and the update returns the same state. If the pair floor or the exact
  unfolding range were removed, an inverse or target-span claim could fail;
  both sources are explicitly proved here or supplied by E_sm.
- No global_proof.md statement is used as evidence, a cited result, an
  assumption source, or authority to change the target claim.
