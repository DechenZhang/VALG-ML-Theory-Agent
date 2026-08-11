# Proof Sketch

## Formalized Setting

The exact setting is `perspective_3/idea_3/setting.md`. The target is the
Gaussian-smoothed rank-(r) CP tensor

\[
T=(A\otimes B\otimes C)D_r,
\qquad D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
\]

and the algorithm is simultaneous full-batch gradient descent on the rank-(k)
CP least-squares objective, followed only by the product-preserving balancing
map, with

\[
\eta=(nkr)^{-12},\qquad r<k\le \lfloor r^{5/4}\rfloor.
\]

The six primitive setting conditions are exactly
`assump:base_conditioning`, `assump:dimension`, `assump:rank_window`,
`assump:gaussian_smoothing`, `assump:independent_initialization`, and
`assump:gd_step`. The events \(\mathcal E_{\rm cond}\),
\(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm deficit}\), and
\(\mathcal E_{\rm size}\) are generated facts to be proved from those
primitive conditions. The path event

\[
\mathcal C_{\rm path}=\left\{\sum_{t\ge0}
d_{\rm bal}(\theta_{t+1},\theta_t)\le E_\star\right\}
\]

is the sole explicitly conditional trajectory hypothesis. In particular, no
convergence, positive loss, trapping, positivity, Gram, or all-time norm fact
is hidden in \(\mathcal C_{\rm path}\).

The normalized coordinates
\(\bar\alpha=\sqrt{n/r}\,\alpha\),
\(\bar\beta=\sqrt{n/r}\,\beta\), and
\(\bar\gamma=\sqrt{n/r}\,\gamma\) are used only to state and prove the
initial Gram certificate. The coefficient CP map, tangent space, target core,
Taylor residual, and physical loss remain in the exact raw coordinates of the
setting.

## Formalized Goal

For fixed \(\kappa\ge1\) and fixed \(q\ge4\), prove that there are
\(r_0(\kappa,q)\), \(C(\kappa,q)\), and \(\epsilon_0(\kappa)>0\) such that,
uniformly over all allowed \(r,n,k\) and deterministic base triples,

\[
\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), prove that
the balanced factor sequence converges in \(d_{\rm bal}\) to a finite
\(\theta_\infty\) and that

\[
\lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
\ge \epsilon_0(\kappa)\|T\|_F^2>0.
\]

Finally prove the exact event implication and conditioning identity

\[
\mathbb P(\mathcal F_+)\ge
\mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})
\ge(1-r^{-10})
\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]

No positive lower bound for the last conditional probability is part of this
branch's theorem.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch for `idea_3`, incorporating the scale repair forced by
  the failed `perspective_3/idea_2` theorem contract
- Goal mode: exact-goal mode
- Progress type: `conditional`
- Sketch status: `COMPLETE`
- Claimed failure threshold: \(L(r)=r^{5/4}\), hence \(c=1/4\), for the
  specified balanced full-batch GD method only

## Proof Roadmap

The roadmap is a direct current-notation argument; the parent papers named in
`idea.md` motivate the random-initialization and smoothed-conditioning
frameworks but are not used as theorem-critical black boxes.

1. Prove uniform conditioning of the realized factors by an operator-norm
   perturbation of the conditioned deterministic bases.
2. Conditional on the realized factors, write each balanced initial component
   as
   \[
   (x_{i,0},y_{i,0},z_{i,0})=g_i(u_i^x,u_i^y,u_i^z),
   \qquad
   g_i=(R_i^xR_i^yR_i^z)^{1/3},
   \]
   where the directions are independent uniform sphere vectors. This gives
   \(\bar\alpha_{i,0}=\sqrt{n/r}\,g_iA^\dagger u_i^x\) and its two analogues.
   Direct sphere/Gaussian concentration gives the normalized Khatri--Rao Gram
   window and \(\mathcal E_{\rm size}\), uniformly over every conditioned
   realized factor triple.
3. Prove the tangent deficit through a gauge-fixed Terracini frame. Let
   \(p_i^a,p_i^b,p_i^c\) be the unit directions of the normalized coefficient
   vectors; their nonzero rescaling does not change \(\mathscr S_0\). On the
   orthogonal complement of the two-dimensional gauge kernel
   \[
   \mathcal K_i=\{(s p_i^a,t p_i^b,u p_i^c):s+t+u=0\},
   \]
   define
   \[
   J_i(h^a,h^b,h^c)=h^a\otimes p_i^b\otimes p_i^c
   +p_i^a\otimes h^b\otimes p_i^c
   +p_i^a\otimes p_i^b\otimes h^c,
   \qquad J=\bigoplus_{i=1}^kJ_i.
   \]
   Then \(\operatorname{range}J=\mathscr S_0\), the within-component Gram is
   bounded below by one on the gauge quotient, and the direct angular-Gaussian
   calculation must establish
   \[
   \left\|J^*J-\operatorname{diag}(J_i^*J_i)\right\|_{\rm op}
   \le C_\kappa\left(\sqrt{\frac{k}{r^2}}
   +\sqrt{\frac{\log r}{r}}\right)\le\frac12
   \tag{TF}
   \]
   together with
   \[
   \|J^*D_r\|_2^2
   \le C_\kappa\left(\frac{k}{r}+\log r\right).
   \tag{TC}
   \]
   Matrix Bernstein after leave-one-component-out decoupling supplies (TF);
   scalar Bernstein for
   \(\|p_i^b\odot p_i^c\|_2^2\) and its two analogues supplies (TC). Both
   calculations use the exact angular laws induced by \(A^\dagger,B^\dagger,
   C^\dagger\), whose condition numbers are bounded on
   \(\mathcal E_{\rm cond}\). Consequently
   \[
   \|P_{\mathscr S_0}D_r\|_F^2
   =\langle J^*D_r,(J^*J)^\dagger J^*D_r\rangle
   \le 2C_\kappa\left(\frac{k}{r}+\log r\right)\le\frac12r
   \]
   for \(r\ge r_0(\kappa)\). Thus
   \(W_0=P_{\mathscr S_0^\perp}D_r/
   \|P_{\mathscr S_0^\perp}D_r\|_F\) is legal and in fact gives a stronger
   margin than the required \(\delta_0=1/8\). Since
   \(\widehat D_0\in\mathscr S_0\), this is exactly the raw-target deficit
   event, not a normalized surrogate.
