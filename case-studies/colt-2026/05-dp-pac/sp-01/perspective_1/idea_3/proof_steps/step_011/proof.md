# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For \(L_i\sim\operatorname{Bin}(n,\pi_i)\) and
  \[
  m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\},
  \]
  prove uniformly
  \[
  \Pr[L_i>m_{n,i}]
  \le \eta_0:=e^7(2/9)^9<\frac3{2048},
  \]
  with probability zero at \(\pi_i=0\) and at \(k=1\).
- Depends on: `step_009`.
- Assumptions used: Derived: exact candidate weights and budgets.
- Technical challenge: Obtain a uniform constant through the small/large mean transition, including integer rounding, without union bounding over factors.
- Intended proof tool or cited result: Exact binomial mgf/Chernoff optimization; derivative check at \(\mu=2\).
- Output target: Overflow residual certificate.
- Rate objective: Candidate lower objective: explicit \(n,\pi_i,m_{n,i}\), deterministic universal \(\eta_0\), fixed candidate/risk scale.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(1\le k<\infty\), used only to interpret the factor index and the one-factor specialization.
  - Assumption~\ref{assump:vc-one-factors}: the setting-defined values \(s_i\) are positive, so \(M=\sum_j s_j>0\) and the exact weights are well-defined. No dimension inequality is used in the probability calculation.
  - The setting fixes one candidate \(n\in\mathbb N\). No privacy, delta-budget, measurability, support, or balance condition is used in this step.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-009-low-mass} and the `step_009` proof/review pair, with SHA-256
    `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` /
    `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`,
    records at the same fixed candidate
    \[
    \pi_i:=\omega_i=\frac{s_i}{M},
    \qquad \sum_{i=1}^k\pi_i=1,
    \qquad
    m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}.
    \tag{1}
    \]
    Its review status is `ACCEPTED`. Its additional outputs \(H\), \(w_L\), and the ALMM eligibility inequalities are available in the lower-chain scope but are not used here.
- Local conditional hypotheses: None. The local binomial lemmas are proved for every \(n\in\mathbb N\) and every parameter in \([0,1]\), and are then instantiated with (1).

The overflow event is generated and controlled below; it is not assumed. The accepted dependency's fixed-candidate scope is preserved, and no simultaneous event across factors is introduced.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | For \(n\in\mathbb N\), \(0<p\le1\), \(L\sim\operatorname{Bin}(n,p)\), \(\mu=np\), and every real \(t>\mu\), prove \(\Pr(L\ge t)\le B(\mu,t):=\exp\{t-\mu-t\log(t/\mu)\}\); also prove that \(B(\mu,t)\) increases in \(\mu\in(0,t)\) for fixed \(t\) and decreases in \(t>\mu\) for fixed \(\mu\). | Supplies the self-contained optimized binomial upper-tail envelope and the monotonicity used at the small-mean endpoint. |
| `unit_002` | lemma | With no additional assumptions, prove exactly \(\eta_0=e^7(2/9)^9<3/2048\), and as an auxiliary exact consequence prove \(\log4>1\). | Supplies the strict rational slack and the elementary logarithmic inequality used in the large-mean derivative check. |
| `unit_003` | lemma | Under Lemma~\ref{lem:step-011-binomial-envelope}, if \(0<\mu=np\le2\) and \(m=\max\{8,\lceil4\mu\rceil\}\), prove \(\Pr(L>m)\le\eta_0\), including the finite-support case \(n\le8\) and equality at \(\mu=2\). | Controls the floor-eight/small-mean regime with the exact endpoint constant. |
| `unit_004` | lemma | Under Lemmas~\ref{lem:step-011-binomial-envelope} and \ref{lem:step-011-numerical-slack}, if \(\mu=np\ge2\) and \(m=\max\{8,\lceil4\mu\rceil\}\), prove \(\Pr(L>m)\le\eta_0\), including the strict event, ceiling rounding, finite binomial support, and the transition value \(\mu=2\). | Controls the factor-four/large-mean regime by an explicit negative derivative. |
| `unit_005` | lemma | For every \(n\in\mathbb N\), \(p\in[0,1]\), \(L\sim\operatorname{Bin}(n,p)\), and \(m=\max\{8,\lceil4np\rceil\}\), prove overflow has probability zero whenever \(n\le8\), \(p=0\), or \(p=1\); under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and the accepted interface (1), deduce exact zero overflow at \(k=1\). | Covers finite-support and degenerate endpoints exactly and preserves the one-factor zero-overflow baseline. |

