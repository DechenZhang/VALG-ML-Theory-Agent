# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1

## Target Step Claim

- Intended claim: On the joint event from step_002, combine step_003 with \(k/n\le 1/8\), take the two limits from step_004 and step_005, average the conditional probability, and state the exact material-partial theorem with \(r_0=1\), \(L(r)=r^{5/4}\), \(\alpha=1/4\), probability at least \(1/4\), squared-residual constant \(3/4\), and objective constant \(3/8\).
- Depends on: step_002, step_003, step_004, step_005, and step_006.
- Assumptions used: Primitive assump:dimension, assump:rank_window, assump:arbitrary_base, assump:gaussian_smoothing, and assump:joint_initialization; derived outputs from all five accepted dependencies.
- Technical challenge: Preserve every quantifier and the shared-\(T\) conditional probability protocol, make uniformity over unrestricted deterministic bases explicit, pass an all-time floor to two established scalar limits without loss, and avoid upgrading the constrained theorem to unconstrained ALS or GD.
- Intended proof tool or cited result: Deterministic implication on the joint event, preservation of inequalities under scalar limits, the tower property, and the accepted constrained-only non-transfer certificate.
- Output target: The exact final theorem and bound certificate for the fixed-one-mode constrained class.
- Rate objective: Objectives A and B: exact specialization \(1-2k/n\ge 3/4\), objective factor \(1/2\), joint confidence \(1/4\), all-time-to-asymptotic passage, and no hidden constants.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:dimension: \(r,n\) are positive integers and \(n\ge 8r^{5/4}\).
  - assump:rank_window: \(k\) is an integer satisfying \(r<k\le r^{5/4}\).
  - assump:arbitrary_base: \(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\) are deterministic and unrestricted; no conditioning, incoherence, or favorable-base event may be used.
  - assump:gaussian_smoothing: for fixed \(q>0\), \(\rho=r^{-q}\), and the perturbations defining \(T\) have the independent Gaussian law in setting.md.
  - assump:joint_initialization: the cALS and cGD Gaussian initialization triples are mutually independent and independent of the smoothing variables, and both methods use the same realized \(T\).
- Derived invariants and conclusions supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-002-joint-event} from step_002 supplies
    \[
    \mathcal E:=E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}},
    \]
    the pointwise conditional bound
    \[
    \mathbb P(\mathcal E\mid T=T_0)\ge \frac14
    \quad\text{for every }T_0,
    \]
    the unconditional bound \(\mathbb P(\mathcal E)\ge 1/4\), and, on \(\mathcal E\), simultaneously for both methods,
    \[
    \|(I-P_{\mathcal H_M})T\|_F^2
    \ge \left(1-2\frac{k}{n}\right)\|T\|_F^2
    \ge \frac34\|T\|_F^2.
    \]
  - Accepted Proposition~\ref{prop:step-003-pythagorean-floor} from step_003 supplies, for either method and every defined iterate,
    \[
    F_M(t)\ge \frac12\|(I-P_{\mathcal H_M})T\|_F^2.
    \]
    Accepted Lemma~\ref{lem:step-003-fixed-witness} supplies the one fixed normalized witness \(W_M\) whenever the displayed orthogonal residual is nonzero.
  - Accepted Proposition~\ref{prop:step-004-sequential-descent} and Lemma~\ref{lem:step-004-scalar-limit} from step_004 supply existence of every finite cALS sweep and the finite scalar limit of \(F_{\mathrm{cALS}}(t)\).
  - Accepted Propositions~\ref{prop:step-005-well-defined} and \ref{prop:step-005-scalar-limit} from step_005 supply existence of every finite cGD iterate and the finite scalar limit of \(F_{\mathrm{cGD}}(t)\).
  - Accepted Claim~\ref{claim:step-006-nontransfer} from step_006 supplies only the scope certificate that the fixed-witness mechanism does not transfer to ordinary unconstrained ALS or full-variable GD without a new outside-span control or a separately controlled endogenous witness.
- Local conditional hypotheses:
  - The normalized fixed-witness identity is invoked only when
    \(\|(I-P_{\mathcal H_M})T\|_F>0\). On \(\mathcal E\), this branch automatically contains every \(T\ne 0\). At \(T=0\), no normalized witness is defined or needed; the accepted Pythagorean floor remains valid.

