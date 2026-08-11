# Global Proof

## Reviewed Sketch Identity

- Branch path: `perspective_1/idea_2`.
- Global producer attempt: 1 under sketch attempt 1.
- Reviewed `proof_sketch.md`: sketch attempt 1, initial mode, stable steps `step_001` through `step_015`, SHA-256 `d4f7150a803758cb3ae0c1b83b62c48782e29f6e6b8b057a13697d7aadf22442`.
- Reviewed `proof_sketch_review.md`: SHA-256 `215ff66413663f1d0ce05bb94a6c72bae7b56995a050f21785a005bbe565726d`.
- Review confirmation: `Sketch Review Status = ACCEPTED`, viability score 9, smallest retry target `None`, retry mode `none`.
- Binding: this diagnostic preserves the accepted claims, Step IDs, dependency graph, assumption IDs, output targets, generated-output flows, constants, rate objectives, exact risk metric, and candidate-wise lower-bound scope.

## Status

PARTIAL_BLOCKED

The accepted theorem-level interfaces compose without a detected `sketch/interface defect` or `idea/theorem-contract defect`. The remaining obligations are local proofs under those fixed interfaces. The highest-risk one is `step_008`: a current-notation expected-risk corollary must be derived from the proof of Alon--Livni--Malliaris--Moran (ALMM), rather than quoted from their PAC-form corollary. Direct inspection of arXiv:1806.00949v3 verifies the needed route at diagnostic granularity: the resampled empirical mechanism has expected empirical loss at most (1/8), and this is the only utility inequality consumed by the active proof of `lem:reduction`. The exact resampling/privacy constants, the finite-game minimax passage in `step_009`, and the one-use simulation in `step_012` still require independently checked step proofs.

Every unresolved theorem-critical obligation below is classified `step-local`, has an existing nonvacuous mechanism source, has a concrete raw-control-to-output interface, and preserves the exact accepted sketch.

## Attempted Theorem Claim

Goal mode: `exact-goal mode`.

Let (C\subseteq\{0,1\}^X) satisfy `assump:canonical-product` and `assump:vc-one-factors`, so that

\[
X=\bigsqcup_{i=1}^k X_i,
\qquad
C=\prod_{i=1}^k C_i,
\qquad
\operatorname{VC}(C_i)=1,
\qquad
d_i:=\operatorname{LD}(C_i)<\infty.
\]

Set

\[
r_i:=\log_2^*d_i,
\qquad
s_i:=1+\log_2^*(d_i+1),
\qquad
M:=M_{\oplus}(C)=\sum_{i=1}^k s_i,
\qquad
\pi_i:=s_i/M,
\]

and use the exact quotas (q_i), routed padded inputs (T_i(S)), and learner (A_n^\oplus) from `setting.md`. There are universal constants (C_{\mathrm{up}},C_{\mathrm{quota}}\ge1) and (c_{\mathrm{low}}>0) such that the following two clauses hold.

1. For every (0<\varepsilon\le1/10), every (0<\delta<1), and every
   
   \[
   n\ge\left\lceil C_{\mathrm{up}}\sum_iq_i\right\rceil,
   \]
   
   (A_n^\oplus) is ((\varepsilon,\delta))-DP under fixed-size replacement adjacency and, for every (c\in C) and every distribution (D) on (X),
   
   \[
   \Pr\!\left[R_D(A_n^\oplus(S),c)\le\frac1{16}\right]\ge\frac{15}{16}.
   \]
   
   Moreover,
   
   \[
   \sum_iq_i\le C_{\mathrm{quota}}
   \frac{M}{\varepsilon}
   \log^2\!\frac{eM}{\varepsilon\delta}.
   \]

2. For every fixed candidate (n\ge1) satisfying `assump:candidate-delta-budget`, namely
   
   \[
   0<\delta\le
   \min\left\{
   \frac1{n\log(n+1)},
   \min_i\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
   \right\},
   \qquad
   m_{n,i}:=\max\{8,\lceil4n\pi_i\rceil\},
   \]
   
   every joint, possibly improper, computationally unrestricted ((\varepsilon,\delta))-DP learner satisfying the same ((1/16,1/16))-PAC guarantee must obey
   
   \[
   n\ge c_{\mathrm{low}}M.
   \]
   
   Equivalently, below this threshold there is a deterministic full-product target and an allowed block-mixture distribution with masses (\pi_i) on which the learner fails with probability (>1/16).

The sample-complexity sandwich is asserted only if the same candidate-wise condition holds at (n_*=\mathrm{SC}_{\varepsilon,\delta}(C)). The upper clause is unconditional in positive (\delta<1); no lower conclusion is exported at a candidate that fails either delta conjunct. All hidden constants are universal after fixing the displayed numerical conventions, with no hidden dependence on (C,X,k,d_i,|C_i|,D,n,\varepsilon), or (\delta). This is the accepted `conditional` progress claim and does not resolve higher-VC indecomposable factors.

## Whole-Proof Draft

Write

\[
Q:=\sum_{i=1}^kq_i,
\qquad
\alpha_{\mathrm{fac}}=\frac1{64},
\qquad
\beta_{\mathrm{fac}}=\frac1{4096},
\qquad
\gamma:=\frac18,
\qquad
\eta_0:=e^7(2/9)^9<\frac3{2048}.
\]

The proof has eight dependency-ordered theorem blocks.

### Block G1: exact Cartesian structure (`step_001`)

For each nonconstant factor choose (x_i\in X_i) and two concepts in (C_i) that disagree at (x_i). Full Cartesian equality then realizes every labeling of \(\{x_1,\ldots,x_k\}\), so (\operatorname{VC}(C)\ge k). Conversely, if a shattered set contained two points in some (X_i), its projection would be shattered by (C_i), contradicting (\operatorname{VC}(C_i)=1). Thus

\[
\operatorname{VC}(C)=k.
\]

For Littlestone dimension, concatenate a depth-(d_i) shattered mistake tree for factor (i), attaching the next factor tree below every leaf. Every resulting path is realized because its factorwise concepts combine to an element of the full product. Hence (\operatorname{LD}(C)\ge\sum_i d_i). For the reverse inequality, run an optimal realizable mistake-bound strategy for (C_i) only on queries arriving in (X_i). Factor (i) is charged at most (d_i) mistakes, so the product strategy makes at most \(\sum_i d_i\) mistakes. Therefore

\[
\operatorname{LD}(C)=\sum_i d_i.
\]

When every (C_i) is finite, the restriction bijection gives \(|C|=\prod_i|C_i|\), hence the stated logarithmic cardinality identity. Nonconstancy implies (d_i\ge1), so (s_i\ge2), (k\le M/2), and monotonicity of the iterated logarithm gives (s_i\le r_i+2). These are exact same-class identities; no representation or surrogate object is introduced.

### Block G2: factor learner and routed privacy (`step_002`-`step_003`)

**Yan source wrapper (`step_002`).** Chao Yan, arXiv:2505.06581v2, defines replacement DP on datasets differing in one entry and proves the labeled result `thm:improper sample complexity` using `alg:improperlearner`. Its internal private-median parameter is

\[
d_{\mathrm{Yan}}=TD(X_i,(C_i)_f)+1,
\]

and the source has `cor: threshold dimension and littlestone dimension` together with

\[
TD(X_i,(C_i)_f)\le2^{d_i+1}.
\]

Consequently, under the branch's base-two convention,

\[
\log_2^*(d_{\mathrm{Yan}})
\le 1+\log_2^*(d_i+2)
\le C_*s_i
\]

for a universal (C_*), including (d_i=1). The source theorem's exact data threshold is an absolute constant times

\[
\frac{\log^*(d_{\mathrm{Yan}})
\log^2\!\bigl(\log^*(d_{\mathrm{Yan}})/(\varepsilon_{\mathrm{fac}}
\beta_{\mathrm{fac}}\delta_{\mathrm{fac}})\bigr)}
{\varepsilon_{\mathrm{fac}}}
\frac{48}{\alpha_{\mathrm{fac}}}
\left(10\log\frac{48e}{\alpha_{\mathrm{fac}}}
+\log\frac5{\beta_{\mathrm{fac}}}\right).
\]

Choose the universal (K) in `setting.md` to dominate the source constant, (C_*), and fixed log-convention shifts. Then (q_i) is at least this threshold. The source therefore supplies a mechanism that is ((\varepsilon/2,\delta/2))-DP on every size-(q_i) dataset and, on an unpadded realizable iid sample from ((c_i,D_i)), satisfies

\[
\Pr\left[R_{D_i}(h_i,c_i)\le\frac1{64}\right]
\ge1-\frac1{4096}.
\]

The source output is improper and has the same factor risk target. It does not supply padded utility, product privacy, a product theorem, or a lower bound.

To align the routed multiset convention with the source sequence convention, label equal copies temporarily and apply an independent uniform random permutation before the source mechanism. For multisets differing by one replacement, couple the permutations by putting the common (q_i-1) labeled copies in the same random positions and the two differing copies in the remaining position. The two source sequences then differ in exactly one entry. The iid utility law is permutation invariant. Thus symmetrization preserves both source privacy and source utility.

