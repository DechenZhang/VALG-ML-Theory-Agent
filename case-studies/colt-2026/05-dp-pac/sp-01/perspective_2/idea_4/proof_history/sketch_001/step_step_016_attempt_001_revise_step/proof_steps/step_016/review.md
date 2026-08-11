# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_016`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_016/proof.md`
- Reviewed proof SHA-256: `586e76805da21ee468b8fade0d2cd8ab6e5b83b4c6d1496701fa22f1c7194311`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Verified accepted dependency proof/review SHA-256 pairs:
  `step_002` `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` / `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`;
  `step_003` `092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f` / `5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87`;
  `step_014` `9f040e514e388c5cd8feb190e9c4bfba48ba730be295d79c979304ce4742bbb8` / `04198f3e0db38202d74470af46f66ddf0a012f990e19ebdd2d3b8ffe75768bab`;
  `step_015` `db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38` / `ec4b5bc1759d73c4802108da738617ddece09d8c387c6cd4527bd23ec5f1a837`.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_016

## Blocking Issues

1. **Locations:** the theorem statement and proof of Proposition~\ref{prop:step-016-zero}; the theorem statement, Step-003 restatement, and proof of Proposition~\ref{prop:step-016-finite-kernel}; and the statements/proofs of Propositions~\ref{prop:step-016-minimum} and~\ref{prop:step-016-frontier}. **Defect:** the local theorem statements are not dependency-complete, and some proof references are not theorem-style. Proposition~\ref{prop:step-016-zero} expressly invokes accepted Lemma~\ref{lem:step-002-vc} and the Step-002 bijection/risk identity although its statement names none of Lemma~\ref{lem:step-002-vc}, Proposition~\ref{prop:step-002-factorization}, or Proposition~\ref{prop:step-002-risk}. The VC citation is mathematically redundant because accepted Lemma~\ref{lem:step-002-ld} already concludes (v=0), but it is still an actually used citation and cannot be silently supplied. Proposition~\ref{prop:step-016-finite-kernel} invokes accepted Proposition~\ref{prop:step-003-raw-pullback}; that accepted statement applies to a quotient kernel "produced" by Proposition~\ref{prop:step-003-quotient-kernel}, whereas the local statement omits the latter result and the Step-003 restatement broadens the accepted claim to every quotient kernel without recording this premise. Proposition~\ref{prop:step-016-minimum} expressly cites Proposition~\ref{prop:step-016-zero} and equation (D.1) without naming the zero result or Proposition~\ref{prop:step-002-risk} in its statement. Proposition~\ref{prop:step-016-frontier} expressly invokes Propositions~\ref{prop:step-016-zero} and~\ref{prop:step-016-finite-arm} without naming them and uses bare phrases such as "accepted Step 014" and "accepted Step 015" as mathematical authority instead of the exact accepted propositions. **Downstream effect:** the four units fail the strict self-contained-statement and exact-dependency-restatement contract even though the underlying calculations are valid, so they cannot be certified for assembly. **Smallest repair direction:** make every affected theorem statement name every result actually used; either include Proposition~\ref{prop:step-003-quotient-kernel} in the finite-kernel interface or prove the raw composition directly under the exact local premises; and replace all bare step references by exact theorem-style labels.

2. **Locations:** the accepted-Step-015 restatements, (C.O), (C.O\(\delta\)), (6.1), the old-arm row of the common-interface table, (7.3), and the constant-provenance notes. **Defect:** the accepted Step-015 rate constant is (K_{\mathrm{old}}), while (K_{\mathrm o}) in the accepted Step-015 artifact denotes the old quotient kernel. The reviewed proof silently renames the scalar (K_{\mathrm{old}}) to (K_{\mathrm o}), thereby reusing a dependency symbol with a different type and meaning. This makes (K_*=\max\{8,K_{\mathrm o},K_{\mathrm V}\}), (B_{\mathrm o}), and the standalone old-arm schedule formally ambiguous and makes the dependency restatement notation-inaccurate. **Downstream effect:** the common constant, threshold comparison, and old-arm schedule lack unambiguous constant provenance. **Smallest repair direction:** retain (K_{\mathrm{old}}) for the scalar, or introduce a distinct scalar name with an explicit translation, while reserving (K_{\mathrm o}) for the accepted old kernel.

