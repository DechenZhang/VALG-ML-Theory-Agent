# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_012/proof.md` (SHA-256 `7df7fac764358a8cdc88e1f24a7d886fb1f4d9c3b17345886d627695cc9da688`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Deterministic one-row preprocessing map

- Statement fidelity: The lemma proves the exact pathwise adjacency interface assigned to `step_012`, using only the accepted row construction and one-use invariant. It is quantified over every fixed preprocessing seed and every arbitrary labeled replacement-neighboring pair, without a realizability restriction.
- Proof validity: The count \(U\), occurrence positions, and nonhidden rows are seed-fixed. On \(U>M\), the branch is selected before either input is accessed. On \(U\le M\), a change in input row \(q>U\) changes no synthesized row, while a change in \(q\le U\) changes only row \(r_q\). Replacing both the feature and label is still one record replacement, so the conclusion is equality or one-record adjacency, never group adjacency.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-010-row-construction} supplies the early branch and exact row formula, and accepted Invariant~\ref{inv:step-010-one-use} supplies the incidence map. Assumption~\ref{assump:candidate-regime} and the local contradiction hypothesis enter only through the accepted simulator construction. No privacy conclusion is over-read from `step_010`.
- Rigor checklist: The proof is pointwise rather than distributional, keeps the same seed on both inputs, and covers equal inputs as well as a differing-row witness. All rows remain in the exact size-\(n\) labeled domain. The quantification over arbitrary ordered neighboring pairs also supports both orientations used by differential privacy.
- Local adversarial test: At \(U=0\), all synthesized rows are seed-fixed. At \(U=M\), every possible changed input row has exactly one image. At \(U>M\), neither input is read. Used and unused changes, simultaneous feature-and-label changes, corrupt labels, and fixed nonhidden rows all behave as claimed.
- Contribution to target step: Supplies the exact one-Lipschitz preprocessing premise for the single central-DP application.
- Verdict: PASS
- Repair direction: None.

### unit_002: Fixed-seed privacy kernel with learner coins retained

