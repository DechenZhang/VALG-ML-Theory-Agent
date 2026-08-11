# Independent evaluation: power of deep learning over linear models

## Scope, method, and evidence limits

This draft evaluates the six copied public theory bundles under
`../../02-deep-vs-linear`.
Scores follow `../RUBRIC.md`. Internal `ACCEPTED` labels and
`proof_review.md` files were used only to locate claims; they were not treated as
proof evidence. The soundness audit used `setting.md` and every public file in
`theory/latex_template/`, especially the main theorem and appendix proofs.

The original source at `../../02-deep-vs-linear/source.pdf` was read directly.
The branch-local `paper.pdf` files were not used as source authority.

Novelty cutoff: **2026-08-08**. The existing surveys were used only as seed
lists. The checked local routes were the parent PDF and references (PDF pp. 3--6),
the branch bibliographies, the branch technical surveys, and the sibling
`LITERATURE_SURVEY.md`. Fresh OpenAlex and Semantic Scholar queries were
attempted on 2026-08-08, including the exact phrase route `"statistical query"
"dimension complexity"` and a probabilistic-to-deterministic dimension query.
Sandbox DNS was unavailable and the escalation service returned HTTP 503, so no
fresh external result could be retrieved from either route. Consequently no branch receives
`N5+`; all novelty scores are provisional under the rubric's unverified-nearest-
neighbor cap. The closest locally documented direct comparator is Karchmer and
Malach (ICML 2025, arXiv:2505.10423), whose approximate/probabilistic-dimension
upper-bound route is explicitly reported flawed by the parent paper (PDF p. 4).
The nearest method precedents in the available record are standard minimax,
compactness/finite-intersection, and SQ correlation arguments, especially Sion
(1958) and Feldman (2017); the former is precisely cited in the public bundles,
but its primary PDF was not locally available.

Weighted scores use exactly

\[
W=0.4P+0.4S+0.2N.
\]

## Parent-paper target contracts

### Subproblem 001: Open Question 1

The parent paper defines the fully connected ReLU network, standard Gaussian
initialization, logistic-loss SGD update, and time-averaged sign predictor on
PDF pp. 2--3, then asks in **Open Question 1** (PDF p. 3) whether one universal
constant satisfies
\(\operatorname{dc}(H)\le C T S\) whenever that exact SGD procedure, with
\(S\) parameters and \(T\) steps, attains expected error below \(1/4\) for
every input distribution on \(\{\pm1\}^n\) and every target in \(H\). The
expectation is over initialization and SGD sampling. PDF p. 3 allows other
"benign" architectures as interesting variants but excludes specialized
architecture/activation/initialization encodings as cheating. PDF p. 4 calls
polynomial rather than linear bounds and probabilistic dimension notions
relaxations, not answers to the exact deterministic implication.

### Subproblem 2: Open Question 2

PDF p. 3, **Open Question 2**, asks whether there is one universal constant
\(C\) such that, for every binary class over an arbitrary domain and every
\(\varepsilon<1/4\), distribution-independent randomized adaptive
\((m,\tau)\)-SQ learnability implies

\[
\operatorname{dc}(H)\le C m/\tau^2.
\]

The SQ oracle may return any value within \(\tau\) of an unrestricted bounded
query expectation; queries may be randomized and adaptive, and the accuracy
expectation is over learner randomness. The required conclusion is one exact,
deterministic, pointwise sign embedding, independent of the domain size. The
paper records only the converse with polynomial dependence also involving
\(n=\log|X|\) (PDF p. 3). PDF p. 4 explicitly designates polynomial bounds,
domain-size dependence, and confident/probabilistic dimension complexity as
relaxations. Thus a polynomial deterministic bound is paper-endorsed partial
progress only if it follows from the original learner premise, not if its main
compression property is assumed.

## Subproblem 001 evaluations

### Perspective 1 / idea 3: static robust-gate tube

