# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Assemble the exact theorem and every specialization;
  explicitly preserve its sufficient-only, `material_partial` scope. As
  a baseline reduction, prove
  
  \[
  h\leq\kappa_{\mathrm{joint}}
  \quad\Longrightarrow\quad
  \bar\kappa\leq
  \kappa_{\mathrm{joint}}(2R)^{d-1},
  \]
  
  and recover the source monic constant when \(B=1\). State that
  necessity, source part (b), polynomial rates, simplicity, and
  transversality remain unresolved or unclaimed.
- Dependencies: `step_002`, `step_003`, `step_004`, `step_005`, and
  `step_006`.
- Assumptions used: The derived outputs of all five accepted
  dependencies. The bounded-joint-density premise is optional and is
  used only in the comparison result, never in the main sufficient
  theorem or its random-intercept and heteroscedastic specializations.
- Technical challenge: Preserve every quantifier, constant, boundary
  convention, conditioning object, and limitation while avoiding a
  pointwise slice-cap substitution, a converse, or an overstatement of
  what kinds of singular laws lie beyond the cited affine-latent class.
- Intended proof tool or cited result: Exact dependency assembly; a
  direct construction of the conditional density \(f=h/g\) from a
  bounded joint density; Tonelli's theorem; measurable fiberwise
  essential suprema; and the exact finite-sum identity
  \(\sum_{k=1}^{d-1}k=d(d-1)/2\).
- Output target: The exact formalized `material_partial` theorem and a
  separately scoped bounded-joint-density baseline comparison.
- Rate objective: R1, R2, R3, and the declared baseline-reduction
  obligation, all with exact constants and no public simplification
  beyond displayed identities.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive basic setup: Fix an integer \(d\geq1\), a radius \(R>0\),
  a compact one-dimensional parameter domain
  \(\Theta\subseteq\mathbb R\), and a
  nonempty class \(\mathcal D\) of Borel laws on \([-R,R]^d\). All
  setting-defined objects retain their original meanings, including
  \(\alpha=(\alpha_0,\beta)\), \(\phi_\alpha\), \(Z_\alpha\),
  \(\mathscr I(\Theta)\), \(B\), \(L_{d,R,\Theta}\), \(K_\mu\),
  \(\bar\kappa_{\mathcal D}\), and \(C_{\mathcal D}\). When
  \(d=1\), \(\beta\) is the empty tuple and its marginal is the point
  mass on the one-point space.
- Primitive condition for the general clause:
  Assumption~\ref{assump:averaged-intercept-density}. This is the sole
  technical assumption of the general sufficient theorem.
- Primitive condition for the optional constructive clause:
  Assumption~\ref{assump:random-intercept-witness}. This condition is
  used only for \(\mathcal D_{\mathrm{RI}}\); it is a sufficient
  construction that derives the averaged-density interface and is not
  imposed on a general class \(\mathcal D\).
- Primitive data for the explicit witness: arbitrary \(d\geq3\),
  \(R>0\), and \(q\in(0,1)\), together with the setting-defined
  independent uniform variables \(Z,U\), scale \(\rho_q\), map
  \(\beta_q\), coefficient vector \(\alpha^{(q)}\), and law \(\mu_q\).
  Neither stable-id technical assumption is imposed on this singleton;
  the accepted dependencies derive the needed density interface.
- Accepted dependency pair for `step_002`:
  `proof_steps/step_002/proof.md`, status `COMPLETE`, SHA-256
  `f3f9aa19a82936c133877ad71896f58fd0cf71dd19af8fc60c1ce5437db84228`,
  paired with `proof_steps/step_002/review.md`, SHA-256
  `ede67ead7f343bee9c1874f2dceb0cbd1b60008718bea43f2f7433cdb9b19924`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Accepted dependency pair for `step_003`:
  `proof_steps/step_003/proof.md`, status `COMPLETE`, SHA-256
  `2302d712770cbe9f62efad7528b6823b2b2e020ea61231f974293769e16e78af`,
  paired with `proof_steps/step_003/review.md`, SHA-256
  `2b2c8aba90dc461988cd36f1306e04ca2d3af9355aad670163fd7e3d5eeea334`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Accepted dependency pair for `step_004`:
  `proof_steps/step_004/proof.md`, status `COMPLETE`, SHA-256
  `1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a`,
  paired with `proof_steps/step_004/review.md`, SHA-256
  `d1ec21173c373c8771589f2ccc178b269eb5a180c93c345680722f86c7af5a03`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Accepted dependency pair for `step_005`:
  `proof_steps/step_005/proof.md`, status `COMPLETE`, SHA-256
  `3fe2b99d9f4a1c6082aefcae17d7d3fed9878854d8418ff05b6695cb0951fca2`,
  paired with `proof_steps/step_005/review.md`, SHA-256
  `5b0ac3964f7f1448457419ab51ecf36f054f634cb43216a3fa73293c51b2e416`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Accepted dependency pair for `step_006`:
  `proof_steps/step_006/proof.md`, status `COMPLETE`, SHA-256
  `b8152474825779fa2d95fb9db30c4f107ff76ee777338c5065612c14e6136bea`,
  paired with `proof_steps/step_006/review.md`, SHA-256
  `647f8c64df0f0eb3e6a9815007c193ce9c50b65693065d65cb66f32bfca41757`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Derived interfaces supplied by accepted dependencies:
  Proposition~\ref{prop:step-002-averaged-root-hitting};
  Propositions~\ref{prop:step-003-random-intercept-envelope},
  \ref{prop:step-003-random-intercept-root-hitting}, and
  \ref{prop:step-003-fixed-width-certificate};
  Propositions~\ref{prop:step-004-exact-support},
  \ref{prop:step-004-cube-width}, and
  \ref{prop:step-004-conditional-cap};
  Lemmas~\ref{lem:step-005-positive-mass-cap-blowup} and
  \ref{lem:step-005-exact-averaged-cap}, and
  Proposition~\ref{prop:step-005-singleton-root-hitting}; and
  Propositions~\ref{prop:step-006-affine-hull},
  \ref{prop:step-006-null-volume}, and
  \ref{prop:step-006-nonmembership}.
