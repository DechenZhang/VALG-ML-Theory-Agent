# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_005`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_005/proof.md`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_005

## Blocking Issues

1. **The all-branch gauge claim does not support the asserted fixed two-direction quotient.** Location: the concrete target claim, `unit_003`, `unit_004`, and the target-step assembly. Let (a=\alpha_{i,0}), (b=\beta_{i,0}), and (c=\gamma_{i,0}). The proof correctly shows that
   
   \[
     g_1=(a,-b,0),\qquad g_2=(a,0,-c)
   \]
   
   are null vectors, but their span is not two-dimensional on every zero branch. The exact branch classification is:
   
   - if (a,b,c\ne0), then
     \(ker\mathcal T_i=\{(\lambda a,\mu b,\nu c):\lambda+\mu+\nu=0\}\), of dimension (2), and it equals (\operatorname{span}\{g_1,g_2\});
   - if exactly one vector is zero, then the kernel is respectively
     \(\{0\}\oplus\mathbb R^r\oplus\mathbb R^r\),
     \(\mathbb R^r\oplus\{0\}\oplus\mathbb R^r\), or
     \(\mathbb R^r\oplus\mathbb R^r\oplus\{0\}\), of dimension (2r), while (g_1,g_2) remain independent;
   - if exactly two vectors are zero, then (\mathcal T_i=0), its kernel has dimension (3r), and the canonical gauge span has dimension (1): it is the span of the surviving block vector;
   - if all three vectors are zero, then (\mathcal T_i=0), its kernel has dimension (3r), and both displayed gauge generators vanish.
   
   Thus quotienting by the branch-dependent span (\mathcal G_i=\operatorname{span}\{g_1,g_2\}) is well defined and preserves the range, but it is not quotienting by exactly two independent gauge directions on the last two branch classes. The repair must state the fixed two-dimensional accepted gauge quotient only on the nonzero branch supplied by the dependency interface, separately state the all-branch quotient by the possibly lower-dimensional gauge image, and carry that distinction through the target claim and assembly. No sketch dependency or output interface needs to change because downstream consumers use only the range.

2. **A complement of the displayed gauge span is not necessarily a tangent basis.** Location: `unit_004`, especially the claimed equivalence between a complement-based matrix and a "reduced tangent basis." The proof itself acknowledges that the global synthesis kernel may contain cross-component dependencies, and the branch classification above shows additional local kernel directions on zero branches. Hence a basis of a complement of (\mathcal G) is only a reduced parameter frame; its image columns may remain dependent and its Gram may be singular. The same-column-range conclusion is correct, but the basis/injectivity implication is an unproved hidden subclaim. Rename the object and state only the range conclusion, or quotient by the full kernel if an actual tangent-space basis is intended.

3. **Dependency and notation presentation is not contract-complete.** Location: all four local result statements and `unit_004`. The statements refer generically to the "accepted `step_002` coefficient interface" instead of naming the exact accepted Lemma~\ref{lem:step-002-coefficient-gaussianization} and Proposition~\ref{prop:step-002-balancing-invariance} in the statements themselves; the later citation block does not repair that statement-local omission. In addition, `unit_004` reuses (\mathcal G), which already denotes the setting's balancing map, for the global gauge subspace. Rename the gauge subspace, and fix the malformed inline formulas `(pq\in...`, `(c=...`, and `(D_r)` while revising the statements.

## Per-Lemma Audit

### unit_001: Exact scaling of all three pair Grams

