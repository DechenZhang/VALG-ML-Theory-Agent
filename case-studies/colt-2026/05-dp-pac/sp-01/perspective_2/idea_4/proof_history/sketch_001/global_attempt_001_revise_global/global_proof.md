# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_4`
- Global producer unit attempt: 1
- Sketch attempt: 1
- Binding setting: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Reviewed sketch: `perspective_2/idea_4/proof_sketch.md`
- Reviewed sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Reviewed sketch review: `perspective_2/idea_4/proof_sketch_review.md`
- Reviewed sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Upstream idea SHA-256: `e5b309c3a9041d18c73672d91b4914bb3d17f871e2f7dedad34e6a7b5a0d05de`
- Upstream technical-survey SHA-256: `d88d9bcc66bb9decf204074c572bf7135451d0d7ac36047218810f624a0c0f63`
- Sketch review status: `ACCEPTED`
- Sketch viability score: 9
- Goal mode: exact-goal mode
- Progress type: `conditional`

The three binding hashes agree with the current files. The reviewed roadmap
has exactly `step_001` through `step_016`, and this diagnostic neither changes
their claims nor inserts an additional bridge. The primary-source preflight
below was repeated against the official arXiv v1 TeX, whose
`submission/main.tex` has SHA-256
`b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87`.

## Status

PARTIAL_BLOCKED

There is no exposed sketch/interface defect or candidate theorem-contract
defect. The unresolved obligations are the substantial local derivations
already assigned to the accepted steps: the scalar teacher envelope, the
near-zero hypergeometric tail and fixed point, the exact source wrapper, the
mechanism and all-input privacy instantiations, the empirical contradiction,
the marked finite reconstruction, and the three quantitative arm
normalizations. Each has an unchanged target, a concrete mechanism source,
and a downstream-ready interface, so each is classified `step-local` below.

## Attempted Theorem Claim

Under `assump:finite-littlestone`,
`assump:countable-evaluation-quotient`, `assump:realizable-iid`, and
`assump:approximate-dp-regime`, there are universal constants $K\geq 1$
and $q\in\mathbb N_0$ such that the exact quotient-first, totalized
VC-calibrated Lyu law in the setting has the following properties.

If $d=0$, it uses $N=0$ and releases the unique member of \(\bar C\).
If $d\geq1$, then $1\leq v\leq d$, it uses the setting's least feasible
teacher count and block size, and
\[
 N\leq K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
 R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta).
\]
For every raw input, its pullback through $T_N$ is a Markov kernel from
$Z_X^N$ to $H_C$ and is $(\varepsilon,\delta)$-DP for replace-one
neighbors. For every probability measure $D$ on $(X,\Sigma)$ and every
$c\in C$, it satisfies
\[
 \Pr\!\left[
  \operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha
 \right]\leq\beta .
\]
The probability is unconditional over the iid sample, the data-independent
partition, all released-mechanism randomness, and, when used for analysis,
the unreleased occurrence mark.

On the same quotient output, raw-neighbor, decoder, probability, and risk
interfaces, the old-Lyu arm and, when $|C|<\infty$, the finite private-ERM
arm satisfy respectively
\[
 N_{\mathrm{old}}\leq K_{\mathrm{old}}\Lambda^{q_{\mathrm{old}}}
 R_{\mathrm{old}},\qquad
 N_{\mathrm{fin}}\leq K_{\mathrm{fin}}\Lambda^{q_{\mathrm{fin}}}
 R_{\mathrm{fin}},
\]
with universal constants. Consequently
\[
 m_C(\alpha,\beta;\varepsilon,\delta)
 \leq \widetilde O\!\left(
   \min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}
 \right).
\]
At fixed $(\alpha,\beta,\varepsilon)$, and only along the declared
source-compatible small-$\delta$ sequences, this becomes
\[
 \widetilde O\!\left(
   \min\{\log^+|C|,d^5,vd^4\}
 \right),
\]
with $vd^4=d^5$ when $v=d$. This is the exact conditional target: it
does not cover uncountable evaluation quotients and does not assert a
universal polynomial in $(v,\log d)$, or $\log^*d$.

## Whole-Proof Draft

### Block A: parameter closure, activation, and totality (`step_001`)

If $d=0$, two distinct concepts would disagree at some $x$, and the
one-node tree labeled by $x$ would be shattered. Hence nonemptiness and
$\operatorname{LD}(C)=0$ imply that $C$, and therefore \(\bar C\), is a
singleton. Releasing that element with $N=0$ is a constant kernel, is
$(0,0)$-DP, and has zero risk. All positive-dimensional formulas are
bypassed.

Assume now $d\geq1$. Since VC dimension never exceeds Littlestone
dimension and a non-singleton finite-Littlestone class has positive VC
dimension, $1\leq v\leq d$. Use exactly
\[
 \gamma=\alpha/16,
 \quad \beta_{\mathrm{tr}}=\beta_{\mathrm{AT}}
 =\beta_{\mathrm{SS}}=\beta_{\mathrm{gen}}=\beta/4,
 \quad \delta_{\mathrm{AT}}=\delta_{\mathrm{SS}}=\delta/2,
\]
and the definitions (g_\delta,\eta,\varepsilon_{\mathrm{SS}},a(t),Q(t),
m(t),n(t),p_d(t),L(t),B(t),\tau_{\mathrm{AT}}), and
(\tau_{\mathrm{SS}}(t)) from the accepted sketch. The key deterministic
closure is the existence of an integer satisfying
\[
 \frac t2-\tau_{\mathrm{AT}}
 \geq B(t)+\tau_{\mathrm{SS}}(t)+2. \tag{A.1}
\]
Indeed,
\[
 \log L(t)
 =d\{d\log2+\log t+\log m(t)+\log d\}+d^2\log2. \tag{A.2}
\]
For
\[
 \bar k=\left\lceil C_{\mathrm{teach}}
 \frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}
 \right\rceil,
\]
the definitions of (m(t)) and (Q(t)) give, at obstruction-level
granularity,
\[
 \log \bar k+\log m(\bar k)+\log Q(\bar k)\leq C\Lambda^2,
 \qquad
 \log L(\bar k)\leq C d^2\Lambda^2. \tag{A.3}
\]
Thus $B(\bar k)+\tau_{\mathrm{SS}}(\bar k)+
\tau_{\mathrm{AT}}$ is at most
$C'd^2\log(64/(\delta\beta))\Lambda^2/\varepsilon$.
Taking $C_{\mathrm{teach}}$ universally large proves (A.1) at
$t=\bar k$, so the least feasible $k$ exists and $2\leq k\leq\bar k$.
This fixes $m=m(k)$, $n_0=km$, all $p_r=2^rn_0d$, and every
mechanism threshold before the sample is drawn.

Every partial source operation is then totalized by the fixed choices in the
setting. For each countable local quotient state, choose once a source-valid
optimal decomposition and order its finite essential list; empty
restrictions get the empty list, and every failed or exhausted path ends at
the fixed \(\bar c_0\). Identical local block states use the same lookup.
This totalization changes no source-valid path and is essential for the later
one-list adjacency statement.

### Block B: exact quotient and raw-target bridge (`step_002`)

For (c\in C), the value (c(x)) is constant on every equivalence cell,
so \(\bar c([x])=c(x)\) is well-defined. The map
\(\Phi:c\mapsto\bar c\) is injective because two unequal concepts disagree
at some raw point, and it is surjective by the definition of \(\bar C\).
Hence it is a bijection. Since (Q_C) is countable and every cell is
measurable, each (c) and every decoded hypothesis
\(\bar h\circ\kappa\) is measurable: its one-set is a countable union of
quotient cells.

If (x_1,\ldots,x_s) is VC-shattered in (X), their quotient classes are
distinct (otherwise every concept gives the same value on a repeated pair),
and \(\kappa(x_1),\ldots,\kappa(x_s)\) is shattered by \(\bar C\).
Conversely, choose one raw representative of every point in any finite
quotient shattered set. This proves
\[
 \operatorname{VC}(\bar C)=\operatorname{VC}(C)=v. \tag{B.1}
\]
Mapping every node label of a shattered Littlestone tree through \(\kappa\)
preserves every path evaluation; a contradictory repetition on one path
could not have been shattered. Conversely, lift every quotient node label by
one representative. Therefore
\[
 \operatorname{LD}(\bar C)=\operatorname{LD}(C)=d. \tag{B.2}
\]