**Advertised theorem.** Under the exact source SGD-success premise, constant
depth \(L\le L_0\), and an initialization event of probability at least
\(1-\delta_0\) on which a uniform ball-wide gate margin and the displacement
budget \(\eta T G_r\le r\) hold, the initialization-gate path-feature law has
expected best tie-resolved linear error at most \(\varepsilon+\delta_0\). Thus
\(\operatorname{dc}_{\varepsilon+\delta_0}(H)\le d_{\rm path}\le S^{L_0}\),
and for \(\delta_0\le\varepsilon\),
\(\operatorname{dc}_{2\varepsilon}(H)\le S^{L_0}\)
(`perspective_1/idea_3/theory/latex_template/3_main.tex:4-40`; added
assumptions at `1_intro.tex:208-228`).

**Progress: `P3/P10`.** This is a target-facing reduction to a relaxation that
PDF p. 4 explicitly invites, but it does not follow from the paper's premise
alone. Exact deterministic dimension becomes approximate probabilistic
dimension, the linear \(CTS\) target becomes \(S^{L_0}\), depth is fixed, and
the robust static gate tube is assumed. Once that tube holds, fixed gates make
the trained iterates linear in initialization path features, so the assumption
carries the central nonlinear bridge. The rubric's central-property cap is
therefore `P3`. The remaining gap is to derive a useful representation from
source success without this tube, remove constant depth, exactify the result,
and achieve \(O(TS)\).

**Soundness: `S10/S10`.** The component score is
`2/2 + 3/3 + 2/2 + 2/2 + 1/1 = 10`, and the critical argument was independently
reconstructed. Forward/adjoint envelopes give the advertised finite gradient
budget, the closed-ball induction is not circular, and continuity plus the
strict ball-wide margin fixes every hidden gate
(`5_appendix.tex:9-378`). The resulting path expansion is exact rather than a
Taylor or NTK approximation; the path-dependent coefficients preserve ties
and are compared with the best fixed-initialization coefficients before the
expectation is taken (`5_appendix.tex:423-626`). The unconditional pushforward
law is measurable, and unstable initializations cost only `delta_0`
(`5_appendix.tex:705-762`). Counting and threshold monotonicity then give the
stated bound (`5_appendix.tex:927-960`). Adversarial checks covered \(L=1\),
\(T=1\), a terminal point on the closed tube boundary, \(G_r=0\), score-zero
ties, an unattained risk infimum, and arbitrary behavior off the good event;
none creates a gap.

**Technical novelty: provisional `N4/N10`.** The proof-critical contribution
is a careful synthesis of an all-history gradient budget, uniform activation
margin, exact fixed-gate path algebra, a target-independent Gaussian
gate-feature law, and a quantifier-safe bad-event charge. Fixed-gate and lazy-
training ideas, path expansions, and probabilistic dimension are established
ingredients; once the robust event is assumed, no individually new proof tool
is isolated. This is useful routine-to-nontrivial synthesis, provisionally
`N4` under the failed fresh-search evidence cap.

**Bottom line.** A correct conditional bridge to a paper-endorsed relaxation,
but the robust-gate hypothesis supplies the decisive stability property.
Weighted score: **`6.0/10`**.

### Perspective 2 / idea 2: confident-to-deterministic amplification

**Advertised theorem.** If the exact SGD-success premise holds and one
target-independent law over \(d\)-dimensional feature maps exactly represents
each target with probability at least \(1/2\), then
\(\operatorname{dc}(H)\le 7TSd\)
(`perspective_2/idea_2/theory/latex_template/3_main.tex:4-24`; confident-map
assumption at `1_intro.tex:102-119`). A polynomial corollary requires a
separate bound \(d\le p(S,T)\).

**Progress: `P3/P10`.** The theorem is a genuine derandomization bridge, but
it derives no bound on \(d\). That unrestricted confident dimension can carry
the entire representation obstruction, so the result establishes neither the
original \(CTS\) endpoint nor an unconditional polynomial relaxation. The
central-property cap gives `P3`. The strongest source-only auxiliary fact is
\(\operatorname{VC}(H)<2T\); it is useful for amplification but does not by
itself control dimension complexity.

