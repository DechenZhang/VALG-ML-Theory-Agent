# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_009`
- Unit attempt: 1

## Target Step Claim

Including the one entry sweep, iterate the actual active cyclic ALS orbit to
relative residual `epsilon` in

\[
 m\ge 1+\left\lceil {\log(8\kappa _0^2/\epsilon)\over\log 4}\right\rceil
 =1+O(\log(1/\epsilon))
\]

active sweeps, using the generated exact-span entry `E_parallel_entry`, the
generated invariant basin `E_basin_parallel`, and the legal common-register
full-sweep map
`Psi^q(e)=e_W=(C_U^+,C_V^+,C_W^+,s_W^+)` with
`ell<1/16<1/4`.  Keep the other `k-r` columns exactly zero.  Prove that the
balanced quotient residual is the residual of the literal rank-`k` ALS state
in the original Frobenius metric, establish

\[
 {\left\|T-\sum_{i=1}^k x_i^m\otimes y_i^m\otimes z_i^m\right\|_F
  \over \|T\|_F}
 \le 8\kappa _0^2 4^{-(m-1)},
\]

and give the resulting first-hitting-time and active-refinement arithmetic
cost.  The dependencies are `step_007b` and `step_008`; the only primitive
assumption used by this row is `assump:accuracy-confidence`.  The technical
challenges are the one-entry-sweep indexing, the refreshed
quotient-to-literal-orbit identity, residual equivalence, and explicit
stopping/runtime accounting.  The output targets are `E_stop` and the
per-run active-refinement runtime contribution.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  `assump:accuracy-confidence`, used here only through `0<epsilon<1`.
- Derived invariants supplied by accepted dependencies:
  - `E_parallel_entry` from
    `perspective_1/idea_6/proof_steps/step_007b/proof.md`, frozen SHA-256
    `7c540efa61e1713c6260bbf7f66a1ab7b8d3b8038f7b81fd1baffa1995a8daf5`,
    with accepted review SHA-256
    `086c0e421f3526aa58142c5a7ebc3d82bb693a2d7ce1d682ff2fa10bb3750f2b`.
    It supplies the literal first cyclic sweep, exact active/rank-`k`
    zero-padding equivalence, exact target-span entry, and the canonical state
    `e^1` satisfying
    `||e^1||_Q<=4096(omega+beta_perp)<rho_ALS/3`.
  - `E_basin_parallel` from
    `perspective_1/idea_6/proof_steps/step_008/proof.md`, frozen SHA-256
    `e6fefece7e304806279791c401f37aca3a1298d4caecd8be3f89824f0c1d3568`,
    with accepted review SHA-256
    `925091eae4deb4dbd4bd80bd24c0f90c8e9bad5232ed056b6a8c3f17f7c98d86`.
    It supplies the canonical product-one quotient, exact
    quotient-equivalence of all refreshed states to the literal ALS orbit,
    target-span invariance, frozen-zero equivalence, the exact fixed point,
    and
    \[
      d_Q(\Psi^q(e),\Psi^q(\widetilde e))
      \le \ell d_Q(e,\widetilde e),\qquad
      \ell={17\over512}< {1\over16}< {1\over4}.
    \]
    Its accepted realized-geometry interface also supplies unit target
    columns and `q_real<=q_*`.
- Local conditional hypotheses:
  membership of a canonical state in
  `T_parallel(rho_ALS)` is used inside the residual-transfer proposition.
  Lemma~\ref{lem:step-009-orbit} proves this membership for every generated
  pre-stopping state, so it is not an additional theorem condition.

