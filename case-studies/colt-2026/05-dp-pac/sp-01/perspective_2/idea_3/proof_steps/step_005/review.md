# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_005/proof.md
- Reviewed proof SHA-256: 044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_001 proof/review SHA-256: 061c31df9fd9ebb495de80126984df01e0f75a7e8d711b96fb14c6567499b486 / 1c08770404c3d9c8a40ad34913620008d83a573c6c115dc9acfe081c3aa65ca6
- Accepted step_004 proof/review SHA-256: a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d / d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Ceiling-aware trace fixed point and master-size bound

- Statement fidelity: The lemma states exactly the two scalar exports assigned to step_005, on the positive-dimensional branch and under the accepted step_001 parameter package. It explicitly fixes \(C_{\rm blk}=2^{20}\), defines \(C_{\rm fp}=2+\log(C_{\rm blk}+1)\), and bypasses every positive-branch expression at \(d=0\).
- Proof validity: From \(d,a\ge1\), \(0<\alpha<1/4\), and \(Q>e\), the ceiling argument \(d^2a\log Q/\alpha>4>1\) is valid. Thus \(\lceil x\rceil\le x+1\) gives the displayed bound on \(m\), and multiplication by \(k>0\) gives the exact bound on \(n_0=km\). Substitution into \(en_0/v\) uses the correct-direction inequality \(ekd^2a/(\alpha v)\le Q\). Taking logarithms is legal, and \(\log\log Q\le\log Q\) follows by applying \(\log y\le y\) to \(y=\log Q>1\). The final factorization uses both \(\log Q>1\) and \(\log(C_{\rm blk}+1)>0\).
- Cited-result and assumption audit: Accepted Proposition~\ref{prop:step-001-boundary-entry} supplies the \(d=0\) bypass and \(1\le v\le d\); accepted Lemma~\ref{lem:step-001-candidate-legality} and Proposition~\ref{prop:step-001-teacher-existence} supply \(k\ge2\), the exact candidate-realized dictionary, integer legality, \(n_0\ge v\), and the fixed allocation. The step uses Assumption~\ref{assump:approximate-dp-regime} only for the stated scalar ranges. Instantiating the setting-permitted universal \(C_{\rm blk}\) at \(2^{20}\) is compatible with the dependency's arbitrary fixed universal calibration.
- Rigor checklist: All denominators are positive; no ceiling term is discarded; all inequalities are nonasymptotic; and \(C_{\rm fp}\) is independent of \(d,v,k,\alpha,\beta,\varepsilon,\delta\) and all generated objects. The fixed-point direction is noncircular: accepted step_001 defines \(Q(t)\) before \(m(t),n(t)\) for every candidate \(t\), proves existence of the least feasible \(k\), and only then realizes \(Q=Q(k),m=m(k),n_0=n(k)\).
- Local adversarial test: At \(d=v=1\), every denominator remains positive and \(Q>e\). For a ceiling-dominated block size, the additive one is retained in (9). At \(v=d\), the proof remains valid without claiming a structural saving. The \(d=0\) branch evaluates none of \(a,Q,m,n_0,1/v,1/d\).
- Contribution to target step: It proves both the exact technical sample-size bound and the ceiling-aware logarithmic closure consumed by the trace-budget proposition and later public specialization.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact allocation of the trace failure

- Statement fidelity: The proposition proves the accepted row's remaining output exactly: the step_004 trace expression is at most \(\beta_{\rm tr}=\beta/4\), pointwise conditionally for every indexed \(S\) and jointly unconditionally for every admissible sample law. It neither changes the event nor claims any later source-wrapper, mechanism, privacy, or PAC conclusion.
- Proof validity: With \(C_{\rm blk}=2^{20}\), \(C_{\rm fp}+2=4+\log(2^{20}+1)<25\), while \(c_{\rm tr}C_{\rm blk}=2^{20}/3600>25\); numerically these are approximately \(17.863\) and \(291.271\). For \(\ell=\log(4k/\beta)\), \(k\ge2\) and \(\beta<1/4\) give \(\ell>\log32>\log4\), so \(\log(16k/\beta)=\ell+\log4\le2\ell\le2a\log Q\). The lower side of the exact ceiling gives \(c_{\rm tr}m\alpha/d^2\ge c_{\rm tr}C_{\rm blk}a\log Q\). Since \(a\ge v\), these inequalities imply the displayed exponent domination \(vC_{\rm fp}\log Q+\log(16k/\beta)\). Subtracting it from \(\log(4k)+v\log(en_0/v)\) leaves exactly \(\log(\beta/4)\), so exponentiation proves the claimed allocation with no missing factor.
- Cited-result and assumption audit: Accepted Propositions~\ref{prop:step-004-conditional-trace} and \ref{prop:step-004-unconditional-trace} supply exactly the conditional and tower-integrated raw bounds with \(c_{\rm tr}=1/3600\). Lemma~\ref{lem:step-005-ceiling-fixed-point} supplies the logarithmic multiplicity control. Accepted step_001 supplies \(k\ge2\), \(a=v+\log(4k/\beta)\), the exact ceiling definition of \(m\), and \(\beta_{\rm tr}=\beta/4\). No block independence, iid sampling, realizability, or event membership is assumed.
- Rigor checklist: The proof separates the trace charge \(vC_{\rm fp}\log Q\) from the confidence charge \(\log(16k/\beta)\), preserves the exact constant \(1/3600\), and uses the ceiling in the favorable lower-bound direction. The left side of (13) is positive, logarithm and exponentiation are legal, and all inequalities are uniform over the allowed public parameters.
- Local adversarial test: The weakest branch \(v=1\), including \(d=v=1\), satisfies every domain check. Taking \(\beta\uparrow1/4\) and \(k=2\) still gives the strict \(\ell>\log32\) margin. Arbitrarily small \(\alpha\) only enlarges the block exponent. Dependence among partition blocks and arbitrary sample laws do not affect the accepted pointwise bound or its tower conversion.
- Contribution to target step: It converts the accepted raw trace formula into the exact \(\beta/4\) generated-event budget in both required probability modes.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the two-unit map. Ceiling control and logarithmic fixed-point closure are contained in Lemma~\ref{lem:step-005-ceiling-fixed-point}; numerical constant compatibility, confidence-log domination, exponent comparison, and conditional/unconditional budget transfer are contained in Proposition~\ref{prop:step-005-trace-budget}. The elementary ceiling, logarithm, and monotonicity facts are restated before use. Dependency propositions and local results are cited by theorem-style names and stable labels; bare unit IDs occur only as audit handles.

