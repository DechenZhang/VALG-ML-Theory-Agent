# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: On an event of probability at least
  (1-\delta_{\rm sm}), prove realized norm retention,
  (q_{\rm real}\le q_*), (\Gamma\le1.01), and every cyclic
  Khatri--Rao Gram floor (1-q_*^2), with the three perturbation scales
  exposed separately.
- Depends on: None.
- Assumptions used: `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
  `assump:smoothing-margin` (all primitive).
- Technical challenge: normalized Gaussian Gram perturbation and row/union
  bookkeeping.
- Intended proof tool or cited result: Gaussian concentration,
  normalization expansion, Schur product, and Gershgorin.
- Output target: (E_{\rm sm}).
- Rate objective: smoothed-instance geometry with explicit
  (n,r,\kappa _0,\rho,\delta_{\rm sm}) dependence and probability
  conversion.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base-scale`: every deterministic base-column norm lies in
    ([\kappa _0^{-1},\kappa _0]).
  - `assump:cumulative-gram`: every base normalized Gram has off-diagonal
    absolute row mass at most (q_*/4).
  - `assump:base-weight-balance`:
    (\max_j\bar\lambda_j/\min_j\bar\lambda_j\le801/800).
  - `assump:gaussian-smoothing`: the (3r) perturbations are independent
    (N(0,\rho^2 I_n/n)), with (0<\rho\le1).
  - `assump:smoothing-margin`:
    
    \[
    \kappa _0\rho\le {q_*\over128},\qquad
    r(\kappa _0\rho+\kappa _0^2\rho^2)
    \sqrt{{\log(9r^2/\delta_{\rm sm})\over n}}
    \le {q_*\over32}.
    \]
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency artifacts: None.

The event (E_{\rm sm}) is not assumed.  It is produced below from the five
primitive conditions.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:base-scale}\) and \(\ref{assump:gaussian-smoothing}\), the simultaneous scalar, norm-square, and cross-quadratic concentration event (E_0) defined below has probability at least (1-\delta_{\rm sm}), with every union factor explicit. | Supplies all random estimates from primitive smoothing. |
| `unit_002` | lemma | Under Assumptions~\(\ref{assump:base-scale}\), \(\ref{assump:base-weight-balance}\), and \(\ref{assump:smoothing-margin}\), on the event supplied by Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\), all realized norms are at least ((2\kappa _0)^{-1}), all normalization factors have a common explicit envelope, and (\Gamma\le1.01). | Proves norm retention and weight balance. |
| `unit_003` | lemma | Under Assumptions~\(\ref{assump:cumulative-gram}\) and \(\ref{assump:smoothing-margin}\), on the event supplied by Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\), the normalized realized Gram in every mode has off-diagonal absolute row mass at most (q_*). | Proves (q_{\rm real}\le q_*) while separating all perturbation scales. |
| `unit_004` | lemma | Under the realized Gram conclusion of Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\), every cyclic Khatri--Rao Gram has minimum eigenvalue at least (1-q_*^2). | Supplies the exact positive pair-Gram floor consumed downstream. |

Atomic step = no.  Concentration, normalization/weight control, normalized
Gram control, and spectral conditioning are independent nontrivial claims.

## Cited Result Applications

### Elementary Gaussian concentration package

