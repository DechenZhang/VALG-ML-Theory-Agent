# Formalized Setting

- Basic setup:
  - **Parameters, distribution class, and target rate.** Fix a known real \(k>1\). The
    known scale parameters satisfy \(\lambda\geq\sigma>0\). For a law \(D\) on
    \(\mathbb R\), write \(\mu(D)=\mathbb E_D X\), and define
    \[
    \mathcal D(k,\lambda,\sigma)
      :=\{D:\mu(D)\in[-\lambda,\lambda],\ \mathbb E_D|X-\mu(D)|^k\leq\sigma^k\}.
    \]
    No support, density, symmetry, likelihood, or tail-shape restriction is part of
    this class. The theorem-chosen constant \(c_k\in(0,1)\) restricts the accuracy to
    \(0<\epsilon\leq c_k\sigma\), and \(\delta\in(0,1/2)\). Write
    \({\bf1}\{E\}\) for the indicator of an event \(E\). Throughout,
    \(u\lesssim_k v\) means \(u\leq C(k)v\) for a finite constant depending only on
    \(k\), and \(u\asymp_k v\) means both \(u\lesssim_k v\) and
    \(v\lesssim_k u\). With natural logarithms,
    \[
    r_k(\lambda,\sigma,\epsilon,\delta)
      :=\log\frac{\lambda}{\sigma}+
      \begin{cases}
      \dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,& k>2,\\[0.35em]
      \dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,& k=2,\\[0.35em]
      \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,&1<k<2.
      \end{cases}
    \]

  - **Fixed sample split and coding localization.** Let the fixed sample indices be
    partitioned before any response into disjoint sets \(I_{\rm loc}\) and \(I_{\rm ref}\),
    of sizes \(N_{\rm loc}\) and \(N_{\rm ref}\). On \(I_{\rm loc}\), use the published
    coding-based fully non-adaptive localization construction of Lau and Scarlett
    (2026, arXiv:2604.07796, Theorem 16), at confidence \(\eta=\delta/4\). Denote its
    precommitted measurable query sets by \(\mathcal B_i(R_{\rm loc})\), its seed by
    \(R_{\rm loc}\), its bits by
    \(Y_i^{\rm loc}={\bf1}\{X_i\in\mathcal B_i(R_{\rm loc})\}\), and its always-defined
    decoder output by
    \[
      c=\mathsf{Dec}_{\rm loc}\bigl(R_{\rm loc},(Y_i^{\rm loc})_{i\in I_{\rm loc}}\bigr).
    \]
    The cited result is used as a theorem-level proof obligation, not as a primitive
    localization assumption: under the present parameter and data model it must give
    a constant \(L_k<\infty\) and an event
    \(\mathcal E_{\rm loc}:=\{|c-\mu(D)|\leq L_k\sigma\}\) with probability at least
    \(1-\delta/4\), together with
    \(N_{\rm loc}\leq C_{{\rm loc},k}\{1+\log(\lambda/\sigma)+\log(4/\delta)\}\).

  - **Dyadic scales and rate normalizer.** Choose positive constants \(a_k,b_k\), depending
    only on \(k\), and then choose \(c_k\) small enough that \(H_\star/h_0\geq2\) below.
    Set
    \[
      h_0=a_k\sigma,\qquad
      H_\star=b_k\sigma\left(\frac{\sigma}{\epsilon}\right)^{1/(k-1)},\qquad
      S=\left\lceil\log_2\frac{H_\star}{h_0}\right\rceil,\qquad
      h_s=2^s h_0\ (0\leq s\leq S),\qquad H=h_S.
    \]
    Thus \(S\geq1\) and \(H_\star\leq H<2H_\star\). Define
    \[
      Z_S:=\sum_{s=0}^S h_s^{\,2-k},\qquad
      p_s:=\frac{h_s^{\,2-k}}{Z_S},\quad 0\leq s\leq S.
    \]
    The numbers \(p_s\) are the exact level probabilities used by every refinement
    query; in particular \(p_s^{-1}=Z_S h_s^{\,k-2}\).

  - **Global dyadic grid, paddings, colors, and child branches.** For every integer
    \(j\) and \(0\leq s\leq S\), let
    \[
      P_{s,j}:=[j h_s,(j+1)h_s),\qquad m_{s,j}:=(j+1/2)h_s,\qquad
      J_{s,j}:=P_{s,j-1}\cup P_{s,j}\cup P_{s,j+1}.
    \]
    The half-open convention is fixed globally, including ties at cell boundaries.
    For \(s\geq1\), the two children of \(P_{s,j}\) are \(P_{s-1,2j}\) and
    \(P_{s-1,2j+1}\). For \(b\in\{0,1\}\), define the child-subtracted ring
    \[
      {\cal R}_{s,j,b}:=J_{s,j}\setminus J_{s-1,2j+b},\qquad s\geq1,
    \]
    and put \({\cal R}_{0,j}:=J_{0,j}\). For a color
    \(\ell\in\{0,1,2,3\}\), write
    \({\cal J}_{s,\ell}:=\{j\in\mathbb Z:j\equiv\ell\pmod 4\}\). The paddings
    \(J_{s,j}\), and hence all rings at a fixed \((s,\ell,b)\), are pairwise disjoint
    as \(j\) ranges over \({\cal J}_{s,\ell}\). Along a base-cell path the paddings are
    nested.

  - **Precommitted refinement seeds and one-bit queries.** For each \(i\in I_{\rm ref}\),
    before any bit is observed, draw mutually independent public variables, stored for
    use by the decoder,
    \[
      L_i\sim(p_0,\ldots,p_S),\qquad C_i\sim{\rm Unif}\{0,1,2,3\},\qquad
      U_i\sim{\rm Unif}[-1,1].
    \]
    These refinement variables are also independent of all samples and of the complete
    localization block.
    If \(L_i=0\), set \(T_i={\rm coord}\), and no child variable is used. If
    \(L_i=s\geq1\), draw
    \(T_i\sim{\rm Unif}\{{\rm coord},{\rm mass}\}\) and
    \(B_i\sim{\rm Unif}\{0,1\}\). Also draw a countable family of fresh independent
    Rademacher masks \(\rho_{i,s,j}\in\{-1,+1\}\), indexed by \(0\leq s\leq S\) and
    \(j\in\mathbb Z\), independently across \(i,s,j\) and independently of the
    localization block. For a selected level \(s=L_i\), define the bounded measurable
    function \(F_i:\mathbb R\to[-1,1]\) by
    \[
    F_i(x)=
    \begin{cases}
    \displaystyle\sum_{j\in{\cal J}_{0,C_i}}\rho_{i,0,j}
      \frac{x-m_{0,j}}{2h_0}{\bf1}_{{\cal R}_{0,j}}(x),&L_i=0,\\[1.0em]
    \displaystyle\sum_{j\in{\cal J}_{s,C_i}}\rho_{i,s,j}
      \psi_{s,j,T_i}(x){\bf1}_{{\cal R}_{s,j,B_i}}(x),&L_i=s\geq1,
    \end{cases}
    \]
    where \(\psi_{s,j,{\rm coord}}(x)=(x-m_{s,j})/(2h_s)\) and
    \(\psi_{s,j,{\rm mass}}(x)=1\). The sums have at most one nonzero term because of
    the four-color disjointness; on a coordinate ring \(|\psi|\leq3/4\), and on a
    mass ring \(|\psi|=1\). The refinement query set and bit are
    \[
      A_i:=\{x:F_i(x)\geq U_i\},\qquad Y_i={\bf1}\{X_i\in A_i\},\qquad
      Y_i^0:={\bf1}\{0\geq U_i\},\qquad \Delta Y_i:=Y_i-Y_i^0.
    \]
    \(Y_i^0\) is computed from the stored dither and is not an additional transmitted
    bit. Every \(A_i\), including its countable mask realization, is fixed before any
    message and is independent of \(c\) and of all localization bits.

  - **Decoder-selected path.** After the two blocks have been received, use the
    localization value \(c\) only in the decoder. Define the nearest base-cell index
    with the fixed tie rule
    \[
      j_0(c):=\min\mathop{\rm argmin}_{j\in\mathbb Z}|c-m_{0,j}|,\qquad
      m_0:=m_{0,j_0(c)},
    \]
    and for \(s\geq1\)
    \[
      j_s:=\left\lfloor\frac{j_0(c)}{2^s}\right\rfloor,\qquad
      b_s:=j_{s-1}-2j_s\in\{0,1\},\qquad
      m_s:=m_{s,j_s},\qquad d_s:=m_s-m_0.
    \]
    For \(0\leq s\leq S\), let \(\kappa_s\in\{0,1,2,3\}\) be the residue
    \(j_s\bmod4\).
    Let the target path rings be
    \[
      R_0(c):={\cal R}_{0,j_0(c)},\qquad
      R_s(c):={\cal R}_{s,j_s,b_s}\quad(1\leq s\leq S).
    \]
    The path is defined for every decoder value \(c\), including localization failure.
    It changes only which already-transmitted bits are retained and how they are
    centered; it never changes a query set.

  - **Importance-weighted decoder statistics.** For \(i\in I_{\rm ref}\), define the
    scalar statistic \(W_i(c)\) by
    \[
    W_i(c)=
    \begin{cases}
    \displaystyle\frac{16h_0}{p_0}{\bf1}\{C_i=\kappa_0\}
      \rho_{i,0,j_0(c)}\Delta Y_i,&L_i=0,\\[1.0em]
    \displaystyle\frac{16}{p_s}{\bf1}\{C_i=\kappa_s\}{\bf1}\{B_i=b_s\}
      \rho_{i,s,j_s}
      \left[4h_s{\bf1}\{T_i={\rm coord}\}
      +2d_s{\bf1}\{T_i={\rm mass}\}\right]\Delta Y_i,&L_i=s\geq1.
    \end{cases}
    \]
    The displayed constants jointly invert the dither, color, branch, and type
    probabilities, while \(p_s^{-1}\) inverts the level probability. The coordinate
    term estimates \(X-m_s\) on a target ring, and the mass term estimates \(d_s\)
    on that ring.

  - **Fixed median-of-means aggregation.** Choose k-only constants
    \(\alpha_k,\beta_k>0\), set
    \[
      G_\delta:=2\left\lceil \alpha_k\log\frac{8}{\delta}\right\rceil+1,\qquad
      B_{\rm ref}:=\left\lceil \beta_k\frac{\sigma^k Z_S}{\epsilon^2}\right\rceil,\qquad
      N_{\rm ref}:=G_\delta B_{\rm ref},
    \]
    and partition \(I_{\rm ref}\) in advance into \(G_\delta\) consecutive groups
    \(G_1,\ldots,G_{G_\delta}\), each of size \(B_{\rm ref}\). With
    \(\overline W_g(c):=B_{\rm ref}^{-1}\sum_{i\in G_g}W_i(c)\), the final estimator is
    \[
      \widehat\mu:=m_0+\mathop{\rm median}_{1\leq g\leq G_\delta}\overline W_g(c).
    \]
    The split, group assignment, all levels, colors, branches, masks, dithers, and
    localization seeds are fixed before any response bit.

  - **Derived proof obligations, not assumptions.** The following facts must be proved
    from the definitions, the cited localization theorem, and the primitive assumptions
    below; none is silently imposed as a theorem-facing condition.
    (i) On \(\mathcal E_{\rm loc}\), \(|c-m_0|\leq h_0/2\) and, for a k-only choice
    \(a_k\geq4L_k\), the true mean lies in the central portion
    \({\rm Core}_{0,j_0}:=[m_0-3h_0/4,m_0+3h_0/4]\) of \(J_{0,j_0}\). The cited block's
    source hypotheses must be mapped to the present independent-sample,
    precommitted-query model and its cost must be established.
    (ii) On that event, recentering gives
    \[
      \mathbb E_D|X-m_0|^k\leq
      2^{k-1}\bigl(\sigma^k+|m_0-\mu(D)|^k\bigr)\leq C_k^{\rm rec}\sigma^k.
    \]
    (iii) The dyadic geometry gives \(J_{0,j_0}\subseteq\cdots\subseteq J_{S,j_S}\),
    \(R_0(c),\ldots,R_S(c)\) pairwise disjoint, and
    \[
      \sum_{s=0}^S{\bf1}\{x\in R_s(c)\}={\bf1}\{x\in J_{S,j_S}\}.
    \]
    It also gives \(|d_s|\leq h_s\), contains the interval
    \([m_0-H,m_0+H]\) in \(J_{S,j_S}\), and proves that every \(F_i\) is Borel
    measurable and \([-1,1]\)-valued under the stated coordinate/mass bounds and
    half-open boundary convention.
    (iv) Uniform dithering and the baseline satisfy, for every fixed \(f\in[-1,1]\),
    \(\mathbb E_U[{\bf1}\{f\geq U\}-{\bf1}\{0\geq U\}]=f/2\). After multiplying by
    the target mask, every non-target ring has conditional mean zero by independent
    Rademacher averaging. For a target ring the coordinate and mass terms in
    \(W_i(c)\) have conditional means \(X-m_s\) and \(d_s\), respectively. Therefore,
    conditional on any fixed decoder value \(c\) independent of the refinement block,
    \[
      \mathbb E[W_i(c)\mid X_i=x,c]=(x-m_0){\bf1}\{x\in J_{S,j_S}\}.
    \]
    This is the exact padded-ring telescope; no decoder-side query is introduced.
    (v) For \(r=|x-m_0|\), every active target or non-target ring at level \(s\geq1\)
    obeys \(h_s\leq C_{\rm act} r\), for a universal constant \(C_{\rm act}<\infty\),
    and the geometric activation ledger obeys
    \[
      \sum_{s\geq1:\,{\rm active\ at}\ x}h_s^k\leq C_{{\rm act},k} r^k.
    \]
    The level \(s=0\) contribution is separately bounded using
    \(h_0^2+h_0\mathbb E|X-m_0|\lesssim_k\sigma^2\). These statements include all
    same-color non-target rings and do not condition on a hidden selected cell.
    (vi) Combining (v) with \(p_s^{-1}=Z_S h_s^{k-2}\), the mask/dither second moment
    and the coordinate-plus-mass combination satisfy, on \(\mathcal E_{\rm loc}\),
    \[
      {\rm Var}(W_i(c)\mid c)\leq C_k^{\rm var}\sigma^k Z_S\leq C_k^{\rm var}
      \begin{cases}
      \sigma^2,&k>2,\\
      \sigma^2\log(\sigma/\epsilon),&k=2,\\
      \sigma^k H^{2-k},&1<k<2.
      \end{cases}
    \]
    The conditional refinement observations are independent because the entire
    refinement block is independent of the localization block.
    (vii) The omitted outer part has the derived bias bound
    \[
      \left|\mathbb E_D[(X-m_0){\bf1}\{X\notin J_{S,j_S}\}]\right|
      \leq \frac{\mathbb E_D|X-m_0|^k}{H^{k-1}}
      \leq C_k^{\rm tail}\frac{\sigma^k}{H^{k-1}}.
    \]
    Since \(H\geq H_\star\), the last quantity is at most
    \(C_k^{\rm tail}b_k^{1-k}\epsilon\); choosing
    \(b_k^{k-1}\geq4C_k^{\rm tail}\) makes it at most \(\epsilon/4\). No tail event
    is assumed. The exact ring expectation in (iv) leaves no additional localization
    or fine-scale bias.
    (viii) Conditional median-of-means concentration with the displayed
    \(G_\delta,B_{\rm ref}\) gives refinement failure probability at most \(\delta/2\)
    and estimation error at most \(\epsilon\) after adding the tail bias. Uniformly in
    \(D\), confidence assembly must explicitly establish
    \[
      \Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}
      \leq \Pr_D(\mathcal E_{\rm loc}^c)
      +\Pr_D(\{|\widehat\mu-\mu(D)|>\epsilon\}\cap\mathcal E_{\rm loc})
      \leq\delta/4+\delta/2\leq\delta.
    \]
    The first, boundary, and degenerate regimes must be included. Finally,
    \[
      Z_S\asymp_k
      \begin{cases}
      \sigma^{2-k},&k>2,\\
      \log(\sigma/\epsilon),&k=2,\\
      H^{2-k},&1<k<2,
      \end{cases}
    \]
    and hence
    \[
      \frac{\sigma^kZ_S}{\epsilon^2}\asymp_k
      \begin{cases}
      \dfrac{\sigma^2}{\epsilon^2},&k>2,\\[0.35em]
      \dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon},&k=2,\\[0.35em]
      \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)},&1<k<2.
      \end{cases}
    \]
    All constants \(C_k^{\rm rec},C_{{\rm act},k},C_k^{\rm var},C_k^{\rm tail}\)
    appearing in these obligations must be finite and depend only on \(k\). The
    resulting \(N_{\rm ref}\), together with the cited \(N_{\rm loc}\), are
    explicitly simplified to \(C_k r_k\); the additive localization confidence cost is
    absorbed using
    \[
      1+\log(4/\delta)
      \leq C_k\frac{\sigma^kZ_S}{\epsilon^2}\log(1/\delta),
    \]
    which follows from \(\epsilon\leq c_k\sigma\), \(\delta<1/2\), and the displayed
    regime bounds. No union bound over the
    \(\Theta(\lambda/\sigma)\) possible cells is used after conditioning on the
    independently decoded path.

