# Independent evaluation: overparameterization for ALS in tensor decomposition

## Scope, method, and evidence limits

This report evaluates all four copied public theory bundles under
`../../01-als-overparameterization`:

- subproblem 001, Perspective 1 / idea 7;
- subproblem 002, Perspective 1 / idea 2;
- subproblem 002, Perspective 2 / idea 2; and
- subproblem 002, Perspective 3 / idea 3.

Scores follow `../RUBRIC.md`. Internal `ACCEPTED` labels and
`proof_review.md` files were used only for navigation. The proof evidence was
the copied `setting.md` and public `theory/latex_template/*.tex` bundle.

The root parent source
`../../01-als-overparameterization/source.pdf`
was read directly, page by page, using PDFKit. The root PDF, rather than either
`RESEARCH_BRIEF.md`, controls the target contracts below.

Novelty cutoff: **2026-08-08**. The existing literature surveys were treated
only as seed lists. The locally checked evidence consists of the parent paper
and bibliography, the public bundle bibliographies, and the theorem/mechanism
descriptions in the local surveys. A fresh OpenAlex search for closer work on
subquadratic random-initialized ALS, fixed-span tensor lower bounds, and
Haar/tangent-deficit lower bounds was attempted on 2026-08-08. Sandbox DNS
failed, and the requested network escalation failed with HTTP 503. No new
primary source could therefore be retrieved. Under the rubric, all novelty
scores are provisional and capped at `N4`; absence of a closer result is not
claimed.

Independent Tectonic compilation was also attempted for all four public
bundles. Every attempt failed before TeX processing with the same macOS
`system-configuration` NULL-object panic. Existing compiled `main.pdf` files
are present in all four bundles. This is recorded as an environmental
verification limitation, not as a mathematical or artifact defect.

Weighted scores use exactly

\[
W=0.4P+0.4S+0.2N.
\]

## Parent-paper target contracts

### Subproblem 001: Open Problem 2

The parent paper defines the asymmetric third-order CP least-squares objective,
random initialization, and the Gaussian smoothed-factor model on PDF pp. 1--2.
The prose on PDF p. 2 calls the base factors arbitrary well-conditioned
factors, while the displayed smoothed-analysis paragraph formally starts from
arbitrary `n x r` matrices without restating a conditioning restriction. Both
readings are retained.

Open Problem 2 on PDF p. 3 asks for an iterative method such as ALS or gradient
descent which, on the smoothed model with `rho=1/poly(r)`, uses
`r < k = o(r^2)`, runs in `poly(n,r,log(1/epsilon))` time, and returns a
rank-`k` tensor with relative Frobenius residual at most
`epsilon ||T||_F`, with high probability over the once-drawn smoothed
instance. For a fixed instance, constant or even inverse-polynomial success
over random initialization is explicitly acceptable if independent restarts
amplify it in polynomial total time. The question is existential over a
natural iterative method; it does not require one theorem for both ALS and GD.
Algebraic recovery is expressly outside the intended route.

The paper-stated baseline is the `O(r^2)` parallel-ALS theorem of Arvanitakis,
Srinivas, and Vijayaraghavan (2025), summarized on PDF p. 2. Its proof uses
`k` Khatri--Rao features to span the `r^2` pairwise Kronecker space. PDF p. 4
identifies going below this span bottleneck as the central technical gap.
Random tensors are called an interesting special case on PDF p. 3, not the
literal full smoothed-base endpoint.

### Subproblem 002: Open Problem 3

Open Problem 3 on PDF p. 3 asks whether there is a universal `c>0` such that,
for `r < k <= r^(1+c)`, the specified random-initialized iterative dynamics on
a smoothed instance converge to a solution with positive objective value with
constant probability. The sentence says "ALS and gradient descent (and other
iterative methods)." It can be read permissively as inviting an
algorithm-specific lower bound or conjunctively as requiring both named
methods. Both readings are reported below. The paper does not unambiguously
separate smoothing and initialization randomness in this lower-bound sentence,
so a result must state its probability space rather than silently choosing one.

