# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_2`.
- Sketch attempt: 1.
- Reviewed setting: `perspective_2/idea_2/setting.md`, SHA-256 `7d163ac6220a644f3c6136468f01c42508463aebefb79bcb59c4e449138dd307`.
- Reviewed sketch: `perspective_2/idea_2/proof_sketch.md`, SHA-256 `dea4d9c2d1a0431366c6a88089647174c7f3126667489d7edd2b76421704ec20`.
- Reviewed sketch review: `perspective_2/idea_2/proof_sketch_review.md`, SHA-256 `ce9888ddec3ffb12ee3faac8d26e6740d52be72015fbc4636b72dcb99acdfbd6`.
- Review status: `ACCEPTED`.
- Reviewed roadmap identity: `step_001` exact boundary reduction and (S\ge n); `step_002` random-label unseen-point VC bound; `step_003` Sauer--Shelah counting and (r\le 7TS); `step_004` iid common-law amplification; `step_005` exact block concatenation and polynomial specialization.

## Status

COMPLETE_DRAFT

## Attempted Theorem Claim

Goal mode: exact-goal mode for the explicitly conditional theorem in `setting.md`.

Fix every object and convention in the formalized setting, including the source tie label \(\tau\), the exact Gaussian initialization, the fixed source ReLU-kink gradient convention, the exact logistic one-sample SGD recursion, and the latter-half aggregate. Suppose `assump:source-regime`, `assump:universal-sgd-success`, and `assump:tie-resolved-confident-map` hold. Then
\[
\operatorname{dc}(\mathcal H)\le 7TSd.
\]
The number (7) is universal: it has no dependence on (n,\mathcal H,L,(n_i)_{i=0}^L,S,\eta,T,\varepsilon,d), or \(\mathcal P\). The conclusion is deterministic and exact on all of \(\mathcal X\), even though its premises contain an expectation over the source learner and a probability over the confident-map law. The horizon mode is fixed finite (T), and the representation metric is exact equality after applying the same tie-resolved sign map \(\operatorname{sgn}_{\tau}\).

This claim is conditional: it does not derive `assump:tie-resolved-confident-map` from SGD and does not assert the unconditional (O(TS)) source target. Within this same theorem contract, if a separate result establishes an explicit inequality (d\le p(S,T)), where (p) is polynomial and hides no (n)- or \(\eta\)-dependence, scalar substitution yields
\[
\operatorname{dc}(\mathcal H)\le 7TSp(S,T).
\]

## Whole-Proof Draft

### Block G1: exact boundary branches and architecture control (`step_001`)

If \(\mathcal H=\varnothing\), the defining convention gives \(\operatorname{dc}(\mathcal H)=0\), hence the target follows because (7TSd\ge0\).

Assume next that \(\mathcal H\ne\varnothing\) but (d=0\). There is exactly one map \(\phi:\mathcal X\to\mathbb R^0\) and exactly one vector (w\in\mathbb R^0\), and their inner product is zero on every input. Consequently, for each fixed (h\in\mathcal H\), the event in `assump:tie-resolved-confident-map` is not genuinely random: it is true precisely when
\[
h(x)=\operatorname{sgn}_{\tau}(0)=\tau
\quad\text{for every }x\in\mathcal X.
\]
A deterministic event having probability at least (1/2) must be true. Thus every (h\in\mathcal H\) is the constant \(\tau\) classifier, and the common zero-dimensional map represents the whole class. Therefore \(\operatorname{dc}(\mathcal H)=0=7TSd\). This uses the same tie convention on the premise and conclusion, so zero scores create no residual.

It remains to treat \(\mathcal H\ne\varnothing\) and (d\ge1\). From `assump:source-regime`, (T\ge1), (n\ge1), and every width is positive. The first matrix contributes (n_1n_0=n_1n\ge n) parameters, including when (L=1), where (n_1=n_L=1). Hence
\[
S=\sum_{i=1}^L n_i n_{i-1}\ge n_1n\ge n\ge1.
\]
These are the only architecture facts used below.

### Block G2: the exact learner forces \(\operatorname{VC}(\mathcal H)<2T\) (`step_002`)

Write (m=2T\). Suppose for contradiction that \(\operatorname{VC}(\mathcal H)\ge m\). Choose a shattered set (Z\subseteq\mathcal X) of exactly (m) points, and let \(\mathcal D_Z\) be uniform on (Z\). For every labeling (b\in\{-1,+1\}^Z\), fix one representative (h_b\in\mathcal H\) satisfying \(h_b(z)=b(z)\) for all (z\in Z\). This selection is possible because (Z) is shattered and is finite.

Now put a joint experiment on the exact source learner. Draw a random labeling
\[
B=(B_z)_{z\in Z},\qquad B_z\stackrel{\mathrm{iid}}{\sim}\operatorname{Unif}\{-1,+1\},
\]
draw the Gaussian initialization \(\Theta^{(0)}\) independently of (B), draw ordered training inputs (X_0,\ldots,X_{T-1}\stackrel{\mathrm{iid}}{\sim}\mathcal D_Z\), and draw an independent test input (X\sim\mathcal D_Z\). Run the exact source recursion with target (h_B\). Since every sampled input lies in (Z), its labels supplied to the update are precisely (B_{X_0},\ldots,B_{X_{T-1}}). The target enters the specified algorithm only through these sampled scalar labels. The fixed gradient convention makes every iterate, aggregate, and prediction a single-valued measurable function of the initialization and the ordered labeled sample; no target identifier or unsampled value is exposed.