3. **Locations:** `## Notation And Assumption Notes`, compared with Propositions~\ref{prop:step-016-finite-kernel}, \ref{prop:step-016-minimum}, and \ref{prop:step-016-frontier}. **Defect:** the surface audit classifies only the actual-sample specialization (K^{\mathrm{fin}}_{C,N_{\mathrm{fin}}},A^{\mathrm{fin}}_{N_{\mathrm{fin}}}), but does not classify the newly introduced generic families (K^{\mathrm{fin}}_{C,N},A^{\mathrm{fin}}_N), the recurring alias (M=|C|), or the selected actual sample size (N_*). **Downstream effect:** the artifact does not satisfy the requirement that every new helper/output object be explicitly classified as public-facing, appendix-local, or proof-local. **Smallest repair direction:** add explicit surface classifications for these objects and keep only the minimal selected-learner interface public-facing.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: The claimed exact (d=0) Dirac law, singleton conclusions, zero risk, and (m_C=0) match the target, but the statement omits accepted results expressly used in its proof.
- Proof validity: The mathematical argument is sound. Nonempty Littlestone dimension zero forces a singleton class; the quotient class is a singleton; the empty-input Dirac law is a kernel, is data independent, and decodes to the unique target. No positive-dimensional expression is evaluated.
- Cited-result and assumption audit: The proof explicitly cites Lemma~\ref{lem:step-002-vc} for (v=0) and uses the Step-002 bijection and risk identity, while the statement names only Lemma~\ref{lem:step-002-ld} and the two arm results. The omitted VC citation is redundant but actually used. The omitted factorization/risk results are used to justify the finite law's decoded-risk conclusion.
- Rigor checklist: The (N=0), (M=1), arbitrary-(D), exact privacy, and exact-risk boundaries are otherwise correct. A unique concept need not be constant and (Q_C) need not be a singleton; the proof does not assume either.
- Local adversarial test: A singleton concept taking both labels on different quotient cells still decodes exactly and has zero risk, so the mathematical conclusion survives the strongest null-case test.
- Contribution to target step: It is the required exact common no-data baseline, but it is not currently a contract-valid theorem input.
- Verdict: REVISE_STEP
- Repair direction: Name the factorization and risk propositions and either name the explicitly cited VC lemma or delete that redundant citation and rely only on the full conclusion of Lemma~\ref{lem:step-002-ld}.

### unit_002: proposition

- Statement fidelity: The fixed finite range (\bar C\subseteq H_C), every (N\in\mathbb N_0), arbitrary labels, quotient kernel, raw pullback, output, and decoder clauses exactly match the finite-arm construction target.
- Proof validity: The finite normalizer is strictly positive and finite, (2.4) is a Borel probability measure on (H_C), and countable-discrete input promotion makes it a quotient Markov kernel for every (N), including (N=0). Composition with measurable (T_N) is mathematically a raw Markov kernel. No data-dependent range or realizability restriction is introduced.
- Cited-result and assumption audit: Lemma~\ref{lem:step-003-countable-promotion} is applied correctly. The exact statement of Proposition~\ref{prop:step-003-raw-pullback}, however, is restricted to kernels produced by Proposition~\ref{prop:step-003-quotient-kernel}; the latter is absent from this local theorem statement, while the cited-result paragraph silently restates the pullback as applying to every kernel. This is a local citation/interface defect, not a flaw in the accepted dependency.
- Rigor checklist: Finiteness, positivity, arbitrary/nonrealizable labels, finite or countably infinite (Q_C), and every integer (N) are all handled. Singletons of the standard-Borel output are measurable.
- Local adversarial test: At (N=0), all counts are zero and (2.4) is uniform on the fixed finite class; on arbitrary nonrealizable inputs, all weights remain positive and the same measurability proof applies.
- Contribution to target step: It supplies the exact finite quotient/raw kernel pair, subject only to repairing dependency scope and helper classification.
- Verdict: REVISE_STEP
- Repair direction: Add Proposition~\ref{prop:step-003-quotient-kernel} to the theorem statement and restate its generic pointwise-law application exactly, or include the short raw-kernel composition proof as a direct local derivation under the named record-map premise. Classify the generic kernel families and (M).