- Derived invariants supplied by dependencies: The general R1 bound;
  the complete random-intercept density, cap, support, averaged-budget,
  root-hitting, and fixed-width interfaces; the exact witness support,
  cube membership, almost-sure positive width, and nonzero-fiber cap;
  the witness's infinite essential cap, exact finite averaged cap, and
  singleton root bound; and its exact affine-hull, within-hull nullity,
  and cited-class nonmembership certificate.
- Comparison-local primitive hypothesis: Units 002 and 003 below may
  assume that every law in a separately declared comparison class has
  a Borel joint Lebesgue density bounded almost everywhere by one common
  \(\kappa_{\mathrm{joint}}<\infty\). This is a static, checkable
  premise of those conditional comparison results only. It is not used
  by Proposition~\ref{prop:step-007-assembled-sufficient-theorem} and
  is not added to either setting assumption.
- Local conditional hypotheses: None in the main theorem assembly.
  The optional joint-density premise is confined to the two comparison
  units just described and is discharged nowhere because the baseline
  statement is intentionally conditional on it.

The accepted `global_proof.md`, SHA-256
`b8d7e0ea77be6ddd86ffc69a41bd175bd7ad91c7b3bb65b330e4b8370e2115c4`,
was read only with its paired `global_proof_review.md`, SHA-256
`bd91a3a3f2501ce0e40f17dd7674d30e515790a828d7bd5586e417f45d79976b`,
whose status is `ACCEPTED`. Its G7 organization was planning context
only. Neither diagnostic artifact is proof evidence, a cited result,
an assumption source, or authority to change the target.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under the basic setting and Assumption~\ref{assump:averaged-intercept-density}, accepted Proposition~\ref{prop:step-002-averaged-root-hitting} gives the exact general theorem. Under the separate Assumption~\ref{assump:random-intercept-witness}, accepted Propositions~\ref{prop:step-003-random-intercept-envelope}, \ref{prop:step-003-random-intercept-root-hitting}, and \ref{prop:step-003-fixed-width-certificate} give every random-intercept and fixed-width clause. Under the explicit witness data, accepted Propositions~\ref{prop:step-004-exact-support}, \ref{prop:step-004-cube-width}, \ref{prop:step-004-conditional-cap}, \ref{prop:step-005-singleton-root-hitting}, \ref{prop:step-006-affine-hull}, \ref{prop:step-006-null-volume}, and \ref{prop:step-006-nonmembership}, together with accepted Lemmas~\ref{lem:step-005-positive-mass-cap-blowup} and \ref{lem:step-005-exact-averaged-cap}, give every support, conditional-density, cap, rate, and narrowly stated affine-baseline clause. | Exports the exact one-way `material_partial` theorem without the comparison-only joint-density premise. |
| `unit_002` | lemma | Under the basic cube convention, if a nonempty comparison class has Borel joint densities bounded by a common \(\kappa_{\mathrm{joint}}\), then each law admits the setting's measurable conditional-density and cap versions and \(\bar\kappa\leq\kappa_{\mathrm{joint}}(2R)^{d-1}\), including the empty-tuple case \(d=1\). | Proves the optional joint-density-to-averaged-cap bridge and discharges all conditional-version and zero/infinite marginal-density issues. |
| `unit_003` | proposition | Under the comparison-local premise of Lemma~\ref{lem:step-007-joint-to-averaged} and accepted Proposition~\ref{prop:step-002-averaged-root-hitting}, the comparison class obeys the ambient joint-density root-hitting bound; when \(B=1\), it has the exact monic scale \(\kappa_{\mathrm{joint}}(2R)^{d-1}[d+Rd(d-1)/2]\). | Completes baseline invariance while keeping the premise separate from the main theorem. |

Atomic step = no. Exact theorem assembly, construction of a measurable
conditional-density bridge from a joint density, and the monic
baseline specialization are independent nontrivial obligations.

## Cited Result Applications

No external paper result is invoked directly in this step. The cited
affine-latent source has already been fully checked in the proof of
accepted Proposition~\ref{prop:step-006-nonmembership}; the current
proof consumes only that proposition and does not re-use the source as
authority.

1. **Accepted general averaged-envelope theorem.**
   Proposition~\ref{prop:step-002-averaged-root-hitting} states, under
   Assumption~\ref{assump:averaged-intercept-density}, that for every
   \(\mu\in\mathcal D\) and every
   \(I\in\mathscr I(\Theta)\),
   
   \[
   \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
   \leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
   \leq L_{d,R,\Theta}|I|\bar\kappa_{\mathcal D},
   \]
   
   and
   \(C_{\mathcal D}\leq
   L_{d,R,\Theta}\bar\kappa_{\mathcal D}<\infty\). It is
   simultaneous in every law and every positive-length interval and
   includes the \(d=1\) empty-tuple case.
   Proposition~\ref{prop:step-007-assembled-sufficient-theorem} applies
   exactly this conclusion; Proposition~\ref{prop:step-007-joint-density-recovery}
   applies it only after Lemma~\ref{lem:step-007-joint-to-averaged}
   proves its hypotheses for the optional comparison class.

