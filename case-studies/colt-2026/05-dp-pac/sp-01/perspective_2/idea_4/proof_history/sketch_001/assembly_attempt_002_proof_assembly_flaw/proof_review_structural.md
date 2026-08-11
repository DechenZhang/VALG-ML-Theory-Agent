# Structural Proof Review

## Reviewer Verdict
BLOCKING

## Blocking Issues

1. The appendix emits every required target-step assembly as standalone
   workflow prose, rather than as concluding proof text in an allowed proof
   environment.  The 16 `\\paragraph{Assembly of the step.}` blocks occur at
   lines 731, 1184, 1766, 2205, 2576, 3098, 3611, 4474, 5118, 5809, 6754,
   7367, 8179, 8719, 10576, and 11345 of
   `latex_template/5_appendix.tex`; the final one is immediately before the
   main-theorem subsection.  These blocks summarize accepted-step composition
   but are outside `proof` environments, so the assembled transitions are not
   paper-facing derivations and cannot serve as structural proof authority.
   This violates the required translation of each accepted `## Target-Step
   Assembly` and leaves the final assembly links structurally unproved.

2. The public appendix contains repeated audit/workflow scaffolding that the
   structural contract explicitly forbids.  Representative instances include
   the 16 `Supporting facts` headings (for example lines 9, 770, 1216, 1807,
   2253, 2626, 3141, 3659, 4552, 5185, 5878, 6814, 7441, 8238, 8747, and
   10639), dependency inventories at lines 3662--3675, 4555--4600,
   6817--6868, and 5881--5957, source/audit restatement paragraphs at
   13--145, 3677--3836, 5193--5317, 5961--6062, 6870--6955, and
   8782--8955, and `Consequences` summaries at 3838--3856, 4685--4699,
   6961--6973, and 7591--7607.  These are standalone object mappings,
   assumption/dependency disclosures, source restatements, and reviewer-style
   summaries rather than theorem statements or proof text.  Their presence
   makes the bundle fail the public-appendix hygiene gate even though the
   underlying local theorem-unit counts match the 16 source steps.

3. Each appendix subsection begins with an imperative sketch-row instruction
   (for example `Prove ...` at lines 7 and 768, `Construct ...` at 1214,
   `Lift ...` at 1805, `Solve ...` at 3139, `Instantiate ...` at 5183,
   `Eliminate ...` at 8236, `Independently instantiate ...` at 8745, and
   `Prove the finite-class arm ...` at 10637), often followed by an empty
   `Supporting facts` block.  This is mechanical workflow prose exposed in
   the paper-facing appendix, not mathematical exposition.  It must be
   removed or absorbed into theorem statements/proofs during assembly; merely
   retaining the generated local derivations does not cure the defect.

4. `latex_template/2_preliminary.tex` promotes proof-local calibration and
   generated-object metadata to the public notation surface: the confidence
   split and `gamma`/delta allocations at lines 8--13, the fixed-block,
   teacher/list/sample construction at lines 14--23, and the analysis-only
   occurrence mark and comparison-arm bookkeeping at lines 25--50.  These are
   one-off proof dictionaries and generated-event interfaces, not stable
   setting-derived notation needed to read the theorem.  They should remain
   in named appendix results (with a concise public bridge), otherwise the
   notation-economy and assumption-provenance gates remain failed.

## Nonblocking Concerns

1. The authoritative setting is exact-goal, explicitly conditional mode, and
   the main theorem/corollary preserve that scope and the displayed rate
   variables.  The accepted sketch review and accepted global diagnostic are
   consistent with the 16 current accepted proof/review pairs; the global
   diagnostic is treated only as context, not evidence.
2. The bundle has all required files, a `main.tex` entry point, numbered
   assumptions, theorem-style local units, and no public `claim`, `hypothesis`,
   or `invariant` environments.  The reported compile checks show no duplicate
   labels or unresolved references (131 labels and 926 internal references),
   but successful compilation cannot cure the public-prose violations above.
3. `prop:step-016-frontier` provides a named rate-specialization bridge with
   displayed ceiling, absorption, probability, and baseline inequalities; no
   separate rate-scope mismatch was found in this structural pass.

## Suggested Repair Depth
assembly

## Smallest Candidate Repair Target
/proof-assembly

## Structural Audit

- Goal alignment: The attempted theorem in `setting.md` and `3_main.tex`
  retains the finite/countable quotient restriction, raw replacement DP,
  decoded population risk, null branch, and VC/old/finite rate arms. No
  goal-changing mismatch was found.
- Dependency closure: All 16 live proof/review pairs are present and their
  review identities point to the current proof hashes; accepted dependencies
  are ordered forward. The assembly report is status context only.
- Sketch-step coverage: There is one named appendix subsection for each of
  `step_001` through `step_016`, and theorem-unit counts match the source local
  unit counts. Coverage is nevertheless incomplete at the assembly layer
  because each target-step assembly is outside a proof environment (Issue 1).
- Assembly discipline: The standalone assembly, source-restatement,
  dependency, and imperative blocks introduce workflow prose and unreviewed
  composition links on the public surface (Issues 1--3). Repair is local to
  the bundle and does not require changing accepted step artifacts.
- LaTeX bundle structural synchronization: Required files exist and
  `main.tex` inputs the five content files and bibliography. Labels are unique
  and the reported build has no unresolved references; appendix hygiene still
  fails.
- Main theorem self-containedness: `3_main.tex` states the four numbered
  assumptions, public interfaces, modes, and explicit rates using setup and
  preliminary notation. The public preliminary surface is unnecessarily
  technical (Issue 4), but no appendix-local label is used in the main
  theorem statement itself.
- Theorem-style statement shape: Appendix units use lemma/proposition
  environments and no forbidden public claim/hypothesis/invariant environments.
  Standalone paragraphs around them are not theorem-style proof support and
  must be integrated.
- Explicit-rate and bridge structure: The VC, old, finite, minimum, and
  frontier propositions expose their rate variables and displayed absorption
  inequalities; the named frontier bridge is present. The bridge cannot make
  the workflow scaffolding acceptable.
- Derivation-over-notation: Local derivations are substantial, but public
  preliminaries expose one-off dictionaries and the appendix repeatedly
  substitutes audit summaries for paper-facing organization (Issues 2--4).
- Appendix local-unit coverage: Accepted source proofs contain 6, 7, 5, 4,
  5, 5, 5, 8, 5, 4, 7, 5, 6, 5, 23, and 7 local units respectively; the
  appendix has matching theorem-unit counts. Target-step assembly text still
  needs translation into proof bodies.
- Internal label/ref structure: No duplicate labels were observed; the
  reported 131-label/926-reference compile audit is consistent with the
  bundle. This is nonblocking only after the public structural prose is
  repaired.
