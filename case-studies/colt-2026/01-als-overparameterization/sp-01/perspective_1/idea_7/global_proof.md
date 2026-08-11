# Global Proof

## Reviewed Sketch Identity

- Branch: perspective_1/idea_7.
- Sketch attempt: 1.
- Goal mode: exact-goal mode.
- Binding setting: perspective_1/idea_7/setting.md.
- Verified setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a.
- Reviewed sketch: perspective_1/idea_7/proof_sketch.md.
- Verified sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69.
- Reviewed sketch review: perspective_1/idea_7/proof_sketch_review.md.
- Verified sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e.
- Review identity check: the review names sketch attempt 1 and the same setting and sketch hashes.
- Sketch review status: ACCEPTED, with viability score 8, smallest retry target None, and retry mode none.
- Global attempt: 1 under accepted sketch attempt 1. There is no triggering global-proof review.

## Status

PARTIAL_BLOCKED

The accepted 13-step architecture is theorem-level coherent and has no
present sketch/interface or idea/theorem-contract defect. The remaining
obligations B1--B4 in steps 009--012 are nevertheless substantive local
derivations: the frozen reserve arithmetic, the exact 4096-omega landing
transfer, the current-notation cyclic contraction, and the cap/runtime
specialization. Each is classified step-local below because its mechanism
source, raw controls, output target, boundary branch, dependency path, and
same-target bridge are already fixed by the accepted sketch. This diagnostic
does not prove those obligations.

## Attempted Theorem Claim

Under assumptions assump:base-scale, assump:cumulative-gram,
assump:base-weight-balance, assump:gaussian-smoothing,
assump:smoothing-margin, assump:subquadratic-rank,
assump:random-initialization, and assump:accuracy-confidence, choose universal
constants \(C_{\rm rank},C_{\rm burn},C_{\rm cert},C_{\rm stop},C_{\rm rep}\)
so that the exact SL-SC-JEP-ALS procedure in setting.md has the following
nested guarantee.

First, with probability at least \(1-\delta_{\rm sm}\) over the once-drawn
smoothed tensor, every realized factor column has norm at least
\((2\kappa _0)^{-1}\),
\[
q_{\rm real}\le q_*,\qquad \Gamma\le 1.01,
\]
and each target Khatri--Rao Gram has smallest eigenvalue at least
\(1-q_*^2\). The proof must retain separate linear directional, quadratic,
normalization, row-sum, and finite-union contributions at the scales stated in
setting.md.

Conditional on every such fixed instance, one complete run has a universal
positive probability of covering all \(r\) targets using
\[
k=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil=o(r^2)
\]
slots. Covered slots are certified by the simultaneous old-state Jacobi
proposal, the no-label score and graph rule selects one representative per
target, and the observable equal-norm seed satisfies the exact
\(C_M^0,N_M^0,s^0\) bounds in setting.md.

All three landing designs are then frozen from that one seed. Before any
landing solve, all three normalized pair Grams, positive scale congruences,
inverse reserves, and output-normalizer reserves are derived. The three
Moore--Penrose solves are evaluated independently from the frozen input,
committed jointly, and rebalanced once. The resulting active rank-\(r\) state
lies exactly in the three target spans and satisfies
\[
d_Q(e^{\rm land},0)\le 4096\omega<\rho_{\rm ALS}/3.
\]
Literal cyclic active CP-ALS in U/V/W order, represented by chronological
\({\rm Refresh}_s\) quotient records, then reaches the original relative
Frobenius residual \(\epsilon\) before the preregistered cap on every covered
good run. Every other tape terminates by an observable failure or the cap.
With
\[
J=\max\{1,\lceil C_{\rm rep}\log(1/\delta_{\rm init})\rceil\}
\]
independent complete runs conditional on the tensor, success has probability
at least \(1-\delta_{\rm init}\), the returned representation has at most
\(k\) nonzero terms, and
\[
\left\|T-\sum_{i=1}^k\widehat x_i\otimes\widehat y_i\otimes
\widehat z_i\right\|_F\le\epsilon\|T\|_F.
\]
The total runtime has exactly the polynomial dependence declared in
setting.md and no dependence on a generated comparator, tube, reserve, or
condition number.

The claim also retains the exact orthogonal equal-weight specialization. From
an exact certified component seed, the frozen landing is the exact target
state, the rebalance and every cyclic refresh are stationary, the common
product error is zero, and the original residual is exactly zero for every
positive \(\epsilon\). This is a conditional contribution under the static
base restrictions; it is not a claim for arbitrary bases or unmodified
parallel ALS.

## Whole-Proof Draft

The draft below follows the accepted dependency order. Each displayed local
transition is an intended proof interface. Statements marked as pending local
discharge are not established evidence.

### G1. Static realized geometry (step_001)

For a base column \(\bar a_j\), expand the normalized perturbation
\[
u_j={\bar a_j+g_j^{(A)}\over\|\bar a_j+g_j^{(A)}\|_2}
\]
around \(\bar u_j\), and do the same in the other modes. The event to be
proved separates: (i) directional linear terms of order
\(\kappa _0\rho\sqrt{\log(9r^2/\delta_{\rm sm})/n}\), (ii) quadratic
directional terms of order
\(\kappa _0^2\rho^2\sqrt{\log(9r^2/\delta_{\rm sm})/n}\), and
(iii) normalization terms of order \(\kappa _0^2\rho^2\). The two inequalities
in assump:smoothing-margin, together with the base norm, Gram, and weight
margins, are intended to dominate these classes separately before the finite
union over modes and column pairs.

On the resulting event \(E_{\rm sm}\), the realized normalized Gram matrices
have diagonal one and off-diagonal absolute row mass at most \(q_*\). Hence,
for example,
\[
K_U=(V^\top V)\circ(W^\top W),\qquad
\sum_{\ell\ne j}|(K_U)_{j\ell}|
\le q(V)q(W)\le q_*^2.
\]
Gershgorin gives \(\lambda_{\min}(K_U)\ge1-q_*^2\), and identically for the
other two target Khatri--Rao Grams. The same concentration event yields the
realized norm floor and \(\Gamma\le1.01\). This is a primitive-source
derivation in the realized normalized-factor convention; the produced
\(U,V,W,D_\lambda\) are exactly the downstream targets. Its detailed
concentration and union arithmetic remains local to step_001.

### G2. One-slot extreme window (step_002)

