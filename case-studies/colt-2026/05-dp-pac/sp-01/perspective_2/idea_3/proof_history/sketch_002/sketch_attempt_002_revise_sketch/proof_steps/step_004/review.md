# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_004/proof.md
- Reviewed proof SHA-256: a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_002 proof/review SHA-256: 46adea5c85c0c6eab7f5664edecb39e54cc4683c72469bb64c3e20d9046e1673 / 0fcb257488e9cb4c10594ae554336b3610555b60536d5566693af1dd8ab02803
- Accepted step_003 proof/review SHA-256: 829141cebcc176c3d29cd9f98335a1617cc28d3bf0762dc99d1ee87699984dc4 / 45f6d0c12140fa320754da746a1e3d32b89282b24fa65087ca06516f36e2e389

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact reduction of the good event to distinct indexed traces

- Statement fidelity: PASS. The lemma targets exactly the sketch-defined concept-indexed event and preserves the strict high-error guard, the complementary closed low-error guard, the non-strict good inequalities, thresholds \(\gamma/3,\gamma/2\), and relative tolerance \(1/(5d)\).
- Proof validity: PASS. For every \(h\), the master and block errors are exactly the corresponding full-trace and block-trace means. Concepts with the same indexed error vector therefore generate identical clauses for every block and partition, while every distinct trace has a concept preimage. Removing duplicate copies from an intersection proves equality, not merely containment.
- Cited-result and assumption audit: PASS. Accepted Lemmas~\ref{lem:step-002-xor-traces} and \ref{lem:step-002-vc-growth} supply the exact trace family and its finiteness. Fixing \(S\) is a local conditional hypothesis; no realizability, iid, privacy, or generated-event premise is introduced.
- Rigor checklist: PASS. The argument keeps coordinates indexed by \(r\), so repeated underlying points, including repeated points with different fixed labels, are not collapsed in either block means or event clauses. No concept representative is selected and no multiplicity affecting an intersection is lost.
- Local adversarial test: PASS. Equality still holds at \(e_S(h)=\gamma/3\), where only the low guard is active; for a zero trace; for duplicate concepts; for infinite \(C\); and for repeated indexed sample points.
- Contribution to target step: PASS. It converts the exact possibly infinite concept-indexed intersection into the exact finite event indexed by \(\mathcal E_C(S)\times[k]\), enabling the finite union bound.
- Verdict: PASS
- Repair direction: None.

### unit_002: Conditional simultaneous trace-block bound

- Statement fidelity: PASS. The proposition proves the exact conditional (Trace) chain requested by the accepted sketch row and retains the coefficient \(4\), all \(k\) block labels, the distinct-trace multiplicity, and \(c_{\rm tr}=1/3600\).
- Proof validity: PASS. De Morgan's law gives an exact union over \(k|\mathcal E_C(S)|\) complement events. Conditional on fixed \(S\), each trace and block label meets accepted Proposition~\ref{prop:step-003-per-trace}; finite subadditivity then gives \(4k|\mathcal E_C(S)|e^{-c_{\rm tr}m\alpha/d^2}\). The accepted step_002 inequalities validly substitute \(|\mathcal E_C(S)|\le\Pi_C(n_0)\le(en_0/v)^v\).
- Cited-result and assumption audit: PASS. Both dependency conclusions are restated in current notation with the same \(S,C,k,m,n_0,d,v,\alpha\). Step_003 supplies only a marginal one-trace/one-block estimate; the proof does not strengthen it to independence or use an unaccepted simultaneous conclusion.
- Rigor checklist: PASS. The union is finite, has exactly the stated multiplicity, and is evaluated under partition randomness conditional on \(S\). All inequalities have the correct direction, the Sauer substitution keeps exponent \(v\), and the \(d=0\) branch is bypassed before division by \(d\) or \(v\).
- Local adversarial test: PASS. Mutually dependent partition blocks, duplicate trace-producing concepts, infinite \(C\), \(v=1\), and repeated data indices do not change finite subadditivity or any accepted per-pair marginal estimate.
- Contribution to target step: PASS. It establishes the exact pointwise conditional failure formula without block or trace independence.
- Verdict: PASS
- Repair direction: None.

### unit_003: Unconditional trace confidence by the tower property

