# Proof Sketch

## Formalized Setting

The exact setting is `perspective_3/idea_3/setting.md`. The target tensor,
algorithm, rank window, and coefficient convention are unchanged:

\[
T=(A\otimes B\otimes C)D_r,
\qquad D_r=\sum_{j=1}^r e_j\otimes e_j\otimes e_j,
\qquad r<k\le\lfloor r^{5/4}\rfloor,
\]

and the only optimization procedure is simultaneous full-batch GD followed by
the product-preserving balancing map, with
\(\eta=(nkr)^{-12}\). The primitive setting conditions are exactly
`assump:base_conditioning`, `assump:dimension`, `assump:rank_window`,
`assump:gaussian_smoothing`, `assump:independent_initialization`, and
`assump:gd_step`.

The events \(\mathcal E_{\rm cond}\),
\(\mathcal E_{\rm gram}^{\rm norm}\),
\(\mathcal E_{\rm deficit}\), and \(\mathcal E_{\rm size}\) remain derived
initialization events. The event

\[
\mathcal C_{\rm path}
=\left\{\sum_{t\ge0}d_{\rm bal}(\theta_{t+1},\theta_t)\le E_\star\right\}
\]

remains the sole explicitly conditional trajectory hypothesis. It contains no
convergence, trapping, positivity, Gram, boundedness, or positive-loss
conclusion.

Normalized coefficient directions are used only to generate the normalized
Gram and random tangent-frame certificates. The tangent span is exactly
\(\mathscr S_0^{\rm raw}=\mathscr S_0^{\rm norm}\), while \(D_r\),
\(\widehat D_0\), \(W_0\), the coefficient residual, and the physical loss
remain in the raw convention. This sketch does not change that quotient,
normalization, or same-target interface.

## Formalized Goal

For fixed \(\kappa\ge1\) and fixed \(q\ge4\), prove that there are
\(r_0(\kappa,q)\), \(C(\kappa,q)\), and
\(\epsilon_0(\kappa)>0\) such that, uniformly over every allowed
\(r,n,k\) and deterministic base triple,

\[
\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}.
\]

On \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\), prove that
the balanced factor iterates converge in \(d_{\rm bal}\) to a finite
\(\theta_\infty\) and

\[
\lim_{t\to\infty}F(\theta_t)=F(\theta_\infty)
\ge\epsilon_0(\kappa)\|T\|_F^2>0.
\]

Finally prove

\[
\mathbb P(\mathcal F_+)
\ge(1-r^{-10})
\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm}).
\]

No positive lower bound on the remaining conditional probability is claimed.

## Sketch Identity

- Sketch attempt: 2
- Retry mode: `revise_sketch`
- Trigger: attempt-10 review of `step_003` returned `REVISE_SKETCH`, and the
  user explicitly requested decomposition after too much proof work had been
  concentrated in that step.
- Goal mode: exact-goal mode
- Progress type: `conditional`
- Sketch status: `COMPLETE`
- Theorem-contract change: none
- Claimed rank threshold: \(L(r)=r^{5/4}\), hence \(c=1/4\), for the exact
  balanced full-batch GD method in `setting.md`.

## Proof Roadmap

The prior nine-step roadmap is repaired only at its random Terracini-frame
interface. The current attempt-10 proof and review establish that the old
`step_003` contained several already localized algebraic reductions and two
independent unresolved combinatorial obligations. The new roadmap therefore
uses four sequential producers before returning to the unchanged
initialization, path, Taylor, and physical-loss arguments.

1. Prove realized-factor conditioning exactly as before.
2. Prove the balanced Gaussian representation, normalized pair-Gram event,
   initial-size event, and exact raw/normalized scale bridge exactly as before.
3. Repackage the established gauge quotient, exact Terracini blocks, (TC),
   fixed-input and full-covariance diagnostics, elliptic-radial Gaussian
   conjugation, colored cyclic trace formula, covariance-loop bound,
   \(F+2v\le4p+3\), quadratic moment, and visit-local/all-distinct sector as
   one reduction step. This step does not claim (TF).
4. Prove a dedicated topology lemma for every connected four-colored diagram.
   After contracting color-0 trace edges, let \(K\) be the resulting connected
   loopless Eulerian multigraph with \(E=2p\) edges and \(B\) vertices. The
   distinguished trace transition system is one Euler circuit. At a visit of
   tangent color \(M\), the physical-mode circuit partition \(H_M\) agrees
   with that distinguished transition; write \(F_M\) for its circuit count and
   \(F=F_a+F_b+F_c\). The exact output is
   \[
   B-2\le\sum_{M\in\{a,b,c\}}(E/2-F_M),
   \qquad\text{equivalently}\qquad F+B\le3p+2.
   \tag{TOP}
   \]
   The direct proof route splits high-degree vertices into ordered Euler-tour
   visits, applies a circuit-nullity/interlace-rank identity to the three
   transition systems, and proves the resulting joint rank inequality. The
   equivalent jacket route must prove
   \(\sum_M\Delta_M\ge\beta-E/2+1\) from Euler characteristics with all
   identifications tracked. A finite counterexample search is a falsification
   check, not proof authority. A valid counterexample makes this producer
   `PARTIAL_BLOCKED`, prevents any accepted (TOP) export, and routes to
   `/proof-sketch` before enumeration begins.
5. Conditional only on the accepted outputs of Step 3 and the accepted exact
   (TOP) output of Step 4, prove the
   excess-sensitive cross-visit enumeration. Relative to the visit-local
   reference pairing, encode component identifications by rooted partition
   forests and encode each nonlocal Wick pairing by a minimal sequence of
   two-pair switches. The accepted exact (TOP) output supplies the face loss;
   the encoding
   must charge every nonlocal multiplicity to either a
   \(\sqrt{p/r}\) slot or a \(p/r\) slot. More precisely, for
   \(p=p_0=\lceil31\log r\rceil\), produce a disjoint profile decomposition
   \(\mathcal T_{p;a,b,c}\), \(a+b+c=2p\), satisfying
   \[
   \mathcal T_{p;a,b,c}
   \le 3kr\binom{2p}{a,b,c}
   \left(C_0(\kappa)\frac{\sqrt k}{r}\right)^a
   \left(C_1(\kappa)\sqrt{\frac p r}\right)^b
   \left(C_2(\kappa)\frac p r\right)^c.
   \tag{ENUM}
   \]
   The profile \((a,b,c)=(2p,0,0)\) is exactly the already proved
   visit-local sector. Every cross-visit diagram must have \(b+c\ge1\).
   Hence powers of \(p\) accompany only the last two terms and never multiply
   the leading \(\sqrt{k}/r\) term. Summing (ENUM) must prove
   \[
   \mathbb E[\operatorname{tr}|\widetilde E_G|^{2p_0}\mid A,B,C]
   \le3kr\left[C_G(\kappa)\left(
   \frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}
   \right)\right]^{2p_0}.
   \tag{21z}
   \]
