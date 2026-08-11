# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_007
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_007/proof.md
- Reviewed proof SHA-256: ac2b7cf238b2c88552225bb275163a22ba5d83b427f6ec06404ab1b57c9677ce
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_006 proof/review SHA-256: 3a761879525b3a4832fcfaa0b119a9307b7c027594271fd20e392ffbb1bc464f / 331d52e75329220d7fa686561708c7e91dbf261704597893d8e5da5d83bd3303
- Primary-source preflight: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1; independently checked frozen `submission/main.tex` SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.
- Evidence boundary: the diagnostic global proof and its review were not used as proof evidence, citation support, or assumption sources.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Realizable support and exact score semantics

- Statement fidelity: The proposition proves exactly the utility-path nonemptiness and exact common-actual-function score semantics needed before DDim comparisons. It covers every queried stage \(0\le r\le d\), including the endpoint, without claiming that the target is essential before the zero-DDim case.
- Proof validity: Realizability gives \(e_i(c)=0\) on every fixed block. The accepted source map gives \(H_i^r=\{h\in C:e_i(h)\le\rho^{r+1}\gamma\}\) with a nonnegative threshold, so \(c\in H_i^r\). The accepted list proposition makes every list a finite set of actual functions. Hence the finite union maximum is attained when nonempty, and a score equal to \(k\) is equivalent to membership of one union-list function in all \(k\) lists. When the union is empty, \(q_r=0<k\), consistently with the accepted \(k\ge2\) interface.
- Cited-result and assumption audit: Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid} supply only the ambient class and exact labels. The source map and lists are accepted dependency conclusions. Membership \(c\in H_i^r\) is derived here, not assumed.
- Rigor checklist: All stages and blocks remain quantified; no event or mode upgrade is used. Equality is equality of functions on \(X\), not equality of traces. Infinite \(C\), repeated points, duplicate traces, and empty list unions cause no defect.
- Local adversarial test: If every positive-DDim list is empty, \(q_r\ne k\). Different leaf witnesses across blocks cannot manufacture score \(k\) unless the same actual map lies in all lists.
- Contribution to target step: It makes every \(M_r\) legal on the realizable path and fixes exact score-\(k\) semantics.
- Verdict: PASS
- Repair direction: None.

### unit_002: Positive DDim plateau and common actual function

- Statement fidelity: The proposition proves \(0\le M_r\le d\), transition monotonicity, and the exact positive-plateau alternative. It claims neither the zero case nor mechanism accuracy.
- Proof validity: Choose \(i_*\) attaining \(M_{r+1}\). For every current block \(i\), the accepted factor-two proposition gives
  \[
  M_{r+1}=\operatorname{DDim}_{p_{r+1},d}(H_{i_*}^{r+1})
  \le\operatorname{DDim}_{p_r,d}(H_i^r)\le M_r.
  \]
  A plateau \(M_{r+1}=M_r=t>0\) therefore forces every intermediate current DDim to equal \(t\). Fixing one optimal left decomposition and one dimension-\(t\) leaf before varying \(i\) is valid; the accepted equality wrapper puts the SOA of that same fixed leaf in every current list.
- Cited-result and assumption audit: Frozen v1 Lemma 4.3 compares arbitrarily chosen optimal \((2p,d)\)- and \((p,d)\)-decompositions and, under equality, matches every top left leaf to a top right leaf with equal SOA function. The exact map is
  \[
  (G,H,2p,p)=(H_{i_*}^{r+1},H_i^r,p_{r+1},p_r),
  \]
  using accepted inclusion and \(p_{r+1}=2p_r\). Arbitrary choice of the right decomposition yields Definition 4.3 essentiality. Unit_001 supplies nonemptiness.
- Rigor checklist: Optimal degrees are integers in \(\{0,\ldots,d\}\). No uniqueness is assumed. Pointwise SOA equality on all \(X\) makes one fixed function work for every \(i\).
- Local adversarial test: Multiple optimal trees, different matching right leaves, infinite classes, duplicate traces, and \(t=d\) preserve the fixed left SOA. Without a plateau, only monotonicity is asserted.
- Contribution to target step: A positive no-drop transition exposes one identical actual function of score \(k\).
- Verdict: PASS
- Repair direction: None.

