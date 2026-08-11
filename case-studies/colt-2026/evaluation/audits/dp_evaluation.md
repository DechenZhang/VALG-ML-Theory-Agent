# Independent evaluation: differential privacy and private PAC learning

## Scope, method, and evidence limits

This report evaluates all five copied public theory bundles under
`../../05-dp-pac`:

- subproblem 001, Perspective 1 / idea 3;
- subproblem 001, Perspective 2 / idea 4;
- subproblem 001, Perspective 3 / idea 1;
- subproblem 002, Perspective 1 / idea 5; and
- subproblem 002, Perspective 2 / idea 2.

Scores follow `../RUBRIC.md`. Internal `ACCEPTED` labels,
`proof_review.md` files, and workflow reviews were used only to locate claims.
The proof evidence was the copied `setting.md` and public
`theory/latex_template/*.tex` bundle.

The root parent source
`../../05-dp-pac/source.pdf`
was read directly with PDFKit. The PDF, not either `RESEARCH_BRIEF.md`,
controls both target contracts below.

Novelty cutoff: **2026-08-08**. The local literature surveys were treated as
seed lists. A fresh OpenAlex search for closer work on private direct sums,
VC-sensitive refinements of the Lyu learner, and threshold-minor lower bounds
was attempted. Sandbox DNS failed, and the escalated network request failed
with HTTP 503. No new primary source could therefore be retrieved. All
novelty scores are provisional and capped at `N4`; absence of closer work is
not claimed.

Every bundle uses at least one theorem-critical external result whose primary
text is not present locally: Yan (2025), Alon--Livni--Malliaris--Moran
(2019), Bun--Livni--Moran (2020/2021), Bun--Nissim--Stemmer--Vadhan (2015),
or Lyu (2025). The public appendices often restate and adapt those interfaces,
but a restatement is not independent source verification. The rubric's
unverified-citation cap therefore gives `S<=6` for every bundle. No stronger
soundness score is assigned on the strength of internal source-audit claims.

A representative independent Tectonic compilation was attempted for the
Perspective 1 / idea 3 product bundle. Tectonic failed before TeX processing
with the macOS `system-configuration` NULL-object panic. Existing compiled
`main.pdf` files are present in all five copied results. This is recorded as an
environmental verification limit, not as a mathematical defect.

Weighted scores use exactly

\[
W=0.4P+0.4S+0.2N.
\]

## Parent-paper target contracts

### Subproblem 001: Open Question 1

PDF p. 1 defines the approximate-DP setting and states the standard regime:
`epsilon` is a small constant and `delta` is much smaller than the inverse
sample size. PDF p. 2 restricts attention to finite-Littlestone classes and
states the current generic interval

\[
\Omega(\operatorname{VC}(C)+\log^*\operatorname{LD}(C))
\quad\text{to}\quad
\min\{O(\log|C|),\widetilde O(\operatorname{LD}^5(C))\}.
\]

Open Question 1 on PDF p. 3 asks for a combinatorial measure determining the
sample complexity of private learning, analogously to VC dimension in the
nonprivate setting. The logical endpoint is a uniform characterization over
the unrestricted realizable approximate-DP model, with arbitrary
distributions and no properness or computational restriction. The paper
explicitly identifies a generic
`poly(VC,log* LD)` upper bound, or even `poly(VC,log LD)`, as major progress.

PDF p. 3 also calibrates restricted results. VC-one classes are already
essentially characterized by `log* LD`, and thresholds, rectangles, and
halfspaces have specialized upper bounds much closer to the generic lower
bound than to `log|C|`. Such families can provide special-case progress, but
they do not resolve the universal characterization.

### Subproblem 002: Open Question 2

Open Question 2 on PDF p. 4 is existential. It asks for one sequence of
finite classes `(C_kappa)` satisfying all three clauses:

1. `|C_kappa| -> infinity`;
2. `log|C_kappa|` is superpolynomial in `VC(C_kappa)`, with the paper's
   explicit every-power/eventually quantifier; and
3. unrestricted approximate-private PAC learning requires
   `Omega(log|C_kappa|)` samples.