Let
\[
E=\{X\notin\{X_0,\ldots,X_{T-1}\}\}.
\]
Condition on (X), the ordered training inputs, their observed labels, \(\Theta^{(0)}\), and (E). Repeated training inputs cause no issue: on (E), the coordinate (B_X) is distinct from every revealed coordinate of (B). It therefore remains a fair sign independent of the conditioning sigma-field. The returned tie-resolved classifier at (X) is already fixed under this conditioning and takes one of the two values \(\{-1,+1\}\), including when the aggregate score is zero. Thus
\[
\Pr\!\left[\widehat h_{\mathcal D_Z,h_B}(X)\ne B_X\mid
X,(X_t,B_{X_t})_{t=0}^{T-1},\Theta^{(0)},E\right]=\frac12.
\]
Moreover, conditional on any (X\in Z\), every training input avoids (X) with probability (1-1/m\), independently across the (T) draws. Hence
\[
\Pr(E)=\left(1-\frac1m\right)^T
=\left(1-\frac1{2T}\right)^T
\ge 1-\frac{T}{2T}=\frac12,
\]
where the inequality is Bernoulli's inequality in the exact range (T\in\mathbb Z_{\ge1}). Therefore
\[
\begin{aligned}
\mathbb E_B\,
\mathbb E_{\Theta^{(0)},X_{0:T-1}}
\left[\mathcal L_{\mathcal D_Z,h_B}
(\widehat h_{\mathcal D_Z,h_B})\right]
&=\Pr\!\left[\widehat h_{\mathcal D_Z,h_B}(X)\ne B_X\right]\\
&\ge \frac12\Pr(E)\\
&\ge\frac14.
\end{aligned}
\]
The outer average is finite. It follows either directly by maximum-at-least-average, or by comparing with the universal upper bound term by term, that some fixed labeling (b\) has
\[
\mathbb E_{\Theta^{(0)},X_{0:T-1}}
\left[\mathcal L_{\mathcal D_Z,h_b}
(\widehat h_{\mathcal D_Z,h_b})\right]\ge\frac14.
\]
This uses one fixed distribution \(\mathcal D_Z\) and one fixed target (h_b\in\mathcal H\), so `assump:universal-sgd-success` instead bounds the same quantity by \(\varepsilon<1/4\), a contradiction. Therefore
\[
v:=\operatorname{VC}(\mathcal H)<2T.
\]
At the boundary (T=1), \(\Pr(E)=1/2\) exactly and the lower bound is exactly (1/4\), so the strict premise \(\varepsilon<1/4\) still gives the contradiction.

### Block G3: finite counting and the explicit repetition budget (`step_003`)

Let (N=\lvert\mathcal X\rvert=2^n\), (M=\lvert\mathcal H\rvert\), and
\[
r:=\left\lceil\log_2(2M)\right\rceil.
\]
The current branch has (M\ge1\). A self-contained Sauer--Shelah induction applies to the restrictions of \(\mathcal H\) on its exact (N)-point domain. For completeness at diagnostic granularity, split the trace patterns according to the label at one chosen domain point. If (P_+) and (P_-) are the two sets of restrictions to the remaining (N-1) points, then
\[
\lvert\mathcal H\rvert=\lvert P_+\cup P_-\rvert+\lvert P_+\cap P_-\rvert.
\]
The union has VC dimension at most (v\), while a set shattered by the intersection together with the removed point would be shattered by \(\mathcal H\), so the intersection has VC dimension at most (v-1\). The resulting recursion and Pascal identity yield
\[
M\le\sum_{j=0}^v\binom Nj.
\]

The singular branch (v=0\) is handled separately. If two functions in a nonempty binary class differed at a point, that singleton would be shattered. Hence (M=1\), so (r=\lceil\log_2 2\rceil=1\le7TS\).

Assume (1\le v\le N\). The binomial estimate can also be verified in current notation. With (a=v/N\in(0,1]\), the inequality (a^j\ge a^v\) for (0\le j\le v\) gives
\[
a^v\sum_{j=0}^v\binom Nj
\le\sum_{j=0}^v\binom Nj a^j
\le(1+a)^N\le e^{Na}=e^v.
\]
Thus
\[
M\le\left(\frac{eN}{v}\right)^v
\quad\text{and}\quad
\log_2M\le v\log_2\left(\frac{e2^n}{v}\right)
\le 2T(n+\log_2e).
\]
The last inequality uses (v<2T\), (v\ge1\), and drops the nonpositive term \(-v\log_2v\). The ceiling has the exact deterministic residual
\[
r\le\log_2M+2.
\]
Using \(\log_2e<3/2\), (n\ge1\), (n\le S\), and (T,S\ge1\), one obtains
\[
\begin{aligned}
r
&\le 2T(n+\log_2e)+2\\
&\le 2T\left(n+\frac32\right)+2\\
&\le5Tn+2\\
&\le5TS+2TS\\
&=7TS.
\end{aligned}
\]
No (n), \(\eta\), \(\varepsilon\), confidence parameter, or asymptotic constant remains hidden.

### Block G4: one common law yields one deterministic covering tuple (`step_004`)

For a map \(\phi:\mathcal X\to\mathbb R^d\) and (h\in\mathcal H\), define the exact full-domain event
\[
E_h(\phi)=\left\{\exists w\in\mathbb R^d\ \forall x\in\mathcal X,
\ \operatorname{sgn}_{\tau}(\langle w,\phi(x)\rangle)=h(x)\right\}.
\]
By `assump:tie-resolved-confident-map`, a single law \(\mathcal P\) is fixed before every subsequently quantified distribution and target, and \(\mathcal P(E_h)\ge1/2\) for every fixed (h\in\mathcal H\). The event itself has no dependence on \(\mathcal D\); the universal \(\mathcal D\)-quantifier is preserved and does not select a different law.

