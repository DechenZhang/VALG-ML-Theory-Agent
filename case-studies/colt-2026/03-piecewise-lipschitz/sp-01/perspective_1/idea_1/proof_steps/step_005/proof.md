# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \[
  \operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}
  K_{\mu_q}(\beta)=\infty,
  \qquad
  \int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
  =\frac{1}{R(1-q)},
  \]
  with the integral evaluated exactly by cutoff and monotone convergence,
  and conclude
  \[
  C_{\{\mu_q\}}
  \leq \frac{L_{d,R,\Theta}}{R(1-q)}.
  \]
- Dependencies: `step_002` and `step_004`.
- Assumptions used: The derived R1 theorem from accepted `step_002`
  and the conditional-cap and cube-support certificate from accepted
  `step_004`; no new technical assumption is imposed.
- Technical challenge: Prove essential unboundedness and average
  integrability simultaneously, retain the exact normalization under the
  uniform law of \(Z\), and ensure that the arbitrary conditional-density
  fallback on the null fiber \(Z=0\) affects neither conclusion.
- Intended proof tool or cited result: Positive-measure punctured
  neighborhoods, the substitution \(t=2|z|/R\), monotone convergence for
  dimensionless cutoffs, the exact power integral, and the accepted R1
  proposition in current notation.
- Output target: The complete quantitative heteroscedastic witness.
- Rate objective: R3 with exact \(R,q,L_{d,R,\Theta}\) dependence and no
  hidden constant or cutoff remainder.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions from the basic setting: Fix arbitrary
  \(d\geq3\), \(R>0\), \(q\in(0,1)\), and compact
  \(\Theta\subseteq\mathbb R\). Let
  \[
  Z\sim\operatorname{Unif}[-R/2,R/2],
  \qquad U\sim\operatorname{Unif}[-1,1]
  \]
  be independent, and retain the setting definitions
  \[
  \rho_q(z)=\frac R2\left(\frac{2|z|}{R}\right)^q,
  \quad
  \beta_q(z)=(z,z^2/R,0,\ldots,0),
  \quad
  \alpha^{(q)}=(\rho_q(Z)U,\beta_q(Z)),
  \]
  with law \(\mu_q\), higher-coordinate marginal \(\pi_{\mu_q}\), and
  root-hitting constant \(C_{\{\mu_q\}}\).
- Primitive technical conditions by stable id: None. In particular,
  Assumption~\ref{assump:averaged-intercept-density} is not assumed for
  the singleton class; its requirements are discharged below from the
  accepted `step_004` certificate and the locally proved finite integral.
- Accepted dependency artifacts: `proof_steps/step_002/proof.md`, sketch
  attempt 1 and unit attempt 1, status `COMPLETE`, current SHA-256
  `f3f9aa19a82936c133877ad71896f58fd0cf71dd19af8fc60c1ce5437db84228`,
  paired with `proof_steps/step_002/review.md`, current SHA-256
  `ede67ead7f343bee9c1874f2dceb0cbd1b60008718bea43f2f7433cdb9b19924`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Accepted dependency artifacts: `proof_steps/step_004/proof.md`, sketch
  attempt 1 and unit attempt 1, status `COMPLETE`, current SHA-256
  `1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a`,
  paired with `proof_steps/step_004/review.md`, current SHA-256
  `d1ec21173c373c8771589f2ccc178b269eb5a180c93c345680722f86c7af5a03`,
  whose status is `ACCEPTED` and whose smallest retry target is `None`.
- Derived interfaces supplied by accepted `step_004`:
  Proposition~\ref{prop:step-004-cube-width} proves that \(\mu_q\) is
  supported on \([-R,R]^d\) and that \(\rho_q(Z)>0\) almost surely.
  Lemma~\ref{lem:step-004-recovery-independence} proves that the first
  coordinate of \(\beta_q(Z)\) is exactly \(Z\). Proposition~\ref{prop:step-004-conditional-cap}
  supplies a jointly measurable regular conditional-density version of
  the actual intercept given the actual higher-coordinate vector and,
  for every \(0<|z|\leq R/2\), the exact cap
  \[
  K_{\mu_q}(\beta_q(z))
  =\frac{1}{R(2|z|/R)^q}.
  \]
  The value of the chosen cap on the single fiber \(z=0\) is
  version-dependent and is not part of this interface.
