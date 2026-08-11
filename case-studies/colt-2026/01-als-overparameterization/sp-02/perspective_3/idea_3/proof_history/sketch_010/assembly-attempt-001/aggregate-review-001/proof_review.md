# Proof Review

## Formalized Setting

Fix \(\kappa\ge 1\), a fixed \(q\ge4\), and integers \(n,r,k\).  For each
mode, let \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) be deterministic.
Every base column is nonzero with norm in \([\kappa^{-1},\kappa]\), and each
column-normalized base matrix has all \(r\) singular values in
\([\kappa^{-1},\kappa]\).  Independently over modes and columns, draw

\[
  \xi_j^a,\xi_j^b,\xi_j^c
  \sim \mathcal N(0,r^{-2q}I_n/n)
\]

and set \(a_j=\bar a_j+\xi_j^a\), with \(b_j,c_j\) defined analogously.
Writing \(A=[a_1\ \cdots\ a_r]\), and likewise \(B,C\), define

\[
  D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
  \qquad
  T=(A\otimes B\otimes C)D_r
   =\sum_{j=1}^r a_j\otimes b_j\otimes c_j.
\]

For \(X=[x_1\ \cdots\ x_k]\), \(Y=[y_1\ \cdots\ y_k]\), and
\(Z=[z_1\ \cdots\ z_k]\), let

\[
  S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
  \qquad F(X,Y,Z)=\|T-S(X,Y,Z)\|_F^2.
\]

Initialize three raw factor matrices with iid \(\mathcal N(0,1/n)\) entries,
independently of smoothing.  Apply the componentwise product-preserving
geometric-mean balancing map \(\mathcal G\): a positive raw triple is rescaled
to three equal norms, and a triple with a zero factor is left unchanged.
Starting from \(\theta_0=(X_0,Y_0,Z_0)=\mathcal G(\theta_0^{\rm raw})\), run
simultaneous full-batch gradient descent followed by the same balancing map,

\[
\begin{aligned}
  \widetilde X_{t+1}&=X_t-\eta\nabla_XF(\theta_t),\\
  \widetilde Y_{t+1}&=Y_t-\eta\nabla_YF(\theta_t),\\
  \widetilde Z_{t+1}&=Z_t-\eta\nabla_ZF(\theta_t),\\
  \theta_{t+1}&=\mathcal G(\widetilde X_{t+1},
       \widetilde Y_{t+1},\widetilde Z_{t+1}),
  \qquad \eta=(nkr)^{-12}.
\end{aligned}
\]

There is no projection, clipping, regularization, sparsification, restart, or
early stopping.  The rank and dimension regime is

\[
  n\ge C(\kappa,q)r^4\log r,
  \qquad r<k\le\lfloor r^{5/4}\rfloor,
\]

with no upper restriction on \(n\).

On the full-column-rank event for \(A,B,C\), define the raw coefficient
coordinates

\[
  \alpha_{i,t}=A^\dagger x_{i,t},\qquad
  \beta_{i,t}=B^\dagger y_{i,t},\qquad
  \gamma_{i,t}=C^\dagger z_{i,t},
\]

their normalized initial versions
\(\bar\alpha_{i,0}=\sqrt{n/r}\,\alpha_{i,0}\), and analogously for
\(\bar\beta_{i,0},\bar\gamma_{i,0}\), and

\[
  \widehat D_0=\sum_{i=1}^k
    \alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0},
  \qquad \delta_0=\frac18.
\]

Let \(\mathscr S_0^{\rm raw}\) be the span of the three raw tangent-generator
families

\[
  u\otimes\beta_{i,0}\otimes\gamma_{i,0},\quad
  \alpha_{i,0}\otimes v\otimes\gamma_{i,0},\quad
  \alpha_{i,0}\otimes\beta_{i,0}\otimes w,
\]

and define \(\mathscr S_0^{\rm norm}\) by replacing the fixed coefficient
vectors with their normalized versions.  Exact nonzero scalar identities give

\[
  \mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}=:\mathscr S_0,
  \qquad
  G_{\rm raw}^{pq}=(r/n)^2G_{\rm norm}^{pq}
\]

for all three coefficient pairs.  Normalization is certificate-only:
\(D_r\), \(\widehat D_0\), the witness, coefficient residual, and physical
loss remain raw.

With \(\kappa_1=2\kappa^2\), define the generated events

