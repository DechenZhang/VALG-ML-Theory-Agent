# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: First prove a reusable local lemma: measurable
  \(G,\rho\), independent \(U\sim\operatorname{Unif}[-1,1]\), and
  positive \(\rho\) give the exact conditional density and
  \(K=1/(2\rho)\). Then use
  `assump:random-intercept-witness` to prove joint measurability and
  cube support,
  \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq M_{\mathrm{RI}}/2\),
  the R1 conclusion, and the fixed-width formula
  \(K=1/(2r_\mu)\) with the required class-uniform reciprocal-width
  condition.
- Dependencies: `step_002`.
- Assumptions used: Primitive `assump:random-intercept-witness`;
  explicit local conditional hypotheses for the reusable lemma; R1
  from accepted `step_002` is a derived dependency, not an assumption.
- Technical challenge: Keep the density identity valid only where
  \(\rho>0\), discharge that almost-everywhere condition, construct a
  jointly measurable density version on null fibers, and avoid
  requiring any density for \(\beta\).
- Intended proof tool or cited result: Conditional affine change of a
  uniform variable plus direct integration.
- Output target: Reusable conditional-uniform lemma and the
  general/fixed-width random-intercept specialization.
- Rate objective: R2 with exact factor \(1/2\), explicit
  \(M_{\mathrm{RI}}\) and \(r_\mu\) dependence, and no pointwise cap
  over \(\beta\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive basic setup: \(d\geq1\), \(R>0\), compact
  \(\Theta\subseteq\mathbb R\), and the random-intercept construction
  from `setting.md`. For every \(\mu\in\mathcal D_{\mathrm{RI}}\),
  the higher-coordinate vector has an arbitrary Borel law
  \(\beta\sim\pi_\mu\) on \([-R,R]^{d-1}\), with the one-point
  empty-tuple convention when \(d=1\),
  \(U_\mu\sim\operatorname{Unif}[-1,1]\) is independent of \(\beta\),
  \(G_\mu,\rho_\mu\) are measurable, and
  \[
  \alpha_0=G_\mu(\beta)+\rho_\mu(\beta)U_\mu.
  \]
- Primitive technical condition:
  Assumption~\ref{assump:random-intercept-witness}. It supplies
  \(\rho_\mu(\beta)>0\) for \(\pi_\mu\)-almost every \(\beta\),
  \[
  |G_\mu(\beta)|+\rho_\mu(\beta)\leq R
  \quad\text{for }\pi_\mu\text{-almost every }\beta,
  \]
  and
  \[
  M_{\mathrm{RI}}
  =\sup_{\mu\in\mathcal D_{\mathrm{RI}}}
  \int\rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta)<\infty.
  \]
- Accepted dependency artifacts:
  `proof_steps/step_002/proof.md`, sketch attempt 1 and unit attempt 1,
  status `COMPLETE`, SHA-256
  `f3f9aa19a82936c133877ad71896f58fd0cf71dd19af8fc60c1ce5437db84228`,
  paired with `proof_steps/step_002/review.md`, whose status is
  `ACCEPTED` and whose smallest retry target is `None`.
- Derived interface supplied by the accepted dependency:
  Proposition~\ref{prop:step-002-averaged-root-hitting}. For any
  nonempty cube-supported class satisfying
  Assumption~\ref{assump:averaged-intercept-density}, it gives, for
  every law \(\mu\) in that class and every
  \(I\in\mathscr I(\Theta)\),
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
  \leq L_{d,R,\Theta}|I|\bar\kappa,
  \]
  and the corresponding class conclusion \(C\leq
  L_{d,R,\Theta}\bar\kappa\).
- Local conditional hypotheses: In
  Lemma~\ref{lem:step-003-conditional-uniform-kernel}, \(G,\rho\) are
  measurable, \(U\) is independent uniform noise, and \(\rho>0\) on
  the specified full-measure set of conditioning fibers. These are
  discharged for \(\mathcal D_{\mathrm{RI}}\) by
  Assumption~\ref{assump:random-intercept-witness}; they do not survive
  as theorem-facing assumptions.

