# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The basic setting permits (A=(2R)^N\kappa<1), in which case \(\mathcal D_{N,R,\kappa}\) is empty. The pairwise theorem is then vacuous and remains correct, but the displayed nested supremum tacitly needs the standard extended-real convention \(\sup\varnothing=-\infty\), or an explicit nonemptiness qualification, to be literally defined.
2. The `step_005` proof and review transcribe the accepted `step_001/review.md` digest as the truncated string `c935a43af6c57c18a18af36c36ce74083a6c04339e489`. The actual frozen dependency has the binding digest `c935a43af6c57c18a18af36c36ce74083a6ba91edbaf75fb9c83a6c04339e489`; all files in the supplied manifest match, and the paper proof is self-contained, so this is provenance-text drift rather than a proof break.
3. An independent Tectonic build of a temporary frozen copy completed through BibTeX with no unresolved reference or citation, but emitted one underfull-box warning near the final appendix proof. Thus the assembly report's stronger claim of “no warnings” was not reproduced exactly; this is presentational and does not affect acceptance.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The coefficient-volume certificate is the decisive claim. Replacing every accepted interface by its exact statement still gives root feasibility, a Borel least-pivot partition, exact graph coverage, the image-measure inequality, monotone exhaustion, and
  \[
  \sum_j\int_{I\cap E_j}V_j
  \leq \Gamma_{\rm piv}\sum_j|I\cap E_j|
  =\Gamma_{\rm piv}|I\cap K_R|.
  \]
  Hence the factor is exactly \((2R)^{N-1}\), with neither a multiplicity factor nor an extra factor \(N\). No verified break remains.
- Standalone theorem attack: The family \((b,F)\), compact \(\Theta\), and \(N,R,\kappa\) are fixed before laws and positive-length intervals vary. Pairwise validity precedes both suprema. The monic clause quantifies only over bounded intervals; singleton intervals are separately null, while unbounded intervals are not claimed. The theorem and setup repeatedly say `material-partial` and explicitly exclude polynomial general-instance control of \(\Gamma_{\rm piv}\) from Pfaffian-format descriptors, so no scope drift was found.
- Weakest step-level claim: `step_003` survives the area-formula attack. Each \(D_{j,m}\) is Borel and lies in a compact subset of the nonzero-pivot open set, the insertion map is locally Lipschitz, and \(J_N\Psi_j=|\partial_\theta T_j|\). The full multiplicity formula is used in the correct image-measure direction. The images increase with \(m\), every selected nonzero pivot enters a finite level, and exact two-way coverage gives \(S_I=\bigcup_{j,m}\Psi_j(D_{j,m})\).
- Candidate counterexamples or stress cases: All tested cases were neutralized. For \(b=0\), \(F=(\theta,1-\theta)\) on \([0,1]\), no coordinate is globally nonzero, yet \(V_1=R/\theta^2\), \(V_2=R/(1-\theta)^2\), the tie at \(1/2\) is measurable, and \(\Gamma_{\rm piv}=4R\). For \(N=1\), \(b=1,F=-1,R\geq1\), the coefficient \(\alpha=1\) makes \(\phi_\alpha\) identically zero, but \(\Gamma_{\rm piv}=0\) and the infinite-fiber image is the null singleton \(\{1\}\). For \(b=\theta^2,F=1,R=1,I=[0,0.1]\), the tangent-root event has coefficient length \(0.01\), below \(\Gamma_{\rm piv}|I|=0.2\), and its critical value \(\alpha=0\) is null. For \(b=\theta,F=1\) under the uniform law on \([-1,1]\), the zero-dimensional beta case attains equality: an interval of length \(0.3\) has probability \(0.15=\kappa\Gamma_{\rm piv}|I|\). The correlated density \(f=(1/3)\mathbf 1\{|\alpha_1-\alpha_2|\leq1\}\) on \([-1,1]^2\) is admissible and obeys the same full-density domination without a conditional or marginal bound.
- Explicit-rate stress cases: At \(\delta=0.25,\epsilon=0.10\), direct slicing gives \(\Gamma_{\rm piv}=4\), wedge area \(0.4\), and probability \(0.1=\epsilon/(4\delta)\). For the monic case \(d=3,R=2,\theta=-2\), the outer pivot gives
  \[
  V_{\rm top}=1+2\left(\frac1{2^2}+\frac2{2^3}\right)=2
  \leq 9=d+\frac{Rd(d-1)}2,
  \]
  confirming the negative-power reindexing and sign handling. The \(d=1\) pivot is exactly one. The density conversion uses the exact identities \(\lambda_{N-1}([-R,R]^{N-1})=(2R)^{N-1}\) and \(A/(2R)=\kappa(2R)^{N-1}\); no term or exposed dependence is absorbed.
- Appendix self-contained attack surface: Every non-atomic accepted local unit and every target-step assembly argument appears as a paper-facing lemma or proposition with proof. In particular, the appendix contains the endpoint extension, determinant calculation, localized multiplicity formula, exhaustion limit, identically-zero and tangent-root handling, wedge sections, singleton hyperplane argument, and monic compact-localization bridge. All labels are unique, all citation keys resolve, no forbidden workflow references or public `claim`/`hypothesis`/`invariant` environments occur, and all nine source/support files were reviewed.
- Scope or mode upgrade attacks: No almost-sure, expectation, asymptotic, horizon, or independence upgrade occurs. Probability is ordinary probability under a capped full joint density; arbitrary correlation is preserved. The singleton result uses absolute continuity in the original \(d\)-dimensional lower-coefficient space. The main result never randomizes the monic leading coefficient and never extends the monic statement beyond bounded intervals.
- Remaining risk: Compactness proves only fixed-family finiteness through the family-dependent witnesses \(B_0,B_1,\rho\). It supplies no polynomial bound on \(\rho^{-1}\) or \(\Gamma_{\rm piv}\) in \((q,M,\Delta_{\rm rnd},\Delta_{\rm aff})\) or other meaningful Pfaffian instance data. That source-relevant general-instance gap remains explicit and unresolved, exactly within the declared `material_partial` boundary.
