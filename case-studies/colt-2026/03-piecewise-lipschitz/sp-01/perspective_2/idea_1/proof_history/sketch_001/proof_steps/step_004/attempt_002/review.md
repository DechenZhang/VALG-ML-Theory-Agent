# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 2
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_004/proof.md (SHA-256: 1bde51dda445420ec8a5075dcd2cbdc9af6d0eb9b7e5e52246b769379fe8ce14)
- Accepted dependency identities: step_001 proof SHA-256 0aa0e570fd177aaae9828a816336e96ed8fc73d344a9025408a98e0fbd6d0361 and review SHA-256 669402f2e36d6f7dce8ce479e548fc99c3d92fc95a113bc7a7ec7add73948228; step_002 proof SHA-256 d7c01883f5e130aa33071b3363f803abbe0aba5c42d3a7a31a61cc0bf9d3d05a and review SHA-256 751c00f720eb9674ef69b813b21a888cad110115e66809cce8fc8ea336274d10; step_003 proof SHA-256 ee49de9b8de6d218926e612450f7172e209465eb6bcda1a8c254f624fc93cebd and review SHA-256 8a20f6423c00d84663b723e74a2bee2d4d88e70d094b18fa08d32bf640009ef6. All six current hashes match the binding worker-log row, and all three reviews have status ACCEPTED for the recorded producer attempts.

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_004

## Blocking Issues

1. Location: equations (17), (21), and (25) in Propositions~\ref{prop:step-004-inner-chart-probability}, \ref{prop:step-004-positive-outer-probability}, and \ref{prop:step-004-negative-outer-probability}. Defect: each chain integrates
   \[
   y\longmapsto \widehat K_i(y)\lambda(s_i(I_\bullet;y))
   \]
   without establishing measurability of \(y\mapsto\lambda(s_i(I_\bullet;y))\). The accepted step_003 interface proves measurability of \(y\mapsto Q^i_y((E^i_{I_\bullet})_y)\) and of \(\widehat K_i\), while steps step_001 and step_002 give only pointwise image-length bounds; none of those accepted conclusions supplies parameter-measurability of the image length. Finiteness on \(G_i\) and domination by a measurable function do not make the displayed middle integrand measurable. Downstream effect: the middle Lebesgue integrals and hence the written derivations of all three local propositions are not justified, so their exact target conclusions cannot yet be certified. Smallest repair direction: on \(G_i\), combine the two pointwise inequalities first,
   \[
   Q^i_y((E^i_{I_\bullet})_y)
   \leq \widehat K_i(y)\lambda(s_i(I_\bullet;y))
   \leq \widehat K_i(y)B_i(d,R)|I_\bullet|,
   \]
   and integrate only the final measurable function \(y\mapsto \widehat K_i(y)B_i(d,R)|I_\bullet|\). Apply this same local rewrite to all three units. This changes no claim, assumption, dependency, constant, probability mode, or sketch interface.

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: PASS. The statement matches the inner-chart part of the accepted step_004 row, uses exactly the inner conditioning interface, preserves \(\bar\kappa_0B_0(d,R)|I_0|\), and explicitly includes empty and singleton pieces.
- Proof validity: The disintegration identity (15), the full-measure restriction, the simultaneous Borel-set domination, the pointwise image-length estimate (16), and the cap mean bound are individually valid. The first inequality in (17), however, introduces an integral whose integrand has not been shown measurable. The desired conclusion follows after the local pointwise rewrite specified in Blocking Issue 1, but that repair is not present in the submitted proof.
- Cited-result and assumption audit: The proof uses only the three primitive target-row assumptions and the exact current accepted conclusions of step_001 and step_003. The inner kernel \(Q^0\), marginal \(\nu_0\), cap \(\widehat K_0\), and full-measure set \(G_0\) are correctly matched. No generated invariant or almost-sure uniform numerical cap is assumed.
- Rigor checklist: The quantifiers, finite cap restriction, \(\bar\kappa_0=0\) case, arbitrary endpoint convention, and degree-one empty tuple are handled correctly. The remaining failure is the unverified measurability required by the displayed integration step.
- Local adversarial test: Allowing the conditioning tuple \(y\) to vary makes the image interval and its length conditioning-dependent. Pointwise finiteness and the bound \(\lambda(s_0(I_0;y))\leq B_0|I_0|\) do not by themselves imply measurability, so the current middle integral cannot be justified from the cited interfaces.
- Contribution to target step: Once the integration line is repaired, the proposition supplies exactly the inner chart probability control needed by the target.
- Verdict: REVISE_STEP
- Repair direction: Replace the middle integral in (17) by direct integration of the measurable bound \(\widehat K_0(y)B_0(d,R)|I_0|\).

### unit_002: proposition

- Statement fidelity: PASS. The statement preserves the positive outer chart, the outer conditioning field, the exact factor \(\bar\kappa_\infty B_\infty(d,R)\), and the requested zero-length cases.
- Proof validity: Equations (19) and (20), the support-compatible zero-pivot extension, outer-kernel domination, and the primitive outer mean-cap inequality are valid. Equation (21) has the same unproved middle-integrand measurability as unit_001.
- Cited-result and assumption audit: The accepted positive-outer certificate, kernel-cap lemma, and matching-kernel disintegration proposition are correctly restated and instantiated. The proof never substitutes the inner kernel for the outer kernel and introduces no extra law assumption.
- Rigor checklist: The positive sign, approach to \(1\), finite-cap restriction, singleton/empty images, exact probability constant, and \(d=1\) branch are correct. The integration measurability hypothesis is not discharged.
- Local adversarial test: Even though the section-probability integrand is measurable, the accepted dependencies do not state that \(y\mapsto\lambda(s_\infty(I_+;y))\) is measurable. Thus multiplying it by the measurable cap and displaying its Lebesgue integral is not licensed by the current proof.
- Contribution to target step: After the local rewrite, this proposition gives exactly the positive outer probability control with no factor two.
- Verdict: REVISE_STEP
- Repair direction: Establish the pointwise bound by \(\widehat K_\infty(y)B_\infty(d,R)|I_+|\) before integration and integrate that measurable function directly.