A valid affirmative witness sequence can fully answer the question; it need
not cover every class. A negative answer, by contrast, must rule out every
eligible sequence. The same page offers a weaker intermediate target: keep
Items 1--2 and place private complexity closer to `log|C|` than to VC on a
logarithmic or log-logarithmic scale, with analogous comparisons allowed for
`LD` or `poly(LD)`.

PDF p. 4 expressly notes that the stated threshold, rectangle, and halfspace
families cannot answer even the relaxed question through their known rates:
their private complexity is negligible relative to `log|C|` and remains much
closer to VC. Thus a threshold-based lower bound must demonstrate a genuinely
stronger scale rather than inherit full progress merely from satisfying
Items 1--2.

## Novelty comparison matrix

| Bundle mechanism | Closest locally evidenced precedent | Exact delta and assessment |
| --- | --- | --- |
| Cartesian VC-one products | Yan (2025) supplies the one-factor VC-one learner; ALMM (2019) supplies the one-factor unrestricted lower interface | The bundle adds support-two routing privacy, weighted shortage control without balanced distributions, and a hidden-factor/product-prior direct sum. This is a nontrivial synthesis rather than a direct invocation, but its ingredients and nearest external comparator were not independently checked. |
| VC-sensitive quotient-first learner | Lyu (2025) gives the `~O(d^5)` learner; Sauer--Shelah gives standard VC trace counting | The new step counts exact master-sample error traces by `(en/v)^v`, then integrates that count into Lyu's fixed-trace event and a producer-block holdout to expose `v d^4`. The substitution is proof-critical, but it is built from a standard growth bound and an unverified source architecture. |
| Tagged threshold-product lower bound | ALMM (2019) gives the unrestricted one-chain `Omega(log* N)` obstruction | A learner-independent finite hard prior, hidden-tag simulation, one-use privacy, and overflow control tensorize the one-chain obstruction to `Omega(k log* N)`. The method overlaps heavily with the broader product and threshold-minor bundles in this same portfolio. |
| Global-stability consequence | Bun--Livni--Moran converts a frequent accurate atom into a private learner | The branch performs exact recoding, padding, and asymptotic privacy scheduling. The deduction is useful, but the assumed universal polynomial global-stability profile carries the open difficulty; the remaining work is mainly careful specialization. |
| Disjoint-threshold-minor lower bound | ALMM (2019), the threshold/private-interior-point lower-bound line, and standard finite Ramsey/minimax tools | The branch builds a one-use hidden-arm direct sum that remains valid for arbitrary improper learners and for any class containing the minor. This is broader than one explicit product, but the one-chain and Ramsey interfaces remain unverified. |

## Subproblem 001 evaluations

### Perspective 1 / idea 3: Cartesian products of VC-one factors

**Advertised public theorem.** Under a finite canonical disjoint Cartesian
factorization, nonconstant VC-one factors of finite Littlestone dimensions
`d_i`, and finite-or-countable measurable evaluation quotients, define

\[
M_\oplus(C)=\sum_i(1+\log^*(d_i+1)).
\]

The theorem gives an all-input approximate-DP routed learner with sample
complexity

\[
O\!\left(\frac{M_\oplus(C)}{\varepsilon}
\log^2\frac{eM_\oplus(C)}{\varepsilon\delta}\right)
\]

for every allowed `delta`, and a candidate-wise unrestricted lower bound
`Omega(M_oplus(C))` under the two displayed small-delta checks
(`3_main.tex:3-138`). It also states the exact one-factor reduction
(`3_main.tex:102-122`).

**Solution claim sheet.** This is a two-sided characterization for a
structured subclass. The added assumptions are the full Cartesian product of
VC-one factors and countable evaluation coding; the lower comparison also
requires candidate-wise `delta` bounds. It preserves unrestricted improper
learners, arbitrary distributions, exact population risk, and approximate
replacement privacy. It does not characterize arbitrary finite-Littlestone
classes.

