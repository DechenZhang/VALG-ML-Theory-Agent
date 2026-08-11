# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_016`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Accepted proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Accepted proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted dependency proof/review SHA-256 pairs:
  - `step_002`:
    `880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f` /
    `090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5`;
  - `step_003`:
    `092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f` /
    `5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87`;
  - `step_014`:
    `9f040e514e388c5cd8feb190e9c4bfba48ba730be295d79c979304ce4742bbb8` /
    `04198f3e0db38202d74470af46f66ddf0a012f990e19ebdd2d3b8ffe75768bab`;
  - `step_015`:
    `db98cdf01c034c742d9c7df0898d227e60a5d796c4211b7b7c26704b5abcce38` /
    `ec4b5bc1759d73c4802108da738617ddece09d8c387c6cd4527bd23ec5f1a837`.
- Diagnostic planning pair, not proof evidence: `global_proof.md` SHA-256
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
  and `global_proof_review.md` SHA-256
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`;
  the latter has status `ACCEPTED`.

Every listed dependency review has status `ACCEPTED` and matches the listed
proof artifact.

## Target Step Claim

- Intended claim: Prove the finite-class arm, take the minimum only after all
  arms share interfaces, and state `d=0`, `v=d`, finite/infinite, and
  small-`delta` baselines.
- Depends on: `step_002`, `step_003`, `step_014`, `step_015`.
- Assumptions used: All four primitive assumptions; accepted arm outputs.
- Technical challenge: Finite exponential mechanism, `+infinity` disabling,
  and baseline invariance.
- Intended proof tool or cited result: Finite-class private ERM and direct
  comparison algebra.
- Output target: `R_fin` arm and final frontier.
- Rate objective:
  \(\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\).
- Row-local review status: `PENDING`; acceptance of the sketch is supplied by
  the binding accepted proof-sketch review, not by this row-local field.

The controller-expanded target is also binding. For finite
\(M=|C|\), the proof must construct the law on the fixed finite quotient class
\(\bar C\), prove its Markov-kernel and raw-pullback interfaces, derive pure
privacy from the sensitivity-one mistake count, and derive its unconditional
realizable population-risk tail directly. Every ceiling and every comparison
with the setting's exact \(R_{\mathrm{fin}}\) must be visible, including
\(M=1\) and \(\log^+M\). For infinite \(C\), the finite-arm cost must be
\(+\infty\), with no data-dependent finite surrogate. The minimum may be
taken only among complete learners with the same quotient output space,
decoder, raw adjacency, risk, and confidence interfaces. The exact no-data
branch, \(v=1\), \(v=d\), \(vd^4=d^5\), finite versus infinite classes,
fixed-\(\delta\) validity, the setting's scheduled-small-\(\delta\) statement,
and the old arm's separate schedule must all be retained without claiming an
unconditional resolution of the parent open problem.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- Assumption~\ref{assump:finite-littlestone}: \(C\) is nonempty and
  \(d=\operatorname{LD}(C)<\infty\). It supplies the branch split; accepted
  Step 002 proves that \(d=0\) is exactly the singleton branch.
- Assumption~\ref{assump:countable-evaluation-quotient}: \(Q_C\) is finite or
  countably infinite and its quotient cells are measurable. This is the
  primitive source for the measurable quotient input and output interfaces.
- Assumption~\ref{assump:realizable-iid}: for utility, \(D\) and \(c\in C\)
  are arbitrary and the raw labeled sample is iid from \(P_{D,c}\).
- Assumption~\ref{assump:approximate-dp-regime}:
  \(0<\alpha,\beta<1/4\), \(0<\varepsilon\leq1\), and
  \(0<\delta<1\). Fixed-parameter validity uses only these inequalities. The
  asymptotic schedule is invoked only in the final boundary unit.

### Derived invariants and interfaces supplied by accepted dependencies

- Accepted Proposition~\ref{prop:step-002-factorization} gives the bijection
  \(C\leftrightarrow\bar C\), so finite \(C\) gives the fixed finite class
  \(|\bar C|=|C|\).
- Accepted Lemmas~\ref{lem:step-002-vc} and
  \ref{lem:step-002-ld} give
  \(\operatorname{VC}(\bar C)=v\),
  \(\operatorname{LD}(\bar C)=d\), and the exact \(d=0\) singleton and
  \(v=0\) conclusions.
- Accepted Proposition~\ref{prop:step-002-record-map} gives measurable
  \(T_N\) for every \(N\in\mathbb N_0\) and maps a raw neighbor pair to an
  equal or quotient replace-one pair, without a realizability premise.
- Accepted Propositions~\ref{prop:step-002-iid-pushforward} and
  \ref{prop:step-002-risk} give, for every \(D,c,N\),
  \[
  (T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N,
  \qquad
  \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
  =\operatorname{err}_{\bar D}(\bar h,\bar c)
  \tag{D.1}
  \]
  for every possibly improper \(\bar h\in H_C\), together with
  measurability of the risk event.
- Accepted Lemma~\ref{lem:step-003-countable-promotion} and
  Propositions~\ref{prop:step-003-quotient-kernel} and
  \ref{prop:step-003-raw-pullback} promote every everywhere-defined
  pointwise quotient law to a Markov kernel and pull it back through \(T_N\)
  to a raw learner kernel.
- Accepted Proposition~\ref{prop:step-014-vc-arm} supplies a complete
  quotient-first VC-arm kernel/raw-pullback, all-input
  \((\varepsilon,\delta)\)-DP, unconditional \((\alpha,\beta)\)-PAC utility,
  the exact \(d=0\) law, and, on \(d\geq1\),
  \(N_{\mathrm V}\le K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\) for a
  universal \(K_{\mathrm V}\geq1\). It also supplies
  \(N_{\mathrm V}\delta\to0\) only when
  \(\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0\).
- Accepted Propositions~\ref{prop:step-015-zero},
  \ref{prop:step-015-kernel}, \ref{prop:step-015-dp},
  \ref{prop:step-015-pac}, \ref{prop:step-015-rate}, and
  \ref{prop:step-015-boundaries} supply a complete old-Lyu
  quotient/raw/marked-law tuple, all-input
  \((\varepsilon,\delta)\)-DP, unconditional \((\alpha,\beta)\)-PAC
  utility, the shared \(d=0\) law, and
  \(N_{\mathrm o}\le K_{\mathrm o}\Lambda^6R_{\mathrm{old}}\) for a
  universal \(K_{\mathrm o}\geq1\). The old arm's own numerical limit uses
  the separate sufficient condition
  \(\delta K_{\mathrm o}\Lambda^6R_{\mathrm{old}}\to0\).

The accepted dependency artifacts are exactly the eight proof/review files
listed in Step Identity.

### Local conditional hypotheses

None. Finiteness of \(C\) is a case split in the target, not an added theorem
assumption: the finite arm is constructed in that case and assigned cost
\(+\infty\) otherwise. No empirical event, generated subclass, score gap,
normalizer bound, privacy conclusion, or PAC conclusion is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient}, accepted Lemma~\ref{lem:step-002-ld}, and accepted Propositions~\ref{prop:step-014-vc-arm}, \ref{prop:step-015-zero}, if \(d=0\), then \(C\) and \(\bar C\) are singletons and the finite, old, and VC arms use the identical \(N=0\) Dirac quotient/raw law, which is \((0,0)\)-DP and has zero decoded risk. | Preserves the exact common null law before any positive-dimensional formula is used. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:countable-evaluation-quotient} and \ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-002-factorization}, \ref{prop:step-002-record-map}, and \ref{prop:step-003-raw-pullback}, and accepted Lemma~\ref{lem:step-003-countable-promotion}, if \(M=|C|<\infty\) and \(N\in\mathbb N_0\), then exponential weights of the empirical mistake count on the fixed class \(\bar C\) define an everywhere-total quotient Markov kernel \(K^{\mathrm{fin}}_{C,N}:Z_Q^N\leadsto H_C\) and raw pullback \(A^{\mathrm{fin}}_N=K^{\mathrm{fin}}_{C,N}\circ T_N\), both with the setting output and decoder. | Constructs the measurable finite quotient law on every labeled input without a finite surrogate. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:countable-evaluation-quotient} and \ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-002-record-map}, and Proposition~\ref{prop:step-016-finite-kernel}, if \(M<\infty\), then for every \(N\) the quotient finite law and its raw pullback are pure \(\varepsilon\)-DP on all replace-one labeled inputs, hence are \((\varepsilon,\delta)\)-DP for every allowed \(\delta\). | Derives the numerator and normalizer privacy inequalities directly from sensitivity one. |
| `unit_004` | lemma | Under Assumptions~\ref{assump:countable-evaluation-quotient}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, accepted Propositions~\ref{prop:step-002-iid-pushforward} and \ref{prop:step-002-risk}, and Proposition~\ref{prop:step-016-finite-kernel}, if \(M<\infty\), then for every \(N,D,c\), the unconditional raw decoded-risk tail is at most \(M\exp(-N\varepsilon\alpha/4)\). | Gives a uniform population PAC tail by integrating the mechanism weights, with no separate sampling event or term. |
| `unit_005` | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:countable-evaluation-quotient}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, and Propositions~\ref{prop:step-016-zero}, \ref{prop:step-016-finite-kernel}, \ref{prop:step-016-finite-dp}, and Lemma~\ref{lem:step-016-finite-tail}, if \(M<\infty\), then the finite arm is a complete common-interface learner with failure at most \(\beta\) and \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\), including every ceiling and the \(M=1\), \(\log^+M\) boundaries. | Normalizes the finite arm with \(K_{\mathrm{fin}}=8\), \(q_{\mathrm{fin}}=0\), and no invented sampling term. |
| `unit_006` | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:countable-evaluation-quotient}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-016-finite-arm}, and accepted Propositions~\ref{prop:step-014-vc-arm}, \ref{prop:step-015-kernel}, \ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and \ref{prop:step-015-rate}, the deterministic choice of the least certified complete-arm threshold gives, for every fixed allowed \(\delta\), \(m_C\le K_*\Lambda^6\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\), where \(K_*\) is universal; for infinite \(C\), only \(R_{\mathrm{fin}}\) is \(+\infty\). | Takes the minimum only after certifying a common kernel/output/decoder/DP/PAC/rate interface, and selects one law rather than mixing laws. |
| `unit_007` | proposition | Under Assumptions~\ref{assump:finite-littlestone}, \ref{assump:countable-evaluation-quotient}, \ref{assump:realizable-iid}, and \ref{assump:approximate-dp-regime}, Proposition~\ref{prop:step-016-minimum}, and accepted Propositions~\ref{prop:step-014-vc-arm} and \ref{prop:step-015-boundaries}, the exact \(d=0\), \(v=1\), \(v=d\), finite/infinite, fixed/scheduled \(\delta\), and source-scope baselines hold; at fixed \(\alpha,\beta,\varepsilon\) under the declared source-compatible schedule, \(m_C=\widetilde O(\min\{\log^+|C|,d^5,vd^4\})\), with \(vd^4=o(d^5)\) when \(v=o(d)\) and \(vd^4=d^5\) at \(v=d\). | Exports exactly the formalized frontier and strict structural specializations without claiming a characterization or unrestricted theorem. |

Atomic step = no. The null law, kernel construction, all-input privacy,
unconditional risk tail, finite-rate normalization, complete-arm minimum, and
boundary/frontier specialization are seven independent nontrivial
obligations.

## Cited Result Applications

No external theorem is invoked to prove the finite arm. The finite-class
private-ERM/exponential-mechanism citation in the accepted sketch records
lineage only. Proposition~\ref{prop:step-016-finite-dp} derives the full
privacy ratio, and Lemma~\ref{lem:step-016-finite-tail} derives the full
utility calculation. In particular, no unchecked theorem label from
Kasiviswanathan et al. is proof authority here.

### Accepted Step 002 quotient, transport, and risk results

- Restated result: Under the primitive assumptions discharged in its accepted
  proof, \(c\mapsto\bar c\) is a bijection, \(H_C\) is the stated
  standard-Borel output space, \(T_N\) is measurable and maps raw neighbors
  to equality or quotient neighbors, and (D.1) holds. Under realizable iid
  sampling, \((T_N)_\#P_{D,c}^N=P_{\bar D,\bar c}^N\).
- Instantiated objects: the fixed finite set \(\bar C\subseteq H_C\), the
  empirical mistake-count law on \(Z_Q^N\), its raw pullback, and the raw and
  quotient bad-risk events.
- Assumption discharge: accepted Step 002 derives these conclusions from
  Assumptions~\ref{assump:finite-littlestone},
  \ref{assump:countable-evaluation-quotient}, and
  \ref{assump:realizable-iid}; its accepted proof/review hashes are recorded
  above.
- Conclusion used: \(|\bar C|=|C|\), exact raw adjacency transport, exact iid
  probability transport, and zero-residual decoded-risk transport.

### Accepted Step 003 kernel promotion

- Restated result: On every countable-discrete quotient input \(Z_Q^N\), any
  everywhere-defined assignment of a Borel probability law on \(H_C\) is a
  Markov kernel. Composing such a kernel with measurable \(T_N\) gives a raw
  Markov kernel with the same output codomain.
- Instantiated objects: the finite exponential-weight law (2.2) below and its
  pullback \(A_N^{\mathrm{fin}}\).
- Assumption discharge: Assumption~\ref{assump:countable-evaluation-quotient}
  and accepted Step 002 provide the countable-discrete input, standard-Borel
  output, and measurable record map.
- Conclusion used: measurable quotient and raw finite-arm kernels, including
  arbitrary labels and \(N=0\).

### Accepted Step 014 normalized VC arm

- Restated result: Under all four setting assumptions, there is a complete
  quotient-first VC-sensitive learner with quotient output in \(H_C\), raw
  pullback through \(T_{N_{\mathrm V}}\), all-input
  \((\varepsilon,\delta)\)-DP, and
  \[
  \sup_D\sup_{c\in C}
  \Pr[\operatorname{err}_D(\operatorname{Dec}_C(\bar H_{\mathrm V}),c)
  >\alpha]\le\beta.
  \]
  It uses the shared no-data law when \(d=0\). When \(d\ge1\), universal
  \(K_{\mathrm V}\ge1\) and \(q_{\mathrm V}=4\) give
  \[
  N_{\mathrm V}\le K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}.
  \tag{C.V}
  \]
  Along exactly \(\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0\),
  \(N_{\mathrm V}\delta\to0\); fixed positive \(\delta\) gives no such
  limit.
- Instantiated objects: the accepted
  \(K_C^{\mathrm{VC\text{-}Lyu}}\), its raw pullback, the setting decoder,
  and its actual sample size \(N_{\mathrm V}\).
- Assumption discharge: all kernel, raw-neighbor, event, privacy, PAC, and rate
  interfaces were derived in accepted dependencies and assembled by accepted
  Proposition~\ref{prop:step-014-vc-arm}.
- Conclusion used: one complete learner threshold in the deterministic
  minimum, plus its exact null and schedule boundaries.

### Accepted Step 015 normalized old-Lyu arm

- Restated result: Under all four setting assumptions, accepted
  Propositions~\ref{prop:step-015-kernel}, \ref{prop:step-015-dp}, and
  \ref{prop:step-015-pac} give a complete quotient-first old-Lyu learner with
  output in \(H_C\), raw pullback through \(T_{N_{\mathrm o}}\), all-input
  \((\varepsilon,\delta)\)-DP, and the same uniform raw decoded-risk failure
  probability at most \(\beta\). Accepted
  Proposition~\ref{prop:step-015-rate} gives
  \[
  N_{\mathrm o}\le K_{\mathrm o}\Lambda^6R_{\mathrm{old}}
  \tag{C.O}
  \]
  for universal \(K_{\mathrm o}\ge1\). Accepted
  Propositions~\ref{prop:step-015-zero} and
  \ref{prop:step-015-boundaries} give the shared \(d=0\) law, validity for
  finite and infinite \(C\) and every fixed \(0<\delta<1\), and the separate
  implication
  \[
  \delta K_{\mathrm o}\Lambda^6R_{\mathrm{old}}\to0
  \quad\Longrightarrow\quad N_{\mathrm o}\delta\to0.
  \tag{C.O\delta}
  \]
  The VC-arm schedule is not asserted to imply this standalone old-arm
  condition.
- Instantiated objects: the accepted
  \(K_C^{\mathrm{old\text{-}Lyu}}\), its raw pullback, the setting decoder,
  and \(N_{\mathrm o}\).
- Assumption discharge: Step 015 independently derived its quotient kernel,
  privacy, marked reconstruction, PAC ledger, and rate; no VC-arm success
  output was used.
- Conclusion used: the second complete threshold in the deterministic minimum
  and the old arm's separate numerical schedule.

### Local result application ledger

| Result | Restated conclusion | Used by |
| --- | --- | --- |
| Proposition~\ref{prop:step-016-zero} | At \(d=0\), all arms are the same exact no-data law, with zero risk and \((0,0)\)-DP. | Propositions~\ref{prop:step-016-finite-arm}, \ref{prop:step-016-minimum}, and \ref{prop:step-016-frontier}. |
| Proposition~\ref{prop:step-016-finite-kernel} | For every finite \(M\) and every \(N\), (2.4) is a quotient kernel and its composition with \(T_N\) is a raw kernel on the setting interface. | Proposition~\ref{prop:step-016-finite-dp}, Lemma~\ref{lem:step-016-finite-tail}, and Proposition~\ref{prop:step-016-finite-arm}. |
| Proposition~\ref{prop:step-016-finite-dp} | The finite quotient and raw laws are pure \(\varepsilon\)-DP on all inputs. | Proposition~\ref{prop:step-016-finite-arm}. |
| Lemma~\ref{lem:step-016-finite-tail} | The uniform unconditional raw bad-risk probability is at most \(M e^{-N\varepsilon\alpha/4}\). | Proposition~\ref{prop:step-016-finite-arm}. |
| Proposition~\ref{prop:step-016-finite-arm} | The complete finite arm has \(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\), or cost \(+\infty\) when \(C\) is infinite. | Proposition~\ref{prop:step-016-minimum}. |
| Proposition~\ref{prop:step-016-minimum} | A deterministic selection of one complete learner gives the common \(K_*\Lambda^6\) minimum bound. | Proposition~\ref{prop:step-016-frontier}. |

## Local Derivation

### unit_001: proposition

**Proposition (Shared exact zero-sample learner).**
\(\label{prop:step-016-zero}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:countable-evaluation-quotient}, accepted
Lemma~\ref{lem:step-002-ld}, accepted
Proposition~\ref{prop:step-014-vc-arm}, and accepted
Proposition~\ref{prop:step-015-zero}, if \(d=0\), then \(v=0\),
\(C\) and \(\bar C\) are singletons, and the finite, old, and VC arms all
use the same \(N=0\) Dirac quotient law at the unique
\(\bar c_0\in\bar C\). Its raw pullback along \(T_0\) is the same Dirac
kernel, is \((0,0)\)-DP, and has decoded risk zero for every \(D,c\).
Consequently \(m_C(\alpha,\beta;\varepsilon,\delta)=0\).

**Proof.** Accepted Lemma~\ref{lem:step-002-ld} proves that a nonempty
Littlestone-dimension-zero class cannot contain two distinct functions: two
functions differing at one point would shatter a depth-one tree. It also
gives the corresponding singleton conclusion for \(\bar C\), and accepted
Lemma~\ref{lem:step-002-vc} gives \(v=0\). Thus there is only one possible
quotient concept \(\bar c_0\).

Define the finite-arm law on the one-point empty-input space by
\[
K^{\mathrm{fin}}_{C,0}(\varnothing,E)=\mathbf 1_E(\bar c_0).
\tag{1.1}
\]
This is a Markov kernel, and its raw pullback along the unique \(T_0\) is
identical. Since the kernel is data independent, it is \((0,0)\)-DP. The
bijection and risk identity (D.1) show that its decoded output is the unique
raw target and hence has risk zero for every \(D\). Accepted
Propositions~\ref{prop:step-014-vc-arm} and
\ref{prop:step-015-zero} define their null branches by this same unique
quotient output. Therefore the three laws are literally identical, not merely
equivalent in risk. The definition of \(m_C\) then gives \(m_C=0\). No
positive-dimensional denominator, ceiling, or limiting argument is used.
\(\square\)

### unit_002: proposition

**Proposition (Measurable finite quotient exponential-weight kernel).**
\(\label{prop:step-016-finite-kernel}\)
Under Assumptions~\ref{assump:countable-evaluation-quotient} and
\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-002-factorization},
\ref{prop:step-002-record-map}, and
\ref{prop:step-003-raw-pullback}, and accepted
Lemma~\ref{lem:step-003-countable-promotion}, if
\(M:=|C|<\infty\) and \(N\in\mathbb N_0\), then empirical-mistake
exponential weights on the fixed finite class \(\bar C\) define an
everywhere-total Markov kernel
\(K^{\mathrm{fin}}_{C,N}:Z_Q^N\leadsto H_C\). Its raw pullback
\[
A_N^{\mathrm{fin}}(s,E)
:=K^{\mathrm{fin}}_{C,N}(T_N(s),E)
\tag{2.1}
\]
is a Markov kernel \(Z_X^N\leadsto H_C\). Both laws release in the setting's
output space and use \(\operatorname{Dec}_C\) only after release. The law is
defined on every labeled input, including nonrealizable inputs.

**Proof.** Accepted Proposition~\ref{prop:step-002-factorization} is a
bijection, so \(|\bar C|=M\ge1\). For a quotient sample
\(\bar s=((q_r,y_r))_{r=1}^N\) and \(\bar h\in\bar C\), define the
empirical mistake count
\[
L_{\bar s}(\bar h)
:=\sum_{r=1}^N\mathbf 1\{\bar h(q_r)\ne y_r\}.
\tag{2.2}
\]
This definition uses arbitrary labels and has \(L_\varnothing=0\). Put
\[
w_{\bar s}(\bar h):=
\exp\!\left(-\frac{\varepsilon}{2}L_{\bar s}(\bar h)\right),
\qquad
Z_{\bar s}:=\sum_{\bar g\in\bar C}w_{\bar s}(\bar g),
\tag{2.3}
\]
and, for \(E\in\mathcal H_C\),
\[
K^{\mathrm{fin}}_{C,N}(\bar s,E)
:=\frac{\displaystyle
\sum_{\bar h\in\bar C}\mathbf1_E(\bar h)w_{\bar s}(\bar h)}
{Z_{\bar s}}.
\tag{2.4}
\]
Every weight is strictly positive, and the fixed sum has exactly \(M\)
terms. Thus \(0<Z_{\bar s}<\infty\), so (2.4) is an everywhere-defined
Borel probability measure supported on the fixed set \(\bar C\subseteq H_C\).
No empirical subclass or data-dependent range is used.

The domain \(Z_Q^N\) is countable discrete. Accepted
Lemma~\ref{lem:step-003-countable-promotion} therefore makes the arbitrary
pointwise family (2.4) a Markov kernel; equivalently, for every fixed \(E\),
its event-mass coordinate is automatically measurable on the full power-set
sigma-field. Each support singleton is Borel because \(H_C\) is standard
Borel. Accepted Proposition~\ref{prop:step-002-record-map} makes \(T_N\)
measurable, and accepted Proposition~\ref{prop:step-003-raw-pullback} now
gives (2.1). The codomain remains exactly \(H_C\); decoding is the unchanged
setting map. \(\square\)

### unit_003: proposition

**Proposition (Pure all-input privacy of finite private ERM).**
\(\label{prop:step-016-finite-dp}\)
Under Assumptions~\ref{assump:countable-evaluation-quotient} and
\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-002-record-map}, and
Proposition~\ref{prop:step-016-finite-kernel}, if \(M<\infty\), then for
every \(N\in\mathbb N_0\), the quotient kernel
\(K^{\mathrm{fin}}_{C,N}\) and its raw pullback
\(A_N^{\mathrm{fin}}\) are pure \(\varepsilon\)-DP on all replace-one
labeled inputs. Hence they are \((\varepsilon,\delta)\)-DP for every allowed
\(0<\delta<1\).

**Proof.** Let \(\bar s\sim\bar s'\) be quotient replace-one samples. For
every \(\bar h\in\bar C\), only one summand in (2.2) can change, whence
\[
|L_{\bar s}(\bar h)-L_{\bar s'}(\bar h)|\le1.
\tag{3.1}
\]
Thus the score \(-L_{\bar s}(\bar h)\) has replacement sensitivity one, and
(2.3) gives the two pointwise inequalities
\[
e^{-\varepsilon/2}w_{\bar s'}(\bar h)
\le w_{\bar s}(\bar h)
\le e^{\varepsilon/2}w_{\bar s'}(\bar h).
\tag{3.2}
\]
For an arbitrary \(E\in\mathcal H_C\), denote the numerator in (2.4) by
\(W_{\bar s}(E)\). Summing the upper inequality in (3.2) over
\(\bar C\cap E\), and the lower inequality over all of \(\bar C\), yields
\[
W_{\bar s}(E)\le e^{\varepsilon/2}W_{\bar s'}(E),
\qquad
Z_{\bar s}\ge e^{-\varepsilon/2}Z_{\bar s'}.
\tag{3.3}
\]
Consequently
\[
K^{\mathrm{fin}}_{C,N}(\bar s,E)
=\frac{W_{\bar s}(E)}{Z_{\bar s}}
\le e^\varepsilon
\frac{W_{\bar s'}(E)}{Z_{\bar s'}}
=e^\varepsilon K^{\mathrm{fin}}_{C,N}(\bar s',E).
\tag{3.4}
\]
This is the complete exponential-mechanism calculation; no privacy theorem
is cited. It uses neither realizability nor a utility event.

Accepted Proposition~\ref{prop:step-002-record-map} maps every raw neighbor
pair to equality or a quotient neighbor pair. Applying (3.4) after that map
proves the same pure inequality for \(A_N^{\mathrm{fin}}\), including
arbitrary nonrealizable labels and same-cell replacements. Finally, a pure
\(\varepsilon\)-DP inequality implies the setting's
\((\varepsilon,\delta)\)-DP inequality by adding any \(\delta>0\) to its
right side. \(\square\)

### unit_004: lemma

**Lemma (Direct unconditional realizable risk tail).**
\(\label{lem:step-016-finite-tail}\)
Under Assumptions~\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, accepted
Propositions~\ref{prop:step-002-iid-pushforward} and
\ref{prop:step-002-risk}, and
Proposition~\ref{prop:step-016-finite-kernel}, if \(M<\infty\), then for
every \(N\in\mathbb N_0\), every probability measure \(D\), and every
\(c\in C\),
\[
\Pr_{S\sim P_{D,c}^N,\,
\bar H\sim A_N^{\mathrm{fin}}(S,\cdot)}
\!\left[
\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha
\right]
\le M\exp\!\left(-\frac{N\varepsilon\alpha}{4}\right).
\tag{4.1}
\]
The probability is unconditional over both iid sampling and mechanism
randomness, and the bound is uniform in \(D,c\).

**Proof.** Work first on the quotient experiment. Fix \(D,c\), write
\(\bar c\in\bar C\) for the quotient target, and for
\(\bar h\in\bar C\) put
\[
p_{\bar h}:=
\operatorname{err}_{\bar D}(\bar h,\bar c).
\tag{4.2}
\]
Let \(\bar S\sim P_{\bar D,\bar c}^N\). Realizability gives
\(L_{\bar S}(\bar c)=0\) for every realized sample. Hence the target has
weight one and
\[
Z_{\bar S}\ge w_{\bar S}(\bar c)=1.
\tag{4.3}
\]
For each fixed \(\bar h\), (2.4) and (4.3) imply the pointwise conditional
bound
\[
K^{\mathrm{fin}}_{C,N}(\bar S,\{\bar h\})
\le \exp\!\left(-\frac\varepsilon2L_{\bar S}(\bar h)\right).
\tag{4.4}
\]
The \(N\) mistake indicators of this fixed \(\bar h\) are iid Bernoulli
with mean \(p_{\bar h}\). Therefore
\[
\begin{aligned}
\mathbb E\exp\!\left(-\frac\varepsilon2L_{\bar S}(\bar h)\right)
&=\left(1-p_{\bar h}+p_{\bar h}e^{-\varepsilon/2}\right)^N\\
&=\left[1-p_{\bar h}(1-e^{-\varepsilon/2})\right]^N\\
&\le
\exp\!\left[-Np_{\bar h}(1-e^{-\varepsilon/2})\right].
\end{aligned}
\tag{4.5}
\]
The last line uses \(1-u\le e^{-u}\), which follows directly from
\(e^t\ge1+t\) at \(t=-u\). To lower-bound the remaining coefficient, set
\(x=\varepsilon/2\in(0,1/2]\). Since \(e^x\ge1+x\),
\[
1-e^{-x}\ge1-\frac1{1+x}=\frac{x}{1+x}
\ge\frac x2=\frac\varepsilon4.
\tag{4.6}
\]

The bad subset
\(\mathcal B:=\{\bar h\in\bar C:p_{\bar h}>\alpha\}\) is finite. Taking
expectations in (4.4), using (4.5)-(4.6), and summing only over this fixed
finite set gives
\[
\begin{aligned}
\Pr[\operatorname{err}_{\bar D}(\bar H,\bar c)>\alpha]
&=\mathbb E_{\bar S}
\sum_{\bar h\in\mathcal B}
K^{\mathrm{fin}}_{C,N}(\bar S,\{\bar h\})\\
&\le\sum_{\bar h\in\mathcal B}
e^{-Np_{\bar h}(1-e^{-\varepsilon/2})}\\
&\le |\mathcal B|e^{-N\varepsilon\alpha/4}
\le Me^{-N\varepsilon\alpha/4}.
\end{aligned}
\tag{4.7}
\]
This calculation does not condition on a generalization event and does not
introduce a separate empirical-to-population sampling term.

Accepted Proposition~\ref{prop:step-002-iid-pushforward} identifies the raw
sample's quotient image with the quotient iid law, and accepted
Proposition~\ref{prop:step-002-risk} identifies the measurable bad-risk
events pointwise. Thus (4.7) is exactly the raw probability in (4.1).
Nothing in the bound depends on \(D\) or \(c\), so both suprema are valid.
\(\square\)

### unit_005: proposition

**Proposition (Ceiling-aware complete finite-class arm).**
\(\label{prop:step-016-finite-arm}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime}, and
Propositions~\ref{prop:step-016-zero},
\ref{prop:step-016-finite-kernel}, and
\ref{prop:step-016-finite-dp}, and
Lemma~\ref{lem:step-016-finite-tail}, if \(M=|C|<\infty\), then the finite
arm is a measurable quotient-first learner whose raw pullback is pure
\(\varepsilon\)-DP, hence \((\varepsilon,\delta)\)-DP, and whose uniform
realizable decoded-risk failure probability is at most \(\beta\). It uses
\(N_{\mathrm{fin}}=0\) when \(d=0\). When \(d\ge1\), it uses
\[
N_{\mathrm{fin}}
:=\left\lceil
\frac{4(\log M+\log(1/\beta))}{\varepsilon\alpha}
\right\rceil
\tag{5.1}
\]
and satisfies the exact normalized bound
\[
N_{\mathrm{fin}}
\le8R_{\mathrm{fin}}(M,\alpha,\beta,\varepsilon).
\tag{5.2}
\]
Thus one may take \(K_{\mathrm{fin}}=8\) and
\(q_{\mathrm{fin}}=0\), with no hidden positive power or sampling term.

If \(|C|=\infty\), define the finite arm's certified cost to be
\(B_{\mathrm{fin}}:=+\infty\) and construct no finite-arm law or finite
surrogate.

**Proof.** The \(d=0\) case is exactly
Proposition~\ref{prop:step-016-zero}. Here \(M=1\), \(\log M=0\), and
\(\log^+M=1\), but the shared exact learner uses no samples; in particular,
\(0\le8R_{\mathrm{fin}}\).

Suppose \(d\ge1\) and \(M<\infty\). Then \(C\) is not a singleton, so
\(M\ge2\), although the following normalization needs only \(M\ge1\).
Write \(b:=\log(1/\beta)\). Definition (5.1) gives
\[
\frac{N_{\mathrm{fin}}\varepsilon\alpha}{4}
\ge\log M+b.
\tag{5.3}
\]
Lemma~\ref{lem:step-016-finite-tail} and (5.3) therefore give
\[
\sup_D\sup_{c\in C}
\Pr[\operatorname{err}_D(\operatorname{Dec}_C(\bar H),c)>\alpha]
\le M e^{-\log M-b}=\beta.
\tag{5.4}
\]
Propositions~\ref{prop:step-016-finite-kernel} and
\ref{prop:step-016-finite-dp} supply the complete kernel and all-input
privacy interfaces at this actual integer sample size.

It remains to pay the ceiling and normalize to the setting's exact rate. Put
\[
x:=\frac{4(\log M+b)}{\varepsilon\alpha}.
\tag{5.5}
\]
Because \(b>\log4>1\), \(0<\varepsilon\le1\), and
\(0<\alpha<1/4\), one has \(x>16>1\). Hence
\[
N_{\mathrm{fin}}=\lceil x\rceil
\le x+1\le2x
=\frac{8(\log M+b)}{\varepsilon\alpha}.
\tag{5.6}
\]
For every finite nonempty class,
\(\log M\le\log^+M=\max\{1,\log M\}\). Therefore
\[
\begin{aligned}
N_{\mathrm{fin}}
&\le\frac{8(\log^+M+b)}{\varepsilon\alpha}\\
&\le8\left[
\frac{\log^+M+b}{\varepsilon\alpha}+\frac b\alpha
\right]
=8R_{\mathrm{fin}}.
\end{aligned}
\tag{5.7}
\]
The second summand in the setting's \(R_{\mathrm{fin}}\) is used only as
nonnegative slack in the last inequality. The direct tail (4.7) did not
create a \(\log M/\alpha\) or any other sampling term. All constants in
(5.1)-(5.7) are numerical, and no factor \(\Lambda\) is needed.

For infinite \(C\), the setting already defines \(\log^+|C|=+\infty\).
Assigning cost \(+\infty\) disables precisely this arm and does not define a
data-dependent finite subset of \(C\) or \(\bar C\). \(\square\)

### unit_006: proposition

**Proposition (Minimum of three complete common-interface learners).**
\(\label{prop:step-016-minimum}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime},
Proposition~\ref{prop:step-016-finite-arm}, accepted
Proposition~\ref{prop:step-014-vc-arm}, and accepted
Propositions~\ref{prop:step-015-kernel},
\ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and
\ref{prop:step-015-rate}, there is a universal
\[
K_*:=\max\{8,K_{\mathrm o},K_{\mathrm V}\}\ge1
\tag{6.1}
\]
such that, for every fixed allowed \(0<\delta<1\),
\[
m_C(\alpha,\beta;\varepsilon,\delta)
\le K_*\Lambda^6
\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}.
\tag{6.2}
\]
The minimum selects one complete learner before data are observed; it does
not mix learner laws. For infinite \(C\), the extended-real value
\(R_{\mathrm{fin}}=+\infty\) removes only the finite arm.

**Proof.** The \(d=0\) case is already exact: by
Proposition~\ref{prop:step-016-zero}, \(m_C=0\), so (6.2) follows from the
nonnegativity of the three displayed rates. Assume henceforth \(d\ge1\).

The completed arm certificates are as follows.

| Arm | Quotient and raw kernels | Output and decoder | All-input privacy | Uniform realizable PAC | Certified cost |
| --- | --- | --- | --- | --- | --- |
| finite, when \(M<\infty\) | \(K^{\mathrm{fin}}_{C,N_{\mathrm{fin}}}\) and \(A^{\mathrm{fin}}_{N_{\mathrm{fin}}}=K^{\mathrm{fin}}_{C,N_{\mathrm{fin}}}\circ T_{N_{\mathrm{fin}}}\) | \(H_C\), then \(\operatorname{Dec}_C\) | pure \(\varepsilon\)-DP, hence \((\varepsilon,\delta)\)-DP | raw decoded-risk failure at most \(\beta\) | \(B_{\mathrm{fin}}:=8R_{\mathrm{fin}}\) |
| old | accepted \(K_C^{\mathrm{old\text{-}Lyu}}\) and its raw pullback through \(T_{N_{\mathrm o}}\) | \(H_C\), then \(\operatorname{Dec}_C\) | \((\varepsilon,\delta)\)-DP | the same raw decoded-risk failure at most \(\beta\) | \(B_{\mathrm o}:=K_{\mathrm o}\Lambda^6R_{\mathrm{old}}\) |
| VC | accepted \(K_C^{\mathrm{VC\text{-}Lyu}}\) and its raw pullback through \(T_{N_{\mathrm V}}\) | \(H_C\), then \(\operatorname{Dec}_C\) | \((\varepsilon,\delta)\)-DP | the same raw decoded-risk failure at most \(\beta\) | \(B_{\mathrm V}:=K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\) |

Every row is a complete Markov-kernel learner on all raw labeled inputs. The
PAC statement in each row is unconditional, is uniform over the same
\(D,c\), uses binary population risk, and has confidence \(1-\beta\).
Equation (D.1) is the common zero-residual quotient/raw risk bridge. The laws
need not be equal on the positive-dimensional branch; their mathematical
interfaces are equal.

If \(M=\infty\), set \(B_{\mathrm{fin}}=+\infty\) and omit that row from
selection. Both Lyu bounds are finite under the fixed parameter regime, so at
least one arm remains. If \(M<\infty\), all three rows are available. Choose
an index \(j_*\) minimizing the certified real thresholds
\(B_{\mathrm{fin}},B_{\mathrm o},B_{\mathrm V}\), with a fixed
data-independent tie rule. This choice is a function only of
\(C,d,v,\alpha,\beta,\varepsilon,\delta\), on which the definition of
\(m_C\) permits the learner to depend. Run the single complete learner in
row \(j_*\), using its own integer sample size \(N_{j_*}\). No random arm
choice, sample splitting across arms, post-selection, or mixture occurs.

Each row's actual sample size is bounded by its own threshold, so
\[
m_C\le N_{j_*}\le B_{j_*}
=\min\{B_{\mathrm{fin}},B_{\mathrm o},B_{\mathrm V}\}.
\tag{6.3}
\]
The setting definition gives \(\Lambda\ge1\). With (6.1),
\[
\begin{aligned}
B_{\mathrm{fin}}&\le K_*\Lambda^6R_{\mathrm{fin}},\\
B_{\mathrm o}&\le K_*\Lambda^6R_{\mathrm{old}},\\
B_{\mathrm V}&\le K_*\Lambda^6R_{\mathrm{VC}}.
\end{aligned}
\tag{6.4}
\]
Taking the minimum in (6.4) and applying (6.3) proves (6.2), including the
extended-real infinite-class convention. None of these finite-parameter
inequalities uses an asymptotic condition on \(\delta\). \(\square\)

### unit_007: proposition

**Proposition (Boundary-preserving fixed-parameter frontier).**
\(\label{prop:step-016-frontier}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient},
\ref{assump:realizable-iid}, and
\ref{assump:approximate-dp-regime},
Proposition~\ref{prop:step-016-minimum}, accepted
Proposition~\ref{prop:step-014-vc-arm}, and accepted
Proposition~\ref{prop:step-015-boundaries}, the following exact boundary and
specialization statements hold.

1. If \(d=0\), then \(v=0\), \(|C|=1\), and the selected law is the shared
   zero-sample law of Proposition~\ref{prop:step-016-zero}; in particular,
   \(m_C=0\). No positive-dimensional rate is evaluated.
2. If \(d\ge1\), then \(1\le v\le d\). At \(v=1\), the VC arm's exposed
   structural factor is \(d^4\). At \(v=d\),
   \[
   vd^4=d\,d^4=d^5
   \tag{7.1}
   \]
   exactly, with no hidden positive power changing the equality. More
   generally \(v=\Theta(d)\) gives the \(d^5\) polynomial scale.
3. If \(C\) is finite, all three complete arms are available and the finite
   arm exposes \(\log^+|C|\). If \(C\) is infinite, then
   \(R_{\mathrm{fin}}=+\infty\), no finite surrogate is constructed, and the
   old and VC arms remain unchanged and available.
4. For every fixed \(0<\delta<1\), the kernel, privacy, PAC, and full
   finite-parameter minimum (6.2) are valid. No statement
   \(N\delta\to0\) follows from fixed positive \(\delta\).
5. On \(d\ge1\), let \(N_*:=N_{j_*}\) be the actual sample size selected in the proof of
   Proposition~\ref{prop:step-016-minimum}. Since its threshold is minimal,
   \[
   0\le N_*\delta
   \le\delta\min\{B_{\mathrm{fin}},B_{\mathrm o},B_{\mathrm V}\}
   \le\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}.
   \tag{7.2}
   \]
   Hence the setting's explicit schedule
   \(\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0\) implies
   \(N_*\delta\to0\), whichever complete arm wins the deterministic
   comparison. This implication is not asserted under a weaker premise.
   If the standalone old arm's own sample size is being studied rather than
   the minimizing selected learner, accepted Step 015 supplies only
   \[
   \delta K_{\mathrm o}\Lambda^6R_{\mathrm{old}}\to0
   \quad\Longrightarrow\quad N_{\mathrm o}\delta\to0;
   \tag{7.3}
   \]
   the VC schedule is not silently substituted for (7.3). The finite arm is
   pure DP and needs no \(\delta\)-schedule for privacy; no numerical
   \(N_{\mathrm{fin}}\delta\) limit is claimed unless a corresponding scalar
   domination is supplied.
6. Fix \(\alpha,\beta,\varepsilon\) and restrict the source-facing
   asymptotic comparison to the declared scheduled-small-\(\delta\)
   convention. On \(d\ge1\), \(\log(1/\beta)\) is fixed and \(v\ge1\), so
   the three displayed rate expressions have polynomial class-complexity
   profiles
   \[
   R_{\mathrm{fin}}:\ \log^+|C|,
   \qquad
   R_{\mathrm{old}}:\ d^5,
   \qquad
   R_{\mathrm{VC}}:\ vd^4,
   \tag{7.4}
   \]
   with only the setting-permitted displayed logarithmic factors suppressed.
   Thus (6.2) is exactly the formalized shorthand
   \[
   m_C(\alpha,\beta;\varepsilon,\delta)
   =\widetilde O\!\left(
   \min\{\log^+|C|,d^5,vd^4\}
   \right).
   \tag{7.5}
   \]
   Here the first entry is \(+\infty\) for infinite \(C\).
7. The comparison between the two Lyu certificates is an exposed structural
   upper-bound comparison:
   \[
   \frac{vd^4}{d^5}=\frac vd.
   \tag{7.6}
   \]
   Consequently \(v=o(d)\) gives \(vd^4=o(d^5)\), while
   \(v=\Theta(d)\) returns to the \(d^5\) scale and \(v=d\) gives the exact
   identity (7.1). This does not assert a lower bound on \(m_C\), and
   arm-specific displayed logarithms remain governed by the setting's tilde
   convention.
8. All conclusions remain conditional on the primitive finite-or-countable
   measurable evaluation quotient. They do not cover uncountably many
   evaluation types, characterize private sample complexity, or prove a
   universal \(\operatorname{poly}(v,\log d)\) or
   \(\operatorname{poly}(v,\log^*d)\) bound.

**Proof.** Item 1 is Proposition~\ref{prop:step-016-zero}. Conversely, a
singleton binary class shatters no one-point set or depth-one tree, so the
singleton and \(d=0\) branches coincide. If \(d\ge1\), two concepts differ
at some point, and that point is VC-shattered; hence \(v\ge1\). If a set
\(\{x_1,\ldots,x_r\}\) is VC-shattered, label every node at tree depth
\(j<r\) by \(x_{j+1}\). Every root-to-leaf binary labeling is realized by
a concept, so this is a Littlestone-shattered tree of depth \(r\). Therefore
\(v\le d\). Direct substitution now proves Items 2 and 7. Proposition
\ref{prop:step-016-finite-arm} and the extended-real convention in
Proposition~\ref{prop:step-016-minimum} prove Item 3. The final sentence of
that minimum proposition, together with pure privacy of the finite arm and
the fixed-parameter statements of accepted Steps 014 and 015, proves Item 4.

For Item 5, (6.3) makes \(N_*\) no larger than every available certified
threshold, in particular \(B_{\mathrm V}\); multiplying by \(\delta\) gives
(7.2). The squeeze proves the selected-learner limit only under the exact
setting schedule. Equation (7.3) is the separate accepted old-arm statement,
not a consequence newly inferred here.

For Items 6 and 7, with \(\alpha,\beta,\varepsilon\) fixed, the coefficients
and additive confidence quantities are fixed. Since \(v\ge1\), the first
term of \(R_{\mathrm{VC}}\) has exposed polynomial factor \(vd^4\); accepted
Step 014 already proves that the lower-order displayed term introduces no
larger positive power. Accepted Step 015 exposes exactly \(d^5\), and
Proposition~\ref{prop:step-016-finite-arm} exposes exactly
\(\log^+|C|\). Equation (6.2) then gives (7.5), with the universal
\(K_*\Lambda^6\) hiding only permitted logarithms. The quotient and
open-problem scope in Item 8 is precisely the unchanged formalized setting.
\(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-016-zero} first isolates the exact common
\(d=0\) law. On the finite positive-dimensional branch,
Proposition~\ref{prop:step-016-finite-kernel} constructs the total
finite-range quotient law and raw pullback on the same \(H_C,T_N\), and
decoder interface as the accepted arms. Proposition
\ref{prop:step-016-finite-dp} proves pure all-input privacy by the two
sensitivity-one weight comparisons (3.2)-(3.4). Lemma
\ref{lem:step-016-finite-tail} uses the realizable target's unit weight and
the exact Bernoulli transform to prove the unconditional uniform risk tail
(4.1), without a separate sampling event. Proposition
\ref{prop:step-016-finite-arm} chooses the actual integer sample size, pays
the ceiling, handles \(M=1\) and \(\log^+M\), and proves
\(N_{\mathrm{fin}}\le8R_{\mathrm{fin}}\); it assigns cost \(+\infty\) and
constructs no law when \(C\) is infinite.

Accepted Proposition~\ref{prop:step-014-vc-arm} supplies the complete
VC-arm tuple. Accepted Propositions~\ref{prop:step-015-kernel},
\ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and
\ref{prop:step-015-rate} supply the independently complete old-arm tuple.
Only after those interfaces and the finite tuple are present does
Proposition~\ref{prop:step-016-minimum} chooses one entire learner by a
deterministic threshold comparison and derive
\(K_*\Lambda^6\min\{R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\}\).
No probability law is averaged or spliced across arms.

Finally, Proposition~\ref{prop:step-016-frontier} proves every required null,
dimension, cardinality, fixed-\(\delta\), scheduled-\(\delta\), and scaling
specialization. It separates the selected learner's setting schedule from
the standalone old arm's condition and states the exact conditional frontier
without upgrading it to a characterization or unrestricted solution. These
seven named results jointly prove every clause of the exact sketch row and
the controller-expanded target. The global diagnostic is not mathematical
authority for any assembly link.

## Explicit Rate Audit

- Exposed variables:
  \(|C|,d,v,\alpha,\beta,\varepsilon,\delta\). The finite arm exposes
  \(|C|\) only through \(\log^+|C|\); the old and VC rates retain exactly the
  setting's displayed variables.
- Hidden constants may depend on:
  nothing variable. The new finite constant is the explicit number
  \(K_{\mathrm{fin}}=8\), with \(q_{\mathrm{fin}}=0\). The accepted
  \(K_{\mathrm V}\), \(K_{\mathrm o}\) are universal, and
  \(K_*=\max\{8,K_{\mathrm o},K_{\mathrm V}\}\) is universal. The common
  logarithmic exponent is the explicit integer \(6\).
- Hidden constants may not depend on:
  \(X,\Sigma,C,D,c,|C|,d,v,\alpha,\beta,\varepsilon,\delta\), any sample,
  generated subclass, partition, list, event, support, kernel realization,
  output, or selected arm.
- Fixed quantities:
  none for the finite-parameter theorem (6.2), which holds for every fixed
  allowed parameter tuple. The shorthand (7.5) fixes
  \(\alpha,\beta,\varepsilon\) and uses only the declared
  scheduled-small-\(\delta\) comparison.
- Probability mode:
  deterministic all-input replace-one DP for every raw labeled neighbor pair
  and measurable released-output event; unconditional high-probability PAC
  over iid sampling and the selected mechanism's randomness. The finite arm
  is pure DP. Each arm's PAC probability has the same two suprema over
  \(D,c\) and confidence \(1-\beta\).
- Horizon mode:
  one fixed sample for the one arm selected before data. There is no
  all-time, stopping-time, or data-dependent arm-selection upgrade.
- Norm mode:
  binary population zero-one risk, with exact equality (D.1) between each
  quotient output and its raw decoded output.
- Admissibility conditions and auxiliary tolerances:
  exactly the four setting assumptions. The finite branch uses the target
  case \(M<\infty\), not an added global assumption. The infinite branch
  assigns only its finite-arm cost \(+\infty\). There is no generated event
  or auxiliary confidence split in the finite proof.
- Ceiling and normalization inequalities:
  (5.3) verifies the PAC threshold; (5.5)-(5.6) use
  \(x>16\) to prove \(\lceil x\rceil\le2x\); and (5.7) uses
  \(\log M\le\log^+M\) and the nonnegative second summand of
  \(R_{\mathrm{fin}}\). The singleton uses the exact \(N=0\) branch.
- Term absorption or simplification inequalities:
  (4.6) proves \(1-e^{-\varepsilon/2}\ge\varepsilon/4\);
  (4.7) proves the complete mechanism-and-sample tail;
  (6.3)-(6.4) prove the common minimum; and (7.6) proves the structural
  VC/old comparison. No positive power is absorbed by prose. No separate
  finite-class sampling term is introduced.
- Probability conversion:
  accepted Step 002 gives exact sample pushforward and exact risk equality,
  so the quotient tail (4.7) equals the raw tail (4.1) without a confidence
  loss. The minimum chooses one already valid probability law and performs no
  union bound over arms.
- Contribution to the Rate Specialization Bridge:
  Proposition~\ref{prop:step-016-finite-arm} is the complete finite-arm
  bridge; Proposition~\ref{prop:step-016-minimum} aligns all three completed
  interfaces and constants; Proposition~\ref{prop:step-016-frontier} derives
  the exact fixed-parameter and source-facing specializations.
- Baseline-reduction check:
  \(d=0\) is exact zero-sample recovery; \(v=1\) has exposed \(d^4\);
  \(v=d\) gives \(vd^4=d^5\) exactly; finite and infinite class behavior is
  explicit; fixed positive \(\delta\) retains finite-parameter validity; the
  selected learner has \(N_*\delta\to0\) only under (7.2), while the
  standalone old arm uses the separate sufficient condition (7.3).

## Boundary And Degeneracy Audit

| Boundary or stress case | Resolution |
| --- | --- |
| \(d=0\), equivalently the singleton class | Proposition~\ref{prop:step-016-zero} gives \(v=0\), \(M=1\), the identical three-arm \(N=0\) Dirac law, \((0,0)\)-DP, zero decoded risk, and \(m_C=0\). No positive-branch expression is evaluated. |
| \(M=1\) and \(\log M=0\) | The singleton is the null branch. The exact sample size is zero, while \(\log^+M=1\) makes the displayed \(R_{\mathrm{fin}}\) envelope positive and therefore valid without replacing the exact conclusion. |
| First positive branch and \(v=1\) | Proposition~\ref{prop:step-016-frontier} directly proves \(1\le v\le d\). At \(v=1\), the VC arm exposes \(d^4\), and the finite mechanism remains legal for every finite \(M\ge2\). |
| \(v=d\) and \(v=\Theta(d)\) | Equation (7.1) gives \(vd^4=d^5\) exactly; \(v=\Theta(d)\) has the same polynomial scale. No factor in \(K_*\Lambda^6\) hides a positive power of \(v\) or \(d\). |
| \(v=o(d)\) | Equation (7.6) gives the exposed ratio \(v/d\to0\). This is a comparison of certified upper-bound arms, not a lower bound or characterization of \(m_C\). |
| Finite \(C\) | The mechanism range is the fixed entire quotient class \(\bar C\), with \(|\bar C|=|C|\). Equations (5.5)-(5.7) pay the integer ceiling and the \(\log M\le\log^+M\) boundary. |
| Infinite \(C\) | The finite cost and \(R_{\mathrm{fin}}\) are \(+\infty\), no finite law or surrogate is constructed, and the accepted old and VC arms remain available. |
| Arbitrary labels and nonrealizable privacy inputs | Equation (3.1) holds for every replace-one labeled quotient pair, and accepted raw neighbor transport includes label changes and same-cell replacements. Realizability is used only for the PAC target weight (4.3). |
| Every fixed \(0<\delta<1\) | All three complete arms and the finite-parameter minimum are valid. The finite arm is pure \(\varepsilon\)-DP. No numerical \(N\delta\) limit is inferred from fixed positive \(\delta\). |
| Selected learner under the setting schedule | Equation (7.2) uses the least-threshold property to give \(N_*\delta\le\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0\). This conclusion is asserted only under that displayed premise. |
| Standalone old arm schedule | Accepted Step 015 gives (7.3). The setting's VC schedule is not used as a substitute when the old arm's own \(N_{\mathrm o}\delta\) is the quantity under study. |
| Improper-output and decoder interface | The finite arm happens to release in \(\bar C\), while the accepted Lyu arms may be improper in \(H_C\). All three nevertheless release in the common measurable space \(H_C\) and use the same post-release decoder and exact risk identity. |

## Blockers

None.

## Notation And Assumption Notes

- Public-facing setting objects:
  \(Q_C,\bar C,H_C,T_N,\operatorname{Dec}_C,d,v,\alpha,\beta,\varepsilon,
  \delta,\Lambda,R_{\mathrm{fin}},R_{\mathrm{old}},R_{\mathrm{VC}}\) retain
  exactly their meanings in `setting.md`.
- Public-facing outputs proved here:
  \(K^{\mathrm{fin}}_{C,N_{\mathrm{fin}}}\),
  \(A^{\mathrm{fin}}_{N_{\mathrm{fin}}}\), \(N_{\mathrm{fin}}\), the
  explicit \(K_{\mathrm{fin}}=8,q_{\mathrm{fin}}=0\), and the universal
  common \(K_*\) and exponent \(6\). The selected learner interface in
  Proposition~\ref{prop:step-016-minimum} is public-facing, but its tie rule
  is not.
- Appendix-local objects:
  the empirical count \(L_{\bar s}\), weights \(w_{\bar s}\), normalizer
  \(Z_{\bar s}\), numerator \(W_{\bar s}(E)\), the three certified
  thresholds \(B_{\mathrm{fin}},B_{\mathrm o},B_{\mathrm V}\), and the exact
  ceiling expression (5.1). They expose the proof bridge but are not new
  theorem assumptions.
- Proof-local objects:
  \(p_{\bar h}\), \(\mathcal B\), \(b=\log(1/\beta)\), the ceiling helper
  \(x\), and the deterministic tie index \(j_*\). Each is defined directly
  from setting quantities or a fixed finite class and is eliminated from the
  final rate.
- Constant provenance:
  the factor \(1/2\) in (2.3) is the explicit sensitivity-one privacy
  calibration proved in (3.1)-(3.4); the factor \(1/4\) is proved in (4.6);
  the constants \(4\) and \(8\) in (5.1)-(5.7) follow from those inequalities
  and the paid ceiling. \(K_{\mathrm V}\) and \(K_{\mathrm o}\) are inherited
  only through current accepted dependency conclusions. No free finite
  constant is introduced.
- Generated-object provenance:
  every empirical count, weight, normalizer, bad-risk set, kernel, privacy
  inequality, and tail bound is proved in this step. The old and VC kernels,
  privacy statements, PAC events, and rates are accepted derived dependency
  outputs. None is primitive or a local conditional hypothesis.
- Common-interface note:
  the three positive-dimensional laws can be different measures and can use
  different sample sizes. What is common is the complete theorem interface:
  quotient-first Markov kernel, raw pullback through the same family \(T_N\),
  output \(H_C\), post-release decoder \(\operatorname{Dec}_C\), all-input
  replace-one \((\varepsilon,\delta)\)-DP, unconditional uniform
  \((\alpha,\beta)\)-PAC risk, and a certified rate. The minimum selects one
  such tuple before data; it never combines their laws.
- Finite/infinite note:
  \(\bar C\) is the fixed image of all of \(C\), not an empirical range. For
  infinite \(C\), no version-space truncation, trace representative, support
  restriction, or finite surrogate is defined.
- Schedule note:
  finite-parameter validity is independent of any limit. Equation (7.2) is
  the only selected-learner \(N\delta\) conclusion and uses the setting's
  explicit VC schedule. Equation (7.3) preserves accepted Step 015's separate
  sufficient condition for the standalone old arm. Pure privacy of the
  finite arm is not confused with a numerical \(N_{\mathrm{fin}}\delta\)
  limit.
- Diagnostic boundary:
  only Block L / Step 016 of the optional global diagnostic was read after
  verifying the paired global-proof review was current and `ACCEPTED`. Its
  planning suggestions were the direct finite exponential-weight calculation
  and deterministic comparison of complete thresholds. Every mathematical
  line above was independently proved from the setting, accepted dependencies,
  and earlier local units. The diagnostic was not used as evidence, a cited
  result, an assumption source, or authority to change the target claim.