**At-most-two privacy (`step_003`).** Consider replacement-adjacent global datasets (S,S'). If the old and new rows lie in the same block, only that block's first-(q_i) multiset can change, by one replacement. If a row moves from (X_a) to (X_b), deletion in (a) either changes nothing or replaces the deleted selected row by the next (a)-row or a pad; insertion in (b) either changes nothing or replaces the last selected (b)-row or a pad. Hence (T_a(S),T_a(S')) and (T_b(S),T_b(S')) are each one-replacement adjacent as multisets, and every other routed multiset is identical.

Basic adaptive composition on these at most two mechanisms gives

\[
(\varepsilon/2,\delta/2)+(\varepsilon/2,\delta/2)
=(\varepsilon,\delta).
\]

Unchanged mechanisms may be coupled identically, and piecewise assembly is postprocessing. The conclusion is pointwise on all adjacent inputs, including nonrealizable and padded inputs, and contains no (k)-dependent privacy loss.

### Block G3: arbitrary-mass utility and the public upper rate (`step_004`-`step_006`)

Let (N_i) be the number of sample rows whose instance lies in (X_i), so (N_i\sim\operatorname{Bin}(n,\rho_i)) marginally. Split

\[
L=\{i:n\rho_i<128q_i\},
\qquad H_{\mathrm{occ}}=[k]\setminus L.
\]

The light mass obeys \(\sum_{i\in L}\rho_i<128Q/n\). If (i\in H_{\mathrm{occ}}), then (q_i\le n\rho_i/128), and multiplicative Chernoff gives

\[
\Pr[N_i<q_i]
\le\exp\left[-\frac{n\rho_i}{2}
\left(1-\frac1{128}\right)^2\right]
\le e^{-16},
\]

where (q_i\ge1) implies (n\rho_i\ge128). Weighting rather than union bounding yields

\[
\mathbb E\sum_i\rho_i\mathbf1\{N_i<q_i\}
\le\frac{128Q}{n}+e^{-16}.
\tag{G3.1}
\]

This remains exact at (\rho_i=0), where the block is always padded but has zero risk weight.

Conditional on the block-membership indicators and (N_i\ge q_i), the first (q_i) factor observations are iid from (D_i) with labels from (c_i). Let (G_i) be their Yan success event, and define

\[
W:=\sum_i\rho_i
\mathbf1\{N_i<q_i\ \text{or}\ G_i^c\}.
\]

The conditional Yan guarantee and (G3.1) give

\[
\mathbb EW\le\frac{128Q}{n}+e^{-16}+\frac1{4096}.
\tag{G3.2}
\]

On every outcome, good blocks contribute at most (1/64) to their conditional risk and bad blocks at most one, so

\[
R_D(A_n^\oplus(S),c)\le\frac1{64}+W.
\tag{G3.3}
\]

Take (C_{\mathrm{up}}=2^{17}). If (n\ge\lceil2^{17}Q\rceil), then

\[
\mathbb EW
\le\frac1{1024}+e^{-16}+\frac1{4096}
<\frac3{1024}.
\]

Since the remaining accuracy margin is (1/16-1/64=3/64), Markov's inequality gives

\[
\Pr\left[R_D(A_n^\oplus(S),c)>\frac1{16}\right]
\le\Pr[W>3/64]<\frac1{16}.
\]

No independence across factors, balance condition, or factorwise union bound is used.

For the public rate, exact substitution into the quota gives, for a universal (C_0),

\[
q_i\le
C_0\frac{s_i}{\varepsilon}
\log^2\!\frac{16384s_i}{\varepsilon\delta}+1.
\]

Because (s_i\le M), \(\sum_i s_i=M\), and (k\le M/2\),

\[
Q\le
C_0\frac{M}{\varepsilon}
\log^2\!\frac{16384M}{\varepsilon\delta}+k.
\]

Throughout (M\ge2), (\varepsilon\le1/10), and (\delta<1), so the public logarithm has a universal positive lower bound and

\[
\log\frac{16384M}{\varepsilon\delta}
\le C_1\log\frac{eM}{\varepsilon\delta},
\qquad
k\le C_2\frac{M}{\varepsilon}
\log^2\frac{eM}{\varepsilon\delta}.
\]

This proves the exact quota-sum interface with universal (C_{\mathrm{quota}}), retaining all ceilings and the full (\delta)-dependence.

### Block G4: the two lower-bound sources (`step_007`-`step_008`)

**Additive VC source (`step_007`).** Use the (k) shattered points from Block G1 and let (D) be uniform on them. Draw the full-product target by assigning independent fair labels to these points. Conditional on any sample, every unseen point retains an independent fair target label even against an arbitrary randomized improper output. Therefore

\[
\mathbb E R_D(A(S),c)
\ge\frac12\left(1-\frac1k\right)^n
\ge\frac12\left(1-\frac nk\right).
\]

If (n<k/2), this is (>1/4). By contrast, a ((1/16,1/16))-PAC learner has, for every fixed task,

\[
\mathbb ER_D(A(S),c)
\le\frac{15}{16}\frac1{16}+\frac1{16}
=\frac{31}{256}<\frac14.
\tag{G4.1}
\]

Averaging over the random targets therefore contradicts uniform PAC utility. Fix any universal (a_{\mathrm{VC}}\le1/4); every claimed learner obeys (n\ge a_{\mathrm{VC}}k), including the integer boundary.

**ALMM expected-risk wrapper (`step_008`).** The required output is the following proof-derived interface, not a quotation of `thm:ADPimpliesLD`: there are universal (a_{\mathrm L},c_\delta>0) such that, for (m\ge8),

\[
\delta\le\frac{c_\delta}{m^2\log(m+1)},
\qquad
m<a_{\mathrm L}\log_2^*d,
\tag{G4.2}
\]

imply that every possibly improper ((0.1,\delta))-DP (m)-sample learner (B) for a class of Littlestone dimension (d) satisfies

\[
\sup_{c,D}\mathbb E_{S\sim D_c^m,B}R_D(B(S),c)>\frac18.
\tag{G4.3}
\]

Here is the theorem-level derivation.

Assume instead that the supremum in (G4.3) is at most (1/8). For every fixed realizable labeled database (Z) of size (M_0=9m), let (P_Z) be its uniform empirical distribution and define

\[
\widetilde B(Z):
\quad U\sim P_Z^m,
\quad h\sim B(U),
\quad\text{output }h.
\]

Population risk under (P_Z) is exactly empirical loss on (Z), hence

\[
\mathbb E L_Z(\widetilde B(Z))
=\mathbb E_{U\sim P_Z^m,B}R_{P_Z}(B(U),c)
\le\frac18
\tag{G4.4}
\]

for every realizable (Z). Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, Lemma 5.9, is the source used by ALMM `lem:bun`. Its with-replacement secrecy-of-the-sample calculation states that sampling (m) rows from a database of size (N\ge2m) and applying an ((\epsilon,\delta))-DP mechanism is

\[
\left(\frac{6\epsilon m}{N},
e^{6\epsilon m/N}\frac{4m}{N}\delta\right)\text{-DP}.
\]

At (N=9m) and (\epsilon=0.1), both parameters are no larger than ((0.1,\delta)). Thus (\widetilde B) is an eligible empirical mechanism. If the balanced-sample presentation of the ALMM proof requires an even empirical size, take the least even (N\ge9m); then (N\le9m+1\le10m), the same privacy inequalities improve, and only universal constants change. This is a local source-convention rounding within `step_008`, not a new theorem assumption or output.

Direct inspection of ALMM arXiv:1806.00949v3 shows that empirical utility is used in the active threshold proof only in `lem:reduction`. There (G4.4) gives

\[
\mathbb E(1-L_Z(\widetilde B(Z)))\ge\frac78,
\]

which is exactly the displayed inequality from which ALMM derive indices with output probabilities separated by at least (1/(4N)). The preceding homogeneous-set lemma is algorithmic and uses no utility premise; the subsequent `lem:AtoP` and `lem:binary` consume only this probability jump and privacy. Therefore the same proof, with its unchanged objects and with (N\in[9m,10m]), gives an absolute (b_0>0) such that

\[
N\ge b_0\log_2^*T
\tag{G4.5}
\]

for the fixed finite threshold domain of size (T), provided the empirical privacy parameter is at most (c_0/(N^2\log N)). Choosing (c_\delta) small enough in (G4.2) makes this follow from the displayed factor-budget condition.

Finally, ALMM `thm:shelah` says that a class of Littlestone dimension (d) contains a fixed threshold pattern of size (T\ge\lfloor\log_2 d\rfloor), up to a harmless label/order isomorphism. Put (r=\log_2^*d). Because (m\ge8) and (m<a_{\mathrm L}r), choosing (a_{\mathrm L}) sufficiently small forces (r) into the range where

\[
\log_2^*T\ge r-C_{\mathrm{sh}}\ge r/2.
\]

Then (G4.5) and (N\le10m) imply (m\ge(b_0/20)r), contradicting (G4.2) after (a_{\mathrm L}\le b_0/20). This proves (G4.3). The label bijection \(\{\pm1\}\leftrightarrow\{0,1\}\), replacement adjacency, arbitrary-output convention, and population-risk target are exact. At (d=1), the premise (m<a_{\mathrm L}\log_2^*d) is inactive, as required; the VC source pays that regime.

### Block G5: algorithm-independent priors and hard-factor calibration (`step_009`-`step_010`)

Fix factor (i) and a budget (m_i:=m_{n,i}) satisfying (G4.2). The Shelah threshold witness used above fixes a finite ordered point set and finite threshold subclass before a learner is chosen. The empirical conversion uses only uniform laws on finite realizable databases of size in ([9m_i,10m_i]), so it yields a finite task set \(\Theta_i\) of pairs \(\theta=(c,D)\) inside (C_i).

Restrict outputs to their label vectors on the finite point set. A randomized learner is then a finite array of transition probabilities. The set \(\mathcal K_i\) of all row-stochastic arrays satisfying every ((0.1,\delta))-DP inequality on adjacent finite labeled databases, including nonrealizable ones, is a nonempty compact convex polytope. For (K\in\mathcal K_i) and (\theta\in\Theta_i), define

\[
\ell_i(K,\theta)
:=\mathbb E_{S\sim D_c^{m_i},K}R_D(K(S),c).
\]

This payoff is bilinear in a kernel and a distribution over tasks. Block G4 implies \(\max_{\theta\in\Theta_i}\ell_i(K,\theta)>1/8\) for every (K\). Compactness makes the minimum over (K) attained, so

\[
\min_{K\in\mathcal K_i}\max_{\theta\in\Theta_i}
\ell_i(K,\theta)>\frac18.
\]

Finite minimax therefore supplies a finite prior (\nu_i\) on \(\Theta_i\), fixed before any later learner, such that

\[
\min_{K\in\mathcal K_i}
\mathbb E_{\theta_i\sim\nu_i}\ell_i(K,\theta_i)>\frac18.
\tag{G5.1}
\]

Arbitrary improper outputs are included because restricting any hypothesis to the finite task support is postprocessing and preserves loss. For every factor where this hard interface is not invoked, choose one fixed (c_i^0\in C_i), one (x_i^0\in X_i), and let (\nu_i) be the point mass at \((c_i^0,\delta_{x_i^0})\). This completes the later product experiment without asserting hardness on a low factor.

For calibration, set

\[
R_0:=\left\lceil\frac{32}{a_{\mathrm L}}\right\rceil,
\qquad
H:=\{i:r_i\ge R_0\},
\qquad
w_L:=\sum_{i\notin H}\pi_i,
\]

and choose

\[
c\le\min\left\{
\frac{a_{\mathrm L}}{64},
\frac{a_{\mathrm{VC}}}{128(R_0+2)}
\right\}.
\tag{G5.2}
\]

Under the contradiction hypothesis (n<cM), Block G4 gives (n\ge a_{\mathrm{VC}}k), and therefore

\[
w_L
\le\frac{(R_0+2)k}{M}
<\frac{(R_0+2)c}{a_{\mathrm{VC}}}
\le\frac1{128}.
\tag{G5.3}
\]

For (i\in H), (s_i\le r_i+2\le2r_i). Hence

\[
4n\pi_i<8cr_i\le\frac{a_{\mathrm L}r_i}{8}.
\]

Also (1\le a_{\mathrm L}r_i/32) and (8\le a_{\mathrm L}r_i/4) by the definition of (R_0). Thus both branches of

\[
m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}
\]

