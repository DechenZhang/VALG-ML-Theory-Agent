# Independent evaluation: non-adaptive one-bit mean estimation

## Scope, method, and evidence limits

This report evaluates the two copied public theory bundles under
`../../04-one-bit-mean/sp-01/results/`.
Scores follow `../RUBRIC.md`, and weighted rankings use exactly

\[
W=0.4P+0.4S+0.2N.
\]

The root-level `../../04-one-bit-mean/source.pdf` was read directly, page by page. Internal
`ACCEPTED` labels and proof reviews were used only for navigation, not as
proof or citation evidence. The soundness audit used each copied `setting.md`
and every public file under `theory/latex_template/`.

Both bundles use Lau and Scarlett, *Order-Optimal Sequential 1-Bit Mean
Estimation in General Tail Regimes*, arXiv:2604.07796v2, Theorem 16, for a
theorem-critical coding-localization block. No primary PDF, TeX source, or
arXiv archive for that paper exists in the workspace, temporary directories,
Downloads, Documents, or Spotlight index. The parent open-problem PDF confirms
at a high level that the same paper has a coding-based non-adaptive
localization stage (PDF p. 4), but it does not reproduce Theorem 16's exact
statement, constants, confidence dependence, balanced-code construction, or
hypothesis map. Workflow notes saying that a frozen archive was checked in an
earlier run are not public source evidence. The rubric therefore imposes its
mandatory unverified-theorem-critical-citation cap of `S6` on both bundles.

Novelty cutoff: **2026-08-08**. The parent PDF and its direct prior-work
discussion, both public bundles and bibliographies, and the sibling literature
survey were searched locally. No fresh external search was performed, in
accordance with the task instruction, and no locally verifiable primary
nearest-neighbor paper beyond the parent PDF was found. The survey is treated
only as a lead list. Consequently both novelty scores are provisional and
capped at `N4`.

The local environment has no `pdflatex`, so recompilation could not be rerun.
Both copied bundles include an `accepted_theory.pdf`; this is artifact
evidence only and does not alter any mathematical or citation verdict.

## Original target contract

The controlling statement is **Open Problem 1 on PDF p. 3**, using the
definitions and rate on PDF pp. 2--3 and the prior-work/barrier discussion on
PDF p. 4.

- Fix any known `k > 1`. The data law may be any member of the unrestricted
  class
  \(\mathcal D(k,\lambda,\sigma)\), with
  \(\mu(D)\in[-\lambda,\lambda]\), \(\lambda\ge\sigma>0\), and only
  \(\mathbb E|X-\mu(D)|^k\le\sigma^k\).
- Each independent sample produces exactly one membership bit
  \(Y_t=\mathbf1\{X_t\in A_t\}\), where \(A_t\) may be an arbitrary
  measurable set. Randomized and non-identical queries are allowed.
- Fully non-adaptive means every query is fixed before any message is
  observed. The final decoder may use the complete transcript and protocol
  randomness, but there may be no adaptive query transition.
- Uniform PAC accuracy requires
  \(\sup_D\Pr\{|\widehat\mu-\mu(D)|>\epsilon\}\le\delta\), jointly over
  samples and protocol randomness.
- The question asks whether, for every fixed `k > 1`, constants `c_k,C_k > 0`
  exist uniformly for all \(\lambda\ge\sigma>0\),
  \(0<\epsilon\le c_k\sigma\), and \(\delta\in(0,1/2)\), with
  \(n\le C_kr_k\), where

\[
r_k=\log\frac\lambda\sigma+
\begin{cases}
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.4em]
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac\sigma\epsilon
 \log\dfrac1\delta,&k=2,\\[0.4em]
\left(\dfrac\sigma\epsilon\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2.
\end{cases}
\]

This is an existential question, so one sound full-scope construction answers
it affirmatively. PDF p. 4 says that coding-based localization followed by
location-dependent refinement already achieves this rate with one adaptive
transition. The unresolved step is to precommit refinement while controlling
tail aliasing over the entire nonparametric moment class. Threshold-only,
interval-only, parametric, bounded-support, one-regime, or already-localized
results do not answer the question.

## Perspective 1 / idea 1: shifted-dyadic digit telescope

**Advertised public theorem.** The technical theorem and rate corollary in
`perspective_1/idea_1/theory/latex_template/3_main.tex:3-97` construct a
fixed-horizon protocol using coding localization followed by a simultaneously
precommitted bank of shifted dyadic floor-digit queries. For every fixed
\(k>1\), it claims the exact uniform PAC conclusion and
\(n\le C_kr_k\) over the full source parameter range.

