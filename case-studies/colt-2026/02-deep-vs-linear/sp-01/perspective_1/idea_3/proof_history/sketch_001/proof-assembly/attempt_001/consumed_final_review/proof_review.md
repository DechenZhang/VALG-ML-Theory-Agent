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

- Goal coverage: The attempted claim matches the authoritative setting.md exactly: one unconditional \(\mathcal P_{\rm gate}\), the \(\exists\mathcal P\,\forall\mathcal D\,\forall h\) order, expected tie-resolved representation risk, additive \(\varepsilon+\delta_0\), path dimension, constant-depth polynomial bound, and the \(2\varepsilon\) specialization. The progress type remains explicitly conditional and the branch is marked material; acceptance of this review must not be read as solving the broader source target.
- Roadmap or step coverage: The accepted sketch and accepted global diagnostic identify an acyclic seven-step graph. All seven current proof artifacts and matching accepted step reviews were loaded. Every step target is represented in the appendix, and the final theorem uses the named step-6 witness and step-7 arithmetic.
- Proof-details audit: I independently read all seven accepted proof bodies, all seven reviews, the accepted sketch/global artifacts, and the live appendix. The appendix contains all 16 accepted non-atomic local units (2, 2, 3, 2, 2, 3, and 2 by steps 1--7) and substantive proof text for all seven target-step assemblies. The comparison was exhaustive rather than representative. The source derivations are mathematically sufficient except for the two assembly omissions listed below.
- Specialized-review contract gate: Structural and citation artifacts are contract-valid PASS; rigor and adversarial artifacts are contract-valid BLOCKING, each with the same aligned assembly depth and /proof-assembly target. No artifact is stale or malformed. The disagreement is resolved by the deepest blocking issue, not by vote count.
- Adversarial stress test: The accepted source proofs survive \(L=1\), \(T=1\), \(S=1\), \(G_r=0\), terminal equality \(T\eta G_r=r\), zero weights, zero/canceling scores, hidden kinks and \(\kappa\in[0,1]\), \(\delta_0=0\), \(\varepsilon=0\), deterministic or zero-mass sample tuples, nonattained infima, and arbitrary behavior on \(E_r^c\). No counterexample or step-, sketch-, or idea-level obstruction was found; the blockers are missing public derivation/interface text.
- LaTeX export structure/provenance gate: The five content files, main.tex, arxiv.sty, ims.bst, and reference.bib exist. Required sections, numbered stable assumptions, seven appendix step subsections, and the final main-theorem proof are present. Static scans found no workflow provenance, forbidden audit scaffolding, placeholders, disallowed public claim/hypothesis/invariant environments, malformed bare references, or duplicate labels. The checked main.log/main.pdf record a successful prior compile with only two font-shape warnings; a fresh sandbox Tectonic invocation failed before TeX parsing in the local runtime, so it is not used to override the recorded compile evidence.
- Main theorem self-containedness: PASS. 3_main.tex uses only notation and protocol objects defined in 1_intro.tex/2_preliminary.tex, numbered assumptions, and inline quantities; it contains no appendix-local result or proof-step label.
- Assumption provenance gate: PASS. The public theorem lists only the four primitive assumptions. Static event membership, gradient finiteness, trajectory containment, gate stability, path coefficients, measurability, and the law witness are derived by named appendix results before consumption. The explicit conditional target permits the local \(E_r\) reasoning, while the final event split removes conditioning.
- Redundant public prose gate: PASS. No copied sketch-row metadata, audit scaffolding, workflow narration, mechanical 'the the'/'exact the' debris, or visible workflow markers occur in the public TeX.
- Proof-step notation surface gate: PASS apart from the affected statement scopes. Helper envelopes, histories, coefficients, finite tables, and conditional functions stay appendix-local/proof-local; the main theorem exports only setting-derived objects. The four affected proposition interfaces nevertheless fail the standalone theorem-style shape gate as recorded below.
- Theorem readability and notation economy: PASS. The public theorem is concise and reader-facing; technical envelopes and event-split helpers are kept in the appendix, with no opaque admissibility dictionary in the main theorem.
- Explicit-rate contract: PASS. The exact additive \(\delta_0\) charge, \(S^L\) and \(S^{L_0}\) path bounds, and \(2\varepsilon\) threshold are displayed. Exposed variables, hidden-constant policy, fixed quantities, probability mode, finite-horizon mode, norm/risk mode, and admissibility conditions are stated; no term is silently absorbed.
- Rate Specialization Bridge: PASS. The appendix contains named Lemma lem:p1-i3-step007-path-count and Proposition prop:p1-i3-step007-public-specialization, with the factorwise inequalities \(n_j\le n_{j+1}n_j\le S\), \(S^{L_0}=S^LS^{L_0-L}\ge S^L\), and \(\varepsilon+\delta_0\le2\varepsilon\), plus boundary checks. This is direct exact arithmetic, not an unproved prose simplification.
- Baseline-reduction check: PASS. The gate-free \(L=1\) case, \(S=1\), zero-gradient and zero-score cases, \(\delta_0=0\), \(\varepsilon=\delta_0=0\), terminal closed-ball equality, and same-law threshold reuse preserve the declared baseline conclusions. The broader unconditional deterministic target is explicitly excluded rather than weakened silently.
- LaTeX appendix full-derivation gate: BLOCKING. The audit covered every used step and source unit, not a sample. The first unaccounted substantive source unit is step_006, unit_002: its accepted source proves the one-step update map is Borel, inducts through all T generated states, then forms the latter-half score/tie map/risk. The live appendix at 5_appendix.tex:761--764 only lists Borel ingredients and concludes joint measurability, so the tower identity used in (86)--(90) lacks its generated-state bridge. The affected theorem-style scopes are an additional full-derivation/standalone-shape defect.
- LaTeX export citation/reference gate: PASS. The public TeX uses no external citation commands and no bibliography section; support files remain present. Internal labels are unique and resolve in the recorded compile log, and proof dependencies use named assumptions/lemmas/propositions rather than external citation commands.
- LaTeX export synchronization: BLOCKING only at the two assembly omissions. The COMPLETE assembly report and structural/citation passes are contradicted by direct source comparison and the rigor/adversarial blockers. Accepted step artifacts, setting, target, assumptions, rates, and conventions otherwise synchronize exactly.

