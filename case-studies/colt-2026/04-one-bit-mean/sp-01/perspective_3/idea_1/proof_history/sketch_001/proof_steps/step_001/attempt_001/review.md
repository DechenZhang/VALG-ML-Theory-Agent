# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_001/proof.md` (SHA-256 `5a6503c7a6ce1e72f346cb13bd7513cbfa07cbc5bec1c640d44565e5a96fa9dc`)

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_001

## Blocking Issues

1. **Locations:** `## Local Lemma Map` entries for unit_002 and unit_003 and the corresponding theorem-style statements in `## Local Derivation`. **Defect:** both statements use the condition \(c\in\mathcal E_{\rm loc}\), although \(c\) is a real-valued decoder output and \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\) is an event in the localization probability space. This is an ill-typed condition, not a paper-ready local hypothesis. **Downstream effect:** as written, the core and recentered-moment results do not have formally meaningful statements, so their conclusions cannot be certified for use by later steps or target-step assembly. **Smallest repair direction:** state the results as holding *on* \(\mathcal E_{\rm loc}\), or use the scalar condition \(|c-\mu|\leq50\sigma\), consistently in the lemma map, theorem-style statements, proof prose, and assembly.
2. **Location:** unit_004, Proposition~\(\ref{prop:step-001-independence}\), especially its assertion that \(M_k(c)\) is \(\mathscr L_{\rm loc}\)-measurable. **Defect:** the proof establishes measurability of \(c\) and \(m_0(c)\) but never establishes that \(m\mapsto\int|x-m|^kD(dx)\) is Borel before composing it with \(m_0(c)\). **Downstream effect:** the claimed conditioning interface contains an unproved measurability subclaim needed when later conditional moment bounds treat \(M_k(c)\) as localization-measurable. **Smallest repair direction:** add the short finite-moment argument that \(m\mapsto\|X-m\|_{L_k(D)}=M_k(m)^{1/k}\) is finite and 1-Lipschitz by the reverse triangle inequality, hence Borel, and then compose with the proved Borel map \(c\mapsto m_0(c)\).

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The proposition targets the exact localization portion of the accepted step row: a deterministic precommitted Borel one-bit block, an always-defined interval and midpoint, \(L_k=50\), failure at most \(\delta/4\), and the additive localization count. It introduces no stronger population assumption or changed probability mode.
- Proof validity: Independent inspection of the frozen arXiv:2604.07796v2 archive, whose SHA-256 is `d6ef358108465837ecd4d27b6320ea95f5a0146ef62a14d3104125174d82db45`, confirms Theorem 16 / label `thm: alternative localization`, Appendix `appendix: two-stage`, and the exact construction used here. The appendix sets \(h=20\sigma\), takes the zero-query branch when \(2\lambda\leq h\), and otherwise uses \(N=\lceil2\lambda/h\rceil\), \(\ell=\lceil10000(\log N+\log(1/\eta))\rceil\), deterministic balanced codewords, clipped-bin queries, minimum-Hamming decoding, and an interval of at most five bins. The midpoint implication and the calculation \(N\leq\lambda/\sigma\) in the nontrivial branch are correct, as is the ceiling bound with \(C_{{\rm loc},k}=10001\).
- Cited-result and assumption audit: Assumption~\(\ref{assump:parameter-domain}\) supplies the parameter and confidence domains; Assumption~\(\ref{assump:moment-class}\) supplies the mean range and, through the displayed Holder calculation, \(\mathbb E|X-\mu|\leq\sigma\); Assumption~\(\ref{assump:independent-samples}\) supplies iid localization samples; and Assumption~\(\ref{assump:precommitted-protocol}\) permits the fixed measurable query convention. The source-to-current object map, known interval-only output boundary, and Borel inverse-image representation are explicit.
- Rigor checklist: The proof covers the zero-query and nontrivial branches, source failure transcripts, Hamming ties, all \(\lambda\geq\sigma\), and all \(\delta\in(0,1/2)\). The event inclusion \(\{\mu\in I\}\subseteq\mathcal E_{\rm loc}\), probability mode, ceiling, and logarithmic dependence are correct.
- Local adversarial test: At \(\lambda=\sigma\) the trivial branch returns \([ -\lambda,\lambda ]\), \(c=0\), and no bit; when \(2\lambda\downarrow20\sigma\) from above, the nontrivial branch has \(N\geq2\) and the codebook lemma remains applicable; a minimum-index tie cannot select a far bin on the source success event because the appendix controls every far score against a safe anchor.
- Contribution to target step: It supplies the exact cited localization event, scalar wrapper, protocol legality, fixed-horizon count, and source/trivial-branch interface used by all remaining units.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The intended deterministic rounding and successful-localization core conclusions match the accepted sketch row, but the displayed local condition \(c\in\mathcal E_{\rm loc}\) is ill typed because \(\mathcal E_{\rm loc}\) is an event rather than a subset of \(\mathbb R\).
- Proof validity: Interpreted correctly as "on \(\mathcal E_{\rm loc}\)," the derivation is valid. The nearest-center distance is at most \(h_0/2\), the explicit rule \(j_0(c)=\lceil c/h_0\rceil-1\) implements the minimum-index tie convention for positive and negative \(c\), and \(h_0/2+50\sigma\leq3h_0/4\) is exactly equivalent to \(a_k\geq200\).
- Cited-result and assumption audit: The unit uses only Assumption~\(\ref{assump:parameter-domain}\), the named localization proposition, and the setting-defined grid. The localization event is a derived condition, not a primitive assumption.
- Rigor checklist: The inequalities, constants, quantifiers over all realized decoder outputs, grid boundary cases, and closed-core containment in the half-open padding are correct after repairing the event syntax.
- Local adversarial test: At \(c=qh_0\), both adjacent centers are equidistant and the explicit ceiling formula selects \(j=q-1\); for negative integer and noninteger \(c/h_0\), the same formula preserves the distance bound. Equality at \(|m_0-\mu|=3h_0/4\) is included by the closed core.
- Contribution to target step: It is the required interval-to-grid same-target bridge and supplies the core certificate used by unit_003 and later steps.
- Verdict: REVISE_STEP
- Repair direction: Replace every \(c\in\mathcal E_{\rm loc}\) occurrence for this unit by "on \(\mathcal E_{\rm loc}\)" or by the explicit scalar inequality \(|c-\mu|\leq50\sigma\).

