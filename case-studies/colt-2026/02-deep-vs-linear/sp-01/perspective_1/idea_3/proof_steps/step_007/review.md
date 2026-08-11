# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_007/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Polynomial path-count bound

- Statement fidelity: The lemma proves exactly the deterministic part of the sketch-row claim, namely (d_{\rm path}\le S^L\le S^{L_0}), under the positive-width setting definitions and `assump:constant-depth`. It does not alter the feature dimension or introduce a stronger architectural restriction.
- Proof validity: For each (j\in\{0,\ldots,L-1\}), positivity of (n_{j+1}) gives (n_j\le n_{j+1}n_j), and that factor is one summand of (S), so (n_j\le S). Multiplication over exactly the (L) factors of (d_{\rm path}) gives (d_{\rm path}\le S^L). Every summand of (S) is a positive integer, hence (S\ge1); with (L\le L_0), (S^{L_0}=S^LS^{L_0-L}\ge S^L). The proof also correctly uses (n_L=1) for the (L=1) equality case.
- Cited-result and assumption audit: No external theorem is used. The width positivity, (n_L=1), path-count definition, parameter-count definition, and (L\le L_0) are all supplied by the setting and `assump:constant-depth`; the exponent comparison is derived rather than assumed.
- Rigor checklist: The factor indexing includes the terminal pair (n_Ln_{L-1}), so no path coordinate is omitted. The multiplication direction is valid because all factors are positive. The argument does not require (S>1), divide by \(\varepsilon\), or hide a width-dependent constant. The stated (L=1) and (S=1) reductions are algebraically correct.
- Local adversarial test: At (L=1), (n_1=1), (S=n_0=d_{\rm path}), and (d_{\rm path}=S^L). If (S=1), positivity forces (L=1) and (n_0=1), so all three quantities are one. For (L=L_0), the second inequality is equality; for (S>1), it has the expected monotone direction.
- Contribution to target step: Supplies the exact polynomial dimension bound used in the final assembly.
- Verdict: PASS
- Repair direction: None.

### unit_002: Public error-threshold specialization

- Statement fidelity: The proposition preserves the exact step-006 witness and proves only the advertised specialization: the same initialization-gate law is admissible at threshold (2\varepsilon), and (\operatorname{dc}_{2\varepsilon}(\mathcal H)\le\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}). Its assumptions and the accepted step-006 dependency are explicit.
- Proof validity: `assump:robust-tube` gives (0\le\delta_0\le\varepsilon), hence (\varepsilon+\delta_0\le2\varepsilon). The proof applies the accepted step-006 bound under the unchanged law (\mathcal P_{\rm gate}), then uses the definition-level inclusion of admissible witnesses at a smaller error threshold into those at a larger threshold. The inequality direction (\operatorname{dc}_{2\varepsilon}\le\operatorname{dc}_{\varepsilon+\delta_0}) is therefore correct, and nonemptiness at the smaller threshold is supplied by step 6.
- Cited-result and assumption audit: Proposition~\ref{prop:p1-i3-step006-dc-witness} is identified in current notation and its attempt-1 proof/review pair is accepted. The only new scalar premise is the primitive (\delta_0\le\varepsilon); no event, trajectory, or optimizer fact is reintroduced. The direct monotonicity fact is restated before use rather than cited by name alone.
- Rigor checklist: The same feature-map law, dimension, quantifier order, tie-resolved risk, expected mode, and finite-horizon scope are retained. The proof handles the possibility that a minimum is meaningful only after the step-006 witness establishes nonempty admissibility. No illegal probability conversion or conditioning occurs, and no threshold inequality is reversed.
- Local adversarial test: If (\delta_0=\varepsilon), the two thresholds coincide. If (\delta_0=0), the step-006 (\varepsilon)-witness is still valid and is merely reused at (2\varepsilon). If (\varepsilon=0), then (\delta_0=0), both thresholds are exactly zero, and no division or strict positivity is used. These cases include their intersection and preserve the same law.
- Contribution to target step: Supplies the public (2\varepsilon) corollary and its correct monotonicity direction.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is omitted from the local lemma map. Unit 001 contains both factorwise comparisons and the exponent comparison, including the (S\ge1) prerequisite. Unit 002 explicitly states and proves threshold inclusion, nonemptiness of the stricter admissible set via step 6, and reuse of the fixed law. The target assembly uses only these named units and the accepted step-006 proposition; it does not rely on subsection names, bare unit IDs, a global diagnostic, or an unstated optimizer.

