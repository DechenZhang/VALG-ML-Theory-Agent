# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 1
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Accepted proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Accepted proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted diagnostic planning pair, not proof evidence:
  global_proof.md SHA-256
  bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784
  and global_proof_review.md SHA-256
  490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09,
  whose status is ACCEPTED.
- Accepted dependency proof/review SHA-256 pairs:
  - step_001:
    0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530 /
    83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c
  - step_002:
    880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f /
    090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5
  - step_007:
    f8da4dbdc8ee467385d1a04b64904f31ea93215443cb260ba05e1cdeb9cd34f1 /
    6c4dee49c2466974c1f6f1e46e2e9d790a933abaad85e85b8b52bc654ba0b5e1
  - step_011:
    4d74815bd98d393bbf1f6645eb3baf852b0c1cd3b0315f8d9740440dd0fd09ef /
    32d1f7b5480c011b27b9326d036d7ce9081374105539502d7d6f756ad2417b9a
  - step_013:
    df6c70d3af7b5bca81d371e092695c822b01bc9a10cd0a5972b3cd03245c4054 /
    414fe608e64f323318a477b7f7fcd8aa4a132fa205f0be7d210c1af36f7b0fb4

Every listed dependency review has status ACCEPTED and matches the listed
proof artifact.

## Target Step Claim

- Intended claim: Eliminate all VC-arm auxiliaries and prove the displayed
  conditional \(R_{\mathrm{VC}}\) rate with no hidden positive power.
- Depends on: step_001, step_002, step_007, step_011, step_013.
- Assumptions used: All four primitive assumptions; accepted new-arm DP/PAC
  outputs.
- Technical challenge: Explicit-rate bridge, ceilings, confidence
  conversion, and the \(N\delta\to0\) schedule.
- Intended proof tool or cited result: Direct inequalities and source rate
  definitions.
- Output target: Normalized VC-arm theorem.
- Rate objective: Full
  \(d,v,\alpha,\beta,\varepsilon,\delta\) dependence.
- Row-local review status: PENDING; the accepted proof-sketch review, rather
  than the row-local field, is the acceptance gate.

The controller-expanded obligation is also binding. For \(d=0\), preserve
the exact \(N=0\), zero-risk, \((0,0)\)-DP branch. For \(d\geq1\), combine
the exact quotient/raw kernel and decoder-risk interfaces, all-input
\((\varepsilon,\delta)\)-DP, and unconditional PAC utility, and prove
universal \(K\geq1\) and integer \(q\geq0\) such that
\[
 N\leq K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
 R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta),
\]
where
\[
 R_{\mathrm{VC}}
 =
 \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
      {\varepsilon\alpha}
 +\frac{d+\log(1/\beta)}{\alpha}.
\]
Every ceiling and every domination used to eliminate
\(k,a(k),Q(k),m,N=km\) must remain visible. Only logarithms of displayed
parameters may be hidden in \(\Lambda\). The raw decoder-risk identity,
all-input privacy, released-law PAC guarantee, \(v=1\), \(v=d\), \(d=0\),
every fixed \(0<\delta<1\), and the exact scheduled small-\(\delta\)
statement must all be retained. This step proves only the conditional
VC-sensitive arm; it neither compares nor combines the old-Lyu and
finite-class arms.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:finite-littlestone}: \(C\) is nonempty and
    \(d=\operatorname{LD}(C)<\infty\). On the positive branch, accepted
    Step 001 gives \(1\leq v\leq d\).
  - Assumption~\ref{assump:countable-evaluation-quotient}: \(Q_C\) is finite
    or countably infinite, its cells are measurable, and the static quotient
    map is measurable.
  - Assumption~\ref{assump:realizable-iid}: utility is evaluated for every
    probability measure \(D\) and every target \(c\in C\) under iid sampling
    from \(P_{D,c}\).
  - Assumption~\ref{assump:approximate-dp-regime}:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\leq1\), and
    \(0<\delta<1\). Its source-facing asymptotic specialization is invoked
    only along sequences satisfying
    \(\delta K\Lambda^qR_{\mathrm{VC}}\to0\).
- Derived interfaces supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-zero} supplies the exact
    \(d=0,N=0\) deterministic singleton law, zero population risk, and
    \((0,0)\)-DP.
  - Accepted Lemma~\ref{lem:step-001-calibration},
    Lemma~\ref{lem:step-001-envelope}, and
    Proposition~\ref{prop:step-001-teacher} supply the exact positive-branch
    scalar dictionary, every integer ceiling, the public witness
    \(\bar k\), the least feasible \(k\), and the universal constant chain.
  - Accepted Propositions~\ref{prop:step-002-factorization},
    \ref{prop:step-002-iid-pushforward}, and
    \ref{prop:step-002-risk} supply the exact concept factorization,
    iid sample pushforward, measurable improper-output risk, and zero-residual
    decoder-risk identity.
  - Accepted Lemmas~\ref{lem:step-007-fixed-point} and
    \ref{lem:step-007-sample-envelope} supply the actual-ceiling fixed point
    and the fully exposed intermediate sample envelope. Accepted
    Proposition~\ref{prop:step-007-tower} supplies the unconditional trace
    confidence share already consumed by Step 013.
  - Accepted Proposition~\ref{prop:step-011-raw-dp} supplies the exact raw
    kernel pullback and all-input raw replacement
    \((\varepsilon,\delta)\)-DP, including arbitrary labels, all totalized
    paths, and the \(d=0\) null law.
  - Accepted Proposition~\ref{prop:step-013-pac} supplies the unconditional
    released quotient PAC event, after exact projection of the unreleased
    occurrence mark.
