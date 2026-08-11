# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_1/idea_3/proof_steps/step_003/proof.md`, SHA-256 `fc66927e8f05a0784e367e04507ba48fc174e9a36f7ad2fc9bbcf94f4ba608fc`
- Binding setting artifact: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`
- Binding sketch artifact: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`
- Binding sketch-review artifact: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`, with status `ACCEPTED`
- Accepted dependency `step_001` proof/review: SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with review status `ACCEPTED`
- Accepted dependency `step_002` proof/review: SHA-256 `6a5a9661acf92353ad5ddb01a502d596bb890cd3c19906fd8b951c3d3fae142e` / `d2e4430b129d0751ec576d5978c6d25c96c1ea69942f8b79481abe43ee927c68`, with review status `ACCEPTED`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-routing-measurability} states the exact deterministic-preprocessing interface required by the sketch row for every fixed \(n\), under only Assumptions~\ref{assump:canonical-product} and \ref{assump:countably-coded-evaluation}. It covers routing, counts, every selected prefix coordinate, padding, and the finite product map on all labeled inputs.
- Proof validity: The total route \(\varphi_i\) has measurable fibers because \(Q_i\times\{0,1\}\) is countable discrete, every quotient cell is measurable, and the outside-block branch is measurable. The events \(F_{i,r,j}\) correctly identify the unique global position of the \(r\)-th routed record. Equation (6) gives every fiber of each first-prefix-or-padding coordinate as a finite union of measurable events, so coordinate, tuple, and finite-product measurability follow.
- Cited-result and assumption audit: No cited theorem or generated invariant is used. Block measurability, countable quotient coding, and whole-domain disjoint routing have exactly the primitive provenance stated in the lemma. Neither realizability nor a data-dependent selector is assumed.
- Rigor checklist: The argument remains valid when \(r>n\), when a factor receives no records, when \(q_i>n\), for arbitrary labels, and on finite or countably infinite quotients. All unions are finite or countable, and the conclusion is pointwise for each fixed sample size.
- Local adversarial test: If the padding record equals a possible real routed record, equation (6) may combine multiple measurable branches in the same fiber but remains correct. Repeated quotient values and inconsistent labels likewise do not affect measurability.
- Contribution to target step: Establishes the complete legal raw-to-factor preprocessing consumed by the product kernel.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-padded-prefix} isolates exactly the multiset statement needed for replacement, deletion, and insertion through every prefix and padding boundary, followed by ordered-coordinate alignment.
- Proof validity: The eight displayed cases are exhaustive. A replacement before the quota exchanges the replaced value; a deletion from a full prefix exchanges the deleted value for the next real record; a deletion from a short or exactly full list exchanges it for padding; insertion is the reverse calculation; and edits after the selected prefix do nothing. Hence the two size-\(q\) multisets have multiplicity intersection at least \(q-1\), and permutations align all common occurrences with at most one unmatched coordinate.
- Cited-result and assumption audit: This is a self-contained finite combinatorial statement with no setting assumption, dependency, or cited result.
- Rigor checklist: The proof covers \(J<q\), \(J=q\), \(J=q+1\), \(J>q+1\), edits at ranks \(1\) and \(q\), and \(q=1\). It correctly distinguishes ordered prefix shifts from multiset change.
- Local adversarial test: When the entering value, leaving value, next real value, or padding value coincide, the nominal replacement can collapse to multiset equality; multiplicities still align. Thus a padding value equal to a real record creates no second discrepancy.
- Contribution to target step: Converts every routed prefix shift into equality or one ordered replacement after symmetrization.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-support-two} proves the exact affected-factor certificate requested by the sketch row, including same-block and cross-block replacements, arbitrary labels, selected and unselected rows, and all quota boundaries.
- Proof validity: A same-block global replacement changes one routed list at the same local rank. A cross-block replacement deletes one entry from the leaving list and inserts one entry into the entering list, while every other factor list is unchanged. Lemma~\ref{lem:step-003-padded-prefix} therefore gives at most one multiset replacement in each of at most two factors. Equal-multiset factors may be omitted from \(I(S,S')\); for each remaining factor the supplied permutations produce exact one-coordinate adjacency. Accepted Proposition~\ref{prop:step-002-kernel} then makes the corresponding output laws invariant under those permutations.
- Cited-result and assumption audit: Whole-domain disjoint routing is primitive in Assumption~\ref{assump:canonical-product}. The only derived input is the accepted total permutation-invariant factor kernel. Pair-dependent alignment permutations are proof couplings and need not be selected measurably by the learner.
- Rigor checklist: The argument distinguishes an edit outside the first \(q_i\) real records, a full-prefix shift with a next real record, the exactly-full transition to padding, and a short-prefix transition. Nonrealizable inputs are admitted by the accepted factor interface.
- Local adversarial test: If a cross-block move changes neither selected multiset, \(I\) is empty; if it changes only one, \(|I|=1\); otherwise \(|I|=2\). At \(k=1\), both raw instances lie in the sole block, so only the same-block case occurs.
- Contribution to target step: Supplies the support-two replacement certificate that prevents a \(k\)-factor privacy cost.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-product-kernel} establishes the exact independently randomized tuple kernel, arbitrary-joint-event kernel measurability, measurable decoding, and measurable displayed risk-event convention required by the target.
- Proof validity: Composing each accepted factor kernel with the measurable route gives a kernel coordinate. For fixed input, the finite product probability measure exists. The class of joint events whose product probability is measurable in the input is a Dynkin system containing the rectangle pi-system, so it is the full product sigma-field rather than only the rectangles. Accepted Lemma~\ref{lem:step-001-output-measurability} makes the decoder measurable for every finite-evaluation cylinder, and accepted Lemma~\ref{lem:step-001-risk-pullback} makes every fixed-\(c,D\) risk threshold event measurable on the tuple output.
- Cited-result and assumption audit: The finite-product measure/kernel fact and pi-lambda extension are restated at the current finite-\(k\) interface and instantiated in the proof. The factor kernels and output/decoder facts have current accepted proof/review provenance. No standard-Borel property of the raw instance space is assumed.
- Rigor checklist: The proof handles arbitrary events in \(\mathscr H^\oplus\), not only cylinders or rectangles; each kernel is total on all routed inputs; and deterministic decoding preserves the setting's precise output-space convention.
- Local adversarial test: Correlated joint output events pose no measurability problem even though factor randomness is independent: the Dynkin argument applies to the full generated sigma-field. Countably infinite \(Q_i\) is already covered by the accepted standard-Borel output result.
- Contribution to target step: Produces the legal global tuple law and its exact decoded postprocessing interface.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-joint-composition} proves replacement-\((\varepsilon,\delta)\)-DP for every adjacent ordered dataset pair and every measurable joint tuple event, then for every measurable deterministic postprocessing, using only the accepted factor privacy and support-two conclusions.
- Proof validity: For each affected coordinate, both factor-DP directions and the hockey-stick identity give
  \[
  \int(u_i-a v_i)_+\,d\lambda_i\le d,
  \qquad
  \int(v_i-a u_i)_+\,d\lambda_i\le d,
  \]
  with \(a=e^{\varepsilon/2}\) and \(d=\delta/2\). The truncated densities \(u_i^0=\min\{u_i,av_i\}\) and \(v_i^0=\min\{v_i,au_i\}\) each retain mass at least \(1-d\) and satisfy both \(u_i^0\le av_i^0\) and \(v_i^0\le au_i^0\). Their finite products therefore obey \(\mu^0\le a^m\nu^0\), while \(\mu^0(\mathcal H^\oplus)\ge(1-d)^m\ge1-md\). Since \(\mu^0\le\mu\), the residual measure has total mass at most \(md\), yielding \(\mu(E)\le e^{m\varepsilon/2}\nu(E)+m\delta/2\le e^\varepsilon\nu(E)+\delta\) for every measurable \(E\). Reversing the ordered adjacent pair gives the reverse global DP direction, and preimages prove deterministic postprocessing.
- Cited-result and assumption audit: Radon--Nikodym domination and the hockey-stick identity are restated before use. Accepted factor privacy applies after the pairwise permutation alignment on every padded, inconsistent, or nonrealizable input. No utility event or realizability premise enters the privacy proof.
- Rigor checklist: The product-density comparison is measure-level and therefore covers arbitrary joint events. The cases \(m=0,1,2\), both DP directions, exact additive failure mass, and \(0<\delta<1\) are explicit. No union bound, rectangle-only argument, or hidden composition over unchanged factors occurs.
- Local adversarial test: Mutually singular portions of a factor law are removed only through the hockey-stick residual and cost at most \(d\) per affected factor. Even for \(m=2\), the total removed mass is at most \(2d=\delta\), while the multiplicative loss is exactly \(a^2=e^\varepsilon\). At \(k=1\), \(m\le1\) and the stronger factor parameters are retained.
- Contribution to target step: Closes the exact global pointwise privacy and decoded-postprocessing clauses with no hidden \(k\) factor.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. Raw routing measurability is `unit_001`; one-edit padded-prefix stability and permutation alignment are `unit_002`; support-two global adjacency is `unit_003`; product-kernel and decoder legality are `unit_004`; and arbitrary-event approximate-DP composition is `unit_005`. The finite-product kernel, pi-lambda extension, Radon--Nikodym theorem, hockey-stick identity, finite product domination, Bernoulli inequality, and deterministic postprocessing are either restated and instantiated or derived at their exact elementary interfaces. No global diagnostic is used as proof evidence.

## Target Claim Audit

The proof establishes the exact `step_003` sketch-row claim under precisely Assumptions~\ref{assump:canonical-product}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, plus the current accepted `step_001` and `step_002` conclusions. It proves a Markov kernel for every fixed \(n\), all-input replacement privacy for every adjacent labeled pair, all measurable tuple and decoded events, and exact support at most two, without a target, distribution, realizability, support, balance, properness, or raw-space standard-Borel restriction.

All five theorem-style labels are unique, every internal reference resolves to a current local result, binding assumption, or accepted dependency result, and the reviewed proof contains no control byte or malformed bare `ref`, `label`, `frac`, or `tag` command. The two known form-feed bytes in the accepted sketch occur only in the separate `step_014` numerical witness and do not affect this row or this proof.

## Explicit Rate Audit

This step is rate-bearing only through the exact privacy composition. It exposes \(n,k,(q_i)_i,\varepsilon,\delta\), fixes the padding, quotient maps, and factor split, states pointwise event-level privacy, uses a fixed-sample one-call horizon, and retains the exact decoded \(0\)-\(1\)-risk measurability convention. There is no hidden constant. The only simplifications are the displayed inequalities \(m\varepsilon/2\le\varepsilon\), \(m\delta/2\le\delta\), and \((1-\delta/2)^m\ge1-m\delta/2\) for \(m\le2\). At \(k=1\), routing is the sole quotient-first factor call, the privacy guarantee is actually \((\varepsilon/2,\delta/2)\), and when \(n\ge q_1\) no padding occurs; the required upper baseline is preserved without a surrogate or cardinality term.

## Notation Surface Audit

The proof exports only the setting-defined tuple kernel, its decoded pushforward, measurable output convention, and support-two privacy certificate. Routing/list helpers are appendix-local; affected sets, coordinate laws, dominating measures, densities, submeasures, the Dynkin class, and one-line product-kernel aliases are proof-local and defined before use. The output-space helpers merely name the setting's finite-evaluation convention. No helper changes the meaning of a setting symbol, hides a constant or assumption, or creates a public dictionary downstream.

## Target-Step Assembly Audit

The assembly cites each local result by its theorem-style name and stable label. Lemma~\ref{lem:step-003-routing-measurability} supplies legal preprocessing; Lemma~\ref{lem:step-003-padded-prefix} supplies the exact multiset edit; Proposition~\ref{prop:step-003-support-two} supplies at most two ordered-adjacent factor inputs after accepted symmetrization; Proposition~\ref{prop:step-003-product-kernel} supplies the full joint kernel and decoder; and Proposition~\ref{prop:step-003-joint-composition} supplies arbitrary-event global privacy and postprocessing. These conclusions jointly imply every component of the binding row, including all-input scope, exact additive \(\delta\), no hidden \(k\) term, and the \(k=1\) baseline.

## Review Rationale

`ACCEPTED` is warranted because every local statement is self-contained relative to the binding setting and accepted dependencies, every derivation is valid at the named boundary cases, and the five named units assemble to the exact target without a missing bridge or hidden assumption. The highest-risk obligations all pass: countable routing and first-prefix coordinates are measurable; padding coincidences preserve the multiset argument; cross-block replacement has support at most two after pairwise permutation alignment; product-kernel measurability reaches arbitrary joint events; the two-direction hockey-stick truncation gives exactly additive \(\delta\) with no \(k\)-fold loss; and decoding is deterministic measurable postprocessing. No proof, dependency, or sketch repair is required, so `None` is the smallest retry target.