The discussion on PDF pp. 3--4 prefers a random- or smoothed-tensor lower bound,
possibly as high as `r^(2-c)`. An explicit well-conditioned worst-case tensor
for which ALS needs `Theta(r^2)` is called interesting, but not the most
compelling endpoint. The mandatory clauses are therefore: a genuine specified
ALS/GD-type dynamics, a universal superlinear window, convergence of the
iterates to a positive-objective solution rather than only finite-time delay or
bad-point existence, and constant failure probability in a source-consistent
instance/initialization model.

## Novelty comparison matrix

| Bundle mechanism | Closest locally evidenced precedent | Exact delta and assessment |
| --- | --- | --- |
| Proposal-slot extremes, observable clustering, synchronized frozen landing, then cyclic ALS | The 2025 `O(r^2)` Khatri--Rao-span ALS baseline in the parent PDF; orthogonal/tensor-power initialization mechanisms; Uschmajew's local ALS analysis | The branch replaces all-pairs span coverage by one extreme-coordinate proposal per target and proves an observable route into a local ALS chart. This is a nontrivial synthesis, but proposal/order-statistic separation, robust power-style contraction, and local ALS are established ingredient classes. |
| Fixed-one-mode constrained ALS/GD obstruction | Standard Haar random-projector isotropy, Pythagoras, and descent monotonicity | The simultaneous two-method statement is clean, but the obstruction is exactly the routine fact that a model confined to a random `k`-plane cannot represent most target energy. |
| Adaptive projector-path certificate | Standard subspace-distance Lipschitz bounds, telescoping path length, and finite-variation convergence | The useful delta is a moving-subspace certificate rather than a fixed-span obstruction. Its proof remains a direct transport/triangle-inequality argument, and the path assumptions carry the dynamics. |
| Product-Haar tangent-deficit plus endpoint Taylor transfer | Standard Gaussian Khatri--Rao concentration, Haar orientation/shape factorization, tangent-space dimension geometry, and finite-path convergence | The branch combines these into an initialization-normal certificate and a same-target physical residual floor for ordinary balanced GD. This is the strongest new mechanism in the lower-bound portfolio, but no verified closest-mechanism search was completed. |

## Subproblem 001 evaluation

### Perspective 1 / idea 7: proposal clustering and frozen ALS landing

**Advertised theorem.** The public theorem gives

\[
k=\left\lceil C_{\rm rank}r^{5/3}(\log r)^{5/2}\right\rceil=o(r^2)
\]

and an end-to-end randomized procedure consisting of tensor-Jacobi proposal
slots, observable retention and clustering, a synchronized three-mode frozen
least-squares landing, and subsequent cyclic ALS. It claims high probability
over smoothing, restart-amplified success over initialization, polynomial dense
runtime, and relative Frobenius error at most `epsilon ||T||_F`
(`3_main.tex:3-105`, with the explicit specialization at `3_main.tex:107-142`).

**Solution claim sheet.** This is a target-facing special-case upper bound, not
a full arbitrary-base theorem. Its added primitive conditions are bounded
polynomial base scales, cumulative coherence
`bar q <= q_*/4 = 1/16384`, base-weight ratio at most `1+1/800`, and a
scale-aware small-smoothing/dimension margin (`1_intro.tex:140-185`). The
procedure is more elaborate than unmodified ALS but is still a completely
specified random-initialized iterative method; the paper explicitly permits
"other iterative algorithms." Generated coverage, landing, and contraction
events are proved rather than assumed (`1_intro.tex:188-190`).

**Progress: `P6/P10`.** The theorem matches every quantitative endpoint clause
within its declared class: strict subquadratic rank, the exact smoothed noise
law, separate smoothing and restart probabilities, polynomial runtime in the
required variables, and the required relative Frobenius residual. It also
strictly improves the paper's `O(r^2)` baseline to exponent `5/3`, up to
polylogarithmic factors. This is material progress on a nontrivial
near-orthogonal, nearly equal-weight smoothed subclass. It is not `P7+` because
the tiny cumulative-coherence and near-balance restrictions exclude general
well-conditioned bases and a fortiori arbitrary bases; these assumptions
substantially simplify feature separation. The score is the same under the
paper's arbitrary-base and well-conditioned-base readings because the branch
is materially narrower than either. The remaining gap is removal or major
weakening of those restrictions. Because headline soundness is capped at `S6`
below, this `P6` is provisional claimed progress rather than fully established
material progress.

**Soundness: `S6/S10`.** No concrete counterexample or unsupported theorem
interface was found in the audited critical chain.

