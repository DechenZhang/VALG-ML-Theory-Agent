# Rigor Proof Review

## Reviewer Verdict
BLOCKING

## Blocking Issues

1. The appendix still contains sixteen theorem-critical target-step compositions as
   unattached standalone `proof` environments.  The starts are at lines 724,
   1172, 1630, 1986, 2353, 2871, 3377, 4211, 4830, 5510, 6422, 7008,
   7794, 8332, 10160, and 10819 of
   `latex_template/5_appendix.tex`; each follows an earlier `\end{proof}` and
   has no theorem, lemma, proposition, or corollary statement.  For example,
   lines 724--756 compose the parameter/totalization step and lines
   10819--10854 compose the complete three-arm comparison.  These blocks assert
   the exact target-step implications later consumed by the main theorem, but an
   unattached proof has no stated claim and is not a paper-facing derivation
   under the full-derivation contract.  Assembly must attach each composition to
   a named result (or integrate it into the relevant named proof) while
   preserving its actual implication chain.

2. The public rate constants are not synchronized with the constants actually
   proved in the appendix.  `3_main.tex:14,26,39,53` uses
   `K_{\\mathrm V}`, `K_{\\mathrm O}`, and
   `K_* = max{8,K_{\\mathrm O},K_{\\mathrm V}}`.  The VC rate proposition
   instead defines `K = max{1,4K_{\\rm fp}}` and `q=4`
   (`5_appendix.tex:8106--8119`), and the normalized VC-arm proposition exports
   that `K` (`:8255--8284`) without defining `K_{\\mathrm V}`.  The old rate
   proposition proves `K_{\\mathrm{old}}` (`:10038--10049`, with the explicit
   choice at `:10095`), while the main theorem names the distinct
   `K_{\\mathrm O}`.  The minimum/frontier propositions then use
   `K_{\\mathrm V}` together with `K_{\\mathrm{old}}`
   (`:10608--10615`, `:10715--10727`) without a stated renaming bridge.  Thus
   the displayed public rate, `K_*`, and the `q_*=6` schedule do not have exact
   constant provenance, even though the underlying inequalities are valid after
   the obvious identifications.  Add an explicit assembly-level identity (or
   use one consistent name throughout).

3. `2_preliminary.tex:9--75` still exports a proof-local calibration and
   construction dictionary as the public learner interface: confidence and
   privacy ledgers, `a(t),Q(t),m(t),n(t),p_r(t),L(t),B(t)`, stopping thresholds,
   fallback/list mechanics, and an old-arm dictionary described only by
   “replacing” entries.  The main theorem consequently defines its learner only
   as the law “specified in the preliminaries” (`3_main.tex:7--10`), so a reader
   must audit generated-object bookkeeping to know the theorem-facing procedure.
   The public declarations `C_{\\rm blk}>=1` and `c_{\\rm AT}>=1` also do not
   state the calibration conditions used later, including
   `C_{\\rm blk}/3600 >= 4+log(1+C_{\\rm blk})`
   (`5_appendix.tex:7132--7140`) and the source-constant choice for
   `c_{\\rm AT}`.  This violates the notation-economy, reader-first, and
   constant-provenance contracts.  Move the technical dictionary into named
   appendix results and expose a concise learner interface with an explicit
   bridge.

4. Several current appendix subsections retain dependency-inventory/audit prose
   outside theorem-style statements, independent of the removed old
   `Supporting facts` headings.  In particular, the mechanism subsection lists
   source laws and “which proposition supplies” each interface at
   `5_appendix.tex:4897--5027`, and the old-arm subsection emits a long source,
   object-mapping, and dependency inventory at `:8357--8550`.  The prose
   explicitly separates what a cited result does and does not prove instead of
   putting the mapping and assumption discharge in named statements and proofs.
   These are still public audit scaffolds under the paper-ready appendix
   contract; reassembly must retain the mathematical content but integrate it
   into paper-facing theorem proofs.

## Nonblocking Concerns

1. The accepted local mathematics was audited across all sixteen current
   step/review pairs.  No separate step-level counterexample was found in the
   quotient factorization and risk identity, countable-kernel promotion and
   marked projection, VC traces and without-replacement tails, fixed-point
   calibration, source/current maps and DDim descent, mechanism utility and
   all-input privacy, marked holdout PAC conversion, or the old and finite arms.
   The blockers above are assembly and public-translation defects.
2. The corrected definition of `m_C` in `1_intro.tex:54--73` now quantifies an
   existential Markov kernel, binds the all-input `(epsilon,delta)`-DP predicate
   before the PAC condition, and keeps the raw neighboring and realizable iid
   scopes distinct.  The earlier missing-DP-predicate defect is not present.
3. The probability modes are aligned: privacy is pointwise for every raw
   replace-one input pair (including arbitrary labels), while PAC utility is
   unconditional iid high probability over sampling, the data-independent
   partition, and mechanism randomness.  The quotient risk identity and the
   tower/partition integrations do not upgrade a conditional event to the final
   mode.
