# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Restate the actual Alon--Livni--Malliaris--Moran threshold theorem in current notation with constants \(b_*,d_*,N_*\), exact source locator, object mapping, hypothesis discharge plan, source-convention compatibility, and known non-outputs.
- Depends on: `step_001`.
- Assumptions used: No setting technical assumption; cited source hypotheses are discharged by the wrapper antecedents and are later instantiated by downstream steps.
- Technical challenge: Avoid importing a proper-only theorem, unverified constants, or an unidentified hard distribution.
- Intended proof tool or cited result: Alon--Livni--Malliaris--Moran, arXiv:1806.00949v3, Section 2 theorem `thm:main`, together with the PAC and privacy definitions in Section 3.
- Output target: Verified one-block source wrapper.
- Rate objective: R1, preserving the source \(\log_2^*N\), \(\varepsilon\), \(\delta\), fixed-size, and population-risk modes.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance gate is the separate accepted sketch review).

The exact wrapper proved below is the following. There are universal constants

\[
b_*>0,\qquad d_*>0,\qquad N_*\in\mathbb Z_{\ge2}
\]

such that, for every \(N\ge N_*\), every integer \(M\ge8\), every
\(0\le\varepsilon\le0.1\), every

\[
0\le\delta\le \frac{d_*}{M^2\log M},
\]

and every randomized map

\[
B:([N]\times\{0,1\})^M\longrightarrow\{0,1\}^{[N]},
\]

if \(B\) is \((\varepsilon,\delta)\)-differentially private under one-row replacement and, for every \(t\in[N+1]\) and every probability law \(Q\) on \([N]\),

\[
\Pr_{\substack{S\sim(Q^{\tau_t})^M\\g\sim B(S)}}
 \left[R_Q(g,\tau_t)>\frac1{16}\right]
\le \frac1{16},
\tag{W-PAC}
\]

then

\[
M\ge b_*\log_2^*N.
\tag{W-LB}
\]

Here \(Q^{\tau_t}\) is the law of \((X,\tau_t(X))\) for \(X\sim Q\), and
\(R_Q(g,\tau_t)=\Pr_{X\sim Q}[g(X)\ne\tau_t(X)]\). The codomain
\(\{0,1\}^{[N]}\) is unrestricted: \(g\) need not be a threshold, monotone, proper, efficiently represented, or computable.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The one-block objects inherited from the basic setting: the ordered domain \([N]\), the cuts \(\tau_t(x)=\mathbf 1\{x\ge t\}\), arbitrary probability laws \(Q\) on \([N]\), population 0-1 risk, randomized hypotheses in the full function space, and one-row replacement adjacency.
  - The local wrapper parameters \(N\ge2\) and \(M\ge8\). These are antecedent conditions of the cited-result wrapper, not additional assumptions on the final theorem.
- Technical assumptions from `setting.md`: None. In particular, this step does not use `assump:candidate-regime`, `assump:central-dp`, or `assump:distribution-free-realizable-pac`.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_001/proof.md`, unit attempt 1.
  - `proof_steps/step_001/review.md`, whose `Step-Review Status` is `ACCEPTED`.
  - The exact accepted dependency interface is
    \[
    |C_{k,N}|=(N+1)^k,\qquad
    \operatorname{VC}(C_{k,N})=k,\qquad
    \operatorname{LD}(C_{k,N})=k\lfloor\log_2(N+1)\rfloor.
    \]
    Its accepted Lemma~\ref{lem:step-001-cardinality} also certifies that the one-tag cuts are pairwise distinct and that \(t=1\) and \(t=N+1\) are respectively the all-one and all-zero endpoints. Only this endpoint/distinctness certificate is referenced in the convention audit below; none of the three structural dimension formulas supplies or strengthens the ALMM lower bound.
- Derived invariants supplied by accepted dependencies: The exact structural certificate just displayed. It is a sequencing dependency and is not treated as a source theorem assumption.
- Local conditional hypotheses:
  - The generic one-block map \(B\) is \((\varepsilon,\delta)\)-DP in the displayed replacement convention and parameter range.
  - The same \(B\) satisfies (W-PAC) for every \(t\in[N+1]\) and every law \(Q\) on \([N]\).
  - These are exactly the conditional antecedents of the cited-result wrapper in Proposition~\ref{prop:step-002-wrapper}. They are not asserted for the later simulator in this step, are not hidden generated invariants, and are not promoted to primitive assumptions of the branch theorem.

Throughout this step, \(T_N:=\{\tau_t:t\in[N+1]\}\) denotes the complete one-block branch threshold class. The notation \(Q^{\tau_t}\) and \(R_Q\) has the meaning fixed explicitly in `## Target Step Claim`.

