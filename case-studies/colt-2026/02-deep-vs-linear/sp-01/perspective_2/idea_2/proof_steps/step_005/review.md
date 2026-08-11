# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_2/proof_steps/step_005/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Exact boundary routing and nondegenerate controls

- Statement fidelity: The proposition at proof.md:68 matches the accepted sketch row. It gives an exhaustive all-branch split, proves the exact empty and \(d=0\) target inequalities, and exports only the nondegenerate facts \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\).
- Proof validity: The split is exhaustive because \(\mathcal H\) is either empty or nonempty and \(d\in\mathbb Z_{\ge0}\). The accepted step_001 results are used for their stated conclusions: \(\operatorname{dc}(\varnothing)=0\), the common zero-map conclusion when \(d=0\), and the first-layer count in the remaining branch. The proof deliberately does not define \(r\) or a tuple in the empty branch, so \(\log_2(0)\) is never formed.
- Cited-result and assumption audit: Assumption~\ref{assump:source-regime} is the only primitive assumption named in the local statement; the boundary and architecture propositions are accepted dependencies with matching accepted reviews. The \(d\ne0\Rightarrow d\ge1\) implication is a derived integer fact, not a strengthened assumption. No trajectory, coverage event, or polynomial bound is promoted to a primitive condition.
- Rigor checklist: The inequality \(0\le7TSd\) uses \(T,S>0\) and \(d\ge0\) from the setting. The \(d=0\) equality preserves the fixed \(\operatorname{sgn}_{\tau}(0)=\tau\) convention. The first-layer count remains valid at \(L=1\), where \(S=n\), and at \(n=T=1\).
- Local adversarial test: The empty class, nonempty zero-dimensional class, \(d=1\), \(L=1\), \(S=n\), and \(T=1\) cases all follow the displayed alternatives. In the null-dimensional case no update, sampling, or generated trajectory is needed because the theorem conclusion is already exact.
- Contribution to target step: It routes every boundary branch before direct-sum construction and supplies the positivity needed for the dimension comparison and the all-branch specialization.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact direct-sum score preservation

- Statement fidelity: The lemma at proof.md:79 proves exactly the accepted interface: one map \(\Phi\) independent of \(h\), one target-dependent separator \(u_h\) per target, and pointwise equality with a covered block score under the same tie-resolved sign rule.
- Proof validity: Accepted Proposition~\ref{prop:step-004-covering} supplies a single deterministic tuple and a nonempty covered-index set \(I_h\) for every target. Since the domain is finite, \(\mathcal H\) is finite; choosing \(\min I_h\) and one witness \(w_h\) for each target is a legitimate finite selection. The blockwise inner-product expansion is exact, all inactive terms are \(\langle0_d,\phi_j^*(x)\rangle=0\), and the displayed residual is identically zero. Applying the same \(\operatorname{sgn}_{\tau}\) to equal scores preserves labels even when the successful score is zero.
- Cited-result and assumption audit: The accepted step_001 architecture conclusion supplies \(d\ge1\) on this branch, and accepted step_004 supplies the tuple and its exact full-domain representation event. The proof does not use a target-dependent law or resample the tuple. Every new object \(I_h,i(h),w_h,u_{h,j},0_d,\Phi\) is defined from those accepted outputs and the setting's Euclidean product structure.
- Rigor checklist: The quantifier order is preserved as \(\exists\) one tuple, then \(\forall h\), then target-specific \(i(h),w_h,u_h\), then \(\forall x\). The canonical identification \((\mathbb R^d)^r\cong\mathbb R^{rd}\) gives the required dimension and inner product. No margin, nonzero-score, continuity, probability, or expectation assumption is introduced.
- Local adversarial test: For \(r=1\), \(\Phi=\phi_1^*\) and \(u_h=w_h\). Targets may select different blocks without changing \(\Phi\). Zero scores, zero coordinates in inactive blocks, and \(d=1\) all leave the pointwise identity unchanged.
- Contribution to target step: It establishes the exact common feature-map/separator interface consumed by the definition of \(\operatorname{dc}\), with no score-transfer residual.
- Verdict: PASS
- Repair direction: None.

