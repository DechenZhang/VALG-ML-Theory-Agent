# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Instantiate, for every factor, a permutation-symmetrized Yan improper mechanism that is \((\varepsilon/2,\delta/2)\)-DP on every size-\(q_i\) dataset and has \(R_{D_i}\le 1/64\) with probability \(1-1/4096\) on every unpadded realizable i.i.d. input.
- Dependencies: `step_001`.
- Assumptions used: Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; cited-source hypotheses mapped explicitly.
- Technical challenge: Verify the printed \(\log^*d_i\) formula at \(d_i=1\), exact parameter substitution, replacement adjacency, and the multiset/order convention.
- Intended proof tool or cited result: Chao Yan, arXiv:2505.06581v2, `alg:improperlearner`, `cor: threshold dimension and littlestone dimension`, and `thm:improper sample complexity`; the \(TD+1\) wrapper and random-permutation symmetrization.
- Output target: Exact factor mechanism/quota certificate; no padded utility claim.
- Rate objective: Upper objective with exposed \(s_i,q_i,\varepsilon,\delta\), a universal \(K\), high-probability factor risk, and fixed-sample distributional-risk mode.
- Row-local review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by `proof_sketch_review.md`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:vc-one-factors`: every \(C_i\) is nonconstant, has \(\operatorname{VC}(C_i)=1\), and has finite \(d_i=\operatorname{LD}(C_i)\). No order, finite cardinality, properness, or computational hypothesis is imposed.
  - `assump:global-privacy-range`: \(0<\varepsilon\le 1/10\) and \(0<\delta<1\).
- Derived invariants supplied by accepted dependencies:
  - The accepted proof/review pair for `step_001`, with SHA-256 values `5efff885caeacf39dcde5df5acea7c32a79361abb684dc938d7d8a6402a2b6df` and `c18029b15ee3f6506a7208dc17480c56ad4ce36fa48c8de2ba5e9b6137bca02c`, proves in Lemma~\ref{lem:step-001-structural-scales} that \(d_i\ge 1\) and \(s_i=1+\log^*(d_i+1)\ge 2\) for every factor. These are the only dependency conclusions used here.
- Local conditional hypotheses: None.

The source theorem is a cited result to be checked, not an assumption. Realizability and i.i.d. sampling are used only for its utility conclusion. They are not used for privacy, which is proved for every fixed-size labeled input, including nonrealizable inputs and inputs containing the setting's padding record.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, the accepted structural-scale conclusion from Lemma~\ref{lem:step-001-structural-scales}, and Yan's checked \(TD+1\) source interface, the source dimension parameter \(u_i=\log^*(TD(X_i,(C_i)_{f_i})+1)\) satisfies \(1\le u_i\le 3s_i/2\), and one universal choice \(K\ge 6K_{\rm Yan}\) makes the displayed integer \(q_i\) meet the exact source-size threshold after the factor-parameter substitution. | Repairs the printed \(d_i=1\) endpoint and proves the quota domination with an explicit universal-constant provenance and ceiling. |
| `unit_002` | proposition | Under the same assumptions, accepted dependency conclusion, Lemma~\ref{lem:step-002-endpoint-quota}, and Yan's checked labeled theorem, for every factor there is an ordered-input improper mechanism \(B_i\) on exactly \(q_i\) records that is \((\varepsilon/2,\delta/2)\)-DP on all ordered inputs and has risk at most \(1/64\) with probability at least \(1-1/4096\) on every realizable i.i.d. factor input. | Instantiates the source mechanism with the exact current objects, privacy parameters, accuracy, confidence, and sample size. |
| `unit_003` | lemma | Under Proposition~\ref{prop:step-002-ordered-yan}, independently uniformly permuting the \(q_i\) input positions before invoking \(B_i\) produces a well-defined multiset mechanism \(A_i^{\mathrm{Yan}}\) that remains \((\varepsilon/2,\delta/2)\)-DP for one-replacement adjacency on every arbitrary size-\(q_i\) labeled input. | Bridges the source's ordered-tuple convention to routed multisets without a privacy loss. |
| `unit_004` | lemma | Under Proposition~\ref{prop:step-002-ordered-yan} and Lemma~\ref{lem:step-002-symmetrized-dp}, the random-permutation wrapper preserves the source's fixed-sample i.i.d. utility exactly, while supplying no utility assertion for padded or otherwise non-i.i.d. inputs. | Gives the exact unpadded factor-risk interface and records the required non-output boundary. |

## Cited Result Applications

### Accepted dependency: structural scales from `step_001`

- Source: accepted Lemma~\ref{lem:step-001-structural-scales} in `proof_steps/step_001/proof.md`, certified by the current accepted `step_001` review.
- Restated statement used here: each nonconstant factor has \(d_i\ge 1\), and hence \(s_i=1+\log^*(d_i+1)\ge 2\), under the branch's base-two definition of \(\log^*\).
- Instantiated objects: the same \(C_i,d_i,s_i\) as in `setting.md`.
- Assumption discharge: factor nonconstancy and finite Littlestone dimension are in Assumption~\ref{assump:vc-one-factors}; the accepted dependency has already derived the two scalar conclusions.
- Conclusion used: positivity at the delicate endpoint, the inequality \(s_i+1\le 3s_i/2\), and positivity of every displayed logarithm.

### Yan v2: exact source transcription and current-object map

The checked primary source is Chao Yan, *An \(\widetilde O\)ptimal Differentially Private PAC Learner for Concept Classes with VC Dimension 1*, arXiv:2505.06581v2. The downloaded v2 source archive used for this check has SHA-256 `ef2df94c47ad0ee4a0942348b72e8773aacedee0fe893ae1e7efc58b7738c43b`.

The relevant source statements are as follows.

1. The source DP definition says that a mechanism is \((\epsilon,\delta)\)-DP when, for any two datasets \(S,S'\) that "differ on one entry" and any event \(E\),
   \[
   \Pr[M(S)\in E]\le e^\epsilon\Pr[M(S')\in E]+\delta.
   \]
   Its PAC definition takes \(S\in(\mathcal X\times\{0,1\})^n\) sampled from a distribution and labeled by an underlying concept, and requires population error at most \(\alpha\) with probability at least \(1-\beta\).

2. The theorem immediately preceding `cor: threshold dimension and littlestone dimension` states
   \[
   \lfloor\log d_L(\mathcal X,\mathcal C)\rfloor
   \le TD(\mathcal X,\mathcal C)
   \le 2^{d_L(\mathcal X,\mathcal C)+1}.
   \]
   The labeled corollary itself is printed as
   \[
   O(\log^*TD(\mathcal X,\mathcal C))
   =O(\log^*d_L(\mathcal X,\mathcal C)).
   \]
   The source also proves, in the unlabeled lemma immediately after its \(f\)-representation definition, that VC dimension and Littlestone dimension are invariant under \(\mathcal C\mapsto\mathcal C_f\).

3. Algorithm `alg:improperlearner` is `OPTPrivateLearner`. It takes an ordered labeled input
   \(S\in(\mathcal X\times\{0,1\})^N\), uses
   \[
   d_{\rm Yan}=TD(\mathcal X,\mathcal C_f)+1,
   \]
   and records, with \(u=\log^*d_{\rm Yan}\),
   \[
   n_{PM}(d_{\rm Yan},1/3,\beta,\epsilon,\delta)
   =O\!\left(\frac{u\log^2(u/(\beta\delta))}{\epsilon}\right)
   \]
   and
   \[
   \begin{aligned}
   t
   &=\max\!\left\{
   n_{PM}(d_{\rm Yan},1/3,\beta,\epsilon,\delta),
   O\!\left(\frac1\epsilon
   \log\frac{4n_{PM}(d_{\rm Yan},1/3,\beta,\epsilon,\delta)}
   {\beta\epsilon\delta}\right)
   \right\}\\
   &=O\!\left(\frac{u\log^2(u/(\epsilon\beta\delta))}{\epsilon}\right),
   \end{aligned}
   \]
   with
   \[
   N=t\frac{48}{\alpha}
   \left(10\log\frac{48e}{\alpha}+\log\frac5\beta\right).
   \]
   The first occurrence of `thm:privacy-OPTPrivateLearner`, immediately following this algorithm, states that the raw mechanism is \((2\epsilon,2\delta)\)-DP. Its proof compares every input pair differing in one entry and does not assume realizability.

4. The source's accuracy corollary gives population error at most \(\alpha\) with probability \(1-(t+2)\beta\). The line immediately before `thm:improper sample complexity` substitutes the raw mechanism parameters by \(\epsilon/2\), \(\delta/2\), and \(\beta/(t+2)\). Thus the labeled theorem is stated in the requested, rather than raw, privacy and confidence parameters.

5. Exact transcription of `thm:improper sample complexity`: for any concept class \(\mathcal C\) with VC dimension one and Littlestone dimension \(d\), if the labeled dataset has size
   \[
   N\ge O\!\left(
   \frac{\log^*d\,\log^2(\log^*d/(\epsilon\beta\delta))}{\epsilon}
   \frac{48}{\alpha}
   \left(10\log\frac{48e}{\alpha}+\log\frac5\beta\right)
   \right),
   \]
   equivalently displayed there as
   \(\widetilde O_{\beta,\delta}(\log^*d/(\alpha\epsilon))\), then there is an \((\epsilon,\delta)\)-DP algorithm that \((\alpha,\beta)\)-PAC learns \(\mathcal C\). The theorem's output is a binary hypothesis and is explicitly the improper learner; it need not belong to \(\mathcal C\).

The final theorem's printed \(\log^*d\) is zero at \(d=1\), so that printed display is not used blindly. The source proof is retained one line earlier in its actual positive parameter \(d_{\rm Yan}=TD(\mathcal X,\mathcal C_f)+1\). Interpreting the source's displayed \(O(\cdot)\) in the standard quantified way, let \(K_{\rm Yan}>0\) be one universal constant, independent of the class, domain, distribution, sample size, and all four learning/privacy parameters, that witnesses this endpoint-corrected source threshold. The proof of Lemma~\ref{lem:step-002-endpoint-quota} below shows that the setting's universal \(K\) may be chosen once with \(K\ge 6K_{\rm Yan}\).

The exact current-object map is

| Yan source object | Current object |
| ----------------- | -------------- |
| \(\mathcal X\) | \(X_i\) |
| \(\mathcal C\) | \(C_i\) |
| \(d_L(\mathcal X,\mathcal C)\) | \(d_i=\operatorname{LD}(C_i)\) |
| source-selected \(f\in\mathcal C\), \(\mathcal C_f\) | \(f_i\in C_i\), \((C_i)_{f_i}\) |
| requested \((\alpha,\beta,\epsilon,\delta)\) | \((\alpha_{\rm fac},\beta_{\rm fac},\varepsilon_{\rm fac},\delta_{\rm fac})=(1/64,1/4096,\varepsilon/2,\delta/2)\) |
| raw algorithm privacy inputs | \((\varepsilon_{\rm fac}/2,\delta_{\rm fac}/2)=(\varepsilon/4,\delta/4)\), as in the source's final substitution |
| \(N\) | \(q_i\) |
| underlying concept and distribution | \(c_i\in C_i\) and arbitrary \(D_i\) on \(X_i\) |
| \(error_{D_i}(h,c_i)\) | \(R_{D_i}(h,c_i)\) |

Assumption discharge is exact. Assumption~\ref{assump:vc-one-factors} supplies VC dimension one, finite \(d_i\), nonemptiness, and no cardinality restriction. Assumption~\ref{assump:global-privacy-range} and the fixed factor constants give
\[
0<\varepsilon_{\rm fac}\le\frac1{20},\qquad
0<\delta_{\rm fac}<\frac12,qquad
0<\alpha_{\rm fac},\beta_{\rm fac}<1.
\]
In particular, the raw choosing-mechanism restriction \(0<\epsilon<2\) is met after the source's halving substitution. The utility input is exactly a fixed-size realizable i.i.d. sample, and its population error is the current factor risk. The DP conclusion uses the source's fixed-size one-entry replacement convention on every labeled dataset. No ordering of \(X_i\), finite domain, finite class, proper-output, or efficiency hypothesis appears in the final labeled theorem.

Known source nonoutputs are kept separate. Yan does not assert permutation invariance, routed-product privacy, utility after padding, utility on nonrealizable data, cross-factor composition, an occupancy statement, a product theorem, a cardinality bound, or any lower bound. The current step proves only the permutation bridge. Later steps, not this citation, must prove routing, padding loss, and product composition.

### Local results used in the assembly

| Result | Restated statement and assumptions | Conclusion used | Assumption discharge and use |
| ------ | ------------------------------------ | --------------- | ---------------------------- |
| Lemma~\ref{lem:step-002-endpoint-quota} | Under the two primitive assumptions, the accepted structural-scale conclusion, and the checked source inequalities, the actual source log-star parameter is at most \(3s_i/2\), and \(K\ge6K_{\rm Yan}\) makes \(q_i\) meet the source threshold. | Endpoint-corrected exact quota certificate. | VC one, finite LD, positivity, and \(s_i\ge2\) are discharged above; used by Proposition~\ref{prop:step-002-ordered-yan}. |
| Proposition~\ref{prop:step-002-ordered-yan} | Under the same assumptions, the quota lemma, and `thm:improper sample complexity`, there is an ordered-input improper factor mechanism at exactly \(q_i\). | Ordered replacement DP and unpadded i.i.d. PAC utility at the factor constants. | All source objects and hypotheses are mapped above; used by both permutation lemmas. |
| Lemma~\ref{lem:step-002-symmetrized-dp} | If an ordered mechanism is replacement-DP, an independent uniform input permutation is order-invariant and remains replacement-DP on sequences and multisets. | Arbitrary-input factor DP with the routed-multiset convention. | Proved locally by a coupled-permutation and averaging argument; used in the target assembly. |
| Lemma~\ref{lem:step-002-symmetrized-utility} | If the ordered mechanism has i.i.d. PAC utility, the same independent uniform permutation preserves that law exactly. | Unpadded factor-risk probability \(1-1/4096\). | Proved locally by exchangeability; used in the target assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Endpoint-corrected Yan quota domination).** \(\label{lem:step-002-endpoint-quota}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, the accepted conclusion \(d_i\ge1,s_i\ge2\) of Lemma~\ref{lem:step-001-structural-scales}, and the checked Yan v2 \(f\)-representation and threshold-dimension inequalities, fix any source reference \(f_i\in C_i\) and define
\[
d_i^{\rm Yan}:=TD(X_i,(C_i)_{f_i})+1,
\qquad
u_i:=\log^*d_i^{\rm Yan}.
\]
Then
\[
1\le u_i\le s_i+1\le\frac32s_i.
\]
Moreover, if \(K_{\rm Yan}\) is the universal source constant described in `Cited Result Applications`, then one universal choice
\[
K\ge6K_{\rm Yan}
\]
in the definition of \(q_i\) guarantees that \(q_i\) is at least the source sample threshold after substituting
\((\alpha,\beta,\epsilon,\delta)=(\alpha_{\rm fac},\beta_{\rm fac},\varepsilon_{\rm fac},\delta_{\rm fac})\).

Proof / justification:

Because \(C_i\) is nonconstant and \(f_i\in C_i\), there are \(c_i'\in C_i\) and \(x\in X_i\) with \(c_i'(x)\ne f_i(x)\). Hence \((c_i')_{f_i}(x)=1\), so the source threshold dimension of \((C_i)_{f_i}\) is at least one. Consequently \(d_i^{\rm Yan}\ge2\) and \(u_i\ge1\). This is the positive endpoint missing from the printed \(\log^*d_i\) display.

The source's \(f\)-representation lemma gives
\(d_L(X_i,(C_i)_{f_i})=d_i\). Its threshold-dimension theorem therefore gives
\[
TD(X_i,(C_i)_{f_i})\le2^{d_i+1}.
\]
Since \(d_i\ge1\),
\[
d_i^{\rm Yan}
\le2^{d_i+1}+1
\le2^{2(d_i+1)}.
\]
Put \(x=d_i+1\ge2\). The elementary inequality
\(1+\log_2x\le x\) implies, using monotonicity of the branch's base-two iterated logarithm,
\[
\log^*(2x)
=1+\log^*(1+\log_2x)
\le1+\log^*x.
\]
It follows that
\[
u_i
\le\log^*(2^{2(d_i+1)})
=1+\log^*(2(d_i+1))
\le2+\log^*(d_i+1)
=s_i+1.
\]
The accepted bound \(s_i\ge2\) gives \(s_i+1\le3s_i/2\).

For the quantitative threshold, write
\[
\vartheta:=\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}
=\frac{\varepsilon\delta}{16384}.
\]
The primitive parameter range gives \(0<\vartheta<1\), so
\(\log(s_i/\vartheta)\ge\log2>0\). The just-proved bound yields
\[
\log\frac{u_i}{\vartheta}
\le \log\frac{(3/2)s_i}{\vartheta}
=\log\frac{s_i}{\vartheta}+\log\frac32
\le2\log\frac{s_i}{\vartheta}.
\]
Therefore the complete dimension-bearing factor in the source threshold satisfies
\[
u_i\log^2\frac{u_i}{\vartheta}
\le \frac32s_i\cdot4\log^2\frac{s_i}{\vartheta}
=6s_i\log^2\frac{s_i}{\vartheta}.
\]
All remaining factors in Yan's threshold are positive and unchanged. Thus \(K\ge6K_{\rm Yan}\) dominates the source threshold.

For completeness, the setting's quota after literal substitution is
\[
\begin{aligned}
q_i
&=\left\lceil
K\frac{2s_i}{\varepsilon}
\log^2\!\left(\frac{16384s_i}{\varepsilon\delta}\right)
\,3072
\left(10\log(3072e)+\log(20480)\right)
\right\rceil.
\end{aligned}
\]
Indeed, \(1/\varepsilon_{\rm fac}=2/\varepsilon\),
\(48/\alpha_{\rm fac}=3072\),
\(48e/\alpha_{\rm fac}=3072e\), and
\(5/\beta_{\rm fac}=20480\). The ceiling makes \(q_i\) an integer and gives \(q_i\) at least the displayed real threshold; it drops no term and changes no parameter. \(\square\)

### unit_002: proposition

**Proposition (Ordered Yan factor mechanism at the displayed quota).** \(\label{prop:step-002-ordered-yan}\)

Statement: Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range}, the accepted structural-scale conclusion from Lemma~\ref{lem:step-001-structural-scales}, Lemma~\ref{lem:step-002-endpoint-quota}, and the checked Yan v2 `alg:improperlearner` and `thm:improper sample complexity`, for every factor \(i\) there is a randomized mechanism
\[
B_i:(X_i\times\{0,1\})^{q_i}\longrightarrow\{0,1\}^{X_i}
\]
with the following properties.

1. For all ordered tuples \(z,z'\in(X_i\times\{0,1\})^{q_i}\) differing in one coordinate, including arbitrary nonrealizable tuples, and every measurable output event \(E\),
   \[
   \Pr[B_i(z)\in E]
   \le e^{\varepsilon_{\rm fac}}\Pr[B_i(z')\in E]
   +\delta_{\rm fac}.
   \]
2. For every \(c_i\in C_i\), every distribution \(D_i\) on \(X_i\), and an ordered i.i.d. labeled input
   \(Z\sim((D_i)_{c_i})^{q_i}\),
   \[
   \Pr_{Z,B_i}\!\left[
   R_{D_i}(B_i(Z),c_i)\le\alpha_{\rm fac}
   \right]
   \ge1-\beta_{\rm fac}.
   \]
The output is the source's possibly improper binary hypothesis; no membership in \(C_i\) is asserted.

Proof / justification:

The source-object map and every source hypothesis are discharged in `Cited Result Applications`. Lemma~\ref{lem:step-002-endpoint-quota} proves that the integer \(q_i\) meets the endpoint-corrected source-size threshold. Invoke `thm:improper sample complexity` with requested parameters
\[
(\alpha,\beta,\epsilon,\delta)
=(\alpha_{\rm fac},\beta_{\rm fac},
\varepsilon_{\rm fac},\delta_{\rm fac}).
\]
At mechanism level, the source's preceding substitution runs the raw algorithm with privacy inputs \((\varepsilon_{\rm fac}/2,\delta_{\rm fac}/2)\), so the raw \((2\epsilon,2\delta)\) privacy theorem gives exactly \((\varepsilon_{\rm fac},\delta_{\rm fac})\), not twice that budget. Its confidence calibration gives exactly \(\beta_{\rm fac}\).

The source DP definition and privacy proof quantify over all fixed-size inputs differing in one entry. Realizability enters only the PAC conclusion. The source population error is exactly \(R_{D_i}\) under the displayed object map. Finally, `alg:improperlearner` constructs a binary hypothesis without requiring it to lie in \(C_i\), which is precisely the unrestricted output interface required here. \(\square\)

### unit_003: lemma

**Lemma (Permutation symmetrization preserves arbitrary-input replacement privacy).** \(\label{lem:step-002-symmetrized-dp}\)

Statement: Under Proposition~\ref{prop:step-002-ordered-yan}, define \(A_i^{\mathrm{Yan}}\) on an ordered size-\(q_i\) tuple \(z=(z_1,\ldots,z_{q_i})\) by sampling a uniform permutation \(\Pi\) of \([q_i]\), independently of all other randomness, and returning
\[
A_i^{\mathrm{Yan}}(z)
:=B_i(z_{\Pi(1)},\ldots,z_{\Pi(q_i)}).
\]
Then its output law depends only on the input multiset. Viewed either as a mechanism on ordered tuples or as the induced mechanism on size-\(q_i\) multisets, it is \((\varepsilon_{\rm fac},\delta_{\rm fac})=(\varepsilon/2,\delta/2)\)-DP for one-replacement adjacency on every arbitrary labeled input.

Proof / justification:

If \(\sigma\) is any deterministic permutation, then \(\sigma\circ\Pi\) is uniform whenever \(\Pi\) is uniform. Hence the laws of \(A_i^{\mathrm{Yan}}(z)\) and \(A_i^{\mathrm{Yan}}(z_\sigma)\) agree, proving that the law is a well-defined function of the multiset of entries.

Now let two size-\(q_i\) multisets \(M,M'\) be one-replacement adjacent. If the replacement inserts the same record it removes, then \(M=M'\) and the DP inequality is immediate. Otherwise there are representatives
\(z=(z_1,\ldots,z_{q_i})\) and
\(z'=(z'_1,\ldots,z'_{q_i})\) that agree in every coordinate except one: align all common multiplicities and place the removed and inserted records in the remaining coordinate. For every fixed permutation \(\pi\), the ordered tuples
\((z_{\pi(1)},\ldots,z_{\pi(q_i)})\) and
\((z'_{\pi(1)},\ldots,z'_{\pi(q_i)})\)
still differ in exactly one coordinate. Proposition~\ref{prop:step-002-ordered-yan} therefore gives, for every measurable event \(E\),
\[
\Pr[B_i(\pi z)\in E]
\le e^{\varepsilon_{\rm fac}}
\Pr[B_i(\pi z')\in E]
+\delta_{\rm fac}.
\]
Averaging this inequality over the common uniform \(\Pi\) gives
\[
\Pr[A_i^{\mathrm{Yan}}(M)\in E]
\le e^{\varepsilon_{\rm fac}}
\Pr[A_i^{\mathrm{Yan}}(M')\in E]
+\delta_{\rm fac}.
\]
The additive term is unchanged because the average of the constant \(\delta_{\rm fac}\) is \(\delta_{\rm fac}\). The argument uses no realizability, distribution, or restriction on labels. Applied directly to two adjacent ordered tuples, the same coupling proves the branch's sequence-level fixed-size replacement-DP statement. \(\square\)

### unit_004: lemma

**Lemma (Permutation symmetrization preserves unpadded i.i.d. utility).** \(\label{lem:step-002-symmetrized-utility}\)

Statement: Under Proposition~\ref{prop:step-002-ordered-yan} and Lemma~\ref{lem:step-002-symmetrized-dp}, for every factor \(i\), target \(c_i\in C_i\), distribution \(D_i\) on \(X_i\), and unpadded ordered input
\(Z\sim((D_i)_{c_i})^{q_i}\),
\[
\Pr_{Z,A_i^{\mathrm{Yan}}}\!\left[
R_{D_i}(A_i^{\mathrm{Yan}}(Z),c_i)\le\frac1{64}
\right]
\ge1-\frac1{4096}.
\]
No utility conclusion follows here if any record is padding or if the input is otherwise not a realizable i.i.d. sample from the single factor distribution.

Proof / justification:

Let \(\Pi\) be the wrapper's independent uniform permutation. Since the coordinates of \(Z\) are i.i.d.,
\[
(Z_{\Pi(1)},\ldots,Z_{\Pi(q_i)})
\stackrel{d}{=}(Z_1,\ldots,Z_{q_i}).
\]
Therefore the joint law of the hypothesis returned by the wrapper is exactly the law of \(B_i\) on an ordered i.i.d. factor sample. Proposition~\ref{prop:step-002-ordered-yan} gives the displayed risk and confidence values with no probability loss.

If padding is present, the permuted input still contains padding and need not be i.i.d. or realizable. Exchangeability cannot turn it into a source-eligible PAC input. Accordingly, only Lemma~\ref{lem:step-002-symmetrized-dp}, not this utility lemma, applies to padded data. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-002-endpoint-quota} uses the source's actual parameter \(TD(X_i,(C_i)_{f_i})+1\), rather than blindly substituting into the printed \(\log^*d_i\) expression. It proves the explicit domination
\[
u_i\log^2\frac{u_i}{\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}}
\le
6s_i\log^2\frac{s_i}{\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}}
\]
and shows that one class-independent choice \(K\ge6K_{\rm Yan}\), together with the exact ceiling in `setting.md`, makes every \(q_i\) source-admissible, including \(d_i=1\).

Proposition~\ref{prop:step-002-ordered-yan} then instantiates the source mechanism at exactly \(q_i\) records and exactly the requested factor parameters. Lemma~\ref{lem:step-002-symmetrized-dp} converts it into the order-invariant mechanism denoted \(A_i^{\mathrm{Yan}}\), proves \((\varepsilon/2,\delta/2)\)-DP for every arbitrary size-\(q_i\) labeled dataset under fixed-size replacement adjacency, and makes its law well defined on the routed multiset convention. Lemma~\ref{lem:step-002-symmetrized-utility} proves, without a confidence conversion or residual term, that on every unpadded realizable i.i.d. factor input,
\[
\Pr\!\left[R_{D_i}(A_i^{\mathrm{Yan}}(Z),c_i)\le\frac1{64}\right]
\ge1-\frac1{4096}.
\]
The construction retains Yan's arbitrary improper output and makes no padded-utility assertion. These four named results prove the exact accepted `step_002` row.

## Explicit Rate Audit

- Exposed variables: for each factor, \(d_i,s_i,q_i\), together with global \(\varepsilon,\delta\) through \(\varepsilon_{\rm fac}=\varepsilon/2\) and \(\delta_{\rm fac}=\delta/2\). The fixed exposed accuracy and confidence values are \(\alpha_{\rm fac}=1/64\) and \(\beta_{\rm fac}=1/4096\).
- Hidden constants may depend on: only the universal constant implicit in Yan's pinned v2 theorem/proof, the fixed base convention for ordinary and iterated logarithms, and the displayed fixed numerical factor parameters. The setting's \(K\) is chosen once with \(K\ge6K_{\rm Yan}\).
- Hidden constants may not depend on: \(C,X,i,k,C_i,d_i,s_i,q_i,D_i,c_i,\varepsilon,\delta\), factor cardinality, or any realized dataset.
- Fixed quantities: \(1/64,1/4096\), the factor privacy split by two, and the numerical factors \(48,10,5\) appearing in Yan's theorem.
- Probability mode: pointwise DP for every adjacent fixed-size arbitrary dataset; high-probability utility over one realizable i.i.d. factor sample, the source randomness, and the independent permutation.
- Horizon mode: fixed sample size \(q_i\). There is no asymptotic, all-time, variable-size, or add/remove-adjacency upgrade.
- Norm mode: distributional binary risk \(R_{D_i}(h,c_i)\), exactly the source population error.
- Admissibility conditions and auxiliary tolerances: \(0<\varepsilon\le1/10\), \(0<\delta<1\), VC dimension one, finite \(d_i\), and the four exact factor parameters. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: \(TD(X_i,(C_i)_{f_i})+1\le2^{2(d_i+1)}\), \(1\le u_i\le s_i+1\le3s_i/2\), and
  \[
  u_i\log^2(u_i/\vartheta)
  \le6s_i\log^2(s_i/\vartheta),
  \qquad \vartheta=\varepsilon\delta/16384.
  \]
  Every fixed factor and the ceiling remain visible in the exact formula in Lemma~\ref{lem:step-002-endpoint-quota}.
- Probability conversion: Yan's source-level substitution converts raw failure \((t+2)\beta_{\rm raw}\) to requested \(\beta_{\rm fac}\); the final labeled theorem already states that converted bound. Random permutation preserves the i.i.d. law exactly and causes no further loss.
- Contribution to any Rate Specialization Bridge: this step exports the exact factor quota and mechanism. The deterministic summation and public simplification of \(\sum_iq_i\) remain the assigned obligation of `step_006`.
- Baseline-reduction check, if applicable: when \(k=1\), this is one endpoint-corrected, symmetrized Yan invocation. At \(d_1=1\), \(s_1=2\), while the source parameter remains positive and satisfies \(1\le u_1\le3\); hence the learner does not collapse to a zero-sample claim. Symmetrization changes neither privacy nor i.i.d. utility.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** \(C_i,d_i,s_i,q_i\), \(\alpha_{\rm fac},\beta_{\rm fac},\varepsilon_{\rm fac},\delta_{\rm fac}\), the universal \(K\), and the factor mechanism \(A_i^{\mathrm{Yan}}\) are setting-defined or are the minimal output interface of this step. The only downstream claims are its exact arbitrary-input DP guarantee, exact unpadded i.i.d. utility guarantee, and exact quota.
- **Appendix-local objects.** The source-selected reference \(f_i\), the source parameter \(d_i^{\rm Yan}=TD(X_i,(C_i)_{f_i})+1\), \(u_i=\log^*d_i^{\rm Yan}\), the source constant \(K_{\rm Yan}\), the product \(\vartheta=\varepsilon_{\rm fac}\beta_{\rm fac}\delta_{\rm fac}\), and the ordered mechanism \(B_i\) are appendix-local objects used to prove the wrapper. They are not theorem assumptions or public rate parameters.
- **Proof-local objects.** Input representatives \(z,z'\), permutations \(\Pi,\pi,\sigma\), output events \(E\), and aligned multiset representatives are proof-local coupling objects. They are not exported.
- **Constant provenance.** \(K_{\rm Yan}\) witnesses the universal `O` constant in the pinned source after retaining its actual \(TD+1\) parameter. The setting's \(K\) is chosen universally with \(K\ge6K_{\rm Yan}\); the factor six is proved in Lemma~\ref{lem:step-002-endpoint-quota}. The numbers \(16384,3072,3072e,20480\) are exact substitutions of the four setting-defined factor parameters, not hidden constants. The factor \(3/2\) follows from the accepted \(s_i\ge2\).
- **Assumption provenance.** VC dimension one, finite Littlestone dimension, nonconstancy, and the privacy range are primitive. The endpoint bounds, quota domination, ordered mechanism, multiset invariance, and permutation couplings are derived in this step or supplied by the checked source. The i.i.d.-realizable condition is the input mode of the utility statement, not a theorem-facing assumption used for privacy. No generated event, stability condition, recurrence, or boundedness invariant is assumed.
- **Dataset convention.** The source writes inputs as members of \((\mathcal X\times\{0,1\})^N\) and adjacency as differing in one entry, so its direct convention is an ordered fixed-length tuple with one-coordinate replacement. Lemma~\ref{lem:step-002-symmetrized-dp} proves both sequence-level DP and an order-invariant induced multiset kernel. It does not claim add/remove adjacency or variable-size privacy.
- **Utility convention.** For a factor distribution \(D_i\) and target \(c_i\), \((D_i)_{c_i}\) denotes the law of \((x,c_i(x))\) for \(x\sim D_i\). The utility event is fixed-sample population risk and includes all source and permutation randomness. It is not an empirical-risk or expectation statement.
- **Improper-output boundary.** No projection onto \(C_i\) is performed. Any source-output binary hypothesis allowed by Yan's improper theorem is retained. Later piecewise assembly may therefore consume arbitrary improper factor outputs.
- **Padding boundary.** The mechanism is DP on a padded dataset because privacy holds for every arbitrary fixed-size input. No utility statement is made on such an input. This is an explicit non-output, not a blocker, because the exact target row requires utility only for unpadded realizable i.i.d. data.
- **Survey provenance.** The source-plausibility context in `technical_survey.md` was checked at SHA-256 `c49036d3fbcd971e3d75aeda44d5b0ab9e020321b688e6755d75deabd5bb4ad8`; it was used only to locate the pinned Yan statements. The exact source transcription and all source-to-current-object checks above come from the primary arXiv v2 source, not from the survey summary.
- **Diagnostic boundary.** The paired `global_proof.md` and `global_proof_review.md` have the supplied SHA-256 values `ccba3bca328ff50f6e05c5c7128672b9f8614a4e37b4db612de6fbdeab8a11db` and `9c5d21580fd05168ba48dc661bdb7846741be0fc7475e720ffd109b7cb578c78`, and the review status is `ACCEPTED`. Their step-relevant \(TD+1\) and symmetrization suggestions were used only to locate the hard source checks. Every cited statement, endpoint inequality, privacy coupling, and utility argument above was independently checked or proved here; the global diagnostic is not evidence, a cited result, an assumption source, or authority to alter the target claim.