Assumption~\ref{assump:averaged-intercept-density} is not assumed in
this step. Proposition~\ref{prop:step-003-random-intercept-envelope}
derives all of its required components for
\(\mathcal D_{\mathrm{RI}}\) before the accepted dependency is invoked.
No density, absolute continuity, or coordinate independence of
\(\pi_\mu\) is used. No statement from `global_proof.md` is an allowed
assumption or dependency.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic random-intercept probability-space convention, if \(G,\rho\) are measurable, \(U\sim\operatorname{Unif}[-1,1]\) is independent of \(\beta\), and \(\rho>0\) on a measurable \(\pi\)-full set \(H\), then \(G(\beta)+\rho(\beta)U\) has a jointly measurable regular conditional density given \(\beta\), equal on \(H\) to \(\mathbf1\{|a-G(\beta)|\leq\rho(\beta)\}/[2\rho(\beta)]\), with exact cap \(1/[2\rho(\beta)]\). | Proves the reusable conditional-uniform identity while making null-fiber versions explicit. |
| `unit_002` | proposition | Under Assumption~\ref{assump:random-intercept-witness} and Lemma~\ref{lem:step-003-conditional-uniform-kernel}, every \(\mu\in\mathcal D_{\mathrm{RI}}\) is cube-supported and admits the required jointly measurable conditional density and measurable cap, with \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\) and \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\leq M_{\mathrm{RI}}/2\). | Derives the averaged-intercept-density interface from the random-intercept primitive without a pointwise width bound. |
| `unit_003` | proposition | Under Assumption~\ref{assump:random-intercept-witness}, Proposition~\ref{prop:step-003-random-intercept-envelope}, and accepted Proposition~\ref{prop:step-002-averaged-root-hitting}, the exact per-law random-intercept root bound and \(C_{\mathcal D_{\mathrm{RI}}}\leq L_{d,R,\Theta}M_{\mathrm{RI}}/2\) hold. | Instantiates R1 only after its density-envelope hypothesis has been derived. |
| `unit_004` | proposition | Under Assumption~\ref{assump:random-intercept-witness} and Propositions~\ref{prop:step-003-random-intercept-envelope} and~\ref{prop:step-003-random-intercept-root-hitting}, if \(\rho_\mu=r_\mu>0\) almost surely, then \(K_\mu=1/(2r_\mu)\) almost surely and the exact fixed-width per-law and class bounds hold under the class-uniform reciprocal-width condition. | Proves the complete fixed-width clause and exposes its exact required class condition. |

Atomic step = no. The conditional-kernel construction, derivation of
the averaged envelope and support, invocation of the inherited R1
interface, and fixed-width specialization are independent nontrivial
obligations.

## Cited Result Applications

No external paper result is used.

1. **Accepted dependency: averaged-envelope root hitting.**
   Proposition~\ref{prop:step-002-averaged-root-hitting}, accepted in
   `step_002`, states that a nonempty cube-supported class with jointly
   measurable conditional intercept densities, measurable caps, and
   finite averaged envelope satisfies
   \[
   \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
   \leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
   \leq L_{d,R,\Theta}|I|\bar\kappa
   \tag{1}
   \]
   for every law and positive-length interval, and hence
   \(C\leq L_{d,R,\Theta}\bar\kappa\). The current step does not
   assume those density hypotheses. Proposition~\ref{prop:step-003-random-intercept-envelope}
   proves them for \(\mathcal D_{\mathrm{RI}}\), after which
   Proposition~\ref{prop:step-003-random-intercept-root-hitting}
   applies (1) with that class.

2. **Product-law identity from independence.** If \(X\sim\pi\) and
   \(U\sim\operatorname{Unif}[-1,1]\) are independent, then for every
   nonnegative Borel function \(\Psi\),
   \[
   \mathbb E[\Psi(X,U)]
   =\int\frac12\int_{-1}^{1}\Psi(x,u)\,du\,\pi(dx).
   \tag{2}
   \]
   This is the definition of the product joint law, with Tonelli's
   theorem allowing the displayed iterated nonnegative integral. In
   Lemma~\ref{lem:step-003-conditional-uniform-kernel}, \(X=\beta\)
   and \(\Psi(\beta,u)\) is an indicator of an intercept event and a
   conditioning event. The basic random-intercept setup discharges
   independence and the uniform law.

