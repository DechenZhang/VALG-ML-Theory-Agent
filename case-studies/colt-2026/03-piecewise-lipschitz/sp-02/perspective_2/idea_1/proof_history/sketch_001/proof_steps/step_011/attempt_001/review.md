# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_011
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_011/proof.md
- Reviewed proof SHA-256: 1f9537c74192da8502346ba12b457ccc9c8545fa8485aea22d234e0d594f59f3

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-shear-certificate} states the exact static specialization required by the accepted row. It names Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, fixes \(0<\delta\leq1\), \(\Theta=[-1,1]\), and the augmented ordering \(0,1,2\), and states \(q=M=m=0\), \(\Delta=1\), \(N=2\), the sole entry \(B_{2,1}=1/\delta\), the closure identity, and the literal certificate before its proof.
- Proof validity: With \(Q_0=0\), \(Q_1=1\), and \(Q_2(\theta)=\theta/\delta\), the chain is empty, the maximum output degree is one, and there are two random-coordinate features. In the declared row-column order,
  \[
  B\widetilde F=(0,0,(1/\delta)F_1)^{\mathsf T}=(0,0,1/\delta)^{\mathsf T}=\widetilde F'.
  \]
  The constant matrix has \(m=0\) and only \(b_{2,1,0}=1/\delta\), so \(T_*^0=1\) removes every \(T\)-dependent term and the defining coefficient sum gives \(\widehat\Lambda_{B,T}=|1/\delta|=1/\delta\).
- Cited-result and assumption audit: The calculation is direct and agrees with accepted Proposition~\ref{prop:step-001-boundary}; it does not infer the certificate from the probability claim. The current `step_001` proof and review hashes are respectively `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11` and `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`, and the review status is `ACCEPTED`. No unlisted dependency is used.
- Rigor checklist: Positivity of \(\delta\) fixes the square-root sign. The literal coefficient ordering prevents a transposed shear. The specialization \(\Theta=[-1,1]\subseteq[-T,T]\) requires a legal \(T\geq1\), while \(m=0\) makes the certificate independent of that envelope. The cases \(q=0\), \(m=0\), \(\delta=1\), and interval endpoints are valid.
- Local adversarial test: Direct multiplication rules out the plausible wrong entries \(B_{1,2}\) and \(B_{2,0}\). At \(\delta=1\) the height is one; as \(\delta\downarrow0\) the literal coefficient retains the required \(1/\delta\) scale. No formal \(T_*\) factor survives.
- Contribution to target step: The lemma proves the exact Pfaffian annotation, derivative closure, anchor, and static scale consumed by the projective and upper-bound units.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-projective-speed} states the exact Euclidean normalized curve, derivative, pointwise speed, ordinary supremum, and active value at \(\theta=0\), under the primitive assumptions and Lemma~\ref{lem:step-011-shear-certificate}. Its parameter coordinate remains the original \(\theta\), as required by the metric-rescaling audit.
- Proof validity: For \(x=\theta/\delta\), direct differentiation gives
  \[
  \gamma_F'(\theta)=\frac{(-x,1)}{\delta(1+x^2)^{3/2}}.
  \]
  Hence
  \[
  \lVert\gamma_F'(\theta)\rVert_2
  =\frac{\sqrt{x^2+1}}{\delta(1+x^2)^{3/2}}
  =\frac1{\delta(1+x^2)}.
  \]
  Since \(1+x^2\geq1\) and \(0\in[-1,1]\), the supremum is exactly \(1/\delta\), attained at \(\theta=0\), where the derivative is \((0,1/\delta)\).
