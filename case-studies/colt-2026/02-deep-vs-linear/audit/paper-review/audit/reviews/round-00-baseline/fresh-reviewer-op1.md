# Fresh-reviewer audit: Open Problem 1

Date: 2026-07-22

## Scope and independence

This is an unanchored mathematical audit of the three accepted bundles under
`sp-01/results/`:

- `perspective_1/idea_3`: conditional polynomial probabilistic dimension from stable gates;
- `perspective_2/idea_2`: conditional deterministic amplification from confident maps;
- `perspective_3/idea_2`: exact identity representation in an odd, high-accuracy, depth-two regime.

I read the complete accepted LaTeX source in each bundle, including every line
of each appendix proof. I used only `paper.pdf` and
`sp-01/RESEARCH_BRIEF.md` to identify the source target. I did not
consult any `proof_review*.md`, workflow review, `LITERATURE_SURVEY.md`, or the
`research-lit` skill. Novelty is therefore not certified by this report; the
report establishes internal mathematical validity and exact progress relative
to the source question.

## Executive verdict

The exact open question remains open. It asks whether the universal expected
success premise alone implies
`dc(H) <= C T S` for arbitrary depth, class, dimension, and every
`epsilon < 1/4`; see `paper.pdf`, p. 3, and
`sp-01/RESEARCH_BRIEF.md:49-61`. None of the three results proves that
implication or constructs a counterexample satisfying all of its quantifiers.

| Result | Mathematical verdict | Actual proved endpoint | Progress toward exact O(TS) question |
|---|---|---|---|
| perspective_1 / idea_3 | **SOUND as an explicitly conditional theorem** | Under fixed constant depth and a high-probability static robust gate tube, a tie-resolved probabilistic dimension satisfies `dc_(epsilon+delta0)(H) <= d_path <= S^L0`, hence `dc_(2 epsilon)(H) <= S^L0`. | **2/5: modest genuine conditional progress toward a source-endorsed relaxation.** It gives a polynomial probabilistic-dimension bound, but assumes the missing all-input gate-stability regime and does not yield deterministic dimension or linear `TS`. |
| perspective_2 / idea_2 | **SOUND as an explicitly conditional reduction** | If a target-independent tie-resolved 1/2-confident exact map of dimension `d` is separately available, then `dc(H) <= 7 T S d`. | **1/5: small formal/reduction progress.** It exactifies a confident witness at an `O(TS)` multiplicative cost, but supplies no bound on `d`; choosing `d=dc(H)` makes the conclusion tautological. |
| perspective_3 / idea_2 | **SOUND** | For bias-free depth-two networks, antipodally odd classes, and `2 epsilon < 1/(n+1)`, universal source success forces exact identity-coordinate representation and `dc(H) <= n <= S <= TS`. | **3/5: strongest result, a nontrivial exact special case.** It gets the desired deterministic linear conclusion with constant one, but only under strong architecture, class-symmetry, and `epsilon=O(1/n)` restrictions. |

Progress-score scale: 0 = no useful implication; 1 = conditional restatement or
reduction; 2 = meaningful relaxed/conditional theorem; 3 = nontrivial exact
special case; 4 = near-general theorem; 5 = full proof or disproof of the
source question.

## Cross-cutting claim-identity issue

The source's displayed confident/probabilistic definitions use the real score
`h_(w,phi)(x)=<w,phi(x)>` inside a strict `<0` loss; see
`sp-01/RESEARCH_BRIEF.md:72-84`. Taken literally, `w=0` makes those
relaxed quantities degenerate. All three bundles sensibly repair this by fixing
a binary tie label and applying a tie-resolved sign to the score. For example:

- perspective 1 defines its tie-resolved risk and then uses the unqualified
  symbol `dc_alpha` at
  `sp-01/results/perspective_1/idea_3/theory/latex_template/1_intro.tex:21-49`;
- perspective 2 explicitly assumes a "tie-resolved confident map" at
  `sp-01/results/perspective_2/idea_2/theory/latex_template/1_intro.tex:102-119`;
- perspective 3 calls its tie-resolved quantity confident dimension at
  `sp-01/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:74-95`.

