# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_3/idea_2/proof_steps/step_003/proof.md`
- Reviewed proof SHA-256: `7852d0b7301bf399d8e67c30ec9d94a34eff9352ea58b95f6999c14a0cc042f6`
- Accepted dependency proof SHA-256 (`step_002`): `bc595377b6068047df51c449eb82a9f9a37e34ed215c22751eb30df9ec4b76a5`
- Accepted dependency review SHA-256 (`step_002`): `b0a6cd9b3a722e73143d3e4160acf85ed9c616c243337cc3a57dde7b00c15f0c`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite-support catalog payoff

- Statement fidelity: The lemma instantiates exactly the accepted
  policy-free `step_002` conclusion for a fixed \(h\in H\), nonempty finite
  \(F\subseteq X\), and arbitrary \(r\in\Delta_F\). It claims only the
  row-player payoff lower bound and its attained minimum at the binding level
  \(\rho\); it does not choose a reply policy, require a common best index as
  \(r\) varies, or assert finite feasibility before minimax.
- Proof validity: The formula
  \(D_r(S)=\sum_{x\in F\cap S}r_x\) gives a probability measure on the
  power-set sigma algebra: the masses are nonnegative, have total mass one,
  and finite atomic support makes countable additivity immediate. For every
  catalog coordinate, finite-support integration gives
  \(\mathbb E_{D_r}[hg_i]=\sum_xr_xh(x)g_i(x)\). Applying the accepted
  Proposition~\ref{prop:step-002-policy-free-correlation} to this same
  \(D_r,h\) proves the pointwise-in-\(r\) maximum bound. Taking the minimum
  preserves the inequality, and the finite maximum of linear functions is
  continuous on compact nonempty \(\Delta_F\), so the minimum is attained.
- Cited-result and assumption audit: The current `step_002` proof and review
  have the binding hashes recorded above; the review status is `ACCEPTED` for
  sketch attempt 1 and unit attempt 1. The consumed dependency conclusion is
  restated in current notation for every actual distribution and target.
  Catalog finiteness and universal accuracy retain their primitive provenance;
  universal accuracy is not reapplied in this unit. The only new object check,
  that \(D_r\) is an actual distribution on arbitrary \(X\), is discharged in
  the proof.
- Rigor checklist: The quantifier order is
  \(\forall r\in\Delta_F\,\exists i\in[L]\), expressed by a finite maximum;
  the maximizing index may depend on \(r\). No expectation interchange,
  measurable selection, topology on \(X\), or policy-dependent law is used.
  Nonempty \(F\) ensures \(\Delta_F\) exists and is nonempty, and \(L\ge1\)
  ensures the maximum is defined.
- Local adversarial test: The calculation remains valid when \(X\) is
  uncountable, \(F\) is a singleton, \(L=1\), the best coordinate changes with
  every \(r\), or \(\rho=1\). When \(X=\varnothing\), this unit is correctly
  inapplicable because no nonempty \(F\subseteq X\) exists; the empty branch is
  handled by `unit_004`.
- Contribution to target step: It supplies the exact lower value
  \(\min_r\max_i r^\top A\ge\rho\) needed by the finite minimax and final
  feasibility assembly.
- Verdict: PASS
- Repair direction: None.

### unit_002: Finite convex-hull alternative

- Statement fidelity: The lemma proves the precise zero-slack quantifier
  reversal needed by the accepted sketch: if every row mixture has some
  column payoff at least \(\gamma\), one column mixture has every row payoff
  at least the same \(\gamma\). Its conditions \(F\ne\varnothing\), finite
  \(F\), \(L\ge1\), and real finite matrix \(A\) are explicit.
