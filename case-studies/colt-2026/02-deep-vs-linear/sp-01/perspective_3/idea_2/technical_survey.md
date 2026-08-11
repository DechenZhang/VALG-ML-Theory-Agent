# Technical Survey

## Current Idea Branch

- Perspective: Perspective 3, probabilistic/confident dimension complexity under the exact universal SGD premise.
- Current idea: `perspective_3/idea_2`, depth-two antipodal antisymmetrization followed by exact homogeneous separation.
- Setting / goal summary: For a bias-free depth-two ReLU learner and an antipodally odd class, use the primitive threshold (2\varepsilon<1/(n+1)) to prove that the deterministic identity map exactly represents every target, hence
  \[
  \operatorname{dc}^{1/2}(\mathcal H)\le \operatorname{dc}(\mathcal H)\le n\le S\le TS.
  \]

## Candidate Frameworks

### Framework 1: Exact antisymmetrization plus a finite convex alternative

- Source papers: Feldman, Kamath, and Srebro, *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/feldman26a.html); Rockafellar, *Convex Analysis* (Princeton Mathematical Series 28, 1970), for the finite-dimensional separation and Caratheodory framework.
- Applicability to current branch: The source learner is preserved exactly. Bias-free depth two supplies the pointwise identity (f(x)-f(-x)=\langle W^\top a,x\rangle), while oddness makes errors on an antipodal pair comparable. The remaining exactification is finite-dimensional convex geometry in the same identity coordinates. The proof sketch will derive the needed alternative and support reduction in current notation, so no unverified theorem wrapper is consumed.
- Proof roadmap:
  1. Prove exact trajectory-wise antisymmetrization and a tie-aware pair-error inequality.
  2. Invoke universal success on the symmetrized distribution to produce, for every ((\mathcal D,h)), a homogeneous halfspace of error at most (2\varepsilon).
  3. If exact strict identity separation fails, derive (0\in\operatorname{conv}\{h(q)q\}) and reduce a certificate to at most (n+1) points.
  4. Put the uniform distribution on that certificate, count ties using (h(q)=-s_0), contradict (2\varepsilon<1/(n+1)), and close the identity-map dimension chain.
- Key lemmas / ingredients: (\sigma(r)-\sigma(-r)=r); odd-target antipodal pair counting; expectation-to-existence on a finite domain; minimum-norm separation of a finite convex hull; affine-dependence support reduction; and a tie-resolved uniform-witness lower bound.
- Main transfer challenges: The learner must be invoked on (\mathcal D^{\mathrm{sym}}) while the exported halfspace is evaluated on the original (\mathcal D); the score difference must use (G(x)-G(-x)), not a trajectory-dependent feature law; equality in the strict system must be counted as an error on the selected representatives; and the certificate support must be at most (n+1), not an uncontrolled subset of the cube.
- Potential repair techniques and supporting references:
  - Technique: If a cited alternative theorem has a convention mismatch, replace it by the minimum-norm proof of (0\in\operatorname{conv}(Z)) and the elementary minimal-support affine-dependence argument.
  - Supporting reference: Rockafellar, *Convex Analysis* (1970), finite-dimensional convex separation and Caratheodory theory.
  - Why it may help: It keeps the source objects, Euclidean coordinates, strict inequality, and support count explicit and makes the later proof steps self-contained.
- Disposition: `selected`.
- Branch notes: This route preserves the parent learner exactly and changes only the explicitly formalized depth, oddness, and accuracy regime. The approximate-only (\operatorname{dc}_{2\varepsilon}\le n) endpoint is not substituted for the exact current goal.

### Framework 2: Stop after approximate homogeneous representation

- Source papers: Kamath, Montasser, and Srebro, *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020; arXiv:2003.04180).
- Applicability to current branch: Antisymmetrization alone gives a deterministic identity-coordinate halfspace with distribution-wise error at most (2\varepsilon). This is useful outside the high-accuracy regime but does not yield the exact identity-map event required by the present confident-dimension goal.
- Proof roadmap:
  1. Antisymmetrize the depth-two trajectory.
  2. Transfer expected source error to expected homogeneous-halfspace error.
  3. Record an approximate dimension-complexity conclusion.
- Key lemmas / ingredients: ReLU antisymmetrization and distribution symmetrization.
- Main transfer challenges: No exactification mechanism remains when (2\varepsilon\ge1/(n+1)); an approximate error bound is not a confident exact-representation event.
- Potential repair techniques and supporting references:
  - Technique: Add a finite infeasibility-witness threshold.
  - Supporting reference: Rockafellar, *Convex Analysis* (1970), finite-dimensional Caratheodory theory.
  - Why it may help: A support-((n+1)) witness is exactly what turns sufficiently small approximate error into strict separation.
- Disposition: `backup`.
- Branch notes: Retained only as the natural fallback theorem outside the current primitive high-accuracy condition; using it here would silently weaken the formalized goal.