- Statement fidelity: The mathematical conclusion is exactly the Gram-scaling part of the sketch row for all three mode pairs.
- Proof validity: With (c=\sqrt{n/r}), each normalized coefficient equals (c) times its raw counterpart. Every normalized pair column is therefore (c^2=n/r) times the raw pair column, so (K_{\rm raw}^{pq}=(r/n)K_{\rm norm}^{pq}). Transpose multiplication gives the exact squared factor ((r/n)^2). This remains true for zero columns. The pair matrices are (r^2\times k) and the Grams are (k\times k), so the dimensions are consistent.
- Cited-result and assumption audit: No external result is used. The calculation needs only (n,r>0) and the setting normalization; if the accepted dependency is retained in the statement, it must be cited by its named results.
- Rigor checklist: All three mode pairs have the same factor and no raw spectral threshold is introduced. The displayed `pq` and `c` formulas have minor malformed math delimiters that must be fixed.
- Local adversarial test: A zero pair column stays zero on both sides; (n=r) reduces both identities to equality without scaling.
- Contribution to target step: Correctly supplies all three pair-column and Gram identities.
- Verdict: REVISE_STEP
- Repair direction: Preserve the derivation, make the statement's dependency basis exact, and repair the malformed notation.

### unit_002: Exact scaling and range of the tangent synthesis maps

- Statement fidelity: The claimed map scaling and the raw/normalized span equality match the accepted row.
- Proof validity: Every tangent summand contains exactly two normalized coefficient vectors, so (\mathcal T_{\rm norm}=(n/r)\mathcal T_{\rm raw}). Since the factor is nonzero, the maps have equal kernels and ranges. The two-sided generator argument correctly identifies their ranges with (\mathscr S_0^{\rm raw}) and (\mathscr S_0^{\rm norm}), including zero-vector branches. The parameter and tensor spaces have dimensions (3kr) and (r^3), respectively.
- Cited-result and assumption audit: This is direct algebra from the setting normalization. The generic dependency phrase in the theorem statement should be removed or replaced by exact named dependency results.
- Rigor checklist: Raw and normalized parameter variables are consistently taken in the same space, and multiplication by (r/n) changes neither range nor kernel.
- Local adversarial test: If any fixed coefficient pair vanishes, the corresponding generator block vanishes in both maps; the scalar map identity still holds globally.
- Contribution to target step: Correctly proves (\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0).
- Verdict: REVISE_STEP
- Repair direction: Keep the algebra and make the statement-local dependency citation contract-complete.

### unit_003: Component gauge kernels and exceptional branches

- Statement fidelity: The nonzero-branch kernel statement is exact, and the all-branch null inclusion is enough for a branch-dependent quotient-range result. It does not, however, establish an all-branch quotient by exactly two independent gauge directions as asserted in the target prose.
- Proof validity: For (a,b,c\ne0), applying modewise annihilating projections and dual functionals correctly forces (u=\lambda a), (v=\mu b), (w=\nu c), followed by (\lambda+\mu+\nu=0). The two displayed generators are then independent and span the kernel. Direct substitution correctly proves their nullity on every branch. The proof stops short of the exact zero-branch kernel and gauge-dimension classification recorded in Blocking Issue 1.
- Cited-result and assumption audit: No cited theorem is needed for the deterministic kernel calculation. Any use of the dependency's regular branch must name the exact accepted result and state the branch condition in the lemma.
- Rigor checklist: The dual functionals exist only when the corresponding fixed vectors are nonzero, and the proof uses them only in that case. The statement "the two displayed generators may lose independence" is too weak to support the fixed quotient claim.
- Local adversarial test: At ((a,b,c)=(0,0,c)), (\mathcal T_i=0), (g_1=0), and (g_2=(0,0,-c)); the canonical gauge span has dimension (1), not (2). At ((0,0,0)), it has dimension (0).
- Contribution to target step: Supplies a correct regular-branch gauge kernel and all-branch null subspace, but not the claimed uniform two-direction quotient.
- Verdict: REVISE_STEP
- Repair direction: Add the exact branch table and distinguish the regular two-dimensional scaling gauge from the degenerate branch-dependent gauge image.

### unit_004: Gauge quotient, unreduced range, and raw-target compatibility