- Cited-result and assumption audit: The derivative equality is proved locally rather than borrowed from `step_001`. Accepted Proposition~\ref{prop:step-001-projective} is used only as a consistency check and upper-interface source. The denominator \(\sqrt{1+x^2}\) is positive without a generated regularity assumption.
- Rigor checklist: Both derivative coordinates include the factor \(1/\delta\); the norm simplification has the correct exponent; the supremum is ordinary rather than essential; and the maximizer lies in the closed interval. The endpoint derivatives are legitimate because the features are defined on the surrounding open domain.
- Local adversarial test: Testing \(x=0\), \(x=1\), \(x=-1\), and \(x=1/\delta\) confirms the maximum occurs only at \(x=0\) and that the speed decreases with \(|x|\). At \(\delta=1\), the maximum remains one.
- Contribution to target step: The lemma independently proves \(\Gamma_{\mathrm{proj}}(F)=\widehat\Lambda_{B,T}=1/\delta\) and verifies that the structural source is active at the interval entry.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-upper-coefficient} states the exact `step_008` specialization for every possibly correlated \(\mu\in\mathcal D_{2,1,1/4}\) and every positive-length interval \(I\subseteq[-1,1]\), followed by the exact homogeneous capacity clause. It does not narrow the theorem to the product law used later for the lower calculation.
- Proof validity: The substitutions are literal:
  \[
  A=(2R)^N\kappa=2^2/4=1,
  \qquad A\sqrt{N/2}=1,
  \qquad \Gamma_{\mathrm{proj}}(F)=\widehat\Lambda_{B,T}=1/\delta.
  \]
  Accepted Propositions~\ref{prop:step-008-homogeneous-rate} and \ref{prop:step-008-pf-capacity} therefore give the interval coefficient and capacity coefficient \(1/\delta\) exactly.
- Cited-result and assumption audit: The current `step_008` proof and review hashes are respectively `63c4257a7ec1db6387c7e7c19d467e15c1cc28999e7bcb2c1bdc93466896d12e` and `3a1ff16fd516bda0277f07543d5230c048a39c88cb3e1bed2017ef9055ba68b9`, and the review status is `ACCEPTED`. The cited propositions have exactly the labels used by this proof and quantify over the arbitrary-correlated-law class. Lemmas~\ref{lem:step-011-shear-certificate} and \ref{lem:step-011-projective-speed} discharge the instance values.
- Rigor checklist: The probability mode is ordinary probability, the interval mode is every positive-length interval, and the norm is the same Euclidean projective norm. There is no confidence parameter, union bound, hidden constant, or interchange of suprema. The capacity clause uses the dependency's already verified defining suprema.
- Local adversarial test: A maximally correlated admissible density, an interval touching either endpoint, and an interval with length tending to zero remain within the dependency theorem. The upper coefficient is unchanged because no product factorization or marginal-density estimate appears.
- Contribution to target step: This proposition supplies the required all-law upper comparison while keeping it logically separate from the one-law exact lower probability.
- Verdict: PASS
- Repair direction: None

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-011-root-wedges} identifies the full coefficient event, not an off-axis proxy. It defines two closed opposite-sign wedges, includes both coefficient axes where relevant, states the off-axis characterization separately, and explicitly identifies the \(\theta=0\) and \(\theta=\epsilon\) endpoint boundaries and the \(\alpha_2=0\) origin.
- Proof validity: With \(u=\theta/\delta\) and \(t=\epsilon/\delta\in(0,1]\), root existence is equivalent to solving \(\alpha_1+\alpha_2u=0\) for some \(u\in[0,t]\). For \(\alpha_2>0\), this is exactly \(-t\alpha_2\leq\alpha_1\leq0\); for \(\alpha_2<0\), it is exactly \(0\leq\alpha_1\leq-t\alpha_2\); and for \(\alpha_2=0\), it holds exactly at \(\alpha_1=0\). These exhaustive cases prove equality with the union of the two closed wedges.
- Cited-result and assumption audit: The event identity is direct scalar algebra under the displayed specialization; no area formula, transversality theorem, independence assumption, or accepted probability bound is used. The conditions \(0<\epsilon\leq\delta\leq1\) are primitive static restrictions from the accepted counterexample clause.
- Rigor checklist: Because \(t\leq1\), the sloping bounds stay inside \([-1,1]^2\). The vertical axis \(\alpha_1=0\) gives a root at \(u=0\); the horizontal coefficient axis \(\alpha_2=0\) contributes only the origin, where the function vanishes identically; and the equalities \(|\alpha_1|=t|\alpha_2|\) give \(u=t\). Both signs and all equality cases are retained.
- Local adversarial test: The points \((0,1)\), \((0,-1)\), \((-t,1)\), \((t,-1)\), \((0,0)\), and off-wedge same-sign points give exactly the asserted endpoint, persistent, or no-root behavior. At \(t=1\), neither wedge exits the square.
- Contribution to target step: The lemma provides the exact measurable root event whose full area, including endpoint-root boundaries, is evaluated in the next unit.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-wedge-probability} selects independence only for the source-specified uniform product law and states both the total planar area \(\epsilon/\delta\) and the exact root probability \(\epsilon/(4\delta)\) for every accepted \(\epsilon,\delta\).
- Proof validity: At \(\alpha_2=s\in[0,1]\), the positive wedge has slice length \(ts\), so its area is \(\int_0^1ts\,ds=t/2\). The negative wedge has the same area after \(s=-\alpha_2\), and their intersection is only the origin. Thus the union area is \(t=\epsilon/\delta\). The selected product law has joint density \(1/4\) on the square, so integration over the exact event gives \(\epsilon/(4\delta)\).
- Cited-result and assumption audit: Nonnegative planar slice integration and uniform-density integration are restated before use. Independence is used solely to identify the selected law's density as \((1/2)(1/2)=1/4\); it is not imported into Proposition~\ref{prop:step-011-upper-coefficient} or the general law class. Lemma~\ref{lem:step-011-root-wedges} supplies the exact event equality.
- Rigor checklist: Both sign quadrants are integrated, so there is no missing factor two. Boundary line segments and axes are included in the event and discarded only after their planar measure is shown to be zero. At \(\epsilon=\delta\), the total area is one and the probability is \(1/4\); at \(\delta=1\), the formula holds for every \(0<\epsilon\leq1\).
- Local adversarial test: Integrating only one wedge would give the incorrect factor \(1/8\); the displayed two-wedge sum prevents that failure. Including the vertical endpoint-root axis or the origin does not change area, while omitting them would make the claimed event identity false.
- Contribution to target step: This proposition proves the exact source-example lower probability independently of the accepted homogeneous upper theorem.
- Verdict: PASS
- Repair direction: None

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-011-scale-comparison} states the exact positive-length normalized ratio, compares it with the separately sourced upper coefficient, and records \(\epsilon=\delta\), \(\delta=1\), and \(\epsilon\downarrow0\) only through positive lengths. It does not assert a ratio at \(\epsilon=0\).
- Proof validity: Since \(\epsilon>0\), \(|[0,\epsilon]|=\epsilon\) and division gives
  \[
  \frac{\epsilon/(4\delta)}{\epsilon}=\frac1{4\delta}.
  \]
  Proposition~\ref{prop:step-011-upper-coefficient} supplies the general coefficient \(1/\delta\), so the exact lower ratio differs by the literal factor four and has the same necessary \(1/\delta\) scale.
