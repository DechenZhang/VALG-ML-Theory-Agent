# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_3/proof_steps/step_002/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: One-step closed-ball recurrence

- Statement fidelity: The lemma states exactly the local interface required by the accepted step_002 sketch row. It is conditional only on the current generated state satisfying \(D_t\le r\), fixes an initialization in the static event, and quantifies over an arbitrary deterministic labeled history and every \(0\le t<T\). It exports the setting-defined gradient envelope and the recurrence \(D_{t+1}\le D_t+\eta G_r(\theta^{(0)})\), rather than assuming a trajectory-wide bound.
- Proof validity: The implication \(D_t\le r\Rightarrow\theta^{(t)}\in B_\infty(\theta^{(0)},r)\) uses the same center, radius, and coordinate norm as the setting. The input and label at time \(t\) are in the exact domain of the supremum defining \(G_r\), so the selected gradient, including every ReLU kink convention, has norm at most \(G\). Applying the exact update and the coordinate-sup triangle inequality gives (6), with the correct minus sign and factor \(\eta>0\). The argument explicitly permits \(D_t=r\), so no open-ball or strict-margin assumption is introduced.
- Cited-result and assumption audit: The only dependency is the independently accepted step_001 proposition, whose current-notation conclusion is restated as finiteness and exact-domain control of \(G_r\). The robust-tube assumption contributes the static radius and event context; its probability and \(M_r>0\) clauses are not used. Event membership is a local conditional premise of this target step, not a generated trajectory invariant asserted as primitive. No external citation or unverified result is used.
- Rigor checklist: The recurrence applies only for \(t<T\), exactly the range for which a next state exists. The norm is the full vectorized coordinate sup norm used by both the update and \(G_r\). Arbitrary labels and arbitrary update signs are covered by the absolute norm bound; no descent or cancellation is smuggled in. Finiteness of \(G\) is supplied before the supremum is consumed, and the closed-ball boundary is included.
- Local adversarial test: At \(D_t=r\), the supremum remains legal and the bound still permits an outward increment; with \(G=0\), the recurrence is stationary; with a zero individual gradient it is nonexpansive; and with every coordinate pointing outward it charges the full \(\eta G\). Width-one layers, \(L=1\), kink values of \(\kappa\), and arbitrary histories do not alter the argument.
- Contribution to target step: This unit supplies the sole one-step control used by the induction and does so only after current membership has been established.
- Verdict: PASS
- Repair direction: None.

### unit_002: All-history closed-tube containment

- Statement fidelity: The invariant has the exact target quantifiers: every initialization in \(E_r\), every length-\(T\) labeled history, and every state index \(0\le t\le T\), with the claimed bound \(D_t\le t\eta G_r(\theta^{(0)})\le r\). It names the accepted dependency and the one-step lemma and does not strengthen the theorem to an unconditional or probabilistic trajectory claim.
- Proof validity: The event supplies only the scalar budget \(\eta T G\le r\); the proof does not treat it as containment. The base case \(D_0=0\) is explicit. For an induction index \(t<T\), (11)--(12) first derive \(D_t\le r\), after which Lemma~\ref{lem:p1-i3-step002-one-step} may invoke the ball supremum. The recurrence yields \(D_{t+1}\le(t+1)\eta G\), and \(t+1\le T\) gives the terminal radius bound. Thus the use of \(G_r\) is noncircular and the induction closes through the state \(T\).
- Cited-result and assumption audit: The accepted step_001 conclusion is used only for finite exact \(G_r\), and its proposition is restated with its object/domain mapping. Assumption assump:robust-tube is used as a local conditional event (\(\theta^{(0)}\in E_r\)) and only its defining budget is extracted; the event probability and margin are deferred to later steps. The finite-induction fact and norm axioms are elementary and instantiated in current notation. No generated membership fact is imported from the setting or from the dependency.
- Rigor checklist: The proof keeps the update indexing \(t=0,\ldots,T-1\) and the conclusion indexing \(t=0,\ldots,T\) distinct. It uses \(G\ge0\) and \(\eta>0\) to compare \(t\eta G\) with \(T\eta G\), handles \(T=1\) explicitly, and allows equality \(T\eta G=r\) because \(B_\infty\) is closed. The all-history statement is obtained by fixing arbitrary deterministic data and labels, so no hidden almost-sure or target-consistency restriction appears.
- Local adversarial test: Maximal outward updates attain the additive budget without breaking closure; \(G=0\) keeps every state at initialization; a vanishing current gradient is harmless; and the first update satisfies \(D_1\le\eta G\le r\). The argument remains valid for \(L=1\), where the accepted dependency supplies \(G_r\le1\), and for arbitrary kink selections because no continuity or gate stability is used.
- Contribution to target step: The invariant proves the complete all-history tube-membership interface consumed by gate stability and subsequent path expansion, with no circular containment premise.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim is present. The equivalence between \(D_t\le r\) and membership in the closed ball, the exact current-gradient supremum application, the norm recurrence, the event-budget comparison, the base case, and the finite induction are all represented by the two mapped theorem-style units. The existence of each history-driven state follows directly from the displayed exact update and is not used as an extra assumption. Local unit IDs are audit handles only; the mathematical authorities are Lemma~\ref{lem:p1-i3-step002-one-step}, Invariant~\ref{inv:p1-i3-step002-closed-tube}, and the accepted dependency proposition.