Downstream discharge plan:

- `step_003` uses the contrapositive of Proposition~\ref{prop:step-002-wrapper}; it, not this step, converts failure of (W-PAC) into an expected-risk gap.
- `step_005` will choose the public constants and prove \(N\ge N_*\), \(M\ge8\), \(M<b_*\log_2^*N\), \(\varepsilon\le0.1\), and the displayed \(\delta\)-cap in the contradiction regime.
- `step_012` will prove that the generated one-block simulator is private in exactly the replacement convention used here.
- No hard instance, hard prior, simulator, or product conclusion is assumed or generated in this step.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the checked ALMM v3 theorem, its PAC/privacy definitions, and its active proof-scale constants, there are universal \(b_0,d_0>0\) and \(N_0\ge2\) giving a fixed-constant threshold lower bound at exact sample size \(M\ge8\), with branch-base \(\log_2^*N\) and privacy cap \(d_0/(M^2\log M)\). | Extracts honest universal constants from the source's \(\Omega/O\) notation without inventing numerical lower-bound constants. |
| `unit_002` | lemma | Under the primitive one-block definitions and the accepted endpoint certificate from Lemma~\ref{lem:step-001-cardinality}, order and label transport between the ALMM \(\{\pm1\}\)-valued threshold problem and \(([N],\{0,1\},T_N)\) preserves arbitrary randomized outputs, exact iid sample size, population risk, realizable PAC quantifiers, and one-entry replacement adjacency, including both endpoint cuts. | Gives the exact current-object map and rules out a proper-only, empirical-risk, or interior-threshold substitution. |
| `unit_003` | lemma | For fixed \(M\ge8\), if \(0\le\varepsilon\le0.1\) and \(0\le\delta\le d_0/(M^2\log M)\), every \((\varepsilon,\delta)\)-DP kernel is also \((0.1,d_0/(M^2\log M))\)-DP. | Discharges smaller-privacy and \(M=8\) boundary cases without composition or a hidden loss. |
| `unit_004` | proposition | Under Lemmas~\ref{lem:step-002-almm-constants}, \ref{lem:step-002-transport}, and \ref{lem:step-002-privacy-monotonicity}, every current-notation learner satisfying the displayed wrapper antecedents obeys \(M\ge b_*\log_2^*N\). | Assembles the exact source wrapper exported to `step_003` and `step_005`. |

Atomic step = no. Fixed-constant extraction, convention transport, privacy monotonicity, and final theorem instantiation are independent audit obligations.

## Cited Result Applications

### Primary source identity and inspected locations

The primary source was inspected directly from the source package at the stable locator
`https://export.arxiv.org/e-print/1806.00949v3`:

- Noga Alon, Roi Livni, Maryanthe Malliaris, and Shay Moran, *Private PAC learning implies finite Littlestone dimension*, arXiv:1806.00949v3.
- Source file: `ADP.tex`.
- Main result: Section `sec:mainresult`, theorem titled *Thresholds are not privately learnable*, label `thm:main`.
- PAC interface: Section `sec:pre`, subsection *PAC learning*, immediately before the Littlestone-dimension paragraph.
- Privacy interface: Section `sec:pre`, subsection *Privacy*, Definition `def:private`.
- Fixed proof scale: the active proof of `thm:main` in Section `sec:thresholds`, including the PAC-to-empirical reduction `lem:bun` and the explicit cap in `lem:lbhomog`.

The checked cited interfaces are as follows.