**Progress: `P6/P10`.** This is a broad paper-aligned slice rather than one
fixed family: the number of factors is arbitrary, the factors need not be
thresholds or finite, and the upper theorem is distribution-free and valid for
all `delta` in its stated range. It turns the known VC-one characterization
into an additive product measure and supplies a matching candidate-wise lower
order. That materially extends the paper's known special case. It is not
`P7+` because the full-product/VC-one decomposition is a strong structural
restriction, countability excludes some measurable classes, and the lower
side requires stronger candidate delta conditions than the paper's informal
`delta << 1/n` convention alone. The universal characterization remains open.
Because the theorem is capped at `S6`, this is provisional claimed progress.

**Soundness: `S6/S10`.** No concrete internal contradiction was found in the
audited critical chain.

- The quotient/product identities and exact risk pullback are proved at
  `5_appendix.tex:5-363`.
- The one-factor totalized learner and its all-input privacy and utility are at
  `5_appendix.tex:365-991`; theorem-critical Yan and BNSV interfaces occur
  here and were not independently source-verified.
- A global replacement affects at most two padded factor prefixes, and the
  proof spends `(epsilon/2,delta/2)` on each, at
  `5_appendix.tex:993-1334`. The joint-event composition is done on the full
  product sigma-field rather than only rectangles.
- Weighted occupancy and bad-factor mass avoid an invalid all-factor union
  bound (`5_appendix.tex:1336-1982`), and the public quota sum is closed at
  `5_appendix.tex:1984-2133`.
- The unrestricted lower chain constructs finite hard priors, controls
  overflow, inserts each hidden-factor row at most once, tensorizes exact risk,
  and extracts a deterministic PAC-failure atom
  (`5_appendix.tex:2336-4668`). The final candidate and one-factor interfaces
  are assembled at `5_appendix.tex:4670-5107`.

The ALMM/Yan source statements are theorem-critical and unavailable locally,
and the 5,107-line appendix was audited representatively rather than
exhaustively. Both facts independently enforce the rubric's `S6` cap.
Artifact compliance otherwise passes, subject to the environment-only compile
limitation.

**Technical novelty: provisional `N4/N10`.** Support-two factor routing,
weighted shortage accounting, and the one-use hidden-factor direct sum form a
useful architecture for composing VC-one characterizations without balancing
the data distribution or restricting the learner. The components are
proof-critical. However, factorwise private learning, composition, occupancy
bounds, minimax, and hidden-coordinate simulations are known tool classes, and
no verified nearest-neighbor search was completed. The branch's lower
mechanism also overlaps with Perspective 3 and subproblem 002 Perspective 2.

**Bottom line.** Provisional material progress on a broad structured subclass.
Weighted score: **`5.6/10`**.

### Perspective 2 / idea 4: VC-sensitive refinement of the generic upper bound

**Advertised public theorem.** For every finite-Littlestone class with a
finite-or-countable measurable evaluation quotient, the quotient-first
learner is all-input `(epsilon,delta)`-DP and distribution-free realizable PAC,
with

\[
N\le K_V\Lambda^4 R_{\rm VC},\qquad
R_{\rm VC}=
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
{\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}.
\]

It also independently reconstructs the old `d^5` and finite-class arms and
selects the least certified complete learner, giving
`~O(min{log^+|C|,d^5,v d^4})` in the fixed-learning-parameter comparison
(`3_main.tex:3-120`).

**Solution claim sheet.** This is a universal upper-bound improvement on a
measurability-restricted but otherwise arbitrary finite-Littlestone class. It
preserves arbitrary distributions, improper output, all-input privacy, and
fixed-sample PAC utility. It neither supplies a matching lower bound nor
replaces polynomial dependence on `d` by polynomial dependence on `log d` or
`log* d`. The asymptotic `delta << 1/N` interpretation is attached to the
explicit selected-learner schedule rather than claimed for every fixed
positive `delta`.

**Progress: `P6/P10`.** The bound is broad and paper-facing: it improves the
paper's generic `~O(d^5)` arm by the factor `v/d`, which can vanish along
classes with `v=o(d)`, while recovering `d^5` at `v=d`. This is a material
quantitative tightening and introduces VC sensitivity into the generic
upper-bound frontier. It is not the paper-designated `P8` milestone: `v d^4`
is still polynomial in `LD`, not `poly(v,log LD)` or
`poly(v,log* LD)`, and no characterization or lower match is given. The
countable-quotient condition is an additional scope restriction. Headline
soundness remains provisional at `S6`.

