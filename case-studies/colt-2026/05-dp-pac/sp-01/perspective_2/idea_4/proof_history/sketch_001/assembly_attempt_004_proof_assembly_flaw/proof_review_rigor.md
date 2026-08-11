# Rigor Proof Review

## Reviewer Verdict
BLOCKING

## Blocking Issues

1. The event used as a theorem-facing condition in the Step-012 units is
   defined after its first consumers.  `Proposition~\ref{prop:step-012-selected-leaf}`
   (`latex_template/5_appendix.tex:6521--6578`),
   `Lemma~\ref{lem:step-012-leaf-error}` (`:6610--6625`),
   `Lemma~\ref{lem:step-012-empirical}` (`:6687--6703`), and the fixed-family
   and boundary propositions (`:6780--6883`) all assume that
   `E_{\mathrm{core}}` holds.  Its only definition is later, in standalone
   prose at `:7100--7107`, as
   `E_{\rm core}:=E_{\rm good}\cap E_{\rm mech}`.  The consumers therefore
   are not self-contained theorem statements and the generated-event flow is
   not producer-before-consumer.  Move the definition into a preceding named
   result (with the `E_{\rm good}` and `E_{\rm mech}` producer references) or
   state the intersection inline before any Step-012 consumer.

2. The public dependency graph still contains theorem-critical unnamed and
   workflow-style authorities.  The statement of
   `prop:step-010-interfaces` says "the finite-mark results of Step~004"
   (`latex_template/5_appendix.tex:4850`) instead of naming the occurrence,
   lift, and projection results.  The statement of
   `prop:step-015-mark` similarly says "the finite-mark results from
   marked-projection result" (`:9574--9580`), and its proof appeals to "the
   kernel-measurability propositions and the finite-mark construction"
   (`:9628--9630`).  The old-interface proof also uses "the finite-mark
   lemmas" without labels (`:8353--8358`), and the totalization proof calls
   its measurable realization the "kernel-measurability result" (`:665--668`).
   These are internal mathematical dependencies, not optional exposition;
   under the reference contract each must be a named `Lemma`, `Proposition`,
   `Theorem`, or `Corollary` with a `\label`/`\ref` pair and an explicit
   assumption basis.

3. The appendix still exposes audit/provenance scaffolding as public paper
   text.  Representative blocks occur at
   `latex_template/5_appendix.tex:8--138`, `:3386--3557`, `:4246--4370`,
   `:5484--5643`, `:6383--6520`, and `:6977--7120`; the VC and old-arm
   preambles explicitly say "No paper theorem is invoked", that
   "source-theorem applications were checked inside the preceding result",
   describe the "usable structural content" of a source theorem, or state
   that an "argument uses only the displayed results" (`:7745--7750`,
   `:8324--8332`, `:10003--10045`).  These paragraphs separate source
   restatement, object mapping, and assumption-discharge narration from the
   paper-facing statements and proofs.  The appendix hygiene and
   derivation-over-notation contracts reject this workflow/audit prose even
   though much of the underlying algebra is present in adjacent proof bodies.
   Integrate the needed mappings and discharges into named theorem-style
   proofs and remove the audit-only narration.

4. `prop:step-015-interfaces` (`latex_template/5_appendix.tex:8243--8383`)
   is an extensive old-arm source/interface inventory that has no consumer:
   `prop:step-015-interfaces` is declared but never referenced elsewhere in
   the public bundle.  It duplicates the later `step-015` dictionary, source
   map, descent, mechanism, privacy, and utility results, and its own
   statement/proof contains the unnamed finite-mark dependency noted above.
   An unconsumed theorem-level inventory is not a valid assembly bridge under
   the paper-facing full-derivation contract.  Remove it, or turn it into a
   genuinely needed named bridge and cite it from the old-arm interface.

## Nonblocking Concerns

1. Direct comparison of all sixteen accepted step proofs with the current
   appendix proof bodies found the substantive local derivations preserved:
   quotient/risk identities, countable-kernel promotion, trace and
   without-replacement bounds, fixed-point calibration, DDim descent,
   mechanism composition, the marked holdout calculation, and the old and
   finite arms.  No independent step-level counterexample was found; the
   blockers above are assembly and paper-translation defects.
