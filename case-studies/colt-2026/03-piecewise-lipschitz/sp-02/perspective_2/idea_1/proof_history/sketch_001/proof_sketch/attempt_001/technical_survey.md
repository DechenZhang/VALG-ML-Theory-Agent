# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2, projective-conditioning complexity for instance-scale-annotated Pfaffian vectors.
- Current idea: `perspective_2/idea_1`, the anchored derivative-closed Pfaffian dictionary with a supplied polynomial matrix certificate.
- Setting / goal summary: In the exact Balcan--Nguyen--Sharma one-variable common-chain convention, derive `sup_Theta ||B||_op <= Lambda_hat` from the coefficient list of a polynomial matrix satisfying `tilde F' = B tilde F`; prove one affine coefficient-space swept-area inequality for arbitrary correlated cube-supported joint densities; derive its sharper homogeneous projective specialization; recover the exact monic-polynomial constant through two pivots in the same affine sweep; and verify the required `1/delta` scale. The target is unconditional, uniform over every admissible law and positive-length interval, and has no hidden constants.

## Candidate Frameworks

### Framework 1: Affine coefficient-incidence sweep with derivative-closure certification

- Source papers: Edelman and Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9; Azais and Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642; Ball, *Cube Slicing in R^n*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0; Balcan, Dick, and Pegden, *Semi-bandit Optimization in the Dispersed Setting*, Theorem 18, arXiv:1904.09014; Balcan, Nguyen, and Sharma, *Algorithm Configuration for Structured Pfaffian Settings*, Definitions 2--4, arXiv:2409.04367.
- Applicability to current branch: This is the closest framework because the affine and homogeneous root events are projections of the same incidence set in the actual `N`-dimensional random-coefficient cube. The derivative identity supplies the normal velocity from static representation data, Edelman--Kostlan cross-checks the homogeneous projective integrand for arbitrary joint densities, Ball controls central cube sections, and Balcan--Dick--Pegden supplies the correct affine lower-coefficient lineage. The branch-specific work is a current-notation area-formula wrapper handling measurable pivot partitions, exhaustion without a uniform pivot margin, tangent and multiple roots, translated sections, and the exact two-pivot monic calculation.
- Proof roadmap:
  1. Derive the matrix norm certificate and anchor-induced nonvanishing. Dependencies: none. Assumptions: `assump:parameter-regime`, `assump:balcan-common-chain`, and `assump:anchored-derivative-closure`.
  2. Prove the affine pivot area inequality with multiplicity on finite pivot-exhaustion sets and pass to the full measurable partition. Dependencies: item 1. Assumptions: all four setting assumptions, with absolute continuity supplied by `assump:cube-density-laws`.
  3. Convert the chart Jacobian into the coordinate-free normal-velocity integral over each translated section. Dependencies: item 2. Assumptions: the primitive feature definitions in `assump:anchored-derivative-closure`; no new generated condition.
  4. Prove translated central maximality by Brunn--Minkowski and apply Ball's central cube-section theorem; combine this with derivative closure to obtain the general affine rate. Dependencies: items 1 and 3. Assumptions: `assump:parameter-regime`, `assump:anchored-derivative-closure`, and `assump:cube-density-laws`.
  5. In the homogeneous case, differentiate `F/||F||_2`, identify the projective normal velocity, and sharpen the affine estimate using central sections. Dependencies: items 1, 3, and 4. Assumptions: the specialization `F_0=0` under `assump:anchored-derivative-closure` and the same `assump:cube-density-laws`.
  6. Instantiate the affine chart inequality on the augmented monomial tuple, calculate the two pivot velocities and the `d=1` branch, and integrate to the exact source constant. Dependencies: item 2. Assumptions: the `q=M=0` specialization of the first three setting assumptions and `assump:cube-density-laws` in dimension `d`.
  7. Verify the `theta/delta` certificate and exact coefficient wedge, then assemble all clauses with their literal parameter dependence. Dependencies: items 1, 5, and 6. Assumptions: the displayed counterexample specialization of all four setting assumptions.
- Key lemmas / ingredients: Polynomial coefficient evaluation followed by Frobenius domination; the Euclidean area formula for `Psi_j(theta,beta)` with `|det D Psi_j|=|partial_theta T_j|`; monotone pivot exhaustion; density-cap conversion from coefficient volume to probability; fixed-section Hausdorff change of variables; the identity `partial_theta T_j=-(F_0'+<Psi_j,F'>)/F_j`; Brunn's concavity argument for translated sections of a symmetric convex body; Ball's sharp central cube-section bound; differentiation of `F/||F||_2`; direct monic pivot differentiation; and a direct planar wedge calculation.
- Main transfer challenges: Edelman--Kostlan's homogeneous intensity formula is not itself the required affine union-volume inequality; Ball controls section size but not section motion; Balcan--Dick--Pegden does not provide the present arbitrary-dictionary chart theorem as a black box; and the deterministic leading coefficient must remain outside the random vector. The proof must therefore verify the exact current-object mapping and cannot append the monic coefficient as a singular random coordinate.
- Potential repair techniques and supporting references:
  - Technique: Apply the area formula to finite pivot-exhaustion domains and let the exhaustion increase to each measurable pivot set.
  - Supporting reference: Azais--Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642, for area/coarea regularity, and Balcan--Dick--Pegden, Theorem 18, arXiv:1904.09014, for the affine coefficient interface.
  - Why it may help: The map outputs the actual random coefficient vector, counts multiple preimages favorably, and retains only the genuinely random lower coefficients in the monic specialization.
  - Technique: Separate translated-section size from normal velocity.
  - Supporting reference: Ball, *Cube Slicing in R^n*, DOI:10.1090/S0002-9939-1986-0840631-0.
  - Why it may help: Brunn--Minkowski moves a translated section to the central section, after which Ball gives the literal factor `sqrt(2)(2R)^(N-1)` uniformly in orientation.
  - Technique: Cross-check the homogeneous normal-velocity integrand against normalized evaluation geometry.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
  - Why it may help: It confirms that on `<a,F>=0` the affine sweep integrand becomes `|<a,gamma_F'>|`, while the proof remains an area-formula union bound rather than a simple-root Kac--Rice argument.
