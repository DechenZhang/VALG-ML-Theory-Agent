# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: `step_001`
- Unit attempt: 1
- Branch: `perspective_2/idea_9`
- Binding setting SHA-256: `27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2`
- Binding proof-sketch SHA-256: `40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8`
- Binding proof-sketch-review SHA-256: `2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7`
- Accepted global diagnostic/review used only as planning context:
  `aa100a493bee364e4d4103acae7f0a456bc28d30e1dcb5231a619f4ea71f7c05` /
  `a4d07969e5e1ee0923cffae83b66a0e5fe848396d4615b4e06250c4e11714418`

## Target Step Claim

Under the six stochastic/structural assumptions listed in the accepted
sketch row for `step_001`, derive a single once-drawn instance event
`E_inst` with probability at least \(1-r^{-10}\) on which the
realized columns are nonzero and satisfy the prescribed norm, product-weight,
and modewise-Gram bounds; the pair and triple product-Gram matrices have the
prescribed \(1/16\) gaps; the realized tensor has the prescribed two-sided
Frobenius norm bound; and the exact balanced rank-\(k\) target representation
exists inside the radius guard. Also derive, rather than assume, the finite
smoothing lower-tail branch

\[
 E_{\rm lb}:=\{\text{all realized columns are nonzero and }
                    \nu_{\rm real}\ge P^{-D_{\rm lb}}\},
 \qquad D_{\rm lb}=60,
\]

with \(\mathbb P(E_{\rm lb}^{c})\le r^{-20}\), and with the stronger
intersection estimate used by the once-drawn assembly. The exact
orthogonal/noiseless \(H=0,e=0\) branch is recorded separately as a baseline
interface and does not require this finite-smoothing lower-tail event.

- Dependencies: none.
- Row assumptions: `assump:base-column-conditioning`,
  `assump:base-product-balance`, `assump:gaussian-smoothing`,
  `assump:dimension-regime`, `assump:smoothing-scale`, and
  `assump:modewise-gram-margin`.
- Domain-only setting condition: `assump:rank-regime` supplies
  \(k\ge r\) when the \(k-r\) zero slots are appended and when the explicit
  \(P^{-60}\) scale is compared with the small-ball threshold. It is not used
  in Gaussian concentration or normalization.
- Technical challenge: simultaneous normalization of all perturbed columns,
  preservation of the signed normalized-Gram margin, and a uniform
  anti-concentration lower tail without imposing a primitive source-correlation
  lower bound.
- Output interface: `E_inst`, `E_lb`, \(Q^\star\),
  realized norm/weight/Gram bounds, pair/triple conditioning, and the
  radius-guard check.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

The proof has no accepted dependency artifacts. The only primitive conditions
used in the random-instance derivation are:

- `assump:base-column-conditioning`: every base column is nonzero
  and has Euclidean norm in \([\kappa^{-1},\kappa]\), with
  \(1\le\kappa\le r^{c_0}\).
- `assump:base-product-balance`:
  \(\max_j\bar\tau_j/\min_j\bar\tau_j\le\Gamma_\star\).
- `assump:gaussian-smoothing`: the three perturbation matrices have
  independent columns with law \({\cal N}(0,\rho^2I_n/n)\).
- `assump:dimension-regime`: \(n\ge C_{\rm dim}r\log(2r)\).
- `assump:smoothing-scale`: \(0<\rho\le1\) and
  \(\rho^{-1}\le r^{c_\rho}\).
- `assump:modewise-gram-margin`:
  \(\nu_{\rm base}+C_{\rm sm}\kappa\rho\sqrt{\log(2r)}
    \le\nu_\star=(C_\nu r\log(2r))^{-1}\), with the fixed constants
  sufficiently large.

The binding rank domain `assump:rank-regime` gives \(r<k\), hence
\(k\ge r\), only for zero-slot padding and the explicit \(P^{-60}\) rate
conversion. No generated event, Gram bound, weight bound, lower-tail
condition, or trajectory invariant is treated as a primitive assumption.
The accepted global diagnostic was read only for planning; it is not
evidence or a cited theorem in this artifact.

Derived invariants from accepted dependencies: none.

Local conditional hypotheses: none.

