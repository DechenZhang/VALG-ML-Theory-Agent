# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

The exact accepted sketch row is:

- Intended claim: For every tested nondegenerate interval \(I\), prove that
  \(\{a:F_0+\langle a,F\rangle\equiv0\text{ on }I\}\) is empty or a proper affine subspace and has zero
  probability under every admissible law.
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:anchored-derivative-closure`, `assump:cube-density-laws`; derived:
  anchor from `step_001`.
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
  - `assump:anchored-derivative-closure`: there is a fixed \(j_*\in\{1,\ldots,N\}\) with
    \(Q_{j_*}\equiv1\). This is the primitive source underlying the accepted anchor conclusion; no
    transversality, feature independence, or exclusion of persistent roots is included.
  - `assump:cube-density-laws`: each admissible law \(\mu\) on the actual coefficient space \(\mathbb R^N\)
    has one full joint Lebesgue density \(f_\mu\), supported on \([-R,R]^N\), with
    \(\lVert f_\mu\rVert_\infty\leq\kappa\). The coordinates need not be independent.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof, SHA-256
    `d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11`, proves in
    Lemma~\ref{lem:step-001-anchor} that \(F_{j_*}(\theta)=1\) for every \(\theta\in\Theta\), and hence
    \(F(\theta)\neq0\). Its review, SHA-256
    `dd04491bf12d076e4482faa9dcfb484d671d601a35cf64405f9d2afa4e535899`, has status `ACCEPTED`.
- Local conditional hypotheses: None. The choices of a tested nondegenerate interval \(I\) and an admissible
  law \(\mu\) instantiate universal quantifiers in the target. The nonempty-locus branch below is a discharged
  case split, not an added theorem assumption.

For every tested nondegenerate interval \(I\subseteq\Theta\), use the public-facing target notation

\[
Z_\infty(I)
:=\left\{a\in\mathbb R^N:
F_0(\theta)+\langle a,F(\theta)\rangle=0
\text{ for every }\theta\in I\right\}.
\]

Thus \(a\in Z_\infty(I)\) means exactly that the setting-defined function \(\phi_a\) is identically zero on
the tested interval. It does not mean that a root is simple, isolated, or nonpersistent.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:anchored-derivative-closure} and the accepted Anchor Nonvanishing Lemma~\ref{lem:step-001-anchor}, for every tested nondegenerate interval \(I\subseteq\Theta\), \(Z_\infty(I)\) is empty or equals \(a^0+L_I\), where \(L_I=\{v:\langle v,F(\theta)\rangle=0\ \forall\theta\in I\}\) is linear and does not contain \(e_{j_*}\); consequently every nonempty \(Z_\infty(I)\) is a proper affine subspace, and \(a^0+e_{j_*}\notin Z_\infty(I)\) whenever \(a^0\in Z_\infty(I)\). | Proves the affine-subspace structure and properness by the required anchor translation. |
| `unit_002` | lemma | Under the accepted Anchor Nonvanishing Lemma~\ref{lem:step-001-anchor} and Lemma~\ref{lem:step-002-affine-locus}, for every tested nondegenerate interval \(I\subseteq\Theta\), \(Z_\infty(I)\) is Borel and has \(N\)-dimensional Lebesgue measure zero; when \(N=1\), it is empty or a singleton. | Supplies rigorous measurability and Lebesgue-nullity, including the one-dimensional boundary. |
| `unit_003` | proposition | Under Assumption~\ref{assump:cube-density-laws} and Lemma~\ref{lem:step-002-lebesgue-null}, for every admissible full joint law \(\mu\) and every tested nondegenerate interval \(I\), \(\Pr_{\alpha\sim\mu}[\alpha\in Z_\infty(I)]=0\), without any coordinate-independence condition; this includes empty loci, nonempty persistent-root loci, \(F_0\equiv0\) on \(I\), and \(N=1\). | Converts geometric nullity into the exact law-null persistent-root certificate with no exceptional remainder. |

Atomic step = no. Affine structure/properness, Lebesgue-nullity, and nullity under the actual joint law are
distinct nontrivial claims and are separated above.

## Cited Result Applications

No external paper result is used. The accepted dependency, the one standard measure-theoretic tool, and the
local results used later are restated in current notation below.

| Result used later | Restated current-notation conclusion | Instantiated objects | Required assumptions and discharge | Later use |
| ----------------- | ------------------------------------- | -------------------- | ---------------------------------- | --------- |
| Accepted Lemma~\ref{lem:step-001-anchor} (Anchor nonvanishing) | For the fixed setting index \(j_*\), \(F_{j_*}(\theta)=1\) and \(F(\theta)\neq0\) for every \(\theta\in\Theta\). | The original feature vector \(F\), original coefficient coordinate \(j_*\), and original interval \(\Theta\). | Proved by the accepted `step_001` artifact from its stated setting assumptions; the matching accepted review and both hashes are recorded above. No claim from `global_proof.md` is used. | Lemmas~\ref{lem:step-002-affine-locus} and \ref{lem:step-002-lebesgue-null}. |
| Tonelli's theorem in coordinate-section form | If \(E\subseteq\mathbb R^N\) is Borel and \(N\geq2\), then after singling out coordinate \(j_*\), \(\lambda_N(E)=\int_{\mathbb R^{N-1}}\lambda_1(E_\beta)\,d\beta\), where \(E_\beta\) is the one-dimensional \(j_*\)-coordinate section. The equality applies to the nonnegative Borel indicator even when \(E\) is unbounded. A singleton has \(\lambda_1\)-measure zero. | The closed anchored hyperplane \(H_{\bar\theta}\), whose section over each nonpivot vector \(\beta\) is one singleton. | Closedness makes the indicator Borel. Lebesgue measure on \(\mathbb R^N\) is the product measure after a coordinate permutation. The singleton assertion follows by covering a point by intervals of arbitrarily small length. | Lemma~\ref{lem:step-002-lebesgue-null}. |
| Lemma~\ref{lem:step-002-affine-locus} (Persistent-root affine locus and anchor properness) | For every tested \(I\), the persistent-root locus is empty or \(a^0+L_I\), with \(e_{j_*}\notin L_I\), and is therefore proper. | The exact target set \(Z_\infty(I)\) in the original \(N\)-dimensional coefficient space. | Its statement uses only the accepted anchor and the row's anchored setting assumption; its proof treats nonemptiness only as a case split. | Lemma~\ref{lem:step-002-lebesgue-null} and target-step assembly. |
| Lemma~\ref{lem:step-002-lebesgue-null} (Lebesgue-null persistent-root locus) | \(Z_\infty(I)\) is Borel and \(\lambda_N(Z_\infty(I))=0\), including \(N=1\). | The exact target set and \(N\)-dimensional Lebesgue measure \(\lambda_N\). | The accepted anchor makes one fixed-time hyperplane a graph in coordinate \(j_*\); Tonelli's theorem is discharged as stated above. | Proposition~\ref{prop:step-002-law-null} and target-step assembly. |
| Proposition~\ref{prop:step-002-law-null} (Nullity under arbitrary capped joint laws) | Every admissible \(\mu\) assigns probability zero to \(Z_\infty(I)\). | The actual joint density \(f_\mu\) on \(\mathbb R^N\), with no product representation. | Assumption~\ref{assump:cube-density-laws} supplies the density and cap; Lemma~\ref{lem:step-002-lebesgue-null} supplies a Borel null set. | Target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Persistent-root affine locus and anchor properness).**
\(\label{lem:step-002-affine-locus}\)

Under Assumption~\ref{assump:anchored-derivative-closure} and the accepted Anchor Nonvanishing
Lemma~\ref{lem:step-001-anchor}, for every tested nondegenerate interval \(I\subseteq\Theta\), the set
\(Z_\infty(I)\) is empty or a proper affine subspace of \(\mathbb R^N\). More precisely, if
\(a^0\in Z_\infty(I)\), then

\[
Z_\infty(I)=a^0+L_I,
\qquad
L_I:=\left\{v\in\mathbb R^N:
\langle v,F(\theta)\rangle=0
\text{ for every }\theta\in I\right\},
\]

where \(L_I\) is a proper linear subspace satisfying \(e_{j_*}\notin L_I\). In particular,

\[
a^0+e_{j_*}\notin Z_\infty(I).
\]

**Proof / justification.** For each \(\theta\in I\), the setting-defined root section is

\[
H_\theta
=\{a\in\mathbb R^N:F_0(\theta)+\langle a,F(\theta)\rangle=0\}.
\]

The definition of an identically zero function gives the exact set identity

\[
Z_\infty(I)=\bigcap_{\theta\in I}H_\theta.
\]

If this intersection is empty, the first alternative in the claim holds. Suppose it is nonempty and choose
\(a^0\in Z_\infty(I)\). For any \(a\in\mathbb R^N\), subtracting the identity for \(a^0\) from that for \(a\)
at every \(\theta\in I\) yields

\[
\begin{aligned}
a\in Z_\infty(I)
&\Longleftrightarrow
\langle a-a^0,F(\theta)\rangle=0
\quad\text{for every }\theta\in I\\
&\Longleftrightarrow a-a^0\in L_I.
\end{aligned}
\]

The set \(L_I\) contains zero and is closed under addition and scalar multiplication because every map
\(v\mapsto\langle v,F(\theta)\rangle\) is linear. Hence \(L_I\) is a linear subspace and
\(Z_\infty(I)=a^0+L_I\) is an affine subspace.

Let \(e_{j_*}\) be the standard basis vector in the anchored coefficient coordinate. The accepted anchor gives,
for every \(\theta\in I\),

\[
\langle e_{j_*},F(\theta)\rangle=F_{j_*}(\theta)=1.
\]

Thus \(e_{j_*}\notin L_I\), so \(L_I\neq\mathbb R^N\) and the affine subspace \(a^0+L_I\) is proper. The
required translation argument is also visible directly in the original affine family:

\[
\phi_{a^0+e_{j_*}}(\theta)
=\phi_{a^0}(\theta)+F_{j_*}(\theta)
=0+1=1
\qquad(\theta\in I).
\]

Consequently \(a^0+e_{j_*}\) cannot belong to \(Z_\infty(I)\).

This reasoning includes all persistent and identically-zero boundary cases. If \(F_0\equiv0\) on \(I\), then
\(0\in Z_\infty(I)\) and \(Z_\infty(I)=L_I\), which is still proper; no coefficient is excluded. If some other
\(a^0\) gives a persistent zero, the entire locus is exactly the proper translate \(a^0+L_I\). Linear
dependence among the remaining features may enlarge \(L_I\), but it cannot put \(e_{j_*}\) into \(L_I\). If no
persistent coefficient exists, the locus is empty. Finally, when \(N=1\), the anchor is \(F_1\equiv1\), so

\[
L_I=\{v\in\mathbb R:vF_1(\theta)=0\ \forall\theta\in I\}=\{0\}.
\]

Hence in that case the nonempty locus is the singleton \(\{a^0\}\), equivalently the unique constant satisfying
\(F_0\equiv-a^0\) on \(I\). This proves the lemma. \(\square\)

### unit_002: lemma

**Lemma (Lebesgue-null persistent-root locus).**
\(\label{lem:step-002-lebesgue-null}\)

Under the accepted Anchor Nonvanishing Lemma~\ref{lem:step-001-anchor} and
Lemma~\ref{lem:step-002-affine-locus}, for every tested nondegenerate interval \(I\subseteq\Theta\), the set
\(Z_\infty(I)\) is Borel and

\[
\lambda_N(Z_\infty(I))=0,
\]

where \(\lambda_N\) denotes \(N\)-dimensional Lebesgue measure. For \(N=1\), the nonempty locus is a singleton
and the same conclusion holds.

**Proof / justification.** For each fixed \(\theta\in I\), the map

\[
a\longmapsto F_0(\theta)+\langle a,F(\theta)\rangle
\]

is continuous, so its zero set \(H_\theta\) is closed. Therefore

\[
Z_\infty(I)=\bigcap_{\theta\in I}H_\theta
\]

is closed, because an arbitrary intersection of closed sets is closed, and hence it is Borel. This also covers
the empty locus.

Because \(I\) is nondegenerate, choose any \(\bar\theta\in I\). The accepted anchor
\(F_{j_*}(\bar\theta)=1\) gives the explicit graph representation

\[
H_{\bar\theta}
=\left\{a\in\mathbb R^N:
a_{j_*}=-F_0(\bar\theta)-\sum_{i\neq j_*}a_iF_i(\bar\theta)\right\}.
\]

Moreover, requiring the affine identity for every \(\theta\in I\) in particular requires it at
\(\bar\theta\), so

\[
Z_\infty(I)\subseteq H_{\bar\theta}.
\]

If \(N=1\), the displayed graph is the singleton
\(H_{\bar\theta}=\{-F_0(\bar\theta)\}\), which has one-dimensional Lebesgue measure zero. Thus the conclusion
holds in the full \(N=1\) boundary case.

Now suppose \(N\geq2\). Index the nonpivot coordinates by
\(\beta=(a_i)_{i\neq j_*}\in\mathbb R^{N-1}\). For each fixed \(\beta\), the section of
\(H_{\bar\theta}\) in coordinate \(a_{j_*}\) consists of exactly the one point

\[
-F_0(\bar\theta)-\sum_{i\neq j_*}\beta_iF_i(\bar\theta).
\]

Every such one-dimensional section has \(\lambda_1\)-measure zero. Since \(H_{\bar\theta}\) is closed,
Tonelli's theorem applied to its nonnegative Borel indicator yields

\[
\lambda_N(H_{\bar\theta})
=\int_{\mathbb R^{N-1}}
\lambda_1\!\left(\{a_{j_*}:(\beta,a_{j_*})\in H_{\bar\theta}\}\right)
\,d\beta
=\int_{\mathbb R^{N-1}}0\,d\beta
=0.
\]

Here \((\beta,a_{j_*})\) denotes insertion in the original coordinate order, so no coefficient coordinate is
added or removed. By Borel measurability, monotonicity of Lebesgue measure, and the displayed containment,

\[
0\leq\lambda_N(Z_\infty(I))
\leq\lambda_N(H_{\bar\theta})=0.
\]

This proves the lemma. \(\square\)

### unit_003: proposition

**Proposition (Nullity under arbitrary capped joint laws).**
\(\label{prop:step-002-law-null}\)

Under Assumption~\ref{assump:cube-density-laws} and
Lemma~\ref{lem:step-002-lebesgue-null}, for every admissible law \(\mu\in\mathcal D_{N,R,\kappa}\) and every
tested nondegenerate interval \(I\subseteq\Theta\),

\[
\Pr_{\alpha\sim\mu}
\left[F_0+\langle\alpha,F\rangle\equiv0\text{ on }I\right]
=\Pr_{\alpha\sim\mu}[\alpha\in Z_\infty(I)]
=0.
\]

The conclusion uses the full \(N\)-dimensional joint density and imposes no independence condition. It includes
empty loci, every nonempty persistent-root locus, the case \(F_0\equiv0\) on \(I\), and \(N=1\).

**Proof / justification.** Fix any \(\mu\in\mathcal D_{N,R,\kappa}\). By
Assumption~\ref{assump:cube-density-laws}, \(\mu\) has a joint Lebesgue density \(f_\mu\) on the actual space
\(\mathbb R^N\), supported on \([-R,R]^N\), and \(0\leq f_\mu\leq\kappa\) almost everywhere. By
Lemma~\ref{lem:step-002-lebesgue-null}, \(Z_\infty(I)\) is Borel and \(\lambda_N(Z_\infty(I))=0\). Therefore

\[
\begin{aligned}
\mu(Z_\infty(I))
&=\int_{\mathbb R^N}
\mathbf 1_{Z_\infty(I)}(a)f_\mu(a)\,d\lambda_N(a)\\
&=\int_{Z_\infty(I)\cap[-R,R]^N}f_\mu(a)\,d\lambda_N(a)\\
&\leq\kappa\,\lambda_N\bigl(Z_\infty(I)\cap[-R,R]^N\bigr)\\
&\leq\kappa\,\lambda_N(Z_\infty(I))=0.
\end{aligned}
\]

This calculation neither factors \(f_\mu\) nor conditions on any coordinate. Thus arbitrary correlation is
preserved, and the random object remains the original \(N\)-dimensional coefficient vector. The empty case has
probability zero trivially; every nonempty case is covered by the same joint-density calculation, including the
singleton locus when \(N=1\) and the proper linear locus containing zero when \(F_0\equiv0\) on \(I\). This
proves the proposition. \(\square\)

## Target-Step Assembly

Fix an arbitrary tested nondegenerate interval \(I\subseteq\Theta\). The accepted dependency
Lemma~\ref{lem:step-001-anchor} supplies the exact anchor \(F_{j_*}\equiv1\) in the original coefficient
coordinates. Lemma~\ref{lem:step-002-affine-locus} then gives the complete structural dichotomy: either
\(Z_\infty(I)=\varnothing\), or it is a translate \(a^0+L_I\) of a linear subspace with
\(e_{j_*}\notin L_I\), hence a proper affine subspace. Its displayed identity

\[
\phi_{a^0+e_{j_*}}=\phi_{a^0}+F_{j_*}=1\quad\text{on }I
\]

is the required translation-by-\(e_{j_*}\) proof of properness and remains valid for every persistent root.
Lemma~\ref{lem:step-002-lebesgue-null} places this exact locus inside one anchored graph hyperplane and proves
\(\lambda_N(Z_\infty(I))=0\), treating \(N=1\) separately as the empty-or-singleton case. Finally,
Proposition~\ref{prop:step-002-law-null} applies the full joint density cap to obtain

\[
\Pr_{\alpha\sim\mu}[\alpha\in Z_\infty(I)]=0
\qquad\text{for every }\mu\in\mathcal D_{N,R,\kappa}.
\]

The argument includes \(F_0\equiv0\), nonempty persistent-root loci, feature dependence, constant feature
dictionaries compatible with the anchor, and empty loci; none is made an exclusion assumption. Since \(I\) and
\(\mu\) were arbitrary, these named results prove exactly the accepted `step_002` claim while preserving the
actual \(N\)-dimensional, arbitrarily correlated coefficient law.

## Explicit Rate Audit

- Exposed variables: The exceptional probability is exactly \(0\). The law class retains its displayed
  \(N,R,\kappa\) parameters, but no nonzero rate or remainder depends on them.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: The interval \(I\), the law \(\mu\), \(N,R,\kappa\), feature dependence,
  or coefficient correlation.
- Fixed quantities: The original deterministic feature tuple \((F_0,F)\), \(\Theta\), and the anchored index
  \(j_*\); the conclusion is then proved separately for every tested \(I\) and every admissible \(\mu\).
- Probability mode: Ordinary probability under each fixed full joint law, exactly zero; no expectation,
  confidence parameter, union bound, or product-law reduction is used.
- Horizon mode: Static and uniform in the sense that the proof applies to every tested nondegenerate interval;
  there is no iterative, asymptotic, or stopping-time scope.
- Norm mode: \(N\)-dimensional Lebesgue nullity in the original coefficient coordinates; no norm rate is used.
- Admissibility conditions and auxiliary tolerances: Exactly the accepted row assumptions and the accepted
  `step_001` anchor. There is no simple-root, transversality, nonpersistent-root, independence, or auxiliary
  margin condition.
- Term absorption or simplification inequalities: No term is dropped. The complete quantitative conversion is
  \(\mu(Z_\infty(I))\leq\kappa\lambda_N(Z_\infty(I))=0\).
- Probability conversion: Absolute continuity of the full joint density converts \(N\)-dimensional Lebesgue
  nullity directly to probability zero.
- Contribution to any Rate Specialization Bridge: This supplies the exact zero exceptional remainder required
  by R2 and R4 before the chart sweep and monic specialization; no additional probability term is introduced.
- Baseline-reduction check: The random vector remains \(N\)-dimensional and \(F_0\) remains deterministic. In
  particular, the later monic specialization need not create a random leading coordinate or exclude a
  persistent polynomial identity.

## Blockers

None.

## Notation And Assumption Notes

- `public-facing`: \(Z_\infty(I)\) is the exact persistent-root coefficient locus in the target and the minimal
  interface exported to downstream sweep and assembly steps. It is defined directly from the setting's
  \(F_0,F\), original coefficient vector, and tested interval.
- `appendix-local`: \(L_I\) is the direction space of a nonempty \(Z_\infty(I)\). It is defined directly as an
  intersection of kernels and proved linear and proper in Lemma~\ref{lem:step-002-affine-locus}; it is not a
  theorem-facing assumption.
- `proof-local`: \(e_{j_*}\) is the canonical basis vector in the setting's anchored coefficient coordinate;
  \(a^0\) is selected only inside the nonempty-locus case; \(\bar\theta\) is selected from the tested interval;
  and \(\beta\) denotes the original nonpivot coordinates in the Tonelli calculation. None is an auxiliary
  random coordinate, parameter, threshold, or margin.
- `proof-local`: \(\lambda_N\) denotes ordinary \(N\)-dimensional Lebesgue measure. The setting-defined
  \(H_\theta\), \(\phi_a\), and joint density \(f_\mu\) retain their original meanings.
- Constant provenance: The only numerical values used are the primitive anchor value \(1\), the setting density
  cap \(\kappa\), and the exact conclusion \(0\). No new constant, radius, tolerance, rate, or bounded helper
  quantity is introduced.
- Assumption provenance: The anchor is a derived conclusion supplied by the accepted `step_001` proof/review.
  The full joint density is the primitive condition `assump:cube-density-laws`. Closedness, affine structure,
  properness, Lebesgue-nullity, and law-nullity are all proved in this step. No generated event, regularity
  condition, recurrence, boundedness premise, root-simplicity condition, or persistent-root exclusion is
  assumed.
- Boundary provenance: Empty loci are handled before choosing \(a^0\). Nonempty loci, including
  \(F_0\equiv0\) on \(I\), are retained and proved proper/null. For \(N=1\), the nonempty locus is explicitly a
  singleton. Arbitrary feature dependence and constant dictionaries do not affect the anchored translation or
  graph argument.
- Diagnostic boundary: `global_proof.md` was consulted only after verifying that its paired
  `global_proof_review.md` has SHA-256
  `cd76bd4102c0e811947104173dcc29cd325f2082ae53865d6c8bb25b20b9bb4e` and status `ACCEPTED`. Its
  step-relevant planning reminder was to express the locus as an affine intersection, use translation in the
  anchored coordinate for properness, and apply the full joint density only after proving Lebesgue-nullity.
  The diagnostic was not used as evidence, a cited result, an assumption source, or authority to change the
  target claim; every implication is independently proved in the named local units above.
