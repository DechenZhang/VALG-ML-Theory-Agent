# Proof Sketch

## Formalized Setting

Fix a known real \(k>1\), known \(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and \(\delta\in(0,1/2)\). The law \(D\) is otherwise unrestricted, with \(\mu(D)\in[-\lambda,\lambda]\) and \(\mathbb E_D|X-\mu(D)|^k\leq\sigma^k\). Use exactly the two independent, simultaneously precommitted blocks, grids, rings, masks, dithers, importance weights, and fixed median-of-means estimator defined in setting.md. In particular,

\[
h_0=a_k\sigma,\qquad
H_\star=b_k\sigma(\sigma/\epsilon)^{1/(k-1)},\qquad
h_s=2^sh_0,\qquad
p_s=h_s^{2-k}/Z_S,\qquad
Z_S=\sum_{s=0}^S h_s^{2-k},
\]

and the decoder alone uses the localization output \(c\) to select \(m_0\), the ancestor path \((j_s,b_s)\), and the rings \(R_s(c)\). No refinement query depends on \(c\) or on any transmitted bit. The scalar \(c\) in the exact setting is the current-notation decoder wrapper obtained by taking the midpoint of the interval returned by the cited localization construction, with a fixed deterministic tie rule in its Hamming decoder. This wrapper changes no query and is required because the cited theorem returns an interval, not a scalar.

This is exact-goal mode. Localization success, core membership, recentered moments, path geometry, mask cancellation, activation, variance, tail control, concentration, and rate specialization are derived outputs, not theorem-facing assumptions. The only primitive assumptions are assump:parameter-domain, assump:moment-class, assump:independent-samples, and assump:precommitted-protocol.

## Formalized Goal

Prove the exact unconditional full-progress theorem in setting.md: for every fixed \(k>1\), there are \(c_k,C_k>0\) and \(k\)-only choices \(a_k,b_k,\alpha_k,\beta_k\) such that the prescribed fixed-horizon protocol uses exactly one bit from each independent sample, fixes every randomized measurable query before any message, and satisfies

\[
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta
\]

with

\[
n\leq C_k\left[\log\frac{\lambda}{\sigma}+
\begin{cases}
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.35em]
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,&k=2,\\[0.35em]
\left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2.
\end{cases}\right].
\]

Probability is over the samples and all protocol randomness; the norm is absolute value on \(\mathbb R\); the horizon is fixed and non-stopping; and every hidden constant depends only on \(k\).

## Sketch Identity

- Sketch attempt: 1
- Retry mode: initial sketch
- Goal mode: exact unconditional full three-regime theorem
- Search mode used internally: OPEN

## Proof Roadmap

Use Framework 1 selected in technical_survey.md. The only theorem-critical external result is Lau and Scarlett, arXiv:2604.07796v2, Theorem 16, source label thm: alternative localization, with its proof in Appendix appendix: two-stage. Direct inspection of the v2 source dated May 25, 2026 gives the following preflight.

- Source statement and role: for \(\eta\in(0,1/2)\), \(\lambda\geq\sigma\), and any iid law with \(\mu\in[-\lambda,\lambda]\) and \(\mathbb E|X-\mu|\leq\sigma\), a deterministic non-adaptive one-bit protocol returns an interval \(I\ni\mu\) with probability at least \(1-\eta\), has \(\lvert I\rvert\leq100\sigma\) in the nontrivial branch (and \(\lvert I\rvert\leq20\sigma\) in the trivial branch), and uses \(O(\log(\lambda/\sigma)+\log(1/\eta))\) samples.
- Object and convention map: set \(\eta=\delta/4\); Lyapunov maps assump:moment-class to the source first-moment hypothesis; source bits \(Q_t(X_t)\) map to measurable sets \(\mathcal B_t=\{x:Q_t(x)=1\}\); source iid observations map to \(I_{\rm loc}\); the deterministic source seed is a degenerate \(R_{\rm loc}\); and \(c=\operatorname{mid}(I)\) maps the interval output to the scalar consumed by the present decoder.
- Conclusion interface and known boundary: the source does not output \(c\), \(m_0\), a core certificate, a recentered \(k\)-moment, or any refinement statistic. The midpoint and nearest-grid-center wrappers will prove those outputs explicitly. On source success, \(\lvert c-\mu\rvert\leq50\sigma\); hence \(L_k=50\) is available universally.
- Source-convention compatibility: both models use one measurable bit \(Q_t(X_t)\) per independent sample and precommit all localization queries. The current arbitrary-query model contains the source's clipped-bin unions. The source's location-dependent second stage is not used.

After localization, the proof is current-notation and follows an acyclic chain:

1. Produce the localization/core/recentering bridge.
2. Prove the padded-ring partition, outer containment, and bounded measurable query geometry.
3. Use exact dither moments and fresh masks to cancel every non-target mean and telescope target rings.
4. Prove the all-ring activation ledger, including same-color aliases.
5. Convert the ledger into one conditional variance bound \(C_k\sigma^kZ_S\), with no extra level factor at \(k=2\).
6. Bound the omitted tail and evaluate \(Z_S\) in all three regimes.
7. Derive the conditional median-of-means event directly.
8. Assemble unconditional confidence, query legality, ceilings, and the public sample bound.

The proof never conditions on an unproved selected-cell event and never takes a union bound over candidate cells. Conditioning on the independent localization transcript fixes the decoder path while leaving the refinement block iid.

## Rate Objectives

### Full three-regime PAC and sample-complexity objective

- Objective type: fixed-horizon, structural-parameter explicit, confidence-explicit, and three-regime explicit.
- Exposed variables: \(k,\lambda,\sigma,\epsilon,\delta\), together with the theorem-defined \(a_k,b_k,c_k,\alpha_k,\beta_k,S,H,H_\star,Z_S,(p_s),N_{\rm loc},B_{\rm ref},G_\delta,N_{\rm ref}\).
- Hidden constants may depend on: only the fixed \(k\), including the chosen design constants.
- Hidden constants may not depend on: \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,Z_S\), any sample, transcript, cell, path, mask, dither, or group.
- Fixed quantities: \(k\) is fixed when regimes or asymptotics are simplified; \(\lambda,\sigma,\epsilon,\delta\) are arbitrary within assump:parameter-domain.
- Probability mode: unconditional high probability, uniform over \(D\in\mathcal D(k,\lambda,\sigma)\), with probability over both sample blocks and all protocol randomness. The local conditional-on-\(c\) refinement statement must be integrated and combined with \(\Pr(\mathcal E_{\rm loc}^c)\leq\delta/4\).
- Horizon mode: fixed non-stopping horizon \(n=N_{\rm loc}+N_{\rm ref}\).
- Norm mode: absolute error \(|\widehat\mu-\mu(D)|\) on \(\mathbb R\).
- Required bridge or simplification obligations: prove \(V_k:=C_k^{\rm var}\sigma^kZ_S\); choose \(B_{\rm ref}\) so a block mean has error at most \(\epsilon/2\) with probability at least \(3/4\); choose \(G_\delta\) so the median fails with probability at most \(\delta/2\); prove
  \[
  Z_S\asymp_k
  \begin{cases}
  \sigma^{2-k},&k>2,\\
  \log(\sigma/\epsilon),&k=2,\\
  H^{2-k},&1<k<2;
  \end{cases}
  \]
  verify \(H_\star\leq H<2H_\star\), all ceilings, and \(\sigma^kZ_S/\epsilon^2\gtrsim_k1\); and prove
  \[
  1+\log(4/\delta)\lesssim_k
  \frac{\sigma^kZ_S}{\epsilon^2}\log(1/\delta)
  \]
  before absorbing localization confidence and ceiling costs.
- Baseline invariance obligations: if \(D\) is supported in the selected \(J_{0,j_0(c)}\), every retained higher ring is inactive, the outer bias is exactly zero, and the estimator reduces to the level-zero unbiased dither estimate of \(\mu-m_0\) followed by the same median aggregation. At a point mass \(X=m_0\), \(\Delta Y=0\) on the target base query and every higher retained ring is inactive; no artificial residual may remain.

