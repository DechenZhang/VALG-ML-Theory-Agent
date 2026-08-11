# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_1/proof_steps/step_003/proof.md` (SHA-256 `ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6`)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The lemma proves exactly the two dither identities required by the accepted sketch row, under the setting's centered uniform dither convention, and includes \(f\in\{-1,0,1\}\). It introduces no stronger probability or fixed-seed conclusion.
- Proof validity: For \(0\leq f\leq1\), the difference of threshold indicators is \({\bf1}_{(0,f]}\); for \(-1\leq f<0\), it is \(-{\bf1}_{(f,0]}\). Integration against density \(1/2\) gives \(f/2\), while squaring gives \(|f|/2\). At \(f=0\) the difference is pointwise zero. The equality conventions at \(u=f\), \(u=0\), and the dither endpoints are correct.
- Cited-result and assumption audit: No external result is used. Assumption~\(\ref{assump:independent-samples}\) supplies independence of the dither from the fixed or conditionally fixed query amplitude; the accepted step_002 bounded-query conclusion supplies \(f\in[-1,1]\) when the lemma is applied to \(F_i(x)\).
- Rigor checklist: The derivation is pointwise before integration, uses no limiting argument, and preserves signed versus squared moments. Conditioning on a random amplitude is legal because the amplitude is independent of \(U\) and bounded.
- Local adversarial test: At \(f=1\), only \(u\in(0,1]\) contributes; at \(f=-1\), only \(u\in(-1,0]\) contributes with sign minus; and at \(f=0\), both query and baseline indicators agree for every \(u\). All three produce the claimed first and second moments.
- Contribution to target step: It supplies the exact \(1/2\) dither factor used in the coefficient ledger and the square identity exported to the later variance step.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The lemma isolates the exact same-color mask projection required by the sketch: target self-correlation retains the target amplitude and every non-target alias has zero mean. It covers the countable family of possible cells without claiming simultaneous concentration or a cellwise event.
- Proof validity: Conditioning first on the complete mask family makes the dither identity applicable. Accepted same-color disjointness leaves at most one active index \(q\) at the fixed \(x\), so the remaining mask expectation is the single cross moment \(\mathbb E[\rho_{j_\star}\rho_q]={\bf1}\{q=j_\star\}\). The target case uses \(\rho_{j_\star}^2=1\); an active alias uses two distinct independent centered masks and vanishes.
- Cited-result and assumption audit: The lemma restates and uses the exact accepted step_002 support and boundedness interfaces. Assumption~\(\ref{assump:independent-samples}\) supplies independence of the countable Rademacher coordinates and the dither. No source theorem, localization event, or unproved selected-cell property is used.
- Rigor checklist: The active index is fixed by \(x\) and the deterministic ring family, not by the masks. Because there is zero or one active summand, the proof never exchanges an infinite series with expectation, invokes absolute summability, or takes a union bound over cells.
- Local adversarial test: No active ring gives zero on both sides; an active target gives exactly \(a_{j_\star}(x)/2\); an active nearest or arbitrarily distant same-color alias gives zero; and amplitudes \(0,\pm3/4,\pm1\) remain within the dither lemma's domain.
- Contribution to target step: It removes all alias bias while preserving the exact target coordinate or mass amplitude used by the per-level inversion.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: The proposition proves the exact level-zero and higher-level contributions in the accepted row for every fixed decoder value \(c\) independent of refinement and every \(x\in\mathbb R\). It uses the prescribed \(W_i(c)\) without changing its branch, type, or centering conventions.
- Proof validity: At level zero,
  \[
  p_0\cdot\frac14\cdot\frac{16h_0}{p_0}\cdot
  \frac{x-m_0}{4h_0}=x-m_0.
  \]
  At \(s\geq1\), the coordinate ledger is
  \[
  p_s\cdot\frac14\cdot\frac12\cdot\frac12\cdot
  \frac{16}{p_s}\cdot4h_s\cdot\frac{x-m_s}{4h_s}=x-m_s,
  \]
  and the mass ledger is
  \[
  p_s\cdot\frac14\cdot\frac12\cdot\frac12\cdot
  \frac{16}{p_s}\cdot2d_s\cdot\frac12=d_s.
  \]
  These factors account exactly for level, color, branch, type, dither, and coordinate normalization. The accepted identity \(d_s=m_s-m_0\) then gives \(x-m_0\).
