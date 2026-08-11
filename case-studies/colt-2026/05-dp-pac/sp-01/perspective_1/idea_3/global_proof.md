# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_1/idea_3`.
- Global unit attempt: 1 of 100 for sketch attempt 1.
- Goal mode: exact-goal mode.
- Binding setting: `perspective_1/idea_3/setting.md`, SHA-256 `5e45f461ae89074d27e31ccd506d4f44aec7c62427e929e4d562aa79c3ad94d0`.
- Reviewed sketch: `perspective_1/idea_3/proof_sketch.md`, SHA-256 `6f44f93c2566ca275582e2153f9dc84bcf9de78ee2dc9936cde3dfa38bc5d95d`.
- Reviewed sketch review: `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `9726ba2be261ed6e46efe21d09b3d9bd0d83d242ed45f944f2de86af7f17c390`.
- Optional source-interface context: `perspective_1/idea_3/technical_survey.md`, SHA-256 `7d762f8d1d90a05e1a32e72cf3e90e8f7f080dab26e41ccf90c70d45f5c499a8`.
- Review result: `ACCEPTED`, viability score 9, retry target `None`, retry mode `none`.
- Rendering note: the reviewed sketch has the documented two `0x0C` bytes at lines 415--416 where two backslashes in `\frac` were intended. The unambiguous witness used below is the correctly encoded rate-objective/exported-interface identity
  \[
  \frac{127}{128}\left(\frac18-\frac3{2048}\right)
  =\frac{32131}{262144}>\frac{31}{256}.
  \]
  This diagnostic does not modify the reviewed sketch.

## Status

PARTIAL_BLOCKED

The accepted roadmap closes at theorem-interface level without a missing dependency, mechanism source, generated-output flow, or target-transfer bridge. Substantial local derivations remain, especially the all-input totalized Yan wrapper (`step_002`), the proof-derived ALMM expected-risk wrapper (`step_008`), strict finite minimax (`step_010`), and the total one-use simulator (`step_012`). Each such obligation has an unchanged-sketch, source-compatible, boundary-tested interface and is classified `step-local`. There is no `sketch/interface defect` or candidate `idea/theorem-contract defect` in this diagnostic.

## Attempted Theorem Claim

The progress type is `conditional`. Assume exactly `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation`, and `assump:global-privacy-range` from `setting.md`. Write
\[
M=M_{\oplus}(C)=\sum_{i=1}^k s_i,
\qquad
q_i=\left\lceil K_Y\frac{s_i}{\varepsilon}
\log^2\!\left(\frac{e s_i}{\varepsilon\delta}\right)\right\rceil,
\qquad
Q_{\oplus}=\sum_iq_i.
\]
The attempted exact theorem asserts universal constants \(C_{\rm up},C_{\rm quota}\ge1\) and \(c_{\rm low}>0\) with the following three clauses.

1. For every allowed \(0<\delta<1\), the specified quotient-first, prefix-and-padding, independently randomized routed rule is a measurable Markov kernel into \((\mathcal H^\oplus,\mathscr H^\oplus)\), is replacement-\((\varepsilon,\delta)\)-DP on all labeled datasets (realizable or not), and for every target \(c\in C\) and every probability measure \(D\) on \((X,\Sigma)\) satisfies
   \[
   \Pr\!\left[R_D(h_{\bar A_n^{\oplus,Q}(S)},c)\le\frac1{16}\right]
   \ge\frac{15}{16}
   \quad\text{whenever}\quad
   n\ge\lceil C_{\rm up}Q_{\oplus}\rceil.
   \]
   Consequently
   \[
   \operatorname{SC}_{\varepsilon,\delta}(C)
   \le\lceil C_{\rm up}Q_{\oplus}\rceil,
   \qquad
   Q_{\oplus}\le C_{\rm quota}\frac{M}{\varepsilon}
   \log^2\!\frac{eM}{\varepsilon\delta}.
   \]

2. Fix one candidate \(n\ge1\) and additionally assume `assump:candidate-delta-budget` at that same \(n\). Every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner satisfying the stated \((1/16,1/16)\) PAC guarantee must obey \(n\ge c_{\rm low}M\). Equivalently, for \(n<c_{\rm low}M\), every such learner has a deterministic full-product target \(c\in C\) and an allowed block-mixture distribution \(D\), with \(D(X_i)=\omega_i=s_i/M\), for which
   \[
   \Pr[R_D(h_{A_n(S)},c)>1/16]>1/16.
   \]
   This quantifier remains unrestricted: the learner need not be proper, factorwise, efficient, or quotient-output-valued.

3. The lower clause is substituted at \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\) only if both conjuncts of `assump:candidate-delta-budget` hold there. Under that explicit check,
   \[
   c_{\rm low}M\le n_*
   \le\lceil C_{\rm up}Q_{\oplus}\rceil
   \le O\!\left(\frac{M}{\varepsilon}
   \log^2\!\frac{eM}{\varepsilon\delta}\right).
   \]
   If the candidate condition fails at \(n_*\), only the unconditional upper clause is asserted.

At \(k=1\), the upper construction remains the measurable quotient-first totalized Yan factor learner at the same quota order, and the lower construction remains the unrestricted VC/ALMM one-factor lower interface with zero overflow. This is not a universal characterization of arbitrary finite-Littlestone classes. Classes without the canonical VC-one product structure, and factors with uncountably many evaluation types, remain in the full-source open gap.

## Whole-Proof Draft

### Block A: quotient, product, dimension, risk, and measurability (`step_001`)

For a fixed factor, two raw points are identified precisely when every \(c_i\in C_i\) gives them the same label. Hence each \(c_i\) is constant on every equivalence cell and admits a unique function \(\bar c_i:Q_i\to\{0,1\}\). Conversely \(\bar c_i\circ\kappa_i=c_i\), so pullback is a bijection \(\bar C_i\leftrightarrow C_i\). Any finite labeled sample or binary mistake tree over \(X_i\) maps nodewise to \(Q_i\), and realizability of every path is unchanged. Pulling a quotient tree back to representatives gives the reverse direction. Therefore
\[
\operatorname{VC}(\bar C_i)=\operatorname{VC}(C_i)=1,
\qquad
\operatorname{LD}(\bar C_i)=\operatorname{LD}(C_i)=d_i.
\]
No selector or ordering is used in this argument.

The full Cartesian restriction map gives exact independent target freedom on disjoint blocks. Taking one shattered point from each nonconstant factor shows \(\operatorname{VC}(C)\ge k\); the standard disjoint-union VC inequality gives the reverse inequality. Concatenating a depth-\(d_i\) mistake tree from each factor gives \(\operatorname{LD}(C)\ge\sum_i d_i\). For the reverse inequality, run a factorwise optimal online algorithm on the subsequence of examples lying in \(X_i\); the \(i\)-th component makes at most \(d_i\) mistakes, so the product predictor makes at most \(\sum_i d_i\). Thus
\[
\operatorname{VC}(C)=k,
\qquad
\operatorname{LD}(C)=\sum_i d_i.
\]
When every factor is finite, Cartesian bijectivity also gives \(|C|=\prod_i|C_i|\) and hence the stated logarithmic identity. Because \(d_i\ge1\), \(s_i\ge2\). The elementary one-extra-iteration comparison \(\log_2^*(d_i+1)\le\log_2^*d_i+1\) gives \(s_i\le r_i+2\), and consequently \(M\ge2k\).

Each \(Q_i\) is finite or countable discrete, so \(\mathcal H_i=\{0,1\}^{Q_i}\), with the evaluation product sigma-field, is standard Borel. The finite product \(\mathcal H^\oplus\) is standard Borel. For every output tuple, decoded positive sets are countable unions of measurable quotient cells, so the decoded hypothesis is \(\Sigma\)-measurable. Moreover,
\[
R_D(h_{\bar h},c)
=\sum_{i=1}^k\sum_{q\in Q_i}
D(\kappa_i^{-1}(\{q\}))
\mathbf 1\{\bar h_i(q)\ne\bar c_i(q)\}.
\]
The partial sums are finite evaluation-cylinder functions and increase to the displayed nonnegative sum. Therefore risk is \(\mathscr H^\oplus\)-measurable and quotient pullback has exactly zero risk residual for every arbitrary \(D\), including zero-mass blocks.

### Block B: totalized countable-discrete Yan factor kernel (`step_002`)

Fix \(i\), reference \(\bar f_i^\circ\), the pre-data enumeration, root, sentinels, and all tie-breaking. XOR by \(\bar f_i^\circ\) maps the factor class to Yan's reference-zero convention without changing any pointwise error indicator or Littlestone dimension. The branch uses Yan arXiv:2505.06581v2 only through the audited internal components: `thm:learn vc`; the threshold-dimension comparison; `thm:private median`; `def: k-bounded`; `lem:choosing mechanism`; the transform/tree material; `alg:improperlearner`; and the order/final-comparison lemmas. The positive endpoint is \(TD+1\), so the \(d_i=1\) boundary does not collapse. The printed `thm:privacy-OPTPrivateLearner`, the unlabeled block-good claim, and the raw confidence corollary/final theorem are known nonoutputs and are not invoked as the branch kernel, core, or confidence statement.

The fixed-length quotient sample space \((Q_i\times\{0,1\})^{q_i}\) is countable discrete. Define every version space, core, depth, block summary, median input, score, selector branch, and output law on every element of this space. Inconsistent labels, empty version spaces or cores, empty positive score support, root and endpoint cases, and source-side partial branches are sent to predeclared laws before output. Once each row is a probability measure on the standard-Borel \(\mathcal H_i\), every event probability is automatically measurable as a function of the countable-discrete input. This supplies kernel legality, but not privacy by itself; the totalized branches must remain inside the following replacement proof.

At a released layer, permutation symmetrization makes each block contribute one summary. If one input record is replaced, all common block summaries are coupled and the affected histogram changes from \(u\) to \(v\), with
\[
q'(p)-q(p)=\mathbf 1\{p=v\}-\mathbf 1\{p=u\}.
\]
Using the common-deletion comparison, BNSV arXiv:1504.07553 `alg:choosing`, `lem:CMprivacy`, and `lem:CMutility` apply to the finite positive score support, including \(u\) or \(v\) equal to the sentinel and the empty-support fallback. The source-private median and choosing allocations are calibrated so their finite composition is at most \((\varepsilon/2,\delta/2)\). The local proof must verify every valid/invalid adjacent transition, rather than append a data-dependent fallback after a source theorem. With that verification, the factor kernel is replacement-private on all quotient datasets, not only realizable datasets.

For utility, let \(\mathcal K_i\) be the zero function together with indicators of nonempty cores generated by nonempty version spaces. The accepted wrapper uses the exact structural dichotomy: for comparable points the forbidden labeling is \((1,0)\), while for incomparable points the forbidden labeling is \((1,1)\). Thus no two points are shattered and \(\operatorname{VC}(\mathcal K_i)\le1\). Applying Yan `thm:learn vc` at a fixed marginal calibration bounds the probability that one independent comparison block has a bad core. Hoeffding then gives fewer than \(t/12\) bad blocks with the assigned failure budget. On the private-median good event, at least \(t/6\) blocks lie on each required side. The choosing maximum is therefore at least \(t/6\), and its utility slack leaves selected score at least \(t/12\). Since fewer than \(t/12\) contributing cores are bad, a selected comparison has a good opposite-side witness. Yan's order and final-comparison lemmas then give factor risk at most \(1/64\). The two private-release failures and the bad-count failure are calibrated to sum to at most \(1/4096\). This fixed marginal \(t/6,t/12\) closure is the reason no raw \((t+2)\beta_{\rm raw}\) substitution, and hence no confidence fixed point, is used.

Finally, the threshold-dimension comparison, \(TD+1\) endpoint, internal block sizes, fixed confidence, and fixed privacy split must be bounded by
\[
q_i=\left\lceil K_Y\frac{s_i}{\varepsilon}
\log^2\!\left(\frac{e s_i}{\varepsilon\delta}\right)\right\rceil
\]
for one universal \(K_Y\). The exported utility is explicitly restricted to unpadded realizable iid samples. Reference XOR and quotient pullback transfer it to the original factor with zero residual. These privacy, confidence, and quota verifications are the principal unresolved `step-local` work.

### Block C: measurable routing and support-two privacy (`step_003`)

Membership in each \(X_i\), the quotient maps, selecting the first \(q_i\) routed records, and padding the remaining positions are measurable finite-coordinate operations. Combining the factor kernels with independent internal randomness therefore defines a product Markov kernel, and decoding is measurable by Block A.

Consider one global replacement. If both records lie in the same block, its routed prefix is unchanged or changes by one replacement. If a record leaves block \(a\) and enters block \(b\ne a\), then after symmetrization the \(a\)-multiset either is unchanged or replaces the removed record by its next routed record (or padding); the \(b\)-multiset either is unchanged or replaces its previous last selected record (or padding) by the entering record. Thus at most two factor inputs change, each at replacement distance at most one. All other factor laws couple identically. Basic approximate-DP composition for Markov kernels gives
\[
(\varepsilon/2+\varepsilon/2,\delta/2+\delta/2)=(\varepsilon,\delta),
\]
for every measurable tuple event. Deterministic decoding is postprocessing. The first cross-block transition is already covered even for nonrealizable labels and at a shortage/full boundary. At \(k=1\), only one factor changes, so the construction actually retains the stronger factor privacy budget and certainly satisfies the advertised one.

### Block D: arbitrary-mass weighted shortage (`step_004`)

Let \(J_i\sim\operatorname{Bin}(n,\rho_i)\), without requiring independence among the counts. Split the factors into
\[
\mathcal L=\{i:n\rho_i<128q_i\},
\qquad
\mathcal H=\{i:n\rho_i\ge128q_i\}.
\]
The total light mass is bounded deterministically by
\[
\sum_{i\in\mathcal L}\rho_i
<\frac{128}{n}\sum_{i\in\mathcal L}q_i
\le\frac{128Q_{\oplus}}n.
\]
For a heavy factor, \(q_i\le(n\rho_i)/128\) and \(n\rho_i\ge128\). A binomial lower-tail Chernoff bound is then stronger than \(e^{-16}\), so
\[
\sum_{i\in\mathcal H}\rho_i\Pr[J_i<q_i]
\le e^{-16}\sum_{i\in\mathcal H}\rho_i\le e^{-16}.
\]
Zero-mass factors contribute zero by definition. Hence
\[
\mathbb E W_{\rm short}
\le\frac{128Q_{\oplus}}n+e^{-16}.
\]
This charges each shortage once in exact risk mass and never union bounds over factors.

### Block E: weighted bad mass and global PAC closure (`step_005`)

Condition on the block positions and on \(J_i\ge q_i\). The first \(q_i\) quotient observations in block \(i\) are iid from \((\bar D_i)_{\bar c_i}\), so Block B gives conditional bad-factor probability at most \(\beta_{\rm fac}=1/4096\). Block A makes each factor-risk event measurable. Therefore
\[
\mathbb E W_{\rm bad}
\le\mathbb E W_{\rm short}+\frac1{4096}\sum_i\rho_i
\le\frac{128Q_{\oplus}}n+e^{-16}+\frac1{4096}.
\]
On a good factor the exact factor risk is at most \(1/64\), and on a bad factor it is at most one. Exact risk additivity yields
\[
R_D(h_{\bar A_n^{\oplus,Q}},c)
\le\frac1{64}+W_{\rm bad}.
\]
Set
\[
\gamma:=\frac3{1024}-e^{-16}-\frac1{4096}>0
\]
and choose a universal \(C_{\rm up}>128/\gamma\), enlarged to at least one. If \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\), then \(\mathbb E W_{\rm bad}<3/1024\). Consequently
\[
\Pr[R_D>1/16]
\le\Pr[W_{\rm bad}>3/64]
<\frac{3/1024}{3/64}=\frac1{16}.
\]
No independence among factor outputs is used. If \(k=1\), \(J_1=n\ge q_1\), so shortage is exactly zero and the factor utility itself gives the required baseline, rather than merely the generic weighted relaxation.

### Block F: exact quota ceilings and public rate (`step_006`)

Monotonicity of the natural logarithm and \(s_i\le M\) give
\[
\begin{aligned}
Q_{\oplus}
&\le \frac{K_Y}{\varepsilon}\sum_i s_i
\log^2\!\frac{e s_i}{\varepsilon\delta}+k\\
&\le \frac{K_YM}{\varepsilon}
\log^2\!\frac{eM}{\varepsilon\delta}+k.
\end{aligned}
\]
Because \(M\ge2k\), \(M\ge2\), \(\varepsilon\le1/10\), and \(0<\delta<1\), the positive main scale \((M/\varepsilon)\log^2(eM/(\varepsilon\delta))\) dominates \(M\), and hence dominates the exact ceiling residual \(k\le M/2\). Thus one may take, for example, a universal \(C_{\rm quota}\ge\max\{1,K_Y+1/2\}\). No \(|C_i|\) or \(|Q_i|\) enters this bridge.

### Block G: additive unrestricted VC floor (`step_007`)

Choose in each block one point on which both labels occur. Full Cartesian freedom realizes all \(2^k\) label vectors on these points. Draw the target vector uniformly and sample from the uniform distribution on the \(k\) points. Conditional on a point being unseen, its target bit remains independent and fair even given a randomized, improper learner's complete transcript. Hence
\[
\mathbb E R_D\ge\frac12\left(1-\frac1k\right)^n.
\]
If \(n<k/2\), this exceeds \(1/4\) whenever the condition is nonvacuous; \(k=1,2\) are handled directly by \(n\ge1\). In contrast, a \((1/16,1/16)\) PAC guarantee implies
\[
\mathbb E R_D
\le\frac{15}{16}\frac1{16}+\frac1{16}
=\frac{31}{256}<\frac14.
\]
Thus \(n\ge a_{\rm VC}k\) with a universal choice such as \(a_{\rm VC}=1/2\). This certificate uses neither privacy nor properness and later pays for the additive constant in every \(s_i\).

### Block H: proof-derived ALMM unrestricted expected-risk wrapper (`step_008`)

The needed statement is not ALMM's printed PAC corollary. The wrapper follows ALMM arXiv:1806.00949v3 through `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, and the qualitative `thm:ADPimpliesLD`, with BNSV Lemma 5.9 for with-replacement resampling. Its exact conclusion is: there are universal \(a_{\rm L},c_\delta>0\) such that, for \(m\ge8\), a replacement-\((0.1,\delta)\)-DP factor learner whose expected population risk is at most \(1/8\) on every realizable factor task satisfies
\[
m\ge a_{\rm L}\log_2^*d_i
\quad\text{provided}\quad
\delta\le\frac{c_\delta}{m^2\log(m+1)}.
\]

