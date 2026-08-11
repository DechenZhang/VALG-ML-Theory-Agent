# Proof Sketch

## Formalized Setting

Fix \(k>1\), known \(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and \(\delta\in(0,1/2)\). The law \(D\) is otherwise unrestricted, has mean \(\mu\in[-\lambda,\lambda]\), and satisfies \(\mathbb E|X-\mu|^k\leq\sigma^k\). Use the exact two-block, one-bit, fixed-horizon protocol in `setting.md`: D2 coding localization on \(I_{\rm loc}\), and the independently precommitted shifted-dyadic digit bank on \(I_{\rm ref}\). All claims below use only `assump:parameter-domain`, `assump:moment-class`, and `assump:iid-independent-randomness`.

This is exact-goal mode. Localization success, recentered moments, stable shifts, digit inactivity, conditional variance, and concentration are derived outputs, not theorem assumptions.

## Formalized Goal

Prove that for each fixed \(k>1\) there are \(c_k,C_k>0\) and legal choices of all protocol design quantities such that the protocol is fully non-adaptive, uses exactly one bit from each of

\[
n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta)
\]

independent samples, and satisfies

\[
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta
\]

unconditionally over all samples and public randomness, in absolute value, with constants depending only on \(k\).

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Goal mode: exact unconditional full \(r_k\) theorem

## Proof Roadmap

Use the selected framework in `technical_survey.md`. ArXiv:2604.07796v2, Theorem 16, supplies a deterministic non-adaptive localization interval; a current-notation midpoint wrapper supplies the scalar \(c\). Four stable shifts give a cell margin at every dyadic scale, bounded uniform dithering exports exact digit differences, and those differences telescope. The important variance operation is to sum digit activation pathwise before taking the \(k\)-moment; separate worst-case bounds at each level would create a false extra level-count factor.

Conditional on the independent localization output, define

\[
\theta(c):=\mathbb E[Z_i(c)\mid c]=\mathbb E T_c(X).
\]

The exact same-target bridge is

\[
\mu-c=\theta(c)+\mathbb E R_0^c(X)+\mathbb E R_H^c(X).
\]

The two residual expectations are made at most \(\epsilon/4\) in total. A conditional median-of-means estimate of \(\theta(c)\), followed by a localization/refinement probability conversion, yields the unconditional theorem.

## Rate Objectives

- Objective type: fixed-horizon, structural-parameter explicit, confidence-explicit, three-regime sample-complexity bound.
- Exposed variables: \(k,\lambda,\sigma,\epsilon,\delta,H,W_{\rm f},W_{\rm c},s,q\).
- Hidden constants may depend on: fixed \(k\) only.
- Hidden constants may not depend on: \(\lambda,\sigma,\epsilon,\delta,D,c,J,H,N_{\rm loc},N_{\rm ref},q,s\).
- Fixed quantities: \(k\) is fixed when constants are selected; no asymptotic limit is used.
- Probability mode: unconditional high probability over all samples and protocol randomness. Intermediate refinement bounds are conditional on the independent value of \(c\), uniformly for every \(|c-\mu|\leq50\sigma\), and are converted unconditionally in `step_013`.
- Horizon mode: deterministic fixed horizon \(n=N_{\rm loc}+qs\); no stopping-time or horizon-uniform claim.
- Norm mode: absolute value on \(\mathbb R\).
- Required bridge or simplification obligations: prove
  \[
  \frac{V_k}{\epsilon^2}\lesssim_k
  \begin{cases}
  \sigma^2/\epsilon^2,&k>2,\\
  (\sigma^2/\epsilon^2)\log(\sigma/\epsilon),&k=2,\\
  (\sigma/\epsilon)^{k/(k-1)},&1<k<2,
  \end{cases}
  \]
  and explicitly absorb every ceiling, \(+1\), \(\log(4/\delta)\), and localization term into \(r_k\), including \(\lambda=\sigma\) and \(\epsilon=c_k\sigma\).
- Baseline invariance obligations: preserve the exact zero-displacement identities at \(x=c\): every centered digit, \(T_c(c)\), \(R_0^c(c)\), \(R_H^c(c)\), and the centered dither bit is zero. No \(O(h_j)\) surrogate may replace these identities.

## Assumption Provenance Objectives

1. `step_001` derives the interval and scalar localization event from D2 Theorem 16 after Lyapunov discharges its first-moment hypothesis.
2. `step_002` derives \(\mathbb E|X-c|^k\leq C_k^{\rm rec}\sigma^k\) on that generated event.
3. `step_003` derives scale ordering, group facts, and all normalizer bounds from known parameters and explicit \(k\)-only constants.
4. `step_004` derives stable-shift uniqueness, cell margins, and selector measurability for every real \(c\).
5. `step_005` derives bounded digits, measurable precommitted query sets, and exact dither first/second moment identities.
6. `step_006` derives the deterministic telescope and residual decomposition.
7. `step_007` derives digit inactivity, pathwise fine/coarse activation budgets, and top-residual support.
8. `step_008` derives the exact conditional mean and raw second moment of \(Z_i(c)\).
9. `step_009` and `step_010` derive the localized conditional variance certificate; `step_012` consumes it only after both pieces exist.
10. `step_011` derives the residual-to-\(\mu\) bias certificate.
11. `step_012` derives conditional median-of-means success; `step_013` converts it to an unconditional event.
12. `step_014` derives the deterministic sample allocation and exact \(r_k\) absorption certificate.

No generated event or realized estimator property is promoted to a theorem-facing assumption.

## Mechanism-Source And Boundary Stress

### Source localization wrapper