3. **Affine substitution for a uniform variable.** For \(r>0\),
   \(g\in\mathbb R\), and any nonnegative Borel function \(h\), the
   substitution \(a=g+ru\) gives
   \[
   \frac12\int_{-1}^{1}h(g+ru)\,du
   =\int_{\mathbb R}h(a)
   \frac{\mathbf1\{|a-g|\leq r\}}{2r}\,da.
   \tag{3}
   \]
   It is used only on fibers where \(\rho(\beta)>0\); no division is
   made on a zero-width fiber.

4. **Regular-conditional-kernel criterion.** Let \(Q(\cdot\mid b)\)
   be a probability kernel on \(\mathbb R\) that is measurable in
   \(b\). If, for all Borel \(A\subseteq\mathbb R\) and all Borel
   conditioning sets \(B\),
   \[
   \Pr(Y\in A,\,X\in B)
   =\int_B Q(A\mid b)\,\pi(db),
   \tag{4}
   \]
   where \(\pi\) is the law of \(X\), then \(Q\) is a regular
   conditional law of \(Y\) given \(X\). The kernel constructed in
   Lemma~\ref{lem:step-003-conditional-uniform-kernel} is measurable
   because it has a jointly measurable density, and (4) follows from
   (2) and (3).

5. **Local-result application map.**
   Lemma~\ref{lem:step-003-conditional-uniform-kernel} supplies the
   exact conditional-law calculation. Proposition~\ref{prop:step-003-random-intercept-envelope}
   discharges that lemma's local conditions using the primitive
   random-intercept assumption and exports the derived density-envelope
   interface. Proposition~\ref{prop:step-003-random-intercept-root-hitting}
   combines that interface with accepted Proposition~\ref{prop:step-002-averaged-root-hitting}.
   Proposition~\ref{prop:step-003-fixed-width-certificate} specializes
   the already proved formulas; no local result is used under an
   unstated condition.

## Local Derivation

### unit_001: lemma

**Lemma (Measurable conditional kernel for an affine uniform intercept).**
\(\label{lem:step-003-conditional-uniform-kernel}\)
Under the basic random-intercept probability-space convention, let
\(\beta\) have an arbitrary Borel probability law \(\pi\) on the
higher-coordinate cube, with the one-point convention when \(d=1\).
Let \(U\sim\operatorname{Unif}[-1,1]\) be independent of \(\beta\),
let \(G,\rho\) be measurable real-valued functions of \(\beta\), and
put \(Y=G(\beta)+\rho(\beta)U\). Suppose that \(H\) is a measurable
set with \(\pi(H)=1\) and \(\rho(\beta)>0\) for every
\(\beta\in H\). Then \(Y\) has a jointly measurable regular
conditional density \(f(a\mid\beta)\) given \(\beta\) such that, for
every \(\beta\in H\),
\[
f(a\mid\beta)
=\frac{\mathbf1\{|a-G(\beta)|\leq\rho(\beta)\}}
       {2\rho(\beta)},
\qquad
\operatorname*{ess\,sup}_{a\in\mathbb R}f(a\mid\beta)
=\frac{1}{2\rho(\beta)}.
\tag{5}
\]
If also \(|G(\beta)|+\rho(\beta)\leq R\) on \(H\), the density
version can be chosen to vanish outside \([-R,R]\) on every fiber.

**Proof / justification.** Define the proof-local fallback density
\[
g_R(a)=\frac{\mathbf1\{|a|\leq R\}}{2R};
\tag{6}
\]
this is well defined because \(R>0\). Define the density piecewise by
\[
f(a\mid\beta)=
\begin{cases}
\displaystyle
\frac{\mathbf1\{|a-G(\beta)|\leq\rho(\beta)\}}
     {2\rho(\beta)}, & \beta\in H,\\[8pt]
g_R(a), & \beta\notin H.
\end{cases}
\tag{7}
\]
There is no quotient on \(H^c\), so (7) does not hide a \(0/0\)
convention. The set
\[
\{(a,\beta):|a-G(\beta)|\leq\rho(\beta)\}
\]
is measurable, as are \(H\), \(G\), and \(\rho\). Since \(\rho\)
is strictly positive on \(H\), (7) is jointly measurable. Its
integral in \(a\) equals one on \(H\), because the indicated interval
has length \(2\rho(\beta)\), and equals one on \(H^c\) by (6).
Consequently
\(Q(A\mid\beta)=\int_A f(a\mid\beta)\,da\) is a measurable
probability kernel.

