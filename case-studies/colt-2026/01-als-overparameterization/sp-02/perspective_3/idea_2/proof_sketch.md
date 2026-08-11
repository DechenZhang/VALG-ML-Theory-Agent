# Proof Sketch

## Formalized Setting

The branch studies the rank-\(k\) balanced simultaneous full-batch gradient-descent
trajectory for the third-order CP least-squares objective in `setting.md`.  The realized
target factors \(A,B,C\) are Gaussian perturbations of uniformly
\(\kappa\)-conditioned deterministic bases, the raw initialization has iid
\(\mathcal N(0,1/n)\) entries, \(r<k\le r^{5/4}\), and
\(n\ge C(\kappa,q)r^4\log r\).  Coefficient coordinates are the *raw*
coordinates
\(\alpha=A^\dagger x\), \(\beta=B^\dagger y\), and
\(\gamma=C^\dagger z\), with no dimension normalization in the
definition of \(\mathcal E_{\rm gram}\).

Primitive setting conditions are exactly `assump:base_conditioning`,
`assump:dimension`, `assump:rank_window`, `assump:gaussian_smoothing`,
`assump:independent_initialization`, and `assump:gd_step`.  The events
\(\mathcal E_{\rm cond}\), \(\mathcal E_{\rm gram}\), and
\(\mathcal E_{\rm deficit}\) are generated facts that the first part of
the theorem must prove.  The all-time norm, raw-positivity, and finite-path clauses in
\(\mathcal C_{\rm path}\) are explicitly conditional hypotheses of the
formalized conditional theorem, not primitive assumptions and not derived invariants.

## Formalized Goal

The exact goal has two parts.  First, uniformly for every allowed
\(n\ge C(\kappa,q)r^4\log r\), it asks for
\[
  \mathbb P(\mathcal E_{\rm init})\ge 1-r^{-10},\qquad
  \mathcal E_{\rm init}
  =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}
   \cap\mathcal E_{\rm deficit}.
\]
Second, on \(\mathcal E_{\rm init}\cap\mathcal C_{\rm path}\),
it asks for factor convergence and
\[
  \lim_{t\to\infty}F(\theta_t)
  \ge \epsilon_0(\kappa)\|T\|_F^2>0,
\]
together with the exact conditional-probability identity stated in `setting.md`.  It
does not ask this branch to lower-bound
\(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init})\)
by a constant; that is the declared remaining source-level gap.

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Goal mode: exact-goal mode
- Roadmap disposition: blocked before proof-step dispatch by a quantitative
  contradiction in the generated initial Gram event.

## Proof Roadmap

The intended framework is a direct coefficient-coordinate argument.  The random
initial-geometry part is motivated by the random-initialization viewpoint of Wang,
Wu, Lee, Ma, and Ge, *Beyond lazy training for over-parameterized tensor
decomposition* (NeurIPS 2020), while the realized-factor conditioning context is the
one surveyed from Bhaskara, Charikar, Moitra, and Vijayaraghavan, *Smoothed analysis
of tensor decompositions* (STOC 2014, DOI 10.1145/2591796.2591887).  Neither paper is
used as a theorem-critical proof authority here: all required interfaces would have
to be derived in the exact conventions of `setting.md`.

The candidate route would have four blocks:

1. Prove the realized-factor conditioning, initial Khatri--Rao geometry, and tangent
   deficit with probability at least \(1-r^{-10}\).
2. Use finite total balanced path length to obtain a finite factor limit.
3. Apply the coefficient CP map once between the initial state and the limit.  Initial
   normality cancels its first-order term, and the explicit quadratic remainder is
   controlled by \(E_{\rm path}^2\).
4. Transfer the surviving coefficient residual through the exact orthogonal
   mode-span projection to obtain a relative physical loss floor, then state the
   conditional probability identity and the unresolved probability interface.