### unit_003: proposition

- Statement fidelity: The proposition states pure (\varepsilon)-DP for the quotient finite law and its raw pullback for every (N) and every labeled input, exactly as required.
- Proof validity: Replace-one adjacency changes each mistake count by at most one. Hence each weight changes by a factor in ([e^{-\varepsilon/2},e^{\varepsilon/2}]); summing gives (W_{\bar s}(E)\le e^{\varepsilon/2}W_{\bar s'}(E)) and (Z_{\bar s}\ge e^{-\varepsilon/2}Z_{\bar s'}), so the event probability ratio is at most (e^\varepsilon). The equal-or-neighbor quotient image transfers the same inequality to raw inputs.
- Cited-result and assumption audit: Proposition~\ref{prop:step-016-finite-kernel} supplies both kernels and Proposition~\ref{prop:step-002-record-map} supplies all-input neighbor transport. No realizability or utility premise is used.
- Rigor checklist: The event (E\in\mathcal H_C) is arbitrary; zero numerator causes no division problem; the symmetric neighbor convention supplies both ordered directions; and the (N=0), same-cell, changed-label, and arbitrary-label cases pass.
- Local adversarial test: A replacement that flips both feature cell and label still changes exactly one Bernoulli summand per hypothesis, so sensitivity remains one. An event containing hypotheses outside (\bar C) is harmless because the law is supported on (\bar C).
- Contribution to target step: It proves the complete pure-DP interface, and pure DP validly weakens to the allowed approximate-DP target.
- Verdict: PASS
- Repair direction: None.

### unit_004: lemma

- Statement fidelity: The statement includes every relevant primitive condition, the exact pushforward/risk dependencies, arbitrary (N,D,c), the unconditional probability mode, and uniformity in (D,c).
- Proof validity: Realizability gives target weight one and (Z_{\bar S}\ge1). For each fixed output, the iid Bernoulli transform is exactly ([1-p_{\bar h}(1-e^{-\varepsilon/2})]^N), which is at most (e^{-Np_{\bar h}(1-e^{-\varepsilon/2})}). For (0<\varepsilon\le1), (1-e^{-\varepsilon/2}\ge\varepsilon/4). Summing over the fixed finite bad set yields (M e^{-N\varepsilon\alpha/4}).
- Cited-result and assumption audit: The target concept, iid quotient law, raw pushforward, and exact measurable risk event are supplied by the named accepted propositions. No finite-class generalization theorem or hidden sampling event is used.
- Rigor checklist: The strict bad condition (p_{\bar h}>\alpha), finite bad-set sum, (N=0), mechanism randomness, sample randomness, and exact raw/quotient probability transfer are correct. The final bound contains no (D,c)-dependent quantity, so both suprema are legitimate.
- Local adversarial test: If the bad set is empty the probability is zero; if (M=1), realizability makes it empty. For risk arbitrarily close to (alpha) from above, the weakened exponent remains valid.
- Contribution to target step: It supplies the direct unconditional finite-arm PAC tail with no invented or absorbed sampling term.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The proposition states the complete finite learner, exact branch split, integer sample size, privacy/PAC interfaces, (M=1) boundary, and (N_{\mathrm{fin}}\le8R_{\mathrm{fin}}), plus (+\infty) disabling for infinite (C).
- Proof validity: The ceiling in (5.1) makes the tail at most (\beta). Since (\beta<1/4), (alpha<1/4), and (\varepsilon\le1), the unrounded value exceeds one, so (lceil x\rceil\le2x). Then (log M\le\log^+M) gives (5.7). The (d=0,M=1) arm correctly bypasses (5.1) and uses (N=0).
- Cited-result and assumption audit: The kernel, DP, tail, and null inputs are all named. The infinite-class case is a deterministic extended-real convention and assumes no finite surrogate.
- Rigor checklist: The exact integer ceiling is paid. The second (R_{\mathrm{fin}}) summand is used only as nonnegative slack; no (log M/\alpha) or other sampling term is created or silently absorbed. The constant (8) is numerical and (q_{\mathrm{fin}}=0).
- Local adversarial test: At (M=1), (log M=0) but (log^+M=1), and the exact no-data law remains stronger than the positive envelope. At finite (M\ge2), the normalizer and threshold remain finite.
- Contribution to target step: It completes and normalizes the finite arm on the common interface.
- Verdict: PASS
- Repair direction: None.

