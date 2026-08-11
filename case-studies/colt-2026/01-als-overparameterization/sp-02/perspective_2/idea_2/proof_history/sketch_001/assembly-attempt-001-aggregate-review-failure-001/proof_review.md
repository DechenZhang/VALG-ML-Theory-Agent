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
   \([\kappa^{-1},\kappa]\), and every singular value of each
   column-normalized base matrix lies in \([\kappa^{-1},\kappa]\).
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

Fix \(\kappa\ge 1\) and \(q>0\). For positive constants
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
probability. In the exact/noiseless coordinate-orthonormal specialization
\(Q=I\), \(E_\rho=0\), and \(T=D_r\), the assembled proof preserves the
stronger baseline floor
\[
\lim_{t\to\infty}\mathcal L(X_t,Y_t,Z_t)
\ge(\delta-L_P)^2\|T\|_F^2.
\]

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The literal four-clause conditional event inclusion matches
  `setting.md` and is proved by the accepted five-step chain.  The added
  exact/noiseless baseline paragraph is not yet a well-typed public
  specialization, so the complete attempted claim is not acceptable as
  assembled.
- Source/progress alignment: The branch remains consistently labeled
  `conditional`, preserves the half-relaxed parallel ALS scope, and states the
  unresolved certificate-probability gap.  It does not imply that the full
  source-level probability target is solved.
- Specialized reviews: Structural, rigor, citation, and adversarial artifacts
  are all contract-valid `BLOCKING` reviews.  Each contains a numbered issue,
  raw-token `Suggested Repair Depth = assembly`, and the aligned raw target
  `/proof-assembly`.  There is no reviewer disagreement: all four identify the
  same ambient/coefficient typing and baseline-scope defect and otherwise pass
  the general conditional theorem.
- Roadmap or step coverage: The accepted sketch attempt 1 and current accepted
  global diagnostic/review pair are synchronized.  All five current proof and
  review pairs are accepted and identity-matched: `step_001`--`step_004` use
  unit attempt 1 and `step_005` uses unit attempt 2.  The dependency graph is
  acyclic and all outputs are produced before consumption.
- Proof-details audit: The general proof is rigorous.  It derives the
  rectangular coordinate-map bound, exact same-target identity, finite-budget
  projector recurrence, explicit smoothing subtraction, correct lower-bound
  operator transfer, target-scale conversion, finite-variation Cauchy limit,
  nonnegative squaring, scalar limit passage, and set inclusion.  The only
  invalid public derivation is the baseline's undeclared identification.
- Adversarial stress test: Zero components, zero or dependent coefficient
  features, \(\mathcal S_t=\{0\}\), rank changes, stationary projectors,
  saturated allowed margins, \(T=0\), stationary represented paths, factor
  divergence with tensor convergence, and empty or null certificate events do
  not break the general implication.  Tall orthonormal bases expose the
  baseline defect because \(Q\) remains a coordinate map rather than the
  ambient identity.
- LaTeX export structure/provenance gate: All required content and support
  files exist.  The setup, preliminaries, main theorem, proof sketch, five
  dependency-ordered appendix subsections, and final main-theorem proof are
  present.  Public TeX uses only allowed theorem-style environments and
  contains no workflow provenance, audit scaffolding, template placeholder,
  malformed command, forbidden local-unit authority, or mechanical prose
  debris.
- Public compile/support gate: An independent Tectonic build from inside
  `latex_template/` produced `<TEMP_ROOT>/p2-aggregate-compile/main.pdf` without an
  emitted error or warning.  `ims.bst` is byte-identical to the shared
  canonical file, `reference.bib` is present, no external citation command is
  used, and no empty bibliography is emitted.
- Main theorem self-containedness: The general conditional theorem uses only
  setup/preliminary notation, the five numbered assumptions, and inline
  constants with explicit dependence.  Its baseline paragraph fails this gate
  because \(Q=I\) and \(T=D_r\) lack a declared common domain and scope.
- Assumption provenance gate: Pass for the conditional theorem.  The four
  certificate clauses are explicitly conditional hypotheses authorized by the
  formalized goal; the persistent coefficient deficit, ambient residual floor,
  tensor limit, and objective limit are named derived results produced before
  use.  No unconditional generated invariant is hidden as primitive.
- Redundant public prose gate: Pass.  The appendix is paper-facing and omits
  source/reviewer narration, dependency inventories, copied sketch fields, and
  boilerplate assembly prose.
- Proof-step notation surface gate: Pass.  Public notation is setting-defined;
  SVD factors, gauge scalars, projector charges, variation tails, and scalar
  limit auxiliaries remain proof-local or appendix-local.  No helper dictionary
  leaks into the main theorem.