- Technical assumptions:
  - `assump:parameter-domain` (Source parameter domain): \(k>1\) is fixed and known;
    \(\lambda\geq\sigma>0\) are known; \(\delta\in(0,1/2)\); and
    \(0<\epsilon\leq c_k\sigma\), where \(c_k\in(0,1)\) is chosen only as a function of
    \(k\).
  - `assump:moment-class` (Unrestricted central moment class): the common law satisfies
    \(D\in\mathcal D(k,\lambda,\sigma)\), with the inequality
    \(\mathbb E_D|X-\mu(D)|^k\leq\sigma^k\) and no stronger support, symmetry, density,
    or tail condition.
  - `assump:independent-samples` (Independent observations and random seeds): all samples
    used by the two blocks are independent and identically distributed with law \(D\);
    \(R_{\rm loc}\) and all refinement levels, colors, branches, types, masks, and
    dithers are mutually independent and independent of every sample.
  - `assump:precommitted-protocol` (Precommitted randomness and queries): the index split,
    localization seed, refinement levels, colors, child branches, types, countable mask
    families, dithers, and median-of-means groups are sampled or fixed before any bit is
    observed, and all randomness needed by the decoder is available to it; every query
    set is measurable and may be arbitrary, but cannot depend on earlier messages.
    Decoder-side use of \(c\) is permitted only after the complete transcript is
    collected.