The setting convention `kappa_0>=1` is used only to relax the proved constant
`8` to the sketch-prescribed `8 kappa_0^2`; no realized scale bound is assumed
in this step.  No archived artifact, prior idea branch, or global diagnostic is
used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted `E_parallel_entry` and `E_basin_parallel` claims, every completed literal active sweep has a canonical state `e^t` in `T_parallel(rho_ALS)` with `||e^t||_Q<=ell^(t-1)||e^1||_Q` and all inactive columns zero; whenever the stopping test fails, the next completed state is exactly `e^(t+1)=Psi^q(e^t)`. | Connects the generated quotient recurrence to the actual rank-`k` ALS trajectory with the entry sweep counted as sweep one. |
| `unit_002` | proposition | Under the accepted realized geometry carried by `E_basin_parallel`, if `e` is a generated canonical target-span state from Lemma~\ref{lem:step-009-orbit} with `eta=||e||_Q<=rho_ALS`, then its literal rank-`k` reconstruction satisfies `||T-T_hat(e)||_F/||T||_F<8 eta<=8 kappa_0^2 eta`. | Proves residual equivalence and a rank-free quotient-to-original-Frobenius transfer. |
| `unit_003` | proposition | Under Assumption~\ref{assump:accuracy-confidence}, Lemma~\ref{lem:step-009-orbit}, and Proposition~\ref{prop:step-009-residual}, the first relative-residual hitting time is at most `m_epsilon=1+ceil(log(8 kappa_0^2/epsilon)/log 4)`, and the exact stationary baseline has zero error after the entry sweep. | Proves `E_stop`, the stated sweep rate, and absence of an error floor. |
| `unit_004` | proposition | Under the exact-arithmetic ALS procedure and Proposition~\ref{prop:step-009-stop}, the active refinement plus exact stopping tests costs `O(m_epsilon(n^3 r+n r^2+r^3+n k))` arithmetic operations in a dense-tensor implementation. | Gives an explicit polynomial per-run refinement cost without a generated condition number. |

Atomic step = no.  Literal-orbit identification, the rank-free Frobenius
transfer, the finite hitting-time calculation, and the operation count are
independent nontrivial obligations.

## Cited Result Applications

### Accepted first-sweep entry

The accepted dependency Claim~\ref{claim:step-007b-entry} is restated in the
notation used here as follows.  Starting from the selected active
initialization and its `k-r` frozen zero columns, one literal U/V/W cyclic
sweep is well-defined.  The rank-`k` Moore--Penrose updates equal the
nonsingular active rank-`r` updates followed by zeros.  After that sweep, all
active direction columns lie in their corresponding realized target spans,
and product-preserving canonical balancing gives

\[
 e^1=(C_U^1,C_V^1,C_W^1,s^1),\qquad
 \|e^1\|_Q\le4096(\omega+\beta_{\perp})<\rho_{\rm ALS}/3.
\tag{D.1}
\]

Its assumptions are discharged by the already accepted dependency chain; this
step uses only the displayed entry interface.

### Accepted invariant quotient basin

The accepted dependency Claim~\ref{claim:step-008-basin}, together with
Lemma~\ref{lem:step-008-chronology}, is restated as follows.  On
`T_parallel(rho_ALS)`, all three exact active block solves are nonsingular,
the refresh sequence

\[
 e\longmapsto e_U\longmapsto e_V\longmapsto
 e_W=\Psi^q(e)
\tag{D.2}
\]

consists of canonical representatives of the corresponding literal U/V/W
ALS intermediates, and the rank-one product represented at every intermediate
is unchanged by the refresh.  The domain is invariant, the exact target is
the state `0`, `Psi^q(0)=0`, and

\[
 d_Q(\Psi^q(e),\Psi^q(\widetilde e))
 \le\ell d_Q(e,\widetilde e),\qquad
 \ell={17\over512}<\frac14.
\tag{D.3}
\]

The same accepted result proves that the inactive zero-padded block remains
zero and that its quotient state represents the original literal rank-`k`
reconstruction, not a projected or surrogate iterate.  The accepted
realized-geometry input to that claim gives unit columns in each `G_M` and
`q(G_M)<=q_real<=q_*`.

### Elementary matrix and tensor identities

For every real matrix `A`,

