# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_003` | Prove all normalized pair-Gram windows. | `step_001`, `step_002` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Rectangular Khatri--Rao concentration. | Radial control and matrix Bernstein. | `E_gram^norm`. | Conditional failure at most `r^(-20)`. | PENDING |

Concretely, condition on any realized factor triple
\((A,B,C)\in\mathcal E_{\rm cond}\). This step must prove, uniformly over
all admissible \(n,r,k\) and every such realized triple,
\[
  \mathbb P\!\left(
    (\mathcal E_{\rm gram}^{\rm norm})^c
    \mid A,B,C
  \right)\le r^{-20},
\]
where \(\mathcal E_{\rm gram}^{\rm norm}\) is the setting-defined event that
all eigenvalues of each of
\[
  (\bar K_0^{\bar\beta\bar\gamma})^{\mathsf T}
      \bar K_0^{\bar\beta\bar\gamma},\qquad
  (\bar K_0^{\bar\alpha\bar\gamma})^{\mathsf T}
      \bar K_0^{\bar\alpha\bar\gamma},\qquad
  (\bar K_0^{\bar\alpha\bar\beta})^{\mathsf T}
      \bar K_0^{\bar\alpha\bar\beta}
\]
lie in the exact normalized window \([r^{-20},r^{20}]\). No raw-scale
Gram statement and no initial-size event are part of this step.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`: \(r\) is sufficiently large and
    \(n\ge C(\kappa,q)r^4\log r\), with no upper restriction on \(n\).
  - `assump:rank_window`: \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:independent_initialization`: the raw initialization entries are
    iid \(\mathcal N(0,1/n)\), independently of smoothing.
- Derived invariants supplied by accepted dependencies:
  - The accepted Proposition~\ref{prop:step-001-realized-conditioning} from
    `step_001` produces \(\mathcal E_{\rm cond}\) and, on that event,
    \[
      \sigma(H_M)\subset[\kappa_1^{-1},\kappa_1],
      \qquad M\in\{A,B,C\},\qquad \kappa_1=2\kappa^2,
    \]
    through the compact-SVD maps of `step_002`.
  - The accepted Lemma~\ref{lem:step-002-balancing-scalars} gives the exact
    positive-radius balancing formulas and \(s_i^xs_i^ys_i^z=1\).
  - The accepted Lemma~\ref{lem:step-002-coefficient-gaussianization} gives,
    conditional on the realized factors,
    \[
      \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M,
    \]
    where the full family \(\{z_i^M\}_{M,i}\) is conditionally independent
    with \(z_i^M\sim\mathcal N(0,I_r)\). It explicitly does not assert that
    the balancing scalars are independent of these projected Gaussians.
