# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1
- Reviewed proof artifact:
  `perspective_1/idea_6/proof_steps/step_009/proof.md`
- Frozen SHA-256:
  `87d33c4e95c775caade07b7beb57fbf11bfd693ac0e048870240e6d501931e80`
- Accepted sketch SHA-256:
  `97ca4a325c425bd2abf3ea13d6f68be96a3d7bd182f1d939a69127a44ff97bf3`
- Accepted sketch-review SHA-256:
  `ca663c02a0b7a5975297cdf2a2244fb91c597aa2ccec8ad72ba353402c3528af`
- Reviewed setting SHA-256:
  `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Accepted dependencies:
  - `perspective_1/idea_6/proof_steps/step_007b/proof.md`, frozen SHA-256
    `7c540efa61e1713c6260bbf7f66a1ab7b8d3b8038f7b81fd1baffa1995a8daf5`,
    with accepted review SHA-256
    `086c0e421f3526aa58142c5a7ebc3d82bb693a2d7ce1d682ff2fa10bb3750f2b`.
  - `perspective_1/idea_6/proof_steps/step_008/proof.md`, frozen SHA-256
    `e6fefece7e304806279791c401f37aca3a1298d4caecd8be3f89824f0c1d3568`,
    with accepted review SHA-256
    `925091eae4deb4dbd4bd80bd24c0f90c8e9bad5232ed056b6a8c3f17f7c98d86`.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: generated literal-orbit recurrence and frozen support

- Statement fidelity: PASS.  The lemma matches the sketch row's required
  one-entry-sweep indexing: `e^1` is the state after the first literal
  active U/V/W sweep, while later completed states are indexed by `t`.  It
  states exact-span membership, the quotient norm decay, the conditional
  next-sweep identity, and the permanently zero inactive columns.
- Proof validity: PASS.  The accepted `step_007b` entry is used as the base
  case, and the accepted `step_008` chronology identifies each literal
  U/V/W block sequence with `e_U,e_V,e_W=Psi^q(e^t)`.  Domain invariance and
  `Psi^q(0)=0` justify the induction inequality
  `eta_(t+1)<=ell eta_t`.
- Cited-result and assumption audit: PASS.  `Claim~\ref{claim:step-007b-entry}`
  and `Claim~\ref{claim:step-008-basin}` are the accepted dependency
  interfaces, with the frozen hashes recorded above.  Generated domain
  membership and inverse legality are consumed as dependency conclusions,
  not promoted to primitive assumptions.  The zero-padded
  Moore--Penrose identity is also supplied by the accepted dependencies.
- Rigor checklist: PASS.  The proof separates the stopped branch from the
  continuing branch, so it makes no counterfactual post-stopping claim.  The
  entry offset, strict `ell<1/4` bound, and terminal-sweep inclusion are all
  explicit.  The induction preserves the actual literal orbit rather than
  an auxiliary projected iteration.
- Local adversarial test: PASS.  An early successful residual test simply
  terminates the induction; if every earlier test fails, the next solve is
  legal by the invariant domain.  Frozen zero columns cannot be populated by
  a full rank-`k` pseudoinverse update because the active/inactive block
  identity is exact.
- Contribution to target step: PASS.  This is the required quotient-to-literal
  chronology and provides the correct `t-1` exponent for the stopping bound.
- Verdict: PASS
- Repair direction: None.

### unit_002: balanced quotient-to-Frobenius residual transfer

- Statement fidelity: PASS.  The proposition targets the original rank-`k`
  Frobenius reconstruction, includes the frozen zero columns, and exports
  the stated rank-free constant `<8` before the permitted relaxation to
  `8 kappa_0^2`.
- Proof validity: PASS.  Product-one canonical balancing preserves every
  literal rank-one term.  The three-term tensor telescoping identity is
  exact.  The unfolding bounds use `||C_M||_2<=eta`, the Gershgorin bound
  `||G_M||_2<=sqrt(1+q_real)`, and the unit-column Khatri--Rao identity, so
  no `sqrt(r)` loss is introduced.  The scalar-product term is controlled by
  `|1-exp(s_j)|<=exp(eta) eta`.
- Cited-result and assumption audit: PASS.  Unit-column and `q_real` bounds
  are accepted `E_sm` conclusions carried through `step_008`; target-span
  membership is supplied by unit 001.  All other ingredients are displayed
  finite-dimensional identities in current notation.  No unproved condition
  number, residual surrogate, or arbitrary-tube hypothesis is used.
- Rigor checklist: PASS.  For the target atom Gram, each off-diagonal
  product is bounded by `q_real^2` and the remaining mode row sum by
  `q_real`, giving the displayed `q_real^3` Gershgorin floor.  The denominator
  is therefore positive.  The numerical inequalities in (2.9) imply
  `6 sqrt(12/7)<8` for `q_real<=1/4096` and `eta<=1/1024`; all norms and
  signs are in the fixed chart.
- Local adversarial test: PASS.  Dense coefficient perturbations are handled
  through induced row/column-to-spectral conversion, while nontrivial
  direction columns are charged explicitly by the telescoping unfoldings.
  Unequal represented products are covered by the separate exponential term,
  and no absolute weight scale enters after division by `||T||_F`.
- Contribution to target step: PASS.  It is the exact residual bridge from
  the quotient recurrence to the source stopping metric.
- Verdict: PASS
- Repair direction: None.

### unit_003: finite stopping time and zero-floor baseline

- Statement fidelity: PASS.  The proposition states the exact first-hitting
  horizon `m_epsilon`, the per-sweep relative residual bound, and the
  stationary orthogonal/equal-weight zero-residual specialization requested
  by the sketch.
- Proof validity: PASS.  The recurrence from unit 001 and `ell<1/4` give
  `eta_t<4^{-(t-1)}` after the entry sweep.  Substitution into unit 002 and
  the ceiling inequality (3.4) force the residual test by sweep
  `m_epsilon`; earlier success is handled by the first-hitting rule.  The
  exact stationary state is treated separately and retains zero residual,
  rather than replacing it by a tolerance floor.
- Cited-result and assumption audit: PASS.  The only primitive parameter
  restriction used locally is `0<epsilon<1` (with the global setting
  convention `kappa_0>=1` for the displayed relaxation); all orbit and basin
  facts come from the two accepted dependencies and named local results.
- Rigor checklist: PASS.  The logarithm argument is positive, the ceiling
  gives the correct inequality direction, and the one-sweep offset is
  preserved.  The proof distinguishes a deterministic limiting stationary
  baseline from a finite nonstationary certificate transient.
- Local adversarial test: PASS.  If `epsilon` is met before the advertised
  horizon, no unnecessary iterate is asserted; if not, (3.4) supplies the
  first forced success.  At the exact fixed point the residual is exactly
  zero for every positive accuracy threshold.
- Contribution to target step: PASS.  This closes `E_stop` with no additive
  smoothing, certificate, or entry-error floor.
- Verdict: PASS
- Repair direction: None.

### unit_004: active-refinement arithmetic cost

- Statement fidelity: PASS.  The proposition is scoped to the active
  refinement and stopping tests, exactly the portion assigned to `step_009`,
  and leaves proposal, filtering, failed-run, and restart costs to `step_010`.
- Proof validity: PASS.  Dense unfolding-by-Khatri--Rao multiplication,
  active Gram formation, exact `r` by `r` solves, factor storage, and residual
  reconstruction are each accounted for.  The active inverse branch and the
  zero-padding identity justify avoiding a singular `k` by `k` solve.
  Multiplication by three modes changes only the universal constant, yielding
  (4.1).
- Cited-result and assumption audit: PASS.  The exact arithmetic procedure
  and accepted nonsingularity/zero-padding interfaces are the only inputs;
  no generated condition-number oracle is hidden in the cost claim.
- Rigor checklist: PASS.  The dimensions of a dense mode unfolding and its
  `n^2` by `r` Khatri--Rao design give `O(n^3 r)`, while the stated storage
  includes the dense tensor, designs, factors, and active work arrays.
  The finite stopping bound from unit 003 controls the number of tests.
- Local adversarial test: PASS.  The singular inactive block is handled by
  the Moore--Penrose block formula, and an active singular branch cannot occur
  inside the generated basin.  Clearing or retaining `k-r` zero columns is
  bounded by the displayed `O(nk)` term.
- Contribution to target step: PASS.  It supplies the requested polynomial
  per-run active-refinement runtime without an unlisted trajectory parameter.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

PASS.  The local lemma map covers the independent orbit-induction,
quotient-to-Frobenius, stopping, baseline, and arithmetic-cost claims.  The
assembly does not use subsection names, bare unit IDs, or an unstated
convergence theorem as mathematical authority.  Exact target-span membership,
inverse legality, product-register chronology, zero padding, and the fixed
point are either named accepted dependency conclusions or proved in a listed
unit.  No hidden probability upgrade, generated invariant, term absorption,
or condition-number bound is smuggled into the stopping argument.

## Target Claim Audit

PASS.  The proof establishes the exact sketch-row claim: one literal entry
sweep is counted as sweep one; every subsequent completed state is the
chronologically refreshed `e_W=Psi^q(e)` representative; inactive columns
remain exactly zero; and the consumed residual is the original rank-`k`
Frobenius residual.  The displayed bound
`8 kappa_0^2 4^{-(m-1)}` follows with the correct quantifiers and first-hit
interpretation, and the active cost is exported separately.  Scope remains
conditional on the generated `E_parallel_entry` and `E_basin_parallel`
events, as required by the accepted sketch; no unconditional basin premise or
changed algorithm is introduced.

## Explicit Rate Audit

- Exposed variables: `n`, `r`, `k`, `kappa_0`, `epsilon`, completed-sweep
  index `t`, and the fixed quotient quantities `q_real`, `rho_ALS`, and
  `ell`; the original relative Frobenius norm is the output metric.
- Hidden constants may depend only on universal dense-linear-algebra and
  numerical constants (with `q_*`, `rho_ALS`, and `ell` fixed as displayed).
  They do not depend on the base triple, realized perturbations, smoothing or
  confidence parameters, labels, or an unlisted generated condition number.
- Fixed quantities: `q_*=1/4096`, `rho_ALS=1/1024`, and
  `ell=17/512<1/4`; the accepted geometry supplies the remaining fixed
  margins.
- Probability mode: deterministic conditional on the already accepted
  `E_parallel_entry` and `E_basin_parallel` events.  This step adds no union
  bound or confidence conversion.
- Horizon mode: one finite entry sweep followed by a finite first-hitting
  horizon bounded by `m_epsilon`; no all-time probabilistic upgrade is made.
- Norm mode: `d_Q` for the generated quotient recurrence and the original
  relative Frobenius norm for stopping, linked by Proposition~\ref{prop:step-009-residual}.
- Admissibility and auxiliary tolerances: `0<epsilon<1` and the global
  `kappa_0>=1` convention; target-span/tube membership is generated and
  proved, not an extra theorem-facing assumption.  No numerical tolerance is
  introduced beyond the accepted `rho_ALS` tube.
- Term absorption: (2.2) and (2.9) display the residual and numerical
  constant bounds; (3.3) uses the explicit `ell<1/4` specialization; and
  (3.4) proves the ceiling-to-accuracy implication.  No rate term is dropped
  by prose alone.
- Probability conversion: None at this step; restart amplification belongs
  to `step_010`.
- Contribution to rate specialization: exports
  `m_epsilon=O(1+log kappa_0+log(1/epsilon))` and the per-run cost
  `O(m_epsilon(n^3r+nr^2+r^3+nk))`, which is the designated active-refinement
  component of the polynomial runtime bridge.
- Baseline reduction: the exact orthogonal equal-weight stationary state has
  `e^1=0`, all refreshed common-product registers equal zero, and exactly
  zero original residual; finite nonstationary entry transients are not
  incorrectly identified with that stationary specialization.

## Notation Surface Audit

PASS.  `e^t`, `eta_t`, and `m_epsilon` are the minimal public-facing sweep,
error, and stopping quantities.  `T_hat(e)`, `D_M`, `mathcal G`, and the
  coefficient vector `a` are explicitly marked proof-local/appendix-local and
  are derived from setting notation.  `E_parallel_entry`, `E_basin_parallel`,
  `T_parallel`, and `Psi^q` are inherited public interfaces.  No one-off alias
  is exported, signs and permutations remain in the accepted fixed chart, and
  no helper dictionary hides boundedness or parameter dependence.

## Target-Step Assembly Audit

PASS.  `Claim~\ref{claim:step-007b-entry}` supplies the actual literal entry
and zero-padding identity; `Claim~\ref{claim:step-008-basin}` and the named
chronology lemma supply the legal full-sweep quotient map and contraction.
Lemma~\ref{lem:step-009-orbit} composes those dependencies with the correct
entry offset, Proposition~\ref{prop:step-009-residual} transfers the result
to the original tensor loss, and Propositions~\ref{prop:step-009-stop} and
`\ref{prop:step-009-runtime}` close stopping and cost.  These named results
jointly imply the exact target claim without a new bridge or changed
dependency interface.

## Review Rationale

The frozen proof supplies every step-local obligation under the accepted
interfaces.  Its induction begins with the generated first sweep, preserves
the literal cyclic orbit through the single refreshed product register, and
never treats the quotient representative as a surrogate iterate.  The
rank-free unfolding argument gives a valid original-Frobenius residual bound,
the ceiling calculation gives the requested finite first-hitting time, and
the exact stationary specialization preserves the zero-residual baseline.
The arithmetic accounting is an upper bound for the prescribed active
rank-`r` updates and explicitly excludes costs owned by `step_010`.  No local
defect requires changing the sketch row, assumptions, target metric, or
dependency list, so the smallest retry target is `None`.
