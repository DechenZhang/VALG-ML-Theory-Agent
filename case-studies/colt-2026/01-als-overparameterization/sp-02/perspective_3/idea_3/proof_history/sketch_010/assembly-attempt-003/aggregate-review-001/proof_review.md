# Proof Review

## Formalized Setting

Fix \(\kappa\ge1\), a fixed \(q\ge4\), and integers \(n,r,k\).  The
deterministic base matrices \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\)
have nonzero columns with norms in \([\kappa^{-1},\kappa]\), and each
column-normalized base has singular values in \([\kappa^{-1},\kappa]\).
Independently smooth every column by
\(\mathcal N(0,r^{-2q}I_n/n)\), obtaining \(A,B,C\), and define
\[
  D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
  \qquad T=(A\otimes B\otimes C)D_r.
\]
For rank-\(k\) factors, let
\[
  S(X,Y,Z)=\sum_{i=1}^k x_i\otimes y_i\otimes z_i,
  \qquad F(X,Y,Z)=\|T-S(X,Y,Z)\|_F^2.
\]
Initialize raw factors with iid \(\mathcal N(0,1/n)\) entries, independently
of smoothing, apply the componentwise product-preserving geometric-mean
balancing map \(\mathcal G\), and run simultaneous full-batch gradient
descent followed by \(\mathcal G\) with \(\eta=(nkr)^{-12}\).  No projection,
clipping, regularization, sparsification, restart, or early stopping is used.
The regime is
\[
  n\ge C(\kappa,q)r^4\log r,
  \qquad r<k\le\lfloor r^{5/4}\rfloor,
\]
with no upper restriction on \(n\).

On full column rank, define
\(\alpha_{i,t}=A^\dagger x_{i,t}\),
\(\beta_{i,t}=B^\dagger y_{i,t}\), and
\(\gamma_{i,t}=C^\dagger z_{i,t}\), together with their initial
\(\sqrt{n/r}\)-normalized versions.  Let
\[
  \widehat D_0=\sum_{i=1}^k
  \alpha_{i,0}\otimes\beta_{i,0}\otimes\gamma_{i,0},
  \qquad \delta_0=\frac18,
\]
and let \(\mathscr S_0\) be the common raw/normalized initial tangent span.
The exact pair-Gram relation is
\(G_{\rm raw}^{pq}=(r/n)^2G_{\rm norm}^{pq}\); normalization is
certificate-only and does not alter \(D_r\), \(\widehat D_0\), the witness,
or the physical loss.

With \(\kappa_1=2\kappa^2\), the generated event
\(\mathcal E_{\rm init\_norm}\) is the intersection of: realized-factor
conditioning \(\mathcal E_{\rm cond}\); all three normalized pair-Gram
windows \([r^{-20},r^{20}]\); the raw tangent-deficit event
\[
  \exists W_0:\ \|W_0\|_F=1,\quad W_0\perp\mathscr S_0,\quad
  \langle D_r-\widehat D_0,W_0\rangle
  \ge\delta_0\|D_r\|_F;
\]
and the balanced initial-size event \(\max_{i,m}\|m_{i,0}\|_2\le2\).
These are generated outputs, not primitive assumptions.

Define the balanced metric \(d_{\rm bal}\), total path length
\(E_{\rm path}=\sum_{t\ge0}d_{\rm bal}(\theta_{t+1},\theta_t)\),
\[
  C_{\rm CP}(\kappa,R)=\kappa_1^3(1+3R),
  \qquad
  E_\star=\min\left\{1,
    \sqrt{\frac{\delta_0}{16C_{\rm CP}(\kappa,3)}}\right\},
\]
and the sole trajectory certificate
\(\mathcal C_{\rm path}=\{E_{\rm path}\le E_\star\}\).  It contains no
convergence, boundedness, Gram, trapping, or positive-loss clause.  The exact
same-target physical bridge is
\[
  (P_A\otimes P_B\otimes P_C)(T-S(\theta))
  =(A\otimes B\otimes C)(D_r-\Psi_{A,B,C}(\theta)).
\]
The primitive assumptions are exactly
`assump:base_conditioning`, `assump:dimension`, `assump:rank_window`,
`assump:gaussian_smoothing`, `assump:independent_initialization`, and
`assump:gd_step`.  Probability is under the joint smoothing and independent
initialization law conditional on the deterministic base triple.  The progress
type is `conditional`; no positive lower bound for the path-certificate
probability is assumed or claimed.