To expose the source convention, take the least even \(N\ge9m\), so \(9m\le N\le10m\). On a fixed realizable database of size \(N\), sample \(m\) rows with replacement and run the factor learner. BNSV Lemma 5.9 gives the database-level parameters
\[
\widetilde\varepsilon=6(0.1)m/N\le1/15,
\qquad
\widetilde\delta=e^{6(0.1)m/N}(4m/N)\delta<\delta.
\]
After shrinking the universal \(c_\delta\), \(N\le10m\) converts the candidate \(m^{-2}\log^{-1}(m+1)\) cap to the ALMM empirical-database scale. Under the uniform row-counting distribution, population risk equals empirical loss pointwise. Thus the expected-risk premise yields expected empirical accuracy at least \(7/8\), which is the actual accuracy input used in `lem:reduction`. The finite Shelah threshold pattern, the constant \(N/m\), binary relabeling, and additive log-star shifts are absorbed into \(a_{\rm L},c_\delta\). Restricting an arbitrary output to its labels on the finite witness is measurable because the branch learner exposes all finite-evaluation cylinders; it does not impose properness.

The contrapositive is strict: if \(m<a_{\rm L}r_i\) under the delta cap, some realizable task in a fixed finite Shelah task universe has expected factor risk \(>1/8\). The local proof must check the exact cited statement shapes, the finite universe independent of the learner, every delta conversion, and the \(m=8\) boundary. Those are `step-local` source-discharge obligations; the printed final theorem is not treated as blanket authority.

