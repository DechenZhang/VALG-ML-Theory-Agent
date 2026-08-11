# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_3/idea_3`
- Global-proof attempt: 1
- Sketch attempt: 1
- Goal mode: exact-goal mode
- Progress type: `conditional`
- Reviewed setting: `perspective_3/idea_3/setting.md`, SHA-256
  `b2b388c3355f61378fad862ef081e780922231ab0e1793f0f73fb4b7fa691a1f`
- Reviewed sketch: `perspective_3/idea_3/proof_sketch.md`, SHA-256
  `207b24d21df74b23b7f0f1b0e4069cb8b452497c9e74572e8b8afdf4fe7dcef2`
- Reviewed sketch review: `perspective_3/idea_3/proof_sketch_review.md`, SHA-256
  `ed798a2a463eee757fb0d9f9dbd3c1e88668e3185dae67576d4cf72ab4845502`
- Confirmed sketch-review status: `ACCEPTED`
- Accepted roadmap: nine steps, `step_001` through `step_009`, with the
  normalized initialization geometry used only as a scale-correct certificate
  and all target, tangent, Taylor, and loss objects kept in raw coordinates.

## Status

PARTIAL_BLOCKED

The theorem-level chain closes under the accepted interfaces. The principal
unresolved theorem-critical derivation is the direct gauge-fixed Terracini
estimate (TF)--(TC) in `step_003`; its source, quotient convention, exact
target object, scale, accumulation mode, boundary regime, and downstream
interface are already fixed, so the obligation is `step-local`. The
normalized Khatri--Rao concentration in `step_002` is a secondary local proof
obligation. No sketch/interface defect or theorem-contract defect is exposed.

## Attempted Theorem Claim

Let

\[
  \kappa_1=2\kappa^2,\qquad \delta_0=\frac18,
  \qquad C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R),
\]

\[
  E_\star=\min\left\{1,
  \sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}\right\},
  \qquad c_0=\frac{15}{16}\delta_0,
  \qquad \epsilon_0(\kappa)=\kappa_1^{-12}c_0^2.
\]

The attempted claim is exactly the formalized conditional theorem. There are
constants (r_0(\kappa,q)) and (C_{\rm dim}(\kappa,q)) such that for every
fixed (\kappa\ge1), fixed (q\ge4), every (r\ge r_0(\kappa,q)), every
(n\ge C_{\rm dim}(\kappa,q)r^4\log r), every
(r<k\le\lfloor r^{5/4}\rfloor), and every deterministic base triple
satisfying `assump:base_conditioning`, under the joint smoothing and
independent-initialization law,

\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge 1-r^{-10}.
\]

On the explicitly conditional event
(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}), where
(\mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}), the actual balanced
simultaneous-GD factors converge in (d_{\rm bal}) to a finite
(\theta_\infty), and

\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
  \ge \epsilon_0(\kappa)\|T\|_F^2>0.
\]

For the event

\[
  \mathcal F_+=\left\{\theta_t\to\theta_\infty\text{ in }d_{\rm bal},\quad
  \lim_{t\to\infty}F(\theta_t)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0\right\},
\]

the conclusion is

\[
\begin{aligned}
  \mathbb P(\mathcal F_+)
  &\ge \mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})\\
  &=\mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\\
  &\ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\end{aligned}
\]

No positive lower bound on the final conditional probability is attempted.
The probability mode is high probability for initialization followed by a
deterministic implication on an explicitly conditional all-time event. The
factor metric is (d_{\rm bal}), the coefficient metric is Frobenius norm in
the exact raw coefficient coordinates, and the theorem loss is the physical
Frobenius objective (F).

## Whole-Proof Draft

### Block G1: realized-factor conditioning (`step_001`)

For a base factor (\bar M=M^\circ D_M), the two parts of
`assump:base_conditioning` imply

\[
  \sigma_{\min}(\bar M)\ge\kappa^{-2},
  \qquad \|\bar M\|_{\rm op}\le\kappa^2.
\]

Write (M=\bar M+\Xi_M), where
(\Xi_M=(\rho/\sqrt n)G_M) and (G_M) is an (n\times r) standard Gaussian
matrix. The rectangular Gaussian operator-norm inequality, in the exact
Euclidean convention used here, gives for (t>0)

\[
  \mathbb P\left(
  \|\Xi_M\|_{\rm op}>
  \rho\left(1+\sqrt{r/n}+t\right)
  \right)\le e^{-nt^2/2}.
\]

Taking (t\asymp\sqrt{\log r/n}), using (q\ge4), and enlarging
(r_0(\kappa,q)) makes the displayed threshold at most
((2\kappa^2)^{-1}), with failure at most (r^{-20}) after the finite union
over the three modes. Weyl's inequalities then yield

\[
  \sigma_{\min}(M)
  \ge\kappa^{-2}-(2\kappa^2)^{-1}
  =(2\kappa^2)^{-1}=\kappa_1^{-1},
\]

\[
  \|M\|_{\rm op}
  \le\kappa^2+(2\kappa^2)^{-1}
  \le2\kappa^2=\kappa_1.
\]

Thus `step_001` exports (\mathcal E_{\rm cond}), full column rank of
(A,B,C), and

\[
  \|A^\dagger\|_{\rm op},\|B^\dagger\|_{\rm op},
  \|C^\dagger\|_{\rm op}\le\kappa_1.
\]

The positive source is the primitive base singular-value margin; the only
defect is the realized Gaussian perturbation, and it is absorbed before any
coefficient map or physical bridge is used.

### Block G2: balanced initialization, normalized geometry, and raw scale (`step_002`)

For every component and mode, write the raw Gaussian column as

\[
  x^{\rm raw}_{i,0}=R_i^x u_i^x,
  \qquad R_i^x=\|x^{\rm raw}_{i,0}\|_2,
  \qquad u_i^x\sim {\rm Unif}(\mathbb S^{n-1}),
\]

and analogously for (y,z). Gaussian radius-direction independence and the
product-preserving balancing map give exactly

\[
  (x_{i,0},y_{i,0},z_{i,0})
  =g_i(u_i^x,u_i^y,u_i^z),
  \qquad g_i=(R_i^xR_i^yR_i^z)^{1/3}.
\]

The (g_i)'s are independent of all directions. On
(\mathcal E_{\rm cond}),

\[
  \bar\alpha_{i,0}=\sqrt{n/r}\,g_iA^\dagger u_i^x,
  \qquad
  \mathbb E[\bar\alpha_{i,0}\bar\alpha_{i,0}^{\mathsf T}
  \mid g_i,A]
  =\frac{g_i^2}{r}(A^{\mathsf T}A)^{-1},
\]

with identical formulas for (\bar\beta,
\bar\gamma). Hence, on a local radial event such as
(1/2\le g_i\le2), the conditional covariance eigenvalues are between two
positive (\kappa)-dependent multiples of (1/r). The radial event is an
internal proof control, not a new theorem assumption or exported event.

For the normalized pair column

\[
  q_i^{\beta\gamma}
  =\bar\beta_{i,0}\otimes\bar\gamma_{i,0}\in\mathbb R^{r^2},
\]

the two modes are conditionally independent given (g_i,B,C), and

\[
  \mathbb E[q_i^{\beta\gamma}(q_i^{\beta\gamma})^{\mathsf T}
  \mid g_i,B,C]
  =\frac{g_i^4}{r^2}
  (B^{\mathsf T}B)^{-1}\otimes(C^{\mathsf T}C)^{-1}.
\]

The source-compatible local concentration interface is therefore

\[
  c_\kappa I_k
  \preceq
  (\bar K_0^{\bar\beta\bar\gamma})^{\mathsf T}
  \bar K_0^{\bar\beta\bar\gamma}
  \preceq C_\kappa I_k
\]

with conditional failure at most (r^{-20}), and likewise for the other two
mode pairs. It follows from the weaker public window that every eigenvalue is
in ([r^{-20},r^{20}]) for large (r). The proof unit must control the
diagonal column norms and the centered off-diagonal Gram by conditional
subexponential moment bounds and a matrix Bernstein/decoupling argument. Its
small parameter is
(k/r^2\le r^{-3/4}), and all constants are uniform over the realized triple
inside (\mathcal E_{\rm cond}).

The raw-normalized transfer is algebraically exact:

\[
  \beta_{i,0}=\sqrt{r/n}\,\bar\beta_{i,0},
  \qquad
  \gamma_{i,0}=\sqrt{r/n}\,\bar\gamma_{i,0},
\]

so