\[
 \|A\|_2\le
 \sqrt{\|A\|_{\rm row,1}\|A\|_{\rm col,1}},
 \qquad \|AB\|_F\le\|A\|_2\|B\|_F.
\tag{D.4}
\]

The first inequality follows from
`||A||_2^2<=||A||_1||A||_infty`; the second follows by applying the largest
singular value of `A` to every column of `B`.  If `a_j,b_j` are unit vectors,
then

\[
 \left\|\operatorname{diag}(c)(B\odot A)^T\right\|_F^2
 =\sum_j c_j^2\|b_j\otimes a_j\|_2^2=\|c\|_2^2.
\tag{D.5}
\]

These direct identities are the only general-purpose tools used in the
residual conversion; no external local-convergence theorem is invoked.

For a real symmetric matrix whose diagonal entries equal one and whose
off-diagonal absolute row sums are at most `b`, the Gershgorin circle theorem
places every eigenvalue in `[1-b,1+b]`.  We apply this only to the symmetric
Gram matrices `G_M^T G_M` with `b=q_real` and to the tensor-atom Gram matrix
in (2.7) with `b=q_real^3`; the required diagonal and row-sum facts are
verified explicitly below.

## Local Derivation

### unit_001: lemma

**Lemma (generated literal-orbit recurrence and frozen support).**
\label{lem:step-009-orbit}

Under the accepted Claim~\ref{claim:step-007b-entry} and
Claim~\ref{claim:step-008-basin}, suppose a run reaches the active refinement
phase.  Number completed active cyclic sweeps starting at one, so the entry
sweep produces `e^1`.  For every `t>=1` completed before or at the stopping
time, its literal active factors have a canonical quotient representative in
`T_parallel(rho_ALS)`, all inactive columns are exactly zero, and

\[
 \eta_t:=\|e^t\|_Q
 \le\ell^{t-1}\eta_1
 <\ell^{t-1}{\rho_{\rm ALS}\over3}.
\tag{1.1}
\]

Whenever the residual test after sweep `t` fails and the algorithm completes
the next sweep,

\[
 e^{t+1}=\Psi^q(e^t).
\tag{1.2}
\]

The equality in (1.2) is equality of quotient representatives of the actual
literal ALS orbit, not an auxiliary iteration.

**Proof / justification.**

The accepted first-sweep result gives the literal state `e^1`, its exact-span
membership, its bound (D.1), and zeros in the other `k-r` slots.  This is the
base case and accounts for the finite entry sweep before any use of the
contraction.

Assume the assertion holds at sweep `t`.  If its residual test succeeds,
there is no next iterate to prove.  If it fails, domain invariance in the
accepted basin result makes all U, V, and W active solves legal.  Its
chronology identity (D.2) says that the canonical records after those literal
solves are exactly `e_U,e_V,e_W`; hence the completed literal state is
`e^(t+1)=e_W=Psi^q(e^t)`.  Applying (D.3) against the exact fixed point gives

\[
 \eta_{t+1}=d_Q(\Psi^q(e^t),\Psi^q(0))
 \le\ell d_Q(e^t,0)=\ell\eta_t.
\tag{1.3}
\]

It also returns the new state to `T_parallel(rho_ALS)`.  The zero-padded
Moore--Penrose identity in both accepted dependencies makes each literal
rank-`k` block update equal to the active update followed by zeros; equivalently,
the procedure freezes those slots by definition.  Thus no inactive component
can be generated.  Induction proves (1.1) for every sweep actually reached,
including the terminal sweep.  If a test succeeds, (1.2) is not invoked and
no counterfactual post-stopping iterate is claimed.

### unit_002: proposition

**Proposition (balanced quotient-to-Frobenius residual transfer).**
\label{prop:step-009-residual}

Under the accepted realized unit-column and `q_real<=q_*` geometry carried by
Claim~\ref{claim:step-008-basin} and the generated-orbit conclusion of
Lemma~\ref{lem:step-009-orbit}, let

