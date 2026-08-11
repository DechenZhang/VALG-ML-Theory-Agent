# Proof Step

## Step Identity

- Sketch attempt: 2
- Step ID: `step_002`
- Unit attempt: 1
- Setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Accepted sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Accepted sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Accepted global diagnostic SHA-256: `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc`
- Accepted global-review SHA-256: `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146`
- Accepted dependency `step_001` proof SHA-256:
  `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`
- Accepted dependency `step_001` review SHA-256:
  `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55`

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: For every tested nondegenerate interval \(I\), prove that
  \(\{a:F_0+\langle a,F\rangle\equiv0\text{ on }I\}\) is empty or a proper affine subspace and has zero
  probability under every admissible law.
- Depends on: `step_001`
- Assumptions used: Primitive: `assump:anchored-derivative-closure`,
  `assump:cube-density-laws`; derived: anchor from `step_001`
- Technical challenge: Handle persistent zero combinations without adding an exclusion assumption and without
  independence.
- Intended proof tool or cited result: Direct affine-linear algebra using translation by \(e_{j_*}\), followed
  by absolute continuity.
- Output target: Law-null persistent-root certificate.
- Rate objective: R2 and R4: no exceptional probability remainder.
- Row-local review status: `PENDING`. Sketch-level acceptance is supplied by the current accepted
  `proof_sketch_review.md`, as required by the workflow contract.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:anchored-derivative-closure`: the fixed index
    \(j_*\in\{1,\ldots,N\}\) is an original random-coefficient coordinate, and \(Q_{j_*}\equiv1\). This
    condition does not assert transversality, simple roots, feature independence, analyticity-based
    continuation, or exclusion of persistent zeros.
  - `assump:cube-density-laws`: every admissible
    \(\mu\in\mathcal D_{N,R,\kappa}\) has one full \(N\)-dimensional joint Lebesgue density \(f_\mu\),
    supported on \([-R,R]^N\), with \(\lVert f_\mu\rVert_\infty\leq\kappa\). No product, marginal, or
    conditional density hypothesis is available or used.
- Derived invariants supplied by accepted dependencies:
  - The accepted dependency artifact
    `perspective_2/idea_1/proof_steps/step_001/proof.md`, with the proof digest recorded in
    `Step Identity`, proves the paper-ready Anchor nonvanishing
    Lemma~\ref{lem:step-001-anchor}. Its matching review has the recorded review digest and status
    `ACCEPTED`. The exact dependency conclusion used here is
    \[
    F_{j_*}(\theta)=1
    \qquad\text{for every }\theta\in\Theta,
    \]
    in the original \(N\)-dimensional coefficient coordinates. Although the dependency also proves
    \(\lVert F(\theta)\rVert_2\geq1\) and \(F(\theta)\neq0\), this step uses only the literal coordinate
    identity.
- Local conditional hypotheses: None. Fixing a tested interval \(I\subseteq\Theta\) with \(|I|>0\) and later
  fixing \(\mu\in\mathcal D_{N,R,\kappa}\) only instantiate universal quantifiers. The case
  \(Z_\infty(I)\neq\varnothing\) is a discharged branch of the proof, not a theorem-facing condition.

For such an interval, define the public-facing target set

\[
Z_\infty(I)
:=\left\{a\in\mathbb R^N:
F_0(\theta)+\langle a,F(\theta)\rangle=0
\text{ for every }\theta\in I\right\}.
\]

Thus \(a\in Z_\infty(I)\) means exactly that the setting-defined affine function
\(\phi_a=F_0+\langle a,F\rangle\) is identically zero on the points belonging to \(I\). It imposes no
root-isolation, multiplicity, or continuation condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:anchored-derivative-closure} and accepted Lemma~\ref{lem:step-001-anchor}, for every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), \(Z_\infty(I)\) is empty or, for every \(a^0\in Z_\infty(I)\), equals \(a^0+K_I\), where \(K_I=\bigcap_{\theta\in I}\ker(v\mapsto\langle v,F(\theta)\rangle)\); moreover \(e_{j_*}\notin K_I\), so the nonempty locus is a proper affine subspace and \(a^0+e_{j_*}\notin Z_\infty(I)\). | Identifies the nonempty locus as a translate of the common kernel and proves properness in the literal anchor direction. |
| `unit_002` | lemma | Under accepted Lemma~\ref{lem:step-001-anchor} and Lemma~\ref{lem:step-002-affine-locus}, for every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), \(Z_\infty(I)\) is Borel and has \(N\)-dimensional Lebesgue measure zero, including unbounded nonempty loci and the \(N=1\) empty-or-singleton case. | Separately proves measurable geometric nullity before any probability law is applied. |
| `unit_003` | proposition | Under Assumption~\ref{assump:cube-density-laws} and Lemma~\ref{lem:step-002-lebesgue-null}, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), \(\Pr_{\alpha\sim\mu}[\alpha\in Z_\infty(I)]=0\), using only the one full joint density; the conclusion retains arbitrary correlation and covers the support-cube intersection, empty loci, \(F_0\equiv0\), dependent or constant features, and \(N=1\). | Converts Lebesgue nullity into the exact law-null certificate with no probability remainder. |

Atomic step = no. Affine structure and properness, Borel and Lebesgue nullity, and conversion under the actual
joint law are independent nontrivial obligations, so they are separated into three stable local units.

## Cited Result Applications

No external paper result is used. The accepted dependency, the standard measure-theoretic result used in the
geometric calculation, and every local result used later are restated below in the current notation.

| Result used later | Restated current-notation conclusion | Instantiated objects | Required assumptions and discharge | Later use |
| ----------------- | ------------------------------------- | -------------------- | ---------------------------------- | --------- |
| Accepted Lemma~\ref{lem:step-001-anchor} (Anchor nonvanishing) | Under the dependency's stated Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, \(F_{j_*}(\theta)=1\), \(\lVert F(\theta)\rVert_2\geq1\), and \(F(\theta)\neq0\) for every \(\theta\in\Theta\). | The setting-defined \(F\), fixed original coordinate \(j_*\), and \(\Theta\). | The current accepted dependency proof and matching `ACCEPTED` review have exactly the two SHA-256 digests recorded in `Step Identity`. This step uses only \(F_{j_*}=1\). | Lemmas~\ref{lem:step-002-affine-locus} and \ref{lem:step-002-lebesgue-null}. |
| Tonelli's theorem for coordinate sections | If \(E\subseteq\mathbb R^N\) is Borel and \(N\geq2\), then, after permuting coordinates so \(j_*\) is last, \(\lambda_N(E)=\int_{\mathbb R^{N-1}}\lambda_1(E_\beta)\,d\lambda_{N-1}(\beta)\) for the nonnegative Borel indicator; this remains valid for unbounded \(E\). A singleton has \(\lambda_1\)-measure zero. | The fixed-time anchored graph hyperplane \(H_{\bar\theta}\) and its one-dimensional sections in coordinate \(a_{j_*}\). | The graph is closed, hence Borel; Lebesgue measure is the product measure after a coordinate permutation; nonnegativity permits Tonelli. Singleton nullity follows by covering the point by intervals of arbitrarily small length. | Lemma~\ref{lem:step-002-lebesgue-null}. |
| Lemma~\ref{lem:step-002-affine-locus} (Persistent-root affine translate and anchor exclusion) | \(Z_\infty(I)\) is empty or \(a^0+K_I\), where \(K_I\) is the common kernel and excludes \(e_{j_*}\); every nonempty locus is therefore proper. | The exact persistent-root set in the original coefficient space. | Its statement uses the accepted anchor and the target's anchored primitive condition; nonemptiness is only a case split. | Lemma~\ref{lem:step-002-lebesgue-null} and target-step assembly. |
| Lemma~\ref{lem:step-002-lebesgue-null} (Borel and Lebesgue nullity of the persistent-root locus) | \(Z_\infty(I)\) is Borel and \(\lambda_N(Z_\infty(I))=0\), whether empty, bounded, or unbounded, and also for \(N=1\). | The exact target set and ordinary \(N\)-dimensional Lebesgue measure. | The accepted anchor supplies a unit coefficient in one fixed-time graph; Tonelli's hypotheses are discharged in the lemma. | Proposition~\ref{prop:step-002-law-null} and target-step assembly. |
| Proposition~\ref{prop:step-002-law-null} (Nullity under arbitrary full joint laws) | Every admissible \(\mu\) assigns probability zero to \(Z_\infty(I)\), with no exceptional remainder. | The one actual joint density \(f_\mu\) on \(\mathbb R^N\) and its support cube. | Assumption~\ref{assump:cube-density-laws} supplies the full density, support, and cap; Lemma~\ref{lem:step-002-lebesgue-null} supplies a Borel null set. | Target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Persistent-root affine translate and anchor exclusion).**
\(\label{lem:step-002-affine-locus}\)

Under Assumption~\ref{assump:anchored-derivative-closure} and the accepted Anchor nonvanishing
Lemma~\ref{lem:step-001-anchor}, for every interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\), the set
\(Z_\infty(I)\) is empty or a proper affine subspace of \(\mathbb R^N\). More precisely, define the common
kernel

\[
K_I
:=\bigcap_{\theta\in I}
\ker\!\left(v\longmapsto\langle v,F(\theta)\rangle\right)
=\left\{v\in\mathbb R^N:
\langle v,F(\theta)\rangle=0
\text{ for every }\theta\in I\right\}.
\]

If \(a^0\in Z_\infty(I)\), then

\[
Z_\infty(I)=a^0+K_I,
\qquad
e_{j_*}\notin K_I,
\qquad
a^0+e_{j_*}\notin Z_\infty(I).
\]

**Proof / justification.** For each \(\theta\in I\), let

\[
H_\theta
:=\left\{a\in\mathbb R^N:
F_0(\theta)+\langle a,F(\theta)\rangle=0\right\}.
\]

The pointwise meaning of identically zero gives the exact identity

\[
Z_\infty(I)=\bigcap_{\theta\in I}H_\theta.
\]

This intersection may be indexed by uncountably many points; no finite-rank reduction is being assumed. If it
is empty, the first branch of the target is complete. Suppose it is nonempty and choose
\(a^0\in Z_\infty(I)\). For every \(a\in\mathbb R^N\),

\[
\begin{aligned}
a\in Z_\infty(I)
&\Longleftrightarrow
F_0(\theta)+\langle a,F(\theta)\rangle=0
\quad\text{for every }\theta\in I\\
&\Longleftrightarrow
\langle a-a^0,F(\theta)\rangle=0
\quad\text{for every }\theta\in I\\
&\Longleftrightarrow a-a^0\in K_I.
\end{aligned}
\]

Hence \(Z_\infty(I)=a^0+K_I\). Each set in the defining intersection for \(K_I\) is the kernel of a linear
functional, so their arbitrary intersection contains zero and is closed under addition and scalar
multiplication. Thus \(K_I\) is a linear subspace.

The accepted dependency is expressed in the original random-coefficient coordinates and gives

\[
\langle e_{j_*},F(\theta)\rangle
=F_{j_*}(\theta)
=1
\qquad\text{for every }\theta\in I.
\]

Therefore \(e_{j_*}\notin K_I\). In particular \(K_I\neq\mathbb R^N\), so its translate
\(a^0+K_I\) is a proper affine subspace. The required anchor-direction exclusion can also be checked directly:

\[
\begin{aligned}
F_0(\theta)+\langle a^0+e_{j_*},F(\theta)\rangle
&=
F_0(\theta)+\langle a^0,F(\theta)\rangle+F_{j_*}(\theta)\\
&=0+1=1
\qquad\text{for every }\theta\in I.
\end{aligned}
\]

Thus \(a^0+e_{j_*}\notin Z_\infty(I)\).

The argument does not require the nonanchor features to be distinct, nonconstant, or linearly independent. If
\(F_0\equiv0\) on \(I\), then \(0\in Z_\infty(I)\) and the exact identity becomes
\(Z_\infty(I)=K_I\), still proper because it excludes \(e_{j_*}\). If the features are constant or dependent,
\(K_I\) may have any dimension from \(0\) through \(N-1\), and its translate may be unbounded, but properness
is unchanged. When \(N=1\), \(j_*=1\) and

\[
K_I=\{v\in\mathbb R:vF_1(\theta)=0\text{ for every }\theta\in I\}=\{0\},
\]

so a nonempty locus is exactly one point; otherwise it is empty.

Finally, the proof uses the literal point set \(I\). Whether an interval includes neither, one, or both of its
relative endpoints changes only which \(\theta\)'s occur in the displayed intersection. No passage to
\(\overline I\), analytic identity theorem, or endpoint continuation is used. This proves the lemma.
\(\square\)

### unit_002: lemma

**Lemma (Borel and Lebesgue nullity of the persistent-root locus).**
\(\label{lem:step-002-lebesgue-null}\)

Under the accepted Anchor nonvanishing Lemma~\ref{lem:step-001-anchor} and
Lemma~\ref{lem:step-002-affine-locus}, for every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\), the set \(Z_\infty(I)\) is Borel and

\[
\lambda_N(Z_\infty(I))=0.
\]

This conclusion includes empty loci, unbounded nonempty affine loci, and the \(N=1\) empty-or-singleton case.

**Proof / justification.** For every fixed \(\theta\in I\), the map

\[
a\longmapsto F_0(\theta)+\langle a,F(\theta)\rangle
\]

is a continuous affine map on \(\mathbb R^N\), so \(H_\theta\) is closed. Therefore the exact target set

\[
Z_\infty(I)=\bigcap_{\theta\in I}H_\theta
\]

is closed, hence Borel. Arbitrary intersections of closed sets are closed, so this remains valid when \(I\) is
uncountable and also when the intersection is empty.

Because \(\lvert I\rvert>0\), the interval is nonempty; choose any \(\bar\theta\in I\). The accepted literal
anchor gives \(F_{j_*}(\bar\theta)=1\), and hence the fixed-time set has the graph representation

\[
H_{\bar\theta}
=\left\{a\in\mathbb R^N:
a_{j_*}
=-F_0(\bar\theta)
-\sum_{i\neq j_*}a_iF_i(\bar\theta)\right\}.
\]

Since a persistent identity in particular holds at \(\bar\theta\),

\[
Z_\infty(I)\subseteq H_{\bar\theta}.
\]

If \(N=1\), the sum is empty and
\(H_{\bar\theta}=\{-F_0(\bar\theta)\}\), a singleton of one-dimensional Lebesgue measure zero. Monotonicity
then gives \(\lambda_1(Z_\infty(I))=0\). This agrees with
Lemma~\ref{lem:step-002-affine-locus}, which says that the nonempty locus itself is a singleton.

Suppose \(N\geq2\). Let
\(\beta=(a_i)_{i\neq j_*}\in\mathbb R^{N-1}\) denote the original nonanchor coordinates. For every fixed
\(\beta\), the section of \(H_{\bar\theta}\) in the original coordinate \(a_{j_*}\) is exactly the singleton

\[
\left\{
-F_0(\bar\theta)-\sum_{i\neq j_*}\beta_iF_i(\bar\theta)
\right\}.
\]

After the measure-preserving permutation that places \(a_{j_*}\) last, Tonelli's theorem applied to the
nonnegative Borel indicator of \(H_{\bar\theta}\) yields

\[
\begin{aligned}
\lambda_N(H_{\bar\theta})
&=\int_{\mathbb R^{N-1}}
\lambda_1\!\left(
\{t\in\mathbb R:(\beta,t)\in H_{\bar\theta}\}
\right)\,d\lambda_{N-1}(\beta)\\
&=\int_{\mathbb R^{N-1}}0\,d\lambda_{N-1}(\beta)
=0.
\end{aligned}
\]

Here \((\beta,t)\) means insertion into the original coordinate slots before the harmless permutation. The
graph may be unbounded, but Tonelli is applied to a nonnegative indicator on the full product space, and the
fiber-measure integrand is identically zero. Therefore

\[
0\leq\lambda_N(Z_\infty(I))
\leq\lambda_N(H_{\bar\theta})
=0.
\]

No regularity in \(\theta\), root multiplicity statement, or analyticity is used in this geometric nullity
calculation. This proves the lemma. \(\square\)

### unit_003: proposition

**Proposition (Nullity under arbitrary full joint laws).**
\(\label{prop:step-002-law-null}\)

Under Assumption~\ref{assump:cube-density-laws} and
Lemma~\ref{lem:step-002-lebesgue-null}, for every
\(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with
\(\lvert I\rvert>0\),

\[
\Pr_{\alpha\sim\mu}
\left[
F_0+\langle\alpha,F\rangle\equiv0\text{ on }I
\right]
=\Pr_{\alpha\sim\mu}[\alpha\in Z_\infty(I)]
=0.
\]

The probability is computed from one full \(N\)-dimensional joint density. No independence, marginal-density
bound, or conditional-density bound is required.

**Proof / justification.** Fix an arbitrary
\(\mu\in\mathcal D_{N,R,\kappa}\). Assumption~\ref{assump:cube-density-laws} supplies a nonnegative joint
density \(f_\mu\) on the actual space \(\mathbb R^N\), supported on the closed cube \([-R,R]^N\), and satisfying
\(f_\mu\leq\kappa\) almost everywhere. By Lemma~\ref{lem:step-002-lebesgue-null},
\(Z_\infty(I)\) is Borel and \(\lambda_N(Z_\infty(I))=0\). Consequently,

\[
\begin{aligned}
\mu(Z_\infty(I))
&=\int_{\mathbb R^N}
\mathbf 1_{Z_\infty(I)}(a)f_\mu(a)\,d\lambda_N(a)\\
&=\int_{Z_\infty(I)\cap[-R,R]^N}
f_\mu(a)\,d\lambda_N(a)\\
&\leq
\kappa\,\lambda_N\!\left(Z_\infty(I)\cap[-R,R]^N\right)\\
&\leq
\kappa\,\lambda_N(Z_\infty(I))
=0.
\end{aligned}
\]

This is a single joint-density calculation. It never factors \(f_\mu\), integrates a marginal-density bound,
or conditions on one coordinate, so every correlation allowed by the law class is retained. If the affine
locus is unbounded, only its support-cube intersection is integrated, and that intersection remains Borel and
Lebesgue-null. The closed-cube boundary causes no separate term. Empty loci, nonempty proper loci,
\(F_0\equiv0\), dependent or constant features, and the \(N=1\) singleton branch all enter the same zero
calculation. This proves the proposition. \(\square\)

## Target-Step Assembly

Fix an arbitrary tested interval \(I\subseteq\Theta\) with \(\lvert I\rvert>0\) and an arbitrary admissible
law \(\mu\in\mathcal D_{N,R,\kappa}\). Accepted Lemma~\ref{lem:step-001-anchor} supplies the exact identity
\(F_{j_*}=1\) in the original random-coefficient coordinates.

Lemma~\ref{lem:step-002-affine-locus} gives the required structural dichotomy. Either
\(Z_\infty(I)=\varnothing\), or, for any \(a^0\in Z_\infty(I)\),

\[
Z_\infty(I)=a^0+K_I,
\qquad
e_{j_*}\notin K_I,
\]

so it is a proper affine subspace; the same lemma directly excludes
\(a^0+e_{j_*}\) from the locus. Lemma~\ref{lem:step-002-lebesgue-null} then separately proves that this exact,
possibly unbounded and uncountably-defined locus is Borel and satisfies
\(\lambda_N(Z_\infty(I))=0\). Finally, Proposition~\ref{prop:step-002-law-null} uses the one full joint density
of \(\mu\) to give

\[
\Pr_{\alpha\sim\mu}
\left[
F_0+\langle\alpha,F\rangle\equiv0\text{ on }I
\right]
=0.
\]

The proof retains nonempty persistent-root loci rather than assuming them away, and it preserves arbitrary
correlation. Since \(I\) and \(\mu\) were arbitrary, these named results prove exactly the accepted target row.
The sole exported interface is the law-null persistent-root certificate above, with no probability remainder.

## Explicit Rate Audit

- Exposed variables: The exceptional probability is exactly \(0\). The law class still exposes
  \(N,R,\kappa\), and the statement quantifies over \(I\) and \(\mu\), but no nonzero remainder depends on any
  of them.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(I\), \(\mu\), \(N\), \(R\), \(\kappa\), feature dependence, coefficient
  correlation, endpoint convention, or the dimension of the nonempty affine locus.
- Fixed quantities: The setting-defined deterministic tuple \((F_0,F)\), \(\Theta\), and the fixed original
  anchor index \(j_*\). After those are fixed, the conclusion holds separately for every tested interval and
  every admissible law.
- Probability mode: Exact ordinary probability for each fixed full joint law. There is no confidence
  parameter, expectation, conditioning, union bound, or product-law conversion.
- Horizon mode: Static, pairwise for every interval \(I\subseteq\Theta\) of positive length. The universal
  statement does not construct a simultaneous random event over an uncountable family of intervals, and no
  open, closed, or half-open endpoint convention changes the proof.
- Norm mode: Ordinary \(N\)-dimensional Lebesgue measure in the original coefficient coordinates; no norm rate
  or changed coordinate metric is used.
- Admissibility conditions and auxiliary tolerances: Exactly the accepted row assumptions and accepted anchor
  dependency. There is no transversality, simple-root, analyticity, independence, nonpersistence, support
  interior, margin, or auxiliary-tolerance condition.
- Term absorption or simplification inequalities: Nothing is absorbed or omitted. The complete conversion is
  \[
  \mu(Z_\infty(I))
  \leq\kappa\,\lambda_N\!\left(Z_\infty(I)\cap[-R,R]^N\right)
  \leq\kappa\,\lambda_N(Z_\infty(I))
  =0.
  \]
- Probability conversion: Borel \(N\)-dimensional Lebesgue nullity is converted directly to law nullity by the
  one full joint density.
- Contribution to any Rate Specialization Bridge: This step supplies exactly the zero exceptional remainder
  required by rate objectives R2 and R4. It supplies no nonzero probability rate or downstream theorem.
- Baseline-reduction check, if applicable: No separate baseline theorem is part of this row. The proof keeps
  \(F_0\) deterministic and the random vector in its original \(N\)-dimensional coordinates, and asserts no
  chart, specialization, or final assembly conclusion.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: \(Z_\infty(I)\) is the exact persistent-root coefficient locus appearing in the
  accepted target and is the only exported helper object. It is defined directly from the setting's
  \(F_0,F\), the original coefficient vector, and the literal point set \(I\).
- `appendix-local`: \(K_I\) is the common kernel
  \(\bigcap_{\theta\in I}\ker(v\mapsto\langle v,F(\theta)\rangle)\). It is defined from setting objects and
  proved linear and proper in Lemma~\ref{lem:step-002-affine-locus}; it is not a theorem-facing assumption.
- `proof-local`: \(e_{j_*}\) is the canonical basis vector in the original anchored random-coordinate
  system, not a new or transformed coordinate. The point \(a^0\) is chosen only in the nonempty branch,
  \(\bar\theta\) is chosen from the already fixed nondegenerate interval, and
  \(\beta=(a_i)_{i\neq j_*}\) only lists the original nonanchor coordinates in the deterministic Tonelli
  calculation.
- `proof-local`: \(\lambda_N\) denotes ordinary \(N\)-dimensional Lebesgue measure. The symbols
  \(H_\theta\), \(\phi_a\), and \(f_\mu\) retain their setting meanings; no marginal or conditional density is
  introduced.
- Constant provenance: The only numerical values used are the accepted anchor value \(1\), the primitive density
  cap \(\kappa\), and the proved probability \(0\). No new radius, threshold, tolerance, rate, margin, bounded
  helper, or finite-tube quantity is introduced.
- Assumption provenance: The literal anchor is a derived conclusion supplied by the accepted
  Lemma~\ref{lem:step-001-anchor}; the full joint density is primitive
  Assumption~\ref{assump:cube-density-laws}. Affine structure, common-kernel properness, Borel measurability,
  Lebesgue nullity, and law nullity are all proved in this step. The nonempty branch is a case split, and no
  generated event, recurrence, boundedness condition, local-validity premise, or persistent-root exclusion is
  assumed.
- Boundary provenance: Empty loci are handled before selecting \(a^0\). If \(F_0\equiv0\), the locus is the
  proper linear space \(K_I\). Constant or dependent features may enlarge \(K_I\) but cannot insert the anchor
  direction. Unbounded affine loci remain Lebesgue-null, and their intersection with the closed support cube is
  the only part seen by the law. For \(N=1\), the nonempty locus is a singleton. Open, closed, and half-open
  interval conventions are handled without adding or removing endpoints from the literal target set.
- Forbidden-shortcut audit: The proof uses no independence, product density, marginal or conditional density
  bound, analyticity, transversality, simple-root condition, root-isolation claim, or persistent-root exclusion
  assumption.
- Diagnostic boundary: The accepted global diagnostic and review were consulted only after their recorded
  hashes were verified and the review status was confirmed as `ACCEPTED`. Their step-relevant planning
  reminder was only to separate affine properness, deterministic Lebesgue nullity, and full-density law
  nullity. They were not used as evidence, cited results, assumption sources, or authority to alter the row;
  every implication appears in the fresh local derivations above.
- Same-step history boundary: The consumed sketch-attempt-1 proof and review, and their byte-identical archived
  copies under `proof_history/sketch_001/proof_steps/step_002/attempt_001/`, were consulted only as
  permitted diagnostic material for stable-unit continuity. They are not current evidence. All three local
  units above were regenerated against the accepted sketch-attempt-2 dependency proof and review whose complete
  digests are recorded in `Step Identity`. A fresh matching review is required before this new proof
  can be consumed downstream.