4. Combine the smoothing and conditional initialization bounds with a union
   bound to obtain \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).
5. On \(\mathcal E_{\rm size}\cap\mathcal C_{\rm path}\), finite total
   variation makes the factor sequence Cauchy, and the same path budget gives
   the all-time column bound \(2+E_{\rm path}\le3\).
6. Prove the exact second-order remainder bound for the raw coefficient CP map.
   Apply it once from \(\theta_0\) to \(\theta_\infty\). The first derivative
   lies in \(\mathscr S_0\), so pairing with \(W_0\) cancels the complete
   first-order motion; the one-shot remainder is at most
   \(C_{\rm CP}(\kappa,3)E_{\rm path}^2\le\delta_0/16\).
7. Use the exact mode-span projection identity and realized-factor singular
   values to transfer the surviving raw coefficient residual to the same
   physical target. Finish with the exact conditional-probability identity.

The only novel high-risk ingredient is the direct gauge-fixed frame estimate
(TF)--(TC). Its source, scale, quotient convention, target correlation, and
dominance relation are fixed above; it is therefore a step-local proof
obligation rather than an unexposed future mechanism.

## Rate Objectives

- Initial certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: \(n,r,k,\kappa,q\), \(\rho=r^{-q}\),
    \(r<k\le r^{5/4}\), normalized Gram window
    \([r^{-20},r^{20}]\), deficit \(\delta_0=1/8\), and failure budget
    \(r^{-10}\).
  - Hidden constants may depend on: \(\kappa,q\).
  - Hidden constants may not depend on: \(n,r,k\), the deterministic base
    triple, or the realized factors inside \(\mathcal E_{\rm cond}\).
  - Fixed quantities: \(\kappa,q\) as \(r\to\infty\).
  - Probability mode: high probability under the joint smoothing and
    initialization law; initialization estimates are uniform conditional on
    every realized triple in \(\mathcal E_{\rm cond}\).
  - Horizon mode: initialization only.
  - Norm mode: operator norm and smallest singular value for factors,
    eigenvalues of normalized Euclidean Khatri--Rao Grams, and coefficient
    Frobenius norm for the tangent deficit.
  - Required bridge or simplification obligations: prove the exact equality
    \(G_{\rm raw}=(r/n)^2G_{\rm norm}\), preserve
    \(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}\), and allocate at most
    \(4r^{-20}\le r^{-10}\) total initialization failure for large \(r\).
  - Baseline invariance obligations: the `idea_2` scale repair must preserve the
    raw target \(D_r\), raw \(\widehat D_0\), raw coefficient residual, and
    physical loss; normalization may change only the Gram certificate.

- Conditional positive-limit theorem:
  - Objective type: horizon-uniform boundedness, asymptotic convergence, and
    relative-loss explicit.
  - Exposed variables: \(\kappa\), \(\delta_0=1/8\),
    \(C_{\rm CP}(\kappa,3)=\kappa_1^3(1+9)\), and
    \(E_\star=\min\{1,\sqrt{\delta_0/(16C_{\rm CP}(\kappa,3))}\}\).
  - Hidden constants may depend on: \(\kappa\) only.
  - Hidden constants may not depend on: \(n,r,k,q\), the base triple,
    initialization, or the realized path.
  - Fixed quantities: the exact balanced-GD protocol and fixed \(\kappa,q\).
  - Probability mode: deterministic implication conditional on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\).
  - Horizon mode: all-time finite-budget control followed by an asymptotic
    limit.
  - Norm mode: \(d_{\rm bal}\) for factors, Frobenius norm for coefficient
    tensors, and physical Frobenius loss for \(F\).
  - Required bridge or simplification obligations: prove the Taylor remainder
    with no hidden \(k\)-factor, the one-shot margin inequality, the exact
    mode-span identity, and the explicit relative-loss comparison.
  - Baseline invariance obligations: a zero-length path leaves the full initial
    deficit unchanged; the normalized certificate must still yield the same
    raw-target and physical-loss conclusion.

- Final probability interface:
  - Objective type: confidence-explicit conditional event accounting.
  - Exposed variables: \(r^{-10}\) and
    \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
  - Hidden constants may depend on: none.
  - Hidden constants may not depend on: any parameter.
  - Fixed quantities: the deterministic base triple while taking the joint law.
  - Probability mode: exact conditional probability.
  - Horizon mode: all-time event.
  - Norm mode: not applicable.
  - Required bridge or simplification obligations: retain the conditional
    factor exactly; do not replace it by an unsupported positive constant.
  - Baseline invariance obligations: none beyond the exact event identity.

## Assumption Provenance Objectives

- \(\mathcal E_{\rm cond}\) is a derived event produced in `step_001` from
  `assump:base_conditioning`, `assump:dimension`, and
  `assump:gaussian_smoothing`.