Draw \(\phi_1,\ldots,\phi_r\stackrel{\mathrm{iid}}{\sim}\mathcal P\). For a fixed target, independence and the common-law property give
\[
\Pr\left[\bigcap_{i=1}^r E_h(\phi_i)^c\right]
=\prod_{i=1}^r\Pr[E_h(\phi_i)^c]\le2^{-r}.
\]
A finite union bound over the same class \(\mathcal H\) then yields
\[
\Pr[\exists h\in\mathcal H\text{ uncovered}]
\le M2^{-r}\le\frac12<1,
\]
because (r\ge\log_2(2M)\). Thus the simultaneous-coverage event has positive probability, in fact at least (1/2\). Fix one deterministic tuple in this event. For each target (h\), at least one index (i(h)\) and one separator (w_{i(h),h}\) witness the exact event. The tuple is common to all targets; only the block index and separator may depend on (h\), as permitted by the definition of \(\operatorname{dc}\). At (M=1\), (r=1\), and the first draw has success probability at least (1/2\), so the smallest nonempty case is covered.

### Block G5: exact block concatenation and theorem closure (`step_005`)

For the deterministic tuple from Block G4, define
\[
\Phi(x):=(\phi_1(x),\ldots,\phi_r(x))\in\mathbb R^{rd}.
\]
For each (h\in\mathcal H\), let (u_h\in\mathbb R^{rd}\) have (w_{i(h),h}\) in block (i(h)\) and zero in every other block. Then, pointwise for every (x\in\mathcal X\),
\[
\langle u_h,\Phi(x)\rangle
=\langle w_{i(h),h},\phi_{i(h)}(x)\rangle.
\]
This is equality of the actual scores, not only equality after taking signs. Therefore zero scores and the tie label are preserved exactly, and
\[
\operatorname{sgn}_{\tau}(\langle u_h,\Phi(x)\rangle)=h(x)
\quad\text{for all }h\in\mathcal H, x\in\mathcal X.
\]
The map \(\Phi\) is one common deterministic map. By the definition of deterministic dimension complexity and Block G3,
\[
\operatorname{dc}(\mathcal H)\le rd\le7TSd.
\]
This completes the nondegenerate branch, while Block G1 already completed the empty and zero-dimensional branches.

Finally, if a separate theorem supplies the explicit scalar inequality (d\le p(S,T)) with no hidden (n)- or \(\eta\)-dependence, multiplication by the nonnegative (7TS\) gives
\[
\operatorname{dc}(\mathcal H)\le7TSd\le7TSp(S,T).
\]
There is no probability conversion, changed horizon, approximation residual, or dropped term in this specialization. If (d=p(S,T)=0\), Block G1 already supplies the exact baseline conclusion.

### Assembly

The dependency order is exact. Block G1 either closes a null branch or exports (S\ge n\), (S,T\ge1\), and the nondegenerate branch conditions. Block G2 uses only the exact source learner premise and exports (v<2T\). Block G3 consumes those outputs and exports the integer budget (r\le7TS\). Block G4 consumes that budget and the primitive common confident-map law and exports one deterministic covering tuple. Block G5 consumes the tuple and budget and exports the exact common feature map required by \(\operatorname{dc}\). No block consumes a derived certificate before its producer, and no conclusion is strengthened beyond the accepted conditional theorem.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1: boundary and architecture | Closes \(\mathcal H=\varnothing\) and (d=0\); exports (S\ge n\), (S,T\ge1\) | `step_001` | Setting definitions only | `assump:source-regime`; `assump:tie-resolved-confident-map` only for (d=0\) | None at theorem-diagnostic level; the step proof must record the deterministic zero-map event and the (L=1\) architecture boundary |
| G2: learner-to-VC bridge | Proves (v<2T\) under the exact learner interface | `step_002` | Nonempty branch and (T\ge1\) from G1 | `assump:source-regime`; `assump:universal-sgd-success` | None at theorem-diagnostic level; the step proof must formalize the conditioning sigma-field and finite target averaging |
| G3: count-to-budget bridge | Proves (r\le7TS\), removing (M\) and (n\) | `step_003` | (S\ge n\) from G1; (v<2T\) from G2 | `assump:source-regime` | None at theorem-diagnostic level; the step proof must include the Sauer--Shelah recursion, (v=0\), binomial estimate, and each constant inequality |
| G4: simultaneous coverage | Converts per-target probability into one deterministic tuple | `step_004` | (M<\infty\) and (r\) from G3 | `assump:tie-resolved-confident-map` | None at theorem-diagnostic level; the step proof must retain the common-law quantifier and iid product calculation |
| G5: exact common representation | Builds \(\Phi\), proves \(\operatorname{dc}\le rd\le7TSd\), and performs the conditional polynomial specialization | `step_005` and final assembly | G1 boundary routing; (r\le7TS\) from G3; covering tuple from G4 | `assump:source-regime`; optional separate (d\le p(S,T)\) only for the specialization | None at theorem-diagnostic level; the step proof must state pointwise score equality and exact dependence |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 and null-branch assembly | Produces branch split, (S\ge n\), (S,T\ge1\) | Interpret \(\mathbb R^0\), prove the confident event is deterministic at (d=0\), preserve \(\tau\), and count the first layer including (L=1\) | All interfaces are exact; no probabilistic or metric residual |
| `step_002` | G2 | Consumes only G1 branch facts; produces (v<2T\) for G3 | Random-label construction, label-access measurability of exact SGD, unseen-bit conditioning, \(\Pr(E)\), Bernoulli inequality, average-to-fixed-target conversion, and (T=1\) | Highest-risk local proof, but its mechanism and output interface are fully fixed |
| `step_003` | G3 | Consumes (S\ge n\) and (v<2T\); produces (r\) for G4 and G5 | Current-notation Sauer--Shelah induction, (v=0\), binomial estimate, ceiling, and constants | No cited theorem is needed if the displayed induction is proved locally |
| `step_004` | G4 | Consumes (r\) from G3; produces covering tuple for G5 | Preserve \(\exists\mathcal P\) before all targets, use iid copies, multiply fixed-target failures, union over finite \(\mathcal H\), and fix a positive-probability tuple | Conclusion is deterministic, not high probability |
| `step_005` | G5 and final assembly | Consumes G3 budget and G4 tuple; uses G1 for boundary routing | Define block map and separators, prove pointwise score identity, invoke \(\operatorname{dc}\), and substitute explicit (d\le p(S,T)\) | Same map for every target; only separator and active block are target-specific |

