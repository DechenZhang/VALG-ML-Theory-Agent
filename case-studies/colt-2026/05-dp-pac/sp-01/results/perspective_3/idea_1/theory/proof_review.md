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

The accepted 16-step roadmap proves exact class parameters (`step_001`), transports and calibrates the unrestricted one-block ALMM threshold lower bound (`step_002`), converts failure probability to a strict expected-loss gap (`step_003`), constructs a finite learner-independent minimax prior (`step_004`), calibrates the candidate and simulated budgets (`step_005`), establishes the pointwise PAC expectation ceiling (`step_006`), and proves the arbitrary-output block restriction (`step_007`).

It then derives the ideal hidden-coordinate law and exact average-risk identity (`step_008`), the binomial usage and overflow certificate (`step_009`), the executable one-use simulator (`step_010`), the actual-to-ideal coupling (`step_011`), the simulator's one-charge privacy certificate (`step_012`), the strict prior-averaged product-risk lower bound (`step_013`), fixed-instance extraction and contradiction (`step_014`), the nonasymptotic closure (`step_015`), and the tower-diagonal rate specialization with unresolved-gap comparison (`step_016`).

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

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The attempted claim matches the authoritative setting in quantifiers, arbitrary improper learner scope, fixed sample size, replacement-DP mode, full two-conjunct \(\delta\) regime, population-risk metric, and conclusion. Source-direction fidelity is `material_partial`, not `full`: the result improves the tower-diagonal additive scale, while the full open problem and its exponential, log-cardinality, universal-upper-bound, and general-characterization targets remain unresolved.
- Roadmap or step coverage: The live setting, sketch, sketch review, global diagnostic, accepted global review, assembly report, appendix, and main theorem match the pinned SHA-256 identities. All 16 current proof artifacts are `COMPLETE`; all 16 reviews are `ACCEPTED`, bind the live proof hashes, and record sketch attempt 1 and unit attempt 1. The dependency graph remains acyclic and producer-before-consumer.
- Proof-details audit: The strict lower-bound chain is synchronized: source failure gives \(>2^{-8}\), overflow is charged once with probability \(<2^{-9}\), selected risk equals product risk, finite extraction removes prior randomness, and the identical fixed-instance PAC expectation is at most \(2^{-12}\). No deeper mathematical or cross-step defect was found.
- Adversarial stress test: Endpoint thresholds, point-mass and boundary distributions, randomized nonmonotone outputs, prior-aware and tag-asymmetric learner code, \(n<k\), \(k=2,3\), \(M=8\), \(U=0\), \(U=M\), overflow, unused changed rows, arbitrary neighboring labels, and the first tower indices are covered by the accepted derivations.
- LaTeX export structure/provenance gate: Exactly the nine canonical files are present. The required five sections, 16 step subsections, and final main-theorem subsection are present; public theorem content uses only lemma, theorem, proposition, corollary, and proof environments. Workflow provenance, audit scaffolding, placeholders, forbidden environments, malformed reference/citation fragments, and the two formerly bare `qquad` tokens are absent.
- Main theorem self-containedness: The theorem statement uses only setup/preliminary notation, its three numbered primitive assumptions, and constants defined before use. It cites no appendix-local result, proof-step ID, or local proof label and presents a concise reader-facing theorem rather than an admissibility dictionary.
- Assumption provenance gate: The public theorem assumes only `assump:candidate-regime`, `assump:central-dp`, and `assump:distribution-free-realizable-pac`. The hard prior, hard regime, product law, overflow event, one-use property, privacy certificate, risk lower bound, and fixed hard vector are derived by named appendix results before use.
- Redundant public prose gate: No copied sketch rows, dependency inventories, accepted-step narration, audit-field prose, or mechanical phrases remain in the public TeX.
- Proof-step notation surface gate: Public notation is limited to stable setting-derived quantities. Minimax coefficients, simulator seeds, occurrence maps, coupling variables, and finite-tube bookkeeping remain appendix-local or proof-local; the step-local invariant is translated as a proved public lemma.
- Theorem readability and notation economy: The main theorem is compact and readable, while technical constants and helper dictionaries remain in named appendix results. Every public constant, threshold, rate, and finite quantity has primitive, cited-wrapper, or named-result provenance.
- Explicit-rate contract: The proof retains \(k,N,n,\varepsilon,\delta,M,r,\operatorname{VC},\operatorname{LD},|C|\), the exact hidden-constant dependence, deterministic/fixed-size mode, PAC probability mode, population-risk norm, full privacy conjunction, strict ceiling/floor-eight arithmetic, and \(r\)-independent diagonal constants. No dependence is silently absorbed.
- Rate Specialization Bridge: Proposition~\(\ref{prop:step-016-rate-bridge}\) fixes \(r_0\), verifies \(T_r\ge N_0\), preserves all candidate assumptions, proves \(\log_2^*T_r=r\), and derives the displayed \(r^2\) and \(\operatorname{VC}\log_2^*\operatorname{LD}\) bounds without prose-only term absorption.
- Baseline-reduction check: The unrestricted improper one-block source interface, endpoint members, exact no-overflow experiment, \(k=2,3\) zero-overflow cases, fixed-instance PAC quantifier, and exact nonasymptotic conclusion are preserved. No baseline conclusion is replaced by a conditional or conservative surrogate.
- LaTeX appendix full-derivation gate: All 16 used steps, not a sample, were compared exhaustively. All 61 accepted local units, every invoked cited-result application and assumption discharge, and every target-step assembly have paper-facing counterparts with substantive proofs. The two extra appendix lemmas supply the locally proved strong-separation and finite-conditional-averaging tools. Source/appendix length differences are fully accounted for by workflow metadata, review tables, self-audits, repeated target summaries, and equation-label conversion; no proof obligation is compressed away.
- LaTeX export citation/reference gate: The public bundle has 321 unique labels, 701 internal reference occurrences with no missing target, and 232 unique display tags. The sole external key, `AlonLivniMalliarisMoran2019`, is present in `reference.bib`; internal proof dependencies use named theorem-style authorities.
- LaTeX export synchronization: A fresh isolated build from only the nine canonical files completed TeX, BibTeX, all required reruns, and PDF generation. The final logs contain no TeX/BibTeX error, undefined or multiply defined reference/citation, duplicate destination, or overfull/underfull box; the generated PDF has SHA-256 `a2858d298056fc8379b098fa0baaf77b51173df1940723f4b75090568f1127fd`. The remaining Wasy font substitutions and cached-package UTF-8 metadata warnings are environment-level and nonblocking.
- Specialized-review resolution: Structural (`5c8a0f36601cb5affc8da176db829c75b28518cfb2dce446f93f23f407c95e63`), rigor (`bbb246b5a23518a4b3865c2c984479c65c44a389436916ad88da218b6e47c810`), citation (`7747a353bbbe09083d22a9f8e091722fdb273dcb5b1d7f73b412dc0e9e92ffd0`), and adversarial (`841b9d6729cab2471a51c0a5b230013586bcb7f54c6746da0ee81772a4208980`) are contract-valid `PASS` reviews with raw-token `None` routing fields. There is no specialized-review disagreement; the adversarial cached-Tectonic warning is nonblocking.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, every aggregate contract gate passes, and the formalized goal is proved by the synchronized paper-ready bundle. No assembly, step, sketch, or idea failure remains, so the aligned failure type is `ACCEPTED`. This accepts only the setting-authorized `material_partial` theorem and does not claim resolution of the full open problem.

## Suggested Next Action

None

## Retry Mode

none
