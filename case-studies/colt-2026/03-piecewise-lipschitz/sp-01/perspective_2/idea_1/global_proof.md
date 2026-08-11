# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_2/idea_1`
- Sketch attempt: 1
- Global unit attempt: 1
- Goal mode: exact-goal mode
- Progress type: `material_partial`
- Reviewed `setting.md`: SHA-256 `9ce3b0bf46590c1e4cc47e6251325ad0e3eccbd686fd8289c2dc8dfc3a99fc0f`
- Reviewed `proof_sketch.md`: SHA-256 `4205a79c0f2979a4549473a4b3c7a6318dce534bc2205f36ce204fa2085370c7`
- Reviewed `proof_sketch_review.md`: SHA-256 `7dd722dad3c1803fd0df363b521612dcda7c0587dc027bf75142681ca8f1861f`
- Review confirmation: the reviewed sketch has `Sketch Review Status = ACCEPTED`, viability score 9, `Smallest Retry Target = None`, and `Retry Mode = none`.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Fix once and for all a finite
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently of
\(d\) and \(R\). Under `assump:compact-parameter-domain`,
`assump:indexed-regime`, `assump:compact-cube-support`, and
`assump:mean-endpoint-conditional-caps`, the attempted theorem is the exact claim
that, for every integer \(d\geq1\), every \(R\geq1\), every
\(\mu\in\mathcal D_{d,R,\eta}\), and every
\(I\in\mathcal I(\Theta)\),
\[
\begin{aligned}
\mu(H_{d,I})
&\leq \bar\kappa_0 B_0(d,R)|I_0|
 +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)\\
&\leq M_\eta(d,R)|I|,
\end{aligned}
\]
where the three pieces and the two chart constants are exactly those in
`setting.md`. Consequently, with the stated value-zero convention when either
supremum index set is empty,
\[
C_{\mathcal D_{d,R,\eta}}
\leq M_\eta(d,R)
=\max\!\left\{
\bar\kappa_0\!\left(d+\frac{Rd(d-1)}2\right),
\bar\kappa_\infty\!\left(1+\frac{Rd(d-1)}2\right)
\right\}
\leq P_\eta(d,R)
=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2,
\qquad
\bar\kappa_*:=\max\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
The middle bound is the exact weighted two-chart maximum, not a sum. The
displayed polynomial has uniform total-degree bound three, has no hidden
constant, and has coefficients depending only on the fixed \(\eta\). If
\(\bar\kappa_*=0\), the displayed degree-three-form expression degenerates to
the zero polynomial; this boundary does not alter the exact inequality.

Separately, under the additional theorem-clause hypothesis
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), the attempted theorem asserts for
every \(d\geq1\) and \(R\geq1\) that the exact witness law
\(\mu^{\mathrm{wit}}_{d,R}\) belongs to \(\mathcal D_{d,R,\eta}\), with both
endpoint conditional caps equal to \(1/(2R)\). This threshold is not assumed
anywhere in the root-hitting bound.

The scope remains `material_partial`: the theorem gives a sufficient
coefficient-side condition on the restricted radius regime \(R\geq1\). It
does not assert necessity, a characterization of laws without both endpoint
caps, coverage of \(0<R<1\), a new law-coverage result beyond the known
affine-latent baseline, or a full solution of Open Question 1.

## Whole-Proof Draft

### Block G0: Quantifiers, support, and chart partition

Fix an allowed \((d,R,\mu,I)\) after fixing \(\eta\). Write
\(Y_0=\alpha_{1:d-1}\) and \(Y_\infty=\alpha_{0:d-2}\); when \(d=1\), both
conditioning spaces are the one-point space \(\mathbb R^0\). Since \(\mu\)
is supported on \([-R,R]^d\), each pivot conditional kernel is supported on
\([-R,R]\) for marginal-almost every conditioning value.

The sets
\[
I_0=I\cap[-1,1],\qquad I_+=I\cap(1,\infty),\qquad
I_-=I\cap(-\infty,-1)
\]
are intervals, possibly empty or singleton, are pairwise disjoint, and have
union \(I\). Their endpoint conventions are inherited from \(I\), and
\(|I_0|+|I_+|+|I_-|=|I|\). In particular, the points \(\pm1\), when present,
occur only in \(I_0\).

### Block G1: Inner coefficient sweep

For a support-compatible value \(y=(\alpha_1,\ldots,\alpha_{d-1})\), the
root equation on the inner chart is exactly
\[
\alpha_0=s_0(\theta;y)
=-\theta^d-\sum_{j=1}^{d-1}\alpha_j\theta^j.
\]
Direct differentiation in the branch's ascending coefficient convention gives
\[
\partial_\theta s_0(\theta;y)
=-d\theta^{d-1}-\sum_{j=1}^{d-1}j\alpha_j\theta^{j-1}.
\]
For \(|\theta|\leq1\), cube support and the triangle identity yield
\[
\lvert\partial_\theta s_0(\theta;y)\rvert
\leq d+R\sum_{j=1}^{d-1}j
=d+\frac{Rd(d-1)}2
=B_0(d,R).
\]
Thus \(s_0(\cdot;y)\) is \(B_0(d,R)\)-Lipschitz on \([-1,1]\). For every
interval \(J\subseteq[-1,1]\), arbitrary inclusion of its endpoints does not
matter: the continuous image \(s_0(J;y)\) is an interval and
\[
\lambda(s_0(J;y))
\leq\operatorname{diam}(s_0(J;y))
\leq B_0(d,R)\operatorname{diam}(J)
=B_0(d,R)|J|.
\]
The same statement covers empty and singleton \(J\), for which both sides are
zero. At \(d=1\), the sum is empty, \(s_0(\theta)=-\theta\), and
\(B_0(1,R)=1\).

### Block G2: Positive and negative outer sweeps

