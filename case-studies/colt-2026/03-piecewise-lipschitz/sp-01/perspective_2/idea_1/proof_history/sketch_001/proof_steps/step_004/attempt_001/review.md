# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_004/proof.md
- Reviewed proof SHA-256: 2ca180a73c0bb2d16d89e29b523e4104bf50526c2ea283ac91cfef0a8bc030b8
- Sketch acceptance source: perspective_2/idea_1/proof_sketch_review.md, Sketch attempt 1, status ACCEPTED.
- Accepted dependencies: step_001, step_002, and step_003, each at sketch attempt 1 and unit attempt 1, with the proof/review identities and hashes recorded in the submitted proof.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: PASS. The proposition states the exact inner-chart target from the accepted step_004 row for every \(d\geq1\), \(R\geq1\), admitted law, and interval \(I\), with the unchanged factor \(\bar\kappa_0B_0(d,R)|I_0|\). It also states the empty and singleton cases explicitly and names only the accepted inner image, cap, and matching-disintegration interfaces.
- Proof validity: PASS. Equations (15)--(17) first restrict the disintegration to the finite-cap full-measure set \(G_0\), identify the exact section with \(s_0(I_0;y)\), apply the simultaneous Borel-set domination, invoke the accepted \(B_0\) image-length bound, and integrate the cap once. The resulting chain preserves \(\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0\) and introduces no almost-sure uniform cap. Empty and singleton pieces are handled before any product involving a cap, so no \(0\cdot\infty\) expression is used.
- Cited-result and assumption audit: PASS. The proof restates the current-notation conclusions of Lemma~\ref{lem:step-001-unit-002}, Lemma~\ref{lem:step-003-kernel-caps}, and Proposition~\ref{prop:step-003-disintegration}; their recorded proof hashes are current and their assumptions are discharged by the primitive setting conditions and \(\mu\in\mathcal D_{d,R,\eta}\). The inner calculation uses only \(Q^0\), \(\nu_0\), and \(G_0\), never the outer kernel.
- Rigor checklist: PASS. The argument is uniform in the conditioning value on \(G_0\), keeps the expectation mode distinct from a pointwise cap claim, preserves the exact constant, and handles \(d=1\), empty pieces, singleton pieces, arbitrary endpoints, and \(\bar\kappa_0=0\) without an undefined product.
- Local adversarial test: PASS. A null conditioning fiber, an unbounded cap off the full-measure set, a singleton image, and the coincident degree-one pivot do not break the derivation. The finite-cap restriction is made before pointwise multiplication, and the degree-one case uses the same sole-coefficient kernel while retaining the separate inner mean bound.
- Contribution to target step: PASS. This proposition supplies exactly the inner probability control consumed by the target-step assembly and exports no union, maximum, or additional factor.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: PASS. The proposition states the exact positive-outer target, including \(I_+=I\cap(1,\infty)\), the factor \(\bar\kappa_\infty B_\infty(d,R)|I_+|\), and empty/singleton cases, under the accepted positive-outer certificate and the matching outer-kernel interfaces.
- Proof validity: PASS. Equation (19) uses only the positive outer disintegration through \(Q^\infty\) and \(G_\infty\). The proof instantiates the accepted positive image bound by appending a support-compatible pivot value, then applies the finite cap domination and the single expectation bound \(\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty\). It does not invoke symmetry, combine the two outer events, or multiply the outer constant by two.
- Cited-result and assumption audit: PASS. The positive outer proposition, Lemma~\ref{lem:step-003-kernel-caps}, and Proposition~\ref{prop:step-003-disintegration} are restated in current notation with their object mappings and assumptions. The proof uses \(Q^\infty\), not \(Q^0\), and the accepted dependency hashes match the current step_002 and step_003 proofs.
- Rigor checklist: PASS. The proof covers \(d=1\), finite chart pieces, arbitrary endpoint conventions inherited from the Borel-section result, and zero-length pieces. It preserves the exact \(B_\infty=1+Rd(d-1)/2\) factor and keeps the final probability inequality deterministic after integration.
- Local adversarial test: PASS. Negative-side data are not silently substituted, a null or infinite-cap fiber is excluded by the full-measure restriction, and a singleton outer image receives zero probability by the accepted absolute-continuity domination. The calculation remains valid when the positive piece is empty.
- Contribution to target step: PASS. This proposition supplies the complete positive-outer chart control required by the exact step_004 interface.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: PASS. The proposition states the exact negative-outer target for \(I_-=I\cap(-\infty,-1)\), with the same \(\bar\kappa_\infty B_\infty(d,R)\) factor, explicit empty/singleton handling, and the accepted negative-sign image certificate.
- Proof validity: PASS. Equation (23) uses the negative-chart section and the same matching outer kernel \(Q^\infty\), but performs a separate calculation. Equation (24) supplies the negative-side image-length bound, and (25) repeats the finite-cap restriction, domination, and one-cap expectation chain. No sign symmetry or outer-event union is used.
- Cited-result and assumption audit: PASS. The proof restates Proposition~\ref{prop:step-002-negative-outer-certificate}, Lemma~\ref{lem:step-003-kernel-caps}, and Proposition~\ref{prop:step-003-disintegration} in the branch notation. The negative chart, its conditioning coordinates, and its full-measure set are mapped explicitly; no additional density, independence, or support premise is introduced.
- Rigor checklist: PASS. The proof retains the exact \(B_\infty\) constant, handles the excluded endpoint \(-1\) through the accepted chart certificate, covers empty and singleton pieces, and keeps the conditional a.s. statements and final expectation inequality in their proper modes.
- Local adversarial test: PASS. Replacing the negative kernel on a null fiber, testing negative endpoint inclusion, taking \(d=1\), or making the negative piece zero-length leaves the argument valid. The proof explicitly states that the negative result is not inferred by sign symmetry and does not introduce a second outer-cap factor.
- Contribution to target step: PASS. This proposition supplies the independent negative-outer chart control needed for the three-control export.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The three local propositions expose all nontrivial work: matching-kernel disintegration, full-measure restriction, finite-cap Borel domination, the inner image estimate, the positive image estimate, the negative image estimate, and the expectation conversions. The extension of a nonpivot tuple by a zero pivot is an explicit support-compatible instantiation of the accepted step_002 propositions, not an unproved generated-object assumption. Empty/singleton image nullity follows from the already accepted simultaneous domination and is handled in each local unit. The assembly cites the three paper-facing proposition labels; it does not use subsection names or bare unit identifiers as mathematical authority.