No generated event, trajectory boundedness condition, convergence conclusion, or positive objective floor is treated as primitive. Every such fact used below is supplied by an accepted dependency or proved in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:dimension} and \ref{assump:rank_window}, accepted Proposition~\ref{prop:step-002-joint-event}, accepted Proposition~\ref{prop:step-003-pythagorean-floor}, accepted Proposition~\ref{prop:step-004-sequential-descent}, and accepted Proposition~\ref{prop:step-005-well-defined}, on \(\mathcal E\) both methods satisfy for every \(t\ge0\) the squared-residual bound \(\|(I-P_{\mathcal H_M})T\|_F^2\ge(3/4)\|T\|_F^2\) and objective floor \(F_M(t)\ge(3/8)\|T\|_F^2\); when \(T\ne0\), the accepted \(W_M\) is well-defined and fixed in \(t\). | Produces the exact \(3/4\)-to-\(3/8\) all-time bridge and closes the witness denominator boundary. |
| unit_002 | proposition | Under Proposition~\ref{prop:step-007-joint-floor}, accepted Lemma~\ref{lem:step-004-scalar-limit}, and accepted Proposition~\ref{prop:step-005-scalar-limit}, on \(\mathcal E\) both finite scalar objective limits exist and are at least \((3/8)\|T\|_F^2\). | Converts the horizon-uniform floor to the two asymptotic conclusions without changing constants or modes. |
| unit_003 | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, \ref{assump:arbitrary_base}, \ref{assump:gaussian_smoothing}, and \ref{assump:joint_initialization}, accepted Proposition~\ref{prop:step-002-joint-event}, Proposition~\ref{prop:step-007-limit-passage}, and accepted Claim~\ref{claim:step-006-nontransfer}, one may take \(r_0=1\), \(\alpha=1/4\), and \(L(r)=r^{1+\alpha}=r^{5/4}\), and the exact constrained two-method positive-limit event has probability at least \(1/4\) for every deterministic base triple; no unconstrained conclusion is asserted. | States and proves the exact material-partial theorem, all quantifiers, the probability conversion, and the constrained-only scope. |

Atomic step = no. The quantitative all-time floor, the passage to two scalar limits, and the fully quantified probability/scope assembly are distinct auditable obligations.

## Cited Result Applications

No external paper result is used. Every accepted dependency or elementary tool used in the assembly is restated in current notation.

1. **Joint projection event and residual margin from accepted step_002.**
   - Source: Proposition~\ref{prop:step-002-joint-event}, certified by proof_steps/step_002/review.md with status ACCEPTED.
   - Restated statement: under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, for every fixed \(T_0\),
     \[
     \mathbb P(\mathcal E\mid T=T_0)\ge \frac14,
     \]
     and on \(\mathcal E\), simultaneously for both methods,
     \[
     \|(I-P_{\mathcal H_M})T\|_F^2
     \ge \left(1-2\frac{k}{n}\right)\|T\|_F^2
     \ge \frac34\|T\|_F^2.
     \]
     The same event has unconditional probability at least \(1/4\).
   - Instantiated objects: the same shared target \(T\), the exact method-specific projectors \(P_{\mathcal H_M}\), and the setting-defined events \(E_M\).
   - Assumption discharge: the accepted dependency already discharges Haar isotropy, conditional independence, the \(T=0\) fiber, Markov's inequality, and the tower conversion for \(\mathcal E\).
   - Conclusion used: pointwise conditional confidence \(1/4\) and the simultaneous \(3/4\) squared-residual margins.

