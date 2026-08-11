# Proof Review

## Formalized Setting

- Basic setup:
  \(\mathcal X=\{-1,+1\}^n\), \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), and \(\Delta(\mathcal X)\) is the set of distributions on \(\mathcal X\). Fix \(s_0=\operatorname{sign}(0)\in\{-1,+1\}\) and use
  \[
  \operatorname{sign}_{s_0}(z)=\begin{cases}+1&z>0,\\-1&z<0,\\s_0&z=0.\end{cases}
  \]
  For \(\varphi:\mathcal X\to\mathbb R^d\), \(w\in\mathbb R^d\), \(\mathcal D\in\Delta(\mathcal X)\), and \(h\in\mathcal H\),
  \[
  R_{\mathcal D,h}(w,\varphi)=\Pr_{x\sim\mathcal D}\!\left[\operatorname{sign}_{s_0}(\langle w,\varphi(x)\rangle)h(x)<0\right].
  \]
  The probabilistic dimension complexity is
  \[
  \operatorname{dc}_{\alpha}(\mathcal H)=\min\left\{d\in\mathbb N_0:\ \exists\mathcal P\ \forall\mathcal D\in\Delta(\mathcal X)\ \forall h\in\mathcal H,\ \mathbb E_{\varphi\sim\mathcal P}\left[\inf_{w\in\mathbb R^d}R_{\mathcal D,h}(w,\varphi)\right]\le\alpha\right\},
  \]
  where the law is selected before the later distribution and target, and the fixed tie label makes the zero score nonvacuous.

- Learner and feature construction: use the bias-free fully connected ReLU network with \(n_0=n,n_1,\ldots,n_{L-1},n_L=1\), \(1\le L\), parameter count \(S=\sum_{\ell=1}^L n_\ell n_{\ell-1}\), and \(f_\theta\) obtained from \(z_0=x\), \(u_\ell=\theta_\ell z_{\ell-1}\), \(z_\ell=\max\{0,u_\ell\}\) for hidden layers, and \(f_\theta=\theta_Lz_{L-1}\). The fixed source kink selector is \(\rho_\kappa(a)=1\) for \(a>0\), \(0\) for \(a<0\), and \(\kappa\) at zero, with \(\kappa\in[0,1]\), and \(\nabla_\theta^{(\kappa)}\) is the resulting selected back-propagation derivative. Entries are initialized independently as \(\mathcal N(0,1/n_{\ell-1})\). For every later \((\mathcal D,h^\star)\), independent samples \(x^{(0)},\ldots,x^{(T-1)}\sim\mathcal D\) drive the exact all-layer logistic update
  \[
  \theta^{(t+1)}=\theta^{(t)}-\eta\nabla_\theta^{(\kappa)}\ell(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})),\qquad \ell(a)=\log(1+e^{-a}).
  \]
  The prescribed score, classifier, and strict error are
  \[
  A_{\mathcal D,h^\star}(x)=\sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x),\quad \widehat h_{\mathcal D,h^\star}=\operatorname{sign}_{s_0}(A_{\mathcal D,h^\star}),\quad \mathcal L_{\mathcal D,h^\star}=\Pr_{x\sim\mathcal D}[\widehat h_{\mathcal D,h^\star}(x)h^\star(x)<0].
  \]

- Static tube and path law: \(B_\infty(\theta^{(0)},r)=\{\theta:\|\theta-\theta^{(0)}\|_\infty\le r\}\). For \(L\ge2\), \(M_r(\theta^{(0)})\) is the infimum of \(|u_{\ell,j}(\theta,x)|\) over this ball, all \(x\), and all hidden coordinates; for \(L=1\), \(M_r=+\infty\). \(G_r(\theta^{(0)})\) is the supremum on the same ball and all \(x,y\in\{-1,+1\}\) of the coordinate-sup norm of the selected logistic gradient. Let
  \[
  E_r=\{M_r(\theta^{(0)})>0,\ \eta T G_r(\theta^{(0)})\le r\}.
  \]
  Put \(\mathcal I_{\rm path}=\prod_{\ell=0}^{L-1}[n_\ell]\) and \(d_{\rm path}=\prod_{\ell=0}^{L-1}n_\ell\). For \(p=(i_0,\ldots,i_{L-1})\),
  \[
  [\varphi_{\theta^{(0)}}(x)]_p=x_{i_0}\prod_{\ell=1}^{L-1}{\bf1}\{u_{\ell,i_\ell}(\theta^{(0)},x)>0\},
  \]
  and \(\mathcal P_{\rm gate}\) is its pushforward law under the Gaussian initialization. It is defined on both \(E_r\) and \(E_r^c\).

