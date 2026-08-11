# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. Attempt 5 removed theorem-critical Step 013 setup definitions that are
   present in the accepted source proof.  The accepted
   `proof_steps/step_013/proof.md:313--345` defines the iid master sample and
   full marked experiment, the producer block and its complement,
   `M=(k-1)m`, the complement empirical error, the population-risk function
   `r(h)`, and `F_alpha`.  None of these definitions appears in the current
   Step 013 appendix subsection.  Nevertheless,
   `Lemma~\ref{lem:step-013-block-family}` uses `r(h)`,
   `\widehat{\operatorname{err}}_{-i}^\pi`, `\bar S_i^\pi`, and
   `\bar S_{-i}^\pi` at `latex_template/5_appendix.tex:6501--6504`, and its
   proof cites a nonexistent equation `(14)` at line 6547.  The later
   propositions use the undefined event `F_alpha` (line 6580) and the
   undefined marked probability law
   `\widetilde{\mathbb P}_{\bar D,\bar c}` (first at line 6711).  Thus the
   Step 013 theorem statements and probability conversion are not
   self-contained, and the appendix does not preserve the accepted source
   derivation.  Restore the source definitions before the first consumer,
   preferably inside the preceding named interface proposition or as
   concise paper-facing setup for the subsection.

2. Three public notation/reference residues remain after the assembly
   renaming and inventory cleanup.  In the VC rate proof,
   `latex_template/5_appendix.tex:7429` uses an undefined constant `K` even
   though equation (22) defines `K_{\mathrm V}`; the accepted source used
   `K`, so this is an incomplete public rename.  At line 9389 the old-arm
   proof says that the rate proposition proves `(T)`, but `(T)` exists only
   in the internal Step 015 target metadata and has no public definition or
   tag.  At line 9828 the finite/frontier proof cites `(D.1)`, while the
   current public interface defines `(D1)` at line 7611 and the removed Step
   016 inventory was the only source of `(D.1)`.  These free or nonexistent
   authorities violate constant provenance and paper-ready internal-reference
   discipline.  Replace `K` by `K_{\mathrm V}` and replace the two source-local
   tags by the already named public propositions or their actual displayed
   equation identifiers.

## Nonblocking Concerns

1. All sixteen live proof artifacts match the SHA-256 values pinned by their
   `ACCEPTED` reviews, and every review has the same local-unit count as its
   proof (107 accepted local units in total).  No step-level mathematical
   defect was found; both blockers are confined to the LaTeX assembly.
2. Direct source comparison found all 107 accepted local results represented
   by named appendix lemmas or propositions, with no materially compressed
   result body.  Of 593 displayed derivations in the accepted local
   derivations and target assemblies, 579 occur verbatim modulo whitespace
   and equation tags.  Eleven of the fourteen remaining displays are valid
   constant renamings or final-interface repackagings; the other three are
   precisely the missing Step 013 definitions in Blocking Issue 1.
3. The four attempt-4 repairs otherwise pass.  `E_core` is now defined by
   `Proposition~\ref{prop:step-010-mechanism-good}` before every Step 012
   consumer; the Step 010 and Step 015 bridges name their finite-mark and
   kernel producers; the forbidden standalone audit/source inventories are
   absent; and `Proposition~\ref{prop:step-015-interfaces}` has multiple
   downstream consumers.
4. The exact VC, old, and finite rates, the `q_*=6` domination chain, and the
   selected-learner versus standalone-old `delta` schedules remain
   algebraically synchronized.  The all-input DP mode, unconditional iid PAC
   mode, fixed-sample horizon, exact decoder-risk metric, and the stated
   hidden-constant restrictions do not drift from the accepted steps.
5. The null and boundary derivations remain present for `d=0`, `d=1`,
   `v=1`, `v=d`, `k=2`, empty/fallback paths, finite and infinite `C`, and
   fixed versus scheduled `delta`.  A fresh cached Tectonic build succeeds;
   134 labels are unique, all 115 referenced targets and both citations
   resolve, and only overfull-box warnings remain.  Compilation does not
   detect the undefined mathematical symbols and source-local tags above.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Reviewed assembly attempt 5 at
  `assembly_report.md` SHA-256
  `7169e916a768afa4a4698f3231ffd3d3c5ac3b08a068365e2cc8188b779a7b87`
  and `latex_template/5_appendix.tex` SHA-256
  `cddd252375f1d6c1881f351bec86de1e3942e6ceb86e9a37ad84f4cce82e0208`.
  The accepted local inequalities, tail calculations, privacy composition,
  DDim descent, SOA reconstruction, and arm-comparison algebra are preserved.
  The omitted Step 013 setup prevents their current public composition from
  being a complete derivation.
- Statement self-containedness: The four primitive assumptions are numbered
  with stable labels, and the public main theorem states its modes and
  dependence.  The Step 013 statements fail self-containedness because their
  probability space, samples, risk, empirical loss, and failure event are
  undefined before use.
- Main theorem constants and notation: `K_{\mathrm V}`, `K_{\mathrm O}`,
  `K_*`, `Lambda`, and the three rates agree between the main theorem and
  their producing propositions.  The isolated raw `K` in the VC boundary
  display is unbound after the assembly rename.
- Derivation-over-notation: The accepted Step 013 proof contains the needed
  definitions explicitly; deleting them and retaining only their symbols and
  equation-number references is not a valid compression.
- Explicit-rate contract: The auxiliary choices, ceiling bounds, term
  absorptions, probability conversion, hidden dependence, and baseline
  reductions are displayed in the VC, old, and frontier bridges.  The free
  `K` and nonexistent `(T)` reference must be repaired before the public rate
  chain is paper-ready.
- Appendix full derivations: Every accepted local unit for Steps 001--016 was
  compared with its current appendix body.  No local proof body is materially
  shorter than its source and no accepted displayed calculation other than
  the three Step 013 setup displays is absent.
- Quantifiers and constants: Raw-neighbor privacy, arbitrary-label scope,
  uniform `D,c` PAC quantifiers, universal-constant dependence, and finite
  horizon are preserved.  The current defect is undefined assembly notation,
  not a change to an accepted quantifier or step claim.
- Probability or convergence modes: The accepted conditional trace and
  mechanism bounds, pathwise marked inclusion, fixed-candidate holdout tail,
  unconditional projection, and scheduled-`delta` implications retain their
  modes.  The missing definition of the marked experiment makes the Step 013
  public probability expressions formally unauditable until repaired.
- Boundary cases: Exact zero-sample recovery and all positive-branch endpoint,
  cardinality, list, fallback, and schedule cases remain represented and
  mathematically consistent.
- Hidden subclaims: No new independent lemma is required.  Restoring the
  accepted Step 013 setup and repairing the three public notation/reference
  residues is sufficient; no proof-step, sketch, or idea change is indicated.

Verdict alignment: `BLOCKING` has numbered assembly-level issues,
`Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