Blocks 2--4 have a viable direct mechanism under the explicitly conditional path
certificate.  Block 1 cannot prove the event in the formalized goal.  To see this
without silently changing coordinates, write one raw initialized component as
\((x_i^{\rm raw},y_i^{\rm raw},z_i^{\rm raw})
=(R_i^x u_i^x,R_i^y u_i^y,R_i^z u_i^z)\), where the directions are independent
uniform sphere vectors and the radii are independent normalized chi variables.  The
balance map produces
\[
  (x_{i,0},y_{i,0},z_{i,0})
   =g_i(u_i^x,u_i^y,u_i^z),\qquad
  g_i=(R_i^xR_i^yR_i^z)^{1/3}.
\]
Conditional on realized \(A,B,C\) in \(\mathcal E_{\rm cond}\),
\[
  \beta_{i,0}=g_iB^\dagger u_i^y,\qquad
  \gamma_{i,0}=g_iC^\dagger u_i^z,
\]
and
\[
  \mathbb E\|B^\dagger u_i^y\|_2^2
   =\frac{\|B^\dagger\|_F^2}{n}
   \le \frac{\kappa_1^2r}{n},\qquad
  \mathbb E\|C^\dagger u_i^z\|_2^2
   \le \frac{\kappa_1^2r}{n},\qquad \kappa_1=2\kappa^2.
\]
The fourth moment \(\mathbb E g_i^4\) is bounded by an absolute constant
uniformly in the allowed dimensions.  Therefore, for
\(K_0^{\beta\gamma}\),
\[
 \mathbb E\left[\frac1k
   \operatorname{tr}\left((K_0^{\beta\gamma})^{\mathsf T}
                    K_0^{\beta\gamma}\right)
   \mid A,B,C\right]
 \le C_{\kappa}\frac{r^2}{n^2}.
\]
The event \(\mathcal E_{\rm gram}\) implies that this average
eigenvalue is at least \(r^{-20}\).  Markov's inequality thus gives the
uniform conditional upper bound
\[
 \mathbb P(\mathcal E_{\rm gram}\mid A,B,C)
 \le C_{\kappa}\frac{r^{22}}{n^2}
 \qquad\text{on }\mathcal E_{\rm cond}.
\]
Consequently
\(\mathbb P(\mathcal E_{\rm init})
\le C_{\kappa}r^{22}/n^2\).  The allowed choice \(n=r^{12}\)
already makes this at most \(C_{\kappa}r^{-2}\), contradicting the required
\(1-r^{-10}\) lower bound for all sufficiently large \(r\).

Equivalently, normalized coordinates
\(\bar\beta=\sqrt{n/r}\,\beta\) and
\(\bar\gamma=\sqrt{n/r}\,\gamma\) give
\[
 \bar K^{\beta\gamma}=\frac nr K^{\beta\gamma},\qquad
 (K^{\beta\gamma})^{\mathsf T}K^{\beta\gamma}
 =\left(\frac rn\right)^2
  (\bar K^{\beta\gamma})^{\mathsf T}
   \bar K^{\beta\gamma}.
\]
Thus the fixed raw lower threshold \(r^{-20}\) asks the normalized Gram for a
lower threshold \(n^2r^{-22}\), even though its natural scale is constant.
Normalization exposes the contradiction; it cannot repair the fixed event in
`setting.md` without changing the theorem-facing certificate.

For repair provenance, the still-viable deterministic route is exact.  If a repaired
initial event and the current \(\mathcal C_{\rm path}\) hold, finite path
length gives a limit \(\theta_\infty\) and
\(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\le1\).
Since \(W_0\perp\mathscr S_0\), both
\(\widehat D_0\in\mathscr S_0\) and the first derivative
\(D\Psi(\theta_0)[\theta_\infty-\theta_0]\) pair to zero
with \(W_0\).  The stated Taylor bound gives
\[
 \left\langle D_r-\Psi(\theta_\infty),W_0\right\rangle
 \ge \delta_0\sqrt r-C_{\rm CP}E_\star^2
 \ge \frac{15}{16}\delta_0\sqrt r.
\]
Let \(P_A=AA^\dagger\), and analogously define \(P_B,P_C\).  The
exact same-target bridge is
\[
 (P_A\otimes P_B\otimes P_C)(T-S(\theta_\infty))
 =(A\otimes B\otimes C)
   (D_r-\Psi(\theta_\infty)).
\]
Orthogonal projection is contractive, while
\(\sigma_{\min}(A),\sigma_{\min}(B),\sigma_{\min}(C)
\ge\kappa_1^{-1}\) and
\(\|T\|_F^2\le\kappa_1^6r\).  Hence
\[
 F(\theta_\infty)
 \ge \kappa_1^{-6}\left(\frac{15\delta_0}{16}\right)^2r
 \ge \kappa_1^{-12}\left(\frac{15\delta_0}{16}\right)^2
       \|T\|_F^2.
\]
This identifies the target-compatible choice
\(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\), but
it does not cure the contradicted high-probability claim.