2. **Exact fixed-witness objective floor from accepted step_003.**
   - Source: Proposition~\ref{prop:step-003-pythagorean-floor} and Lemma~\ref{lem:step-003-fixed-witness}, certified by proof_steps/step_003/review.md with status ACCEPTED.
   - Restated statement: for each method and every defined iterate,
     \[
     \|T-S_t^M\|_F^2
     =\|(I-P_{\mathcal H_M})T\|_F^2
     +\|P_{\mathcal H_M}T-S_t^M\|_F^2,
     \]
     hence
     \[
     F_M(t)\ge \frac12\|(I-P_{\mathcal H_M})T\|_F^2.
     \]
     If \(\|(I-P_{\mathcal H_M})T\|_F>0\), then
     \[
     W_M=\frac{(I-P_{\mathcal H_M})T}
     {\|(I-P_{\mathcal H_M})T\|_F}
     \]
     is fixed in \(t\) and satisfies
     \[
     \langle W_M,T-S_t^M\rangle_F
     =\|(I-P_{\mathcal H_M})T\|_F.
     \]
   - Instantiated objects: the actual theorem target, represented tensor, objective, fixed subspace, and Frobenius norm; no surrogate target is introduced.
   - Assumption discharge: the accepted dependency includes its probability-one algorithmic domain and all-defined-iterate scope. Accepted step_004 and step_005 supply every finite index for final assembly.
   - Conclusion used: the exact coefficient \(1/2\) objective floor and the legal fixed-witness branch.

3. **cALS finite scalar limit from accepted step_004.**
   - Source: Proposition~\ref{prop:step-004-sequential-descent} and Lemma~\ref{lem:step-004-scalar-limit}, certified by proof_steps/step_004/review.md with status ACCEPTED.
   - Restated statement: every cALS sweep is defined, \(F_{\mathrm{cALS}}(t)\) is finite, nonnegative, and nonincreasing, and
     \[
     \lim_{t\to\infty}F_{\mathrm{cALS}}(t)
     =\inf_{t\ge0}F_{\mathrm{cALS}}(t)
     \]
     exists as a finite real number.
   - Assumption discharge: singular and zero Khatri--Rao designs are covered by the accepted Moore--Penrose derivation; no conditioning or factor bound is assumed.
   - Conclusion used: all cALS indices are defined and the scalar limit exists.

4. **cGD finite-index existence and scalar limit from accepted step_005.**
   - Source: Propositions~\ref{prop:step-005-well-defined} and \ref{prop:step-005-scalar-limit}, certified by proof_steps/step_005/review.md with status ACCEPTED.
   - Restated statement: every dyadic line search terminates at a finite accepted index, every finite cGD iterate is defined, \(F_{\mathrm{cGD}}(t)\) is finite, nonnegative, and nonincreasing, and
     \[
     \lim_{t\to\infty}F_{\mathrm{cGD}}(t)
     =\inf_{t\ge0}F_{\mathrm{cGD}}(t)
     \]
     exists as a finite real number.
   - Assumption discharge: the accepted proof uses no global factor bound, uniform Hessian bound, or positive lower bound on step sizes.
   - Conclusion used: all cGD indices are defined and the scalar limit exists.

5. **Constrained-only non-transfer certificate from accepted step_006.**
   - Source: Claim~\ref{claim:step-006-nontransfer}, certified by proof_steps/step_006/review.md with status ACCEPTED.
   - Restated statement: for an ordinary unconstrained comparison with initialization projector \(\Pi_0\),
     \[
     (I-\Pi_0)(T-S_t)=R_0-\Lambda_t,
     \qquad
     \Lambda_t=(I-\Pi_0)S_t,
     \]
     and the fixed witness acquires the uncontrolled subtraction
     \[
     \langle W_0,T-S_t\rangle_F
     =\|R_0\|_F-\langle W_0,\Lambda_t\rangle_F.
     \]
     Neither the accepted dependencies nor the current setting controls \(\Lambda_t\) at the scale needed for an unconstrained theorem.
   - Assumption discharge: this is an accepted same-target comparison and introduces no theorem-facing condition.
   - Conclusion used: the final theorem is constrained-only.

6. **Order preservation under scalar limits and the tower property.**
   - Restated statements: if \(a_t\to a\) and \(a_t\ge c\) for every \(t\), then \(a\ge c\). If an event \(G\) satisfies \(\mathbb P(G\mid T=T_0)\ge p\) for every \(T_0\), then
     \[
     \mathbb P(G)
     =\mathbb E[\mathbb P(G\mid T)]
     \ge p.
     \]
   - Instantiated objects: \(a_t=F_M(t)\), \(a=\lim_tF_M(t)\), \(c=(3/8)\|T\|_F^2\), and \(G\) equal to the final two-method limit event.
   - Assumption discharge: scalar convergence comes from accepted step_004 and step_005; the pointwise conditional event implication is proved in Proposition~\ref{prop:step-007-material-partial}.
   - Conclusion used: no constant or probability is lost in the final passage.

