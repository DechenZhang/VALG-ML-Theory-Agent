# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The assembled appendix is not a full proof-obligation-preserving translation of the accepted step sources. It systematically removes theorem-critical dependency formulas and cited-result interfaces while retaining literal references to their local equation numbers. In Step 004, the subsection starts at (2), but the proof of Proposition~\ref{prop:step-004-projection} invokes the absent terminal-marginal identity (1), which the accepted Step 004 source states as the integral formula identifying the transcript marginal with $K_C$. In Step 006, the subsection starts at (3): the high-tail statement and proof say that Lyu Proposition 2 is instantiated in (2), and the good-event proof uses the trace bounds (1), but neither the accepted trace-family bound (1) nor the cited-result restatement and object mapping (2) appears. In Step 007, the subsection starts at (6) while its statements and proofs invoke the omitted positive-branch dictionary (1)--(3), universal calibration inequality (4), and conditional trace estimate (5); the key confidence calculation uses those missing inputs. The same source-interface deletion is visible in the later numbering gaps: Step 008 jumps from (3) to (14), Step 009 begins at (11), Step 010 at (5), Step 011 at (12), and Step 012 at (18). These omissions prevent a line-by-line audit from the public paper and leave theorem-style statements and proofs dependent on undefined numbered formulas. Restore the accepted definitions, equations, inequalities, cited-result statements, object mappings, and assumption discharges needed by each proof, or replace them with self-contained named paper-facing results and exact references without dropping any accepted derivation.
2. The Step 013 target assembly says `Proposition \ref{lem:step-012-empirical}` even though `lem:step-012-empirical` labels a lemma. This is an incorrect paper-facing dependency name and violates theorem-style reference discipline; change the displayed result type to `Lemma` during assembly repair.

## Nonblocking Concerns

1. Some appended target-assembly recaps refer to the result whose proof they are currently inside. For example, the final paragraph of the proof of Proposition~\ref{prop:step-016-frontier} says that Proposition~\ref{prop:step-016-frontier} proves the frontier. The preceding argument supplies the substance, so this does not create a mathematical dependency, but the self-reference should be rewritten as a direct conclusion to avoid an appearance of circularity.
2. A log-based TeX verification was unavailable: both ordinary and cache-only Tectonic invocations panicked in the local network runtime before the TeX engine started. Independent static scans found no duplicate labels, missing internal labels, missing BibTeX keys, malformed reference commands, placeholders, or audit scaffolding.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- Mathematical derivations: The setting, accepted sketch, accepted global diagnostic pair, final theorem, and all 16 used accepted step proof/review pairs were compared against the assembly. The accepted derivations are mathematically coherent, including the finite-population tails, DDim descent, mechanism analysis, all-input privacy, marked PAC conversion, and rate eliminations. Acceptance nevertheless fails because the public appendix omits inputs needed to reproduce those derivations.
- Statement self-containedness: The main theorem exposes its primitive assumptions, learner interfaces, constants, probability mode, horizon mode, and loss. The appendix is not self-contained because Steps 004 and 006--012 omit dependency blocks that their theorem statements or proofs still call by number.
- Main theorem constants and notation: The VC arm consistently states $K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}$, the old arm states $K_{\mathrm O}\Lambda^6R_{\mathrm{old}}$, and the minimum uses $K_*:=\max\{8,K_{\mathrm O},K_{\mathrm V}\}$ with exponent 6. Their allowed dependence is stated and no exposed polynomial factor is hidden in these constants.
- Derivation-over-notation: The retained local derivations generally expose their algebra and probabilistic steps rather than replacing them with aliases. The missing source interfaces in Blocking Issue 1 are material derivation inputs, not optional notation cleanup.
- Explicit-rate contract: The ceiling-aware VC calculation, old-arm $d^5$ calculation, finite-arm $\log^+|C|$ calculation, and deterministic minimum were checked. The public corollary's common schedule $\delta K_*\Lambda^6R_{\mathrm{VC}}\to0$ is stronger than and explicitly shown to imply the VC-arm condition $\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0$; this is valid rather than rate drift.
- Appendix full derivations: All 16 used accepted sources were checked against their appendix bodies. Steps 013 and 015 preserve their high-risk derivations, but Steps 004 and 006--012 fail the full-derivation gate through the concrete missing formulas and interfaces identified above.
- Quantifiers and constants: The accepted arguments preserve universal $D,c$ quantifiers, all-input replace-one privacy including nonrealizable labels, fixed universal constants, and the distinction between pre-sampling parameters and generated events. No unsupported parameter-dependent constant was found in the retained derivations.
- Probability or convergence modes: Step 013 first proves producer-block occurrence pathwise and only then conditions on the mark; it does not assume independence after conditioning, and its core-event bound comes through Step 010. Step 015 proves privacy without Step 011 or a utility event and includes both neighbor directions, finite-transcript submeasure composition, terminal postprocessing, and common-partition mixing. The PAC statements remain unconditional iid high-probability claims.
- Boundary cases: The assembly correctly separates $d=0$ before formulas containing $d^{-1}$, verifies $1\le v\le d$ on $d\ge1$, treats $v=d$, fixed and scheduled $\delta$, and distinguishes finite $C$ from the $+\infty$ finite-arm cost for infinite $C$.
- Hidden subclaims: No additional theorem-level mathematical lemma was smuggled into the final main-proof paragraph. The principal hidden-input problem is the omitted accepted dependency material in Blocking Issue 1; the redundant self-referential recaps are nonessential presentation defects.