### Block I: candidate calibration and active hard mass (`step_009`)

Fix the lower candidate and suppose, locally for contradiction, that a PAC learner exists with \(n<cM\). Define
\[
R_0=\left\lceil\max\{2,32/a_{\rm L}\}\right\rceil,
\quad H=\{i:r_i>R_0\},
\quad w_L=\sum_{i\notin H}\pi_i.
\]
Block G gives \(n\ge a_{\rm VC}k\), and \(s_i\le r_i+2\) gives
\[
w_L\le\frac{(R_0+2)k}{M}
<\frac{c(R_0+2)}{a_{\rm VC}}.
\]
Choose \(c=c_{\rm low}\) strictly below \(a_{\rm VC}/(128(R_0+2))\), and also sufficiently small, for example below \(a_{\rm L}/96\). Then \(w_L<1/128\). For \(i\in H\),
\[
4n\pi_i<4c(r_i+2)<\frac{a_{\rm L}r_i}{8},
\qquad
1\le\frac{a_{\rm L}r_i}{32},
\qquad
8\le\frac{a_{\rm L}r_i}{4}.
\]
It follows that
\[
m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}<a_{\rm L}r_i.
\]
The factor-budget conjunct of `assump:candidate-delta-budget` supplies the exact Block H delta hypothesis at every such \(m_{n,i}\). If \(H=\varnothing\), then \(w_L=1\), already contradicting \(w_L<1/128\); hence the mechanism is never invoked on a vacuous zero-active-factor branch. The first candidate-delta conjunct is not used in this calibration but remains part of the theorem contract and the later \(n_*\) check.

### Block J: learner-independent finite hard priors (`step_010`)

For \(i\in H\), fix the finite quotient types and finite realizable row-counting tasks supplied by Block H. Restrict outputs to all binary vectors on those types and include every labeled input database of size \(m_{n,i}\), including nonrealizable ones. The set \(\mathscr K_i\) of finite kernels satisfying every replacement-DP event inequality is a nonempty compact convex polytope. It exactly represents unrestricted full factor kernels on these tasks: a full kernel restricts to the finite game, while a finite kernel extends by retracting each off-witness row to a fixed witness type (identity on the witness), extending each output vector by fixed labels off the witness, and then pulling back through \(\kappa_i\). Coordinatewise retraction sends one replacement to equality or one replacement, and quotient-cell measurability makes the extension a legal measurable improper kernel.

Let \(\mathcal T_i\) be the fixed finite task set and \(L_i(K,t)\) the exact expected task risk. Block H's strict contrapositive gives
\[
g_i(K):=\max_{t\in\mathcal T_i}L_i(K,t)>\frac18
\quad\text{for every }K\in\mathscr K_i.
\]
Continuity and compactness imply the attained minimum \(\min_K g_i(K)\) is still strictly larger than \(1/8\). Finite von Neumann minimax therefore produces a prior \(\nu_i\) on \(\mathcal T_i\), chosen before any simulated or global learner, such that
\[
\inf_{K\in\mathscr K_i}\mathbb E_{t\sim\nu_i}L_i(K,t)>\frac18.
\]
The task and output restriction have exactly zero risk residual. The unresolved local issue is to instantiate the finite task universe and the restriction/extension bijection with all approximate-DP subset inequalities explicitly present; no new theorem assumption is needed.

### Block K: optimized marginal overflow (`step_011`)

Let \(L_i\sim\operatorname{Bin}(n,\pi_i)\), \(\mu=n\pi_i\), and \(m=m_{n,i}\). Overflow \(\mathcal O_i=\{L_i>m\}\) has integer threshold at least \(\max\{9,4\mu+1\}\). For \(t\ge\mu\), exponential Markov optimization gives
\[
\Pr[L_i\ge t]\le
\exp\{t-\mu-t\log(t/\mu)\}.
\]
For \(0<\mu\le2\), the exponent is maximized at \(\mu=2,t=9\). For \(\mu\ge2\), substitute \(t=4\mu+1\); the derivative
\[
3+\frac1\mu-4\log\left(4+\frac1\mu\right)
\]
is negative, so the maximum again occurs at \(\mu=2\). Therefore
\[
\Pr(\mathcal O_i)\le
\eta_0:=e^7(2/9)^9<\frac3{2048}.
\]
This is a marginal bound, never a factor union bound. If \(k=1\), \(L_1=n\le m_{n,1}\), so overflow is exactly zero.

### Block L: total one-use hidden-factor learner (`step_012`)

Fix \(i\in H\) and a factor input database of size \(m_{n,i}\). Before inspecting it, draw all other factor tasks from their fixed priors and draw the \(n\) iid block indices with probabilities \(\pi_j\). If \(L_i>m_{n,i}\), return a fixed output vector without reading the input. Otherwise insert input rows sequentially into the \(i\)-slots, using each row at most once, sample every other row from its already drawn task, call the arbitrary global learner once, and restrict its output to the finite witness through measurable evaluation cylinders.

Conditional on all auxiliary randomness, replacement of factor input row \(a\) changes no assembled row if \(a>L_i\), and exactly one assembled row if \(a\le L_i\). On overflow it changes none. Thus the simulator is replacement-\((\varepsilon,\delta)\)-DP on arbitrary, including nonrealizable, factor inputs, and privacy monotonicity with \(\varepsilon\le0.1\) makes it eligible for Block H. There is no privacy composition and no row reuse. Full Cartesian freedom supplies a global target for every realizable utility experiment, while global privacy itself did not need realizability.

When the factor input is iid from its drawn task and overflow does not occur, the assembled target, mixture sample, learner output, restricted vector, and factor risk are distributionally identical to the corresponding marginal of the ideal global product-prior experiment. Since risks lie in ([0,1]), the entire target-transfer residual is
\[
\left|\mathbb E R_i^{\rm trunc}-\mathbb E R_i^{\rm ideal}\right|
\le\Pr(\mathcal O_i)\le\eta_0.
\]
The first requested slot consumes row one once; an unused changed row is inert; and the overflow branch is input-independent before any unavailable row is requested. These entry traces make the privacy and coupling sources nonvacuous.

### Block M: common product-prior tensorization (`step_013`)

Draw \(t_i\sim\nu_i\) independently for every \(i\in H\), and fix arbitrary realizable tasks on \(i\notin H\). Do this before drawing the full-product target, mixture sample, or learner randomness. Put mass \(\pi_i\) on the \(i\)-th task distribution. For each active \(i\), Block L is an eligible factor learner; Block J gives truncated average factor risk \(>1/8\), and Block K's exact same-target coupling gives ideal factor risk \(>1/8-\eta_0\).

These inequalities are marginals of one common prior-before-learner experiment. Arbitrary joint dependence in the global output is irrelevant, because finite linearity and Block A's exact risk identity give
\[
\begin{aligned}
\mathbb E R_D(h_{A_n},c)
&=\sum_i\pi_i\mathbb E R_{D_i}(h_{A_n}|_{X_i},c_i)\\
&>\sum_{i\in H}\pi_i(1/8-\eta_0)\\
&=(1-w_L)(1/8-\eta_0).
\end{aligned}
\]
Low-factor risk is merely discarded as nonnegative. Each overflow residual is weighted once; no independence of outputs and no union bound over overflow events is asserted.

### Block N: strict candidate-wise PAC contradiction (`step_014`)

For every fixed task, the assumed PAC guarantee gives the bounded-loss ceiling
\[
\mathbb E R_D
\le\frac{15}{16}\frac1{16}+\frac1{16}
=\frac{31}{256}.
\]
It therefore gives the same ceiling after averaging the finite product prior. Under \(n<c_{\rm low}M\), Blocks I and M instead give
\[
\mathbb E R_D
>\frac{127}{128}\left(\frac18-\frac3{2048}\right)
=\frac{32131}{262144}
>\frac{31}{256},
\]
where the final gap is \(387/262144>0\). This contradiction proves \(n\ge c_{\rm low}M\). Since the prior is finite, some deterministic atom has expected risk \(>31/256\); if its failure probability at risk threshold \(1/16\) were at most \(1/16\), boundedness would restore the ceiling. Hence that atom satisfies
\[
\Pr[R_D(h_{A_n(S)},c)>1/16]>1/16.
\]
The output is the exact PAC failure event, not an expectation-only surrogate.