### unit_006: proposition

- Statement fidelity: The proposition targets the correct deterministic minimum among three complete learner thresholds and the exact extended-real infinite-class convention. Its statement is not dependency-complete for the null and common-risk facts used in its proof.
- Proof validity: For (d\ge1), each row is a complete learner at its own integer sample size. Choosing the smallest certified threshold before seeing data and running only that row gives (m_C\le N_{j_*}\le\min_j B_j). Coordinatewise (B_j\le K_*\Lambda^6R_j) implies the desired common minimum by choosing an index attaining (min_j R_j). No mixture, sample splice, or data-dependent arm choice occurs. For infinite (C), setting only (B_{\mathrm{fin}}=+\infty) leaves two finite arms.
- Cited-result and assumption audit: The accepted finite, VC, and old positive-dimensional interfaces are accurately used, but the proof additionally cites Proposition~\ref{prop:step-016-zero} and (D.1) without naming the zero proposition or Proposition~\ref{prop:step-002-risk} in the theorem statement. The old scalar constant is also renamed to the dependency's kernel symbol (K_{\mathrm o}).
- Rigor checklist: Different arm sample sizes and laws are allowed by the definition of (m_C); the selected learner is one whole kernel at its own integer (N). The finite-parameter result holds for every fixed allowed (delta) and uses no asymptotic schedule. Extended-real minima are sound.
- Local adversarial test: If an arm with a loose certificate wins, its actual (N_j\le B_j) still suffices. Ties are resolved by a fixed pre-data rule. Infinite (C) cannot activate a finite surrogate.
- Contribution to target step: The numerical and probabilistic minimum argument is valid, but the theorem statement and constant notation must be repaired before it is a certified assembly input.
- Verdict: REVISE_STEP
- Repair direction: Add the actually used zero/risk results to the statement or remove the redundant uses by deriving solely from the named complete-arm conclusions; restore a distinct old rate-constant symbol.

### unit_007: proposition

- Statement fidelity: The eight clauses faithfully state the required (d=0), (v=1), (v=d), (v=o(d)), finite/infinite, fixed/scheduled-(delta), selected-learner, standalone-old-arm, and remaining-open-gap conclusions. The statement nevertheless omits local propositions it expressly uses and includes bare proof-step references.
- Proof validity: The direct shattering argument proves (1\le v\le d) on (d\ge1). The identities (vd^4/d^5=v/d) and (vd^4=d^5) at (v=d) are exact. For the selected learner, (N_*\delta\le\delta\min_jB_j\le\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}), so the setting's explicit VC schedule implies the numerical limit. The standalone old arm correctly retains its separate sufficient schedule. Fixed positive (delta) is never called small.
- Cited-result and assumption audit: The proof expressly uses Propositions~\ref{prop:step-016-zero} and~\ref{prop:step-016-finite-arm} although neither is named in the theorem statement. The statement/proof also rely on bare "accepted Step 014/015" references at several mathematical transitions instead of the exact accepted arm/rate/boundary propositions. The old-rate scalar collision propagates into (7.3).
- Rigor checklist: The (d=0) and positive branches are separated; (v=1), (v=d), (v=\Theta(d)), and (v=o(d)) are correctly interpreted as exposed upper-bound profiles, not lower bounds on (m_C). The fixed-((\alpha,\beta,\varepsilon)) shorthand suppresses only the setting-permitted displayed logarithmic factors. The conditional countable-quotient scope and uncountable-quotient/polylogarithmic gaps are not overstated.
- Local adversarial test: Finite and infinite (C), fixed positive (delta), a selected finite or old arm under the VC schedule, and the standalone old arm all follow distinct legal branches. No schedule is inferred merely from (delta\to0).
- Contribution to target step: It contains the correct frontier and diagnostic boundary, but its dependency references, constant notation, and (N_*) surface classification require local repair.
- Verdict: REVISE_STEP
- Repair direction: Name the zero and finite-arm propositions in the theorem statement, replace every bare step citation by the exact proposition used, restore the old scalar's distinct name, and classify (N_*).

