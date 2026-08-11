# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`, response-grid and transcript structure, with
  only the reached nearest-grid exact-center executions retained.
- Current idea: `idea_3`, exactification of a pre-instance catalog that covers
  terminal predictors only under the canonical rounded policy.
- Setting / goal summary: Under the universal randomized adaptive unrestricted
  SQ premise, the deterministic policy
  \(q\mapsto\rho(\mathbb E_{\mathcal D}q(x,h(x)))\) is one
  tolerance-valid policy.  A primitive catalog
  \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\), fixed before the instance, covers
  every tape's terminal predictor on these actual canonical executions and
  obeys \(1\le L\le B(1+m/\tau^2)^k\).  The goal is one deterministic
  catalog-coordinate map and, for every target, one simplex weight having
  pointwise margin at least \(1-2\varepsilon\) on the whole arbitrary domain.

## Candidate Frameworks

### Framework 1: Canonical-valid catalog game and fixed-simplex exactification

- Source papers: *Invited Open Problem: Is the Power of Deep Learning over
  Linear Models Inherently Distribution Dependent?* (COLT 2026),
  https://proceedings.mlr.press/v336/feldman26a.html; *A General
  Characterization of the Statistical Query Complexity* (COLT 2017),
  https://proceedings.mlr.press/v65/feldman17c.html; Maurice Sion, *On General
  Minimax Theorems* (Pacific Journal of Mathematics 8, 1958), Theorem 3.4,
  https://doi.org/10.2140/pjm.1958.8.171; *Limitations of Learning via
  Embeddings in Euclidean Half Spaces* (JMLR 2002),
  https://jmlr.org/papers/v3/bendavid02a.html.
- Applicability to current branch: The COLT sources fix the universal
  randomized adversarial-SQ convention, and the JMLR source fixes the common
  deterministic sign-map target.  Neither source states the present
  conditional theorem.  The branch-specific bridge is elementary: validate
  one reached canonical policy, obtain a best catalog response from its
  actual-run expected loss, use a finite bilinear game on each finite subset,
  and apply the closed-set finite-intersection characterization of compactness
  in the same simplex \(\Delta_L\).  Sion's theorem supplies only the finite
  minimax order equality; every current object and hypothesis will be stated
  explicitly in the sketch.
- Proof roadmap:
  1. Prove the nearest-grid exact-center reply is within \(\tau\) at every
     reached adaptive query, including the zero-query branch, and invoke the
     primitive catalog only on those actual executions.  Dependencies: none.
     Assumptions: `assump:sq-parameter-regime`,
     `assump:universal-adversarial-sq`, and
     `assump:canonical-rounded-output-catalog`.
  2. For fixed \((\mathcal D,h)\), use the measurable actual-run loss and its
     finite range of catalog risks to obtain one catalog function of risk at
     most \(\varepsilon\), hence correlation at least
     \(\rho=1-2\varepsilon\).  Dependency: item 1.  Assumptions:
     `assump:universal-adversarial-sq` and
     `assump:canonical-rounded-output-catalog`.
  3. For fixed \(h\) and nonempty finite \(F\), instantiate item 2 for every
     finitely supported law \(\mathcal D_p\), form
     \(A_{xi}=h(x)g_i(x)\), and use
     \[
       \min_{p\in\Delta_F}\max_i p^TAe_i
       =\max_{w\in\Delta_L}\min_{x\in F}(Aw)_x.
     \]
     Dependency: item 2.  Assumption: `assump:sq-parameter-regime`, with the
     universal premise already discharged by item 2.
  4. Put each pointwise inequality in a closed subset of the fixed compact
     simplex.  Finite feasibility is exactly the finite-intersection property,
     so the arbitrary-family compactness theorem produces a global weight.
     Dependency: item 3.  No new theorem-facing assumption.
  5. Use exact coordinate equality and the primitive catalog-size inequality
     to obtain strict signs and the dimension bound.  Dependencies: items 1
     and 4.  Assumptions: `assump:sq-parameter-regime` and
     `assump:canonical-rounded-output-catalog`.
- Key lemmas / ingredients: nearest-grid covering radius; actual-run loss
  measurability from the universal premise; a finite-range best-response
  argument requiring no measurable catalog selector; the binary
  risk-correlation identity; Sion's finite-dimensional minimax theorem (or
  finite matrix-game duality); Heine--Borel compactness of \(\Delta_L\); the
  closed-set finite-intersection theorem proved from the open-cover definition;
  and exact catalog-coordinate algebra.
