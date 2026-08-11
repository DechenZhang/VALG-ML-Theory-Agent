# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_3/proof_steps/step_009/proof.md`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact membership and nonzero raw normal energy

- Statement fidelity: The lemma targets the exact two inputs needed for the sketch-row witness construction: accepted all-branch membership \(\widehat D_0\in\mathscr S_0\) and the raw leverage inequality (LEV). Its conclusion is precisely the positive normal-energy bound needed before normalization, with no transformed target, surrogate span, or strengthened projection claim.
- Proof validity: Accepted Proposition~\ref{prop:step-005-quotient-range} supplies \(\widehat D_0\in\mathscr S_0\) in the unchanged raw coefficient space. The tensors \(e_j\otimes e_j\otimes e_j\) are pairwise Frobenius-orthonormal, so \(\|D_r\|_F^2=r\). Orthogonal Pythagoras then gives
  \[
    \|P_{\mathscr S_0^\perp}D_r\|_F^2
    =r-\|P_{\mathscr S_0}D_r\|_F^2
    \ge r/2.
  \]
  This is valid at equality in (LEV), not only under a strict inequality.
- Cited-result and assumption audit: The exact membership is the accepted output of `step_005`; (LEV) is the accepted raw-target output of Proposition~\ref{prop:step-008-raw-leverage}. The use of \(r\ge1\) is already contained in the setting's sufficiently-large positive integer regime. No generated event is promoted to a primitive assumption and no external theorem is used.
- Rigor checklist: The projection is the orthogonal projection for the exact coefficient Frobenius inner product, \(\mathscr S_0^\perp\) is its exact orthogonal complement, and all squared norms and constants are correct. Since \(r/2>0\) for \(r\ge1\), the denominator in the proposed definition of \(W_0\) is strictly nonzero.
- Local adversarial test: If (LEV) holds with equality, the normal energy is exactly \(r/2>0\). If one supposes the normal projection vanishes, Pythagoras forces \(\|P_{\mathscr S_0}D_r\|_F^2=r\), contradicting (LEV). The smallest case \(r=1\) still leaves normal energy at least \(1/2\).
- Contribution to target step: Supplies the exact same-target membership and excludes the only zero-denominator branch before the witness is normalized.
- Verdict: PASS
- Repair direction: None.

### unit_002: Raw unit normal witness and tangent deficit

- Statement fidelity: The proposition defines exactly
  \[
    W_0=P_{\mathscr S_0^\perp}D_r/
      \|P_{\mathscr S_0^\perp}D_r\|_F
  \]
  and proves the three conditions in the setting-defined event \(\mathcal E_{\rm deficit}\) with the required fixed constant \(\delta_0=1/8\). It neither normalizes nor transforms \(D_r\), \(\widehat D_0\), \(\mathscr S_0\), the witness geometry, or the probability space.
- Proof validity: `unit_001` makes the denominator strictly positive. Direct normalization gives \(\|W_0\|_F=1\), and the numerator lies in \(\mathscr S_0^\perp\), so \(W_0\perp\mathscr S_0\). Exact membership gives \(\langle\widehat D_0,W_0\rangle_F=0\). Self-adjointness and idempotence of the orthogonal projection yield
  \[
    \langle D_r-\widehat D_0,W_0\rangle_F
    =\frac{\langle D_r,P_{\mathscr S_0^\perp}D_r\rangle_F}
      {\|P_{\mathscr S_0^\perp}D_r\|_F}
    =\|P_{\mathscr S_0^\perp}D_r\|_F.
  \]
  The preceding lower bound and \(\|D_r\|_F=\sqrt r\) give
  \(\sqrt{r/2}=(1/\sqrt2)\sqrt r\ge(1/8)\sqrt r
  =\delta_0\|D_r\|_F\). These are exactly the event's witness conditions.