## Rate Objectives

- Initial-certificate objective:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: \(n,r,k,\kappa,q,\rho=r^{-q}\), the full rank
    window, and failure probability \(r^{-10}\).
  - Hidden constants may depend on: \(\kappa,q\) only where explicitly stated.
  - Hidden constants may not depend on: \(n,r,k\) or the selected deterministic
    base triple.
  - Fixed quantities: \(\kappa\) and \(q\) when \(r\to\infty\).
  - Probability mode: high probability under the joint smoothing and initialization
    law, uniformly over bases and every allowed \(n,k\).
  - Horizon mode: initialization only.
  - Norm mode: eigenvalues of the raw Euclidean-coordinate Khatri--Rao Grams and
    Frobenius dual deficit.
  - Required bridge or simplification obligations: preserve the factor
    \((r/n)^2\) when translating a normalized Gram statement back to the raw Gram.
  - Baseline invariance obligations: none; no recovery or zero-defect baseline
    conclusion is inherited by this lower-bound target.
  - Feasibility: contradicted by
    \(\mathbb P(\mathcal E_{\rm gram})\le
    C_{\kappa}r^{22}/n^2\) on the conditioning event.

- Conditional positive-loss objective:
  - Objective type: regularity-explicit, asymptotic, and relative-loss explicit.
  - Exposed variables: \(\kappa,R=r^4,\delta_0=1/8,C_{\rm CP},E_\star\).
  - Hidden constants may depend on: \(\kappa\) only.
  - Hidden constants may not depend on: \(n,r,k,q\), the base triple, or the
    realized trajectory.
  - Fixed quantities: \(\kappa,q\) and the exact balanced-GD protocol.
  - Probability mode: deterministic conditional implication on
    \(\mathcal E_{\rm init}\cap\mathcal C_{\rm path}\).
  - Horizon mode: all-time certificate followed by an asymptotic limit.
  - Norm mode: \(d_{\rm bal}\) for factor convergence, coefficient
    Frobenius norm for the Taylor margin, and physical Frobenius loss for \(F\).
  - Required bridge or simplification obligations: the exact mode-span projection
    identity and the displayed \(\kappa_1\)-dependent norm comparison.
  - Baseline invariance obligations: none.

- Probability-upgrade objective:
  - Objective type: confidence-explicit source-gap accounting.
  - Exposed variables: \(\mathbb P(\mathcal C_{\rm path}\mid
    \mathcal E_{\rm init})\) and \(r^{-10}\).
  - Hidden constants may depend on: none in the exact probability identity.
  - Hidden constants may not depend on: any parameter.
  - Fixed quantities: the deterministic base triple while taking the joint law.
  - Probability mode: exact conditioning identity.
  - Horizon mode: all-time event.
  - Norm mode: not applicable; this is an event-probability interface.
  - Required bridge or simplification obligations: no constant lower bound is claimed;
    obtaining one remains outside this conditional theorem.
  - Baseline invariance obligations: none.

## Assumption Provenance Objectives

- \(\mathcal E_{\rm cond}\): derived initialization-independent event;
  intended source is `assump:base_conditioning`, `assump:dimension`, and
  `assump:gaussian_smoothing` via a Gaussian operator-norm perturbation argument.
- \(\mathcal E_{\rm deficit}\): derived initialization event; intended
  source is `assump:independent_initialization`, the dimension inequality
  \(3kr<r^3\), and a current-coordinate random-subspace/anti-concentration
  derivation.  It cannot be assumed in the unconditional initial-certificate claim.
- \(\mathcal E_{\rm gram}\): required derived initialization event.  Its
  raw lower threshold is not supported by the primitive conditions uniformly in
  \(n\), as quantified above; there is no legal producer under the current theorem
  contract.
- All-time positive raw norms, factor bound \(R\), and path energy
  \(E_{\rm path}\le E_\star\): explicitly conditional hypotheses because
  the formalized goal is conditional on \(\mathcal C_{\rm path}\).  They are
  not claimed to follow from `assump:gd_step`.