### Block O: assembly, conditional specialization, and baselines (`step_015`)

Blocks C, E, and F give the measurable global upper kernel, all-input privacy, arbitrary-distribution PAC event, and public quota rate. Block N gives the unrestricted lower theorem at each fixed candidate satisfying its primitive delta condition. Their object, norm, privacy, probability, and horizon conventions agree, but their delta scopes remain separate. The upper theorem ensures \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\) is finite. Only after checking both candidate-delta conjuncts at this exact \(n_*\) may Block N be substituted, yielding the conditional sandwich. Failure of that check leaves the upper theorem intact and creates no lower claim.

For \(k=1\), the routed upper kernel is the sole quotient-first Yan kernel, \(J_1=n\ge q_1\), and no padding utility is used. On the lower side, bounded \(r_1\) is paid by the ordinary VC floor; high \(r_1\) activates the unrestricted ALMM wrapper; \(L_1=n\le m_{n,1}\), so the one-use simulation has zero overflow. Thus both original baselines survive. The assembly does not extend the theorem beyond the declared conditional subclass, and the full arbitrary finite-Littlestone-class problem remains open.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| A. Quotient/product/risk | Common exact object convention and structural identities | `step_001` | None | `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation` | Prove LD product upper bound and countable risk measurability in full detail; `step-local` |
| B. Totalized Yan kernel | Factor kernel, all-input DP, fixed-confidence utility, exact quota | `step_002` | A | Factor structural assumptions and `assump:global-privacy-range` | Reconstruct and discharge every Yan/BNSV component, totalized adjacency branch, \(t/6,t/12\) closure, and quota; `step-local` |
| C. Routed privacy | Global measurable kernel and replacement DP | `step_003` | A, B | Product, quotient measurability, privacy range | Formal prefix-multiset coupling and joint-event composition; `step-local` |
| D. Weighted shortage | Arbitrary-mass padding charge | `step_004` | A and quota definitions | Product blocks only | Exact Chernoff constant; `step-local` |
| E. Weighted bad mass | Exact upper PAC event | `step_005` | B, D, A risk identity | Upper primitive assumptions | Conditional-prefix iid and event measurability; `step-local` |
| F. Quota rate | Public explicit-rate bridge | `step_006` | A and exact quotas | VC-one and privacy range | Ceiling/log arithmetic; `step-local` |
| G. Additive VC floor | Pays factor count and bounded-complexity lower branch | `step_007` | A | Canonical nonconstant product | Small-\(k\) and random-target averaging details; `step-local` |
| H. ALMM wrapper | Unrestricted high-\(r_i\) expected-risk source | `step_008` | A | VC-one, privacy range | Exact primary-source statements, resampling constants, finite task universe, log-star translation; `step-local` |
| I. Candidate calibration | Active set, low-mass bound, exact factor eligibility | `step_009` | A, G, H | `assump:candidate-delta-budget` at fixed \(n\) | Simultaneous strict constant choices; `step-local` |
| J. Finite hard priors | Prior-before-learner quantifier | `step_010` | A, H, I | No new theorem assumption | Exact finite restriction/extension and minimax polytope; `step-local` |
| K. Overflow | Sole truncated/ideal coupling residual | `step_011` | I and exact budgets | No new theorem assumption | Two-regime Chernoff derivative and strict numerical comparison; `step-local` |
| L. One-use simulator | Transfers arbitrary global learner to each active factor | `step_012` | A, I, J, K | Product, quotient measurability, privacy range, candidate condition through dependencies | Total kernel measurability, all-input adjacency, exact common-experiment coupling; `step-local` |
| M. Tensorization | Same-experiment global expected-risk floor | `step_013` | A, I--L | Canonical product | Align every marginal with one product prior; `step-local` |
| N. PAC contradiction | Deterministic lower witness and \(n\ge c_{\rm low}M\) | `step_014` | G, I, M | Candidate condition | Strict rational/event conversion; `step-local` |
| O. Exact assembly | Upper, candidate lower, \(n_*\) specialization, baselines | `step_015` | A, C, E, F, N | Primitive assumptions on their exact scopes | Quantifier separation and baseline trace; `step-local` |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | Block A | Feeds every object/risk consumer | Bijection, VC/LD identities, scalar comparisons, standard-Borel and risk measurability | Zero quotient-to-raw residual; \(k=1\) exact |
| `step_002` | Block B | Feeds C, E, O | Totalization, kernel measurability, replacement histogram DP, core VC, fixed-confidence closure, quota | Yan final privacy/confidence statements are nonoutputs |
| `step_003` | Block C | Feeds O | Measurable prefix/padding and support-two composition | Handles same/cross factor and arbitrary labels |
| `step_004` | Block D | Feeds E | Weighted light/heavy occupancy | No balance and no factor union bound |
| `step_005` | Block E | Feeds O | Conditional iid prefix, bad-event measurability, Markov closure | Exact risk slack \(3/64\) |
| `step_006` | Block F | Feeds O | Every ceiling and logarithmic absorption | No cardinality term |
| `step_007` | Block G | Feeds I, N | Random-target unseen-label lower bound | Applies to improper nonprivate learners too |
| `step_008` | Block H | Feeds I, J | Proof-derived ALMM wrapper and BNSV resampling | Printed ALMM PAC corollary is a nonoutput |
| `step_009` | Block I | Feeds J--N | \(R_0,c_{\rm low}\), low mass, floor/ceiling, delta check | Discharges all-low branch |
| `step_010` | Block J | Feeds L, M | Finite task universe, DP polytope, strict minimax | Prior fixed before simulator/learner |
| `step_011` | Block K | Feeds L, M | Optimized binomial bound | Marginal charge; zero at \(k=1\) |
| `step_012` | Block L | Feeds M | Total one-use learner, all-input privacy, ideal coupling | No row reuse or privacy composition |
| `step_013` | Block M | Feeds N | One common product-prior experiment and exact risk sum | Output independence not needed |
| `step_014` | Block N | Feeds O | Exact rational contradiction and deterministic atom | Correct `\frac` witness used despite sketch rendering defect |
| `step_015` | Block O | Final theorem | Scope separation, candidate substitution, two baselines | Retains conditional progress type and full-source gap |

## Dependency And Assumption Audit

The graph is acyclic and follows the accepted dependencies exactly. No theorem-facing generated condition is promoted to an assumption.

| Condition or object | Provenance class | Producer / discharge | Consumers | Audit result |
| ------------------- | ---------------- | -------------------- | --------- | ------------ |
| Canonical finite full product | Primitive condition | `assump:canonical-product` | A, C, G, L, M, O | Legal theorem assumption |
| Nonconstant VC-one finite-LD factors | Primitive condition | `assump:vc-one-factors` | A, B, F, G, H | Legal theorem assumption |
| Countable measurable evaluation quotient | Primitive condition | `assump:countably-coded-evaluation` | A, B, C, J, L | Legal theorem assumption; it does not assume a selector or kernel |
| \(0<\varepsilon\le0.1,0<\delta<1\) | Primitive condition | `assump:global-privacy-range` | B, C, F, H, L, O | Legal theorem assumption |
| Candidate delta inequalities at fixed \(n\) | Primitive numerical condition | `assump:candidate-delta-budget` | H through I; N; conditional O | Legal only for the fixed lower candidate; both conjuncts retained |
| Quotient dimensions/product identities/risk map | Derived | A / `step_001` | All later structural consumers | Producer precedes consumers |
| Total factor kernel, privacy, utility | Derived | B / `step_002` | C, E, O | Not assumed; utility only unpadded |
| \(W_{\rm short}\), \(\mathsf B_i\), \(W_{\rm bad}\) | Derived | D, E / `step_004`,`step_005` | E, O | No generated event is theorem-facing before proof |
| Contradiction hypothesis \(n<c_{\rm low}M\) | Local conditional hypothesis | Introduced and discharged in I--N | I--N only | Not exported as theorem assumption |
| Factor expected-risk premise \(\le1/8\) | Local conditional premise inside wrapper | H | Contrapositive in H, J | Not a final theorem assumption |
| Active set, low mass, eligibility | Derived | I / `step_009` | J--N | Depends on G/H and local contradiction; no circular use |
| Hard priors | Derived | J / `step_010` | L, M | Fixed before all consumers |
| Overflow and ideal coupling | Derived | K, L / `step_011`,`step_012` | M | Exact sole residual, produced first |
| Product-prior floor and deterministic witness | Derived | M, N / `step_013`,`step_014` | N, O | Same target/risk/candidate throughout |
| Candidate condition at \(n_*\) | Primitive condition checked at specialization | O / `step_015` | Conditional sandwich only | If absent, no lower specialization is claimed |

There is no missing assumption-provenance bridge. The remaining proof obligations concern derivation of accepted outputs, not permission to assume them.

## Citation And Tool Audit

