# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_002
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_002/proof.md
- Reviewed proof SHA-256: 061da0aeb541d62f73760a0a3332ffe85bed7a450320f6dbbdcc77b8671efbcb

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-002-affine-locus} states the exact
  structural part of the accepted row for every tested nondegenerate interval.
  It identifies the persistent-root set as empty or a translate of a named
  linear space, states that the anchor direction is absent from that space,
  and concludes properness and the required translation exclusion. Its
  assumption basis is explicit: the primitive anchored-closure assumption and
  the accepted Anchor Nonvanishing Lemma~\ref{lem:step-001-anchor}.
- Proof validity: The identity
  \(Z_\infty(I)=\bigcap_{\theta\in I}H_\theta\) follows directly from the
  pointwise meaning of an identically zero affine function. In the nonempty
  branch, subtraction from one selected \(a^0\in Z_\infty(I)\) proves both
  inclusions in \(Z_\infty(I)=a^0+L_I\). The common kernel \(L_I\) is linear.
  Since \(\langle e_{j_*},F(\theta)\rangle=F_{j_*}(\theta)=1\) for every
  \(\theta\in I\), \(e_{j_*}\notin L_I\), so \(L_I\ne\mathbb R^N\) and the
  translate is proper. Equivalently,
  \(\phi_{a^0+e_{j_*}}=\phi_{a^0}+F_{j_*}=1\) on \(I\), which is the exact
  affine-translation argument required by the sketch.
- Cited-result and assumption audit: The only dependency conclusion used is
  the exact accepted `step_001` anchor \(F_{j_*}=1\) in the original
  coefficient coordinate. Its proof and accepted review hashes match the
  frozen bindings. No global-proof diagnostic, external theorem, feature
  independence, transversality, or exclusion of persistent roots is used.
- Rigor checklist: The proof handles an arbitrary, possibly uncountable
  intersection of affine hyperplanes by an explicit translate calculation,
  so it does not rely on a finite-intersection or rank assumption. The
  nonempty case is a discharged case split rather than a theorem-facing
  condition. All quantifiers remain pointwise over every \(\theta\in I\), and
  no analyticity or continuation beyond \(I\) is invoked.
- Local adversarial test: If \(F_0\equiv0\) on \(I\), then
  \(Z_\infty(I)=L_I\) contains zero but remains proper because it excludes
  \(e_{j_*}\). If the remaining features are arbitrarily dependent or
  constant, the direction space can enlarge but still cannot contain the
  anchor direction. Empty loci are resolved before selecting \(a^0\). For
  \(N=1\), the anchor gives \(L_I=\{0\}\), so every nonempty locus is exactly
  one point.
- Contribution to target step: The lemma supplies the exact empty-or-proper
  affine-subspace dichotomy and the anchor-based mechanism needed for
  geometric nullity.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-002-lebesgue-null} states Borel
  measurability and \(N\)-dimensional Lebesgue nullity for the exact target
  locus, with a separate explicit conclusion for \(N=1\). These are the
  precise geometric inputs needed before applying an admissible joint law.
- Proof validity: Each fixed-time set \(H_\theta\) is closed because it is the
  zero set of a continuous affine map in \(a\). Arbitrary intersections of
  closed sets are closed, hence \(Z_\infty(I)\) is Borel even when \(I\) is
  uncountable. Choosing any \(\bar\theta\in I\), the anchor gives the genuine
  graph
  \[
  a_{j_*}=-F_0(\bar\theta)-\sum_{i\ne j_*}a_iF_i(\bar\theta),
  \]
  and \(Z_\infty(I)\subseteq H_{\bar\theta}\). For \(N\ge2\), every fiber of
  this closed graph over the original \(N-1\) nonpivot coordinates is one
  singleton. Tonelli applied to its nonnegative Borel indicator therefore
  gives \(\lambda_N(H_{\bar\theta})=0\), and monotonicity gives
  \(\lambda_N(Z_\infty(I))=0\). For \(N=1\), the same graph is directly a
  singleton of \(\mathbb R\).
- Cited-result and assumption audit: Tonelli's theorem is restated before use
  in the exact coordinate-section form, including Borel measurability,
  product Lebesgue measure after coordinate permutation, nonnegativity, and
  the unbounded-domain case. The accepted anchor discharges the nonzero graph
  coefficient. Lemma~\ref{lem:step-002-affine-locus} supplies the structural
  interpretation, although the fixed-time graph containment independently
  suffices for nullity.
- Rigor checklist: The calculation is carried out in the actual
  \(N\)-dimensional random-coefficient space; it neither adds a deterministic
  coordinate nor drops a random one. Integrating the identically zero fiber
  measure over the unbounded \(\mathbb R^{N-1}\) is valid under Tonelli and
  equals zero. Closedness covers both empty and nonempty loci. The selected
  \(\bar\theta\) exists because the tested interval is nondegenerate.
- Local adversarial test: A nonempty locus may have codimension one, higher
  codimension, or dimension zero; containment in the anchored graph covers
  every case. An unbounded proper affine locus is still null by the displayed
  graph calculation. When \(F_0\equiv0\), the graph passes through the origin
  but its fibers remain singletons. When \(N=1\), no fictitious
  zero-dimensional Tonelli integral is needed.
- Contribution to target step: The lemma converts anchor properness into a
  measurable Lebesgue-null certificate suitable for one full joint density.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-002-law-null} states the
  exact probability-zero conclusion for every admissible law and every tested
  interval. It explicitly retains arbitrary coordinate correlation and the
  original \(N\)-dimensional coefficient vector.