On either outer component, \(\theta\neq0\), so division of the root equation
by \(\theta^{d-1}\) is legal for both signs and gives
\[
\alpha_{d-1}=s_\infty(\theta;y)
=-\theta-\sum_{j=0}^{d-2}\alpha_j\theta^{j-d+1}.
\]
The derivative is
\[
\partial_\theta s_\infty(\theta;y)
=-1+\sum_{j=0}^{d-2}(d-1-j)\alpha_j\theta^{j-d}.
\]
Because \(j-d\leq-2\) in the displayed sum and \(|\theta|\geq1\), the same
absolute-power estimate is valid on the negative and positive charts:
\[
\lvert\partial_\theta s_\infty(\theta;y)\rvert
\leq1+R\sum_{j=0}^{d-2}(d-1-j)
=1+\frac{Rd(d-1)}2
=B_\infty(d,R).
\]
The mean-value argument is applied separately on the two connected domains.
For every interval \(J\subseteq(1,\infty)\) or
\(J\subseteq(-\infty,-1)\),
\[
\lambda(s_\infty(J;y))\leq B_\infty(d,R)|J|.
\]
No line segment is taken across zero. At \(d=1\), division is by
\(\theta^0=1\), the sum is empty, \(s_\infty=-\theta\), and
\(B_\infty(1,R)=1\). The limiting approach to \(1\) or \(-1\) is harmless;
the boundary points themselves are assigned to the inner chart.

### Block G3: Measurable caps, Borel events, and event sections

Both conditioning spaces and the pivot line are standard Borel spaces, so
regular conditional kernels \(Q^0_y\) and \(Q^\infty_y\) may be fixed. The
primitive class condition says that, outside a marginal-null set for each
kernel, \(Q^i_y\) has a Lebesgue density \(q^i_y\).

Let \(\mathscr J_{\mathbb Q}\) be the countable family of bounded,
positive-length intervals with rational endpoints, and define the
extended-valued kernel functional
\[
\widehat K_i(y)
:=\sup_{J\in\mathscr J_{\mathbb Q}}
\frac{Q^i_y(J)}{|J|}.
\]
For each fixed \(J\), the kernel property makes \(y\mapsto Q^i_y(J)\)
measurable; hence \(\widehat K_i\) is measurable. On a density fiber,
\(Q^i_y(J)/|J|\leq\|q^i_y\|_\infty\) for every rational interval. Conversely,
if \(a<\|q^i_y\|_\infty\), a positive-measure set has density value above
\(a\); choosing a Lebesgue point in that set and rational-endpoint intervals
shrinking to it gives an average above \(a\). Therefore
\[
\widehat K_i(y)=\|q^i_y\|_\infty
\quad\text{on every density fiber},
\]
including the extended value \(+\infty\). It follows that, for every Borel
set \(A\subseteq\mathbb R\),
\[
Q^i_y(A)\leq\widehat K_i(y)\lambda(A)
\quad\text{on the full-measure set of density fibers}.
\]
The two random variables \(\widehat K_0(Y_0)\) and
\(\widehat K_\infty(Y_\infty)\) agree almost surely with the caps in the
definition of \(\mathcal D_{d,R,\eta}\). Values on bad conditioning fibers
are irrelevant to their expectations, so
\[
\mathbb E\widehat K_0(Y_0)\leq\bar\kappa_0,
\qquad
\mathbb E\widehat K_\infty(Y_\infty)\leq\bar\kappa_\infty.
\]
Because both right-hand sides are finite, the two caps are finite almost
surely. All later fiberwise products may therefore be evaluated on the common
full-measure set where the density, support, and finite-cap properties hold.

It remains to justify that the events being disintegrated are Borel for every
allowed endpoint convention. Every bounded interval \(J\) is sigma-compact;
choose compact sets \(K_n\uparrow J\). For each \(n\),
\[
Z_n:=\{(\alpha,\theta)\in[-R,R]^d\times K_n:
\phi_\alpha(\theta)=0\}
\]
is compact, and its coefficient projection is compact. Hence
\(H_{d,J}=\bigcup_n\operatorname{proj}_\alpha Z_n\) is Borel. Empty and
singleton pieces are included directly. Borel sections of these events are
therefore legitimate inputs to disintegration; no measurable-selection claim
is needed.

For marginal-almost every support-compatible \(y\), the inner event section is
\([-R,R]\cap s_0(J;y)\), and the outer section is
\([-R,R]\cap s_\infty(J;y)\). Since the corresponding conditional kernel is
supported on \([-R,R]\), replacing either section by its full pivot image
changes its conditional probability by zero, while intersecting with the cube
can only reduce Lebesgue length. This is the exact object-to-target bridge
used below; there is no transformed or surrogate event.

### Block G4: Conditional chart probabilities

Apply Blocks G1 and G3 to \(J=I_0\). Disintegration, conditional density
domination, and the mean cap give
\[
\begin{aligned}
\mu(H_{d,I_0})
&=\int Q^0_y((H_{d,I_0})_y)\,\mu_{Y_0}(dy)\\
&\leq\int \widehat K_0(y)\lambda(s_0(I_0;y))\,\mu_{Y_0}(dy)\\
&\leq B_0(d,R)|I_0|\,\mathbb E\widehat K_0(Y_0)\\
&\leq\bar\kappa_0B_0(d,R)|I_0|.
\end{aligned}
\]
Using the distinct kernel conditioned on \(Y_\infty\), Blocks G2 and G3 give
separately
\[
\mu(H_{d,I_+})
\leq\bar\kappa_\infty B_\infty(d,R)|I_+|,
\qquad
\mu(H_{d,I_-})
\leq\bar\kappa_\infty B_\infty(d,R)|I_-|.
\]
The random caps need not be bounded uniformly over conditioning values: each
cap is integrated once, and its primitive mean bound is exactly the required
control. When a chart piece is empty or singleton, its image has zero
Lebesgue measure, so its root event has probability zero. Tangencies and
multiple roots do not change the section equality and require no
transversality.

For \(d=1\), both conditionings are the one-point conditioning, both chart
kernels are the law of the sole coefficient, and all three calculations
remain valid with the same density and with \(B_0=B_\infty=1\).

### Block G5: Three-piece union and exact maximum

The parameter partition gives the exact event identity
\[
H_{d,I}=H_{d,I_0}\cup H_{d,I_+}\cup H_{d,I_-}.
\]
The events need not be disjoint, so one finite union bound is the only loss.
Block G4 yields
\[
\mu(H_{d,I})
\leq \bar\kappa_0B_0|I_0|
+\bar\kappa_\infty B_\infty(|I_+|+|I_-|).
\]
With \(A=\bar\kappa_0B_0\), \(C=\bar\kappa_\infty B_\infty\), and the three
nonnegative piece lengths,
\[
A|I_0|+C(|I_+|+|I_-|)
\leq\max\{A,C\}(|I_0|+|I_+|+|I_-|)
=M_\eta(d,R)|I|.
\]
This proves the exact weighted bound and the exact maximum requested by the
setting; no sum \(A+C\) is substituted.