## Formalized Goal

There exist \(r_0(\kappa,q)\), \(C(\kappa,q)\), and
\(\epsilon_0(\kappa)>0\) such that, uniformly for
\[
  r\ge r_0(\kappa,q),\qquad
  n\ge C(\kappa,q)r^4\log r,\qquad
  r<k\le\lfloor r^{5/4}\rfloor,
\]
and every allowed deterministic base triple,
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]
On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), the balanced
iterates converge in \(d_{\rm bal}\) to a finite \(\theta_\infty\) and
\[
  \lim_{t\to\infty}F(\theta_t)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]
For the convergence-and-positive-limit event \(\mathcal F_+\), prove
\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]
The final conditional factor may be zero; a uniform positive lower bound for
it remains the source-level gap.

## Reviewed Roadmap

1. Produce realized conditioning and left-inverse bounds.
2. Derive balanced coefficient Gaussianization and exact invariances.
3. Prove all three normalized Khatri--Rao Gram windows.
4. Produce the balanced initial-size event.
5. Establish exact tangent scaling, gauge, and quotient-range identities.
6. Factor \(\mathscr S_0=LQE\) with independent product-Haar orientations.
7. Prove the fixed-target product-Haar mean and concentration tail.
8. Transfer through \(L\) and obtain raw leverage at most \(r/2\).
9. Construct the raw normal witness and produce \(\mathcal E_{\rm deficit}\).
10. Assemble \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).
11. Derive conditional finite-path convergence and factor-radius control.
12. Prove the exact endpoint Taylor remainder.
13. Cancel the tangent derivative and preserve the raw endpoint margin.
14. Transfer the margin to the exact physical relative loss.
15. Prove continuity, event inclusion, and conditional accounting.

## Attempted Claim

Fix \(\kappa\ge1\) and fixed \(q\ge4\).  There exist
\(r_0(\kappa,q)\), \(C(\kappa,q)\), and
\[
  \epsilon_0(\kappa)
  =\left(\frac{15}{16}\delta_0\right)^2\kappa_1^{-12}>0,
  \qquad \delta_0=\frac18,\quad \kappa_1=2\kappa^2,
\]
such that the formalized initialization-confidence bound holds uniformly in
the stated regime.  On
\(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\),
\[
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0,
\]
and
\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]
The retained conditional factor may be zero; no unconditional
positive-probability theorem is attempted.

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: The accepted mathematics reaches the exact conditional claim
  and explicit \(((15/16)\delta_0)^2\kappa_1^{-12}\) loss constant.  It does
  not strengthen the possibly zero conditional factor.
- Roadmap or step coverage: Sketch attempt 10 and global attempt 1 have current
  accepted reviews.  All 15 current proof/review pairs are identity-matched
  and `ACCEPTED`.
- Proof-details audit: All 45 accepted local units, with distribution
  \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\), have matching public theorem-style
  labels, substantive proof bodies, and one target-assembly proof per step.
  The first unclosed public interface is the Step 009 probability export
  described below; its accepted source derivation is present.
- Assembly report: It has controlled `Status = COMPLETE`, the exact attempted
  claim, and `Blockers = None`; the live public-interface defect overrides that
  producer assessment and requires report synchronization after repair.
- Adversarial stress test: The adversarial and rigor diagnostics independently
  identify the same Step 008-to-010 rate-interface omission.  Structural and
  citation pass.  The two blocking diagnostics control under the deepest-issue
  rule.