## Critical Issues

1. Source: rigor and adversarial specialized reviews, confirmed by the exhaustive source-to-appendix audit. Location: perspective_1/idea_3/latex_template/5_appendix.tex:761--764, corresponding to accepted proof_steps/step_006/proof.md, unit_002 (source lines 203--224). Defect: the appendix names Borel forward operations, the kink selector, logistic differentiation, back-propagation, the tie map, and the finite risk sum, then immediately declares \(Z_{\mathcal D,h}\) jointly measurable. It omits the explicit full one-step map \(\theta\mapsto\theta-\eta\nabla_\theta^{(\kappa)}\ell(yf_\theta(x))\), the induction proving every generated state through time \(T\) is Borel, and the subsequent aggregate/risk composition. Downstream effect: the measurable conditional average \(g_{\mathcal D,h}\) and the tower identity in (86)--(90) are not established in the paper-facing proof, so the unconditional \(\varepsilon+\delta_0\) witness is not currently closed. Selected repair depth: assembly; target: /proof-assembly.

2. Source: rigor and adversarial specialized reviews, confirmed by the theorem-style statement-shape audit. Locations: 5_appendix.tex:224--235 (prop:p1-i3-step002-closed-tube), 368--383 (prop:p1-i3-step003-history-gates), 605--627 (prop:p1-i3-step005-conditional-comparison), and 887--905 (prop:p1-i3-step007-public-specialization). Defect: assembly removes local quantifiers/generated-object definitions that are explicit in the accepted source. The first two propositions refer to a labeled history 'above' and use \(\theta^{(t)}\) without stating \(\omega\in(\mathcal X\times\{-1,+1\})^T\), its exact recursion, or the state scope; the step-5 proposition defines \(F_{\mathcal D,h}\) without first fixing \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\); and the step-7 proposition says only 'for every \(\mathcal D,h\)' without their domains. Downstream effect: removing surrounding subsection prose leaves free/undefined theorem-style interfaces used by later public propositions, violating standalone self-containedness even though the accepted source statements supply the missing scopes. Selected repair depth: assembly; target: /proof-assembly.

## Failure-Type Rationale

Both controlling issues are paper-facing translation defects at assembly depth. The accepted setting, conditional target, sketch dependency graph, all seven proof claims, and every primitive mechanism are sound and independently accepted. The missing measurability induction and local quantifiers can be restored verbatim from the accepted step sources without changing any step claim, assumption, algorithm, scope, probability mode, metric, exposed dependence, or conclusion. A step, sketch, or idea retry would therefore be deeper than necessary. The correct routing is PROOF_ASSEMBLY_FLAW, followed by recompilation and a fresh run of all four specialized reviews and this aggregate review.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