### Block G6: Suprema and the polynomial bridge

If both indexing sets in the definition of
\(C_{\mathcal D_{d,R,\eta}}\) are nonempty, divide Block G5 by \(|I|>0\) and
take the interval and law suprema to obtain
\(C_{\mathcal D_{d,R,\eta}}\leq M_\eta(d,R)\). If either indexing set is
empty, the same conclusion follows from the setting's explicit value-zero
convention; no witness or cap threshold is used.

The public specialization is a same-target scalar comparison. Since
\(\bar\kappa_0,\bar\kappa_\infty\leq\bar\kappa_*\), \(1\leq d\), and
\(d(d-1)\leq d^2\),
\[
\begin{aligned}
\bar\kappa_0B_0(d,R)
&\leq\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd(d-1)
\leq P_\eta(d,R),\\
\bar\kappa_\infty B_\infty(d,R)
&\leq\bar\kappa_*+\frac{\bar\kappa_*}{2}Rd(d-1)
\leq\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2
=P_\eta(d,R).
\end{aligned}
\]
Taking the maximum preserves this inequality. Every coefficient is displayed,
the comparison is pointwise for all \(d\geq1,R\geq1\), and fixed \(\eta\)
contains no hidden \(d,R\) dependence.

### Block G7: Exact indexed witness membership

The membership proof is independent of Blocks G1-G6.

- If \(d=1\), the sole coefficient is uniform on \([-R,R]\). Both empty-
  conditioning kernels are this law and both caps equal \(1/(2R)\).
- If \(d=2\), the two endpoint coefficients are independent uniforms on
  \([-R,R]\). Conditioning on the other endpoint leaves either pivot uniform,
  so both caps again equal \(1/(2R)\).
- If \(d\geq3\), the non-\(\alpha_0\) coordinates generate
  \(\sigma(S,U_\infty)\), while \(U_0\) is independent of this sigma-field;
  similarly, the non-\(\alpha_{d-1}\) coordinates generate
  \(\sigma(S,U_0)\), while \(U_\infty\) is independent. Thus each endpoint
  conditional kernel is exactly \(\mathrm{Unif}[-R,R]\), even though the law
  is ambiently singular and, for \(d\geq4\), the middle coordinates are
  dependent.

All witness coefficients lie in \([-R,R]\). Because \(R\geq1\), the separate
clause hypothesis gives
\[
K_0=K_\infty=\frac1{2R}\leq\frac12
\leq\bar\kappa_0,\bar\kappa_\infty.
\]
The witness therefore satisfies every item in the exact class definition.
This threshold proves only nonemptiness and has no dependency path into the
general bound.

### Assembly

Blocks G1-G3 are independent producers. Their outputs compose in Block G4;
Block G4 feeds the finite union and exact weighted maximum in G5; G5 feeds the
two suprema and the explicit polynomial bridge in G6. This proves both lines
of the exact root-hitting claim, including empty-index and degree-one
conventions. Independently, G7 proves the separately thresholded nonemptiness
clause. No generated condition is assumed before it is produced, no
probability, horizon, or norm upgrade occurs, and no baseline theorem is
invoked as proof authority.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G0: Quantifier and partition freeze | Fixes the exact law, interval, support, chart, endpoint, and empty-index conventions | Direct assembly role | `setting.md` | `assump:compact-parameter-domain`; `assump:indexed-regime`; `assump:compact-cube-support` | None at theorem-diagnostic level |
| G1: Inner sweep | Produces the exact inner pivot-image length | `step_001` | G0 | `assump:indexed-regime`; `assump:compact-cube-support` | None at theorem-diagnostic level |
| G2: Two outer sweeps | Produces the exact positive- and negative-chart pivot-image lengths | `step_002` | G0 | `assump:indexed-regime`; `assump:compact-cube-support` | None at theorem-diagnostic level |
| G3: Measurable cap and Borel sections | Makes the random caps measurable, proves density domination, and legalizes disintegration of every chart event | `step_003` | G0 | All four setting assumptions, especially `assump:mean-endpoint-conditional-caps` | None at theorem-diagnostic level |
| G4: Conditional chart bounds | Converts G1-G3 into the three mean-cap probability estimates | `step_004` | G1; G2; G3 | `assump:indexed-regime`; `assump:compact-cube-support`; `assump:mean-endpoint-conditional-caps` | None at theorem-diagnostic level |
| G5: Weighted union and maximum | Produces the exact per-law, per-interval two-chart estimate and \(M_\eta\lvert I\rvert\) | `step_005` | G0; G4 | `assump:compact-parameter-domain`; `assump:indexed-regime` | None at theorem-diagnostic level |
| G6: Suprema and polynomial | Produces \(C_{\mathcal D}\leq M_\eta\leq P_\eta\), including empty indices and no hidden dependence | `step_006` | G5 | `assump:indexed-regime` | None at theorem-diagnostic level |
| G7: Witness membership | Proves indexed nonemptiness under only the separate \(1/2\) clause | `step_007` | Explicit witness definitions; independent of G1-G6 | `assump:indexed-regime`; separate theorem-clause threshold | None at theorem-diagnostic level |
| Final assembly | Conjoins G6 and G7 without importing the witness threshold into the bound | Direct assembly role | G6; G7 | Exact theorem quantifiers | None at theorem-diagnostic level |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Independent producer for G4 | Differentiate \(s_0\), prove the exact derivative and image-length bound for arbitrary endpoints, and handle empty/singleton pieces and \(d=1\) | Same pivot image is consumed by G4 |
| `step_002` | G2 | Independent producer for G4 | Justify division on both outer signs, differentiate \(s_\infty\), prove the two same-side image bounds, and handle approach to \(\pm1\) and \(d=1\) | The two outer components remain separate |
| `step_003` | G3 | Independent producer for G4 | Prove the rational-interval cap formula, a.s. equality to the conditional \(L^\infty\) cap, Borel root events, Borel sections, and legal disintegration | Highest-risk local measure-theory step, but its interface is complete and source-adequate |
| `step_004` | G4 | Consumes `step_001`, `step_002`, `step_003`; produces for `step_005` | Apply each matching kernel, density domination, and tower property using only mean caps | Must not conflate the inner and outer conditioning fields |
| `step_005` | G5 | Consumes `step_004`; produces for `step_006` | Prove the event union, audit endpoint allocation, apply finite subadditivity, and retain the weighted maximum | Event overlap is allowed; chart lengths are additive |
| `step_006` | G6 | Consumes `step_005`; final bound use | Divide by positive length, take both suprema, enforce the value-zero empty convention, and prove both termwise polynomial inequalities | Fixed \(\eta\); no \(1/2\) threshold |
| `step_007` | G7 | Independent producer for final nonemptiness use | Compute both conditional kernels in the three degree regimes and verify exact class membership and support | Singular/dependent middle blocks are allowed; threshold remains isolated |