- Statement fidelity: The proposition turns the pathwise row map into exactly one seedwise \((\varepsilon,\delta)\)-DP inequality on global hypotheses. It expressly fixes only preprocessing randomness and retains the internal coins of \(A\).
- Proof validity: Overflow gives the same point mass at \(h_0\) for both inputs. Off overflow, equal synthesized datasets give equal laws, while adjacent synthesized datasets permit one application of Assumption~\ref{assump:central-dp} to the event \(F\). The probability in that application is exactly over the still-random internal coins of \(A\).
- Cited-result and assumption audit: The sole privacy authority is Assumption~\ref{assump:central-dp}, whose scope includes every arbitrary labeled size-\(n\) replacement pair and every output event. Lemma~\ref{lem:step-012-one-row-map} discharges its adjacency premise; accepted Proposition~\ref{prop:step-010-simulator} supplies the exact branch behavior and fresh learner call.
- Rigor checklist: Since adjacency is symmetric and the proposition quantifies over every ordered \(z\simeq z'\), the same argument gives both DP directions. Equality cases use \(e^\varepsilon\ge1\) and \(\delta\ge0\). There is one learner invocation and one event-level DP inequality, with no conditioning on learner coins.
- Local adversarial test: Overflow, \(U=0\), an unused changed row, a used arbitrary-label change, and \(U=M\) all reduce respectively to a constant law, an equal-dataset law, or one legal replacement. No branch creates a privacy multiplier.
- Contribution to target step: Establishes the uniform fixed-seed DP kernel needed for common mixing and restriction.
- Verdict: PASS
- Repair direction: None.

### unit_003: Common input-independent mixture and restriction preserve one charge

- Statement fidelity: The lemma proves exactly the randomized-preprocessing and random-restriction bridge required by the sketch row, including identification of the pushforward law with the accepted simulator kernel.
- Proof validity: Accepted `step_010` makes the finite seed law \(\nu\) common and input-independent. Summing the uniform seedwise inequalities yields
  
  \[
  \sum_\omega \nu(\omega)\delta
  =\delta\sum_\omega\nu(\omega)=\delta,
  \]
  
  so mixing incurs one additive charge. Introducing the joint output \((\omega,h)\) makes \(\Phi(\omega,h)=D_{J(\omega)}h\) deterministic postprocessing even though \(J\) is random. The event preimage \(G_E\) reproduces the fixed overflow output and the nonoverflow restricted learner call term by term, proving the exact identity with \(B_{\mu_{N,M},A}\).
- Cited-result and assumption audit: Accepted Lemma~\ref{lem:step-010-public-preprocessing} supplies the common seed law and excludes \(A\)'s coins from it; accepted Proposition~\ref{prop:step-010-simulator} supplies the exact target kernel formula. Proposition~\ref{prop:step-012-fixed-seed-kernel} is applied uniformly to every seed section. No external postprocessing or mixture theorem is used without proof.
- Rigor checklist: The seed space is finite because the prior has finite support and all tags and sampled features range over finite sets. Sections are valid events, the joint kernel is total, and the same event-preimage argument applies to every ordered neighboring pair. There is no input-dependent conditioning, renormalization, or seed-law change.
- Local adversarial test: Overflow seeds map the analytical lift \(h_0\) to the actual \(g_0\); \(U=0\) remains a nonoverflow equal-input-law branch; all other nonoverflow seeds retain \(A\)'s coins. Including \(J\) in the joint seed prevents any invalid claim that a data-dependent postprocessing map was fixed externally.
- Contribution to target step: Proves the exact simulator inequality (4) with no seed-count, \(k\), \(n\), \(U\), overflow, composition, or group-privacy factor.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact source-cap membership

- Statement fidelity: The proposition checks the complete source-facing interface: exact size-\(M\) arbitrary labeled input domain, full improper one-block output space, totality, source scalar regime, and event-level \((0.1,\Delta_M)\)-privacy.
- Proof validity: Accepted Proposition~\ref{prop:step-010-simulator} supplies totality and exact typing on every input. Accepted Proposition~\ref{prop:step-005-certificate} supplies the same \(N,M\), \(M\ge8\), \(\varepsilon\le0.1\), and \(0<\delta<\Delta_M=d_*/(M^2\log M)\). For every event, nonnegativity of the comparison probability gives \(e^\varepsilon B(z',E)+\delta\le e^{0.1}B(z',E)+\Delta_M\), so the exact defining weak inequality follows.
- Cited-result and assumption audit: The unit uses only the two accepted direct dependencies, Assumptions~\ref{assump:candidate-regime} and \ref{assump:central-dp}, the declared local contradiction hypothesis, and Lemma~\ref{lem:step-012-postprocess-mixture}. It does not import accuracy, realizability, properness, or a hard-prior loss conclusion.
- Rigor checklist: \(M\ge8\) makes \(\log M>0\), hence \(\Delta_M\) is finite and positive. Parameter monotonicity is shown at event level rather than inferred from notation. Universal quantification over ordered adjacent inputs gives both source-DP directions, including equality neighbors.
- Local adversarial test: Totality persists for \(U=0\), \(U=M\), \(U>M\), unused trailing records, and arbitrary corrupt labels. The domain and codomain are exactly those consumed by the source-private one-block interface; no distributional restriction narrows them.
- Contribution to target step: Exports the exact source-cap certificate consumed downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Pathwise adjacency, overflow and unused-row control flow, fixed-seed privacy with unfixed learner coins, common-mixture arithmetic, restriction with seed-carried \(J\), exact simulator-law identification, parameter monotonicity, and total source typing each appear in a named local unit. Finite-space kernel validity and positivity of \(\Delta_M\) are proved where used. The proof does not rely on the optional global diagnostic or on a downstream privacy, coupling, or loss statement.

## Target Claim Audit

The proof establishes the exact accepted `step_012` claim. For every arbitrary randomized \(A\) satisfying Assumption~\ref{assump:central-dp}, every arbitrary ordered pair \(z\simeq z'\) in the exact size-\(M\) one-block input space, and every event in the full improper output space, it proves the \((\varepsilon,\delta)\) inequality for the accepted simulator kernel. Because the pair quantifier is ordered and adjacency is symmetric, both privacy directions hold. Under the local contradiction hypothesis and accepted `step_005`, the same kernel satisfies the exact \((0.1,\Delta_M)\) source cap. All boundary cases \(U=0\), \(U=M\), and \(U>M\) are included, and no claim, assumption, dependency, probability mode, or scope is changed.

## Explicit Rate Audit

The step correctly exposes \(k,N,n,\varepsilon,\delta\), exact \(M=m_{n,k}\), and exact \(\Delta_M=d_*/(M^2\log M)\). It introduces no hidden constant and preserves the accepted prohibition on dependence upon candidates, inputs, seeds, events, or learner coins. The probability mode is pathwise adjacency followed by event-level probability over \(A\)'s coins and exact averaging over one common preprocessing law. The horizon is fixed size \(M\) to fixed size \(n\) with at most one call to \(A\); the metric is central replacement privacy rather than risk. The mixture identity, postprocessing identity, and monotonicity inequality are displayed, so no term is absorbed. The overflow, \(U=0\), unused-row, used-row, and \(U=M\) baselines preserve exact one-charge privacy without a conservative composition loss.

## Notation Surface Audit

The notation is explicit and appropriately classified. The public-facing export is only the accepted simulator and its exact privacy/source-membership certificate. Type aliases, \(\Delta_M\), and the source-cap set are appendix-local; seed sections, \(h_0\), \(K_\omega\), \(\widehat K\), \(\Phi\), and event preimages are proof-local. Every helper is defined from setting notation or an accepted dependency, and no one-off alias hides randomness, totality, finiteness, or parameter dependence.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-010-simulator} and Invariant~\ref{inv:step-010-one-use} supply the total simulator and exact incidence map. Lemma~\ref{lem:step-012-one-row-map} proves the missing pathwise adjacency interface; Proposition~\ref{prop:step-012-fixed-seed-kernel} invokes central DP once with learner coins retained; Lemma~\ref{lem:step-012-postprocess-mixture} performs the common mixture, seed-aware restriction, and exact kernel identification; and Proposition~\ref{prop:step-012-source-membership} combines the resulting event inequality with accepted Proposition~\ref{prop:step-005-certificate}. These named results jointly imply every clause of the sketch row without an unlisted lemma, bare unit-ID authority, diagnostic assertion, privacy composition, or group-privacy step.

## Review Rationale

All four local units are valid under the current accepted dependencies and jointly prove the unchanged `step_012` interface. The proof handles arbitrary feature-and-label replacement pathwise, branches before input access on overflow, leaves \(A\)'s coins distributed, applies central DP once, mixes with one common input-independent seed law, treats restriction as postprocessing of the joint seed/output, identifies the exact accepted simulator kernel, and checks exact source-cap typing and parameter monotonicity. Quantifiers, both DP directions, assumption provenance, theorem-style labels, and the \(U=0\), \(U=M\), and \(U>M\) boundaries all close without a hidden multiplier or unsupported subclaim. The binding setting, sketch, sketch-review, proof, and two dependency proof/review hashes match the reviewed inputs, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest aligned outcome.
