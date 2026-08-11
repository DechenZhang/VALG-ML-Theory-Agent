# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_015
- Unit attempt: 1
- Binding setting SHA-256:
  a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4
- Binding proof-sketch SHA-256:
  cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7
- Binding proof-sketch-review SHA-256:
  302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789
- Accepted dependency proof/review SHA-256 pairs:
  - step_002:
    880d635b12ba66b12f67b17dfc69ce6063b46f6798b7224d3c0ce4c051d5f52f /
    090b75852a690e27d744ed205dbb9a842b9ca7cf4963cc21f224457e388fa1c5;
  - step_003:
    092c5ba976f43a4b7d1bf746aba05c1caa0d49f2bd3de55a254f58dc6e4c4a7f /
    5ba08c887b44fc901e74bd3bc2793a06e3accf2a7d999f62532ec042c211eb87;
  - step_004:
    dde324f382fb084af67f773a97140eb205597d15f7ab9d83e13605bf62b80cc8 /
    254e4b8ef32bae1676cfb9512e4987bfdf81b629c38b193d4787dcf192b82fa0.
- Diagnostic planning pair, not proof evidence: global_proof.md SHA-256
  bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784
  and accepted global_proof_review.md SHA-256
  490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09.
- Frozen Lyu source: submission/main.tex from arXiv:2510.00076v1,
  SHA-256
  b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Target Step Claim

- Intended claim: Independently instantiate the quotient-first old-Lyu
  construction with coarse \(d\)-trace calibration and prove its own
  DP/PAC/rate bound.
- Depends on: step_002, step_003, step_004.
- Assumptions used: all four primitive assumptions and checked Lyu source
  wrappers.
- Technical challenge: supply the same measurable kernel, raw-neighbor,
  marked-holdout, and source-compatible interfaces using an old-arm scalar
  dictionary, without consuming a VC-arm event, success statement, or rate.
- Intended proof tool or cited result: Lyu's exact decomposition, essential
  list, AboveThreshold, and Sparse Sample identities, together with an
  independent coarse trace bound and finite producer-block reconstruction.
- Output target: a quotient kernel
  \(K_C^{\mathrm{old\text{-}Lyu}}\), its raw pullback, an analysis-only
  marked lift with exact projection, all-input
  \((\varepsilon,\delta)\)-DP, an unconditional realizable
  \((\alpha,\beta)\)-PAC guarantee, and
  \[
  N_{\mathrm{old}}\le
  K_{\mathrm{old}}\Lambda^{q_{\mathrm{old}}}
  R_{\mathrm{old}}(d,\alpha,\beta,\varepsilon,\delta)
  \tag{T}
  \]
  for universal \(K_{\mathrm{old}}\) and \(q_{\mathrm{old}}\), with no
  hidden positive power of \(d\).
- Rate objective: explicit \(d^5\) dependence.
- Row-local review status: PENDING; the accepted sketch review named above,
  rather than the row-local field, is the gate used here.

The target is an independent arm. No event, list, selected stage, empirical
certificate, privacy result, PAC result, or scalar rate from the
VC-sensitive arm is used below.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- Assumption~\ref{assump:finite-littlestone}: \(C\ne\varnothing\) and
  \(d=\operatorname{LD}(C)<\infty\), with no finiteness, properness, or
  efficiency premise.
- Assumption~\ref{assump:countable-evaluation-quotient}: \(Q_C\) is finite
  or countably infinite and its quotient cells are measurable.
- Assumption~\ref{assump:realizable-iid}: only for utility,
  \(S\sim P_{D,c}^{N_{\mathrm{old}}}\), for arbitrary \(D\) and \(c\in C\).
- Assumption~\ref{assump:approximate-dp-regime}:
  \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and \(0<\delta<1\).
  The finite-parameter old-arm theorem does not require an asymptotic
  \(N_{\mathrm{old}}\delta\to0\) condition.

### Derived invariants supplied by accepted dependencies

- Accepted Proposition~\ref{prop:step-002-factorization} gives the bijection
  \(C\leftrightarrow\bar C\).
- Accepted Lemmas~\ref{lem:step-002-vc} and
  \ref{lem:step-002-ld} give
  \(\operatorname{VC}(\bar C)=v\le d\) and
  \(\operatorname{LD}(\bar C)=d\), including the singleton \(d=0\)
  conclusion.
- Accepted Proposition~\ref{prop:step-002-record-map} gives measurability
  of \(T_N\) and equal-or-replace-one transport of raw neighbors.
- Accepted Propositions~\ref{prop:step-002-iid-pushforward} and
  \ref{prop:step-002-risk} give the exact iid quotient law and, for every
  possibly improper \(\bar h\in H_C\),
  \[
  \operatorname{err}_D(\operatorname{Dec}_C(\bar h),c)
  =\operatorname{err}_{\bar D}(\bar h,\bar c).
  \tag{D1}
  \]
- Accepted Lemma~\ref{lem:step-003-countable-promotion} and
  Propositions~\ref{prop:step-003-events},
  \ref{prop:step-003-quotient-kernel}, and
  \ref{prop:step-003-raw-pullback} provide the parameter-uniform facts that
  pointwise totalized laws on countable-discrete quotient inputs are
  kernels, their finite-list/status coordinates are measurable, and their
  pullbacks through \(T_N\) are raw learner kernels.
- Accepted Lemmas~\ref{lem:step-004-occurrence} and
  \ref{lem:step-004-mark-kernel}, and
  Propositions~\ref{prop:step-004-lift} and
  \ref{prop:step-004-projection}, establish the finite occurrence-splitting
  construction. Proposition~\ref{prop:step-015-mark} below independently
  instantiates and checks that construction for the old transcript and old
  lists; no VC-arm marked law is reused.

The accepted dependency artifacts are exactly the proof/review pairs
listed in Step Identity, and each review has status ACCEPTED.

### Local conditional hypotheses

None is used in the final assembly. The old trace event, source inclusion,
list locality, common stage, mechanism-success events, empirical
certificate, occurrence nonemptiness, and producer-block reconstruction
are all proved below. Conditional statements inside individual units are
discharged before they enter the target conclusion.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:countable-evaluation-quotient}, if \(d=0\), the deterministic \(N_{\mathrm{old}}=0\) singleton quotient law has zero risk and is \((0,0)\)-DP. | Closes the exact null branch. |
| unit_002 | lemma | Under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:approximate-dp-regime}, if \(d\ge1\), the independent old scalar dictionary is finite and source-admissible for every candidate teacher count \(t\ge2\). | Defines every old-arm scalar before data. |
| unit_003 | lemma | Under Lemma~\ref{lem:step-015-dictionary}, the candidate witness has a ceiling-aware logarithmic envelope and all three mechanism defects are bounded by a universal multiple of its teacher scale. | Makes teacher feasibility noncircular. |
| unit_004 | proposition | Under Lemmas~\ref{lem:step-015-dictionary} and \ref{lem:step-015-envelope}, a universal witness is feasible, so the least old teacher count exists and satisfies its explicit \(d^2/\varepsilon\) envelope. | Fixes the actual old tuple and margin. |
| unit_005 | proposition | Under Proposition~\ref{prop:step-015-teacher} and the checked Lyu definitions, the old quotient procedure is total on all labeled inputs and preserves every source-valid path. | Covers empty, invalid, exhausted, and fallback paths. |
| unit_006 | proposition | Under accepted step_002-step_003 interfaces and Proposition~\ref{prop:step-015-total}, the totalized old quotient law and raw pullback are Markov kernels with exact risk transport. | Produces the common measurable output interface. |
| unit_007 | lemma | Under accepted quotient dimension preservation, every fixed old master sample has at most \((en_{\mathrm o}/d)^d\) coarse error traces. | Supplies the old, not VC-sensitive, trace multiplicity. |
| unit_008 | lemma | Under the old partition, each fixed trace obeys the high-mean Lyu without-replacement tail and a locally proved near-zero KL tail. | Proves both concentration branches, including \(\mu=0\). |
| unit_009 | proposition | Under Lemmas~\ref{lem:step-015-traces} and \ref{lem:step-015-tails}, the generated \(E_{\mathrm{good,o}}\) has failure probability at most \(\beta_{\mathrm{tr,o}}\), with the \(n_{\mathrm o}=k_{\mathrm o}m_{\mathrm o}\) fixed point and ceiling discharged. | Charges the old trace event independently. |
| unit_010 | lemma | Under Proposition~\ref{prop:step-015-good}, the exact source/current endpoint and half-scale map gives \(H_{\mathrm o,i_*}^{r+1}\subseteq\cap_iH_{\mathrm o,i}^r\), with both constant checks. | Establishes the exact source stage interface. |
| unit_011 | lemma | Under Lemma~\ref{lem:step-015-source-map} and the checked Lyu decomposition results, every old restriction has the exact finite essential-SOA list and required irreducibility scales. | Supplies legal source lists and witnesses. |
| unit_012 | proposition | Under Lemmas~\ref{lem:step-015-source-map} and \ref{lem:step-015-lists} and realizability, failure of a common item causes a one-unit DDim drop, and some stage has score \(k_{\mathrm o}\). | Proves finite descent without importing success. |
| unit_013 | lemma | Under Proposition~\ref{prop:step-015-descent} and the teacher margin, the old AboveThreshold process detects a legal stage except on a \(\beta_{\mathrm{AT,o}}\) event and exports a sufficient selected score. | Proves selected-stage utility. |
| unit_014 | proposition | Under Lemma~\ref{lem:step-015-at}, Sparse Sample returns an actual old list item except on a \(\beta_{\mathrm{SS,o}}\) event. | Excludes the failure symbol on the core event. |
| unit_015 | lemma | Under Proposition~\ref{prop:step-015-total}, one quotient replacement changes only one block list and every old maximum-occurrence query has sensitivity one. | Discharges source privacy adjacency on all inputs. |
| unit_016 | proposition | Under Lemma~\ref{lem:step-015-locality} and the checked Lyu privacy lemmas, the quotient and raw old kernels are \((\varepsilon,\delta)\)-DP on every labeled input. | Proves the all-input privacy target. |
| unit_017 | proposition | Under the old core event and Lemma~\ref{lem:step-015-lists}, the actual output is exactly \(\operatorname{SOA}_{\mathcal G}\), lies in the fixed improper SOA family, and has master empirical error at most \(\alpha/8\). | Produces the exact empirical certificate. |
| unit_018 | proposition | Under Proposition~\ref{prop:step-015-sparse} and accepted finite-mark interfaces, the old occurrence lift is a kernel and projects exactly to the released old law. | Produces the old marked projection. |
| unit_019 | lemma | Under Propositions~\ref{prop:step-015-soa} and \ref{prop:step-015-mark}, each positive mark gives a producer-local list of size at most \((d+1)L_{\mathrm o}\), complement empirical loss at most \(\alpha/4\), and the requisite pathwise inclusion. | Reduces adaptive output error to finitely many fixed candidates. |
| unit_020 | lemma | Under realizable iid sampling, every fixed producer-local candidate of population error \(>\alpha\) passes the complement certificate with probability at most \(e^{-9\alpha(k_{\mathrm o}-1)m_{\mathrm o}/32}\). | Supplies the one-sided population tail. |
| unit_021 | proposition | Under the preceding old confidence units, finite multiplicity is absorbed and the released raw old learner has PAC failure probability at most \(\beta\). | Proves the unconditional PAC target. |
| unit_022 | proposition | Under Proposition~\ref{prop:step-015-teacher}, the old auxiliaries and ceilings eliminate to \(N_{\mathrm{old}}\le K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\). | Exposes the \(d^5\) rate. |
| unit_023 | proposition | Under Propositions~\ref{prop:step-015-zero}, \ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and \ref{prop:step-015-rate}, all boundary cases hold; fixed-\(\delta\) validity is separate from the optional old-arm \(N\delta\) schedule. | Closes \(d=0,1\), \(v=d\), finite/infinite \(C\), improper, ceiling, and schedule audits. |

Atomic step = no. The scalar closure, concentration, source descent,
mechanism utility, privacy, empirical identity, marked reconstruction, and
rate elimination are independent theorem-critical obligations.

## Cited Result Applications

All Lyu statements below are checked in the frozen source identified in
Step Identity. They are translated from its domain \(\mathcal X\) and
class \(\mathcal H\) to \(Q_C\) and \(\bar C\). Accepted
Lemma~\ref{lem:step-002-ld} discharges the source premise
\(\operatorname{LD}(\bar C)=d\). No result is applied directly on raw
\(X\).

### Accepted quotient and kernel dependencies

- Accepted Proposition~\ref{prop:step-002-record-map}: for every finite
  \(N\), \(T_N\) is measurable and maps raw replace-one neighbors to equal
  or replace-one quotient datasets. It is used in
  Propositions~\ref{prop:step-015-kernel} and \ref{prop:step-015-dp}.
- Accepted Proposition~\ref{prop:step-002-iid-pushforward}: if
  \(S\sim P_{D,c}^N\), then
  \(T_N(S)\sim P_{\bar D,\bar c}^N\). It is used in
  Proposition~\ref{prop:step-015-pac}.
- Accepted Proposition~\ref{prop:step-002-risk}: identity (D1) holds for
  every \(\bar h\in H_C\), not only for proper hypotheses. It is used in
  Propositions~\ref{prop:step-015-kernel} and \ref{prop:step-015-pac}.
