# Global Proof

## Reviewed Sketch Identity

- Branch: perspective_2/idea_3
- Run mode: interactive
- Model provenance: gpt-5.6-sol/max
- Progress type: material_partial
- Sketch attempt: 2
- Global-producer attempt under this sketch: 1
- Binding setting: perspective_2/idea_3/setting.md, SHA-256 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Reviewed sketch: perspective_2/idea_3/proof_sketch.md, SHA-256 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Reviewed sketch review: perspective_2/idea_3/proof_sketch_review.md, SHA-256 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Technical survey: perspective_2/idea_3/technical_survey.md, SHA-256 97814dc307d7ec269ac4475dc92e399ee96c7a6b318e155031fca9c39928fadb
- Sketch-review status: ACCEPTED
- Sketch viability score: 8
- Reviewed step state: all twelve steps step_001 through step_012 are PENDING.
- Primary source preflight: Xin Lyu, "Private Learning of Littlestone Classes, Revisited," arXiv:2510.00076v1, source submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.
- Failure lineage only: perspective_2/idea_3/proof_history/sketch_001/sketch_attempt_001_revise_sketch/global_proof_review.md records the attempt-1 stage-index, teacher, totality, privacy, and output-family failures. It is used only to identify what attempt 2 had to repair. It is not current proof evidence. The stale live attempt-1 global artifacts were not used as accepted diagnostics.

The binding hashes were recomputed before drafting and matched the controller-supplied identities exactly.

## Status

PARTIAL_BLOCKED

All theorem-level producer-consumer links close under the accepted sketch. The remaining obligations are local proofs of the fixed interfaces below; none is being used as a first source of a theorem-critical mechanism. In particular, the repaired stage/list convention is mathematically legal but must be proved carefully in step_006 rather than described as literal source identity.

## Attempted Theorem Claim

This is exact-goal mode. Under assump:finite-littlestone, assump:realizable-iid, and assump:approximate-dp-regime, let
\[
v=\operatorname{VC}(C),\qquad d=\operatorname{LD}(C).
\]
The attempted theorem is the following exact branchwise statement.

1. If \(d=0\), then the nonempty class \(C\) is a singleton. The learner uses \(N=0\), outputs its unique member, is \((0,0)\)-DP, and has zero population error for every realizable target.
2. If \(d\ge 1\), then \(1\le v\le d\). With \(\gamma=\alpha/16\), the exact teacher integer \(k\), block size \(m\), master size \(n_0=km\), fixed random partition, current stages \(r=0,\ldots,d\), current scales \(p_r=2^rn_0d\), one AboveThreshold process, at most one Sparse Sample call, and the total fallback behavior fixed by the accepted sketch, the learner is \((\varepsilon,\delta)\)-DP on every labeled input and obeys
\[
\sup_D\sup_{c\in C}
\Pr\!\left[
\operatorname{err}_D(A_C^{\mathrm{VC\text{-}Lyu}}(S),c)>\alpha
\right]\le \beta.
\]
There are universal \(K\ge1\) and \(q\in\mathbb N_0\) such that
\[
N=n_0\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
\left[
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
     {\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}
\right].
\tag{T}
\]

The probability in (T) is joint over the i.i.d. master sample, the data-independent random partition, AboveThreshold noise, and Sparse Sample randomness. Privacy is the replacement-adjacency output-distribution inequality on arbitrary, possibly nonrealizable, labeled inputs. The theorem is fixed-sample and unconditional. It does not assume \(E_{\rm good}\), list membership, common support, successful selection, irreducibility, sensitivity, privacy, or generalization.

At fixed \(\alpha,\beta,\varepsilon\), with the displayed logarithmic dependence on \(\delta\) retained, the separately normalized finite-class, old-Lyu, and new VC-sensitive learners give
\[
\widetilde O\!\left(\min\{\log^+|C|,\ d^5,\ vd^4\}\right).
\tag{F}
\]
For infinite \(C\), the finite-class cost is \(+\infty\). At \(v=d\), the new arm returns to the \(d^5\) scale. The statement \(N\delta\to0\) is made only along the parameter schedules declared in assump:approximate-dp-regime; it is not asserted for fixed positive \(\delta\). This material-partial claim does not solve the requested \(\operatorname{poly}(v,\log d)\), \(\operatorname{poly}(v,\log^*d)\), or characterization questions.

## Whole-Proof Draft

### Block A: boundary branch, total procedure, and noncircular parameter package

If \(d=0\), two distinct members of \(C\) would disagree at some \(x\) and shatter a depth-one Littlestone tree. Thus \(C=\{c_C\}\), and the zero-sample deterministic learner closes both privacy and utility without activating any positive-dimensional formula.

Assume henceforth \(d\ge1\). Then \(1\le v\le d\). Allocate
\[
\beta_{\rm tr}=\beta_{\rm AT}=\beta_{\rm SS}=\beta_{\rm gen}=\beta/4,
\qquad
\delta_{\rm AT}=\delta_{\rm SS}=\delta/2,
\]
and set
\[
g_\delta=\log(4/\delta),\qquad
\eta=\frac{\varepsilon}
{4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},\qquad
\varepsilon_s=\varepsilon/8.
\]
For every integer \(t\ge2\), define the complete candidate tuple
\[
\begin{aligned}
a(t)&=v+\log(4t/\beta),\\
Q(t)&=e+\frac{etd^2a(t)}{\alpha v},\\
m(t)&=\left\lceil C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)\right\rceil,\\
n(t)&=tm(t),\qquad p_d(t)=2^dn(t)d,\\
L(t)&=p_d(t)^d2^{d^2},\\
B(t)&=\left\lceil\frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_s}\right\rceil,\\
\tau_{\rm AT}&=\eta^{-1}\log\frac{d+1}{\beta_{\rm AT}},\\
\tau_{\rm SS}(t)&=\varepsilon_s^{-1}
\log\frac{tL(t)+1}{\beta_{\rm SS}}.
\end{aligned}
\tag{A.1}
\]
The actual teacher count is the least feasible integer
\[
k=\min\left\{t\ge2:
\frac t2-\tau_{\rm AT}\ge B(t)+\tau_{\rm SS}(t)+2
\right\}.
\tag{A.2}
\]
This is not circular: every candidate tuple exists before feasibility is tested. Let
\[
G=\log\frac{64}{\delta\beta},\qquad
\lambda=\Lambda(d,v,\alpha,\beta,\varepsilon,\delta),\qquad
\bar k=\left\lceil
C_{\rm teach}\frac{d^2G\lambda^2}{\varepsilon}
\right\rceil.
\tag{A.3}
\]
Direct ceiling-aware estimates give
\[
\log\bar k\le C_1\lambda,\qquad
\log n(\bar k)\le C_2\lambda,\qquad
\log L(\bar k)\le C_3d^2\lambda.
\tag{A.4}
\]
Indeed, \(Q(t)\) is defined without \(m(t)\) or \(n(t)\); taking logarithms of \(t\), \(d\), \(a(t)\), \(\alpha^{-1}\), and \(\log Q(t)\) at \(t=\bar k\) produces only terms already contained in \(\lambda\). Since
\[
\log L(t)
=d\{d\log2+\log n(t)+\log d\}+d^2\log2,
\tag{A.5}
\]
(A.4) controls the exact list envelope. Substitution in (A.1) yields
\[
\tau_{\rm AT}+B(\bar k)+\tau_{\rm SS}(\bar k)
\le C_4\frac{d^2G\lambda^2}{\varepsilon}.
\tag{A.6}
\]
A universal \(C_{\rm teach}>4C_4\), enlarged for all ceilings and the additive 2, makes \(\bar k\) feasible. Hence the feasible set in (A.2) is nonempty and
\[
k\le\bar k.
\tag{A.7}
\]
Set \(a=a(k)\), \(Q=Q(k)\), \(m=m(k)\), \(n_0=n(k)=km\), \(L=L(k)\), and \(B=B(k)\). Since \(k\ge2\), \(m\ge1\), and \(d\ge1\),
\[
n_0d\ge\max\{n_0,d+1\}.
\tag{A.8}
\]

Before privacy is discussed, fix \(h_0\in C\), the data-independent random partition rule, every stage class and list, \(q_r=0\) for an empty union, stopping after the first Above report, one optional Sparse Sample call, output \(h_0\) after \(\perp\), and output \(h_0\) after an all-Below transcript. Thus every arbitrary-input transcript is total. Block A is the producer of the exact tuple and procedure used everywhere below.

### Block B: conditional VC trace reduction and exact two-clause event

Condition on the full indexed labeled master sample
\[
S=((x_u,y_u))_{u=1}^{n_0}.
\]
For \(h\in C\), let its prediction trace be
\((h(x_u))_{u=1}^{n_0}\) and its error trace be
\(({\bf1}\{h(x_u)\ne y_u\})_{u=1}^{n_0}\).
Xor with the fixed label vector is a bijection, including when sample points repeat. Consequently
\[
|\mathcal E_C(S)|\le\Pi_C(n_0)\le(en_0/v)^v.
\tag{B.1}
\]
The last inequality is legal because \(1\le v\le n_0\).

