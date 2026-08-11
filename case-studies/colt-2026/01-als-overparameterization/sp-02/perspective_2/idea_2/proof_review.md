# Proof Review

## Formalized Setting

Fix constants \(\kappa\ge 1\) and \(q>0\), and let \(r,n,k\) be positive
integers.  For each mode, let
\(\bar A=[\bar a_1,\ldots,\bar a_r]\in\mathbb R^{n\times r}\), with
analogous matrices \(\bar B\) and \(\bar C\).  For
\(\bar M\in\{\bar A,\bar B,\bar C\}\), define

\[
D_{\bar M}=\operatorname{diag}(\|\bar m_1\|_2,\ldots,\|\bar m_r\|_2),
\qquad
\widetilde M=\bar M D_{\bar M}^{-1}.
\]

Set \(\rho=r^{-q}\).  Independently over \(j\in[r]\) and the three modes,
draw

\[
\xi_j^a,\xi_j^b,\xi_j^c
\sim\mathcal N\!\left(0,\frac{\rho^2}{n}I_n\right),
\]

and put

\[
a_j=\bar a_j+\xi_j^a,\qquad
b_j=\bar b_j+\xi_j^b,\qquad
c_j=\bar c_j+\xi_j^c,\qquad
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j
\in\mathbb R^{n\times n\times n}.
\]

For factors \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and
\(Z=[z_1,\ldots,z_k]\), define