- Accepted Lemma~\ref{lem:step-003-countable-promotion}: an arbitrary
  pointwise family of probability laws indexed by \(Z_Q^N\) is a Markov
  kernel when its codomain is measurable. It is used for the independently
  totalized old law in Proposition~\ref{prop:step-015-kernel}.
- Accepted finite-mark results
  Lemmas~\ref{lem:step-004-occurrence},
  \ref{lem:step-004-mark-kernel} and
  Propositions~\ref{prop:step-004-lift},
  \ref{prop:step-004-projection}: a measurable finite nonempty occurrence
  set on actual paths may be split uniformly, nonactual paths may be put at
  mark \(0\), and integration against the transcript kernel yields a marked
  kernel whose output projection is exact. Proposition
  \ref{prop:step-015-mark} verifies all premises anew for old lists.

### Lyu Proposition 2: without-replacement multiplicative tail

- Source label: prop:chernoff-sample-without-replacement.
- Restated result: for a fixed binary population of size \(N\), mean
  \(\mu\), and a uniform subset of size \(m\), if
  \(0<\xi<1\), then its subset mean \(\widehat\mu\) satisfies
  \[
  \Pr(|\widehat\mu-\mu|>\xi\mu)
  \le2\exp(-\xi^2m\mu/3).
  \tag{C1}
  \]
- Instantiation: \(N=n_{\mathrm o}\), \(m=m_{\mathrm o}\),
  \(\xi=1/(5d)\), and one fixed quotient error trace.
- Discharge: conditional on the complete indexed master sample, each
  partition block is marginally uniform without replacement. The result is
  used only when \(\mu>\gamma_{\mathrm o}/3\), in
  Lemma~\ref{lem:step-015-tails}; it is not used for the near-zero branch.

### Lyu decomposition and essential-hypothesis results

- Source labels: def: irreducible, def: p-decomposition,
  claim: exist decomposition, lemma: number of leaves,
  lemma: p-decomposition, def: essential hypothesis, and
  coro: essential hypotheses.
- Restated result: if \(\mathcal H\) has Littlestone dimension at most
  \(d\), valid \((p,d)\)-decompositions exist. A valid tree has at most
  \(p^d2^{d^2}\) leaves. A maximum-dimensional leaf of dimension \(t\) is
  \(p2^{d-t}\)-irreducible. If
  \(\mathcal G\subseteq\mathcal H\), then
  \[
  \operatorname{DDim}_{2p,d}(\mathcal G)
  \le\operatorname{DDim}_{p,d}(\mathcal H).
  \tag{C2}
  \]
  When both sides equal \(t\), the SOA of every dimension-\(t\) leaf of an
  arbitrary optimal \((2p,d)\)-decomposition of \(\mathcal G\) occurs as
  the SOA of a dimension-\(t\) leaf in every arbitrarily chosen optimal
  \((p,d)\)-decomposition of \(\mathcal H\). The set of
  \((p,d)\)-essential hypotheses has size at most \(p^d2^{d^2}\); at
  DDim zero it equals the whole finite class.
- Instantiation: \(\mathcal G=H_{\mathrm o,i_*}^{r+1}\),
  \(\mathcal H=H_{\mathrm o,i}^{r}\), and
  \(2p=p_{\mathrm o,r+1}\), \(p=p_{\mathrm o,r}\).
- Discharge: Lemma~\ref{lem:step-015-source-map} proves the class inclusion
  and exact factor two. All restrictions are subsets of \(\bar C\), hence
  have Littlestone dimension at most \(d\). Empty restrictions are handled
  by totalization and are never supplied to a source statement requiring a
  nonempty class. The results are used in
  Lemma~\ref{lem:step-015-lists} and
  Proposition~\ref{prop:step-015-descent}.

### Lyu Lemma 4.2: fixed SOA family

- Source label: lemma: Ldim-of-SOA.
- Restated result: for
  \[
  \widehat{\bar C}_{d+1}
  :=\{\operatorname{SOA}_{\mathcal G}:
      \mathcal G\subseteq\bar C
      \text{ is }(d+1)\text{-irreducible}\},
  \tag{C3}
  \]
  one has
  \(\operatorname{LD}(\widehat{\bar C}_{d+1})\le d\).
- Discharge: accepted Lemma~\ref{lem:step-002-ld} gives
  \(\operatorname{LD}(\bar C)=d\), and
  Lemma~\ref{lem:step-015-lists} proves the selected leaf is
  \((d+1)\)-irreducible. The membership, not a generic uniform-convergence
  argument, is used in Proposition~\ref{prop:step-015-soa}.

### Lyu Algorithm 1 and Lemma 3.1: Sparse Sample

- Source labels: algo:private sample and
  lemma: privacy of sparse sampling.
- Restated result: given \(k\) lists \(\mathcal L_i\), define
  \(s(h)=|\{i:h\in\mathcal L_i\}|\) on their finite union, add a failure
  symbol \(\perp\) of score \(B\), and sample with mass proportional to
  \(e^{\varepsilon_{\mathrm{SS}}s(\cdot)}\). If every list has size at
  most \(L\) and
  \[
  B\ge10\log(L/\delta_{\mathrm{SS}})
       /\varepsilon_{\mathrm{SS}},
  \tag{C4}
  \]
  this mechanism is
  \((2\varepsilon_{\mathrm{SS}},\delta_{\mathrm{SS}})\)-DP under
  replacement of one entire list.
- Instantiation: the old selected-stage lists, \(L=L_{\mathrm o}\),
  \(B=B_{\mathrm o}\), \(\varepsilon_{\mathrm{SS}}=\varepsilon/8\), and
  \(\delta_{\mathrm{SS}}=\delta/2\).
- Discharge: (C4) is built into Lemma~\ref{lem:step-015-dictionary};
  Lemma~\ref{lem:step-015-lists} proves the cap, and
  Lemma~\ref{lem:step-015-locality} proves one-list adjacency.
  Proposition~\ref{prop:step-015-sparse} derives the failure probability
  directly from the displayed weights; it does not invoke the commented-out
  source utility claim.

### Lyu Algorithm 2 and Lemma 3.2: AboveThreshold

- Source labels: algo: abovethreshold and
  lemma: privacy of abovethreshold.
- Restated result: a stopped AboveThreshold process receiving adaptive
  sensitivity-one queries, adding independent
  \(\operatorname{Lap}(1/\eta)\) noise, and halting at its first Above is
  \[
  \bigl(c_{\mathrm{AT}}\eta
  [\sqrt{\log(1/\delta_{\mathrm{AT}})}
    +\log(1/\delta_{\mathrm{AT}})],
  \delta_{\mathrm{AT}}\bigr)\text{-DP}
  \tag{C5}
  \]
  for a universal \(c_{\mathrm{AT}}\ge1\). For \(d+1\) tested queries,
  a union bound gives simultaneous noise magnitude at most
  \(\eta^{-1}\log((d+1)/\beta_{\mathrm{AT}})\), except with probability
  \(\beta_{\mathrm{AT}}\).
- Instantiation: \(\eta=\eta_{\mathrm o}\),
  \(\delta_{\mathrm{AT}}=\delta/2\), threshold \(k_{\mathrm o}/2\), and
  queries \(q_{\mathrm o,0},\ldots,q_{\mathrm o,d}\).
- Discharge: \(g_\delta=\log(4/\delta)\) dominates
  \(\log(1/\delta_{\mathrm{AT}})\);
  Lemma~\ref{lem:step-015-locality} proves sensitivity one. The utility
  inequalities are proved in Lemma~\ref{lem:step-015-at}.

### Lyu Theorem 3 and Corollary 5.1: limited use boundary

- Source labels: thm: DP-ERM-littlestone and coro: PAC learning.
- Restated usable content: the proof of Theorem 3 specifies the
  \(d+1\)-stage restriction/list/AboveThreshold/Sparse-Sample construction
  and the contradiction that an actual essential output
  \(\operatorname{SOA}_{\mathcal G}\), with \(\mathcal G\) sufficiently
  irreducible and all \(g\in\mathcal G\) empirically accurate, must itself
  be empirically accurate. Corollary 5.1 records the intended realizable PAC
  lineage and \(d^5\) scale.
- Excluded content: the malformed theorem display
  \(\operatorname{SOA}_{\mathcal G}(h)\), its unsupported
  probability-one amplification sentence, and the corollary as a substitute
  for a kernel, high-confidence, mark, raw-DP, or producer-reconstruction
  proof.
- Use: only the stage conventions and empirical contradiction are
  rederived in current notation in
  Lemma~\ref{lem:step-015-source-map} and
  Proposition~\ref{prop:step-015-soa}. Every theorem-facing conclusion is
  proved locally.

### Standard finite combinatorics, sampling, and privacy facts

- Sauer--Shelah: if a binary class has VC dimension at most \(d\) and
  \(n\ge d\ge1\), its traces on an indexed \(n\)-tuple number at most
  \(\sum_{j=0}^d\binom nj\le(en/d)^d\). Accepted quotient dimension
  preservation and Proposition~\ref{prop:step-015-teacher} discharge the
  premises in Lemma~\ref{lem:step-015-traces}.
- Maclaurin's inequality: for nonnegative \(w_1,\ldots,w_N\),
  \[
  \left(\frac{e_m(w_1,\ldots,w_N)}{\binom Nm}\right)^{1/m}
  \le\frac1N\sum_{j=1}^Nw_j.
  \tag{C6}
  \]
  It is applied to \(w_j=e^{\lambda x_j}\) for a fixed binary population in
  Lemma~\ref{lem:step-015-tails}; all quantities are finite and
  nonnegative.
- Bernoulli lower-tail Chernoff bound: if \(X_1,\ldots,X_M\) are
  independent Bernoulli variables of common mean \(p\), then, for
  \(0<\theta<1\),
  \[
  \Pr\!\left[\frac1M\sum_jX_j\le(1-\theta)p\right]
  \le\exp(-\theta^2pM/2).
  \tag{C7}
  \]
  Lemma~\ref{lem:step-015-lower-tail} checks iid independence after
  conditioning on the producer block and instantiates
  \(\theta=3/4\).
- Adaptive sequential composition and postprocessing: if the first
  transcript is \((\varepsilon_1,\delta_1)\)-DP and, for every transcript,
  the adaptively selected second kernel is
  \((\varepsilon_2,\delta_2)\)-DP on the corresponding neighboring state,
  their joint transcript is
  \((\varepsilon_1+\varepsilon_2,\delta_1+\delta_2)\)-DP; measurable
  postprocessing and mixing over common data-independent randomness do not
  increase these parameters. This is used in
  Proposition~\ref{prop:step-015-dp}, where list locality discharges the
  conditional neighboring-state premise.

The internal application ledger is:

| Result | Exact conclusion used | Assumption discharge |
| --- | --- | --- |
| Proposition~\ref{prop:step-015-zero} | Exact no-data old branch | Accepted quotient singleton result |
| Lemma~\ref{lem:step-015-dictionary} through Proposition~\ref{prop:step-015-teacher} | Finite old tuple and teacher margin | Primitive parameter regime and explicit scalar algebra |
| Proposition~\ref{prop:step-015-good} | \(\Pr(E_{\mathrm{good,o}}^c)\le\beta/4\) | Coarse traces, both fixed-trace tails, and fixed point |
| Lemma~\ref{lem:step-015-source-map} through Proposition~\ref{prop:step-015-sparse} | Actual old list output with charged mechanism failures | Checked source results and locally discharged inclusions |
| Proposition~\ref{prop:step-015-dp} | All-input raw \((\varepsilon,\delta)\)-DP | Accepted raw-neighbor map, local list adjacency, source privacy |
| Proposition~\ref{prop:step-015-soa} through Proposition~\ref{prop:step-015-pac} | Exact SOA certificate and unconditional raw PAC bound | Old core, old mark, finite holdout union, exact risk bridge |
| Proposition~\ref{prop:step-015-rate} | \(K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\) | Ceiling-aware teacher and block envelopes |

## Local Derivation

### unit_001: proposition

**Proposition (Exact old-arm singleton branch).**
\(\label{prop:step-015-zero}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:countable-evaluation-quotient}, if \(d=0\), then \(\bar C\)
has a unique element \(\bar c_0\). The old arm with
\(N_{\mathrm{old}}=0\), quotient law
\[
K_{\mathrm o}(\varnothing,E)=\mathbf1_E(\bar c_0),
\tag{1.1}
\]
and raw pullback along \(T_0\) is a measurable \((0,0)\)-DP Markov kernel.
For every \(D\) and \(c\in C\), its decoded population error is zero.

**Proof.**
Accepted Lemma~\ref{lem:step-002-ld} gives
\(\operatorname{LD}(\bar C)=0\). If two binary functions in \(\bar C\)
differed at a quotient point, that point would form a depth-one
Littlestone tree; hence \(\bar C\) is a singleton. Equation (1.1) is a
Dirac probability law on the standard-Borel output space and is constant
on the unique empty input. It is therefore a Markov kernel and is
\((0,0)\)-DP. Accepted Proposition~\ref{prop:step-002-factorization}
identifies the unique \(\bar c_0\) with every raw target, and (D1) gives
zero decoded error. No data, partition, list, mechanism, or asymptotic
condition is present. \(\square\)

### unit_002: lemma