- Proof validity: The column-mixture image
  \(C=A\Delta_L\) is compact and convex, and the upper orthant
  \(Q_\gamma\) is nonempty, closed, and convex. Under the contradiction
  hypothesis \(C\cap Q_\gamma=\varnothing\), the displayed coordinatewise
  projection formula is correct:
  \[
  \operatorname{dist}(c,Q_\gamma)^2
  =\sum_x(\gamma-c_x)_+^2.
  \]
  Continuity and compactness yield a closest \(c^0\in C\); disjointness makes
  its distance positive. The defined \(q^0_x=\max\{c^0_x,\gamma\}\) is its
  nearest point in \(Q_\gamma\), and \(y=q^0-c^0\) is nonzero and
  coordinatewise nonnegative. For
  \(c_t=c^0+t(c-c^0)\in C\), minimality gives
  \(\|y\|\le\operatorname{dist}(c_t,Q_\gamma)
  \le\|c_t-q^0\|\). Squaring and expanding yields
  \[
  0\le-2t\langle y,c-c^0\rangle
    +t^2\|c-c^0\|^2,
  \]
  so division by \(t>0\) and \(t\downarrow0\) correctly gives
  \(\langle y,c\rangle\le\langle y,c^0\rangle\) for every \(c\in C\).
  With \(S=\sum_xy_x>0\) and \(r^0=y/S\), coordinates on the support of
  \(y\) have \(q_x^0=\gamma\), hence
  \(\langle y,c^0\rangle=\gamma S-\|y\|^2\). Applying the supporting
  inequality to every column \(Ae_i\) gives every payoff under \(r^0\)
  strictly below \(\gamma\), contradicting the premise. Thus intersection,
  and therefore a witness \(w\in\Delta_L\), exists at \(\gamma\) itself.
- Cited-result and assumption audit: No external minimax or separation theorem
  is invoked. The proof uses only the restated standard finite-dimensional
  facts that a finite simplex is compact and convex, continuous images of
  compact sets are compact, and continuous functions attain extrema on
  nonempty compact sets. All other separation content is derived explicitly.
- Rigor checklist: The sign in the closest-point variational inequality is
  correct; normalizing \(y\) is legal because \(y\ge0\) and \(y\ne0\); and
  \(\|y\|^2/S>0\) supplies the strict contradiction. Coordinates with
  \(y_x=0\) make no contribution to
  \(\langle y,q^0\rangle=\gamma S\). No differentiability theorem,
  limiting threshold, strong-separation black box, or compactness of the
  unbounded orthant is assumed.
- Local adversarial test: The argument works for arbitrary real \(\gamma\),
  mixed zero and positive coordinates of \(y\), singleton \(F\), \(L=1\),
  and degenerate or repeated matrix columns. In particular, it does not lose
  an arbitrarily small slack when \(C\) merely touches the threshold orthant;
  touching is exactly the desired feasible case.
- Contribution to target step: It proves the hard reverse minimax inequality
  and the exact threshold-preserving simultaneous finite certificate.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact finite matrix minimax with attainment

- Statement fidelity: The proposition states the binding
  row-minimizer/column-maximizer orientation,
  \[
  \min_{r\in\Delta_F}\max_i r^\top A e_i
  =\max_{w\in\Delta_L}\min_{r\in\Delta_F}r^\top Aw
  =\max_{w\in\Delta_L}\min_x(Aw)_x,
  \]
  for nonempty finite player sets, and explicitly includes attainment. It does
  not reverse the players or replace the mixed row minimum by an unsupported
  pointwise assertion.
- Proof validity: The two outer objective functions are continuous finite
  maxima/minima of linear functions on compact nonempty simplices, so their
  extrema are attained. For every \(r,w\), the bilinear payoff is at least the
  least row payoff for \(w\) and at most the greatest column payoff for \(r\);
  taking the maximum on the left and minimum on the right yields the correct
  weak inequality \(\alpha\le\beta\). By definition of the attained minimum
  \(\beta\), every \(r\) satisfies \(\max_i r^\top Ae_i\ge\beta\).
  Lemma~\ref{lem:step-003-convex-hull-alternative} at
  \(\gamma=\beta\) produces \(w^\star\) with every row payoff at least
  \(\beta\), so \(\alpha\ge\beta\). Finally, for fixed \(w\), a linear
  functional over \(\Delta_F\) is minimized by a vertex supported on a
  minimizing row, proving the middle-to-last equality pointwise in \(w\).
  The same attained maximizer therefore attains both displayed max values.