For a fixed trace with full-sample mean \(\mu=e_S(h)\), one partition block is marginally a uniform size-\(m\) sample without replacement. No joint block independence is needed. With
\(\rho=1-1/(2d)\) and \(\gamma=\alpha/16\), the desired event is
\[
\begin{aligned}
E_{\rm good}=\bigcap_{h\in C}\bigcap_{i=1}^k
\bigl(&\{\mu>\gamma/3\Rightarrow
|e_i(h)-\mu|\le\mu/(5d)\}\\
&{}\cap\{\mu\le\gamma/3\Rightarrow e_i(h)\le\gamma/2\}\bigr).
\end{aligned}
\tag{B.2}
\]
For \(\mu>\gamma/3\), Lyu Proposition 2 with relative deviation \(1/(5d)\) gives
\[
\Pr\!\left(|e_i-\mu|>\frac{\mu}{5d}\mid S\right)
\le2\exp(-c_1m\mu/d^2)
\le2\exp(-c_2m\alpha/d^2).
\tag{B.3}
\]
For \(\mu\le\gamma/3\), the without-replacement mgf/KL comparison gives
\[
\Pr(e_i>\gamma/2\mid S)
\le\exp\{-mD(\gamma/2\Vert\mu)\}
\le\exp(-c_3m\gamma)
\le\exp(-c_4m\alpha/d^2).
\tag{B.4}
\]
The last display deliberately weakens an \(m\alpha\) exponent to the common
\(m\alpha/d^2\) scale. When \(\mu=0\), the bad event is impossible; the KL statement is interpreted by continuity. A finite union over blocks and distinct error traces therefore gives
\[
\Pr_{\mathcal P}(E_{\rm good}^c\mid S)
\le4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}.
\tag{B.5}
\]

The self-reference inside the trace multiplicity closes directly. From
\[
m\le C_{\rm blk}\frac{d^2a\log Q}{\alpha}+1
\]
and \(Q=e+ekd^2a/(\alpha v)\), using
\(d^2a/\alpha\ge4\), one obtains
\[
\frac{en_0}{v}
\le C Q\log Q
\quad\Longrightarrow\quad
\log(en_0/v)\le C_{\rm fp}\log Q.
\tag{B.6}
\]
The exponent in (B.5) is at least
\(c_{\rm tr}C_{\rm blk}a\log Q\). Because
\(a=v+\log(4k/\beta)\), a sufficiently large universal
\(C_{\rm blk}\) dominates
\[
vC_{\rm fp}\log Q+\log(16k/\beta).
\tag{B.7}
\]
Thus
\[
\Pr(E_{\rm good}^c)\le\beta_{\rm tr},
\qquad
n_0\le(C_{\rm blk}+1)\frac{kd^2a\log Q}{\alpha}.
\tag{B.8}
\]
The tower property removes the conditioning on \(S\). This proves the exact generated event before any stage argument consumes it.

### Block C: repaired source-stage wrapper and legality of the half-scale lists

Lyu v1 prints
\[
H_{i,\rm src}^s
=\{h\in C:e_i(h)\le\rho^s\gamma\}
\tag{C.1}
\]
for \(s\in[d]\), but the immediately following algorithm runs
\(s=1,\ldots,d+1\) and consumes \(H_i^{s+1}\). The current wrapper defines
\(H_{i,\rm src}^{d+1}\) by the same formula (C.1); no nonexistent endpoint theorem is cited. The binding branch uses
\[
H_i^r=H_{i,\rm src}^{r+1},\qquad
p_r=2^rn_0d,\qquad 0\le r\le d.
\tag{C.2}
\]
The source's literal scale at stage \(r+1\) is
\(p_{r+1,\rm src}=2^{r+1}n_0d=2p_r\). Therefore the pair
\((H_i^r,p_r)\) is not a literal relabeling of the source pair. It is a half-scale list variant.

This variant is nevertheless legal under the unchanged setting for four precise reasons.

1. The binding setting itself fixes the current parameters
\(p_r=2^rn_0d\), \(r=0,\ldots,d\). The diagnostic does not alter them.
2. Lyu Definition 4.2, Lemma 4.1, Lemma 4.3, Definition 4.3, and Corollary 4.1 hold for every positive integer \(p\); none requires the absolute source normalization \(p_1=2n_0d\).
3. Consecutive current scales preserve the exact theorem-critical interface
\[
(p_{r+1},p_r)=(2p_r,p_r).
\tag{C.3}
\]
Thus Lemma 4.3 is invoked only with an optimal
\((2p_r,d)\)-decomposition of \(H_{i_*}^{r+1}\) and an optimal
\((p_r,d)\)-decomposition of \(H_i^r\).
4. A maximal leaf \(\mathcal G\) of Littlestone dimension \(t\) in an optimal current \((p_r,d)\)-decomposition is
\(p_r2^{d-t}\)-irreducible, and
\[
p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{C.4}
\]
Hence the smaller absolute scale loses neither the \(n_0\)-point empirical contradiction nor the \((d+1)\)-irreducible membership needed later.