- Step ID: `step_001`
- Claim class: generated localization event and cited-result wrapper.
- Theorem role: supplies the actual center used by refinement and the additive localization cost.
- Mechanism source: Lau and Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2 (May 25, 2026), Theorem 16, source label `thm: alternative localization`, with Appendix `appendix: two-stage`.
- Source-to-claim adequacy: the source assumes \(\lambda\geq\sigma\), \(\eta\in(0,1/2)\), \(\mu\in[-\lambda,\lambda]\), independent samples, and \(\mathbb E|X-\mu|\leq\sigma\). Here \(\eta=\delta/4\), and Lyapunov plus `assump:moment-class` gives the first moment. In the nontrivial branch, enumerate the fixed set \(I_{\rm loc}\) by \(t=1,\ldots,\ell\), take degenerate \(R_{\rm loc}\), set \(\mathcal B_t=\{x:Q_t(x)=1\}\) for \(Q_t(x)=c_{b(x),t}\), and let \(\mathsf{Dec}_{\rm loc}\) be midpoint-of-enlarged-interval after deterministic nearest-neighbor tie breaking; in the trivial branch take \(I_{\rm loc}=\varnothing\) and the source interval \([-\lambda,\lambda]\). These are measurable clipped-bin unions fixed before sampling. The appendix proves \(|I|\leq100\sigma\), source success at least \(1-\eta\), and \(\ell=\lceil10000(\log N+\log(1/\eta))\rceil\) in the nontrivial branch. Known non-outputs are the scalar center before wrapping, a recentered \(k\)-moment, and any refinement guarantee; each is separately produced later.
- Residual-to-target adequacy: produced object \(I\), consumed object \(c\), target \(\mu\), metric absolute value; \(\mu\in I\) implies \(|c-\mu|\leq|I|/2\leq50\sigma\), with no remaining residual.
- Key positive/control term or structural source: the source's expected Hamming gap \(>0.05\ell\) between a safe anchor and every far bin.
- Opposing defect terms: samples outside the safe bins and Hamming fluctuations; the source controls them by Markov, Hoeffding, and a union bound.
- Closure/dominance/absorption relation: \(N\exp(-0.00125\ell)\leq\eta\).
- Accumulation behavior / scope compatibility: fixed finite Hamming sum; the finite union over \(N\) bins is paid by the explicit \(\log N\) term.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the source event is produced from primitive assumptions before every refinement consumer; path `step_001 -> step_002,step_008,...,step_013`.
- Entry-state / first-update stress result: if \(\lambda\leq10\sigma\), the source returns \([-\lambda,\lambda]\) without samples and the midpoint obeys \(|c-\mu|\leq10\sigma\).
- Baseline conclusion preserved: midpoint postprocessing preserves the source interval-containment guarantee rather than weakening it.
- Producer-consumer provenance: D2 produces \(I\); `step_001` produces \(c,\mathcal E_{\rm loc}\); all localized bounds list `step_001` as a dependency.
- Null or boundary regime tested: \(\lambda=\sigma\), degenerate source seed, boundary bins, and decoder ties.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without an \(O(\sigma)\) center, recentered moments and refinement tails are not uniform in \(\lambda\).
- Repair route if source is unsupported: `idea/theorem-contract defect`; source preflight supports it.

### Recentered moment

- Step ID: `step_002`
- Claim class: derived localized moment invariant.
- Theorem role: supplies the moment budget for coarse activation and the top residual.
- Mechanism source: direct primitive-source derivation under the exact central-moment convention.
- Source-to-claim adequacy: on \(\mathcal E_{\rm loc}\),
  \[
  |X-c|^k\leq2^{k-1}(|X-\mu|^k+|\mu-c|^k),
  \qquad
  C_k^{\rm rec}=2^{k-1}(1+50^k).
  \]