- The all-target coupon calculation is public at `5_appendix.tex:926-1119`,
  and the coefficient/pair-mass recurrence and its denominator checks are at
  `5_appendix.tex:1149-1590`.
- The frozen pair/cross-Gram expansion, positive reserves, and simultaneous
  Moore--Penrose solves are derived at `5_appendix.tex:2872-3573`; no landing
  output feeds another landing solve.
- The local chronological ALS block calculation and quotient contraction are
  derived in the current notation at `5_appendix.tex:3577-4020`. The reference
  to Uschmajew (2012) at `5_appendix.tex:3582-3590` is contextual; the consumed
  contraction is proved inline.
- Stopping, restart amplification, and the full dense-work specialization are
  assembled at `5_appendix.tex:4239-4587`.

The appendix is 4,960 lines and contains 57 theorem-style results. The central
recurrence, landing algebra, local ALS calculation, probability nesting, and
runtime conversion were independently checked, but every theorem-critical
derivation was not exhaustively reproduced. The rubric expressly caps a
representative rather than exhaustive audit at `S6`. Thus this score reflects
verification depth, not a discovered false inference. Artifact compliance is
otherwise a pass, subject to the environment-only recompilation limitation
noted above.

**Technical novelty: provisional `N4/N10`.** The extreme-coordinate proposal
coverage followed by label-free clustering and one synchronized frozen landing
is a nontrivial architecture for bypassing the explicit `r^2` all-pairs span
argument. It is proof-critical: without coverage and landing, the local cyclic
ALS contraction cannot start. However, Gaussian order statistics,
power/tensor-contraction separation in incoherent models, Gram perturbation,
and local ALS contraction are standard ingredient classes. With no completed
fresh nearest-neighbor audit, the rubric caps the score at `N4`; no technical
breakthrough claim is justified.

**Bottom line.** Provisional material special-case progress and the only
accepted result for this subproblem. Weighted score: **`5.6/10`**.

## Subproblem 001 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 | Perspective 1 / idea 7 | 6 | 6 | 4 | **5.6** | Material subquadratic special-case claim; proof audit remains provisional. |

## Subproblem 002 evaluations

### Perspective 1 / idea 2: fixed-one-mode constrained ALS and GD

**Advertised theorem.** The branch freezes the first factor mode of each method
inside its random initialization span (`1_intro.tex:37-114`). For every
`r < k <= r^(5/4)` and `n >= 8r^(5/4)`, it proves simultaneously for cALS and
cGD, with probability at least `1/4`, an all-time objective floor and existence
of a finite scalar objective limit at least `3||T||_F^2/8`
(`3_main.tex:3-45`).

**Progress: `P2/P10`.** This is a rigorous diagnostic showing how a fixed
random feature span creates a permanent approximation barrier. It covers the
full smoothed model, arbitrary deterministic bases, a superlinear rank window,
both named method families, and constant joint probability. Two central target
clauses fail, however. First, cALS and cGD are deliberately constrained
procedures, not ordinary ALS or full-variable GD, and no transfer to their
endogenous moving spans is proved (`3_main.tex:43-45`). Second, the theorem
proves convergence only of the scalar objective value, not convergence of the
factor iterates to a positive-objective solution. The exponent `5/4` is also
incidental: the projection argument uses `k/n <= 1/8`, not a tensor-dynamic
superlinear threshold. This diagnoses an artificial fixed-feature route rather
than closing a material clause of the original dynamics. `P2` applies under
both the permissive algorithm-specific and conjunctive ALS-plus-GD readings.

**Soundness: `S9/S10`.** The exactly stated restricted theorem is complete and
auditable.

- Gaussian initialization produces independent Haar `k`-planes, and both
  procedures preserve the corresponding tensor subspace exactly
  (`5_appendix.tex:53-245`).
- Conditional projector isotropy plus Markov gives the joint energy event;
  exact Pythagoras then gives the all-time same-target floor
  (`5_appendix.tex:258-561`).
- The minimum-norm sequential ALS blocks have nonincreasing nonnegative
  objective and hence a finite scalar limit (`5_appendix.tex:799-847`). The
  Armijo line search is shown well-defined and yields the analogous cGD limit
  (`5_appendix.tex:1013-1085`).