\[
  K_0^{\beta\gamma}=(r/n)\bar K_0^{\bar\beta\bar\gamma},
  \qquad
  G_{\rm raw}^{\beta\gamma}=(r/n)^2G_{\rm norm}^{\beta\gamma}.
\]

The same identities hold in the other modes. Moreover each normalized
tangent generator is a nonzero scalar multiple of its raw counterpart, hence

\[
  \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0.
\]

Neither (D_r), (\widehat D_0), nor the coefficient or physical residual is
normalized. This exact equality is the baseline-preserving repair of the
earlier raw-scale obstruction.

Finally, chi concentration for the (3k) Gaussian radii, with
(n\ge C_{\rm dim}r^4\log r), gives

\[
  \mathbb P\left(\max_i g_i>2\right)\le r^{-20},
\]

which is exactly (\mathcal E_{\rm size}^c), because all three balanced
columns in component (i) have norm (g_i).

### Block G3: gauge-fixed Terracini frame and raw tangent deficit (`step_003`)

The common balancing radius and the scalar normalization disappear after
passing to coefficient directions. On (\mathcal E_{\rm cond}), define

\[
  p_i^a=\frac{\bar\alpha_{i,0}}{\|\bar\alpha_{i,0}\|_2},
  \quad p_i^b=\frac{\bar\beta_{i,0}}{\|\bar\beta_{i,0}\|_2},
  \quad p_i^c=\frac{\bar\gamma_{i,0}}{\|\bar\gamma_{i,0}\|_2}.
\]

These vectors are nonzero almost surely. More precisely, if
(H_A=(A^{\mathsf T}A)^{-1/2}) and (z_i^a\sim N(0,I_r)), then

\[
  p_i^a\stackrel{d}{=}
  \frac{H_Az_i^a}{\|H_Az_i^a\|_2},
\]

and similarly in the other modes. Thus the coefficient directions are
independent across components and modes, centrally symmetric, elliptic
angular vectors whose condition numbers are controlled only by (\kappa).
This exact angular representation is the primitive-to-mechanism path for
(TF)--(TC); the balancing radii and the generated normalized Gram event are
not conditioned upon in the frame calculation.

For component (i), let

\[
  \mathcal K_i=\{(s p_i^a,t p_i^b,u p_i^c):s+t+u=0\}
\]

and let (H_i=\mathcal K_i^\perp). Define (J_i:H_i\to\mathbb R^{r^3}) by

\[
  J_i(h^a,h^b,h^c)
  =h^a\otimes p_i^b\otimes p_i^c
  +p_i^a\otimes h^b\otimes p_i^c
  +p_i^a\otimes p_i^b\otimes h^c,
\]

and (J=\bigoplus_iJ_i). Its range is exactly (\mathscr S_0). To see the
within-component source explicitly, decompose
(h^a=s_ap_i^a+h_\perp^a) and similarly in the other modes. Then

\[
  \|J_i h\|_F^2
  =\|h_\perp^a\|_2^2+\|h_\perp^b\|_2^2
   +\|h_\perp^c\|_2^2+(s_a+s_b+s_c)^2.
\]

On (H_i), the parallel coefficients satisfy (s_a=s_b=s_c). Therefore

\[
  I_{H_i}\preceq J_i^*J_i\preceq3I_{H_i}.
  \tag{G3.1}
\]

This is the nonvacuous positive lower source. It is not supplied by the
normalized Gram event and does not assume the desired full-frame closure.

For (i\ne j), set
(a_{ij}=\langle p_i^a,p_j^a\rangle), and define (b_{ij},c_{ij})
analogously. Before quotient projection, the off-component block has the
explicit form

\[
  J_i^*J_j=
  \begin{pmatrix}
  b_{ij}c_{ij}I & c_{ij}p_j^a(p_i^b)^{\mathsf T}
    & b_{ij}p_j^a(p_i^c)^{\mathsf T}\\
  c_{ij}p_j^b(p_i^a)^{\mathsf T} & a_{ij}c_{ij}I
    & a_{ij}p_j^b(p_i^c)^{\mathsf T}\\
  b_{ij}p_j^c(p_i^a)^{\mathsf T}
    & a_{ij}p_j^c(p_i^b)^{\mathsf T} & a_{ij}b_{ij}I
  \end{pmatrix}.
  \tag{G3.2}
\]

Quotient projections cannot enlarge these blocks. Central symmetry and mode
independence center every displayed term. Uniform elliptic-angular moment
bounds give coordinate scale (r^{-1/2}), entry variance scale (r^{-3}),
and block-row quadratic variance scale (k/r^2). A leave-one-component-out
decoupling followed by self-adjoint matrix Bernstein must produce, with
conditional failure at most (r^{-20}),

\[
  \left\|J^*J-\operatorname{diag}(J_i^*J_i)\right\|_{\rm op}
  \le C_\kappa\left(
  \sqrt{\frac{k}{r^2}}+\sqrt{\frac{\log r}{r}}
  \right)\le\frac12.
  \tag{TF}
\]

The first inequality is the hard local calculation. The second follows at
(k\le r^{5/4}) after increasing (r_0(\kappa)). Combining (G3.1) and (TF)
gives

\[
  J^*J\succeq\frac12 I
  \quad\text{on }\bigoplus_iH_i,
  \qquad \|(J^*J)^\dagger\|_{\rm op}\le2.
  \tag{G3.3}
\]

The target-correlation calculation has an equally explicit current-notation
interface. Before quotient projection,

\[
  J_i^*D_r=
  \left(
  p_i^b\odot p_i^c,
  p_i^a\odot p_i^c,
  p_i^a\odot p_i^b
  \right).
  \tag{G3.4}
\]