## Notation And Assumption Notes

All notation below is translated into the notation of `setting.md`.

- For \(M\in\{A,B,C\}\), write \(\bar M\) for the corresponding base matrix,
  \(\Xi_M=M-\bar M\), \(\bar D_M=\operatorname{diag}
  (\|\bar m_1\|_2,\ldots,\|\bar m_r\|_2)\), and
  \(\bar U_M=\bar M\bar D_M^{-1}\). These are setting-derived proof-local
  abbreviations.
- \(Z_M=\sqrt n\,\Xi_M/\rho\) and
  \(W_M=\Xi_M\bar D_M^{-1}\) are proof-local perturbation matrices.
- \(\xi_{j,M}\) denotes the \(j\)-th column of \(\Xi_M\), and
  \(m^{\rm raw}_{j,M}\) denotes the corresponding realized unnormalized
  column. Both aliases are proof-local.
- \(s_{j,M}=\|\bar u_{j,M}+w_{j,M}\|_2\), where \(w_{j,M}\) is the
  \(j\)-th column of \(W_M\), and
  \(D_{s,M}=\operatorname{diag}(s_{1,M},\ldots,s_{r,M})\). These are locally
  derived objects.
- \(\beta=3\kappa\rho\) is a derived perturbation radius. The inequalities
  \(\beta\le1/20\), \(1-\beta\le s_{j,M}\le1+\beta\), and all subsequent
  norm bounds are proved below; none is assumed.
- \(E_{\rm str}\) is an appendix-local simultaneous operator event. The
  public-facing events are \(E_{\rm lb}\) and
  \(E_{\rm inst}=E_{\rm str}\cap E_{\rm lb}\).
- \(C_{\rm sb}\) is the absolute Gaussian-density constant in Result G2.
  \(D_{\rm lb}=60\) is a fixed exponent compared directly with the
  setting-defined \(P=16nrk\kappa\rho^{-1}\).
- \(Q^\star\) is public-facing: its first \(r\) slots are the balanced target
  slots \(q_j^\star\) from `setting.md`, and its remaining \(k-r\)
  slots are joint zeros. The latter use only `assump:rank-regime`.
- The centered Grams \(E_M=G_M-I_r\) are proof-local expressions.
  The lower-tail objects \(m=\lfloor r/2\rfloor\), the disjoint pairs
  \((i_q,j_q)\), the conditional sigma-field \(\mathcal F\), the Gaussian
  scalars \(X_q\), the raw inner products \(Y_q\), and \(t_{\rm sb}\) are
  proof-local objects derived in
  Lemma~\ref{lem:p2-i9-s8-step001-lower-tail}. In particular,
  \(t_{\rm sb}\) is explicitly defined from setting quantities and the
  absolute density constant; it is not an admissibility condition.

Rate provenance: the only probability-bearing quantities are the one-drawn
Gaussian events. All constants hidden in \(O(\cdot)\) or in the fixed
exponent choices depend only on the fixed class constants, never on the
realized instance, commit order, tape, or accuracy \(\epsilon\).

## Local Lemma Map

| Local Unit ID | Unit type | Paper-ready result | Contribution |
| --- | --- | --- | --- |
| `unit_001` | lemma | **Perturbation-Operator Concentration**, `lem:p2-i9-s8-step001-perturbation` | Produces \(E_{\rm str}\) and a simultaneous relative perturbation bound. |
| `unit_002` | lemma | **Normalized-Column and Gram Transfer**, `lem:p2-i9-s8-step001-normalization` | Transfers the base margin to realized norms, weights, and signed normalized Grams. |
| `unit_003` | proposition | **Pair/Triple Conditioning and Exact Target**, `prop:p2-i9-s8-step001-target` | Produces the pair/triple gaps, tensor norm bounds, \(T\ne0\), \(Q^\star\), and the guard. |
| `unit_004` | lemma | **Disjoint-Pair Gaussian Lower Tail**, `lem:p2-i9-s8-step001-lower-tail` | Produces \(E_{\rm lb}\), its \(r^{-20}\) complement bound, and the stronger structural-intersection estimate. |
| `unit_005` | proposition | **Once-Drawn Instance Assembly**, `prop:p2-i9-s8-step001-instance` | Intersects the derived events and exports the exact step interface with probability \(1-r^{-10}\). |

