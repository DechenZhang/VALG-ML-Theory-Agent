# Technical Survey

## Current Idea Branch

- Perspective: `perspective_3`, exact monic-baseline recovery through moving affine hyperplanes.
- Current idea: `idea_1`, adaptive minimizing-coordinate pivot sweep for the affine family
  \(\phi_\alpha(\theta)=b(\theta)+\langle\alpha,F(\theta)\rangle\).
- Setting / goal summary: On a compact interval, \(b,F_1,\ldots,F_N\) are
  \(C^1\) functions in the Balcan--Nguyen--Sharma one-dimensional Pfaffian
  convention. There is no coefficient-independent forced root, and the random
  lower coefficients have an arbitrary correlated density on \([-R,R]^N\)
  capped by \(\kappa\). The target is the literal bound
  \[
  \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \le \kappa(2R)^{N-1}\Gamma_{\rm piv}(b,F;R)|I|,
  \]
  together with the exact \(1/\delta\) scale audit and exact recovery of the
  monic-polynomial Theorem 2 constant. This is a `material_partial` target:
  polynomial control of \(\Gamma_{\rm piv}\) by general Pfaffian instance
  complexity remains open.

## Candidate Frameworks

### Framework 1: Adaptive affine coordinate-fiber area sweep

- Source papers: Balcan, Dick, and Pegden, *Semi-bandit Optimization in the
  Dispersed Setting*, arXiv:1904.09014, especially Theorem 18 in the published
  supplement; Azais and Wschebor, *Level Sets and Extrema of Random Processes
  and Fields*, DOI:10.1002/9780470434642.
- Applicability to current branch: This is the closest framework because it
  keeps the deterministic offset outside the random vector, works in the
  \(N\)-dimensional lower-coefficient space, and converts a root at \(\theta\)
  into a graph over the other \(N-1\) coefficients. The Euclidean area formula
  controls the union of graph images without a simple-root assumption. The
  new adaptation is a measurable, pointwise minimizing pivot rather than a
  globally fixed coefficient coordinate.
- Proof roadmap:
  1. From `assump:no-forced-root` and compactness, prove that every root lies in
     \(K_R\), that \(F\) is uniformly nonzero on \(K_R\), and that
     \(\Gamma_{\rm piv}<\infty\). This item has no earlier dependency and also
     uses `assump:shared-pfaffian-chain` for \(C^1\) regularity.
  2. Depending on item 1 and using `assump:shared-pfaffian-chain` together with
     the cube range in `assump:joint-density-cap`, construct the Borel
     least-minimizer partition \(K_R=\bigsqcup_jE_j\), exhaust it by
     \(|F_j|\ge 1/m\), and prove the exact graph-Jacobian bound
     \(|\partial_\theta T_j|\le V_j\).
  3. Depending on item 2 and using only the same \(C^1\) regularity plus the
     standard Euclidean area formula, apply that formula to each exhausted
     graph map, pass to the limit by monotone convergence, and sum over the
     disjoint parameter charts.
  4. Depending on item 3 and using `assump:joint-density-cap`, convert swept
     coefficient volume to probability and take the law and interval suprema.
  5. Depending on item 4, use the exact specialized instances of all three
     primitive assumptions to calculate the scale-stress and monic-polynomial
     chart velocities directly and specialize the same affine theorem.
- Key lemmas / ingredients: root-feasibility by the cube support inequality;
  compact nonvanishing pivot margin on \(K_R\); Borel finite-coordinate
  minimization; the current-notation area formula
  \(\lambda_N(\Psi(D))\le\int_D|\det D\Psi|\); monotone exhaustion;
  density domination \(\mu(S)\le\kappa\lambda_N(S)\); direct polynomial ratio
  differentiation.
- Main transfer challenges: The tie-broken charts need not be open, so the
  area formula must be invoked on the ambient open nonzero-pivot domain and
  localized countably. The exhaustion must cover chart-boundary points without
  introducing an \(N\)-fold length loss. The monic clause must apply the same
  theorem to the exact \(d\)-dimensional lower-coefficient law, not to a
  singular augmented law. No source in this framework controls
  \(\Gamma_{\rm piv}\) polynomially for a general Pfaffian presentation.
- Potential repair techniques and supporting references:
  - Technique: Use the image-measure form of the Euclidean area formula on
    measurable subsets of a locally Lipschitz chart, followed by countable
    localization and monotone exhaustion.
  - Supporting reference: Azais and Wschebor, *Level Sets and Extrema of
    Random Processes and Fields*, DOI:10.1002/9780470434642.
  - Why it may help: It handles multiplicity, tangent roots, and merely
    measurable pivot cells through image subadditivity rather than requiring
    a global inverse or transversality.
- Disposition: `selected`
- Branch notes: This framework inherits both parent foundations named in
  `idea.md`. It has the shortest path to the exact affine theorem and exact
  monic constant. Its limitation is stated rather than repaired by assumption:
  it exposes \(\Gamma_{\rm piv}\) but does not provide the still-open general
  Pfaffian complexity certificate.

