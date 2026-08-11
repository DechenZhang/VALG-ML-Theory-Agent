# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public appendix has five assembly-transcription defects that leave literal command names inside displayed mathematics: `latex_template/5_appendix.tex:362` and `latex_template/5_appendix.tex:912` use bare `qquad`; line 700 uses bare `lambda` in the inner-chart integral; and lines 723 and 743 use bare `leq` in, respectively, the positive-chart proposition and its image-length inequality. Thus the rendered formulas contain undeclared letter products instead of `\qquad`, `\lambda`, and `\leq`. In particular, the positive-chart theorem-style statement does not publicly state its required inequality, and the inner and positive derivations are not valid as literally assembled. The paired accepted source proofs contain the correct relations, so this is an assembly defect rather than a defect in any accepted step.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: Apart from the five literal transcription defects above, the theorem-level chain is valid. The accepted inner and outer image bounds feed the matching conditional disintegrations; the three resulting chart bounds feed finite subadditivity and the exact scalar maximum; division by positive interval length and the declared empty-index convention give the class supremum; the displayed scalar inequalities give the polynomial envelope; and the independent witness-membership result gives only the separately thresholded nonemptiness clause. The final theorem proof introduces no independent lemma or stronger use of an accepted conclusion.
- Statement self-containedness: The four theorem-critical assumptions are numbered, uniquely labeled, and primitive. Public theorem-style statements name their assumption basis and prior results, and the bundle contains no public `claim`, `hypothesis`, or `invariant` environment, workflow authority, placeholder, or unresolved result reference. The positive-chart proposition nevertheless fails statement self-containedness as rendered because its principal relation at line 723 is bare `leq`; the accepted source statement itself is complete.
- Main theorem constants and notation: The chart pieces, sweeps, `B_0`, `B_\infty`, `M_\eta`, `\bar\kappa_*`, and `P_\eta` are explicitly defined from setting quantities before theorem use. Their roles and allowed dependence are stated, no appendix-only symbol is needed to parse the theorem, and the witness threshold is kept out of the general root-hitting assumptions.
- Derivation-over-notation: The appendix displays the derivative calculations, interval-image bounds, measurable-cap construction, compact-exhaustion and section arguments, conditional integrals, scalar maximum, termwise rate domination, and degree-specific witness calculations. Helper notation does not replace an existence, finiteness, boundedness, conditioning, or implication argument. The bare tokens identified above are malformed translations of displayed source mathematics, not legitimate shorthand.
- Explicit-rate contract: The public rate exposes `d`, `R`, `\bar\kappa_0`, and `\bar\kappa_\infty`, fixes finite `\eta` independently of `d,R`, states that there are no hidden constants, and identifies deterministic probability, static interval-uniform horizon, conditional-`L^\infty` norm, and Lebesgue-length modes. The named specialization proposition proves `\bar\kappa_i\leq\bar\kappa_*`, `1\leq d`, and `d(d-1)\leq d^2` pointwise, with no asymptotic absorption or probability conversion.
- Appendix full derivations: Direct comparison of every accepted source proof with its public appendix body gives the following proof-obligation map.

| Accepted step | Source proof obligations checked | Public appendix translation | Comparison result |
| --- | --- | --- | --- |
| `step_001` | Inner-pivot equivalence, exact derivative, coefficient bound, empty-sum `d=1` case, Lipschitz control, and interval-image length | Lemmas `lem:inner-derivative` and `lem:inner-image-length` | All substantive calculations and boundary arguments are preserved. |
| `step_002` | Separate positive and negative outer pivots, inverse-power derivatives, triangular-sum bound, connected-image length, endpoint limits at `+1` and `-1`, and `d=1` | Propositions `prop:positive-outer-certificate` and `prop:negative-outer-certificate` | Both sign-specific source derivations and substitutions are preserved. |
| `step_003` | Jointly measurable density versions, countable rational-interval caps, essential-supremum identity, version independence, simultaneous Borel domination, support-compatible full-measure sets, Borel root events, compact exhaustion, exact fibers, and matching disintegration | Lemmas `lem:kernel-caps` and `lem:borel-sections`, and Proposition `prop:matching-disintegration` | The full source arguments are preserved, but the cap-identity display is malformed at line 362 by bare `qquad`. |
| `step_004` | Three matching one-shot conditional integrations, correct endpoint cap for each chart, support and null-fiber restrictions, finite-cap use before multiplication, exact constants, singleton/empty pieces, and coincident `d=1` kernels | Propositions `prop:inner-chart-probability`, `prop:positive-chart-probability`, and `prop:negative-chart-probability` | The source proof content is present, but the inner integral at line 700 and the positive statement and image inequality at lines 723 and 743 are malformed; the negative calculation is intact. |
| `step_005` | Exact three-piece partition and length identity, event union, endpoint allocation, finite subadditivity, weighted bound, and `Ax+C(y+z)\leq\max\{A,C\}(x+y+z)` | Lemma `lem:three-piece-decomposition` and Propositions `prop:weighted-chart-bound` and `prop:exact-chart-maximum` | The source derivation is preserved, but the local scalar-definition display is contaminated by bare `qquad` at line 912. |
| `step_006` | Positive-length division, both suprema, empty-index convention, separate inner and outer coefficient dominations, and exact fixed-`\eta` polynomial specialization | Proposition `prop:class-supremum`, Lemmas `lem:inner-polynomial-domination` and `lem:outer-polynomial-domination`, and Proposition `prop:fixed-eta-polynomial-specialization` | Every source inequality, case, and target-step implication is preserved. |
| `step_007` | Degree-one, degree-two, and higher-degree conditional kernels; exact endpoint caps; cube support; ambient singularity; middle-coordinate dependence; threshold comparison; and membership assembly for all degree regimes | Propositions `prop:degree-one-witness-kernels` through `prop:witness-middle-dependence`, Lemma `lem:witness-threshold`, and Proposition `prop:witness-membership` | All degree splits, conditional-law computations, support arguments, and threshold-isolation obligations are preserved. |

- Quantifiers and constants: The bundle fixes one finite `\eta` before quantifying over all `d\geq1`, `R\geq1`, class laws, and positive-length intervals. The chart estimates are per law and interval, their constants are conditioning-value independent after integration, and the class and polynomial bounds preserve the same pointwise scope. The witness condition `\bar\kappa_0,\bar\kappa_\infty\geq1/2` is used only for witness membership.
- Probability or convergence modes: Conditional domination is applied on marginal-full sets with finite measurable caps, then integrated once against the matching conditioning marginal. Almost-sure cap identities are used only to obtain the primitive mean bounds. There is no expectation-to-high-probability, conditional-to-unconditional without disintegration, pointwise-to-uniform without supremum monotonicity, convergence, horizon, or limiting-mode upgrade.
- Boundary cases: The source and appendix cover `d=1`, `R=1`, zero cap parameters, empty law or interval indexing sets, empty and singleton chart pieces, arbitrary endpoint conventions, roots at `\pm1`, approach to the outer-chart endpoints, null conditioning fibers, tangencies and multiple roots, and witness regimes `d=1`, `d=2`, `d=3`, and `d\geq4`. No vanishing denominator or zero-times-infinity step is used.
- Hidden subclaims: No accepted source obligation is replaced by a bare citation, subsection reference, symmetry shortcut, routine-argument claim, or assembly-only lemma. Labels and references are unique and resolved. The only acceptance-blocking defects found are the five malformed control sequences localized above, all repairable by retranslating the accepted formulas in `/proof-assembly`.