# Formalized Goal

- Goal statement: This is a full constructive three-regime sample-complexity
  classification theorem. For every fixed \(k>1\), prove that there are constants
  \(c_k,C_k>0\), depending only on \(k\), and corresponding k-only choices of
  \(a_k,b_k,\alpha_k,\beta_k\), such that for every known
  \(\lambda\geq\sigma>0\), every \(0<\epsilon\leq c_k\sigma\), and every
  \(\delta\in(0,1/2)\), the fixed-horizon protocol defined above uses exactly one bit
  per independent sample, precommits every randomized measurable query before any
  message is observed, and with \(n=N_{\rm loc}+N_{\rm ref}\) satisfies
  \[
    n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta),\qquad
    \sup_{D\in\mathcal D(k,\lambda,\sigma)}
    \Pr_{D,\,{\rm samples,protocol}}
      \left\{|\widehat\mu-\mu(D)|>\epsilon\right\}\leq\delta.
  \]
  The claim is unconditional high-probability PAC accuracy in the absolute-value norm
  on \(\mathbb R\), at a fixed (non-stopping) horizon; probability is over all samples
  and all localization and refinement randomness. The displayed dependence is retained
  in full: \(\log(\lambda/\sigma)\), the three separate \(k\)-regime refinement terms,
  and every \(\sigma,\epsilon,\delta\) factor, with no hidden dependence outside
  k-only constants.