- Statement fidelity: PASS. The proposition integrates the accepted pointwise conditional bound and exports the same deterministic \(\Pi_C(n_0)\)- and Sauer-based bounds for an arbitrary sample law on which the setting-defined joint event is measurable.
- Proof validity: PASS. The tower identity is applied to the same experiment that first draws \(S\) and then the data-independent uniform partition. The conditional upper bound using \(\Pi_C(n_0)\) is independent of the realized \(S\), so expectation leaves it unchanged.
- Cited-result and assumption audit: PASS. The proof's allowed-input clause explicitly restricts the arbitrary-law formulation to laws for which the setting-defined event is measurable, and the tower restatement assumes a measurable joint event. Because the partition space is finite and its conditional law is the data-independent uniform kernel, the conditional failure probability is the finite-kernel section used in the tower identity. No claim that mere pointwise determinism creates measurability is needed.
- Rigor checklist: PASS. The conversion is conditional-to-unconditional probability, not an expectation-only utility conclusion. The conditional result was already proved for every indexed labeled sample, so neither iid structure nor realizability enters before the optional specialization \(\mathsf Q=P_{D,c}^{n_0}\).
- Local adversarial test: PASS. An arbitrary nonrealizable fixed sample, a degenerate sample law, repeated points, and dependent blocks all preserve the pointwise bound and its tower integration. The scalar implication is correctly conditional on a later proof of its premise.
- Contribution to target step: PASS. It supplies the requested unconditional confidence interface while leaving the scalar failure allocation to step_005.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the three-unit map. Exact event quotienting, conditional finite-union closure, and tower integration are separately stated and proved. De Morgan's law and finite subadditivity are atomic probability identities restated before use; the two accepted dependency interfaces are restated with their objects and conditions. The assembly cites theorem-style labels rather than using unit IDs or subsection names as mathematical authority.

The generic implication from a scalar bound \(\le\eta\) to confidence \(\ge1-\eta\) is elementary complement algebra, not a hidden fixed-point result. It does not assert that the scalar premise holds for \(\eta=\beta/4\).

## Target Claim Audit

The proof establishes the exact accepted `step_004` claim. For every fixed indexed labeled \(S\), the concept-indexed and distinct-trace events are equal with all guards and thresholds unchanged, and
\[
\Pr_{\mathcal P}(E_{\rm good}^c\mid S)
\le 4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le 4k(en_0/v)^v e^{-c_{\rm tr}m\alpha/d^2},
\qquad c_{\rm tr}=1/3600.
\]
The union has exactly \(k|\mathcal E_C(S)|\) members and requires no independence. The same two deterministic upper bounds hold after tower integration over any admissible sample law. The conditional statement is pointwise over arbitrary labeled samples and contains no realizability or iid hypothesis.

## Explicit Rate Audit

The step is rate-bearing only through the exact raw failure expression. It exposes \(k,m,n_0,d,v,\alpha,\Pi_C(n_0)\), coefficient \(4\), and \(c_{\rm tr}=1/3600\), with no hidden constants. Probability mode is pointwise conditional over the partition and then unconditional joint probability by the tower property; horizon mode is one fixed master sample with all \(k\) blocks; norm mode is scalar binary-error deviation. The only simplification is the displayed accepted chain \(|\mathcal E_C(S)|\le\Pi_C(n_0)\le(en_0/v)^v\).

The proof is cleanly separated from `step_005`: it does not prove \(\log(en_0/v)\le C_{\rm fp}\log Q\), choose \(C_{\rm blk}\), absorb a ceiling, or show the failure expression is at most \(\beta_{\rm tr}=\beta/4\). Equations (11)-(12) only state the valid consequence of a separately proved scalar premise. The \(v=d\), \(v=1\), repeated-point, infinite-class, and \(d=0\) bypass checks preserve the relevant baseline interfaces.

## Notation Surface Audit

The setting/sketch-facing objects \(E_{\rm good},\mathcal E_C(S),\Pi_C(n_0),k,m,n_0,d,v,\alpha,\gamma\), and \(c_{\rm tr}\) are correctly classified as public-facing. The trace means, block-index notation, and \(\mathsf G_{z,i}\) are useful appendix-local translations eliminated from the exported formula. The sample law \(\mathsf Q\), confidence dummy \(\eta\), and generic finite-union events are proof-local. No unnecessary helper dictionary, unexplained constant, or generated-condition assumption enters the public surface.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-004-trace-quotient} supplies exact event equality; accepted Lemmas~\ref{lem:step-002-xor-traces} and \ref{lem:step-002-vc-growth} supply finiteness and the two cardinality substitutions; accepted Proposition~\ref{prop:step-003-per-trace} supplies each conditional pair bound; Proposition~\ref{prop:step-004-conditional-trace} performs the exact finite union; and Proposition~\ref{prop:step-004-unconditional-trace} performs the measurable tower integration. These named results jointly imply the exact conditional and unconditional output target without a new assumption, independence claim, or scalar-budget conclusion.

## Review Rationale

ACCEPTED is the smallest correct status. The reviewed proof and both accepted dependency pairs match the supplied SHA-256 identities and the binding sketch attempt. Each local unit is faithful, self-contained relative to its named inputs, and valid under adversarial checks covering boundary guards, repeated indices, infinite-class trace quotienting, finite multiplicity, conditioning, measurability, and dependence. The exact trace formula and tower interface are proved, while the \(\beta/4\) and fixed-point closure remain exclusively assigned to `step_005`; no proof-step, dependency, or sketch repair is required.