**Progress: `P10/P10` (provisional target coverage).** Clause by clause, the
advertised theorem matches Open Problem 1: the complete unrestricted moment
class, arbitrary Borel one-bit queries, independent samples, no adaptive
transition, every \(\lambda,\sigma,\epsilon,\delta\) quantifier, all three
`k` regimes, the single required middle-regime logarithm, a deterministic
fixed horizon, and constants depending only on fixed `k`. The localization
event is generated by the same precommitted protocol rather than assumed, and
the decoded center affects only decoder-side selection and centering. There is
no paper-level scope or rate delta. The parent PDF itself identifies the cited
coding localization as known prior work, so importing that component does not
package the new open difficulty. If the full proof is verified, this is an
affirmative resolution, hence `P10`; because soundness is only `S6`, it must be
reported as a provisional full-resolution claim rather than as a solved open
problem.

**Soundness: `S6/S10`.** No internal mathematical blocker was found after the
localization interface, but the cited interface itself cannot be certified
from a local primary source.

- The unverified dependency occurs in `1_intro.tex:36-84` and
  `5_appendix.tex:27-129`. It supplies an always-defined precommitted Borel
  localization interval of width at most \(100\sigma\), failure at most
  \(\delta/4\), and cost
  \(O(\log(\lambda/\sigma)+\log(1/\delta))\). The appendix maps the first-
  moment premise, bins, Hamming decoder, ties, and constants, but the balanced-
  code theorem and its probability guarantee remain externally sourced.
- Conditional on that interface, recentering is valid and the four shifted
  grids uniquely put every decoded center a fixed distance from each selected
  cell boundary (`5_appendix.tex:232-862`). Every refinement query remains
  independent of the center and Borel (`5_appendix.tex:866-1097`).
- Uniform dithering recovers each selected digit difference exactly; the
  `1/16` offset-match probability and `16/p_j` importance factor cancel
  without bias (`5_appendix.tex:982-1097` and `1824-1913`). The finite digit
  telescope retains both the bottom quantization and top truncation residuals
  (`5_appendix.tex:1102-1341`).
- The pathwise inactivity and geometric ledgers sum all active fine scales
  without a level count and charge coarse scales to \(|X-c|^k\)
  (`5_appendix.tex:1358-1691`). The exact raw second moment then gives the
  required constant, one-log, and power-law variance regimes
  (`5_appendix.tex:1916-2919`).
- Both residual biases, conditional median-of-means, tower conversion, Borel
  precommitment, one-bit accounting, and all ceiling absorptions are explicit
  (`5_appendix.tex:2932-4679`). The final algebra preserves exactly one
  \(\log(\sigma/\epsilon)\) when `k=2`.

Adversarial checks covered \(\lambda=\sigma\), the zero-query localization
branch, \(J=1\), \(h_j=\sigma\), empty auxiliary groups, negative and exact
grid boundaries, \(X=c\), an atom at the top support boundary, rare unbounded
tail observations, \(\epsilon=c_k\sigma\), and
\(\delta\uparrow1/2\). None exposes an additional defect. The local chain is
otherwise theorem-ready, but the unverified theorem-critical citation applies
the rubric's hard `S6` cap. Artifact compliance is a nonblocking pass subject
to the unavailable local TeX compiler.

**Technical novelty: provisional `N4/N10`.** The proof-critical delta from the
parent's two-stage protocol is a decoder-selected, globally precommitted
shifted-digit bank. Four offset grids give a stable selected cell at every
scale; bounded uniform dither estimates a floor-digit difference; the digit
telescope reconstructs displacement; and separate fine/coarse level laws turn
activation into exactly the three moment-dependent rates. Removing the stable
selector or telescope destroys the zero-transition refinement step. The
parent PDF's closest constructions either choose refinement after localization,
pay a global fixed-range cost, or have a poor Fourier refinement exponent.
However, floor quantization, dithering, geometric telescopes,
importance-sampling, and median-of-means are established ingredient classes,
and no primary nearest-neighbor search was completed. `N4` is therefore both
the evidence cap and a defensible nontrivial-synthesis score.

**Bottom line.** Provisional full-resolution contribution; exact target
coverage, internally coherent refinement proof, but not certifiable above
`S6` without the cited localization source. Weighted score: **`7.2/10`**.

## Perspective 3 / idea 1: padded-ring Rademacher multiplexing

**Advertised public theorem.** The theorem and explicit rate corollary in
`perspective_3/idea_1/theory/latex_template/3_main.tex:3-81` use coding
localization plus a simultaneously precommitted padded-dyadic ring bank.
Countable Rademacher masks multiplex all possible locations, while the decoder
selects one nested path after all bits arrive. The claimed conclusion is the
same exact full-scope \(n\le C_kr_k\) PAC theorem.