### unit_003: Common exact representation and dimension bound

- Statement fidelity: The proposition at proof.md:125 matches the sketch target on the nondegenerate branch: \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\), with the same \(r=\lceil\log_2(2|\mathcal H|)\rceil\).
- Proof validity: Lemma~\ref{lem:step-005-score} supplies a single \(rd\)-dimensional map and exact signs for every target, so the definition of \(\operatorname{dc}\) immediately gives \(\operatorname{dc}(\mathcal H)\le rd\). Accepted Proposition~\ref{prop:step-003-budget} gives \(r\le7TS\); multiplying by the nonnegative integer \(d\ge1\) yields \(rd\le7TSd\) through the explicitly displayed difference \((7TS-r)d\ge0\). The product \(rd\) is an allowed integer dimension.
- Cited-result and assumption audit: The proposition restates the exact current-notation conclusions of accepted step_001, step_003, and step_004 and the local score lemma. It invokes no external theorem and does not treat the generated tuple or budget as primitive. The definition of \(\operatorname{dc}\) is used with the same domain, Euclidean inner product, and \(\operatorname{sgn}_{\tau}\) as setting.md.
- Rigor checklist: \(M\ge1\) on this branch, hence \(r\ge1\) is defined; \(d\ge1\) and \(T,S\ge1\) make every scalar comparison valid. The proof does not absorb a ceiling, probability, or approximation term at this stage; the only rate loss is the accepted explicit \(r\le7TS\).
- Local adversarial test: At \(M=1\), so \(r=1\), the comparison is immediate; at \(r=7TS\) it is equality; and at \(d=1\) it reduces to the accepted block-count bound. The null branches are not silently forced through this proposition and are handled by unit_001.
- Contribution to target step: It closes the deterministic theorem bound from the exact common-map certificate.
- Verdict: PASS
- Repair direction: None.

### unit_004: Conditional polynomial rate specialization

- Statement fidelity: The corollary at proof.md:140 matches the accepted optional target. It explicitly treats \(d\le p(S,T)\) as a separate local conditional hypothesis and claims the specialization only when that inequality is available.
- Proof validity: The main all-branch inequality comes from unit_001 on the two null branches and unit_003 on the nondegenerate branch. Since \(d\ge0\) and the additional hypothesis gives \(d\le p(S,T)\), one has \(p(S,T)-d\ge0\); with \(7TS\ge0\), the displayed identity \(7TSp-7TSd=7TS(p-d)\ge0\) proves the scalar substitution. The same exact representation and tie convention are retained; only the upper bound is changed.
- Cited-result and assumption audit: The local statement names the primitive source-regime condition, the preceding named routing/dimension results, and the explicit conditional inequality. It does not claim to derive \(p\) from SGD or from the confident-map premise. The requirement that all coefficients and auxiliary dependence of \(p\) be exposed and that no hidden \(n\)- or \(\eta\)-dependence enter is stated in both the hypothesis and the rate audit.
- Rigor checklist: The argument is genuinely all-branch: in the empty branch \(\operatorname{dc}=0\le7TSd\le7TSp\); in the \(d=0\) branch the exact zero-map baseline remains in force; in the remaining branch unit_003 supplies the main inequality. No probability, horizon, norm, or representation mode is upgraded or weakened.
- Local adversarial test: If \(p=d\), the bridge is equality. If \(d=0\), even \(p=0\) is handled by the exact zero-dimensional result. If the separate \(d\le p\) result is unavailable, the corollary is explicitly not asserted, so no unsupported polynomial conclusion is smuggled in.
- Contribution to target step: It supplies the requested conditional Rate Specialization Bridge without changing the main theorem contract or hiding dependence in the universal constant.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim was found. The finite-class fact used for the finite target-by-target witness selection is supplied by the basic setting: \(\mathcal X\) is finite, hence \(\mathcal H\) is finite. The nonempty covered-index sets come from the accepted step_004 quantifier order; the product-inner-product identity, zero-padding cancellation, definition-of-\(\operatorname{dc}\) implication, integer dimension arithmetic, and scalar specialization are each explicitly stated and derived. The proof does not rely on subsection titles, local unit IDs, an unproved common map, or an implicit margin/tie-avoidance claim.

