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

- Goal coverage: The accepted mathematical chain reaches the exact formalized
  conditional claim with
  \(\epsilon_0=((15/16)\delta_0)^2\kappa_1^{-12}\), without strengthening the
  possibly zero factor
  \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
- Source/progress alignment: The result remains correctly classified as
  `conditional`; it does not claim that the unconditional source problem is
  solved.
- Specialized reviews: All four diagnostics are contract-valid. Structural is
  raw `BLOCKING` at depth `assembly` with target `/proof-assembly`; rigor,
  citation, and adversarial are raw `PASS` with all three controlled fields
  equal to `None`. The structural blocker controls under the deepest-issue
  rule; this is not a vote-count decision.
- Roadmap or step coverage: Sketch attempt 10 and global attempt 1 have current
  accepted reviews. All 15 current proof/review pairs are identity-matched and
  `ACCEPTED`, and the appendix contains the exact 45-unit distribution
  \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\).
- Proof-details audit: Exhaustive source-to-appendix comparison confirms that
  all 45 local derivations, every used cited-result application, all boundary
  checks, and all 15 target-step assemblies retain their substantive proof
  content. No step proof or dependency interface is missing.
- Adversarial stress test: Worst ellipticity, maximal rank, zero path, maximal
  permitted path, worst-sign Taylor remainder, nonzero orthogonal physical
  residual, and zero conditional path probability preserve the stated
  conclusion. No step-, sketch-, or idea-level obstruction remains.
- Assembly report: It has controlled `Status = COMPLETE`, the exact attempted
  claim, and `Blockers = None`. The latter is not acceptance-authoritative and
  is contradicted by the live notation omissions, so assembly must be rerun
  and the report resynchronized.
- LaTeX export structure/provenance gate: All required content and support
  files exist; the canonical section order, six labeled assumptions, 15 step
  subsections, 45 allowed theorem-style units, and final main-theorem proof are
  present. No forbidden environment, workflow provenance, audit scaffolding,
  or template placeholder remains.
- Public compile/support gate: The current 50-page bundle compiles cleanly.
  The log has no unresolved reference, citation, duplicate-label, bibliography,
  or box warning. All seven external citation keys resolve through
  `reference.bib` and `ims.bst`.
- Main theorem self-containedness: The theorem is concise and reader-facing,
  uses only setup/preliminary notation and the six numbered assumptions,
  defines \(\epsilon_0\) inline, and exposes its dependence, probability,
  horizon, and norm modes. The blocker is confined to appendix-local notation.
- Assumption provenance gate: The four initialization constituents are derived
  outputs. \(\mathcal C_{\rm path}\) is the sole conditional theorem-facing
  hypothesis, exactly as authorized by `setting.md`; no derived invariant is
  silently promoted to a primitive assumption.
- Redundant public prose gate: Pass. The former 15 auxiliary audit blocks have
  been integrated into theorem-style statements and proofs.
- Proof-step notation surface gate: The main theorem exports only stable setting
  quantities. The four omitted declaration families are accepted
  appendix-local/proof-local notation whose definitions were dropped during
  assembly; restoring them does not enlarge a step interface.
- Theorem readability and notation economy: The main theorem and preliminaries
  pass. Four appendix results/proofs fail statement self-containedness only
  because symbols are used before their accepted definitions are declared.
- Explicit-rate contract: The public claim preserves \(n,r,k,\kappa,q\),
  confidence \(1-r^{-10}\), the all-time/asymptotic horizon, \(d_{\rm bal}\),
  physical Frobenius loss, exact constant dependence, and the conditional
  probability factor.
- Rate Specialization Bridge: Not applicable because the public theorem states
  the same technical rate proved in the appendix, with no simplified corollary
  or probability-mode conversion.
- Baseline-reduction check: The zero-path specialization remains exact:
  \(\theta_\infty=\theta_0\), the remainder vanishes, and the full initial
  margin survives.
- LaTeX appendix full-derivation gate: All used steps, not a sample, pass
  substantive source-unit coverage. The first and only unaccounted source
  material is the four-family notation declaration listed below; it is
  definitional rather than a missing derivation.
- LaTeX export citation/reference gate: Seven cited sources and 252 unique
  labels resolve; all theorem-style labels are referenced, and no manual tag,
  malformed command, legacy source alias, or missing BibTeX key remains. The
  free-symbol omissions are semantic self-containedness defects that TeX does
  not detect.
- LaTeX export synchronization: Setting, theorem, sketch, appendix conclusion,
  and assembly report agree on the exact conditional claim, constants, raw
  target, and physical loss. The four omitted declarations are present in the
  accepted source proofs but absent from the public appendix.
- Proof-overload rule: No sketch revision is triggered. Current-sketch
  `step_003` attempt 2 repaired presentation and an event alias only; its four
  mathematical units and exported interfaces did not change.

## Critical Issues

1. **Structural review and independent aggregate self-containedness check;
   appendix steps 002, 006, 008, and 009.** The public appendix omits four
   accepted source declarations while continuing to use their symbols:
   \(\widetilde\zeta_i^M,\zeta_i^M,\bar\zeta_i^M\) in step 002;
   \(Z_M=[z_1^M\ \cdots\ z_k^M]\) and
   \(H_a:=H_A,H_b:=H_B,H_c:=H_C\) in step 006;
   \(h(Q;E,X)=\|P_{QE}X\|_F^2/\|X\|_F^2\) in step 008; and
   \(\mathbb P_{\rm init}(\cdot\mid A,B,C)\) as the remaining-initialization
   conditional law in step 009. This leaves otherwise correct theorem-style
   statements and proofs semantically non-self-contained. The accepted source
   proofs already contain every definition, so the defect is confined to the
   public translation and has no downstream mathematical or interface effect.
   Repair depth: `assembly`. Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair. The exact conditional
claim, accepted 15-step dependency graph, all 45 source proof units, constants,
probability modes, and raw-to-physical bridge are intact. Each missing
declaration already exists in its accepted source proof and can be restored by
editing only the public appendix and synchronizing the assembly report. No
accepted step interface, sketch decomposition, primitive assumption,
algorithm, scope, metric, dependence, success criterion, or theorem conclusion
must change. The three `PASS` diagnostics cannot override the contract-valid
structural blocker, and the user's overload rule provides no basis for a
step-003 or sketch repair.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
