# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The vulnerable claim is the class-uniform weighted root-hitting bound under only mean conditional-density caps, without an ambient density, coordinate independence, or almost-sure uniform slice caps. Allowing singular conditioning marginals and changing conditional-kernel representatives on null fibers does not break it: the public cap lemma constructs measurable representatives, identifies them with the conditional density norms almost surely, puts finite cap and conditional support on one full-measure set, and preserves the two primitive mean bounds.
- Standalone theorem attack: Removing every workflow file leaves a closed paper proof. The setup and preliminaries define every quantity used in the main theorem before it is stated, the theorem exposes its complete assumption basis, and the appendix derives the weighted estimate, exact maximum, class suprema, polynomial envelope, and witness clause through named paper-facing results. No assembly-only hypothesis, helper dictionary, or citation-dependent proof obligation is hidden in the theorem notation.
- Weakest step-level claim: Step 003's measurable-cap and matching-disintegration interface is the narrowest technical point. The attempt-6 appendix supplies the full finite measure--kernel product construction and joint-law identity, proves sigma-finiteness before Radon--Nikodym, identifies the fiber density on a countable generating pi-system, proves the rational-interval cap identity, proves density-version and kernel-version invariance directly, intersects with conditional support, establishes Borel root events by compact projection, and gives both pi--lambda arguments for section measurability and disintegration. The inner section is integrated only against the inner kernel, both outer signs use only the outer kernel, and conditional support removes the cube intersection on the same full-measure outer fibers. Step 004 then integrates a measurable cap times a fixed finite scalar, so it does not assume measurability of a conditioning-dependent image length.
- Candidate counterexamples or stress cases: The proof explicitly survives d=1 with empty conditioning tuples and one shared unconditional kernel; R=1; either or both zero cap parameters; roots and interval endpoints at +/-1; empty and singleton chart pieces; empty law or interval supremum index sets; tangencies and multiple roots; and singular witnesses with dependent middle coordinates. Boundary points belong only to the inner chart, degenerate images have zero probability under finite-cap domination, and no zero-times-infinity convention is used.
- Explicit-rate stress cases: The weighted chart inequality is reduced by the displayed scalar inequality to the exact maximum of the inner and outer coefficients, not their sum. The polynomial specialization separately dominates both entries of that maximum using only nonnegativity, d >= 1, R >= 1, 1 <= d, and d(d-1) <= d^2; it remains valid at zero caps and at d=1 or R=1. No dependence on the interval, the fixed domain, confidence, horizon, or an unstated constant is absorbed.
- Appendix self-contained attack surface: Every theorem-critical local unit appears as a lemma or proposition with an explicit assumption basis and substantive proof. The standard-fact bridges used in Step 003 are stated and applied in the appendix rather than delegated to workflow prose; the cited measure-theoretic and topological facts have their object mappings and hypotheses exposed. Labels, references, citations, and environments are internally consistent, and there are no workflow references, forbidden public claim/hypothesis/invariant environments, placeholders, or compressed "routine/as above" gaps.
- Scope or mode upgrade attacks: The argument stays a deterministic per-law probability inequality followed by deterministic suprema. It introduces no almost-sure-to-uniform, conditional-to-unconditional, confidence, horizon, asymptotic, or norm conversion. The witness threshold is isolated from the root-hitting bound, and the paper expressly does not extend to R < 1, uncapped endpoint laws, necessity, or an online-algorithm guarantee.
- Remaining risk: None after the stated boundary, degeneracy, measurability, version, disintegration, exact-maximum, self-containment, and scope attacks.