The quotient projection only decreases its norm. For independent elliptic
angular vectors (p,p'),

\[
  \mathbb E\|p\odot p'\|_2^2
  =\sum_{j=1}^r\mathbb E p_j^2\,\mathbb E(p'_j)^2
  \le \frac{C_\kappa}{r}.
\]

Each summand lies in ([0,1]), so scalar Bernstein, summed over (k)
components and the three mode pairs, must yield

\[
  \|J^*D_r\|_2^2
  \le C_\kappa\left(\frac{k}{r}+\log r\right)
  \tag{TC}
\]

with conditional failure at most (r^{-20}). Equations (G3.3)--(TC) imply

\[
\begin{aligned}
  \|P_{\mathscr S_0}D_r\|_F^2
  &=\left\langle J^*D_r,(J^*J)^\dagger J^*D_r\right\rangle\\
  &\le2C_\kappa\left(\frac{k}{r}+\log r\right)
  \le\frac r2
\end{aligned}
\tag{G3.5}
\]

for large (r), uniformly at the maximal rank (k=r^{5/4}). Hence

\[
  \|P_{\mathscr S_0^\perp}D_r\|_F
  \ge\sqrt{r/2}.
\]

Define

\[
  W_0=\frac{P_{\mathscr S_0^\perp}D_r}
  {\|P_{\mathscr S_0^\perp}D_r\|_F}.
\]

Because (\widehat D_0=\Psi(\theta_0)\in\mathscr S_0),

\[
  \langle D_r-\widehat D_0,W_0\rangle
  =\|P_{\mathscr S_0^\perp}D_r\|_F
  \ge\sqrt{r/2}\ge\delta_0\sqrt r.
  \tag{G3.6}
\]

Thus the produced object is the exact raw-target normal residual consumed by
the theorem; there is no transformed-target residual to control. This proves
the intended (\mathcal E_{\rm deficit}) once the step-local (TF)--(TC)
probability calculation is supplied.

### Block G4: initialization-event probability (`step_004`)

The probability organization must not condition the angular law on the
generated normalized Gram event. Instead, on every realized triple in
(\mathcal E_{\rm cond}), Blocks G2 and G3 separately prove

\[
  \mathbb P((\mathcal E_{\rm gram}^{\rm norm})^c
  \mid A,B,C)\le r^{-20},
  \quad
  \mathbb P(\mathcal E_{\rm size}^c\mid A,B,C)\le r^{-20},
\]

\[
  \mathbb P(\mathcal E_{\rm deficit}^c\mid A,B,C)\le r^{-20}.
\]

Together with
(\mathbb P(\mathcal E_{\rm cond}^c)\le r^{-20}), the tower property and
union bound give

\[
  \mathbb P(\mathcal E_{\rm init\_norm}^c)
  \le4r^{-20}\le r^{-10}
\]

for large (r). Every constituent is produced before this assembly and the
intersection is exactly the setting's event, not an enlarged proxy.

### Block G5: finite path, actual limit, and all-time radius (`step_005`)

On (\mathcal E_{\rm size}\cap\mathcal C_{\rm path}), define

\[
  \ell_t=d_{\rm bal}(\theta_{t+1},\theta_t),
  \qquad \sum_{t\ge0}\ell_t=E_{\rm path}\le E_\star\le1.
\]

For (u>t), the triangle inequality in the finite-dimensional factor product
space gives

\[
  d_{\rm bal}(\theta_u,\theta_t)
  \le\sum_{s=t}^{u-1}\ell_s.
  \tag{G5.1}
\]

The tail of a convergent nonnegative series tends to zero, so
((\theta_t)) is Cauchy and converges to a finite factor triple
(\theta_\infty). Letting (u\to\infty) in (G5.1) gives

\[
  d_{\rm bal}(\theta_\infty,\theta_0)\le E_{\rm path}\le E_\star\le1.
  \tag{G5.2}
\]

For every column and mode,

\[
  \|m_{i,t}\|_2
  \le\|m_{i,0}\|_2+\|m_{i,t}-m_{i,0}\|_2
  \le2+d_{\rm bal}(\theta_t,\theta_0)\le3,
  \tag{G5.3}
\]

and the same bound holds at the limit. The accumulated defect is exactly the
nonnegative increment series; each increment is charged once, and its tails
vanish. No convergence, boundedness, or local-validity conclusion is assumed
inside (\mathcal C_{\rm path}). The zero-length case gives
(\theta_\infty=\theta_0) exactly. The balancing map's zero-factor branch
does not affect this Euclidean finite-variation argument.

### Block G6: exact raw CP Taylor remainder (`step_006`)

Take two factor triples (\theta=(X,Y,Z)) and
(\theta'=(X+\Delta X,Y+\Delta Y,Z+\Delta Z)), with all endpoint columns of
norm at most (R) and
(d=d_{\rm bal}(\theta',\theta)\le1). Put

\[
  \alpha_i=A^\dagger x_i,\quad
  \Delta\alpha_i=A^\dagger\Delta x_i,
\]

and analogously in the other modes. Exact trilinearity gives

\[
\begin{aligned}
  &\Psi(\theta')-\Psi(\theta)-D\Psi(\theta)[\theta'-\theta]\\
  &=\sum_i\bigl(
  \Delta\alpha_i\otimes\Delta\beta_i\otimes\gamma_i
  +\Delta\alpha_i\otimes\beta_i\otimes\Delta\gamma_i
  +\alpha_i\otimes\Delta\beta_i\otimes\Delta\gamma_i
  +\Delta\alpha_i\otimes\Delta\beta_i\otimes\Delta\gamma_i
  \bigr).
\end{aligned}
\tag{G6.1}
\]

For the first quadratic term, for example,

\[
\begin{aligned}
  \left\|\sum_i
  \Delta\alpha_i\otimes\Delta\beta_i\otimes\gamma_i\right\|_F
  &\le\sum_i\|\Delta\alpha_i\|\,\|\Delta\beta_i\|\,\|\gamma_i\|\\
  &\le\kappa_1^3R
  \|\Delta X\|_F\|\Delta Y\|_F
  \le\kappa_1^3R d^2.
\end{aligned}
\]

The other two quadratic terms obey the same bound. The cubic term satisfies

\[
  \sum_i\|\Delta\alpha_i\|\|\Delta\beta_i\|
  \|\Delta\gamma_i\|
  \le\kappa_1^3
  \|\Delta X\|_F\|\Delta Y\|_F\|\Delta Z\|_F
  \le\kappa_1^3d^3\le\kappa_1^3d^2.
\]

Therefore

\[
  \|\Psi(\theta')-\Psi(\theta)-D\Psi(\theta)[\theta'-\theta]\|_F
  \le C_{\rm CP}(\kappa,R)d^2.
  \tag{G6.2}
\]

The use of Frobenius Cauchy--Schwarz across component indices is what prevents
a hidden factor (k). Apply (G6.2) once with
(\theta=\theta_0), (\theta'=\theta_\infty), (R=3), and
(d\le E_\star\). The resulting remainder (\mathcal R_\infty) satisfies

\[
  \|\mathcal R_\infty\|_F
  \le C_{\rm CP}(\kappa,3)E_\star^2
  \le\delta_0/16.
  \tag{G6.3}
\]

This is a one-shot endpoint defect, not a per-iteration error.

### Block G7: tangent cancellation and limiting coefficient margin (`step_007`)

The derivative at initialization has range in (\mathscr S_0):

\[
  D\Psi(\theta_0)[\Delta\theta]
  =\sum_i\left(
  \Delta\alpha_i\otimes\beta_{i,0}\otimes\gamma_{i,0}
  +\alpha_{i,0}\otimes\Delta\beta_i\otimes\gamma_{i,0}
  +\alpha_{i,0}\otimes\beta_{i,0}\otimes\Delta\gamma_i
  \right).
\]

Since (W_0\perp\mathscr S_0) and
(\widehat D_0=\Psi(\theta_0)\in\mathscr S_0), the endpoint expansion gives

\[
\begin{aligned}
  \langle D_r-\Psi(\theta_\infty),W_0\rangle
  &=\langle D_r-\widehat D_0,W_0\rangle
    -\langle\mathcal R_\infty,W_0\rangle\\
  &\ge\delta_0\sqrt r-\delta_0/16\\
  &\ge\frac{15}{16}\delta_0\sqrt r=c_0\sqrt r.
\end{aligned}
\tag{G7.1}
\]

The final inequality uses (r\ge1). Consequently

\[
  \|D_r-\Psi(\theta_\infty)\|_F\ge c_0\sqrt r.
  \tag{G7.2}
\]

The full infinite trajectory enters only through the single endpoint
displacement bounded in Block G5. At zero path length the remainder vanishes
and the entire initial normal margin survives.

### Block G8: exact same-target physical bridge and relative floor (`step_008`)

Let (P_A=AA^\dagger), and similarly define (P_B,P_C). Because
(T=(A\otimes B\otimes C)D_r) and because orthogonal mode projection acts
componentwise on (S(\theta)),

\[
\begin{aligned}
  &(P_A\otimes P_B\otimes P_C)(T-S(\theta))\\
  &\qquad=(A\otimes B\otimes C)
  \left(D_r-\Psi_{A,B,C}(\theta)\right).
\end{aligned}
\tag{G8.1}
\]

This is an equality for the same realized physical target, not a population,
normalized, projected-target, or no-error surrogate. Orthogonal projection can
only decrease the residual norm, while the smallest singular value of
(A\otimes B\otimes C) is at least (\kappa_1^{-3}). Therefore Block G7
implies

\[
\begin{aligned}
  F(\theta_\infty)
  &=\|T-S(\theta_\infty)\|_F^2\\
  &\ge\kappa_1^{-6}
  \|D_r-\Psi(\theta_\infty)\|_F^2\\
  &\ge\kappa_1^{-6}c_0^2r.
\end{aligned}
\tag{G8.2}
\]

Also

\[
  \|T\|_F^2
  \le\|A\|_{\rm op}^2\|B\|_{\rm op}^2\|C\|_{\rm op}^2
  \|D_r\|_F^2
  \le\kappa_1^6r.
  \tag{G8.3}
\]

Combining (G8.2)--(G8.3) yields

\[
  F(\theta_\infty)
  \ge\kappa_1^{-12}c_0^2\|T\|_F^2
  =\epsilon_0(\kappa)\|T\|_F^2.
  \tag{G8.4}
\]

Full rank also gives (\|T\|_F\ge\kappa_1^{-3}\sqrt r>0). Since (F) is a
polynomial in the factors and (\theta_t\to\theta_\infty),
(F(\theta_t)\to F(\theta_\infty)).

### Block G9: epsilon and probability boundary (`step_009`)

Blocks G5 and G8 prove the deterministic inclusion

\[
  \mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}
  \subseteq\mathcal F_+.
\]

Block G4 gives
(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}>0), so the elementary
conditional-probability identity is legal and gives

\[
\begin{aligned}
  \mathbb P(\mathcal F_+)
  &\ge\mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})\\
  &=\mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\\
  &\ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\end{aligned}
\]

The remaining conditional factor is uncontrolled and is retained exactly. If
it is zero, the theorem gives a zero unconditional lower bound and remains
correct. No independence between initialization and the path event is used.

### Assembly

Blocks G1--G4 prove the unconditional normalized initialization certificate in
the joint probability space. On its intersection with the sole authorized
conditional path event, Block G5 produces the actual finite factor limit and
the radius required by Block G6. Blocks G6--G7 compare the endpoint to the
initial raw tangent space and leave a coefficient residual of order
(\sqrt r). Block G8 transfers that residual through an exact same-target
identity and specializes it to the relative physical floor
(\epsilon_0(\kappa)\|T\|_F^2). Block G9 performs only event and probability
assembly. The composition is complete at theorem-diagnostic granularity. Its
material unresolved local proof is the high-probability (TF)--(TC) estimate,
with the normalized pair-Gram concentration as a secondary local derivation.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| G1: realized conditioning | Makes (A^\dagger,B^\dagger,C^\dagger) legal and supplies upper/lower singular-value transfers | `step_001` | Primitive base and smoothing laws | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Check the Gaussian operator-tail constants and allocate failure (r^{-20}); step-local |
| G2: normalized initialization geometry | Produces normalized pair-Gram windows, exact raw scale, span equality, and initial size | `step_002` | G1 conditioning and independent Gaussian initialization | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Prove uniform conditional Khatri--Rao Gram concentration, including a local lower radial control; step-local |
| G3: Terracini normal margin | Produces (TF), (TC), (W_0), and the exact raw deficit | `step_003` | G1 angular conditioning; G2 normalized/raw representation and span identity | `assump:rank_window`, `assump:independent_initialization`; derived G1 controls | Prove the quotient off-block operator bound and target-correlation bound with conditional failure (r^{-20}); principal step-local hard obligation |
| G4: initial event assembly | Proves (\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}) | `step_004` | G1--G3 event estimates | Primitive assumptions inherited through dependencies | Verify conditional/tower bookkeeping without conditioning G3 on the generated Gram event; elementary once G1--G3 are accepted |
| G5: finite-path closure | Produces the actual factor limit, endpoint displacement, and radius (3) | `step_005` | G2 size output, G4 event inclusion, explicit (\mathcal C_{\rm path}) | `assump:gd_step`; explicitly conditional path hypothesis | Tail-sum completeness argument only; step-local and source-complete |
| G6: raw Taylor interface | Bounds nonlinear endpoint motion with no (k)-loss | `step_006` | G1 left-inverse bounds; G5 radius and displacement | Accepted derived controls only | Check the component-index Cauchy--Schwarz inequalities and exact constant; step-local |
| G7: coefficient obstruction preservation | Converts the initial normal margin into a limiting raw coefficient floor | `step_007` | G3 witness, G5 endpoint, G6 remainder | Accepted derived controls only | Exact orthogonality/constant arithmetic; step-local |
| G8: physical loss bridge | Transfers the raw floor to the same target and relative physical objective | `step_008` | G1 singular values; G7 coefficient margin | Accepted derived controls only | Verify projection identity, Kronecker singular values, and relative normalization; step-local |
| G9: final event assembly | Defines (\mathcal F_+) and retains the unresolved conditional probability exactly | `step_009` | G4 probability, G5 convergence, G8 physical floor | Joint probability-space convention in `setting.md` | Measurability and conditional identity; elementary step-local assembly |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | Block G1 | Root producer for G2, G3, G6, G8 | Gaussian rectangular norm tail; base singular-value calculation; Weyl | Exact Euclidean realized-factor convention |
| `step_002` | Block G2 | Consumed by G3, G4, G5 | Radius-direction decomposition; chi tails; normalized pair-Gram concentration; exact (r/n) transfer | Internal lower radial event may be used inside the proof but is not exported theorem-facing |
| `step_003` | Block G3 | Consumed by G4 and G7 | Gauge quotient; ACG moment package; decoupled matrix Bernstein for (TF); scalar Bernstein for (TC); projection formula | Principal hard step; all interfaces remain those of the accepted sketch |
| `step_004` | Block G4 | Supplies high-probability initialization to G5 and G9 | Tower property and four-term union bound | G3 probability must be proved under G1 conditioning and then intersected with G2 events |
| `step_005` | Block G5 | Supplies limit/radius to G6--G9 | Finite total variation, Cauchy tails, columnwise norm bound | The sole all-time source is explicitly conditional (E_{\rm path}\le E_\star) |
| `step_006` | Block G6 | Supplies one-shot remainder to G7 | Exact trilinear expansion and no-(k)-loss summation | Same raw coefficient map as the theorem |
| `step_007` | Block G7 | Supplies coefficient floor to G8 | Initial tangent cancellation and remainder absorption | Preserves the zero-path baseline exactly |
| `step_008` | Block G8 | Supplies physical floor to G9/final theorem | Exact mode-span projection and singular-value comparison | Same realized target; discarded residual is nonnegative in norm |
| `step_009` | Block G9 and final assembly | Terminal consumer of G4, G5, G8 | Event inclusion and conditional-probability identity | Does not lower-bound (\Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})) |

