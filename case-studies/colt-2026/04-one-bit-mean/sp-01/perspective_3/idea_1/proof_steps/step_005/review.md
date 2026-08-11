# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_005/proof.md` (SHA-256 `afebc25c4a8ca7376c3ea7206f432cbd5d912235a533bb5c2d04868453e72acd`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma states the exact separate level-zero all-alias square identity required by the accepted row. It includes the target and every same-color alias, keeps the sole level-zero importance factor \(p_0^{-1}\), and introduces no branch or type variable that is absent from the level-zero seed law.
- Proof validity: Conditional on the masks, Lemma~\(\ref{lem:step-003-dither}\) gives the square moment \(|F_i(x)|/2\), not a signed mean. Fixed-color uniqueness therefore gives \(\sum_q |x-m_{0,j_0+4q}|/(4h_0)\) over the unique active target or alias. The exact calculation
  \[
    p_0\frac14\left(\frac{16h_0}{p_0}\right)^2
    \frac{|x-m_{0,j_0+4q}|}{4h_0}
    =\frac{16h_0}{p_0}|x-m_{0,j_0+4q}|
  \]
  is correct. The accepted bound \(|x-m_{0,j}|\leq3h_0/2\) then gives \(24h_0^2/p_0\).
- Cited-result and assumption audit: The unit uses only Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\), the current accepted step_001 conditional product law, the current accepted step_002 same-color support and bounded-query results, and the current accepted step_003 dither-square identity. Each result is restated in current notation before use. Signed mask cancellation is correctly not imported into the square calculation.
- Rigor checklist: The countable alias sum is pointwise zero- or one-term, so no infinite-series interchange occurs. The proof handles target activity, alias-only activity, no active ring, zero coordinate amplitude, every half-open endpoint, and arbitrary positive \(p_0\).
- Local adversarial test: On an active alias, the target mask disappears after squaring while the alias dither amplitude contributes through its absolute value, so the term remains positive as required. At \(x=m_0\), the target amplitude is zero. Both tests agree with the exact formula.
- Contribution to target step: It supplies the branchless, type-free level-zero ledger and isolates its legal \(p_0^{-1}\) cost before the higher-level activation argument.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma proves the exact per-level coordinate-plus-mass second moment for every \(1\leq s\leq S\), with all target and same-color alias rings present, and bounds it by \(128h_s^2p_s^{-1}{\bf1}_{\Gamma_s(c)}\). It preserves the full importance cost and does not replace the all-alias formula by a target-only surrogate.
- Proof validity: Coordinate and mass types are mutually exclusive, so their squared coefficients have no cross term. For the coordinate type, the exact probability and dither ledger is
  \[
    p_s\frac14\frac12\frac12
    \left(\frac{16}{p_s}4h_s\right)^2
    \frac{|x-m_{s,j_s+4q}|}{4h_s}
    =\frac{64h_s}{p_s}|x-m_{s,j_s+4q}|.
  \]
  For the mass type it is
  \[
    p_s\frac14\frac12\frac12
    \left(\frac{16}{p_s}2d_s\right)^2\frac12
    =\frac{32d_s^2}{p_s}.
  \]
  The accepted amplitude and displacement bounds give \(96h_s^2/p_s\) and \(32h_s^2/p_s\), respectively, hence the stated constant \(128\).
- Cited-result and assumption audit: The unit uses the accepted step_001 refinement product law, step_002 displacement, support, amplitude, and bounded-query conclusions, and step_003 dither-square identity under the two named primitive assumptions. The color, branch, and type probabilities are exactly \(1/4,1/2,1/2\), and their conditional use matches the setting law for \(L_i=s\geq1\).
- Rigor checklist: The proof averages over the target and alias masks only after using the absolute dither square, retains exactly one \(p_s^{-1}\), and uses fixed-color uniqueness rather than an unproved selected-cell event. It covers coordinate and mass types, both branches through the retained value \(b_s\), negative cells, \(d_s=0\), mass amplitude one, and boundary amplitudes.
- Local adversarial test: An active alias has zero signed mean but the same nonnegative square contribution as a target, and the displayed formula retains it. When \(d_s=0\), the mass term vanishes exactly while the coordinate term remains unchanged. Neither case violates the claimed bound.
- Contribution to target step: It supplies the exact higher-level all-alias charge that is converted by \(h_s^2/p_s=Z_Sh_s^k\) in the next unit.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition states the required pointwise all-level second-moment inequality for the exact statistic \(W_i(c)\). It treats level zero separately, includes every higher target and alias support through \(\Gamma_s(c)\), and performs the theorem-critical level summation before expectation over \(X_i\).
- Proof validity: The mutually exclusive level events exhaust the law of \(W_i(c)\). Substitution of the exact setting identity
  \[
    p_s^{-1}=Z_Sh_s^{k-2},\qquad h_s^2/p_s=Z_Sh_s^k
  \]
  gives one common factor \(Z_S\). Proposition~\(\ref{prop:step-004-activation-ledger}\) then yields
  \[
    \sum_{s=1}^S h_s^k{\bf1}_{\Gamma_s(c)}(x)
    \leq C_{{\rm act},k}|x-m_0|^k,
  \]
  producing exactly the asserted bound. Dropping only \({\bf1}_{\Gamma_0(c)}\leq1\) is valid and displayed.