Atomic step = no. The MGF envelope, exact numerical comparison, two mean regimes, and support/endpoint cases are independent audit obligations.

## Cited Result Applications

No external paper result is used. The only dependency and elementary probability tool used later are restated here in current notation.

| Result | Restated statement and instantiated objects | Required assumptions and discharge | Conclusion used |
| ------ | ------------------------------------------- | ---------------------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-009-low-mass} and the setting-defined budget | At the same fixed lower candidate, the accepted lemma fixes \(\pi_i=\omega_i=s_i/M\) and \(\sum_i\pi_i=1\); the setting and accepted dependency use \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\). | Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and the accepted lower-chain scope; discharged by the hash-matched accepted proof/review pair listed above. | Identifies the binomial parameter and threshold and gives \(\pi_1=1\) when \(k=1\). No low-mass or eligibility conclusion is used. |
| Exponential Markov inequality | For \(\lambda>0\), a finite-valued random variable \(L\), and real \(t\), \(\Pr(L\ge t)\le e^{-\lambda t}\mathbb E e^{\lambda L}\). | Here \(0\le L\le n\), so \(e^{\lambda L}\) is nonnegative and integrable. The inequality is restated and applied explicitly in Lemma~\ref{lem:step-011-binomial-envelope}. | Converts the exact binomial MGF into an optimizable upper-tail bound. |
| Exponential and geometric series | \(e=\sum_{j=0}^{\infty}1/j!\), and \(\sum_{\ell=0}^{\infty}r^\ell=1/(1-r)\) for \(0\le r<1\). | Instantiated at \(r=1/7\); both series converge absolutely, and the factorial tail is dominated term by term in (9). | Gives the rational upper bound \(e<87/32\) in Lemma~\ref{lem:step-011-numerical-slack}. |
| Elementary derivative monotonicity rule | A differentiable real function with positive derivative on an interval is strictly increasing there, and one with negative derivative is strictly decreasing there. | Applied only to the explicitly differentiable log-envelopes in (6)-(7) and (21)-(23); their domains are positive open intervals. | Converts the displayed derivative signs into the monotonicity used by the two mean regimes. |
| Lemma~\ref{lem:step-011-binomial-envelope} | For \(0<p\le1\), \(\mu=np\), and \(t>\mu\), \(\Pr(L\ge t)\le B(\mu,t)\), with the stated monotonicities in \(\mu\) and \(t\). | Proved from the exact binomial MGF and exponential Markov in `unit_001`; no asymptotic or support extension is used. | Used by Lemmas~\ref{lem:step-011-small-mean} and \ref{lem:step-011-large-mean}. |
| Lemma~\ref{lem:step-011-numerical-slack} | \(\eta_0=e^7(2/9)^9<3/2048\) and \(\log4>1\). | Proved by the exponential series, a rational geometric-tail bound, exact integer comparison, and monotonicity of the natural logarithm in `unit_002`. | Supplies the strict target constant and makes the large-mean derivative uniformly negative. |
| Lemma~\ref{lem:step-011-small-mean} | If \(0<np\le2\), the strict overflow event above \(\max\{8,\lceil4np\rceil\}\) has probability at most \(\eta_0\). | Lemma~\ref{lem:step-011-binomial-envelope} and direct integer-threshold arithmetic; proved in `unit_003`. | Covers the small-mean side of the final case split. |
| Lemma~\ref{lem:step-011-large-mean} | If \(np\ge2\), the same strict overflow event has probability at most \(\eta_0\). | Lemmas~\ref{lem:step-011-binomial-envelope} and \ref{lem:step-011-numerical-slack}, direct ceiling arithmetic, and the displayed derivative; proved in `unit_004`. | Covers the large-mean side of the final case split. |
| Lemma~\ref{lem:step-011-zero-overflow} | At \(n\le8\), \(p=0\), or \(p=1\), overflow is impossible; under (1), \(k=1\) implies \(p=\pi_1=1\). | Finite support \(L\in\{0,\ldots,n\}\), the two degenerate binomial laws, and (1); proved in `unit_005`. | Supplies the requested zero-probability boundaries and the exact one-factor baseline. |