## Target Claim Audit

The proof establishes, deterministically conditional on each fixed \(\theta^{(0)}\in E_r\), for every labeled history in \((\mathcal X\times\{-1,+1\})^T\),
\[
\|\theta^{(t)}-\theta^{(0)}\|_\infty
\le t\eta G_r(\theta^{(0)})\le r,
\qquad 0\le t\le T.
\]
The event is used only as a local conditional hypothesis, while trajectory membership is proved. The exact coordinate norm, fixed finite horizon, all-history scope, and terminal endpoint match the sketch row and setting; no probability, expectation, gate-stability, or representation conclusion is claimed prematurely.

## Explicit Rate Audit

The step is rate-bearing through RO-1. Exposed quantities are \(t,T,\eta,r\), and \(G_r(\theta^{(0)})\), with architecture and initialization dependence carried explicitly by the setting-defined \(G_r\). There are no hidden constants, and none may depend on the architecture, history, initialization, horizon, stepsize, radius, selector, or target parameters. The statement is deterministic conditional on \(E_r\), uniform over the fixed finite state horizon \(0,\ldots,T\), and uses the coordinate sup norm. The only admissibility relation is the primitive event budget \(T\eta G_r\le r\); no term is dropped or absorbed, and no probability conversion or public-rate specialization is attempted here. The \(T=1\), \(G_r=0\), and \(L=1\) baseline reductions are preserved exactly.

## Notation Surface Audit

The setting-defined \(G_r\) and the tube inequality are the only public-facing outputs. \(D_t\) and the arbitrary history \(\omega\) are appendix-local abbreviations for generated objects, while \(g_t\) and \(G\) are proof-local aliases; all are explicitly defined and introduce no new assumptions or constants. The proof does not export event membership, a gate condition, or a hidden stability radius as primitive notation. The accepted dependency's \(G_r\) interface is used without notation drift.

## Target-Step Assembly Audit

The accepted step_001 proposition supplies finite control of the exact gradient on the same closed ball. Lemma~\ref{lem:p1-i3-step002-one-step} uses that control only after proving current membership, and Invariant~\ref{inv:p1-i3-step002-closed-tube} applies the recurrence from \(D_0=0\) under the event budget through \(t=T\). These named results jointly imply the exact sketch-row claim for every initialization in \(E_r\) and every labeled history. No missing bridge, dependency, or changed target is required.

## Review Rationale

Both local units pass the dependency, provenance, and line-by-line rigor checks. The proof cleanly separates the static event budget from the generated trajectory invariant: current membership is established before the ball supremum is used, and the one-step recurrence then proves the next membership. Signs, norms, update and horizon endpoints, terminal equality, arbitrary-history quantifiers, zero-gradient behavior, and the gate-free \(L=1\) case are all handled without extra assumptions. The exact step claim is therefore certified with the smallest retry target None.