## Dependency And Assumption Audit

The accepted dependency graph is acyclic:

\[
  \{\text{G1},\text{G2},\text{G3}\}\to\text{G4},
  \qquad
  \{\text{G2},\text{G4},\mathcal C_{\rm path}\}\to\text{G5},
\]

\[
  \{\text{G1},\text{G5}\}\to\text{G6},
  \quad
  \{\text{G3},\text{G5},\text{G6}\}\to\text{G7},
  \quad
  \{\text{G1},\text{G7}\}\to\text{G8},
  \quad
  \{\text{G4},\text{G5},\text{G8}\}\to\text{G9}.
\]

| Condition or object | Provenance classification | Producer or source | First theorem-facing consumer | Audit result |
| --- | --- | --- | --- | --- |
| Conditioned base singular values | Primitive condition | `assump:base_conditioning` | G1 | Valid primitive source |
| Dimension and smoothing scale | Primitive conditions | `assump:dimension`, `assump:gaussian_smoothing` | G1 | Valid primitive sources |
| Rank window | Primitive condition | `assump:rank_window` | G2/G3 | Valid primitive source; maximal boundary explicitly checked |
| Gaussian raw initialization | Primitive condition | `assump:independent_initialization` | G2 | Valid primitive source |
| Exact balanced-GD sequence | Primitive procedure | `assump:gd_step` | G5/G9 | Valid procedure source; no unlisted optimization operation is used |
| (\mathcal E_{\rm cond}) and left-inverse bounds | Derived event/control | G1 / `step_001` | G2, G3, G6, G8 | Legal earlier producer |
| Normalized Grams and raw-scale identities | Derived event/control | G2 / `step_002` | G3, G4 | Legal producer; normalized event is not substituted for raw target geometry |
| (\mathcal E_{\rm size}) | Derived event | G2 / `step_002` | G4, G5 | Legal producer |
| (TF), (TC), (W_0), and (\mathcal E_{\rm deficit}) | Derived structural controls | G3 / `step_003` | G4, G7 | Legal producer; unresolved derivation is step-local |
| (\mathcal E_{\rm init\_norm}) probability | Derived event conclusion | G4 / `step_004` | G5, G9 | Legal producer after all constituents |
| (\mathcal C_{\rm path}) | Explicitly conditional hypothesis | Formalized goal | G5 | Authorized conditional source; not claimed probable in this branch |
| (\theta_\infty), endpoint displacement, radius (3) | Derived invariant/limit controls | G5 / `step_005` | G6--G9 | Noncircular producer from finite path length |
| Taylor remainder | Derived local interface | G6 / `step_006` | G7 | Legal earlier producer |
| Limiting coefficient margin | Derived structural lower bound | G7 / `step_007` | G8 | Legal earlier producer |
| Relative physical loss floor | Derived theorem conclusion | G8 / `step_008` | G9/final theorem | Exact same-target bridge |
| (\mathcal F_+) probability lower bound | Derived terminal conclusion | G9 / `step_009` | Final theorem | Legal terminal assembly |

Local conditional hypotheses occur only inside proof units: fixing a realized
triple in (\mathcal E_{\rm cond}), restricting to a radial-good event while
proving G2, and restricting the Terracini operator to the exact gauge quotient
while proving G3. None is promoted to a public theorem assumption. There is no
missing derived-condition bridge.

## Citation And Tool Audit

The parent papers in `idea.md` are contextual and are not consumed as proof
authorities. The following current-notation standard tools or direct
derivations are required.