- Local conditional hypotheses: None about generated objects, events,
  lists, supports, partitions, outputs, or invariants. The sequence condition
  used for \(N\delta\to0\) is exactly the primitive asymptotic specialization
  in Assumption~\ref{assump:approximate-dp-regime}; it is not used for the
  fixed-parameter kernel, privacy, PAC, or sample-size theorem.
- Accepted dependency artifacts: exactly the ten proof/review files whose
  identities are recorded in the Step Identity section.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:countable-evaluation-quotient}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-002-iid-pushforward}, \ref{prop:step-002-risk}, \ref{prop:step-011-raw-dp}, and \ref{prop:step-013-pac}, if \(d\geq1\) and \(N=n_0\), then the quotient law \(K_C\) and raw pullback \(A_N(s,E)=K_C(T_N(s),E)\) are Markov kernels, \(A_N\) is all-input \((\varepsilon,\delta)\)-DP, and its raw decoded-risk failure probability is exactly the quotient failure probability and is at most \(\beta\). | Consolidates the exact kernel, adjacency, released-law, sampling, and risk interfaces without replacing raw PAC by quotient-only PAC. |
| unit_002 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}, accepted Lemma~\ref{lem:step-001-envelope}, accepted Proposition~\ref{prop:step-001-teacher}, and accepted Lemmas~\ref{lem:step-007-fixed-point} and \ref{lem:step-007-sample-envelope}, if \(d\geq1\), then every ceiling remainder is retained and \(k,a(k),Q(k),m,N=km\) are eliminated to give \(N\leq K_{\rm fp}d^4\ell\Lambda^3(v+\Lambda)/(\varepsilon\alpha)\), with an explicit universal \(K_{\rm fp}\) and \(\ell=\log(64/(\delta\beta))\). | Gives the complete auxiliary-elimination chain with exact hidden-constant provenance. |
| unit_003 | proposition | Under Assumption~\ref{assump:approximate-dp-regime} and Lemma~\ref{lem:step-014-elimination}, if \(d\geq1\), then with \(K=\max\{1,4K_{\rm fp}\}\) and \(q=4\), \(N\leq K\Lambda^qR_{\mathrm{VC}}\); this holds for every \(0<\delta<1\), has no hidden positive power, specializes at \(v=1\), and has the exact \(d^5+d^4\log(1/\beta)\) polynomial profile at \(v=d\). | Converts the intermediate envelope to the exact two-term public rate and audits every structural boundary. |
| unit_004 | proposition | Under all four setting assumptions and accepted Propositions~\ref{prop:step-001-zero}, \ref{prop:step-002-risk}, \ref{prop:step-011-raw-dp}, and \ref{prop:step-013-pac}, if \(d=0\), then \(v=0\), \(N=0\), the quotient and raw laws are exact Dirac kernels, the raw law is \((0,0)\)-DP, and decoded risk is identically zero for every \(D,c\). | Preserves the exact no-data baseline without evaluating a positive-dimensional auxiliary. |
| unit_005 | proposition | Under all four setting assumptions and Propositions~\ref{prop:step-014-interface}, \ref{prop:step-014-rate}, and \ref{prop:step-014-zero}, the exact conditional normalized VC-arm theorem holds with the universal \(K,q\) above; along precisely the schedule \(\delta K\Lambda^qR_{\mathrm{VC}}\to0\), it also has \(N\delta\to0\), while no such limit is asserted for fixed positive \(\delta\). | Assembles the complete VC-arm kernel/DP/PAC/rate tuple and states its honest conditional scope. |

Atomic step = no. Kernel/risk interface consolidation, ceiling-aware
auxiliary elimination, public-rate normalization, the null branch, and the
schedule/scope assembly are five distinct nontrivial obligations.

## Cited Result Applications

No paper theorem is invoked directly in this step. All source-theorem
applications were checked inside the accepted dependencies; this step uses
only their accepted current-notation conclusions and direct algebra.