\[
\begin{aligned}
  \mathcal E_{\rm cond}
  &=\bigcap_{M\in\{A,B,C\}}
    \{\|M\|_{\rm op}\le\kappa_1,
      \ \sigma_{\min}(M)\ge\kappa_1^{-1}\},\\
  \mathcal E_{\rm deficit}
  &=\{\exists W_0:\ \|W_0\|_F=1,\ W_0\perp\mathscr S_0,
    \ \langle D_r-\widehat D_0,W_0\rangle_F
       \ge\delta_0\|D_r\|_F\},\\
  \mathcal E_{\rm size}
  &=\{\max_{i,m}\|m_{i,0}\|_2\le2\}.
\end{aligned}
\]

The event \(\mathcal E_{\rm gram}^{\rm norm}\) requires all eigenvalues of
all three normalized pair Grams to lie in \([r^{-20},r^{20}]\), and

\[
  \mathcal E_{\rm init\_norm}
  =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}^{\rm norm}
   \cap\mathcal E_{\rm deficit}\cap\mathcal E_{\rm size}.
\]

These four constituents are generated proof outputs, not primitive
assumptions.  Define

\[
  \Psi_{A,B,C}(X,Y,Z)
  =\sum_{i=1}^k(A^\dagger x_i)\otimes(B^\dagger y_i)
       \otimes(C^\dagger z_i),
\]

\[
  d_{\rm bal}(\theta,\theta')
  =\bigl(\|X-X'\|_F^2+\|Y-Y'\|_F^2+\|Z-Z'\|_F^2\bigr)^{1/2},
  \qquad
  E_{\rm path}=\sum_{t\ge0}d_{\rm bal}(\theta_{t+1},\theta_t).
\]

With

\[
  C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R),
  \qquad
  E_\star=\min\left\{1,
    \sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}\right\},
\]

the sole trajectory certificate is

\[
  \mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}.
\]

It contains no convergence, boundedness, Gram, trapping, or positive-loss
clause.  With \(P_M=MM^\dagger\), the exact same-target physical bridge is

\[
  (P_A\otimes P_B\otimes P_C)(T-S(\theta))
  =(A\otimes B\otimes C)(D_r-\Psi_{A,B,C}(\theta)).
\]

The primitive assumptions are exactly
`assump:base_conditioning`, `assump:dimension`, `assump:rank_window`,
`assump:gaussian_smoothing`, `assump:independent_initialization`, and
`assump:gd_step`, with the meanings above.  Probability is under the joint
smoothing and independent initialization law conditional on the deterministic
base triple.  The branch progress type is `conditional`: it preserves the
source CP objective, smoothing, balanced simultaneous-GD protocol, full rank
window, raw target, and positive relative limiting-loss conclusion, but does
not claim a positive lower bound for the path-certificate probability.

## Formalized Goal

There exist \(r_0(\kappa,q)\), \(C(\kappa,q)\), and
\(\epsilon_0(\kappa)>0\) such that, uniformly for every

\[
  r\ge r_0(\kappa,q),\qquad
  n\ge C(\kappa,q)r^4\log r,\qquad
  r<k\le\lfloor r^{5/4}\rfloor,
\]

and every deterministic base triple satisfying the formalized base
conditioning assumption,

\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced
GD iterates converge in \(d_{\rm bal}\) to a finite \(\theta_\infty\) and
satisfy

\[
  \lim_{t\to\infty}F(\theta_t)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]

If \(\mathcal F_+\) is this convergence-and-positive-limit event, prove

\[
\begin{aligned}
  \mathbb P(\mathcal F_+)
  &\ge\mathbb P(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path})\\
  &=\mathbb P(\mathcal E_{\rm init\_norm})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\\
  &\ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\end{aligned}
\]

The final conditional factor may be zero.  A uniform positive lower bound for
it is explicitly outside this theorem and remains the source-level gap.

## Reviewed Roadmap

1. Generate realized-factor conditioning and left-inverse bounds.
2. Derive the exact balanced coefficient Gaussianization and scalar/product
   invariances.
3. Prove the three normalized Khatri--Rao Gram windows.
4. Generate the balanced initial-size event.
5. Prove exact raw/normalized Gram, tangent-span, and quotient-range identities.
6. Factor the tangent span as \(\mathscr S_0=LQE\) with independent Haar
   \(SO(r)^3\) orientations and \(\dim(E)\le3kr\).
7. Prove the exact fixed-subspace product-Haar mean and concentration tail.
8. Transfer the fixed-target estimate through \(L\) with the explicit
   \(\kappa_1^{12}\) loss and produce raw target leverage at most \(r/2\).