- Theorem readability and notation economy: Pass.  The main conditional
  theorem has a concise reader-facing interface and no opaque admissibility
  dictionary.  The preliminaries contain only the coordinate, span, projector,
  deficit, residual, and certificate notation needed to read it.
- Explicit-rate contract: Pass for the general theorem.  The bound exposes
  \(\kappa,\delta,L_P,\zeta,C_T\), has no hidden constant, declares the
  deterministic event-inclusion probability mode, all-time residual and
  asymptotic objective modes, and exact Frobenius norms.  Every defect is
  retained and no term is absorbed by prose.
- Rate Specialization Bridge: Not applicable to the general claim because the
  public theorem states the same exact formula proved in the appendix; there is
  no simplified public rate or probability conversion.
- Baseline-reduction check: Blocking.  In the public setup,
  \(Q:\mathbb R^{n\times n\times n}\to\mathbb R^{r\times r\times r}\),
  \(T\) is ambient, and \(D_r\) is coefficient-space.  The assertions
  \(Q=I\) and \(T=D_r\) are not typed for the quantified tall setting and the
  square identity-basis alternative is not separated from the large-\(n\),
  Gaussian theorem scope.
- LaTeX appendix full-derivation gate: Pass for all used steps, not a sample.
  The audit compared all 16 accepted local units in the required
  \(4+2+4+2+4\) distribution, every invoked cited/standard-result application,
  and all five `Target-Step Assembly` bodies with the corresponding appendix
  subsections and final theorem proof.  Definitions, displayed equations,
  inequality chains, induction, finite-prefix and tail arguments, constant and
  sign checks, boundary cases, dependency uses, and target assembly are
  preserved.  The baseline units are fully translated but carry the same
  typing defect rather than an omission or compression defect.
- LaTeX export citation/reference gate: Pass.  There are no external citation
  commands, labels are unique, all internal references resolve in the build,
  proof dependencies name theorem-style results, and no malformed reference or
  visible empty References section appears.
- LaTeX export synchronization: The setting, accepted proof interfaces,
  general public theorem, appendix, and assembly report agree on the conditional
  formula and probability boundary.  The baseline shorthand is also repeated
  consistently across `3_main.tex`, `4_proof_sketch.tex`, the appendix baseline
  propositions, final theorem proof, and `assembly_report.md`; that consistency
  does not cure its missing type/scope declaration and means the assembly repair
  must update every public occurrence together.
- Nonblocking concern: The public setup should explicitly say that the
  normalized base matrices have full column rank, equivalently that all \(r\)
  singular values are bounded below or that \(n\ge r\) in the active regime.
  This removes a rectangular-singular-value convention ambiguity but does not
  invalidate the intended general conditional derivation.

## Critical Issues

1. Structural, rigor, citation, and adversarial reviewers, confirmed by the
   aggregate baseline-reduction and main-theorem self-containedness gates:
   `latex_template/3_main.tex`, `latex_template/4_proof_sketch.tex`, the
   baseline propositions and final proof in `latex_template/5_appendix.tex`,
   and `assembly_report.md` state \(Q=I\) and \(T=D_r\) without defining a
   common ambient/coefficient tensor space or separating a square deterministic
   specialization from the quantified large-\(n\) Gaussian theorem.  The
   resulting baseline is not a well-formed standalone public claim, even though
   the four-clause conditional theorem is unaffected.  Repair depth:
   `assembly`; target: `/proof-assembly`.  The accepted general results already
   permit the smallest repair: in a tall column-orthonormal noiseless
   specialization, state the well-typed relations
   \(QT=D_r\), \(\|Q\|_{\rm op}=1\), and
   \(\|T\|_F=\|D_r\|_F\).  Then the accepted same-target identity, projector
   deficit, and operator comparison give the same
   \((\delta-L_P)^2\|T\|_F^2\) limiting floor without asserting \(Q=I\) or
   \(T=D_r\).  Alternatively, declare \(n=r\), identity bases, and the common
   space explicitly as a separate algebraic baseline.  Whichever form is used
   must be synchronized across all public occurrences and the assembly report.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is controlling because the general conditional theorem,
accepted sketch/global pair, and all five accepted step pairs supply every
mathematical ingredient needed for a well-typed baseline.  In particular, the
tall relations \(QT=D_r\), \(\|Q\|_{\rm op}=1\), and
\(\|T\|_F=\|D_r\|_F\) turn the existing accepted identities and inequalities
into the advertised baseline floor with no new assumption on the general
theorem, no changed step dependency, and no weakened conclusion.  The defect
is therefore confined to public specialization wording, scope separation, and
its synchronized proof presentation.  A step, sketch, or idea retry would be
deeper than necessary.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
