# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_006`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_006/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_006

## Blocking Issues

1. **Locations:** the theorem-style statements and proofs of `unit_001`--`unit_004`, especially lines 190--219, 291--311, 350--379, and 432--450. **Defect:** mathematical objects and relations are repeatedly written as plain parenthetical text rather than valid Markdown/LaTeX math, for example `(k\ge r)`, `(Z)`, `(O(Z)\in O(r))`, `(SO(r))`, `(E)`, `(Q_a,Q_b,Q_c)`, and `(L)`. This leaves commands such as `\ge`, `\in`, and `\dim` outside math mode and makes the four public theorem-style statements malformed. **Downstream effect:** the units are not paper-ready theorem statements and cannot be translated faithfully into the required appendix artifact without silently repairing their syntax. **Smallest repair direction:** put every mathematical symbol, relation, and expression in valid `\(...\)` or `\[...\]` delimiters throughout the four units and their assembly.
2. **Locations:** `unit_001` at lines 190--192 and `unit_003` at lines 350--352, together with the local-lemma-map statements at lines 96 and 98. **Defect:** both units use the rank condition (k\ge r), derived from the primitive window (r<k), only as an unnamed "setting condition." The proof-step contract requires a setting technical condition used in a theorem-style statement to cite its stable source as Assumption~\ref{assump:rank_window}. **Downstream effect:** the provenance of the first-(r)-columns construction and the (k=r+1) boundary is not self-contained in the statements, even though the body handles that boundary correctly. **Smallest repair direction:** state explicitly that Assumption~\ref{assump:rank_window} gives (r<k), hence (k\ge r), in both theorem statements and the local lemma map; retain the existing (k=r+1) argument.

## Per-Lemma Audit

### unit_001: Gaussian block QR separates orientation from the full rotated shape

- Statement fidelity: The mathematical content matches the sketch row: QR is applied to the first (r) Gaussian columns, the remaining columns are retained in the shape, and the singular branch is extended pointwise.
- Proof validity: The determinant-zero set is null; positive-diagonal QR is Borel and left-equivariant on the invertible branch; Haar uniqueness gives the exact (O(r)) law and independence from the triangular factor; independence and orthogonal invariance of the remaining Gaussian block give independence from the complete rotated shape. The null extension changes no distributional conclusion. The (k=r+1) case is handled correctly.
- Cited-result and assumption audit: Haar uniqueness is restated and applied in the correct current notation. The rank-window provenance is not stated in the required stable-assumption form.
- Rigor checklist: Algebra, measurability, exact versus almost-sure branches, and conditional probability mode are correct. The theorem statement and much of its proof contain malformed parenthetical math.
- Local adversarial test: At (k=r+1), the remainder block has one column and the independence argument is unchanged. On a singular first block, the pointwise factorization remains exact while the altered branch is null.
- Contribution to target step: Supplies the exact measurable (O(r)) orientation/full-shape decomposition.
- Verdict: REVISE_STEP
- Repair direction: Repair math delimiters and cite Assumption~\ref{assump:rank_window}; no mathematical change is needed.

### unit_002: Reflection-bit absorption gives an independent Haar orientation in SO(r)

- Statement fidelity: The proposition proves the required determinant-bit absorption without weakening exact factorization or independence.
- Proof validity: The map (O_0\mapsto(Q,\varepsilon)) decomposes Haar measure on (O(r)) into Haar measure on (SO(r)) and an independent fair component bit. Since (O_0) is independent of (R), (Q) is independent of ((\varepsilon,R)), hence of (J^{\varepsilon}R). The factorization is exact on every branch.
- Cited-result and assumption audit: The unit uses only the preceding named lemma and the restated Haar fact; all mathematical assumptions are discharged.
- Rigor checklist: Determinants, reflection multiplication, measurability, and joint independence are correct. The statement/proof repeatedly place symbols such as `(SO(r))`, `(Q)`, and `(R)` outside math delimiters.
- Local adversarial test: Both determinant components map to the same Haar (SO(r)) law, so conditioning on the reflection bit does not alter the orientation distribution.
- Contribution to target step: Converts the (O(r)) factor into the exact (SO(r)) orientation required downstream while storing the reflection in the shape.
- Verdict: REVISE_STEP
- Repair direction: Repair the malformed math markup only.

### unit_003: Independent product-Haar orientations and measurable internal tangent shape

