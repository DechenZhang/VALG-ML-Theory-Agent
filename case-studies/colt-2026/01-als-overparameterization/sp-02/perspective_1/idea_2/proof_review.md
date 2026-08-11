# Proof Review

## Formalized Setting

Let \(r,n,k\) be positive integers and \(q>0\) be fixed. Let
\(\bar A=[\bar a_1,\ldots,\bar a_r]\),
\(\bar B=[\bar b_1,\ldots,\bar b_r]\), and
\(\bar C=[\bar c_1,\ldots,\bar c_r]\) be arbitrary deterministic matrices in
\(\mathbb R^{n\times r}\). Set \(\rho=r^{-q}\), draw all vectors
\(\xi_j^a,\xi_j^b,\xi_j^c\) independently from
\(\mathcal N(0,(\rho^2/n)I_n)\), and define

\[
a_j=\bar a_j+\xi_j^a,\qquad
b_j=\bar b_j+\xi_j^b,\qquad
c_j=\bar c_j+\xi_j^c,\qquad
T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
\]

No conditioning, incoherence, or random-base restriction is imposed on the
deterministic bases. For \(X=[x_1,\ldots,x_k]\), \(Y=[y_1,\ldots,y_k]\), and
\(Z=[z_1,\ldots,z_k]\in\mathbb R^{n\times k}\), let

\[
S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,\qquad
F(X,Y,Z)=\tfrac12\|T-S(X,Y,Z)\|_F^2.
\]

For each \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\), draw independent matrices
\(G_x^M,G_y^M,G_z^M\in\mathbb R^{n\times k}\) with iid
\(\mathcal N(0,1/n)\) entries. Let

\[
Q_M=\operatorname{orth}(G_x^M),\qquad
\mathcal S_M=\operatorname{range}(G_x^M),\qquad
\mathcal H_M=\mathcal S_M\otimes\mathbb R^n\otimes\mathbb R^n,
\]

and set

\[
P_{\mathcal S_M}=Q_MQ_M^{\mathsf T},\qquad
P_{\mathcal H_M}=P_{\mathcal S_M}\otimes I_n\otimes I_n.
\]

The two method-specific initialization triples are independent of one another
and of the smoothing variables, while both methods use the same realized
\(T\).

The one-mode constrained sequential ALS method initializes at its Gaussian
triple and updates cyclically in the order \(X,Y,Z\). With
\(K_t^x=Z_t\odot Y_t\), its constrained minimum-Frobenius-norm block update is

\[
X_{t+1}=Q_{\mathrm{cALS}}\left[
Q_{\mathrm{cALS}}^{\mathsf T}T_{(1)}K_t^x
\bigl((K_t^x)^{\mathsf T}K_t^x\bigr)^\dagger
\right].
\]

It then uses \(K_t^y=Z_t\odot X_{t+1}\) and
\(K_t^z=Y_{t+1}\odot X_{t+1}\) in the unconstrained minimum-norm updates

\[
Y_{t+1}=T_{(2)}K_t^y\bigl((K_t^y)^{\mathsf T}K_t^y\bigr)^\dagger,\qquad
Z_{t+1}=T_{(3)}K_t^z\bigl((K_t^z)^{\mathsf T}K_t^z\bigr)^\dagger.
\]

The coefficient-parameterized constrained GD method writes
\(X_t=Q_{\mathrm{cGD}}C_t\) and minimizes

\[
f_{Q_{\mathrm{cGD}}}(C,Y,Z)=F(Q_{\mathrm{cGD}}C,Y,Z).
\]

It initializes
\(C_0=Q_{\mathrm{cGD}}^{\mathsf T}G_x^{\mathrm{cGD}}\),
\(Y_0=G_y^{\mathrm{cGD}}\), and \(Z_0=G_z^{\mathrm{cGD}}\). At each finite
state \(u_t=(C_t,Y_t,Z_t)\), it chooses the first dyadic
\(\eta_t=2^{-j}\), \(j\ge0\), such that, for
\(V_t=u_t-\eta_t\nabla f_{Q_{\mathrm{cGD}}}(u_t)\),