- Cited-result and assumption audit: The proposition consumes exactly the two named local propositions, whose sources remain separated: accepted `step_008` for the upper theorem and direct uniform-law integration for the lower equality. Lemma~\ref{lem:step-011-projective-speed} is cited only for the already proved active structural value at zero.
- Rigor checklist: Every division is by positive \(\epsilon\) and positive \(\delta\). For fixed \(\delta>0\), probability tends to zero linearly as \(\epsilon\downarrow0\), while the ratio remains constant on the permitted positive lengths. The endpoint cases introduce no discontinuity or hidden limiting assertion.
- Local adversarial test: At \(\epsilon=\delta\), the ratio is \((1/4)/\delta=1/(4\delta)\); at \(\delta=1\), it is \(1/4\) for all permitted lengths. Setting \(\epsilon=0\) would make division invalid, and the statement correctly excludes it.
- Contribution to target step: This proposition closes the exact upper/lower scale audit and demonstrates quantitatively that the static normalization records the source obstruction.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The six nontrivial obligations are exactly the six mapped and proved units: ordered closure/certificate calculation, normalized-curve differentiation, accepted homogeneous specialization, exact full root-event geometry, planar probability integration, and positive-length normalization. Matrix multiplication, the Euclidean norm simplification, the value \(A=1\), all-law scope, wedge containment, endpoint-root behavior, slice integration, density \(1/4\), and the limiting interpretation are displayed inside those units. Mathematical authority uses theorem-style names and stable labels; local unit IDs appear only as audit handles.

The proof records only `step_001` and `step_008` as mathematical dependencies, with their complete current proof/review SHA-256 identities. The binding accepted global diagnostic is mentioned only as non-evidentiary planning context; no claim in the derivation or assembly depends on it. No `step_010` proof, review, claim, or hash appears as consumed evidence.

## Target Claim Audit

The proof establishes exactly the accepted `step_011` row under its unchanged primitive specialization and the two accepted dependencies. It proves

\[
(q,M,\Delta,N,m)=(0,0,1,2,0),
\qquad
\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
\]

uses accepted `step_008` with \(R=1\), \(\kappa=1/4\), \(A=1\), and \(N=2\) to obtain the literal arbitrary-correlated-law upper coefficient \(1/\delta\), and independently proves for the selected uniform product law

