# Adversarial Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public endpoint-margin argument uses the step-009 canonical witness outside the scope proved for it. Proposition~`prop:step-009-raw-witness` constructs that witness only under `(LEV)`, whereas Proposition~`prop:step-013-preserved-raw-margin` is asserted on all of `E_init_norm intersect C_path`; `E_init_norm` contains only `E_deficit`, not `(LEV)`. This is a genuine implication gap: `E_deficit` requires normal energy only at least `delta_0^2 r`, while `(LEV)` requires projection energy at most `r/2`. For example, an abstract tangent subspace with `||P_S D_r||_F^2=3r/4` and `Dhat_0 in S` can satisfy `E_deficit` but fails `(LEV)`. The theorem itself is repairable without changing a step or sketch interface: on `E_deficit`, choose the witness supplied by that event's definition (or normalize `P_{S_0^perp}D_r`, whose norm is then at least `delta_0 sqrt(r)`) and use it throughout steps 013--014. The appendix must state this event-wide choice instead of attributing it to the `(LEV)`-conditional proposition.

2. Several public theorem-style statements retain undefined source-only aliases rather than standalone mathematical interfaces. The affected uses include `(Haar)` in Proposition~`prop:step-007-product-tail`, `(LEV)` in step 008 and both step-009 results, `(T1)`--`(T3)` in step 014, and `(T)` in Proposition~`prop:step-015-conditional-accounting`. Manual equation numbers are also reused across subsections without public labels. These strings compile but have no defining public target, so a reader cannot audit the stated hypotheses or conclusions independently. Replace them with exact displays and named public theorem/equation references.

3. The appendix relies on acceptance-critical non-elementary tools without complete inline proofs or BibTeX-backed citations: the rectangular Gaussian operator-norm and chi-square tails, Weyl perturbation inequality, self-adjoint matrix Bernstein inequality, Haar uniqueness/disintegration, the bi-invariant `SO(r)` curvature normalization, and the Bakry--Emery log-Sobolev criterion. `reference.bib` has no source entries, the TeX has no citation commands, and no bibliography is emitted. The local applications and constants are internally consistent, but the paper is not independently auditable until exact supporting sources or full proofs are supplied.

4. Every appendix subsection starts with an unattached `Auxiliary facts in the present notation` proof block that packages dependency inventories and assumption-discharge narration. Together with the source-only aliases, these blocks leave the appendix shaped like workflow scaffolding rather than a standalone paper proof. Integrate the necessary hypotheses, object mappings, and cited-tool statements into the relevant lemma/proposition statements and proofs, and remove redundant audit narration.

## Nonblocking Concerns

1. The result is correctly labeled `conditional`, covers only the specified balanced gradient-descent protocol, and explicitly leaves ALS, arbitrary bases, and a constant lower bound on `P(C_path | E_init_norm)` open. The final conditional factor may be zero, so the theorem does not establish the source's constant-probability lower bound; the setup, main theorem, and assembly report state this without a scope upgrade.

2. Step 003 is long but remains one coherent normalized pair-Gram obligation split into radius control, isotropic Khatri--Rao concentration, deterministic elliptic/diagonal transfer, and event assembly. Its second producer attempt repaired only delimiters and an event alias, not a second substantive mathematical defect or missing interface. The user's overload rule therefore does not trigger sketch revision.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Adversarial Audit

- Weakest theorem-level claim: the event-wide provenance of `W_0`; the current public dependency supplies the canonical witness only on `(LEV)`, while the theorem conditions on the broader `E_deficit` event. Direct witness selection from `E_deficit` repairs the proof without changing the theorem.
- Standalone theorem attack: the main theorem preserves the exact conditional goal and exposes the possibly zero path factor, but the appendix is not standalone because of undefined aliases, manual dependency numbers, unattached auxiliary blocks, and uncited non-elementary tools.
- Weakest step-level claim: step 013's witness attribution is scope-inaccurate. Its actual tangent cancellation and worst-sign endpoint absorption are valid once `W_0` is chosen from `E_deficit`; no new local lemma, dependency interface, or sketch row is needed.
- Candidate counterexamples or stress cases: a deficit outcome with projection energy strictly between `r/2` and `(1-delta_0^2)r` defeats the claimed `(LEV)` provenance but not the repaired event-definition argument. The cases `d=0`, `k=floor(r^(5/4))`, worst allowed ellipticity, zero path, maximal path, adversarial Taylor-remainder sign, a nonzero orthogonal physical residual, and zero conditional path probability otherwise leave the claimed inequalities valid.
- Explicit-rate stress cases: sequential twirling gives the exact mean `d/r^3`; the unnormalized product metric gives `Lip(h)<=2sqrt(3)`; `tau_kappa=1/(4 kappa_1^12)` closes both the rank mean and raw leverage; the deterministic elliptic comparison loses `kappa_1^12`; the endpoint margin is `(15/16)delta_0 sqrt(r)`; and lower residual plus upper target transfer yields the relative exponent `kappa_1^(-12)`. No hidden `n`, `k`, horizon, or target-direction dependence was found.
- Appendix self-contained attack surface: blocking issues 2--4 prevent independent audit even though the accepted local derivations are present. Exact source identities and equation-level references are required, especially for the Gaussian/Bernstein and `SO(r)` log-Sobolev inputs.
- Scope or mode upgrade attacks: none survives. Initialization claims remain high probability, trajectory claims remain deterministic on `E_init_norm intersect C_path`, continuity is finite-dimensional polynomial continuity, and the final probability identity retains the possibly zero conditional factor without independence.
- Remaining risk: after assembly repair, source fidelity must be checked against citations supporting the exact metric and constants used. No attack currently requires `/proof-step`, `/proof-sketch`, or idea revision; step 003's presentation-only retry does not count toward substantive overload.