are strictly smaller than (a_{\mathrm L}r_i). Every factor in (H) therefore has the hard prior (G5.1), while all discarded factors have total exact theorem weight below (1/128).

### Block G6: overflow and the one-use hidden-factor learner (`step_011`-`step_012`)

Let (L\sim\operatorname{Bin}(n,p)), (\mu=np), and (m=\max\{8,\lceil4\mu\rceil\}). The overflow event (O=\{L>m\}) has threshold at least \(\max\{9,4\mu+1\}\). The optimized binomial Chernoff inequality gives, when (\mu\le2),

\[
\Pr[O]\le
\exp[-9\log(9/2)+7]
=e^7(2/9)^9.
\]

When (\mu\ge2), use threshold (4\mu+1). Its exponent

\[
f(\mu):=(4\mu+1)\log(4+1/\mu)-3\mu-1
\]

has

\[
f'(\mu)=4\log(4+1/\mu)-1/\mu-3>0
\qquad(\mu\ge2),
\]

so the same value at (\mu=2) is valid. Therefore, uniformly in (n,p),

\[
\Pr[O]\le\eta_0:=e^7(2/9)^9<\frac3{2048}.
\tag{G6.1}
\]

At (p=0) or whenever (m\ge n), overflow is impossible, consistently with this bound.

Now fix (i\in H) and write (m_i=m_{n,i}). Define a factor learner (B_i) on an input stream (U=(u_1,\ldots,u_{m_i})) as follows.

1. Independently sample \(\theta_j=(c_j,D_j)\sim\nu_j\) for every (j\ne i).
2. Draw (J_1,\ldots,J_n\) iid with \(\Pr[J_t=j]=\pi_j\).
3. For a slot with (J_t\ne i), draw its labeled row from \((D_{J_t})_{c_{J_t}}\). Fill successive (i)-slots with successive rows of (U).
4. If the number (L_i\) of (i)-slots exceeds (m_i), output a fixed hypothesis independent of (U), without requesting an unavailable row. Otherwise run the global learner (A) once and return its restriction to (X_i).

Condition on all auxiliary randomness. Replacing one input row of (U) changes either zero global rows or exactly the single slot in which that row is used. On overflow, the output is input-independent. Hence (B_i) is exactly ((\varepsilon,\delta))-DP, and therefore ((0.1,\delta))-DP because (\varepsilon\le0.1). The factor-budget conjunct of `assump:candidate-delta-budget` makes it eligible for (G5.1). DP is required on nonrealizable inputs, so the conditional privacy comparison does not assume realizability; on realizable random tasks, full Cartesian equality supplies the single target tuple that labels all assembled rows.

For object-target compatibility, couple this truncated experiment to the ideal experiment that replaces (U) by an infinite iid stream from \((D_i)_{c_i}\) and always invokes (A). Off (O_i=\{L_i>m_i\}), the two global datasets, learner randomness, output restriction, factor target, and factor distribution agree exactly. Since local risk lies in ([0,1]),

\[
\left|
\mathbb E R_{D_i}(B_i(U),c_i)
-\mathbb E R_{D_i}(A(S)|_{X_i},c_i)
\right|
\le\Pr[O_i]\le\eta_0.
\tag{G6.2}
\]

No row is reused, no group privacy is invoked, and no privacy budget is composed across factors.

### Block G7: tensorization and the candidate contradiction (`step_013`-`step_014`)

Apply (G5.1) to (B_i). For every (i\in H),

\[
\mathbb E_{\theta_i\sim\nu_i,U,B_i}
R_{D_i}(B_i(U),c_i)>\frac18.
\]

Together with (G6.2), this gives in the ideal experiment

\[
\mathbb E R_{D_i}(A(S)|_{X_i},c_i)
>\frac18-\eta_0.
\tag{G7.1}
\]

Sample all \(\theta_i\sim\nu_i\) independently and set

\[
c=(c_1,\ldots,c_k)\in C,
\qquad
D=\sum_i\pi_iD_i.
\]

The ideal construction produces exactly (S\sim D_c^n). It is the same product-prior experiment for every marginal (i); no hard factor is selected after observing (A). For every realized hypothesis, the exact risk identity is

\[
R_D(A(S),c)
=\sum_i\pi_iR_{D_i}(A(S)|_{X_i},c_i).
\]

Finite Tonelli/linearity and (G7.1) therefore yield

\[
\mathbb E R_D(A(S),c)
>(1-w_L)\left(\frac18-\eta_0\right).
\tag{G7.2}
\]

Arbitrary dependence among the output coordinates is irrelevant: only marginal expected risks are added. Overflow is subtracted once inside each weighted marginal, not union bounded.

If the global learner satisfied the target PAC guarantee for every deterministic task, (G4.1) would remain valid after averaging the finite product prior. But (G5.3), (G6.1), and (G7.2) give

\[
\mathbb E R_D(A(S),c)
>\frac{127}{128}\left(\frac18-\frac3{2048}\right)
=\frac{32131}{262144}
>\frac{31744}{262144}
=\frac{31}{256},
\]

a contradiction. Set (c_{\mathrm{low}}=c) from (G5.2). Since the average over a finite task prior exceeds (31/256), one deterministic full-product task has expected risk (>31/256). For a ([0,1])-valued risk, this implies

\[
\Pr\left[R_D(A(S),c)>\frac1{16}\right]>\frac1{16},
\]

because the opposite inequality would reproduce the (31/256) expectation ceiling. This is exactly the deterministic witness in the candidate-wise lower clause.

### Block G8: exact scope assembly (`step_015`)

`step_003` proves upper privacy for every positive (\delta<1). `step_005` proves upper PAC utility at (n\ge\lceil2^{17}Q\rceil), and `step_006` proves the public quota rate. Independently, `step_014` proves the lower implication only for the fixed candidate at which both conjuncts of `assump:candidate-delta-budget` hold. Taking

\[
C_{\mathrm{up}}=2^{17},
\qquad
c_{\mathrm{low}}=c
\]

and a universal (C_{\mathrm{quota}}) from Block G3 proves the two clauses. If the candidate condition holds at (n_*=\mathrm{SC}_{\varepsilon,\delta}(C)), substitute that candidate into the lower implication and combine it with the unconditional upper bound. If it fails there, export only the upper clause. No cross-candidate, asymptotic, expectation-only, proper-learning, finite-cardinality, or stronger-delta statement is inferred.

