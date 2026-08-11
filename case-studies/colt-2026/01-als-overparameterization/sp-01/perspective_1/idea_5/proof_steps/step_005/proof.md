# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: Using E_cert_eq and the global E_cert_tail ledger, retain diag(lambda) in the pair equations and prove the weighted support/score classifier, the direct m>=2 score bound, the theta lower bound, sign/gauge consistency, the component/mixture gap, graph separation, and exactly r observable clusters with per-mode dual l1 chart and denominator margins.
- Depends on: accepted step_004 proof/review and accepted step_004b proof/review.
- Assumptions used: derived E_sm, E_chart, E_cert_tail, and E_cert_eq; E_chart_l1 is used only as a covered-slot tightening and is not a premise for the all-certified classifier. The primitive assump:random-initialization is used only for the stated label-free procedure and its already-derived coverage interface.
- Technical challenge: classify every certified state without a target label, preserve unequal weights in the pair equations, handle threshold-straddling and zero/negative scores, and convert the singleton branch into an observable graph and a product-preserving sign gauge.
- Intended proof tool or cited result: the accepted weighted coordinate ledger, exact orthogonal weighted support calculation, Gram/ambient norm conversion, strict score inequalities, and elementary graph and sign arguments.
- Output target: E_support_wt, E_cluster, and E_gauge, including the target permutation, s_comp, and denominator margins.
- Rate objective: deterministic structural bounds with explicit constants 1/8, 1/16, 7, 16, 68, 72, 96, 104, 144, 160, 0.85, s_mix*1.01<0.794, and graph threshold 1-64q_*.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:random-initialization is used only to keep the proposal and restart procedure label-free. No new probability estimate is made in this step.
  - The setting's r>=3, q_*=1/4096, and the definitions of T, G_M, lambda, P_M, theta, and the score filter are primitive setting definitions, not generated events.
- Derived invariants supplied by accepted dependencies:
  - Accepted step_004 proof/review (through its E_sm interface) gives unit realized columns, symmetric Gram row/column off-diagonal mass at most q:=q_real<=q_*, (1-q)I <= H_M <= (1+q)I, and Gamma<=1.01.
  - Accepted step_004 chart/certification results give E_chart and E_cert for every covered witness. The accepted coverage producer is part of this interface: on E_cov, every target has at least one covered witness and hence at least one certified state. Target labels are used only to state this proof event.
  - Accepted step_004b Proposition prop:step-004b-raw gives the raw same-stored-state right-sign equation E_cert_eq.
  - Accepted step_004b Lemma lem:step-004b-scale, Lemma lem:step-004b-profile, Lemma lem:step-004b-singleton, Proposition prop:step-004b-multi, and Proposition prop:step-004b-straddle give the all-certified, target-label-free E_cert_tail ledger. Accepted Proposition prop:step-004b-barred is used only after the sign conclusion proved here.
- Local conditional hypotheses:
  - Fix a realized instance on E_sm and a full proposal run on its accepted coverage event. Fix any certified slot in that run. The proof-only realized-basis indices, LOW flag, and support core are not algorithmic inputs. Every conclusion is uniform over the finite certified pool.

The all-certified part of the argument does not assume coverage, a target chart, or a selected representative. Coverage is invoked only once, after the classifier is proved, to show that the observable score filter contains one witness for every true component.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under the accepted same-state equation and tail ledger, the exact weighted pair source is retained and every certified state has the LOW/singleton/multi-support alternatives; a multi-support state obeys the explicit m-dependent score bound, and the orthogonal stationary specialization has score S_I. | Produces the weighted support and score fields of E_support_wt. |
| unit_002 | proposition | On the accepted coverage interface, the observable 0.85 sigma_max rule rejects LOW and all multi-support states while retaining at least one singleton witness per target; every retained score is bounded below by 0.85 s_- lambda_min. | Proves the component/mixture score gap and the theta lower bound. |
| unit_003 | lemma | Every retained singleton state has a unique common top index, per-mode ambient distance at most s_comp=1/128 from its assigned realized factor (up to sign), dual off-mass at most a_cert+4q_*<1/256, and positive target/contraction denominator margins. | Supplies the target metric, chart, and denominator interfaces for graph and later selected-state work. |
| unit_004 | proposition | The data-only graph on retained slots has a complete class for each common top index and no cross-index edge; coverage therefore implies exactly r nonempty connected components and a proof-only target permutation. | Produces E_cluster without labels or tie assumptions. |
| unit_005 | proposition | Every retained state has nonzero score, all raw certificate signs equal sgn(theta), and a product-preserving orientation yields positive scalar bar theta=|theta| while preserving the initialized rank-one term and the exact barred same-state equation. | Produces E_gauge and the sign convention consumed downstream. |
| unit_006 | proposition | The preceding interfaces assemble into E_support_wt, E_cluster, and E_gauge, with the exact constants and baseline reduction stated in the target row. | Closes the target-step assembly. |

