# Structural Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The Step 002 repair left two dangling manual equation references in the
   appendix. In `latex_template/5_appendix.tex:884`, the joint-window proof
   says that equation (22) bounds every competitor product, and at line 894
   the target-step composition defines the event using (21), (22), and (32).
   Within the Step 002 subsection, however, the numbering now jumps from
   (20) to (23): the restored public definitions of $W_{ij}$ and $C_{ij}$
   have no tags (21) and (22). The accepted Step 002 source assigns exactly
   those tags to those definitions. Thus a substantive derivation and its
   target-step assembly cite nonexistent equations. Restore the two tags on
   the exact Step 002 definitions, or replace all three stale references by
   unambiguous references to the displayed definitions and the named
   proposition, without changing the accepted event or proof.

## Nonblocking Concerns

1. This review is bound to `assembly_report.md` SHA-256
   `830b60a77db4190f6da679f8198b47e142865aa1c0a1d196910bb30d0bede7f3`.
   Its setting, sketch, sketch-review, global-proof, global-review, and all
   thirteen accepted proof/review hashes match the live artifacts. All
   reported bundle hashes also match, including `1_intro.tex` SHA-256
   `676475d6cbb2a572daa8de4629b53c1d2ab355bc8bf5541d273c74734114098e`
   and `5_appendix.tex` SHA-256
   `9cff87a1c6a0e85dc84d698f9c45d207ba0a7e62c76b422c6359c250a2cbc18e`.

2. The setup calls the target-dependent coordinates $Z_{ij}^{(M)}$ and the
   target/slot event "observable," although the label-free interface later
   states correctly that the algorithm computes no target index, target
   factor, or raw-coordinate window. The authoritative exact goal itself
   uses "jointly observable window," and the public label-free proposition
   prevents an algorithmic-interface change, so this is not a structural
   blocker. Replacing the first usage by "proof-coordinate" or otherwise
   distinguishing sample-space measurability from algorithmic observability
   would remove the ambiguity.

3. The isolated cached-only Tectonic run again terminated before TeX
   processing because its macOS system-configuration networking thread
   panicked (`Attempted to create a NULL object`, exit code 101). Static
   checks found 87 unique labels, no duplicate or unresolved `ref`/`pageref`
   targets, a matching `Uschmajew2012` bibliography entry, balanced braces,
   and balanced required environments. The manual equation-reference audit,
   which is not covered by LaTeX label resolution, found exactly the Step 002
   defect in Blocking Issue 1.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Structural Audit

- Goal alignment: The positive-smoothing theorem remains a concrete exact
  match for the authoritative conditional setting: nested instance and
  restart probabilities, rank
  $U(r)=\Theta(r^{5/3}(\log r)^{5/2})=o(r^2)$, original Frobenius stopping
  metric, finite polynomial runtime, arbitrary accuracy, and the separately
  scoped exact orthogonal equal-weight baseline. The attempt does not claim
  the unrestricted source target.
- Dependency closure: All thirteen accepted proof/review pairs are current,
  hash-matched, and available, and the final dependency graph is acyclic.
  The final composition cites the named geometry, coverage, certification,
  selection, seed, frozen-landing, cyclic, stopping, restart, rate, and
  baseline producers. The only broken dependency notation is the local
  Step 002 equation citation in Blocking Issue 1.
- Sketch-step coverage: Every one of the 54 accepted local units is present
  in mathematical order, with counts $5,5,3,4,3,3,3,3,5,5,5,5,5$ across
  Steps 001--013. The appendix contains 57 corresponding public theorem-style
  blocks and all thirteen target-step compositions inside proof environments.
- Assembly discipline: BLOCKING only at the stale Step 002 equation numbers.
  The attempt-4 delta otherwise makes assembly-only repairs: it restores the
  accepted finite-range certificate, removes workflow inventory, exports the
  exact event definitions, and repairs mechanical TeX. It introduces no new
  lemma, inequality, assumption, convergence upgrade, or stronger claim.
- LaTeX bundle structural synchronization: All required support and content
  files, paper sections, thirteen appendix step subsections, and the final
  main-theorem proof are present. The five-row finite-range certificate is now
  visible with endpoints $891/1000$, $892/1000$, $876/1000$, $836/1000$,
  and $797/1000$. The two absent local equation tags prevent paper-ready
  synchronization despite otherwise clean static structure.
- Main theorem self-containedness: The setup now defines $Z_{ij}^{(M)}$,
  $W_{ij}$, $C_{ij}$, and $E_{{\rm win},ij}$ before the main theorem, and the
  theorem states the exact target window and competitor-product condition.
  The theorem retains a reader-facing procedure and explicit rate corollary
  rather than an appendix-only admissibility dictionary.
- Theorem-style statement shape: Primitive assumptions remain numbered and
  stable. Generated geometry, coverage, seed, landing, basin, stopping, and
  restart objects are produced by named public results before final use; no
  public claim, hypothesis, or invariant environment remains.
- Explicit-rate and bridge structure: The main theorem, runtime corollary,
  and appendix Rate Specialization Bridge agree in exposed variables,
  conditional probability mode, finite horizon, Frobenius norm, hidden
  constant dependence, auxiliary choices, term-by-term domination, and
  probability conversion.
- Derivation-over-notation: The accepted Step 002 finite-range calculation
  and all five rational endpoints are restored, while the Step 007 expressions
  are now valid math. The only remaining failure is that the Step 002 proof
  invokes the deleted display numbers instead of the displayed definitions.
- Appendix local-unit coverage: Exhaustive source-to-appendix comparison
  confirms the actual derivations, constants, inequality chains, boundary
  cases, tables, cited-tool discharges, and target-step assemblies for all 54
  units. The attempt-4 diff deletes only the prohibited Step 001 workflow
  inventory and adds the directed repairs; it does not drop accepted proof
  content.
- Internal label/ref structure: The live bundle has 87 unique labels, no
  duplicate labels, no unresolved `ref` or `pageref` targets, no malformed
  bare reference/citation commands, and one cited key with a matching BibTeX
  entry. The two dangling parenthesized equation numbers are manual prose
  references and therefore escape that otherwise clean label audit.
