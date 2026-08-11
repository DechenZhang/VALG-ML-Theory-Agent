# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_006
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_006/proof.md
- Reviewed proof SHA-256: 3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Diagnostic global-proof SHA-256: dd911e44d738bc0061c3b5d30c85ba6346138d64621eeae8d4ec623a2925d407
- Accepted diagnostic-review SHA-256: fe7fdb3d1413f56d02f8a724f08bfc5cad13e5f3378d780a09a7aaa381496710
- Accepted step_004 proof/review SHA-256: a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d / d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18
- Accepted step_005 proof/review SHA-256: 044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191 / 189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff
- Primary-source preflight: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; checked archive SHA-256 1b70f9de20e75e5684cd2495b36e30420e25f6d46f8220c585dfd019a682b301 and submission/main.tex SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact endpoint and half-scale source map

- Statement fidelity: The proposition states exactly (S-H), (B-map), and the consecutive current-scale identity required by the accepted row. It distinguishes the direct definition of \(H_{i,\mathrm{src}}^{d+1}\) from a printed source conclusion and does not identify the current pair \((H_i^r,p_r)\) with Lyu's literal stage-\((r+1)\) pair.
- Proof validity: The source display gives the threshold formula for \(s\in[d]\); the proof defines the endpoint by that same formula because the immediately following source algorithm consumes stage \(d+1\). The identities
  \[
  H_i^r=H_{i,\mathrm{src}}^{r+1},\qquad
  p_r=\tfrac12p_{r+1,\mathrm{src}},\qquad
  p_{r+1}=2p_r
  \]
  then follow by direct substitution. Positivity and integrality of \(p_r\), and \(\operatorname{LD}(H_i^r)\le d\) for nonempty subclasses, are correctly discharged.
- Cited-result and assumption audit: The official v1 TeX has title and author matching the cited paper, labels Definition 4.2 as def: p-decomposition, Lemma 4.1 as lemma: number of leaves, Lemma 4.3 as lemma: p-decomposition, Definition 4.3 as def: essential hypothesis, and Corollary 4.1 as coro: essential hypotheses. It defines \(H_i^j\) only for \(j\in[d]\), then explicitly runs stages \(1,\ldots,d+1\). The proof accurately records this endpoint omission and attributes only the printed threshold and scale formulas to the source. Assumption~\ref{assump:finite-littlestone} and the accepted positive-branch parameter interface supply every remaining domain condition.
- Rigor checklist: The index ranges are exact: \(1\le s\le d+1\), \(0\le r\le d\), and \(0\le r<d\) for transitions. No SOA, DDim, or decomposition statement is attached to an empty class.
- Local adversarial test: At \(d=1\), current stages are \(r=0,1\), the source endpoints are \(s=1,2\), and \((p_1,p_0)=(2n_0,n_0)\). At \(r=0\), the half-scale identity is still exact. Infinite \(C\), repeated sample points, and duplicate traces do not affect these set definitions.
- Contribution to target step: It supplies the exact source/current object map and the factor-two scale interface used by every later local unit.
- Verdict: PASS
- Repair direction: None.

### unit_002: Cross-block geometric-threshold inclusion

