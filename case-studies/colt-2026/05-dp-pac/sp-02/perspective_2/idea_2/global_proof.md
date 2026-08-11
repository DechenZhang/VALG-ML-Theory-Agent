# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_2`
- Goal mode: exact-goal mode; the theorem is conditional only through the three primitive assumptions in `setting.md`, not through any generated invariant.
- Sketch attempt: `1`
- Global producer attempt: `2`
- Reviewed `proof_sketch.md` SHA-256: `14e8f3e085477bf19dc0a37aaef61cb41f3aba8bfbe3df30ec62cc02cdd1177b`
- Reviewed `proof_sketch_review.md` SHA-256: `d8dacfddfc6a11a9dcaf6ad34d6599cac0b0b5f65a7a01d3f274b06b004caf7c`
- Reviewed `setting.md` SHA-256: `49c9a6758e675f6463a84f244605d0dbe06aecc05a592956cf24dfdfc0efa0e4`
- Sketch-review status: `ACCEPTED`, viability score `9`, smallest retry target `None`, retry mode `none`.
- Identity check: the current sketch digest equals the digest recorded by the accepted review. The current `proof_tracker.md` contains the running global row for sketch attempt `1`, global attempt `2`.
- Triggering review: global attempt `1` received `REVISE_GLOBAL` because its G7 wording did not expose the accepted first-\(R\) indexed-pool identity. This attempt repairs only that diagnostic bundle under the unchanged accepted sketch.
- Run mode and budget: `interactive`; idea index `2 <= 30`, sketch attempt `1 <= 10`, global producer attempt `2 <= 100`.

## Status

PARTIAL_BLOCKED

The theorem architecture closes without a global dependency defect, generated-output-flow defect, or theorem-contract contradiction. The remaining obligations are the nine accepted, independently reviewable local derivations. Every unresolved theorem-critical obligation below is classified `step-local`; no accepted claim, dependency, assumption, output target, mechanism source, scope, mode, metric, or conclusion needs to change.

## Attempted Theorem Claim

There are universal constants \(c,c_\delta>0\) and \(N_0\ge 2\) such that the following holds. Let \(k\ge 1\), \(N\ge N_0\), and let the finite class \(C\subseteq\{0,1\}^X\) satisfy `assump:minor-table`. Let

\[
A: (X\times\{0,1\})^m\rightsquigarrow\{0,1\}^X
\]

be an arbitrary, possibly improper and computationally unbounded kernel satisfying `assump:unrestricted-private-pac` and `assump:fixed-parameter-scale`: it is replacement-adjacency \((\varepsilon_0,\delta_m)\)-DP, is distribution-free realizable \((\alpha_0,\beta_0)\)-PAC, and

\[
\alpha_0=\frac1{128},\qquad
\beta_0=\frac1{32},\qquad
0<\varepsilon_0\le 1,\qquad
0\le\delta_m\le \frac{c_\delta}{m^2\log(em)}.
\]

Then

\[
m\ge c k\log^*N.
\]

This is a fixed-sample, high-probability-PAC antecedent and deterministic lower-bound conclusion. The contradiction passes through an expected zero-one-risk finite threshold game, but it does not change the theorem's PAC mode. The exposed variables are \(m,k,N,\varepsilon_0,\delta_m\); all hidden constants are universal and independent of \(C,X,A,m,k,N,\varepsilon_0,\delta_m\), the minor embeddings, and the hard prior. The target retains the \(k=1\) unrestricted one-chain \(\Omega(\log^*N)\) baseline with only universal fixed-factor and additive losses.

## Whole-Proof Draft

### Block G0: contradiction setup and the one-arm parameters

Let

\[
L_N:=\log^*N,\qquad
n=\left\lceil\frac{2m}{k}\right\rceil+12,
\qquad M=9n,
\qquad \eta_{\rm th}=\frac1{20}.
\]

The proof first establishes the following finite-game statement, with universal constants (a_{\rm th},a_\delta>0) and (N_{\rm th}): if

\[
N\ge N_{\rm th},\quad n<a_{\rm th}L_N,\quad
0<\varepsilon\le1,\quad
0\le\delta\le\frac{a_\delta}{n^2\log(en)},
\tag{G0.1}
\]

then there is a prior \(\Pi_{n,N,\varepsilon,\delta}\) on the finite experiment set

\[
\mathcal E_{n,N}=[N]\times[N]^M
\]

such that every \((\varepsilon,\delta)\)-DP threshold kernel \(B\), including arbitrary-output kernels, obeys

\[
\mathbb E_{e\sim\Pi_{n,N,\varepsilon,\delta}}
\mathcal R_n(B,e)\ge\eta_{\rm th}.
\tag{HP}
\]

Blocks G1--G5 derive this statement rather than assume it. Blocks G6--G8 construct from the alleged learner (A) an admissible kernel whose prior-average risk is strictly smaller than (1/20). Block G9 checks (G0.1) under the negation of the theorem and closes the contradiction.

### Block G1: finite output restriction and the private empirical wrapper (`step_001`)

Fix (n,N,\varepsilon,\delta) in (G0.1) and a candidate (n)-sample threshold kernel (B). Postprocess its output (g:[N]\to\{0,1\}) to the vector

\[
\rho(g)=(g(1),\ldots,g(N))\in\{0,1\}^N.
\]

This changes neither privacy nor any risk \(\mathcal R_n(B,e)\). Conversely, every kernel with output in \(\{0,1\}^N\) is an allowed arbitrary-hypothesis kernel on \([N]\), so the restriction is lossless rather than a properization.

For an ordered \(M=9n\) record database \(D=(d_1,\ldots,d_M)\), define the empirical wrapper \(W_B(D)\) by drawing \(K_1,\ldots,K_n\) independently and uniformly from \([M]\), running \(B\) on \((d_{K_1},\ldots,d_{K_n})\), and applying \(\rho\). The corrected secrecy-of-the-sample lemma, instantiated with source sample size \(n\) and source database size \(M=9n\), gives

\[
\widetilde\varepsilon=6\varepsilon\frac nM=\frac23\varepsilon,
\qquad
\widetilde\delta=e^{6\varepsilon n/M}\frac{4n}{M}\delta
=\frac49e^{2\varepsilon/3}\delta.
\tag{G1.1}
\]

At every \(0<\varepsilon\le1\),

\[
\widetilde\varepsilon\le\varepsilon,
\qquad
\frac49e^{2\varepsilon/3}\le\frac49e^{2/3}<1,
\tag{G1.2}
\]

so \(W_B\) is \((\varepsilon,\delta)\)-DP. Repeated selection of a changed row is already integrated into (G1.1); it is not charged by group privacy.

For \(e=(t,U)\), where \(U=(u_1,\ldots,u_M)\), label \(D_U\) by \(\tau_t\). The wrapper input to \(B\) has exactly law \(Q_e^n\). Therefore its expected empirical zero-one loss on \(D_U\) is

\[
\mathbb E L_{D_U}(W_B(D_U))
=\mathbb E_{S\sim Q_e^n,\,g\sim B(S)}L_{Q_e}(g)
=\mathcal R_n(B,e).
\tag{G1.3}
\]

There is no population-to-empirical residual. Under the bijection (x=N+1-q) and (+1\leftrightarrow1,-1\leftrightarrow0), the branch's lower-oriented threshold, risk, ordered replacement adjacency, and arbitrary-output restriction match the active Alon source convention.

### Block G2: expected-loss endpoint gap and finite homogeneity (`step_002`)

To prove algorithm-wise hardness, suppose for contradiction that

\[
\mathcal R_n(B,e)<\frac1{20}
\quad\text{for every }e\in\mathcal E_{n,N}.
\tag{G2.1}
\]

Then (G1.3) gives expected empirical loss below (1/20) for every (M)-record realizable threshold database used below.

Use one fixed nearly balanced threshold label template on \(M\) increasing distinct points: \(s_-\) points on the negative side and \(s_+=M-s_-\) on the positive side, with \(s_-,s_+\in\{\lfloor M/2\rfloor,\lceil M/2\rceil\}\). For a realized sample \(S\), (G2.1) implies

\[
\sum_{x\in S_-}\Pr[h(x)=1]
+\sum_{x\in S_+}\Pr[h(x)=0]
\le \frac M{20}.
\tag{G2.2}
\]

Hence some negative-side point has positive-prediction marginal at most

\[
\theta_M:=\frac{M}{20\min(s_-,s_+)}
\le
\begin{cases}
1/10,&M\text{ even},\\
9/80,&M\text{ odd and }M\ge9,
\end{cases}
\tag{G2.3}
\]

and some later positive-side point has correctness marginal at least \(1-\theta_M\). If \(|H|\le 2M+1\), the homogeneous set already has the later required \(\exp(O(M^2\log^2(eM)))\) upper bound. Otherwise choose the template sample with an unused successor in \(H\) after each selected sample point. Replace each selected low/high record by such a successor, keeping its label and rank, and evaluate the removed point. Its rank in the neighboring sample is the original rank minus one, so the negative-side list index is strictly below the positive-side list index. One-record privacy and homogeneity then compare those two entries of the homogeneous probability list. At the worst privacy endpoint \(\varepsilon=1\), before the additive and mesh defects, their separation is at least

\[
g_*:=\frac{9}{10e}-\frac e{10}>0
\quad(M\text{ even}),
\qquad
g_{\rm odd}:=\frac{71}{80e}-\frac{9e}{80}>0
\quad(M\text{ odd}),
\tag{G2.4}
\]

where (g_{\rm odd}>0) follows from (71>9e^2). Put

\[
g_{\rm gap}=\min(g_*,g_{\rm odd}),
\qquad
\gamma=\frac{g_{\rm gap}}{100M}.
\tag{G2.5}
\]

