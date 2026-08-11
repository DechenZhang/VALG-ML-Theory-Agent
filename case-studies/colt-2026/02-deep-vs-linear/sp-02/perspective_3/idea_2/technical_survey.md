# Technical Survey

## Current Idea Branch

- Perspective: `perspective_3`, adaptive response-tree sign-rank compression.
- Current idea: `idea_2`, exactification of a static finite terminal-output
  catalog by a finite zero-sum game and compactness.
- Setting / goal summary: Under one randomized adaptive unrestricted-SQ
  learner that is accurate for every distribution, target, and nonanticipating
  tolerance-valid continuous reply policy, assume that every complete
  execution factors through one pre-instance catalog
  \(G=\{g_1,\ldots,g_L\}\) with
  \(L\le B(1+m/\tau^2)^k\).  Produce the fixed deterministic coordinate map
  \(\phi_G(x)=(g_1(x),\ldots,g_L(x))\) and, for each target \(h\), a simplex
  vector having pointwise margin at least \(1-2\varepsilon>1/2\) on the whole
  arbitrary domain.

## Candidate Frameworks

### Framework 1: Policywise finite-output game exactification

- Source papers: *A General Characterization of the Statistical Query
  Complexity* (COLT 2017),
  https://proceedings.mlr.press/v65/feldman17c.html; *Limitations of Learning
  via Embeddings in Euclidean Half Spaces* (JMLR 2002),
  https://jmlr.org/papers/v3/bendavid02a.html.
- Applicability to current branch: The COLT 2017 source supplies the relevant
  randomized adaptive unrestricted-SQ and adversarial-oracle semantics, while
  the JMLR 2002 source fixes the deterministic common-map target.  Neither
  source states the present conditional theorem.  The new bridge is elementary
  and can be proved self-contained: push the learner-tape law through the
  primitive catalog selector, apply finite matrix minimax on each finite subset
  of \(X\), and use the finite-intersection property inside the one fixed
  compact simplex \(\Delta_L\).
- Proof roadmap:
  1. For arbitrary \(D,h,\pi\), push \(\nu\) through the selector and rewrite
     expected error as a finite catalog mixture, without discretizing replies.
  2. Convert the accuracy premise into a policywise mixture correlation and a
     policy-independent best-catalog correlation for every distribution.
  3. On each nonempty finite \(F\subseteq X\), apply the finite matrix minimax
     identity in the order
     \(\min_{r\in\Delta_F}\max_i=\max_{w\in\Delta_L}\min_x\).
  4. Apply compactness/FIP to the closed finite-constraint sets in
     \(\Delta_L\), then use the resulting mixture as the target weight for the
     catalog-coordinate map and append the primitive catalog-size bound.
- Key lemmas / ingredients: exact loss-correlation identity; pushforward of a
  probability through a finite selector; finite matrix minimax (equivalently,
  finite linear-programming duality); compactness of a finite-dimensional
  simplex; the closed-set finite-intersection theorem; algebraic conversion of
  a positive signed margin into exact binary signs.
- Main transfer challenges: preserving the quantifier over every continuous
  adaptive reply policy; not replacing the policy by a favorable or gridded
  response; using the correct minimax order when the best catalog coordinate
  varies with the finite-support distribution; globalizing over an arbitrary,
  possibly empty, domain without an annihilating probability; and retaining
  the exact leading-base catalog bound at \(m=0\), large \(\tau\), and \(L=1\).
- Potential repair techniques and supporting references:
  - Technique: restate finite minimax as a current-notation primal/dual pair
    and prove the FIP step directly, so no source-side convention or hidden
    finite-domain assumption is imported.
  - Supporting reference: *A General Characterization of the Statistical
    Query Complexity* (COLT 2017),
    https://proceedings.mlr.press/v65/feldman17c.html, for the surrounding
    adversarial-SQ/minimax convention.
  - Why it may help: it localizes the only quantifier reversal to an exact
    finite bilinear game and makes the later arbitrary-domain passage a
    zero-defect compactness argument.
- Disposition: `selected`
- Branch notes: This route uses the catalog as the primitive compression
  interface and does not claim to derive it from query depth.  Consequently it
  avoids the exact-annihilator and branch-uniform energy obstructions that
  invalidated `perspective_3/idea_1`; the conditional assumption and remaining
  catalog-free gap stay explicit.

### Framework 2: Exact annihilator plus response-tree energy

- Source papers: `perspective_3/idea_1/technical_survey.md`; *Invited Open
  Problem: Is the Power of Deep Learning over Linear Models Inherently
  Distribution Dependent?* (COLT 2026),
  https://proceedings.mlr.press/v336/feldman26a.html.
- Applicability to current branch: An annihilating distribution and a
  branch-uniform Gram-Schmidt budget would attempt to derive a common finite
  dictionary directly from query depth.  The prior same-perspective audit
  records that exact annihilation can fail on arbitrary domains and that no
  primitive source supplies a common energy geometry across adaptive branches.
  The present catalog assumption makes both devices unnecessary.
- Proof roadmap:
  1. Separate failed finite-dimensional sign systems by a witness measure.
  2. Couple tolerance slabs at the witness center.
  3. Charge new pivots to an \(O(m/\tau^2)\) global energy budget.
- Key lemmas / ingredients: finite-dimensional separation, exact
  barycenters, response-slab overlap, and Bessel/Gram-Schmidt accounting.
- Main transfer challenges: exact barycenter attainment on arbitrary domains,
  a common norm across varying distributions, and a depth-to-whole-tree energy
  bound are unsupported; these were idea-level obstructions in the prior
  branch.
- Potential repair techniques and supporting references:
  - Technique: replace the unsupported derived catalog construction by the
    primitive static catalog interface of the current setting.
  - Supporting reference: `perspective_3/idea_1/technical_survey.md`.
  - Why it may help: this is precisely the target-changing conditional repair
    already approved in `idea_2`; no unsupported energy claim remains in the
    current proof.
- Disposition: `rejected`
- Branch notes: Retained only as negative same-perspective memory.  It is not
  used as proof authority for the selected roadmap.
