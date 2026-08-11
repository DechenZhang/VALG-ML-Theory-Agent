# Proof Sketch

## Formalized Setting

Let \(\mathcal X=\{-1,+1\}^n\), let \(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), and use the fixed source tie label \(\tau\) through \(\operatorname{sgn}_{\tau}\). The deterministic dimension complexity is the least dimension of one feature map that exactly tie-resolved sign-represents every target in \(\mathcal H\), with \(\operatorname{dc}(\varnothing)=0\) and the stated \(\mathbb R^0\) conventions.

The proof uses exactly the three stable setting assumptions:

- `assump:source-regime`: \(n,L,T\ge1\), positive widths, \(S=\sum_i n_i n_{i-1}\), \(\eta>0\), \(0\le\varepsilon<1/4\), and exposed \(d\ge0\).
- `assump:universal-sgd-success`: the fixed Gaussian-initialized, logistic, one-sample SGD procedure has expected error at most \(\varepsilon\) for every \((\mathcal D,h^\star)\).
- `assump:tie-resolved-confident-map`: one law \(\mathcal P\), chosen before \(\mathcal D\) and \(h\), gives each fixed \(h\in\mathcal H\) probability at least \(1/2\) of exact \(d\)-dimensional tie-resolved representation.

The third item is an explicit primitive condition of this conditional theorem. No sketch step attempts to derive it from the SGD trajectory.

## Formalized Goal

Prove, with a numerical universal constant and in fact with \(C=7\),
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The conclusion is deterministic but conditional on all three setting assumptions. It is not the unconditional \(C TS\) resolution of the source question. Within the same theorem contract, a separately established explicit \(d\le p(S,T)\), with no hidden \(n\)- or \(\eta\)-dependence, specializes the result to \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\).

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Branch: `perspective_2/idea_2`

## Proof Roadmap

Use the selected framework in `technical_survey.md`: VC counting plus target-independent confidence amplification. Its parent provenance is Feldman--Kamath--Srebro, *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?* (PMLR 336, 2026), for the exact learner premise and target, and Kamath--Montasser--Srebro, *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity* (COLT 2020; arXiv:2003.04180), for the randomized-representation lineage. The actual bridge is self-contained: a random-label unseen-point argument bounds VC dimension; a current-notation Sauer--Shelah derivation bounds class cardinality; iid repetition and a finite union bound produce one covering tuple; and a direct-sum construction produces one deterministic feature map. No finite-precision or approximate-gradient theorem is used.

## Rate Objectives

- Theorem target: \(\operatorname{dc}(\mathcal H)\le7TSd\).
- Objective type: structural-parameter explicit, fixed-horizon, and confidence-explicit at the conditional input interface.
- Exposed variables: \(S,T,d\) occur on the right-hand side. The assumptions also expose \(n,L,(n_i),\eta,\varepsilon,\mathcal H\), and \(\mathcal P\); the proof must eliminate \(n\) and \(\lvert\mathcal H\rvert\), and the bound must contain no \(\eta\) or \(\varepsilon\) dependence beyond \(\varepsilon<1/4\).
- Hidden constants may depend on: nothing; the chosen constant is the number \(7\).
- Hidden constants may not depend on: \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), or \(\mathcal P\).
- Fixed quantities: none asymptotically; this is a finite, nonasymptotic statement for each setup. During the VC contradiction, one architecture, \(\eta\), \(T\), and the uniform witness distribution are fixed before target averaging.
- Probability mode: the premise is expectation over initialization and the \(T\) iid SGD samples plus a per-target probability at least \(1/2\) over \(\phi\sim\mathcal P\). The conclusion is deterministic existence. The probabilistic method must leave success probability at least \(1/2>0\) before fixing the tuple.
- Horizon mode: fixed finite horizon \(T\); no uniform-in-time or asymptotic upgrade is claimed.
- Norm mode: exact tie-resolved sign representation on every \(x\in\mathcal X\), measured by the integer dimension \(\operatorname{dc}\); no approximation norm or margin is substituted.
- Required bridge or simplification obligations: prove \(\operatorname{VC}(\mathcal H)<2T\); prove the Sauer--Shelah/cardinality estimate including \(v=0\); prove \(S\ge n\); prove \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\le7TS\); convert per-target confidence into a common tuple using the exact quantifier order; preserve scores under block concatenation; and derive \(7TSp(S,T)\) algebraically when an explicit \(d\le p(S,T)\) is separately supplied.
- Baseline invariance obligations: discharge \(\mathcal H=\varnothing\) and \(d=0\) exactly; preserve the exact \(\operatorname{sgn}_{\tau}\) convention, including legitimate zero scores; preserve a deterministic conclusion after the probabilistic existence argument; and preserve the polynomial specialization without adding \(n\), \(\eta\), a failure probability, or an approximation error.