- Derived interface supplied by accepted `step_002`:
  Proposition~\ref{prop:step-002-averaged-root-hitting} states that any
  nonempty cube-supported class satisfying
  Assumption~\ref{assump:averaged-intercept-density} obeys, for every law
  and positive-length interval,
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu,
  \qquad
  C_{\mathcal D}\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D}.
  \]
- Derived invariants supplied by accepted dependencies: cube support,
  actual-object conditioning, a jointly measurable conditional-density
  version, and its exact nonzero-fiber cap formula. Finiteness of the
  singleton averaged envelope is not supplied by a dependency and is
  proved in this step.
- Local conditional hypotheses: None.

No statement from `global_proof.md` is used as proof evidence, a cited
result, an assumption source, or authority to alter the target claim.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the primitive witness construction and accepted Proposition~\ref{prop:step-004-conditional-cap}, for every \(M>0\), the set \(\{\beta:K_{\mu_q}(\beta)>M\}\) has positive \(\pi_{\mu_q}\)-measure; hence the \(\pi_{\mu_q}\)-essential supremum is infinite, independently of the null-fiber fallback. | Proves the exact pointwise-cap separation on positive-mass punctured neighborhoods. |
| `unit_002` | lemma | Under the primitive witness construction and accepted Proposition~\ref{prop:step-004-conditional-cap}, dimensionless cutoffs increase to an almost-everywhere representative of the cap and give \(\int K_{\mu_q}\,d\pi_{\mu_q}=1/[R(1-q)]\), with cutoff residual \(\delta^{1-q}/[R(1-q)]\). | Proves exact average integrability, normalization, and cutoff elimination. |
| `unit_003` | proposition | Under the primitive witness construction, accepted Propositions~\ref{prop:step-004-cube-width}, \ref{prop:step-004-conditional-cap}, and \ref{prop:step-002-averaged-root-hitting}, and Lemma~\ref{lem:step-005-exact-averaged-cap}, the singleton class satisfies Assumption~\ref{assump:averaged-intercept-density} and obeys \(C_{\{\mu_q\}}\leq L_{d,R,\Theta}/[R(1-q)]\). | Legally instantiates R1 and exports the exact singleton root-hitting bound. |

Atomic step = no. Essential unboundedness, exact singular integration,
and verification and use of the singleton R1 interface are independent
nontrivial obligations.

## Cited Result Applications

No external paper result is used.

1. **Accepted dependency: exact actual-fiber cap.**
   Proposition~\ref{prop:step-004-conditional-cap}, together with the
   recovery bridge in Lemma~\ref{lem:step-004-recovery-independence},
   states in current notation that the actual higher-coordinate vector
   is \(\beta_q(Z)\), its first coordinate is \(Z\), and one valid jointly
   measurable conditional-density version has
   \[
   K_{\mu_q}(\beta_q(z))
   =\frac{1}{R(2|z|/R)^q}
   \quad\text{for every }0<|z|\leq R/2.
   \]
   The construction uses a genuine density fallback at \(z=0\), but
   that fiber has \(\pi_{\mu_q}\)-measure zero. Any legal modification
   of the conditional kernel on that one null fiber changes neither an
   essential supremum nor a nonnegative integral with respect to
   \(\pi_{\mu_q}\). Units 001 and 002 use only the displayed nonzero-fiber
   conclusion.

2. **Accepted dependency: averaged-envelope root hitting.**
   Proposition~\ref{prop:step-002-averaged-root-hitting} states that,
   for every class satisfying
   Assumption~\ref{assump:averaged-intercept-density},
   \[
   \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
   \leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
   \]
   for every law in the class and every
   \(I\in\mathscr I(\Theta)\), and hence
   \(C_{\mathcal D}\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D}\).
   Proposition~\ref{prop:step-005-singleton-root-hitting} applies this
   result only after cube support, a jointly measurable conditional
   density, a measurable cap, and its finite exact integral have all
   been discharged for \(\{\mu_q\}\).

