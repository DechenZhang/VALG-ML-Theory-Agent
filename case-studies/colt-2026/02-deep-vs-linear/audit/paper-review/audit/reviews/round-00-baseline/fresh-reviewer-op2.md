# Fresh review of Open Problem 2 accepted results

## Review basis and verdicts

This is a source-first proof audit. I read Open Question 2 in `paper.pdf` (Section 3,
page 3), the source relaxations on page 4, `sp-02/RESEARCH_BRIEF.md`, and
the complete accepted LaTeX source, including every appendix proof, for the three
bundles listed below. I did not use any `proof_review.md`, workflow review,
`LITERATURE_SURVEY.md`, or the `research-lit` skill.

The exact target is the universal implication
\(\operatorname{dc}(\mathcal H)\le C m/\tau^2\), with one randomized adaptive SQ
learner working for every distribution and target against arbitrary tolerance-valid
answers (`sp-02/RESEARCH_BRIEF.md:38`, `sp-02/RESEARCH_BRIEF.md:47`,
`sp-02/RESEARCH_BRIEF.md:80`, `sp-02/RESEARCH_BRIEF.md:84`). A
different complexity notion, a domain-dependent conclusion, or a conditional rate is
only partial progress (`sp-02/RESEARCH_BRIEF.md:92`,
`sp-02/RESEARCH_BRIEF.md:101`, `sp-02/RESEARCH_BRIEF.md:105`).

| Accepted bundle | Mathematical verdict | Progress on exact OQ2 | Bottom line |
|---|---:|---:|---|
| `perspective_1/idea_2` | **Sound** | **Limited but genuine special-case progress** | Proves a classical SQ-dimension-type lower bound under a fixed-product second-moment witness and obtains the exact desired scaling for finite orthonormal/Bessel classes. It does not connect arbitrary dimension complexity to that witness. |
| `perspective_2/idea_3` | **Sound, with a technical measurability caveat** | **Negligible direct progress; modest progress on a newly repaired variant** | Correctly compiles a rounded response tree into a randomized embedding of exponential dimension, but changes the target to a new tie-penalized probabilistic dimension and proves no polynomial or deterministic bound. |
| `perspective_3/idea_2` | **Sound** | **Low-level structural progress only** | Correct minimax exactification into the span of every tape/leaf output. The missing dimension bound is not proved: it is exactly the optional span assumption, and the unconditional span can be as large as the domain even for a zero-query learner of a one-dimensional class. |

No bundle resolves or disproves Open Question 2. None supplies a domain-independent
bound on deterministic \(\operatorname{dc}(\mathcal H)\) for arbitrary classes as a
function of \((m,\tau)\) alone.

## Core-dimension score table

Scores are 0--5. `Rate bridge` asks whether the proof controls deterministic exact
dimension by the requested learner parameters without assuming that control. `Novelty
support` measures what is substantiated by the bundle and the character of the proof,
not an exhaustive literature-search score.

| Bundle | Claim correctness | Adversarial SQ semantics | Randomness / quantifiers | Exact-dimension fidelity | Rate bridge | Novelty support | OQ2 progress |
|---|---:|---:|---:|---:|---:|---:|---:|
| P1/I2 fixed-product | 5 | 5 | 5 | 5 | 2 | 1 | 2 |
| P2/I3 tie-tree | 4 | 5 | 4 | 1 | 1 | 2 | 1 |
| P3/I2 grid-span | 5 | 5 | 5 | 5 | 1 | 2 | 2 |

The low P1 rate score reflects the unproved bridge from arbitrary
\(\operatorname{dc}\) to the fixed-product witness, not a defect in its conditional
inequality. The low P2 exact-dimension score reflects an explicit change of notion.
The low P3 rate score reflects that the polynomial span estimate is assumed verbatim.

## 1. Perspective 1 / Idea 2: fixed-product lower bound

### Claim identity

The main theorem assumes a finite prior over targets and a common distribution with
the second-moment condition
\[
\sup_{f:\mathcal X\to[-1,1]}\mathbb E_h c_D(h,f)^2\le 1/R,
\]
then proves
\(m\ge R\tau^2((1-R^{-1/2})/2-\varepsilon)\)
(`sp-02/results/perspective_1/idea_2/theory/latex_template/1_intro.tex:78`,
`sp-02/results/perspective_1/idea_2/theory/latex_template/3_main.tex:3`).
For a finite Bessel family it concludes
\(\operatorname{dc}(\mathcal H)\le K\le 8Bm/\tau^2\), and for an orthonormal
family it takes \(B=1\)
(`sp-02/results/perspective_1/idea_2/theory/latex_template/3_main.tex:32`,
`sp-02/results/perspective_1/idea_2/theory/latex_template/3_main.tex:53`).

### Soundness audit

The proof is correct.

