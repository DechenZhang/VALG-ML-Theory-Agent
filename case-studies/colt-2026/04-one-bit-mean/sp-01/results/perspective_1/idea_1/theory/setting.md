# Formalized Setting

- Basic setup:
  - **Parameter space, distribution class, and benchmark.** Fix \(k>1\). For known
    \(\lambda\geq \sigma>0\), let

    \[
    \mathcal D(k,\lambda,\sigma)
    :=\left\{D:\ \mu(D):=\mathbb E_D X\in[-\lambda,\lambda],\quad
    \mathbb E_D|X-\mu(D)|^k\leq \sigma^k\right\}.
    \]

    No support, symmetry, density, likelihood, or further tail condition is part of this
    definition. For \(0<\epsilon<\sigma\) and \(\delta\in(0,1/2)\), define (with natural
    logarithms)

    \[
    r_k(\lambda,\sigma,\epsilon,\delta)
    :=\log\frac{\lambda}{\sigma}+
    \begin{cases}
    \dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta, & k>2,\\[0.45em]
    \dfrac{\sigma^2}{\epsilon^2}\log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,
      & k=2,\\[0.45em]
    \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}\log\dfrac1\delta,
      & 1<k<2.
    \end{cases}
    \]
  - **Fixed sample split and coding-localization block.** Before any message is observed,
    split the fixed sample indices into disjoint sets \(I_{\mathrm{loc}}\) and
    \(I_{\mathrm{ref}}\), of sizes \(N_{\mathrm{loc}}\) and \(N_{\mathrm{ref}}\). On
    \(I_{\mathrm{loc}}\), run at confidence parameter \(\eta=\delta/4\) the published
    non-adaptive coding-localization protocol of Lau and Scarlett, *Order-Optimal Sequential
    1-Bit Mean Estimation in General Tail Regimes* (arXiv:2604.07796, Theorem 16). Denote its
    public random seed by \(R_{\mathrm{loc}}\), its precommitted measurable query sets by
    \(\mathcal B_i(R_{\mathrm{loc}})\subseteq\mathbb R\), its bits by
    \(Y_i=\mathbf 1\{X_i\in\mathcal B_i(R_{\mathrm{loc}})\}\), and its always-defined decoder
    output by

    \[
    c=\mathsf{Dec}_{\mathrm{loc}}
       \bigl(R_{\mathrm{loc}},(Y_i)_{i\in I_{\mathrm{loc}}}\bigr)\in\mathbb R.
    \]

    The localization event
    \(\mathcal E_{\mathrm{loc}}:=\{|c-\mu(D)|\leq L_k\sigma\}\), where \(L_k<\infty\)
    is the constant in the cited localization guarantee, is a generated event to be proved from
    the cited result, not a theorem-facing assumption.
  - **Dyadic scales and exact level law.** Fix \(k\)-only design constants
    \(\gamma_k\in(0,1)\) and \(b_k\geq1\), to be chosen in the proof, and set

    \[
    h_0=\gamma_k\epsilon,\qquad
    H_*=b_k\sigma\left(\frac{\sigma}{\epsilon}\right)^{1/(k-1)},\qquad
    J=\left\lceil\log_2\frac{H_*}{h_0}\right\rceil,
    \qquad h_j=2^j h_0\ (0\leq j\leq J),\qquad H=h_J.
    \]

    Thus \(H_*\leq H<2H_*\). The sampled levels are \(0,\ldots,J-1\). Let

    \[
    \mathcal J_{\mathrm f}=\{j:h_j\leq\sigma\},\qquad
    \mathcal J_{\mathrm c}=\{j:h_j>\sigma\},
    \]

    where both sets are restricted to \(0\leq j<J\). For a nonempty group \(G\) among
    \(\mathcal J_{\mathrm f},\mathcal J_{\mathrm c}\), define

    \[
    w_j=\begin{cases}
    h_j/\sigma,&j\in\mathcal J_{\mathrm f},\\
    (h_j/\sigma)^{2-k},&j\in\mathcal J_{\mathrm c},
    \end{cases}
    \qquad W_G=\sum_{\ell\in G}w_\ell.
    \]

    If \(m\in\{1,2\}\) is the number of nonempty groups, set
    \(p_j=m^{-1}w_j/W_G\) for \(j\in G\). Consequently each nonempty group receives mass
    \(1/m\), and in particular the fine and coarse groups each receive mass \(1/2\) when both
    occur. This is the exact piecewise level distribution used below.
  - **Shifted quantizers and precommitted refinement queries.** Put
    \(\mathcal S=\{0,1/4,1/2,3/4\}\). For \(0\leq j\leq J\), \(a\in\mathcal S\), and
    \(x\in\mathbb R\), define

    \[
    Q_{j,a}(x)=a h_j+h_j\left\lfloor\frac{x-a h_j}{h_j}\right\rfloor,
    \]

    and, for \(0\leq j<J\) and \(a,b\in\mathcal S\), define the bounded dyadic digit

    \[
    F_{j,a,b}(x)=Q_{j,a}(x)-Q_{j+1,b}(x).
    \]

    Independently for every \(i\in I_{\mathrm{ref}}\), before observing any message, draw

    \[
    L_i\sim(p_0,\ldots,p_{J-1}),\qquad
    A_i,B_i\mathrel{\stackrel{\mathrm{iid}}\sim}\mathrm{Unif}(\mathcal S),\qquad
    U_i\sim\mathrm{Unif}[-1,2].
    \]

    The one-bit query and response are

    \[
    \mathcal A_i
      =\left\{x\in\mathbb R:
        \frac{F_{L_i,A_i,B_i}(x)}{h_{L_i}}\geq U_i\right\},
    \qquad Y_i=\mathbf 1\{X_i\in\mathcal A_i\}.
    \]

    Each \(\mathcal A_i\) is a measurable union of intervals. All variables determining
    \(\mathcal B_i(R_{\mathrm{loc}})\) and \(\mathcal A_i\), including all public randomness
    for both blocks, are generated before any bit is observed.
  - **Decoder-selected stable shifts and centered pseudo-observations.** Write
    \(\{t\}=t-\lfloor t\rfloor\) for fractional part. For every decoded \(c\in\mathbb R\)
    and \(0\leq j\leq J\), define \(a_j(c)\) to be the unique member of \(\mathcal S\) such
    that

    \[
    \left\{\frac{c}{h_j}-a_j(c)\right\}\in[3/8,5/8).
    \]

    Set

    \[
    Q_j^c=Q_{j,a_j(c)},\qquad
    D_j^c=Q_j^c-Q_{j+1}^c
          =F_{j,a_j(c),a_{j+1}(c)}\quad(0\leq j<J).
    \]

    For \(i\in I_{\mathrm{ref}}\), define the decoder-side pseudo-observation

    \[
    Z_i(c)=\frac{16}{p_{L_i}}\,
      \mathbf 1\!\left\{(A_i,B_i)=
        (a_{L_i}(c),a_{L_i+1}(c))\right\}
      3h_{L_i}\left[
        Y_i-
        \mathbf 1\!\left\{
          \frac{F_{L_i,A_i,B_i}(c)}{h_{L_i}}\geq U_i
        \right\}
      \right].
    \]

    Thus \(c\) only selects, centers, and reweights bits at decoding time: it does not alter any
    query set. The factor \(16\) is the inverse probability of the selected offset pair, and
    \(p_{L_i}^{-1}\) is the inverse level probability.
  - **Telescope quantities and final decoder.** Define

    \[
    T_c(x)=\sum_{j=0}^{J-1}\bigl(D_j^c(x)-D_j^c(c)\bigr),
    \]

    together with the fine and top residuals

    \[
    R_0^c(x)=\bigl(x-Q_0^c(x)\bigr)-\bigl(c-Q_0^c(c)\bigr),
    \qquad
    R_H^c(x)=Q_J^c(x)-Q_J^c(c).
    \]

    Choose before observing messages an odd integer \(q\geq1\) and an integer \(s\geq1\), set
    \(N_{\mathrm{ref}}=qs\), and partition \(I_{\mathrm{ref}}\) into fixed blocks
    \(G_1,\ldots,G_q\) of size \(s\). With
    \(\overline Z_g(c)=s^{-1}\sum_{i\in G_g}Z_i(c)\), the final decoder is

    \[
    \widehat\mu=c+\operatorname{median}
       \bigl(\overline Z_1(c),\ldots,\overline Z_q(c)\bigr).
    \]
  - **Derived proof obligations, not assumptions.** Here \(L_k\),
    \(C_k^{\mathrm{rec}}\), \(C_k^{\mathrm{var}}\), and
    \(C_k^{\mathrm{tail}}\), as well as constants hidden by \(O_k(\cdot)\), must be finite
    constants depending only on \(k\). The proof must establish all of the following from the
    definitions and the technical assumptions below: (i) Theorem 16's hypotheses are discharged
    by the present \(k>1\), known \(\lambda\geq\sigma\), \(D\in\mathcal D(k,\lambda,\sigma)\),
    independent-sample, one-bit, precommitted-query model and confidence
    \(\eta=\delta/4\), with its source objects mapped to
    \((I_{\mathrm{loc}},\mathcal B_i,\mathsf{Dec}_{\mathrm{loc}},c)\); under this mapping the
    cited localization theorem gives
    \(\Pr(\mathcal E_{\mathrm{loc}})\geq1-\delta/4\), together with its stated
    \(N_{\mathrm{loc}}=O_k(1+\log(\lambda/\sigma)+\log(1/\delta))\) cost; (ii) on
    \(\mathcal E_{\mathrm{loc}}\), moment recentering gives
    \(\mathbb E_D|X-c|^k\leq C_k^{\mathrm{rec}}\sigma^k\); (iii) the stable shift exists
    uniquely and places \(c\) at least \(3h_j/8\) from both boundaries of its shifted cell;
    (iv) \(-h_j<F_{j,a,b}(x)<2h_j\) and uniform dithering gives

    \[
    \mathbb E_{U}\!\left[3h_j\left(
      \mathbf 1\{F_{j,a,b}(x)/h_j\geq U\}
      -\mathbf 1\{F_{j,a,b}(c)/h_j\geq U\}
      \right)\right]
    =F_{j,a,b}(x)-F_{j,a,b}(c);
    \]

    (v) the exact deterministic telescope and residual decomposition are

    \[
    T_c(x)=\bigl(Q_0^c(x)-Q_0^c(c)\bigr)
       -\bigl(Q_J^c(x)-Q_J^c(c)\bigr),
    \qquad x-c=T_c(x)+R_0^c(x)+R_H^c(x);
    \]

    (vi) \(|R_0^c(x)|\leq h_0\), \(R_H^c(x)=0\) for
    \(|x-c|\leq3H/8\), and, for every \(j<J\),
    \(D_j^c(x)-D_j^c(c)=0\) when \(|x-c|\leq3h_j/8\), while its magnitude is at most a
    universal constant times \(h_j\); (vii) for every \(c\) satisfying
    \(|c-\mu(D)|\leq L_k\sigma\) (equivalently, conditional on the independent refinement
    block given \(\mathcal E_{\mathrm{loc}}\)), the importance-weighted variable obeys

    \[
    \operatorname{Var}\bigl(Z_i(c)\mid c\bigr)\leq C_k^{\mathrm{var}}
    \begin{cases}
    \sigma^2,&k>2,\\
    \sigma^2\log(\sigma/\epsilon),&k=2,\\
    \sigma^k H^{2-k},&1<k<2;
    \end{cases}
    \]

    (viii) for the same localized centers \(c\), the top-tail bias satisfies
    \(\left|\mathbb E_D R_H^c(X)\right|
      \leq C_k^{\mathrm{tail}}\sigma^k/H^{k-1}\), and the \(k\)-only choices of
    \(\gamma_k,b_k\) make the combined fine and top bias a fixed fraction of \(\epsilon\);
    and (ix) median-of-means concentration, the localization/refinement confidence split, and
    explicit absorption of the localization cost yield the single unconditional PAC statement
    and the exact \(r_k\) sample bound below. None of localization success, recentering, stable
    offset geometry, the telescope, digit inactivity, variance control, tail bias, concentration,
    or confidence assembly is assumed.
