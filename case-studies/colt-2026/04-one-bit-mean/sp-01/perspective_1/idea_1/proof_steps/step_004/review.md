# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_1/proof_steps/step_004/proof.md` (SHA-256 `5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Four-arc stable selector

- Statement fidelity: The lemma states the exact existence, uniqueness, and Borel-selector interface required by the accepted `step_004` row, for every real \(c\) and every \(0\le j\le J\), under the only needed primitive source, Assumption~\ref{assump:parameter-domain}.
- Proof validity: The four phase sets are computed correctly as \([3/8,5/8)\), \([5/8,7/8)\), \([7/8,1)\cup[0,1/8)\), and \([1/8,3/8)\) for shifts \(0,1/4,1/2,3/4\), respectively. They are a disjoint exact cover of the phase circle. The fractional-part map is Borel, each selector fiber is the inverse image of one of these Borel sets, and the finite coordinate product is Borel.
- Cited-result and assumption audit: No cited or dependency result is used. Positivity of \(h_j=2^j\gamma_k\epsilon\) follows from the primitive parameter-domain condition and the setting-defined \(\gamma_k>0\); existence, uniqueness, and measurability are derived rather than assumed.
- Rigor checklist: Quantifiers and the finite-scale scope are preserved. The left-closed/right-open convention assigns \(1/8,3/8,5/8,7/8\) uniquely and the split arc for \(a=1/2\) handles the circular seam without an exceptional phase.
- Local adversarial test: At each transition, the departing shift has normalized coordinate \(5/8\), which is excluded, while the arriving shift has coordinate \(3/8\), which is included. At \(t=0\equiv1\), only \(a=1/2\) has coordinate \(1/2\) in the stable band. Interior phases have exactly one selector by disjointness.
- Contribution to target step: Establishes the unique Borel stable shift at every setting scale and supplies the legal selector consumed by the two later local units.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact selected-cell margin

- Statement fidelity: The proposition gives the exact two distance intervals, the full closed-radius inclusion, quantizer constancy, and the half-open floor-cell endpoint behavior required by the sketch witness.
- Proof validity: With \(u=\{c/h_j-a_j(c)\}\in[3/8,5/8)\), the selected cell is exactly \([Q_j^c(c),Q_j^c(c)+h_j)\), its left distance is \(u h_j\in[3h_j/8,5h_j/8)\), and its right distance is \((1-u)h_j\in(3h_j/8,5h_j/8]\). Therefore \(c-3h_j/8\ge Q_j^c(c)\) while \(c+3h_j/8<Q_j^c(c)+h_j\), which correctly places the entire closed interval inside the half-open cell. Direct substitution at the two grid endpoints gives the stated floor values.
- Cited-result and assumption audit: The only prior mathematical authority is Lemma~\ref{lem:step-004-four-arc-selector}, restated before use and applied under its proved \(h_j>0\) condition. No generated stability fact is assumed.
- Rigor checklist: Both endpoint directions are correct: equality can occur only at the included left endpoint when \(u=3/8\), whereas the right comparison is always strict because \(u=5/8\) is excluded. This distinction is sufficient for constancy on the closed radius, including both displacement equalities.
- Local adversarial test: At \(u=3/8\), \(c-3h_j/8\) is exactly the included left boundary and \(c+3h_j/8\) remains strictly inside. As \(u\uparrow5/8\), the right distance decreases to but never reaches \(3h_j/8\). Thus neither stable-band extreme creates a right-boundary failure.
- Contribution to target step: Converts selector uniqueness into the exact two-sided \(3h_j/8\) stable-cell certificate used by later inactivity and residual arguments.
- Verdict: PASS
- Repair direction: None.

### unit_003: Endpoint and dictionary-grid boundary trace