| Result | Restated statement in current notation | Assumptions and object mapping | Exact conclusion used |
| ------ | ---------------------------------------- | ------------------------------ | --------------------- |
| Accepted Proposition~\ref{prop:step-001-zero} | If \(d=0\), then \(C\) and \(\bar C\) are singletons; the learner uses \(N=0\), releases the unique quotient concept deterministically, is \((0,0)\)-DP, and has zero decoded population error. | Its accepted proof uses Assumption~\ref{assump:finite-littlestone} and the setting quotient/decoder; no positive-branch parameter is defined. | Proposition~\ref{prop:step-014-zero}. |
| Accepted Lemma~\ref{lem:step-001-envelope} and Proposition~\ref{prop:step-001-teacher} | Put \(\ell=\log(64/(\delta\beta))\), \(A_{\log}=80+\log(1+C_{\rm blk})\), \(A_{\rm def}=256(A_{\log}+c_{\rm AT}+1)\), \(C_{\rm teach}=2^{12}A_{\rm def}^2\), and \(H=A_{\log}(1+\log C_{\rm teach})\). Then \(\bar k=\lceil C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\rceil\), \(2\leq k\leq\bar k\leq2C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\), \(\log\bar k\leq H\Lambda\), and \(\log Q(\bar k)\leq H\Lambda\). | Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}; \(C_{\rm blk}\) and \(c_{\rm AT}\) are fixed universal source/calibration constants. All ceilings were retained in the accepted proof. | The witness, logarithmic, and constant-provenance inputs in Lemma~\ref{lem:step-014-elimination}. |
| Accepted Lemma~\ref{lem:step-007-fixed-point} and Lemma~\ref{lem:step-007-sample-envelope} | For \(a(t)=v+\log(4t/\beta)\), \(Q(t)=e+etd^2a(t)/(\alpha v)\), \(m(t)=\lceil C_{\rm blk}d^2a(t)\log Q(t)/\alpha\rceil\), and \(N=n_0=km(k)\), the exact ceiling gives \(m\leq(1+C_{\rm blk})d^2a(k)\log Q(k)/\alpha\), and \(N\leq K_{\rm fp}d^4\ell\Lambda^3(v+\Lambda)/(\varepsilon\alpha)\), where \(K_{\rm fp}=2(1+C_{\rm blk})C_{\rm teach}H(H+3)\). | The exact accepted Step 001 tuple is used; monotonicity is applied only to already defined \(a(t),Q(t)\), not to the teacher feasible set. | The complete intermediate sample envelope and its exact universal constant in Lemma~\ref{lem:step-014-elimination}. |
| Accepted Propositions~\ref{prop:step-002-iid-pushforward} and \ref{prop:step-002-risk} | For every \(D,c,N\), \((T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N\), and for every possibly improper \(\bar h\in H_C\), \(\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)=\operatorname{err}_{\bar D}(\bar h,\bar c)\); the common risk is measurable in \(\bar h\). | Assumptions~\ref{assump:countable-evaluation-quotient} and \ref{assump:realizable-iid}; the quotient target is the exact image of the raw target. | The zero-residual change of variables in Proposition~\ref{prop:step-014-interface} and the null-risk identity in Proposition~\ref{prop:step-014-zero}. |
| Accepted Proposition~\ref{prop:step-011-raw-dp} | The quotient law \(K_C\) and raw pullback \(A_N(s,E)=K_C(T_N(s),E)\) are the setting-defined kernels; for every raw replace-one pair, arbitrary labels, and measurable \(E\), \(A_N(s,E)\leq e^\varepsilon A_N(s',E)+\delta\). In fact the accepted positive-branch proof gives \((\varepsilon/2,\delta)\)-DP; the null branch is \((0,0)\)-DP. | Assumption~\ref{assump:approximate-dp-regime}; its accepted dependencies discharged quotient-kernel measurability, record/list locality, adaptive stopping, totalization, and partition mixing. No utility event is used. | The exact all-input privacy and kernel interface in Propositions~\ref{prop:step-014-interface} and \ref{prop:step-014-zero}. |
| Accepted Proposition~\ref{prop:step-013-pac} | For every allowed \(D,c\), the released quotient law at \(N=n_0\) satisfies \(\Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]\leq\beta\), unconditionally over iid data, the data-independent partition, mechanism randomness, and after exact projection of the unreleased mark. The \(d=0,N=0\) failure probability is zero. | Assumption~\ref{assump:realizable-iid}; all trace, mechanism, holdout, finite-multiplicity, fallback, and projection conditions were produced and discharged in accepted dependencies. | The quotient probability bound transferred exactly in Proposition~\ref{prop:step-014-interface}, and the null utility conclusion in Proposition~\ref{prop:step-014-zero}. |

The local results used later are also restated before use:

| Local result | Assumption basis and conclusion | Used by |
| ------------ | ------------------------------- | ------- |
| Proposition~\ref{prop:step-014-interface} | Under all four primitive assumptions and the accepted Step 002/011/013 interfaces, the raw pullback is a Markov kernel, is all-input DP, and has raw decoded-risk failure probability at most \(\beta\). | Proposition~\ref{prop:step-014-vc-arm}. |
| Lemma~\ref{lem:step-014-elimination} | Under the finite-Littlestone and parameter assumptions and accepted Step 001/007 scalar interfaces, the exact ceiled tuple obeys the fully exposed \(K_{\rm fp}\) envelope. | Proposition~\ref{prop:step-014-rate}. |
| Proposition~\ref{prop:step-014-rate} | Under the parameter assumption and the elimination lemma, universal \(K=\max\{1,4K_{\rm fp}\}\), \(q=4\) give \(N\leq K\Lambda^qR_{\mathrm{VC}}\), with the \(v=1\), \(v=d\), and arbitrary-\(\delta\) audits. | Proposition~\ref{prop:step-014-vc-arm}. |
| Proposition~\ref{prop:step-014-zero} | Under all four assumptions and the accepted null interfaces, the \(d=0\) branch is the exact no-data, zero-risk, \((0,0)\)-DP kernel. | Proposition~\ref{prop:step-014-vc-arm}. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact quotient-to-raw private PAC interface).**
\(\label{prop:step-014-interface}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-002-iid-pushforward},
\ref{prop:step-002-risk},
\ref{prop:step-011-raw-dp}, and
\ref{prop:step-013-pac}, suppose \(d\geq1\) and use the exact sample size
\(N=n_0\). Then \(K_C=K_C^{\mathrm{VC\text{-}Lyu}}\) is the released
quotient Markov kernel and
\[
 A_N(s,E):=K_C(T_N(s),E),
 \qquad s\in Z_X^N,\quad E\in\mathcal H_C,
\tag{1}
\]
is its raw-input Markov-kernel pullback. For every raw replace-one pair
\(s\sim s'\), including nonrealizable inputs and arbitrary labels,
\[
 A_N(s,E)\leq e^\varepsilon A_N(s',E)+\delta
 \qquad(E\in\mathcal H_C).
\tag{2}
\]
Moreover, for every probability measure \(D\) on \((X,\Sigma)\) and every
\(c\in C\),
\[
\begin{aligned}
&\Pr_{S\sim P_{D,c}^N,\,\bar H\sim A_N(S,\cdot)}
 \left[
 \operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha
 \right]\\
&\quad =
\Pr_{\bar S\sim P_{\bar D,\bar c}^N,\,
      \bar H\sim K_C(\bar S,\cdot)}
 \left[
 \operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha
 \right]
\leq\beta.
\end{aligned}
\tag{3}
\]
The equality in (3) is exact for every possibly improper output.

**Proof.** Accepted Proposition~\ref{prop:step-011-raw-dp}, together with
the kernel inputs discharged in its accepted proof, gives both Markov
kernels in (1), the exact pullback identity, and (2). Its conclusion is
deterministic and pointwise over every raw labeled input; it does not use
realizability or any utility event.

Fix \(D,c\). Accepted Proposition~\ref{prop:step-002-risk} makes
\[
 B_{\alpha,D,c}
 :=\{\bar h\in H_C:
       \operatorname{err}_{\bar D}(\bar h,\bar c)>\alpha\}
\tag{4}
\]
measurable and gives, pointwise for every \(\bar h\in H_C\),
\[
 \mathbf1\!\left\{
 \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)>\alpha
 \right\}
 =\mathbf1\{\bar h\in B_{\alpha,D,c}\}.
\tag{5}
\]
Using (1), the raw failure probability is therefore
\[
 \int_{Z_X^N}
 K_C(T_N(s),B_{\alpha,D,c})\,P_{D,c}^N(ds).
\tag{6}
\]
The integrand is measurable because \(K_C\) is a kernel and \(T_N\) is
measurable. By the defining change-of-variables identity for the pushforward
measure and accepted
Proposition~\ref{prop:step-002-iid-pushforward},
\[
\begin{aligned}
 (6)
 &=\int_{Z_Q^N}
 K_C(\bar s,B_{\alpha,D,c})\,
 (T_N)_\#P_{D,c}^N(d\bar s)\\
 &=\int_{Z_Q^N}
 K_C(\bar s,B_{\alpha,D,c})\,
 P_{\bar D,\bar c}^N(d\bar s).
\end{aligned}
\tag{7}
\]
This is exactly the quotient failure probability in (3), including all
partition and mechanism randomness already integrated into \(K_C\).
Accepted Proposition~\ref{prop:step-013-pac} bounds it by \(\beta\) after
the analysis-only mark has been projected out. Thus (3) preserves the
released law, target function, and binary population-risk metric with zero
residual. \(\square\)

### unit_002: lemma

**Lemma (Ceiling-aware elimination of every VC-arm auxiliary).**
\(\label{lem:step-014-elimination}\)
Under Assumptions~\ref{assump:finite-littlestone}
and~\ref{assump:approximate-dp-regime}, accepted
Lemma~\ref{lem:step-001-envelope}, accepted
Proposition~\ref{prop:step-001-teacher}, and accepted
Lemmas~\ref{lem:step-007-fixed-point}
and~\ref{lem:step-007-sample-envelope}, suppose \(d\geq1\). Put
\[
 \ell:=\log\frac{64}{\delta\beta},
 \qquad
 A_{\log}:=80+\log(1+C_{\rm blk}),
 \qquad
 A_{\rm def}:=256(A_{\log}+c_{\rm AT}+1),
\tag{8}
\]
\[
 C_{\rm teach}:=2^{12}A_{\rm def}^2,
 \qquad
 H:=A_{\log}(1+\log C_{\rm teach}),
\tag{9}
\]
and
\[
 K_{\rm fp}:=
 2(1+C_{\rm blk})C_{\rm teach}H(H+3).
\tag{10}
\]
All constants in (8)-(10) are universal. For the exact accepted tuple
\[
 a(t)=v+\log(4t/\beta),\qquad
 Q(t)=e+\frac{etd^2a(t)}{\alpha v},
\tag{11}
\]
\[
 m(t)=\left\lceil
 C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)
 \right\rceil,\qquad
 N=n_0=km(k),
\tag{12}
\]
one has, with every ceiling retained,
\[
 N\leq
 K_{\rm fp}
 \frac{d^4\ell\Lambda^3}{\varepsilon\alpha}
 (v+\Lambda).
\tag{13}
\]
Thus \(k,a(k),Q(k),m\), and \(N=km\) have all been replaced by displayed
parameters and universal constants.

