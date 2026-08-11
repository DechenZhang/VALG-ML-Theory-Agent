# Formalized Setting

- Basic setup:
  Let \([r]=\{1,\ldots,r\}\), let \(\log\) be the natural logarithm, and let \(\log^*\) be the base-two iterated logarithm; changing either base affects only universal constants. For \(t\in[N]\), write
  \[
  \tau_t(q)=\mathbf 1\{q\le t\},\qquad q\in[N].
  \]
  Let \(X\) be a domain and let \(C\subseteq\{0,1\}^X\) be finite. A \((k,N)\) disjoint-threshold minor consists of injections \(\phi_j:[N]\to X\), \(j\in[k]\), with pairwise disjoint images, and concepts \(c_{\mathbf t}\in C\), \(\mathbf t=(t_1,\ldots,t_k)\in[N]^k\), satisfying
  \[
  c_{\mathbf t}(\phi_j(q))=\tau_{t_j}(q)
  \quad\text{for every }j\in[k],\ q\in[N].
  \]

  For a labeled distribution \(Q\) on \(Z_X=X\times\{0,1\}\) and a hypothesis \(h:X\to\{0,1\}\), define the zero-one risk
  \[
  L_Q(h)=\Pr_{(x,y)\sim Q}[h(x)\ne y].
  \]
  Replacement adjacency means that two ordered samples of the same size differ in at most one record. Equip the hypothesis space with a sigma-algebra under which every coordinate evaluation is measurable. A randomized kernel \(A:Z_X^m\rightsquigarrow\{0,1\}^X\) is \((\varepsilon,\delta)\)-DP if its output laws satisfy the two standard DP inequalities on every replacement-adjacent pair. No properness, output-representation, or computational restriction is imposed.

  The candidate learner \(A\) receives \(m\) iid labeled examples. For every \(c\in C\) and every distribution \(P\) on \(X\), let \(Q_{P,c}\) be the law of \((x,c(x))\) for \(x\sim P\). The distribution-free realizable PAC requirement is
  \[
  \Pr_{S\sim Q_{P,c}^m,\ h\sim A(S)}
  \bigl[L_{Q_{P,c}}(h)>\alpha_0\bigr]\le\beta_0.
  \]

  Set
  \[
  n=\left\lceil\frac{2m}{k}\right\rceil+12.
  \]
  The common one-arm experiments used by the reduction are defined before any hidden-arm permutation. Let \(\mathcal E_{n,N}\) be the finite set of pairs \(e=(t,U)\), where \(t\in[N]\) and \(U=(u_1,\ldots,u_{9n})\in[N]^{9n}\). Define \(Q_e\) to be the uniform distribution on the labeled multiset
  \[
  \bigl\{(u_s,\tau_t(u_s)):s\in[9n]\bigr\}.
  \]
  Thus each latent experiment includes both a threshold target and its realizable sampling distribution. For a threshold kernel
  \(B:([N]\times\{0,1\})^n\rightsquigarrow\{0,1\}^{[N]}\), define
  \[
  \mathcal R_n(B,e)
  =\mathbb E_{S\sim Q_e^n,\ g\sim B(S)}[L_{Q_e}(g)].
  \]

  The threshold-hard-prior bridge is a derived proof obligation, not a theorem-facing assumption: establish universal constants \(a_{\rm th},a_\delta>0\) and \(N_{\rm th}\) such that, whenever \(N\ge N_{\rm th}\), \(n<a_{\rm th}\log^*N\), \(0<\varepsilon\le1\), and \(0\le\delta\le a_\delta/(n^2\log(en))\), there is a single prior
  \(\Pi_{n,N,\varepsilon,\delta}\in\Delta(\mathcal E_{n,N})\) satisfying
  \[
  \inf_{B\,:\,(\varepsilon,\delta)\text{-DP}}
  \mathbb E_{e\sim\Pi_{n,N,\varepsilon,\delta}}
  [\mathcal R_n(B,e)]\ge\eta_{\rm th},
  \qquad \eta_{\rm th}=\frac1{20}.
  \tag{HP}
  \]
  The required derivation is from Theorem 1 and the proof of Alon et al., *Private PAC Learning Implies Finite Littlestone Dimension*, not from a postulated hard prior. Concretely, its PAC-to-empirical reduction restricts the adversary to the finite uniform empirical experiments above; the homogeneous-set proof is to be rechecked at expected empirical loss \(1/20\) and every \(\varepsilon\le1\); and finite minimax over the compact convex polytope of DP kernels then yields (HP). At the initial accuracy/privacy constant step, expected loss \(1/20\) gives positive- and negative-side prediction marginals at least \(9/10\) and at most \(1/10\); one-record privacy at \(\varepsilon\le1\) leaves a positive universal gap because
  \(e^{-1}(9/10)>e(1/10)\). The Ramsey, binary-search, endpoint \(\varepsilon=1\), and \(\delta\)-accounting steps must likewise be rechecked; the claimed effect is only a change in universal constants. Proving this complete source-to-(HP) implication is mandatory downstream.

  Fix a prior \(\Pi=\Pi_{n,N,\varepsilon_0,\delta_m}\) supplied by (HP). The hidden-arm kernel \(B_\Pi\) is defined as follows. On an input \(S^{\rm real}=(z_1,\ldots,z_n)\in([N]\times\{0,1\})^n\), draw a hidden arm \(J\sim\operatorname{Unif}([k])\). Equivalently, \(J\) may be the image of a distinguished arm under an independent uniform permutation. Independently draw \(e_j=(t_j,U_j)\sim\Pi\) for every \(j\ne J\), and draw arm indices \(I_1,\ldots,I_m\stackrel{\rm iid}{\sim}\operatorname{Unif}([k])\). Put \(R=|\{r:I_r=J\}|\). If \(R>n\), output the fixed function \(g_0\equiv0\). Otherwise, enumerate the positions with \(I_r=J\) and place the distinct records \(z_1,\ldots,z_R\), transported by \((q,y)\mapsto(\phi_J(q),y)\), in those positions. At every position with \(I_r=j\ne J\), draw a fresh record from \(Q_{e_j}\) and transport it by \((q,y)\mapsto(\phi_j(q),y)\). Run \(A\) on the resulting \(m\)-sample and output the arbitrary restriction
  \[
  g(q)=h(\phi_J(q)),\qquad q\in[N].
  \]
  This restriction is postprocessing and need not be a threshold.

  For the utility analysis, also draw the real latent experiment \(e_J\sim\Pi\) and then \(S^{\rm real}\sim Q_{e_J}^n\). The variables \(e_1,\ldots,e_k\) are now independent copies of exactly the same latent target/distribution experiment, and \(J\) is uniform and independent of their vector. This iid common-experiment statement, rather than the arm permutation by itself, is what supplies exchangeability.

  For a grand coupling, sample an infinite iid pool from \(Q_{e_j}\) for every arm \(j\), independently of \(J\), and let the external real sample be the first \(n\) records of pool \(J\). Define the ideal sample \(\bar S\) by taking the next required record from pool \(I_r\) at every position \(r\). Conditional on \(\mathbf e=(e_1,\ldots,e_k)\), \(\bar S\) is iid from
  \[
  \bar Q_{\mathbf e}=\frac1k\sum_{j=1}^k (\phi_j)_\#Q_{e_j},
  \]
  which is realizable by \(c_{(t_1,\ldots,t_k)}\). Its conditional law, and hence the conditional law of \(h\sim A(\bar S)\), does not depend on which arm is designated hidden. The constructed and ideal samples agree whenever \(R\le n\). Writing \(\mu=m/k\), Bernstein's binomial bound gives the explicit overflow control
  \[
  p_{\rm ov}:=\Pr[R>n]
  \le \exp\!\left(-\frac{(\mu+12)^2}{2(\mu+(\mu+12)/3)}\right)
  \le e^{-27/2}<\frac1{1024}.
  \tag{OF}
  \]
  Uniform hiding and the iid common experiment imply, for the ideal run,
  \[
  \mathbb E\bigl[L_{Q_{e_J}}(h\circ\phi_J)\bigr]
  =\mathbb E\bigl[L_{\bar Q_{\mathbf e}}(h)\bigr].
  \tag{EX}
  \]
  Hence the PAC guarantee and the overflow coupling yield
  \[
  \mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)]
  \le \alpha_0+\beta_0+p_{\rm ov}
  \le \frac5{128}+e^{-27/2}<\frac1{20}.
  \tag{UT}
  \]
  On the ideal PAC-good event, (EX) and Markov also give the approved branch's auxiliary statement that the uniformly hidden arm has error at most \(8\alpha_0=1/16\) with conditional probability at least \(7/8\).

  Privacy is preserved record-for-record. Couple all internal coins of \(B_\Pi\) on two replacement-adjacent real inputs. The overflow decision is data-independent. Off overflow, each real record is used in at most one position, so the two inputs to \(A\) are equal or replacement-adjacent; all other-arm records are input-independent. Applying \(A\)'s DP inequality for each fixed internal transcript, averaging it, and postprocessing by restriction proves that \(B_\Pi\) is exactly \((\varepsilon_0,\delta_m)\)-DP, with no group-privacy or composition loss.

  Finally,
  \[
  n\le15m,
  \qquad
  n^2\log(en)\le C_\Delta m^2\log(em),
  \qquad C_\Delta=225(1+\log15).
  \tag{DT}
  \]
  Thus choosing the universal theorem constant \(c_\delta\le a_\delta/C_\Delta\) transfers \(\delta_m\le c_\delta/(m^2\log(em))\) to the \(n\)-sample condition required by (HP). This is a comparison of the inherited privacy parameter \(\delta_m\), not a relabeling of it as \(\delta_n\).

