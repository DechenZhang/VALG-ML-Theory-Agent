# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1
- Binding setting SHA-256:
  `1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a`
- Binding sketch SHA-256:
  `31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69`
- Accepted sketch-review SHA-256:
  `b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e`
- Accepted global diagnostic SHA-256:
  `80ef3512062b3830473c9e8b50e72365af34c4295b0246624e41a8871b98b5a0`
- Accepted global-review SHA-256:
  `a93919745b59b9ea7f5ce007c414343b7c91aa83c7988ff3a5cdde399857bf29`
- Accepted dependency proof SHA-256 (`step_001`):
  `467b0960c46a1487155b3ed5354d069fa7e6a477cf6a7efac6d779aefc801207`
- Accepted dependency review SHA-256 (`step_001`):
  `da31328ff1cb174d8f36bbc82f910454291fa18ddb198f1427b8a94904231f7c`

## Target Step Claim

- Intended claim: For each target, prove the jointly observable three-mode
  window and competitor pair event with probability between universal
  multiples of
  $r^{-5/3}(\log r)^{-3/2}$.
- Depends on: `step_001`.
- Assumptions used: `assump:random-initialization` (primitive) and
  $E_{\rm sm}$ (derived).
- Technical challenge: correlated Gaussian coordinates and product tails.
- Intended proof tool or cited result: Gaussian regression and product-tail
  comparison.