Atomic step = no. Weighted profile/score algebra, filter separation, target-metric conversion, graph counting, and sign absorption are independent nontrivial obligations.

## Cited Result Applications

### Accepted dependency: realized geometry and chart

- Source: accepted step_004 proof and its ACCEPTED review.
- Restated statement in current notation: on E_sm, for each M in {U,V,W}, H_M:=G_M^T G_M is symmetric with unit diagonal and absolute off-diagonal row and column mass at most q<=q_*; consequently (1-q)I <= H_M <= (1+q)I, ||G_M||_2<=sqrt(1+q), and L_M:=G_M H_M^(-1) is well-defined with ||L_M||_2<=1/sqrt(1-q). On the accepted coverage interface, every target has a stored state with zeta<=tau_r.
- Assumption discharge: the predecessor derives E_sm, the chart, and the stored-state event from the primitive smoothing and initialization conditions. This step treats them only as accepted derived interfaces.
- Conclusion used: Gram conversion, coefficient denominators, and one certified singleton witness per target on E_cov.

### Accepted dependency: raw certificate and global tail ledger

- Source: accepted step_004b proof/review.
- Restated statement in current notation: for every certified stored state, P_M^raw D_M=G_M K_M^raw Sigma_M+R_M^raw, where the pair coefficient is formed from the two other directions at the same stored time and ||R_M^raw(:,a)||_2<=D_M(a,a)tau_r. After dividing by the dual coefficient norms, the target-label-free ledger has eta_G=2q_*+q_*^2, eta_N=5q_*^2, eta_C=2sqrt(r)tau_r, eta_0=eta_G+eta_N+eta_C, eta_rel=8eta_0, vartheta=1/8, and vartheta_*>1/16. It classifies each slot as LOW, singleton, or multi-support; singleton slots have tail at most a_cert=7q_*+8tau_r and score in [s_-lambda_j,s_+lambda_j]; multi-support slots have tail score at most 16eta_0, profile error at most 144eta_0, and score at most lambda_max(1/sqrt(m)+160eta_0).
- Assumption discharge: the predecessor proves these statements from the setting tensor and E_sm plus the local certificate predicate, without coverage, labels, or clustering.
- Conclusion used: all support, tail, and score inequalities below. No target-label statement is imported as an assumption.

### Accepted dependency: post-score barred convention

- Source: accepted Proposition prop:step-004b-barred.
- Restated statement: if, after score selection, all three raw certificate signs in a column equal a common nonzero sign epsilon=sgn(theta), then multiplying the third direction by epsilon and applying any subsequent mode signs with product one gives proof-only barred copies satisfying bar P_M D_M=G_M bar K_M+bar R_M with the same residual norm. The represented initialized rank-one tensor is unchanged and the recomputed scalar is bar theta=|theta|.
- Assumption discharge: the common-sign condition is proved in unit_005, so this accepted result is not used prematurely.

### Elementary tools

