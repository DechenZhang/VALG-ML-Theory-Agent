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

- Weakest theorem-level claim: The exact unconditional affine swept-area bound was attacked at its anchor, derivative-closure, denominator, and section-geometry interfaces. The literal anchor \(F_{j_*}\equiv1\) gives both \(\|F\|_2\geq1\) and a globally legal pivot; the polynomial identity \(\widetilde F'=B\widetilde F\), the coefficient-height estimate, and the root identity bound the normal velocity without a transversality or pivot-margin premise. On each fixed section, the graph factor \(\|F\|_2/|F_j|\) cancels the chart derivative denominator exactly. Translation to a central cube section, Ball's bound, and the two factors \(\sqrt{1+NR^2}\) then give the stated \(\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}\) constant, including the separately interpreted zero-dimensional \(N=1\) section.
- Standalone theorem attack: Reading only the public setup, assumptions, and theorem did not expose a hidden premise or scope extension. The theorem declares the supplied anchored derivative-closure certificate as instance data and does not claim certificate existence or polynomial presentation-format control for unrestricted raw Pfaffian presentations. The proof fixes an arbitrary admissible joint law and arbitrary positive-length interval, proves one uniform bound, and only then takes the interval supremum and the law supremum in the declared order; no independence, conditional-density, or interval-location assumption is inserted.
- Weakest step-level claim: The most vulnerable interface was the finite-pivot area-formula exhaustion followed by persistent-root removal. Testing vanishing and changing pivots, disconnected and opposite-sign pivot cells, exhaustion boundaries, tangent and multiple roots, zero Jacobians, finite or infinite fibers, cube faces, and open, closed, or half-open interval endpoints found complete coverage: multiplicity only enlarges the area integral, critical preimages contribute zero Jacobian, and \(E_{j,n}\uparrow E_j\) removes every artificial \(1/n\) margin. Coefficients producing an identically zero root function form a proper affine null set because of the anchor, so one arbitrary correlated full-joint density assigns them probability zero.
- Candidate counterexamples or stress cases: The attacks \(N=1\), \(q=0\), \(m=0\), constant dictionaries, stationary projective curves, \(F_0\equiv0\), zero derivative certificates, empty chart or section domains, null nonpivot sums, and every legal vacuous branch were all neutralized explicitly. Almost-everywhere cube support and density bounds suffice because all exceptional coefficient sets are Lebesgue null; no pointwise density representative or product law is used. Large upper bounds exceeding one remain valid probability bounds. Zero-length monic intervals reduce to a fixed-root affine hyperplane and hence have probability zero, so the zero right-hand side is sound.
- Explicit-rate stress cases: The affine-to-homogeneous specialization removes \(F_0\) before using \(\gamma_F'=(I-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F\), so \(\Gamma_{\rm proj}(F)\leq\widehat\Lambda_{B,T}\) has no hidden denominator. For the original-coordinate monic charts, \(B_{0,d}=d\) and \(B_{k+1,k}=k\); \(d=1\) gives \(T_1=-\theta\) with unit derivative and zero-dimensional beta mass, while \(d=2\) gives \(T_2=-\theta-\beta_0/\theta\) and \(T_2'=-1+\beta_0/\theta^2\) on both signs of \(|\theta|>1\). The deterministic leading coefficient stays outside the random vector, and arbitrary interval location introduces no extra \(T\)-dependence. In Counter-example 1, direct calculation gives \(\widehat\Lambda_{B,T}=\Gamma_{\rm proj}=1/\delta\), wedge area \(\epsilon/\delta\), probability \(\epsilon/(4\delta)\), and interval ratio \(1/(4\delta)\), including \(\delta=1\) and \(\epsilon=\delta\). The public \(\sqrt2/\delta\) quantity is correctly identified as the dimensionless Ball normalization times the certificate, not as the probability ratio or the full translated-section factor.
- Appendix self-contained attack surface: I independently compared all 49 accepted local units and every one of the 12 Target-Step Assembly arguments with the corresponding public appendix statements, derivations, cited-result mappings, boundary cases, and final theorem synthesis. Each theorem-critical source argument has substantive paper-facing proof text; no accepted-source derivation is replaced by workflow narration, an assembly count, or an unexplained routine-step shortcut. In particular, the public proof itself contains the anchor and projective derivations, measurable exhaustion and area-formula checks, graph-to-section Jacobian conversion, translated-cube section argument, affine and homogeneous integrations, monic specialization, and counterexample area calculation.
- Scope or mode upgrade attacks: No event-to-global, conditional-to-unconditional, or convergence-mode upgrade occurs. The result remains an ordinary-probability statement uniform over the declared capped-density laws and intervals, with arbitrary within-vector correlation and fixed deterministic dictionaries. Persistent roots are removed by a proved null-set argument rather than an exclusion assumption, and the homogeneous, monic, and counterexample clauses stay within the exact declared derivative-closure class.
- Remaining risk: None at acceptance level. The attacks found conservative constants and null or degenerate branches, but no verified break, unresolved high-risk candidate counterexample, hidden transversality, pivot margin, denominator, projective-bound assumption, or appendix omission.