- LaTeX export structure/provenance gate: Required files, canonical sections,
  six stable assumptions, 15 appendix subsections, final theorem proof, and
  bibliography support are present.  No workflow provenance, forbidden public
  environment, audit scaffolding, placeholder, duplicate label, or malformed
  reference fragment remains.
- Main theorem self-containedness: The theorem is concise, uses only setup and
  preliminary notation, declares dependence, probability, horizon, and norm
  modes, and preserves the exact conditional scope.
- Assumption provenance gate: The four initialization constituents are derived
  outputs.  \(\mathcal C_{\rm path}\) is the sole authorized conditional
  theorem-facing input.
- Redundant public prose gate: Pass.
- Proof-step notation surface gate: Pass; proof-local dictionaries do not leak
  into the main theorem.
- Theorem readability and notation economy: Pass.
- Explicit-rate contract: The theorem preserves \(n,r,k,\kappa,q\), the
  \(1-r^{-10}\) confidence, all-time/asymptotic horizon, exact norms, constant
  dependence, and retained conditional probability.
- Rate Specialization Bridge: Not applicable; the public theorem states the
  same technical rate proved in the appendix.
- Baseline-reduction check: The zero-path case remains exact and retains the
  stronger full initial margin.
- LaTeX appendix full-derivation gate: All used steps, not a sample, were
  checked against their source units and target assemblies.  The blocker is a
  missing named dependency/export in the public Step 009 interface, not an
  absent accepted derivation.
- LaTeX export citation/reference gate: Seven BibTeX-backed sources and all
  internal labels resolve; the post-source compile log is clean.
- LaTeX export synchronization: Setting, theorem, endpoint constant, raw
  target, physical loss, and conditional probability mode agree.  The public
  Step 009-to-Step 010 dependency chain alone is not synchronized with the
  accepted Step 009 source interface.
- Provenance and budgets: Worker-log rows are schema-valid and distinct for
  producers/reviewers, including this aggregate row.  Perspective 3 uses
  three idea slots; sketch attempt 10 is within the budget 10; global attempt
  1, step attempts at most 2, and assembly attempt 3 are within budget 100.
- Proof-overload rule: No sketch revision is triggered.  Current-sketch
  `step_003` attempt 2 repaired presentation and an event alias only, not a
  second substantive obstruction or a missing interface.

## Critical Issues

1. **Rigor and adversarial reviews; independent aggregate check; public Steps
   008--010.** Proposition~\ref{prop:step-008-raw-leverage} exports conditional
   failure only
   \(8\exp(-c_Hr/(16\kappa_1^{24}))\).  The separate
   Lemma~\ref{lem:step-008-tail-conversion} proves the sufficiently-large-\(r\)
   conversion to \(r^{-20}\).  Public Proposition
   `prop:step-009-raw-witness` names only the raw-leverage input, asserts
   \(r^{-20}\) in its proof without citing the conversion lemma, and does not
   export that conditional probability conclusion in its statement.  Public
   Proposition `prop:step-010-conditional-union` then cites only the Step 009
   proposition while consuming its unexported \(r^{-20}\) interface.  Thus the
   named public dependency chain does not establish the displayed
   \(4r^{-20}\) union bound.  At assembly depth, add both Step 008 results and
   their large-\(r\) regime to the Step 009 statement/proof, explicitly export
   the conditional \(r^{-20}\) deficit conclusion, and make Step 010 consume
   that complete named conclusion.  Target: `/proof-assembly`.

## Failure-Type Rationale

`PROOF_ASSEMBLY_FLAW` is the deepest required repair.  The accepted Step 009
source already names both Step 008 units and derives the conditional
\(r^{-20}\) conclusion; all constants, events, and downstream mathematics are
available.  The defect arose only when that accepted interface was translated
into public theorem-style dependencies.  Repair requires no change to a step
proof, sketch decomposition, primitive assumption, algorithm, scope, metric,
dependence, success criterion, or theorem conclusion.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
