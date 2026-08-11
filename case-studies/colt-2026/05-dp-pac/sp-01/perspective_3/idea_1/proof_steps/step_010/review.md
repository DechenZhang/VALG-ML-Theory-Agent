# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_010/proof.md` (SHA-256 `1a25d7e164cfb41995429a54cc28fcf947fa3dd7678993963ef6d022558f5315`)
- Binding setting artifact: `perspective_3/idea_1/setting.md` (SHA-256 `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`)
- Binding accepted sketch: `perspective_3/idea_1/proof_sketch.md` (SHA-256 `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`)
- Binding accepted sketch review: `perspective_3/idea_1/proof_sketch_review.md` (SHA-256 `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`)
- Accepted dependency `step_004`: proof SHA-256 `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba`; review SHA-256 `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999`
- Accepted dependency `step_005`: proof SHA-256 `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`; review SHA-256 `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b`
- Accepted dependency `step_007`: proof SHA-256 `5c5a792c80a7692ca1369c17bada22c23a07256df0cdfdaf577c4b9d616566ec`; review SHA-256 `02b3819e190d38b9446e008bf15e8448d5d80c1f2a9a5880e560c71c25bd387e`
- Accepted dependency `step_009`: proof SHA-256 `4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c`; review SHA-256 `13e26d0cbc021c8cd3859bb17bda4d8048a1ac07c27cc3f35ffa81305144874b`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Input-independent public preprocessing

- Statement fidelity: The lemma states exactly the first construction interface of the accepted row: after the public finite prior is available, it samples the selector, all ordered tags, one prior pair for each nonhidden block, and every nonhidden-row feature before any input access. It neither samples nor assumes the hidden pair and does not consume privacy, PAC, coupling, or risk conclusions.
- Proof validity: The generative order is executable. First \(J\) and \(I_{1:n}\) are drawn from the accepted selector/tag kernel; conditional on \(J=j\), the finite product \(\bigotimes_{i\ne j}\mu_{N,M}\) supplies all and only the nonhidden pairs; conditional on those pairs and the tags, the product \(\bigotimes_{r:I_r\ne J}Q_{I_r}\) supplies all nonhidden features. The displayed product mass proves conditional mutual independence row by row, and deterministic threshold labeling gives the exact nonhidden labeled kernels. Every draw is independent of the simulator input.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-005-certificate} supplies the exact admissible \(N,M\); accepted Proposition~\ref{prop:step-004-finite-hard-prior} then supplies the finite public law; accepted Proposition~\ref{prop:step-009-overflow} supplies the exact selector/tag convention. Their statements, attempts, acceptance statuses, and hashes match the binding artifacts. Assumption~\ref{assump:candidate-regime} and the local contradiction are used only through prior availability.
- Rigor checklist: Each \(Q_i\) is a probability law on finite \([N]\), so all conditional kernels exist without a representation or computability premise. The index \(Q_{I_r}\) is present whenever \(I_r\ne J\). Endpoint targets \(T_i=1,N+1\) and point-mass \(Q_i\)'s remain legal. The seed excludes \(A\)'s internal coins, correctly leaving randomized \(A\) as a kernel at the later call rather than freezing its output.
- Local adversarial test: At \(U=0\), every one of the \(n\) rows is already covered by a nonhidden draw. At \(U=M\), the same seed remains valid and no additional draw is needed. On overflow, nonhidden randomness may already have been sampled, but it is input-independent and is discarded before any input access or call to \(A\). The construction is unchanged for \(k=2,3\), \(n<k\), and \(M=8\); these regimes affect only which count branches can occur.
- Contribution to target step: It fixes the exact public-information boundary and supplies the common input-independent preprocessing seed consumed by all later local units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact hidden-blind size-\(n\) row construction

- Statement fidelity: The proposition proves exactly the ordered nonoverflow row construction and early overflow decision required by the sketch. It is quantified over every fixed seed and every arbitrary size-\(M\) binary-labeled input, including nonrealizable inputs, and does not assume a hidden \(t\) or \(Q\).
- Proof validity: \(U=L_n\) is a function only of the pre-drawn selector and tags, so the branch is selected before any input coordinate is evaluated. On \(U\le M\), every hidden position satisfies \(1\le L_r\le U\le M\), making \(z_{L_r}\) a valid input row. Every nonhidden position has a pre-drawn valid row. Exactly one branch of the displayed rule applies at each ordered position \(r\in[n]\), so the result is an element of \(\mathsf S_n\) with exactly \(n\) rows.
- Cited-result and assumption audit: The only mathematical authority is Lemma~\ref{lem:step-010-public-preprocessing}, together with primitive domains and the fixed integer \(M\). The proposition does not import an iid hidden law, input realizability, adjacency, privacy, or a later coupling statement.
- Rigor checklist: At the \(\ell\)-th hidden-tag occurrence, \(L_r=\ell\), so the raw feature and raw label of input row \(\ell\) are lifted to tag \(J\) without querying a hidden target. Corrupt labels remain members of \(\{0,1\}\), and \(A\)'s domain contains every such ordered dataset. On overflow, the procedure stops before a nonexistent \((M+1)\)-st row can be accessed.
- Local adversarial test: \(U=0\) yields \(n\) nonhidden rows and no input read; \(U=M\) uses all \(M\) input rows and remains typed; \(U>M\) accesses none. When \(n<k\) or \(M=8\), the same inequalities \(L_r\le U\le M\) are exact. Replacing a raw input label by an arbitrary bit does not affect executability, and unused rows \(z_{U+1:M}\) are absent from the formula.
- Contribution to target step: It supplies the exact ordered size-\(n\) dataset passed to \(A\) and proves hidden blindness and total row-level typing.
- Verdict: PASS
- Repair direction: None.