At (k=1), the upper path is one symmetrized Yan call and the lower path is the maximum of the nonconstancy/VC source and the ALMM log-star source; (m_{n,1}\ge4n) makes overflow impossible. Thus both inherited one-factor conclusions, rather than weaker surrogates, are preserved.

### Assembly

Blocks G1--G3 prove the full upper clause. Blocks G1 and G4 provide independent additive and log-star lower sources; G5 converts the latter to algorithm-independent priors and calibrates their mass; G6 provides an exact-DP factor reduction with one explicit coupling residual; G7 tensorizes the local lower bounds and closes the numerical contradiction; and G8 applies each result only on its accepted scope. All produced objects are consumed after their producers, and every target transfer is in the exact distributional 0-1 risk.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| G1 | Exact VC/LD/cardinality structure and elementary inequalities | `step_001` | None | `assump:canonical-product`, `assump:vc-one-factors` | Step-local formalization of LD upper/lower arguments |
| G2 | Yan factor interface and exact global privacy | `step_002`, `step_003` | G1 for (d_i,s_i) | `assump:canonical-product`, `assump:vc-one-factors`, `assump:global-privacy-range` | Step-local exact source transcription, (TD+1) endpoint domination, permutation coupling, and routed case split |
| G3 | Weighted arbitrary-mass utility and public quota rate | `step_004`, `step_005`, `step_006` | G1, G2 | First three primitive assumptions | Step-local Chernoff conditioning, Markov constants, and ceiling/logarithm arithmetic |
| G4 | Independent additive-(k) lower source and expected-risk ALMM source | `step_007`, `step_008` | G1 | `assump:canonical-product`, `assump:vc-one-factors`, `assump:global-privacy-range`; factor delta bound when invoked | Step-local ALMM proof wrapper, secrecy constants, threshold-size/log-star translation, and source-convention rounding |
| G5 | Algorithm-independent finite hard priors and high-factor calibration | `step_009`, `step_010` | G4 | Primitive product definitions and current candidate parameters | Step-local finite restriction/compact minimax and strict constant arithmetic |
| G6 | Uniform overflow control and exact-DP hidden-factor simulation | `step_011`, `step_012` | G5 and the candidate budget | All four assumptions, with `assump:candidate-delta-budget` used at (m_{n,i}) | Step-local two-regime Chernoff derivation, simulator measurability, one-use privacy, realizability, and ideal coupling |
| G7 | Weighted global lower risk, numerical contradiction, and deterministic witness | `step_013`, `step_014` | G4--G6 | All four assumptions on the fixed lower candidate | Step-local common-experiment identity, strict minimax transfer, and PAC witness extraction |
| G8 | Exact two-clause theorem and conditional (n_*) specialization | `step_015` plus direct assembly | G2, G3, G7 | First three assumptions for upper; all four only for lower | Step-local quantifier/scope assembly; no missing theorem-level bridge |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | G1 | Supplies exact structure to G2--G5 and G8 | VC projection/product; concatenated mistake trees; product online upper strategy; finite-cardinality identity | Exact same-class objects; (k=1), (d_i=1), and infinite-cardinality boundaries separated |
| `step_002` | G2 | Consumed by `step_003`, `step_005`, `step_006` | Quote Yan v2; map objects and parameters; prove (TD+1) endpoint and quota domination; symmetrize | No padded utility claim |
| `step_003` | G2 | Consumed by `step_015` | Same-block and cross-block routed multiset coupling; at-most-two composition; postprocessing | Privacy includes arbitrary nonrealizable inputs |
| `step_004` | G3 | Consumed by `step_005` | Light/heavy mass split and weighted Chernoff expectation | No count independence or union bound needed |
| `step_005` | G3 | Consumed by `step_015` | Conditional iid factor sample, definition of (W), exact risk comparison, Markov conversion | Exact (1/16) risk and confidence output |
| `step_006` | G3 | Consumed by `step_015` | Substitute fixed factor parameters, sum quotas, dominate ceilings and fixed log shifts | No hidden \(k,d_i,\lvert C_i\rvert\) dependence |
| `step_007` | G4 | Consumed by `step_010`, `step_014` | Random full-product labels, unseen-mass risk, PAC expectation ceiling | Applies without privacy and to improper output |
| `step_008` | G4 | Consumed by `step_009` | Resample from a fixed empirical distribution; verify secrecy parameters; trace the sole ALMM utility use; translate Shelah thresholds and log-star constants | Highest-risk local proof; theorem-level mechanism verified, formal derivation still required |
| `step_009` | G5 | Consumed by `step_012`, `step_013` | Fix finite task set; compact finite DP polytope; preserve strict gap; apply finite minimax; define baseline point masses | Prior is chosen before every simulated learner |
| `step_010` | G5 | Consumed by `step_012`--`step_014` | Prove (w_L<1/128); dominate floor, ceiling, and log-star shift in (m_{n,i}<a_{\mathrm L}r_i) | All-low regime is already excluded by VC source |
| `step_011` | G6 | Consumed by `step_012`--`step_014` | Optimized Chernoff inequality in (\mu\le2) and (\mu\ge2); numerical check (\eta_0<3/2048) | Overflow is charged locally, never union bounded |
| `step_012` | G6 | Consumed by `step_013` | Construct (B_i); prove one input row changes at most one global row; constant overflow branch; full-product realizability; same-target coupling | One global invocation, no group privacy |
| `step_013` | G7 | Consumed by `step_014` | Apply each fixed prior to (B_i); identify one common ideal product experiment; use exact weighted risk identity | Joint output-coordinate dependence is irrelevant |
| `step_014` | G7 | Consumed by `step_015` | PAC expectation ceiling, strict rational comparison, deterministic task and failure-event extraction | Fixed candidate only |
| `step_015` | G8 | Final theorem assembly | Keep arbitrary-(\delta) upper and candidate-wise lower scopes separate; specialize only at admissible (n_*) | Preserves `conditional` progress label and both (k=1) baselines |

## Dependency And Assumption Audit

The dependency graph is acyclic and matches the accepted sketch. No condition about a generated sample, event, prior, hard set, overflow event, simulation, or output is promoted to a theorem-facing assumption.

| Condition or object | Provenance classification | Producer or source | Consumers | Audit result |
| ------------------- | ------------------------- | ------------------ | --------- | ------------ |
| Finite disjoint full Cartesian factorization | primitive condition | `assump:canonical-product` | G1, routing, product targets | Used exactly as stated; no selected representation is substituted |
| Nonconstant VC-one finite-LD factors | primitive condition | `assump:vc-one-factors` | G1, Yan, ALMM, baseline choices | Supplies nonemptiness and source eligibility; does not assume any learner property |
| (0<\varepsilon\le1/10), (0<\delta<1) | primitive condition | `assump:global-privacy-range` | Both clauses | Lower uses privacy monotonicity; upper uses all positive (\delta<1) |
| Candidate delta inequalities | primitive candidate-wise numerical condition | `assump:candidate-delta-budget` | G6--G8 lower path | Checked at the current (n) and every exact (m_{n,i}); never treated as a uniform schedule |
| Product identities and (k\le M/2) | accepted derived conclusion | `step_001` / G1 | G2--G5, G8 | Legal earlier producer |
| Yan factor guarantee | accepted derived conclusion from cited source and wrapper | `step_002` / G2 | Upper privacy, utility, rate | Utility consumed only when no padding occurs |
| Routed adjacency certificate | derived conclusion | `step_003` / G2 | Upper theorem | Pointwise on all adjacent global inputs |
| Counts, shortage events, (W), and good events | derived generated controls | `step_004`, `step_005` / G3 | Upper utility | Produced from iid sampling and mechanism randomness before use |
| VC lower certificate | derived conclusion | `step_007` / G4 | Calibration and contradiction | Does not assume DP or desired direct-sum lower bound |
| Expected-risk factor hardness | derived cited-tool wrapper | `step_008` / G4 | Finite minimax | The formal ALMM PAC corollary is not used as if it stated this output |
| Finite priors (\nu_i) | derived generated objects | `step_009` / G5 | Simulator and common experiment | Hard priors where eligible; explicit realizable point masses elsewhere |
| (H,w_L), subcriticality | derived generated controls | `step_010` / G5 | G6--G7 | Derived from prior lower sources and the contradiction hypothesis |
| (O_i) and (\eta_0) | derived generated controls | `step_011` / G6 | Coupling and final constants | Depend only on block labels, not learner success |
| (B_i) and ideal coupling | derived generated objects | `step_012` / G6 | Tensorization | Consume only already produced priors, calibration, and overflow control |
| Global expected lower risk and deterministic witness | derived conclusions | `step_013`, `step_014` / G7 | Final assembly | Same exact risk, target, and distribution as final theorem |

There are no missing derived-condition bridges. The only conditional hypothesis inside the lower proof is the contradiction hypothesis (n<cM); it is discharged by contradiction and is not exposed as a theorem assumption.

## Citation And Tool Audit

