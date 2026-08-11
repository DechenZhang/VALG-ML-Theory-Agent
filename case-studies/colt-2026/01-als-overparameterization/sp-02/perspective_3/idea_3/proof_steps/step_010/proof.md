# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: step_010
- Unit attempt: 1

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| step_010 | Assemble \(P(E_{\rm init\_norm})\ge1-r^{-10}\). | step_001, step_003, step_004, step_009 | Primitive conditions through dependencies | Event bookkeeping. | Union and conditioning. | \(E_{\rm init\_norm}\). | \(4r^{-20}\le r^{-10}\). | PENDING |

Under the joint smoothing/initialization law from setting.md, conditional on
the deterministic base triple, prove exactly
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge 1-r^{-10},
\]
where
\[
  \mathcal E_{\rm init\_norm}
  =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}^{\rm norm}
   \cap\mathcal E_{\rm size}\cap\mathcal E_{\rm deficit}.
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumptions~\ref{assump:base_conditioning},
    \ref{assump:dimension}, \ref{assump:rank_window},
    \ref{assump:gaussian_smoothing}, and
    \ref{assump:independent_initialization}, used only through the accepted
    dependency interfaces below.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-realized-conditioning} proves
    \(\mathbb P(\mathcal E_{\rm cond}^{\mathsf c})\le r^{-20}\) in the
    joint probability space.
  - Accepted Proposition~\ref{prop:step-003-normalized-gram-event} proves,
    for every realized \((A,B,C)\in\mathcal E_{\rm cond}\),
    \[
      \mathbb P((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
        \mid A,B,C)\le r^{-20}.
    \]
  - Accepted Proposition~\ref{prop:step-004-balanced-size-transfer} proves,
    for every realized \((A,B,C)\in\mathcal E_{\rm cond}\),
    \[
      \mathbb P(\mathcal E_{\rm size}^{\mathsf c}\mid A,B,C)
      \le r^{-20}.
    \]
  - Accepted Proposition~\ref{prop:step-009-raw-witness} proves, for every
    realized \((A,B,C)\in\mathcal E_{\rm cond}\),
    \[
      \mathbb P(\mathcal E_{\rm deficit}^{\mathsf c}\mid A,B,C)
      \le r^{-20}.
    \]
- Local conditional hypotheses: None.
- Accepted dependency artifacts: the current proof/review pairs for
  step_001 unit attempt 2, step_003 unit attempt 2, step_004 unit attempt 1,
  and step_009 unit attempt 1; each review has status ACCEPTED for sketch
  attempt 10.

All four constituents of \(\mathcal E_{\rm init\_norm}\) are derived
outputs. None is a primitive assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under Assumptions~\ref{assump:base_conditioning}, \ref{assump:dimension}, \ref{assump:rank_window}, \ref{assump:gaussian_smoothing}, and \ref{assump:independent_initialization}, and the four accepted dependency interfaces, the exact event identity implies \(\mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})\le4r^{-20}\) under the joint law. | Uses the tower property and a conditional union bound without assuming independence among the three initialization events. |
| unit_002 | proposition | Under Assumption~\ref{assump:dimension} and Proposition~\ref{prop:step-010-conditional-union}, if \(r\ge2\), then \(4r^{-20}\le r^{-10}\) and hence \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\). | Converts the four-event technical failure budget to the exact public confidence. |

Atomic step = no. The conditional four-event assembly and the final exponent
comparison are separate auditable obligations.

## Cited Result Applications

### Accepted dependency interfaces

Accepted Proposition~\ref{prop:step-001-realized-conditioning} supplies the
unconditional smoothing interface
\[
  \mathbb P(\mathcal E_{\rm cond}^{\mathsf c})\le r^{-20}.
\]
Accepted Propositions~\ref{prop:step-003-normalized-gram-event},
\ref{prop:step-004-balanced-size-transfer}, and
\ref{prop:step-009-raw-witness} supply, uniformly for every realized triple
in \(\mathcal E_{\rm cond}\), the three respective conditional failure
bounds
\[
  \max\left\{
  \mathbb P((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}\mid A,B,C),
  \mathbb P(\mathcal E_{\rm size}^{\mathsf c}\mid A,B,C),
  \mathbb P(\mathcal E_{\rm deficit}^{\mathsf c}\mid A,B,C)
  \right\}
  \le r^{-20}.
\]
These are statements under the same remaining-initialization conditional law.
Their uniformity on \(\mathcal E_{\rm cond}\) is exactly what is used below.

### Tower property and conditional union bound