| Tool or derivation | Current-branch objects and exact role | Assumptions to discharge | Conclusion/interface needed | Convention, object-target, and boundary audit | Affected block |
| --- | --- | --- | --- | --- | --- |
| Rectangular Gaussian operator-norm tail | (\Xi_M=(\rho/\sqrt n)G_M) | Independent standard Gaussian entries; Euclidean operator norm | Failure-(r^{-20}) bound below half the base singular margin | Same realized (n\times r) perturbation; valid for all larger (n); zero-smoothing boundary is harmless | G1 |
| Weyl singular-value inequalities | (M=\bar M+\Xi_M) | Deterministic perturbation norm bound | (\sigma_{\min}(M)\ge\kappa_1^{-1}), (\|M\|\le\kappa_1) | Exact Euclidean singular values and same realized factor | G1 |
| Gaussian radius-direction independence and chi tails | Raw initial columns and balancing radius (g_i) | IID (N(0,I_n/n)) columns | Exact balanced representation, radial upper/lower local controls, (\mathcal E_{\rm size}) | Actual initialized factors, including maximal (3k) union | G2 |
| Elliptic-angular representation | (p=H z/\|Hz\|), (H=(M^{\mathsf T}M)^{-1/2}) | G1 conditioning and Gaussian direction | Centering, (C_\kappa/r) second moments, subgaussian linear forms | Exact coefficient Euclidean coordinates; arbitrary eigenbasis and no population-target substitution | G2/G3 |
| Conditional matrix concentration for pair Grams | Columns (\bar\beta_i\otimes\bar\gamma_i), etc. | Independent components, bounded radial event, elliptic moments, (k/r^2\ll1) | Constant spectral window, hence public polynomial window, with failure (r^{-20}) | Normalized certificate only; exact (G_{\rm raw}=(r/n)^2G_{\rm norm}) bridge is algebraic | G2 |
| Gauge-quotient algebra | (J_i) on (\mathcal K_i^\perp) | Unit coefficient directions | Exact within-block spectrum in ([1,3]) and full range (\mathscr S_0) | Removes exactly the CP scaling kernel; zero/nonzero directions handled almost surely | G3 |
| Order-two decoupling plus self-adjoint matrix Bernstein, or an equivalent proved current-notation lemma | Off-component blocks (G3.2) | Independent centered ACG directions, uniform moment bounds, quotient projections | (TF) with variance (k/r^2), logarithmic term, and failure (r^{-20}) | Must be proved under G1 conditioning, not after conditioning on (\mathcal E_{\rm gram}^{\rm norm}); no external theorem label is currently claimed | G3 |
| Scalar Bernstein | (\sum_i\|p_i^b\odot p_i^c\|^2) and two analogues | Independent components, means (O_\kappa(1/r)), bounded summands | (TC) with scale (C_\kappa(k/r+\log r)) | Exact raw target (D_r); arbitrary coordinate orientation covered by diagonal moment bounds | G3 |
| Pseudoinverse range-projection identity | (P_{\operatorname{range}J}=J(J^*J)^\dagger J^*) | Finite-dimensional Euclidean operator and quotient lower bound | Equation (G3.5) | Same tangent space and Frobenius inner product | G3 |
| Tower property and union bound | Four initialization constituents | Individual unconditional/conditional bounds | (4r^{-20}\le r^{-10}) | Joint smoothing-initialization law; no false independence | G4 |
| Completeness of finite-dimensional Euclidean space | Balanced factor sequence | Summable (d_{\rm bal}) increments | Actual finite limit and tail control | Same metric and actual trajectory; zero-factor branch allowed | G5 |
| Exact trilinear expansion and Frobenius Cauchy--Schwarz | Raw coefficient CP map (\Psi) | G1 left-inverse bounds, G5 radius/displacement | (C_{\rm CP}d^2) with no (k)-factor | Exact raw map and coefficient norm | G6 |
| Orthogonal projection and Kronecker singular values | (P_A\otimes P_B\otimes P_C), (A\otimes B\otimes C) | G1 full rank and singular bounds | Exact identity and physical lower transfer | Same realized (T); projected residual is a component of the actual residual | G8 |
| Continuity of a polynomial and conditional probability identity | (F(\theta_t)), (\mathcal E_{\rm init\_norm}), (\mathcal C_{\rm path}) | Factor convergence and positive initial-event probability | Limiting objective and final probability formula | No independence and no positive conditional-probability claim | G8/G9 |

For the theorem-critical concentration tools in G2 and G3, later step proofs
must either prove the stated current-notation lemmas or attach a stable source
whose hypotheses and conclusion match these exact ACG, quotient, probability,
and norm conventions. This is a proof-unit obligation, not a missing theorem
interface.

## Quantitative Dependence Audit