4. The numerical schedule bridge is algebraically sound after the constant-name
   repair.  `5_appendix.tex:10711--10727` defines `q_*=6` and uses
   `N_* delta <= delta K_V Lambda^4 R_VC <= delta K_* Lambda^6 R_VC`, with
   `Lambda>=1`, `K_*>=K_V`, and `6>=4`.  It does not infer an `N delta` limit
   for fixed positive `delta`, and it keeps the standalone old-arm schedule
   separate.
5. Boundary and baseline checks pass in the accepted derivations: the exact
   `d=0,N=0` singleton law, positive `d=1` and `v=1` branches, `v=d` identity
   `vd^4=d^5`, `k=2`, empty/invalid/fallback paths, finite versus infinite
   `C`, and fixed versus scheduled `delta`.  The finite arm is assigned
   `+infinity` only when `C` is infinite, and no finite surrogate is introduced.
6. The four numbered primitive assumptions in `1_intro.tex:75--106` have stable
   labels.  Generated good events, list membership, DDim states, mechanism
   success, and holdout cores are proved in named local results before the
   final unconditional theorem uses them; no additional hidden theorem-facing
   invariant was found.  Compilation/reference closure reported by the assembly
   artifact is useful consistency evidence but does not cure the paper-facing
   defects.

## Suggested Repair Depth
assembly

## Smallest Candidate Repair Target
/proof-assembly

## Rigor Audit

- Mathematical derivations: The displayed local equations, privacy composition,
  finite-arm exponential-weight calculation, PAC confidence ledger, rate
  absorptions, and boundary inequalities are mutually coherent and match the
  accepted step claims.  The final implication of each step is currently only
  an unattached proof block, so the exact assembled claims are not paper-facing.
- Statement self-containedness: The four primitive assumptions and the corrected
  `m_C` definition are explicit.  Named appendix results generally state their
  local conditions and conclusions, but the public theorem's old/VC constants
  are not connected to those results and the learner depends on an opaque public
  dictionary.
- Main theorem constants and notation: `R_VC`, `R_old`, `R_fin`, `Lambda`, the
  finite-arm factor 8, and the exposed parameter dependence are numerically
  consistent.  The `K` versus `K_V` and `K_old` versus `K_O` drift is an
  acceptance-blocking provenance defect, not a newly discovered rate inequality.
- Derivation-over-notation: The accepted source derivations retain the needed
  equations and inequalities in named local units, but the preliminaries export
  proof-only aliases and the appendix repeats source/dependency inventories.
  Notation therefore replaces part of the public derivation and obscures which
  result establishes each generated object.
- Explicit-rate contract: All three arms expose the required structural,
  confidence, privacy, and fixed-horizon variables; the named frontier result
  gives auxiliary choices, technical checks, term absorptions, probability
  conversion, baseline reductions, and the `q_*=6` schedule.  The public
  constant-name drift must be repaired before this bridge is auditable.
- Appendix full derivations: All sixteen accepted source artifacts were
  compared with the current appendix proof bodies.  Local definitions,
  equations, tail bounds, composition calculations, cited-result mappings, and
  boundary cases are substantially present.  The first concrete preservation
  failure is the sixteen target-step compositions outside named result proofs;
  the appendix/source line-count difference is only supporting diagnostic
  evidence, not a quota.
- Quantifiers and constants: The raw-neighbor DP quantifier, `sup_D sup_c`
  realizable PAC quantifier, finite/infinite-class convention, universal hidden
  constants, and fixed versus scheduled `delta` scopes are preserved.  The
  unresolved symbol identities described in Blocking Issue 2 prevent a complete
  theorem-level constant audit.
- Probability or convergence modes: Mechanism tails are conditional only where
  the local step says so; tower and finite-union arguments return to the stated
  unconditional iid PAC mode.  Privacy remains event-free and all-input.  No
  expectation-to-high-probability, event-to-unconditional, or pointwise-to-
  uniform upgrade was found.
- Boundary cases: The null branch bypasses every expression containing
  `v^{-1}` or positive-branch mechanism parameters.  `d=1`, `v=1`, `v=d`,
  `k=2`, repeated records, empty restrictions/lists, fallback/no-selection,
  finite/infinite `C`, and fixed/scheduled `delta` are explicitly handled in
  the accepted results.
- Hidden subclaims: No new independent mathematical lemma beyond the accepted
  steps was detected.  The unattached assembly summaries are nevertheless
  theorem-critical hidden obligations, and the surviving dependency inventories
  can make assumption discharge appear asserted rather than proved.

Verdict alignment: `BLOCKING` is paired with four numbered assembly-level
issues, `Suggested Repair Depth = assembly`, and
`Smallest Candidate Repair Target = /proof-assembly`.