2. The current constants are synchronized.  The VC rate exports
   `K_{\mathrm V}` and exponent `4` (`:7997--8010`), the old rate exports
   `K_{\mathrm O}` in its final interface (`:10028--10045`), and the minimum
   uses `K_*` with the stated domination chain (`:10430--10508`).  The
   `q_*=6` schedule and its fixed-versus-scheduled-`\delta` distinction
   (`:10543--10570`) are algebraically sound.
3. The probability modes remain aligned: privacy is pointwise for every raw
   replace-one input (including arbitrary labels), while the PAC statement is
   unconditional iid high probability over sampling, the data-independent
   partition, and mechanism randomness.  The Step-013 argument uses the mark
   only for pathwise producer localization and does not claim independence
   after conditioning on the mark, selected stage, transcript, or output.
4. Boundary checks in the accepted derivations cover the exact `d=0,N=0`
   singleton law, `d=1`, `v=1`, `v=d`, `k=2`, empty and fallback paths,
   finite versus infinite `C`, and fixed versus scheduled `\delta`.  The
   finite arm is disabled only by the explicit `+\infty` convention.
5. The cached Tectonic build reported in `assembly_report.md` has no
   unresolved references or citations (apart from ordinary overfull-box
   warnings).  Compilation and label closure do not cure the theorem-order,
   unnamed-dependency, or public-hygiene defects.
6. `2_preliminary.tex:9--46` is still dense with calibration symbols, but it
   now points to named calibration/teacher results and is therefore a
   readability concern secondary to the concrete appendix blockers.  Minor
   mechanical wording such as "Since its threshold is minimal, Define
   `q_*:=6`" at `5_appendix.tex:10543--10547` should also be cleaned in the
   same assembly pass.

## Suggested Repair Depth
assembly

## Smallest Candidate Repair Target
/proof-assembly

## Rigor Audit

- Mathematical derivations: The displayed local equations, concentration
  calculations, privacy composition, holdout integration, and three-arm rate
  algebra are mutually coherent and match the accepted step conclusions.  The
  forward `E_{\rm core}` use and unnamed dependencies prevent those conclusions
  from being exported through a contract-valid paper-facing chain.
- Statement self-containedness: The four primitive assumptions are numbered
  and stable, but several Step-012 statements use an event defined later, and
  two theorem statements use Step-004/marked-projection prose instead of
  named prior results.
- Main theorem constants and notation: `K_{\mathrm V}`, `K_{\mathrm O}`,
  `K_*`, the three rates, and the `q_*=6` schedule agree across the live main
  theorem and appendix.  The public learner interface remains dictionary-
  shaped, but no unresolved constant identity was found in this attempt.
- Derivation-over-notation: Accepted source derivations retain the needed
  definitions, inequalities, tail bounds, and boundary checks.  The residual
  source/object inventories and duplicate old-arm interface nevertheless use
  provenance narration in place of a clean theorem dependency graph.
- Explicit-rate contract: Exposed structural, confidence, privacy, fixed-
  horizon, and probability variables are declared; the frontier proposition
  displays auxiliary choices, term absorptions, probability conversion, and
  baseline reductions.  No rate inequality itself was found to fail.
- Appendix full derivations: All sixteen accepted step bodies were compared
  with the appendix, and the terminal compositions are now attached to named
  proofs.  Acceptance is still blocked by the forward event definition and
  the public audit/inventory material, not by an omitted tail or algebraic
  chain.
- Quantifiers and constants: Raw-neighbor DP quantifiers, realizable iid
  suprema, finite/infinite-class conventions, universal hidden constants, and
  fixed-versus-scheduled-`\delta` scopes are preserved.  The unresolved issue
  is ordering and reference provenance, not a changed quantifier.
- Probability or convergence modes: No expectation-to-high-probability,
  conditional-to-unconditional, or pointwise-to-uniform upgrade was found.
  The mark is integrated only after the pathwise inclusion and full-master
  empirical bound.
- Boundary cases: Null, endpoint, repeated-record, empty-list, fallback,
  finite-class, and positive-dimensional boundary branches are explicitly
  handled in the accepted results and current appendix.
- Hidden subclaims: No new mathematical lemma beyond the accepted steps was
  detected.  The unnamed dependency phrases and the unconsumed old-arm
  inventory are hidden paper-facing obligations and must be removed or
  converted into named, consumed results.

Verdict alignment: `BLOCKING` is paired with numbered assembly-level issues,
`Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