- Factor convergence: derived from the explicitly conditional finite-path hypothesis
  by completeness of the finite-dimensional balanced factor space.
- Coefficient residual margin and physical loss floor: derived from the initial
  deficit, finite-path output, direct CP Taylor formula, and exact projection bridge.

## Mechanism-Source And Boundary Stress

- Step ID: N/A (initial-geometry block; roadmap blocked before step dispatch)
  - Claim class: high-probability structural nondegeneracy of the raw Khatri--Rao
    Grams.
  - Theorem role: required constituent of \(\mathcal E_{\rm init}\).
  - Mechanism source: primitive Gaussian initialization plus the direct
    current-coordinate calculation on \(\mathcal E_{\rm cond}\).
  - Source-to-claim adequacy: failed.  The source gives raw coefficient norm scale
    \(\sqrt{r/n}\) and Gram scale \(r^2/n^2\), not an
    \(n\)-uniform lower bound \(r^{-20}\).
  - Residual-to-target adequacy: normalized Gram control transfers to the exact raw
    target only through
    \(G_{\rm raw}=(r/n)^2G_{\rm normalized}\); the omitted factor is
    theorem-critical and is not dominated for \(n\gg r^{11}\).
  - Key positive/control term or structural source: isotropic random directions and
    well-conditioned left inverses.
  - Opposing defect terms: deterministic dimension dilution \((r/n)^2\).
  - Closure/dominance/absorption relation: the required relation would be
    \(C_{\kappa}r^2/n^2\ge r^{-20}\), equivalently
    \(n\le C_{\kappa}^{1/2}r^{11}\), which is absent and false over the
    declared dimension scope.
  - Accumulation behavior / scope compatibility: initialization-only; no temporal
    accumulation.  Uniform accumulation over the allowed dimension scope is
    unsupported because the dilution worsens monotonically with \(n\).
  - Obligation locality classification: idea/theorem-contract defect.
  - Noncircular closure status: noncircular direct calculation, but it refutes the
    requested interface.
  - Entry-state / first-update stress result: at the exact initialized state, before
    any GD update, the raw Gram already has the incompatible scale.
  - Baseline conclusion preserved: N/A; no inherited baseline conclusion applies.
  - Producer-consumer provenance: no legal producer; the blocked event would be
    consumed by \(\mathcal E_{\rm init}\), the path certificate, and the
    final probability statement.
  - Null or boundary regime tested: \(n=r^{12}\), which is an allowed regime.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; the required initial-certificate probability tends to zero rather
    than one.
  - Repair route if source is unsupported: revise the idea/setting certificate to use
    normalized Grams, equivalently raw thresholds scaled by \((r/n)^2\); an
    alternative upper bound \(n=O_{\kappa}(r^{11})\) changes theorem scope,
    and changing initialization variance changes the primitive algorithm protocol.