The finite homogeneous-set coloring is the active Alon coloring rewritten for this fixed label template: color each \((M+1)\)-subset by the \(M+1\) deletion-point prediction marginals rounded to mesh \(\gamma\). Its number of colors satisfies

\[
q_M\le \bigl(1+\lceil1/\gamma\rceil\bigr)^{M+1}
=\exp(O(M\log(eM))).
\tag{G2.6}
\]

The active Erdos--Rado finite Ramsey theorem produces an (M)-homogeneous set (H\subseteq[N]) with

\[
|H|\ge
\frac{\log^{(M)}N}{\exp(C_R M\log(eM))}
\tag{G2.7}
\]

for a universal (C_R), after the source theorem's finite rounding and minimum-size conditions are incorporated into a universal (N_{\rm emp}).

On (H), let (p_0,\ldots,p_M) be the homogeneous list. The low/high comparison described above gives, for two indices (r_-<r_+),

\[
p_{r_+}-p_{r_-}
\ge g_{\rm gap}-(1+e^{-1})\delta-2\gamma.
\tag{G2.8}
\]

Choose the universal empirical delta constant small enough that

\[
(1+e^{-1})\delta\le \frac18g_{\rm gap}.
\tag{G2.9}
\]

Since (M\ge9), (G2.5), (G2.8), and (G2.9) leave at least (3g_{\rm gap}/4). Telescoping across at most (M) list increments yields some (i\in[M]) with

\[
p_i-p_{i-1}\ge\frac{3g_{\rm gap}}{4M}.
\tag{G2.10}
\]

The first and last selected ranks are handled by the corresponding one-sided gaps; the sparse template choice leaves an unused successor even after its last sample point. Thus the finite boundary branch does not add an assumption or a phantom endpoint record.

### Block G3: exact one-record moving family (`step_003`)

Fix \(i\) from (G2.10). In the ordered homogeneous set \(H\), keep \(i-1\) fixed records to the left and \(M-i\) fixed records to the right, all with the fixed rank-label template. Let \(J\) be the remaining middle interval. Then

\[
|J|=|H|-M+1.
\tag{G3.1}
\]

For each \(x\in J\), form \(S_x\) by putting the one moving record \(x\) at rank \(i\). All \(S_x\) are threshold-realizable, and any \(S_x,S_{x'}\) differ in exactly one ordered record. Let \(P_x\) be the law of the wrapper output restricted to \(J\). Thus every pair \(P_x,P_{x'}\) is \((\varepsilon,\delta)\)-indistinguishable.

For (z\in J\setminus\{x\}),

\[
\operatorname{ord}_{S_x}(z)=
\begin{cases}
i-1,&z<x,\\
i,&z>x.
\end{cases}
\tag{G3.2}
\]

Set (r=(p_i+p_{i-1})/2) and (a_0=g_{\rm gap}/100). Homogeneity and (G2.10) imply

\[
\Pr_{v\sim P_x}[v(z)=1]
\le r-\frac{a_0}{M}\quad(z<x),
\qquad
\Pr_{v\sim P_x}[v(z)=1]
\ge r+\frac{a_0}{M}\quad(z>x),
\tag{G3.3}
\]

because

\[
\frac{p_i-p_{i-1}}2-\gamma
\ge \left(\frac{3}{8}-\frac1{100}\right)\frac{g_{\rm gap}}M
>\frac{a_0}{M}.
\tag{G3.4}
\]

The cases (i=1) and (i=M) use a prefix or suffix (J), respectively; (G3.2) remains valid and no phantom endpoint record is required. The produced object is exactly the family of bit-vector laws consumed by the binary argument, not a surrogate or proper threshold family.

### Block G4: finite product, binary counting, and Ramsey closure (`step_004`)

Write \(\eta=a_0/M\). Choose

\[
T=\left\lceil b_T M^2\log^2(eM)\right\rceil,
\qquad
D=\left\lceil2\eta^{-2}\log(6T)\right\rceil,
\tag{G4.1}
\]

where the universal (b_T) is large enough that, for every (M\ge9),

\[
D\le b_D M^2\log(eM),
\qquad
T\log2>D+\log2.
\tag{G4.2}
\]

Suppose (J) had more than (2^{T+1}) points. On (D) independent vectors from (P_x), set an empirical coordinate bit to (1) when its positive frequency is at least (r), and to (0) otherwise. Perform (T) balanced binary-search routing decisions, continuing left after bit (1) and right after bit (0), and excluding each queried point from the continuation interval. There are (2^T) disjoint leaf outcomes. The size assumption leaves an unqueried representative (x) in every leaf interval; all (T) probes on its path are therefore coordinates (z\ne x), so their correct-side marginals are controlled by (G3.3). Let (E_x) be the event that routing ends in the leaf represented by (x). Hoeffding and a union bound give

\[
P_x^D(E_x)
\ge 1-T e^{-2D\eta^2}
\ge\frac23.
\tag{G4.3}
\]

The active product-DP lemma gives pairwise \((D\varepsilon,D\delta)\)-indistinguishability. If

\[
D\delta\le\frac16,
\tag{G4.4}
\]

then for any fixed reference law (P_y^D), every leaf event obeys

\[
P_y^D(E_x)
\ge e^{-D\varepsilon}\left(P_x^D(E_x)-D\delta\right)
\ge\frac12e^{-D},
\tag{G4.5}
\]

where \(\varepsilon\le1\) is used only in the last inequality. The events are disjoint, so (G4.2) and (G4.5) give the contradiction

\[
1\ge\sum_xP_y^D(E_x)
\ge2^{T-1}e^{-D}>1.
\tag{G4.6}
\]

Consequently

\[
|H|\le M-1+2^{T+1}
\le \exp(C_B M^2\log^2(eM))
\tag{G4.7}
\]

for a universal (C_B). Combining (G2.7) and (G4.7) yields

\[
\log^{(M)}N\le \exp(C_0M^2\log^2(eM)).
\tag{G4.8}
\]

Applying iterated logarithms to (G4.8) gives

\[
\log^*N\le M+\log^*\!\left(\exp(C_0M^2\log^2(eM))\right)+O(1)
\le M+\log^*M+O(1).
\tag{G4.9}
\]

Thus universal (b_0>0) and (N_{\rm emp}) can be fixed so that (M\ge b_0\log^*N) whenever (N\ge N_{\rm emp}). Since (M=9n), set

\[
a_{\rm th}=b_0/9
\tag{G4.10}
\]

and decrease it to at most (1/9) if needed for the finite Ramsey entry conditions.

The delta defects in this block are finite and explicit. Conditions (G2.9) and (G4.4), together with (D\le b_DM^2\log(eM)), hold whenever

\[
\delta\le\frac{d_0}{M^2\log(eM)}
\tag{G4.11}
\]

for a sufficiently small universal (d_0). Because

\[
M^2\log(eM)=81n^2\log(9en)
\le81(1+\log9)n^2\log(en),
\tag{G4.12}
\]

one may take

\[
a_\delta\le\frac{d_0}{81(1+\log9)}.
\tag{G4.13}
\]

Enlarge \(N_{\rm th}\) to cover \(N_{\rm emp}\) and all finite Ramsey entry conditions. The contradiction to (G2.1) now proves the algorithm-wise statement

\[
\max_{e\in\mathcal E_{n,N}}\mathcal R_n(B,e)\ge\frac1{20}
\tag{G4.14}
\]

under (G0.1).

### Block G5: finite minimax and production of `(HP)` (`step_005`)

After output restriction, a threshold kernel is a point (K) with finitely many coordinates

\[
K(v\mid s),\qquad
s\in([N]\times\{0,1\})^n,quad v\in\{0,1\}^N.
\]