| Source or tool | Current-branch objects | Hypotheses to discharge | Conclusion needed and convention compatibility | Affected block / Step ID | Diagnostic status |
| -------------- | ---------------------- | ----------------------- | ---------------------------------------------- | ------------------------ | ----------------- |
| Yan, arXiv:2505.06581v2, `alg:improperlearner`, `cor: threshold dimension and littlestone dimension`, `thm:improper sample complexity` | (X_i,C_i,d_i,q_i,\alpha_{\mathrm{fac}},\beta_{\mathrm{fac}},\varepsilon/2,\delta/2) | VC one; finite LD; realizable iid sample; positive parameters; source-size threshold; replacement DP | Improper factor DP/PAC interface. Source and branch use binary labels, arbitrary distributions, fixed-size datasets differing in one entry, and distributional risk. Internal (TD+1) controls the (d_i=1) endpoint. Known nonoutputs: no routing, padding utility, product result, or lower bound | G2, `step_002` | Valid diagnostic discharge path; exact constant envelope remains local proof work |
| Yan `thm:composition` / standard basic composition and postprocessing | At most two changed routed factor mechanisms | One-replacement factor inputs; individual ((\varepsilon/2,\delta/2))-DP | Exact tuple privacy ((\varepsilon,\delta)); piecewise learner is the same output under deterministic postprocessing | G2, `step_003` | Direct standard-tool instantiation fixed by routed case split |
| ALMM, arXiv:1806.00949v3, `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD` | A factor class of LD (d), an (m)-sample unrestricted learner, fixed threshold witness, empirical mechanism of size (N\in[9m,10m]) | ((0.1,\delta))-DP; (m\ge8); small delta after resampling; expected empirical loss (\le1/8); finite threshold pattern from LD | Proof-derived worst-case expected population risk (>1/8) below (a_{\mathrm L}\log_2^*d). Labels, order reversal if needed, replacement adjacency, arbitrary output, and population loss match. Known nonoutput: the formal corollary is PAC-form and supplies no prior | G4, `step_008`; G5 finite witness | Valid theorem-level proof path; full line-by-line derivation is the highest-priority local unit |
| Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553, Lemma 5.9 and secrecy-of-the-sample calculation | Sampling (m) rows with replacement from a fixed empirical database of size (N\ge9m) | Original mechanism ((\epsilon,\delta))-DP with (\epsilon\le1) | Empirical wrapper privacy ((6\epsilon m/N,e^{6\epsilon m/N}(4m/N)\delta)), no larger than branch budget; uniform-database population loss equals empirical loss | G4, `step_008` | Source formula explicitly checked; parity/rounding stays within a universal factor |
| Finite von Neumann minimax / finite linear-program duality | Finite DP-kernel polytope (\mathcal K_i) and finite task set (\Theta_i) | Compact convex nonempty kernel set; finite task simplex; bilinear payoff; fixed strict worst-case gap | Prior (\nu_i) fixed before learner with prior-average exact factor risk (>1/8) | G5, `step_009` | Direct finite-dimensional derivation planned; no infinite-space minimax is consumed |
| Multiplicative and optimized binomial Chernoff inequalities | (N_i\sim\mathrm{Bin}(n,\rho_i)), (L_i\sim\mathrm{Bin}(n,\pi_i)) | Exact means, thresholds, integer rounding | Weighted shortage bound and uniform overflow (\eta_0) | G3 `step_004`; G6 `step_011` | Standard facts with exact current-notation exponents exposed |
| Markov, finite Tonelli/linearity, PAC-to-expectation bound | (W), local risks, exact global weighted risk | Nonnegative or ([0,1])-valued variables; finite factor sum | High-probability upper utility; global expected lower risk; deterministic witness | G3, G7 | Direct derivations; probability and metric interfaces match exactly |

No citation supplies a conclusion for a different learner, object, metric, or target. Yan's output is consumed only on the identical factor task; the ALMM resampling distribution is the exact uniform empirical distribution, and the later simulator coupling compares identical ((c_i,D_i)) objects off overflow.

## Quantitative Dependence Audit