- Cited-result and assumption audit: Both preceding named local lemmas and the current accepted step_004 proposition are used through their exact statements. The step_004 proof hash and accepted review identity match, and its \(\Gamma_s(c)\) includes the target and all branch-matched same-color aliases.
- Rigor checklist: Within-level countable sums have at most one active term and the level sum is finite, so there is no interchange of an uncontrolled sum, expectation, or supremum. Constants are uniform in \(c,x,S\), cells, branches, masks, and dithers.
- Local adversarial test: At \(k=2\), the substitution is \(h_s^2/p_s=(S+1)h_s^2\), while the accepted pointwise ledger remains independent of \(S\). Thus this unit creates one factor \(S+1\) and cannot create a second one. At \(x=m_0\), every higher charge is zero.
- Contribution to target step: It converts the exact seed-level squares into a single pointwise \(Z_S\)-weighted recentered \(k\)-moment interface, with no level-count loss.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition establishes the exact conditional variance target on the derived localization event, with a finite explicit k-only constant and the required single-factor \(k=2\) certificate. It states the scalar condition \(|c-\mu|\leq50\sigma\) rather than mistyping an event as a set of scalar values.
- Proof validity: The current accepted step_001 product-law interface leaves \(X_i\sim D\) and all refinement seeds at their original law after conditioning on localization, hence also after conditioning on the measurable scalar \(c\). Integrating the pointwise result gives
  \[
    \mathbb E[W_i(c)^2\mid c]
    \leq Z_S\{24h_0^k+128C_{{\rm act},k}M_k(c)\}.
  \]
  On \(|c-\mu|\leq50\sigma\), \(h_0=a_k\sigma\) and the accepted recentered-moment bound yield \(C_k^{\rm var}\sigma^kZ_S\), with \(C_k^{\rm var}=24a_k^k+128C_{{\rm act},k}C_k^{\rm rec}\). This proves square integrability before applying \(\operatorname{Var}(W_i(c)\mid c)\leq\mathbb E[W_i(c)^2\mid c]\).
- Cited-result and assumption audit: The primitive moment condition and the fresh accepted step_001 Unit attempt 2 independence/recentering results are exactly the required inputs. The conditional sigma-field and seed law are stated: the bound averages over \(X_i\sim D\) and all refinement seeds after conditioning only on localization output, not on frozen refinement public coins.
- Rigor checklist: The constant depends only on fixed \(k\) and its k-only choice \(a_k\); it is independent of all exposed problem, confidence, scale, level, path, and protocol realizations. The proof covers \(S=1\), every fixed \(k>1\), zero variance, target-only and alias-only activity, and the conditional event boundary.
- Local adversarial test: At \(k=2\), the proof explicitly obtains
  \[
    (S+1)\{24h_0^2+128C_{{\rm act},2}M_2(c)\},
  \]
  so exactly one \(Z_S=S+1\) is present. If the law is supported in \(J_{0,j_0}\), all higher target and alias supports are inactive; if \(D\{m_0\}=1\), the level-zero amplitude also vanishes and \(W_i(c)=0\) seedwise.
- Contribution to target step: It integrates the pointwise ledger under the correct conditional law and exports the exact variance interface consumed by the median-of-means step.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The level-zero seed law, the coordinate/mass type split, the absolute dither-square calculation, target-mask squaring, same-color uniqueness, all-alias sums, exact probability coefficients, pointwise level summation, conditional product-kernel integration, square-integrability check, variance comparison, and \(k=2\) specialization all appear in the four mapped units or in explicitly restated accepted dependencies. The countable ring unions are Borel by the dependency-proved Borel ring structure, and each within-level sum is pointwise finite. No signed mean cancellation, selected-cell event, frozen-seed guarantee, external citation, global diagnostic, subsection title, or bare local-unit identifier is used as hidden mathematical authority.