\[
f_{Q_{\mathrm{cGD}}}(V_t)
\le f_{Q_{\mathrm{cGD}}}(u_t)
-\frac{\eta_t}{2}\|\nabla f_{Q_{\mathrm{cGD}}}(u_t)\|_F^2,
\]

and sets \(u_{t+1}=V_t\). Both methods have no restart or early stopping.

For either method, define

\[
S_t^M=S(X_t^M,Y_t^M,Z_t^M),\qquad
F_M(t)=F(X_t^M,Y_t^M,Z_t^M).
\]

When \(\|(I-P_{\mathcal H_M})T\|_F>0\), define the fixed witness

\[
W_M=\frac{(I-P_{\mathcal H_M})T}
{\|(I-P_{\mathcal H_M})T\|_F}.
\]

The primitive technical assumptions are exactly:

1. assump:dimension: \(n\ge8r^{5/4}\).
2. assump:rank_window: \(r<k\le r^{5/4}\), with \(c=1/4\).
3. assump:arbitrary_base: the deterministic base matrices are unrestricted.
4. assump:gaussian_smoothing: \(q>0\) is fixed, \(\rho=r^{-q}\), and all smoothing vectors have the independent Gaussian law above.
5. assump:joint_initialization: the two method starts are mutually independent and independent of smoothing, with the same target used for both methods.

This is the authoritative one-mode-fixed-span constrained setting. The
fixed-span membership, Haar projector identities, line-search termination,
monotonicity, and scalar-limit facts are derived conclusions, not primitive
trajectory assumptions.

## Formalized Goal

There is an \(r_0\) such that for every \(r\ge r_0\), every \(n\) satisfying
assump:dimension, every \(k\) satisfying assump:rank_window, and every
deterministic base triple satisfying assump:arbitrary_base, the joint law in
assump:gaussian_smoothing and assump:joint_initialization satisfies

\[
\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\ \text{exists and}\quad
\lim_{t\to\infty}F_M(t)\ge\frac38\|T\|_F^2
\right\}
\right]\ge\frac14.
\]

This is a material_partial theorem for the one-mode-fixed-span constrained
class. It makes no claim for ordinary unconstrained ALS or unconstrained GD;
replacing the imposed fixed initialization span by an endogenous moving-span
obstruction is the remaining source gap.

## Reviewed Roadmap

1. Prove simultaneous Gaussian full rank, Haar initialization spans,
   independence from the shared target, tensor lifting, and exact fixed-span
   preservation for every defined iterate.
2. Conditional on every fixed \(T=T_0\), prove projector isotropy,
   \(\mathbb E\|P_{\mathcal H_M}T\|_F^2=(k/n)\|T\|_F^2\), the zero-safe
   Markov events, their conditional product, and the joint \(1/4\) event with
   residual-energy fraction at least \(3/4\).
3. Prove the exact same-target Pythagorean decomposition and fixed normalized
   witness, with all zero-denominator branches handled separately.
4. Prove singular-design Moore--Penrose block optimality, exact sequential
   cALS descent, all finite sweeps, and a finite scalar objective limit.
5. Prove pointwise polynomial Taylor control, finite dyadic Armijo acceptance,
   all finite cGD iterates, signed descent, and a finite scalar objective limit.
6. Prove only the exact unconstrained first-update leakage and residual
   subtraction formulas needed to delimit the constrained scope.
7. Assemble the exact constants, conditional and unconditional probability,
   all-time floor, limit passage, quantifiers, baseline cases, and
   material_partial classification.

## Attempted Claim

With \(r_0=1\), \(L(r)=r^{5/4}\), and \(\alpha=1/4\), for every admissible
\(r,n,k\) and every unrestricted deterministic base triple, the joint Gaussian
smoothing-and-independent-initialization law for the shared tensor \(T\) gives
probability at least \(1/4\) that both one-mode fixed-span constrained methods
have finite scalar objective limits at least \((3/8)\|T\|_F^2\). On the same
event, each fixed orthogonal residual has squared energy at least
\((3/4)\|T\|_F^2\) and the objective floor holds at every finite iterate. No
conclusion is claimed for ordinary unconstrained ALS or full-variable gradient
descent.