### Framework 2: Homogeneous normalized-evaluation zero intensity

- Source papers: Edelman and Kostlan, *How Many Zeros of a Random Polynomial
  Are Real?*, DOI:10.1090/S0273-0979-1995-00571-9, Theorem 5.1; Azais and
  Wschebor, *Level Sets and Extrema of Random Processes and Fields*,
  DOI:10.1002/9780470434642.
- Applicability to current branch: The normalized evaluation curve gives a
  clean local zero-intensity formula for homogeneous random linear
  combinations and arbitrary joint densities. It correctly identifies metric
  hyperplane motion, but its theorem-facing object is a central hyperplane in
  a full-dimensional random coefficient space. Appending the deterministic
  monic coefficient would create a singular law, so a separate affine graph
  bridge is still needed.
- Proof roadmap:
  1. With no earlier dependency, replace the branch's weaker root-feasible
     nondegeneracy by a global nonvanishing hypothesis, retain
     `assump:shared-pfaffian-chain`, normalize the evaluation vector, and write
     the arbitrary-density zero intensity.
  2. Depending on item 1 and using `assump:joint-density-cap`, bound its
     hyperplane integral using coefficient support and the density cap.
  3. Depending on item 2 and all exact monic specialized assumptions, add an
     affine coordinate-fiber theorem to recover the monic baseline; this item
     does not follow from the homogeneous result alone.
- Key lemmas / ingredients: normalized evaluation geometry; Kac--Rice/area
  formula; projection of an incidence set; density-capped section integrals.
- Main transfer challenges: The primitive branch condition permits
  \(F(\theta)=0\) at root-free points, the offset translates the sections, and
  the exact monic law is lower-dimensional relative to an augmented
  coefficient vector. The exact Theorem 2 constant is not an output of the
  cited homogeneous theorem.
- Potential repair techniques and supporting references:
  - Technique: Replace augmentation by an affine coordinate graph over a
    random lower coefficient, which returns to Framework 1.
  - Supporting reference: Balcan, Dick, and Pegden, *Semi-bandit Optimization
    in the Dispersed Setting*, arXiv:1904.09014, Theorem 18.
  - Why it may help: The affine polynomial theorem preserves the dimension and
    density convention of the random lower coefficients.
- Disposition: `backup`
- Branch notes: Retained as geometric corroboration for moving hyperplanes.
  It is not selected because the affine and exact-baseline interfaces would
  still have to be supplied independently.

### Framework 3: Pfaffian root count plus fixed-point small-ball control

- Source papers: Khovanskii, *Fewnomials*, DOI:10.1090/MMONO/088; Balcan,
  Nguyen, and Sharma, *Algorithm Configuration for Structured Pfaffian
  Settings*, arXiv:2409.04367; Carbery and Wright, *Distributional and
  \(L^q\) Norm Inequalities for Polynomials over Convex Bodies in
  \(\mathbb R^n\)*, DOI:10.4310/MRL.2001.V8.N3.A1.
- Applicability to current branch: Pfaffian theory can bound isolated-root
  counts and polynomial small-ball tools can control values at a fixed
  parameter. Neither controls the coefficient-space volume swept as
  \(\theta\) ranges over a short interval. The missing metric information is
  exactly what \(\Gamma_{\rm piv}\) records.
- Proof roadmap:
  1. With no earlier dependency and using `assump:shared-pfaffian-chain`, bound
     a deterministic total root count from Pfaffian format.
  2. Depending on item 1 and using `assump:joint-density-cap`, discretize the
     interval and attempt to apply fixed-point small-ball estimates.
  3. Depending on item 2 and still requiring `assump:no-forced-root`, attempt
     to infer a linear-in-\(|I|\) root-hitting bound; the required metric
     interpolation hypothesis is absent, which is the rejection obstruction.
- Key lemmas / ingredients: Khovanskii root counts; Pfaffian cell
  decompositions; polynomial small-ball inequalities; interval nets.
- Main transfer challenges: A root count is invariant under
  \(F_2(\theta)=\theta/\delta\), while the desired local constant grows as
  \(1/\delta\). Discretization also requires an unavailable derivative or
  transversality lower bound. The route does not preserve the exact affine
  monic constant under arbitrary correlated densities.
- Potential repair techniques and supporting references:
  - Technique: Add an explicit metric chart-speed parameter and sweep
    coefficient fibers directly.
  - Supporting reference: Edelman and Kostlan, *How Many Zeros of a Random
    Polynomial Are Real?*, DOI:10.1090/S0273-0979-1995-00571-9, Theorem 5.1.
  - Why it may help: Moving-hyperplane speed detects the \(1/\delta\) scale
    that formal root complexity misses, but doing so changes the route back to
    Framework 1.
- Disposition: `rejected`
- Branch notes: Rejected by Counter-example 1 and the requirement of a literal
  \(O(|I|)\) bound. Formal \((q,M,\Delta)\) data alone cannot repair this
  framework.