2. **Accepted random-intercept interfaces.**
   Proposition~\ref{prop:step-003-random-intercept-envelope} proves
   from Assumption~\ref{assump:random-intercept-witness} that every
   member is cube-supported and, for \(\pi_\mu\)-almost every \(\beta\),
   
   \[
   f_\mu(a_0\mid\beta)
   =\frac{\mathbf1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}}
          {2\rho_\mu(\beta)},
   \qquad
   K_\mu(\beta)=\frac1{2\rho_\mu(\beta)},
   \]
   
   with
   \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\)
   and
   \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}
   =M_{\mathrm{RI}}/2\). Proposition~\ref{prop:step-003-random-intercept-root-hitting}
   gives the corresponding per-law, per-interval and class bounds.
   Proposition~\ref{prop:step-003-fixed-width-certificate} gives
   \(K_\mu=1/(2r_\mu)\), the per-law bound, and the exact class
   statement under the declared uniform reciprocal-width condition.
   These propositions use arbitrary Borel \(\pi_\mu\), including
   singular, discrete, and dependent marginals.

3. **Accepted exact witness support and conditional cap.**
   Proposition~\ref{prop:step-004-exact-support} identifies
   
   \[
   \operatorname{supp}(\mu_q)
   =\{(a_0,z,z^2/R,0,\ldots,0):
       |z|\leq R/2,\ |a_0|\leq\rho_q(z)\}.
   \]
   
   Proposition~\ref{prop:step-004-cube-width} proves that this support
   lies in \([-R,R]^d\) and that \(\rho_q(Z)>0\) almost surely.
   Proposition~\ref{prop:step-004-conditional-cap} constructs the
   actual conditional-density version and proves, for every
   \(a_0\in\mathbb R\) and \(0<|z|\leq R/2\),
   
   \[
   f_{\mu_q}(a_0\mid\beta_q(z))
   =\frac{\mathbf1\{|a_0|\leq\rho_q(z)\}}{2\rho_q(z)},
   \qquad
   K_{\mu_q}(\beta_q(z))
   =\frac1{R(2|z|/R)^q}.
   \]
   
   The collapsed \(z=0\) support fiber is marginal-null and is handled
   by a genuine fallback density, not by division by zero.

4. **Accepted quantitative witness interfaces.**
   Lemma~\ref{lem:step-005-positive-mass-cap-blowup} proves
   
   \[
   \operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}
   K_{\mu_q}(\beta)=\infty.
   \]
   
   Lemma~\ref{lem:step-005-exact-averaged-cap} proves
   
   \[
   \int K_{\mu_q}\,d\pi_{\mu_q}
   =\frac1{R(1-q)},
   \]
   
   together with the exact cutoff residual. Proposition~\ref{prop:step-005-singleton-root-hitting}
   derives Assumption~\ref{assump:averaged-intercept-density} for the
   singleton and proves, for every allowed interval,
   
   \[
   \Pr_{\mu_q}(Z_\alpha\cap I\neq\varnothing)
   \leq\frac{L_{d,R,\Theta}|I|}{R(1-q)},
   \qquad
   C_{\{\mu_q\}}
   \leq\frac{L_{d,R,\Theta}}{R(1-q)}.
   \]

5. **Accepted affine-latent exclusion interfaces.**
   Proposition~\ref{prop:step-006-affine-hull} proves that the witness
   support has affine dimension exactly three.
   Proposition~\ref{prop:step-006-null-volume} proves that it has zero
   induced three-dimensional Hausdorff volume in that affine hull.
   Proposition~\ref{prop:step-006-nonmembership} combines those facts
   with the fully checked source convention and proves that \(\mu_q\)
   is not a full-column-rank affine pushforward of a bounded-support,
   bounded-Lebesgue-density latent probability in the cited baseline
   sense. It expressly makes no claim about a broader class with
   singular latent laws or rank-deficient maps.

6. **Tonelli and the conditional-kernel identity for the joint-density
   bridge.**
   For a nonnegative Borel function on a product of Euclidean spaces,
   Tonelli's theorem makes each nonnegative section integral measurable
   and permits either integration order. If a Borel joint density is
   \(h(a_0,\beta)\), its marginal density is
   \(g(\beta)=\int h(a_0,\beta)\,da_0\). On
   \(\{0<g<\infty\}\), the ratio \(h/g\) is a conditional density;
   on its complement, any measurable probability-density fallback
   gives the same regular conditional kernel because both the zero and
   infinite marginal-density fibers have zero marginal probability.
   Lemma~\ref{lem:step-007-joint-to-averaged} verifies this kernel
   identity directly on Borel rectangles, so no unverified
   conditional-density theorem is used.

7. **Local-result application map.**
   Proposition~\ref{prop:step-007-assembled-sufficient-theorem} uses
   only the five accepted dependency interfaces. Lemma~\ref{lem:step-007-joint-to-averaged}
   independently proves the optional joint-density bridge.
   Proposition~\ref{prop:step-007-joint-density-recovery} then combines
   that lemma with accepted Proposition~\ref{prop:step-002-averaged-root-hitting}
   and the setting derivative envelope. No local result is used under
   an unstated premise.

## Local Derivation

### unit_001: proposition

**Proposition (Assembled averaged-intercept sufficient theorem).**
\(\label{prop:step-007-assembled-sufficient-theorem}\)
Under the basic setting, the derivative envelope is finite and obeys

\[
L_{d,R,\Theta}
\leq dB^{d-1}
  +R\sum_{k=1}^{d-1}kB^{k-1}<\infty,
\]

with the sum interpreted as zero when \(d=1\). Under
Assumption~\ref{assump:averaged-intercept-density}, accepted
Proposition~\ref{prop:step-002-averaged-root-hitting} implies,
simultaneously for every \(\mu\in\mathcal D\) and every
\(I\in\mathscr I(\Theta)\),

\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq L_{d,R,\Theta}|I|
      \int K_\mu(\beta)\,\pi_\mu(d\beta)
\leq \bar\kappa_{\mathcal D}L_{d,R,\Theta}|I|,
\tag{1}
\]