- Residual-to-target adequacy: this is a moment about the actual decoder center consumed by every digit, not a surrogate center.
- Key positive/control term or structural source: `assump:moment-class` and the generated \(50\sigma\) radius.
- Opposing defect terms: translation by \(c-\mu\), explicitly controlled above.
- Closure/dominance/absorption relation: direct two-term power inequality.
- Accumulation behavior / scope compatibility: one-shot bound, uniform over every localized \(c\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` produces localization first; no refinement conclusion is assumed.
- Entry-state / first-update stress result: at \(c=\mu\) the primitive central moment is recovered; at \(|c-\mu|=50\sigma\) the constant remains \(k\)-only.
- Baseline conclusion preserved: exact recentering at \(c=\mu\) adds no translation defect.
- Producer-consumer provenance: `step_001 -> step_002 -> step_010,step_011`.
- Null or boundary regime tested: \(D=\delta_\mu\) and maximal localization radius.
- Target conclusion false or theorem-critical obstruction present if source vanishes: rare tails can make coarse variance and top bias uncontrolled.
- Repair route if source is unsupported: blocker; the direct inequality supports it.

### Scale design and normalizers

- Step ID: `step_003`
- Claim class: quantitative specialization and finite multiscale budget.
- Theorem role: fixes legal \(k\)-only constants and exports the three normalizer regimes.
- Mechanism source: direct dyadic geometric-series calculation.
- Source-to-claim adequacy: set \(\gamma_k=1/8\), \(\overline C_k^{\rm tail}=(11/3)(8/3)^{k-1}C_k^{\rm rec}\), choose
  \[
  b_k\geq\max\{4,(8\overline C_k^{\rm tail})^{1/(k-1)}\},
  \qquad c_k\leq e^{-1}.
  \]
  Then \(h_0<\sigma\), \(H_*\leq H<2H_*\), and \(h_{J-1}=H/2\geq H_*/2>\sigma\), so both groups occur for theorem parameters. Moreover \(W_{\rm f}\leq2\), while
  \[
  W_{\rm c}\lesssim_k
  \begin{cases}
  1,&k>2,\\
  \log(\sigma/\epsilon),&k=2,\\
  (H/\sigma)^{2-k},&1<k<2.
  \end{cases}
  \]
- Residual-to-target adequacy: these are the exact normalizers in the \(p_j\) consumed by \(Z_i(c)\).
- Key positive/control term or structural source: dyadic ratio \(2\) and the sign of \(2-k\).
- Opposing defect terms: ceiling in \(J\), transition \(h_j=\sigma\), and potentially absent auxiliary groups.
- Closure/dominance/absorption relation: finite geometric sums and \(H<2H_*\). If a group is empty, its sum is absent and \(m\in\{1,2\}\) assigns all mass to existing groups.
- Accumulation behavior / scope compatibility: decreasing and summable for \(k>2\), exact finite count at \(k=2\), and last-term dominated for \(1<k<2\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: only known parameters and explicit constants are used; variance is not assumed.
- Entry-state / first-update stress result: at \(\epsilon=c_k\sigma\), \(\log(\sigma/\epsilon)\geq1\) and both theorem groups remain nonempty.
- Baseline conclusion preserved: N/A; no recovery specialization is modified.
- Producer-consumer provenance: `step_002 -> step_003 -> step_009,step_010,step_011,step_014`.
- Null or boundary regime tested: \(k=2\), \(h_j=\sigma\) assigned to fine, empty fine/coarse auxiliary cases, and \(\epsilon=c_k\sigma\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: an uncontrolled normalizer changes the target rate.
- Repair route if source is unsupported: blocker; the geometric calculation supports it.

### Stable shifts

- Step ID: `step_004`
- Claim class: structural uniqueness, cell margin, and decoder measurability.
- Theorem role: makes coarse digits locally inactive without changing a query.
- Mechanism source: direct partition of the unit circle by four half-open quarter arcs.
- Source-to-claim adequacy: for \(t=\{c/h_j\}\), the four conditions \(\{t-a\}\in[3/8,5/8)\), \(a\in\mathcal S\), partition \([0,1)\). The chosen cell gives left distance at least \(3h_j/8\), right distance strictly greater than \(3h_j/8\), and a Borel finite selector. Half-open endpoints fix grid boundaries.
- Residual-to-target adequacy: selected quantizers are centered at the actual D2 midpoint \(c\).
- Key positive/control term or structural source: quarter spacing and interval width \(1/4\).
- Opposing defect terms: fractional-part endpoints and exact grid boundaries.
- Closure/dominance/absorption relation: disjoint exact cover; no probabilistic slack.
- Accumulation behavior / scope compatibility: the same finite deterministic check applies at each \(j=0,\ldots,J\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: shift selection is a function of already produced \(c\), not an assumed inactivity event.
- Entry-state / first-update stress result: if \(c\) is on an unshifted boundary, exactly one quarter shift places it in the stable band before any digit is consumed.
- Baseline conclusion preserved: the same selected quantizer appears at both copies of \(c\), so centered terms vanish.
- Producer-consumer provenance: `step_004 -> step_005,step_006,step_007,step_008,step_011`.
- Null or boundary regime tested: every fractional-part endpoint and grid-boundary center.
- Target conclusion false or theorem-critical obstruction present if source vanishes: an arbitrarily small displacement can activate a coarse boundary digit.
- Repair route if source is unsupported: `idea/theorem-contract defect`; the partition supports it.

### Bounded dither

- Step ID: `step_005`
- Claim class: exact expectation and square mechanism for a bounded one-bit digit.
- Theorem role: exports an unbiased digit difference and its raw variance interface.
- Mechanism source: direct current-notation derivation for \(U\sim\operatorname{Unif}[-1,2]\); arXiv:2601.07074 is lineage only.
- Source-to-claim adequacy: floor bounds give \(-h_j<F_{j,a,b}(x)<2h_j\). For \(f_x=F(x)/h_j,f_c=F(c)/h_j\in(-1,2)\),
  \[
  \mathbb E_U[3h_j(\mathbf1\{f_x\geq U\}-\mathbf1\{f_c\geq U\})]=F(x)-F(c),
  \]
  \[
  \mathbb E_U[(3h_j(\mathbf1\{f_x\geq U\}-\mathbf1\{f_c\geq U\}))^2]
  =3h_j|F(x)-F(c)|.
  \]
  Each threshold preimage is Borel and is fixed by the refinement seed before messages.
- Residual-to-target adequacy: identities are for the exact selected pair and exact \(D_j^c\), not a source-side surrogate.
- Key positive/control term or structural source: uniform density \(1/3\) over an interval containing the full digit range.
- Opposing defect terms: endpoint inequalities and threshold ties; ties are \(U\)-null.
- Closure/dominance/absorption relation: exact identities.
- Accumulation behavior / scope compatibility: one level/sample at a time; finite accumulation is exposed later without dropping terms.
- Obligation locality classification: `step-local`.
- Noncircular closure status: direct from precommitted \(F,A,B,U\).
- Entry-state / first-update stress result: at \(x=c\), the two indicators coincide for every \(U\).
- Baseline conclusion preserved: pathwise zero at \(x=c\), with no dither remainder.
- Producer-consumer provenance: `step_005 -> step_008 -> step_009,step_010,step_012`.
- Null or boundary regime tested: \(F/h\downarrow-1\), \(F/h\uparrow2\), and threshold equality.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the activation-weighted variance would be unsupported.
- Repair route if source is unsupported: `idea/theorem-contract defect`; direct integration supports it.

### Telescope and residuals

- Step ID: `step_006`
- Claim class: exact algebraic reduction and same-target decomposition.
- Theorem role: identifies the pseudo-observation target and the only two biases.
- Mechanism source: direct finite telescoping.
- Source-to-claim adequacy:
  \[
  T_c(x)=[Q_0^c(x)-Q_0^c(c)]-[Q_J^c(x)-Q_J^c(c)],
  \quad
  x-c=T_c(x)+R_0^c(x)+R_H^c(x),
  \]
  with \(|R_0^c(x)|<h_0\).
- Residual-to-target adequacy: produced \(T_c\), consumed target \(x-c\), absolute metric; exact residual \(R_0^c+R_H^c\) is controlled at scale \(\epsilon\) in `step_011`.
- Key positive/control term or structural source: exact cancellation of every intermediate \(Q_j^c\).
- Opposing defect terms: bottom quantization and top truncation residuals, both retained.
- Closure/dominance/absorption relation: exact equality followed by separate residual bounds.
- Accumulation behavior / scope compatibility: finite telescoping with signed exact cancellation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: deterministic identity independent of all events.
- Entry-state / first-update stress result: at \(x=c\), every difference and residual is zero.
- Baseline conclusion preserved: exact zero-displacement decomposition.
- Producer-consumer provenance: `step_006 -> step_008,step_011 -> step_012,step_013`.
- Null or boundary regime tested: \(J=1\), \(x=c\), and quantizer grid points.
- Target conclusion false or theorem-critical obstruction present if source vanishes: digit unbiasedness alone estimates the wrong target.
- Repair route if source is unsupported: blocker; direct algebra supports it.

### Digit activation and pathwise budgets

- Step ID: `step_007`
- Claim class: support/inactivity and finite multiscale accumulation.
- Theorem role: prevents central observations from paying for coarse digits.
- Mechanism source: `step_004` stable margins and `step_005` digit range.
- Source-to-claim adequacy: with \(R=|x-c|\), if \(R\leq3h_j/8\), then both scale-\(j\) and scale-\(j+1\) quantizers agree at \(x,c\), so \(\Delta D_j(x)=0\). Always \(|\Delta D_j(x)|<3h_j\). Hence
  \[
  \sum_{j\in\mathcal J_{\rm f}}|\Delta D_j(x)|
  \leq16\min\{R,\sigma\},
  \qquad
  \sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta D_j(x)|
  \leq C_k^{\rm act}R^k.
  \]
  Also \(R_H^c(x)=0\) for \(R\leq3H/8\).
- Residual-to-target adequacy: exact selected digits and exact top residual are controlled.
- Key positive/control term or structural source: at scale \(j+1\) the cell margin is \(3h_{j+1}/8=3h_j/4\), larger than the tested radius.
- Opposing defect terms: one tail observation can activate many levels.
- Closure/dominance/absorption relation: activity implies \(h_j<8R/3\); dyadic sums of \(h_j\) and \(h_j^k\) are dominated by the largest active term.
- Accumulation behavior / scope compatibility: nonnegative absolute defects have one-level charges \(3h_j\) or \(3h_j^k\), with finite pathwise geometric budgets \(O(R)\) and \(O_k(R^k)\).
- Obligation locality classification: `step-local`.
- Noncircular closure status: margins are produced before activity; variance is not assumed.
- Entry-state / first-update stress result: at \(x=c\) all levels are inactive; at \(R=3h_j/8\), left-boundary equality stays inside the half-open cell and the right boundary remains farther away.
- Baseline conclusion preserved: exact inactivity at \(x=c\).
- Producer-consumer provenance: `step_004,step_005 -> step_007 -> step_009,step_010,step_011`.
- Null or boundary regime tested: \(x=c\), grid boundaries, rare \(R\gg\sigma\), smallest/top levels, and empty group sums.
- Target conclusion false or theorem-critical obstruction present if source vanishes: inverse level weights can add a wrong logarithm or diverge.
- Repair route if source is unsupported: `idea/theorem-contract defect`; the cell calculation supports it.

### Importance-weighted expectation and square

- Step ID: `step_008`
- Claim class: exact conditional expectation and raw second moment.
- Theorem role: maps the precommitted dictionary to the selected telescope.
- Mechanism source: refinement/localization independence, match probability \(1/16\), exact \(p_j\), and `step_005`.
- Source-to-claim adequacy: conditioning on \(c\) and averaging over \(L,A,B,U,X\),
  \[
  \mathbb E[Z_i(c)\mid c]=\sum_j\mathbb E\Delta D_j(X)=\mathbb E T_c(X),
  \]
  \[
  \mathbb E[Z_i(c)^2\mid c]
  =48\sum_{j=0}^{J-1}\frac{h_j\,\mathbb E|\Delta D_j(X)|}{p_j}.
  \]
  The factors \(p_j\), \(1/16\), \(16/p_j\), and \(3h_j\) are retained exactly.
- Residual-to-target adequacy: produced \(\theta(c)\), target \(\mu-c\); `step_006` gives exact residual \(\mathbb ER_0^c+\mathbb ER_H^c\), dominated by `step_011`.
- Key positive/control term or structural source: inverse-probability cancellation in the mean.
- Opposing defect terms: inverse probabilities enlarge the square and remain explicit for the two variance steps.
- Closure/dominance/absorption relation: exact identities followed by separate fine/coarse budgets.
- Accumulation behavior / scope compatibility: one finite level sum; no term is dropped.
- Obligation locality classification: `step-local`.
- Noncircular closure status: \(c\) comes from the disjoint block, so conditioning preserves the iid refinement law.
- Entry-state / first-update stress result: if \(X=c\), \(Z_i(c)=0\) pathwise.
- Baseline conclusion preserved: exact zero-displacement output.
- Producer-consumer provenance: `step_001,step_005,step_006 -> step_008 -> step_009,step_010,step_012`.
- Null or boundary regime tested: smallest \(p_j\), \(x=c\), and empty groups.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a missing factor changes bias and rate.
- Repair route if source is unsupported: `sketch/interface defect`; exact calculation supports it.

### Fine variance

- Step ID: `step_009`
- Claim class: conditional fine-scale variance.
- Theorem role: supplies \(O(\sigma^2)\) in every regime.
- Mechanism source: exact fine \(p_j\), \(W_{\rm f}\leq2\), and the fine activation budget.
- Source-to-claim adequacy:
  \[
  48\sum_{j\in\mathcal J_{\rm f}}
  \frac{h_j\mathbb E|\Delta D_j|}{p_j}
  =48mW_{\rm f}\sigma\,
  \mathbb E\sum_{j\in\mathcal J_{\rm f}}|\Delta D_j|
  \leq C\sigma^2.
  \]
- Residual-to-target adequacy: exact fine contribution to the same \(Z_i(c)\).
- Key positive/control term or structural source: \(h_j/p_j=mW_{\rm f}\sigma\) and pathwise geometric activity.
- Opposing defect terms: arbitrarily many fine levels as \(\epsilon\downarrow0\).
- Closure/dominance/absorption relation: \(\sum|\Delta D_j|\leq16\min(R,\sigma)\leq16\sigma\); no level count.
- Accumulation behavior / scope compatibility: finite nonnegative scale sum controlled pathwise.
- Obligation locality classification: `step-local`.
- Noncircular closure status: raw square and activity are earlier outputs.
- Entry-state / first-update stress result: an empty fine group contributes zero; theorem choices include \(j=0\).
- Baseline conclusion preserved: zero at \(X=c\).
- Producer-consumer provenance: `step_003,step_007,step_008 -> step_009 -> step_012,step_014`.
- Null or boundary regime tested: \(h_j=\sigma\), arbitrarily many levels, empty fine group.
- Target conclusion false or theorem-critical obstruction present if source vanishes: an extra fine logarithm misses the \(k>2\) rate.
- Repair route if source is unsupported: `sketch/interface defect`; displayed algebra supports it.

### Coarse variance in all regimes

- Step ID: `step_010`
- Claim class: conditional heavy-tail variance and three-regime specialization.
- Theorem role: creates the exact phase transition at \(k=2\).
- Mechanism source: recentered moment, exact coarse \(p_j\), weighted pathwise activation, and normalizer bounds.
- Source-to-claim adequacy:
  \[
  48\sum_{j\in\mathcal J_{\rm c}}
  \frac{h_j\mathbb E|\Delta D_j|}{p_j}
  =48mW_{\rm c}\sigma^{2-k}
  \mathbb E\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}|\Delta D_j|
  \leq C_kW_{\rm c}\sigma^2.
  \]
  Substitution of `step_003` gives \(O_k(\sigma^2)\), \(O(\sigma^2\log(\sigma/\epsilon))\), and \(O_k(\sigma^kH^{2-k})\).
- Residual-to-target adequacy: exact coarse contribution; no tail-truncated surrogate.
- Key positive/control term or structural source: \(h_j^{k-1}|\Delta D_j|\) is charged pathwise to \(|X-c|^k\), while \(W_{\rm c}\) contains precisely the sign-dependent phase transition.
- Opposing defect terms: rare observations can activate every scale below their magnitude; \(k=2\) has one unit weight per coarse level.
- Closure/dominance/absorption relation: geometric activation sum, then \(\mathbb E|X-c|^k\leq C_k^{\rm rec}\sigma^k\), then exact \(W_{\rm c}\).
- Accumulation behavior / scope compatibility: geometrically dominated at fixed \(x\); at \(k=2\), the only nondecaying accumulation is the explicit finite count \(\#\mathcal J_{\rm c}\lesssim\log(\sigma/\epsilon)\), which is part of the target.
- Obligation locality classification: `step-local`.
- Noncircular closure status: localization and recentering precede variance.
- Entry-state / first-update stress result: a rare atom at distance \(R\) activates only \(h_j<8R/3\), and \(\sum h_j^k=O_k(R^k)\); at \(k=2\) exactly one target logarithm remains.
- Baseline conclusion preserved: a degenerate \(X=c\) has zero coarse variance.
- Producer-consumer provenance: `step_002,step_003,step_007,step_008 -> step_010 -> step_012,step_014`.
- Null or boundary regime tested: \(k=2\), one-sided limits around \(2\), \(k\downarrow1\), rare asymmetric tails, and empty coarse group.
- Target conclusion false or theorem-critical obstruction present if source vanishes: uncontrolled tails or an extra count misses \(r_k\).
- Repair route if source is unsupported: `idea/theorem-contract defect`; weighted pathwise inequality supports it.

### Residual bias and target transfer

- Step ID: `step_011`
- Claim class: fine/top bias and residual-to-target adequacy.
- Theorem role: transfers the telescope mean to the actual mean.
- Mechanism source: `step_002`, `step_003`, `step_006`, and top support in `step_007`.
- Source-to-claim adequacy: \(|R_0^c|<h_0=\epsilon/8\). On \(R=|X-c|>3H/8\), floor geometry gives \(|R_H^c(X)|\leq R+H\leq(11/3)R\), whence
  \[
  \mathbb E|R_H^c(X)|
  \leq (11/3)(8/3)^{k-1}\frac{\mathbb ER^k}{H^{k-1}}
  \leq\overline C_k^{\rm tail}\frac{\epsilon}{b_k^{k-1}}
  \leq\epsilon/8.
  \]
- Residual-to-target adequacy: exact relation \((\mu-c)-\theta(c)=\mathbb ER_0^c+\mathbb ER_H^c\), with total residual at most \(\epsilon/4\) in absolute value, below the later \(\epsilon/2\) stochastic margin.
- Key positive/control term or structural source: stable top cell and localized \(k\)-moment.
- Opposing defect terms: bottom quantization and observations beyond \(3H/8\).
- Closure/dominance/absorption relation: \(h_0=\epsilon/8\) and \(b_k^{k-1}\geq8\overline C_k^{\rm tail}\).
- Accumulation behavior / scope compatibility: one tail integral, uniform over \(D\); no repeated defect.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all source controls precede the bridge; concentration is not assumed.
- Entry-state / first-update stress result: at \(x=c\), both residuals vanish; at \(R=3H/8\), the top residual still vanishes.
- Baseline conclusion preserved: exact zero residual at \(x=c\).
- Producer-consumer provenance: `step_002,step_003,step_006,step_007 -> step_011 -> step_012,step_013`.
- Null or boundary regime tested: rare tails, top-grid boundary, and \(\epsilon=c_k\sigma\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: \(\theta(c)\) need not be within \(\epsilon\) of \(\mu-c\).
- Repair route if source is unsupported: `idea/theorem-contract defect`; displayed inequality supports it.

### Conditional median-of-means

- Step ID: `step_012`
- Claim class: fixed-horizon confidence amplification.
- Theorem role: converts conditional variance and bias to refinement accuracy.
- Mechanism source: direct Chebyshev plus Hoeffding median-of-means proof.
- Source-to-claim adequacy: let \(V_k\) be the sum of `step_009` and `step_010` bounds. Choose
  \[
  s=\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil,
  \qquad
  q=2\lceil8\log(4/\delta)\rceil+1.
  \]
  Conditional on any localized \(c\), one block misses \(\theta(c)\) by more than \(\epsilon/2\) with probability at most \(1/8\); a bad majority has probability at most \(\delta/4\). With `step_011`, the final conditional error is at most \(3\epsilon/4<\epsilon\).
- Residual-to-target adequacy: concentration around \(\theta(c)\) transfers to \(\mu-c\) using the explicit \(\epsilon/4\) residual.
- Key positive/control term or structural source: independent fixed blocks and majority gap \(1/2-1/8\).
- Opposing defect terms: heavy-tailed \(Z_i(c)\) and deterministic telescope bias, controlled separately.
- Closure/dominance/absorption relation: \(4V_k/(s\epsilon^2)\leq1/8\), and the Hoeffding exponent from \(q\) dominates \(\log(4/\delta)\).
- Accumulation behavior / scope compatibility: fixed finite blocks; no all-time upgrade.
- Obligation locality classification: `step-local`.
- Noncircular closure status: variance and bias are produced before the good-block event.
- Entry-state / first-update stress result: odd \(q\) eliminates median ties; absent groups simply do not enter \(V_k\).
- Baseline conclusion preserved: if \(Z_i(c)=0\) and \(\mu=c\), every block and the median is exactly zero.
- Producer-consumer provenance: `step_008,step_009,step_010,step_011 -> step_012 -> step_013,step_014`.
- Null or boundary regime tested: odd block count, finite-variance equality, and empty groups.
- Target conclusion false or theorem-critical obstruction present if source vanishes: one block does not give logarithmic confidence under a variance-only hypothesis.
- Repair route if source is unsupported: `sketch/interface defect`; direct proof supports it.

### Unconditional confidence

- Step ID: `step_013`
- Claim class: conditional-to-unconditional probability conversion.
- Theorem role: proves the actual PAC event.
- Mechanism source: disjoint blocks, `step_001` localization probability, and uniform-in-\(c\) `step_012` refinement probability.
- Source-to-claim adequacy:
  \[
  \Pr(\mathcal E_{\rm loc}^c)\leq\delta/4,
  \qquad
  \sup_{|c-\mu|\leq50\sigma}
  \Pr(|\widehat\mu-\mu|>\epsilon\mid c)\leq\delta/4.
  \]
  Integrating over the localization transcript gives total failure at most \(\delta/2\leq\delta\).
- Residual-to-target adequacy: the conditional event already concerns the exact final target after adding the actual \(c\).
- Key positive/control term or structural source: refinement is independent of the localization transcript conditional on \(c\).
- Opposing defect terms: localization and refinement failures.
- Closure/dominance/absorption relation: finite union/law of total probability.
- Accumulation behavior / scope compatibility: two-event finite union.
- Obligation locality classification: `step-local`.
- Noncircular closure status: both events have legal earlier producers.
- Entry-state / first-update stress result: trivial localization at \(\lambda\leq10\sigma\) has zero localization failure.
- Baseline conclusion preserved: exact decoder \(c+\operatorname{median}\) is used; no oracle center.
- Producer-consumer provenance: `step_001,step_012 -> step_013 -> final theorem`.
- Null or boundary regime tested: \(\lambda=\sigma\), \(\delta\uparrow1/2\), deterministic localization.
- Target conclusion false or theorem-critical obstruction present if source vanishes: a conditional theorem does not meet the goal.
- Repair route if source is unsupported: `sketch/interface defect`; independence supports it.

### Rate and protocol closure

- Step ID: `step_014`
- Claim class: public rate specialization, fixed-horizon closure, and protocol legality.
- Theorem role: exports the exact \(r_k\) and fully non-adaptive implementation.
- Mechanism source: all preceding quantitative interfaces plus direct measurability/precommitment checks.
- Source-to-claim adequacy: `step_012` gives
  \[
  N_{\rm ref}=qs\lesssim\log(4/\delta)(1+V_k/\epsilon^2).
  \]
  For \(1<k<2\), \(H<2b_k\sigma(\sigma/\epsilon)^{1/(k-1)}\) implies
  \[
  \frac{\sigma^kH^{2-k}}{\epsilon^2}
  \lesssim_k
  \left(\frac{\sigma}{\epsilon}\right)^{k/(k-1)};
  \]
  the other two cases follow directly from `step_010`. Since \(c_k\leq e^{-1}\) and \(\delta<1/2\), all \(+1\), ceilings, and \(\log(4/\delta)\) terms are absorbed. D2 gives \(N_{\rm loc}\lesssim1+\log(\lambda/\sigma)+\log(4/\delta)\), with zero samples in its trivial branch; non-\(\lambda\) terms are absorbed by refinement.
- Residual-to-target adequacy: the rate accompanies the exact unconditional event in `step_013`, with the same norm and parameter scope.
- Key positive/control term or structural source: the three \(W_{\rm c}\) bounds and \(H\asymp_k\sigma(\sigma/\epsilon)^{1/(k-1)}\).
- Opposing defect terms: ceilings, \(\log(\lambda/\sigma)=0\), largest allowed \(\epsilon\), and confidence constants.
- Closure/dominance/absorption relation: \(\log(4/\delta)\leq3\log(1/\delta)\), each refinement multiplier is bounded below by a \(k\)-only positive constant, and \(2+(2-k)/(k-1)=k/(k-1)\).
- Accumulation behavior / scope compatibility: each fixed-horizon ceiling adds at most one block/sample and is charged to the positive refinement budget.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all sample choices are deterministic functions of known parameters and proved upper bounds, never realized bits.
- Entry-state / first-update stress result: at \(\lambda=\sigma\), localization is trivial; at \(\epsilon=c_k\sigma\), \(\log(\sigma/\epsilon)\geq1\) and ceiling absorption remains valid.
- Baseline conclusion preserved: all query seeds are generated before messages; \(c\) only selects decoder weights.
- Producer-consumer provenance: `step_001,step_003,step_004,step_005,step_010,step_012,step_013 -> step_014 -> final theorem`.
- Null or boundary regime tested: \(\lambda=\sigma\), \(\epsilon=c_k\sigma\), \(\delta\uparrow1/2\), \(k=2\), empty group definitions.
- Target conclusion false or theorem-critical obstruction present if source vanishes: the proof could be PAC but fail the exact rate or adaptivity model.
- Repair route if source is unsupported: `sketch/interface defect`; all absorption relations are explicit.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), \(\lvert c-\mu\rvert\leq50\sigma\), source cost | `step_001` and D2 Theorem 16 | primitive parameters, moment, iid samples; Lyapunov | source controls far-bin mass and Hamming fluctuations; midpoint controls interval/scalar mismatch; no uncontrolled term | \(I\ni\mu\), \(c=\operatorname{mid}(I)\), absolute metric, residual at most \(50\sigma\) | source Hamming gap and midpoint inequality | \(0.05\ell\), \(\lvert I\rvert\leq100\sigma\) | `step_002`, `step_008`--`step_013` | None |
| \(\mathbb E\lvert X-c\rvert^k\leq C_k^{\rm rec}\sigma^k\) | `step_002` | central moment and localization radius | translation controlled; no empirical defect | actual center equals digit center | two-term power inequality | \(50\sigma\) radius | `step_010`, `step_011` | None |
| Scale and normalizer certificate | `step_003` | known parameters and \(k\)-only choices | ceiling, transition, empty groups all deterministic | exact \(p_j\) consumed downstream | three geometric-series bounds | \(c_k\leq e^{-1},b_k\geq4\) | `step_009`--`step_014` | None |
| Stable selector and margins | `step_004` | \(\mathcal S\), floor convention | endpoints controlled by half-open arcs | actual decoded \(c\) and exact dictionary | four-arc partition | \(3h_j/8\) margin | `step_005`--`step_011` | None |
| Dither expectation and square | `step_005` | floor bounds and uniform \(U\) | threshold ties null; no range overflow | exact selected \(D_j^c\) | direct integration | dither support length \(3\) | `step_008` | None |
| Telescope and residuals | `step_006` | exact digit definitions | bottom/top residuals retained | \(T_c\) to \(x-c\), absolute metric, exact residual controlled by `step_011` at \(\epsilon/4\) | finite cancellation plus explicit residual bridge | \(\epsilon/2\) stochastic margin | `step_008`, `step_011`, `step_012` | None |
| Activity budgets and top support | `step_007` | stable margins, digit range | many levels controlled pathwise; no uncontrolled class | exact selected digits/top residual | activity implies \(h_j<8R/3\), geometric sums | cell margin | `step_009`--`step_011` | None |
| \(\theta(c)\) and raw second moment | `step_008` | \(p_j\), match probability, dither, independence | inverse-probability factors explicit | \(\theta(c)\) to \(\mu-c\), exact residual controlled by `step_011` | exact probability cancellation in mean | positive \(p_j\) | `step_009`, `step_010`, `step_012` | None |
| Fine variance \(O(\sigma^2)\) | `step_009` | fine law and activity | arbitrarily many fine levels controlled pathwise | exact fine part of \(Z_i(c)\) | \(h_j/p_j=mW_f\sigma\), finite activity sum | \(W_f\leq2\) | `step_012`, `step_014` | None |
| Coarse three-regime variance | `step_010` | recentered moment, coarse law, weighted activity | rare tails and \(k=2\) count each sourced | exact coarse part of \(Z_i(c)\) | \(C_kW_c\sigma^2\) plus three \(W_c\) formulas | recentered moment, finite \(H\) | `step_012`, `step_014` | None |
| Bias bridge \(\lvert(\mu-c)-\theta(c)\rvert\leq\epsilon/4\) | `step_011` | telescope, top support, recentered moment, scales | bottom/top separately at \(\epsilon/8\); none uncontrolled | exact same target and absolute metric | \(h_0=\epsilon/8\), \(\sigma^k/H^{k-1}\leq\epsilon/b_k^{k-1}\) | explicit \(b_k\) threshold | `step_012`, `step_013` | None |
| Conditional refinement failure \(\leq\delta/4\) | `step_012` | conditional mean, variance, bias, fixed independent blocks | heavy tails via variance; deterministic bias separate | median to \(\theta(c)\), then exact target via bias bridge | Chebyshev \(1/8\), Hoeffding majority | \(\epsilon/2\) and majority margins | `step_013`, `step_014` | None |
| Unconditional PAC event | `step_013` | localization and uniform conditional refinement | two failure events only | exact final estimator/target | total \(\leq\delta/2\leq\delta\) | unused \(\delta/2\) slack | final theorem | None |
| \(n\leq C_kr_k\), zero-transition certificate | `step_014` | sample choices, variance rates, source cost, measurability | ceilings and all boundary regimes explicitly absorbed | same final protocol, norm, probability mode | regime algebra and confidence-log inequality | positive refinement budget | final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| \(I,c,\mathcal E_{\rm loc}\) | arXiv:2604.07796v2, Theorem 16 / `thm: alternative localization`, hypotheses discharged and midpoint-wrapped in `step_001` | `step_002`, `step_008`--`step_013` | localization/refinement split | D2 -> `step_001` -> consumers | derived | None |
| Recentered moment | `step_002` | `step_010`, `step_011` | tail variance and bias | `step_001 -> step_002 -> consumers` | derived | None |
| Scale/group/normalizers | `step_003` | `step_009`--`step_014` | exact regime rate | `step_003 -> consumers` | derived | None |
| Stable selectors/margins | `step_004` | `step_005`--`step_011` | inactivity/support | `step_004 -> step_007 -> variance,bias` | derived | None |
| Dither identities | `step_005` | `step_008` | mean/second moment | `step_005 -> step_008` | derived | None |
| Telescope/residual identity | `step_006` | `step_008`, `step_011`, `step_012` | target transfer | `step_006 -> step_008,step_011 -> step_012` | derived | None |
| Activity/top support | `step_007` | `step_009`--`step_011` | variance/bias | `step_004,step_005 -> step_007 -> consumers` | derived | None |
| \(\theta(c)\), raw second moment | `step_008` | `step_009`, `step_010`, `step_012` | estimator center/variance | `step_005,step_006 -> step_008 -> consumers` | derived | None |
| Fine variance | `step_009` | `step_012`, `step_014` | block size/rate | `step_007,step_008 -> step_009 -> consumers` | derived | None |
| Coarse variance | `step_010` | `step_012`, `step_014` | block size/rate | `step_002,step_003,step_007,step_008 -> step_010 -> consumers` | derived | None |
| Bias certificate | `step_011` | `step_012`, `step_013` | telescope-to-mean transfer | `step_002,step_006,step_007 -> step_011 -> consumers` | derived | None |
| Conditional median event | `step_012` | `step_013`, `step_014` | refinement confidence/count | `step_008--step_011 -> step_012 -> consumers` | derived | None |
| Unconditional PAC event | `step_013` | final theorem | exact probability | `step_001,step_012 -> step_013 -> final` | derived | None |
| Rate/nonadaptivity certificate | `step_014` | final theorem | exact \(r_k\), one bit/sample | prior outputs -> `step_014` -> final | derived | None |

## Sketch Steps

Every rate-bearing row below inherits the full rate contract in `Rate Objectives`: fixed \(k\); hidden constants depending only on \(k\); exposed \(\lambda,\sigma,\epsilon,\delta,H,s,q\) as applicable; unconditional high probability after `step_013`; deterministic fixed horizon; and absolute-value norm. Each row's `Rate objective` cell names its additional local dependence, admissibility, absorption, or probability-conversion obligation.

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_001` | Preflight D2 Theorem 16 at \(\eta=\delta/4\); define midpoint \(c\); prove source mapping, \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), \(\lvert c-\mu\rvert\leq50\sigma\), and source cost. | None | `assump:parameter-domain`, `assump:moment-class`, `assump:iid-independent-randomness` | Exact interval-to-scalar source mapping. | arXiv:2604.07796v2, Theorem 16 / `thm: alternative localization`, Appendix `appendix: two-stage`; Lyapunov. | Generated localization event, scalar center, source cost. | Additive localization and confidence \(\delta/4\). | PENDING |
| `step_002` | On \(\mathcal E_{\rm loc}\), prove \(\mathbb E\lvert X-c\rvert^k\leq C_k^{\rm rec}\sigma^k\). | `step_001` | `assump:moment-class`; derived localization | Preserve actual-center compatibility. | Direct power inequality. | Recentered moment. | \(k\)-only constant. | PENDING |
| `step_003` | Choose \(\gamma_k,b_k,c_k\); prove scale ordering, group behavior, and all \(W_f,W_c\) bounds, including empty-group legality. | `step_002` | `assump:parameter-domain`; derived \(C_k^{\rm rec}\) | \(k=2\), ceilings, largest epsilon. | Explicit geometric sums. | Scale/normalizer certificate. | Three-regime structural dependence. | PENDING |
| `step_004` | Prove unique Borel stable shifts, two-sided cell margin, and grid-boundary behavior. | None | `assump:parameter-domain` | Half-open endpoint uniqueness. | Four-arc partition. | Stable-selector certificate. | None. | PENDING |
| `step_005` | Prove digit range, query measurability/precommitment, and exact dither first/second moment identities. | `step_004` | `assump:iid-independent-randomness` for seed timing | Exact square identity/endpoints. | Floor bounds and direct integration. | Bounded-dither interface. | None. | PENDING |
| `step_006` | Prove exact telescope, residual decomposition, \(\lvert R_0^c\rvert<h_0\), and exact \(x=c\) specialization. | `step_004` | None beyond definitions | Retain both residuals. | Finite algebraic telescope. | Telescope/residual interface. | Expose all bias terms. | PENDING |
| `step_007` | Prove digit inactivity, magnitude, top support, and fine/coarse pathwise activation sums. | `step_004`, `step_005`, `step_006` | None beyond definitions | Two-scale cells and rare-tail accumulation. | Stable margins and geometric sums. | Activation/support certificate. | Moment-compatible scale budget. | PENDING |
| `step_008` | Conditional on independent \(c\), prove exact importance-weighted expectation and raw second-moment equality. | `step_001`, `step_005`, `step_006` | `assump:iid-independent-randomness` | Track offset/level probabilities. | Iterated conditional expectation. | Exact \(\theta(c)\) and square interface. | All \(p_j\)-dependence explicit. | PENDING |
| `step_009` | Bound fine variance by \(C\sigma^2\) uniformly. | `step_003`, `step_007`, `step_008` | derived normalizer/activity | Avoid extra fine-level count. | Substitute \(p_j\), sum pathwise. | Fine variance. | \(O(\sigma^2)\). | PENDING |
| `step_010` | Prove coarse variance \(C_k\sigma^2\), \(C\sigma^2\log(\sigma/\epsilon)\), or \(C_k\sigma^kH^{2-k}\). | `step_002`, `step_003`, `step_007`, `step_008` | `assump:moment-class`; derived moment/normalizers/activity | Rare tails without extra log. | Weighted pathwise sum and recentered moment. | Full variance certificate. | Exact three regimes. | PENDING |
| `step_011` | Prove bottom/top bias and \(\lvert(\mu-c)-\theta(c)\rvert\leq\epsilon/4\). | `step_002`, `step_003`, `step_006`, `step_007`, `step_008` | `assump:moment-class`; derived controls | Same-target transfer at \(\epsilon\) scale. | Quantizer residual and tail moment. | Bias certificate. | Each residual \(\leq\epsilon/8\). | PENDING |
| `step_012` | Choose \(s,q\); prove conditional median deviation \(\leq\epsilon/2\) with failure \(\leq\delta/4\), then combine bias. | `step_008`, `step_009`, `step_010`, `step_011` | `assump:iid-independent-randomness`; derived variance/bias | Uniformity over random localized center. | Chebyshev plus Hoeffding median-of-means. | Conditional refinement PAC and \(N_{\rm ref}\). | Confidence-explicit fixed horizon. | PENDING |
| `step_013` | Integrate over localization and prove unconditional failure at most \(\delta\). | `step_001`, `step_012` | `assump:iid-independent-randomness`; generated events | No hidden conditional theorem. | Total probability and union bound. | Unconditional PAC. | \(\delta/4+\delta/4\leq\delta\). | PENDING |
| `step_014` | Verify one-bit precommitment/measurability and absorb all sample costs into \(C_kr_k\). | `step_001`, `step_003`, `step_004`, `step_005`, `step_009`, `step_010`, `step_012`, `step_013` | all primitive assumptions and listed derived outputs | \(\lambda=\sigma\), \(k=2\), \(\epsilon=c_k\sigma\), ceilings. | Direct regime algebra and protocol audit. | Final theorem-ready certificate. | Exact public \(r_k\) bridge. | PENDING |

## Dependency Notes

The graph is acyclic: every dependency points to a smaller step number. `step_004` is independent of localization because it proves deterministic geometry for every real \(c\); later steps instantiate it at the D2 midpoint. Source localization/recentering and deterministic digit mechanics join first at `step_008`. Fine and coarse variance remain separate so neither defect class is hidden. Bias and variance join only after their legal producers, and confidence conversion is separate from rate/protocol closure.

Assembly follows the same order: generate \(c\); establish actual-center moments and deterministic digit interfaces; identify the exact conditional telescope mean and square; prove variance and target residual bounds; concentrate conditionally; remove conditioning; then certify the public rate and model. No generated output is consumed before production.

## Blockers

None. Digit inactivity and the three-regime variance mechanism pass the obstruction-level checks under the unchanged setting. The only source-interface mismatch is that D2 Theorem 16 returns an interval rather than a scalar; `step_001` resolves it by the source-supported midpoint wrapper with an explicit \(50\sigma\) same-target bound.
