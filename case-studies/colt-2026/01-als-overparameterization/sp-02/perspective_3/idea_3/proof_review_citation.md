# Citation Proof Review

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

## Citation Audit

- Cited theorem statements: The nine public citation occurrences use seven
  external sources. Davidson--Szarek Theorem II.13 supplies the rectangular
  Gaussian operator-norm tail; Stewart--Sun Chapter IV supplies singular-value
  perturbation; Laurent--Massart Lemma 1 supplies the two chi-square tails;
  Tropp Theorem 6.1 supplies self-adjoint matrix Bernstein; Folland Chapter 2
  supplies uniqueness of Haar measure; Besse Chapter 7 supplies the
  bi-invariant connection and curvature convention; and
  Bakry--Gentil--Ledoux Chapter 5 supplies the Bakry--Emery log-Sobolev
  criterion. Each result is restated in current notation before use.
- Source fidelity: The source statements, locators, constants, probability
  modes, and non-output boundaries match their uses. Tropp's one-sided bound
  is applied to both signs to obtain the displayed two-sided factor \(2d\).
  Laurent--Massart's upper and lower inequalities are specialized explicitly,
  and the Besse and Bakry--Gentil--Ledoux metric normalizations are carried
  through the displayed Ricci, log-Sobolev, and Herbst calculation.
- Instantiation and object mapping: Davidson--Szarek is applied to the exact
  \(n\times r\) smoothing matrices and \(r\times k\) Gaussian mode array;
  Stewart--Sun to \(\bar M+(M-\bar M)\); Laurent--Massart to the exact ambient
  and projected Gaussian radii; Tropp to the centered conditionally truncated
  \(k\times k\) row summands; Folland to the finite left-invariant QR
  orientation measures; and the geometric sources to \(SO(r)^3\) with the
  unnormalized product Hilbert--Schmidt metric. No cited-paper notation or
  unexplained imported constant remains public.
- Quantitative regime fidelity: The proof preserves \(n,r,k,\kappa,q\),
  \(\rho=r^{-q}\), \(r<k\le\lfloor r^{5/4}\rfloor\), the lower-only dimension
  condition, \(c_H=1/288\), the \(\kappa_1^{12}\) elliptic loss, all explicit
  large-\(r\) thresholds, the \(r^{-20}\) constituent budgets, and the public
  \(1-r^{-10}\) confidence. Constants \(r_0,C\) depend only on
  \((\kappa,q)\). Probability is joint smoothing/initialization probability,
  with the stated conditional fibers; the horizon is all time with an
  asymptotic endpoint; and the norms are exactly \(d_{\rm bal}\), raw
  coefficient Frobenius norm, and physical tensor Frobenius norm.
- Assumption discharge: The six stable setting assumptions appear as the six
  matching numbered public assumptions. Every conditioning, Gram, size,
  leverage, deficit, convergence, radius, Taylor, and physical-loss fact is a
  named derived result. The sole theorem-facing conditional hypothesis is the
  setting-defined finite-path event \(\mathcal C_{\rm path}\), as required by
  the formalized conditional goal.
- Main theorem internal references: 3_main.tex cites only numbered assumptions
  and setup notation. It cites no appendix-local theorem, step ID, unit ID,
  workflow artifact, or later-defined helper constant. The theorem states the
  exact conditional scope and does not promote a derived invariant to a
  primitive condition.
- Appendix cited-result traceability: The current 15 accepted proof/review
  pairs contain 45 source units, with per-step counts
  \(3,3,4,3,4,4,3,4,2,2,3,3,2,2,3\). The appendix has the same 45
  theorem-style results in the same 15 dependency-ordered subsections, with
  matching stable labels, statements, derivations, boundary checks, and
  subsection assemblies. Every public unit label occurs in its accepted
  source proof, and every downstream proof use names a public theorem-style
  result rather than an internal artifact.
- External BibTeX entries: The nine citation occurrences use exactly the seven
  keys davidsonSzarek2001, stewartSun1990, laurentMassart2000, tropp2012,
  folland1999, besse1987, and bakryGentilLedoux2014. Each has one matching
  nonempty entry in reference.bib; main.tex invokes ims.bst and the
  bibliography; and the current .bbl, .blg, and .log expose no unresolved
  citation or BibTeX warning.
