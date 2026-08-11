# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_001`
- Unit attempt: `1`

## Target Step Claim

- Intended claim: For every candidate `(epsilon,delta)`-DP `n`-sample threshold kernel, restrict arbitrary outputs to `\{0,1\}^N` and build a `(epsilon,delta)`-DP empirical wrapper on every `9n`-tuple `U` whose expected empirical loss is exactly `R_n(B,(t,U))`, uniformly for `epsilon<=1`.
- Depends on: None.
- Assumptions used: Primitive finite-experiment definitions in `setting.md`; candidate-kernel privacy; no hard prior.
- Technical challenge: Exact with-replacement privacy despite repeated selection; source/branch threshold orientation; arbitrary output.
- Intended proof tool or cited result: Alon et al. active `lem:bun`; Bun et al. corrected secrecy-of-the-sample lemma; direct postprocessing and risk identity.
- Output target: Finite kernel plus private expected-loss empirical wrapper.
- Rate objective: R1, preserving `M=9n`, `epsilon`, `delta`, expectation mode, and exact risk.

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. This step uses only the basic finite-experiment definitions in `setting.md`, not any theorem-facing `assump:*` condition.
- Accepted dependency step artifacts: None.

Assumption-provenance classification:

- Primitive conditions: integers `n>=1` and `N>=2`; `M=9n`; ordered-sample replacement adjacency; coordinate measurability of arbitrary output hypotheses; `0<epsilon<=1`; `delta>=0`; and the definitions of `Q_(t,U)` and `R_n` from `setting.md`.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: the candidate `n`-sample kernel is `(epsilon,delta)`-DP. This is the premise of the target wrapper implication, not a theorem-facing assumption and not a generated invariant.

No hard prior, hardness conclusion, homogeneous set, or later proof-step output is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under coordinate measurability and the local conditional hypothesis that an arbitrary-output `n`-sample kernel is `(epsilon,delta)`-DP, its coordinate restriction to `[N]` is a measurable `{0,1}^N`-valued `(epsilon,delta)`-DP kernel with identical zero-one risk on every distribution supported on `[N]`. | Removes arbitrary output representation without properizing or changing privacy or risk. |
| `unit_002` | proposition | Under the local conditional hypothesis that the restricted kernel is `(epsilon,delta)`-DP, if `M=9n`, `0<epsilon<=1`, and `delta>=0`, then iid with-replacement sampling of `n` rows from an ordered `M`-row database followed by the kernel is `(epsilon,delta)`-DP. | Supplies exact with-replacement privacy, including repeated selections of the changed row. |
| `unit_003` | lemma | Under the finite-experiment definitions in `setting.md`, for every `t in [N]` and `U in [N]^M`, the wrapper's expected empirical zero-one loss on the labeled tuple `D_(t,U)` equals `R_n(B,(t,U))` exactly. | Gives the required zero-residual risk identity for every tuple, including tuples with repeated entries. |
| `unit_004` | proposition | Under the branch definition `tau_t(q)=1{q<=t}` and the active Alon source's upper-oriented sign convention, the maps `x=N+1-q` and `1<->+1`, `0<->-1` preserve realizability, zero-one loss, uniform empirical distributions, replacement adjacency, and the full arbitrary-output cube. | Checks source/branch orientation and establishes that the wrapper is the exact interface consumed by the active Alon proof. |

Atomic step = no. Privacy, risk identity, measurable restriction, and source-convention compatibility are independent nontrivial obligations.

## Cited Result Applications

### Corrected Bun et al. secrecy-of-the-sample lemma

- Source: Bun, Nissim, Stemmer, and Vadhan, *Differentially Private Release and Learning of Threshold Functions*, arXiv:1504.07553, corrected 2024 source, `lem:secrecy-of-the-sample`.
- Audited corrected-source SHA-256: `ae85c2352f6373357d60166aa88626edcb11337d2a5f4efe5d1c83edf355649e`.
- Restated statement in current notation: Let `K` be an `(epsilon,delta)`-DP kernel on ordered databases of size `r`, under replacement adjacency. Let `s>=2r`, and define `Sub_(r,s)[K]` on an ordered `s`-row database by drawing `r` indices independently and uniformly from `[s]`, with replacement, and running `K` on the selected ordered rows. For `epsilon<=1`, the wrapper is
  \[
  \left(6\epsilon\frac r s,
  e^{6\epsilon r/s}\frac{4r}{s}\delta\right)\text{-DP}.
  \tag{C1}
  \]