| Category | Exposed dependence and required mode | Audit |
| --- | --- | --- |
| Structural variables | (\kappa\ge1), fixed (q\ge4), (r), (n\), (k), (\rho=r^{-q}) | Preserved throughout |
| Rank/dimension regime | (r<k\le r^{5/4}), (n\ge C_{\rm dim}(\kappa,q)r^4\log r), no upper bound on (n) | Normalization removes (n)-dilution; TF/TC checked at maximal (k) |
| Initialization confidence | Constituent budgets (r^{-20}), public confidence (1-r^{-10}) | Four-term inequality (4r^{-20}\le r^{-10}) must be verified by (r_0) |
| Gram scale | Normalized eigenvalues in ([r^{-20},r^{20}]); raw eigenvalues exactly in ((r/n)^2[r^{-20},r^{20}]) | Exact multiplicative bridge; no hidden fixed raw threshold |
| Tangent margin | (\delta_0=1/8), (\|D_r\|_F=\sqrt r) | G3 produces a stronger (\sqrt{r/2}) margin |
| Path/Taylor constants | (C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)), (R=3), (E_\star=\min\{1,\sqrt{\delta_0/(16C_{\rm CP}(\kappa,3))}\}) | Explicit; hidden constants do not enter the deterministic bridge |
| Physical epsilon | (\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2) | Depends only on (\kappa), as required |
| Hidden constants | Random-geometry and threshold constants may depend only on (\kappa,q); deterministic loss constant only on (\kappa) | No (n,r,k), base, realization, horizon, or path dependence may be hidden |
| Probability mode | Joint high probability for initialization; uniform conditional initialization estimates on each G1-conditioned realized triple; deterministic implication on (E\cap C) | Preserved; no independence of (E) and (C) |
| Horizon mode | Initialization-only for G1--G4; all-time finite-budget and asymptotic limit for G5--G9 | No fixed-time to all-time upgrade without the explicit path source |
| Norm/metric mode | Operator/singular-value norms for factors, Euclidean Gram eigenvalues, coefficient Frobenius norm, (d_{\rm bal}), physical Frobenius loss | No norm conversion is hidden |
| Auxiliary tolerances | Radial-good constants used locally in G2; quotient defect (1/2); projection budget (r/2); Taylor slack (\delta_0/16) | Each is internal or explicitly dominated before export |
| Baseline reduction | Normalization changes only the Gram certificate; zero path gives (\theta_\infty=\theta_0), zero remainder, full initial raw deficit, and the same physical bridge | Original baseline conclusion is preserved, not replaced by a remainder-only surrogate |
| Remaining probability gap | (\Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})) | Retained exactly; no hidden lower bound or constant-probability upgrade |

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (\mathcal E_{\rm cond}) and (\|M^\dagger\|\le\kappa_1) | Structural nondegeneracy for all coefficient and physical bridges | Initialization, uniform in allowed (n,r,k) and bases | (M=\bar M+\Xi_M), (\sigma_{\min}(M)\ge\sigma_{\min}(\bar M)-\|\Xi_M\|) | Primitive base margin (\kappa^{-2}) | Gaussian operator norm (\|\Xi_M\|) | Initialization-only; finite three-mode union | Structural lower/upper comparison | Base conditioning plus Gaussian tail; zero smoothing allowed | A positive lower singular source directly matches the nondegeneracy claim | Produced and consumed matrix is the same realized (M); residual (\Xi_M \le (2\kappa^2)^{-1}) | `step-local` | Primitive margin precedes event and all consumers | Holds before first update | Perturbation is at most half the base margin | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Gaussian tail event | At lower base boundary and (\rho=0), margin remains positive | Coefficient maps or physical transfer can be singular |
| Normalized Gram window, exact raw scale, and tangent-span equality | Structural Gram nondegeneracy and baseline-preserving scale bridge | Initialization, uniform for all (n\ge C r^4\log r) | (G_{\rm raw}=(r/n)^2G_{\rm norm}), (\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}) | Constant elliptic covariance and (k/r^2\le r^{-3/4}) | Radial deviations and centered pair-Gram fluctuation | Initialization-only finite union over three Grams | Structural lower/upper comparison | G1 conditioning plus Gaussian radius/direction law; no upper (n) exclusion | Covariance lower and upper bounds match Gram nondegeneracy | Exact multiplicative residual-free transfer; (D_r,\widehat D_0), and loss are not transformed | `step-local` | Primitive initialization and G1 produce the event before G3/G4 | Actual balanced (\theta_0) is used | Fluctuation is less than a fixed population margin; polynomial public window is weaker | `assump:rank_window`, `assump:independent_initialization`, G1 | Local radial and Gram controls | As (n\to\infty), normalized scale stays constant and raw scale reports ((r/n)^2) | A singular normalized Gram invalidates the stated initial certificate |
| (\mathcal E_{\rm size}) | Generated entry bound for the path/Taylor radius | Initialization | (\|m_{i,0}\|=g_i\), (\max_i g_i\le2) | Gaussian radii concentrated near one | Upper radial tails over (3k) columns | Initialization-only finite union | Structural upper comparison | Chi concentration; no lower norm is required by the theorem-facing size event | Directly supplies the claimed upper bound | Produced columns are exactly the balanced columns consumed in G5 | `step-local` | Primitive initialization precedes trajectory | Bound holds before first update | Union tail is at most (r^{-20}) | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Balanced radii | Maximal (k) remains dominated by minimal (n) | Radius (3) cannot be derived from the path budget alone |
| (TF): quotient-frame conditioning | Structural coercivity modulo CP gauge; source for tangent projection | Initialization | (J^*J=D+E), (D\succeq I) on (\oplus_i\mathcal K_i^\perp), (\|E\|\le1/2) | Exact within-component quotient identity (G3.1) | Centered off-component blocks (G3.2), variance (k/r^2) | Initialization-only; one random operator event | Structural lower comparison | Independent G1-conditioned ACG directions; gauge kernel exactly removed; (k\le r^{5/4}) | Within-block lower spectrum supplies the required positive source, not merely smallness | Same tangent operator/range is consumed in the projection formula; no surrogate metric | `step-local` | G1 plus primitive initialization produce (J) before (W_0); TF does not assume deficit | (J) is formed at actual (\theta_0) before GD | (\lambda_{\min}(D+E)\ge1-1/2=1/2) | `assump:rank_window`, `assump:independent_initialization`, G1 | ACG moment bounds and decoupled off-block control | At (k=r^{5/4}), defect is (O_\kappa(r^{-3/8}+\sqrt{\log r/r})=o(1)) | Loss of quotient coercivity permits an order-(r) tangent projection |
| (TC) and (\mathcal E_{\rm deficit}) | Structural normal-margin lower bound; sole positive source for final loss | Initialization | (J_i^*D_r=(p_i^b\odot p_i^c,p_i^a\odot p_i^c,p_i^a\odot p_i^b)); projection energy bounded by (2\|J^*D_r\|^2) | TF pseudoinverse margin and ambient norm (\|D_r\|^2=r) | Target correlation (C_\kappa(k/r+\log r)) | Initialization-only scalar sum | Structural lower/upper comparison | Same ACG directions and exact raw (D_r); maximal-rank boundary included | Upper tangent energy plus ambient norm directly gives a positive normal residual | (P_{\mathscr S_0^\perp}(D_r-\widehat D_0)=P_{\mathscr S_0^\perp}D_r) exactly | `step-local` | G1/G2 produce directions/span before G3; no final loss enters witness construction | (W_0) is selected at the actual initial tangent | (2C_\kappa(k/r+\log r)\le r/2), so normal norm (\ge\sqrt{r/2}\) | `assump:rank_window`, `assump:independent_initialization`, G1 | TF, TC, exact span identity | At (k=r^{5/4}), target energy is (O_\kappa(r^{1/4}+\log r)=o(r)) | No fixed tangent-normal margin, hence no later coefficient floor |
| (\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}) | Confidence-explicit generated-event closure | Initialization under joint law | (\Pr(E^c)\le\Pr(E_{\rm cond}^c)+\sum\Pr(E_j^c\mid E_{\rm cond})) | Four constituent (r^{-20}) bounds | Four failure probabilities | Finite union; no temporal accumulation | Summable control | G1--G3 event producers; large (r) for (4r^{-20}\le r^{-10}) | Exact constituent sources match the exact event | Intersection is exactly (\mathcal E_{\rm init\_norm}) | `step-local` | Every constituent has an earlier producer | Event fixed before first update | (4r^{-20}\le r^{-10}) | All six primitive assumptions through G1--G3 | Four generated events | Arbitrarily large (n), maximal (k), and minimal allowed (n) are covered | Public confidence claim fails if any constituent misses its budget |
| Factor convergence, endpoint displacement, and radius (3) | All-time boundedness and asymptotic convergence | All (t\ge0), explicitly conditional on (E_{\rm path}\le E_\star) | (d(\theta_u,\theta_t)\le\sum_{s=t}^{u-1}\ell_s); (\|m_{i,t}\|\le2+\sum_{s<t}\ell_s) | Finite nonnegative path budget | Actual one-step factor increments (\ell_s\), sign irrelevant | Finite-budgeted: each increment charged once; tails vanish because (\sum_s\ell_s<\infty) | Summable control | Explicit conditional target (\mathcal C_{\rm path}) plus G2 size; no convergence/boundedness inside source | Finite total variation directly supplies Cauchy convergence and norm control | Produced limit is the actual trajectory limit in the theorem metric; no surrogate | `step-local` | Path budget and initial size precede all consumers and do not assume closure | Zero first update gives zero charge and immediate convergence; nonzero first update is charged once | Tail sum tends to zero; total displacement (\le E_\star\le1); radius (\le3) | `assump:gd_step`; explicit (\mathcal C_{\rm path}) | G2 size event | Zero factors and maximal budget do not break the Euclidean argument | Without finite path length, this branch has no convergence or uniform radius mechanism |
| Raw CP Taylor remainder | Second-order endpoint control | One comparison (\theta_0\to\theta_\infty) | Exact expansion (G6.1), (\|\mathcal R\|\le C_{\rm CP}d^2) | Trilinearity and G1 left-inverse bounds | Three quadratic and one cubic term | No iteration accumulation; a single endpoint residual | Algebraic coupling | Direct current-notation expansion; (R=3), (d\le1) from G5 | Exact algebra supplies the required second-order claim | Produced remainder is the exact residual beyond (D\Psi(\theta_0)) for the same raw (\Psi) | `step-local` | G1/G5 controls precede expansion | At (d=0), remainder is exactly zero | Quadratics (\le3\kappa_1^3Rd^2), cubic (\le\kappa_1^3d^3\le\kappa_1^3d^2) | None beyond accepted primitive sources through G1/G5 | Radius/displacement | (d=0), (d=1), and zero columns are handled | An uncontrolled endpoint residual can erase the initial margin |
| Limiting raw coefficient margin | Structural lower residual at actual limit | Asymptotic endpoint | Pair endpoint expansion with (W_0); derivative and (\widehat D_0) cancel | Initial (\delta_0\sqrt r) normal margin | One Taylor remainder (\le\delta_0/16) | Full path enters once through endpoint displacement; no persistent forcing | Signed cancellation | G3 witness plus G5/G6 outputs | Positive normal source and same-norm residual bound match the lower claim | Produced/consumed object is (D_r-\Psi(\theta_\infty)) in coefficient Frobenius norm | `step-local` | G3, G5, G6 are earlier producers | Zero path preserves the full initial deficit | (\delta_0\sqrt r-\delta_0/16\ge(15/16)\delta_0\sqrt r) | Primitive sources through dependencies | (W_0,\theta_\infty,\mathcal R_\infty) | Maximal allowed (E_\star) leaves positive slack | No positive coefficient floor without either the witness or remainder threshold |
| Exact physical bridge and relative loss floor | Same-target transfer and quantitative specialization | One-time limit comparison | Equation (G8.1), (\sigma_{\min}(A\otimes B\otimes C)\ge\kappa_1^{-3}) | G1 lower singular margins and G7 coefficient floor | No subtractive defect; orthogonal complement is discarded in safe direction | No temporal accumulation | Structural lower comparison | Exact projection identity; full rank excludes singular boundary | Lower singular values supply exactly the physical coercivity claim | Same realized (T); equality after projection; every residual term is accounted for | `step-local` | G1 and G7 precede final use | Stationary path with initial deficit follows the same bridge | (F\ge\kappa_1^{-6}c_0^2r\), (\|T\|^2\le\kappa_1^6r) | G1 conditioning | G7 coefficient margin | Lower singular boundary leaves (\epsilon_0(\kappa)>0) | Coefficient residual need not imply physical loss if factor maps are singular |
| Final conditional probability interface | Event inclusion and distributional closure | Joint all-time event | (E\cap C\subseteq\mathcal F_+), (\Pr(E\cap C)=\Pr(E)\Pr(C\mid E)) | Exact event inclusion and (\Pr(E)\ge1-r^{-10}) | Uncontrolled (\Pr(C\mid E)), retained multiplicatively | All-time dependence is contained in the explicitly conditional event | Explicitly conditional target | G4, G5, G8; boundary (\Pr(C\mid E)=0) allowed | Exact probability identity matches the conditional claim class | (\mathcal F_+) uses actual limit and physical objective | `step-local` | All deterministic and probability outputs precede G9 | Stationary/zero-path instances are included when they satisfy (C) | (\Pr(\mathcal F_+)\ge(1-r^{-10})\Pr(C\mid E)) | Joint probability-space convention | G4/G5/G8 outputs | If conditional probability is zero, lower bound is zero and theorem remains true | Any positive constant-probability upgrade would be unsupported |
| Baseline invariance package | Recovery of raw geometry and zero-path conclusion | Initialization normalization and specialization (E_{\rm path}=0) | Exact span/Gram scaling plus (\theta_\infty=\theta_0), (\mathcal R_\infty=0) | Algebraic equality and finite-path stationary trace | No residual in normalization; no motion in zero-path case | No accumulated defect | Algebraic coupling and signed cancellation | G2 exact scale identities and G5--G7 zero-path trace | Sources preserve the original raw-target conclusion, not only vanishing defect terms | Raw target, raw core, raw residual, and physical target are unchanged | `step-local` | Equalities are available before their consumers | First update is stationary when path length is zero | Initial deficit transfers unchanged through G8 | Primitive setting and exact definitions | G2/G3/G5 outputs | Arbitrarily large (n) and zero path both preserve the full conclusion | A surrogate normalization or nonzero stationary remainder would violate the inherited baseline |

