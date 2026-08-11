# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_001
- Unit attempt: 1

## Target Step Claim

- Intended claim: With \(\eta=\delta/4\), the exact localization block is
  precommitted and always defined; it produces
  \(\mathcal E_{\rm loc}\) with probability at least \(1-\delta/4\),
  \(L_k=50\), and
  \[
    N_{\rm loc}\leq C_{{\rm loc},k}
    \left[1+\log\frac{\lambda}{\sigma}+\log\frac4\delta\right].
  \]
  Its midpoint and nearest-center wrappers give
  \(\lvert m_0-\mu\rvert\leq3h_0/4\) for \(a_k\geq200\) and
  \(M_k(c)\leq C_k^{\rm rec}\sigma^k\).
- Depends on: None.
- Assumptions used: Primitive assumptions `assump:parameter-domain`,
  `assump:moment-class`, `assump:independent-samples`, and
  `assump:precommitted-protocol`.
- Technical challenge: Exact source identity and interface, interval-to-scalar
  compatibility, the trivial localization branch, and recentering without
  assuming localization success.
- Intended proof tool or cited result: Lau and Scarlett,
  arXiv:2604.07796v2, Theorem 16 (source label
  `thm: alternative localization`) and Appendix
  `appendix: two-stage`; Lyapunov's inequality; deterministic midpoint and
  nearest-grid wrappers.
- Output target: Generated localization, core, recentered-moment,
  independence, and cost certificate.
- Rate objective: Retain the additive
  \(1+\log(\lambda/\sigma)+\log(4/\delta)\) localization cost, source
  confidence \(\delta/4\), fixed horizon, and a universal source constant
  before the absorption performed in step_008.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- `assump:parameter-domain`: \(k>1\) is fixed and known,
  \(\lambda\geq\sigma>0\), \(\delta\in(0,1/2)\), and
  \(0<\epsilon\leq c_k\sigma\). This step uses the first three clauses;
  it does not use \(\epsilon\).
- `assump:moment-class`: \(\mu=\mu(D)\in[-\lambda,\lambda]\) and
  \(\mathbb E_D|X-\mu|^k\leq\sigma^k\), with no support, density,
  symmetry, or tail-shape assumption.
- `assump:independent-samples`: the localization samples are iid with law
  \(D\), and the complete localization block is independent of the complete
  refinement block.
- `assump:precommitted-protocol`: the sample split and all localization
  queries and decoder randomness are fixed before any response bit; every
  query is measurable.

### Derived invariants supplied by accepted dependencies

None. The target row has no dependencies.

### Local conditional hypotheses

None are assumed. The event \(\mathcal E_{\rm loc}\) is produced in this
step with its probability bound. Lemmas below make pointwise statements on
that derived event, but the event is neither primitive nor silently assumed.

The accepted `global_proof.md` is not an assumption, dependency, cited result,
or proof authority.

## Local Lemma Map

Atomic step = no. Source instantiation, the interval-to-grid bridge,
recentering, and block independence are logically distinct and have separate
downstream consumers.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), \(\ref{assump:independent-samples}\), and \(\ref{assump:precommitted-protocol}\), the verified Lau--Scarlett v2 localization construction at \(\eta=\delta/4\), with a fixed minimum-index Hamming tie rule and a degenerate public seed, is a deterministic precommitted Borel one-bit block whose interval and midpoint output are defined on every transcript; it has \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), \(L_k=50\), and the claimed localization cost. | Supplies the cited localization event, scalar wrapper, protocol legality, branch/tie handling, and rate-bearing sample count. |
| unit_002 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and Proposition~\(\ref{prop:step-001-localization}\), for every realized scalar \(c\), the fixed nearest-center rule gives \(|c-m_0|\leq h_0/2\); if \(c\in\mathcal E_{\rm loc}\) and \(a_k\geq200\), then \(|m_0-\mu|\leq3h_0/4\), including every grid tie and either source branch. | Converts the cited interval output to the exact core certificate consumed downstream. |
| unit_003 | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:moment-class}\) and Lemma~\(\ref{lem:step-001-core}\), if \(c\in\mathcal E_{\rm loc}\) and \(a_k\geq200\), then \(M_k(c):=\int|x-m_0(c)|^kD(dx)\leq C_k^{\rm rec}\sigma^k\), where \(C_k^{\rm rec}=2^{k-1}[1+(3a_k/4)^k]\). | Produces the finite recentered moment in the exact metric used by the refinement proof. |
| unit_004 | proposition | Under Assumptions~\(\ref{assump:independent-samples}\) and \(\ref{assump:precommitted-protocol}\) and Proposition~\(\ref{prop:step-001-localization}\), the complete localization sigma-field contains \(I,c,m_0,\mathcal E_{\rm loc}\) and \(M_k(c)\) (for fixed \(D\)) and is independent of all refinement samples and seeds; conditional on it, the refinement tuples retain their original independent product law. | Exposes the independent refinement interface required by all later conditional calculations. |