The proof does not use a later stage convention, source wrapper, list fact, mechanism event, privacy claim, population-generalization claim, or final rate elimination. Its statement that \(Q\) precedes \(m,n_0\) is backed by the accepted candidate-level construction in step_001, rather than by syntactic ordering alone.

## Target Claim Audit

The proof establishes the exact accepted step_005 claim. On \(d\ge1\), it proves

\[
\log(en_0/v)\le C_{\rm fp}\log Q,
\qquad
n_0\le(C_{\rm blk}+1)\frac{kd^2a\log Q}{\alpha},
\]

with explicit universal \(C_{\rm blk}=2^{20}\) and \(C_{\rm fp}=2+\log(2^{20}+1)\), and then proves

\[
4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le4k(en_0/v)^ve^{-c_{\rm tr}m\alpha/d^2}
\le\beta_{\rm tr}=\beta/4,
\qquad c_{\rm tr}=1/3600.
\]

The exact \(d=0,N=0\) branch is bypassed, \(v=1\) is included, and neither the quantifiers nor the conditional/unconditional probability modes are strengthened or weakened.

## Explicit Rate Audit

The step is rate-bearing through its technical \(k\)-dependent sample bound and exact confidence allocation. It exposes \(d,v,k,\alpha,\beta,a,Q,m,n_0,c_{\rm tr},C_{\rm blk},C_{\rm fp}\), with no unstated hidden dependence. All ceiling, trace-multiplicity, and confidence terms have displayed domination inequalities. The probability mode is pointwise conditional high probability over the partition given every \(S\), followed by the accepted joint unconditional tower conversion; the horizon is one fixed master sample and partition; the output is a scalar failure-probability bound. The proof correctly leaves elimination of \(k,a,Q\), the public \(\Lambda\)-rate, the \(v=d\) comparison, and the remaining failure allocations to later accepted sketch steps. Exact \(d=0\) recovery is preserved.

## Notation Surface Audit

The proof classifies the setting/sketch-facing objects \(a,Q,m,n_0,k,\beta_{\rm tr},E_{\rm good}\) and \(C_{\rm blk}\) as public-facing, \(C_{\rm fp}\) and inherited \(c_{\rm tr}\) as appendix-local, and \(\ell\) and \(\mathsf Q\) as proof-local. Every helper has explicit provenance and is eliminated or confined to its stated scope. The exported interface contains only the trace budget and technical sample bound needed downstream; no unnecessary helper dictionary is exported.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-001-boundary-entry} supplies the exact branch split. Accepted Lemma~\ref{lem:step-001-candidate-legality} and Proposition~\ref{prop:step-001-teacher-existence} supply the fixed allocation and realized positive-branch dictionary. Lemma~\ref{lem:step-005-ceiling-fixed-point} proves both scalar exports. Proposition~\ref{prop:step-005-trace-budget}, together with accepted Propositions~\ref{prop:step-004-conditional-trace} and \ref{prop:step-004-unconditional-trace}, proves the exact trace budget in both probability modes. These named results jointly imply the sketch row without using any step_006-or-later obligation or the global diagnostic as proof authority.

## Review Rationale

ACCEPTED is the smallest correct status. Both local units are faithful to the unchanged accepted row and valid line by line; all binding and dependency hashes match; the ceiling, \(Q>e\), log-log, numerical-constant, confidence-log, and exponent inequalities are explicit and correctly directed; the closure is noncircular through accepted step_001; and the exact \(\beta/4\) allocation is preserved from conditional to unconditional mode through accepted step_004. No proof-step, dependency, or sketch repair is required, so None is the aligned smallest retry target.