- Source or name: scalar Gaussian Chernoff bound, the chi-square upper-tail
  bound, and the independent Gaussian bilinear-form bound.  These are used
  in their following current-notation form.  If (Z,Z'\sim N(0,I_n)) are
  independent and (t>0), then
  
  \[
  \Pr\{|v^\top Z|>2\sqrt t\}\le e^{-t}
  \quad(\|v\|_2=1,\ t\ge0),
  \]
  \[
  \Pr\{\|Z\|_2^2>n+2\sqrt{nt}+2t\}\le e^{-t},
  \]
  \[
  \Pr\{|Z^\top Z'|>2\sqrt{nt}+2t\}\le2e^{-t}.
  \]
- Justification of the restatement: the elementary two-sided normal bound
  \(\Pr\{|N(0,1)|\ge u\}\le e^{-u^2/2}\), applied at
  \(u=2\sqrt t\), gives the first inequality.  The second follows by
  optimizing the moment generating function
  (\mathbb E e^{s\|Z\|_2^2}=(1-2s)^{-n/2}).  For the third,
  (\mathbb E e^{sZ^\top Z'}=(1-s^2)^{-n/2}) for (|s|<1); optimizing the
  two Chernoff bounds gives the displayed threshold.  Thus no external
  theorem assumption is imported.
- Instantiated objects: normalized perturbations of each of the three mode
  families, all (3r^2) scalar projections, all
  (3\binom r2) distinct-column quadratic products, and all (3r) squared
  norms.
- Assumption discharge: isotropy and independence are exactly
  `assump:gaussian-smoothing`; deterministic scale bounds are exactly
  `assump:base-scale`; the setting's smoothing margin uses the real quantity
  \(L_{\rm sm}=\log(9r^2/\delta_{\rm sm})\ge0\).
- Conclusion used: the event and probability in
  Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\).

### Schur Gram identity and Gershgorin bound

- Source or name: finite-dimensional Schur Gram identity and the symmetric
  Gershgorin theorem.
- Restated statement: for equal-column matrices (A,B),
  ((A\odot B)^\top(A\odot B)=(A^\top A)\circ(B^\top B)).  If a real
  symmetric matrix has diagonal one and every off-diagonal absolute row sum
  at most (s), then its smallest eigenvalue is at least (1-s).
- Instantiated objects: the three pairs among the realized unit-column
  matrices (U,V,W), with (s=q_*^2).
- Assumption discharge: unit diagonals follow from the setting definition;
  the off-diagonal row estimate is proved by
  Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\).
- Conclusion used: Lemma~\(\ref{lem:p1-i6-s001-khatri-rao}\).

### Local-result flow

- Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\) supplies the single
  generated event used by Lemmas~\(\ref{lem:p1-i6-s001-norm-weight}\) and
  \(\ref{lem:p1-i6-s001-normalized-gram}\).
- Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\) supplies the exact realized
  Gram input used by Lemma~\(\ref{lem:p1-i6-s001-khatri-rao}\).
- The four named lemmas are combined, without any further stochastic event,
  in the target-step assembly.

## Local Derivation

For (M\in\{U,V,W\}), write respectively

\[
(\bar x_{Mj},g_{Mj},x_{Mj})
=(\bar a_j,g_j^{(A)},a_j),\quad
(\bar b_j,g_j^{(B)},b_j),\quad
(\bar c_j,g_j^{(C)},c_j).
\]

Put (s_{Mj}=\|\bar x_{Mj}\|_2),
(\bar m_{Mj}=\bar x_{Mj}/s_{Mj}),
(z_{Mj}=g_{Mj}/s_{Mj}), and

\[
d_{Mj}={\|x_{Mj}\|_2\over s_{Mj}},\qquad
m_{Mj}={\bar m_{Mj}+z_{Mj}\over d_{Mj}}.
\]

Thus the columns (m_{Mj}) are exactly the columns of (U,V,W).  Define

\[
L_{\rm sm}:=\log {9r^2\over\delta_{\rm sm}},\qquad
x_{\rm sm}:=\sqrt{{L_{\rm sm}\over n}},
\]
\[
a_L:=\kappa _0\rho x_{\rm sm},\qquad
a_Q:=\kappa _0^2\rho^2x_{\rm sm},\qquad
a_N:=\kappa _0^2\rho^2,qquad
a_B:=a_L^2.
\tag{1}
\]

Here (a_L) is the linear directional scale after the finite union,
(a_Q) is the centered quadratic scale, (a_N) is the deterministic
normalization scale, and (a_B) is the bilinear Bernstein correction.  The
primitive margin gives the two inequalities used repeatedly below:

\[
r(a_L+a_Q)\le {q_*\over32},qquad
a_L\le {q_*\over32r}\le {q_*\over96}.
\tag{2}
\]

### unit_001: lemma