- Step ID: N/A (finite-path convergence block; retained repair evidence)
  - Claim class: all-time convergence from finite path length.
  - Theorem role: produces the factor limit consumed by the Taylor block.
  - Mechanism source: the explicitly conditional hypothesis
    \(\sum_t d_{\rm bal}(\theta_{t+1},\theta_t)\le E_\star\).
  - Source-to-claim adequacy: exact; tail distances are bounded by tails of a convergent
    nonnegative series in a complete finite-dimensional Euclidean space.
  - Residual-to-target adequacy: no surrogate object is used; the produced limit is in
    the same balanced-factor metric consumed downstream.
  - Key positive/control term or structural source: finite total variation.
  - Opposing defect terms: the tail forcing
    \(\sum_{s\ge t}d_{\rm bal}(\theta_{s+1},\theta_s)\).
  - Closure/dominance/absorption relation: for \(u>t\),
    \(d_{\rm bal}(\theta_u,\theta_t)\le
    \sum_{s=t}^{u-1}d_{\rm bal}(\theta_{s+1},\theta_s)\), whose
    right side tends to zero.
  - Accumulation behavior / scope compatibility: explicitly conditional and summable;
    the accumulated increments have nonnegative magnitude and finite declared budget
    \(E_\star\).
  - Obligation locality classification: step-local after repair of the initial event.
  - Noncircular closure status: the finite-path clause is stated before convergence is
    consumed and contains no convergence assertion; it directly produces the limit.
  - Entry-state / first-update stress result: if the first update is zero, the path is
    stationary and convergence is immediate; otherwise its magnitude is charged to
    the same finite series.  Raw-zero updates are explicitly excluded by the
    conditional certificate.
  - Baseline conclusion preserved: N/A.
  - Producer-consumer provenance: explicitly conditional path source -> factor limit
    -> Taylor block -> final theorem.
  - Null or boundary regime tested: \(E_{\rm path}=0\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: no; zero path energy strengthens convergence and leaves the initial
    deficit intact.
  - Repair route if source is unsupported: N/A for this explicitly conditional target.

- Step ID: N/A (Taylor normal-margin block; retained repair evidence)
  - Claim class: second-order residual lower bound.
  - Theorem role: preserves a constant fraction of the initial normal deficit at the
    factor limit.
  - Mechanism source: direct trilinear expansion of the exact coefficient CP map at
    \(\theta_0\), the explicit \(C_{\rm CP}\) bound in `setting.md`,
    and \(W_0\perp\mathscr S_0\).
  - Source-to-claim adequacy: exact setting convention; \(A^\dagger,B^\dagger,
    C^\dagger\) and the Euclidean coefficient Frobenius metric are the same in
    source and consumer.  Every derivative term lies in \(\mathscr S_0\).
  - Residual-to-target adequacy: the produced coefficient residual is the exact core
    of the orthogonally projected physical residual; the subsequent projection bridge
    controls the consumed physical Frobenius loss.
  - Key positive/control term or structural source:
    \(\delta_0\sqrt r\) from the generated tangent deficit.
  - Opposing defect terms: one quadratic Taylor remainder bounded by
    \(C_{\rm CP}d_{\rm bal}(\theta_\infty,\theta_0)^2\).
  - Closure/dominance/absorption relation:
    \(C_{\rm CP}E_\star^2\le\delta_0/16
    \le\delta_0\sqrt r/16\).
  - Accumulation behavior / scope compatibility: no per-step Taylor defects are
    accumulated.  A single endpoint expansion uses
    \(d_{\rm bal}(\theta_\infty,\theta_0)\le E_\star\),
    so the only defect is quadratically finite-budgeted by the declared path budget.
  - Obligation locality classification: step-local after repair of the initial event.
  - Noncircular closure status: the path certificate produces the endpoint distance
    before the residual floor is derived; it contains no residual claim.
  - Entry-state / first-update stress result: for a stationary initial state, the
    derivative and remainder vanish, so the full initial margin survives.
  - Baseline conclusion preserved: N/A.
  - Producer-consumer provenance: tangent-deficit output and factor-limit output ->
    coefficient margin -> physical transfer -> final theorem.
  - Null or boundary regime tested: zero displacement and the maximal allowed
    displacement \(E_\star\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: if the initial normal margin vanishes, path smallness alone cannot imply
    positive loss; the margin must be generated by the repaired initial-geometry step.
  - Repair route if source is unsupported: idea repair only for the initial geometry;
    the Taylor interface itself needs no new mechanism.

- Step ID: N/A (physical transfer and probability-accounting block; retained repair
  evidence)
  - Claim class: same-target norm transfer and conditional probability conversion.
  - Theorem role: converts coefficient separation to the stated relative physical
    loss and keeps the unresolved source probability visible.
  - Mechanism source: exact orthogonal mode-span projection, singular-value bounds in
    \(\mathcal E_{\rm cond}\), and the elementary conditioning identity.
  - Source-to-claim adequacy: exact; the produced core maps through
    \(A\otimes B\otimes C\) to the projection of the same physical residual,
    not to a whitened or reference residual.
  - Residual-to-target adequacy: every residual term is accounted for by orthogonal
    projection: \(\|T-S\|_F\ge
    \|(P_A\otimes P_B\otimes P_C)(T-S)\|_F\).  No uncontrolled
    projection complement is subtracted.
  - Key positive/control term or structural source: coefficient margin and
    \(\sigma_{\min}(A\otimes B\otimes C)\ge\kappa_1^{-3}\).
  - Opposing defect terms: the ratio comparison uses the upper bound
    \(\|T\|_F\le\kappa_1^3\sqrt r\); there is no additive
    physical-space defect.
  - Closure/dominance/absorption relation: the two displayed norm inequalities give
    \(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\).
  - Accumulation behavior / scope compatibility: asymptotic only through the already
    produced factor limit; the probability identity has no accumulated defect.
  - Obligation locality classification: step-local after repair of the initial event.
  - Noncircular closure status: coefficient separation is produced before physical
    loss is consumed; \(\mathcal C_{\rm path}\) does not assume loss.
  - Entry-state / first-update stress result: a stationary path still yields the same
    positive floor from the initial normal deficit.
  - Baseline conclusion preserved: N/A.
  - Producer-consumer provenance: coefficient margin -> exact projection bridge ->
    relative loss floor; initial-event probability plus conditional path probability
    -> final event lower bound.
  - Null or boundary regime tested: if \(\sigma_{\min}(A)\) vanished,
    coefficient separation need not imply physical separation; this is excluded by
    the generated conditioning event.  If the conditional path probability is zero,
    the conditional implication remains true but yields no unconditional source-level
    failure probability.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes for singular realized factors; no false unconditional claim is made
    when the path-event probability vanishes.
  - Repair route if source is unsupported: the physical bridge is supported; proving
    a constant path-event probability is explicitly outside this branch.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(\mathcal E_{\rm init}\) with probability \(1-r^{-10}\) | No legal producer under the current setting | Primitive smoothing and initialization laws; base conditioning; \(n\ge Cr^4\log r\) | Conditioning and deficit may be controlled; raw Gram dilution \((r/n)^2\) is fixed and uncontrolled as \(n\to\infty\) | Normalized Gram is a surrogate; exact raw transfer is \(G_{\rm raw}=(r/n)^2G_{\rm norm}\), which misses \(r^{-20}\) for \(n\gg r^{11}\) | Required \(n\le C_\kappa r^{11}\) is absent | Fixed raw threshold \(r^{-20}\), unsupported over the declared scope | Conditional theorem and probability statement | idea/theorem-contract defect: revise the event's scale or the dimension scope |
| Factor limit \(\theta_\infty\) | Explicit conditional source \(E_{\rm path}\le E_\star\) via direct completeness argument | Nonnegative summable balanced increments | Tail sum is controlled by the finite declared budget; no persistent remainder | Same balanced-factor metric and same trajectory | \(d(\theta_u,\theta_t)\le\sum_{s=t}^{u-1}d(\theta_{s+1},\theta_s)\) | Tail of a convergent series | Taylor endpoint block | None after initial-event repair |
| Coefficient residual margin \(\|D_r-\Psi(\theta_\infty)\|_F\ge(15\delta_0/16)\sqrt r\) | Initial deficit plus direct endpoint Taylor calculation | \(W_0\perp\mathscr S_0\), \(d(\theta_\infty,\theta_0)\le E_\star\), norm bound \(R\), \(\mathcal E_{\rm cond}\) | Linear term cancels exactly; quadratic remainder is controlled; no higher term for the trilinear map beyond the stated bound | Produced coefficient residual is the exact core of the projected physical residual | \(C_{\rm CP}E_\star^2\le\delta_0/16\) | Initial margin \(\delta_0\sqrt r\) | Physical transfer | None after initial-event repair |
| Relative physical loss floor | Exact mode-span projection and realized-factor singular-value bounds | Coefficient residual margin; \(\sigma_{\min}(M)\ge\kappa_1^{-1}\), \(\|M\|_{\rm op}\le\kappa_1\) | Projection complement is not a subtractive defect; target upper norm is controlled | Exact same target \(T-S\) in physical Frobenius norm, with its orthogonal projection used only for a lower bound | Displayed projection identity and singular-value comparison | \(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\) | Final conditional theorem | None after initial-event repair |
| Event-probability lower bound | Elementary conditional-probability identity | \(\mathbb P(\mathcal E_{\rm init})\) and \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init})\) | Constant lower bound for the conditional path probability is explicitly uncontrolled | Same positive-limit event, no surrogate event promoted | \(\mathbb P(\mathcal F_+)\ge\mathbb P(\mathcal E_{\rm init}\cap\mathcal C_{\rm path})\) | Exact event inclusion | Final theorem and source-gap statement | Current initial-event factor is contradicted; path-probability factor remains an explicit non-blocking gap for the conditional target |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| \(\mathcal E_{\rm cond}\) | Intended direct Gaussian perturbation derivation from `assump:base_conditioning`, `assump:dimension`, and `assump:gaussian_smoothing` | Initial certificate, Taylor bound, physical transfer | Coordinate validity and \(\kappa_1\)-norm comparisons | Primitive conditions -> conditioning derivation -> consumers | derived | No independent blocker identified |
| \(\mathcal E_{\rm gram}\) | No legal producer | Initial certificate and path event | Required high-probability initial certificate | Primitive initialization law -/-> fixed raw threshold | derived | Raw threshold contradicts dimension scaling |
| \(\mathcal E_{\rm deficit}\) and \(W_0\) | Intended current-coordinate random-subspace derivation from `assump:independent_initialization`, after conditioning | Taylor normal-margin block | Positive coefficient residual | Primitive initialization -> deficit derivation -> Taylor block | derived | Not dispatched because the exact goal is already blocked by the Gram constituent |
| All-time norm/raw-positivity/path-energy certificate | \(\mathcal C_{\rm path}\) in the explicitly conditional formalized target | Factor convergence and endpoint Taylor bound | Conditions the positive-limit implication | Explicit conditional event -> convergence and Taylor consumers | explicitly conditional | None; a constant probability lower bound remains deliberately unproved |
| Factor limit \(\theta_\infty\) | Direct completeness argument from finite path length | Endpoint Taylor block and final theorem | Factor convergence and evaluation of limiting loss | Conditional path source -> factor limit -> Taylor/final | derived | None after initial-event repair |
| Coefficient residual margin | Direct Taylor calculation from \(W_0\), the factor limit, and the path budget | Physical transfer | Supplies positive separation before conditioning loss | Deficit + factor limit -> endpoint Taylor -> coefficient margin | derived | No legal upstream \(W_0\) producer is dispatchable until theorem-contract repair |
| Relative physical loss floor | Exact orthogonal projection and singular-value comparison | Final theorem and event \(\mathcal F_+\) | \(\lim_tF(\theta_t)\ge\epsilon_0(\kappa)\|T\|_F^2\) | Coefficient margin -> exact physical bridge -> final theorem | derived | None after upstream repair |