- Instantiated objects: source mechanism sample size `r=n`; source database size `s=M=9n`; source mechanism `K=B`, after the finite coordinate restriction of Lemma~\ref{lem:step-001-finite-restriction}; source wrapper `Sub_(n,M)[B]=W_B`.
- Assumptions and discharge:
  - `s>=2r`: `M=9n>=2n`.
  - `epsilon<=1`: the target range is `0<epsilon<=1`, including the endpoint `epsilon=1`.
  - replacement adjacency: identical to the branch convention for ordered samples.
  - `(epsilon,delta)` privacy of `K`: the local conditional hypothesis, preserved by Lemma~\ref{lem:step-001-finite-restriction}.
  - with-replacement sampling: exactly the iid uniform index construction defining `W_B` below.
- Conclusion used:
  \[
  \widetilde\epsilon=\frac23\epsilon,
  \qquad
  \widetilde\delta=\frac49 e^{2\epsilon/3}\delta.
  \tag{C2}
  \]
- Repeated-selection audit: the corrected source proof lets `ell(T)` be the multiplicity of the changed database row, conditions on every value `k=0,...,r`, and sums the binomial weights `p_k`. Thus all repetitions of the changed row are already included in (C1). Applying group privacy or composition a second time would double count the same multiplicity effect.
- Non-output boundary: this lemma supplies only the privacy certificate. It supplies neither threshold hardness, empirical accuracy, the exact risk identity, nor a hard prior.

### Active Alon et al. `lem:bun`

- Source: Alon, Livni, Malliaris, and Moran, *Private PAC Learning Implies Finite Littlestone Dimension*, arXiv:1806.00949, active `ADP.tex` label `lem:bun`.
- Audited active-source SHA-256: `5eaeb54287aa8aa89a00ad4b05f9158b56e01450a18e635afeecc4ed4e97128f`; the inspected header defining `\ignore` has SHA-256 `99af402478d02a1e4e4b8650102e4feb5699779a2ad9f8fd06992cd5e612d801`.
- Restated active statement: if `epsilon<1` and an `(epsilon,delta)`-DP learner with sample size `r` is `(alpha,beta)`-accurate for a hypothesis class, then there is an `(epsilon,delta)`-DP `(alpha,beta)`-accurate empirical learner with sample size `9r`.
- Instantiated interface: `r=n` and empirical database size `M=9n`. The active source proof later consumes hypotheses only through their predictions on the finite ordered threshold domain.
- Conclusion used: the active lemma validates that the source's empirical-threshold proof is organized around precisely the with-replacement `n`-from-`9n` wrapper.
- Hypothesis and conclusion limits: active `lem:bun` states `epsilon<1`, a high-probability accuracy implication, and no exact expectation identity. It is therefore not used to justify the endpoint `epsilon=1` or the equality in Lemma~\ref{lem:step-001-risk-identity}. Those obligations are proved from the corrected Bun lemma and the branch definitions.
- Activity audit: this is the active label preceding the active homogeneous-set proof. The duplicate block after the source's `\ignore{...}` boundary is inactive and is not used.

### Active source threshold convention

- Source observation: immediately before active `def:homog`, the Alon source states that an increasing balanced realizable threshold sample has its first half labeled `-1` and second half labeled `+1`. Thus its positive threshold side is upper-oriented in the source coordinate.
- Current-object mapping: Proposition~\ref{prop:step-001-orientation} maps the branch coordinate `q` to `x=N+1-q` and the branch labels `1,0` to source labels `+1,-1`.
- Conclusion used: the source empirical loss and adjacency interface is identical to the branch interface after a bijection; no orientation-dependent residual remains.

### Internal results used in target assembly