## Cited Result Applications

### Result G1: Gaussian net operator bound

Let \(Z\in\mathbb R^{n\times r}\) have independent standard Gaussian
entries. A \(1/4\)-net \({\cal N}\) of the unit sphere in
\(\mathbb R^r\) has cardinality at most \(9^r\). For each fixed
\(v\in{\cal N}\), \(Zv\sim{\cal N}(0,I_n)\), and the chi-square Chernoff
bound gives

\[
 \Pr\{\|Zv\|_2>2\sqrt n\}\le e^{-n/2}.
\]

The net reconstruction inequality
\(\|Z\|_{\rm op}\le(4/3)\max_{v\in{\cal N}}\|Zv\|_2\) then gives

\[
 \Pr\{\|Z\|_{\rm op}>3\sqrt n\}\le9^r e^{-n/2}.
\]

The dimension assumption, with \(C_{\rm dim}\) fixed sufficiently large,
makes the three-mode union at most \(r^{-30}\). The only assumptions
discharged here are `assump:gaussian-smoothing` and
`assump:dimension-regime`.

### Result G2: Conditional Gaussian density bound

If \(Y\sim{\cal N}(\mu,\sigma^2)\), \(\sigma>0\), then for every \(a\ge0\),

\[
 \Pr\{|Y|\le a\}\le {2a\over\sqrt{2\pi}\,\sigma}.
\]

This follows by integrating the Gaussian density and is uniform in the
conditional mean \(\mu\). It is applied after conditioning on all even
columns and all odd-column perturbation coordinates except one independent
scalar per disjoint pair. The variance lower bound is proved locally from
Lemma~\ref{lem:p2-i9-s8-step001-normalization}; no source-correlation lower
bound is imported.

### Result G3: Schur/Kronecker compression

For compatible square matrices \(U,V\), the isometry
\(J_2e_j=e_j\otimes e_j\) satisfies

\[
 J_2^\top(U\otimes V)J_2=U\circ V,
 \qquad \|U\circ V\|_{\rm op}
 \le\|U\|_{\rm op}\|V\|_{\rm op}.
\]

For three factors, \(J_3e_j=e_j^{\otimes3}\) gives the analogous identity
and bound. The assumptions are only compatible finite dimensions; in this
step \(U,V\) are centered realized normalized Gram matrices.

### Result G4: Exact tensor Gram and balanced-slot identities

For \(\Phi_\star e_j=\phi_j=m_{j,A}\otimes m_{j,B}\otimes m_{j,C}\),
direct tensor inner-product multiplication gives

\[
 \Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C,
 \qquad
 \left\|\sum_j\tau_j\phi_j\right\|_F^2
 =\tau^\top(G_A\circ G_B\circ G_C)\tau.
\]

The setting-defined balance map sends
\((\tau_j^{1/3}m_{j,A},\tau_j^{1/3}m_{j,B},\tau_j^{1/3}m_{j,C})\)
to a tensor summand \(\tau_j\phi_j\). These are direct identities, not
external theorem assumptions.

## Explicit Rate Audit

- \(E_{\rm str}\) has failure probability at most \(r^{-30}\), and the
  lower-tail small-ball calculation gives
  \(\Pr(E_{\rm str}\cap E_{\rm lb}^c)\le r^{-40}\) and
  \(\Pr(E_{\rm lb}^c)\le r^{-20}\).
- The assembled event has
  \(\Pr(E_{\rm inst}^c)\le r^{-30}+r^{-40}\le r^{-10}\).
- Exposed variables are \(n,r,k,\kappa,\rho,\Gamma_\star,
  \nu_{\rm base},\nu_\star,P\), the realized norms/weights/Grams, and
  \(\|T\|_F\). The lower-tail rate is the explicit \(P^{-60}\).
- The proof uses Euclidean column norms, operator norms of signed Grams,
  and tensor Frobenius norms. It is once-drawn and independent of the
  transaction tape, history, and \(\epsilon\).
