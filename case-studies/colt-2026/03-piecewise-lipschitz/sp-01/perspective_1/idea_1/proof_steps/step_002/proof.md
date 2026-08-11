# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each \(\mu\in\mathcal D\) and
  \(I\in\mathscr I(\Theta)\), integrate the conditional density over
  \(J_I(\beta)\), use the Tonelli/tower property with the possibly
  unbounded random cap \(K_\mu(\beta)\), and prove
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq L_{d,R,\Theta}|I|\int K_\mu(\beta)\,\pi_\mu(d\beta)
  \leq L_{d,R,\Theta}|I|\bar\kappa_{\mathcal D}.
  \]
  Then take both defining suprema to obtain
  \(C_{\mathcal D}\leq
  L_{d,R,\Theta}\bar\kappa_{\mathcal D}\).
- Dependencies: `step_001`.
- Assumptions used: Primitive
  `assump:averaged-intercept-density`; the deterministic slab from
  accepted `step_001` is a derived dependency, not an assumption.
- Technical challenge: Establish joint measurability, handle
  fiberwise essential-supremum versions and null fibers, allow
  \(K_\mu\) to be unbounded, and preserve the order in which the
  fiber cap is integrated and the class supremum is taken.
- Intended proof tool or cited result: Regular conditional-density
  disintegration and Tonelli's theorem for a nonnegative integrand,
  restated in the current notation.
- Output target: The general all-law, all-positive-length-interval
  theorem
  \(C_{\mathcal D}\leq
  \bar\kappa_{\mathcal D}L_{d,R,\Theta}\).
- Rate objective: R1 with exact coefficient one, no hidden constant,
  and no replacement of the averaged cap by a pointwise cap.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: the basic setup in `setting.md`: an integer
  \(d\geq1\), \(R>0\), compact \(\Theta\subseteq\mathbb R\), a
  nonempty class \(\mathcal D\) of Borel laws supported on
  \([-R,R]^d\), and an interval \(I\in\mathscr I(\Theta)\) with
  \(|I|>0\). The setting definitions of \(\alpha=(\alpha_0,\beta)\),
  \(\phi_\alpha\), \(Z_\alpha\), \(\pi_\mu\),
  \(L_{d,R,\Theta}\), \(K_\mu\), \(\bar\kappa_{\mathcal D}\), and
  \(C_{\mathcal D}\) are retained unchanged.
- Primitive technical condition:
  Assumption~\ref{assump:averaged-intercept-density}. For every
  \(\mu\in\mathcal D\), it supplies a jointly measurable regular
  conditional density \(f_\mu(a_0\mid\beta)\), extended by zero
  outside \([-R,R]\), a measurable fiber cap
  \(K_\mu(\beta)=\operatorname*{ess\,sup}_{a_0\in\mathbb R}
  f_\mu(a_0\mid\beta)\), and the finite averaged envelope
  \[
  \bar\kappa_{\mathcal D}
  =\sup_{\nu\in\mathcal D}
  \int K_\nu(\beta)\,\pi_\nu(d\beta)<\infty.
  \]
- Accepted dependency artifacts:
  `proof_steps/step_001/proof.md`, unit attempt 1, status `COMPLETE`,
  SHA-256
  `39939893fe0a36d394d3ee7fd66cc7a74355bc178585141a13a0b87913ca4bfa`,
  paired with `proof_steps/step_001/review.md`, whose status is
  `ACCEPTED` and whose smallest retry target is `None`.
- Derived invariants supplied by the accepted dependency:
  Proposition~\ref{prop:step-001-root-event-borel} proves that
  \(\{Z_\alpha\cap I\neq\varnothing\}\) is Borel for every allowed
  endpoint convention. Proposition~\ref{prop:step-001-midpoint-slab}
  supplies a Borel interval-valued map \(J_I(\beta)\), a jointly Borel
  slab \(\{(a_0,\beta):a_0\in J_I(\beta)\}\), the exact length
  \(|J_I(\beta)|=L_{d,R,\Theta}|I|\), and the pointwise inclusion
  \[
  \{Z_\alpha\cap I\neq\varnothing\}
  \subseteq\{\alpha_0\in J_I(\beta)\}.
  \]
