# Proof Sketch

## Formalized Setting

The binding setting is `perspective_2/idea_3/setting.md`, SHA-256
`13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`.
Let (C\subseteq\{0,1\}^X) be nonempty and possibly infinite, and write
\[
v:=\operatorname{VC}(C)\le d:=\operatorname{LD}(C)<\infty.
\]
The only primitive conditions are `assump:finite-littlestone`,
`assump:realizable-iid`, and `assump:approximate-dp-regime`. Utility is
distribution-free realizable PAC utility. Privacy is replacement-adjacency
central approximate DP on every labeled input, including nonrealizable inputs.
The learner may be improper and computationally unbounded.

For (d=0), the learner returns the unique member of (C) with no data. For
(d\ge1), set the internal empirical tolerance
\[
\gamma:=\alpha/16,
\]
and use the exact integer teacher count and total procedure fixed below. Once
(k) is fixed, retain the setting's calibration
\[
a:=v+\log(4k/\beta),\qquad
Q:=e+\frac{e k d^2a}{\alpha v},
\]
\[
m:=\left\lceil C_{\rm blk}\frac{d^2}{\alpha}a\log Q\right\rceil,
\qquad n_0:=km,\qquad N:=n_0,
\]
where the universal (C_{\rm blk}) absorbs the fixed conversion from
(\alpha) to (\gamma). A data-independent uniform partition of the indexed
master sample into (k) blocks of size (m) is reused at all stages.

## Formalized Goal

This is exact-goal mode with progress type `material_partial`. Prove universal
(K\ge1) and (q\in\mathbb N_0) such that the total learner fixed below is
((\varepsilon,\delta))-DP and, for every (D) and (c\in C),
\[
\Pr\!\left[\operatorname{err}_D(A_C^{\rm VC\text{-}Lyu}(S),c)>\alpha\right]
\le\beta,
\]
using (N=0) for (d=0) and, for (d\ge1),
\[
N\le K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
\left[
\frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}
     {\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha}
\right].
\]
The only quantitative change to Lyu's PAC construction is the conditional
VC-trace bound
\[
\Pr_{\mathcal P}(E_{\rm good}^c\mid S)
\le 4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}.
\tag{Trace}
\]
Every event, restriction, list, common item, selected-output identity,
sensitivity statement, privacy conclusion, and generalization conclusion is a
derived obligation, not a theorem assumption.

## Sketch Identity

- Sketch attempt: 3
- Producer unit attempt: 1
- Retry mode: `revise_sketch`
- Trigger: `proof_steps/step_011/review.md`, SHA-256 `832fde03cc549542bc701a1e7b653ff8c0a6b38a7c1dd16d488b856f26f87751`
- Trigger status and target: `REVISE_SKETCH`, `/proof-sketch`
- Search mode: OPEN
- Selected framework: VC-trace recalibration of Lyu's fixed-block DP-ERM, with the exact factor-two stage bridge, total all-input extension, and a measurable block-local finite-reconstruction PAC bridge
- Repair scope: `step_001`-`step_010` retain their attempt-2 claims and interfaces; `step_011` replaces only the invalid generalization interface, and `step_012` uses that same replacement for the old-Lyu comparison arm
- Step count: 12

## Proof Roadmap

### Exact source preflight and current-object map

The primary source is Xin Lyu, *Private Learning of Littlestone Classes,
Revisited*, arXiv:2510.00076v1. The source statements used here are Proposition
2 (`prop:chernoff-sample-without-replacement`), Definition 4.2
(`def: p-decomposition`), Lemma 4.1 (`lemma: number of leaves`), Lemma 4.2
(`lemma: Ldim-of-SOA`), Lemma 4.3 (`lemma: p-decomposition`), Definition 4.3
(`def: essential hypothesis`), Corollary 4.1
(`coro: essential hypotheses`), Algorithm 1 (`algo:private sample`), Lemma 3.1
(`lemma: privacy of sparse sampling`), Algorithm 2
(`algo: abovethreshold`), Lemma 3.2 (`lemma: privacy of abovethreshold`),
Theorem 3 (`thm: DP-ERM-littlestone`), and Corollary 5.1
(`coro: PAC learning`).

For the indexed master sample, write (I_i\subseteq[n_0]) for the index set of
source block (S_i), and put
\[
e_S(h):=\frac1{n_0}\sum_{u=1}^{n_0}{\bf1}\{h(x_u)\ne y_u\},
\qquad
e_i(h):=\frac1m\sum_{u\in I_i}{\bf1}\{h(x_u)\ne y_u\}.
\]
The exact generated event consumed below is
\[
E_{\rm good}:=
\bigcap_{h\in C}\bigcap_{i=1}^k
\left(
\{e_S(h)>\gamma/3\Rightarrow
|e_i(h)-e_S(h)|\le e_S(h)/(5d)\}
\cap
\{e_S(h)\le\gamma/3\Rightarrow e_i(h)\le\gamma/2\}
\right)
\tag{Good}
\]
The event is over all (h,i) simultaneously. It is an event for (C), not for
the eventual improper output class.

Put (\rho:=1-1/(2d)). Lyu's source-stage formula, extended exactly as used
by its (d+1)-stage algorithm, is
\[
H_{i,{\rm src}}^s
:=\{h\in C:\operatorname{err}_{S_i}(h)\le \rho^s\gamma\},
\qquad s=1,\ldots,d+1,
\tag{S-H}
\]
The v1 display introduces this formula for (j\in[d]), while the immediately
following algorithm runs stages (1,\ldots,d+1) and consumes (H_i^{j+1}).
Equation (S-H) is the explicit current-notation totalization of that endpoint
by the same displayed formula; it is a wrapper, not a separately stated source
theorem.
with source decomposition scale
\[
p_{s,{\rm src}}:=2^s n_0d.
\tag{S-p}
\]
The branch convention required by `setting.md` is (r=0,\ldots,d). Define
\[
H_i^r:=H_{i,{\rm src}}^{r+1},\qquad
p_r:=2^r n_0d=\tfrac12p_{r+1,{\rm src}}.
\tag{B-map}
\]
This is not asserted to be a mere relabeling of the source pair
((H,p)). It is a complete factor-two bridge: (p_{r+1}=2p_r), so every
transition invokes Lemma 4.3 with
\[
\mathcal G=H_{i_*}^{r+1},\quad
\mathcal H=H_i^r,\quad
(2p,d)=(p_{r+1},d),\quad (p,d)=(p_r,d).
\tag{Pair}
\]
The smaller starting scale loses no consumed conclusion. Every maximal leaf of
an optimal ((p_r,d))-decomposition is
(p_r2^{d-t}\)-irreducible, where (t) is its Littlestone dimension, and
\[
p_r2^{d-t}\ge p_0=n_0d\ge\max\{n_0,d+1\}.
\tag{Irred}
\]
Thus each selected leaf SOA has both the (n_0)-irreducibility used by the
empirical-risk contradiction and the ((d+1))-irreducibility used by Lemma 4.2.
The implication from (K)-irreducibility to every shorter length (ell\le K)
is a direct wrapper: extend an ell-point sequence to length (K). Restriction
can only decrease Littlestone dimension, while the final (K)-restriction has
the original dimension, forcing equality already after the first (ell)
restrictions.

For a nonempty class (H\subseteq C), let
\(\operatorname{Ess}_{p,d}(H)\) be the exact set of actual functions that are
((p,d))-essential in Definition 4.3. Define it to be empty when (H=\varnothing).
The stage lists are
\[
\mathcal L_i^r:=\operatorname{Ess}_{p_r,d}(H_i^r),
\qquad
|\mathcal L_i^r|\le L_r:=p_r^d2^{d^2}.
\tag{Lists}
\]
Equality in lists means equality as functions on (X), never equality only on
the master-sample trace.

The exact source-to-current interfaces and non-outputs are:

| Source statement | Current object map and discharged hypotheses | Exact conclusion consumed | Known non-output boundary / wrapper |
| --- | --- | --- | --- |
| Proposition 2 and source (E_{\rm good}) | Fixed indexed error vector; one marginally uniform block; internal tolerance (\gamma) | High-error relative deviation | The low-error absolute tail is supplied by the current finite-population KL derivation in `step_003` |
| Lemma 4.3 | The inclusion (H_{i_*}^{r+1}\subseteq H_i^r) and the exact pairing (Pair) | DDim comparison and exact identity (\operatorname{SOA}_{G_v}=\operatorname{SOA}_{H_u}) as functions | It does not itself create an essential item unless equality of dimensions is established |
| Corollary 4.1 | Nonempty (H_i^r), exact lists (Lists), and (p_r) | List envelope; equal-DDim inheritance; nonempty essential support; at DDim zero, the list is exactly (H_i^r) | Nonnegativity of DDim alone does not imply common support; realizability supplies a common (c) in the zero case |
| Algorithm 1 and Lemma 3.1 | At most (L) actual functions per list, exponent parameter (\varepsilon_s), and (B\ge10\log(L/\delta_s)/\varepsilon_s) | Actual-list item or (\perp); ((2\varepsilon_s,\delta_s))-DP under one-list replacement | Nonfailure and effective-domain utility are proved below; the lemma does not map raw records to lists |
| Algorithm 2 and Lemma 3.2 | Sensitivity-one stage queries, one process, first-Above stopping, counter budget one | Approximate-DP transcript | Accuracy and raw-record sensitivity are current wrappers |
| Lemma 4.2 | The exact fixed class (\widehat C_{d+1}:=\{\operatorname{SOA}_G:G\subseteq C\text{ is }(d+1)\text{-irreducible}\}) | (\operatorname{LD}(\widehat C_{d+1})\le d) | It says nothing about selected-output membership, permissibility, separability, a measurable supremum, or PAC generalization; `step_010` proves membership and `step_011` does not infer uniform convergence from VC dimension alone |
| Algorithm 1 finite state plus direct one-sided Chernoff | At the selected stage, an actual output belongs to a finite list tuple; each list is generated from its own block only | A measurable analysis-only occurrence mark and a finite conditional candidate union, followed by a lower-tail bound on the independent complement | The mark is not released and does not change the output law; no uncountable supremum event, outer-Fubini step, or generic measurable-VC theorem is used |
| Theorem 3 and Corollary 5.1 | Same essential SOA identity, empirical-error contradiction, fixed improper class, and public PAC objective | Empirical utility and comparison-arm provenance | The printed generic PAC wrapper is not consumed as a measurability theorem; `step_011` supplies the block-local finite-reconstruction conversion and `step_012` closes the public rates explicitly |