and hence

\[
C_{\mathcal D}
\leq\bar\kappa_{\mathcal D}L_{d,R,\Theta}<\infty.
\tag{2}
\]

Separately, under
Assumption~\ref{assump:random-intercept-witness}, accepted
Propositions~\ref{prop:step-003-random-intercept-envelope} and
\ref{prop:step-003-random-intercept-root-hitting} imply, for every
\(\mu\in\mathcal D_{\mathrm{RI}}\), for
\(\pi_\mu\)-almost every \(\beta\), and for every
\(I\in\mathscr I(\Theta)\),

\[
f_\mu(a_0\mid\beta)
=\frac{\mathbf1\{|a_0-G_\mu(\beta)|
                  \leq\rho_\mu(\beta)\}}
       {2\rho_\mu(\beta)},
\qquad
K_\mu(\beta)=\frac1{2\rho_\mu(\beta)},
\tag{3}
\]

\[
\bar\kappa_{\mathcal D_{\mathrm{RI}}}
=\frac12M_{\mathrm{RI}},
\qquad
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq\frac{L_{d,R,\Theta}|I|}{2}
      \int\rho_\mu^{-1}\,d\pi_\mu,
\tag{4}
\]

and

\[
C_{\mathcal D_{\mathrm{RI}}}
\leq\frac12L_{d,R,\Theta}M_{\mathrm{RI}}<\infty.
\tag{5}
\]

If a member has fixed width
\(\rho_\mu(\beta)=r_\mu>0\) almost surely, accepted
Proposition~\ref{prop:step-003-fixed-width-certificate} gives

\[
K_\mu(\beta)=\frac1{2r_\mu}\quad\pi_\mu\text{-almost surely},
\qquad
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq\frac{L_{d,R,\Theta}}{2r_\mu}|I|.
\tag{6}
\]

For every nonempty class \(\mathcal F\) of such fixed-width members
obeying the support condition and
\(\sup_{\mu\in\mathcal F}r_\mu^{-1}<\infty\), the same accepted
proposition gives

\[
\bar\kappa_{\mathcal F}
=\frac12\sup_{\mu\in\mathcal F}r_\mu^{-1},
\qquad
C_{\mathcal F}
\leq\frac{L_{d,R,\Theta}}2
      \sup_{\mu\in\mathcal F}r_\mu^{-1}<\infty.
\tag{7}
\]

Finally, for every \(d\geq3\), \(R>0\), and \(q\in(0,1)\),
accepted Propositions~\ref{prop:step-004-exact-support},
\ref{prop:step-004-cube-width}, and
\ref{prop:step-004-conditional-cap}, accepted
Lemmas~\ref{lem:step-005-positive-mass-cap-blowup} and
\ref{lem:step-005-exact-averaged-cap}, accepted
Proposition~\ref{prop:step-005-singleton-root-hitting}, and accepted
Propositions~\ref{prop:step-006-affine-hull},
\ref{prop:step-006-null-volume}, and
\ref{prop:step-006-nonmembership} imply all of the following:

\[
\operatorname{supp}(\mu_q)
=\left\{(a_0,z,z^2/R,0,\ldots,0):
|z|\leq R/2,\ |a_0|\leq\rho_q(z)\right\}
\subseteq[-R,R]^d,
\tag{8}
\]

\[
\Pr(\rho_q(Z)>0)=1.
\]

For every \(a_0\in\mathbb R\) and \(0<|z|\leq R/2\), one valid
conditional-density version satisfies

\[
f_{\mu_q}(a_0\mid\beta_q(z))
=\frac{\mathbf1\{|a_0|\leq\rho_q(z)\}}{2\rho_q(z)},
\qquad
K_{\mu_q}(\beta_q(z))
=\frac1{R(2|z|/R)^q}.
\tag{9}
\]

\[
\operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}
K_{\mu_q}(\beta)=\infty,
\qquad
\int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
=\frac1{R(1-q)},
\tag{10}
\]

and, for every \(I\in\mathscr I(\Theta)\),

\[
\Pr_{\mu_q}(Z_\alpha\cap I\neq\varnothing)
\leq\frac{L_{d,R,\Theta}|I|}{R(1-q)},
\qquad
C_{\{\mu_q\}}
\leq\frac{L_{d,R,\Theta}}{R(1-q)}.
\tag{11}
\]

The support in (8) has affine hull dimension exactly three and zero
induced three-dimensional Hausdorff volume in that hull. Consequently,
\(\mu_q\) is not an affine image of a bounded-support,
bounded-Lebesgue-density latent probability under a full-column-rank
affine map in the precisely cited affine-latent baseline convention.
This conclusion does not extend by assertion to rank-deficient maps or
singular latent laws.

Equations (1)--(11) and the structural comparison are one-way
sufficient conclusions. They assert no necessity, converse, indexed
uniform polynomial dependence on \((d,R)\), root simplicity,
root separation, or transversality, and they do not supply source part
(b), a learner, or an online guarantee.

**Proof / justification.** The first displayed inequality is the
finite deterministic derivative-envelope estimate in the basic
setting; compactness of \(\Theta\), \(B<\infty\), and the finite sum
make its right-hand side finite, including the empty-sum case
\(d=1\). Equation (1) and the quantifier closure (2) are exactly the
conclusion of accepted
Proposition~\ref{prop:step-002-averaged-root-hitting}; no further
supremum or mode conversion is performed here.