### unit_003: lemma

- Statement fidelity: The moment conclusion and constant are exactly those required by the sketch, but the theorem-style statement inherits the same ill-typed condition \(c\in\mathcal E_{\rm loc}\).
- Proof validity: Once the condition is repaired, the pointwise power-triangle inequality, integration, use of Assumption~\(\ref{assump:moment-class}\), and substitution of the core bound correctly give
  \[
  M_k(c)\leq2^{k-1}\left[1+(3a_k/4)^k\right]\sigma^k.
  \]
  The constant is finite and depends only on fixed \(k\) because \(a_k\) is a k-only design choice.
- Cited-result and assumption audit: The unit uses the primitive central-moment assumption and the named core lemma; the power-triangle inequality is restated and proved before use. No support or tail-shape assumption is added.
- Rigor checklist: The proof is valid for every real \(k>1\), includes atoms and unbounded laws with finite central kth moment, preserves the absolute kth-moment mode, and does not interchange an unjustified limit or conditioning operation.
- Local adversarial test: For a point mass, a heavy-tailed finite-kth-moment law, and equality in the core-radius bound, the displayed deterministic shift inequality remains valid. No localization-interval property beyond the named same-target core result is used.
- Contribution to target step: It exports the exact recentered moment consumed by the later variance and tail steps.
- Verdict: REVISE_STEP
- Repair direction: Repair the event syntax in both the lemma map and the theorem-style statement; the derivation itself needs no mathematical change.

### unit_004: proposition

- Statement fidelity: The independence and conditional product-law interface matches the step output target and uses no dependency artifact. Its assertion that \(M_k(c)\) is localization-measurable is relevant to downstream conditional moment arguments.
- Proof validity: Independence of the localization and refinement sigma-fields, preservation of the refinement product law under conditioning, and the conditional-expectation identity are correct consequences of Assumption~\(\ref{assump:independent-samples}\) and measurable localization wrappers. However, the proof jumps from measurability of \(c,m_0\) to measurability of \(M_k(c)\) without proving the parameter-integral map is Borel.
- Cited-result and assumption audit: No external result beyond the named localization proposition is needed. The source block is a measurable function of the localization samples and deterministic protocol objects, while refinement samples and all refinement seeds are primitive-independent of that block.
- Rigor checklist: The sigma-field direction, almost-sure conditional identity, fixed-D interpretation of \(\mu(D)\), source-failure transcripts, and deterministic group assignments are handled correctly. The sole missing line is the Borel-measurability bridge for \(M_k(c)\).
- Local adversarial test: Conditioning on the complete localization block, rather than only on its bits, still leaves the independent refinement block unchanged. The claim also remains true in the zero-query branch and on source failure. Finite kth moment ensures the proposed Lipschitz repair is valid for every finite grid center.
- Contribution to target step: It exports the localization-measurable conditioning interface needed to use the generated center and moment without a candidate-cell union bound.
- Verdict: REVISE_STEP
- Repair direction: Prove that \(m\mapsto M_k(m)^{1/k}=\|X-m\|_{L_k(D)}\) is finite and 1-Lipschitz, hence Borel, before composing it with the Borel map \(c\mapsto m_0(c)\).