This does not invalidate any proof: exact tie-resolved representation is
stronger than the literal raw-score criterion, and on the finite cube the
full-support uniform distribution converts zero tie-resolved risk into exact
pointwise representation. A paper-ready presentation should nevertheless use
distinct notation such as `dc^tie_alpha`, state the degeneracy being repaired,
and prove the one-line implication to the source's literal relaxed quantity.
Otherwise readers may mistake a strengthened repaired notion for the displayed
source definition.

All three bundles also have effectively empty bibliographies: the files end
with the placeholder "Add BibTeX entries" at
`sp-01/results/perspective_1/idea_3/theory/latex_template/reference.bib:36`,
`sp-01/results/perspective_2/idea_2/theory/latex_template/reference.bib:36`, and
`sp-01/results/perspective_3/idea_2/theory/latex_template/reference.bib:36`.
None of the LaTeX bodies positions the theorem against prior work. Thus the
proofs can be genuine mathematical deductions while the bundles themselves do
not provide evidence of novelty.

## Result 1: perspective_1 / idea_3

### Claim audited

The extra assumptions are visible rather than hidden: constant depth appears
at `sp-01/results/perspective_1/idea_3/theory/latex_template/1_intro.tex:208-214`, and the
static robust tube event with failure probability `delta0 <= epsilon` appears
at `sp-01/results/perspective_1/idea_3/theory/latex_template/1_intro.tex:216-228`. The theorem claims only the unconditional
initialization-gate law and polynomial tie-resolved probabilistic dimension at
`sp-01/results/perspective_1/idea_3/theory/latex_template/3_main.tex:4-40`; it expressly disclaims unrestricted depth,
deterministic dimension, and removal of the tube at `sp-01/results/perspective_1/idea_3/theory/latex_template/1_intro.tex:230-257`.

### Proof audit

1. **Gradient envelope: correct.** The forward envelope bounds every weight
   and activation on the closed coordinate ball
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:9-67`). Back-propagated adjoints use only
   `0 <= rho_kappa <= 1`, and the logistic derivative is bounded by one
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:69-157`). The output-layer `y` factor and all layer
   dimensions are correct.

2. **Tube containment: correct and non-circular.** Membership in `E_r` supplies
   only `eta T G_r <= r`; current ball membership is established before the
   gradient envelope is applied, and induction gives containment through the
   terminal state (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:187-280`). This handles `T=1`, `G=0`,
   and equality on the closed boundary.

3. **Gate constancy: correct.** Preactivations are continuous along line
   segments in the convex ball. A positive infimum excludes zero crossings and
   fixes every hidden gate for every cube input and every possible labeled
   history (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:290-419`). No derivative-at-zero convention is
   used in this step.