## Review Mode

split

## Review Verdict

- Score: 10
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: Pass. The public theorem proves the authoritative formalized
  goal with \(r_0=1\), \(L(r)=r^{5/4}\), \(\alpha=1/4\), probability \(1/4\),
  squared-residual fraction \(3/4\), and objective fraction \(3/8\), for both
  precisely defined constrained procedures and every admissible quantifier.
- Source/progress alignment: Pass. The theorem preserves the third-order CP
  objective, unrestricted deterministic-base interpretation, Gaussian
  smoothing, random initialization, superlinear rank window, both-method
  coverage, constant probability, and positive limiting objective. It is
  consistently labeled material_partial; neither the title, theorem, proof,
  nor review implies that the unconstrained full source target is solved.
- Specialized reviews: Contract-valid PASS from structural, rigor, citation,
  and adversarial reviewers. Each has raw-token Blocking Issues = None,
  Suggested Repair Depth = None, and Smallest Candidate Repair Target = None.
  There is no reviewer disagreement.
- Roadmap or step coverage: Pass. The accepted seven-step sketch, accepted
  diagnostic global proof/review pair, and all seven current unit-attempt-1
  proof/review pairs are synchronized. Every review identifies sketch attempt
  1, its exact Step ID, unit attempt 1, the current proof artifact, and
  ACCEPTED status.
- Proof-details audit: Pass. The proof uses the exact fixed-span object and
  actual tensor residual throughout. It proves all generated facts before
  use, keeps the shared-\(T\) conditional probability protocol exact, and
  introduces no stronger claim, new assumption, or unreviewed lemma.
- Adversarial stress test: Pass. The \(T=0\), zero-residual, exact/noiseless,
  \(k/n=1/8\), empty small-\(r\) rank-window, singular or zero cALS design,
  nonunique block minimizer, zero block drop, zero cGD gradient, zero objective,
  shrinking Armijo step, and accidental unconstrained no-leakage branches are
  all handled without changing the theorem.
- LaTeX export structure/provenance gate: Pass. main.tex, all five content
  files, arxiv.sty, ims.bst, and reference.bib exist. The required setup,
  preliminaries, main theorem, proof sketch, seven mathematical appendix
  subsections, and final proof subsection are present. Public TeX contains no
  workflow provenance, placeholders, audit scaffolding, forbidden theorem
  environments, or workflow-style proof authority.
- Public compile/support gate: Pass. An independent Tectonic run from inside
  latex_template/ produced main.pdf; the retained aggregate-run log has no
  TeX error, unresolved reference or citation, duplicate-label warning,
  overfull box, underfull box, or substantive warning. No external citation is
  used, and no empty References section is emitted.
- Main theorem self-containedness: Pass. The theorem uses only setup notation,
  the five numbered primitive assumptions, and constants defined inline with
  exact dependence. It contains no appendix-local label, proof-step ID,
  proof-local constant, or hidden admissibility dictionary.
- Assumption provenance gate: Pass. Full rank, Haar independence, fixed-span
  membership, event membership, all-index existence, monotonicity, and both
  scalar limits are named derived results. The unconditional public theorem
  assumes no generated trajectory fact.
- Redundant public prose gate: Pass. The appendix is paper-facing and contains
  no copied dependency inventory, source/reviewer narration, sketch-row fields,
  boilerplate assembled-conclusion prose, or mechanical translation debris.
- Proof-step notation surface gate: Pass. Stable public objects are confined to
  the setup and theorem. Compact-SVD factors, local Hessian bounds, leakage
  tensors, event fibers, and scalar auxiliaries remain appendix-local or
  proof-local; none leaks into the theorem interface.
- Theorem readability and notation economy: Pass. The main theorem is concise,
  reader-facing, and free of a technical condition dictionary. The preliminaries
  define only the Frobenius/projector conventions and method superscripts needed
  to read the theorem.
