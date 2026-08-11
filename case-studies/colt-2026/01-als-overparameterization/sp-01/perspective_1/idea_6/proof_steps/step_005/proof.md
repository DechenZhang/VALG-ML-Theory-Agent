# Proof Step

## Step Identity

- Sketch attempt: 9
- Binding setting SHA-256: `a6991b0e308a8a33e782be75f9f081325404974335e5c00df85e6d8a80921cab`
- Binding proof-sketch SHA-256: `39fa8ed5134725387a788dc84467bee0f4530083192a1cd1845d16ff92075334`
- Binding proof-sketch-review SHA-256: `f1e96d74e126f7bede1f8503aaf54fbcdf82663da318e40f53de8ea372e28cd4`
- Step ID: `step_005`
- Unit attempt: 1
- Accepted global diagnostic SHA-256: `a4d5f9953eedd3eced7248328b79839083bbda8a9c246b506a018d529d8f7ffd`; review SHA-256: `1354d398c8555f0864d2b9067a510851296afa22be648290ba363849bae6f2b8`

## Target Step Claim

- Intended claim: Using `E_cert_eq` and the global `E_cert_tail` ledger,
  retain `diag(lambda)` in the pair equations and prove the weighted
  support/score classifier, the direct `m>=2` score bound, theta lower
  bound, sign/gauge consistency, component/mixture gap, graph separation,
  and exactly `r` observable clusters with per-mode dual l1 chart and
  denominator margins.
- Dependencies: `step_004`, `step_004b`.
- Assumptions used: `E_sm`, `E_chart`, `E_cert_tail`, and
  `E_cert_eq` (all derived); `E_chart_l1` is used only as a
  covered-slot tightening.
- Technical challenge: all-certified support classification with unequal
  weights, threshold boundaries, negative or zero scores, graph separation,
  and a target-free sign/product gauge.
- Intended proof tool or cited result: explicit `vartheta` threshold,
  `vartheta_*` floor, `a_cert` tail, coefficient-vector Gram budget, exact
  scalar cancellation, denominator profile `144eta_0`, exact `S_I`, and
  perturbation inequalities.
- Output target: `E_support_wt`, `E_cluster`, `E_gauge`, the proof-only
  target permutation, `s_comp`, and the chart/denominator margins.
- Rate objective: structural-parameter explicit, finite certified-pool
  classification with constants `1/8,1/16,7,16,68,72,96,104,144,160`,
  `s_mix*1.01<0.794`, and graph threshold `1-64q_*`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - No additional primitive theorem condition is introduced. The fixed
    setting declarations `r>=3`, `q_*=1/4096`, and
    `tau_r=q_*^2/(10^4r)` are used only as numerical parameter
    definitions. The procedure and the observable score/graph rule are the
    setting definitions.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-004-certificate} in
    `perspective_1/idea_6/proof_steps/step_004/proof.md`, with matching
    `Step-Review Status = ACCEPTED`, supplies the generated `E_cert`
    interface. Together with its accepted `E_sm`, `E_cov`, `E_chart`, and
    `E_chart_l1` context, it gives every covered target a certified stored
    state, covered-slot dual off-target mass at most `1/1024`, and a
    same-state nonzero look-ahead for every stored certificate.
  - Accepted Proposition~\ref{prop:step-004b-same-state},
    Lemma~\ref{lem:step-004b-span}, Proposition~\ref{prop:step-004b-threshold},
    Proposition~\ref{prop:step-004b-ledger}, Proposition~\ref{prop:step-004b-multiscore},
    and Lemma~\ref{lem:step-004b-bars} in
    `perspective_1/idea_6/proof_steps/step_004b/proof.md`, with matching
    `Step-Review Status = ACCEPTED`, supply `E_cert_eq` and
    `E_cert_tail`. For every certified slot they supply the `LOW`
    alternative, singleton interval
    `s_- lambda_j <= |theta_a| <= s_+ lambda_j`, the
    multi-support bound
    `|theta_a| <= lambda_max(1/sqrt(m)+160 eta_0)`, singleton tail
    `a_cert=7q_*+8tau_r`, retained-floor profile with reserve `144 eta_0`,
    and the exact same-state equation with column residual bounded by
    `d_M(a) tau_r`.
- Local conditional hypotheses:
  - For the boundary paragraph of Proposition~\ref{prop:step-005-weighted-score}
    only: \(q_{\rm real}=0\) and an exact stationary same-state
    representative in the realized target spans with nonempty support \(I\).
    This is a deterministic
    baseline specialization and is not consumed by the unconditional
    classifier. The target-index notation elsewhere is assigned only after
    the derived singleton branch is proved.

