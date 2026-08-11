# Technical Survey

## Current Idea Branch

- Perspective: `perspective_1`
- Current idea: `idea_5`
- Setting / goal summary: Conditional universal nonexistence. Assume the universal polynomial global-stability profile `assump:polynomial-global-stability`, convert it to an unrestricted approximate-DP learner with the exact Bun--Livni--Moran selection bound, and show that the fully quantified superpolynomial separation `log |C_k| > VC(C_k)^p` forces the resulting sample bound to be `o(log |C_k|)` while retaining a source-compatible negligible-`delta` schedule.

## Candidate Frameworks

### Framework 1: Bun--Livni--Moran stable selection with an explicit privacy schedule

- Source papers: Mark Bun, Roi Livni, and Shay Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3 (22 June 2021), Section 5.2, Theorem 17 (`thm:selection`); current branch `perspective_1/idea_5/setting.md`.
- Applicability to current branch: This is an exact source-interface match. The primitive profile supplies one distribution-independent randomized producer `G_C` with sample cost `m_C <= q(C)^a`, an accurate atom of mass at least `q(C)^(-a)`, and arbitrary output allowed. Theorem 17 converts precisely this atom guarantee into an arbitrary-output `(epsilon,delta)`-DP PAC learner. The source uses `{-1,+1}` labels, so a bijective recoding is required but changes neither risk nor replacement adjacency. Its displayed two-term bound is strong enough for the branch's explicit `N_a(q,L,epsilon)` schedule.
- Proof roadmap:
  1. Goal: obtain the exact source conversion. Dependencies: none. Assumptions: `assump:polynomial-global-stability` and the public parameter ranges. Recode binary labels and instantiate Theorem 17 with `alpha=alpha_0`, `beta=beta_0`, `epsilon=epsilon_0`, `eta=q^{-a}`, and `m=m_C`; verify the producer is fixed independently of the realizable distribution and the output is unrestricted.
  2. Goal: prove `(SC)`. Dependencies: item 1. Assumptions: only the primitive profile bounds already passed through item 1. Substitute the profile into the exact source bound and prove the uniform ceiling with `b=2a+2`, including integer padding.
  3. Goal: prove `(LD)`. Dependencies: item 2 only for the shared schedule interface. Assumptions: scalar definitions in `setting.md`. Define `T_a`, `delta_a`, and `N_a` and record the exact identity with no cardinality dependence hidden in a constant.
  4. Goal: prove `(AS)`. Dependencies: items 2--3. Assumptions: size divergence, exact Item 2, and the finite-class Littlestone counting bound. Prove `q_k=L_k^{o(1)}` and propagate it through the explicit formulas without assuming `q_k -> infinity`.
  5. Goal: prove `(PN)`. Dependencies: items 3--4. Assumptions: only `L_k -> infinity` and earlier derived formulas. Factor the privacy product into an `x_k=q_k^b` term and a `u(L_k)` term uniformly, including bounded `q_k`, and compare with `c/(N_k^2 log(eN_k))`.
  6. Goal: close the conditional theorem. Dependencies: items 1--5. Assumptions: the original primitive profile and sequence premises. Assemble the learners and use `N_k=o(L_k)` plus DP monotonicity to contradict Item 3 at the stated or weaker privacy schedule.
- Key lemmas / ingredients: Theorem 17's stable-histogram/private-selection conversion; its source Lemma 15 (stable histograms) and Lemma 16 (generic private learner) only as internal support for the theorem interface; elementary inequalities `a log q <= a q^b`, `q>=1`; `LD(C)<=log_2|C|`; iterated-log growth; and the factorization in `(PN)`.
- Main transfer challenges: The source theorem is written for `{-1,+1}` labels and a fixed realizable distribution, while the branch uses `{0,1}` and a distribution-free producer. The source statement gives a big-O bound rather than the branch's named constant, so a universal `C_BLM` must be fixed before the `(SC)` bridge. The sequence assumptions do not imply `q_k -> infinity` (VC/LD-one point-function classes are the boundary example), which makes a cardinality-dependent `u(L_k)` term necessary for source-scale negligible `delta`. Finally, the lower-bound contradiction must preserve the exact Item 2 quantifier order and must not claim an unconditional resolution of Open Question 2.
- Potential repair techniques and supporting references:
  - Technique: Treat label recoding as an explicit current-notation wrapper and use exact equality of risks, atom probabilities, and neighboring-record relations.
  - Supporting reference: Bun--Livni--Moran, arXiv:2003.00563v3, Theorem 17 and the algorithm immediately following it.
  - Why it may help: It discharges the source-convention and arbitrary-output interfaces without imposing properness or efficiency.
  - Technique: Use `b=2a+2` and `T=q^b+u(L)` so every source logarithm is dominated by `q^b(1+T)` and the privacy correction remains explicit.
  - Supporting reference: current branch `setting.md`, equations `(SC)`, `(LD)`, and `(PN)`.
  - Why it may help: It makes the bounded-`q` boundary uniform and prevents an invalid inference that cardinality growth forces a complexity parameter to grow.