- Internal label/ref pairs: The public bundle has 253 labels, all unique, and
  487 ref/eqref occurrences addressing 185 distinct targets. Every target
  resolves. The six stable assumption labels, main theorem label, 45 unit
  labels, 15 step-subsection labels, equation labels, and section labels are
  consistent. There is no malformed reference, duplicate label, manual proof
  tag, unresolved target, or workflow-only proof authority.
- Unsupported standard facts: None. The nontrivial external tools are cited as
  above. Gaussian polar decomposition, the Gaussian-square MGF, compact-SVD
  mapping, twirling commutant, projection Lipschitz estimate, tensor-product
  singular bounds, finite-dimensional completeness, Cauchy--Schwarz,
  polynomial continuity, and conditional event accounting are derived in
  current notation or are elementary at the point of use.

## External Source Fidelity

| Source and locator | Exact public specialization and assumption discharge | Result |
| --- | --- | --- |
| Davidson--Szarek, Theorem II.13 | The Gaussian bound \(\Pr(\|G\|_{\rm op}>\sqrt m+\sqrt p+u)\le e^{-u^2/2}\) is scaled by \(r^{-q}/\sqrt n\) for smoothing and used with \(u=\sqrt{2\log(3r^{20})}\); its second use takes \(G=Z\in\mathbb R^{r\times k}\) and \(u=8\sqrt{\log r}\). Dimensions, transposition-invariant operator norm, thresholds, and unions are explicit. | Exact. |
| Stewart--Sun, Chapter IV | Weyl's \(\sigma_{\min}(X+E)\ge\sigma_{\min}(X)-\|E\|_{\rm op}\) is applied with \(X=\bar M\), \(E=M-\bar M\). The preceding public lemmas supply the base singular margin and perturbation bound. | Exact. |
| Laurent--Massart, Lemma 1 | Substituting \(x=d\delta^2/8\) in both chi-square deviations gives the displayed two-sided \(2e^{-d\delta^2/8}\) corollary for \(0<\delta<1\). It is used at \((d,\delta)=(n,1/2)\) and \((r,1/4)\), followed by the displayed finite unions. | Exact. |
| Tropp, Theorem 6.1 | Conditioning on the coordinate-product truncation retains independent centered self-adjoint \(k\times k\) summands. Applying Theorem 6.1 to both \(X_a\) and \(-X_a\) yields \(2k\exp[-t^2/(2v+2Rt/3)]\), with \(t=1/8\), \(R=18L_r^2k/r^2\), and \(v\le79k/r^2\), exactly as used. | Exact. |
| Folland, Chapter 2 | For each QR-shape event \(B\), \(\mu_B(A)=\Pr(O_0\in A,R_0\in B)\) is a finite left-invariant Borel measure on \(O(r)\). Haar uniqueness gives \(\mu_B=\Pr(R_0\in B)\operatorname{Haar}_{O(r)}\), including the zero-measure case, and hence the asserted orientation-shape independence. | Exact. |
| Besse, Chapter 7 | In the declared metric \(\langle K,L\rangle=-\operatorname{tr}(KL)\), the cited bi-invariant formulas and displayed \(\mathfrak{so}(r)\) basis calculation give \(\operatorname{Ric}_{SO(r)}=(r-2)g/4\). Product Ricci uses the same squared-sum metric. | Exact. |
| Bakry--Gentil--Ledoux, Chapter 5 | Compact connected \(SO(r)^3\), normalized Haar volume, and \(\operatorname{Ric}\ge\rho g\), \(\rho=(r-2)/4\), discharge \(\operatorname{Ent}(f^2)\le(2/\rho)\int\|\nabla f\|^2\). With \(L=2\sqrt3\), the public Herbst derivation gives \(e^{-(r-2)t^2/96}\le e^{-rt^2/288}\). | Exact. |

## Step Evidence Map