Local-result flow: Proposition~\ref{prop:step-007-joint-floor} combines accepted items 1--4. Proposition~\ref{prop:step-007-limit-passage} combines that floor with accepted items 3--4 and scalar order preservation. Proposition~\ref{prop:step-007-material-partial} combines the pointwise conditional probability, Proposition~\ref{prop:step-007-limit-passage}, the tower property, and item 5.

## Local Derivation

### unit_001: proposition

**Proposition (Joint-event fixed-witness and all-time objective floor).** \label{prop:step-007-joint-floor}

Under Assumptions~\ref{assump:dimension} and \ref{assump:rank_window}, accepted Proposition~\ref{prop:step-002-joint-event}, accepted Proposition~\ref{prop:step-003-pythagorean-floor}, accepted Proposition~\ref{prop:step-004-sequential-descent}, and accepted Proposition~\ref{prop:step-005-well-defined}, on
\[
\mathcal E=E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}},
\]
for every \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\) and every integer \(t\ge0\),
\[
\boxed{
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac34\|T\|_F^2
}
\tag{7.1}
\]
and
\[
\boxed{F_M(t)\ge\frac38\|T\|_F^2.}
\tag{7.2}
\]
If \(T\ne0\), then on \(\mathcal E\) the accepted normalized witness \(W_M\) is well-defined, is fixed in \(t\), and certifies the same residual floor at every finite index. If \(T=0\), no normalized witness is defined or used, while (7.1)--(7.2) remain valid with zero right-hand side.

**Proof / justification.** The dimension and rank-window assumptions give
\[
\frac{k}{n}
\le \frac{r^{5/4}}{8r^{5/4}}
=\frac18.
\tag{7.3}
\]
Accepted Proposition~\ref{prop:step-002-joint-event} gives, on \(\mathcal E\),
\[
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\]
for both methods. Equation (7.3) gives
\[
1-2\frac{k}{n}\ge 1-2\left(\frac18\right)=\frac34,
\]
which proves (7.1), including equality at \(k/n=1/8\).

Accepted Proposition~\ref{prop:step-004-sequential-descent} proves that every cALS index is defined, and accepted Proposition~\ref{prop:step-005-well-defined} proves the same for cGD. Hence the all-defined-iterate quantifier in accepted Proposition~\ref{prop:step-003-pythagorean-floor} covers every integer \(t\ge0\) for both methods. Combining its floor with (7.1) gives
\[
\begin{aligned}
F_M(t)
&\ge \frac12\|(I-P_{\mathcal H_M})T\|_F^2\\
&\ge \frac12\cdot\frac34\|T\|_F^2
=\frac38\|T\|_F^2,
\end{aligned}
\]
which proves (7.2). The only removed term is the explicit nonnegative in-subspace squared residual in the accepted Pythagorean identity; there is no leakage, approximation, or horizon-dependent remainder.

If \(T\ne0\), then (7.1) gives
\[
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\frac34\|T\|_F^2>0.
\]
Thus accepted Lemma~\ref{lem:step-003-fixed-witness} applies and the same tensor \(W_M\), fixed before the trajectory evolves, satisfies
\[
\langle W_M,T-S_t^M\rangle_F
=\|(I-P_{\mathcal H_M})T\|_F
\quad\text{for every }t\ge0.
\]
At \(T=0\), the denominator is zero, so no normalized witness is introduced; the accepted Pythagorean proposition still gives the exact zero floor. \(\square\)

### unit_002: proposition

**Proposition (Passage from the all-time floor to both objective limits).** \label{prop:step-007-limit-passage}

Under Proposition~\ref{prop:step-007-joint-floor}, accepted Lemma~\ref{lem:step-004-scalar-limit}, and accepted Proposition~\ref{prop:step-005-scalar-limit}, the finite limits
\[
\ell_{\mathrm{cALS}}
:=\lim_{t\to\infty}F_{\mathrm{cALS}}(t),
\qquad
\ell_{\mathrm{cGD}}
:=\lim_{t\to\infty}F_{\mathrm{cGD}}(t)
\]
exist, and on \(\mathcal E\), simultaneously,
\[
\boxed{
\ell_M\ge\frac38\|T\|_F^2
\quad\text{for every }M\in\{\mathrm{cALS},\mathrm{cGD}\}.
}
\tag{7.4}
\]