- For unit vectors, ||a-b||_2^2=2-2<a,b> and |<a,b>|<=1; these identities convert ambient chart radii to graph correlations.
- For H=I+F with spectral norm at most q, |x^T F y|<=q||x||_2||y||_2; the row/column mass form gives the same bound for displayed l1 estimates.
- If |u|,|v|<=d<1/2, then |(1+u)/(1+v)-1|<=2d/(1-d). This is the reciprocal estimate already used in the accepted profile ledger.
- A finite graph whose edges are exactly the within-class pairs has one connected component per nonempty class. This is proved directly in the graph unit; no probabilistic graph theorem is invoked.

## Local Derivation

Fix a certified slot and suppress its slot index. Write q:=q_real<=q_*, lambda_min:=min_i lambda_i, mu_i:=lambda_i/lambda_min in [1,Gamma], and H_M:=G_M^TG_M=I+F_M. Let L_M:=G_MH_M^(-1), c_M:=L_M^Tp_M, s_M:=||c_M||_2, tilde x_M:=c_M/s_M, and x_{M,i}:=|tilde x_{M,i}|. These are the current-setting dual coordinates from the accepted predecessor; no setting symbol is rebound. All realized-basis indices below are proof-only indices.

### unit_001: proposition

**Proposition (weighted support ledger and score envelope).**
\label{prop:step-005-weighted-ledger}

Under the accepted E_sm, E_cert_eq, and E_cert_tail interfaces, every certified slot has exactly one of the following proof-only alternatives:

1. LOW: sigma:=|theta|<0.7lambda_min.
2. A singleton core I_vartheta={j} with a common top index j, max_M sum_{i!=j}x_{M,i}<=a_cert, min_M x_{M,j}>=1-64eta_0, and s_-lambda_j<=sigma<=s_+lambda_j.
3. A multi-support core I_vartheta of size m>=2, with tail_score<=16eta_0, |mu_i^2x_{M,i}^2/kappa_I^2-1|<=144eta_0 on the core, and
   sigma<=lambda_max(1/sqrt(m)+160eta_0)<=s_mix lambda_max,
where kappa_I=(sum_{i in I_vartheta}mu_i^{-2})^{-1/2} and s_mix:=1/sqrt(2)+160eta_0.

Moreover the pair source in every mode retains the exact weights:
\[
 K_M^{raw}(:,a)=\lambda_{min}\,\operatorname{diag}(\mu)
 \big((H_{M'}c_{M'})\circ(H_{M''}c_{M''})\big).
 \tag{5.1}
\]

In the orthogonal equal-weight stationary specialization, a support I has
\[
 x_{M,i}^2={\mu_i^{-2}\over\sum_{\ell\in I}\mu_\ell^{-2}},
 \qquad
 |\theta|=\lambda_{min}\Big(\sum_{i\in I}\mu_i^{-2}\Big)^{-1/2}.
 \tag{5.2}
\]

**Proof.** The exact raw coefficient is, by multilinearity and the definition of K_M in the setting,
\[
 K_M^{raw}(:,a)=\operatorname{diag}(\lambda)
 ((G_{M'}^Tp_{M'})\circ(G_{M''}^Tp_{M''})).
\]
Since G_M^Tp_M=H_Mc_M and lambda_i=lambda_min mu_i, this is (5.1). Thus the persistent weight ratio is in the pair source itself; it is not replaced by a perturbation or hidden in q.

The accepted E_cert_tail ledger is derived before any score filtering and already proves the LOW/singleton/multi-support alternatives, the common-top statement, the singleton tail and score bounds, and the profile bound. In the multi-support branch it gives
\[
 {\sigma\over\lambda_{min}}
 \le \kappa_I+144eta_0+tail_score
 \le {\Gamma\over\sqrt m}+160eta_0.
 \tag{5.3}
\]
Multiplication by lambda_min and m>=2 gives the displayed bound with s_mix.