| Step | Public accepted-unit translations | Citation/evidence conclusion |
| --- | --- | --- |
| step_001 | 3 results | Davidson--Szarek and Stewart--Sun produce the exact realized conditioning event, singular interval, pseudoinverse bound, and \(r^{-20}\) smoothing budget. |
| step_002 | 3 results | Current-notation Gaussian/SVD algebra produces the exact coefficient law, tangent-range invariance, and preservation of \(\widehat D_0\). |
| step_003 | 4 results | Laurent--Massart, Davidson--Szarek, and Tropp are applied with all conditional moments and matrix parameters checked; the exact three normalized Gram windows follow with conditional failure \(r^{-20}\). |
| step_004 | 3 results | The Gaussian-square MGF is proved inline and the named balancing result transfers the raw radius union to the actual balanced size event. |
| step_005 | 4 results | Direct algebra proves exact raw/normalized scaling, range and kernel behavior, quotient compatibility, and \(\widehat D_0\in\mathscr S_0\). |
| step_006 | 4 results | Folland-backed Haar uniqueness and explicit QR/reflection algebra produce independent product-Haar orientations, measurable \(E\), \(d\le3kr\), and exact \(\mathscr S_0=LQE\). |
| step_007 | 3 results | Current-notation twirling and differentiation, followed by the metric-matched Besse and Bakry--Gentil--Ledoux applications, give the exact mean and \(c_H=1/288\) tail. |
| step_008 | 4 results | The exact oblique projector and singular bounds give the \(\kappa_1^{12}\) transfer; the exponential tail is converted at the explicit \(r_{0,\rm LEV}(\kappa)\) threshold to conditional failure \(r^{-20}\). |
| step_009 | 2 results | Exact membership and raw leverage produce the deficit witness and explicitly export \(\Pr_{\rm init}(\mathcal E_{\rm deficit}^c\mid A,B,C)\le r^{-20}\) for \(r\ge r_{0,\rm LEV}(\kappa)\). |
| step_010 | 2 results | Tower property and a conditional union spend exactly \(r^{-20}+3r^{-20}=4r^{-20}\), then \(4r^{-20}\le r^{-10}\). |
| step_011 | 3 results | Finite total variation proves the finite limit, endpoint displacement, and radius \(3\) on the sole path certificate. |
| step_012 | 3 results | The complete trilinear expansion and current left-inverse/radius bounds give the single raw endpoint remainder at most \(\delta_0/16\). |
| step_013 | 2 results | The event-wide witness is selected directly from \(\mathcal E_{\rm deficit}\); exact tangent cancellation and the endpoint remainder retain the \(15/16\) raw margin. |
| step_014 | 2 results | Exact mode-span projection and tensor singular values yield \(F(\theta_\infty)\ge((15/16)\delta_0)^2\kappa_1^{-12}\|T\|_F^2>0\). |
| step_015 | 3 results | Inline polynomial continuity and event conditioning retain \(\Pr(\mathcal F_+)\ge(1-r^{-10})\Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\), whose conditional factor may be zero. |

## Attempt-4 Interface Audit

- Proposition prop:step-008-raw-leverage states the exact raw target
  conclusion and exponential conditional failure. Lemma
  lem:step-008-tail-conversion separately proves the
  \(r_{0,\rm LEV}(\kappa)\) polynomial conversion.
- Proposition prop:step-009-raw-witness names both Step 008 results, states
  \(r\ge r_{0,\rm LEV}(\kappa)\), and exports the pointwise conditional
  \(r^{-20}\) deficit failure for every realized factor triple in
  \(\mathcal E_{\rm cond}\). The deterministic leverage-to-witness inclusion
  spends no additional probability.
- Proposition prop:step-010-conditional-union consumes that complete
  interface together with the normalized-Gram and size interfaces. Its tower
  argument uses one unconditional smoothing failure and exactly three
  conditional initialization failures, preserving
  \(r^{-20}+3r^{-20}=4r^{-20}\).
- The final theorem remains exactly conditional:
  \[
    F(\theta_\infty)\ge
    \left(\frac{15}{16}\delta_0\right)^2
    \kappa_1^{-12}\|T\|_F^2>0
  \]
  on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), and
  \[
    \Pr(\mathcal F_+)\ge(1-r^{-10})
    \Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
  \]
  The last factor may be zero; no unconditional positive-probability result
  is asserted.
- The accepted step_003 unit attempt 2 repaired presentation and event-alias
  syntax only. This audit found no substantive second step repair or missing
  interface, so the user's overload rule does not trigger sketch revision.

The accepted sketch and global proof artifacts were used only as diagnostic
maps after confirming their accepted review identities and current hashes.
They were not used as proof evidence or assumption sources.