Every all-time row above contains a concrete control relation. The only
accumulated all-time defect is the nonnegative path-increment series in G5;
its finite budget and vanishing tails are explicit. The Taylor and margin
blocks use one endpoint residual and therefore do not require an unproved
stepwise error budget.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (\mathcal E_{\rm cond}), (\|M\|\le\kappa_1), (\|M^\dagger\|\le\kappa_1) | G1 / `step_001` | Base singular margins and Gaussian perturbation law | Controlled: (\|\Xi_M\|); uncontrolled: none after event | Same realized (M=\bar M+\Xi_M); residual below half-margin | Weyl comparison | Primitive (\kappa^{-2}) margin | G2, G3, G6, G8 | Valid; local tail constants remain to be proved |
| (\mathcal E_{\rm gram}^{\rm norm}) and raw-scale identity | G2 / `step_002` | G1 conditioning, Gaussian directions/radii, (k/r^2\ll1) | Controlled: radial and centered Gram fluctuations; uncontrolled: no (n)-persistent term | Exact (G_{\rm raw}=(r/n)^2G_{\rm norm}); tangent span equal; target unchanged | Constant natural window implies polynomial public window | Elliptic covariance lower bound | G3, G4 | Valid interface; concentration derivation is step-local |
| (\mathcal E_{\rm size}) | G2 / `step_002` | (3k) Gaussian radii | Controlled upper tails; no trajectory term yet | Actual balanced initial columns | Chi tail and finite union | Fixed threshold (2) | G4, G5 | Valid |
| (TF), (TC), and (\mathcal E_{\rm deficit}) | G3 / `step_003` | G1-conditioned ACG directions, quotient identity, rank window, G2 span equality | Controlled: off-block operator and target correlation; uncontrolled: none if local concentration closes | Exact (P_{S^perp}(D_r-\widehat D_0)=P_{S^perp}D_r) | (\|E\|\le1/2), (\|J^*D_r\|^2\le C(k/r+\log r)), projection (\le r/2) | Within-block eigenvalue (1), ambient norm (r) | G4, G7 | Valid interface; principal step-local proof bottleneck |
| (\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}) | G4 / `step_004` | Four earlier event budgets | Controlled: four (r^{-20}) failures; uncontrolled: none | Exact event intersection | (4r^{-20}\le r^{-10}) | Large-(r) threshold | G5, G9 | Valid once constituent proofs are accepted |
| (\theta_\infty), displacement (\le E_\star), radius (3) | G5 / `step_005` | (\mathcal E_{\rm size}), explicit path budget | Controlled: all increments by one finite series; uncontrolled: none inside conditional scope | Actual balanced trajectory and metric | Tail-sum Cauchy bound; (2+E_\star\le3) | Explicit (E_\star\) | G6--G9 | Valid |
| Raw Taylor remainder (\le C_{\rm CP}d^2) | G6 / `step_006` | G1 left-inverse bounds, G5 radius/displacement | Controlled: three quadratic and one cubic term; no hidden component-count term | Exact raw (\Psi) in coefficient Frobenius norm | Componentwise tensor norm plus index Cauchy--Schwarz; (d^3\le d^2) | (C_{\rm CP}(\kappa,R)) | G7 | Valid |
| Limiting raw coefficient margin (c_0\sqrt r) | G7 / `step_007` | G3 initial margin, G5 endpoint, G6 remainder | Controlled: one endpoint remainder; uncontrolled: none | Same raw residual at actual limit | (C_{\rm CP}E_\star^2\le\delta_0/16) | Initial (\delta_0\sqrt r) margin | G8 | Valid |
| Relative physical floor (\epsilon_0(\kappa)\|T\|^2) | G8 / `step_008` | G1 singular values, G7 coefficient margin | No subtractive defect; projection discards a nonnegative orthogonal component | Exact same-target equality (G8.1) | Lower Kronecker singular value and upper (\|T\|) comparison | G1 lower/upper singular margins | G9/final theorem | Valid |
| Final probability bound | G9 / `step_009` | G4 event probability and G5/G8 deterministic inclusion | Uncontrolled conditional factor retained exactly | Actual (\mathcal F_+), no proxy event | Conditional probability identity | (1-r^{-10}) | Final theorem | Valid; no constant conditional lower bound exported |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Realized-factor conditioning (\mathcal E_{\rm cond}) and left-inverse bounds | G1 / `step_001`; primitive base plus smoothing | G2, G3, G6, G8 | Primitive assumptions -> G1 -> each consumer | derived | valid |
| Balanced radius-direction representation | G2 / `step_002`; Gaussian radius-direction fact | G2 internal Gram/size units; G3 angular representation | `assump:independent_initialization` -> G2 -> internal G2/G3 units | derived | valid |
| Normalized coefficient directions and ACG moment controls | G2/G3 / `step_002`--`step_003` | G3 quotient-frame and target-correlation units | G1 conditioning + primitive initialization -> G2 -> G3 | derived | valid |
| Normalized pair-Gram event | G2 / `step_002` | G4 event intersection; G3 uses the representation/span identity but does not condition its law on this event | G1 -> G2 -> G4; G2 notation/span output -> G3 | derived | valid |
| Exact raw Gram scaling (G_{\rm raw}=(r/n)^2G_{\rm norm}) | G2 / `step_002` algebraic identity | G4 and final initialization certificate | G2 -> G4 -> final theorem | derived | valid |
| Exact raw/normalized tangent-span equality | G2 / `step_002` algebraic scalar rescaling | G3 projection and G7 tangent cancellation | G2 -> G3 -> G7 | derived | valid |
| Initial-size event (\mathcal E_{\rm size}) | G2 / `step_002` chi control | G4 and G5 | G2 -> G4 -> G5 | derived | valid |
| Gauge quotient and within-block lower spectrum | G3 / `step_003` direct algebra | G3 off-block closure, projection formula, deficit event | G2 directions -> G3 quotient -> G3 closure | derived | valid; local derivation pending |
| (TF) off-block frame estimate | G3 / `step_003` decoupling/Bernstein unit | G3 pseudoinverse bound and TC projection estimate | G1-conditioned directions -> G3 TF -> G3/G4/G7 | derived | valid interface; local proof pending |
| (TC) diagonal-core correlation estimate | G3 / `step_003` scalar Bernstein unit | G3 projection energy, (W_0), (\mathcal E_{\rm deficit}) | G1-conditioned directions -> G3 TC -> G3/G4/G7 | derived | valid interface; local proof pending |
| Unit normal witness (W_0) and raw deficit event | G3 / `step_003` | G4 probability and G7 endpoint cancellation | G3 TF+TC -> (W_0) -> G4/G7 | derived | valid |
| Combined initialization event and probability | G4 / `step_004` | G5 conditional deterministic theorem and G9 probability assembly | G1--G3 -> G4 -> G5/G9 | derived | valid |
| Path budget (E_{\rm path}\le E_\star) | Explicitly conditional target (\mathcal C_{\rm path}) | G5 only | Formalized goal -> G5 | explicitly conditional | valid |
| Actual limit, endpoint displacement, and radius (3) | G5 / `step_005` | G6 remainder, G7 margin, G8 physical bridge, G9 event | G4 + (\mathcal C_{\rm path}) -> G5 -> G6--G9 | derived | valid |
| Exact raw Taylor remainder | G6 / `step_006` | G7 | G1 + G5 -> G6 -> G7 | derived | valid |
| Limiting raw coefficient residual margin | G7 / `step_007` | G8 | G3 + G5 + G6 -> G7 -> G8 | derived | valid |
| Exact same-target physical residual and relative floor | G8 / `step_008` | G9 and final theorem | G1 + G7 -> G8 -> G9/final | derived | valid |
| Convergence-and-positive-loss event (\mathcal F_+) and probability inequality | G9 / `step_009` | Final theorem | G4 + G5 + G8 -> G9 -> final | derived | valid |