Fix Borel sets \(A\subseteq\mathbb R\) and \(B\) in the
higher-coordinate space. Independence and the product-law identity
give
\[
\begin{aligned}
\Pr(Y\in A,\beta\in B)
&=\int_B\frac12\int_{-1}^{1}
  \mathbf1\{G(b)+\rho(b)u\in A\}\,du\,\pi(db).
\end{aligned}
\tag{8}
\]
For \(b\in H\), the positive-width substitution (3) turns the inner
integral into \(\int_A f(a\mid b)\,da\). The complement \(H^c\)
has \(\pi\)-measure zero, so replacing the inner integral there by
the fallback kernel changes neither side. Hence
\[
\Pr(Y\in A,\beta\in B)
=\int_B\int_A f(a\mid b)\,da\,\pi(db).
\tag{9}
\]
The kernel criterion therefore proves that (7) is a regular
conditional density of the actual variable \(Y\) given the actual
conditioning variable \(\beta\). This argument integrates against
\(\pi\) itself and never asks for a Lebesgue density of \(\pi\).

For \(b\in H\), the density in (5) equals the positive constant
\(1/[2\rho(b)]\) on an interval of strictly positive Lebesgue length
\(2\rho(b)\), and equals zero off that interval. Its Lebesgue
essential supremum is therefore exactly \(1/[2\rho(b)]\), rather than
merely at most that value. A globally measurable cap version is
\[
K(b)=
\begin{cases}
1/[2\rho(b)], & b\in H,\\
1/(2R), & b\notin H.
\end{cases}
\tag{10}
\]
Finally, if \(|G|+\rho\leq R\) on \(H\), then
\([G(b)-\rho(b),G(b)+\rho(b)]\subseteq[-R,R]\) on \(H\), while the
fallback (6) is also supported there. Thus (7) vanishes outside
\([-R,R]\) on every fiber. \(\square\)

### unit_002: proposition

**Proposition (Reciprocal-width envelope for random intercepts).**
\(\label{prop:step-003-random-intercept-envelope}\)
Under Assumption~\ref{assump:random-intercept-witness} and
Lemma~\ref{lem:step-003-conditional-uniform-kernel}, every
\(\mu\in\mathcal D_{\mathrm{RI}}\) is supported on
\([-R,R]^d\) and has a jointly measurable regular conditional density,
extended by zero outside \([-R,R]\), satisfying for
\(\pi_\mu\)-almost every \(\beta\)
\[
f_\mu(a_0\mid\beta)
=\frac{\mathbf1\{|a_0-G_\mu(\beta)|\leq\rho_\mu(\beta)\}}
       {2\rho_\mu(\beta)},
\qquad
K_\mu(\beta)=\frac{1}{2\rho_\mu(\beta)}.
\tag{11}
\]
Moreover, \(K_\mu\) has a measurable version and
\[
\int K_\mu(\beta)\,\pi_\mu(d\beta)
=\frac12\int\rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta),
\tag{12}
\]
so
\[
\bar\kappa_{\mathcal D_{\mathrm{RI}}}
\leq\frac12M_{\mathrm{RI}}<\infty.
\tag{13}
\]
Thus \(\mathcal D_{\mathrm{RI}}\) satisfies every component of
Assumption~\ref{assump:averaged-intercept-density}; that condition is
a derived conclusion here, not a primitive assumption.

**Proof / justification.** Fix \(\mu\in\mathcal D_{\mathrm{RI}}\) and
define the proof-local good-fiber set
\[
H_\mu
=\{\beta:\rho_\mu(\beta)>0,
             \ |G_\mu(\beta)|+\rho_\mu(\beta)\leq R\}.
\tag{14}
\]
It is measurable because \(G_\mu,\rho_\mu\) are measurable.
Assumption~\ref{assump:random-intercept-witness} gives
\(\pi_\mu(H_\mu)=1\). Apply
Lemma~\ref{lem:step-003-conditional-uniform-kernel} with
\(H=H_\mu\). It produces a jointly measurable conditional density
whose almost-everywhere formula and cap are exactly (11). Because the
support inequality holds on \(H_\mu\), the final clause of the lemma
also gives a version that vanishes outside \([-R,R]\) on every fiber.
The piecewise cap (10), with the current \(G_\mu,\rho_\mu,H_\mu\), is
measurable and is the essential supremum of that density on every
fiber.