| Source / tool | Stable identity and exact role | Current objects and convention match | Hypotheses to discharge | Needed conclusion and known nonoutputs | Remaining local check / affected steps |
| ------------- | ------------------------------ | ------------------------------------ | ----------------------- | -------------------------------------- | -------------------------------------- |
| Yan VC-one learner components | Chao Yan, arXiv:2505.06581v2: `thm:learn vc` (survey lines 233--237), threshold-dimension comparison (251--256), `thm:private median` (304--307), `def: k-bounded` and `lem:choosing mechanism` (310--325), transform/tree/algorithm (329--525), order/final comparison (534--583) | Binary quotient class \(\bar C_i\), VC one, LD \(d_i\), finite depth domain, reference XOR, fixed-size replacement | Block A dimensions; totalized arbitrary-input branches; exact privacy allocation; positive \(TD+1\); fixed internal confidence | Supplies only the internal tree/median/choosing/comparison ingredients. `thm:privacy-OPTPrivateLearner` (527--532), unlabeled block-good claim (554--563), and raw corollary/final theorem (585--599) are explicitly not the required all-input kernel, core marginal, or fixed-confidence wrapper | Restate exact source statements and prove current-notation wrapper; `step_002` |
| BNSV choosing mechanism | Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, `alg:choosing`, `lem:CMprivacy`, `lem:CMutility` (survey lines 625--676; proofs 1947--2053) | Finite positive histogram support; replacement compared through common deletion; one leaving and one entering summary | Verify score orientation, bounded-growth parameter, sentinel/empty support, and all events | Replacement-private choosing and utility gap, not the whole Yan factor kernel | Exact likelihood-ratio calculation; `step_002` |
| BNSV with-replacement resampling | Same paper, Lemma 5.9 | Sample \(m\) rows with replacement from fixed database of size \(N\in[9m,10m]\) | Original factor learner is replacement-\((0.1,\delta)\)-DP; constants and adjacency match | \(\widetilde\varepsilon=0.6m/N\), \(\widetilde\delta=e^{0.6m/N}(4m/N)\delta\) | Verify exact statement normalization and delta conversion; `step_008` |
| ALMM lower proof path | Alon--Livni--Malliaris--Moran, arXiv:1806.00949v3: `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD` | Binary finite threshold witness, unrestricted improper output restricted to finite evaluations, replacement DP, uniform row-counting risk | Resampled privacy parameters; empirical delta scale; expected empirical accuracy \(7/8\); log-star shifts; finite witness independent of learner | Proof-derived expected-risk floor and finite task universe. The printed PAC corollary is a known nonoutput for the prior-ready wrapper | Exact label/statement audit and constant extraction; `step_008`, then `step_010` |
| Countable-product standard-Borel fact | Standard measurable-space fact | \(Q_i\) finite/countable discrete, \(\mathcal H_i=\{0,1\}^{Q_i}\) with evaluation sigma-field | Countability only | Standard-Borel output and measurable finite products | State/prove via countable product of finite discrete spaces; `step_001` |
| Online product/VC facts | Direct current-notation derivation; factorwise SOA and disjoint product | Whole-domain disjoint full product; binary VC/LD definitions | Full Cartesian surjectivity and finite \(k\) | \(\operatorname{VC}(C)=k\), \(\operatorname{LD}(C)=\sum_i d_i\) | Give both tree concatenation and prediction upper bound; `step_001` |
| Basic DP composition/postprocessing | Standard Markov-kernel theorem | At most two changed factor kernels, standard-Borel tuple output | Each factor all-input replacement-private; measurable product kernel | Global \((\varepsilon,\delta)\)-DP for joint events | Do not reduce to rectangles only; `step_003` |
| Chernoff, Hoeffding, Markov | Standard finite-probability tools, restated at use | Binomial counts, independent Yan blocks, nonnegative weighted masses | Independence only where Hoeffding uses disjoint iid blocks; no count independence needed in D/E | Shortage, bad-block count, overflow, and final Markov bounds | Track strict thresholds and integer rounding; `step_002`, `step_004`, `step_005`, `step_011` |
| Compactness and finite minimax | Finite-dimensional compact-polytope and von Neumann theorem | All finite labeled inputs and output vectors; affine expected risks; all approximate-DP subset inequalities | Exact restriction/extension between finite and full learners | One learner-independent finite hard prior with strict \(>1/8\) average | Prove compactness, strict minimum, and equality of feasible games; `step_010` |

No cited result is treated as proof evidence merely by title. Every theorem-critical source still requires a local restatement, object mapping, assumption discharge, convention check, conclusion-interface check, and known-nonoutput boundary.

## Quantitative Dependence Audit

### Upper clause

- Exposed variables: \(k,(d_i,s_i,q_i,Q_i)_i,M,Q_{\oplus},n,\varepsilon,\delta\).
- Fixed numerical quantities: \(\alpha_0=\beta_0=1/16\), \(\alpha_{\rm fac}=1/64\), \(\beta_{\rm fac}=1/4096\), factor privacy split, logarithm conventions, and universal \(K_Y\).
- Hidden constants: \(C_{\rm up},C_{\rm quota}\) are universal and may depend only on those fixed conventions. They may not depend on any space, class, factor count/dimension/cardinality, quotient cardinality, distribution, block mass, sample size, or privacy parameter.
- Probability mode: privacy is pointwise over adjacent datasets and all measurable output events; utility is high probability over the iid sample and learner randomness.
- Horizon mode: one fixed sample size. There is no all-time, asymptotic, or uniform-horizon upgrade.
- Metric: exact distributional binary risk.
- Public bridge: every ceiling adds exactly one, producing \(+k\); \(k\le M/2\) is explicitly dominated at the same public scale. The upper PAC bridge uses \(128Q_{\oplus}/n+e^{-16}+1/4096<3/1024\) and Markov at \(3/64\).
- Forbidden hidden terms: no \(|C_i|,|Q_i|\), finite-support, balance, properness, or computational term appears.

### Candidate-wise lower clause

- Exposed variables: \(k,(d_i,r_i,s_i,m_{n,i})_i,M,n,\varepsilon,\delta,(\pi_i)_i,a_{\rm VC},a_{\rm L},c_\delta,R_0,w_L,\eta_0\).
- Fixed quantities: one candidate \(n\), the PAC constants, logarithm conventions, and universal source constants.
- Hidden constants: \(c_{\rm low}\) is universal and independent of the class, learner, task priors, candidate, and privacy parameters.
- Probability mode: an impossibility theorem; intermediate expected-risk inequalities are finite prior averages and are converted to one deterministic strict PAC-failure event.
- Horizon mode: exactly one candidate. The delta condition is not made uniform in candidates.
- Metric: exact factor/global distributional binary risk.
- Residuals: low-factor mass \(w_L<1/128\) and marginal overflow \(\eta_0<3/2048\). Both are charged once in exact risk. Their combined floor is compared by the exact rational inequality, not asymptotic notation.
- Delta use: each factor-budget conjunct is checked at the exact \(m_{n,i}\); the first \(1/(n\log(n+1))\) conjunct is retained in the theorem even if not consumed by the factor wrapper.

### Conditional specialization and baseline invariance

- The value \(n_*\) is fixed after the upper theorem guarantees finiteness. Both candidate-delta conjuncts are then checked at that value before invoking the lower theorem.
- If the check fails, there is no claimed lower sample-complexity characterization.
- Upper \(k=1\): \(J_1=n\ge q_1\), so padding disappears and the same quotient-first Yan quota order is retained.
- Lower \(k=1\): the low-\(r_1\) branch is paid by VC, the high-\(r_1\) branch uses the unrestricted ALMM wrapper, and \(L_1=n\le m_{n,1}\) makes overflow exactly zero.
- The theorem remains a `conditional` subclass result. It does not identify \(\operatorname{VC}(C)\), \(\operatorname{LD}(C)\), \(\log^*\operatorname{LD}(C)\), and \(\log|C|\), and it does not close the unrestricted full-source gap.

## Scope And Closure Certificate

