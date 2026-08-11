# Proof Step Review

## Step Review Identity

- Sketch attempt: 10
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_3/proof_steps/step_007/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Sequential SO(r) twirling gives the exact projection mean

- Statement fidelity: The lemma targets exactly the fixed-\(E\), fixed-nonzero-\(X\) mean required by the accepted row, cites Assumption~\ref{assump:dimension} for \(r\ge3\), and introduces no operator-norm, net, supremum, anisotropic-map, or transformed-target claim.
- Proof validity: For every \(r\ge3\), the subgroup of \(SO(r)\) fixing a unit vector \(u\) acts on \(u^\perp\) as \(SO(r-1)\) and has fixed space exactly \(\operatorname{span}\{u\}\). Thus every real endomorphism commuting with the standard representation is scalar. Taking \(W\)-matrix coefficients gives the operator commutant \(I_V\otimes\operatorname{End}(W)\). Partial-trace invariance then proves
  \[
    \mathcal T_V(A)=\frac{I_V}{r}\otimes\operatorname{Tr}_V(A).
  \]
  Applying this identity successively in the three commuting tensor modes, with independence justifying the iterated integrals, yields \(\mathbb E[QP_EQ^{\mathsf T}]=(d/r^3)I_{\mathcal H}\), hence \(\mathbb Eh=d/r^3\).
- Cited-result and assumption audit: The real commutant statement is proved directly from the stabilizer action and Haar invariance. No complex Schur-lemma shortcut, \(O(r)\) replacement, or unsupported irreducibility assertion is used. Accepted Proposition~\ref{prop:step-006-product-shape} supplies product Haar and independence from the internal shape.
- Rigor checklist: Quantifiers, projector conjugation, tensor-mode ordering, trace normalization, and division by \(\|X\|_F^2\) are correct. The operator twirl is proved for arbitrary real \(A\), so specializing to \(P_E\) is valid.
- Local adversarial test: For \(d=0\), both sides vanish. For \(E=\mathcal H\), the twirl is the identity and \(d/r^3=1\). The exceptional \(r=2\) commutant behavior is excluded exactly by \(r\ge3\).
- Contribution to target step: Supplies the exact mean with the required \(r^{-3}\) normalization.
- Verdict: PASS
- Repair direction: None.

### unit_002: Metric-exact Lipschitz bound for product rotations

