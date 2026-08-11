# Proof Step Review

## Step Review Identity

- Sketch attempt: 8
- Step ID: `step_001`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_2/idea_9/proof_steps/step_001/proof.md`, SHA-256 `0cc9caf36ba9b05d35e0a963bbd4465b5c8bea09c5e9dc164768aba5ec41507e`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. Location: `unit_004` theorem-style statement (lines 536--560) and its
   local-result interface. Defect: the proof uses the normalized-column and
   Gram-transfer conclusion of
   `Lemma~\\ref{lem:p2-i9-s8-step001-normalization}` at lines 567--572 and
   again in the variance/threshold argument, but the `unit_004` statement
   declares only the primitive assumptions and the `E_str` output of the
   perturbation lemma. `E_str` alone does not supply the realized norm floor
   and ceiling used for the conditional Gaussian standard deviation and the
   raw-to-normalized Gram implication. Downstream effect: the lower-tail
   result is mathematically valid conditional on `unit_002`, but its stated
   assumption/dependency basis is not closed, so `unit_005` cannot consume it
   as a self-contained named result. Smallest repair: add the named
   normalization conclusion (with its full primitive assumption basis) to
   the `unit_004` statement and local lemma map; make the conditional bound
   explicit on the `\\mathcal F`-measurable even-column norm event (the
   complementary fibers have empty `E_str` intersection).

## Per-Lemma Audit

### unit_001: lemma - Perturbation-Operator Concentration

- Statement fidelity: PASS. The lemma states the exact simultaneous Gaussian
  perturbation event and `r^(-30)` failure interface required by the accepted
  sketch row.
- Proof validity: PASS. The quarter-net bound, chi-square tail, three-mode
  union, and multiplication by the inverse base-column scale correctly give
  `||W_M||_op <= 3 kappa rho`.
- Cited-result and assumption audit: PASS. Result G1 is restated in current
  notation and its Gaussian and dimension assumptions are discharged by the
  stable setting references.
- Rigor checklist: PASS. Quantifiers, fixed constants, probability mode, and
  the once-drawn scope are explicit; the minimum permitted dimension is
  covered by the fixed `C_dim` choice.
- Local adversarial test: PASS. The net event still gives the claimed bound
  at the smallest base-column norm and at the dimension-regime boundary.
- Contribution to target step: PASS. It supplies the structural event used by
  normalization and the later lower-tail argument.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma - Normalized-Column and Gram Transfer

- Statement fidelity: PASS. The norm envelope, product-weight ratio, and
  signed normalized-Gram margin match the accepted target interface.
- Proof validity: PASS. The `beta <= 1/20` reserve, normalized-column
  perturbation estimate, Gram perturbation inequality, and `(21/19)^3 < 2`
  calculation are valid under the six named primitive assumptions and
  `unit_001`.
- Cited-result and assumption audit: PASS. The preceding perturbation lemma
  and all setting assumptions used by the margin transfer are named with
  stable `Assumption~\\ref` references.
- Rigor checklist: PASS. Nonvanishing, fixed-constant dependence, raw norm
  bounds, and the once-drawn probability scope are handled without importing
  a realized event as a primitive condition.
- Local adversarial test: PASS. At the boundary `beta=1/20`, the denominator,
  factor-two weight ratio, and Gram reserve remain valid.
- Contribution to target step: PASS. It produces the norm and Gram controls
  needed by units 003 and 004.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition - Pair/Triple Conditioning and Exact Target

- Statement fidelity: PASS. The proposition targets the exact pair/triple
  `1/16` gaps, tensor Frobenius bounds, guarded balanced target, and
  nonzero-tensor conclusion.
- Proof validity: PASS. The zero-diagonal identities, Schur/Kronecker
  compression, exact tensor Gram identity, and `15/16`/`17/16` bounds are
  correct. The explicit `Assumption~\\ref{assump:rank-regime}` supplies
  `k >= r` for zero-slot padding.
- Cited-result and assumption audit: PASS. `unit_002`, Results G3--G4, and
  the rank-domain source are named in the current notation.
- Rigor checklist: PASS. The target is nonzero, active factor norms are
  inside the guard, and no initializer or later trajectory fact is used.
- Local adversarial test: PASS. Orthogonal and exact-limit cases reduce by
  equality, while the rank-padding boundary is explicitly excluded by the
  binding rank regime.
- Contribution to target step: PASS. It supplies all deterministic target and
  pair/triple interfaces requested by the row.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma - Disjoint-Pair Gaussian Lower Tail

- Statement fidelity: PASS for the intended `E_lb` claim and its two
  probability bounds, but the theorem statement omits a required named prior
  result (see the blocking issue).
- Proof validity: PASS conditional on `unit_002`. Given the realized norm
  floor, the conditional Gaussian variance, uniform density bound, disjoint
  pair independence, and `P^(-60) <= t_sb` comparison yield the displayed
  `r^(-40)` structural-intersection estimate and `r^(-20)` complement bound.
- Cited-result and assumption audit: REVISE_STEP. The proof invokes the
  normalization lemma for the norm floor and raw-to-normalized transfer, but
  `unit_004`'s self-contained statement names only the perturbation event.
  This is an assumption-provenance/interface defect, not a new probabilistic
  or theorem-contract requirement.
- Rigor checklist: PASS after the interface repair. The conditional means are
  arbitrary, `floor(r/2) >= 1`, and null zero-column outcomes have probability
  zero. The conditional estimate is valid by restricting to fibers where the
  even-column norm floor holds; otherwise the `E_str` intersection is empty.
- Local adversarial test: Without the `unit_002` conclusion, `E_str` by itself
  does not provide the norm floor used in the displayed standard deviation or
  the `4 kappa^2 t` transfer, confirming that the omitted dependency is
  theorem-critical.
- Contribution to target step: PASS conditional on adding the named
  normalization dependency to the statement.
- Verdict: REVISE_STEP
- Repair direction: State the `unit_002` normalization conclusion explicitly
  in the theorem basis and preserve the current lower-tail derivation.

### unit_005: proposition - Once-Drawn Instance Assembly

- Statement fidelity: PASS. The intersection event, `1-r^(-10)` instance
  probability, raw-complement handling, exact target, and separate exact-limit
  baseline match the accepted row.
- Proof validity: PASS conditional on the repaired `unit_004` interface. The
  equality for `E_inst^c`, the `r^(-30)+r^(-40)` union, and simultaneous
  application of the deterministic conclusions are correct.
- Cited-result and assumption audit: PASS conditional on `unit_004`; the
  assembly names units 002--004 and does not import trajectory, tape, or
  history facts.
- Rigor checklist: PASS. No finite numerical term is absorbed on the raw
  branch, and the `H=e=0` baseline is kept separate from finite smoothing.
- Local adversarial test: Replacing the stronger lower-tail estimate by the
  exported `r^(-20)` bound would still retain the target confidence, and the
  current stronger estimate is valid once unit 004 declares its dependency.
- Contribution to target step: PASS after the local unit-004 statement repair.
- Verdict: PASS
- Repair direction: None beyond the `unit_004` interface repair.

## Hidden Subclaim Scan

The only uncovered theorem-critical interface is the norm-floor/normalization
fact used inside `unit_004`: it is proved earlier, but not listed in that
unit's statement. The conditional-fiber qualification is implicit in the
current lower-tail calculation and should be made explicit in the rerun. The
remaining event, Gram, weight, target, probability, and baseline claims are
represented by the five named local units; no trajectory, tape, or generated
invariant is smuggled into this static step.

## Target Claim Audit

The submitted derivations establish the exact target claim under the intended
assumptions once `unit_004`'s missing `unit_002` dependency is declared. The
pair/triple gaps, norm and weight envelopes, exact guarded rank-`k` target,
`E_lb`, and once-drawn probability mode all align with sketch attempt 8. In
the current artifact, however, the named lower-tail result is not
self-contained under its written assumption basis, so the target-step
assembly is not yet contract-closed.

## Explicit Rate Audit

- Rate-bearing status: applicable; this step supplies the static confidence
  and lower-tail interfaces.
- Exposed variables: `n`, `r`, `k`, `kappa`, `rho`, `Gamma_star`,
  `nu_base`, `nu_star`, `P`, realized norms/weights/Grams, and the fixed
  `D_lb=60`.
- Probability mode: one once-drawn Gaussian instance event; no tape,
  trajectory, horizon, or accuracy union is introduced.
- Norm modes: Euclidean column norms, operator norms of signed Grams, selected
  normalized entries in the small-ball argument, and tensor Frobenius norm.
- Dependence and conversions: `r^(-30)`, `r^(-40)`, `r^(-20)`, and
  `r^(-10)` conversions are displayed, as is the full `P` comparison. Hidden
  constants are restricted to fixed class/protocol constants.
- Term absorption and baseline: no positive numerical term is absorbed into
  `nu_real^2` on the raw branch; the exact `H=0,e=0` branch remains a separate
  equality specialization (with `e` inherited from the accepted sketch's
  analysis abbreviation `e=P^(-D_stat)`).

## Notation Surface Audit

The proof-local aliases (`\\Xi_M`, `W_M`, `s_{j,M}`, `D_{s,M}`, `m^{\\rm
raw}_{j,M}`, `C_{\\rm sb}`, `t_{\\rm sb}`, and the conditional variables) are
classified in the notation section; `E_str` is appendix-local and `E_lb` and
`E_inst` are public-facing. The baseline symbol `e` is inherited from the
accepted sketch's explicit analysis abbreviation and is equivalent to the
setting's `e_num`; no target object is rebound. The only required notation
repair is to expose the missing `unit_002` dependency in `unit_004`'s theorem
statement.

## Target-Step Assembly Audit

The intended acyclic chain is
`unit_001 -> unit_002 -> unit_003`, `unit_002 -> unit_004`, and
units 002--004 -> unit_005. All named results and cited tools jointly imply
the exact row after the unit-004 statement is repaired. As submitted, the
assembly cites the normalization result in the unit-004 proof body without
exporting it through that unit's formal interface; this is the sole blocking
assembly defect.

## Review Rationale

`REVISE_STEP` is the smallest sound status. The quantitative lower-tail,
conditioning, target, probability, rate, and baseline calculations are
otherwise sound and preserve the accepted sketch-8 contract. A local
proof-step rerun that adds the named normalization dependency (and states the
corresponding conditional-fiber qualification) closes the provenance gap;
no sketch revision, dependency rerun, or idea-generation route is warranted.