### Exact allocations and coupled teacher definition

Use
\[
\beta_{\rm tr}=\beta_{\rm AT}=\beta_{\rm SS}=\beta_{\rm gen}=\beta/4,
\qquad
\delta_{\rm AT}=\delta_{\rm SS}=\delta/2.
\tag{Alloc}
\]
Let (c_{\rm AT}\ge1) be a universal constant witnessing the big-(O) in
Lyu's Lemma 3.2, and put
\[
g_\delta:=\log(4/\delta),\qquad
\eta:=\frac{\varepsilon}
{4c_{\rm AT}(\sqrt{g_\delta}+g_\delta)},
\qquad \varepsilon_s:=\varepsilon/8.
\tag{PrivPar}
\]
Then the AboveThreshold prefix costs at most ((\varepsilon/4,\delta/2)),
and Sparse Sample costs ((\varepsilon/4,\delta/2)).

The teacher count is pinned without circular shorthand. For each integer
(t\ge2), define
\[
a(t):=v+\log(4t/\beta),\quad
Q(t):=e+\frac{e t d^2a(t)}{\alpha v},
\]
\[
m(t):=\left\lceil C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)\right\rceil,
\quad n(t):=t m(t),\quad p_d(t):=2^dn(t)d,
\]
\[
L(t):=p_d(t)^d2^{d^2},
\quad
B(t):=\left\lceil\frac{10\log(L(t)/\delta_{\rm SS})}{\varepsilon_s}\right\rceil,
\tag{BL}
\]
\[
\tau_{\rm AT}:=\eta^{-1}\log\frac{d+1}{\beta_{\rm AT}},
\qquad
\tau_{\rm SS}(t):=\varepsilon_s^{-1}
\log\frac{tL(t)+1}{\beta_{\rm SS}}.
\tag{Noise}
\]
Define the exact integer teacher count by
\[
k:=\min\left\{t\in\mathbb N:t\ge2,
\quad \frac t2-\tau_{\rm AT}
\ge B(t)+\tau_{\rm SS}(t)+2\right\}.
\tag{Teacher}
\]
This pins the previously tilde-specified source-valid teacher count. Its only
(\alpha)-dependence is the explicitly displayed logarithmic dependence
through (n(t)) and (L(t)); it is not suppressed as an (n_0)-dependent
constant.
Accordingly, the setting's notation (k_{\rm Lyu}(d,\beta,\varepsilon,\delta))
is used as the name of the source-valid tilde-order teacher count, not as a
claim that its unresolved logarithmic implementation is independent of
(\alpha). Equation (Teacher) resolves that permitted logarithmic dependence
without changing a positive power, stage, list, or mechanism.

To witness nonemptiness and the public envelope, set
\[
G:=\log\frac{64}{\delta\beta},\qquad
\lambda:=\Lambda(d,v,\alpha,\beta,\varepsilon,\delta),
\]
\[
\bar k:=\left\lceil
C_{\rm teach}\frac{d^2G\lambda^2}{\varepsilon}
\right\rceil.
\tag{Kbar}
\]
Direct monotone scalar estimates give
\[
\log \bar k\le C_1\lambda,qquad
\log n(\bar k)\le C_2\lambda,qquad
\log L(\bar k)\le C_3d^2\lambda.
\tag{LogClosure}
\]
Consequently
\[
\tau_{\rm AT}+B(\bar k)+\tau_{\rm SS}(\bar k)
\le C_4\frac{d^2G\lambda^2}{\varepsilon}.
\tag{MarginBound}
\]
Choosing universal (C_{\rm teach}>4C_4) makes (\bar k) feasible in
(Teacher), so (k\le\bar k). This is the complete
(k\leftrightarrow n_0=km\leftrightarrow\log L) closure. The local proof in
`step_001` checks ceilings, monotonicity, and nonemptiness before any trace
step consumes (k,m,n_0). It does not discover a new interface later.

### Total all-input procedure fixed before privacy

Fix once and for all a data-independent (h_0\in C). On every ordered labeled
input (s\in(X\times\{0,1\})^{n_0}), realizable or not:

1. Draw a uniform random permutation of the (n_0) indices independently of
   the data and use it to form (k) blocks of size (m).
2. For every (r=0,\ldots,d), form (H_i^r) by (S-H)-(B-map). If it is empty,
   set (\mathcal L_i^r=\varnothing); otherwise use the exact list (Lists).
3. Define
   \[
   q_r:=\max_{f\in\cup_i\mathcal L_i^r}
   |\{i:f\in\mathcal L_i^r\}|,
   \qquad \max\varnothing:=0.
   \]
   Submit (q_0,q_1,\ldots,q_d) to one Lyu Algorithm 2 process with base
   parameter (\eta), threshold (k/2), counter budget one, and external
   stopping at the first `Above` transcript.
4. At the first `Above` stage (r_*), call Lyu Algorithm 1 exactly once on
   ((\mathcal L_1^{r_*},\ldots,\mathcal L_k^{r_*})) with
   ((\varepsilon_s,B(k))). If it returns an actual function, output that
   function. If it returns (\perp), output (h_0).
5. If every stage is `Below`, output (h_0).

Thus empty restrictions, empty lists, the first query, stage exhaustion,
(\perp), no-success transcripts, and the final output are defined before any
privacy or realizable-utility argument. These choices agree with the source
procedure on its successful realizable path and merely totalize its omitted
failure paths.