## Dependency And Assumption Audit

The theorem-facing primitive conditions are exactly the following.

| Condition | Provenance class | Use | Audit result |
| --------- | ---------------- | --- | ------------ |
| `assump:source-regime` | Primitive condition | Integer and positivity boundaries, exact architecture, fixed protocol, \(\varepsilon<1/4\), and exposed (d\) | Valid; no generated trajectory property is hidden in it |
| `assump:universal-sgd-success` | Primitive condition | Contradicts the fixed-target lower bound in G2 for the uniform witness distribution | Valid; architecture, \(\eta\), and (T\) remain fixed before \(\mathcal D_Z\) and (h_b\) are chosen |
| `assump:tie-resolved-confident-map` | Primitive explicitly conditional theorem hypothesis | Closes (d=0\) and supplies one common law for G4 | Valid because the formalized target is conditional; it is not claimed as an SGD-generated invariant |
| (S\ge n\), (S,T\ge1\) | Accepted-sketch derived output planned in G1 | Consumed in G3 | Noncircular producer path `step_001` -> `step_003` |
| (v<2T\) | Accepted-sketch derived output planned in G2 | Consumed in G3 | Noncircular producer path `step_002` -> `step_003` |
| (r\le7TS\) | Accepted-sketch derived output planned in G3 | Consumed in G4 and G5 | Noncircular producer path `step_001` + `step_002` -> `step_003` -> consumers |
| Simultaneous covering tuple | Accepted-sketch derived output planned in G4 | Consumed in G5 | Noncircular producer path primitive common law + `step_003` -> `step_004` -> `step_005` |
| Explicit (d\le p(S,T)\) | External premise only for the optional specialization | Consumed by the final scalar substitution | Not assumed for the main bound; specialization is asserted only when separately established |

No good event, learner stability condition, boundedness condition, recurrence, local-validity condition, or generated representation property is moved into the public assumptions. The source learner's random trajectory is integrated out in G2. The law \(\mathcal P\) is common by primitive quantifier order; neither G4 nor G5 replaces it with target-dependent laws. There is no missing derived-condition bridge.

## Citation And Tool Audit

| Source or tool | Role and current objects | Assumptions / raw-input discharge | Needed conclusion and interface | Convention, object-target, and boundary audit | Affected block |
| -------------- | ------------------------ | --------------------------------- | ------------------------------- | --------------------------------------------- | -------------- |
| Feldman--Kamath--Srebro, *Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?*, PMLR 336 (2026), stable proceedings locator `feldman26a` | Source identity for the exact protocol and open target | Already frozen verbatim in `setting.md`; no theorem from the paper is invoked | Lineage only | The diagnostic uses the exact architecture, initialization, update, aggregation, expectation, and tie convention; the paper is not treated as supplying the confident premise or the claimed bridge | Setting provenance only |
| Kamath--Montasser--Srebro, *Approximate is Good Enough: Probabilistic Variants of Dimensional and Margin Complexity*, COLT 2020, arXiv:2003.04180 | Randomized-representation lineage | No technical hypothesis is imported | Lineage only | The branch's finite-domain exact tie-resolved event is the binding setting interface; no approximate or margin conclusion from the paper is substituted | Setting provenance only |
| Random-label unseen-point argument | Direct current-notation derivation on (Z\), exact SGD state, and exact expected (0)-(1\) risk | Shattering, uniform (B\), iid train/test inputs, label-independent initialization, and sampled-label-only target access are explicit | \(\frac12(1-1/(2T))^T\ge1/4\), then one fixed target contradicting universal success | Same target, distribution, horizon, learner, expectation, risk, and tie rule; repeated samples and (T=1\) are included; no population or surrogate learner appears | G2 / `step_002` |
| Bernoulli inequality | Standard fact proved or restated in current notation | (u=1/(2T)\in[0,1]\), integer (T\ge1\) | \((1-u)^T\ge1-Tu=1/2\) | Exact finite-horizon scalar inequality; equality at (T=1\); no asymptotic convention | G2 / `step_002` |
| Sauer--Shelah recursion | Self-contained current-notation combinatorial derivation on the exact (N=2^n\) point domain | Binary restrictions, finite class, (0\le v\le N\) | (M\le\sum_{j=0}^v\binom Nj\) | G3 states the union/intersection recursion; (v=0\) is separate; no citation label or external wrapper is needed | G3 / `step_003` |
| Binomial-sum estimate | Direct derivation using (a=v/N\) and \((1+a)^N\le e^{Na}\) | (1\le v\le N\) | \(\sum_{j=0}^v\binom Nj\le(eN/v)^v\) | Same (N,v\) as the Sauer output; (v=N\) allowed; (v=0\) excluded and already handled | G3 / `step_003` |
| Iid product rule and finite union bound | Standard probability tools on \(\mathcal P^r\) | One common law, measurable exact events, independent blocks, finite (M\) | Fixed-target failure \(\le2^{-r}\); total failure \(\le M2^{-r}\le1/2\) | Same event, domain, dimension, and tie rule as the premise and consumer; no target-dependent product law | G4 / `step_004` |
| Direct-sum inner-product identity | Direct linear algebra in \(\mathbb R^{rd}\) | One covered block and separator per target | Exact common map and pointwise score equality | Produced map is the object consumed by \(\operatorname{dc}\); all cross-block residuals are zero, including at ties | G5 / `step_005` |