4. **Path representation: correct.** With fixed gates, the exact network is a
   finite path expansion whose coefficient is the product of current weights;
   summing later iterates produces one feasible coefficient vector without
   changing the initialization feature map
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:423-563`). The indexing has exactly
   `prod_(ell=0)^(L-1) n_ell` paths. A direct depth-two numerical check on all
   eight points of the `n=3` cube gave maximum residual
   `3.33e-16`, consistent with exact floating-point roundoff.

5. **Probability and infimum order: correct.** For each fixed stable map, the
   feature-space infimum is bounded by every history-dependent feasible
   coefficient before the sample tuple is averaged
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:590-683`). Thus there is no illicit
   `E inf`/`inf E` interchange. The gate map has finite range, so the
   pushforward expectation is measurable without choosing a measurable
   minimizer (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:705-760`).

6. **Event split: correct.** Stable initializations are bounded by the actual
   learner loss, unstable initializations are charged once by unit loss, the
   unconditioned learner expectation contributes at most `epsilon`, and the
   complement contributes at most `delta0`
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:762-890`). The law itself is not conditioned on the
   good event, preserving the required initialization-first quantifier order
   (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:892-922`).

7. **Dimension arithmetic: correct.** Positivity of every adjacent width gives
   each `n_j <= S`, hence `d_path <= S^L <= S^L0`; threshold monotonicity then
   gives the `2 epsilon` statement (`sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:927-1001`).

### Boundary and counterexample attacks

- `L=1` reduces exactly to the identity feature map with `d_path=S`; there are
  no gate claims to misuse (`sp-01/results/perspective_1/idea_3/theory/latex_template/3_main.tex:42-47`).
- `epsilon=delta0=0` is algebraically handled. For a deep network and fixed
  `r>0`, however, probability-one robust margin is generally an extremely
  strong or possibly empty parameter regime; the theorem is still logically
  valid because it is conditional.
- Zero weights, canceling paths, ReLU kinks outside `E_r`, and boundary states
  do not break the equalities; these cases are explicitly retained at
  `sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:510-519`,
  `sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:557-563`, and
  `sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:371-375`.
- The only minor formal omission is that Borel measurability of `E_r` itself is
  not separately proved before its indicator is used at
  `sp-01/results/perspective_1/idea_3/theory/latex_template/5_appendix.tex:858-887`. It follows by compact-parametric minima/maxima
  on the positive-margin region (and is implicit in the probability
  assumption), so this is a short repair rather than a soundness defect.

### Progress assessment

This is not a consequence of the original SGD premise alone. The robust tube
requires one initialization event on which **every hidden gate, every cube
input, and every possible labeled history** stays in one activation cell. That
assumption is close to imposing a random-feature regime; the proof does not
derive its high probability from universal learner success. Subject to that
restriction, the theorem is still a clean polynomial bound on a
source-endorsed probabilistic relaxation, with the desired `2 epsilon`
threshold and no hidden `n` dependence. It is meaningful but modest
conditional partial progress.

## Result 2: perspective_2 / idea_2

### Claim audited

The additional premise is one target-independent law whose maps represent each
fixed target exactly with probability at least one half
(`sp-01/results/perspective_2/idea_2/theory/latex_template/1_intro.tex:102-119`). The
bundle explicitly says this premise and any polynomial bound on `d` are not
derived from SGD (`sp-01/results/perspective_2/idea_2/theory/latex_template/1_intro.tex:121-137` and `sp-01/results/perspective_2/idea_2/theory/latex_template/3_main.tex:22-24`). The
claimed conclusion is `dc(H) <= 7 T S d` (`sp-01/results/perspective_2/idea_2/theory/latex_template/3_main.tex:4-20`).

### Proof audit

1. **No-free-lunch/VC step: correct.** If `2T` points are shattered, assign
   independent fair labels. Exact SGD is measurable with respect to only the
   sampled labels (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:136-199`). Conditional on the test point
   being unseen, its label remains fair even after initialization and repeated
   training inputs (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:201-258`). The avoidance probability is
   `(1-1/(2T))^T >= 1/2`, including equality at `T=1`
   (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:260-302`). Averaging gives risk at least `1/4`, then a
   fixed target is selected before contradicting `epsilon<1/4`
   (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:304-405`). No random target remains in the final
   contradiction.

2. **Class-count budget: correct.** The self-contained Sauer-Shelah induction
   is valid (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:423-516`). With domain size `2^n`,
   `VC(H)<2T`, and the fully connected first-layer count `S>=n`, the proof pays
   every logarithm and ceiling to obtain
   `r=ceil(log2(2|H|)) <= 7TS`
   (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:581-668`). The loose constant is valid at
   `T=n=S=1`.

3. **Confidence amplification: correct.** For a fixed target, `r` independent
   maps miss it with probability at most `2^-r`; a union bound over the finite
   class leaves positive probability of one tuple covering every target
   (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:687-847`). Independence is used across map draws, not
   incorrectly across targets. The final order is one deterministic tuple,
   then all targets, then target-specific block and separator
   (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:838-846`).

4. **Direct sum and ties: correct.** Concatenating the tuple and zero-padding
   the chosen block preserves the exact real score, including zero, and gives a
   common map of dimension `rd` (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:900-970`). Therefore
   `dc(H) <= rd <= 7TSd` (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:972-999`). Empty classes and
   `d=0` are separately and correctly closed at
   `sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:9-116`.

### Boundary and counterexample attacks

- Direct computation for `1 <= T <= 100` confirms the avoidance probability is
  minimized at `T=1`, where it is exactly `1/2`; the proof's endpoint is safe.
- Repeated training samples reveal fewer labels and can only strengthen the
  unseen-label argument; the sigma-field proof accounts for them.
- At `d=0`, the sole tie-resolved classifier is the constant tie label, so the
  confident premise indeed forces every target to be that constant
  (`sp-01/results/perspective_2/idea_2/theory/latex_template/5_appendix.tex:39-80`).
- On the finite cube, the all-points confident event is equivalent to
  instantiating a tie-resolved confident-dimension definition at the uniform
  full-support distribution. The bundle should state this bridge explicitly,
  especially because the source's raw-score notation is ambiguous.

### Progress assessment

The theorem is a valid exactification reduction, but it does not establish the
hard input `d`. A deterministic optimal map always yields a point-mass
confident law with `d=dc(H)`, in which case the result says only
`dc(H) <= 7TS dc(H)`. Its useful content is conditional: a future bound
`d=poly(S,T)` would immediately give a deterministic polynomial bound (though
not the desired linear bound), as correctly stated at
`sp-01/results/perspective_2/idea_2/theory/latex_template/3_main.tex:26-50`. This is small formal progress and should not be
advertised as resolving either the confident-dimension relaxation or the
original deterministic question.

## Result 3: perspective_3 / idea_2

### Claim audited

The theorem is restricted to a bias-free depth-two network with
`S=m(n+1)` (`sp-01/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:29-44`),
antipodally odd targets (`sp-01/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:99-105`), and the strict regime
`2 epsilon < 1/(n+1)` (`sp-01/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:107-114`). Under the unchanged universal
source success premise (`sp-01/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:116-129`), it claims the identity map
exactly represents every target and hence `dc(H) <= TS`
(`sp-01/results/perspective_3/idea_2/theory/latex_template/3_main.tex:4-37`). These restrictions are expressly acknowledged at
`sp-01/results/perspective_3/idea_2/theory/latex_template/3_main.tex:39-41`.

### Proof audit

1. **ReLU antisymmetrization: exact.** The scalar identity
   `sigma(r)-sigma(-r)=r` yields
   `f(x)-f(-x)=<W^T a,x>` at every iterate, without using the SGD update.
   Summing the returned iterates gives exactly
   `A_omega(x)=<v_omega,x>` (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:8-91`). Both layers being
   trainable causes no cross-term issue because the identity is applied to each
   realized state separately.