Under the separately scoped random-intercept assumption, accepted
Proposition~\ref{prop:step-003-random-intercept-envelope} proves (3),
the exact averaged identity in (4), cube support, and every component
of Assumption~\ref{assump:averaged-intercept-density} for
\(\mathcal D_{\mathrm{RI}}\). Accepted
Proposition~\ref{prop:step-003-random-intercept-root-hitting} then
proves the per-law inequality in (4) and (5). Accepted
Proposition~\ref{prop:step-003-fixed-width-certificate} proves
(6)--(7), including the class-uniform reciprocal-width condition. Thus
no density or independence condition on the higher-coordinate marginal
is added during assembly.

For the explicit witness, accepted
Proposition~\ref{prop:step-004-exact-support} gives the equality in
(8), accepted Proposition~\ref{prop:step-004-cube-width} gives its
cube containment and the displayed almost-sure positivity statement,
and accepted Proposition~\ref{prop:step-004-conditional-cap} gives
both the density and exact cap identities in (9) for the selected
measurable conditional version.
Accepted Lemma~\ref{lem:step-005-positive-mass-cap-blowup} gives the
first statement in (10), while accepted
Lemma~\ref{lem:step-005-exact-averaged-cap} gives the exact integral in
(10). Accepted Proposition~\ref{prop:step-005-singleton-root-hitting}
then gives (11). The null fiber \(z=0\) remains in topological support
but has zero conditioning-marginal mass, exactly as required by the
accepted interfaces.

Accepted Propositions~\ref{prop:step-006-affine-hull} and
\ref{prop:step-006-null-volume} give the two independent structural
facts. Accepted Proposition~\ref{prop:step-006-nonmembership} applies
them only to the cited baseline's full-column-rank, latent-Lebesgue-
density convention. Hence the last structural conclusion neither uses
curvature alone nor overstates which broader singular affine models are
excluded.

The final paragraph is a scope boundary, not an extra mathematical
inference: every displayed implication is oriented from a
coefficient-side sufficient condition to root hitting, and none of the
accepted dependencies exports a reverse implication, polynomial-family
bound, or root-regularity conclusion. This proves exactly the assembled
target without adding the comparison premise used below. \(\square\)

### unit_002: lemma

**Lemma (A bounded joint density implies the averaged intercept cap).**
\(\label{lem:step-007-joint-to-averaged}\)
Under the basic cube convention, let \(\mathcal A\) be a nonempty
class of Borel probability laws on \([-R,R]^d\). Suppose there is one
constant \(\kappa_{\mathrm{joint}}\in(0,\infty)\) such that every
\(\nu\in\mathcal A\) has a Borel density
\(h_\nu(a_0,\beta)\) with respect to \(d\)-dimensional Lebesgue
measure, extended by zero outside the cube, and

\[
0\leq h_\nu(a_0,\beta)
\leq\kappa_{\mathrm{joint}}
\quad\text{for Lebesgue-almost every }(a_0,\beta).
\tag{12}
\]

Then \(\mathcal A\) satisfies
Assumption~\ref{assump:averaged-intercept-density}, and one may choose
measurable conditional-density and cap versions such that, for every
\(\nu\in\mathcal A\),

\[
\int K_\nu(\beta)\,\pi_\nu(d\beta)
\leq\kappa_{\mathrm{joint}}(2R)^{d-1}.
\tag{13}
\]

Consequently,

\[
\bar\kappa_{\mathcal A}
\leq\kappa_{\mathrm{joint}}(2R)^{d-1}.
\tag{14}
\]

For \(d=1\), the right side is interpreted using
\((2R)^0=1\), and (13)--(14) remain valid.

**Proof / justification.** First suppose \(d\geq2\) and fix
\(\nu\in\mathcal A\). Define the higher-coordinate marginal density

\[
g_\nu(\beta)
:=\int_{\mathbb R}h_\nu(a_0,\beta)\,da_0.
\tag{15}
\]

Tonelli's theorem makes \(g_\nu\) Borel measurable and gives
\(\pi_\nu(d\beta)=g_\nu(\beta)\,d\beta\). Because the joint density
is supported on the cube and obeys (12),
\(0\leq g_\nu\leq2R\kappa_{\mathrm{joint}}\) almost everywhere.
Moreover, \(\int g_\nu(\beta)d\beta=1\). Hence the measurable set

\[
G_\nu:=\{\beta:0<g_\nu(\beta)<\infty\}
\tag{15a}
\]

has full \(\pi_\nu\)-measure: \(\{g_\nu=0\}\) has zero marginal
mass, while \(\{g_\nu=\infty\}\) is Lebesgue-null by integrability
and therefore also has zero marginal mass.

Define the sectionwise essential supremum

\[
H_\nu(\beta)
:=\operatorname*{ess\,sup}_{a_0\in\mathbb R}
  h_\nu(a_0,\beta).
\tag{16}
\]

This has a measurable extended-valued version. Indeed, for every
rational \(t\geq0\), Tonelli makes

\[
m_t(\beta)
:=\int_{-R}^{R}
\mathbf1\{h_\nu(a_0,\beta)>t\}\,da_0
\tag{17}
\]

measurable, and
\(\{H_\nu>t\}=\{m_t>0\}\). These rational superlevel sets determine
a measurable version of \(H_\nu\). Fubini applied to (12) gives

\[
H_\nu(\beta)\leq\kappa_{\mathrm{joint}}
\quad\text{for Lebesgue-almost every }\beta.
\tag{18}
\]

Now define a jointly measurable density version by

\[
f_\nu(a_0\mid\beta)
=
\begin{cases}
h_\nu(a_0,\beta)/g_\nu(\beta),&\beta\in G_\nu,\\[4pt]
\mathbf1\{|a_0|\leq R\}/(2R),&\beta\notin G_\nu.
\end{cases}
\tag{19}
\]

There is no division on a zero or infinite marginal-density fiber.
Each line in (19) integrates to one on its applicable fiber: on
\(G_\nu\) this follows from (15), and on \(G_\nu^c\) it follows from
\(R>0\).
For Borel sets \(A\subseteq\mathbb R\) and
\(D\subseteq\mathbb R^{d-1}\), Tonelli and
\(\pi_\nu(d\beta)=g_\nu(\beta)d\beta\) give