## Target Claim Audit

The proof establishes the exact sketch target under the unchanged conditional theorem contract:

\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}
\le S^L
\le S^{L_0},
\qquad
\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
\]

The dependency proposition supplies one law (\mathcal P_{\rm gate}) fixed before the arbitrary pair \((\mathcal D,h)\), with expected best-linear risk at most (\varepsilon+\delta_0). Unit 001 changes only the deterministic dimension bound. Unit 002 enlarges only the permitted error threshold and leaves the law, feature dimension, quantifiers, risk metric, and expectation mode unchanged. All parameter dependence and the conditional progress label are preserved; no unconditional or deterministic source-level claim is inferred.

## Explicit Rate Audit

The step is rate-bearing under RO-2. Exposed quantities are (d_{\rm path},S,L,L_0,\varepsilon,\delta_0), together with the inherited fixed architecture, horizon, initialization law, and protocol conventions. There are no hidden constants: the exponent (L_0) is explicitly declared universal in `assump:constant-depth`. Fixed quantities remain fixed before arbitrary \((\mathcal D,h)\); the probability mode remains expected tie-resolved risk under the unconditional (\mathcal P_{\rm gate}\); and the horizon mode remains fixed finite (T). The norm/metric is unchanged (feature dimension and tie-resolved 0-1 risk). Every simplification is displayed:

\[
n_j\le n_{j+1}n_j\le S,
\quad d_{\rm path}\le S^L,
\quad S^{L_0}=S^LS^{L_0-L}\ge S^L,
\quad \varepsilon+\delta_0\le2\varepsilon.
\]

The step provides the complete RO-2 specialization bridge: auxiliary conditions are positive widths, (1\le L\le L_0), and (0\le\delta_0\le\varepsilon); technical conditions are checked; no terms are silently absorbed; and no probability or horizon upgrade is claimed. Baseline reductions at (L=1), (S=1), \(\delta_0=0\), \(\delta_0=\varepsilon\), and \(\varepsilon=0\) are explicit and preserve the original conclusions.

## Notation Surface Audit

The public-facing objects are exactly (d_{\rm path}), (S^{L_0}), (\mathcal P_{\rm gate}), and the two thresholded dimension bounds. The factors (n_{j+1}n_j) and (L_0-L) are proof-local expressions. No unnecessary helper dictionary, transformed feature object, new constant, or hidden rate parameter is exported; all symbols inherit their setting or accepted-dependency definitions.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:p1-i3-step006-dc-witness} gives \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\) with the exact unconditional feature-law witness. Lemma~\ref{lem:p1-i3-step007-path-count} gives \(d_{\rm path}\le S^L\le S^{L_0}\). Proposition~\ref{prop:p1-i3-step007-public-specialization} gives the same-law threshold inclusion and hence \(\operatorname{dc}_{2\varepsilon}(\mathcal H)\le d_{\rm path}\le S^{L_0}\). These named results jointly imply the exact target with no missing bridge or dependency.

## Review Rationale

Both local units pass the required statement, dependency, assumption-provenance, algebra, quantifier, explicit-rate, notation, and boundary audits. The path-count proof is factor-by-factor and remains valid at \(L=1\) and \(S=1\). The threshold proof has the correct direction, explicitly verifies \(\varepsilon+\delta_0\le2\varepsilon\), and reuses the same law rather than selecting a target-dependent witness. The \(\varepsilon=0\), \(\delta_0=0\), and \(\delta_0=\varepsilon\) limits preserve the exact zero or coincident thresholds. Since the accepted step-006 dependency is current and all obligations are local to this unchanged sketch row, `ACCEPTED` with `Smallest Retry Target = None` is the smallest correct disposition.