- Local conditional hypotheses: None.

Neither `assump:random-intercept-witness` nor a density, independence
condition, or absolute-continuity condition for \(\pi_\mu\) is used.
No statement from `global_proof.md` is an allowed assumption or
dependency.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:averaged-intercept-density} and accepted Propositions~\ref{prop:step-001-root-event-borel} and~\ref{prop:step-001-midpoint-slab}, for every \(\mu\in\mathcal D\) and \(I\in\mathscr I(\Theta)\), the midpoint-slab integrand is jointly measurable and conditional-density disintegration bounds the root probability by its nonnegative double integral. | Legally transfers the Borel root event to integration over the actual random intercept slab. |
| `unit_002` | lemma | Under Assumption~\ref{assump:averaged-intercept-density}, accepted Proposition~\ref{prop:step-001-midpoint-slab}, and Lemma~\ref{lem:step-002-slab-disintegration}, for every \(\mu\in\mathcal D\) and \(I\in\mathscr I(\Theta)\), the slab's conditional mass is at most \(L_{d,R,\Theta}|I|K_\mu(\beta)\) for \(\pi_\mu\)-almost every \(\beta\), and its double integral is at most \(L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu\). | Handles essential-supremum versions, unbounded caps, null fibers, zero extension, and arbitrary conditioning marginals without a pointwise cap. |
| `unit_003` | proposition | Under Assumption~\ref{assump:averaged-intercept-density}, accepted Propositions~\ref{prop:step-001-root-event-borel} and~\ref{prop:step-001-midpoint-slab}, and Lemmas~\ref{lem:step-002-slab-disintegration} and~\ref{lem:step-002-averaged-slice-cap}, the exact per-law bound holds for every \(\mu\in\mathcal D\) and \(I\in\mathscr I(\Theta)\), and hence \(C_{\mathcal D}\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D}<\infty\). | Performs the exact class and interval quantifier closure and exports R1. |

Atomic step = no. Jointly measurable disintegration, fiberwise
essential-supremum control, and the all-law/all-interval supremum
closure are distinct nontrivial obligations and are proved separately.

## Cited Result Applications

No external paper result is used.

1. **Accepted dependency: Borel root-hitting event.**
   Proposition~\ref{prop:step-001-root-event-borel}, accepted in
   `step_001`, states that, under the primitive basic setup, for every
   positive-length interval \(I\subseteq\Theta\) of any endpoint type,
   \[
   \mathcal E_I
   :=\{\alpha\in[-R,R]^d:Z_\alpha\cap I\neq\varnothing\}
   \]
   is Borel. The current step uses only this measurability conclusion.
   Its primitive conditions are exactly the current basic setup.

2. **Accepted dependency: measurable midpoint intercept slab.**
   Proposition~\ref{prop:step-001-midpoint-slab}, accepted in
   `step_001`, states in current notation that, for every
   \(I\in\mathscr I(\Theta)\),
   \[
   J_I(\beta)=
   \left[-c_I(\beta)-\frac{L_{d,R,\Theta}|I|}{2},
         -c_I(\beta)+\frac{L_{d,R,\Theta}|I|}{2}\right]
   \]
   has measurable endpoints, its graph slab is Borel, its length is
   exactly \(L_{d,R,\Theta}|I|\), and
   \[
   \mathcal E_I\subseteq
   \mathcal S_I:=\{(a_0,\beta):a_0\in J_I(\beta)\}.
   \]
   The derivative envelope and all endpoint and multiplicity cases were
   discharged in the accepted dependency. The current step consumes
   only the stated Borel inclusion and exact-width interface.