**Lemma (Independent old-arm scalar dictionary).**
\(\label{lem:step-015-dictionary}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, suppose \(d\ge1\). Fix a universal
\(c_{\mathrm{AT}}\ge1\) for which the checked source bound (C5) holds, and
fix the universal old block constant
\[
C_{\mathrm o}:=2^{20}.
\tag{2.1}
\]
Define
\[
\gamma_{\mathrm o}:=\frac{\alpha}{16},\qquad
\rho:=1-\frac1{2d},\qquad \xi_d:=\frac1{5d},
\tag{2.2}
\]
\[
\beta_{\mathrm{tr,o}}=\beta_{\mathrm{AT,o}}
=\beta_{\mathrm{SS,o}}=\beta_{\mathrm{gen,o}}:=\frac\beta4,
\qquad
\delta_{\mathrm{AT,o}}=\delta_{\mathrm{SS,o}}:=\frac\delta2,
\tag{2.3}
\]
\[
g_\delta:=\log(4/\delta),\qquad
\eta_{\mathrm o}:=
\frac{\varepsilon}
{4c_{\mathrm{AT}}(\sqrt{g_\delta}+g_\delta)},\qquad
\varepsilon_{\mathrm{SS,o}}:=\frac\varepsilon8.
\tag{2.4}
\]
For every integer \(t\ge2\), define
\[
a_{\mathrm o}(t):=d+\log(4t/\beta),\qquad
Q_{\mathrm o}(t):=
e+\frac{etd^2a_{\mathrm o}(t)}{\alpha d},
\tag{2.5}
\]
\[
m_{\mathrm o}(t):=
\left\lceil C_{\mathrm o}\frac{d^2}{\alpha}
a_{\mathrm o}(t)\log Q_{\mathrm o}(t)\right\rceil,\qquad
n_{\mathrm o}(t):=t\,m_{\mathrm o}(t),
\tag{2.6}
\]
\[
p_{\mathrm o,r}(t):=2^rn_{\mathrm o}(t)d
\quad(0\le r\le d),\qquad
L_{\mathrm o}(t):=p_{\mathrm o,d}(t)^d2^{d^2},
\tag{2.7}
\]
\[
B_{\mathrm o}(t):=
\left\lceil
\frac{10\log(L_{\mathrm o}(t)/\delta_{\mathrm{SS,o}})}
{\varepsilon_{\mathrm{SS,o}}}\right\rceil,
\tag{2.8}
\]
\[
\tau_{\mathrm{AT,o}}:=
\eta_{\mathrm o}^{-1}
\log((d+1)/\beta_{\mathrm{AT,o}}),\qquad
\tau_{\mathrm{SS,o}}(t):=
\varepsilon_{\mathrm{SS,o}}^{-1}
\log((tL_{\mathrm o}(t)+1)/\beta_{\mathrm{SS,o}}).
\tag{2.9}
\]
Every displayed quantity is finite and positive; \(m_{\mathrm o}(t)\),
\(n_{\mathrm o}(t)\), \(p_{\mathrm o,r}(t)\), \(L_{\mathrm o}(t)\), and
\(B_{\mathrm o}(t)\) are integers. Moreover
\[
B_{\mathrm o}(t)\ge
\frac{10\log(L_{\mathrm o}(t)/\delta_{\mathrm{SS,o}})}
{\varepsilon_{\mathrm{SS,o}}},
\qquad
|\mathcal L|\le p_{\mathrm o,r}(t)^d2^{d^2}
\le L_{\mathrm o}(t)
\tag{2.10}
\]
for every source-valid \((p_{\mathrm o,r}(t),d)\)-essential list
\(\mathcal L\).

**Proof.**
The parameter ranges give \(g_\delta>\log4>0\),
\(a_{\mathrm o}(t)>0\), and \(Q_{\mathrm o}(t)>e\). Hence all logarithms
and reciprocals in (2.2)-(2.9) are legal and finite. The stated
integrality follows from the ceilings and integer products and powers.
The first inequality in (2.10) is exactly (2.8). For the second, Lyu's
leaf bound and essential-hypothesis corollary give
\(|\mathcal L|\le p_{\mathrm o,r}(t)^d2^{d^2}\); monotonicity
\(p_{\mathrm o,r}(t)\le p_{\mathrm o,d}(t)\) gives the final cap.
Thus the privacy threshold (C4) and every finite source list cap are fixed
before any input is observed. \(\square\)

### unit_003: lemma

**Lemma (Ceiling-aware old teacher envelope).**
\(\label{lem:step-015-envelope}\)
Under Lemma~\ref{lem:step-015-dictionary}, put
\[
\ell:=\log(64/(\delta\beta)),\qquad
R_{\mathrm T,o}:=\frac{d^2\ell\Lambda^2}{\varepsilon}.
\tag{3.1}
\]
There is a universal constant \(A_{\mathrm o}\ge1\), depending only on
the two fixed universal constants \(c_{\mathrm{AT}}\) and \(C_{\mathrm o}\),
such that, for every universal \(C\ge1\) and
\[
t_C:=\lceil C R_{\mathrm T,o}\rceil,
\tag{3.2}
\]
one has
\[
\begin{aligned}
\log t_C+\log m_{\mathrm o}(t_C)+\log Q_{\mathrm o}(t_C)
&\le A_{\mathrm o}(1+\log C)\Lambda^2,\\
\log L_{\mathrm o}(t_C)
&\le A_{\mathrm o}(1+\log C)d^2\Lambda^2,
\end{aligned}
\tag{3.3}
\]
and
\[
B_{\mathrm o}(t_C)+\tau_{\mathrm{SS,o}}(t_C)
+\tau_{\mathrm{AT,o}}
\le A_{\mathrm o}(1+\log C)R_{\mathrm T,o}.
\tag{3.4}
\]

**Proof.**
First note that \(\ell>1\), \(R_{\mathrm T,o}>1\), and
\[
t_C\le2CR_{\mathrm T,o}.
\tag{3.5}
\]
The definition of \(\Lambda\) gives
\[
\log d,\ \log(1/\alpha),\ \log(1/\beta),\
\log(1/\varepsilon),\ \log\Lambda\le\Lambda.
\tag{3.6}
\]
Also, with \(u=\log(e/\delta)\),
\[
\ell\le \log64+u+\log(1/\beta),\qquad
\log\ell\le 3\Lambda.
\tag{3.7}
\]
Indeed \(\log u\le\log(e+\log(e/\delta))\le\Lambda\), and the logarithm
of the sum in (3.7) is bounded by a universal constant plus the maximum of
\(\log u,\log\log(1/\beta),1\).
Equations (3.5)-(3.7) imply
\[
\log t_C\le A_1(1+\log C)\Lambda
\tag{3.8}
\]
for a numerical \(A_1\).

Because \(d\ge1\) and \(\Lambda\ge1\), (2.5) and (3.8) give
\[
a_{\mathrm o}(t_C)
\le A_2(1+\log C)d\Lambda,
\qquad
\log Q_{\mathrm o}(t_C)
\le A_3(1+\log C)\Lambda.
\tag{3.9}
\]
To see the second inequality without suppressing a parameter, use
\[
Q_{\mathrm o}(t_C)
\le2e\,t_Cd\,a_{\mathrm o}(t_C)/\alpha
\]
(the product on the right exceeds \(e\)) and take logarithms, invoking
(3.6), (3.8), and the first inequality in (3.9).

The unrounded expression in (2.6) exceeds one. Consequently
\[
m_{\mathrm o}(t_C)
\le2C_{\mathrm o}\frac{d^2}{\alpha}
a_{\mathrm o}(t_C)\log Q_{\mathrm o}(t_C),
\tag{3.10}
\]
and taking logarithms proves the remaining first-line term of (3.3).
Furthermore
\[
\begin{aligned}
\log L_{\mathrm o}(t_C)
&=d\log(2^dn_{\mathrm o}(t_C)d)+d^2\log2\\
&=2d^2\log2+d\log t_C+d\log m_{\mathrm o}(t_C)+d\log d\\
&\le A_4(1+\log C)d^2\Lambda,
\end{aligned}
\tag{3.11}
\]
which is stronger than the second line of (3.3).

It remains to expose the nonlogarithmic \(\delta\) charge. From
\(\varepsilon_{\mathrm{SS,o}}=\varepsilon/8\) and
\(\delta_{\mathrm{SS,o}}=\delta/2\),
\[
B_{\mathrm o}(t_C)
\le1+\frac{80}{\varepsilon}
[\log L_{\mathrm o}(t_C)+\log(2/\delta)].
\tag{3.12}
\]
Since \(t_CL_{\mathrm o}(t_C)\ge2\),
\[
\tau_{\mathrm{SS,o}}(t_C)
\le\frac8\varepsilon
[\log(8/\beta)+\log t_C+\log L_{\mathrm o}(t_C)].
\tag{3.13}
\]
Finally \(g_\delta>1\), so
\(\sqrt{g_\delta}+g_\delta\le2g_\delta\le2\ell\), while
\[
\log(4(d+1)/\beta)\le4\Lambda.
\]
Thus
\[
\tau_{\mathrm{AT,o}}
\le\frac{32c_{\mathrm{AT}}\ell\Lambda}{\varepsilon}.
\tag{3.14}
\]
Each summand in (3.12)-(3.14), including the ceiling remainder, is at
most a universal multiple of
\(d^2\ell\Lambda^2/\varepsilon\). Combining (3.8)-(3.14) and enlarging
one universal \(A_{\mathrm o}\) proves (3.3)-(3.4). No feasibility
assumption was used to define \(t_C\) or any quantity evaluated at it.
\(\square\)

### unit_004: proposition

**Proposition (Feasible least old teacher and exact margin).**
\(\label{prop:step-015-teacher}\)
Under Lemmas~\ref{lem:step-015-dictionary} and
\ref{lem:step-015-envelope}, let
\[
C_{\mathrm{teach,o}}:=(16A_{\mathrm o})^2,\qquad
\bar k_{\mathrm o}:=
\left\lceil C_{\mathrm{teach,o}}
\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}
\right\rceil.
\tag{4.1}
\]
Then
\[
\frac{\bar k_{\mathrm o}}2-\tau_{\mathrm{AT,o}}
\ge B_{\mathrm o}(\bar k_{\mathrm o})
+\tau_{\mathrm{SS,o}}(\bar k_{\mathrm o})+2.
\tag{4.2}
\]
Consequently the least feasible integer
\[
k_{\mathrm o}:=
\min\left\{t\in\mathbb Z:t\ge2,\quad
\frac t2-\tau_{\mathrm{AT,o}}
\ge B_{\mathrm o}(t)+\tau_{\mathrm{SS,o}}(t)+2\right\}
\tag{4.3}
\]
exists and
\[
2\le k_{\mathrm o}\le\bar k_{\mathrm o}
\le2C_{\mathrm{teach,o}}
\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon}.
\tag{4.4}
\]
Define, only after this minimization,
\[
\begin{gathered}
a_{\mathrm o}:=a_{\mathrm o}(k_{\mathrm o}),\quad
Q_{\mathrm o}:=Q_{\mathrm o}(k_{\mathrm o}),\quad
m_{\mathrm o}:=m_{\mathrm o}(k_{\mathrm o}),\\
n_{\mathrm o}:=k_{\mathrm o}m_{\mathrm o}
=N_{\mathrm o}=N_{\mathrm{old}},\quad
p_{\mathrm o,r}:=2^rn_{\mathrm o}d,\quad
L_{\mathrm o}:=L_{\mathrm o}(k_{\mathrm o}),\\
B_{\mathrm o}:=B_{\mathrm o}(k_{\mathrm o}),\qquad
\tau_{\mathrm{SS,o}}:=\tau_{\mathrm{SS,o}}(k_{\mathrm o}).
\end{gathered}
\tag{4.5}
\]
This exact tuple satisfies
\[
\frac{k_{\mathrm o}}2-\tau_{\mathrm{AT,o}}
\ge B_{\mathrm o}+\tau_{\mathrm{SS,o}}+2,
\qquad
p_{\mathrm o,0}=n_{\mathrm o}d
\ge\max\{n_{\mathrm o},d+1\}.
\tag{4.6}
\]

**Proof.**
For \(x\ge1\), \(\log x\le\sqrt x\). Hence, with
\(C=C_{\mathrm{teach,o}}\),
\[
A_{\mathrm o}(1+\log C)
\le A_{\mathrm o}+16A_{\mathrm o}^2
\le\frac C4.
\tag{4.7}
\]
Lemma~\ref{lem:step-015-envelope} therefore bounds the three defects at
\(\bar k_{\mathrm o}\) by
\[
\frac{C_{\mathrm{teach,o}}R_{\mathrm T,o}}4.
\tag{4.8}
\]
On the other hand,
\(\bar k_{\mathrm o}/2\ge
C_{\mathrm{teach,o}}R_{\mathrm T,o}/2\).
Since \(R_{\mathrm T,o}>\log256>5\), the remaining quarter of the
teacher scale exceeds \(2\), proving (4.2). Thus the set in (4.3) is a
nonempty subset of the integers bounded below by two, so it has a least
element and (4.4) follows from
\(\lceil C_{\mathrm{teach,o}}R_{\mathrm T,o}\rceil
\le2C_{\mathrm{teach,o}}R_{\mathrm T,o}\).
Equation (4.6)'s first part is (4.3) evaluated at the least element.
Finally \(n_{\mathrm o}\ge k_{\mathrm o}\ge2\); hence
\(n_{\mathrm o}d\ge n_{\mathrm o}\) and
\(n_{\mathrm o}d\ge2d\ge d+1\). All ceilings remain in (4.5).
\(\square\)