| Cited result | Restatement in source/current-neutral notation | Required source hypotheses | Hypothesis discharge and conclusion used |
| ------------ | --------------------------------------------- | -------------------------- | ---------------------------------------- |
| ALMM v3 `thm:main` | If \(X\subset\mathbb R\) has \(|X|=N\), a possibly randomized learner for thresholds on \(X\) is \((1/16,1/16)\)-accurate with sample complexity \(M\), and is \((0.1,\delta)\)-DP with \(\delta=O(1/(M^2\log M))\), then \(M=\Omega(\log^*N)\). | A single algorithm must learn every threshold-realizable distribution; the sample is exactly \(M\) iid examples; accuracy is population 0-1 loss; privacy is one-example replacement; \(\varepsilon=0.1\); the privacy constant is universal. | Lemma~\ref{lem:step-002-almm-constants} unpacks the asymptotic constants. Lemma~\ref{lem:step-002-transport} maps all objects and hypotheses exactly. Lemma~\ref{lem:step-002-privacy-monotonicity} promotes stronger privacy to the source parameters. The only conclusion used is the sample lower bound. |
| ALMM v3 PAC definition | A learning algorithm is a possibly randomized map from samples to hypotheses. It is \((\alpha,\beta)\)-accurate with sample complexity \(M\) if, for every distribution \(D\) realizable by the target class, \(\Pr_{S\sim D^M,h\sim A(S)}[L_D(h)>\alpha]\le\beta\). | Realizability, exact iid size \(M\), and population loss \(L_D\). The definition imposes no properness or computational restriction, and its ambient hypothesis space is all \(\{\pm1\}\)-valued functions. | For \(D=Q^{\tau_t}\), (W-PAC) is exactly this condition after label/order transport. Conversely, every realizable finite-domain threshold law has this form using its feature marginal \(Q\). |
| ALMM v3 `def:private` | A randomized map \(A:(X\times\{\pm1\})^M\to\{\pm1\}^X\) is \((\varepsilon,\delta)\)-DP when output laws on samples that disagree in one example are two-sided \((\varepsilon,\delta)\)-indistinguishable for every event. | Fixed size \(M\), replacement of one entire labeled example, and arbitrary output events. | The rowwise order/label bijection preserves exactly the changed row. Quantification over ordered adjacent pairs in the branch definition gives both source inequalities. No add/remove conversion is used. |
| ALMM v3 `lem:bun` and active `thm:main` proof scale | For \(\varepsilon<1\), a private \((\alpha,\beta)\)-PAC learner of size \(M\) yields a private empirical learner of size at most \(9M\) with the same accuracy/privacy parameters. The active lower-bound engine uses the absolute cap \(1/(10^3m^2\log m)\) at its empirical size \(m\). | \(\varepsilon=0.1<1\); only a constant-factor size increase. | This supplies a concrete positive source for \(d_0\). For \(M\ge8\), shrinking the input cap by a universal factor makes it no larger than the active empirical cap even at size \(9M\); the calculation is in Lemma~\ref{lem:step-002-almm-constants}. |

### Source convention and non-output boundary

The source's active proof uses increasing balanced threshold samples with negative labels before the cut and positive labels after it. Thus its order convention agrees with \(\tau_t(x)=\mathbf 1\{x\ge t\}\) after \(-1\mapsto0\), \(+1\mapsto1\). If the threshold convention is rendered with the opposite orientation, reversing the finite order or complementing every label is a bijective isometry; Lemma~\ref{lem:step-002-transport} proves the needed interface rather than relying on the typography of the convention.

`thm:main` does **not** output any of the following:

- a particular hard threshold \(t\) or feature law \(Q\);
- a learner-independent hard prior or a finite-support prior;
- an expected-loss lower bound;
- a minimax theorem or a quantifier swap;
- a tensorized/product lower bound, hidden-coordinate decoder, or exchangeability identity;
- an overflow estimate, simulator, input-to-simulation coupling, or product privacy certificate;
- numerical values of the final \(b_*,d_*,N_*\).