3. **Regular conditional-density disintegration.** Let
   \((\alpha_0,\beta)\) have law \(\mu\), let \(\pi_\mu\) be the
   \(\beta\)-marginal, and suppose a jointly measurable function
   \(f_\mu(a_0\mid\beta)\) is a Lebesgue density of a regular
   conditional law of \(\alpha_0\) given \(\beta\) for
   \(\pi_\mu\)-almost every \(\beta\). Then, for every nonnegative
   Borel function \(h\),
   \[
   \int h(\alpha_0,\beta)\,\mu(d\alpha_0,d\beta)
   =\int\!\int_{\mathbb R}
   h(a_0,\beta)f_\mu(a_0\mid\beta)\,da_0\,\pi_\mu(d\beta).
   \]
   Here Assumption~\ref{assump:averaged-intercept-density} supplies the
   regular conditional density and joint measurability. In
   Lemma~\ref{lem:step-002-slab-disintegration}, the instantiated
   function is \(h(a_0,\beta)=\mathbf1\{a_0\in J_I(\beta)\}\), whose
   Borel measurability follows from the accepted slab proposition. The
   zero extension of \(f_\mu\) makes the formula literal over
   \(\mathbb R\), even if \(J_I(\beta)\) extends outside
   \([-R,R]\).

4. **Tonelli's theorem for nonnegative functions.** If \(H\) is a
   nonnegative jointly measurable function on the product of two
   sigma-finite measure spaces, then its product integral equals either
   iterated integral, with values in \([0,\infty]\), and each inner
   integral is measurable in the outer variable. It is applied with
   Lebesgue measure in \(a_0\), the probability measure \(\pi_\mu\) in
   \(\beta\), and
   \[
   H(a_0,\beta)
   =\mathbf1\{a_0\in J_I(\beta)\}
    f_\mu(a_0\mid\beta).
   \]
   Both factors are nonnegative and jointly measurable by the accepted
   dependency and Assumption~\ref{assump:averaged-intercept-density}.
   No boundedness of \(K_\mu\) is required for Tonelli.

5. **Essential-supremum mass bound.** If \(u:\mathbb R\to[0,\infty]\)
   is measurable and \(M=\operatorname*{ess\,sup}_{a\in\mathbb R}u(a)\)
   is finite, then \(u\leq M\) Lebesgue-almost everywhere and, for every
   Borel set \(A\) of finite Lebesgue measure,
   \[
   \int_A u(a)\,da\leq M|A|.
   \]
   In Lemma~\ref{lem:step-002-averaged-slice-cap},
   \(u(a_0)=f_\mu(a_0\mid\beta)\),
   \(M=K_\mu(\beta)\), and \(A=J_I(\beta)\). The lemma proves directly
   from the finite averaged envelope that \(M<\infty\) on a
   \(\pi_\mu\)-full set before applying this fact.

6. **Local-result application map.**
   Lemma~\ref{lem:step-002-slab-disintegration} supplies the measurable
   double-integral upper bound under the primitive density assumption
   and the accepted dependency. Lemma~\ref{lem:step-002-averaged-slice-cap}
   supplies the exact integrated cap bound under the same allowed
   inputs. Proposition~\ref{prop:step-002-averaged-root-hitting} uses
   those two named conclusions, the definition of
   \(\bar\kappa_{\mathcal D}\), and the defining suprema for
   \(C_{\mathcal D}\). No local result is used under an unstated
   condition.

## Local Derivation

### unit_001: lemma

**Lemma (Measurable conditional integration over the midpoint slab).**
\(\label{lem:step-002-slab-disintegration}\)
Under Assumption~\ref{assump:averaged-intercept-density} and accepted
Propositions~\ref{prop:step-001-root-event-borel}
and~\ref{prop:step-001-midpoint-slab}, fix any
\(\mu\in\mathcal D\) and \(I\in\mathscr I(\Theta)\). Then the root
event and the midpoint slab are Borel, the function
\[
(a_0,\beta)\longmapsto
\mathbf1\{a_0\in J_I(\beta)\}f_\mu(a_0\mid\beta)
\]
is nonnegative and jointly measurable, and
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq
\int\!\int_{\mathbb R}
\mathbf1\{a_0\in J_I(\beta)\}
f_\mu(a_0\mid\beta)\,da_0\,\pi_\mu(d\beta).
\tag{1}
\]

