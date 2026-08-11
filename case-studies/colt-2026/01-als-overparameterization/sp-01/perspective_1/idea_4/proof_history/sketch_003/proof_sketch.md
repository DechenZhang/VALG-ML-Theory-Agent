# Proof Sketch

## Formalized Setting

This is `perspective_1/idea_4`, sketch attempt 3 (`revise_sketch` after the
archived review).  The realized tensor is

\[
T=\sum_{j=1}^r\lambda_j u_j\otimes v_j\otimes w_j,
\]

where the factors are independently Gaussian-smoothed versions of a
deterministic, bounded-scale, cumulatively incoherent, nearly balanced base
triple.  The primitive assumptions are
`assump:base-scale`, `assump:cumulative-gram`,
`assump:base-weight-balance`, `assump:gaussian-smoothing`,
`assump:smoothing-margin`, `assump:subquadratic-rank`,
`assump:random-initialization`, and `assump:accuracy-confidence` in
`setting.md`.  Realized norms, Gram row sums, weights, Khatri--Rao spectra,
proposal coverage, alignment, filtering, clustering, basin membership, and
convergence are derived outputs.

JEP-ALS uses
\[
k=U(r)=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil
\]
independent Gaussian proposal triples.  Each gated proposal performs
simultaneous old-state normalized rank-one contractions in all three modes for
\(L_0=\lceil C_0\log r\rceil\) sweeps.  Observable displacement and score
filtering, followed by all-mode graph clustering, selects active representatives;
the other \(k-r\) columns remain exactly zero while cyclic CP-ALS refines the
selected active columns.

## Formalized Goal

The branch is in exact-goal mode.  Uniformly over every deterministic base
triple satisfying the three primitive base conditions and every exposed
parameter choice satisfying the remaining setting assumptions, the proof must
give an instance event of probability at least \(1-\delta_{\rm sm}\).  On
each such fixed instance, proposal randomness and the prescribed
\(J=O(\log(1/\delta_{\rm init}))\) independent full runs must yield success
with probability at least \(1-\delta_{\rm init}\), without changing \(U(r)\),
and return a rank-\(k\) tensor with relative Frobenius residual at most
\(\epsilon\).

The dynamic interface that must be exported is the simultaneous, target-relative
ratio recurrence
\[
R_{t+1}\le
 \left(\frac{\Gamma R_t+q}{1-\Gamma qR_t}\right)^2,
\qquad
S_{t+1}\le
 \frac{(\Gamma R_t+q)(\Gamma(1+q)S_t+q)}
 {(1-\Gamma qR_t)^2},
\]
for \(q=q_{\rm real}\le q_*\), together with an explicit joint
representative-to-basin bridge.  The orthogonal equal-weight specialization
must retain the exact map \((A^+,B^+,C^+)=(BC,AC,AB)\), hence
\(R^+\le R^2\) and \(S^+\le RS\).

## Sketch Identity

- Sketch attempt: 3

## Proof Roadmap

The selected framework is the simultaneous Jacobi ratio/pair-mass framework in
`technical_survey.md`, repaired after the archived review.  The repair fixes
the Gaussian tail constants, the numerical score gap, the two-sided coefficient
recurrence, the same-target residual scale, the inverse/pseudoinverse branch,
and the public rate specialization without changing the setting or protocol.
It uses the parallel ALS convention from
*Guarantees for Alternating Least Squares in Overparameterized Tensor
Decompositions* (NeurIPS 2025), but replaces that paper's quadratic feature-span
certificate by a windowed rare-entry event.  The terminal local framework is
Uschmajew, *Local Convergence of the Alternating Least Squares Algorithm for
Canonical Tensor Approximation*, DOI `10.1137/110843587`, Assumption 1,
Lemma 3.2, and Theorems 3.3 and 3.5.  A current-notation quantitative wrapper
around the latter is an explicit proof step; the cited theorem is not used as
an unqualified random-entry result.

The causal chain is:

1. primitive smoothing margins -> realized geometry and Khatri--Rao spectra;
2. realized geometry -> correlated Gaussian window event and all-target coverage;
3. coverage -> simultaneous \(R,S\) contraction and angular/displacement export;
4. angular/displacement plus stationary-point classification -> score filter and
   graph clusters;
5. selected representatives -> a joint coefficient-matrix row/column mass
   bound and a same-target best-scalar residual;
6. that residual and the realized Khatri--Rao spectra -> quotient-Hessian
   kernel and an explicit local CP-ALS basin;
7. local contraction -> arbitrary relative accuracy, restart amplification, and
   the explicit polynomial runtime.

## Rate Objectives

1. **Smoothed-instance geometry (confidence- and structural-parameter explicit).**
   - Objective type: confidence-explicit, regularity-explicit, and fixed-time.
   - Exposed variables: \(n,r,\rho,\kappa_0,\delta_{\rm sm}\).
   - Hidden constants may depend on: universal Gaussian constants and at most
     polynomially on the fixed regime exponent for \(\kappa_0\).
   - Hidden constants may not depend on: the deterministic bases, an unlisted
     conditioning quantity, \(r\), \(n\), or the realized perturbations.
   - Fixed quantities: \(q_*=1/4096\), \(a_*=10/9\), \(b_*=19/18\), and the
     finite exponents \(d_\kappa,d_\rho\).
   - Probability mode: one event over the once-drawn smoothed instance with
     probability at least \(1-\delta_{\rm sm}\).
   - Horizon mode: static, before proposal randomness.
   - Norm mode: Euclidean column norms, normalized Gram row sums, weight ratio,
     and Khatri--Rao spectral norm.
   - Required bridge or simplification obligations: keep the linear directional,
     quadratic, and normalization perturbations separate, include all row-sum
     and union-bound factors, and export exactly \(q_{\rm real}\le q_*\),
     \(\Gamma\le1.01\), and the cyclic Khatri--Rao spectral floor.
   - Baseline invariance obligations: at zero smoothing around an orthogonal
     equal-weight base, the exact simultaneous map and zero-residual CP solution
     remain the reference case.

2. **Subquadratic proposal rank and coverage (structural- and
   confidence-explicit).**
   - Objective type: fixed-horizon and confidence-explicit.
   - Exposed variables: \(r,k,\delta_{\rm init}\) (with \(k\) independent of
     \(\delta_{\rm init}\)).
   - Hidden constants may depend on: only universal tail and coupon-collector
     constants once \(q_*\), \(a_*\), and \(b_*\) are fixed.
   - Hidden constants may not depend on: the base triple, \(n\), \(\rho\),
     \(\epsilon\), or an unlisted event.
   - Fixed quantities: \(c=2/3\), \(a_*=10/9\), \(b_*=19/18\), and the
     proposal constants.
   - Probability mode: a constant positive one-run success probability from
     simultaneous all-target coverage, followed by independent restart
     amplification conditional on the fixed good instance.
   - Horizon mode: \(L_0=O(\log r)\) proposal sweeps and
     \(J=O(\log(1/\delta_{\rm init}))\) full runs.
   - Norm mode: target-relative coordinate ratios during proposals and relative
     Frobenius norm at output.
   - Required bridge or simplification obligations: prove the window event has
     probability \(\Theta(r^{-5/3}(\log r)^{-3/2})\), allocate the competing
     pair-product tail, and show \(k p\ge C\log r\) with no confidence factor
     hidden in \(k\).
   - Baseline invariance obligations: the coverage argument may specialize to
     exact orthogonal factors without replacing simultaneous squaring by a
     conservative remainder.

3. **Proposal alignment and joint basin entry (structural-parameter explicit).**
   - Objective type: horizon-uniform over the declared proposal horizon and
     regularity-explicit.
   - Exposed variables: \(r,q_*,\Gamma,L_0\), and the realized factor scales
     through \(\kappa_0\).
   - Hidden constants may depend on: universal numerical margins and at most
     polynomially on \(\kappa_0\) in the local wrapper.
   - Hidden constants may not depend on: the base triple, proposal labels, or
     an assumed basin radius.
   - Fixed quantities: the numerical thresholds \(64q_*\), \(0.85\),
     \(1-q_*^2\), and the fixed recurrence constants.
   - Probability mode: deterministic conditional on the instance and the
     explicit coverage event.
   - Horizon mode: all \(0\le t\le L_0\), with a universal burn-in and a
     remaining \(O(\log r)\) mass-decay horizon.
   - Norm mode: modewise angle/displacement, coefficient-matrix row and column
     \(\ell_1\) mass, quotient parameter distance, and relative tensor residual.
   - Required bridge or simplification obligations: use the \(S_t\) recurrence
     for outgoing mass, then prove a separate two-sided row/column coefficient
     recurrence so incoming leakage is not multiplied by \(r\). Compare the
     resulting best-scalar initialization with an explicit local radius.
   - Baseline invariance obligations: the row/column bridge reduces to zero
     leakage in the orthogonal exact case, and the local chart contains the
     exact zero-residual decomposition.

