# Citation Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The available `tectonic` binary still fails before TeX processing, so no
   compiled PDF or TeX log is available.  Independent static checks on the
   final attempt-4 bundle find 87 unique labels, no duplicate labels, no
   unresolved recognized `\ref` or `\pageref` target, and no missing BibTeX
   key.

2. `latex_template/5_appendix.tex:3367` and line 3393 retain the descriptive
   phrase `Step~009`, and line 4400 retains the local display locator `(A2)`.
   These strings are not used as proof authorities: the same passages name
   Proposition~`\ref{prop:complete-frozen-reserve-interface}` and
   Proposition~`\ref{prop:step-011-chronological-contraction}`, respectively,
   and restate the exact conclusions consumed.  Removing the redundant
   descriptors would improve presentation but is not required for citation
   closure.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Citation Audit

- Cited theorem statements: This review is bound to final attempt-4
  `assembly_report.md` SHA-256
  `830b60a77db4190f6da679f8198b47e142865aa1c0a1d196910bb30d0bede7f3`.
  The reviewed source hashes are `676475d6cbb2a572daa8de4629b53c1d2ab355bc8bf5541d273c74734114098e`
  for `1_intro.tex`,
  `58c286d9a6d1c06fe511dd256fefb57cdab9cf06c0dea82093931e1770c77e79`
  for `2_preliminary.tex`,
  `2258cb4718cd4c560f1f8abf5d314a8bd1ea6ddb5aa7f4846304302b3b6cf19b`
  for `3_main.tex`,
  `b8235c018a47c1e0528a540ebc54a59c64f503129e667b121962ee22ee017279`
  for `4_proof_sketch.tex`, and
  `9cff87a1c6a0e85dc84d698f9c45d207ba0a7e62c76b422c6359c250a2cbc18e`
  for `5_appendix.tex`.
  All thirteen accepted steps are represented by self-contained named local
  results, and the final theorem proof cites the exact producers for geometry,
  windows, coverage, recurrence, selection, seed, landing, contraction,
  stopping, runtime, and restart confidence.
- Source fidelity: The only external source is
  Uschmajew~`\cite{Uschmajew2012}`.  The public text gives the precise scope
  (Assumption 1, Lemma 3.2, and Theorems 3.3 and 3.5), imports only the
  qualitative quotient and block-Gauss--Seidel interpretation, records the
  nonzero-factor and nonsingular-normal-equation requirements, and explicitly
  excludes the branch-specific radius, inverse reserves, refresh identity,
  and contraction constants from the imported conclusions.  This matches the
  accepted Step 011 application.
- Instantiation and object mapping: The external application maps current
  factors to `G_M`, the held design to `H_M=X_{M'}\odot X_{M''}`, and the
  quotient representative to `(C_U,C_V,C_W,s)`.  The public setup and
  Proposition~`\ref{prop:step-006-graph}` now state the complete observable
  retention, three-mode edge, component-count, and tie-breaking rule directly.
  The setup, main theorem, and both Step 002 consumers also expose the same
  accepted definitions of `Z_{ij}^{(M)}`, `W_{ij}`, `C_{ij}`, and
  `E_{{\rm win},ij}`.  No branch-local file supplies an algorithmic or event
  definition.
- Quantitative regime fidelity: The two-sided window mass, rank
  `Theta(r^{5/3}(log r)^{5/2})`, one-run probability, smoothing and restart
  probability modes, burn/certification and stopping horizons, quotient and
  Frobenius norms, chart radius, accuracy dependence, and hidden-constant
  regimes agree with the accepted sources.  The Rate Specialization Bridge
  names the coupon and dense-cost producers, exposes `k`, `L_prop`, `m_cap`,
  and `J`, displays every domination used to obtain the stated rank powers,
  and keeps the hidden constant dependent only on universal algorithmic
  constants.
- Assumption discharge: The rate bridge is stated under the full numbered
  assumption range, including random-initialization independence, the fixed
  smoothing event from Proposition~`\ref{prop:step-001-geometry}`, `k\le n`,
  the `kappa_0` and `rho^{-1}` envelopes, accuracy, and both confidence
  parameters.  Its proof cites the coupon, cyclic-contraction, stopping,
  dense-cost, and static-geometry producers before applying restart
  independence and the tower property.
- Main theorem internal references: The main theorem uses numbered primitive
  assumptions and the earlier public setup only; it contains no appendix
  theorem, proof-step, reviewer, or branch-local reference.  The explicit-rate
  and deterministic-baseline corollary proofs use typed public
  Proposition references.  The Gaussian assumption reference and the
  `\widetilde C_V` quotient term remain correctly formed.
- Appendix cited-result traceability: The former Step 010 cycle is removed.
  Proposition~`\ref{prop:complete-frozen-reserve-interface}` derives the
  positive congruence, pair-Gram floor, coefficient reserve, and positive
  normalizers from the earlier Step 009 results before the frozen solves;
  Proposition~`\ref{prop:step-010-quotient-entry}` is only a downstream
  consumer.  The restored five-row finite-range certificate in Step 002 is
  identical to the accepted source.  Other cross-step uses name earlier
  Lemmas or Propositions and restate the consumed interfaces in current
  notation.
- External BibTeX entries: `Uschmajew2012` has a matching complete entry with
  author, title, journal, volume, issue, pages, year, and DOI.  No other
  external citation command or uncited external source was found.  The
  reviewed `reference.bib` SHA-256 is
  `90d1d643ebc5ca062ead09c8ab09fbe85fee42c8856c03c4df022f3b5cbcb081`.
- Internal label/ref pairs: Static parsing finds 87 unique labels and 68
  distinct recognized reference targets, with no duplicate label and no
  unresolved target.  No claim, hypothesis, or invariant environment is used
  as public citation evidence.
- Unsupported standard facts: Gaussian tails and regression, product tails,
  Khatri--Rao identities, Schur/Gershgorin bounds, Neumann estimates,
  Moore--Penrose boundary handling, tensor/Kronecker norm facts, logarithm
  bounds, and restart products are either derived inline or stated in current
  notation with their hypotheses checked.  No acceptance-blocking vague
  appeal to a standard result remains.

Verdict alignment: `PASS` has `Blocking Issues = None`,
`Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