## Cited Result Applications

### Lau--Scarlett non-adaptive localization theorem and appendix

**Source identity.** Lau and Scarlett, *Order-Optimal Sequential 1-Bit Mean
Estimation in General Tail Regimes*, arXiv:2604.07796v2, dated May 25, 2026,
Theorem 16 with exact label `thm: alternative localization`, and its proof and
construction in Appendix `appendix: two-stage`. The result was checked against
the v2 source archive with SHA-256
`d6ef358108465837ecd4d27b6320ea95f5a0146ef62a14d3104125174d82db45`.

**Restated source result, including the numerical appendix interface.** Let
\(\lambda\geq\sigma>0\), \(\eta\in(0,1/2)\), and let the observations be iid
from a law with mean \(\mu\in[-\lambda,\lambda]\) and
\(\mathbb E|X-\mu|\leq\sigma\). There is a deterministic non-adaptive
one-bit localization construction returning an interval \(I\) such that
\(\Pr\{\mu\in I\}\geq1-\eta\). Its appendix makes the following construction
and constants explicit.

- Put \(h_{\rm src}=20\sigma\). If \(2\lambda\leq h_{\rm src}\), return
  \(I=[-\lambda,\lambda]\) without querying a sample. Thus
  \(|I|\leq20\sigma\) and containment is deterministic.
- If \(2\lambda>h_{\rm src}\), put
  \[
    N_{\rm src}=\left\lceil\frac{2\lambda}{h_{\rm src}}\right\rceil,
    \qquad
    \Delta=\frac{2\lambda}{N_{\rm src}},
    \qquad
    \ell=\left\lceil10000
      \left(\log N_{\rm src}+\log\frac1\eta\right)\right\rceil.
  \]
  Then \(h_{\rm src}/2\leq\Delta\leq h_{\rm src}\). Translating the
  source's bin notation to avoid collision with the setting's refinement
  branch variables, define endpoints
  \(e_j^{\rm src}=-\lambda+(j-1)\Delta\) and bins
  \(K_j^{\rm src}=[e_j^{\rm src},e_{j+1}^{\rm src})\) for
  \(j<N_{\rm src}\), closing only the final right endpoint in
  \(K_{N_{\rm src}}^{\rm src}\); observations outside
  \([-\lambda,\lambda]\) are clipped to the first or last bin. Thus every
  boundary has a unique bin index. The appendix fixes a deterministic
  length-\(\ell\) balanced binary codeword for every bin, queries coordinate
  \(t\) of the codeword of the clipped bin containing \(X_t\), decodes a
  minimum-Hamming-score bin, and returns the union of that bin and at most its
  two neighbors on either side. Hence the decoder returns an interval on
  every bit string, \(|I|\leq5\Delta\leq100\sigma\) on every bit string, and
  \(\Pr\{\mu\in I\}\geq1-\eta\).