## Assumption Provenance Objectives

- Primitive conditions: all three `setting.md` assumptions are primitive. In particular, `assump:tie-resolved-confident-map` is theorem-wide explicit conditional input, not a generated trajectory invariant and not an implied consequence of `assump:universal-sgd-success`.
- Derived boundary and architecture facts: `step_001` proves the empty-class and zero-dimensional branches and derives \(S\ge n\), \(S,T\ge1\) for the remaining branch.
- Derived VC certificate: `step_002` proves \(v:=\operatorname{VC}(\mathcal H)<2T\) from `assump:source-regime` and `assump:universal-sgd-success`; `step_003` consumes it.
- Derived cardinality/repetition budget: `step_003` proves the Sauer--Shelah bound and \(r\le7TS\); `step_004` and `step_005` consume it.
- Generated simultaneous-coverage certificate: `step_004` produces a deterministic tuple \((\phi_1,\ldots,\phi_r)\) for which every target has at least one successful block; `step_005` consumes it.
- Generated common representation: `step_005` produces \(\Phi:\mathcal X\to\mathbb R^{rd}\) and target-specific block separators, then invokes the definition of \(\operatorname{dc}\).
- No good event, SGD-trajectory stability fact, recurrence, boundedness assertion, or local-validity condition is assumed. The random initialization and sample trajectory in `step_002` are integrated out exactly.

## Mechanism-Source And Boundary Stress

### `step_001`