## Sketch Steps

None.  The exact first theorem claim is false for the allowed dimension regime, so
dispatching lemma-sized proof steps would violate exact-goal alignment.  The four
candidate blocks in `Proof Roadmap` are retained only to localize the valid
deterministic implication and the smallest theorem-contract repair; they are not
accepted step interfaces and must not be sent to `/proof-step`.

## Dependency Notes

There is no dispatchable dependency graph.  After an upstream repair that replaces
the raw Gram event by its normalized form (or equivalently inserts the exact
\((r/n)^2\) raw scale), a prospective acyclic graph would place initial geometry
and conditional finite-path convergence first and independently, the endpoint Taylor
transfer after both, and physical/probability assembly last.  That prospective graph
does not authorize proof work under the current `setting.md`.

## Blockers

1. **Idea/theorem-contract defect: impossible dimension-uniform raw Gram lower bound.**
   On the generated conditioning event, the raw coefficient Khatri--Rao Gram scale is
   \(r^2/n^2\), and
   \(\mathbb P(\mathcal E_{\rm init})\le
   C_{\kappa}r^{22}/n^2\).  The allowed sequence \(n=r^{12}\)
   contradicts the requested \(1-r^{-10}\) lower bound.  A proof sketch cannot
   repair this while preserving the formalized event and dimension scope.  The
   smallest substantive repair is to define the Gram certificate in normalized
   coordinates, equivalently require raw eigenvalues in
   \([(r/n)^2r^{-20},(r/n)^2r^{20}]\).  Adding
   \(n=O_{\kappa}(r^{11})\) or changing initialization scaling are larger,
   target-changing alternatives.

The unresolved quantity
\(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init})\)
is not an additional blocker to the *conditional* formalized goal: that goal explicitly
leaves it open.  It remains the correctly labeled probability gap between the repaired
conditional theorem and the source's unconditional constant-probability lower bound.
