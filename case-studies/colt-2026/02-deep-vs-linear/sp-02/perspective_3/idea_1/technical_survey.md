# Technical Survey

## Current Idea Branch

- Perspective: `perspective_3`, adaptive response-tree sign-rank compression.
- Current idea: `idea_1`, overlap coupling followed by strict pivot growth,
  branch-uniform energy accounting, and exact sign extraction.
- Setting / goal summary: Under one randomized adaptive unrestricted-SQ
  learner that is accurate for every distribution, target, and legal
  adversarial response policy, prove one deterministic exact sign feature map
  of dimension at most (C m/\tau^2) on an arbitrary domain.  The constant is
  required to be universal, and the conclusion may not be replaced by an
  approximate, probabilistic, finite-domain, favorable-oracle, or
  fixed-distribution statement.

## Candidate Frameworks

### Framework 1: Finite-dimensional alternatives plus null-center coupling

- Source papers: *Limitations of Learning via Embeddings in Euclidean Half
  Spaces* (JMLR 2002); *Convex Analysis* (R. T. Rockafellar, Princeton
  Mathematical Series 28, 1970); *A General Characterization of the
  Statistical Query Complexity* (COLT 2017).
- Applicability to current branch: Finite-dimensional alternatives explain
  exact sign feasibility on finite constraint sets, while the SQ source
  supports adversarial response policies and query discrimination.  These
  ingredients do support a direct common-reply construction while two legal
  slabs overlap.  They do not support the claimed arbitrary-domain exact
  annihilating distribution: absence of a pointwise strict separator places
  zero only in the closure of the convex hull in general, not necessarily in
  its finite convex hull.
- Proof roadmap:
  1. Express evaluations of a finite-dimensional span as vectors
     (y_x=h(x)(p_1(x),\ldots,p_d(x))).
  2. Attempt to obtain a probability distribution with barycenter zero and
     use label-independent query centers while they remain tolerance-valid.
  3. Extract a query or terminal residual outside the current span.
- Key lemmas / ingredients: finite-dimensional strict separation on finite
  constraint sets; the decomposition (q=a+yb); interval intersection; the
  identity (\mathbb E_P[hg]=1-2L_{P,h}(g)).
- Main transfer challenges: For an infinite constraint set, the strict system
  can fail although zero is only a limit point of its convex hull.  Thus an
  exact probability annihilator need not exist.  Approximate annihilation is
  insufficient for the mandated exact witness without a new tolerance-loss
  bridge, and it does not by itself yield a common finite pivot list.
- Potential repair techniques and supporting references:
  - Technique: replace exact barycentric membership by approximate membership
    in the closed convex hull and explicitly route the approximation through
    the SQ tolerance.
  - Supporting reference: *Convex Analysis* (Rockafellar, 1970),
    finite-dimensional separation and closure results.
  - Why it may help: it matches what arbitrary-domain strict infeasibility
    actually implies, but it would change the explicit exact-annihilator
    obligation in the current formalized setting and still leaves exact sign
    extraction and the dimension count unresolved.
- Disposition: `rejected`
- Branch notes: The arbitrary-domain counterexample recorded in
  `proof_sketch.md` disproves the required exact-annihilator interface.  This
  framework cannot be selected under the unchanged setting.

### Framework 2: Randomized statistical dimension and discrimination minimax

- Source papers: *A General Characterization of the Statistical Query
  Complexity* (COLT 2017), https://proceedings.mlr.press/v65/feldman17c.html.
- Applicability to current branch: This framework is close to the unrestricted,
  randomized, adaptive, adversarial-tolerance protocol.  Its outputs are
  distribution-family discrimination measures and query-complexity
  characterizations.  They are not a target-independent span of ordinary
  functions on (X), an exact sign representation, or a depth-only rank
  potential across all continuous response branches.
- Proof roadmap:
  1. Encode each target/distribution pair as a statistical search instance.
  2. Use minimax discrimination to locate a query with nontrivial expected
     separation for a chosen distribution over instances.
  3. Attempt to turn repeated discrimination into one exact deterministic
     sign factorization.
- Key lemmas / ingredients: minimax, discrimination norms, randomized SQ
  statistical dimension, and adversarial-oracle lower-bound geometry.
- Main transfer challenges: The source does not export ordinary-function span
  growth, exact pointwise signs, one common feature map, or
  (\sum_j\Delta_j^2\le C_0m) for pivots selected on different distributions
  and different adaptive branches.
- Potential repair techniques and supporting references:
  - Technique: seek a new minimax theorem whose dual object is a common
    finite-rank sign factorization rather than a distribution-specific
    discrimination measure.
  - Supporting reference: *Invited Open Problem: Is the Power of Deep Learning
    over Linear Models Inherently Distribution Dependent?* (COLT 2026),
    https://proceedings.mlr.press/v336/feldman26a.html.
  - Why it may help: such a theorem would address the exact missing bridge,
    but the COLT 2026 paper identifies that bridge as open and supplies no
    usable statement.
- Disposition: `backup`
- Branch notes: Retained only as possible upstream inspiration.  It is not a
  source-to-claim-adequate framework for the current proof sketch.

### Framework 3: Gram-Schmidt response-tree energy

- Source papers: *Invited Open Problem: Is the Power of Deep Learning over
  Linear Models Inherently Distribution Dependent?* (COLT 2026),
  https://proceedings.mlr.press/v336/feldman26a.html; *A General
  Characterization of the Statistical Query Complexity* (COLT 2017),
  https://proceedings.mlr.press/v65/feldman17c.html.
- Applicability to current branch: In a fixed finite dictionary and one fixed
  Hilbert geometry, Bessel or Gram-Schmidt accounting can charge independent
  residuals.  The current branch instead changes the separating distribution,
  target, transcript node, and hence the seminorm at every pivot.  Continuous
  replies also allow uncountably many nodes, while depth controls only a
  single path.
- Proof roadmap:
  1. Assign every accepted pivot a squared separation charge of order
     (\tau^2).
  2. Telescope a response-tree potential over at most (m) rounds.
  3. Deduce at most (O(m/\tau^2)) independent pivots.
- Key lemmas / ingredients: a common inner product, orthogonal projection,
  Bessel's inequality, and a depth-telescoping potential.
- Main transfer challenges: No common inner product or potential is produced
  by the primitive assumptions.  Local correlations are measured under
  changing witness distributions (P_j), and pathwise depth gives no
  summability over the union of adaptive branches.  Neither source paper
  states the needed energy theorem.
- Potential repair techniques and supporting references:
  - Technique: construct a target-independent global measure or a minimax
    potential that simultaneously dominates every witness seminorm and has a
    one-query drop relation.
  - Supporting reference: *A General Characterization of the Statistical
    Query Complexity* (COLT 2017).
  - Why it may help: minimax is the closest known way to aggregate
    distribution-indexed discrimination, but the cited source has no
    exact-rank or branch-uniform energy conclusion, so this remains a new
    theorem rather than an available tool.
- Disposition: `rejected`
- Branch notes: The current idea supplies only fixed-dictionary examples.
  Those examples do not establish source-convention compatibility or the
  raw-control-to-energy interface for arbitrary continuous response trees.

No framework is marked `selected`: the exact formalized target has explicit
boundary counterexamples, its required exact finite-support separation bridge
is false, and no surveyed source supplies the branch-uniform energy mechanism.