For a fixed partition (P), write
\[
F_r^P(s):=(\mathcal L_1^r(s),\ldots,\mathcal L_k^r(s)).
\]
If (s,s') differ in raw record index (u), and (u) lies in block (b(P)),
then, for every stage and every transcript prefix,
\[
F_r^P(s)_i=F_r^P(s')_i\quad(i\ne b(P)),
\qquad
|q_r(s)-q_r(s')|\le1.
\tag{RawList}
\]
Conditioned on any common transcript that selects stage (r_*), the two Sparse
Sample inputs (F_{r_*}^P(s)) and (F_{r_*}^P(s')) differ in at most that same
one list coordinate. This is the exact raw-replacement-to-list interface used
by adaptive composition.

### Measurable occurrence mark and block-local reconstruction bridge

The repaired PAC interface uses the finite state already consumed by Sparse
Sample; it does not use a supremum over the possibly uncountable class
(\widehat C_{d+1}). Fix a partition (P). On a path where Sparse Sample returns
an actual function (f) at stage (r), put
\[
I_r(f):=\{i\in[k]:f\in\mathcal L_i^r\}.
\tag{Occ}
\]
This set is nonempty. Augment the analysis probability space, without
releasing anything or changing the marginal law of (f), by drawing a mark
(J) uniformly from (I_r(f)); put (J=0) on every non-actual-output path. This
is a measurable finite-state lift of the exact Sparse Sample kernel: the
source mechanism already evaluates the same membership indicators and
(|I_r(f)|=\operatorname{score}_r(f)) to assign the selected item's weight.
Equivalently, the lifted kernel assigns mass
(\kappa(f)/|I_r(f)|) to each marked pair ((f,i)) when the source kernel assigns
mass (\kappa(f)) to (f). Projection onto (f) is exactly the unchanged learner.

For every block and every block realization define only sectionwise
\[
\mathcal U_i(S_i):=\bigcup_{r=0}^d\mathcal L_i^r(S_i),
\qquad |\mathcal U_i(S_i)|\le(d+1)L(k).
\tag{BlockUnion}
\]
All stages in this union are fixed before the other blocks are inspected:
(\mathcal U_i(S_i)) depends on (S_i), (C), and public scalars, but not on
(S_{-i}) or on the selected stage. Conditional on the data-independent
partition, (S_i) is an iid block of size (m), (S_{-i}) is an independent iid
sample of size ((k-1)m), and the random selected stage and output may still
depend arbitrarily on (S_{-i}). The finite union in (BlockUnion) handles that
adaptivity.

Let
(\mathcal E_{\rm core}:=E_{\rm good}\cap\mathcal E_{\rm AT}\cap\mathcal E_{\rm SS}).
On (\mathcal E_{\rm core}), `step_008` and `step_010` give an actual output
(\widehat f), its marked producer (J\in[k]), and
(e_S(\widehat f)\le\alpha/8). If (J=i), then
(\widehat f\in\mathcal U_i(S_i)) and
\[
e_{S_{-i}}(\widehat f)
\le \frac{n_0}{n_0-m}\frac{\alpha}{8}
=\frac{k}{8(k-1)}\alpha\le\frac\alpha4.
\tag{Holdout}
\]
For a fixed (S_i=s_i) and a fixed (f\in\mathcal U_i(s_i)) with
(\operatorname{err}_D(f,c)>\alpha), the indicators on (S_{-i}) are iid
Bernoulli with mean (p>\alpha). A local exponential-Markov proof of the
one-sided multiplicative lower tail gives
\[
\Pr\!\left[e_{S_{-i}}(f)\le\frac\alpha4\right]
\le \Pr[\operatorname{Bin}((k-1)m,p)\le p(k-1)m/4]
\le \exp\!\left(-\frac9{32}\alpha(k-1)m\right).
\tag{LowerTail}
\]
This is the correct lower-tail statement needed by the proof; the false
factor-one two-sided statement printed as Lyu Proposition 1 is not cited.

The measurability routing is part of the interface. For (i\in[k]), let
(\mathcal H_i) be the intersection of (\mathcal E_{\rm core}), the measurable final
learner-error event, and the discrete marked-trace event (\{J=i\}). Apply
Fubini only to the measurable indicator of (\mathcal H_i). For each fixed
producer-block section (s_i), that section is contained in the finite union
of the measurable complement-sample events in (LowerTail), over
(\mathcal U_i(s_i)). It follows that
\[
\Pr(\mathcal H_i\mid P)
\le(d+1)L(k)\exp\!\left(-\frac9{32}\alpha(k-1)m\right).
\tag{Section}
\]
No joint measurability of the set-valued map
(s_i\mapsto\mathcal U_i(s_i)) is asserted or needed, and no pointwise
conditional bound is promoted to product outer probability. The left side
is a section of an already measurable marked learner event. Summing the
disjoint mark values and then averaging over (P) gives
\[
\Pr\!\left[\mathcal E_{\rm core}\cap
\{\operatorname{err}_D(\widehat f,c)>\alpha\}\right]
\le k(d+1)L(k)
\exp\!\left(-\frac9{32}\alpha(k-1)m\right).
\tag{Compression}
\]

The accepted constant (C_{\rm blk}=2^{20}) closes this failure without a new
sample term. From the definitions, (m\le2C_{\rm blk}d^2a\log Q/\alpha) and
(n_0\le2C_{\rm blk}dQ\log Q/e), whence
\[
\log L(k)\le20d^2a\log Q,
\qquad
\log\frac{4k(d+1)L(k)}\beta\le22d^2a\log Q.
\tag{CompressionLog}
\]
Since (k\ge2) and
((9/32)\alpha(k-1)m\ge(9/32)2^{20}d^2a\log Q),
(Compression) is at most (\beta_{\rm gen}=\beta/4). This finite
reconstruction argument survives a Durst--Dudley VC-one pathology: it never
forms the pathological uncountable supremum event, and every conditional
candidate union is actually finite. If the marked finite-state lift were not
measurable, the exact Sparse Sample learner itself would lack the score-state
kernel it already uses; the repair does not add a permissibility assumption.
Finally, finite subadditivity charges exactly
(\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS},\beta_{\rm gen})=(\beta/4,\beta/4,\beta/4,\beta/4)); no independence or outer-probability conversion is used.

### Main proof flow

Condition on the full indexed master sample before drawing the partition. Xor
with the fixed label vector bijects prediction traces and error traces, so
Sauer--Shelah replaces the coarse (n_0^d) count by
(\Pi_C(n_0)\le(en_0/v)^v). Lyu's relative without-replacement bound and a
one-sided finite-population KL bound give the two exact clauses of
(E_{\rm good}). A finite union bound and the setting's ceiling-aware scalar
fixed point prove (Trace).

On (E_{\rm good}), threshold algebra gives
(H_i^{r+1}\subseteq\cap_{i'}H_{i'}^r). Explicitly, for
(0\le r\le d-1), if (e_S(h)\le\gamma/3), then
\[
e_{i'}(h)\le\gamma/2\le\rho^d\gamma
\le\rho^{r+1}\gamma.
\tag{Incl-low}
\]
If (e_S(h)>\gamma/3) and (h\in H_i^{r+1}), then
\[
e_{i'}(h)
\le\frac{1+1/(5d)}{1-1/(5d)}e_i(h)
\le\frac{1+1/(5d)}{1-1/(5d)}\rho^{r+2}\gamma
\le\rho^{r+1}\gamma,
\tag{Incl-high}
\]
where the last inequality is exactly
((1+1/(5d))\rho\le1-1/(5d)). The exact factor-two pairing (Pair)
then shows that an accurately `Below` stage causes a strict drop in the integer
potential
\[
M_r:=\max_i\operatorname{DDim}_{p_r,d}(H_i^r),
\]
unless an actual function is common to every list. At (M_r=0), Corollary 4.1
Item 4 and realizability put the target (c) itself in every list. Hence one of
the (d+1) stages has (q_r=k).

On the event (|Z_r|\le\tau_{\rm AT}) for all AboveThreshold noises, every
reported `Above` stage has (q_r\ge k/2-\tau_{\rm AT}), and a stage with
(q_r=k) is reported `Above`. Sparse Sample's effective domain has size at
most (kL(k)+1); with probability (1-\beta_{\rm SS}), its output score is at
least (q_r-\tau_{\rm SS}(k)). The defining teacher inequality therefore
places that score strictly above the failure-symbol score (B(k)), so the
output is an actual list item.

Every actual selected item is exactly (\operatorname{SOA}_{\mathcal G}) for
a maximal leaf class (\mathcal G\subseteq H_i^r\subseteq C), and (Irred)
makes (\mathcal G) both (n_0)- and ((d+1))-irreducible. The source
empirical contradiction gives master error at most (2\gamma=\alpha/8), and
the selected function lies in the fixed class (\widehat C_{d+1}) of
Littlestone, hence VC, dimension at most (d). The latter structural fact is
retained but is not used to invoke a generic uncountable-class uniform event.
Instead, the measurable occurrence mark identifies one block whose finite
all-stage list union contains the exact output. The other (k-1) blocks are an
independent evaluation sample; (Holdout), the locally proved (LowerTail), and
the finite section union give (Compression) and population error at most
(\alpha). Finally, the explicit teacher, trace, mechanism, compression, and
rate estimates eliminate every auxiliary quantity and normalize the
comparison arms.

### Exact normalized comparison wrappers

The old-Lyu arm is not defined by citing a tilde expression. Repeat the entire
candidate-dependent dictionary (BL)-(Teacher) with a separate integer (t),
but replace the VC trace exponent by the source coarse exponent (d):
\[
a_{\rm old}(t):=d+\log(4t/\beta),\qquad
Q_{\rm old}(t):=e+\frac{e t d^2a_{\rm old}(t)}{\alpha d},
\]
\[
m_{\rm old}(t):=
\left\lceil C_{\rm old}\frac{d^2}{\alpha}
a_{\rm old}(t)\log Q_{\rm old}(t)\right\rceil,
\quad n_{\rm old}(t):=tm_{\rm old}(t).
\]
Choose the universal (C_{\rm old}) at least as large as the trace and marked
finite-reconstruction thresholds used above; this changes no public power.
Define (L_{\rm old}(t)), (B_{\rm old}(t)), and the least feasible
(k_{\rm old}) by the same displayed list/noise margin. This is precisely the
coarse Sauer union bound
(\Pi_C(n_{\rm old})\le(en_{\rm old}/d)^d) followed by the same total stage,
privacy, exact-SOA, and marked block-local finite-reconstruction PAC wrappers.
The public witness
\[
\bar k_{\rm old}:=
\left\lceil C_{\rm old,teach}\frac{d^2G\lambda^2}{\varepsilon}\right\rceil
\]
passes the same (LogClosure)-(MarginBound) proof and gives
\[
n_{\rm old}\le
K_{\rm old}\lambda^4\frac{d^5G}{\varepsilon\alpha}
+K_{\rm old}\lambda^2\frac{d+\log(1/\beta)}{\alpha}.
\tag{OldArm}
\]
Thus Lyu Theorem 3 supplies the empirical SOA construction and structural
objects, while Corollary 5.1's PAC objective is instantiated through the same
measurable marked-section and one-sided lower-tail argument as (Compression),
with the old arm's own finite lists and block sizes. Neither source label is
used as an undefined teacher parameter or as a permissibility theorem.

For the finite-class arm, if (M:=|C|<\infty), use the exponential mechanism
with weight proportional to
(\exp[-(\varepsilon/2)\,\#\text{ empirical errors}(h)]). It is pure
(\varepsilon)-DP. It has empirical error at most (\alpha/4) with failure at
most (\beta/2) once
\[
n\ge \frac{8}{\varepsilon\alpha}
\left(\log M+\log\frac4\beta\right).
\]
A finite-class relative deviation bound gives population error at most
(\alpha) with the remaining failure (\beta/2) once
\[
n\ge \frac{C_{\rm fin}}{\alpha}
\left(\log M+\log\frac4\beta\right).
\tag{FiniteArm}
\]
This is a fully normalized ((\varepsilon,0))-DP, ((\alpha,\beta))-PAC arm.
For infinite (C), its public cost is (+\infty), and it is not approximated by
a data-dependent finite subclass.

## Rate Objectives

- Objective type: structural-parameter explicit, confidence-explicit, privacy-parameter explicit, fixed-sample PAC rate.
- Exposed variables: (d,v,\alpha,\beta,\varepsilon,\delta). The teacher count, block size, master size, stage parameters, list bound, privacy allocations, and mechanism tolerances are auxiliary and must be eliminated.
- Hidden constants may depend on: nothing. (K,q,C_{\rm blk},C_{\rm teach},c_{\rm tr},c_{\rm AT}) and allocation constants are universal.
- Hidden constants may not depend on: (X,C,D,c,|C|), a decomposition, list, support set, generated event, partition, stage, teacher, or output.
- Fixed quantities: none in the main theorem. Only the final class-complexity comparison fixes (\alpha,\beta,\varepsilon), while retaining the declared (\delta)-schedule.
- Probability mode: all-input output-distribution DP over all internal randomness; PAC utility with probability at least (1-\beta) jointly over the sample, partition, and mechanisms. The analysis-only occurrence mark is a measurable finite-state lift whose projection is the exact learner law and is never released.
- Horizon mode: fixed sample; no all-time, stopping-time theorem, expectation-only theorem, or conditional final theorem.
- Norm mode: population binary (0)-(1) error.
- Required bridge or simplification obligations: prove (Trace), (LogClosure), (MarginBound), the teacher feasibility inequality, the marked-section bridge (Occ)-(Section), the locally derived one-sided (LowerTail), (CompressionLog), and
  \[
  k\le K_1\frac{d^2G\lambda^2}{\varepsilon},\quad
  a\le K_2\lambda(v+\log(1/\beta)),\quad
  \log Q\le K_3\lambda.
  \]
  Then prove, with ceilings retained,
  \[
  n_0\le K_4\lambda^4
  \frac{d^4(v+\log(1/\beta))G}{\varepsilon\alpha}.
  \]
- Baseline invariance obligations: exact (d=0) zero-sample recovery; (v=d) returns to the (d^5) scale; the separately normalized old-Lyu and finite-class arms have the same ((\alpha,\beta,\varepsilon,\delta)) interface before minimization; infinite (C) disables only the finite-class arm; and (N\delta\to0) is asserted only under the setting's declared schedule.

## Assumption Provenance Objectives

| Needed derived output | Primitive/source inputs | Producer step | Conditional use before production |
| --- | --- | --- | --- |
| Boundary learner, positive-branch legality, fixed allocations, total procedure, exact integer (k), teacher margin, and public (\bar k) envelope | `assump:finite-littlestone`, `assump:approximate-dp-regime`; direct scalar dictionary (Teacher)-(MarginBound) | `step_001` | None |
| Error-trace cardinality | Fixed (S), VC dimension (v) | `step_002` | `step_003` is only a fixed-trace lemma |
| Per-trace high- and low-error block deviations | Uniform without-replacement block | `step_003` | None |
| Exact simultaneous (E_{\rm good}) | `step_002`, `step_003` | `step_004` | Later source arguments use it only after this producer |
| Trace fixed point and failure budget | Primitive scalars and `step_004` | `step_005` | None |
| Exact (H_i^r,p_r) bridge, inclusion, finite lists, and leaf irreducibility | `step_004`, source definitions and Lemma 4.3/Corollary 4.1 | `step_006` | None |
| DDim descent and common actual function | `step_006`, realizability for nonempty zero-DDim support | `step_007` | None |
| Mechanism accuracy and selected actual list item | Accepted teacher margin from `step_001`, `step_005`, `step_007` | `step_008` | None |
| All-input ((\varepsilon,\delta))-DP | Total procedure, (RawList), source privacy lemmas | `step_009` | No utility event is used |
| Exact (\operatorname{SOA}_{\mathcal G}) identity, (n_0)-irreducibility, and empirical error | `step_006`, `step_008` | `step_010` | None |
| Exact fixed-family membership, measurable occurrence mark, block-local finite candidate union, independent complement evaluation, and population error | `step_008`, `step_010`, `assump:realizable-iid`; exact finite Sparse Sample state; direct one-sided Chernoff | `step_011` | No uncountable supremum event is used; the finite section union is formed only after fixing its producer block |
| Public rate and normalized baselines | All prior outputs | `step_012` | None |

The final target is unconditional. No generated event, list membership,
irreducibility certificate, selected-output identity, adjacency fact, or
generalization event becomes a theorem-facing assumption.

## Mechanism-Source And Boundary Stress

### `step_001`: exact teacher fixed point and boundary-total parameter package

- Step ID: `step_001`
- Claim class: public-parameter existence, quantitative margin closure, total-procedure legality, and exact boundary recovery.
- Theorem role: produce (k,m,n_0,L,B), all fixed allocations, and every terminal behavior before any trace, mechanism, privacy, or rate consumer.
- Mechanism source: direct scalar dictionary (Alloc)-(MarginBound), the numerical list envelope formula from Lyu Corollary 4.1, the source privacy threshold from Lemma 3.1, and the direct (d=0) Littlestone argument.
- Source-to-claim adequacy: for each candidate (t), every quantity is an explicit deterministic public scalar; (LogClosure) bounds the exact (n(t),L(t)) used by the learner; (MarginBound) compares the exact source (B) and mechanism tolerances to the candidate score. No cited source is asked to supply the public upper envelope.
- Residual-to-target adequacy: the produced (k,m,n_0,L,B) are exactly the objects consumed by all later stages and by the public sample count; ceilings are included, and there is no surrogate parameter tuple.
- Key positive/control term or structural source: the candidate score grows linearly as (t/2), while (B(t)+\tau_{\rm SS}(t)+\tau_{\rm AT}) grows only through (\log n(t),\log L(t),\log t); the explicit (\bar k) makes the linear margin at least two.
- Opposing defect terms: (\log\alpha^{-1}), (\log\delta^{-1}), (\log\beta^{-1}), (\log n(t)), (\log L(t)), list-size exponent (d^2), privacy scaling (1/\varepsilon), and all ceilings.
- Closure/dominance/absorption relation: (LogClosure) gives (\log n(\bar k)\le C_2\lambda) and (\log L(\bar k)\le C_3d^2\lambda); (MarginBound) then gives a total defect at most (C_4d^2G\lambda^2/\varepsilon), dominated by (\bar k/2) after choosing universal (C_{\rm teach}>4C_4).
- Accumulation behavior / scope compatibility: one deterministic scalar feasibility check; there is no iterative or stochastic accumulation.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the candidate tuple is defined for every integer (t) before feasibility is evaluated, (\bar k) is an explicit feasible witness, and the least feasible (k) is fixed before `step_002` or any other consumer.
- Entry-state / first-update stress result: at (d=0), no positive-branch scalar or mechanism is activated and the unique target is returned; at (d\ge1), (t\ge2) gives (n(t)d\ge\max\{n(t),d+1\}) and a legal first stage.
- Baseline conclusion preserved: exact zero-sample recovery is unchanged, and setting (v=d) in the same scalar package returns the source (d^5) scale after specialization.
- Producer-consumer provenance: `step_001` produces the exact public parameter tuple and total algorithm for `step_002`-`step_012` as applicable.
- Null or boundary regime tested: (d=0), (d=v=1), (v=d), arbitrarily small (\alpha), arbitrarily small (\delta), (\beta\uparrow1/4), and ceiling-dominated parameters.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without the explicit feasible witness, the source privacy threshold could make (B\ge k) and leave the learner or public rate undefined.
- Repair route if source is unsupported: `/proof-step step_001` for scalar derivation details; `/proof-sketch` if the exact public envelope cannot satisfy (Teacher).

### `step_004`: exact trace event

- Step ID: `step_004`
- Claim class: generated concentration event and finite union closure.
- Theorem role: produce the exact event consumed by source threshold algebra.
- Mechanism source: Lyu Proposition 2 for the high-error clause; a current-notation finite-population mgf/KL derivation for the low-error clause; xor and Sauer--Shelah from `step_002`.
- Source-to-claim adequacy: source and branch use the same indexed error vector, block marginal, tolerance (1/(5d)), and low-error thresholds (\gamma/3,\gamma/2); the KL wrapper covers the source proposition's missing near-zero case.
- Residual-to-target adequacy: produced and consumed block errors are identical; there is no surrogate or transformed target and the residual is zero.
- Key positive/control term or structural source: exponent (c_{\rm tr}m\alpha/d^2), with the (\gamma=\alpha/16) factor absorbed universally.
- Opposing defect terms: (k\Pi_C(n_0)) block/trace pairs and the ceiling in (m).
- Closure/dominance/absorption relation: the finite union gives (Trace), and `step_005` proves its logarithm is at most (log\beta_{\rm tr}).
- Accumulation behavior / scope compatibility: finite union only; dependence among blocks is never accumulated or multiplied.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_002` and `step_003` precede `step_004`; `step_005` closes the scalar budget before any consumer.
- Entry-state / first-update stress result: duplicate points are separated by indices; a zero trace makes the low-error bad event impossible; the first block requires no independence from later blocks.
- Baseline conclusion preserved: the source event is unchanged up to the fixed internal accuracy rescaling.
- Producer-consumer provenance: `step_004` and `step_005` produce the event for `step_006`, `step_007`, `step_010`, and `step_011`.
- Null or boundary regime tested: (v=1), repeated points, zero empirical error, the (\gamma/3) branch boundary, and dependent blocks.
- Target conclusion false or theorem-critical obstruction present if source vanishes: inclusion across teachers can fail without this event.
- Repair route if source is unsupported: `/proof-step step_003` for the KL derivation, or `/proof-sketch` if the event differs from (S-H).

### `step_005`: trace fixed point

- Step ID: `step_005`
- Claim class: quantitative event-budget closure.
- Theorem role: close (n_0=km) inside the VC trace count.
- Mechanism source: direct scalar inequalities from (a,Q,m,n_0), including (m\le C_{\rm blk}d^2a\log Q/\alpha+1).
- Source-to-claim adequacy: (Q) depends on (k,d,v,\alpha,\beta), not on (m,n_0); (a) dominates both (v) and (log(4k/\beta)).
- Residual-to-target adequacy: the same (n_0) appears in the trace multiplicity and public sample size; rounding is dominated explicitly.
- Key positive/control term or structural source: (c_{\rm tr}C_{\rm blk}a\log Q).
- Opposing defect terms: (v\log(en_0/v)), (log(k/\beta_{\rm tr})), and the ceiling.
- Closure/dominance/absorption relation: (log(en_0/v)\le C_{\rm fp}\log Q), and universal (C_{\rm blk}) makes the negative exponent dominate every opposing term.
- Accumulation behavior / scope compatibility: one scalar fixed point; no repeated forcing.
- Obligation locality classification: `step-local`.
- Noncircular closure status: (Q) is defined before (m,n_0), and the dependency path is `step_001` -> `step_004` -> `step_005` -> consumers.
- Entry-state / first-update stress result: (d=v=1) has positive denominators and (Q\ge e); (d=0) bypasses the formula.
- Baseline conclusion preserved: at (v=d), the block scale returns to (d^3/\alpha) up to allowed logs.
- Producer-consumer provenance: `step_005` feeds `step_006`, `step_008`, `step_011`, and `step_012`.
- Null or boundary regime tested: (v=1), (v=d), smallest admissible parameters, and ceiling-dominated (m).
- Target conclusion false or theorem-critical obstruction present if source vanishes: an uncontrolled (v\log n_0) term would remain.
- Repair route if source is unsupported: `/proof-step step_005`.

### `step_006`: factor-two source wrapper and list identity

- Step ID: `step_006`
- Claim class: source-convention bridge, generated membership, finite list, and irreducibility export.
- Theorem role: make every decomposition and selected-function object legal before DDim descent and PAC use.
- Mechanism source: exact formulas (S-H)-(B-map), Lyu Definition 4.2, Lemmas 4.1 and 4.3, Definition 4.3, and Corollary 4.1.
- Source-to-claim adequacy: (Pair) is exactly Lemma 4.3's ((2p,d)/(p,d)) interface; exact SOA equality is equality on (X); (Irred) converts the branch's half-scale start to the (n_0) and (d+1) interfaces consumed later.
- Residual-to-target adequacy: the source-stage class is exactly (H_i^r=H_{i,{\rm src}}^{r+1}); the only residual is the factor-two (p)-shift, and (Pair)-(Irred) show it loses neither comparison nor irreducibility at the required target scales.
- Key positive/control term or structural source: (p_{r+1}=2p_r) and leaf irreducibility (p_r2^{d-t}\ge n_0d).
- Opposing defect terms: the source's different starting scale, empty classes on arbitrary inputs, and possible duplicate trace representations.
- Closure/dominance/absorption relation: use source lemmas only for nonempty utility-path classes; define empty-class lists as empty for totality; compare actual functions, not traces.
- Accumulation behavior / scope compatibility: the bridge is exact at each of finitely many (d) transitions; no error accumulates.
- Obligation locality classification: `step-local`.
- Noncircular closure status: (E_{\rm good}) from `step_004` proves inclusion before Lemma 4.3 is invoked; list and irreducibility outputs precede all consumers.
- Entry-state / first-update stress result: at (r=0), (p_0=n_0d) is already large enough; the first transition uses ((p_1,p_0)=(2p_0,p_0)).
- Baseline conclusion preserved: all (d+1) source-stage classes and actual essential SOA identities are retained.
- Producer-consumer provenance: `step_006` produces inclusion, lists, exact leaf SOA witnesses, and irreducibility for `step_007`-`step_011`.
- Null or boundary regime tested: empty arbitrary-input class, nonempty DDim-zero class, (d=1), and infinite (C).
- Target conclusion false or theorem-critical obstruction present if source vanishes: the prior same-(p) shorthand would not imply a dimension drop or exact output identity.
- Repair route if source is unsupported: `/proof-sketch`; the factor-two bridge is theorem-critical.

### `step_007`: finite DDim descent and common actual item

- Step ID: `step_007`
- Claim class: signed structural descent, finite termination, and common-support production.
- Theorem role: prove that some stage has a full-score actual function.
- Mechanism source: inclusion and exact lists from `step_006`; Lyu Lemma 4.3 and Corollary 4.1 Items 2-4; realizability supplies (c\in\cap_iH_i^r).
- Source-to-claim adequacy: if (M_{r+1}=M_r=t>0), a maximal leaf SOA of (H_{i_*}^{r+1}) is, by exact equality in Lemma 4.3, essential to every (H_i^r), hence has score (k). At (M_r=0), Item 4 gives (\mathcal L_i^r=H_i^r), so the common target (c) has score (k).
- Residual-to-target adequacy: the produced common object is the same actual function consumed by the frequency query; no trace quotient or representative is used.
- Key positive/control term or structural source: integer potential (0\le M_r\le d) and strict one-unit drop after every accurately `Below` stage.
- Opposing defect terms: AboveThreshold can misreport a stage; `step_008` controls its finite noise event.
- Closure/dominance/absorption relation: at most (d) strict drops occur; if the first (d) stages are accurately `Below`, then (M_d=0) and stage (d) has score (k).
- Accumulation behavior / scope compatibility: monotone finite potential with one-step charge one and initial budget at most (d); no adversarial additive forcing enters the structural recurrence.
- Obligation locality classification: `step-local`.
- Noncircular closure status: the recurrence is derived from `step_006` and does not assume termination; the zero case uses the primitive realizable target, not the desired selected output.
- Entry-state / first-update stress result: (M_0\le d); if (M_0=0), the conclusion is active immediately, while if the first query is accurately `Below`, Lemma 4.3 activates before (M_1) is consumed.
- Baseline conclusion preserved: the source's (d+1)-stage termination is retained.
- Producer-consumer provenance: `step_007` produces the score-(k) stage for `step_008`, and exact common support for `step_010`.
- Null or boundary regime tested: (M_0=0), (M_d=0), singleton restrictions, (d=1), and all earlier queries `Below`.
- Target conclusion false or theorem-critical obstruction present if source vanishes: nonnegativity alone would not produce a common item at DDim zero.
- Repair route if source is unsupported: `/proof-step step_007` if the instantiated recurrence derivation fails; `/proof-sketch` if actual-function identity is lost.

### `step_008`: fixed-margin mechanism utility and actual Sparse Sample output

- Step ID: `step_008`
- Claim class: positive utility margin, generated-output support, and finite mechanism-failure closure.
- Theorem role: consume the accepted teacher margin from `step_001` and turn the structural score-(k) stage into one actual list item.
- Mechanism source: accepted (Teacher)-(MarginBound) from `step_001`, Lyu Algorithms 1-2, Lemma 3.1's (B) condition, Laplace tails, and the exponential-weight effective-domain inequality.
- Source-to-claim adequacy: (L(k)) bounds every source list; (B(k)) meets Lemma 3.1 exactly; AboveThreshold `Above` implies (q_r\ge k/2-\tau_{\rm AT}); Sparse Sample returns score at least (q_r-\tau_{\rm SS}(k)); (Teacher) places this strictly above (B(k)).
- Residual-to-target adequacy: the selected object is an actual member of the same union of lists consumed by `step_010`; (\perp) is excluded on the good mechanism event, not silently identified with a hypothesis.
- Key positive/control term or structural source: common-item score (k) and usable margin (k/2-\tau_{\rm AT}-B(k)-\tau_{\rm SS}(k)\ge2).
- Opposing defect terms: (d+1) Laplace noises, failure-symbol weight, effective domain (kL(k)+1), list privacy threshold, ceilings, and confidence losses.
- Closure/dominance/absorption relation: union Laplace tail costs (\beta_{\rm AT}); exponential-weight tail costs (\beta_{\rm SS}); the already-proved (Teacher) margin dominates both losses, while `step_001` has already exposed (log\alpha^{-1}) and (log n_0) in (LogClosure)-(MarginBound).
- Accumulation behavior / scope compatibility: only (d+1) finite query noises and one Sparse Sample draw; the failure probabilities are union-bounded once.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_001` proves the candidate dictionary is nonempty and fixes (k,L,B) before all consumers; `step_007` supplies the score-(k) stage before selection.
- Entry-state / first-update stress result: empty first-stage lists give (q_0=0) and cannot cause a good-noise `Above` when (k/2>\tau_{\rm AT}); a first-stage score (k) is detected immediately.
- Baseline conclusion preserved: one AboveThreshold process and one post-success Sparse Sample call are retained.
- Producer-consumer provenance: `step_001` produces the teacher envelope and margin; `step_008` produces the actual selected function and mechanism-good event for `step_009`-`step_011`.
- Null or boundary regime tested: empty lists, false-positive stages, first-stage success, stage-(d) success, (\perp), small (\alpha), and large (log(1/\delta)).
- Target conclusion false or theorem-critical obstruction present if source vanishes: (B\ge k) or an uncontrolled effective-domain loss could force (\perp) with high probability.
- Repair route if source is unsupported: `/proof-step step_008` for mechanism-tail instantiation; a defect in the accepted teacher envelope would route to `/proof-step step_001` or `/proof-sketch` according to interface impact.

### `step_009`: total all-input privacy

- Step ID: `step_009`
- Claim class: raw-record-to-public DP closure.
- Theorem role: prove privacy on every neighboring labeled pair before any utility conditioning.
- Mechanism source: the fixed total procedure, (RawList), Lyu Lemmas 3.1-3.2, data-independent mixture over partitions, adaptive/concurrent composition, and postprocessing.
- Source-to-claim adequacy: one raw replacement changes one list coordinate at every query and selected call; max-frequency queries have sensitivity one; (B(k)) meets the exact source list condition; arbitrary transcript-dependent invocation is covered by adaptive composition.
- Residual-to-target adequacy: conditioned list adjacency is exactly replacement adjacency required by Lemma 3.1; averaging over the common data-independent partition randomness preserves the same raw-record DP inequality.
- Key positive/control term or structural source: ((\varepsilon/4,\delta/2)) AboveThreshold prefix plus ((\varepsilon/4,\delta/2)) Sparse Sample, followed by only postprocessing.
- Opposing defect terms: empty restrictions, data-dependent stopping, different transcripts, stage exhaustion, (\perp), and default output.
- Closure/dominance/absorption relation: the total procedure defines each path; adaptive composition handles transcript divergence; total cost ((\varepsilon/2,\delta)) is stronger than ((\varepsilon,\delta)).
- Accumulation behavior / scope compatibility: one finite transcript and one optional call; no privacy cost accumulates over (d+1) by naive composition.
- Obligation locality classification: `step-local`.
- Noncircular closure status: totalization and allocations are fixed in the roadmap, and (RawList) is proved from block locality before privacy is consumed.
- Entry-state / first-update stress result: on an arbitrary nonrealizable first query, empty classes yield empty lists and a defined (q_0=0); every terminal path outputs either an actual function or fixed (h_0).
- Baseline conclusion preserved: the realizable successful path is unchanged, while the source's omitted failure paths are data-independently totalized.
- Producer-consumer provenance: `step_009` produces all-input DP for `step_012` and final assembly.
- Null or boundary regime tested: arbitrary labels, empty lists at all stages, immediate `Above`, no `Above`, (\perp), and neighboring records in any block.
- Target conclusion false or theorem-critical obstruction present if source vanishes: list-level privacy alone would not imply raw-record privacy.
- Repair route if source is unsupported: `/proof-step step_009`; a change to the fixed procedure would require `/proof-sketch`.

### `step_010`: exact SOA identity and empirical utility

- Step ID: `step_010`
- Claim class: object-target membership bridge, irreducibility, and empirical utility.
- Theorem role: show that the exact selected function is an actual improper SOA output with master error at most (\alpha/8).
- Mechanism source: exact essential-function definition and (Irred) from `step_006`; Lyu Theorem 3's empirical contradiction; Lemma 4.2's exact class (\widehat C_{d+1}).
- Source-to-claim adequacy: every selected (f\in\mathcal L_i^r) has an actual maximal leaf witness (\mathcal G\subseteq H_i^r\subseteq C) with (f=\operatorname{SOA}_{\mathcal G}) and both required irreducibility scales; hence (f\in\widehat C_{d+1}), exactly the cited class.
- Residual-to-target adequacy: the produced function and consumed function are identical on (X), and master error uses the same target labels.
- Key positive/control term or structural source: every member of (H_i^r) has master error at most (2\gamma) on (E_{\rm good}), while (n_0)-irreducibility forbids the SOA-labeled restriction on all sample points from becoming empty.
- Opposing defect terms: internal empirical error, adaptive output choice, repeated points, infinite (C), and improper output.
- Closure/dominance/absorption relation: the irreducibility contradiction gives (e_S(f)\le2\gamma=\alpha/8) and ((d+1))-irreducibility gives exact fixed-family membership.
- Accumulation behavior / scope compatibility: one deterministic contradiction; stochastic defects are already finite upstream failures.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` produces the leaf and scales and `step_008` produces the actual item before `step_010` consumes them.
- Entry-state / first-update stress result: at (d=1), (p_0=n_0) supplies both irreducibility levels; empirical-zero output needs no further empirical bridge.
- Baseline conclusion preserved: the potentially improper SOA output and exact Lyu/Ghazi fixed class are retained.
- Producer-consumer provenance: `step_010` produces exact membership and empirical error for `step_011`.
- Null or boundary regime tested: infinite (C), output outside (C), DDim-zero leaf, repeated points, (d=1), and empirical error zero.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without same-function leaf identity, neither the empirical contradiction nor block-local reconstruction applies.
- Repair route if source is unsupported: `/proof-step step_010`; an output-family mismatch requires `/proof-sketch`.

### `step_011`: measurable block-local finite reconstruction and PAC transfer

- Step ID: `step_011`
- Claim class: measurable generated-output marking, block compression/sample splitting, one-sided concentration, and empirical-to-population conversion.
- Theorem role: convert the exact selected actual list item and its full-sample error bound into population error at most (\alpha) without a generic supremum over (\widehat C_{d+1}).
- Mechanism source: the exact finite Sparse Sample state from `step_008`; block-local lists from `step_006`; empirical error from `step_010`; conditional block independence from `assump:realizable-iid`; and a locally proved exponential-Markov one-sided lower-tail Chernoff inequality.
- Source-to-claim adequacy: the marked lift uses exactly the occurrence predicates and score already evaluated by Sparse Sample and preserves its output marginal. For a fixed mark (J=i), (\mathcal U_i(S_i)) contains the output, is generated before (S_{-i}), and has at most ((d+1)L(k)) actual functions. Each fixed candidate has an individually measurable Bernoulli loss, so the finite conditional union is legal.
- Residual-to-target adequacy: (Holdout) transfers the same selected function's full-sample error to its complement error with factor (k/(k-1)\le2); (LowerTail) compares that same function and target under the population (0)-(1) metric. There is no trace representative, surrogate output, or changed metric.
- Key positive/control term or structural source: independent evaluation size ((k-1)m) and exponent ((9/32)\alpha(k-1)m).
- Opposing defect terms: adaptive stage and output selection, the (k) possible producer marks, at most ((d+1)L(k)) candidates per producer block, and confidence (\beta_{\rm gen}). The uncountable remainder of (\widehat C_{d+1}) is never union-bounded.
- Closure/dominance/absorption relation: measurable-section Fubini gives (Compression); (CompressionLog) bounds the full finite multiplicity by (22d^2a\log Q), while the accepted (C_{\rm blk}=2^{20}) makes the lower-tail exponent at least ((9/32)2^{20}d^2a\log Q), so the failure is at most (\beta/4).
- Accumulation behavior / scope compatibility: one mark in a finite set, one finite section union, and one confidence charge. No outer-probability conditioning or persistent defect is present.
- Obligation locality classification: `step-local`.
- Noncircular closure status: `step_006` produces every block-local list before `step_008` selects an item; `step_008` supplies the exact finite state; `step_010` supplies full-sample error; `step_011` adds only an unreleased mark and evaluates the already-produced finite union on independent complement data.
- Entry-state / first-update stress result: (k\ge2) leaves a nonempty evaluation complement; if the selected stage is data-dependent or a false positive, its output still has an occurrence mark and lies in the fixed all-stage union. An empirical-zero output makes (Holdout) immediate.
- Baseline conclusion preserved: the public learner, selected hypothesis, sample, mechanisms, arbitrary-class scope, improperness, and failure ledger are unchanged. Lemma 4.2's VC conclusion is retained, but no permissibility conclusion is invented.
- Producer-consumer provenance: `step_006` produces (\mathcal L_i^r); `step_008` produces the actual item/state; `step_010` produces empirical error; `step_011` produces the marked-section PAC event for `step_012` and final assembly.
- Null or boundary regime tested: Durst--Dudley-type VC-one classes, infinite (C), absence of a measurable-envelope or permissibility property for the all-stage candidate map, data-dependent selected stages, (d=v=1), (k=2), output outside (C), and empirical error zero.
- Target conclusion false or theorem-critical obstruction present if source vanishes: without a measurable marked lift or block locality, the fixed-section cover would not yield a legal product-space probability bound; without the lower-tail exponent, finite multiplicity would not be dominated.
- Repair route if source is unsupported: `/proof-step step_011` for the marked-kernel, Fubini-section, Chernoff, or scalar details; `/proof-sketch` if the exact source state cannot supply a measurable occurrence mark or a list uses evaluation-block data.

### `step_012`: public rate and all baselines

- Step ID: `step_012`
- Claim class: public quantitative specialization and baseline invariance.
- Theorem role: eliminate every auxiliary and state the new arm and comparison frontier on one DP/PAC interface.
- Mechanism source: `step_001`, `step_005`, `step_008`, `step_009`, `step_011`; direct algebra; Lyu Theorem 3/Corollary 5.1 normalized with the same allocations and the repaired marked finite-reconstruction bridge; finite-class private ERM by the exponential mechanism.
- Source-to-claim adequacy: the new arm uses the explicit (k\le\bar k); the old-Lyu wrapper uses the same total mechanisms and confidence split, the source coarse (n^d) trace count, the displayed (a_{\rm old},Q_{\rm old},m_{\rm old},k_{\rm old}) dictionary, the same measurable occurrence-mark/complement-evaluation proof with old-arm lists, and the exact public inequality (OldArm). The finite arm is genuinely fixed and finite, satisfies (FiniteArm), and is pure-DP, hence also approximate-DP.
- Residual-to-target adequacy: all three learners are separately ((\varepsilon,\delta))-DP and ((\alpha,\beta))-PAC before taking the minimum; infinite (C) maps only its finite-arm rate to (+\infty).
- Key positive/control term or structural source: (k\le C_{\rm teach}d^2G\lambda^2/\varepsilon+1) and (m\le C d^2\lambda^2(v+\log(1/\beta))/\alpha), whose product is the displayed new-arm bound.
- Opposing defect terms: (log k,log Q,log n_0,log L), ceilings, generalization size, and confidence/privacy conversions.
- Closure/dominance/absorption relation: (LogClosure) and the displayed rate inequalities absorb only powers of (\lambda); every positive power of (d,v) and the single factor (G) remains visible.
- Accumulation behavior / scope compatibility: one finite specialization and one comparison; (N\delta\to0) follows only by scalar domination under the declared asymptotic schedule.
- Obligation locality classification: `step-local`.
- Noncircular closure status: all DP, PAC, teacher, and rate inputs are earlier outputs; neither comparison arm is used to prove the new arm.
- Entry-state / first-update stress result: (d=0) activates no positive-branch formula; (v=d) substitutes directly into the proved rate; infinite (C) disables the finite arm; fixed positive (\delta) is not claimed to give (N\delta\to0).
- Baseline conclusion preserved: exact zero-sample recovery, the (d^5) full-cube scale, the old Lyu universal arm, the finite-class arm, infinite-class disabling, and the declared small-(\delta) limit all remain unchanged.
- Producer-consumer provenance: `step_012` consumes all earlier outputs and produces final theorem/assembly data.
- Null or boundary regime tested: (d=v=0), (v=1), (v=d), finite and infinite (C), and (\delta\downarrow0) versus fixed (\delta).
- Target conclusion false or theorem-critical obstruction present if source vanishes: any residual positive power or unmatched privacy/confidence interface invalidates the public frontier.
- Repair route if source is unsupported: `/proof-step step_012` for algebra; `/proof-sketch` if a positive-power or common-interface residual survives.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (d=0) learner and positive-branch legality | `step_001`; direct LD/VC facts | Nonempty (C), primitive parameter ranges | No generated defect; positive formulas bypassed at (d=0) | Output equals the unique target at (d=0) | Two distinct functions would give a depth-one Littlestone tree | Nonemptiness and (d=0) | All steps; final theorem | None |
| Error-trace count (\lvert\mathcal E_C(S)\rvert\le(en_0/v)^v) | `step_002`; xor and Sauer--Shelah | Fixed indexed (S), (1\le v\le n_0) | Infinite class cardinality and duplicate traces are removed; no uncontrolled term | Same binary vectors enter `step_004` | Direct bijection and growth bound | Positive branch (v\ge1) | `step_004`, `step_005` | None |
| Exact (E_{\rm good}) with failure (\beta_{\rm tr}) | `step_003`-`step_005` | Per-trace tails, trace count, (a,Q,m) | High- and low-error tails, finite multiplicity, ceiling all controlled | Same (H_i^r) thresholds consume the event | (Trace) plus ceiling-aware exponent domination | Universal (C_{\rm blk}) | `step_006`, `step_007`, `step_010`, `step_011` | None |
| Inclusion (H_i^{r+1}\subseteq\cap_{i'}H_{i'}^r), exact lists, and leaf witness | `step_006`; source definitions/Lemmas 4.1, 4.3/Corollary 4.1 | (E_{\rm good}), (B-map), (p_{r+1}=2p_r) | Factor-two start is controlled; empty arbitrary-input classes are totalized; no trace quotient | Source class equals current (H_i^r); (p)-residual is bridged by (Pair)-(Irred) | Exact threshold algebra and source lemma hypotheses | Geometric thresholds and (p_0=n_0d) | `step_007`-`step_011` | None |
| Common actual function with score (k) by stage (d) | `step_007`; Lemma 4.3/Corollary 4.1 | Inclusion, exact lists, potential (M_r), realizable target | AT noise not yet controlled here; structural recurrence has no additive defect | Same actual function is scored by (q_r) | `Below` plus no common item gives (M_{r+1}\le M_r-1); zero case uses (c) | Integer potential budget (d) | `step_008`, `step_010` | None |
| Exact integer teacher count and list/noise margin | `step_001`; (Teacher)-(MarginBound) | Candidate (t), explicit (n(t),L(t),B(t)), public (\bar k) | (\log\alpha^{-1},\log n_0,\log L,\delta,\beta), ceilings all controlled; none remains hidden | Same (k,n_0,L) define learner and public sample | (k/2-\tau_{\rm AT}\ge B+\tau_{\rm SS}+2), (k\le\bar k) | Score (k), universal (C_{\rm teach}) | `step_002`-`step_012` as applicable | None |
| Selected actual list item, not (\perp) | `step_008`; Algorithms 1-2 | Score-(k) stage, list bound, good noise events | False positives and effective-domain loss controlled; (\perp) remains only off the good event | Output is exactly a member of a current list | Reported stage has (q\ge k/2-\tau_{\rm AT}); selected score exceeds (B) | Teacher margin | `step_009`-`step_011` | None |
| All-input ((\varepsilon,\delta))-DP | `step_009`; source privacy lemmas | Total procedure, (RawList), allocations | Empty/no-success/(\perp)/default paths and adaptive stopping all defined; no utility premise | Exact raw replacement maps to exact one-list replacement | Adaptive composition gives ((\varepsilon/2,\delta)\preceq(\varepsilon,\delta)) | Source privacy bounds and conservative split | `step_012`, final theorem | None |
| (f=\operatorname{SOA}_{\mathcal G}\in\widehat C_{d+1}) and empirical error (\le\alpha/8) | `step_010`; essential leaf witness and Theorem 3 proof | Actual selected list item, (Irred), (E_{\rm good}) | Improperness and infinite (C) controlled by exact fixed-class membership | Produced and consumed functions are identical on (X) | (n_0)-irreducibility contradiction; (d+1)-irreducibility membership | (p_0=n_0d), (\gamma=\alpha/16) | `step_011` | None |
| Measurable occurrence mark and block-local finite candidate union | `step_011`; exact finite Sparse Sample state and `step_006` lists | Actual output, selected stage, finite list tuple, score predicates, independent discrete lift | Data-dependent stage/output and no assumed joint measurable-envelope property for the all-stage set-valued union; no uncountable supremum is formed | Projection of the marked pair is exactly the original selected function; (\mathcal U_i(S_i)) contains it at mark (i) | Fix producer-block section, union at most ((d+1)L), and apply Fubini only to the measurable marked failure event | Nonempty occurrence set of every actual output and block independence | `step_011`, final utility | None |
| Population error (\le\alpha) with total failure (\le\beta) | `step_011`; marked sections and locally proved lower-tail Chernoff | Empirical error (\le\alpha/8), (k\ge2), block-local finite lists, iid complement, allocations | Trace, AT, SS, finite reconstruction multiplicity, and generalization failures separately controlled; the uncountable class is uncontrolled but unused | Same output/target under full empirical, complement empirical, and population metrics; (Holdout) is the exact transfer | (Compression), (CompressionLog), and ((9/32)\alpha(k-1)m) dominance | Empirical slack (\alpha/8), independent complement size, accepted (C_{\rm blk}=2^{20}) | `step_012`, final theorem | None |
| Public new rate and common-interface frontier | `step_012` | Teacher envelope, trace fixed point, DP/PAC outputs, normalized comparison arms | Only (\lambda^q) logs remain; no class/list/event dependence | Each arm has identical public parameters before minimization | Explicit substitutions; finite arm disabled at (+\infty) | Universal constants and proved rate inequalities | Final assembly | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Boundary learner, allocations, and total procedure | `step_001` and roadmap definition | `step_002`-`step_012` | Exact (d=0) branch and legal all-input algorithm | `step_001` -> all positive steps / final boundary | derived | None |
| VC error-trace family | `step_002` | `step_004`, `step_005` | Replace exponent (d) by (v) | `step_002` -> `step_004` -> `step_005` | derived | None |
| Per-trace deviations | `step_003` | `step_004` | Produce source event | `step_003` -> `step_004` | derived | None |
| (E_{\rm good}) and trace budget | `step_004`, `step_005` | `step_006`, `step_007`, `step_010`, `step_011` | Inclusion and utility | `step_002`,`step_003` -> `step_004`,`step_005` -> consumers | derived | None |
| Exact stage/list/irreducibility wrapper | `step_006`; Lyu Lemma 4.3/Corollary 4.1 | `step_007`-`step_011` | Legal source objects and exact output witness | `step_004`,`step_005` -> `step_006` -> consumers | derived | None |
| DDim descent and score-(k) stage | `step_007` | `step_008`, `step_010` | Finite-stage termination and support | `step_006` -> `step_007` -> consumers | derived | None |
| Exact teacher parameter, envelope, and list/noise margin | `step_001` | `step_002`-`step_012` as applicable | Legal learner definition, trace size, mechanism margin, and public rate | `step_001` -> every parameter consumer | derived | None |
| Mechanism-good event and actual selected item | `step_008` | `step_009`-`step_011` | Output support and mechanism confidence | `step_001`,`step_005`,`step_007` -> `step_008` -> consumers | derived | None |
| Raw-record adjacency and end-to-end DP | `step_009` | `step_012`, final theorem | Privacy conclusion | total procedure -> (RawList) -> `step_009` -> final | derived | None |
| Exact SOA membership and empirical utility | `step_010` | `step_011` | Fixed improper-class input | `step_006`,`step_008` -> `step_010` -> `step_011` | derived | None |
| Measurable occurrence mark and block-local finite reconstruction family | `step_011`, from exact `step_008` state and `step_006` lists | `step_011` PAC section argument | Legal producer-block witness without changing public output | `step_006`,`step_008` -> marked lift in `step_011` -> fixed sections | derived | None |
| Population utility event | `step_011` | `step_012`, final theorem | PAC conclusion | `step_004`,`step_008`,`step_010` -> marked sections/(LowerTail)/(Compression) in `step_011` -> final | derived | None |
| Public rate and baseline interfaces | `step_012` | Final assembly | Exact formalized goal and frontier | all accepted outputs -> `step_012` -> final | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove the exact (d=0) branch; for (d\ge1), prove (1\le v\le d), nonemptiness/minimality of (Teacher), (LogClosure)-(MarginBound), (k\le\bar k), (n_0\ge v), integer legality, the fixed allocations, and totality of every empty/list/exhaustion/(\perp)/default path. | None | Primitive `assump:finite-littlestone`, `assump:approximate-dp-regime` | Pin the coupled teacher parameter before any consumer while preserving the boundary and realizable source path. | Direct LD/VC facts, deterministic DP, Lyu Corollary 4.1's universal finite list envelope, monotone scalar inequalities, and the roadmap definitions. | Boundary learner, exact teacher/envelope/margin, legal parameter dictionary, and total algorithm. | Close all teacher/list/noise logarithms and fixed internal allocations. | PENDING |
| `step_002` | Conditional on indexed (S), prove (\lvert\mathcal E_C(S)\rvert\le\Pi_C(n_0)\le(en_0/v)^v). | `step_001` | Primitive `assump:finite-littlestone`; derived positive-branch legality | Count traces for possibly infinite (C). | Xor bijection and Sauer--Shelah. | Finite error-trace family. | Preserve exponent (v) exactly. | PENDING |
| `step_003` | For one fixed trace and block, prove both exact (E_{\rm good}) clauses with failure at most (4e^{-c_{\rm tr}m\alpha/d^2}). | `step_001` | Primitive `assump:approximate-dp-regime`; fixed-trace local hypothesis | Obtain a nonvanishing low-error exponent at empirical mean zero or near zero. | Lyu Proposition 2 plus a finite-population mgf/KL upper tail. | Per-trace two-clause deviation lemma. | Keep exponent (m\alpha/d^2) and constants explicit. | PENDING |
| `step_004` | Union bound over blocks and distinct traces to prove (Trace), then integrate over (S), without block independence. | `step_002`, `step_003` | No utility assumption for the conditional partition statement | Preserve exact event thresholds and conditional probability mode. | Finite union bound and tower property. | Exact (E_{\rm good}) failure formula. | Conditional and unconditional confidence interface. | PENDING |
| `step_005` | Prove the ceiling-aware (log(en_0/v)\le C_{\rm fp}\log Q), allocate failure (\beta_{\rm tr}), and export (n_0\le(C_{\rm blk}+1)kd^2a\log Q/\alpha). | `step_001`, `step_004` | Primitive `assump:approximate-dp-regime`; derived trace formula | Noncircular trace fixed point. | Direct scalar inequalities. | Trace budget and technical (k)-dependent sample bound. | Structural/confidence-explicit intermediate rate. | PENDING |
| `step_006` | Prove the exact source/current map (S-H)-(B-map), cross-block inclusion, the Lemma 4.3 pairing (Pair), list envelope, actual-function essential identity, and (Irred), including empty and DDim-zero boundaries. | `step_004`, `step_005` | Primitive `assump:finite-littlestone`; derived (E_{\rm good}) | Discharge the factor-two convention and every cited wrapper before downstream use. | Lyu Definition 4.2, Lemmas 4.1/4.3, Definition 4.3, Corollary 4.1, and source threshold algebra. | Source-compatible restrictions, lists, exact leaf witnesses, and irreducibility. | Expose (log L\le d\log p_d+d^2\log2). | PENDING |
| `step_007` | Prove that every accurately `Below` stage causes (M_{r+1}\le M_r-1), unless an actual function has score (k), and prove score (k) at DDim zero using Corollary 4.1 Item 4 and the common target. | `step_006` | Primitive `assump:realizable-iid`, `assump:finite-littlestone`; derived inclusion/lists | Exact same-function support and zero-DDim termination. | Lyu Lemma 4.3 and Corollary 4.1 Items 2-4. | Finite potential certificate and score-(k) stage by (r=d). | No multiplicative stage sample factor. | PENDING |
| `step_008` | Using the accepted teacher margin, prove the AboveThreshold accuracy statements and Sparse Sample effective-domain inequality; conclude actual-list output with failure at most (\beta_{\rm AT}+\beta_{\rm SS}). | `step_001`, `step_005`, `step_007` | Primitive `assump:approximate-dp-regime`; derived teacher margin, lists, and common stage | Instantiate every finite mechanism loss without reopening the parameter definition. | Lyu Algorithms 1-2/Lemma 3.1, Laplace tails, and exponential-weight utility. | Mechanism-good event and actual selected SOA item. | Consume the already-closed teacher/list/noise quantitative interface. | PENDING |
| `step_009` | For every fixed partition and transcript, prove (RawList), then prove the total procedure is ((\varepsilon,\delta))-DP on every labeled neighboring pair. | `step_001`, `step_006` | Primitive `assump:approximate-dp-regime`; no utility event | Raw replacement, adaptive stopping, empty paths, (\perp), and stage exhaustion. | Lyu Lemmas 3.1-3.2, adaptive/concurrent composition, postprocessing, data-independent mixtures. | End-to-end all-input DP. | Explicit privacy allocation with no stage power. | PENDING |
| `step_010` | Prove every actual selected item is exactly (\operatorname{SOA}_{\mathcal G}) for a (p_r2^{d-t})-irreducible (\mathcal G\subseteq H_i^r\subseteq C), hence is (n_0)- and ((d+1))-irreducible, and has master error at most (2\gamma=\alpha/8). | `step_006`, `step_008` | Primitive `assump:finite-littlestone`; derived actual selection and (E_{\rm good}) | Preserve exact identity rather than sample-trace membership. | Definition 4.3, decomposition leaf condition, and Lyu Theorem 3 empirical contradiction. | Exact fixed-class membership witness and empirical utility. | Internal-to-public accuracy bridge. | PENDING |
| `step_011` | Retain the exact Lemma 4.2 structural conclusion; construct the measurable unreleased occurrence mark for the exact Sparse Sample output; prove block locality and the fixed-section Fubini interface; prove the correct one-sided lower-tail Chernoff inequality locally; derive (Holdout), (Compression), and (CompressionLog); and close total utility failure at most (\beta). | `step_004`, `step_005`, `step_006`, `step_008`, `step_010` | Primitive `assump:realizable-iid`, `assump:finite-littlestone`, `assump:approximate-dp-regime`; derived output/event/list facts | Measurable population control for a data-dependent improper output from possibly infinite (C), without a permissibility assumption or uncountable supremum event. | Finite-state marked-kernel lift, product-section Fubini on an already measurable event, finite union over (\mathcal U_i(S_i)), and a local exponential-Markov Chernoff proof. | Population error at most (\alpha), with a legal (\beta_{\rm gen}=\beta/4) event. | Prove (\log[4k(d+1)L/\beta]\le22d^2a\log Q<(9/32)\alpha(k-1)m); no new public sample term. | PENDING |
| `step_012` | Substitute (k\le\bar k), eliminate every auxiliary, prove the displayed (K\lambda^qR_{\rm VC}) rate, normalize the old-Lyu and finite-class arms to the same DP/PAC interface, disable the finite arm for infinite (C), prove the (v=d) and (d=0) baselines, and derive (N\delta\to0) only under the declared schedule. | `step_001`, `step_005`, `step_008`, `step_009`, `step_011` | All three primitive assumptions; accepted DP/PAC/rate outputs | No hidden positive power, no unclassified (log n_0), and exact common-interface comparison. | Explicit Rate Specialization Bridge; Lyu Theorem 3/Corollary 5.1 with coarse trace calibration and the same marked finite-reconstruction PAC bridge; finite-class exponential mechanism. | Exact theorem and three-arm frontier. | Full structural-, confidence-, privacy-, and accuracy-explicit public rate. | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier step. `step_001`
first certifies the exact teacher parameter, public envelope, list/noise margin,
allocations, and total procedure, so no trace or mechanism step consumes an
unproduced parameter. The trace
producers `step_002` and `step_003` combine in `step_004`, and `step_005`
closes their scalar budget. `step_006` is now the complete source-convention
and output-identity wrapper; no later step is asked to discover a source label,
factor-two bridge, or irreducibility scale. `step_007` produces structural
support. `step_008` consumes the already-fixed teacher interface and proves the mechanism interfaces.
`step_009` consumes the total procedure and exact adjacency map independently
of utility. `step_010` produces exact SOA membership and empirical error.
`step_011` then uses the finite state already produced by `step_008`, the
block-local lists from `step_006`, and `step_010`'s empirical error to build
the measurable occurrence mark and evaluate a finite producer-block candidate
union on the independent complement. `step_012` consumes only completed DP,
PAC, and scalar outputs.

Every theorem-critical remaining obligation is `step-local`: its mechanism
source, exact convention, raw controls, output interface, boundary behavior,
and producer-consumer path are fixed above. The marked lift is fixed as the
finite conditional kernel (K(f)/|I_r(f)|), the event to which Fubini is applied
is explicitly measurable, and the one-sided lower-tail source is a local mgf
derivation rather than the false printed two-sided citation. A failure of the
factor-two bridge, teacher envelope, total adjacency map, exact SOA membership,
finite-state marked lift, or block locality would be a sketch/interface defect
rather than acceptable local work; the obstruction-level construction above
supplies each interface under the unchanged procedure.

## Blockers

None.

## Self-Audit

- Goal alignment: the binding assumptions, learner family, unconditional scope, metric, success criterion, and `material_partial` label are unchanged.
- Source convention: source stages (1,\ldots,d+1), source (p_s=2^sn_0d), current stages (0,\ldots,d), the factor-two residual, the exact Lemma 4.3 pairing, and every consumed irreducibility scale are explicit.
- Teacher closure: (k), (B), (L), AboveThreshold accuracy, failure-symbol/effective-domain losses, and the public (k) envelope are fixed; (log\alpha^{-1}), (log n_0), and (log L) have named inequalities.
- Totality/privacy: empty restrictions and lists, first query, stage exhaustion, (\perp), no success, default output, transcript-conditioned tuples, and raw replacement are fixed before privacy.
- Improper output: the selected actual function is produced with exact (\operatorname{SOA}_{\mathcal G}) identity and ((d+1))-irreducibility before Lemma 4.2 is consumed.
- Measurability/generalization: no generic relative-VC theorem, uncountable supremum event, outer-Fubini step, separability assumption, or permissibility assumption remains. The exact finite Sparse Sample state has an unreleased measurable occurrence mark; after fixing its producer block, all-stage candidates are finite and fixed before the independent complement sample.
- Chernoff source: `step_011` locally proves the one-sided lower-tail inequality used in (LowerTail); it does not cite Lyu Proposition 1's false factor-one two-sided display.
- Baselines: (d=0), (v=d), old Lyu, finite/infinite classes, and (N\delta\to0) are preserved on exact common interfaces.
- Locality: all unresolved derivations instantiate already-exposed sources and interfaces; none changes the setting or algorithm.
- Dependency validity: 12 stable forward-only step IDs, all with `Review status = PENDING`.