On \(E_{\rm good}\), for \(0\le r<d\), the cross-block inclusion
\[
H_i^{r+1}\subseteq\bigcap_{i'=1}^kH_{i'}^r
\tag{C.5}
\]
follows in both branches of (B.2). If \(e_S(h)\le\gamma/3\), then
\[
e_{i'}(h)\le\gamma/2\le\rho^d\gamma\le\rho^{r+1}\gamma.
\tag{C.6}
\]
If \(e_S(h)>\gamma/3\) and \(h\in H_i^{r+1}\), then
\[
e_{i'}(h)
\le\frac{1+1/(5d)}{1-1/(5d)}e_i(h)
\le\frac{1+1/(5d)}{1-1/(5d)}\rho^{r+2}\gamma
\le\rho^{r+1}\gamma,
\tag{C.7}
\]
where the last inequality is
\((1+1/(5d))\rho\le1-1/(5d)\). This holds at \(d=1\) as well.

For every nonempty \(H_i^r\), define the actual-function list
\[
\mathcal L_i^r=\operatorname{Ess}_{p_r,d}(H_i^r),\qquad
|\mathcal L_i^r|\le p_r^d2^{d^2}\le L.
\tag{C.8}
\]
For an empty arbitrary-input class, define the list to be empty. This is a totality convention, not a utility claim. Equality in (C.8) is equality of functions on \(X\), never equality of master-sample traces.

The monotonicity used later is also exact: if \(\mathcal G\) is \(K\)-irreducible and \(\ell\le K\), extend any \(\ell\)-point sequence to a \(K\)-point sequence using nonemptiness of \(X\). The final restriction has the original Littlestone dimension, while restriction only decreases dimension, so the \(\ell\)-prefix has the same dimension. Thus (C.4) exports both required irreducibility levels.

### Block D: decomposition-dimension descent and a score-\(k\) actual function

On the realizable path, the target \(c\) has zero error on every block, so every \(H_i^r\) is nonempty. Define
\[
M_r=\max_{i\in[k]}\operatorname{DDim}_{p_r,d}(H_i^r)
\in\{0,\ldots,d\}.
\tag{D.1}
\]
Fix \(r<d\), choose \(i_*\) attaining \(M_{r+1}\), and use (C.5). Lyu Lemma 4.3 with
\[
\mathcal G=H_{i_*}^{r+1},\quad
\mathcal H=H_i^r,\quad
(2p,d)=(p_{r+1},d),\quad(p,d)=(p_r,d)
\]
gives
\[
M_{r+1}\le\operatorname{DDim}_{p_r,d}(H_i^r)
\quad\text{for every }i,
\tag{D.2}
\]
and hence \(M_{r+1}\le M_r\).

If equality \(M_{r+1}=M_r=t>0\) holds, then every current block has
\(\operatorname{DDim}_{p_r,d}(H_i^r)=t\). Fix a dimension-\(t\) leaf
\(\mathcal G_v\) in one optimal \((p_{r+1},d)\)-decomposition of
\(H_{i_*}^{r+1}\). Lemma 4.3 says that for every arbitrarily chosen optimal
\((p_r,d)\)-decomposition of every \(H_i^r\), a dimension-\(t\) leaf has the same SOA function as \(\mathcal G_v\). Since the current optimal decomposition was arbitrary, that actual function is \((p_r,d)\)-essential to every \(H_i^r\). Thus it has score \(k\).

Contrapositively, if no actual function has current score \(k\), the integer potential obeys
\[
M_{r+1}\le M_r-1.
\tag{D.3}
\]
Corollary 4.1 is used with its exact boundaries:

- Item 1 supplies (C.8).
- Item 2 transfers a \(p\)-essential function only under inclusion and equal same-\(p\) DDim; it is not misused to remove the factor-two residual.
- Item 3 supplies nonempty \(p\)-essential support only under
  \(\operatorname{DDim}_{2p,d}(H)=\operatorname{DDim}_{p,d}(H)\); generic nonnegativity is not treated as support.
- Item 4 says that when \(\operatorname{DDim}_{p_r,d}(H_i^r)=0\), the nonempty class is finite and
  \(\operatorname{Ess}_{p_r,d}(H_i^r)=H_i^r\). Hence the common target \(c\) itself has score \(k\).

Under the good AboveThreshold-noise event defined in Block E, an accurately Below stage cannot have score \(k\). Therefore each of the first \(d\) Below reports charges one unit to the finite potential:
\[
M_j\le M_0-j,\qquad 0\le M_j,\qquad M_0\le d.
\tag{D.4}
\]
If \(M_0=0\), Item 4 gives a score-\(k\) item before the first query is consumed. Otherwise, after \(d\) accurate Below reports, \(M_d=0\), so stage \(d\) has score \(k\). There is no additive or unknown-sign forcing term in (D.3).

### Block E: AboveThreshold detection and one actual Sparse Sample output

Let \(Z_r\sim\operatorname{Lap}(1/\eta)\) be the noise used for query \(q_r\), and define
\[
\mathcal E_{\rm AT}=\bigcap_{r=0}^d\{|Z_r|\le\tau_{\rm AT}\}.
\]
The Laplace tail and a finite union give
\[
\Pr(\mathcal E_{\rm AT}^c)\le\beta_{\rm AT}.
\tag{E.1}
\]
On this event, a score-\(k\) stage is reported Above because
\[
k-\tau_{\rm AT}>k/2,
\tag{E.2}
\]
while every reported Above stage satisfies
\[
q_r\ge k/2-\tau_{\rm AT}.
\tag{E.3}
\]
Thus Block D ensures a first Above report by stage \(d\).

At the reported stage, the Sparse Sample effective domain has at most
\(kL+1\) elements, including \(\perp\). Direct comparison of its exponential weights gives, except on an event of probability \(\beta_{\rm SS}\),
\[
\operatorname{score}(\widehat h)
\ge q_r-\tau_{\rm SS}(k).
\tag{E.4}
\]
The exact teacher inequality (A.2) and (E.3) imply
\[
q_r-\tau_{\rm SS}(k)
\ge k/2-\tau_{\rm AT}-\tau_{\rm SS}(k)
\ge B(k)+2>B(k).
\tag{E.5}
\]
Since \(\perp\) has score exactly \(B(k)\), (E.5) excludes it. The selected object is an actual member of
\(\bigcup_i\mathcal L_i^r\). A false-positive stage is harmless on the utility event: it still has the margin (E.3), and every actual list member has the same empirical bridge in Block G. Empty lists have \(q_r=0\) and cannot trigger a good-noise Above report because (A.2) implies \(k/2>\tau_{\rm AT}\). There is one stopped AboveThreshold process and at most one Sparse Sample draw, so these defects do not accumulate per stage.

### Block F: raw-record replacement privacy for every transcript

Fix the data-independent partition \(P\). If neighboring labeled inputs \(s,s'\) differ at raw index \(u\), and \(u\) belongs to block \(b(P)\), then for every stage
\[
F_r^P(s)_i=F_r^P(s')_i\quad(i\ne b(P)).
\tag{F.1}
\]
Extending each list frequency by zero outside its current union shows that every function's frequency changes by at most one; hence
\[
|q_r(s)-q_r(s')|\le1.
\tag{F.2}
\]
Thus the complete AboveThreshold query sequence has raw sensitivity one. Lyu Lemma 3.2, with the calibration of \(\eta\), gives at most
\((\varepsilon/4,\delta/2)\)-DP for the stopped transcript.

For every fixed possible transcript prefix that selects stage \(r_*\), the two Sparse Sample inputs differ in at most the same one list coordinate by (F.1). The bound \(B(k)\ge10\log(L/\delta_{\rm SS})/\varepsilon_s\) is exact, so Lyu Lemma 3.1 gives
\[
(2\varepsilon_s,\delta_{\rm SS})
=(\varepsilon/4,\delta/2)
\tag{F.3}
\]
for that conditional second mechanism. For a prefix that makes no call, the second mechanism is the fixed output \(h_0\) and is \(0\)-DP. Adaptive composition handles different transcripts on neighboring inputs; it does not require the two executions to stop at the same realized stage. Postprocessing handles \(\perp\), the fixed default, and stage exhaustion. Therefore, conditional on \(P\), the total procedure is
\[
(\varepsilon/2,\delta)\text{-DP},
\tag{F.4}
\]
which is stronger than the target \((\varepsilon,\delta)\). Averaging (F.4) over the common, data-independent random partition preserves the same raw-record inequality. No realizability event or utility event is used in this block.

### Block G: exact SOA-family membership and empirical error

On \(E_{\rm good}\) and the mechanism-good event, the selected
\(f\in\mathcal L_i^r\) is, by Definition 4.3, exactly
\[
f=\operatorname{SOA}_{\mathcal G}
\tag{G.1}
\]
for a dimension-maximal leaf class
\(\mathcal G\subseteq H_i^r\subseteq C\) in an actual optimal
\((p_r,d)\)-decomposition. By (C.4), \(\mathcal G\) is both
\(n_0\)-irreducible and \((d+1)\)-irreducible. This is same-function identity on \(X\), not trace membership.

Every \(g\in H_i^r\) has full-master error at most \(2\gamma\). If
\(e_S(g)\le\gamma/3\), this is immediate. Otherwise (B.2) gives
\[
e_S(g)\le\frac{e_i(g)}{1-1/(5d)}
\le\frac{\gamma}{1-1/(5d)}\le2\gamma.
\tag{G.2}
\]
Suppose \(e_S(f)>2\gamma\). No \(g\in\mathcal G\) can agree with \(f\) on all indexed sample points, because agreement would make their master errors identical, contradicting (G.2). Thus
\[
\mathcal G|_{(x_1,f(x_1)),\ldots,(x_{n_0},f(x_{n_0}))}
=\varnothing,
\]
contradicting \(n_0\)-irreducibility. Hence
\[
\widehat R_S(f)=e_S(f)\le2\gamma=\alpha/8.
\tag{G.3}
\]
Repeated sample points do not affect the restriction argument.

Now define before seeing the data the exact fixed improper family
\[
\widehat C_{d+1}
=\{\operatorname{SOA}_{\mathcal G}:
\mathcal G\subseteq C\text{ is }(d+1)\text{-irreducible}\}.
\tag{G.4}
\]
Equation (G.1) and (C.4) prove \(f\in\widehat C_{d+1}\). Lyu Lemma 4.2 gives
\[
\operatorname{LD}(\widehat C_{d+1})\le d,
\qquad
\operatorname{VC}(\widehat C_{d+1})\le d.
\tag{G.5}
\]
For the error class obtained by xor with the fixed realizable target \(c\), a one-sided relative VC inequality gives, with failure at most \(\beta_{\rm gen}\),
\[
R(f)\le2\widehat R_S(f)+\alpha/2
\quad\text{uniformly for }f\in\widehat C_{d+1},
\tag{G.6}
\]
provided
\[
n_0\ge
\frac{C_{\rm gen}}{\alpha}
\left[d\log(16e/\alpha)+\log(1/\beta_{\rm gen})\right].
\tag{G.7}
\]
The definition of \(m\) implies (G.7): \(a\) dominates
\(\log(1/\beta_{\rm gen})\), while
\(\log Q\) dominates a universal multiple of \(\log(1/\alpha)\), and
\(d^2a\log Q\) dominates the bracket in (G.7). Enlarge the universal
\(C_{\rm blk}\) once for this fixed requirement. Combining (G.3) and (G.6) yields
\[
R(f)\le3\alpha/4<\alpha.
\tag{G.8}
\]
This controls adaptive improper selection even when \(C\) and
\(\widehat C_{d+1}\) are infinite, because the family in (G.4) is fixed and has finite VC dimension.

### Block H: probability assembly and the new public rate

The only utility failure events are the trace, AboveThreshold, Sparse Sample, and fixed-family generalization failures. Therefore
\[
\Pr(\operatorname{err}_D(\widehat h,c)>\alpha)
\le\beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}+\beta_{\rm gen}
=\beta.
\tag{H.1}
\]
Privacy was proved separately in Block F.

From (A.7),
\[
k\le K_1\frac{d^2G\lambda^2}{\varepsilon}.
\tag{H.2}
\]
Monotonicity in the candidate \(t\), (A.4), and \(k\le\bar k\) give
\[
a(k)\le K_2\lambda(v+\log(1/\beta)),
\qquad
\log Q(k)\le K_3\lambda.
\tag{H.3}
\]
Using the ceiling in \(m\),
\[
\begin{aligned}
n_0=km
&\le
K_4\lambda^4
\frac{d^4(v+\log(1/\beta))G}{\varepsilon\alpha}\\
&\quad+
K_4\lambda^2\frac{d+\log(1/\beta)}{\alpha}.
\end{aligned}
\tag{H.4}
\]
The second line records the source generalization scale explicitly. The additive \(k\) caused by the ceiling is dominated by the first line under
\(d,v\ge1\), \(0<\alpha<1/4\), \(G\ge1\). Since
\[
G=\log(64/(\delta\beta))
\le K_5\log(1/(\delta\beta))
\]
on the declared parameter range, (H.4) has the form (T), with only a universal power of \(\Lambda\) hidden. No \(k,m,n_0,p_r,L,B\), list, partition, event, class cardinality, or additional positive power of \(d\) or \(v\) remains hidden.

### Block I: independently normalized comparison arms and baseline invariance

For the coarse Lyu arm, repeat the same explicit candidate dictionary with
\[
a_{\rm old}(t)=d+\log(4t/\beta),\qquad
Q_{\rm old}(t)
=e+\frac{etd^2a_{\rm old}(t)}{\alpha d},
\]
\[
m_{\rm old}(t)
=\left\lceil
C_{\rm old}\frac{d^2}{\alpha}
a_{\rm old}(t)\log Q_{\rm old}(t)
\right\rceil.
\tag{I.1}
\]
Use the coarse trace bound
\[
\Pi_C(n_{\rm old})\le(en_{\rm old}/d)^d
\tag{I.2}
\]
which follows from \(v\le d\le n_{\rm old}\) and monotonicity of
\(x\log(en_{\rm old}/x)\). Define the old \(L,B\), least feasible teacher, total procedure, privacy wrapper, exact SOA family, and PAC event exactly as in Blocks A through G. The witness
\[
\bar k_{\rm old}
=\left\lceil
C_{\rm old,teach}\frac{d^2G\lambda^2}{\varepsilon}
\right\rceil
\]
then gives
\[
n_{\rm old}
\le K_{\rm old}\lambda^4
\frac{d^5G}{\varepsilon\alpha}
+K_{\rm old}\lambda^2
\frac{d+\log(1/\beta)}{\alpha}.
\tag{I.3}
\]
This is a separately private and PAC learner. It is not used to prove the new arm.

If \(M=|C|<\infty\), the exponential mechanism with weight
\(\exp[-(\varepsilon/2)\#\text{errors}(h)]\) is pure
\(\varepsilon\)-DP because the negative error count has sensitivity one. The realizable target has score zero. If
\[
n\ge\frac8{\varepsilon\alpha}
\left(\log M+\log(4/\beta)\right),
\tag{I.4}
\]
the selected empirical error is at most \(\alpha/4\) except with probability \(\beta/2\). A one-sided finite union bound gives population error at most \(\alpha\) with the other \(\beta/2\) provided
\[
n\ge\frac{C_{\rm fin}}{\alpha}
\left(\log M+\log(4/\beta)\right).
\tag{I.5}
\]
This arm is \((\varepsilon,0)\)-DP and therefore
\((\varepsilon,\delta)\)-DP. If \(C\) is infinite, set its public cost to
\(+\infty\); do not replace \(C\) by a data-dependent finite subfamily.

The minimum in (F) is taken only after (H.4), (I.3), and (I.4)-(I.5) have the same \((\alpha,\beta,\varepsilon,\delta)\) interface. Substitution \(v=d\) in (H.4) restores the \(d^5\) scale. The \(d=0\) branch remains the exact zero-sample result rather than a conservative positive remainder. Finally, along the declared schedule,
\[
0\le N\delta
\le\delta K\Lambda^qR_{\rm VC}\longrightarrow0.
\tag{I.6}
\]
No such conclusion is drawn for fixed positive \(\delta\).

### Final assembly

Block A fixes a legal boundary branch, all positive-branch scalars, and every arbitrary-input behavior. Blocks B and C derive the exact fixed-block event and transfer it into current restrictions, lists, and irreducible leaf witnesses. Blocks D and E turn a finite signed DDim descent into one actual selected list item with a positive score margin. Block F proves all-input privacy without utility conditioning. Block G proves same-function membership in the exact fixed improper family and converts empirical to population error. Blocks H and I allocate all failures, eliminate all auxiliaries, and preserve every comparison and limiting baseline. These implications establish (T) and (F) if the listed step-local derivations are proved. No theorem-level bridge, changed step claim, new assumption, or changed output target is required.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| A. Boundary, parameters, and total procedure | Proves \(d=0\) branch; fixes \(k,m,n_0,L,B\), allocations, margins, and every terminal behavior | step_001 | None | assump:finite-littlestone; assump:approximate-dp-regime | Ceiling-aware scalar proof of (A.4)-(A.7), integer minimality, and totality |
| B1. VC trace count | Replaces coarse trace exponent by \(v\) for possibly infinite \(C\) | step_002 | A | assump:finite-littlestone | Xor/growth-function proof with repeated indexed points |
| B2. Per-trace finite-population tails | Proves both exact clauses of \(E_{\rm good}\) | step_003 | A | assump:approximate-dp-regime; fixed-trace local hypothesis | Source Proposition 2 instantiation and KL upper-tail derivation including \(\mu=0\) |
| B3. Event union and fixed point | Produces \(E_{\rm good}\), \(\beta_{\rm tr}\) budget, and technical sample bound | step_004, step_005 | B1, B2, A | Primitive scalar ranges | Conditional union without independence; (B.6)-(B.8) with ceilings |
| C. Source/current wrapper | Produces restrictions, inclusion, exact lists, list envelope, and irreducible leaf scales | step_006 | B3 | assump:finite-littlestone | Endpoint wrapper; factor-two map; all Corollary 4.1 boundaries; half-scale legality |
| D. Structural descent | Produces a score-\(k\) actual function by stage \(d\) | step_007 | C | assump:realizable-iid; assump:finite-littlestone | Lemma 4.3 equality-to-essentiality argument and zero-DDim case |
| E. Mechanism utility | Produces one actual list item and excludes \(\perp\) on a finite good event | step_008 | A, B3, D | assump:approximate-dp-regime | Laplace tail, effective-domain inequality, exact teacher-margin consumption |
| F. All-input privacy | Proves raw replacement \((\varepsilon,\delta)\)-DP for the total learner | step_009 | A, C | assump:approximate-dp-regime | RawList, sensitivity one, transcript-dependent optional call, adaptive composition, partition mixture |
| G1. Exact output identity and empirical error | Places output in exact SOA form and proves master error \(\le\alpha/8\) | step_010 | C, E, with B3 through C | assump:finite-littlestone | Same-function leaf witness and \(n_0\)-irreducibility contradiction |
| G2. Fixed-family PAC transfer | Proves population error \(<\alpha\) for adaptive improper output | step_011 | B3, E, G1 | assump:realizable-iid; assump:finite-littlestone | Exact Lemma 4.2 class, VC wrapper, relative-VC inequality, sample threshold |
| H. New rate and failure assembly | Proves utility failure \(\le\beta\) and the public VC-sensitive rate | step_012 assembly role | A, B3, E, F, G2 | All three primitive assumptions | Eliminate all auxiliaries with no hidden positive power |
| I. Comparison arms and baselines | Proves old-Lyu, finite-class, \(d=0\), \(v=d\), infinite-class, and \(N\delta\) interfaces | step_012 | A, F, G2, H | All three primitive assumptions plus finite \(C\) only within finite arm | Independent old-arm calibration; finite-class proof; exact common-interface comparisons |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | Block A | Producer for every positive block | Prove singleton boundary, \(1\le v\le d\), (A.4)-(A.7), integer legality, \(n_0d\) bound, allocations, and total paths | Highest quantitative prerequisite; step-local |
| step_002 | Block B1 | A -> B1 -> B3 | Prove error/prediction xor identity and Sauer-Shelah at \(n_0\ge v\) | Handles infinite \(C\) and repeated points; step-local |
| step_003 | Block B2 | A -> B2 -> B3 | Prove high-error relative and low-error KL tails with common exponent | Mean-zero branch must be explicit; step-local |
| step_004 | Block B3 | B1, B2 -> B3 -> C/G2 | Union over traces and blocks conditionally on \(S\), then use tower property | No block independence; step-local |
| step_005 | Block B3 | A, B3 event formula -> C/E/G2/H | Prove (B.6)-(B.8), trace allocation, and technical \(n_0\) bound | Noncircular ceiling-aware fixed point; step-local |
| step_006 | Block C | B3 -> C -> D/F/G1 | Prove endpoint, source/current map, inclusion, Lemma 4.3 pairing, list identity/envelope, and (C.4) | Must state half-scale variant, not false source identity; step-local |
| step_007 | Block D | C -> D -> E/G1 | Prove (D.2)-(D.4), actual-function plateau support, and Item-4 zero case | Finite signed potential; step-local |
| step_008 | Block E | A, B3, D -> E -> G1/G2 | Prove AT accuracy, Sparse Sample effective-domain tail, positive margin, and actual output | One stopped process and one optional call; step-local |
| step_009 | Block F | A, C -> F -> H | Prove (F.1)-(F.4) for arbitrary labels and all transcripts | No utility event may enter; step-local |
| step_010 | Block G1 | C, E, and transitive B3 -> G1 -> G2 | Prove exact leaf/SOA witness, monotone irreducibility, (G.2), and empirical contradiction | Same function on \(X\), not trace representative; step-local |
| step_011 | Block G2 | B3, E, G1 -> G2 -> H/I | Instantiate exact fixed family and relative-VC event, verify (G.7), sum failures | Handles improper and infinite-class output; step-local |
| step_012 | Blocks H and I, final assembly | All completed DP/PAC/scalar outputs -> theorem | Prove (H.2)-(H.4), old arm, finite arm, minimum, all baselines, and schedule implication | No comparison arm may supply a missing new-arm proof; step-local |

## Dependency And Assumption Audit

The attempted theorem is unconditional. Its only public assumptions are the three stable setting assumptions.

| Theorem-facing condition or object | Provenance class | Producer and dependency path | Consumer(s) | Audit result |
| --- | --- | --- | --- | --- |
| \(d=0\) singleton or \(d\ge1,1\le v\le d\) | Primitive implication, derived explicitly | step_001 | All blocks/final theorem | Legal; no generated assumption |
| Parameter tuple, allocations, total fallback procedure | Derived deterministic output | step_001 | step_002-step_012 | Legal and noncircular |
| Fixed-trace premise in step_003 | Local conditional hypothesis | Condition on \(S\) and one error vector | step_003 only | Legal local hypothesis, discharged by step_002/step_004 before theorem use |
| \(E_{\rm good}\) | Derived event | step_002, step_003 -> step_004, step_005 | step_006, step_010, step_011 | Legal; failure probability allocated |
| Nonempty utility-path \(H_i^r\) | Derived from realizability | Target \(c\) has block error zero | step_006, step_007 | Legal; arbitrary-input empty cases separately totalized |
| Inclusion, lists, and irreducible leaves | Derived generated outputs | step_004/005 -> step_006 | step_007-step_011 | Legal forward flow |
| Common score-\(k\) item | Derived structural output | step_006 -> step_007 | step_008 | Legal; not a theorem assumption |
| Mechanism-good event and actual selected item | Derived randomized output | step_001/005/007 -> step_008 | step_010, step_011 | Legal; failures allocated |
| Raw sensitivity and list adjacency | Derived all-input controls | Total procedure + step_006 map -> step_009 | Privacy/final theorem | Legal; independent of utility |
| \(f=\operatorname{SOA}_{\mathcal G}\), irreducibility, empirical error | Derived object and bound | step_006/008 -> step_010 | step_011 | Legal same-target bridge |
| Fixed-family population event | Derived uniform event | step_010 + primitive i.i.d. sampling -> step_011 | step_012/final theorem | Legal; fixed family is defined before data |
| Public rate and comparison arms | Derived quantitative outputs | completed prior steps -> step_012 | Final theorem/frontier | Legal; no hidden generated assumption |

No missing derived-condition bridge was found. The local use of \(E_{\rm good}\) in step_010 has the legal forward path step_004 -> step_006 -> step_010, while step_011 directly consumes step_004 for the final probability assembly.

## Citation And Tool Audit

The source identity in all Lyu rows is arXiv:2510.00076v1, source hash b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

| Source or tool | Statement role and stable identity | Current objects and hypothesis discharge | Conclusion needed | Source-convention and object-target compatibility | Known non-output / local obligation | Affected block or Step ID |
| --- | --- | --- | --- | --- | --- | --- |
| Sauer-Shelah | Standard growth-function bound | Prediction traces of \(C\) on the fixed indexed master sample; \(1\le v\le n_0\) from step_001 | \(\Pi_C(n_0)\le(en_0/v)^v\) | Xor by fixed labels is a bijection to exact error traces; duplicate points only reduce traces | Does not prove concentration | B1 / step_002 |
| Lyu Proposition 2, prop:chernoff-sample-without-replacement | High-error relative finite-population tail | Fixed binary error vector; one marginally uniform size-\(m\) block; relative tolerance \(1/(5d)\) | (B.3) | Same indexed without-replacement convention and empirical mean | Does not supply the needed near-zero absolute upper tail | B2 / step_003 |
| Hypergeometric mgf/KL upper tail | Current-notation direct derivation | Fixed \(0/1\) finite population with \(\mu\le\gamma/3\); threshold \(\gamma/2\) | (B.4), including \(\mu=0\) | Same block and same error coordinate; no surrogate residual | Must prove KL monotonicity/minimum and constants | B2 / step_003 |
| Lyu Definition 4.2 and Lemma 4.1, def: p-decomposition and lemma: number of leaves | Valid optimal decompositions, leaf irreducibility, and list cardinality input | Nonempty \(H_i^r\), integer \(p_r\), ambient LD at most \(d\) | Leaf scale (C.4) and at most \(p_r^d2^{d^2}\) leaves | Results are uniform in \(p\), so current half-scale is legal; exact current class is consumed | Does not establish cross-stage inclusion or essentiality | C/G1 / step_006, step_010 |
| Lyu Lemma 4.3, lemma: p-decomposition | Cross-stage DDim comparison and exact SOA equality | (C.5), \(\mathcal G=H_{i_*}^{r+1}\subseteq H_i^r\), exact pair \((2p_r,p_r)\), arbitrary optimal decompositions | (D.2), and plateau actual-function equality | Source stages are \(1,\ldots,d+1\); current \(H_i^r=H_{i,\rm src}^{r+1}\); source absolute \(p\) is not copied, but theorem is uniform and current consecutive scales match exactly | Does not itself assert a common essential item without equality and arbitrary-decomposition quantification | C/D / step_006, step_007 |
| Lyu Definition 4.3 and Corollary 4.1, def: essential hypothesis and coro: essential hypotheses | Exact actual-function lists and four boundary cases | Nonempty \(H_i^r\), current \(p_r\), exact optimal-decomposition convention | List bound, legitimate transfers/support, zero-DDim list equality | Same SOA tie convention and functions on \(X\); Item 2 is same-\(p\) only; Item 3 needs equal \(2p/p\) DDim | Items 2/3 cannot erase the stage factor two or infer generic support | C/D/G1 / step_006, step_007, step_010 |
| Lyu Algorithm 1 and Lemma 3.1, algo:private sample and lemma: privacy of sparse sampling | Actual-list sampling and one-list replacement privacy | Lists of size at most \(L\), exponent \(\varepsilon_s\), \(B\ge10\log(L/\delta_{\rm SS})/\varepsilon_s\) | Actual item or \(\perp\); \((2\varepsilon_s,\delta_{\rm SS})\)-DP | Exact list tuple and exact one-coordinate replacement produced by (F.1) | Source gives no raw-record map and no nonfailure utility; current proof supplies both | E/F / step_008, step_009 |
| Lyu Algorithm 2 and Lemma 3.2, algo: abovethreshold and lemma: privacy of abovethreshold | One sensitivity-one stopped query transcript | \(q_0,\ldots,q_d\); base \(\eta\); counter budget one; external first-Above stopping | Approximate-DP prefix | Same Laplace convention; \(\eta\) conservatively instantiates source big-O; stopping is postprocessing | Accuracy, exact constant \(c_{\rm AT}\), and raw sensitivity are current obligations | E/F / step_008, step_009 |
| Adaptive/concurrent composition and postprocessing | Standard DP tools | First DP transcript; for each fixed prefix, either one uniformly DP Sparse Sample call or fixed output | (F.4) for transcript-dependent stopping | Handles different neighboring transcripts; data-independent partition is a common mixture | Must state per-prefix second mechanism and sum \(\delta\) exactly | F / step_009 |
| Lyu Lemma 4.2, lemma: Ldim-of-SOA | Structural control of exact fixed improper family | \(\widehat C_{d+1}\) in (G.4); membership from step_010 | \(\operatorname{LD}(\widehat C_{d+1})\le d\) | Exact class, same SOA convention, same functions on \(X\); no data-dependent eligible-family substitution | Does not prove membership or generalization | G2 / step_011 |
| Lyu Theorem 3 proof, thm: DP-ERM-littlestone | Empirical irreducibility contradiction pattern | Actual leaf \(\mathcal G\subseteq H_i^r\), \(n_0\)-irreducibility, all \(g\in\mathcal G\) bounded by (G.2) | (G.3) | Same master sample and same selected SOA function; internal accuracy is rescaled to \(\gamma\) | Printed theorem's probability-one amplification and tilde teacher are not consumed | G1 / step_010 |
| One-sided relative VC inequality | Standard current-notation uniform convergence | Error class \(\{{\bf1}[f\ne c]:f\in\widehat C_{d+1}\}\), VC at most \(d\), i.i.d. sample | (G.6)-(G.7) | Same selected \(f\), target \(c\), empirical and population \(0\)-\(1\) metrics | Constants and sample-threshold implication need local proof | G2 / step_011 |
| Lyu Theorem 3 and Corollary 5.1 | Structural/PAC provenance for coarse comparison arm | Independently calibrated coarse trace exponent, total mechanism, exact family, common public parameters | Old \(d^5\) DP/PAC arm | Source tilde statement is normalized by current explicit dictionary, not used as an undefined teacher | The exact old-arm algebra remains in step_012 | I / step_012 |
| Exponential mechanism plus finite-class tail | Standard direct mechanism and concentration | Finite \(C\), sensitivity-one negative error count, realizable zero-error target | (I.4)-(I.5) and pure DP | Same raw replacement and same target/risk; infinite \(C\) is expressly excluded from this arm | Must prove empirical and population tail constants | I / step_012 |

The source v1 endpoint defect is explicit: (C.1) at \(s=d+1\) is a current-notation definition by the printed formula, not a claimed source theorem. The source's literal list at stage \(r+1\) would use \(2p_r\); the branch consumes the setting-mandated \(p_r\) list. The adequacy path is uniform-in-\(p\) decomposition theory plus (C.3)-(C.4), not an assertion that the two lists coincide.

## Quantitative Dependence Audit

| Category | Declared interface and audit |
| --- | --- |
| Exposed variables | \(d,v,\alpha,\beta,\varepsilon,\delta\); \(\lvert C\rvert\) only in the separate finite-class arm |
| Hidden constants | Only universal \(K,q,C_{\rm blk},C_{\rm teach},c_{\rm tr},c_{\rm AT},C_{\rm gen}\) and fixed allocation constants; no dependence on \(X,C,D,c\), lists, stages, decompositions, events, partitions, or outputs |
| Fixed quantities | None in the main theorem; only \(\alpha,\beta,\varepsilon\) are fixed in the final class-complexity comparison |
| Probability mode | All-input DP over all internal randomness; high-probability PAC jointly over sample, partition, AT noise, and Sparse Sample randomness |
| Horizon mode | Fixed sample and a finite \(d+1\)-query transcript; no all-time, expectation-only, or conditional final claim |
| Norm/metric mode | Population binary \(0\)-\(1\) error; empirical error on the same selected function and target |
| Auxiliary quantities eliminated | \(k,m,n_0,a,Q,p_r,L,B,\eta,\varepsilon_s,\gamma,\tau_{\rm AT},\tau_{\rm SS}\), and all failure allocations |
| Failure allocation | \(\beta/4\) each for trace, AT, SS, and generalization; \(\delta/2\) each for AT and SS privacy |
| Technical-to-public bridge | (A.4)-(A.7), (B.6)-(B.8), (G.7), and (H.2)-(H.4) verify choices, conditions, ceilings, absorption, and final rate |
| Allowed hidden logarithms | Powers only of \(\Lambda\); \(G\) remains the displayed \(\log(1/(\delta\beta))\) factor up to a universal constant |
| Baseline reductions | Exact \(d=0\), \(v=d\), old-Lyu, finite/infinite-class split, and declared-schedule \(N\delta\to0\), each after common DP/PAC normalization |

The key scalar dominance relations are not prose absorptions: (A.6) is dominated by \(\bar k/2\); (B.7) is dominated by the trace exponent; (E.5) dominates the failure-symbol and effective-domain losses; (G.7) is dominated by the actual block calibration; and (H.4) exposes every structural power. Fixed positive \(\delta\) is valid for the DP/PAC theorem but is not silently treated as a sequence with \(N\delta\to0\).

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --------------------------- | -------------------------- | ---------------------- | ----------------------------- | ------------------------- | -------------------- | ----------------------------------------- | ----------------- | ------------------------------------- | ------------------------ | --------------------------- | ----------------------------------- | ---------------------------- | ---------------------------------------- | ------------------------------------ | ------------------ | ------------------ | ---------------------- | -------------------------------- |
| Boundary and exact teacher tuple | Baseline recovery; scalar existence; procedure legality | \(d=0\) stationary branch or fixed positive branch | (A.1)-(A.3), feasibility (A.2), \(k\le\bar k\) | Linear \(t/2\); explicit \(\bar k\); singleton LD argument | \(\log n,\log L,\log\alpha^{-1},\log\delta^{-1},\log\beta^{-1}\), ceilings, additive 2 | One deterministic check; no accumulated forcing | structural upper comparison and algebraic coupling | Primitive parameter ranges; direct scalar definitions; Lyu list/SS threshold only for exact numerical inputs; \(d=0\) bypasses all positive formulas | Linear score has the needed positive margin; upper/log controls alone are paired with explicit \(\bar k/2\) lower source | Produced tuple is exactly consumed tuple; zero residual | step-local | Candidate tuple exists for every \(t\); \(\bar k\) proves nonempty feasible set before least \(k\) is consumed | \(d=0\) already satisfies theorem; \(d=v=1,t=2\) is legal first candidate | (A.4)-(A.6) and \(C_{\rm teach}>4C_4\) imply feasibility | Three primitive assumptions as applicable | \(k,m,n_0,L,B\), total algorithm | \(d=0,d=v=1,v=d\), tiny \(\alpha,\delta\), ceilings pass | Undefined learner or \(B\ge k\) could force persistent \(\perp\) |
| Exact trace event and trace fixed point | Generated concentration and confidence closure | Fixed sample; conditional partition; finite union | (B.1)-(B.8) | Exponent \(c_{\rm tr}m\alpha/d^2\) | \(k\Pi_C(n_0)\), \(v\log(en_0/v)\), ceiling | Finite union only; no block-independence accumulation; scalar fixed point once | structural lower/upper comparison and reserve under finite scope | Lyu Prop. 2; direct KL tail; Sauer; primitive ranges; \(\mu=0\) handled, \(d=0\) excluded by branch | Relative source supplies high-error exponent; direct KL supplies nonvanishing low-error exponent | Exact same error vector, block, and threshold; zero residual | step-local | \(Q\) precedes \(m,n_0\); steps 002/003 precede 004/005 and consumers | Zero trace makes low-tail failure impossible; first block needs no later-block independence | (B.6)-(B.7) make exponent dominate trace/block multiplicity and \(\log(1/\beta_{\rm tr})\) | \(v,d,\alpha,\beta\), indexed sample | Trace set, per-trace tails, \(E_{\rm good}\) | Repeats, \(v=1\), \(\mu=0\), \(\mu=\gamma/3\) pass | Cross-block inclusion may fail |
| Source endpoint, half-scale lists, inclusion, and leaf scales | Source-convention bridge; membership and irreducibility export | Finite \(r=0,\ldots,d\) stages | (C.2)-(C.8); \(p_{r+1}=2p_r\) | Uniform-in-\(p\) decomposition lemmas; threshold gap; \(p_0=n_0d\) | Source endpoint omission, factor-two absolute scale, empty arbitrary-input classes | Exact finite transition; no numerical residual accumulation | algebraic coupling and structural lower/upper comparison | Binding setting fixes current \(p_r\); Lyu definitions/lemmas valid all \(p\); source endpoint directly defined; utility classes nonempty, arbitrary empty classes totalized | Consecutive scale exactly matches Lemma 4.3; leaf lower scale gives required support, not only an upper bound | Produced \(H_i^r\) equals source threshold class; produced list is the setting-mandated current-\(p_r\) list; residual to literal source list is not used; target interfaces follow from (C.3)-(C.4) | step-local | \(E_{\rm good}\) produces inclusion before source lemmas; lists/leaf witnesses precede all consumers | At \(r=0\), pair is \((2p_0,p_0)\) and \(p_0\ge n_0,d+1\) after leaf factor | (C.6)-(C.7) prove inclusion; (C.3)-(C.4) discharge factor two | finite LD; realizability only for nonempty utility path | \(E_{\rm good}\), restrictions, lists, leaves | Undefined source endpoint, empty inputs, \(d=1\), infinite \(C\) explicitly pass | Any use of literal source identity or same-\(p\) transition would invalidate DDim and membership |
| DDim descent and common actual item | Signed recurrence; finite termination; support | At most \(d\) transitions and \(d+1\) stages | If good Below and no common item, \(M_{r+1}\le M_r-1\); \(0\le M_r\le d\) | Lemma 4.3 equality case; actual SOA equality; target \(c\) at DDim zero | AT misreporting, handled separately; no structural additive forcing | Accumulated defect is zero; sign is negative; one-step charge 1; budget \(M_0\le d\) | monotone potential | step_006 inclusion/pairing; Corollary Items 1-4; realizable target; no boundary exclusion inside positive branch | Exact equality for arbitrary optimal decompositions supplies essentiality; Item 4 supplies zero-case support | Same actual function is consumed by frequency query; zero residual | step-local | step_006 precedes step_007; recurrence does not assume successful selection | If \(M_0=0\), target has score \(k\) immediately; otherwise first good Below triggers drop before \(M_1\) use | Summing gives \(M_j\le M_0-j\); nonnegativity forces score-\(k\) by stage \(d\) | finite LD, realizable target | inclusion, exact lists, \(M_r\) | \(M_0=0,M_d=0,d=1\), singleton restrictions pass | Nonnegativity alone would not produce support; source mismatch would destroy the signed drop |
| AboveThreshold/Sparse Sample actual output | Positive margin; generated selection | Finite query prefix; one optional call | (E.1)-(E.5) | Score \(k\); margin \(k/2-\tau_{\rm AT}-B-\tau_{\rm SS}\ge2\) | \(d+1\) Laplace tails, effective-domain \(kL+1\), failure symbol, ceilings | Finite union of AT tails and one SS tail; no stagewise privacy or utility accumulation | stopping/conditioning argument and structural comparison | Accepted teacher tuple; Lyu Algorithms 1/2; direct tails; no exclusion of first/last stage | Score is a positive lower source and exact margin dominates all opposing losses | Returned object is exact union-list function; \(\perp\) is excluded, not identified with a target | step-local | step_001 fixes margin and step_007 fixes score stage before step_008 | Empty first lists have \(q_0=0\) and cannot good-noise trigger; score-\(k\) first stage triggers | (E.3)+(A.2) imply selected score \(>B\) | privacy/confidence ranges | score stage, \(L,B\), noise events | Empty, false-positive, first/last success, tiny \(\delta\) pass | Persistent \(\perp\) or non-list output would break utility and membership |
| Total raw-record DP | Scope upgrade from list mechanisms to public privacy | Every labeled neighboring input; finite adaptive transcript | (F.1)-(F.4) | One raw record changes one block/list coordinate; \(q_r\) sensitivity one; conservative privacy split | Empty paths, transcript divergence, optional call, \(\perp\), default, stage exhaustion | One AT prefix plus at most one SS call; exact basic adaptive composition; no per-stage sum | stopping/conditioning argument and algebraic coupling | Fixed total procedure; Lyu Lemmas 3.1/3.2; standard adaptive composition; no realizability premise | One-list source matches exact conditional input; sensitivity supplies query hypothesis | Raw replacement maps exactly to one-list replacement; partition mixture has zero transfer residual | step-local | Totalization and RawList exist before DP; utility is not used | Arbitrary nonrealizable first query has defined lists and \(q_0\); all terminal paths output | \((\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)=(\varepsilon/2,\delta)\preceq(\varepsilon,\delta)\) | assump:approximate-dp-regime; fixed partition randomness | stage list maps and transcript | Arbitrary labels, any changed block, all Below, immediate Above, \(\perp\) pass | List-level privacy alone would not imply raw privacy; undefined failure paths could leak |
| Exact SOA identity and empirical error | Same-target membership and empirical utility | One selected item on finite good event | (G.1)-(G.3) | Leaf \(n_0\)-irreducibility; all leaf members have error \(\le2\gamma\) | Improper output, adaptive stage, repeated points | One deterministic contradiction; stochastic defects already budgeted | structural lower/upper comparison | Definition 4.3; current leaf scale; \(E_{\rm good}\); \(d\ge1\) | Irreducibility supplies nonemptiness/support after the SOA-label restriction, not mere boundedness | Produced selected function equals consumed SOA on \(X\); empirical metric/target identical; zero residual | step-local | step_006 and step_008 precede step_010; no output-family conclusion assumed | At empirical error zero conclusion immediate; at \(d=1,p_0=n_0\) support is active | Excess \(e_S(f)>2\gamma\) makes leaf restriction empty, contradicting irreducibility | finite LD and realizable labels | exact leaf witness, selected function, event | Infinite \(C\), improper \(f\), repeats, zero error pass | Trace-only membership or insufficient irreducibility would leave no same-target contradiction |
| Fixed improper family and PAC transfer | Structural class control; empirical-to-population bridge | Fixed-sample high probability uniformly over a fixed family | (G.4)-(G.8) | Lyu Lemma 4.2 gives LD/VC at most \(d\); empirical slack \(\alpha/8\) | Generalization failure; infinite family; adaptive selection | One finite uniform event; no recursive defect | structural upper comparison | Exact \(\widehat C_{d+1}\); relative VC; i.i.d. realizability | Structural source controls exactly the class containing output; no undefined eligible family | Same \(f,c\), empirical/population \(0\)-\(1\) risk; residual \(2\widehat R+\alpha/2\) is dominated by target \(\alpha\) | step-local | step_010 proves membership before step_011; family is fixed before sample | Empirical zero is inside inequality; \(d=1\) sample threshold legal | \(2(\alpha/8)+\alpha/2=3\alpha/4<\alpha\) and block size implies (G.7) | i.i.d. sampling; finite LD | membership and empirical error | Infinite \(C\), output outside \(C\), empirical zero pass | Data-dependent family or wrong irreducibility level would invalidate uniform conversion |
| New public rate and failure assembly | Quantitative specialization; final new-arm closure | Fixed-sample theorem; four finite failures | (H.1)-(H.4) | Explicit \(\bar k\), trace fixed point, exact sample definition | All auxiliaries, ceilings, confidence/privacy logs, generalization term | Finite addition; no limiting upgrade | algebraic coupling and structural upper comparison | Earlier accepted-derived controls; public parameter ranges | Explicit sources carry every structural power and displayed \(G\) factor | Technical \(n_0\) is exactly public sample size; only \(\lambda^q\) residual remains and is permitted | step-local | All DP/PAC/scalar producers precede step_012 | \(v=1,v=d\), tiny \(\alpha,\delta\) preserve inequality direction | (H.2)-(H.4); failure sum equals \(\beta\) | three primitive assumptions | completed DP/PAC/rate controls | No positive power hidden; full cube returns \(d^5\) | Unclassified \(\log n_0\) or structural factor would invalidate theorem |
| Old Lyu arm | Baseline universal comparison | Separate fixed-sample learner | (I.1)-(I.3) | Coarse exponent \(d\), explicit teacher witness, same wrappers | Same scalar/noise defects as new arm | One independent finite proof; not accumulated with new arm | algebraic coupling | Lyu structural/PAC sources plus current explicit calibration | Source gives structural mechanism; current wrapper supplies exact public interface | Separate learner has same target metric and DP/PAC parameters; no transfer into new output | step-local | Independently produced before minimum | \(v=d\) and full cube retain \(d^5\); fixed \(\delta\) only DP/PAC | Coarse trace plus teacher/block product gives \(d^5\) | three primitive assumptions | old tuple and completed wrappers | Infinite class allowed; no finite-cardinality use | Undefined tilde teacher or mismatched confidence would make minimum illegal |
| Finite-class arm and infinite disabling | Baseline comparison and domain split | Separate finite-class learner | (I.4)-(I.5) | Realizable zero-score target; finite score domain | Empirical selection tail and population tail | Two finite events; no iteration | structural upper comparison | Standard exponential mechanism and finite union; finite \(C\) explicitly required | Sensitivity one supplies privacy; target supplies score lower source | Same \(h,c\) and risks; infinite \(C\) maps only this cost to \(+\infty\) | step-local | Independent of new/old arms before minimum | Singleton handled already at \(d=0\); infinite class disables rather than approximates | Explicit \(n\) thresholds dominate both tails | finite \(C\), realizability | selected finite-class hypothesis | finite/infinite split passes | Data-dependent truncation or unnormalized arm would change theorem |
| \(d=0\), \(v=d\), frontier, and \(N\delta\) schedule | Baseline invariance and limiting comparison | Boundary branch, fixed-parameter frontier, declared asymptotic sequences | Substitute \(v=d\); (I.6); minimum only after common interface | Exact prior branch conclusions and public rate | Possible false fixed-\(\delta\) interpretation or weakened zero case | One scalar substitution and one declared-sequence implication | algebraic coupling | Binding setting and completed arms; fixed positive \(\delta\) excluded only from limit, not theorem | Sources match exact baseline claim classes | Scalar equality/inequality; no object residual | step-local | Completed arms precede comparisons | \(d=0\) already exact; \(v=d\) gives no claimed saving | \(0\le N\delta\le\delta K\Lambda^qR_{\rm VC}\to0\) on declared schedule | binding definitions | final rates | \(d=v=1,v=d\), fixed versus vanishing \(\delta\) pass | Weaker remainder or fixed-\(\delta\) limit would violate baseline contract |

Every row has a nonvacuous source and an exact local interface. The only accumulated recurrence is (D.3), whose defect has controlled negative sign, one-step charge one, and budget at most \(d\). The only adaptive scope is Block F, whose per-prefix DP relation and one-call budget are explicit. No row relies on a category-only closure label.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| ----------------------------------- | -------------------------- | ------------------------------------ | ----------------------------------------------- | --------------------------- | ---------------------------------------------------------- | ---------------------------------- | --------- | ----------------------------- |
| \(d=0\) learner; legal positive branch | A / step_001 | Nonempty \(C\), finite LD, parameter ranges | No generated defect; positive formulas bypassed | Unique output equals target; zero residual | Distinct functions would shatter depth one | Nonemptiness and \(d=0\) | Final theorem; all positive steps | valid |
| Exact integer \(k,m,n_0,L,B\) and margin | A / step_001 | Candidate tuple for each \(t\); explicit \(\bar k\) | All logs, list exponent, privacy factors, and ceilings controlled; none uncontrolled | Exact tuple defines learner and public \(N\) | (A.4)-(A.7), \(k/2-\tau_{\rm AT}\ge B+\tau_{\rm SS}+2\) | Linear score and universal \(C_{\rm teach}\) | All parameter consumers | valid |
| VC error-trace count | B1 / step_002 | Fixed indexed \(S\), \(1\le v\le n_0\) | Infinite cardinality and duplicate traces removed | Exact vectors consumed in B2/B3 | Xor bijection and Sauer-Shelah | Positive \(v\) branch | step_004, step_005 | valid |
| Exact \(E_{\rm good}\) with \(\beta_{\rm tr}\) budget | B2/B3 / step_003-step_005 | Per-trace tails, trace count, \(a,Q,m\) | High/low tails, finite multiplicity, ceiling controlled; block dependence irrelevant | Same errors and thresholds consumed by C/G | (B.5)-(B.8) | \(C_{\rm blk}\) and exponent | step_006, step_010, step_011 | valid |
| Current \(H_i^r,p_r\), inclusion, lists, and leaf witness | C / step_006 | \(E_{\rm good}\), binding \(p_r\), uniform-in-\(p\) source results | Endpoint and factor-two residual controlled; empty arbitrary classes totalized | Current list is not asserted equal to literal source \(2p_r\) list; exact target list and both irreducibility scales follow from (C.3)-(C.4) | (C.5)-(C.7), Lemma 4.3 pair, leaf lower scale | Threshold gap and \(p_0=n_0d\) | step_007-step_011 | valid |
| Score-\(k\) actual function | D / step_007 | Inclusion, exact lists, \(M_r\), target \(c\) | AT noise deferred to E; no structural forcing | Same actual function is counted by \(q_r\) | (D.2)-(D.4), Item 4 at zero | Integer potential and realizable target | step_008, step_010 | valid |
| Actual selected list item, not \(\perp\) | E / step_008 | Score-\(k\) stage, \(L,B\), teacher margin | AT/SS finite tails controlled; off-event default remains only failure | Exact union-list function consumed in G | (E.3)-(E.5) | Teacher slack at least 2 | step_010, step_011 | valid |
| All-input \((\varepsilon,\delta)\)-DP | F / step_009 | Total procedure, one-block locality, sensitivity one, source privacy bounds | Transcript divergence, optional call, defaults, arbitrary labels controlled; no utility defect enters | Exact raw replacement transfers to exact one-list replacement | (F.1)-(F.4) and adaptive composition | Conservative privacy allocation | step_012, final theorem | valid |
| Exact \(f=\operatorname{SOA}_{\mathcal G}\in\widehat C_{d+1}\), \(\widehat R\le\alpha/8\) | G1 / step_010 | Actual list item, leaf witness, (C.4), \(E_{\rm good}\) | Improperness, repeats, adaptive stage controlled | Produced and consumed function identical on \(X\); same target/risk | (G.2) plus irreducibility contradiction | \(n_0\)- and \(d+1\)-leaf scales | step_011 | valid |
| Population error \(<\alpha\) | G2 / step_011 | Exact fixed family, VC at most \(d\), empirical slack, i.i.d. sample | Generalization failure only; infinite family controlled by VC | Same \(f,c\); residual \(2\widehat R+\alpha/2\le3\alpha/4\) | (G.6)-(G.7) | Empirical \(\alpha/8\) slack and block calibration | step_012, final theorem | valid |
| New public rate | H / step_012 | Exact teacher envelope, fixed point, DP/PAC outputs | All auxiliaries and ceilings controlled; only allowed \(\lambda^q\) remains | Exact learner size equals public \(N\) | (H.2)-(H.4) | Public parameter ranges | Final theorem | valid |
| Old-Lyu public arm | I / step_012 | Coarse trace exponent and complete independent dictionary | Same log/noise classes controlled independently | Same public DP/PAC interface; no new-arm residual | (I.1)-(I.3) | Explicit old teacher witness | Frontier | valid |
| Finite-class arm and frontier baselines | I / step_012 | Finite \(M\), exponential mechanism, completed arms, declared schedule | Two finite tails; infinite arm cost \(+\infty\); fixed-\(\delta\) limit not claimed | Each arm independently targets same risk/privacy; scalar baselines exact | (I.4)-(I.6), substitution \(v=d\) | Realizable zero-score target and binding schedule | Final frontier | valid |

No exported interface requires a new bridge, changed dependency, changed target, or unexposed defect split. In particular, the half-scale variant exports its own setting-mandated list, rather than trying to transfer an unproved property of the literal source list.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --------------------------- | -------------------------- | ----------------------------- | --------------- | ---------------- | ----------- |
| Boundary learner, allocations, total procedure | A / step_001 | Every positive block and final \(d=0\) branch | step_001 -> all consumers | derived | valid |
| Exact teacher tuple and selection margin | A / step_001 | B, C, E, F, H | step_001 -> parameter consumers | derived | valid |
| Error-trace family | B1 / step_002 | B3 / step_004-step_005 | step_001 -> step_002 -> step_004/005 | derived | valid |
| Per-trace high/low deviations | B2 / step_003 | B3 / step_004 | step_001 -> step_003 -> step_004 | derived | valid |
| \(E_{\rm good}\) and trace budget | B3 / step_004-step_005 | C, G1, G2 | step_002/003 -> step_004/005 -> step_006 -> step_010; and step_004/005 -> step_011 | derived | valid |
| Endpoint definition and source/current stage map | C / step_006 | C inclusion, D, G1 | step_004/005 -> step_006 -> consumers | derived | valid |
| Exact current lists and irreducible leaf witnesses | C / step_006 | D, E through D, F list map, G1 | step_006 -> step_007/009/010 | derived | valid |
| DDim recurrence and score-\(k\) item | D / step_007 | E / step_008; G1 support context | step_006 -> step_007 -> step_008/010 | derived | valid |
| AT good event and actual Sparse Sample item | E / step_008 | G1/G2 and utility assembly | step_001/005/007 -> step_008 -> step_010/011 | derived | valid |
| RawList, sensitivity-one queries, and all-input DP | F / step_009 | H/final theorem | step_001/006 -> step_009 -> step_012/final | derived | valid |
| Exact SOA witness, two irreducibility levels, empirical error | G1 / step_010 | G2 / step_011 | step_006/008 -> step_010 -> step_011 | derived | valid |
| Fixed-family membership and population utility event | G2 / step_011 | H/I/final theorem | step_004/005/008/010 -> step_011 -> step_012 | derived | valid |
| New public rate and failure assembly | H / step_012 | Final theorem/frontier | all new-arm producers -> step_012 -> final | derived | valid |
| Old and finite comparison-arm guarantees | I / step_012 | Final frontier | independent local wrappers -> step_012 -> final | derived | valid |
| \(d=0,v=d\), infinite-class, and schedule baselines | A/H/I / step_001, step_012 | Final theorem/frontier | completed arms -> baseline substitutions -> final | derived | valid |

Every theorem-facing generated output has an earlier producer, a forward dependency path, and an exact final use. No archival or stale global artifact appears in any path.

## Early Obstruction And Repair Plausibility

- Contract contradiction: none found. The exact setting fixes the current stage parameters and total learner, and every final claim uses only the three primitive assumptions.
- Repaired Lyu mapping: source stages are \(1,\ldots,d+1\), source scales are \(p_{s,\rm src}=2^sn_0d\), current classes satisfy \(H_i^r=H_{i,\rm src}^{r+1}\), and current scales remain \(p_r=2^rn_0d\). This is a factor-two list variant, not literal pair identity. It passes because source decomposition results are uniform in \(p\), the only transition consumed is exactly \((2p_r,p_r)\), and (C.4) reaches both target irreducibility scales.
- Endpoint stress: v1 does not define \(H_i^{d+1}\) in its displayed range. The accepted sketch legally defines it by the same printed threshold formula and proves the only consumed inclusion directly. No endpoint theorem is fabricated.
- Teacher/fixed-point stress: \(Q(t)\) is independent of \(m(t),n(t)\); \(\bar k\) exists before least-feasible \(k\); the linear score dominates list, failure-symbol, effective-domain, AT, privacy, confidence, \(\alpha\), \(n_0\), and ceiling defects through explicit inequalities.
- Corollary 4.1 stress: Items 2 and 3 are used only under their exact equality hypotheses; the DDim-zero common item comes from Item 4 plus the common target, not from DDim nonnegativity.
- Accumulation stress: trace and confidence losses are finite unions; DDim has the concrete negative recurrence (D.3) with budget \(d\); AT is stopped after one Above; SS is called once; privacy uses one adaptive composition. No persistent unknown-sign term remains.
- Totality and adjacency stress: the first query, empty restrictions/lists, all-Below transcript, immediate Above, \(\perp\), default, and stage exhaustion are defined on arbitrary nonrealizable inputs. One raw replacement changes one block/list coordinate at every fixed-partition stage.
- Output-target stress: the selected function is an actual SOA of an actual leaf and belongs to exactly \(\widehat C_{d+1}\). No trace quotient, surrogate family, properness assumption, or finite-cardinality assumption is introduced.
- Boundary stress: \(d=0\) is exact; \(d=v=1\) has \(p_0=n_0\ge2\) and one legal transition; \(v=d\) restores \(d^5\); infinite \(C\) is handled by trace/list/VC finiteness; fixed positive \(\delta\) is separated from the declared vanishing schedule.
- Baseline invariance: all old-Lyu, finite-class, full-cube, zero-dimensional, infinite-class, and \(N\delta\) conclusions are preserved on their original interfaces, not replaced by a stopped or remainder-only surrogate.
- Same-setting repair plausibility: no repair is presently required. Failure of (A.6), the factor-two source wrapper, RawList, exact SOA membership, or the old-arm normalization during local proof would expose a sketch/interface defect and must route back to /proof-sketch rather than be patched locally. At diagnostic granularity, each has a valid unchanged-sketch interface and nonvacuous source.
- Idea-level screen: no candidate idea/theorem-contract defect was found. No evidence presently requires a new primitive assumption, changed algorithm, narrowed class scope, changed metric or probability mode, hidden structural dependence, changed success criterion, or weakened conclusion.

## Global Gaps And Hard Steps

All remaining gaps are step-local under the unchanged accepted sketch.

1. step_001: prove the scalar closure. Local units should include a ceiling/log lemma for \(n(\bar k)\), a list-log lemma for \(L(\bar k)\), a margin proposition proving (A.6), a feasible-witness/minimality corollary, and a total-procedure/boundary proposition.
2. step_002: prove the indexed xor trace identity and Sauer-Shelah bound, including \(n_0\ge v\), repeated points, and infinite \(C\).
3. step_003: prove the exact high-error Proposition-2 instantiation and the one-sided hypergeometric/KL lemma, including \(\mu=0\), \(\mu=\gamma/3\), and the common \(m\alpha/d^2\) exponent.
4. step_004: prove the conditional finite union and tower-property statement without independence.
5. step_005: prove (B.6)-(B.8) with the ceiling and exact \(\beta_{\rm tr}\) allocation.
6. step_006: prove the endpoint wrapper, threshold inclusion, factor-two Lemma 4.3 preflight, exact current-list identity, all four Corollary 4.1 cases, leaf-scale inequality, and irreducibility monotonicity. This is the highest-risk source-interface step.
7. step_007: prove the arbitrary-optimal-decomposition plateau argument, actual essentiality in every list, the strict integer recurrence, and the Item-4 zero case.
8. step_008: prove both AT accuracy directions, the finite effective-domain inequality, and exclusion of \(\perp\) from the exact teacher margin.
9. step_009: prove RawList and max-frequency sensitivity, then write the per-transcript adaptive-composition proof and partition-mixture DP inequality for every terminal path.
10. step_010: prove the exact leaf/SOA witness, both irreducibility levels, the full-master bound for every leaf member, and the empty-restriction contradiction.
11. step_011: instantiate Lemma 4.2 for the exact fixed family, prove VC \(\le d\), state/prove the one-sided relative-VC form, verify (G.7) from the actual \(m\), and assemble the four failures.
12. step_012: prove the public substitutions with ceilings, independently rerun the coarse old-arm calibration, prove the finite-class arm, and verify all common-interface and boundary comparisons.

These are not invitations to change claims or dependencies. In particular, step_006 must prove the accepted half-scale interface, step_009 must use the fixed total procedure, and step_012 must retain every displayed dependence and baseline.

## Diagnostic Boundary Note

This global_proof.md is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, generated-output flow, theorem scope, rate, or conclusion. Each local unit and source instantiation above must be independently proved and accepted by the corresponding proof-step review.

## Suggested Routing

None

Continue to all proof steps in dependency order. Prove step_001 through step_005 before the highest-risk source-interface proof step_006; then continue step_007 through step_012. The controller must run /global-proof-review before any step proof consumes this diagnostic.