3. **Pushforward integration under the actual marginal.**
   Since the actual higher-coordinate random vector is
   \(\beta_q(Z)\), its marginal is
   \(\pi_{\mu_q}=(\beta_q)_\#\mathcal L(Z)\). Therefore every
   nonnegative Borel function \(h\) satisfies
   \[
   \int h(\beta)\,\pi_{\mu_q}(d\beta)
   =\mathbb E[h(\beta_q(Z))]
   =\frac1R\int_{-R/2}^{R/2}h(\beta_q(z))\,dz.
   \]
   This is the defining pushforward identity, and the factor \(1/R\)
   is the exact density of the uniform law on an interval of length
   \(R\).

4. **Monotone convergence theorem.**
   If \(g_n\) is a sequence of nonnegative measurable functions with
   \(g_n\uparrow g\) pointwise, then
   \(\int g_n\,d\lambda\uparrow\int g\,d\lambda\), allowing the value
   \(+\infty\). Lemma~\ref{lem:step-005-exact-averaged-cap} applies it
   to the uniform law of \(Z\) and the dimensionless cutoffs
   \(2|Z|/R\geq1/n\). Nonnegativity, measurability, and monotonicity are
   checked there, and the resulting limit is shown finite because
   \(1-q>0\).

5. **Local-result application map.**
   Lemma~\ref{lem:step-005-positive-mass-cap-blowup} proves the infinite
   essential supremum. Lemma~\ref{lem:step-005-exact-averaged-cap}
   proves the exact finite averaged envelope. Proposition~\ref{prop:step-005-singleton-root-hitting}
   combines the latter with the accepted cube and conditional-density
   certificate to discharge the accepted R1 proposition's hypotheses.
   No local result is used under an unstated condition.

## Local Derivation

### unit_001: lemma

**Lemma (Positive-mass blowup of the heteroscedastic slice cap).**
\(\label{lem:step-005-positive-mass-cap-blowup}\)
Under the primitive witness construction with \(d\geq3\), \(R>0\), and
\(q\in(0,1)\), and accepted
Proposition~\ref{prop:step-004-conditional-cap}, for every \(M>0\),
\[
\pi_{\mu_q}\{\beta:K_{\mu_q}(\beta)>M\}>0.
\tag{1}
\]
Consequently,
\[
\operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}
K_{\mu_q}(\beta)=\infty.
\tag{2}
\]
Both conclusions are unchanged by any legal conditional-density
fallback on the marginal-null fiber \(\beta_q(0)\).

**Proof / justification.** For \(z\in[-R/2,R/2]\), define the
proof-local dimensionless coordinate
\[
t(z):=\frac{2|z|}{R}\in[0,1].
\tag{3}
\]
Fix \(M>0\) and put
\[
\delta_M:=\min\left\{\frac12,(2RM)^{-1/q}\right\}.
\tag{4}
\]
The conditions \(R>0\), \(q>0\), and \(M>0\) give
\(0<\delta_M\leq1/2\). Moreover,
\[
\delta_M^q\leq\frac{1}{2RM},
\qquad
\frac{1}{R\delta_M^q}\geq2M.
\tag{5}
\]

Let \(b_1\) denote the first coordinate of a higher-coefficient vector
\(b\), and define the proof-local Borel set
\[
A_M:=\left\{b:0<\frac{2|b_1|}{R}<\delta_M\right\}.
\tag{6}
\]
Accepted Lemma~\ref{lem:step-004-recovery-independence} gives
\((\beta_q(z))_1=z\). Since \(Z\) is uniform on an interval of length
\(R\),
\[
\begin{aligned}
\pi_{\mu_q}(A_M)
&=\Pr\left(0<\frac{2|Z|}{R}<\delta_M\right)\\
&=\frac1R\left|\left(-\frac{R\delta_M}{2},
\frac{R\delta_M}{2}\right)\setminus\{0\}\right|
=\delta_M>0.
\end{aligned}
\tag{7}
\]
For every actual fiber \(b=\beta_q(z)\in A_M\), one has \(z\neq0\),
so accepted Proposition~\ref{prop:step-004-conditional-cap} applies and
gives
\[
K_{\mu_q}(b)
=\frac{1}{R t(z)^q}
>\frac{1}{R\delta_M^q}
\geq2M>M.
\tag{8}
\]
Thus \(A_M\) is contained, up to no exception of positive marginal
measure, in the event in (1). Equation (7) proves (1).