- Proof validity: Assumption~\ref{assump:cube-density-laws} supplies one joint
  Lebesgue density \(f_\mu\) on \(\mathbb R^N\). Since the preceding lemma
  makes \(Z_\infty(I)\) Borel and Lebesgue-null,
  \[
  \mu(Z_\infty(I))
  =\int \mathbf 1_{Z_\infty(I)}f_\mu\,d\lambda_N
  \le \kappa\lambda_N(Z_\infty(I))=0.
  \]
  Intersecting with the support cube is harmless and is displayed explicitly.
  The argument establishes equality to zero, not merely an almost-sure
  conditional statement or a residual estimate.
- Cited-result and assumption audit: The primitive law assumption provides
  absolute continuity, support, and the density cap. No marginal density,
  conditional density, product factorization, Fubini step over random
  coordinates, or coordinate independence is asserted. The only local input
  is Lemma~\ref{lem:step-002-lebesgue-null}.
- Rigor checklist: The density bound is used only almost everywhere, which is
  sufficient for the integral inequality. The conclusion is ordinary
  probability for each fixed law and is then universally quantified over the
  law class. Empty sets, nonempty proper loci, and singletons are all Borel
  null sets covered by the same calculation.
- Local adversarial test: A law may exhibit arbitrary correlation or have a
  density concentrated near the persistent locus; the full joint density
  still assigns exactly zero mass to that locus. A singular law supported on
  the locus would break the claim, but such a law is excluded precisely by
  Assumption~\ref{assump:cube-density-laws}, not by an implicit independence
  condition. The calculation is unchanged for \(F_0\equiv0\) and for
  \(N=1\).
- Contribution to target step: The proposition supplies the exact law-null
  persistent-root certificate with no exceptional probability remainder.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The affine-intersection and
translation argument, Borel and Lebesgue nullity, and conversion under the
full joint density each have a named local unit with a matching theorem-style
statement and proof. The standard facts that arbitrary intersections of
closed sets are closed and singleton subsets of \(\mathbb R\) are null are
used locally at their natural atomic level; Tonelli is separately restated
with its current-space hypotheses. The proof explicitly covers the empty and
nonempty branches, \(F_0\equiv0\), arbitrary feature dependence, constant
anchor-compatible dictionaries, and \(N=1\). No claim from
`global_proof.md` is used as mathematical authority.

## Target Claim Audit

The proof establishes exactly the accepted `step_002` row. For each arbitrary
tested nondegenerate interval \(I\), it proves that
\[
Z_\infty(I)
=\{a:F_0+\langle a,F\rangle\equiv0\text{ on }I\}
\]
is empty or a proper affine subspace and that every
\(\mu\in\mathcal D_{N,R,\kappa}\) assigns it probability zero. The
properness source is the literal accepted anchor, and the probability source
is absolute continuity of one arbitrary full joint law. Quantifier order,
coefficient dimension, deterministic status of \(F_0\), ordinary-probability
mode, and interval scope all match the setting and sketch. Taking
\(I=\Theta\) also yields the global persistent-locus clause in the formalized
goal. The auxiliary Borel and Lebesgue-null conclusions strengthen only the
derivation, not the exported target.

## Explicit Rate Audit

The sole quantitative output is the exact exceptional probability zero
required by rate objectives R2 and R4. There is no hidden constant,
confidence parameter, auxiliary tolerance, asymptotic regime, or term
absorption. The fixed feature tuple, anchor index, and instance data remain
fixed while the conclusion holds separately for every law and interval. The
probability mode is ordinary probability; the interval mode is pairwise for
every tested interval; and the geometric mode is \(N\)-dimensional Lebesgue
nullity in the original coefficient coordinates. The complete conversion is
\(\mu(Z_\infty(I))\le\kappa\lambda_N(Z_\infty(I))=0\), so later affine and
monic consumers receive no exceptional remainder. The deterministic offset
remains outside the random vector, preserving the exact monic baseline
interface.

## Notation Surface Audit

The exported object \(Z_\infty(I)\) is correctly classified as
`public-facing` and is the minimal downstream interface. The direction space
\(L_I\) is `appendix-local`; it is defined directly from the setting features
and used only to expose affine structure. The selected point \(a^0\), test
point \(\bar\theta\), nonpivot coordinate \(\beta\), basis vector
\(e_{j_*}\), and Lebesgue notation are `proof-local` and do not create a
helper dictionary or theorem-facing condition. Every symbol has setting,
dependency, or direct local provenance. No new constant, margin, threshold,
event, norm, or generated invariant is exported.

## Target-Step Assembly Audit

The assembly cites accepted Lemma~\ref{lem:step-001-anchor} for the exact
anchor, Lemma~\ref{lem:step-002-affine-locus} for the empty-or-proper affine
dichotomy, Lemma~\ref{lem:step-002-lebesgue-null} for Borel and Lebesgue
nullity in the actual coefficient space, and
Proposition~\ref{prop:step-002-law-null} for conversion under each admissible
joint density. These named results jointly imply every clause of the target
with no assembly-only lemma, bare local-unit reference, changed dependency,
or added assumption. The empty/nonempty, \(F_0\equiv0\), \(N=1\), and
arbitrarily correlated-law cases remain within the assembled quantifiers.

## Review Rationale

All three non-atomic local units are self-contained and valid line by line.
The proof gives the required arbitrary-intersection affine translate,
translation by \(e_{j_*}\), properness, Borel measurability, Tonelli graph
nullity in \(\mathbb R^N\), and full-joint-density probability conversion,
including every requested null and boundary regime. Assumptions and the
accepted dependency have correct provenance, the target assembly is exact,
and neither a local repair nor a sketch-interface repair is needed. Therefore
`ACCEPTED` is the controlled status and `None` is the smallest retry target.