**Progress: `P10/P10` (provisional target coverage).** The theorem preserves
every required object, protocol, quantifier, error mode, and rate dependence
from Open Problem 1. Its refinement sets are arbitrary Borel sets fixed before
the first response, the center is used only for decoder-side path selection,
and the construction covers the complete unrestricted moment class and all
three `k` regimes with no extra structural assumption. The known localization
component is not the open refinement barrier. Thus the advertised theorem is
`P10`-eligible and would answer the existence question affirmatively. As for
Perspective 1, `S6` makes this provisional target coverage, not an established
solution label.

**Soundness: `S6/S10`.** The same unverified citation is theorem-critical at
`2_preliminary.tex:20-33` and `5_appendix.tex:7-112`. The public appendix
restates the source construction, maps it into Borel membership queries, and
tracks its constants, but does not prove the balanced-code localization
guarantee. The local primary source needed to discharge that citation is
absent, so `S6` is mandatory.

- Conditional on localization, the nearest base cell, nested dyadic ancestors,
  child-subtracted rings, four-color disjointness, and countable-query
  measurability are correctly established, including negative indices and
  half-open boundaries (`5_appendix.tex:115-469`).
- Uniform dither gives the exact first and second moments. Fresh per-query
  Rademacher masks cancel every non-target same-color ring in expectation,
  while coordinate and mass statistics invert all level/color/branch/type
  probabilities (`5_appendix.tex:472-629`). Their sum is exactly
  \((X-m_0)\mathbf1\{X\in J_{S,j_S}\}\), leaving one outer residual
  (`5_appendix.tex:631-701`).
- Target and alias distance lemmas charge every active higher-level ring to
  \(|X-m_0|^k\). Crucially, alias means cancel but alias squares remain in the
  public second-moment calculation; the all-alias ledger is summed before the
  population expectation (`5_appendix.tex:705-1152`). This yields
  \(\operatorname{Var}(W_i\mid c)\le C_k\sigma^kZ_S\) with no hidden second
  logarithm at `k=2`.
- The outer scale, moment tail bound, three exact normalizer regimes,
  conditional iid law, median amplification, unconditional tower step, query
  legality, fixed one-bit horizon, and ceiling absorption close with the
  advertised modes and dependencies (`5_appendix.tex:1155-2186`).

Adversarial checks covered the zero-query branch, \(S=1\), negative dyadic
ancestors, either child branch, same-color target and alias activity, countable
mask measurability, point masses, atoms at included/excluded padding endpoints,
very distant tail observations, `k=2`, \(\lambda=\sigma\), maximal allowed
accuracy, and confidence approaching `1/2`. No further blocking inference was
found. Artifact compliance is a nonblocking pass subject to the unavailable
local TeX compiler.

**Technical novelty: provisional `N4/N10`.** The proof-critical contribution
is a universal padded-ring sketch: four-color disjointness makes each global
query bounded, fresh Rademacher masks remove alias means, a coordinate/mass
pair recenters every selected ring after decoding, and a single all-ring
activation ledger controls all alias squares by the allowed central moment.
This directly addresses the parent PDF's simultaneous localization,
refinement, and tail-aliasing barrier and is not equivalent to Perspective 1's
shifted floor-digit telescope. Nevertheless masking, dithering, dyadic
partitions, importance inversion, and median-of-means have established
precedents, and the nearest primary literature could not be independently
checked. The evidence gate caps the validated score at `N4`.

**Bottom line.** A distinct provisional full-resolution construction with a
coherent internal ring/alias proof, but the common unverified localization
citation keeps the headline at `S6`. Weighted score: **`7.2/10`**.

## Final ranking for subproblem 1

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 (tie) | Perspective 1 / idea 1 | 10 | 6 | 4* | **7.2** | Full target coverage via a shifted-digit telescope; provisional because Theorem 16 is unverified. |
| 1 (tie) | Perspective 3 / idea 1 | 10 | 6 | 4* | **7.2** | Full target coverage via masked padded rings; provisional because Theorem 16 is unverified. |

`*` Novelty is provisional under the `N4` evidence cap. The requested weighted
formula yields an exact tie. There is no evidence-based numerical basis for an
arbitrary strict order: both preserve the complete target, both have the same
theorem-critical citation gap, and both supply distinct nontrivial refinement
mechanisms. Verification of arXiv:2604.07796v2 could raise both soundness
scores simultaneously; a fresh primary literature audit could separate their
novelty scores.