A nonnegative measurable function has finite essential supremum only if
some finite \(M\) bounds it outside a null set. Equation (1) rules this
out for every \(M>0\), proving (2). The event \(A_M\) expressly excludes
\(b_1=0\), while
\(\pi_{\mu_q}\{\beta_q(0)\}=\Pr(Z=0)=0\). Hence changing the fallback
cap at that fiber cannot affect (1) or (2). At the support endpoints
\(z=\pm R/2\), the accepted formula gives the finite value \(1/R\);
the blowup is supplied solely by positive-mass punctured neighborhoods
of zero. The strict condition \(q>0\) is exactly what makes the cap
diverge along those neighborhoods. \(\square\)

### unit_002: lemma

**Lemma (Exact averaged cap of the power-width witness).**
\(\label{lem:step-005-exact-averaged-cap}\)
Under the primitive witness construction with \(d\geq3\), \(R>0\), and
\(q\in(0,1)\), and accepted
Proposition~\ref{prop:step-004-conditional-cap},
\[
\int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
=\frac{1}{R(1-q)}<\infty.
\tag{9}
\]
For every dimensionless cutoff \(\delta\in(0,1]\), the cap mass on
\(t(z)\geq\delta\) is
\[
\frac{1-\delta^{1-q}}{R(1-q)},
\tag{10}
\]
and the omitted central mass is exactly
\(\delta^{1-q}/[R(1-q)]\), which vanishes as
\(\delta\downarrow0\).

**Proof / justification.** Retain \(t(z)=2|z|/R\) from (3) and define
the proof-local representative
\[
\widehat K_q(z):=
\begin{cases}
\displaystyle \frac{1}{R t(z)^q},&z\neq0,\\[6pt]
0,&z=0.
\end{cases}
\tag{11}
\]
Accepted Proposition~\ref{prop:step-004-conditional-cap} shows that
\(\widehat K_q(z)=K_{\mu_q}(\beta_q(z))\) for every \(z\neq0\).
The two functions may differ at \(z=0\), but the uniform law assigns
that point probability zero. Therefore
\[
\int K_{\mu_q}\,d\pi_{\mu_q}
=\mathbb E[\widehat K_q(Z)].
\tag{12}
\]
This equality remains valid even if the chosen null-fiber cap is
infinite, because a nonnegative extended-valued function supported on
a null set has integral zero.

For integers \(n\geq1\), define
\[
g_n(z):=\widehat K_q(z)
\mathbf1\{t(z)\geq1/n\}.
\tag{13}
\]
Each \(g_n\) is nonnegative and Borel measurable. As \(n\) increases,
the cutoff sets increase, so \(g_n(z)\uparrow\widehat K_q(z)\) for
every \(z\), including \(z=0\). The monotone convergence theorem and
the exact uniform density \(1/R\) give
\[
\mathbb E[\widehat K_q(Z)]
=\lim_{n\to\infty}\frac1R
\int_{-R/2}^{R/2}g_n(z)\,dz.
\tag{14}
\]

For each \(n\), symmetry and the dimensionless substitution
\(t=2z/R\), \(dz=(R/2)dt\), yield
\[
\begin{aligned}
\frac1R\int_{-R/2}^{R/2}g_n(z)\,dz
&=\frac{2}{R}\int_{R/(2n)}^{R/2}
\frac{1}{R(2z/R)^q}\,dz\\
&=\frac1R\int_{1/n}^{1}t^{-q}\,dt\\
&=\frac{1-n^{-(1-q)}}{R(1-q)}.
\end{aligned}
\tag{15}
\]
Every normalization factor is visible: the first \(1/R\) is the
uniform density of \(Z\), the second \(1/R\) is part of the cap, the
factor two is symmetry, and \(dz=(R/2)dt\) leaves the single prefactor
\(1/R\).