**Proof.** Accepted Proposition~\ref{prop:step-001-teacher} defines
\[
 \bar k
 =
 \left\lceil
 C_{\rm teach}\frac{d^2\ell\Lambda^2}{\varepsilon}
 \right\rceil
\tag{14}
\]
before sampling and proves
\[
 2\leq k\leq\bar k
 \leq
 2C_{\rm teach}\frac{d^2\ell\Lambda^2}{\varepsilon}.
\tag{15}
\]
The final inequality is the exact ceiling bound
\(\lceil y\rceil\leq y+1\leq2y\), applied only after the accepted proof
establishes
\(y=C_{\rm teach}d^2\ell\Lambda^2/\varepsilon\geq1\).

We next retain the independent ceiling in \(m\). With
\[
 x:=C_{\rm blk}\frac{d^2}{\alpha}a(k)\log Q(k),
\]
write exactly \(m=x+\theta\), where \(0\leq\theta<1\). Accepted
Lemma~\ref{lem:step-007-fixed-point} proves
\(d^2a(k)\log Q(k)/\alpha>4\), hence
\[
\begin{aligned}
 m
 &\leq
 C_{\rm blk}\frac{d^2}{\alpha}a(k)\log Q(k)+1\\
 &\leq
 (1+C_{\rm blk})\frac{d^2}{\alpha}a(k)\log Q(k).
\end{aligned}
\tag{16}
\]
The additive integer remainder has therefore been paid explicitly, rather
than hidden in asymptotic notation.