- Statement fidelity: The lemma proves exactly \(\operatorname{Lip}(h)\le2\sqrt3\) for the unnormalized product Hilbert--Schmidt geodesic metric in the accepted sketch.
- Proof validity: In the bi-invariant metric \(\langle K,L\rangle_F=-\operatorname{tr}(KL)\), the product path \(Q_m(s)=e^{sK_m}Q_m\) has squared speed \(\sum_m\|K_m\|_F^2\). The tensor action differentiates with
  \[
    \mathcal K=K_a\otimes I\otimes I+I\otimes K_b\otimes I+I\otimes I\otimes K_c.
  \]
  The bounds \(\|\mathcal K\|_{\rm op}\le\sum_m\|K_m\|_{\rm op}\le\sqrt3(\sum_m\|K_m\|_F^2)^{1/2}\), \(P'(0)=[\mathcal K,P]\), and \(\|[\mathcal K,P]\|_{\rm op}\le2\|\mathcal K\|_{\rm op}\) give the directional derivative estimate. Integrating the pointwise bound along a minimizing product geodesic proves the global Lipschitz constant.
- Cited-result and assumption audit: The geodesic convention is metric-matched, and the tensor-generator and commutator bounds are derived in current notation. No normalized metric, hidden factor of \(r\), or unsupported operator/Hilbert--Schmidt comparison appears.
- Rigor checklist: Left/right translation causes no scale change because the metric is bi-invariant. The projector formula is valid for every subspace, and \(h\) is smooth on \(SO(r)^3\).
- Local adversarial test: If \(E=\{0\}\) or \(E=\mathcal H\), \(h\) is constant. Turning on one generator recovers the one-factor bound; three equal-speed generators produce exactly the Cauchy--Schwarz factor \(\sqrt3\), with no tensor-dimension factor.
- Contribution to target step: Supplies the metric-matched Lipschitz input for concentration.
- Verdict: PASS
- Repair direction: None.

### unit_003: Ricci-log-Sobolev-Herbst tail in the unnormalized product metric

- Statement fidelity: The proposition proves the required one-sided fixed-target tail, first in a stronger prefactor-one form for every \(t>0\), then in the accepted \(8\exp(-c_Hrt^2)\) form for \(0<t\le1\), without changing scope.
- Proof validity: For the orthonormal basis \(F_{ij}=(E_{ij}-E_{ji})/\sqrt2\) under \(\langle K,L\rangle_F=-\operatorname{tr}(KL)\), the bi-invariant curvature formula gives \(\operatorname{Ric}=-B/4\). The real Killing form identity
  \[
    B(K,L)=\operatorname{tr}(\operatorname{ad}_K\operatorname{ad}_L)
    =(r-2)\operatorname{tr}(KL)
  \]
  yields \(\operatorname{Ric}_{SO(r)}=(r-2)g/4\). Ricci curvature adds over product factors, so the same lower bound holds for the squared-sum product metric with no factor-three loss. Bakry--Emery gives \(\operatorname{Ent}(f^2)\le(2/\rho)\int\|\nabla f\|^2\), where \(\rho=(r-2)/4\). Applying it to \(f=e^{\lambda(h-\mathbb Eh)/2}\), with \(L^2=12\), yields \(\psi(\lambda)\le\lambda^2L^2/(2\rho)\). Chernoff optimization at \(\lambda=\rho t/L^2\) gives
  \[
    \mathbb P(h-\mathbb Eh\ge t)
    \le \exp\!\left(-\frac{(r-2)t^2}{96}\right).
  \]
  Since \(r-2\ge r/3\) for \(r\ge3\), this is at most \(\exp(-rt^2/288)\), hence at most \(8\exp(-c_Hrt^2)\) with \(c_H=1/288\).
- Cited-result and assumption audit: The curvature convention, Killing-form normalization, Bakry--Emery statement, manifold hypotheses, product metric, and normalized-volume/Haar identification are explicitly restated and discharged. No fabricated spectral gap, unexplained tensorization loss, or metric rescaling appears.
- Rigor checklist: \(SO(r)^3\) is compact and connected for \(r\ge3\), \(h\) is smooth, the entropy identity uses \(\mathbb E(h-\mathbb Eh)=0\), and the optimizer and constants are correct. The restriction \(0<t\le1\) is preserved exactly.
- Local adversarial test: For \(d=0\), the upper-tail event is empty. For \(E=\mathcal H\), \(h=1=\mathbb Eh\), so it is again empty for \(t>0\). The proof never introduces \(X=0\). At \(r=3\), \(\rho=1/4\) and \(r-2=r/3\).
- Contribution to target step: Supplies the universal conditional tail with exponent \(rt^2\) and explicit \(c_H=1/288\).
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The real \(SO(r)\) commutant, operator-valued partial-trace twirl, sequential averaging, product-metric speed, tensor-generator derivative, commutator estimate, Killing-form normalization, Ricci tensor, product log-Sobolev application, Herbst calculation, conditioning, and boundary cases all appear in named units or explicitly restated standard-result applications. There is no hidden operator-norm-over-targets, net, union, supremum, quotient, anisotropic transfer, or data-dependent-\(X\) upgrade.

## Target Claim Audit

The proof establishes exactly the accepted step_007 claim. Conditional on the realized factors and internal shapes supplied by accepted step_006, \(E\) and any downstream fixed nonzero \(X\) are deterministic while \((Q_a,Q_b,Q_c)\) retains product Haar law. Uniformly over those fixed objects,
\[
  \mathbb Eh=\frac d{r^3},\qquad
  \operatorname{Lip}(h)\le2\sqrt3,
\]
and, for \(0<t\le1\),
\[
  \mathbb P\!\left(h\ge\frac d{r^3}+t\right)
  \le8\exp(-rt^2/288).
\]
The quantifiers, coefficient Frobenius norm, product geodesic metric, probability mode, and fixed-target scope match the sketch. No claim about \(LQE\), a supremum over \(X\), or the leverage threshold assigned to step_008 is added.

## Explicit Rate Audit

The exposed variables are \(r\), \(d\), and \(t\). The mean is exact, the Lipschitz constant is \(2\sqrt3\), and the universal hidden constant is explicitly \(c_H=1/288\), independent of \(n,r,k,E,d,X\), the factors, and shapes. The probability mode is conditional high probability for one product-Haar draw; uniformity permits integration over shapes without a union bound. The horizon is initialization-only. The norm modes are coefficient Frobenius norm and the unnormalized product Hilbert--Schmidt geodesic metric. The only simplifications are
\[
  \frac{(r-2)t^2}{96}\ge\frac{rt^2}{288},
  \qquad
  e^{-rt^2/288}\le8e^{-c_Hrt^2}.
\]
The specialization \(d/r^3\le3k/r^2\) is correctly left to step_008. The zero- and full-subspace baselines reduce exactly to \(h=0\) and \(h=1\).

## Notation Surface Audit

The proof exports only the public fixed-target interface \((\mathcal H,E,d,X,Q,h)\), the metric convention, \(2\sqrt3\), and \(c_H\). The twirl, projector, and partial trace are appendix-local; the skew generators, tensor generator, Lie-algebra basis, centered variable, and log moment generating function are proof-local. All constants and helpers have explicit provenance.

## Target-Step Assembly Audit

Lemma~\ref{lem:step-007-sequential-twirl} supplies the exact mean, Lemma~\ref{lem:step-007-lipschitz} supplies the metric-matched Lipschitz constant, and Proposition~\ref{prop:step-007-product-tail} supplies the tail. Accepted Proposition~\ref{prop:step-006-product-shape} legally fixes the internal shape before application. Together they imply every target-row clause, including conditional uniformity and the \(d=0\), full-subspace, \(r=3\), and nonzero-\(X\) boundaries.

## Review Rationale

All three units are mathematically correct, source-adequate, and contract-valid under the unchanged accepted sketch. The real-representation twirl, metric calculation, curvature normalization, Bakry--Emery constant, Herbst algebra, tail conversion, conditioning, and boundary cases have no unresolved local or interface gap. No repeated proof work or sketch revision is warranted, so the smallest controlled result is ACCEPTED with Smallest Retry Target = None.