\[
\widehat T(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
\qquad
\mathcal L(X,Y,Z)=\|T-\widehat T(X,Y,Z)\|_F^2.
\]

Fix one componentwise Khatri--Rao ordering.  At time \(t\), set

\[
U_t^x=Z_t\odot Y_t,\qquad
U_t^y=Z_t\odot X_t,\qquad
U_t^z=Y_t\odot X_t,
\]

and compute the three old-iterate least-squares candidates simultaneously:

\[
\begin{aligned}
X_{t+1}^{\rm ls}&=T_{(1)}U_t^x\big((U_t^x)^{\mathsf T}U_t^x\big)^\dagger,\\
Y_{t+1}^{\rm ls}&=T_{(2)}U_t^y\big((U_t^y)^{\mathsf T}U_t^y\big)^\dagger,\\
Z_{t+1}^{\rm ls}&=T_{(3)}U_t^z\big((U_t^z)^{\mathsf T}U_t^z\big)^\dagger.
\end{aligned}
\]

The pseudoinverse selects the minimum-Frobenius-norm candidate.  With
\(\eta=1/2\), form the componentwise half-relaxed raw sweep and then apply the
setting-defined product-preserving geometric-mean gauge.  Positive component
triples are rescaled by three positive factors whose product is one; a triple
with a zero factor is replaced by \((0,0,0)\).  There is no fixed-subspace
constraint, clipping, regularizer, adaptive preconditioner, restart, or early
stopping.  Sequential Gauss--Seidel ALS and unrelaxed simultaneous ALS are not
covered.

The raw initialization has iid \(\mathcal N(0,1/n)\) entries in
\(X_0,Y_0,Z_0\), independent of all smoothing variables.  Probabilities use
the joint smoothing-and-initialization law conditional on the deterministic
base triple.

The fixed left coordinate maps and their tensor product are

\[
\Lambda_A=(\bar A^{\mathsf T}\bar A)^{-1}\bar A^{\mathsf T},\qquad
\Lambda_B=(\bar B^{\mathsf T}\bar B)^{-1}\bar B^{\mathsf T},\qquad
\Lambda_C=(\bar C^{\mathsf T}\bar C)^{-1}\bar C^{\mathsf T},
\qquad
Q=\Lambda_A\otimes\Lambda_B\otimes\Lambda_C.
\]

For every component and time, define

\[
\alpha_i^t=\Lambda_Ax_{i,t},\qquad
\beta_i^t=\Lambda_By_{i,t},\qquad
\gamma_i^t=\Lambda_Cz_{i,t},\qquad
p_{i,t}=\alpha_i^t\otimes\beta_i^t\otimes\gamma_i^t,
\]

and

\[
D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
\quad \|D_r\|_F=\sqrt r,
\quad C_t=\sum_{i=1}^k p_{i,t},
\quad \mathcal S_t=\operatorname{span}\{p_{i,t}:i\in[k]\},
\quad P_t=\operatorname{Proj}_{\mathcal S_t}.
\]

Here \(P_t\) is the coefficient-Frobenius orthogonal projector, including
\(P_t=0\) when \(\mathcal S_t=\{0\}\).  Put

\[
\Delta_0=\operatorname{dist}_F(D_r,\mathcal S_0),
\qquad E_\rho=QT-D_r,
\qquad \widehat T_t=\widehat T(X_t,Y_t,Z_t).
\]

Then

\[
Q(T-\widehat T_t)=D_r+E_\rho-C_t,
\qquad C_t\in\mathcal S_t.
\]

For \(\delta,L_P,\zeta,C_T>0\), with \(L_P<\delta/4\) and
\(\zeta<\delta/4\), the conditional certificate
\(\mathsf C_2(\delta,L_P,\zeta,C_T)\) has exactly four clauses:

1. \(\Delta_0\ge\delta\|D_r\|_F=\delta\sqrt r\).
2. \(\sum_{t=0}^{\infty}\|P_{t+1}-P_t\|_{\rm op}\le L_P\).
3. \(\sum_{t=0}^{\infty}\|\widehat T_{t+1}-\widehat T_t\|_F<\infty\).
4. \(\|E_\rho\|_F\le\zeta\|D_r\|_F\) and
   \(\|T\|_F\le C_T\|D_r\|_F\), where \(C_T=C_T(\kappa,q)\) is
   independent of \(r,n,k\) and of the admissible deterministic base triple.

These clauses are theorem-facing conditional hypotheses, not primitive
assumptions and not claimed consequences of the Gaussian law.

The primitive technical assumptions are exactly:

1. assump:dimension: \(n\ge C_{\rm dim}(\kappa,q)r^4\log r\).
2. assump:rank_window: \(r<k\le r^{5/4}\).
3. assump:base_conditioning: every base-column norm lies in
   \([\kappa^{-1},\kappa]\), and all \(r\) singular values of each
   rectangular column-normalized base matrix lie in
   \([\kappa^{-1},\kappa]\), equivalently giving full column rank.
4. assump:gaussian_smoothing: \(\rho=r^{-q}\) and the \(3r\) perturbations
   have the independent Gaussian law above.
5. assump:independent_initialization: the \(3nk\) initial factor entries are
   iid \(\mathcal N(0,1/n)\) and independent of smoothing.

The branch is explicitly conditional.  It preserves the smoothed CP object,
random initialization, full interval \(r<k\le r^{5/4}\), half-relaxed
parallel Jacobi ALS protocol, and positive relative limiting-loss target.  It
does not claim a positive probability for \(\mathsf C_2\); proving a uniform
constant-probability producer for the certificate is the residual source gap.

## Formalized Goal

There exist constants \(r_0(\kappa,q)\in\mathbb N\),
\(C_{\rm dim}(\kappa,q)>0\), \(\delta(\kappa,q)>0\),
\(L_P(\kappa,q)>0\), \(\zeta(\kappa,q)>0\), \(C_T(\kappa,q)>0\), and
\(\epsilon(\kappa,q)>0\), with \(L_P<\delta/4\) and
\(\zeta<\delta/4\), such that for every \(r\ge r_0(\kappa,q)\), every
\(n,k\) satisfying assump:dimension and assump:rank_window, and every
deterministic base triple satisfying assump:base_conditioning, the
unconstrained half-relaxed parallel ALS trajectory satisfies

\[
\mathsf C_2(\delta,L_P,\zeta,C_T)
\subseteq
\left\{
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)\text{ exists and is finite, and }
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2
\right\}
\]

under the joint law in assump:gaussian_smoothing and
assump:independent_initialization.  The permitted value is