### unit_005: proposition

**Proposition (All-path totalization of the old quotient procedure).**
\(\label{prop:step-015-total}\)
Under Assumptions~\ref{assump:finite-littlestone},
\ref{assump:countable-evaluation-quotient}, and
\ref{assump:approximate-dp-regime}, the checked Lyu decomposition results,
and Proposition~\ref{prop:step-015-teacher}, the positive-dimensional old
quotient procedure can be fixed before data so that it outputs an element
of \(H_C\) on every input in \(Z_Q^{N_{\mathrm o}}\) and every internal
path. It uses only the old tuple (4.5), preserves every exact source-valid
path, and sends every empty, invalid, failure-symbol, no-success, exhausted,
or residual path to the fixed \(\bar c_0\).

**Proof.**
Fix once and for all the old tuple, the default \(\bar c_0\), a
data-independent uniform partition rule into \(k_{\mathrm o}\) indexed
blocks of size \(m_{\mathrm o}\), and deterministic choices for identical
local states. For block \(i\) and stage \(r=0,\ldots,d\), form the exact
restriction
\[
H_{\mathrm o,i}^r
:=\{h\in\bar C:
e_{\bar S_{\mathrm o,i}}(h)
\le\rho^{r+1}\gamma_{\mathrm o}\}.
\tag{5.1}
\]
For every nonempty restriction, the checked existence result supplies a
valid optimal \((p_{\mathrm o,r},d)\)-decomposition. Define
\(\mathcal L_{\mathrm o,i}^r\) to be its exact set of
\((p_{\mathrm o,r},d)\)-essential SOA functions, in one fixed
no-repetition order. By (2.10) it is a finite \(H_C\)-list of size at most
\(L_{\mathrm o}\). Empty restrictions receive the empty list. If a
purported source object is undefined, nonfinite, outside \(H_C\), or over
the cap, record an internal failure token and replace only that local list
by the empty list. These checks do not alter a source-valid list.

At each stage define the total score
\[
q_{\mathrm o,r}:=
\begin{cases}
\displaystyle\max_{h\in\cup_i\mathcal L_{\mathrm o,i}^r}
|\{i:h\in\mathcal L_{\mathrm o,i}^r\}|,&
\cup_i\mathcal L_{\mathrm o,i}^r\ne\varnothing,\\
0,&\text{otherwise}.
\end{cases}
\tag{5.2}
\]
Feed the \(d+1\) scores in order to one stopped AboveThreshold process at
threshold \(k_{\mathrm o}/2\). At its first legal Above stage, invoke the
exact Sparse Sample law on the \(k_{\mathrm o}\) lists using
\((\varepsilon_{\mathrm{SS,o}},B_{\mathrm o})\). Return its actual union
item if one is drawn. Return \(\bar c_0\) if AboveThreshold never selects a
legal stage, if Sparse Sample draws \(\perp\), or if any transcript
coordinate is invalid or exhausted. Because the failure-symbol weight is
always positive and the effective union is finite, the source-valid Sparse
Sample normalizer is finite and nonzero. Thus every path terminates in
\(H_C\), while exact restrictions, decompositions, lists, mechanism laws,
and successful outputs are unchanged on source-valid paths. No event,
realizability condition, privacy conclusion, or utility conclusion enters
this definition. \(\square\)

### unit_006: proposition

**Proposition (Old quotient kernel, raw pullback, and exact risk).**
\(\label{prop:step-015-kernel}\)
Under Assumption~\ref{assump:countable-evaluation-quotient}, accepted
Propositions~\ref{prop:step-002-record-map},
\ref{prop:step-002-risk}, and
\ref{prop:step-003-raw-pullback}, accepted
Lemma~\ref{lem:step-003-countable-promotion}, and
Proposition~\ref{prop:step-015-total}, the totalized pointwise old law
defines a Markov kernel
\[
K_{\mathrm o}=K_C^{\mathrm{old\text{-}Lyu}}:
Z_Q^{N_{\mathrm o}}\leadsto H_C.
\tag{6.1}
\]
Its raw pullback
\[
A_{\mathrm o,N_{\mathrm o}}(s,E)
:=K_{\mathrm o}(T_{N_{\mathrm o}}(s),E)
\tag{6.2}
\]
is a Markov kernel
\(Z_X^{N_{\mathrm o}}\leadsto H_C\). For every \(D,c,\bar h\),
the released decoded risk is exactly (D1).

**Proof.**
Proposition~\ref{prop:step-015-total} assigns a probability law on
\((H_C,\mathcal H_C)\) to every atom of the countable-discrete input
\(Z_Q^{N_{\mathrm o}}\). Accepted
Lemma~\ref{lem:step-003-countable-promotion} promotes this arbitrary
pointwise family to the Markov kernel (6.1); in particular, data-dependent
finite lists and fallback choices do not require a measurable global
selector. Accepted Proposition~\ref{prop:step-002-record-map} makes
\(T_{N_{\mathrm o}}\) measurable, so accepted
Proposition~\ref{prop:step-003-raw-pullback} proves (6.2) is a kernel.
The output codomain is the full \(H_C\), and accepted
Proposition~\ref{prop:step-002-risk} applies to every such output,
including improper SOA functions and \(\bar c_0\). \(\square\)

### unit_007: lemma

**Lemma (Coarse \(d\)-trace count for the old master sample).**
\(\label{lem:step-015-traces}\)
Under Assumption~\ref{assump:finite-littlestone} and accepted
Lemmas~\ref{lem:step-002-vc} and \ref{lem:step-002-ld}, suppose \(d\ge1\)
and fix any labeled quotient tuple
\(\bar s=((q_j,y_j))_{j=1}^{n_{\mathrm o}}\). Then its old error-trace
family
\[
\mathcal E_{\bar C}(\bar s)
:=\{(\mathbf1\{h(q_j)\ne y_j\})_{j=1}^{n_{\mathrm o}}:
h\in\bar C\}
\tag{7.1}
\]
is finite and satisfies
\[
|\mathcal E_{\bar C}(\bar s)|
\le\left(\frac{en_{\mathrm o}}d\right)^d.
\tag{7.2}
\]

**Proof.**
Accepted quotient preservation gives
\(\operatorname{VC}(\bar C)=v\le d\). On the indexed tuple, xor with the
fixed label vector \((y_j)_j\) is a bijection between prediction traces and
the error traces (7.1). Repeated quotient points can only identify
prediction traces, never create new ones. Proposition
\ref{prop:step-015-teacher} gives \(n_{\mathrm o}\ge d\), so
Sauer--Shelah applied with the coarser upper bound \(d\) yields
\[
|\mathcal E_{\bar C}(\bar s)|
\le\sum_{j=0}^d\binom{n_{\mathrm o}}j
\le(en_{\mathrm o}/d)^d.
\]
No value of \(v\), no finite cardinality of \(C\), and no event from
another arm is used. \(\square\)

### unit_008: lemma

**Lemma (Both fixed-trace without-replacement tails).**
\(\label{lem:step-015-tails}\)
Under Assumption~\ref{assump:approximate-dp-regime} and
Lemma~\ref{lem:step-015-dictionary}, condition on a complete indexed old
master sample and fix one binary error trace of mean
\(\mu\in[0,1]\). If \(\widehat\mu_i\) is its mean on one uniformly
partitioned block of size \(m_{\mathrm o}\), then:
\[
\Pr\!\left[
|\widehat\mu_i-\mu|>\xi_d\mu\mid\bar S_{\mathrm o}
\right]
\le2\exp\!\left(-\frac{m_{\mathrm o}\mu}{75d^2}\right)
\le2\exp\!\left(-\frac{m_{\mathrm o}\alpha}{3600d^2}\right)
\tag{8.1}
\]
whenever \(\mu>\gamma_{\mathrm o}/3\), and
\[
\Pr[\widehat\mu_i\ge\gamma_{\mathrm o}/2\mid\bar S_{\mathrm o}]
\le\exp[-m_{\mathrm o}
D(\gamma_{\mathrm o}/2\Vert\mu)]
\le\exp(-m_{\mathrm o}\gamma_{\mathrm o}/30)
\tag{8.2}
\]
whenever \(0\le\mu\le\gamma_{\mathrm o}/3\). The second statement includes
the boundary \(\mu=\gamma_{\mathrm o}/3\); at \(\mu=0\) its failure event
is empty.

**Proof.**
For (8.1), apply checked Lyu Proposition 2, equation (C1), with
\(\xi_d=1/(5d)\). Its exponent is
\(\xi_d^2m_{\mathrm o}\mu/3=m_{\mathrm o}\mu/(75d^2)\).
Since
\(\mu>\gamma_{\mathrm o}/3=\alpha/48\), the second inequality follows.

For (8.2), write the fixed population as
\(x_1,\ldots,x_{n_{\mathrm o}}\in\{0,1\}\). For every \(\lambda>0\),
Maclaurin's inequality (C6) gives
\[
\begin{aligned}
\mathbb E\exp\{\lambda m_{\mathrm o}\widehat\mu_i\}
&=\frac{e_{m_{\mathrm o}}
(e^{\lambda x_1},\ldots,e^{\lambda x_{n_{\mathrm o}}})}
{\binom{n_{\mathrm o}}{m_{\mathrm o}}}\\
&\le(1-\mu+\mu e^\lambda)^{m_{\mathrm o}}.
\end{aligned}
\tag{8.3}
\]
Markov's inequality and minimization over \(\lambda>0\) therefore yield,
for \(q>\mu\),
\[
\Pr(\widehat\mu_i\ge q)
\le\inf_{\lambda>0}
\exp\{m_{\mathrm o}[\log(1-\mu+\mu e^\lambda)-\lambda q]\}
=e^{-m_{\mathrm o}D(q\Vert\mu)}.
\tag{8.4}
\]
For \(\mu=0\) the event is impossible. Otherwise, for fixed
\(q=\gamma_{\mathrm o}/2\), the derivative of
\(D(q\Vert\mu)\) in \(\mu<q\) is
\((\mu-q)/[\mu(1-\mu)]<0\). Hence the minimum over
\(\mu\le\gamma_{\mathrm o}/3\) occurs at \(\gamma_{\mathrm o}/3\).
Using \(\log(1-u)\ge-u/(1-u)\) for \(0\le u<1\),
\[
\begin{aligned}
D(\gamma_{\mathrm o}/2\Vert\gamma_{\mathrm o}/3)
&=\frac{\gamma_{\mathrm o}}2\log\frac32
+\left(1-\frac{\gamma_{\mathrm o}}2\right)
\log\frac{1-\gamma_{\mathrm o}/2}{1-\gamma_{\mathrm o}/3}\\
&\ge\frac{\gamma_{\mathrm o}}2\log\frac32
-\frac{\gamma_{\mathrm o}}6
\ge\frac{\gamma_{\mathrm o}}{30},
\end{aligned}
\tag{8.5}
\]
where the last line uses \(\log(3/2)\ge2/5\). Substitution in (8.4)
proves (8.2). This local one-sided proof is why Proposition 2 is not
misapplied at or near zero. \(\square\)

### unit_009: proposition

**Proposition (Generated old trace event and confidence charge).**
\(\label{prop:step-015-good}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime},
Proposition~\ref{prop:step-015-teacher}, and
Lemmas~\ref{lem:step-015-traces} and \ref{lem:step-015-tails}, define
\(E_{\mathrm{good,o}}\) to be the event that, simultaneously for every
trace in \(\mathcal E_{\bar C}(\bar S_{\mathrm o})\) and every block \(i\),
\[
\widehat\mu_i\in
\begin{cases}
[(1-\xi_d)\mu,(1+\xi_d)\mu],
&\mu>\gamma_{\mathrm o}/3,\\
[0,\gamma_{\mathrm o}/2],
&0\le\mu\le\gamma_{\mathrm o}/3.
\end{cases}
\tag{9.1}
\]
Then
\[
\Pr(E_{\mathrm{good,o}}^c\mid\bar S_{\mathrm o})
\le4k_{\mathrm o}
\left(\frac{en_{\mathrm o}}d\right)^d
\exp\!\left(-\frac{m_{\mathrm o}\alpha}{3600d^2}\right),
\tag{9.2}
\]
and the exact old calibration gives
\[
\Pr(E_{\mathrm{good,o}}^c)\le\beta_{\mathrm{tr,o}}=\beta/4.
\tag{9.3}
\]

**Proof.**
The two cases in (9.1) are disjoint and exhaustive, with equality at
\(\gamma_{\mathrm o}/3\) assigned to the low case. Conditional on the
master sample, each block is marginally a uniform subset; no conditional
independence among different blocks is asserted. Lemma
\ref{lem:step-015-tails}, followed by the finite union over the
\(k_{\mathrm o}\) blocks and the traces counted in
Lemma~\ref{lem:step-015-traces}, gives (9.2). The factor \(4\) absorbs the
factor \(2\) in the high branch and the stronger low-branch exponent:
since \(d\ge1\),
\[
\frac{\gamma_{\mathrm o}}{30}
=\frac{\alpha}{480}
\ge\frac{\alpha}{3600d^2}.
\tag{9.4}
\]

