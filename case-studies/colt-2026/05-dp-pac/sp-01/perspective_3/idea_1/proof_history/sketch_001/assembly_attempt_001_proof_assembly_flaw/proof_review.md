# Proof Review

## Formalized Setting

- Basic setup:
  - Write \([q]=\{1,\ldots,q\}\) for a positive integer \(q\). For integers \(k\ge 2\) and \(N\ge 2\), let
    \[
    X_{k,N}=[k]\times[N],\qquad
    \tau_t(x)=\mathbf 1\{x\ge t\}\quad(t\in[N+1],\ x\in[N]),
    \]
    and define the tagged threshold-product class
    \[
    C_{k,N}=\left\{c_{\boldsymbol t}:\boldsymbol t=(t_1,\ldots,t_k)\in[N+1]^k\right\},
    \qquad c_{\boldsymbol t}(i,x)=\tau_{t_i}(x).
    \]
    The output space is the full improper hypothesis space \(\mathcal H_{k,N}=\{0,1\}^{X_{k,N}}\). No properness, computational, or representation restriction is imposed on a learner.
  - For a probability distribution \(P\) on \(X_{k,N}\), a target \(c_{\boldsymbol t}\in C_{k,N}\), and \(h\in\mathcal H_{k,N}\), define the population 0-1 risk
    \[
    R_P(h,c_{\boldsymbol t})
      =\Pr_{Z\sim P}\!\left[h(Z)\ne c_{\boldsymbol t}(Z)\right].
    \]
    Let \(P^{c_{\boldsymbol t}}\) denote the realizable labeled law of \((Z,c_{\boldsymbol t}(Z))\) for \(Z\sim P\). Thus \(S\sim(P^{c_{\boldsymbol t}})^n\) always means \(n\) i.i.d. labeled examples.
  - A candidate learner at sample size \(n\) is any randomized map
    \[
    A:(X_{k,N}\times\{0,1\})^n\longrightarrow\mathcal H_{k,N}.
    \]
    Two size-\(n\) labeled datasets are adjacent, written \(S\simeq S'\), when they differ in at most one row by replacement. Differential privacy refers to this central one-record adjacency relation.
  - Use the natural logarithm for every unadorned \(\log\). Define
    \[
    \log_2^* u=\min\{j\in\mathbb Z_{\ge0}:\log_2^{(j)}u\le1\},
    \qquad
    m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
    \]
    Define the tower convention exactly by
    \[
    \operatorname{Tow}_2(1)=2,
    \qquad
    \operatorname{Tow}_2(r+1)=2^{\operatorname{Tow}_2(r)}.
    \]
  - The construction has the exact structural identities
    \[
    \operatorname{VC}(C_{k,N})=k,
    \qquad
    \operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor,
    \qquad
    |C_{k,N}|=(N+1)^k.
    \]
    These are consequences to be justified from the displayed class definition, not theorem-facing assumptions. On the tower diagonal \(k=r\), \(N=\operatorname{Tow}_2(r)\), \(r\ge2\), they give
    \[
    \operatorname{VC}=r,
    \quad
    \operatorname{LD}=r\operatorname{Tow}_2(r-1),
    \quad
    \log_2^*\operatorname{LD}=\Theta(r),
    \quad
    \log|C|=\Theta\!\left(r\operatorname{Tow}_2(r-1)\right),
    \]
    while \(\log_2^*N=r\).
  - The distribution-free quantifier below is universal over every fixed \(P\) and every fixed \(c_{\boldsymbol t}\). It is distinct from the intended proof's choice of a hard distribution. For that proof only, a one-block realizable instance is a pair \((t,Q)\), with \(t\in[N+1]\) and \(Q\) a probability distribution on \([N]\). If a hard prior \(\mu_{N,m_{n,k}}\) over such pairs is derived at the simulated budget \(m_{n,k}\), then independently drawn pairs \((t_i,Q_i)_{i=1}^k\) induce the fixed realizable product instance
    \[
    P_{\boldsymbol Q}(i,x)=\frac1k Q_i(x),
    \qquad c_{\boldsymbol t}(i,x)=\tau_{t_i}(x).
    \]
    Averaging over such analysis-side draws is permitted only after applying the PAC premise to each fixed realization and must ultimately yield a fixed hard instance.
  - No hard prior, minimax bridge, hidden-coordinate tensorization, decoder guarantee, exchangeability identity, overflow estimate, or input-to-simulation coupling is assumed. They are derived proof obligations. In particular, a proof must: derive a finite minimax prior from the unrestricted one-block threshold lower bound after converting its constant-failure guarantee to expected loss; hide the input block at an independent \(J\sim\operatorname{Unif}[k]\) and derive the average-block error relation for the restriction \(h_J(x)=h(J,x)\); prove the \(\operatorname{Bin}(n,1/k)\) usage law and an overflow loss small enough at budget \(m_{n,k}\); and construct a simulation in which each input record enters at most one output row, proving that adjacent input datasets induce adjacent simulated product datasets. The checks at \(k=2\) and \(k=3\) are feasibility witnesses for this proposed bridge, not assumptions replacing its proof.
  - Quantitative mode: the exposed variables are \(k,N,n,\varepsilon,\delta\), with \(m_{n,k}\), \(\operatorname{VC}\), \(\operatorname{LD}\), \(\log_2^*\), and \(|C|\) displayed explicitly. The theorem is a fixed-size, pointwise-in-candidate-\(n\), nonasymptotic lower-bound implication; \(n\) is neither expected nor a stopping time, and the privacy restriction is evaluated at that same candidate \(n\). PAC probability is over the i.i.d. sample and the learner's internal randomness, whereas the lower-bound implication itself is deterministic. The metric is population 0-1 risk, not empirical or excess risk. On the diagonal, asymptotics are as \(r\to\infty\) with the tower/log conventions and all theorem constants fixed; every hidden \(\Omega\) or \(\Theta\) constant is independent of \(r,k,N,n,\varepsilon,\delta\).
- Technical assumptions:
  - `assump:candidate-regime` (Primitive candidate-size regime): Relative to fixed positive constants \(c_\delta,\varepsilon_0\) and an integer \(N_0\ge2\), the candidate parameters obey
    \[
    k\ge2,\quad N\ge N_0,\quad n\in\mathbb Z_{\ge1},\quad
    0<\varepsilon\le\varepsilon_0,
    \]
    and
    \[
    0<\delta\le
    \min\left\{
      \frac{1}{n\log(n+1)},
      \frac{c_\delta}{m_{n,k}^2\log(m_{n,k}+1)}
    \right\}.
    \]
    This is a primitive scalar condition evaluated before the algorithm is run. The first term enforces the source convention \(\delta\ll1/n\); the second is the cited one-block threshold regime at the simulated budget and is not replaced by a stronger uniform condition in \(n\).
  - `assump:central-dp` (Central approximate differential privacy): For every \(S\simeq S'\) in \((X_{k,N}\times\{0,1\})^n\) and every event \(E\subseteq\mathcal H_{k,N}\),
    \[
    \Pr[A(S)\in E]\le e^\varepsilon\Pr[A(S')\in E]+\delta,
    \]
    where the probabilities are over only the internal randomness of \(A\).
  - `assump:distribution-free-realizable-pac` (Arbitrary-distribution realizable PAC guarantee): Relative to fixed constants \(\alpha_0,\beta_0\in(0,1/2)\), for every \(\boldsymbol t\in[N+1]^k\) and every probability distribution \(P\) on \(X_{k,N}\),
    \[
    \Pr_{\substack{S\sim(P^{c_{\boldsymbol t}})^n\\ A}}
      \left[R_P\bigl(A(S),c_{\boldsymbol t}\bigr)\le\alpha_0\right]
      \ge1-\beta_0.
    \]
    This premise includes no distributional promise beyond realizability and i.i.d. sampling and applies to arbitrary hypotheses in \(\mathcal H_{k,N}\).

## Formalized Goal

- Goal statement: There exist absolute constants \(a,c_\delta,\varepsilon_0>0\), \(\alpha_0,\beta_0\in(0,1/2)\), and \(N_0\in\mathbb Z_{\ge2}\) such that, for every integer tuple \(k\ge2\), \(N\ge N_0\), \(n\ge1\), every \((\varepsilon,\delta)\) satisfying `assump:candidate-regime`, and every randomized, computationally unrestricted map \(A:(X_{k,N}\times\{0,1\})^n\to\mathcal H_{k,N}\), if \(A\) satisfies `assump:central-dp` and `assump:distribution-free-realizable-pac`, then
  \[
  n\ge a\,k\log_2^*N.
  \]
  The constants are chosen once and for all: \(a\) may depend only on the fixed absolute privacy, accuracy, and confidence constants, and none depends on \(k,N,n,\varepsilon,\delta\). Consequently, for all sufficiently large \(r\), on \(k=r\), \(N=\operatorname{Tow}_2(r)\), the same single theorem gives
  \[
  n=\Omega(r^2)
   =\Omega\!\left(\operatorname{VC}(C_{r,N})\,
                    \log_2^*\operatorname{LD}(C_{r,N})\right).
  \]
  This exceeds by an unbounded factor the existing generic additive lower-bound expression \(\operatorname{VC}+\log_2^*\operatorname{LD}=\Theta(r)\) on this sequence, while remaining far below both \(\log|C|\) and the source milestone \(\operatorname{VC}\,2^{\log_2^*\operatorname{LD}}\).

## Reviewed Roadmap

The accepted sketch has sixteen dependency-ordered steps. `step_001` proves the exact cardinality, VC, and Littlestone identities. `step_002`--`step_004` transport the unrestricted ALMM threshold lower bound, convert it to a strict expected-loss game, and construct a finite learner-independent minimax prior. `step_005`--`step_009` calibrate the source regime, derive a pointwise PAC expectation upper bound, define the exact arbitrary-output restriction, prove the hidden-coordinate identity, and bound overflow. `step_010`--`step_012` construct the total one-use simulator, couple it to the ideal product experiment, and prove exact one-charge replacement privacy. `step_013`--`step_015` transfer the hard-prior gap to product risk, extract a fixed hard instance, and close the nonasymptotic contradiction. `step_016` gives the tower-diagonal Rate Specialization Bridge and records the unresolved larger scales. The accepted global diagnostic organizes these into eight theorem blocks without changing any step interface. All sixteen current step proofs have status `COMPLETE`; all sixteen bound step reviews have status `ACCEPTED`, `Smallest Retry Target = None`, `Blocking Issues = None`, and contain the current proof SHA-256.

## Attempted Claim

There exist absolute constants $a,c_\delta,\varepsilon_0>0$,
$\alpha_0,\beta_0\in(0,1/2)$, and $N_0\in\mathbb Z_{\ge2}$ such that,
for every $k\ge2$, $N\ge N_0$, $n\ge1$, every privacy pair satisfying
`assump:candidate-regime`, and every randomized, computationally
unrestricted, possibly improper learner
$A:(X_{k,N}\times\{0,1\})^n\to\mathcal H_{k,N}$, if $A$ satisfies
`assump:central-dp` and `assump:distribution-free-realizable-pac`, then
\[
n\ge a k\log_2^*N.
\]
The assembled theorem fixes
$\varepsilon_0=0.1$ and $\alpha_0=\beta_0=2^{-13}$, preserves the full
two-conjunct restriction on $\delta$, and is pointwise in the fixed candidate
sample size under replacement central DP and population zero-one risk.

Consequently, for $k=r$ and $N=\operatorname{Tow}_2(r)$, all sufficiently
large $r$ satisfy
\[
n\ge ar^2
\quad\text{and}\quad
n\ge a\,\operatorname{VC}(C_{r,N})
          \log_2^*\operatorname{LD}(C_{r,N}).
\]
The bundle also proves the exact VC, Littlestone-dimension, and cardinality
identities on this diagonal and the comparison with the additive scale. It
explicitly leaves unresolved the stronger
$\Omega(\operatorname{VC}2^{\log_2^*\operatorname{LD}})$ and
$\Omega(\log|C|)$ lower bounds and any general combinatorial
characterization.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Specialized reviewer outcomes: structural, rigor, citation, and adversarial all returned contract-valid `BLOCKING` verdicts with `Suggested Repair Depth = assembly` and `Smallest Candidate Repair Target = /proof-assembly`. Their bound SHA-256 values are `cc3dd8820c2a66a6d0aaa71b6a73f02366cc6a014e7287ea1c681332ae8f45dc`, `d0a1fcf832ba36d91fdef3fae1201838a2dfd5c1d7a980a76724288deb51633e`, `85bb46879e1afbfad71d6ed6adeee46fc8eab3ac8f183a651222bbbee3fe77c7`, and `d49d1a9252e4a0c49d8da22f096fcc79b9f33afabefab00e83a23594e30f863c` respectively. There is no depth disagreement to resolve.
- Goal coverage: PASS. The attempted claim matches `setting.md`, including candidate-wise quantifier order, the two-conjunct delta restriction, fixed-size replacement central DP, distribution-free realizable population risk, and arbitrary randomized improper learners. It is consistently labeled `material_partial` and does not claim to solve the full open problem.
- Roadmap or step coverage: PASS at the accepted-proof layer. The accepted sketch and global review cover `step_001` through `step_016`; all current proof/review pairs are terminal, accepted, and hash-bound. No specialized or aggregate finding identifies a step-, sketch-, or idea-level mathematical defect.
- Proof-details audit: BLOCKING at assembly depth. The accepted mathematical chain survives the independent lower-bound, minimax, simulator, coupling, privacy, extraction, and tower checks, but the public appendix drops source-local definitions and concluding assembly arguments needed to make that chain paper-facing and self-contained.
- Adversarial stress test: BLOCKING at assembly depth. Endpoint thresholds, point masses, arbitrary improper outputs, prior-aware learner code, repeated occurrences, `U=M` versus `U>M`, `k=2,3`, `M=8`, privacy-cap boundaries, and tower endpoints do not break the accepted proof. The canonical Step 4 statements nevertheless leave `(H)` and `(HP)` undefined.
- Public-TeX compile/support: The canonical directory contains the nine required files, `main.tex` uses all five content files plus `ims.bst` and `reference.bib`, and the specialist isolated build reached a PDF/XDV-equivalent TeX completion with no TeX error, undefined explicit reference, or undefined citation. That build reported repeated equation-destination warnings and overfull boxes. A fresh aggregate-side isolated rerun could not enter TeX because the local Tectonic binary panicked in its cached-resource HTTP runtime; this environment failure does not clear the visible source blockers or contradict the specialist build.
- LaTeX export structure/provenance gate: The required section order, three stable numbered assumptions, sixteen appendix subsections, final main-theorem proof subsection, allowed theorem environments, and canonical file set are present. Static scans found no workflow paths, forbidden claim/hypothesis/invariant environments, audit scaffolding, placeholders, malformed command fragments, duplicate `\label` values, or unresolved explicit `\ref`/`\eqref` keys. The gate still fails because theorem-critical source-local numeric aliases are undefined or ambiguous and subsection references are used as proof authority.
- Main theorem self-containedness: PASS. The theorem uses only setup/preliminary notation and the three numbered assumptions, states constants and quantifier order before use, gives the candidate and diagonal conclusions, and does not depend on appendix-local labels or an admissibility dictionary.
- Assumption provenance gate: PASS. The public theorem assumes only the three primitive conditions in `setting.md`; the hard regime, prior, overflow control, one-use property, privacy certificate, risk transfer, and fixed hard instance remain derived results.
- Redundant public prose gate: PASS. No forbidden audit scaffolding, sketch-row fields, workflow narration, template filler, or mechanical `the the`/`exact the` debris was found. The short prose after Steps 6 and 16 is instead insufficient to preserve their accepted target assemblies.
- Proof-step notation surface gate: PASS at the main-theorem interface. Proof-local kernel, coupling, overflow, and rate dictionaries remain appendix-local. The failure is missing definitions/references inside the appendix, not an excessive public theorem dictionary.
- Theorem readability and notation economy: PASS for the main theorem and preliminaries. The theorem has a reader-facing nonasymptotic statement and explicit diagonal specialization. As a nonblocking wording concern, the abstract's phrase "fixed constant ... privacy" should distinguish fixed constant epsilon from candidate-dependent shrinking delta.
- Explicit-rate contract: PASS at the accepted theorem layer. Exposed variables, fixed quantities, deterministic/fixed-size/population-risk modes, both delta conjuncts, hidden-constant independence, and the `r`-independent tower specialization are stated.
- Rate Specialization Bridge: PASS as a named local result. `Proposition~\ref{prop:step-016-rate-bridge}` gives the auxiliary choice, admissibility checks, exact simplification, probability mode, fixed index, and final rate. Its accepted `Target-Step Assembly` is not fully translated, which is recorded as a separate appendix-coverage blocker.
- Baseline-reduction check: PASS. Unrestricted improper one-block hardness, endpoint concepts, exact nonoverflow behavior, fixed-instance PAC, replacement adjacency, and the `k=2,3` zero-overflow cases are preserved without a weaker surrogate.
- LaTeX appendix full-derivation gate: BLOCKING. The audit covered all sixteen used steps rather than a sample: every source local-unit count matches a theorem-style appendix unit count, but source-to-appendix preservation still fails. The first concrete missing obligation is Step 4's source-local `(H)`/`(HP)` interface; Step 6's finite-prior averaging conclusion and Step 16's full target-step assembly are also unaccounted for, and Step 4/Step 8 cited-tool statements are invoked without public restatement or citation.
- LaTeX export citation/reference gate: BLOCKING internally. Both external uses of `AlonLivniMalliarisMoran2019` have the matching BibTeX entry, all 114 explicit labels are unique, and all 335 explicit references resolve. However, the appendix contains 221 manual equation tags with only 36 distinct values; 30 values repeat across 215 occurrences. Bare numeric dependencies and `Section~\ref{app:step-008}` therefore do not provide unique theorem-style proof authority.
- LaTeX export synchronization: BLOCKING. `assembly_report.md` has bound SHA-256 `e3fec48c2a0e0ffd4bb76ddbe115e0597a4f5dd6f19accc657d3c5125126b363`, records `Status = COMPLETE` and `Blockers = None`, and binds appendix SHA-256 `331aa87c385a5d748d03b223609b2f22ea1d2430bf20da6d266ebf1204901d2d`. Its claims of complete target-assembly translation and no multiply defined equation destinations/overfull boxes conflict with the current bundle and the four terminal diagnostics. The report must be regenerated after the assembly repair.

## Critical Issues

1. **Undefined and ambiguous theorem-critical interfaces.** Sources: structural, rigor, citation, adversarial, and aggregate theorem-style/reference gates. Locations: `latex_template/5_appendix.tex` Step 4 (`(H)` at lines 748/1061 and `(HP)` at lines 1070/1162), Steps 10--13 (including `A` "in (4)", `(t,Q)` "in (2)", the occurrence map `(6)`, source-cap/privacy interfaces `(5)`, `(7)--(9)`, and later substitutions), and the repeated `\tag{...}` system throughout. Defect: source-local definitions were omitted while their numeric aliases were retained, and the same tag values are reused across subsections. Downstream effect: public theorem-style statements are not standalone, mathematical dependencies can point to unrelated displays, and compiled equation destinations collide. Selected repair depth: `assembly`. Candidate target: `/proof-assembly`. Restore or inline every consumed interface and replace bare numeric aliases with unique `\label`/`\eqref` or named theorem-style references without changing accepted claims.
2. **Incomplete accepted target-step assembly translation.** Sources: structural reviewer and aggregate full-derivation gate. Locations: Step 6 source `Target-Step Assembly` versus appendix lines 1614--1618, and Step 16 source `Target-Step Assembly` versus appendix lines 4482--4485. Defect: Step 6 omits the finite-prior averaging consequence after the pointwise bound, while Step 16 reduces the exact tower inversion, structural identities, two-sided log-star scale, fixed-index rate implication, and remaining-gap conclusion to two sentences outside a proof environment. Downstream effect: the appendix does not preserve every accepted step's concluding proof argument even though the local theorem units are present. Selected repair depth: `assembly`. Candidate target: `/proof-assembly`. Restore both assemblies as substantive concluding proof text in allowed proof environments.
3. **Missing public support for invoked proof tools and invalid internal proof authorities.** Sources: citation reviewer and aggregate citation/theorem-reference gates. Locations: Step 4's use of finite-dimensional strong separation near appendix line 944; Step 8's "finite conditional-expectation identity restated above" near lines 2000/2016; and Step 11's uses of `Section~\ref{app:step-008}` near lines 2996/3231. Defect: the accepted source steps contain the needed restated tool statements and mappings, but assembly omitted them; a subsection is also cited where a named theorem-style dependency is required. Downstream effect: the public citation/evidence chain is incomplete despite the validity of the accepted source arguments. Selected repair depth: `assembly`. Candidate target: `/proof-assembly`. Integrate the exact statements/proofs or BibTeX-backed citations into allowed statements/proofs and cite named results rather than sections.
4. **Assembly report and public bundle are unsynchronized.** Sources: structural reviewer and aggregate assembly-report gate. Location: `assembly_report.md` status, blockers, source-coverage, and compilation notes. Defect: the report declares `COMPLETE`, `Blockers = None`, complete target-assembly coverage, and no multiply defined references or overfull boxes, while the current bound appendix has the blockers above and the validated specialist build reports duplicate equation destinations and overfull boxes. Downstream effect: the report cannot certify this bundle for final acceptance or copying. Selected repair depth: `assembly`. Candidate target: `/proof-assembly`. Regenerate the report against the repaired canonical bundle and record the actual compile results.

## Failure-Type Rationale

Every controlling issue was introduced by translation and presentation of already accepted material. The current accepted step proofs contain the missing `(H)`/`(HP)` definitions, tool statements, finite-prior averaging argument, and full tower target assembly; no blocker requires a new local lemma, changed step claim, dependency, sketch bridge, theorem assumption, progress type, or idea. Therefore `assembly` is both the deepest required repair and the smallest sound repair depth. Routing to `/proof-step`, `/proof-sketch`, or `/subagent-idea-generator` would discard accepted work without addressing a deeper defect.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