- Cited-result and assumption audit: The reverse inequality uses the fully
  proved preceding local lemma, not an external minimax citation. Finite
  simplex compactness and extreme-value facts were restated before use, and
  every object \(F,L,A,\alpha,\beta\) is defined in current notation.
- Rigor checklist: Weak duality and the reverse inequality have the correct
  directions. The pure-row vertex argument requires and has nonempty finite
  \(F\); the column maximum requires and has \(L\ge1\). All sums are finite,
  both game values are real, and no interchange of infinite extrema or limit
  is present.
- Local adversarial test: For a one-row game, a one-column game, a constant
  matrix, or a matrix with no pure simultaneous witness, the proof still
  returns the correct mixed value and attained optimizer. The closest-point
  lemma permits the optimizer to be genuinely mixed, so the argument does not
  smuggle in a common pure best catalog coordinate.
- Contribution to target step: It supplies the exact minimax equality and
  attainment required verbatim by the accepted `step_003` row.
- Verdict: PASS
- Repair direction: None.

### unit_004: Exact finite catalog feasibility

- Statement fidelity: The proposition assembles the accepted dependency and
  named local results into exactly \(K_{h,F}\ne\varnothing\) for every finite
  \(F\subseteq X\), with the required minimax display for nonempty \(F\) and
  the direct \(K_{h,\varnothing}=\Delta_L\) branch for empty \(F\).
- Proof validity: If \(F=\varnothing\), the defining universal constraint is
  vacuous, so \(K_{h,F}=\Delta_L\); primitive \(L\ge1\) makes this simplex
  nonempty, and no nonexistent \(\Delta_F\) or distribution is formed. If
  \(F\ne\varnothing\), `unit_001` gives the row-game value at least \(\rho\),
  and `unit_003` applies to
  \(A_{xi}=h(x)g_i(x)\) with exact equality and attainment. Choosing an
  attained maximizer in the last game expression gives
  \(\min_x\sum_iw_{h,F,i}h(x)g_i(x)\ge\rho\); hence every individual
  constraint holds. The setting identity
  \(h(x)s_{w_{h,F}}(x)=\sum_iw_{h,F,i}h(x)g_i(x)\) then places the same
  vector in \(K_{h,F}\).
- Cited-result and assumption audit: The accepted `step_002` interface is
  consumed only through `unit_001`; no primitive accuracy premise is silently
  strengthened. Catalog finiteness supplies the finite nonempty column
  simplex. The proposition names and restates the local results it uses, and
  the payoff matrix is explicitly translated from the setting objects.
- Rigor checklist: The proof keeps the minimum/maximum orientation, uses an
  attained maximizer rather than an unjustified supremum witness, and changes
  no quantifier, probability mode, or threshold. The finite witness may depend
  on \(h,F\), as allowed; no coherence across different finite sets is claimed.
- Local adversarial test: Empty \(F\), singleton \(F\), empty \(X\), \(L=1\),
  and \(\rho=1\) are all covered. At \(\rho=1\), every transfer is exact and
  yields finite constraints at margin one. When \(X=\varnothing\), only the
  empty branch occurs and does not appeal to a distribution on the empty
  domain.
- Contribution to target step: It is the minimal exported finite-feasibility
  certificate consumed by `step_004`, while leaving arbitrary-domain
  globalization to that later dependency step.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the local lemma map. The
four genuine obligations are separately exposed: finite-support instantiation,
the zero-slack convex-hull alternative, exact minimax plus attainment, and the
empty/nonempty feasibility assembly. The auxiliary facts used inside them are
either explicitly derived or are the restated elementary finite-dimensional
facts. In particular, nonemptiness of \(Q_\gamma\) follows from the constant
vector \((\gamma)_{x\in F}\); positivity of the distance follows from
compact \(C\), closed \(Q_\gamma\), disjointness, and attainment; the
supporting inequality is derived by the displayed squared-distance
calculation; and the row-simplex vertex identity is proved directly. The prose
does not assume a coherent best index, a coherent family \(w_{h,F}\), a global
weight, an annihilating distribution on \(X\), or a policy-independent output
law.