- Lemma~\ref{lem:step-001-finite-restriction}: measurable finite restriction preserves privacy and risk.
- Proposition~\ref{prop:step-001-private-wrapper}: the `M=9n` wrapper is `(epsilon,delta)`-DP throughout `0<epsilon<=1`.
- Lemma~\ref{lem:step-001-risk-identity}: wrapper empirical loss is exactly `R_n(B,(t,U))`.
- Proposition~\ref{prop:step-001-orientation}: the branch and active-source threshold conventions are bijectively equivalent.

Each internal result is stated and proved below from the allowed inputs and the checked cited-result application above.

## Local Derivation

### unit_001: lemma

**Lemma (Finite coordinate restriction).** \label{lem:step-001-finite-restriction}

Statement: Under the coordinate-measurability convention in `setting.md`, let `B^arb` be an arbitrary-output kernel on ordered samples in `([N] x {0,1})^n`, and suppose as a local conditional hypothesis that `B^arb` is `(epsilon,delta)`-DP under replacement adjacency. Then the coordinate map
\[
\rho(h)=(h(1),\ldots,h(N))\in\{0,1\}^N
\tag{1}
\]
is measurable, the pushforward kernel `B:=rho_# B^arb` is `(epsilon,delta)`-DP, and under the canonical coupling `g=rho(h)`,
\[
L_Q(g)=L_Q(h)
\tag{2}
\]
for every labeled distribution `Q` supported on `[N] x {0,1}`. The codomain is the full cube of arbitrary bit vectors, not the threshold subclass.

Proof / justification:

Give `{0,1}^N` its discrete sigma-algebra. For every `v in {0,1}^N`,
\[
\rho^{-1}(\{v\})
=\bigcap_{q=1}^N\{h:h(q)=v_q\}.
\tag{3}
\]
Every set on the right is measurable by coordinate measurability, and the intersection is finite. Hence `rho` is measurable.