**Lemma (Simultaneous smoothing concentration ledger).**
\(\label{lem:p1-i6-s001-gaussian-ledger}\)
Under Assumptions~\(\ref{assump:base-scale}\) and
\(\ref{assump:gaussian-smoothing}\), with probability at least
(1-\delta_{\rm sm}), the following event (E_0) holds simultaneously for
all modes (M\in\{U,V,W\}):

\[
|\langle\bar m_{Mj},z_{M\ell}\rangle|\le2a_L
\quad(j,\ell\in[r]),
\tag{3}
\]
\[
\|z_{Mj}\|_2^2\le a_N+2a_Q+2a_B
\quad(j\in[r]),
\tag{4}
\]
\[
|\langle z_{Mj},z_{M\ell}\rangle|
\le2a_Q+2a_B
\quad(j\ne\ell).
\tag{5}
\]

**Proof / justification.**
For (3), each scalar projection is centered Gaussian with variance at most
(\kappa _0^2\rho^2/n).  Taking (t=L_{\rm sm}) in the checked scalar
bound gives failure probability at most (e^{-L_{\rm sm}}) for each of the
(3r^2) projections.

For (4), write (g_{Mj}=(\rho/\sqrt n)Z).  Since
(s_{Mj}^{-2}\le\kappa _0^2), the checked chi-square inequality gives

\[
\|z_{Mj}\|_2^2
\le\kappa _0^2\rho^2
\left(1+2\sqrt{{L_{\rm sm}\over n}}
+2{L_{\rm sm}\over n}\right)
=a_N+2a_Q+2a_B.
\]

For (5), distinct columns are independent.  Scaling the checked bilinear
bound by (\rho^2/(ns_{Mj}s_{M\ell})\le\kappa _0^2\rho^2/n) gives exactly
(2a_Q+2a_B), with failure probability at most
(2e^{-L_{\rm sm}}) per unordered pair.  Therefore

\[
\Pr(E_0^c)
\le3r^2e^{-L_{\rm sm}}
+2\left(3{r(r-1)\over2}\right)e^{-L_{\rm sm}}
+3re^{-L_{\rm sm}}
\le {\delta_{\rm sm}\over3}
+{\delta_{\rm sm}\over3}
+{\delta_{\rm sm}\over3r}
\le {7\delta_{\rm sm}\over9}
\le\delta_{\rm sm}.
\tag{6}
\]

This proves the claim.  In particular, the event is obtained directly from
the primitive smoothing law rather than assumed as realized regularity.

### unit_002: lemma

**Lemma (Norm retention, normalization envelope, and weight balance).**
\(\label{lem:p1-i6-s001-norm-weight}\)
Under Assumptions~\(\ref{assump:base-scale}\),
\(\ref{assump:base-weight-balance}\), and
\(\ref{assump:smoothing-margin}\), on the event (E_0) of
Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\), every realized column is
nonzero and satisfies

\[
\|x_{Mj}\|_2\ge {1\over2\kappa _0}.
\tag{7}
\]

Moreover, with

\[
h_{\rm sm}:=4a_L+a_N+2a_Q+2a_B,
\tag{8}
\]

one has (h_{\rm sm}\le q_*/16),
(1-h_{\rm sm}\le d_{Mj}^2\le1+h_{\rm sm}), and
(\Gamma\le1.01).

**Proof / justification.**
Equation (4) and

\[
\sqrt{1+2x+2x^2}\le1+\sqrt2\,x\qquad(x\ge0)
\]

give

\[
\|z_{Mj}\|_2
\le\kappa _0\rho(1+\sqrt2\,x_{\rm sm})
\le {q_*\over128}+\sqrt2\,{q_*\over96}
\le {3q_*\over128}< {1\over2}.
\tag{9}
\]

The reverse triangle inequality and (s_{Mj}\ge\kappa _0^{-1}) now yield

\[
\|x_{Mj}\|_2=s_{Mj}\|\bar m_{Mj}+z_{Mj}\|_2
\ge s_{Mj}(1-\|z_{Mj}\|_2)
\ge {1\over2\kappa _0},
\]

which proves (7).  Next, the exact normalization identity is

\[
d_{Mj}^2=1+2\langle\bar m_{Mj},z_{Mj}\rangle
+\|z_{Mj}\|_2^2.
\tag{10}
\]