- Step ID: `step_001`
- Claim class: exact boundary reduction and structural parameter lower bound.
- Theorem role: closes \(\mathcal H=\varnothing\) and \(d=0\), and supplies \(S\ge n\) for the public-rate bridge.
- Mechanism source: the definitions in `setting.md`, the fixed convention \(\mathbb R^0=\{0\}\), and primitive `assump:source-regime`. The first weight matrix contributes \(n_1n\ge n\) parameters because \(n_1\ge1\).
- Source-to-claim adequacy: if \(\mathcal H=\varnothing\), \(\operatorname{dc}(\mathcal H)=0\) by definition. If \(d=0\), there is only the zero map and only \(w=0\); the confident event for a fixed \(h\) is therefore deterministic, so probability at least \(1/2\) forces \(h(x)=\operatorname{sgn}_{\tau}(0)=\tau\) for all \(x\). The common zero map represents every such target.
- Residual-to-target adequacy: exact equality; the produced zero-dimensional map is the map consumed by the definition of \(\operatorname{dc}\), with zero score residual on every input and the same fixed tie convention.
- Key positive/control term or structural source: the explicit zero-dimensional and tie-label conventions, plus the positive first-layer width.
- Opposing defect terms: possible undefined zero-dimensional scores, inconsistent tie labels, or a hidden \(n\) factor; all are excluded by the setting and the identity \(S\ge n\).
- Closure/dominance/absorption relation: \(0\le7TSd\) in the empty branch; in the \(d=0\) branch, \(\operatorname{dc}(\mathcal H)=0=7TSd\).
- Accumulation behavior / scope compatibility: no repeated or limiting scope; the boundary conclusions are pointwise definitions.
- Obligation locality classification: `step-local`.
- Noncircular closure status: N/A; no invariant or generated-condition closure is used.
- Entry-state / first-update stress result: in the null-dimensional entry state, no update or sampling is needed because the theorem-facing conclusion is already exactly true.
- Baseline conclusion preserved: both mandated null cases yield the original exact deterministic conclusion, not an approximate or positive-dimensional surrogate.
- Producer-consumer provenance: the structural facts \(\mathcal H\ne\varnothing\), \(d\ge1\), and \(S\ge n\) feed `step_002`--`step_005`; a completed boundary branch feeds final assembly directly.
- Null or boundary regime tested: \(\mathcal H=\varnothing\), \(d=0\), \(n=1\), \(T=1\), and \(S=n\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the fixed zero-dimensional/tie conventions, the \(d=0\) conclusion is not well-defined; those conventions are primitive and do not vanish in the stated setting.
- Repair route if source is unsupported: None.

### `step_002`

- Step ID: `step_002`
- Claim class: structural upper bound \(\operatorname{VC}(\mathcal H)<2T\) and average-to-worst-target conversion.
- Theorem role: controls \(\lvert\mathcal H\rvert\) using only the exact universal learner premise and its sample horizon.
- Mechanism source: a direct current-notation no-free-lunch derivation from `assump:universal-sgd-success`. If a set \(Z\) of \(m=2T\) points were shattered, take \(\mathcal D\) uniform on \(Z\), choose its \(2^m\) labelings uniformly, select one realizing \(h_b\in\mathcal H\) per labeling, and use an independent test point \(X\sim\mathcal D\). The exact source trajectory accesses \(h_b\) only through the sampled labels \(b(x^{(0)}),\ldots,b(x^{(T-1)})\), while initialization is label-independent.
- Source-to-claim adequacy: on \(E=\{X\notin\{x^{(0)},\ldots,x^{(T-1)}\}\}\), the bit \(b(X)\) remains a fair sign conditional on \(X\), all training inputs, all observed labels, and the Gaussian initialization. The tie-resolved predictor is a binary function of that conditioning data, so its conditional mismatch probability is exactly \(1/2\). Moreover \(\Pr(E)=(1-1/(2T))^T\ge1/2\). Averaging gives error at least \(1/4\); hence one fixed labeling, and therefore one fixed \(h_b\), has expected error at least \(1/4\), contradicting its required error at most \(\varepsilon<1/4\).
- Residual-to-target adequacy: the produced lower bound is initially an average over target labelings, but the finite maximum is at least the average; selecting that labeling yields exactly one target in \(\mathcal H\) under the same fixed \(\mathcal D\), exact learner, expected-error metric, and \(T\)-sample horizon. There is no distribution, target, probability-mode, or loss residual.
- Key positive/control term or structural source: the unseen-point probability and the independent fair unseen label, giving \(\frac12(1-1/(2T))^T\).
- Opposing defect terms: repeated training inputs and internal learner randomness. Repetitions are included exactly in the product probability; initialization and all algorithmic randomness are conditioned on and reveal no unseen label.
- Closure/dominance/absorption relation: \(\frac12(1-1/(2T))^T\ge\frac14>\varepsilon\). The inequality \((1-1/(2T))^T\ge1/2\) is proved directly, for example by Bernoulli's inequality \((1-u)^T\ge1-Tu\) with \(u=1/(2T)\).
- Accumulation behavior / scope compatibility: across exactly \(T\) iid sample draws, avoiding the test point has the finite-horizon multiplicative probability \((1-1/(2T))^T\). There is no accumulated approximation defect and no all-time claim.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the primitive universal expected-error premise and a direct random-label experiment produce the VC contradiction before the VC output is consumed by `step_003`; the proof does not assume a cardinality or VC bound.
- Entry-state / first-update stress result: at \(T=1\), the unseen probability is exactly \(1/2\), so the averaged error lower bound is exactly \(1/4\); strict \(\varepsilon<1/4\) still contradicts the premise. Before the first update, and after every later update, initialization and observed labels contain no information about an unseen independent target bit.
- Baseline conclusion preserved: the error comparison uses the exact source classifier and expectation, including its tie rule, rather than an ERM, population-gradient, or approximate learner.
- Producer-consumer provenance: `assump:source-regime` and `assump:universal-sgd-success` produce \(v<2T\) in `step_002`; `step_003` consumes it.
- Null or boundary regime tested: \(T=1\), repeated samples, zero aggregate score, and arbitrary randomized initialization.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without universal success for the uniform witness distribution, or if the procedure could access unsampled target labels, the VC conclusion need not hold. Both failure modes are excluded by the exact primitive premise/protocol.
- Repair route if source is unsupported: None.

### `step_003`

- Step ID: `step_003`
- Claim class: finite-class cardinality bound and explicit structural-rate bridge \(r\le7TS\).
- Theorem role: removes \(\lvert\mathcal H\rvert\) and \(n\) from the amplification cost.
- Mechanism source: direct current-notation proof of the Sauer--Shelah recursion on a domain of size \(N=2^n\), followed by the elementary binomial-sum bound \(\sum_{j=0}^{v}\binom Nj\le(eN/v)^v\) for \(1\le v\le N\). Its inputs are the derived \(v<2T\) from `step_002` and \(S\ge n\) from `step_001`.
- Source-to-claim adequacy: for \(v=0\), nonempty \(\mathcal H\) has \(\lvert\mathcal H\rvert=1\) and \(r=1\). For \(v\ge1\), the source objects are exactly the restrictions of \(\mathcal H\) to its finite domain, so
  \[
  \log_2\lvert\mathcal H\rvert\le v\log_2(e2^n/v)\le2T(n+\log_2e).
  \]
  No representation or margin convention enters this count.
- Residual-to-target adequacy: the raw count is transferred to the exact repetition budget by \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\le\log_2\lvert\mathcal H\rvert+2\). The only ceiling residual is the explicit additive \(2\), controlled by \(2\le2TS\).
- Key positive/control term or structural source: \(v<2T\), \(\lvert\mathcal X\rvert=2^n\), and the architecture identity \(S\ge n\).
- Opposing defect terms: the \(v=0\) singularity in \((eN/v)^v\), the ceiling term, \(\log_2e\), and the apparent \(n\) dependence.
- Closure/dominance/absorption relation: handle \(v=0\) separately. For \(v\ge1\), use \(\log_2e<3/2\), \(n+3/2\le(5/2)n\), \(n\le S\), and \(T,S\ge1\) to obtain
  \[
  r\le2T(n+\log_2e)+2\le5Tn+2\le7TS.
  \]