### unit_003: proposition

- Statement fidelity: PASS. The statement independently targets the negative outer chart with the same exact outer factor and does not appeal to symmetry.
- Proof validity: Equations (23) and (24), the negative dependency, finite-cap restriction, and mean-cap conversion are valid. The first inequality in (25) again integrates an image-length product whose measurability has not been proved.
- Cited-result and assumption audit: The negative-outer certificate and the outer step_003 kernel interface are the correct accepted inputs. All dependency proof/review hashes and producer identities match, and no inner conditioning object is consumed.
- Rigor checklist: Negative-coordinate signs are inherited from the accepted dependency; empty/singleton pieces, arbitrary endpoints, \(d=1\), finite caps, and exact constants are handled. Only the measure-theoretic legality of the middle integral remains open.
- Local adversarial test: Sign separation does not resolve parameter measurability. A pointwise image-length upper bound cannot be used as an intermediate Lebesgue integrand unless measurability is proved or the intermediate integral is omitted.
- Contribution to target step: After the same local rewrite, the proposition supplies exactly the negative outer probability control.
- Verdict: REVISE_STEP
- Repair direction: Bound the measurable section probability pointwise by \(\widehat K_\infty(y)B_\infty(d,R)|I_-|\), then integrate that final measurable bound.

## Hidden Subclaim Scan

The proof exposes the three chart calculations in its Local Lemma Map and otherwise uses named accepted dependency results. The one hidden independent subclaim is parameter-measurability of each image-length map \(y\mapsto\lambda(s_0(I_0;y))\) and \(y\mapsto\lambda(s_\infty(I_\pm;y))\), implicitly needed by the middle integrals in (17), (21), and (25). It is neither stated in the local map nor proved by the cited dependencies. No further hidden claim was found: full-measure restriction, support-compatible extension by pivot zero, conditional support, singleton nullity, and the \(d=1\) kernel coincidence are all explicitly justified.

All theorem-style labels used by the target proof resolve in the current accepted dependency proofs or in this proof. Assumption references use the stable setting ids, there are no malformed reference commands or control characters, and bare unit ids in the assembly occur only as audit handles after named proposition references.

## Target Claim Audit

The target block faithfully preserves sketch attempt 1, step_004, all three accepted dependencies, the three target-row primitive assumptions, every \(d\geq1\), \(R\geq1\), \(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\). It uses the inner and outer conditioning sigma-fields separately for \(d\geq2\), identifies them only in degree one, and targets exactly the three per-chart bounds. It neither performs a union bound nor changes the downstream interface. Nevertheless, because each local proof contains the same unjustified integral, the exact target is not proved by the submitted derivation as written.

## Explicit Rate Audit

The proof correctly exposes \(d,R,\bar\kappa_0,\bar\kappa_\infty\) and the three chart lengths, with no hidden constants. It preserves fixed \(\eta,\Theta\), exact per-law deterministic probability mode, static interval-uniform scope, one-dimensional Lebesgue length, and conditional \(L^\infty\) density norms. It introduces no confidence parameter, auxiliary tolerance, horizon upgrade, term absorption, union loss, or factor two. The degree-one reduction is exact: both structural factors equal one and the common unconditional cap is tested against the two primitive mean bounds separately. Blocking Issue 1 concerns measurability of an intermediate integral, not the displayed dependence; the proposed local repair preserves the complete rate interface unchanged.

## Notation Surface Audit

The public-facing output is limited to the three requested probability inequalities. The step_003 kernel, marginal, cap, and event-lift objects are correctly classified as appendix-local, while the full-measure sets and zero-pivot extension are proof-local. No new constant, threshold, event, margin, radius, or admissibility package is exported. The notation is consistent with the setting and accepted dependencies. The only notation-driven proof obligation left implicit is measurability of the conditioning-dependent image-length maps used as intermediate integrands; the smallest repair eliminates those integrands rather than enlarging the public or local notation surface.

## Target-Step Assembly Audit

The three named propositions have exactly the conclusions whose conjunction is the accepted step_004 output, and the assembly correctly avoids union, maximum, supremum, polynomial, witness, or factor-two work assigned to later steps. The degree-one paragraph uses the common kernel while retaining the two separate primitive cap inequalities. However, all three propositions currently carry the same local integration gap, so their conjunction cannot be accepted until the producer repairs equations (17), (21), and (25). No new lemma, dependency, or sketch-row change is required.

## Review Rationale

REVISE_STEP is the smallest sound status. The setting, accepted sketch, dependency graph, dependency artifacts, chart interfaces, constants, and target assembly are all adequate. The sole material defect is local to the submitted integration chains and can be repaired under the unchanged step row by combining the existing pointwise inequalities before integration. Therefore the producer retry target is /proof-step step_004, followed by a fresh step review of the repaired proof.