Only the fixed-size, high-probability threshold sample lower bound is imported. All listed non-outputs remain obligations of later accepted sketch steps.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-002-almm-constants} | Universal \(b_0,d_0,N_0\) make the ALMM theorem a fixed current-base inequality with a displayed privacy cap for \(M\ge8\). | Direct source inspection and quantifier extraction; no branch technical assumption. | Supplies constants to Proposition~\ref{prop:step-002-wrapper}. |
| Lemma~\ref{lem:step-002-transport} | The current learner transports to a legal unrestricted ALMM learner with identical risk, PAC, size, and adjacency interfaces. | Primitive definitions and the accepted endpoint certificate. | Supplies source-convention compatibility to Proposition~\ref{prop:step-002-wrapper}. |
| Lemma~\ref{lem:step-002-privacy-monotonicity} | Smaller \(\varepsilon,\delta\) imply the source privacy parameters at the same \(M\). | Direct eventwise inequality; \(M\ge8\) makes the cap finite and positive. | Supplies privacy hypothesis discharge to Proposition~\ref{prop:step-002-wrapper}. |
| Proposition~\ref{prop:step-002-wrapper} | (W-PAC) and current replacement privacy imply (W-LB), with unrestricted output and all convention/boundary clauses preserved. | The three preceding lemmas. | Exact target-step export. |

## Local Derivation

### unit_001: lemma

**Lemma (Fixed-constant form of the ALMM v3 threshold theorem).**
\(\label{lem:step-002-almm-constants}\)
Under the checked statement of ALMM v3 `thm:main`, its PAC/privacy definitions, and the fixed proof scale in its active proof, there exist universal constants

\[
b_0>0,\qquad d_0>0,\qquad N_0\in\mathbb Z_{\ge2}
\]

such that, for every finite ordered real domain \(X\) with \(|X|=N\ge N_0\), every integer \(M\ge8\), and every possibly randomized, possibly improper threshold learner on \(X\) that is \((1/16,1/16)\)-accurate in the source PAC sense and

\[
\left(0.1,\frac{d_0}{M^2\log M}\right)
\text{-differentially private},
\]

one has

\[
M\ge b_0\log_2^*N.
\]

**Proof / justification.**
The source theorem states

\[
M=\Omega(\log^*N)
\quad\text{under}\quad
\varepsilon=0.1,\qquad
\delta=O\!\left(\frac1{M^2\log M}\right).
\tag{1}
\]

The constants in both asymptotic symbols are absolute: the theorem fixes the accuracy and privacy constants before quantifying over the domain and learner. This is also visible in the active proof. Its private homogeneous-set lemma uses the explicit empirical-size cap

\[
\delta\le \frac1{10^3m^2\log m},
\tag{2}
\]

and `lem:bun` increases the original PAC sample size by at most the absolute factor nine while preserving accuracy and privacy.

For completeness, the factor-nine change does not leave an unverified denominator. The function

\[
x\longmapsto \frac{\log x}{\log(9x)}
\]

is increasing for \(x>1\), because its derivative is

\[
\frac{\log 9}{x(\log(9x))^2}>0.
\]

Hence, for every \(M\ge8\),

\[
\frac{\log M}{\log(9M)}
\ge \frac{\log8}{\log72}.
\tag{3}
\]

Choose \(d_0\) no larger than the fixed privacy constant represented by the
\(O(\cdot)\) in (1), and shrink it further, if needed, so that

\[
0<d_0\le \frac{\log8}{81000\log72}\,.
\tag{4}
\]

Then it obeys

\[
\frac{d_0}{M^2\log M}
\le
\frac1{10^3(9M)^2\log(9M)}.
\tag{5}
\]

If the empirical reduction uses a size \(m\le9M\), then \(m^2\log m\le(9M)^2\log(9M)\), so (5) also implies (2) at that actual size. Thus the source proof exhibits a strictly positive universal privacy constant after its own constant-factor reduction; (4) is only a conservative witness and is not claimed as a numerical constant printed by `thm:main`.

Unpacking the \(\Omega\)-conclusion in (1) gives an absolute lower-bound constant and a finite domain threshold. The source's unadorned iterated-log convention and the branch's base-two convention differ by at most an absolute additive number of iterations: for some universal \(K_{\rm base}\),