\[
 e=(C_U,C_V,C_W,s)\in\mathcal T_{\parallel}(\rho_{\rm ALS}),qquad
 \eta=\|e\|_Q,
\]

and let `P_M=G_M(I+C_M)` be its oriented unit-direction matrices.  Its
canonical represented active tensor is

\[
 \widehat T(e)
 :=\sum_{j=1}^r\lambda_j e^{s_j}
       p_{U,j}\otimes p_{V,j}\otimes p_{W,j}.
\tag{2.1}
\]

Then this is exactly the tensor reconstructed by the corresponding literal
rank-`k` ALS state, including its frozen zero columns, and

\[
 {\|T-\widehat T(e)\|_F\over\|T\|_F}
 \le
 \sqrt{{1+q_{\rm real}\over1-q_{\rm real}^3}}
 \left[3+(1+\eta)e^\eta\right]\eta
 <8\eta\le8\kappa_0^2\eta.
\tag{2.2}
\]

Thus the comparison is rank-free and is in the original Frobenius residual,
not in a surrogate quotient objective.

**Proof / justification.**

Canonical balancing is a positive product-one rescaling, so it changes no
rank-one product.  Equation (D.2) therefore identifies (2.1) with the literal
active reconstruction.  Lemma~\ref{lem:step-009-orbit} and the accepted
zero-padding identity show that adding the remaining `k-r` terms adds exactly
zero.

Put `q=q_real` and `D_M=P_M-G_M=G_MC_M`.  The two induced bounds in `d_Q`
and (D.4) give

\[
 \|C_M\|_2\le\eta,qquad
 \|G_M\|_2\le\sqrt{1+q},qquad
 \|D_M\|_2\le\sqrt{1+q}\,\eta,qquad
 \|P_M\|_2\le\sqrt{1+q}(1+\eta).
\tag{2.3}
\]

Here the second inequality follows from Gershgorin applied to
`G_M^T G_M`, whose diagonal is one and whose off-diagonal absolute row mass is
at most `q`.

For each component use the exact telescoping identity

\[
 \begin{aligned}
 &g_{U,j}\otimes g_{V,j}\otimes g_{W,j}
 -p_{U,j}\otimes p_{V,j}\otimes p_{W,j}\\
 &=(g_{U,j}-p_{U,j})\otimes g_{V,j}\otimes g_{W,j}
 +p_{U,j}\otimes(g_{V,j}-p_{V,j})\otimes g_{W,j}\\
 &\hspace{2.4cm}
 +p_{U,j}\otimes p_{V,j}\otimes(g_{W,j}-p_{W,j}).
 \end{aligned}
\tag{2.4}
\]

Unfold the first sum in mode U, the second in mode V, and the third in mode W.
For example, the first has unfolding

\[
 (G_U-P_U)D_\lambda(G_W\odot G_V)^T.
\]

The held Khatri--Rao columns in all three sums are products of unit vectors.
Equations (D.4)--(D.5) and (2.3) therefore give, separately for each sum,

\[
 \left\|\sum_j\lambda_j(g_{U,j}-p_{U,j})\otimes
                  g_{V,j}\otimes g_{W,j}\right\|_F
 \le\sqrt{1+q}\,\eta\|\lambda\|_2,
\tag{2.5}
\]

with the same bound for the V and W telescoping sums.  This is the step that
prevents a triangle-inequality `sqrt(r)` loss.

For the represented-product part, put
`a_j=lambda_j(1-e^(s_j))`.  Since `|s_j|<=eta`, the mean-value theorem gives
`|1-e^(s_j)|<=e^eta eta`.  Its mode-U unfolding is

\[
 P_U\operatorname{diag}(a)(P_W\odot P_V)^T,
\]

so (D.4)--(D.5) and (2.3) yield

\[
 \left\|\sum_j\lambda_j(1-e^{s_j})
 p_{U,j}\otimes p_{V,j}\otimes p_{W,j}\right\|_F
 \le\sqrt{1+q}(1+\eta)e^\eta\eta\|\lambda\|_2.
\tag{2.6}
\]