The source theorem's displayed statement records the interval length and
sample count in big-O form; the constants \(20,100,10000\) and the exact
codeword length above come from its cited appendix. The appendix proof bounds
the event that any far bin has Hamming score no larger than a safe anchor, so
choosing the minimum-index minimizer makes the decoder deterministic without
changing its containment guarantee.

**Instantiation and object map.**

| Source object | Current object |
| ------------- | -------------- |
| \(\eta\) | \(\delta/4\) |
| iid source observations \(X_1,\ldots,X_\ell\) | samples indexed by \(I_{\rm loc}\) |
| deterministic bit function \(Q_t:\mathbb R\to\{0,1\}\) | Borel set \(\mathcal B_t=Q_t^{-1}(\{1\})\) and bit \(Y_t^{\rm loc}={\bf1}\{X_t\in\mathcal B_t\}\) |
| deterministic codebook | degenerate public seed \(R_{\rm loc}=r_\star\) |
| returned interval \(I\) | appendix-local interval fed to the current decoder wrapper |
| source interval decoder | fixed minimum-index Hamming decoder followed by \(c=\operatorname{mid}(I):=(\inf I+\sup I)/2\) |
| source sample count \(0\) or \(\ell\) | \(N_{\rm loc}\) |

The current arbitrary-measurable-query model contains these source queries.
Indeed, the clipped-bin map is constant on finitely many half-open or closed
intervals and on the two outer rays, so every \(\mathcal B_t\) is Borel. The
codebook, bins, queries, sample count, and tie rule depend only on the known
\((\lambda,\sigma,\delta)\) and are fixed before any bit.

**Hypothesis discharge.**

- Assumption~\(\ref{assump:parameter-domain}\) gives
  \(\lambda\geq\sigma>0\) and
  \(\eta=\delta/4\in(0,1/8)\subset(0,1/2)\).
- Assumption~\(\ref{assump:moment-class}\) gives
  \(\mu\in[-\lambda,\lambda]\). Its first-moment implication is
  \[
    \mathbb E|X-\mu|
    =\mathbb E\bigl[|X-\mu|\cdot1\bigr]
    \leq\bigl(\mathbb E|X-\mu|^k\bigr)^{1/k}
          \bigl(\mathbb E1^{k/(k-1)}\bigr)^{(k-1)/k}
    \leq\sigma,
  \]
  which is Lyapunov moment monotonicity, here derived directly from
  Holder's inequality. No support or tail-shape hypothesis is introduced.
- Assumption~\(\ref{assump:independent-samples}\) supplies the iid local
  observations required by the source.
- Assumption~\(\ref{assump:precommitted-protocol}\), together with the
  source's deterministic construction, supplies the fixed split and permits
  exactly these precommitted Borel one-bit queries.

**Conclusion used and non-output boundary.** Only the always-defined interval,
its deterministic \(100\sigma\) length bound, its containment probability,
the deterministic non-adaptive query construction, and its sample count are
imported. The cited result does not output the scalar \(c\), the nearest-grid
center \(m_0\), a core event, a recentered \(k\)-moment, an independence
statement about the current refinement block, or any refinement statistic.
Those conclusions are proved by the four local units below. The source's
location-dependent second stage is not used.

### Moment monotonicity and the power-triangle inequality

The Lyapunov application needed by the source was restated and proved in the
hypothesis discharge above: for \(k>1\),
\(\|Z\|_1\leq\|Z\|_k\) on a probability space.

The only other standard inequality used later is, for real \(u,v\) and
\(k\geq1\),
\[
  |u+v|^k\leq2^{k-1}(|u|^k+|v|^k).
\]
It follows directly from \(|u+v|\leq|u|+|v|\) and convexity of
\(t\mapsto t^k\):
\[
  (|u|+|v|)^k
  =2^k\left(\frac{|u|+|v|}{2}\right)^k
  \leq2^{k-1}(|u|^k+|v|^k).
\]
Thus no uncited external moment or recentering theorem is being used.

### Local result applications

