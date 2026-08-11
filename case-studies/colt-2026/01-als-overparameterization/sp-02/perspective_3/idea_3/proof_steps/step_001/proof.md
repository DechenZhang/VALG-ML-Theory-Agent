# Proof Step

## Step Identity

- Sketch attempt: 10
- Step ID: `step_001`
- Unit attempt: 2

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove `E_cond` and `kappa_1` singular bounds. | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Perturbation. | Gaussian tail and Weyl. | `E_cond`. | Initialization confidence, failure at most `r^(-20)`. | PENDING |

Concretely, with
\[
  \kappa_1=2\kappa^2,
\]
this step must prove, uniformly over all allowed deterministic base triples and
all allowed dimensions, that
\[
  \mathbb P(\mathcal E_{\rm cond})\ge 1-r^{-20},
\]
where on \(\mathcal E_{\rm cond}\), simultaneously for
\(M\in\{A,B,C\}\),
\[
  \sigma_{\min}(M)\ge \kappa_1^{-1},
  \qquad \|M\|_{\rm op}\le \kappa_1.
\]

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:base_conditioning`: every deterministic base column has norm in
    \([\kappa^{-1},\kappa]\), and every column-normalized base matrix has all
    singular values in \([\kappa^{-1},\kappa]\).
  - `assump:dimension`: \(q\ge4\) is fixed, \(r\) is sufficiently large, and
    \(n\ge C(\kappa,q)r^4\log r\), with no upper restriction on \(n\).
  - `assump:gaussian_smoothing`: each smoothing column is
    \(\mathcal N(0,r^{-2q}I_n/n)\), independently over columns and modes.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency artifacts: None; the target row has no dependencies.

The event \(\mathcal E_{\rm cond}\) is not assumed. It is a generated event
proved in this step from the three primitive conditions above.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under Assumption~\ref{assump:base_conditioning}, every deterministic base mode matrix \(\bar M\) satisfies \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\) and \(\|\bar M\|_{\rm op}\le\kappa^2\). | Supplies the deterministic singular-value margin. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:dimension} and \ref{assump:gaussian_smoothing}, for explicit \(r_{0,\rm cond}(\kappa,q)\) and every admissible \(n\), all three smoothing matrices have operator norm at most \((2\kappa^2)^{-1}\) with joint failure at most \(r^{-20}\). | Supplies the simultaneous perturbation event and exact confidence. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:base_conditioning}, \ref{assump:dimension}, and \ref{assump:gaussian_smoothing}, Lemmas~\ref{lem:step-001-base-conditioning} and \ref{lem:step-001-gaussian-perturbation} imply \(\mathcal E_{\rm cond}\), the \(\kappa_1=2\kappa^2\) singular/operator bounds, and \(\|M^\dagger\|_{\rm op}\le\kappa_1\), with failure at most \(r^{-20}\). | Applies Weyl and completes the exact target interface. |

Atomic step = no. The deterministic base bound, the simultaneous random
perturbation bound, and the perturbation-to-conditioning transfer are distinct
nontrivial claims and are therefore separated.

## Cited Result Applications

### Rectangular Gaussian operator-norm tail

**Restated result.** If \(G\in\mathbb R^{n\times r}\) has independent
\(\mathcal N(0,1)\) entries, then for every \(u\ge0\),
\[
  \mathbb P\!\left(\|G\|_{\rm op}\ge \sqrt n+\sqrt r+u\right)
  \le e^{-u^2/2}.
\]
Equivalently, if \(\Xi=(\rho/\sqrt n)G\), so every entry of \(\Xi\) has
variance exactly \(\rho^2/n\), then
\[
  \mathbb P\!\left(
    \|\Xi\|_{\rm op}
    \ge \rho\left(1+\sqrt{r/n}+u/\sqrt n\right)
  \right)
  \le e^{-u^2/2}.
\]

**Instantiated objects.** For each mode \(M\in\{A,B,C\}\), let
\(\Xi_M=M-\bar M\). Under
Assumption~\ref{assump:gaussian_smoothing},
\(G_M=(\sqrt n/\rho)\Xi_M\) has independent standard-normal entries, with
\(\rho=r^{-q}\).

**Assumption discharge and conclusion used.** The entry independence and
variance convention are exactly those of
Assumption~\ref{assump:gaussian_smoothing}. The result is applied with
\[
  u_r=\sqrt{2\log(3r^{20})},
\]
giving per-mode failure \((3r^{20})^{-1}\). No independence between the three
mode events is needed for the later union bound.

### Weyl singular-value perturbation inequality

**Restated result.** For matrices \(X,E\) of the same size,
\[
  \sigma_{\min}(X+E)\ge \sigma_{\min}(X)-\|E\|_{\rm op},
  \qquad
  \|X+E\|_{\rm op}\le \|X\|_{\rm op}+\|E\|_{\rm op}.
\]

**Instantiated objects.** Take \(X=\bar M\), \(E=\Xi_M\), and
\(X+E=M\) for each \(M\in\{A,B,C\}\).

**Assumption discharge and conclusion used.** Lemma~\ref{lem:step-001-base-conditioning}
supplies the singular bounds for \(\bar M\), and
Lemma~\ref{lem:step-001-gaussian-perturbation} supplies the operator bound for
\(\Xi_M\). The resulting bounds are exactly those defining
\(\mathcal E_{\rm cond}\).

## Local Derivation

### unit_001: lemma

**Lemma (conditioning of the deterministic base matrices).**
\label{lem:step-001-base-conditioning}
Under Assumption~\ref{assump:base_conditioning}, for every
\(\bar M\in\{\bar A,\bar B,\bar C\}\),
\[
  \sigma_{\min}(\bar M)\ge \kappa^{-2},
  \qquad
  \|\bar M\|_{\rm op}\le \kappa^2.
\]

**Proof / justification.** Write, exactly as in the setting,
\[
  \bar M=\bar M^\circ D_M,
  \qquad
  D_M=\operatorname{diag}(\|\bar m_1\|_2,\ldots,
  \|\bar m_r\|_2).
\]
Assumption~\ref{assump:base_conditioning} makes \(D_M\) invertible and gives
\[
  \sigma_{\min}(\bar M^\circ)\ge\kappa^{-1},\quad
  \|\bar M^\circ\|_{\rm op}\le\kappa,\quad
  \sigma_{\min}(D_M)\ge\kappa^{-1},\quad
  \|D_M\|_{\rm op}\le\kappa.
\]
For every \(x\in\mathbb R^r\),
\[
  \|\bar Mx\|_2
  =\|\bar M^\circ D_Mx\|_2
  \ge \sigma_{\min}(\bar M^\circ)\|D_Mx\|_2
  \ge \kappa^{-2}\|x\|_2,
\]
which proves the lower singular bound. Submultiplicativity gives
\[
  \|\bar M\|_{\rm op}
  \le \|\bar M^\circ\|_{\rm op}\|D_M\|_{\rm op}
  \le \kappa^2.
\]
This proves the lemma. \(\square\)

### unit_002: lemma

**Lemma (simultaneous Gaussian perturbation control).**
\label{lem:step-001-gaussian-perturbation}
Under Assumptions~\ref{assump:dimension} and
\ref{assump:gaussian_smoothing}, define
\[
  r_{0,\rm cond}(\kappa,q)
  :=\max\left\{3,\left\lceil(6\kappa^2)^{1/q}\right\rceil\right\}.
\]
Choose the dimension constant in Assumption~\ref{assump:dimension} so that
\(C(\kappa,q)\ge1\). Then, for every integer
\(r\ge r_{0,\rm cond}(\kappa,q)\) and every
\(n\ge C(\kappa,q)r^4\log r\), the event
\[
  \mathcal E_{\rm pert}
  :=\left\{
    \max_{M\in\{A,B,C\}}\|M-\bar M\|_{\rm op}
    \le \frac1{2\kappa^2}
  \right\}
\]
satisfies
\[
  \mathbb P(\mathcal E_{\rm pert})\ge1-r^{-20}.
\]
The probability is uniform over all deterministic base triples satisfying the
setting assumptions and over all such \(n\).

**Proof / justification.** Put \(\rho=r^{-q}\),
\(\Xi_M=M-\bar M\), and
\[
  u_r=\sqrt{2\log(3r^{20})}.
\]
The checked Gaussian operator-norm tail gives, for each of the three modes,
\[
  \mathbb P\!\left(
    \|\Xi_M\|_{\rm op}
    >\rho\left(1+\sqrt{r/n}+u_r/\sqrt n\right)
  \right)
  \le \frac1{3r^{20}}.                                      \tag{1}
\]
For \(r\ge3\),
\[
  u_r^2=2\log 3+40\log r
  \le42\log r
  \le r^4\log r
  \le n,                                                     \tag{2}
\]
where the penultimate inequality uses \(r^4\ge81>42\). Also
\(n\ge r^4\log r\ge r\). Hence
\[
  \sqrt{r/n}\le1,
  \qquad u_r/\sqrt n\le1.                                   \tag{3}
\]
Combining (1)--(3), outside a per-mode event of probability at most
\((3r^{20})^{-1}\),
\[
  \|\Xi_M\|_{\rm op}
  \le3\rho=3r^{-q}.
\]
The definition of \(r_{0,\rm cond}(\kappa,q)\) gives
\[
  3r^{-q}\le\frac1{2\kappa^2}.                              \tag{4}
\]
A union bound over \(M=A,B,C\), which does not require independence, yields
\[
  \mathbb P(\mathcal E_{\rm pert}^c)
  \le3\cdot\frac1{3r^{20}}=r^{-20}.                         \tag{5}
\]
The right sides of (1)--(5) do not depend on the deterministic base triple.
Increasing \(n\) only decreases \(\sqrt{r/n}\) and \(u_r/\sqrt n\), so the
argument has no upper-dimensional restriction. This proves the lemma.
\(\square\)

### unit_003: proposition

**Proposition (realized-factor conditioning).**
\label{prop:step-001-realized-conditioning}
Under Assumptions~\ref{assump:base_conditioning},
\ref{assump:dimension}, and \ref{assump:gaussian_smoothing}, let
\(\kappa_1=2\kappa^2\), choose \(C(\kappa,q)\ge1\), and suppose
\(r\ge r_{0,\rm cond}(\kappa,q)\). Then, simultaneously for
\(M\in\{A,B,C\}\), with probability at least \(1-r^{-20}\),
\[
  \sigma_{\min}(M)\ge\kappa_1^{-1},
  \qquad
  \|M\|_{\rm op}\le\kappa_1,
  \qquad
  \|M^\dagger\|_{\rm op}\le\kappa_1.
\]
In particular, the generated event \(\mathcal E_{\rm cond}\) holds with
probability at least \(1-r^{-20}\).

**Proof / justification.** On \(\mathcal E_{\rm pert}\), the checked Weyl
inequality and Lemma~\ref{lem:step-001-base-conditioning} give, for every mode,
\[
  \sigma_{\min}(M)
  \ge\kappa^{-2}-\frac1{2\kappa^2}
  =\frac1{2\kappa^2}
  =\kappa_1^{-1}.                                           \tag{6}
\]
The operator-norm triangle inequality gives
\[
  \|M\|_{\rm op}
  \le\kappa^2+\frac1{2\kappa^2}
  \le2\kappa^2
  =\kappa_1,                                                \tag{7}
\]
where the second inequality uses \(\kappa\ge1\). Equation (6) makes every
realized mode matrix full column rank and therefore
\[
  \|M^\dagger\|_{\rm op}
  =\sigma_{\min}(M)^{-1}
  \le\kappa_1.                                              \tag{8}
\]
Equations (6)--(7) are exactly the simultaneous conditions defining
\(\mathcal E_{\rm cond}\). Lemma~\ref{lem:step-001-gaussian-perturbation}
gives \(\mathbb P(\mathcal E_{\rm pert})\ge1-r^{-20}\), so the same lower
bound holds for \(\mathbb P(\mathcal E_{\rm cond})\). This proves the
proposition. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-001-base-conditioning} converts
Assumption~\ref{assump:base_conditioning} into the deterministic interval
\([\kappa^{-2},\kappa^2]\) for each base mode matrix.
Lemma~\ref{lem:step-001-gaussian-perturbation} uses the exact smoothing
variance \(r^{-2q}/n\), the explicit threshold
\(u_r=\sqrt{2\log(3r^{20})}\), and a union over the three modes to produce
\(\mathcal E_{\rm pert}\) with failure at most \(r^{-20}\), uniformly over
all admissible bases and all \(n\) above the lower dimension threshold.
Proposition~\ref{prop:step-001-realized-conditioning} then applies Weyl to
obtain, with \(\kappa_1=2\kappa^2\),
\[
  \sigma_{\min}(M)\ge\kappa_1^{-1},\qquad
  \|M\|_{\rm op}\le\kappa_1
  \quad(M=A,B,C),
\]
on an event of probability at least \(1-r^{-20}\). These are precisely the
conditions defining \(\mathcal E_{\rm cond}\), so the exact sketch-row claim
is proved. No initialization-geometry, tangent, trajectory, or downstream
claim is used or proved here.

## Explicit Rate Audit

- Exposed variables: \(n,r,\kappa,q\) and \(\rho=r^{-q}\). The rank \(k\)
  does not enter this step, so the conclusion is uniform over every allowed
  \(k\).
- Hidden constants may depend on: the overall theorem's dimension threshold
  may depend on \(\kappa,q\); this step only requires it to be at least \(1\).
- Hidden constants may not depend on: \(n,r,k\), the deterministic base
  triple, the initialization, time, or the GD horizon.
- Fixed quantities: \(\kappa\ge1\) and fixed \(q\ge4\) while \(r\) grows.
- Probability mode: high probability under the Gaussian smoothing, conditional
  on an arbitrary admissible deterministic base triple. Since
  \(\mathcal E_{\rm cond}\) depends only on smoothing, the same bound holds in
  the setting's joint smoothing-initialization probability space.
- Horizon mode: initialization-only, before any GD update.
- Norm mode: physical matrix operator norm and smallest singular value; the
  pseudoinverse consequence uses its operator norm.
- Admissibility conditions and auxiliary tolerances:
  \[
    r\ge r_{0,\rm cond}(\kappa,q)
    =\max\{3,\lceil(6\kappa^2)^{1/q}\rceil\},
    \qquad n\ge C(\kappa,q)r^4\log r,
    \qquad C(\kappa,q)\ge1.
  \]
- Term absorption or simplification inequalities:
  \[
    u_r^2\le r^4\log r\le n,
    \quad \sqrt{r/n}\le1,
    \quad 3r^{-q}\le(2\kappa^2)^{-1},
    \quad \kappa^2+(2\kappa^2)^{-1}\le2\kappa^2.
  \]
- Probability conversion:
  \[
    3\exp(-u_r^2/2)
    =3(3r^{20})^{-1}=r^{-20}.
  \]
- Contribution to any Rate Specialization Bridge: this step supplies one of
  the four \(r^{-20}\) initialization failure budgets used later; it performs
  no later union or public-rate conversion.
- Baseline-reduction check: at zero smoothing, \(M=\bar M\) and
  Lemma~\ref{lem:step-001-base-conditioning} gives the stronger interval
  \([\kappa^{-2},\kappa^2]\), which is contained in the exported
  \([\kappa_1^{-1},\kappa_1]\). Thus the deterministic-base specialization is
  preserved without a residual loss beyond the deliberately conservative
  common constant \(\kappa_1\).

## Blockers

None.

## Notation And Assumption Notes

- \(\kappa_1=2\kappa^2\) is `public-facing` and is defined directly in
  `setting.md`; it is the only new conditioning interface exported downstream.
- \(\Xi_M=M-\bar M\) is `appendix-local` and is the smoothing matrix already
  determined by the setting's column perturbations.
- \(G_M=(\sqrt n/\rho)\Xi_M\), \(u_r\), and
  \(r_{0,\rm cond}(\kappa,q)\) are `proof-local`. Their provenance is explicit:
  \(G_M\) is a rescaling of the setting's Gaussian matrix, \(u_r\) is chosen
  from the desired three-mode failure budget, and \(r_{0,\rm cond}\) is the
  displayed deterministic threshold proving (2)--(4).
- \(\mathcal E_{\rm pert}\) is `proof-local` and is a generated event proved
  by Lemma~\ref{lem:step-001-gaussian-perturbation}; it is not a primitive
  condition or a local conditional hypothesis.
- \(\mathcal E_{\rm cond}\) is `public-facing`, setting-defined, and generated
  by Proposition~\ref{prop:step-001-realized-conditioning}; it is not assumed.
- The bound \(\|M^\dagger\|_{\rm op}\le\kappa_1\) is an
  `appendix-local` immediate consequence of the exported singular lower bound,
  recorded because later coefficient maps require it. It introduces no new
  assumption.
- Constant provenance is fully explicit: the perturbation radius is
  \((2\kappa^2)^{-1}\), the Gaussian confidence parameter is
  \(u_r=\sqrt{2\log(3r^{20})}\), the dimension multiplier needed by this step
  is \(1\), and the large-\(r\) threshold is the displayed
  \(r_{0,\rm cond}(\kappa,q)\).
- Boundary cases: \(q=4\), \(\kappa=1\), the worst allowed base singular
  margins, the zero-perturbation specialization, the smallest admitted
  \(r=r_{0,\rm cond}\), and arbitrarily large \(n\) are all covered by the
  displayed inequalities. Values \(r<3\) are outside the chosen asymptotic
  threshold, as permitted by Assumption~\ref{assump:dimension}. Nonzero base
  columns are guaranteed by Assumption~\ref{assump:base_conditioning}, so the
  normalization matrix \(D_M\) is never singular.
- The accepted `global_proof.md` was consulted only after confirming that its
  paired `global_proof_review.md` has status `ACCEPTED`. Its B01 diagnostic
  suggested the perturbation/Weyl organization used for planning. It was not
  used as proof evidence, a cited result, an assumption source, or authority to
  alter the target claim.
