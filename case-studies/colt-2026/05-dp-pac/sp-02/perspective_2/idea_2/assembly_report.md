# Assembly Report

## Status

COMPLETE

## Attempted Claim

There exist universal constants \(c,c_\delta>0\) and an integer
\(N_0\geq2\) such that the following holds. For every \(k\geq1\), every
\(N\geq N_0\), every domain \(X\), every finite
\(C\subseteq\{0,1\}^X\), and every fixed-sample learner \(A\) satisfying
`assump:minor-table`, `assump:unrestricted-private-pac`, and
`assump:fixed-parameter-scale` instantiated with the same \(c_\delta\),

\[
m\geq c k\log^*N.
\]

The antecedent is distribution-free realizable PAC in population zero-one
risk with joint probability over the iid sample and learner randomness, at
the fixed sample size \(m\). Privacy is pointwise under ordered replacement
adjacency for every measurable output event. The constants are independent
of \(C,X,k,N,m,\varepsilon_0,\delta_m\), the learner, and the minor table.
For \(k=1\), the proof retains the exact specialization
\(n=2m+12\), \(R=m<n\), zero overflow, no nonhidden-arm simulation, exact
inherited \((\varepsilon_0,\delta_m)\)-privacy, the exact one-chain risk
interface, and \(m\geq(a_{\rm th}/4)\log^*N\).

## Blockers

None

## Notes

- Assembly attempt 2 repairs the public bundle from assembly attempt 1 and
  continues to use sketch attempt 1. All nine current proof/review
  pairs, `step_001` through `step_009`, were rechecked. Every review records
  `ACCEPTED`, and every proof SHA-256 matches the accepted identity recorded
  by the proof workflow.
- The appendix has one paper-facing subsection for each of the nine sketch
  steps and ends with proofs of the main theorem and exact one-chain
  corollary. All 49 source `unit_*` bodies, all their labels, all 344 tagged
  equation blocks under `Local Derivation` and `Target-Step Assembly`, and
  the invoked cited-result interfaces occur in source order with their full
  substantive derivations preserved. The final appendix has 4,834 lines.
- The four aggregate assembly defects were repaired without changing an
  accepted claim or dependency: the three \(M\)-fold iterates again use
  parenthesized iterate notation; the local \(Q_e\), \(\mathcal R_n\),
  \(Q_{(t,U)}\), and \(Q_{(t,U)}^n\) provenance is consistent; all malformed
  public identifiers and five bare `qquad` tokens were restored; and the
  countable iid pool support is now proved inline by a base-\(9n\)
  finite-cylinder construction, including duplicate rows and the finite
  latent-space discharge.
- The public proof derives the learner-independent hard prior before using
  it, constructs the hidden-arm kernel with the unchanged privacy pair,
  proves the overflow, exchangeability, and strict utility interfaces, and
  discharges the hard-prior scalar conditions with
  \(C_\Delta=225(1+\log15)\), \(c_\delta=a_\delta/C_\Delta\),
  \(c=a_{\rm th}/4\), and
  \(\log^*N_0>26/a_{\rm th}\). No new assumption, unreviewed lemma,
  convergence-mode upgrade, or stronger claim was introduced.
- All 392 tagged appendix equations have unique stable labels and every
  prose dependency uses `\eqref`. Across the public TeX bundle there are
  476 unique labels and 754 internal references to 292 targets, with no
  duplicate label or missing target. All six external citation keys resolve
  in `reference.bib`, and no bibliography key is unused.
- Public-TeX workflow-language, placeholder, malformed-reference,
  theorem-environment, assumption-label, citation-key, and literal-equation
  scans pass. The main theorem has no forward reference to appendix-local
  results, and the one-chain corollary defines its theorem-local
  \(n,R,\mathsf O\) trace inline.
- A clean-room Tectonic build in `<TEMP_ROOT>/p2-assembly-v2.9yKDoJ`, using the
  explicit cached v33 local bundle, completed TeX, BibTeX, all required
  reruns, and a 60-page PDF. The final log has no unresolved references or
  citations, no multiply defined labels, and no overfull or underfull boxes.
  Its only diagnostics are two nonfatal template-font substitutions for
  unavailable bold `wasy` shapes at sizes 8 and 6.