For adjacent samples `S,S'` and every event `E subseteq {0,1}^N`, the two DP inequalities for `B^arb` applied to the measurable event `rho^{-1}(E)` give
\[
B(S)(E)
=B^{\rm arb}(S)(\rho^{-1}(E))
\le e^\epsilon B^{\rm arb}(S')(\rho^{-1}(E))+\delta
=e^\epsilon B(S')(E)+\delta,
\tag{4}
\]
and the same inequality with `S,S'` exchanged. Thus `B` is `(epsilon,delta)`-DP.

Finally, under `g=rho(h)`, one has `g(q)=h(q)` for every `q in [N]`. Therefore the error indicators agree pointwise on every `(q,y)`, which proves (2). No threshold shape has been imposed: `{0,1}^N` contains every binary function on `[N]`. Conversely every such vector canonically defines an arbitrary hypothesis on `[N]`, so the re-encoding loses no finite-game output.

### unit_002: proposition

**Proposition (Private with-replacement empirical wrapper).** \label{prop:step-001-private-wrapper}

Statement: Under Lemma~\ref{lem:step-001-finite-restriction} and the local conditional hypothesis that `B` is `(epsilon,delta)`-DP on ordered `n`-samples, let `M=9n`, `0<epsilon<=1`, and `delta>=0`. For an ordered labeled database
\[
D=(d_1,\ldots,d_M)\in([N]\times\{0,1\})^M,
\]
define `W_B(D)` by drawing `K_1,...,K_n` independently and uniformly from `[M]`, drawing
\[
g\sim B(d_{K_1},\ldots,d_{K_n}),
\]
and outputting `g`. Then `W_B` is `(epsilon,delta)`-DP under replacement adjacency on ordered `M`-row databases. This conclusion includes all repeated-index outcomes.

Proof / justification:

The wrapper is a well-defined kernel: for every output event `E`,
\[
W_B(D)(E)=\frac1{M^n}
\sum_{(k_1,\ldots,k_n)\in[M]^n}
B(d_{k_1},\ldots,d_{k_n})(E),
\tag{5}
\]
a finite mixture of measurable kernel evaluations.

Apply the corrected secrecy-of-the-sample lemma (C1) with source mechanism sample size `r=n` and source database size `s=M=9n`. The size condition is exact:
\[
s=M=9n\ge2n=2r.
\tag{6}
\]
It gives the valid privacy parameters
\[
\widetilde\epsilon
=6\epsilon\frac n{9n}=\frac23\epsilon,
\qquad
\widetilde\delta
=e^{6\epsilon n/(9n)}\frac{4n}{9n}\delta
=\frac49e^{2\epsilon/3}\delta.
\tag{7}
\]
For `0<epsilon<=1`,
\[
\widetilde\epsilon=\frac23\epsilon\le\epsilon.
\tag{8}
\]
For completeness,
\[
e=2+\sum_{j=2}^{\infty}\frac1{j!}
<2+\sum_{j=2}^{\infty}\frac1{2^{j-1}}=3,
\tag{9a}
\]
where `j!>=2^(j-1)` for `j>=2`, with strict inequality for some terms. Hence
\[
e^{2\epsilon/3}\le e^{2/3}<3^{2/3}<\frac94,
\]
where the final strict inequality follows by cubing, since `9<729/64`. Consequently
\[
\widetilde\delta
\le\frac49 e^{2/3}\delta
<\delta
\quad\text{when }\delta>0,
\qquad
\widetilde\delta=0=\delta
\quad\text{when }\delta=0.
\tag{9}
\]
Monotonicity of the two DP inequalities in both privacy parameters now yields `(epsilon,delta)`-DP.

For the repeated-row issue, let `D,D'` differ at row `j`, and let
\[
L=|\{i\in[n]:K_i=j\}|.
\]
The corrected source lemma conditions on every possible multiplicity `L=k` and sums its binomial probability. Thus (7) already accounts for the cases `k>=2`; the proof does not replace the selected samples by adjacent samples on those outcomes, nor does the present argument invoke group privacy or composition outside the cited calculation.

### unit_003: lemma

**Lemma (Zero-residual empirical-risk identity).** \label{lem:step-001-risk-identity}

Statement: Under the definitions of `Q_e` and `R_n` in `setting.md`, let `M=9n`, let `B` be any `{0,1}^N`-valued `n`-sample kernel, and let `W_B` be the wrapper of Proposition~\ref{prop:step-001-private-wrapper}. For every `t in [N]` and every ordered tuple `U=(u_1,...,u_M) in [N]^M`, define
\[
D_{t,U}=\bigl((u_1,\tau_t(u_1)),\ldots,
(u_M,\tau_t(u_M))\bigr).
\tag{10}
\]
Write its empirical zero-one loss as
\[
L_{D_{t,U}}(g)
:=\frac1M\sum_{s=1}^M
\mathbf 1\{g(u_s)\ne\tau_t(u_s)\}.
\tag{10a}
\]
Then
\[
\mathbb E_{g\sim W_B(D_{t,U})}
\left[\frac1M\sum_{s=1}^M
\mathbf 1\{g(u_s)\ne\tau_t(u_s)\}\right]
=\mathcal R_n(B,(t,U)).
\tag{11}
\]
The equality holds with zero residual even when `U` or the sampled indices contain repetitions.

Proof / justification:

By definition, `Q_(t,U)` is uniform on the labeled multiset of the `M` rows of `D_(t,U)`. Therefore, for every fixed `g in {0,1}^N`,
\[
L_{Q_{(t,U)}}(g)
=\frac1M\sum_{s=1}^M
\mathbf 1\{g(u_s)\ne\tau_t(u_s)\}.
\tag{12}
\]
This is an identity of finite sums and counts row multiplicities on both sides.

The wrapper indices `K_1,...,K_n` are iid uniform on `[M]`. Hence the selected labeled records
\[
S=(D_{t,U}[K_1],\ldots,D_{t,U}[K_n])
\]
have exactly the product law `Q_(t,U)^n`. This remains exact when distinct indices hold equal row values, because `Q_(t,U)` is a distribution on the multiset of row occurrences. Taking expectation in (12), first over `g` conditionally on `S` and then over the iid indices, gives
\[
\begin{aligned}
\mathbb E_{g\sim W_B(D_{t,U})}
\left[\frac1M\sum_{s=1}^M
\mathbf 1\{g(u_s)\ne\tau_t(u_s)\}\right]
&=\mathbb E_{S\sim Q_{(t,U)}^n,\,g\sim B(S)}
L_{Q_{(t,U)}}(g)\\
&=\mathcal R_n(B,(t,U)),
\end{aligned}
\tag{13}
\]
which is the claimed exact equality. No concentration, generalization, or population-to-empirical comparison is used.

### unit_004: proposition

**Proposition (Threshold-convention equivalence).** \label{prop:step-001-orientation}

Statement: Under the branch definition `tau_t(q)=1{q<=t}`, define
\[
\psi(q)=N+1-q,
\qquad
\lambda(1)=+1,
\qquad
\lambda(0)=-1.
\tag{14}
\]
Then the recordwise bijection
\[
(q,y)\longmapsto(\psi(q),\lambda(y))
\tag{15}
\]
maps every branch threshold-labeled tuple to a tuple labeled by the active Alon source's upper-oriented threshold, preserves ordered-tuple replacement adjacency and uniform empirical distributions, and induces a bijection of the full arbitrary-output cubes that preserves zero-one loss exactly.

Proof / justification:

Put `theta=N+1-t`. For every `q in [N]`,
\[
\lambda(\tau_t(q))=+1
\quad\Longleftrightarrow\quad
q\le t
\quad\Longleftrightarrow\quad
N+1-q\ge N+1-t
\quad\Longleftrightarrow\quad
\psi(q)\ge\theta.
\tag{16}
\]
Thus a lower-oriented branch threshold becomes an upper-oriented source threshold. In particular, after sorting the source coordinates increasingly, negative labels precede positive labels, exactly as stated before active `def:homog`.

Applying (15) row by row leaves tuple positions unchanged and is a bijection on the record space. Two ordered tuples therefore differ in zero or one positions before the map if and only if they do so after the map. Sampling a uniform row occurrence before applying the map is the same as applying the map and then sampling a uniform row occurrence, so uniform empirical distributions, including multiplicities, are preserved.

For `g in {0,1}^N`, define the source-sign hypothesis `Gamma(g)` by
\[
\Gamma(g)(\psi(q))=\lambda(g(q)).
\tag{17}
\]
This is a bijection between the full binary function cubes. For every branch labeled record `(q,y)`,
\[
\mathbf 1\{g(q)\ne y\}
=\mathbf 1\{\Gamma(g)(\psi(q))\ne\lambda(y)\}.
\tag{18}
\]
Hence empirical zero-one loss is exactly invariant. Because `Gamma` maps every bit vector, rather than only threshold vectors, the convention change preserves arbitrary improper outputs.

## Target-Step Assembly

Start with any candidate arbitrary-output `(epsilon,delta)`-DP `n`-sample threshold-domain kernel, with `0<epsilon<=1`. Lemma~\ref{lem:step-001-finite-restriction} measurably re-encodes its predictions on `[N]` as a kernel `B` taking values in the full finite cube `{0,1}^N`, with no privacy or risk change and no properness restriction.

Set `M=9n` and form `W_B` by iid uniform with-replacement row sampling. Proposition~\ref{prop:step-001-private-wrapper}, using the fully instantiated corrected secrecy lemma, gives the raw certificate
\[
\left(\frac23\epsilon,
\frac49e^{2\epsilon/3}\delta\right),
\]
which is dominated by `(epsilon,delta)` throughout `0<epsilon<=1`. The corrected multiplicity calculation includes repeated selection of the changed database row, so there is no group-privacy or composition residual.

For every `e=(t,U) in E_(n,N)`, Lemma~\ref{lem:step-001-risk-identity} gives
\[
\mathbb E_{g\sim W_B(D_{t,U})}L_{D_{t,U}}(g)
=\mathcal R_n(B,e)
\tag{19}
\]
exactly. Lemma~\ref{lem:step-001-finite-restriction} identifies the right-hand side with the risk of the original arbitrary-output kernel, and Proposition~\ref{prop:step-001-orientation} identifies both sides with the active Alon empirical-threshold interface after a loss- and adjacency-preserving bijection.

Thus the exact sketch-row claim holds for every candidate kernel and every `9n`-tuple `U`, uniformly through the endpoint `epsilon=1`, without using a hard prior or any dependency artifact.

## Explicit Rate Audit

- Exposed variables: `n`, `N`, `M=9n`, `epsilon`, `delta`, `t`, and `U`.
- Hidden constants may depend on: None. The only numerical constants are the explicit source constants `6`, `4`, and the fixed ratio `9`.
- Hidden constants may not depend on: `n`, `N`, `epsilon`, `delta`, the candidate kernel, `t`, `U`, output representation, or row multiplicities.
- Fixed quantities: zero-one loss; ordered replacement adjacency; iid with-replacement sampling; the empirical-wrapper ratio `M/n=9`.
- Probability mode: eventwise DP over wrapper and kernel randomness; exact expectation over iid row indices and kernel randomness for the risk identity.
- Horizon mode: fixed sample, with `n` kernel rows and `M=9n` empirical rows.
- Norm mode: expected empirical zero-one risk, exactly the `R_n` metric from `setting.md`.
- Admissibility conditions and auxiliary tolerances: `n>=1`, `N>=2`, `M=9n>=2n`, `0<epsilon<=1`, and `delta>=0`; there is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
  \frac23\epsilon\le\epsilon,
  \qquad
  \frac49e^{2\epsilon/3}\delta
  \le\frac49e^{2/3}\delta<\delta
  \quad(\delta>0),
  \]
  with both delta terms equal to zero when `delta=0`.
- Probability conversion: None. Equation (19) is an equality, not a high-probability-to-expectation conversion.
- Contribution to any Rate Specialization Bridge: This step exports the exact `M=9n` private empirical wrapper consumed by `step_002` through `step_005`; it introduces no asymptotic or privacy-parameter loss.
- Baseline-reduction check: the construction is independent of `k`. At `k=1` it is exactly the source one-chain `n`-from-`9n` empirical bridge, with the same arbitrary-output scope and no weaker conditional conclusion.

## Blockers

None.

## Notation And Assumption Notes

- `M=9n`: `public-facing`; directly defined by the accepted sketch row and exported unchanged.
- `B^arb`: `proof-local`; the original candidate before coordinate re-encoding. Only its finite restriction is exported.
- `B`: `public-facing`; the finite restriction `rho_# B^arb`. It is the minimal output interface consumed downstream.
- `W_B`: `public-facing`; the empirical wrapper on ordered `M`-row labeled databases.
- `rho`: `proof-local`; the measurable coordinate restriction in (1), defined solely from original output evaluations.
- `K_1,...,K_n`: `proof-local`; iid uniform row indices used to define `W_B`.
- `D`: `proof-local`; a generic ordered `M`-row labeled database used only to define the wrapper.
- `L`: `proof-local`; the multiplicity of the unique changed database row among `K_1,...,K_n`, derived from those indices and used only for the repeated-selection audit.
- `D_(t,U)`: `proof-local`; the labeled ordered tuple in (10), directly defined from the setting quantities `t`, `U`, and `tau_t`.
- `L_(D_(t,U))`: `proof-local`; the empirical average in (10a), exactly the setting loss `L_(Q_(t,U))` on the uniform row multiset.
- `psi`, `lambda`, `theta=N+1-t`, and `Gamma`: `proof-local`; bijections and the translated threshold cut used only to audit source convention compatibility.
- `r`, `s`, `K`, and `Sub_(r,s)[K]`: `proof-local` citation-instantiation placeholders; they translate the corrected source statement before the exact substitution `r=n`, `s=M`, and `K=B`.
- `2/3` and `(4/9)e^(2epsilon/3)`: `proof-local` privacy factors obtained by the exact substitution `r=n`, `s=M=9n` into the checked corrected secrecy lemma.
- Candidate-kernel privacy: a local conditional hypothesis of the target implication. No claim about a generated kernel, event, stability property, recurrence, or invariant is treated as primitive.
- Assumption scope: no stable `assump:*` condition, hard prior, homogeneous set, or algorithm-wise hardness statement is used.
- Diagnostic boundary: `global_proof.md` was read only after confirming that the paired current `global_proof_review.md` has status `ACCEPTED`. Its G1 decomposition suggested the planning split into finite restriction, secrecy, risk identity, and orientation checks. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to alter the sketch-row claim.