The higher-coordinate vector already takes values in
\([-R,R]^{d-1}\). On the probability-one event
\(\{\beta\in H_\mu,|U_\mu|\leq1\}\),
\[
|\alpha_0|
\leq |G_\mu(\beta)|+\rho_\mu(\beta)|U_\mu|
\leq |G_\mu(\beta)|+\rho_\mu(\beta)
\leq R.
\tag{15}
\]
Therefore the actual coefficient law \(\mu\) is supported on
\([-R,R]^d\). This is a derived support fact, not an assumed generated
condition.

The complement of \(H_\mu\) is \(\pi_\mu\)-null, so the fallback
value in (10) contributes nothing to the cap integral. Values assigned
to \(\rho_\mu^{-1}\) on that null set are likewise immaterial. Hence
\[
\begin{aligned}
\int K_\mu(\beta)\,\pi_\mu(d\beta)
&=\frac12\int_{H_\mu}
  \rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta)\\
&=\frac12\int
  \rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta),
\end{aligned}
\tag{16}
\]
which is (12). Only now take the class supremum:
\[
\begin{aligned}
\bar\kappa_{\mathcal D_{\mathrm{RI}}}
&=\sup_{\mu\in\mathcal D_{\mathrm{RI}}}
  \int K_\mu\,d\pi_\mu\\
&=\frac12
  \sup_{\mu\in\mathcal D_{\mathrm{RI}}}
  \int\rho_\mu^{-1}\,d\pi_\mu\\
&=\frac12M_{\mathrm{RI}}.
\end{aligned}
\tag{17}
\]
In particular, the required inequality (13) holds. The calculation
integrates each possibly unbounded reciprocal width before taking the
class supremum; no essential supremum over \(\beta\) has been inserted.

When \(d=1\), the higher-coordinate space is the one-point empty-tuple
space, and every integral above is evaluation at that point. The
kernel construction, support estimate, and reciprocal-width identity
remain literal, so no hidden positive-dimensional marginal assumption
has entered. Joint measurability of \(f_\mu\), measurability of
\(K_\mu\), and finiteness of (17) establish all parts of
Assumption~\ref{assump:averaged-intercept-density} for the declared
class. \(\square\)

### unit_003: proposition

**Proposition (Uniform root hitting for the random-intercept class).**
\(\label{prop:step-003-random-intercept-root-hitting}\)
Under Assumption~\ref{assump:random-intercept-witness},
Proposition~\ref{prop:step-003-random-intercept-envelope}, and accepted
Proposition~\ref{prop:step-002-averaged-root-hitting}, for every
\(\mu\in\mathcal D_{\mathrm{RI}}\) and every
\(I\in\mathscr I(\Theta)\),
\[
\begin{aligned}
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
&\leq \frac{L_{d,R,\Theta}|I|}{2}
  \int\rho_\mu(\beta)^{-1}\,\pi_\mu(d\beta)\\
&\leq L_{d,R,\Theta}|I|
  \bar\kappa_{\mathcal D_{\mathrm{RI}}}\\
&\leq \frac{L_{d,R,\Theta}M_{\mathrm{RI}}}{2}|I|.
\end{aligned}
\tag{18}
\]
Consequently,
\[
C_{\mathcal D_{\mathrm{RI}}}
\leq L_{d,R,\Theta}\bar\kappa_{\mathcal D_{\mathrm{RI}}}
\leq\frac12L_{d,R,\Theta}M_{\mathrm{RI}}<\infty.
\tag{19}
\]