4. **Terminal accuracy and runtime.**
   - Objective type: numerical-error explicit, confidence-explicit, and
     horizon-uniform after local entry.
   - Exposed variables: \(n,r,k,\kappa_0,\rho^{-1},\epsilon,
     \delta_{\rm init}\).
   - Hidden constants may depend on: universal implementation constants and at
     most polynomially on \(\kappa_0\); not on an unlisted tensor condition
     number.
   - Hidden constants may not depend on: the base triple, \(\epsilon\), or
     either confidence parameter.
   - Fixed quantities: \(q_*\), the proposal and restart constants, and the
     finite regime exponents.
   - Probability mode: nested instance then conditional initialization/restart
     probability.
   - Horizon mode: first residual-hitting time after a linear contraction,
     plus the prescribed restarts.
   - Norm mode: relative Frobenius residual.
   - Required bridge or simplification obligations: derive a contraction factor
     \(\nu<1\), a basin-preserving radius, and an explicit
     \(O(\log(1/\epsilon))\) stopping bound; account for all proposal,
     clustering, active ALS, and restart arithmetic.
   - Baseline invariance obligations: exact data has no error floor; the
     conclusion remains valid for every \(0<\epsilon<1\) and tends to zero
     residual as \(\epsilon\downarrow0\).

## Quantitative Interface Instantiations

The following numerical choices are part of the roadmap, rather than hidden
"large enough" constants.

### Window and coverage constants

Put \(t=\sqrt{a_*\log r}\), \(I_t=[t,t+t^{-1}]\), and
\[
c_{\rm win}:=
 \left(\frac{2e^{-3/2}}{\sqrt{2\pi a_*}}\right)^3.
\]
For \(t\ge1\), the one-mode absolute window satisfies
\[
 2\Pr\{Z\in I_t\}
 \ge \frac{2e^{-3/2}}{\sqrt{2\pi}}t^{-1}e^{-t^2/2},
\]
and hence the independent three-mode target-window probability is at least
\(c_{\rm win}r^{-5/3}(\log r)^{-3/2}\).  Conditional on the three target
coordinates, every competitor coordinate has mean magnitude at most
\(q_*(t+t^{-1})\) and variance at most one.  A dyadic product-tail bound for
two independent conditional competitor coordinates gives, for
\(B=b_*\log r\),
\[
 \Pr\{|XY|>B\mid I_t^3\}
 \le 8\exp\{-\beta_*\log r\},
 \qquad
 \beta_*:=b_*-8q_*\sqrt{a_*b_*}-8a_*q_*^2.
\]
The same bound applies to the three mode pairs.  Numerically,
\(\beta_*>1.05\).  Set
\[
r_0:=\left\lceil 96^{1/(\beta_*-1)}\right\rceil.
\]
For \(r\ge r_0\), the conditional competitor failure is at most
\(24r^{1-\beta_*}\le1/4\), so
\[
p_{\rm win}\ge \frac{c_{\rm win}}2
 r^{-5/3}(\log r)^{-3/2}.
\]
The finitely many \(3\le r<r_0\) cases are included by increasing the same
universal `C_rank` and checking the exact Gaussian integral (no parameter or
base-dependent constant is introduced).  Choose
\[
C_{\rm rank}\ge 16/c_{\rm win}.
\]
Then \(k p_{\rm win}\ge8\log r\), and for each target
\(\Pr\{\text{target }j\text{ is uncovered}\}\le r^{-8}\).  A union bound over
the \(r\) targets gives
\[
 \Pr(E_{\rm cov}\mid E_{\rm sm})\ge1-r^{-7}\ge1/2.
\]
The events for a fixed target are independent across slots; no independence
between different target labels is assumed or needed.

### Simultaneous recurrence and finite-horizon mass

With \(q\le q_*\) and \(\Gamma\le1.01\), interval arithmetic applied to
\[
 f(x)=\left(\frac{\Gamma x+q}{1-\Gamma qx}\right)^2
\]
gives \(0\le f([0,19/20])\le0.922\); when \(q>0\), its lower endpoint is
at least \(q^2\), while at the exact baseline \(q=0\) one has
\(f_0([0,19/20])=[0,0.9025]\).  For the worst case \(q=q_*\),
\(f(x)<x\) for \(x\ge6.1\times10^{-8}\), and
\(f^{10}(19/20)<6.0\times10^{-8}\).  The fixed point is at most
\(6.0\times10^{-8}\), and the `S` recurrence has coefficient at most
\(1/4000\) after this tenth sweep.  Thus, for a universal `t_b=10`,
\[
 R_{t_b}\le6.0\times10^{-8},\qquad
 S_{t_b+s}\le 6.1\times10^{-8}+4000^{-s}r.
\]
Take `C_0 >= 64`; then, after increasing it by a universal additive constant
to cover `t_b`,
\[
 r\,4000^{-(L_0-t_b)}\le q_*^2/128
\]
for every \(r\ge3\).  This is the explicit finite-horizon choice used by
`step_004` and `step_005`.

### Score, graph, and threshold arithmetic

The perturbative fixed-point lemma in `step_006` is stated with explicit
errors.  Every covered component proposal obeys
\[
 \sigma_{\rm comp}\ge(1-32q_*)\lambda_j,
 \qquad d\le16q_*.
\]
Every low-displacement proposal that is not within the same target chart has
\[
 \sigma_{\rm mix}\le(1/\sqrt2+32q_*)\lambda_{\max}.
\]
The numerical margin required by the observable filter is
\[
 (1/\sqrt2+32q_*)\,1.01
 <0.723
 <0.85(1-32q_*)
 <0.844.
\]
Thus a mixture cannot pass the `0.85 sigma_max` test once a covered component
is present.  Within a target chart, the modewise sine errors are at most
`8 q_*`, so the graph correlation is at least `1-64 q_*`; across distinct
targets it is at most `q_*+16q_*<1-64q_*`.  Strict inequalities are used
before the algorithm's largest-score tie rule, so score ties and equality at
the graph threshold cannot create an extra or merged target cluster.

### Joint coefficient and residual constants

For the target-indexed balanced representatives, index the transient after each simultaneous update.
Let `m_s` be the maximum off-diagonal coefficient in state `h^(s)` after subtracting
the static Gram term, and `eta_s` its maximum row/column l1 mass.  The first update is
handled directly from the entry event; no unsupported `m_0<=1` contraction is used.
The direct mode expansion in `step_007` is the following indexed system.
\[
m_{s+1}\le4R_s+8q_*^2,\qquad
\eta_{s+1}\le8q_*^2+8(q_*+m_s)\eta_s. \tag{Q1}
\]
The coefficient-to-ratio comparison gives the first inequality from the
already proved `R_s` recurrence.  At `s=9`, `R_9 < 4.5e-7`, hence
`m_10 < 2.0e-6 < 1/64`; the normalized-column bound gives `eta_10 <= 2r`.
For `s >= 10`, the coefficient in (Q1) is at most `1/4`, so
\[
 \eta_{L_0}\le \frac{8q_*^2}{1-1/4}+2r\,4^{-(L_0-10)}\le17q_*^2,
 m_{L_0}\le16q_*^2. \tag{Q2}
\]
The balanced best-scalar map has the explicit same-target decomposition
\[
 \left\|T-
 \sum_{j=1}^r\theta_j p_j\otimes q_j\otimes s_j\right\|_F
 \le 256(\eta_{L_0}+q_*^2)\|T\|_F,
\]
and the corresponding quotient parameter distance is at most
`256(eta_L0+q_*^2)`.  Since
\(256(18q_*^2)=2.74658\times10^{-4}<1/2048\), this is `varrho_ALS/4` for
`varrho_ALS=1/512` and is far below the explicit local radius used below.  The
decomposition includes separately the diagonal scalar
error, the three factor-direction errors, the two-factor Gram leakage, and the
quadratic remainder; each term is bounded by the displayed row/column mass.

### Quotient ALS radius, inverse, and contraction

Use balanced exact factors
\(x_j^*=\lambda_j^{1/3}u_j\),
\(y_j^*=\lambda_j^{1/3}v_j\), and
\(z_j^*=\lambda_j^{1/3}w_j\) with the observable sign placed in one mode.
Componentwise scaling removes the common factor magnitudes, so all following
constants are scale-invariant; raw arithmetic bounds retain only the allowed
polynomial dependence on `kappa_0`.