**Soundness: `S6/S10`.** No concrete internal failure was found in the sampled
critical calculations.

- The exact VC error-trace count and repeated-coordinate handling are at
  `5_appendix.tex:1995-2356`; the Sauer bound is applied only to actual class
  concepts, not to improper SOA outputs.
- The without-replacement fixed-trace event and its finite union are at
  `5_appendix.tex:2362-2895`. The argument uses only block marginals and does
  not assume independent blocks.
- Current/source stage indexing, essential-list construction, and DDim
  descent to a common actual function are at `5_appendix.tex:3451-4810`.
- One-record locality, stopped AboveThreshold privacy, selected-stage Sparse
  Sample privacy, adaptive composition, and raw pullback are at
  `5_appendix.tex:5506-6367`.
- The selected improper SOA's empirical certificate and the producer-block
  holdout PAC conversion are at `5_appendix.tex:6368-7801`; the proof first
  obtains a pathwise finite-family inclusion and only then invokes complement
  independence.
- All auxiliary quantities and ceilings are eliminated at
  `5_appendix.tex:7803-8291`, and the fixed- versus scheduled-delta frontier is
  kept separate at `5_appendix.tex:10734-10895`.

The theorem nevertheless depends throughout on exact Lyu definitions,
Corollary 4.1, Lemmas 3.1, 3.2, 4.1--4.3, and Theorem 3. Those source
interfaces could not be independently checked. The appendix is 10,930 lines,
so the audit was also representative rather than exhaustive. `S6` is the
maximum justified score, with no separately identified lower defect.

**Technical novelty: provisional `N4/N10`.** The proof-critical idea is to
replace the coarse structural counting charge by exact VC growth of the
master-sample error traces and integrate it into the Lyu mechanism without
applying the VC bound to improper outputs. The producer-mark holdout then
converts the selected list item to population utility. This is a careful and
potentially useful refinement, but Sauer--Shelah counting and holdout
conversion are standard, while the surrounding architecture is inherited
from an unverified source. No `N5+` claim is supportable without a fresh
nearest-work audit.

**Bottom line.** Provisional material universal upper-bound progress, but not
the paper's logarithmic-Littlestone milestone. Weighted score:
**`5.6/10`**.

### Perspective 3 / idea 1: tagged threshold-product lower bound

**Advertised public theorem.** For the tagged product of `k` threshold
classes on disjoint copies of `[N]`, every unrestricted approximate-private
PAC learner in the displayed candidate regime satisfies

\[
n\ge a k\log_2^*N.
\]

On the tower diagonal it proves

\[
n=\Omega(\operatorname{VC}(C)\log^*\operatorname{LD}(C))
=\Omega(r^2),
\]

an unbounded improvement over the additive generic lower expression on that
family (`3_main.tex:3-94`). It explicitly records that this remains
`o(VC*2^{log* LD})` and `o(log|C|)`.

**Solution claim sheet.** This is a lower bound for one explicit structured
family, with fixed PAC constants and a source-compatible small-delta candidate
condition. It applies to arbitrary improper, computationally unbounded
learners. It gives neither a universal characterization nor the paper's named
strong separation scale.

**Progress: `P5/P10`.** The theorem gives genuine separation evidence: on the
tower diagonal it beats `VC+log* LD` by an unbounded factor while retaining
the required unrestricted approximate-DP learner quantifier. That is more
than a diagnostic. It remains a specially engineered threshold product and is
strictly below both the paper's `VC*2^{log* LD}` example and `log|C|`; PDF p.
4 warns that threshold-derived families do not answer the sibling existential
question through their known low rates. The broader Cartesian-product and
threshold-minor bundles in this portfolio also subsume much of this result's
scope. `P5` therefore fits meaningful restricted-family progress rather than
material universal progress.

**Soundness: `S6/S10`.** No internal privacy or direct-sum defect was found in
the sampled chain.

- Exact class parameters are derived at `5_appendix.tex:5-205`.
- The theorem-critical ALMM one-chain wrapper is at
  `5_appendix.tex:206-514` and could not be source-verified.