- Explicit-rate contract: Pass. The public and appendix statements expose
  \(r,n,k,q,\rho\), \(L(r)=r^{5/4}\), \(\alpha=1/4\), exact constants, the
  conditional and unconditional probability modes, the all-time and
  asymptotic horizon modes, and the tensor Frobenius norm. No hidden constant,
  auxiliary tolerance, conditioning margin, factor bound, line-search lower
  bound, or smoothing dependence is suppressed.
- Rate Specialization Bridge: Pass. The appendix proves the displayed chain
  \(k/n\le1/8\), \(1-2k/n\ge3/4\), and
  \(\frac12(1-2k/n)\ge3/8\), together with the conditional product
  \(\frac12\cdot\frac12=\frac14\), pointwise conditional event inclusion,
  tower conversion, and lossless scalar-limit passage. No prose-only
  absorption occurs.
- Baseline-reduction check: Pass. At \(T=0\) the success event is sure and the
  lower bound is exactly zero; at zero objective the exact updates preserve
  zero; exact/noiseless nonzero targets use the same fixed-projector identity
  with no remainder. The constrained theorem does not replace an inherited
  baseline conclusion by a stopped or conservative surrogate.
- LaTeX appendix full-derivation gate: Pass for all used steps, not a sample.
  The audit matched step_001's four local units, step_002's four, step_003's
  two, step_004's six, step_005's four, step_006's three, and step_007's three
  against their corresponding appendix subsections. Every substantive cited
  elementary fact or accepted-result application, displayed definition,
  equation, inequality chain, compactness/SVD/Taylor argument, induction or
  telescoping step, conditional-probability conversion, assumption discharge,
  boundary branch, and Target-Step Assembly inference is present. The
  step-local claim in step_006 is correctly translated as a public proposition.
  Repetition of the complete matricization and Moore--Penrose derivations in
  step_006 is compressed only by citing the exact earlier public lemmas while
  retaining the current substitutions and step-specific gradient/SVD
  calculation.
- LaTeX export citation/reference gate: Pass. There are no external citation
  commands. Labels are unique, every ref/eqref target exists, no malformed
  command fragment appears, and mathematical dependencies cite numbered
  assumptions or named theorem-style results rather than subsections or local
  workflow units.
- LaTeX export synchronization: Pass. The current assembly report is COMPLETE
  with Blockers = None; all specialized reviews postdate the current assembly
  sources, and the independent aggregate compile used those same current
  sources.
- Worker provenance/distinctness: Pass. The two required run-scoped roles have
  real distinct handles. For \(k_{\mathrm{steps}}=7\), all \(12+2k=26\)
  required per-perspective handles are present and distinct: twelve
  perspective-scoped roles (idea-worker-p1, formalizer-p1,
  sketch-worker-p1-final, sketch-reviewer-p1-final, global-proof-worker-p1,
  global-proof-reviewer-p1, assembler-p1, structural-reviewer-p1,
  rigor-reviewer-p1, citation-reviewer-p1, adversarial-reviewer-p1, and
  review-aggregator-p1) plus distinct worker and reviewer handles tied to each
  of step_001 through step_007. The step_006 producer handoff is recorded
  before the successful bounded rerun.
- Producer budgets: Pass. Perspective 1 consumed two of 30 idea slots; the
  accepted sketch is attempt 1 of 10; the global diagnostic is attempt 1 of
  100; every accepted step is unit attempt 1 of 100; and assembly is attempt 1
  of 100. No accepted tracker row exceeds its producer budget.
- Accepted-copy preconditions: Pass. The authoritative setting, complete
  warning-free LaTeX/support bundle, COMPLETE assembly report, accepted
  sketch/review, accepted paired global diagnostic/review, all seven accepted
  step pairs, all four contract-valid specialized reviews, and this aggregate
  review are present. The controller may copy only setting.md, latex_template/,
  and proof_review.md after updating the branch trackers.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass and the independent aggregate audit finds no
assembly, step, sketch, or idea-level blocker relative to the authoritative
formalized goal. The result is accepted exactly as a material_partial
constrained-method theorem. Acceptance does not upgrade it to a full solution
of the unconstrained Open Problem 3 target; that remaining gap is explicit in
the setting, theorem, appendix, and this review.

## Suggested Next Action

None

## Retry Mode

none