- Hidden constants may depend only on the fixed class constants
  \(c_0,c_\rho,C_{\rm dim},C_{\rm sm},C_\nu,\Gamma_\star,C_{\rm rank}\).
  They do not depend on \(n,r,k,\kappa,\rho\), the realized instance,
  transaction order, or \(\epsilon\).
- The fixed object is the deterministic base triple. The admissibility
  conditions are exactly the six row assumptions plus the binding rank
  domain for padding and the \(P\)-rate comparison. There is no horizon,
  trajectory union, tape probability, or auxiliary tolerance in this step.
- The comparison \(P^{-60}\le t_{\rm sb}\) uses only
  \(n\ge1,r\ge2,k\ge r,\kappa\ge1,\rho\le1\); it does not add a lower bound
  on \(\rho\) or on any source correlation.
- On the exact \(H=0,e=0\) branch all centered Gram terms and numerical
  terms are zero, so no \(E_{\rm lb}\)-based absorption is invoked.

## Local Derivation

### unit_001: lemma - Perturbation-Operator Concentration

**Paper-ready result.**

Paper-ready label: `lem:p2-i9-s8-step001-perturbation`.

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:gaussian-smoothing}, and
\ref{assump:dimension-regime}, define, for each mode \(M\in\{A,B,C\}\),

\[
 \Xi_M=M-\bar M,\qquad Z_M={\sqrt n\over\rho}\Xi_M,\qquad
 W_M=\Xi_M\bar D_M^{-1},\qquad \beta=3\kappa\rho.
\]

There is a derived event \(E_{\rm str}\) with

\[
 \Pr(E_{\rm str})\ge1-r^{-30},\qquad
 \max_M\|Z_M\|_{\rm op}\le3\sqrt n,\qquad
 \max_M\|W_M\|_{\rm op}\le\beta.
\]

**Proof.**

Apply Result G1 to \(Z_M\) in each of the three modes. A union bound over
the three nets gives

\[
 \Pr\left\{\max_M\|Z_M\|_{\rm op}>3\sqrt n\right\}
 \le3\,9^r e^{-n/2}\le r^{-30},
\]

where the last inequality is the fixed dimension-regime choice. Let
\(E_{\rm str}\) be the complementary event. Every base column has norm at
least \(\kappa^{-1}\), hence

\[
 \|\bar D_M^{-1}\|_{\rm op}\le\kappa,\qquad
 \|W_M\|_{\rm op}
 \le {\rho\over\sqrt n}\|Z_M\|_{\rm op}\kappa
 \le3\kappa\rho=\beta.
\]

This event is produced solely from the three named primitive assumptions and
contains no realized Gram, weight, or trajectory condition.

### unit_002: lemma - Normalized-Column and Gram Transfer

**Paper-ready result.**

Paper-ready label: `lem:p2-i9-s8-step001-normalization`.

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, on the derived event \(E_{\rm str}\) of
Lemma~\ref{lem:p2-i9-s8-step001-perturbation}, the fixed constants
\(C_{\rm sm},C_\nu\) can be chosen so that, simultaneously for all modes and
labels,

\[
 {1\over2\kappa}\le\|m^{\rm raw}_{j,M}\|_2\le2\kappa,\qquad
 (2\kappa)^{-3}\le\tau_j\le(2\kappa)^3,\qquad
 {\tau_{\max}\over\tau_{\min}}\le2\Gamma_\star,\qquad
 \nu_{\rm real}\le\nu_\star
 \quad\text{and hence}\quad \nu_{\rm real}\le2\nu_\star.
\]

Here \(m^{\rm raw}_{j,M}\) denotes the realized unnormalized column in mode
\(M\), while \(m_{j,M}\) is its normalized version from
`setting.md`.

**Proof.**

Write \(\bar u_{j,M}=\bar m_{j,M}/\|\bar m_{j,M}\|_2\) and let \(w_{j,M}\)
be the \(j\)-th column of \(W_M\). By
Lemma~\ref{lem:p2-i9-s8-step001-perturbation},

\[
 \|w_{j,M}\|_2\le\|W_M\|_{\rm op}\le\beta.
\]

The margin assumption implies

\[
 \beta=3\kappa\rho
 \le {3\nu_\star\over C_{\rm sm}\sqrt{\log(2r)}}
 \le {1\over20},
\]