## Local Derivation

### unit_001: lemma

**Lemma (Optimized binomial exponential envelope).** \(\label{lem:step-011-binomial-envelope}\)

Statement:
Let \(n\in\mathbb N\), \(0<p\le1\), \(L\sim\operatorname{Bin}(n,p)\), and \(\mu=np\). For every real \(t>\mu\),
\[
\Pr(L\ge t)
\le B(\mu,t)
:=\exp\left\{t-\mu-t\log\frac{t}{\mu}\right\}
=e^{-\mu}\left(\frac{e\mu}{t}\right)^t.
\tag{2}
\]
For fixed \(t>0\), \(B(\mu,t)\) is strictly increasing for \(0<\mu<t\). For fixed \(\mu>0\), it is strictly decreasing for \(t>\mu\). If \(t>n\), the left side of (2) is exactly zero because the binomial support is \(\{0,\ldots,n\}\).

Proof / justification:
For every \(\lambda>0\), exponential Markov gives
\[
\Pr(L\ge t)
\le e^{-\lambda t}\mathbb E e^{\lambda L}.
\tag{3}
\]
The exact binomial MGF and the elementary inequality \(1+u\le e^u\) for \(u\ge0\) yield
\[
\mathbb E e^{\lambda L}
=(1-p+pe^\lambda)^n
=\bigl(1+p(e^\lambda-1)\bigr)^n
\le \exp\{\mu(e^\lambda-1)\}.
\tag{4}
\]
For completeness, \(1+u\le e^u\) follows because
\(e^u-1-u\) vanishes at zero and has derivative \(e^u-1\ge0\) on \([0,\infty)\).

Since \(t>\mu>0\), the choice
\[
\lambda=\log(t/\mu)>0
\tag{5}
\]
is admissible. Substitution of (4)-(5) into (3) gives
\[
-t\log(t/\mu)+\mu(t/\mu-1)
=t-\mu-t\log(t/\mu)
\]
as the exponent, proving (2). If \(t>n\), finite support already makes the left side zero; the same positive right side remains a valid bound, so (2) covers every real \(t>\mu\).

Finally,
\[
\frac{\partial}{\partial\mu}\log B(\mu,t)
=-1+\frac{t}{\mu}>0
\qquad(0<\mu<t),
\tag{6}
\]
and
\[
\frac{\partial}{\partial t}\log B(\mu,t)
=\log\frac{\mu}{t}<0
\qquad(t>\mu).
\tag{7}
\]
Because \(B\) is positive, (6)-(7) prove both monotonicity claims.

### unit_002: lemma

**Lemma (Exact numerical slack for the overflow constant).** \(\label{lem:step-011-numerical-slack}\)

Statement:
With \(e\) the base of the natural logarithm,
\[
\eta_0:=e^7\left(\frac29\right)^9
<\frac3{2048}.
\tag{8}
\]
Moreover, \(\log4>1\).

Proof / justification:
The exponential series and the bound
\[
(6+\ell)!\ge6!\,7^\ell
\qquad(\ell\in\mathbb N_0)
\tag{9}
\]
give
\[
\begin{aligned}
e
&=\sum_{j=0}^5\frac1{j!}
  +\sum_{\ell=0}^{\infty}\frac1{(6+\ell)!}\\
&\le \frac{163}{60}
  +\frac1{720}\sum_{\ell=0}^{\infty}7^{-\ell}
=\frac{163}{60}+\frac7{4320}
=\frac{11743}{4320}
<\frac{87}{32}.
\end{aligned}
\tag{10}
\]
The last inequality is exact because
\[
11743\cdot32=375776<375840=87\cdot4320.
\tag{11}
\]
In particular, \(e<87/32<4\). Strict monotonicity of the natural logarithm and \(\log e=1\) therefore give \(\log4>1\).