For integers \(2\leq s\leq t\), (11) gives
\(a(s)\leq a(t)\), then \(sa(s)\leq ta(t)\), and therefore
\(Q(s)\leq Q(t)\). Applying this deterministic monotonicity only after
\(k\leq\bar k\) is known, (15)-(16) give
\[
 N=km
 \leq
 (1+C_{\rm blk})\bar k\frac{d^2}{\alpha}
 a(\bar k)\log Q(\bar k).
\tag{17}
\]
No monotonicity of the teacher feasible set is asserted.

Accepted Lemma~\ref{lem:step-001-envelope}, at the fixed universal
\(C=C_{\rm teach}\), gives
\[
 \log\bar k\leq H\Lambda,
 \qquad
 \log Q(\bar k)\leq H\Lambda.
\tag{18}
\]
Writing \(b=\log(1/\beta)\), the parameter ranges give
\(b\leq\Lambda\), \(\Lambda\geq1\), and \(\log4<2\), so
\[
\begin{aligned}
 a(\bar k)
 &=v+\log4+\log\bar k+b\\
 &\leq v+(H+3)\Lambda.
\end{aligned}
\tag{19}
\]
Substituting (15), (18), and (19) into (17) yields the fully visible chain
\[
 N
 \leq
 2(1+C_{\rm blk})C_{\rm teach}H
 \frac{d^4\ell\Lambda^3}{\varepsilon\alpha}
 \bigl[v+(H+3)\Lambda\bigr].
\tag{20}
\]
Finally,
\[
 v+(H+3)\Lambda\leq(H+3)(v+\Lambda),
\tag{21}
\]
because \(H+3\geq1\). Equations (10), (20), and (21) prove (13).
This line-by-line chain eliminates \(k\) through (15), \(a(k)\) through
(19), \(Q(k)\) through its logarithm in (18), \(m\) through the exact
ceiling calculation (16), and \(N=km\) through (17)-(20). \(\square\)

### unit_003: proposition

**Proposition (Exact normalized VC rate and structural boundary profile).**
\(\label{prop:step-014-rate}\)
Under Assumption~\ref{assump:approximate-dp-regime} and
Lemma~\ref{lem:step-014-elimination}, suppose \(d\geq1\). Define
\[
 K:=\max\{1,4K_{\rm fp}\},
 \qquad q:=4.
\tag{22}
\]
Then \(K\geq1\) is universal, \(q\in\mathbb N_0\), and
\[
 N\leq
 K\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)^q
 R_{\mathrm{VC}}(d,v,\alpha,\beta,\varepsilon,\delta).
\tag{23}
\]
The bound is pointwise valid for every fixed \(0<\delta<1\), has only
displayed-parameter logarithms inside \(\Lambda\), has the \(d^4\) profile
at \(v=1\), and at \(v=d\) has the exact polynomial numerator
\(d^5+d^4\log(1/\beta)\).

**Proof.** For clarity only inside this proof, set
\[
 b:=\log(1/\beta),\qquad
 s:=\log(1/(\delta\beta)),\qquad
 \ell:=\log(64/(\delta\beta)).
\tag{24}
\]
Since \(0<\beta<1/4\) and \(0<\delta<1\),
\[
 b>\log4>1,\qquad s>\log4>1.
\tag{25}
\]
Moreover \(\log64=3\log4\), so
\[
 \ell=s+\log64\leq4s.
\tag{26}
\]
Because \(v\geq1\) and \(\Lambda\geq1\),
\[
 v+\Lambda\leq\Lambda(v+1)\leq\Lambda(v+b).
\tag{27}
\]
Applying (26)-(27) to (13) gives
\[
 N
 \leq
 4K_{\rm fp}\Lambda^4
 \frac{d^4(v+b)s}{\varepsilon\alpha}.
\tag{28}
\]
This is the only logarithmic absorption in the rate bridge, and both
inequalities proving it are displayed.