- Technical assumptions:
  - `assump:parameter-domain` (Source parameter domain): \(k>1\) is fixed and known;
    \(\lambda\geq\sigma>0\) are known; \(\delta\in(0,1/2)\); and
    \(0<\epsilon\leq c_k\sigma\), where the theorem must choose
    \(c_k\in(0,1)\) depending only on \(k\).
  - `assump:moment-class` (Unrestricted central moment class): The common law satisfies
    \(D\in\mathcal D(k,\lambda,\sigma)\), exactly as defined above. In particular, the bound is
    an inequality \(\mathbb E_D|X-\mu(D)|^k\leq\sigma^k\), not an exact-moment or subclass
    condition.
  - `assump:iid-independent-randomness` (Independent samples and precommitted seeds): The
    variables \((X_i)_{i=1}^{N_{\mathrm{loc}}+N_{\mathrm{ref}}}\) are independent with common
    law \(D\). The localization seed and all refinement seeds
    \((L_i,A_i,B_i,U_i)_{i\in I_{\mathrm{ref}}}\) are mutually independent and independent of
    all samples. The index split, median-of-means blocks, and all query-generating random variables
    are fixed before any response bit is observed.

# Formalized Goal

- Goal statement: For every fixed \(k>1\), prove that there exist constants
  \(c_k,C_k>0\), and choices of the design constants and integers in the protocol above that
  depend only on \(k\) and the known tuple \((\lambda,\sigma,\epsilon,\delta)\), such that for
  every \(\lambda\geq\sigma>0\), every \(0<\epsilon\leq c_k\sigma\), and every
  \(\delta\in(0,1/2)\), the resulting fixed-horizon protocol uses exactly one bit from each of
  \(n=N_{\mathrm{loc}}+N_{\mathrm{ref}}\) independent samples, precommits every randomized
  measurable query before any message is observed, and satisfies

  \[
  n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta),
  \qquad
  \sup_{D\in\mathcal D(k,\lambda,\sigma)}
  \Pr_{D,\,\mathrm{protocol}}
     \left\{|\widehat\mu-\mu(D)|>\epsilon\right\}\leq\delta.
  \]

  This is an unconditional high-probability PAC bound in the absolute-value norm on
  \(\mathbb R\). Probability is over all samples and all protocol randomness. The hidden and
  displayed theorem constants may depend on \(k\) only, and not on
  \(\lambda,\sigma,\epsilon,\delta,D\); no asymptotic, stopping-time, or conditional-on-localization
  interpretation is permitted.