\[
\log^*_{\rm source}N
\ge \log_2^*N-K_{\rm base}.
\tag{6}
\]

This is the standard fixed-base comparison: multiplying a logarithm by the fixed base-change constant can require only a fixed number of additional iterates before entering \((0,1]\). Increase the finite domain threshold so that

\[
\log_2^*N\ge2K_{\rm base}
\]

throughout the retained regime. Then (6) is at least \(\frac12\log_2^*N\), and halving the source lower-bound constant gives a universal \(b_0>0\). Absorb every finite exceptional domain and every fixed source convention into one integer \(N_0\ge2\). This proves the displayed fixed-constant form for all \(M\ge8\). No value of \(b_0\) or \(N_0\) beyond existence is asserted. \(\square\)

### unit_002: lemma

**Lemma (Exact order, label, PAC, output, and adjacency transport).**
\(\label{lem:step-002-transport}\)
Under the primitive one-block definitions with \(N\ge2\), and consistently with the accepted endpoint/distinctness certificate in Lemma~\ref{lem:step-001-cardinality}, let

\[
B:([N]\times\{0,1\})^M\longrightarrow\{0,1\}^{[N]}
\]

be any randomized map. There is a rowwise bijective transport to a possibly randomized, unrestricted ALMM learner

\[
\widetilde B:(X\times\{-1,+1\})^M
\longrightarrow\{-1,+1\}^{X}
\]

on an \(N\)-point ordered real set \(X\) such that:

1. all increasing thresholds, including the all-positive and all-negative endpoint restrictions, correspond to \(\{\tau_t:t\in[N+1]\}\);
2. every arbitrary output of \(B\) corresponds bijectively to an arbitrary output of \(\widetilde B\), with no properness or monotonicity imposed;
3. for every \(t,Q\), the labeled sample laws are exact iid products of the same fixed size \(M\), and population 0-1 risks agree pointwise;
4. two input datasets differ in one labeled row by replacement before transport if and only if their images do so after transport; and
5. (W-PAC) for every \(t,Q\) is exactly the ALMM realizable PAC premise for \(\widetilde B\).

The same conclusions hold if a presentation of the source reverses the threshold orientation, after reversing the order or complementing all labels.

**Proof / justification.**
Choose any increasing real sequence

\[
x_1<x_2<\cdots<x_N
\]

and put \(X=\{x_1,\ldots,x_N\}\). Let \(\phi:[N]\to X\) be the order bijection \(\phi(j)=x_j\), and let

\[
\lambda(-1)=0,\qquad \lambda(+1)=1.
\]

For the increasing source threshold with cut index \(t\), write

\[
s_t(x_j)=
\begin{cases}
-1,&j<t,\\
+1,&j\ge t.
\end{cases}
\]

Then, for every \(j\in[N]\) and \(t\in[N+1]\),

\[
\lambda(s_t(\phi(j)))=\mathbf1\{j\ge t\}=\tau_t(j).
\tag{7}
\]

The endpoint \(t=1\) is all positive/all one, and \(t=N+1\) is all negative/all zero. They are restrictions of real half-line thresholds with the cut at or below \(x_1\), respectively above \(x_N\). Lemma~\ref{lem:step-001-cardinality} independently certifies that these are legal, distinct branch members. Even under a convention that lists only interior cut representatives, that source family is a subclass of the branch family, so a learner satisfying (W-PAC) still meets every source target requirement.

Transport a source labeled row by

\[
(x_j,y)\longmapsto(j,\lambda(y)).
\tag{8}
\]

For a source sample \(S\), apply (8) row by row to obtain \(S^{\flat}\), run \(B(S^{\flat})\), and define

\[
\widetilde B(S)(x_j)
=\lambda^{-1}\!\left(B(S^{\flat})(j)\right).
\tag{9}
\]

Equation (9) is defined for every branch output, including constant, oscillating, and nonmonotone functions. It transports the internal randomness unchanged and uses no projection onto the target class.