The quotient norm used below is fixed as follows.  Minimize over positive
diagonal `D_X,D_Y,D_Z` with `D_X D_Y D_Z=I` and over the fixed third-mode sign
matrix, then take the maximum over modes and columns of the relative Euclidean
column error.  In symbols,
`||e||_q := min max_{m,j} ||M_{m,j}D_{m,j}-M^*_{m,j}||_2/
||M^*_{m,j}||_2`, with the scalar-coordinate relative error included in the
same maximum.  This is the quotient metric used in the source's equilibrated
ALS statement and in the residual comparison of `step_007`.

For an active mode-one update write `K=Z odot Y`; the following diagonal
conjugation, rather than a unit-scale shorthand, is used at every iterate.
\[
 K=K^\circ D_K,\quad K^\circ=Z^\circ\odot Y^\circ,\quad
 G_K=D_K(G_{Z^\circ}\circ G_{Y^\circ})D_K,
 \quad \lambda_{\min}(G_{Z^\circ}\circ G_{Y^\circ})\ge1-q_*^2.
\]
The realized norm event gives
`(2 kappa_0)^(-1) <= (D_m)_{jj} <= 2 kappa_0`; hence the raw diagonal
conjugation and its inverse have only polynomial `kappa_0` dependence.  Since
`D_K` is invertible,
`(K^T K)^dagger = D_K^(-1)(G_Zcirc o G_Ycirc)^(-1)D_K^(-1)`, so the
Moore--Penrose update is exactly the unit-direction update followed by the
quotient scale `D_K^(-1)`.  This discharges the source's equilibrated scaling
convention without replacing the consumed tensor target.
Inside the full quotient ball of radius `varrho=1/512`, write each iterate as
`K(e)=K^circ(e)D_K(e)`.  The row/column perturbation bound, now in the current
iterate error rather than only the initialization error, gives
`||G_Kcirc(e)-G_Kcirc(*)||_2 <= 32||e||_q+q_*^2 <= 1/8` for every point in
the ball.  Hence
\[
 \|G_{K^\circ(e)}-G_{K^\circ(*)}\|_2\le1/8,
 \qquad \lambda_{\min}(G_{K^\circ(e)})\ge3/4.
\]
Consequently the Moore--Penrose branch equals the ordinary inverse throughout
the ball and
\[
 \|G_{K^\circ(e)}^{-1}\|_2\le4/3,
 \|G_{K^\circ(e)}^{-1}-G_{K^\circ(e')}^{-1}\|_2
 \le(4/3)^2\|G_{K^\circ(e)}-G_{K^\circ(e')}\|_2.
\]
The dual-basis calculation in `step_008` discharges Uschmajew Assumption 1.
His Lemma 3.2 identifies the derivative of the cyclic map with the quotient
block-Gauss--Seidel derivative, and Theorems 3.3 and 3.5 give local linear
convergence once that kernel condition holds.  In current balanced coordinates,
the off-diagonal derivative blocks have norm at most
\(12q_*/(1-q_*^2)<1/300\).  The inverse perturbation bound (A2) and the
second-derivative estimate hold at every point in the full ball and give the
one-step inequality
`||Phi_cyc(e)-Phi_cyc(0)||_q <= (1/300+16||e||_q)||e||_q`.
At `||e||_q <= 1/512` the coefficient is below `1/8`, so the estimate is an
invariant-ball bound, not an initialization-only estimate.
Thus the current-notation wrapper exports
\[
 \|\Phi_{\rm cyc}(e)-\Phi_{\rm cyc}(e')\|_{\rm quot}
 \le \nu\|e-e'\|_{\rm quot},
 \qquad \nu:=1/8,
\]
and preserves the ball.  This explicitly handles the pseudoinverse branch and
the source's local-neighborhood non-output boundary.

### Public rate specialization

The final bridge fixes the auxiliary constants in the following order:
`C_rank >= 16/c_win`, `C_0 >= 64`, `C_rep >=
1/log(1/(1-p_0))`, and `m >= 8 log(2^12/epsilon)` active sweeps.  The
smoothing-margin assumptions imply `E_sm`; the window and recurrence bounds
imply `E_cov`, `E_ang`, and `E_cluster`; the row/column inequalities imply
the `1/512` basin condition; and the inverse bounds imply the `nu=1/8`
contraction.  The probability conversion is kept nested:
\[
 \Pr(E_{\rm sm})\ge1-\delta_{\rm sm},
 \qquad
 \Pr(\text{all restarts fail}\mid E_{\rm sm})
 \le(1-p_0)^J\le\delta_{\rm init}.
\]
For one run an explicit conservative arithmetic bound is
\[
 T_{\rm run}\le C\{kL_0 n^3+k n^3+k^2n
       +r(n^2+r^2)\log(2^{12}/\epsilon)\},
\]
covering proposal contractions, scores, graph comparisons, and active
normal-equation solves.  With
\(J\le1+C_{\rm rep}\log(1/\delta_{\rm init})\),
\(T_{\rm total}=J T_{\rm run}\) is polynomial in the exposed variables;
substituting `k=U(r)`, `kappa_0=poly(r)`, and `rho^{-1}=poly(r)` gives the
stated specialized polynomial without inserting either confidence parameter
into the rank.

## Assumption Provenance Objectives

- `step_001` must derive the realized norm, cumulative-Gram, weight, and
  Khatri--Rao events from the five primitive data assumptions; none may be
  listed as an admissibility event.
- `step_002` and `step_003` must derive the windowed correlated-Gaussian event,
  its per-slot probability, and all-target coverage from
  `assump:random-initialization`; target labels are used only in the proof,
  never by the algorithm.
- `step_004` must derive finiteness, the denominator invariant, and both
  recurrences from the old-state update, rather than assume a basin.
- `step_005` must export modewise angles and displacement, including the
  orthogonal complement issue (after one contraction every proposal lies in
  the corresponding true span).
- `step_006` must derive the high-score/small-displacement classification and
  the graph membership certificate; a retained aligned proposal cannot be
  assumed from the filter definition.
- `step_007` must derive a joint row/column coefficient-matrix bound and a
  same-target residual for the observable best-scalar representatives.  This
  is the noncircular bridge controlling incoming cross-target leakage.
- `step_008` must derive the CP-Jacobian kernel statement and quotient-Hessian
  margin from the realized Khatri--Rao event, with dual-basis discharge of the
  source's Assumption 1.
- `step_009` must turn the source's local theorem into a current-notation
  quantitative basin wrapper by bounding the normal-equation Jacobian and its
  Lipschitz remainder; it may not assume an existential neighborhood is large
  enough.
- `step_010` must preserve the basin and derive the no-floor linear residual
  contraction for the active columns, while zero padding remains fixed.
- `step_011` must derive the positive one-run success probability, restart
  conversion, and the public polynomial runtime from the earlier outputs.

## Mechanism-Source And Boundary Stress

### `step_001`: realized geometry and conditioning

- Claim class: generated event, norm retention, Gram perturbation, weight
  balance, and positive Khatri--Rao spectral lower bound.
- Theorem role: supplies the static instance interface for every dynamic step.
- Mechanism source: direct Gaussian norm and directional concentration in the
  exact normalized-column convention of `setting.md`; Schur-product identity
  for Khatri--Rao Grams.
- Source-to-claim adequacy: the raw perturbations have covariance
  \(\rho^2 I/n\).  On the allocated union event, the directional term is
  \(O(\kappa_0\rho\sqrt{\log(9r^2/\delta_{\rm sm})/n})\), the quadratic term
  is \(O(\kappa_0^2\rho^2\sqrt{\log(9r^2/\delta_{\rm sm})/n})\), and the
  normalization correction is \(O(\kappa_0^2\rho^2)\).  The two scalar
  margins in `assump:smoothing-margin` dominate these terms after the stated
  row-sum and union factors.  The Schur-product off-diagonal row sum is at
  most \(q_*^2\), giving the eigenvalue floor \(1-q_*^2\).
- Residual-to-target adequacy: the produced factors are the same realized
  factors consumed downstream; the norm/Gram residuals are bounded directly
  by the primitive slack and require no surrogate transfer.
- Key positive/control term or structural source: the base norm lower bound
  \(\kappa_0^{-1}\), base row-sum margin \(q_*/4\), and base weight ratio
  \(1+1/800\).
- Opposing defect terms: linear directional perturbations, quadratic
  perturbations, normalization, and the finite union tail.
- Closure/dominance/absorption relation: each defect is separately dominated
  by the displayed smoothing margin; the resulting row sums are below
  \(q_*\) and the weight ratio below \(1.01\).  No trajectory quantity is
  used in this step.
- Accumulation behavior / scope compatibility: static finite collection;
  union-bound budget is allocated once before proposal randomness.
- Obligation locality classification: `step-local`.
- Noncircular closure status: direct primitive-to-event producer; consumers are
  `step_002`, `step_004`, `step_008`, and `step_009`.
- Entry-state / first-update stress result: at the exact orthogonal,
  equal-weight, zero-interference specialization the event gives `q=0` and
  `Gamma=1`; it does not assert proposal alignment.
- Baseline conclusion preserved: yes, the exact orthogonal geometry is a
  special case of the exported event.
- Producer-consumer provenance: primitive smoothing assumptions -> `step_001`
  -> extreme event, recurrence, and local Jacobian steps.
- Null or boundary regime tested: \(\rho\downarrow0\), orthogonal bases, and
  the smallest allowed base column norm; the explicit lower norm margin keeps
  normalization defined.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no; the source is active through the primitive margins.
- Repair route if source is unsupported: a tighter direct concentration
  allocation inside `step_001`; no theorem-contract change is needed.

### `step_002` and `step_003`: rare-entry probability and coverage

- Claim class: Gaussian anti-concentration, finite-slot coverage, and a
  generated initialization event.
- Theorem role: produce at least one useful proposal for every target with a
  constant positive one-run probability.
- Mechanism source: independent Gaussian triples, Gaussian regression under
  the realized Gram matrices, and product-Gaussian tail bounds.
- Source-to-claim adequacy: condition on the target coordinates in
  \([t_r,t_r+t_r^{-1}]\).  Conditional means of competitor coordinates are
  bounded by \(q_*(t_r+t_r^{-1})\), covariance eigenvalues lie in
  \([1-q_*,1+q_*]\), and the target windows contribute at least
  \(c_{\rm win}r^{-5/3}(\log r)^{-3/2}\), with `c_win` fixed explicitly in
  `Quantitative Interface Instantiations`.  The dyadic product-tail bound has
  exponent \(\beta_*>1.05\), so the three pair families and `r-1`
  competitors fail with probability at most `24 r^(1-beta_*)`; for
  `r >= r_0` this is at most `1/4`, yielding the stated `p_win`.
- Residual-to-target adequacy: the produced object is a raw coordinate event;
  `step_004` consumes exactly its pair-product inequalities and no stronger
  coordinatewise dominance is silently substituted.
- Key positive/control term or structural source: the target window exponent
  \(3a_*/2=5/3\), and \(b_*>1\) for competitor products.
- Opposing defect terms: correlated-coordinate shifts, target-window width,
  and the union over competitors.
- Closure/dominance/absorption relation: choose
  `C_rank >= 16/c_win`, so `k p_win >= 8 log r`; for each fixed target the
  independent-slot miss probability is at most `r^-8`, and a union bound over
  `r` targets gives `P(E_cov) >= 1-r^-7 >= 1/2`.  The finitely many
  `3 <= r < r_0` cases are folded into the same universal constant.  This is
  a finite coupon event, not an all-time invariant.
- Accumulation behavior / scope compatibility: finite slot scope; failures
  are charged independently across slots, and no proposal trajectory is
  counted as covered until `step_004` succeeds.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` produces the event and `step_003`
  produces coverage before any score or basin claim consumes it.
- Entry-state / first-update stress result: the allowed initial state has
  nonzero target coordinates in all modes; the first simultaneous update is
  exactly the map used in `step_004`.  No denominator is assumed positive
  outside the event.
- Baseline conclusion preserved: in the independent orthogonal limit the
  event is the ordinary three-mode Gaussian window and feeds exact squaring.
- Producer-consumer provenance: raw Gaussian slots -> `step_002` ->
  `step_003` -> `step_004`.
- Null or boundary regime tested: target coordinates at the lower window edge
  and competitors at the pair-product threshold; both are included by the
  one-sided inequalities.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without coverage the per-run success event is absent, but this is
  a finite probabilistic failure handled by restarts, not an unproved basin
  premise.
- Repair route if source is unsupported: refine the Gaussian comparison and
  allocate a smaller tail budget; the rank exponent is unchanged.

### `step_004`: simultaneous `R,S` recurrence and invariant

- Claim class: recursive contraction, denominator positivity, and exact
  baseline specialization.
- Theorem role: produce a noncircular target-relative alignment source.
- Mechanism source: direct expansion of the three old-state contractions in
  the realized factor basis.  For each competitor, the new mode ratios are
  bounded by the other two old ratios plus Gram leakage; the common target
  denominator is bounded below by \(1-\Gamma qR_t\).
- Source-to-claim adequacy: the update uses the same old `(p,q,s)` in all
  three modes, so the three pair products are exactly the inputs to the three
  new ratios.  Summing the same expansion gives the displayed `S` recurrence;
  no cyclicly updated coordinate is reused.
- Residual-to-target adequacy: `R_t,S_t` are defined in the target-relative
  coordinates consumed by the next proposal update, so the recurrence exports
  the exact downstream object.
- Key positive/control term or structural source: simultaneous squaring of
  pair products, with `Gamma <= 1.01` and `q <= q_*`.
- Opposing defect terms: Gram leakage and weight imbalance, absorbed only in
  the displayed denominator and additive `q` terms.
- Closure/dominance/absorption relation: starting at `R_0 <= 19/20`, direct
  numerical interval arithmetic gives `Gamma R_t < 1` for every iterate,
  `R_t <= 6e-8` after a universal burn-in, and a later `S` coefficient below
  `1/4000`.  The additive fixed point is `O(q_*^2)`; the finite transient is
  charged by the contractive recurrence.
- Accumulation behavior / scope compatibility: dissipative recurrence over
  exactly `L_0` sweeps.  The one-step map preserves the interval and the
  forcing term is bounded by the same `q` at every step, so no unbounded
  adversarial accumulation is hidden.
- Obligation locality classification: `step-local`.
- Noncircular closure status: interval invariance is proved from the first
  entry value before the recurrence is iterated; `step_005` consumes only the
  resulting finite-horizon bounds.
- Entry-state / first-update stress result: at `q=0,Gamma=1`, the first
  update is exactly `(BC,AC,AB)`, so `R^+ <= R^2` and `S^+ <= RS`; the prior
  cyclic counterexample is not an allowed update here.
- Baseline conclusion preserved: exact orthogonal squaring and the zero
  interference limit are preserved verbatim.
- Producer-consumer provenance: `step_001` geometry + `step_003` coverage ->
  `step_004` -> `step_005`, `step_006`, and `step_007`.
- Null or boundary regime tested: `R_0=19/20`, `q=q_*`, `Gamma=1.01` is the
  worst numerical boundary; the denominator remains strictly positive.  The
  exact endpoint `q=0,Gamma=1` is handled separately by `f_0(0)=0` and
  `f_0(x)=x^2`, so the fixed-floor statement is never used to exclude the
  noiseless baseline.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: if simultaneous old-state use were removed, the first-update
  mechanism would fail; the algorithm in `setting.md` explicitly enforces the
  simultaneous convention.
- Repair route if source is unsupported: none within the current map; a failed
  exact expansion would be an idea-level defect. The planned expansion is
  algebraically source-compatible.

### `step_005`: angular and displacement export

- Claim class: modewise angle, span membership, and last-sweep displacement.
- Theorem role: provide the quantitative input to score filtering and the
  joint coefficient bridge.
- Mechanism source: the contraction vectors lie in the corresponding realized
  factor span after the first update; Gram inversion with row sum `q` converts
  ratio and pair-mass bounds into angle and displacement bounds.
- Source-to-claim adequacy: the `S` recurrence bounds the sum of pair products,
  while the individual update expansion bounds the sum of each new-mode
  ratios.  The resulting angle deficiency is `O(q_*^2)` plus a transient
  `O(R_t)` term, and the last-sweep displacement is at most `16 q_*` for a
  sufficiently large universal burn-in, hence below the filter threshold
  `64 q_*`.
- Residual-to-target adequacy: the exported angle is in the same absolute
  correlation metric used by graph clustering and the quotient basin; no
  surrogate factor metric is substituted.
- Key positive/control term or structural source: span projection after the
  first update and the finite `S` mass.
- Opposing defect terms: Gram inversion, denominator normalization, and the
  finite transient from `R_t`.
- Closure/dominance/absorption relation: choose `C_0` so the transient is below
  `q_*^2` after the universal burn-in plus `O(log r)` mass-decay sweeps.  The
  fixed Gram term is `O(q_*^2)`, which is much smaller than `64q_*`.
- Accumulation behavior / scope compatibility: all-time only over the declared
  finite proposal horizon; the recurrence in `step_004` is the noncircular
  preservation mechanism.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_004` produces the ratio/mass invariant;
  this step only transfers it to angles and displacement.
- Entry-state / first-update stress result: the first update removes arbitrary
  orthogonal-complement components because each contraction is in the true
  factor span; later angle comparisons are therefore legitimate.
- Baseline conclusion preserved: in the orthogonal case the angle and
  displacement converge to zero under exact squaring.
- Producer-consumer provenance: `step_004` -> `step_005` -> `step_006` and
  `step_007`.
- Null or boundary regime tested: a proposal with a vanishing target
  denominator is assigned infinity by the setting and is excluded by the
  coverage event; no denominator is silently regularized.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: no; the finite-horizon source remains active from the coverage
  entry.
- Repair route if source is unsupported: sharpen the Gram-to-angle conversion,
  not the theorem contract.

### `step_006`: score/displacement classification and clustering

- Claim class: generated membership, score separation, and one-cluster-per-
  component certificate.
- Theorem role: make the representative selection data-only while preserving
  target coverage.
- Mechanism source: direct stationary-equation analysis of the simultaneous
  rank-one map, perturbed from the orthogonal equal-weight case by `q` and
  `Gamma`.
- Source-to-claim adequacy: the perturbative stationary-support lemma is
  stated with the actual constants: a covered slot has
  \(\sigma_i\ge(1-32q_*)\lambda_j\) and `d_i <= 16q_*`; any final proposal
  with `d_i <= 64q_*` that is not in a unique target chart has score at most
  \((1/\sqrt2+32q_*)\lambda_{\max}\).  Since
  \[
  (1/\sqrt2+32q_*)1.01<0.723<0.85(1-32q_*)<0.844,
  \]
  it cannot pass the observable filter once a covered component is present.
  The proof expands the three fixed-point equations around the exact
  equal-support orthogonal stationary points and bounds each Gram, weight, and
  displacement defect by `32q_*`.  The angle bound from `step_005` gives
  graph edges within a target and excludes cross-target edges using the
  realized Gram row sum.
- Residual-to-target adequacy: the produced graph representative is compared
  to the exact target direction in the same modewise absolute-correlation
  metric, with error below the later basin radius.
- Key positive/control term or structural source: the orthogonal stationary
  support classification and the constant score gap `1-1/sqrt(2)`.
- Opposing defect terms: Gram leakage, weight ratio, finite displacement,
  and score perturbation.
- Closure/dominance/absorption relation: the displayed numerical gap is
  positive by more than `0.12`; it dominates the combined weight, Gram, and
  displacement defects.  Within a target chart the sine error is at most
  `8q_*`, hence the graph correlation is at least `1-64q_*`; across distinct
  targets it is at most `q_*+16q_*<1-64q_*`.  Strict margins are established
  before the largest-score tie rule, and coverage from `step_003` guarantees
  every target has a retained member.
- Accumulation behavior / scope compatibility: finite graph construction; no
  recursive claim is made after the final proposal.
- Obligation locality classification: `step-local`.
- Noncircular closure status: classification uses only the observable final
  score/displacement and the produced angle bound, not the desired graph
  correctness itself.
- Entry-state / first-update stress result: orthogonal mixtures with support
  size at least two are stationary only at score at most `1/sqrt(2)`; near
  stationary perturbations cannot cross the `0.85` threshold.
- Baseline conclusion preserved: exact component proposals remain the unique
  high-score clusters in the orthogonal equal-weight limit.
- Producer-consumer provenance: `step_005` + observable filter -> `step_006`
  -> `step_007`.
- Null or boundary regime tested: the exact orthogonal stationary supports of
  size `s >= 2` have score at most `lambda_max/sqrt(2)`; the perturbation lemma
  treats tied-support and zero-coordinate boundaries by a limiting argument.
  Score ties and graph-threshold equality are resolved by the stated
  largest-score representative rule only after the strict numerical margins
  above have been established.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without the stationary classification, the data-only filter could
  retain a spurious high-score mixture; this is the explicit hard lemma in
  this step, not an assumed condition.
- Repair route if source is unsupported: a tighter perturbative stationary
  lemma within the same simultaneous map.

### `step_007`: joint coefficient-matrix and best-scalar bridge

- Claim class: cross-target incoming leakage, same-target residual transfer,
  and basin-entry initialization.
- Theorem role: prevent `r`-fold accumulation of per-proposal errors and export
  the exact active-factor object consumed by local CP-ALS.
- Mechanism source: write the target-indexed mode-correlation matrices as
  `I + H_M + F_M`, where `H_M=G_M-I` has symmetric row and column mass at most
  `q`, and `F_M` is the proposal error after subtracting the static Gram
  term.  The coefficient matrix is a weighted Hadamard product of two such
  matrices.  Index the transient after each simultaneous update: `m_s` is the
  maximum off-diagonal coefficient in state `h^(s)` after subtracting the
  static Gram term, and `eta_s` is its maximum row/column l1 mass.  The first
  update is handled directly from the entry event; there is no unsupported
  `m_0 <= 1` contraction claim.  For `s >= 1`, the direct expansion gives
  \[
  m_{s+1}\le4R_s+8q_*^2,\qquad
  \eta_{s+1}\le8q_*^2+8(q_*+m_s)\eta_s,
  \]
  The first inequality is supplied by `R_s`; since `R_9 < 4.5e-7`,
  `m_10 < 2.0e-6 < 1/64`, and the normalized-column bound gives
  `eta_10 <= 2r`.  For `s >= 10` the eta coefficient is at most `1/4`, so
  `C_0 >= 64` gives `eta_L <= 17 q_*^2` and `m_L <= 16 q_*^2`.  This is the
  explicit row/column bridge;
  it does not infer a joint bound from one proposal's outgoing `S_t` alone.
- Source-to-claim adequacy: this is a direct current-notation derivation;
  it uses both row and column controls and therefore controls incoming as well
  as outgoing leakage.  It does not infer a joint matrix bound from a single
  column's `S_t` alone.
- Residual-to-target adequacy: after sign alignment and quotient rescaling,
  the balanced best-scalar representative matrix differs from the exact
  balanced CP factors by at most `256(eta_L+q_*^2)` in the operator/quotient
  norm.  The exact same-target decomposition is
  \[
  \left\|T-\sum_j\theta_jp_j\otimes q_j\otimes s_j\right\|_F
  \le256(\eta_L+q_*^2)\|T\|_F.
  \]
  Its four terms are the diagonal scalar error, three direction errors, the
  two-factor Gram leakage, and the quadratic remainder; each is bounded by
  the same row/column inequality, so the produced object is the same target
  tensor, not a surrogate.
- Key positive/control term or structural source: symmetric Gram row/column
  mass and the contractive transient represented by `m_t`; the initial row
  mass is explicitly bounded by `2r` and is not hidden.
- Opposing defect terms: proposal-specific transient errors, Gram-forced
  cross terms, normalization, and best-scalar weight error.
- Closure/dominance/absorption relation: with `C_0 >= 64`, the transient term
  satisfies `2r 4^{-(L_0-10)} <= q_*^2/128`; solving the indexed recurrence
  gives `eta_L <= 17q_*^2`.  Therefore the quotient distance is at most
  `256(18q_*^2)=2.74658e-4 < 1/2048 = varrho_ALS/4`, the radius exported by
  `step_009`.
- Accumulation behavior / scope compatibility: the only repeated contribution
  is the transient over the finite proposal horizon; its one-step charge is
  the squaring recurrence.  Persistent Gram forcing is absorbed by the
  fixed-point small-gain inequality, not summed over `r` columns.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_004` produces `R_t`; the row/column
  inequality produces `eta`; the local basin in `step_009` consumes `eta`.
  No basin property is used to prove `eta`.
- Entry-state / first-update stress result: at `q=0`, the coefficient error
  matrix is exactly squared and the row/column mass vanishes; at nonzero `q`,
  the first update has the explicit `q^2` Gram forcing shown above.
- Baseline conclusion preserved: exact balanced representatives and zero
  residual are recovered in the orthogonal limit.
- Producer-consumer provenance: `step_005`/`step_006` representatives ->
  `step_007` -> `step_008` and `step_009`.
- Null or boundary regime tested: one target's proposal error concentrated in
  a single row; the two-sided row/column inequality handles this case without
  an `r` multiplier beyond the explicitly decaying transient.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: if only outgoing `S_t` were available, incoming leakage could be
  uncontrolled; the explicit row/column producer is the required repair.
- Repair route if source is unsupported: strengthen the finite transient bound
  or add a direct random-sign row-mass concentration lemma, still within this
  step and setting.

### `step_008`: Jacobian kernel and quotient-Hessian margin

- Claim class: identifiability, nondegeneracy, and positive curvature modulo
  scaling.
- Theorem role: discharge the local ALS source assumption at the selected
  exact decomposition.
- Mechanism source: `step_001` gives full column rank and factor Gram spectra
  in `[1-q_*,1+q_*]`.  For each mode, use the explicit dual vectors
  \(\widetilde u_j=U(G_U^{-1}e_j)\), and cyclic analogues; then
  \(\|\widetilde u_j\|\le(1-q_*)^{-1}\) and
  \(\langle\widetilde u_j,u_\ell\rangle=\delta_{j\ell}\).  Contracting a
  zero Jacobian tangent with two dual vectors isolates the `j`th scalar and
  mode-direction terms.  Repeating the contraction in the three modes shows
  that every orthogonal tangent vanishes and only the componentwise scaling
  directions remain.
- Source-to-claim adequacy: at the exact decomposition the Hessian is
  \(J^*J\), so the displayed dual-basis calculation is exactly the kernel
  statement in Uschmajew Assumption 1, not merely an identifiability heuristic.
  The source object is the same exact CP decomposition, balanced scaling
  quotient, and Frobenius least-squares loss; no equilibrated or whitened
  surrogate is consumed.  The same contractions give the quantitative
  quotient bound
  \(\|J\dot\theta\|_F^2\ge(1-8q_*)\|\dot\theta\|_{\rm quot}^2\) after the
  componentwise scaling tangent is removed, while the cyclic Khatri--Rao
  floor supplies the block-normal-equation margin.
- Residual-to-target adequacy: the quotient norm is the balanced representative
  norm exported by `step_007`, so the curvature statement applies to the
  actual active initialization.
- Key positive/control term or structural source: the Schur-product Gram
  eigenvalue `1-q_*^2` and full column rank of each mode matrix.
- Opposing defect terms: scaling kernel, representative perturbation, and
  cross-component Gram mass.
- Closure/dominance/absorption relation: quotient out the exact scaling kernel;
  the remaining Jacobian/Hessian eigenvalues are at least `1-8q_* > 0.998`,
  and the block Gram eigenvalues are at least `1-q_*^2`.  These two margins
  are the positive sources used by `step_009`, rather than an assumed local
  basin.
- Accumulation behavior / scope compatibility: static local geometry; no
  repeated-scope claim is assigned here.
- Obligation locality classification: `step-local`.
- Noncircular closure status: source assumptions are discharged from
  `step_001` before the local map is invoked.
- Entry-state / first-update stress result: at the exact decomposition the
  cyclic block normal equations are nonsingular; the Moore--Penrose branch in
  the algorithm agrees with the ordinary inverse on this neighborhood.
- Baseline conclusion preserved: the orthogonal Hessian is positive definite
  modulo scaling and contains the exact zero-residual solution.
- Producer-consumer provenance: `step_001` + `step_007` -> `step_008` ->
  `step_009`.
- Null or boundary regime tested: scaling directions are explicitly removed;
  no claimed positive eigenvalue is assigned to that null space.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without quotienting scaling, positivity is false; the source and
  this step use the correct quotient.
- Repair route if source is unsupported: expand the dual-basis calculation;
  no change to the algorithm or goal is required.

### `step_009`: quantitative local CP-ALS basin wrapper

- Claim class: basin membership, local map construction, and contraction
  factor.
- Theorem role: bridge the selected best-scalar representatives to the cited
  local ALS theorem with an explicit radius.
- Mechanism source: map the current balanced active factors to Uschmajew's
  exact CP factors `(A,B,C)` component by component, with the same Frobenius
  loss and componentwise scaling quotient.  His Assumption 1 is discharged by
  `step_008`; Lemma 3.2 (local differentiability and block-Gauss--Seidel
  derivative) and Theorems 3.3/3.5 (local linear ALS under that kernel
  condition) are then wrapped by a direct current-notation bound on the block
  normal equations.
- Source-to-claim adequacy: the wrapper fixes the source object mapping:
  active balanced columns map to the exact realized factors; zero padding is
  held fixed and therefore does not alter the active normal equations.  For
  every point in the full quotient ball, write `K=K^circ D_K`; the normalized
  Gram satisfies `lambda_min(G_Kcirc)>=3/4` and
  `||G_Kcirc(e)^(-1)-G_Kcirc(e')^(-1)|| <= (4/3)^2 ||G_Kcirc(e)-G_Kcirc(e')||`.
  The raw Moore--Penrose update is conjugate by `D_K^(-1)`, whose norm and
  inverse norm are polynomial in `kappa_0`.  Work in the componentwise
  balanced quotient, where a common rescaling of a true component is removed
  before measuring distance.  The normalized `1-q_*^2` floor and
  `Gamma <= 1.01` give the explicit scale-invariant radius `varrho_ALS=1/512`
  and contraction `nu=1/8`; the derivative/remainder inequality holds for
  every `e` in that ball, not only at the initialization.
- Residual-to-target adequacy: `step_007` gives quotient distance at most
  \(\varrho_{\rm ALS}/4\) after best-scalar balancing, so the actual active
  initialization lies in the source basin.  The tensor residual and parameter
  distance are related by the same local Jacobian margin, with no error floor.
- Key positive/control term or structural source: quotient-Hessian margin from
  `step_008` and bounded derivative of the Khatri--Rao normal equations.
- Opposing defect terms: representative row/column leakage, scaling choice,
  Taylor remainder, and possible pseudoinverse branch changes.
- Closure/dominance/absorption relation: for every `e` in
  `varrho_ALS=1/512`, the normalized Khatri--Rao Gram has eigenvalue at least
  `3/4`, the Moore--Penrose branch is the ordinary inverse, and the inverse
  perturbation is bounded by `(4/3)^2`.  The source block-Gauss--Seidel
  derivative bound `12q_* /(1-q_*^2) < 1/300` plus the full-ball Taylor
  remainder inequality `(1/300+16||e||_q)||e||_q` is at most `1/8`; thus the
  normal equations stay nonsingular and the ball is invariant.
- Accumulation behavior / scope compatibility: invariant basin under every
  active CP-ALS sweep; the one-step contraction plus radius preservation gives
  a finite all-time closure for the refinement horizon.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_007` produces the entry distance;
  `step_008` produces the margin; this step proves the ball is invariant before
  `step_010` consumes the contraction.
- Entry-state / first-update stress result: the first active mode update is a
  well-defined inverse on the full-ball `3/4` normalized Gram floor and maps
  the radius to at most `nu` times the error plus the absorbed quadratic
  remainder; the diagonal scale conjugation preserves the same quotient
  target.
- Baseline conclusion preserved: exact orthogonal balanced factors have
  `varrho_\mathrm{ALS}>0` and the local map contracts to zero residual.
- Producer-consumer provenance: `step_007` + `step_008` -> `step_009` ->
  `step_010`.
- Null or boundary regime tested: the scaling kernel is removed before the
  radius calculation; the Moore--Penrose selection is only needed outside the
  certified nonsingular ball.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: an existential local theorem without this wrapper would not imply
  basin entry; the wrapper is the explicit required bridge.
- Repair route if source is unsupported: derive the displayed normal-equation
  Lipschitz constants directly; a failure would be a localized interface
  defect, not a reason to weaken the theorem.

### `step_010`: terminal contraction and stopping

- Claim class: recursive convergence, exact-limit behavior, and stopping-time
  bound.
- Theorem role: produce the requested relative Frobenius residual and retain
  the rank and zero-padding guarantees.
- Mechanism source: the invariant quotient ball and contraction factor `nu<1`
  from `step_009`, plus the exact CP representation of `step_008`.
- Source-to-claim adequacy: active cyclic CP-ALS is the same block method as
  the source theorem; the held-zero columns are not updated and contribute no
  normal-equation terms.  The local objective gap contracts geometrically,
  and the local Jacobian margin transfers it to the tensor residual.
- Residual-to-target adequacy: the consumed metric is exactly
  \(\|T-\widehat T\|_F/\|T\|_F\); no surrogate residual or stopped positive
  floor is substituted.
- Key positive/control term or structural source: `1-nu` and the exact
  zero-residual CP solution.
- Opposing defect terms: local Taylor remainder and finite arithmetic
  stopping tolerance, both absorbed by the basin choice.
- Closure/dominance/absorption relation: after `m` sweeps the residual is at
  most `C nu^m`; choose
  \(m\ge C_{\rm ALS}\log(C/\epsilon)\).  The same inequality preserves the
  basin at every sweep.
- Accumulation behavior / scope compatibility: contractive, horizon-uniform;
  the geometric series of remainders is bounded by the invariant radius.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_009` is the sole basin producer; this step
  does not use the stopping conclusion to prove basin membership.
- Entry-state / first-update stress result: the first active sweep starts in
  the certified ball and decreases the quotient error; in the exact case it
  reaches the zero-residual solution in the limiting contraction sense.
- Baseline conclusion preserved: arbitrary \(\epsilon\) and zero residual in
  the exact limit are retained.
- Producer-consumer provenance: `step_009` -> `step_010` -> `step_011` and
  final theorem assembly.
- Null or boundary regime tested: \(0<\epsilon<1\) and the exact limit
  \(\epsilon\downarrow0\); no nonzero noise floor is introduced.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without the local contraction, only a local stationary statement
  would remain; the source-compatible wrapper supplies the contraction.
- Repair route if source is unsupported: sharpen the local contraction
  constants; do not weaken the residual target.

### `step_011`: restart, probability, and runtime specialization

- Claim class: confidence conversion, generated-output closure, and explicit
  computational rate (the public Rate Specialization Bridge).
- Theorem role: combine the instance event, one-run coverage, local refinement,
  and independent restarts into the public theorem.
- Mechanism source: independence in `assump:random-initialization`, the
  positive coverage probability from `step_003`, and the stopping bound from
  `step_010`.
- Source-to-claim adequacy: verify the exposed smoothing, rank, and horizon
  inequalities using the auxiliary choices already fixed in `setting.md`,
  absorb every transient and local-remainder term using the margins exported
  by `step_001`--`step_010`, and then convert the nested probabilities.  If one
  full run succeeds with probability at least
  `p_0>0`, then the prescribed `J` gives
  \((1-p_0)^J\le\delta_{\rm init}\) for a universal `C_rep`.  Proposal
  contractions, score evaluation, graph construction, active ALS, and restart
  loops have explicit polynomial arithmetic costs.
- Residual-to-target adequacy: the returned smallest-residual successful run
  is one of the same-target outputs certified by `step_010`.
- Key positive/control term or structural source: independent full-run
  randomness conditional on the fixed tensor and fixed rank `k`.
- Opposing defect terms: unsuccessful slot coverage, unsuccessful full runs,
  and the logarithmic restart factor.
- Closure/dominance/absorption relation: finite failure probability is
  geometrically reduced by restarts; runtime is multiplied by `J` but `k` is
  unchanged.  Since `k`, `kappa_0`, and `rho^{-1}` are polynomial in `r`, the
  specialized runtime is polynomial in the public variables.
- Accumulation behavior / scope compatibility: finite restart scope; no
  dependence between runs is assumed beyond conditional independence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all consumed outputs have producers in
  `step_001`--`step_010`; this step only performs probability and cost
  aggregation.
- Entry-state / first-update stress result: each restart starts with fresh
  Gaussian triples and reuses the same good tensor, exactly as required by the
  setting.
- Baseline conclusion preserved: restarts do not enlarge the algorithmic rank
  and exact-data refinement remains arbitrary-accuracy.
- Producer-consumer provenance: all prior steps -> `step_011` -> final output.
- Null or boundary regime tested: `delta_init` near one is covered by the
  `max{1, ...}` definition of `J`; `epsilon` near zero only affects the
  logarithmic stopping term.
- Target conclusion false or theorem-critical obstruction present if source
  vanishes: without a positive one-run producer, restarts cannot help; the
  coverage and local chain supply that producer.
- Repair route if source is unsupported: adjust the universal restart and
  arithmetic constants, not the rank exponent or theorem target.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Realized norms, `q_real <= q_*`, `Gamma <= 1.01`, and cyclic Khatri--Rao floor | `step_001` direct Gaussian/Schur derivation | Base scale, base row sums, base weight balance, three smoothing terms, `delta_sm` | Linear, quadratic, normalization, and union-tail defects are separately controlled; no trajectory defect | Same realized factors are consumed; exact norm and Gram metrics | Smoothing-margin inequalities dominate each perturbation and Schur-product row mass | `q_*/4` base slack, `1/800` weight slack, `1-q_*^2` spectral margin | `step_002`, `step_004`, `step_008`, `step_009` | None |
| Per-target window event and `R_0 <= 19/20`, `S_0 <= r R_0` | `step_002` | `c_win`, `beta_* > 1.05`, `r_0`, correlated Gaussian regression, target window, competitor pair tails | Conditional means/covariances and finite competitor union are controlled; failure `<=24r^(1-beta_*)` | Produced raw event maps exactly to target-relative ratios in `setting.md` | `p_win >= (c_win/2)r^(-5/3)(log r)^(-3/2)`, `b_*/a_*=19/20` | `step_003`, `step_004` | None |
| All-target coverage at rank `U(r)` | `step_003` | Independent slots and `p_win` | Slot misses are independent across slots; no dynamic claim is hidden | Coverage event is consumed only by the proposal recurrence | `C_rank >= 16/c_win` gives `k p_win >= 8 log r`, union miss `<=r^-7` | `step_004` | None |
| Finite-horizon `R_t,S_t` invariant and numerical floor | `step_004` direct expansion | `q_real`, `Gamma`, entry margins | Gram leakage is additive and denominator-controlled; no cyclic reuse; at `q=0` the floor is exactly zero | Same target-relative state is consumed by `step_005` | Interval invariance, dissipative map, and bounded fixed point; separate `q=0` endpoint | `R_0 <= 19/20`, `q_*`, `Gamma <=1.01` | `step_005`, `step_007` | None |
| Modewise angle/displacement certificate | `step_005` | `S_t`, span membership after first update, Gram inversion | Transient and normalization defects are controlled over `L_0` | Exact modewise absolute correlations used by filter and graph | `C_0 log r` makes transient below `q_*^2`; fixed term below `64q_*` | `64q_*` filter threshold | `step_006`, `step_007` | None |
| One data-driven cluster per target | `step_006` | Observable score/displacement, angle certificate, stationary equations | Mixture branches, Gram leakage, and ties are controlled by the constant score gap | Representatives remain in the exact target direction metric | `(1/sqrt(2)+32q_*)1.01 < 0.723 < 0.85(1-32q_*)`; graph thresholds separate targets | `0.85`, `64q_*`, and row-sum `q_*` | `step_007` | None |
| Joint representative coefficient row/column mass and best-scalar residual | `step_007` direct Hadamard/small-gain bridge | `R_s` after the first update, `m_s`, `eta_s`, symmetric Gram row/column mass, selected clusters | Persistent forcing is `8q_*^2`; post-update transient has `m_10<1/64`, starts `eta_10<=2r`, and contracts with coefficient `<=1/4`; no uncontrolled incoming term remains | `||T-T_rep||_F <=256(eta_L+q_*^2)||T||_F`, quotient distance `<=2.74658e-4<1/2048` | Indexed recurrence yields `m_L<=16q_*^2`, `eta_L<=17q_*^2`; `C_0>=64` | `q_*=1/4096` | `step_008`, `step_009` | None |
| Quotient-Hessian kernel and positive margin | `step_008` direct dual-basis derivation plus Uschmajew Assumption 1 | Khatri--Rao floor and full column rank | Scaling tangent is removed; cross Gram is bounded | Same exact active CP target and Frobenius loss | Dual contractions isolate components; quotient retains a fixed margin | `1-q_*^2` | `step_009` | None |
| Explicit local basin and contraction factor | `step_009` current-notation wrapper around Uschmajew Lemma 3.2/Theorems 3.3, 3.5 | Full-ball normalized Gram, diagonal scales `D_K`, quotient derivative and representative residual | Taylor remainder and Moore--Penrose branch are controlled for every point in the ball | Best-scalar active initialization lies in the same quotient ball; subsequent iterates stay in it | `varrho_ALS=1/512`, `lambda_min(G_Kcirc(e))>=3/4`, inverse difference `<= (4/3)^2`, one-step coefficient `<=1/8` | Scale-invariant `1/512`, `nu=1/8`; raw diagonal/inverse costs polynomial in `kappa_0` | `step_010` | None |
| Relative residual and stopping horizon | `step_010` | Basin invariance and contraction | Geometric remainder is summable; no noise floor | Exact target Frobenius residual | `m=O(log(1/epsilon))` absorbs the initial gap | Exact zero-residual CP representation | `step_011`, final theorem | None |
| Conditional confidence and polynomial runtime | `step_011` | Positive one-run probability, restart independence, all prior cost bounds | Failures are geometrically amplified away; costs multiply by `J` only | Returned output is one of the certified same-target outputs | `(1-p_0)^J <= delta_init`; rank fixed | `C_rep`, fixed `U(r)` | Final assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Realized norm/Gram/weight/Khatri--Rao event | `step_001` direct primitive-source derivation | `step_002`, `step_004`, `step_008`, `step_009` | Instance probability qualification and all later conditioning | Primitive assumptions -> `step_001` -> static/dynamic steps | derived | None |
| Windowed target event | `step_002` Gaussian regression/tail derivation | `step_003`, `step_004` | Per-slot entry interface | `step_001` -> `step_002` -> coverage and recurrence | derived | None |
| All-target coverage | `step_003` coupon argument | `step_004`, `step_011` | Positive one-run success source | `step_002` -> `step_003` -> dynamic chain | derived | None |
| `R,S` recurrence and invariant | `step_004` direct simultaneous contraction expansion | `step_005`, `step_006`, `step_007` | Alignment and joint leakage control | `step_003` -> `step_004` -> angle/filter/matrix bridge | derived | None |
| Angle/displacement certificate | `step_005` Gram/span transfer | `step_006`, `step_007` | Observable retention and representative accuracy | `step_004` -> `step_005` -> filter and bridge | derived | None |
| Correct graph clusters and representatives | `step_006` stationary score-gap lemma | `step_007` | Active rank-`r` initialization object | `step_005` -> `step_006` -> joint matrix bridge | derived | None |
| Joint coefficient row/column mass and same-target residual | `step_007` post-first-update indexed Hadamard/small-gain derivation | `step_008`, `step_009` | Explicit basin-entry interface | `step_004`/`step_006` -> post-update `m_s`/`eta_s` -> `step_007` -> local geometry | derived | None |
| Quotient-Hessian kernel/margin | `step_008` dual-basis derivation and cited source assumption | `step_009` | Local theorem hypothesis and curvature source | `step_001`/`step_007` -> `step_008` -> wrapper | derived | None |
| Explicit basin and contraction factor | `step_009` full-ball scale-conjugated current-notation local wrapper | `step_010` | Basin preservation and local refinement | `step_007`/`step_008` -> full-ball normalized Gram/inverse -> `step_009` -> contraction | derived | None |
| Relative residual/stopping bound | `step_010` local CP-ALS contraction | `step_011` | Arbitrary-accuracy output | `step_009` -> `step_010` -> final aggregation | derived | None |
| Restart probability and runtime | `step_011` | final assembly | Public theorem probability, rank, and runtime | all preceding outputs -> `step_011` -> theorem | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | With probability at least `1-delta_sm`, derive norm retention, `q_real <= q_*`, `Gamma <= 1.01`, and all cyclic Khatri--Rao Gram floors, retaining linear/quadratic/normalization terms. | None | `assump:base-scale`, `assump:cumulative-gram`, `assump:base-weight-balance`, `assump:gaussian-smoothing`, `assump:smoothing-margin`, `assump:accuracy-confidence` | Normalized Gaussian perturbation and row-sum union bounds | Direct Gaussian concentration; Schur-product Gram identity | Good-instance event `E_sm` | Objective 1: exact confidence and structural dependence | PENDING |
| `step_002` | Conditional on `E_sm`, prove the three-mode target window and competitor pair-product event with probability `Theta(r^(-5/3)(log r)^(-3/2))` per slot/target. | `step_001` | `assump:random-initialization`, `assump:accuracy-confidence`; derived `E_sm` | Correlated Gaussian coordinates and product tails | Gaussian regression, covariance comparison, product-Gaussian tail | `E_win(j,i)`, `R_0 <= 19/20`, `S_0 <= r R_0` | Objective 2: per-slot event probability | PENDING |
| `step_003` | At rank `U(r)`, derive simultaneous all-target coverage with a universal positive one-run probability. | `step_002` | `assump:subquadratic-rank`, `assump:random-initialization` | Dependence across target events and slot allocation | Coupon/negative-association bound and union bound | `E_cov` and `p_run >= p_0` | Objective 2: fixed-rank coverage | PENDING |
| `step_004` | Derive the simultaneous `R,S` recurrences, denominator invariant, numerical floor, and `O(log r)` mass decay. | `step_001`, `step_002`, `step_003` | Derived `E_sm`, `E_cov`; `Gamma`, `q_real` outputs | Exact old-state expansion and recurrence closure | Direct multilinear contraction expansion plus interval arithmetic | `E_RS`, `R_t`, `S_t` for all `t <= L_0` | Objective 3: horizon-uniform recurrence | PENDING |
| `step_005` | Convert `E_RS` into three-mode angular and last-sweep-displacement bounds below the observable thresholds. | `step_004` | Derived `E_RS`, `E_sm` | Span projection, Gram inversion, and transient export | Direct coefficient/angle inequalities | `E_ang`, `d_i <= 16 q_*` for covered slots | Objective 3: finite-horizon angle | PENDING |
| `step_006` | Prove high-score/small-displacement proposals are target-near, establish a constant component/mixture score gap, and certify one graph cluster per target. | `step_005` | Derived `E_ang`, `E_sm`; observable filter definition | Perturbative stationary-point classification | Orthogonal support classification plus direct `q`-perturbation | `E_cluster` and selected representatives | Objective 3: data-driven membership | PENDING |
| `step_007` | Bound the target-indexed representative coefficient matrix in both row and column l1 mass, and transfer best-scalar representatives to an explicit same-target quotient residual. | `step_004`, `step_006` | Derived `E_RS`, `E_cluster`, `E_sm` | Incoming cross-target leakage and `r`-uniform accumulation | Hadamard row/column inequality and small-gain recurrence | `eta <= C q_*^2`, quotient distance/residual certificate | Objective 3: joint basin bridge | PENDING |
| `step_008` | Prove the CP-Jacobian kernel is exactly componentwise scaling and export a positive quotient-Hessian margin. | `step_001`, `step_007` | Derived Khatri--Rao floor, representative bridge | Dual-basis identifiability and source convention mapping | Direct dual-basis derivation; Uschmajew Assumption 1 | `mu_quot > 0` and source hypothesis discharge | Objective 3: local regularity | PENDING |
| `step_009` | Derive a numerical local basin radius and contraction factor for active cyclic CP-ALS, and prove best-scalar initialization lies inside it. | `step_007`, `step_008` | Derived `eta`, `mu_quot`, `Gamma`, `q_real` | Existential source neighborhood to explicit current-notation bridge | Uschmajew Lemma 3.2, Theorems 3.3/3.5 plus direct normal-equation Lipschitz bounds | `varrho_ALS`, `nu < 1`, invariant basin | Objective 3 and 4: explicit regularity | PENDING |
| `step_010` | Prove geometric active CP-ALS residual contraction to arbitrary `epsilon`, with zero padding fixed and no error floor. | `step_009` | Derived basin and `nu`; `assump:accuracy-confidence` | All-sweep contraction and residual transfer | Local block-Gauss--Seidel contraction and Frobenius equivalence | `m <= C log(1/epsilon)` and final residual | Objective 4: numerical-error explicit | PENDING |
| `step_011` | Serve as the public Rate Specialization Bridge: verify the exposed smoothing/rank/horizon conditions, absorb all auxiliary terms, combine one-run success and independent restarts, and account for arithmetic costs. | `step_003`, `step_010` | `assump:subquadratic-rank`, `assump:random-initialization`, `assump:accuracy-confidence`, plus all earlier exported margins | Probability conversion, term absorption, and cost accounting | Geometric restart bound, explicit auxiliary inequalities, and direct operation counts | Final `1-delta_init` conditional theorem and polynomial runtime | Objective 2 and 4: confidence/runtime specialization | PENDING |

## Dependency Notes

The graph is acyclic: static instance controls precede the Gaussian window;
coverage precedes the simultaneous recurrence; the recurrence precedes angle,
filter, and joint coefficient outputs; those outputs precede the quotient
Hessian and explicit local basin; local contraction precedes stopping and
restart aggregation.  In particular, `step_007` is an explicit bridge rather
than an implicit assumption: it controls incoming row mass and transfers the
data-only representatives to the same target object used by the local theorem.
The source local theorem is consumed only after its assumptions and the
quantitative radius are produced.  The orthogonal/noiseless specialization is
preserved at `step_004`, `step_008`, and `step_010`, so no conservative remainder
replaces the exact baseline conclusion.

## Blockers

None.  The remaining hard claims are isolated as lemma-sized steps, with their
mechanism sources, accumulation relations, source-object mappings, and
quantitative interfaces exposed above.  In particular, the prior cyclic
first-update obstruction is removed by the simultaneous old-state update, and
the joint row/column coefficient bridge prevents the outgoing-only `S_t`
certificate from being used as an unsupported active-factor basin premise.
