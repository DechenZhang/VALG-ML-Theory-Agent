# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_012`
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: `perspective_2/idea_4/proof_steps/step_012/proof.md`
- Reviewed proof SHA-256: `d8606bac937e01dc07248f136ffdd13a6cbf7b27ceb0475f58261a651e7b25fa`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_006`: `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b` / `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`
  - `step_008`: `903a01997fa392c2bea106d595045fe911199e00b83bbda495595977ec3d7760` / `cbc3341a08b03254c6a482c7416d630d05d42e2d5b9d09832bf9f58c5973b50b`
  - `step_010`: `117f4a769b754335bafb792f0390fbae81beaf8967d93fb9aa89f3dafd0b1925` / `ac0b37a40b9d38d6c49c5ffc5e5e91dec51b2f264eed56c9e03da84c6b6897e3`
- Independently checked primary source: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex`, SHA-256 `b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-selected-leaf} recovers exactly the actual selected current-list item required by the sketch row. It preserves the pointwise identity \(\bar H=\operatorname{SOA}_{\mathcal G}\), the nonempty leaf inclusion \(\mathcal G\subseteq H_i^{\widehat r}\subseteq\bar C\), the full scale \(p_{\widehat r}2^{d-t}\), and the current/source identities \(H_i^{\widehat r}=H_{i,\mathrm{src}}^{\widehat r+1}\) and \(p_{\widehat r}=p_{\widehat r+1,\mathrm{src}}/2\). It does not relabel the current list as a literal source-stage list.
- Proof validity: Accepted Step 010 supplies actual-status membership in \(\mathcal L_i^{\widehat r}\). The accepted piecewise list definition therefore forces the outer restriction to be nonempty and makes \(\bar H\) genuinely essential. Accepted Proposition~\ref{prop:step-008-leaf-scale} then gives, in every optimal decomposition, the maximal leaf, exact SOA identity, and scale. Since \(p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}\), the accepted monotonicity argument gives both required irreducibility levels.
- Cited-result and assumption audit: Assumption~\ref{assump:finite-littlestone} is primitive. Actual status, list membership, leaf identity, and scale are accepted derived outputs, while membership in \(E_{\mathrm{core}}\) is only a local conditional hypothesis. The source/current endpoint and half-scale conventions match accepted Step 008 exactly.
- Rigor checklist: The quantifier over every optimal decomposition is retained, with a leaf allowed to depend on the chosen decomposition. The proof distinguishes \(\widehat r<d\), where a next-current factor-two pair exists, from \(\widehat r=d\), where no current stage \(d+1\) is introduced. Nonempty-list status excludes evaluating DDim or SOA on an empty class.
- Local adversarial test: At \(\widehat r=0\), the parameter is \(p_0=n_0d=p_{1,\mathrm{src}}/2\); at \(\widehat r=d\), the class is the explicit source endpoint and no further transition is used. If the actual categorical value equals \(\bar c_0\), transcript status still supplies the same list and leaf. DDim-zero leaves remain nonempty and retain the full scale.
- Contribution to target step: It supplies the literal actual-function SOA identity, same-object leaf, exact stage map, and the \(n_0\)- and \((d+1)\)-irreducibility interfaces used by Units 2-4.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-012-leaf-error} proves exactly that every actual \(g\in\mathcal G\) has full-master empirical error at most \(2\gamma\). It deliberately does not apply \(E_{\mathrm{good}}\) to the potentially improper output \(\bar H\).
- Proof validity: Membership \(g\in\mathcal G\subseteq H_i^{\widehat r}\) gives \(e_i(g)\le\rho^{\widehat r+1}\gamma\le\gamma\). In the low branch, \(e_{\bar S}(g)\le\gamma/3\). In the high branch, the lower relative-deviation inequality gives \((1-a_d)e_{\bar S}(g)\le e_i(g)\), hence \(e_{\bar S}(g)\le\gamma/(1-a_d)\le(5/4)\gamma\le2\gamma\). The two branches are exhaustive and keep equality at \(\gamma/3\) in the low branch.
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-006-good-event} is used only for the same actual function \(g\in\bar C\), with the same indexed master and block empirical metrics. The selected leaf and block threshold are supplied by Unit 1. No trace representative, improper-output event, or new confidence premise is introduced.
- Rigor checklist: All denominators are positive for \(d\ge1\), the inequality directions are correct, and the argument is uniform over all leaf members and both endpoint stages. It is deterministic on the fixed path and uses no union, independence, or probability conversion.
- Local adversarial test: Master error exactly \(\gamma/3\), block error zero, repeated sample points, and a leaf containing hypotheses with duplicate empirical traces all satisfy the same two-branch argument. The proof remains valid when \(d=1\), where \(a_d=1/5\).
- Contribution to target step: It supplies the all-leaf-member premise required by the indexed irreducibility contradiction.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-012-empirical} establishes the exact full-master target \(e_{\bar S}(\bar H)\le2\gamma=\alpha/8\), with normalization \(1/n_0\), on the unchanged conditional path. It imports no privacy, population-risk, PAC, or source amplification conclusion.
- Proof validity: If \(e_{\bar S}(\bar H)>2\gamma\), any \(g\in\mathcal G\) agreeing with \(\bar H\) on all indexed master inputs has identical error indicators and therefore the same error, contradicting Unit 2. Thus the restriction of \(\mathcal G\) along the complete \(\bar H\)-labeled sequence is empty. Unit 1 gives \(\bar H=\operatorname{SOA}_{\mathcal G}\) pointwise and \(n_0\)-irreducibility, so the fixed-label irreducibility definition forces that restriction to have the same nonnegative Littlestone dimension as the nonempty leaf. This is the required contradiction.
- Cited-result and assumption audit: The frozen source's Definition of irreducibility labels every point by the fixed function \(\operatorname{SOA}_{\mathcal G}\), exactly as used here. The proof of Lyu Theorem 3 contains this same empty-restriction argument. The malformed theorem-statement expression and its unsupported probability-one amplification sentence are not consumed; the current proof reproduces the deterministic argument in full.
- Rigor checklist: The contradiction starts from strict \(>2\gamma\), so equality at \(\alpha/8\) is correctly allowed. Nonemptiness and \(t\ge0\) come from the actual leaf. No illegal probability conditioning or mode upgrade occurs.
- Local adversarial test: Repeated quotient inputs and repeated labeled records remain separate indices. The source definition permits repeated points in its length-\(n_0\) sequence, and pointwise SOA identity gives coordinatewise equality for every repeat, including conflicting repeated labels. The argument also works at \(t=0\): the nonempty leaf has a depth-zero witness, whereas the empty restriction does not.
- Contribution to target step: It proves the exact \(\alpha/8\) internal accuracy certificate consumed by Step 013.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-fixed-family} defines the required family solely from the static class \(\bar C\) and \(d\), proves literal membership of the same selected function, and proves \(\operatorname{LD}(\widehat C_{d+1})\le d\). The family is sample-independent and may be improper.
- Proof validity: Unit 1 supplies a nonempty \((d+1)\)-irreducible \(\mathcal G\subseteq\bar C\) and exact equality \(\bar H=\operatorname{SOA}_{\mathcal G}\), proving membership directly. Accepted Step 008 supplies \(\operatorname{LD}(\bar C)\le d\). Lyu Lemma 4.2 then applies with \(\mathcal H=\bar C\) and yields exactly the displayed Littlestone-dimension conclusion.
- Cited-result and assumption audit: The frozen Lemma 4.2 defines the same family of SOAs of \((d+1)\)-irreducible subclasses and concludes only its Littlestone bound. Adding explicit nonemptiness merely makes the source's SOA expression well-defined. No measurability, properness, empirical-risk, population-risk, or privacy property is attributed to the lemma.
- Rigor checklist: The produced object and consumed family element are the identical function on all of \(Q_C\); there is no trace, restriction, transformed-object, or sample-dependent residual. The family is a subset of \(H_C\), not asserted to be a subset of \(\bar C\).
- Local adversarial test: Infinite \(\bar C\), an improper SOA, a DDim-zero selected leaf, and duplicate candidate occurrences do not alter the static family definition or source hypothesis discharge.
- Contribution to target step: It supplies the fixed improper SOA-family membership and its \(\operatorname{LD}\le d\) structural certificate.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-012-boundaries} specializes the preceding named results without strengthening them. It preserves endpoint stages, \(d=1\), \(v=1\), \(v=d\), DDim zero, duplicate lists/candidates, indexed repeats, actual-versus-fallback status, equality at \(\alpha/8\), and improperness.
- Proof validity: Each item is a direct substitution into Units 1, 3, or 4 or an accepted Step 010 status conclusion. The source event controls errors, while the mechanism event controls actual status; the proof never exchanges these roles. Duplicate encodings affect neither set membership nor pointwise identity, and repeated records retain the full \(n_0\)-term normalization.
- Cited-result and assumption audit: No new external result or assumption is introduced. All generated objects have accepted producers, and \(E_{\mathrm{core}}\) remains only proof-local shorthand for their joint conditional path.
- Rigor checklist: The \(d=0\) case is correctly outside the positive-branch claim: it uses the exact no-data singleton learner and has no selected source list to certify. At \(d=1\), both stages and both irreducibility scales are legal. The derivation contains no occurrence of \(v\), so \(v=1\) and \(v=d\) add no hidden power or restriction.
- Local adversarial test: The formal \(k=2\) dictionary causes no division or loss in this step, and \(n_0=2m\) still gives the displayed scale; accepted Step 010 additionally proves that the calibrated least-feasible teacher cannot actually equal two. Singleton lists, the same function in several lists, actual selection of \(\bar c_0\), fallback with the same value, and selection at stages zero or \(d\) all preserve the status-sensitive conclusions.
- Contribution to target step: It closes the required degenerate, endpoint, normalization, multiplicity, status, and no-overclaim checks.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is absent from the five-unit map. Actual selected-leaf recovery and source/current translation are in Unit 1; transfer of the block threshold to every actual leaf member is in Unit 2; the full indexed irreducibility contradiction is in Unit 3; the static-family source application is in Unit 4; and all status, endpoint, duplication, and degenerate specializations are in Unit 5. The claims that an empty class cannot retain the nonnegative Littlestone dimension of a nonempty leaf and that repeated entries remain legal in a source sequence are definitional checks inside Unit 3, not hidden bridge lemmas.

The proof does not use subsection titles or local unit IDs as mathematical authority. It does not smuggle in actual-output status from \(E_{\mathrm{good}}\), apply that event to the improper SOA, replace functions by empirical traces, or infer privacy, population risk, decoded raw risk, PAC utility, or properness.

## Target Claim Audit

The five units prove the exact accepted `step_012` row on the positive-dimensional joint source/mechanism-good path. The selected object is literally an actual current-list function; its leaf SOA identity holds pointwise on \(Q_C\); the leaf has the exact source-derived scale and is both \(n_0\)- and \((d+1)\)-irreducible; the same object lies in the fixed sample-independent improper family \(\widehat C_{d+1}\), whose Littlestone dimension is at most \(d\); and its indexed full-master empirical error is at most \(\alpha/8\).

The quantifiers, event scope, empirical normalization, and endpoint ranges match the setting and sketch. The \(d=0\) no-data branch bypasses this source certificate, as required. No privacy, unconditional probability, population-risk, raw-risk, PAC, properness, or public-rate conclusion is added.

## Explicit Rate Audit

This step is quantitative only through the exact internal threshold and structural scales. It keeps \(d,v,k,m,n_0,\alpha,\gamma,a_d,\rho,\widehat r,t,p_{\widehat r}\) visible, uses no hidden constant, and proves the displayed inequalities

\[
 \frac{1}{1-a_d}\le\frac54\le2,
 \qquad 2\gamma=\frac{\alpha}{8},
 \qquad p_{\widehat r}2^{d-t}\ge n_0d\ge\max\{n_0,d+1\}.
\]

The probability mode is deterministic conditional on accepted generated events; the horizon is one selected stage and one length-\(n_0\) restriction; and the norm is indexed full-master empirical zero-one error. No confidence share is recharged, no ceiling or term is absorbed, and no sample-complexity or population-risk specialization is claimed. The \(d=0\), \(d=1\), \(v=1\), \(v=d\), and formal \(k=2\) checks preserve the accepted baseline interfaces.

## Notation Surface Audit

The only new appendix-local exported object is the fixed family \(\widehat C_{d+1}\); its definition uses only \(\bar C\) and \(d\). The leaf \(\mathcal G\), dimension \(t\), restricted class \(\mathcal R\), and `E_core` shorthand are proof-local. Inherited events, stages, lists, and scales retain their accepted meanings. Every helper has primitive, accepted-dependency, checked-source, or local-result provenance, and no proof-local dictionary is exported to a public theorem.

## Target-Step Assembly Audit

Accepted Step 010 supplies actual selected-list status. Proposition~\ref{prop:step-012-selected-leaf} combines it with accepted Step 008 to obtain the exact leaf, pointwise SOA identity, half-scale stage map, and both irreducibility levels. Lemma~\ref{lem:step-012-leaf-error} uses accepted Step 006 only on actual leaf members. Lemma~\ref{lem:step-012-empirical} converts those bounds and \(n_0\)-irreducibility into the exact \(\alpha/8\) full-master conclusion. Proposition~\ref{prop:step-012-fixed-family} applies the checked Lemma 4.2 to the same leaf and same function. Proposition~\ref{prop:step-012-boundaries} preserves all required boundary and status cases. These named results jointly imply the exact target with no missing bridge or unreviewed lemma.

## Review Rationale

`ACCEPTED` is the smallest sound status. The target proof, all three accepted dependency proof/review pairs, the binding setting and accepted sketch pair, and the frozen primary source match their pinned hashes. Independent line-by-line and adversarial review validates all five units, the literal actual-function identity, the static improper-family interface, the source Theorem 3 contradiction, Lemma 4.2, the half-scale and endpoint conventions, both irreducibility levels, event/status separation, indexed repetitions, duplicate candidates, all requested boundary regimes, and the strict no-overclaim boundary. No local, dependency, or sketch repair remains.