- Output target: $E_{\rm win}$ and $p_{\rm win}$.
- Rate objective: a fixed-horizon, per-slot window probability with no
  confidence parameter hidden in $k$.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:random-initialization`: conditional on the once-drawn tensor, the
  raw proposal vectors are standard Gaussian, independent across slots and
  modes, and independent of the smoothing perturbations. This step uses one
  slot only; independence across slots is not yet used.

Derived invariants supplied by accepted dependencies:

- The accepted proof and review of `step_001`, with the hashes recorded in
  the step identity, supply the generated event $E_{\rm sm}$. On this event
  the realized columns are unit after normalization and
  
  \[
  q_{\rm real}
  =\max_{M\in\{U,V,W\}}\max_j
    \sum_{\ell\ne j}|\langle m_{M,j},m_{M,\ell}\rangle|
  \le q_*={1\over4096},
  \tag{1}
  \]
  
  where $m_{U,j}=u_j$, $m_{V,j}=v_j$, and $m_{W,j}=w_j$. The norm,
  weight-ratio, and Khatri--Rao spectral conclusions of $E_{\rm sm}$ are
  not needed in this step.

Local conditional hypotheses: None. Conditioning below on a fixed realized
tensor in $E_{\rm sm}$ and then on the three target Gaussian coordinates is
probabilistic disintegration inside the proof, not a theorem-facing
assumption. No event for one target is assumed independent of an event for
another target.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:random-initialization} and the accepted $E_{\rm sm}$ conclusion, conditional on the three target coordinates, each competitor coordinate has an exact Gaussian regression representation whose mean is bounded by $q_*$ times the target magnitude; residuals are independent only across modes, as supplied by the setting. | Translates the correlated coordinate problem into shifted independent one-dimensional Gaussians for each fixed competitor without asserting target/competitor independence. |
| `unit_002` | lemma | For three independent standard Gaussians and every integer $r\ge3$, the probability of a pair product exceeding $(21/20)\log r$, together with the explicit $3\sqrt{\log r}$ cap error, has total $(r-1)$-fold union cost at most $9/10$. | Supplies an explicit universal reserve for all competitor products; it does not use independence across competitors. |
| `unit_003` | lemma | For $t_r=\sqrt{(10/9)\log r}$, the absolute standard-Gaussian interval $[t_r,t_r+t_r^{-1}]$ has probability between displayed universal multiples of $r^{-5/9}(\log r)^{-1/2}$. | Gives the exact three-mode target-window rate after cubing across the independent modes. |
| `unit_004` | proposition | Under Assumption~\ref{assump:random-initialization}, the accepted $E_{\rm sm}$ conclusion, and Lemmas~\ref{lem:step-002-regression} and \ref{lem:step-002-product-reserve}, the probability of every competitor pair-product bound, conditional on any signed target-coordinate triple in the target window, is at least $1/10$. | Establishes the competitor event jointly with, rather than independently of, the target window. |
| `unit_005` | proposition | Under Assumption~\ref{assump:random-initialization}, the accepted $E_{\rm sm}$ conclusion, Lemma~\ref{lem:step-002-target-mass}, and Proposition~\ref{prop:step-002-conditional-competitors}, every target/slot event $E_{{\rm win},ij}$ has probability between the displayed constants times $r^{-5/3}(\log r)^{-3/2}$; on this event $R_j(h_i^0)\le19/20$ and $S_j(h_i^0)\le rR_j(h_i^0)$. | Produces the exact public $E_{\rm win},p_{\rm win}$ interface consumed by `step_003`. |

## Cited Result Applications

No external paper result is used.

1. **Accepted dependency `step_001`.** Its accepted conclusion is: on the
   generated event $E_{\rm sm}$, every realized factor column is well
   defined and (1) holds simultaneously in all three modes. The current
   objects are the same realized $U,V,W$ used by the proposal coordinates.
   The dependency assumptions were discharged in its accepted proof and
   review; this step conditions on its exported event and uses only (1).
2. **Gaussian regression.** If $(X,Y)$ is centered jointly Gaussian with
   $\operatorname{Var}(X)=\operatorname{Var}(Y)=1$ and
   $\operatorname{Cov}(X,Y)=c$, then
   $Y=cX+\sqrt{1-c^2}\,G$, where $G\sim N(0,1)$ is independent of $X$.
   Lemma~\ref{lem:step-002-regression} proves this by checking that
   $Y-cX$ is jointly Gaussian and uncorrelated with $X$, and instantiates it
   in the exact raw-coordinate convention.
3. **Centered Gaussian product tail.** For independent $G_1,G_2\sim N(0,1)$
   and $s>0$,
   
   \[
   \Pr\{|G_1G_2|>s\}
   \le \sqrt{2\over\pi s}\,e^{-s}.
   \tag{2}
   \]
   
   Lemma~\ref{lem:step-002-product-reserve} derives (2) directly in polar
   coordinates and combines it with an exact three-variable order-statistic
   integral. No unverified product-tail citation is consumed.
4. **Scalar Gaussian Chernoff bound.** For $G\sim N(0,1)$ and $x>0$,
   $\Pr\{|G|>x\}\le2e^{-x^2/2}$.
   Proposition~\ref{prop:step-002-conditional-competitors} derives it from
   $\mathbb E e^{tG}=e^{t^2/2}$ and applies it only to the proof-local
   residual cap. The exact $\chi^2_2$ tail used in the polar derivation is
   likewise obtained by integrating the two-dimensional standard-Gaussian
   radial density $re^{-r^2/2}$.

The local-result applications are: Lemma~\ref{lem:step-002-regression} and
Lemma~\ref{lem:step-002-product-reserve} feed
Proposition~\ref{prop:step-002-conditional-competitors};
Lemma~\ref{lem:step-002-target-mass} and that proposition feed
Proposition~\ref{prop:step-002-joint-window}.

## Local Derivation

Let $\mathcal F_{\rm sm}$ be the sigma-field generated by all once-drawn
smoothing perturbations. Fix throughout one realization in $E_{\rm sm}$, a
slot $i$, and a target $j$. For $M\in\{U,V,W\}$ abbreviate

\[
Z_{\ell}^{(M)}:=Z_{i\ell}^{(M)},\qquad
X_M:=Z_j^{(M)},\qquad
c_{M\ell}:=\langle m_{M,j},m_{M,\ell}\rangle .
\tag{3}
\]

All probabilities below are conditional on this fixed realization of
$\mathcal F_{\rm sm}$ unless the conditioning is displayed more finely.

### unit_001: lemma

**Lemma (Exact regression in the realized proposal coordinates;
\label{lem:step-002-regression}).**
Under Assumption~\ref{assump:random-initialization} and the accepted
$E_{\rm sm}$ conclusion (1), for every mode $M$ and every $\ell\ne j$,

\[
Z_{\ell}^{(M)}\mid\{X_M=x_M\}
=c_{M\ell}x_M+\sqrt{1-c_{M\ell}^2}\,G_{M\ell},
\tag{4}
\]

where, for each fixed $\ell$, the three variables
$G_{U\ell},G_{V\ell},G_{W\ell}$ are independent standard Gaussians. No
independence is asserted among $G_{M\ell}$ as $\ell$ varies within one mode.
Moreover,

\[
\sum_{\ell\ne j}|c_{M\ell}|\le q_*,
\qquad |c_{M\ell}|\le q_*.
\tag{5}
\]

**Proof / justification.**
The vector $(Z_1^{(M)},\ldots,Z_r^{(M)})$ is a centered Gaussian vector,
because it consists of linear functionals of the raw
$\xi_i^{(M)}\sim N(0,I_n)$. Its covariance is exactly the realized Gram:

\[
\operatorname{Cov}(Z_a^{(M)},Z_b^{(M)})
=\langle m_{M,a},m_{M,b}\rangle .
\tag{6}
\]

In particular, the diagonal variances are one. Put
$Y_{M\ell}=Z_{\ell}^{(M)}-c_{M\ell}X_M$. Then

\[
\operatorname{Cov}(Y_{M\ell},X_M)=0,\qquad
\operatorname{Var}(Y_{M\ell})=1-c_{M\ell}^2.
\tag{7}
\]

The pair $(Y_{M\ell},X_M)$ is jointly Gaussian, so zero covariance gives
independence and hence (4). Equation (1) gives (5). Finally, the three raw
mode vectors are independent under
Assumption~\ref{assump:random-initialization}; conditioning separately on
$X_U,X_V,X_W$ therefore preserves independence of the three mode residuals
for each fixed $\ell$. This proves exactly the independence stated, and no
more. $\square$

### unit_002: lemma

**Lemma (Explicit three-Gaussian product reserve;
\label{lem:step-002-product-reserve}).**
Let $G_1,G_2,G_3$ be independent $N(0,1)$ variables. For every integer
$r\ge3$, set

\[
\beta:={21\over20},\qquad
\mathfrak q_r:=\Pr\left\{
\max_{1\le a<b\le3}|G_aG_b|>\beta\log r\right\}.
\tag{8}
\]

Then the following completely numerical bound holds:

\[
(r-1)\{\mathfrak q_r+6r^{-9/2}\}\le {9\over10}.
\tag{9}
\]

**Proof / justification.**
We first record the exact one-dimensional calculation used for the finite
range. Let

\[
F(x):=\Pr\{|G_1|\le x\}
=\sqrt{2\over\pi}\int_0^x e^{-u^2/2}\,du,
\qquad f(x):=F'(x).
\tag{10}
\]

For $s>0$, a unique largest absolute coordinate exists almost surely.
Conditioning on its value gives the exact identity

\[
\begin{aligned}
\Pr\left\{\max_{a<b}|G_aG_b|\le s\right\}
&=3\int_0^\infty f(x)
 F\bigl(\min\{x,s/x\}\bigr)^2\,dx\\
&=F(\sqrt s)^3
+3\int_{\sqrt s}^\infty f(x)F(s/x)^2\,dx.
\end{aligned}
\tag{11}
\]

Here the first term is exactly
$3\int_0^{\sqrt s}f(x)F(x)^2dx=F(\sqrt s)^3$.

For completeness, (11) has the following finite outward-rounded arithmetic
certificate in the only range where the coarser analytic bound below is not
already sufficient. Put $\eta=51/50$, $z_r=\sqrt{\beta\log r}$, and

\[
L_r:=F(z_r)^3+3\sum_{m=0}^{125}
 \{F(\eta^{m+1}z_r)-F(\eta^m z_r)\}
 F(z_r/\eta^{m+1})^2.
\tag{12}
\]

On $[\eta^mz_r,\eta^{m+1}z_r]$, the factor
$F(\beta\log r/x)^2$ is at least
$F(z_r/\eta^{m+1})^2$, so (11) gives
$1-\mathfrak q_r\ge L_r$. Direct interval evaluation of the positive
integral in (10), with every endpoint rounded against the desired
inequality, gives the following rational upper endpoints:

| Integer range for $r$ | Upper bound for $(r-1)\{1-L_r+6r^{-9/2}\}$ |
| --- | --- |
| $3\le r\le9$ | $891/1000$ |
| $10\le r\le19$ | $892/1000$ |
| $20\le r\le39$ | $876/1000$ |
| $40\le r\le69$ | $836/1000$ |
| $70\le r\le99$ | $797/1000$ |

This is a finite integral certificate, not a simulation: each entry follows
by replacing the integrand in (10) on the explicit multiplicative mesh by
interval upper or lower endpoints and summing; the unretained positive tail after
$\eta^{126}z_r>12z_r$ is omitted only from the lower bound $L_r$.
Thus (9) holds for $3\le r\le99$.

For $r\ge100$, no finite check is needed. If $G_1,G_2$ are independent
standard Gaussians, polar coordinates give

\[
\Pr\{|G_1G_2|>s\}
={2\over\pi}\int_0^{\pi/2}
 \exp\left(-{s\over\cos u}\right)du.
\tag{13}
\]

Indeed, conditional on the polar angle, the required squared radius is
$2s/|\sin(2\theta)|$, and a $\chi^2_2$ tail at $y$ is $e^{-y/2}$.
For $0\le u<\pi/2$, $\sec u\ge1+u^2/2$: its derivative dominates $u$
because $\sec u\tan u\ge\tan u\ge u$. Therefore

\[
\Pr\{|G_1G_2|>s\}
\le {2e^{-s}\over\pi}\int_0^\infty e^{-su^2/2}du
=\sqrt{2\over\pi s}\,e^{-s},
\tag{14}
\]

which is (2). A union over the three pairs and $s=\beta\log r$ yields

\[
(r-1)\{\mathfrak q_r+6r^{-9/2}\}
\le(r-1)\left{
3\sqrt{2\over\pi\beta\log r}\,r^{-\beta}
+6r^{-9/2}\right}.
\tag{15}
\]

The right-hand side decreases for $r\ge100$. For its first term, the
logarithmic derivative has the sign of

\[
{r\over r-1}-\beta-{1\over2\log r}
\le {100\over99}-{21\over20}<0,
\tag{16}
\]

and the second term also decreases. At $r=100$, (15) is less than
$857/1000<9/10$. This proves (9) for every $r\ge3$. $\square$

### unit_003: lemma

**Lemma (Exact target-window mass;
\label{lem:step-002-target-mass}).**
Let $G\sim N(0,1)$, $a_*=10/9$, and
$t_r=\sqrt{a_*\log r}$ for $r\ge3$. Define

\[
c_{\rm tar}:=\sqrt{2\over\pi a_*}
 \exp\left(-1-{1\over2a_*\log3}\right),
\qquad
C_{\rm tar}:=\sqrt{2\over\pi a_*}.
\tag{17}
\]

Then

\[
c_{\rm tar}\,r^{-5/9}(\log r)^{-1/2}
\le
\Pr\{t_r\le|G|\le t_r+t_r^{-1}\}
\le
C_{\rm tar}\,r^{-5/9}(\log r)^{-1/2}.
\tag{18}
\]

**Proof / justification.**
The standard Gaussian density $\phi$ decreases on $[0,\infty)$. Hence

\[
{2\over t_r}\phi(t_r+t_r^{-1})
\le2\int_{t_r}^{t_r+t_r^{-1}}\phi(x)dx
\le {2\over t_r}\phi(t_r).
\tag{19}
\]

Now $t_r^2/2=(5/9)\log r$ and

\[
{(t_r+t_r^{-1})^2\over2}
={t_r^2\over2}+1+{1\over2t_r^2}
\le {5\over9}\log r+1+{1\over2a_*\log3}.
\tag{20}
\]

Substitution in (19) gives precisely (18). $\square$

### unit_004: proposition

For the fixed target and slot, define the signed target-window event

\[
W_{ij}:=\bigcap_{M\in\{U,V,W\}}
\{t_r\le|X_M|\le t_r+t_r^{-1}\},
\tag{21}
\]

and the event, expressed only in the original raw coordinates,

\[
C_{ij}:=\bigcap_{\ell\ne j}
\bigcap_{\{M,N\}\in\binom{\{U,V,W\}}2}
\{|Z_{\ell}^{(M)}Z_{\ell}^{(N)}|\le b_*\log r\}.
\tag{22}
\]

**Proposition (Competitor reserve conditional on the target window;
\label{prop:step-002-conditional-competitors}).**
Under Assumption~\ref{assump:random-initialization}, the accepted
$E_{\rm sm}$ conclusion, and Lemmas~\ref{lem:step-002-regression} and
\ref{lem:step-002-product-reserve}, for every signed
$x=(x_U,x_V,x_W)$ satisfying the three inequalities in $W_{ij}$,

\[
\Pr\{C_{ij}\mid X_U=x_U,X_V=x_V,X_W=x_W\}\ge {1\over10}.
\tag{23}
\]

No independence between $C_{ij}$ and $W_{ij}$, and no independence across
different targets, is assumed.

**Proof / justification.**
Put $a=a_*=10/9$, $b=b_*=19/18$, $q=q_*=1/4096$, and

\[
d_r:=q(t_r+t_r^{-1}),\qquad
L_r^{\rm cap}:=3\sqrt{\log r},\qquad
s_r:=b\log r-2d_rL_r^{\rm cap}-d_r^2.
\tag{24}
\]

For $\ell\ne j$, the regression representation (4) and the target-window
bound imply

\[
|c_{M\ell}x_M|\le d_r,\qquad
|Z_{\ell}^{(M)}|\le |G_{M\ell}|+d_r.
\tag{25}
\]

The numerical slack in $a,b,q$ leaves a product exponent strictly above one.
Writing $h=\log r\ge\log3>1$, direct expansion gives

\[
{b h-s_r\over h}
=6q\sqrt a+{6q\over\sqrt a\,h}
+q^2a+{2q^2\over h}+{q^2\over a h^2}
\le {37\over3}q+5q^2<{1\over180}.
\tag{26}
\]

Here $\sqrt{10/9}<19/18$, $1/\sqrt a<1$, $a<2$, and $h>1$ were
used. Since

\[
b-{21\over20}={1\over180},
\tag{27}
\]

equations (26)--(27) prove

\[
s_r\ge {21\over20}\log r.
\tag{28}
\]

For a fixed competitor $\ell$, suppose first that
$\max_M|G_{M\ell}|\le L_r^{\rm cap}$ and every standard-Gaussian pair
product is at most $s_r$. Then, for every mode pair,

\[
|Z_{\ell}^{(M)}Z_{\ell}^{(N)}|
\le |G_{M\ell}G_{N\ell}|
+d_r(|G_{M\ell}|+|G_{N\ell}|)+d_r^2
\le b\log r.
\tag{29}
\]

For a standard Gaussian, the Chernoff bound
$\Pr\{|G|>x\}\le2e^{-x^2/2}$ follows directly from
$\mathbb Ee^{tG}=e^{t^2/2}$. Therefore the cap failure for the three
modes is at most

\[
6e^{-(L_r^{\rm cap})^2/2}=6r^{-9/2}.
\tag{30}
\]

By (28), the remaining product failure is at most $\mathfrak q_r$ from
Lemma~\ref{lem:step-002-product-reserve}. A union bound over the $r-1$
competitors, which requires no independence among their within-mode
residuals, now gives

\[
\Pr\{C_{ij}^c\mid X=x\}
\le(r-1)(\mathfrak q_r+6r^{-9/2})
\le {9\over10}.
\tag{31}
\]

Taking complements proves (23). $\square$

### unit_005: proposition

**Proposition (Joint one-slot extreme window;
\label{prop:step-002-joint-window}).**
Under Assumption~\ref{assump:random-initialization}, the accepted
$E_{\rm sm}$ conclusion, Lemma~\ref{lem:step-002-target-mass}, and
Proposition~\ref{prop:step-002-conditional-competitors}, define the actual
one-slot, target-$j$ event

\[
E_{{\rm win},ij}:=W_{ij}\cap C_{ij}.
\tag{32}
\]

Let

\[
c_{\rm win}:={c_{\rm tar}^3\over10},
\qquad C_{\rm win}:=C_{\rm tar}^3.
\tag{33}
\]

Then, for every $i\in[k]$ and $j\in[r]$,

\[
c_{\rm win}r^{-5/3}(\log r)^{-3/2}
\le p_{{\rm win},j}
:=\Pr(E_{{\rm win},ij}\mid\mathcal F_{\rm sm})
\le C_{\rm win}r^{-5/3}(\log r)^{-3/2}.
\tag{34}
\]

The conditional probability is independent of the slot index $i$. Thus
$p_{\rm win}:=\min_{j\in[r]}p_{{\rm win},j}$ obeys the same two-sided
bound. Moreover, at the normalized initial state $h_i^0$,

\[
R_j(h_i^0)\le {b_*\over a_*}={19\over20},
\qquad S_j(h_i^0)\le(r-1)R_j(h_i^0)\le rR_j(h_i^0).
\tag{35}
\]

**Proof / justification.**
The three target coordinates $X_U,X_V,X_W$ are independent standard
Gaussians because the three raw mode vectors are independent and every
realized target column is unit. Lemma~\ref{lem:step-002-target-mass}
therefore gives

\[
c_{\rm tar}^3r^{-5/3}(\log r)^{-3/2}
\le\Pr(W_{ij}\mid\mathcal F_{\rm sm})
\le C_{\rm tar}^3r^{-5/3}(\log r)^{-3/2}.
\tag{36}
\]

For the lower bound, do not factor $W_{ij}$ and $C_{ij}$. Instead,
Proposition~\ref{prop:step-002-conditional-competitors} applies uniformly
at every signed point $x$ in the target window, so disintegration gives

\[
\begin{aligned}
\Pr(E_{{\rm win},ij}\mid\mathcal F_{\rm sm})
&=\int_{x\in W_{ij}}
 \Pr(C_{ij}\mid X=x,\mathcal F_{\rm sm})\,
 d\Pr_X(x\mid\mathcal F_{\rm sm})\\
&\ge {1\over10}\Pr(W_{ij}\mid\mathcal F_{\rm sm}).
\end{aligned}
\tag{37}
\]

The upper bound follows from $E_{{\rm win},ij}\subseteq W_{ij}$. Equations
(33), (36), and (37) prove (34). Assumption~\ref{assump:random-initialization}
makes the conditional law identical across slots, proving the slot claim.
The minimum over finitely many targets preserves both uniform bounds; no
claim of independence among the target events is made.

Finally, normalization of $\xi_i^{(M)}$ cancels in every same-mode ratio.
On $E_{{\rm win},ij}$, each target denominator has squared product at least
$t_r^2=a_*\log r$, while (22) bounds every corresponding competitor
numerator product by $b_*\log r$. Thus each of the three pair ratios is at
most $b_*/a_*=19/20$, proving the first part of (35). Every sum defining
$S_j$ has at most $r-1$ terms, each at most $R_j$, proving the second part.
$\square$

## Target-Step Assembly

Fix any realized tensor in the accepted dependency event $E_{\rm sm}$.
For every target $j$ and slot $i$, define $E_{{\rm win},ij}$ by (21),
(22), and (32), using only the original raw proposal coordinates. The
regression variables in Lemma~\ref{lem:step-002-regression} are proof-local
and do not alter this event.

Lemma~\ref{lem:step-002-target-mass} supplies the exact three-mode target
mass. Lemma~\ref{lem:step-002-product-reserve} and
Proposition~\ref{prop:step-002-conditional-competitors} show, with displayed
constants, that imposing every competitor pair constraint retains at least a
$1/10$ fraction after conditioning on any point of the target window.
Proposition~\ref{prop:step-002-joint-window} therefore proves

\[
{1\over10}\left[\sqrt{2\over\pi a_*}
e^{-1-1/(2a_*\log3)}\right]^3
r^{-5/3}(\log r)^{-3/2}
\le p_{\rm win}
\le
\left({2\over\pi a_*}\right)^{3/2}
r^{-5/3}(\log r)^{-3/2}.
\tag{38}
\]

This is the exact accepted sketch-row claim. It is a one-slot probability
conditional on the fixed good instance, contains no confidence parameter or
rank choice, and uses neither target/competitor independence nor independence
among events for different targets. Equation (35) records the same-event
ratio interface needed after the downstream coverage step. The global proof
diagnostic is not evidence in this assembly.

## Explicit Rate Audit

- Exposed variables: $r$ through
  $r^{-5/3}(\log r)^{-3/2}$. The setting constants
  $q_*=1/4096$, $a_*=10/9$, and $b_*=19/18$ are displayed and fixed.
  Neither $n$, $k$, $\delta_{\rm sm}$, nor $\delta_{\rm init}$ appears in
  the conditional one-slot rate.
- Hidden constants may depend on: None. The lower and upper comparison
  constants are exactly the two constants displayed in (38).
- Hidden constants may not depend on: the target $j$, slot $i$, realized
  tensor within $E_{\rm sm}$, $n$, $k$, smoothing scale, base scales,
  confidence levels, proposal horizons, or any generated trajectory object.
- Fixed quantities: the realized tensor in $E_{\rm sm}$ and the fixed
  numerical $q_*,a_*,b_*$ are held fixed while the one-slot proposal
  probability is taken.
- Probability mode: conditional on the once-drawn tensor in $E_{\rm sm}$,
  over one raw Gaussian proposal triple. It is not multiplied by
  $1-\delta_{\rm sm}$ and is not yet amplified to
  $1-\delta_{\rm init}$.
- Horizon mode: fixed horizon of one proposal slot. Independence across
  slots and the value of $k$ are reserved for `step_003`.
- Norm mode: scalar absolute raw coordinates and scalar absolute pair
  products. The derived ratio statement uses the setting's projective
  pair ratios $R_j,S_j$ at initialization.
- Admissibility conditions and auxiliary tolerances: $r\ge3$, the accepted
  event $E_{\rm sm}$, and Assumption~\ref{assump:random-initialization}.
  The proof-local cap $3\sqrt{\log r}$ is not an assumption or an event
  exported downstream.
- Term absorption or simplification inequalities: (26)--(28) prove that
  the regression shifts and cap cost leave the explicit product threshold
  $(21/20)\log r$; (9) and (31) prove the exact $1/10$ competitor reserve;
  (19)--(20) prove both target-mass constants. No term is absorbed by
  asymptotic notation.
- Probability conversion: the only conversion is the conditional integral
  (37). It explicitly avoids a product of dependent target and competitor
  events. The union in (31) does not use independence across competitors.
- Contribution to any Rate Specialization Bridge: this step exports the
  uniform per-target lower probability $p_{\rm win}$ to `step_003`, where
  $kp_{\rm win}$ and the target union will be handled. No $k$-dependent
  simplification is performed here.
- Baseline-reduction check: when the realized factors are orthogonal,
  $c_{M\ell}=0$ in (4), so all regression shifts vanish and the competitor
  calculation reduces to centered independent mode triples. The target
  window and its exact rate are unchanged; no error floor or weaker
  baseline surrogate is introduced.

## Blockers

None

## Notation And Assumption Notes

- **Public-facing:** the family $E_{{\rm win},ij}$ in (32) and the uniform
  lower envelope $p_{\rm win}$ after (34) are the only exported helper
  objects. They are derived from one raw proposal triple on $E_{\rm sm}$,
  not primitive conditions. Their event definition uses the original
  setting coordinates only. Target labels are proof-only and are never
  supplied to the algorithm.
- **Appendix-local constants:** $c_{\rm tar},C_{\rm tar}$ and
  $c_{\rm win},C_{\rm win}$ are direct expressions in the setting's fixed
  $a_*$ and the universal lower endpoint $r=3$. They are fully displayed in
  (17), (33), and (38), and carry no hidden dependence.
- **Proof-local event decomposition:** $W_{ij}$ and $C_{ij}$ merely split
  the public event $E_{{\rm win},ij}$ for the conditional-probability proof.
  Neither is exported as an independent event, and their independence is
  never assumed.
- **Proof-local regression notation:** $m_{M,j},X_M,c_{M\ell}$ and
  $G_{M\ell}$ in (3)--(4) translate the setting's realized factors and raw
  coordinates. The residual Gaussians are proved objects from
  Lemma~\ref{lem:step-002-regression}; only cross-mode independence is used.
- **Appendix-local conditioning notation:** $\mathcal F_{\rm sm}$ is the
  sigma-field generated by the setting's once-drawn smoothing perturbations.
  It makes explicit that the conditional probability fixes the complete
  realized factorization, not merely an arbitrary tensor representation.
- **Proof-local product notation and constants:**
  $\beta=21/20$, $\mathfrak q_r$, $F,f,\eta,L_r$,
  $d_r,L_r^{\rm cap},s_r$ are locally defined and bounded by
  Lemma~\ref{lem:step-002-product-reserve} or
  Proposition~\ref{prop:step-002-conditional-competitors}. The cap and
  mesh quantities are not downstream assumptions or outputs.
- **Constant provenance:** $21/20$ is proved admissible by the exact slack
  identity $b_*-21/20=1/180$ and (26); $9/10$ is the explicit product-union
  bound (9); $1/10$ is its complementary reserve. The exponents $5/9$ and
  $5/3$ come exactly from $a_*/2=5/9$ and three independent modes.
- **Assumption provenance:** `assump:random-initialization` is primitive.
  $E_{\rm sm}$ and (1) are supplied by the hash-matched accepted dependency.
  Every target window, competitor event, regression residual, cap event, and
  rate bound is proved in this step. There is no local conditional hypothesis
  used to complete an unconditional step conclusion.
- **No target-independence shortcut:** the proof conditions on the signed
  target coordinates and integrates (37). It never asserts independence
  between the target window and competitor coordinates, and it never asserts
  independence of $E_{{\rm win},ij}$ over different target labels. Only the
  primitive independence of the three raw mode vectors is used.
- **Boundary handling:** $r\ge3$ makes $\log r>1$, $t_r>0$, every target
  denominator on $E_{{\rm win},ij}$ nonzero, and the finite product reserve
  valid. The zero-interference boundary is included and simplifies (4).
- **Hash preflight:** all seven hashes in `Step Identity` were recomputed and
  matched before this artifact was written. The dependency review status is
  `ACCEPTED`; the sketch review and global review statuses are also
  `ACCEPTED`.
- **Global diagnostic boundary:** the paired global diagnostic/review was
  valid and accepted. The only step-relevant planning idea used was to
  condition on the exact target coordinates before applying regression and
  product tails. The diagnostic was not used as evidence, a cited result, an
  assumption source, or authority to change the target claim.