6. Keep the probabilistic and deterministic TF assembly separate. Apply
   Markov to (21z), intersect with the already produced elliptic-radial event,
   use the exact factor-16 conjugation, combine with (TC), and only then export
   (TF), quotient coercivity, \(W_0\), and the raw deficit event. The safe
   specialization is
   \[
   C_{\rm TF}(\kappa)=32e\sqrt{32/30}\,C_G(\kappa),
   \]
   with no logarithmic multiplier on \(\sqrt{k}/r\).
7. Assemble \(\mathbb P(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).
8. Use the finite balanced path budget to obtain the actual factor limit,
   endpoint displacement, and radius 3 exactly as in the prior roadmap.
9. Prove the same one-shot raw CP Taylor remainder with no hidden \(k\)-loss.
10. Pair the endpoint Taylor formula with the raw \(W_0\) and preserve the
    coefficient deficit.
11. Use the exact mode-span identity and factor singular values to obtain the
    same relative physical loss floor.
12. Assemble the unchanged event implication and retain the unresolved path
    certificate probability exactly.

No technical survey is needed for this repair. The selected route is the
model-specific colored-trace route already isolated by the current proof
artifact; generic chaos bounds audited in prior work do not supply (21z).

## Rate Objectives

- Initial conditioning and normalized certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: \(n,r,k,\kappa,q\), \(\rho=r^{-q}\),
    \(r<k\le r^{5/4}\), normalized Gram window
    \([r^{-20},r^{20}]\), \(\delta_0=1/8\), and failure \(r^{-10}\).
  - Hidden constants may depend on: \(\kappa,q\).
  - Hidden constants may not depend on: \(n,r,k\), the deterministic base
    triple, or a fixed realized triple in \(\mathcal E_{\rm cond}\).
  - Fixed quantities: \(\kappa,q\) as \(r\to\infty\).
  - Probability mode: joint high probability, with initialization bounds
    uniform conditional on every fixed realized conditioned triple.
  - Horizon mode: initialization only.
  - Norm mode: factor operator/singular-value norms, normalized Gram operator
    norm, quotient Terracini operator norm, and coefficient Frobenius norm.
  - Required bridge or simplification obligations: exact
    \(G_{\rm raw}=(r/n)^2G_{\rm norm}\), exact tangent-span equality, and
    explicit constituent failure accounting.
  - Baseline invariance obligations: normalization changes only Gram scale;
    raw \(D_r\), \(\widehat D_0\), \(W_0\), residuals, and physical loss are
    unchanged.

- Gaussian Terracini trace moment and TF certificate:
  - Objective type: structural-parameter explicit and confidence-explicit.
  - Exposed variables: \(r,k,p_0=\lceil31\log r\rceil\), \(\kappa\), the
    rates \(\sqrt{k}/r\), \(\sqrt{p_0/r}\), and \(p_0/r\), and conditional
    failures \(r^{-40},r^{-30},r^{-25},r^{-20}\).
  - Hidden constants may depend on: \(\kappa\) only.
  - Hidden constants may not depend on: \(n,r,k,p_0\), the base triple, or the
    fixed realized conditioned factors.
  - Fixed quantities: \(\kappa,q\) and the realized factors while taking the
    conditional initialization moment/probability.
  - Probability mode: (21z) is a conditional moment bound; Markov gives the
    Gaussian tail, the radial event is intersected without independence, and
    the final deficit failure is at most \(r^{-20}\).
  - Horizon mode: initialization only.
  - Norm mode: full Gaussian Terracini Gram operator norm before quotient,
    quotient operator norm after contractive projection, and raw coefficient
    Frobenius deficit.
  - Required bridge or simplification obligations: prove (TOP); prove (ENUM);
    use
    \(p_0\le32\log r\), \(p_0/r\le\sqrt{p_0/r}\), and
    \[
    \frac{\sqrt k}{r}+\sqrt{\frac{p_0}{r}}+\frac{p_0}{r}
    \le2\sqrt{32/30}\left(
    \frac{\sqrt k}{r}+\sqrt{\frac{30\log r}{r}}
    \right);
    \]
    retain the leading \(\sqrt{k}/r\) term without a factor depending on
    \(p_0\) or \(\log r\).
  - Baseline invariance obligations: the Gaussian/radial reduction is only a
    proof device; final (TF), \(W_0\), and the deficit remain for the exact
    normalized-direction tangent span and raw target.

- Conditional positive-limit theorem:
  - Objective type: horizon-uniform boundedness, asymptotic convergence, and
    relative-loss explicit.
  - Exposed variables: \(\kappa\), \(\delta_0=1/8\),
    \(C_{\rm CP}(\kappa,3)=\kappa_1^3(1+9)\), and
    \(E_\star=\min\{1,\sqrt{\delta_0/(16C_{\rm CP}(\kappa,3))}\}\).
  - Hidden constants may depend on: \(\kappa\) only.
  - Hidden constants may not depend on: \(n,r,k,q\), the base triple,
    initialization, horizon, or realized path.
  - Fixed quantities: the exact balanced-GD protocol and fixed \(\kappa,q\).
  - Probability mode: deterministic on
    \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\).
  - Horizon mode: all-time finite-budget control followed by an asymptotic
    limit.
  - Norm mode: \(d_{\rm bal}\), coefficient Frobenius norm, and physical
    Frobenius loss.
  - Required bridge or simplification obligations: no hidden \(k\)-factor in
    Taylor, one-shot remainder absorption, exact mode-span identity, and the
    explicit relative-loss comparison.
  - Baseline invariance obligations: at zero path length,
    \(\theta_\infty=\theta_0\), the Taylor remainder is zero, and the full raw
    deficit and physical lower bound remain.