The accepted hashes used as dependency identities are
`acb7aa8bb00dc36f86a173b202b7e49f09e42c48044f5ab8f336e7ea8ad1014e`
for `step_004` (review
`076c1e87a34b867423d36368b5f6fb360168abcceb5b128f75bcb3f41fe49ee6`)
and
`1ce99c99b43179fb0b83734d8aa6e48c363917290efd240f2df35a1c264508dc`
for `step_004b` (review
`d4af97c9a046f904ed82a58201219e0862faece14b93e953b6650085137351a3`).
Their accepted reviews are consumed as the review gate; no archival or
prior-branch artifact is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | lemma | Under the accepted coverage, chart, and ledger outputs, every covered target has a distinct certified singleton witness with score at least `s_- lambda_j`; the certified maximum is bounded above by `s_+ lambda_max`. | Supplies nonempty component witnesses and the score scale for the observable filter. |
| `unit_002` | proposition | Under `E_cert_tail`, every non-LOW slot is singleton or multi-support; the multi-support score obeys the direct `s_mix` bound, and the exact orthogonal stationary support formula is `S_I=(sum_{i in I}lambda_i^{-2})^{-1/2}`. | Proves the weighted component/mixture comparison and records the exact boundary profile. |
| `unit_003` | proposition | The observable `0.85 sigma_max` filter retains exactly the singleton branch, rejects LOW and all `m>=2` branches, and every retained score is \(>0.8 lambda_min\). | Produces the all-certified weighted support/score classifier `E_support_wt`. |
| `unit_004` | lemma | Every retained singleton assigned to \(j\) has a product-preserving target orientation with dual off-target l1 mass \(<1/256\), ambient radius \(\chi_{\rm sel}=2a_{\rm cert}+4q_*<1/128\), and contraction denominator \(31/32\le D_M/\lambda_j\le33/32\). The oriented core signs multiply to \(\operatorname{sgn}(\theta)\). | Supplies `E_cluster`/`E_gauge` chart and denominator margins and the sign source. |
| `unit_005` | proposition | On the retained pool, two states from the same singleton target are joined by the observable graph and states from different targets are never joined; coverage makes every target nonempty. Hence the graph has exactly `r` components and a proof-only target permutation. | Produces the exact data-only clustering interface. |
| `unit_006` | lemma | Under the named same-state and barred-equation results, for every retained slot with derived singleton index \(j(a)\), the certificate signs equal \(\operatorname{sgn}(\theta_a)\); absorbing that sign and applying a product-one direction gauge preserves the initialized rank-one term and yields the barred post-score equation with \(\bar\theta=|\theta_a|>0\). Define \(s_{\rm comp,a}=|\theta_a|/\lambda_{j(a)}\), and identify \(j(a)=\pi(a)\) only for selected representatives. | Produces `E_gauge`, positive scalar, component score ratio, and the exact sign convention for downstream equations. |
| `unit_007` | claim | All outputs are finite, same-state, pre-clustering derived objects; the orthogonal weighted stationary and equal-weight baselines are preserved. | Closes scope, accumulation, provenance, and baseline obligations. |

Atomic step = no. The weighted case split, filter comparison, chart/denominator
transfer, graph separation, and sign/gauge conversion are independent
nontrivial claims.

## Cited Result Applications

### Accepted dependency: certified chart and coverage

- Source: accepted Proposition~\ref{prop:step-004-certificate} and its
  accepted `step_004` review, with the `E_sm`/`E_cov` context supplied by
  the already accepted upstream dependency chain.
- Restated statement in current notation: conditional on the accepted
  generated events `E_sm` and `E_cov`, every target has a covered proposal
  state stored after the finite certification window; the stored state
  itself is used; its same-state look-ahead is nonzero; and for a covered
  stored state the target-dual off-target mass is at most `1/1024`. The
  accepted chart has \(\chi_{\rm chart}=1/128\), and the accepted realized
  Gram rows have off-diagonal mass at most \(q\le q_*\).
- Assumption discharge: these are accepted generated conclusions of
  `step_004`; no coverage, chart membership, or certificate property is
  assumed locally.
- Conclusion used: a nonempty, target-indexed witness for each component,
  the covered-slot tightening used in unit_001, and the realized geometry
  used in units 004--005.

### Accepted dependency: same-state weighted ledger

- Source: accepted Proposition~\ref{prop:step-004b-same-state},
  Lemma~\ref{lem:step-004b-span}, Proposition~\ref{prop:step-004b-threshold},
  Proposition~\ref{prop:step-004b-ledger},
  Proposition~\ref{prop:step-004b-multiscore}, and
  Lemma~\ref{lem:step-004b-bars} in `step_004b`.