after fixing the absolute constants sufficiently large. Therefore, with
\(s_{j,M}=\|\bar u_{j,M}+w_{j,M}\|_2\),

\[
 1-\beta\le s_{j,M}\le1+\beta,\qquad
 \|m^{\rm raw}_{j,M}\|_2
 =\|\bar m_{j,M}\|_2s_{j,M}
 \in[\kappa^{-1}(1-\beta),\kappa(1+\beta)]
 \subset[(2\kappa)^{-1},2\kappa].
\]

In particular, every realized normalized column exists. Let
\(D_{s,M}=\operatorname{diag}(s_{1,M},\ldots,s_{r,M})\). The realized
normalized-column matrix is

\[
 U_M=(\bar U_M+W_M)D_{s,M}^{-1}.
\]

Because \(\|\bar U_M\|_{\rm op}^2=\|\bar G_M\|_{\rm op}
\le1+\nu_{\rm base}\le2\),

\[
 \|D_{s,M}^{-1}\|_{\rm op}\le{1\over1-\beta},\qquad
 \|D_{s,M}^{-1}-I\|_{\rm op}\le{\beta\over1-\beta}.
\]

Consequently,

\[
 \begin{aligned}
 \|U_M-\bar U_M\|_{\rm op}
 &\le \|W_M\|_{\rm op}\|D_{s,M}^{-1}\|_{\rm op}
   +\|\bar U_M\|_{\rm op}\|D_{s,M}^{-1}-I\|_{\rm op}\\
 &\le {\,\beta+2\beta\,\over1-\beta}
 \le4\beta.
 \end{aligned}
\]

For \(G_M=U_M^\top U_M\) and
\(\bar G_M=\bar U_M^\top\bar U_M\),

\[
 \begin{aligned}
 \|G_M-\bar G_M\|_{\rm op}
 &\le2\|\bar U_M\|_{\rm op}\|U_M-\bar U_M\|_{\rm op}
       +\|U_M-\bar U_M\|_{\rm op}^2\\
 &\le16\beta+16\beta^2\le17\beta.
 \end{aligned}
\]

Since \(17\beta=51\kappa\rho\), choose the fixed \(C_{\rm sm}\) so that
\(51\kappa\rho\le C_{\rm sm}\kappa\rho\sqrt{\log(2r)}\). The primitive
margin then gives

\[
 \nu_{\rm real}=\max_M\|G_M-I\|_{\rm op}
 \le\nu_{\rm base}+17\beta
 \le\nu_\star.
\]

The realized product weight is

\[
 \tau_j=\bar\tau_j\prod_{M\in\{A,B,C\}}s_{j,M},
\]

and the just-proved raw column bounds give
\((2\kappa)^{-3}\le\tau_j\le(2\kappa)^3\). Moreover,

\[
 {\tau_{\max}\over\tau_{\min}}
 \le\Gamma_\star\left({1+\beta\over1-\beta}\right)^3
 \le\Gamma_\star\left({21\over19}\right)^3
 <2\Gamma_\star.
\]

This proves all claims in the unit, including nonvanishing. The stronger
\(\nu_{\rm real}\le\nu_\star\) is retained for the pair/triple reserve.

### unit_003: proposition - Pair/Triple Conditioning and Exact Target

**Paper-ready result.**

Paper-ready label: `prop:p2-i9-s8-step001-target`.

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, the derived conclusions of
Lemma~\ref{lem:p2-i9-s8-step001-normalization}, and the domain condition
Assumption~\ref{assump:rank-regime} for \(k\ge r\),

\[
 \max_{M\ne N}\|G_M\circ G_N-I_r\|_{\rm op}\le{1\over16},\qquad
 \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}\le{1\over16},
\]

and the exact balanced rank-\(k\) state \(Q^\star\) represents \(T\) and
lies inside the radius guard. Moreover,

\[
 \sqrt{15/16}\,\|\tau\|_2
 \le\|T\|_F
 \le\sqrt{17/16}\,\|\tau\|_2,\qquad T\ne0.
\]

**Proof.**

Put \(E_M=G_M-I_r\). Each \(E_M\) is symmetric with zero diagonal. Hence,
for \(M\ne N\),