**Proof / justification.**
Proposition~\ref{prop:step-003-random-intercept-envelope} proves, from
the random-intercept primitive, that
\(\mathcal D_{\mathrm{RI}}\) is cube-supported and satisfies the full
conditional-density and averaged-envelope hypothesis of accepted
Proposition~\ref{prop:step-002-averaged-root-hitting}. Thus the
accepted result may now be instantiated with
\(\mathcal D=\mathcal D_{\mathrm{RI}}\); this invocation does not
assume the hypothesis it is meant to verify. It yields
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu.
\tag{20}
\]
Substitute the exact per-law identity (12) into (20), and then use the
definition of \(M_{\mathrm{RI}}\):
\[
L_{d,R,\Theta}|I|\int K_\mu\,d\pi_\mu
=\frac{L_{d,R,\Theta}|I|}{2}\int\rho_\mu^{-1}\,d\pi_\mu
\leq L_{d,R,\Theta}|I|
      \bar\kappa_{\mathcal D_{\mathrm{RI}}}
\leq\frac{L_{d,R,\Theta}M_{\mathrm{RI}}}{2}|I|.
\tag{21}
\]
This proves (18). Alternatively, applying the accepted class
conclusion and then (13) gives (19) directly. The fixed law's
reciprocal width is integrated before the class supremum in
\(M_{\mathrm{RI}}\) is used. Since the accepted result is already
uniform over every positive-length interval, no interval-dependent
exceptional set or probability conversion is introduced. The
one-point \(d=1\) marginal is covered by the same substitution.
\(\square\)

### unit_004: proposition

**Proposition (Exact fixed-width random-intercept certificate).**
\(\label{prop:step-003-fixed-width-certificate}\)
Under Assumption~\ref{assump:random-intercept-witness} and
Propositions~\ref{prop:step-003-random-intercept-envelope}
and~\ref{prop:step-003-random-intercept-root-hitting}, suppose a member
\(\mu\in\mathcal D_{\mathrm{RI}}\) has
\(\rho_\mu(\beta)=r_\mu\) for \(\pi_\mu\)-almost every \(\beta\),
where \(r_\mu>0\). Then
\[
K_\mu(\beta)=\frac{1}{2r_\mu}
\quad\text{for }\pi_\mu\text{-almost every }\beta,
\qquad
\int K_\mu\,d\pi_\mu=\frac{1}{2r_\mu},
\tag{22}
\]
and, for every \(I\in\mathscr I(\Theta)\),
\[
\Pr_\mu(Z_\alpha\cap I\neq\varnothing)
\leq\frac{L_{d,R,\Theta}}{2r_\mu}|I|.
\tag{23}
\]
More generally, if \(\mathcal F\) is a nonempty class of such
fixed-width members satisfying the same support condition and
\[
\sup_{\mu\in\mathcal F}r_\mu^{-1}<\infty,
\tag{24}
\]
then
\[
\bar\kappa_{\mathcal F}
=\frac12\sup_{\mu\in\mathcal F}r_\mu^{-1},
\qquad
C_{\mathcal F}
\leq\frac{L_{d,R,\Theta}}{2}
       \sup_{\mu\in\mathcal F}r_\mu^{-1}<\infty.
\tag{25}
\]

**Proof / justification.** On the full-measure set where both the
fixed-width identity and the random-intercept primitive hold,
Proposition~\ref{prop:step-003-random-intercept-envelope} gives
\[
K_\mu(\beta)=\frac{1}{2\rho_\mu(\beta)}
=\frac{1}{2r_\mu}.
\tag{26}
\]
Integrating the constant with respect to the probability law
\(\pi_\mu\) proves (22). Substitution into the exact per-law interface
of Proposition~\ref{prop:step-003-random-intercept-root-hitting}
proves (23).

For a class \(\mathcal F\), take the supremum only after the per-law
calculation:
\[
\bar\kappa_{\mathcal F}
=\sup_{\mu\in\mathcal F}\frac{1}{2r_\mu}
=\frac12\sup_{\mu\in\mathcal F}r_\mu^{-1}.
\tag{27}
\]
Condition (24) is exactly the class-uniform reciprocal-width
integrability condition specialized to fixed widths, not a pointwise
condition on a varying \(\beta\). Applying the accepted R1 class
conclusion to \(\mathcal F\), whose density-envelope hypothesis has
just been verified, gives (25). For \(d=1\), \(r_\mu\) is simply the
width attached to the unique empty-tuple fiber, and the same equations
hold without alteration. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-003-conditional-uniform-kernel} proves the exact
conditional affine-uniform density and its essential supremum on every
positive-width fiber. Its explicit fallback kernel makes the density
jointly measurable and globally defined while ensuring that null
zero-width fibers never enter a denominator.