Because \(q<1\), one has \(1-q>0\) and
\(n^{-(1-q)}\to0\). Combining (12), (14), and (15) proves (9).
Replacing \(1/n\) by an arbitrary \(\delta\in(0,1]\) in the same
calculation proves (10), and subtracting (10) from (9) gives the exact
omitted mass stated in the lemma.

The point \(z=0\) is excluded only from the pointwise formula and is
retained harmlessly as a null point in the integration domain. At
\(z=\pm R/2\), \(t=1\) and the cap is exactly \(1/R\), so no endpoint
singularity occurs. The lower boundary \(q=0\) would leave the integral
finite but would destroy Lemma~\ref{lem:step-005-positive-mass-cap-blowup};
the upper boundary \(q=1\) would produce the divergent logarithmic
integral \(\int_0^1t^{-1}dt\). Both are outside the binding open range.
The degree condition \(d\geq3\) identifies the witness coefficient
vector but introduces no additional normalization factor. \(\square\)

### unit_003: proposition

**Proposition (Singleton root hitting for the heteroscedastic witness).**
\(\label{prop:step-005-singleton-root-hitting}\)
Under the primitive witness construction with \(d\geq3\), \(R>0\), and
\(q\in(0,1)\), accepted
Propositions~\ref{prop:step-004-cube-width},
\ref{prop:step-004-conditional-cap}, and
\ref{prop:step-002-averaged-root-hitting}, and
Lemma~\ref{lem:step-005-exact-averaged-cap}, the singleton class
\(\{\mu_q\}\) satisfies
Assumption~\ref{assump:averaged-intercept-density}, with
\[
\bar\kappa_{\{\mu_q\}}
=\int K_{\mu_q}(\beta)\,\pi_{\mu_q}(d\beta)
=\frac{1}{R(1-q)}.
\tag{16}
\]
Consequently, for every \(I\in\mathscr I(\Theta)\),
\[
\Pr_{\mu_q}(Z_\alpha\cap I\neq\varnothing)
\leq\frac{L_{d,R,\Theta}|I|}{R(1-q)},
\tag{17}
\]
and
\[
C_{\{\mu_q\}}
\leq\frac{L_{d,R,\Theta}}{R(1-q)}.
\tag{18}
\]

**Proof / justification.** Accepted
Proposition~\ref{prop:step-004-cube-width} proves that the only law in
the singleton class is supported on \([-R,R]^d\). Accepted
Proposition~\ref{prop:step-004-conditional-cap} supplies a jointly
measurable regular conditional-density version of the actual intercept
given the actual higher-coordinate vector. Its explicit measurable
piecewise construction supplies a measurable essential-supremum cap;
on the full-measure set of nonzero fibers that cap is the formula used
in Lemma~\ref{lem:step-005-exact-averaged-cap}. The lemma proves that
its integral is finite and has the exact value in (16). A modification
of the kernel or cap at \(\beta_q(0)\) does not change that integral.

Thus every requirement of
Assumption~\ref{assump:averaged-intercept-density} is verified for the
nonempty singleton class, rather than assumed: conditional-density and
cap measurability come from accepted `step_004`, and the finite class
envelope comes from Lemma~\ref{lem:step-005-exact-averaged-cap}. Since a
supremum over a singleton equals its sole value, (16) follows exactly.

The hypotheses of accepted
Proposition~\ref{prop:step-002-averaged-root-hitting} are now
discharged. Applying its per-law conclusion with
\(\mathcal D=\{\mu_q\}\) and substituting (16) gives (17). Because
every allowed interval has \(|I|>0\), divide by \(|I|\) and take the
defining interval supremum to obtain (18). There is no class-supremum
loss for a singleton and no pointwise-in-\(\beta\) cap is used.