It remains to discharge the fixed point and the ceiling. The unrounded
quantity in (2.6) exceeds one, so (3.10), now at \(k_{\mathrm o}\), gives
\[
\frac{en_{\mathrm o}}d
\le\frac{2eC_{\mathrm o}k_{\mathrm o}d
a_{\mathrm o}\log Q_{\mathrm o}}{\alpha}
\le2C_{\mathrm o}Q_{\mathrm o}\log Q_{\mathrm o}.
\tag{9.5}
\]
Because \(Q_{\mathrm o}\ge e\),
\[
\log(en_{\mathrm o}/d)
\le C_5\log Q_{\mathrm o},\qquad
C_5:=2+\log(2C_{\mathrm o}).
\tag{9.6}
\]
Also \(m_{\mathrm o}\alpha/d^2
\ge C_{\mathrm o}a_{\mathrm o}\log Q_{\mathrm o}\), while
\[
\begin{aligned}
\log(4k_{\mathrm o})+\log(1/\beta_{\mathrm{tr,o}})
&=\log(16k_{\mathrm o}/\beta)\\
&\le2a_{\mathrm o}\log Q_{\mathrm o},\\
d\log(en_{\mathrm o}/d)
&\le C_5a_{\mathrm o}\log Q_{\mathrm o}.
\end{aligned}
\tag{9.7}
\]
The fixed choice \(C_{\mathrm o}=2^{20}\) satisfies
\[
\frac{C_{\mathrm o}}{3600}>C_5+2.
\tag{9.8}
\]
Combining (9.6)-(9.8) yields
\[
\frac{m_{\mathrm o}\alpha}{3600d^2}
-\log(4k_{\mathrm o})-d\log(en_{\mathrm o}/d)
\ge\log(1/\beta_{\mathrm{tr,o}}).
\tag{9.9}
\]
Insert (9.9) into (9.2), then integrate over the master sample. This proves
(9.3) without using a VC-arm fixed point or event. \(\square\)

### unit_010: lemma

**Lemma (Exact old source endpoint, half-scale map, and inclusion).**
\(\label{lem:step-015-source-map}\)
Under Proposition~\ref{prop:step-015-good}, define the source-indexed
restrictions and scales, including the endpoint omitted from the source's
pre-algorithm display, by
\[
H_{\mathrm o,i,\mathrm{src}}^s
:=\{h\in\bar C:
e_{\bar S_{\mathrm o,i}}(h)\le\rho^s\gamma_{\mathrm o}\},
\quad
p_{\mathrm o,s,\mathrm{src}}:=2^sn_{\mathrm o}d,
\quad 1\le s\le d+1.
\tag{10.1}
\]
Then the current construction (5.1) obeys the exact map
\[
H_{\mathrm o,i}^r=H_{\mathrm o,i,\mathrm{src}}^{r+1},
\qquad
p_{\mathrm o,r}=\tfrac12p_{\mathrm o,r+1,\mathrm{src}},
\qquad 0\le r\le d.
\tag{10.2}
\]
On \(E_{\mathrm{good,o}}\), for every \(0\le r<d\), every \(i_*\), and
every \(i\),
\[
H_{\mathrm o,i_*}^{r+1}\subseteq H_{\mathrm o,i}^r.
\tag{10.3}
\]
The two constants needed for this inclusion are
\[
\rho^d\ge\frac12,\qquad
\frac{1+\xi_d}{1-\xi_d}\rho\le1.
\tag{10.4}
\]

**Proof.**
Equation (10.2) follows by substituting \(s=r+1\) into (10.1) and comparing
with (5.1) and (4.5). The uniform factor \(1/2\) preserves the exact
doubling relation
\(p_{\mathrm o,r+1}=2p_{\mathrm o,r}\) used by (C2).

Bernoulli's inequality gives
\[
\rho^d=(1-1/(2d))^d\ge1-d/(2d)=1/2.
\]
For the second part of (10.4), direct multiplication reduces the desired
inequality to
\[
\frac{2}{5d}\le\frac1{2d}\left(1+\frac1{5d}\right),
\]
which holds for \(d\ge1\).

Fix \(h\in H_{\mathrm o,i_*}^{r+1}\), and write
\(\mu=e_{\bar S_{\mathrm o}}(h)\). If
\(\mu\le\gamma_{\mathrm o}/3\), (9.1) gives
\[
e_{\bar S_{\mathrm o,i}}(h)\le\gamma_{\mathrm o}/2
\le\rho^d\gamma_{\mathrm o}
\le\rho^{r+1}\gamma_{\mathrm o},
\]
where \(r+1\le d\) and \(0<\rho<1\). If
\(\mu>\gamma_{\mathrm o}/3\), then (9.1), membership in the left side,
and (10.4) give
\[
\begin{aligned}
e_{\bar S_{\mathrm o,i}}(h)
&\le(1+\xi_d)\mu\\
&\le\frac{1+\xi_d}{1-\xi_d}
e_{\bar S_{\mathrm o,i_*}}(h)\\
&\le\frac{1+\xi_d}{1-\xi_d}
\rho^{r+2}\gamma_{\mathrm o}
\le\rho^{r+1}\gamma_{\mathrm o}.
\end{aligned}
\]
Thus \(h\in H_{\mathrm o,i}^r\), proving (10.3). Both concentration
branches, rather than an unstated relative estimate at zero, are needed.
\(\square\)

### unit_011: lemma

**Lemma (Exact old essential lists and irreducible leaf witnesses).**
\(\label{lem:step-015-lists}\)
Under Assumption~\ref{assump:finite-littlestone},
Proposition~\ref{prop:step-015-teacher},
Lemma~\ref{lem:step-015-source-map}, and the checked Lyu decomposition and
essential-hypothesis results, every nonempty \(H_{\mathrm o,i}^r\) has the
exact finite set \(\mathcal L_{\mathrm o,i}^r\) of
\((p_{\mathrm o,r},d)\)-essential hypotheses, with
\[
|\mathcal L_{\mathrm o,i}^r|
\le p_{\mathrm o,r}^d2^{d^2}\le L_{\mathrm o}.
\tag{11.1}
\]
If \(f\in\mathcal L_{\mathrm o,i}^r\) and
\(\mathcal G\) is a maximum-dimensional leaf of dimension \(t\) witnessing
\(f=\operatorname{SOA}_{\mathcal G}\), then
\[
\mathcal G\subseteq H_{\mathrm o,i}^r,\qquad
\mathcal G\text{ is }
p_{\mathrm o,r}2^{d-t}\text{-irreducible},
\tag{11.2}
\]
and
\[
p_{\mathrm o,r}2^{d-t}\ge p_{\mathrm o,0}
=n_{\mathrm o}d\ge\max\{n_{\mathrm o},d+1\}.
\tag{11.3}
\]
Empty restrictions retain the fixed empty-list convention and are not
passed to a nonempty-class source assertion.

**Proof.**
Every restriction is a subclass of \(\bar C\) and therefore has
Littlestone dimension at most \(d\). The checked source existence claim
gives a valid optimal decomposition for each nonempty restriction.
Lyu's essential-hypothesis corollary and leaf bound give (11.1). By the
definition of essentiality, \(f\) occurs as the SOA of a
maximum-dimensional leaf in every optimal decomposition; validity of that
leaf gives (11.2). Since \(0\le t\le d\), \(r\ge0\), and
\(p_{\mathrm o,r}=2^rp_{\mathrm o,0}\), its irreducibility scale is at
least \(p_{\mathrm o,0}\), and Proposition
\ref{prop:step-015-teacher} gives (11.3).