Combining (2.4)--(2.6) proves the numerator in (2.2).

For the denominator, the Gram matrix of the target rank-one atoms is

\[
 \mathcal G=(G_U^TG_U)\circ(G_V^TG_V)\circ(G_W^TG_W).
\tag{2.7}
\]

For a fixed row, each off-diagonal entry in either of the last two mode Grams
has magnitude at most `q`, while the first mode's off-diagonal row sum is at
most `q`.  Hence the off-diagonal absolute row sum of `mathcal G` is at most
`q^3`.  Gershgorin gives

\[
 \|T\|_F^2=\lambda^T\mathcal G\lambda
 \ge(1-q^3)\|\lambda\|_2^2.
\tag{2.8}
\]

Division proves the first inequality in (2.2).  Finally,
`q<=q_*=1/4096<1/2` and
`eta<=rho_ALS=1/1024<1/2`.  Thus

\[
 \sqrt{{1+q\over1-q^3}}<\sqrt{12/7},qquad
 (1+\eta)e^\eta<3,qquad
 6\sqrt{12/7}<8.
\tag{2.9}
\]

This gives the strict constant `8`.  The fixed setting convention
`kappa_0>=1` gives the final relaxation in (2.2).  No weight-ratio, absolute
weight scale, or generated condition number enters the comparison.

### unit_003: proposition

**Proposition (finite stopping time and zero-floor baseline).**
\label{prop:step-009-stop}

Under Assumption~\ref{assump:accuracy-confidence}, the accepted entry and
basin dependencies, Lemma~\ref{lem:step-009-orbit}, and
Proposition~\ref{prop:step-009-residual}, define

\[
 m_\epsilon
 :=1+\left\lceil{\log(8\kappa_0^2/\epsilon)\over\log4}\right\rceil.
\tag{3.1}
\]

Then the setting's first-sweep relative-residual stopping rule terminates no
later than completed active sweep `m_epsilon`.  More precisely, after every
completed sweep `t>=1` reached by the run,

\[
 {\left\|T-\sum_{i=1}^k
 x_i^t\otimes y_i^t\otimes z_i^t\right\|_F\over\|T\|_F}
 <8\kappa_0^2\,4^{-(t-1)}.
\tag{3.2}
\]

At the exact stationary target, the first entry sweep returns the same tensor
and the residual is exactly zero; consequently there is no positive
accuracy floor.

**Proof / justification.**

If the run has not stopped before sweep `t`, Lemma~\ref{lem:step-009-orbit}
and `ell<1/4` give

\[
 \eta_t\le\ell^{t-1}\eta_1
 <4^{-(t-1)}{\rho_{\rm ALS}\over3}
 <4^{-(t-1)}.
\tag{3.3}
\]

The literal-orbit identity and Proposition~\ref{prop:step-009-residual} now
give (3.2) in the exact original rank-`k` metric.  By the ceiling definition,

\[
 4^{-(m_\epsilon-1)}
 \le {\epsilon\over8\kappa_0^2}.
\tag{3.4}
\]

Therefore the relative residual at sweep `m_epsilon` is at most `epsilon`.
If an earlier residual test succeeds, the first-hitting rule stops sooner;
otherwise (3.4) forces it to stop at that sweep.  Since `0<epsilon<1` and
`kappa_0>=1`, (3.1) is a finite integer at least one and

\[
 m_\epsilon\le
 2+{\log(8\kappa_0^2/\epsilon)\over\log4}
 =O(1+\log\kappa_0+\log(1/\epsilon)).
\tag{3.5}
\]

At the exact stationary representative, the accepted dependencies give
`e^1=0` and `Psi^q(0)=0`.  Canonical balancing preserves its exact CP tensor,
so the original Frobenius residual is zero after the entry sweep for every
positive `epsilon`.  More generally, (3.2) tends to zero geometrically with
`t`; no certificate tolerance, smoothing term, or perpendicular-entry charge
survives as an additive residual floor.