Using (10) and factoring \(87=3\cdot29\), \(9=3^2\),
\[
\eta_0
<\left(\frac{87}{32}\right)^7\left(\frac29\right)^9
=\frac{29^7}{2^{26}3^{11}}.
\tag{12}
\]
The remaining comparison is integer arithmetic:
\[
29^7=17{,}249{,}876{,}309
<17{,}414{,}258{,}688
=3^{12}2^{15}.
\tag{13}
\]
Substituting (13) into (12) gives
\[
\eta_0
<\frac{3^{12}2^{15}}{2^{26}3^{11}}
=\frac3{2^{11}}
=\frac3{2048},
\]
which proves (8) without a decimal approximation.

### unit_003: lemma

**Lemma (Floor-eight overflow bound at small mean).** \(\label{lem:step-011-small-mean}\)

Statement:
Under Lemma~\ref{lem:step-011-binomial-envelope}, let \(n\in\mathbb N\), \(0<p\le1\), \(L\sim\operatorname{Bin}(n,p)\), \(0<\mu=np\le2\), and
\[
m:=\max\{8,\lceil4\mu\rceil\}.
\]
Then
\[
\Pr(L>m)\le e^7(2/9)^9=\eta_0.
\tag{14}
\]
This includes the transition case \(\mu=2\).

Proof / justification:
If \(n\le8\), then \(L\le n\le8\le m\) on every outcome, so the probability in (14) is zero. Suppose now that \(n\ge9\). Since \(L\) and \(m\) are integers and \(m\ge8\), the strict event satisfies
\[
\{L>m\}=\{L\ge m+1\}\subseteq\{L\ge9\}.
\tag{15}
\]
Because \(0<\mu\le2<9\), Lemma~\ref{lem:step-011-binomial-envelope} applies at \(t=9\). Its fixed-\(t\) monotonicity gives
\[
\Pr(L>m)
\le B(\mu,9)
\le B(2,9)
=e^{-2}\left(\frac{2e}{9}\right)^9
=e^7\left(\frac29\right)^9.
\tag{16}
\]
At \(\mu=2\), the last envelope is exactly the displayed endpoint value, so there is no gap at the regime transition. Equation (15) accounts for both the strict event and all integer rounding in the floor-eight regime.

### unit_004: lemma

**Lemma (Factor-four overflow bound at large mean).** \(\label{lem:step-011-large-mean}\)

Statement:
Under Lemmas~\ref{lem:step-011-binomial-envelope} and \ref{lem:step-011-numerical-slack}, let \(n\in\mathbb N\), \(0<p\le1\), \(L\sim\operatorname{Bin}(n,p)\), \(\mu=np\ge2\), and
\[
m:=\max\{8,\lceil4\mu\rceil\}.
\]
Then
\[
\Pr(L>m)\le e^7(2/9)^9=\eta_0.
\tag{17}
\]

Proof / justification:
If \(m\ge n\), finite binomial support gives \(L\le n\le m\), so (17) is immediate with probability zero. Otherwise \(m<n\). Because \(L,m\) are integers and \(m\ge\lceil4\mu\rceil\),
\[
\{L>m\}
=\{L\ge m+1\}
\subseteq
\{L\ge4\mu+1\},
\tag{18}
\]
where
\[
m+1\ge\lceil4\mu\rceil+1\ge4\mu+1.
\tag{19}
\]
Thus (18)-(19) explicitly retain both the strict overflow event and the ceiling-one margin. Also \(4\mu+1>\mu\), so Lemma~\ref{lem:step-011-binomial-envelope} with the real threshold \(t=4\mu+1\) gives
\[
\Pr(L>m)\le B(\mu,4\mu+1).
\tag{20}
\]