- The finite hard prior and minimax argument are at
  `5_appendix.tex:515-1265`.
- Hidden-tag factorization, one-use simulation, overflow, actual-to-ideal
  coupling, and one-charge privacy are at `5_appendix.tex:1827-3798`.
- The strict prior-average contradiction closes at
  `5_appendix.tex:3799-4234`, and the tower arithmetic and unresolved-scale
  comparison are at `5_appendix.tex:4235-4733`.

The external ALMM/Ramsey interfaces and a representative rather than
exhaustive audit cap the score at `S6`. No additional blocking issue was
identified.

**Technical novelty: provisional `N4/N10`.** The learner-independent finite
prior, hidden-tag one-use simulator, and exact risk tensorization are
proof-critical and nontrivial. They extend a single-threshold obstruction to a
multiplicative product lower bound. The mechanism is assembled from minimax,
occupancy, coupling, and the cited threshold lower bound, and it overlaps
substantially with two broader accepted bundles. External novelty remains
provisional; portfolio-marginal novelty is low.

**Bottom line.** Provisional meaningful lower-bound progress for an explicit
family. Weighted score: **`5.2/10`**.

## Subproblem 001 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 (tie) | Perspective 1 / idea 3 | 6 | 6 | 4* | **5.6** | Broad structured two-sided result; lower side has candidate delta conditions. |
| 1 (tie) | Perspective 2 / idea 4 | 6 | 6 | 4* | **5.6** | Broadest scope and best universal upper improvement; still polynomial in `LD`. |
| 3 | Perspective 3 / idea 1 | 5 | 6 | 4* | **5.2** | Explicit-family multiplicative lower bound, largely subsumed within the portfolio. |

The tie is exact under the requested weights. If a secondary deployment
priority is required, Perspective 2 comes first for universal class coverage;
Perspective 1 comes first for two-sided quantitative closure on its declared
subclass. This secondary distinction is not part of `W`.

## Subproblem 002 evaluations

### Perspective 1 / idea 5: conditional global-stability nonexistence route

**Advertised public theorem.** Assume one universal polynomial global-stability
profile: every finite class has a distribution-independent producer using
`q(C)^a` samples and outputting some accurate distribution-dependent atom with
probability at least `q(C)^(-a)`, where
`q=VC+1+log*(1+LD)` (`1_intro.tex:57-82`). Under that assumption, every
sequence satisfying Items 1--2 has an unrestricted approximate-private learner
with

\[
N_\kappa=(\log|C_\kappa|)^{o(1)}=o(\log|C_\kappa|)
\]

and negligible `delta`; hence no eventual `Omega(log|C_kappa|)` lower bound
can hold (`3_main.tex:3-100`).

**Solution claim sheet.** This is a conditional universal negative
consequence, not a construction and not an unconditional impossibility
theorem. It preserves Items 1--2, unrestricted learners, distribution-free
PAC utility, and a standard negligible approximate-DP schedule. The sole
extra assumption is universal polynomial global stability, which carries the
central unresolved upper-bound burden.

**Progress: `P3/P10`.** The public theorem rigorously reduces Open Question 2
to a strong global-stability statement and proves the nontrivial asymptotic
consequence with the correct privacy schedule. But the rubric's explicit DP
anchor applies: the assumed universal polynomial stability profile is
essentially the missing hard theorem. Without it, no eligible sequence is
ruled out. The central-unresolved-property cap is therefore `P3`.

**Soundness: `S6/S10`.** Conditional on the stated stability assumption, no
internal defect was found in the audited chain.

- Binary recoding and the Bun--Livni--Moran stable-selection interface are at
  `5_appendix.tex:5-374`.
- Exact sample domination and padding are at `5_appendix.tex:375-591`.
- The privacy schedule and subpower consequences are at
  `5_appendix.tex:592-1192`.
- Uniform privacy negligibility and the sequence-level contradiction are at
  `5_appendix.tex:1193-1812`.

Theorem 17 of Bun--Livni--Moran is theorem-critical and unavailable for
independent verification, so `S6` is mandatory despite the internally
coherent specialization. Artifact compliance passes subject to the compile
limitation.

