# Proof Step

## Step Identity

- Sketch attempt: 4
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every covered proposal slot, prove the simultaneous old-state recurrences
  
  \[
  R_{t+1}\leq\left(\frac{\Gamma R_t+q_{\rm real}}
  {1-\Gamma q_{\rm real}R_t}\right)^2,
  \qquad
  S_{t+1}\leq
  \frac{(\Gamma R_t+q_{\rm real})\{\Gamma(1+q_{\rm real})S_t+q_{\rm real}\}}
  {(1-\Gamma q_{\rm real}R_t)^2},
  \]
  whenever \(\Gamma R_t<1\); prove persistence of the denominator, the
  \(\chi_{\rm chart}=1/128\) projective chart and its fixed point after burn-in,
  the dual ratio-\(\ell _1\) variable \(a_t\), and a stored state with
  \(\zeta\leq\tau_r\) in \(L_{\rm cert}=O(\log r)\) sweeps.
- Depends on: `step_001`, `step_003`.
- Assumptions used: `E_sm`, `E_cov` (derived), and `assump:subquadratic-rank` (primitive).
- Technical challenge: first-update activation, fixed nonzero Gram forcing, ambient/projective norm conversion, and chart self-map.
- Intended proof tool: exact simultaneous old-state contraction expansion, invariant interval, Banach contraction, and dual \(\ell _1\) recurrence.
- Output target: `E_RS`, `E_chart`, `E_chart_l1`, `E_cert`.
- Rate objective: fixed horizon \(L_{\rm burn}+L_{\rm cert}\), with explicit \(\tau_r\), \(a_t\), \(L_{\rm chart}\), and horizon choices.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:subquadratic-rank`: \(r\geq3\), \(L_{\rm burn}=\lceil C_{\rm burn}\log r\rceil\), and \(L_{\rm cert}=\lceil C_{\rm cert}\log r\rceil\), with the prescribed rank and (r<k\leq n).
- Derived invariants supplied by accepted dependencies:
  - `E_sm` from accepted `step_001` proof/review (proof SHA-256 `7fab685e663df565c7e1ec99484ed86f5393e35aa0398047c23a866c29fc3362`, review SHA-256 `2acfd5b7208c925aa28de3a57045bf6c3a0ad25cb3a0512e0e920fce1904a177`): realized norms are at least \((2\kappa _0)^{-1}\), \(q_{\rm real}\leq q_*=1/4096\), \(\Gamma\leq1.01\), and the cyclic pair-Gram floors hold.
  - `E_cov` from accepted `step_003` proof/review (proof SHA-256 `1eab9835ce7ced429dae7cb80cfdb360a7272eda259d7a7d0a0d601a7c7c2143`, review SHA-256 `ee34b1419f401a25ef0d83ee61cedaf4a68cf110b3a2556d5895abac1ae792be`): every target has a slot in the jointly observable window, conditionally with probability at least (p_0=1/2).
- Local conditional hypotheses: None.  The window event is used only through the proved `E_cov` output; no trajectory basin or denominator property is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under `E_sm` and a covered window slot, the exact simultaneous old-state contraction gives the displayed (R,S) recurrences whenever (\Gamma R_t<1). | Exact recurrence and first-update activation. |
| `unit_002` | invariant | Under `E_sm` and the window entry, (R_t\leq19/20), denominators persist, (R_{10}\leq6\cdot10^{-8}), and the prescribed burn gives (S_{L_{\rm burn}}\leq q_*/16). | Noncircular denominator and pair-mass closure. |
| `unit_003` | lemma | After the first update, the target-span dual mass (a_t) obeys (a_{t+1}\leq2(\Gamma S_t+q_{\rm real})/(1-\Gamma q_{\rm real}R_t)), and (a_{L_{\rm burn}}\leq1/1024) implies the ambient (1/128) chart entry. | Ratio-\(\ell _1\) bridge and norm conversion. |
| `unit_004` | proposition | The oriented closed chart is a self-map with (L_{\rm chart}\leq16(q_*+1/512+1/128)<1/4); it has a unique projective fixed point and (\zeta\leq\tau_r) by the stated finite certification horizon. | Chart contraction, fixed point, and certification output. |

Atomic step = no.  The recurrence, invariant arithmetic, dual conversion, and projective contraction are independent nontrivial claims.

## Cited Result Applications

### Accepted static geometry and coverage outputs

The accepted `step_001` result supplies `E_sm` exactly as stated above.  The accepted `step_003` result supplies `E_cov`; by definition of its inherited `E_win(i,j)`, a covered slot has, for its target (j),
\[
|Z^{(U)}_{ij}|,|Z^{(V)}_{ij}|,|Z^{(W)}_{ij}|\in[t_r,t_r+t_r^{-1}],
\quad |Z^{(M')}_{i\ell}Z^{(M'')}_{i\ell}|leq b_*\log r
\]
for every competing pair and every \(\ell\neq j\).  These are exactly the raw coordinates used by the ratios below; normalization of an initial Gaussian cancels in each same-mode ratio.  No claim from the diagnostic global proof is used as evidence.

### Banach fixed-point theorem

If a self-map of a nonempty complete metric space has Lipschitz constant (L<1), it has a unique fixed point and its iterates converge geometrically with factor (L).  We apply this only after proving that the oriented chart is closed, complete, self-mapped, and has the displayed direct derivative bound.

## Local Derivation

Fix a realized tensor in `E_sm`, a covered target (j), and one witnessing slot.  Write (g_{U\ell}=u_\ell), (g_{V\ell}=v_\ell), (g_{W\ell}=w_\ell), (q=q_{\rm real}), and (gamma=\Gamma).  For an old state (h^t=(h_U^t,h_V^t,h_W^t)), use the setting's (A_\ell,B_\ell,C_\ell) ratios relative to (j).  All three entries of the next state are computed from this same (h^t).

### unit_001: lemma

\\label{lem:p1-i6-s004-recurrence}

**Lemma (Exact simultaneous old-state ratio recurrences).**  Under `E_sm`, if all target correlations are nonzero and \(\gamma R_t<1\), then the simultaneous old-state Jacobi update satisfies
\[
R_{t+1}\leq\left(\frac{\gamma R_t+q}{1-\gamma qR_t}\right)^2,
\qquad
S_{t+1}\leq
\frac{(\gamma R_t+q)\{\gamma(1+q)S_t+q\}}
{(1-\gamma qR_t)^2}.
\tag{1}
\]

**Proof.** Consider mode (M), with the other modes (N,P).  Put
\[
c_\ell=\lambda_\ell\langle g_{N\ell},h_N^t\rangle
\langle g_{P\ell},h_P^t\rangle,
\qquad x_M=\sum_\ell c_\ell g_{M\ell}.
\]
For the target, \(|c_j|=\lambda_j|\langle g_{Nj},h_N^t\rangle\langle g_{Pj},h_P^t\rangle|), and hence
\[
\frac{|\langle g_{Mj},x_M\rangle|}{|c_j|}
\geq1-\sum_{\ell\neq j}\frac{\lambda_\ell}{\lambda_j}B_\ell C_\ell
|\langle g_{Mj},g_{M\ell}\rangle|
\geq1-\gamma qR_t=:D_t>0.
\tag{2}
\]
For \(\ell\neq j\), the direct term is at most \(\gamma B_\ell C_\ell\leq\gamma R_t).  In the leakage sum, the coefficient ratio for the target index is (1), while for every other index it is at most \(\gamma R_t<1\).  Therefore the entire leakage sum is bounded by the absolute Gram row mass (q), giving
\[
\frac{|\langle g_{M\ell},x_M\rangle|}{|c_j|}\leq\gamma R_t+q.
\tag{3}
\]
Since normalization does not change ratios, (2)--(3) give each new ratio at most (F_t:=(\gamma R_t+q)/D_t).  Taking products gives the (R)-recurrence.

For the pair-mass bound, sum the new (M)-ratios over \(\ell\neq j).  The direct contribution is at most \(\gamma S_t).  In the leakage double sum, the term with source index (j) contributes at most (q), and all other source indices contribute at most \(\gamma qS_t).  Thus the summed numerator is at most \(\gamma(1+q)S_t+q\).  Multiplying this by the maximum new ratio (F_t), and retaining the second denominator (D_t), gives the (S)-recurrence in (1).  The same calculation applies to all three modes because the old state is held simultaneously. \(\square\)

### unit_002: invariant

\\label{inv:p1-i6-s004-burn}

**Invariant (Denominator persistence and burn arithmetic).** Under `E_sm` and the covered-slot window, (R_0\leq19/20), (S_0\leq rR_0), \(\gamma R_t<1) for all proposal sweeps through burn and certification, and, for
\[
L_{\rm burn}\geq10+\left\lceil\frac{\log(16r/q_*)}{\log4000}\right\rceil,
\tag{4}
\]
one has (R_{L_{\rm burn}}\leq6\cdot10^{-8}) and (S_{L_{\rm burn}}\leq q_*/16).

**Justification.** The raw window gives (R_0\leq b_*/a_*=19/20) and (S_0\leq rR_0).  The map
\[
f(x)=\left(\frac{\gamma x+q}{1-\gamma qx}\right)^2
\]
is increasing on (0\leq x<1/(\gamma q)).  With (q\leq1/4096), \(\gamma\leq101/100), direct rational substitution gives the following valid upper chain (each entry is (f) applied to the preceding displayed entry):
\[
\begin{array}{c|rrrrrrrrrrr}
t&0&1&2&3&4&5&6&7&8&9&10\\ \hline
R_t&.950&.922&.869&.772&.610&.380&.148&.023&.000560&.000000700&.000000060.
\end{array}
\tag{5}
\]
For example (f(.950)=.9215406<.922) and (f(.000000700)=5.996\cdot10^{-8}<6\cdot10^{-8}); the other entries follow by the same rational cross-multiplication.  In particular \(\gamma R_t\leq1.01(.950)<1\), and
\[
D_t=1-\gamma qR_t\geq1-q>31/32.
\tag{6}
\]

Write the (S)-recurrence as (S_{t+1}=\alpha_tS_t+\beta_t), with
\[
\alpha_t=\frac{\gamma(1+q)(\gamma R_t+q)}{D_t^2},qquad
\beta_t=\frac{q(\gamma R_t+q)}{D_t^2}.
\]
Substitution of the ten rational entries in (5) gives the conservative envelopes
\[
\begin{array}{c|rrrrrrrrrr}
t&0&1&2&3&4&5&6&7&8&9\\ \hline
\alpha_t&.971&.942&.888&.789&.623&.389&.152&.024&.000820&.000248\\
\beta_t&2.35\!\cdot10^{-4}&2.28\!\cdot10^{-4}&2.15\!\cdot10^{-4}&1.91\!\cdot10^{-4}&1.51\!\cdot10^{-4}&9.4\!\cdot10^{-5}&3.7\!\cdot10^{-5}&5.8\!\cdot10^{-6}&2.0\!\cdot10^{-7}&6.0\!\cdot10^{-8}
\end{array}
\tag{7}
\]
and iterating these affine bounds from (S_0\leq.95r) yields
\[
S_{10}\leq1.2\cdot10^{-10}r+6.1\cdot10^{-8}\leq r/64\qquad(r\geq3).
\tag{8}
\]
For every later time, (5) and monotonicity give \(\alpha_t\leq1/4000\), \(\beta_t\leq6\cdot10^{-8}\).  If (m=\lceil\log(16r/q_*)/\log4000\rceil), then
\[
S_{10+m}\leq4000^{-m}S_{10}+\frac{6\cdot10^{-8}}{1-1/4000}
\leq\frac{q_*}{1024}+6.1\cdot10^{-8}<\frac{q_*}{16}.
\tag{9}
\]
The same inequality is invariant for any additional burn sweeps.  Equations (5)--(9) prove the invariant and show that the denominator is never asserted before it is established. \(\square\)

### unit_003: lemma

\\label{lem:p1-i6-s004-dual-chart}

**Lemma (Dual ratio-\(\ell _1\) bridge and ambient conversion).** For every (t\geq1), each updated mode lies in \({\rm span}(G_M)\).  Let (H_M=G_M^\top G_M), (L_M=G_MH_M^{-1}), and (b_M^t=L_M^\top h_M^t).  Orient the target correlation positively and put
\[
a_t:=\max_M\sum_{\ell\neq j}|b_{M\ell}^t|.
\]
Then
\[
a_{t+1}\leq\frac{2(\gamma S_t+q)}{D_t},
\tag{10}
\]
and every oriented span state with (a(h)\leq1/512) satisfies
\[
\|h_M-g_{Mj}\|_2\leq2a(h)+4q.
\tag{11}
\]

**Proof.** The first update is a normalized linear combination of the columns of (G_M), so span membership holds from (t=1) onward.  Since (L_M^\top G_M=I), the off-target dual coefficients after the next update are the off-target contraction coefficients divided by \(\|x_M\|_2\).  By (2), \(\|x_M\|_2\geq|c_j|D_t); their sum is at most \(\gamma S_t/D_t\), which is stronger than (10).  We retain the displayed (2(\gamma S_t+q)/D_t) interface required by the sketch.

For (11), write (h_M=G_Mb), (b_j>0), and (b_{-j}) for the off-target coordinates.  The projected off-target vector has norm
\[
\|P_{g_{Mj}^{\perp}}h_M\|_2^2
\leq b_{-j}^{\top}(G_{M,-j}^{\top}G_{M,-j})b_{-j}
\leq(1+q)\|b_{-j}\|_2^2.
\]
For (a\leq1/512), the unit-vector identity and the last display imply
\(\|h_M-g_{Mj}\|_2\leq2\|b_{-j}\|_2\leq2a\); adding the nonnegative (4q) term gives (11).  Positivity of (b_j) follows from the chart orientation and \(|\langle g_{Mj},h_M\rangle-b_j|\leq qa\), while \(\langle g_{Mj},h_M\rangle\geq1-\chi_{\rm chart}^2/2>qa\). \(\square\)

### unit_004: proposition

\\label{prop:p1-i6-s004-chart}

**Proposition (Projective chart, fixed point, and certification horizon).** Define the oriented target chart
\[
\mathcal C_j=\{h:\ h_M\in{\rm span}(G_M),\ \langle g_{Mj},h_M\rangle>0,\ a(h)\leq a_{\rm chart}:=1/512,\ \|h_M-g_{Mj}\|_2\leq\chi_{\rm chart}:=1/128\ \forall M\}.
\]
For universal (C_{\rm burn},C_{\rm cert}) chosen so that (4) holds and
\[
L_{\rm cert}\geq\left\lceil\frac{\log(4/\tau_r)}{\log4}\right\rceil+1,
\tag{12}
\]
the oriented simultaneous Jacobi map is a self-map of \(\mathcal C_j), has Lipschitz constant
\[
L_{\rm chart}\leq16(q_*+a_{\rm chart}+\chi_{\rm chart})<1/4,
\tag{13}
\]
and has a unique projective fixed point in \(\mathcal C_j\).  The burn state is in \(\mathcal C_j\), and for the certification window there is a stored state with \(\zeta\leq\tau_r\).

**Proof.** For (h\in\mathcal C_j), unit-vector geometry gives (d_M:=\langle g_{Mj},h_M\rangle\geq1-\chi_{\rm chart}^2/2).  Using (h_M=G_Mb_M), the row-mass bound of (H_M), and (a(h)\leq1/512),
\[
\sum_{\ell\neq j}\frac{|\langle g_{M\ell},h_M\rangle|}{d_M}
\leq2(a(h)+q).
\tag{14}
\]
Consequently the pair-product maximum in a chart state is at most (4(a+q)^2), and the denominator in the next contraction is at least (1-4\gamma q(a+q)^2).  The coefficient calculation in the proof of Lemma~\ref{lem:p1-i6-s004-dual-chart} therefore gives
\[
a(\mathcal J(h))
\leq\frac{4\gamma(a+q)^2}{1-4\gamma q(a+q)^2}
\leq2(q+2a^2)\leq1/1024\leq a_{\rm chart},
\tag{15}
\]
where the middle inequality is direct rational arithmetic for (0\leq a\leq1/512), (0\leq q\leq1/4096), and \(\gamma\leq1.01\).  Lemma~\ref{lem:p1-i6-s004-dual-chart} and (15) give
\[
\|\mathcal J_M(h)-g_{Mj}\|_2\leq2a(\mathcal J(h))+4q
\leq2/1024+4/4096<1/128,
\tag{16}
\]
so the chart is a self-map.

For completeness, the direct difference calculation behind (13) is as follows.  Divide each contraction by its positive target coefficient (c_j(h)).  The target coordinate then cancels, and for two chart states (h,\widetilde h), the product rule, (d_M\geq1-\chi_{\rm chart}^2/2), and (14) give, in each held mode,
\[
\sum_{\ell\neq j}\left|\Delta\left(\frac{c_\ell}{c_j}\right)\right|
\leq8(q+a_{\rm chart}+\chi_{\rm chart})\,d_\infty(h,\widetilde h),
\tag{17}
\]
where (d_\infty=\max_M\|h_M-\widetilde h_M\|_2).  The row-mass and operator bounds \(\|G_M\|_2\leq\sqrt{1+q}<2\), (D_t^{-1}<2), and the elementary normalization inequality \(\|x/\|x\|-y/\|y\|\|\leq2\|x-y\|/\min(\|x\|,\|y\|)) multiply the right side of (17) by at most two.  Thus
\[
d_\infty(\widetilde{\mathcal J}(h),\widetilde{\mathcal J}(\widetilde h))
\leq16(q+a_{\rm chart}+\chi_{\rm chart})d_\infty(h,\widetilde h),
\]
which is (13).  Here \(\widetilde{\mathcal J}\) is the unique orientation of \(\mathcal J\) having positive target correlations; it is the projective map used by the algorithm's residual \(\zeta\).

At burn time (t_b=L_{\rm burn}), (10), (6), and (S_{t_b}\leq q_*/16) give
\[
a_{t_b}\leq\frac{2(1.01q_*/16+q_*)}{31/32}<1/1024.
\tag{18}
\]
Equation (11) then gives the \(1/128\) ambient bound, so the covered burn state lies in \(\mathcal C_j\).  The chart is a closed subset of the finite-dimensional product of target spans and is complete in (d_\infty).  Banach's theorem gives a unique projective fixed point (h_j^\star).  Since (L_{\rm chart}<1/4), the displacement from the fixed point obeys
\[
\zeta(h^{t_b+s})\leq(1+L_{\rm chart})d_\infty(h^{t_b+s},h_j^\star)
\leq3(1/4)^s.
\tag{19}
\]
With (12), (3\,4^{-L_{\rm cert}}\leq3\tau_r/16<\tau_r).  The procedure evaluates the stored state before the look-ahead commit, so the state at (t=t_b+L_{\rm cert}) itself is certified; no look-ahead state is exported. \(\square\)

## Target-Step Assembly

On the static event `E_sm` and the conditional coverage event `E_cov`, choose any covered slot and target.  The window gives (R_0\leq19/20) and (S_0\leq rR_0).  Lemma~\ref{lem:p1-i6-s004-recurrence} proves the exact simultaneous old-state recurrences.  Invariant~\ref{inv:p1-i6-s004-burn} proves, before every denominator is used, positivity and persistence, the explicit (R_{10}\leq6\cdot10^{-8}) bound, and (S_{L_{\rm burn}}\leq q_*/16) under the finite burn choice.  Lemma~\ref{lem:p1-i6-s004-dual-chart} supplies the ratio-\(\ell _1) output (a_t) and the ambient conversion.  Proposition~\ref{prop:p1-i6-s004-chart} then proves the closed (\chi_{\rm chart}=1/128) self-map, (L_{\rm chart}<1/4) projective fixed point, and the stored \(\zeta\leq\tau_r\) state within the finite certification window.  Taking the maximum over the finitely many covered slots yields exactly `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert`; no target labels enter the implemented proposal, certification, filtering, or clustering rule.

## Explicit Rate Audit

- Exposed variables: (r,q_*=1/4096,\Gamma\leq1.01,q_{\rm real}\leq q_*,R_0,S_0,\tau_r=q_*^2/(10^4r),L_{\rm burn},L_{\rm cert}), and the fixed universal constants (a_*=10/9,b_*=19/18).
- Hidden constants may depend on: numerical universal arithmetic constants only (and the fixed universal choices (C_{\rm burn},C_{\rm cert})).
- Hidden constants may not depend on: the deterministic base triple, (n,\kappa _0,\rho,\delta_{\rm sm},\delta_{\rm init},\epsilon), any slot or target, or an unlisted generated condition number.
- Fixed quantities: one realized tensor in `E_sm`, one conditional proposal tape satisfying `E_cov`, and the finite target set.
- Probability mode: conditional on `E_sm`, the statement is pathwise on `E_cov`; `step_003` supplies \(\Pr_{\rm init}(E_{\rm cov}\mid E_{\rm sm})\ge1/2\).  No smoothing and initialization probabilities are silently merged here.
- Horizon mode: fixed finite proposal horizon (L_{\rm burn}+L_{\rm cert}=O(\log r)); the chart fixed point is used only to bound this finite window, not as an all-time algorithmic claim.
- Norm mode: target-relative absolute ratios, pair-mass sums, dual coefficient row \(\ell _1\) mass, Euclidean ambient projective distance, and projective residual \(\zeta\).
- Admissibility conditions and auxiliary tolerances: `E_sm`, `E_cov`, (r\ge3), (4), and (12); no unproved denominator, basin, or conditioning condition is introduced.
- Term absorption or simplification inequalities: (5)--(9), (14)--(16), and (18)--(19) display all interval, forcing, chart, and horizon absorptions.
- Probability conversion: none beyond the accepted conditional `E_cov` interface.
- Contribution to any Rate Specialization Bridge: exports the finite chart and certification horizon used by `step_004b` and `step_005`.
- Baseline-reduction check: when (q_{\rm real}=0) and \(\Gamma=1\), (1) reduces to (A_\ell^+=B_\ell C_\ell), (B_\ell^+=A_\ell C_\ell), (C_\ell^+=A_\ell B_\ell), hence (R_{t+1}\leq R_t^2), (S_{t+1}\leq R_tS_t).  The exact component state is a projective fixed point with zero residual; no positive residual floor is introduced.

## Blockers

None.

## Notation And Assumption Notes

- (g_{M\ell},h_M^t,A_\ell,B_\ell,C_\ell,R_t,S_t,D_t,F_t) are `proof-local` translations or explicit expressions in the setting notation.  (H_M,L_M,b_M^t,a_t) are `appendix-local` dual-chart objects; only the generated interfaces `E_RS`, `E_chart`, `E_chart_l1`, and `E_cert` are `public-facing`.
- (q,γ,a_{\rm chart},\chi_{\rm chart},\tau_r,L_{\rm burn},L_{\rm cert}) are directly defined from setting quantities or explicitly fixed by the sketch.  The decimal interval envelopes in (5) and (7), and the bounds in (8)--(9), are proved by direct rational substitution from (q_*,\gamma\) and the named local recurrence; they are not free constants.
- `E_sm` and `E_cov` are derived invariants supplied by accepted dependencies.  Denominator positivity, span activation, (R,S) persistence, (a_t), chart membership, fixed-point existence, and certification are derived in this step.  No generated condition is treated as primitive or as a local conditional hypothesis.
- The accepted diagnostic `global_proof.md` and accepted `global_proof_review.md` were read as paired planning guidance (SHA-256 `2efd283cab1d4dd948afc3bb10932f0ef5702749f1750e33f5d6280a7dde154a` and `aa928f6a1ea0b9e541efcaabe9747921a369f8533598c117aaf646cb68ef892a`).  Its interval/chart split was used only for planning; it was not evidence, an assumption source, a cited result, or authority to alter the target claim.
- This artifact is bound to sketch SHA-256 `47c8c52f3921426b39ca9dfafcb7e11ae388e893ed115b7002641f849474626b` and accepted sketch-review SHA-256 `eda7c6672f755411db44e1ee214cf23ca1151429749140d0e3deffd4d5e40aa9`.