## Target Claim Audit

The submitted proof matches the accepted sketch row for step_004 exactly: for every \(d\geq1\), \(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and positive-length \(I\), it proves the inner, positive-outer, and negative-outer probability controls with the exact constants \(\bar\kappa_0B_0\) and \(\bar\kappa_\infty B_\infty\). The proof does not perform the later three-piece union, weighted maximum, class supremum, polynomial specialization, or witness argument.

For \(d\geq2\), the inner calculation uses only \((X_0,Y_0)=(\alpha_0,\alpha_{1:d-1})\), \(Q^0\), \(\nu_0\), \(G_0\), and \(\widehat K_0\); both outer calculations use only \((X_\infty,Y_\infty)=(\alpha_{d-1},\alpha_{0:d-2})\), \(Q^\infty\), \(\nu_\infty\), \(G_\infty\), and \(\widehat K_\infty\). At \(d=1\), the proof correctly identifies the common sole-coefficient kernel and cap, while still applying the primitive \(\bar\kappa_0\) and \(\bar\kappa_\infty\) inequalities separately. The target quantifiers, probability mode, endpoint scope, and dependency interface are unchanged.

## Dependency And Assumption Provenance Audit

All three dependencies are accepted current artifacts: step_001 supplies the inner \(B_0\) image bound, step_002 supplies independent positive and negative \(B_\infty\) image bounds, and step_003 supplies the two measurable finite-cap full-measure interfaces and matching Borel disintegrations. The proof records the exact dependency proof hashes and paired review identities; each reviewed proof hash equals its current proof hash. The only theorem-facing assumptions are the primitive indexed regime, cube support, and two mean endpoint conditional-cap conditions. Measurable caps, full-measure sets, conditional support, Borel sections, and disintegrations are consumed as accepted derived conclusions rather than assumed primitives. No generated invariant, event-membership premise, or local conditional hypothesis is smuggled into the target.

## Explicit Rate Audit

This is a rate-bearing structural step. Exposed quantities are \(d\), \(R\), \(\bar\kappa_0\), \(\bar\kappa_\infty\), and the three lengths \(|I_0|,|I_+|,|I_-|\). The exact exported factors are

\[
 B_0(d,R)=d+\frac{Rd(d-1)}2,
 \qquad
 B_\infty(d,R)=1+\frac{Rd(d-1)}2.
\]

No hidden constant depends on \(d,R,\mu,I,\Theta\), conditioning values, or kernel/density versions. \(\eta\) and \(\Theta\) are fixed as in the setting; the proof is static, deterministic at the final probability level, and uses conditional \(L^\infty(\mathbb R)\) caps and one-dimensional Lebesgue length. There is no horizon, confidence parameter, auxiliary tolerance, probability conversion beyond exact disintegration, term absorption, or public-rate specialization in this step. The exact \(d=1\) reduction gives \(B_0=B_\infty=1\) and no conservative loss. In particular, each outer estimate uses one expectation of the same outer cap and no factor two is introduced.

## Notation Surface Audit

The setting-defined objects \(H_{d,J}\), \(I_0,I_+,I_-\), \(s_0,s_\infty\), \(B_0,B_\infty\), and the two primitive cap parameters remain public-facing. The accepted dependency translations \((X_i,Y_i)\), \(\nu_i\), \(Q^i\), \(\widehat K_i\), \(G_i\), and \(E^i_J\) are used as appendix-local or proof-local interfaces with their provenance stated. The only proof-local construction beyond those inherited objects is the zero-pivot extension used to instantiate the outer deterministic certificate. No new constant, threshold, radius, rate, event, or boundedness assumption is introduced, and the target exports only the three requested inequalities.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-004-inner-chart-probability}, Proposition~\ref{prop:step-004-positive-outer-probability}, and Proposition~\ref{prop:step-004-negative-outer-probability} jointly imply exactly the target row. The assembly preserves the separate inner and outer kernels, restricts every pointwise product to the corresponding finite-cap full-measure set, and applies each mean cap once. It does not union the events, add the two outer controls, take a maximum, or import the later polynomial bound. Empty and singleton pieces are already discharged in the local propositions, and the degree-one common-kernel case retains the two separate primitive cap inequalities. No assembly bridge or local result is missing.

## Review Rationale

The exact submitted step proof is faithful to the accepted sketch, uses only current accepted dependencies and primitive assumptions, and proves all three chart controls with the required constants and modes. The high-risk obligations are discharged explicitly: inner/outer kernel separation, finite-cap full-measure restriction before multiplication, zero-length pieces, no factor two, and degree-one kernel coincidence without cap-hypothesis conflation. Every local unit has a self-contained assumption-bearing theorem-style statement, a valid derivation, a matching cited-result audit, and a complete contribution to the target assembly. Therefore the smallest sound review status is ACCEPTED, with no producer retry required.