- Local conditional hypotheses: None. Conditioning on a realized triple in
  the dependency-produced event \(\mathcal E_{\rm cond}\) is the target's
  probability interface, not an added theorem assumption.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_001/proof.md` and its accepted
    `review.md` for unit attempt 2;
  - `perspective_3/idea_3/proof_steps/step_002/proof.md` and its accepted
    `review.md` for unit attempt 1.

The generated event \(\mathcal E_{\rm gram}^{\rm norm}\) is not assumed. It
is proved below from these primitive and accepted-derived inputs.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:independent_initialization}, the full raw Gaussian-radius event has conditional failure at most \(r^{-28}\); on it, every pairwise balancing multiplier lies in \([3^{-1/3},3^{1/3}]\). | Controls the dependent balancing diagonals pointwise without claiming scalar/Gaussian independence. |
| `unit_002` | lemma | Under Assumption~\ref{assump:rank_window}, for two independent \(r\times k\) standard Gaussian arrays, the \(r^2\times k\) matrix with columns \(r^{-1}(z_i\otimes w_i)\) has Gram spectrum in \([1/2,3/2]\) with failure at most \(r^{-26}\), for \(r\ge2^{40}\). | Supplies both lower and upper rectangular isotropic Khatri--Rao concentration. |
| `unit_003` | proposition | Under the accepted conditioning and Gaussianization dependencies, Lemma~\ref{lem:step-003-radius-diagonals}, and the corresponding isotropic event from Lemma~\ref{lem:step-003-isotropic-khatri-rao}, each exact normalized elliptic balanced pair Gram has spectrum in \([(2\,3^{2/3}\kappa_1^4)^{-1},(3^{5/3}/2)\kappa_1^4]\). | Transfers the isotropic window through the elliptic maps and the possibly dependent balancing diagonals in the exact normalized convention. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:independent_initialization}, and the accepted `step_001`--`step_002` outputs, all three normalized pair Grams satisfy the public \([r^{-20},r^{20}]\) window simultaneously with total conditional failure at most \(r^{-20}\). | Performs the three-pair union, constant-to-polynomial threshold check, and exact target-event assembly. |

Atomic step = no. Full-radius control, rectangular Khatri--Rao
concentration, deterministic elliptic/diagonal transfer, and simultaneous
probability assembly are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized conditioning and balanced Gaussianization

**Restated result.** Accepted
Proposition~\ref{prop:step-001-realized-conditioning} and
Lemma~\ref{lem:step-002-coefficient-gaussianization} imply that, conditional
on any realized triple in \(\mathcal E_{\rm cond}\), the matrices \(H_M\)
are fixed and satisfy
\[
  \sigma(H_M)\subset[\kappa_1^{-1},\kappa_1],
\]
while the vectors \(z_i^M\) are independent \(\mathcal N(0,I_r)\) over all
modes and components and
\[
  \bar\zeta_i^M=\frac{s_i^m}{\sqrt r}H_Mz_i^M.
\]
Accepted Lemma~\ref{lem:step-002-balancing-scalars} additionally gives, on
the positive-radius branch,
\[
  s_i^x=\left(\frac{\chi_i^y\chi_i^z}{(\chi_i^x)^2}\right)^{1/3},\quad
  s_i^y=\left(\frac{\chi_i^x\chi_i^z}{(\chi_i^y)^2}\right)^{1/3},\quad
  s_i^z=\left(\frac{\chi_i^x\chi_i^y}{(\chi_i^z)^2}\right)^{1/3},
\]
where \(\chi_i^m=\|g_i^m\|_2\) and
\(g_i^m=\sqrt n\,\widetilde m_i\sim\mathcal N(0,I_n)\).

**Instantiated objects and discharge.** These are exactly the realized
elliptic maps, projected Gaussian arrays, and balancing multipliers used in
the three setting-defined normalized pair matrices. The proof below retains
the possible dependence of \(s_i^m\) on \(z_i^M\); it uses only a pointwise
diagonal bound on a separately generated full-radius event.

### Gaussian chi-square concentration

**Restated result.** If \(g\sim\mathcal N(0,I_d)\), then, for
\(0<\delta<1\),
\[
  \mathbb P\!\left(\left|\frac{\|g\|_2^2}{d}-1\right|>\delta\right)
  \le 2\exp\!\left(-\frac{d\delta^2}{8}\right).
\]

**Instantiated objects and discharge.** Apply this with \(d=n\),
\(\delta=1/2\), and the \(3k\) standardized raw initialization columns.
Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and
\ref{assump:independent_initialization} supply the dimension, number of
columns, and Gaussian law.

### Rectangular Gaussian operator-norm tail

**Restated result.** If \(Z\in\mathbb R^{r\times k}\) has iid standard
Gaussian entries, then, for every \(u\ge0\),
\[
  \mathbb P\!\left(\|Z\|_{\rm op}>\sqrt r+\sqrt k+u\right)
  \le e^{-u^2/2}.
\]

**Instantiated objects and discharge.** In
Lemma~\ref{lem:step-003-isotropic-khatri-rao}, this is applied to one of the
two standard Gaussian mode arrays with \(u=8\sqrt{\log r}\). The lower rank
window \(k>r\) and \(r\ge2^{40}\) imply
\(u\le\sqrt r<\sqrt k\), so the resulting operator bound is
\(\|Z\|_{\rm op}\le3\sqrt k\).

### Self-adjoint matrix Bernstein inequality

**Restated result.** Let \(X_1,\ldots,X_N\) be independent centered
self-adjoint \(d\times d\) random matrices satisfying
\(\|X_a\|_{\rm op}\le R\) almost surely, and put
\[
  v=\left\|\sum_{a=1}^N\mathbb E X_a^2\right\|_{\rm op}.
\]
Then, for every \(t\ge0\),
\[
  \mathbb P\!\left(
    \left\|\sum_{a=1}^N X_a\right\|_{\rm op}\ge t
  \right)
  \le 2d\exp\!\left(-\frac{t^2}{2v+(2Rt)/3}\right).
\]

**Instantiated objects and discharge.** Conditional on the first Gaussian
mode array and on an entrywise truncation event for the second array, the
row contributions
\[
  r^{-2}\bigl(D_a A D_a-\mu\operatorname{diag}(A)\bigr)
\]
are independent, centered, self-adjoint \(k\times k\) matrices. Their
almost-sure norm and variance proxy are computed explicitly in
Lemma~\ref{lem:step-003-isotropic-khatri-rao} before Bernstein is applied.

### Kronecker and product singular-value comparisons

**Restated result.** For square invertible \(P,Q\),
\[
  \sigma_{min}(P\otimes Q)
    =\sigma_{min}(P)\sigma_{min}(Q),\qquad
  \|P\otimes Q\|_{\rm op}=\|P\|_{\rm op}\|Q\|_{\rm op}.
\]
If \(K\) has full column rank and \(D\) is invertible diagonal, then
\[
  \sigma_{min}((P\otimes Q)KD)
  \ge\sigma_{min}(P\otimes Q)\sigma_{min}(K)\sigma_{min}(D),
\]
with the analogous upper bound for the operator norm.

**Instantiated objects and discharge.** Proposition~\ref{prop:step-003-elliptic-transfer}
uses \(P=H_M\), \(Q=H_N\), the isotropic Khatri--Rao matrix, and the exact
diagonal of pairwise balancing products. Full column rank follows from the
lower isotropic Gram bound.

### Local result applications

- Lemma~\ref{lem:step-003-radius-diagonals} supplies the pointwise lower and
  upper singular bounds for every pair-balancing diagonal.
- Lemma~\ref{lem:step-003-isotropic-khatri-rao} supplies both spectral sides
  for each isotropic rectangular pair matrix.
- Proposition~\ref{prop:step-003-elliptic-transfer} converts those two inputs
  into constant spectral windows for the exact normalized balanced Grams.

## Local Derivation

### unit_001: lemma

**Lemma (full-radius control and dependent balancing diagonals).**
\label{lem:step-003-radius-diagonals}
Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and
\ref{assump:independent_initialization}, enlarge the dimension constant so
that \(C(\kappa,q)\ge1\), and suppose \(r\ge2^{40}\). Define the proof-local
event
\[
  \mathcal R_{\rm rad}
  :=\bigcap_{i=1}^k\bigcap_{m\in\{x,y,z\}}
    \left\{\frac12\le\frac{(\chi_i^m)^2}{n}\le\frac32\right\}.
\]
Then, conditional on any realized smoothing outcome,
\[
  \mathbb P(\mathcal R_{\rm rad}^c\mid A,B,C)\le r^{-28}.
\]
On \(\mathcal R_{\rm rad}\), for every component \(i\),
\[
  3^{-1/3}\le s_i^ys_i^z\le3^{1/3},\qquad
  3^{-1/3}\le s_i^xs_i^z\le3^{1/3},\qquad
  3^{-1/3}\le s_i^xs_i^y\le3^{1/3}.
\]

**Proof / justification.** Initialization is independent of smoothing, so,
after conditioning on \((A,B,C)\), the \(3k\) vectors \(g_i^m\) remain
independent \(\mathcal N(0,I_n)\). The checked chi-square bound with
\(\delta=1/2\) and a union bound give
\[
  \mathbb P(\mathcal R_{\rm rad}^c\mid A,B,C)
  \le 6k e^{-n/32}
  \le 6r^{5/4}e^{-r^4\log r/32}.
\]
For \(r\ge2^{40}\), one has \(6\le r^{3/4}\) and \(r^4/32\ge30\), hence
\[
  6r^{5/4}e^{-r^4\log r/32}
  \le r^2r^{-30}=r^{-28}.                                  \tag{1}
\]
This bound improves as \(n\) increases, so it is uniform with no upper
restriction on \(n\).

On \(\mathcal R_{\rm rad}\), all radii are positive. The exact accepted
balancing formulas give
\[
  (s_i^ys_i^z)^3
    =\frac{(\chi_i^x)^2}{\chi_i^y\chi_i^z},\quad
  (s_i^xs_i^z)^3
    =\frac{(\chi_i^y)^2}{\chi_i^x\chi_i^z},\quad
  (s_i^xs_i^y)^3
    =\frac{(\chi_i^z)^2}{\chi_i^x\chi_i^y}.                \tag{2}
\]
Every squared radius lies in \([n/2,3n/2]\), while every product of two
radii lies in the same interval \([n/2,3n/2]\). Each ratio in (2) therefore
lies in \([1/3,3]\). Taking its positive cube root proves the three displayed
bounds. This is a pointwise consequence on \(\mathcal R_{\rm rad}\); it does
not use or assert independence between the pair multipliers and the projected
Gaussian coefficient vectors. \(\square\)

### unit_002: lemma

**Lemma (rectangular isotropic Gaussian Khatri--Rao concentration).**
\label{lem:step-003-isotropic-khatri-rao}
Under Assumption~\ref{assump:rank_window}, let
\(Z=[z_1\ \cdots\ z_k]\) and \(W=[w_1\ \cdots\ w_k]\) be independent
\(r\times k\) matrices with iid \(\mathcal N(0,1)\) entries. Define
\[
  K_0=\frac1r
    [z_1\otimes w_1\ \cdots\ z_k\otimes w_k]
    \in\mathbb R^{r^2\times k}.
\]
If \(r\ge2^{40}\), then
\[
  \mathbb P\!\left(
    \operatorname{spec}(K_0^{\mathsf T}K_0)
      \not\subset[1/2,3/2]
  \right)\le r^{-26}.                                      \tag{3}
\]

**Proof / justification.** Put \(A=Z^{\mathsf T}Z\) and
\(L_r=8\sqrt{\log r}\). First define
\[
  \mathcal Z
  :=\left\{
    \max_i\left|\frac{\|z_i\|_2^2}{r}-1\right|\le\frac14,
    \quad \|Z\|_{\rm op}\le3\sqrt k
  \right\}.                                                \tag{4}
\]
The checked chi-square bound with \(d=r\), \(\delta=1/4\), followed by a
union over the \(k\) columns, gives a first failure term
\(2ke^{-r/128}\). The checked Gaussian operator tail with \(u=L_r\) gives
a second term \(r^{-32}\). Since \(r\ge2^{40}\) implies
\(L_r\le\sqrt r<\sqrt k\), its good-event threshold is at most
\(3\sqrt k\). The elementary numerical inequalities
\[
  2r^{5/4}e^{-r/128}\le r^{-28},
  \qquad r\ge2^{40},                                       \tag{5}
\]
and \(r^{-32}\le r^{-28}\) yield
\[
  \mathbb P(\mathcal Z^c)\le r^{-27}.                     \tag{6}
\]
On \(\mathcal Z\),
\[
  \|A\|_{\rm op}\le9k,qquad
  a_*:=\max_i A_{ii}\le\frac54r,qquad
  \frac34I_k\preceq\frac{\operatorname{diag}(A)}r
    \preceq\frac54I_k.                                    \tag{7}
\]

Write the rows of \(W\) as \(w_{a\bullet}^{\mathsf T}\),
\(a\in[r]\), and let
\(D_a=\operatorname{diag}(w_{a1},\ldots,w_{ak})\). The Hadamard/diagonal
identity gives
\[
  K_0^{\mathsf T}K_0
  =\frac1{r^2}\bigl(A\circ W^{\mathsf T}W\bigr)
  =\frac1{r^2}\sum_{a=1}^r D_aAD_a.                        \tag{8}
\]
Introduce the entrywise truncation event
\[
  \mathcal T_W:=\left\{\max_{a,i}|w_{ai}|\le L_r\right\}.
\]
A scalar Gaussian union bound gives
\[
  \mathbb P(\mathcal T_W^c)
  \le2rk e^{-L_r^2/2}
  \le2r^{9/4}r^{-32}
  \le r^{-29}.                                             \tag{9}
\]
Because \(\mathcal T_W\) is a product of coordinatewise truncation events,
conditional on \(\mathcal T_W\) all entries remain independent with the
common law of a standard normal \(\xi\) conditioned on
\(|\xi|\le L_r\). Put
\[
  \mu=\mathbb E\xi^2,qquad \nu=\mathbb E\xi^4
\]
under this conditional law. Symmetry gives \(\mathbb E\xi=0\). Since
\(L_r\ge4\), integration of the Gaussian tail gives
\[
  \frac78\le\mu\le1,qquad \nu\le6.                      \tag{10}
\]
Indeed,
\(\mathbb E[g^2\mathbf1_{\{|g|>L\}}]
 =2(L\varphi(L)+\overline\Phi(L))\), so the conditional second-moment loss
is below \(1/8\) for \(L\ge4\); and the fourth numerator is at most
\(\mathbb Eg^4=3\), while
\(\mathbb P(|g|\le L)\ge1/2\).

Fix any \(Z\in\mathcal Z\), put \(B=\operatorname{diag}(A)\), and, under
the conditional law given \(\mathcal T_W\), define the independent centered
self-adjoint matrices
\[
  X_a=\frac1{r^2}(D_aAD_a-\mu B),\qquad a\in[r].            \tag{11}
\]
The almost-sure truncation and (7) give
\[
  \|X_a\|_{\rm op}
  \le\frac{(L_r^2+1)\|A\|_{\rm op}}{r^2}
  \le\frac{18L_r^2k}{r^2}=:R_B.                            \tag{12}
\]
For completeness, independence, symmetry, and (10) make
\(\mathbb E(D_aAD_a)^2\) diagonal. Its \(i\)-th diagonal entry is
\[
  \mu^2(A^2)_{ii}+(\nu-\mu^2)A_{ii}^2.
\]
After subtracting the square of the mean, the \(i\)-th diagonal entry of
\(\mathbb E(D_aAD_a-\mu B)^2\) is at most
\[
  (A^2)_{ii}+6A_{ii}^2
  \le \|A\|_{\rm op}A_{ii}+6A_{ii}^2
  \le7\|A\|_{\rm op}a_*.
\]
Consequently the matrix-Bernstein variance proxy satisfies
\[
  v_B:=\left\|\sum_{a=1}^r\mathbb EX_a^2\right\|_{\rm op}
  \le\frac{7\|A\|_{\rm op}a_*}{r^3}
  \le\frac{315}{4}\frac{k}{r^2}
  \le79\frac{k}{r^2}.                                     \tag{13}
\]

Apply the checked self-adjoint matrix Bernstein inequality at \(t=1/8\).
Using \(L_r^2=64\log r\), (12)--(13), and
\(k\le r^{5/4}\), its exponent is at least
\[
  \frac{(1/8)^2}{2v_B+(2R_B/8)/3}
  \ge\frac{r^2}{64(158+96\log r)k}
  \ge\frac{r^{3/4}}{64(158+96\log r)}.                    \tag{14}
\]
For every \(r\ge2^{40}\),
\[
  \frac{r^{3/4}}{64(158+96\log r)}\ge30\log r.            \tag{15}
\]
The inequality holds directly at \(2^{40}\), and the ratio of its left side
to \(\log r\) is increasing thereafter. Thus, uniformly for
\(Z\in\mathcal Z\),
\[
  \mathbb P\!\left(
    \left\|K_0^{\mathsf T}K_0-\frac{\mu B}{r}\right\|_{\rm op}
      >\frac18
    \ \middle|\ Z,\mathcal T_W
  \right)
  \le2kr^{-30}\le r^{-28}.                                \tag{16}
\]

On the complementary event in (16), (7) and (10) imply
\[
  \lambda_{\min}(K_0^{\mathsf T}K_0)
  \ge\frac78\frac34-\frac18
  =\frac{17}{32}\ge\frac12,                               \tag{17}
\]
and
\[
  \lambda_{\max}(K_0^{\mathsf T}K_0)
  \le\frac54+\frac18
  =\frac{11}{8}\le\frac32.                                \tag{18}
\]
Finally, (6), (9), and (16), with no independence needed between their
failures, give
\[
  \mathbb P\!\left(
    \operatorname{spec}(K_0^{\mathsf T}K_0)
      \not\subset[1/2,3/2]
  \right)
  \le r^{-27}+r^{-29}+r^{-28}
  \le r^{-26}.
\]
This proves the lemma. \(\square\)

### unit_003: proposition

**Proposition (elliptic transfer with dependent balancing scalars).**
\label{prop:step-003-elliptic-transfer}
Under the accepted Proposition~\ref{prop:step-001-realized-conditioning},
accepted Lemmas~\ref{lem:step-002-balancing-scalars} and
\ref{lem:step-002-coefficient-gaussianization}, and
Lemma~\ref{lem:step-003-radius-diagonals}, condition on any realized triple
in \(\mathcal E_{\rm cond}\). For the three mode pairs define
\[
  \begin{aligned}
  K_0^{BC}&=\frac1r[z_1^B\otimes z_1^C\ \cdots\ z_k^B\otimes z_k^C],
  &D^{BC}&=\operatorname{diag}(s_1^ys_1^z,\ldots,s_k^ys_k^z),\\
  K_0^{AC}&=\frac1r[z_1^A\otimes z_1^C\ \cdots\ z_k^A\otimes z_k^C],
  &D^{AC}&=\operatorname{diag}(s_1^xs_1^z,\ldots,s_k^xs_k^z),\\
  K_0^{AB}&=\frac1r[z_1^A\otimes z_1^B\ \cdots\ z_k^A\otimes z_k^B],
  &D^{AB}&=\operatorname{diag}(s_1^xs_1^y,\ldots,s_k^xs_k^y).
  \end{aligned}                                             \tag{19}
\]
If \(\mathcal R_{\rm rad}\) holds and each corresponding isotropic Gram in
(19) has spectrum in \([1/2,3/2]\), then each exact normalized balanced pair
Gram has spectrum in
\[
  \left[
    \frac1{2\,3^{2/3}\kappa_1^4},
    \frac{3^{5/3}}2\kappa_1^4
  \right].                                                  \tag{20}
\]

**Proof / justification.** The accepted normalized coefficient formula and
the mixed-product identity for tensor products give the exact factorizations
\[
  \begin{aligned}
  \bar K_0^{\bar\beta\bar\gamma}
    &=(H_B\otimes H_C)K_0^{BC}D^{BC},\\
  \bar K_0^{\bar\alpha\bar\gamma}
    &=(H_A\otimes H_C)K_0^{AC}D^{AC},\\
  \bar K_0^{\bar\alpha\bar\beta}
    &=(H_A\otimes H_B)K_0^{AB}D^{AB}.                       \tag{21}
  \end{aligned}
\]
The factor \(1/r\) in (19) is exactly the product of the two
\(1/\sqrt r\) normalized coefficient factors. Thus (21) uses the setting's
normalized convention without a raw-scale substitution.

On \(\mathcal E_{\rm cond}\), every Kronecker elliptic map in (21) has
singular values in \([\kappa_1^{-2},\kappa_1^2]\). On
\(\mathcal R_{\rm rad}\), Lemma~\ref{lem:step-003-radius-diagonals} gives
\[
  \sigma(D^{MN})\subset[3^{-1/3},3^{1/3}]
\]
for all three pairs. The assumed isotropic Gram event gives
\[
  \sigma(K_0^{MN})\subset[2^{-1/2},(3/2)^{1/2}].
\]
Applying the checked product singular-value inequalities to (21) yields
\[
  \sigma_{\min}(\bar K_0^{MN})
    \ge \kappa_1^{-2}2^{-1/2}3^{-1/3},
  \qquad
  \|\bar K_0^{MN}\|_{\rm op}
    \le \kappa_1^2(3/2)^{1/2}3^{1/3}.                      \tag{22}
\]
Squaring (22) gives exactly (20).

This transfer is deterministic on the intersection of the stated events.
The diagonal \(D^{MN}\) can be arbitrarily dependent on \(K_0^{MN}\): the
pointwise singular-value comparison uses only its realized lower and upper
diagonal entries. Hence no false scalar/Gaussian independence is introduced.
The endpoint singular values of the \(H_M\) and endpoint pair multipliers are
included in (22). \(\square\)

### unit_004: proposition

**Proposition (simultaneous normalized pair-Gram event).**
\label{prop:step-003-normalized-gram-event}
Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and
\ref{assump:independent_initialization}, the accepted
Proposition~\ref{prop:step-001-realized-conditioning}, and accepted
Lemmas~\ref{lem:step-002-balancing-scalars} and
\ref{lem:step-002-coefficient-gaussianization}, define
\[
  r_{0,{\rm gram}}(\kappa)
  :=\max\left\{
    2^{40},
    \left\lceil
      \bigl(2\,3^{2/3}\kappa_1^4\bigr)^{1/20}
    \right\rceil
  \right\},
  \qquad \kappa_1=2\kappa^2.                              \tag{23}
\]
Choose \(C(\kappa,q)\ge1\). Then, for every
\(r\ge r_{0,{\rm gram}}(\kappa)\), every
\(n\ge C(\kappa,q)r^4\log r\), every
\(r<k\le\lfloor r^{5/4}\rfloor\), and every realized factor triple in
\(\mathcal E_{\rm cond}\),
\[
  \mathbb P\!\left(
    \mathcal E_{\rm gram}^{\rm norm}
    \mid A,B,C
  \right)\ge1-r^{-20}.                                     \tag{24}
\]

**Proof / justification.** Conditional on the realized factors, the three
mode arrays \(Z_M=[z_1^M\ \cdots\ z_k^M]\) are independent standard
Gaussian arrays by the accepted Gaussianization lemma. Therefore
Lemma~\ref{lem:step-003-isotropic-khatri-rao} applies to each of the three
pairs in (19), giving failure at most \(r^{-26}\) per pair. The pairs share
mode arrays, but a union bound needs no independence. Together with
Lemma~\ref{lem:step-003-radius-diagonals},
\[
  \mathbb P\!\left(
    \mathcal R_{\rm rad}^c
    \ \text{or some isotropic pair event fails}
    \mid A,B,C
  \right)
  \le r^{-28}+3r^{-26}
  \le4r^{-26}
  \le r^{-20}.                                             \tag{25}
\]

On the complementary event, Proposition~\ref{prop:step-003-elliptic-transfer}
places every normalized pair-Gram eigenvalue in the constant interval (20).
The threshold (23) gives
\[
  r^{20}\ge2\,3^{2/3}\kappa_1^4.                          \tag{26}
\]
Consequently
\[
  \frac1{2\,3^{2/3}\kappa_1^4}\ge r^{-20},               \tag{27}
\]
and, because
\[
  \frac{3^{5/3}}2\kappa_1^4
  \le2\,3^{2/3}\kappa_1^4,
\]
also
\[
  \frac{3^{5/3}}2\kappa_1^4\le r^{20}.                   \tag{28}
\]
Thus all three exact normalized Grams lie in the setting-defined polynomial
window on an event whose total conditional failure is bounded by (25). This
is precisely \(\mathcal E_{\rm gram}^{\rm norm}\), proving (24).

The proof is uniform in the realized factor triple because it uses that triple
only through the common \(\kappa_1\) singular interval. It is uniform in
\(n\) above its lower threshold because the projected \(z_i^M\) law is exactly
standard Gaussian for every \(n\), while the full-radius failure in (1)
decreases with \(n\). The cases \(k=r+1\) and
\(k=\lfloor r^{5/4}\rfloor\) are both included, as are the endpoint elliptic
and radial bounds. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-003-radius-diagonals} derives a proof-local full-radius
event from the primitive ambient Gaussian initialization and proves uniform
pointwise bounds for all three pairwise balancing diagonals. This is the only
place where full radii enter, and their dependence on the projected
coefficient Gaussians is retained rather than discarded.

Lemma~\ref{lem:step-003-isotropic-khatri-rao} proves both spectral sides for
an \(r^2\times k\) isotropic Gaussian Khatri--Rao matrix. Its row
decomposition (8) makes the conditional mean diagonal; entrywise Gaussian
truncation supplies an almost-sure Bernstein envelope; (12)--(13) verify the
matrix-Bernstein hypotheses; and (14)--(18) give the explicit lower and upper
window with failure at most \(r^{-26}\).

Proposition~\ref{prop:step-003-elliptic-transfer} then uses the exact
dependency formula
\[
  \bar K^{MN}=(H_M\otimes H_N)K_0^{MN}D^{MN}
\]
with the setting's \(1/r\) normalized scale. Pointwise singular-value
comparisons transfer the isotropic window through the elliptic maps and the
possibly dependent balancing diagonal, producing the constant interval (20)
for each exact normalized Gram.

Finally, Proposition~\ref{prop:step-003-normalized-gram-event} unions the
single radial event and the three pair events, converts their total failure to
at most \(r^{-20}\), and verifies by (26)--(28) that the constant interval is
contained in \([r^{-20},r^{20}]\). These named results prove exactly all three
normalized pair-Gram windows and nothing about the raw-scale bridge or
\(\mathcal E_{\rm size}\).

## Explicit Rate Audit

- Exposed variables: \(n,r,k,\kappa,q\),
  \(\kappa_1=2\kappa^2\), the normalized pair scale \(1/r\), and conditional
  failure \(r^{-20}\).
- Hidden constants may depend on: the overall theorem may enlarge
  \(r_0(\kappa,q)\) and \(C(\kappa,q)\); the proof itself uses only the
  displayed numerical constant \(2^{40}\) and the displayed \(\kappa\)-dependent
  threshold in (23).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized factor triple inside \(\mathcal E_{\rm cond}\), time,
  or the GD horizon.
- Fixed quantities: condition on an arbitrary realized
  \((A,B,C)\in\mathcal E_{\rm cond}\); then \(H_A,H_B,H_C\) are fixed while
  initialization is sampled. The parameters \(\kappa,q\) are fixed as \(r\)
  grows.
- Probability mode: high probability under initialization, uniformly
  conditional on every realized factor triple in \(\mathcal E_{\rm cond}\).
  No independence among the radial event and the three pair events, or among
  the three pair events themselves, is used in the final union.
- Horizon mode: initialization-only, before the first GD update.
- Norm mode: eigenvalues of the exact \(k\times k\) normalized pair Grams,
  equivalently singular values of their \(r^2\times k\) Khatri--Rao matrices.
- Admissibility conditions and auxiliary tolerances:
  \[
    C(\kappa,q)\ge1,qquad
    r\ge r_{0,{\rm gram}}(\kappa),\qquad
    r<k\le\lfloor r^{5/4}\rfloor,
  \]
  together with \(L_r=8\sqrt{\log r}\), chi-square tolerances \(1/2\) and
  \(1/4\), and Bernstein deviation \(1/8\).
- Term absorption or simplification inequalities:
  \[
    \frac{k}{r^2}\le r^{-3/4},\quad
    \frac{r^{3/4}}{64(158+96\log r)}\ge30\log r,
  \]
  \[
    \frac78\frac34-\frac18\ge\frac12,quad
    \frac54+\frac18\le\frac32,quad
    r^{20}\ge2\,3^{2/3}\kappa_1^4.
  \]
- Probability conversion:
  \[
    \mathbb P(\mathcal R_{\rm rad}^c\mid A,B,C)\le r^{-28},
    \qquad
    \mathbb P((\mathcal Q^{MN})^c\mid A,B,C)\le r^{-26},
  \]
  and
  \[
    r^{-28}+3r^{-26}\le4r^{-26}\le r^{-20}.
  \]
- Contribution to any Rate Specialization Bridge: this step supplies exactly
  the normalized-Gram constituent and one \(r^{-20}\) conditional failure
  budget for the later initialization-event union. It performs neither the
  raw conversion nor the four-event public union.
- Baseline-reduction check: if \(H_M=I_r\) and all balancing multipliers equal
  one, (21) reduces exactly to the isotropic normalized matrix \(K_0^{MN}\)
  of Lemma~\ref{lem:step-003-isotropic-khatri-rao}. The proof adds only the
  explicit elliptic and diagonal condition-number factors in (20); it does
  not change \(D_r\), \(\widehat D_0\), the tangent span, or the raw residual
  convention.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathcal E_{\rm gram}^{\rm norm}\) is `public-facing`, setting-defined,
  and generated by Proposition~\ref{prop:step-003-normalized-gram-event}; it
  is not a primitive condition.
- \(\kappa_1\) and \(H_M,z_i^M,s_i^m\) are `public-facing` objects inherited
  from accepted dependencies. Their singular, Gaussian, and scalar identities
  are not reproved or strengthened here.
- \(\mathcal R_{\rm rad}\) is `proof-local`. It is generated and bounded by
  Lemma~\ref{lem:step-003-radius-diagonals}, is used only to bound the
  balancing diagonals, and is not exported as \(\mathcal E_{\rm size}\) or as
  an all-time norm condition.
- \(K_0^{BC},K_0^{AC},K_0^{AB}\), their isotropic Gram events, and the
  diagonals \(D^{BC},D^{AC},D^{AB}\) are `appendix-local`. The first are
  defined from the accepted standard Gaussian arrays; the diagonals are exact
  functions of the accepted balancing scalars.
- The auxiliary symbols \(A,B,D_a,L_r,\mu,\nu,R_B,v_B\) inside
  Lemma~\ref{lem:step-003-isotropic-khatri-rao} are `proof-local`. In that
  lemma only, \(A=Z^{\mathsf T}Z\) and \(B=\operatorname{diag}(A)\); these do
  not redefine the setting's realized factor matrices outside the lemma.
- The numerical threshold \(2^{40}\) is `proof-local` and directly proves all
  displayed Gaussian-tail and Bernstein conversions. The
  \(\kappa\)-dependent threshold in (23) is `appendix-local`, is defined
  explicitly from the setting quantity \(\kappa_1\), and supplies the exact
  constant-to-polynomial window implication.
- Assumption provenance is complete: ambient Gaussian radii and projected
  Gaussian arrays come from
  Assumption~\ref{assump:independent_initialization}; the lower dimension and
  rank aspect ratio come from Assumptions~\ref{assump:dimension} and
  \ref{assump:rank_window}; realized ellipticity is an accepted output of
  `step_001`--`step_002`; every radial, truncation, isotropic-Gram, and final
  Gram event is proved in this step.
- Dependence audit: the pair multipliers are functions of the same raw
  Gaussian vectors that produce \(z_i^M\). The proof never conditions them
  away and never treats them as independent. It first proves their realized
  diagonal bounds on \(\mathcal R_{\rm rad}\), then applies a deterministic
  singular-value comparison on the intersection with the isotropic event.
- Boundary audit: \(k=r+1\), \(k=\lfloor r^{5/4}\rfloor\), arbitrarily large
  \(n\), the endpoint singular values of every \(H_M\), the endpoint radial
  ratios, and all three shared-mode pair intersections are covered. The
  probability-zero raw zero-vector branches lie outside
  \(\mathcal R_{\rm rad}\) and are already included in its failure bound.
- Scope exclusion: this artifact proves no raw Gram scaling identity, no
  quotient-range statement, no tangent-span statement, no initial-size event,
  and no trajectory property.
- The accepted `global_proof.md` was consulted only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B03 discussion was
  used only to plan the constant-window and conditional-probability interface.
  It was not used as proof evidence, a cited result, an assumption source, or
  authority to alter the target claim.