2. **Tie-aware risk transfer: correct.** The four `(s0,h(x))` cases show that
   simultaneous correctness at `x` and `-x` forces the antisymmetric score to
   have the strict target sign; one of the two source inequalities is always
   strict (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:110-160`). Summation and the change of variables
   `z=-x` give the exact factor-two bound under the symmetrized distribution
   (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:162-213`).

3. **Expectation and extraction: correct.** Universal success is invoked on
   the legal distribution `D^sym`, while evaluation remains under the original
   `D`, yielding expected linear risk at most `2 epsilon`
   (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:229-308`). Since the finite-domain risk has only
   finitely many subset-sum values, expectation at most `c` guarantees a
   realized deterministic vector with risk at most `c`, including equality and
   `c=0` (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:310-381`). There is no invalid comparison between
   an expected loss and an arbitrary trajectory.

4. **Strict separability interface: correct.** Choosing the member labeled
   `-s0` from each antipodal pair makes exact representation equivalent to
   strict inequalities `h(q)<w,q> > 0`; a zero score is necessarily an error on
   each representative (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:400-474`).

5. **Convex obstruction: correct.** If no strict separator exists, the closest
   point of the convex hull of the signed representatives must be zero
   (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:488-534`). Affine-dependence pruning gives a positive
   certificate on at most `n+1` points (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:536-591`). Under
   the uniform distribution on those points, signed cancellation forces at
   least one error for every `w`; equality at zero is correctly counted as an
   error because every selected target label is `-s0`
   (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:593-704`).