9. Construct the raw normal witness and generate \(\mathcal E_{\rm deficit}\).
10. Assemble \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).
11. Derive conditional finite-path convergence and the all-time factor radius.
12. Prove the exact raw endpoint Taylor remainder.
13. Cancel the tangent derivative and preserve the raw endpoint margin.
14. Transfer the raw margin to the exact physical relative loss.
15. Prove continuity, event inclusion, and the retained conditional probability
    factor.

## Attempted Claim

Fix \(\kappa\ge1\) and a fixed \(q\ge4\). There exist
\(r_0(\kappa,q)\), \(C(\kappa,q)\), and

\[
  \epsilon_0(\kappa)
  =\left(\frac{15}{16}\delta_0\right)^2\kappa_1^{-12}>0,
  \qquad \delta_0=\frac18,\quad \kappa_1=2\kappa^2,
\]

such that, uniformly for every \(r\ge r_0(\kappa,q)\), every
\(n\ge C(\kappa,q)r^4\log r\), every
\(r<k\le\lfloor r^{5/4}\rfloor\), and every deterministic base triple
satisfying the formalized base-conditioning assumption,

\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

On the explicitly conditional event
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced
simultaneous-GD iterates converge in \(d_{\rm bal}\) to a finite
\(\theta_\infty\) and satisfy

\[
  \lim_{t\to\infty}F(\theta_t)
  =F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]

Consequently, for the convergence-and-positive-limit event \(\mathcal F_+\),

\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]

The final conditional factor is retained exactly and may be zero.  No uniform
positive lower bound for it is proved, so the attempted theorem does not solve
the original unconditional open problem.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The mathematical chain reaches the exact formalized
  conditional goal with
  \(\epsilon_0=((15/16)\delta_0)^2\kappa_1^{-12}\).  It preserves the joint
  smoothing/initialization probability mode, all-time conditional horizon,
  balanced metric, raw coefficient norm, and physical Frobenius loss.  It does
  not strengthen the possibly zero factor
  \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
- Source/progress alignment: The branch remains consistently labeled
  `conditional`.  It is material to the source superlinear-rank regime but
  leaves the certificate-probability gap explicit; this review does not imply
  that the full unconditional source problem is solved.
- Specialized reviews: All four diagnostic artifacts are contract-valid raw
  `BLOCKING` reviews.  Each has at least one numbered blocker, raw repair depth
  `assembly`, and candidate target `/proof-assembly`.  They agree on the
  controlling public-assembly defects; the adversarial review additionally
  identifies the event-wide witness-provenance defect.
- Roadmap or step coverage: Sketch attempt 10 and global attempt 1 have current
  accepted reviews.  All 15 current proof/review pairs are identity-matched and
  `ACCEPTED`, with 45 local units in the exact distribution
  \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\).  The dependency graph is acyclic and
  every consumer follows its producer.
- Proof-details audit: The Gaussian conditioning, normalized Gram
  concentration, product-Haar factorization, exact twirl, metric Lipschitz and
  log-Sobolev calculation, anisotropic projection, raw deficit, finite-path
  closure, endpoint Taylor absorption, physical transfer, continuity, and
  probability accounting are substantively present.  The public endpoint
  proof nevertheless attributes \(W_0\) to a proposition proved only under
  the stronger leverage event; on the theorem's broader event it must instead
  choose the witness supplied by \(\mathcal E_{\rm deficit}\), or derive the
  canonical projected witness from that event.
- Adversarial stress test: A tangent space with projection energy between
  \(r/2\) and \((1-\delta_0^2)r\) can satisfy
  \(\mathcal E_{\rm deficit}\) while failing the stronger leverage condition,
  so the current public witness attribution is genuinely out of scope.  The
  repair uses the existing event definition and changes neither a step target
  nor the theorem.  Zero path, maximal allowed path, worst ellipticity,
  nonzero orthogonal physical residual, and zero conditional path probability
  otherwise preserve the displayed conclusions.
- Assembly report: The report has controlled `Status = COMPLETE`, records the
  exact attempted claim, and says `Blockers = None`, but that completion claim
  is inconsistent with visible public-TeX blockers.  It also states that no
  audit scaffolding or citation defect remains, contradicted by the 15
  auxiliary blocks and unsupported standard tools.  The next assembly must
  synchronize the report with the repaired bundle.
- Public compile/support gate: All nine required files and a fresh 58-page PDF
  exist.  The recorded Tectonic log has no unresolved LaTeX references,
  warnings, or overfull boxes, so syntactic compilation passes.  Support fails:
  no public citation command, bibliography command, or substantive BibTeX
  entry supports the non-elementary tools used in the appendix.