- Primitive assumptions (the stable ids are those in setting.md):
  - 'assump:fixed-source-witnesses': \(0\le\varepsilon<1/4\), \(T\ge1\), \(\eta>0\), and one architecture, \(S,\eta,T\), and the fixed \((s_0,\kappa)\) protocol are selected before every \((\mathcal D,h^\star)\).
  - 'assump:universal-expected-success': for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h^\star\in\mathcal H\), the joint expectation over Gaussian initialization and the independent \(T\) samples satisfies \(\mathbb E[\mathcal L_{\mathcal D,h^\star}(\widehat h_{\mathcal D,h^\star})]\le\varepsilon\).
  - 'assump:constant-depth': a universal constant \(L_0\) is fixed independently of all problem and learner parameters, and \(1\le L\le L_0\).
  - 'assump:robust-tube': \(r>0\), \(0\le\delta_0\le\varepsilon\) are fixed before initialization, distribution, target, and samples, and \(\Pr_{\theta^{(0)}}(E_r)\ge1-\delta_0\). This is only a static event premise, not trajectory containment or gate stability.

The source-alignment metadata labels this branch 'conditional' and material: it preserves the universal learner premise and exact protocol but adds the explicit static tube and constant-depth restriction. It does not claim the broader unconditional deterministic source conclusion, general-depth result, or exactification on \(E_r^c\).

## Formalized Goal

In exact-goal mode for the conditional branch, prove with the one target- and distribution-independent law \(\mathcal P_{\rm gate}\) that, for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}\left[\inf_{w\in\mathbb R^{d_{\rm path}}}R_{\mathcal D,h}(w,\varphi)\right]\le\varepsilon+\delta_0.
\]
Consequently prove
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\le S^{L_0},\qquad \operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0},
\]
with the exact expectation, fixed finite-horizon, coordinate/tie-resolved modes above. The \(2\varepsilon\) statement uses only \(\delta_0\le\varepsilon\).

## Reviewed Roadmap

The accepted sketch/global artifacts give seven dependency-ordered steps: (1) derive a finite exact fixed-\(\kappa\) gradient envelope on the static ball; (2) induct all-history closed-tube containment from \(D_{t+1}\le D_t+\eta G_r\); (3) use continuity, the positive margin, and IVT to freeze all hidden gates; (4) expand every iterate and the latter-half aggregate in the initialization-gate path map, preserving zero-score ties; (5) compare the fixed-feature infimum pointwise with each path-dependent feasible coefficient before sample averaging; (6) prove finite-map measurability and pushforward equality, split \(E_r/E_r^c\), and charge the complement by \(\delta_0\) to obtain the unconditional law witness; and (7) count paths and apply \(\varepsilon+\delta_0\le2\varepsilon\). The sketch and global proof reviews are accepted, and every step proof/review pair is attempt 1 and ACCEPTED.

## Attempted Claim