### unit_003: Ordered one-use input incidence

- Statement fidelity: The invariant states the exact pathwise incidence property exported by the accepted row and expressly stops short of a differential-privacy conclusion. It covers overflow, nonoverflow, unused rows, \(U=0\), and \(U=M\).
- Proof validity: The running count increases by one exactly at hidden-tag positions. Consequently the first-hit locations \(r_1<\cdots<r_U\) exist uniquely, and the row rule maps \(z_\ell\) to row \(r_\ell\). The hidden-position-to-count map is a bijection, while every nonhidden row is fixed by the seed. Thus no input coordinate has two image rows and no trailing coordinate is evaluated.
- Cited-result and assumption audit: Proposition~\ref{prop:step-010-row-construction} is restated and supplies the entire row rule. No dependency result is over-read as supplying adjacency or privacy, and no property of input values or labels is assumed.
- Rigor checklist: The incidence map depends only on the seed's tags, not on input contents. Empty-index conventions at \(U=0\) and \(U=M\) are handled explicitly. The claim is pointwise in every seed and input, which is the strength needed downstream; it is not merely an expectation or almost-sure statement under a realizable input law.
- Local adversarial test: A changed record with index \(\ell>U\) is unused; one with \(\ell\le U\) has exactly one possible image. Arbitrary feature-and-label corruption cannot change the image position. For \(k=2,3\), accepted zero overflow leaves only the same nonoverflow map; for \(n<k\) and \(M=8\), \(U\le M\) or the separately defined abort branch remains exhaustive.
- Contribution to target step: It proves the one-use invariant required by the target and exports precisely the pathwise row-incidence interface needed by the later, separately reviewed adjacency audit.
- Verdict: PASS
- Repair direction: None.

### unit_004: Total executable improper one-block simulator

- Statement fidelity: The proposition composes the preceding three units with accepted restriction legality into exactly one total kernel \(B_{\mu_{N,M},A}:\mathsf Z_M\to\mathsf G_N\). It uses arbitrary randomized, improper, and tag-asymmetric \(A\), with one size-\(n\) call only on nonoverflow.
- Proof validity: On overflow, the all-zero \(g_0\) is a fixed legal output and the control flow reaches it without reading the input or invoking \(A\). On nonoverflow, unit_002 gives a valid ordered element of \(A\)'s full domain; \(A\)'s codomain gives \(H\in\mathcal H_{k,N}\); and accepted Lemma~\ref{lem:step-007-restriction-legality} gives \(D_JH\in\mathsf G_N\). The displayed event formula is the pushforward mixture of the input-independent seed kernel and \(A\)'s output kernel.
- Cited-result and assumption audit: All accepted dependencies are used within their exact boundaries: the prior only for public nonhidden sampling, the budget only for the same \(N,M\), the restriction only for output typing, and the overflow dependency only for the selector/count convention and boundary facts. The hard-prior risk inequality, restriction-risk identity, overflow-loss charge, and every privacy conclusion are unused.
- Rigor checklist: All input, synthesized-data, learner-output, and one-block-output spaces are finite. Hence the event formula is measurable and countably additive, has total mass one, and rigorously composes arbitrary randomized \(A\) without fixing its internal coins. The output remains fully improper; no monotone or threshold projection appears.
- Local adversarial test: At \(U=0\), \(A\) is called once on exactly \(n\) nonhidden rows and no input is read. At \(1\le U<M\), exactly the first \(U\) inputs are read once. At \(U=M\), all inputs are read once. At \(U>M\), no input is read and \(A\) is not called. Corrupt labels, endpoint nonhidden targets, point-mass nonhidden laws, and arbitrary nonmonotone randomized outputs remain total. For \(k=2,3\), overflow has probability zero but the abort branch is still well-defined.
- Contribution to target step: It exports the requested simulator kernel, exact fixed sizes, early abort, one-call behavior, arbitrary-input totality, improper restriction, and one-use property.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Input-independent sampling and the public/hidden information split are proved in unit_001; exact ordered typing and hidden blindness in unit_002; occurrence uniqueness, unused-row behavior, and one-use incidence in unit_003; and randomized-kernel composition, totality, early abort, one-call behavior, and improper output typing in unit_004. Conditional independence of nonhidden rows is correctly conditional on the drawn prior pairs; the proof does not silently upgrade it to an unconditional iid product law. Finite-support prior sampling, deterministic endpoint labels, and finite-space measurability are explicitly discharged rather than assumed.