- Technical assumptions:
  - `assump:minor-table` (Disjoint-threshold restriction table): Integers \(k\ge1\) and \(N\ge2\) and the finite class \(C\) admit the injections and concepts in the displayed \((k,N)\) disjoint-threshold-minor definition. This is only a static restriction-table condition.
  - `assump:unrestricted-private-pac` (Unrestricted private PAC antecedent): The kernel \(A:Z_X^m\rightsquigarrow\{0,1\}^X\), for an integer \(m\ge1\), is distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and replacement-adjacency \((\varepsilon_0,\delta_m)\)-DP. Its output may be improper and it may be computationally unbounded.
  - `assump:fixed-parameter-scale` (Fixed PAC and approximate-DP scale):
  \[
  \alpha_0=\frac1{128},\qquad \beta_0=\frac1{32},\qquad
  0<\varepsilon_0\le1,\qquad
  0\le\delta_m\le\frac{c_\delta}{m^2\log(em)},
  \]
  where \(c_\delta>0\) is the sufficiently small universal constant appearing in the goal.

# Formalized Goal

- Goal statement:
  There exist universal constants \(c,c_\delta>0\) and \(N_0\ge2\) such that, for every \(k\ge1\), every \(N\ge N_0\), every finite \(C\subseteq\{0,1\}^X\), and every learner \(A\) satisfying `assump:minor-table`, `assump:unrestricted-private-pac`, and `assump:fixed-parameter-scale`,
  \[
  m\ge c\,k\log^*N.
  \]
  The claim is a fixed-sample, distribution-free realizable-PAC lower bound in zero-one risk and high-probability PAC mode; \(k,N,m\) are the exposed variables, while \(\alpha_0,\beta_0\) are fixed and the dependence on privacy is exposed through \(0<\varepsilon_0\le1\) and \(\delta_m\). All constants are universal and independent of \(C,X,k,N,m,\varepsilon_0,\delta_m\). A satisfactory proof must derive (HP), not assume it; use (OF), (EX), and the exact one-record privacy map to obtain (UT); use (DT) to discharge the threshold theorem's \(\delta\)-condition; and choose \(c,N_0\) so that \(m<c k\log^*N\) implies \(n<a_{\rm th}\log^*N\), contradicting (HP).