Finiteness follows from \(R>0\), \(1-q>0\), and the setting-defined
finite derivative envelope \(L_{d,R,\Theta}\). The conclusion is an
exact deterministic inequality for every positive-length interval,
with no exceptional event, confidence conversion, or hidden constant.
\(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-conditional-cap} supplies the
actual nonzero-fiber cap, and accepted
Lemma~\ref{lem:step-004-recovery-independence} identifies the actual
conditioning coordinate with \(Z\). Lemma~\ref{lem:step-005-positive-mass-cap-blowup}
uses an explicit positive-mass punctured neighborhood for every finite
threshold and proves
\(\operatorname*{ess\,sup}_{\beta\sim\pi_{\mu_q}}K_{\mu_q}=\infty\),
independently of the null-fiber fallback.

Lemma~\ref{lem:step-005-exact-averaged-cap} uses nonnegative
dimensionless cutoffs, the checked monotone-convergence theorem, and the
exact uniform normalization to prove
\[
\int K_{\mu_q}\,d\pi_{\mu_q}
=\frac{1}{R(1-q)}.
\]
Its displayed cutoff residual tends to zero precisely because \(q<1\),
while \(q>0\) supplies the unboundedness proved by the first lemma.

Accepted Proposition~\ref{prop:step-004-cube-width} and the accepted
conditional-density construction, together with the exact finite
integral, verify every component of
Assumption~\ref{assump:averaged-intercept-density} for the singleton
class. Proposition~\ref{prop:step-005-singleton-root-hitting} may
therefore legally apply accepted
Proposition~\ref{prop:step-002-averaged-root-hitting}, yielding
\[
C_{\{\mu_q\}}
\leq\frac{L_{d,R,\Theta}}{R(1-q)}.
\]
These three named local results establish every clause of the exact
binding `step_005` claim without a new assumption, changed quantifier,
or suppressed factor.

## Explicit Rate Audit

- Exposed variables: \(d\geq3\), \(R>0\), \(q\in(0,1)\),
  \(L_{d,R,\Theta}\), the cap \(K_{\mu_q}\), the dimensionless cutoff
  \(\delta\), interval length \(|I|\), and
  \(C_{\{\mu_q\}}\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,q,\Theta,Z,U,I\), the
  conditional-density version, the cutoff, or any unreported
  distributional parameter.
- Fixed quantities: Arbitrary \(d,R,q,\Theta\) in the displayed ranges
  are fixed before the cap threshold, cutoff, and interval vary. The
  law class is the fixed singleton \(\{\mu_q\}\).
- Probability mode: The positive-width and null-fiber statements are
  almost sure under the actual marginal; essential unboundedness is with
  respect to \(\pi_{\mu_q}\); the averaged cap is an exact nonnegative
  integral; and the root-hitting result is an exact deterministic
  inequality between exact probabilities.
- Horizon mode: Static. There is no temporal or iterative horizon. The
  only limit is monotone removal of a proof-local cutoff at \(Z=0\).
- Norm mode: Coordinatewise absolute value in the coefficient cube,
  Lebesgue essential supremum in the scalar conditional intercept
  coordinate, integration against \(\pi_{\mu_q}\), and the
  interval-length-normalized functional \(C_{\{\mu_q\}}\).
- Admissibility conditions and auxiliary tolerances: Exactly
  \(d\geq3\), \(R>0\), \(q\in(0,1)\), the primitive uniform witness,
  and the current accepted dependency interfaces. The cutoff
  \(\delta\in(0,1]\) is proof-local and is removed exactly.
- Term absorption or simplification inequalities: No term is absorbed.
  For every cutoff,
  \[
  \frac1R\int_\delta^1t^{-q}\,dt
  =\frac{1-\delta^{1-q}}{R(1-q)},
  \qquad
  \frac{\delta^{1-q}}{R(1-q)}\longrightarrow0.
  \]
  Substitution into accepted R1 preserves coefficient one.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step completes
  R3 by producing the exact averaged cap and singleton root-hitting
  rate. It introduces no asymptotic notation or public simplification.
