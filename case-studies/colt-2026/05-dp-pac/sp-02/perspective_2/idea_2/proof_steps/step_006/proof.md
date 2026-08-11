# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_006`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: Define `B_Pi` from the produced prior and prove transcriptwise that it is exactly `(epsilon_0,delta_m)`-DP; prove restriction of `A`'s arbitrary output is legal and no properness enters.
- Depends on: `step_005`.
- Assumptions used: `assump:minor-table`; `assump:unrestricted-private-pac`; `assump:fixed-parameter-scale`; the derived prior `Pi`.
- Technical challenge: Prove record-for-record locality on every overflow and unused-record branch, while retaining the primitive learner's privacy parameters without group privacy, composition, or an output-shape restriction.
- Intended proof tool or cited result: A direct coupling of all data-independent internal transcripts, the primitive eventwise DP inequalities for `A`, and measurable postprocessing by hidden-arm restriction.
- Output target: An arbitrary-output threshold-domain kernel
  
  \[
  B_\Pi:([N]\times\{0,1\})^n\rightsquigarrow\{0,1\}^{[N]}
  \]
  
  together with an iid latent experiment vector and an exact inherited `(epsilon_0,delta_m)` privacy certificate.
- Rate objective: R2, retaining the inherited privacy pair exactly.

More explicitly, put

\[
n=\left\lceil\frac{2m}{k}\right\rceil+12
\]

and fix the accepted dependency output

\[
\Pi=\Pi_{n,N,\varepsilon_0,\delta_m}
\in\Delta(\mathcal E_{n,N}).
\tag{T1}
\]

Whenever the accepted `step_005` admissibility conditions make this prior available, this step constructs `B_Pi` on every ordered labeled input, constructs the iid common-prior latent vector used by downstream coupling, and proves both eventwise privacy directions