If a class is \(q\)-irreducible, it is \(q'\)-irreducible for
\(1\le q'\le q\): extend any \(q'\)-tuple to length \(q\) by repeating a
fixed quotient point, apply \(q\)-irreducibility, and use monotonicity of
Littlestone dimension under restriction. Thus every leaf in (11.2) is in
particular both \(n_{\mathrm o}\)- and \((d+1)\)-irreducible. \(\square\)

### unit_012: proposition

**Proposition (Finite old DDim descent and common-score stage).**
\(\label{prop:step-015-descent}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, on \(E_{\mathrm{good,o}}\), and under
Lemmas~\ref{lem:step-015-source-map} and
\ref{lem:step-015-lists}, define
\[
q_{\mathrm o,r}:=
\max_{h\in H_C}|\{i:h\in\mathcal L_{\mathrm o,i}^r\}|,
\qquad
M_{\mathrm o,r}:=
\max_i\operatorname{DDim}_{p_{\mathrm o,r},d}
(H_{\mathrm o,i}^r).
\tag{12.1}
\]
Then, for \(0\le r<d\),
\[
q_{\mathrm o,r}<k_{\mathrm o}
\quad\Longrightarrow\quad
M_{\mathrm o,r+1}\le M_{\mathrm o,r}-1,
\tag{12.2}
\]
and
\[
\max_{0\le r\le d}q_{\mathrm o,r}=k_{\mathrm o}.
\tag{12.3}
\]

**Proof.**
Realizability puts \(\bar c\) in every restriction (5.1), because its
block empirical error is zero. Thus all classes used in the descent are
nonempty.

Suppose \(q_{\mathrm o,r}<k_{\mathrm o}\), and choose \(i_*\) attaining
\(M_{\mathrm o,r+1}\). Lemma~\ref{lem:step-015-source-map} gives
\[
H_{\mathrm o,i_*}^{r+1}\subseteq H_{\mathrm o,i}^{r},
\qquad
p_{\mathrm o,r+1}=2p_{\mathrm o,r}
\]
for every \(i\). Applying the checked decomposition lemma (C2) yields
\[
M_{\mathrm o,r+1}
\le\operatorname{DDim}_{p_{\mathrm o,r},d}
(H_{\mathrm o,i}^r)
\le M_{\mathrm o,r}.
\tag{12.4}
\]
If equality held in (12.4), fix any optimal next-stage decomposition and
one of its maximum-dimensional leaves, and write \(f\) for that leaf's
SOA. The equality clause of (C2), applied separately to every \(i\) and
to an arbitrary optimal current decomposition, says that \(f\) occurs at a
maximum-dimensional leaf of every such current decomposition. Hence \(f\)
is \((p_{\mathrm o,r},d)\)-essential to every
\(H_{\mathrm o,i}^r\), so \(f\in\mathcal L_{\mathrm o,i}^r\) for all
\(i\). This gives \(q_{\mathrm o,r}=k_{\mathrm o}\), a contradiction.
DDim is integer-valued, proving the one-unit drop (12.2).

If \(M_{\mathrm o,r}=0\), every current restriction has DDim zero. Item 4
of the checked essential-hypothesis corollary says its essential list is
the entire finite restriction. The common target \(\bar c\) therefore lies
in every list, and \(q_{\mathrm o,r}=k_{\mathrm o}\).
Finally \(0\le M_{\mathrm o,0}\le d\). If every
\(q_{\mathrm o,r}\) were smaller than \(k_{\mathrm o}\), applying (12.2)
for \(r=0,\ldots,d-1\) would give \(M_{\mathrm o,d}=0\), which forces
\(q_{\mathrm o,d}=k_{\mathrm o}\), again a contradiction. This proves
(12.3) by a finite potential argument with no imported success event.
\(\square\)

### unit_013: lemma

**Lemma (Old AboveThreshold detects a sufficient stage).**
\(\label{lem:step-015-at}\)
Under Assumption~\ref{assump:approximate-dp-regime},
Propositions~\ref{prop:step-015-teacher} and
\ref{prop:step-015-descent}, and conditional on
\(E_{\mathrm{good,o}}\), let \(E_{\mathrm{AT,o}}\) be the event that all
\(d+1\) Laplace noises in the stopped old AboveThreshold transcript have
magnitude at most \(\tau_{\mathrm{AT,o}}\). Then
\[
\Pr(E_{\mathrm{AT,o}}^c)\le\beta_{\mathrm{AT,o}},
\tag{13.1}
\]
and on \(E_{\mathrm{AT,o}}\) the process selects a legal stage
\(r_{\mathrm o,*}\in\{0,\ldots,d\}\) such that
\[
q_{\mathrm o,r_{\mathrm o,*}}
\ge\frac{k_{\mathrm o}}2-\tau_{\mathrm{AT,o}}
\ge B_{\mathrm o}+\tau_{\mathrm{SS,o}}+2.
\tag{13.2}
\]
Every earlier reported Below additionally satisfies
\[
q_{\mathrm o,r}<\frac{k_{\mathrm o}}2+\tau_{\mathrm{AT,o}}
<k_{\mathrm o}.
\tag{13.3}
\]

**Proof.**
For \(Z\sim\operatorname{Lap}(1/\eta_{\mathrm o})\),
\(\Pr(|Z|>u)=e^{-\eta_{\mathrm o}u}\). The definition (2.9) and a union
bound over at most \(d+1\) noises prove (13.1); independence of those
noises is more than is needed for this union bound.

On \(E_{\mathrm{AT,o}}\), a Below report means
\(q_{\mathrm o,r}+Z_r<k_{\mathrm o}/2\), giving the first inequality in
(13.3). The margin (4.6) implies
\(\tau_{\mathrm{AT,o}}<k_{\mathrm o}/2\), which gives the second.
Proposition~\ref{prop:step-015-descent} supplies a stage with score exactly
\(k_{\mathrm o}\). At that stage, even noise
\(-\tau_{\mathrm{AT,o}}\) leaves the noisy score above
\(k_{\mathrm o}/2\), so the stopped transcript reports Above no later than
that stage. At the selected stage, the Above inequality gives
\[
q_{\mathrm o,r_{\mathrm o,*}}
\ge k_{\mathrm o}/2-\tau_{\mathrm{AT,o}},
\]
and (4.6) gives (13.2). Thus no no-success or illegal-stage fallback is
reached on the stated event. \(\square\)

### unit_014: proposition

**Proposition (Actual old Sparse Sample output).**
\(\label{prop:step-015-sparse}\)
Under Lemmas~\ref{lem:step-015-lists} and
\ref{lem:step-015-at}, conditional on
\(E_{\mathrm{good,o}}\cap E_{\mathrm{AT,o}}\), let
\(E_{\mathrm{SS,o}}\) be the event that Sparse Sample at
\(r_{\mathrm o,*}\) returns an actual member of
\(\bigcup_i\mathcal L_{\mathrm o,i}^{r_{\mathrm o,*}}\), rather than
\(\perp\). Then
\[
\Pr(E_{\mathrm{SS,o}}^c
\mid\text{the selected old lists})
\le
\frac{\beta_{\mathrm{SS,o}}}{k_{\mathrm o}L_{\mathrm o}+1}
\le\beta_{\mathrm{SS,o}},
\tag{14.1}
\]
and, on \(E_{\mathrm{SS,o}}\),
\[
\bar H_{\mathrm o}\in
\mathcal L_{\mathrm o,i}^{r_{\mathrm o,*}}
\quad\text{for at least one }i.
\tag{14.2}
\]

**Proof.**
The effective union has size at most \(k_{\mathrm o}L_{\mathrm o}\).
By (13.2), an item \(h_*\) has score
\(q_{\mathrm o,r_{\mathrm o,*}}\). In the exact Sparse Sample law, the
failure symbol has weight
\(e^{\varepsilon_{\mathrm{SS,o}}B_{\mathrm o}}\), while \(h_*\) has
weight
\(e^{\varepsilon_{\mathrm{SS,o}}q_{\mathrm o,r_{\mathrm o,*}}}\).
Discarding every other positive denominator term,
\[
\begin{aligned}
\Pr(\perp\mid\text{selected lists})
&\le
\exp[-\varepsilon_{\mathrm{SS,o}}
(q_{\mathrm o,r_{\mathrm o,*}}-B_{\mathrm o})]\\
&\le
\exp(-\varepsilon_{\mathrm{SS,o}}\tau_{\mathrm{SS,o}})\\
&=\frac{\beta_{\mathrm{SS,o}}}
{k_{\mathrm o}L_{\mathrm o}+1}.
\end{aligned}
\tag{14.3}
\]
Here the unused \(+2\) in (13.2) is harmless positive slack. Every
nonfailure point in the exact effective domain is an actual union item,
giving (14.2). This proves utility from the weights themselves, not from
the commented source utility statement or its failure-domain ambiguity.
\(\square\)

### unit_015: lemma

**Lemma (Old list locality and query sensitivity on all inputs).**
\(\label{lem:step-015-locality}\)
Under Proposition~\ref{prop:step-015-total}, fix any old partition and any
two quotient datasets differing in at most one record. At every stage, the
two totalized list tuples differ in at most one block coordinate; all lists
at every other coordinate are identical. Consequently every maximum-
occurrence query (5.2) has global sensitivity at most one, and, conditional
on every transcript-selected legal stage, the two Sparse Sample inputs
have one-list replacement adjacency. These statements hold without
realizability or \(E_{\mathrm{good,o}}\).

**Proof.**
If the quotient datasets differ, the changed record lies in one fixed
partition block \(i_0\). Every restriction, validity check, fixed
decomposition choice, essential list ordering, sanitizer, and failure token
for a block is a deterministic function of that block's local labeled
state and public parameters. Thus all local states and lists for
\(i\ne i_0\) are identical at all stages; the \(i_0\)-list may be
replaced arbitrarily, including by or from the empty list.

Extend each list-occurrence count to all \(h\in H_C\), assigning zero when
an item is absent from every list. Replacement of one list changes every
such count by at most one. If \(s,s'\) are the two count functions, then
\[
\max_hs(h)\le\max_hs'(h)+1
\quad\text{and}\quad
\max_hs'(h)\le\max_hs(h)+1,
\]
including the all-empty convention. Hence the maximum query has
sensitivity one. An adaptively selected stage merely chooses one of these
already local tuples; for each fixed first-transcript value, its pair of
second-mechanism inputs still differs in at most list \(i_0\). No event or
stopping-stage equality across neighboring executions is assumed.
\(\square\)

### unit_016: proposition

**Proposition (All-input quotient and raw replacement privacy).**
\(\label{prop:step-015-dp}\)
Under Assumptions~\ref{assump:countable-evaluation-quotient} and
\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-002-record-map},
Proposition~\ref{prop:step-015-kernel}, Lemma
\ref{lem:step-015-locality}, the checked source privacy results (C4)-(C5),
and adaptive composition, the released old quotient kernel is
\((\varepsilon/2,\delta)\)-DP. Its raw pullback
\(A_{\mathrm o,N_{\mathrm o}}\) is therefore
\((\varepsilon,\delta)\)-DP for every pair of raw replace-one labeled
inputs.

**Proof.**
For the stopped AboveThreshold process, (C5), (2.4), and
\(\log(1/\delta_{\mathrm{AT,o}})=\log(2/\delta)\le g_\delta\) give
\[
c_{\mathrm{AT}}\eta_{\mathrm o}
[\sqrt{\log(1/\delta_{\mathrm{AT,o}})}
+\log(1/\delta_{\mathrm{AT,o}})]
\le\varepsilon/4.
\tag{16.1}
\]
Lemma~\ref{lem:step-015-locality} discharges sensitivity one, so this first
transcript is \((\varepsilon/4,\delta/2)\)-DP. At every transcript-selected
stage, the source list cap (11.1), threshold (2.8), and one-list adjacency
from Lemma~\ref{lem:step-015-locality} discharge every premise of (C4).
Thus Sparse Sample is
\[
(2\varepsilon_{\mathrm{SS,o}},\delta_{\mathrm{SS,o}})
=(\varepsilon/4,\delta/2)\text{-DP}.
\tag{16.2}
\]
Adaptive sequential composition, followed by terminal postprocessing,
gives
\[
(\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)
=(\varepsilon/2,\delta)\preceq(\varepsilon,\delta).
\tag{16.3}
\]
Mixing over the same data-independent partition preserves (16.3).

This argument applies to the total transcript on every labeled input.
In particular, empty restrictions, sanitized invalid lists, different
stopping stages, \(\perp\), no-success, exhaustion, and fallback are
already covered by deterministic postprocessing of the private transcript;
neither realizability nor a utility event was used.

Finally, accepted Proposition~\ref{prop:step-002-record-map} maps raw
neighbors to equal or quotient replace-one inputs. Applying (16.3) to
\(K_{\mathrm o}(T_{N_{\mathrm o}}(\cdot),E)\) proves the claimed raw
\((\varepsilon,\delta)\)-DP inequality for every
\(E\in\mathcal H_C\). \(\square\)

### unit_017: proposition

**Proposition (Exact old SOA identity, fixed family, and empirical certificate).**
\(\label{prop:step-015-soa}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:realizable-iid}, on
\[
\mathsf{Core}_{\mathrm o}:=
E_{\mathrm{good,o}}\cap E_{\mathrm{AT,o}}\cap E_{\mathrm{SS,o}},
\tag{17.1}
\]
and under Lemma~\ref{lem:step-015-lists} and
Proposition~\ref{prop:step-015-sparse}, the actual old output has a
maximum-dimensional leaf witness \(\mathcal G\subseteq\bar C\) satisfying
\[
\bar H_{\mathrm o}=\operatorname{SOA}_{\mathcal G},\qquad
\mathcal G\text{ is both }n_{\mathrm o}\text{- and }
(d+1)\text{-irreducible},
\tag{17.2}
\]
\[
\bar H_{\mathrm o}\in\widehat{\bar C}_{d+1}\subseteq H_C,\qquad
\operatorname{LD}(\widehat{\bar C}_{d+1})\le d,
\tag{17.3}
\]
and
\[
e_{\bar S_{\mathrm o}}(\bar H_{\mathrm o})
\le2\gamma_{\mathrm o}=\alpha/8.
\tag{17.4}
\]

**Proof.**
By Proposition~\ref{prop:step-015-sparse}, the actual output belongs to
some selected list. Lemma~\ref{lem:step-015-lists} and the definition of
essentiality produce a maximum-dimensional leaf \(\mathcal G\) with the
exact identity and irreducibility in (17.2). The checked fixed-family
result (C3) then gives (17.3). This is an improper family in general; no
claim that \(\bar H_{\mathrm o}\in\bar C\) is made.

It remains to prove the empirical certificate. Every
\(g\in\mathcal G\subseteq H_{\mathrm o,i}^{r_{\mathrm o,*}}\) has producer
block error at most
\(\rho^{r_{\mathrm o,*}+1}\gamma_{\mathrm o}\le\gamma_{\mathrm o}\).
Write \(\mu=e_{\bar S_{\mathrm o}}(g)\). If
\(\mu\le\gamma_{\mathrm o}/3\), then already \(\mu<2\gamma_{\mathrm o}\).
If \(\mu>\gamma_{\mathrm o}/3\), the lower relative clause of
\(E_{\mathrm{good,o}}\) gives
\[
\mu\le\frac{e_{\bar S_{\mathrm o,i}}(g)}{1-\xi_d}
\le\frac{\gamma_{\mathrm o}}{1-\xi_d}
\le\frac54\gamma_{\mathrm o}<2\gamma_{\mathrm o}.
\tag{17.5}
\]
Thus every \(g\in\mathcal G\) has master error at most
\(2\gamma_{\mathrm o}\).

Suppose instead that
\(e_{\bar S_{\mathrm o}}(\operatorname{SOA}_{\mathcal G})
>2\gamma_{\mathrm o}\). Any \(g\in\mathcal G\) agreeing with this SOA on
all indexed master points would have exactly the same prediction vector
and hence the same master error, contradicting (17.5). Therefore
\[
\mathcal G|_{(q_1,\operatorname{SOA}_{\mathcal G}(q_1)),\ldots,
(q_{n_{\mathrm o}},
\operatorname{SOA}_{\mathcal G}(q_{n_{\mathrm o}})))}
=\varnothing.
\tag{17.6}
\]
But \(n_{\mathrm o}\)-irreducibility in (17.2) says this restriction
preserves \(\operatorname{LD}(\mathcal G)\), whereas the empty class has
strictly smaller dimension. This contradiction proves (17.4). Equation
(17.6) is the valid contradiction pattern in Lyu Theorem 3's proof; the
malformed displayed output and unsupported probability-one sentence are
not used. \(\square\)

### unit_018: proposition

**Proposition (Old occurrence-mark kernel and exact projection).**
\(\label{prop:step-015-mark}\)
Under Assumption~\ref{assump:countable-evaluation-quotient},
Propositions~\ref{prop:step-015-total},
\ref{prop:step-015-kernel}, and
\ref{prop:step-015-sparse}, and the accepted finite-mark results from
step_004, the old internal-state/output law admits a Markov-kernel lift
\[
\widetilde K_{\mathrm o}:
Z_Q^{N_{\mathrm o}}\leadsto
H_C\times\{0,1,\ldots,k_{\mathrm o}\}.
\tag{18.1}
\]
For every quotient input \(\bar s\) and \(E\in\mathcal H_C\),
\[
\sum_{i=0}^{k_{\mathrm o}}
\widetilde K_{\mathrm o}(\bar s,E\times\{i\})
=K_{\mathrm o}(\bar s,E).
\tag{18.2}
\]
On actual paths, positive marks are uniform over all distinct producer
blocks whose all-stage list union contains the output; every nonactual
path has mark \(0\).

**Proof.**
Let \(R_{\mathrm o,\bar s}(d\omega,dh)\) be the joint law of the complete
old transcript state and terminal \(H_C\)-output. For each block define
\[
\mathcal G_{\mathrm o,i}(\omega):=
\bigcup_{r=0}^d\mathcal L_{\mathrm o,i}^r(\omega).
\tag{18.3}
\]
On the measurable actual-output status event, set
\[
I_{\mathrm o}(\omega,h):=
\{i\in[k_{\mathrm o}]:h\in\mathcal G_{\mathrm o,i}(\omega)\}.
\tag{18.4}
\]
The exact Sparse Sample support in Proposition
\ref{prop:step-015-sparse} makes this set nonempty on every actual path.
Define
\[
w_i(\omega,h):=
\begin{cases}
\mathbf1\{i\in I_{\mathrm o}(\omega,h)\}/|I_{\mathrm o}(\omega,h)|,
&\text{on an actual path},\\
0,&\text{on a nonactual path},
\end{cases}
\quad i\ge1,
\tag{18.5}
\]
and let \(w_0=0\) on actual paths and \(w_0=1\) on nonactual paths.
Finite-list membership, actual status, the finite sum
\(|I_{\mathrm o}|\), and every \(w_i\) are measurable by the accepted
step_003 event interface and the finite-mark argument accepted in step_004.
Repeated occurrences within a list or across stages do not duplicate a
block coordinate in (18.4).

For \(i=0,\ldots,k_{\mathrm o}\), define
\[
\widetilde K_{\mathrm o}(\bar s,E\times\{i\})
:=\int\mathbf1_E(h)w_i(\omega,h)
R_{\mathrm o,\bar s}(d\omega,dh),
\tag{18.6}
\]
and extend by finite additivity over mark sections. The weights are
nonnegative and sum pointwise to one, so (18.6) is a probability law.
The quotient input is countable discrete, and the output product is
standard Borel with a finite mark, so accepted countable promotion gives
the kernel (18.1). Summing (18.6) over marks and using
\(\sum_iw_i=1\) proves (18.2). Thus the mark is analysis-only and changes
neither the released marginal nor the privacy proved in
Proposition~\ref{prop:step-015-dp}. \(\square\)

### unit_019: lemma

**Lemma (Producer-local old reconstruction and pathwise inclusion).**
\(\label{lem:step-015-reconstruct}\)
Under Assumption~\ref{assump:realizable-iid},
Propositions~\ref{prop:step-015-soa} and
\ref{prop:step-015-mark}, fix the data-independent old partition and a
positive mark \(i\). Define
\[
\mathcal G_{\mathrm o,i}(\bar S_{\mathrm o,i})
:=\bigcup_{r=0}^d\mathcal L_{\mathrm o,i}^r,\qquad
|\mathcal G_{\mathrm o,i}|\le(d+1)L_{\mathrm o}.
\tag{19.1}
\]
This finite list is a measurable function only of the \(m_{\mathrm o}\)
records in producer block \(i\). On
\(\mathsf{Core}_{\mathrm o}\cap\{J_{\mathrm o}=i\}\),
\[
\bar H_{\mathrm o}\in\mathcal G_{\mathrm o,i},
\qquad
\widehat{\operatorname{err}}_{\mathrm o,-i}(\bar H_{\mathrm o})
\le\frac{k_{\mathrm o}\alpha}{8(k_{\mathrm o}-1)}
\le\frac\alpha4.
\tag{19.2}
\]
Consequently the following inclusion holds pathwise, before conditioning
on either the mark or block data:
\[
\begin{aligned}
&\{\mathsf{Core}_{\mathrm o},J_{\mathrm o}=i,
\operatorname{err}_{\bar D}(\bar H_{\mathrm o},\bar c)>\alpha\}\\
&\quad\subseteq
\bigcup_{\substack{h\in\mathcal G_{\mathrm o,i}(\bar S_{\mathrm o,i}):\\
\operatorname{err}_{\bar D}(h,\bar c)>\alpha}}
\{\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\le\alpha/4\}.
\end{aligned}
\tag{19.3}
\]

**Proof.**
Every restriction, decomposition choice, and essential list for coordinate
\(i\) is block-local by the construction in Proposition
\ref{prop:step-015-total}; concatenating the \(d+1\) measurable finite
lists proves the locality and measurability in (19.1). The size bound is
the sum of the \(d+1\) caps (11.1); duplicate functions only reduce it.

On an actual path with \(J_{\mathrm o}=i\), the mark definition (18.4)
puts \(\bar H_{\mathrm o}\) in this block's union. On the core,
Proposition~\ref{prop:step-015-soa} bounds the number of mistakes on the
whole master sample by \(n_{\mathrm o}\alpha/8\). The complement has
\(n_{\mathrm o}-m_{\mathrm o}=(k_{\mathrm o}-1)m_{\mathrm o}\) records,
so its number of mistakes is no larger than the full-sample number and
\[
\widehat{\operatorname{err}}_{\mathrm o,-i}(\bar H_{\mathrm o})
\le\frac{n_{\mathrm o}}{n_{\mathrm o}-m_{\mathrm o}}\frac\alpha8
=\frac{k_{\mathrm o}\alpha}{8(k_{\mathrm o}-1)}
\le\frac\alpha4,
\]
where \(k_{\mathrm o}\ge2\). If the left event of (19.3) occurs, its
realized \(\bar H_{\mathrm o}\) is therefore one of the finitely many
candidates indexing the right union and satisfies both defining
conditions. This proves the inclusion without conditioning on an adaptive
output. \(\square\)

### unit_020: lemma

**Lemma (Fixed-candidate complement lower tail).**
\(\label{lem:step-015-lower-tail}\)
Under Assumption~\ref{assump:realizable-iid}, condition on the fixed
partition, a producer block \(\bar S_{\mathrm o,i}\), and any fixed
\(h\in\mathcal G_{\mathrm o,i}(\bar S_{\mathrm o,i})\). If
\(p=\operatorname{err}_{\bar D}(h,\bar c)>\alpha\), then the independent
complement of \(M=(k_{\mathrm o}-1)m_{\mathrm o}\) records satisfies
\[
\Pr[
\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\le\alpha/4
\mid\bar S_{\mathrm o,i}]
\le\exp(-9\alpha M/32).
\tag{20.1}
\]

**Proof.**
After conditioning on the producer block, \(h\) is fixed because of the
locality in Lemma~\ref{lem:step-015-reconstruct}. The complement records
remain iid from \(P_{\bar D,\bar c}\) and independent of that block.
Their mistake indicators are therefore independent Bernoulli variables of
mean \(p\). Since \(p>\alpha\),
\[
\{\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\le\alpha/4\}
\subseteq
\{\widehat{\operatorname{err}}_{\mathrm o,-i}(h)\le p/4\}.
\]
The exponential-Markov lower-tail calculation for a Bernoulli sum gives
\(\Pr[\widehat p\le(1-\theta)p]\le
\exp(-\theta^2pM/2)\) for \(0<\theta<1\). Taking
\(\theta=3/4\), then using \(p>\alpha\), yields
\[
\exp[-(3/4)^2pM/2]
=\exp(-9pM/32)
\le\exp(-9\alpha M/32),
\]
which is (20.1). \(\square\)

### unit_021: proposition

**Proposition (Independent old-arm PAC ledger).**
\(\label{prop:step-015-pac}\)
Under all four setting assumptions, Propositions
\ref{prop:step-015-good}, \ref{prop:step-015-sparse},
\ref{prop:step-015-mark}, and \ref{prop:step-015-soa}, and
Lemmas~\ref{lem:step-015-at}, \ref{lem:step-015-reconstruct}, and
\ref{lem:step-015-lower-tail}, the released old raw learner satisfies
\[
\sup_D\sup_{c\in C}
\Pr[
\operatorname{err}_D(\operatorname{Dec}_C(\bar H_{\mathrm o}),c)
>\alpha]
\le\beta.
\tag{21.1}
\]

**Proof.**
We first discharge the finite multiplicity with the same old block
constant already used for the trace event. From (9.5),
\[
n_{\mathrm o}\le(2C_{\mathrm o}/e)dQ_{\mathrm o}\log Q_{\mathrm o}.
\tag{21.2}
\]
Hence, with
\(C_p:=5+\log(2C_{\mathrm o})\),
\[
\begin{aligned}
\log p_{\mathrm o,d}
&=d\log2+\log n_{\mathrm o}+\log d\\
&\le C_p d\log Q_{\mathrm o},
\end{aligned}
\tag{21.3}
\]
where \(Q_{\mathrm o}\ge e\), \(\log d\le d\), and
\(\log\log Q_{\mathrm o}\le\log Q_{\mathrm o}\) were used explicitly.
Therefore
\[
\begin{aligned}
\log\frac{k_{\mathrm o}(d+1)L_{\mathrm o}}
{\beta_{\mathrm{gen,o}}}
&=\log\frac{4k_{\mathrm o}(d+1)}\beta
+d\log p_{\mathrm o,d}+d^2\log2\\
&\le C_6d\,a_{\mathrm o}\log Q_{\mathrm o},
\qquad C_6:=C_p+3.
\end{aligned}
\tag{21.4}
\]
Indeed \(a_{\mathrm o}\ge d\) and
\(a_{\mathrm o}\ge\log(4k_{\mathrm o}/\beta)\), while
\(\log(d+1)\le d\).

The unrounded lower bound in (2.6) gives
\[
\frac9{32}\alpha(k_{\mathrm o}-1)m_{\mathrm o}
\ge\frac{9C_{\mathrm o}}{32}
(k_{\mathrm o}-1)d^2a_{\mathrm o}\log Q_{\mathrm o}.
\tag{21.5}
\]
For \(C_{\mathrm o}=2^{20}\), \(k_{\mathrm o}\ge2\), and \(d\ge1\),
the right side of (21.5) is at least the right side of (21.4).
Consequently
\[
k_{\mathrm o}(d+1)L_{\mathrm o}
\exp[-9\alpha(k_{\mathrm o}-1)m_{\mathrm o}/32]
\le\beta_{\mathrm{gen,o}}.
\tag{21.6}
\]

Now work under the marked lift. Sum the pathwise inclusion (19.3) over
\(i=1,\ldots,k_{\mathrm o}\). Only after this finite inclusion is in
place, condition on each producer block and apply
Lemma~\ref{lem:step-015-lower-tail} to each of its at most
\((d+1)L_{\mathrm o}\) candidates. Equation (21.6) gives
\[
\Pr[
\mathsf{Core}_{\mathrm o},\
\operatorname{err}_{\bar D}(\bar H_{\mathrm o},\bar c)>\alpha]
\le\beta_{\mathrm{gen,o}}.
\tag{21.7}
\]
No uncountable supremum over \(H_C\) has been taken.

The other failures are charged independently:
\[
\Pr(E_{\mathrm{good,o}}^c)\le\beta_{\mathrm{tr,o}},
\quad
\Pr(E_{\mathrm{AT,o}}^c)\le\beta_{\mathrm{AT,o}},
\quad
\Pr(E_{\mathrm{good,o}}\cap E_{\mathrm{AT,o}}
\cap E_{\mathrm{SS,o}}^c)\le\beta_{\mathrm{SS,o}}.
\tag{21.8}
\]
The last inequality follows by integrating the conditional bound (14.1)
over the selected lists. Equations (21.7)-(21.8) and the exact confidence
split (2.3) yield
\[
\Pr[
\operatorname{err}_{\bar D}(\bar H_{\mathrm o},\bar c)>\alpha]
\le\beta_{\mathrm{tr,o}}+\beta_{\mathrm{AT,o}}
+\beta_{\mathrm{SS,o}}+\beta_{\mathrm{gen,o}}
=\beta.
\tag{21.9}
\]
Projection (18.2) removes the analysis-only mark without changing the
released law. Accepted Proposition~\ref{prop:step-002-iid-pushforward}
identifies the quotient sampling law, and accepted
Proposition~\ref{prop:step-002-risk} turns (21.9) into (21.1), uniformly
over arbitrary \(D\) and \(c\). \(\square\)

### unit_022: proposition

**Proposition (Ceiling-aware explicit \(R_{\mathrm{old}}\) rate).**
\(\label{prop:step-015-rate}\)
Under Assumptions~\ref{assump:finite-littlestone} and
\ref{assump:approximate-dp-regime}, and
Proposition~\ref{prop:step-015-teacher}, there is a universal
\(K_{\mathrm{old}}\ge1\) such that, for \(d\ge1\),
\[
N_{\mathrm{old}}
\le K_{\mathrm{old}}\Lambda^6
R_{\mathrm{old}}(d,\alpha,\beta,\varepsilon,\delta).
\tag{22.1}
\]
No positive power of \(d\) is hidden in \(K_{\mathrm{old}}\Lambda^6\).

**Proof.**
The candidate functions in (2.5)-(2.9) are nondecreasing in \(t\).
Thus \(k_{\mathrm o}\le\bar k_{\mathrm o}\), the envelope derivation
(3.8)-(3.10), and (4.4) give universal constants \(C_7,C_8,C_9,C_{10}\)
such that
\[
\begin{gathered}
k_{\mathrm o}\le
C_7\frac{d^2\log(64/(\delta\beta))\Lambda^2}{\varepsilon},
\qquad
a_{\mathrm o}\le C_8d\Lambda^2,\\
\log Q_{\mathrm o}\le C_9\Lambda^2,\qquad
m_{\mathrm o}\le
C_{10}\frac{d^3}{\alpha}\Lambda^4.
\end{gathered}
\tag{22.2}
\]
The last inequality retains the ceiling: its unrounded term exceeds one,
so \(\lceil x\rceil\le2x\), exactly as in (3.10).
Multiplication of the actual counts in (4.5) gives
\[
N_{\mathrm{old}}=k_{\mathrm o}m_{\mathrm o}
\le C_{11}\Lambda^6
\frac{d^5\log(64/(\delta\beta))}
{\varepsilon\alpha}.
\tag{22.3}
\]
Since \(\delta\beta<1/4\),
\[
\log(64/(\delta\beta))
=\log64+\log(1/(\delta\beta))
\le4\log(1/(\delta\beta)).
\tag{22.4}
\]
Substitution into (22.3), followed by the nonnegative second summand in
the setting definition
\[
R_{\mathrm{old}}
=\frac{d^5\log(1/(\delta\beta))}{\varepsilon\alpha}
+\frac{d+\log(1/\beta)}{\alpha},
\]
proves (22.1) with \(K_{\mathrm{old}}=4C_{11}\).
All appearances of \(d\) outside \(R_{\mathrm{old}}\) in this derivation
are inside logarithms already bounded by \(\Lambda^6\); the exposed
polynomial is exactly \(d^5\). \(\square\)

### unit_023: proposition

**Proposition (Old-arm boundaries and fixed versus scheduled \(\delta\)).**
\(\label{prop:step-015-boundaries}\)
Under Propositions~\ref{prop:step-015-zero},
\ref{prop:step-015-dp}, \ref{prop:step-015-pac}, and
\ref{prop:step-015-rate}, the complete old arm has the following boundary
properties.

1. At \(d=0\), it uses \(N_{\mathrm{old}}=0\), deterministic mark \(0\),
   zero risk, and \((0,0)\)-privacy.
2. At \(d=1\), all positive-branch scales, stages, restrictions, and
   inequalities are legal; in particular \(\rho=1/2\),
   \(\rho^d=1/2\), and \(p_{\mathrm o,0}\ge2=d+1\).
3. The construction applies unchanged to finite and infinite \(C\), and to
   \(v=d\); it never introduces \(|C|\), and it makes no VC-sensitive
   improvement claim.
4. Empty, invalid, failure, and fallback paths remain measurable and
   private on all inputs, while the old core excludes them for utility.
   Actual outputs may be improper elements of \(H_C\).
5. Every integer ceiling and all four confidence shares are retained.
6. For every fixed allowed \(0<\delta<1\), the kernel, privacy, PAC, and
   rate conclusions remain valid. Separately, along an asymptotic sequence,
   \[
   \delta K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\longrightarrow0
   \quad\Longrightarrow\quad
   N_{\mathrm{old}}\delta\longrightarrow0.
   \tag{23.1}
   \]
   The setting's VC-arm schedule is not silently asserted to imply
   (23.1).

**Proof.**
Item 1 is Proposition~\ref{prop:step-015-zero}; the mark-\(0\) convention
is the unique inactive occurrence convention. For item 2, substitute
\(d=1\) in (2.2), (4.6), and (10.4); no denominator or stage disappears.
Items 3 and 4 follow because the only class-size control is the finite
trace restriction (7.2) and finite source list cap (11.1), both valid for
infinite classes, while Propositions~\ref{prop:step-015-total} and
\ref{prop:step-015-dp} cover every totalized path. At \(v=d\), the old
dictionary is literally unchanged and (22.1) is the \(d^5\) source
baseline. Proposition~\ref{prop:step-015-soa} explicitly permits improper
SOA outputs.

Item 5 follows from (2.6), (2.8), (4.1), (4.5), and the exact identity
\(4(\beta/4)=\beta\). None of Propositions
\ref{prop:step-015-kernel}, \ref{prop:step-015-dp},
\ref{prop:step-015-pac}, or \ref{prop:step-015-rate} assumes a limiting
relation involving \(\delta\), proving fixed-\(\delta\) validity. Finally,
multiplying (22.1) by \(\delta\) proves (23.1). When \(v\ll d\),
\(R_{\mathrm{old}}\) can be polynomially larger than \(R_{\mathrm{VC}}\),
so the distinct VC-arm schedule in the setting cannot in general replace
the explicit old-arm premise in (23.1). \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-015-zero} closes the exact \(d=0\) branch. On
\(d\ge1\), Lemma~\ref{lem:step-015-dictionary},
Lemma~\ref{lem:step-015-envelope}, and
Proposition~\ref{prop:step-015-teacher} define the independent old tuple,
prove a finite witness before minimization, retain all ceilings, and export
the source margin. Proposition~\ref{prop:step-015-total} then defines every
source-valid and fallback path, and Proposition
\ref{prop:step-015-kernel} turns that pointwise law into the required
quotient and raw Markov kernels with exact decoded risk.