**Soundness: `S10/S10`.** The component score is the full `10`, and the proof's
critical probability and counting calculations were independently reproduced.
The random-label argument correctly uses the fact that SGD sees only sampled
labels: on a shattered \(2T\)-point set, an independent test point is unseen
with probability at least \(1/2\), yielding risk at least \(1/4\) and hence
\(\operatorname{VC}(H)<2T\) (`5_appendix.tex:136-359`). A self-contained
Sauer--Shelah calculation gives
\(r=\lceil\log_2(2|H|)\rceil\le7TS\) (`5_appendix.tex:423-653`). Repetition
misses each target with probability at most \(2^{-r}\); a union bound therefore
fixes one common deterministic tuple, and a direct-sum construction preserves
the exact score and ties (`5_appendix.tex:687-972`). Checks of empty \(H\),
\(d=0\), VC dimension zero, \(T=1\), repeated samples, kinks, and zero aggregate
scores found no defect.

**Technical novelty: provisional `N2/N10`.** The mechanism is a correct but
standard combination of a VC/no-free-lunch argument, Sauer--Shelah counting,
independent confidence amplification, a union bound, and block direct sum. The
paper already identifies confident dimension as a relevant relaxation, while
the central confident map is assumed. This is a routine application rather
than a distinct new technical principle.

**Bottom line.** Sound structural amplification, but it leaves the size of the
dimension-producing object completely open. Weighted score: **`5.6/10`**.

### Perspective 3 / idea 2: odd depth-two exactification

**Advertised theorem.** For a bias-free depth-two ReLU network, an antipodally
odd class, and \(2\varepsilon<1/(n+1)\), exact universal source-SGD success
forces every target to be represented by the deterministic identity feature
map. Consequently
\(\operatorname{dc}^{1/2}(H)\le\operatorname{dc}(H)\le n\le S\le TS\)
(`perspective_3/idea_2/theory/latex_template/3_main.tex:4-31`; restrictions at
`1_intro.tex:99-128`).

**Progress: `P5/P10`.** This proves the original deterministic conclusion,
with a sharper rate, on a genuine nontrivial special case while retaining
universal input distributions, the exact Gaussian/logistic/all-layer SGD
protocol, and the prescribed aggregate. It is restricted to depth two,
antipodally odd targets, and accuracy shrinking as \(1/n\), rather than all
\(\varepsilon<1/4\). Those restrictions drive both antisymmetrization and
exactification, so this is meaningful special-case progress (`P5`), not a
broad or near-complete answer. General depth, non-odd targets, and constant
accuracy remain open.

**Soundness: `S10/S10`.** The component score is the full `10`; all critical
identities and convex-geometric cases were independently reproduced. The exact
identity \(\sigma(r)-\sigma(-r)=r\) makes the odd component of every depth-two
iterate linear, and exhaustive tie cases give the factor-two risk transfer
(`5_appendix.tex:8-225`). Running the learner on the symmetrized distribution
and selecting a deterministic vector from its expected error is valid
(`5_appendix.tex:229-310`). If strict homogeneous separation fails, a proved
closest-point/affine-pruning argument gives a signed convex certificate on at
most \(n+1\) points; its uniform distribution forces error at least
\(1/(n+1)\) (`5_appendix.tex:488-705`). The strict accuracy premise contradicts
that obstruction, yielding exact identity representation and the dimension
chain (`5_appendix.tex:709-890`). Adversarial checks covered either tie label,
\(w=0\), source and antisymmetric score ties, \(n=m=T=1\), maximal
\(n+1\)-point certificates, equality at the accuracy threshold, and the empty
class. The theorem correctly requires strict inequality.

**Technical novelty: provisional `N4/N10`.** Exact ReLU odd-part projection is
combined with tie-aware risk transfer and a small-support convex obstruction
to turn distributionwise approximation into exact separation. The ingredients
are classical, but their composition is nontrivial and plausibly reusable for
odd-function comparisons. Without a completed primary-source nearest-neighbor
search, the evidence gate caps the score at `N4`.

**Bottom line.** The only subproblem 001 branch that proves the original exact
deterministic endpoint on a substantive restricted regime. Weighted score:
**`6.8/10`**.

## Subproblem 001 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 | Perspective 3 / idea 2 | 5 | 10 | 4* | **6.8** | Exact deterministic resolution for a substantive odd, depth-two, high-accuracy regime. |
| 2 | Perspective 1 / idea 3 | 3 | 10 | 4* | **6.0** | Useful trajectory-to-feature reduction, conditional on the decisive robust-gate tube. |
| 3 | Perspective 2 / idea 2 | 3 | 10 | 2* | **5.6** | Correct generic amplification, but the unrestricted confident dimension remains assumed. |