Fix \(E_{\rm sm}\), a target \(j\), and a proposal slot. In each mode the raw
coordinate vector is a centered Gaussian with covariance equal to the
corresponding realized Gram. Regress every competing coordinate on the target
coordinate and apply the \(q_{\rm real}\) covariance control to the residual.
The target interval
\[
t_r\le |Z_{ij}^{(M)}|\le t_r+t_r^{-1},
\qquad t_r^2=a_*\log r,
\]
has, in each of the three independent modes, Gaussian mass of order
\(r^{-5/9}(\log r)^{-1/2}\). The three-mode target window therefore has scale
\(r^{-5/3}(\log r)^{-3/2}\). The regression/product-tail calculation must show
that simultaneously imposing
\[
\left|Z_{i\ell}^{(M')}Z_{i\ell}^{(M'')}\right|\le b_*\log r
\]
for every competitor and held-mode pair loses only universal factors. Thus
\[
c_{\rm win}r^{-5/3}(\log r)^{-3/2}
\le p_{\rm win}\le
C_{\rm win}r^{-5/3}(\log r)^{-3/2}.
\]
Normalization cancels from same-mode coordinate ratios, so this raw event is
a same-object entry certificate rather than a surrogate initializer.

### G3. Simultaneous all-target coverage (step_003)

Slots are independent conditional on the fixed tensor, although target events
within one slot need not be independent. Since
\[
kp_{\rm win}\asymp C_{\rm rank}\log r,
\]
the miss probability for any fixed target is at most
\(\exp(-kp_{\rm win})\). A union bound over targets and a sufficiently large
universal \(C_{\rm rank}\) give a universal positive all-target coverage
probability \(p_0\). The event \(E_{\rm cov}\) is proof-only: the actual
algorithm still uses certification, score, and graph observables rather than
target labels.

### G4. Simultaneous projective recurrence and certification (step_004)

For a covered target, the extreme window gives
\[
R_0\le {b_*\over a_*}={19\over20},\qquad S_0\le rR_0.
\]
Expanding all three contractions from the same old state, isolating the
target term, and controlling Gram leakage gives the accepted recurrences
\[
R_{t+1}\le
\left({\Gamma R_t+q_{\rm real}\over
1-\Gamma q_{\rm real}R_t}\right)^2,
\]
\[
S_{t+1}\le
{(\Gamma R_t+q_{\rm real})
\{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}\over
(1-\Gamma q_{\rm real}R_t)^2}.
\]
The local proof must first establish an invariant interval containing
\((R_0,S_0)\), preserve \(\Gamma R_t<1\), check
\(1-\Gamma q_{\rm real}R_t>0\) before every division, and only then extract
the scalar contraction. This noncircular induction supplies
denominator persistence, finite chart membership, and geometric decay through
the \(O(\log r)\) burn/certification horizon. Ratio decay is then converted to
the algorithm's Euclidean projective residual \(\zeta\), yielding a stored old
state with \(\zeta\le\tau_r\). A zero contraction or denominator is an
observable failed run, not an assumption violation. At \(q_{\rm real}=0\),
ratios square and an exact component is stationary.

### G5. Same-state certificate equation and global ledger (step_005)

For every stored state, choose the certificate signs on the right side of the
three simultaneous equations. Multiplying the normalized residual by the
corresponding contraction norm gives, before any score filtering,
\[
P_M^{\rm raw}D_M
=G_MK_M^{\rm raw}\Sigma_M+\mathcal R_M^{\rm raw},\qquad
\|\mathcal R_M^{\rm raw}(:,a)\|_2\le d_{M,a}\tau_r.
\]
The product-one orientation converts this to the exact selected-state
bookkeeping form
\[
P_MD_M=G_MK_M+\mathcal R_M.
\]
Projecting with the true-factor Gram/dual coordinates separates target
coefficient, two first-order Gram leaks, their cross term, scalar
normalization, and the finite certificate residual. The intended cancellation
removes the scalar first-order term, while the remaining
\(\sqrt r\,\tau_r\) charge is retained. This produces \(E_{\rm cert\_eq}\) and
the all-certified weighted tail ledger before a target label, selected
representative, or landing output exists.

### G6. Observable support, score, clustering, and gauge (step_006)

Keep \(D_\lambda\) in the ledger. The selected proof must compare the positive
singleton score lower bound against every multi-support upper bound, including
the \(\Gamma-1\) imbalance, threshold-straddling cases, and certificate tails.
The strict gap must imply that the observable \(0.85\sigma_{\max}\) filter
retains the target representatives and excludes incompatible mixtures.
Modewise inner-product separation at threshold \(1-64q_*\) then yields exactly
\(r\) connected components. Choosing the minimum-\(\zeta\) representative
inside each component and applying a proof-only permutation and product-one
sign gauge changes no represented rank-one term. The output is
\(E_{\rm support},E_{\rm cluster},E_{\rm gauge}\), with one representative per
realized target and no label in the procedure.

### G7. Selected coefficient and two-orientation closure (step_007)

Apply the target dual bases to the selected same-state equation. The diagonal
target coefficient supplies the positive denominator; off-diagonal Gram
leakage, coefficient error, and projected certificate residuals are opposing
terms. The required local argument has the form of a small-root inequality
for the column mass,
\[
x_{\rm col}\le a(q_*^2+r\tau_r)+bq_*x_{\rm col}
+c x_{\rm col}^2,
\]
with constants fixed by the exact coefficient equation. The branch selected
by the exact-component boundary is the small root. Each projected residual
entry must be bounded by \(2\tau_r\) before summing, so the row and column
orientations incur one \(r\tau_r\) charge, not \(r^2\tau_r\). Substitution and
fixed-margin absorption give \(E_{\rm col},E_{\rm row\_residual},E_{\rm row}\)
at scale
\[
\omega=q_*^2+r\tau_r.
\]
No landing or cyclic condition is used in this closure.

### G8. Observable balanced seed and same-target bridge (step_008)

For the chosen representatives form the observable best-scalar seed from
\(\theta_a=\langle T,p_a\otimes q_a\otimes s_a\rangle\). The score and
coefficient floors exclude \(\theta_a=0\) on the successful path; a zero value
is an observable failure elsewhere. The product-one gauge and orthogonal
projection onto the realized target spans give exactly
\[
P_M^0=G_M(I+C_M^0)+N_M^0,\qquad G_M^\top N_M^0=0.
\]
The two-orientation output of G7, the perpendicular certificate residual, and
the relative cube-root amplitude map must establish
\[
\|C_M^0\|_{\rm row,1}\vee\|C_M^0\|_{\rm col,1}\le48\omega,\quad
\max_j\|N_M^0(:,j)\|_2\le\tau_r,\quad
\|s^0\|_\infty\le128\omega.
\]
Because each active seed column has the common observable norm
\(|\theta_j|^{1/3}\), this same-target transfer also gives the exact positive
scale identity
\[
D_U^0=D_V^0=D_W^0=D_\lambda^{1/3}E^0,\qquad
E^0=\operatorname{diag}(e^{s_j^0/3}).
\]
The object produced here is exactly the seed used in every landing design.
There is no transformed or reference seed requiring an additional bridge.

### G9. Flat all-three pre-call reserve certificate (step_009)

Freeze \(X^0,Y^0,Z^0\) once. For each mode introduce the proof-local cross
Gram \(L_M^{\rm cross}\) (distinct from the scale diagonal \(L_M^0\) in
setting.md) and set
\[
A_M=G_M^\top G_M,\quad L_M^{\rm cross}=G_M^\top P_M^0,\quad
F_M^0=(P_M^0)^\top P_M^0.
\]
Writing \(c_0=48\omega\), orthogonality of \(N_M^0\) gives the exact expansions
\[
L_M^{\rm cross}=A_M(I+C_M^0),
\]
\[
F_M^0=(I+C_M^0)^\top A_M(I+C_M^0)+(N_M^0)^\top N_M^0.
\]
Consequently both induced orientations have the raw bounds
\[
\|L_M^{\rm cross}-A_M\|_{\rm rc}\le(1+q_*)c_0=\delta_L,
\]
\[
\|F_M^0-A_M\|_{\rm rc}
\le2(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2=\delta_F,
\]
\[
\|F_M^0-L_M^{\rm cross}\|_{\rm rc}
\le(1+q_*)c_0+(1+q_*)c_0^2+r\tau_r^2=\delta_{FL},
\]
where \(\|\cdot\|_{\rm rc}\) denotes the maximum of row- and column-induced
\(\ell_1\) norms. These formulas identify every direction, quadratic, and
perpendicular defect before export.

For each output mode, form from the two held modes
\[
J_M^0=F_{M'}^0\circ F_{M''}^0,\qquad
Q_M^0=L_{M'}^{\rm cross}\circ L_{M''}^{\rm cross}.
\]
Unit diagonals and the Hadamard row/column inequalities yield
\[
\|J_M^0-I\|_{\rm rc}\le\eta_J=\alpha_0^2,\qquad
\alpha_0=q_*+\delta_F.
\]
The direct paired expansion, performed before either matrix is inverted, must
give
\[
\|Q_M^0-J_M^0\|_{\rm rc}
\le2\delta_{FL}+\delta_L^2+\delta_F^2=\eta_{QJ}.
\]
Thus
\[
\|(J_M^0)^{-1}\|_{\rm rc}\le{1\over1-\eta_J},\qquad
\|Q_M^0(J_M^0)^{-1}-I\|_{\rm rc}\le
\eta_A:={\eta_{QJ}\over1-\eta_J}.
\]

Crucially, the actual designs are not normalized surrogates. The exact seed
scales give, simultaneously and before any solve,
\[
(H_M^0)^\top H_M^0
=D_{-M}^0J_M^0D_{-M}^0,\qquad
D_{-M}^0=D_\lambda^{2/3}(E^0)^2\succ0.
\]
Diagonal similarity by \(D_\lambda\) costs only the generated
\(\Gamma\le1.01\), so the intended reserve is
\[
\left\|D_\lambda Q_M^0(J_M^0)^{-1}D_\lambda^{-1}-I
\right\|_{\rm rc}
\le\Gamma\eta_A\le128\omega<1/64.
\]
With
\[
\ell_{M,j}^0=\lambda_j^{1/3}e^{-2s_j^0/3}>0,
\]
this already certifies, for all three not-yet-evaluated outputs,
\[
(1-\Gamma\eta_A)\ell_{M,j}^0
\le\widetilde d_{M,j}
\le(1+\Gamma\eta_A)\ell_{M,j}^0.
\]
Every \(J_M^0\), \(D_{-M}^0\), inverse reserve, and normalizer reserve is
therefore an independent child of the same frozen seed. No U output can alter
the V design, and no V output can alter the W design.

The numerical interface is nonvacuous:
\(\omega=q_*^2(1+10^{-4})\approx5.96106\cdot10^{-8}\);
at the worst \(r\tau_r^2\) boundary \(r=3\),
\(\eta_J\approx6.24323\cdot10^{-8}\),
\(\Gamma\eta_A\approx5.78131\cdot10^{-6}<128\omega
\approx7.63016\cdot10^{-6}\).
Turning these diagnostic expansions into exact two-orientation inequalities
with the stated constants is B1, pending and step-local.

### G10. Three independent solves, joint commit, exact range, and rebalance (step_010)

The three frozen designs are
\[
H_U^0=Z^0\odot Y^0,\quad H_V^0=Z^0\odot X^0,\quad
H_W^0=Y^0\odot X^0.
\]
On every tape the algorithm evaluates the three Moore--Penrose formulas from
this fixed triple. Independently of invertibility,
\[
\operatorname{range}\!\left(
T_{(M)}H_M^0((H_M^0)^\top H_M^0)^\dagger\right)
\subseteq\operatorname{range}(T_{(M)})
\subseteq\operatorname{range}(G_M).
\]
On \(E_{\rm land\_pre}\), G9 makes each design full column rank, so the
pseudoinverse output equals the ordinary-inverse output and exact unfolding
algebra gives
\[
\widetilde X_M=G_M\widetilde B_M,\qquad
\widetilde B_M=
D_\lambda Q_M^0(J_M^0)^{-1}(D_{-M}^0)^{-1}.
\]
The pre-call normalizer bounds are strictly positive. Hence all three outputs
can be computed independently, and only after all three computations are
complete are they committed together.

The coefficient similarity bound from G9 must next be transferred to each
normalized direction and to the three represented products. Since every
committed column is already in the exact target span, all perpendicular fields
are exactly zero. The one canonical positive-norm rebalance preserves each
\(\widetilde x_j\otimes\widetilde y_j\otimes\widetilde z_j\) exactly; it is a
representation change of the committed state, not another ALS call. The local
landing proof must combine the three \(O(\omega)\) coefficient and logarithmic
scale errors to obtain
\[
d_Q(e^{\rm land},0)\le4096\omega.
\]
Here
\[
4096\omega\approx0.000244165
< {1\over3072}={\rho_{\rm ALS}\over3}\approx0.000325521.
\]
This exact same-target transfer, including the constant 4096, is B2 and is
pending step-local work. A singular tape retains the exact range statement but
does not receive a basin claim; a zero output norm is an observable failed
run.

### G11. Literal cyclic ALS and chronological Refresh_s contraction (step_011)

Begin only from the completed, jointly rebalanced \(e^{\rm land}\). On the
exact target spans a literal mode solve again has a current-notation
coefficient formula of the form
\[
B_M^+=D_\lambda Q_M(e)(J_M(e))^{-1}D_{-M}(e)^{-1},
\]
where both held inputs are the literal current factors. Positive
componentwise scale equivariance allows each output to be represented in the
product-one quotient without changing the literal rank-one products.

The chronology is binding:
\[
e^t\longmapsto e_U=(C_U^+,C_V^t,C_W^t,s_U^+)
\longmapsto e_V=(C_U^+,C_V^+,C_W^t,s_V^+)
\longmapsto e_W=(C_U^+,C_V^+,C_W^+,s_W^+).
\]
After each solve, \({\rm Refresh}_s\) overwrites the one global common-product
register before the next solve. Thus the V block consumes new U and old W,
and the W block consumes new U and V. These records must be proved
quotient-equivalent to the literal post-block ALS factors. They are not
comparisons with a stale predecessor.

Exact unfolding range preserves target-span membership after U, then after V,
then after W. Inside \(d_Q(e,0)\le\rho_{\rm ALS}\), the target Khatri--Rao
floor and direct inverse perturbation are intended to give the full-sweep
estimate
\[
d_Q(\Psi^q(e),0)\le\ell\,d_Q(e,0),\qquad
\ell\le8q_*+32\rho_{\rm ALS}={17\over512}< {1\over16}.
\]
There is no additive forcing. Therefore the entry below
\(\rho_{\rm ALS}/3\) stays in the chart, and the potential
\(V_t=d_Q(e^t,0)\) obeys
\[
V_{t+1}\le\ell V_t,\qquad
V_t-V_{t+1}\ge(1-\ell)V_t,\qquad
\sum_{t\ge0}V_t\le{V_0\over1-\ell}.
\]
This is the concrete all-sweep accumulation mechanism and is noncircular
because G10 produces the entry before the tube is consumed. Deriving scale
equivariance, the exact refresh identity, the block inequalities, and the
stated chronological composition is B3, pending step-local work. The
Uschmajew source supplies only qualitative quotient/block-Gauss--Seidel
interpretation, not this radius or constant.

### G12. Original-residual stopping, cap, restarts, and runtime (step_012)

On the covered path, the balanced exact-span tensor expansion must convert the
same-target quotient error to the original stopping metric, with an intended
universal chart constant \(C_{\rm res}\):
\[
{\|T-\widehat T(e^m)\|_F\over\|T\|_F}
\le C_{\rm res}\kappa_0^2\,d_Q(e^m,0)
\le C_{\rm res}\kappa_0^2\ell^m d_Q(e^{\rm land},0).
\]
The universal constant and its displayed \(\kappa_0\) dependence must be
proved in step_012; neither is hidden in the quotient metric. A sufficiently large
universal \(C_{\rm stop}\) in
\[
m_{\rm cap}=
\left\lceil C_{\rm stop}\log(8\kappa_0^2/\epsilon)\right\rceil
\]
then makes the cap nonbinding on every covered good run.

The cap has a separate role on arbitrary tapes. Proposal failure, no
certificate, the wrong number of clusters, a zero active norm, a singular
quantitative branch, or a nonhitting cyclic orbit ends in observable failure
after finite preregistered work. Basin membership is never asserted on this
branch. Hence a complete run is a finite Bernoulli trial with success
probability at least \(p_0\) on \(E_{\rm sm}\). Conditional independence of
the full proposal tapes gives
\[
\Pr(\hbox{all }J\hbox{ runs fail}\mid E_{\rm sm})
\le(1-p_0)^J\le\delta_{\rm init}
\]
after choosing universal \(C_{\rm rep}\).

The operation count must include all \(kL_{\rm prop}\) proposal contractions,
certification and score work, graph clustering, three frozen rank-\(r\)
least-squares solves, one rebalance, at most \(m_{\rm cap}\) cyclic sweeps per
run, failed tapes, and exactly \(J\) runs. Because \(k,\kappa_0,\rho^{-1}\)
are polynomial in \(r\) under the primitive regime, this yields the stated
polynomial specialization. The original-residual bridge, cap arithmetic,
dense cost, and restart specialization form B4, pending step-local work.

### G13. Exact orthogonal equal-weight baseline (step_013)

At an exact certified component seed in the orthogonal equal-weight
specialization,
\[
C_M^0=N_M^0=0,\qquad s^0=0,\qquad
F_M^0=J_M^0=Q_M^0=I.
\]
The positive scale congruences are exact. Each frozen ordinary-inverse formula
returns the corresponding balanced target factors; all three are committed
together and the canonical rebalance is quotient-identical. The first cyclic
U update, then V and W, returns the same state, and every refreshed common
product register remains zero. Thus \(\widehat T=T\) and the original
Frobenius residual is exactly zero. This direct stationary trace preserves the
baseline conclusion itself, not only the vanishing of perturbation bounds.
The deterministic \(\rho=0\) specialization is a baseline check and does not
replace the positive-\(\rho\) main-theorem assumptions.

### Assembly

G1 produces a once-drawn event with probability \(1-\delta_{\rm sm}\).
Conditional on that event, G2--G4 give a universal positive covered-run event;
G5--G8 turn its stored states into the actual observable frozen seed; G9
certifies every landing input and reserve before any solve; G10 produces one
joint exact-span entry; G11 contracts the literal cyclic orbit; and G12
converts that orbit to the original residual, finite work, and conditional
restart confidence \(1-\delta_{\rm init}\). Zero-padding leaves at most
\(k\) nonzero terms. G13 supplies the terminal exact baseline clause.
Composition is therefore theorem-level closed under the accepted interfaces,
but it is not yet a proof because B1--B4 and the other local step derivations
have not been independently proved and reviewed.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1 Static geometry | Once-drawn realized norm, Gram, weight, and pair-floor event | step_001 | None | base-scale, cumulative-gram, base-weight-balance, gaussian-smoothing, smoothing-margin | Concentration constants and finite-union arithmetic |
| G2 Window | Per-slot activation probability and ratio entry | step_002 | G1 | random-initialization; derived E_sm | Correlated regression and competitor product-tail constants |
| G3 Coverage | Universal positive one-run all-target coverage | step_003 | G2 | subquadratic-rank, random-initialization | Coupon constants without target-independence assumption |
| G4 Certification | Denominator persistence, R/S contraction, stored zeta state | step_004 | G1, G3 | derived E_sm, E_cov | Invariant interval, first update, zeta conversion |
| G5 Certificate ledger | Pre-cluster same-state equation and weighted tails | step_005 | G4, G1 | derived E_cert, E_sm | Scalar cancellation and residual budgets |
| G6 Selection | No-label score separation, r clusters, gauge | step_006 | G5, G1 | derived certificate ledger and E_sm | Explicit score/graph separation arithmetic |
| G7 Two-orientation closure | Selected coefficient row/column controls | step_007 | G5, G6, G1 | derived certificate, support, clusters | Small-root selection and one-time r-tau charge |
| G8 Seed bridge | Actual balanced seed, C/N/s fields, exact scales | step_008 | G6, G7, G1 | derived gauge and row closure; base-weight-balance | Cube-root and best-scalar transfer constants |
| G9 Frozen reserve | All-three pre-call Gram, inverse, scale, normalizer reserves | step_009 | G1, G8 | derived E_sm, E_seed | B1: exact two-orientation delta/eta arithmetic |
| G10 Joint landing | Independent frozen solves, joint exact span, one rebalance | step_010 | G9, G8 | derived E_land_pre, E_seed | B2: same-target 4096-omega quotient bridge |
| G11 Cyclic phase | Literal Refresh_s chronology, invariant, full-sweep contraction | step_011 | G10, G1 | derived E_land, E_sm; base-scale | B3: direct numerical normal-equation composition |
| G12 Closure | Original residual, cap, runtime, restart confidence | step_012 | G3, G11 | random-initialization, accuracy-confidence; E_cov, E_basin | B4: residual/cap/cost/restart arithmetic |
| G13 Baseline | Exact orthogonal equal-weight fixed point | step_013 | G8, G10, G11, G12 | deterministic exact specialization of derived interfaces | Direct equality trace must be formalized locally |
| Final assembly | Nested probability, rank, error, runtime, baseline | Assembly role | G1--G13 | All eight primitive assumptions only | Cannot be final proof until every required step is accepted |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | G1 | Root producer | Gaussian norm/directional lemmas; normalization expansion; Gram/weight union; Schur/Gershgorin floor | Same realized target, finite static scope |
| step_002 | G2 | Consumes step_001 | Target-window two-sided tail; Gaussian regression; competitor pair-tail lemma | Raw Gaussian convention; normalization cancels |
| step_003 | G3 | Consumes step_002 | Slot miss bound; target union; universal p0 choice | No target-independence claim |
| step_004 | G4 | Consumes steps 001,003 | Exact simultaneous recurrence; invariant interval; denominator induction; zeta bridge | Stored state, not look-ahead state |
| step_005 | G5 | Consumes step_004 | Signed equation lemma; projected residual lemma; scalar cancellation; weighted tail proposition | Must precede selection |
| step_006 | G6 | Consumes step_005 | Weighted singleton/multi-support separation; graph component lemma; product-one gauge | Fully observable rule |
| step_007 | G7 | Consumes steps 005,006 | Dual-coordinate equation; small-root lemma; per-entry residual; row/column absorption | Avoid r-squared tau loss |
| step_008 | G8 | Consumes steps 006,007 | Best-scalar amplitude lemma; orthogonal decomposition; C/N/s transfer; scale identity | Actual seed used by every landing design |
| step_009 | G9 | Consumes steps 001,008 | B1 units: raw F/L expansions; paired Q-J lemma; both-norm Neumann lemma; numerical reserve/normalizer proposition | Step-local; all modes before all calls |
| step_010 | G10 | Consumes step_009 | B2 units: frozen coefficient identity; range lemma; positive-normalizer lemma; joint product/log transfer; one-rebalance 4096 proposition | Step-local; no inter-mode output edge |
| step_011 | G11 | Consumes step_010 | B3 units: scale-equivariance lemma; Refresh_s literal-orbit lemma; block perturbation estimates; chronological contraction/invariant proposition | Step-local with direct current-notation source |
| step_012 | G12 and assembly | Consumes steps 003,011 | B4 units: quotient-to-original-residual lemma; cap threshold; arbitrary-tape termination; dense cost; restart product | Step-local; failed tapes do not consume E_basin |
| step_013 | G13 and assembly | Consumes steps 008,010,011,012 | Identity-Gram substitution; first landing trace; all-refresh stationary induction; zero residual | Preserves exact baseline, not O(omega) surrogate |

## Dependency And Assumption Audit

| Condition | Provenance classification | Producer or source | First theorem-level consumer | Audit |
| --------- | ------------------------- | ------------------ | ---------------------------- | ----- |
| assump:base-scale | Primitive condition | setting.md | G1; later G11/G12 quantitative conversion | Pre-run base norm and polynomial-scale condition; not generated |
| assump:cumulative-gram | Primitive condition | setting.md | G1 | Static normalized base Gram bound; no realized Gram is assumed |
| assump:base-weight-balance | Primitive condition | setting.md | G1 and G8 | Static base weights only; realized Gamma and seed scale are derived |
| assump:gaussian-smoothing | Primitive condition | setting.md | G1 | Fixes independent perturbation law and exact covariance convention |
| assump:smoothing-margin | Primitive condition | setting.md | G1 | Two checkable scalar inequalities; no good event is hidden inside |
| assump:subquadratic-rank | Primitive condition | setting.md | G3 and rank assembly | Fixes k, r less than k at most n, and strict subquadratic regime |
| assump:random-initialization | Primitive condition | setting.md | G2, G3, G12 | Conditional independence of raw slot and full-run tapes |
| assump:accuracy-confidence | Primitive condition | setting.md | G12 and assembly | Fixes epsilon and the two separate confidence parameters |
| E_sm | Derived invariant/event | G1 / step_001 | G2, G4, G6, G9, G11, final instance clause | Produced from five primitive assumptions before proposal randomness |
| E_win, E_cov, p0 | Derived event/control | G2--G3 / steps 002--003 | G4 and G12 | Conditional on E_sm; labels are proof-only and not theorem assumptions |
| E_RS, E_chart, E_chart_l1, E_cert | Derived trajectory controls | G4 / step_004 | G5 | Recurrence proves denominator and membership before use |
| E_cert_eq, E_cert_tail | Derived algebraic controls | G5 / step_005 | G6--G7 | Same stored state; produced before selection |
| E_support, E_cluster, E_gauge | Derived structural controls | G6 / step_006 | G7--G8 | Observable classifier output; gauge preserves represented terms |
| E_col, E_row_residual, E_row | Derived coefficient controls | G7 / step_007 | G8 | No landing tube is assumed |
| E_seed | Derived entry object/control | G8 / step_008 | G9 and baseline trace | Actual observable frozen seed; positive scale follows from nonzero theta |
| E_land_pre | Derived generated reserve | G9 / step_009 | G10 | Every mode record is produced before every landing call |
| E_land, e_land | Derived membership/entry state | G10 / step_010 | G11--G12 | Joint exact-span state; no modewise predecessor object |
| E_basin, Psi_q | Derived invariant/recurrence | G11 / step_011 | G12 | Generated only after exact-span entry; not an admissibility assumption |
| E_stop, E_run_cap, E_restart | Derived closure controls | G12 / step_012 | Final assembly | Success path and arbitrary-tape cap path remain distinct |
| E_baseline | Derived specialization | G13 / step_013 | Final baseline clause | Direct exact equality, not a primitive rho-zero event |

Conditional hypotheses occur only inside local lemmas: the G4 recurrence is
conditioned on its previously proved denominator, the ordinary-inverse part of
G10 is conditioned on E_land_pre, and the G11 contraction is conditioned on
the entry/tube that G10 and the preceding induction produce. Each has a legal
producer before final use. No missing derived-condition bridge or dependency
cycle is visible under the accepted sketch.

## Citation And Tool Audit

| Source or tool | Current-branch objects and exact convention | Assumptions or checks to discharge | Conclusion needed and non-output boundary | Affected block / Step ID | Audit status |
| -------------- | ------------------------------------------- | ---------------------------------- | ----------------------------------------- | ------------------------ | ------------ |
| Guarantees for Alternating Least Squares in Overparameterized Tensor Decompositions, NeurIPS 2025, official proceedings locator https://proceedings.neurips.cc/paper_files/paper/2025/hash/70791f20a907b7f7cb2ad8ade32486b2-Abstract-Conference.html | Literal tensor unfoldings, frozen Khatri--Rao designs, Moore--Penrose Jacobi update | The source algorithm and theorem contract differ; no labeled theorem is imported | Algorithmic/proof-pattern provenance only. The displayed pseudoinverse formula and range inclusion are rederived directly. It supplies no seed bound, reserve, 4096 constant, or cyclic contraction | G9--G10 / steps 009--010 | Convention compatible as provenance; not consumed as proof authority |
| Andre Uschmajew, Local Convergence of the Alternating Least Squares Algorithm for Canonical Tensor Approximation, SIAM J. Matrix Anal. Appl. 2012, DOI 10.1137/110843587, Assumption 1, Lemma 3.2, Theorems 3.3 and 3.5 | Active rank-r CP factors modulo positive product-one component scalings; exact cyclic U/V/W block order | Map the nonzero active chart, quotient out the scaling kernel, and verify local nondegeneracy in current objects | Qualitative quotient and block-Gauss--Seidel interpretation only. It does not output rho_ALS, target-span entry, Refresh_s identity, numerical ell, stopping, or cap | G11 / step_011 | Stable identity and non-output boundary fixed; numerical work remains a direct local derivation |
| Normalized Gaussian norm and directional concentration | Realized columns bar a plus isotropic N(0,rho-squared I/n), then Euclidean normalization | Base norm floor, covariance, finite union, and separate linear/quadratic/normalization budgets | E_sm norm and normalized Gram controls | G1 / step_001 | Current convention fixed; constants pending local proof |
| Gaussian regression and product-tail comparison | Raw N(0,I_n) slot coordinates with covariance G_M transpose G_M | E_sm covariance row mass, target interval, all competitor pair events | Two-sided p_win at the declared scale | G2 / step_002 | Same raw-coordinate convention; constants pending |
| Schur product and Gershgorin | Exact target Khatri--Rao Gram equals the Hadamard product of two realized Grams | Unit diagonals and off-diagonal pair row mass at most q_* squared | Spectral floor 1-q_* squared | G1 / step_001 | Direct same-object standard tools |
| Binomial miss and union bounds | Conditional independent slots and independent completed full runs | Per-target p_win, no target-independence assumption, completed-run p0 | E_cov and restart failure product | G3, G12 / steps 003,012 | Probability modes and conditionings match |
| Exact multilinearity, target dual algebra, Cauchy--Schwarz, induced Hadamard inequalities | Same stored proposal state and realized normalized factors | Nonzero produced target coefficient; Gram inverse from E_sm; retained residual terms | R/S recurrence, certificate ledger, support, and row/column closure | G4--G8 / steps 004--008 | Direct current-notation path; no external theorem output |
| Neumann series in row- and column-induced l1 norms | J_M^0 with norm(J-I) at most eta_J in both orientations | B1 must prove eta_J less than one before invocation | Both inverse reserves and QJ inverse transfer | G9 / step_009 | Exact setting convention; invocation pending B1 |
| Exact CP unfolding and Moore--Penrose range identity | Active rank-r designs plus k-r frozen zero columns | Ordinary inverse only on E_land_pre; Moore--Penrose defined on every tape | Independent frozen output formula and exact range(G_M) containment | G10 / step_010 | Same target and algorithm; singular boundary explicitly separated |
| Positive equal-norm rebalance and block scale equivariance | Nonzero active columns, product-one component scalings, one common product register | G9 normalizer floor on success; observable failure otherwise | Product preservation, same quotient target, literal Refresh_s orbit | G10--G11 / steps 010--011 | Direct algebra; B2/B3 local discharge pending |
| Geometric recurrence and dense operation counting | Original relative Frobenius test, finite proposal/landing/cyclic procedure | B4 residual bridge, fixed cap, finite pseudoinverse computation, independent restarts | Accuracy, finite work, polynomial runtime, confidence | G12 / step_012 | Syntactic/probabilistic direct derivation pending B4 |

No external source is asked to prove a theorem-specific numerical margin. In
particular, the produced landing object and the consumed cyclic target are the
same realized target-span object, so neither citation needs a transformed,
whitened, weighted, or reference-operator bridge.

## Quantitative Dependence Audit

| Objective | Exposed variables and fixed quantities | Probability / horizon / norm mode | Allowed hidden dependence | Required bridge and audit result |
| --------- | -------------------------------------- | --------------------------------- | ------------------------- | -------------------------------- |
| Smoothed geometry | n, r, kappa_0, rho, delta_sm, fixed d_kappa,d_rho; q_*,a_*,b_* fixed | One static high-probability event; Euclidean norms, induced Gram mass, spectral floor | Universal Gaussian constants and declared finite exponents only | Linear, quadratic, normalization, row-sum, and union terms stay separate in G1 |
| Window/certification | r,k,t_r,tau_r,L_burn,L_cert,q_real,Gamma | Conditional fixed proposal horizon; ratio, l1 pair mass, Euclidean zeta | Universal Gaussian/coupon constants only | p_win, k p_win, denominator induction, and finite zeta bridge are localized to G2--G4 |
| Seed/landing | r,n,k,kappa_0,rho inverse,q_*,tau_r,omega; c0,rho_ALS and all delta/eta definitions fixed | Deterministic on generated events; one frozen transaction; induced l1, column l2, d_Q | Universal numerical choices and declared polynomial base-scale regime | Both orientations, exact scales, normalizer floors, exact range, and 4096 bridge retained in G8--G10 |
| Cyclic/stopping | rho_ALS,epsilon,kappa_0,m_cap,ell | Horizon-uniform after generated entry but stopped at finite cap; d_Q then original relative Frobenius norm | q_*, fixed chart constants, direct normal-equation constants | No additive floor; literal chronology and quotient-to-original metric bridge retained in G11--G12 |
| Restart/runtime | n,r,k,kappa_0,rho inverse,epsilon,delta_init; J fixed as declared | Conditional independent completed runs; finite horizon per run | Implementation constants and fixed polynomial exponents | p0, failure product, arbitrary-tape finite cost, and nested probability retained |

The hidden constants may not depend on the base triple, epsilon or confidence
parameters except where displayed, a generated condition number, comparator,
tube, reserve, post-solve scale, or chronological predecessor. The probability
order is
\[
\Pr_{\rm smoothing}(E_{\rm sm})\ge1-\delta_{\rm sm},\qquad
\Pr_{\rm runs}(\hbox{success}\mid T,E_{\rm sm})\ge1-\delta_{\rm init}.
\]
No unconditional multiplication or merging of the two confidence parameters
is used.

Useful fixed arithmetic checks are
\[
\omega=q_*^2(1+10^{-4}),\qquad
4096\omega=q_*(1+10^{-4})<\rho_{\rm ALS}/3,
\]
\[
8q_*+32\rho_{\rm ALS}=17/512<1/16.
\]
These checks support interface plausibility but do not replace the exact B1--B4
proofs. The public rank remains strictly subquadratic, and the runtime
specialization may use only the primitive polynomial bounds on
\(k,\kappa_0,\rho^{-1}\).

The baseline-reduction obligation is preserved exactly: at the orthogonal
equal-weight exact-component entry, the first landing transition and every
later refresh are stationary and the original residual equals zero. Neither
\(\tau_r\), \(\omega\), nor a stopped finite-error conclusion is substituted
for that equality.

## Scope And Closure Certificate

In the table, rc denotes the maximum of the row- and column-induced
\(\ell_1\) norms. Every unresolved obligation is classified step-local under
the accepted interface. A later failed local derivation would be new evidence;
it is not silently repaired here.

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| E_sm | Static norm, conditioning, structural lower floor | Once before proposal randomness | Separate linear, quadratic, normalization bounds; pair row mass at most q_* squared | Base norm floor, base Gram slack, base weight balance | Directional, quadratic, normalization, finite-union tails | One finite union; no repeated forcing | Structural lower/upper comparison | Five primitive geometry/smoothing assumptions; rho tending to zero and orthogonal bases allowed | Positive base margins supply lower/conditioning content, not merely upper smallness | Produced realized factors are exactly consumed; zero transfer residual | step-local | Primitive assumptions produce E_sm before every consumer | Orthogonal boundary gives exact Gram identities; columns retain primitive norm floor | Each defect is dominated by its smoothing margin before summing | base-scale, cumulative-gram, weight-balance, smoothing law/margin | None before E_sm | Without norm/Gram margins pair floors can vanish | Illegal downstream inverses and proposal geometry |
| E_win,E_cov | Probabilistic activation and coverage | Finite k slots in one run | p_win comparable to r to the minus 5/3 log to the minus 3/2; target miss at most exp(-k p_win) | Three target-coordinate interval masses and k independent slots | Correlated competitor products and target union | Finite slot/target union; no cross-target independence used | Reserve/ledger under declared finite scope | E_sm plus primitive raw Gaussian tapes; zero/no-window tape is failure | Positive Gaussian interval mass supplies support; k supplies coupon budget | Labels are proof-only; normalized ratio state is the observable slot | step-local | E_sm then G2 then G3 before G4/G12 | Window precedes first Jacobi update and gives R0 at most 19/20 | Choose C_rank so k p_win dominates log r | random-initialization, rank | E_sm,p_win | No coverage is an unsuccessful completed run | Restart confidence has no positive one-run source |
| E_RS,E_chart,E_cert | Generated denominator, recurrence, finite certification | Every commit through L_prop | Displayed R/S recurrences with Gamma R below one and denominator 1-Gamma q R | Target contraction coordinate and invariant interval from R0 | Off-target pair products and l1 pair mass | Current defects are absorbed by each recurrence over O(log r); finite horizon | Self-contraction plus reserve/ledger | E_sm,E_cov; zero denominator/contraction excluded by observable failure | Target coordinate is a genuine positive denominator on the covered branch | zeta is the algorithm's own residual; stored old state is exported | step-local | Recurrence proves Gamma R below one and the denominator before their next use | First update starts at R0 at most 19/20, S0 at most rR0; exact component fixed | Invariant interval implies Gamma R below one, positive denominator, and geometric decay to tau_r | rank and procedure constants | E_sm,E_cov | Vanishing denominator sets R,S to infinity and fails | Circular certification or invalid division |
| E_cert_eq,E_cert_tail | Same-state algebraic producer and classifier ledger | One finite stored state per slot | P_M D_M equals G_M K_M plus R_M; column residual at most d tau_r | Retained target coefficient and exact contraction norm | Gram leaks, scalar normalization, certificate residual | One charge per stored state; no cyclic accumulation | Algebraic coupling and finite ledger | E_cert,E_sm; zero score remains rejectable | Positive coefficient floor matches signed equation claim | Gauge changes signs only and preserves rank-one terms | step-local | Equation is produced before score or selection | Exact component has zero residual; transient residual is retained | Scalar cancellation plus explicit residual budgets | Proposal/certificate procedure | E_cert,E_sm | Zero/low score is filtered, not assumed positive | Classifier could be self-generated or unsupported |
| E_support,E_cluster,E_gauge | Positive support separation and observable matching | Finite certified pool | Singleton lower bound exceeds multi-support upper bound at fixed filter and graph margins | Singleton target score and Gamma at most 1.01 | Weighted tails, imbalance, threshold straddling, ties | Finite graph; each defect charged once | Structural lower/upper comparison | E_cert ledger and E_sm; no-label low-score branch fails | A positive singleton lower source supplies the required support content | Permutation/sign gauge maps actual representatives to actual realized targets | step-local | Ledger precedes classifier; classifier precedes selected equations | Exact components are isolated vertices; ties use observable rule | 0.85 score gap dominates tails; 1-64q_* separates clusters | Fixed thresholds | E_cert_eq,E_cert_tail,E_sm | Wrong cluster count is observable failure | Fewer/more than r clusters and no target matching |
| E_col,E_row | Two-orientation selected coefficient closure | One selected state per target | Small-root column inequality; projected residual entries at most 2 tau_r | Positive diagonal target coefficient | Gram leakage, scalar error, per-entry residual | One r tau_r charge; no r-squared or repeated charge | Self-contraction and local absorption | E_support,E_cluster,E_cert_eq,E_sm; zero denominator excluded upstream | Diagonal coefficient supplies actual inversion/support source | Same selected state and realized dual target; no surrogate | step-local | Selected equation exists before closure and seed construction | Exact component selects zero small root | q_* margin absorbs linear/quadratic terms and yields O(omega) both ways | q_* and tau_r definitions | Certificate and support outputs | If denominator vanished upstream gate fails | Frozen pair-Gram reserves lack row/column input |
| E_seed | Same-target balanced entry object | One seed construction | P equals G(I+C)+N; G transpose N zero; C rc at most 48 omega, N columns at most tau_r, s infinity at most 128 omega | Score/coordinate floor and positive observable theta | Coefficient leakage, perpendicular residual, log-scale error | One cube-root transfer; no iteration | Algebraic coupling and structural comparison | E_row,E_gauge,E_sm; theta zero is observable failure | Positive target score supports nonzero scale and logarithm | Produced seed is exactly consumed by all H_M^0; gauge preserves products | step-local | G7/G6 produce controls before G8 | Exact component maps to C=N=s=0 | Two orientations plus relative cube-root map give stated constants | base weight balance | E_row,E_gauge,E_sm | theta zero stops before scale/log construction | Landing consumes an undefined or wrong-target seed |
| E_land_pre | All-three nondegeneracy, inverse, scale, normalizer reserves | Single frozen pre-solve pass | Raw L/F expansions; J-I at most eta_J; Q-J at most eta_QJ; inverse and Gamma eta_A bounds | Identity diagonal, 1-eta_J, positive D_-M, 1-Gamma eta_A | Direction C, perpendicular N, mixed/quadratic terms, scale similarity | All defects evaluated once for all three modes; no landing-output forcing | Structural lower comparison plus Neumann reserve/ledger | E_sm,E_seed; singular off-event has pseudoinverse but no quantitative reserve | Identity diagonal and explicit perturbation supply positive floors and normalizers | Full design equals positive congruence of normalized J; same frozen object | step-local | E_sm,E_seed to step_009 before any step_010 call | Exact seed gives F=J=Q=I; no solve has occurred yet | delta bounds imply eta_J less than one; eta_QJ divided by 1-eta_J; similarity costs Gamma | q_*,tau_r definitions | E_sm,E_seed | If eta_J reaches one reserve is not exported | B1 failure: singular design or zero normalizer with no legal landing interface |
| E_land,e_land | Exact-span same-target quotient entry | One independent three-solve transaction and one rebalance | Frozen coefficient formulas; range inclusion; d_Q at most 4096 omega | Positive D_-M, pair inverse floor, normalizer floor, exact unfolding range | Coefficient direction and three product-log errors | Three finite O(omega) errors summed once; no sequential forcing | Algebraic coupling and structural comparison | E_land_pre plus frozen seed; zero norm fails; singular tape gets no basin claim | Range gives membership; positive reserve gives nondegenerate normalization | Output is in exact range(G_M); rebalance preserves exact rank-one products; 4096 dominates all target residuals pending B2 | step-local | All reserves precede three independent formulas; one joint producer before G11 | Exact seed returns exact factors; first cyclic input is only completed e_land | Similarity error controls directions/products, then one rebalance | Moore--Penrose procedure | E_land_pre,E_seed | Singular/zero output is capped or failed | B2 failure: cyclic phase receives no certified same-target basin entry |
| E_basin,Psi_q | All-sweep exact-span invariant and contraction | Every cyclic sweep after generated entry | V_(t+1) at most ell V_t; ell at most 17/512; range preserved per block | Target pair floor, exact span, positive quotient scales | Held direction and product-log errors; no additive forcing | Multiplicative contraction; potential drop at least (1-ell)V_t; geometric budget V0/(1-ell) | Self-contraction, monotone potential, algebraic coupling | E_land,E_sm and direct normal equations; off-basin singular tapes excluded to cap | Pair floor supplies conditioning; exact range supplies invariant, not mere smallness | e,e_U,e_V,e_W represent the literal active ALS orbit; original residual bridge is G12 | step-local | E_land before first U; each block range before next block; completed W before induction reuse | Entry below rho/3 activates first U; exact state has stationary U,V,W and zero s | Chronological block estimates compose without persistent term | base-scale and exact ALS procedure | E_land,E_sm | Source never vanishes on good entry; singular off-event not declared contractive | B3 failure: no all-sweep convergence or arbitrary accuracy |
| E_stop | Quantitative original-residual closure | Covered path through at most m_cap sweeps | Relative residual at most universal C_res times kappa_0 squared V_m; V_m at most ell^m V_0 | Geometric contraction and bounded target/scale chart | Initial quotient error; no additive floor | Contractive finite geometric tail; hit before fixed cap | Self-contraction plus stopping argument | E_basin and accuracy-confidence; exact baseline remains zero through the first sweep | Contraction supplies decay; chart expansion supplies original metric control | Produced quotient orbit is transferred to the exact original Frobenius residual | step-local | E_basin before residual bridge; cap does not prove convergence | First U/V/W sweep follows the literal entry; at the exact state it is stationary and the first completed-sweep test sees zero residual | Choose universal C_stop so C_res kappa_0 squared ell^m V0 is at most epsilon under the declared logarithmic cap | epsilon,kappa_0 bound | E_basin,e_land | Nonhitting tape is capped without success claim | B4 failure: quotient surrogate cannot certify theorem output |
| E_run_cap,E_restart | All-tape termination and conditional confidence | At most m_cap sweeps per run and exactly J runs | Hit or timeout; failure at most (1-p0)^J | Preregistered counter, p0, independent full-run tapes | Arbitrary singular/noncovered/nonhitting errors | Stopped per run; finite additive cost over J; no infinite scope | Stopping/conditioning argument and finite ledger | Primitive procedure/randomness plus E_cov,E_stop; J at least one | Counter supplies termination, p0 supplies positive success support | Successful output is tested in original metric; failed output never returned | step-local | Cap fixed before run; completed outcomes precede restart product | Off-event may fail immediately or time out; exact tape succeeds at first test | Choose C_rep so restart product at most delta_init; sum finite dense costs | random-initialization, accuracy-confidence | p0,E_stop | Every singular/off-event tape still completes | B4 failure: runtime or confidence quantifier does not close |
| Rank/runtime specialization | Public quantitative theorem bridge | Full finite procedure | k=o(r squared); work polynomial in declared variables | Primitive polynomial scale bounds and finite horizons | Dense tensor/solve costs, k slots, J runs | Finite sums/products only; no hidden all-time term | Reserve/ledger under declared finite scope | subquadratic-rank, base-scale, smoothing regime, cap outputs | Primitive bounds are exactly the claimed dependence sources | Same observable procedure; no latent-factor cost omitted | step-local | G3/G12 outputs precede final specialization | Smallest r is covered by assumptions r at least 3 and r less than k at most n | Substitute k,kappa_0,rho inverse bounds only after full cost expression | rank and scale assumptions | E_run_cap | Any tape has finite declared work | Hidden condition number or unlisted exponential cost |
| E_baseline | Exact/noiseless baseline invariance | First landing and all later sweeps | F=J=Q=I; C=N=s=0 is stationary; residual zero | Exact orthogonality and equal weights | None | Zero forcing for all sweeps; stationary rather than merely summable | Algebraic coupling / exact fixed point | Deterministic exact specialization; not a replacement main assumption | Equality supplies exact support, inverse, and fixed-point content | Produced factors equal consumed target factors in original Frobenius metric | step-local | Direct terminal specialization, not used to assume noisy closure | First landing returns itself; first U/V/W and every later sweep stationary | Exact identities, no absorption or tolerance | Exact specialization | Exact component seed | rho-zero discussed only as baseline boundary | Loss of inherited zero-residual conclusion, an idea/theorem-contract defect |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| E_sm | G1 / step_001 | Five primitive geometry/smoothing assumptions | Linear, quadratic, normalization, row-sum, union terms all assigned; no persistent class | Realized factors are the target, residual zero | Separate domination then sum; Schur/Gershgorin | Norm floor, q_*, Gamma 1.01 | G2,G4,G6,G9,G11, theorem | Feasible; local concentration proof pending |
| E_win,E_cov,p0 | G2--G3 / steps 002--003 | E_sm, raw independent Gaussian slots, k | Correlated pair tails and target union controlled; target dependence not claimed away | Proof labels identify the same observable slot | p_win scale then k p_win versus log r | Positive Gaussian interval mass and C_rank | G4,G12,theorem | Feasible; tail/coupon proof pending |
| E_cert and recurrence | G4 / step_004 | R0,S0,E_sm,E_cov, finite horizons | Pair interference and denominator defect explicitly in recurrences | Stored state and zeta are algorithmic objects | Invariant interval, denominator reserve, contraction to tau_r | Initial 19/20 gap and 1-Gamma q R | G5,theorem | Feasible; invariant arithmetic pending |
| E_cert_eq,E_cert_tail | G5 / step_005 | Stored state, exact Jacobi equation, tau_r,E_sm | Gram, normalization, residual classes separated; no hidden selected-state input | Gauge preserves same terms and target | Scalar cancellation and finite residual ledger | Retained coefficient floor and fixed thresholds | G6,G7 | Feasible; algebraic ledger pending |
| E_support,E_cluster,E_gauge | G6 / step_006 | Certificate ledger, score, Gamma, graph inner products | Singleton/multi tails, imbalance, ties all assigned | Selected representative maps to exact realized target by proof-only gauge | Score lower exceeds upper; graph separation | 0.85 filter and 1-64q_* graph threshold | G7,G8 | Feasible; margin proof pending |
| E_row | G7 / step_007 | Same-state dual equation, support, per-entry residual | Gram, scalar, residual defects; no uncontrolled r-squared term | Same selected state and target dual | Small root then both-orientation absorption | omega and fixed q_* slack | G8 | Feasible; local root proof pending |
| E_seed | G8 / step_008 | E_row,E_gauge,E_sm,best scalar | C,N,s defects individually bounded | Actual active seed is consumed by every H_M^0; exact same-target bridge | Projection plus relative cube-root map | Positive theta and 48/tau/128 budgets | G9,G13 | Feasible; transfer constants pending |
| E_land_pre | G9 / step_009 | C/N/s seed controls,q_real,Gamma | Direction, perpendicular, mixed, quadratic, scale classes all occur in delta/eta budgets | J and full design linked by exact positive congruence | Raw expansions to eta_QJ; Neumann; diagonal similarity | 1-eta_J and 1-Gamma eta_A | G10 all three calls | Feasible under fixed interface; B1 step-local proof pending |
| E_land,e_land | G10 / step_010 | Frozen seed and all three pre-call records | Coefficient and product-log errors controlled; singular/zero branch excluded observably | Exact range(G_M), zero perpendicular fields, product-preserving rebalance; 4096 target scale | Three independent formulas then one joint finite transfer | Positive normalizers and rho_ALS/3 entry slack | G11,G12 | Feasible under fixed interface; B2 step-local proof pending |
| E_basin,Psi_q | G11 / step_011 | Exact-span e_land,E_sm,pair floors,positive scales | Held-direction and log-scale errors multiplicative; no additive forcing | Refresh records equal literal active ALS states; same target | Chronological block composition gives ell less than 1/16 | Entry below rho/3 and pair inverse floor | G12 | Feasible under fixed interface; B3 step-local proof pending |
| E_stop | G12 / step_012 | E_basin,epsilon,kappa_0,original residual test | Initial error and geometric tail; no floor | d_Q transferred to exact original relative Frobenius norm | Universal C_res kappa_0 squared ell^m V0 at most epsilon | m_cap and contraction | Final theorem,E_restart | Feasible under fixed interface; B4 residual proof pending |
| E_run_cap,E_restart,runtime | G12 / step_012 | p0,independent runs,finite procedure,J | Failed gates,singular solves,timeouts are finite and observable | Only original-metric successful output returned | Hit/timeout; restart product; finite cost sum | Counter,p0,C_rep | Final theorem | Feasible under fixed interface; B4 accounting pending |
| E_baseline | G13 / step_013 | Exact orthogonality,equal weights,exact seed | No defect | Exact factors equal target, original residual zero | Direct identities, no absorption | Equality itself | Final baseline clause | Feasible; direct local substitution pending |

No exported interface has an uncontrolled persistent defect or an object-target
mismatch at diagnostic granularity. In particular, G9's normalized Grams are
not consumed as substitutes for the full designs: the positive congruence is
part of the exported interface. G10's rebalanced output is not a surrogate:
the rank-one products and exact target spans are unchanged.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| E_sm | G1 / step_001 | G2,G4,G6,G9,G11 and instance theorem | Primitive geometry assumptions to G1 to consumers | derived | valid |
| E_win,p_win | G2 / step_002 | G3 and window theorem | E_sm plus raw Gaussian tape to G2 to G3 | derived | valid |
| E_cov,p0 | G3 / step_003 | G4,G12 and coverage/restart theorem | E_win plus independent slots to G3 to consumers | derived | valid |
| E_RS,E_chart,E_chart_l1,E_cert | G4 / step_004 | G5 and certification theorem | E_sm,E_cov to recurrence to stored state | derived | valid |
| E_cert_eq,E_cert_tail | G5 / step_005 | G6,G7 | E_cert to same-state equation/ledger to consumers | derived | valid |
| E_support,E_cluster,E_gauge | G6 / step_006 | G7,G8 and representative theorem | Certificate ledger to score/graph/gauge | derived | valid |
| E_col,E_row_residual,E_row | G7 / step_007 | G8 | Selected equation/support to two-orientation closure | derived | valid |
| E_seed | G8 / step_008 | G9,G13 and seed clause | E_row,E_gauge,E_sm to actual balanced seed | derived | valid |
| E_land_pre | G9 / step_009 | G10 for U,V,W | E_sm,E_seed to all-three frozen records before all calls | derived | valid; B1 proof pending, no flow repair needed |
| E_land,e_land | G10 / step_010 | G11,G12 | E_land_pre to three independent solves to joint commit/rebalance | derived | valid; B2 proof pending, no inter-mode edge |
| Per-block exact-span states e_U,e_V,e_W | G11 / step_011 | Next chronological block and Psi_q | e_land to U/Refresh to V/Refresh to W/Refresh | derived | valid; literal-orbit identity pending B3 |
| E_basin,Psi_q | G11 / step_011 | G12 | Completed e_W to all-sweep recurrence | derived | valid; B3 proof pending |
| E_stop | G12 / step_012 | Final theorem and successful-run event | E_basin to geometric error to original residual test | derived | valid; B4 proof pending |
| E_run_cap | G12 / step_012 | E_restart and runtime theorem | Primitive cap/procedure to completed-run outcome | derived | valid |
| E_restart | G12 / step_012 | Final confidence theorem | p0,E_stop,E_run_cap plus independent runs to failure product | derived | valid; B4 proof pending |
| E_baseline | G13 / step_013 | Final baseline clause | Exact deterministic specialization to stationary trace | derived | valid |

The landing flow is flat and synchronized:
\[
(E_{\rm sm},E_{\rm seed})
\longrightarrow E_{\rm land\_pre}^{U,V,W}
\longrightarrow
(\widetilde X,\widetilde Y,\widetilde Z)_{\rm independent}
\longrightarrow E_{\rm land}^{\rm joint}
\longrightarrow E_{\rm basin}.
\]
There is no U-output-to-V-design, V-output-to-W-design, post-solve-scale, or
mode-specific predecessor-comparator edge. The later U-to-V-to-W edges occur
only inside the explicitly cyclic phase, where every edge carries the full
literal refreshed state.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The attempted claim preserves the
  setting's exact conditional scope, rank, nested probabilities, original
  metric, finite runtime, and exact baseline.
- Theorem-critical mechanism check: every positive or structural claim has a
  matching source. Norm and pair floors use base margins plus concentration;
  window/coverage uses positive Gaussian mass and independent slots;
  classification uses a singleton score floor; landing uses identity-diagonal
  pair Grams, positive exact scales, and Neumann/normalizer margins; cyclic
  contraction uses exact span and target pair floors; termination uses a
  preregistered counter.
- Source-convention check: direct identities use the exact realized normalized
  factors, Euclidean products, literal tensor unfoldings, exact
  Moore--Penrose procedure, and product-one quotient of setting.md. The
  Uschmajew citation is not used for a numerical interface it does not state.
- Residual-to-target check: proposal labels are proof-only; selected signs and
  permutation preserve represented terms; E_seed is the actual frozen input;
  full and normalized landing Grams are linked by exact positive congruence;
  landing outputs lie in the exact consumed target spans; rebalance preserves
  products; Refresh_s states represent the literal orbit; G12 ends in the
  original relative Frobenius metric.
- Entry/activation check: the extreme window exists before the first Jacobi
  update; the first recurrence step proves its denominator; all three landing
  reserves and scales exist before the first landing call; the completed joint
  state precedes the first cyclic U call; exact-span U output precedes V and V
  precedes W; the cap exists before any nonhitting trajectory.
- Accumulation check: smoothing, coverage, certification, selection, and
  landing have finite one-time ledgers. The only all-sweep error obeys
  \(V_{t+1}\le\ell V_t\) with no additive forcing and finite geometric budget.
  Arbitrary-sign off-event errors are stopped at \(m_{\rm cap}\); restart
  costs add over exactly \(J\) completed runs.
- Boundary check: zero contraction, absent certificate, wrong cluster count,
  zero theta, zero landing norm, singular quantitative branch, and nonhitting
  tape all have observable finite failure routes. None receives an inverse,
  basin, or convergence conclusion. The exact orthogonal equal-weight state
  is stationary through its first landing and every cyclic update.
- Generated-condition check: every theorem-facing event and invariant has a
  named earlier producer and legal dependency path. No good event, reserve,
  basin, or convergence fact is promoted to a primitive assumption.
- Quantitative check: the numerical landing and contraction margins have
  strict slack, and all exposed variables/probability/horizon/norm modes are
  preserved. The exact B1--B4 inequalities still require proof.
- Same-setting repair plausibility: no repair is currently required. A later
  failure of B1 or B2 at the fixed constants would be sketch/interface
  evidence; a failure of B3 requiring a changed radius, algorithm, or theorem
  scope could become idea/theorem-contract evidence. Such hypothetical
  outcomes are not present diagnostic findings and are not repaired here.

There is no current candidate idea-level obstruction and no current reason to
change a step claim, dependency, output target, generated flow, boundary
exclusion, algorithm, theorem scope, metric, dependence, or conclusion.

## Global Gaps And Hard Steps

1. B1, step_009, step-local: prove both induced orientations of the exact
   cross-Gram, \(F,Q,J\) expansions and the numerical implications
   \(\eta_J\le1/64\) and \(\Gamma\eta_A\le128\omega\). The mechanism witness is
   the identity diagonal plus the exact \(C^0,N^0\) expansion; the opposing
   terms are \(\delta_L,\delta_F,\delta_{FL},r\tau_r^2\); the positive margins
   are \(1-\eta_J\) and \(1-\Gamma\eta_A\). Suggested local units are a raw
   Gram lemma, paired Hadamard-cancellation lemma, two-norm Neumann lemma, and
   numerical reserve proposition. Exact seed gives \(F=J=Q=I\); a singular
   off-event is excluded from the reserve claim.
2. B2, step_010, step-local: derive the coefficient-to-direction and
   coefficient-to-product-log transfers for all three independent outputs,
   then prove that one joint rebalance yields
   \(d_Q(e^{\rm land},0)\le4096\omega\). The mechanism witness is the frozen
   coefficient formula, positive normalizer reserve, and exact unfolding
   range; the residual-to-target bridge is exact span plus product-preserving
   rebalance. Suggested local units are the frozen solve identity, similarity
   perturbation lemma, normalization lemma, product-log lemma, and joint
   quotient proposition. Exact entry is fixed; zero norms fail observably.
3. B3, step_011, step-local: prove exact scale equivariance and literal-orbit
   identity for each chronological Refresh_s record, then derive and compose
   the current-notation block estimates to obtain
   \(\ell\le8q_*+32\rho_{\rm ALS}<1/16\). The mechanism witness is exact-span
   range preservation plus the target Khatri--Rao floor. The accumulated
   control is the concrete no-forcing recurrence \(V_{t+1}\le\ell V_t\) and
   potential drop \((1-\ell)V_t\). Suggested local units are a quotient
   representation lemma, refresh identity, three block perturbation lemmas,
   chronological composition proposition, and invariant induction. The exact
   state is stationary; off-basin singular tapes are capped.
4. B4, step_012, step-local: prove the target-side quotient-to-original
   Frobenius comparison, choose \(C_{\rm stop}\) so the good path hits before
   the cap, count every failed and successful tape, and verify
   \((1-p_0)^J\le\delta_{\rm init}\). The mechanism witness is the G11
   geometric recurrence for success, the preregistered counter for arbitrary
   tapes, and independent complete-run randomness for amplification.
   Suggested local units are a balanced-chart residual lemma, cap lemma,
   per-run dense-cost proposition, and conditional restart proposition. The
   exact baseline succeeds at the first test.

All four obligations have unchanged accepted claims, sources, interfaces,
scope, and consumers. The remaining derivations in steps 001--008 and 013
also require independent step proofs, but the global diagnostic exposes no
additional theorem-level gap in their interfaces.

## Diagnostic Boundary Note

This global_proof.md is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim. Every local unit, displayed derivation, constant,
and cited-tool application must be independently proved or discharged by the
corresponding proof step and accepted review.

## Suggested Routing

None

Continue with all proof steps in the accepted dependency order. Once their
dependencies are accepted, prioritize step_009, then step_010, step_011, and
step_012 as the four hard local obligations identified by this diagnostic.