Equations (3)--(4) imply the envelope (8).  By (2), (r\ge3), and
(\kappa _0\rho\le q_*/128),

\[
4a_L+2a_Q\le4(a_L+a_Q)\le {q_*\over24},
\tag{11}
\]
\[
a_N+2a_B
\le\left({q_*\over128}\right)^2
+2\left({q_*\over96}\right)^2
\le {q_*\over96}.
\tag{12}
\]

The final inequality in (12) is direct for the setting value
(q_*=1/4096).  Thus (h_{\rm sm}\le5q_*/96<q_*/16), proving the claimed
normalization envelope.  This calculation displays separately the radial
linear term (4a_L), centered norm-square fluctuation (2a_Q), deterministic
normalization term (a_N), and confidence correction (2a_B).

Finally, (\lambda_j=\bar\lambda_j\prod_Md_{Mj}), so

\[
\Gamma
\le {801\over800}
\left({1+h_{\rm sm}\over1-h_{\rm sm}}\right)^{3/2}.
\tag{13}
\]

For (0\le h\le q_*/16),

\[
\left({1+h\over1-h}\right)^{3/2}
\le(1-h)^{-3}
\le(1-3h)^{-1}
\le1+6h
\le1+{3q_*\over8}< {10001\over10000}.
\tag{14}
\]

Here the penultimate inequality uses (3h\le1/2).  Combining (13)--(14),

\[
\Gamma<{801\over800}{10001\over10000}
={8010801\over8000000}<1.01.
\tag{15}
\]

### unit_003: lemma

**Lemma (Normalized realized Gram row control).**
\(\label{lem:p1-i6-s001-normalized-gram}\)
Under Assumptions~\(\ref{assump:cumulative-gram}\) and
\(\ref{assump:smoothing-margin}\), on the event (E_0) of
Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\), each realized unit-column
matrix (G_M\in\{U,V,W\}) satisfies

\[
q(G_M)=\max_j\sum_{\ell\ne j}
|\langle m_{Mj},m_{M\ell}\rangle|\le q_*.
\tag{16}
\]

More precisely, before normalization the row ledger is

\[
{q_*\over4}
+\underbrace{4(r-1)a_L}_{\text{linear directional}}
+\underbrace{2(r-1)a_Q}_{\text{centered quadratic}}
+\underbrace{2(r-1)a_B}_{\text{bilinear confidence correction}},
\tag{17}
\]

and normalization divides this quantity by at worst
(1-h_{\rm sm}), where (8) separately contains the deterministic scale
(a_N=\kappa _0^2\rho^2).

**Proof / justification.**
For (j\ne\ell), exact expansion before normalization gives

\[
\begin{aligned}
\langle\bar m_{Mj}+z_{Mj},\bar m_{M\ell}+z_{M\ell}\rangle
={}&\langle\bar m_{Mj},\bar m_{M\ell}\rangle\\
&+\langle\bar m_{Mj},z_{M\ell}\rangle
+\langle z_{Mj},\bar m_{M\ell}\rangle
+\langle z_{Mj},z_{M\ell}\rangle.
\end{aligned}
\tag{18}
\]

Summing (18) in absolute value and applying (3), (5), and
`assump:cumulative-gram` yields exactly (17).  Its four pieces obey

\[
\begin{aligned}
{q_*\over4}+4(r-1)a_L+2(r-1)a_Q+2(r-1)a_B
&\le {q_*\over4}+4r(a_L+a_Q)+2ra_L^2\\
&\le {q_*\over4}+{q_*\over8}+{q_*^2\over512r}\\
&\le {q_*\over2}.
\end{aligned}
\tag{19}
\]

The second line is the explicit absorption of the (L_{\rm sm}/n)
Bernstein correction: by (2),
(2ra_L^2\le q_*^2/(512r)).  No logarithmic term is dropped by prose.

By Lemma~\(\ref{lem:p1-i6-s001-norm-weight}\),
(d_{Mj}d_{M\ell}\ge1-h_{\rm sm}\).  Therefore (18)--(19) give