## Assumption Provenance Objectives

- Localization event \(\mathcal E_{\rm loc}=\{\lvert c-\mu\rvert\leq50\sigma\}\): derived, not primitive. Producer step_001 from the cited localization theorem and midpoint wrapper; consumers step_002, step_005, step_006, step_007, and step_008.
- Selected-cell core and recentered moment \(M_k(c):=\mathbb E|X-m_0|^k\leq C_k^{\rm rec}\sigma^k\): derived in step_001 from \(\mathcal E_{\rm loc}\), nearest-center geometry, and assump:moment-class; consumed only after step_001.
- Nested path, disjoint target rings, \(J_S\) containment, \(\lvert d_s\rvert\leq h_s\), and Borel boundedness of every \(F_i\): deterministic derived facts from step_002; consumed by step_003-step_008.
- Exact conditional mean \(\mathbb E[W_i(c)\mid X_i=x,c]=(x-m_0){\bf1}_{J_S}(x)\): derived in step_003 from step_002 and the primitive independence/precommitment assumptions; consumed by step_006-step_008.
- All-ring activation ledger, including same-color non-target rings: deterministic derived fact from step_004; consumed by step_005 only after production.
- Conditional variance \( \operatorname{Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^kZ_S\) on \(\mathcal E_{\rm loc}\): derived in step_005 from step_001 and step_004; consumed by step_007.
- Tail-bias and rate-normalizer bounds: derived in step_006 from step_001-step_003 and assump:parameter-domain; consumed by step_007-step_008.
- Conditional refinement-success event: derived in step_007 from the variance output and conditional independence; consumed by step_008.
- Conditional hypotheses: step_003-step_007 may work locally for a fixed \(c\), and step_005-step_007 may assume \(c\in\mathcal E_{\rm loc}\). These are local conditional hypotheses only. Step_001 produces \(\mathcal E_{\rm loc}\), and step_008 discharges the conditioning; none appears as a public theorem assumption.

## Mechanism-Source And Boundary Stress

### step_001

- Step ID: step_001
- Claim class: cited localization, object-target bridge, positive core margin, and derived moment certificate.
- Theorem role: supplies the only location-dependent control used by the decoder and makes all later finite-moment bounds uniform in \(\lambda\).
- Mechanism source: Lau and Scarlett, arXiv:2604.07796v2, Theorem 16 (label thm: alternative localization), proved in Appendix appendix: two-stage. The source maps \((\eta,\lambda,\sigma,D,Q_t,I)\) to \((\delta/4,\lambda,\sigma,D,{\bf1}_{\mathcal B_t},I)\). Its hypotheses are discharged by assump:parameter-domain, assump:independent-samples, assump:precommitted-protocol, and \(\mathbb E|X-\mu|\leq(\mathbb E|X-\mu|^k)^{1/k}\leq\sigma\) from assump:moment-class. Its deterministic codebook queries are Borel clipped-bin unions. The source conclusion is interval-valued and has the known non-output boundary that it supplies neither a scalar center nor any refinement property.
- Source-to-claim adequacy: the source explicitly gives \(I\ni\mu\), failure at most \(\delta/4\), \(\lvert I\rvert\leq100\sigma\), and the required additive sample cost. The current-notation midpoint wrapper gives \(c=\operatorname{mid}(I)\) and \(\lvert c-\mu\rvert\leq50\sigma\). The nearest base-center wrapper gives \(|c-m_0|\leq h_0/2\). Choosing \(a_k\geq4\cdot50\) yields
  \[
  \lvert m_0-\mu\rvert\leq h_0/2+50\sigma\leq3h_0/4,
  \]
  which is exactly the core claim. The triangle-power inequality then gives \(M_k(c)\leq2^{k-1}[\sigma^k+(3a_k\sigma/4)^k]\).
- Residual-to-target adequacy: produced object \(I\), intermediate object \(c\), and selected object \(m_0\) are compared to the consumed target \(\mu\) in absolute value. The exact residual chain is \(\lvert m_0-\mu\rvert\leq\lvert m_0-c\rvert+\lvert c-\mu\rvert\); its two terms are controlled by nearest-grid geometry and the source interval length. The required target scale is the \(3h_0/4\) core radius, and both residuals are dominated after \(a_k\geq200\). No source-side interval property is used without this same-target bridge.
- Key positive/control term or structural source: the source's positive interval-containment event and its explicit \(100\sigma\) length bound.
- Opposing defect terms: localization failure; interval-to-scalar radius \(50\sigma\); grid-rounding residual \(h_0/2\); and moment shift \(\lvert m_0-\mu\rvert^k\).
- Closure/dominance/absorption relation: localization failure is reserved for the final union bound; \(50\sigma\leq h_0/4\) supplies the core margin; and the shift term is absorbed into \(C_k^{\rm rec}\sigma^k\).
- Accumulation behavior / scope compatibility: fixed-block source guarantee, not an iterative closure. The only accumulated quantity is source Hamming error across \(N_{\rm loc}\) samples, already controlled by the cited fixed-horizon theorem at \(\eta=\delta/4\); no source conclusion is upgraded in scope.
- Obligation locality classification: step-local
- Noncircular closure status: the source theorem and primitive moment inequality produce \(\mathcal E_{\rm loc}\) and \(M_k(c)\) before any consumer; dependency path step_001 to step_002/005/006/007/008. Neither output is assumed in the public theorem.
- Entry-state / first-update stress result: when \(2\lambda\leq20\sigma\), the source returns \(I=[-\lambda,\lambda]\) without needing a code update; \(c=0\) and \(\lvert c-\mu\rvert\leq\lambda\leq10\sigma\), so the mechanism is already active. In the nontrivial branch, the first bit is a fixed code coordinate and cannot depend on an earlier response.
- Baseline conclusion preserved: N/A; the supported-in-\(J_0\) refinement baseline begins after localization. The source's own trivial-range conclusion is preserved exactly by the midpoint wrapper.
- Producer-consumer provenance: cited source plus midpoint/grid wrappers in step_001 produce \(\mathcal E_{\rm loc}\), core membership, \(M_k(c)\), and localization cost; all later uses depend on step_001.
- Null or boundary regime tested: \(\lambda=\sigma\), the trivial source branch, a point mass, \(\delta\uparrow1/2\), and \(c\) at a tie between base-cell centers with the fixed minimum-index rule.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. An arbitrary decoder center can be \(\Theta(\lambda)\) from \(\mu\), making the recentered moment and target rate false.
- Repair route if source is unsupported: None; identity, label, source convention, object map, hypotheses, exact output boundary, and wrapper are preflighted.

### step_002

- Step ID: step_002
- Claim class: exact padded-ring geometry, support/nesting, boundedness, and finite telescope structure.
- Theorem role: makes the decoder-selected path a legal reinterpretation of fixed queries and supplies the exact target partition and outer-tail interface.
- Mechanism source: direct derivation under the exact half-open dyadic convention in setting.md. For \(j_{s-1}=2j_s+b_s\), interval endpoints directly give \(J_{s-1,j_{s-1}}\subseteq J_{s,j_s}\). For fixed \(s,\ell\), indices differ by \(4\), so their length-\(3h_s\) paddings are disjoint. Countable piecewise sums over these Borel rings are Borel.
- Source-to-claim adequacy: set difference of consecutive nested paddings yields pairwise-disjoint \(R_0,\ldots,R_S\) and exact union \(J_{S,j_S}\). Descendant arithmetic puts \(m_0\) in \(P_{s,j_s}\), gives \(\lvert d_s\rvert\leq h_s/2\leq h_s\), and shows both boundaries of \(J_{S,j_S}\) are more than \(H\) from \(m_0\). On \(J_{s,j}\), \(|x-m_{s,j}|\leq3h_s/2\), hence the coordinate amplitude is at most \(3/4\); mass amplitude is one.
- Residual-to-target adequacy: no surrogate object is exported. The produced rings and \(J_S\) are exactly the objects consumed by steps step_003-step_006. The outer-target bridge is the exact inclusion \([m_0-H,m_0+H]\subset J_S\), with zero geometric residual.
- Key positive/control term or structural source: nested ancestor paddings with one-child subtraction and the one-cell gap between same-color paddings.
- Opposing defect terms: boundary overlap, missing child branch, unbounded coordinate amplitude, and a possible gap between the ring union and \(J_S\).
- Closure/dominance/absorption relation: half-open endpoints remove overlap; \(b_s\) identifies the exact child; coordinate division by \(2h_s\) bounds amplitude; and finite set-difference telescoping removes any union defect.
- Accumulation behavior / scope compatibility: exact finite telescoping over \(s=0,\ldots,S\). There is no signed or unsigned accumulated error: \(J_s=J_{s-1}\mathbin{\dot\cup}R_s\) at each step, so the one-step preservation identity iterates exactly for the declared fixed \(S\).
- Obligation locality classification: step-local
- Noncircular closure status: dyadic endpoint arithmetic is available before the exact expectation or variance claims. The path partition and boundedness flow step_002 to step_003/004/005/006/008 without assuming any statistical success.
- Entry-state / first-update stress result: at \(s=0\), \(R_0=J_0\). The first ancestor satisfies \(j_0=2j_1+b_1\), hence \(J_0\subset J_1\) and \(R_1=J_1\setminus J_0\); the exact mechanism is active at the first scale. At half-open endpoints, every point has one fixed cell assignment.
- Baseline conclusion preserved: for any \(x\in J_0\), \(x\notin R_s\) for all \(s\geq1\). Thus the supported-in-\(J_0\) zero-higher-ring baseline is exact.
- Producer-consumer provenance: step_002 produces bounded measurable \(F_i\), target ring disjointness, \(J_S\) union, \(d_s\) control, and outer containment for step_003-step_008.
- Null or boundary regime tested: \(S=1\), \(x\) at every cell or padding endpoint, \(j_s<0\) under floor division, the two child values \(b_s=0,1\), and \(x=m_0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Without exact nesting or boundedness, the dither identity either cannot be applied on \([-1,1]\) or leaves an uncontrolled telescope defect.
- Repair route if source is unsupported: None; the direct endpoint and descendant calculations are already identified.

### step_003

- Step ID: step_003
- Claim class: exact unbiasedness, signed cancellation, generated target mean, and baseline reduction.
- Theorem role: converts one precommitted bit into the truncated residual mean selected only at decoding.
- Mechanism source: direct uniform-dither calculation in the setting convention,
  \[
  \mathbb E_U[{\bf1}\{f\geq U\}-{\bf1}\{0\geq U\}]=f/2,\qquad
  \mathbb E_U[({\bf1}\{f\geq U\}-{\bf1}\{0\geq U\})^2]=|f|/2
  \]
  for every \(f\in[-1,1]\), plus independence of distinct Rademacher masks from assump:independent-samples. Step_002 supplies boundedness and unique same-color activation.
- Source-to-claim adequacy: on target \(R_0\), the factor \(16h_0/p_0\) exactly inverts level probability \(p_0\), color probability \(1/4\), dither factor \(1/2\), and coordinate scale \(2h_0\). At \(s\geq1\), the displayed factor in \(W_i\) inverts \(p_s\), color \(1/4\), branch \(1/2\), type \(1/2\), dither \(1/2\), and coordinate scale \(2h_s\). Target coordinate and mass means are \(x-m_s\) and \(d_s\), whose sum is \(x-m_0\). On a non-target same-color ring \(j\neq j_s\), \(\mathbb E[\rho_{i,s,j_s}\rho_{i,s,j}]=0\), so its mean is zero. Step_002 then telescopes target rings exactly.
- Residual-to-target adequacy: the produced object is
  \[
  \theta(c)=\mathbb E[W_i(c)\mid c]
           =\mathbb E[(X-m_0){\bf1}_{J_S}(X)\mid c],
  \]
  while the consumed target is \(\mu-m_0\) in absolute value. The exact same-target decomposition is
  \[
  \mu-m_0=\theta(c)+\mathbb E[(X-m_0){\bf1}_{J_S^c}(X)\mid c].
  \]
  The only residual is the outer term, produced explicitly for step_006; no localization, fine-scale, mask-alias, or ring-gap residual remains.
- Key positive/control term or structural source: target-mask self-correlation \(\rho^2=1\) and coordinate-plus-mass algebra.
- Opposing defect terms: non-target alias means, dither scale, selection probabilities, and outer truncation.
- Closure/dominance/absorption relation: mask orthogonality cancels aliases exactly; importance constants invert every selection probability exactly; the finite ring union telescopes; only the named outer residual is transferred to step_006.
- Accumulation behavior / scope compatibility: signed cancellation occurs within one query expectation and exact finite summation occurs over disjoint \(s=0,\ldots,S\). Alias means are zero individually after mask averaging, so no persistent signed defect accumulates.
- Obligation locality classification: step-local
- Noncircular closure status: step_002 produces boundedness and partition before step_003; primitive mask/dither independence is available before conditioning; step_003 produces \(\theta(c)\) before step_006/007/008 consume it.
- Entry-state / first-update stress result: if \(x=m_0\), the target level-zero amplitude is zero and \(\Delta Y=0\); every higher target ring is inactive, so both sides of the claimed conditional mean equal zero. If \(x\in J_0\), all higher target signals are inactive and level zero alone produces \(x-m_0\).
- Baseline conclusion preserved: for a law supported in \(J_0\), \(\theta(c)=\mu-m_0\) exactly; higher target and alias contributions have zero retained activity, so the construction reduces to the level-zero dither estimator rather than a remainder surrogate.
- Producer-consumer provenance: step_003 produces the exact conditional mean and target decomposition for step_006, step_007, and final assembly.
- Null or boundary regime tested: \(f=-1,0,1\), \(x\) on half-open ring boundaries, a target ring, a same-color non-target ring, outside every retained ring, \(d_s=0\), and a point mass at \(m_0\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Without self-correlation and alias orthogonality, a fixed non-target population can bias the decoder-selected mean.
- Repair route if source is unsupported: None; the exact current-notation dither and mask calculations are exposed.

### step_004

- Step ID: step_004
- Claim class: all-ring activation, alias support control, and geometric finite-budget certificate.
- Theorem role: prevents cancelled non-target means from reappearing as uncontrolled second moment.
- Mechanism source: direct padded-grid distance calculation. For target \(j=j_s\), the subtracted child padding contains \([m_0-h_s/2,m_0+h_s/2]\), so target-ring activation implies \(h_s\leq2r\), \(r=\lvert x-m_0\rvert\). For non-target \(j=j_s+4q\), \(q\neq0\), the nearest same-color padding is separated from \(P_{s,j_s}\) by at least \(2h_s\), so activation implies \(h_s\leq r/2\). At fixed color and branch, at most one ring is active.
- Source-to-claim adequacy: both target and every same-color non-target ring used by the retained statistic satisfy \(h_s\leq2r\). Therefore, regardless of which subset is active,
  \[
  \sum_{s\geq1:\ {\rm active\ at}\ x}h_s^k
  \leq\sum_{s:\ h_s\leq2r}h_s^k
  \leq C_{{\rm act},k}r^k.
  \]
  This uses the dyadic ratio \(2^k>1\) and is valid for all \(k>1\).
- Residual-to-target adequacy: no transformed target is used. The produced pointwise charge is in the same residual \(r=\lvert x-m_0\rvert\) whose \(k\)-moment step_001 controls. There is no uncontrolled distance-to-active-cell residual.
- Key positive/control term or structural source: child-padding exclusion for the target and four-color spatial separation for aliases.
- Opposing defect terms: arbitrarily many candidate cells, activation across many scales, negative indices, and target activity close to \(m_0\).
- Closure/dominance/absorption relation: one active ring per retained color/scale and \(h_s\leq2r\) reduce the entire candidate family to one dyadic geometric series charged to \(r^k\).
- Accumulation behavior / scope compatibility: finite-budgeted over all declared levels with nonnegative accumulated forcing \(\sum h_s^k{\bf1}_{\rm active}\). The one-scale charge is \(h_s^k\leq(2r)^k\), and dyadic growth makes the sum at most a fixed \(k\)-dependent multiple of its largest permitted term. The budget is valid even if every permitted scale is active and hence covers fixed \(S\) without a level-count factor.
- Obligation locality classification: step-local
- Noncircular closure status: the charge follows from deterministic geometry alone, before any variance claim; step_004 to step_005 is the sole consumer path and does not assume a moment bound beyond the earlier recenter output.
- Entry-state / first-update stress result: at \(r=0\), the child padding contains \(x=m_0\) at every \(s\geq1\), and no non-target padding reaches \(m_0\); both sides of the ledger are zero. At the first higher level \(s=1\), target activation already forces \(r\geq h_1/2\).
- Baseline conclusion preserved: if \(x\in J_0\), no retained higher target ring is active; any same-color non-target ring is spatially separated and cannot contain \(x\). The higher-level charge is exactly zero.
- Producer-consumer provenance: step_004 produces the all-alias geometric ledger consumed by step_005.
- Null or boundary regime tested: \(r=0\), \(r<h_1/2\), equality at a child-padding endpoint, \(q=\pm1\), negative ancestors, \(S=1\), and \(k=2\).
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Mean-zero aliases can still have positive second moment and would otherwise introduce dependence on the number of candidate cells or levels.
- Repair route if source is unsupported: None; both target and nearest-alias distance inequalities are explicit direct obligations.

### step_005

- Step ID: step_005
- Claim class: finite conditional variance, all-alias second-moment transfer, and exact \(k=2\) accounting.
- Theorem role: supplies the base-estimator scale needed for order-optimal median amplification.
- Mechanism source: direct use of the second dither identity and the exact \(W_i\) coefficients. With
  \[
  \mathcal A_s(x,c)=\left\{x\in\bigcup_{j\equiv j_s\ ({\rm mod}\ 4)}
  {\cal R}_{s,j,b_s}\right\},
  \]
  step_002 boundedness and \(\lvert d_s\rvert\leq h_s\) give, for \(s\geq1\),
  \[
  \mathbb E[W_i(c)^2{\bf1}\{L_i=s\}\mid X_i=x,c]
  \leq C\,\frac{h_s^2}{p_s}{\bf1}_{\mathcal A_s(x,c)}
  =C Z_Sh_s^k{\bf1}_{\mathcal A_s(x,c)}.
  \]
  The level-zero term is at most \(C h_0^2/p_0=CZ_Sh_0^k\).
- Source-to-claim adequacy: step_004 sums every target and non-target activation, so
  \[
  \mathbb E[W_i(c)^2\mid c]
  \leq C Z_S\{h_0^k+\mathbb E[|X-m_0|^k\mid c]\}
  \leq C_k^{\rm var}\sigma^kZ_S
  \]
  on \(\mathcal E_{\rm loc}\), using \(h_0=a_k\sigma\) and step_001. Variance is bounded by this second moment. At \(k=2\), \(p_s=1/(S+1)\) and the pointwise ledger sums \(h_s^2\) before expectation, so the only level factor is \(Z_S=S+1\); no second \(S\) is introduced.
- Residual-to-target adequacy: the produced control is the conditional variance of the exact \(W_i(c)\) consumed by step_007, under the same scalar metric and conditional law. The mean \(\theta(c)\) need not be separately bounded because \(\operatorname{Var}(W\mid c)\leq\mathbb E W^2\mid c\). All alias classes are included; there is no untransferred target-only residual.
- Key positive/control term or structural source: the importance allocation identity \(h_s^2/p_s=Z_Sh_s^k\) combined with the activation charge.
- Opposing defect terms: same-color alias squares, coordinate and mass types, target \(d_s\), level-zero activity, importance weights \(p_s^{-1}\), and the \(k=2\) number of levels.
- Closure/dominance/absorption relation: coordinate and mass squares are each bounded by \(Ch_s^2/p_s\); aliases and targets share the step_004 ledger; level zero is \(CZ_Sh_0^k\); step_001 absorbs \(h_0^k+\mathbb E r^k\) into \(C_k\sigma^k\).
- Accumulation behavior / scope compatibility: nonnegative second-moment charges accumulate over the mutually exclusive level choice. The concrete finite-budget relation is
  \[
  \sum_{s=1}^S Z_Sh_s^k{\bf1}_{\mathcal A_s(x,c)}
  \leq C_{{\rm act},k}Z_S\lvert x-m_0\rvert^k.
  \]
  The one-step charge is \(Z_Sh_s^k\), its sign is nonnegative, and the geometric budget is finite uniformly in \(S\). For \(k=2\), this relation, rather than a separate bound at each level, rules out an \(S^2\) accumulation.
- Obligation locality classification: step-local
- Noncircular closure status: step_001 provides the moment and step_004 the activation budget before step_005; step_005 produces variance before step_007. No concentration or final success event is assumed to prove variance.
- Entry-state / first-update stress result: if \(X=m_0\) almost surely, higher levels are inactive and the base target dither also has zero amplitude, so the second moment is zero. If \(D\) is supported in \(J_0\), only the explicitly bounded level-zero term remains.
- Baseline conclusion preserved: the supported-in-\(J_0\) variance is the level-zero variance and carries no artificial \(Z_S\)-times-tail or higher-ring charge beyond the legal importance factor already in \(p_0^{-1}\).
- Producer-consumer provenance: step_001 plus step_004 produce the inputs; step_005 exports \(V_k=C_k^{\rm var}\sigma^kZ_S\) to step_007 and step_008.
- Null or boundary regime tested: \(k=2\), \(S=1\), \(d_s=0\), coordinate amplitude zero, mass amplitude one, target-only activity, alias-only activity, and zero-variance laws.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Target-mean cancellation alone gives no variance bound, and per-level integration can create a spurious logarithmic loss.
- Repair route if source is unsupported: None; exact per-level second-moment and all-alias budget interfaces are exposed.

### step_006

- Step ID: step_006
- Claim class: residual-to-target tail bridge, three-regime normalizer evaluation, threshold choice, and baseline exactness.
- Theorem role: transfers the truncated mean \(\theta(c)\) to \(\mu-m_0\) at error scale \(\epsilon\) and identifies the exact public refinement complexity.
- Mechanism source: direct moment-tail inequality from the step_001 recentered moment and the step_002 inclusion \([m_0-H,m_0+H]\subset J_S\), plus elementary finite geometric-series evaluation of \(Z_S\).
- Source-to-claim adequacy: outside \(J_S\), \(r=|X-m_0|>H\), so
  \[
  |\mathbb E[r\,{\rm sgn}(X-m_0){\bf1}_{J_S^c}]|
  \leq\mathbb E[r{\bf1}\{r>H\}]
  \leq H^{1-k}\mathbb E r^k
  \leq C_k^{\rm rec}\sigma^kH^{1-k}.
  \]
  Since \(H\geq H_\star\), choosing \(b_k^{k-1}\geq4C_k^{\rm rec}\) makes this at most \(\epsilon/4\). The ratio \(H_\star/h_0\geq2\), enforced by a \(k\)-only choice of \(c_k\), gives \(H_\star\leq H<2H_\star\). The three geometric sums then have exactly the stated regimes.
- Residual-to-target adequacy: produced object \(\theta(c)\), consumed object \(\mu-m_0\), theorem norm absolute value, and residual \(R_{\rm tail}(c)=\mathbb E[(X-m_0){\bf1}_{J_S^c}\mid c]\) are linked by the exact step_003 decomposition. The residual's only source is the recentered \(k\)-moment; the required scale is \(\epsilon/4\); \(H_\star\) and \(b_k\) dominate it uniformly. There are no uncontrolled empirical, fixed, or event-level residuals.
- Key positive/control term or structural source: the moment decay \(r{\bf1}\{r>H\}\leq r^k/H^{k-1}\) and the explicit outer radius \(H\).
- Opposing defect terms: outer bias; dyadic rounding \(H/H_\star\); additive constants in \(S+1\); and regime-dependent powers in \(Z_S\).
- Closure/dominance/absorption relation: \(b_k\) absorbs the tail constant, \(H<2H_\star\) absorbs dyadic rounding, and the finite geometric-series inequalities retain every regime term without prose-only dropping.
- Accumulation behavior / scope compatibility: tail control is a single residual, not repeated. The normalizer is a finite nonnegative sum: for \(k>2\) it is bounded by the first term times \(1/(1-2^{2-k})\); for \(k=2\) it equals \(S+1\); for \(1<k<2\) it is bounded by the last term times \(1/(1-2^{k-2})\). These exact budgets are valid for the declared fixed \(S\).
- Obligation locality classification: step-local
- Noncircular closure status: step_001 produces the moment, step_002 the outer inclusion, and step_003 the residual decomposition before step_006. Step_006 exports bias and rates to step_007/008 without assuming final accuracy.
- Entry-state / first-update stress result: if the law is supported in \(J_0\), then it is supported in \(J_S\), so the tail residual is identically zero before any truncation inequality is used. If \(H_\star/h_0=2\), then \(S=1\) and the same geometric formulas hold.
- Baseline conclusion preserved: supported-in-\(J_0\) and bounded-inside-\(J_S\) laws have exactly zero tail bias, not merely an \(O(\epsilon)\) surrogate.
- Producer-consumer provenance: steps step_001-step_003 produce the inputs; step_006 exports the \(\epsilon/4\) target bridge, \(Z_S\) regimes, and refinement complexity scale to step_007-step_008.
- Null or boundary regime tested: \(k\downarrow1\) or \(k\downarrow2\) only with fixed \(k\) constants, \(k=2\) exactly, \(\epsilon=c_k\sigma\), \(H_\star/h_0=2\), atoms at \(J_S\) endpoints, and zero outer mass.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. An unrestricted finite-moment law can put rare mass beyond \(J_S\), making the truncated mean differ from the target.
- Repair route if source is unsupported: None; the exact residual, scale, constant choice, rounding, and regime sums are identified.

### step_007

- Step ID: step_007
- Claim class: conditional finite-sample concentration and confidence amplification.
- Theorem role: estimates the exact truncated residual mean \(\theta(c)\) to accuracy \(\epsilon/2\) with conditional failure at most \(\delta/2\).
- Mechanism source: direct conditional Chebyshev and Hoeffding derivation. Given the localization transcript with \(c\in\mathcal E_{\rm loc}\), assump:independent-samples makes the refinement \(W_i(c)\) iid with mean \(\theta(c)\) from step_003 and variance at most \(V_k=C_k^{\rm var}\sigma^kZ_S\) from step_005.
- Source-to-claim adequacy: choose \(\beta_k\geq16C_k^{\rm var}\). Then \(B_{\rm ref}\geq\beta_k\sigma^kZ_S/\epsilon^2\) implies
  \[
  \Pr\{|\overline W_g-\theta(c)|>\epsilon/2\mid c\}
  \leq \frac{4V_k}{B_{\rm ref}\epsilon^2}\leq\frac14.
  \]
  Conditional independence across disjoint groups makes their failure indicators independent with means at most \(1/4\). If the median fails, at least \(G_\delta/2\) groups fail; Hoeffding gives at most \(\exp(-G_\delta/8)\). A universal sufficiently large \(\alpha_k\) makes this at most \(\delta/2\).
- Residual-to-target adequacy: the group means and median all estimate the same produced scalar \(\theta(c)\) under absolute value; there is no transformed estimator target. Step_006 separately transfers \(\theta(c)\) to \(\mu-m_0\) with residual at most \(\epsilon/4\), so the combined target error is at most \(3\epsilon/4<\epsilon\).
- Key positive/control term or structural source: each group succeeds with probability strictly above \(1/2\), and the median converts that margin into exponential confidence.
- Opposing defect terms: finite block variance, group failures, odd-group ceiling, and conditioning on random \(c\).
- Closure/dominance/absorption relation: \(\beta_k\) makes the block failure at most \(1/4\); the \(1/4\) majority margin yields \(\exp(-G_\delta/8)\); uniformity of the variance and bias bounds over every successful \(c\) permits integration in step_008.
- Accumulation behavior / scope compatibility: the accumulated forcing is the nonnegative failure count \(S_G=\sum_g{\bf1}\{\text{group }g\text{ fails}\}\). Each one-group charge has conditional mean at most \(1/4\); independence and Hoeffding control \(\Pr(S_G\geq G_\delta/2)\) at the declared finite \(G_\delta\). No persistent estimation error is added across groups; the median selects rather than sums group errors.
- Obligation locality classification: step-local
- Noncircular closure status: variance and mean are produced in step_003/005 before group success is defined. Conditional independence follows from the primitive block split, not from the desired event. The output flows step_007 to step_008.
- Entry-state / first-update stress result: if \(V_k=0\), every group mean equals \(\theta(c)\) almost surely and the median is exact. For the minimal odd group count, the same majority implication holds. Conditioning on a boundary value of \(c\) changes only deterministic path labels, not query laws.
- Baseline conclusion preserved: on the supported-in-\(J_0\) baseline, the median amplifies the level-zero unbiased estimate of \(\mu-m_0\); no higher-ring or tail remainder is introduced.
- Producer-consumer provenance: step_003 mean plus step_005 variance and primitive conditional independence produce the conditional refinement-success event; step_008 consumes it.
- Null or boundary regime tested: \(\delta\uparrow1/2\), \(G_\delta\) at its smallest odd value, zero variance, exact group ties under a fixed median convention, and random \(c\) at a cell tie.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. A constant-probability block estimator alone does not satisfy arbitrary confidence \(\delta\).
- Repair route if source is unsupported: None; the exact block threshold, probability margin, group count, and conditioning path are stated.

### step_008

- Step ID: step_008
- Claim class: unconditional PAC closure, protocol legality, one-bit accounting, and public rate specialization.
- Theorem role: assembles every generated output into the exact formalized theorem without changing scope or hiding dependence.
- Mechanism source: primitive precommitment and independence assumptions plus the accepted outputs of step_001-step_007. Query legality is a direct current-notation derivation: each fixed mask realization makes \(F_i\) a bounded Borel function, \(A_i=\{F_i\geq U_i\}\) is Borel, and \(Y_i\) is the sole transmitted refinement bit; \(Y_i^0\) is decoder-computable public randomness. The path and \(W_i(c)\) are post-transcript decoder computations only.
- Source-to-claim adequacy: on \(\mathcal E_{\rm loc}\), step_006 and step_007 give error below \(\epsilon\) except with conditional probability \(\delta/2\). Therefore
  \[
  \Pr\{|\widehat\mu-\mu|>\epsilon\}
  \leq\Pr(\mathcal E_{\rm loc}^c)
    +\Pr(\{|\widehat\mu-\mu|>\epsilon\}\cap\mathcal E_{\rm loc})
  \leq\delta/4+\delta/2\leq\delta.
  \]
  Step_006 gives the three forms of \(A_k=\sigma^kZ_S/\epsilon^2\). Because \(A_k\gtrsim_k1\), \(B_{\rm ref}\lesssim_k A_k\), \(G_\delta\lesssim\log(1/\delta)\), and the localization \(1+\log(4/\delta)\) cost is absorbed by \(A_k\log(1/\delta)\). This yields exactly \(C_kr_k\).
- Residual-to-target adequacy: final estimator \(\widehat\mu=m_0+\operatorname{med}_g\overline W_g\) and target \(\mu\) are compared in the theorem's absolute-value norm through
  \[
  |\widehat\mu-\mu|
  \leq\lvert\operatorname{med}_g\overline W_g-\theta(c)\rvert
      +|\theta(c)-(\mu-m_0)|.
  \]
  Step_007 controls the first term at \(\epsilon/2\), step_006 the second at \(\epsilon/4\), and no residual is uncontrolled.
- Key positive/control term or structural source: independent-block conditioning, explicit confidence split, exact generated-output chain, and lower bound \(A_k\gtrsim_k1\) for ceiling absorption.
- Opposing defect terms: localization failure, conditional refinement failure, tail bias, ceilings in \(B_{\rm ref},G_\delta,S\), additive localization confidence, and any hidden query adaptivity.
- Closure/dominance/absorption relation: union bound controls the two failure classes; triangle inequality controls the two error classes; exact precommitment removes adaptive dependence; and explicit inequalities absorb ceilings and additive costs into the displayed public terms.
- Accumulation behavior / scope compatibility: confidence defects are two finite events with nonnegative probabilities, accumulated once by the union bound. Sample costs are two finite block sizes, accumulated once by addition. No all-time or stopping-time upgrade is claimed.
- Obligation locality classification: step-local
- Noncircular closure status: every event, moment, geometry, variance, bias, concentration, and rate output is produced by step_001-step_007 before final assembly. Query legality comes directly from primitive seeds and step_002; the final theorem assumes none of its generated consequences.
- Entry-state / first-update stress result: all queries in both blocks exist before the first response. In the source trivial localization branch the decoder center is already defined; in refinement the first bit uses its pre-drawn level/color/type/branch/masks/dither. On localization failure, the estimator remains defined and the proof pays that event rather than assuming it away.
- Baseline conclusion preserved: for laws supported in selected \(J_0\), the assembled theorem uses the exact level-zero reduction and zero tail bias. For \(X=m_0\) almost surely, the refinement correction is exactly zero and \(\widehat\mu=m_0=\mu\) on localization success.
- Producer-consumer provenance: primitive protocol conditions and all earlier step outputs feed step_008; its sole consumer is final proof assembly.
- Null or boundary regime tested: \(\lambda=\sigma\), \(\epsilon=c_k\sigma\), \(\delta\uparrow1/2\), \(S=1\), \(k=2\), point masses, arbitrary atoms on query boundaries, localization failure, and zero transmitted-baseline overhead.
- Target conclusion false or theorem-critical obstruction present if source vanishes: yes. Dropping independence, the tail bridge, confidence conversion, or ceiling absorption changes either protocol class, PAC mode, or displayed rate.
- Repair route if source is unsupported: None; every producer, conversion, and public simplification is assigned to an earlier step or this final direct assembly.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| ----------------------------------- | ----------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ------------------------- |
| \(\mathcal E_{\rm loc}\), \(\lvert c-\mu\rvert\leq50\sigma\), \(\lvert m_0-\mu\rvert\leq3h_0/4\), \(M_k(c)\leq C_k^{\rm rec}\sigma^k\), and \(N_{\rm loc}\) cost | step_001; Lau-Scarlett arXiv:2604.07796v2 Theorem 16, label thm: alternative localization, plus midpoint/nearest-center wrappers; source deterministic \(Q_t(X)\) maps to current Borel-set bits, and its known non-output is a scalar center/refinement property | Primitive parameter, iid, and precommitment assumptions; source first-moment hypothesis follows from assump:moment-class by Lyapunov; source interval \(I\ni\mu\), \(\lvert I\rvert\leq100\sigma\), failure \(\delta/4\), additive logarithmic cost | Controlled: source failure by \(\delta/4\), interval radius by \(50\sigma\), grid residual by \(h_0/2\), moment shift by triangle-power inequality. Uncontrolled: none on \(\mathcal E_{\rm loc}\); failure is retained explicitly for step_008 | Produced \(I\to c\to m_0\), consumed target \(\mu\), norm absolute value; \(\lvert m_0-\mu\rvert\leq h_0/2+50\sigma\leq3h_0/4\). Same-target residuals are both dominated | Choose \(a_k\geq200\); \(M_k(c)\leq2^{k-1}[\sigma^k+(3a_k\sigma/4)^k]\) | Source containment margin and \(h_0/4-50\sigma\geq0\) slack | step_002, step_003, step_005, step_006, step_007, step_008 | None |
| Exact nested path, disjoint \(R_s\), \(\dot\cup_sR_s=J_S\), \([m_0-H,m_0+H]\subset J_S\), \(\lvert d_s\rvert\leq h_s\), bounded Borel \(F_i\) | step_002 direct dyadic derivation | Exact half-open cells, \(j_{s-1}=2j_s+b_s\), four colors, coordinate/mass definitions | Controlled: endpoint ambiguity by half-open rule; overlap by four-color spacing; amplitude by \(3/4\) coordinate and \(1\) mass bounds. Uncontrolled: none | Exact produced and consumed sets; no surrogate. Outer containment has zero residual in the theorem metric | One-step identity \(J_s=J_{s-1}\mathbin{\dot\cup}R_s\); finite iteration gives exact union | One-cell same-color gap and child-padding inclusion | step_003, step_004, step_005, step_006, step_008 | None |
| \(\mathbb E[W_i(c)\mid X=x,c]=(x-m_0){\bf1}_{J_S}(x)\) and \(\theta(c)\) | step_003 direct dither/mask derivation | step_002 boundedness/partition; primitive independence of \(U,L,C,T,B,\rho\) from \(c,X\) | Controlled: target selection probabilities by exact importance factors; non-target means by independent-mask orthogonality; ring gaps by exact telescope. Persistent residual: only outer \(J_S^c\) term, exported to step_006 | Produced \(\theta(c)\), consumed \(\mu-m_0\); exact residual \(\mu-m_0-\theta(c)=\mathbb E[(X-m_0){\bf1}_{J_S^c}]\), same absolute metric | \(\mathbb E_U\Delta=f/2\); \((x-m_s)+d_s=x-m_0\); aliases equal zero; target rings sum exactly | Target mask self-correlation \(\rho^2=1\) and exact probability inversion | step_006, step_007, step_008 | None |
| All-retained-ring activation ledger \(\sum_{s\geq1:{\rm active}}h_s^k\leq C_{{\rm act},k}\lvert x-m_0\rvert^k\) | step_004 direct geometry | step_002 child padding, path ancestry, and four-color spacing | Controlled: target activity by \(h_s\leq2r\); aliases by \(h_s\leq r/2\); number of scales by dyadic sum. Uncontrolled: none | Charge and consumed moment use the same \(r=\lvert x-m_0\rvert\); no distance surrogate or wrong metric | \(\sum_{h_s\leq2r}h_s^k\leq C_kr^k\), valid even if all eligible scales activate | Child padding contains radius \(h_s/2\); aliases are at least \(2h_s\) away | step_005 | None |
| \(V_k(c):=\operatorname{Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^kZ_S\) on \(\mathcal E_{\rm loc}\) | step_005 direct second-moment transfer in the exact setting convention | step_001 \(M_k(c)\), step_002 amplitudes/\(d_s\), step_003 \(\mathbb E_U\Delta Y^2=\lvert F\rvert/2\), step_004 all-alias ledger, exact \(p_s\) | Controlled: coordinate/mass/alias squares by \(Ch_s^2/p_s=CZ_Sh_s^k\); level zero by \(CZ_Sh_0^k\). Uncontrolled: none; target mean is harmless under \(\operatorname{Var}\leq\mathbb E W^2\) | Exact variance of the statistic consumed by MoM under the same conditional law; no target-only omission | \(CZ_S[h_0^k+\mathbb E r^k]\leq C_k^{\rm var}\sigma^kZ_S\). At \(k=2\), pointwise summation yields one \(Z_S=S+1\) only | Recentered moment and geometric activation budget | step_007, step_008 | None |
| Tail residual at most \(\epsilon/4\), \(H_\star\leq H<2H_\star\), and exact three-regime \(Z_S,A_k\) | step_006 direct moment tail and geometric sums | step_001 recentered moment; step_002 outer inclusion; step_003 exact residual; primitive parameter domain | Controlled: tail by \(C_k^{\rm rec}\sigma^k/H^{k-1}\); rounding by factor \(2\); sum endpoints by geometric constants. Uncontrolled: none | Produced \(\theta(c)\), target \(\mu-m_0\), residual exactly outer expectation in absolute value; required scale \(\epsilon/4\), dominated by \(b_k^{1-k}C_k^{\rm rec}\epsilon\) | Choose \(b_k^{k-1}\geq4C_k^{\rm rec}\), then evaluate first-term/flat/last-term geometric sums; substitute \(H\asymp H_\star\) without dropping factors | Tail threshold \(H_\star\) and \(b_k\) slack; \(c_k\) ensures \(H_\star/h_0\geq2\) | step_007, step_008 | None |
| Conditional refinement event \(\lvert\operatorname{med}_g\overline W_g-\theta(c)\rvert\leq\epsilon/2\) with failure at most \(\delta/2\) | step_007 direct Chebyshev-Hoeffding MoM | step_003 conditional mean, step_005 variance, primitive conditional iid block structure | Controlled: per-group failure by \(\beta_k\); majority failure by \(\alpha_k\); group/block ceilings explicitly. Uncontrolled: none for successful \(c\) | Median estimates the exact same \(\theta(c)\) in absolute value; step_006 supplies the only target-transfer residual | \(4V_k/(B_{\rm ref}\epsilon^2)\leq1/4\), then \(\Pr(S_G\geq G/2)\leq e^{-G/8}\leq\delta/2\) | Probability margin \(1/2-1/4=1/4\) and odd \(G_\delta\) | step_008 | None |
| Unconditional one-bit PAC theorem and \(n\leq C_kr_k\) | step_008 direct assembly | All prior exports; primitive precommitment; exact definitions of \(A_i,Y_i,Y_i^0,W_i,\widehat\mu\) | Controlled: error residuals by \(\epsilon/2+\epsilon/4\); failures by \(\delta/4+\delta/2\); ceilings by \(A_k\gtrsim_k1\); localization confidence by \(A_k\log(1/\delta)\). Uncontrolled: none | Final estimator and \(\mu\) share absolute metric; exact two-term error decomposition has every residual dominated at scale below \(\epsilon\) | Triangle inequality, union bound, \(B_{\rm ref}\lesssim_kA_k\), \(G_\delta\lesssim\log(1/\delta)\), source cost, and three explicit substitutions | Remaining error slack \(\epsilon/4\), confidence slack \(\delta/4\), and \(A_k\gtrsim_k1\) | final theorem assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --------------------------- | ----------------------- | --------- | ----------------- | --------------- | ---------------- | -------------------- |
| Localization interval \(I\), scalar \(c\), event \(\mathcal E_{\rm loc}\), and localization cost | step_001 from Lau-Scarlett arXiv:2604.07796v2 Theorem 16, label thm: alternative localization: map \(\eta=\delta/4\), iid \(X\), and deterministic \(Q_t(X)\) to current local samples/Borel-set bits; discharge \(\mathbb E\lvert X-\mu\rvert\leq\sigma\) by Lyapunov; source outputs \(I\ni\mu\), \(\lvert I\rvert\leq100\sigma\), and cost but not a scalar; midpoint/nearest-center wrappers supply the consumed objects under compatible conventions | step_002, step_003, step_005, step_006, step_007, step_008 | centers the decoder path; supplies independence, failure budget, recentering input, and additive localization cost | primitive assumptions \(\to\) cited theorem \(\to I\to c\to\mathcal E_{\rm loc}\to\) consumers | derived | None |
| Core membership and \(M_k(c)\leq C_k^{\rm rec}\sigma^k\) | step_001 nearest-center and recenter derivation | step_005, step_006, step_007, step_008 | controls all refinement variance and tail bias uniformly | \(\mathcal E_{\rm loc}\to \lvert c-\mu\rvert\to\lvert m_0-\mu\rvert\to M_k(c)\to\) consumers | derived | None |
| Path partition, outer containment, \(d_s\) bound, and bounded Borel query certificate | step_002 | step_003, step_004, step_005, step_006, step_008 | legal fixed query protocol and exact ring/tail geometry | primitive definitions \(\to\) dyadic endpoint derivation \(\to\) consumers | derived | None |
| Exact target mean \(\theta(c)\) and outer-residual decomposition | step_003 | step_006, step_007, step_008 | identifies what MoM estimates and its exact relation to \(\mu\) | step_002 plus primitive dither/mask independence \(\to\) step_003 \(\to\) consumers | derived | None |
| All-alias activation budget | step_004 | step_005 | converts candidate-cell activity to one recentered \(k\)-moment | step_002 geometry \(\to\) step_004 \(\to\) step_005 | derived | None |
| Conditional variance \(V_k\leq C_k^{\rm var}\sigma^kZ_S\) | step_005 | step_007, step_008 | determines \(B_{\rm ref}\) and all three refinement rates | step_001 + step_002 + step_003 + step_004 \(\to\) step_005 \(\to\) consumers | derived | None |
| Tail bias \(\leq\epsilon/4\), \(Z_S\) regimes, and \(A_k=\sigma^kZ_S/\epsilon^2\) regimes | step_006 | step_007, step_008 | transfers truncated mean to target and specializes sample complexity | step_001 + step_002 + step_003 \(\to\) step_006 \(\to\) consumers | derived | None |
| Conditional refinement-success event | step_007 | step_008 | supplies \(\epsilon/2\) stochastic error and \(\delta/2\) failure budget | step_003 + step_005 + primitive conditional iid \(\to\) step_007 \(\to\) step_008 | derived | None |
| Query legality, exact one-bit accounting, unconditional PAC event, and public \(C_kr_k\) bound | step_008 | final assembly | is the formalized theorem | all prior generated outputs plus primitive protocol assumptions \(\to\) step_008 | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| step_001 | With \(\eta=\delta/4\), the exact localization block is precommitted and always defined; it produces \(\mathcal E_{\rm loc}\) with probability at least \(1-\delta/4\), \(L_k=50\), and \(N_{\rm loc}\leq C_{{\rm loc},k}[1+\log(\lambda/\sigma)+\log(4/\delta)]\). Its midpoint and nearest-center wrappers give \(\lvert m_0-\mu\rvert\leq3h_0/4\) for \(a_k\geq200\) and \(M_k(c)\leq C_k^{\rm rec}\sigma^k\). | None | Primitive: assump:parameter-domain, assump:moment-class, assump:independent-samples, assump:precommitted-protocol | Exact source identity/interface, interval-to-scalar compatibility, trivial localization branch, and recentering without assuming success | Lau-Scarlett arXiv:2604.07796v2 Theorem 16 (label thm: alternative localization), Appendix appendix: two-stage; Lyapunov; deterministic midpoint and nearest-grid wrapper | Generated localization, core, recentered-moment, independence, and cost certificate | Full rate objective: retain additive \(\log(\lambda/\sigma)+\log(4/\delta)+1\), source confidence \(\delta/4\), fixed horizon, and universal source constant before step_008 absorption | PENDING |
| step_002 | For every decoder value \(c\), prove nested ancestor paddings; pairwise-disjoint target rings with \(\dot\cup_{s=0}^SR_s=J_{S,j_S}\); \([m_0-H,m_0+H]\subset J_{S,j_S}\); \(\lvert d_s\rvert\leq h_s\); same-color padding disjointness; and joint Borel measurability and \([-1,1]\)-boundedness of every precommitted \(F_i\), including all half-open ties and negative indices. | step_001 | Primitive: assump:parameter-domain, assump:precommitted-protocol. Derived input: scalar \(c\) is always defined by step_001; no localization success is needed for deterministic geometry | Exact padded-ring arithmetic and countable-mask measurability | Direct interval endpoint calculation, Euclidean division \(j_{s-1}=2j_s+b_s\), four-color spacing, pointwise countable Borel sum | Exact path partition, outer containment, \(d_s\) bound, query legality geometry, and supported-in-\(J_0\) inactivity | None | PENDING |
| step_003 | For every fixed \(c\) independent of refinement, prove both dither identities, cancel every same-color non-target ring by fresh target-mask orthogonality, verify all constants in \(W_i(c)\), and obtain \(\mathbb E[W_i(c)\mid X_i=x,c]=(x-m_0){\bf1}_{J_S}(x)\) and the exact outer-residual decomposition of \(\mu-m_0\). | step_001, step_002 | Primitive: assump:independent-samples, assump:precommitted-protocol. Derived: bounded queries, path partition, \(d_s\) from step_002; independence of \(c\) and refinement from step_001 plus primitive split | Exact inversion of level/color/branch/type/dither probabilities and cancellation of infinitely many possible aliases without a cell union bound | Direct integration over \(U\), Rademacher self/cross moments, and finite target-ring telescope | Exact conditional mean \(\theta(c)\), zero alias bias, only outer residual, and baseline level-zero reduction | None | PENDING |
| step_004 | For \(r=\lvert x-m_0\rvert\), prove that every retained target or same-color non-target activation at \(s\geq1\) satisfies \(h_s\leq2r\), and hence \(\sum_{s\geq1:{\rm active}}h_s^k\leq C_{{\rm act},k}r^k\), uniformly over all cells, branches, boundaries, and \(S\). | step_002 | Primitive: assump:parameter-domain, assump:precommitted-protocol. Derived: exact child padding and color geometry from step_002 | The target and alias cases have different distance mechanisms; mean cancellation cannot omit alias squares | Direct child-padding radius calculation, nearest same-color alias separation, dyadic geometric sum | All-ring activation ledger with zero charge at \(r=0\) and on the supported-in-\(J_0\) higher-level baseline | None | PENDING |
| step_005 | Derive the exact per-level all-alias second-moment inequality and integrate step_004 to prove, on \(\mathcal E_{\rm loc}\), \(\operatorname{Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^kZ_S\). Treat level zero separately and prove explicitly that \(k=2\) incurs exactly one factor \(Z_S=S+1\), not \(S^2\). | step_001, step_002, step_003, step_004 | Primitive: assump:moment-class, assump:independent-samples, assump:precommitted-protocol. Derived: \(\mathcal E_{\rm loc},M_k(c)\) from step_001; amplitude/\(d_s\) from step_002; dither square identity from step_003; activation ledger from step_004 | Importance-weighted squares include all alias rings and a large \(p_s^{-1}\); summation order is theorem-critical | Direct conditional second-moment calculation; \(h_s^2/p_s=Z_Sh_s^k\); step_004 pointwise summation before expectation | Conditional variance \(V_k=C_k^{\rm var}\sigma^kZ_S\), uniform over successful \(c,D\), with all alias classes included | Full rate objective: preserve exact \(Z_S,\sigma,k,\epsilon\) dependence; \(k=2\) one-log certificate; conditional probability and absolute metric interfaces | PENDING |
| step_006 | Prove \(\lvert\mu-m_0-\theta(c)\rvert\leq C_k^{\rm rec}\sigma^k/H^{k-1}\leq\epsilon/4\) after a \(k\)-only \(b_k\) choice; verify \(H_\star\leq H<2H_\star\); and derive the three exact equivalences for \(Z_S\) and \(A_k=\sigma^kZ_S/\epsilon^2\), including endpoint and ceiling conditions. | step_001, step_002, step_003 | Primitive: assump:parameter-domain, assump:moment-class. Derived: recentered moment from step_001; outer inclusion from step_002; exact residual from step_003 | Same-target tail transfer and exact middle-regime logarithm without hidden term dropping | Direct moment-tail inequality, design choice \(b_k^{k-1}\geq4C_k^{\rm rec}\), dyadic rounding, three finite geometric-series calculations | Tail bias certificate, zero-tail baseline, scale admissibility, \(Z_S\) and \(A_k\) public rate interfaces | Full rate objective: expose all \(k,\sigma,\epsilon,S,H,H_\star,Z_S\); fixed \(k\); deterministic mode; verify every regime substitution and \(A_k\gtrsim_k1\) | PENDING |
| step_007 | Conditional on the localization transcript with \(c\in\mathcal E_{\rm loc}\), prove the \(W_i(c)\) are iid with mean \(\theta(c)\), each group fails the \(\epsilon/2\) target with probability at most \(1/4\), and the fixed odd median fails with probability at most \(\delta/2\) for legal \(k\)-only \(\beta_k,\alpha_k\). Combine with step_006 to obtain conditional total error below \(\epsilon\). | step_001, step_003, step_005, step_006 | Primitive: assump:parameter-domain, assump:independent-samples, assump:precommitted-protocol. Derived: successful-\(c\) interface from step_001, \(\theta(c)\) from step_003, \(V_k\) from step_005, tail/rate from step_006 | Uniform conditioning on a random decoder path, exact block/error constants, and no cellwise union bound | Direct conditional Chebyshev, independent group indicators, Hoeffding majority bound, triangle inequality | Conditional refinement event with stochastic error \(\epsilon/2\), total error at most \(3\epsilon/4\), and failure at most \(\delta/2\) | Full rate objective: \(B_{\rm ref}=\lceil\beta_kA_k\rceil\), \(G_\delta=2\lceil\alpha_k\log(8/\delta)\rceil+1\), fixed horizon, conditional-to-unconditional interface retained | PENDING |
| step_008 | Prove all localization/refinement query sets were fixed before any message and Borel, \(Y_i^0\) costs no bit, each sample transmits exactly one bit, and decoder selection adds no query. Then integrate the conditional result, show failure at most \(\delta/4+\delta/2\leq\delta\), and prove \(N_{\rm loc}+N_{\rm ref}\leq C_kr_k\) with all ceilings and localization-confidence terms explicitly absorbed. | step_001, step_002, step_003, step_004, step_005, step_006, step_007 | Primitive: assump:parameter-domain, assump:moment-class, assump:independent-samples, assump:precommitted-protocol. Derived: every named output of step_001-step_007 | Final generated-output closure must preserve zero adaptivity, unconditional PAC mode, all parameter dependence, and baseline exactness simultaneously | Tower property/conditioning, union and triangle bounds, Borel/precommitment audit, ceiling inequalities, step_006 regime substitutions and \(A_k\gtrsim_k1\) absorption | Exact formalized theorem, including one-bit/fixed-horizon protocol certificate, unconditional uniform confidence, and three public sample rates | Full Rate Specialization Bridge: verify auxiliary choices, \(H_\star/h_0\geq2\), tail and group thresholds, all ceilings, probability conversion, \(1+\log(4/\delta)\) absorption, final hidden-constant dependence only on \(k\), and supported-in-\(J_0\) baseline | PENDING |

## Dependency Notes

The graph is acyclic and every edge points to an earlier step:

\[
\begin{aligned}
&\text{step_001}\longrightarrow\text{step_002},\\
&(\text{step_001},\text{step_002})\longrightarrow\text{step_003},\\
&\text{step_002}\longrightarrow\text{step_004},\\
&(\text{step_001},\text{step_002},\text{step_003},\text{step_004})
  \longrightarrow\text{step_005},\\
&(\text{step_001},\text{step_002},\text{step_003})
  \longrightarrow\text{step_006},\\
&(\text{step_001},\text{step_003},\text{step_005},\text{step_006})
  \longrightarrow\text{step_007},\\
&(\text{step_001},\ldots,\text{step_007})
  \longrightarrow\text{step_008}.
\end{aligned}
\]

Step_004 is deliberately separate from step_005: it proves the deterministic all-alias support interface before any probabilistic moment integration. Step_006 is deliberately separate from variance: outer bias and \(Z_S\) specialization have different source terms and thresholds. Step_007 remains conditional only locally; step_008 is the sole conditional-to-unconditional conversion.

Boundary and degenerate cases are allocated, not deferred: the localization trivial branch and grid ties are in step_001; negative indices, child branches, half-open endpoints, \(S=1\), and Borel boundedness are in step_002; dither endpoints and target/non-target cancellation are in step_003; \(r=0\) and nearest aliases are in step_004; \(k=2\), zero variance, and alias-only activity are in step_005; zero tail and regime endpoints are in step_006; minimal odd group count and group ties are in step_007; and \(\lambda=\sigma\), localization failure, one-bit accounting, and all public ceiling/confidence absorptions are in step_008.

Assembly uses no unproved generated condition. On \(\mathcal E_{\rm loc}\), step_001 gives the recentered moment; step_002-step_005 give the exact mean and variance of the retained statistic; step_006 gives the only target residual and rate dictionary; step_007 gives conditional concentration; and step_008 pays localization failure and exposes the prescribed public theorem. The supported-in-\(J_0\) and point-mass baselines pass through the same chain with higher rings and tail residual exactly zero.

## Blockers

None.