For completeness, verify the exact weighted specialization rather than using it as a premise. Set q=0 and consider a nonzero stationary support I; write the positive absolute coordinates as a_i,b_i,c_i and the three normalization scales as alpha_U,alpha_V,alpha_W. The stationary equations are
\[
 alpha_Ua_i=\mu_i b_ic_i,\quad
 alpha_Vb_i=\mu_i a_ic_i,\quad
 alpha_Wc_i=\mu_i a_ib_i.                                  \tag{5.4}
\]
Multiplying each equation by its left coordinate and summing shows that all three alpha_M equal the same positive scalar alpha. Dividing pairs of (5.4) then gives a_i^2=b_i^2=c_i^2; hence a_i=b_i=c_i=alpha/mu_i. The unit norm gives alpha=(sum_{i in I}mu_i^{-2})^{-1/2}. Finally the orthogonal score is lambda_min sum_{i in I}mu_i a_i^3=lambda_min alpha, proving (5.2). The formula also covers unequal weights and reduces to the usual equal-weight 1/sqrt{|I|} score. \qed

### unit_002: proposition

**Proposition (observable score gap and retained singleton branch).**
\label{prop:step-005-filter-gap}

Under the accepted coverage interface and the alternatives of Proposition~\ref{prop:step-005-weighted-ledger}, let sigma_max=max_{i in I_cert}sigma_i. Then
\[
 sigma_{max}\ge s_-lambda_{min},                              \tag{5.5}
\]
and every retained slot (sigma_i>=0.85sigma_max) is a singleton slot. At least one retained singleton is assigned to every realized target index j. Every retained slot satisfies
\[
 sigma_i\ge 0.85s_-lambda_{min}>0.81lambda_{min}>0.8lambda_{min}.
 \tag{5.6}
\]
Conversely, every covered singleton witness passes the observable filter; the weight imbalance enters only through Gamma=lambda_max/lambda_min.

**Proof.** On the coverage event, for each target j the accepted chart and certification interface supplies a certified witness whose singleton branch is indexed by j. Its score lower bound in unit 001 gives sigma_max>=s_-lambda_j; taking the minimum over j proves (5.5).

The reserve from the accepted ledger obeys eta_0<4.89 10^{-4} and tau_r<=q_*^2/(3 10^4). Therefore, with the declared definitions,
\[
 s_->0.953,\qquad s_+<1.047,\qquad
 1.01s_{mix}<0.794.                                         \tag{5.7}
\]
For a LOW slot, sigma<0.7lambda_min<0.85s_-lambda_min. For a multi-support slot, unit 001 and lambda_max<=1.01lambda_min give
\[
 sigma\le1.01s_{mix}lambda_{min}<0.794lambda_{min}
 <0.802lambda_{min}<0.85s_-lambda_{min}.                    \tag{5.8}
\]
Thus neither branch can be retained. A singleton witness for target j has sigma>=s_-lambda_j, while every certified score is at most s_+lambda_max by the singleton upper bound and (5.8). Hence
\[
 {s_-lambda_j\over s_+lambda_{max}}
 \ge {s_-\over1.01s_+}>0.901>0.85.                           \tag{5.9}
\]
So every covered witness passes the filter. This proves both the retained singleton conclusion and the per-target nonemptiness. The proof used target indices only to certify the existence of witnesses; the algorithm compares scores and never receives those indices. \qed


### unit_003: lemma

**Lemma (singleton target chart and denominator margins).**
\label{lem:step-005-chart}

Under the singleton branch of Proposition~\ref{prop:step-005-filter-gap}, let
j be its common top index and set s_comp:=1/128 and chi_j:=2a_cert+4q_*.
After a proof-only sign choice epsilon_{M,j} in each mode,
\[
 \|p_M-\epsilon_{M,j}g_{M,j}\|_2\le\chi_j<s_{comp},\qquad
 \sum_{i\ne j}|c_{M,i}|\le a_{cert}+4q_*<1/256,                \tag{5.10}
\]
for every mode. The target coefficient and contraction denominators obey
\[
 |\langle g_{M,j},\epsilon_{M,j}p_M\rangle|>{31\over32},\qquad
 {31\over32}\lambda_j\le d_M\le {33\over32}\lambda_j,          \tag{5.11}
\]
where d_M is the same-state contraction norm. Consequently, two singleton
states with the same index have |<p_M,p'_M>|>=1-64q_* in every mode, while
states with distinct indices have, in each corresponding mode,
\[
 |\langle p_M,p'_M\rangle|
 \le q_*+4a_{cert}+16q_*<{1\over32}.                           \tag{5.12}
\]