\[
 G_M\circ G_N-I_r=E_M\circ E_N.
\]

Result G3 and Lemma~\ref{lem:p2-i9-s8-step001-normalization} give

\[
 \|G_M\circ G_N-I_r\|_{\rm op}
 \le\|E_M\|_{\rm op}\|E_N\|_{\rm op}
 \le\nu_{\rm real}^2.
\]

For the triple product, the zero diagonals remove every term containing an
identity factor. Thus the exact entrywise identity is

\[
 G_A\circ G_B\circ G_C-I_r
 =E_A\circ E_B\circ E_C.
\]

Applying the three-factor form of Result G3 yields

\[
 \|G_A\circ G_B\circ G_C-I_r\|_{\rm op}
 \le\nu_{\rm real}^3.
\]

The fixed \(C_\nu\) makes
\(\nu_\star^2\le1/16\) and \(\nu_\star^3\le1/16\);
Lemma~\ref{lem:p2-i9-s8-step001-normalization} therefore proves both
displayed gaps. Orthogonal compression shows that the same bounds hold for
every common principal restriction of the pair and triple Grams.

For the realized unit columns, direct tensor inner products give

\[
 \Phi_\star^*\Phi_\star=G_A\circ G_B\circ G_C,\qquad
 \|T\|_F^2=\tau^\top(\Phi_\star^*\Phi_\star)\tau.
\]

The triple gap implies

\[
 {15\over16}\|\tau\|_2^2
 \le\|T\|_F^2
 \le{17\over16}\|\tau\|_2^2.
\]

All \(\tau_j\) are positive because
Lemma~\ref{lem:p2-i9-s8-step001-normalization} proved nonzero realized
columns, so \(T\ne0\).

For \(j\in[r]\), define

\[
 q_j^\star=\bigl(\tau_j^{1/3}m_{j,A},
                    \tau_j^{1/3}m_{j,B},
                    \tau_j^{1/3}m_{j,C}\bigr).
\]

The three factor norms are equal to \(\tau_j^{1/3}\), and their tensor
product is \(\tau_j\phi_j\). Append \(k-r\) joint-zero slots, which is legal
because \(k\ge r\). Thus \(\Psi(Q^\star)=T\) exactly. Finally,

\[
 \tau_j^{1/3}
 =\bigl(\|a_j\|_2\|b_j\|_2\|c_j\|_2\bigr)^{1/3}
 \in[(2\kappa)^{-1},2\kappa]
 \quad\text{and}\quad 2\kappa<R_{\max}=8\kappa.
\]

Every active factor is therefore inside the setting-defined radius guard,
and zero slots are inside it trivially. This is an exact target, not an
initializer supplied to the algorithm.

### unit_004: lemma - Disjoint-Pair Gaussian Lower Tail

**Paper-ready result.**

Paper-ready label: `lem:p2-i9-s8-step001-lower-tail`.

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, on the event \(E_{\rm str}\) from
Lemma~\ref{lem:p2-i9-s8-step001-perturbation}, and under
Assumption~\ref{assump:rank-regime} only for \(k\ge r\) in the explicit
\(P\)-rate comparison, define

\[
 E_{\rm lb}=\{\text{all realized columns are nonzero and }
                    \nu_{\rm real}\ge P^{-60}\},\qquad
 P=16nrk\kappa\rho^{-1}.
\]

Then

\[
 \Pr(E_{\rm str}\cap E_{\rm lb}^{c})\le r^{-40},\qquad
 \Pr(E_{\rm lb}^{c})\le r^{-20}.
\]

The event is derived; it is not a lower-bound assumption on the primitive
source or on any deterministic Gram entry.

**Proof.**

Every Gaussian-perturbed column has an absolutely continuous law, so the
probability of a zero realized column is zero. Let
\(m=\lfloor r/2\rfloor\), and in mode \(A\) select disjoint pairs
\((i_q,j_q)=(2q-1,2q)\), \(1\le q\le m\). On \(E_{\rm str}\),
Lemma~\ref{lem:p2-i9-s8-step001-normalization} gives

