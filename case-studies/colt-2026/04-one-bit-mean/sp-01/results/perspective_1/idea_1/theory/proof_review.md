# Proof Review

## Formalized Setting

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

## Formalized Goal

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

## Reviewed Roadmap

The accepted roadmap uses fourteen dependency-ordered steps. It first instantiates the
published fully non-adaptive coding-localization block and derives an actual decoder
center with a localized k-moment. It then fixes the dyadic level law, constructs
decoder-selected stable shifts over a precommitted dithered query bank, proves the
exact digit telescope and its fine/top residual decomposition, and derives pathwise
fine and coarse activation ledgers. The remaining steps convert those ledgers into
the three conditional-variance regimes, control both residual biases, prove
conditional median-of-means concentration, convert localization and refinement
success to one unconditional PAC event, and absorb all ceilings and localization
costs into the exact three-regime rate.

The accepted dependency chain is step_001 through step_014 as recorded by sketch
attempt 1. All fourteen current step reviews are ACCEPTED; step_013 correctly uses
unit attempt 2 and every other step uses unit attempt 1. The final assembly maps all
56 accepted local units and all 14 target-step assemblies into named public
theorem-style results and completion proofs.

## Attempted Claim

For every fixed \(k>1\), there exist constants \(c_k,C_k>0\) and protocol
design choices depending only on \(k\) and the known tuple
\((\lambda,\sigma,\epsilon,\delta)\) such that, for every
\(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and
\(\delta\in(0,1/2)\), the resulting fully noninteractive deterministic
fixed-horizon protocol uses exactly one bit from each of
\(n=N_{\rm loc}+N_{\rm ref}\) independent samples, precommits every
randomized measurable query before any response is observed, and satisfies

\[
n\leq C_k r_k(\lambda,\sigma,\epsilon,\delta),
\qquad
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr_{D,\,\mathrm{protocol}}
\{\lvert\widehat\mu-\mu(D)\rvert>\epsilon\}\leq\delta.
\]

The guarantee is unconditional over all samples and protocol randomness, is
in absolute error on \(\mathbb R\), and has no asymptotic, stopping-time, or
conditional-on-localization interpretation. The displayed and hidden theorem
constants depend only on fixed \(k\), not on
\(\lambda,\sigma,\epsilon,\delta\), or \(D\).

## Review Mode

split

## Review Verdict

- Score: 10
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: The attempted theorem preserves the authoritative full-progress
  target exactly: the unrestricted central k-moment class, arbitrary measurable
  precommitted one-bit queries, deterministic fixed horizon, all three k regimes,
  unconditional PAC probability, absolute-error norm, exact rate, and constants
  depending only on fixed k. No source quantifier, regime, dependence, or success
  criterion is weakened.
- Roadmap or step coverage: All 14 required sketch steps have current ACCEPTED
  reviews matched to the current proof artifacts. The 56 accepted local units and
  all 14 target-step assemblies are present in the public appendix, with the
  repaired step_013 attempt-2 identity used consistently.
- Proof-details audit: PASS. Exhaustive comparison of every used source proof with
  its appendix subsection found a one-to-one substantive map for all 56 local
  units and all 14 completion arguments, with all 94 source equation tags
  preserved at identical multiplicity. Definitions, displayed identities,
  inequality chains, constants, cited-result mappings, assumption discharges,
  regime calculations, boundary cases, and target-step conclusions are retained.
- Adversarial stress test: PASS. Point-mass, rare-tail, grid-boundary,
  zero-displacement, empty-group, zero-variance, J=1, k=2, both open k regimes,
  lambda=sigma, epsilon=e^{-1}sigma, and confidence-endpoint attacks found no
  counterexample or unresolved theorem-level or step-level defect.
- LaTeX export structure/provenance gate: The support bundle and required five-file
  structure pass; assumptions retain their three stable ids; the appendix has all
  fourteen named step subsections and ends with Proof of the Main Theorem. The
  appendix contains 56 allowed theorem-style environments and 72 proof
  environments, including the 14 step-completion proofs and two final theorem
  proofs. No forbidden claim, hypothesis, or invariant environments, workflow
  provenance, audit scaffolding, template placeholders, malformed commands, or
  mechanical translation debris were found.
- Main theorem self-containedness: PASS. The technical theorem and reader-facing
  rate corollary use setup/preliminary notation and numbered assumptions only, with
  no appendix-local, proof-step, or local-unit reference in either public statement.
- Assumption provenance gate: The unconditional theorem does not promote
  localization, recentering, stable shifts, activity, variance, bias, concentration,
  or confidence assembly to assumptions; each has a named prior producer. The
  attempt-2 repair makes Proposition prop:step-008-target-interface explicitly name
  assump:moment-class, lem:step-001-first-moment,
  prop:step-008-conditional-mean, prop:step-006-residual-interface, and
  lem:step-006-zero-displacement, exactly matching its accepted proof inputs.
- Redundant public prose gate: PASS. No copied sketch-row fields, standalone source
  audits, dependency inventories, workflow markers, or forbidden hygiene phrases
  remain in public TeX.
- Proof-step notation surface gate: PASS. Public notation is setting-derived and
  reusable; appendix helpers retain displayed definitions and provenance, and no
  proof-local dictionary leaks into the reader-facing rate claim.
- Theorem readability and notation economy: PASS. The technical theorem defines its
  finite k-only constants and allocation before use, and the concise corollary gives
  the full reader-facing rate, protocol, horizon, probability, norm, and hidden
  dependence.
- Explicit-rate contract: PASS. All exposed structural, accuracy, confidence,
  horizon, and regime dependencies are declared; hidden constants depend only on
  fixed k. Every ceiling and absorbed term is covered by a displayed inequality.
- Rate Specialization Bridge: PASS. Proposition prop:step-014-rate-bridge verifies
  the auxiliary choices, three variance regimes, technical conditions, ceiling and
  confidence-log absorptions, localization-cost absorption, unconditional
  probability conversion, and final k-only constant dependence.
- Baseline-reduction check: PASS. The exact zero-query branch, zero-displacement
  digit/telescope/residual/dither identities, empty-group semantics, and point-mass
  fixed-point specialization remain exact rather than being replaced by bounded
  remainders.
- LaTeX appendix full-derivation gate: PASS after exhaustive, not representative,
  comparison of all used steps. Every accepted local derivation, cited-result
  discharge, boundary calculation, and target-step assembly is substantively
  preserved; no source unit is unaccounted for and no severe compression remains.
- LaTeX export citation/reference gate: Static parsing found 81 unique labels, 480
  resolved internal reference uses, and three external citation uses of the single
  BibTeX-backed source, with no duplicate label, unresolved target, missing citation
  key, malformed command, or external citation used for an internal result.
- LaTeX export synchronization: All controller-frozen core, specialized-review,
  assembly-report, step-proof, and step-review hashes match the reviewed artifacts.
  The current appendix hash is
  9c51b46cbd55d1c367b9c191972fe8000d47bba870efeb57f4ea32c2fadc1e4d,
  and its diff from the archived consumed assembly is exactly the intended single
  premise-clause repair. An independent isolated Tectonic 0.16.9 build from the live
  canonical sources completed a 60-page, 362199-byte PDF. The final-pass log has no
  TeX or package error, unresolved reference or citation, multiply defined label,
  rerun request, overfull box, or underfull box; its only warnings are two harmless
  Wasy font-shape substitutions.
- Workflow provenance and budgets: PASS. The two required run-scoped handles are
  present and distinct. Perspective 1 has exactly the required 12+2(14)=40 current
  roles, all with distinct nonempty handles and valid stage/step-note tokens. The
  branch used 1/30 ideas, sketch attempt 1/10, global attempt 1/100, maximum step
  attempt 2/100, and assembly attempt 2/100.
- Specialized-review resolution: Structural, rigor, citation, and adversarial all
  provide contract-valid raw-token PASS verdicts with Blocking Issues, Suggested
  Repair Depth, and Smallest Candidate Repair Target each equal to None. There is no
  reviewer disagreement. The aggregate independently verified rather than inferred
  the appendix coverage, repaired statement provenance, rate, baseline, citation,
  synchronization, and compile gates.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, every aggregate contract gate passes, the
attempt-2 assembly repair closes the sole prior statement-provenance defect without
changing accepted mathematics, and the full formalized goal is proved in a
paper-ready bundle. No assembly, step, sketch, or idea blocker remains, so the
failure type is ACCEPTED.

## Suggested Next Action

None

## Retry Mode

none