- Proposition~\(\ref{prop:step-001-localization}\) is established in
  unit_001 from the checked source and the four primitive assumptions. It is
  used by Lemma~\(\ref{lem:step-001-core}\),
  Proposition~\(\ref{prop:step-001-independence}\), and the target assembly.
- Lemma~\(\ref{lem:step-001-core}\) is established in unit_002 from the
  setting grid and the localization proposition. It is used by
  Lemma~\(\ref{lem:step-001-recenter}\) and the target assembly.
- Lemma~\(\ref{lem:step-001-recenter}\) is established in unit_003 from the
  moment assumption and the core lemma. It is used in the target assembly and
  exports the moment certificate to later sketch steps.
- Proposition~\(\ref{prop:step-001-independence}\) is established in
  unit_004 from primitive block independence and the measurable localization
  wrapper. It is used in the target assembly and exports the conditioning
  interface to later sketch steps.

## Local Derivation

### unit_001: proposition

**Proposition (Verified non-adaptive localization and scalar wrapper).**
\(\label{prop:step-001-localization}\)
Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), \(\ref{assump:independent-samples}\), and
\(\ref{assump:precommitted-protocol}\), set \(\eta=\delta/4\). There is a
deterministic precommitted localization block using one Borel-set bit per
sample and a decoder defined on every transcript such that, with
\(c=\operatorname{mid}(I)\),
\[
  \mathcal E_{\rm loc}:=\{|c-\mu|\leq50\sigma\},
  \qquad
  \Pr_D(\mathcal E_{\rm loc})\geq1-\frac\delta4.
\]
Moreover, one may take \(L_k=50\) and the universal, hence k-only, constant
\(C_{{\rm loc},k}=10001\) in
\[
  N_{\rm loc}\leq C_{{\rm loc},k}
  \left[1+\log\frac{\lambda}{\sigma}+\log\frac4\delta\right].
\]
In the source's trivial branch the output is exactly
\(I=[-\lambda,\lambda]\), \(c=0\), and \(N_{\rm loc}=0\). In its nontrivial
branch the fixed minimum-index Hamming tie rule, interval \(I\), and midpoint
\(c\) remain defined even when localization fails.

**Proof / justification.** The source assumptions were discharged above.
Fix the deterministic balanced codebook promised by the checked appendix and
take \(R_{\rm loc}\) to be a constant. For every source coordinate \(t\), set
\(\mathcal B_t=Q_t^{-1}(\{1\})\). The explicit clipped-bin formula makes
\(\mathcal B_t\) Borel, and
\(Y_t^{\rm loc}={\bf1}\{X_t\in\mathcal B_t\}=Q_t(X_t)\). These sets are
fixed from the known parameters and codebook before the first response.

If \(2\lambda\leq20\sigma\), the cited construction asks no query and
returns \(I=[-\lambda,\lambda]\). This is an always-defined deterministic
output, \(c=0\), and
\[
  |I|=2\lambda\leq20\sigma,
  \qquad
  |c-\mu|=|\mu|\leq\lambda\leq10\sigma.
\]
Thus \(\mathcal E_{\rm loc}\) holds deterministically and
\(N_{\rm loc}=0\) satisfies the asserted cost.

Suppose now that \(2\lambda>20\sigma\). The appendix uses
\[
  N_{\rm src}=\left\lceil\frac{\lambda}{10\sigma}\right\rceil\geq2,
  \qquad
  N_{\rm loc}=\ell=\left\lceil10000
    \left(\log N_{\rm src}+\log\frac4\delta\right)\right\rceil.
\]
For any received word, the finite set of Hamming scores has a minimizer; the
minimum-index rule selects one uniquely. The resulting union of at most five
consecutive source bins is nonempty and has length at most \(100\sigma\), so
both \(I\) and its midpoint \(c\) are defined for every word. Let
\(\mathcal A_{\rm src}:=\{\mu\in I\}\). The checked theorem and appendix give
\(\Pr_D(\mathcal A_{\rm src})\geq1-\delta/4\). On this event,
\[
  |c-\mu|\leq\frac{|I|}{2}\leq50\sigma.
\]
Consequently \(\mathcal A_{\rm src}\subseteq\mathcal E_{\rm loc}\), proving
the required probability bound without identifying source success with a
primitive event.