The only generated output whose producer is a theorem-level hard local unit is
the G3 frame/deficit package. Its producer, consumers, and dependency path are
already fixed; no late closure or assembly block is being asked to invent a
missing output.

## Early Obstruction And Repair Plausibility

### Contract and boundary checks

- **Target fidelity:** The attempted claim retains the exact conditional scope,
  rank window, arbitrary-large-(n) regime, balanced simultaneous-GD protocol,
  raw target (D_r), physical loss (F), and unresolved conditional path
  probability. No stronger probability mode or hidden convergence hypothesis is
  introduced.
- **Generated-condition provenance:** Conditioning, Gram, size, frame,
  deficit, convergence, radius, remainder, coefficient margin, and physical
  floor are all derived outputs. Only (\mathcal C_{\rm path}) is an explicit
  conditional target, exactly as authorized in `setting.md`.
- **Mode and dependence:** The normalized Gram certificate does not silently
  remove the raw ((r/n)^2) dependence; it exposes the exact factor. The
  physical floor depends only on (\kappa), while initialization constants may
  depend on (\kappa,q). The final conditional factor is not absorbed.
- **Baseline invariance:** Under the normalization repair, the raw target,
  raw initial core, raw tangent span, raw residual metric, and physical target
  are unchanged. When (E_{\rm path}=0), the first transition is stationary,
  the endpoint equals the initial state, the Taylor remainder is zero, and the
  initial deficit transfers through the same physical bridge.

### Theorem-critical mechanism and entry-state stress

- **G1:** The primitive singular-value margin is active before the first update;
  if it vanished, coefficient and physical transfers could fail. The Gaussian
  perturbation is explicitly dominated by that margin.
- **G2:** The normalized covariance is constant-scale even as (n) grows;
  the exact raw scaling is reported rather than replaced. At maximal (k),
  (k/r^2=r^{-3/4}) remains small. A zero smoothing limit returns the base
  conditioning source.
- **G3:** The within-component quotient source is active at the actual
  initialization. The gauge kernel is removed exactly, and the off-block and
  target-correlation defects are the only opposing terms. If either (TF) or
  (TC) failed at (k=r^{5/4}), a fixed normal margin would not follow. This
  is a genuine local random-frame calculation, not an unsupported generic
  dimension count.
- **G5:** An allowed zero-length path has zero first-update charge and gives
  immediate convergence. For a nonzero path, every increment is charged once
  to the finite series. The source is not circular because it is the path
  budget itself, not convergence or boundedness.
- **G6/G7:** The zero-displacement trace gives exactly zero remainder and the
  full initial margin. The maximal allowed (E_\star) leaves the explicit
  (\delta_0/16) slack.
- **G8/G9:** The lower singular boundary remains strictly positive under G1;
  if the final conditional path probability is zero, the exact theorem lower
  bound is zero rather than an incorrectly asserted constant.

### Same-setting repair plausibility and obstruction classification

The remaining derivations are plausible under the unchanged setting and goal:
G1, G2, G4--G9 are direct or standard finite-dimensional calculations, and G3
already exposes the required source and scale. If a local G3 proof needs a
different decomposition of the decoupled off-block matrix but retains (TF),
(TC), the current artifact remains `PARTIAL_BLOCKED` and routes to the local
step. If the direct angular calculation cannot establish (TF) or (TC) with
the stated (k/r^2) and (k/r) scales, the smallest sound repair is
`/proof-sketch` because the step interface or its mechanism witness must then
change. A change in primitive assumptions, algorithm, theorem mode, metric,
success criterion, or conclusion would be a candidate idea-level obstruction
for `/global-proof-review`; no such obstruction is currently evidenced.

### Specific export and residual checks

1. The normalized Gram output is never consumed as a fixed raw threshold;
   every raw use includes the exact ((r/n)^2) factor.
2. The frame output is consumed for the same tangent range generated by the
   raw factors; no transformed or whitened tangent target is substituted.
3. The path output controls the actual balanced iterates in the theorem metric,
   not an auxiliary unbalanced trajectory.
4. The Taylor output is in the exact raw coefficient Frobenius norm and leaves
   only the endpoint remainder.
5. The physical output is an equality after projection to the realized mode
   span; the discarded component is nonnegative in the full residual norm.

## Global Gaps And Hard Steps

1. **`step_003`, ACG moment and quotient setup (step-local).** Prove the
   current-notation angular representation and uniform moment bounds under
   every G1-conditioned realized factor triple. Required local units are:
   (i) an exact (p=Hz/\|Hz\|) representation, (ii) centered linear-form and
   coordinate moment bounds, and (iii) the exact within-block quotient spectrum
   (G3.1). The mechanism witness is the primitive independent Gaussian
   initialization plus G1 condition-number bounds; it is nonvacuous before any
   deficit or final-loss claim is consumed.
2. **`step_003`, (TF) off-component frame estimate (step-local).** Prove the
   symmetric off-block operator bound in (G3.2) after quotient projections,
   using leave-one-component-out decoupling (or an explicitly proved equivalent
   current-notation argument) and matrix Bernstein. The local statement must
   preserve variance scale (k/r^2), the (\sqrt{\log r/r}) term, conditional
   failure (r^{-20}), and uniformity over G1-conditioned factors. It must not
   condition on the generated Gram event. This is the principal bottleneck.
3. **`step_003`, (TC) target-correlation estimate (step-local).** Prove the
   scalar Bernstein bound for the three Hadamard-product energy sums, including
   the anisotropic coordinate moment bound (\mathbb E p_j^2\le C_\kappa/r),
   the (k/r+\log r) scale, and conditional failure (r^{-20}). The exact
   raw (D_r) and quotient projection must remain in the statement.
4. **`step_002`, normalized Khatri--Rao concentration (step-local).** Prove a
   constant conditional spectral window before weakening it to
   ([r^{-20},r^{20}]), allocate a local radial-good tail, and preserve the
   exact raw-scale and tangent-span identities. The output target and all
   consumers already match the sketch.
5. **`step_001`, Gaussian-tail constants (step-local).** Verify a single
   (r_0(\kappa,q)) makes the three perturbations smaller than half the base
   singular margin and gives the required (r^{-20}) budget.

All five items are `step-local`: their mechanism sources, exported interfaces,
defect classes, accumulation scopes, object-target bridges, and boundary traces
are already exposed under unchanged sketch claims. No item is a
`sketch/interface defect` or `idea/theorem-contract defect` at this diagnostic
stage. The global artifact therefore remains `PARTIAL_BLOCKED` only because
these local proof units have not yet been written and reviewed.

## Diagnostic Boundary Note

`global_proof.md` is diagnostic guidance only. It is not proof evidence, not a
cited result, not an assumption source, and not authority to change any
accepted sketch-step claim, dependency, assumption, output target, generated
condition, closure mechanism, theorem scope, or conclusion. Every local unit
listed above must be independently proved and reviewed before downstream proof
assembly can consume it.

## Suggested Routing

None

Continue with the nine step proofs in dependency order, prioritizing
`/proof-step step_003` after the conditioning and normalized-Gram steps, because
the quotient-frame (TF)--(TC) calculation is the principal theorem-critical
local bottleneck. Then run the corresponding step reviews and the required
global-proof review before any downstream assembly.