- Cited-result and assumption audit: The current accepted step_001 Unit attempt 2 pair supplies the independent refinement product kernel. The current accepted step_002 Unit attempt 1 pair supplies the path, displacement, bounded query, and unique same-color activity interfaces. Both dependency hashes match their accepted review identities. The proposition uses no localization-success or recentered-moment output.
- Rigor checklist: Conditioning on \(c\) leaves all refinement probabilities unchanged; conditioning further on \(X_i=x\) leaves the seed product law unchanged. Level zero correctly has no branch or type variable. Higher levels treat coordinate and mass as mutually exclusive type contributions. The cases \(d_s=0\), inactive target, active alias, half-open boundaries, and negative target indices are covered.
- Local adversarial test: Freezing \(c\) at a localization-failure output changes only deterministic decoder coefficients and path labels, not the seed law. An active alias contributes zero before any importance coefficient is applied. At \(d_s=0\), the mass term vanishes identically and the coordinate term still gives the complete target residual.
- Contribution to target step: It proves the exact coefficient ledger and exports \(K_s(x,c)=(x-m_0){\bf1}_{R_s(c)}(x)\) with zero alias mean at every level.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The proposition combines the per-level outputs into the exact pointwise conditional mean, identifies the sole outer residual, and proves both inherited baselines. It neither conditions on localization success nor upgrades the probability mode to one conditional on frozen refinement public seeds.
- Proof validity: The level events form a finite partition, so summing the accepted \(K_s\) identities and applying the accepted target-ring indicator telescope gives
  \[
  \mathbb E[W_i(c)\mid X_i=x,c]
  =(x-m_0){\bf1}_{J_{S,j_S}}(x)
  \]
  pointwise, including ring endpoints. The independent product kernel then integrates this version against \(D\). The ambient setting gives a finite mean, so \(X-m_0\) is integrable for every fixed \(c\), and splitting its integral over \(J_{S,j_S}\) and its complement yields the exact residual identity.
- Cited-result and assumption audit: Proposition~\(\ref{prop:step-001-independence}\) supplies independence after conditioning only on localization; Proposition~\(\ref{prop:step-002-partition}\) supplies the finite target telescope; and Lemma~\(\ref{lem:step-002-color}\) supplies exact baseline inactivity. The accepted displacement bound also gives a uniform finite bound on \(W_i(c)\): level zero is bounded by \(16h_0/p_0\), while at \(s\geq1\) it is bounded by \(64h_s/p_s\). Hence all conditional expectations are integrable, including before fixing \(c\).
- Rigor checklist: The proof uses a pointwise product-kernel version rather than treating conditioning on \(X_i=x\) as a positive-probability event. It averages over levels, colors, branches, types, masks, and dithers after conditioning on localization alone. The ring sum is finite, the residual split is between measurable complementary sets, and no expectation, infinite series, or limit is interchanged illegally.
- Local adversarial test: On \(D(J_{0,j_0})=1\), every retained higher target or alias ring is inactive, so higher corrections are pointwise zero and the outer residual vanishes exactly. On \(D\{m_0\}=1\), the retained level-zero amplitude is zero and all retained higher rings are inactive, giving \(W_i(c)=0\) for every refinement seed realization. Outside all target rings, both sides of the pointwise mean identity are zero.
- Contribution to target step: It exports the exact truncated mean \(\theta(c)\), the target-ring telescope, the sole outer residual, and the supported-\(J_0\)/point-mass baseline interfaces required downstream.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

The dither endpoint calculation, conditional random-amplitude version, target-mask projection, alias cross moment, no-infinite-sum argument, complete coefficient ledger, pointwise conditioning kernel, integrability, finite level telescope, tower step, outer integral split, and both baseline reductions all appear in the four mapped units and their matching derivations. Random decoder indices are measurable countable-valued functions of the accepted Borel path, and selecting the corresponding mask coordinate is measurable on the countable product space; this is an atomic consequence of the accepted interfaces, not an unproved generated condition. No global diagnostic, subsection title, bare unit ID, cellwise event, or frozen-seed statement is used as proof authority.

## Target Claim Audit

The frozen proof establishes the exact accepted step_003 claim for every decoder output, including localization failure. It proves both dither identities, cancels every same-color alias, verifies every level/color/branch/type/dither coefficient, derives the pointwise conditional mean, and leaves exactly the named outer residual. The claim remains under the joint sample-and-protocol law after conditioning only on the independent localization output; it does not assert a common conditional mean for a frozen realization of the refinement masks or other public seeds. There is no population narrowing, selected-cell assumption, localization-success assumption, quantifier drift, probability-mode upgrade, or hidden moment bound.

## Explicit Rate Audit

None.

## Notation Surface Audit

The sole new public-facing object is \(\theta(c)\), exactly the scalar consumed by the tail and concentration steps. The dither difference, generic ring family and amplitudes, target index, masked section, and \(K_s\) are correctly classified as proof-local and eliminated from the exported formula. All probabilities and coefficients come directly from setting-defined objects, and no helper constant, threshold, event, or notation dictionary hides a boundedness, integrability, or conditioning obligation.

## Target-Step Assembly Audit

The assembly cites all four local results by theorem-style names and stable labels. Lemma~\(\ref{lem:step-003-dither}\) supplies the two dither moments; Lemma~\(\ref{lem:step-003-mask-projection}\) supplies target retention and alias cancellation; Proposition~\(\ref{prop:step-003-level-inversion}\) supplies the exact per-level means; and Proposition~\(\ref{prop:step-003-telescope}\) combines them with the accepted finite partition and independent product kernel. These conclusions jointly imply every clause of the binding sketch row, including the exact residual and both baselines, with no additional lemma or changed dependency interface.

## Review Rationale

The current dependency pairs are accepted and hash-matched, and the reviewed Unit attempt 1 proof matches its frozen SHA-256 identity. All four local units are mathematically complete and structurally compliant: dither endpoints are exact, alias cancellation is pointwise and avoids an infinite-series interchange, the importance ledger closes coefficient by coefficient, conditioning and integrability are valid under the joint protocol law, the finite target rings telescope exactly, and the supported-\(J_0\) and point-mass reductions leave no artificial residual. No producer rerun is required.