- Statement fidelity: The proposition establishes joint product-Haar law, joint independence from all shapes and from (E), measurability of (E), and (dim(E)\le3kr), exactly as required.
- Proof validity: Modewise measurable constructions applied to independent Gaussian arrays yield a tensor-product joint law, not merely pairwise independence. The synthesis matrix depends polynomially on the shapes; (V_RV_R^\dagger) is a Borel projector onto its range, so (E) is measurable. The domain dimension gives the exact upper bound.
- Cited-result and assumption audit: The accepted Gaussianization and preceding reflection proposition supply the needed inputs. The statement again omits the stable citation Assumption~\ref{assump:rank_window} for (k\ge r).
- Rigor checklist: Conditional law, measurability, null branches, possible synthesis-rank loss, and the (k=r+1) boundary are handled correctly. Parenthetical math is malformed throughout the statement and proof.
- Local adversarial test: Zero shape columns and additional kernel relations can only reduce (dim(E)). At (k=r+1), the same construction remains measurable and the joint law remains product Haar.
- Contribution to target step: Produces the exact fixed internal subspace and three jointly independent Haar orientations consumed by later steps.
- Verdict: REVISE_STEP
- Repair direction: Repair math delimiters and add the stable rank-window assumption citation; retain the derivation unchanged.

### unit_004: Exact raw tangent equivariance

- Statement fidelity: The proposition targets the exact raw tangent range and uses only the accepted scalar/range invariances and the local product-shape result.
- Proof validity: Applying (LQ) to each of the three internal tangent blocks gives the dependency-provided elliptic-Gaussian block; invertibility of the free-mode factor permits renaming the free vector. Spanning over components proves (mathscr S_0=LQE) exactly. Balancing and normalization scalars are removed only through the accepted nonzero block-range identities.
- Cited-result and assumption audit: All accepted dependencies and the preceding local proposition are named and their exact conclusions are sufficient. No independence of balancing scalars is assumed.
- Rigor checklist: The three-mode equivariance, raw/normalized distinction, zero branches, and target convention are correct. The theorem statement and derivation still contain extensive malformed parenthetical math.
- Local adversarial test: If a coefficient block is zero, both the internal and exported block ranges vanish consistently; invertibility in the free mode preserves the remaining range equality.
- Contribution to target step: Establishes the exact object-target-compatible identity (mathscr S_0=LQE).
- Verdict: REVISE_STEP
- Repair direction: Repair the math delimiters; no change to the equality or dependency interface is needed.

## Hidden Subclaim Scan

No missing mathematical unit was found. Positive-diagonal QR/Haar separation, independence from the rotated remaining columns, reflection-bit absorption, three-mode joint independence, measurable subspace construction, the dimension bound, and exact tangent equivariance each appear in a named unit. The only hidden artifact-level repair is systematic correction of malformed math markup.

## Target Claim Audit

Modulo the statement-format defects, the four units prove the exact accepted sketch-row claim. The orientations have the exact conditional product-Haar (SO(r)^3) law and are jointly independent of (E); (E) is measurable with (dim(E)\le3kr); and the exact raw range satisfies (mathscr S_0=LQE). The proof correctly derives (k\ge r) from the stronger setting regime (r<k), covers (k=r+1), and makes no upper-(k), projection, concentration, normalized-target, or physical-space claim.

## Explicit Rate Audit

The only quantitative output is the exact dimension bound (d=\dim(E)\le3kr), hence (d/r^3\le3k/r^2). There are no hidden constants, tolerances, absorbed terms, or probability conversions. The probability mode is an exact conditional distributional identity plus null Gaussian exceptional branches; the horizon is initialization-only; the norm mode is coefficient tensor Frobenius geometry. No concentration claim is made.

## Notation Surface Audit

The helper objects are classified appropriately, and the public interface (L,Q,E) is minimal for downstream use. The blocking notation defect is syntactic rather than conceptual: extensive use of plain parentheses in place of math delimiters makes otherwise defined symbols and relations malformed in theorem-style prose.

## Target-Step Assembly Audit

The named four units jointly imply every target clause, and the assembly cites theorem-style labels rather than bare unit IDs. The dependency claims from accepted `step_002` and `step_005` are used at exactly their proved scalar/range strength. The assembly must nevertheless be regenerated with valid math delimiters and stable rank-window assumption references before it is paper-ready.

## Review Rationale

The underlying argument has no identified mathematical, dependency, boundary-case, probability-mode, or target-fidelity gap. The smallest valid repair is local to `step_006`: correct the malformed mathematical markup in all four theorem-style units and cite Assumption~\ref{assump:rank_window} wherever the (k\ge r) condition enters. Neither the accepted sketch row nor either dependency interface needs revision, so `REVISE_STEP` with producer target `/proof-step step_006` is the narrow controlled route.