It remains only to make the source's additive cost explicit. Since
\(x:=\lambda/(10\sigma)>1\),
\[
  N_{\rm src}=\lceil x\rceil\leq x+1\leq2x
  =\frac{\lambda}{5\sigma}\leq\frac{\lambda}{\sigma},
\]
and hence \(\log N_{\rm src}\leq\log(\lambda/\sigma)\). Therefore
\[
\begin{aligned}
  N_{\rm loc}
  &\leq1+10000\left(\log\frac{\lambda}{\sigma}
                         +\log\frac4\delta\right)\\
  &\leq10001\left(1+\log\frac{\lambda}{\sigma}
                         +\log\frac4\delta\right).
\end{aligned}
\]
The construction uses one bit from each of these \(N_{\rm loc}\) samples
and no response-dependent query. This proves the proposition in both source
branches and on every tie or failure transcript. \(\square\)

### unit_002: lemma

**Lemma (Midpoint-to-grid core bridge).**
\(\label{lem:step-001-core}\)
Under Assumption~\(\ref{assump:parameter-domain}\) and
Proposition~\(\ref{prop:step-001-localization}\), define \(h_0=a_k\sigma\)
and use the setting's minimum-index nearest-center rule. For every realized
localization output \(c\), including a source failure output,
\[
  |c-m_0|\leq\frac{h_0}{2}.
\]
If in addition \(c\in\mathcal E_{\rm loc}\) and \(a_k\geq200\), then
\[
  |m_0-\mu|\leq\frac{3h_0}{4},
  \qquad
  \mu\in{\rm Core}_{0,j_0(c)}
  =[m_0-3h_0/4,m_0+3h_0/4].
\]
These conclusions cover both source branches and every tie between adjacent
base-grid centers.

**Proof / justification.** Let \(q=\lfloor c/h_0\rfloor\). The candidate
center \(m_{0,q}=(q+1/2)h_0\) is at distance at most \(h_0/2\) from \(c\).
Thus the distance of a nearest center is at most \(h_0/2\). At a boundary
between two Voronoi cells, both adjacent centers have exactly this distance;
choosing the smaller index preserves the bound. This argument is valid for
negative as well as positive \(c\). More explicitly, the fixed tie rule is
\(j_0(c)=\lceil c/h_0\rceil-1\), so \(j_0\), \(m_0\), and the associated
events are Borel measurable functions of \(c\).

On the derived event \(\mathcal E_{\rm loc}\),
Proposition~\(\ref{prop:step-001-localization}\) and \(a_k\geq200\) give
\[
\begin{aligned}
  |m_0-\mu|
  &\leq|m_0-c|+|c-\mu|\\
  &\leq\frac{h_0}{2}+50\sigma
   =\left(\frac12+\frac{50}{a_k}\right)h_0
  \leq\frac{3h_0}{4}.
\end{aligned}
\]
The last inequality is exactly \(50\sigma\leq h_0/4\). The displayed
absolute-value bound is equivalent to membership in the closed core, so
atoms on either core endpoint and all grid ties are included. Moreover, the
setting definition gives
\(J_{0,j_0}=[m_0-3h_0/2,m_0+3h_0/2)\), so this closed core is indeed contained
in the selected padding. \(\square\)

### unit_003: lemma

**Lemma (Recentered kth-moment certificate).**
\(\label{lem:step-001-recenter}\)
Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:moment-class}\) and Lemma~\(\ref{lem:step-001-core}\), if
\(c\in\mathcal E_{\rm loc}\) and \(a_k\geq200\), then the setting-derived
quantity
\[
  M_k(c):=\int_{\mathbb R}|x-m_0(c)|^kD(dx)
\]
is finite and satisfies
\[
  M_k(c)
  \leq2^{k-1}\left[\sigma^k+\left(\frac{3h_0}{4}\right)^k\right]
  =C_k^{\rm rec}\sigma^k,
  \qquad
  C_k^{\rm rec}:=2^{k-1}\left[1+\left(\frac{3a_k}{4}\right)^k\right].
\]