- Final probability interface:
  - Objective type: confidence-explicit conditional event accounting.
  - Exposed variables: \(r^{-10}\) and
    \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
  - Hidden constants may depend on: none.
  - Hidden constants may not depend on: any parameter.
  - Fixed quantities: the deterministic base triple under the joint law.
  - Probability mode: exact conditional probability.
  - Horizon mode: all-time event.
  - Norm mode: not applicable.
  - Required bridge or simplification obligations: retain the conditional
    factor exactly.
  - Baseline invariance obligations: exact event identity.

## Assumption Provenance Objectives

- `step_001` derives \(\mathcal E_{\rm cond}\) from
  `assump:base_conditioning`, `assump:dimension`, and
  `assump:gaussian_smoothing`.
- `step_002` derives the balanced Gaussian representation,
  \(\mathcal E_{\rm gram}^{\rm norm}\), the raw scale identity, and
  \(\mathcal E_{\rm size}\) from `assump:independent_initialization` and
  `step_001`.
- `step_003` derives the quotient algebra, (TC), radial event, Gaussian trace
  representation, topology inputs, and visit-local moment sector from the
  primitive initialization/rank assumptions and `step_001`--`step_002`.
- `step_004` is deterministic conditional on the exact colored diagram
  exported by `step_003`; it may not assume (TOP).
- `step_005` is deterministic/probabilistic moment enumeration conditional on
  the accepted exact (TOP) output. It may not assume (21z), (TF), or a generated
  deficit event.
- `step_006` derives (TF), quotient coercivity, \(W_0\), and
  \(\mathcal E_{\rm deficit}\) from `step_003` and `step_005`; none becomes a
  primitive condition.
- `step_007` assembles \(\mathcal E_{\rm init\_norm}\) only after all four
  constituents have legal producers.
- \(\mathcal C_{\rm path}\) remains an explicitly conditional theorem
  hypothesis. Its probability is not derived.
- `step_008` derives convergence, endpoint displacement, and radius 3;
  `step_009` derives the Taylor interface; `step_010`--`step_012` derive the
  coefficient margin, physical loss, and final probability conclusion.

## Mechanism-Source And Boundary Stress

- Step ID: `step_001`
  - Claim class: structural conditioning.
  - Theorem role: legalizes coefficient coordinates and physical transfer.
  - Mechanism source: primitive base singular margin plus direct Gaussian
    operator-norm perturbation in the exact Euclidean convention.
  - Source-to-claim adequacy: Weyl transfers
    \(\sigma_{\min}(\bar M)\ge\kappa^{-2}\) to
    \(\sigma_{\min}(M)\ge\kappa_1^{-1}\) when the perturbation is at most
    half the margin.
  - Residual-to-target adequacy: the perturbation is exactly the additive
    residual in the realized matrix consumed downstream.
  - Key positive/control term or structural source: \(\kappa^{-2}\).
  - Opposing defect terms: Gaussian operator norm.
  - Closure/dominance/absorption relation:
    \(\|\Xi_M\|_{\rm op}\le(2\kappa^2)^{-1}\).
  - Accumulation behavior / scope compatibility: initialization only.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: primitive margin produces the event before all
    consumers.
  - Entry-state / first-update stress result: active before initialization is
    consumed by GD.
  - Baseline conclusion preserved: zero smoothing recovers the base triple.
  - Producer-consumer provenance: `step_001` to `step_002`, `step_003`,
    `step_009`, and `step_011`.
  - Null or boundary regime tested: zero smoothing and lower singular boundary.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes.
  - Repair route if source is unsupported: `idea/theorem-contract defect`.