- Exposed upper variables: (k,(d_i,r_i,s_i,q_i)_i,M,n,\varepsilon,\delta). The public rate retains (M/\varepsilon) and (\log^2(eM/(\varepsilon\delta))). Factor cardinalities never enter.
- Exposed lower variables: (k,(d_i,r_i,s_i,m_{n,i})_i,M,n,\varepsilon,\delta), with the current candidate (n) appearing in every exact (m_{n,i}) and in both candidate delta conjuncts.
- Fixed numerical quantities: (\alpha_0=\beta_0=1/16), (\alpha_{\mathrm{fac}}=1/64), (\beta_{\mathrm{fac}}=1/4096), the half privacy allocation, occupancy split 128, (C_{\mathrm{up}}=2^{17}), (\gamma=1/8), (\eta_0=e^7(2/9)^9), and source constants (K,a_{\mathrm L},c_\delta,a_{\mathrm{VC}}).
- Hidden constants: (C_{\mathrm{quota}}) and (c_{\mathrm{low}}) may depend only on fixed numerical and universal source constants. They may not depend on (C,X,k,d_i,|C_i|,D,\rho_i,n,\varepsilon,\delta).
- Probability mode: upper utility is high probability over iid data and mechanism randomness; upper privacy is a pointwise adjacent-dataset inequality. Lower proof uses finite expectations as an intermediate, then extracts a deterministic task with failure probability (>1/16). No average-task theorem is exported.
- Horizon mode: one fixed sample size for the upper learner and one separately fixed candidate for the lower implication. There is no all-time, horizon-uniform, asymptotic, stopping-time, or cross-candidate upgrade.
- Metric mode: every transfer uses distributional binary 0-1 risk. The only empirical loss appears in the ALMM wrapper on a uniform fixed database, where it equals population risk exactly.
- Auxiliary tolerances: no undeclared tolerance remains. Padding is charged inside (W); low-factor mass is (w_L<1/128); overflow is (\eta_0<3/2048); all are compared with the exact theorem margin.
- Public specialization bridge: exact quota substitution gives the 16384 logarithm, (s_i\le M) handles factor variation, and (k\le M/2) absorbs all ceilings. The public logarithm is uniformly bounded below on the primitive parameter range, so no asymptotic phrase replaces an inequality.
- Candidate lower bridge: (R_0=\lceil32/a_{\mathrm L}\rceil) and (G5.2) separately dominate the low-factor count, (+2) log-star shift, ceiling one, and floor eight. The final rational comparison separately dominates (w_L) and (\eta_0).
- Baseline invariance: at (k=1), the upper result is the same Yan factor conclusion up to fixed budget allocation and conservative sample constants. The lower result is the same unrestricted ALMM/VC scale under the same candidate delta interface; overflow is exactly zero. Neither baseline is replaced by an expectation-only, stopped, finite-domain-only, proper, or cardinality-dependent theorem.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ---------------------------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ---------------------------------- | -------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Product VC/LD/cardinality identities | Structural equality; defines both theorem scales | Every finite-block class in the setting | VC projection/product; concatenated LD trees; factorwise online mistake charge | Disjoint full Cartesian freedom | Cross-block coupling; repeated points in one factor; possible infinite cardinality | Finite nonnegative sum over (k); no limiting defect | structural lower/upper comparison | Primitive `assump:canonical-product`, `assump:vc-one-factors`; infinite-cardinality branch excludes only the log-cardinality identity | Full product gives independent lower witnesses; VC one caps each block; exact optimal mistake budgets give LD upper | N/A: produced and consumed class and dimensions are identical | `step-local` | Primitive structure produces identities before all consumers; `step_001 -> consumers` | (k=1) reduces exactly to factor dimensions; no update process | Both inequalities close to equality; finite product gives exact cardinality | Product bijection, VC one, finite LD | Derived shattered points and factor strategies | (d_i=1), (k=1), infinite (C_i) handled | Without full product, independent witnesses and additive lower source can fail |
| Yan factor DP/PAC interface at (q_i) | Cited wrapper; upper mechanism source | One fixed factor call at exact quota | Source threshold at most (q_i); unpadded risk at most (1/64) except probability (1/4096) | Yan v2 algorithm with internal (TD+1) | Hidden source constant, log-star convention, (d_i=1), ordering, padding | One fixed call; no cross-factor accumulation here | structural lower/upper comparison | Yan v2 labels plus (TD+1); padding excluded from utility, DP valid on it | (TD+1 <= 2^{d_i+1}+1) supplies a positive endpoint and universal domination by (s_i) | Exact same (c_i,D_i,R_{D_i}); padding is a separate downstream bad-block residual | `step-local` | Cited source and wrapper precede routing and utility; `step_002 -> step_003/005/006` | At (d_i=1), (s_i=2) and (TD+1>=1); source remains active | Choose universal (K) so source threshold <= (q_i); invoke utility only unpadded | VC one, finite LD, positive privacy/utility parameters | Symmetrized factor mechanism and success event | Tiny positive (delta), (delta) near 1, infinite factor, arbitrary padded labels handled | Without endpoint wrapper, printed (log^*1) shorthand does not certify a positive quota |
| Routed at-most-two privacy | Exact global DP closure | Every fixed (n), every adjacent pair | One replacement changes at most two factor multisets, each by one replacement | Disjoint source/destination blocks and multiset symmetrization | Order shifts, promotion/displacement, pads, nonrealizable labels | Privacy loss has support size at most two; finite budget exactly ((epsilon,delta)) | algebraic coupling | Primitive disjointness plus derived factor DP; no data boundary excluded | Source supplies DP for each exact changed factor input; composition supplies the claim class | Exact factor-output tuple to exact piecewise hypothesis by postprocessing; zero residual | `step-local` | `step_002` precedes routed comparison; no global privacy premise is reused | Cross-block first comparison activates exactly two factor inequalities | Two times ((epsilon/2,delta/2)) equals ((epsilon,delta)) | Disjoint partition, replacement adjacency | Routed multisets, coupled permutations | Same block, different blocks, selected/unselected, padded/full, (k=1) pass | More than two changed calls would introduce forbidden factor-count privacy loss |
| Weighted shortage and bad mass (W) | Generated event-mass control; upper utility closure | One iid sample of fixed size under arbitrary block masses | E shortage <= 128Q/n + e^{-16}; risk <= 1/64 + W | Weights sum to one; binomial lower tail; accuracy margin 3/64 | Rare blocks, padding loss one, factor failure loss one, dependent multinomial counts | Finite nonnegative weighted sum; all defects charged once | reserve/ledger under declared scope | Primitive iid sampling plus Yan conditional utility; zero-mass block is risk-null | Normalized weights and Chernoff have the exact upper-control content required | (W) is exactly the bad-block contribution in global risk; no surrogate metric | `step-local` | Counts from primitive sample and factor guarantees are produced before `step_005` | (rho_i=0) gives (N_i=0) but weight zero; all-good entry gives (W=0) | Light mass <=128Q/n; heavy weighted tail <=e^{-16}; factor failures <=beta_fac; Markov closes margin | iid sampling, arbitrary (rho_i), exact quotas | Counts, shortage events, success events, (W) | One full-mass block and arbitrarily many tiny blocks pass | A union bound or unweighted event count would add (k) or require balance |
| Public quota simplification | Quantitative specialization | All primitive upper parameters | (Q <= C M/epsilon log^2(16384M/(epsilon delta))+k) | Sum (s_i)=M and (s_i<=M) | Ceilings, fixed 16384 shift, small public log | Finite deterministic sum; no probability accumulation | structural lower/upper comparison | Exact quota formula plus (M>=2), (epsilon<=1/10), (delta<1) | Available monotone controls have the correct upper-bound direction | Produced quantity is the exact consumed (Q); all ceiling residuals included | `step-local` | `step_001/002 -> step_006 -> step_015` | At (k=1,d_1=1,delta near 1), public log remains uniformly positive | Pointwise log comparison and (k<=M/2) absorb every residual | Privacy range and structural identities | Exact (q_i), (Q) | Tiny delta and delta near 1 both pass | Dropping ceilings or hiding factor dependence would invalidate the public rate |
| Global VC lower certificate | Structural lower source; pays one per factor | Every claimed learner, privacy not required | If (n<k/2), expected risk >1/4 | Independent unseen fair labels on product-shattered points | Sample collisions and arbitrary improper output | One finite expectation; collisions only increase unseen mass | structural lower/upper comparison | Primitive full product and nonconstancy | Supplies the required positive lower-risk content, not merely a size upper bound | Exact global target, sample, output class, and risk | `step-local` | G1 produces shattered set before `step_007`; no direct-sum conclusion assumed | (k=1,n>=1) satisfies chosen universal weak constant | Half unseen-label error versus PAC ceiling 31/256 | Full-product targets, uniform witness distribution | Unseen set and risk average | Point-function factors and arbitrary output pass | ALMM is inactive at small (r_i), so loss of this source leaves additive (k) unpaid |
| ALMM expected-risk floor (>1/8) | Structural risk lower source for factors | One fixed (m,d,delta) satisfying (G4.2) | Expected population risk <=1/8 would create an empirical kernel with E empirical loss <=1/8 and force (m >= a_L log^*d) | ALMM probability jump from 7/8 expected empirical accuracy; finite Shelah threshold pattern | 9-to-1 sample factor, empirical parity convention, delta scaling, log-star shift, label/order conventions | One fixed budget; all constant defects absorbed once into universal source constants | structural lower/upper comparison | ALMM v3 labeled proof path plus Bun et al. Lemma 5.9; (d=1) branch excluded because premise inactive | Expected empirical accuracy is exactly the lower/sign source used in `lem:reduction`; Shelah supplies finite threshold support | Uniform-database population risk equals empirical loss exactly; threshold subproblem is inside the same factor | `step-local` | Cited threshold proof is independent of product theorem; `step_008 -> step_009` | At (m=8) resampled size at least 72; at (d=1) no false claim; epsilon below .1 handled by monotonicity | Secrecy formula preserves privacy, ALMM proof gives empirical-size lower, Shelah/log-star translation returns factor lower | VC-one factor with finite LD, factor privacy and delta range | Resampled empirical kernel, fixed threshold witness | Infinite ambient factor and improper outputs pass by fixed finite restriction | Without the source-level expected-loss trace, the PAC corollary alone gives no 1/8 additive interface |
| Finite hard prior (nu_i) | Generated algorithm-independent hardness | Each subcritical hard factor at current candidate budget | min_K max_task loss >1/8 equals max_prior min_K average loss | Compact finite DP polytope and fixed finite task set | Infinite ambient class/output; algorithm-dependent adversarial task; possible loss of strict gap | One compact game per factor; finite product of priors | algebraic coupling | Fixed ALMM threshold witness and finite uniform-database tasks; baseline point masses off hard regime | Strict source risk floor is preserved because continuous maximum attains its compact minimum | Task loss is exact (R_{D_i}); finite restriction is a subproblem, not surrogate transfer | `step-local` | `step_008` fixes witness before minimax and priors before simulator | Empty hard set is ruled out in contradiction regime by calibration; low factors receive no hardness claim | Compact attainment preserves strict >1/8; finite minimax exchanges moves without loss | Factor budget and DP inequalities on all finite databases | Finite task set, kernel polytope, prior | Infinite factors and arbitrary hypotheses reduce by finite label-vector postprocessing | Learner-dependent tasks would not define one common product experiment |
| Hard set (H), low mass, and subcritical budgets | Generated membership and quantitative bridge | One lower candidate under (n<cM) | (w_L<1/128) and (m_{n,i}<a_L r_i) for every (i in H) | Independent VC lower and high (r_i) | Low-factor count, +2 shift, ceiling one, floor eight | Finite deterministic partition; discarded mass charged once | reserve/ledger under declared scope | Earlier VC certificate and ALMM constant; boundary (r_i<R_0) explicitly excluded from ALMM | VC lower supplies count control; high threshold supplies scale to dominate fixed defects | Exact theorem weights (pi_i) and exact candidate budgets; no surrogate | `step-local` | `step_007/008 -> step_010 -> consumers`, independent of desired lower conclusion | All-low regime contradicts (n<cM) for chosen (c); one high factor remains eligible | Choice (G5.2) dominates each defect separately | Definitions of (s_i,pi_i,m_{n,i}) and candidate | (H,w_L), hard eligibility | Ceiling/floor transitions, heterogeneous factors, (n=1) handled | Applying ALMM to low factors would be false and leave floor eight uncontrolled |
| Binomial overflow (eta_0) | Generated coupling residual bound | One factor marginal at fixed candidate | P[Bin(n,pi_i)>m_{n,i}] <= e^7(2/9)^9 | Factor-four buffer and floor eight | Tiny mean, integer rounding, large mean | One local bounded-loss subtraction; no union over factors | stopping/conditioning argument | Primitive block-index law; (p=0) gives zero overflow | Chernoff source has exact exponential upper-tail content | Overflow is exactly the event where truncated and ideal datasets may differ; risk residual <= indicator | `step-local` | Block labels produce event before simulator; no coupling conclusion assumed | At (p=0) no row requested; at (n=1) overflow impossible; at (k=1) m>=4n | Two regimes meet at mu=2 and share explicit exponent | Exact (n,p,m) | (O_i), eta bound | p=0, mu=2, large mu, integer thresholds pass | Larger or union-bounded residual would consume the final constant gap |
| Hidden-factor learner and one-use privacy | Generated reduction and same-target bridge | One hard factor, one global invocation | One factor-row replacement maps to zero/one global replacement; off overflow simulator equals ideal experiment | Sequential one-use embedding and full Cartesian target | Overflow, unused rows, non-i randomness, arbitrary global output | No privacy composition; one bounded coupling residual | algebraic coupling and stopping/conditioning argument | Priors from `step_009`, overflow from `step_011`, global DP; constant overflow branch before unavailable read | One-use source has exact replacement-DP content; full product supplies realizability | Off overflow exact same (c_i,D_i), global dataset, output restriction, and risk; residual <=eta_0 | `step-local` | Priors and overflow precede `step_012`; simulator does not assume factor hardness conclusion | Zero i-slots uses no input; overflow returns constant; replacement of unused row changes nothing | Conditional adjacency plus postprocessing proves DP; event coupling proves risk transfer | Global learner DP, product class, candidate delta | Priors, slots, assembled rows, (B_i) | k=1, arbitrary labels, nonrealizable adjacent inputs, improper output pass | Reusing a factor row would require group privacy and break the delta interface |
| Product-prior tensorization | Weighted global risk lower source | Finite factors at one fixed candidate | Local ideal risks >1/8-eta imply global risk >(1-w_L)(1/8-eta) | Fixed independent priors and exact risk identity | Low-factor mass, local overflow, arbitrary joint output dependence | Finite nonnegative weighted sum; residual subtracted once per marginal | algebraic coupling | Accepted priors, hard-set mass, ideal coupling; no output-coordinate independence assumed | Each local source is a risk lower bound for the exact marginal task | Same product target and mixture distribution; exact decomposition (R_D=sum pi_i R_i) | `step-local` | `step_009`--`step_012` all precede common experiment | One hard factor and zero-risk low factors still satisfy identity | Linearity, not factor selection or union, aggregates local gaps | Full Cartesian equality and mixture weights | Product prior and ideal sample | Infinite ambient factors okay because priors finite; correlated output okay | Without a fixed prior, hard tasks could depend on each simulated learner and fail to coexist |
| Numerical PAC contradiction and witness | Theorem closure and mode conversion | One admissible candidate | Lower >32131/262144 while PAC upper <=31744/262144 | Strict factor floor and PAC bounded-loss ceiling | Low mass and overflow residuals | One fixed comparison; no candidate accumulation | structural lower/upper comparison | Earlier exact constants; candidate outside delta scope explicitly excluded | Sources supply correct lower and upper directions with a strict margin | Both bounds concern exact global risk for the same task family | `step-local` | All constants and expected lower produced before `step_014` | All-low handled by VC; high branch has eligible factor budgets | Explicit rational inequality absorbs both residuals | PAC constants and candidate condition | (w_L,eta_0), expected lower | Equality in delta cap and (n=1) do not change strict risk gap | Without strict gap, averaging would not contradict the stated PAC constants |
| Candidate-wise final assembly | Exact scope guard and theorem output | Upper all positive delta; lower only current admissible candidate | Upper outputs plus lower implication; specialize at (n_*) only if admissible | Primitive quantifier structure in `setting.md` | Potential failure of candidate condition at (n_*); ceiling in upper threshold | No cross-candidate or limiting accumulation | algebraic coupling | Earlier theorem blocks; lower mechanism excluded when condition fails | Each source is consumed only on its proved scope | Exact theorem clauses, sample complexity, risk, and privacy modes; no residual transfer | `step-local` | All clause outputs precede `step_015` | If lower condition fails, only upper remains; no inactive mechanism supports a false claim | Direct logical implication and definition of sample complexity | Four stable assumptions with scoped use | Upper and lower certificates | delta near 1 upper, equality lower thresholds, k=1 pass | Scope leakage would overstate the source-supported lower regime |
| One-factor upper and lower baselines | Baseline invariance obligation | Specialization (k=1) | One Yan call; VC or ALMM lower; overflow zero | Same factor class, target, distribution, risk, and sources | Fixed half-budget constants; small versus large (r_1) branches | No factor aggregation | structural lower/upper comparison | Yan and ALMM/VC sources; no cardinality or properness condition | Sources match the original one-factor conclusion classes | Produced and consumed objects coincide; no stopped or remainder-only surrogate | `step-local` | Same producers as general theorem, specialized before final use | rho_1=pi_1=1; m_{n,1}>=4n so first simulation never overflows | Privacy monotonicity and max of two lower sources preserve conclusions up to universal constants | One-factor assumptions | Exact one-factor quotas and hard source | d_1=1 uses VC; large r_1 uses ALMM | A weaker expectation-only or finite-cardinality baseline would violate the target contract |