1. Every unrestricted query is decomposed exactly into label-free and correlational
   parts, with both parts still bounded by one
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:6`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:33`).
2. The target-specific first-exit oracle is a legal adversarial policy. It is defined
   as a function of the current observed query and fixed \((D,h)\), not as a function
   of the hidden learner seed; equality \(|c_D(h,b_q)|=\tau\) remains on the common
   path and is valid
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:42`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:66`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:77`).
3. After fixing a complete tape, every non-exited target sees one common adaptive
   transcript. The round's test function is fixed before the target exit set is
   measured, so the moment assumption is not applied after target-dependent
   conditioning
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:86`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:128`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:141`).
4. Markov's inequality gives a full-prior charge at most
   \(1/(R\tau^2)\) per round. First-exit sets are disjoint, yielding
   \(p_u\le m/(R\tau^2)\) without an independence claim
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:201`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:227`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:250`).
5. The survivor correlation calculation correctly pays for removed mass twice at
   half weight, resulting in a total \(-p_u\), not \(-p_u/2\). Exited targets are
   used only through nonnegativity of their loss
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:345`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:382`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:410`).
6. Each target's valid oracle is fixed before the seed is sampled. The learner's
   pointwise guarantee may therefore be averaged over the finite prior, and the
   lower and upper bounds refer to the same joint average
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:447`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:460`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:520`).
7. The Bessel specialization is algebraically exact, and the separate coordinate
   map \(\varphi(x)=(h_1(x),\ldots,h_K(x))\) genuinely represents all targets with
   nonzero scores
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:557`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:586`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:603`).
8. The strict constant at \(R=16\), \(m=0\), and \(\varepsilon\uparrow1/4\) is
   handled correctly
   (`sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:641`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:656`,
   `sp-02/results/perspective_1/idea_2/theory/latex_template/5_appendix.tex:680`).

I found no counterexample to the conditional theorem. In particular, the apparent
danger of selecting the oracle after seeing the tape is avoided: the policy sees only
the issued query, as any adaptive SQ oracle may. The all-common continuation after a
target exits need not be valid for that target, but it is only an analytic path; the
actual post-exit run receives exact replies and its loss is discarded.

### Progress and novelty assessment

This is the strongest of the three results with respect to the exact target because it
retains unrestricted SQs, adversarial tolerance, learner randomization, arbitrary
domains, deterministic exact dimension, and the desired \(m/\tau^2\) scaling. It
settles the special case of a finite class satisfying the common-distribution Bessel
condition, including a common-distribution orthonormal family.

The global gap is explicit and decisive: the fixed-product witness is an extra
structural assumption, and the bundle expressly does not derive it from arbitrary
dimension complexity
(`sp-02/results/perspective_1/idea_2/theory/latex_template/3_main.tex:73`).
Moreover, the final bound \(\operatorname{dc}(\mathcal H)\le K\) is the universal
coordinate embedding for any finite class; the real content is the lower bound on
\(m\) in terms of the Bessel/SQ-dimension parameter.

The first-exit correlation argument is a standard statistical-query-dimension or
average-correlation lower-bound pattern. The accepted bundle cites no prior work at
all (`sp-02/results/perspective_1/idea_2/theory/latex_template/reference.bib:1`).
Accordingly, the result is genuine but should not be presented as novel without a
precise comparison to classical SQ-DIM/statistical-dimension lower bounds. Relative to
the full open question, this is a narrow exact-premise special case, not a general
dimension bridge.

## 2. Perspective 2 / Idea 3: tie-penalized response tree

### Claim identity and target change

The bundle defines a new loss in which a zero margin is an error and a corresponding
quantity \(\operatorname{dc}^{\mathrm{tie}}_\alpha\)
(`sp-02/results/perspective_2/idea_3/theory/latex_template/1_intro.tex:16`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/1_intro.tex:31`).
It proves
\[
\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)
 \le (\lceil1/\tau\rceil+1)^m
 \le (2+1/\tau)^m