\[
\begin{aligned}
\int_D\int_A f_\nu(a_0\mid\beta)\,da_0\,
             \pi_\nu(d\beta)
&=\int_{D\cap G_\nu}\int_A
  h_\nu(a_0,\beta)\,da_0\,d\beta\\
&=\nu\{\alpha_0\in A,\ \beta\in D\}.
\end{aligned}
\tag{20}
\]

The omitted set \(D\cap G_\nu^c\) has zero \(\pi_\nu\)-mass and
zero joint-law mass. Thus (19) is a jointly measurable regular
conditional density of the actual intercept given the actual higher
coordinates, extended by zero outside \([-R,R]\).

Its measurable essential-supremum version is

\[
K_\nu(\beta)
=
\begin{cases}
H_\nu(\beta)/g_\nu(\beta),&\beta\in G_\nu,\\[4pt]
1/(2R),&\beta\notin G_\nu.
\end{cases}
\tag{21}
\]

On every fiber in \(G_\nu\), multiplication by the finite positive
constant \(g_\nu(\beta)\) commutes with the Lebesgue essential
supremum. Therefore, for Lebesgue-almost every \(\beta\in G_\nu\),

\[
g_\nu(\beta)K_\nu(\beta)
=H_\nu(\beta)
\leq\kappa_{\mathrm{joint}}.
\tag{22}
\]

The complement of \(G_\nu\) is marginal-null, so its finite fallback
cap contributes nothing. Integrating (22) over the higher-coordinate
cube yields

\[
\begin{aligned}
\int K_\nu(\beta)\,\pi_\nu(d\beta)
&=\int_{G_\nu\cap[-R,R]^{d-1}}
  g_\nu(\beta)K_\nu(\beta)\,d\beta\\
&\leq\kappa_{\mathrm{joint}}
  \operatorname{Leb}^{d-1}([-R,R]^{d-1})\\
&=\kappa_{\mathrm{joint}}(2R)^{d-1}.
\end{aligned}
\tag{23}
\]

This proves (13) for \(d\geq2\), including joint measurability of the
conditional density, measurability of its cap, and finiteness of the
cap integral.

When \(d=1\), the conditioning space is the one-point empty-tuple
space. The actual conditional density is simply the one-dimensional
joint density \(h_\nu(a_0)\), and

\[
K_\nu
=\operatorname*{ess\,sup}_{a_0}h_\nu(a_0)
\leq\kappa_{\mathrm{joint}}
=\kappa_{\mathrm{joint}}(2R)^0.
\tag{24}
\]

The outer cap integral is evaluation at that one point, so (13) holds
again. Taking the supremum of (13) over
\(\nu\in\mathcal A\) proves (14). The density and cap constructions
above verify every component of
Assumption~\ref{assump:averaged-intercept-density} for the comparison
class. No joint-density premise has been imposed on the class in
Proposition~\ref{prop:step-007-assembled-sufficient-theorem}.
\(\square\)

### unit_003: proposition

**Proposition (Recovery of the monic bounded-joint-density baseline).**
\(\label{prop:step-007-joint-density-recovery}\)
Under the basic setting, the comparison-local hypotheses of
Lemma~\ref{lem:step-007-joint-to-averaged}, that lemma, and accepted
Proposition~\ref{prop:step-002-averaged-root-hitting}, for every
\(\nu\in\mathcal A\) and every
\(I\in\mathscr I(\Theta)\),

\[
\Pr_\nu(Z_\alpha\cap I\neq\varnothing)
\leq\kappa_{\mathrm{joint}}(2R)^{d-1}
      L_{d,R,\Theta}|I|,
\tag{25}
\]

and

\[
C_{\mathcal A}
\leq\kappa_{\mathrm{joint}}(2R)^{d-1}
      L_{d,R,\Theta}.
\tag{26}
\]

If \(B=1\), then

\[
C_{\mathcal A}
\leq
\kappa_{\mathrm{joint}}(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right).
\tag{27}
\]

The same formula includes \(d=1\), for which
\((2R)^0=1\) and the bracket in (27) is one.

**Proof / justification.** Lemma~\ref{lem:step-007-joint-to-averaged}
constructs the setting-required conditional-density and cap versions
for \(\mathcal A\), verifies
Assumption~\ref{assump:averaged-intercept-density}, and proves

\[
\bar\kappa_{\mathcal A}
\leq\kappa_{\mathrm{joint}}(2R)^{d-1}.
\tag{28}
\]

Accepted Proposition~\ref{prop:step-002-averaged-root-hitting} may
therefore be applied to this comparison class. Combining its per-law
and class conclusions with (28) gives (25)--(26), without using the
joint-density premise anywhere in the proof of
Proposition~\ref{prop:step-007-assembled-sufficient-theorem}.

The setting derivative envelope satisfies

\[
L_{d,R,\Theta}
\leq dB^{d-1}
  +R\sum_{k=1}^{d-1}kB^{k-1}.
\tag{29}
\]

Under \(B=1\), every power in (29) equals one and

\[
\sum_{k=1}^{d-1}k=\frac{d(d-1)}2,
\tag{30}
\]

with both sides zero when \(d=1\). Substitution of (29)--(30) into
(26) proves (27). Every factor is exact: the intercept conditioning
leaves the higher-coordinate cube volume \((2R)^{d-1}\), and the
monic derivative contributes
\(d+Rd(d-1)/2\). Thus (27) recovers the source monic ambient-volume
constant at \(B=1\), rather than a weakened or asymptotic surrogate.