- Disposition: `selected`
- Branch notes: The source's Theorem 17 proof says informally that the final private learner identifies the frequent hypothesis; the theorem interface actually needed here is only that its output has population loss at most `alpha` with probability at least `1-beta`. No stronger identification claim is used. The source's qualitative finite-Littlestone construction and the VC-one paper are motivation, not inputs to this conditional branch.

### Framework 2: Generic finite-class exponential-mechanism learner

- Source papers: Kasiviswanathan et al., *What Can We Learn Privately?* (arXiv:0803.0924); current branch `LITERATURE_SURVEY.md` entry D2.
- Applicability to current branch: The generic learner gives an `O(log |C|)` upper bound, but it does not exploit `assump:polynomial-global-stability` and cannot establish the required `o(log |C_k|)` contradiction.
- Proof roadmap:
  1. Goal: construct a private finite-class ERM. Dependencies: none. Assumptions: finiteness of `C` and fixed PAC/privacy parameters.
  2. Goal: prove its utility. Dependencies: item 1. Assumptions: realizability and finite-class uniform convergence.
  3. Goal: compare its rate with the target. Dependencies: item 2. Assumptions: the sequence premises; the comparison remains only `O(log |C|)`.
- Key lemmas / ingredients: Exponential mechanism utility and finite-class uniform convergence.
- Main transfer challenges: The cardinality term is the target scale rather than a sublogarithmic upper bound; it gives no `(SC)`, `(AS)`, or bounded-`q` privacy bridge.
- Potential repair techniques and supporting references:
  - Technique: Use the stable producer as the candidate generator and invoke Theorem 17 instead.
  - Supporting reference: Bun--Livni--Moran, arXiv:2003.00563v3, Theorem 17.
  - Why it may help: The candidate list has effective mass `eta` rather than cardinality `|C|`.
- Disposition: `rejected`
- Branch notes: This framework is retained only as the generic comparison that the conditional theorem must beat.

### Framework 3: Polynomial-in-Littlestone private learner

- Source papers: Ghazi et al., *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy* (arXiv:2012.03893); Lyu, *Private Learning of Littlestone Classes, Revisited* (arXiv:2510.00076); current branch `LITERATURE_SURVEY.md` entries D5 and D6.
- Applicability to current branch: These universal upper bounds are polynomial in `LD(C)`, not in `q(C)=VC(C)+1+log^*(1+LD(C))`. Item 2 alone permits `LD(C_k)` as large as order `log |C_k|`, so they do not imply a sublogarithmic rate for the present target.
- Proof roadmap:
  1. Goal: obtain a polynomial-in-Littlestone learner. Dependencies: none. Assumptions: finite Littlestone dimension and the cited theorem's PAC/privacy ranges.
  2. Goal: compare its rate with `log |C_k|`. Dependencies: item 1. Assumptions: finiteness and the sequence notation.
  3. Goal: attempt an Item 2 specialization. Dependencies: item 2. Assumptions: exact Item 2 only; this is insufficient because it controls VC rather than Littlestone dimension.
- Key lemmas / ingredients: Irreducibility/decomposition-tree upper bounds and private stable selection.
- Main transfer challenges: The needed comparison would require an unsupported relation between `LD` and `VC` stronger than the setting provides; switching to it would change the approved primitive profile.
- Potential repair techniques and supporting references:
  - Technique: Keep only the stable-selection conversion and expose the stronger profile as the sole conditional assumption.
  - Supporting reference: current branch `setting.md`, `assump:polynomial-global-stability`.
  - Why it may help: It localizes the unresolved theorem-contract content instead of silently importing a stronger LD-versus-VC claim.
- Disposition: `rejected`
- Branch notes: The framework is a consistency check on the source envelope, not a proof route for this idea.