- Accumulation behavior / scope compatibility: the Sauer--Shelah sum and ceiling are finite combinatorial operations on \(N=2^n\); every additive term appears in the displayed deterministic budget and no defect is iterated or hidden.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` produces the VC input and `step_001` produces \(S\ge n\) before `step_003`; the cardinality and repetition bounds are not assumed downstream.
- Entry-state / first-update stress result: the degenerate count \(v=0\) gives \(r=1\le7TS\), so the mechanism remains valid where the logarithmic binomial expression would otherwise be singular.
- Baseline conclusion preserved: the rate bridge keeps the exact finite-class count and a numerical constant; it introduces no hidden \(n\), \(\eta\), confidence, or approximation dependence.
- Producer-consumer provenance: `step_001` and `step_002` produce the inputs; `step_003` exports \(r\le7TS\) to `step_004` and `step_005`.
- Null or boundary regime tested: \(v=0\), \(v=N\), \(\lvert\mathcal H\rvert=1\), \(n=1\), \(S=n\), and \(T=1\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the VC ceiling, \(r\) can be exponential in \(n\); without \(S\ge n\), the displayed public rate would retain an unsupported \(n\). Both controls have earlier legal producers.
- Repair route if source is unsupported: None.

### `step_004`

- Step ID: `step_004`
- Claim class: confidence-to-simultaneous-existence mode conversion and generated coverage certificate.
- Theorem role: turns target-wise probability \(1/2\) under one common law into one deterministic tuple of maps covering all targets.
- Mechanism source: explicitly conditional `assump:tie-resolved-confident-map`, together with iid product sampling \(\phi_1,\ldots,\phi_r\sim\mathcal P\) and the finite union bound. For \(E_h(\phi)=\{\exists w\ \forall x,\operatorname{sgn}_{\tau}\langle w,\phi(x)\rangle=h(x)\}\), the event is independent of \(\mathcal D\), and the premise gives \(\mathcal P(E_h)\ge1/2\) for every fixed \(h\).
- Source-to-claim adequacy: because the same \(\mathcal P\) precedes every target and the blocks are independent, \(\Pr[\cap_{i=1}^r E_h(\phi_i)^c]\le2^{-r}\) for each fixed \(h\). Therefore
  \[
  \Pr[\exists h\in\mathcal H\text{ uncovered}]\le\lvert\mathcal H\rvert2^{-r}\le\tfrac12,
  \]
  so a deterministic tuple covering every \(h\) exists. The separator remains allowed to depend on the realized block and on \(h\), exactly as in the premise.
- Residual-to-target adequacy: the produced tuple covers the same targets, on the same full domain, with the same exact tie-resolved event consumed by `step_005`. There is no error-probability, margin, distribution, or score residual; only the tuple is fixed after proving positive probability.
- Key positive/control term or structural source: independent per-block failure at most \(1/2\) and the exact budget \(r\ge\log_2(2\lvert\mathcal H\rvert)\).
- Opposing defect terms: failure for one target, union over all targets, and the risk of a target-dependent feature law. Multiplicative independence controls the first, \(\lvert\mathcal H\rvert2^{-r}\le1/2\) controls the second, and the primitive quantifier order excludes the third.
- Closure/dominance/absorption relation: the union failure is at most \(1/2<1\), which is sufficient for deterministic existence; no probability is retained in the theorem conclusion.
- Accumulation behavior / scope compatibility: for each target, the only accumulated defect is simultaneous failure across \(r\) iid blocks, with exact multiplicative control \(2^{-r}\); the finite union over \(\lvert\mathcal H\rvert\) is paid by the definition of \(r\). There is no persistent additive or adversarial-sign defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the legal producer is the primitive common law, followed by iid sampling and the union bound; `step_004` produces simultaneous coverage before `step_005` consumes it. It never assumes a common deterministic embedding.
- Entry-state / first-update stress result: in the smallest nonempty case \(\lvert\mathcal H\rvert=1\), \(r=1\), and the first draw already covers the sole target with probability at least \(1/2\). The \(d=0\) null case was closed in `step_001`.
- Baseline conclusion preserved: every successful block uses exactly \(\operatorname{sgn}_{\tau}\) on every input, and the output is a deterministic existence certificate rather than a weaker high-probability representation.
- Producer-consumer provenance: `assump:tie-resolved-confident-map` and `step_003` produce the probability and repetition inputs; `step_004` exports the covering tuple to `step_005`.
- Null or boundary regime tested: \(\lvert\mathcal H\rvert=1\), success probability exactly \(1/2\), successful representations containing zero scores, and laws with different blocks covering different targets.
- Target conclusion false or theorem-critical obstruction present if source vanishes: if \(\mathcal P\) could depend on \(h\), a single iid tuple from one law would have no producer and the deterministic conversion could fail. The explicit conditional premise rules this out; deriving that premise from SGD remains outside this theorem.
- Repair route if source is unsupported: None under the conditional theorem; removing the premise would require idea-level progress on the unresolved source problem.

### `step_005`

- Step ID: `step_005`
- Claim class: exact deterministic block representation, theorem closure, and polynomial rate specialization.
- Theorem role: converts the simultaneous coverage certificate into the object in the definition of \(\operatorname{dc}\) and closes the public rate.
- Mechanism source: direct-sum linear algebra from the tuple produced by `step_004`. Define \(\Phi(x)=(\phi_1(x),\ldots,\phi_r(x))\in\mathbb R^{rd}\). For each \(h\), choose a covered index \(i(h)\) and place its separator in block \(i(h)\), with every other block zero.
- Source-to-claim adequacy: for every \(x\), the concatenated score equals the successful block score exactly, so \(\operatorname{sgn}_{\tau}\langle u_h,\Phi(x)\rangle=h(x)\). Thus the same common \(\Phi\) represents all targets and \(\operatorname{dc}(\mathcal H)\le rd\).
- Residual-to-target adequacy: the score-transfer identity is \(\langle u_h,\Phi(x)\rangle-\langle w_{i(h),h},\phi_{i(h)}(x)\rangle=0\) pointwise. The produced map is the exact target object consumed by \(\operatorname{dc}\); every residual is zero, including at score ties.
- Key positive/control term or structural source: one covered block per target and the exact direct-sum inner-product identity.
- Opposing defect terms: cross-block interference, target-dependent selection of the common map, tie changes, and the multiplicative dimension cost. Zero padding eliminates interference; the tuple and \(\Phi\) are common; score equality preserves ties; and `step_003` controls \(r\).
- Closure/dominance/absorption relation: \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\). If \(d\le p(S,T)\) is separately established, monotonicity gives \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\) with no dropped term or probability conversion.
- Accumulation behavior / scope compatibility: the direct sum has finitely many blocks and exactly one active separator block per target; all other contributions are identically zero, so no error accumulates with \(r\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: the common tuple is produced in `step_004`, its rate is produced in `step_003`, and the block identity directly produces the final representation. Neither input assumes the final common feature map.
- Entry-state / first-update stress result: when \(r=1\), the construction is the successful map itself; when a successful score equals zero, zero padding leaves it exactly zero and the fixed tie label is unchanged. Null-dimensional cases were already closed in `step_001`.
- Baseline conclusion preserved: exact deterministic representation, the \(d=0\) and empty-class conclusions, and the polynomial specialization are all preserved without approximation, failure probability, or hidden dependence.
- Producer-consumer provenance: `step_003` supplies \(r\le7TS\), `step_004` supplies the common covering tuple, and `step_005` supplies the final map and optional polynomial specialization to final assembly.
- Null or boundary regime tested: \(r=1\), successful zero scores, different targets choosing different blocks, and \(d=p(S,T)=0\) via `step_001`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a covered block for some target, the zero-padded construction cannot represent that target; `step_004` supplies coverage noncircularly.
- Repair route if source is unsupported: None.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| Exact null-case conclusion and \(S\ge n\) | `step_001` | Definitions, fixed \(\tau\), \(\mathbb R^0\) convention, positive widths, `assump:source-regime`, `assump:tie-resolved-confident-map` | Zero scores are controlled by the explicit tie rule; hidden \(n\) is controlled by \(S\ge n_1n\ge n\); no uncontrolled term | The zero map is both produced and consumed under exact sign representation; pointwise score residual is zero | \(\operatorname{dc}(\varnothing)=0\); \(d=0\Rightarrow h\equiv\tau\Rightarrow\operatorname{dc}(\mathcal H)=0\) | Definition and probability-at-least-\(1/2\) on a deterministic zero-map event | `step_002`--`step_005`, final assembly | None |
| \(v=\operatorname{VC}(\mathcal H)<2T\) | `step_002` | Universal expected error, exact \(T\)-sample label access, label-independent initialization, uniform distribution on a shattered set | Repeated inputs are included in \((1-1/(2T))^T\); learner randomness is conditioned out; no uncontrolled target-information channel exists | Random-label average transfers to one exact \(h_b\in\mathcal H\) under the same \(\mathcal D\), metric, and expectation; residual zero | \(\frac12(1-1/(2T))^T\ge1/4>\varepsilon\) | Strict source threshold \(\varepsilon<1/4\) and unseen-label fairness | `step_003` | None |
| \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\le7TS\) | `step_003` | Derived \(v<2T\), \(N=2^n\), \(S\ge n\), \(T,S\ge1\) | \(v=0\) split explicitly; ceiling contributes at most \(2\); \(\log_2e\) and \(n\) are explicitly dominated; no uncontrolled count term | Exact cardinality count transfers to the exact integer repetition budget; ceiling residual \(2\le2TS\) | Sauer--Shelah, \(\log_2e<3/2\), \(n+3/2\le(5/2)n\), and \(n\le S\) | VC ceiling and integer/domain identities | `step_004`, `step_005` | None |
| One deterministic tuple covering every \(h\) | `step_004` | One target-independent \(\mathcal P\), exact per-target success \(\ge1/2\), iid blocks, derived \(r\) | Fixed-target failure is \(\le2^{-r}\); finite union costs \(\lvert\mathcal H\rvert\); no uncontrolled dependence on \(\mathcal D\) or \(h\) | Produced and consumed events are the same exact full-domain tie-resolved representation event; no score/error residual | \(\lvert\mathcal H\rvert2^{-r}\le1/2<1\), hence positive-probability existence | Definition of \(r\) and primitive success probability \(1/2\) | `step_005` | None |
| Common \(rd\)-dimensional exact map and \(\operatorname{dc}(\mathcal H)\le7TSd\) | `step_005` | Covering tuple, successful block separator per target, \(r\le7TS\) | Cross-block terms are exactly zero; ties are unchanged; dimension multiplication is explicit; no uncontrolled residual | Pointwise score difference between block and concatenated representations is exactly zero in the exact-sign interface | \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\) | Successful-block certificate from `step_004` | Final assembly | None |
| Polynomial specialization \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\) | `step_005` plus a separately established explicit \(d\le p(S,T)\) | Main bound and the stated explicit polynomial inequality | No term is dropped; the external inequality must contain no hidden \(n\) or \(\eta\); otherwise the specialization is not asserted | Same deterministic dimension target and exact representation; only a scalar upper bound is substituted | \(7TSd\le7TSp(S,T)\) | Explicit separately proved bound on \(d\) | Final assembly/public specialization | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Boundary resolution and \(S\ge n\) | `step_001`, directly from definitions and primitive setting conditions under the same \(\tau\) convention | `step_002`--`step_005`, final assembly | Closes null cases and removes \(n\) from the rate | primitive assumptions -> `step_001` -> downstream steps/final assembly | derived | None |
| \(v<2T\) | `step_002`, direct no-free-lunch derivation under the exact learner convention | `step_003` | Bounds class cardinality | `assump:source-regime` + `assump:universal-sgd-success` -> `step_002` -> `step_003` | derived | None |
| \(\lvert\mathcal H\rvert\) estimate and \(r\le7TS\) | `step_003`, current-notation Sauer--Shelah/counting derivation | `step_004`, `step_005` | Pays the finite union and final dimension cost | `step_001` + `step_002` -> `step_003` -> `step_004`/`step_005` | derived | None |
| Exact per-target probability \(\mathcal P(E_h)\ge1/2\) under one common law | `assump:tie-resolved-confident-map`; exact source and branch conventions coincide by definition | `step_004` | Supplies conditional confidence input | primitive conditional premise -> `step_004` | primitive | None |
| Deterministic tuple covering every target | `step_004`, iid product and union bound | `step_005` | Supplies one common finite block family | common-law premise + `step_003` -> `step_004` -> `step_005` | derived | None |
| Common exact feature map \(\Phi\) and target separators | `step_005`, exact direct-sum construction | Final assembly | Invokes the definition of \(\operatorname{dc}\) | `step_003` + `step_004` -> `step_005` -> final assembly | derived | None |
| Polynomial deterministic bound when \(d\le p(S,T)\) | `step_005` from the main bound plus the separately established explicit scalar inequality | Final assembly/public specialization | States the source-endorsed polynomial endpoint without claiming an unconditional confident bound | separate explicit \(d\)-bound + `step_005` -> specialization | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | If \(\mathcal H=\varnothing\) or \(d=0\), prove the target exactly; otherwise reduce to \(\mathcal H\ne\varnothing,d\ge1\) and prove \(S\ge n\ge1\), \(T,S\ge1\). | None | Primitive `assump:source-regime`, primitive `assump:tie-resolved-confident-map`; setting definitions | Correctly interpret the deterministic success event in \(\mathbb R^0\) and preserve \(\tau\). | Direct derivation from the zero-dimensional conventions and the first-layer parameter count. | Boundary theorem branches and structural controls for later rate steps. | Structural-parameter objective: exact null-case reduction and \(S\ge n\). | PENDING |
| `step_002` | For the remaining branch, prove \(v=\operatorname{VC}(\mathcal H)<2T\). | `step_001` | Primitive `assump:source-regime`, primitive `assump:universal-sgd-success`; no derived trajectory hypothesis | Maintain the quantifier order through random target averaging and condition on all information available to the exact SGD learner. | Direct unseen-point no-free-lunch argument on a shattered \(2T\)-point set; Bernoulli inequality. | Derived VC certificate \(v<2T\). | Fixed-horizon objective: exact \(T\)-sample probability and strict \(1/4>\varepsilon\) comparison. | PENDING |
| `step_003` | With \(M=\lvert\mathcal H\rvert\) and \(r=\lceil\log_2(2M)\rceil\), prove \(r\le7TS\). | `step_001`, `step_002` | Primitive `assump:source-regime`; derived \(S\ge n\) and \(v<2T\) | Treat \(v=0\), the ceiling, constants, and elimination of \(n\) without hidden dependence. | Self-contained current-notation Sauer--Shelah induction; elementary binomial estimate and logarithmic inequalities. | Exact integer repetition budget \(r\le7TS\). | Structural-parameter objective: explicit numerical constant \(7\), no hidden \(n,\eta,\varepsilon\). | PENDING |
| `step_004` | Prove there exists a deterministic \(r\)-tuple \((\phi_1,\ldots,\phi_r)\) such that every \(h\in\mathcal H\) is exactly represented by at least one block. | `step_003` | Primitive, explicitly conditional `assump:tie-resolved-confident-map`; derived \(r\) budget | Preserve \(\exists\mathcal P\,\forall\mathcal D\,\forall h\) and avoid selecting a target-dependent law; maintain exact tie success. | Iid product probability and finite union bound. | Simultaneous exact-coverage certificate under one fixed tuple. | Confidence-explicit mode conversion: per-target \(1/2\) to deterministic existence, with union failure \(\le1/2\). | PENDING |
| `step_005` | Concatenate the tuple, zero-pad one successful separator per target, and prove \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\); also prove the stated \(d\le p(S,T)\) specialization. | `step_001`, `step_003`, `step_004` | Primitive `assump:source-regime`; derived common tuple and repetition budget; optional separately established explicit \(d\le p(S,T)\) only for the specialization | Show exact score equality, one common target-independent map, and no lost dependence or residual at ties. | Direct-sum linear algebra and scalar substitution. | Final deterministic feature map, theorem bound, and polynomial specialization. | Structural-parameter objective and Rate Specialization Bridge: \(rd\le7TSd\le7TSp(S,T)\). | PENDING |

## Dependency Notes

The graph is acyclic: `step_001` has no dependencies; `step_002` uses only `step_001`; `step_003` uses `step_001` and `step_002`; `step_004` uses the repetition budget from `step_003`; and `step_005` uses the boundary facts, rate budget, and common tuple from earlier steps. Final assembly first routes any null case through `step_001`; on the nondegenerate branch it composes `step_002` -> `step_003` -> `step_004` -> `step_005`. The SGD premise is used only in `step_002`, and the confident-map premise is used only in `step_001` for \(d=0\) and in `step_004` for amplification, so neither is confused with a generated conclusion of the other.

## Blockers

None. The sketch proves only the explicit conditional theorem. Deriving `assump:tie-resolved-confident-map` with \(d=\operatorname{poly}(S,T)\) from the exact SGD premise, or removing the factor \(d\), remains outside this branch's theorem contract and is not hidden as future step work.