- The balanced spherical representation, normalized coordinate scale,
  normalized Gram event, and \(\mathcal E_{\rm size}\) are derived in
  `step_002` from `assump:independent_initialization` and the `step_001`
  conditioning output.
- The gauge-fixed frame bounds (TF)--(TC), \(W_0\), and
  \(\mathcal E_{\rm deficit}\) are derived in `step_003`; none is assumed in
  the public initialization theorem.
- \(\mathcal E_{\rm init\_norm}\) and its probability are assembled in
  `step_004` only after all four constituent events have legal producers.
- \(\mathcal C_{\rm path}\) is an explicitly conditional hypothesis authorized
  by the formalized goal. Its probability is not derived in this branch.
- Factor convergence and the all-time column bound are derived in `step_005`
  from \(\mathcal E_{\rm size}\) and the conditional path budget.
- The Taylor interface is proved in `step_006`; the surviving coefficient
  margin, physical loss floor, and final event implication are derived in
  `step_007`--`step_009` from earlier outputs.

## Mechanism-Source And Boundary Stress

- Step ID: `step_001`
  - Claim class: structural nondegeneracy and conditioning.
  - Theorem role: makes coefficient coordinates legal and supplies all later
    singular-value transfers.
  - Mechanism source: direct perturbation in the exact Euclidean convention;
    `assump:base_conditioning` gives
    \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\) and
    \(\|\bar M\|_{\rm op}\le\kappa^2\), while
    `assump:gaussian_smoothing` and `assump:dimension` give
    \(\|\Xi_M\|_{\rm op}\le(2\kappa^2)^{-1}\) with failure at most
    \(r^{-20}\).
  - Source-to-claim adequacy: Weyl's inequalities export exactly
    \([(2\kappa^2)^{-1},2\kappa^2]\); no cited convention or surrogate object
    is used.
  - Residual-to-target adequacy: the perturbation residual is exactly \(\Xi_M\)
    in the realized factor matrix consumed downstream and is dominated by half
    the base singular-value margin.
  - Key positive/control term or structural source: the primitive
    \(\kappa^{-2}\) base singular-value margin.
  - Opposing defect terms: the Gaussian operator norm.
  - Closure/dominance/absorption relation:
    \(\|\Xi_M\|_{\rm op}\le(2\kappa^2)^{-1}\).
  - Accumulation behavior / scope compatibility: initialization-only; no
    temporal accumulation.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: primitive base margin plus smoothing produces
    the event before any coefficient or trajectory consumer.
  - Entry-state / first-update stress result: conditioning holds at
    initialization before the first GD update.
  - Baseline conclusion preserved: zero smoothing recovers the conditioned base
    and the same event for large \(r\).
  - Producer-consumer provenance: producer `step_001`; consumers
    `step_002`, `step_003`, `step_006`, and `step_008`.
  - Null or boundary regime tested: \(\rho=0\) and the lower base singular-value
    boundary.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; without the base margin the coefficient map and physical
    lower transfer can be singular.
  - Repair route if source is unsupported: `idea/theorem-contract defect`; no
    such defect is presently exposed.