- Baseline-reduction check: The singleton conclusion is an exact
  specialization of accepted R1 with
  \(\bar\kappa_{\{\mu_q\}}=1/[R(1-q)]\); there is no conservative loss.
  The excluded limit \(q=0\) retains a finite mean but not the required
  unboundedness, while \(q=1\) loses the finite averaged-envelope
  premise. Neither endpoint is silently included or used as a weaker
  surrogate.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(Z,U,\rho_q,\beta_q,\alpha^{(q)}\),
  \(\mu_q,\pi_{\mu_q},K_{\mu_q},C_{\{\mu_q\}}\),
  \(L_{d,R,\Theta}\), and \(d,R,q,\Theta\) retain exactly their meanings
  from `setting.md`.
- Accepted dependency objects: the cube-support and actual conditional
  cap propositions from `step_004` and the averaged-root-hitting
  proposition from `step_002` are used only through their current
  accepted statements and are restated before use.
- `proof-local`: \(t(z)=2|z|/R\) is a dimensionless abbreviation reused
  in the threshold and cutoff calculations. It is defined directly
  from primitive \(R\) and \(z\) and is not exported.
- `proof-local`: \(\delta_M\) and \(A_M\) are the threshold-dependent
  radius and beta event in Lemma~\ref{lem:step-005-positive-mass-cap-blowup}.
  Their positivity, measurability, and exact marginal mass are proved
  there; neither is a theorem-facing assumption.
- `proof-local`: \(\widehat K_q\) is a representative equal to the
  accepted actual cap on every nonzero fiber and set to zero only at the
  marginal-null origin. The cutoff functions \(g_n\) increase to this
  representative. None is exported.
- `proof-local`: \(M>0\), \(n\geq1\), and
  \(\delta\in(0,1]\) are scoped threshold or cutoff variables. They are
  not new model parameters or admissibility conditions.
- `public-facing`: No helper symbol is exported. The minimal downstream
  interface consists only of the infinite essential cap, the exact
  averaged cap \(1/[R(1-q)]\), and the singleton bound
  \(L_{d,R,\Theta}/[R(1-q)]\).
- Constant provenance: \(R\) and \(q\) are primitive setting
  parameters. The threshold \(\delta_M\) is explicitly defined from
  \(R,q,M\); the cutoffs \(1/n\) are dimensionless; and every factor in
  \(1/[R(1-q)]\) is derived visibly in (15). No free constant, margin,
  bounded quantity, or hidden normalization is introduced.
- Assumption provenance: The explicit laws of \(Z,U\), independence,
  and the coefficient formulas are primitive construction data. Cube
  support, recovery of \(Z\), and the jointly measurable conditional
  density and cap are accepted derived outputs of `step_004`. Essential
  unboundedness and finite averaged-envelope control are proved locally.
  Assumption~\ref{assump:averaged-intercept-density} for the singleton
  is a derived certificate assembled in
  Proposition~\ref{prop:step-005-singleton-root-hitting}, not a primitive
  or local conditional hypothesis.
- Null-fiber scope: \(z=0\) has zero \(Z\)-probability and hence
  \(\beta_q(0)\) has zero \(\pi_{\mu_q}\)-mass. Every threshold event
  excludes it, and \(\widehat K_q\) changes the cap only there. Thus an
  arbitrary legal fallback, finite or infinite in essential-supremum
  value, affects neither the essential supremum over beta nor the
  averaged cap.
- Endpoint and parameter scope: At \(z=\pm R/2\), the cap is \(1/R\).
  The condition \(q>0\) is used for positive-mass blowup, \(q<1\) for
  finite cutoff removal, and \(R>0\) for every normalization and
  substitution. The minimal witness degree \(d=3\) and all larger
  degrees use the same scalar calculation.
- Diagnostic-boundary confirmation: `global_proof.md` was consulted
  only after its paired current `global_proof_review.md` was verified
  `ACCEPTED`. Its step-relevant planning suggestion was the same
  positive-neighborhood and dimensionless-cutoff calculation encoded in
  the accepted sketch. Every line above is independently derived from
  the primitive witness and current accepted `step_002` and `step_004`
  artifacts. The diagnostic is not evidence, a cited result, an
  assumption source, or authority to alter the target claim.