### unit_003: Zero DDim and the common realizable target

- Statement fidelity: The lemma handles the zero-potential boundary for every \(0\le r\le d\), including \(M_0=0\) and \(M_d=0\).
- Proof validity: Since all current DDim values are nonnegative integers, \(M_r=0\) forces every block value to zero. Unit_001 gives \(c\in H_i^r\ne\varnothing\); accepted Corollary 4.1 Item 4 gives \(\mathcal L_i^r=H_i^r\). The identical target \(c\) is therefore in all lists and has score \(k\).
- Cited-result and assumption audit: Frozen v1 Corollary 4.1 Item 4 says that at DDim zero the class is finite and its essential hypotheses are exactly all its hypotheses. It is applied only after nonemptiness and at the current scale \(p_r\). Items 2 and 3 are not used to erase the factor-two interface or infer generic support.
- Rigor checklist: The maximum-zero inference preserves every block. List/class equality is equality of actual function sets on \(X\). No finiteness assumption on \(C\) is added.
- Local adversarial test: Singleton restrictions, infinite ambient \(C\), and the final queried stage \(r=d\) all close. The support source is Item 4 plus the common target, not nonnegativity alone.
- Contribution to target step: It closes both initial and terminal zero cases with score \(k\).
- Verdict: PASS
- Repair direction: None.

### unit_004: Strict signed integer descent

- Statement fidelity: The lemma proves the one-unit recurrence when no actual score-\(k\) function exists and specializes it to accurate `Below`. It does not treat a bare transcript as evidence.
- Proof validity: If \(q_r<k\), unit_003 excludes \(M_r=0\), hence \(M_r\ge1\). Unit_002 gives \(M_{r+1}\le M_r\); equality would be a positive plateau and force \(q_r=k\). Thus \(M_{r+1}<M_r\), and integrality gives \(M_{r+1}\le M_r-1\), with no defect term.
- Cited-result and assumption audit: \(E_{\rm good}\) is an accepted generated condition used locally. The local hypothesis \(\mathsf{AccBelow}_r\) includes the later certificate \(q_r<k\). Establishing that a transcript supplies this certificate remains assigned to `step_008`.
- Rigor checklist: The range is exactly \(0\le r<d\), and strict-to-unit descent uses integer-valued DDim. Accurate `Below` and a bare `Below` transcript are explicitly distinguished.
- Local adversarial test: A false-negative or bare transcript triggers no recurrence here. At \(M_r=1\), certified absence forces \(M_{r+1}=0\), activating the next-stage zero lemma without a negative potential.
- Contribution to target step: It supplies signed, defect-free descent with unit charge.
- Verdict: PASS
- Repair direction: None.

### unit_005: Finite termination and endpoint closure

- Statement fidelity: The proposition produces a score-\(k\) actual function at \(r_*\le M_0\le d\), and explicitly covers \(M_0=0\), \(M_d=0\), \(d=1\), and the absence of \(M_{d+1}\).
- Proof validity: Let \(s=M_0\in\{0,\ldots,d\}\). If \(s=0\), unit_003 gives immediate success. Otherwise, either \(q_j=k\) for some \(j<s\), or unit_004 applies at every legal \(j=0,\ldots,s-1\), giving \(M_j\le s-j\). Nonnegativity forces \(M_s=0\), and unit_003 supplies \(f_*=c\). Since \(s-1\le d-1\), every transition is defined.
- Cited-result and assumption audit: Only named earlier local results and the fixed event are consumed; no new theorem, stopping premise, or selection fact is introduced.
- Rigor checklist: Earlier success and the all-failure induction are separated. When \(s=d\), the last operation evaluates stage \(d\); it does not transition to an undefined stage.
- Local adversarial test: \(M_0=0\) uses no transition. \(M_0=d\) and no earlier full score yields exactly \(d\) drops and \(M_d=0\). For \(d=1\), the sole transition \(0\to1\) covers both possible initial values.
- Contribution to target step: It converts descent into the required finite full-score stage.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing. Support/score semantics, positive plateau support, zero-DDim support, signed descent, and finite termination are separate named units with stable labels and immediate proofs.