Under Assumption~\ref{assump:random-intercept-witness},
Proposition~\ref{prop:step-003-random-intercept-envelope} constructs a
full-measure set on which positivity and the support inequality both
hold. It invokes the conditional-kernel lemma there, derives cube
support, integrates the exact reciprocal-width cap for each fixed law,
and only afterward takes the class supremum. This independently proves
the conditional-density, cap-measurability, and finite-envelope
conditions required by the accepted R1 proposition; it does not assume
Assumption~\ref{assump:averaged-intercept-density}.

Proposition~\ref{prop:step-003-random-intercept-root-hitting} then
legally invokes accepted Proposition~\ref{prop:step-002-averaged-root-hitting}
and substitutes the exact cap integral, producing both the all-law,
all-positive-length-interval inequality and
\(C_{\mathcal D_{\mathrm{RI}}}\leq
L_{d,R,\Theta}M_{\mathrm{RI}}/2\). Finally,
Proposition~\ref{prop:step-003-fixed-width-certificate} specializes
the same established formulas to \(\rho_\mu=r_\mu\) and identifies
the exact class-uniform reciprocal-width condition. Together these
four named results prove every clause of the binding `step_003` target
with the factor \(1/2\), arbitrary singular or dependent
\(\pi_\mu\), null-fiber handling, and the \(d=1\) convention intact.

## Explicit Rate Audit

- Exposed variables: \(L_{d,R,\Theta}\), \(|I|\),
  \(\rho_\mu(\beta)\), \(\int\rho_\mu^{-1}d\pi_\mu\),
  \(M_{\mathrm{RI}}\), \(r_\mu\),
  \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\), and
  \(C_{\mathcal D_{\mathrm{RI}}}\).
- Hidden constants may depend on: None. The conditional cap and class
  factor are exactly \(1/(2\rho_\mu)\) and \(1/2\).
- Hidden constants may not depend on: \(\mu,\beta,I,d,R,\Theta\), the
  marginal structure of \(\pi_\mu\), a lower width not present in the
  setting, or any unreported parameter.
- Fixed quantities: \(d,R,\Theta\) and the declared random-intercept
  class are fixed before laws and intervals vary. For each law, the
  reciprocal width is integrated before the class supremum is taken.
- Probability mode: Exact regular-conditional-law identities for
  \(\pi_\mu\)-almost every \(\beta\), followed by deterministic
  inequalities between exact unconditional probabilities. There is no
  confidence parameter, good event, or probability conversion.
- Horizon mode: Static and uniform over the class and every
  positive-length interval; no temporal, iterative, stopping-time, or
  asymptotic horizon is present.
- Norm mode: Lebesgue essential supremum in the scalar intercept
  coordinate, ordinary absolute value for cube support, one-dimensional
  interval length, and the interval-normalized root-hitting functional
  \(C\).
- Admissibility conditions and auxiliary tolerances: Exactly the basic
  random-intercept construction and
  Assumption~\ref{assump:random-intercept-witness}. Fixed-width class
  use additionally requires the explicit condition (24). There is no
  truncation, auxiliary tolerance, beta density, or pointwise lower
  width assumption.
- Term absorption or simplification inequalities: None. The exact
  chain is
  \[
  \Pr_\mu(Z_\alpha\cap I\neq\varnothing)
  \leq\frac{L_{d,R,\Theta}|I|}{2}
       \int\rho_\mu^{-1}d\pi_\mu
  \leq\frac{L_{d,R,\Theta}M_{\mathrm{RI}}}{2}|I|.
  \]
  No term is dropped and no factor is absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step proves R2
  directly and exports its unsimplified per-law integral, class bound,
  and exact fixed-width specialization to `step_004`, `step_007`, and
  final assembly.
