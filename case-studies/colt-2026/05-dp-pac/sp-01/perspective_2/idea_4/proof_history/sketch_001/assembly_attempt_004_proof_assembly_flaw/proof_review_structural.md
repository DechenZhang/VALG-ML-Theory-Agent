# Structural Proof Review

## Reviewer Verdict
BLOCKING

## Blocking Issues

1. The public appendix still exposes large standalone source, dependency, and
   audit blocks outside theorem/proof environments. Representative examples
   are `latex_template/5_appendix.tex:8-138` (source restatements and
   calibration/assumption discharge), `:3386-3557` (restriction/decomposition
   inventory), `:4246-4370` (DDim source/dependency comparison), `:5484-5643`
   (privacy source applications), `:6383-6520` (SOA source/cited-result
   discussion), and `:6977-7120` (mark, fixed-point, mechanism, and event
   ledger). These paragraphs are not concise mathematical exposition: they
   contain source restatements, object mappings, provenance, and workflow
   conclusions that the assembly contract forbids as public scaffolding.
   Integrate the needed assumptions and cited-result discharges into the
   adjacent theorem statements/proofs, or remove the audit-only prose.

2. The theorem-facing statement of `prop:step-010-interfaces` uses a proof
   workflow identifier as mathematical authority at
   `latex_template/5_appendix.tex:4850` ("the finite-mark results of
   Step~004"). A public dependency must name theorem-style results, such as
   `Lemma~\ref{lem:step-004-occurrence}` and
   `Proposition~\ref{prop:step-004-lift}`/`\ref{prop:step-004-projection}`;
   the workflow ID cannot close the dependency graph.

3. `E_{\rm core}` is consumed in theorem statements before it is defined.
   The first uses are in `latex_template/5_appendix.tex:6527`, `:6613`,
   `:6692`, `:6784`, and `:6834`, while its only definition appears later in
   standalone prose at `:7105` as
   `E_{\rm core}:=E_{\rm good}\cap E_{\rm mech}`. Consequently the Step 012
   units are not self-contained and rely on later surrounding workflow text.
   Promote the event definition into a prior named theorem-style interface or
   state the condition inline before any consumer.

4. `prop:step-015-interfaces` (`latex_template/5_appendix.tex:8243-8383`)
   is an extensive old-arm source/interface inventory with no
   `\ref{prop:step-015-interfaces}` consumer. It duplicates the later named
   old-arm results, is not direct assembly-only reasoning, and adds an
   unconsumed theorem-level block (the step-015 subsection has 24 public units
   for 23 accepted source units). Remove it or rework it into a genuine,
   cited bridge whose statement is needed by the final assembly.

## Nonblocking Concerns

1. The assembly report records a cached Tectonic build with exit code 0 and no
   unresolved references/citations; the remaining diagnostics are overfull
   boxes. This does not cure the structural contract violations above.
2. There is a minor mechanical prose defect in
   `latex_template/5_appendix.tex:10545-10546` ("Since its threshold is
   minimal, Define q_*:=6"). It should be cleaned during the same assembly
   pass.

## Suggested Repair Depth
assembly

## Smallest Candidate Repair Target
/proof-assembly

## Structural Audit

- Goal alignment: `setting.md` is an exact-goal, explicitly conditional
  specification. The main theorem preserves the four numbered primitive
  assumptions, finite-or-countable quotient scope, raw all-input replacement
  DP, realizable iid population risk, the improper quotient output interface,
  the `d=0` no-data branch, and the VC, old, finite, and minimum rate claims.
  No quantifier, metric, probability mode, or scope change was found.
- Dependency closure: All sixteen live proof/review pairs are present; the
  proof artifacts are `COMPLETE` and their reviews are `ACCEPTED`. The
  accepted dependencies are available and the 011, 013, 014, 015, and 016
  spot checks preserve their declared assumptions and conclusions. Public
  closure nevertheless fails at the workflow-ID dependency in issue 2, and
  issue 4 leaves an unconsumed block.
- Sketch-step coverage: The appendix contains subsections for
  `step_001` through `step_016` plus the main-theorem proof. Source local-unit
  counts are `(6,7,5,4,5,5,5,8,5,4,7,5,6,5,23,7)`; the extra step-015 unit is
  exactly the orphan identified in issue 4. Terminal target compositions for
  the required steps appear inside proof environments.
- Assembly discipline: The accepted local derivations and terminal
  compositions are largely carried over without a changed step claim or an
  independent new inequality. The source-vs-appendix spot checks for steps
  011 and 013-016 retain adjacency/sensitivity, adaptive composition,
  holdout integration, rate elimination, old-arm, and finite-arm derivations.
  The standalone audit prose, invalid authority reference, and out-of-order
  event are assembly synchronization defects.
- LaTeX bundle structural synchronization: All nine required bundle files
  exist and `main.tex` is the compile entry for the five content files. The
  current bundle has balanced environments (110 proofs, 39 lemmas, 70
  propositions, one theorem, one corollary, and four assumptions), 133 unique
  labels, and 113 distinct internal reference targets with no missing target.
  These surface checks do not override the forbidden public scaffolding.
- Main theorem self-containedness: `1_intro.tex` supplies numbered stable
  assumptions and setting quantities, `2_preliminary.tex` supplies the common
  quotient/kernel interface, and `3_main.tex` states the learner, raw
  pullback, quantifiers, DP/PAC modes, and explicit rates without using
  appendix-local symbols. The readable frontier corollary cites a named rate
  bridge. The local `E_{\rm core}` ordering defect remains in the appendix.
- Theorem-style statement shape: The mathematical units are represented by
  lemma, proposition, theorem, or corollary environments with explicit
  assumptions, and no public `claim`, `hypothesis`, or `invariant` environment
  is used. The source/inventory paragraphs and the orphan proposition still
  violate the required paper-facing shape.
- Explicit-rate and bridge structure: The public rates expose their required
  variables and universal hidden constants. Ceiling, term-absorption,
  confidence conversion, fixed-versus-scheduled-delta, and baseline inequalities
  are displayed in the named appendix bridge and the frontier corollary. No
  rate-scope mismatch was found; the blockers are presentation and dependency
  order.
- Derivation-over-notation: The full audit and the remaining spot checks find
  substantive definitions, inequalities, boundary cases, cited-result
  mappings, and target compositions in the appendix proof bodies. The issue
  is that some of the same material is also left as forbidden standalone
  audit prose, not that a step proof is absent.
- Appendix local-unit coverage: Every accepted sketch step has a mathematical
  subsection and a concluding proof composition, including the final common
  interface comparison. Step 015 has one additional unreferenced public unit;
  removing or integrating it is required before coverage can be accepted.
- Internal label/ref structure: Label uniqueness and reference resolution are
  clean, but `prop:step-015-interfaces` has a declaration and zero internal
  references. Section labels are naturally unreferenced; the proposition is
  the substantive orphan.