- The joint probability and limit passage are closed at
  `5_appendix.tex:1349-1527`, including zero and singular boundary branches.

No external theorem is used as proof authority. Component score is raw `10`,
hence base `S9`; `S10` is withheld because the proof was not independently
reformalized. Artifact compliance passes, with the recompilation limitation
already recorded.

**Technical novelty: provisional `N2/N10`.** The proof is a direct application
of fixed-subspace preservation, Haar-projector energy, Markov's inequality,
Pythagoras, and monotonicity of a nonnegative objective. Simultaneously stating
the obstruction for two constrained methods is tidy but does not create a new
technical mechanism. The score is below the unavailable-search cap on its
substance.

**Bottom line.** Established diagnostic progress for an altered protocol, not
a lower bound for ordinary ALS or GD. Weighted score: **`4.8/10`**.

### Perspective 2 / idea 2: adaptive-projector path certificate

**Advertised theorem.** For unconstrained half-relaxed parallel ALS, the branch
defines a four-clause certificate consisting of an initial coefficient deficit,
finite total adaptive-projector motion, finite represented-tensor variation,
and smoothing/target-scale bounds (`2_preliminary.tex:55-90`). Membership
implies a finite limiting objective bounded below by an explicit positive
fraction of `||T||_F^2` (`3_main.tex:3-74`). The theorem expressly proves
neither nonemptiness nor positive probability of the certificate
(`3_main.tex:35-37`, `76-79`).

**Progress: `P3/P10`.** The moving-subspace transport is a genuine structural
bridge beyond the fixed-span diagnostic: an initial coefficient deficit cannot
be erased if the total projector path is small. But the finite projector-path
and finite represented-tensor-variation clauses assume the central all-time
dynamical control. No probability or nonempty trajectory class is established,
and the proof itself notes that no feature of the ALS map is used to obtain
certificate membership (`5_appendix.tex:828-835`). The advertised `r^(5/4)`
window therefore plays no role in the conditional implication. The conclusion
also gives represented-tensor/objective convergence rather than convergence of
the factor iterates to a solution. The rubric's central-property cap gives
`P3`. The same score applies under both readings of the paper's method list.

**Soundness: `S9/S10`.** The conditional implication is mathematically closed.

- The exact coefficient identity is transported through the moving projector
  path with the correct operator-norm charge (`5_appendix.tex:280-400`).
- The smoothing defect is subtracted once, and the coordinate-space floor is
  transferred in the correct direction through the left-map operator bound
  (`5_appendix.tex:440-553`).
- Unsquared finite represented-tensor variation gives a Cauchy sequence and a
  finite objective limit (`5_appendix.tex:627-729`).
- The all-time residual floor passes to that same limit without changing the
  norm or probability mode (`5_appendix.tex:757-878`). Empty certificates,
  zero targets, stationary paths, rank jumps, and rectangular coordinate maps
  are explicitly handled.

The proof is self-contained and uses no external theorem as authority.
Component score is raw `10`, hence base `S9`; `S10` is withheld. Artifact
compliance passes, subject to the environment-only recompilation limitation.

**Technical novelty: provisional `N3/N10`.** Charging an adaptive CP feature
space by total projector motion is a useful formulation and is more reusable
than a fixed-span obstruction. The proof-critical operations are nevertheless
the standard distance-to-subspace identity, a projector telescope, triangle
inequality, operator-norm transfer, and finite-variation convergence. The new
object is mainly a clean certificate, and the certificate assumes rather than
controls the dynamics. `N3` is appropriate even before applying the `N4`
evidence cap.

**Bottom line.** Established structural conditional progress, with the main
probability/dynamics burden still assumed. Weighted score: **`5.4/10`**.

### Perspective 3 / idea 3: tangent-deficit certificate for balanced GD

**Advertised theorem.** For unconstrained simultaneous full-batch gradient
steps followed by a product-preserving balancing gauge, with step size
`(nkr)^(-12)`, the branch
covers `r < k <= r^(5/4)` and well-conditioned smoothed factors
(`1_intro.tex:52-68`, `182-221`). It proves a generated initialization-normal
event with probability at least `1-r^(-10)`. Conditional on that event and the
single trajectory condition that total factor-path length is at most `E_*`, it
proves convergence of the factor iterates and a positive relative physical
loss (`3_main.tex:3-35`). It retains the path-event probability exactly and
allows it to be zero (`3_main.tex:37-39`).