## Target Claim Audit

The proof establishes the exact accepted step claim. On \(\mathcal H=\varnothing\), it uses the binding convention \(\operatorname{dc}(\varnothing)=0\) and avoids defining \(r\). On \(\mathcal H\ne\varnothing,d=0\), it preserves the exact zero-dimensional/tie-resolved conclusion. On the remaining branch, the tuple is fixed before target-specific choices, \(\Phi:\mathcal X\to\mathbb R^{rd}\) is common to all targets, and each \(u_h\) yields the exact full-domain equality \(\operatorname{sgn}_{\tau}\langle u_h,\Phi(x)\rangle=h(x)\). Thus the definition of \(\operatorname{dc}\) gives \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\). The optional conclusion is correctly conditional and all-branch: a separately established explicit \(d\le p(S,T)\) yields \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\), with no claim that such a \(p\) follows from the current assumptions.

## Explicit Rate Audit

The step exposes \(r,d,T,S\) and the intermediate public dimension \(q=rd\); its final main rate exposes only \(S,T,d\), with the optional bridge exposing the explicit polynomial \(p(S,T)\). The universal constant is exactly \(7\), with no hidden dependence on \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), or \(\mathcal P\). The proof is finite, deterministic after the accepted step_004 existence conversion, fixed-horizon, and measured in exact full-domain tie-resolved sign representation. All simplifications are displayed: score residual \(=0\), \(rd\le7TSd\) from \((7TS-r)d\ge0\), and \(7TSd\le7TSp\) from \(7TS(p-d)\ge0\). The optional polynomial coefficients and auxiliary dependence are required to be explicit rather than hidden in \(7\); no probability conversion, horizon upgrade, norm change, auxiliary tolerance, or dropped term occurs in this step. The \(M=1,r=1\), \(d=0\), empty-class, \(L=1\), and zero-score baselines are preserved.

## Notation Surface Audit

The tuple \((\phi_i^*)\), \(r\), \(\Phi\), and the existential separators are the only public-facing objects needed downstream. \(M\), \(I_h\), \(i(h)\), \(w_h\), block vectors \(u_{h,j}\), and \(0_d\) are proof-local or appendix-local bookkeeping, all explicitly defined from setting quantities or accepted dependency outputs. The direct-sum identification uses the current Euclidean product inner product and introduces no transformed or surrogate target. No constant, event, threshold, margin, boundedness claim, or conditional invariant has unexplained provenance.

## Target-Step Assembly Audit

Accepted step_001 supplies exact boundary routing and \(d\ge1,S\ge n,T,S\ge1\) on the remaining branch. Accepted step_003 supplies the same positive integer \(r=\lceil\log_2(2|\mathcal H|)\rceil\) and \(r\le7TS\), while accepted step_004 supplies one deterministic tuple covering every target. Lemma~\ref{lem:step-005-score} transfers one selected block score exactly to the common direct sum; Proposition~\ref{prop:step-005-dimension} invokes the binding definition of \(\operatorname{dc}\) and the explicit dimension comparison; Corollary~\ref{cor:step-005-polynomial-bridge} performs only the separately guarded scalar specialization. The dependency path is acyclic, every generated output has an earlier legal producer, and the all-branch target assembly has no missing bridge.

## Review Rationale

All four local units pass under the unchanged accepted sketch and dependency interfaces. The boundary routing is exact, the common tuple is consumed with the correct quantifier order, and zero padding gives a pointwise zero residual before applying the fixed tie rule. The dimension arithmetic and definition-of-\(\operatorname{dc}\) invocation are valid at \(r=1\), \(d=1\), and the other stated boundaries. The polynomial endpoint is explicitly conditional, has a displayed scalar absorption inequality, and remains valid in the null branches without claiming an unproved bound on \(d\). No local proof flaw, dependency blocker, hidden subclaim, notation/provenance defect, or sketch-interface change is present, so ACCEPTED with Smallest Retry Target = None is the smallest correct disposition.