**Proof.** Orient the dual coefficient in mode M so that its jth coordinate is
positive. The singleton output of E_cert_tail gives
sum_{i!=j}|tilde x_{M,i}|<=a_cert and tilde x_{M,j}>=1-64eta_0.
The accepted Gram interval gives 1-q_*<=s_M<=1+2q_*.
Thus the dual off-mass is at most
(1+2q_*)a_cert<=a_cert+4q_*, proving the second part of (5.10).

For the ambient conversion, write the orthogonal Gram projection as
p_M=G_Mc_M+p_M^perp, where the accepted certificate gives
||p_M^perp||_2<=tau_r. Splitting c_M into its j coordinate and its
off-mass, using ||F_M||_2<=q_*, s_M<=1+2q_*, and the unit norm identity,
gives the elementary bound
\[
 \|p_M-\epsilon_{M,j}g_{M,j}\|_2
 \le 2\sum_{i\ne j}|\tilde x_{M,i}|+4q_*
 \le2a_{cert}+4q_*=:\chi_j.                                  \tag{5.13}
\]
The last quantity is less than 18q_*+16tau_r<1/128; this is the declared
s_comp chart radius. For unit vectors, (5.13) gives
|<g_{M,j},epsilon_{M,j}p_M>|>=1-chi_j^2/2>31/32.

For the remaining estimates in this lemma, replace each p_M by its
proof-only oriented copy epsilon_{M,j}p_M.  This makes the jth target
correlation positive in every mode; all norms and absolute graph correlations
are unchanged.

For the contraction bound, expand the same-state contraction in the realized
basis. Put delta_j:=chi_j^2/2 and u_j:=a_cert+6q_*. The Gram projection
identity gives, for every companion mode,
\[
 |\langle g_{M,j},p_M\rangle|\ge1-delta_j,\qquad
 \sum_{i\ne j}|\langle g_{M,i},p_M\rangle|\le u_j.           \tag{5.13a}
\]
The first inequality follows from (5.13); the second follows from
G_M^Tp_M=H_Mc_M, the dual off-mass in (5.10), and
||F_Mc_M||_1<=q_*||c_M||_1<=2q_*. The 6q_* is a loose sum of the Gram and
norm margins. For the mode-M contraction coefficient vector
t_i:=lambda_i<g_{M',i},p_{M'}><g_{M'',i},p_{M''}>, (5.13a) gives
\[
 \left|{t_j\over\lambda_j}-1\right|\le2delta_j,\qquad
 {1\over\lambda_j}\sum_{i\ne j}|t_i|\le\Gamma u_j^2.       \tag{5.13b}
\]
Since y_M=G_Mt and ||G_M||_2<=sqrt(1+q_*), the reverse and direct triangle
inequalities yield
\[
 \left|{d_M\over\lambda_j}-1\right|
 \le 2delta_j+\Gamma u_j^2
   +q_*\bigl(1+2delta_j+\Gamma u_j^2\bigr)+2tau_r
 \le 8q_*+4a_cert+4tau_r< {1\over32}.                       \tag{5.13c}
\]
The final line uses a_cert<1/512, chi_j<1/128, and tau_r<q_*; it retains
the Gram, tail, and finite-certificate terms separately. Hence
\[
 {31\over32}\lambda_j\le d_M\le {33\over32}\lambda_j.     \tag{5.14}
\]
This proves (5.11) without introducing a generated condition number.

For graph separation, take two states assigned to the same j and orient each
toward g_{M,j}. Their distance is at most 2chi_j, so
\[
 |\langle p_M,p'_M\rangle|\ge1-2chi_j^2\ge1-64q_*.
\]
For distinct j!=ell, use the base Gram bound and (5.13):
\[
 |\langle p_M,p'_M\rangle|
 \le |\langle g_{M,j},g_{M,ell}\rangle|+2chi_j+chi_j^2
 \le q_*+4a_{cert}+16q_*.
\]
The last inequality uses chi_j^2<=8q_*, valid at the displayed constants.
Since a_cert=7q_*+8tau_r, the final quantity is below 1/32. The same
estimates hold in all three modes. \qed