- Step ID: `step_002`
  - Claim class: normalized Gram nondegeneracy and generated initial-size bound.
  - Theorem role: produces two constituents of the high-probability initial
    certificate and the later Taylor radius.
  - Mechanism source: direct balanced-radius/uniform-direction decomposition of
    iid \(N(0,I_n/n)\) columns, followed by conditional angular-Gaussian and
    Khatri--Rao Gram concentration in the exact normalized convention.
  - Source-to-claim adequacy: on `step_001`,
    \(\mathbb E[\bar\alpha\bar\alpha^{\mathsf T}\mid g,A]
    =(g^2/r)(A^{\mathsf T}A)^{-1}\), with eigenvalues bounded by
    \(\kappa\)-dependent constants divided by \(r\); the same holds in the
    other modes. Independent columns in \(\mathbb R^{r^2}\) then give a
    constant spectral window, which is stronger than
    \([r^{-20},r^{20}]\).
  - Residual-to-target adequacy: exact equality
    \(G_{\rm raw}=(r/n)^2G_{\rm norm}\); the tangent span is unchanged by the
    nonzero scalar normalization, and no normalized tensor is substituted for
    \(D_r\).
  - Key positive/control term or structural source: constant-scale normalized
    covariance and \(k/r^2\le r^{-3/4}\).
  - Opposing defect terms: radial deviations, angular anisotropy controlled by
    \(\kappa\), and off-diagonal Gram fluctuation of size
    \(C_\kappa(\sqrt{k/r^2}+\sqrt{\log r/r})\).
  - Closure/dominance/absorption relation: for \(r\ge r_0(\kappa,q)\), the
    fluctuation is at most half the constant population margin; chi
    concentration and \(n\ge C r^4\log r\) give
    \(\Pr(\mathcal E_{\rm size}^c)\le r^{-20}\).
  - Accumulation behavior / scope compatibility: initialization-only; the union
    is over \(3k\) columns and three pair Grams and is included in the stated
    \(r^{-20}\) budget.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: `step_001` conditioning and primitive Gaussian
    initialization precede both exported events.
  - Entry-state / first-update stress result: both events concern the actual
    balanced \(\theta_0\), before GD acts.
  - Baseline conclusion preserved: translating to raw coordinates restores the
    exact \((r/n)^2\) scale and leaves every raw target object unchanged.
  - Producer-consumer provenance: producer `step_002`; consumers `step_003`,
    `step_004`, and `step_005`.
  - Null or boundary regime tested: arbitrarily large allowed \(n\); the
    normalized window does not dilute with \(n\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; a singular normalized pair Gram would invalidate the stated
    initialization event.
  - Repair route if source is unsupported: `/proof-sketch`; no scale mismatch
    remains after the exact normalization bridge.

- Step ID: `step_003`
  - Claim class: structural tangent-space deficit and positive normal margin.
  - Theorem role: supplies the sole positive source for the final loss floor.
  - Mechanism source: the direct gauge-fixed Terracini frame (TF)--(TC) in the
    exact coefficient Euclidean inner product, produced from independent
    angular-Gaussian coefficient directions under `step_001` conditioning.
  - Source-to-claim adequacy: the quotient removes exactly the two CP gauge
    null directions per component; the within-component Gram is bounded below
    by one, (TF) keeps the full quotient Gram above \(1/2\), and (TC) bounds the
    exact raw target correlation. Thus the source supplies a lower residual,
    not merely an upper or generic dimension bound.
  - Residual-to-target adequacy: produced object
    \(P_{\mathscr S_0^\perp}D_r\), consumed target
    \(D_r-\widehat D_0\), metric \(\|\cdot\|_F\). Since
    \(\widehat D_0\in\mathscr S_0\),
    \(P_{\mathscr S_0^\perp}(D_r-\widehat D_0)
    =P_{\mathscr S_0^\perp}D_r\) exactly; there is no residual term.
  - Key positive/control term or structural source: ambient-to-tangent ratio
    \(k/r^2\le r^{-3/4}\) and the quotient Gram margin \(1/2\).
  - Opposing defect terms: off-component frame correlations and the target
    correlation energy \(C_\kappa(k/r+\log r)\).
  - Closure/dominance/absorption relation:
    \(2C_\kappa(k/r+\log r)\le r/2<(1-\delta_0^2)r\) for
    \(r\ge r_0(\kappa)\).
  - Accumulation behavior / scope compatibility: initialization-only;
    decoupling and concentration cover all \(k\) components in one event of
    failure at most \(r^{-20}\).
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: primitive initialization plus `step_001`
    produces the frame and correlation bounds before \(W_0\) is consumed.
  - Entry-state / first-update stress result: \(W_0\) is defined from the
    actual initial tangent space; no trajectory or final loss is used to choose
    it.
  - Baseline conclusion preserved: normalization changes only generator scales,
    so the raw tangent space, raw target, and raw deficit conclusion are exactly
    those inherited from `idea_2`.
  - Producer-consumer provenance: producer `step_003`; consumers `step_004`
    and `step_007`.
  - Null or boundary regime tested: at \(k=r^{5/4}\), the frame defect is
    \(O_\kappa(r^{-3/8}+\sqrt{\log r/r})\) and the target projection is
    \(O_\kappa(r^{1/4}+\log r)=o(r)\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; if the quotient Gram loses its lower bound or the target
    correlation is order \(r\), no fixed normal margin follows.
  - Repair route if source is unsupported: `PARTIAL_BLOCKED` with retry
    `/proof-sketch` if the direct frame interface needs decomposition repair;
    no present scale or boundary counterexample is known.

- Step ID: `step_004`
  - Claim class: confidence-explicit generated-event closure.
  - Theorem role: proves the unconditional initialization part of the exact
    theorem.
  - Mechanism source: legal outputs of `step_001`--`step_003` and a union bound
    under the declared joint probability law.
  - Source-to-claim adequacy: each constituent event has a producer and total
    failure at most \(4r^{-20}\le r^{-10}\) for large \(r\).
  - Residual-to-target adequacy: the intersection is exactly
    \(\mathcal E_{\rm init\_norm}\), with no enlarged surrogate event.
  - Key positive/control term or structural source: the four constituent
    high-probability estimates.
  - Opposing defect terms: their four failure probabilities.
  - Closure/dominance/absorption relation: union bound and
    \(4r^{-20}\le r^{-10}\).
  - Accumulation behavior / scope compatibility: finite event union only.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: all constituents are produced earlier.
  - Entry-state / first-update stress result: the combined event is fixed at
    initialization.
  - Baseline conclusion preserved: exact normalized event from the setting.
  - Producer-consumer provenance: producer `step_004`; consumers `step_005`
    and `step_009`.
  - Null or boundary regime tested: every allowed \(n\) and maximal \(k\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: the public confidence statement fails if any constituent lacks
    its stated budget.
  - Repair route if source is unsupported: smallest failed constituent step.

- Step ID: `step_005`
  - Claim class: all-time boundedness and asymptotic factor convergence.
  - Theorem role: produces \(\theta_\infty\), unit total displacement, and the
    Taylor-domain radius \(R=3\).
  - Mechanism source: explicitly conditional finite budget
    \(E_{\rm path}\le E_\star\le1\), plus `step_002`'s initial-size output.
  - Source-to-claim adequacy: for every column and mode,
    \(\|m_{i,t}\|\le2+\sum_{s<t}d_{\rm bal}(\theta_{s+1},\theta_s)\le3\),
    and every path tail bounds the corresponding Cauchy tail.
  - Residual-to-target adequacy: the produced limit is the limit of the actual
    balanced-GD factor sequence in the same \(d_{\rm bal}\) metric consumed by
    the theorem.
  - Key positive/control term or structural source: summability of nonnegative
    increment lengths.
  - Opposing defect terms: all factor increments; their signs are irrelevant
    because their norms are charged to the finite path budget.
  - Closure/dominance/absorption relation:
    \(d_{\rm bal}(\theta_u,\theta_t)\le
    \sum_{s=t}^{u-1}d_{\rm bal}(\theta_{s+1},\theta_s)\to0\).
  - Accumulation behavior / scope compatibility: finite-budgeted under the
    declared all-time conditional scope; each one-step increment is charged
    once, and the tail of the convergent nonnegative series vanishes.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: the path-length source contains neither
    convergence nor boundedness; the displayed inequalities produce both
    before later use.
  - Entry-state / first-update stress result: a stationary first update has zero
    charge and immediate convergence; a nonzero first update is charged to the
    same finite series.
  - Baseline conclusion preserved: when \(E_{\rm path}=0\),
    \(\theta_\infty=\theta_0\) exactly.
  - Producer-consumer provenance: producer `step_005`; consumers `step_006`,
    `step_007`, `step_008`, and `step_009`.
  - Null or boundary regime tested: zero factors or a zero raw update do not
    affect the Euclidean finite-variation argument.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: without finite path length, neither convergence nor the uniform
    Taylor radius follows in this branch.
  - Repair route if source is unsupported: theorem-contract defect, because the
    path condition is the branch's explicit conditional source.

- Step ID: `step_006`
  - Claim class: second-order approximation and exported Taylor remainder.
  - Theorem role: controls all nonlinear coefficient motion beyond the initial
    tangent space.
  - Mechanism source: direct expansion of the trilinear raw coefficient CP map
    with \(\|A^\dagger\|,\|B^\dagger\|,\|C^\dagger\|\le\kappa_1\).
  - Source-to-claim adequacy: the three quadratic cross terms are bounded by
    \(3\kappa_1^3R d^2\) using columnwise Cauchy--Schwarz, and the cubic term by
    \(\kappa_1^3d^3\le\kappa_1^3d^2\) when \(d\le1\); hence the exact exported
    constant is \(C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R)\), with no factor \(k\).
  - Residual-to-target adequacy: the expansion is for the exact raw map
    \(\Psi_{A,B,C}\) consumed in the coefficient residual, in Frobenius norm.
  - Key positive/control term or structural source: trilinearity and the
    left-inverse operator bounds.
  - Opposing defect terms: three quadratic terms and one cubic term.
  - Closure/dominance/absorption relation: \(d\le1\) converts the cubic term to
    quadratic scale; \(R=3\) comes from `step_005`.
  - Accumulation behavior / scope compatibility: no stepwise accumulation; the
    formula is applied once from \(\theta_0\) to \(\theta_\infty\).
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: `step_001` and `step_005` provide all raw
    controls before export.
  - Entry-state / first-update stress result: at zero displacement the
    remainder is exactly zero.
  - Baseline conclusion preserved: exact first-order behavior is recovered at
    zero displacement.
  - Producer-consumer provenance: producer `step_006`; consumer `step_007`.
  - Null or boundary regime tested: \(d=0\), \(d=1\), and columns of norm zero.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: an uncontrolled nonlinear remainder could erase the initial
    normal margin.
  - Repair route if source is unsupported: `/proof-step step_006` after sketch
    acceptance; the source formula is exact.

- Step ID: `step_007`
  - Claim class: positive raw coefficient residual lower bound.
  - Theorem role: preserves the initialization obstruction at the limiting
    iterate.
  - Mechanism source: `step_003`'s \(W_0\), `step_005`'s displacement bound,
    and `step_006`'s exact remainder interface.
  - Source-to-claim adequacy: \(D\Psi(\theta_0)[\theta_\infty-\theta_0]\in
    \mathscr S_0\) and \(\widehat D_0\in\mathscr S_0\), so both pair to zero
    with \(W_0\); the only opposing term is the controlled remainder.
  - Residual-to-target adequacy: produced and consumed object is the same raw
    residual \(D_r-\Psi(\theta_\infty)\) in coefficient Frobenius norm.
  - Key positive/control term or structural source: initial margin
    \(\delta_0\sqrt r\).
  - Opposing defect terms: one Taylor remainder of norm at most
    \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\).
  - Closure/dominance/absorption relation:
    \[
    \langle D_r-\Psi(\theta_\infty),W_0\rangle
    \ge\delta_0\sqrt r-\delta_0/16
    \ge(15/16)\delta_0\sqrt r.
    \]
  - Accumulation behavior / scope compatibility: the full all-time path enters
    only through the single endpoint displacement; no persistent signed error
    is summed.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: margin, limit, and remainder are all produced by
    earlier steps.
  - Entry-state / first-update stress result: on a stationary path the Taylor
    remainder vanishes and the complete initial margin survives.
  - Baseline conclusion preserved: zero path length gives the exact initial
    deficit, not a weakened remainder statement.
  - Producer-consumer provenance: producer `step_007`; consumer `step_008`.
  - Null or boundary regime tested: maximal permitted \(E_{\rm path}=E_\star\)
    still leaves the displayed positive margin.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; without \(W_0\) or the Taylor threshold no positive
    coefficient floor is obtained.
  - Repair route if source is unsupported: smallest failed dependency among
    `step_003`, `step_005`, and `step_006`.

- Step ID: `step_008`
  - Claim class: same-target physical residual bridge and relative positive-loss
    specialization.
  - Theorem role: converts the coefficient obstruction into the theorem's
    physical objective.
  - Mechanism source: exact mode-span projection identity plus `step_001`
    singular-value bounds and `step_007` coefficient margin.
  - Source-to-claim adequacy: orthogonal projection is contractive in the safe
    direction, and \(A\otimes B\otimes C\) has smallest singular value at
    least \(\kappa_1^{-3}\) on the coefficient space.
  - Residual-to-target adequacy: produced object
    \((A\otimes B\otimes C)(D_r-\Psi(\theta_\infty))\) equals exactly
    \((P_A\otimes P_B\otimes P_C)(T-S(\theta_\infty))\); both refer to the
    same realized target \(T\), and the discarded orthogonal residual only
    increases the full physical norm.
  - Key positive/control term or structural source:
    \(\kappa_1^{-3}(15\delta_0/16)\sqrt r\).
  - Opposing defect terms: none subtracted; projection loss is one-sided and
    singular-value scaling is explicit.
  - Closure/dominance/absorption relation:
    \[
    F(\theta_\infty)\ge
    \kappa_1^{-6}(15\delta_0/16)^2r
    \ge\kappa_1^{-12}(15\delta_0/16)^2\|T\|_F^2.
    \]
  - Accumulation behavior / scope compatibility: one-time limit comparison.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: exact identity and earlier generated margins
    precede the final theorem use.
  - Entry-state / first-update stress result: a stationary path with initial
    deficit already has the same physical lower floor.
  - Baseline conclusion preserved: the normalized certificate returns to the
    exact raw and physical target without a surrogate remainder.
  - Producer-consumer provenance: producer `step_008`; consumer `step_009` and
    final theorem assembly.
  - Null or boundary regime tested: the lower singular-value boundary
    \(\kappa_1^{-1}\); the constant remains strictly positive.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: if realized factors lose rank, the coefficient residual need not
    imply physical loss.
  - Repair route if source is unsupported: smallest failed dependency,
    ordinarily `step_001` or `step_007`.

- Step ID: `step_009`
  - Claim class: event implication and exact conditional-probability closure.
  - Theorem role: states the strongest source-aligned distributional conclusion
    supported by this conditional branch.
  - Mechanism source: `step_004` event probability, `step_005` convergence,
    `step_008` positive loss, and the elementary identity
    \(\Pr(E\cap C)=\Pr(E)\Pr(C\mid E)\).
  - Source-to-claim adequacy: the deterministic implication gives
    \(E\cap C\subseteq\mathcal F_+\), and `step_004` gives \(\Pr(E)>0\).
  - Residual-to-target adequacy: the event \(\mathcal F_+\) uses the actual GD
    limit and physical objective from `step_008`; no proxy failure event is
    substituted.
  - Key positive/control term or structural source: exact event inclusion and
    \(\Pr(E)\ge1-r^{-10}\).
  - Opposing defect terms: the unresolved conditional probability, retained
    multiplicatively and never absorbed.
  - Closure/dominance/absorption relation:
    \(\Pr(\mathcal F_+)\ge(1-r^{-10})\Pr(C\mid E)\).
  - Accumulation behavior / scope compatibility: all-time dependence is inside
    the explicitly conditional event, not accumulated by an unsupported
    recurrence.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: initialization and deterministic event outputs
    are produced before probability assembly.
  - Entry-state / first-update stress result: if \(\Pr(C\mid E)=0\), the exact
    inequality yields zero unconditional progress, as the theorem explicitly
    permits; no false constant-probability claim is made.
  - Baseline conclusion preserved: exact conditional identity.
  - Producer-consumer provenance: producer `step_009`; consumer final theorem.
  - Null or boundary regime tested: zero conditional certificate probability.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: no; the conditional theorem remains correct but gives no
    unconditional constant lower bound.
  - Repair route if source is unsupported: `step_009` is an elementary local
    derivation; the remaining constant-probability gap is outside this theorem.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \(\mathcal E_{\rm cond}\) | `step_001` | Base singular values and Gaussian perturbation law | Gaussian operator norm controlled by \(\rho,n,r\); no persistent defect | Realized matrix equals base plus the controlled perturbation | Weyl with perturbation at most half the base lower margin | \(\kappa^{-2}\) primitive base margin | `step_002`, `step_003`, `step_006`, `step_008` | None |
| \(\mathcal E_{\rm gram}^{\rm norm}\) and exact raw-scale identity | `step_002` | Conditional normalized covariance, independent columns, balanced radial concentration | Off-diagonal spectral fluctuation and radial tails controlled; arbitrary large \(n\) is not a defect after normalization | \(G_{\rm raw}=(r/n)^2G_{\rm norm}\); target and tangent are not transformed | Constant conditional Gram window implies \([r^{-20},r^{20}]\) for large \(r\) | Constant covariance margin from `step_001` | `step_003`, `step_004` | None |
| \(\mathcal E_{\rm size}\) | `step_002` | \(3k\) chi radii and product-preserving balancing | Upper radial tails controlled by \(n\ge Cr^4\log r\) | Actual balanced initial factors are the consumed factors | Union bound gives failure at most \(r^{-20}\) | Fixed threshold 2 and chi concentration | `step_004`, `step_005` | None |
| Gauge-fixed frame bounds and \(\mathcal E_{\rm deficit}\) | `step_003` | Conditioned angular laws, quotient within-block Gram, rank window | Off-block frame defect and target correlation controlled by (TF)--(TC); no trajectory defect | \(P_{\mathscr S_0^\perp}(D_r-\widehat D_0)=P_{\mathscr S_0^\perp}D_r\) exactly | Projection energy \(\le2C_\kappa(k/r+\log r)\le r/2\) | Ambient-to-tangent ratio and quotient Gram margin | `step_004`, `step_007` | None; (TF)--(TC) are the explicit hard proof obligation |
| \(\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\) | `step_004` | Four earlier event estimates | Four initialization failure terms, each at most \(r^{-20}\) | Exact event intersection | \(4r^{-20}\le r^{-10}\) | Large-(r\) threshold in \(r_0(\kappa,q)\) | `step_005`, `step_009` | None |
| \(\theta_\infty\), \(d(\theta_\infty,\theta_0)\le E_\star\), and \(R=3\) | `step_005` | Initial size and explicit path budget | Nonnegative increments are controlled by one finite series; no unpriced forcing | Actual trajectory and same factor metric | Tail-sum Cauchy bound and \(2+E_\star\le3\) | Explicit conditional budget \(E_\star\) | `step_006`, `step_007`, `step_008`, `step_009` | None |
| Raw Taylor remainder \(\le C_{\rm CP}(\kappa,3)d^2\) | `step_006` | Left-inverse bounds, radius 3, displacement at most 1 | Three quadratic and one cubic term, all controlled; no hidden \(k\)-term | Exact raw \(\Psi\) and coefficient Frobenius norm | Columnwise Cauchy--Schwarz and \(d^3\le d^2\) | \(C_{\rm CP}=\kappa_1^3(1+3R)\) | `step_007` | None |
| Limiting coefficient margin | `step_007` | Initial deficit, tangent orthogonality, endpoint displacement, Taylor remainder | Only the one-shot nonlinear remainder | Same raw residual at the actual limit | \(C_{\rm CP}E_\star^2\le\delta_0/16\) leaves \((15/16)\delta_0\sqrt r\) | Initial \(\delta_0\sqrt r\) margin | `step_008` | None |
| Relative physical loss floor \(\epsilon_0(\kappa)\|T\|_F^2\) | `step_008` | Exact projection identity, coefficient margin, factor singular values | Orthogonal complement is discarded only in the safe norm direction | Exact same realized target and physical Frobenius loss | \(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\) | `step_001` singular-value margin | `step_009`, final theorem | None |
| Final conditional probability lower bound | `step_009` | Event inclusion and initial-event probability | Unresolved \(\Pr(C\mid E)\) retained exactly | Actual convergence-and-positive-loss event | Conditional probability identity | \(1-r^{-10}\) initial-event probability | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized-factor conditioning | `step_001` | `step_002`, `step_003`, `step_006`, `step_008` | Legal coefficients and physical transfer | `step_001` to each listed consumer | derived | None |
| Normalized Gram event and raw-normalized identity | `step_002` | `step_003`, `step_004` | Scale-correct initial certificate | `step_001 -> step_002 -> step_003/step_004` | derived | None |
| Initial-size event | `step_002` | `step_004`, `step_005` | Produces the all-time Taylor radius on the path event | `step_002 -> step_004 -> step_005` | derived | None |
| Tangent witness \(W_0\) and deficit event | `step_003` | `step_004`, `step_007` | Positive source for limiting residual | `step_001 -> step_002 -> step_003 -> step_004/step_007` | derived | None |
| High-probability initial event | `step_004` | `step_005`, `step_009` | Unconditional initialization theorem and final probability factor | `step_001,step_002,step_003 -> step_004 -> step_009` | derived | None |
| Path budget \(E_{\rm path}\le E_\star\) | Explicit conditional target \(\mathcal C_{\rm path}\) | `step_005` | Conditions the deterministic theorem | conditional source to `step_005` | explicitly conditional | None |
| Factor limit, endpoint displacement, and radius 3 | `step_005` | `step_006`, `step_007`, `step_008`, `step_009` | Convergence conclusion and Taylor-domain controls | `step_004 + C_path -> step_005 -> consumers` | derived | None |
| Taylor remainder interface | `step_006` | `step_007` | Preserves the initial margin | `step_001 + step_005 -> step_006 -> step_007` | derived | None |
| Limiting coefficient residual margin | `step_007` | `step_008` | Input to physical bridge | `step_003 + step_005 + step_006 -> step_007 -> step_008` | derived | None |
| Relative physical loss floor | `step_008` | `step_009`, final theorem | Positive limiting objective | `step_001 + step_007 -> step_008 -> step_009` | derived | None |
| Conditional probability conclusion | `step_009` | Final theorem | Strongest distributional conclusion of the branch | `step_004 + step_005 + step_008 -> step_009` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Uniformly prove \(\Pr(\mathcal E_{\rm cond})\ge1-r^{-20}\) and the realized left-inverse/operator bounds with \(\kappa_1=2\kappa^2\). | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Uniform perturbation over three rectangular factors. | Direct Gaussian operator-norm tail plus Weyl inequalities in the exact setting convention. | \(\mathcal E_{\rm cond}\) and \(\|M^\dagger\|_{\rm op}\le\kappa_1\). | Initial certificate: preserve uniformity over all allowed \(n\) and bases and failure \(\le r^{-20}\). | PENDING |
| `step_002` | Conditional on `step_001`, derive the balanced spherical representation, prove all three normalized pair Grams lie in \([r^{-20},r^{20}]\), prove \(\Pr(\mathcal E_{\rm size}^c\mid\mathcal E_{\rm cond})\le r^{-20}\), and prove \(G_{\rm raw}=(r/n)^2G_{\rm norm}\). | `step_001` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization`; derived `step_001` conditioning | Khatri--Rao columns are rank-one angular-Gaussian products with a common within-component balancing radius. | Direct radius-direction decomposition, chi concentration, conditional covariance calculation, and matrix Bernstein/decoupling for the normalized column Gram. | \(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm size}\), and exact scale bridge. | Initial certificate: constant natural scale, polynomial public window, each failure \(\le r^{-20}\), no hidden \(n\)-dilution. | PENDING |
| `step_003` | Conditional on `step_001`--`step_002`, prove (TF)--(TC), construct unit \(W_0\perp\mathscr S_0\), and establish \(\mathcal E_{\rm deficit}\) with conditional failure at most \(r^{-20}\). | `step_001`, `step_002` | `assump:rank_window`, `assump:independent_initialization`; derived conditioning and normalized angular controls | Gauge quotient, dependent structured frame blocks, and uniform projection of fixed \(D_r\) under anisotropic but conditioned angular laws. | Direct gauge-fixed Terracini calculation; leave-one-component-out decoupling and matrix Bernstein for (TF); scalar Bernstein for (TC); pseudoinverse projection formula. | Raw-target tangent deficit with \(\delta_0=1/8\). | Initial certificate: exploit \(k/r^2\le r^{-3/4}\) and prove failure \(\le r^{-20}\), uniformly in conditioned factors. | PENDING |
| `step_004` | Assemble \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\). | `step_001`, `step_002`, `step_003` | Primitive assumptions inherited through dependencies | Correct joint/conditional probability bookkeeping. | Tower property and union bound with explicit \(4r^{-20}\le r^{-10}\). | High-probability generated initial certificate. | Initial certificate confidence bridge. | PENDING |
| `step_005` | On \(\mathcal E_{\rm size}\cap\mathcal C_{\rm path}\), prove \(\theta_t\to\theta_\infty\), \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\le1\), and every column norm is at most 3 for all times and at the limit. | `step_002`, `step_004` | `assump:gd_step`; derived initial-size event; local explicitly conditional hypothesis \(\mathcal C_{\rm path}\) | All-time closure without importing convergence or boundedness into the certificate. | Tail-sum Cauchy criterion and one-step triangle inequality charged to the finite path-length series. | Limit, displacement bound, and radius \(R=3\). | Conditional positive-limit theorem: horizon-uniform finite-budget control and asymptotic convergence. | PENDING |
| `step_006` | Prove the exact raw multilinear remainder bound \(\|\Psi(\theta')-\Psi(\theta)-D\Psi(\theta)[\theta'-\theta]\|_F\le C_{\rm CP}(\kappa,R)d_{\rm bal}(\theta',\theta)^2\) for radius \(R\) and displacement at most 1, with no hidden \(k\)-factor. | `step_001`, `step_005` | Derived factor conditioning, radius, and displacement | Sum the componentwise quadratic/cubic tensor terms in Frobenius norm without losing \(k\). | Exact trilinear expansion plus Frobenius Cauchy--Schwarz and \(d^3\le d^2\). | Taylor remainder interface with \(R=3\). | Conditional positive-limit theorem: exact constant and norm mode. | PENDING |
| `step_007` | Pair the endpoint Taylor formula with \(W_0\) and prove \(\|D_r-\Psi(\theta_\infty)\|_F\ge(15/16)\delta_0\sqrt r\). | `step_003`, `step_005`, `step_006` | Derived deficit, limit, displacement, and Taylor interface | Preserve the raw normal margin under all nonlinear endpoint motion. | Tangent orthogonality and the explicit inequality \(C_{\rm CP}(\kappa,3)E_\star^2\le\delta_0/16\). | Limiting raw coefficient residual floor. | Conditional positive-limit theorem: one-shot second-order absorption. | PENDING |
| `step_008` | Prove the exact projection identity and obtain \(F(\theta_\infty)\ge\epsilon_0(\kappa)\|T\|_F^2\), with \(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\). | `step_001`, `step_007` | Derived conditioning and coefficient residual | Same-target coefficient-to-physical transfer and explicit relative normalization. | Direct mode-span projection identity, tensor-product singular values, and \(\|T\|_F^2\le\kappa_1^6r\). | Strictly positive limiting physical objective. | Conditional positive-limit theorem: explicit \(\kappa\)-dependence and exact norm bridge. | PENDING |
| `step_009` | Define \(\mathcal F_+\), prove \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\subseteq\mathcal F_+\), and derive the exact final conditional probability lower bound without lower-bounding \(\Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\). | `step_004`, `step_005`, `step_008` | Joint probability space from the setting; derived event and deterministic outputs | Keep the unresolved source-level probability factor explicit. | Event inclusion and elementary conditional probability identity. | Final conditional distributional theorem. | Final probability interface: exact factor \((1-r^{-10})\Pr(C\mid E)\). | PENDING |

## Dependency Notes

The graph is acyclic: initialization producers are `step_001`--`step_004`, the
conditional trajectory producer is `step_005`, the deterministic nonlinear
interfaces are `step_006`--`step_008`, and event assembly is `step_009`. Every
dependency points to an earlier step. No generated event, limit, bound, margin,
or physical loss conclusion is consumed before its producer.

If all steps are accepted, `step_004` proves the unconditional initialization
part of the goal. On the explicitly conditional path event, `step_005` supplies
the actual limit and Taylor radius, `step_006`--`step_007` preserve the initial
raw tangent deficit, `step_008` transfers it to the exact physical objective,
and `step_009` assembles the claimed probability statement while retaining the
unresolved conditional certificate probability.

## Blockers

None. The gauge-fixed frame estimates (TF)--(TC) are the principal hard step,
but their exact source, quotient convention, fluctuation scale, target
correlation scale, boundary regime, and dominance relation are exposed and are
compatible with \(k\le r^{5/4}\). If a later proof establishes that (TF) or
(TC) fails under the conditioned angular laws, the artifact must be changed to
`PARTIAL_BLOCKED` with `step_003` as the exact blocker; no such counter-regime is
currently exposed.