**Proof / justification.** The accepted Borel-event proposition makes
\(\mathcal E_I=\{Z_\alpha\cap I\neq\varnothing\}\) measurable in the
coefficient cube. The accepted midpoint-slab proposition makes
\(\mathcal S_I=\{(a_0,\beta):a_0\in J_I(\beta)\}\) Borel and gives the
pointwise inclusion \(\mathcal E_I\subseteq\mathcal S_I\). Therefore
\[
\Pr_\mu(\mathcal E_I)\leq\Pr_\mu(\mathcal S_I).
\tag{2}
\]

The indicator of \(\mathcal S_I\) is jointly Borel. Multiplying it by
the jointly measurable nonnegative density from
Assumption~\ref{assump:averaged-intercept-density} gives the asserted
nonnegative jointly measurable integrand. Apply the restated regular
conditional-density disintegration formula to this indicator. Equality
of the density representation is required only for
\(\pi_\mu\)-almost every fiber, which is exactly the scope of a regular
conditional law; fibers outside that full-measure set contribute zero
to the outer integral. Thus
\[
\Pr_\mu(\mathcal S_I)
=\int\!\int_{\mathbb R}
\mathbf1\{a_0\in J_I(\beta)\}
f_\mu(a_0\mid\beta)\,da_0\,\pi_\mu(d\beta).
\tag{3}
\]
The conditional intercept is supported on \([-R,R]\), and the setting
extends its density by zero outside that interval. Consequently (3)
remains exact even when the accepted interval \(J_I(\beta)\) is not
contained in \([-R,R]\). Combining (2) and (3) proves (1). Tonelli's
theorem also shows that the inner integral in (1) is a measurable
extended-valued function of \(\beta\). \(\square\)

### unit_002: lemma

**Lemma (Averaged slice-cap control without a pointwise cap).**
\(\label{lem:step-002-averaged-slice-cap}\)
Under Assumption~\ref{assump:averaged-intercept-density}, accepted
Proposition~\ref{prop:step-001-midpoint-slab}, and
Lemma~\ref{lem:step-002-slab-disintegration}, fix any
\(\mu\in\mathcal D\) and \(I\in\mathscr I(\Theta)\). Then, for
\(\pi_\mu\)-almost every \(\beta\),
\[
\int_{\mathbb R}
\mathbf1\{a_0\in J_I(\beta)\}
f_\mu(a_0\mid\beta)\,da_0
\leq K_\mu(\beta)L_{d,R,\Theta}|I|,
\tag{4}
\]
and
\[
\int\!\int_{\mathbb R}
\mathbf1\{a_0\in J_I(\beta)\}
f_\mu(a_0\mid\beta)\,da_0\,\pi_\mu(d\beta)
\leq L_{d,R,\Theta}|I|
\int K_\mu(\beta)\,\pi_\mu(d\beta)<\infty.
\tag{5}
\]

**Proof / justification.** For the fixed \(\mu\), the definition of
the class envelope gives
\[
0\leq\int K_\mu(\beta)\,\pi_\mu(d\beta)
\leq\bar\kappa_{\mathcal D}<\infty.
\tag{6}
\]
Because \(K_\mu\) is a nonnegative measurable extended-valued
function, (6) implies \(K_\mu(\beta)<\infty\) for
\(\pi_\mu\)-almost every \(\beta\). Explicitly, define the
proof-local set
\(N_\mu^\infty=\{\beta:K_\mu(\beta)=\infty\}\). Then, for every
integer \(n\geq1\),
\[
\int K_\mu\,d\pi_\mu\geq n\pi_\mu(N_\mu^\infty),
\]
so finiteness forces \(\pi_\mu(N_\mu^\infty)=0\).

Intersect this full-measure set with the full-measure set of fibers on
which \(f_\mu(\cdot\mid\beta)\) is the conditional density and
\(K_\mu(\beta)\) is its Lebesgue essential supremum. Call the
intersection \(G_\mu\). For each \(\beta\in G_\mu\),
\[
f_\mu(a_0\mid\beta)\leq K_\mu(\beta)
\quad\text{for Lebesgue-almost every }a_0.
\tag{7}
\]
The accepted dependency gives
\(|J_I(\beta)|=L_{d,R,\Theta}|I|<\infty\). Hence the restated
essential-supremum mass bound and (7) give
\[
\begin{aligned}
\int_{\mathbb R}
\mathbf1\{a_0\in J_I(\beta)\}
f_\mu(a_0\mid\beta)\,da_0
&=\int_{J_I(\beta)}f_\mu(a_0\mid\beta)\,da_0\\
&\leq K_\mu(\beta)|J_I(\beta)|\\
&=K_\mu(\beta)L_{d,R,\Theta}|I|.
\end{aligned}
\tag{8}
\]
This proves (4) on a \(\pi_\mu\)-full set. Values of the density or cap
on the null complement of \(G_\mu\), including a value
\(K_\mu=\infty\), do not contribute to the outer \(\pi_\mu\)-integral.