\]
using a distribution over response-tree maps induced by the learner tape
(`sp-02/results/perspective_2/idea_3/theory/latex_template/3_main.tex:3`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/3_main.tex:30`).

This is not deterministic dimension complexity and is not literally the source's
written probabilistic definition. The source uses its original strict error event for
the raw score \(h_{w,\varphi}(x)=\langle w,\varphi(x)\rangle\), which makes a zero
score a semantic loophole as written (`sp-02/RESEARCH_BRIEF.md:71`,
`sp-02/RESEARCH_BRIEF.md:73`). The bundle repairs that loophole by changing
the loss to use \(\le0\). That is mathematically sensible, but it is a new variant and
must not be counted as the source-endorsed relaxation without explaining the repair.

### Soundness audit

The core construction is correct.

1. With \(K=\lceil1/\tau\rceil\), the endpoint-inclusive grid has covering radius
   \(1/K\le\tau\), including \(\tau>1\) and equality cases. Rounding the fresh query
   mean is therefore valid node by node, with no accumulated error
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:86`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:114`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:148`).
2. Freezing a complete tape gives a deterministic padded response tree with exactly
   \((K+1)^m\) labeled leaves. The tree and its map law are formed without inspecting
   \((\mathcal D,h)\)
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:217`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:267`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:306`).
3. For each fixed tape and instance, replay follows the rounded canonical transcript
   exactly. Selecting its standard-basis coordinate reproduces the learner's binary
   output pointwise
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:410`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:425`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:446`).
4. The weight is selected only inside the pointwise infimum after the tape and
   instance are fixed. Thus it may depend on that tape and transcript; the feature-map
   law itself does not. Even if two tapes induce the same map, the argument remains
   valid because each displayed basis vector is simply an available competitor for
   the same infimum
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:472`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:540`).
5. The infimum is not moved outside the tape expectation. The universal adversarial
   premise is invoked only for the one valid canonical oracle, which is allowed because
   the premise covers every valid oracle
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:612`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:640`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:673`).
6. The zero-query case has one empty-string coordinate, not zero coordinates, and the
   ceiling/power algebra is correct
   (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:723`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:771`,
   `sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:793`).

The only rigor caveat is measure-theoretic. On an arbitrary domain and arbitrary tape
space, the bundle declares the map-valued random variable and the functional
\(J(\varphi)=\inf_w\ell^{\mathrm{tie}}(s_{w,\varphi})\) measurable by a standing
convention rather than specifying a sigma-algebra and proving it
(`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:267`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:295`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:578`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:597`).
This does not undermine the combinatorial theorem, but a publication-level statement
should either impose standard-Borel/joint measurability assumptions or formulate the
expectation directly on tapes and use a finite measurable coordinate-risk minimum as
the dominating random variable.

Explicit boundary tests did not produce a counterexample: for \(m=0\) the learner's
single random output becomes the single feature coordinate; for \(\tau>1\) the
two-point grid still has radius at most \(\tau\); and zero weights have loss one by the
new definition (`sp-02/results/perspective_2/idea_3/theory/latex_template/5_appendix.tex:7`).

### Progress and novelty assessment

The result is exponentially large in \(m\) even at fixed tolerance, whereas the open
question asks for \(O(m/\tau^2)\) and identifies any polynomial bound as the meaningful
relaxation. It also randomizes the embedding and changes the loss. Thus it supplies no
direct deterministic-dimension progress and does not attain even the proposed
polynomial relaxation.

Its real contribution is a correct finite-transcript compilation lemma for a
nondegenerate repaired probabilistic notion. The idea is elementary response-tree
enumeration, and the bundle gives no external citations
(`sp-02/results/perspective_2/idea_3/theory/latex_template/main.tex:19`,
`sp-02/results/perspective_2/idea_3/theory/latex_template/reference.bib:1`).
Novelty is therefore not established. At most, this is modest progress in clarifying
the source definition and recording a folklore-style exponential upper bound.

## 3. Perspective 3 / Idea 2: grid-leaf span exactification

### Claim identity

For finite domains, the bundle forms the pool of all binary outputs over every learner
tape and every rounded reply string, then lets \(d_N\) be the dimension of its linear
span
(`sp-02/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:57`,
`sp-02/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:62`).
It proves the exact deterministic certificate
\(\operatorname{dc}(\mathcal H_N)\le d_N\)
(`sp-02/results/perspective_3/idea_2/theory/latex_template/3_main.tex:3`,
`sp-02/results/perspective_3/idea_2/theory/latex_template/3_main.tex:30`).
Only under the additional assumption
\(d_N\le C_0(m_N+\tau_N^{-1})^q\) does it state a polynomial bound
(`sp-02/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:110`,
`sp-02/results/perspective_3/idea_2/theory/latex_template/3_main.tex:43`).

### Soundness audit

The exactification theorem is correct.

1. The nonuniform grid has every gap at most \(2\tau_N\), including its final short
   interval, so the canonical rounded policy is valid at every adaptive node
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:7`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:20`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:52`).
2. Every canonical run factors through the static all-tapes/all-leaves pool. Since the
   domain is finite, the set of distinct binary outputs is finite even if the tape
   space is infinite
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:149`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:205`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:322`).
3. For each distribution, the learner's tape pushforward is a pool-supported mixture
   with payoff at most \(\varepsilon\). This uses the valid canonical policy and keeps
   all tape/path dependence inside the pushforward
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:250`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:268`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:280`).
4. The finite minimax orientation is correct:
   \(\max_D\min_\mu\Lambda=\min_\mu\max_D\Lambda\). The explicit primal and dual
   programs have the right constraint directions, and attainment follows from finite
   simplices
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:404`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:436`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:468`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:535`).
5. Testing the same minimax mixture against every point mass gives simultaneous
   coordinatewise error at most \(\varepsilon\), not a collection of random events.
   Averaging binary predictions then gives signed margin \(1-2\varepsilon>0\)
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:638`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:653`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:691`).
6. The barycenter lies in the static span. Expanding it in one basis gives one
   target-independent feature map and target-specific weights with zero residual;
   the positive margin makes the signs exact
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:757`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:802`,
   `sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:862`).
