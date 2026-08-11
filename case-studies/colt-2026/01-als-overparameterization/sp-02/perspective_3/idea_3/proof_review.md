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
  \lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
  \ge\epsilon_0(\kappa)\|T\|_F^2>0,
\]
and
\[
  \mathbb P(\mathcal F_+)
  \ge(1-r^{-10})
    \mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]
The final conditional factor is retained exactly and may be zero. No uniform
positive lower bound for it is proved, so the theorem does not solve the
original unconditional open problem. The remaining certificate-probability
gap is to lower-bound
\(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\)
uniformly over the stated regime.

## Review Mode

split

## Review Verdict

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: Pass. The assembled claim equals the authoritative
  conditional goal and proves
  \(F(\theta_\infty)\ge((15/16)\delta_0)^2\kappa_1^{-12}\|T\|_F^2>0\)
  on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), together
  with the exact retained probability factor. It never infers unconditional
  positive probability.
- Specialized diagnostics: Structural, rigor, citation, and adversarial
  artifacts are independently contract-valid `PASS` reports. Each has raw
  `Blocking Issues = None`, `Suggested Repair Depth = None`, and
  `Smallest Candidate Repair Target = None`; there is no reviewer
  disagreement to resolve.
- Roadmap or step coverage: Sketch attempt 10 and its review are current and
  accepted. Global attempt 1 is a valid `COMPLETE_DRAFT` diagnostic paired
  with an `ACCEPTED` review. All 15 current proof/review pairs match sketch
  attempt 10, their current unit attempts, and their reviewed paths; every
  proof is `COMPLETE` and every review is `ACCEPTED`.
- Proof-details audit: Pass. All 45 accepted local units, with per-step counts
  \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\), and all 15 target-step assemblies were
  compared against the corresponding appendix subsection. This was an
  exhaustive source-order audit, not sampling. Statements, displayed
  definitions and equations, inequality chains, cited-tool instantiations,
  boundary checks, probability conversions, and concluding assembly arguments
  are preserved in allowed theorem-style units or proof environments.
- Assembly report: Pass. It has controlled `Status = COMPLETE`, the exact
  attempted conditional claim, and `Blockers = None`, and is synchronized
  with assembly attempt 4.
- Adversarial stress test: Pass at minimal and maximal rank, worst allowed
  ellipticity, \(d=0\), equality in leverage and margin bounds, zero model
  columns, zero and maximal path length, and a zero conditional path factor.
  No hidden independence, mode upgrade, target substitution, or assembly-only
  lemma remains.
- Step 008--010 probability interface: Pass. Proposition
  `prop:step-008-raw-leverage` exports the exponential conditional failure;
  Lemma `lem:step-008-tail-conversion` proves the explicit
  \(r\ge r_{0,\rm LEV}(\kappa)\) conversion; Proposition
  `prop:step-009-raw-witness` names both results and exports the pointwise
  conditional \(r^{-20}\) deficit bound; and Proposition
  `prop:step-010-conditional-union` consumes it to obtain exactly
  \(r^{-20}+3r^{-20}=4r^{-20}\), without independence.
- LaTeX export structure/provenance gate: Pass. The complete support bundle,
  five canonical content files, six stable numbered assumptions, 15 appendix
  subsections, final main-theorem proof, and bibliography entry point are
  present. Public TeX contains no forbidden environments, workflow provenance,
  audit scaffolding, template placeholders, malformed commands, or redundant
  sketch-row prose.
- Main theorem self-containedness: Pass. The concise theorem uses only setup
  and preliminary notation plus numbered assumptions, defines
  \(\epsilon_0(\kappa)\) before use, and states the parameter, probability,
  horizon, norm, and explicitly conditional modes.
- Assumption provenance gate: Pass. The four initialization constituents,
  convergence, radius, Taylor control, raw margin, and physical floor are
  derived by named public results. \(\mathcal C_{\rm path}\) is the sole
  authorized conditional hypothesis and contains only finite path length.
- Redundant public prose gate: Pass.
- Proof-step notation surface gate: Pass. Helper objects are introduced
  locally and no proof-local dictionary leaks into the main theorem.
- Theorem readability and notation economy: Pass. The public theorem has a
  concise reader-facing interface and no technical admissibility dictionary.
- Explicit-rate contract: Pass. The bundle preserves all exposed
  \(n,r,k,\kappa,q\) dependence, lower-only dimension regime, rank window,
  confidence, conditional probability mode, all-time/asymptotic horizon,
  exact norms, auxiliary thresholds, and allowed hidden-constant dependence.
- Rate Specialization Bridge: Not applicable. The public theorem states the
  same quantitative claim proved in the appendix; no simplified rate or term
  absorption is introduced at theorem level.
- Baseline-reduction check: Pass. Identity anisotropy reduces to the direct
  product-Haar estimate, raw/normalized spans agree exactly, and zero path
  gives zero Taylor error and retains the stronger full initial margin.
- LaTeX appendix full-derivation gate: Pass for all used steps, not a sample.
  The appendix is not materially compressed relative to the source proof
  bodies; every source unit and each subsection assembly is accounted for.
- LaTeX export citation/reference gate: Pass. Nine citation occurrences use
  exactly seven present BibTeX entries. All 253 labels are unique, all 487
  `ref`/`eqref` uses address 185 existing targets, and no target is unresolved.
- LaTeX compile/support gate: Pass. The current 51-page PDF and TeX/BibTeX
  support logs postdate the attempt-4 appendix and contain no unresolved
  reference, undefined citation, duplicate-label, box, package, LaTeX, or
  BibTeX warning.
- LaTeX export synchronization: Pass. Setting, theorem, appendix, assembly
  report, endpoint constant, raw target, same-target physical bridge, and
  conditional probability statement agree.
- Source-direction fidelity: Pass with progress type `conditional`. The result
  is material for the source superlinear rank window but does not claim the
  full unconditional open problem. The remaining gap is a uniform positive
  lower bound on
  \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
- Provenance and budgets: Pass. The two required run-scoped handles and the
  branch's 42 required current handles are nonempty, schema-valid, and
  distinct with the required stage provenance. Perspective 3 uses three of
  30 idea slots; sketch attempt 10 is within budget 10; global attempt 1,
  current step attempts at most 2, and assembly attempt 4 are within the
  corresponding budget 100.
- Proof-overload rule: No new sketch revision is triggered. Sketch-1
  `step_003` used ten substantive attempts and correctly caused sketch
  revision. Under sketch 10, `step_003` attempt 2 repaired only presentation
  and an event alias; no additional substantive proof or interface failure was
  found.

## Critical Issues

None

## Failure-Type Rationale

All four specialized diagnostics pass and the independent aggregate checks
find no remaining assembly, step, sketch, or idea blocker. The complete
paper-ready bundle proves the authoritative formalized goal with its exact
conditional scope and source-progress label. Acceptance does not resolve or
hide the remaining certificate-probability gap.

## Suggested Next Action

None

## Retry Mode

none
