# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

None

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The exact-learner-to-VC implication is the highest-risk link. I re-ran the attack with a shattered set \(Z\) of size \(2T\), a uniformly random labeling \(B\), arbitrary fixed representatives \(h_b\), and an architecture that may encode the whole class \(\mathcal H\). Even an architecture that knows \(\mathcal H\) can receive \(B\) only through the sampled scalars \(B_{X_t}\). The live appendix defines \(U(\theta,x,y)=\theta-\eta\nabla^{\mathrm{src}}_\theta\ell(yf_\theta(x))\) at lines 165--169, exactly matching the setting and accepted step_002 proof; induction at lines 178--183 therefore gives the required sampled-label information interface. Conditioning on \(X\), the ordered sample, observed labels, and initialization leaves \(B_X\) fair on the unseen event. The exact avoidance probability and strict \(1/4>\varepsilon\) contradiction are displayed at lines 260--302 and 369--405. No counterexample survives this interface.
- Standalone theorem attack: Reading only 1_intro.tex, 2_preliminary.tex, and 3_main.tex, the claim is explicitly conditional on one law \(\mathcal P\) fixed before all targets and distributions. It does not silently claim that SGD supplies \(\mathcal P\), does not claim a polynomial bound on \(d\), and retains deterministic exact full-domain tie-resolved representation. The theorem's target is therefore the formalized conditional target rather than the unresolved unconditional source question; this is intentional and consistently stated.
- Weakest step-level claim: In step_002, I attacked (i) repeated training inputs, (ii) \(T=1\), (iii) an aggregate score equal to zero, (iv) arbitrary ReLU kink encounters, and (v) representatives that differ arbitrarily outside \(Z\). Repetitions reveal no coordinate beyond the sampled index set; at \(T=1\) the unseen probability is exactly \(1/2\); the fixed \(\operatorname{sgn}_{\tau}\) makes a zero score a fixed binary prediction; the declared source subgradient convention makes each update single-valued; and updates query the target only at sampled inputs, so values outside \(Z\) cannot enter. The finite average is converted to one fixed \(h_{b_\star}\) before the universal expected-risk premise is invoked. The accepted proof and the assembled appendix agree on all of these interfaces.
- Candidate counterexamples or stress cases: I checked \(\mathcal H=\varnothing\), nonempty \(d=0\), \(d=1\), \(L=1\), \(n=1\), \(S=n\), \(T=1\), \(v=0\), \(v=N=2^n\), \(|\mathcal H|=1\), \(r=1\), repeated samples, success probability exactly \(1/2\), zero block scores, and targets covered by different blocks. The empty and zero-dimensional branches are closed exactly; \(v=0\) gives \(M=r=1\); the Sauer--Shelah recursion handles \(v=N\); the ceiling payment \(2\leq2TS\) is valid at \(T=S=1\); and the union bound still yields positive simultaneous-coverage probability when \(M2^{-r}=1/2\). No verified break or candidate counterexample remains.
- Explicit-rate stress cases: The live appendix derives \(v<2T\), \(M\leq\sum_{j=0}^v\binom{2^n}{j}\), and, for \(v\geq1\), \(\log_2 M\leq5Tn\), then pays the ceiling and eliminates \(n\) using \(S\geq n\) to obtain \(r\leq7TS\). The \(v=0\) division-by-zero case is separated before the binomial estimate. All exposed rate variables and modes remain unchanged: fixed finite \(T\), exact expected-risk premise, per-target \(1/2\) map probability, deterministic existence after the union bound, and exact sign representation. The optional \(d\leq p(S,T)\) statement is a displayed scalar specialization, not an unsupported rate upgrade.
- Appendix self-contained attack surface: The live bundle contains the five paper-facing appendix subsections, all 17 accepted source local units, all five target-step assemblies, and the final main-theorem proof. The repaired attempt differs from the consumed attempt-1 appendix only by replacing the malformed bare eta with \(\eta\); no accepted mathematical content was changed. The current appendix uses theorem-style labels for dependencies, contains no workflow-only proof-step or local-unit references, and exposes the sigma-field argument, Sauer--Shelah recursion, numerical estimates, product/union probabilities, score identity, and boundary branches. The fresh compile log reports no errors, undefined references, undefined citations, duplicate labels, or malformed-command errors. The support files are present; the bibliography is intentionally unused and no external theorem is needed.
- Scope or mode upgrade attacks: The proof never upgrades expected risk to a learner high-probability statement, finite horizon to all time, conditional map success to an unconditional SGD consequence, or target-wise random maps to a target-dependent deterministic map. The product law is formed from the single common \(\mathcal P\), the finite union is over the fixed finite class, and a tuple is fixed only after a positive-probability simultaneous event is established. Direct-sum padding has pointwise score residual exactly zero, so ties and representation mode are preserved.
- Remaining risk: No acceptance-blocking adversarial issue remains in assembly attempt 2. The former attempt-1 transcription break at the update-map interface is absent in the live bundle; the repaired token is identical to the setting and accepted step artifact. The specialized rigor, citation, structural, and aggregate reviewers should still use this fresh artifact as the attempt-2 diagnostic, but no adversarial repair is indicated.

Verdict alignment: PASS requires Blocking Issues = None, Suggested Repair Depth = None, and Smallest Candidate Repair Target = None. BLOCKING requires at least one numbered blocking issue, non-None repair depth, and an aligned repair target.