7. Empty domains/classes, zero queries, early stopping, and \(d_N=0\) are handled
   consistently. In a nonempty domain/class branch the strict margin rules out
   \(d_N=0\)
   (`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:909`).

### Explicit stress test showing the rate obstruction

The unconditional quantity \(d_N\) need not have any useful dependence on
\((m_N,\tau_N)\). Let
\[
\mathcal X_N=\{1,\ldots,N\},\qquad
\mathcal H_N=\{h_N\},\qquad
h_N(1)=-1,\quad h_N(x)=+1\ (x>1),
\]
for \(N\ge2\). Take any fixed \(0<\varepsilon<1/4\), \(m_N=0\), and
\(\tau_N=1\). Define a
zero-query learner that outputs \(h_N\) with probability \(1-\varepsilon\), and with
the remaining total probability \(\varepsilon\) assigns positive mass to every binary
function on \(\mathcal X_N\). For every distribution \(D\), its expected loss on the
only target is at most \(\varepsilon\), so it satisfies the full robust premise
(there are no oracle replies). Yet its all-tapes output pool is all of
\(\{\pm1\}^{\mathcal X_N}\), whose real span is \(\mathbb R^N\). Therefore
\[
d_N=N\quad\text{while}\quad \operatorname{dc}(\mathcal H_N)=1.
\]

The last equality is independent of the convention for \(\operatorname{sign}(0)\):
one coordinate \(\varphi=h_N\) represents the target, while a zero-dimensional score
is constant and cannot represent this nonconstant \(h_N\).

This does not refute the theorem; it shows why its conclusion can be vacuous. It also
refutes any attempt to derive the optional polynomial-grid-span assumption from the
stated robust SQ premise: with \(m_N=0\) and \(\tau_N=1\), that assumption would force
\(N=d_N\le C_0\) uniformly in \(N\). The issue persists with positive, not merely
null, tape probabilities. It arises because support span is sensitive to arbitrarily
rare bad outputs even though the premise controls only expected loss.

### Progress and novelty assessment

The minimax step is a genuine and useful exactification lemma: it removes distribution
dependence from a target-specific mixture and converts expected randomized performance
into an exact sign representation in a common output span. It correctly handles the
order of learner, distribution, target, oracle, and tape quantifiers.

However, Open Question 2 is about bounding the dimension of that representation. Here
the unconditional theorem does not bound \(d_N\) by \(m_N\) or \(\tau_N\) at all, and
the polynomial corollary merely composes
\(\operatorname{dc}\le d_N\) with the assumed inequality
\(d_N\le C_0(m_N+\tau_N^{-1})^q\)
(`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:925`,
`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:953`,
`sp-02/results/perspective_3/idea_2/theory/latex_template/5_appendix.tex:987`).
The finite-domain restriction also remains explicit
(`sp-02/results/perspective_3/idea_2/theory/latex_template/1_intro.tex:5`).

The proof is elementary finite minimax plus linear algebra; its only citation is a
standard linear-optimization text
(`sp-02/results/perspective_3/idea_2/theory/latex_template/reference.bib:3`).
Novelty beyond a clean formulation is not established. Relative to OQ2, it identifies
the missing object (the common output-span dimension) but makes little progress on
the missing rate.

## Final ranking and required revisions before research claims

1. **P1/I2 is the only result with the requested exact \(m/\tau^2\) scaling and
   deterministic dimension conclusion**, but only for a strong common-distribution
   Bessel/SQ-dimension special case. It should be positioned as a classical-style
   special-case lower bound, with proper prior-work comparison.
2. **P3/I2 gives the cleanest exact deterministic representation lemma**, but the
   dimension controlling the representation is unbounded by the SQ parameters. The
   explicit zero-query example should be included so the optional span assumption is
   not mistaken for a consequence of learning.
3. **P2/I3 gives a correct exponential randomized response-tree certificate**, but for
   a newly tie-penalized notion. It should be labeled a semantic repair/variant and not
   evidence for the deterministic or polynomial conjecture.

Before any claim of resolving Open Question 2, a new argument must do at least one of
the following: derive a deterministic common-space bound from the original premise;
relate arbitrary large deterministic dimension to a fixed-product witness of matching
size; or construct a full-quantifier counterexample. None of the accepted bundles does
so.