No row has repeated, recursive, all-time, uniform, or limiting scope. Every accumulated quantity is a finite weighted sum or a privacy composition supported on at most two mechanisms, and the table states its concrete control relation. Hence the Scope-Accumulation and Entry-State gates introduce no additional recurrence obligation.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| Exact product VC/LD/cardinality package | G1 / `step_001` | Disjoint full product, factor VC/LD, finite factor count | Cross-factor restrictions excluded; infinite cardinality remains uncontrolled and unused | Exact same class and quantities; N/A because no transfer object | Projection and product witnesses give VC equality; concatenated trees and factor mistake charges give LD equality | Full Cartesian equality and factor nonconstancy | `step_006`, `step_007`, `step_010`, `step_015` | valid |
| Symmetrized Yan factor DP/PAC at exact (q_i) | G2 / `step_002`; Yan v2 | VC one, finite LD, source parameters, (TD+1) bound, universal (K) | Source constant and log shifts controlled; padding utility uncontrolled and excluded | Same (c_i,D_i,R_{D_i}); no transformed target | Source size <=quota; coupled permutation turns multiset replacement into one source replacement | Positive (s_i) and source theorem constant | `step_003`, `step_005`, `step_006` | valid at diagnostic level; exact source calculation is step-local |
| Exact global ((epsilon,delta))-DP | G2 / `step_003` | Factor DP and disjoint routed multiset coupling | Zero, one, or two changed calls; all other outputs fixed | Factor tuple is deterministically postprocessed to exact piecewise hypothesis | At most two times half budget equals full budget | At-most-two affected-block certificate | `step_015` | valid |
| Weighted shortage bound | G3 / `step_004` | Binomial marginals, weights sum one, exact quotas | Light mass controlled by (Q/n); heavy tails by Chernoff; count dependence irrelevant | Random variable is exact padded-block mass in (R_D) | Light/heavy split gives (128Q/n+e^{-16}) | Threshold (n rho_i=128q_i) | `step_005` | valid |
| Upper high-probability PAC interface | G3 / `step_005` | Factor utility, shortage bound, exact block-risk identity | Padding and factor failures risk at most one and both appear in (W) | Exact global risk; no omitted residual | (R_D<=1/64+W), (E W<3/1024), Markov at (3/64) | Fixed accuracy margin (3/64) | `step_015` | valid |
| Public quota rate | G3 / `step_006` | Exact quotas, sum (s_i)=M, (s_i<=M), (k<=M/2) | Ceilings and fixed log shifts separately controlled | Exact (Q) consumed by sample threshold | Pointwise log domination and ceiling absorption | Uniform lower bound on (log(eM/(epsilon delta))) | `step_015` | valid |
| Global VC lower certificate | G4 / `step_007` | Product-shattered points, uniform witness distribution | Repeated samples and arbitrary output cannot reveal unseen fair labels | Exact global task and risk; no proper-learning residual | If (n<k/2), lower expected risk >1/4 versus PAC ceiling 31/256 | Independent unseen target labels | `step_010`, `step_014` | valid |
| Expected-risk ALMM factor wrapper | G4 / `step_008`; ALMM v3 plus Bun et al. Lemma 5.9 | Factor DP, expected-risk contradiction premise, fixed empirical distribution, Shelah threshold witness | Sample factor, delta scaling, parity, label/order, additive log-star shift all absorbed by universal constants; no low-(r) claim | Population risk on uniform database equals empirical loss; finite threshold class is a same-factor subproblem | Secrecy privacy formula; sole utility inequality in `lem:reduction`; threshold/log-star comparison | ALMM probability jump and fixed finite threshold support | `step_009` | valid theorem-level route; exact local derivation remains unresolved proof work |
| Finite hard prior (nu_i) | G5 / `step_009` | Fixed finite tasks, compact DP polytope, strict worst-case risk floor | Infinite outputs postprocessed to finite label vectors; low factors receive no hardness assertion | Exact (R_{D_i}) on realizable tasks inside (C_i) | Compact attainment preserves strict gap; finite minimax exchanges moves | Strict (>1/8) wrapper gap | `step_012`, `step_013` | valid at diagnostic level; finite minimax proof is step-local |
| Hard set, low mass, and subcritical budgets | G5 / `step_010` | VC lower, source (a_L), exact (s_i,pi_i,m_{n,i}), contradiction (n<cM) | Low factors, +2 shift, ceiling, floor each have separate control | Exact theorem weights and budgets | Choices of (R_0,c) give (w_L<1/128) and (m_i<a_Lr_i) | VC count margin and high-(r_i) threshold | `step_012`--`step_014` | valid |
| Overflow certificate | G6 / `step_011` | Exact binomial law, factor-four buffer, floor eight | Tiny and large means treated separately; integer rounding explicit | Overflow is exact truncated/ideal disagreement event; bounded-risk transfer residual <=eta_0 | Optimized Chernoff exponent and monotonicity of (f) | Numerical slack (3/2048-eta_0) | `step_012`--`step_014` | valid |
| Eligible hidden-factor learner and ideal coupling | G6 / `step_012` | Fixed priors, slots, global learner, one-use input embedding, overflow event | Overflow isolated; unused rows harmless; other-factor rows generated from fixed tasks | Off overflow same target, distribution, dataset, output restriction, and risk; only residual is eta_0 | One input replacement maps to at most one global replacement; bounded loss controls event residual | One-use adjacency and factor-four buffer | `step_013` | valid at diagnostic level; construction/privacy/coupling lemmas are step-local |
| Weighted global expected-risk lower | G7 / `step_013` | Hard priors, hard mass, ideal marginal bounds, exact risk identity | Low mass and overflow explicit; joint output dependence uncontrolled but irrelevant | Exact product target, mixture distribution, and global risk | Finite linearity gives ((1-w_L)(1/8-eta_0)) | Hard mass and strict factor floor | `step_014` | valid |
| Candidate lower theorem and deterministic witness | G7 / `step_014` | PAC ceiling, expected lower, exact numerical defects | No hidden residual; candidate condition may fail outside declared scope | Same exact risk and PAC threshold | Strict rational comparison; bounded-loss contrapositive extracts failure event | Gap (32131-31744)/262144 | `step_015` | valid |
| Exact two-clause theorem and conditional sandwich | G8 / `step_015` | Upper privacy/utility/rate and lower candidate implication | Failure of lower delta condition at (n_*) is not controlled and therefore lower is not exported there | Exact theorem object, mode, metric, and candidate quantifier | Direct logical assembly, with each clause invoked only on proved scope | Primitive condition at actual candidate | Final theorem | valid |