Nonnegativity, row-sum equations, and both eventwise DP inequalities for every neighboring \(s,s'\) and every event \(E\subseteq\{0,1\}^N\) define a finite-dimensional compact convex polytope \(\mathcal K_{\rm DP}\). It is nonempty because an input-independent constant-output kernel belongs to it. For every experiment \(e\),

\[
r_e(K):=\mathcal R_n(K,e)
\]

is continuous affine. Finite minimax therefore gives the correctly oriented equality

\[
\min_{K\in\mathcal K_{\rm DP}}\max_{e\in\mathcal E_{n,N}}r_e(K)
=
\max_{\Pi\in\Delta(\mathcal E_{n,N})}
\min_{K\in\mathcal K_{\rm DP}}
\mathbb E_{e\sim\Pi}r_e(K).
\tag{G5.1}
\]

The maximum is attained. By (G4.14), choose an attaining \(\Pi=\Pi_{n,N,\varepsilon,\delta}\) whose inner value is at least \(1/20\). Output restriction maps every arbitrary-output kernel into \(\mathcal K_{\rm DP}\), while every finite-output kernel is itself an allowed arbitrary hypothesis kernel on \([N]\); hence (G5.1) proves exactly `(HP)`, with no discretization, quantifier, target-object, or risk residual. This is the first and only producer of \(\Pi\).

### Block G6: hidden-arm kernel and exact privacy (`step_006`)

Return to the alleged learner \(A\). Once G9 verifies (G0.1) with \((\varepsilon,\delta)=(\varepsilon_0,\delta_m)\), take the prior \(\Pi\) from G5. Define \(B_\Pi\) exactly as in `setting.md`: draw \(J\) uniformly from \([k]\), draw \(e_j\sim\Pi\) independently for \(j\ne J\), draw iid arm indices \(I_1,\ldots,I_m\), put

\[
R=\sum_{r=1}^m\mathbf 1\{I_r=J\},
\]

return \(g_0\equiv0\) if \(R>n\), and otherwise inject the distinct real records \(z_1,\ldots,z_R\) into the successive hidden-arm positions, independently simulate every other-arm position, run \(A\), and output \(g(q)=h(\phi_J(q))\).

For two replacement-adjacent real inputs, fix every upstream coin: (J), the other experiments, arm indices, and simulated records. The overflow branch is identical on both inputs. Off overflow, if the changed external coordinate exceeds (R), the two inputs to (A) are equal; otherwise exactly the corresponding hidden-arm position is replaced. Thus, transcript by transcript,

\[
\Pr[B_\Pi(S)\in E\mid\omega]
\le e^{\varepsilon_0}\Pr[B_\Pi(S')\in E\mid\omega]+\delta_m,
\tag{G6.1}
\]

and likewise in reverse. Averaging (G6.1) over the common, input-independent transcript and postprocessing by restriction proves exact \((\varepsilon_0,\delta_m)\)-DP. Across all \(m\) positions, a changed real record is used at most once; there is no composition or group-privacy defect.

### Block G7: grand-pool coupling, realizability, and overflow (`step_007`)

For utility, draw the outer real experiment \(e_J\sim\Pi\) and \(S^{\rm real}\sim Q_{e_J}^n\). Equivalently, draw \(J\) uniformly and independently, draw the full ordered vector

\[
(e_1,\ldots,e_k)\sim\Pi^k,
\tag{G7.1}
\]

and let the real sample come from coordinate \(J\). Conditional on this vector, for every arm \(j\in[k]\) generate an indexed iid pool

\[
Z_{j,1},Z_{j,2},\ldots\stackrel{\rm iid}{\sim}Q_{e_j},
\]

with the pools independent across arms and independent of \(J\) and the iid arm indices \(I_1,\ldots,I_m\). Write

\[
T_j(q,y)=(\phi_j(q),y),
\qquad
C_j(0)=0,
\qquad
C_j(r)=\bigl|\{s\le r:I_s=j\}\bigr|.
\]

Designate the external real sample by

\[
z_\ell=Z_{J,\ell},\qquad \ell\in[n].
\tag{G7.2a}
\]

This is only a naming and sharing convention: designating, or equivalently reserving, the external prefix does not consume those records for the ideal construction and does not advance any ideal counter. All counters start at zero and are advanced only by the positions \(I_1,\ldots,I_m\). Define the ideal learner-input record at position \(r\) by

\[
\bar S_r=T_{I_r}\!\left(Z_{I_r,C_{I_r}(r)}\right).
\tag{G7.2b}
\]

For every constructed nonhidden position \(r\) with \(I_r=j\ne J\), couple the fresh simulated draw in \(B_\Pi\) to that same indexed record \(Z_{j,C_j(r)}\), and hence to the same transported record as in (G7.2b). Equivalently, on \(R\le n\) the constructed learner-input record is

\[
S^{\rm con}_r=
\begin{cases}
T_J(z_{C_J(r)}),&I_r=J,\\
T_{I_r}\!\left(Z_{I_r,C_{I_r}(r)}\right),&I_r\ne J.
\end{cases}
\]

Distinct occurrences use distinct pool indices, so conditional on \(\boldsymbol e\), the records in \(\bar S\) are independent and each has law obtained by first drawing a uniform arm and then drawing from that arm's experiment. Thus \(\bar S\) is iid from

\[
\bar Q_{\boldsymbol e}
=\frac1k\sum_{j=1}^k(\phi_j)_\#Q_{e_j}.
\tag{G7.2}
\]

If (e_j=(t_j,U_j)), `assump:minor-table` gives the pointwise identity

\[
c_{(t_1,\ldots,t_k)}(\phi_j(q))=\tau_{t_j}(q),
\]

so (G7.2) is realized by a concept in (C).

It remains to identify the hidden positions, rather than infer their equality from an ambiguous pool-consumption convention. Let \(r_\ell\) be the position of the \(\ell\)-th hidden-arm occurrence. Then \(C_J(r_\ell)=\ell\). Whenever \(R\le n\), the constructed record at that position is

\[
T_J(z_\ell)=T_J(Z_{J,\ell}),
\]

while the ideal record is

\[
\bar S_{r_\ell}
=T_J\!\left(Z_{J,C_J(r_\ell)}\right)
=T_J(Z_{J,\ell})
=T_J(z_\ell).
\tag{G7.2c}
\]

Thus the \(\ell\)-th hidden occurrence uses the identical record \(Z_{J,\ell}=z_\ell\) in both inputs for every \(\ell\le R\). Together with the same-index coupling at every nonhidden position, (G7.2c) proves record-for-record equality of the entire constructed and ideal learner inputs whenever \(R\le n\).

For \(\mu=m/k\), \(R\sim\operatorname{Bin}(m,1/k)\) and

\[
R>n\ \Longrightarrow\ R-\mu>\mu+12.
\]

Bernstein's binomial inequality gives

\[
p_{\rm ov}:=\Pr(R>n)
\le\exp\!\left(-\frac{(\mu+12)^2}{2(\mu+(\mu+12)/3)}\right).
\tag{G7.3}
\]

The exponent equals \(3(\mu+12)^2/[8(\mu+3)]\), whose derivative has the sign of \(\mu-6\); its global minimum is \(27/2\). Hence

\[
p_{\rm ov}\le e^{-27/2}<\frac1{1024}.
\tag{OF}
\]

Let \(h^{\rm id}\sim A(\bar S)\), using the same learner coin as the constructed run on \(R\le n\). The record identity (G7.2c) implies

\[
\mathbb E_{e\sim\Pi}\mathcal R_n(B_\Pi,e)
\le
\mathbb E L_{Q_{e_J}}(h^{\rm id}\circ\phi_J)+p_{\rm ov},
\tag{G7.4}
\]

because the two postprocessed outputs coincide on \(R\le n\), while zero-one loss is at most one on the single overflow event. There is no non-overflow record mismatch or per-position residual.

### Block G8: exchangeability and the strict utility upper bound (`step_008`)

Conditional on the ordered iid vector \(\boldsymbol e\), the indexed pools, arm indices, ideal sample in (G7.2b), \(A\)'s coins, and the resulting \(h^{\rm id}\sim A(\bar S)\) are generated without using \(J\). Designating \(z_\ell=Z_{J,\ell}\) does not advance the counters and does not alter \(\bar S\). Thus \(h^{\rm id}\) is conditionally independent of the hidden designation. For every fixed \(\boldsymbol e,h^{\rm id}\),

\[
\mathbb E_J L_{Q_{e_J}}(h^{\rm id}\circ\phi_J)
=\frac1k\sum_{j=1}^kL_{Q_{e_j}}(h^{\rm id}\circ\phi_j)
=L_{\bar Q_{\boldsymbol e}}(h^{\rm id}).
\tag{EX}
\]

The last equality is on the same population-risk object, not only in distribution or in a surrogate metric. Since \(\bar Q_{\boldsymbol e}\) is realizable, the PAC guarantee and \(0\le L\le1\) imply

\[
\mathbb E L_{\bar Q_{\boldsymbol e}}(h^{\rm id})
\le \alpha_0(1-\beta_0)+\beta_0
\le\alpha_0+\beta_0=\frac5{128}.
\tag{G8.1}
\]

Average (EX) over \(\boldsymbol e\) and the ideal run, and then apply the indexed record-transfer inequality (G7.4). The equality (G7.2c) shows that overflow is the sole coupling failure, so this gives the exact finite-game interface

\[
\mathbb E_{e\sim\Pi}\mathcal R_n(B_\Pi,e)
\le\frac5{128}+e^{-27/2}
<\frac1{20}.
\tag{UT}
\]

For the accepted auxiliary output, on the ideal PAC-good event one has (L_{\bar Q_{\boldsymbol e}}(h^{\rm id})\le\alpha_0). Applying Markov to the nonnegative arm losses in (EX) gives

\[
\Pr_J\!\left[L_{Q_{e_J}}(h^{\rm id}\circ\phi_J)>8\alpha_0
\mid \boldsymbol e,h^{\rm id},\ L_{\bar Q_{\boldsymbol e}}(h^{\rm id})\le\alpha_0\right]
\le\frac18.
\tag{G8.2}
\]

Thus the hidden arm has error at most (8\alpha_0=1/16) with conditional probability at least (7/8). This auxiliary confidence statement is not needed to turn the main contradiction into a high-probability theorem; it is nevertheless preserved because the accepted sketch exports it.

### Block G9: deterministic specialization, contradiction, and baseline (`step_009`)

For (m\ge1),

\[
n\le\frac{2m}{k}+13\le2m+13\le15m,
\tag{G9.1}
\]

and therefore

\[
n^2\log(en)
\le225m^2\log(15em)
\le C_\Delta m^2\log(em),
\qquad C_\Delta=225(1+\log15).
\tag{G9.2}
\]

Choose

\[
c_\delta=\frac{a_\delta}{C_\Delta},
\qquad c=\frac{a_{\rm th}}4,
\tag{G9.3}
\]

and choose (N_0\ge N_{\rm th}) so that

\[
\log^*N_0>\frac{26}{a_{\rm th}}.
\tag{G9.4}
\]

The primitive delta bound and (G9.2) imply

\[
\delta_m\le\frac{c_\delta}{m^2\log(em)}
\le\frac{a_\delta}{n^2\log(en)}.
\tag{G9.5}
\]

If, contrary to the target, (m<ckL_N), then

\[
n\le\frac{2m}{k}+13
<\frac{a_{\rm th}}2L_N+13
<a_{\rm th}L_N,
\tag{G9.6}
\]

where the last inequality follows from (G9.4) and monotonicity of \(\log^*\). Thus all hypotheses of `(HP)` hold for the exactly private kernel \(B_\Pi\). By (G7.2c)--(G7.4), `(UT)` is an upper bound for this same constructed kernel, with no coupling defect beyond the displayed overflow probability. The lower bound `(HP)` and upper bound `(UT)` therefore give

\[
\frac1{20}
\le\mathbb E_{e\sim\Pi}\mathcal R_n(B_\Pi,e)
<\frac1{20},
\]

a contradiction. Hence (m\ge ck\log^*N).

At (k=1), (n=2m+12), every arm index equals the hidden arm, (R=m<n), and overflow is impossible. Here \(J=1\), \(C_1(r)=r\), the external record is \(z_r=Z_{1,r}\), and (G7.2b)--(G7.2c) give \(\bar S_r=T_1(Z_{1,r})=T_1(z_r)\) for every \(r\in[m]\). Thus the constructed and ideal learner inputs are pathwise identical on the same first \(m\) pool records, not merely equal in law. The ideal mixture is exactly (Q_e), (EX) is the identity on the sole arm, privacy remains one-record privacy, and the preceding arithmetic yields (m\ge c\log^*N). The original one-chain conclusion, rather than merely vanishing coupling defects or a stopped surrogate, is therefore preserved.

### Assembly conclusion

The dependency order is

\[
\text{G1}\to\text{G2}\to\text{G3}\to\text{G4}\to\text{G5}
\to\text{G6}\to\text{G7}\to\text{G8}\to\text{G9}.
\]

G1--G4 turn the negation of algorithm-wise finite-experiment hardness into the active empirical-threshold contradiction, G5 is the only quantifier-swap and prior-production point, G6--G8 construct an exactly private competitor with strictly smaller risk, and G9 verifies every rate condition before applying `(HP)`. In particular, G7 produces the indexed first-\(R\) identity (G7.2c) before G8 consumes the overflow-only transfer (G7.4). No generated condition is consumed before production. The remaining work is to prove each accepted step at local-proof granularity, especially the full constants and finite indexing in G2--G4; this diagnostic is not itself proof evidence.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G0: contradiction setup | Defines (n,M), the finite game, and the interface needed for the public contradiction | Direct assembly role | `setting.md` definitions | The three primitive assumptions only | None beyond later blocks |
| G1: finite empirical wrapper | Preserves arbitrary outputs and converts finite risk exactly to expected empirical loss with no privacy loss | `step_001` | Candidate one-arm kernel | Local conditional hypothesis that the candidate is \((\varepsilon,\delta)\)-DP | Full current-notation instantiation of the corrected secrecy lemma and output restriction; `step-local` |
| G2: endpoint and homogeneity | Produces a positive (\Theta(1/M)) rise uniformly at (\varepsilon=1), both parities, and approximate DP | `step_002` | G1 | No new theorem assumption; (G2.1) is a local contradiction hypothesis | Complete parity, replacement-point, coloring, and finite Ramsey derivation; `step-local` |
| G3: moving family | Exports pairwise one-record-indistinguishable laws with the exact binary margin | `step_003` | G2 | None | Endpoint-safe rank construction and restriction proof; `step-local` |
| G4: binary/Ramsey closure | Produces algorithm-wise finite-game hardness and (a_{\rm th},a_\delta,N_{\rm th}) | `step_004` | G1--G3 | None | Full (D,T), product-DP, leaf counting, Ramsey inversion, and delta accounting; `step-local` |
| G5: minimax | Produces the unique learner-independent prior satisfying `(HP)` | `step_005` | G4 | None | Polytope/eventwise-DP and minimax equivalence proof; `step-local` |
| G6: exact-private hidden arm | Produces the competitor admissible for `(HP)` without properness or group privacy | `step_006` | G5 | `assump:minor-table`, `assump:unrestricted-private-pac`, `assump:fixed-parameter-scale` | Transcriptwise two-sided DP derivation; `step-local` |
| G7: ideal coupling | Produces the exact realizable mixture, the indexed first-\(R\) record identity, and the sole overflow residual | `step_007` | G6 | `assump:minor-table` | Prove the iid law from \(Z_{j,\ell}\) and \(C_j(r)\), show external designation does not advance counters, couple each nonhidden draw to the same indexed record, prove (G7.2c), and instantiate Bernstein; `step-local` |
| G8: exchangeability/utility | Produces `(EX)`, `(UT)`, and the (7/8) auxiliary output | `step_008` | G6--G7 | PAC and fixed scales from the primitive assumptions | Conditional independence of the ideal law from \(J\), probability-mode conversion, and use of the exact transfer (G7.4); `step-local` |
| G9: specialization | Verifies `(HP)` admissibility and proves the main theorem and baseline | `step_009` | G5--G8 | Primitive delta scale | Constant choices, strict inequalities, and the \(k=1\) indexed trace \(C_1(r)=r\), \(z_r=Z_{1,r}\); `step-local` |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Starts one-arm chain; feeds `step_002`--`step_005` | Secrecy lemma instantiation, exact risk identity, finite restriction, convention map | No hard prior is used |
| `step_002` | G2 | Consumes G1; feeds G3 and G4 | Expected-loss side marginals, DP transfer, odd/even templates, mesh coloring, Ramsey homogeneity, adjacent rise | Hard source adaptation, classified `step-local` |
| `step_003` | G3 | Consumes G2; feeds G4 | Fixed-extremes moving family, endpoint ranks, exact adjacency, same-target margin | No multi-record comparison |
| `step_004` | G4 | Consumes G1--G3; feeds G5 | (D,T) choices, adaptive binary path, disjoint events, product leakage, Ramsey inversion, universal constants | Hardest quantitative local step |
| `step_005` | G5 | Consumes G4; feeds G6--G9 | Compact finite DP polytope, affine risk, minimax orientation and attainment, arbitrary-output equivalence | Sole prior producer |
| `step_006` | G6 | Consumes G5; feeds G7--G9 | Kernel definition, transcriptwise exact DP, postprocessing, all occupancy branches | No utility used in privacy proof |
| `step_007` | G7 | Consumes G6; feeds G8 and G9 | Indexed pools \(Z_{j,\ell}\), counters \(C_j(r)\), no-counter-advance external designation, same-index nonhidden coupling, \(\ell\)-th hidden identity (G7.2c), iid law, realizability, and tail exponent | (G7.2c) makes overflow the sole coupling defect |
| `step_008` | G8 | Consumes G6--G7; feeds G9 | Iid-vector representation, conditional independence from \(J\) despite external designation, `(EX)`, PAC-to-expectation, transfer via (G7.4), `(UT)`, Markov auxiliary | Permutation alone is not used as symmetry |
| `step_009` | G9 and final assembly | Consumes G5--G8 | Delta transfer, ceiling absorption, constants, contradiction, and \(k=1\) pathwise identity \(\bar S_r=T_1(Z_{1,r})=T_1(z_r)\) | Same (\delta_m), no relabeling |

## Dependency And Assumption Audit

| Condition or object | Provenance classification | Producer or source | Consumers | Audit result |
| ------------------- | ------------------------- | ------------------ | --------- | ------------ |
| Disjoint threshold table | primitive condition | `assump:minor-table` | G6--G9 | Static and checkable before the learner runs; not a generated support claim |
| Learner PAC and DP properties | primitive condition | `assump:unrestricted-private-pac` | G6--G9 | Exact theorem antecedent; improper outputs remain allowed |
| Fixed (\alpha_0,\beta_0,\varepsilon_0,\delta_m) scale | primitive condition | `assump:fixed-parameter-scale` | G8--G9 | Exact theorem antecedent |
| Candidate one-arm kernel privacy | local conditional hypothesis | G1 algorithm-wise hardness argument | G1--G5 | Legitimate because `(HP)` quantifies over DP kernels |
| Universal small-risk premise (G2.1) | local conditional hypothesis for contradiction | Negation of G4.14 | G2--G4 | Discharged by contradiction; not exported as a theorem assumption |
| Empirical wrapper and finite output | accepted-sketch derived target | G1 / `step_001` | G2--G5 | Legal producer precedes every consumer |
| Positive homogeneous rise | accepted-sketch derived target | G2 / `step_002` | G3--G4 | Derived from expected loss and DP; not assumed |
| One-record family | accepted-sketch derived target | G3 / `step_003` | G4 | Derived before binary consumption |
| Algorithm-wise hardness constants | accepted-sketch derived target | G4 / `step_004` | G5 and G9 | No prior is used in their derivation |
| Hard prior (\Pi) | accepted-sketch derived target | G5 / `step_005` | G6--G9 | Unique legal producer; no circular average-case premise |
| Iid latent vector and exact-private (B_\Pi) | accepted-sketch derived target | G6 / `step_006` | G7--G9 | Privacy uses only primitive DP and construction |
| Ideal mixture, indexed first-\(R\) coupling, overflow-only transfer | accepted-sketch derived target | G7 / `step_007` | G8--G9 | The same-index formulas (G7.2a)--(G7.2c) prove recordwise equality before (G7.4); realizability comes from the primitive minor table |
| `(EX)`, `(UT)`, auxiliary statement | accepted-sketch derived target | G8 / `step_008` | G9 / final auxiliary use | Iid common experiments and the ideal-counter construction exclude hidden-designation dependence; `(UT)` consumes the legal G7 transfer (G7.4) |
| Delta and sample admissibility | accepted-sketch derived target | G9 / `step_009` | Final `(HP)` application | Deterministic consequences of primitive scales |

There is no missing derived-condition bridge. In particular, the hard prior, mixture realizability, indexed off-overflow equality, exact privacy certificate, exchangeability identity, and rate admissibility are conclusions of named steps and are not promoted to theorem-facing assumptions.

## Citation And Tool Audit

| Source or tool | Stable identity and statement role | Current-branch objects and mapping | Hypotheses to discharge | Needed conclusion / known non-output boundary | Compatibility and local obligation |
| -------------- | ---------------------------------- | ---------------------------------- | ----------------------- | --------------------------------------------- | ---------------------------------- |
| Bun, Nissim, Stemmer, Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, corrected 2024 revision, `lem:secrecy-of-the-sample` | With-replacement subsampling privacy; inspected statement gives (6\varepsilon m/n) and (e^{6\varepsilon m/n}(4m/n)\delta) | Source mechanism sample size (m\mapsto n); source database size (n\mapsto M=9n); branch wrapper (W_B) | (M\ge2n), (\varepsilon\le1), replacement adjacency, iid uniform-with-replacement indices | Gives (G1.1), not threshold hardness or a hard prior | Exact convention match; repeated-index behavior is inside the source proof. `step_001` must restate and instantiate it fully |
| Alon, Livni, Malliaris, Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, active `def:homog`, `lem:finiteramsey`/`lem:ramsey`, `thm:ramsey` | Finite homogeneous coloring and Erdos--Rado bound | (m\mapsto M=9n), domain size (n\mapsto N), mesh (1/(100m)\mapsto\gamma), fixed nearly balanced label template | Finite ordered domain; fixed template; finite color count | Produces (G2.6)--(G2.7); does not verbatim supply expected loss (1/20), odd (M), or every (\varepsilon\le1) | Order reversal and labels preserve risk/adjacency. `step_002` must prove the modified endpoint and parity interfaces in current notation |
| Same Alon source, active `lem:AtoP` and `lem:reduction` | Converts an adjacent homogeneous-list rise into pairwise private output laws | Source moving point and output cube map to (S_x,P_x) on (J) | Positive adjacent rise, exact one-record samples, homogeneity | Gives the moving-family mechanism; active source indexing is not used blindly | G3 supplies a corrected fixed-extremes construction and one-sided endpoints. Full derivation remains in `step_003` |
| Same Alon source, active `lem:binary`, `lem:prod`, `lem:lbhomog` | Finite binary counting and product privacy | Source margin \(1/(10m)\mapsto a_0/M\); product size and search depth map to \(D,T\) | Pairwise \((\varepsilon,\delta)\)-indistinguishability, off-diagonal margin, finite \(D,T\) | Produces (G4.3)--(G4.7); does not verbatim cover \(\varepsilon=1\) or branch constants | Worst-case likelihood is explicitly \(e^D\), additive leakage \(D\delta\); full rescaling is a `step_004` obligation |
| Active Alon `thm:main` | Source-lineage and baseline theorem only | One-chain arbitrary-output threshold learner | Original source uses fixed high-probability accuracy, (\varepsilon=0.1), and source delta constants | Confirms arbitrary-output (\Omega(\log^*N)) lineage; does **not** output `(HP)`, expected-risk (1/20), or a common prior | It is not invoked as a black box for the branch-critical extension |
| Finite von Neumann minimax | Exact finite-game quantifier reversal | Compact convex DP-kernel polytope and finite experiment simplex | Compactness, convexity, affine continuous payoff | Gives (G5.1) and attainment | Direct current-notation proof required in `step_005`; no asymptotic or measurable-selection issue |
| Hoeffding/Chernoff and union bound | Empirical-coordinate signs along a finite adaptive binary path | \(D\) iid vectors; at most \(T-1\) routed coordinates, each with margin \(\eta\) | Independence within \(P_x^D\), bounded Bernoulli coordinates | Gives \(T e^{-2D\eta^2}\) | Same metric and target coordinates; adaptivity is handled by a union bound over the realized path or all depth probes |
| Bernstein binomial inequality | Overflow tail | (R\sim\operatorname{Bin}(m,1/k)), (\mu=m/k), threshold (n) | Independent uniform arm indices | Gives (G7.3) and `(OF)` | Direct scalar instantiation; derivative check supplies the uniform (27/2) exponent |
| Bounded-loss conversion, conditional expectation, Markov | Probability-mode and arm-average conversions | Ideal mixture risk, indexed transfer (G7.4), and nonnegative arm risks | PAC event, (0\le L\le1), conditional independence of (J), and record equality (G7.2c) on (R\le n) | Gives (G8.1), `(EX)`, `(UT)`, and (G8.2) | Direct current-notation derivations; no external theorem supplies exchangeability or the constructed-to-ideal transfer itself |

The ignored duplicate Alon draft beginning at inspected source line 876 is not used; `header.tex` defines `\ignore` to erase it. Every theorem-critical source-supplied interface has a stable paper identity and active label. The source theorem's known non-output boundaries are explicit rather than silently upgraded.

## Quantitative Dependence Audit

| Item | Audit |
| ---- | ----- |
| Exposed variables | Main theorem: (m,k,N,\varepsilon_0,\delta_m). One-arm game: (n,N,\varepsilon,\delta). Auxiliary definitions: (M=9n,D,T,\gamma,\eta). |
| Fixed quantities | (\alpha_0=1/128), (\beta_0=1/32), (\eta_{\rm th}=1/20), replacement adjacency, zero-one risk, natural logarithm, base-two (\log^*). |
| Universal constants | (g_*,g_{\rm odd},g_{\rm gap},a_0,b_T,b_D,C_R,C_B,C_0,b_0,a_{\rm th},d_0,a_\delta,N_{\rm th},C_\Delta,c,c_\delta,N_0). Each is chosen independently of all exposed variables and the learner. |
| Hidden constants | Only finite homogeneity/Ramsey and binary-search numerical constants may be hidden. They may not depend on (n,N,m,k,\varepsilon,\delta,C,X,A,\Pi), or the embeddings. The endpoint is fixed at (\varepsilon=1), so no (1/\varepsilon) dependence is hidden. |
| Probability mode | The theorem antecedent is high-probability PAC. `(HP)` and `(UT)` are expectations over the experiment, sample, and kernel randomness. G8 explicitly converts high-probability PAC to expectation by bounded loss. The auxiliary (7/8) statement is conditional on the ideal PAC-good event. |
| Horizon/scope mode | Fixed sample throughout. Repeated scopes are finite: (n) with-replacement selections, finite Ramsey coloring, (D) product draws, (T) search probes, (m) hidden-arm positions, and a finite (k)-arm average. There is no all-time or limiting upgrade. |
| Norm/metric mode | Zero-one empirical risk for G1--G4, expected finite-experiment zero-one risk for G5, population zero-one risk for G7--G8, and replacement-adjacency DP throughout. G7 gives exact record equality on (R\le n) through (G7.2c), and (G7.4) adds only the overflow probability in that same risk. |
| Auxiliary tolerances | (\gamma=g_{\rm gap}/(100M)), (\eta=a_0/M), (D\delta\le1/6), Chernoff error at most (1/3), and overflow at most (e^{-27/2}). Each tolerance has a displayed dominance inequality. |
| Public specialization | (C_\Delta=225(1+\log15)), (c_\delta=a_\delta/C_\Delta), (c=a_{\rm th}/4), and (\log^*N_0>26/a_{\rm th}). Equations (G9.1)--(G9.6) discharge every technical condition without asymptotic prose. |
| Strict contradiction margin | (\alpha_0+\beta_0+p_{\rm ov}\le5/128+e^{-27/2}<1/20). By (G7.2c)--(G7.4), PAC failure and overflow are the only utility defect classes; they are separate and are not controlled by the delta threshold. |
| Baseline reduction | At (k=1), (n=2m+12), (R=m<n), \(C_1(r)=r\), \(z_r=Z_{1,r}\), and the ideal and constructed inputs use the identical first \(m\) pool records. Overflow is zero, the mixture equals the sole experiment, and exact DP and `(EX)` remain unchanged. The output is the original (\Omega(\log^*N)) scale, not a weaker remainder statement. |

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Private empirical wrapper | Mode/convention bridge feeding one-arm hardness | Fixed \(n,M=9n\), all \(0<\varepsilon\le1\), \(\delta\ge0\) | (G1.1)--(G1.3) | Sampling ratio \(1/9\) and corrected secrecy lemma | Repeated changed-row selections; arbitrary output representation | Finite \(n\) draws; multiplicities integrated in one closed-form privacy bound, no composition | structural upper comparison; postprocessing | Bun corrected `lem:secrecy-of-the-sample`; handles \(\varepsilon=1,\delta=0\), repeated rows | Exact source sizes give \(2\varepsilon/3\) and \((4/9)e^{2\varepsilon/3}\delta\) | Produced empirical loss equals consumed \(\mathcal R_n\); zero residual in zero-one risk | step-local | Candidate kernel produces wrapper before hardness is consumed | At \(\varepsilon=1\), both privacy parameters are dominated; at \(\delta=0\), pure DP remains | (G1.2) and exact equality (G1.3) | Candidate DP kernel; coordinate measurability | Restricted kernel; wrapper | Arbitrary non-threshold outputs and repeated indices remain valid | Without secrecy, group loss could invalidate `(HP)` |
| Positive homogeneous rise | Structural positive lower/sign source for G3 | Finite fixed sample (M), both parities, (\varepsilon\le1) | (G2.2)--(G2.10) | (g_{\rm gap}>0) at the worst (\varepsilon=1) endpoint | DP additive error, two mesh errors, odd imbalance | Finite coloring; mesh appears at endpoint comparisons; telescoping divides a fixed gap across at most (M) increments | structural lower comparison; telescoping | Direct adaptation of active Alon homogeneity/Ramsey; (M\ge9); small (H) branch already bounded | Expected loss supplies side marginals; one-record DP supplies a lower/upper comparison, not merely smallness | Same prediction marginals and coordinates are produced and consumed; residual (\le(1+e^{-1})\delta+2\gamma<g/4) | step-local | G1 risk and primitive candidate DP precede the rise; no hard prior assumed | First one-record comparison at (\varepsilon=1) leaves (g_*,g_{\rm odd}>0) | (G2.8)--(G2.10) | Candidate DP; finite ordered domain | Empirical wrapper; homogeneous list | (\delta=0), odd (M), endpoint replacement, arbitrary output all leave positive source | If the gap vanished, G3 would have no nonvacuous margin |
| One-record moving family | Structural separation and exact adjacency for binary search | Finite interval (J) | (G3.1)--(G3.4) | Adjacent rise (\ge3g/(4M)); (M-1) fixed records | Homogeneity error (\gamma); endpoint ranks | No accumulation; every pair differs in one record | algebraic coupling; structural lower comparison | Active `lem:AtoP` mechanism with current fixed-extremes construction; prefix/suffix cover (i=1,M) | Rank identity directly turns the list rise into left/right sign content | Produced bit laws are exactly the binary-search target; residual (\gamma) is dominated at scale (a_0/M) | step-local | G2 produces the rise before G3 constructs laws | First moved record changes one database coordinate; endpoint cases keep the same rank template | (G3.2)--(G3.4) | Candidate DP | Homogeneous rise | (i=1,i=M,\delta=0,\varepsilon=1) valid | Multi-record differences would destroy exact privacy |
| Product/binary closure | Finite accumulated privacy and counting obstruction | Product (D), search depth (T), no all-time claim | (G4.1)--(G4.6) | Margin (\eta=a_0/M); disjoint event mass budget one | Hoeffding failures; adversarial-sign (D\delta); likelihood factor (e^{D\varepsilon}) | Chernoff errors union-bounded; DP defects add linearly and are capped; finite (D,T) only | reserve/ledger under declared scope; signed lower comparison | Active `lem:binary`/`lem:prod`; (D\delta\le1/6), (\varepsilon\le1) | Product DP supplies the required eventwise lower mass; margin controls every routed probe | Events are on the same (P_x^D); no surrogate; all residuals are below constant event-mass scale | step-local | G3 family exists before products/search; binary conclusion is not assumed | First routed probe has margin (\eta>0); last diagonal bit is not used for routing | (T e^{-2D\eta^2}\le1/3), (2/3-D\delta\ge1/2), (2^{T-1}e^{-D}>1) | (\varepsilon\le1), delta scale | Pairwise laws and margin | (\delta=0) removes leakage; (\varepsilon=1) retains (e^{-D}) | Without finite leakage budget, leaf lower masses may vanish |
| Ramsey/iterated-log closure | Scope conversion to (M=\Omega(\log^*N)) | Finite (N,M), (N\ge N_{\rm th}) | (G2.7), (G4.7)--(G4.13) | Erdos--Rado homogeneous-set lower bound | Color denominator; binary upper size; additive (\log^*M+O(1)) | Finite cardinality comparison, no stochastic accumulation | structural lower/upper comparison | Active `thm:ramsey`; finite entry conditions absorbed into (N_{\rm th}) | Same (M), domain, color, and homogeneous object appear in lower and upper bounds | Exact cardinality comparison; no transformed target | step-local | Algorithm-independent Ramsey lower bound and G4 binary upper bound are independent inputs | For fixed (M) and growing (N), lower size eventually exceeds upper size | (G4.8)--(G4.10); delta translation (G4.12)--(G4.13) | Finite ordered domain | Color count; binary upper bound | Small (N) explicitly excluded by universal (N_{\rm th}), as allowed by goal | Missing inversion would leave (a_{\rm th}) unsupported |
| Hard prior `(HP)` | Generated theorem-closure object and quantifier reversal | One finite game at fixed (n,N,\varepsilon,\delta) | (G5.1) | Algorithm-wise value (\ge1/20); compact convex finiteness | Nonattainment, wrong min-max orientation, arbitrary output space | No repeated scope | algebraic coupling via finite minimax | Finite von Neumann minimax; constant kernel proves nonempty polytope | Bilinear payoff and both compact convex strategy sets match theorem hypotheses | Prior support and consumed risk are exactly (\mathcal E_{n,N}) and (\mathcal R_n); zero residual | step-local | G4 proves hardness before G5 produces (\Pi) | At (\delta=0) and (\varepsilon=1), polytope remains nonempty/compact | Exact equality (G5.1), no value loss | Candidate DP constraints | G4 lower value | Deterministic/randomized kernel extremes all included | A learner-dependent experiment would make hidden-arm sampling circular |
| Exact privacy of \(B_\Pi\) | Inherited DP interface for `(HP)` | One fixed \(n\)-record input and \(m\)-record constructed input | (G6.1): equal-or-one-replacement transcript dichotomy | One-use injection of each real record | Repeated arm occurrences, unused changed record, overflow | Across \(m\) positions, changed-record use count is deterministically \(\le1\) | algebraic coupling; postprocessing | Primitive learner DP; data-independent transcript; overflow common constant | Source is exact replacement DP and supplies the same claim class | Produced and consumed privacy parameters are exactly \((\varepsilon_0,\delta_m)\); zero residual | step-local | Primitive DP and G5 prior exist before certificate; utility not assumed | \(R=0\): equal; changed index \(>R\): equal; \(R>n\): common constant; otherwise first use activates DP | One external replacement maps to at most one learner-input replacement | Primitive learner DP; minor embeddings | \(\Pi,J,I_r\), simulated records | \(R=n,\delta_m=0,\varepsilon_0=1,k=1\) all valid | Record reuse would require forbidden group privacy |
| Ideal mixture and overflow | Generated realizability/coupling certificate | Finite (m) positions, all (k\ge1) | (G7.1), (G7.2a)--(G7.4), `(OF)` | Indexed iid pools \(Z_{j,\ell}\); occurrence counters \(C_j(r)\); (+12) occupancy reserve; minor table | Single overflow event; no nonoverflow mismatch | At each position the counter selects that arm's occurrence index; designating \(z_\ell=Z_{J,\ell}\) advances no counter. Nonhidden records use the same indexed draw, and hidden occurrence \(\ell\) uses \(Z_{J,\ell}\) in both inputs. The whole defect is charged once by (1\{R>n\}) | algebraic coupling; reserve/ledger under declared scope | Primitive minor table; direct indexed-pool coupling; Bernstein; no boundary exclusion beyond the explicit overflow branch | Minor table gives pointwise labels on the exact mixture support; distinct indexed records give the required conditional iid law | For nonhidden positions both inputs use \(T_j(Z_{j,C_j(r)})\); for hidden occurrence \(\ell\), both use \(T_J(Z_{J,\ell})=T_J(z_\ell)\). Thus samples are identical on (R\le n), and (G7.4) leaves only residual (\le p_{\rm ov}) | step-local | G6 vector/kernel precedes the pools; (G7.2b) is defined without \(J\), while the external designation is only a coupling label; PAC utility is not assumed | (R=0): only same-index nonhidden records; first hidden occurrence has \(C_J=1\) and uses \(Z_{J,1}=z_1\); (k=1): \(C_1(r)=r\) and every position agrees | (G7.2c) gives exact off-event equality; (G7.4) plus (p_{\rm ov}\le e^{-27/2}) charges overflow once | Minor table; independent arm indices | Iid latent vector, indexed pools, counters | (R=n) uses exactly \(z_1,\ldots,z_n\); (R>n) is the only failure; (\mu=6,k=1) traced | Without the indexed identity, PAC risk could target a different sample even off overflow |
| Exchangeability `(EX)` | Same-target arm-to-mixture transfer | One finite uniform arm average | (G7.2b), `(EX)` | Iid common experiment vector and indexed pools independent of (J); external designation does not advance counters | Potential hidden-designation dependence; nonuniform arm risks | The formula \(\bar S_r=T_{I_r}(Z_{I_r,C_{I_r}(r)})\) contains no \(J\); then one exact finite arm average gives `(EX)` with no factor (k) | algebraic coupling | G6 iid vector and G7 ideal sample; permutation language alone is not used | Conditional independence of the ideal output law supplies the required symmetry | Arm risks and mixture risk are exactly equal in zero-one population risk | step-local | Vector, pools, counters, and ideal output law are produced without (J) before `(EX)` is consumed | At (k=1), \(C_1(r)=r\) and `(EX)` is a literal identity; highly nonuniform arm risks still average exactly | Pointwise equality in `(EX)` | Uniform independent (J) | Iid vector, indexed pools, ideal (h^{\rm id}) | Deterministic (h^{\rm id}), (k=1), nonuniform arms valid | Correlated latent arms or a \(J\)-dependent ideal-counter rule could invalidate hidden-arm transfer |
| Utility `(UT)` and (7/8) output | Probability-mode conversion and upper side of contradiction | One PAC event, one overflow event, finite arm average | (G7.2c), (G7.4), (G8.1), `(UT)`, (G8.2) | PAC guarantee; bounded loss; exact indexed off-overflow equality; strict numerical slack | PAC failure (\beta_0); overflow (p_{\rm ov}); arm nonuniformity; no extra coupling residual | PAC failure and overflow are each charged once; (G7.2c) eliminates every nonoverflow mismatch; Markov handles the finite arm average | structural upper comparison; algebraic coupling | Primitive PAC plus the indexed G7 transfer and G8 exchangeability | PAC supplies the population-risk upper control; G7 supplies exact target-side transfer to the constructed kernel | The finite-game risk is bounded by the same ideal arm risk plus exactly (p_{\rm ov}) through (G7.4); every residual has a source and the total is (<1/20) | step-local | (G7.2c), (G7.4), `(EX)`, and `(OF)` precede `(UT)` | On PAC failure charge one; on the first hidden occurrence (G7.2c) is already active; at (k=1) all positions agree and overflow is zero | (\alpha_0+\beta_0+p_{\rm ov}<1/20); (\Pr(L_J>8\alpha_0)\le1/8) | PAC constants | Indexed coupling, `(EX)`, `(OF)` | (R=n), zero overflow, deterministic output, and (k=1) valid | Without the indexed transfer or strict slack, no contradiction to `(HP)` follows |
| Rate specialization and final contradiction | Quantitative bridge and theorem closure | Fixed sample, all (N\ge N_0) | (G7.4), `(UT)`, (G9.1)--(G9.6) | Positive (a_{\rm th},a_\delta); strict `(HP)`/`(UT)` gap | Ceiling (13), delta scale conversion, small (N) | No recurrence; fixed arithmetic after the overflow-only G7/G8 transfer has been produced | structural lower/upper comparison | G5/G8 outputs plus primitive scale; boundary excluded only by allowed (N_0) | Available constants control exactly the claimed rate categories | The same (n,\delta_m) are consumed by `(HP)`, and `(UT)` concerns the same constructed kernel because of (G7.4); no relabeling or surrogate | step-local | G5 hardness, G6 privacy, G7 indexed transfer, and G8 utility all precede G9 | At (N=N_0), additive (13) is already dominated; at (k=1), (G7.2c) makes the upper interface pathwise exact | (G9.2), (G9.5), (G9.6), then the strict `(HP)`/`(UT)` contradiction | Primitive parameter scale | (a_{\rm th},a_\delta,(HP),(UT)), indexed G7 transfer | (\varepsilon_0=1,\delta_m=0,m=1,k=1) valid | Missing either scalar comparison or G7 transfer would make the contradiction inapplicable |
| \(k=1\) baseline | Baseline invariance and exact one-chain recovery | Fixed \(k=1\) specialization | \(n=2m+12\), \(R=m<n\), \(J=1\), \(C_1(r)=r\), \(z_r=Z_{1,r}\), and `(EX)` is the identity | Sole-arm indexed equality and exact privacy | Only fixed factor/additive sample loss; overflow vanishes; no record residual remains | No arm accumulation; every one of the (m) positions uses the same indexed record in both inputs | algebraic coupling; structural lower/upper comparison | Same active Alon mechanism and G5--G9 specialization, with (G7.2b)--(G7.2c) as the entry trace | Mechanism supplies the original \(\Omega(\log^*N)\) conclusion, not just zero defects | At every position \(r\), both produced and consumed learner inputs contain \(T_1(Z_{1,r})=T_1(z_r)\); the sole threshold target is identical | step-local | One-arm prior/privacy/indexed coupling precede final specialization | First position uses \(Z_{1,1}=z_1\) in both inputs; inductively position \(r\) uses \(Z_{1,r}=z_r\); stationary hidden designation is \(J=1\) | \(R=m<n\), \(p_{\rm ov}=0\), pathwise input equality, mixture \(=Q_e\) | Primitive \(k=1\) minor and learner | One-arm prior/kernel, indexed pool | Exact/no-overflow boundary preserves the full conclusion | A suffix mismatch or weaker stopped/remainder result would violate baseline invariance |

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Finite restricted kernel and private (M=9n) empirical wrapper with loss (\mathcal R_n(B,e)) | G1 / `step_001`; Bun secrecy lemma | Candidate DP kernel, finite domain, coordinate measurability, ratio (1/9) | Repeated-row multiplicity controlled by source formula; output representation removed by postprocessing; no uncontrolled class | Exact equality (G1.3) in empirical zero-one risk; order reversal preserves target | (G1.2); no sampling residual | Fixed (1/9) ratio | G2--G5 | valid at diagnostic granularity; local source instantiation pending |
| Homogeneous-list total and adjacent rise | G2 / `step_002` | G1 risk, one-record DP, finite coloring, (M\ge9) | DP additive error and mesh controlled by (a_\delta,\gamma); odd imbalance in (g_{\rm odd}); no persistent term | Same output marginals; residual (<(g_{\rm gap}/4)) at required scale | (G2.8)--(G2.10) | (g_{\rm gap}>0) | G3--G4 | valid; parity/color proof pending |
| Pairwise one-record family with margin (a_0/M) | G3 / `step_003` | Adjacent rise, homogeneous set, candidate DP | Two mesh errors controlled; endpoint branches explicit | Same bit-vector coordinates used by binary search | (G3.2)--(G3.4) | Adjacent rise from G2 | G4 | valid; exact rank proof pending |
| Algorithm-wise lower value and constants (a_{\rm th},a_\delta,N_{\rm th}) | G4 / `step_004` | G1--G3 outputs, active product/Ramsey tools | Hoeffding, (D\delta), likelihood, color denominator all separately controlled; small (N) excluded by allowed threshold | Same empirical wrapper risk as finite game | (G4.2)--(G4.14) | Event mass one, positive (\eta), finite Ramsey lower bound | G5, G9 | valid; full constant derivation pending |
| Hard prior `(HP)` on exactly (\mathcal E_{n,N}) | G5 / `step_005` | Algorithm-wise value; finite DP polytope; affine risks | Quantifier and attainment defects removed by compact minimax; no approximation | Exact support, risk, privacy, and output class | (G5.1), value preserved at (1/20) | G4 lower value | G6--G9 | valid; finite minimax proof pending |
| Exact-private arbitrary-output \(B_\Pi\) | G6 / `step_006` | G5 prior, primitive learner DP, input-independent coins, one-use injection | Overflow/common output and unused changes controlled; no composition residual | Exact same \((\varepsilon_0,\delta_m)\)-DP interface consumed by `(HP)` | Equal-or-one-replacement transcript map | One-use real records | G7--G9 | valid; transcript proof pending |
| Ideal iid realizable mixture, indexed first-\(R\) equality, and `(OF)` | G7 / `step_007` | Iid vector; pools \(Z_{j,\ell}\); counters \(C_j(r)\); uniform indices; minor table; (+12) reserve | The only controlled defect is (R>n), bounded by Bernstein. External designation advances no counter; every nonhidden draw is coupled to the same indexed pool record; no nonoverflow or per-position residual remains | Produced ideal record: \(T_{I_r}(Z_{I_r,C_{I_r}(r)})\). Consumed constructed record: the same object for \(I_r\ne J\), and \(T_J(z_\ell)=T_J(Z_{J,\ell})\) at hidden occurrence \(\ell\). Hence exact sample equality on (R\le n) and residual only (\le p_{\rm ov}) in (G7.4) | (G7.2a)--(G7.2c) give exact transfer; (G7.3) bounds the sole failure event | Indexed equality and the (27/2) Bernstein exponent | G8--G9 | valid; indexed coupling proof pending |
| `(EX)`, `(UT)`, and conditional (7/8) output | G8 / `step_008` | Iid common vector, \(J\)-independent ideal-counter formula, PAC antecedent, (G7.2c), (G7.4), `(OF)` | PAC failure and overflow separately bounded; nonuniform arms handled by exact averaging; indexed equality removes any hidden fixed coupling defect | `(EX)` is an exact population-risk identity; (G7.4) transfers it to the constructed finite-game risk with residual only (p_{\rm ov}) | (G7.4), (5/128+e^{-27/2}<1/20), Markov factor (8) | Iid symmetry, indexed first-\(R\) equality, and strict numerical slack | G9 / auxiliary use | valid; conditional assembly pending |
| Public (c,c_\delta,N_0) and final lower bound | G9 / `step_009` | G5 constants, exact privacy, indexed G7 transfer, `(UT)`, primitive scale | Ceiling, log conversion, delta transfer, small (N) each controlled; no upstream coupling defect beyond overflow | Same inherited (\delta_m), same (n), same constructed kernel risk because (G7.4) legally produces `(UT)` | (G7.4), (G9.1)--(G9.6) | (a_{\rm th},a_\delta) and strict risk gap | Final theorem | valid; arithmetic proof pending |
| (k=1) recovery | G6--G9 | Sole arm, one-arm prior, \(J=1\), \(C_1(r)=r\), \(z_r=Z_{1,r}\), (R=m<n) | Overflow disappears; every constructed and ideal position uses the same indexed record; fixed wrapper/additive losses remain universal | For every \(r\le m\), both inputs contain \(T_1(Z_{1,r})=T_1(z_r)\); the sole-arm experiment is exactly the consumed target | (G7.2b)--(G7.2c), (p_{\rm ov}=0), `(EX)` identity | Original one-chain hard value | Final baseline use | valid; indexed specialization trace pending |

No exported interface combines unrelated defect classes under one parameter. In particular, the delta threshold controls the empirical DP and binary leakage terms, while PAC failure and overflow have separate fixed sources; neither is incorrectly absorbed by (c_\delta). Equations (G7.2a)--(G7.2c) eliminate the attempted diagnostic's former prefix/suffix ambiguity before the overflow residual is exported.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Restricted finite-output kernel | G1 / `step_001` | G5 finite game | Candidate kernel -> G1 -> G5 | derived | valid |
| Private (M)-record wrapper and exact loss equality | G1 / `step_001` | G2--G4 | Candidate kernel -> G1 -> empirical source chain | derived | valid |
| (g_{\rm gap}), homogeneous set, adjacent rise | G2 / `step_002` | G3--G4 | G1 -> G2 -> G3/G4 | derived | valid |
| Pairwise neighboring laws and margin (a_0/M) | G3 / `step_003` | G4 | G2 -> G3 -> G4 | derived | valid |
| Algorithm-wise hardness and one-arm constants | G4 / `step_004` | G5, G9 | G1--G3 -> G4 -> G5/G9 | derived | valid |
| Hard prior (\Pi_{n,N,\varepsilon,\delta}) | G5 / `step_005` | G6--G9 | G4 -> finite minimax -> G5 -> hidden-arm chain | derived | valid; sole producer |
| Iid latent vector, (B_\Pi), exact privacy certificate | G6 / `step_006` | G7--G9 and `(HP)` admissibility | G5 + primitive learner/minor -> G6 | derived | valid |
| Ideal mixture, indexed first-\(R\) identity (G7.2c), coupling-success event, `(OF)`, and transfer (G7.4) | G7 / `step_007` | G8 `(UT)`, G9 contradiction, and baseline | G6 -> indexed pools \(Z_{j,\ell}\) and counters \(C_j(r)\) -> same-index nonhidden coupling and hidden identity -> Bernstein -> G7 | derived | valid; external prefix designation does not advance ideal counters |
| `(EX)`, `(UT)`, auxiliary (7/8) certificate | G8 / `step_008` | G9 / final auxiliary statement | G6 + G7.2b--G7.4 + primitive PAC -> G8 | derived | valid; `(UT)` consumes the legal overflow-only transfer |
| Delta/sample admissibility and public constants | G9 / `step_009` | Final theorem | G5 + G6 + G8 + primitive scale -> G9 | derived | valid |
| (k=1) baseline certificate | G6--G9 specialization | Final baseline conclusion | One-arm G5 prior -> G6 privacy -> \(C_1(r)=r\), \(z_r=Z_{1,r}\), and G7 pathwise equality -> G8 identity -> G9 | derived | valid |

Every consumer depends on an earlier producer. The produced empirical, mixture, and one-arm objects are either identical to their consumed target objects or connected by the explicit overflow residual in the theorem's zero-one-risk metric. For G7 specifically, identity is proved at the record level by (G7.2c) before (G7.4), `(UT)`, or the baseline certificate consumes it.

## Early Obstruction And Repair Plausibility

- Contract contradiction: none. The exact goal permits a universal lower-domain threshold (N_0), fixed PAC constants, and a conditional minor assumption; G9 preserves all of them.
- Theorem-critical mechanism witness: passes at diagnostic granularity for every block. Positive/sign content comes from (g_{\rm gap}>0), the binary margin (a_0/M), the finite event-mass budget, exact one-use privacy, the indexed record identity (G7.2c), iid common experiments, and the strict (1/20) utility gap. No upper-bound-only source is used to assert a lower/sign claim.
- Source-to-claim adequacy: passes at obstruction level. The corrected Bun statement supplies the exact wrapper. The Alon displayed theorem is not misused for the stronger branch interface; its active proof components are re-instantiated by G2--G4. The current order/label bijection preserves objects, risk, and adjacency.
- Residual-to-target adequacy: passes. G1 and G5 have zero residual; G2--G4 use the same restricted coordinates. In G7, every nonhidden record is the same indexed pool record and hidden occurrence (\ell) is \(Z_{J,\ell}=z_\ell\) in both inputs, so (G7.4) has the single explicit overflow residual. G8 compares the exact arm and mixture risks. There is no transformed, weighted, or reference-object surrogate lacking a same-target bridge.
- Exported-interface feasibility: passes at diagnostic granularity. G7 now exposes the raw pools \(Z_{j,\ell}\), counters \(C_j(r)\), external designation, same-index nonhidden coupling, hidden first-\(R\) identity, and transfer (G7.4), together with every other block's raw controls, margins, defect classes, dominance relations, and consumers. The local proofs must establish them, but no new bridge or changed output target is needed.
- Generated-condition provenance: passes. The prior, exact privacy certificate, ideal mixture, indexed coupling identity, overflow-only transfer, exchangeability, utility, and admissibility inequalities all have legal named producers.
- Scope accumulation: passes. With-replacement multiplicities use the secrecy formula; product-DP leakage is (D\delta\le1/6); search failures are union-bounded by the choice of (D). In G7, each occurrence advances exactly one arm counter, external-prefix designation advances none, and equality is preserved positionwise until the single event (R>n). No persistent defect is asserted to vanish over an all-time or limiting scope.
- Noncircular closure: passes. The one-arm hard prior is produced only after learner-wise hardness; privacy is proved without utility; the indexed coupling is produced without exchangeability; `(EX)` then consumes only the \(J\)-independent ideal formula; (G7.4) and `(EX)` precede `(UT)`; G9 applies `(HP)` only after checking its conditions.
- Entry-state and boundary stress: passes. The diagnostic traces (\varepsilon=1), (\delta=0), odd (M), adjacent-rise endpoints, first binary probe, (R=0,R=n,R>n), unused changed records, PAC failure, (k=1), (m=1), and (N=N_0). At the first hidden occurrence, \(C_J=1\) and both inputs use \(Z_{J,1}=z_1\); at (R=n), they use exactly \(z_1,\ldots,z_n\); designating that prefix never advances an ideal counter. No mechanism vanishes at an allowed boundary while its target remains false.
- Mode/dependence upgrade: none. High-probability PAC is converted to expected risk with bounded loss; the theorem remains a high-probability-PAC lower bound. The fixed-sample scope is unchanged, and all visible variables remain exposed.
- Baseline invariance: passes. At (k=1), \(C_1(r)=r\) and \(z_r=Z_{1,r}\), so the constructed and ideal inputs use the same record at every first transition and subsequent position; (R=m<n), exact privacy, zero overflow, and `(EX)` as an identity preserve the full one-chain scale.
- Same-setting repair plausibility: the attempt-1 diagnostic defect is repaired within `/global-proof` by (G7.2a)--(G7.4), exactly as required by the triggering review. No further global, sketch, or idea repair is indicated. If a local proof later finds a numerical or indexing error inside the accepted interfaces, it should first be handled by the assigned `/proof-step`; if it changes a margin, dependency, output, mechanism, or boundary interface, it must return to `/proof-sketch`. No candidate `idea/theorem-contract defect` is currently supported.

## Global Gaps And Hard Steps

There is no unresolved global link, missing producer-consumer path, sketch/interface defect, or candidate idea/theorem-contract defect. The triggering G7 diagnostic gap is closed by the indexed definitions (G7.2a)--(G7.2b), the first-\(R\) identity (G7.2c), and the overflow-only transfer (G7.4); it is not deferred to a future step as an unspecified interface. The following local proof work remains. Each item is `step-local` under the unchanged accepted sketch.

1. **`step_001`: exact empirical wrapper.** Provisional units: a postprocessing lemma for finite output; a cited-result application restating the corrected secrecy lemma with (n/M=1/9); an exact expected-loss identity; and a source-convention proposition. Mechanism witness: (G1.1)--(G1.3), sourced by the corrected Bun lemma and the order/label bijection.
2. **`step_002`: expected-loss and homogeneous-set adaptation.** Provisional units: even/odd side-marginal lemma; one-record endpoint-transfer lemma; finite mesh-coloring lemma; Ramsey instantiation; and adjacent-rise proposition. Mechanism witness: the positive constants in (G2.4), with DP and mesh defects dominated in (G2.8)--(G2.10). This is one of the two highest-risk steps.
3. **`step_003`: moving-record family.** Provisional units: fixed-extremes interval construction; exact adjacency claim; rank/marginal lemma; endpoint prefix/suffix claim; and restriction assembly. Mechanism witness: (G3.2)--(G3.4), using the G2 rise as a nonvacuous lower source.
4. **`step_004`: binary/Ramsey quantitative closure.** Provisional units: (D,T) admissibility lemma; adaptive Hoeffding lemma; product-DP cited-result application; disjoint-leaf counting proposition; Ramsey upper/lower assembly; iterated-log extraction; and delta-translation proposition. Mechanism witness: (G4.1)--(G4.14), including finite adversarial-sign leakage (D\delta\le1/6). This is the other highest-risk step.
5. **`step_005`: finite minimax.** Provisional units: compact DP-polytope lemma; affine-risk lemma; minimax application with orientation; attainment; and arbitrary-output equivalence. Mechanism witness: the exact finite equality (G5.1), with no target residual.
6. **`step_006`: hidden-arm privacy.** Provisional units: well-defined-kernel/measurability claim; transcript locality lemma; two-sided DP averaging; postprocessing conclusion. Mechanism witness: one-use injection and the branch trace (R=0,R=n,R>n).
7. **`step_007`: coupling and overflow.** Provisional units: indexed conditional iid-pool lemma for \(Z_{j,\ell}\); occurrence-counter lemma for \(C_j(r)\); external-designation/no-counter-advance claim; same-index nonhidden coupling claim; first-\(R\) hidden identity proving (G7.2c); conditional iid-mixture and pointwise realizability lemmas; transfer inequality (G7.4); Bernstein application and derivative check. Mechanism witness: recordwise equality from the indexed counters plus the single finite-budget event `(OF)`.
8. **`step_008`: exchangeability and utility.** Provisional units: iid-vector representation; proof that (G7.2b) is \(J\)-independent even after external designation; conditional-independence lemma; pointwise `(EX)`; PAC-to-expectation lemma; coupling-to-`(UT)` assembly using (G7.4); Markov auxiliary proposition. Mechanism witness: same-target equality `(EX)`, the legal indexed transfer (G7.4), and strict numerical slack in `(UT)`.
9. **`step_009`: public rate and baseline.** Provisional units: \(n\)-to-\(m\) delta comparison; ceiling/sample comparison; strict contradiction assembly; and \(k=1\) baseline proposition with \(C_1(r)=r\), \(z_r=Z_{1,r}\), and pathwise equality at all \(m\) positions. Mechanism witness: (G7.2b)--(G7.2c), (G9.1)--(G9.6), and the exact one-arm entry trace.

Because no accepted step proof exists yet, these units cannot be treated as proved. The status is therefore `PARTIAL_BLOCKED`, not `COMPLETE_DRAFT`; because every unit already has a source-adequate, scope-compatible interface under the accepted sketch, the status is not `SKETCH_BLOCKED`.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic guidance only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, mechanism source, theorem scope, rate, or conclusion. Every local unit and cited-result application above must be independently proved or discharged by `/proof-step` and accepted by `/proof-step-review` before assembly.

## Suggested Routing

None

Continue to the nine accepted proof steps. Prioritize `/proof-step step_002` and `/proof-step step_004` for early diagnostic value, while respecting the accepted dependency order in any proof artifact that consumes earlier steps.