**Progress: `P3/P10`.** This is the closest of the three lower-bound branches
to the paper's GD-type endpoint: it uses full-variable gradient steps without
projection or clipping, a source-aligned smoothed model, the required
superlinear window, actual factor convergence, and the physical Frobenius
objective. The balancing gauge is an explicit protocol modification because
it affects later gradients, even though it preserves the represented tensor at
each application. The branch also proves rather than assumes the
high-probability initialization geometry. However, the finite total path event
is the central stability/convergence burden, and no positive lower bound on its
probability is established. Therefore the required constant-probability lower
bound is wholly missing, and the central-property cap gives `P3`. Under the
permissive reading it is a GD-specific structural advance; under the
conjunctive reading it additionally lacks ALS coverage. The numerical score is
unchanged because the central probability gap already imposes the lower cap.

**Soundness: headline `S6/S10`; deterministic endpoint implication locally
`S9/S10`.** No internal inconsistency was found in the checked QR/reflection,
Haar-twirling, tangent-range, endpoint Taylor-cancellation, finite-path, or
same-target physical-transfer chains. The endpoint implication is explicit:
finite path gives factor convergence (`5_appendix.tex:2980-3224`), the initial
tangent normal cancels the first-order endpoint variation and leaves a
controlled quadratic remainder (`5_appendix.tex:3308-3710`), and the
coefficient deficit transfers to positive physical loss
(`5_appendix.tex:3714-3887`). This deterministic conditional portion is locally
`S9`.

The headline theorem also includes the high-probability initialization-normal
claim. Its proof relies materially on cited Gaussian norm and singular-value
perturbation bounds, Laurent--Massart, matrix Bernstein, Haar uniqueness, and
the Ricci/Bakry--Emery log-Sobolev route. The applications are restated and
specialized in detail, but the primary sources were unavailable for independent
verification (`5_appendix.tex:86`, `165`, `593`, `665-669`, `762`, `1667`,
`2176`, and `2230`). The rubric caps an unverified theorem-critical citation at
`S6`. The 4,143-line, 45-result appendix was also not exhaustively independently
reproduced. Thus `S6` is the required headline score; it identifies an evidence
gap, not a known false statement. Artifact compliance otherwise passes.

**Technical novelty: provisional `N4/N10`.** The normalized Khatri--Rao
geometry, exact product-Haar orientation/shape factorization, fixed-target
tangent leverage, endpoint Taylor cancellation, and physical residual transfer
form a substantive proof architecture. Unlike Perspective 2, the branch proves
that its initialization deficit is typical and asks only one trajectory
condition for the endpoint step. These components are proof-critical and make
this the conceptually strongest lower-bound mechanism in the portfolio.
Nevertheless, tangent dimension arguments, Haar concentration, Gaussian
Khatri--Rao conditioning, and finite-path endpoint control all have standard
precedents, and a fresh closest-neighbor search could not be completed. `N4`
is therefore both the evidence cap and the defensible current score.

**Bottom line.** The strongest conceptual lower-bound route, but still only a
conditional structural result and provisionally sound at headline level.
Weighted score: **`4.4/10`**.

## Subproblem 002 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 | Perspective 2 / idea 2 | 3 | 9 | 3 | **5.4** | Best strict-rubric score: complete moving-projector conditional reduction. |
| 2 | Perspective 1 / idea 2 | 2 | 9 | 2 | **4.8** | Fully sound but artificial fixed-span diagnostic for constrained methods. |
| 3 | Perspective 3 / idea 3 | 3 | 6 | 4 | **4.4** | Strongest mechanism, lowered by the mandatory citation/exhaustiveness soundness cap. |

This is the final ranking under the requested `40%/40%/20%` rule and the
currently available evidence. It is stable under permissive versus conjunctive
readings of the paper's ALS/GD wording because the protocol/probability caps are
already lower. It is not stable to completion of the Perspective 3 citation
audit: if those primary applications are verified and exhaustive checking
raises its headline soundness from `S6` to `S9`, its weighted score becomes
`5.6`, moving it to rank 1. No analogous evidence-only change would make any
branch solve Open Problem 3; the positive-probability path control would remain
open.