By Lemma~\ref{lem:step-002-slab-disintegration} and the checked Tonelli
application, the left-hand inner integral in (8) is measurable and
nonnegative. Integrating (8) with respect to the arbitrary Borel
probability \(\pi_\mu\) yields (5). This operation uses no density of
\(\pi_\mu\); in particular, a discrete, singular, or dependently
coordinated higher-coefficient marginal is covered without change.
Equation (6) makes the right-hand side finite. At no point is
\(K_\mu(\beta)\) replaced by an essential supremum over \(\beta\).
\(\square\)

### unit_003: proposition

**Proposition (Uniform root hitting under an averaged intercept envelope).**
\(\label{prop:step-002-averaged-root-hitting}\)
Under Assumption~\ref{assump:averaged-intercept-density}, accepted
Propositions~\ref{prop:step-001-root-event-borel}
and~\ref{prop:step-001-midpoint-slab}, and
Lemmas~\ref{lem:step-002-slab-disintegration}
and~\ref{lem:step-002-averaged-slice-cap}, for every
\(\mu\in\mathcal D\) and every \(I\in\mathscr I(\Theta)\),
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq L_{d,R,\Theta}|I|
\int K_\mu(\beta)\,\pi_\mu(d\beta)
\leq L_{d,R,\Theta}|I|\bar\kappa_{\mathcal D}.
\tag{9}
\]
Consequently,
\[
C_{\mathcal D}
\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D}<\infty.
\tag{10}
\]

**Proof / justification.** Lemma~\ref{lem:step-002-slab-disintegration}
bounds the root probability by the nonnegative double integral over the
accepted midpoint slab. Lemma~\ref{lem:step-002-averaged-slice-cap}
bounds that double integral by the first right-hand side of (9). For the
fixed law \(\mu\), the definition of the averaged class envelope gives
\[
\int K_\mu(\beta)\,\pi_\mu(d\beta)
\leq
\sup_{\nu\in\mathcal D}
\int K_\nu(\beta)\,\pi_\nu(d\beta)
=\bar\kappa_{\mathcal D},
\tag{11}
\]
which proves the second inequality in (9). Thus the fiber cap is
integrated for the fixed law before the class supremum in (11) is
applied.

Since \(|I|>0\), divide (9) by \(|I|\) to obtain, for each fixed
\(\mu\in\mathcal D\),
\[
\sup_{I\in\mathscr I(\Theta)}
\frac{\Pr_\mu(Z_\alpha\cap I\neq\varnothing)}{|I|}
\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D}.
\tag{12}
\]
Taking the outer supremum over \(\mu\in\mathcal D\) and using the
setting definition of \(C_{\mathcal D}\) gives (10). Finiteness follows
from the accepted finite derivative envelope and the primitive finite
averaged cap.

When \(d=1\), \(\beta\) is the empty tuple and \(\pi_\mu\) is the point
mass on its one-point space. The accepted dependency has
\(L_{1,R,\Theta}=1\) and a constant interval \(J_I\) of length \(|I|\).
All outer integrals above then reduce to evaluation at that one point,
so (9) is exactly the ordinary one-dimensional density bound. No
density or coordinate structure for a higher-coefficient marginal is
silently introduced. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-root-event-borel} makes the
actual root-hitting event measurable, and accepted
Proposition~\ref{prop:step-001-midpoint-slab} places that event inside
the jointly Borel intercept slab of exact width
\(L_{d,R,\Theta}|I|\). Under
Assumption~\ref{assump:averaged-intercept-density},
Lemma~\ref{lem:step-002-slab-disintegration} applies the checked
conditional-density disintegration to that actual slab.
Lemma~\ref{lem:step-002-averaged-slice-cap} then uses the fiberwise
essential supremum only after restricting to a full-measure set of
finite caps, and integrates the resulting charge
\(L_{d,R,\Theta}|I|K_\mu(\beta)\) exactly once against
\(\pi_\mu\).

