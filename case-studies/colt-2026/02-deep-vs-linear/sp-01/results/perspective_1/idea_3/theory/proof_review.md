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

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The attempted claim matches `setting.md`: one unconditional initialization-gate law is fixed before arbitrary \((\mathcal D,h)\), the expected tie-resolved risk is bounded by exactly \(\varepsilon+\delta_0\), and the path-count and \(2\varepsilon\) specializations are retained. The source-direction classification remains explicitly `conditional` and material; the proof does not overclaim the broader unconditional deterministic source conclusion.
- Roadmap and dependency coverage: PASS. The accepted sketch and global diagnostic supply an acyclic seven-step dependency graph. All seven attempt-1 proof artifacts and their `ACCEPTED` reviews were checked, and every target-step assembly appears in the public appendix.
- Specialized-review contract gate: PASS. The fresh attempt-3 structural, rigor, citation, and adversarial reviews are all contract-valid `PASS` decisions. Each records `Blocking Issues: None`, `Suggested Repair Depth: None`, and `Smallest Candidate Repair Target: None`; no specialist artifact is missing or malformed.
- Exhaustive proof-details audit: PASS. All 16 accepted non-atomic units are represented in the distribution 2, 2, 3, 2, 2, 3, and 2 across steps 001--007. The appendix contains their definitions, recurrences, inequalities, induction transitions, continuity/IVT arguments, path expansion, finite averaging, Borel state induction, event charge, boundary cases, cited-result mappings, and all seven target-step assemblies.
- Retained mathematical repairs: PASS. The public appendix retains the full Borel one-step update and finite state-composition induction, complete labeled-history and state-map scopes, explicit distribution/target/sample quantifiers, and the public specialization domains. The repaired step-006 chain includes score, tie, risk, and tower composition rather than assuming trajectory measurability.
- Equation-reference repair: PASS. The 102 displayed tags now have 102 unique stable labels `eq:p1-i3-eq001` through `eq:p1-i3-eq102`, with no gaps, duplicates, or tag/suffix mismatches. All 63 equation-reference occurrences and all 152 total `\ref`/`\eqref` occurrences resolve. Normalizing the new labels and references back to the former numeric locators gives an empty diff against archived assembly attempt 2, so attempt 3 changes only the reference layer and no accepted mathematics.
- LaTeX export structure and compilation: PASS. The five content files, `main.tex`, `arxiv.sty`, `ims.bst`, and `reference.bib` are present and loaded in the required order. The setup exposes four stable numbered assumptions, the appendix has seven proof-step subsections and a final theorem proof, and the recorded log reports a successful 15-page build. The only diagnostics are two nonblocking font-shape warnings from the shared style.
- Citation and provenance gate: PASS. There are no external citations, the References section is empty, and there are no unresolved or malformed references. No workflow provenance, audit scaffolding, placeholders, forbidden public environments, or unreviewed theorem/lemma material appears in the public bundle.
- Main-theorem self-containedness and assumption provenance: PASS. `3_main.tex` uses only setting/preliminary notation, inline quantities, and the four primitive assumptions. Gradient finiteness, trajectory containment, gate stability, path coefficients, measurability, pushforward equality, and the event split are derived before use; no appendix-local generated invariant is imported as a premise.
- Public notation and exposition: PASS. Histories, auxiliary envelopes, coefficients, finite tables, and event-split functions remain appendix-local or proof-local. The theorem is concise and reader-facing, proposition scopes include the histories, recursions, distribution/target domains, and sampling order they require, and there is no redundant workflow prose.
- Explicit-rate and specialization bridge: PASS. The text proves the exact additive \(\delta_0\) charge, \(d_{\rm path}\le S^L\le S^{L_0}\), and \(\varepsilon+\delta_0\le2\varepsilon\) with displayed inequalities and boundary checks. Variables, norms, expectation mode, finite horizon, tie convention, and the absence of a hidden multiplicative constant are explicit.
- Baseline and adversarial reductions: PASS. The proof survives \(L=1\), \(T=1\), \(S=1\), zero gradients, terminal equality \(T\eta G_r=r\), zero or canceling scores, hidden kinks with any fixed \(\kappa\in[0,1]\), nonattained infima, deterministic and zero-mass sample tuples, \(\delta_0=0\), \(\varepsilon=0\), and arbitrary behavior on \(E_r^c\). No step-, sketch-, or idea-level obstruction remains.
- Conditional-progress classification: PASS. The theorem is a material partial result under the weakest supported robust-tube and constant-depth conditions, with a polynomial \(S^{L_0}\) dimension bound and a high-probability event converted to an unconditional expected-risk witness. This matches the approved fallback principle and clearly excludes the unsupported broader target.
- Worker and attempt-budget gate: PASS. `worker_log.md` records `gpt-5.6-sol` with reasoning `max` and interactive checkpoint progression. Idea slot 3 is within the idea budget 30; sketch attempt 1 is within budget 10; global, step, reviewer, and assembly attempt 3 are within their attempt budget 100.
- Residual nonblocking note: the rigor reviewer observes that measurability of \(E_r\) is implicit in the primitive probability statement. This does not create a proof obligation or routing blocker under the accepted formalized setting.

## Critical Issues

None.

## Failure-Type Rationale

The accepted conditional theorem is fully supported by the accepted sketch, global diagnostic, seven proof steps, exhaustive 16-unit assembly, and four fresh specialist `PASS` reviews. Assembly attempt 3 resolves the sole prior equation-reference defect while preserving the normalized mathematical content of attempt 2. No issue remains at assembly, step, sketch, or idea depth, so the controlling classification is `ACCEPTED` and no retry route is warranted.

## Suggested Next Action

None

## Retry Mode

none