- Step ID: `step_002`
  - Claim class: normalized Gram nondegeneracy and initial-size control.
  - Theorem role: scale-correct initialization and later Taylor radius.
  - Mechanism source: exact balanced radius-direction decomposition,
    conditioned elliptic covariance, and direct Gram/chi concentration.
  - Source-to-claim adequacy: normalized covariance is constant-scale and
    \(k/r^2\le r^{-3/4}\), which supports the polynomial Gram window.
  - Residual-to-target adequacy:
    \(G_{\rm raw}=(r/n)^2G_{\rm norm}\) exactly and the tangent span is
    unchanged; no normalized target is consumed.
  - Key positive/control term or structural source: conditioned covariance
    eigenvalue margin.
  - Opposing defect terms: radial tails and off-diagonal Gram fluctuation.
  - Closure/dominance/absorption relation: fluctuation is at most half the
    population margin for large \(r\); the \(3k\)-column union remains within
    the stated failure budget.
  - Accumulation behavior / scope compatibility: finite initialization union.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: `step_001` and primitive initialization precede
    the exports.
  - Entry-state / first-update stress result: actual balanced \(\theta_0\).
  - Baseline conclusion preserved: arbitrary large \(n\) changes only the
    exact raw scale.
  - Producer-consumer provenance: `step_002` to `step_003`, `step_007`, and
    `step_008`.
  - Null or boundary regime tested: minimal allowed \(n\), maximal \(k\), and
    arbitrarily large \(n\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes for the stated initialization certificate.
  - Repair route if source is unsupported: `/proof-sketch`.

- Step ID: `step_003`
  - Claim class: exact algebraic/probabilistic reduction and accepted
    visit-local moment output.
  - Theorem role: supplies every non-topological input to (21z), together with
    the independently proved (TC) source.
  - Mechanism source: direct gauge quotient, exact Terracini block algebra,
    scalar Bernstein, elliptic Gaussian radial representation, Wick-Isserlis
    contraction, and the visit-local reference pairing, all in current
    notation and exact coefficient Euclidean convention.
  - Source-to-claim adequacy: the quotient diagonal spectrum is \([1,3]\);
    (TC) controls the exact raw \(J^*D_r\); radial conjugation gives
    \(\widetilde E=D\widetilde E_GD\) with \(\|D\|\le4\); Wick loops give
    weight \(\kappa_1^{16p}r^{F-4p}\); the visit-local sector has the exact
    \(\sqrt{k}/r\) leading scale.
  - Residual-to-target adequacy: all reductions return to the same quotient
    operator and raw tangent span; no Gaussian surrogate is exported directly
    to the theorem.
  - Key positive/control term or structural source: quotient diagonal margin
    one, trace-one covariance with
    \(\|\Omega_M\|\le\kappa_1^4/r\), and the exact visit-local pairing.
  - Opposing defect terms: off-component Gaussian chaos and cross-visit Wick
    diagrams; these are exported, not hidden.
  - Closure/dominance/absorption relation: (TC) has failure \(r^{-25}\), the
    radial event failure is \(r^{-30}\), and visit-local diagrams satisfy
    \(kr[C\sqrt{k}/r]^{2p}\).
  - Accumulation behavior / scope compatibility: fixed moment order and finite
    diagram sums.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: all outputs are produced before topology,
    enumeration, or deficit assembly consumes them.
  - Entry-state / first-update stress result: initialization only.
  - Baseline conclusion preserved: quotient and normalization preserve the raw
    tangent range and target correlation.
  - Producer-consumer provenance: `step_003` to `step_004`, `step_005`, and
    `step_006`.
  - Null or boundary regime tested: isotropic covariance, maximal rank, cap
    events excluding false all-confidence wrappers, and \(p=1\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; no (21z) or deficit route remains.
  - Repair route if source is unsupported: smallest local unit producer.

- Step ID: `step_004`
  - Claim class: exact combinatorial topology lower bound.
  - Theorem role: fixes the power of \(r\) available to every cross-visit
    diagram before multiplicity is counted.
  - Mechanism source: the exact four-colored contraction exported by
    `step_003`; split-visit Eulerian transition systems; a direct
    circuit-nullity/interlace-rank identity or an equivalent direct jacket
    Euler-characteristic derivation. No external theorem is consumed without
    restatement and convention checking.
  - Source-to-claim adequacy: after visit splitting, the proof must identify
    each \(F_M\) with the circuit count of the corresponding transition
    system and derive (TOP) for every valid diagram. The source and target are
    the same diagram and the same loop count.
  - Residual-to-target adequacy: N/A; no surrogate object or metric transfer.
  - Key positive/control term or structural source: joint rank/Euler deficit
    forced by three transition systems sharing one colored Euler tour.
  - Opposing defect terms: high-degree component identifications and
    interlaced cross-visit switches.
  - Closure/dominance/absorption relation: the exact inequality
    \(F+B\le3p+2\) supplies the face budget consumed by `step_005`.
  - Accumulation behavior / scope compatibility: deterministic per-diagram;
    connected components are handled additively before aggregation.
  - Obligation locality classification: `step-local` under the new split
    interface; a counterexample is a falsification result, not an accepted
    alternative output.
  - Noncircular closure status: topology depends only on `step_003` diagram
    data and is proved before enumeration.
  - Entry-state / first-update stress result: N/A.
  - Baseline conclusion preserved: no theorem object is changed.
  - Producer-consumer provenance: `step_004` to `step_005` only.
  - Null or boundary regime tested: \(p=1\), one tangent color, all three
    tangent colors, degree-two graphs, repeated vertices, and minimal
    cross-visit diagrams.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; a valid counterexample invalidates this trace route.
  - Repair route if source is unsupported: `/proof-sketch` with the concrete
    counterexample; do not run `step_005`.

- Step ID: `step_005`
  - Claim class: excess-sensitive multiplicity and trace-moment upper bound.
  - Theorem role: proves the sole missing random-frame estimate (21z).
  - Mechanism source: `step_003` exact weights and visit-local base sector,
    the accepted exact (TOP) face budget from `step_004`, rooted
    component-partition forests, minimal
    two-pair-switch encodings, and a multinomial generating-function sum.
  - Source-to-claim adequacy: (ENUM) assigns the unpenalized leading slots only
    to visit-local structure; every cross-visit feature consumes a
    \(\sqrt{p/r}\) or \(p/r\) slot, so counting cannot create a logarithmic
    multiplier on \(\sqrt{k}/r\).
  - Residual-to-target adequacy: the aggregate is exactly the complete moment
    in (31); the visit-local and cross-visit sectors are disjoint and exhaustive.
  - Key positive/control term or structural source: covariance-loop powers of
    \(r^{-1}\) plus the face loss from `step_004`.
  - Opposing defect terms: component-label multiplicity, pairing multiplicity,
    and high-degree cross-visit reconnections.
  - Closure/dominance/absorption relation: profile inequality (ENUM), followed
    by the multinomial theorem, gives (21z) at
    \(p_0=\lceil31\log r\rceil\).
  - Accumulation behavior / scope compatibility: finite fixed-order sum; all
    combinatorial multiplicity is charged inside the profile before summing.
  - Obligation locality classification: `step-local` conditional on the
    accepted exact (TOP) output of `step_004`.
  - Noncircular closure status: no use of (TF), deficit, or final theorem
    consequences in the count.
  - Entry-state / first-update stress result: N/A.
  - Baseline conclusion preserved: leading visit-local sector remains exactly
    \(kr[C\sqrt{k}/r]^{2p}\).
  - Producer-consumer provenance: `step_003 + step_004 -> step_005 -> step_006`.
  - Null or boundary regime tested: all-distinct words, one repeated component,
    maximal collision, first cross-visit switch, and \(k=r^{5/4}\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes; a profile with p-dependent leading slots blocks (21z).
  - Repair route if source is unsupported: `/proof-sketch`; do not weaken the
    theorem-facing TF rate inside local proof.

- Step ID: `step_006`
  - Claim class: confidence conversion, quotient coercivity, and raw tangent
    deficit.
  - Theorem role: exports \(W_0\) and \(\mathcal E_{\rm deficit}\).
  - Mechanism source: (21z), Markov, the `step_003` radial conjugation and (TC),
    the quotient diagonal lower bound, and the exact projection formula.
  - Source-to-claim adequacy: Markov at factor \(e\) gives
    \(3kr e^{-2p_0}\le r^{-40}\); radial conjugation costs factor 16 and
    failure \(r^{-30}\); the corrected constant gives the exact (TF) scale.
  - Residual-to-target adequacy:
    \(P_{\mathscr S_0^\perp}(D_r-\widehat D_0)
    =P_{\mathscr S_0^\perp}D_r\) exactly.
  - Key positive/control term or structural source: quotient diagonal margin
    one and raw ambient norm \(\|D_r\|_F^2=r\).
  - Opposing defect terms: off-component TF norm and target-correlation energy.
  - Closure/dominance/absorption relation: TF is at most \(1/2\), hence
    \((J^*J)^{-1}\preceq2I\), and
    \(2C_{\rm TC}(k/r+\log r)\le r/2\). The Gaussian, radial, and TC failures
    total at most \(r^{-20}\).
  - Accumulation behavior / scope compatibility: finite event intersection.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: `step_003` and `step_005` produce all inputs
    before \(W_0\) is defined.
  - Entry-state / first-update stress result: \(W_0\) is produced from the
    actual initialization before GD.
  - Baseline conclusion preserved: raw \(D_r\), \(\widehat D_0\), quotient,
    and deficit are unchanged.
  - Producer-consumer provenance: `step_006` to `step_007` and `step_010`.
  - Null or boundary regime tested: maximal rank and equality at the quotient
    threshold.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes.
  - Repair route if source is unsupported: smallest failed dependency,
    ordinarily `step_004` or `step_005`.

- Step ID: `step_007`
  - Claim class: confidence-explicit initialization-event closure.
  - Theorem role: proves the unconditional initialization part.
  - Mechanism source: legal outputs of `step_001`, `step_002`, and `step_006`.
  - Source-to-claim adequacy: tower property and a finite union give the exact
    event in `setting.md` with total failure at most \(r^{-10}\).
  - Residual-to-target adequacy: exact event intersection, no surrogate.
  - Key positive/control term or structural source: constituent event budgets.
  - Opposing defect terms: finite failure probabilities.
  - Closure/dominance/absorption relation: explicit large-\(r\) union-bound
    inequality.
  - Accumulation behavior / scope compatibility: finite union.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: all constituents are produced earlier.
  - Entry-state / first-update stress result: initialization only.
  - Baseline conclusion preserved: exact normalized initialization event.
  - Producer-consumer provenance: `step_007` to `step_008` and `step_012`.
  - Null or boundary regime tested: minimal \(n\), maximal \(k\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: the stated confidence conclusion fails.
  - Repair route if source is unsupported: smallest failed constituent.

- Step ID: `step_008`
  - Claim class: all-time boundedness and asymptotic convergence under an
    explicit conditional budget.
  - Theorem role: produces \(\theta_\infty\), displacement at most one, and
    radius 3.
  - Mechanism source: \(\mathcal E_{\rm size}\) and the explicitly conditional
    nonnegative path-length series.
  - Source-to-claim adequacy: path tails bound Cauchy tails and each column norm
    is bounded by its initial norm plus the same finite series.
  - Residual-to-target adequacy: actual balanced iterates and the same
    \(d_{\rm bal}\) metric.
  - Key positive/control term or structural source: finite total variation.
  - Opposing defect terms: all step increments, each charged once by norm.
  - Closure/dominance/absorption relation:
    \(d(\theta_u,\theta_t)\le\sum_{s=t}^{u-1}d(\theta_{s+1},\theta_s)\to0\)
    and \(2+E_\star\le3\).
  - Accumulation behavior / scope compatibility: finite-budgeted with an exact
    tail-sum relation.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: path length contains neither convergence nor
    boundedness.
  - Entry-state / first-update stress result: a zero first update has zero
    charge and immediate convergence.
  - Baseline conclusion preserved: zero path gives \(\theta_\infty=\theta_0\).
  - Producer-consumer provenance: `step_008` to `step_009`, `step_010`,
    `step_011`, and `step_012`.
  - Null or boundary regime tested: zero path and maximal path budget.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes for this conditional branch.
  - Repair route if source is unsupported: theorem-contract defect.

- Step ID: `step_009`
  - Claim class: exact second-order raw Taylor interface.
  - Theorem role: bounds all nonlinear endpoint motion outside the initial
    tangent space.
  - Mechanism source: direct trilinear expansion and `step_001` left-inverse
    bounds on the radius/displacement output of `step_008`.
  - Source-to-claim adequacy: three quadratic terms and one cubic term give
    \(C_{\rm CP}(\kappa,R)d^2\) without summing a factor over components.
  - Residual-to-target adequacy: exact raw \(\Psi_{A,B,C}\) in coefficient
    Frobenius norm.
  - Key positive/control term or structural source: trilinearity.
  - Opposing defect terms: quadratic and cubic cross terms.
  - Closure/dominance/absorption relation: \(d\le1\) gives \(d^3\le d^2\).
  - Accumulation behavior / scope compatibility: one endpoint expansion.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: radius and conditioning precede the export.
  - Entry-state / first-update stress result: zero displacement gives zero
    remainder.
  - Baseline conclusion preserved: exact first-order specialization.
  - Producer-consumer provenance: `step_009` to `step_010`.
  - Null or boundary regime tested: \(d=0\), \(d=1\), and zero columns.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes.
  - Repair route if source is unsupported: `/proof-step step_009`.

- Step ID: `step_010`
  - Claim class: positive raw coefficient residual.
  - Theorem role: preserves the initial obstruction at the limit.
  - Mechanism source: `step_006` raw \(W_0\), `step_008` endpoint control, and
    `step_009` Taylor remainder.
  - Source-to-claim adequacy: \(\widehat D_0\) and the first derivative lie in
    \(\mathscr S_0\), so only the second-order remainder opposes the margin.
  - Residual-to-target adequacy: same raw residual
    \(D_r-\Psi(\theta_\infty)\).
  - Key positive/control term or structural source: \(\delta_0\sqrt r\).
  - Opposing defect terms: one Taylor remainder.
  - Closure/dominance/absorption relation:
    \(C_{\rm CP}E_\star^2\le\delta_0/16\) leaves
    \((15/16)\delta_0\sqrt r\).
  - Accumulation behavior / scope compatibility: whole path enters once through
    endpoint displacement.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: all sources are earlier outputs.
  - Entry-state / first-update stress result: stationary path preserves the
    complete initial deficit.
  - Baseline conclusion preserved: zero path gives no conservative loss.
  - Producer-consumer provenance: `step_010` to `step_011`.
  - Null or boundary regime tested: maximal \(E_\star\).
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes.
  - Repair route if source is unsupported: smallest failed dependency.

- Step ID: `step_011`
  - Claim class: same-target physical residual and relative loss floor.
  - Theorem role: converts coefficient obstruction into the objective.
  - Mechanism source: exact mode-span projection identity, tensor-product
    singular values, `step_001`, and `step_010`.
  - Source-to-claim adequacy: projection is used in the safe direction and the
    tensor factor map has smallest singular value at least \(\kappa_1^{-3}\).
  - Residual-to-target adequacy: exact equality with the projection of the
    residual for the same realized target \(T\); discarded orthogonal mass is
    nonnegative.
  - Key positive/control term or structural source:
    \(\kappa_1^{-3}(15\delta_0/16)\sqrt r\).
  - Opposing defect terms: none subtracted.
  - Closure/dominance/absorption relation:
    \(\epsilon_0(\kappa)=\kappa_1^{-12}(15\delta_0/16)^2\).
  - Accumulation behavior / scope compatibility: one-time limit comparison.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: identity and margins precede final use.
  - Entry-state / first-update stress result: stationary path uses the same
    physical bridge.
  - Baseline conclusion preserved: normalized certificate returns to exact raw
    and physical targets.
  - Producer-consumer provenance: `step_011` to `step_012` and final theorem.
  - Null or boundary regime tested: lower singular boundary.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: yes.
  - Repair route if source is unsupported: smallest failed dependency.

- Step ID: `step_012`
  - Claim class: exact event and conditional-probability closure.
  - Theorem role: states the strongest source-aligned distributional result.
  - Mechanism source: `step_007`, `step_008`, `step_011`, event inclusion, and
    the elementary conditional-probability identity.
  - Source-to-claim adequacy: the produced convergence and physical-loss event
    is exactly \(\mathcal F_+\).
  - Residual-to-target adequacy: no proxy event.
  - Key positive/control term or structural source:
    \(\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\).
  - Opposing defect terms: unresolved conditional path probability, retained
    multiplicatively.
  - Closure/dominance/absorption relation: exact event inclusion and
    \(\Pr(E\cap C)=\Pr(E)\Pr(C\mid E)\).
  - Accumulation behavior / scope compatibility: all-time dependence remains
    inside the authorized conditional event.
  - Obligation locality classification: `step-local`.
  - Noncircular closure status: all theorem-facing outputs are earlier.
  - Entry-state / first-update stress result: if the conditional path
    probability is zero, the theorem correctly gives no unconditional mass.
  - Baseline conclusion preserved: exact conditional identity.
  - Producer-consumer provenance: `step_012` to final theorem.
  - Null or boundary regime tested: zero conditional probability.
  - Target conclusion false or theorem-critical obstruction present if source
    vanishes: no false positive-probability statement is made.
  - Repair route if source is unsupported: local event assembly.

## Exported Interface Feasibility

| Exported interface or output target | Producer step or source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Missing-interface blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| \(\mathcal E_{\rm cond}\) and left-inverse bounds | `step_001` | Base singular margin and Gaussian perturbation law | Gaussian operator norm is controlled; no persistent defect | Exact realized factor matrices | Weyl with perturbation below half the margin | Primitive \(\kappa^{-2}\) margin | `step_002`, `step_003`, `step_009`, `step_011` | None |
| Normalized pair-Gram event, raw scale identity, and \(\mathcal E_{\rm size}\) | `step_002` | Conditioned covariance, independent Gaussian directions/radii | Gram fluctuation and radial tails controlled; arbitrary large \(n\) handled exactly | \(G_{\rm raw}=(r/n)^2G_{\rm norm}\), same tangent span and target | Constant normalized margin dominates fluctuation; chi union gives size | Conditioned covariance and threshold 2 | `step_003`, `step_007`, `step_008` | None |
| Quotient/TC/radial/colored-trace/visit-local reduction package | `step_003` | Primitive initialization plus `step_001`--`step_002` | Cross-visit sector explicitly uncontrolled; all other sectors controlled | Gaussian object transfers exactly back by \(\widetilde E=D\widetilde E_GD\); raw target untouched | \(\|D\|\le4\), loop weight bound, (TC), and visit-local moment | Quotient diagonal margin and trace-one covariance | `step_004`, `step_005`, `step_006` | None; (TF) is deliberately not exported |
| Exact topology inequality (TOP) | `step_004` | Exact four-colored Eulerian diagram from `step_003` | High-degree/interlaced topology is the only defect class | N/A | \(F+B\le3p+2\) for every valid diagram | Joint circuit rank or jacket Euler deficit | `step_005` | A valid counterexample makes `step_004` `PARTIAL_BLOCKED` and routes to `/proof-sketch`; it exports no accepted interface |
| Gaussian moment bound (21z) | `step_005` | Exact weights, visit-local sector, and accepted exact (TOP) output | Label and Wick multiplicities must be charged; no uncontrolled cross-visit class may remain | Aggregate is exactly the full trace moment | (ENUM) plus multinomial summation | Face loss and covariance-loop powers | `step_006` | Failure of an excess profile without p-loss on the leading term returns to `/proof-sketch` |
| (TF), quotient coercivity, \(W_0\), and raw deficit | `step_006` | (21z), radial conjugation, (TC), quotient diagonal Gram | Gaussian/radial/TC failures controlled; no trajectory defect | Exact raw projection identity for \(D_r-\widehat D_0\) | Corrected Markov specialization, TF \(\le1/2\), projection energy \(\le r/2\) | Quotient margin one and ambient norm \(r\) | `step_007`, `step_010` | None after accepted `step_005` |
| \(\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\) | `step_007` | All four constituent events | Finite constituent failures | Exact event | Explicit union/tower bound | Constituent probability budgets | `step_008`, `step_012` | None |
| \(\theta_\infty\), displacement \(\le E_\star\), radius 3 | `step_008` | Initial size and explicit path budget | Nonnegative increments controlled by one finite series | Actual trajectory in \(d_{\rm bal}\) | Tail-sum Cauchy and \(2+E_\star\le3\) | Conditional path budget | `step_009`, `step_010`, `step_011`, `step_012` | None |
| Raw Taylor remainder | `step_009` | Left-inverse bounds, radius 3, displacement \(\le1\) | Three quadratic and one cubic term; no hidden \(k\)-term | Exact raw coefficient map | Cauchy-Schwarz and \(d^3\le d^2\) | \(C_{\rm CP}(\kappa,3)\) | `step_010` | None |
| Limiting raw coefficient margin | `step_010` | Raw deficit, tangent orthogonality, endpoint and Taylor controls | One nonlinear remainder | Same raw residual | \(C_{\rm CP}E_\star^2\le\delta_0/16\) | Initial \(\delta_0\sqrt r\) margin | `step_011` | None |
| Relative physical loss floor | `step_011` | Exact projection identity, singular values, coefficient margin | Orthogonal residual discarded only safely | Same realized target and physical norm | Explicit \(\epsilon_0(\kappa)\) comparison | Realized singular margin | `step_012`, final theorem | None |
| Final conditional probability lower bound | `step_012` | Event inclusion and initialization probability | Conditional path probability remains uncontrolled and explicit | Actual convergence-and-loss event | Exact conditional probability identity | \(1-r^{-10}\) | Final theorem | None |

## Generated Output Flow

| Generated output or control | Producer step or source | Consumers | Final theorem use | Dependency path | Provenance class | Missing-flow blocker |
| --- | --- | --- | --- | --- | --- | --- |
| Realized-factor conditioning | `step_001` | `step_002`, `step_003`, `step_009`, `step_011` | Coefficient legality and physical transfer | `step_001 -> consumers` | derived | None |
| Normalized Gram, raw scale identity, and initial size | `step_002` | `step_003`, `step_007`, `step_008` | Initialization certificate and path radius | `step_001 -> step_002 -> consumers` | derived | None |
| Exact colored Gaussian diagram and visit-local sector | `step_003` | `step_004`, `step_005`, `step_006` | Inputs to the TF producer | `step_001,step_002 -> step_003 -> consumers` | derived | None |
| Exact topology inequality (TOP) | `step_004` | `step_005` | Enables complete moment count | `step_003 -> step_004 -> step_005` | derived | A valid counterexample makes the producer `PARTIAL_BLOCKED`, blocks flow, and routes to `/proof-sketch` |
| Moment bound (21z) | `step_005` | `step_006` | Produces high-probability TF | `step_003,step_004 -> step_005 -> step_006` | derived | None after accepted exact (TOP) |
| TF event, \(W_0\), and deficit event | `step_006` | `step_007`, `step_010` | Positive source for final loss | `step_003,step_005 -> step_006 -> consumers` | derived | None |
| High-probability initialization event | `step_007` | `step_008`, `step_012` | Unconditional initialization factor | `step_001,step_002,step_006 -> step_007` | derived | None |
| Path budget | Explicit conditional target \(\mathcal C_{\rm path}\) | `step_008` | Conditions deterministic theorem | conditional source to `step_008` | explicitly conditional | None |
| Factor limit, endpoint displacement, and radius 3 | `step_008` | `step_009`, `step_010`, `step_011`, `step_012` | Convergence and Taylor domain | `step_002,step_007,C_path -> step_008 -> consumers` | derived | None |
| Taylor remainder | `step_009` | `step_010` | Preserves initial normal margin | `step_001,step_008 -> step_009 -> step_010` | derived | None |
| Limiting coefficient margin | `step_010` | `step_011` | Input to physical bridge | `step_006,step_008,step_009 -> step_010` | derived | None |
| Relative physical loss floor | `step_011` | `step_012`, final theorem | Positive limiting objective | `step_001,step_010 -> step_011` | derived | None |
| Conditional probability conclusion | `step_012` | Final theorem | Strongest branch conclusion | `step_007,step_008,step_011 -> step_012` | derived | None |

## Sketch Steps

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001` | Prove \(\Pr(\mathcal E_{\rm cond})\ge1-r^{-20}\) and \(\|M^\dagger\|_{\rm op},\|M\|_{\rm op}\le\kappa_1\). | None | `assump:base_conditioning`, `assump:dimension`, `assump:gaussian_smoothing` | Uniform rectangular perturbation. | Direct Gaussian operator tail and Weyl. | Realized conditioning. | Initial certificate, failure \(r^{-20}\), uniform in \(n\) and bases. | PENDING |
| `step_002` | Derive balanced Gaussianization; prove all normalized pair-Gram windows, initial size, exact raw Gram scale, and tangent-span equality. | `step_001` | `assump:dimension`, `assump:rank_window`, `assump:independent_initialization`; derived `step_001` conditioning | Rank-one Khatri-Rao columns with common balancing radii. | Radius-direction decomposition, chi concentration, conditional covariance, and normalized Gram concentration. | \(\mathcal E_{\rm gram}^{\rm norm}\), \(\mathcal E_{\rm size}\), exact scale bridge. | Constant normalized scale, polynomial window, failures \(\le r^{-20}\), no \(n\)-dilution. | PENDING |
| `step_003` | Restate and prove the exact gauge quotient, Terracini blocks, (TC) with failure \(r^{-25}\), Gaussian radial conjugation with failure \(r^{-30}\), colored trace formula, covariance-loop weight, \(F+2v\le4p+3\), quadratic moment, and complete visit-local/all-distinct sector. Do not claim (TF). | `step_001`, `step_002` | `assump:rank_window`, `assump:independent_initialization`; derived conditioning and Gaussianization | Preserve all established local outputs while exposing only the cross-visit sector. | Direct current-notation algebra, scalar Bernstein, Gaussian quadratic-form tail, Wick-Isserlis, and visit-local pairing. | Exact inputs for topology/enumeration plus (TC). | \(kr[C\sqrt{k}/r]^{2p}\) visit-local leading sector; conditional failures \(r^{-25},r^{-30}\). | PENDING |
| `step_004` | For every valid connected four-colored diagram exported by `step_003`, prove the exact topology inequality (TOP), \(F+B\le3p+2\), under the exported Eulerian/circuit conventions. | `step_003` | Derived exact diagram and loop conventions from `step_003`; no new theorem-facing assumption | High-degree Eulerian visits and joint circuit partitions. | Direct visit splitting plus circuit-nullity/interlace-rank identity; independent jacket Euler-characteristic derivation as cross-check; finite small-p counterexample search as falsification only. | Exact (TOP) face budget consumed by `step_005`. | Preserve the exact \(r\)-power required by (21z). | PENDING |
| `step_005` | Conditional on the accepted exact (TOP) output, prove (ENUM) and hence the full Gaussian trace moment (21z) at \(p_0=\lceil31\log r\rceil\). | `step_003`, `step_004` | `assump:rank_window`, `assump:independent_initialization`; derived Gaussian diagram, covariance loop bounds, visit-local sector, and exact (TOP) output | Sum repeated-component cross-visit pairings without multiplying \(\sqrt{k}/r\) by \(p_0\) or \(\log r\). | Rooted component-partition forests, minimal two-pair-switch encoding, face-loss charging, and multinomial generating function. | (21z) with constant \(C_G(\kappa)\). | Exact \(\sqrt{k}/r+\sqrt{p_0/r}+p_0/r\) rate, fixed-factor conditional moment, no log-leading loss. | PENDING |
| `step_006` | From (21z), radial transfer, and (TC), prove (TF), quotient coercivity, construct unit raw \(W_0\perp\mathscr S_0\), and prove \(\mathcal E_{\rm deficit}\) with conditional failure \(\le r^{-20}\). | `step_003`, `step_005` | `assump:rank_window`; derived quotient, TC, radial, and moment outputs | Correct confidence/constant conversion and raw projection assembly. | Markov, exact factor-16 conjugation, corrected \(C_{\rm TF}\), Weyl, pseudoinverse projection, and Pythagoras. | Exact raw-target deficit with \(\delta_0=1/8\). | TF rate \(\sqrt{k}/r+\sqrt{\log r/r}\); failures \(r^{-40}+r^{-30}+r^{-25}\le r^{-20}\). | PENDING |
| `step_007` | Assemble \(\Pr(\mathcal E_{\rm init\_norm})\ge1-r^{-10}\). | `step_001`, `step_002`, `step_006` | Primitive assumptions inherited through dependencies | Joint and conditional probability bookkeeping. | Tower property and explicit union bound. | High-probability initialization event. | Confidence bridge to \(r^{-10}\). | PENDING |
| `step_008` | On \(\mathcal E_{\rm size}\cap\mathcal C_{\rm path}\), prove convergence to \(\theta_\infty\), displacement \(\le E_\star\le1\), and radius 3. | `step_002`, `step_007` | `assump:gd_step`; derived size; explicitly conditional \(\mathcal C_{\rm path}\) | Noncircular all-time closure. | Tail-sum Cauchy and triangle inequalities charged to the finite path series. | Limit, displacement, and radius. | Horizon-uniform finite-budget control and asymptotic convergence. | PENDING |
| `step_009` | Prove the exact raw multilinear remainder with constant \(C_{\rm CP}(\kappa,R)\) and no hidden \(k\)-factor. | `step_001`, `step_008` | Derived conditioning, radius, and displacement | Sum componentwise quadratic/cubic terms sharply. | Exact trilinear expansion and Frobenius Cauchy-Schwarz. | Taylor remainder at \(R=3\). | Exact constant and coefficient Frobenius norm. | PENDING |
| `step_010` | Pair the endpoint Taylor formula with \(W_0\) and prove \(\|D_r-\Psi(\theta_\infty)\|_F\ge(15/16)\delta_0\sqrt r\). | `step_006`, `step_008`, `step_009` | Derived deficit, limit, displacement, and Taylor interface | Preserve raw normal margin through nonlinear endpoint motion. | Tangent orthogonality and explicit remainder absorption. | Limiting raw coefficient residual floor. | One-shot second-order absorption. | PENDING |
| `step_011` | Prove the exact projection identity and \(F(\theta_\infty)\ge\epsilon_0(\kappa)\|T\|_F^2\), \(\epsilon_0=\kappa_1^{-12}(15\delta_0/16)^2\). | `step_001`, `step_010` | Derived conditioning and coefficient residual | Same-target coefficient-to-physical transfer. | Mode-span identity, tensor-product singular values, and \(\|T\|_F^2\le\kappa_1^6r\). | Positive limiting physical objective. | Explicit \(\kappa\)-dependence and norm bridge. | PENDING |
| `step_012` | Prove the event inclusion and exact final conditional probability lower bound, without lower-bounding \(\Pr(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\). | `step_007`, `step_008`, `step_011` | Joint probability space and derived outputs | Retain the unresolved source probability exactly. | Event inclusion and conditional probability identity. | Final conditional theorem. | Exact factor \((1-r^{-10})\Pr(C\mid E)\). | PENDING |

## Dependency Notes

The graph is acyclic and every dependency points to an earlier step. The
accepted algebraic reduction is isolated in `step_003`; topology is produced
in `step_004` before the enumeration in `step_005`; the trace moment is
produced before the Markov/radial/TF-to-deficit assembly in `step_006`.
Therefore no face inequality, multiplicity estimate, (21z), (TF), quotient
coercivity, or deficit event is consumed before its producer.

The old downstream mathematical steps are retained without weakening:
initialization assembly is now `step_007`, finite-path convergence is
`step_008`, the raw Taylor interface is `step_009`, coefficient-margin
preservation is `step_010`, the physical bridge is `step_011`, and event
assembly is `step_012`. Their claims, primitive sources, path scope,
constants, raw-coordinate convention, baseline specialization, and final
conditional probability interface are unchanged.

## Blockers

None.

## Future Failure Routing

1. If `step_004` finds a valid diagram violating (TOP), its proof artifact
   must be `PARTIAL_BLOCKED`, record the concrete minimal counterexample, and
   route to `/proof-sketch`; it exports no accepted (TOP) interface and
   `step_005` must not begin.
2. If `step_005` cannot prove (ENUM), or an interface-equivalent exhaustive
   profile whose p-dependence appears only with
   \(\sqrt{p/r}\) and \(p/r\), then (21z) remains blocked. The theorem, rank
   window, TF rate, confidence mode, quotient convention, and raw deficit may
   not be weakened inside that step; the smallest retry target is
   `/proof-sketch`.
