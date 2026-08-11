# Technical Survey

## Current Idea Branch

- Perspective: Perspective 1, normalized projective geometry for uniform interval root anti-concentration.
- Current idea: `perspective_1/idea_1`, the anchored unit-range, coefficient-normalized Pfaffian vector with a common central/affine coefficient-space sweep.
- Setting / goal summary: In the exact Balcan--Nguyen--Sharma one-variable common-chain convention, derive the projective-speed bound from `assump:balcan-common-chain` and `assump:anchored-unit-range`; combine it with an area formula and Ball's sharp cube-section theorem for arbitrary correlated cube-supported laws; prove the affine coordinate-pivot area bound without transversality or a pivot margin; recover the exact affine-monic constant internally; and retain the (1/\delta) scale in Counter-example 1. The full goal is unconditional, all-law, and all-interval, with no hidden constants.

## Candidate Frameworks

### Framework 1: Coefficient-space incidence sweep with central and affine charts

- Source papers: Edelman and Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9; Ball, *Cube Slicing in \(\mathbb R^n\)*, main theorem, DOI:10.1090/S0002-9939-1986-0840631-0; Balcan, Dick, and Pegden, *Semi-bandit Optimization in the Dispersed Setting*, Theorem 18, arXiv:1904.09014; Balcan, Nguyen, and Sharma, *Algorithm Configuration for Structured Pfaffian Settings*, Definitions 2--4, arXiv:2409.04367.
- Applicability to current branch: This is the closest framework because both the central and affine clauses are projections of root-incidence sets in the same coefficient cube. Edelman--Kostlan identifies the central integrand ( |\langle\gamma_F',a\rangle| ) for arbitrary joint densities, Ball controls each central cube section, and Balcan--Dick--Pegden supplies the correct lower-dimensional affine-coefficient lineage. The remaining branch-specific work is to give a direct area-formula wrapper that handles union volume, tangent and multiple roots, measurable pivot partitions, and pivot exhaustion; derive projective speed from the anchored Pfaffian presentation; and calculate the exact monic charts rather than cite the polynomial theorem.
- Proof roadmap:
  1. Derive the coordinate derivative envelope from the coefficient \(\ell_1\)-budgets on the unit chain box, using `assump:balcan-common-chain` and `assump:anchored-unit-range`.
  2. Use the literal anchor to obtain nonvanishing and the exact normalized-derivative/projective-speed bridge; this depends on item 1 and `assump:parameter-regime`.
  3. Apply the Euclidean area and coarea formulas to the central incidence hypersurface and then Ball's section theorem; this depends on item 2 and `assump:cube-density-laws`.
  4. Apply the Euclidean area formula to each affine pivot map on the exhaustion sets, using `assump:affine-chart-data` and the same density cap; this is independent of the central section estimate but uses the regularity established in item 1.
  5. Instantiate item 4 on the exact monic presentation and calculate both pivot velocities, including the (d=1) branch; this depends on item 4.
  6. Assemble the central rate, exact monic baseline, and Counter-example 1 scale audit with literal constants; this depends on items 2--5.
- Key lemmas / ingredients: Unit-box polynomial coefficient envelope; chain rule; derivative of (G/\|G\|_2); area formula for a rectifiable incidence hypersurface and its coefficient projection; coarea disintegration into central sections; Ball's sharp \(\sqrt2\) section bound; density-cap conversion from coefficient volume to probability; area formula for (\Psi_j(\theta,\beta)=(\beta,T_j(\theta,\beta))); monotone exhaustion (E_{j,m}\uparrow E_j); direct monic chart differentiation; direct planar wedge calculation for Counter-example 1.
- Main transfer challenges: Edelman--Kostlan's zero-intensity formula is not by itself the required union-volume statement and does not supply the affine chart; Ball controls one central section but not its motion; the affine chart must preserve the (d)-dimensional lower-coefficient law and cannot append a deterministic leading coefficient as a random coordinate; and neither source derives the projective-speed scale from the Balcan chain presentation.
- Potential repair techniques and supporting references:
  - Technique: Work with the central incidence hypersurface and coefficient projection, so the area formula counts projection multiplicity while critical tangent images have zero (N)-volume.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9, together with the standard Euclidean area/coarea formula.
  - Why it may help: It gives the exact current-notation integrand and avoids a simple-root or transversality hypothesis.
  - Technique: Separate central-section size from section motion.
  - Supporting reference: Ball, *Cube Slicing in \(\mathbb R^n\)*, DOI:10.1090/S0002-9939-1986-0840631-0.
  - Why it may help: Scaling the sharp unit-cube theorem gives the literal factor (\sqrt2(2R)^{N-1}), so no orientation or independence term is hidden.
  - Technique: Parameterize affine root loci by a nonzero coordinate and exhaust away from the zero pivot.
  - Supporting reference: Balcan--Dick--Pegden, Theorem 18, arXiv:1904.09014.
  - Why it may help: It preserves the full joint density on only the genuinely random lower coefficients and supports the exact monic specialization.
- Disposition: `selected`
- Branch notes: This framework preserves both parent lineages named in `idea.md`: Edelman--Kostlan for normalized central geometry and Balcan--Dick--Pegden for affine coefficient geometry. Ball is a component source, and Balcan--Nguyen--Sharma fixes the convention. No parent switch is made. The two chart types are parts of one coefficient-incidence projection framework, not independent proofs of separate theorems.

### Framework 2: Kac--Rice expected-zero intensity followed by probability domination

- Source papers: Edelman and Kostlan, *How Many Zeros of a Random Polynomial Are Real?*, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9; Azaïs and Wschebor, *Level Sets and Extrema of Random Processes and Fields*, DOI:10.1002/9780470434642; Ball, *Cube Slicing in \(\mathbb R^n\)*, DOI:10.1090/S0002-9939-1986-0840631-0.
- Applicability to current branch: The framework directly yields the same central local intensity for sufficiently regular nondegenerate processes and arbitrary joint coefficient densities, and Ball supplies the uniform section estimate. Its adaptation burden is larger here because the target explicitly requires tangent/multiple-root handling through union area, the coefficient density is only (L^\infty), and the exact affine-monic clause is not produced by the homogeneous Kac--Rice statement.
- Proof roadmap:
  1. Verify a Kac--Rice formula for the finite-dimensional process under an (L^\infty) coefficient density.
  2. Bound the intensity by the cube-section estimate and integrate over the interval.
  3. Build a separate affine chart theorem and monic specialization.
- Key lemmas / ingredients: One-dimensional Kac--Rice; density disintegration on moving hyperplanes; Ball's section theorem; a separate affine change-of-variables lemma.
- Main transfer challenges: Degenerate/tangent roots, merely bounded density representatives, and the need for a second affine framework make the route less direct than the incidence projection.
- Potential repair techniques and supporting references:
  - Technique: Replace the nondegeneracy-dependent counting formula with a rectifiable incidence-area inequality.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
  - Why it may help: The geometric integrand remains correct while multiplicity can be handled by the area formula.
- Disposition: `backup`
- Branch notes: Retained as a cross-check for the central integrand only. It is not selected because it does not by itself meet the union-area and exact affine-baseline obligations.

### Framework 3: Deterministic Pfaffian root count plus coefficient small-ball control

- Source papers: Khovanskii, *Fewnomials*, DOI:10.1090/MMONO/088; Balcan, Nguyen, and Sharma, *Algorithm Configuration for Structured Pfaffian Settings*, arXiv:2409.04367; Carbery and Wright, *Distributional and \(L^q\) Norm Inequalities for Polynomials over Convex Bodies in \(\mathbb R^n\)*, DOI:10.4310/MRL.2001.V8.N3.A1.
- Applicability to current branch: Pfaffian root counts control the number of isolated roots, and polynomial small-ball estimates control values at fixed parameters. Neither controls how a root locus sweeps coefficient space over an interval at the metric scale exposed by (F=(1,\theta/\delta)). The route also does not naturally preserve the exact affine-monic constant under arbitrary correlated laws.
- Proof roadmap:
  1. Bound the total number of roots by formal Pfaffian complexity.
  2. Cover the interval and apply fixed-point small-ball estimates.
  3. Attempt to pass to a linear-in-length estimate.
- Key lemmas / ingredients: Khovanskii root count; fixed-point small-ball inequalities; interval discretization.
- Main transfer challenges: A root count is scale-invariant, discretization requires an unavailable transversality/derivative lower bound, and Counter-example 1 disproves formal-complexity-only control.
- Potential repair techniques and supporting references:
  - Technique: Introduce projective motion explicitly, which returns to Framework 1.
  - Supporting reference: Edelman--Kostlan, Theorem 5.1, DOI:10.1090/S0273-0979-1995-00571-9.
  - Why it may help: Projective speed records the (1/\delta) scale that root counts miss.
- Disposition: `rejected`
- Branch notes: Rejected by the source's Counter-example 1 and by the requirement of a literal (O(|I|)) bound. Formal degree dependence alone cannot repair it.