### unit_004: proposition

**Proposition (active-refinement arithmetic cost).**
\label{prop:step-009-runtime}

Under the exact-arithmetic ALS procedure in the setting and
Proposition~\ref{prop:step-009-stop}, a dense-tensor implementation can carry
out all active updates and exact residual tests through the first hitting time
using

\[
 O\!\left(
 m_\epsilon\{n^3r+nr^2+r^3+nk\}
 \right)
\tag{4.1}
\]

arithmetic operations and `O(n^3+n^2r+nk+r^2)` stored scalars.  This is polynomial
in `n,r,k,kappa_0,log(1/epsilon)` (and has degree zero in the smoothing and
confidence parameters).  It contains no hidden trajectory condition number.

**Proof / justification.**

For one mode, the two active factor Grams cost `O(nr^2)`, their Hadamard
product costs `O(r^2)`, and an exact active `r by r` solve costs `O(r^3)`
arithmetic operations.  Multiplying a dense unfolding of `T` by the active
Khatri--Rao design costs at most `O(n^3r)`.  The accepted ordinary-inverse
branch and zero-padding identity allow the implementation to solve this
active block and append `k-r` zero columns; storing or clearing the full
factor arrays costs at most `O(nk)`.  Three modes change only the universal
constant.

An exact residual test can form the active rank-`r` reconstruction and compare
it with the dense tensor in `O(n^3r)` operations.  The norm of `T` is
precomputed once.  Thus one completed sweep and its test have the cost inside
braces in (4.1), and Proposition~\ref{prop:step-009-stop} bounds the number of
such sweeps by `m_epsilon`.  The inverse floors and exact quotient chronology
are already generated by the accepted basin dependency, so the count assumes
no additional regularity test or generated condition-number oracle.  This is
the active-refinement contribution for one run; proposal, filtering,
clustering, unsuccessful-run, and restart costs are intentionally left to
`step_010`, as required by the sketch dependency graph.

## Target-Step Assembly

The accepted first-sweep Claim~\ref{claim:step-007b-entry} produces the actual
literal rank-`k` entry state, not an assumed basin point.  The accepted
chronology and basin Claim~\ref{claim:step-008-basin} then identify every
subsequent literal U/V/W sweep with the legal common-register map `Psi^q`.
Lemma~\ref{lem:step-009-orbit} composes these interfaces with the correct
one-sweep offset, proves geometric decay from `e^1`, and retains exactly zero
inactive columns.

Proposition~\ref{prop:step-009-residual} uses the row/column and ambient fields
already present in `d_Q` to transfer that decay to the tensor reconstructed by
the literal factors.  Its unfolding argument proves the rank-free constant
directly, and canonical product-one balancing plus zero padding proves that
the consumed norm is exactly the original rank-`k` Frobenius residual.
Proposition~\ref{prop:step-009-stop} substitutes the conservative
`ell<1/4` recurrence and the sketch-prescribed `8 kappa_0^2` constant to obtain
the exact displayed sweep count and first-hitting guarantee.  It also preserves
the zero-residual stationary baseline.  Finally,
Proposition~\ref{prop:step-009-runtime} accounts for every active sweep and
stopping test and exports the per-run refinement cost.  Together these results
prove `E_stop` with no additive error floor and no change to the actual ALS
procedure.

## Explicit Rate Audit

- Exposed variables: `n`, `r`, `k`, `kappa_0`, `epsilon`, the completed-sweep
  index `t`, and the fixed quotient constants `rho_ALS` and `ell`.
- Hidden constants may depend on: universal dense linear-algebra
  implementation constants only.
- Hidden constants may not depend on: the deterministic base triple, the
  realized perturbations, either confidence parameter, the smoothing scale,
  an unlisted condition number, a target label, or the stopping trajectory.