**Restated result.** If \(\mathcal G\) is a sub-sigma-field,
\(A_0\in\mathcal G\), and \(B_1,B_2,B_3\) are events, then
\[
  \mathbb P\!\left(A_0\cap\bigcup_{j=1}^3B_j\right)
  =\mathbb E\!\left[
    \mathbf 1_{A_0}\,\mathbb P\!\left(\bigcup_{j=1}^3B_j
      \middle|\mathcal G\right)
  \right]
  \le\mathbb E\!\left[
    \mathbf 1_{A_0}\sum_{j=1}^3\mathbb P(B_j\mid\mathcal G)
  \right].
\]

**Instantiated objects and discharge.** Take
\(\mathcal G=\sigma(A,B,C)\), \(A_0=\mathcal E_{\rm cond}\), and let the
three \(B_j\) be the complements of
\(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm size}\), and
\(\mathcal E_{\rm deficit}\). The event \(\mathcal E_{\rm cond}\) depends
only on the realized factor triple, so it belongs to \(\mathcal G\). The
accepted dependency bounds discharge the three conditional terms pointwise on
\(\mathcal E_{\rm cond}\). This argument forms no conditional probability by
dividing by \(\mathbb P(\mathcal E_{\rm cond})\), so no null-event issue
arises.

### Local result application

Proposition~\ref{prop:step-010-conditional-union} supplies the technical
failure bound used by Proposition~\ref{prop:step-010-public-confidence}.

## Local Derivation

### unit_001: proposition

**Proposition (Conditional assembly of the initialization event).**
\label{prop:step-010-conditional-union}
Under Assumptions~\ref{assump:base_conditioning},
\ref{assump:dimension}, \ref{assump:rank_window},
\ref{assump:gaussian_smoothing}, and
\ref{assump:independent_initialization}, and the four accepted dependency
interfaces above, the exact setting event satisfies
\[
  \mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})\le4r^{-20}
\]
under the joint smoothing/initialization law conditional on the deterministic
base triple.

**Proof / justification.** By the exact event identity,
\[
  \mathcal E_{\rm init\_norm}
  =\mathcal E_{\rm cond}\cap\mathcal E_{\rm gram}^{\rm norm}
   \cap\mathcal E_{\rm size}\cap\mathcal E_{\rm deficit},
\]
and hence
\[
\begin{aligned}
  \mathcal E_{\rm init\_norm}^{\mathsf c}
  ={}&\mathcal E_{\rm cond}^{\mathsf c}\ \uplus\
  \Bigl[\mathcal E_{\rm cond}\cap
    \bigl((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
      \cup\mathcal E_{\rm size}^{\mathsf c}
      \cup\mathcal E_{\rm deficit}^{\mathsf c}\bigr)\Bigr],
\end{aligned}                                               \tag{1}
\]
where \(\uplus\) denotes a disjoint union. Let
\(\mathcal G=\sigma(A,B,C)\). Applying the tower property and the
conditional union bound to the second term in equation (1) gives
\[
\begin{aligned}
&\mathbb P\!\left(\mathcal E_{\rm cond}\cap
    \bigl((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
      \cup\mathcal E_{\rm size}^{\mathsf c}
      \cup\mathcal E_{\rm deficit}^{\mathsf c}\bigr)\right)\\
&\quad=\mathbb E\!\left[\mathbf 1_{\mathcal E_{\rm cond}}
  \mathbb P\!\left(
    (\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
      \cup\mathcal E_{\rm size}^{\mathsf c}
      \cup\mathcal E_{\rm deficit}^{\mathsf c}
      \middle|\mathcal G\right)\right]\\
&\quad\le\mathbb E\!\left[\mathbf 1_{\mathcal E_{\rm cond}}
  \left(
    \mathbb P((\mathcal E_{\rm gram}^{\rm norm})^{\mathsf c}
      \mid\mathcal G)
    +\mathbb P(\mathcal E_{\rm size}^{\mathsf c}\mid\mathcal G)
    +\mathbb P(\mathcal E_{\rm deficit}^{\mathsf c}\mid\mathcal G)
  \right)\right]\\
&\quad\le 3r^{-20}.                                      \tag{2}
\end{aligned}
\]
The last line uses the three accepted bounds for every realized triple in
\(\mathcal E_{\rm cond}\). It does not require independence among the
Gram, size, and deficit events. Combining equations (1)--(2) with the
accepted smoothing bound yields
\[
  \mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})
  \le \mathbb P(\mathcal E_{\rm cond}^{\mathsf c})+3r^{-20}
  \le r^{-20}+3r^{-20}=4r^{-20}.
\]
This proves the proposition. \(\square\)

### unit_002: proposition

**Proposition (Public initialization confidence).**
\label{prop:step-010-public-confidence}
Under Assumption~\ref{assump:dimension} and
Proposition~\ref{prop:step-010-conditional-union}, if \(r\ge2\), then
\[
  \mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

**Proof / justification.** For \(r\ge2\),
\[
  4\le2^{10}\le r^{10},
\]
and therefore
\[
  4r^{-20}\le r^{10}r^{-20}=r^{-10}.                     \tag{3}
\]
Proposition~\ref{prop:step-010-conditional-union} and equation (3) imply
\[
\begin{aligned}
  \mathbb P(\mathcal E_{\rm init\_norm})
  &=1-\mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})\\
  &\ge1-4r^{-20}\\
  &\ge1-r^{-10}.
\end{aligned}
\]
Assumption~\ref{assump:dimension} already permits enlarging the theorem's
large-\(r\) threshold, so requiring \(r\ge2\) adds no new theorem-facing
condition. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-010-conditional-union} uses the exact event
identity, the accepted unconditional failure for \(\mathcal E_{\rm cond}\),
and the three accepted uniformly conditional failure interfaces. The tower
property and a conditional union bound give
\[
  \mathbb P(\mathcal E_{\rm init\_norm}^{\mathsf c})
  \le r^{-20}+3r^{-20}=4r^{-20}
\]
without multiplying probabilities or asserting independence among the three
initialization events. Proposition~\ref{prop:step-010-public-confidence}
then proves explicitly that \(4r^{-20}\le r^{-10}\) for \(r\ge2\), and
therefore
\[
  \boxed{\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}}.