\[
\epsilon=
\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
\]

Clause 3 supplies convergence of the represented tensor and objective.  No
lower bound on \(\mathbb P[\mathsf C_2]\) is claimed.  The branch progress
type is `conditional`, and the unresolved probability production of the
four-clause certificate remains explicit.

## Reviewed Roadmap

1. Prove \(\|Q\|_{\rm op}\le\kappa^6\), gauge compatibility, and the exact
   same-target coefficient identity with \(C_t\in\mathcal S_t\).
2. Telescope the adaptive-projector path to preserve
   \(\operatorname{dist}_F(D_r,\mathcal S_t)\ge
   (\delta-L_P)\|D_r\|_F\) for every time.
3. Subtract the explicit smoothing residual and transfer the coefficient
   reserve to the all-time ambient residual floor
   \((\delta-L_P-\zeta)(\kappa^6C_T)^{-1}\|T\|_F\).
4. Use unsquared finite represented-tensor variation to obtain a Cauchy tensor
   path and a finite objective limit.
5. Square only after the sign check, pass the all-time floor to the existing
   limit, and express the outcome-by-outcome implication as the exact event
   inclusion without a probability upgrade.

## Attempted Claim

Fix \(\kappa\ge 1\) and \(q>0\).  For positive constants
\(r_0,C_{\rm dim},\delta,L_P,\zeta,C_T\) depending only on
\((\kappa,q)\), with \(r_0\in\mathbb N\), \(L_P<\delta/4\), and
\(\zeta<\delta/4\), define
\[
\epsilon=
\left(\frac{\delta-L_P-\zeta}{\kappa^6C_T}\right)^2.
\]
For every \(r\ge r_0\), every \(n,k\) in the formalized dimension and
rank window, every admissible deterministic base triple, and the formalized
half-relaxed parallel Jacobi ALS trajectory under the joint smoothing-and-
initialization law,
\[
\mathsf C_2(\delta,L_P,\zeta,C_T)
\subseteq
\left\{
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\text{ exists and is finite, and }
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge\epsilon\|T\|_F^2
\right\}.
\]
This is an explicitly conditional, outcome-by-outcome event inclusion. It
does not assert that the four-clause certificate is nonempty or has positive
probability.

Separately from this positive-Gaussian-smoothing theorem, take a deterministic
zero-smoothing baseline in a tall ambient space \(n\ge r\), with
column-orthonormal deterministic bases, every perturbation vector equal to
zero, and
\[
T=\sum_{j=1}^r\bar a_j\otimes\bar b_j\otimes\bar c_j.
\]
Then the well-typed relations
\[
QT=D_r,
\qquad E_\rho=0,
\qquad \|Q\|_{\rm op}=1,
\qquad \|T\|_F=\|D_r\|_F
\]
hold.  For every trajectory satisfying the normalized entry-deficit, finite
projector-path, and finite represented-tensor-variation clauses, the assembled
proof preserves the stronger algebraic baseline floor
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2.
\]
This last conclusion is not asserted as an event under the positive Gaussian
smoothing law.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The literal four-clause conditional event inclusion in
  `setting.md` is proved with the exact finite-limit conjunct and
  \(\epsilon=((\delta-L_P-\zeta)/(\kappa^6C_T))^2\).  The separate
  deterministic tall baseline is also proved with the unchanged
  \((\delta-L_P)^2\) limiting floor.
- Source/progress alignment: The branch remains consistently classified as
  `conditional`.  It preserves the smoothed CP object, one random
  initialization, full \(r<k\le r^{5/4}\) window, and unconstrained
  half-relaxed parallel Jacobi ALS protocol.  The unresolved uniform positive
  probability of \(\mathsf C_2\) remains explicit, so acceptance does not imply
  that the full source-level probability target is solved.
- Specialized reviews: `proof_review_structural.md`,
  `proof_review_rigor.md`, `proof_review_citation.md`, and
  `proof_review_adversarial.md` are all contract-valid `PASS` artifacts.  Each
  has raw-token `Blocking Issues = None`, `Suggested Repair Depth = None`, and
  `Smallest Candidate Repair Target = None`.  There is no blocking reviewer
  disagreement.