## Dependency And Assumption Audit

| Theorem-facing condition or output | Provenance classification | Producer or primitive source | Consumers | Audit result |
| --- | --- | --- | --- | --- |
| Compact source domain and all positive-length source intervals | primitive condition | `assump:compact-parameter-domain` | G0; G3; G5; G6 | Supplies bounded Borel intervals and the exact interval supremum; no interval family is narrowed |
| \(d\geq1\), \(R\geq1\), and fixed finite \(\eta\) independent of \(d,R\) | primitive condition | `assump:indexed-regime` | All blocks | Quantifier order and fixed-parameter dependence are preserved |
| Monicity and cube support | primitive condition | `assump:compact-cube-support` | G1; G2; G3; G4 | Supports the exact pivot identities, derivative controls, compact event projection, and conditional pivot support |
| A.s. endpoint conditional absolute continuity and the two mean caps | primitive condition | `assump:mean-endpoint-conditional-caps` | G3; G4 | These are exactly the class assumptions; no a.s. uniform cap or joint density is added |
| Measurable representatives \(\widehat K_0,\widehat K_\infty\) and Borel event sections | accepted-sketch derived output | G3 / `step_003` | G4 | Produced before consumption; null-fiber version changes integrate to zero |
| Inner and outer image-length controls | accepted-sketch derived outputs | G1 / `step_001`; G2 / `step_002` | G4 | Exact same-pivot interfaces; no surrogate set |
| Three chart probability estimates | accepted-sketch derived outputs | G4 / `step_004` | G5 | Each uses its own earlier kernel and mean-cap producer |
| Weighted estimate and exact maximum | accepted-sketch derived output | G5 / `step_005` | G6; final theorem | Finite union only; no hidden generated condition |
| Class supremum and polynomial specialization | accepted-sketch derived output | G6 / `step_006` | Final theorem | Empty indices handled by the primitive convention; no nonemptiness premise is assumed |
| Separate \(1/2\) cap threshold | primitive local theorem-clause hypothesis | Formalized goal | G7 only | No dependency path into G1-G6 |
| Witness membership | accepted-sketch derived static certificate | G7 / `step_007` | Final nonemptiness clause | Exact law and exact class are compared; membership is proved, not assumed |

There is no local conditional hypothesis consumed by the unconditional bound and no
missing derived-condition bridge. The dependency graph is acyclic:
`(step_001, step_002, step_003) -> step_004 -> step_005 -> step_006`, with
`step_007` independent.

## Citation And Tool Audit

| Source, fact, or tool | Current-branch objects and role | Assumptions to discharge | Conclusion needed | Source-convention and object-target compatibility | Affected block / Step ID | Audit status |
| --- | --- | --- | --- | --- | --- | --- |
| Balcan et al., *Invited Open Problem*, PMLR 336 (2026), stable locator `https://proceedings.mlr.press/v336/balcan26a.html` | Source model, compact parameter domain, law/interval suprema, and baseline comparison | None for a proof theorem; this source fixes the problem convention | No external conclusion is consumed | The source writes coefficient tuples in descending display order while the branch stores them ascending; the polynomial and coefficient roles are identical, and all branch calculations use the declared ascending convention | G0; claim scope | Provenance only; no black-box proof use |
| Balcan, Dick, and Pegden, *Semi-bandit Optimization in the Dispersed Setting*, arXiv:1904.09014, Appendix Theorem 18 | Historical fixed-root sweep architecture and closest baseline | Its joint-density or affine-latent hypotheses are not assumed and need not be discharged | No theorem constant or theorem conclusion is consumed | Monicity, fixed-root coefficient sweep, cube support, and interval hitting are compatible; ambient volume, latent representation, nondegeneracy, and opaque \(K(d,R,f)\) outputs are known non-outputs for this branch | Roadmap provenance for G1-G2 | Valid provenance; direct branch derivations replace the cited theorem interface |
| Mean-value theorem and connectedness of continuous images of real intervals | \(s_0\), \(s_\infty\), and arbitrary-endpoint chart intervals | Differentiability on each connected chart and the displayed uniform derivative bounds | \(\lambda(s_i(J))\leq B_i\lvert J\rvert\) | Exact Euclidean coordinate, Lebesgue length, and same pivot image; open endpoints are handled by diameter/closure and do not change length | G1 / `step_001`; G2 / `step_002` | Current-notation standard facts; raw-assumption path is explicit |
| Standard-Borel regular conditional probability | Pivots \(\alpha_0,\alpha_{d-1}\) and Euclidean conditioning tuples, including \(\mathbb R^0\) at \(d=1\) | Borel probability law on Euclidean product spaces | Kernels and the disintegration identity for Borel chart events | Same pivot, same Lebesgue reference, and same conditioning coordinates as the class definition | G3-G4 / `step_003`, `step_004` | Current-notation standard fact; convention compatible |
| Countable rational-interval formula plus Lebesgue differentiation | A conditional kernel \(Q_y\) that is a.s. absolutely continuous | Primitive a.s. conditional absolute continuity | Measurable \(\widehat K(y)\), equality to \(\lVert q_y\rVert_\infty\), and \(Q_y(A)\leq\widehat K(y)\lambda(A)\) | Same one-dimensional pivot and Lebesgue measure; no jointly measurable density version or transformed object is required | G3 / `step_003` | Direct current-notation proof path exposed; null fibers harmless |
| Sigma-compact exhaustion and compact projection | Zero set of continuous \((\alpha,\theta)\mapsto\phi_\alpha(\theta)\) over the compact coefficient cube and bounded interval pieces | Compact cube support and bounded Borel intervals | Borel \(H_{d,J}\) and Borel sections for every endpoint convention | Same root event as the theorem; projection is taken only after compact exhaustion, avoiding an unsupported general analytic-set-to-Borel claim | G3 / `step_003` | Direct topological derivation; source convention compatible |
| Conditional density domination and tower property | Exact pivot-image event sections under their matching kernels | G1-G3 outputs and primitive mean caps | Three chart probability controls | No conditioning-field swap; support intersection changes conditional probability by zero | G4 / `step_004` | Current-notation standard integration; exact object mapping |
| Finite subadditivity and weighted scalar maximum | Three chart events and their lengths | Exact chart partition and G4 controls | Weighted estimate and \(M_\eta\lvert I\rvert\) | Same event and same length metric; event disjointness is not assumed | G5 / `step_005` | Direct algebra; no citation needed |
| Supremum monotonicity and pointwise polynomial inequalities | Same root-hitting ratio, \(M_\eta\), and \(P_\eta\) | \(\lvert I\rvert>0\), fixed \(\eta\), \(d\geq1\) | Class bound and public polynomial bridge | No norm, mode, probability, population, baseline, or target change | G6 / `step_006` | Direct algebra; no citation needed |
| Independence and uniform conditional kernels | Exact witness variables \(U_0,U_\infty,S\) | Explicit construction, \(R\geq1\), separate cap threshold | Support and both endpoint conditional caps | Produced law is exactly the consumed witness; ambient singularity is not a mismatch | G7 / `step_007` | Direct calculation; no citation needed |