`*` Novelty is provisional under the failed-search `N4` cap. There is no tie:
Perspective 3 ranks first on progress because it reaches exact deterministic
dimension in its restricted regime; Perspective 1's mechanism is more
problem-specific than Perspective 2's standard amplification.

## Subproblem 2 evaluations

### Perspective 1 / idea 3: canonical-policy output catalog

**Advertised theorem.** The added catalog assumption fixes a pre-instance list
of at most \(B(1+m/\tau^2)^k\) binary functions containing every tape-specific
output on one proof-chosen rounded exact-center policy
(`latex_template/1_intro.tex:125-149`). The public theorem uses catalog
coordinates to give every target a simplex weight of pointwise margin
\(1-2\varepsilon\), hence
\(\operatorname{dc}(H)\le L\le B(1+m/\tau^2)^k\)
(`latex_template/3_main.tex:4-36`).

**Progress: `P3/P10`.** The established theorem preserves the arbitrary domain,
the same unrestricted randomized adaptive SQ learner, every distribution and
target, adversarial-tolerance accuracy, and exact deterministic dimension. It
changes two endpoint clauses: it proves a polynomial rather than linear rate,
and it assumes a polynomial catalog for all tape-specific outputs under one
canonical policy. The proof does not derive this catalog from \((m,\tau)\).
That certificate is the compression step needed to turn learning into low
dimension, so it carries the central unresolved burden; the rubric's
central-property cap is `P3`. The result is a rigorous structural reduction,
not an unconditional paper-endorsed polynomial bound. The exact Open Question 2
implication remains open.

**Soundness: `S10/S10`.** No blocking defect was found in the exactly stated
conditional theorem.

- The nearest grid has covering radius \(1/K\le\tau\), including
  \(\tau\ge1\), and the adaptive execution is shown valid pathwise
  (`5_appendix.tex:9-97`).
- Expected risk on the finite catalog range legitimately yields an attained
  catalog function of risk at most \(\varepsilon\); it does not require a
  measurable output-index selector or a positive-mass fiber
  (`5_appendix.tex:166-254`).
- Applying the distributionwise correlation result to every law on a finite
  restriction, then finite minimax, produces one simultaneous mixture without
  reversing the game order (`5_appendix.tex:336-407` and `477-582`). The Sion
  statement and all compactness/convexity/continuity hypotheses are stated and
  correctly mapped.
- Closed point constraints in the one fixed compact simplex have the finite-
  intersection property, yielding a global target weight even on an arbitrary
  uncountable domain (`5_appendix.tex:638-855`). The coordinate identity and
  strict-sign/dimension closure are exact (`5_appendix.tex:875-1076`).
- Empty domain/class, \(m=0\), \(\varepsilon=0\), \(L=1\), duplicate catalog
  entries, and arbitrary tape spaces are explicitly handled. Artifact compliance passes; the
  compile log ends with an 18-page output (`latex_template/main.log:875`).

Component score: claim/dependency `2/2`, derivation `3/3`, mechanism/provenance
`2/2`, quantifiers/edges `2/2`, citations/public completeness `1/1`, hence
`10/10`. The grid-validity, low-risk-selection, game-order, finite-intersection,
and exact-sign calculations were independently reproduced. Adversarial checks
included \(\tau\ge1\), \(m=0\), \(\varepsilon=0\), empty domains/classes,
duplicate catalog entries, score-zero ties, arbitrary tape spaces, and an
uncountable domain; none exposes a material vulnerability.

**Technical novelty: provisional `N3/N10`.** The useful delta is that catalog
control is required only for a single valid rounded policy, not for all oracle
policies, and the proof carefully avoids measurability of a catalog selector.
But the proof-critical core after that assumption is the classical weak-
correlation-to-convex-mixture minimax argument followed by compactness. Grid
rounding, taking a minimum of a finite scalar range, Sion minimax, and catalog
coordinates are elementary or standard. The condition is new packaging and a
nontrivial specialization, not a new reusable proof tool. No verified external
nearest-neighbor search was completed, so `N4` is the absolute evidence cap;
the substantive score is `N3`.