**Proof / justification.** Fix any realized scalar \(c\) for which the
derived event \(\mathcal E_{\rm loc}\) holds; then \(m_0(c)\) is deterministic
in the integral defining \(M_k(c)\). For every
\(x\in\mathbb R\),
\[
  |x-m_0|^k
  =|(x-\mu)+(\mu-m_0)|^k
  \leq2^{k-1}\bigl(|x-\mu|^k+|\mu-m_0|^k\bigr).
\]
Integrating, applying Assumption~\(\ref{assump:moment-class}\), and then
Lemma~\(\ref{lem:step-001-core}\) gives
\[
\begin{aligned}
  M_k(c)
  &\leq2^{k-1}\left(\mathbb E_D|X-\mu|^k+|\mu-m_0|^k\right)\\
  &\leq2^{k-1}\left[\sigma^k+(3h_0/4)^k\right]\\
  &=2^{k-1}\left[1+(3a_k/4)^k\right]\sigma^k.
\end{aligned}
\]
The right-hand side is finite. Since \(a_k\) is chosen only as a function of
the fixed \(k\), so is \(C_k^{\rm rec}\). No property of the localization
interval beyond the proved same-target core bound is used. \(\square\)

### unit_004: proposition

**Proposition (Independent refinement interface).**
\(\label{prop:step-001-independence}\)
Under Assumptions~\(\ref{assump:independent-samples}\) and
\(\ref{assump:precommitted-protocol}\) and
Proposition~\(\ref{prop:step-001-localization}\), let
\(\mathscr L_{\rm loc}\) be the sigma-field generated by the complete
localization block, including its local samples, degenerate seed, fixed
queries, bits, interval \(I\), and outputs \(c,m_0\). Then
\(\mathscr L_{\rm loc}\) is independent of the sigma-field generated by all
refinement samples and all refinement levels, colors, branches, types, masks,
dithers, and group assignments. In particular, \(c,m_0\), and
\(\mathcal E_{\rm loc}\), as well as \(M_k(c)\) for fixed \(D\), are
\(\mathscr L_{\rm loc}\)-measurable. Conditional on
\(\mathscr L_{\rm loc}\), the per-sample refinement tuples retain their
original independent product law. Equivalently, for every bounded measurable
function \(g\) of the complete refinement block,
\[
  \mathbb E_D[g\mid\mathscr L_{\rm loc}]=\mathbb E_D g
  \quad\text{almost surely}.
\]

**Proof / justification.** The source codebook, bins, queries, and Hamming tie
rule are deterministic functions of the known parameters, and
\(R_{\rm loc}=r_\star\) is constant. Hence every localization bit, \(I\),
\(c\), and \(m_0\) is a measurable function of the localization samples and
fixed protocol objects. The event \(\mathcal E_{\rm loc}\) is then
\(\mathscr L_{\rm loc}\)-measurable because \(\mu(D)\) is fixed under the
law \(D\).

Assumption~\(\ref{assump:independent-samples}\) states that the complete
refinement sample-and-seed family is independent of the complete localization
block. Applying measurable functions to the localization block cannot destroy
that independence. Therefore the two displayed sigma-fields are independent.
For independent sigma-fields, conditioning on the first leaves the joint law
on the second unchanged; since that unconditional refinement law is a product
across sample indices by the same assumption and the precommitted construction,
its conditional law is the same product. The displayed conditional-expectation
identity holds almost surely, including on the source-failure part of the
sample space; independently, the decoder objects themselves are defined on
every transcript. This proves the claimed interface. \(\square\)

## Target-Step Assembly