## Hidden Subclaim Scan

The source construction, Borel-query conversion, deterministic Hamming tie, midpoint radius, grid rounding, core containment, moment shift, and conditional product-law claims all appear in the local lemma map and matching derivations. The only unsupported independent subclaim found is the unit_004 assertion that \(M_k(c)\) is \(\mathscr L_{\rm loc}\)-measurable; the submitted proof does not supply the required Borel parameter-integral bridge. No dependency or global-diagnostic statement is used as hidden proof authority.

## Target Claim Audit

The submitted proof targets the exact accepted step_001 claim under the four primitive setting assumptions and `Dependencies = None`. Independent source inspection confirms the localization theorem identity, convention, numerical appendix interface, confidence, and sample count. The midpoint, grid, and moment calculations prove the intended constants and modes when their event condition is stated correctly. There is no claim strengthening, population narrowing, quantifier-order change, or hidden derived-invariant assumption. Formal certification nevertheless fails until the two local statement/measurability defects above are repaired.

## Explicit Rate Audit

This step is rate-bearing. It correctly exposes \(k,\lambda,\sigma,\delta,\eta,a_k,h_0,N_{\rm loc},L_k,C_{{\rm loc},k}\), and \(C_k^{\rm rec}\); states that hidden constants may depend only on fixed \(k\) and its k-only design choice \(a_k\); and excludes dependence on \(D,\mu,\lambda,\sigma,\epsilon,\delta\), samples, transcripts, and protocol seeds. It records fixed quantities, unconditional localization probability, fixed non-stopping horizon, and the absolute-error/kth-moment norms. The inequalities
\[
\log N_{\rm src}\leq\log(\lambda/\sigma),\qquad
\ell\leq1+10000[\log(\lambda/\sigma)+\log(4/\delta)]
\]
and \(50\sigma\leq h_0/4\) are valid under the stated branches and conditions. The source event-to-current-event conversion is explicit, and the zero-query baseline is preserved exactly. Absorption into the final public refinement rate is correctly left to step_008. No explicit-rate blocker was found.

## Notation Surface Audit

The proof classifies its new objects as `public-facing`, `appendix-local`, or `proof-local`, and the classifications are economical and aligned with downstream consumers. The source dictionary is kept appendix-local, and the one-off ceiling and grid variables are proof-local. The blocking notation defect is the repeated use of \(c\in\mathcal E_{\rm loc}\), which conflates a scalar with an event; it must be replaced by event-relative prose or the defining scalar inequality. No other symbol reuse or convention drift was found.

## Target-Step Assembly Audit

The assembly uses theorem-style names and labels for all four local units, invokes no bare unit ID or subsection title as mathematical authority, and uses no dependency artifact. Unit_001 supplies the localization event, legality, and count; unit_002 supplies rounding and the core; unit_003 supplies the recentered moment; and unit_004 supplies refinement independence. These results jointly imply the exact sketch-row interface after the event statements and the \(M_k(c)\)-measurability bridge are repaired. In the submitted form, the assembly cannot certify the malformed unit_002/unit_003 statements or the unsupported measurability clause.

## Review Rationale

The source citation, numerical localization construction, cost algebra, midpoint/grid residual chain, recentered-moment derivation, and block-independence argument all survive direct source and boundary checks. The defects do not require a changed sketch claim, dependency, assumption, cited tool, output interface, rate, or theorem contract; they are confined to the current step proof's theorem-style conditions and one missing measurability derivation. Therefore `REVISE_STEP` with producer retry target `/proof-step step_001` is the smallest sound repair. A fresh `/proof-step-review step_001` remains necessary before downstream consumption of the repaired proof.