**Bottom line.** Established structural conditional progress; mathematically
sound, but the assumed polynomial catalog contains the unresolved compression
burden. Weighted score: **`5.8/10`**.

### Perspective 2 / idea 2: static mean-response-rank certificate

**Advertised theorem.** For every deterministic complete response rule \(R\),
the branch averages the terminal binary predictor over the learner seed to get
\(F_R\), and assumes that the span of all such mean responses has rank
\(r_A\le B(1+m/\tau^2)^k\) (`latex_template/1_intro.tex:123-134`). The theorem
uses a basis of that fixed span as a common feature map and proves pointwise
margin \(1-2\varepsilon\), hence \(\operatorname{dc}(H)\le r_A\) with the
assumed polynomial bound (`latex_template/3_main.tex:3-39`).

**Progress: `P3/P10`.** This is a clean reduction for the exact deterministic
dimension notion and retains the original SQ, distribution, target, tolerance,
randomness, and arbitrary-domain quantifiers. Averaging before taking the span
is materially weaker than assuming low rank of all seed-specific outputs, and
the appendix gives examples where those ranks differ
(`5_appendix.tex:131-164`). Nevertheless the theorem assumes, rather than
derives, a polynomial rank bound on the precise pre-instance response family
from which its feature map is built. This certificate carries the central
low-dimensional-compression burden, and the conclusion is polynomial with a
leading base term rather than \(C m/\tau^2\). The `P3` conditional-reduction
cap therefore applies. No broad nontrivial class tied to Open Question 2 is
shown to satisfy the certificate from SQ resources alone.

**Soundness: `S10/S10`.** The conditional proof is coherent and closed.

- Complete rules and the average-before-span object are fixed before the
  learning instance; an evaluation basis makes the closed convex response body
  compact in a single finite-dimensional topology
  (`5_appendix.tex:8-247` and `252-447`).
- The exact-center rule is a legal adversarial-tolerance response. Bounded
  Fubini gives the exact correlation identity in the same response body
  (`5_appendix.tex:542-671`); measurability/integrability is included in the
  public interface assumption (`1_intro.tex:98-108`).
- Sion minimax is applied on the fixed compact convex body and a finite
  distribution simplex with the correct maximizing/minimizing orientation and
  separate attainment checks (`5_appendix.tex:746-865`).
- Closed signed constraints and compact finite intersection give one global
  \(f_h\), which transfers with zero residual through basis coordinates
  (`5_appendix.tex:975-1143` and `1148-1205`). Zero rank, empty sets, point
  masses, zero queries, and zero error are correctly separated
  (`5_appendix.tex:673-711` and `1214-1266`).
- The second dimension inequality is transparently the primitive rank
  assumption, not an inferred rate (`5_appendix.tex:1268-1341`). Artifact
  compliance passes; the compile log records a 21-page output
  (`latex_template/main.log:883`).

Component score: `2/2 + 3/3 + 2/2 + 2/2 + 1/1 = 10`. The response-body
construction, correlation/Fubini identity, minimax orientation and attainment,
global finite-intersection step, and coordinate transfer were independently
reproduced. Stress tests included zero rank, zero queries, zero error, point
masses, empty sets, arbitrary uncountable domains, and a response family with
large seed-specific span but small mean span; none invalidates the theorem.

**Technical novelty: provisional `N4/N10`.** The average-before-span response
body is the strongest genuinely distinct mechanism among the three SQ
branches. It permits an arbitrarily large seed-specific terminal span while
using a low-dimensional family of seed averages, and it requires a careful
fixed-space compactness/minimax/globalization interface. This is a useful,
nontrivial synthesis. Still, every proof engine after defining the body is
standard finite-dimensional linear algebra, Fubini, Sion minimax, and compact
finite intersection; the new rank certificate itself is an assumption. Under
the unavailable fresh nearest-neighbor audit, the rubric caps the provisional
score at `N4`, which is also the appropriate routine-synthesis score.

**Bottom line.** Best portfolio contribution for subproblem 2: a sound and
broader average-response reduction, but still only structural conditional
progress. Weighted score: **`6.0/10`**.

