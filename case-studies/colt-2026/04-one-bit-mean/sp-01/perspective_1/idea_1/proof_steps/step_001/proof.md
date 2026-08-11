# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Preflight D2 Theorem 16 at \(\eta=\delta/4\); define midpoint \(c\); prove source mapping, \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), \(\lvert c-\mu\rvert\leq50\sigma\), and source cost.
- Depends on: None.
- Assumptions used: `assump:parameter-domain`, `assump:moment-class`, and `assump:iid-independent-randomness`.
- Technical challenge: Exact interval-to-scalar source mapping.
- Intended proof tool or cited result: Lau--Scarlett, arXiv:2604.07796v2, Theorem 16 / source label `thm: alternative localization`, Appendix `appendix: two-stage`; Lyapunov's inequality.
- Output target: Generated localization event, scalar center, and source cost.
- Rate objective: Additive localization cost and confidence \(\delta/4\).
- Sketch-row review status: `PENDING`; the separate `proof_sketch_review.md` acceptance gate records `ACCEPTED` for sketch attempt 1.

Throughout this artifact, \(\mu=\mu(D)\).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-domain`: \(k>1\) is fixed and known, \(\lambda\geq\sigma>0\), and \(\delta\in(0,1/2)\). (The restriction on \(\epsilon\) is not used in this localization step.)
  - `assump:moment-class`: \(\mu\in[-\lambda,\lambda]\) and \(\mathbb E_D|X-\mu|^k\leq\sigma^k\), with no support or other tail restriction.
  - `assump:iid-independent-randomness`: the samples assigned to the localization block are iid with law \(D\); the index split and every query-generating object are fixed before any response bit is observed. A deterministic, hence degenerate, localization seed is permitted and is independent of all samples.
- Accepted dependency artifacts: None. The target row has no dependencies.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.

The source-containment event and the scalar localization event below are generated conclusions, not assumptions.

## Local Lemma Map

Atomic step = no. The source hypothesis bridge, source/current-protocol instantiation, interval-to-scalar transfer, and quantitative cost simplification are independently auditable subclaims.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\), \(\mathbb E_D|X-\mu|\leq\sigma\). | Discharges the cited theorem's first-absolute-moment hypothesis without narrowing the distribution class. |
| `unit_002` | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), and \(\ref{assump:iid-independent-randomness}\), and using Lemma~\(\ref{lem:step-001-first-moment}\), the exact Lau--Scarlett v2 construction at \(\eta=\delta/4\) is a legal deterministic precommitted one-bit protocol in the current set-query convention; in both source branches it returns an always-defined interval \(I\) such that \(|I|\leq100\sigma\) and \(\Pr\{\mu\in I\}\geq1-\eta\). | Establishes source identity, object mapping, hypothesis discharge, Borel one-bit queries, deterministic tie handling, branch handling, and the interval guarantee. |
| `unit_003` | lemma | Under the assumptions of Proposition~\(\ref{prop:step-001-source-localization}\), if \(c=\operatorname{mid}(I)\) and \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\), then \(c\) is always defined, \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), and on \(\mathcal E_{\rm loc}\), \(|c-\mu|\leq50\sigma\). | Supplies the exact interval-to-scalar wrapper and the generated downstream localization event. |
| `unit_004` | claim | Under Assumption~\(\ref{assump:parameter-domain}\) and Proposition~\(\ref{prop:step-001-source-localization}\), the source block has \(N_{\rm loc}=0\) in the trivial branch and otherwise has its exact appendix length; uniformly, \(N_{\rm loc}\leq1+10000\log(\lambda/\sigma)+30000\log(1/\delta)\). | Supplies the explicit additive source cost, including \(\lambda=\sigma\), the confidence substitution, and all ceiling terms. |

## Cited Result Applications

### Lau--Scarlett v2, Theorem 16 and its localization appendix

- Source identity: Ivan Lau and Jonathan Scarlett, *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*, arXiv:2604.07796v2 (May 25, 2026), Theorem 16, LaTeX label `thm: alternative localization`; construction and proof in Appendix `appendix: two-stage`. The inspected v2 source archive has SHA-256 `d6ef358108465837ecd4d27b6320ea95f5a0146ef62a14d3104125174d82db45`.
- Theorem statement, translated into current notation: given \(\lambda\geq\sigma>0\) and \(\eta\in(0,1/2)\), if iid samples have mean \(\mu\in[-\lambda,\lambda]\) and \(\mathbb E|X-\mu|\leq\sigma\), there is a deterministic non-adaptive general one-bit protocol returning an interval \(I\) of length \(O(\sigma)\) such that \(\Pr\{\mu\in I\}\geq1-\eta\), using \(O(\log(\lambda/\sigma)+\log(1/\eta))\) samples.
- Exact appendix specialization used here: put \(h=20\sigma\). If \(2\lambda\leq h\), return \(I=[-\lambda,\lambda]\) without querying. If \(2\lambda>h\), put
  \[
  N=\left\lceil\frac{2\lambda}{h}\right\rceil,
  \qquad
  \Delta=\frac{2\lambda}{N},
  \qquad
  \ell=\left\lceil10000\left(\log N+\log\frac1\eta\right)\right\rceil.
  \]
  Partition \([-\lambda,\lambda]\) into \(N\) consecutive bins, use a deterministic balanced binary codebook of length \(\ell\), query coordinate \(t\) of the codeword of the clipped bin containing \(X_t\), decode a minimum-Hamming-score bin, and return the union of that bin and its two nearest bins on either side. The appendix proves
  \[
  |I|\leq5\Delta\leq5h=100\sigma,
  \qquad
  \Pr\{\mu\notin I\}\leq N e^{-0.00125\ell}\leq\eta.
  \]
  Its proof obtains the exponent from an expected Hamming-score gap greater than \(0.05\ell\).
- Current objects instantiated: source confidence \(\eta=\delta/4\); source samples are the current iid samples indexed by \(I_{\rm loc}\); source Boolean query \(Q_t\) is represented by the current Borel set \(\mathcal B_t=Q_t^{-1}(\{1\})\); the source response \(Q_t(X_t)\) is exactly \(\mathbf1\{X_t\in\mathcal B_t\}\); the source interval is \(I\); and the current decoder output is the deterministic postprocessing \(c=\operatorname{mid}(I)\).
- Required source assumptions and discharge:
  - \(\lambda\geq\sigma>0\) and \(\eta\in(0,1/2)\): Assumption~\(\ref{assump:parameter-domain}\) and \(\eta=\delta/4\) give \(0<\eta<1/8<1/2\).
  - \(\mu\in[-\lambda,\lambda]\): Assumption~\(\ref{assump:moment-class}\).
  - \(\mathbb E|X-\mu|\leq\sigma\): Lemma~\(\ref{lem:step-001-first-moment}\).
  - iid fresh samples and a deterministic precommitted schedule: Assumption~\(\ref{assump:iid-independent-randomness}\); the source construction itself is deterministic.
- Source-convention compatibility: the source permits unrestricted Boolean functions \(Q_t:\mathbb R\to\{0,1\}\), while the current model writes the same query as membership in the Borel one-set \(Q_t^{-1}(\{1\})\). Both use one fresh iid scalar sample per bit, absolute scalar localization, known \((\lambda,\sigma)\), and a fixed non-adaptive horizon. No threshold-query restriction is imposed on the current localization block.
- Conclusion used: interval containment with failure at most \(\eta\), appendix width at most \(100\sigma\), the exact trivial/nontrivial construction, and its exact nontrivial sample count \(\ell\).
- Known non-output boundaries: the cited result outputs an interval, not a scalar center; it does not output a recentered \(k\)-moment, any refinement statistic, an \(\epsilon\)-accurate final estimate, or a claim that the midpoint equals \(\mu\). The midpoint and its \(50\sigma\) transfer are proved in Lemma~\(\ref{lem:step-001-midpoint}\); all recentering and refinement conclusions remain outside this step.

### Lau--Scarlett v2, balanced deterministic codebook lemma

- Source identity: the same appendix, Lemma `lem: balanced codebook`.
- Restated statement: for integers \(N\geq2\) and \(\ell\geq10000\log N\), deterministic codewords \(\mathsf c_1,\ldots,\mathsf c_N\in\{0,1\}^{\ell}\) exist with
  \[
  0.49\ell\leq d_H(\mathsf c_u,\mathsf c_v)\leq0.51\ell
  \quad(u\neq v).
  \]
- Instantiation and discharge: in the nontrivial branch, \(2\lambda>20\sigma\) implies \(N=\lceil2\lambda/(20\sigma)\rceil\geq2\), and the displayed choice of \(\ell\) is at least \(10000\log N\). Thus a single deterministic codebook may be selected before samples or bits exist.
- Conclusion used: existence of the fixed codebook required by the theorem's appendix construction. No random-codebook event or additional public randomness is imported into the current protocol.

### Lyapunov power-mean inequality

- Restated standard fact: for any nonnegative random variable \(V\) and \(k>1\), \(\mathbb EV\leq(\mathbb EV^k)^{1/k}\) whenever the right-hand side is finite.
- Instantiation: \(V=|X-\mu|\).
- Assumption discharge and conclusion: Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\) give \(k>1\) and \(\mathbb EV^k\leq\sigma^k\). Lemma~\(\ref{lem:step-001-first-moment}\) proves the inequality directly by Holder, so no unproved standard fact is used.

### Local-result application register

- Lemma~\(\ref{lem:step-001-first-moment}\) is used by Proposition~\(\ref{prop:step-001-source-localization}\) to discharge the only source moment hypothesis.
- Proposition~\(\ref{prop:step-001-source-localization}\) is used by Lemma~\(\ref{lem:step-001-midpoint}\) and Claim~\(\ref{claim:step-001-cost}\) to transfer the exact interval and count interfaces.
- Lemma~\(\ref{lem:step-001-midpoint}\) and Claim~\(\ref{claim:step-001-cost}\) are the only local results exported in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (central \(k\)-moment implies the source first moment).** \(\label{lem:step-001-first-moment}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\),
\[
\mathbb E_D|X-\mu|\leq\sigma.
\]

**Proof / justification.** Let \(V=|X-\mu|\). Assumption~\(\ref{assump:moment-class}\) gives \(\mathbb EV^k\leq\sigma^k<\infty\), and Assumption~\(\ref{assump:parameter-domain}\) gives \(k>1\). Holder's inequality with conjugate exponents \(k\) and \(k/(k-1)\) gives
\[
\mathbb EV
=\mathbb E[V\cdot1]
\leq(\mathbb EV^k)^{1/k}
       \bigl(\mathbb E1^{k/(k-1)}\bigr)^{(k-1)/k}
=(\mathbb EV^k)^{1/k}
\leq\sigma.
\]
This is precisely the Lyapunov first-moment bridge required by the source. \(\square\)

### unit_002: proposition

**Proposition (source-faithful deterministic localization interval).** \(\label{prop:step-001-source-localization}\)

Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), and \(\ref{assump:iid-independent-randomness}\), and using Lemma~\(\ref{lem:step-001-first-moment}\), set \(\eta=\delta/4\). There is an exact instantiation of Lau--Scarlett arXiv:2604.07796v2, Theorem 16 and Appendix `appendix: two-stage` in the current precommitted Borel-set query convention which uses one bit from every localization sample and returns an always-defined interval \(I\) satisfying
\[
|I|\leq100\sigma,
\qquad
\Pr\{\mu\in I\}\geq1-\eta.
\]
In the branch \(2\lambda\leq20\sigma\), the instantiation uses no sample and returns \([-\lambda,\lambda]\). In the branch \(2\lambda>20\sigma\), it uses exactly
\[
\ell=\left\lceil10000\left(\log N+\log\frac1\eta\right)\right\rceil,
\qquad
N=\left\lceil\frac{2\lambda}{20\sigma}\right\rceil,
\]
localization samples. A deterministic rule resolves every Hamming-score tie.

**Proof / justification.** First, \(\eta=\delta/4\in(0,1/2)\) by Assumption~\(\ref{assump:parameter-domain}\). The same assumption gives \(\lambda\geq\sigma>0\); Assumption~\(\ref{assump:moment-class}\) gives \(\mu\in[-\lambda,\lambda]\); Lemma~\(\ref{lem:step-001-first-moment}\) gives \(\mathbb E|X-\mu|\leq\sigma\); and Assumption~\(\ref{assump:iid-independent-randomness}\) supplies the iid localization samples. These discharge every hypothesis of the restated source result.

For completeness, the exact object map is as follows. Put \(h=20\sigma\).

**Trivial branch \(2\lambda\leq h\).** Take \(I_{\rm loc}=\varnothing\), make the localization public seed a constant, issue no query, and set
\[
I=[-\lambda,\lambda].
\]
Then \(I\) is always defined, \(\mu\in I\) deterministically, and
\[
|I|=2\lambda\leq h=20\sigma\leq100\sigma.
\]
This includes the boundary \(2\lambda=h\), as well as \(\lambda=\sigma\).

**Nontrivial branch \(2\lambda>h\).** Define
\[
N=\left\lceil\frac{2\lambda}{h}\right\rceil\geq2,
\qquad
\Delta=\frac{2\lambda}{N},
\qquad
a_v=-\lambda+(v-1)\Delta.
\]
Use the source bins
\[
B_v=[a_v,a_{v+1})\quad(v<N),
\qquad
B_N=[a_N,a_{N+1}],
\]
and the clipped cells
\[
C_1=(-\infty,a_2),
\qquad
C_v=[a_v,a_{v+1})\ (1<v<N),
\qquad
C_N=[a_N,\infty).
\]
Thus the source clipped-bin map \(b:\mathbb R\to[N]\) satisfies \(b^{-1}(v)=C_v\). Set
\[
\ell=\left\lceil10000\left(\log N+\log\frac1\eta\right)\right\rceil.
\]
Since \(N\geq2\) and \(\ell\geq10000\log N\), the checked balanced-codebook lemma supplies deterministic \(\mathsf c_1,\ldots,\mathsf c_N\in\{0,1\}^{\ell}\). For the \(t\)-th localization sample define
\[
Q_t(x)=\mathsf c_{b(x),t},
\qquad
\mathcal B_t=Q_t^{-1}(\{1\})
=\bigcup_{v:\,\mathsf c_{v,t}=1}C_v.
\]
Every \(C_v\) is an interval and the union is finite, so \(\mathcal B_t\) is Borel. Moreover
\[
Y_t=Q_t(X_t)=\mathbf1\{X_t\in\mathcal B_t\}.
\]
The codebook, the sets \(\mathcal B_t\), and the enumeration of \(I_{\rm loc}\) depend only on known parameters and are fixed before any sample response. Hence the source Boolean-query convention and the current measurable-set convention are identical, query by query. Take \(R_{\rm loc}\) to be a constant encoding this fixed schedule; its degeneracy satisfies the stipulated independence.

For candidate \(v\), form
\[
H_v=\sum_{t=1}^{\ell}\mathbf1\{Y_t\neq\mathsf c_{v,t}\},
\qquad
\widehat i=\min\operatorname*{argmin}_{v\in[N]}H_v,
\]
and return
\[
I=\bigcup_{u=\max\{1,\widehat i-2\}}^{\min\{N,\widehat i+2\}}B_u.
\]
The finite argmin is nonempty, and taking its least index makes both \(\widehat i\) and \(I\) deterministic and always defined for every bit transcript.

The cited appendix proves \(h/2\leq\Delta\leq h\); therefore this union of at most five consecutive bins obeys
\[
|I|\leq5\Delta\leq5h=100\sigma.
\]
It also proves the containment probability in precisely this convention. In brief, for the true bin \(i=b(\mu)\), the safe set \(S=\{u:|u-i|\leq2\}\) has probability mass at least \(19/20\) by Markov's inequality and Lemma~\(\ref{lem:step-001-first-moment}\). A heaviest safe anchor has mass at least \(19/100\). The balanced-codeword bounds then give, for every far bin \(j\notin S\),
\[
\mathbb E[H_j-H_{i^*}]>0.05\ell,
\qquad
\Pr\{H_j\leq H_{i^*}\}\leq e^{-0.00125\ell}.
\]
A union bound yields
\[
\Pr\{\widehat i\notin S\}
\leq N e^{-0.00125\ell}
\leq\eta.
\]
The non-strict comparison \(H_j\leq H_{i^*}\) already includes every tie between a far minimizer and the safe anchor. Consequently the bound holds for the least-index deterministic tie rule fixed above, rather than requiring an unspecified favorable tie resolution. Whenever \(\widehat i\in S\), the enlarged interval contains the true bin and hence \(\mu\). Thus \(\Pr\{\mu\in I\}\geq1-\eta\).

Combining the two branches proves the proposition. \(\square\)

### unit_003: lemma

**Lemma (midpoint localization wrapper).** \(\label{lem:step-001-midpoint}\)

Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), and \(\ref{assump:iid-independent-randomness}\), and Proposition~\(\ref{prop:step-001-source-localization}\), define
\[
c=\operatorname{mid}(I):=\frac{\inf I+\sup I}{2},
\qquad
\mathcal E_{\rm loc}:=\{|c-\mu|\leq50\sigma\}.
\]
Then \(c\) is an always-defined measurable function of the localization transcript,
\[
\Pr(\mathcal E_{\rm loc})\geq1-\frac\delta4,
\]
and on \(\mathcal E_{\rm loc}\), \(|c-\mu|\leq50\sigma\). The midpoint postprocessing uses no additional sample or query.

**Proof / justification.** Proposition~\(\ref{prop:step-001-source-localization}\) returns in each branch a nonempty bounded interval \(I\), including the possible half-open interval produced by a consecutive union of source bins. Hence \(\inf I\), \(\sup I\), and their midpoint are defined for every transcript. In the nontrivial branch, the decoded index takes values in a finite set and the interval endpoints are deterministic functions of that index; in the trivial branch \(I\) is deterministic. Thus \(c\) is measurable and always defined.

On the source-containment event \(\{\mu\in I\}\), elementary interval geometry gives
\[
|c-\mu|
\leq\frac{\sup I-\inf I}{2}
=\frac{|I|}{2}
\leq50\sigma.
\]
Therefore \(\{\mu\in I\}\subseteq\mathcal E_{\rm loc}\), and Proposition~\(\ref{prop:step-001-source-localization}\), with \(\eta=\delta/4\), yields
\[
\Pr(\mathcal E_{\rm loc})
\geq\Pr\{\mu\in I\}
\geq1-\eta
=1-\frac\delta4.
\]
In the trivial branch, the stronger deterministic identities \(c=0\) and \(|c-\mu|\leq\lambda\leq10\sigma\) hold. Defining the current decoder \(\mathsf{Dec}_{\rm loc}\) to perform this midpoint postprocessing does not change a source query or its sample count. Thus the setting's localization constant may be fixed as the universal value \(L_k=50\). \(\square\)

### unit_004: claim

**Claim (explicit localization cost).** \(\label{claim:step-001-cost}\)

Under Assumption~\(\ref{assump:parameter-domain}\) and Proposition~\(\ref{prop:step-001-source-localization}\), the exact source cost is
\[
N_{\rm loc}=
\begin{cases}
0, & 2\lambda\leq20\sigma,\\[0.35em]
\left\lceil10000\left(
\log\left\lceil\dfrac{2\lambda}{20\sigma}\right\rceil
+\log\dfrac4\delta
\right)\right\rceil, & 2\lambda>20\sigma,
\end{cases}
\]
and, uniformly over both branches,
\[
N_{\rm loc}
\leq1+10000\log\frac\lambda\sigma
+30000\log\frac1\delta
=O\left(1+\log\frac\lambda\sigma+\log\frac1\delta\right).
\]
The hidden constant is universal and in particular is independent of \(k,\lambda,\sigma,\delta,D\).

**Proof / justification.** Only the nontrivial branch needs an estimate. Write \(\rho=\lambda/\sigma\). Then \(\rho>10\), and
\[
N=\left\lceil\frac\rho{10}\right\rceil
\leq\frac\rho{10}+1
\leq\rho,
\]
so \(\log N\leq\log\rho\). Also, since \(\delta<1/2\),
\[
\log\frac4\delta
=\log4+\log\frac1\delta
\leq3\log\frac1\delta.
\]
Using \(\lceil x\rceil\leq x+1\) in the exact appendix count gives
\[
N_{\rm loc}=\ell
\leq1+10000\log\frac\lambda\sigma
+30000\log\frac1\delta.
\]
The trivial branch has \(N_{\rm loc}=0\), so the same nonnegative upper bound applies. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-001-first-moment}\) derives \(\mathbb E|X-\mu|\leq\sigma\) from the exact unrestricted central \(k\)-moment assumption. Together with the primitive parameter and iid conditions, this discharges every hypothesis in the checked v2 statement of Lau--Scarlett Theorem 16.

Proposition~\(\ref{prop:step-001-source-localization}\) then instantiates that theorem and its appendix in the current model: source Boolean queries become precommitted Borel membership queries, the localization seed is degenerate, one fresh iid sample yields one bit, the source's zero-query and coded branches are both covered, and the least-index rule makes every decoder tie deterministic. It exports an always-defined interval with
\[
|I|\leq100\sigma,
\qquad
\Pr\{\mu\in I\}\geq1-\delta/4.
\]

Lemma~\(\ref{lem:step-001-midpoint}\) supplies the exact missing source-to-current-object bridge: with \(c=\operatorname{mid}(I)\), source containment implies \(|c-\mu|\leq50\sigma\), and hence
\[
\Pr(\mathcal E_{\rm loc})\geq1-\delta/4.
\]
Claim~\(\ref{claim:step-001-cost}\) gives the exact branchwise count and the uniform additive bound
\[
N_{\rm loc}
=O\left(1+\log\frac\lambda\sigma+\log\frac1\delta\right),
\]
with a universal hidden constant. These four named results jointly prove every component of the binding `step_001` sketch claim and export exactly \((c,\mathcal E_{\rm loc},N_{\rm loc})\), with \(I\) retained only as the appendix-local source object.

## Explicit Rate Audit

- Exposed variables: \(\lambda,\sigma,\delta\), source confidence \(\eta=\delta/4\), source bin count \(N\), code length \(\ell=N_{\rm loc}\), interval width \(|I|\), and localization radius \(50\sigma\). The fixed moment order \(k>1\) appears only in the hypothesis bridge; \(\epsilon\) is not used by this step.
- Hidden constants may depend on: no problem quantity. The source numbers \(20,100,10000,0.49,0.51,0.05,0.00125\) are explicit universal constants. Writing the final count with \(O(\cdot)\) hides only a universal constant, which is stronger than the theorem's permission to depend on fixed \(k\).
- Hidden constants may not depend on: \(k,\lambda,\sigma,\epsilon,\delta,D,I,c,N,\ell\).
- Fixed quantities: \(k\) is fixed; \(\lambda,\sigma,\delta\) are known before the fixed schedule is selected; \(h=20\sigma\) and \(\eta=\delta/4\) are deterministic expressions in known quantities. No asymptotic limit is used.
- Probability mode: unconditional high probability over the iid localization samples. The protocol is deterministic, so there is no nondegenerate localization-seed probability. The exact guarantee is \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\).
- Horizon mode: deterministic fixed horizon. It is zero in the trivial branch and exactly \(\ell\) in the nontrivial branch; there is no stopping time or horizon-uniform upgrade.
- Norm mode: absolute value on \(\mathbb R\); the source interval-to-target transfer is \(|c-\mu|\leq|I|/2\).
- Admissibility conditions and auxiliary tolerances: \(\lambda\geq\sigma>0\), \(\delta\in(0,1/2)\), \(k>1\), \(\eta=\delta/4\in(0,1/2)\), and \(\mathbb E|X-\mu|\leq\sigma\) as proved locally. In the nontrivial branch \(N\geq2\) and \(\ell\geq10000\log N\), so the deterministic codebook lemma applies.
- Term absorption or simplification inequalities:
  \[
  N\leq\lambda/\sigma\quad\text{in the nontrivial branch},
  \qquad
  \log(4/\delta)\leq3\log(1/\delta),
  \qquad
  \lceil x\rceil\leq x+1,
  \qquad
  |c-\mu|\leq|I|/2\leq50\sigma.
  \]
- Probability conversion: only the exact substitution \(\eta=\delta/4\) and the inclusion \(\{\mu\in I\}\subseteq\mathcal E_{\rm loc}\) are used. No union bound with the refinement block is performed in this step.
- Contribution to any Rate Specialization Bridge: this step exports the additive localization term \(N_{\rm loc}\leq1+10000\log(\lambda/\sigma)+30000\log(1/\delta)\) and its failure budget \(\delta/4\). Later steps, not this one, combine and absorb it into the public \(r_k\).
- Baseline-reduction check: if \(2\lambda\leq20\sigma\), including \(\lambda=\sigma\), the source uses no sample, returns \([-\lambda,\lambda]\), and its midpoint is \(c=0\) with deterministic error at most \(10\sigma\). Thus the zero-query source branch is preserved exactly rather than replaced by the nontrivial count. No claim that \(c=\mu\) is made, including for degenerate laws.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing outputs:
  - \(c=\operatorname{mid}(I)\): the scalar localization center consumed by downstream steps; generated by Lemma~\(\ref{lem:step-001-midpoint}\).
  - \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\): the generated localization event; it is not primitive and is proved by Lemma~\(\ref{lem:step-001-midpoint}\).
  - \(N_{\rm loc}\): the deterministic localization-block size; generated and bounded by Proposition~\(\ref{prop:step-001-source-localization}\) and Claim~\(\ref{claim:step-001-cost}\).
- Appendix-local checked-source objects: \(h=20\sigma\), \(N\), \(\Delta\), the bin endpoints \(a_v\), source bins \(B_v\), clipped cells \(C_v\), clipped index \(b\), deterministic codewords \(\mathsf c_v\), code length \(\ell\), Boolean functions \(Q_t\), responses \(Y_t\), Borel sets \(\mathcal B_t\), Hamming scores \(H_v\), deterministic decoded bin \(\widehat i\), and source interval \(I\). Each is either an explicit expression in setting quantities or an exact translated object from the checked cited construction. Only \(I\)'s midpoint and count are exported.
- Proof-local objects: \(V=|X-\mu|\), \(\eta=\delta/4\), \(\rho=\lambda/\sigma\), the true-bin index \(i\), safe set \(S\), heaviest safe anchor \(i^*\), and the source-containment event \(\{\mu\in I\}\). The bin-analysis objects are translated directly from the checked appendix and are used only to expose its failure mechanism; the containment event is a generated cited-result conclusion, not an assumption.
- Constant provenance: \(20,100,10000,0.49,0.51,19/20,19/100,0.05,0.00125\) come explicitly from Theorem 16's checked appendix. The radius \(50\) is proved by halving the appendix width \(100\), and the trivial-branch radius \(10\) follows from \(2\lambda\leq20\sigma\). The coefficients \(1,10000,30000\) in the count bound are proved in Claim~\(\ref{claim:step-001-cost}\), with the factor \(3\) coming from \(\log(4/\delta)\leq3\log(1/\delta)\). The setting placeholder \(L_k\) may therefore be taken as \(50\), a universal and hence valid \(k\)-only constant.
- Assumption provenance: the first absolute moment is locally proved from primitive conditions in Lemma~\(\ref{lem:step-001-first-moment}\). Interval containment, interval width, the scalar event, and the cost are generated outputs proved or cited-and-discharged in this step. No local-validity, boundedness, recurrence, support, or estimator-success condition is assumed.
- Source/current interface: the source query is a deterministic measurable Boolean map; its one-set is exactly the current query set. The current public localization seed is chosen degenerate. The codebook and least-index tie rule are fixed before sampling. The source interval and the current scalar center are different objects, linked only by the proved midpoint inequality.
- Boundary audit: \(2\lambda=20\sigma\) belongs to the zero-query branch; \(2\lambda>20\sigma\) gives \(N\geq2\); \(\lambda=\sigma\) is legal and trivial; source bin endpoints use the source half-open/closed convention; clipped tails remain Borel; and far/safe Hamming ties are covered by the source proof's non-strict bad event.
- Known non-outputs: neither the cited theorem nor this step provides \(\mathbb E|X-c|^k\), a refinement query or statistic, conditional variance, tail bias, median concentration, final \(\epsilon\)-accuracy, or an unconditional final PAC theorem. Those statements cannot be inferred from this artifact without their assigned downstream producers.
- Diagnostic context boundary: `global_proof.md` was read only after confirming that the paired `global_proof_review.md` records `ACCEPTED` for sketch attempt 1 and global unit attempt 1. Its useful planning note was to keep the source interval distinct from the scalar midpoint and to audit the trivial branch and deterministic ties. The diagnostic was not used as evidence, a cited result, an assumption source, or authority to alter the target claim; the source statement and appendix were checked independently against arXiv:2604.07796v2.