- Restated statement in current notation: for every stored certified slot,
  `E_cert_eq` is
  \(P_M^{\rm raw}D_M=G_MK_M^{\rm raw}\Sigma_M+R_M^{\rm raw}\) with
  \(\|R_M^{\rm raw}(:,a)\|_2\le d_M(a)\tau_r\), where the unsigned
  same-state contraction is
  \(f_{M,a}=T(\mathord{\cdot}_M,h_{M',a},h_{M'',a})
  =G_MK_M^{\rm raw}(:,a)\); before any label or graph,
  the slot is LOW, singleton, or multi-support with the exact tail/profile
  and score bounds listed in the allowed dependencies.
- Assumption discharge: the accepted `E_cert` and `E_sm` conclusions
  are the only generated inputs used by that dependency.
- Conclusion used: all score gaps, tails, weighted profile fields, and the
  raw equation used in the present step.

### Elementary current-notation inequalities

- For unit vectors \(x,y\),
  \(\langle x,y\rangle=1-\|x-y\|_2^2/2\) after a positive orientation.
- For a matrix \(G\) with unit columns and Gram off-diagonal row mass at most
  \(q\), \(\|G_{-j}\|_2\le\sqrt{1+q}\), and
  \(\|G_{-j}^Tg_j\|_2\le q\). These follow from the symmetric Gram
  induced-norm comparison and are applied only to the accepted realized
  factors.
- For finite vectors, \(\|a\circ b\|_1\le\|a\|_2\|b\|_2\), and
  \(\|\sum_i t_i g_i\|_2\le\sum_i|t_i|\). These are direct
  Cauchy--Schwarz and triangle inequalities, not external results.

No paper result, target label, population object, or later ALS/quotient
construction is used as evidence.

## Local Derivation

### unit_001: lemma

**Lemma (covered witnesses are singleton component states).**
\label{lem:step-005-covered-singleton}

Under the accepted \(E_{\rm cov}\), \(E_{\rm chart_l1}\), and
\(E_{\rm cert\_tail}\) outputs, for every target \(j\) there is a certified
slot whose threshold core is \(I=\{j\}\), whose score satisfies
\[
s_-\lambda_j\le \sigma_a:=|\theta_a|\le s_+\lambda_j .
\tag{1}
\]
Distinct targets cannot use the same covered slot.

**Proof / justification.**

Fix a covered slot for \(j\). The accepted step-004 dual-entry lemma first
gives the burn-time bound \(a_{t_b}\le1/1024\). Its accepted chart self-map
gives \(a_{t+1}\le33/65536<1/1024\), so induction shows that every later
covered stored state, including the state selected by the finite
certificate rule, has the same bound. Thus the following is a derived
interface rather than an added chart assumption, in the realized target
dual notation of `step_004b`:
\[
\sum_{\ell\ne j}|c_{M,\ell}|\le {1\over1024}
\qquad(M=U,V,W).
\tag{2}
\]
The dual norm bounds in `step_004b` give
\[
s_M^2\ge {1-\tau_r^2\over1+q_*},\qquad
s_M\ge 1-q_* .
\tag{3}
\]
Consequently \(\sum_{\ell\ne j}|u_{M,\ell}|<1/1000\), where
\(u_M=c_M/s_M\). Hence every off-target \(x_{M,\ell}=|u_{M,\ell}|\)
is below \(\vartheta=1/8\), while
\(x_{M,j}=\sqrt{1-\sum_{\ell\ne j}x_{M,\ell}^2}>1/8\). Thus the
threshold core in the accepted ledger is exactly \(\{j\}\), in all three
modes. Proposition~\ref{prop:step-004b-ledger} then gives (1).

The ambient chart part of the accepted dependency gives, after a possible
modewise sign, a vector within \(1/128\) of \(g_{M,j}\). If the same stored
slot were covered for two distinct targets \(j\ne\ell\), two signed target
columns would be within \(2/128\) of one another. But
\[
\|g_{M,j}\mp g_{M,\ell}\|_2^2
=2-2|\langle g_{M,j},g_{M,\ell}\rangle|
\ge2(1-q_*)>1 ,
\]
whereas \((2/128)^2<1\), a contradiction. Therefore covered witnesses for
different targets are distinct. \(\square\)

### unit_002: proposition

**Proposition (weighted support and exact stationary mixture score).**
\label{prop:step-005-weighted-score}

Under \(E_{\rm cert\_tail}\) and \(E_{\rm sm}\), every non-LOW certified
slot is either a singleton \(I=\{j\}\) with (1), or has
\(m:=|I|\ge2\) and
\[
\sigma_a\le\lambda_{\max}\left({1\over\sqrt m}+160\eta_0\right)
\le s_{\rm mix}\lambda_{\max},\qquad
s_{\rm mix}:={1\over\sqrt2}+160\eta_0 .
\tag{4}
\]
At the exact orthogonal stationary boundary, for any nonempty support
\(I\), the weighted score is exactly
\[
S_I=\left(\sum_{i\in I}\lambda_i^{-2}\right)^{-1/2}
=\lambda_{\min}\left(\sum_{i\in I}\mu_i^{-2}\right)^{-1/2},
\qquad \mu_i={\lambda_i\over\lambda_{\min}} .
\tag{5}
\]

**Proof / justification.**

The accepted no-label ledger proves that the empty and threshold-straddling
cases are impossible on the non-LOW branch, so the singleton/multi-support
split is exhaustive. For \(m\ge2\), the retained-coordinate
profile-to-score lemma in `step_004b` gives the first inequality in (4);
\(1/\sqrt m\le1/\sqrt2\) gives the second.

For (5), set \(q_{\rm real}=0\) and consider an exact stationary
same-state Jacobi representative with nonzero coordinates on \(I\).
Take absolute values in the three exact mode equations and write
\(x_{M,i}>0\) for the resulting magnitudes. The equations are
\[
d_Ux_{U,i}=\lambda_i x_{V,i}x_{W,i},\quad
d_Vx_{V,i}=\lambda_i x_{U,i}x_{W,i},\quad
d_Wx_{W,i}=\lambda_i x_{U,i}x_{V,i}.
\tag{6}
\]
Dividing the first two equations gives
\(d_Ux_{U,i}^2=d_Vx_{V,i}^2\), and cyclically. Summing over \(i\in I\)
and using \(\sum_i x_{M,i}^2=1\) yields
\(d_U=d_V=d_W=:d\) and \(x_{U,i}=x_{V,i}=x_{W,i}=d/\lambda_i\).
Normalization gives \(d^2\sum_{i\in I}\lambda_i^{-2}=1\), and the
magnitude of the stationary score is
\(\sum_{i\in I}\lambda_i x_{U,i}x_{V,i}x_{W,i}=d\).
The projective sign equations force the product sign of every nonzero
support coordinate to be the same certificate sign: if
\(p_{M,i}=\sigma_{M,i}x_{M,i}\) and the mode-\(M\) projective sign is
\(\varepsilon_M\), then
\(\sigma_{M,i}=\varepsilon_M\sigma_{M',i}\sigma_{M'',i}\), so
\(\sigma_{U,i}\sigma_{V,i}\sigma_{W,i}=\varepsilon_U=\varepsilon_V
=\varepsilon_W\), independently of \(i\). Hence there is no cancellation
in the absolute score. This proves (5).
This is a deterministic boundary calculation, not an assumption for the
positive-interference classifier. \(\square\)

### unit_003: proposition

**Proposition (observable score gap and retained support).**
\label{prop:step-005-filter}

Under Lemma~\ref{lem:step-005-covered-singleton}, Proposition~\ref{prop:step-005-weighted-score},
the accepted \(E_{\rm cov}\), \(E_{\rm sm}\), and the ledger outputs
of Proposition~\ref{prop:step-004b-threshold}, Proposition~\ref{prop:step-004b-ledger},
and Proposition~\ref{prop:step-004b-multiscore}, let
\(\sigma_{\max}=\max_{a\in{\cal I}_{\rm cert}}\sigma_a\). Then
\[
\sigma_{\max}\ge s_-\lambda_{\max},\qquad
\sigma_{\max}\le s_+\lambda_{\max},
\tag{7}
\]
and the setting filter \(\sigma_a\ge0.85\sigma_{\max}\) retains exactly
the singleton ledger branch. Every retained slot satisfies
\[
\sigma_a\ge0.85s_-\lambda_{\min}>0.8\lambda_{\min}>0 .
\tag{8}
\]

**Proof / justification.**

The lower bound in (7) follows from Lemma~\ref{lem:step-005-covered-singleton}
applied to a target attaining \(\lambda_{\max}\). For the upper bound, LOW slots are below
\(0.7\lambda_{\min}\), singleton slots are at most \(s_+\lambda_{\max}\),
and multi-support slots are at most \(s_{\rm mix}\lambda_{\max}\); the
last is smaller than \(s_+\lambda_{\max}\) at the numerical endpoint
verified below. Thus every certified score is bounded by \(s_+\lambda_{\max}\).

The accepted ledger gives
\[
\eta_0<4.89\cdot10^{-4},\quad
s_->0.953,\quad s_+<1.047,\quad
1.01s_{\rm mix}<0.794,\quad
0.85s_->0.810 .
\tag{9}
\]
For a multi-support slot, (4) and \(\lambda_{\max}\le1.01\lambda_{\min}\)
give
\[
\sigma_a\le1.01s_{\rm mix}\lambda_{\min}
<0.794\lambda_{\min}
<0.85s_-\lambda_{\min}\le0.85\sigma_{\max}.
\tag{10}
\]
For a LOW slot,
\(0.7\lambda_{\min}<0.85s_-\lambda_{\min}\le0.85\sigma_{\max}\).
Conversely, a singleton slot with core \(j\) obeys
\[
{\sigma_a\over\sigma_{\max}}
\ge {s_-\lambda_j\over s_+\lambda_{\max}}
\ge {s_-\over1.01s_+}>0.901>0.85 .
\tag{11}
\]
Thus every singleton is retained and no other branch is retained. Equation
(8) follows from the lower score of any retained slot and (9). Strict
inequalities precede the setting's tie rule, so equal scores cannot alter
the branch classification. The generated `E_support_wt` record
retains the LOW flag, threshold core, singleton tail, multi-support tail
score, retained-floor profile, \(s_-,s_+,s_{\rm mix}\), and the exact
weighted support formula, before any graph label or gauge is formed.
\(\square\)

### unit_004: lemma

**Lemma (selected singleton chart and denominator margins).**
\label{lem:step-005-chart-denom}

Under \(E_{\rm sm}\), \(E_{\rm cert\_eq}\), and the singleton output of
Proposition~\ref{prop:step-005-filter}, let a retained slot \(a\) have
singleton index \(j\). For each mode choose
\(\beta_{M,a}\in\{\pm1\}\) so that
\[
\bar p_{M,a}:=\beta_{M,a}p^{\rm raw}_{M,a}
\quad\hbox{satisfies}\quad
\langle g_{M,j},\bar p_{M,a}\rangle>0 .
\tag{12}
\]
Then, with
\[
\chi_{\rm sel}:=2a_{\rm cert}+4q_*<1/128,\qquad
\chi_{\rm dual}:=a_{\rm cert}+4q_*<1/256,
\tag{13}
\]
\[
\|\bar p_{M,a}-g_{M,j}\|_2\le\chi_{\rm sel},\qquad
\sum_{\ell\ne j}|(L_M^T\bar p_{M,a})_\ell|
\le\chi_{\rm dual}.
\tag{14}
\]
If \(D_M(a,a)\) is the same-state contraction norm, then
\[
{31\over32}\lambda_j\le D_M(a,a)\le{33\over32}\lambda_j .
\tag{15}
\]
Moreover, if \(b_{M,a}=G_M^T\bar p_{M,a}\), then
\(\operatorname{sgn}(b_{M,a,j})=\beta_{M,a}\operatorname{sgn}
(u_{M,a,j})\), and
\[
\operatorname{sgn}(\theta_a)=\prod_M\beta_{M,a}.
\tag{16}
\]

**Proof / justification.**

Write the accepted ledger's singleton decomposition as
\(p_M^{\rm raw}=G_Mc_M+p_M^\perp\), \(c_M=s_Mu_M\), with
\(\|p_M^\perp\|_2\le\tau_r\), \(|s_M-1|\le q_*\), and
\(\sum_{\ell\ne j}|u_{M,\ell}|\le a_{\rm cert}\). Since
\(|u_{M,j}|=\sqrt{1-\|u_{M,-j}\|_2^2}\), we have
\[
1-|u_{M,j}|\le a_{\rm cert}^2,\qquad
\big|(H_Mu_M)_j-u_{M,j}\big|\le q_* .
\tag{17}
\]
Thus \(H_Mu_M\) has the same \(j\)-coordinate sign as \(u_{M,j}\):
\(|u_{M,j}|>1-a_{\rm cert}^2>q_*\). This proves that (12) is
well-defined and that \(\beta_{M,a}\) also orients \(u_{M,j}\) positively.

After this orientation, \(\bar u_{M,j}>0\). Using
\(p=G(s\bar u)+\bar p^\perp\), \(\|Gz\|_2\le\|z\|_1\), and (17),
\[
\begin{aligned}
\|\bar p-g_j\|_2
&\le |s-1|+s(1-\bar u_j)
   +s\sum_{\ell\ne j}|\bar u_\ell|+\tau_r\\
&\le q_*+(1+q_*)a_{\rm cert}^2
   +(1+q_*)a_{\rm cert}+\tau_r\\
&<2a_{\rm cert}+4q_*=\chi_{\rm sel}.
\end{aligned}
\tag{18}
\]
Also \(L_M^T\bar p=\beta_Mc_M\), so its off-target l1 mass is at most
\((1+q_*)a_{\rm cert}<a_{\rm cert}+4q_*=\chi_{\rm dual}\).
The numerical inequalities in (13) use
\(a_{\rm cert}=7q_*+8\tau_r\), \(r\ge3\), and \(q_*=1/4096\).

For the denominator, put \(e_M=\bar p_M-g_{M,j}\) and
\[
B:=q_*+\sqrt{1+q_*}\,\chi_{\rm sel}.
\tag{19}
\]
The accepted Gram bounds give
\[
1-\chi_{\rm sel}^2/2\le b_{M,j}\le1,\qquad
\|b_{M,-j}\|_2\le B<1/123 .
\tag{20}
\]
For a mode \(M\), the held-input contraction divided by \(\lambda_j\)
differs from \(g_{M,j}\) by at most
\[
\Delta:=\chi_{\rm sel}^2+\Gamma B^2
< {1\over16384}+{1.01\over123^2}
<q_*<{1\over32}.
\tag{21}
\]
Indeed, the first term is
\(|b_{M',j}b_{M'',j}-1|\), and the second is bounded by
\(\Gamma\|b_{M',-j}\|_2\|b_{M'',-j}\|_2\) and the triangle inequality
over the realized columns. Therefore
\(\lambda_j(1-\Delta)\le D_M(a,a)\le\lambda_j(1+\Delta)\), which
implies (15). This also proves all selected denominators are positive.

Finally, expand the score after the orientation:
\[
\frac{\theta_a\prod_M\beta_{M,a}}{\lambda_j}
=b_{U,j}b_{V,j}b_{W,j}
+\sum_{i\ne j}\frac{\lambda_i}{\lambda_j}
  b_{U,i}b_{V,i}b_{W,i}.
\tag{22}
\]
The first term is at least \((1-\chi_{\rm sel}^2/2)^3>0.99\).
The absolute value of the second is at most
\(\Gamma\sqrt{1+q_*}\,B^2<10^{-3}\), by (20). Thus the left side is
positive, proving (16). \(\square\)

### unit_005: proposition

**Proposition (observable graph separation and exactly \(r\) clusters).**
\label{prop:step-005-clusters}

Under Proposition~\ref{prop:step-005-filter} and
Lemma~\ref{lem:step-005-chart-denom}, assign every retained slot its
derived singleton index \(j(a)\). For two retained slots \(a,b\), in
each mode:
\[
\begin{cases}
|\langle p_{M,a}^{\rm raw},p_{M,b}^{\rm raw}\rangle|
\ge1-32q_* ,&j(a)=j(b),\\
|\langle p_{M,a}^{\rm raw},p_{M,b}^{\rm raw}\rangle|
\le q_*+4a_{\rm cert}+16q_*<1/32 ,&j(a)\ne j(b).
\end{cases}
\tag{23}
\]
Let \(\mathcal A_{\rm sel}\) be the prescribed minimum-\(\zeta\) representative
set, with the setting's score tie rule, and define the proof-only map
\(\pi(a):=j(a)\) for \(a\in\mathcal A_{\rm sel}\). Consequently the setting graph edge criterion
\(|\langle p_{M,a}^{\rm raw},p_{M,b}^{\rm raw}\rangle|\ge1-64q_*\)
in all three modes joins exactly the same-index pairs. On \(E_{\rm cov}\)
each index is nonempty, so the graph has exactly \(r\) connected
components. Selecting the prescribed minimum-\(\zeta\) member (with its
score tie rule) yields a proof-only permutation
\(\pi:[r]\to[r]\) from selected slots to realized target indices.

**Proof / justification.**

Use the oriented copies from Lemma~\ref{lem:step-005-chart-denom}. If two slots
have the same \(j\), their oriented mode vectors are each within
\(\chi_{\rm sel}\) of \(g_{M,j}\), so
\[
\langle\bar p_{M,a},\bar p_{M,b}\rangle
\ge1-\frac{(2\chi_{\rm sel})^2}{2}
=1-2\chi_{\rm sel}^2
>1-32q_* .
\tag{24}
\]
Absolute inner products are unchanged by the signs. If \(j\ne\ell\),
\[
|\langle\bar p_{M,a},\bar p_{M,b}\rangle|
\le|\langle g_{M,j},g_{M,\ell}\rangle|
  + 2\chi_{\rm sel}+\chi_{\rm sel}^2
\le q_*+4a_{\rm cert}+16q_* .
\tag{25}
\]
The last inequality uses \(\chi_{\rm sel}=2a_{\rm cert}+4q_*\) and
\(\chi_{\rm sel}^2<8q_*\), which follows from
\(\chi_{\rm sel}<1/128\). The numerical right side is \(<1/32\), while
\(1-32q_*>1-64q_*\). Thus the graph is the disjoint union of the
nonempty same-index groups. The post hoc map \(\pi\) is not an algorithmic
label; it only records the observable components for downstream proof
coordinates. \(\square\)

### unit_006: lemma

**Lemma (certificate signs and product-preserving gauge).**
\label{lem:step-005-gauge}

Under Proposition~\ref{prop:step-004b-same-state},
Lemma~\ref{lem:step-004b-bars}, Proposition~\ref{prop:step-005-filter},
and Lemma~\ref{lem:step-005-chart-denom}, every retained slot has all three
certificate signs in \(E_{\rm cert\_eq}\) equal
\(\operatorname{sgn}(\theta_a)\). More
precisely, for each mode let \(h_{M,a}=p_{M,a}^{\rm raw}\) denote the
corresponding entry of the same stored state and define
\[
f_{M,a}:=T(\mathord{\cdot}_M,h_{M',a},h_{M'',a})
=G_MK_M^{\rm raw}(:,a).
\]
Then \(\langle p_{M,a}^{\rm raw},f_{M,a}\rangle=\theta_a\). With
\(\beta_{M,a}\) from Lemma~\ref{lem:step-005-chart-denom},
\(\prod_M\beta_{M,a}=\operatorname{sgn}(\theta_a)\). Let
\(a_{U,a}=a_{V,a}=1\) and \(a_{W,a}=\operatorname{sgn}(\theta_a)\), and
\(\gamma_{M,a}=\beta_{M,a}/a_{M,a}\). Then
\(\prod_M\gamma_{M,a}=1\), the initialized tensor term is unchanged, and
\[
\bar P_MD_M=G_M\bar K_M+\bar R_M,\qquad
\bar\theta_a=|\theta_a|,\qquad
s_{{\rm comp},a}:={|\theta_a|\over\lambda_{j(a)}}\in[s_-,s_+],
\quad\text{and, for selected representatives }a\in\mathcal A_{\rm sel},
\quad j(a)=\pi(a).
\tag{26}
\]

**Proof / justification.**

The \(a\)-th column of the raw equation supplied by
\(E_{\rm cert\_eq}\) is
\[
p_{M,a}^{\rm raw}d_M(a)
=\varepsilon_{M,a}f_{M,a}+R_M^{\rm raw}(:,a),qquad
\|R_M^{\rm raw}(:,a)\|_2\le d_M(a)\tau_r.
\]
Because all three factors in this contraction come from the same stored
state, multilinearity gives
\[
\langle p_{M,a}^{\rm raw},f_{M,a}\rangle
=\langle T,p_{U,a}^{\rm raw}\otimes p_{V,a}^{\rm raw}
                \otimes p_{W,a}^{\rm raw}\rangle
=\theta_a.
\]
Taking the inner product of the raw equation with the unit vector
\(p_{M,a}^{\rm raw}\), and then multiplying by
\(\varepsilon_{M,a}\), therefore gives the certificate inequality
\[
|\theta_a-\varepsilon_{M,a}d_M(a)|\le d_M(a)\tau_r .
\tag{27}
\]
Because \(d_M(a)>0\), \(\tau_r<1\), and the retained score is nonzero by
(8), (27) forces
\(\varepsilon_{M,a}=\operatorname{sgn}(\theta_a)\) for all three modes.

The second assertion is Lemma~\ref{lem:step-005-chart-denom}. Define the
proof-only barred columns and coefficients by
\[
\bar P_M(:,a)=\beta_{M,a}P_M^{\rm raw}(:,a),\quad
\bar R_M(:,a)=\beta_{M,a}R_M^{\rm raw}(:,a),\quad
\bar K_M(:,a)=\beta_{M',a}\beta_{M'',a}K_M^{\rm raw}(:,a).
\tag{28}
\]
Since \(\prod_M\beta_{M,a}=\varepsilon_{M,a}\), multiplying the raw
equation by \(\beta_{M,a}\) gives the barred equation in (26). Moreover,
\[
\bar\theta_a
=\left(\prod_M\beta_{M,a}\right)\theta_a=|\theta_a|.
\]
The raw initialized term is
\(\theta_a p_U\otimes p_V\otimes p_W\). The barred positive-amplitude
term is
\(|\theta_a|\bar p_U\otimes\bar p_V\otimes\bar p_W\), equal to the same
tensor because \(\prod_M\beta_{M,a}=\operatorname{sgn}(\theta_a)\).
The decomposition \(\beta=a\gamma\) has product-one \(\gamma\); hence it
is precisely a product-preserving direction gauge after the score sign is
absorbed in the initialized third factor. The interval for
\(s_{\rm comp}\) is the singleton interval from the ledger. The permutation
is used only on the selected representative set, where
Proposition~\ref{prop:step-005-clusters} defines \(j(a)=\pi(a)\).
\(\square\)

### unit_007: claim

**Claim (finite scope, generated-output flow, and baseline).**
\label{claim:step-005-closure}

Under the accepted classifier, cluster, and gauge outputs,

\(E_{\rm support\_wt}\) is produced from
\(E_{\rm cert\_eq},E_{\rm cert\_tail},E_{\rm sm},E_{\rm cov}\) before any
target permutation, graph tie break, or gauge. \(E_{\rm cluster}\) and
\(E_{\rm gauge}\) are then produced from that classifier and the same
stored directions. All three are finite-pool, same-state outputs and are
independent of later active ALS or \({\rm Refresh}_s\) objects.
At \(q_{\rm real}=0,\Gamma=1\), an exact component state is retained,
the exact stationary mixture score is (5), and the equal-weight component
fixed point has zero certificate residual and positive product register
\(s_{\rm comp}=1\).

**Proof / justification.**

The accepted ledger is evaluated once for each of the finitely many stored
states; no recurrence or accumulated residual is used in this step. The
filter and graph are the setting's observable operations, while \(\pi\),
\(\beta\), \(\gamma\), and the barred copies are proof-only records. Their
producer path is
\[
E_{\rm sm},E_{\rm cov},E_{\rm chart},E_{\rm chart_l1}
\longrightarrow E_{\rm cert}
\longrightarrow E_{\rm cert\_eq},E_{\rm cert\_tail}
\longrightarrow E_{\rm support\_wt}
\longrightarrow E_{\rm cluster},E_{\rm gauge}.
\]
No later quotient state is consumed. In the orthogonal equal-weight
stationary component, the exact same-state contraction equals the component
direction, so \(R_M^{\rm raw}=0\), \(|\theta|=\lambda_j\), and
\(s_{\rm comp}=1\). This preserves the exact baseline rather than replacing
it with a finite \(\tau_r\) floor. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-005-covered-singleton} uses the covered trajectory's
\(E_{\rm chart_l1}\) tightening only to show that every target has a
distinct singleton witness; it does not impose that tightening on arbitrary
certified states. Proposition~\ref{prop:step-005-weighted-score} combines
the accepted no-label ledger with the direct retained-coordinate
\(m\ge2\) score bound and records the exact weighted stationary support
formula. Proposition~\ref{prop:step-005-filter} then compares the
\(0.85\sigma_{\max}\) filter with the component lower interval and the
mixture/LOW upper bounds. The displayed strict inequalities show that the
filter retains exactly singleton states, gives a nonzero score margin, and
produces the weighted `E_support_wt` interface.

Lemma~\ref{lem:step-005-chart-denom} transfers every retained singleton to
the same realized target-direction metric, with dual l1 mass below
\(1/256\), ambient radius below \(1/128\), and the explicit
\(31/32\)--\(33/32\) contraction denominator. Proposition
\ref{prop:step-005-clusters} applies those margins before tie breaking and
proves that the observable graph is exactly the disjoint union of \(r\)
nonempty target-index groups, yielding \(E_{\rm cluster}\) and \(\pi\).
Lemma~\ref{lem:step-005-gauge} derives the certificate sign equality,
absorbs negative scores in the setting initialization, applies the
product-one direction gauge, and emits the barred equation, positive
\(\bar\theta\), and \(s_{\rm comp}\), yielding \(E_{\rm gauge}\).
Claim~\ref{claim:step-005-closure} closes the finite-scope, generated-output,
and baseline obligations. These named results prove every field of the
exact accepted sketch-9 `step_005` row without a target-label or later-ALS
assumption.

## Explicit Rate Audit

- Exposed variables: \(r\), \(q=q_{\rm real}\), \(\Gamma\), \(\lambda_{\min}\),
  \(\lambda_{\max}\), \(\tau_r\), \(a_{\rm cert}\), \(\eta_0\),
  \(\eta_{\rm rel}\), \(\vartheta=1/8\), \(\vartheta_*\),
  \(s_-\), \(s_+\), \(s_{\rm mix}\), \(\sigma_{\max}\), the finite certified
  pool size, \(\chi_{\rm dual}\), \(\chi_{\rm sel}\), and the graph threshold.
- Hidden constants may depend only on the fixed numerical constants
  \(q_*,\vartheta,s_{\rm gate}\) and accepted universal geometry margins.
  They may not depend on the base triple, \(n\), \(r\), \(k\), \(\kappa_0\),
  \(\rho\), either confidence parameter, \(\epsilon\), a target label, a
  later ALS state, or an unlisted condition number.
- Fixed quantities: first condition on a realized tensor in \(E_{\rm sm}\)
  and its proposal/certification tape, then evaluate the finite certified
  pool. The proof is deterministic in that order.
- Probability mode: pathwise conditional on \(E_{\rm sm}\) and \(E_{\rm cov}\);
  this step adds no probability loss and performs no confidence conversion.
- Horizon mode: one finite stored state per certified slot and one finite
  graph; no all-time or asymptotic upgrade.
- Norm mode: realized-factor Euclidean correlations, dual l1 mass, weighted
  scalar score, contraction 2-norm, and the setting's absolute-score graph.
- Admissibility conditions and auxiliary tolerances: only the accepted
  \(q\le q_*\), \(\Gamma\le1.01\), \(\tau_r\), and the setting's
  \(\vartheta=1/8\), score threshold \(0.85\), and graph threshold.
- Term absorption or simplification inequalities: (3), (9)--(11),
  (13)--(21), and (23)--(25) explicitly prove all score, chart, denominator,
  and graph absorptions; no \(\Gamma-1\), residual, or tail term is silently
  dropped.
- Probability conversion: None. Coverage and instance probabilities are
  inherited unchanged; restart amplification occurs only downstream.
- Contribution to a Rate Specialization Bridge: supplies the finite
  structural classifier, \(r\)-uniform dual/chart margins, and the
  \(s_{\rm comp}\in[s_-,s_+]\) scalar interface.
- Baseline-reduction check: at \(q_{\rm real}=0,\Gamma=1\), the exact
  simultaneous component map and stationary score formula are retained;
  for the equal-weight component \(s_{\rm comp}=1\), the same-state
  residual is zero and no finite certificate tolerance replaces the exact
  conclusion.

## Blockers

None

## Notation And Assumption Notes

- \(q=q_{\rm real}\), \(\lambda_{\min}\), \(\lambda_{\max}\), \(\mu_i\),
  \(a_{\rm cert}\), \(\eta_0\), \(s_-\), \(s_+\), and \(s_{\rm mix}\) are
  setting/accepted-ledger quantities. They are not new assumptions.
- \(c_M,s_M,u_M,x_M\), \(b_M\), and the perpendicular columns are translated
  from the accepted `step_004b` notation and are proof-local here.
  The contraction
  \(f_{M,a}=T(\mathord{\cdot}_M,h_{M',a},h_{M'',a})
  =G_MK_M^{\rm raw}(:,a)\) is the accepted dependency's same-state object
  and is used here as a proof-local alias, not as a new assumption.
  The public interfaces are only the classifier fields, the selected
  direction/dual margins, \(\pi\), the sign gauge, and \(s_{\rm comp}\).
- \(\chi_{\rm dual}=a_{\rm cert}+4q_*\) and
  \(\chi_{\rm sel}=2a_{\rm cert}+4q_*\) are proved/bounded in
  Lemma~\ref{lem:step-005-chart-denom}; they are not freely chosen radii.
  \(s_{\rm comp,a}=|\theta_a|/\lambda_{j(a)}\) is the minimal
  public-facing interpretation of the sketch's named `s_comp` and is
  proved in Lemma~\ref{lem:step-005-gauge}.
- The singleton index \(j\) is a derived proof label for a retained state;
  the algorithm uses only the observable score and graph. The target
  permutation \(\pi\), the oriented bars, \(\beta\), and \(\gamma\) are
  proof-only objects. The product-one condition on \(\gamma\) is proved,
  not assumed.
- \(E_{\rm support\_wt}\), \(E_{\rm cluster}\), and \(E_{\rm gauge}\) are
  generated outputs. \(E_{\rm support\_wt}\) is produced before graph
  labels, \(E_{\rm cluster}\) produces \(\pi\), and \(E_{\rm gauge}\)
  consumes \(\pi\) and the selected same-state equation. None is an
  algorithmic extra filter or a later invariant.
