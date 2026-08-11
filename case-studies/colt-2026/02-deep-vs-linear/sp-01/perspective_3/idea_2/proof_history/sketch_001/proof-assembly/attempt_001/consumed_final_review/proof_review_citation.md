# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public TeX does not faithfully restate several accepted claims because
   ten intended `\qquad` commands are bare `qquad` tokens:
   `latex_template/1_intro.tex:70`, and
   `latex_template/5_appendix.tex:525`, `531`, `544`, `559` (twice), `582`
   (twice), `637`, and `710`.  TeX accepts these as ordinary math letters, so
   the successful compilation does not expose the defect.  The affected
   support-pruning, signed-cancellation, obstruction, setup, and exact-
   representation displays therefore are not source-faithful public
   statements; line 710 is in the conclusion of
   `prop:step-006-exact-representation` itself.

2. The assembled theorem interfaces omit assumptions and conditional
   dependency objects that are explicit in the accepted step artifacts.  The
   statements of `prop:step-005-closest-point`
   (`latex_template/5_appendix.tex:458-466`),
   `prop:step-005-uniform-obstruction` (`:578-599`), and
   `prop:step-005-obstruction` (`:626-644`) rely on subsection-level fixation
   of `h`, the definition and finiteness of `Q_h/Z_h`, the accepted
   step-004 representative interface, and the local strict-infeasibility
   hypothesis without stating those interfaces in the theorem statements.
   `prop:step-006-feasibility` (`:661-669`) names only
   `assump:high-accuracy`, although its proof applies the approximate
   separator and the conditional obstruction at `:673-680`; those inputs
   require the oddness and universal-success assumptions and an explicitly
   discharged local infeasibility condition.  The following
   `prop:step-006-exact-representation` (`:702-713`) similarly lists a
   conditional obstruction conclusion as if it were an unconditional premise
   and does not expose the primitive basis.  A reader cannot verify the
   cited-result assumption discharge from these public statements.  The
   accepted step-005/006 proofs contain the needed fixed-target and dependency
   interfaces, so this is an assembly-level loss of citation traceability.

3. `lem:step-003-finite-extraction` explicitly requires measurability of
   `v_omega` and of the displayed finite-domain risk
   (`latex_template/5_appendix.tex:291-305`).  The assembled proof of
   `prop:step-003-approximate-separator` applies that lemma at `:353-355`
   without discharging this hypothesis.  The nearby discussion at `:285-288`
   establishes only boundedness.  The accepted step-003 proof/review supplies
   the missing source argument (the finite SGD recursion is measurable,
   `v_omega` is a finite algebraic function of its coordinates, and the
   finite tie-resolved indicator sum is measurable), but that argument is not
   present in the live public appendix.  Thus the final citation chain uses a
   local theorem under an unchecked assumption.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Internal theorem-style labels are used, but the
  step-005 and step-006 statements are not self-contained about their fixed
  target, conditional hypothesis, or primitive dependency basis (Blocking
  Issue 2).
- Source fidelity: The accepted step proofs contain valid direct derivations;
  no external result is misquoted.  The ten malformed math tokens make the
  public restatements non-faithful (Blocking Issue 1).
- Instantiation and object mapping: The live derivations otherwise map
  `D`, `h`, `Q_h`, `Z_h`, the identity-coordinate score, and the witness law
  consistently.  The omitted target/dependency declarations prevent a
  self-contained audit of those mappings in step 005/006 (Blocking Issue 2).
- Quantitative regime fidelity: The factor `2`, support bound `k <= n+1`,
  strict threshold `2 epsilon < 1/(n+1)`, fixed horizon, and deterministic
  probability mode are preserved explicitly; no rate citation defect was
  found.
- Assumption discharge: The oddness/universal-success basis is hidden from
  `prop:step-006-feasibility`, and the measurability premise of finite
  extraction is not discharged (Blocking Issues 2-3).
- Main theorem internal references: The main theorem cites the three numbered
  assumptions and named theorem-style results; label/ref scans found no
  duplicate or unresolved internal references.
- Appendix cited-result traceability: Internal dependencies use named
  `Lemma`/`Proposition` labels rather than workflow artifact paths.  The
  public interfaces and the step-003 local premise still need the assembly
  repairs above.
- External BibTeX entries: There are no `\cite`, `\citep`, or `\citet`
  commands in public TeX, so the empty bibliography support file introduces
  no missing external citation or empty References section.
- Internal label/ref pairs: All scanned labels are unique and all refs resolve
  in the compiled bundle.
- Unsupported standard facts: The compactness and finite-dimensional
  dependence facts are stated directly in the appendix and do not require an
  external citation; no additional standard-fact blocker was found.

Verdict alignment: `BLOCKING` requires the assembly repair target above;
accepted step artifacts remain valid sources for that repair.