The setting's exact rate is
\[
 R_{\mathrm{VC}}
 =
 \frac{d^4(v+b)s}{\varepsilon\alpha}
 +\frac{d+b}{\alpha}.
\tag{29}
\]
The second term has not been silently discarded. Indeed
\(d\geq1\), \(v\geq1\), \(s>1\), and \(\varepsilon\leq1\) give
\[
 \frac{d^4(v+b)s}{\varepsilon\alpha}
 \geq
 \frac{d^4v+d^4b}{\alpha}
 \geq
 \frac{d+b}{\alpha}.
\tag{30}
\]
Thus the two terms in (29) are explicitly comparable, while in the
direction needed for (23),
\[
 \frac{d^4(v+b)s}{\varepsilon\alpha}
 \leq R_{\mathrm{VC}}.
\tag{31}
\]
Equations (22), (28), and (31) prove (23).

At \(v=1\), (28) reads
\[
 N\leq
 K\Lambda^4
 \frac{d^4(1+b)s}{\varepsilon\alpha},
\tag{32}
\]
so no additional positive power of \(v\) or \(d\) is hidden. At \(v=d\),
the first numerator in (29) is exactly
\[
 d^4(d+b)=d^5+d^4b,
\tag{33}
\]
which is the claimed \(d^5\) structural scale, with its confidence term
still explicit. These are specializations of the same VC arm and do not
invoke or compare another arm.

Finally, (25)-(31) require only the fixed allowed range \(0<\delta<1\).
They remain finite and valid for an arbitrary such \(\delta\), whether
moderate or tending to zero. No limiting claim has been used to prove the
fixed-sample theorem. \(\square\)

### unit_004: proposition