## Target Claim Audit

The proof establishes the exact accepted `step_003` claim. For every
\(h\in H\) and every finite \(F\subseteq X\), it proves
\(K_{h,F}\ne\varnothing\). For nonempty \(F\), it proves, in the prescribed
orientation and with attained extrema,
\[
\min_{r\in\Delta_F}\max_{i\in[L]}
  \sum_xr_xh(x)g_i(x)
=\max_{w\in\Delta_L}\min_{r\in\Delta_F}
  \sum_{x,i}r_xw_ih(x)g_i(x)
=\max_{w\in\Delta_L}\min_{x\in F}
  \sum_iw_ih(x)g_i(x)
\ge\rho.
\]
For empty \(F\), it proves \(K_{h,F}=\Delta_L\) directly. The only accepted
dependency is the current `step_002` policy-free correlation conclusion, and
the proof introduces no stronger assumption, narrowed domain regime, changed
quantifier order, or unsupported generated condition.

## Explicit Rate Audit

This step is rate-bearing through the exact margin
\(\rho=1-2\varepsilon\). The exposed quantities are
\(\varepsilon,\rho,L\), while \(F\) is arbitrary and no loss depends on
\(|F|\); there are no hidden constants. The fixed catalog is held fixed, and
\(h,F\) are fixed only inside their quantified game. The conclusion is
deterministic, fixed-horizon, and measured by the finite pointwise signed
margin. The Euclidean norm in `unit_002` is proof-local and does not change the
theorem metric. No auxiliary tolerance, probability conversion, term
absorption, asymptotic passage, or horizon upgrade occurs. The exact chain
preserves \(\rho\), including margin one at \(\varepsilon=0\), and retains
the \(L=1\), singleton-\(F\), empty-\(F\), and zero-query baselines.

## Notation Surface Audit

The proof exports only the setting-defined public interface
\(K_{h,F}\ne\varnothing\) and its exact finite-game justification. The payoff
matrix \(A^{h,F}\) is properly classified as appendix-local. The law \(D_r\),
finite witness \(w_{h,F}\), sets \(C,Q_\gamma\), points \(c^0,q^0\), vector
\(y\), values \(S,\delta,\alpha,\beta,\gamma\), and simplex vertices are
properly classified as proof-local and are defined before use. Their
provenance and positivity or finiteness conditions are shown where required.
No helper object hides a boundedness, feasibility, threshold, or generated-
invariant assumption, and no proof-local family is exported as a global one.

## Target-Step Assembly Audit

The assembly uses theorem-style names and stable labels throughout. It cites
Lemma~\ref{lem:step-003-finite-support-payoff} for the genuine
arbitrary-domain distributions and row-game lower value,
Lemma~\ref{lem:step-003-convex-hull-alternative} through
Proposition~\ref{prop:step-003-finite-minimax} for the reverse inequality,
exact orientation, and attainment, and
Proposition~\ref{prop:step-003-finite-feasibility} for the payoff-to-
\(K_{h,F}\) identification and empty branch. These results jointly imply every
clause of the target without relying on subsection names, bare unit IDs, an
unstated lemma, or a future compactness/globalization result.

## Review Rationale

All four local units are valid under the binding setting, accepted sketch, and
current accepted `step_002` dependency. The closest-point calculation proves
the needed zero-slack alternative with the correct sign and strict
contradiction; the subsequent minimax proof has the exact prescribed player
orientation and attained extrema; and the finite-support and empty-set branches
cover arbitrary \(X\) without introducing a global measure or nonexistent row
simplex. Assumption provenance, notation, explicit margin dependence,
boundary cases, hidden-subclaim coverage, and target assembly all pass.
Therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest
controlled disposition.