## Hidden Subclaim Scan

No additional mathematical lemma is missing. The fixed-range kernel, sensitivity-one privacy ratio, unconditional Bernoulli tail, ceiling normalization, deterministic complete-arm selection, (v\le d), schedule squeeze, and conditional-scope boundary are all actually derived. The hidden defects are proof-authority and interface defects: missing theorem-statement dependencies, the broadened Step-003 pullback restatement, and bare step-ID citations in the frontier unit. The direct tail correctly avoids a separate sampling term.

## Target Claim Audit

At the level of mathematical implications, the seven units establish the exact Step-016 target: a finite pure-DP/PAC arm on the fixed quotient class, (N_{\mathrm{fin}}\le8R_{\mathrm{fin}}), deterministic selection of one complete common-interface learner, the extended-real infinite-class convention, the fixed-parameter minimum, the source-compatible selected-learner schedule, the standalone old schedule, and all requested dimension/cardinality/scope boundaries. The output space, decoder, raw replace-one privacy, probability mode, and binary risk agree across arms. Certification nevertheless fails because four theorem-style units and one dependency restatement violate the binding reference contract, and the old constant's provenance is ambiguous.

## Explicit Rate Audit

The exposed variables are (|C|,d,v,\alpha,\beta,\varepsilon,\delta). The finite arm proves the exact integer choice

\[
N_{\mathrm{fin}}=
\left\lceil\frac{4(\log M+\log(1/\beta))}{\varepsilon\alpha}\right\rceil
\le8R_{\mathrm{fin}}
\]

without a separate sampling term. The normalized VC and old dependencies retain their accepted fixed-sample, all-input-DP, unconditional-PAC, population-zero-one-risk modes. The common comparison validly uses a universal constant and exponent (6), and no positive power of (d,v), or (log^+|C|) is hidden. However, the old universal scalar must be written as the accepted (K_{\mathrm{old}}), or be explicitly translated to a noncolliding name, before the hidden-constant declaration and (6.1)--(7.3) are contract-valid.

No quantity is fixed for the pointwise finite-parameter theorem. The class-complexity shorthand fixes (alpha,\beta,\varepsilon) and uses the setting's scheduled-small-(delta) convention. The selected learner's squeeze uses the accepted VC-arm constants (K_{\mathrm V},q=4); the standalone old arm uses its separate (K_{\mathrm{old}},q=6) premise; and no (N\delta\to0) conclusion is attached to fixed positive (delta). Baseline reduction is exact at (d=0), (v=1), (v=d), (v=o(d)), and finite/infinite (C).

## Notation Surface Audit

The empirical count, weights, normalizer, event numerator, finite bad set, ceiling helper, and certified thresholds are economical and have visible provenance. The proof correctly keeps the finite range fixed and exports only a common selected-learner interface. Two notation defects remain blocking: (K_{\mathrm o}) is reused as a scalar although it is the accepted old-kernel symbol, and the generic finite-kernel families, (M), and (N_*) lack explicit public/appendix/proof-local classifications. The actual-sample finite kernels alone are classified, which does not cover the generic objects introduced and used by earlier units.

## Target-Step Assembly Audit

The assembly's mathematical order is correct. The zero branch is isolated first; the finite kernel, privacy, tail, and rate are completed next; the accepted VC and old tuples are then compared; and the frontier is specialized last. The displayed assembly uses named local and accepted propositions and does not mix laws. It cannot yet certify the target because Propositions~\ref{prop:step-016-zero}, \ref{prop:step-016-finite-kernel}, \ref{prop:step-016-minimum}, and \ref{prop:step-016-frontier} are not contract-valid inputs until the three blocking groups above are repaired.

## Review Rationale

The smallest sound repair is a rerun of the Step-016 producer. The finite-mechanism algebra, privacy proof, PAC tail, ceilings, deterministic minimum, schedules, and boundary logic do not require a sketch change, and no accepted dependency proof is flawed. The necessary changes are local: complete the affected theorem statements and exact dependency restatements, replace bare step references, restore noncolliding old-rate constant notation, and finish helper-surface classification. A repaired proof will require a fresh accepted step review before downstream consumption.