This result is conditional only on the explicitly additional
comparison premise. In its absence, the general averaged-envelope
theorem and both constructive specializations remain exactly as stated
in Proposition~\ref{prop:step-007-assembled-sufficient-theorem}.
\(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-007-assembled-sufficient-theorem}
(`unit_001`, audit handle)
performs the finite dependency assembly. Accepted
Proposition~\ref{prop:step-002-averaged-root-hitting} supplies the
general all-law, all-positive-length-interval theorem. Accepted
Propositions~\ref{prop:step-003-random-intercept-envelope},
\ref{prop:step-003-random-intercept-root-hitting}, and
\ref{prop:step-003-fixed-width-certificate} supply the conditional
density, exact cap, averaged budget, random-intercept root bound, and
fixed-width clauses without a higher-marginal density. Accepted
Propositions~\ref{prop:step-004-exact-support},
\ref{prop:step-004-cube-width}, and
\ref{prop:step-004-conditional-cap},
Lemmas~\ref{lem:step-005-positive-mass-cap-blowup} and
\ref{lem:step-005-exact-averaged-cap}, and
Proposition~\ref{prop:step-005-singleton-root-hitting} supply every
exact support, positivity, conditional-density, pointwise-cap,
averaged-cap, and singleton-bound clause. Accepted
Propositions~\ref{prop:step-006-affine-hull},
\ref{prop:step-006-null-volume}, and
\ref{prop:step-006-nonmembership} supply both structural facts and the
precisely limited affine-latent nonmembership conclusion. Their
quantifiers and probability modes are unchanged in the assembled
proposition.

Lemma~\ref{lem:step-007-joint-to-averaged}
(`unit_002`, audit handle) proves the
comparison bridge independently. It constructs an actual measurable
conditional density, treats zero marginal-density fibers with a
genuine fallback, proves measurable section caps, and derives
\(g_\nu K_\nu\leq\kappa_{\mathrm{joint}}\) before integrating over
the exact higher-coordinate cube.
Proposition~\ref{prop:step-007-joint-density-recovery}
(`unit_003`, audit handle) invokes the accepted R1 theorem only after
that hypothesis discharge, then evaluates the derivative sum exactly
at \(B=1\).

The joint-density premise appears only in Lemma~\ref{lem:step-007-joint-to-averaged}
and Proposition~\ref{prop:step-007-joint-density-recovery}; it is not
an assumption of Proposition~\ref{prop:step-007-assembled-sufficient-theorem}.
The main proposition is expressly a sufficient-only `material_partial`
result. Necessity, converse, source part (b), indexed uniform polynomial
rates, root simplicity, separation, and transversality are neither
derived nor claimed. These three paper-ready results jointly discharge
every clause of the exact accepted `step_007` row.

## Explicit Rate Audit

- Exposed variables for R1: \(d,R,\Theta,B\),
  \(L_{d,R,\Theta}\), \(|I|\), the per-law cap integral,
  \(\bar\kappa_{\mathcal D}\), and \(C_{\mathcal D}\), with exact
  coefficient one.
- Exposed variables for R2: \(\rho_\mu(\beta)\), \(M_{\mathrm{RI}}\),
  fixed widths \(r_\mu\), \(L_{d,R,\Theta}\), and the relevant
  root-hitting constants, with exact factor \(1/2\).
- Exposed variables for R3: \(d\geq3\), \(R>0\),
  \(q\in(0,1)\), \(K_{\mu_q}\), \(L_{d,R,\Theta}\), and
  \(C_{\{\mu_q\}}\), with exact factor \(1/[R(1-q)]\).
- Exposed variables for the optional baseline: the common
  \(\kappa_{\mathrm{joint}}\), \(d,R,B\), cube volume
  \((2R)^{d-1}\), \(L_{d,R,\Theta}\), interval length, and
  \(C_{\mathcal A}\). The \(B=1\) specialization is exactly (27).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: any law, interval, conditioning
  marginal, \(d,R,\Theta,B,q\), width, cap version, latent dimension,
  or unreported distributional quantity.
- Fixed quantities and quantifier order: The setting fixes
  \(d,R,\Theta\) and the relevant class before laws and intervals vary.
  Every per-law cap is integrated before the class supremum. The witness
  fixes \(d,R,q,\Theta\) before its singleton calculation. The optional
  baseline fixes one common \(\kappa_{\mathrm{joint}}\) before taking
  its class supremum.
- Probability mode: Exact regular-conditional identities on
  conditioning-marginal full-measure sets, almost-sure witness
  positivity, an exact marginal essential supremum and integral, and
  deterministic inequalities between exact probabilities. There is no
  confidence parameter, good event, expectation replacement, or
  probability-mode conversion.
- Horizon mode: Static and uniform over all laws and all
  positive-length intervals in each fixed class. There is no temporal,
  iterative, stopping-time, or all-time scope.
- Norm and measure mode: Ordinary absolute value for polynomial values
  and derivatives, one-dimensional Lebesgue length for intervals,
  Lebesgue essential supremum in the intercept coordinate, integration
  against the actual higher-coordinate marginal, coordinatewise cube
  support, and induced three-dimensional Hausdorff volume only in the
  affine-baseline comparison.
- Admissibility conditions and auxiliary tolerances: Exactly the two
  stable-id assumptions in their separately stated scopes, the explicit
  witness ranges, the accepted dependency interfaces, and the optional
  bounded-joint-density comparison premise. No auxiliary tolerance
  remains in this step.