Under Assumptions 'assump:fixed-source-witnesses', 'assump:universal-expected-success', 'assump:constant-depth', and 'assump:robust-tube', the single unconditional initialization-gate law \(\mathcal P_{\rm gate}\) satisfies, for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\),
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}\left[\inf_{w\in\mathbb R^{d_{\rm path}}}R_{\mathcal D,h}(w,\varphi)\right]\le\varepsilon+\delta_0.
\]
Consequently,
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\le S^L\le S^{L_0},\qquad \operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
\]
The claim is conditional, expected-risk, tie-resolved, fixed-horizon, and has no hidden multiplicative constant.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The attempted claim matches `setting.md`: one unconditional initialization-gate law is fixed before arbitrary \((\mathcal D,h)\), the expected tie-resolved risk is bounded by exactly \(\varepsilon+\delta_0\), and the path-count and \(2\varepsilon\) specializations are retained. The source-direction classification remains explicitly `conditional` and material; this does not solve the broader unconditional deterministic source target.
- Roadmap or step coverage: The accepted sketch and accepted global diagnostic provide an acyclic seven-step dependency graph. All seven current proof artifacts and matching accepted step reviews were loaded. Every required step and its target assembly is represented in the public appendix.
- Proof-details audit: I independently compared every accepted source proof body, every cited-result application, and every target-step assembly against the matching appendix subsection. All 16 accepted non-atomic units are represented (2, 2, 3, 2, 2, 3, and 2 across steps 001--007), with substantive derivations, constants, inequalities, induction transitions, boundary cases, and final compositions. The repaired step-006 appendix now includes the explicit Borel one-step map, finite state-map composition induction through time \(T\), score/tie/risk composition, and tower use.
- Specialized-review contract gate: Structural and rigor are contract-valid `PASS`; citation and adversarial are contract-valid `BLOCKING`, each with a numbered issue, `Suggested Repair Depth = assembly`, and `Smallest Candidate Repair Target = /proof-assembly`. No diagnostic artifact is missing or malformed. The disagreement is resolved by the blocking findings under the deepest-issue rule.
- Adversarial stress test: The accepted mathematics survives \(L=1\), \(T=1\), \(S=1\), zero gradients, terminal equality \(T\eta G_r=r\), zero/canceling scores, hidden kinks and every fixed \(\kappa\in[0,1]\), nonattained infima, deterministic or zero-mass sample tuples, \(\delta_0=0\), \(\varepsilon=0\), and arbitrary behavior on \(E_r^c\). No step-, sketch-, or idea-level obstruction was found.
- LaTeX export structure/provenance gate: The five content files, `main.tex`, `arxiv.sty`, `ims.bst`, and `reference.bib` exist; the entry loads the required files in order; the setup has four stable numbered assumptions; the appendix has seven step subsections and a final main-theorem proof; and no workflow provenance, forbidden audit scaffolding, placeholder, disallowed public claim/hypothesis/invariant environment, or malformed bare reference was found. The recorded post-repair log reports a successful 15-page compile with only two shared-style font-shape warnings.
- Main theorem self-containedness: PASS. `3_main.tex` uses only setting/preliminary notation, inline quantities, and numbered assumptions. It does not cite appendix-local labels, step IDs, local units, or generated invariants as assumptions.
- Assumption provenance gate: PASS. The public theorem lists only the four primitive assumptions. Gradient finiteness, trajectory containment, gate stability, path coefficients, measurability, pushforward, and the event split are derived in named appendix results before use; the complement is charged rather than silently excluded.
- Redundant public prose gate: PASS. No sketch-row metadata, audit labels, workflow paths, reviewer decisions, or mechanical translation debris appears in the public TeX.
- Proof-step notation surface gate: PASS. Auxiliary envelopes, histories, coefficients, finite tables, and event-split functions remain appendix-local or proof-local; the public theorem exports only setting-derived objects. The repaired proposition scopes explicitly state their histories, recursions, distribution/target domains, and sampling order.
- Theorem readability and notation economy: PASS. The main theorem is concise and reader-facing, with technical envelopes and event-split helpers confined to the appendix and no opaque admissibility dictionary.
- Explicit-rate contract: PASS. The public text exposes the exact additive \(\delta_0\) charge, \(d_{\rm path}\le S^L\le S^{L_0}\), and \(\varepsilon+\delta_0\le2\varepsilon\), together with fixed variables, finite-horizon and expectation modes, tie-resolved risk, norm convention, and no hidden multiplicative constant.
- Rate Specialization Bridge: PASS. Named appendix results prove the factorwise path bound and the threshold monotonicity/\(2\varepsilon\) bridge with displayed inequalities and boundary checks; no prose-only absorption is used.
- Baseline-reduction check: PASS. The gate-free \(L=1\), \(S=1\), zero-gradient, zero-score, \(\delta_0=0\), and \(\varepsilon=\delta_0=0\) reductions preserve the stated law, metric, tie convention, and thresholds. The broader source target is explicitly excluded rather than weakened silently.
- LaTeX appendix full-derivation gate: PASS after exhaustive, not representative, source-to-appendix comparison of all seven steps and all 16 local units. Definitions, displayed recurrences, inequalities, continuity/IVT arguments, path expansion, finite averaging, Borel state induction, event charge, boundary cases, cited-result mappings, and target-step assemblies are all present in allowed proof environments.
- LaTeX export citation/reference gate: BLOCKING. There are 102 manual `\tag{...}` equation numbers across the public bundle but no equation `\label{...}` targets and no `\eqref{...}` references. Prose cites proof-critical displays by hard-coded numbers, including `(7)`, `(9)`, `(11)--(12)` in `2_preliminary.tex:5--10`, `(18)` in `3_main.tex:36,44`, and `(32)`, `(34)`, `(60)`, `(84)`, `(89)--(92)`, and `(102)` in `5_appendix.tex`. The compile log has no unresolved-reference warning because these are not references at all; the paper-facing traceability contract is nevertheless violated.
- LaTeX export synchronization: BLOCKING only for the equation-reference layer. The `COMPLETE` assembly report and the structural/rigor passes correctly describe the repaired mathematics, but the citation/adversarial blockers identify a public assembly defect. Setting, assumptions, rates, conventions, accepted proofs, and appendix coverage otherwise synchronize exactly.

## Critical Issues

1. Source: citation and adversarial specialized reviews, confirmed by direct aggregate inspection. Locations: `latex_template/1_intro.tex` tags (1)--(17), `2_preliminary.tex:5--10`, `3_main.tex:16,36,44`, and `5_appendix.tex` tags (21)--(102), with concrete proof-critical references at `5_appendix.tex:143--145,492,557,744,869--887,918--921,1007--1017`. Defect: displays are manually numbered with `\tag{...}` but lack unique equation labels, while proof prose repeats those numbers instead of using paper-ready `\eqref{...}`/`\ref{...}` pairs. Downstream effect: equation dependencies cannot be traced robustly under renumbering or independent reading, so the exported proof fails the public internal-citation contract despite compiling without undefined-reference warnings. Selected repair depth: assembly; target: `/proof-assembly`. Add stable labels to cited displays, replace hard-coded locators with named equation references, recompile, and rerun the four specialized reviews and aggregation. This repair must preserve all accepted equations and claims.

## Failure-Type Rationale

The controlling defect is a paper-facing translation problem at assembly depth. The conditional setting and target, seven-step dependency graph, all primitive mechanisms, all accepted step claims, and exhaustive appendix derivations are sound; the two blocking reviewers identify only the missing equation-reference layer. Adding labels and converting numeric prose locators can be done without changing assumptions, algorithm, quantifier order, probability mode, metric, rate, or conclusion. A step, sketch, or idea retry would therefore be deeper than necessary. The correct split-mode route is `PROOF_ASSEMBLY_FLAW` to `/proof-assembly` with `repair_assembly`.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