All theorem-critical tools have a current-notation raw-assumption-to-output path. No unresolved theorem label, source convention, source-object mapping, wrapper conclusion, or cited non-output boundary remains.

## Quantitative Dependence Audit

- Exposed theorem-rate variables: (S,T,d\), with final bound exactly (7TSd\).
- Other exposed setting quantities: (n,L,(n_i),\eta,\varepsilon,\mathcal H,\mathcal P\). They may affect whether the assumptions hold, but they do not enter the numerical constant or right-hand side except that \(\varepsilon<1/4\) enables G2.
- Hidden constants: none. The only constant is the displayed number (7).
- Fixed quantities and quantifier order: one architecture, \(\eta\), and (T\) are fixed before G2 chooses \(\mathcal D_Z\) and averages targets. One law \(\mathcal P\) is fixed before any distribution and target in the confident premise.
- Probability mode: expected source risk in G2; per-target probability at least (1/2\) in the conditional map premise; iid product probability and a finite union bound in G4; deterministic existence in the conclusion. No confidence parameter survives.
- Horizon mode: fixed finite (T\). There is no all-time, horizon-uniform, asymptotic, or stopping-time upgrade.
- Norm / metric mode: exact pointwise tie-resolved sign representation and integer feature dimension. No norm, margin, approximation, or excess-risk surrogate is introduced.
- Auxiliary quantities: (N=2^n\), (v=\operatorname{VC}(\mathcal H)\), (M=\lvert\mathcal H\rvert\), and (r=\lceil\log_2(2M)\rceil\). G2 and G3 eliminate all four from the final rate.
- Exact simplification inequalities: \(\Pr(E)=(1-1/(2T))^T\ge1/2\); \(\log_2M\le2T(n+\log_2e)\); \(r\le\log_2M+2\); \(\log_2e<3/2\); (n+3/2\le(5/2)n\); (n\le S\); and (2\le2TS\).
- Public specialization: a separately established explicit (d\le p(S,T)\) yields \(7TSd\le7TSp(S,T)\). It is not used to prove the main bound and may not hide (n\), \(\eta\), probability, approximation, or other omitted dependence.
- Baseline invariance: \(\mathcal H=\varnothing\) and (d=0\) retain exact zero dimension; (T=1\) retains the strict contradiction; (v=0\) retains (r=1\); amplification ends in deterministic existence; and block concatenation preserves zero scores and \(\tau\) exactly.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | --------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------- | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Empty-class closure | Exact baseline theorem closure | Every allowed setup with \(\mathcal H=\varnothing\) | \(\operatorname{dc}(\varnothing)=0\) | Binding definition | No defect | Pointwise, no accumulated scope | Structural upper comparison | Definition; no boundary excluded | Definition supplies the exact claim class | Produced and consumed dimension are identical; residual zero | `step-local` | Definition -> G1 -> assembly, before any consumer | No update needed because the conclusion is already true | (0\le7TSd\) | Emptiness and nonnegative parameters | Exact dimension zero | Valid for all (d\), including zero | Without the convention, the branch target would be undefined |
| Zero-dimensional closure | Exact tie-boundary and baseline closure | Nonempty \(\mathcal H\), (d=0\) | Success event is deterministic and equivalent to (h\equiv\tau\) | Unique zero map/vector, fixed \(\tau\), confident premise | Potential zero-score ambiguity; excluded by common tie rule | No draw-dependent accumulation | Explicitly conditional target plus algebraic coupling | `assump:tie-resolved-confident-map` and \(\mathbb R^0\) conventions; no null case excluded | Probability at least (1/2\) for a deterministic event forces exact truth | Zero map is both produced and consumed; pointwise score residual zero | `step-local` | Primitive conditional source -> G1 -> assembly | At (d=0\), no draw or update is needed; target already exactly represented | (d=0\Rightarrow h\equiv\tau\Rightarrow\operatorname{dc}=0=7TSd\) | (d=0\), exact event, tie label | Constant-target certificate | Zero scores are handled exactly | Without shared tie conventions, exact representation could change at zero |
| (S\ge n\) | Structural lower comparison for rate closure | All positive-width architectures, including (L=1\) | (S\ge n_1n\ge n\) | Positive first-layer width | Apparent hidden (n\) factor | Finite sum; no accumulation | Structural lower/upper comparison | `assump:source-regime`; no allowed architecture excluded | Parameter count has the required lower-bound content | Exact scalar inequality feeds G3; no object transfer | `step-local` | Primitive architecture -> G1 -> G3 | At (L=1\), (n_1=1\) and equality (S=n\) is allowed | (n\le S\) absorbs every later (n\) term | Positive integer widths and definition of (S\) | Derived (n\le S\) | Valid at (n=1\), (S=n\) | Without this comparison, the rate would retain unsupported (n\) |
| (v<2T\) | Structural VC upper bound and learner-to-count bridge | Fixed finite (T\), exact expected-risk learner premise | \(\mathbb E_B R(h_B)\ge\frac12(1-1/(2T))^T\ge1/4\) | Fair unseen label and unseen-point probability | Repeated inputs and learner randomness | Exactly (T\) iid draws; multiplicative avoidance, no additive defect | Stopping/conditioning argument plus structural upper comparison | Exact sampled-label-only source protocol and universal success; no allowed (T\ge1\) excluded | Unseen-label independence supplies a lower bound of the exact risk type needed for contradiction | Finite average selects one fixed target under the same distribution, learner, horizon, and risk; residual zero | `step-local` | Primitive learner premise -> G2 -> G3; no VC premise is assumed | At (T=1\), after the sole update the unseen bit remains fair and the lower bound is exactly (1/4\) | \(\frac12\Pr(E)\ge1/4>\varepsilon\) rules out shattering (2T\) points | Universal success, iid sampling, label-independent initialization, fixed update | Derived (v<2T\) | Repeats, ties, arbitrary initialization, and (T=1\) pass | If the learner accessed unsampled labels or success omitted \(\mathcal D_Z\), the VC bridge could fail |
| (r\le7TS\) | Quantitative specialization and amplification budget | Finite class on (N=2^n\), fixed (T\) | (M\le\sum_{j=0}^v\binom Nj\), then (r\le\log_2M+2\) | Derived (v<2T\), (S\ge n\), Sauer recursion | (v=0\) singularity, ceiling (2), \(\log_2e\), and (n\) | Finite combinatorial sum; every residual displayed once | Structural upper comparison | G1/G2 outputs and direct current-notation combinatorics; no (0\le v\le N\) boundary excluded | Exact class cardinality is the claim type needed for the union budget | Ceiling residual (2\le2TS\); all scalar residuals dominated at target scale | `step-local` | G1 + G2 -> G3 -> G4/G5 | At (v=0\), (M=r=1\) without invoking the singular formula | (r\le2T(n+\log_2e)+2\le5Tn+2\le7TS\) | Finite domain and architecture regime | (v<2T\), (S\ge n\), (r\) | Valid at (v=0\), (v=N\), (n=1\), (T=1\), (S=n\) | Without VC or (S\ge n\), (r\) could retain exponential or hidden (n\) dependence |
| Deterministic covering tuple | Probability-mode conversion and generated coverage certificate | Exactly (r\) iid maps and finite \(\mathcal H\) | Fixed-target failure \(\le2^{-r}\); union failure \(\le M2^{-r}\le1/2\) | Common \(\mathcal P\), per-target success (1/2\), and (r\) budget | Block failures and finite target union | Failure multiplies over (r\) draws and the finite union is fully paid by (r\); no persistent additive defect | Summable control plus stopping/conditioning argument | Explicitly conditional common-law premise and G3; target-dependent laws excluded by the primitive quantifier order | Source has exact full-domain representation content for every fixed target | Produced event equals the event consumed by G5; no score, distribution, margin, or probability residual | `step-local` | Primitive common law + G3 -> G4 -> G5 | At (M=1,r=1\), first-draw success is at least (1/2\) | (M2^{-r}\le1/2<1\) guarantees a deterministic successful tuple | One common law and exact success event | Derived (r\) and covering tuple | Valid at success exactly (1/2\), (r=1\), and zero successful scores | If the law depended on (h\), no common product source would exist |
| Common map and \(\operatorname{dc}\le7TSd\) | Exact theorem closure | All targets and all inputs simultaneously | \(\langle u_h,\Phi(x)\rangle=\langle w_{i(h),h},\phi_{i(h)}(x)\rangle\) | One covered block per target and direct-sum identity | Cross-block interference, ties, and dimension cost | Finite blocks; inactive-block contributions are identically zero | Algebraic coupling plus structural upper comparison | G3 budget and G4 tuple; no represented target excluded | Exact score equality supplies exact sign representation | Produced \(\Phi\) is the consumed target object; residual is identically zero in the exact score interface | `step-local` | G3 + G4 -> G5 -> assembly | At (r=1\), construction is the successful block; zero scores remain zero | \(\operatorname{dc}\le rd\le7TSd\) | Exact tie convention and dimension definition | (r\) budget, tuple, selected block separators | Different targets may select different blocks without changing \(\Phi\) | Without coverage for one target, the block construction cannot represent it |
| Polynomial specialization | Public conditional rate specialization | Only when explicit (d\le p(S,T)\) is separately established | \(7TSd\le7TSp(S,T)\) | Main theorem and nonnegative scalar inequality | Scalar slack (p(S,T)-d\) only | No repeated scope or probability conversion | Structural upper comparison | Separate explicit (d\)-bound; specialization omitted if unavailable | Source controls exactly the exposed (d\) at the target scale | Same deterministic dimension target; no representation residual | `step-local` | Separate (d\)-bound + G5 -> specialization | If (d=p=0\), G1 supplies exact closure | Monotonicity under (7TS\ge0\) | Explicit (d\le p(S,T)\) with allowed dependence | Main bound | No hidden (n\), \(\eta\), failure, or approximation term | Without the separate bound, only the main (7TSd\) theorem is asserted |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Exact null closure and (S\ge n\) | G1 / `step_001` | Definitions, \(\mathbb R^0\), fixed \(\tau\), positive widths, source regime, and confident premise for (d=0\) | Zero-score ambiguity controlled by \(\tau\); hidden (n\) controlled by first-layer count; no uncontrolled class | Zero map and dimension are the exact consumed objects; residual zero | \(\operatorname{dc}(\varnothing)=0\); (d=0\Rightarrow h\equiv\tau\); (S\ge n\) | Binding definitions and deterministic-event probability threshold | G2--G5 and assembly | valid |
| (v<2T\) | G2 / `step_002` | Universal exact expected-risk bound, iid sample access, independent initialization, uniform shattered-set distribution | Repeats are included in exact avoidance probability; learner randomness is conditioned out; no unsampled-label channel | Average transfers to one exact target under the same \(\mathcal D\), risk, learner, and horizon; residual zero | \(\frac12(1-1/(2T))^T\ge1/4>\varepsilon\) | Strict \(\varepsilon<1/4\) and fair unseen bit | G3 | valid |
| (r\le7TS\) | G3 / `step_003` | (N=2^n\), derived (v<2T\), derived (S\ge n\), (S,T\ge1\) | (v=0\) split; ceiling (2\), \(\log_2e\), and (n\) explicitly controlled; no unclassified term | Exact cardinality feeds exact integer (r\); ceiling residual is at most (2\) | (r\le2T(n+\log_2e)+2\le5Tn+2\le7TS\) | VC ceiling and architecture count | G4 and G5 | valid |
| One deterministic tuple covering every target | G4 / `step_004` | One target-independent law, exact per-target success, iid blocks, finite class, and (r\) | Per-target failure multiplies; finite union costs (M\); no target-dependent or distribution-dependent source | Produced and consumed exact success events coincide; no score, error, margin, or probability residual | (M2^{-r}\le1/2<1\) | Definition of (r\) and primitive success (1/2\) | G5 | valid |
| Common exact map and main dimension bound | G5 / `step_005` | Covering tuple, one separator per covered target, and (r\le7TS\) | Cross-block terms exactly zero; tie and dimension costs explicit; no uncontrolled residual | Pointwise score difference is zero and \(\Phi\) is the exact object consumed by \(\operatorname{dc}\) | \(\operatorname{dc}\le rd\le7TSd\) | Coverage certificate and repetition budget | Final assembly | valid |
| Polynomial specialization | G5 plus a separate (d\)-bound | Main bound and explicit (d\le p(S,T)\) | No term dropped; any hidden (n\), \(\eta\), failure, or approximation dependence would invalidate the specialization | Same exact deterministic target; only scalar upper substitution | (7TSd\le7TSp(S,T)\) | Separately proved explicit polynomial bound | Public specialization | valid when the separate inequality is available; otherwise not asserted |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Null-branch closure and (S\ge n\) | G1 / `step_001`, from definitions and primitive conditions | G2--G5 and final branch assembly | Primitive definitions/assumptions -> G1 -> consumers | derived | valid |
| (v<2T\) | G2 / `step_002`, direct no-free-lunch derivation | G3 / `step_003` | `assump:source-regime` + `assump:universal-sgd-success` -> G2 -> G3 | derived | valid |
| (M\) estimate and (r\le7TS\) | G3 / `step_003`, direct current-notation combinatorics | G4 / `step_004`; G5 / `step_005` | G1 + G2 -> G3 -> G4/G5 | derived | valid |
| Exact per-target success under one common law | `assump:tie-resolved-confident-map` | G4 / `step_004` | Primitive explicitly conditional premise -> G4 | primitive | valid; source and consumer use the same full-domain tie-resolved event |
| Deterministic tuple covering every target | G4 / `step_004` | G5 / `step_005` | Primitive common law + G3 -> G4 -> G5 | derived | valid |
| Common exact map \(\Phi\), separators, and \(\operatorname{dc}\le7TSd\) | G5 / `step_005` | Final theorem assembly | G3 + G4 -> G5 -> assembly | derived | valid |
| Polynomial deterministic bound | G5 plus a separate explicit (d\le p(S,T)\) | Conditional public specialization | Separate (d\)-bound + main G5 output -> specialization | derived | valid only under the stated separate inequality; no unconditional (d\)-producer is claimed |

