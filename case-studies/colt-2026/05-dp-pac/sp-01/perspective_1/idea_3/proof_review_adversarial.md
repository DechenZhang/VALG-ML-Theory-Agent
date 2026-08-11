# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The candidate-wise unrestricted lower clause is the most vulnerable chain: the ALMM expected-risk interface must survive arbitrary outputs, produce learner-independent hard priors, pass through a total one-use hidden-factor learner, tensorize on one common target/distribution, and return from expected risk to a strict PAC-failure event. The finite restriction/extension equivalence preserves all-input privacy and task risk before finite minimax; the common experiment fixes every prior and task before the learner; the one-use map preserves one replacement; and the exact rational gap yields a deterministic strict witness. No link changes learner scope, target, candidate, or risk.
- Standalone theorem attack: The main theorem is self-contained after setup and preliminaries, states the canonical-product, VC-one, countable-evaluation, and privacy assumptions, labels the result conditional, and separates the arbitrary-\(\delta\) upper clause from the candidate-capped lower clause. Its attained-\(n_*\) sandwich checks both lower delta conditions before substitution. It does not claim the unresolved characterization for arbitrary finite-Littlestone classes.
- Weakest step-level claim: The hardest local attacks concern the unrestricted minimax transfer in Steps 8--10 and the hidden simulation in Step 12. Restricting an arbitrary learner to each finite witness and extending a finite kernel back to the original space give an exact two-way kernel correspondence, so finite matrix minimax does not narrow the learner quantifier. In Step 12, overflow is decided from input-independent routing before input access, a used factor row enters one global slot, finite evaluation handles arbitrary improper outputs, and input-independent mixing preserves one \((\varepsilon,\delta)\) cost.
- Candidate counterexamples or stress cases: Tested countable quotient cells, arbitrary nonrealizable labels, empty choosing support, zero- and full-mass blocks, one active factor, \(n=1\), \(m_{n,i}=8\), highly heterogeneous weights, \(\pi_i\in\{0,1\}\), and \(k=1\). Countable-cell risk sums and finite evaluations handle measurability; explicit privacy branches handle empty support and arbitrary labels; weighted expectations avoid a factor union bound; and the one-factor route has exactly zero overflow and coupling loss. No candidate counterexample remains.
- Explicit-rate stress cases: Tested \(\varepsilon=1/10\), \(\delta\) approaching one in the upper clause, equality in either lower delta cap, all quota ceilings, the \(M\ge2k\) absorption, and substitution only at the attained \(n_*\). The proof displays the quota bridge and hidden-constant dependence, retains both candidate caps, removes the final ceiling using integral \(C_{\rm up}Q_\oplus\), and proves the strict PAC separation by the positive margin \(387/262144\).
- Appendix self-contained attack surface: All fifteen accepted step interfaces and their substantive local derivations are present as paper-facing results, including the Step 12--15 coupling, tensorization, strict conversion, candidate closure, and baseline proofs. The attempt-2 source differs from the archived attempt only by the declared 31 repairs: 21 repaired qquad commands, six repaired quad commands, two repaired operatorname commands, one repaired reference command, and the restored Step 8 multiplication. Byte scans, label/citation checks, and a clean source-only TeX/BibTeX build find no unresolved reference, citation, control-byte, malformed-command, or compilation error.
- Scope or mode upgrade attacks: Upper utility remains high probability for every allowed distribution and every \(0<\delta<1\); lower utility is a fixed-candidate impossibility only after both numerical caps are checked. Common-prior tensorization uses pointwise finite risk decomposition and marginal expectations, not output independence or a joint overflow event. The bounded-loss step returns to the exact strict event \(R_D>1/16\); no almost-sure, uniform-in-candidate, proper, finite-support, quotient-output, or factorwise-output upgrade is made.
- Remaining risk: No acceptance-blocking adversarial risk remains under the formalized conditional setting. The parent open problem outside canonical countably coded VC-one products remains open by the theorem's explicit scope; that limitation is not hidden as a proof conclusion.