**Proof / justification.** Accepted Lemma~\ref{lem:step-004-scalar-limit} gives existence and finiteness of \(\ell_{\mathrm{cALS}}\), and accepted Proposition~\ref{prop:step-005-scalar-limit} gives the same for \(\ell_{\mathrm{cGD}}\). On \(\mathcal E\), Proposition~\ref{prop:step-007-joint-floor} gives
\[
F_M(t)\ge c_T:=\frac38\|T\|_F^2
\quad\text{for every }t\ge0.
\]
If \(\ell_M<c_T\), take \(\varepsilon=(c_T-\ell_M)/2>0\). Convergence would give \(N<\infty\) such that
\[
F_M(t)<\ell_M+\varepsilon
=\frac{\ell_M+c_T}{2}<c_T
\quad\text{for all }t\ge N,
\]
contradicting the all-time floor. Hence \(\ell_M\ge c_T\). Applying this separately to the two accepted limits proves (7.4). No limit is interchanged with an expectation, probability, or optimization. \(\square\)

### unit_003: proposition

**Proposition (Exact constrained material-partial positive-limit theorem).** \label{prop:step-007-material-partial}

Fix any \(q>0\). Set
\[
\alpha:=\frac14,
\qquad
L(r):=r^{1+\alpha}=r^{5/4},
\qquad
r_0:=1.
\]
Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, \ref{assump:arbitrary_base}, \ref{assump:gaussian_smoothing}, and \ref{assump:joint_initialization}, for every integer \(r\ge r_0\), every integer \(n\ge8L(r)\), every integer \(k\) satisfying
\[
r<k\le L(r),
\]
and every unrestricted deterministic triple
\(\bar A,\bar B,\bar C\in\mathbb R^{n\times r}\), draw
\[
a_j=\bar a_j+\xi_j^a,\qquad
b_j=\bar b_j+\xi_j^b,\qquad
c_j=\bar c_j+\xi_j^c,
\]
where all perturbations are independent and
\[
\xi_j^a,\xi_j^b,\xi_j^c
\sim\mathcal N\!\left(0,\frac{r^{-2q}}{n}I_n\right),
\]
and set \(T=\sum_{j=1}^r a_j\otimes b_j\otimes c_j\). For each \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\), draw \(G_x^M,G_y^M,G_z^M\in\mathbb R^{n\times k}\) with iid \(\mathcal N(0,1/n)\) entries, independently across methods and independently of the perturbations. Use the same realized \(T\) for both methods and run exactly the one-mode constrained sequential ALS and coefficient-parameterized Armijo GD procedures from setting.md. Then
\[
\boxed{
\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\text{ exists as a finite real number and }
\lim_{t\to\infty}F_M(t)\ge\frac38\|T\|_F^2
\right\}
\right]\ge\frac14.
}
\tag{7.5}
\]
The probability is over the smoothing variables and both complete initialization triples. The same constants and threshold apply after fixing every unrestricted deterministic base triple; no simultaneous event over all base triples is asserted. This is a material_partial theorem for the two displayed fixed-one-mode constrained procedures only. It makes no claim for ordinary unconstrained ALS or full-variable GD.

**Proof / justification.** Fix \(q,r,n,k\) and an arbitrary deterministic base triple satisfying the statement, and fix an arbitrary possible tensor value \(T_0\). Accepted Proposition~\ref{prop:step-002-joint-event} gives, under the regular conditional law of the initializations given \(T=T_0\),
\[
\mathbb P(\mathcal E\mid T=T_0)\ge\frac14.
\tag{7.6}
\]
The accepted dependency conclusions hold on their common probability-one algorithmic domain. Intersecting \(\mathcal E\) with that domain does not alter (7.6): Gaussian rank failure has conditional probability zero, while accepted step_004 and step_005 prove all finite updates pathwise and introduce no further random good event.