Define the proof-local log-envelope
\[
f(\mu):=\log B(\mu,4\mu+1)
=3\mu+1-(4\mu+1)\log\left(4+\frac1\mu\right).
\tag{21}
\]
Direct differentiation gives
\[
f'(\mu)
=3+\frac1\mu
 -4\log\left(4+\frac1\mu\right).
\tag{22}
\]
For \(\mu\ge2\), Lemma~\ref{lem:step-011-numerical-slack} gives \(\log4>1\), while \(1/\mu\le1/2\) and \(4+1/\mu>4\). Hence
\[
f'(\mu)
<3+\frac12-4\log4
<\frac72-4
=-\frac12<0.
\tag{23}
\]
Therefore \(f\) is strictly decreasing on \([2,\infty)\), and
\[
B(\mu,4\mu+1)
\le B(2,9)
=e^7\left(\frac29\right)^9.
\tag{24}
\]
Combining (20) and (24) proves (17). At \(\mu=2\), the threshold in (18) is exactly \(9\), matching Lemma~\ref{lem:step-011-small-mean}; for \(\mu>2\), (23) gives strict improvement. The initial \(m\ge n\) branch covers every case in which the requested threshold lies beyond the finite binomial support.

### unit_005: lemma

**Lemma (Finite-support endpoints and one-factor zero overflow).** \(\label{lem:step-011-zero-overflow}\)

Statement:
Let \(n\in\mathbb N\), \(p\in[0,1]\), \(L\sim\operatorname{Bin}(n,p)\), and
\[
m:=\max\{8,\lceil4np\rceil\}.
\]
Then
\[
\Pr(L>m)=0
\tag{25}
\]
whenever \(n\le8\), \(p=0\), or \(p=1\). Under Assumptions~\ref{assump:canonical-product} and \ref{assump:vc-one-factors} and the accepted exact-weight/budget interface (1), this conclusion applies with \(p=\pi_i\), and in particular gives exact zero overflow at \(k=1\).

Proof / justification:
For every binomial parameter, \(L\in\{0,\ldots,n\}\). Thus if \(n\le8\), then \(L\le n\le8\le m\) deterministically; this includes the candidate boundary \(n=1\).

If \(p=0\), then \(L=0\) almost surely and \(m\ge8\), so overflow is impossible. If \(p=1\), then \(L=n\) almost surely and
\[
m
=\max\{8,\lceil4n\rceil\}
=\max\{8,4n\}
\ge n,
\tag{26}
\]
so overflow is again impossible.

Finally, under the accepted interface, take \(p=\pi_i\) and \(m=m_{n,i}\). When \(k=1\), (1) gives \(M=s_1\) and hence \(\pi_1=s_1/M=1\). The preceding \(p=1\) calculation proves
\[
L_1=n\le m_{n,1}
\quad\text{almost surely},
\]
so the one-factor overflow probability is exactly zero rather than merely bounded by \(\eta_0\).

## Target-Step Assembly

Fix the accepted lower candidate \(n\) and an arbitrary factor \(i\), and instantiate accepted Lemma~\ref{lem:step-009-low-mass} and the setting-defined budget through the exact interface (1). Lemma~\ref{lem:step-011-zero-overflow} proves the desired claim with probability zero if \(n\le8\), \(\pi_i=0\), or \(\pi_i=1\). It also proves the required exact \(k=1\) baseline because then \(\pi_1=1\).

It remains to consider \(n\ge9\) and \(0<\pi_i<1\). Put \(\mu=n\pi_i\). If \(0<\mu\le2\), Lemma~\ref{lem:step-011-small-mean} gives
\[
\Pr[L_i>m_{n,i}]\le\eta_0.
\]
If \(\mu>2\), Lemma~\ref{lem:step-011-large-mean} gives the same conclusion. The two bounds agree at \(\mu=2\), so this case split has no uncovered transition or rounding interval. Lemma~\ref{lem:step-011-numerical-slack} then gives the exact strict comparison
\[
\Pr[L_i>m_{n,i}]
\le\eta_0
=e^7\left(\frac29\right)^9
<\frac3{2048}.
\tag{27}
\]

The index \(i\) was arbitrary and every bound uses the same numerical constant, establishing uniformity over factors. This is a marginal statement for each \(L_i\). The proof neither unions the overflow events nor asserts independence among factor counts.

## Explicit Rate Audit