# Note

- Rigor: Source alignment is exact: the goal retains arbitrary measurable fully non-adaptive
  one-bit queries, the unrestricted \(\mathcal D(k,\lambda,\sigma)\) class, all source quantifiers,
  all three \(k\)-regimes, and the displayed \(r_k\), with constants depending only on \(k\).
  Progress type: `full`. Materiality: proving the listed obligations would construct the missing
  zero-transition protocol and close Gap 1 over its complete source-locked scope. Parent lineage:
  arXiv:2604.07796 supplies the coding localization, three-regime accounting, and confidence
  amplification; arXiv:2601.07074 supplies bounded uniform dithering; the transfer replaces the
  former's location-chosen second stage by the precommitted decoder-selected shifted-digit bank.
  Assumption support: `assump:parameter-domain` and `assump:moment-class` are exactly the official
  open-problem/D2 regime; `assump:iid-independent-randomness` is the official independent-sample,
  randomized non-adaptive protocol model. No novel theorem-critical assumption was added. The
  novel shifted-digit compiler retains the recorded verification examples: an unshifted-boundary
  center has a four-shift cell with \(3h_j/8\) margin; at \(x=c\) all centered digits and the top
  residual vanish; for \(x=c\pm h_j/8\), levels of width at least \(h_j\) are pathwise inactive
  while finer levels telescope to the signed displacement up to \(h_0\); and for the asymmetric
  rare-tail law with masses \(p\) at \(R\) and \(1-p\) at \(-pR/(1-p)\), under
  \(pR^k\lesssim\sigma^k\), only scales \(h_j\lesssim R\) activate, the geometric
  \(h_j^k\)-sum controls the weighted second moment, and the omitted tail is
  \(O(\sigma^k/H^{k-1})\).