### unit_004: proposition

**Proposition (label-free graph and exactly r clusters).**
\label{prop:step-005-clusters}

Under the accepted coverage interface, form the retained pool by the setting's
score rule and join two retained slots exactly when all three absolute
modewise inner products are at least 1-64q_*. Then the graph has exactly r
nonempty connected components. There is a proof-only permutation
pi:[r]->[r] such that every slot in component a is a singleton state with
common top index pi(a). The representative selected by minimum zeta inherits
(5.10)-(5.11), the singleton score bounds, and the lower score margin (5.6).

**Proof.** By Proposition~\ref{prop:step-005-filter-gap}, every retained slot is
singleton, so assign it its common top index j. Lemma
\ref{lem:step-005-chart} says that any two slots with the same index are
joined in every mode, hence each nonempty index class is a clique. The same
lemma says that slots with different indices fail the edge condition already
in each corresponding mode, so no edge crosses two classes. Coverage gives at
least one retained witness for every j by (5.9), and there are only r indices.
Therefore the nonempty classes are exactly r connected components. Ordering
them as the algorithm does defines a permutation pi; the ordering and the
minimum-zeta tie rule use only observed state data. All inequalities in
(5.10)-(5.11) and (5.6) are per-slot inequalities, so they pass to the
selected representative. No target label is supplied to the graph or to the
representative rule. \qed

### unit_005: proposition

**Proposition (theta sign consistency and product-preserving gauge).**
\label{prop:step-005-gauge}

For every retained representative, theta!=0 and
|theta|>=0.85s_-lambda_min>0.8lambda_min. If epsilon_M is the raw
certificate sign in the accepted same-state equation, then
\[
 epsilon_U=epsilon_V=epsilon_W=sgn(theta).                    \tag{5.15}
\]
After replacing the third raw direction by sgn(theta) times itself and then
applying mode signs with product one, one obtains proof-only barred directions
with positive target correlations and bar theta=|theta|. The initialized
rank-one tensor is unchanged and the accepted barred identity
\[
 \bar P_MD_M=G_M\bar K_M+\bar R_M,\qquad
 \|\bar R_M(:,a)\|_2\le D_M(a,a)tau_r                         \tag{5.16}
\]
holds.