## Gate Evidence Table

| Obligation / generated condition | Claim class / theorem role | Mechanism source | Source provenance | Source-to-claim match | Source-convention compatibility | Concrete control relation | Raw controls / exported interface feasibility | Residual-to-target adequacy | Defect / forcing / accumulation behavior | Noncircular producer path | Generated-output producer and consumers | Entry / boundary stress result | Locality verdict | Smallest retry target |
| -------------------------------- | -------------------------- | ---------------- | ----------------- | --------------------- | ------------------------------- | ------------------------- | --------------------------------------------- | --------------------------- | --------------------------------------- | ---------------------------- | --------------------------------------- | ------------------------------ | ---------------- | --------------------- |
| Empty and (d=0\) branches | Exact baseline closure | Definitions, fixed \(\tau\), zero-dimensional confident event | Binding definitions and primitive conditional premise | Supplies exact zero dimension, not a surrogate | Same \(\mathbb R^0\), inner product, and \(\operatorname{sgn}_{\tau}\) throughout | \(\operatorname{dc}(\varnothing)=0\); (d=0\Rightarrow h\equiv\tau\Rightarrow\operatorname{dc}=0\) | Raw emptiness or deterministic zero-map success exports the final branch claim directly | Produced and consumed map/dimension coincide; score residual zero | No iterative or stochastic defect | Definitions/premise -> G1 -> assembly | G1 produces closed branches; assembly consumes them | No update needed; zero scores use \(\tau\) | `step-local` | None |
| (S\ge n\) | Structural rate input | First-layer parameter count | `assump:source-regime` | Has exact lower-bound content needed to remove (n\) | Exact fully connected architecture, including (L=1\) | (S\ge n_1n\ge n\) | Positive widths and definition of (S\) export (n\le S\) | Exact scalar transfer; no residual | Finite sum, no accumulation | Primitive architecture -> G1 -> G3 | G1 produces; G3 consumes | Equality (S=n\) allowed at (L=1\) | `step-local` | None |
| (v<2T\) | Structural capacity bound | Fair random labels on shattered (Z\) and unseen-point conditioning | Direct derivation from exact universal learner premise | Produces a lower bound in the exact expected-risk interface | Same initialization, update, kink rule, aggregate, distribution, target, risk, and tie rule | \(\Pr(E)=(1-1/(2T))^T\ge1/2\), average risk \(\ge1/4>\varepsilon\) | Universal success plus sampled-label-only access export the VC ceiling | Finite average selects one fixed (h_b\); all object, mode, and metric residuals zero | Repeats included multiplicatively; no additive trajectory defect | Primitive learner premise -> G2 -> G3 | G2 produces (v\); G3 consumes | (T=1\) gives exact (1/4\); ties remain independent of fair unseen bit | `step-local` | None |
| (r\le7TS\) | Quantitative count-to-budget bridge | Sauer recursion, binomial estimate, (v<2T\), and (S\ge n\) | Direct derivation from G1/G2 outputs | Controls exact (M\) and integer (r\) | Exact finite domain (N=2^n\); no representation convention substituted | (r\le2T(n+\log_2e)+2\le5Tn+2\le7TS\), with (v=0\) separate | Raw (N,v,n,S,T\) support exact exported budget | Ceiling residual (2\le2TS\); every defect dominated | Finite sum and ceiling; no repeated defect | G1 + G2 -> G3 -> G4/G5 | G3 produces; G4/G5 consume | (v=0\) gives (M=r=1\); (v=N\), (n=T=1\) allowed | `step-local` | None |
| Simultaneous covering tuple | Probability-mode conversion | Common confident law, iid product, finite union | Primitive explicitly conditional premise plus G3 | Exact per-target success supports exact all-target coverage | Same law precedes every target; same domain, dimension, and tie event | Fixed-target failure \(\le2^{-r}\), union failure \(\le M2^{-r}\le1/2\) | Common \(\mathcal P\), success (1/2\), and exact (r\) export one fixed tuple | Produced and consumed events coincide; no residual | Multiplicative failure across (r\); finite union fully budgeted | Common law + G3 -> G4 -> G5 | G4 produces tuple; G5 consumes | (M=r=1\) succeeds with probability at least (1/2\) | `step-local` | None |
| Common map and main theorem | Exact deterministic closure | Direct-sum identity and coverage certificate | Direct derivation from G3/G4 outputs | Supplies precisely the map/separator structure in \(\operatorname{dc}\) | Same coordinates, inner product, domain, and tie map | \(\langle u_h,\Phi(x)\rangle=\langle w_{i(h),h},\phi_{i(h)}(x)\rangle\); \(\operatorname{dc}\le rd\le7TSd\) | Covered block and (r\)-budget support exact exported map | Pointwise score residual zero; exact target object | Inactive blocks exactly zero; no accumulated interference | G3 + G4 -> G5 -> assembly | G5 produces; theorem consumes | (r=1\) and zero successful scores preserve exact output | `step-local` | None |
| Polynomial specialization | Public conditional rate bridge | Main bound and separate (d\le p(S,T)\) | Derived main theorem plus separately established scalar control | Exact dependence substitution | Same deterministic target, horizon, and representation interface | \(7TSd\le7TSp(S,T)\) | Explicit scalar bound with no hidden (n\) or \(\eta\) supports export | Only nonnegative scalar slack; representation residual zero | No probability or repeated defect | Separate (d\)-bound + G5 -> specialization | G5 and separate source produce; public specialization consumes | (d=p=0\) routes through G1 | `step-local` | None |

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The attempted claim is exactly the conditional theorem in `setting.md`; it does not silently remove `assump:tie-resolved-confident-map`, strengthen the learner premise, or claim the unconditional source target.
- Theorem-critical mechanism check: every high-risk block has a nonvacuous source already present under the accepted contract. The sources are the binding null conventions and positive widths (G1), unseen-label independence under the exact information interface (G2), finite-domain combinatorics (G3), the explicitly conditional common law plus iid sampling (G4), and exact direct-sum algebra (G5).
- Source-to-claim and convention check: G2 preserves the exact learner, distribution, target, expectation, horizon, loss-to-classification interface, kink convention, and tie output. G3 operates on the exact finite class. G4 consumes the exact event provided by the primitive premise. G5 consumes and produces the same score and feature-map objects used by \(\operatorname{dc}\).
- Residual-to-target check: target averaging leaves no residual after selecting one fixed labeling; the count bridge exposes and dominates the ceiling residual (2\); the tuple event is unchanged; direct-sum score residual is identically zero; the polynomial specialization has only the supplied scalar slack.
- Accumulation check: G2 has the exact finite product \((1-1/(2T))^T\), G4 has the exact finite product failure (2^{-r}\) and union cost (M\), and G5 has zero cross-block accumulation. No persistent, adversarial-sign, or uncontrolled defect is present.
- Generated-output and noncircularity check: G1 -> G2 -> G3 -> G4 -> G5 is acyclic, with the additional direct G1/G3 inputs recorded above. No block assumes its own output or the final common map.
- Entry and boundary check: \(\mathcal H=\varnothing\), (d=0\), (T=1\), (v=0\), (v=N\), (n=1\), (S=n\), (M=1\), (r=1\), repeated samples, random initialization, and zero scores all have explicit traces.
- Same-setting repair plausibility: no repair is currently required. The most delicate future proof unit is the G2 conditioning lemma, but its sigma-field, fairness source, finite-horizon probability, target selection, and exact consumer interface are already fixed, making it `step-local`. Likewise, the G3 combinatorial induction is substantial but entirely local under unchanged interfaces.
- Remaining source-level gap: deriving a polynomial (d\) confident map from exact SGD, or removing (d\), would require new theorem content and is outside this conditional branch. This is not a defect in the accepted theorem contract and is not deferred to a proof step.

## Global Gaps And Hard Steps

None

All theorem-level links close at diagnostic granularity. The later proof-step artifacts must independently prove their assigned local units before any statement here can be used as proof evidence; among them, `step_002` should receive the strongest conditioning and quantifier audit, followed by the self-contained Sauer--Shelah derivation in `step_003`.

## Diagnostic Boundary Note

This `global_proof.md` artifact is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, scope, convention, quantitative dependence, or conclusion. Every local derivation and tool application must be independently proved or discharged by the corresponding `/proof-step` artifact and accepted review.

## Suggested Routing

None

Continue to all five proof steps in accepted dependency order. Treat `step_002` as the highest-risk local proof audit, while preserving the independent proof and review requirements for every step.