- Fixed quantities: `q_*=1/4096`, `rho_ALS=1/1024`, and
  `ell=17/512<1/16<1/4`.
- Probability mode: deterministic conditional on the already generated
  `E_parallel_entry` and `E_basin_parallel` events.  This step introduces no
  probability loss, union bound, or confidence conversion.
- Horizon mode: one finite entry sweep followed by a finite first-hitting
  horizon of at most `m_epsilon-1` contracted sweeps.
- Norm mode: `d_Q` for the quotient recurrence and the original relative
  Frobenius norm for the stopping rule.  Equation (2.2) is the explicit bridge.
- Admissibility conditions and auxiliary tolerances: only the setting
  `0<epsilon<1`; `T_parallel(rho_ALS)` membership is generated by the accepted
  dependencies and Lemma~\ref{lem:step-009-orbit}.  No auxiliary numerical
  tolerance is added.
- Term absorption or simplification inequalities: equations (2.2), (2.9),
  (3.3), and (3.4) show, respectively, the rank-free residual transfer,
  numerical constant bound, conservative replacement `ell<1/4`, and the
  ceiling-to-accuracy implication.  No term is suppressed by asymptotic
  notation in the public residual rate.
- Probability conversion: none; restart amplification is assigned to
  `step_010`.
- Contribution to any Rate Specialization Bridge: produces
  `m_epsilon=O(1+log kappa_0+log(1/epsilon))` and the per-run cost (4.1).
  Since logarithmic dependence is polynomially bounded in `kappa_0` and
  `epsilon^{-1}`, this is compatible with the formal runtime target.
- Baseline-reduction check: if the deterministic orthogonal equal-weight
  state is the exact stationary representative, `e^1=0`, every refresh writes
  the common register `s=0`, and the original residual is exactly zero.
  Finite nonstationary certification charges are not declared zero, but they
  contract with no positive floor.

## Blockers

None.

## Notation And Assumption Notes

- `e^t`, `eta_t=||e^t||_Q`, and `m_epsilon` are `public-facing` sweep,
  quotient-error, and stopping-horizon quantities.  `e^1`, `rho_ALS`, `ell`,
  `T_parallel`, and `Psi^q` are inherited accepted dependency objects; no new
  basin radius or contraction factor is introduced.
- `T_hat(e)` in (2.1) is an `appendix-local` expression for the tensor already
  represented by the literal factors after product-one canonical balancing.
  It is not a surrogate iterate.  Its product weights
  `lambda_j exp(s_j)` are the setting-defined represented products.
- `D_M=P_M-G_M=G_MC_M`, `mathcal G`, and the coefficient vector `a` used in
  (2.6) are `proof-local` objects derived from the setting factors and the
  accepted canonical state.  Their bounds are proved in
  Proposition~\ref{prop:step-009-residual}; none is an assumed bounded object.
- The constants `8`, `4`, and `m_epsilon` are `public-facing`.  The constant
  `8` is proved by (2.9), `4` is the conservative reciprocal of the accepted
  strict contraction bound, and `m_epsilon` is defined directly from
  `kappa_0,epsilon`.  The relaxation from `8` to `8 kappa_0^2` uses only the
  basic setting convention `kappa_0>=1` and preserves the exact sketch rate.
- The dense arithmetic bound in (4.1) is `public-facing` for this step's
  per-run active-refinement contribution.  Its individual operation counts
  are `proof-local`; `step_010` is the designated consumer that adds proposal
  and restart costs.
- Exact-span membership, inverse legality, quotient chronology, frozen-zero
  support, and recurrence are generated conditions supplied by the accepted
  dependencies and propagated in Lemma~\ref{lem:step-009-orbit}.  The only
  local conditional membership hypothesis occurs inside
  Proposition~\ref{prop:step-009-residual} and is discharged before target
  assembly.
- The probability mode is conditional and deterministic at this step.  No
  statement about an ungenerated orbit, an unrestricted quotient ball, or a
  finite-precision perturbation is made.