On \(\mathcal E\), Proposition~\ref{prop:step-007-limit-passage} gives both limit conclusions in (7.5). Thus, up to the preceding conditional null set, \(\mathcal E\) is contained in the final two-method limit event. For every \(T_0\),
\[
\begin{aligned}
&\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\text{ exists and }
\lim_{t\to\infty}F_M(t)\ge\frac38\|T\|_F^2
\right\}
\middle|T=T_0
\right]\\
&\qquad\ge \mathbb P(\mathcal E\mid T=T_0)
\ge\frac14.
\end{aligned}
\tag{7.7}
\]
This is pointwise in \(T_0\). It does not rely on a favorable smoothing event or on independence of the two complete trajectories.

Averaging (7.7) over the smoothing draw and applying the tower property gives
\[
\begin{aligned}
&\mathbb P\!\left[
\bigcap_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\left\{
\lim_{t\to\infty}F_M(t)\text{ exists and }
\lim_{t\to\infty}F_M(t)\ge\frac38\|T\|_F^2
\right\}
\right]\\
&\quad=
\mathbb E_T\!\left[
\mathbb P\!\left(
\bigcap_M
\left\{
\lim_{t\to\infty}F_M(t)\text{ exists and }
\lim_{t\to\infty}F_M(t)\ge\frac38\|T\|_F^2
\right\}
\middle|T
\right)
\right]\\
&\quad\ge \mathbb E_T\!\left[\frac14\right]
=\frac14.
\end{aligned}
\]
Because (7.7) holds for every \(T_0\), the law of \(T\) enters only through this final averaging. Therefore no property of the deterministic bases and no smoothing concentration, conditioning, or incoherence event is used. The same probability and objective constants apply after fixing every deterministic base triple allowed by Assumption~\ref{assump:arbitrary_base}.

The numerical proof uses only
\[
k\le L(r)=r^{5/4},
\qquad
n\ge8L(r),
\]
so it is valid for every positive integer \(r\). Thus \(r_0=1\) is admissible. If the integer interval \(r<k\le r^{5/4}\) is empty for a small \(r\), the universal statement over admissible \(k\) is vacuous. The identity \(L(r)=r^{1+\alpha}\) gives exactly \(\alpha=1/4\).

Finally, accepted Claim~\ref{claim:step-006-nontransfer} shows that an ordinary unconstrained update need not preserve the initialization span and that its complement residual contains the uncontrolled generated term \(\Lambda_t\). The present proof uses the zero-leakage fixed-witness interface only for the two constrained procedures. Hence (7.5) neither states nor implies a positive-limit theorem for unconstrained ALS or GD. \(\square\)

### Boundary and degenerate cases

- **Zero target:** If \(T=0\), each projection event is sure by accepted step_002, both objective limits exist by accepted step_004 and step_005, and the required lower bound is zero. No normalized \(W_M\) is defined, and none is needed. Conditional success probability is one on this fiber.
- **Nonzero target on the joint event:** Equation (7.1) makes both witness denominators strictly positive, so the accepted fixed witnesses are available from initialization through every finite iterate.
- **Dimension boundary:** At \(k/n=1/8\), the squared-residual constant is exactly \(3/4\) and the objective constant is exactly \(3/8\).
- **Empty small-\(r\) rank windows:** The choice \(r_0=1\) remains valid because a universal statement over an empty set of admissible integers \(k\) is vacuous.
- **Zero drops, singular cALS designs, and zero cGD gradient:** These cases are included in the accepted scalar-limit dependencies and do not change the event implication.
- **Shared target:** The two method events need not be unconditionally independent. Conditional independence given the common \(T\), followed by the tower property, is the only probability conversion used.
- **Arbitrary bases:** Uniformity means the same theorem holds after fixing each unrestricted deterministic base triple. No union bound or common event over all triples is asserted.
- **Unconstrained methods:** The accepted non-transfer certificate is used only to prevent a scope upgrade. No success, failure, escape, or convergence statement is made for ordinary unconstrained ALS or GD.

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-002-joint-event} supplies the static event \(\mathcal E\) with pointwise conditional and unconditional probability at least \(1/4\), together with the simultaneous residual margins. Proposition~\ref{prop:step-007-joint-floor} combines that event with the exact floor from accepted Proposition~\ref{prop:step-003-pythagorean-floor}, the all-index existence outputs of accepted Proposition~\ref{prop:step-004-sequential-descent} and accepted Proposition~\ref{prop:step-005-well-defined}, and \(k/n\le1/8\). It yields
\[
\mathcal E
\Longrightarrow
\forall M\in\{\mathrm{cALS},\mathrm{cGD}\},\ \forall t\ge0,
\quad
F_M(t)
\ge\frac12\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac38\|T\|_F^2.
\tag{7.8}
\]
For \(T\ne0\), accepted Lemma~\ref{lem:step-003-fixed-witness} supplies the fixed witness realizing the same residual obstruction; for \(T=0\), the unnormalized Pythagorean identity supplies the zero floor.