The old utility proof is independent of the VC-sensitive arm:
Lemma~\ref{lem:step-015-traces} uses only the coarse exponent \(d\);
Lemma~\ref{lem:step-015-tails} proves both fixed-trace branches; and
Proposition~\ref{prop:step-015-good} closes the old fixed point and charges
its own trace share. Lemma~\ref{lem:step-015-source-map} supplies the exact
source endpoint and half-scale map. Lemma~\ref{lem:step-015-lists} and
Proposition~\ref{prop:step-015-descent} discharge all decomposition,
essentiality, irreducibility, and finite-potential obligations.
Lemma~\ref{lem:step-015-at} and
Proposition~\ref{prop:step-015-sparse} then produce an actual old list
output with their own two confidence charges.

Privacy is event-free: Lemma~\ref{lem:step-015-locality} proves
sensitivity one and one-list adjacency on arbitrary inputs, and
Proposition~\ref{prop:step-015-dp} composes the exact old allocations and
transfers them to raw neighbors. Utility continues through
Proposition~\ref{prop:step-015-soa}, which proves the actual SOA identity,
fixed-family membership, and empirical error. Proposition
\ref{prop:step-015-mark} constructs the old marked lift and exact
projection. Lemmas~\ref{lem:step-015-reconstruct} and
\ref{lem:step-015-lower-tail} reduce the adaptive population-error event to
a finite producer-local union, and Proposition
\ref{prop:step-015-pac} absorbs its multiplicity and sums exactly the four
old confidence shares.

