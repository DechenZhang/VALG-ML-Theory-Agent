# Technical Survey

## Current Idea Branch

- Perspective: Perspective 1, with the approved target change recorded in `idea.md`.
- Current idea: Idea 2, the tie-penalized probabilistic response-tree embedding.
- Setting / goal summary: A fixed randomized adaptive unrestricted-SQ learner uses at most \(m\) tolerance-\(\tau\) queries and has expected binary error at most \(\varepsilon\) against every tolerance-valid adaptive oracle. The exact branch goal is
  \[
  \operatorname{dc}^{\mathrm{tie}}_{\varepsilon}(\mathcal H)
  \le (\lceil1/\tau\rceil+1)^m
  \]
  via one pre-instance law over feature maps, uniformly over arbitrary domains, distributions, and targets.

## Candidate Frameworks

### Framework 1: Rounded finite response-tree one-hot embedding

- Source papers: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (COLT 2026), https://proceedings.mlr.press/v336/feldman26a.html; *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020), https://proceedings.mlr.press/v125/kamath20b.html.
- Applicability to current branch: The COLT 2026 source fixes the unrestricted adaptive SQ protocol, adversarial tolerance semantics, arbitrary-domain scope, and learner-randomness convention. The COLT 2020 source supplies the randomized-feature-map and pointwise-best-linear-predictor architecture. The current branch adds the finite grid, complete-tape response-tree enumeration, and tie-penalized loss directly. No theorem from either paper is invoked, and no deterministic exactification or polynomial response-tree compression is claimed.
- Proof roadmap:
  1. Prove nearest-grid radius at most \(\tau\), producing a legal canonical oracle and padded transcript. Dependencies: none. Assumptions: `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`.
  2. For each complete tape, replay every finite grid string, pad early-stopping branches, and push the feature map forward through the tape law. Dependency: item 1. Assumptions: `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`.
  3. Select the canonical path coordinate and prove by deterministic replay that it is exactly the binary learner output, so tie loss equals binary loss. Dependencies: items 1 and 2. Assumption: `assump:universal-adversarial-sq`.
  4. Compare the pointwise infimum with that coordinate, take pushforward expectation, invoke the universal oracle guarantee, and count coordinates. Dependencies: items 1--3. Assumptions: `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`.
- Key lemmas / ingredients: finite grid coverage of \([-1,1]\); deterministic complete-tape replay; suffix padding; one-hot coordinate selection; pushforward expectation; equality of tie and binary losses on binary scores.
- Main transfer challenges: Keep the feature-map law fixed before \((\mathcal D,h)\) while permitting the comparison coordinate to depend on \((\mathcal D,h,r)\) inside the pointwise infimum; match adaptive replay to the canonical path; handle early stopping and \(m=0\); use rounding only for oracle validity, not terminal-output approximation; and keep the selected score binary.
- Potential repair techniques and supporting references:
  - Technique: Separate the pre-instance random map from the instance-dependent pointwise comparison weight.
  - Supporting reference: *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020), https://proceedings.mlr.press/v125/kamath20b.html.
  - Why it may help: It fixes the quantifier order of probabilistic feature representations; the branch-specific one-hot construction supplies the witness.
  - Technique: Treat each rounded response as adversarially legal and invoke the guarantee for that policy, without a continuity argument.
  - Supporting reference: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (COLT 2026), https://proceedings.mlr.press/v336/feldman26a.html.
  - Why it may help: It matches the source oracle convention and avoids an invalid favorable-oracle substitution.
- Disposition: `selected`
- Branch notes: This is the shortest roadmap for the exact formalized branch goal and inherits both parent foundations. The response-tree map and tie repair are branch-local direct constructions, example-verified in `idea.md`; they do not claim the stronger deterministic exact \(O(m/\tau^2)\) result.