**Technical novelty: provisional `N3/N10`.** Exact padding, the cardinality
correction, and the quantified negligible-delta schedule are careful and
useful. The mathematical engine is nevertheless the known
stable-atom-to-private-learner conversion, while the new stability statement
is assumed rather than proved. A new assumption does not itself earn
mechanism novelty. The result is a nontrivial adaptation, not a new lower- or
upper-bound technique.

**Bottom line.** Provisional structural reduction whose hypothesis carries
the open problem. Weighted score: **`4.2/10`**.

### Perspective 2 / idea 2: disjoint-threshold-minor direct sum

**Advertised public theorem.** Any finite class containing a `(k,N)`
disjoint-threshold restriction table requires

\[
m\ge c k\log^*N
\]

for every unrestricted approximate-private distribution-free realizable PAC
learner at the stated fixed constants and
`delta_m <= c_delta/(m^2 log(em))` (`3_main.tex:4-20`). The `k=1`
corollary exactly recovers the one-chain rate (`3_main.tex:22-34`).

**Solution claim sheet.** This is a structural restricted-family lower bound.
The static threshold minor is independently checkable and does not assume the
conclusion. The theorem preserves arbitrary improper outputs and applies to
any ambient finite class containing the minor. For the exact product minor,
`|C|=N^k` and `VC=k`, so suitable sequences satisfy Items 1--2, but the lower
bound is only `k log* N`, not `k log N=log|C|` and not the paper's stated
closer-to-`log|C|` relaxed separation.

**Progress: `P5/P10`.** The result multiplicatively tensorizes the known
one-chain lower obstruction while retaining the unrestricted learner and
approximate-DP quantifiers. It is stronger than the generic additive lower
envelope and applies beyond one exactly named product through the minor
condition. It does not establish Item 3, and its exact threshold products
remain far below `log|C|`; hence it cannot be a full or paper-designated major
answer. `P5` reflects a substantive restricted lower theorem with a central
quantitative gap still open.

**Soundness: `S6/S10`.** No defect was found in the sampled privacy/direct-sum
chain.

- The with-replacement secrecy wrapper and arbitrary-output finite restriction
  are at `5_appendix.tex:6-319`.
- Homogeneity, endpoint gap, moving-record family, binary-product
  contradiction, and Ramsey inversion are at `5_appendix.tex:320-2169`.
- Finite minimax supplies a learner-independent hard prior at
  `5_appendix.tex:2170-2649`.
- The hidden-arm kernel inserts each real row at most once and inherits exact
  privacy (`5_appendix.tex:2650-3017`); coupling, overflow, exchangeability,
  and utility are at `5_appendix.tex:3018-4274`.
- The same `delta_m` is transferred through the denominator comparison and
  the strict contradiction closes at `5_appendix.tex:4275-4800`.

The ALMM threshold/Ramsey statements are theorem-critical and unverified, and
the audit was representative rather than exhaustive. The resulting `S6` is a
verification ceiling, not a discovered false inference.

**Technical novelty: provisional `N4/N10`.** The one-use hidden-arm kernel,
finite hard prior, and exact arbitrary-output restriction make the direct sum
survive improper learners and approximate privacy. This is proof-critical and
more than a parameter substitution. It still combines established
Ramsey/minimax/concentration tools with an unverified one-chain obstruction,
and the mechanism overlaps the tagged-product and Cartesian-product bundles.
No `N5+` claim is justified without a primary-source and nearest-work audit.

**Bottom line.** Provisional meaningful restricted lower-bound progress;
Item 3 remains open. Weighted score: **`5.2/10`**.

## Subproblem 002 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 | Perspective 2 / idea 2 | 5 | 6 | 4* | **5.2** | Substantive unrestricted threshold-minor direct sum; still far below `log|C|`. |
| 2 | Perspective 1 / idea 5 | 3 | 6 | 3* | **4.2** | Correctly scoped conditional reduction; universal stability carries the unresolved burden. |

`*` Novelty is provisional because the fresh search and primary-source
nearest-neighbor verification could not be completed.