- Statement fidelity: The lemma exhausts the boundary behavior requested by the target: all four non-seam transition phases, the circular seam, every boundary of every candidate shifted grid, the unshifted special case, and the relevant half-open-cell equality direction.
- Proof validity: At \(t=1/8,3/8,5/8,7/8\), the listed shifts \(3/4,0,1/4,1/2\) give coordinate \(3/8\), while the shift on the immediately preceding arc gives excluded coordinate \(5/8\). If \(c=(m+a_0)h_j\) for any \(m\in\mathbb Z\) and \(a_0\in\mathcal S\), the opposite shift \((a_0+1/2)\bmod1\) gives coordinate \(1/2\); uniqueness then forces its selection and the cell \([c-h_j/2,c+h_j/2)\). The \(a=1/2\) arc joins across \(t=0\equiv1\), so the seam is unique rather than duplicated.
- Cited-result and assumption audit: The lemma uses only the two proved local results and the primitive scale positivity already discharged. Its cases are deterministic and are not hidden conditional hypotheses.
- Rigor checklist: Candidate-grid coverage includes all mappings \(0\mapsto1/2\), \(1/4\mapsto3/4\), \(1/2\mapsto0\), and \(3/4\mapsto1/4\). The integer \(m\) is unrestricted, so the same calculation covers zero, positive, and negative cells; fractional part removes \(m\) without an invalid nonnegative-index assumption.
- Local adversarial test: For negative examples such as \(c=(-1+1/4)h_j\) and \(c=(-1+3/4)h_j\), the selected opposite-shift cells are still \([c-h_j/2,c+h_j/2)\), confirming that the floor convention does not reverse or shift the boundary rule. At the seam, the left and right phase pieces belong to the same shift and \(t=0\) has coordinate \(1/2\).
- Contribution to target step: Supplies the exhaustive grid-boundary and phase-handoff trace needed to consume the stable margin at exact equality, including at negative floor cells.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The disjoint four-arc cover and Borel finite selector are contained in `unit_001`; conversion from normalized coordinate to exact left/right distances and closed-radius constancy is contained in `unit_002`; and transition phases, circular seam, and all candidate-grid boundaries are contained in `unit_003`. The finite-vector measurability assertion is an immediate finite-product consequence explicitly stated and proved in `unit_001`, not an unlisted new lemma. No citation, probability statement, generated invariant, rate, or dependency claim is smuggled into the prose or assembly.

## Target Claim Audit

The proof establishes the accepted sketch-row claim without strengthening or weakening it. It is uniform over every \(c\in\mathbb R\) and every setting scale \(0\le j\le J\), uses only Assumption~\ref{assump:parameter-domain} to derive \(h_j>0\), and has no dependency artifacts. The output is exactly a unique Borel selector, the stated asymmetric endpoint intervals yielding a two-sided closed \(3h_j/8\) margin, and exhaustive half-open grid-boundary behavior. There is no probability, convergence, norm, horizon, or hidden-constant qualification.

## Explicit Rate Audit

None. The target step is deterministic and not rate-bearing.

## Notation Surface Audit

The proof preserves the setting-defined public-facing objects \(\mathcal S,h_j,Q_{j,a},a_j(c),Q_j^c\) and exports only selector measurability, distance intervals, cell constancy, and boundary behavior. The phase \(t\), cell index \(n\), normalized coordinate \(u\), and opposite-shift abbreviation are correctly classified as proof-local and directly expressed from setting notation. No helper dictionary, unexplained constant, or new public object obscures the elementary geometry; the fractions \(1/4,3/8,5/8\) have explicit setting and derivational provenance.

## Target-Step Assembly Audit

The assembly cites Lemma~\ref{lem:step-004-four-arc-selector}, Proposition~\ref{prop:step-004-cell-margin}, and Lemma~\ref{lem:step-004-boundary-trace} by paper-ready names and stable labels. The first result produces the selector, the second produces the exact cell-margin interface, and the third discharges every endpoint and grid-boundary case. These conclusions jointly imply the exact target claim; no bare unit ID, subsection title, external citation, or unavailable dependency is used as mathematical authority.

## Review Rationale

All three declared nontrivial units are structurally complete and valid under the unchanged accepted sketch interface. The half-open endpoint directions are handled exactly, the Borel selector proof has no exceptional phase, the closed-radius inclusion follows from one weak and one strict boundary comparison, and the boundary trace covers every transition, the circular seam, and all four candidate grids for arbitrary integer cell indices, including negative ones. There are no blockers or local repairs, so `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled disposition.