Every scope below is finite-sample or fixed-candidate. There is no all-time, recursive, or limiting theorem claim. Where several terms are accumulated, the row states the exact finite composition, weighted sum, or residual budget rather than only naming a closure category.

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------------------------------ | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| A: quotient/product/dimension/risk certificate | Structural equality, support, and common theorem-object interface | All \(k<\infty\), every allowed class and arbitrary \(D\) | \(C_i\leftrightarrow\bar C_i\); exact VC/LD identities; \(R_D=\sum_{i,q}D(\kappa_i^{-1}q)\mathbf1_{\rm error}\) | Full Cartesian freedom, evaluation equivalence, countable measurable cells | Collisions, repeated points, infinite \(C_i\), zero block mass | Exact finite factor sums and countable nonnegative cell sums; no adverse accumulated defect | Algebraic coupling and structural upper/lower comparison | Primitive `assump:canonical-product`, `assump:vc-one-factors`, `assump:countably-coded-evaluation`; \(k=1,d_i=1\), finite/countable \(Q_i\) included | Source gives label-pattern, tree, product-support, and measurable-cell content needed by the claim | Quotient tuple to decoded raw hypothesis in exact \(R_D\); residual identically zero | step-local | Primitive assumptions produce A before B, F--I, M, O consume it | N/A: static structure, not a generated transition | Pullback/tree realizability are equivalences; product SOA gives LD upper bound; monotone cell sums give measurability | Three structural assumptions | Dimensions, standard-Borel output, risk map | Equivalent raw points, countably infinite quotients, and \(\rho_i=0\) pass | Without full product, additivity/tensorization can fail; without countable cells, kernel/risk measurability can fail |
| B: totalized Yan factor kernel | Generated kernel, all-input DP, fixed-confidence utility, rate specialization | One \(q_i\)-sample; privacy on all inputs; utility only realizable and unpadded | Histogram \(q'-q=\mathbf1_v-\mathbf1_u\); \(<t/12\) bad cores; median sides \(\ge t/6\); selected score \(\ge t/12\); risk \(\le1/64\) except \(1/4096\) | Finite depth, positive \(TD+1\), private median, bounded-growth choosing, VC-one core indicators | Invalid/empty branches, sentinels, leaving/entering summaries, private failures, bad blocks, ceilings | Finite internal privacy costs charged once; independent block defects counted once; no horizon/cross-factor accumulation | Algebraic coupling, finite reserve/ledger, structural comparison | Yan internal labels, BNSV choosing, direct countable/core/confidence wrappers; padding excluded from utility | Sources contain required positive mass, score gap, and core-complexity control | Reference XOR and quotient pullback have zero residual unpadded; padding is charged later | step-local | A and fixed source components precede B; B precedes C/E | Invalid/empty input reaches fixed law before output and stays in adjacency proof; realizable input activates source before utility | \(t/6-t/12>0\); fewer than \(t/12\) bad contributors leave a good witness; failures sum to \(1/4096\); \(K_Y\) dominates threshold | Structural/privacy assumptions and fixed enumeration/reference | Factor kernel, DP, utility | \(d_i=1\), constant cells, countable \(Q_i\), nonrealizable neighbor, empty support pass | A fallback outside privacy or missing good-core witness invalidates export |
| C: routed global privacy | Measurable kernel and privacy closure | One fixed-size global replacement; arbitrary labels and tuple events | At most two factor multisets change, each by one replacement | Disjoint routing and symmetrized prefixes | Prefix shifts, padding/full transitions, same/cross-block moves, joint events | At most two costs added once; unchanged factors couple identically; independent of \(k\) | Algebraic coupling and finite composition | Direct routing, B kernels, standard Markov-kernel composition | Support-two source exactly matches replacement-DP claim | Tuple decoding is measurable postprocessing; zero privacy/risk residual | step-local | B precedes C; C does not assume global privacy | First cross-block move makes one leaving and one entering change; both factor sources already active | \((\varepsilon/2+\varepsilon/2,\delta/2+\delta/2)=(\varepsilon,\delta)\) | Product/measurability/privacy assumptions | Routed prefixes and tuple kernel | Outside-prefix replacement, shortage transition, arbitrary labels, \(k=1\) pass | Three factors or group distance \(>1\) would break composition |
| D: weighted shortage | Generated arbitrary-mass occupancy control | One iid sample, every mass vector | \(\mathbb EW_{\rm short}\le128Q_{\oplus}/n+e^{-16}\) | Light total-mass budget and heavy binomial exponent | Tiny/zero masses, many factors, multinomial dependence | Each shortage weighted and charged once; no union bound | Reserve/ledger under fixed scope and structural upper comparison | Direct binomial calculation; \(\rho_i=0\) exact | Source controls risk mass, not merely factor count | \(W_{\rm short}\) is exact padded-factor risk mass | step-local | Counts/quotas produce D before E | N/A: one-shot sample | Light mass \(<128Q/n\); heavy weighted tail \(\le e^{-16}\) | Product blocks, iid sample, quotas | \(W_{\rm short}\) bound | Zero/tiny mass, dominant block, many light factors, \(k=1\) pass | All-quota or unweighted union bounds introduce forbidden balance/\(k\) costs |
| E: weighted bad mass and PAC event | Generated global utility closure | One fixed \(n\), arbitrary target/distribution | \(\mathbb EW_{\rm bad}\le128Q/n+e^{-16}+1/4096\); \(R_D\le1/64+W_{\rm bad}\) | Convex exact risk and slack \(3/64\) | Shortage, factor failure, correlated outputs | Finite nonnegative weighted sum; each defect once; one Markov conversion | Reserve/ledger and structural upper comparison | B utility, D shortage, A risk, conditional iid, Markov | Sources control exact bad risk mass and event scale | Same target, distribution, decoded output, risk; all residuals inside \(W_{\rm bad}\) | step-local | B/D precede E; E precedes O | \(W_{\rm bad}=0\) already succeeds; zero-mass event empty | Choose \(C_{\rm up}>128/\gamma\); expectation \(<3/1024\), Markov at \(3/64\) | Upper primitive assumptions | Bad events/mass/PAC certificate | Infinite support, one dominant factor, threshold equality, correlated outputs pass | Uncharged padding/failure destroys risk comparison |
| F: public quota rate | Quantitative specialization and ceiling absorption | Deterministic upper parameters | \(Q\le(K_YM/\varepsilon)L^2+k\), \(L=\log(eM/(\varepsilon\delta))\) | \(\sum s_i=M\), \(s_i\le M\), \(M\ge2k\) | Heterogeneous logs and one ceiling per factor | Ceiling errors sum to \(k\), absorbed once | Structural upper comparison | Direct arithmetic from definitions and A | Monotonicity and positive scale match the public claim | Same \(Q_{\oplus}\); sole residual \(k\) dominated at target scale | step-local | A/quotas precede F; O consumes | N/A: deterministic | \(k\le M/2\le\frac12(M/\varepsilon)L^2\) | VC-one/privacy assumptions and quota | Public rate | All \(d_i=1\), heterogeneous \(s_i\), \(k=1\), \(\delta\uparrow1\) pass | Unabsorbed \(k\) creates hidden factor-count dependence |
| G: additive VC floor | Structural lower source and factor-count control | One fixed candidate; any randomized improper learner | PAC implies \(n\ge a_{\rm VC}k\) | One unseen fair target bit per factor | Collisions, randomness, small \(k\) | One expectation over \(k\) points; collisions help | Structural lower comparison | A product witness and direct random-target proof | Full product supplies exact independent label support | Hard task is in exact class/risk; zero residual | step-local | A precedes G; G precedes I/N | N/A: one-shot; \(k=1,2\) direct | \(n<k/2\) gives risk \(>1/4>31/256\) | Canonical nonconstant product | VC certificate | Privacy absent, repeats, improper output, small \(k\) pass | Without product labels, additive hardness can fail |
| H: ALMM expected-risk wrapper | Structural high-\(r_i\) lower source | One \(m\ge8\), one candidate delta scale | Expected risk \(\le1/8\) on all tasks implies \(m\ge a_{\rm L}r_i\); strict contrapositive | Finite Shelah threshold support and ALMM probability jump | Resampling inflation, \(N\)-rounding, log-star shifts, improper output, low \(d_i\) | One finite resampling; defects absorbed once into universal constants | Structural lower comparison and algebraic coupling | ALMM labeled proof path plus BNSV Lemma 5.9; low \(r_i\) routed to G | Expected empirical accuracy and threshold support have required lower content | Uniform-database population risk equals empirical loss; finite evaluation restriction zero residual | step-local | Source/A precede H; H precedes I/J | Privacy remains active on nonrealizable neighbors; \(m=8\) included | \(\widetilde\varepsilon\le1/15\), \(\widetilde\delta<\delta\), shrunken \(c_\delta\) discharges scale | VC-one/privacy assumptions and candidate cap when invoked | Factor floor and finite task universe | \(d_i=1\) inactive, smaller epsilon, repeats, infinite output pass | Without delta cap or finite witness, high-factor export fails |
| I: active-set calibration | Generated eligibility, low mass, exact budgets | One candidate under local \(n<c_{\rm low}M\) | \(w_L<1/128\), \(m_{n,i}<a_{\rm L}r_i\), factor delta cap | G's \(n\ge a_{\rm VC}k\) and high \(r_i\) | \(+2,+1,8\), all-low branch | One finite partition; low mass charged once | Structural upper/lower comparison | G/H constants and direct arithmetic; all-low branch contradicted | VC controls count; high \(r_i\) supplies margin | Exact weights/budgets; \(w_L\) at final risk scale | step-local | G/H precede I; I precedes priors/simulators | If \(H=\varnothing\), \(w_L=1\) contradicts derived bound before consumption | \(R_0,c_{\rm low}\) make all strict inequalities simultaneous | Candidate condition plus G/H | \(H,w_L,\) eligibility | Threshold equality, one high factor, \(n=1\), delta equality pass | Missing VC floor permits unsupported low mass |
| J: learner-independent priors | Generated prior-before-learner interface | One finite compact game per active factor | \(\min_K\max_tL(K,t)>1/8=\max_\nu\min_K\mathbb E_\nu L(K,t)\) | Strict H floor on every feasible finite kernel | Infinite ambient objects, nonrealizable privacy rows, adaptive tasks | One finite game and one minimax exchange | Structural lower comparison and algebraic coupling | H finite tasks, A quotient extension, I eligibility, finite minimax | Strict source lower bound plus compactness supplies uniform margin | Retraction/extension preserve witness task/risk exactly | step-local | H/I fix game before J; J fixes prior before L/M | All nonrealizable rows/events included before tasks | Exact game equivalence; strict compact minimum survives minimax | Accepted A/H/I controls | Priors \(\nu_i\) | Infinite \(X_i,C_i\), conflicting labels, arbitrary vectors pass | Learner-dependent hard tasks cannot tensorize |
| K: overflow | Generated same-target coupling residual | One binomial marginal per factor/candidate | \(\Pr[L_i>m_{n,i}]\le\eta_0=e^7(2/9)^9<3/2048\) | Factor-four buffer and floor eight | Small/large means, integer rounding | Each overflow weighted once; no union bound | Structural upper comparison | Direct optimized Chernoff; zero mean and \(k=1\) included | Source controls exact insufficient-row event | Overflow indicator bounds exact risk difference; no other residual | step-local | Slots/budgets precede K; K precedes L/M | No slot reads no row; \(k=1\) has \(L_1=n\le m\) | Two exponent regimes meet at \(\mu=2,t=9\) | Exact weights/budgets | \(\mathcal O_i,\eta_0\) | \(\mu=0,2,\infty\), \(n=1\), ceiling, \(k=1\) pass | Larger persistent overflow consumes final slack |
| L: one-use hidden-factor learner | DP reduction and exact experiment bridge | One global call per factor simulator/candidate | One input replacement changes zero/one global row; off overflow identity; residual \(\le\eta_0\) | Each input row used at most once and full-product targets | Reuse, unused rows, overflow, nonrealizable neighbors, joint output | No privacy composition; one bounded marginal residual | Algebraic coupling and stopping/conditioning | Primitive product/measurability plus I/J/K; overflow stops before reading | One-use has exact adjacency; product has exact target support | Truncated to ideal marginal in exact risk; equality off overflow and residual \(\eta_0\) | step-local | I/J/K precede L; privacy does not assume utility; L precedes M | First slot uses row one once; unused change inert; overflow ignores input | Conditional replacement distance \(\le1\); disagreement charged by \(\Pr\mathcal O_i\) | Product/measurability/privacy assumptions | Total factor kernel/coupling | No slots, used/unused row, overflow, arbitrary labels, one factor pass | Reuse causes group adjacency; reading overflow breaks totality/privacy |
| M: common-prior tensorization | Weighted expected global-risk closure | One finite product-prior experiment | \(\mathbb ER_D=\sum_i\pi_i\mathbb ER_i>(1-w_L)(1/8-\eta_0)\) | Full product and exact linear risk | Low factors, separate priors, correlated output, overflow | Finite nonnegative weighted sum; each residual once | Algebraic coupling and structural lower comparison | A risk, I mass, J priors, K/L coupling | Same-experiment marginal sources and product support match claim | Produced/consumed target, distribution, sample, output identical; only \(w_L,\eta_0\) | step-local | All producers precede M; M precedes N | One active factor reduces to its prior; zero active already contradicted | Priors drawn first; marginal identities coexist and sum | Canonical product plus I--L | Global expected-risk floor | One active, fixed low tasks, correlated output, zero low risk pass | Adaptive priors or different experiments invalidate sum |
| N: PAC contradiction | Exact lower closure and deterministic witness | One admissible candidate | Lower \(>32131/262144\), PAC \(\le31/256\), atom fails with probability \(>1/16\) | Rational slack \(387/262144\) | Threshold equality, prior averaging, event conversion | One finite expectation comparison; no candidate accumulation | Structural lower/upper comparison | G/I/M, bounded loss, finite averaging | Same exact risk/candidate on both sides | Residuals dominated before exact PAC event; no expectation surrogate | step-local | M lower floor precedes comparison; contradiction discharged | N/A: one-shot logic; equality included | \((127/128)(1/8-3/2048)>31/256\) | Candidate condition through dependencies | Deterministic \(c,D\) witness | \(n=1\), cap equality, risk equality, one active pass | Non-strict gap would not force strict failure atom |
| O: conditional assembly | Quantifier/mode specialization and theorem closure | Upper all allowed delta; lower one candidate; one \(n_*\) | Check both candidate conjuncts, then sandwich | Exact scope separation and sample-complexity definition | Dropped conjunct, uniform-candidate upgrade, object/mode drift | Finite logical composition; no probability/horizon accumulation | Explicitly conditional target and algebraic coupling | C/E/F/N and definition; failed check excludes lower | Each source exports exact object/mode for its clause | No assembly residual; all intermediates already bridged | step-local | All producers precede O; O makes no new condition | Failed check uses upper only; valid \(n_*\) activates both first | Lower substituted only after numerical check | Primitive assumptions on exact scopes | Theorem and conditional sandwich | Arbitrary upper delta, failed/valid check, \(k=1\) pass | Lower outside candidate scope overstates theorem |
| Upper \(k=1\) baseline | Baseline invariance | Sole factor at upper threshold | \(J_1=n\ge q_1\); route equals sole Yan call | B factor kernel and quotient pullback | Generic weighted relaxation | No cross-factor cost; shortage exactly zero | Algebraic coupling and structural comparison | B/C/E/F/O | Same mechanism/output/risk/quota order as baseline | Zero padding and quotient/reference residual | step-local | B produces before O states baseline | Sole factor active immediately | Direct factor utility gives global utility | Upper primitive assumptions | One-factor kernel/quota | \(d_1=1\), countable quotient, \(\delta\uparrow1\) pass | Finite-support/set-theoretic surrogate violates baseline |
| Lower \(k=1\) baseline | Baseline invariance | Sole factor, one admissible candidate | Low \(r_1\) by G; high \(r_1\) by H--N; \(L_1=n\le m_{n,1}\) | VC or unrestricted ALMM strict floor | Bounded \(r_1\), overflow, expectation intermediate | One factor/candidate; overflow exactly zero | Structural lower comparison and algebraic coupling | G--O and candidate condition | Sources retain unrestricted improper learner and exact risk | Zero overflow; expectation becomes strict PAC event | step-local | VC/ALMM precede simulator and N/O | High source active before conclusion; low branch already closed | \(\pi_1=1,m_{n,1}\ge4n\), exact event conversion | Lower primitive assumptions | One-factor failure witness | \(r_1=0,m=8\), nonrealizable neighbors, arbitrary output pass | Expectation-only/proper/positive-overflow surrogate weakens baseline |

## Exported Interface Feasibility

The status "valid at diagnostic granularity" means that accepted raw controls and the target-transfer relation are concrete enough for the named proof step. It is not proof evidence and does not discharge the local derivation.

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Quotient/product/dimension/risk certificate | A / `step_001`, primitive-source derivation | Three structural assumptions, evaluation equivalence, full product | Collisions controlled by common label pattern; countable sum by measurable cells; infinite cardinality irrelevant | Quotient tuple to decoded hypothesis in exact \(R_D\), equality and zero residual | Pattern/tree bijection, product SOA, monotone risk sums | Full Cartesian freedom and countable cells | B, F--I, M, O | Valid at diagnostic granularity; proof pending `step_001` |
| Total factor kernel, all-input \((\varepsilon/2,\delta/2)\)-DP, unpadded utility | B / `step_002`; Yan internal labels, BNSV choosing, direct wrappers | A, countable-discrete input, fixed root/reference/enumeration, median/choosing/core controls | Invalid branches, histogram replacement, private failures, bad cores controlled; padding deliberately uncontrolled for utility | XOR and quotient pullback zero residual; padding excluded and routed to D/E | Common-deletion histogram; \(t/6,t/12\) witness; failure sum; universal quota | Positive endpoint, median mass, choosing score, good core | C, E, O | Valid interface, high-risk proof pending `step_002`; no blanket source theorem |
| Routed measurable global \((\varepsilon,\delta)\)-DP kernel | C / `step_003` | Routing/padding maps, B kernels, symmetrization | Prefix shifts/cross moves controlled; joint events handled by kernel composition | Tuple decoding is deterministic postprocessing, zero residual | At most two factor replacements and costs | Disjoint routing support two | O | Valid; proof pending `step_003` |
| \(\mathbb EW_{\rm short}\le128Q/n+e^{-16}\) | D / `step_004` | Binomial counts, quotas, masses | Light mass/heavy shortage controlled separately; no balance defect | Exact padded risk mass | Light budget plus weighted Chernoff | Total mass and mean/quota separation | E | Valid; proof pending `step_004` |
| Bad mass, \(R_D\le1/64+W_{\rm bad}\), PAC event | E / `step_005` | B utility, D shortage, A risk | Shortage/factor failure controlled; output correlation harmless | Same target/output/risk; residuals exactly in \(W_{\rm bad}\) | Expected mass \(<3/1024\), Markov at \(3/64\) | Risk slack and \(C_{\rm up}>128/\gamma\) | O | Valid; proof pending `step_005` |
| Public quota rate | F / `step_006` | Exact \(q_i\), \(s_i\le M\), \(M\ge2k\), privacy range | Heterogeneous logs and ceiling sum controlled; no cardinality defect | Same \(Q_{\oplus}\); \(k\) dominated at theorem scale | Monotone sum and explicit absorption | Positive main logarithmic scale | O | Valid; proof pending `step_006` |
| Additive VC certificate \(n\ge a_{\rm VC}k\) | G / `step_007` | A product-shattered witness | Collisions/randomness controlled in expectation; small \(k\) direct | Exact hard task/global risk | Unseen fair labels \(>1/4\) versus PAC \(31/256\) | Strict risk gap | I, N | Valid; proof pending `step_007` |
| ALMM factor expected-risk floor and finite task universe | H / `step_008`; ALMM proof labels and BNSV Lemma 5.9 | A dimensions/evaluations, \(m\ge8\), delta cap, finite witness | Resampling inflation/rounding/log-star shifts controlled; low \(d\) excluded to G; no properness defect | Uniform database equates empirical/population loss; finite restriction zero residual | \(N\in[9m,10m]\), privacy formulas, shrunken \(c_\delta\) | Shelah support and probability jump | I, J | Valid source path, high-risk proof pending `step_008`; printed PAC corollary excluded |
| \(H,w_L<1/128,m_{n,i}<a_{\rm L}r_i\), delta eligibility | I / `step_009` | G/H constants, weights/budgets, local \(n<c_{\rm low}M\) | \(+2,+1,8\) controlled; low factors persist only as \(w_L\) | Exact weights/budgets; \(w_L\) below final scale | Explicit \(R_0,c_{\rm low}\) inequalities | VC count floor and high-\(r_i\) margin | J--N | Valid; proof pending `step_009` |
| Finite learner-independent prior \(\nu_i\) | J / `step_010` | H tasks, I eligibility, A extension, all finite DP inequalities | Infinite ambient objects/nonrealizable rows controlled by retraction/extension; adaptive choice removed | Exact witness risk, zero extension residual | Strict compact minimum and minimax | Strict ALMM \(>1/8\) floor | L, M | Valid interface, high-risk proof pending `step_010` |
| Overflow \(\eta_0<3/2048\), zero at \(k=1\) | K / `step_011` | Exact binomial slots and factor-four/floor-eight budget | Small/large means and rounding controlled; no union bound | Exact ideal/truncated disagreement; risk residual \(\le\eta_0\) | Optimized exponent and derivative | Buffer four and floor eight | L, M | Valid; proof pending `step_011` |
| Total all-input one-use learner and ideal coupling | L / `step_012` | I eligibility, J priors, K overflow, global learner, product | Reuse excluded; unused rows inert; overflow input-independent; arbitrary labels included | Equality of task/sample/output/risk off overflow; entire residual \(\eta_0\) | Replacement distance \(\le1\), one call, bounded disagreement | One-use insertion and product realizability | M | Valid interface, high-risk proof pending `step_012` |
| Common product-prior global floor | M / `step_013` | A risk, I mass, J priors, K/L coupling | Low mass/overflow controlled; output correlation not a defect | Same experiment; residuals exactly \(w_L,\eta_0\) | Weighted marginal sum \(>(1-w_L)(1/8-\eta_0)\) | Full target freedom and nonnegative linearity | N | Valid; proof pending `step_013` |
| Deterministic PAC-failure witness and lower theorem | N / `step_014` | G/I/M, bounded risk, finite prior | Averaging and threshold equality controlled; no cross-candidate term | Exact target/distribution/event; no expectation residual | \(32131/262144>31/256\), finite atom extraction | Rational gap \(387/262144\) | O | Valid; proof pending `step_014` |
| Conditional theorem and two baselines | O / `step_015` | C/E/F/N and sample-complexity definition | Scopes separated; failed candidate check leaves lower inactive; no full-source upgrade | Every intermediate already in exact theorem object/mode | Check candidate before substitution; direct \(k=1\) traces | Primitive scopes and zero baseline residuals | Final theorem | Valid; proof pending `step_015`; progress remains conditional |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Quotient bijections, dimensions, product identities, output space, exact risk | A / `step_001` | B, F--I, M, O | Primitive structural assumptions -> A -> consumers | derived | Valid; zero target residual |
| Total factor kernels and factor DP/utility | B / `step_002`, audited Yan/BNSV components plus wrappers | C, E, O | A + source components -> B -> consumers | derived | Valid diagnostic flow; source nonoutputs excluded |
| Routed global DP kernel | C / `step_003` | O upper/privacy/baseline | B -> C -> O | derived | Valid |
| \(W_{\rm short}\) and bound | D / `step_004` | E | iid sample/quotas -> D -> E | derived | Valid |
| \(\mathsf B_i,W_{\rm bad}\), risk comparison, PAC event | E / `step_005` | O upper | B + D + A -> E -> O | derived | Valid |
| Public quota bound | F / `step_006` | O public rate | A + quotas -> F -> O | derived | Valid |
| Additive VC floor | G / `step_007` | I, N | A -> G -> I/N | derived | Valid |
| ALMM expected-risk wrapper and finite task universe | H / `step_008`, labeled ALMM/BNSV path | I, J | A + sources -> H -> I/J | derived | Valid diagnostic flow; PAC corollary excluded |
| Active set, low mass, factor eligibility | I / `step_009` | J--N | G + H -> I -> consumers | derived | Valid; local contradiction discharged in N |
| Fixed finite priors \((\nu_i)\) | J / `step_010` | L, M | A + H + I -> J -> L/M | derived | Valid; priors precede learners |
| Overflow events and \(\eta_0\) | K / `step_011` | L, M | Slots/budgets -> K -> L/M | derived | Valid |
| One-use learners and identity coupling | L / `step_012` | M | I + J + K -> L -> M | derived | Valid; same-target bridge explicit |
| Common-prior global expected-risk floor | M / `step_013` | N | A + I--L -> M -> N | derived | Valid; one common experiment |
| Deterministic failure witness and lower theorem | N / `step_014` | O lower | G + I + M -> N -> O | derived | Valid |
| Conditional characterization and baselines | O / `step_015` | Final theorem | C + E + F + N -> O -> final | derived | Valid; no universal full-source conclusion |

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The upper is uniform over declared targets/distributions and upper-range \(\delta\); the lower is unrestricted but fixed-candidate. They meet only at an admissible \(n_*\).
- Yan source check: the printed final/privacy/confidence outputs do not match the required all-input replacement kernel. The accepted sketch already supplies a same-setting wrapper step, exact internal labels, countable-discrete convention, histogram relation, core source, \(t/6,t/12\) control, quota target, and invalid-input branches. This is hard but step-local; no new output or dependency is needed.
- ALMM source check: the printed PAC corollary is not prior-ready. The accepted sketch already assigns a proof-derived expected-risk wrapper with resampling formulas, finite Shelah witness, empirical/population identity, improper-output restriction, and candidate delta conversion. This is step-local.
- Residual-to-target check: quotient pullback, reference XOR, routing, finite witness restriction/extension, and off-overflow simulation are exact on the consumed target. Padding is weighted shortage; the only lower residuals are \(w_L\) and \(\eta_0\), both dominated before event conversion.
- Generated-condition check: every version/core/kernel/event/mass/eligibility/prior/overflow/simulator/coupling/witness output has an earlier producer and accepted dependency path. No final PAC conclusion proves its own source.
- Entry/boundary check: invalid Yan inputs reach predeclared laws inside privacy; the first cross-factor replacement has two one-step factor changes; the first hidden-factor slot uses one row once; unused rows and overflow are inert. The all-low branch closes before priors. At \(k=1\), upper shortage and lower overflow are zero.
- Mode/dependence check: no finite-support upper, quotient-output lower, output independence, balance, properness, uniform-candidate, asymptotic, or all-time upgrade appears. Hidden constants are universal.
- Null-source check: Cartesian freedom gives structural support; median/choosing/core controls give factor utility; VC excludes all-low mass; Shelah/ALMM gives high-factor strictness; factor-four budgets give overflow slack. No source vanishes on a consumed branch while its conclusion remains false.
- Same-setting repair plausibility: no repair is currently required. If a fixed wrapper cannot prove its accepted output, that would be evidence for sketch repair, not permission to weaken the theorem silently.
- Idea-level audit: no candidate theorem-contract obstruction is found. The theorem remains conditional, and arbitrary finite-Littlestone classes remain outside this branch.

## Global Gaps And Hard Steps

There is no unresolved global dependency or interface gap. The following local proof bottlenecks justify `PARTIAL_BLOCKED`.

1. `step_002`, totalized Yan wrapper (step-local). Required units: exact quotient-first algorithm reconstruction from audited labels; countable-discrete kernel lemma; all-input totalization/adjacency lemma for invalid, empty, and sentinel transitions; BNSV histogram privacy; core-indicator VC lemma; fixed-confidence proposition with the \(t/6,t/12\) ledger and three failure budgets; endpoint/log-star/quota proposition; factor-risk assembly. Witness: positive \(TD+1\), two-sided median mass, choosing gap, and a good core after fewer than \(t/12\) bad blocks. XOR/pullback is exact and padding excluded. Boundaries include \(d_i=1\), inconsistent input, countably infinite quotient, and sentinel replacement.
2. `step_008`, ALMM expected-risk wrapper (step-local). Required units: exact statements for lem:bun, lem:reduction, thm:main, thm:shelah, and thm:ADPimpliesLD; finite-evaluation improper-output mapping; BNSV Lemma 5.9 calculation with \(N\in[9m,10m]\); delta/log-star conversion; empirical/population identity; fixed finite task universe. Witness: finite Shelah support and ALMM probability jump. Boundaries include \(m=8\), repeats, nonrealizable neighbors, low \(d_i\) routed to G, and smaller epsilon.
3. `step_010`, strict finite minimax (step-local). Required units: finite game with all nonrealizable rows and DP subset inequalities; measurable restriction/retraction/extension; compact feasible polytope; strict attained minimum; finite minimax. Witness: H's pointwise strict \(>1/8\) floor on a fixed finite task set. Witness-task residual is zero, including for infinite ambient classes and arbitrary improper outputs.
4. `step_012` and `step_013`, one-use simulation and common experiment (step-local). Required units: total simulator measurability; conditional adjacency with zero/one changed global row; input-independent overflow; off-overflow equality of task/sample/output/risk; common product-prior probability space; marginal-to-global linearity. Witness: one-use insertion, full product, fixed priors, exact disjoint risk. Sole residual \(\eta_0\) is weighted once. Boundaries include no slot, unused changed row, overflow, joint output, one active factor, and \(k=1\).
5. Secondary local units in `step_001`, `step_003`--`step_007`, `step_009`, `step_011`, `step_014`, and `step_015` must formalize the displayed structural, measurable, concentration, constant, rational, and quantifier calculations. Their mechanisms and exports are exact; none is a global blocker.

All entries are proof work under unchanged claims, dependencies, assumptions, outputs, accumulation behavior, scope, metric, dependence, and baselines. None is a sketch/interface defect or idea/theorem-contract defect.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, rate objective, scope, or baseline. Every local unit and cited-result application above must be independently proved and accepted through the step workflow.

## Suggested Routing

None

Continue to the accepted proof steps. Prioritize `/proof-step step_002`, followed by `/proof-step step_008`, `/proof-step step_010`, and `/proof-step step_012`; prove the other accepted steps in dependency order. The branch remains a conditional subclass theorem and must not be reported as a universal solution to the full open problem.