- LaTeX export structure/provenance gate: The setup, preliminaries, main
  theorem, proof sketch, 15 dependency-ordered appendix subsections, and final
  proof are present.  The appendix has exactly the 45 accepted theorem-style
  units, uses no forbidden claim/hypothesis/invariant environment, and exposes
  no branch-local workflow path or template placeholder.  Paper readiness
  fails because every subsection begins with an unattached
  `Auxiliary facts in the present notation` proof block.
- Main theorem self-containedness: The theorem statement itself is concise,
  reader-facing, and uses only setup/preliminary notation and the six numbered
  assumptions.  It defines \(\epsilon_0\) inline, states allowed dependence,
  and exposes probability, horizon, and norm modes without appendix-local
  labels or an opaque admissibility dictionary.
- Assumption provenance gate: The four initialization events are derived, and
  \(\mathcal C_{\rm path}\) is the sole theorem-facing conditional hypothesis,
  exactly as authorized by the formalized goal.  The current public proof must
  repair the witness selection on all of \(\mathcal E_{\rm deficit}\); this is
  a wording/dependency repair because that event already supplies the needed
  witness.
- Redundant public prose gate: Fails.  The 15 standalone auxiliary proof blocks
  package dependency inventories, standard-tool statements, mappings, and
  assumption discharges separately from the relevant theorem-style proofs.
  Their necessary mathematics must be integrated and redundant audit narration
  removed.
- Proof-step notation surface gate: The public theorem exports only stable
  setting quantities.  Orientation, truncation, Bernstein, quotient, and
  Taylor bookkeeping remains appendix-local or proof-local.  No excessive
  helper dictionary leaks into the main theorem.
- Theorem readability and notation economy: Pass for the main theorem and
  preliminaries.  Public appendix statement shape fails only where undefined
  source aliases and vague unnamed inputs replace complete hypotheses or named
  public dependencies.
- Explicit-rate contract: The attempted and public claims expose
  \(n,r,k,\kappa,q\), confidence \(1-r^{-10}\), the conditional probability
  factor, all-time/asymptotic horizon, \(d_{\rm bal}\), and the physical
  Frobenius norm.  Constants have the declared dependence, and the
  \(\kappa_1^{12}\), \(15/16\), and \(\kappa_1^{-12}\) losses are displayed.
  No required dependence is silently hidden.
- Rate Specialization Bridge: Not applicable.  The public theorem states the
  same explicit technical rate proved in the appendix; there is no simplified
  corollary, eliminated auxiliary parameter, or altered probability mode.
- Baseline-reduction check: The zero-path specialization is retained exactly:
  \(\theta_\infty=\theta_0\), the endpoint remainder vanishes, and the full
  initial margin survives.  No baseline target is weakened.
- LaTeX appendix full-derivation gate: Exhaustive, not sampled.  All 45 accepted
  non-atomic local units, all 15 cited-result-application sections, and all 15
  source `Target-Step Assembly` bodies were compared against their matching
  appendix subsections.  The displayed definitions, equations, inequality
  chains, concentration substitutions, compactness/continuity arguments,
  boundary checks, and target assemblies are present.  No accepted local proof
  body is missing; the failures are public integration, attribution, citation,
  and reference defects.
- LaTeX export citation/reference gate: Fails.  Undefined source aliases
  `(Haar)`, `(LEV)`, `(T)`, and `(T1)`--`(T3)` remain in theorem-facing
  statements and proofs.  Cross-used equations use reused manual `\\tag`
  numbers and prose references rather than unique `\\label`/`\\ref` pairs.
  The rectangular Gaussian operator tail, Weyl perturbation, chi-square
  concentration, self-adjoint matrix Bernstein, Haar uniqueness, compact-group
  curvature normalization, and Bakry--Emery log-Sobolev criterion have neither
  complete inline proofs nor BibTeX-backed citations.
- LaTeX export synchronization: The setting, main theorem, proof sketch, and
  assembly report agree on the exact conditional target and constants.  Public
  dependency synchronization fails where step 004 cites
  `prop:step-002-balancing-invariance` instead of
  `lem:step-002-balancing-scalars`, and steps 012--013 cite
  `prop:step-011-uniform-factor-radius` for endpoint existence, displacement,
  or the zero-path identity instead of `lem:step-011-finite-path-limit` and
  `prop:step-011-path-radius`.
- Worker provenance and budgets: The run-scoped literature and perspective
  rows are present with nonempty distinct handles.  The current Perspective 3
  lineage has all 12 perspective-scoped roles plus 30 step-scoped roles, for
  exactly \(12+2\cdot15=42\) distinct required handles.  The profile is
  `gpt-5.6-sol max`.  Perspective 3 consumed 3 of the user-overridden 30 idea
  slots; sketch attempt 10 of 10; global attempt 1 of 100; current-sketch step
  attempts at most 2 of 100; and assembly attempt 1 of 100.  No accepted row is
  over budget.