\[
 (2\kappa)^{-1}\le\|a_{j_q}\|_2,\|a_{i_q}\|_2\le2\kappa.
\]

For each \(q\), condition on all even columns and on all perturbation
coordinates of the odd column \(\xi_{i_q,A}\) orthogonal to
\(v_q=a_{j_q}/\|a_{j_q}\|_2\). The \(v_q\)'s are measurable with respect to
the even columns. The remaining scalars

\[
 X_q=\langle\xi_{i_q,A},v_q\rangle
\]

are conditionally independent \(N(0,\rho^2/n)\) variables. Conditional on
the resulting sigma-field \(\mathcal F\), the raw cross-inner product is

\[
 Y_q:=\langle a_{i_q},a_{j_q}\rangle
 =\mu_q+\|a_{j_q}\|_2X_q,\qquad
 \operatorname{sd}(Y_q\mid\mathcal F)
 ={\,\rho\|a_{j_q}\|_2\over\sqrt n}
 \ge{\rho\over2\kappa\sqrt n},
\]

where \(\mu_q\) is an arbitrary \(\mathcal F\)-measurable mean. Apply Result
G2 with \(a=4\kappa^2t\). Uniformly over the mean, on the norm part of
\(E_{\rm str}\),

\[
 \Pr\{|Y_q|\le4\kappa^2t\mid\mathcal F\}
 \le C_{\rm sb}{\kappa^3\sqrt n\over\rho}\,t.
 \tag{LB-density}
\]

Here one may take \(C_{\rm sb}=16/\sqrt{2\pi}<7\).

If \(E_{\rm str}\) occurs and \(\nu_{\rm real}<t\), then every selected
normalized Gram entry obeys

\[
 |\langle m_{i_q,A},m_{j_q,A}\rangle|\le t,\qquad
 |Y_q|\le(2\kappa)^2t=4\kappa^2t.
\]

Set

\[
 t_{\rm sb}:={\rho\over C_{\rm sb}\kappa^3\sqrt n\,r^{40}}.
\]

The \(X_q\)'s are conditionally independent, so (LB-density) and the above
implication give

\[
 \Pr\{E_{\rm str},\ \nu_{\rm real}<t_{\rm sb}\mid\mathcal F\}
 \le (r^{-40})^m\le r^{-40}.
\]

Integrating over \(\mathcal F\) proves the same unconditional intersection
bound.

It remains to compare \(P^{-60}\) with \(t_{\rm sb}\). Direct division,
without discarding any parameter, gives

\[
 {P^{-60}\over t_{\rm sb}}
 =C_{\rm sb}16^{-60}n^{-119/2}r^{-20}k^{-60}
   \kappa^{-57}\rho^{59}.
\]

Because \(n\ge1\), \(r\ge2\), \(k\ge r\), \(\kappa\ge1\), and
\(0<\rho\le1\), the right-hand side is at most
\(C_{\rm sb}16^{-60}2^{-80}<1\). Hence \(P^{-60}\le t_{\rm sb}\) uniformly
over the full binding parameter class.

Thus \(E_{\rm str}\cap E_{\rm lb}^{c}\) is contained in
\(\{E_{\rm str},\nu_{\rm real}<t_{\rm sb}\}\), proving the \(r^{-40}\) bound.
Combining with \(\Pr(E_{\rm str}^{c})\le r^{-30}\) gives

\[
 \Pr(E_{\rm lb}^{c})\le r^{-30}+r^{-40}\le r^{-20}.
\]

No independence between \(E_{\rm str}\) and \(E_{\rm lb}\) was used.

### unit_005: proposition - Once-Drawn Instance Assembly

**Paper-ready result.**

Paper-ready label: `prop:p2-i9-s8-step001-instance`.

Under Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale}, and
\ref{assump:modewise-gram-margin}, together with
Assumption~\ref{assump:rank-regime} only for the \(P^{-60}\) rate conversion
and rank-\(k\) target padding, let

\[
 E_{\rm inst}:=E_{\rm str}\cap E_{\rm lb}.
\]

Then

\[
 \Pr(E_{\rm inst})\ge1-r^{-10},
\]