Proposition~\(\ref{prop:step-001-localization}\) instantiates the exact
checked v2 source under the four primitive assumptions. It proves that every
localization query is a precommitted Borel one-bit query, fixes both the source
Hamming tie and failure output, preserves the deterministic trivial branch,
and exports
\[
  \Pr_D(\mathcal E_{\rm loc})\geq1-\delta/4,
  \qquad L_k=50,
  \qquad
  N_{\rm loc}\leq10001
  \left[1+\log\frac{\lambda}{\sigma}+\log\frac4\delta\right].
\]
Thus the target's cost statement holds with the universal, hence k-only,
choice \(C_{{\rm loc},k}=10001\).

Lemma~\(\ref{lem:step-001-core}\) then proves for every output, independently
of source success, the deterministic rounding bound
\(|c-m_0|\leq h_0/2\). On the produced event
\(\mathcal E_{\rm loc}\), choosing \(a_k\geq200\) yields the exact target
core bound \(|m_0-\mu|\leq3h_0/4\), with source and grid ties included.
Lemma~\(\ref{lem:step-001-recenter}\) composes that same-target bound with the
primitive central-moment condition and gives
\[
  M_k(c)\leq C_k^{\rm rec}\sigma^k,
  \qquad
  C_k^{\rm rec}=2^{k-1}\left[1+(3a_k/4)^k\right].
\]
Finally, Proposition~\(\ref{prop:step-001-independence}\) proves that this
entire generated interface is available before, and is independent of, every
refinement observation and seed. These four named results establish every
clause of the binding sketch row. No dependency artifact or statement from
the global diagnostic is used as evidence.

## Explicit Rate Audit

- Exposed variables: \(k,\lambda,\sigma,\delta\),
  \(\eta=\delta/4\), \(a_k\), \(h_0=a_k\sigma\), \(N_{\rm loc}\),
  \(L_k=50\), \(C_{{\rm loc},k}=10001\), and
  \(C_k^{\rm rec}=2^{k-1}[1+(3a_k/4)^k]\). The source-local
  \(N_{\rm src},\Delta,\ell\) are exposed only while proving the cost.
- Hidden constants may depend on: only the fixed \(k\) and its chosen design
  constant \(a_k\). The localization constant is in fact explicitly
  universal.
- Hidden constants may not depend on: \(D,\mu,\lambda,\sigma,\epsilon,\delta\),
  any sample, transcript, interval, cell, bit string, or refinement seed.
- Fixed quantities: \(k\) and the k-only choice \(a_k\) are fixed;
  \(\lambda,\sigma,\delta,D\) remain arbitrary under the primitive domain.
  The accuracy \(\epsilon\) is not used by this localization step.
- Probability mode: unconditional high probability over the localization
  iid samples, with a deterministic source protocol. The event bound is
  uniform over every admissible \(D\). Conditional refinement statements are
  not proved here; the product-law interface needed for them is proved.
- Horizon mode: fixed and non-stopping. The known-parameter trivial branch has
  fixed horizon zero; the nontrivial branch has the precomputed horizon
  \(\ell\). No data-dependent stopping occurs.
- Norm mode: absolute value for localization and core errors, and the kth
  absolute moment \(\int|x-m_0(c)|^kD(dx)\) for \(M_k(c)\). No additional
  norm notation is introduced.
- Admissibility conditions and auxiliary tolerances:
  \(\lambda\geq\sigma>0\), \(\delta\in(0,1/2)\), \(k>1\),
  \(\eta=\delta/4\), and \(a_k\geq200\).
- Term absorption or simplification inequalities:
  \[
    \log N_{\rm src}\leq\log(\lambda/\sigma),\qquad
    \ell\leq1+10000\left[\log(\lambda/\sigma)+\log(4/\delta)\right],
  \]
  \[
    50\sigma\leq h_0/4,
    \qquad
    |m_0-\mu|\leq h_0/2+50\sigma\leq3h_0/4,
  \]
  and
  \[
    2^{k-1}\left[\sigma^k+(3h_0/4)^k\right]
    =C_k^{\rm rec}\sigma^k.
  \]