- Exposed variables: the fixed candidate \(n\), factor index \(i\), weight \(\pi_i\), mean \(\mu=n\pi_i\), exact budget \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\), and the exact universal constant \(\eta_0=e^7(2/9)^9\).
- Hidden constants may depend on: none. The floor \(8\), multiplier \(4\), transition \(2\), threshold \(9\), and comparison \(3/2048\) are displayed numerical constants.
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,s_i,M,Q_i,D,n,\pi_i,\varepsilon,\delta\), any learner, target, distribution, or joint law of other factor counts.
- Fixed quantities: the routing multiplier four, budget floor eight, natural-log convention, and one accepted candidate and factor marginal.
- Probability mode: one unconditional marginal binomial probability. The result is uniform in the deterministic parameters but does not assert a simultaneous overflow event.
- Horizon mode: one fixed candidate \(n\); no asymptotic, all-time, or uniform-in-candidate upgrade.
- Norm mode: event probability for the exact strict overflow event; downstream it is a bounded \([0,1]\)-risk coupling residual.
- Admissibility conditions and auxiliary tolerances: \(n\in\mathbb N\), \(0\le\pi_i\le1\), the exact binomial law, and the exact budget. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: (15) pays the floor-eight and strict-event rounding; (18)-(19) pay the ceiling and strict-event rounding; (23) proves the large-mean monotonicity; (10)-(13) prove the exact numerical comparison. No term is absorbed by prose.
- Probability conversion: (3) applies exponential Markov to one factor marginal and (4)-(5) optimize it. There is no conditioning conversion, union bound, or independence claim.
- Contribution to any Rate Specialization Bridge: (27) exports the sole per-factor ideal/truncated coupling residual used downstream, below the final risk slack \(3/2048\).
- Baseline-reduction check: \(\pi_i=0\) gives exact zero overflow. If \(\pi_i=1\), and in particular when \(k=1\), then \(L_i=n\le m_{n,i}\) exactly, so the one-factor baseline retains zero residual rather than the conservative bound \(\eta_0\).

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(\pi_i:=\omega_i=s_i/M\) and \(m_{n,i}=\max\{8,\lceil4n\pi_i\rceil\}\) are the accepted dependency's exact translations of the setting quantities. No new weights or budgets are introduced.
- `Public-facing`: \(\mathcal O_i:=\{L_i>m_{n,i}\}\) is the generated overflow event controlled in this step, and \(\eta_0:=e^7(2/9)^9\) is the exact target constant. Their only downstream interface is \(\Pr(\mathcal O_i)\le\eta_0<3/2048\), with exact zero at the stated endpoints.
- `Proof-local`: \(p\) denotes the single fixed value \(\pi_i\); \(\mu=np\), the real tail threshold \(t\), \(B(\mu,t)\), the exponential parameter \(\lambda\), and \(f(\mu)=\log B(\mu,4\mu+1)\) are used only inside the local derivation and are not exported.
- Constant provenance: \(8\) and \(4\) come directly from the setting-defined budget; \(9\) is the integer successor of the floor eight; \(2\) is the exact solution of \(4\mu+1=9\); and \(7,87/32,29^7,3^{12}2^{15}\) occur only in the proved numerical comparison. No bounded constant is assumed free.
- Assumption provenance: the exact weights and budgets are supplied by the accepted dependency. The overflow event and its bound are proved in this step. No generated event, realized membership condition, independence property, support restriction, or balance condition is used as a primitive or local conditional hypothesis.
- Fixed-candidate scope: all occurrences of \(n,\pi_i,\mu,m_{n,i}\), and \(L_i\) refer to one factor marginal at the same accepted candidate. Uniformity means the same deterministic inequality holds after any factor is fixed; it does not create a joint probability statement.
- Boundary cases: strict overflow versus an integer budget, ceiling equality, \(n=1\), all \(n\le8\), \(\mu=2\), thresholds beyond support, \(\pi_i=0\), \(\pi_i=1\), and \(k=1\) are handled explicitly in Lemmas~\ref{lem:step-011-small-mean}, \ref{lem:step-011-large-mean}, and \ref{lem:step-011-zero-overflow}.
- Diagnostic boundary: the optional `global_proof.md` / `global_proof_review.md` pair was hash-checked at
  `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` /
  `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48`, and the paired review status is `ACCEPTED`. Its suggested split at \(\mu=2\) and derivative expression were used only as planning context. Every inequality above was independently derived here; the diagnostic was not used as evidence, a cited result, an assumption source, or authority to change the target claim.