No cited theorem supplies a theorem-critical conclusion. The only external paper
references are source/provenance references, and all theorem-facing mathematical tools
have an exact current-notation raw-assumption-to-output path.

## Quantitative Dependence Audit

- Exposed variables: \(d\), \(R\), \(\bar\kappa_0\),
  \(\bar\kappa_\infty\), \(|I_0|\), \(|I_+|\), \(|I_-|\), and \(|I|\).
  The class-level statement exposes \((d,R,\eta)\).
- Hidden constants: none. No constant may depend on \(d,R,\mu,I,\Theta\), a
  conditioning value, a conditional-density version, or an undisplayed law
  parameter.
- Fixed quantities: \(\eta\) and \(\Theta\) are fixed before \(d,R\) vary.
  The bound itself is independent of \(\Theta\).
- Probability mode: deterministic inequalities for each \(\mu\)-probability,
  followed by deterministic suprema. There is no high-probability event,
  confidence parameter, expectation-to-tail conversion, or conditioning in the final
  theorem.
- Horizon mode: static and interval-uniform. There is no time, stopping,
  asymptotic, all-time, or limiting upgrade.
- Norm/metric mode: Lebesgue length for pivot images and source intervals;
  conditional \(L^\infty(\mathbb R)\) norms for pivot densities; ordinary absolute
  value in derivatives.