**Proposition (Exact zero-dimensional no-data baseline).**
\(\label{prop:step-014-zero}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, and accepted
Propositions~\ref{prop:step-001-zero},
\ref{prop:step-002-risk},
\ref{prop:step-011-raw-dp}, and
\ref{prop:step-013-pac}, if \(d=0\), then \(v=0\), \(N=0\), the quotient
law and its raw pullback are the exact Dirac law at the unique
\(\bar c_0\in\bar C\), the raw law is \((0,0)\)-DP, and for every \(D\)
and \(c\in C\),
\[
 \operatorname{err}_D(\operatorname{Dec}_C(\bar c_0),c)=0
\tag{34}
\]
deterministically. Consequently the PAC failure probability is exactly
zero.

**Proof.** Accepted Proposition~\ref{prop:step-001-zero} proves that two
distinct concepts would shatter a depth-one Littlestone tree. Hence
\(d=0\) makes the nonempty class \(C\), and therefore \(\bar C\), a
singleton; it also implies \(v=0\). The accepted construction bypasses
the teacher, blocks, stages, lists, partition, mechanisms, and every
expression containing \(v^{-1}\), and sets \(N=0\).

Accepted Proposition~\ref{prop:step-011-raw-dp} identifies both quotient
and raw empty-input laws as the same Dirac kernel and proves exact
\((0,0)\)-DP. Since the unique released quotient concept is the quotient
factor of the unique target, accepted
Proposition~\ref{prop:step-002-risk} gives (34). Accepted
Proposition~\ref{prop:step-013-pac} records the same released-law conclusion
with zero failure probability. This is an exact baseline, not a limit of
the positive-dimensional formula. \(\square\)

### unit_005: proposition

**Proposition (Conditional normalized VC-arm theorem and exact
small-\(\delta\) schedule).**
\(\label{prop:step-014-vc-arm}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, and
Propositions~\ref{prop:step-014-interface},
\ref{prop:step-014-rate}, and
\ref{prop:step-014-zero}, the quotient-first totalized VC-sensitive law has
the following exact common interface.

If \(d=0\), it uses \(N=0\), is a quotient/raw Markov-kernel Dirac law, is
\((0,0)\)-DP, has identically zero decoded population risk, and therefore
\(m_C(\alpha,\beta;\varepsilon,\delta)=0\). If
\(d\geq1\), it uses the exact accepted \(N=n_0=km\), its raw pullback is
\((\varepsilon,\delta)\)-DP on every raw neighboring labeled input, and
\[
\sup_D\sup_{c\in C}
\Pr_{S\sim P_{D,c}^N,\,\bar H\sim A_N(S,\cdot)}
\left[
\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha
\right]
\leq\beta,
\tag{35}
\]
while the universal constants in (22) and the definition of \(m_C\) give
\[
 m_C(\alpha,\beta;\varepsilon,\delta)
 \leq N\leq K\Lambda^qR_{\mathrm{VC}}.
\tag{36}
\]
Along any parameter sequence satisfying exactly
\[
 \delta K\Lambda^qR_{\mathrm{VC}}\longrightarrow0,
\tag{37}
\]
the positive-dimensional sample sizes satisfy \(N\delta\to0\). The
fixed-parameter theorem, including privacy and PAC utility, remains valid
for every \(0<\delta<1\); no \(N\delta\) limit is claimed for fixed positive
\(\delta\) absent (37).

This is an explicitly conditional theorem for finite-or-countable
measurable evaluation quotients. It makes no claim for uncountable
evaluation quotients, proves no universal polynomial in
\((v,\log d)\) or \((v,\log^*d)\), and makes no comparison with the old-Lyu
or finite-class arms.

**Proof.** On the positive branch,
Proposition~\ref{prop:step-014-interface} supplies the exact quotient/raw
kernel identity, all-input privacy, exact decoder-risk transfer, and (35).
Proposition~\ref{prop:step-014-rate} supplies (36) with the universal
\(K=\max\{1,4K_{\rm fp}\}\) and integer \(q=4\), including every ceiling
and structural boundary audit; the first inequality in (36) follows
directly because Proposition~\ref{prop:step-014-interface} supplies an
admissible learner at sample size \(N\). On the null branch,
Proposition~\ref{prop:step-014-zero} supplies the exact no-data conclusion.

For a sequence satisfying (37), nonnegativity and (36) give the displayed
squeeze
\[
 0\leq N\delta
 \leq\delta K\Lambda^qR_{\mathrm{VC}}
 \longrightarrow0.
\tag{38}
\]
This is the entire small-\(\delta\) argument. It does not infer (37) from
\(\delta\to0\), and it does not infer \(N\delta\to0\) for a fixed positive
\(\delta\). The scope statements merely record the unchanged primitive
restriction and the arms not assigned to this step. \(\square\)

## Target-Step Assembly

Accepted Steps 002, 011, and 013 are first composed by
Proposition~\ref{prop:step-014-interface}; its exact integral identity keeps
the released quotient law, raw pullback, decoder, target, and binary
population risk aligned. Accepted Steps 001 and 007 are then composed by
Lemma~\ref{lem:step-014-elimination}; equations (14)-(21) pay both ceilings
and eliminate \(k,a(k),Q(k),m,N=km\) with the explicit universal constant
\(K_{\rm fp}\). Proposition~\ref{prop:step-014-rate} proves each logarithmic
domination, retains the exact two-term \(R_{\mathrm{VC}}\), fixes
\(K=\max\{1,4K_{\rm fp}\}\) and \(q=4\), and audits \(v=1\), \(v=d\), and
every allowed fixed \(\delta\). Proposition~\ref{prop:step-014-zero}
separately preserves the exact \(d=0\) baseline.

These four results imply
Proposition~\ref{prop:step-014-vc-arm}, which is exactly the target
normalized VC-arm theorem. Its final squeeze proves \(N\delta\to0\) only
under the setting's displayed schedule, and its scope paragraph prevents a
comparison-arm or unrestricted-open-problem overclaim. No statement from
the global diagnostic is used as mathematical authority.

## Explicit Rate Audit

- Exposed variables:
  \(d,v,\alpha,\beta,\varepsilon,\delta\), and the exact sample size
  \(N=km\) before elimination. No \(|C|\), domain, distribution, target,
  decomposition, list, event, support, or generated-object quantity appears
  in the normalized rate.
- Hidden constants may depend on:
  nothing variable. The complete provenance chain is the fixed universal
  \(C_{\rm blk}\), the universal source constant \(c_{\rm AT}\),
  \(A_{\log}=80+\log(1+C_{\rm blk})\),
  \(A_{\rm def}=256(A_{\log}+c_{\rm AT}+1)\),
  \(C_{\rm teach}=2^{12}A_{\rm def}^2\),
  \(H=A_{\log}(1+\log C_{\rm teach})\),
  \(K_{\rm fp}=2(1+C_{\rm blk})C_{\rm teach}H(H+3)\), and
  \(K=\max\{1,4K_{\rm fp}\}\). The exponent is the explicit integer \(q=4\).
- Hidden constants may not depend on:
  \(d,v,\alpha,\beta,\varepsilon,\delta,X,\Sigma,C,D,c,|C|\), any raw or
  quotient sample, partition, stage, decomposition, restriction, list,
  transcript, event, support, kernel realization, occurrence mark, or
  output.
- Fixed quantities:
  none in the fixed-parameter theorem. In the schedule statement, all
  displayed parameters may vary subject only to
  \(\delta K\Lambda^4R_{\mathrm{VC}}\to0\).
- Probability mode:
  deterministic all-input approximate DP for every raw replace-one pair and
  every measurable released-output event; unconditional high-probability
  PAC over iid sampling, partition and mechanism randomness, after exact
  projection of the unreleased mark. The raw and quotient PAC failure
  probabilities are equal, not merely bounded by different estimates.
- Horizon mode:
  one fixed sample of size \(N\). There is no all-time, uniform-time,
  stopping-time, or asymptotic upgrade. The optional sequence implication
  concerns only the scalar product \(N\delta\).
- Norm mode:
  binary population zero-one risk, with the exact identity
  \(\operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
  =\operatorname{err}_{\bar D}(\bar h,\bar c)\) for every possibly improper
  output.
- Admissibility conditions and auxiliary tolerances:
  \(d=0\) is handled separately. On \(d\geq1\),
  \(1\leq v\leq d\), \(0<\alpha,\beta<1/4\),
  \(0<\varepsilon\leq1\), \(0<\delta<1\), and \(\Lambda\geq1\).
  The four accepted confidence shares already sum exactly to \(\beta\);
  Step 014 introduces no new confidence tolerance.
- Ceiling remainder inequalities:
  \[
  \bar k=\lceil y\rceil\leq y+1\leq2y
  \quad(y\geq1),
  \]
  and, with \(m=\lceil x\rceil=x+\theta\), \(0\leq\theta<1\),
  \[
  m\leq C_{\rm blk}\frac{d^2a(k)\log Q(k)}{\alpha}+1
   \leq(1+C_{\rm blk})
      \frac{d^2a(k)\log Q(k)}{\alpha}.
  \]
- Term absorption or simplification inequalities:
  equations (17)-(21) eliminate the raw auxiliaries;
  \(\ell\leq4\log(1/(\delta\beta))\) is (26);
  \(v+\Lambda\leq\Lambda(v+\log(1/\beta))\) is (27);
  and (30) explicitly proves that the first term of \(R_{\mathrm{VC}}\)
  dominates its second term on the positive branch. No term is absorbed by
  prose.
- Probability conversion:
  equation (7) uses the exact iid pushforward and exact risk identity to
  identify the raw released-law failure probability with the accepted
  quotient failure probability. No union, confidence loss, or outer
  probability is added in this step.
- Contribution to the Rate Specialization Bridge:
  Lemma~\ref{lem:step-014-elimination} makes every auxiliary choice and
  ceiling visible; Proposition~\ref{prop:step-014-rate} verifies all
  parameter inequalities and gives the final universal \(K,q\);
  Proposition~\ref{prop:step-014-interface} supplies the unchanged
  probability, privacy, and risk modes.
- Baseline-reduction check:
  Proposition~\ref{prop:step-014-zero} preserves exact no-data recovery.
  Equation (32) gives the \(v=1\) profile. Equation (33) gives the
  \(d^5+d^4\log(1/\beta)\) numerator at \(v=d\), hence the \(d^5\) structural
  scale without comparison to another arm. Equations (37)-(38) preserve the
  small-\(\delta\) conclusion only on the exact source-compatible schedule;
  every fixed allowed positive \(\delta\) retains theorem validity but no
  unsupported limit statement.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing objects:
  the setting-defined \(K_C^{\mathrm{VC\text{-}Lyu}}\), \(A_N\), \(T_N\),
  \(\operatorname{Dec}_C\), \(N\), \(R_{\mathrm{VC}}\), \(\Lambda\), and the
  universal output constants \(K=\max\{1,4K_{\rm fp}\}\), \(q=4\).
  These are the minimal interfaces exported to comparison and final
  assembly.
- Appendix-local objects:
  the exact setting/accepted-dependency auxiliaries
  \(k,\bar k,a(t),Q(t),m(t)\), and the universal constants
  \(C_{\rm blk},c_{\rm AT},A_{\log},A_{\rm def},C_{\rm teach},H,K_{\rm fp}\).
  They appear only to prove the public bridge and are eliminated from its
  conclusion.
- Proof-local objects:
  \(b=\log(1/\beta)\), \(s=\log(1/(\delta\beta))\),
  \(\ell=\log(64/(\delta\beta))\), the ceiling remainders \(x,y,\theta\),
  and the measurable event \(B_{\alpha,D,c}\). Each is directly defined
  from setting quantities or accepted dependency objects and is used only
  in one local derivation.
- Constant provenance:
  \(C_{\rm blk}\) is the once-fixed sufficiently large universal block
  constant accepted in Steps 001/007; \(c_{\rm AT}\) is the accepted
  universal source constant. Every other constant is defined explicitly
  from these two in (8)-(10) and (22). There is no free finite constant.
- Assumption provenance:
  the quotient/raw kernels, all-input privacy conclusion, released quotient
  PAC event, confidence ledger, and exact scalar tuple are derived outputs
  of accepted dependencies. They are not primitive assumptions. This step
  introduces no event membership, list boundedness, support property,
  stability, recurrence, or generated invariant as a theorem-facing
  condition.
- Conditional-scope note:
  finite-or-countable measurability of the evaluation quotient is the
  explicit primitive restriction. The result is conditional progress on
  that regime, not a solution for uncountable evaluation quotients and not
  a characterization of private sample complexity. The old-Lyu and
  finite-class arms remain outside this step.
- Diagnostic boundary:
  the paired global_proof_review.md is ACCEPTED with the identity recorded
  above. Only its Step 014 planning suggestion -- multiply the accepted
  teacher/block envelopes and separate fixed-\(\delta\) validity from the
  scheduled limit -- was consulted. Every mathematical claim was
  independently derived above from the setting and accepted dependencies.
  The diagnostic was not used as evidence, a cited result, an assumption
  source, or authority to change the target claim.
- Baseline and boundary modes:
  \(d=0\) bypasses every positive-branch denominator; \(v=1\) and \(v=d\)
  are direct substitutions; every fixed \(0<\delta<1\) is allowed; and
  \(N\delta\to0\) is a separate sequence conclusion only under (37).