# Note

- Rigor: Source alignment is exact. The setting preserves the unrestricted
  \(\mathcal D(k,\lambda,\sigma)\) class, arbitrary randomized non-identical measurable
  one-bit queries, zero adaptive transitions, all \(\lambda,\sigma,\epsilon,\delta\)
  quantifiers, all three fixed-\(k\) regimes, the special \(k=2\) logarithm, and
  constants depending only on \(k\); there is no target-changing weakening. Progress
  type: `full`. Materiality: proving the listed obligations would give the affirmative,
  parameter-complete answer to Gap 3 and Open Problem 1 rather than a regime-specific
  or conditional result. Parent foundation
  papers are *Order-Optimal Sequential 1-Bit Mean Estimation in General Tail Regimes*
  (arXiv:2604.07796) for coding localization, three-regime accounting, and confidence
  amplification, and *Robust Mean Estimation under Quantization* (arXiv:2601.07074) for
  dithered bounded-function encoding. The transfer map replaces the source's
  location-selected second stage by the precommitted padded-dyadic Rademacher
  ring-multiplexer and retains decoder-only path selection. Assumption support is
  direct: `assump:parameter-domain` and `assump:moment-class` are the official source
  regime, while `assump:independent-samples` and `assump:precommitted-protocol` are the
  official one-bit independent-sample and zero-adaptivity model conditions. The ring
  mechanism is not promoted to an assumption; its recorded novel verification examples
  are (i) a point mass or any law supported in the selected \(J_{0,j_0(c)}\), where all
  retained higher rings are exactly inactive; (ii) the asymmetric two-atom residual
  with mass \(p\) at
  distance \(R\) and mass \(1-p\) at \(-pR/(1-p)\), where the charge is bounded by
  \(C_k pR^kZ_S\); and (iii) an unbounded asymmetric dyadic atomic tail with masses
  \(q_j\) at distances \(2^j\sigma\), where summing the geometric charges gives
  \(C_kZ_S\sum_jq_j(2^j\sigma)^k\). At \(k=2\), disjoint target rings additionally give
  \(\sum_s\mathbb E[(X-m_0)^2{\bf1}_{R_s(c)}]\leq C_k\sigma^2\), so uniform level
  sampling costs one factor \(S\asymp\log(\sigma/\epsilon)\), not \(S^2\). These checks
  support the stated mechanism without narrowing the theorem population or assuming
  localization, recentering, cancellation, variance, tail control, or confidence as
  primitive facts.