Proposition~\ref{prop:step-002-averaged-root-hitting} composes these
named results to prove the exact per-law inequality, applies
\(\int K_\mu d\pi_\mu\leq\bar\kappa_{\mathcal D}\) only after that
integration, divides by the strictly positive interval length, and
takes the two defining suprema. It therefore proves every clause of the
binding `step_002` target with coefficient one. Null fibers, possibly
unbounded caps, zero extension, arbitrary singular or discrete
\(\pi_\mu\), and \(d=1\) have all been discharged without adding an
assumption or changing the target.

## Explicit Rate Audit

- Exposed variables: \(L_{d,R,\Theta}\), \(|I|\), the per-law quantity
  \(\int K_\mu d\pi_\mu\), \(\bar\kappa_{\mathcal D}\), and
  \(C_{\mathcal D}\). Through the accepted dependency,
  \[
  L_{d,R,\Theta}
  \leq dB^{d-1}+R\sum_{k=1}^{d-1}kB^{k-1},
  \qquad
  B=\max\{1,\sup_{\theta\in\Theta}|\theta|\}.
  \]
- Hidden constants may depend on: None; the coefficient multiplying
  \(L_{d,R,\Theta}|I|\int K_\mu d\pi_\mu\) is exactly one.
- Hidden constants may not depend on: \(\mu,I,d,R,\Theta,B\),
  \(K_\mu\), \(\pi_\mu\), \(\bar\kappa_{\mathcal D}\), or any
  unreported distributional parameter.
- Fixed quantities: \(d,R,\Theta,\mathcal D\), hence
  \(L_{d,R,\Theta}\) and \(\bar\kappa_{\mathcal D}\), are fixed before
  \(\mu\) and \(I\) vary. The proof first integrates for each fixed
  law and only then takes the class supremum.
- Probability mode: Exact deterministic inequalities between exact
  probabilities under each \(\mu\). There is no confidence parameter,
  exceptional good event, expectation bound, or probability-mode
  conversion.
- Horizon mode: Static and uniform over all laws and all
  positive-length intervals in the fixed setting. There is no temporal
  or iterative horizon.
- Norm mode: Ordinary absolute value for polynomial evaluation and the
  derivative envelope, one-dimensional Lebesgue length for \(I\) and
  \(J_I\), and the Lebesgue essential supremum in the conditional
  intercept coordinate for \(K_\mu\).
- Admissibility conditions and auxiliary tolerances: Exactly the basic
  setting, Assumption~\ref{assump:averaged-intercept-density}, and the
  accepted `step_001` slab interface. No auxiliary tolerance, truncation,
  pointwise cap, beta density, or independence condition is introduced.
- Term absorption or simplification inequalities: None. The displayed
  proof retains the exact chain
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq L_{d,R,\Theta}|I|\int K_\mu d\pi_\mu
  \leq L_{d,R,\Theta}|I|\bar\kappa_{\mathcal D}.
  \]
  The radius-to-width factor was already proved exactly by the accepted
  dependency, so no factor two is gained or lost here.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the
  unsimplified R1 per-law and class interfaces to `step_003`,
  `step_005`, `step_007`, and final assembly. It performs no public
  simplification.
- Baseline-reduction check: The bounded-joint-density comparison is
  assigned to `step_007`, not assumed here. This step preserves its
  accepted path by retaining the exact per-law integral
  \(\int K_\mu d\pi_\mu\), the exact coefficient one, and the full
  \(d,R,B\) dependence of \(L_{d,R,\Theta}\). The boundary
  specialization \(d=1\) is exact, with \(L=1\) and slab width
  \(|I|\); no conservative loss or weaker conditional surrogate is
  introduced.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(\phi_\alpha\), \(Z_\alpha\),
  \(\mathscr I(\Theta)\), \(L_{d,R,\Theta}\), \(K_\mu\),
  \(\pi_\mu\), \(\bar\kappa_{\mathcal D}\), and
  \(C_{\mathcal D}\) retain exactly their meanings from `setting.md`.