Accepted Lemma~\ref{lem:step-004-scalar-limit} and accepted Proposition~\ref{prop:step-005-scalar-limit} supply the two finite scalar limits. Proposition~\ref{prop:step-007-limit-passage} applies scalar order preservation to (7.8), with no expectation-limit interchange. Proposition~\ref{prop:step-007-material-partial} then uses the pointwise conditional \(1/4\) bound and the tower property to prove the exact joint theorem with \(r_0=1\), \(L(r)=r^{5/4}\), and \(\alpha=1/4\). Accepted Claim~\ref{claim:step-006-nontransfer} supplies the final constrained-only scope boundary. These named results prove the exact step_007 sketch-row claim.

## Explicit Rate Audit

- Exposed variables: fixed \(q>0\), \(\rho=r^{-q}\), integers \(r,n,k\), \(\alpha=1/4\), \(L(r)=r^{5/4}\), unrestricted deterministic bases, realized \(T\), method \(M\), and iteration \(t\). Exposed constants are event multiplier \(2\), per-method confidence \(1/2\), joint confidence \(1/4\), residual fraction \(3/4\), objective coefficient \(1/2\), and objective fraction \(3/8\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,q,\rho,T\), deterministic bases, smoothing variables, initialization values, method, iteration, factor norms, Khatri--Rao conditioning, line-search history, or horizon.
- Fixed quantities: Conditional on \(T=T_0\), \(r,n,k,q\) and the bases are fixed while the initialization triples remain random. Along each trajectory, \(T\), the fixed method span, and the initialization are fixed.
- Probability mode: Pointwise conditional-on-\(T=T_0\) probability at least \(1/4\) for every \(T_0\), followed by unconditional probability at least \(1/4\) under the joint smoothing-and-initialization law. The methods share \(T\); only their starts are conditionally independent. No union bound and no independence of complete trajectories is used.
- Horizon mode: The residual and objective floors hold for every finite \(t\ge0\); the public conclusion is asymptotic only through the two accepted scalar limits. The controlling projection event is static.
- Norm mode: Ambient tensor Frobenius norm for the same actual residual \(T-S_t^M\), with \(F_M(t)=\frac12\|T-S_t^M\|_F^2\). No transformed, population, weighted, or surrogate norm appears.
- Admissibility conditions and auxiliary tolerances: \(r\ge1\), \(n\ge8r^{5/4}\), integer \(r<k\le r^{5/4}\), the five setting assumptions, and the exact constrained algorithm definitions. There is no auxiliary tolerance, factor bound, conditioning margin, line-search lower bound, or generated trajectory condition.
- Term absorption or simplification inequalities:
  \[
  \frac{k}{n}\le\frac{r^{5/4}}{8r^{5/4}}=\frac18,
  \qquad
  1-2\frac{k}{n}\ge\frac34,
  \qquad
  \frac12\left(1-2\frac{k}{n}\right)\ge\frac38.
  \]
  No term is hidden or absorbed. The only discarded term is the explicit nonnegative in-subspace squared residual in the accepted Pythagorean identity.
- Probability conversion: If \(G\) denotes the exact final event in (7.5), then
  \[
  \mathbb P(\mathcal E\mid T=T_0)\ge\frac12\cdot\frac12=\frac14,
  \qquad
  \mathcal E\subseteq G
  \quad\text{up to a conditional null set},
  \]
  and therefore
  \[
  \mathbb P(G\mid T=T_0)\ge\frac14,
  \qquad
  \mathbb P(G)=\mathbb E[\mathbb P(G\mid T)]\ge\frac14.
  \]