- Main transfer challenges: Keep the every-policy premise intact while using
  the canonical policy as one legitimate instantiation; never assign risk or
  measurability to an invalid synthetic transcript; state the minimax
  orientation with the distribution player minimizing and the catalog-mixture
  player maximizing; distinguish \(\forall F\,\exists w_{h,F}\) from the
  compactness conclusion \(\exists w_h\,\forall x\); and preserve the exact
  margin at empty, finite, infinite, and uncountable domains without a
  sequential-limit assumption.
- Potential repair techniques and supporting references:
  - Technique: Restate Sion's theorem in the exact finite matrix convention
    \(f(w,p)=p^TAw\), with \(w\) the maximizing variable and \(p\) the
    minimizing variable.
  - Supporting reference: Maurice Sion, *On General Minimax Theorems* (1958),
    Theorem 3.4, https://doi.org/10.2140/pjm.1958.8.171.
  - Why it may help: It prevents reversal of the quantifiers and shows that a
    catalog index allowed to depend on \(p\) yields one mixture working for
    every point of a fixed finite set.
  - Technique: Prove the finite-intersection implication directly: if the
    global closed-set intersection were empty, the open complements would
    cover \(\Delta_L\), and a finite subcover would contradict finite
    feasibility.
  - Supporting reference: James R. Munkres, *Topology*, second edition
    (Prentice Hall, 2000), Section 26, compact spaces.
  - Why it may help: The open-cover proof applies to arbitrary index sets and
    does not smuggle in sequential compactness or compatibility of the
    separately chosen finite witnesses.
- Disposition: `selected`
- Branch notes: This framework uses only the canonical-policy catalog named in
  the binding setting.  It neither derives a catalog from \((m,\tau)\) nor
  expands it to all valid policies.  It is nonduplicate with
  `perspective_3/idea_2`: that accepted branch assumes a finite terminal
  catalog on every complete tolerance-valid execution, whereas this branch
  permits an infinite output range away from the canonical rounded policy.

### Framework 2: Synthetic rounded response-tree random-feature law

- Source papers: `perspective_1/idea_2/technical_survey.md`;
  `perspective_1/idea_2/proof_review.md`; *Approximate is Good Enough:
  Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020),
  https://proceedings.mlr.press/v125/kamath20b.html.
- Applicability to current branch: Enumerating every grid reply string would
  again include tolerance-invalid synthetic executions.  The prior final
  review gives a concrete learner satisfying the then-binding premises for
  which the resulting feature-law risk is nonmeasurable.  The current theorem
  avoids this object rather than adding a measurable-kernel assumption.
- Proof roadmap:
  1. Replay every grid transcript for every tape.
  2. Form a random feature map from all replay outputs.
  3. Select the canonical coordinate and average its best tie risk.
- Key lemmas / ingredients: complete-tape replay, one-hot selection, and a
  pushforward feature-map law.
- Main transfer challenges: Joint measurability on tolerance-invalid replay
  branches is not supplied by `setting.md`; actual-run loss measurability does
  not imply it.
- Potential repair techniques and supporting references:
  - Technique: Discard every unreached replay coordinate and use only the
    primitive deterministic canonical-output catalog.
  - Supporting reference: `perspective_1/idea_2/proof_review.md` and the
    current `perspective_1/idea_3/setting.md`.
  - Why it may help: Every risk expectation then belongs to an actual valid
    execution, while the later matrix game needs only finite pointwise sums.
- Disposition: `rejected`
- Branch notes: Reusing this route would repeat the controlling failure and
  violate the current hard gate against a random feature-map law.

### Framework 3: All-valid-policy terminal catalog

- Source papers: `perspective_3/idea_2/idea.md`;
  `perspective_3/idea_2/technical_survey.md`.
- Applicability to current branch: The finite-simplex mathematics is nearby,
  but its primitive catalog covers every valid response policy.  Substituting
  that assumption here would strengthen the binding canonical-only catalog
  and erase the branch's approved nonduplication boundary.
- Proof roadmap:
  1. Push each valid-policy output law through the all-valid catalog.
  2. Derive catalog correlation.
  3. Apply finite minimax and compactness.
- Key lemmas / ingredients: finite terminal selector, finite matrix minimax,
  and fixed-simplex compactness.
- Main transfer challenges: The current setting supplies no all-policy
  selector or all-policy finite output range, and neither is needed for the
  canonical instantiation.
- Potential repair techniques and supporting references:
  - Technique: Restrict catalog membership to the actual canonical policy and
    derive all downstream game inequalities from that one valid execution.
  - Supporting reference: `perspective_1/idea_3/setting.md`.
  - Why it may help: It proves the narrower theorem without importing a
    duplicate stronger protocol certificate.
- Disposition: `rejected`
- Branch notes: This framework is retained only to mark the exact boundary;
  it is not an assumption source for the current proof.