- Disposition: `selected`
- Branch notes: This framework preserves both parent lineages named in `idea.md`: Edelman--Kostlan for normalized homogeneous geometry and Balcan--Dick--Pegden for affine coefficient geometry. Ball supplies the section theorem, and Balcan--Nguyen--Sharma fixes the Pfaffian convention. The derivative-closure certificate replaces the uncontrolled normalized speed with raw instance data; it does not change the parent proof geometry.

### Framework 2: Homogeneous Kac--Rice intensity plus a separate affine reduction

- Source papers: Edelman and Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9; Azais and Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642; Ball, *Cube Slicing in R^n*, DOI:10.1090/S0002-9939-1986-0840631-0.
- Applicability to current branch: This framework naturally proves the homogeneous local intensity after the projective-speed certificate is available. It is farther from the exact goal because a Kac--Rice statement generally introduces nondegeneracy and counting hypotheses that the target deliberately avoids, and it still needs a separate affine chart theorem to retain the legal `d`-dimensional monic law.
- Proof roadmap:
  1. Verify a one-dimensional Kac--Rice formula for the finite-dimensional process under a merely bounded coefficient density. Dependencies: none. Assumptions: `assump:parameter-regime`, `assump:cube-density-laws`, and sufficient process nondegeneracy to be discharged rather than added theorem-facing.
  2. Bound the homogeneous intensity by cube support and Ball's section theorem. Dependencies: item 1. Assumptions: `assump:cube-density-laws` and anchor-induced nonvanishing from `assump:anchored-derivative-closure`.
  3. Add an independent affine pivot argument and reconcile its constants with the homogeneous theorem. Dependencies: items 1 and 2. Assumptions: all four setting assumptions and the deterministic affine-offset interface.
- Key lemmas / ingredients: Kac--Rice, conditional density disintegration, Ball's section theorem, and a separate affine change-of-variables result.
- Main transfer challenges: Tangent and multiple roots, `L^infty` density representatives, persistent zero combinations, and exact affine-monic recovery all require additional wrappers. The separate affine route also obscures the setting's requirement that both conclusions specialize from one sweep inequality.
- Potential repair techniques and supporting references:
  - Technique: Replace expected zero counting by the incidence projection area inequality of Framework 1.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
  - Why it may help: The geometric integrand survives, while area multiplicity handles tangencies and repeated roots without a theorem-facing nondegeneracy condition.
- Disposition: `backup`
- Branch notes: Retained only as a cross-check for the homogeneous integrand. It is not selected because it does not meet the single-affine-sweep and exact-baseline interfaces on its own.

### Framework 3: Pfaffian root counts combined with fixed-parameter small-ball estimates

- Source papers: Khovanskii, *Fewnomials*, DOI:10.1090/MMONO/088; Balcan, Nguyen, and Sharma, *Algorithm Configuration for Structured Pfaffian Settings*, arXiv:2409.04367; Carbery and Wright, *Distributional and L^q Norm Inequalities for Polynomials over Convex Bodies in R^n*, DOI:10.4310/MRL.2001.V8.N3.A1.
- Applicability to current branch: Pfaffian theory bounds isolated root counts and polynomial small-ball theory controls values at fixed parameters. Neither supplies the metric motion of the coefficient root hyperplane, and both miss the `1/delta` scale when only `q,M,Delta,N` are recorded.
- Proof roadmap:
  1. Bound the total number of roots from Pfaffian format. Dependencies: none. Assumptions: `assump:balcan-common-chain` and `assump:parameter-regime`.
  2. Discretize the interval and apply fixed-point small-ball control. Dependencies: item 1. Assumptions: `assump:cube-density-laws` plus whatever fixed-value normalization the small-ball theorem requires.
  3. Attempt to pass to a bound linear in interval length. Dependencies: items 1 and 2. Assumptions: this would require a derivative lower bound or transversality source absent from the current setting, which is the explicit reason the framework is rejected.
- Key lemmas / ingredients: Khovanskii root count, fixed-point small-ball inequalities, and interval discretization.
- Main transfer challenges: Discretization needs an unavailable derivative lower bound or transversality condition, root counts are invariant to the rescaling in Counter-example 1, and the exact affine-monic constant is not preserved.
- Potential repair techniques and supporting references:
  - Technique: Add the coefficient-space normal velocity explicitly, which returns to Framework 1.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
  - Why it may help: Normalized or affine sweep speed records the metric scale that formal root counts omit.
- Disposition: `rejected`
- Branch notes: Rejected by Counter-example 1 and by the all-positive-length-interval target. Formal Pfaffian complexity alone cannot repair the missing metric scale.