- Auxiliary parameters and tolerances: none.
- Public specialization bridge: no auxiliary choice is made. The bridge is exactly
  \(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and
  \(d(d-1)\leq d^2\), applied term by term. No term is dropped, absorbed
  asymptotically, or moved into a hidden constant.
- Uniform-polynomial audit: the coefficient pair
  \((\bar\kappa_*,\bar\kappa_*/2)\) depends only on fixed \(\eta\), and the
  monomials are \(d\) and \(Rd^2\). At \(\bar\kappa_*=0\), the formula becomes
  the zero polynomial and the same displayed per-law and empty-index inequalities
  remain the complete argument; there is no concealed rate change.
- Empty-index audit: the per-law proof is used only for existing \(\mu,I\). If the
  law class or interval family is empty, the exact setting convention directly gives
  \(C_{\mathcal D}=0\).
- Nonemptiness audit: \(1/(2R)\leq1/2\) uses \(R\geq1\) and appears only in
  G7. No \(1/2\) lower cap is needed for the bound or polynomial bridge.
- Baseline-reduction/invariance audit: no theorem-facing recovery or zero-defect
  conclusion from the 2020 baseline is inherited. The relevant exact specialization is
  \(d=1\), where \(s_0=s_\infty=-\theta\), \(B_0=B_\infty=1\), both
  conditioning tuples are empty, and the original root-hitting conclusion remains
  valid without a remainder. The conservative public inequality \(M_\eta\leq P_\eta\)
  controls the same target and does not replace an inherited baseline theorem.

## Scope And Closure Certificate

All rows are static. Consequently, there is no recurrent, limiting, all-time, or
otherwise accumulated defect requiring a potential or finite budget. Each row still
records the exact one-shot relation and source that make its exported interface
nonvacuous.

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Inner image length \(\lambda(s_0(J;y))\leq B_0\lvert J\rvert\) | Structural upper bound feeding inner probability | Every \(d\geq1,R\geq1\), support-compatible \(y\), and inner interval \(J\) | \(\lvert s_0'\rvert\leq d+R\sum_{j=1}^{d-1}j=B_0\), then Lipschitz image length | Monicity plus coefficient cube support | Coefficient derivative terms and endpoint conventions | One static finite sum; no accumulated forcing | structural lower/upper comparison | Direct derivative in the declared monic convention; \(\lvert\theta\rvert\leq1\); no allowed boundary excluded | Primitive support has exactly the upper-size content needed; no lower/sign claim is inferred | Produced image and consumed pivot section differ only by cube intersection; conditional support makes the probability residual zero | step-local | Primitive assumptions -> G1 -> G4; target bound is not assumed | N/A: no iterative state; \(d=1\) is traced directly | Termwise triangle domination and exact triangular sum | `assump:indexed-regime`; `assump:compact-cube-support` | None before G1 | Empty/singleton \(J\), \(\theta=\pm1\), and \(d=1\) pass | Without cube support, the displayed \(d,R\) derivative control can fail |
| Two outer image lengths \(\lambda(s_\infty(J;y))\leq B_\infty\lvert J\rvert\) | Structural upper bounds feeding both outer probabilities | Same indexed scope, separately on each outer connected interval | Exact pivot division; \(\lvert s_\infty'\rvert\leq1+R\sum_{j=0}^{d-2}(d-1-j)=B_\infty\) | Nonzero outer coordinate, monicity, and cube support | Negative sign, inverse powers, open boundary, coefficient terms | Two finite parallel uses; no reuse or accumulated defect | structural lower/upper comparison | Direct algebra on \(\theta>1\) and \(\theta<-1\); boundary points assigned to inner chart | \(\lvert\theta\rvert^{j-d}\leq1\) and cube support give the exact upper claim on both signs | Each same-side image is the consumed pivot section up to a conditional-support intersection; zero probability residual | step-local | Primitive assumptions -> G2 -> G4; no outer estimate is assumed | N/A: no update; first allowed points approach \(\pm1\) with the bound active | Termwise absolute domination and exact sum \(d(d-1)/2\) | `assump:indexed-regime`; `assump:compact-cube-support` | None before G2 | Negative chart, limits at \(\pm1\), empty/singleton \(J\), and \(d=1\) pass | Without legal division, monicity, or support, the outer interface fails |
| Measurable caps and density domination | Generated measurable wrapper feeding disintegration | Each endpoint kernel for every allowed law; marginal-a.s. fibers | \(\widehat K_i(y)=\sup_{J\in\mathscr J_{\mathbb Q}}Q^i_y(J)/\lvert J\rvert=\lVert q^i_y\rVert_\infty\), and \(Q^i_y(A)\leq\widehat K_i(y)\lambda(A)\) | Countable kernel evaluations, primitive a.s. absolute continuity, Lebesgue differentiation | Density-version ambiguity, null fibers, possible extended values | One conditional integral; null-fiber defect has zero marginal mass | structural lower/upper comparison | Standard-Borel kernel plus current-notation rational-interval/differentiation proof; no bad fiber is consumed | A.s. absolute continuity supplies exactly the density upper-control class; the mean cap then controls its single use | \(\widehat K_i(Y_i)=K_i^\mu\) a.s.; version residual is marginal-null and integrates to zero | step-local | Primitive kernel -> G3 -> G4; root estimate is not used to define the cap | N/A: static; at \(d=1\) the conditioning space is the one-point space | Countable supremum gives measurability; differentiation gives equality; density integration gives domination | `assump:mean-endpoint-conditional-caps` and Euclidean Borel setup | \(\widehat K_i\) produced in G3 | Null conditioning fibers and \(d=1\) pass; infinite values on null fibers do not affect expectation | Without absolute continuity an atom can charge a zero-length image; without measurability the tower step is ill-posed |
| Borel root events and sections | Measurability interface needed for legal conditional integration | Every bounded chart interval with arbitrary endpoint convention | \(H_{d,J}=\bigcup_n\operatorname{proj}_\alpha Z_n\) for compact zero sets \(Z_n\) | Continuity of \(\phi\), compact cube, sigma-compact interval | Nonclosed interval pieces and conditioning-dependent images | One static countable union; no accumulated error | algebraic coupling | Direct compact-exhaustion/projection argument in the exact coefficient/root convention | Compact projection supplies Borelness; it does not assert probability control by itself | Borel section equals cube-intersected pivot image; support removes the intersection in conditional probability | step-local | Primitive topology -> G3 sections -> G4; no later probability bound is assumed | N/A: no state or update | Exact zero-set projection and exact pivot identity | Compact source and coefficient support; monic polynomial definition | Borel event/section produced in G3 | Empty, singleton, open, closed, and half-open pieces; tangencies and multiple roots pass | Without a Borel interface, disintegration of the event would be unsupported |
| Three chart probability controls | Derived event upper bounds feeding theorem closure | One use for inner chart and two parallel outer uses for each allowed \(\mu,I\) | \(Q_y(H_y)\leq\widehat K_i(y)\lambda(s_i(J;y))\), integrate, then \(\mathbb E\widehat K_i\leq\bar\kappa_i\) | Matching kernel, image-length certificate, and primitive mean cap | Random unbounded caps and distinct conditioning sigma-fields | Each cap integrated once; no persistent or adversarial forcing | algebraic coupling and structural lower/upper comparison | G1-G3 accepted interfaces plus primitive mean caps; no chart is excluded | Mean upper cap is adequate because only one expectation is taken; no a.s. cap is claimed | Event-to-image residual is zero under conditional support; same probability object is integrated | step-local | G1+G3 -> inner; G2+G3 -> outer; all precede G5 | N/A: static; \(d=1\) uses the same sole-coefficient kernel | Fiber density domination, image-length comparison, and tower property | All law-membership assumptions | Image lengths, measurable caps, Borel sections | Zero-length pieces, null fibers, tangencies, multiple roots, and \(d=1\) pass | Removing either mean cap leaves its chart without a class-uniform coefficient |
| Exact weighted union and \(M_\eta\lvert I\rvert\) | Finite theorem-closure block | Every allowed interval, once | Event union plus \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\) | Exact chart partition and three probability controls | Event overlap and boundary allocation | One finite union; overlap loss does not recur | algebraic coupling | G0 partition and G4 controls; \(\pm1\) allocated only to inner chart | Length weights supply exactly the maximum comparison; no sign/lower source is needed | The event union and length partition concern the exact target interval; no transfer residual | step-local | G4 -> G5 -> G6; final event is not assumed | N/A: no update | Finite subadditivity followed by exact weighted maximum | `assump:compact-parameter-domain`; `assump:indexed-regime` | Three chart probability controls | Empty/singleton pieces, arbitrary endpoints, overlapping events, and \(d=1\) pass | Without the weighted relation, only an incorrect or weaker summed interface would remain |
| Class supremum including empty indices | Scope bridge from per-law estimates to exact class constant | Every indexed \((d,R)\) | Divide by \(\lvert I\rvert>0\), then take both suprema; use value zero if either index set is empty | Uniform G5 bound independent of \(\mu,I\) | Potential empty class or empty interval family | Pointwise inequality at each index; no cross-index accumulation | structural lower/upper comparison | G5 and the exact definition in `setting.md`; no nonemptiness assumption | Uniform scalar upper bound has the exact claim class needed for supremum monotonicity | Produced and consumed ratio is identical; zero residual | step-local | G5 -> G6 -> final; finiteness of \(C\) is never assumed | N/A: static | Supremum monotonicity or direct value-zero convention | Exact class/interval definitions | G5 per-law bound | Empty classes, empty interval families, and \(d=1\) pass | Without the explicit empty convention, the declared value at an empty index would be ambiguous |
| Polynomial \(M_\eta\leq P_\eta\) | Public quantitative specialization | Pointwise for all \(d\geq1,R\geq1\), fixed \(\eta\) | Bound each chart constant using \(\bar\kappa_i\leq\bar\kappa_*\), \(1\leq d\), and \(d(d-1)\leq d^2\) | Fixed cap parameters and elementary scalar order | Hidden dependence, outer constant \(1\), and quadratic term | One same-index comparison; no asymptotic or accumulated residual | structural lower/upper comparison | `assump:indexed-regime` and G5; no large-parameter threshold | Sources give exact pointwise upper content for every allowed boundary | Same root-hitting scalar is controlled; displayed dominance leaves zero residual | step-local | Primitive fixed-\(\eta\) condition + G5 -> G6 -> final | N/A: no update; \(d=1,R=1,\bar\kappa_*=0\) traced | Exact termwise dominance; no absorption prose | Fixed \(\eta\), \(d\geq1\), \(R\geq1\) | \(M_\eta\) from G5 | \(d=1\), \(R=1\), and zero cap boundary pass | If \(\eta\) hid index dependence, uniform polynomiality would fail |
| Exact \(d=1\) specialization | Boundary/baseline-specialization certificate | Every \(R\geq1\) and allowed sole-coefficient law | \(s_0=s_\infty=-\theta\), \(B_0=B_\infty=1\), one empty-conditioning density | Empty-sum convention and sole pivot coefficient | Possible accidental use of higher-degree coordinates or distinct kernels | Static specialization; no defect or remainder | algebraic coupling | Setting definitions and G1-G7; no degree lower bound beyond one | The same mechanisms remain active and prove the original conclusion, not a surrogate | Produced pivot, density, event, and target are identical | step-local | Exact definitions -> every applicable block; no circular baseline claim | N/A: no process; the degree-one stationary specialization already satisfies the same interfaces | Substitute \(d=1\) in every displayed identity and bound | `assump:indexed-regime`; sole-coefficient density | Same block outputs specialized to \(d=1\) | Arbitrary endpoints, \(\pm1\), empty outer/inner pieces, and threshold equality pass | A proof needing a nonempty higher-degree sum would omit an allowed theorem boundary |
| Indexed witness membership | Static nonemptiness/support certificate | Every \(d\geq1,R\geq1\) under separate \(\bar\kappa_0,\bar\kappa_\infty\geq1/2\) clause | Exact conditional kernels are uniform; \(1/(2R)\leq1/2\leq\bar\kappa_i\) | Independent uniform endpoint innovations and cube-supported middle block | Conditioning revelation risk, ambient singularity, and middle dependence | One construction at each index; no membership defect accumulates | structural lower/upper comparison | Explicit witness variables; all degree branches included; no boundary excluded | Independence supplies exactly the conditional-density/support content required for membership | Produced law is the consumed witness; object-target residual is zero | step-local | Explicit variables -> G7 -> final nonemptiness; no path to G1-G6 | N/A: static; first degree branches \(d=1,2,3\) are computed explicitly | Exact conditional-law computation and threshold chain | `assump:indexed-regime`; separate theorem-clause threshold | Explicit witness law | \(d=1,2,3\), \(d\geq4\), \(R=1\), singularity, dependence, and cap equality pass | Without independent endpoint innovations, conditioning could reveal a pivot and membership could fail |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| \(\lambda(s_0(J;y))\leq B_0\lvert J\rvert\) | G1 / `step_001`, direct derivative | Monicity, \(\lvert\alpha_j\rvert\leq R\), \(\lvert\theta\rvert\leq1\), exact coefficient ordering | Every coefficient term controlled; no empirical, persistent, or event-level defect | Conditional target section is the image intersected with support; support gives zero probability residual | \(\lvert s_0'\rvert\leq d+R\sum j=B_0\), then Lipschitz image length | N/A: upper bound needs no positive margin | G4 / `step_004` | valid |
| Two interfaces \(\lambda(s_\infty(J;y))\leq B_\infty\lvert J\rvert\) | G2 / `step_002`, direct algebra and derivative | Monicity, cube support, \(\lvert\theta\rvert\geq1\), separate connected signs | Inverse powers and signs controlled; no cross-zero interval or uncontrolled term | Same-side section is support-intersected image; zero conditional-probability residual | \(\lvert s_\infty'\rvert\leq1+R\sum(d-1-j)=B_\infty\) | N/A: this upper estimate uses no positive margin | G4 / `step_004` | valid |
| Measurable \(\widehat K_i\) with Borel-set domination | G3 / `step_003`, kernel cap formula | Standard-Borel RCD, primitive a.s. absolute continuity, rational intervals, Lebesgue differentiation | Version and bad-fiber defects are marginal-null; no uncontrolled integrated term | \(\widehat K_i(Y_i)=K_i^\mu\) a.s.; zero expectation residual | Countable supremum -> measurable cap; differentiation -> exact \(L^\infty\) value; density -> domination | Primitive mean-cap level \(\bar\kappa_i\) | G4 / `step_004` | valid |
| Borel root events and exact chart sections | G3 / `step_003`, compact exhaustion and pivot identities | Compact coefficient cube, bounded interval, continuity of \(\phi\) | Nonclosed endpoints handled by sigma-compact union; no analytic non-Borel projection is used | Section/image support intersection is exact and probability-neutral | Compact zero set -> compact projection; countable union -> Borel | N/A: measurability requires no quantitative margin | G4 / `step_004` | valid |
| Three mean-cap chart probability bounds | G4 / `step_004` | G1-G3 outputs and \(\mathbb E K_i\leq\bar\kappa_i\) | Random cap can be unbounded pointwise but is integrable; two conditioning fields remain separate; no uncontrolled class | Root event and pivot-image conditional event are the same target under support | Fiber domination, image bound, one expectation, primitive mean inequality | Exact primitive cap parameters; no additional threshold | G5 / `step_005` | valid |
| Exact weighted estimate and \(M_\eta\lvert I\rvert\) | G5 / `step_005` | Three chart bounds, exact partition, nonnegative lengths | Event overlap controlled by one union bound; endpoint allocation explicit | Union is the exact target event and lengths sum to the exact target length | \(Ax+C(y+z)\leq\max\{A,C\}(x+y+z)\) | N/A: exact nonnegative length comparison uses no margin | G6 / `step_006`; final theorem | valid |
| \(C_{\mathcal D}\leq M_\eta\leq P_\eta\) | G6 / `step_006` | G5, fixed \(\eta\), \(d\geq1\), exact empty-index convention | No hidden, empirical, asymptotic, probability, horizon, or norm defect | Same scalar root-hitting ratio and same target constant; zero residual | Supremum monotonicity plus displayed termwise inequalities | Fixed displayed \(\bar\kappa_*\); no unstated slack | Final root-hitting claim | valid |
| \(\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta}\) | G7 / `step_007` | Exact witness variables, endpoint independence, cube support, \(R\geq1\), separate cap threshold | Conditioning revelation excluded by independence; singular/dependent middle block is irrelevant; no uncontrolled membership item | Produced and consumed law are identical; support and kernels checked on that law | \(K_0=K_\infty=1/(2R)\leq1/2\leq\bar\kappa_i\) | Independent uniform endpoint density and separately stated \(1/2\) threshold | Final nonemptiness clause only | valid |

No exported interface depends on a transformed, weighted, preconditioned, whitened,
reference-modified, population, no-error, or otherwise surrogate object. There is no
uncontrolled residual class and no missing margin or threshold source.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Inner image-length certificate | G1 / `step_001` | G4 / `step_004`; inner term of final weighted bound | `step_001 -> step_004 -> step_005 -> step_006 -> final` | derived | valid |
| Positive and negative outer image-length certificates | G2 / `step_002` | G4 / `step_004`; outer terms of final weighted bound | `step_002 -> step_004 -> step_005 -> step_006 -> final` | derived | valid |
| Measurable endpoint caps and density domination | G3 / `step_003` | G4 / `step_004` | `assump:mean-endpoint-conditional-caps -> step_003 -> step_004 -> later bound blocks` | derived | valid |
| Borel chart events and sections | G3 / `step_003` | G4 / `step_004` | `setting definitions + compact support -> step_003 -> step_004` | derived | valid |
| Three chart probability controls | G4 / `step_004` | G5 / `step_005`; first line of final theorem | `(step_001, step_002, step_003) -> step_004 -> step_005` | derived | valid |
| Exact weighted bound and maximum \(M_\eta\lvert I\rvert\) | G5 / `step_005` | G6 / `step_006`; per-law theorem | `step_004 -> step_005 -> step_006 -> final` | derived | valid |
| Class-supremum and polynomial control | G6 / `step_006` | Final root-hitting theorem | `step_005 -> step_006 -> final` | derived | valid |
| Exact witness membership | G7 / `step_007` | Final nonemptiness clause only | `explicit witness + separate threshold -> step_007 -> final`; independent of bound chain | derived | valid |

Every theorem-facing generated output has a producer before all consumers. No closure,
specialization, or final assembly label substitutes for a producer, and no dependency
change is required.

## Early Obstruction And Repair Plausibility

| Obstruction-level check | Diagnostic result | Same-setting repair implication |
| --- | --- | --- |
| Contract contradiction | None. Fixed \(\eta\), all \(d\geq1\), all \(R\geq1\), all class laws, all positive-length source intervals, exact maximum, polynomial, and separate threshold are mutually consistent | No repair needed |
| Theorem-critical mechanism witnesses | Each chart has a direct derivative source; conditional probability has primitive absolute continuity and mean caps; the maximum and polynomial have exact scalar sources; witness membership has independent endpoint innovations | All obligations are `step-local`; no source addition or theorem change needed |
| Source-to-claim adequacy | Upper/support claims are supplied by upper/support sources. No lower, sign, coercivity, nondegeneracy, or support claim is inferred from mere smallness | No repair needed |
| Residual-to-target adequacy | Chart sections are the exact pivot images up to probability-neutral support intersection; cap versions differ only on marginal-null fibers; \(M_\eta\) and \(P_\eta\) control the same scalar; witness law is identical to target | No bridge or target change needed |
| Exported-interface feasibility | Every raw control, defect class, dominance relation, endpoint branch, and consumer is explicit; no fixed, empirical, persistent, event-level, or irreducible term remains | No sketch/interface repair needed |
| Generated-output provenance | The bound chain is acyclic and `step_007` is isolated; no output is consumed before production | No dependency or flow repair needed |
| Mode and dependence upgrade | None. The proof is deterministic/static, fixed-\(\eta\), and uses the declared length and conditional-density norms only | No scope, mode, metric, or rate repair needed |
| Limiting and boundary stress | \(d=1\), \(R=1\), \(\bar\kappa_*=0\), empty indices, null fibers, \(\theta=\pm1\), both outer signs, empty/singleton pieces, tangencies, multiple roots, and every witness degree branch pass | No boundary exclusion or weakened conclusion needed |
| Entry-state and accumulation stress | No process, recursion, invariant, convergence, or repeated forcing exists. Each chart is integrated once and the event union is finite | Entry-State and Scope-Accumulation gates are inapplicable for a specific static reason, not deferred |
| Baseline invariance | No 2020 recovery theorem is inherited. The exact \(d=1\) specialization preserves the original claim, and the public polynomial remains a same-target upper bound | No baseline repair needed |
| Source convention | D1 and D2 supply model/provenance only. All theorem-critical conclusions are proved in the branch's exact monic ordering and Euclidean/Lebesgue convention | No wrapper or source translation needed |
| Idea-level obstruction screen | None. No repair would require changed primitive assumptions, procedure, scope, metric, exposed dependence, success criterion, unsupported source, or weakened conclusion | No candidate idea-level evidence for `/global-proof-review` |

The remaining work is ordinary local proof certification of the seven accepted steps,
not repair of a missing theorem-level mechanism or interface. `step_003` is the most
delicate local unit because it must write the kernel measurability and Borel-section
arguments in full, but its mechanism source, raw-assumption path, exact output, and
consumer are already fixed under the unchanged sketch.

## Global Gaps And Hard Steps

None.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a
cited result, an assumption source, or authority to change any accepted sketch-step
claim, dependency, assumption, output target, generated-output flow, scope, dependence,
or conclusion. Each local derivation must still be independently proved and reviewed in
its assigned `/proof-step` artifact before theorem assembly may use it as evidence.

## Suggested Routing

None

Continue with all seven accepted proof steps. As diagnostic guidance, prioritize
`/proof-step step_003` for the highest-risk measure-theoretic interface while preserving
the accepted dependency graph and exact output target.