### Perspective 3 / idea 2: all-policy finite terminal catalog

**Advertised theorem.** The branch assumes one finite pre-instance catalog that
contains the terminal output on every tolerance-valid execution, together with
\(L\le B(1+m/\tau^2)^k\) (`latex_template/1_intro.tex:111-149`). It then proves
the same exact catalog-coordinate margin and polynomial deterministic dimension
bound (`latex_template/3_main.tex:3-40`).

**Progress: `P3/P10`.** The exact SQ protocol and deterministic embedding are
preserved, but the polynomial catalog condition is stronger than Perspective
1's one-canonical-policy condition and is not derived from \((m,\tau)\).
Because it directly supplies a small terminal-output family, it carries the
central compression burden; the `P3` cap applies. It proves neither the
unconditional polynomial relaxation nor the requested linear implication.
Moreover, within this portfolio its theorem is subsumed by Perspective 1:
an all-valid-policy catalog includes the valid canonical rounded executions
used there, while Perspective 1 reaches the same conclusion from that smaller
catalog obligation.

**Soundness: `S10/S10`.** The exactly stated conditional result is established.

- The measurable finite selector yields an exact terminal-output law and
  finite loss/correlation mixtures under arbitrary adaptive valid replies
  (`5_appendix.tex:57-228`). Universal accuracy gives a policy-free best
  catalog correlation without favorable-policy selection
  (`5_appendix.tex:238-347`).
- The appendix gives a self-contained finite convex-hull alternative via a
  closest-point argument (`5_appendix.tex:415-511`) and derives finite minimax
  with the correct order and attainment (`5_appendix.tex:513-581`). Thus this
  branch does not outsource its critical game reversal to Sion.
- Compactness and the finite-intersection identity yield one arbitrary-domain
  weight (`5_appendix.tex:663-849`), followed by exact strict signs and the
  literal dimension chain (`5_appendix.tex:854-1069`). Boundary cases are
  explicit. Artifact compliance passes; the compile log records a 19-page
  output (`latex_template/main.log:875`).

Component score: raw `10`, hence `S10`. The selector/output-law identity,
correlation inequality, closest-point convex-hull alternative, finite minimax,
global compactness, and dimension closure were independently reconstructed.
Adversarial checks included arbitrary adaptive valid replies, zero-query and
zero-error cases, empty domains/classes, score ties, duplicate catalog entries,
and uncountable-domain globalization; none exposes a material vulnerability.

**Technical novelty: provisional `N2/N10`.** Once the finite all-policy catalog
is assumed, the result is essentially the standard statement that a finite
family weakly correlating with every distribution yields a convex mixture with
uniform positive margin, followed by using the catalog as coordinates. The
self-contained closest-point proof is careful but proves classical finite
minimax rather than a new technical principle. Perspective 1 also strictly
weakens this catalog obligation with the same downstream proof, so this
branch's portfolio-marginal novelty is low. With no completed external search,
the evidence cap is `N4`; the substantive direct-standard-tool score is `N2`.

**Bottom line.** Sound structural reduction but the most restrictive and most
portfolio-redundant SQ branch. Weighted score: **`5.6/10`**.

## Subproblem 2 ranking

| Rank | Perspective | P | S | N | Weighted | Decision |
| ---: | --- | ---: | ---: | ---: | ---: | --- |
| 1 | Perspective 2 / idea 2 | 3 | 10 | 4* | **6.0** | Best conditional reduction; mean-response rank is materially broader than seed-specific catalog rank. |
| 2 | Perspective 1 / idea 3 | 3 | 10 | 3* | **5.8** | Weaker one-policy catalog condition, but method is mostly standard and the catalog remains central. |
| 3 | Perspective 3 / idea 2 | 3 | 10 | 2* | **5.6** | Sound but all-policy catalog theorem is subsumed by Perspective 1 in this portfolio. |

There is no tie. The numerical gaps reflect technical novelty and marginal
generality only: all three establish the same rubric-level amount of progress
and all three leave the exact Open Question 2 implication unresolved.

`*` Novelty is provisional under the failed-search `N4` evidence cap.