The exact source statements and current-object mapping are restated before use. One fixed left leaf defines one actual SOA function, and Lyu Lemma 4.3's arbitrary-right-decomposition quantifier makes that identical function essential in every current list. Corollary 4.1 Item 4, rather than trace equality, Item 3, or DDim nonnegativity, supplies the zero case.

The remaining mechanism boundary is visible: accurate `Below` contains \(q_r<k\), whereas a bare transcript is excluded. `step_008` must prove that certificate. Bare unit IDs occur only as audit handles and headings; the proof and assembly use theorem-style names and stable labels. The diagnostic global proof is not consumed.

## Target Claim Audit

On the accepted generated event \(E_{\rm good}\), under Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid} and accepted step_006 outputs, absence of an actual score-\(k\) function at any legal transition implies
\[
M_{r+1}\le M_r-1.
\]
Thus every accurately `Below` stage has the claimed descent. A positive plateau produces one identical actual function in every list; DDim zero puts the common target in every list. Some \(r_*\le M_0\le d\) therefore has score \(k\).

The proof preserves arbitrary possibly infinite \(C\), fixed realizable samples and partitions on \(E_{\rm good}\), all blocks, queried stages \(0,\ldots,d\), and transitions \(0,\ldots,d-1\). It handles \(M_0=0\), \(M_d=0\), and \(d=1\), never consumes \(M_{d+1}\), and proves no downstream mechanism, privacy, selection, empirical-error, or PAC claim.

## Explicit Rate Audit

The rate-bearing obligation is the absence of a multiplicative stage-sample factor. The exact horizon is \(d+1\) queries and \(d\) transitions, with integer potential \(M_r\in\{0,\ldots,d\}\) and recurrence \(M_j\le M_0-j\). There are no hidden constants, tolerances, term absorptions, probability conversions, or norm changes.

Every stage reuses the same master sample and fixed \(k\) blocks. No fresh data or block replication occurs. The values \(p_r=2^rn_0d\) are decomposition scales, not sample counts, so neither \(d\) nor \(d+1\) multiplies \(n_0\). Conditioning on the accepted event adds no failure probability. The \(M_0=0\), \(M_d=0\), \(d=1\), and \(d=0\)-bypass baselines are preserved.

## Notation Surface Audit

The lists and query values are accepted public interfaces; \(r_*,f_*\) are the minimal downstream output. The potential \(M_r\) and plateau leaf are appendix-local. The expanded score, \(i_*,t,s\), and accurate-`Below` symbol are proof-local. Every object has setting, dependency, or named-local-result provenance, and no helper notation hides boundedness, support, or functional identity.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-007-support-semantics} gives nonemptiness and exact score semantics. Proposition~\ref{prop:step-007-positive-plateau} gives monotonicity and common actual-function support at positive plateaus. Lemma~\ref{lem:step-007-zero-ddim} handles zero via the target. Lemma~\ref{lem:step-007-strict-descent} supplies signed descent. Proposition~\ref{prop:step-007-finite-termination} spends at most \(M_0\le d\) units to reach a full-score queried stage.

These accepted dependency claims and five named results jointly imply the exact target, all endpoint cases, and the same-function interface. The assembly uses theorem-style references and adds no unreviewed lemma or stronger claim.

## Review Rationale

The proof is faithful to the accepted sketch row and valid line by line. Frozen v1 supplies the exact \((2p,d)/(p,d)\) comparison, arbitrary-decomposition SOA equality, essential-function definition, and zero-DDim identity; step_006 maps them without residual to \((H_{i_*}^{r+1},H_i^r,p_{r+1},p_r)\). The five units derive support, plateau equality, zero support, signed descent, and finite termination without assuming mechanism accuracy, quotienting by traces, invoking an undefined endpoint, or multiplying samples across stages. No repair is required, so None is the smallest retry target.
