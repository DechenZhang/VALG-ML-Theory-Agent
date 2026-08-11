# Technical Survey

## Current Idea Branch

- Perspective: `perspective_2`
- Current idea: `idea_2`
- Setting / goal summary: For a finite binary class containing a primitive `(k,N)` disjoint-threshold minor, prove an unrestricted improper approximate-DP realizable-PAC lower bound `m = Omega(k log^* N)`. The proof must first derive a finite algorithm-independent expected-risk hard prior for one threshold arm, then use an iid hidden-arm reduction with exact one-record privacy.

## Candidate Frameworks

### Framework 1: Active Alon empirical-threshold proof, finite minimax, and iid hidden-arm reduction

- Source papers: Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949; Mark Bun, Kobbi Nissim, Uri Stemmer, and Salil Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, corrected 2024 revision; branch transfer map in `perspective_2/idea_2/idea.md`.
- Applicability to current branch: Alon et al. is the required arbitrary-output threshold lower-bound source. Its active proof exposes the empirical-loss, Ramsey, one-record neighboring-family, and binary-search mechanisms needed to adapt the result to expected loss `1/20` and every `epsilon <= 1`. Bun et al. supplies the exact with-replacement `n`-from-`9n` PAC-to-empirical interface. Finite minimax turns the resulting learner-by-learner finite obstruction into one prior independent of the learner. The branch-local hidden-arm construction then yields the factor `k` without properness or group privacy.
- Proof roadmap:
  1. Convert any `n`-sample threshold kernel that is good on every finite experiment `(t,U)` into a `9n`-record empirical learner; prove that the conversion retains `(epsilon,delta)` privacy for `epsilon <= 1`.
  2. Re-run the active Alon homogeneous-set proof at expected empirical loss `1/20`, including the endpoint `epsilon=1`, finite `delta`, arbitrary outputs, odd sample-size parity, Ramsey coloring, and binary-search counting.
  3. Restrict arbitrary outputs to the finite cube and apply finite zero-sum minimax to produce `(HP)` without assuming a hard prior.
  4. Feed the prior into the iid hidden-arm reduction, prove exact one-record privacy, couple to an iid realizable mixture, use exchangeability and overflow control, and specialize constants.
- Key lemmas / ingredients: Alon active `thm:main`; active `lem:bun`; `def:homog`; active `lem:finiteramsey` (also labeled `lem:ramsey`); active Erdos-Rado `thm:ramsey`; active `lem:lbhomog`, `lem:AtoP`, `lem:reduction`, `lem:binary`, and `lem:prod`; Bun secrecy-of-the-sample lemma and its PAC-to-empirical corollary; compactness of the finite DP-kernel polytope; finite minimax; Bernstein's binomial tail; conditional iid-arm exchangeability.
- Main transfer challenges: The displayed Alon theorem is only for high-probability `(1/16,1/16)` accuracy and `epsilon=0.1`, and does not state a hard prior. The proof must therefore be adapted, not quoted verbatim. The `9n` subsampling privacy calculation, source/branch threshold orientation, expected-loss endpoint gap, binary-search `D delta` budget, finite-output restriction, and minimax quantifier swap are all theorem-critical. The hidden-arm exchangeability must come from iid latent experiments, not from permutation language alone.
- Potential repair techniques and supporting references:
  - Technique: Use the active proof's sole accuracy input, expected empirical error, with the sharper value `1/20`; keep the universal gap `g_* = 9/(10e) - e/10 > 0` at `epsilon=1` and rescale the homogeneity mesh and binary-search margin by `g_*`.
  - Supporting reference: Alon et al., arXiv:1806.00949, active `lem:reduction`, `lem:AtoP`, and `lem:binary` in `ADP.tex` lines 716--823.
  - Why it may help: It verifies the stronger expected-loss interface directly and avoids an invalid conversion to a `(1/16,1/16)` PAC guarantee.
  - Technique: Use with-replacement secrecy of the sample on `9n` records.
  - Supporting reference: Bun et al., arXiv:1504.07553, `lem:secrecy-of-the-sample` and the PAC-to-empirical lemma cited as Lemma 5.9 by Alon et al.
  - Why it may help: For sampling `n` rows from `9n`, the privacy parameters become `2 epsilon/3` and `(4/9)e^{2 epsilon/3} delta`, no larger than `(epsilon,delta)` for `epsilon <= 1`, while the sampling law is exactly `Q_e^n`.
  - Technique: Apply minimax only after postprocessing every arbitrary hypothesis to its bit vector on `[N]`.
  - Supporting reference: Finite von Neumann minimax theorem; Alon et al.'s explicit arbitrary-output scope.
  - Why it may help: Both the input sample space and restricted output cube are finite, so DP kernels form a compact convex polytope and every experiment risk is affine.