- Statement fidelity: The lemma proves exactly \(H_i^{r+1}\subseteq H_{i'}^r\) for all \(i,i'\) and \(0\le r<d\), conditionally on the already-produced event \(E_{\rm good}\), including the empty-left-class and \(d=1\) boundaries.
- Proof validity: For the low-master-error branch, Bernoulli's inequality gives
  \[
  \rho^d=\left(1-\frac1{2d}\right)^d\ge\frac12,
  \]
  and \(r+1\le d\) gives \(\gamma/2\le\rho^d\gamma\le\rho^{r+1}\gamma\). For the high-master-error branch, the two relative clauses of \(E_{\rm good}\) give
  \[
  e_{i'}(h)\le\frac{1+1/(5d)}{1-1/(5d)}e_i(h),
  \]
  while membership in \(H_i^{r+1}\) gives \(e_i(h)\le\rho^{r+2}\gamma\). The final comparison is valid because
  \[
  \left(1-\frac1{5d}\right)
  -\left(1+\frac1{5d}\right)\rho
  =\frac1{10d}+\frac1{10d^2}>0.
  \]
- Cited-result and assumption audit: The exact strict/closed guards, thresholds \(\gamma/3,\gamma/2\), and tolerance \(1/(5d)\) agree with accepted Propositions~\ref{prop:step-004-conditional-trace} and \ref{prop:step-005-trace-budget}. Event membership is used only as a local conditional hypothesis; it is not promoted to a primitive condition. No realizability, iid sampling, or block independence enters.
- Rigor checklist: The boundary \(e_S(h)=\gamma/3\) belongs to the low branch, so the two guards are exhaustive and disjoint. All denominators are positive for \(d\ge1\), the quantification over \(i'\) is preserved, and empty-left inclusion is correctly vacuous.
- Local adversarial test: At \(d=1,r=0\), \(\rho=1/2\), the low inequality is tight, and the high comparison remains strict. Zero master error, dependent partition blocks, arbitrary labels, and a nonrealizable input do not break the deterministic implication on \(E_{\rm good}\).
- Contribution to target step: It produces the exact class inclusion required before any application of Lyu Lemma 4.3.
- Verdict: PASS
- Repair direction: None.

### unit_003: Exact essential-function lists and source boundaries

- Statement fidelity: The proposition defines the arbitrary-input list to be empty exactly when \(H_i^r\) is empty and otherwise uses Lyu's actual-function Definition 4.3. It exports the degree-attaining leaf identity, the list envelope, all four Corollary 4.1 clauses, and the nonempty DDim-zero boundary required by the accepted row.
- Proof validity: For a fixed optimal decomposition, every essential function is the SOA of a degree-attaining leaf, so the essential-function set is contained in the finite set of leaf SOAs. Lyu Lemma 4.1 therefore gives
  \[
  |\mathcal L_i^r|\le p_r^d2^{d^2}\le p_d^d2^{d^2}=L.
  \]
  The union bound over \(k\) lists is elementary, and taking logarithms of the exact positive expression gives
  \[
  \log L=d\log p_d+d^2\log2
  \]
  with no hidden constant or omitted term.
- Cited-result and assumption audit: The checked source states exactly: Item 1, at most \(p^d2^{d^2}\) essential functions; Item 2, same-\(p\) inheritance under inclusion and equal DDim; Item 3, nonempty \(p\)-essential support only when the same class has equal \((2p,p)\) DDim; and Item 4, exact equality between the function class and its essential set at DDim zero. The proof retains every hypothesis and does not use Items 2 or 3 to erase the factor-two interface.
- Rigor checklist: Optimal-decomposition existence is supplied by the source existence claim plus the finite integer degree range. The leaf bound does not require finite \(C\). Equality in Definition 4.3 and Item 4 is equality of functions on all of \(X\), not equality of sample traces.
- Local adversarial test: If \(H_i^r=\varnothing\), the totalized list is empty and no source DDim/SOA assertion is made. If it is nonempty with DDim zero, the list is exactly \(H_i^r\). If \(C\) is infinite, the essential list is still finite. Distinct functions with identical master traces remain distinct actual-function list elements; repeated occurrences of the same function are set-deduplicated.
- Contribution to target step: It supplies the exact finite lists, actual leaf witnesses, all source boundary clauses, and the exact rate-bearing list identity.
- Verdict: PASS
- Repair direction: None.

### unit_004: Factor-two decomposition pairing and exact essentiality

- Statement fidelity: The proposition targets precisely the accepted (Pair) interface and equality-to-essentiality wrapper. It does not assert a plateau, strict DDim descent, score, or common item.
- Proof validity: On \(E_{\rm good}\), Lemma~\ref{lem:step-006-cross-block-inclusion} gives
  \(H_{i_*}^{r+1}\subseteq H_i^r\). Nonemptiness of the left class implies nonemptiness of the right class; both have Littlestone dimension at most \(d\), and \(p_{r+1}=2p_r\) with \(p_r\in\mathbb N\). These are exactly Lyu Lemma 4.3's hypotheses with
  \[
  (\mathcal G,\mathcal H,2p,p)
  =(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r).
  \]
  The DDim inequality follows directly.
- Cited-result and assumption audit: The checked source says that, under equality at \(t\), every dimension-\(t\) leaf of an arbitrarily chosen optimal \((2p,d)\)-decomposition has a matching dimension-\(t\) leaf in an arbitrarily chosen optimal \((p,d)\)-decomposition, with equal SOA functions. Fixing the left decomposition and leaf while allowing the right optimal decomposition to be arbitrary proves Definition 4.3 essentiality in every right decomposition.
- Rigor checklist: The equality is \(\operatorname{SOA}_{G_v}\equiv\operatorname{SOA}_{H_u}\) on all \(X\), exactly as in the source. No trace quotient, sample-only equality, or uniqueness of optimal decompositions is assumed.
- Local adversarial test: The argument remains valid for any choices among multiple optimal decompositions and for infinite underlying classes. If the left class is empty, the proof correctly makes no DDim or SOA claim and relies only on the already-totalized empty list.
- Contribution to target step: It exports the exact factor-two DDim comparison and the actual-function list membership used by the later structural step.
- Verdict: PASS
- Repair direction: None.

### unit_005: Leaf lower scale and inherited irreducibility

- Statement fidelity: The lemma proves exactly (Irred) for every degree-attaining leaf of every current optimal decomposition and explicitly derives both shorter irreducibility levels required downstream.
- Proof validity: Lyu Definition 4.2's leaf clause gives \(K=p_r2^{d-t}\)-irreducibility. Since \(0\le t\le d\) and \(r\ge0\),
  \[
  K\ge p_r\ge p_0=n_0d.
  \]
  The accepted positive-branch package gives \(n_0=km\), \(k\ge2\), and \(m\ge1\); hence \(n_0\ge2\), so
  \(n_0d\ge n_0\) and \(n_0d\ge2d\ge d+1\).
- Cited-result and assumption audit: The nonempty-class, positive-integer-\(p_r\), ambient-dimension, and optimal-leaf conditions are all stated or supplied by Proposition~\ref{prop:step-006-source-map} and the accepted step_005 parameter interface. The proof does not change Lyu's irreducibility convention.
- Rigor checklist: To pass from \(K\)- to \(\ell\)-irreducibility, the proof extends any \(\ell\)-point sequence to length \(K\) by repeating a point of nonempty \(X\). Lyu's definition labels every point by the fixed function \(\operatorname{SOA}_F\), so \(F_K\subseteq F_\ell\subseteq F\). Monotonicity of Littlestone dimension and \(K\)-irreducibility force equality already at the \(\ell\)-prefix. This proves, rather than assumes, monotonicity to \(n_0\) and \(d+1\).
- Local adversarial test: At \(d=1,r=0\), \(p_0=n_0\ge2=d+1\), and the first pair remains \((2n_0,n_0)\). At \(t=d\), the power \(2^{d-t}\) is one and the lower bound still closes. Repeated extension points are legal because the source quantifies over point sequences, not distinct point sets.
- Contribution to target step: It supplies the exact \(n_0\)- and \((d+1)\)-irreducible leaf witnesses without invoking empirical error or fixed-output-family membership.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the five-unit map. The endpoint convention, two-branch inclusion, essential-function/list interface, factor-two cited-result instantiation, and irreducibility transfer are separated into named theorem-style units with stable labels.

The remaining facts used inside those units are atomic or explicitly restated: subclass monotonicity of Littlestone dimension, Bernoulli's inequality, a two-line scalar comparison, a finite set/union count, logarithm of an exact product, and restriction monotonicity. The source existence claim and all five external source statements are restated before use. Accepted dependency claims are referenced by theorem-style labels, and bare unit IDs occur only as audit handles.

The proof does not smuggle in nonempty utility-path classes. Nonemptiness is local to each source invocation; empty arbitrary-input classes receive only empty lists. It also does not infer common support from DDim nonnegativity, identify trace-equivalent functions, or silently replace the current half-scale list by Lyu's literal source-stage list.

## Target Claim Audit

The proof establishes the exact accepted step_006 row under Assumption~\ref{assump:finite-littlestone} and the accepted step_004/step_005 outputs. The source/current endpoint map and half-scale convention are exact; \(E_{\rm good}\) implies cross-block inclusion for every one of the \(d\) transitions; lists contain actual functions and satisfy the exact finite envelope; Lyu Lemma 4.3 is applied only with its \((2p,p)\) interface; equality gives exact essentiality on \(X\); and every exported leaf witness is both \(n_0\)- and \((d+1)\)-irreducible.

Quantifiers and scope are preserved for arbitrary possibly infinite \(C\), fixed arbitrary indexed labeled inputs, every realized partition on \(E_{\rm good}\), all blocks, all current stages, and every choice of optimal decompositions. The \(d=0\) learner bypasses all positive-branch objects. The proof establishes no DDim descent, common-item, mechanism, privacy, empirical-error, population-error, or PAC conclusion assigned to a later step.

The independent source check confirms the arXiv identity, v1 labels, theorem statements, SOA/irreducibility convention, actual-function equality, and the printed endpoint omission. The proof correctly treats the endpoint as a direct current wrapper rather than attributing it to the source display.

## Explicit Rate Audit

This step is rate-bearing only through the exact list envelope. It exposes \(d,r,p_r,p_d,n_0,k,L_r,L\) and retains the accepted event allocation \(\beta_{\rm tr}=\beta/4\). There are no hidden constants:
\[
|\mathcal L_i^r|\le p_r^d2^{d^2}\le L=p_d^d2^{d^2},
\qquad
\log L=d\log p_d+d^2\log2.
\]

The deterministic structural conclusions are fixed-input, fixed-partition statements; inclusion is conditional on the generated event with its accepted pointwise and joint high-probability interfaces. The horizon is exactly \(d+1\) stages and \(d\) transitions. The metrics are empirical binary error, function equality on \(X\), and LD/DDim; no population norm or convergence-mode upgrade occurs. Equations (9)-(13), \(p_r\le p_d\), and (28)-(29) display every required domination. The \(d=1\), \(r=0\), and \(d=0\)-bypass baseline checks preserve the accepted interface.

## Notation Surface Audit

Every helper object is classified. The source/current errors, stages, scales, DDim/essentiality notation, lists, and \(L\) are the stable downstream-facing interface. Decomposition trees, leaves, \(t\), and \(K\) are appendix-local. The high-branch alias \(a_d\) and the temporary \((\mathcal G,\mathcal H,p)\) source translation are proof-local. All are defined from setting/sketch quantities, accepted dependency outputs, or checked source statements.

The exported interface is minimal for downstream consumers: source/current identities, inclusion, exact actual-function lists and their envelope, the factor-two comparison/equality wrapper, and the two irreducibility levels. No trace representative, free constant, generated event, margin, threshold, or later theorem object is added.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-006-source-map} supplies (31) and positive integer scales. Accepted Proposition~\ref{prop:step-005-trace-budget} supplies the already-derived event interface. Lemma~\ref{lem:step-006-cross-block-inclusion} supplies (32). Proposition~\ref{prop:step-006-essential-lists} supplies the exact leaf identity, all Corollary 4.1 boundaries, and (33). Proposition~\ref{prop:step-006-factor-two} supplies (Pair), the DDim comparison, and equality-to-essentiality on \(X\). Lemma~\ref{lem:step-006-leaf-irreducibility} supplies (Irred) and both shorter scales.

These named local results, checked source statements, and accepted dependencies jointly imply every component of the exact target claim. The assembly uses theorem-style references rather than unit IDs or subsection titles, handles empty and nonempty classes separately, and stops before every claim assigned to step_007 or later.

## Review Rationale

The submitted proof is faithful to the unchanged accepted sketch row and valid line by line. The highest-risk interfaces all survive independent checks: the v1 endpoint is honestly totalized, the absolute scale shift is not hidden, both threshold branches close at the smallest dimension, the source's exact arbitrary-decomposition quantifiers imply actual-function essentiality, and leaf irreducibility reaches both downstream lengths. Empty, DDim-zero, infinite-class, duplicate-trace, and \(d=0/1\) boundaries are handled without an assumption upgrade. No proof-step, dependency, or sketch repair is required, so None is the smallest retry target.