and every outcome in \(E_{\rm inst}\) has all conclusions of
Lemmas~\ref{lem:p2-i9-s8-step001-normalization},
\ref{lem:p2-i9-s8-step001-lower-tail}, and
Proposition~\ref{prop:p2-i9-s8-step001-target}: nonvanishing and norm/weight
bounds, \(\nu_{\rm real}\le2\nu_\star\), pair/triple \(1/16\) gaps, the
two-sided tensor norm bound, \(T\ne0\), \(E_{\rm lb}\), and the exact guarded
rank-\(k\) target \(Q^\star\).

**Proof.**

By Lemmas~\ref{lem:p2-i9-s8-step001-perturbation} and
\ref{lem:p2-i9-s8-step001-lower-tail},

\[
 \Pr(E_{\rm inst}^{c})
 =\Pr(E_{\rm str}^{c}\cup(E_{\rm str}\cap E_{\rm lb}^{c}))
 \le r^{-30}+r^{-40}
 \le r^{-10}
\]

for \(r\ge2\). On the intersection,
Lemma~\ref{lem:p2-i9-s8-step001-normalization} and
Proposition~\ref{prop:p2-i9-s8-step001-target} apply simultaneously because
they are deterministic consequences of the same realized columns. The raw
structural event
\(E_{\rm str}\setminus E_{\rm lb}\) is intentionally retained as a valid
branch for downstream arguments that keep numerical terms explicit; no
\(E_{\rm lb}\)-only absorption is asserted there.

The exact orthogonal/noiseless baseline is separate. If the centered
normalized Grams vanish (\(H_A=H_B=H_C=0\)) and the numerical tolerance is
zero (\(e=0\)), then the pair and triple gaps are equalities, the target
construction above represents \(T\) exactly, and the centered-Gram and
numerical inputs consumed by later steps are zero. If the weights are also
equal to \(\tau_0\), then \(\|T\|_F=\sqrt r\,\tau_0\) exactly. The
finite-smoothing anti-concentration branch is unnecessary in that limit, so
the baseline is
not obtained by adding a false lower bound on \(\nu_{\rm real}\).

## Target-Step Assembly

Lemma~\ref{lem:p2-i9-s8-step001-perturbation} establishes the one-drawn
perturbation event. On that event,
Lemma~\ref{lem:p2-i9-s8-step001-normalization} proves nonvanishing, the
\(2\kappa\) raw norm envelope, the \(2\Gamma_\star\) product-weight ratio,
and the signed normalized-Gram margin.
Proposition~\ref{prop:p2-i9-s8-step001-target} applies Schur/Kronecker
compression and the exact tensor Gram identity to obtain the pair/triple
conditioning, the two-sided \(\|T\|_F\) bound, \(T\ne0\), and the exact
balanced target with joint-zero padding. Independently,
Lemma~\ref{lem:p2-i9-s8-step001-lower-tail} derives the lower-tail event
from conditional Gaussian density estimates on disjoint pairs and exposes
the explicit \(P^{-60}\) scale.
Proposition~\ref{prop:p2-i9-s8-step001-instance} intersects these outputs
and gives

\[
 \Pr(E_{\rm inst})\ge1-r^{-10},\qquad
 E_{\rm inst}\subseteq E_{\rm lb},\qquad
 Q^\star\in\text{the setting-defined radius guard}.
\]

This is exactly the accepted `step_001` row. No later ledger,
history, activation, source-normal, certificate, or tape conclusion is used,
and no statement from `global_proof.md` is treated as evidence.

## Baseline And Downstream Interface

The public outputs are the realized \(A,B,C,T\), the event \(E_{\rm inst}\),
the branch \(E_{\rm lb}\), \(Q^\star\), the norm/weight/Gram bounds, and the
pair/triple gaps. Downstream `step_002` may derive absolute-Gram
source and transfer bounds from these signed-Gram conclusions; this artifact
does not assume those lifted bounds. Downstream prefix and activation steps
may use \(E_{\rm lb}\) only for their explicitly named branch-qualified
comparisons. On the exact \(H=e=0\) baseline, they instead use equality and
zero source terms.

## Blockers

None. Every local unit and the target-step assembly is closed under the
allowed assumptions, with explicit probability, parameter, norm, and
baseline interfaces.