## Target Claim Audit

The submitted proof establishes the exact accepted `step_005` row under only the listed primitive conditions and accepted dependencies. The verified dependency proof hashes are `3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a` for fresh `step_001` Unit attempt 2, `4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c` for `step_002`, `ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6` for `step_003`, and `cef249f560113a361858decc545ab21ac4c6a87e8fe597bc6c0758634e859b88` for `step_004`. Their current review hashes are, respectively, `1ca80220cdd1e5461b633723557ecfe7e95f0dc293ecb78163dd8488790ff8cc`, `769af821c4dce2faef07c8012cb794675f57d547b2a1bafd64d39d1a05e90b41`, `b8ba2452221e43bff2ac130021d751f3f3ad5ad5c5db07113dc2c36e0fdcafa6`, and `6a0c5da318dc225facc59ad371c3b61b95fde2daea0d1511a1a9a29bf9c761d8`; each review records `ACCEPTED` and certifies the matching current proof artifact and unit attempt. The proof is uniform over every successful localization output and every admissible law, includes all alias classes, and proves \(\operatorname{Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^kZ_S\) with no claim strengthening, population narrowing, quantifier drift, probability-mode upgrade, or hidden generated-invariant assumption.

## Explicit Rate Audit

This step is rate-bearing. It exposes \(k,\sigma,\epsilon,S,(h_s),(p_s),Z_S,a_k,C_k^{\rm rec},C_{{\rm act},k},C_k^{\rm var}\), and the conditional output \(c\); dependence on \(\epsilon\) remains through the setting-defined \(S\) and \(Z_S\). Hidden constants may depend only on fixed \(k\) and its k-only design choices and may not depend on \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,Z_S,c\), any cell, path, sample, or seed. The probability mode is conditional on localization output while averaging over the independent refinement sample and seeds; the horizon is the fixed finite scale family; and the metric is scalar conditional variance with the exact residual \(|x-m_0|\). Every absorption is displayed through \(h_s^2/p_s=Z_Sh_s^k\), the pointwise activation ledger, \(h_0^k=a_k^k\sigma^k\), and \(M_k(c)\leq C_k^{\rm rec}\sigma^k\). At \(k=2\), the proof shows one factor \(Z_S=S+1\), never \(S^2\). Three-regime evaluation and conditional-to-unconditional conversion are correctly left to their assigned downstream steps. The supported-in-\(J_0\) and point-mass baselines reduce exactly, with no conservative remainder.

## Notation Surface Audit

The setting objects retain their meanings. The accepted \(M_k(c)\), \(C_k^{\rm rec}\), \(\Gamma_s(c)\), and \(C_{{\rm act},k}\) are used through their certified interfaces. The only new public-facing object is the explicit \(C_k^{\rm var}\) and its variance inequality. The ring aliases \(E_{s,q}(c)\) and \(\Gamma_0(c)\) are correctly classified as proof-local and make the all-alias calculation visible without exporting a helper dictionary. Every numerical factor and constant has displayed provenance; no notation hides a finiteness, conditioning, support, or dependence obligation.

## Target-Step Assembly Audit

The assembly cites all four local results by theorem-style names and stable labels. Lemma~\(\ref{lem:step-005-level-zero-square}\) supplies the required separate level-zero identity; Lemma~\(\ref{lem:step-005-higher-square}\) supplies the exact coordinate-plus-mass all-alias formula; Proposition~\(\ref{prop:step-005-pointwise-square}\) applies the complete accepted activation ledger pointwise before expectation; and Proposition~\(\ref{prop:step-005-conditional-variance}\) integrates under the accepted conditional law and applies the recentered moment. These conclusions jointly imply every clause of the binding claim, including exact seed coefficients, event/scalar typing, constant dependence, boundary cases, baseline reductions, and the single-factor \(k=2\) accounting. No additional lemma or changed sketch interface is needed.

## Review Rationale

The immutable submitted proof matches its expected SHA-256 identity, and every dependency proof matches the current accepted review that certifies it, including the repaired `step_001` Unit attempt 2. Each local unit is statement-complete and valid; the proof retains absolute dither squares for aliases, uses the exact conditional seed law, sums all nonnegative level charges pointwise before expectation, and closes the variance with an explicit k-only constant. The exact target is therefore proved under the unchanged accepted sketch row. `ACCEPTED` with `Smallest Retry Target = None` is the smallest and required controlled outcome.
