# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public definition of the quantity used in the conclusion is not the
   formal private sample-complexity target.  In
   `latex_template/1_intro.tex:61-68`, (m_C) is written as an infimum over
   (N) subject only to the displayed PAC inequality.  The learner (A_N) is
   free in that display: there is no existential quantifier over a Markov
   kernel and no requirement that the chosen kernel be
   ((\varepsilon,\delta))-DP.  The setting definition does require both.
   Reading the display literally leaves (m_C) undefined; reading it as an
   implicit existential drops privacy.  For example, on a class with two
   realizable concepts, a non-private ERM is a witness under the latter
   reading although the theorem only constructs a private learner.  Thus the
   minimum bound in `3_main.tex:47-54` does not establish the stated target
   until the quantifiers and DP predicate are restored.

2. The theorem does not expose a formally defined learner law at the point
   where it is used.  `latex_template/3_main.tex:7-10` says that
   (K_C^{\mathrm{VC\text{-}Lyu}}) is defined in the preliminaries, but
   `2_preliminary.tex:14-23` gives only a prose description (teacher count,
   blocks, lists, mechanisms, and fallback); it does not define the exact
   integer choices or the measurable map.  The old and finite comparison laws
   are likewise only named/prose-described in `2_preliminary.tex:45-50`.
   Their exact totalizations and mechanisms occur only in the setting or deep
   appendix.  Completing the missing prose in different ways changes the
   output law, privacy interface, and sample size, so a reader who removes
   internal workflow files cannot verify the theorem's Markov-kernel or PAC
   claim.  This is a theorem-interface/self-containedness break, not merely a
   presentation preference.

3. The accepted target-step compositions are not paper-facing proofs in the
   assembled bundle.  All sixteen `\paragraph{Assembly of the step.}` blocks
   in `latex_template/5_appendix.tex` (including lines 731, 1184, 1766,
   2205, 2576, 3098, 3611, 4474, 5118, 5809, 6754, 7367, 8179, 8719,
   10576, and 11345) are outside a `proof` environment.  They contain the
   implications that compose local lemmas into the exact accepted step
   interfaces later cited by the main theorem.  Deleting these workflow
   paragraphs leaves local facts but no in-proof derivation of those
   implications.  The same appendix still contains repeated `Supporting
   facts`, `dependency:`/`Mathematical dependencies`, imperative `Prove` or
   `Construct` openings, and audit summaries (for example
   `5_appendix.tex:9-145, 3662-3856, 4552-4699, 5878-6062, 6814-6973,
   8782-8955`).  These are workflow scaffolding rather than theorem-style
   statements and proofs; the public bundle therefore fails the
   full-derivation and appendix-hygiene gate even though the underlying step
   files are accepted.

4. The asymptotic schedule and its logarithmic exponent have no stable
   provenance.  The corollary uses
   `3_main.tex:57-68`, namely
   \(\delta K_*\Lambda^{q_*}R_{\mathrm{VC}}\to0\), while the VC-arm proof
   establishes only (N\le K\Lambda^4R_{\mathrm{VC}}) with
   (K=\max\{1,4K_{\rm fp}\}) at `5_appendix.tex:8694-8708`.
   `5_appendix.tex:11138-11145` defines (K_*) but never defines
   (q_*), and `1_intro.tex:96-97` refers to generic (K,q) without stating
   that they dominate the VC-arm constants.  A parameter sequence can satisfy
   the displayed (q_*)-schedule while failing the (q=4) schedule unless
   the missing inequalities are supplied.  Consequently the claimed
   (N\delta\to0) and frontier specialization are not currently justified
   as an explicit-rate statement.

## Nonblocking Concerns

1. Targeted stress tests of the accepted local mathematics (the (d=0) and
   (d\ge1) branches, (v=1) and (v=d), empty or duplicate restrictions,
   infinite (C), totalized fallbacks, quotient/raw neighbor mapping, marked
   output projection, and fixed-block holdout conditioning) did not produce a
   separate step-level counterexample.  This observation cannot cure the
   assembly defects above.
2. There is mechanical prose debris in the public appendix, including the
   duplicated phrase `the the cited source constant` near
   `5_appendix.tex:6037` and phrases such as `restriction-list result
   restriction` and `DDim-descent result descent`.  These are secondary to
   the missing in-proof compositions but should be removed during the same
   assembly pass.
3. The confidence ledger, teacher/block dictionary, occurrence mark, and
   comparison-arm metadata in `2_preliminary.tex:8-50` are proof-local
   generated objects.  They are not an independent mathematical
   counterexample, but leaving them public obscures which assumptions are
   primitive and which are proved interfaces.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the final minimum bound for (m_C), because it
  simultaneously depends on the malformed (m_C) quantifier, three only
  informally defined laws, and the undefined frontier exponent.
- Standalone theorem attack: read only `1_intro.tex`, `2_preliminary.tex`, and
  `3_main.tex`, then try to instantiate (A_N^{\mathrm{VC}}) on a raw
  neighboring pair.  The target infimum has no bound learner/DP predicate and
  the named quotient law has no exact procedure to evaluate.
- Weakest step-level claim: the local-to-step target assemblies, especially the
  marked occurrence/holdout-to-PAC composition and the final three-arm
  selection.  Their local ingredients survive the edge tests, but the current
  assembly links are outside proof environments.
- Candidate counterexamples or stress cases: interpret the free (A_N) as a
  non-private ERM; choose (d=1,v=1) or (v=d); use an infinite class with
  empty/fallback lists; and choose a scheduled \(\delta\) sequence that
  separates an unspecified (q_*\) from the proved exponent (4).
- Explicit-rate stress cases: vary (d,v,\delta) at the boundary branches and
  compare (\delta K_*\Lambda^{q_*}R_{\mathrm{VC}}) with the only displayed
  VC-arm bound (\delta K\Lambda^4R_{\mathrm{VC}}).  The required domination is
  not stated.
- Appendix self-contained attack surface: remove the sixteen assembly
  paragraphs and the `Supporting facts`/dependency blocks.  The remaining
  named local results do not state the exact accepted step conclusions or
  their compositions in paper-facing proofs.
- Scope or mode upgrade attacks: no independent probability-mode or
  quotient-to-raw counterexample was found in the accepted local derivations;
  the malformed (m_C) definition nevertheless changes the privacy scope
  under its natural implicit reading.
- Remaining risk: a fresh assembly must restore the formal (m_C) definition,
  give exact common-interface learner definitions before the theorem, define
  and bridge all rate constants/exponents, and translate every target-step
  composition into allowed theorem-style proof text.

Verdict alignment: `BLOCKING` is paired with assembly repair and
`/proof-assembly`.
