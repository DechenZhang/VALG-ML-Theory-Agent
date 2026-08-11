# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_004` | Prove the balanced initial-size event. | `step_002` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization` | Simultaneous radial bound. | Gaussian norm concentration. | `E_size`. | Conditional failure at most `r^(-20)`. | PENDING |

Concretely, with
\[
  \mathcal E_{\rm size}
  =\left\{\max_{i\in[k],\,m\in\{x,y,z\}}
    \|m_{i,0}\|_2\le 2\right\},
\]
this step must prove, uniformly over the full rank and dimension window and
conditionally on any realized smoothing triple in
\(\mathcal E_{\rm cond}\),
\[
  \mathbb P\!\left(\mathcal E_{\rm size}^{\mathsf c}
    \mid A,B,C\right)\le r^{-20}.
\]
Only the balanced initialization radius is claimed. No Gram, tangent,
trajectory, or all-time path conclusion is part of this step.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`: the theorem constants may be chosen so that
    \(n\ge C(\kappa,q)r^4\log r\), with \(r\) sufficiently large and no
    upper restriction on \(n\).
  - `assump:rank_window`: \(r<k\le\lfloor r^{5/4}\rfloor\).
  - `assump:independent_initialization`: before balancing, the \(3k\) columns
    of \(X_0^{\rm raw},Y_0^{\rm raw},Z_0^{\rm raw}\) are mutually
    independent with iid \(\mathcal N(0,1/n)\) entries, and initialization is
    independent of smoothing.
- Derived invariants supplied by accepted dependencies:
  - The accepted Lemma~\ref{lem:step-002-balancing-scalars} from `step_002`
    proves the exact balancing law. On the positive-radius branch, all three
    balanced norms in component \(i\) equal
    \[
      \left(\|\widetilde x_i\|_2
             \|\widetilde y_i\|_2
             \|\widetilde z_i\|_2\right)^{1/3}.
    \]
    If any raw factor is zero, the setting-defined map leaves the entire raw
    triple unchanged. The dependency also proves that the positive-radius
    branch occurs almost surely, but the deterministic argument below handles
    the zero branch explicitly rather than discarding it.
- Local conditional hypotheses: None. Fixing the realized factors when
  computing the conditional initialization probability is probability
  bookkeeping, not an additional assumption; no property of those factors is
  used.
- Accepted dependency artifacts:
  - `perspective_3/idea_3/proof_steps/step_002/proof.md`;
  - `perspective_3/idea_3/proof_steps/step_002/review.md`, whose status is
    `ACCEPTED` for sketch attempt 10 and unit attempt 1.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:independent_initialization}, conditionally on any realized factor triple, each raw initialization column \(\widetilde m_i\) satisfies \(\mathbb P(\|\widetilde m_i\|_2>2\mid A,B,C)\le e^{-n/2}\). | Supplies an explicit exponential tail for each of the \(3k\) raw radii. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:independent_initialization}, and Lemma~\ref{lem:step-004-raw-radius-tail}, if the theorem constants satisfy \(C(\kappa,q)\ge C_{\rm size}:=1\) and \(r\ge r_{\rm size}:=3\), then the simultaneous raw-radius event \(\mathcal E_{\rm raw,size}\) has conditional failure at most \(r^{-20}\), including \(k=\lfloor r^{5/4}\rfloor\). | Performs the finite union over all \(3k\) columns and discharges the exact polynomial confidence target. |
| `unit_003` | proposition | Under Assumption~\ref{assump:independent_initialization}, the accepted Lemma~\ref{lem:step-002-balancing-scalars}, and Proposition~\ref{prop:step-004-uniform-raw-size}, the deterministic inclusion \(\mathcal E_{\rm raw,size}\subseteq\mathcal E_{\rm size}\) holds on both the positive-radius and zero-factor branches. | Transfers the simultaneous raw bound to every actual balanced initial column. |

Atomic step = no. The one-column radial tail, its uniform `3k` probability
conversion, and the deterministic balancing transfer are independent
nontrivial obligations and are proved separately.

## Cited Result Applications

### Accepted dependency: exact balancing law

**Source and restated statement.** The accepted
Lemma~\ref{lem:step-002-balancing-scalars} states that for each component
\(i\), if the three raw norms are positive, the product-preserving balancing
map makes all three output norms equal to their geometric mean. If any raw
factor is zero, the map leaves the whole raw triple unchanged.

**Instantiated objects and discharge.** The raw columns here are exactly
\(\widetilde x_i,\widetilde y_i,\widetilde z_i\) from the setting. The lemma
was accepted under Assumption~\ref{assump:independent_initialization}; no
coefficient, Gram, or factor-conditioning output from `step_002` is used.
Proposition~\ref{prop:step-004-balanced-size-transfer} applies this law only
after the simultaneous raw-radius event has been proved.

### Gaussian-square moment generating function

**Restated result.** If \(g\sim\mathcal N(0,I_n)\), then for every
\(0<\lambda<1/2\),
\[
  \mathbb E e^{\lambda\|g\|_2^2}=(1-2\lambda)^{-n/2}.
\]
Consequently, Chernoff's inequality gives
\[
  \mathbb P(\|g\|_2^2\ge 4n)
  \le \exp\!\left[-\frac{3-\log 4}{2}n\right]
  \le e^{-n/2}.
\]

**Instantiated objects and discharge.** For each raw column set
\(g_i^m=\sqrt n\,\widetilde m_i\). Assumption~\ref{assump:independent_initialization}
gives \(g_i^m\sim\mathcal N(0,I_n)\), even after conditioning on the
independent smoothing. Lemma~\ref{lem:step-004-raw-radius-tail} derives the
displayed moment generating function and tail directly, so no external
citation is used as proof authority.

### Local result applications

- Lemma~\ref{lem:step-004-raw-radius-tail} supplies the per-column tail used
  by Proposition~\ref{prop:step-004-uniform-raw-size}.
- Proposition~\ref{prop:step-004-uniform-raw-size} supplies the exact
  conditional probability bound for the proof-local simultaneous raw event.
- Proposition~\ref{prop:step-004-balanced-size-transfer} supplies the
  deterministic inclusion from that raw event into the setting-defined
  \(\mathcal E_{\rm size}\).

## Local Derivation

### unit_001: lemma

**Lemma (raw Gaussian radius tail).**
\label{lem:step-004-raw-radius-tail}
Under Assumption~\ref{assump:independent_initialization}, fix any realized
factor triple \((A,B,C)\) and any component-mode pair
\((i,m)\in[k]\times\{x,y,z\}\). Then
\[
  \mathbb P\!\left(\|\widetilde m_i\|_2>2\mid A,B,C\right)
  \le \exp\!\left[-\frac{3-\log4}{2}n\right]
  \le e^{-n/2}.
\]

**Proof / justification.** Independence of initialization from smoothing
implies that, conditionally on the realized factors,
\(g_i^m:=\sqrt n\,\widetilde m_i\) remains a standard Gaussian vector in
\(\mathbb R^n\). For one standard normal scalar \(G\), direct Gaussian
integration gives
\[
  \mathbb E e^{\lambda G^2}=(1-2\lambda)^{-1/2},
  \qquad 0<\lambda<\frac12.
\]
Independence of the \(n\) coordinates therefore yields
\[
  \mathbb E e^{\lambda\|g_i^m\|_2^2}
  =(1-2\lambda)^{-n/2}.
\]
Markov's inequality with \(\lambda=3/8\) gives
\[
  \begin{aligned}
  \mathbb P\!\left(\|\widetilde m_i\|_2>2\mid A,B,C\right)
  &=\mathbb P\!\left(\|g_i^m\|_2^2>4n\mid A,B,C\right)\\
  &\le e^{-(3/8)4n}(1-3/4)^{-n/2}\\
  &=e^{-3n/2}4^{n/2}
   =\exp\!\left[-\frac{3-\log4}{2}n\right].
  \end{aligned}
\]
Since \(\log4<2\), the exponent coefficient
\((3-\log4)/2\) is larger than \(1/2\), proving the second inequality. The
calculation is uniform in the realized factors because their values do not
enter the conditional Gaussian law. \(\square\)

### unit_002: proposition

**Proposition (simultaneous control of all raw initialization radii).**
\label{prop:step-004-uniform-raw-size}
Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and
\ref{assump:independent_initialization}, and
Lemma~\ref{lem:step-004-raw-radius-tail}, define the proof-local event
\[
  \mathcal E_{\rm raw,size}
  :=\left\{\max_{i\in[k],\,m\in\{x,y,z\}}
       \|\widetilde m_i\|_2\le2\right\}.
\]
Choose the dimension-constant contribution
\(C_{\rm size}:=1\) and the rank threshold \(r_{\rm size}:=3\). If
\[
  C(\kappa,q)\ge C_{\rm size},\qquad r\ge r_{\rm size},
\]
then, conditionally on every realized factor triple,
\[
  \mathbb P\!\left(\mathcal E_{\rm raw,size}^{\mathsf c}
    \mid A,B,C\right)\le r^{-20}.
\]
This conclusion holds throughout the full rank window, including the boundary
\(k=\lfloor r^{5/4}\rfloor\).

**Proof / justification.** A union bound over the \(3k\) raw columns and
Lemma~\ref{lem:step-004-raw-radius-tail} give
\[
  \mathbb P\!\left(\mathcal E_{\rm raw,size}^{\mathsf c}
      \mid A,B,C\right)
  \le 3k e^{-n/2}.
\]
No independence is needed for this union bound, although the columns are in
fact independent. Assumptions~\ref{assump:dimension} and
\ref{assump:rank_window}, together with \(C(\kappa,q)\ge1\), imply
\[
  3k e^{-n/2}
  \le 3r^{5/4}
       \exp\!\left(-\frac12r^4\log r\right).
\]
For \(r\ge3\),
\[
  \frac{r^4}{2}
  \ge \frac{81}{2}
  \ge \frac{85}{4}+\frac{\log3}{\log r},
\]
because \(\log3/\log r\le1\). Multiplying by \(\log r>0\) and rearranging
gives the explicit absorption inequality
\[
  \log3+\frac54\log r-\frac{r^4}{2}\log r
  \le -20\log r.
\]
Exponentiation proves
\[
  3r^{5/4}\exp\!\left(-\frac12r^4\log r\right)
  \le r^{-20}.
\]
The use of \(k\le r^{5/4}\) is valid at
\(k=\lfloor r^{5/4}\rfloor\), so the maximal-rank boundary requires no
separate loss. The lower inequality \(r<k\) is part of the declared window
but is not needed for this upper-tail estimate. \(\square\)

### unit_003: proposition

**Proposition (geometric-mean transfer to balanced columns).**
\label{prop:step-004-balanced-size-transfer}
Under Assumption~\ref{assump:independent_initialization}, the accepted
Lemma~\ref{lem:step-002-balancing-scalars}, and
Proposition~\ref{prop:step-004-uniform-raw-size}, the deterministic inclusion
\[
  \mathcal E_{\rm raw,size}\subseteq\mathcal E_{\rm size}
\]
holds. Hence, whenever \(C(\kappa,q)\ge1\) and \(r\ge3\), conditionally on
every realized factor triple,
\[
  \mathbb P\!\left(\mathcal E_{\rm size}^{\mathsf c}
    \mid A,B,C\right)\le r^{-20}.
\]

**Proof / justification.** Fix a component \(i\) on
\(\mathcal E_{\rm raw,size}\). First suppose all three raw norms are
positive. The accepted balancing lemma gives
\[
  \|x_{i,0}\|_2=\|y_{i,0}\|_2=\|z_{i,0}\|_2
  =\left(\|\widetilde x_i\|_2
          \|\widetilde y_i\|_2
          \|\widetilde z_i\|_2\right)^{1/3}.
\]
Every raw norm on the right is at most \(2\), so
\[
  \left(\|\widetilde x_i\|_2
          \|\widetilde y_i\|_2
          \|\widetilde z_i\|_2\right)^{1/3}
  \le (2\cdot2\cdot2)^{1/3}=2.
\]

If at least one raw factor is exactly zero, the setting-defined zero branch
leaves the entire raw triple unchanged. On
\(\mathcal E_{\rm raw,size}\), each unchanged raw norm is already at most
\(2\), including any nonzero factors in that triple. Thus the same balanced
size conclusion holds on the zero branch without division by a raw norm and
without removing a null event.

The argument applies to every \(i\in[k]\), proving the event inclusion.
Consequently
\[
  \mathbb P\!\left(\mathcal E_{\rm size}^{\mathsf c}\mid A,B,C\right)
  \le
  \mathbb P\!\left(\mathcal E_{\rm raw,size}^{\mathsf c}\mid A,B,C\right)
  \le r^{-20}
\]
by Proposition~\ref{prop:step-004-uniform-raw-size}. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-004-raw-radius-tail} derives from
Assumption~\ref{assump:independent_initialization} the explicit conditional
one-column bound \(e^{-n/2}\). Proposition~\ref{prop:step-004-uniform-raw-size}
unions that bound over exactly the \(3k\) raw initialization columns and uses
the full admissible boundary \(k\le\lfloor r^{5/4}\rfloor\), the explicit
dimension contribution \(C_{\rm size}=1\), and the explicit threshold
\(r_{\rm size}=3\) to obtain
\[
  \mathbb P\!\left(\mathcal E_{\rm raw,size}^{\mathsf c}
    \mid A,B,C\right)\le r^{-20}.
\]

Proposition~\ref{prop:step-004-balanced-size-transfer}, using the exact
balancing law from accepted `step_002`, proves on the positive-radius branch
that each balanced norm is the geometric mean of three raw norms bounded by
\(2\), and separately proves the same conclusion on the setting-defined
zero-factor no-op branch. Therefore
\(\mathcal E_{\rm raw,size}\subseteq\mathcal E_{\rm size}\), and hence
\[
  \boxed{
  \mathbb P\!\left(\mathcal E_{\rm size}^{\mathsf c}
    \mid A,B,C\right)\le r^{-20}}
\]
uniformly for every realized factor triple in \(\mathcal E_{\rm cond}\),
every \(r\ge3\), every \(n\ge C(\kappa,q)r^4\log r\) with
\(C(\kappa,q)\ge1\), and every
\(r<k\le\lfloor r^{5/4}\rfloor\). This is exactly the balanced
initial-size event and conditional failure budget required by the accepted
sketch row. No Gram or path statement has been used or proved.

## Explicit Rate Audit

- Exposed variables: \(n,r,k\), the column-radius threshold \(2\), and the
  conditional failure target \(r^{-20}\).
- Hidden constants may depend on: None in the tail calculation. The global
  theorem constant may already depend on \(\kappa,q\); this step contributes
  only the universal lower requirement \(C(\kappa,q)\ge C_{\rm size}=1\).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized smoothing, or any GD horizon.
- Fixed quantities: condition on an arbitrary realized \((A,B,C)\); the
  independent raw initialization is then sampled.
- Probability mode: conditional high probability under initialization,
  uniformly over realized triples and therefore uniformly on
  \(\mathcal E_{\rm cond}\). The proof uses a finite union, not independence
  among the events being unioned.
- Horizon mode: initialization-only, before the first GD update.
- Norm mode: Euclidean norm of each raw and balanced physical factor column.
- Admissibility conditions and auxiliary tolerances: natural logarithm,
  \(C_{\rm size}=1\), \(r_{\rm size}=3\),
  \(n\ge r^4\log r\), and \(k\le\lfloor r^{5/4}\rfloor\). There is no
  auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
    3k e^{-n/2}
    \le 3r^{5/4}e^{-(r^4/2)\log r}
    \le r^{-20},
  \]
  with the second inequality verified explicitly for every \(r\ge3\).
- Probability conversion: the per-column conditional tail is unioned over all
  \(3k\) raw columns. The deterministic event inclusion then transfers the
  same failure budget to \(\mathcal E_{\rm size}\).
- Contribution to any Rate Specialization Bridge: contributes one of the four
  \(r^{-20}\) initialization-event budgets consumed later by `step_010`; no
  joint event union is performed here.
- Baseline-reduction check: on the positive-radius branch, balancing changes
  the three radii to their exact geometric mean. On the zero-factor branch it
  is exactly the identity. Thus the raw radius event transfers without a
  weakened threshold, additive remainder, or changed probability mode.

## Blockers

None.

## Notation And Assumption Notes

- \(g_i^m=\sqrt n\,\widetilde m_i\) is `proof-local` and is defined directly
  from the setting's raw initialization column. Its conditional standard
  Gaussian law follows from Assumption~\ref{assump:independent_initialization}.
- \(\mathcal E_{\rm raw,size}\) is `proof-local`. It packages the simultaneous
  raw norm bound used only to prove the public-facing setting event
  \(\mathcal E_{\rm size}\); it is not exported downstream.
- \(\mathcal E_{\rm size}\) is `public-facing` and retains exactly its
  setting definition. No all-time radius, trajectory event, or Gram condition
  is included in it.
- The chi-square exponent \((3-\log4)/2\) and its conservative lower bound
  \(1/2\) are `proof-local` constants proved by
  Lemma~\ref{lem:step-004-raw-radius-tail}; neither is hidden in the exported
  statement.
- \(C_{\rm size}=1\) and \(r_{\rm size}=3\) are `appendix-local` universal
  threshold contributions proved sufficient by
  Proposition~\ref{prop:step-004-uniform-raw-size}. The theorem-facing
  existential constants may be enlarged to satisfy
  \(C(\kappa,q)\ge C_{\rm size}\) and
  \(r_0(\kappa,q)\ge r_{\rm size}\); this introduces no new primitive
  condition and no dependence on \(n,r,k\) or the base triple.
- Assumption provenance is complete. The raw Gaussian law and independence
  from smoothing are primitive under
  Assumption~\ref{assump:independent_initialization}; the dimension and rank
  inequalities are primitive under Assumptions~\ref{assump:dimension} and
  \ref{assump:rank_window}; the exact balancing behavior is supplied by the
  accepted `step_002` dependency; the simultaneous raw event and the balanced
  size event are proved in this step. No generated Gram, tangent, deficit,
  path, convergence, or all-time boundedness condition is assumed.
- The conditional probability is with respect to initialization after fixing
  the realized factors. Because initialization is independent of smoothing,
  the displayed bound is uniform in the fixed realization and hence applies
  in particular on \(\mathcal E_{\rm cond}\). No property of
  \(\mathcal E_{\rm cond}\) is used in the derivation.
- The accepted `global_proof.md` was read only after its paired
  `global_proof_review.md` was confirmed `ACCEPTED`. Its B04 discussion was
  used only as planning guidance for the finite union and balancing transfer.
  It was not used as evidence, a cited result, an assumption source, or
  authority to alter the target claim.
