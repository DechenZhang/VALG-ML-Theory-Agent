# Idea

## Perspective Anchor

- Tuple:
  - analysis_target: `other_projective_conditioning_complexity`
  - model_class: `instance_scale_annotated_pfaffian_vectors`
  - data_assumption: `cube_supported_joint_density_capped_coefficients`
  - regime: `polynomial_instance_complexity_control`
  - algorithm: `projective_conditioning_certification`

## Added Dimensions

- Subclass: anchored derivative-closed Pfaffian dictionaries. For the affine family use \(\widetilde F=(F_0,F_1,\ldots,F_N)\), require one random feature \(F_{j_*}\equiv1\), and require a supplied polynomial matrix \(B(\theta)\) such that \(\widetilde F'=B(\theta)\widetilde F\). The homogeneous family is the specialization \(F_0\equiv0\).
- Instance-scale annotation: for \(\Theta\subseteq[-T,T]\), certify the derivative closure by
  \[
  \widehat\Lambda_{B,T}:=
  \left(\sum_{r,s}\left(\sum_{\ell=0}^{m}|b_{rs,\ell}|T_*^\ell\right)^2\right)^{1/2},
  \qquad T_*:=\max\{1,T\},
  \]
  where \(B_{rs}(\theta)=\sum_{\ell=0}^{m}b_{rs,\ell}\theta^\ell\). Then \(\sup_{\Theta}\|B(\theta)\|_{\rm op}\leq\widehat\Lambda_{B,T}\) follows from coefficient evaluation and the Frobenius norm, so no projective or sweep bound is assumed.
- Complexity mapping: use the Balcan--Nguyen--Sharma convention without alteration: a common triangular chain has length \(q\), \(\eta_j'=P_j(\theta,\eta_1,\ldots,\eta_j)\) has \(M=\max_j\deg P_j\), and every coordinate of \(\widetilde F\) is an output polynomial \(Q_i(\theta,\eta_1,\ldots,\eta_q)\) of degree at most \(\Delta\); their ambient parameter dimension is \(p=1\). The extra derivative-certificate data are \((m,\widehat\Lambda_{B,T})\), and \(N\) remains the number of random coefficients.
- Affine recovery interface: use one coefficient-space swept-area inequality for \(F_0+\langle\alpha,F\rangle\). Its homogeneous central-hyperplane and monic two-pivot bounds are specializations of that same inequality, not separate root theorems.

## Setting

- Context: A compact interval \(\Theta\subseteq[-T,T]\) and a \(C^1\) Pfaffian tuple \(\widetilde F=(F_0,F)\) from one Balcan-convention chain, with the primitive anchor \(F_{j_*}\equiv1\) and the exact static differential identity \(\widetilde F'=B\widetilde F\). Thus \(F\) never vanishes and no lower-norm, trajectory, or generated regularity condition is assumed.
- Model: The transition function is \(\phi_\alpha(\theta)=F_0(\theta)+\langle\alpha,F(\theta)\rangle\). For each \(\theta\), let \(H_\theta=\{a:\langle a,F(\theta)\rangle=-F_0(\theta)\}\). Setting \(F_0=0\) gives the source's homogeneous model and the normalized curve \(\gamma_F=F/\|F\|_2\).
- Data: Let \(R>0\). The vector \(\alpha\sim\mu\) is supported on \([-R,R]^N\), and its full joint Lebesgue density satisfies \(\|f_\mu\|_\infty\leq\kappa\). Coordinates may be arbitrarily correlated. Set \(A=(2R)^N\kappa\); the deterministic \(F_0\) is not a random coordinate.
- Algorithm: Apply the area formula to the union swept by \(H_\theta\), using the normal velocity
  \[
  \frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}.
  \]
  At a point \(a\in H_\theta\), \(|F_0|\leq R\sqrt N\|F\|_2\), hence \(\|\widetilde F\|_2\leq\sqrt{1+NR^2}\|F\|_2\); together with \(\|(1,a)\|_2\leq\sqrt{1+NR^2}\), the identity \(\widetilde F'=B\widetilde F\) bounds the velocity by \((1+NR^2)\widehat\Lambda_{B,T}\). Ball's cube-section bound, with translated sections no larger than the central section, supplies the section area. For exact specialization, equivalently parameterize a pivot coefficient by \(T_j(\theta,\beta)=-F_0/F_j-\sum_{i\neq j}\beta_iF_i/F_j\) and integrate \(|\partial_\theta T_j|\); multiplicity only enlarges parameter area, while identically-zero coefficient families lie in a proper affine subspace.
- Regime: All conclusions use ordinary probability, the Euclidean/operator norms displayed above, and are uniform over every admissible \(\mu\) and every positive-length interval \(I\subseteq\Theta\). The fixed instance data are \((\Theta,q,M,\Delta,N,R,\kappa,A,m,B)\), there is no confidence parameter or hidden constant, and no independence is used. Counter-example 1 has \(F_0=0\), \(F=(1,\theta/\delta)\), \(q=0\), \(M=0\), \(\Delta=1\), \(N=2\), \(m=0\), and a single nonzero derivative-certificate entry \(1/\delta\), so \(\widehat\Lambda_{B,T}=\Gamma_{\rm proj}(F)=1/\delta\). With \(R=1\), \(\kappa=1/4\), and \(A=1\), the central theorem gives \(C^{\rm Pf}_{\mathcal D}\leq1/\delta\), while the exact source ratio is \(1/(4\delta)\).

## Goal

- Theorem type: Full anchored derivative-closure Pfaffian sweep theorem with polynomial conditioning control and exact affine-monic recovery.
- Informal statement: First prove the single affine swept-area bound
  \[
  \Pr_{\alpha\sim\mu}(\exists\theta\in I:\phi_\alpha(\theta)=0)
  \leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
  \,d\mathcal H^{N-1}(a)\,d\theta
  \leq \kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}|I|.
  \]
  The last coefficient is also \(A(1+NR^2)\widehat\Lambda_{B,T}/(\sqrt2R)\). Once the supplied differential certificate is fixed, the displayed bound has degree-zero additional dependence on \(q,M,\Delta\), with no hidden dependence on them. In the homogeneous case \(F_0=0\), let \(B_F\) be the induced block satisfying \(F'=B_FF\) and use
  \[
  \gamma_F'=(I-\gamma_F\gamma_F^\top)B_F\gamma_F
  \]
  to obtain \(\Gamma_{\rm proj}(F)\leq\widehat\Lambda_{B,T}\) and the sharper bound \(C^{\rm Pf}_{\mathcal D}\leq A\sqrt{N/2}\widehat\Lambda_{B,T}\). Finally specialize the same affine area formula to \(p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\): pivot on \(\alpha_0\) for \(|\theta|\leq1\), where \(|\partial_\theta T_0|\leq d+R\sum_{k=1}^{d-1}k\), and on \(\alpha_{d-1}\) for \(|\theta|>1\), where \(|\partial_\theta T_{d-1}|\leq1+R\sum_{k=0}^{d-2}(d-1-k)\). This gives exactly
  \[
  \Pr(\exists\theta\in I:p_\alpha(\theta)=0)
  \leq\kappa(2R)^{d-1}\left(d+\frac{Rd(d-1)}2\right)|I|
  \]
  for every bounded interval, with only the \(d\) lower coefficients random. Here \(q=0\), \(M=0\), \(\Delta=d\), \(N=d\), \(m=0\), \(A=(2R)^d\kappa\), and the constant shift matrix for \((\theta^d,\ldots,1)\) has \(\widehat\Lambda_{B,T}=(\sum_{k=1}^d k^2)^{1/2}\), so every conditioning quantity is polynomially controlled in declared static data.

## Notes

- Parent foundation papers: *How Many Zeros of a Random Polynomial Are Real?* (DOI:10.1090/S0273-0979-1995-00571-9); *Semi-bandit Optimization in the Dispersed Setting* (arXiv:1904.09014)
- Transfer map: preserves arbitrary-density moving-hyperplane geometry and affine coefficient pivots; changes an uncontrolled Pfaffian curve to an anchored derivative-closed dictionary with a polynomial matrix certificate; reuses the area formula and cube-section bounds.
- Source alignment: The declared derivative-closed Pfaffian class preserves arbitrary correlated cube-supported laws, all-law/all-positive-interval uniformity, the Balcan \((q,\Delta,M)\) convention, explicit \(N,R,\kappa,A\) and certificate dependence, quantitative \(1/\delta\) accounting, and exact internal affine recovery with no singular random leading coordinate. It does not assert that every unrestricted Pfaffian presentation admits a polynomial derivative-closure certificate.
- Progress type: full
- Materiality: It resolves Gap 2 for a nontrivial normalization class by deriving projective and affine sweep conditioning from raw representation coefficients, while the same theorem meets the source's polynomial baseline obligation exactly.
- Significance: Derivative closure contains the earlier triangular-linear state-coordinate regime but also permits arbitrary derivative-closed Pfaffian output dictionaries, including the affine monic tuple. It is broader than an exponential-only theorem and avoids the unsupported state-amplitude and lower-norm assumptions required by a generic chain coefficient-envelope route.
- Feasibility: The area/coarea and affine-pivot mechanisms are literature-derived; the derivative-closure condition is primitive, static, and novel example-verified by \((0,1,\theta/\delta)\), monomial tuples \((\theta^d,\ldots,1)\), exponential dictionaries \((0,1,e^{b_1\theta},\ldots,e^{b_s\theta})\), and exponential-polynomial dictionaries \((0,1,\theta^k e^{b_i\theta})_{i,k}\), whose certificate matrices are respectively constant shear, nilpotent shift, diagonal, and block-Jordan matrices. The root-section identity \(|F_0|\leq R\sqrt N\|F\|_2\) supplies the affine offset control. A full candidate based on a fictitious random leading coordinate fails the density interface, while appending Theorem 2 independently fails the baseline-specialization gate; neither repair is used here.
- Consistency: The anchor supplies nonvanishing, \(B\) and its coefficients are fixed before sampling, and the swept-area integral is a derived bound rather than a theorem-facing assumption. The central and monic conclusions share the same coefficient-space area formula, and the derivative-closure certificate is distinct from a unit-range chain-envelope normalization, so the branch is coherent and non-duplicate.