- Baseline-reduction check: The accepted R1 conclusion is preserved
  exactly after substituting
  \(\int K_\mu d\pi_\mu=(1/2)\int\rho_\mu^{-1}d\pi_\mu\). It is not
  weakened to a conditional theorem and is not replaced by a
  pointwise-cap surrogate. The \(d=1\) specialization is exact.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined expressions: \(G_\mu,\rho_\mu,U_\mu,\pi_\mu\),
  \(M_{\mathrm{RI}}\), \(K_\mu\),
  \(\bar\kappa_{\mathcal D_{\mathrm{RI}}}\),
  \(L_{d,R,\Theta}\), and \(C_{\mathcal D_{\mathrm{RI}}}\) retain
  exactly their meanings from `setting.md`.
- `proof-local`: \(H\) in
  Lemma~\ref{lem:step-003-conditional-uniform-kernel} is an arbitrary
  measurable full-measure set of valid positive-width fibers. It is a
  local conditional hypothesis and is not exported.
- `proof-local`: \(g_R\) is the fixed fallback density used only to
  define a measurable regular-conditional version on null fibers. Its
  value has no effect on any almost-everywhere formula or integral.
- `proof-local`: \(H_\mu\) is the intersection of the positive-width
  and cube-support fibers. Its full measure is derived from
  Assumption~\ref{assump:random-intercept-witness}; it is not a
  theorem-facing event or assumption.
- `proof-local`: \(Q\) denotes the probability kernel obtained by
  integrating the constructed density. \(A,B,h,\Psi,g,r\) are scoped
  dummy objects used only in the restated standard facts or local
  derivation.
- `proof-local`: \(Y,f,K\) in
  Lemma~\ref{lem:step-003-conditional-uniform-kernel} denote the
  generic affine intercept, its constructed density version, and its
  generic fiber cap. Their identity is reusable, but these symbols are
  scoped to that lemma and are not exported as branch-wide notation.
- `proof-local`: \(\mathcal F\) denotes an arbitrary fixed-width
  sub-class in Proposition~\ref{prop:step-003-fixed-width-certificate}.
  The only exported condition is the explicit supremum in (24), not
  the helper class symbol.
- `public-facing`: No new helper constant, event, or notation
  dictionary is exported. The public interfaces are the named
  conclusions of Propositions~\ref{prop:step-003-random-intercept-envelope},
  \ref{prop:step-003-random-intercept-root-hitting},
  and~\ref{prop:step-003-fixed-width-certificate}, plus the reusable
  conditional-uniform identity needed by `step_004`.
- Constant provenance: \(R,L_{d,R,\Theta},M_{\mathrm{RI}}\) are
  setting-defined; \(r_\mu\) is the declared width of a fixed-width
  member; and \(1/2\) is derived exactly from the normalization of
  \(U\sim\operatorname{Unif}[-1,1]\). No free constant, radius,
  threshold, or margin is introduced.
- Assumption provenance: Independence, the uniform noise law, and the
  affine representation are primitive construction data.
  Almost-sure positive width, the support inequality, and reciprocal
  integrability are primitive parts of
  Assumption~\ref{assump:random-intercept-witness}. The conditional
  density, cap, cube support, and finite averaged envelope are proved
  in this step. Assumption~\ref{assump:averaged-intercept-density} is
  never used as a primitive condition.
- Null-fiber scope: Formula (11) and the cap identity are asserted only
  almost everywhere. A measurable fallback is installed on the null
  complement, so no division by zero occurs. A positive-mass
  zero-width set would invalidate the conditional-density conclusion
  and is excluded by the primitive assumption; it is not hidden by the
  fallback.
- Marginal scope: All integrations use the actual arbitrary Borel law
  \(\pi_\mu\). It may be discrete, singular, or have dependent
  coordinates. No ambient density is invoked.
- Diagnostic-boundary confirmation: The paired diagnostic
  `global_proof.md`, SHA-256
  `b8d7e0ea77be6ddd86ffc69a41bd175bd7ad91c7b3bb65b330e4b8370e2115c4`,
  was consulted only after `global_proof_review.md`, SHA-256
  `bd91a3a3f2501ce0e40f17dd7674d30e515790a828d7bd5586e417f45d79976b`,
  was verified `ACCEPTED`. Its step-relevant planning advice was to
  construct a measurable null-fiber version, use the exact affine
  substitution, and integrate reciprocal widths before taking the
  class supremum. Every such point is proved independently above from
  the primitive assumption, accepted dependency, and restated standard
  facts. The diagnostic is not evidence, a cited result, an assumption
  source, or authority to alter the target claim.