Every produced object is either identical to the consumed target or has an explicit target-side residual comparison. The only nonzero target-transfer residual is the overflow probability in (G6.2); its source, theorem scale, and numerical domination are explicit. No transformed, weighted, preconditioned, population-only, baseline-only, or other surrogate object is consumed without a same-target bridge.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Product VC/LD/cardinality identities and (k<=M/2) | G1 / `step_001` | G2--G5, G8 | `step_001 -> step_002/006/007/010/015` | derived | valid |
| Symmetrized Yan factor interface | G2 / `step_002` and Yan v2 wrapper | G2 routing, G3 utility/rate | `step_001 -> step_002 -> step_003/005/006` | derived | valid |
| At-most-two routed adjacency certificate | G2 / `step_003` | G8 final upper privacy | `step_002 -> step_003 -> step_015` | derived | valid |
| Factor counts and weighted shortage bound | G3 / `step_004` | G3 weighted utility | primitive iid sample -> `step_004 -> step_005` | derived | valid |
| Weighted bad mass (W) and upper PAC certificate | G3 / `step_005` | G8 final upper utility | `step_002/004 -> step_005 -> step_015` | derived | valid |
| Simplified quota sum | G3 / `step_006` | G8 public rate | `step_001/002 -> step_006 -> step_015` | derived | valid |
| Global VC lower certificate | G4 / `step_007` | G5 calibration, G7 contradiction | `step_001 -> step_007 -> step_010/014` | derived | valid |
| ALMM expected-risk factor wrapper | G4 / `step_008`, ALMM/Bun/Shelah proof path | G5 finite minimax | `step_001 -> step_008 -> step_009` | derived | valid at diagnostic level |
| All-factor priors (nu_i) | G5 / `step_009` | G6 simulator, G7 common experiment | `step_008 -> step_009 -> step_012/013` | derived | valid |
| Hard set (H), low mass (w_L), and subcritical budgets | G5 / `step_010` | G6 eligibility, G7 lower sum and constants | `step_007/008 -> step_010 -> step_012/013/014` | derived | valid |
| Overflow events and (eta_0) | G6 / `step_011` | G6 coupling, G7 lower sum/constants | primitive block indices -> `step_011 -> step_012/013/014` | derived | valid |
| Hidden-factor learner (B_i), one-use privacy, ideal coupling | G6 / `step_012` | G7 tensorization | `step_009/010/011 -> step_012 -> step_013` | derived | valid |
| Weighted global expected-risk lower | G7 / `step_013` | G7 candidate contradiction | `step_009/010/011/012 -> step_013 -> step_014` | derived | valid |
| Candidate lower implication and deterministic witness | G7 / `step_014` | G8 final lower clause | `step_007/010/013 -> step_014 -> step_015` | derived | valid |
| Exact two-sided theorem and (n_*) specialization | G8 / `step_015` | Final theorem | `step_003/005/006/014 -> step_015` | derived | valid |

The flows are acyclic, every consumer depends on its producer, and no closure or assembly label is used as the first source of a generated condition.

## Early Obstruction And Repair Plausibility

- Contract contradiction check: none. The upper mechanism, lower candidate condition, improper-output scope, fixed PAC constants, and explicit rate all match `setting.md`.
- Theorem-critical mechanism witness check: all positive/lower sources are nonvacuous. Full Cartesian equality supplies independent labels and targets; Yan supplies factor utility; ALMM's expected empirical probability jump supplies the factor risk floor; the factor-four buffer supplies the coupling margin; one-use embedding supplies exact adjacency.
- ALMM source-direction check: the formal `thm:ADPimpliesLD` is not misquoted. The stronger (1/8) expected-risk output is tied to the explicit resampling mechanism and to the sole expected empirical-accuracy inequality used in `lem:reduction`. This remains hard local proof work, but no source-interface change is needed.
- Finite-prior check: the threshold witness and uniform empirical task family are fixed and finite before minimax. Compactness prevents the pointwise strict (>1/8) gap from collapsing at the infimum. No learner-dependent hard task remains in the common experiment.
- Exported-interface check: padding is not fed into Yan utility; low-factor mass, overflow, ceilings, and fixed log shifts each have distinct controls. No parameter is asked to absorb an unrelated persistent defect.
- Residual-to-target check: Yan, VC, ALMM, minimax, and tensorization all use exact target-side risks. Truncated-to-ideal simulation is the only nonidentity bridge and has residual at most (eta_0) on the identical factor task.
- Boundary check: (k=1), (d_i=1), zero block mass, all-low factors, one high factor, (n=1), (p=0), (mu=2), tiny positive (delta), (delta) near 1 in the upper clause, infinite factor cardinality, arbitrary improper output, padding, and cross-block replacement have active mechanisms or are explicitly outside the consumed interface.
- Entry-state check: no iterative trajectory is present. The relevant first transitions pass: a cross-block replacement changes exactly two calls; zero requested factor rows use no input; overflow takes the constant branch before an unavailable row is consumed; at (k=1), the simulator cannot overflow.
- Scope/dependence check: finite weighted sums and support-two privacy composition are compatible with fixed-sample scope. No persistent, adversarial-sign, all-time, uniform, limiting, or cross-candidate defect exists.
- Baseline check: both one-factor source conclusions survive with only universal allocation constants. The lower result is not replaced by its expected-risk intermediate, because `step_014` returns to the exact PAC failure event.
- Same-setting repair plausibility: no repair is currently required. A failure of the detailed ALMM proof trace, strict finite minimax, or one-use coupling would be local only if the already exposed interfaces can still be proved unchanged. If source inspection were to refute the expected-risk trace or fixed finite witness, that would become a `sketch/interface defect`; current source text does not expose such a refutation.
- Candidate idea-level screen: no evidence presently requires a new assumption, a changed algorithm, a changed privacy/risk mode, a weaker conclusion, or a new unsupported mechanism source. Therefore there is no candidate `idea/theorem-contract defect` for the global reviewer.

## Global Gaps And Hard Steps

All unresolved items are `step-local` under the unchanged accepted sketch.

1. `step_002`, Yan wrapper. Local units: a cited-result application quoting the exact v2 theorem; a (TD+1)-to-(s_i) endpoint lemma; an exact fixed-parameter quota inequality; and a permutation-symmetrization privacy/utility lemma. Mechanism source: Yan's algorithm and theorem. Raw output: the exact factor DP/PAC interface. Null stress: (d_i=1) remains active through (TD+1).
2. `step_008`, ALMM expected-risk wrapper. Local units: the fixed-database resampling construction; the Bun et al. privacy-parameter calculation; an expected-empirical-loss version of ALMM `lem:reduction`; a statement that the remaining homogeneous-set/binary-search proof consumes no stronger utility property; and the Shelah threshold-size/log-star translation with constants. Mechanism source: the labeled ALMM/Bun proof path. Raw output: worst-case expected factor risk (>1/8) at the exact budget and delta scale. Boundary stress: (m=8), parity rounding, (d=1), arbitrary output, and smaller epsilon.
3. `step_009`, finite hard prior. Local units: a finite source-task restriction; explicit coordinates and DP inequalities for the compact kernel polytope; continuity/strict attainment; finite minimax; and output-vector postprocessing. Mechanism source: the fixed finite ALMM threshold witness. Raw output: a prior fixed before all later mechanisms, with strict average risk (>1/8).
4. `step_011`, overflow. Local units: the exact optimized Chernoff bound, monotonicity of (f(mu)), and numerical verification (e^7(2/9)^9<3/2048). Mechanism source: the exact binomial block-index law and factor-four/floor-eight quota. Raw output: the sole coupling residual.
5. `step_012`, hidden-factor reduction. Local units: executable simulator definition; one-use replacement lemma on all input databases; constant overflow branch; full-product realizability on utility inputs; arbitrary-output restriction; and same-randomness ideal coupling. Mechanism source: global DP, previously fixed priors, and disjoint full product. Raw output: an eligible factor learner and the exact risk-transfer inequality (G6.2).
6. `step_013`--`step_015`, closure. Local units: identification of one common independent-prior experiment, finite weighted-risk equality, strict constant comparison, deterministic PAC witness extraction, and exact candidate-wise quantifier assembly. Mechanism sources and every residual are already produced by earlier accepted steps.

These are substantial local derivations, which is why the status is `PARTIAL_BLOCKED`, but none requires changing a step claim, dependency, assumption, output target, generated-output flow, mechanism source, metric, quantitative dependence, boundary exclusion, or theorem conclusion.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, or theorem scope. Every local unit and cited-result application above must be independently proved or discharged by the corresponding `/proof-step` and accepted by `/proof-step-review` before assembly.

## Suggested Routing

None

After an independent `/global-proof-review`, continue with all 15 proof steps. Prioritize `/proof-step step_008`, then `step_009`, `step_012`, and `step_002`, because they certify the nonstandard source and reduction interfaces on which the remaining lower and upper blocks depend.