- Proof-overload rule: No sketch revision is triggered.  Current-sketch
  `step_003` has one coherent four-unit normalized-Gram obligation, and its
  second producer attempt changed only presentation and an explicit event
  alias.  The four diagnostics and this independent coverage audit find no
  missing interface or second substantive repair in that step.

## Critical Issues

1. **Adversarial review and aggregate assumption-provenance check; appendix
   steps 009 and 013.**  The public step-009 witness proposition is conditional
   on the stronger leverage relation, but step 013 invokes that witness on all
   of \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), whose
   definition contains only \(\mathcal E_{\rm deficit}\).  This leaves the
   endpoint margin unsupported on valid deficit outcomes outside the leverage
   event.  At assembly depth, choose a witness from the definition of
   \(\mathcal E_{\rm deficit}\), or derive the normalized projected witness
   from that event, and use that event-wide witness throughout steps 013--014.
   Repair depth: `assembly`.  Target: `/proof-assembly`.
2. **Structural, citation, and adversarial reviews; appendix steps 007--009,
   014, and 015.**  The public bundle retains undefined source-only aliases
   `(Haar)`, `(LEV)`, `(T)`, and `(T1)`--`(T3)`, plus vague inputs such as the
   fixed-target Haar estimate.  These compile as ordinary text but leave
   theorem-style statements and dependencies non-self-contained.  Restate the
   exact hypotheses/conclusions or cite named public results and genuine
   labeled equations.  Repair depth: `assembly`.  Target: `/proof-assembly`.
3. **Citation, rigor, and aggregate reference checks; throughout the
   appendix.**  Cross-used displays are identified by reused manual numbers and
   prose such as `equation (1)` rather than unique `\\label`/`\\ref` pairs.
   This prevents machine-resolvable dependency tracing despite a clean compile
   log.  Replace cross-used manual aliases with unique labels and typed
   theorem/equation references.  Repair depth: `assembly`.  Target:
   `/proof-assembly`.
4. **Citation, rigor, and structural reviews; appendix steps 001, 003, 006,
   and 007.**  Acceptance-critical standard tools lack complete inline proofs
   or exact BibTeX-backed citations: the rectangular Gaussian operator tail,
   Weyl singular-value perturbation, Gaussian chi-square concentration,
   self-adjoint matrix Bernstein, Haar uniqueness, the compact-group curvature
   normalization, and the Bakry--Emery log-Sobolev criterion.  Add faithful
   source identities, citation commands, matching bibliography entries, and
   bibliography behavior, or supply complete inline proofs, without changing
   the accepted applications or constants.  Repair depth: `assembly`.
   Target: `/proof-assembly`.
5. **Structural and adversarial reviews; all 15 appendix step subsections.**
   Every subsection begins with an unattached `Auxiliary facts in the present
   notation` proof block.  These blocks expose audit-style dependency and
   assumption-discharge packaging forbidden in public TeX.  Integrate the
   necessary statements, object mappings, and discharges into the relevant
   lemma/proposition statements and proofs, then remove redundant narration.
   Repair depth: `assembly`.  Target: `/proof-assembly`.
6. **Rigor review and aggregate synchronization check; appendix steps 004,
   012, and 013.**  The balancing-law recap cites the wrong step-002 result,
   while endpoint existence, displacement, and zero-path claims cite the
   uniform-factor-radius proposition rather than the finite-limit lemma and
   path-radius proposition that prove them.  The calculations remain valid,
   and the correct named public results already exist, so repair the dependency
   references and synchronize `assembly_report.md`.  Repair depth: `assembly`.
   Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair.  The exact formalized
conditional claim, accepted 15-step dependency graph, all 45 local proof
units, constants, probability modes, and raw-to-physical bridge remain
mathematically available.  The event-wide witness needed at the endpoint is
already supplied by the setting definition of \(\mathcal E_{\rm deficit}\),
the correct dependency results already exist, and the unsupported standard
tools are already instantiated at the accepted strength.  Therefore the
blockers can be cleared by repairing the public LaTeX translation,
bibliography, internal references, and report synchronization.  No accepted
step interface, sketch decomposition, primitive assumption, algorithm, scope,
metric, dependence, success criterion, or theorem conclusion must change.
In particular, the user's overload rule does not justify revising sketch
attempt 10 or `step_003`.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
