# Technical Survey

## Current Idea Branch

- Perspective: Perspective 2, deterministic dimension complexity with explicit polynomial dependence on \((S,T)\).
- Current idea: `idea_2`, a conditional confidence-to-determinism amplification theorem.
- Setting / goal summary: Under the exact universal Gaussian-initialized logistic one-sample-SGD premise and the explicit target-independent, tie-resolved condition \(\operatorname{dc}^{1/2}(\mathcal H)\le d\), prove the deterministic bound \(\operatorname{dc}(\mathcal H)\le 7TSd\). The confident-map condition remains an explicit theorem premise; the proof does not claim to derive it from the SGD trajectory.

## Candidate Frameworks

### Framework 1: VC counting plus target-independent confidence amplification

- Source papers: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/feldman26a.html); *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020; arXiv:2003.04180).
- Applicability to current branch: The first paper fixes the exact learner and universal-distribution premise and explicitly identifies confident dimension as a relevant relaxation. The second supplies the randomized-representation lineage. The branch uses a stronger finite-domain, tie-resolved exact-success event already formalized in `setting.md`; the remaining conversion is elementary and does not require a new SGD-to-feature theorem.
- Proof roadmap:
  1. Goal: prove \(\operatorname{VC}(\mathcal H)<2T\). Earlier-item dependencies: none. Assumptions used: the exact ReLU/SGD protocol and assump:universal-sgd-success.
  2. Goal: obtain \(\log_2\lvert\mathcal H\rvert=O(TS)\). Earlier-item dependencies: item 1 and the direct architecture count \(S\ge n\). Assumptions used: the finite Boolean cube and assump:source-regime; apply a current-notation Sauer--Shelah proof and elementary binomial estimates.
  3. Goal: produce a common covering tuple with \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\). Earlier-item dependencies: item 2. Assumptions used: the one target-independent law and per-target exact success at least \(1/2\) from assump:tie-resolved-confident-map.
  4. Goal: prove \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\). Earlier-item dependencies: item 3. Assumptions used: the exact tie-resolved sign convention and the definition of deterministic dimension complexity.
- Key lemmas / ingredients: unseen-test-point no-free-lunch argument; Sauer--Shelah growth bound; \(\sum_{j=0}^{v}\binom Nj\le(eN/v)^v\) for \(1\le v\le N\); independent failure multiplication; finite union bound; direct-sum feature construction.
- Main transfer challenges: The random-label averaging must map back to one fixed target in \(\mathcal H\); the confident law must precede every target; exact sign ties must survive block concatenation; \(\lvert\mathcal H\rvert\) and \(n\) must disappear from the public bound; and \(\mathcal H=\varnothing\), \(d=0\), and \(\operatorname{VC}(\mathcal H)=0\) require separate branches.
- Potential repair techniques and supporting references:
  - Technique: Keep the confident feature law as an explicit theorem-wide conditional premise if no exact-SGD producer is available.
  - Supporting reference: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/feldman26a.html).
  - Why it may help: The source explicitly recognizes confident dimension and polynomial deterministic bounds as partial-progress targets, so this isolates a valid amplification bridge without overstating the unresolved unconditional implication.
- Disposition: `selected`
- Branch notes: This framework preserves both parent lineages and has the shortest source-to-target path. All quantitative losses are explicit, and every probabilistic step is only an existence argument for the final deterministic map.

### Framework 2: Finite-precision SGD-to-random-feature simulation

- Source papers: *The Power of Random Features and the Limits of Distribution-Free Gradient Descent* (ICML 2025; https://proceedings.mlr.press/v267/karchmer25a.html); *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/feldman26a.html).
- Applicability to current branch: This is adjacent in motivation but not compatible with the exact protocol: it uses squared loss, clipping, rounding, mini-batches, and a precision parameter, and the 2026 source records a flaw in the claimed upper-bound route.
- Proof roadmap:
  1. Convert finite-precision gradient information to an SQ-like transcript.
  2. Convert the transcript to randomized features.
  3. Attempt to derandomize the representation.
- Key lemmas / ingredients: clipped approximate gradients, finite transcript counting, SQ-to-feature reductions.
- Main transfer challenges: The theorem validity issue and the altered algorithm prevent hypothesis discharge; restoring the exact ReLU/logistic/one-sample-SGD interface would require a new theorem rather than a local wrapper.
- Potential repair techniques and supporting references:
  - Technique: None within the unchanged branch; retain this route only as negative design guidance.
  - Supporting reference: *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026; https://proceedings.mlr.press/v336/feldman26a.html).
  - Why it may help: Its proof-flaw notice prevents accidental use of an unsupported SGD-to-feature producer.
- Disposition: `rejected`
- Branch notes: The selected framework deliberately begins from the branch's explicit confident-map premise and uses no result from this rejected route.