\]
This is the exact sketch-row claim under the exact joint probability space.

## Explicit Rate Audit

- Exposed variables: \(r\), the four constituent failure budgets
  \(r^{-20}\), and the public failure target \(r^{-10}\).
- Hidden constants may depend on: only the dependency-level theorem
  thresholds already allowed to depend on \(\kappa,q\).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the realized factors, initialization, time, or the GD horizon.
- Fixed quantities: \(\kappa,q\) and an arbitrary admissible deterministic
  base triple; \(n,k\) range uniformly over the setting window.
- Probability mode: joint smoothing/initialization high probability,
  assembled from one unconditional smoothing bound and three bounds uniform
  under the realized-factor conditional initialization law.
- Horizon mode: initialization-only.
- Norm mode: event probability; the constituent events retain their exact
  setting-defined norm and spectral conventions.
- Admissibility conditions and auxiliary tolerances: the common accepted
  dependency thresholds, the setting dimension/rank window, and \(r\ge2\).
  No auxiliary tolerance is introduced.
- Term absorption or simplification inequalities:
  \[
    r^{-20}+3r^{-20}=4r^{-20},
    \qquad 4r^{-20}\le r^{-10}\quad(r\ge2).
  \]
- Probability conversion: equation (2) is a tower-property calculation and
  conditional union bound; it uses no independence and no conditioning on a
  possibly null event.
- Contribution to any Rate Specialization Bridge: this step supplies the
  exact public initialization confidence consumed by step_011 and step_015.
- Baseline-reduction check: no separate baseline specialization applies; the
  exact four-event intersection and its original probability mode are
  preserved.

## Blockers

None

## Notation And Assumption Notes

- \(\mathcal E_{\rm cond}\), \(\mathcal E_{\rm gram}^{\rm norm}\),
  \(\mathcal E_{\rm size}\), \(\mathcal E_{\rm deficit}\), and
  \(\mathcal E_{\rm init\_norm}\) are public-facing, setting-defined events.
  The first four are derived outputs of accepted dependency steps; none is a
  primitive condition or local conditional hypothesis.
- \(\mathcal G=\sigma(A,B,C)\) is proof-local notation for the sigma-field
  generated by the realized factor triple. It is used only for the tower
  calculation and is not exported.
- The coefficient \(4\) is proof-local and comes exactly from one smoothing
  failure budget plus three conditional initialization failure budgets. The
  universal threshold \(r\ge2\) is appendix-local and is proved sufficient
  by \(4\le r^{10}\).
- The conditional probabilities given \(A,B,C\) are versions under the same
  remaining-initialization law used by the accepted dependencies. Their
  pointwise uniform bounds on \(\mathcal E_{\rm cond}\) justify multiplication
  by \(\mathbf 1_{\mathcal E_{\rm cond}}\) inside the expectation. No quotient
  by \(\mathbb P(\mathcal E_{\rm cond})\) is used.
- No trajectory, path, convergence, Gram-independence, or event-independence
  condition is assumed or proved in this step.