- Roadmap or step coverage: Sketch attempt 1 and the accepted global
  diagnostic/review pair are current and synchronized.  All five proof/review
  pairs are accepted and identity-matched: `step_001`--`step_004` use unit
  attempt 1 and `step_005` uses repaired unit attempt 2.  The dependency graph
  is acyclic: steps 001, 002, and 004 are roots; step 003 consumes 001--002;
  step 005 consumes 003--004.
- Proof-details audit: The derivation proves the rectangular coordinate-map
  bound, exact same-target identity, positive and zero gauge branches,
  finite-budget projector recurrence, one-time smoothing subtraction, correct
  lower-bound direction through \(Q\), target-scale conversion,
  finite-variation Cauchy convergence, squared-distance continuity,
  nonnegative squaring, scalar limit order, and outcome-by-outcome set
  inclusion.  No hidden ALS regularity or probability upgrade is used.
- Adversarial stress test: Tall bases with \(n>r\), ambient residual mass in
  \(\ker Q\), zero or dependent coefficient features, zero/full/rank-changing
  spans, stationary projectors, saturated strict margins, \(T=0\), stationary
  represented tensors, divergent factor representatives with tensor
  convergence, and empty or null certificate events are all covered.
- Assembly report: `assembly_report.md` has `Status = COMPLETE`, exact attempted
  claim, and `Blockers = None`.  It identifies sketch attempt 1 and assembly
  attempt 2 and agrees with the current public bundle.
- Public compile/support gate: Independent compilation from inside
  `latex_template/` completed with exit status zero and produced
  `<TEMP_ROOT>/p2-aggregate-attempt2/main.pdf` without an emitted warning, unresolved
  reference, or citation.  All nine required files exist; `ims.bst` is
  byte-identical to the shared canonical file; `arxiv.sty` differs only by the
  documented removal of incompatible unused imports; `reference.bib` is
  present; and no bibliography command or visible empty References section is
  introduced.
- LaTeX export structure/provenance gate: The required setup, preliminaries,
  main theorem, proof sketch, five dependency-ordered appendix subsections, and
  final proof of the main theorem are present.  The appendix uses only lemma,
  proposition, theorem, and proof environments.  Static scans found no
  workflow paths, reviewer provenance, audit scaffolding, copied sketch fields,
  forbidden theorem environments, template placeholders, malformed commands,
  duplicate labels, or unresolved internal references.
- Main theorem self-containedness: The public theorem uses only setup and
  preliminary notation, the five numbered assumptions, the explicitly defined
  four-clause conditional certificate, and theorem-local constants with stated
  dependence.  It has no appendix-forward proof dependency, step ID, local
  unit ID, or opaque admissibility dictionary.
- Assumption provenance gate: The four trajectory-dependent clauses are
  explicitly conditional hypotheses, as authorized by the formalized goal.
  The persistent coefficient deficit, ambient residual floor, represented
  tensor limit, objective limit, and limiting loss floor are named derived
  results produced before use.  No unconditional generated invariant is hidden
  as a primitive assumption.
- Redundant public prose gate: Pass.  The public appendix is paper-facing and
  contains no dependency inventory, source/reviewer narration, boilerplate
  assembled-conclusion text, or mechanical prose debris.
- Proof-step notation surface gate: Pass.  Public objects are setting-derived.
  SVD factors, gauge scalars, projector charges, variation tails, and scalar
  limit auxiliaries remain proof-local or appendix-local, and no helper
  dictionary leaks into the theorem statement.
- Theorem readability and notation economy: Pass.  The four-clause certificate
  is a concise reader-facing conditional interface; the preliminaries define
  only the coordinate, span, projector, deficit, smoothing, and target-scale
  notation required by the theorem.