- Probability conversion: the source event
  \(\mathcal A_{\rm src}=\{\mu\in I\}\) satisfies
  \(\mathcal A_{\rm src}\subseteq\mathcal E_{\rm loc}\), so
  \(\Pr(\mathcal E_{\rm loc})\geq1-\eta=1-\delta/4\). No union bound or
  conditioning conversion is used in this step.
- Contribution to any Rate Specialization Bridge: this step exports the
  additive localization cost with all ceiling and confidence terms intact.
  It does not absorb that cost into the refinement rate; that exact public
  absorption is assigned by the accepted sketch to step_008.
- Baseline-reduction check: when \(2\lambda\leq20\sigma\), the source's exact
  baseline branch is preserved: \(N_{\rm loc}=0\),
  \(I=[-\lambda,\lambda]\), \(c=0\), and containment is deterministic. The
  midpoint wrapper neither changes a query nor weakens this conclusion. The
  nontrivial source branch and all source/grid ties use the same exported
  event, core, and moment interface, so there is no branch-dependent hidden
  rate loss.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting objects.** The setting-defined
  \(c,\mathcal E_{\rm loc},j_0(c),m_0,h_0,N_{\rm loc}\) retain their original
  meanings. The sketch-defined abbreviation
  \(M_k(c)=\int|x-m_0(c)|^kD(dx)\) is public-facing because later steps
  consume precisely this moment. The constants \(L_k=50\),
  \(C_{{\rm loc},k}=10001\), and \(C_k^{\rm rec}\) are public-facing outputs
  with the explicit provenance proved above. The sigma-field
  \(\mathscr L_{\rm loc}\) is a public-facing conditioning interface for
  downstream proofs, not a theorem assumption.
- **Appendix-local checked-source objects.** The source interval \(I\), source
  containment event \(\mathcal A_{\rm src}\), source scale
  \(h_{\rm src}=20\sigma\), bin number \(N_{\rm src}\), width \(\Delta\),
  endpoints \(e_j^{\rm src}\), bins \(K_j^{\rm src}\), codeword length
  \(\ell\), codewords, clipped-bin map, and functions \(Q_t\) are translated
  checked-citation objects. They are used to verify the wrapper and are not
  exported as refinement assumptions.
- **Proof-local objects.** The constant seed value \(r_\star\), the scalar
  \(x=\lambda/(10\sigma)\) used in the ceiling calculation, and the integer
  \(q=\lfloor c/h_0\rfloor\) used in the nearest-grid calculation are
  proof-local and are not exported.
- **Constant provenance.** The values \(20,100,10000\) are explicit in the
  verified source appendix. The value \(50\) is half the deterministic
  \(100\sigma\) interval length. The value \(200\) is the exact condition
  \(4L_k\). The value \(10001\) follows from the displayed source ceiling
  calculation. The constant \(C_k^{\rm rec}\) is proved by
  Lemma~\(\ref{lem:step-001-recenter}\), not freely assumed.
- **Assumption provenance.** Query precommitment and block independence are
  primitive. Interval containment, \(\mathcal E_{\rm loc}\), core membership,
  the recentered moment, and measurability of the wrapper outputs are derived
  in this step. No generated event, boundedness condition, local-validity
  condition, or selected-cell membership is treated as primitive.
- **Source convention and boundary.** The checked source uses the same real
  observations, independent one-bit samples, deterministic non-adaptive
  queries, and absolute-distance localization interface as the current
  branch. Its general bit functions become current Borel-set queries by
  inverse image. Its interval-only output is explicitly bridged to \(c\); no
  scalar, moment, or refinement conclusion is attributed to the source.
- **Diagnostic context boundary.** The paired
  `global_proof_review.md` has status `ACCEPTED` for the current sketch and
  identifies the interval-midpoint-grid residual chain as step-relevant
  planning context. The derivation above independently checks the v2 source
  and proves that chain. Neither `global_proof.md` nor its G1 display is used
  as evidence, a cited result, an assumption source, or authority to change
  the target claim.