Finally, Proposition~\ref{prop:step-015-rate} eliminates every old
auxiliary and proves (T), with the explicit choice
\(q_{\mathrm{old}}=6\). Proposition
\ref{prop:step-015-boundaries} verifies the null, first-stage,
finite/infinite-class, \(v=d\), improper-output, fallback, ceiling,
confidence, and \(\delta\)-schedule boundaries. These named results prove
the exact sketch-row claim and export the common-interface
\[
\boxed{
(K_C^{\mathrm{old\text{-}Lyu}},
A_{\mathrm o,N_{\mathrm o}},
\widetilde K_{\mathrm o},
N_{\mathrm{old}})
\text{ is measurable, raw }(\varepsilon,\delta)\text{-DP, }
(\alpha,\beta)\text{-PAC, and }
N_{\mathrm{old}}\le K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}.}
\]
No global diagnostic statement and no VC-arm success output is evidence
for this assembly.

## Explicit Rate Audit

- Exposed variables:
  \(d,\alpha,\beta,\varepsilon,\delta\). The old arm is independent of
  \(v\) except that \(v\le d\) justifies the deliberately coarse trace
  count.
- Hidden constants may depend on:
  only the universal source constant \(c_{\mathrm{AT}}\) and the fixed
  universal choices \(C_{\mathrm o}=2^{20}\) and
  \(C_{\mathrm{teach,o}}=(16A_{\mathrm o})^2\). Therefore
  \(K_{\mathrm{old}}\) is universal.
- Hidden constants may not depend on:
  \(X,\Sigma,C,D,c,|C|,d,v,\alpha,\beta,\varepsilon,\delta\), any sample,
  partition, restriction, decomposition, list, event, transcript, mark,
  support, output, or stopping stage.
- Fixed quantities:
  none for finite-parameter validity. In particular every
  \(0<\delta<1\) is allowed.
- Probability mode:
  all-input raw Markov-kernel DP for every replace-one pair; unconditional
  high-probability PAC over iid data, the independent partition, both
  private mechanisms, and the analysis-only mark, followed by exact
  projection.
- Horizon mode:
  fixed sample \(N_{\mathrm{old}}=0\) for \(d=0\), and
  \(N_{\mathrm{old}}=k_{\mathrm o}m_{\mathrm o}\) for \(d\ge1\).
- Norm mode:
  population binary zero-one error with the exact quotient/raw identity
  (D1).
- Admissibility conditions and auxiliary tolerances:
  exactly the four setting assumptions; on the positive branch
  \(d\ge1\), \(t\ge2\), and the quantities (2.2)-(2.9). No generated
  event is an admissibility assumption.
- Term absorption or simplification inequalities:
  the ceiling-aware fixed point is (9.5)-(9.9); teacher feasibility is
  (3.3)-(4.8); finite marked multiplicity is (21.2)-(21.6); rate
  elimination is (22.2)-(22.4). The exposed multiplication is
  \[
  \left[\frac{d^2\log(1/(\delta\beta))}{\varepsilon}\right]
  \left[\frac{d^3}{\alpha}\right],
  \]
  and only \(\Lambda^6\) is hidden.
- Probability conversion:
  \[
  \beta_{\mathrm{tr,o}}+\beta_{\mathrm{AT,o}}
  +\beta_{\mathrm{SS,o}}+\beta_{\mathrm{gen,o}}=\beta,
  \]
  while privacy composes as
  \((\varepsilon/4,\delta/2)+(\varepsilon/4,\delta/2)
  =(\varepsilon/2,\delta)\preceq(\varepsilon,\delta)\).
- Contribution to any Rate Specialization Bridge:
  Proposition~\ref{prop:step-015-rate} exports
  \(K_{\mathrm{old}}\Lambda^6R_{\mathrm{old}}\) as a complete arm; no
  comparison minimum is taken in this step.
- Baseline-reduction check:
  \(d=0\) is exact zero-sample recovery. At \(v=d\), the arm remains the
  source \(d^5\) scale without a conservative positive-power loss. Finite
  and infinite \(C\) use the same arm. Fixed-\(\delta\) theorem validity is
  preserved, while \(N_{\mathrm{old}}\delta\to0\) is asserted only under
  the separate sufficient schedule (23.1).

## Blockers

None.

## Notation And Assumption Notes

- Public-facing setting objects:
  \(Q_C,\bar C,H_C,T_N,\operatorname{Dec}_C,d,v,\alpha,\beta,\varepsilon,
  \delta,\Lambda,R_{\mathrm{old}}\) retain exactly their meanings in
  setting.md.
- Public-facing old-arm outputs proved here:
  \(K_C^{\mathrm{old\text{-}Lyu}}=K_{\mathrm o}\),
  \(A_{\mathrm o,N_{\mathrm o}}\),
  \(\widetilde K_{\mathrm o}\), and \(N_{\mathrm{old}}\), together with
  the DP, PAC, projection, and rate conclusions in Target-Step Assembly.
- Appendix-local scalar dictionary:
  \(\gamma_{\mathrm o},\rho,\xi_d\), the four old \(\beta\)-shares, two
  old \(\delta\)-shares, \(g_\delta,\eta_{\mathrm o},
  \varepsilon_{\mathrm{SS,o}},a_{\mathrm o}(t),Q_{\mathrm o}(t),
  m_{\mathrm o}(t),n_{\mathrm o}(t),p_{\mathrm o,r}(t),
  L_{\mathrm o}(t),B_{\mathrm o}(t),\tau_{\mathrm{AT,o}},
  \tau_{\mathrm{SS,o}}(t),\bar k_{\mathrm o}\), and \(k_{\mathrm o}\).
  Every one is a direct expression in primitive setting quantities and
  checked universal source constants; Proposition
  \ref{prop:step-015-teacher} proves finiteness and feasibility.
- Proof-local rate helpers:
  \(\ell,R_{\mathrm T,o},A_{\mathrm o},C_5,C_p,C_6,C_7,\ldots,C_{11}\).
  They are universal bookkeeping constants or displayed setting-derived
  expressions and are not exported as assumptions. The concrete block
  constant is \(C_{\mathrm o}=2^{20}\);
  \(C_{\mathrm{teach,o}}=(16A_{\mathrm o})^2\) is fixed before data.
- Generated appendix-local objects:
  \(E_{\mathrm{good,o}},E_{\mathrm{AT,o}},E_{\mathrm{SS,o}},
  \mathsf{Core}_{\mathrm o},H_{\mathrm o,i}^r,
  H_{\mathrm o,i,\mathrm{src}}^s,\mathcal L_{\mathrm o,i}^r,
  q_{\mathrm o,r},M_{\mathrm o,r},r_{\mathrm o,*},
  \widehat{\bar C}_{d+1},\mathcal G,\mathcal G_{\mathrm o,i}\), and
  \(J_{\mathrm o}\). Their truth, finiteness, locality, or invariance is
  proved respectively by Propositions/Lemmas
  \ref{prop:step-015-good}-\ref{prop:step-015-pac}; none is primitive.
- Proof-local sampling variables:
  \(\mu,\widehat\mu_i,D(q\Vert\mu),p,M,\omega,I_{\mathrm o}\), and
  \(w_i\). They are defined inside their units and are not downstream
  interfaces.
- Source-object translation:
  every Lyu class is a restriction of \(\bar C\) on \(Q_C\); every source
  output is an actual function in \(H_C\). The current/source map is exactly
  (10.2), including the \(d+1\) endpoint and factor-two scale. The source
  theorem's malformed \(\operatorname{SOA}_{\mathcal G}(h)\) display is
  never adopted.
- Assumption provenance:
  realizability is used only in the DDim zero case, the empirical
  certificate, and iid producer reconstruction. Privacy is proved without
  it. Countability is used for kernels and event coordinates, not for trace
  cardinality. Trace concentration, actual output, SOA identity, occurrence
  nonemptiness, and PAC success are generated conclusions.
- Improper-output boundary:
  \(\bar H_{\mathrm o}\) may lie in
  \(\widehat{\bar C}_{d+1}\setminus\bar C\). All kernel, DP, empirical,
  population, mark, and decoder statements are formulated on the full
  \(H_C\), so no propriety assumption is hidden.
- Global diagnostic boundary:
  the optional diagnostic pair was checked at the hashes in Step Identity,
  and global_proof_review.md has status ACCEPTED. Its step-relevant planning
  advice was to instantiate the old dictionary, trace event, source map,
  mark, and rate independently of the VC arm. Every claim above was proved
  from setting assumptions, accepted dependencies, locally restated
  checked source results, or earlier local units. The diagnostic was not
  used as evidence, a cited result, an assumption source, or authority to
  alter the target claim.