**Proof.** The lower bound is (5.6). For one mode, let
y_M=T(.,p_{M'},p_{M''}) and d_M=||y_M||_2. The raw certificate gives
||p_M-epsilon_My_M/d_M||_2<=tau_r. Taking the inner product with y_M and
using theta=<p_M,y_M> gives
\[
 |theta-epsilon_Md_M|\le d_Mtau_r.                            \tag{5.17}
\]
Because tau_r<1 and theta!=0, the opposite sign would make the left side at
least d_M, contradicting (5.17). This proves (5.15) in all modes.

If theta<0, set the proof-only third direction to
p_W^{(1)}=sgn(theta)p_W^{raw} and leave the other two unchanged. Its
associated scalar is theta^{(1)}=sgn(theta)theta=|theta|; the initialized
term is unchanged because the setting's third amplitude is
sgn(theta)|theta|^{1/3}:
\[
 |theta|^{1/3}p_U\otimes|theta|^{1/3}p_V\otimes
 (sgn(theta)|theta|^{1/3}p_W^{raw})
 =sgn(theta)|theta|\,p_U\otimes p_V\otimes p_W^{raw}.
\]
After this first absorption, the three transformed contractions have signs
`+1`: in modes U and V the companion W sign is absorbed by the changed W
direction, and in mode W the changed stored direction absorbs the original
certificate sign. Thus the transformed same-state equations have positive
right signs. By the singleton chart, each target correlation is nonzero. If
a_M denotes the three (now unoriented) target correlations, the singleton
score expansion from E_cert_tail gives
\[
 |theta^{(1)}-lambda_j a_Ua_Va_W|
 \le 1.01(96eta_0+8tau_r)lambda_j,\qquad
 |a_M|\ge1-chi_j^2/2.                                      \tag{5.18}
\]
The right side is smaller than the magnitude of the dominant product at the
declared constants. Since theta^{(1)} is positive, the product of the three
target-correlation signs is therefore positive. Choose the remaining signs
gamma_U,gamma_V,gamma_W to equal those three signs.
Their product is one, so multiplying the three directions by them makes all
target correlations positive without changing the represented rank-one term.

The resulting bars satisfy bar theta=|theta|. Proposition
\ref{prop:step-004b-barred} applies because (5.15) has been proved; it gives
(5.16), preserves the residual norm, and preserves the raw initialized
tensor. The signs are proof-only and are not fed back into the score filter or
the proposal procedure. \qed

### unit_006: proposition

**Proposition (assembled public interfaces).**
\label{prop:step-005-assembly}

On the fixed E_sm instance and accepted coverage/certification run, the
following three derived outputs hold simultaneously:

- E_support_wt: the LOW/singleton/multi-support alternatives, the exact
  weighted pair source (5.1), tail_M, tail_score, kappa_I, the profile reserve
  144eta_0, the score constants s_-, s_+, s_mix, and the exact orthogonal
  score formula (5.2);
- E_cluster: exactly r data-only clusters, a proof-only permutation pi,
  per-mode chart radius s_comp=1/128, dual off-mass
  a_cert+4q_*<1/256, target correlation denominator greater than 31/32,
  contraction denominator 31lambda_j/32, and the retained score margin
  0.85s_-lambda_min;
- E_gauge: product-preserving positive target orientation, bar theta=|theta|,
  and the barred same-state equation (5.16).

**Proof.** Proposition~\ref{prop:step-005-weighted-ledger} supplies the
first output's weighted classifier and exact baseline. Proposition
\ref{prop:step-005-filter-gap} supplies its strict observable score gap and
theta lower bound. Lemma~\ref{lem:step-005-chart} supplies the uniform target
metric and denominator fields, and Proposition
\ref{prop:step-005-clusters} turns those fields into exactly r graph
components. Proposition~\ref{prop:step-005-gauge} supplies the final signs
and proof-only barred equation. The dependency order is therefore
E_cert_eq,E_cert_tail -> E_support_wt -> E_cluster,E_gauge; no generated
output is used before its producer. \qed

## Target-Step Assembly

The accepted raw equation and all-certified ledger are consumed before any
score filter or graph operation. Proposition~\ref{prop:step-005-weighted-ledger}
retains diag(lambda) in the exact pair source and records the weighted
stationary profile, while preserving the LOW, singleton, multi-support, and
threshold-straddling alternatives supplied by E_cert_tail.
Proposition~\ref{prop:step-005-filter-gap} compares the two score scales with
the actual 0.85 sigma_max rule. The strict inequalities
1.01s_mix<0.794<0.85s_- and s_-/(1.01s_+)>0.85 reject every LOW or mixture
slot and retain a witness for every target on coverage, without passing a
target label to the algorithm. It also gives the nonzero theta lower bound.

Lemma~\ref{lem:step-005-chart} converts the singleton dual tail into the
realized-factor metric used by the graph, and exports the l1 chart and both
denominator margins. Proposition~\ref{prop:step-005-clusters} then proves
that the observed graph has exactly one complete component per target and
that the algorithm's arbitrary ordering and minimum-zeta rule are valid.
Finally, Proposition~\ref{prop:step-005-gauge} proves the common raw signs,
absorbs a negative score without changing the initialized tensor, and invokes
the accepted post-score barred convention. Proposition
\ref{prop:step-005-assembly} packages the three public outputs. Thus the
exact step claim is proved on the accepted conditional interfaces; no
target-label, look-ahead state, or covered-chart premise is used in the
all-certified classification itself.

## Explicit Rate Audit

- Exposed variables: r, q_real<=q_*, Gamma<=1.01, tau_r=q_*^2/(10^4r),
  eta_G, eta_N, eta_C, eta_0, eta_rel, vartheta=1/8,
  vartheta_*>1/16, a_cert, s_comp=1/128, s_-, s_+, s_mix, the support
  size m, and graph threshold 1-64q_*.
- Hidden constants may depend on: only the displayed universal numerical
  constants and fixed q_*.
- Hidden constants may not depend on: n, k, kappa_0, rho, either confidence
  parameter, the deterministic base triple, the number of certified slots,
  a target label, or an unlisted generated condition number.
- Fixed quantities: first a realized instance on E_sm, then one finite
  certified proposal pool on its accepted coverage interface. All bounds are
  deterministic and uniform over the pool.
- Probability mode: conditional/deterministic. Instance and coverage
  probabilities are inherited from accepted predecessors; this step performs
  no additional union bound or probability conversion.
- Horizon mode: finite graph over the certified slots in one full run; no
  all-time trajectory or ALS claim is made here.
- Norm mode: dual-coordinate l1 mass, modewise Euclidean distance and
  correlation, contraction Euclidean norm, and the original scalar score
  |theta|.
- Admissibility conditions and auxiliary tolerances: r>=3, q<=q_*,
  Gamma<=1.01, tau_r, and the non-LOW threshold only inside the accepted
  conditional ledger. The coverage event is a derived input, not a primitive
  assumption.
- Term absorption or simplification: the accepted ledger proves
  eta_0<4.89 10^{-4}, vartheta_*>1/16, singleton tail below a_cert,
  multi tail below 16eta_0, profile reserve 144eta_0, and the score
  inequalities (5.7)-(5.9). The chart conversion explicitly retains the
  Gram, tail, and certificate terms in (5.13)-(5.14); no r factor is hidden.
- Probability conversion: none locally.
- Contribution to any Rate Specialization Bridge: supplies the data-only
  cluster, target permutation, sign gauge, and uniform chart and denominator
  interfaces consumed by step_006 and step_007.
- Baseline-reduction check: in the orthogonal equal-weight specialization,
  (5.1) is the exact coordinate pair source, (5.2) gives score lambda_j for
  a singleton and lambda_j/sqrt m for a mixture, and the graph separates exact
  component states. At a stationary representative the certificate residual
  is zero and the product-one gauge leaves the exact rank-one tensor unchanged.
  A finite orthogonal transient is not asserted to have zero residual.

## Blockers

None.

## Notation And Assumption Notes

- E_support_wt, E_cluster, and E_gauge are the only public-facing outputs.
  s_comp=1/128 is the exported per-mode component chart radius; the support
  threshold remains vartheta=1/8 and is not silently renamed.
- q, lambda_min, mu, H_M, F_M, L_M, c_M, s_M, tilde x_M, x_M, chi_j,
  sigma_max, and pi are appendix-local or proof-local objects defined
  directly from setting quantities or accepted outputs. tail_M, tail_score,
  kappa_I, s_-, s_+, and the profile reserve are inherited ledger fields and
  are not new assumptions.
- a_cert=7q_*+8tau_r, s_comp=1/128, and all displayed score and graph
  thresholds are direct expressions from the accepted sketch. The denominator
  constants 31/32 and 33/32 are proved in Lemma~\ref{lem:step-005-chart};
  they are not free finite constants.
- E_sm, E_chart, E_cert, E_cert_eq, and E_cert_tail are generated conditions
  supplied by accepted predecessors. Coverage is used only through its
  accepted producer to prove nonempty target classes; no chart, support,
  score, or cluster fact is promoted to a primitive assumption.
- All target indices in the local derivation are proof-only realized-basis
  indices. The graph, score filter, and representative selection use only
  observable scores, directions, residuals, and inner products.
- The raw setting symbols P,Q,S,K,D,theta remain raw. Barred symbols are
  introduced only in unit 005 after the common sign and theta lower bound are
  proved; they are proof-only copies and do not alter algorithmic updates.
- The paired global_proof.md and global_proof_review.md were read and the
  review is ACCEPTED. Its step-relevant planning prompts were the weighted
  support score comparison, graph separation, and product-one gauge. Every
  such claim is independently derived here; the diagnostic is not evidence,
  an assumption source, a cited result, or authority to change the target.