\[
q(G_M)\le {q_*/2\over1-h_{\rm sm}}
\le {q_*/2\over1-q_*/16}
\le {8q_*\over15}<q_*,
\tag{20}
\]

where (q_*=1/4096<1).  This proves (16) in all three modes and hence
(q_{\rm real}\le q_*).

### unit_004: lemma

**Lemma (Cyclic Khatri--Rao spectral floors).**
\(\label{lem:p1-i6-s001-khatri-rao}\)
Under the conclusion of
Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\), for each mode (M), if
(M',M'') are the other two modes, then

\[
\lambda_{\min}\!\left(
(G_{M'}\odot G_{M''})^\top(G_{M'}\odot G_{M''})
\right)\ge1-q_*^2.
\tag{21}
\]

**Proof / justification.**
Let (H_{M'}=G_{M'}^\top G_{M'}) and
(H_{M''}=G_{M''}^\top G_{M''}).  The checked Schur Gram identity gives

\[
(G_{M'}\odot G_{M''})^\top(G_{M'}\odot G_{M''})
=H_{M'}\circ H_{M''}.
\]

Its diagonal is one.  In row (j), Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\)
implies

\[
\sum_{\ell\ne j}
|(H_{M'})_{j\ell}(H_{M''})_{j\ell}|
\le
\left(\sum_{\ell\ne j}|(H_{M'})_{j\ell}|\right)
\left(\sum_{\ell\ne j}|(H_{M''})_{j\ell}|\right)
\le q_*^2.
\tag{22}
\]

The checked symmetric Gershgorin bound now gives (21).  The argument applies
to all three cyclic held pairs and to the exact realized Khatri--Rao designs
used later.

## Target-Step Assembly

Define (E_{\rm sm}) to be the event that all realized columns have norm at
least ((2\kappa _0)^{-1}), (q_{\rm real}\le q_*),
(\Gamma\le1.01), and all three cyclic Khatri--Rao Grams have minimum
eigenvalue at least (1-q_*^2).

Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\) produces (E_0) with
probability at least (1-\delta_{\rm sm}).  On that one event,
Lemma~\(\ref{lem:p1-i6-s001-norm-weight}\) gives norm retention and the
weight-ratio bound, Lemma~\(\ref{lem:p1-i6-s001-normalized-gram}\) gives
(q_{\rm real}\le q_*), and
Lemma~\(\ref{lem:p1-i6-s001-khatri-rao}\) gives every required spectral
floor.  Hence (E_0\subseteq E_{\rm sm}) and

\[
\Pr(E_{\rm sm})\ge\Pr(E_0)\ge1-\delta_{\rm sm}.
\]

Equations (17), (8), and (19) expose, respectively, the row-summed linear
directional scale (r\kappa _0\rho\sqrt{L_{\rm sm}/n}), the centered
quadratic scale (r\kappa _0^2\rho^2\sqrt{L_{\rm sm}/n}), and the
deterministic normalization scale (\kappa _0^2\rho^2), together with the
finite-union factor (L_{\rm sm}=\log(9r^2/\delta_{\rm sm})).  Equation
(19) explicitly absorbs the additional bilinear (L_{\rm sm}/n) correction.
This is exactly the target (E_{\rm sm}) interface; no trajectory,
initialization, or basin property has been added.

## Explicit Rate Audit

- Exposed variables: (n,r,\kappa _0,\rho,\delta_{\rm sm}), the fixed
  numerical (q_*=1/4096), the base Gram slack (q_*/4), and the base
  weight ratio (801/800).
- Hidden constants may depend on: None in the displayed bounds; every
  concentration and absorption constant is numerical and displayed.
- Hidden constants may not depend on: the deterministic base triple,
  (n,r,\kappa _0,\rho,\delta_{\rm sm}), or any generated condition
  number.
- Fixed quantities: the deterministic base triple and the five primitive
  setting conditions are fixed before the smoothing draw.
- Probability mode: high probability over the once-drawn smoothing
  perturbations.  Equation (6) converts all finite scalar, column, and pair
  events into probability at least (1-\delta_{\rm sm}); there is no
  conditioning on a generated event in the theorem-facing conclusion.
- Horizon mode: static, once per realized tensor; there is no trajectory or
  time union.
- Norm mode: Euclidean norm for columns, absolute off-diagonal row
  (\ell_1) mass for normalized Grams, scalar max/min ratio for weights,
  and spectral minimum eigenvalue for cyclic Khatri--Rao Grams.
- Admissibility conditions and auxiliary tolerances: exactly
  `assump:base-scale`, `assump:cumulative-gram`,
  `assump:base-weight-balance`, `assump:gaussian-smoothing`, and
  `assump:smoothing-margin`; no auxiliary tolerance is introduced.
- Term absorption or simplification inequalities: (2), (11)--(12), and
  (19) prove all absorptions.  In particular,
  (2r(\kappa _0\rho)^2L_{\rm sm}/n
  =2ra_L^2\le q_*^2/(512r)), so the bilinear Bernstein term is retained and
  then explicitly dominated.
- Probability conversion: the three contributions in (6) are at most
  (\delta_{\rm sm}/3), (\delta_{\rm sm}/3), and
  (\delta_{\rm sm}/(3r)), whose sum is at most
  (7\delta_{\rm sm}/9<\delta_{\rm sm}).
- Contribution to any Rate Specialization Bridge: this step directly
  produces the technical and public smoothed-instance geometry event, so no
  additional auxiliary choice or probability-mode conversion is needed.
- Baseline-reduction check: in the deterministic orthogonal equal-weight
  specialization with zero perturbation, (d_{Mj}=1), every term in
  (3)--(5) is zero, the realized Grams equal the base identity Grams,
  (q_{\rm real}=0), (\Gamma=1), and every cyclic Khatri--Rao Gram is the
  identity.  Thus this step preserves the exact baseline rather than leaving
  a positive geometry or conditioning floor.  As required by the setting,
  this is a deterministic limiting specialization, not a probability claim
  at (\rho=0).

## Blockers

None.

## Notation And Assumption Notes

- The mode-local aliases
  (\bar x_{Mj},g_{Mj},x_{Mj},s_{Mj},\bar m_{Mj},z_{Mj},d_{Mj},m_{Mj})
  are `appendix-local` and are direct translations of the setting's
  (\bar a_j,\bar b_j,\bar c_j), perturbations, realized columns, and
  normalized columns.  They introduce no new object or assumption.
- (L_{\rm sm},x_{\rm sm},a_L,a_Q,a_N,a_B,h_{\rm sm}) and (E_0) are
  `proof-local`.  They are explicit expressions in original setting
  quantities, except (h_{\rm sm}), whose bound is proved in
  Lemma~\(\ref{lem:p1-i6-s001-norm-weight}\), and (E_0), whose probability
  is proved in Lemma~\(\ref{lem:p1-i6-s001-gaussian-ledger}\).
- (E_{\rm sm}) is the sole `public-facing` generated object.  Its contents
  are exactly the target-step outputs and are proved in the target-step
  assembly.
- The realized event, realized norm bounds, realized Gram bounds, realized
  weight bound, and Khatri--Rao floors are all derived in this step.  No
  generated-object fact is classified as primitive or used as a local
  conditional hypothesis.
- The accepted `global_proof.md` was read only together with its accepted
  `global_proof_review.md` (respective SHA-256 values
  `2efd283cab1d4dd948afc3bb10932f0ef5702749f1750e33f5d6280a7dde154a`
  and
  `aa928f6a1ea0b9e541efcaabe9747921a369f8533598c117aaf646cb68ef892a`).
  Its step-relevant diagnostic suggestion was to split linear,
  centered quadratic, normalization, finite-union, Schur-product, and
  Gershgorin contributions.  It was not used as evidence, a cited result, an
  assumption source, or authority to alter the target claim.
- No archived artifact and no pre-attempt-4 step proof or review was used as
  mathematical evidence.  The proof above is a direct derivation from the
  five primitive setting assumptions under accepted sketch attempt 4
  (sketch SHA-256
  `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b`,
  accepted review SHA-256
  `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`).