The proof does not smuggle in any downstream claim. It establishes no input-adjacency implication, differential privacy, source-cap membership of the simulator, ideal iid law, actual-to-ideal coupling, population-risk identity, overflow-risk charge, or hard-prior lower bound for this particular simulator. The accepted global artifacts were consulted only as diagnostic context and were not used as proof evidence or as authority to change the target.

## Target Claim Audit

PASS. The producer status `COMPLETE` is supported. Under the accepted `step_004`, `step_005`, `step_007`, and `step_009` interfaces, the proof constructs a total size-(M)-input one-block kernel that pre-draws every preprocessing object before input access, decides overflow from tags alone, uses each input row at most once on nonoverflow, synthesizes exactly (n) ordered labeled product rows, calls arbitrary randomized (A) once, and returns a legal improper restriction. The target remains purely constructive and does not add or delete a dependency, assumption, output, probability mode, or claim.

Boundary audit:

- (k=2,3): accepted `step_009` gives (M\ge n\ge U), hence zero overflow; the same nonoverflow construction applies and the abort branch remains total.
- (n<k): accepted `step_009` gives (M=8); the universal row rule still covers (U=0), (1\le U\le M), and the formally defined overflow branch.
- (M=8): every hidden occurrence index is in ([8]) on nonoverflow; unused inputs are ignored, and overflow attempts no ninth access.
- (U=0): no input is evaluated, but exactly (n) nonhidden rows are built and (A) is called once.
- (U=M): all and only the (M) input rows are used, each at its corresponding ordered hidden occurrence.
- (U>M): the output is fixed before input access and before any call to (A).
- Arbitrary labels and randomized (A): raw binary labels preserve typing even when nonrealizable, while the finite kernel formula leaves (A)'s coins distributed and composes them measurably.

## Explicit Rate Audit

PASS. This step's quantitative interface is exact fixed-size construction rather than a new risk rate. It exposes (k,N,n), exact (M=\max\{8,\lceil4n/k\rceil\}), (U), and the derived public prior \(\mu_{N,M}\). The inherited (a) and \(\log_2^*N\) occur only in the local admissibility hypothesis already discharged by accepted `step_005`; no new hidden constant or dependence is introduced. The probability mode is a randomized kernel over input-independent preprocessing and (A)'s internal coins, with a pathwise one-use conclusion. The horizon is exact size (M) in and exact size (n) at the sole learner call; there is no expected size, stopping time, asymptotic replacement, norm conversion, auxiliary tolerance, term absorption, or probability conversion. The exact (U=0), (U=M), overflow, (k=2,3), (n<k), and (M=8) baselines are preserved without a proper decoder or conditional-realizability surrogate.

## Notation Surface Audit

PASS. The public-facing export is limited to the simulator (B_{\mu_{N,M},A}), the explicit default (g_0), and the named one-use interface. The type aliases, preprocessing seed, nonhidden pairs and rows, and deterministic row map are appropriately appendix-local; running counts, occurrence indices, kernel coordinates, and event variables are proof-local. Every helper is defined from setting notation or an accepted dependency, the distinction between \(\mathsf G_N\) and the dependencies' displayed full function space is an explicit type alias rather than notation drift, and no helper dictionary hides boundedness, finiteness, randomness, or parameter dependence.

## Target-Step Assembly Audit

PASS. Accepted Proposition~\ref{prop:step-005-certificate} supplies the exact admissible budget, accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies the already-fixed finite public prior, accepted Proposition~\ref{prop:step-009-overflow} supplies the selector/tag/count convention, and accepted Lemma~\ref{lem:step-007-restriction-legality} supplies the final improper codomain. Lemma~\ref{lem:step-010-public-preprocessing}, Proposition~\ref{prop:step-010-row-construction}, Invariant~\ref{inv:step-010-one-use}, and Proposition~\ref{prop:step-010-simulator} then establish the four successive construction obligations. These named results jointly imply the exact sketch-row claim without an unlisted lemma, a bare unit-ID reference, or a diagnostic assertion.

## Review Rationale

All four local units are valid under the current accepted dependencies and jointly prove the unchanged `step_010` interface. The proof gets the generative order right, keeps the hidden pair unavailable, samples nonhidden rows from legal public-prior draws with the correct conditional independence, preserves exact ordered sizes, and proves the pathwise input-incidence ledger for every input rather than only realizable samples. Its finite event-kernel formula also closes the randomized-(A) and measurability obligations while preserving unrestricted improper output. Every requested null and boundary branch is total, and downstream privacy, iid-law, coupling, and risk obligations remain outside the claim. Therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest sound outcome.