\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta},
\qquad
\frac{\Pr[\cdots]}{|[0,\epsilon]|}=\frac1{4\delta}.
\]

The quantifiers, source law, general law class, parameter range, ordinary probability mode, positive-interval mode, Euclidean norm, literal constants, and boundary cases match the setting and row. The exact affine-monic baseline remains a separate unaffected clause; this step neither consumes nor modifies it.

## Explicit Rate Audit

This is the complete R5 exact scale audit. The proof exposes \(\delta\), \(\epsilon\), \(q,M,\Delta,N,m,R,\kappa,A\), the arbitrary upper-law variable, and the selected lower-law specialization. There are no hidden constants, confidence parameters, auxiliary tolerances, minimum interval lengths, transversality margins, coefficient-axis exclusions, or suppressed \(T\)-terms. The deterministic tuple and certificate are fixed; the upper statement retains every admissible correlated law and positive-length interval, while the exact lower statement fixes only the source uniform product law and \([0,\epsilon]\). The norm mode is Euclidean and the coefficient-event measure is planar Lebesgue measure.

Every specialization and simplification is literal:

\[
\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=1/\delta,
\qquad
A\sqrt{N/2}=1,
\]

\[
2\int_0^1(\epsilon/\delta)s\,ds=\epsilon/\delta,
\qquad
\tfrac14(\epsilon/\delta)=\epsilon/(4\delta),
\qquad
[\epsilon/(4\delta)]/\epsilon=1/(4\delta).
\]

No term is absorbed and no probability-mode conversion is hidden. The \(\epsilon=\delta\), \(\delta=1\), and positive \(\epsilon\downarrow0\) regimes preserve the same formulas. The relevant baseline-invariance obligation is the exact \(1/\delta\) certificate and projective scale, which is preserved with equality; the separate affine-monic baseline is explicitly left unchanged.

## Notation Surface Audit

The public-facing interface is minimal: the original tuple \(\widetilde F=(0,1,\theta/\delta)\), its ordered shear entry, the exact certificate and projective speed, the all-law upper coefficient, the exact source-law probability, and its normalized lower ratio. The source parameters \(\delta\) and \(\epsilon\) retain their original meanings. The aliases \(x=\theta/\delta\), \(t=\epsilon/\delta\), and \(W_+(t),W_-(t)\) are correctly proof-local and derived before use. The selected uniform law is appendix-local and does not leak an independence condition into the public upper theorem. All helper objects are classified, no one-off dictionary is exported, and every constant has visible provenance.

All theorem-style labels referenced by the target proof resolve to the target proof, accepted `step_001`, accepted `step_008`, or stable setting assumptions. The inline-math and display delimiters, braces, labels, references, and table pipes are balanced, and no malformed TeX command fragment was found.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-011-shear-certificate} supplies the exact ordered certificate. Lemma~\ref{lem:step-011-projective-speed} supplies the exact Euclidean derivative and supremum. Proposition~\ref{prop:step-011-upper-coefficient} instantiates the accepted `step_008` interval and capacity propositions without narrowing their law scope. Lemma~\ref{lem:step-011-root-wedges} identifies the full closed root event, Proposition~\ref{prop:step-011-wedge-probability} computes its exact selected-law probability, and Proposition~\ref{prop:step-011-scale-comparison} divides only by positive interval length. These named results jointly imply every clause of the accepted row with no assembly-only lemma, changed dependency, target drift, or hidden source.

The proof's mathematical dependency set is exactly `step_001` and `step_008`. Their proof/review identities match the current binding artifacts, both reviews are `ACCEPTED`, and the target proof's own SHA-256 matches the reviewed identity above. The global diagnostic remains non-evidentiary, and `step_010` is neither read nor consumed by this review.

## Review Rationale

All six non-atomic local units are statement-complete and valid line by line. The proof preserves the exact coefficient ordering and \(T\)-independent constant-matrix certificate, computes the normalized derivative exactly, instantiates the accepted homogeneous theorem with its arbitrary-correlated-law scope intact, identifies and integrates the full two-wedge root event including axes and endpoint boundaries, and normalizes only over positive interval lengths. Dependency, assumption-provenance, explicit-rate, baseline-invariance, notation-surface, hidden-subclaim, boundary-case, and target-assembly checks all pass. No local, dependency, or sketch repair is required, so `ACCEPTED` with `None` is the smallest aligned decision.