- Statement fidelity: Factoring through any specified gauge-null subspace and preserving the unreduced range matches the range-compatible part of the row. The phrases "exactly two directions per component" and "reduced tangent basis" overstate what the constructed quotient proves on all branches.
- Proof validity: Once the gauge subspace is contained in both kernels, the induced coset maps are well defined. Surjectivity of the quotient map proves that each induced range equals the unreduced range, and restriction to a vector-space complement also has the same range. The proof does not establish injectivity on that complement. Taking (u_i=\alpha_{i,0}), (v_i=w_i=0) gives exactly
  \[
    \mathcal T_{\rm raw}p_{\widehat D}
      =\sum_i\alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0}
      =\widehat D_0,
  \]
  so (\widehat D_0\in\mathscr S_0) on every branch.
- Cited-result and assumption audit: The unit correctly cites the preceding named local results, but its generic `step_002` reference must be made exact. No external result is used.
- Rigor checklist: The range proof is valid even with additional local or cross-component kernel. The symbol (\mathcal G) conflicts with the setting's balancing map and must be renamed. The quotient dimension is branch-dependent under the current definition.
- Local adversarial test: On a doubly-zero component, quotienting the canonical gauge image removes only one parameter direction while the entire (3r)-dimensional local block is null; a complement therefore still contains many kernel vectors, although its image range remains correct.
- Contribution to target step: Correctly proves quotient-map well-definedness, equality with the unreduced range, exact (\widehat D_0\) membership, and preservation of raw target/metric conventions; it needs the stated gauge/basis qualification.
- Verdict: REVISE_STEP
- Repair direction: Use a nonconflicting gauge symbol, state the branch-dependent quotient precisely, and call a complement basis a parameter frame unless full-kernel injectivity is proved.

## Hidden Subclaim Scan

The proof contains two hidden overclaims. First, two written generator formulas are treated as two gauge directions even when their span has dimension one or zero. Second, a basis of a complement of that gauge span is called a reduced tangent basis although unremoved local and cross-component kernel can make its image dependent. No hidden Gram, spectral, probability, Haar, or physical-metric claim was found.

## Target Claim Audit

The proof establishes the exact pair-column factors (r/n), the three Gram factors ((r/n)^2), the synthesis identity (\mathcal T_{\rm raw}=(r/n)\mathcal T_{\rm norm}), and (\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=\mathscr S_0). It also proves that quotienting by the actually constructed gauge span is well defined and range preserving, and it proves (\widehat D_0\in\mathscr S_0) exactly. It does not establish the target prose's all-branch quotient by exactly two independent gauge directions per component. The target is therefore not yet proved with its present quantifiers and terminology.

## Explicit Rate Audit

None. This step is deterministic and not rate-bearing. The only exposed scales are the exact factors (r/n) and ((r/n)^2), with no hidden constants, thresholds, term absorption, probability conversion, horizon claim, or norm change.

## Notation Surface Audit

The public-facing objects (G_{\rm raw}^{pq}), (G_{\rm norm}^{pq}), (\mathscr S_0), (D_r), and (\widehat D_0) retain their setting meanings. The synthesis and quotient machinery is appropriately appendix local, but the global gauge subspace must not reuse (\mathcal G), the public setting symbol for balancing. The complement should be classified as a parameter frame rather than a tangent basis. The proof correctly leaves (D_r), the raw coefficient residual, and the physical Frobenius loss unnormalized.

## Target-Step Assembly Audit

The named pair-Gram and synthesis results correctly assemble the scaling and span clauses. The quotient proposition correctly assembles well-definedness and equality of quotient and unreduced ranges, and its explicit parameter choice proves (\widehat D_0\in\mathscr S_0). Assembly fails only at the stronger all-branch "exactly two gauge directions" and "reduced tangent basis" wording. After the branch qualification and terminology repair, the named results will imply the unchanged sketch-row output used by `step_006` and `step_009`.

## Review Rationale

The core raw/normalized algebra is sound and the dependency is not defective. The failure is confined to how the submitted step identifies and names the gauge quotient on degenerate branches, plus statement-local citation and notation defects. The accepted sketch already needs only quotient-range compatibility and the exact raw span, so no new bridge, dependency, assumption, or output target is required. The smallest repair is therefore `/proof-step step_005`; a fresh `/proof-step-review step_005` is required before downstream use.
