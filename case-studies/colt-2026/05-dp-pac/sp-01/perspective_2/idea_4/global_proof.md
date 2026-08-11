# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_4`
- Global producer unit attempt: 2
- Sketch attempt: 1
- Binding setting: `perspective_2/idea_4/setting.md`
- Binding setting SHA-256: `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Reviewed sketch: `perspective_2/idea_4/proof_sketch.md`
- Reviewed sketch SHA-256: `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Reviewed sketch review: `perspective_2/idea_4/proof_sketch_review.md`
- Reviewed sketch-review SHA-256: `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Triggering global-proof review: `perspective_2/idea_4/global_proof_review.md`
- Triggering global-proof-review SHA-256: `0ffdf7e2a917a4d33774dba38ad3c75887ddbb6fdb58ccb4f9e8352b2d150939`
- Triggering global-proof-review status and target: `REVISE_GLOBAL`, `/global-proof`
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

This arm uses the static quotient, raw-neighbor, risk, and countable-kernel
interfaces from Blocks B-C, but it has its own data-independent parameters,
partition, restrictions, lists, transcript, mark, confidence ledger, and
rate elimination. It consumes no event or success conclusion from Blocks
D-J. For \(d=0\) it uses the shared deterministic zero-sample singleton law.
Assume throughout the rest of this block that \(d\geq1\).

Use a separate old-arm copy of every confidence and privacy allocation:
\[
 \begin{gathered}
 \gamma_{\mathrm o}=\alpha/16,\qquad
 \beta_{\mathrm{tr,o}}=\beta_{\mathrm{AT,o}}
 =\beta_{\mathrm{SS,o}}=\beta_{\mathrm{gen,o}}=\beta/4,\\
 \delta_{\mathrm{AT,o}}=\delta_{\mathrm{SS,o}}=\delta/2,\qquad
 g_\delta=\log(4/\delta),\\
 \eta_{\mathrm o}
 =\frac{\varepsilon}{4c_{\mathrm{AT}}
 (\sqrt{g_\delta}+g_\delta)},\qquad
 \varepsilon_{\mathrm{SS,o}}=\varepsilon/8.
 \end{gathered} \tag{K.1}
\]
For every integer \(t\geq2\), define
\[
 \begin{gathered}
 a_{\mathrm o}(t)=d+\log(4t/\beta),\qquad
 Q_{\mathrm o}(t)=e+\frac{etd^2a_{\mathrm o}(t)}{\alpha d},\\
 m_{\mathrm o}(t)=\left\lceil
 C_{\mathrm o}\frac{d^2}{\alpha}a_{\mathrm o}(t)
 \log Q_{\mathrm o}(t)\right\rceil,\qquad
 n_{\mathrm o}(t)=t m_{\mathrm o}(t),\\
 p_{\mathrm o,r}(t)=2^r n_{\mathrm o}(t)d\quad(0\leq r\leq d),
 \qquad L_{\mathrm o}(t)=p_{\mathrm o,d}(t)^d2^{d^2}.
 \end{gathered} \tag{K.2}
\]
The old source-privacy and effective-range thresholds are fixed explicitly
by
\[
 \begin{gathered}
 B_{\mathrm o}(t)=\left\lceil
 \frac{10\log(L_{\mathrm o}(t)/\delta_{\mathrm{SS,o}})}
 {\varepsilon_{\mathrm{SS,o}}}\right\rceil,\\
 \tau_{\mathrm{AT,o}}
 =\eta_{\mathrm o}^{-1}\log((d+1)/\beta_{\mathrm{AT,o}}),\qquad
 \tau_{\mathrm{SS,o}}(t)
 =\varepsilon_{\mathrm{SS,o}}^{-1}
 \log((tL_{\mathrm o}(t)+1)/\beta_{\mathrm{SS,o}}).
 \end{gathered} \tag{K.3}
\]
Choose the old teacher count without reference to the VC arm:
\[
 \begin{aligned}
 k_{\mathrm o}
 &=\min\left\{t\geq2:
  t/2-\tau_{\mathrm{AT,o}}
  \geq B_{\mathrm o}(t)+\tau_{\mathrm{SS,o}}(t)+2\right\},\\
 \bar k_{\mathrm o}
 &=\left\lceil C_{\mathrm{teach,o}}
 \frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}
 \right\rceil.
 \end{aligned} \tag{K.4}
\]
Here and below \(\Lambda\) has the arguments in the theorem claim. Directly
from (K.2), with ceilings retained,
\[
 \log\bar k_{\mathrm o}+\log m_{\mathrm o}(\bar k_{\mathrm o})
 +\log Q_{\mathrm o}(\bar k_{\mathrm o})\leq C_0\Lambda^2,
 \qquad
 \log L_{\mathrm o}(\bar k_{\mathrm o})\leq C_1d^2\Lambda^2. \tag{K.5}
\]
Indeed, \(Q_{\mathrm o}\) contains every nonconstant factor of the block
size except one additional factor \(d\), whose logarithm is already in
\(\Lambda\), while
\(\log L_{\mathrm o}=d\log p_{\mathrm o,d}+d^2\log2\).
Consequently, (K.5) and a universally large
\(C_{\mathrm{teach,o}}\) give
\[
 B_{\mathrm o}(\bar k_{\mathrm o})
 +\tau_{\mathrm{SS,o}}(\bar k_{\mathrm o})
 +\tau_{\mathrm{AT,o}}
 \leq C_2\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}
 \leq\bar k_{\mathrm o}/2-2. \tag{K.6}
\]
Thus the set in (K.4) is nonempty and
\(2\leq k_{\mathrm o}\leq\bar k_{\mathrm o}\). Put
\[
 \begin{gathered}
 a_{\mathrm o}=a_{\mathrm o}(k_{\mathrm o}),\quad
 Q_{\mathrm o}=Q_{\mathrm o}(k_{\mathrm o}),\quad
 m_{\mathrm o}=m_{\mathrm o}(k_{\mathrm o}),\quad
 n_{\mathrm o}=k_{\mathrm o}m_{\mathrm o}
 =N_{\mathrm o}=N_{\mathrm{old}},\\
 p_{\mathrm o,r}=p_{\mathrm o,r}(k_{\mathrm o}),\quad
 L_{\mathrm o}=L_{\mathrm o}(k_{\mathrm o}),\quad
 B_{\mathrm o}=B_{\mathrm o}(k_{\mathrm o}),\quad
 \tau_{\mathrm{SS,o}}=\tau_{\mathrm{SS,o}}(k_{\mathrm o}).
 \end{gathered} \tag{K.7}
\]

Totalize the old quotient procedure separately on the countable discrete
input \(Z_Q^{N_{\mathrm o}}\), using fixed decompositions and list orderings
for identical local old-block states. Its pointwise law is therefore a
Markov kernel \(K_{\mathrm o}\) on \(H_C\), and its raw pullback is
\[
 A_{\mathrm o,N_{\mathrm o}}(s,E)
 :=K_{\mathrm o}(T_{N_{\mathrm o}}(s),E). \tag{K.8}
\]
Block B makes (K.8) measurable, transfers equal-or-replace-one neighbors,
and gives exact decoded risk; none of these conclusions is supplied by Lyu
Theorem 3 or Corollary 5.1.

Draw the old master sample and an independent uniform partition into
\(k_{\mathrm o}\) blocks. For one fixed old error trace, write
\(\mu=e_{\bar S_{\mathrm o}}(h)\),
\(\widehat\mu_i=e_{\bar S_{\mathrm o,i}}(h)\), and
\(\xi_d=1/(5d)\). Define \(E_{\mathrm{good,o}}\) by the simultaneous clauses
\[
 \widehat\mu_i\in
 \begin{cases}
 [(1-\xi_d)\mu,(1+\xi_d)\mu],&\mu>\gamma_{\mathrm o}/3,\\
 [0,\gamma_{\mathrm o}/2],&\mu\leq\gamma_{\mathrm o}/3,
 \end{cases}
 \quad\text{for every old trace and block }i. \tag{K.9}
\]
For the high branch, the active Lyu Proposition 2 gives the first line
below. For the near-zero branch, the current-notation without-replacement
mgf comparison, not the proposition, gives the second line:
\[
\begin{aligned}
\Pr(|\widehat\mu_i-\mu|>\xi_d\mu\mid\bar S_{\mathrm o})
&\leq2e^{-m_{\mathrm o}\mu/(75d^2)}
\leq2e^{-c_3m_{\mathrm o}\alpha/d^2}
\qquad(\mu>\gamma_{\mathrm o}/3),\\
\Pr(\widehat\mu_i\geq\gamma_{\mathrm o}/2\mid\bar S_{\mathrm o})
&\leq e^{-m_{\mathrm o}D(\gamma_{\mathrm o}/2\Vert\mu)}
\leq e^{-c_4m_{\mathrm o}\gamma_{\mathrm o}}
\qquad(0\leq\mu\leq\gamma_{\mathrm o}/3).
\end{aligned} \tag{K.10}
\]
The two displayed domains are disjoint, assign
\(\mu=\gamma_{\mathrm o}/3\) to the second line, and exhaust all
\(\mu\in[0,1]\); at \(\mu=0\) the second failure event is empty.
Sauer--Shelah with the coarse bound
\(\operatorname{VC}(\bar C)\leq d\) now yields
\[
 \Pr(E_{\mathrm{good,o}}^c\mid\bar S_{\mathrm o})
 \leq4k_{\mathrm o}
 \left(\frac{en_{\mathrm o}}d\right)^d
 e^{-c_{\mathrm{tr}}m_{\mathrm o}\alpha/d^2}. \tag{K.11}
\]
The ceiling in (K.2) is at most twice its unrounded term, so
\[
 \begin{gathered}
 \frac{en_{\mathrm o}}d
 \leq\frac{2eC_{\mathrm o}k_{\mathrm o}d
 a_{\mathrm o}\log Q_{\mathrm o}}\alpha
 \leq2C_{\mathrm o}Q_{\mathrm o}\log Q_{\mathrm o},\\
 \log(en_{\mathrm o}/d)\leq C_5\log Q_{\mathrm o},\\
 \frac{c_{\mathrm{tr}}m_{\mathrm o}\alpha}{d^2}
 -\log(4k_{\mathrm o})-d\log(en_{\mathrm o}/d)
 \geq\log(1/\beta_{\mathrm{tr,o}}).
 \end{gathered} \tag{K.12}
\]
The last inequality follows for one universal choice of \(C_{\mathrm o}\)
because \(a_{\mathrm o}\geq d+\log(4k_{\mathrm o}/\beta)\): its \(d\)
term pays the trace multiplicity \(d\log(en_{\mathrm o}/d)\), and its
logarithmic term pays both
\(\log(4k_{\mathrm o})\) and
\(\log(1/\beta_{\mathrm{tr,o}})\).
Integrating (K.11) therefore charges exactly
\(\Pr(E_{\mathrm{good,o}}^c)\leq\beta_{\mathrm{tr,o}}\).

Define the endpoint that is absent from the source's pre-algorithm display
and record the old current/source half-scale map:
\[
 \begin{gathered}
 H_{\mathrm o,i,\mathrm{src}}^s
 =\{h\in\bar C:e_{\bar S_{\mathrm o,i}}(h)
 \leq\rho^s\gamma_{\mathrm o}\},\quad s=1,\ldots,d+1,\\
 p_{\mathrm o,s,\mathrm{src}}=2^sn_{\mathrm o}d,\qquad
 H_{\mathrm o,i}^r=H_{\mathrm o,i,\mathrm{src}}^{r+1},\qquad
 p_{\mathrm o,r}=\tfrac12p_{\mathrm o,r+1,\mathrm{src}},
 \quad r=0,\ldots,d.
 \end{gathered} \tag{K.13}
\]
On \(E_{\mathrm{good,o}}\), for \(r<d\) and every choice of \(i_*\), the
exact inclusion and its two constant checks are
\[
 H_{\mathrm o,i_*}^{r+1}\subseteq
 \bigcap_{i=1}^{k_{\mathrm o}}H_{\mathrm o,i}^r,
 \qquad \rho^d\geq\tfrac12,
 \qquad \frac{1+\xi_d}{1-\xi_d}\rho\leq1. \tag{K.14}
\]
The first inequality uses the low clause of (K.9) when the master error is
at most \(\gamma_{\mathrm o}/3\), and otherwise transfers through the lower
bound on block \(i_*\) and the upper bound on block \(i\). Thus Lyu Lemma
4.3 is invoked only with
\((\mathcal G,\mathcal H)=(H_{\mathrm o,i_*}^{r+1},H_{\mathrm o,i}^r)\)
and the exact pair
\((2p,p)=(p_{\mathrm o,r+1},p_{\mathrm o,r})\).

For each nonempty old restriction fix an optimal
\((p_{\mathrm o,r},d)\)-decomposition and its actual essential-SOA list
\(\mathcal L_{\mathrm o,i}^r\). Lyu Lemma 4.1, Definitions 4.2-4.3, and
Corollary 4.1 give
\[
 |\mathcal L_{\mathrm o,i}^r|
 \leq p_{\mathrm o,r}^d2^{d^2}\leq L_{\mathrm o},
 \qquad
 p_{\mathrm o,r}2^{d-t}\geq p_{\mathrm o,0}=n_{\mathrm o}d
 \geq\max\{n_{\mathrm o},d+1\}. \tag{K.15}
\]
Empty arbitrary-input restrictions have the fixed empty-list path and are
never passed to a nonempty-class source statement.

Set
\[
 q_{\mathrm o,r}=\max_{h\in H_C}
 |\{i:h\in\mathcal L_{\mathrm o,i}^r\}|,\qquad
 M_{\mathrm o,r}=\max_i
 \operatorname{DDim}_{p_{\mathrm o,r},d}(H_{\mathrm o,i}^r).
\]
If \(q_{\mathrm o,r}<k_{\mathrm o}\), choose \(i_*\) maximizing the
next-stage DDim. Then (K.14) and Lemma 4.3 first give
\(M_{\mathrm o,r+1}\leq M_{\mathrm o,r}\). Equality would force the SOA
of a top-dimensional leaf of an arbitrary optimal next decomposition to
occur at a top-dimensional leaf of every arbitrary optimal current
decomposition. That same actual function would then be essential in every
old current list, contradicting \(q_{\mathrm o,r}<k_{\mathrm o}\). Hence
\[
 q_{\mathrm o,r}<k_{\mathrm o}
 \quad\Longrightarrow\quad
 M_{\mathrm o,r+1}\leq M_{\mathrm o,r}-1. \tag{K.16}
\]
If \(M_{\mathrm o,r}=0\), Corollary 4.1 Item 4 identifies each essential
list with its restriction; realizability puts \(\bar c\) in all of them, so
\(q_{\mathrm o,r}=k_{\mathrm o}\). Since
\(0\leq M_{\mathrm o,0}\leq d\), the unit-drop reserve in (K.16) proves
\[
 \max_{0\leq r\leq d}q_{\mathrm o,r}=k_{\mathrm o}. \tag{K.17}
\]
This is a finite monotone-potential argument with zero additive forcing,
not an imported success event.

Run one old AboveThreshold transcript at threshold \(k_{\mathrm o}/2\).
On its simultaneous noise event \(E_{\mathrm{AT,o}}\), whose complement has
probability at most \(\beta_{\mathrm{AT,o}}\), every reported Below and
the selected stage \(r_{\mathrm o,*}\) satisfy
\[
\begin{gathered}
\text{reported Below}\ \Longrightarrow\quad
q_{\mathrm o,r}<k_{\mathrm o}/2+\tau_{\mathrm{AT,o}}<k_{\mathrm o},\\
 q_{\mathrm o,r_{\mathrm o,*}}
 \geq k_{\mathrm o}/2-\tau_{\mathrm{AT,o}}
 \geq B_{\mathrm o}+\tau_{\mathrm{SS,o}}+2.
 \end{gathered} \tag{K.18}
\]
Thus (K.16) applies after each good-noise Below, and the score-
\(k_{\mathrm o}\) stage from (K.17) is detected. The active Sparse Sample
law has failure-symbol weight \(e^{\varepsilon_{\mathrm{SS,o}}B_{\mathrm o}}\)
and an actual item of weight at least
\(e^{\varepsilon_{\mathrm{SS,o}}q_{\mathrm o,r_{\mathrm o,*}}}\). Therefore
the direct utility calculation, rather than a commented source claim, is
\[
 \Pr(\perp\mid\text{old selected lists})
 \leq e^{-\varepsilon_{\mathrm{SS,o}}
 (q_{\mathrm o,r_{\mathrm o,*}}-B_{\mathrm o})}
 \leq\frac{\beta_{\mathrm{SS,o}}}{k_{\mathrm o}L_{\mathrm o}+1}
 \leq\beta_{\mathrm{SS,o}}. \tag{K.19}
\]
Let \(E_{\mathrm{SS,o}}\) be the event that Sparse Sample returns an actual
old list item. Outside the two charged mechanism failures,
\(\bar H_{\mathrm o}\in\mathcal L_{\mathrm o,i}^{r_{\mathrm o,*}}\) for at
least one \(i\).

Privacy is independent of every event above. For a fixed old partition,
one raw replacement changes either no quotient record or one record in one
old block \(i_0\). The fixed local lookup makes all lists with
\(i\ne i_0\) identical at every stage, so each adaptive maximum-occurrence
query has sensitivity one and, for every fixed transcript-selected stage,
the Sparse Sample input has one-list replacement adjacency. Lyu Lemma 3.2
with (K.1) costs at most
\((\varepsilon/4,\delta_{\mathrm{AT,o}})\); Lyu Lemma 3.1, (K.3), and
\(2\varepsilon_{\mathrm{SS,o}}=\varepsilon/4\) cost at most
\((\varepsilon/4,\delta_{\mathrm{SS,o}})\). Adaptive composition, terminal
postprocessing, and mixing over the common independent partition give
\[
 (\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)
 =(\varepsilon/2,\delta)\preceq(\varepsilon,\delta). \tag{K.20}
\]
This holds for every labeled input, including nonrealizable data, empty
restrictions, different stopping stages, \(\perp\), exhaustion, and fallback;
(K.8) and Block B transfer it exactly to raw replace-one neighbors.

On \(E_{\mathrm{good,o}}\cap E_{\mathrm{AT,o}}\cap E_{\mathrm{SS,o}}\),
the actual output has the exact source identity
\(\bar H_{\mathrm o}=\operatorname{SOA}_{\mathcal G}\) for a maximal leaf
\(\mathcal G\subseteq H_{\mathrm o,i}^{r_{\mathrm o,*}}\). By (K.15) it is
both \(n_{\mathrm o}\)- and \((d+1)\)-irreducible. Every
\(g\in\mathcal G\) has old-master empirical error at most
\(2\gamma_{\mathrm o}\): use the low clause of (K.9), or the high-clause
lower bound on the producer block and membership in the restriction. If the
SOA had larger error, every \(g\in\mathcal G\) would disagree with it on at
least one old-master record, making the restriction along the complete
SOA-labeled sequence empty, contrary to \(n_{\mathrm o}\)-irreducibility.
Thus
\[
 \bar H_{\mathrm o}=\operatorname{SOA}_{\mathcal G},\qquad
 e_{\bar S_{\mathrm o}}(\bar H_{\mathrm o})
 \leq2\gamma_{\mathrm o}=\alpha/8. \tag{K.21}
\]
Lyu Theorem 3's proof supplies this contradiction pattern, but neither its
malformed displayed output nor its unproved probability-one sentence is
used.

Construct the old mark from the old joint internal-state/output law
\(R_{\mathrm o,\bar s}(d\omega,dh)\). On an actual path let
\(I_{\mathrm o,\bar s,\omega}(h)\) be the nonempty set of blocks whose
all-stage old union contains \(h\), and put
\(w_{\mathrm o,i}=\mathbf1\{i\in I_{\mathrm o}\}/|I_{\mathrm o}|\); put all
fallback weight at mark \(0\). Then
\[
 \begin{aligned}
 \widetilde K_{\mathrm o}(\bar s,E\times\{i\})
 &=\int\mathbf1_E(h)w_{\mathrm o,i}(\bar s,\omega,h)
 \,R_{\mathrm o,\bar s}(d\omega,dh),\\
 \sum_{i=0}^{k_{\mathrm o}}
 \widetilde K_{\mathrm o}(\bar s,E\times\{i\})
 &=K_{\mathrm o}(\bar s,E).
 \end{aligned} \tag{K.22}
\]
Countability of the old quotient input and finiteness of the mark make this
a kernel. Equation (K.22) proves exact released-output and privacy
invariance.

For fixed block \(i\), define the producer-local union and the old core by
\[
 \mathcal G_{\mathrm o,i}(\bar S_{\mathrm o,i})
 =\bigcup_{r=0}^d\mathcal L_{\mathrm o,i}^r,\qquad
 |\mathcal G_{\mathrm o,i}|\leq(d+1)L_{\mathrm o},\qquad
 \mathsf{Core}_{\mathrm o}
 =E_{\mathrm{good,o}}\cap E_{\mathrm{AT,o}}
 \cap E_{\mathrm{SS,o}}. \tag{K.23}
\]
The first object depends only on the \(m_{\mathrm o}\) records in block
\(i\); the random partition is conditioned on before this locality is used.
On \(\mathsf{Core}_{\mathrm o}\) and \(J_{\mathrm o}=i\), (K.21) gives
\[
 \widehat{\operatorname{err}}_{\mathrm o,-i}(\bar H_{\mathrm o})
 \leq\frac{n_{\mathrm o}}{n_{\mathrm o}-m_{\mathrm o}}\frac\alpha8
 =\frac{k_{\mathrm o}\alpha}{8(k_{\mathrm o}-1)}
 \leq\frac\alpha4. \tag{K.24}
\]
Before conditioning on the mark or on block data, the required pathwise
inclusion is
\[
 \begin{aligned}
 &\{\mathsf{Core}_{\mathrm o},\ J_{\mathrm o}=i,
   \operatorname{err}_{\bar D}(\bar H_{\mathrm o},\bar c)>\alpha\}\\
 &\quad\subseteq
 \bigcup_{h\in\mathcal G_{\mathrm o,i}(\bar S_{\mathrm o,i}):
                 \operatorname{err}_{\bar D}(h,\bar c)>\alpha}
 \{\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\leq\alpha/4\}.
 \end{aligned} \tag{K.25}
\]
Only after (K.25) do we condition on the producer block. Every candidate is
then fixed, while the \((k_{\mathrm o}-1)m_{\mathrm o}\) complement records
are iid and independent. For population error \(p>\alpha\),
\[
 \Pr[\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\leq\alpha/4]
 \leq e^{-9\alpha(k_{\mathrm o}-1)m_{\mathrm o}/32}. \tag{K.26}
\]
The old finite multiplicity is absorbed by a displayed comparison:
\[
 \begin{aligned}
 \log\frac{k_{\mathrm o}(d+1)L_{\mathrm o}}
 {\beta_{\mathrm{gen,o}}}
 &\leq C_6d\,a_{\mathrm o}\log Q_{\mathrm o},\\
 \frac9{32}\alpha(k_{\mathrm o}-1)m_{\mathrm o}
 &\geq\frac{9C_{\mathrm o}}{32}(k_{\mathrm o}-1)
 d^2a_{\mathrm o}\log Q_{\mathrm o}
 \geq\log\frac{k_{\mathrm o}(d+1)L_{\mathrm o}}
 {\beta_{\mathrm{gen,o}}}.
 \end{aligned} \tag{K.27}
\]
Here the first line follows from
\(\log L_{\mathrm o}=d\log p_{\mathrm o,d}+d^2\log2\),
\(\log p_{\mathrm o,d}\leq C\log Q_{\mathrm o}+d\log2\), and
\(a_{\mathrm o}\geq d+\log(4k_{\mathrm o}/\beta)\); the final inequality
is enforced by the same sufficiently large universal \(C_{\mathrm o}\)
already used in (K.12). Thus that single lower bound on \(a_{\mathrm o}\)
closes both the trace confidence charge and the marked multiplicity charge.
Summing (K.25) over marks and candidates, using
(K.22), (K.26), and (K.27), and then applying Block B's exact risk identity
gives the independent old-arm confidence ledger
\[
 \Pr[\operatorname{err}_{D}
 (\operatorname{Dec}_C(\bar H_{\mathrm o}),c)>\alpha]
 \leq\beta_{\mathrm{tr,o}}+\beta_{\mathrm{AT,o}}
 +\beta_{\mathrm{SS,o}}+\beta_{\mathrm{gen,o}}=\beta. \tag{K.28}
\]

It remains to eliminate the old auxiliaries, including ceilings. Since the
unrounded block term in (K.2) exceeds one and
\(k_{\mathrm o}\leq\bar k_{\mathrm o}\), (K.4)-(K.7) imply, for universal
constants,
\[
 \begin{gathered}
 k_{\mathrm o}\leq C_7
 \frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon},
 \qquad a_{\mathrm o}\leq C_8d\Lambda^2,\\
 \log Q_{\mathrm o}\leq C_9\Lambda^2,
 \qquad m_{\mathrm o}\leq C_{10}\frac{d^3}{\alpha}\Lambda^4.
 \end{gathered} \tag{K.29}
\]
Multiplying the actual teacher and block counts yields
\[
 N_{\mathrm o}
 \leq K_{\mathrm o}\Lambda^{q_{\mathrm o}}
 \left\{
 \frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
 +\frac{d+\log(1/\beta)}\alpha
 \right\}
 =K_{\mathrm o}\Lambda^{q_{\mathrm o}}R_{\mathrm{old}}. \tag{K.30}
\]
Equations (K.8), (K.20), (K.22), (K.28), and (K.30) are the complete
common-interface old arm. They hold for every finite allowed
\(0<\delta<1\); no asymptotic condition is needed for the kernel, privacy,
PAC, or rate theorem. Only the additional source-facing conclusion
\(N_{\mathrm o}\delta\to0\) requires the old-arm schedule
\[
 \delta K_{\mathrm o}\Lambda^{q_{\mathrm o}}R_{\mathrm{old}}
 \longrightarrow0
 \quad\Longrightarrow\quad N_{\mathrm o}\delta\longrightarrow0. \tag{K.31}
\]
At fixed positive \(\delta\), (K.30) remains a valid theorem bound, while
(K.31) is not asserted.

### Block L: finite-class arm, common minimum, and baselines (`step_016`)

Let \(M=|C|<\infty\). By Block B, \(|\bar C|=M\). On a quotient sample
define \(M_{\bar S}(h)\) to be its mistake count and release \(h\in\bar C\)
with probability proportional to
\[
 \exp\{-\varepsilon M_{\bar S}(h)/2\}. \tag{L.1}
\]
Replacing one record changes every score by at most one; the usual numerator
and normalizer comparison proves pure \(\varepsilon\)-DP. For a realizable
target \(\bar c\), its weight is one, so for a fixed hypothesis of population
error \(p>\alpha\),
\[
 \begin{aligned}
 \Pr(\bar H=h)
 &\leq\mathbb E\exp\{-\varepsilon M_{\bar S}(h)/2\}\\
 &=(1-p+pe^{-\varepsilon/2})^N
 \leq\exp\{-Np(1-e^{-\varepsilon/2})\}
 \leq e^{-N\varepsilon\alpha/4},
 \end{aligned} \tag{L.2}
\]
where \(1-e^{-\varepsilon/2}\geq\varepsilon/4\) for
\(0<\varepsilon\leq1\). A union over \(M\) hypotheses proves PAC utility for
\(N\geq4(\log M+\log(1/\beta))/(\varepsilon\alpha)\), which is bounded by
the displayed
\(K_{\mathrm{fin}}\Lambda^{q_{\mathrm{fin}}}R_{\mathrm{fin}}\).
This direct calculation also shows why any separate finite-class sampling
term is dominated when \(\varepsilon\leq1\). The law is a finite quotient
kernel, its raw pullback is private by (B.3), and its raw risk is exact by
(B.4). If \(C\) is infinite, this arm is assigned \(+\infty\); no empirical
finite surrogate is introduced.

The three thresholds now concern complete learners with the same output
space \(H_C\), decoder, adjacency, risk, and confidence mode. Put
\(K_*:=\max\{K_{\mathrm{fin}},K_{\mathrm o},K\}\) and
\(q_*:=\max\{q_{\mathrm{fin}},q_{\mathrm o},q\}\). Since
\(\Lambda\geq1\) and sample complexity is an infimum over valid learners,
choosing the arm with the least certified threshold gives, for every
allowed \(0<\delta<1\),
\[
 \begin{aligned}
 m_C
 &\leq\min\bigl\{
 K_{\mathrm{fin}}\Lambda^{q_{\mathrm{fin}}}R_{\mathrm{fin}},
 K_{\mathrm o}\Lambda^{q_{\mathrm o}}R_{\mathrm{old}},
 K\Lambda^qR_{\mathrm{VC}}\bigr\}\\
 &\leq K_*\Lambda^{q_*}
 \min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}.
 \end{aligned} \tag{L.3}
\]
This finite-parameter minimum is valid without an asymptotic restriction on
\(\delta\). The source-facing class-complexity shorthand is stated only on
the declared scheduled-\(\delta\) sequences: fixed positive \(\delta\) is
not called \(\delta\ll1/N\), and if the old arm itself must satisfy
\(N_{\mathrm o}\delta\to0\), its separate condition is exactly (K.31).
The other baseline traces are exact: \(d=0\) uses the same zero-sample law
in all arms; \(v=d\) makes \(vd^4=d^5\); the old arm remains available for
infinite classes; and only the finite arm is disabled there.

### Final assembly

Blocks A-C define the exact learner and its raw kernel. Blocks D-F derive the
finite source-good structure and force a score-(k) stage. Block G produces
an actual item and proves all-input privacy. Blocks H-I give the exact
empirical identity and an unconditional population guarantee through the
pathwise marked inclusion. Block J eliminates the new-arm auxiliaries.
Block K independently produces its old kernel, raw privacy, exact marked
projection, PAC ledger, and ceiling-aware rate tuple in (K.8), (K.20),
(K.22), (K.28), and (K.30). Block L produces the finite arm and only then
takes the explicit finite-parameter minimum (L.3). These implications close
the theorem-level architecture under the accepted sketch. What remains is
formal step-local proof production and review of the hard derivations
identified below; no new theorem-facing assumption, generated output,
dependency, or target bridge is needed.

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
| K. Old arm | Independently certifies the quotient-first `d^5` baseline | `step_015` | B, C | All four primitive assumptions | Formalize the independent parameter/event chain (K.1)-(K.12), source/DDim chain (K.13)-(K.17), mechanism/privacy chain (K.18)-(K.20), SOA/marked-PAC chain (K.21)-(K.28), and ceiling-aware rate/schedule chain (K.29)-(K.31); step-local |
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
| `step_015` | Block K | Feeds L | Prove the old feasible tuple and trace charge (K.1)-(K.12), exact source support (K.13)-(K.17), actual output and all-input privacy (K.18)-(K.20), exact SOA/mark/PAC ledger (K.21)-(K.28), and rate/schedule elimination (K.29)-(K.31) | Every old output has its own producer; no VC-arm event, success, or rate conclusion is borrowed |
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
| VC-arm kernel/DP/PAC/rate tuple | Derived public interface | J / `step_014`, consuming B, G, I | L and final minimum | Produced before comparison |
| Old-arm kernel/DP/PAC/rate tuple | Derived public interface | K / `step_015`: (K.8), (K.20), (K.22), (K.28), and (K.30), with (K.31) only for the separate schedule | L and final minimum | Independent old dictionary, event, source, mechanism, mark, and confidence producers are explicit |
| Finite-arm kernel/DP/PAC/rate tuple and common minimum | Derived public interface | L / `step_016`, consuming B-C, J, and K | Final theorem | (L.3) compares only completed laws and is valid for every allowed finite \(\delta\) |

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

For the old arm specifically, neither Lyu Theorem 3 nor Corollary 5.1
provides raw-input measurability, the near-zero concentration clause, a
marked high-confidence PAC conversion, or the current all-input quotient
privacy wrapper. Those outputs instead have current-notation producers:
(K.8) supplies the measurable raw pullback, the second line of (K.10)
supplies the near-zero tail, (K.20) supplies every-input raw privacy, and
(K.22) together with the core-qualified inclusion and ledger
(K.25)-(K.28) supplies marked high-confidence PAC. The citations provide
only the source structural identities, mechanism lemmas, empirical
contradiction pattern, and \(d^5\) rate lineage recorded in the table.

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
  `a,Q,m,k,L,B`; and the independently produced old quantities in
  (K.1)-(K.7). Every one has a producer in A, D, or K.
- VC-arm specialization: (J.1)-(J.3) retain the positive powers `d^4` and
  `v`, `1/(epsilon alpha)`, and `log(1/(delta beta))`; only displayed-parameter
  logarithms enter `Lambda^q`. The additive nonprivate term is dominated in
  the positive branch and remains written in `R_VC`.
- Old-arm specialization: the least-feasible teacher and its witness are
  (K.4)-(K.7); the trace fixed point is closed by (K.12); and the independent
  marked multiplicity is closed by (K.27). The ceiling-aware envelopes in
  (K.29) multiply to (K.30), exposing exactly the coarse block scale
  `tilde O(d^3/alpha)`, teacher scale
  `tilde O(d^2 log(1/(delta beta))/epsilon)`, and hence the displayed
  `d^5` term. No VC-arm event, output, confidence charge, or rate is used.
- Finite-arm specialization: (L.2) exposes
  `(log^+|C|+log(1/beta))/(epsilon alpha)`; any separate finite sampling term
  is dominated because `epsilon <= 1`, and the setting retains its displayed
  `log(1/beta)/alpha` term.
- Probability conversion: (D.5), the two mechanism tails, and (I.5) are the
  exact four VC-arm `beta/4` charges; independently, (K.12),
  (K.18)-(K.19), and (K.25)-(K.28) are the four old-arm charges. No
  phrase-level absorption substitutes for either ledger.
- Small-`delta` obligation: the VC-arm implication `N delta -> 0` follows
  only from `delta K Lambda^q R_VC -> 0`. The old kernel, DP, PAC, and
  rate conclusions in (K.8), (K.20), (K.28), and (K.30), and the
  finite-parameter minimum (L.3), are valid for every allowed
  \(0<\delta<1\). Only an additional old-arm assertion
  \(N_{\mathrm o}\delta\to0\) uses the separate schedule (K.31). Fixed
  positive \(\delta\) is never presented as source-compatible
  \(\delta\ll1/N\) asymptotics.
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
| Old parameter, kernel, and trace-event closure | Deterministic feasibility, measurable generated law, and confidence event | One independent old run for every allowed tuple; \(d=0\) bypass | (K.1)-(K.8) and (K.9)-(K.12) | Linear teacher margin and exponent \(c_{\mathrm{tr}}m_{\mathrm o}\alpha/d^2\) | List/noise logs, ceilings, trace multiplicity, and high/near-zero boundary | One deterministic fixed point and one finite trace/block union; tower integrates the conditional bound; no VC event is accumulated | Structural upper comparison and finite union | Primitive parameter/quotient assumptions; Lyu Proposition 2 only for \(\mu>\gamma_{\mathrm o}/3\); direct mgf/KL for \(0\leq\mu\leq\gamma_{\mathrm o}/3\); \(d=0\) uses the singleton law | The cited relative tail has only high-mean content; the direct KL bound supplies the required one-sided near-zero content | (K.8) uses exactly \(H_C,T_N,\operatorname{Dec}_C\); (K.9)-(K.12) use the same old empirical errors; zero target residual | step-local | Candidate dictionaries precede least \(k_{\mathrm o}\); the kernel precedes its events; traces precede the union | \(d=0\) is stationary; \(d\geq1,k_{\mathrm o}\geq2\) activates; \(\mu=0\) makes failure empty | (K.6) closes feasibility and (K.12) makes \(a_{\mathrm o}\) pay trace multiplicity and confidence | Four primitive assumptions | Old dictionary, kernel, partition, traces, and \(E_{\mathrm{good,o}}\) | \(d=1\), \(k_{\mathrm o}=2\), mean zero, repeated records, and fixed \(\delta\) pass | No measurable old learner or independently charged source event would be available |
| Old source map, lists, and DDim support | Cited-wrapper structural export and finite termination | Exactly \(d+1\) old stages on the quotient | Endpoint/map (K.13), inclusion/pair (K.14), list/irreducibility (K.15), and potential (K.16)-(K.17) | Exact \((2p,p)\) SOA equality, integer DDim reserve, and zero-DDim target support | Endpoint omission, half-scale shift, empty arbitrary-input restrictions, and equality case | Exact finite transitions with zero additive forcing; each no-common stage spends one unit from reserve at most \(d\) | Algebraic coupling, structural lower comparison, and monotone potential | (K.9); Lyu Definitions 4.2-4.3, Lemmas 4.1/4.3, and Corollary 4.1; empty restrictions are totalized | Lemma 4.3 has exact same-function equality content and Corollary 4.1 has the required zero-DDim support content | Actual quotient functions and scales transfer exactly; \(p_{\mathrm o,r+1}=2p_{\mathrm o,r}\) leaves zero residual | step-local | The event produces inclusion before decompositions; lists precede \(M_{\mathrm o,r},q_{\mathrm o,r}\); termination is derived | At \(M_{\mathrm o,0}=0\) target support is immediate; otherwise the first low stage spends one reserve unit | \(q_{\mathrm o,r}<k_{\mathrm o}\Rightarrow M_{\mathrm o,r+1}\leq M_{\mathrm o,r}-1\), while \(M_{\mathrm o,r}=0\Rightarrow q_{\mathrm o,r}=k_{\mathrm o}\) | Finite LDim and realizability | Old restrictions, decompositions, lists, DDim potential, and score-\(k_{\mathrm o}\) stage | Empty restriction, DDim zero, \(d=1\), and infinite \(C\) pass | No common actual item or finite successful stage would be certified |
| Old actual mechanism output and raw privacy | Generated selection output and theorem-facing privacy | One old AboveThreshold transcript, at most one Sparse Sample call, and every raw replace-one input | Selected-score and failure-symbol bounds (K.18)-(K.19); all-input composition (K.20) | Score-\(k_{\mathrm o}\) stage, teacher slack, one-block/list locality, and sensitivity-one queries | Laplace reports, \(\perp\) weight, adaptive stopping, transcript divergence, empty/exhaustion/fallback paths | Two finite confidence charges and one two-component privacy composition; no per-stage privacy accumulation | Structural lower/upper comparison and algebraic finite composition | Lyu Algorithms/Lemmas 3.1-3.2 plus (K.8), (K.15)-(K.18); privacy excludes utility events and realizability | The mechanisms have actual-selection weight and DP claim types; current locality supplies the missing raw-record map | Selected output is literally an old list member; quotient-to-raw privacy is exact under the same kernel | step-local | Source support and list locality precede the transcript; privacy is proved without assuming mechanism success | Empty first list cannot pass good noise; first score-\(k_{\mathrm o}\) stage is detected; every fallback remains total | \(q_{\mathrm o,r_*}\geq B_{\mathrm o}+\tau_{\mathrm{SS,o}}+2\), (K.19), and \((\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)\preceq(\varepsilon,\delta)\) | Raw adjacency and privacy/confidence parameters | Old lists, scores, selected transcript, and output | Immediate/last success, same-cell replacement, \(\perp\), exhaustion, and nonrealizable labels pass | Output could be fallback or pointwise DP could fail to lift to the raw kernel |
| Old SOA identity, marked reconstruction, and PAC ledger | Structural same-target certificate and generated population success | Old core paths followed by one finite producer/candidate union and iid complement | Exact SOA/error (K.21), marked projection/core (K.22)-(K.23), holdout/inclusion (K.24)-(K.25), and tail/ledger (K.26)-(K.28) | Actual leaf SOA and irreducibility; producer-local candidates; iid complement exponent | Adaptive output/stage/mark, factor \(k_{\mathrm o}/(k_{\mathrm o}-1)\), candidate multiplicity, and four confidence shares | One deterministic contradiction and one finite union; no conditioning on the mark supplies independence; no persistent defect | Structural lower/upper comparison and stopping/conditioning argument | Lyu Theorem 3 proof only for the empirical contradiction; current (K.22)-(K.27) supplies projection, locality, tail, and multiplicity | Irreducibility has the exact nonemptiness content; independent complement has the required lower-tail content | Same actual quotient function/target throughout; full-to-complement factor is at most two and decoded raw risk is exact | step-local | The core is produced before (K.25); pathwise inclusion precedes conditioning; projection precedes the final sum | Empirical-zero output already passes; \(k_{\mathrm o}=2\) leaves one block; fallback mark \(0\) lies outside the core | (K.24) gives \(\alpha/4\); (K.27) makes \(9\alpha(k_{\mathrm o}-1)m_{\mathrm o}/32\) dominate \(\log(k_{\mathrm o}(d+1)L_{\mathrm o}/\beta_{\mathrm{gen,o}})\) | Realizable iid data and quotient-risk identity | Old core, SOA output, mark, producer unions, and PAC event | Immediate/late selection, mark \(0\), repeated records, finite/infinite \(C\), and countable quotient pass | The adaptive output could not be reduced to fixed independent candidates, so no high-confidence arm would result |
| Old public rate and scheduled baseline | Quantitative specialization and baseline invariance | One fixed-sample arm for every \(0<\delta<1\); sequence assertion only under (K.31) | Ceiling envelopes (K.29), exact rate (K.30), and optional schedule (K.31) | Completed old kernel/DP/PAC tuple and explicit \(k_{\mathrm o},m_{\mathrm o}\) bounds | Ceilings, logarithmic envelopes, and possible confusion between fixed and scheduled \(\delta\) | One scalar multiplication and, separately, one sequence domination; no temporal accumulation | Structural upper comparison | Direct algebra from (K.4)-(K.7), (K.12), and (K.27); fixed positive \(\delta\) is excluded only from the optional source-facing limit | Controls have the exact exposed \(d^5/(\varepsilon\alpha)\) content and do not rely on Corollary 5.1 for wrappers | Same old sample, kernel, decoder, privacy, PAC mode, and risk; only allowed \(\Lambda\)-powers remain | step-local | Complete outputs (K.8), (K.20), (K.22), and (K.28) precede the rate export | \(d=0\) uses the shared no-data law; \(d=1\) activates; fixed \(\delta\) keeps (K.30) but not (K.31) | (K.29) gives block scale \(d^3/\alpha\) and teacher scale \(d^2\log(1/(\delta\beta))/\varepsilon\); (K.31) directly dominates \(\delta N_{\mathrm o}\) | Four primitive assumptions | Completed old tuple and normalized \(R_{\mathrm{old}}\) bound | Finite/infinite \(C\), \(v=d\), fixed \(\delta\), and scheduled \(\delta\) pass | A hidden positive \(d\)-power or unsupported \(N_{\mathrm o}\delta\to0\) claim would break the baseline |
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
| Old quotient kernel and raw pullback | K / `step_015`, (K.1)-(K.8) | B-C quotient map, discrete old input, totalized old dictionary, fixed local decompositions/list orders | Ceilings and arbitrary-input empty/fallback paths are controlled; raw measurability is not supplied by Lyu | Produced \(K_{\mathrm o}\) and consumed \(A_{\mathrm o,N_{\mathrm o}}\) have the same \(H_C\) output and exact \(T_N\), decoder, adjacency, and risk bridge | Least-feasible witness (K.4)-(K.7), then measurable composition (K.8) | Countability and the explicit teacher margin | Old source/event/mechanism chain; L and final theorem | Valid; exact pullback, with formal kernel derivation step-local |
| Old trace event, lists, and common support | K / `step_015`, (K.9)-(K.17) | Coarse \(d\)-trace count, marginal without-replacement block, old scalars, exact endpoint and \((2p,p)\) source tools | High and near-zero tails are separately controlled; trace multiplicity, endpoint, half-scale, empty restrictions, list cap, equality case, and zero-DDim boundary are explicit | Same empirical errors, actual quotient functions, and source scales; no trace representative or transformed target | (K.12) pays event multiplicity; (K.14)-(K.17) give exact inclusion and finite one-unit DDim descent | Direct near-zero KL exponent, exact source equality, irreducibility, and target support | Old output/privacy and SOA/PAC chains | Valid diagnostic interface; tail/source/DDim proofs step-local |
| Old actual output and raw all-input privacy | K / `step_015`, (K.18)-(K.20) | Score-\(k_{\mathrm o}\) stage, list cap, teacher inequality, sensitivity-one queries, one-list adjacency, quotient-neighbor bridge | Laplace errors, false stage, \(\perp\), adaptive stopping, transcript divergence, nonrealizable, exhaustion, and fallback paths are controlled | Output is literally an old list item on success; DP transfers through the exact same raw pullback on every path | Selected-score margin and direct weight ratio (K.18)-(K.19); two-component adaptive composition (K.20) | Teacher slack, finite effective range, and two explicit privacy allocations | Old SOA/marked PAC; L and final privacy theorem | Valid; mechanism utility and privacy instantiations step-local |
| Old exact SOA, marked projection, and PAC event | K / `step_015`, (K.21)-(K.28) | Actual old list item, irreducible leaf, core event, joint internal law, producer-local union, iid complement | Improperness, adaptive output/mark, complement factor, candidate multiplicity, and four confidence shares are controlled; no post-mark independence is assumed | Same quotient function and target in empirical, complement, and population risk; (K.22) has exact release projection; factor \(k_{\mathrm o}/(k_{\mathrm o}-1)\leq2\) is dominated | Core-qualified pathwise inclusion (K.25), fixed-candidate tail (K.26), explicit multiplicity domination (K.27), and ledger (K.28) | \(n_{\mathrm o}\)-irreducibility, \(\alpha/4\) holdout margin, and complement exponent | Old rate export; L and final PAC theorem | Valid diagnostic interface; empirical/marked proof units step-local |
| Old normalized rate and optional schedule | K / `step_015`, (K.29)-(K.31) | Completed old kernel/DP/PAC tuple and explicit \(k_{\mathrm o},m_{\mathrm o},a_{\mathrm o},Q_{\mathrm o}\) bounds | Ceilings and all old logarithms are controlled; fixed positive \(\delta\) is separated from the optional source-facing limit | Same learner threshold and \(R_{\mathrm{old}}\); no arm-interface residual and only allowed \(\Lambda\)-powers remain | Ceiling-aware multiplication (K.29)-(K.30); (K.31) is used only when \(N_{\mathrm o}\delta\to0\) is additionally required | Universal envelope constants and the declared scheduled-\(\delta\) condition | L and final minimum/baselines | Valid for every allowed finite \(\delta\); optional sequence conclusion valid only under (K.31); algebra step-local |
| Finite arm and minimum | L / `step_016` | Finite quotient class, sensitivity-one score, completed new/old arms | `log M`, confidence, infinite boundary controlled | Same target; deterministic choice among complete laws | (L.1)-(L.3) | Realizable comparator and finite multiplicity | Final theorem | Valid; finite proof/minimum step-local |

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Parameter tuple, teacher margin, and total fallback law | A / `step_001` | C-G, J, VC-arm theorem | Primitive parameters -> A -> consumers | derived | Valid; produced before sampling |
| Quotient factorization and dimension equalities | B / `step_002` | C-D, E source map, K-L, final scope | Primitive quotient -> B -> consumers | derived | Valid |
| Pushforward sample, neighbor transfer, and decoded-risk identity | B / `step_002` | C, G, I-L, final DP/PAC | Primitive quotient/distribution -> B -> consumers | derived | Valid; zero residual |
| Quotient kernel and raw pullback | C / `step_003` | Mark, privacy, both comparison arms, final learner | A+B -> C -> consumers | derived | Valid; exact codomain |
| Marked kernel and output projection | C / `step_004` | I and the independent old marked projection (K.22) | Quotient joint law -> mark -> I/K | derived | Valid; mark is analysis-only |
| VC error-trace family | D / `step_005` | Fixed-trace tails and trace fixed point | B -> trace count -> D | derived | Valid |
| Per-trace tails, `E_good`, and confidence charge | D / `step_006`-`step_007` | E-F, H-I | Trace family + parameters -> D -> consumers | derived | Valid; finite union/tower explicit |
| Current restrictions, essential lists, exact leaf SOAs, irreducibility | E / `step_008` | F-G, H-I | D -> E -> consumers | derived | Valid under checked source wrapper |
| DDim potential descent and score-`k` stage | F / `step_009` | G mechanism utility | E -> F -> G | derived | Valid; monotone finite budget |
| Selected transcript, actual output, and mechanism-good event | G / `step_010` | H-I; kernel release | A+C+F -> G -> consumers | derived | Valid; fallback charged |
| Raw replacement DP | G / `step_011` | J, L, final theorem | B+C+E+mechanisms -> G -> J/L/final | derived | Valid for all inputs |
| Exact SOA identity and empirical loss | H / `step_012` | I | D+E+G -> H -> I | derived | Valid; same actual function |
| Marked reconstruction and quotient/raw PAC event | I / `step_013` | J, L, final theorem | C+D+E+G+H -> I -> J/L/final | derived | Valid; pathwise mark-free independence bridge |
| Normalized VC-arm kernel/DP/PAC/rate tuple | J / `step_014` | L and final theorem | All new-arm producers -> J -> L/final | derived | Valid at diagnostic level |
| Old dictionary, kernel, trace event, and confidence charge | K / `step_015`, (K.1)-(K.12) | Old source/list chain and later old consumers | B+C + primitive parameters -> (K.1)-(K.8) -> old traces/tails (K.9)-(K.12) | derived | Valid; least-feasible tuple and event are produced without a VC-arm event |
| Old endpoint/list/DDim support package | K / `step_015`, (K.13)-(K.17) | Old mechanism and SOA consumers | Old \(E_{\mathrm{good,o}}\) -> exact map/pair/list cap -> finite DDim descent -> score-\(k_{\mathrm o}\) stage | derived | Valid under checked source wrappers; exact actual-function flow |
| Old actual output and all-input raw privacy | K / `step_015`, (K.18)-(K.20) | Old SOA/marked PAC, L, and final privacy use | Old support + teacher margin + local lists -> selected item and two-component privacy -> consumers | derived | Valid for every totalized raw input; no utility event is used for privacy |
| Old empirical certificate, marked projection, and PAC ledger | K / `step_015`, (K.21)-(K.28) | Old rate export, L, and final PAC use | Actual item + old core -> exact SOA/error -> mark/projection -> core-qualified producer inclusion -> complement tail/multiplicity -> PAC | derived | Valid; (K.25) precedes conditioning and (K.22) preserves the released law |
| Normalized old rate and optional \(N_{\mathrm o}\delta\) schedule | K / `step_015`, (K.29)-(K.31) | L and final theorem/baseline use | Completed old kernel/DP/PAC tuple -> ceiling-aware envelopes -> \(R_{\mathrm{old}}\); optional schedule only through (K.31) | derived | Valid rate for every \(0<\delta<1\); sequence flow valid only under its declared schedule |
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
  closure by (J.1)-(J.3), the independent old chains (K.4)-(K.7),
  (K.12), (K.27), and (K.29)-(K.31), and (L.1)-(L.3).
- Source-to-claim stress: passed at obstruction level. The primary TeX
  confirms all exact labels, directions, list bounds, zero-DDim support, and
  privacy conventions. The source's subset-size typo, missing displayed
  endpoint, half-scale current convention, malformed `SOA_G(h)` theorem
  text, and unproved probability-one amplification sentence are all exposed
  and are not consumed beyond what the proof text actually supports.
  In particular, Theorem 3/Corollary 5.1 do not produce raw measurability,
  the local near-zero tail, current all-input quotient privacy, or marked
  high-confidence PAC; those are produced by (K.8), (K.10), (K.20),
  (K.22), and (K.25)-(K.28).
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
  finite arm. The old arm separately exports its kernel/event, list/support,
  output/privacy, SOA/mark/PAC, and rate interfaces through
  (K.8)-(K.12), (K.13)-(K.17), (K.18)-(K.20), (K.21)-(K.28), and
  (K.29)-(K.31). Controlled and persistent defect classes are separated.
- Generated-condition provenance: passed. Kernel, mark, event, lists,
  potential, mechanism success, SOA identity, empirical loss, PAC event, and
  rate tuples are all generated conclusions with forward paths. The old
  path is independently forward: dictionary/kernel/event, lists/support,
  output/privacy, empirical/mark/PAC, then normalized rate.
- Entry and boundary stress: passed. `d=0` is stationary and already solves
  the theorem; `d>=1` activates `p_0>=max{n_0,d+1}`; `M_0=0` has immediate
  common support; mean zero makes the low-tail failure empty; `k=2` leaves a
  nonempty complement; empty and fallback paths are total; finite/infinite
  class and fixed/scheduled `delta` are distinguished. The same checks are
  explicit for the old arm in (K.9), (K.15)-(K.17), (K.20), (K.23)-(K.28),
  and (K.30)-(K.31).
- Scope/dependence stress: passed. Every repeated operation is finite and
  has a displayed budget. No all-time, uniform, or limiting probability
  conclusion is inferred from a fixed-horizon estimate. The asymptotic
  claims are only the VC-arm `N delta -> 0` consequence of the primitive
  schedule and, when separately requested, the old-arm implication (K.31).
- Baseline stress: passed. The exact no-data law, old `d^5` arm, finite
  `log^+|C|` arm, `v=d` equality, infinite-class disabling convention, and
  small-`delta` qualification remain theorem-facing conclusions, not merely
  vanished defect terms. Equation (L.3) is a finite-parameter statement for
  every allowed \(\delta\); only the source-facing shorthand uses the
  declared schedule, and old-arm \(N_{\mathrm o}\delta\to0\) uses (K.31).
- Same-setting repair plausibility: the current diagnostic exposes no repair
  need. If a future local proof falsifies the teacher envelope, source-stage
  translation, exact SOA identity, mark-free inclusion, or one of the
  concrete old-arm interfaces (K.8)-(K.31), that would be new evidence for
  `/proof-sketch`; it is not legitimate to
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
9. `step_015`: prove the concrete independent old-arm units already exposed:
   the feasible dictionary and trace fixed point (K.1)-(K.12), exact
   endpoint/list/DDim support (K.13)-(K.17), selected-score/failure-symbol
   and every-input privacy statements (K.18)-(K.20), empirical SOA and
   core-qualified marked reconstruction (K.21)-(K.28), and ceiling-aware
   rate/schedule elimination (K.29)-(K.31). Likely units: old parameter
   envelope, high/near-zero trace lemma, source-map/DDim proposition,
   mechanism/privacy proposition, SOA/marked-PAC proposition, and rate
   lemma. Witness: the explicit linear teacher margin, trace and complement
   exponents, integer DDim reserve, one-block/list locality, exact marked
   projection, and quotient/raw identities.
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
