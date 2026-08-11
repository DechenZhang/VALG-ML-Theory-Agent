# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1
- Binding setting SHA-256: 1000de54689f9d220f1d6ac2a9d96ae74b25d221fb7b01c7e8ac907c9ff2ac8a
- Binding sketch SHA-256: 31b7c729db54ba0edf0196664378f7b9416bd0750118bd11b442ded832c8dd69
- Accepted sketch-review SHA-256: b8772b1e774f2a3c33c392b308a638aa2a20760ee682b6d63be1d0ffdf38d55e
- Accepted dependency proof SHA-256 (step_005, attempt 2): db087ef40c797ff7429828fda26c3bafa05ec43d714c0b94318282e1b9da35fd
- Accepted dependency review SHA-256 (step_005, attempt 2): dd2b09855813b7d769bcee5bbb11b174ba8e8fd91e499515940c68091e2499be

## Target Step Claim

The accepted sketch row is:

> Prove weighted singleton-versus-multi-support score separation, the
> \(0.85\) filter gap, graph separation, exactly \(r\) observable clusters,
> and a product-one sign/permutation gauge.

The construction consumes only the generated same-state equation and
all-certified ledger from step 005. Target indices used below are proof
annotations; the score pool, graph, and representative rule remain exactly
the observables in setting.md.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

There is no new primitive admissibility condition in this step. The domain
condition \(r\ge3\) is inherited from assump:subquadratic-rank.

The accepted E_sm interface (Proposition~\ref{prop:step-001-realized-gram})
supplies, for \(G_M\in\{U,V,W\}\),
\[
 H_M:=G_M^\top G_M,\qquad
 \|H_M-I\|_{\rm row,1}\vee\|H_M-I\|_{\rm col,1}
 \le q:=q_{\rm real}\le q_*,
\]
and hence \(1-q\le\lambda_{\min}(H_M)\le\lambda_{\max}(H_M)\le1+q\).

The accepted step-005 interfaces are used exactly as stated there:

- E_cert_eq gives the score-oriented barred correlations
  \(c_{M,a}=G_M^\top\bar p_{M,a}\), the common positive score
  \(\sigma_a=|\theta_a|\), and the coordinate ledger
  \[
  \sum_{j\in I}\left|c_{M,a,j}-
  {\lambda_j\over\sigma_a}c_{M',a,j}c_{M'',a,j}\right|
  \le \eta_{\rm score}(r) \tag{A}
  \]
  for every mode \(M\) and selector \(I\subseteq[r]\).
- E_cert_tail gives, on the retained pool
  \(\mathcal H:=\{a:\sigma_a\ge0.85\sigma_{\max}\}\),
  \(\sigma_a>3\lambda_{\min}/4\),
  \(\lambda_{\max}/\sigma_a<7/5\),
  \(\|c_{M,a}\|_2^2\in[1-q,1+q]\), and
  \(\max_j|c_{M,a,j}|>3/4\) in every mode. It also supplies a coverage
  witness for every target with score at least \(s_{\rm win}\lambda_j\),
  where \(s_{\rm win}>9/10\), and the universal upper bound
  \(\sigma_a\le\lambda_{\max}(1+q_*)^{3/2}\) for every certified slot.
- The accepted step-004 certificate interface, used by step 005, places every
  stored state in \({\rm range}(G_M)\). Thus all correlations above refer to
  the actual realized target span, not a surrogate state.

These are generated conclusions, not assumptions. No selected coefficient,
landing object, quotient tube, or future ALS invariant is used.

## Local Lemma Map

| Local unit ID | Unit type | Statement | Contribution |
| --- | --- | --- | --- |
| unit_001 | proposition | Under E_sm, E_cert_eq, and E_cert_tail, every retained slot has one common dominant target index across all three modes. Its off-target coordinate maximum is on the small root \(<2\eta_{\rm score}\), and its off-target modewise \(\ell_1\) mass is at most \(\eta_{\rm score}/(1-(14/5)\eta_{\rm score})\). | Weighted singleton/multi-support separation and a quantitative target-support assignment. |
| unit_002 | proposition | Under Proposition~\ref{prop:step-006-support}, every coverage target has a retained witness; same-target retained states pass the \(1-64q_*\) graph test and different-target states fail it. | Observable graph has exactly \(r\) nonempty connected components. |
| unit_003 | lemma | Under the graph conclusion, an observable representative ordering admits a proof-only target permutation and a product-preserving sign gauge. | Exports E_gauge without changing any represented rank-one term. |

## Cited Result Applications

1. **Realized Gram interface (accepted step 001).** In current notation,
   Proposition~\ref{prop:step-001-realized-gram} is the \(H_M\) row/column
   bound and spectral consequence recorded above. It is applied only to the
   realized columns consumed by the score and graph rules.
2. **Certificate equation and weighted ledger (accepted step 005, attempt 2).**
   Lemma~\ref{lem:step-005-signed-equation} and
   Proposition~\ref{prop:step-005-threshold-ledger} give (A), the retained
   score floor, the dominant-coordinate \(3/4\) bound, and the coverage
   witness score bounds. Their assumptions are exactly E_cert and E_sm; no
   clustering or landing conclusion is imported.
3. **Elementary norm facts.** For nonnegative vectors \(x,y\),
   \(\sum_i x_i y_i\le\|x\|_2\|y\|_2\); for unit vectors \(v,v'\),
   \(\langle v,v'\rangle=1-\|v-v'\|_2^2/2\). These are applied in current
   notation and introduce no source-dependent constant.

## Local Derivation

Fix the generated event E_sm and the finite certified pool. For a barred slot
\(a\), write \(c_M=c_{M,a}\), \(\sigma=\sigma_a\), and set
\[
 \eta:=\eta_{\rm score}(r)<{1\over2000},\qquad
 \rho_a:={\lambda_{\max}\over\sigma_a}<{7\over5}. \tag{1}
\]
All indices introduced in this derivation are latent proof indices.

### unit_001: proposition

**Proposition (Common dominant support and small-root tail;
\label{prop:step-006-support}).** Under E_sm, E_cert_eq, and E_cert_tail, for
every \(a\in\mathcal H\) there is a unique index \(\pi(a)\) such that
\[
 |c_{U,a,\pi(a)}|,\ |c_{V,a,\pi(a)}|,\ |c_{W,a,\pi(a)}|>{3\over4}. \tag{2}
\]
Moreover, with
\[
 x_a:=\max_{M\in\{U,V,W\},\,\ell\ne\pi(a)}|c_{M,a,\ell}|,\qquad
 L_{M,a}:=\sum_{\ell\ne\pi(a)}|c_{M,a,\ell}|, \tag{3}
\]
one has
\[
 x_a<2\eta,\qquad
 L_{M,a}\le {\eta\over1-(14/5)\eta},\qquad
 \sum_{\ell\ne\pi(a)}c_{M,a,\ell}^2
 \le \chi:= {2\eta^2\over1-(14/5)\eta}. \tag{4}
\]

**Proof.** The step-005 retained-pool ledger gives, for each mode, a
coordinate of magnitude \(>3/4\). There cannot be two such coordinates,
because \(\|c_M\|_2^2\le1+q_*<18/16\). Denote the unique indices by
\(j_U,j_V,j_W\).

We first rule out \(j_U\ne j_V\). Put \(S:=1+q_*\) and \(A:=9/16\),
\(u_i:=|c_{U,i}|^2\), \(v_i:=|c_{V,i}|^2\). If \(a=j_U\) and
\(b=j_V\ne a\), then \(u_a>A\), \(v_b>A\), and
\(\sum_i u_i,\sum_i v_i\le S\). With \(t=u_a\) and \(z=v_a\),
\[
\begin{aligned}
 \sum_i u_i v_i
 &\le tz+(S-t)\max_{i\ne a}v_i\\
 &\le tz+(S-t)(S-z).
\end{aligned} \tag{5}
\]
Here \(t\in[A,S]\) and \(z\in[0,S-A]\), since \(v_b>A\). The last
expression is bilinear in \(t,z\); checking its four rectangle corners gives
\[
 \sum_i u_i v_i\le2A(S-A)
 ={9\over8}\left({7\over16}+q_*\right)<{1\over2}. \tag{6}
\]
Consequently, by the weighted triangle inequality and Cauchy--Schwarz,
\[
 \sigma
 \le\lambda_{\max}\sum_i|c_{U,i}c_{V,i}c_{W,i}|
 \le\lambda_{\max}\|c_U\circ c_V\|_2\|c_W\|_2
 <{71\over100}\lambda_{\max}. \tag{7}
\]
On the other hand, the coverage score floor and the observable filter imply
for every retained slot
\[
 \sigma\ge0.85\sigma_{\max}>0.765\lambda_{\min}
 \ge {0.765\over1.01}\lambda_{\max}>{3\over4}\lambda_{\max}, \tag{8}
\]
contradicting (7). The same argument for the pairs \(U,W\) and \(V,W\)
proves \(j_U=j_V=j_W=:\pi(a)\). This is the promised
singleton-versus-multi-support separation: a mismatched multi-support
pattern has score \(<0.71\lambda_{\max}\), whereas the retained singleton
floor is \(>0.75\lambda_{\max}\).

For \(\ell\ne\pi(a)\), taking \(I=\{\ell\}\) in (A) gives
\[
 |c_{M,\ell}|\le {\lambda_\ell\over\sigma}
 |c_{M',\ell}c_{M'',\ell}|+\eta
 \le {7\over5}x_a^2+\eta. \tag{9}
\]
The dominant coordinate and norm upper bound also give
\[
 x_a^2\le S-{9\over16}<\left({2\over3}\right)^2. \tag{10}
\]
If \(\eta=0\), (9) immediately gives \(x_a=0\). Otherwise, on
\([2\eta,2/3]\) the concave function \(f(x)=x-(7/5)x^2\) is bounded below
by its endpoint values:
\[
 f(2\eta)>\eta,\qquad f(2/3)={2\over45}>\eta.
\]
Thus (9)--(10) force \(x_a<2\eta\). Summing (A) over
\(I=[r]\setminus\{\pi(a)\}\), and using one factor bounded by \(x_a\), gives
\[
 L_{M,a}\le {7\over5}x_a L_{M'',a}+\eta. \tag{11}
\]
Taking the maximum over modes and using \(x_a<2\eta\) proves the second
bound in (4). Finally,
\(\sum_{\ell\ne\pi(a)}c_{M,a,\ell}^2\le x_aL_{M,a}\) gives the last
bound. \(\square\)

### unit_002: proposition

**Proposition (Observable graph components;
\label{prop:step-006-graph}).** Under the hypotheses and conclusion of
Proposition~\ref{prop:step-006-support}, every target \(j\) has at least one
retained slot, and the graph in setting.md has exactly the \(r\) nonempty
components
\[
 \mathcal H_j:=\{a\in\mathcal H:\pi(a)=j\},\qquad j\in[r]. \tag{12}
\]

**Proof.** Let \(a(j)\) be the coverage witness supplied by E_cert_tail for
target \(j\). Its score obeys
\(\sigma_{a(j)}\ge s_{\rm win}\lambda_j>(9/10)\lambda_{\min}\).
For every certified slot, including the maximizer,
\(\sigma_i\le\lambda_{\max}(1+q_*)^{3/2}\). Hence
\[
 {\sigma_{a(j)}\over\sigma_{\max}}
 \ge {s_{\rm win}\lambda_{\min}\over
 \lambda_{\max}(1+q_*)^{3/2}}
 >{0.9\over1.01(1+1/4096)^{3/2}}>0.85, \tag{13}
\]
so \(a(j)\in\mathcal H\) and \(\mathcal H_j\ne\varnothing\).

Set
\[
 \chi_*:={2\eta_{\rm score}(r)^2\over
 1-(14/5)\eta_{\rm score}(r)},\qquad
 d_*:=\sqrt{2(q+\chi_*)}. \tag{14}
\]
For \(a\in\mathcal H_j\), Proposition~\ref{prop:step-006-support} and
the lower norm bound in E_cert_tail imply
\[
 |c_{M,a,j}|^2\ge1-q-\chi_*,\qquad
 \|\widehat p_{M,a}-g_{M,j}\|_2^2
 =2(1-|c_{M,a,j}|)\le2(q+\chi_*)=d_*^2, \tag{15}
\]
where \(\widehat p_{M,a}:=\operatorname{sgn}(c_{M,a,j})\bar p_{M,a}\) and
\(g_{U,j}=u_j,g_{V,j}=v_j,g_{W,j}=w_j\). The sign is well-defined by
(15).

Since \(\eta<1/2000\), direct substitution gives
\[
 q+\chi_*<{1\over4000},\qquad d_*^2<{1\over2000},\qquad d_*<{1\over40}. \tag{16}
\]
If \(a,b\in\mathcal H_j\), then in every mode
\[
 \begin{aligned}
 |\langle p_{M,a},p_{M,b}\rangle|
 &=|\langle\widehat p_{M,a},\widehat p_{M,b}\rangle|\\
 &\ge1-\tfrac12(\|\widehat p_{M,a}-g_{M,j}\|_2
                 +\|\widehat p_{M,b}-g_{M,j}\|_2)^2\\
 &\ge1-2d_*^2>1-{1\over1000}>1-64q_*.
 \end{aligned} \tag{17}
\]
Thus all vertices in \(\mathcal H_j\) are joined. If \(a\in\mathcal H_j\),
\(b\in\mathcal H_\ell\), and \(j\ne\ell\), then
\(|\langle g_{M,j},g_{M,\ell}\rangle|\le q\) and (15)--(16) give
\[
 |\langle p_{M,a},p_{M,b}\rangle|
 \le q+2d_*+d_*^2<{1\over8}<1-64q_*.
 \tag{18}
\]
Therefore no cross-target edge exists. The graph is the disjoint union of
the \(r\) nonempty cliques in (12), so its connected components are exactly
those cliques. \(\square\)

### unit_003: lemma

**Lemma (Product-preserving target permutation and sign gauge;
\label{lem:step-006-gauge}).** Under Proposition~\ref{prop:step-006-graph},
the observable representative rule yields a bijection between the \(r\)
representatives and the realized target columns. There is a proof-only
permutation and a sign gauge that preserves every represented rank-one term.

**Proof.** The graph components are the nonempty sets \(\mathcal H_j\). The
minimum-\(\zeta\) (then score) rule selects one member \(a(j)\) from each,
and the arbitrary algorithmic ordering induces a bijection
\(\pi:[r]\to[r]\) with representative \(a\) assigned to target
\(\pi(a)\). This is a proof-only permutation; the algorithm never reads
\(\pi\).

For a representative \(a\), use the score-preserving barred orientation from
step 005, so that
\[
 \sigma_a\,\bar p_{U,a}\otimes\bar p_{V,a}\otimes\bar p_{W,a}
 =\theta_a\,p_{U,a}\otimes p_{V,a}\otimes p_{W,a}. \tag{19}
\]
Let \(\xi_{M,a}=\operatorname{sgn}\langle g_{M,\pi(a)},\bar p_{M,a}\rangle\),
which is defined by (15), and let \(\chi_a=\xi_{U,a}\xi_{V,a}\xi_{W,a}\).
The target-aligned directions and signed scalar
\[
 \widetilde p_{M,a}=\xi_{M,a}\bar p_{M,a},\qquad
 \widetilde\theta_a=\chi_a\sigma_a \tag{20}
\]
satisfy
\[
 \widetilde\theta_a\bigotimes_M\widetilde p_{M,a}
 =\sigma_a\bigotimes_M\bar p_{M,a}, \tag{21}
\]
because \(\chi_a^2=1\). Thus (20) is a proof-only sign chart that aligns
all target coordinates and preserves the represented tensor. For the literal
product-one sign convention used by the quotient chart, set
\[
 (\varepsilon_{U,a},\varepsilon_{V,a},\varepsilon_{W,a})
 :=(\xi_{U,a},\xi_{V,a},\chi_a\xi_{W,a}).
\]
Then \(\varepsilon_{U,a}\varepsilon_{V,a}\varepsilon_{W,a}=1\), so
\(\bigotimes_M\varepsilon_{M,a}\bar p_{M,a}
=\bigotimes_M\bar p_{M,a}\); the coefficient \(\sigma_a\) is unchanged.
The all-positive chart (20) and this product-one chart differ only by
placing the sign \(\chi_a\) in the W scalar, exactly as in the observable
seed definition. Positive componentwise rescalings with product one are
unchanged by this sign bookkeeping. Hence the resulting permutation/gauge is
exactly the interface exported as E_gauge. \(\square\)

## Target-Step Assembly

Fix E_sm and the generated step-005 interfaces. The accepted weighted ledger
supplies the retained score floor, the \(3/4\) dominant coordinate in each
mode, and (A). Proposition~\ref{prop:step-006-support} first compares two
different dominant indices through (5)--(8), proving that every retained
slot has one common target support. The same proposition then applies the
small-root branch of (A), giving a dimension-free off-target \(\ell_1\) tail
and direction error.

Coverage witnesses are retained by (13). Proposition~\ref{prop:step-006-graph}
uses the direction error and the realized Gram off-diagonal bound to prove
within-target edges and cross-target nonedges at the exact observable
threshold \(1-64q_*\). It follows that the algorithm's graph has exactly
\(r\) components and that the selected representative in each component is
associated with a distinct realized target. Finally,
Lemma~\ref{lem:step-006-gauge} supplies the proof-only permutation and
product-preserving sign chart. These three named results jointly produce
\[
 E_{\rm support},\qquad E_{\rm cluster},\qquad E_{\rm gauge},
\]
before any selected-state coefficient, landing output, or cyclic invariant is
used. The construction is label-free at the procedure level and preserves
the represented rank-one terms exactly.

## Explicit Rate Audit

- Exposed quantities are \(q=q_{\rm real}\le q_*=1/4096\),
  \(\Gamma\le1.01\), \(\tau_r=q_*^2/(10^4r)\),
  \(\eta=\eta_{\rm score}(r)<1/2000\), the finite certified pool,
  \(\lambda_{\min},\lambda_{\max}\), the \(0.85\) score filter, and the
  \(1-64q_*\) graph threshold.
- The only new helper bounds are \(x_a<2\eta\),
  \(L_{M,a}\le\eta/(1-(14/5)\eta)\), and
  \(\chi_a=2\eta^2/(1-(14/5)\eta)\). Their constants depend only on fixed
  numerical thresholds; no dimension, condition number, horizon, or
  confidence parameter is hidden.
- Probability mode is deterministic conditional on the accepted generated
  E_sm and E_cert interfaces. The finite graph is formed once per certified
  pool; no tail or graph error is accumulated over proposal or ALS sweeps.
- Norm mode is realized Euclidean mode correlation, induced Gram row/column
  mass, and the observable absolute-inner-product graph. All inequalities
  retain the unequal-weight factor through
  \(\lambda_{\max}/\lambda_{\min}\le1.01\).
- No term is absorbed without a displayed inequality: (5)--(8) handle the
  score gap, (9)--(11) select the small root and close the tail, and
  (15)--(18) handle the graph margin.

## Baseline Reduction

In the exact orthogonal equal-weight specialization, \(q=0\) and the
certificate residual limit is \(\tau_r=0\), so \(\eta=0\). Equation (A)
forces every retained correlation vector to have exactly one nonzero
coordinate, the same coordinate in all modes. The score is then exactly the
common weight, different targets have zero graph inner product, and each
component is an isolated singleton. The permutation and sign gauge are exact
and product-preserving. Thus this step leaves the exact baseline conclusion
unchanged rather than replacing it by a finite-error surrogate.

## Notation And Assumption Notes

- \(c_{M,a}\), \(\sigma_a\), \(\mathcal H\), and the score graph are
  setting/dependency objects. The assignment \(\pi(a)\), witness indices,
  \(x_a,L_{M,a},\chi_a,d_a\), and signs \(\xi_{M,a}\) are proof-local
  objects derived in this step.
- E_sm, E_cert_eq, and E_cert_tail are accepted generated outputs; no
  generated condition is promoted to a primitive assumption. The
  target-aligned vectors in (15) are proof-only and are not algorithmic
  inputs.
- The lower norm fact \(\|c_M\|_2^2\ge1-q\) is supplied by the accepted
  target-span certificate ledger; the upper fact \(\|c_M\|_2^2\le1+q\) is
  supplied by the realized Gram interface. Every sign is defined only after
  the strictly positive coordinate bound in (15).
- Public-facing exports are only E_support, E_cluster, and E_gauge. The
  scalar tail constants and direction distances remain appendix-local.

## Blockers

None.