- Explicit-rate contract: Pass.  The public floor exposes
  \(\kappa,\delta,L_P,\zeta,C_T\), declares that there are no hidden constants,
  states the deterministic event-inclusion probability mode, all-time residual
  and asymptotic objective modes, and exact ambient/coefficient Frobenius norm
  modes.  Every defect remains visible and every simplification is a displayed
  inequality.
- Rate Specialization Bridge: Not applicable.  The public theorem states the
  same exact formula proved in the appendix; there is no simplified rate,
  auxiliary parameter elimination, term absorption, or probability conversion.
- Baseline-reduction check: Pass.  Every assembly-facing occurrence in
  `3_main.tex`, `4_proof_sketch.tex`, both appendix baseline propositions, the
  final theorem proof, and `assembly_report.md` now states a separate
  deterministic zero-smoothing specialization with \(n\ge r\),
  column-orthonormal bases, \(QT=D_r\), \(E_\rho=0\),
  \(\|Q\|_{\rm op}=1\), and \(\|T\|_F=\|D_r\|_F\).  No public occurrence
  asserts \(Q=I\) or ambient \(T=D_r\).  The accepted same-target identity,
  projector floor, and norm-one operator comparison give
  \(\|T-\widehat T_t\|_F\ge(\delta-L_P)\|T\|_F\), which is squared and passed
  to the same finite limit to prove the unchanged
  \((\delta-L_P)^2\|T\|_F^2\) floor.  The baseline is explicitly outside the
  positive-Gaussian-smoothing probability statement.
- LaTeX appendix full-derivation gate: Pass for all used steps, not a sample.
  The audit compared all 16 accepted non-atomic local units in the exact
  \(4+2+4+2+4\) distribution, every invoked standard/dependency application,
  and all five source `Target-Step Assembly` bodies against the matching
  appendix subsections and final theorem proof.  All displayed definitions,
  equations, inequality chains, induction and finite-prefix arguments, tail
  bounds, sign and constant checks, object mappings, boundary cases, and target
  assemblies are present.  The two baseline units are translated through the
  authorized typed tall specialization and fully reproved rather than merely
  summarized.
- LaTeX export citation/reference gate: Pass.  No external citation command is
  used, every mathematical dependency names a public theorem-style result or
  numbered assumption, all 37 labels are unique, all internal references
  resolve, and no empty bibliography is emitted.
- LaTeX export synchronization: The setting, general theorem, proof sketch,
  appendix, final proof, and assembly report agree on the conditional formula,
  quantifiers, norms, horizon, and probability boundary.  The repaired tall
  baseline relations and scope separation are synchronized across every
  assembly artifact.
- Worker provenance and budgets: The run-scoped literature and perspective
  rows and the Perspective 2 branch rows are schema-valid with nonempty worker
  handles and exact stage tokens.  The current lineage has the required
  \(12+2\cdot5=22\) distinct producer/reviewer role handles, with separate
  producer and reviewer identities and recorded handoffs.  The controller
  profile is `gpt-5.6-sol max`.  Perspective 2 consumed 2 of 30 idea slots;
  sketch attempt 1 of 10; global attempt 1 of 100; step attempts at most 2 of
  100; and assembly attempt 2 of 100.
- Nonblocking concern: The retained accepted sketch/global and step-audit
  diagnostics still use the older square common-space shorthand \(Q=I\),
  \(T=D_r\) in baseline lineage text.  They are diagnostic or producer-source
  artifacts, not public proof authority, and the assembly rederives the typed
  tall relations from accepted general results.  This residue does not affect
  the current theorem or appendix, but it distinguishes score 9 from 10.

## Critical Issues

None

## Failure-Type Rationale

`ACCEPTED` is warranted because all four specialized reviews pass and every
aggregate contract gate passes.  The formalized conditional goal is proved by
the current accepted five-step chain, the public LaTeX bundle is complete and
warning-free, all 16 local units and five target assemblies are preserved, and
the prior assembly-only baseline defect is repaired by a synchronized,
well-typed tall specialization without changing the general theorem, accepted
step interfaces, probability mode, or limiting floor.  No retry target remains.

## Suggested Next Action

None

## Retry Mode

none
