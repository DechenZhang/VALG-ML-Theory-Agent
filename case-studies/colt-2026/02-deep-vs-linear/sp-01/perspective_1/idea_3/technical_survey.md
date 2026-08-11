# Technical Survey

## Current Idea Branch

- Perspective: Perspective 1, source-endorsed fallback after the exact deterministic route failed.
- Current idea: `perspective_1/idea_3`, conditional robust-tube path features at fixed constant depth.
- Setting / goal summary: Preserve the exact Gaussian-initialized logistic one-sample SGD protocol and universal expected-error premise, assume `assump:constant-depth` and the static `assump:robust-tube`, and prove \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\le S^{L_0}\), hence \(\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}\).

## Candidate Frameworks

### Framework 1: Static robust tube, fixed gates, and exact path features

- Source papers: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (Feldman, Kamath, and Srebro, COLT 2026); *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (Kamath, Montasser, and Srebro, COLT 2020, arXiv:2003.04180).
- Applicability to current branch: The first source fixes the exact learner/protocol and explicitly endorses probabilistic dimension as partial progress. The second fixes the needed representation quantifier order. The branch-local bridge is direct: the static worst-case gradient budget yields pathwise containment for every labeled history, the positive static activation margin fixes all gates, and elementary network expansion gives an exact initialization-gate feature map. No tangent approximation or external optimization theorem is needed.
- Proof roadmap:
  1. Goal: finite gradient control and all-history containment. Dependencies: none. Assumptions: `assump:fixed-source-witnesses` and the static budget in `assump:robust-tube`.
  2. Goal: gate constancy and exact path expansion, including \(L=1\). Dependencies: item 1. Assumptions: the positive-margin part of `assump:robust-tube` and the exact source architecture.
  3. Goal: conditional risk comparison and unconditional \(E_r^c\) charging. Dependencies: item 2. Assumptions: `assump:universal-expected-success` and `assump:robust-tube`.
  4. Goal: path counting and the \(2\varepsilon\) specialization. Dependencies: item 3. Assumptions: `assump:constant-depth` and \(\delta_0\le\varepsilon\) from `assump:robust-tube`.
- Key lemmas / ingredients: Bounded logistic derivative; coordinatewise forward/backward bounds on a compact parameter box; finite-horizon induction; continuity plus the intermediate value theorem on a connected ball; exact ReLU path expansion under fixed gates; pointwise infimum comparison; Tonelli/Fubini for bounded risks; monotonicity of \(\operatorname{dc}_\alpha\).
- Main transfer challenges: The static tube may not be treated as trajectory containment; containment must precede gate use. The sample-path coefficient is not a feature map and must occur only inside a pointwise comparison with the path-independent infimum. The law \(\mathcal P_{\rm gate}\) must be fixed before \((\mathcal D,h)\), and unstable initializations must remain in the law and be charged rather than conditioned away.
- Potential repair techniques and supporting references:
  - Technique: If conditioning order becomes unclear, formulate the fixed-initialization quantity \(F_{\mathcal D,h}(\theta^{(0)})=\inf_w R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})\) before introducing the sample path and prove \(F\le R(w_\omega,\varphi)\) for every \(\omega\).
  - Supporting reference: Kamath, Montasser, and Srebro, arXiv:2003.04180, for the outer feature-law/inner best-linear-predictor quantifier order.
  - Why it may help: It prevents moving a path-dependent optimizer outside the legal infimum or accidentally making the feature law depend on \((\mathcal D,h)\).
- Disposition: `selected`.
- Branch notes: This framework inherits both parent sources named by `idea.md`. Its tube-to-path bridge is an elementary current-notation derivation, not an imported lazy-training or convex-reduction theorem.

### Framework 2: Tangent-kernel or lazy-training approximation

- Source papers: *Wide Neural Networks of Any Depth Evolve as Linear Models Under Gradient Descent* (Lee et al., NeurIPS 2019, arXiv:1902.06720); *On Lazy Training in Differentiable Programming* (Chizat, Oyallon, and Bach, NeurIPS 2019, arXiv:1812.07956).
- Applicability to current branch: These frameworks motivate small-movement regimes but provide approximate first-order features for different width/loss/dynamics hypotheses. The present robust event is strong enough to give an exact path representation, so tangent approximation would introduce an unnecessary residual and would not preserve the exact one-sample protocol interface.
- Proof roadmap:
  1. Goal: linearize outputs near initialization. Dependencies: none. Assumptions: additional width/scaling regularity not present in the branch.
  2. Goal: control the Taylor remainder. Dependencies: item 1. Assumptions: the same hypothetical lazy-training regularity plus trajectory containment.
  3. Goal: transfer risk to tangent features. Dependencies: item 2. Assumptions: the source expected-risk premise plus a tie-safe remainder margin not present in the branch.
- Key lemmas / ingredients: Jacobian stability, width-dependent kernel control, and Taylor remainder bounds.
- Main transfer challenges: Wrong feature object, approximation error at zero-score ties, additional width/scaling hypotheses, and source mismatch for one-sample all-layer SGD.
- Potential repair techniques and supporting references:
  - Technique: Use the exact gate-path expansion rather than a first-order Taylor approximation.
  - Supporting reference: `perspective_1/idea_3/setting.md` and the direct fixed-gate algebra specified there.
  - Why it may help: It removes every numerical remainder and preserves the source tie convention exactly.
- Disposition: `rejected`.
- Branch notes: The selected framework does not claim frozen weights or an NTK regime; only gate indicators are fixed on \(E_r\), while every path coefficient follows the exact trained weights.

### Framework 3: Transcript-to-convex-reduction exactification

- Source papers: `perspective_1/idea_2/technical_survey.md`; Chornomaz, Moran, and Waknine, *On Reductions and Representations of Learning Problems in Euclidean Spaces*, arXiv:2411.10784v1.
- Applicability to current branch: The prior idea established that low transcript dimension does not produce the exact convex-reduction hypotheses needed for deterministic sign-rank. This branch deliberately changes to probabilistic dimension and directly exports a feature law, so no convexification or exact derandomization is needed.
- Proof roadmap:
  1. Goal: encode the transcript. Dependencies: none. Assumptions: exact source protocol only.
  2. Goal: export an exact SCO reduction. Dependencies: item 1. Assumptions: unsupported exactness/convexity interfaces absent from the branch.
  3. Goal: invoke the exact representation theorem. Dependencies: item 2. Assumptions: the unproduced exact reduction and source theorem hypotheses.
- Key lemmas / ingredients: Exact transformed realizability, convex zero-loss fibers, minimax, and separation.
- Main transfer challenges: Those interfaces are absent from expected nonconvex SGD success and are irrelevant to the current conditional probabilistic target.
- Potential repair techniques and supporting references:
  - Technique: Retain the initialization gate map directly in the representation law.
  - Supporting reference: Kamath, Montasser, and Srebro, arXiv:2003.04180.
  - Why it may help: The probabilistic-dimension definition already permits initialization randomness and therefore avoids unsupported exactification.
- Disposition: `rejected`.
- Branch notes: This is prior same-perspective failure memory only; none of its blocked mechanisms is reused.