- Accepted dependency objects: \(J_I(\beta)\), its measurable center,
  the Borel root event, the Borel slab, and the exact length
  \(L_{d,R,\Theta}|I|\) are accepted-derived outputs of
  Proposition~\ref{prop:step-001-midpoint-slab} and
  Proposition~\ref{prop:step-001-root-event-borel}. They are translated
  into the current setting notation before use and are not reproved or
  strengthened here.
- `proof-local`: \(\mathcal E_I\) and \(\mathcal S_I\) abbreviate the
  setting root event and accepted slab event in
  Lemma~\ref{lem:step-002-slab-disintegration}. They introduce no new
  condition and are not exported.
- `proof-local`: \(G_\mu\) is the intersection of the full-measure
  density/essential-supremum fibers with the full-measure set
  \(\{K_\mu<\infty\}\). Its full measure is proved in
  Lemma~\ref{lem:step-002-averaged-slice-cap}; it is not a theorem-facing
  event or assumption.
- `proof-local`: \(N_\mu^\infty=\{K_\mu=\infty\}\) and the dummy
  integer \(n\geq1\) are used only to derive
  \(\pi_\mu(N_\mu^\infty)=0\) from the primitive finite integral. They
  are not exported.
- Checked-result notation: \(h\) in the disintegration statement,
  \(H\) in the Tonelli statement, and \(u,M,A\) in the
  essential-supremum statement are scoped dummy objects used only to
  restate those standard facts. They are not branch notation and are
  not exported.
- `public-facing`: No new helper symbol is exported. The only exported
  interface is the named conclusion of
  Proposition~\ref{prop:step-002-averaged-root-hitting}: the per-law
  bound and \(C_{\mathcal D}\leq
  L_{d,R,\Theta}\bar\kappa_{\mathcal D}\).
- Constant provenance: \(L_{d,R,\Theta}\) is setting-defined and its
  finite explicit bound is supplied by the accepted dependency;
  \(|I|\), \(\bar\kappa_{\mathcal D}\), and the exact coefficient one
  are setting-defined or visible in the target. No new constant,
  radius, threshold, margin, or bounded quantity is introduced.
- Assumption provenance: the conditional density, its joint
  measurability, the measurable cap, and the finite averaged envelope
  are primitive conditions in
  Assumption~\ref{assump:averaged-intercept-density}. Root-event
  measurability and the slab properties are accepted derived outputs.
  Finiteness of \(K_\mu\) on almost every fiber is proved locally from
  the primitive averaged bound. There are no local conditional
  hypotheses, generated invariants, recurrence conditions, or hidden
  support assumptions.
- Null-fiber and unbounded-cap scope: The proof never requires
  \(\operatorname*{ess\,sup}_\beta K_\mu(\beta)<\infty\).
  Conditional-density or cap versions may fail or be infinite on a
  \(\pi_\mu\)-null set, which contributes zero to the outer integral.
  Arbitrarily large finite caps are charged exactly through
  \(\int K_\mu d\pi_\mu\).
- Marginal and support scope: Tonelli is taken with respect to the
  arbitrary Borel probability \(\pi_\mu\); no Lebesgue density or
  coordinate independence of \(\beta\) is used. Extending
  \(f_\mu\) by zero outside \([-R,R]\) makes integration over a slab
  extending beyond the intercept support exact rather than an added
  truncation argument.
- Diagnostic-boundary confirmation: `global_proof.md` was consulted
  only after its current paired `global_proof_review.md` was verified
  `ACCEPTED` and all recorded hashes matched. Its step-relevant planning
  advice was to isolate the measurable random slab, treat null fibers
  explicitly, and integrate \(K_\mu\) before taking the class supremum.
  Every such point is proved independently above from the primitive
  assumption, accepted dependency, and checked standard measure facts.
  The diagnostic is not evidence, a cited result, an assumption source,
  or authority to alter the target claim.