# Note

- Rigor:
  Source alignment: the statement retains arbitrary improper and computationally unbounded learners, distribution-free realizable PAC learning, and source-scale approximate DP, but is conditional on the disjoint-threshold minor and proves \(\Omega(k\log^*N)\), not \(\Omega(\log|C|)\). Progress type: `conditional`. Materiality: for the exact \(k\)-arm threshold product, \(|C|=N^k\) and \(\operatorname{VC}(C)=k\), so the target improves the generic additive lower envelope to a multiplicative \(k\log^*N\) bound while leaving the requested \(k\log N\) scale open. At \(k=1\), the goal recovers the cited unrestricted one-chain \(\Omega(\log^*N)\) scale, with only universal losses from \(n=2m+O(1)\) and the privacy-scale transfer. Assumption support: `assump:minor-table` is the idea's novel example-verified restriction (disjoint threshold products, anchored lower orthants on the star set, and zero-anchored boxes restricted to that star); `assump:unrestricted-private-pac` is the standard PAC/DP regime and arbitrary-output scope of Alon et al.; `assump:fixed-parameter-scale` preserves the branch's fixed constants and the \(1/(m^2\log(em))\) source scale. The extension of the cited proof to \(\varepsilon_0\le1\), expected loss \(1/20\), and the minimax prior is explicitly a derived proof obligation in (HP), not a cited verbatim theorem or an added hard-prior assumption. The rectangles paper supports lineage and examples only, not (HP).