- Term absorption or simplification inequalities: No term is dropped
  or absorbed. The complete comparison chain is
  
  \[
  g_\nu K_\nu\leq\kappa_{\mathrm{joint}},
  \quad
  \int K_\nu d\pi_\nu
  \leq\kappa_{\mathrm{joint}}(2R)^{d-1},
  \quad
  C_{\mathcal A}
  \leq\kappa_{\mathrm{joint}}(2R)^{d-1}L_{d,R,\Theta}.
  \]
  
  At \(B=1\), (29)--(30) give the exact displayed monic bracket.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: Unit 001 exports the
  unsimplified R1, R2, and R3 conclusions. Units 002--003 form the
  complete optional baseline bridge: conditional construction,
  technical-condition verification, exact volume integration, and
  final monic specialization. There is no public asymptotic
  simplification.
- Baseline-reduction check: The joint-density baseline is recovered
  with \(\bar\kappa\leq
  \kappa_{\mathrm{joint}}(2R)^{d-1}\) and, at \(B=1\), the exact
  scale
  \(\kappa_{\mathrm{joint}}(2R)^{d-1}
  [d+Rd(d-1)/2]\). The \(d=1\) exponent-zero and empty-sum
  conventions are exact. The cited affine-latent theorem remains
  unchanged on its own class; the witness is proved outside that
  precisely delimited class. Neither baseline is weakened.
- Polynomial-rate scope: No indexed uniform polynomial dependence is
  asserted. Dependence through \(B^{d-1}\),
  \(\bar\kappa_{\mathcal D}\), \(M_{\mathrm{RI}}\), and
  \(1/[R(1-q)]\) stays explicit.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(\alpha,\beta,\phi_\alpha,Z_\alpha\),
  \(\mathscr I(\Theta),B,L_{d,R,\Theta},K_\mu,\pi_\mu\),
  \(\bar\kappa,C,G_\mu,\rho_\mu,M_{\mathrm{RI}},r_\mu,Z,U\),
  \(\rho_q,\beta_q,\mu_q\), and all coefficient classes retain their
  setting meanings.
- Accepted dependency objects: Every theorem-style result named in the
  allowed-input and citation sections is an accepted-derived interface
  from the current proof/review pair recorded above. No dependency
  notation is imported without translation into the setting notation.
- `public-facing`: Proposition~\ref{prop:step-007-assembled-sufficient-theorem}
  exports only the theorem quantities already present in `setting.md`.
  It introduces no public helper dictionary.
- `public-facing`, comparison-only: \(\mathcal A\) denotes an arbitrary
  nonempty bounded-joint-density comparison class and
  \(\kappa_{\mathrm{joint}}\) is its explicitly additional common cap.
  They occur only in Lemma~\ref{lem:step-007-joint-to-averaged} and
  Proposition~\ref{prop:step-007-joint-density-recovery}; they are not
  exported as assumptions of the new theorem.
- `appendix-local`: \(h_\nu\) denotes a chosen Borel joint-density
  version under the comparison premise. It is a condition stated
  explicitly in the comparison lemma, not a setting assumption.
- `proof-local`: \(g_\nu\) is the higher-coordinate marginal density,
  \(H_\nu\) is the sectionwise essential supremum of the joint density,
  and \(m_t\) is its superlevel-section measure. Their measurability and
  bounds are proved in Lemma~\ref{lem:step-007-joint-to-averaged}; none
  is exported.
- `proof-local`: The fallback density
  \(\mathbf1\{|a_0|\leq R\}/(2R)\) is used only on
  \(G_\nu^c=\{g_\nu=0\}\cup\{g_\nu=\infty\}\). Its denominator is
  valid because \(R>0\), and that complement has zero
  higher-coordinate marginal probability.
- Constant provenance: \(L_{d,R,\Theta},B,R,d,q,M_{\mathrm{RI}}\), and
  each \(r_\mu\) are setting-defined or explicit theorem quantities.
  \(\kappa_{\mathrm{joint}}\) is the explicitly additional baseline
  cap. The cube volume \((2R)^{d-1}\) is derived in (23), and the
  monic bracket is derived in (29)--(30). No free constant, threshold,
  radius, or margin is introduced.
- Assumption provenance for the main theorem: The general density and
  averaged-cap interface is primitive only through
  Assumption~\ref{assump:averaged-intercept-density}. The random-
  intercept structure is primitive only through
  Assumption~\ref{assump:random-intercept-witness}; its conditional
  density, cap, cube support, and averaged envelope are accepted-derived
  facts. All witness support, conditional-law, integrability, and
  geometry facts are accepted-derived outputs, not primitive
  conditions.
- Assumption provenance for the baseline: The joint-density cap is a
  local conditional premise of the optional comparison. Its marginal,
  conditional density, cap measurability, averaged envelope, and root
  bound are derived in units 002--003. It is never used to prove unit
  001.
- Generated-object provenance: No event, recurrence, stability,
  boundedness, or support condition is newly assumed in assembly. Cube
  support and all witness generated objects have accepted producers.
  The proof is static and has no invariant or accumulation interface.
- Boundary scope: The general and random-intercept clauses include
  \(d=1\). The witness is exactly for \(d\geq3\), \(R>0\), and
  \(q\in(0,1)\), with the supported but marginal-null fiber \(z=0\)
  preserved. The baseline bridge handles \(d=1\), zero marginal-density
  fibers, infinite marginal-density fibers, and \(B=1\) explicitly.
- Source and limitation scope: `material_partial` means the theorem
  supplies a new sufficient direction for source part (a). It does not
  claim necessity, a converse, source part (b), an indexed uniform
  polynomial characterization, a learner, an online algorithm, root
  simplicity, separation, or transversality. The affine comparison is
  limited to the source-audited full-column-rank, bounded-density latent
  class and does not classify all singular laws.
- Diagnostic-boundary confirmation: The paired global diagnostic and
  review were current and accepted at the hashes recorded above. The
  diagnostic contributed only the planning separation between theorem
  assembly and baseline recovery. Every mathematical conclusion here
  comes from current accepted dependency results, setting expressions,
  or the independently proved local comparison units.
