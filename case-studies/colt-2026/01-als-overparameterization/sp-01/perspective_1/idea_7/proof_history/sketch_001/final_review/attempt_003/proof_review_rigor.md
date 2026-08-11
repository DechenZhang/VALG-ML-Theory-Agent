# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public theorem does not define the probability event carrying the
   advertised window rate.  The exact formalized goal requires the three raw
   target coordinates to lie in
   $[\sqrt{a_*\log r},\sqrt{a_*\log r}+1/\sqrt{a_*\log r}]$ in absolute
   value and every competing pair product to be at most $b_*\log r$.
   `latex_template/3_main.tex:22-24` instead says only that a "target/slot
   observable window" has probability
   $\Theta(r^{-5/3}(\log r)^{-3/2})$.  Neither the raw coordinates, the
   target interval, nor the competing-product event is defined in
   `1_intro.tex`, `2_preliminary.tex`, `3_main.tex`, or `4_proof_sketch.tex`;
   the definition first appears only inside the Step 002 appendix derivation
   at `5_appendix.tex:468-475` and `:699-713`.  Thus the theorem-level
   probability object and its exact-target fidelity cannot be audited from
   the public statement.  Add the compact event definition before the
   theorem, or state a self-contained public window result and bridge the
   theorem to it.

2. Literal `qquad` tokens without a leading backslash remain in substantive
   public formulas.  Byte-level inspection finds six occurrences in
   `2_preliminary.tex:5,43,55,56,69,101`, two in
   `3_main.tex:37,52`, and six in
   `5_appendix.tex:2657,2658,3285,4053,4544,4545`.  TeX reads these as
   undeclared mathematical letters rather than spacing, so the displayed
   definitions, recurrence, seed interface, pre-solve interface, contraction,
   and rate bridge are not the accepted formulas as written.  The adjacent
   Step 007 composition also leaves `42 omega` outside math delimiters at
   `5_appendix.tex:2622`.  These are mechanical assembly defects, but they are
   acceptance-blocking under the paper-ready and exact-statement contracts.

3. The Step 001 appendix still begins with workflow and proof-ingredient
   scaffolding.  `5_appendix.tex:7-40` says that tools "named in the sketch"
   are "proved in the local units" rather than imported as unchecked
   citations, followed by an unstructured inventory of four standard tools.
   The substantive derivations already appear in the named lemmas and
   proposition below.  The public-appendix contract rejects subsection-opening
   sketch/provenance and proof-ingredient inventories; this material must be
   removed or rewritten as concise paper exposition integrated with the
   theorem-style proofs.

## Nonblocking Concerns

1. `assembly_report.md` reports that public-TeX hygiene passed, but the literal
   `qquad` scan and Step 001 scaffolding above contradict that diagnostic
   claim.  Regenerate the report after repairing the bundle.

2. Tectonic terminated before TeX processing because of the recorded macOS
   system-configuration panic, so no PDF or compiler log is available.  The
   static label, reference, citation, and environment checks pass, but a real
   compilation should be rerun after the assembly repair.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

This review is bound to attempt-3 `assembly_report.md` SHA-256
`8b5d5c509386e513c714b02a98d56fb242b11d6ee750f68ba52f62ca332a8d87`,
including current `2_preliminary.tex` SHA-256
`0a894f0494b93f9afaa565d484ba1b5451b4e191152f84020ebb0e9a7bbf53e3`
and `5_appendix.tex` SHA-256
`df8d8d7980ad4968120b73bd6b49638874fb4d09d4f3eecc95a3eba24e696d01`.

- Mathematical derivations: The attempt-2 circular Step 010 dependency is
  repaired.  Proposition~`prop:complete-frozen-reserve-interface` collects the
  Step 009 congruence, inverse, coefficient, and normalizer facts before the
  Step 010 solves, and the solve proof uses those earlier producers.  The
  restored Step 002, 003, 006, and 008 interfaces, the Step 012 contraction
  interface, and the corrected final producer map also match their accepted
  sources.  No remaining step-level derivation gap was found.
- Statement self-containedness: BLOCKING.  The main theorem assigns a sharp
  probability to an undefined window event, and several public displays are
  changed by literal `qquad` tokens.
- Main theorem constants and notation: The concise recovery interface,
  assumption range, rank, contraction, stopping norm, runtime dependence, and
  separate exact baseline are readable and correctly scoped.  The missing
  window definition is the remaining theorem-local notation defect.
- Derivation-over-notation: BLOCKING only at assembly.  The source derivations
  are present, but malformed spacing tokens and the Step 001 audit inventory
  prevent the public notation and exposition from expressing them exactly.
- Explicit-rate contract: The runtime bridge now states
  Assumptions~`assump:base-scale`--`assump:accuracy-confidence`, proves restart
  independence and the tower conversion, displays the term-dominating
  inequalities, and states hidden-constant dependence.  The window rate still
  fails the contract because its event is not publicly defined.
- Appendix full derivations: Direct comparison against all thirteen accepted
  step proofs found the required local equation sequences and target-step
  compositions.  In particular, the previously omitted dependency displays
  and the noncircular frozen-reserve chain are restored.  The remaining
  appendix failures are the mechanical tokens and redundant Step 001
  scaffolding above, not missing accepted proof mathematics.
- Quantifiers and constants: The once-drawn-instance quantifier, conditional
  run randomness, all-mode frozen-input order, universal constants, and
  parameter dependence agree with the setting.  No new constant or
  quantifier-order blocker was found.
- Probability or convergence modes: The smoothing and restart probabilities
  remain nested, complete-run independence is stated, and the tower conversion
  is displayed.  The only probability-mode blocker is that the theorem's
  target/slot window event itself is undefined.
- Boundary cases: The singular Moore--Penrose tapes remain capped, and the
  deterministic `rho_sm=0` orthogonal equal-weight baseline is separately
  scoped and proves stationary exact factors and zero residual.
- Hidden subclaims: The final theorem composition now cites the geometry,
  recurrence, graph/gauge, coefficient, frozen-reserve, landing, contraction,
  residual, cost, restart, and rate producers in the correct order.  No
  additional hidden mathematical subclaim was found beyond the undefined
  public window interface.

Verdict alignment: `BLOCKING` has numbered blocking issues, repair depth
`assembly`, and aligned target `/proof-assembly`.