- Cited-result and assumption audit: The proposition uses only the named prior local lemma and the setting definitions. The exact cancellation of \(\widehat D_0\) traces to accepted `step_005`, while the positive normal energy traces to accepted `step_008` through `unit_001`. No independence, auxiliary event, or unstated membership condition is introduced.
- Rigor checklist: Norm, orthogonality, inner-product convention, sign, square root, and constant comparison are all correct. The proof explicitly rules out division by zero and covers equality in (LEV). The displayed deterministic implication \((\mathrm{LEV})\Rightarrow\mathcal E_{\rm deficit}\) gives the complement inclusion \(\mathcal E_{\rm deficit}^c\subseteq(\mathrm{LEV})^c\).
- Local adversarial test: An arbitrarily large \(\widehat D_0\) inside \(\mathscr S_0\) still cancels exactly. At the weakest allowed projection margin, the witness correlation is \(\|D_r\|_F/\sqrt2\), strictly stronger than \(\delta_0\|D_r\|_F\). A hidden zero branch cannot occur because it contradicts `unit_001`.
- Contribution to target step: Constructs the exact raw witness, proves the exact setting event, and transfers the accepted conditional failure bound by deterministic inclusion.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. Orthonormality of the diagonal rank-one tensors, Pythagoras, strict denominator positivity, witness normalization, orthogonality, cancellation of \(\widehat D_0\), the margin comparison, and the event implication are all explicit in the two named units. The probability consequence is the displayed monotonicity implication
\[
  \mathcal E_{\rm deficit}^c
  \subseteq
  \left\{\|P_{\mathscr S_0}D_r\|_F^2>r/2\right\},
\]
so it introduces neither a new event producer nor a separate failure budget.

## Target Claim Audit

The proof establishes exactly the accepted sketch-attempt-10 row. From accepted `step_005` and `step_008`, it constructs the raw \(W_0\), proves \(\|W_0\|_F=1\), \(W_0\perp\mathscr S_0\), and
\[
  \langle D_r-\widehat D_0,W_0\rangle_F
  \ge\delta_0\|D_r\|_F,
  \qquad \delta_0=1/8.
\]
Thus it proves the exact setting event \(\mathcal E_{\rm deficit}\). For every realized factor triple in \(\mathcal E_{\rm cond}\), and in the same sufficiently-large-\(r\) regime as accepted `step_008`, the deterministic complement inclusion inherits conditional failure at most \(r^{-20}\) under the remaining initialization law. No normalized target, transformed span, stronger probability claim, changed conditioning, or hidden zero branch appears.

## Explicit Rate Audit

The exposed quantities are \(r\), \(\delta_0=1/8\), and the inherited conditional failure \(r^{-20}\). There are no hidden constants. The fixed objects for the probability statement are a realized factor triple in \(\mathcal E_{\rm cond}\); probability remains over the same initialization randomness used by accepted `step_008`. The horizon is initialization-only, and the norm is the exact raw coefficient Frobenius norm. The inherited sufficiently-large-\(r\) threshold is unchanged. The only simplification is displayed explicitly:
\[
  \sqrt{r/2}=\frac1{\sqrt2}\sqrt r
  \ge\frac18\sqrt r=\delta_0\|D_r\|_F.
\]
The conditional probability conversion uses event inclusion only, so there is no union bound, independence requirement, or new probability expenditure. At equality in (LEV), the same raw witness has margin \(\|D_r\|_F/\sqrt2\), preserving the baseline raw-target interface.

## Notation Surface Audit

The proof exports only the public-facing witness \(W_0\) and the already setting-defined event \(\mathcal E_{\rm deficit}\). The normal component \(P_{\mathscr S_0^\perp}D_r\) is an economical proof-local expression. The notation \(\mathbb P_{\rm init}(\cdot\mid A,B,C)\) denotes the same conditional initialization law as accepted `step_008` and does not create a new probability space. All other symbols are setting-defined or inherited from accepted dependencies.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-009-normal-energy} combines accepted Proposition~\ref{prop:step-005-quotient-range}, accepted (LEV), \(\|D_r\|_F^2=r\), and Pythagoras to establish a strictly positive raw normal component. Proposition~\ref{prop:step-009-raw-witness} normalizes that component, uses exact membership to cancel \(\widehat D_0\), and proves the precise event margin. The deterministic implication then transfers the accepted conditional \(r^{-20}\) failure bound. These named results and accepted dependencies jointly imply the exact target step without an additional bridge or changed interface.

## Review Rationale

Both local units are exact and contract-valid. The first proves the denominator is positive even at equality in (LEV); the second constructs the unmodified raw witness and matches every clause of \(\mathcal E_{\rm deficit}\). The conditional probability statement is inherited by a deterministic complement inclusion under the unchanged initialization law, so it consumes no additional budget. There is no local proof flaw, dependency flaw, or sketch-interface defect. The controlled result is `ACCEPTED` with `Smallest Retry Target = None`.
