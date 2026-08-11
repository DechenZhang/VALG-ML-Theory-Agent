# Formalized Setting

- Basic setup:
  Fix the generalized-Gaussian shape \(\beta=3/2\), and set
  \[
  a_\beta:=\left(\frac{\Gamma(1/\beta)}{\Gamma(3/\beta)}\right)^{1/2},
  \qquad
  f_\beta(z):=\frac{\beta}{2a_\beta\Gamma(1/\beta)}
  \exp\!\left[-\left(\frac{|z|}{a_\beta}\right)^\beta\right].
  \]
  Let \(Z\sim f_\beta\), and let \(F_\beta\) and \(\Phi\) denote respectively its cdf and the standard-normal cdf. Then \(\mathbb E Z=0\), \(\mathbb E Z^2=1\), and, for \(r>-1\),
  \[
  \mathbb E|Z|^r
  =a_\beta^r\frac{\Gamma((r+1)/\beta)}{\Gamma(1/\beta)}.
  \]
  In particular, define
  \[
  m_k:=\bigl(\mathbb E|Z|^k\bigr)^{1/k}
  =a_\beta\left(\frac{\Gamma((k+1)/\beta)}{\Gamma(1/\beta)}\right)^{1/k},
  \qquad
  \tau_{\max}:=\frac{\sigma}{m_k}.
  \]

  For \((\mu,\tau)\) in the compact rectangle
  \[
  \Theta:=\left[-\frac{\lambda}{2},\frac{\lambda}{2}\right]
  \times\left[\frac{\tau_{\max}}{2},\tau_{\max}\right],
  \]
  let \(P_{\mu,\tau}:=\operatorname{Law}(\mu+\tau Z)\), whose density is
  \(p_{\mu,\tau}(x)=\tau^{-1}f_\beta((x-\mu)/\tau)\), and define
  \[
  \mathcal G(k,\lambda,\sigma):=
  \{P_{\mu,\tau}:(\mu,\tau)\in\Theta\}.
  \]
  The ambient source class is
  \[
  \mathcal D(k,\lambda,\sigma):=
  \left\{P:\ |\mathbb E_PX|\leq\lambda,
  \ \mathbb E_P|X-\mathbb E_PX|^k\leq\sigma^k\right\}.
  \]

  Use the squared-Hellinger convention of Kumar and Vatedka (2026): for dominated laws \(P,Q\),
  \[
  H^2(P,Q):=\frac12\int(\sqrt{dP}-\sqrt{dQ})^2
  =1-\rho(P,Q),
  \qquad
  \rho(P,Q):=\int\sqrt{dP\,dQ}.
  \]
  Also write
  \(\operatorname{TV}(P,Q):=\sup_A|P(A)-Q(A)|\) for total variation.
  Define \(\phi_\beta:=-\log f_\beta\),
  \(h_\beta(x):=2\phi_\beta'(x)f_\beta(x)\) for \(x\geq0\), and
  \[
  x_\beta^\star:=a_\beta\left(\frac{\beta-1}{\beta}\right)^{1/\beta},
  \qquad h_\beta^\star:=h_\beta(x_\beta^\star).
  \]
  The map \(h_\beta\) is strictly increasing on \([0,x_\beta^\star]\) and
  strictly decreasing on \([x_\beta^\star,\infty)\), so the paper's notation
  \(h^{-1}\) is not single-valued without a branch convention. Write
  \[
  h_{\beta,\mathrm{orig}}^{-1}:(0,h_\beta^\star]\to(0,x_\beta^\star],
  \qquad
  h_{\beta,\mathrm{tail}}^{-1}:(0,h_\beta^\star]\to[x_\beta^\star,\infty)
  \]
  for the increasing-origin and decreasing-tail inverses, respectively. Appendix B
  defines
  \(A_\epsilon(a):=\{x:\lvert f_\beta(x+\epsilon)-f_\beta(x-\epsilon)\rvert\geq a\}\)
  and \(x_a(\epsilon)=\sup A_\epsilon(a)\); its substitution
  \(x_a(\epsilon)=h^{-1}(a/(2\epsilon)+O(\epsilon^2))\) therefore selects the
  tail inverse. Accordingly, the Appendix-compatible theorem constant is
  \[
  T_\beta:=\int_0^{h_\beta^\star}
  \phi_\beta'\!\left(h_{\beta,\mathrm{tail}}^{-1}(u)\right)
  h_{\beta,\mathrm{tail}}^{-1}(u)\,du,
  \qquad f_0:=f_\beta(0).
  \]
  For source auditing only, also define the alternative origin-branch quantity
  \[
  \widetilde T_\beta:=\int_0^{h_\beta^\star}
  \phi_\beta'\!\left(h_{\beta,\mathrm{orig}}^{-1}(u)\right)
  h_{\beta,\mathrm{orig}}^{-1}(u)\,du.
  \]
  For \(\delta\in(0,1/2)\), define
  \[
  a_\delta:=-\frac12\log\bigl(4\delta(1-\delta)\bigr),
  \qquad z_\delta:=\Phi^{-1}(1-\delta/2),
  \]
  and the fixed-confidence eligibility set
  \[
  \Delta_\beta:=\left\{\delta\in(0,1/2):
  \frac{a_\delta}{T_\beta}>\frac{z_\delta^2}{f_0^2}\right\}.
  \]

  A deterministic-horizon fully non-adaptive protocol \(\Pi_n\) uses exactly one bit from each independent sample. Before any data or messages are observed it samples all protocol randomness \(S=(R,V,W)\), independently of the data and of Nature's choice \((\mu,\tau)\). Here \(R\) is public, \(V\) contains arbitrary encoder-private coins (and may contain pre-sampled correlation), and \(W\) is decoder randomness. Conditional on \(S=s\), user \(t\) applies a precommitted measurable map \(e_{t,s}:\mathbb R\to\{0,1\}\) to \(X_t\); equivalently, after private coins are integrated out, each encoder is an arbitrary measurable Markov kernel from \(\mathbb R\) to \(\{0,1\}\). The maps may be non-identical and their measurable decision sets may have arbitrary topology or component count, but they cannot depend on any message. The decoder observes \((R,W,Y^n)\), but not encoder-private coins, and returns \(\widehat\mu_{\Pi_n}\). The lower-bound analysis may reveal all of \(S\) to the decoder; this only strengthens testing and, conditional on \(S\), restores the product structure of the independent samples.

  For \(\epsilon>0\) and \(\delta\in(0,1/2)\), define the uniform fixed-horizon non-adaptive sample complexity
  \[
  N_{\mathrm{NA}}(\epsilon,\delta):=
  \inf\left\{n\in\mathbb N:\ \exists\Pi_n\text{ as above with }
  \sup_{(\mu,\tau)\in\Theta}
  \Pr_{\mu,\tau,\Pi_n}\!\left(
  |\widehat\mu_{\Pi_n}-\mu|>\epsilon\right)\leq\delta\right\},
  \]
  with \(\inf\varnothing=\infty\). The probability is joint over the samples and all public, private, and decoder randomness.

  The adaptive comparator is the one-transition protocol of Kumar and Vatedka (2026, Section 4.1), specialized as follows. Fix \(\theta_1=-\lambda\) and \(\theta_2=\lambda\). For an integer \(q\geq3\), take \(m_q=\lceil q/\log q\rceil\) users at each first-stage threshold and \(q\) second-stage users, for total deterministic horizon \(n(q)=q+2m_q\). From the first two empirical bit proportions \(\bar B_1,\bar B_2\), put \(u_j=F_\beta^{-1}(\bar B_j)\) and
  \[
  \widehat\tau_c:=\frac{\theta_2-\theta_1}{u_2-u_1},
  \qquad
  \widehat\mu_c:=\theta_1-\widehat\tau_c u_1
  \]
  whenever \(0<\bar B_1<\bar B_2<1\). On this regular first-stage event, broadcast \(\widehat\mu_c\) once; each remaining user sends \(B_{3,t}=\mathbf1\{X_t<\widehat\mu_c\}\). With \(u_3=F_\beta^{-1}(q^{-1}\sum_tB_{3,t})\), return
  \(\widehat\mu_q^{\mathrm A}:=\widehat\mu_c-\widehat\tau_cu_3\) when \(u_3\) is finite. If either stage is irregular, broadcast the fixed fallback threshold \(0\) if a broadcast is still required, let unused users send a fixed bit, and return \(0\). This convention only makes the source formula a total measurable finite-sample estimator; its exceptional event must be shown uniformly negligible. Define the genuinely comparable uniform sample complexity
  \[
  N_{\mathrm A}(\epsilon,\delta):=
  \inf\left\{n(q):q\geq3,
  \sup_{(\mu,\tau)\in\Theta}
  \Pr_{\mu,\tau}\!\left(
  |\widehat\mu_q^{\mathrm A}-\mu|>\epsilon\right)\leq\delta\right\}.
  \]
  The convention \(\inf\varnothing=\infty\) applies to both sample complexities.

  The following are proof obligations, not theorem-facing assumptions.

  1. **Encoder-uniform local envelope.** Appendix Theorem B.1 of Kumar and Vatedka (2026), through Lemmas B.2--B.3 and equations (31)--(38), must be specialized to \(f_\beta\). Its source hypotheses must be discharged from
     \(\phi_\beta(x)=\log(2a_\beta\Gamma(1/\beta)/\beta)+(|x|/a_\beta)^\beta\), which at \(\beta=3/2\) is even, differentiable, strictly convex, and polynomially bounded. The specialization must produce a deterministic \(\eta_\beta(v)\to0\), independent of the measurable randomized binary kernel, such that for the standardized local pair \(P_{\mu_0-v\tau,\tau},P_{\mu_0+v\tau,\tau}\), whose induced output-bit laws under a kernel \(K\) are denoted by \(P_-^K,P_+^K\),
     \[
     H^2(P_-^K,P_+^K)\leq v^2\bigl(T_\beta+\eta_\beta(v)\bigr).
     \]
     The encoder-free right side in Lemma B.2 is the required uniformity source; uniformity is not to be assumed from the phrase "for any encoder" alone.

  2. **Common-seed and non-identical-product bridge.** Conditional affinity multiplication for independent, non-identical bits, as used in the proof of Kumar--Vatedka Theorem 3.2, must be combined with the common hypothesis-independent seed marginal. For the augmented transcript this gives
     \[
     \rho(P_{S,Y^n}^-,P_{S,Y^n}^+)
     =\int\prod_{t=1}^n\rho(P_{Y_t\mid S=s}^-,P_{Y_t\mid S=s}^+)\,d\nu(s),
     \]
     where \(\nu=\operatorname{Law}(S)\), followed by data processing when private coins are hidden. This must yield the same lower affinity bound for the actual transcript without choosing the hard pair as a function of the realized seed.

  3. **PAC testing and source embedding bridges.** For the fixed pair \(\tau=\tau_{\max}\), \(\mu_0=0\), and \(\mu_\pm=\pm2\epsilon\), the small-error regime gives \(\epsilon\leq\lambda/4\) eventually and hence places both alternatives in \(\Theta\). Thresholding any uniformly PAC estimator at \(0\) must give both testing errors at most \(\delta\). Combining \(\operatorname{TV}\geq1-2\delta\) with \(\operatorname{TV}\leq\sqrt{1-\rho^2}\) and the preceding affinity bound must produce the non-adaptive constant. Separately, the identities
     \(\mathbb E_{P_{\mu,\tau}}X=\mu\) and
     \(\mathbb E|X-\mu|^k=\tau^km_k^k\leq\sigma^k\), together with \(|\mu|\leq\lambda/2\), must establish \(\mathcal G(k,\lambda,\sigma)\subset\mathcal D(k,\lambda,\sigma)\); membership is not assumed as a surrogate for this check.

  4. **Compact-uniform adaptive bridge.** Kumar--Vatedka Theorem 4.1 states only pointwise asymptotic normality for each fixed \((\mu,\tau)\); it does not itself state a uniform PAC theorem. The proof must derive the needed compact-uniform upgrade over the exact rectangle \(\Theta\). For the fixed thresholds above, the relevant standardized first-stage range is
     \[
     J_\Theta=
     \left[-\frac{3\lambda}{\tau_{\max}},-\frac{\lambda}{2\tau_{\max}}\right]
     \cup
     \left[\frac{\lambda}{2\tau_{\max}},\frac{3\lambda}{\tau_{\max}}\right].
     \]
     For \(j=1,2\), put
     \(p_j(\mu,\tau):=F_\beta((\theta_j-\mu)/\tau)\). Positivity and continuity of \(f_\beta\), compactness of \(J_\Theta\), and strict separation \(\theta_1<\theta_2\) must first establish the explicit anti-degeneracy constants
     \[
     c_\Theta:=\inf_{(\mu,\tau)\in\Theta}\min_{j=1,2}
     \left\{p_j(\mu,\tau),1-p_j(\mu,\tau),
     f_\beta\!\left(\frac{\theta_j-\mu}{\tau}\right)\right\}>0,
     \qquad
     g_\Theta:=\inf_{(\mu,\tau)\in\Theta}
     \bigl(p_2(\mu,\tau)-p_1(\mu,\tau)\bigr)>0.
     \]
     If \(\mathcal E_q(\mu,\tau)\) is the event that the source formulas are finite and
     \(|\widehat\mu_c-\mu|/\tau\leq1\), uniform Hoeffding and inverse-cdf control must show
     \[
     \sup_{(\mu,\tau)\in\Theta}
     \Pr_{\mu,\tau}\bigl(\mathcal E_q(\mu,\tau)^c\bigr)\longrightarrow0.
     \]
     On \(\mathcal E_q\), the second-stage success probability lies in the fixed interval
     \([F_\beta(-1),F_\beta(1)]\), so its Bernoulli variance is uniformly bounded away from zero. Appendix C equation (40) supplies the conditional Berry--Esseen ingredient; equation (47), Lemma C.1, and equations (49)--(54) supply the pointwise coarse-error decomposition and normal approximation. These ingredients must be strengthened, without a new assumption, to the explicit uniform remainder statement
     \[
     r_q:=\sup_{(\mu,\tau)\in\Theta}\sup_{x\in\mathbb R}
     \left|
     \Pr_{\mu,\tau}\!\left{
     \frac{\sqrt{n(q)}(\widehat\mu_q^{\mathrm A}-\mu)}{\tau}\leq x
     \right\}-\Phi(2f_0x)
     \right|\longrightarrow0.
     \]

  5. **Source-branch compatibility and confidence-range check.** Put
     \(s=(x/a_\beta)^\beta\), \(p=(\beta-1)/\beta=1/3\), and
     \(C=\beta^2/(a_\beta^2\Gamma(1/\beta))\). Then
     \(h_\beta(x)=C s^p e^{-s}\), and direct one-dimensional integration gives
     \[
     \widetilde T_\beta
     =\beta C\int_0^p e^{-s}s^p(p-s)\,ds
     \approx0.04001115,
     \qquad
     T_\beta
     =\beta C\int_p^\infty e^{-s}s^p(s-p)\,ds
     \approx1.68363445.
     \]
     Kumar--Vatedka's reported \(C_{\mathrm{non}}=2.5806\), through
     \(C_{\mathrm{non}}=\alpha^\star/T\) with
     \(\alpha^\star\approx0.1034\), is numerically compatible only with
     \(\widetilde T_\beta\), whereas Appendix B's \(\sup A_\epsilon(a)\)
     construction selects \(T_\beta\). The source archive contains no branch
     declaration or numerical code resolving this discrepancy. Under the
     Appendix-compatible constant, at \(\delta=0.05\),
     \[
     \frac{a_\delta}{T_\beta}\approx0.49320
     <16.95677\approx\frac{z_\delta^2}{f_0^2},
     \]
     so the table does not establish \(0.05\in\Delta_\beta\).

     The origin branch cannot instead be adopted as an encoder-uniform envelope.
     For the allowed threshold kernel \(K_0(x)=\mathbf1\{x<\mu_0\}\), the local
     pair \(P_{\mu_0-v\tau,\tau},P_{\mu_0+v\tau,\tau}\) induces Bernoulli
     probabilities \(F_\beta(v)\) and \(F_\beta(-v)\), whence
     \[
     H^2(P_-^{K_0},P_+^{K_0})
     =2f_0^2v^2+o(v^2),
     \qquad
     2f_0^2\approx0.45308851>\widetilde T_\beta.
     \]
     Thus every valid encoder-uniform coefficient must satisfy \(T\geq2f_0^2\).
     Moreover, for every \(\delta\in(0,1/2)\), write
     \(z=z_\delta=\Phi^{-1}(1-\delta/2)>\Phi^{-1}(3/4)\) and
     \(Q(z)=1-\Phi(z)=\delta/2\), where \(\varphi=\Phi'\). The standard Mills lower bound
     \(Q(z)\geq z\varphi(z)/(1+z^2)\), followed by an elementary monotonicity
     check on \(z\geq\Phi^{-1}(3/4)\), gives
     \(Q(z)>e^{-4z^2}/4\). Hence
     \[
     4\delta(1-\delta)=8Q(z)(1-2Q(z))
     >4Q(z)>e^{-4z^2},
     \]
     or equivalently \(a_\delta<2z_\delta^2\). Consequently
     \[
     \frac{a_\delta}{T}\leq\frac{a_\delta}{2f_0^2}
     <\frac{z_\delta^2}{f_0^2}
     \]
     for every valid encoder-uniform \(T\). In particular, the Appendix-compatible
     definition gives \(\Delta_\beta=\varnothing\). Hence the required nonempty
     fixed-confidence eligibility range is not supported by either source branch;
     it cannot be restored by declaring the origin branch to be the intended one.

- Technical assumptions:
  - `assump:parameter-range` (Primitive parameter range): \(k>1\), \(\lambda\geq\sigma>0\), and the known shape is exactly \(\beta=3/2\). All constants and protocols may use \(k,\lambda,\sigma,\beta\), but not \((\mu,\tau)\).
  - `assump:data-family` (Primitive location-scale family): Nature chooses one fixed \((\mu,\tau)\in\Theta\), and every sample has law \(P_{\mu,\tau}\). No conclusion about Hellinger contraction, testing difficulty, or estimator performance is included in this assumption.
  - `assump:sample-independence` (Independent users): Conditional on Nature's fixed \((\mu,\tau)\), the samples \(X_1,X_2,\ldots\) are independent and identically distributed; all protocol randomness is independent of them and has the same law under every \((\mu,\tau)\).
  - `assump:nonadaptive-precommitment` (Precommitted arbitrary encoders): For the non-adaptive side, all encoder maps/kernels and their joint randomization are fixed before any sample or message is observed, while kernels may be arbitrary measurable, randomized, and non-identical. The hard pair is fixed independently of every seed realization.
  - `assump:small-error-regime` (Fixed-parameter local asymptotics): \(\epsilon/\tau_{\max}\downarrow0\) with \(k,\lambda,\sigma,\beta,\delta\) fixed. Horizons are deterministic; probability is joint over data and protocol randomness; and loss is scalar absolute error. No finite-sample, horizon-uniform, all-\(\delta\), or unrestricted-moment conclusion is assumed.

# Formalized Goal

- Goal statement:
  **Conditional arbitrary-query local-PAC interaction separation.** Under `assump:parameter-range`, `assump:data-family`, `assump:sample-independence`, `assump:nonadaptive-precommitment`, and `assump:small-error-regime`, establish first that the source-defined set \(\Delta_\beta\) is nonempty (in particular, the approved idea requires \(0.05\in\Delta_\beta\)); then, for every fixed \(\delta\in\Delta_\beta\), prove the single comparative theorem
  \[
  \liminf_{\epsilon/\tau_{\max}\downarrow0}
  \frac{\epsilon^2N_{\mathrm{NA}}(\epsilon,\delta)}{\tau_{\max}^2}
  \geq \frac{a_\delta}{4T_\beta},
  \qquad
  \limsup_{\epsilon/\tau_{\max}\downarrow0}
  \frac{\epsilon^2N_{\mathrm A}(\epsilon,\delta)}{\tau_{\max}^2}
  \leq \frac{z_\delta^2}{4f_0^2}.
  \]
  For each such \(\delta\), the definition of \(\Delta_\beta\) makes the first displayed constant strictly larger than the second. Both sample complexities use the same uniform \((\epsilon,\delta)\)-PAC criterion over \(\mathcal G(k,\lambda,\sigma)\), exactly one bit per independent sample, deterministic horizons, joint probability over all randomness, and scalar absolute-error loss. The theorem is only a fixed-confidence, small-error leading-constant separation for this known-shape compact location-scale family; it is not a finite-sample theorem, an all-confidence theorem, an order separation for \(r_k\), or a result over all of \(\mathcal D(k,\lambda,\sigma)\).

# Note

- Rigor:
  Parent lineage: Kumar and Vatedka, *One-Bit Distributed Mean Estimation with Unknown Variance* (arXiv:2501.18502), supplies the generalized-Gaussian likelihood, randomized-encoder Hellinger envelope, and one-transition comparator; Lau and Scarlett, *Order-Optimal Sequential 1-bit Mean Estimation in General Tail Regimes* (arXiv:2604.07796), supplies the ambient moment class, one-bit source model, and unrestricted benchmark. The transfer is exactly the direct moment embedding plus the common-seed/product-affinity and PAC-testing bridges stated above.

  Source alignment is conditional. Progress type: `conditional`. Materiality: the lower bound retains arbitrary measurable, randomized, non-identical precommitted one-bit encoders and public/private randomness, so it is not a threshold-, interval-, topology-, or i.i.d.-query restriction. The explicit target changes are the known \(\beta=3/2\) location-scale family, compact scale interval, fixed eligible confidence, and small-error leading-constant mode. Uniform finite-sample PAC control over all \(\mathcal D(k,\lambda,\sigma)\), all \(\delta\in(0,1/2)\), exact \(r_k\) dependence, and the three unrestricted-moment regimes remain open.

  Assumption support: `assump:parameter-range` and `assump:data-family` use Kumar--Vatedka equation (20)/Definition 2.1 and the approved direct moment specialization; `assump:sample-independence` and `assump:nonadaptive-precommitment` are the source one-bit model and the arbitrary randomized-encoder interface of Appendix Theorem B.1, extended to public seeds only through the stated derived affinity bridge; `assump:small-error-regime` is the approved target-changing asymptotic regime matching Appendix Theorem B.1 and Theorem 4.1. Theorem 4.1 is pointwise; only the separately stated Appendix-C compact-uniform derivation may support the uniform adaptive PAC bound. The fixed-confidence gap is deliberately not promoted to an assumption: the source-branch audit above shows that the Appendix-compatible constant and the table constant disagree, and the centered-threshold calculation rules out the table's origin-branch value as a valid arbitrary-encoder envelope. No source-supported nonempty \(\Delta_\beta\) remains under the approved theorem contract.