Let \(Q\) be a probability law on \([N]\), and let \(\widetilde Q=\phi_{\#}Q\) be its pushforward to \(X\). For every deterministic branch output \(g\), with transported source output \(\widetilde g(x_j)=\lambda^{-1}(g(j))\), (7) gives

\[
\begin{aligned}
L_{\widetilde Q^{s_t}}(\widetilde g)
&=\Pr_{J\sim Q}
   [\widetilde g(x_J)\ne s_t(x_J)]\\
&=\Pr_{J\sim Q}[g(J)\ne\tau_t(J)]\\
&=R_Q(g,\tau_t).
\end{aligned}
\tag{10}
\]

The row transport is deterministic and coordinatewise, so

\[
S\sim(\widetilde Q^{s_t})^M
\quad\Longleftrightarrow\quad
S^{\flat}\sim(Q^{\tau_t})^M.
\tag{11}
\]

There is no random or expected sample-size substitution. Every distribution on labeled source examples realizable by a threshold equals \(\widetilde Q^{s_t}\) for its feature marginal \(\widetilde Q\) and its realizing cut (up to changes on zero-mass points). Thus (10)--(11), including the learner's unchanged randomness, identify (W-PAC) with the source PAC premise for every realizable threshold distribution.

Finally, (8) is a bijection on individual labeled rows and is applied without mixing row indices. Consequently two length-\(M\) samples are equal or differ at exactly one row before transport exactly when the corresponding samples are equal or differ at that same row afterward. Output relabeling in (9) is bijective postprocessing. Hence the replacement-DP event inequalities are identical under the event bijection. The source's two-sided indistinguishability is equivalent to the branch's one-sided display quantified over all ordered adjacent pairs, because adjacency is symmetric.

If a threshold convention uses positive labels below the cut, either replace \(\lambda\) by the complemented label bijection or replace \(\phi(j)\) by the order-reversing bijection \(x_{N+1-j}\). These are still rowwise bijections, so (10)--(11) and adjacency preservation remain exact. \(\square\)

### unit_003: lemma

**Lemma (Privacy monotonicity at the source cap).**
\(\label{lem:step-002-privacy-monotonicity}\)
Under the fixed-size replacement convention, let \(M\ge8\), \(d_0>0\),
\(0\le\varepsilon\le0.1\), and

\[
0\le\delta\le\frac{d_0}{M^2\log M}.
\]

If a randomized kernel is \((\varepsilon,\delta)\)-differentially private, then it is also

\[
\left(0.1,\frac{d_0}{M^2\log M}\right)
\text{-differentially private}.
\]

This conclusion includes \(M=8\), \(\varepsilon<0.1\), \(\delta\) strictly below the cap, and \(\delta=0\).

**Proof / justification.**
For adjacent datasets \(S,S'\) and every output event \(E\), privacy gives

\[
\Pr[B(S)\in E]
\le e^{\varepsilon}\Pr[B(S')\in E]+\delta.
\]

Since the event probability is nonnegative, \(e^{\varepsilon}\le e^{0.1}\), and
\(\delta\le d_0/(M^2\log M)\),

\[
\Pr[B(S)\in E]
\le e^{0.1}\Pr[B(S')\in E]
   +\frac{d_0}{M^2\log M}.
\tag{12}
\]

Swapping \(S,S'\) gives the reverse source inequality. There is one application of privacy at the same sample size; no group privacy, composition, subsampling, or adjacency conversion occurs. At \(M=8\), \(M^2\log M=64\log8>0\), so the cap in (12) is finite and positive. Decreasing either privacy parameter only strengthens (12). \(\square\)

### unit_004: proposition

**Proposition (Current-notation unrestricted ALMM threshold wrapper).**
\(\label{prop:step-002-wrapper}\)
Under Lemmas~\ref{lem:step-002-almm-constants},
\ref{lem:step-002-transport}, and
\ref{lem:step-002-privacy-monotonicity}, there are universal
\(b_*,d_*>0\) and \(N_*\ge2\) such that, for every \(N\ge N_*\), integer \(M\ge8\),
\(0\le\varepsilon\le0.1\), and
\(0\le\delta\le d_*/(M^2\log M)\), every randomized unrestricted map

\[
B:([N]\times\{0,1\})^M\to\{0,1\}^{[N]}
\]

that is \((\varepsilon,\delta)\)-DP under one-row replacement and satisfies (W-PAC) for every \(t\in[N+1]\) and every law \(Q\) on \([N]\) must satisfy (W-LB):

\[
M\ge b_*\log_2^*N.
\]

**Proof / justification.**
Take

\[
b_*=b_0,\qquad d_*=d_0,\qquad N_*=N_0
\]

from Lemma~\ref{lem:step-002-almm-constants}. Lemma~\ref{lem:step-002-privacy-monotonicity} promotes the stated privacy guarantee to

\[
\left(0.1,\frac{d_0}{M^2\log M}\right)\text{-DP}.
\]

Apply the exact row/order/label transport of Lemma~\ref{lem:step-002-transport}. It produces a possibly randomized source learner whose output ranges over all \(\{\pm1\}\)-valued functions, whose input consists of exactly \(M\) iid labeled examples, whose loss is the identical population 0-1 risk, and whose adjacency/privacy guarantee is the identical one-entry replacement guarantee. By (W-PAC) and (10)--(11), this transported learner is \((1/16,1/16)\)-accurate for every source threshold-realizable distribution. All hypotheses of Lemma~\ref{lem:step-002-almm-constants} are therefore discharged, so

\[
M\ge b_0\log_2^*N=b_*\log_2^*N.
\]

The proof does not select a hard instance and does not assert expected-risk hardness. Those are conclusions of later contrapositive and minimax steps, not outputs of this proposition. \(\square\)

## Target-Step Assembly

The accepted dependency `step_001` supplies an exact structural certificate for the branch and, through Lemma~\ref{lem:step-001-cardinality}, confirms that the two endpoint cuts are distinct legal members. The ALMM lower-bound mechanism is not inferred from those structural formulas.

Direct inspection of ALMM v3 `thm:main`, its PAC definition, `def:private`, and its active proof gives Lemma~\ref{lem:step-002-almm-constants}: universal fixed constants exist, the source learner is randomized and possibly improper, the sample size is exact and iid, the metric is population 0-1 loss, and privacy uses one labeled-example replacement. The explicit source proof scale and the displayed calculation (3)--(5) provide a positive universal \(d_0\) even after the source's factor-nine PAC-to-empirical reduction; the source \(\Omega\)-constant and fixed-base comparison provide universal \(b_0,N_0\).

Lemma~\ref{lem:step-002-transport} maps the source order, labels, samples, distributions, arbitrary outputs, risks, and adjacency relation bijectively to the current \([N]\), \(\{0,1\}\), \(\tau_t\) convention. It handles \(t=1,N+1\) explicitly and shows that an opposite source orientation is an isometric relabeling, not a changed theorem. Lemma~\ref{lem:step-002-privacy-monotonicity} proves that every smaller \(\varepsilon\) or \(\delta\), including the \(M=8\) boundary, meets the fixed source cap at the identical sample size.

Proposition~\ref{prop:step-002-wrapper} composes exactly those three checked interfaces and proves the wrapper stated in `## Target Step Claim`. Its only exported mathematical content is the unrestricted one-block implication (W-PAC) \(\Rightarrow\) (W-LB) with existential universal \(b_*,d_*,N_*\). The source identity, object map, hypothesis discharge plan, convention compatibility, endpoints, privacy monotonicity, and non-output boundary are all explicit. No downstream minimax, expected-loss, product, simulator, or fixed-hard-instance conclusion is proved here.

## Explicit Rate Audit

- Exposed variables: \(N,M,\varepsilon,\delta\), the fixed accuracy/confidence pair \((1/16,1/16)\), and \(\log_2^*N\).
- Hidden constants may depend on: Only the absolute constants in ALMM v3 `thm:main`, its active fixed proof scale, the constant-factor `lem:bun` reduction, and the fixed log-base/endpoint convention translation.
- Hidden constants may not depend on: \(k,n,N,M,\varepsilon,\delta\), the learner, a target threshold, a distribution, any later hard prior, or any simulator randomness.
- Fixed quantities: Source version v3; privacy target \(0.1\); accuracy and failure \(1/16\); binary label and finite-order conventions.
- Probability mode: High-probability PAC failure probability over exactly \(M\) iid examples and learner randomness. No expectation conversion is performed.
- Horizon mode: Fixed-size and pointwise in \(M\); no expected size, stopping time, asymptotic-in-\(M\), composition horizon, or all-time statement.
- Norm mode: Population 0-1 risk \(R_Q(g,\tau_t)\), exactly equal to the source \(L_D\).
- Admissibility conditions and auxiliary tolerances: \(N\ge N_*\), integer \(M\ge8\), \(0\le\varepsilon\le0.1\), and \(0\le\delta\le d_*/(M^2\log M)\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: The only absorptions are explicit: (3)--(5) absorb the source's factor-nine reduction into \(d_*\), and (6) followed by \(\log_2^*N\ge2K_{\rm base}\) absorbs the fixed iterated-log convention into \(b_*,N_*\).
- Probability conversion: None. The later failure-probability-to-expectation conversion belongs to `step_003`.
- Contribution to any Rate Specialization Bridge: This step exports the R1 source wrapper. `step_005` will specialize the candidate parameters to this interface; no public theorem rate is simplified here.
- Baseline-reduction check: The imported baseline is precisely the unrestricted, randomized, improper ALMM threshold lower bound. The transport does not project outputs, change population risk to empirical risk, or change fixed iid size. Both constant endpoint thresholds remain legal. At \(M=8\), the denominator is positive and the same implication applies; for smaller privacy parameters, (12) loses nothing.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: The minimal exported interface consists of the existential universal constants \(b_*,d_*,N_*\) and Proposition~\ref{prop:step-002-wrapper}. They are source-derived and are the only objects consumed by `step_003` and `step_005`.
- `Appendix-local`: The one-block learner \(B\), sample budget \(M\), class \(T_N=\{\tau_t:t\in[N+1]\}\), labeled law \(Q^{\tau_t}\), and risk \(R_Q\). Each is an exact specialization of the basic setting, introduced only to state the one-block wrapper.
- `Proof-local`: The ordered source set \(X=\{x_1<\cdots<x_N\}\), order bijection \(\phi\), label bijection \(\lambda\), source thresholds \(s_t\), transported learner \(\widetilde B\), source log-star convention, and \(K_{\rm base}\). Each is derived from a checked source object or a deterministic bijection and is eliminated before export.
- Constant provenance: \(0.1\) and \(1/16\) are printed in `thm:main`; the empirical cap \(1/(10^3m^2\log m)\) and factor nine are printed in the active source proof and `lem:bun`; \(d_0\) is a conservative fixed shrinkage justified by (3)--(5); \(b_0,N_0\) unpack the source \(\Omega\)-statement and fixed-base comparison. The exported \(b_*,d_*,N_*\) are exactly \(b_0,d_0,N_0\), with no candidate-dependent choice.
- Assumption provenance: No theorem-facing setting assumption is consumed. Wrapper parameter ranges and (W-PAC)/privacy are explicit local theorem antecedents. Endpoint membership is supplied by the primitive definitions and confirmed by the accepted dependency. All transport identities and privacy monotonicity are proved in this step; no generated event, stability condition, recurrence, or invariant is assumed.
- Accepted dependency discipline: `step_001` and its accepted review were read before this proof. Their exact structural interface is recorded above. The current lower-bound conclusion comes only from the independently checked ALMM source, so the dependency is neither ignored nor used as circular lower-bound evidence.
- Known non-outputs: The source supplies no hard \((t,Q)\), prior, expected-risk gap, minimax object, tensorization, restriction decoder, exchangeability identity, overflow control, simulator, coupling, product lower bound, or numerical values for the exported constants.
- Diagnostic boundary: The paired `global_proof.md` and `global_proof_review.md` were used only after confirming `Global-Proof Review Status = ACCEPTED`. Their step-relevant checklist of source scope, convention mapping, and non-outputs guided the audit plan. The primary source was then inspected independently, and every assertion used above is restated and checked here. The diagnostic is not proof evidence, a cited result, an assumption source, or authority to alter the target claim.