6. **Exactification and dimension: correct.** Applying the extracted
   `2 epsilon` separator to the obstruction distribution contradicts the
   strict accuracy gap (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:709-750`). The resulting separator
   depends only on the target; the identity feature map is common to the whole
   class (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:752-800`). Finally `n <= m(n+1)=S <= TS`
   (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:862-889`).

### Boundary and counterexample attacks

- For `n=3`, take cubic parity `h(x)=x_1 x_2 x_3` and `s0=+1`. Its four
  representatives with label `-1` are
  `(-1,-1,-1), (-1,1,1), (1,-1,1), (1,1,-1)`. The corresponding signed vectors
  `h(q)q=-q` sum to zero. Thus every homogeneous separator makes at least one
  error under their uniform distribution, exactly `1/4=1/(n+1)` in the best
  case. This confirms that the strict inequality in the theorem is essential
  to this proof and that equality cannot be silently included. It is not a
  counterexample to the theorem, which excludes equality and does not assert
  that parity satisfies the universal SGD premise.
- `w=0` is not a loophole: every obstruction atom has target `-s0`, so its
  tie-resolved error is one (`sp-01/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:642-664`).
- `n=1`, `m=1`, `T=1`, empty classes, zero scores, and either tie label are all
  covered. For `n=1`, the odd-class conclusion is already elementary; the
  theorem becomes substantively nontrivial only in higher dimension.

### Progress assessment

This is the strongest of the three accepted results because its conclusion is
the exact deterministic dimension and has the requested linear dependence with
constant one. It is nevertheless far from a full solution: the source permits
arbitrary depth and arbitrary classes at any fixed `epsilon<1/4`, while this
theorem requires depth two, antipodal oddness, and
`epsilon < 1/(2(n+1))`, which vanishes with dimension. The proof uses no
specific property of logistic SGD beyond the fact that the randomized
procedure outputs aggregates of bias-free depth-two ReLU networks and meets
the universal risk premise. This broader structural interpretation is worth
stating, but it also shows that the result does not yet illuminate the detailed
SGD dynamics central to the unrestricted problem.

## Core-dimension scores

Scale: 1 (poor/missing), 3 (adequate draft), 5 (submission-level). For these
theory-only bundles, "evidence" scores the completeness of proof support and
stress tests, not experiments.

| Result | Story logic | Theory rigor | Evidence | Writing structure | References / positioning |
|---|---:|---:|---:|---:|---:|
| perspective_1 / idea_3 | 3 | 4 | 4 | 3 | 1 |
| perspective_2 / idea_2 | 3 | 5 | 4 | 3 | 1 |
| perspective_3 / idea_2 | 4 | 5 | 5 | 4 | 1 |

Rationale:

- The theorem scopes and dependency chains are unusually explicit, but the
  files begin directly with setup rather than explaining the source gap,
  contribution, and comparison among the three results.
- The appendices are mathematically careful and handle quantifiers, ties,
  finite horizons, null cases, and dimension arithmetic. Perspective 1 loses
  one rigor point for the unstated `E_r` measurability lemma and the overloaded
  probabilistic-dimension notation.
- The proof evidence is self-contained. Perspective 3 receives the strongest
  score because its structural identity, risk transfer, finite extraction, and
  sharp convex obstruction form a closed independent chain.
- The 900--1100 line appendices are far more repetitive than needed for the
  underlying arguments. Compression into a few substantive lemmas would make
  the work easier to verify and publish without sacrificing rigor.
- Literature positioning is absent, and every bibliography is a placeholder.
  No novelty claim should be made from these bundles alone.

## Final ranking and required claim language

1. **Perspective 3 / idea 2:** retain as a sound, nontrivial exact special-case
   theorem. Describe it as partial progress, not a resolution.
2. **Perspective 1 / idea 3:** retain as a sound conditional theorem for a
   strengthened tie-resolved probabilistic relaxation. Emphasize that the
   robust tube is an added premise not derived from universal SGD success.
3. **Perspective 2 / idea 2:** retain as a sound exactification reduction.
   State prominently that it has no standalone rate until a separate bound on
   confident dimension is proved.

Overall, the current Open Problem 1 results are mathematically genuine in the
sense that their conclusions do follow from their displayed assumptions; I
found no fabricated implication, hidden expectation swap, sign error, or
dimension-count failure. They amount to one strong but narrow exact special
case and two correct conditional reductions/relaxations. They do **not** solve
or disprove the original universal `dc(H) <= C T S` conjecture.