\[
B_\Pi(G\mid s)
\le e^{\varepsilon_0}B_\Pi(G\mid s')+\delta_m,
\qquad
B_\Pi(G\mid s')
\le e^{\varepsilon_0}B_\Pi(G\mid s)+\delta_m
\tag{T2}
\]

for every replacement-adjacent `s,s'` and every output event `G`. Here "exact" means that the inherited pair is not enlarged; it does not assert that `(epsilon_0,delta_m)` is the minimal privacy pair of the constructed kernel.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Accepted dependency proof: `perspective_2/idea_2/proof_steps/step_005/proof.md`, SHA-256 `ef7343576f23d59e14f2a29da1d7d9461608590f23332b1707a46f4b77f01b3a`.
- Accepted dependency review: `perspective_2/idea_2/proof_steps/step_005/review.md`, status `ACCEPTED`, SHA-256 `03fc727ae75639b93121a945d0034af47f11f380970239e9fce96fbd8150a1f9`.

Assumption-provenance classification:

- Primitive conditions:
  1. Assumption~\ref{assump:minor-table} supplies integers `k>=1`, `N>=2`, injections `phi_j:[N]->X`, and their legal disjoint-arm realization table. Only the injections and their common ambient domain are used in this step.
  2. Assumption~\ref{assump:unrestricted-private-pac} supplies the integer `m>=1`, the randomized kernel
     \(A:Z_X^m\rightsquigarrow\{0,1\}^X\), measurable coordinate evaluations, and both eventwise replacement-adjacency `(epsilon_0,delta_m)`-DP inequalities on all ordered labeled `m`-samples. The PAC utility part is not used here.
  3. Assumption~\ref{assump:fixed-parameter-scale} supplies `0<epsilon_0<=1` and `delta_m>=0`. Its numerical PAC constants and upper bound on `delta_m` are not used in the privacy derivation. The expression `n=ceil(2m/k)+12` is defined in the basic setting from the primitive integers `m,k`.
- Derived invariants supplied by accepted dependencies:
  1. Proposition~\ref{prop:step-005-hard-prior} supplies the learner-independent probability distribution (T1) on exactly `mathcal E_(n,N)` whenever its accepted admissibility conditions hold.
  2. The hard-value inequality `(HP)` is part of that dependency output, but the current construction and privacy proof use only that `Pi` is a fixed probability distribution independent of the real input, `A`, the hidden arm, and all later learner randomness.
- Local conditional hypotheses: None. Adjacent inputs, a changed coordinate, and a fixed internal transcript are quantified proof variables. The availability conditions for `Pi` belong to the accepted dependency interface and are discharged only in the later rate-specialization step; they are not promoted to new primitive assumptions here.

No utility, exchangeability, overflow tail bound, realizability event, or conclusion of `(HP)` is assumed in proving privacy.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:minor-table} and the accepted prior (T1), the hidden-arm latent experiments admit an iid completion with law `Pi^k` independent of the uniform hidden arm, both for the kernel's data-independent coins and for the outer prior-average experiment. | Constructs the iid common-prior latent vector, proves the exact joint law, and covers the singleton `k=1` case. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:minor-table}, \ref{assump:unrestricted-private-pac}, and \ref{assump:fixed-parameter-scale}, the accepted prior, and Lemma~\ref{lem:step-006-iid-latents}, the stated hidden-arm procedure defines a Markov kernel on every ordered labeled input; arbitrary learner outputs restrict measurably to the full binary cube without properness. | Defines `B_Pi`, proves legal arbitrary-output postprocessing, and identifies a common input-independent upstream transcript. |
| `unit_003` | lemma | Under Proposition~\ref{prop:step-006-kernel}, every fixed upstream transcript maps replacement-adjacent real inputs either to equal learner inputs, to learner inputs differing in exactly one position, or to the common overflow output. | Proves the one-use record map and exhausts `R=0`, `R=n`, `R>n`, and unused-record branches. |
| `unit_004` | proposition | Under Assumption~\ref{assump:unrestricted-private-pac}, Proposition~\ref{prop:step-006-kernel}, and Lemma~\ref{lem:step-006-locality}, the kernel `B_Pi` satisfies both `(epsilon_0,delta_m)`-DP inequalities after restriction and averaging over the common transcript. | Establishes exact inherited privacy, including `delta_m=0`, `epsilon_0=1`, and the absence of composition or group-privacy loss. |
| `unit_005` | proposition | Under all three setting assumptions and the preceding results, when `k=1` the construction has `R=m<n`, no overflow or nonhidden simulation, uses the first `m` real records once each, and retains the same exact privacy and singleton latent law. | Proves the theorem-facing one-chain baseline specialization rather than a weaker conditional or residual statement. |

Atomic step = no. Iid completion, kernel measurability, transcript locality, privacy under data-independent mixing, and baseline specialization are distinct nontrivial obligations.

## Cited Result Applications

### Accepted dependency: attained learner-independent hard prior

- Source: accepted `step_005` proof/review pair, specifically Proposition~\ref{prop:step-005-hard-prior}.
- Restated statement in current notation: under the accepted one-arm admissibility conditions, there exists
  \[
  \Pi_{n,N,\varepsilon_0,\delta_m}
  \in\Delta(\mathcal E_{n,N})
  \]
  depending only on `n,N,epsilon_0,delta_m`, and not on a later candidate learner or its randomness, such that `(HP)` holds against every arbitrary-output `(epsilon_0,delta_m)`-DP threshold-domain kernel.
- Instantiated objects: the fixed prior `Pi` in (T1), its iid product law, and the nonhidden-arm experiment draws in `B_Pi`.
- Assumption discharge: this step takes the accepted prior as its single dependency object. The accepted dependency conditions are not altered or re-proved here.
- Conclusion used: `Pi` is a fixed probability distribution on the exact finite experiment universe and is independent of all inputs and later coins.
- Non-output boundary: the dependency does not define `B_Pi`, prove its privacy, or supply iid hidden-arm coupling. The hard-value inequality itself is not used as privacy evidence.

### Primitive learner privacy interface

- Source: Assumption~\ref{assump:unrestricted-private-pac}, not an external cited theorem.
- Restated statement in current notation: for every ordered replacement-adjacent pair `x,x' in Z_X^m` and every measurable output event `F`,
  \[
  A(F\mid x)\le e^{\varepsilon_0}A(F\mid x')+\delta_m,
  \qquad
  A(F\mid x')\le e^{\varepsilon_0}A(F\mid x)+\delta_m.
  \tag{C1}
  \]
- Instantiated objects: the two constructed learner inputs in Lemma~\ref{lem:step-006-locality} and the measurable event \(\rho_J^{-1}(G)\) from Proposition~\ref{prop:step-006-kernel}.
- Assumption discharge: Lemma~\ref{lem:step-006-locality} proves that these learner inputs are equal or replacement-adjacent; Proposition~\ref{prop:step-006-kernel} proves that the event preimage is measurable.
- Conclusion used: the transcriptwise inequality in Proposition~\ref{prop:step-006-exact-dp}.
- Non-output boundary: (C1) gives one-record privacy only. This proof never invokes group privacy, composition, privacy amplification, or PAC utility.

### Internal results used in target assembly

- Lemma~\ref{lem:step-006-iid-latents}: the latent experiment vector has exact product law `Pi^k` and is independent of the hidden designation, including in the outer prior-average completion.
- Proposition~\ref{prop:step-006-kernel}: the procedure is a well-defined full-cube output kernel and the arbitrary restriction is measurable postprocessing.
- Lemma~\ref{lem:step-006-locality}: a fixed upstream transcript sends one external replacement to zero or one learner-input replacement, with a common output on overflow.
- Proposition~\ref{prop:step-006-exact-dp}: transcriptwise privacy and data-independent averaging yield (T2) with the original pair.
- Proposition~\ref{prop:step-006-one-arm}: `k=1` reduces to the nonoverflow one-chain construction with exact privacy.

No external paper result or non-elementary standard theorem is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Iid completion of the hidden-arm latent experiments).** \label{lem:step-006-iid-latents}

Statement: Under Assumption~\ref{assump:minor-table} and the accepted prior (T1), let `J` be uniform on `[k]`. The latent experiment draws used outside arm `J` can be completed by one unused coordinate so that

\[
\mathbf E=(E_1,\ldots,E_k)\sim\Pi^k
\quad\text{and}\quad
\mathbf E\ \text{is independent of }J.
\tag{1}
\]

Moreover, in the prior-average risk experiment, if an outer experiment `E_*~Pi` generates the real input and one sets `E_J=E_*` while drawing `E_j~Pi` independently for `j!=J`, then the same conclusion (1) holds and the nonhidden draws have exactly the law used by `B_Pi`. This remains valid at `k=1`.

Proof / justification:

For the kernel's internal implementation, draw

\[
J\sim\operatorname{Unif}([k]),
\qquad
(E_1,\ldots,E_k)\sim\Pi^k
\tag{2}
\]

independently of one another and independently of the real input. The construction below uses only `E_j` with `j!=J`; hence the unused coordinate `E_J` can be included without changing the procedure stated in `setting.md`, which draws only the nonhidden coordinates. Equation (1) is immediate from (2), but we record the exact joint mass because it is the downstream exchangeability interface. For every \(a\in[k]\) and every \(\mathbf e=(e_1,\ldots,e_k)\in\mathcal E_{n,N}^k\),

\[
\Pr\{J=a,\mathbf E=\mathbf e\}
=\frac1k\prod_{j=1}^k\Pi(e_j).
\tag{3}
\]

The right side factors into `Pr{J=a}` times the product-law mass, proving independence even when some prior masses vanish.

For the outer prior-average completion, draw `J` uniformly, draw `E_*~Pi` independently, set `E_J=E_*`, and, conditional on `J`, draw the remaining coordinates independently from `Pi`. Then again

\[
\Pr\{J=a,E_1=e_1,\ldots,E_k=e_k\}
=\frac1k\Pi(e_a)\prod_{j\ne a}\Pi(e_j)
=\frac1k\prod_{j=1}^k\Pi(e_j).
\tag{4}
\]

Thus the completed vector is iid and independent of `J`. If the real sample is then drawn from \(Q_{E_*}^n\), its conditional law given \((J,\mathbf E)\) is exactly \(Q_{E_J}^n\).

This coupling does not alter `B_Pi`: the hidden coordinate is unused by the kernel, and all used nonhidden coordinates have the same independent `Pi` law as in (2). At `k=1`, the product over `j!=J` is empty, `J=1` deterministically, and the completed vector is simply `(E_*)~Pi`; independence from a constant variable and the singleton product law are exact.

### unit_002: proposition

**Proposition (Measurable arbitrary-output hidden-arm kernel).** \label{prop:step-006-kernel}

Statement: Under Assumptions~\ref{assump:minor-table}, \ref{assump:unrestricted-private-pac}, and \ref{assump:fixed-parameter-scale}, the accepted prior (T1), and Lemma~\ref{lem:step-006-iid-latents}, the following procedure defines a Markov kernel

\[
B_\Pi:\mathsf Z_N^n\rightsquigarrow\mathsf V_N,
\qquad
\mathsf Z_N:=[N]\times\{0,1\},
\quad
\mathsf V_N:=\{0,1\}^{[N]},
\tag{5}
\]

on every ordered labeled input. Its output is the measurable restriction of an arbitrary hypothesis produced by `A`; no threshold shape, properness, representation, or computational condition is imposed.

Proof / justification:

For each arm define the record transport and hypothesis restriction

\[
T_j(q,y):=(\phi_j(q),y)\in Z_X,
\qquad
\rho_j(h)(q):=h(\phi_j(q)),\quad q\in[N].
\tag{6}
\]

The maps `T_j` are legal because Assumption~\ref{assump:minor-table} gives `phi_j:[N]->X`. For restriction measurability, fix `j` and `v in V_N`. By the coordinate-measurability clause in Assumption~\ref{assump:unrestricted-private-pac},

\[
\rho_j^{-1}(\{v\})
=\bigcap_{q\in[N]}
\{h:h(\phi_j(q))=v(q)\}
\tag{7}
\]

is measurable. Every event \(G\subseteq\mathsf V_N\) is a finite union of singletons, so \(\rho_j^{-1}(G)\) is measurable as well.

On a real input

\[
s=(z_1,\ldots,z_n)\in\mathsf Z_N^n,
\tag{8}
\]

draw the data-independent variables in (2), draw

\[
I_1,\ldots,I_m\stackrel{\rm iid}{\sim}\operatorname{Unif}([k])
\tag{9}
\]

independently, and put

\[
H:=\{r\in[m]:I_r=J\}
=\{h_1<\cdots<h_R\},
\qquad R:=|H|.
\tag{10}
\]

For every nonhidden position `r` with `I_r=j!=J`, independently draw

\[
W_r\sim Q_{E_j}.
\tag{11}
\]

All variables in (2), (9), and (11) are independent of `s`. If `R>n`, output the fixed vector

\[
g_0(q):=0,\qquad q\in[N].
\tag{12}
\]

If `R<=n`, define the ordered input to `A` by

\[
F_\omega(s)_r
:=
\begin{cases}
T_J(z_a),& r=h_a\text{ for some }a\in[R],\\
T_{I_r}(W_r),& I_r\ne J,
\end{cases}
\qquad r\in[m],
\tag{13}
\]

where

\[
\omega=(J,\mathbf E,(I_r)_{r=1}^m,(W_r)_{I_r\ne J})
\tag{14}
\]

denotes the upstream transcript. Run `h~A(F_omega(s))` and output

\[
g=\rho_J(h)\in\mathsf V_N.
\tag{15}
\]

Conditional on every upstream transcript, (7) makes (15) a measurable postprocessing of `A`; on overflow the output is the measurable constant (12). The input space in (5) and the output cube are finite, and averaging these conditional output laws over the finite data-independent transcript law therefore defines a Markov kernel.

The unused draw `E_J` in (2) does not enter (11) or (13). Consequently, this full-vector implementation has exactly the same kernel law as the procedure in `setting.md`, which draws only `E_j` for `j!=J`. The output cube contains every binary function on `[N]`, so (15) does not properize the learner or force a threshold. The construction is defined on all labeled samples (8), including nonrealizable ones, as required by differential privacy.

### unit_003: lemma

**Lemma (One-use transcript locality under ordered replacement).** \label{lem:step-006-locality}

Statement: Under Proposition~\ref{prop:step-006-kernel}, fix any upstream transcript `omega` and any replacement-adjacent inputs `s,s' in Z_N^n`. If `R>n`, both conditional kernels output the same constant `g_0`. If `R<=n`, then `F_omega(s)` and `F_omega(s')` are equal or replacement-adjacent ordered `m`-samples. More precisely, when `s,s'` differ at the unique coordinate `ell`, the constructed learner inputs are equal if `ell>R` and differ only at position `h_ell` if `ell<=R`. This covers `R=0`, `R=n`, and every unused-record branch.

Proof / justification:

The transcript fixes `J`, the full latent vector, all arm indices, all nonhidden records, the set `H`, its ordered positions, and `R`. In particular, the overflow predicate `1{R>n}` is the same for `s` and `s'` because it contains no data-dependent quantity.

If `R>n`, Proposition~\ref{prop:step-006-kernel} does not call `A` and returns (12) on both inputs. Hence the two conditional output laws are identical.

Suppose `R<=n`. If `s=s'`, equation (13) gives identical learner inputs. Otherwise, because replacement adjacency means "differ in at most one ordered record," there is a unique `ell in [n]` with

\[
z_a=z'_a\quad(a\ne\ell),
\qquad z_\ell\ne z'_\ell.
\tag{16}
\]

At every nonhidden position, the two constructed inputs use the same fixed record \(T_{I_r}(W_r)\). At hidden position `h_a`, they use `T_J(z_a)` and `T_J(z'_a)`. Therefore:

- If `ell>R`, no hidden occurrence uses the changed external record, so all `m` positions coincide.
- If `ell<=R`, every position except `h_ell` coincides, while position `h_ell` contains `T_J(z_ell)` versus `T_J(z'_ell)`. Because `phi_J` is injective, `T_J` is injective on labeled records, so these two records are distinct. The learner inputs differ in exactly one ordered position.

Every external record is thus used at most once. When `R=0`, every real record is unused and the learner inputs are equal. When `R=n`, all `n` real records are used exactly once, so any genuine one-record change affects exactly one learner-input position. Intermediate `R` uses precisely the prefix \(z_1,\ldots,z_R\), and changes in \(z_{R+1},\ldots,z_n\) have zero effect. This proves the claimed exhaustive dichotomy.

### unit_004: proposition

**Proposition (Exact inherited privacy after restriction and transcript mixing).** \label{prop:step-006-exact-dp}

Statement: Under Assumption~\ref{assump:unrestricted-private-pac}, Proposition~\ref{prop:step-006-kernel}, and Lemma~\ref{lem:step-006-locality}, the kernel `B_Pi` is replacement-adjacency `(epsilon_0,delta_m)`-DP on ordered `n`-samples. Both directions of (T2) hold for every event in the full output cube. The pair is inherited without composition, group privacy, amplification, or any additive overflow term; the proof remains valid at `epsilon_0=1` and `delta_m=0`.

Proof / justification:

Fix replacement-adjacent \(s,s'\in\mathsf Z_N^n\), an event \(G\subseteq\mathsf V_N\), and an upstream transcript `omega`. Let `K_omega(G|s)` be the conditional output probability of the construction with only the original randomness of `A` left unfixed.

On `R>n`, both conditional outputs equal `g_0`, so

\[
K_\omega(G\mid s)=K_\omega(G\mid s')
=\mathbf 1\{g_0\in G\}.
\tag{17}
\]

On `R<=n`, Proposition~\ref{prop:step-006-kernel} and (7) give

\[
K_\omega(G\mid s)
=A(\rho_J^{-1}(G)\mid F_\omega(s)),
\qquad
K_\omega(G\mid s')
=A(\rho_J^{-1}(G)\mid F_\omega(s')).
\tag{18}
\]

The event in (18) is measurable, and Lemma~\ref{lem:step-006-locality} says that the two inputs to `A` are equal or replacement-adjacent. Applying both primitive inequalities (C1), and observing that (17) satisfies the same inequalities because `epsilon_0>=0` and `delta_m>=0`, yields transcript by transcript

\[
K_\omega(G\mid s)
\le e^{\varepsilon_0}K_\omega(G\mid s')+\delta_m,
\tag{19a}
\]

\[
K_\omega(G\mid s')
\le e^{\varepsilon_0}K_\omega(G\mid s)+\delta_m.
\tag{19b}
\]

Let `nu` be the law of the input-independent kernel transcript (14) under the internal implementation (2), not the outer analytical completion from Lemma~\ref{lem:step-006-iid-latents}. By construction, the same probability law `nu` is used for every real input. Averaging (19a) gives

\[
\begin{aligned}
B_\Pi(G\mid s)
&=\int K_\omega(G\mid s)\,\nu(d\omega)\\
&\le
e^{\varepsilon_0}\int K_\omega(G\mid s')\,\nu(d\omega)
+\int\delta_m\,\nu(d\omega)\\
&=e^{\varepsilon_0}B_\Pi(G\mid s')+\delta_m.
\end{aligned}
\tag{20}
\]

Averaging (19b) proves the reverse direction. The additive term remains `delta_m`, rather than being multiplied by the number of transcripts or positions, because `nu` has total mass one. Only one invocation of the one-record privacy inequality occurs for each transcript; the changed real record never appears twice. The overflow branch contributes equality, not a failure event or privacy residual.

No inequality in this derivation requires `epsilon_0<1`, division by `delta_m`, or a positive additive defect. Hence `epsilon_0=1` is included verbatim, and at `delta_m=0` equations (19)--(20) are the corresponding pure-DP inequalities. This proves (T2) at the exact inherited parameters.

### unit_005: proposition

**Proposition (Exact one-arm baseline specialization).** \label{prop:step-006-one-arm}

Statement: Under Assumptions~\ref{assump:minor-table}, \ref{assump:unrestricted-private-pac}, and \ref{assump:fixed-parameter-scale}, the accepted prior, and Propositions~\ref{prop:step-006-kernel} and~\ref{prop:step-006-exact-dp}, if `k=1`, then the construction satisfies

\[
J=1,
\qquad I_r=1\ (r\in[m]),
\qquad R=m<n=2m+12.
\tag{21}
\]

It never overflows, performs no nonhidden simulation, sends the first `m` external records once each and in order to `A`, ignores the remaining `n-m` records, and remains exactly `(epsilon_0,delta_m)`-DP. The latent vector is the singleton iid draw from `Pi`.

Proof / justification:

When `k=1`, both the uniform hidden arm and every uniform arm index equal one deterministically. Thus `H=[m]`, `h_a=a`, and `R=m`. Since `m` is an integer,

\[
n=\left\lceil 2m\right\rceil+12=2m+12>m,
\tag{22}
\]

so the overflow branch is impossible. There is no arm `j!=J`, hence no draw in (11). Equation (13) reduces exactly to

\[
F_\omega(s)
=\bigl(T_1(z_1),\ldots,T_1(z_m)\bigr).
\tag{23}
\]

The records \(z_{m+1},\ldots,z_n\) are unused. A replacement among the first `m` records changes exactly one position in (23); a replacement among the last `n-m` records changes none. Proposition~\ref{prop:step-006-exact-dp} therefore applies without an overflow or arm-simulation branch and retains the primitive pair exactly.

Lemma~\ref{lem:step-006-iid-latents} gives `mathbf E=(E_1)~Pi`; since `J=1` is constant, the required independence is automatic. Thus the construction reduces to the ordinary one-chain restriction interface, not to a stopped, conditional, proper, or remainder-bearing surrogate. This is the exact baseline mechanism consumed by the later `k=1` theorem specialization.

## Target-Step Assembly

Fix the accepted prior (T1). Lemma~\ref{lem:step-006-iid-latents} samples the latent experiments from the hard prior with exact product law `Pi^k` independent of the uniform hidden arm. It also proves the outer prior-average completion in which the real experiment occupies coordinate `J`; because that coordinate is unused by the kernel, this completion leaves the kernel law unchanged and supplies the iid common-experiment vector required downstream.

Proposition~\ref{prop:step-006-kernel} then defines `B_Pi` on every ordered labeled `n`-sample using only data-independent upstream coins and fresh nonhidden records. Its output is the full binary restriction `rho_J(h)`, whose measurability follows from finitely many coordinate evaluations. Consequently, arbitrary improper and computationally unrestricted outputs of `A` remain legal, and no threshold projection or properness assumption enters.

Lemma~\ref{lem:step-006-locality} proves the exact transcript map. Overflow is decided without the input and returns a common constant. Off overflow, the prefix records `z_1,...,z_R` are injected once each into the ordered hidden occurrences. A changed unused record causes equal learner inputs, while a changed used record causes exactly one replacement. The proof explicitly includes `R=0`, `R=n`, `R>n`, and every intermediate unused-record branch.

Proposition~\ref{prop:step-006-exact-dp} applies the primitive two-sided DP inequalities to the measurable restricted-output event for each fixed transcript, then averages over the same input-independent transcript law. The additive defect integrates once to `delta_m`; it is not multiplied by `m`, `R`, `k`, or the number of transcripts. This proves exactly `(epsilon_0,delta_m)`-DP, including `epsilon_0=1` and `delta_m=0`, with no group-privacy, composition, amplification, utility, or overflow loss.

Finally, Proposition~\ref{prop:step-006-one-arm} proves that `k=1` has `R=m<n`, no overflow, no nonhidden simulation, a singleton iid latent vector, and the ordinary one-chain input map with exact inherited privacy. The exact accepted `step_006` claim is therefore proved, and `B_Pi` is an admissible arbitrary-output competitor for `(HP)` whenever the accepted prior is available.

## Explicit Rate Audit

- Exposed variables: `m,k,n,N,epsilon_0,delta_m`; the exact relation `n=ceil(2m/k)+12`; the prior `Pi_(n,N,epsilon_0,delta_m)`; and the finite occupancy count `R`.
- Hidden constants may depend on: none introduced in this step. The prior may have the accepted dependency on `n,N,epsilon_0,delta_m` and universal `step_005` constants.
- Hidden constants may not depend on: the real input, learner `A`, class `C`, domain `X`, hidden arm, latent realization, arm indices, simulated records, or output event.
- Fixed quantities: ordered replacement adjacency, zero-one labels, the full output cube, the minor embeddings, and the primitive learner sample size `m`.
- Probability mode: exact eventwise differential privacy after conditioning on and averaging over data-independent internal transcripts; exact product-law and independence statements for the latent vector. No high-probability or expected-risk bound is proved here.
- Horizon mode: fixed sample with exactly `m` constructed positions and `n` external records. There is no repeated-time, asymptotic, stopping, or all-time scope.
- Norm mode: no norm or risk rate is used. The quantitative interface is the pair of output-event probability inequalities (T2).
- Admissibility conditions and auxiliary tolerances: `A` has primitive `(epsilon_0,delta_m)` privacy, `Pi` is supplied by the accepted dependency, and `n` has its setting value. There is no mesh, tail tolerance, confidence conversion, or auxiliary privacy parameter.
- Term absorption or simplification inequalities: none. The privacy pair is transferred by equality/one-replacement and the exact identity `int delta_m dnu=delta_m`.
- Probability conversion: conditioning on a common transcript and averaging over its input-independent probability law; no union bound, Markov inequality, or privacy composition is used.
- Contribution to any Rate Specialization Bridge: this step exports `B_Pi` with the same `(epsilon_0,delta_m)` pair required by `(HP)`, so the later `n`-versus-`m` specialization incurs no hidden privacy loss.
- Baseline-reduction check: at `k=1`, `n=2m+12`, `R=m<n`, overflow has probability zero, and the construction is exactly the one-chain restriction of `A` on the first `m` records. The inherited privacy and arbitrary-output interfaces are unchanged.

## Blockers

None.

## Notation And Assumption Notes

- `mathsf Z_N=[N]x{0,1}` and `mathsf V_N={0,1}^[N]`: `appendix-local`; direct finite expressions from the setting. `mathsf V_N` is the full binary cube, not the threshold class.
- `Pi=Pi_(n,N,epsilon_0,delta_m)`: `public-facing`; inherited from accepted Proposition~\ref{prop:step-005-hard-prior}. Its probability-distribution and learner-independence properties are the only dependency conclusions used here.
- `J`, `mathbf E=(E_1,...,E_k)`, `(I_r)`, and `R`: `public-facing`; these are the setting's hidden designation, common-prior latent vector, arm indices, and hidden occupancy. The iid law and independence of `mathbf E` are proved by Lemma~\ref{lem:step-006-iid-latents}.
- `E_*`: `proof-local`; the outer experiment used only to prove the exact iid completion relevant to prior-average risk. It is not an extra kernel input or theorem assumption.
- `T_j` and `rho_j`: `appendix-local`; direct abbreviations for the setting's record transport and arbitrary-output restriction. Legality and measurability are proved in Proposition~\ref{prop:step-006-kernel}.
- `H={h_1<...<h_R}`: `appendix-local`; the hidden positions determined solely by the data-independent arm indices.
- `W_r`: `proof-local`; fresh nonhidden record draws from the setting-defined `Q_(E_j)`. They are generated independently of the real input.
- `omega` and `nu`: `proof-local`; respectively a fixed upstream transcript and its input-independent kernel law. They package only coins chosen before the call to `A`, do not include `A`'s randomness, and are distinct from the outer analytical completion used to align `E_J` with the real experiment.
- `s,s',ell,G`: `proof-local`; quantified adjacent inputs, their possible changed coordinate, and an arbitrary output event. They are not generated conditions or theorem-facing assumptions.
- `F_omega(s)`: `appendix-local`; the ordered learner input. Its equal-or-one-replacement property is proved by Lemma~\ref{lem:step-006-locality}; it is not assumed as a generated invariant.
- `K_omega(G|s)`: `proof-local`; the conditional postprocessed output probability used in equations (17)--(20).
- `g_0`: `appendix-local`; the setting-defined common all-zero overflow output. Its input independence is proved directly from the data-independent predicate `R>n`.
- `B_Pi`: `public-facing`; the exported threshold-domain, full-cube-output kernel. Proposition~\ref{prop:step-006-kernel} proves it is well-defined, and Proposition~\ref{prop:step-006-exact-dp} proves its exact inherited privacy.
- Constant provenance: no new numerical constant, threshold, radius, margin, or tolerance is introduced. `n` is setting-defined; `epsilon_0,delta_m` are primitive learner parameters; all other counts are exact integers determined by the displayed construction.
- Assumption provenance: the embeddings and learner DP/measurability are primitive; `Pi` is an accepted dependency object; iid latent generation, kernel well-definedness, transcript locality, exact privacy, and the one-arm specialization are proved by named local units. No generated utility, realizability, exchangeability, overflow-probability, stability, boundedness, recurrence, or event condition is treated as primitive.
- Arbitrary-output audit: the only output operation is the finite coordinate restriction `rho_J`. Its event preimages are measurable by (7), and its codomain is the full cube `V_N`; no properness or threshold shape is imposed.
- Privacy audit: privacy is proved on all ordered labeled inputs, not only samples drawn from `Q_e`. The changed-record use count is deterministically at most one, overflow gives a common output, and data-independent mixing preserves one copy of `delta_m`.
- Boundary audit: `R=0` gives equal learner inputs; `R=n` uses all real records once; `R>n` gives the common output; `ell>R` is unused; `epsilon_0=1` and `delta_m=0` require no limiting argument; `k=1` has deterministic no-overflow reduction.
- Diagnostic boundary: `global_proof.md`, SHA-256 `bbd8a4f3a7d579085fbfcbea87beb2dce14d00f99922eb44b694e690460b29b6`, was read only after confirming that paired `global_proof_review.md`, SHA-256 `4723ec97011458d099b944756217c3dcd5e51e64ce7f7cfac4568b68592d5239`, has status `ACCEPTED`. Its G6 block suggested the planning split `iid completion -> measurable kernel -> transcript locality -> postprocessed DP averaging -> boundary trace`. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the target claim, dependency, privacy pair, output scope, or baseline conclusion.