- Contribution to any Rate Specialization Bridge: This step is the complete bridge. It selects \(\alpha=1/4\), \(L(r)=r^{5/4}\), and \(r_0=1\); verifies \(k/n\le1/8\); converts \(3/4\) residual energy to \(3/8\) objective value; converts two \(1/2\) conditional event probabilities to joint confidence \(1/4\); and passes the all-time floor to the accepted scalar limits without loss.
- Baseline-reduction check: At \(T=0\), the lower bound is exactly zero and conditional success is sure; no nonzero remainder or stopped statement replaces the baseline. At zero objective, the accepted method proofs preserve zero. At \(k/n=1/8\), the constants remain exactly \(3/4\) and \(3/8\). Exact/noiseless nonzero tensors use the same fixed-projector identity without a smoothing-error term.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(T\), \(S_t^M\), \(F_M(t)\), \(P_{\mathcal H_M}\), \(E_M\), and conditionally defined \(W_M\) retain the same target, method, and Frobenius conventions as setting.md.
- New public-facing quantities:
  - \(\alpha=1/4\), naming the exponent increment fixed by assump:rank_window;
  - \(L(r)=r^{1+\alpha}=r^{5/4}\), naming the upper rank threshold;
  - \(r_0=1\), proved admissible by Proposition~\ref{prop:step-007-material-partial}.
- Appendix-local helper objects:
  - \(\mathcal E=E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\), the intersection of two setting-defined events whose probability is proved in accepted step_002;
  - \(R_M=(I-P_{\mathcal H_M})T\), the accepted fixed residual from step_003;
  - \(\ell_M=\lim_tF_M(t)\), shorthand for the limits inherited from step_004 and step_005;
  - \(G\), used only in the Explicit Rate Audit as shorthand for the exact final event displayed in (7.5);
  - \(\Pi_0,R_0,\Lambda_t,W_0\), accepted step_006 comparison objects restated only to certify the unconstrained scope boundary.
- Proof-local helper objects: \(T_0\) is an arbitrary conditional tensor fiber, \(c_T=(3/8)\|T\|_F^2\) is used only in the scalar-limit contradiction, and \(\mathbb E_T\) denotes expectation over the smoothing-induced law of \(T\) in the tower calculation. The witnesses \(\varepsilon\) and \(N\) occur only inside the scalar-limit contradiction. None is exported.
- Constant provenance: \(1/8\) comes from assump:dimension and assump:rank_window; \(3/4=1-2(1/8)\); \(3/8=(1/2)(3/4)\); \(1/4=(1/2)(1/2)\); and \(\alpha=1/4\), \(L(r)=r^{5/4}\), and \(r_0=1\) are explicitly proved theorem quantities. No free constant, rate, radius, or bounded object is introduced.
- Assumption provenance:
  - \(\mathcal E\) and its probability are derived outputs of accepted step_002, not theorem assumptions;
  - the fixed-span floor and optional normalized witnesses are derived outputs of accepted step_003;
  - all-finite-index well-definedness and scalar limits are derived outputs of accepted step_004 and step_005;
  - the unconstrained non-transfer statement is a derived diagnostic output of accepted step_006 and is used only to delimit scope;
  - conditioning on \(T=T_0\) is a proof mode, not a favorable smoothing event or theorem-facing condition.
- Quantifier note: Fix \(q>0\); set \(r_0=1\), \(\alpha=1/4\), and \(L(r)=r^{5/4}\); quantify over every admissible \(r,n,k\) and every unrestricted deterministic base triple; then draw the smoothing and initialization variables. Uniformity over bases is pointwise with a common bound, not simultaneous over all bases.
- Shared-target note: Both methods consume the same \(T\). Conditional independence is used only for their initialization spans after fixing \(T\); no unconditional independence of the final events is assumed.
- Scope note: The public result is exactly for the constrained algorithms in setting.md. Accepted step_006 identifies the uncontrolled outside-span term for ordinary unconstrained comparisons, so no unconstrained theorem, parameter convergence, stationarity, convergence rate, factor bound, or Gram-conditioning conclusion is exported.
- Global diagnostic use: the step_007 portion of global_proof.md was inspected only after confirming that global_proof_review.md has status ACCEPTED. Its planning guidance was to preserve the exact \(3/4\)-to-\(3/8\) chain, the pointwise conditional \(1/4\) probability before tower averaging, \(r_0=1\), and the constrained-only label. It was not used as proof evidence, a cited result, an assumption source, or authority to alter the accepted target claim.