The map (T_N) is measurable as a finite product of the measurable map
((x,y)\mapsto(\kappa(x),y)). A raw replacement changes at most the
corresponding quotient record, and can collapse to equality, so
\[
 s\sim s'\quad\Longrightarrow\quad
 T_N(s)=T_N(s')\ \text{or}\ T_N(s)\sim T_N(s'). \tag{B.3}
\]
Also (T_{N\#}P_{D,c}^N=P_{\bar D,\bar c}^N). Finally, for every
\(\bar h\in H_C\),
\[
 \begin{aligned}
 \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
 &=\int_X\mathbf1\{\bar h(\kappa(x))\ne\bar c(\kappa(x))\}\,dD(x)\\
 &=\sum_{q\in Q_C}\bar D(q)
   \mathbf1\{\bar h(q)\ne\bar c(q)\}
 =\operatorname{err}_{\bar D}(\bar h,\bar c).
 \end{aligned} \tag{B.4}
\]
Thus the quotient source object and the final raw risk target have zero
residual.

### Block C: quotient kernels, raw pullback, and occurrence projection (`step_003`-`step_004`)

The space (Z_Q^N) is countable discrete. If (Q_C) is finite, (H_C) is
finite; if it is countably infinite, (H_C\cong\{0,1\}^{\mathbb N}) with
its product sigma-field is standard Borel. For each quotient input, the
totalized finite-stage procedure defines a probability law on (H_C).
Because every scalar section (\bar s\mapsto K_C(\bar s,E)) is a function
on a countable discrete domain, it is measurable for every
(E\in\mathcal H_C). Hence (K_C) is a Markov kernel, and
\[
 A_N(s,E):=K_C(T_N(s),E) \tag{C.1}
\]
is a raw-input Markov kernel. This also makes every list, transcript, and
section of (E_{\mathrm{good}}) measurable without a raw-space selector.
For a fixed distribution and target, enumerate (Q_C=(q_j)_{j\geq1}); the
risk map is measurable as the increasing limit of
\(\sum_{j\leq J}\bar D(q_j)
\mathbf1\{\bar h(q_j)\ne\bar c(q_j)\}\).

Let (R_{\bar s}(d\omega,d\bar h)) be the joint law of the finite internal
state and output. On an actual-output path put
\[
 w_i(\bar s,\omega,\bar h)
 :=\frac{\mathbf1\{i\in I_{\bar s,\omega}(\bar h)\}}
 {|I_{\bar s,\omega}(\bar h)|},\quad i\in[k],
\]
and (w_0=0); on a fallback path put (w_0=1) and (w_i=0). Define
\[
 \widetilde K_C(\bar s,E\times\{i\})
 :=\int\mathbf1_E(\bar h)w_i(\bar s,\omega,\bar h)
 \,R_{\bar s}(d\omega,d\bar h). \tag{C.2}
\]
The finite weights are measurable on the countable input and sum to one.
Consequently \(\widetilde K_C\) is a kernel and
\[
 \sum_{i=0}^k\widetilde K_C(\bar s,E\times\{i\})
 =K_C(\bar s,E). \tag{C.3}
\]
Repeated occurrences merely change the weights. The mark is never released,
so (C.3) proves exact output and privacy invariance.

### Block D: VC trace event and the block-size fixed point (`step_005`-`step_007`)

Fix the indexed master sample
\(\bar S=((q_r,y_r))_{r=1}^{n_0}\). XOR with the fixed label vector maps
prediction traces bijectively to error traces. Sauer--Shelah and (B.1) give
\[
 |\mathcal E_{\bar C}(\bar S)|
 \leq\Pi_{\bar C}(n_0)
 \leq\sum_{j=0}^v{n_0\choose j}
 \leq(en_0/v)^v. \tag{D.1}
\]
This counts traces only; each source list continues to contain actual
functions.

For a fixed trace let \(\mu=e_{\bar S}(\bar c)\), and let
\(\widehat\mu_i=e_{\bar S_i}(\bar c)\). Define (E_{\mathrm{good}}) by the
source clauses
\[
 \widehat\mu_i\in
 \begin{cases}
 [(1-a_d)\mu,(1+a_d)\mu],&\mu>\gamma/3,\\
 [0,\gamma/2],&\mu\leq\gamma/3,
 \end{cases}
 \qquad a_d:=1/(5d), \tag{D.2}
\]
simultaneously over all traces and blocks. Conditional on \(\bar S\), each
block is marginally a uniform sample without replacement. Lyu v1
Proposition 2, used with sample size (m), gives in the high branch
\[
 \Pr(|\widehat\mu_i-\mu|>a_d\mu\mid\bar S)
 \leq2\exp\{-m\mu/(75d^2)\}
 \leq2\exp\{-c_1m\alpha/d^2\}. \tag{D.3}
\]
For the low branch, the finite-population exponential-mgf comparison gives,
for (q=\gamma/2) and (\mu\leq\gamma/3),
\[
 \Pr(\widehat\mu_i\geq q\mid\bar S)
 \leq \inf_{\lambda>0}
 e^{-\lambda mq}(1-\mu+\mu e^\lambda)^m
 =e^{-mD(q\Vert\mu)}
 \leq e^{-c_2m\gamma}. \tag{D.4}
\]
The last inequality follows because (D(q\Vert\mu)) is minimized over
\(0\leq\mu\leq\gamma/3\) at \(\mu=\gamma/3\), and the resulting fixed
ratio $q/\mu=3/2$ gives $D(q\Vert\mu)\geq c_2\gamma$. At \(\mu=0\)
the failure event is empty. Since (d\geq1) and \(\gamma=\alpha/16\),
(D.3)-(D.4), (D.1), and a finite union yield
\[
 \Pr(E_{\mathrm{good}}^c\mid\bar S)
 \leq4k(en_0/v)^v
 \exp\{-c_{\mathrm{tr}}m\alpha/d^2\}. \tag{D.5}
\]
No independence between blocks conditional on \(\bar S\) was used.

It remains to close the occurrence of (n_0=km) inside (D.5). Since
\(d^2a/\alpha\geq4\), the ceiling can be absorbed into a factor two, and
\[
 \frac{en_0}{v}
 \leq \frac{2eC_{\mathrm{blk}}kd^2a\log Q}{\alpha v}
 \leq 2C_{\mathrm{blk}}Q\log Q.
\]
As (Q\geq e),
\[
 \log(en_0/v)\leq C_0\log Q. \tag{D.6}
\]
The logarithm of the prefactor in (D.5) is at most
\(\log(4k)+C_0v\log Q\), whereas the negative exponent is at least
\(c_{\mathrm{tr}}C_{\mathrm{blk}}a\log Q\). Because
\(a=v+\log(4k/\beta)\), a universal (C_{\mathrm{blk}}) makes (D.5) at
most \(\beta_{\mathrm{tr}}\). Integrating the conditional bound over the
iid master sample gives the same unconditional charge.

### Block E: exact source/current wrapper and cross-block inclusion (`step_008`)

Put (\rho=1-1/(2d)) and, including the endpoint omitted in the source's
pre-algorithm display, define
\[
 H_{i,\mathrm{src}}^s
 =\{\bar h\in\bar C:e_{\bar S_i}(\bar h)\leq\rho^s\gamma\},
 \quad s=1,\ldots,d+1.
\]
The current stage objects are exactly
\[
 H_i^r=H_{i,\mathrm{src}}^{r+1},\qquad
 p_r=2^rn_0d=\tfrac12p_{r+1,\mathrm{src}},
 \quad r=0,\ldots,d. \tag{E.1}
\]
On (E_{\mathrm{good}}), for (r<d),
\[
 H_{i_*}^{r+1}\subseteq\bigcap_{i=1}^kH_i^r. \tag{E.2}
\]
To see the constants, if a member of (H_{i_*}^{r+1}) has master error at
most \(\gamma/3\), every block error is at most \(\gamma/2\), and
\(\rho^{r+1}\geq\rho^d\geq1/2\). Otherwise (D.2) gives
\[
 e_{\bar S_i}(h)
 \leq\frac{1+a_d}{1-a_d}\rho^{r+2}\gamma
 \leq\rho^{r+1}\gamma, \tag{E.3}
\]
because
\[
 \frac{1+a_d}{1-a_d}\rho
 =\frac{5d+1}{5d-1}\frac{2d-1}{2d}\leq1.
\]

For every nonempty (H_i^r), take the fixed optimal ((p_r,d))-decomposition
and let \(\mathcal L_i^r\) be its actual essential-SOA list. Lyu v1 Lemma
4.1 and Corollary 4.1 give
\[
 |\mathcal L_i^r|\leq p_r^d2^{d^2}\leq L(k). \tag{E.4}
\]
The transition (E.2) is paired with Lemma 4.3 only as
\[
 \mathcal G=H_{i_*}^{r+1},\quad \mathcal H=H_i^r,
 \quad(2p,p)=(p_{r+1},p_r), \tag{E.5}
\]
so its direction and scale exactly match the official statement. If a
maximal leaf has Littlestone dimension (t), Definition 4.2 supplies
irreducibility (p_r2^{d-t}), and
\[
 p_r2^{d-t}\geq p_0=n_0d\geq\max\{n_0,d+1\}. \tag{E.6}
\]
Thus later empirical and fixed-SOA uses consume the same quotient function
with no scale or object residual. Empty restrictions occur only on arbitrary
privacy inputs and have the predetermined empty-list path.

### Block F: DDim descent and common support (`step_009`)

Let
\[
 q_r:=\max_{\bar h\in H_C}|\{i:\bar h\in\mathcal L_i^r\}|,
 \qquad
 M_r:=\max_i\operatorname{DDim}_{p_r,d}(H_i^r). \tag{F.1}
\]
On realizable data, \(\bar c\in H_i^r\) for all $(i,r)$, so these
restrictions are nonempty. Suppose $q_r<k$, and choose $i_*$ maximizing
the next-stage DDim. By (E.2) and Lemma 4.3,
\[
 \operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
 \leq\operatorname{DDim}_{p_r,d}(H_i^r)\leq M_r
 \quad\text{for every }i. \tag{F.2}
\]
If equality with (M_r) held on the left, all inequalities in (F.2) would
be equalities. Choose a maximum-dimensional leaf of an arbitrary optimal
((p_{r+1},d))-decomposition of (H_{i_*}^{r+1}). Lemma 4.3, applied
against an arbitrary optimal ((p_r,d))-decomposition of every (H_i^r),
says that the same SOA function occurs in each such decomposition. It is
therefore essential to every (H_i^r), contradicting (q_r<k). Since DDim
is integer-valued,
\[
 q_r<k\quad\Longrightarrow\quad M_{r+1}\leq M_r-1. \tag{F.3}
\]
If (M_r=0), Corollary 4.1 Item 4 says every current list equals its finite
restriction, so the common target \(\bar c\) has score (k). Starting from
(M_0\leq d), at most (d) strict decreases can occur. Hence among
(r=0,\ldots,d) there is a stage with (q_r=k). This is a monotone
finite-budget closure: the accumulated defect is zero, each failed common
stage spends one unit of (M_r), and the total reserve is (M_0\leq d).

### Block G: mechanism utility and all-input privacy (`step_010`-`step_011`)

Run one AboveThreshold transcript with threshold (k/2) on the sensitivity
one queries (q_r), and stop at the first `Above`. On the event that all
(d+1) Laplace noises have magnitude at most
\(\tau_{\mathrm{AT}}\), which fails with probability at most
\(\beta_{\mathrm{AT}}\), every reported `Below` has
\[
 q_r<k/2+\tau_{\mathrm{AT}}<k, \tag{G.1}
\]
where the final strict inequality follows from (A.1). Thus each earlier
`Below` activates (F.3), while a score-(k) stage is necessarily reported
`Above`. At the selected stage $r_*$,
\[
 q_{r_*}\geq k/2-\tau_{\mathrm{AT}}
 \geq B(k)+\tau_{\mathrm{SS}}(k)+2. \tag{G.2}
\]

Sparse Sample has effective range of size at most (kL(k)+1), assigns
weight \(\exp(\varepsilon_{\mathrm{SS}}\operatorname{score})\), and gives
the failure symbol score (B(k)). From (G.2),
\[
 \Pr(\perp\mid\text{selected lists})
 \leq\exp\{-\varepsilon_{\mathrm{SS}}(q_{r_*}-B(k))\}
 \leq\beta_{\mathrm{SS}}. \tag{G.3}
\]
The stronger effective-domain threshold in the accepted dictionary also
controls the standard exponential-weight utility comparison. Therefore,
outside the two charged mechanism events, the output is an actual member of
some \(\mathcal L_i^{r_*}\), and hence of the block-local union
\(\mathcal G_i=\bigcup_{r=0}^d\mathcal L_i^r\).

Privacy is proved on all inputs and does not condition on any utility event.
For a fixed data-independent partition, one raw replacement changes either
no quotient record or one record in one block (i_0). The deterministic
local-state convention makes every \(\mathcal L_i^r\), (i\ne i_0),
identical on the two inputs; only one list coordinate can change. Hence each
maximum-frequency query changes by at most one, and, for every fixed
transcript-selected stage, Sparse Sample sees one-list replacement
neighbors. Lyu v1 Lemma 3.2 with the accepted $\eta$ gives at most
\((\varepsilon/4,\delta/2)\) for the single AboveThreshold process, and
Lemma 3.1 with \(\varepsilon_{\mathrm{SS}}=\varepsilon/8\) and (B(k))
gives \((\varepsilon/4,\delta/2)\) for the optional Sparse Sample call.
Adaptive/concurrent composition and postprocessing therefore give
\[
 (\varepsilon/2,\delta)\preceq(\varepsilon,\delta). \tag{G.4}
\]
This covers empty restrictions, different stopping transcripts, \(\perp\),
and fallback. Averaging over the common independent partition preserves
(G.4), and (B.3) transfers it exactly to raw neighbors.

### Block H: exact SOA identity and master empirical loss (`step_012`)

On (E_{\mathrm{good}}) and the mechanism-good event, an actual output has
the exact form
\[
 \bar H=\operatorname{SOA}_{\mathcal G}
 \quad\text{for some maximal leaf }\mathcal G\subseteq H_i^r\subseteq\bar C.
 \tag{H.1}
\]
This is the identity from Definition 4.3 and Lemma 4.3, not a trace
representative. By (E.6), \(\mathcal G\) is both $n_0$-irreducible and
$(d+1)$-irreducible. Every $g\in\mathcal G$ has master empirical loss
at most $2\gamma$: if its master loss is at most \(\gamma/3\) this is
immediate, and otherwise (D.2) and membership in (H_i^r) give
\(e_{\bar S}(g)\leq e_{\bar S_i}(g)/(1-a_d)<2\gamma\).

If $e_{\bar S}(\bar H)>2\gamma$, no $g\in\mathcal G$ can agree with
\(\bar H\) on every master-sample point, because then it would have exactly
the same error vector. Thus
\[
 \mathcal G|_{(q_1,\bar H(q_1)),\ldots,
 (q_{n_0},\bar H(q_{n_0}))}=\varnothing, \tag{H.2}
\]
contradicting (n_0)-irreducibility along the SOA-labeled sequence.
Consequently
\[
 e_{\bar S}(\bar H)\leq2\gamma=\alpha/8. \tag{H.3}
\]
The same \(\mathcal G\) belongs to Lyu Lemma 4.2's fixed family
\(\widehat C_{d+1}\), so \(\operatorname{LD}(\widehat C_{d+1})\leq d\).
That structural fact is bookkeeping only; the PAC conversion below uses the
finer finite producer lists.

### Block I: pathwise marked reconstruction and quotient PAC (`step_013`)

For each block (i),
\[
 \mathcal G_i(\bar S_i)=\bigcup_{r=0}^d\mathcal L_i^r(\bar S_i),
 \qquad |\mathcal G_i|\leq(d+1)L(k), \tag{I.1}
\]
and this set depends only on the (m) records in block (i). On the core
event from Blocks D, G, and H, if the analysis mark is (J=i), then
\(\bar H\in\mathcal G_i\), and (H.3) implies
\[
 \widehat{\operatorname{err}}_{-i}(\bar H)
 \leq\frac{n_0}{n_0-m}\frac\alpha8
 =\frac{k\alpha}{8(k-1)}\leq\frac\alpha4. \tag{I.2}
\]

The independence argument is pathwise and does not condition on (J=i).
For every realized full path,
\[
 \begin{aligned}
 &\{\text{core},\ J=i,
   \operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha\}\\
 &\quad\subseteq
 \bigcup_{h\in\mathcal G_i(\bar S_i):
            \operatorname{err}_{\bar D}(h,\bar c)>\alpha}
 \{\widehat{\operatorname{err}}_{-i}(h)\leq\alpha/4\}.
 \end{aligned} \tag{I.3}
\]
Only after this inclusion is established do we condition on \(\bar S_i\).
For each now-fixed (h) on the right, the complement contains
\((k-1)m\) independent iid quotient examples and is independent of
\(\bar S_i\). If (p=\operatorname{err}_{\bar D}(h,\bar c)>\alpha), then
with (M=(k-1)m), exponential Markov (equivalently the multiplicative
Bernoulli lower tail) gives
\[
 \Pr\!\left[\widehat{\operatorname{err}}_{-i}(h)\leq\alpha/4\right]
 \leq\Pr[\operatorname{Bin}(M,p)\leq Mp/4]
 \leq e^{-9Mp/32}
 \leq e^{-9\alpha(k-1)m/32}. \tag{I.4}
\]
Summing (I.3) over the finite marks and candidates yields
\[
 \Pr(\text{core and population failure})
 \leq k(d+1)L(k)e^{-9\alpha(k-1)m/32}. \tag{I.5}
\]
Moreover,
\[
 \log\frac{k(d+1)L(k)}{\beta_{\mathrm{gen}}}
 \leq C_1d^2a\log Q,
\]
while \(\alpha(k-1)m\geq
C_{\mathrm{blk}}d^2a\log Q\). Enlarging the same universal
(C_{\mathrm{blk}}) makes (I.5) at most \(\beta_{\mathrm{gen}}\).
Together with the three other \(\beta/4\) charges, this proves
\[
 \Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]\leq\beta. \tag{I.6}
\]
The exact marked projection (C.3) turns (I.6) into a statement about the
released law, and (B.4) turns it into the required raw risk statement.

### Block J: elimination of VC-arm auxiliaries (`step_014`)

Equations (A.2)-(A.3) and least-feasible (k\leq\bar k) give, for universal
exponents (q_1,q_2),
\[
 k\leq C\frac{d^2\log(1/(\delta\beta))}{\varepsilon}\Lambda^{q_1},
 \qquad
 a(k)\leq C(v+\log(1/\beta))\Lambda^{q_1}. \tag{J.1}
\]
The definition of (Q), the ceiling in (m), and (D.6) give
\[
 m\leq C\frac{d^2(v+\log(1/\beta))}{\alpha}\Lambda^{q_2}. \tag{J.2}
\]
Multiplying (J.1)-(J.2), with all discarded factors explicitly logarithmic
in displayed parameters, gives
\[
 N=km\leq
 K\Lambda^q
 \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
      {\varepsilon\alpha}. \tag{J.3}
\]
For (d\geq1), (v\geq1), (\varepsilon\leq1), and
\(\log(1/(\delta\beta))>1\), the right side also dominates
\((d+\log(1/\beta))/\alpha\); hence (J.3) implies the setting's exact
\(K\Lambda^qR_{\mathrm{VC}}\) display without hiding a positive power of
(d) or (v). Blocks C, G, and I supply the kernel, DP, and PAC parts of
the same arm. Under the explicit assumption
\(\delta K\Lambda^qR_{\mathrm{VC}}\to0\), its actual sample size satisfies
\(N\delta\to0\). No such asymptotic assertion is made for fixed positive
\(\delta\).

### Block K: independent old-Lyu quotient arm (`step_015`)

The old arm repeats, rather than borrows, Blocks C-I with its own parameters
\[
 a_{\mathrm{old}}(t)=d+\log(4t/\beta),\qquad
 Q_{\mathrm{old}}(t)=e+\frac{etd^2a_{\mathrm{old}}(t)}{\alpha d},
\]
\[
 m_{\mathrm{old}}(t)=\left\lceil
 C_{\mathrm{old}}\frac{d^2}{\alpha}a_{\mathrm{old}}(t)
 \log Q_{\mathrm{old}}(t)\right\rceil, \tag{K.1}
\]
and define
\[
 n_{\mathrm{old}}(t)=t m_{\mathrm{old}}(t),\quad
 p_{\mathrm{old},r}(t)=2^r n_{\mathrm{old}}(t)d,\quad
 L_{\mathrm{old}}(t)=p_{\mathrm{old},d}(t)^d2^{d^2}.
\]
Define $B_{\mathrm{old}}(t)$ and
$\tau_{\mathrm{SS,old}}(t)$ by the same explicit source privacy and
effective-range formulas, and let $k_{\mathrm{old}}$ be the least integer
satisfying the old teacher inequality
\[
 k_{\mathrm{old}}/2-\tau_{\mathrm{AT}}
 \geq B_{\mathrm{old}}(k_{\mathrm{old}})
 +\tau_{\mathrm{SS,old}}(k_{\mathrm{old}})+2. \tag{K.2}
\]
The same public-witness calculation as Block A is performed with the old
dictionary; it does not use $k$, $m$, or a success event from the VC arm.

For a fixed old master sample, Sauer--Shelah with the coarse dimension
upper bound $d$ gives at most $(e n_{\mathrm{old}}/d)^d$ error traces. The
old event therefore has its own conditional charge
\[
 \Pr(E_{\mathrm{good,old}}^c\mid\bar S_{\mathrm{old}})
 \leq4k_{\mathrm{old}}
 \left(\frac{e n_{\mathrm{old}}}{d}\right)^d
 \exp\{-c_{\mathrm{tr}}m_{\mathrm{old}}\alpha/d^2\}. \tag{K.3}
\]
The old fixed-point calculation gives
$\log(e n_{\mathrm{old}}/d)\leq C\log Q_{\mathrm{old}}$.
Since $a_{\mathrm{old}}\geq d+\log(4k_{\mathrm{old}}/\beta)$,
the exponent in (K.3) dominates both the coarse trace multiplicity and the
old trace confidence share.

With $n_0,p_r$ replaced by
$n_{\mathrm{old}},p_{\mathrm{old},r}$, the exact source map (E.1), inclusion
(E.2), factor-two pairing (E.5), DDim recurrence (F.3), and actual-output
margin (G.2) hold verbatim as mathematical identities, but are proved on
the old arm's restrictions and lists. Its quotient law is separately
totalized and pulled back. One changed raw record again changes one old
block list, so one AboveThreshold process and one old Sparse Sample call
compose to at most $(\varepsilon,\delta)$ on all inputs.

Likewise, define the old marked kernel from its own internal state and the
old producer union
$\mathcal G_{\mathrm{old},i}=\bigcup_{r=0}^d
\mathcal L_{\mathrm{old},i}^r$. On its own core event,
\[
 \begin{aligned}
 &\{J_{\mathrm{old}}=i,\ 
   \operatorname{err}_{\bar D}(\bar H_{\mathrm{old}},\bar c)>\alpha\}\\
 &\quad\subseteq
 \bigcup_{h\in\mathcal G_{\mathrm{old},i}(\bar S_i):
                 \operatorname{err}_{\bar D}(h,\bar c)>\alpha}
 \{\widehat{\operatorname{err}}_{-i}(h)\leq\alpha/4\},
 \end{aligned} \tag{K.4}
\]
before any conditioning on the old mark. Hence its reconstruction failure
is at most
\[
 k_{\mathrm{old}}(d+1)L_{\mathrm{old}}
 \exp\{-9\alpha(k_{\mathrm{old}}-1)m_{\mathrm{old}}/32\}, \tag{K.5}
\]
which the old block constant absorbs independently. Thus this arm has its
own kernel, privacy proof, actual SOA identity, marked projection, PAC event,
and four-part confidence ledger.

Finally, $a_{\mathrm{old}}\geq d$ makes the block scale
$\widetilde O(d^3/\alpha)$, while (K.2) gives teacher scale
$\widetilde O(d^2\log(1/(\delta\beta))/\varepsilon)$. Consequently
\[
 N_{\mathrm{old}}
 \leq K_{\mathrm{old}}\Lambda^{q_{\mathrm{old}}}
 \left\{
 \frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
 +\frac{d+\log(1/\beta)}\alpha
 \right\}. \tag{K.6}
\]
Accordingly (K.6) is a complete common-interface arm, not a scalar
consequence of success of the VC arm. For $d=0$ it uses the shared no-data
law.

### Block L: finite-class arm, common minimum, and baselines (`step_016`)

Let (M=|C|<\infty). By Block B, (|\bar C|=M). On a quotient sample
define (M_{\bar S}(h)) to be its mistake count and release (h\in\bar C)
with probability proportional to
\[
 \exp\{-\varepsilon M_{\bar S}(h)/2\}. \tag{L.1}
\]
Replacing one record changes every score by at most one; the usual numerator
and normalizer comparison proves pure \(\varepsilon\)-DP. For a realizable
target \(\bar c\), its weight is one, so for a fixed hypothesis of population
error (p>\alpha),
\[
 \begin{aligned}
 \Pr(\bar H=h)
 &\leq\mathbb E\exp\{-\varepsilon M_{\bar S}(h)/2\}\\
 &=(1-p+pe^{-\varepsilon/2})^N
 \leq\exp\{-Np(1-e^{-\varepsilon/2})\}
 \leq e^{-N\varepsilon\alpha/4},
 \end{aligned} \tag{L.2}
\]
where (1-e^{-\varepsilon/2}\geq\varepsilon/4) for
\(0<\varepsilon\leq1\). A union over (M) hypotheses proves PAC utility for
\(N\geq4(\log M+\log(1/\beta))/(\varepsilon\alpha)\), which is bounded by
the displayed (K_{\mathrm{fin}}\Lambda^{q_{\mathrm{fin}}}R_{\mathrm{fin}}).
This direct calculation also shows why any separate finite-class sampling
term is dominated when \(\varepsilon\leq1\). The law is a finite quotient
kernel, its raw pullback is private by (B.3), and its raw risk is exact by
(B.4). If (C) is infinite, this arm is assigned (+\infty); no empirical
finite surrogate is introduced.

The three thresholds now concern complete learners with the same output
space (H_C), decoder, adjacency, risk, and confidence mode. Since the
sample complexity is an infimum over valid learners, choosing the arm with
the least certified threshold gives
\[
 m_C\leq\widetilde O\bigl(
 \min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\bigr). \tag{L.3}
\]
The baseline traces are exact: (d=0) uses the same zero-sample law in all
arms; (v=d) makes (vd^4=d^5); the old arm remains available for infinite
classes; only the finite arm is disabled there; and the class-complexity
shorthand uses the small-(\delta) schedule rather than fixed positive
\(\delta\).

### Final assembly

Blocks A-C define the exact learner and its raw kernel. Blocks D-F derive the
finite source-good structure and force a score-(k) stage. Block G produces
an actual item and proves all-input privacy. Blocks H-I give the exact
empirical identity and an unconditional population guarantee through the
pathwise marked inclusion. Block J eliminates the new-arm auxiliaries.
Blocks K-L independently certify the two baseline arms and only then take
the minimum. These implications close the theorem-level architecture under
the accepted sketch. What remains is formal step-local proof production and
review of the hard derivations identified below; no new theorem-facing
assumption, generated output, dependency, or target bridge is needed.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| --- | --- | --- | --- | --- | --- |
| A. Parameter closure and totality | Activates the exact positive branch, fixes every scalar and fallback, and proves the no-data branch | `step_001` | None | `assump:finite-littlestone`, `assump:approximate-dp-regime` | Formal ceiling-aware proof of (A.3) and feasibility of `bar k`; step-local |
| B. Quotient bridge | Transfers concepts, dimensions, sampling, neighbors, and risk exactly | `step_002` | None | `assump:finite-littlestone`, `assump:countable-evaluation-quotient`, `assump:realizable-iid` | Full tree-witness notation and measurability details; step-local |
| C. Kernel and mark | Produces quotient/raw kernels and the exact occurrence projection | `step_003`, `step_004` | A, B | `assump:countable-evaluation-quotient` | Formal internal-state kernel construction and finite integration; step-local |
| D. VC trace control | Produces the simultaneous fixed-block event and closes its confidence fixed point | `step_005`, `step_006`, `step_007` | A, B | `assump:finite-littlestone`, `assump:approximate-dp-regime` | Hypergeometric mgf/KL lemma with constants and complete fixed-point inequalities; step-local |
| E. Source wrapper | Exports exact restrictions, essential lists, SOA identities, and irreducible leaves | `step_008` | D | `assump:finite-littlestone` | Restate and instantiate every Lyu v1 hypothesis in current notation; step-local |
| F. Structural termination | Gives finite DDim descent and a score-`k` actual quotient function | `step_009` | E | `assump:finite-littlestone`, `assump:realizable-iid` | Formal arbitrary-decomposition argument in the equality case; step-local |
| G. Selection and privacy | Produces an actual list item and proves all-input raw replacement DP | `step_010`, `step_011` | A, C, E, F | `assump:approximate-dp-regime` | Exact AboveThreshold parameter instantiation, Sparse Sample tail, and adaptive composition; step-local |
| H. Empirical certificate | Establishes exact SOA identity, irreducibility, and empirical loss | `step_012` | D, E, G | `assump:finite-littlestone` | Formal restriction-empty contradiction and fixed-family statement; step-local |
| I. Population reconstruction | Converts an adaptive actual output to unconditional quotient and raw PAC utility | `step_013` | C, D, E, G, H | `assump:realizable-iid` | Measurable pathwise inclusion, Bernoulli tail, and multiplicity domination; step-local |
| J. VC arm | Eliminates auxiliaries and exports the exact new-arm rate and small-`delta` statement | `step_014` | A, B, D, G, I | All four primitive assumptions | Complete logarithmic-envelope algebra and ceiling audit; step-local |
| K. Old arm | Independently certifies the quotient-first `d^5` baseline | `step_015` | B, C | All four primitive assumptions | Repeat source wrapper, marking, privacy, reconstruction, and old scalar elimination; step-local |
| L. Finite arm and assembly | Proves finite private ERM, compares completed arms, and preserves every baseline | `step_016`, final assembly | B, C, J, K | All four primitive assumptions | Full finite-law normalization and common-`Lambda` minimum statement; step-local |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| --- | --- | --- | --- | --- |
| `step_001` | Block A | Produces parameters for C-G and J | Prove least-feasible `k`, `bar k` envelope, privacy allocations, total paths, and `d=0` | Exact tuple is used, with no event-dependent choice |
| `step_002` | Block B | Feeds C-D and I-L | Bijection, VC/LD preservation, measurable `T_N`, neighbor/pushforward/risk identities | Zero residual to the raw target |
| `step_003` | Block C | Feeds marking, privacy, old arm, finite arm | Countable-input Markov kernel, standard-Borel output, event and risk measurability, raw pullback | No measurable selector is assumed |
| `step_004` | Block C | Feeds I and K | Construct marked internal-state kernel and prove exact projection | Mark `0` is only fallback; released marginal is unchanged |
| `step_005` | Block D | Feeds tail union and fixed point | XOR trace identity and Sauer bound with exponent `v` | Functions remain actual quotient functions |
| `step_006` | Block D | Feeds source inclusion, empirical certificate, and reconstruction | High relative without-replacement tail, low one-sided tail including mean zero, exact `E_good` | No conditional block independence |
| `step_007` | Block D | Feeds E, G, I, J | Prove `log(en_0/v) <= C log Q`, trace charge, and sample envelope | Closes `n_0=km` noncircularly |
| `step_008` | Block E | Feeds F-I | Exact `SourceMap`, endpoint wrapper, `(2p,p)` pairing, list cap, SOA identity, irreducibility | Highest citation/convention-risk local step |
| `step_009` | Block F | Feeds mechanism utility | Prove equality-case common essential item and integer-potential recurrence | Potential budget is at most `d` with zero additive forcing |
| `step_010` | Block G | Feeds privacy, empirical certificate, and reconstruction | Laplace event, detection, selected-score lower bound, and failure-symbol exclusion | One AboveThreshold transcript and one Sparse Sample call |
| `step_011` | Block G | Feeds J and final privacy | One changed block/list, sensitivity-one adaptive queries, composition, partition mixture, raw pullback | Must hold for arbitrary nonrealizable labeled inputs |
| `step_012` | Block H | Feeds I | Actual SOA identity, two irreducibility scales, source empirical contradiction, fixed family | Output may be improper; no surrogate output class |
| `step_013` | Block I | Feeds J and final PAC statement | Pathwise marked inclusion, no conditioning on `J` for independence, lower tail, finite union, projection | Same function/target in full, complement, and population errors |
| `step_014` | Block J | Feeds L | Eliminate `k,m,L,B,Q,a`, retain all exposed powers/logs, prove `N delta -> 0` only on schedule | Produces a complete VC-arm tuple |
| `step_015` | Block K | Feeds L | Independently repeat quotient/source/mark/privacy/PAC interfaces with old dictionary | Cannot borrow success or a generated event from the VC arm |
| `step_016` | Block L and final assembly | Consumes J-K and finishes theorem | Finite exponential mechanism, pure DP/PAC, common minimum, all boundary baselines | Infinite classes disable only the finite arm |

## Dependency And Assumption Audit

The final claim is explicitly conditional, but only on the four primitive
conditions already in `setting.md`. No generated condition is moved into the
theorem assumptions.

| Theorem-facing item | Provenance classification | Producer and legal dependency path | Consumer(s) | Audit result |
| --- | --- | --- | --- | --- |
| Finite Littlestone dimension and parameter ranges | Primitive conditions | `assump:finite-littlestone`, `assump:approximate-dp-regime` | A, D-G, J-L | Valid primitive input |
| Countable measurable quotient cells | Primitive condition | `assump:countable-evaluation-quotient` | B-C, then all quotient consumers | Valid static pre-sampling input |
| Realizable iid labeled distribution | Primitive utility condition | `assump:realizable-iid` | B, F, I, K-L | Never used in privacy |
| Quotient bijection, VC/LD equality, neighbor and risk transfer | Derived | B / `step_002` | C-D, I-L | Produced before every use |
| Total parameter tuple and local lookup conventions | Derived | A / `step_001` | C-G, J | Fixed before sampling; noncircular |
| Quotient learner and marked law | Derived | C / `step_003`-`step_004` | G, I, K-L | Exact kernels and projection required before probability use |
| Error-trace family and `E_good` | Derived event/control | D / `step_005`-`step_007` | E-F, H-I | Charged unconditionally; not an assumption |
| Restrictions, lists, leaf irreducibility, source inclusion | Derived structural state | E / `step_008` | F-I | Source hypotheses discharged before use |
| DDim potential and score-`k` stage | Derived finite closure | F / `step_009` | G | Does not assume selected output or termination |
| Mechanism-good event and actual output | Derived event/output | G / `step_010` | H-I | Fallback remains separately charged |
| Raw all-input DP | Derived theorem conclusion | G / `step_011` | J, L, final theorem | No utility condition in derivation |
| Exact SOA identity and empirical loss | Derived certificate | H / `step_012` | I | Same actual function; no trace representative |
| Marked population-success event | Derived theorem conclusion | I / `step_013` | J, L, final theorem | Output projection and raw-risk bridge are earlier dependencies |
| VC, old, and finite arm rate tuples | Derived public interfaces | J, K, L / `step_014`-`step_016` | Final minimum | Each arm complete before comparison |

No missing derived-condition bridge is visible. Conditional hypotheses used
inside the fixed-trace tail, source decomposition lemma, and fixed-candidate
holdout calculation are discharged respectively by finite union/tower,
`E_good` plus (E.1)-(E.5), and the pathwise inclusion (I.3).

## Citation And Tool Audit

The Lyu source was independently rechecked in the official arXiv
`2510.00076v1` TeX identified above. The following table records the exact
statement used, current objects, and known non-output boundary.

| Source/tool | Exact checked statement and current object map | Hypotheses discharged here | Conclusion consumed | Convention/object compatibility and known non-output |
| --- | --- | --- | --- | --- |
| Lyu Proposition 2, `prop:chernoff-sample-without-replacement` | Binary finite population, uniformly sampled subset of printed size `t`; factor `2` and exponent denominator `3` | Fixed indexed quotient error trace; one marginal uniform block; relative parameter `1/(5d)` | (D.3), high-error clause only | Source line says `k <= N` while the subset size is `t`; this harmless symbol typo is not propagated. The low/near-zero branch is not taken from this proposition |
| Lyu Definition 4.2, `def: p-decomposition`, and `claim: exist decomposition` | Valid `(p,d)` trees, leaf irreducibility `p 2^{d-t}`, and existence | Nonempty quotient restrictions; `LD <= d`; fixed pointwise choices | Decompositions and leaf witnesses in E | Source gives pointwise existence, not raw-input measurability; C supplies the kernel wrapper |
| Lyu Lemma 4.1, `lemma: number of leaves` | At most `p^d 2^{d^2}` leaves | Exact current `(p_r,d)` decomposition | List cap (E.4) | Same binary-function and LDim convention; no class-cardinality assumption |
| Lyu Lemma 4.2, `lemma: Ldim-of-SOA` | Exact restatement of Ghazi et al. Lemma 4.4: SOAs of `(d+1)`-irreducible subclasses have LDim at most `d` | `(d+1)`-irreducibility from (E.6), actual `G subset bar C` | Fixed improper family in H | Same quotient function and SOA convention; supplies no measurability or PAC event |
| Lyu Lemma 4.3, `lemma: p-decomposition` | For `G subset H`, optimal `(2p,d)` and `(p,d)` decompositions: DDim inequality and exact SOA equality at equal dimension | (E.2), exact pairing `(p_{r+1},p_r)=(2p_r,p_r)` | (F.2)-(F.3) and actual function identity | Direction was rechecked. The current half-scale list is not called a literal source-stage list; uniformity in `p` supplies the wrapper |
| Lyu Definition 4.3, `def: essential hypothesis` | A function occurring at a top-dimensional leaf of every optimal decomposition | Fixed current quotient restriction and decomposition | Actual essential lists | Functions are elements of `H_C`, not trace encodings |
| Lyu Corollary 4.1, `coro: essential hypotheses` | Four checked items: list cap; equal-DDim inheritance; existence under equal `(2p,p)` dimensions; DDim-zero list equals finite class | E-F hypotheses and realizable target membership | (E.4), equality-case support, DDim-zero score `k` | Does not itself select privately or make the list measurable on raw `X` |
| Lyu Algorithm 1, `algo:private sample`, and Lemma 3.1, `lemma: privacy of sparse sampling` | Law proportional to `exp(eps score)` over actual union plus `perp`; if each list has size `L` and `B >= 10 log(L/delta)/eps`, it is `(2eps,delta)`-DP under add/remove/replace one list | Current actual lists, cap `L(k)`, `B(k)`, one changed block list | (G.3) and Sparse Sample part of (G.4) | Domain may be infinite but effective support is finite. The lemma does not prove raw-record-to-list adjacency; G proves it |
| Lyu Algorithm 2, `algo: abovethreshold`, and Lemma 3.2, `lemma: privacy of abovethreshold` | Independent `Lap(1/eta)` tests; sensitivity-one adaptive queries; privacy `eta O(sqrt(K log(1/delta))+log(1/delta))` | One process, at most one consumed `Above`, current `eta`, sensitivity-one `q_r` | Detection/noise event and AboveThreshold part of (G.4) | Query horizon contributes to the utility union, not naive privacy composition. Adaptive interleaving uses the source's concurrent-composition remark |
| Lyu Theorem 3, `thm: DP-ERM-littlestone` | Fixed-block DP-ERM proof, DDim descent, and empirical contradiction for an actual SOA output | Current kernel, endpoint, scale, confidence, and reconstruction wrappers supplied separately | Structural proof pattern in F-H and old arm K | Printed theorem says `SOA_G(h)`, but its proof says `hat h = SOA_G`; only the proof's exact identity is used. Its high-constant-probability-to-one sentence is not used as an amplification theorem |
| Lyu Corollary 5.1, `coro: PAC learning` | Tilde `d^5` approximate-private PAC rate | Old quotient arm separately discharges measurability, raw privacy, and explicit PAC conversion | Baseline rate comparison in K | It is not used to bypass the quotient kernel or marked reconstruction and does not supply the new `v` exponent |
| Sauer--Shelah | For binary class of VC dimension `v`, growth at `n_0` is at most `(e n_0/v)^v` for `n_0 >= v` | (B.1), positive branch, fixed quotient sample | (D.1) | Exact setting convention; XOR with fixed labels preserves trace count; duplicates only reduce it |
| Finite-population exponential-mgf comparison | Sampling without replacement has Bernoulli/binomial mgf upper bound | Fixed binary trace and marginal uniform block | (D.4) | Current-notation direct derivation; low mean and mean zero handled; no block independence conclusion |
| Countable product standard-Borel fact | A countable product of finite discrete standard-Borel spaces is standard Borel | Finite/countable `Q_C` | Block C kernel codomain | Exact branch output convention; does not assert raw input measurability without `T_N` |
| Bernoulli multiplicative lower tail | `Pr[Bin(M,p) <= (1-3/4)Mp] <= exp(-9Mp/32)` | Fixed block-local candidate, iid complement, `p > alpha` | (I.4) | Applied only after (I.3), never after conditioning on the data-dependent mark |
| Finite exponential mechanism/private ERM; Kasiviswanathan et al. arXiv:0803.0924 lineage | Direct law (L.1), sensitivity-one score, and expectation calculation (L.2) | Finite `bar C`, realizability, `epsilon <= 1` | Finite arm | The rate is derived directly; no unverified theorem label, properness transfer, or infinite-class surrogate is consumed |

The official source defines restrictions for `j in [d]` immediately before
an algorithm with `d+1` stages. The accepted wrapper explicitly defines the
same-formula endpoint and therefore does not treat the omitted endpoint as a
literal printed source definition. Ghazi et al. are consumed only through
the exact Lyu Lemma 4.2 restatement; no separate unchecked Ghazi statement is
needed.

## Quantitative Dependence Audit

- Exposed variables: `d`, `v`, `alpha`, `beta`, `epsilon`, and `delta`; the
  finite arm additionally exposes `|C|` through `log^+|C|`.
- Hidden constants: `K`, the powers of `Lambda`, and the analogous old and
  finite constants are universal. They may not depend on the measurable
  space, class, distribution, target, quotient enumeration, decompositions,
  lists, partition, stage, generated event, support, or output.
- Fixed quantities: none in the full bound. Only the final class-complexity
  shorthand fixes `alpha,beta,epsilon` and follows the declared `delta`
  sequence.
- Probability mode: deterministic all-input DP inequalities for the raw
  Markov kernel; unconditional high-probability PAC over iid sampling and all
  learner randomness. Conditional fixed-sample and fixed-producer estimates
  are integrated by finite union and tower before theorem use.
- Horizon mode: one fixed sample and a finite `d+1` stage transcript; no
  all-time, stopping-time, or asymptotic probability upgrade. The only limit
  is the stated small-`delta` comparison.
- Norm/metric mode: binary population risk. Quotient and decoded raw risk
  agree exactly by (B.4); no surrogate norm appears.
- Auxiliary tolerances: `gamma=alpha/16`; four confidence shares `beta/4`;
  two delta shares `delta/2`; `eta`, `epsilon_SS`, `tau_AT`, `tau_SS`,
  `a,Q,m,k,L,B`; and independently suffixed old-arm analogues. Every one has
  a producer in A, D, or K.
- VC-arm specialization: (J.1)-(J.3) retain the positive powers `d^4` and
  `v`, `1/(epsilon alpha)`, and `log(1/(delta beta))`; only displayed-parameter
  logarithms enter `Lambda^q`. The additive nonprivate term is dominated in
  the positive branch and remains written in `R_VC`.
- Old-arm specialization: coarse trace exponent `d`, block scale
  `tilde O(d^3/alpha)`, and teacher scale
  `tilde O(d^2 log(1/(delta beta))/epsilon)` multiply to the exposed `d^5`
  term. No new-arm event or rate is used.
- Finite-arm specialization: (L.2) exposes
  `(log^+|C|+log(1/beta))/(epsilon alpha)`; any separate finite sampling term
  is dominated because `epsilon <= 1`, and the setting retains its displayed
  `log(1/beta)/alpha` term.
- Probability conversion: (D.5), the two mechanism tails, and (I.5) are the
  exact four `beta/4` charges. No phrase-level absorption substitutes for
  their inequalities.
- Small-`delta` obligation: `N delta -> 0` follows only from
  `delta K Lambda^q R_VC -> 0`. A fixed positive `delta` is not presented as
  source-compatible asymptotics.
- Baseline invariance: the first/stationary trace at `d=0` is the exact
  zero-data output; `v=d` gives `vd^4=d^5`; the old and finite arms are
  complete independent laws; `R_fin=+infinity` only when `C` is infinite;
  and the minimum compares complete arm thresholds rather than mixed or
  weakened laws.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Feasible parameter tuple and total procedure | Deterministic activation and algorithm existence | One fixed run for every allowed parameter tuple | `k=min{t>=2: t/2-tau_AT >= B(t)+tau_SS(t)+2}`; `n_0=km` | Linear `t/2`; explicit witness `bar k`; fixed fallback | List/noise logs, ceilings, tiny `delta` | One deterministic check; no stochastic accumulation | Structural upper comparison | Primitive parameter ranges plus direct scalar derivation; `d=0` excluded from positive formulas | Positive linear margin has the score-separation content needed | Produced tuple is exactly consumed; no surrogate or residual | step-local | Candidate tuple exists before feasibility test and before sampling | `d=0` stationary zero-data output; `d>=1,k>=2` legal first block/stage | (A.2)-(A.3) make all defects smaller than `bar k/2-2` | `d,v,alpha,beta,epsilon,delta` ranges | `a,Q,m,L,B,tau` | `d=v=1`, ceiling-dominated `m`, `beta` near `1/4`, scheduled `delta` handled | No legal teacher count or actual-output margin |
| Quotient dimensions, neighbor map, and risk | Structural and object-target bridge | Every class/distribution in conditional scope and every finite sample | (B.1)-(B.4) | Evaluation equality on fibers; pushforward measure | Duplicate fibers, improper output, collapsed neighbors | Exact finite-product identities; no accumulation | Algebraic coupling | Primitive measurable quotient; finite/countable cells; no uncountable quotient claimed | Equality supplies the exact structural/risk claim, not merely an upper bound | Produced quotient target and consumed raw target have zero residual in binary risk | step-local | Derived directly before all source and final consumers | At `d=0`, unique decoded output already has zero risk; first record always maps | Bijection/lift and pushforward equalities | Quotient relation, measurable cells | `bar C`, `bar D`, `T_N`, decoder | Repeated points, arbitrary fibers, finite/countable quotient pass | Source theorem and final raw theorem would concern unmatched objects |
| Quotient/raw learner kernel | Generated measurable-output interface | Every raw labeled input, including nonrealizable inputs | `A_N(s,E)=K_C(T_N(s),E)` | Countable discrete input and standard-Borel output | Arbitrary pointwise lists/transcripts; uncountable raw `X` | Finite stages on countable input; no qualitative leakage | Projection/nonexpansive maintenance via measurable composition | Primitive countable quotient; uncountable evaluation quotient excluded | Countability directly supplies section measurability | Exact output space `H_C`; raw input transferred through exact `T_N` | step-local | Pointwise laws are assigned on quotient atoms before called kernels | Empty input/list and all-fallback path have defined Dirac/finite laws | Every section on a countable discrete domain is measurable | Countability; measurable `T_N` | Totalized pointwise law | `N=0`, countably infinite `Q_C`, arbitrary labels pass | DP/PAC probabilities would not denote a raw learner kernel |
| Marked occurrence law and projection | Generated analysis coordinate | One finite internal path and mark in `{0,...,k}` | (C.2)-(C.3); weights sum to one | Finite nonempty occurrence set on actual path | Repeated occurrences, adaptive stage, fallback | One finite split; exact mass preservation | Algebraic coupling | Derived quotient kernel and actual-list membership; fallback gets mark `0` | Occurrence source supplies actual producer support | Summing marks equals the same released law; zero privacy/output residual | step-local | Released joint internal law exists before marking; mark consumed later | First-stage success has nonempty set; no-success path is mark `0` | `sum_i w_i=1` pathwise | Kernel and finite mark space | Internal state and occurrence sets | One/all/no occurrence and `k=2` pass | Finite reconstruction would lack a measurable producer coordinate |
| Simultaneous `E_good` and confidence charge | Generated concentration event | One master sample, one uniform partition, all traces/blocks | (D.2)-(D.6) | Exponent `c_tr m alpha/d^2`; VC trace count | `4k(en_0/v)^v`, ceiling, low-mean boundary | One finite union; block dependence is not accumulated; tower integrates condition | Structural upper comparison and finite union | Lyu Proposition 2 high branch; direct hypergeometric mgf low branch; `d>=1` | Relative source handles high mean; local KL source has one-sided near-zero content | Same empirical losses and thresholds; only fixed `gamma=alpha/16` conversion | step-local | Trace family precedes event; `Q,m` precede their own failure bound | Mean zero makes low-tail failure impossible; first block is marginal uniform | `c C_blk a log Q` dominates `v C_0 log Q+log(4k/beta_tr)` | VC dimension and parameter tuple | Trace family, partition, `E_good` | Mean `0`, `gamma/3`, mean `1`, repeated records, dependent blocks pass | Cross-block inclusion can fail and source structure cannot be consumed |
| Cross-block restrictions, lists, and irreducible leaves | Cited-wrapper structural export | `d+1` finite source stages on quotient | (E.1)-(E.6) | Exact inclusion and exact `(2p_r,p_r)` source pair | Stage shift, endpoint omission, empty arbitrary-input restrictions | Exact finite transitions; no error accumulation | Algebraic coupling and structural lower comparison | `E_good`; Lyu Definitions 4.2/4.3, Lemmas 4.1/4.3, Corollary 4.1; empty states totalized | Source has exact SOA equality and leaf irreducibility, the required claim types | Actual quotient function and scales transfer exactly; factor-two residual is equality | step-local | `E_good` produced before inclusion; fixed decompositions before list use | At `r=0`, `p_0=n_0d>=max{n_0,d+1}` activates both scales | `(1+a_d)/(1-a_d)*rho<=1`; `p_r2^{d-t}>=p_0` | Finite LDim and quotient class | Restrictions, decompositions, lists | Empty restriction, DDim zero, `d=1`, infinite class pass | Source hypotheses or same-target identity would be absent |
| DDim descent and score-`k` stage | Finite invariant/termination/support | Stages `r=0,...,d` | `q_r<k => M_{r+1}<=M_r-1`, `M_0<=d`; `M_r=0 => q_r=k` | Integer DDim potential and exact equality-case SOA inheritance | Mechanism misreports are excluded from deterministic recurrence; no additive forcing | Monotone potential, one-unit charge, finite budget `d`, finite horizon `d+1` | Monotone potential | E outputs plus Lyu Lemma 4.3/Corollary 4.1 and realizable target | Exact equality supplies common actual support; zero-DDim clause supplies target support | Same actual function is consumed by occurrence query; zero residual | step-local | Lists/inclusion precede recurrence; termination is not assumed | If `M_0=0`, support is active immediately; otherwise first true-low stage spends one unit | Equality on left of (F.2) would force `q_r=k`; contraposition gives strict drop | Realizability, LDim bound | `M_r`, `q_r`, lists | `M_0=0`, `M_d=0`, `d=1` pass | Nonnegativity alone would not yield common support or termination |
| Actual mechanism output | Generated output and failure-symbol exclusion | One AboveThreshold transcript and at most one Sparse Sample call | (G.1)-(G.3) | Score-`k` item and teacher margin | Laplace errors, false stage, list multiplicity, `perp` weight | Finite transcript; failures have two finite confidence charges | Structural lower/upper comparison | Lyu Algorithms/Lemmas 3.1-3.2 plus A/F outputs; no uncharged branch | Score lower bound and exponential weights have exact selection content | Output is literally a list member; fallback is distinct, not transferred | step-local | Parameter/list/common-item producers precede mechanisms | Empty first list cannot pass on good noise; first score-`k` stage is detected | `q>=k/2-tau_AT>=B+tau_SS+2`; failure ratio bounded by `beta_SS` | Privacy/confidence parameters | Lists, scores, selected transcript | Immediate/last success, empty list, `perp`, `k=2` pass | Output may be fallback, invalidating H-I |
| Raw all-input DP | Final privacy closure | Every replace-one raw pair; arbitrary labels | One sensitivity-one AT process plus one one-list-replacement SS call; (G.4) | Exactly one changed block/list and exact quotient neighbor bridge | Adaptive stopping, transcript divergence, empty/fallback paths | Finite two-component composition; no per-stage accumulation | Algebraic coupling and finite composition | B/C/E plus Lyu privacy lemmas; equal quotient inputs handled by equality | Source mechanisms have the needed DP claim type; locality maps raw record to source adjacency | Quotient-to-raw transfer is exact under same output kernel | step-local | Kernel and list locality precede privacy; no `E_good` or realizability | First arbitrary input has total query/output path | `(eps/4,delta/2)+(eps/4,delta/2)=(eps/2,delta) <= (eps,delta)` | Raw adjacency and privacy parameters | Partition, lists, transcript | Same-cell replacement and every terminal path pass | Pointwise mechanism privacy would not imply raw-kernel DP |
| Exact SOA identity and empirical error | Structural same-target and empirical certificate | Actual-output source-good paths | (H.1)-(H.3) | Exact leaf SOA and `n_0`-irreducibility | Adaptive choice, improperness, repeated points, fallback | One deterministic contradiction; no accumulated forcing | Structural lower/upper comparison | E/G outputs and Lyu Theorem 3 proof/Lemma 4.2 | Irreducibility prevents the exact empty restriction; fixed-family lemma only supplies structure | Produced and consumed quotient function is identical; decoder risk remains exact | step-local | Actual list output/leaf precede empirical claim | Empirical-zero output already satisfies bound; fallback excluded by charged event | Every `g in G` has loss `<=2gamma`; larger SOA loss forces empty restriction | Finite LDim | Actual leaf, SOA output, `E_good` | DDim-zero leaf, output outside `bar C`, infinite class pass | No empirical threshold for holdout; surrogate identity would break reconstruction |
| Marked finite reconstruction and quotient PAC | Generated population-success closure | One finite mark/candidate union and iid complement | Pathwise (I.3); tail (I.4); union (I.5) | Independent complement of `(k-1)m` and exponent `9 alpha(k-1)m/32` | `k(d+1)L`, adaptive output/stage, four failure ledgers | One finite union; no conditioning on mark; no persistent defect | Stopping/conditioning argument and structural upper comparison | C/E/G/H outputs plus realizable iid sampling and direct Bernoulli tail | Producer-local candidate set plus iid complement supplies the exact independence/lower-tail claim | Full-to-complement residual `k/(k-1)<=2`; same target/risk; all residuals dominated at `alpha/4` | step-local | Candidate lists/output/empirical loss precede event inclusion | `k=2` leaves one full block complement; mark `0` excluded | `alpha(k-1)m` dominates `log(k(d+1)L/beta_gen)` | Realizable iid data | Mark, candidate unions, empirical certificate | Immediate/late stage, empirical zero, repeated records, countable quotient pass | Adaptive output could not be reduced to a finite independent test |
| VC public rate and `N delta` schedule | Quantitative specialization and new-arm closure | One fixed-sample arm; sequence claim only under declared schedule | (J.1)-(J.3); `delta N <= delta K Lambda^q R_VC` | Explicit `k,m` envelopes | Ceilings and all auxiliary logs | One scalar specialization; no temporal accumulation | Structural upper comparison | Earlier completed VC interfaces plus direct algebra; fixed positive `delta` excluded from sequence claim | Controls have the exact exposed-power content required | Exact arm sample and risk target; remaining factors are declared logs only | step-local | DP/PAC tuple produced before rate export | `d=0` bypass; `v=d` substitution before comparison | Multiply explicit envelopes; schedule directly dominates `delta N` | All four assumptions | Completed VC outputs | `v=1`, `v=d`, tiny vs fixed `delta` pass | Hidden positive power or unsupported mode upgrade would invalidate theorem |
| Old-Lyu common-interface arm | Baseline invariance and independent theorem arm | Same conditional class, fixed sample | Old analogues of A-I and (K.1)-(K.6) | Coarse `d` trace and source mechanisms | Old trace/list/noise/mark logs and confidence shares | Same finite stages/mark/ledger, separately budgeted | Structural comparison plus finite union | Lyu Theorem 3/Corollary 5.1 with quotient and marked wrappers re-instantiated | Source supplies `d^5` mechanism/rate lineage; current wrappers supply missing kernel/PAC interfaces | Same `H_C,T_N,Dec_C`, adjacency, and risk; zero arm-interface residual | step-local | Old dictionary/events are independent of new-arm success | `d=0` shared stationary law; `d=1` legal first stage | Old block `tilde O(d^3/alpha)` times teacher `tilde O(d^2/epsilon)` | Four primitive assumptions | Old-specific parameters/events/outputs | Finite/infinite class, empty lists, scheduled `delta` pass | A scalar citation would be compared without a complete learner interface |
| Finite arm and common minimum | Finite DP/PAC theorem and baseline assembly | Finite `C`; deterministic comparison of three complete arms | (L.1)-(L.3) | Realizable zero-score comparator and finite multiplicity `M` | `log M`, confidence, infinite-cardinality boundary | One finite selection and one threshold minimum | Structural upper comparison | Direct exponential-mechanism calculation; infinite case explicitly disabled | Sensitivity and score gap have exact DP/PAC content | `card(bar C)=card(C)`; same output/decoder/risk; minimum mixes no laws | step-local | J/K complete before minimum; finite arm proves itself | Singleton/`d=0` uses zero-data law; infinite `C` sets only this arm to infinity | `M exp(-N epsilon alpha/4)<=beta`; take least valid threshold | Four primitive assumptions | Three complete arm tuples | Singleton, finite/infinite, `v=d`, fixed/scheduled `delta` pass | Minimum would compare incomparable or uncertified bounds |

Every accumulated row states its concrete finite control relation. There is
no all-time or limiting invariant. In particular, the DDim row has the
one-step potential drop and finite reserve, the trace and reconstruction
rows have exact finite multiplicities and exponents, and privacy has a
two-component composition rather than a category-only label.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Exact algorithm tuple and total law | A / `step_001` | Primitive parameters, explicit source list/privacy formulas | Controlled: all logs, ceilings, failures; uncontrolled: none after totalization | Exact tuple used by learner and rate; no alternate sample | (A.1)-(A.3) | Linear teacher score and universal constants | C-G, J | Valid at diagnostic level; scalar proof step-local |
| Quotient class/dimension/risk bridge | B / `step_002` | Evaluation equivalence, measurable cells, pushforward | Fibers, repeats, improper outputs handled by equality | Same quotient output decoded to exact raw risk | (B.1)-(B.4) | Cellwise evaluation equality | C-D, I-L | Valid; zero residual |
| Countable quotient kernel and raw pullback | C / `step_003` | Countable discrete `Z_Q^N`, standard-Borel `H_C`, totalized laws, `T_N` | Arbitrary pointwise variation is measurable; no selector defect remains | Exact codomain and raw domain | Section measurability plus composition (C.1) | Countable evaluation quotient | G, I, K-L | Valid; formal kernel proof step-local |
| Marked law/projection | C / `step_004` | Joint internal law and finite occurrences | Repeated occurrences/fallback explicitly controlled | (C.3) is exact output marginal | Finite uniform splitting | Actual-path nonempty occurrence | I, K | Valid; zero release residual |
| VC error-trace family | D / `step_005` | `VC(bar C)=v`, fixed labeled sample | Infinite class and duplicates collapse to traces | Exact source error vectors, not representatives | (D.1) | Positive branch `1<=v<=d` | D tail/fixed point | Valid |
| `E_good` and trace budget | D / `step_006`-`step_007` | Trace count, marginal block law, `a,Q,m,k` | High/low tails, block/trace multiplicity, ceiling controlled; no block-independence claim | Same empirical losses and source thresholds | (D.3)-(D.6) | `C_blk a log Q` exponent | E-F, H-I | Valid interface; constants step-local |
| Restrictions/lists/leaf witnesses | E / `step_008` | `E_good`, exact source map/pair, source decompositions | Endpoint, half-scale, empty restrictions controlled | Same actual quotient function; both irreducibility scales dominated | (E.2)-(E.6) | `rho`, factor-two pair, `p_0` | F-I | Valid; source instantiation step-local |
| Score-`k` stage | F / `step_009` | Inclusion, essential lists, integer DDim, target membership | Noise excluded to next block; zero additive structural defect | Same function queried by occurrence score | (F.2)-(F.3), budget `d` | Equality-case exact SOA and DDim-zero target | G | Valid; recurrence proof step-local |
| Actual selected item | G / `step_010` | Score `k`, list cap, noise scales, teacher inequality | False stage and `perp` controlled by separate beta shares | Literal list member; fallback separate | (G.1)-(G.3) | Teacher slack `+2` and `tau_SS` | H-I and privacy path | Valid; mechanism tail step-local |
| Raw all-input DP | G / `step_011` | Kernel, quotient neighbor, local lists, sensitivity-one scores | Equal quotient inputs, adaptive stop, empty/fallback paths all controlled | Exact quotient-to-raw pullback | (G.4) | Two `(epsilon/4,delta/2)` budgets | J, L, final theorem | Valid; composition derivation step-local |
| SOA identity and empirical loss | H / `step_012` | Actual list item, leaf identity, `E_good`, irreducibility | Improperness/adaptivity controlled; fallback excluded upstream | Same quotient function and empirical metric | (H.1)-(H.3) | `n_0` irreducibility, `gamma=alpha/16` | I | Valid; contradiction proof step-local |
| Population PAC event | I / `step_013` | Marked kernel, block-local finite union, empirical loss, iid complement | Marks, candidates, adaptive stage, four confidence shares controlled | Factor `k/(k-1)<=2`; same population target; all residuals under `alpha/4` | (I.2)-(I.5) | Complement exponent and `C_blk` | J, L, final theorem | Valid; measurable finite-union proof step-local |
| Public VC rate | J / `step_014` | Completed new-arm DP/PAC and exact auxiliaries | Only declared logarithms controlled by `Lambda`; no uncontrolled power | Exact arm/sample/risk; no surrogate | (J.1)-(J.3) | Universal `K,q`; explicit schedule | L, final theorem | Valid; elimination step-local |
| Old common-interface arm | K / `step_015` | Quotient wrappers, old dictionary, source mechanisms | All old trace/list/noise/mark defects independently controlled | Same output, decoder, privacy, PAC mode | (K.1)-(K.6) plus independently repeated A-I interfaces | Old source margin/block constant | L | Valid interface; full instantiation step-local |
| Finite arm and minimum | L / `step_016` | Finite quotient class, sensitivity-one score, completed new/old arms | `log M`, confidence, infinite boundary controlled | Same target; deterministic choice among complete laws | (L.1)-(L.3) | Realizable comparator and finite multiplicity | Final theorem | Valid; finite proof/minimum step-local |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Parameter tuple, teacher margin, and total fallback law | A / `step_001` | C-G, J, VC-arm theorem | Primitive parameters -> A -> consumers | derived | Valid; produced before sampling |
| Quotient factorization and dimension equalities | B / `step_002` | C-D, E source map, K-L, final scope | Primitive quotient -> B -> consumers | derived | Valid |
| Pushforward sample, neighbor transfer, and decoded-risk identity | B / `step_002` | C, G, I-L, final DP/PAC | Primitive quotient/distribution -> B -> consumers | derived | Valid; zero residual |
| Quotient kernel and raw pullback | C / `step_003` | Mark, privacy, both comparison arms, final learner | A+B -> C -> consumers | derived | Valid; exact codomain |
| Marked kernel and output projection | C / `step_004` | I and independently repeated old reconstruction | Quotient joint law -> mark -> I/K | derived | Valid; mark is analysis-only |
| VC error-trace family | D / `step_005` | Fixed-trace tails and trace fixed point | B -> trace count -> D | derived | Valid |
| Per-trace tails, `E_good`, and confidence charge | D / `step_006`-`step_007` | E-F, H-I | Trace family + parameters -> D -> consumers | derived | Valid; finite union/tower explicit |
| Current restrictions, essential lists, exact leaf SOAs, irreducibility | E / `step_008` | F-G, H-I | D -> E -> consumers | derived | Valid under checked source wrapper |
| DDim potential descent and score-`k` stage | F / `step_009` | G mechanism utility | E -> F -> G | derived | Valid; monotone finite budget |
| Selected transcript, actual output, and mechanism-good event | G / `step_010` | H-I; kernel release | A+C+F -> G -> consumers | derived | Valid; fallback charged |
| Raw replacement DP | G / `step_011` | J, L, final theorem | B+C+E+mechanisms -> G -> J/L/final | derived | Valid for all inputs |
| Exact SOA identity and empirical loss | H / `step_012` | I | D+E+G -> H -> I | derived | Valid; same actual function |
| Marked reconstruction and quotient/raw PAC event | I / `step_013` | J, L, final theorem | C+D+E+G+H -> I -> J/L/final | derived | Valid; pathwise mark-free independence bridge |
| Normalized VC-arm kernel/DP/PAC/rate tuple | J / `step_014` | L and final theorem | All new-arm producers -> J -> L/final | derived | Valid at diagnostic level |
| Normalized old-Lyu kernel/DP/PAC/rate tuple | K / `step_015` | L and final theorem | B+C + independent old source wrappers -> K -> L/final | derived | Valid path; no VC-arm success dependency |
| Finite-class kernel/DP/PAC/rate tuple | L / `step_016` | Final minimum | B+C + finite direct law -> L -> final | derived | Valid for finite `C`; explicitly inactive otherwise |
| Common minimum and baseline statements | L / `step_016` | Final theorem assembly | J+K+finite tuple -> deterministic threshold choice | derived | Valid; all consumers see common interface |

No generated output is consumed before its producer. In particular,
`E_good` is not used to construct its trace family or sample size, the
score-`k` item is not assumed in the DDim recurrence, the occurrence mark is
not part of the released law, and the minimum is not used to certify any of
its arms.

## Early Obstruction And Repair Plausibility

- Contract contradiction: none. The theorem is consistently conditional on
  the countable measurable evaluation quotient, and neither the draft nor
  the accepted sketch presents it as a full solution for arbitrary
  evaluation quotients.
- Theorem-critical mechanism witnesses: present. Measurability is driven by
  countability; trace control by (D.3)-(D.6); source structure by the exact
  `(2p,p)` pairing; termination by (F.3); actual selection by (G.2)-(G.3);
  privacy by one-list/sensitivity-one adjacency; empirical utility by the
  irreducibility contradiction; reconstruction by (I.3)-(I.5); and rate
  closure by (J.1)-(J.3), (K.1)-(K.6), and (L.1)-(L.3).
- Source-to-claim stress: passed at obstruction level. The primary TeX
  confirms all exact labels, directions, list bounds, zero-DDim support, and
  privacy conventions. The source's subset-size typo, missing displayed
  endpoint, half-scale current convention, malformed `SOA_G(h)` theorem
  text, and unproved probability-one amplification sentence are all exposed
  and are not consumed beyond what the proof text actually supports.
- Residual-to-target stress: passed. Quotient-to-raw risk, quotient-to-raw
  adjacency, and marked-to-released law have zero residual. The source-stage
  residual is the exact identity `p_{r+1}=2p_r`. The only empirical transfer
  residual is `k/(k-1)<=2`, which is dominated before the `alpha/4` holdout
  threshold. No weighted, transformed, population-surrogate, or
  trace-representative object remains.
- Exported-interface stress: passed at diagnostic level. Every threshold has
  a positive source: teacher score for mechanism utility, trace exponent for
  `E_good`, integer DDim reserve for termination, independent complement for
  population reconstruction, and realizable zero-score comparator for the
  finite arm. Controlled and persistent defect classes are separated.
- Generated-condition provenance: passed. Kernel, mark, event, lists,
  potential, mechanism success, SOA identity, empirical loss, PAC event, and
  rate tuples are all generated conclusions with forward paths.
- Entry and boundary stress: passed. `d=0` is stationary and already solves
  the theorem; `d>=1` activates `p_0>=max{n_0,d+1}`; `M_0=0` has immediate
  common support; mean zero makes the low-tail failure empty; `k=2` leaves a
  nonempty complement; empty and fallback paths are total; finite/infinite
  class and fixed/scheduled `delta` are distinguished.
- Scope/dependence stress: passed. Every repeated operation is finite and
  has a displayed budget. No all-time, uniform, or limiting probability
  conclusion is inferred from a fixed-horizon estimate. The only asymptotic
  claim is the explicit `N delta -> 0` consequence of the primitive schedule.
- Baseline stress: passed. The exact no-data law, old `d^5` arm, finite
  `log^+|C|` arm, `v=d` equality, infinite-class disabling convention, and
  small-`delta` qualification remain theorem-facing conclusions, not merely
  vanished defect terms.
- Same-setting repair plausibility: the current diagnostic exposes no repair
  need. If a future local proof falsifies the teacher envelope, source-stage
  translation, exact SOA identity, mark-free inclusion, or old-arm wrapper,
  that would be new evidence for `/proof-sketch`; it is not legitimate to
  repair such a failure inside this artifact. No current evidence requires a
  changed primitive assumption, learner, theorem mode, metric, dependence,
  success criterion, or conclusion.

Accordingly, every presently unresolved obligation is `step-local`. There
is no `sketch/interface defect`, no candidate `idea/theorem-contract defect`,
and no basis for `SKETCH_BLOCKED` in this producer attempt.

## Global Gaps And Hard Steps

There is no unresolved global dependency or target-interface gap. The
following proof bottlenecks remain substantial local work, which is why the
status is `PARTIAL_BLOCKED` rather than `COMPLETE_DRAFT`.

1. `step_001`: prove the ceiling-aware logarithmic bounds (A.3) and the
   universal `bar k` witness without hiding a positive power of `d` or `v`.
   Likely units: a parameter-envelope lemma, a least-feasible-count lemma,
   and a totalization proposition. Mechanism witness: the linear teacher
   score dominates the explicitly bounded logarithmic defects.
2. `step_003`-`step_004`: write the quotient and marked laws as formal
   kernels, including internal-state integration and all event/risk
   sections. Likely units: countable-domain kernel lemma, raw-pullback lemma,
   and finite marked-projection lemma. Witness: countable input plus finite
   path support and exact mass splitting.
3. `step_006`-`step_007`: prove the finite-population mgf comparison and a
   numerical lower bound on `D(gamma/2 || gamma/3)`, then close (D.6) with
   ceilings and all four constants. Likely units: high-trace proposition,
   low-trace proposition, simultaneous-event lemma, and fixed-point lemma.
   Witness: exponent `m alpha/d^2` dominates the exact finite multiplicity.
4. `step_008`: restate Definitions 4.2/4.3, Lemmas 4.1/4.3, and Corollary
   4.1 in current quotient notation; prove (E.2)-(E.6), including the
   endpoint and half-scale translation. Likely units: stage-inclusion lemma,
   source-wrapper proposition, and irreducibility-scale corollary. Witness:
   exact `(2p_r,p_r)` algebra and source leaf lower bound.
5. `step_009`-`step_010`: formalize the arbitrary-optimal-decomposition
   equality case behind (F.3), and instantiate both mechanism tails with the
   exact selected-stage transcript. Likely units: common-essential-item
   lemma, DDim descent proposition, AboveThreshold utility lemma, and actual
   Sparse Sample output lemma. Witness: integer potential plus teacher score
   margin.
6. `step_011`: prove privacy for every totalized input, including neighboring
   paths that select different stages. Likely units: local-list adjacency,
   score sensitivity, conditional second-mechanism privacy for every
   transcript, adaptive/concurrent composition, partition mixture, and raw
   pullback. Witness: only one block/list changes and there is one finite
   two-component composition.
7. `step_012`-`step_013`: make the SOA restriction-empty contradiction and
   the pathwise inclusion (I.3) fully measure-theoretic, then prove (I.4)
   and the finite multiplicity inequality. Likely units: actual-leaf
   identity, empirical-error lemma, marked event-inclusion lemma, fixed
   candidate holdout lemma, and confidence assembly proposition. Witness:
   exact function identity, `n_0`-irreducibility, and iid complement; no
   independence is claimed after conditioning on `J`.
8. `step_014`: eliminate every auxiliary with explicit inequalities and
   unify the logarithmic exponent `q`; separately prove the small-`delta`
   sequence implication. Witness: (J.1)-(J.3) and the primitive schedule.
9. `step_015`: carry out the entire old-arm wrapper with its own parameters,
   event, mark, privacy proof, PAC reconstruction, and rate elimination.
   Likely units mirror the new-arm interfaces but use the coarse `d` trace.
   Witness: the source old block/teacher scales and parameter-uniform quotient
   bridges.
10. `step_016`: state the finite exponential-mechanism kernel, prove (L.2)
    including normalization/DP constants, and form one common-envelope
    minimum with every baseline clause. Witness: realizable score zero,
    finite multiplicity, and completed earlier arms.

These are local derivation obligations only. Each target, input, defect
class, quantitative scale, mechanism source, and consumer is fixed by the
accepted sketch, so no step is being asked to invent a new theorem-facing
interface.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof
evidence, a cited result, an assumption source, or authority to change any
accepted sketch-step claim, dependency, assumption, output target,
generated-output flow, mechanism source, theorem scope, rate, or conclusion.
Every local unit and every cited-result application above must be proved or
independently discharged in its assigned `/proof-step` and accepted by the
corresponding step review before assembly.

## Suggested Routing

None

Continue with all sixteen proof steps in accepted dependency order. As
diagnostic guidance, prioritize `/proof-step step_008` after its dependencies
are accepted, because the exact source-stage endpoint, half-scale pairing,
and same-function SOA interface are the highest-risk citation/convention
bridge; then prioritize `step_013`, whose mark-free pathwise inclusion is the
key population-utility bridge.
