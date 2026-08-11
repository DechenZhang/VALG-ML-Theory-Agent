# Rigor Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The one-factor upper clause in `latex_template/3_main.tex` relies on the theorem sample-size scope introduced in item 1, while Proposition~`\ref{prop:step-015-one-factor-upper}` states that threshold explicitly. Repeating the threshold in item 4 would improve local readability, but the theorem, corollary, appendix proposition, and final proof all use the same threshold and conclusion.
2. The symbol `\tau_i` is reused locally in the Step 002 and Step 010 appendix subsections for different finite maps. Each domain and codomain is defined before use and the scopes do not interact, so this creates no derivational ambiguity.
3. The accepted diagnostic `proof_sketch.md` retains two previously documented form-feed encoding blemishes in a repeated rendering of the Step 014 rational inequality. The binding step claim, accepted Step 014 proof, global diagnostic, and public TeX all contain the correct formula, so the blemishes do not affect the assembled proof.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Rigor Audit

- Mathematical derivations: Every theorem-used source derivation in accepted Steps 001--015 was compared directly with its appendix proof body. The quotient/product identities, totalized factor kernel, routed composition, weighted shortage and bad-mass bounds, quota specialization, additive VC floor, ALMM expected-risk wrapper, compact minimax prior, overflow estimate, one-use simulation, common-prior tensorization, rational PAC separation, deterministic witness extraction, conditional sandwich, and one-factor reductions are all preserved and valid under their stated inputs.
- Statement self-containedness: The five primitive assumptions are numbered with their stable setting labels. The main theorem and public corollary state the class, privacy, candidate, probability, horizon, risk, and constant scopes before their conclusions. Appendix theorem-style results state their local assumptions or named dependencies and exact conclusions before proof.
- Main theorem constants and notation: `C_{\rm up}=65536`, `C_{\rm quota}=\max\{1,K_Y+1/20\}`, `c_{\rm low}`, `M_\oplus(C)`, `Q_\oplus`, the factor quotas, candidate budgets, and attained-candidate conditions are defined before use with the declared universal dependence. No factor-cardinality, quotient-cardinality, support, balance, properness, or learner-dependent constant is hidden.
- Derivation-over-notation: Public helper notation is limited to stable setting and theorem objects. The appendix displays the definitions, substitutions, inequalities, probability calculations, compactness/minimax argument, privacy simulations, coupling identities, and final assembly instead of replacing them with notation dictionaries or summaries.
- Explicit-rate contract: The arbitrary-`delta` upper scope, both fixed-candidate lower delta conditions, conditional substitution at `n_*`, exact ceiling removal, quota Rate Specialization Bridge, term absorptions, probability conversion, fixed-sample/candidate horizon, exact risk norm, and universal hidden-constant dependence are explicit. The `k=1` upper and lower baseline reductions are exact rather than conservative surrogates.
- Appendix full derivations: All fifteen accepted non-atomic step derivations, cited-result discharges, boundary cases, and target-step assemblies occur in source order in the appendix. Assembly attempt 2 restores all 26 spacing commands, both `\operatorname` commands, the corrupted Proposition reference, and the Step 008 term `k\,2^{C_RNL}`; direct comparison finds no remaining loss or mistranscription of proof-obligation content.
- Quantifiers and constants: Hard factor task sets and minimax priors are fixed before the simulated or global learner; the lower learner remains unrestricted and improper. Strict inequalities, candidate-local assumptions, universal constants, exact factor weights, ceiling/floor arithmetic, and the separation between arbitrary-`delta` upper and admissible-candidate lower scopes remain unchanged through assembly.
- Probability or convergence modes: Privacy remains pointwise on all adjacent fixed-size inputs and measurable events; upper utility is high probability over iid data and learner randomness; intermediate lower bounds are finite-prior expectations; and the final lower conclusion is a deterministic strict PAC-failure witness. No expectation-to-high-probability, marginal-to-joint, event-to-unconditional, or candidate-to-uniform upgrade occurs.
- Boundary cases: The proof treats zero-mass and tiny-mass factors, finite-support thresholds, `d_i=1`, `m=8`, `n=1`, `mu=0` and `mu=2`, equality at both delta caps, empty or inconsistent source branches, nonrealizable privacy inputs, used and unused simulator rows, overflow, and failure of the attained-candidate check. At `k=1`, upper shortage and lower overflow are exactly zero and both source baselines are retained.
- Hidden subclaims: No theorem-critical claim beyond accepted named step results, checked cited-result applications, and direct finite assembly implications was found. Fresh source scans found no control bytes, malformed commands, bare spacing/operator tokens, duplicate labels, unresolved references or citations, forbidden public environments, workflow scaffolding, or placeholders. A fresh isolated Tectonic build completed TeX, BibTeX, all reruns, and PDF generation; only three nonblocking underfull-box warnings remain.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