- Disposition: `selected`
- Branch notes: This framework preserves both parent-paper lineage and the branch theorem contract. In the audited local Alon source `<TEMP_ROOT>/d3-src/ADP.tex`, the active chain is the material before line 876. The block beginning with `\ignore{` at line 876 is erased by `header.tex`'s `\newcommand{\ignore}[1]{}` and contains stale duplicate labels; it is not proof authority. The selected framework uses only the active chain and identifies every numerical extension as a current-notation derivation.

### Framework 2: Black-box use of Alon Theorem 1 followed by Yao minimax

- Source papers: Alon et al., *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949.
- Applicability to current branch: The theorem supplies the correct unrestricted `Omega(log^* N)` scale but only at `epsilon=0.1` and high-probability `(1/16,1/16)` accuracy. It does not identify the finite experiment class, expected-risk threshold `1/20`, or a common hard prior.
- Proof roadmap:
  1. Invoke Theorem 1 as a threshold lower bound.
  2. Assert a finite hard distribution by Yao's principle.
  3. Run the hidden-arm reduction.
- Key lemmas / ingredients: Alon active `thm:main`; finite minimax.
- Main transfer challenges: A high-probability theorem does not by itself yield the exact expected-risk finite game, and DP monotonicity cannot extend `epsilon=0.1` to `epsilon` in `(0.1,1]`. The finite experiment support and `9n` interface are also absent from the theorem statement.
- Potential repair techniques and supporting references:
  - Technique: Replace the black-box invocation by the selected active-proof audit.
  - Supporting reference: Alon active proof and Bun PAC-to-empirical lemma.
  - Why it may help: It supplies the missing source-to-claim interfaces without changing the theorem contract.
- Disposition: `rejected`
- Branch notes: This shortcut would assume exactly the unsupported source extensions that `(HP)` is meant to derive.

### Framework 3: Proper multidimensional-threshold lower bound as a direct sum

- Source papers: Bun, Nissim, Stemmer, and Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, corrected 2024 revision; Amos Beimel, Kobbi Nissim, and Uri Stemmer, *Private Learning and Sanitization: Pure vs. Approximate Differential Privacy*, Theory of Computing 2016.
- Applicability to current branch: Existing multidimensional threshold lower bounds exhibit a factor proportional to the number of coordinates, but their learning reductions are proper or tied to interior-point/query-release outputs. The present theorem quantifies over arbitrary improper hypotheses.
- Proof roadmap:
  1. Embed the disjoint threshold product into a multidimensional threshold class.
  2. Invoke the proper learner lower bound.
  3. Transfer it to arbitrary outputs.
- Key lemmas / ingredients: Proper threshold/interior-point reductions; coordinate-product constructions.
- Main transfer challenges: No source-backed properization or arbitrary-output tracing bridge exists under the current assumptions. Adding one would change the algorithmic theorem contract.
- Potential repair techniques and supporting references:
  - Technique: Retain only the finite-uniform empirical reduction from Bun et al. and use Alon et al. for arbitrary outputs.
  - Supporting reference: Alon et al., arXiv:1806.00949.
  - Why it may help: It avoids the unsupported properness transfer while preserving the useful `9n` interface.
- Disposition: `rejected`
- Branch notes: This framework is useful lineage for the product intuition, but it cannot prove the current unrestricted theorem.
