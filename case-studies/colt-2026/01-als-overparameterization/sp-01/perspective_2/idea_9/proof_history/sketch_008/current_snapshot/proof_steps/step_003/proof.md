# Proof Step

## Step Identity

- Sketch attempt: 8
- Step ID: step_003
- Unit attempt: 3
- Branch: perspective_2/idea_9
- Binding setting SHA-256:
  27315acf705cd791f29d341efaa11aae66803d02b9c240fc613cce06cc57c4b2
- Binding proof-sketch SHA-256:
  40782b585d3292d25d1a921425470ade621f1dc6180a2f52bb05b94c96375fe8
- Binding proof-sketch-review SHA-256:
  2a5834040fccae1871b1346184eca7458d479d525f8cdcb8a2e4110baa20a4c7
- Accepted dependency step_001 proof SHA-256:
  7bac568976f9830625019e4e6b912a4b1779a742f61e37f92a8aeea360b6101a
- Accepted dependency step_001 review SHA-256:
  f0b185f9f467dbf6d2e3cb6216427cc860005a7da1a90da60b288dc12f345d7b
- Accepted dependency step_002 proof SHA-256:
  d75c95f11da92e28502228b747005659dec9020ad14f40ca98d9fdabdab5846a
- Accepted dependency step_002 review SHA-256:
  1ef20d82435ff0583b185471678dfcd4df77e83894e26d674f9d11dea5873a82

The attempt-2 same-step proof and its triggering review are used only for
this scoped statement repair. No archived proof or global diagnostic is used.

## Target Step Claim

- Intended claim: For any legal conditional history, prove convergent
  entrywise-\(\ell_1\) and rootwise-block-\(\ell_2\) Neumann envelopes,
  including the empty history, and define the local zero-diagonal precommit
  \(z\) profile from \(\Theta\) without asserting its rowwise norm.
- Dependencies: accepted sketch-attempt-8 step_002.
- Assumptions used: the derived event \({\cal E}_{\rm inst}\) and an
  explicitly conditional, setting-defined actual-history array \(A_I\).
- Technical challenge: nonnegative resolvent convergence in two compatible
  norms and the exact local root/mode/label convention.
- Intended proof tool: geometric Neumann series in both induced norms,
  followed by the algebraic zero-diagonal definition in (J-z).
- Output target: the complete candidate-indexed \(\Theta_I\), the
  empty-prefix \(\Theta_\varnothing\), and the local precommit \(z\) profiles
  consumed by steps_006 and step_007.
- Rate interface: R2; expose static, history, and numerical source terms
  separately, without a premature rowwise or all-prefix simplification.
- Sketch-row review status at producer dispatch: PENDING.

Binding sketch row (copied): step_003; intended claim: for any legal
conditional history, prove convergent l1 and rootwise Neumann envelopes,
including empty history, and define the local zero-diagonal precommit z
profile from Theta without asserting its rowwise norm; dependencies:
step_002; assumptions used: derived event and explicitly conditional
\(A_I\); technical challenge: nonnegative resolvent, norm compatibility,
and exact local array convention; intended tool: geometric Neumann series in
both induced norms plus the algebraic J-z definition; output:
\(\Theta_I,\Theta_\varnothing\), and local precommit z for steps_006 and
step_007; rate interface: R2 with static/history/numerical entries exposed;
review status: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

None are invoked directly in this conditional step. The primitive
assumptions underlying the realized event and the static transfer estimates
were discharged by the accepted step_001 and step_002 proofs. In particular,
no history budget, matching error, row-profile estimate, recurrence closure,
or generated smallness condition is promoted to a primitive assumption.

### Derived invariants supplied by accepted dependencies

The accepted step_001 proof and review at the hashes above supply
Proposition~\ref{prop:p2-i9-s8-step001-instance}. On its once-drawn event
\({\cal E}_{\rm inst}\), all realized columns are nonzero, every
\(\tau_j>0\), and all setting-defined normalized source objects are finite.

The accepted step_002 proof and review supply
Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
Proposition~\ref{prop:p2-i9-s8-step002-gap}. In current notation they give:

\[
 S\in{\cal Z}_+,\qquad
 \|S\|_1\le3r\nu_{\rm real}^2
 (1+\sqrt r\,\nu_{\rm real}),
 \tag{D1}
\]

\[
 \|S\|_{{\rm root},2}\le
 \sqrt3\,\nu_{\rm real}^2
 (1+\sqrt r\,\nu_{\rm real}),
 \tag{D2}
\]

the exact nonnegative, root-preserving transfer \({\cal T}\), and

\[
 q_{\rm res}:=C_0\Gamma_\star\|{\cal T}\|_{1\to1}\le{1\over4},
 \qquad
 q_{\rm row}:=C_0\Gamma_\star
 \|{\cal T}\|_{{\rm root},2\to{\rm root},2}\le{1\over4}.
 \tag{D3}
\]

These are static accepted outputs, not assumptions about a generated
trajectory.

### Local conditional hypotheses

Fix an arbitrary legal precommit history on \({\cal E}_{\rm inst}\): a
finite protected state \(I\) with \(|I|<r\), an already recorded injection
\(\pi_I:I\to[r]\), its finite protected-slot records and analysis signs, and
the corresponding actual accepted errors \(E_i\). Let
\(U_I=[r]\setminus\pi_I(I)\), and define \(A_I\) exactly by (R-hist-src),
with entries outside unresolved roots and all diagonal entries set to zero.

This is an explicitly conditional local hypothesis. No inequality for
\(A_I\), \(E_i\), \(\Theta_I\), or any stored direction is assumed. The
empty prefix is included with
\(I=\varnothing\), \(U_I=[r]\), and \(A_\varnothing=0\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | **Admissibility of the Actual-History Source**, lem:p2-i9-s8-step003-history: under Proposition~\ref{prop:p2-i9-s8-step001-instance}, every legal conditional prefix produces a finite \(A_I\in{\cal Z}_+\), and \(A_\varnothing=0\). | Verifies that the conditional Neumann source is a legal finite array without assuming a history budget. |
| unit_002 | proposition | **Simultaneous Two-Norm Statewise Resolvent**, prop:p2-i9-s8-step003-resolvent: for any legal finite conditional precommit history \(I\) on the accepted event \({\cal E}_{\rm inst}\), with \(A_I\) defined exactly by (R-hist-src) and Lemma~\ref{lem:p2-i9-s8-step003-history} supplying its finite nonnegative realization, under Lemma~\ref{lem:p2-i9-s8-step002-source}, Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and Proposition~\ref{prop:p2-i9-s8-step002-gap}, the Neumann series defining \(\Theta_I\) converges to the unique resolvent solution in both required norms, with explicit unsimplified static/history/numerical bounds. Here the source lemma supplies (D1)--(D2), the transfer proposition supplies the exact \({\cal T}\), and the gap proposition supplies (D3). | Produces the full candidate-indexed \(\Theta_I\) and proves the exact two-norm envelope. |
| unit_003 | proposition | **Empty Prefix and Zero-Diagonal Precommit Profiles**, prop:p2-i9-s8-step003-precommit: under Proposition~\ref{prop:p2-i9-s8-step003-resolvent}, the empty-prefix envelope is explicit, and every unresolved candidate has the exact finite nonnegative profile (J-z), with diagonal zero and no asserted rowwise bound. | Exports \(\Theta_\varnothing\) and the local \(z\) interface in producer order. |

## Cited Result Applications

### Dependency D1: accepted once-drawn instance result

Source: Proposition~\ref{prop:p2-i9-s8-step001-instance} in the accepted
sketch-attempt-8 step_001 artifact.

Restated conclusion used here: on \({\cal E}_{\rm inst}\), every realized
normalized source vector and every positive product weight \(\tau_j\) is
well-defined and finite. Consequently, for a finite legal protected prefix,
each contraction in (R-hist-src) is a finite real number.

Object mapping: the realized \(A,B,C\), source atoms, \(\tau_j\), protected
errors \(E_i\), and event are exactly the binding setting objects. No
population, whitened, projected, or archived object is substituted.

Assumption discharge: the dependency proof and its accepted review already
discharged Assumptions~\ref{assump:base-column-conditioning},
\ref{assump:base-product-balance},
\ref{assump:gaussian-smoothing},
\ref{assump:dimension-regime},
\ref{assump:smoothing-scale},
\ref{assump:modewise-gram-margin}, and
\ref{assump:rank-regime}. This step consumes only its accepted derived
conclusions.

### Dependency D2: accepted static source, transfer, and gaps

Source:
Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
Proposition~\ref{prop:p2-i9-s8-step002-gap} in the accepted
sketch-attempt-8 step_002 artifact.

Restated conclusion used here: Lemma~\ref{lem:p2-i9-s8-step002-source}
supplies \(S\in{\cal Z}_+\) and the two source bounds (D1)--(D2);
Proposition~\ref{prop:p2-i9-s8-step002-transfer} supplies the exact
setting-defined nonnegative root-preserving transfer \({\cal T}\); and
Proposition~\ref{prop:p2-i9-s8-step002-gap} supplies the two scaled induced
norm gaps (D3). The accepted proof also establishes that
in the exact specialization
\(H_A=H_B=H_C=0\) and \(P^{-D_{\rm stat}}=0\), one has
\(S=0\), \({\cal T}=0\), and \(q_{\rm res}=q_{\rm row}=0\).

Object mapping: the domain \({\cal D}\), cone \({\cal Z}_+\), array norms,
\(S\), \({\cal T}\), \(C_0\), and \(\Gamma_\star\) are precisely those in
the current setting. In particular, the output diagonal is deleted exactly
as required by (R-ledger) and (J-z).

Assumption discharge: all static event, Gram, and constant-selection
conditions are discharged in the accepted dependency. No local history
condition enters its transfer bounds.

### Internal result interfaces

- Lemma~\ref{lem:p2-i9-s8-step003-history} supplies only finite
  nonnegativity of \(A_I\), not a quantitative history budget.
- Proposition~\ref{prop:p2-i9-s8-step003-resolvent} supplies the unique
  full-array resolvent and the two raw conditional norm estimates.
- Proposition~\ref{prop:p2-i9-s8-step003-precommit} supplies the empty base
  and exact local \(z\) definition.

No external theorem is invoked. The Neumann argument is proved directly
below, including its remainder and uniqueness calculations.

## Local Derivation

### unit_001: lemma - Admissibility of the Actual-History Source

**Paper-ready result.**

Paper-ready label: lem:p2-i9-s8-step003-history.

Under the accepted event conclusion of
Proposition~\ref{prop:p2-i9-s8-step001-instance}, if \(I\) is any legal
conditional precommit history described above, then the setting formula
(R-hist-src), together with its cyclic versions and zero extension, defines
a finite array \(A_I\in{\cal Z}_+\). For the empty history,
\(A_\varnothing=0\).

**Proof.**

On \({\cal E}_{\rm inst}\), every \(\tau_j\) is strictly positive. For each
\(i\in I\), the protected factors, the balanced scalar \(g_i\), and the
source atom matched by the recorded injection are finite-dimensional finite
vectors. Hence

\[
 E_i=g_i^3u_i\otimes v_i\otimes w_i-\tau_{\pi_I(i)}
 m_{\pi_I(i),A}\otimes m_{\pi_I(i),B}
 \otimes m_{\pi_I(i),C}
\]

is a finite tensor. Therefore, for every \(j\in U_I\), \(\ell\ne j\), and
mode \(A\),

\[
 A_{I;j,A,\ell}
 ={1\over\tau_j}\sum_{i\in I}
 \left|\left\langle E_i,
 m_{\ell,A}\otimes m_{j,B}\otimes m_{j,C}
 \right\rangle\right|
\]

is a finite nonnegative number. The same argument applies cyclically. There
are finitely many indices, and the prescribed entries for
\(j\notin U_I\) and \(j=\ell\) are zero. Thus \(A_I\) is a finite member of
\({\cal Z}_+\). If \(I=\varnothing\), every displayed sum is empty and
equals zero, proving \(A_\varnothing=0\).

This argument proves only admissibility. It neither replaces the contractions
by \(\sum_i\|E_i\|_F\) nor assumes or derives a uniform history budget.

### unit_002: proposition - Simultaneous Two-Norm Statewise Resolvent

**Paper-ready result.**

Paper-ready label: prop:p2-i9-s8-step003-resolvent.

For any legal finite conditional precommit history \(I\) on the accepted
event \({\cal E}_{\rm inst}\), let \(A_I\) be the corresponding exact
actual-history array defined by (R-hist-src). Under
Lemma~\ref{lem:p2-i9-s8-step003-history}, which supplies the finite
nonnegative realization of this \(A_I\),
Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
Proposition~\ref{prop:p2-i9-s8-step002-gap}; here the source lemma provides
(D1)--(D2), the transfer proposition provides the exact \({\cal T}\), and
the gap proposition provides (D3). Set

\[
 e_{\rm num}=P^{-D_{\rm stat}},\qquad
 {\cal L}=C_0\Gamma_\star{\cal T},\qquad
 b_I=C_0\Gamma_\star
 \left(S+A_I+e_{\rm num}\mathbf 1\right),
 \tag{1}
\]

where \(\mathbf1\) is the all-ones array on
\({\cal D}\). Then the partial sums

\[
 \Theta_I^{(N)}=\sum_{s=0}^{N}{\cal L}^s b_I
 \tag{2}
\]

converge, as \(N\to\infty\), in both the entrywise-\(\ell_1\) norm and the
rootwise-block-\(\ell_2\) norm to the same finite nonnegative array

\[
 \Theta_I=\sum_{s\ge0}{\cal L}^s b_I
 =(\operatorname{Id}_{\cal D}-{\cal L})^{-1}b_I.
 \tag{3}
\]

It is the unique solution of
\((\operatorname{Id}_{\cal D}-{\cal L})\Theta_I=b_I\). Moreover,

\[
 \begin{aligned}
 \|\Theta_I\|_1
 &\le {C_0\Gamma_\star\over1-q_{\rm res}}
 \left[
 3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\|A_I\|_1+3r(r-1)e_{\rm num}
 \right],
 \end{aligned}
 \tag{4}
\]

and

\[
 \begin{aligned}
 \|\Theta_I\|_{{\rm root},2}
 &\le {C_0\Gamma_\star\over1-q_{\rm row}}
 \left[
 \sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\|A_I\|_{{\rm root},2}
 +\sqrt{3(r-1)}e_{\rm num}
 \right].
 \end{aligned}
 \tag{5}
\]

The terms in (4)-(5) are, in order, the static source, actual-history
source, and numerical source. No term is simplified or absorbed.

**Proof.**

Lemma~\ref{lem:p2-i9-s8-step003-history} and
Lemma~\ref{lem:p2-i9-s8-step002-source} (which supplies (D1)), together
with \(e_{\rm num}\ge0\), show that \(b_I\in{\cal Z}_+\).
Proposition~\ref{prop:p2-i9-s8-step002-transfer} supplies the exact
nonnegative transfer \({\cal T}\), hence every term in (2) and every partial sum
is nonnegative.

For either norm \(\|\cdot\|_\alpha\), with
\(\alpha=1\) or \(\alpha=({\rm root},2)\), write respectively
\(q_\alpha=q_{\rm res}\) or \(q_\alpha=q_{\rm row}\). By
Proposition~\ref{prop:p2-i9-s8-step002-gap}, which supplies (D3),

\[
 \|{\cal L}\|_{\alpha\to\alpha}=q_\alpha\le{1\over4}.
 \tag{6}
\]

For integers \(M>N\), the triangle inequality and submultiplicativity give

\[
 \begin{aligned}
 \|\Theta_I^{(M)}-\Theta_I^{(N)}\|_\alpha
 &\le\sum_{s=N+1}^{M}
 \|{\cal L}\|_{\alpha\to\alpha}^s\|b_I\|_\alpha\\
 &\le {q_\alpha^{N+1}\over1-q_\alpha}\|b_I\|_\alpha.
 \end{aligned}
 \tag{7}
\]

Thus the same partial sums are Cauchy in both finite-dimensional normed
spaces. They converge in both norms. Since entrywise-\(\ell_1\) convergence
implies coordinatewise convergence, and the rootwise convergence comes from
the same coordinate sequence, the two limits coincide; call the common
limit \(\Theta_I\). Letting \(M\to\infty\) in (7) also gives the exact tail
bound

\[
 \left\|\Theta_I-\sum_{s=0}^{N}{\cal L}^s b_I\right\|_\alpha
 \le {q_\alpha^{N+1}\over1-q_\alpha}\|b_I\|_\alpha.
 \tag{8}
\]

Finite partial sums telescope:

\[
 (\operatorname{Id}_{\cal D}-{\cal L})\Theta_I^{(N)}
 =b_I-{\cal L}^{N+1}b_I.
 \tag{9}
\]

The final term tends to zero in either norm by (6). Passing to the limit in
(9) proves the resolvent equation in (3). If \(X\) is a second solution,
then \(X-\Theta_I={\cal L}(X-\Theta_I)\); applying either norm and (6) gives

\[
 \|X-\Theta_I\|_\alpha
 \le q_\alpha\|X-\Theta_I\|_\alpha.
\]

Because \(q_\alpha<1\), the difference is zero. This proves uniqueness and
justifies the inverse notation in (3).

It remains to expose the source norms. The array domain has
\(|{\cal D}|=3r(r-1)\), and each fixed root has \(3(r-1)\) off-diagonal
coordinates. Therefore

\[
 \|\mathbf1\|_1=3r(r-1),\qquad
 \|\mathbf1\|_{{\rm root},2}=\sqrt{3(r-1)}.
 \tag{10}
\]

Lemma~\ref{lem:p2-i9-s8-step002-source} supplies (D1)--(D2), so (D1)--(D2),
(1), and the triangle inequality imply

\[
 \begin{aligned}
 \|b_I\|_1
 &\le C_0\Gamma_\star
 \left[
 3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\|A_I\|_1+3r(r-1)e_{\rm num}
 \right],\\
 \|b_I\|_{{\rm root},2}
 &\le C_0\Gamma_\star
 \left[
 \sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\|A_I\|_{{\rm root},2}
 +\sqrt{3(r-1)}e_{\rm num}
 \right].
 \end{aligned}
 \tag{11}
\]

Taking \(N=0\) at the start of the geometric argument, or summing directly
from \(s=0\), gives
\(\|\Theta_I\|_\alpha\le
(1-q_\alpha)^{-1}\|b_I\|_\alpha\). Substitution of (11) proves
(4)-(5). These are one-state conditional bounds; they do not claim that
\(\|A_I\|\), \(\|\Theta_I\|\), or any selected row is uniformly small over
generated prefixes.

### unit_003: proposition - Empty Prefix and Zero-Diagonal Precommit Profiles

**Paper-ready result.**

Paper-ready label: prop:p2-i9-s8-step003-precommit.

Under Proposition~\ref{prop:p2-i9-s8-step003-resolvent}, the empty-prefix
envelope is

\[
 \Theta_\varnothing
 =\sum_{s\ge0}(C_0\Gamma_\star{\cal T})^s
 C_0\Gamma_\star
 \left(S+e_{\rm num}\mathbf1\right).
 \tag{12}
\]

For an arbitrary legal prefix \(I\) and every unresolved candidate
\(p\in U_I\), define, in the local precommit context,

\[
 z_{p,M,\ell}=
 \begin{cases}
 \Theta_{I;p,M,\ell}+C_{\rm num}e_{\rm num},
     &\ell\ne p,\\
 0,  &\ell=p,
 \end{cases}
 \qquad M\in\{A,B,C\}.
 \tag{13}
\]

Then every entry in (13) is finite and nonnegative, its diagonal is exactly
zero, and its off-diagonal coordinates agree exactly with (J-z). This
proposition asserts no \(\ell_2\), \(\ell_1\), maximum-row, or all-prefix
bound for \(z\).

**Proof.**

Lemma~\ref{lem:p2-i9-s8-step003-history} gives
\(A_\varnothing=0\). Substituting this identity into (1)-(3) proves (12),
including convergence in both norms. Explicitly, (4)-(5) reduce to

\[
 \|\Theta_\varnothing\|_1
 \le {C_0\Gamma_\star\over1-q_{\rm res}}
 \left[
 3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +3r(r-1)e_{\rm num}
 \right],
 \tag{14}
\]

\[
 \|\Theta_\varnothing\|_{{\rm root},2}
 \le {C_0\Gamma_\star\over1-q_{\rm row}}
 \left[
 \sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\sqrt{3(r-1)}e_{\rm num}
 \right].
 \tag{15}
\]

For a general legal prefix, Proposition~
\ref{prop:p2-i9-s8-step003-resolvent} constructs the complete
candidate-indexed array \(\Theta_I\) before any candidate \(p\) is selected.
It is finite and nonnegative. Since \(C_{\rm num}>0\) is a fixed
setting-declared proof constant and \(e_{\rm num}\ge0\), (13) defines finite
nonnegative off-diagonal entries. Its second branch fixes the diagonal at
zero rather than adding numerical padding there. This is exactly the local
array convention consumed by (J-charge), \(\Xi\), and
\(\widetilde\Upsilon\).

The full array is simultaneous in \(j\), so later work may first form a
root-free maximum from all candidate rows and may select a root only
afterward. This statement supplies availability, not a quantitative maximum
or rowwise estimate. In particular, neither (14)-(15) nor the conditional
full-array bounds (4)-(5) are converted into the later (J-row) claim.

In the exact orthogonal/noiseless specialization
\(H_A=H_B=H_C=0\), \(e_{\rm num}=0\),
Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
Proposition~\ref{prop:p2-i9-s8-step002-gap} together give
\(S={\cal T}=0\) and \(q_{\rm res}=q_{\rm row}=0\). Hence
\(\Theta_\varnothing=0\) and every empty-prefix profile in (13) is zero. At
a conditional nonempty prefix the same zero conclusion holds if
\(A_I=0\); no zero conclusion is asserted when the conditional history
source is nonzero. If instead \(H=0\) but \(e_{\rm num}>0\), the positive
numerical source and padding are retained, as required.

## Mechanism And Boundary Audit

- Claim class and theorem role: conditional generated resolvent
  well-definedness and the exact local precommit charge interface.
- Mechanism source: Proposition~\ref{prop:p2-i9-s8-step002-gap}'s strict
  gaps \(q_{\rm res},q_{\rm row}\le1/4\),
  Proposition~\ref{prop:p2-i9-s8-step002-transfer}'s exact nonnegative
  transfer, and the finite setting-defined conditional source \(A_I\).
- Source-to-claim match: (7)-(9) prove convergence, remainder control, and
  inversion in the exact two norms consumed downstream. No entrywise or
  rootwise estimate is imported from an unrelated norm.
- Opposing terms: static \(S\), actual history \(A_I\), and
  \(e_{\rm num}\mathbf1\) remain separate in (4)-(5). There is no attempted
  history or numerical absorption.
- Scope and accumulation: this step constructs one profile for each fixed
  legal conditional prefix. It makes no recurrence, all-prefix budget, or
  all-time claim. The later induction must produce the needed history and
  rowwise budgets.
- Noncircular producer path: Lemma~\ref{lem:p2-i9-s8-step002-source},
  Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
  Proposition~\ref{prop:p2-i9-s8-step002-gap} supply the static source,
  transfer, and gaps; the already existing legal prefix supplies \(A_I\); this step
  produces the full \(\Theta_I\) and then the local \(z\). No selected
  \(z\)-row, later charge, or later rowwise estimate is used to define its
  own source.
- Generated-output flow: \(\Theta_I\) is available to step_003b and
  step_003c and, after later label selection, to step_005; the local
  precommit \(z\) is consumed by step_006 and step_007. This step does not
  claim those consumers' conclusions.
- Boundary stress: the proof covers the empty history, \(r=2\), positive
  numerical padding with zero structural source, the exact
  \(H=e_{\rm num}=0\) limit, and the endpoint
  \(q_{\rm res}=q_{\rm row}=1/4\). The last remains strictly below one.
- Algorithmic boundary: \(\Theta_I\), \(A_I\), and \(z\) are analysis
  objects. Their construction is not queried by the algorithm and does not
  alter the represented tensor or target.

## Target-Step Assembly

Lemma~\ref{lem:p2-i9-s8-step003-history} proves that every legal
conditional prefix, including the empty prefix, supplies a finite
nonnegative actual-history array without importing the later history
budget. Lemma~\ref{lem:p2-i9-s8-step002-source},
Proposition~\ref{prop:p2-i9-s8-step002-transfer}, and
Proposition~\ref{prop:p2-i9-s8-step002-gap} provide the named static source,
exact transfer, and two strict gaps that
Proposition~\ref{prop:p2-i9-s8-step003-resolvent} combines with that
history source. Its
direct geometric calculation proves convergence of the same partial sums in
entrywise \(\ell_1\) and rootwise block \(\ell_2\), identifies their common
unique resolvent limit, and exports (4)-(5) with static, history, and
numerical terms visible.

Proposition~\ref{prop:p2-i9-s8-step003-precommit} specializes the resolvent
to \(A_\varnothing=0\), giving \(\Theta_\varnothing\), and then defines for
every unresolved candidate the exact off-diagonal padding and zero diagonal
in (J-z). The complete candidate array exists before root selection. The
proposition explicitly does not assert the later (J-row) estimate.

These three named results establish exactly the sketch-attempt-8 step_003
claim and no stronger generated invariant. They use only the binding
setting, current accepted sketch, accepted step_001/step_002 dependencies,
and the local conditional history.

## Explicit Rate Audit

- Exposed variables: \(n,r,k,\kappa,\rho,P,C_0,\Gamma_\star,C_{\rm num}\),
  \(\nu_{\rm real}\), \(P^{-D_{\rm stat}}\), \(q_{\rm res}\),
  \(q_{\rm row}\), \(S,A_I,\Theta_I,\Theta_\varnothing\), and local \(z\).
- Hidden constants may depend on: only the fixed class and proof constants
  already declared in the setting. Equations (4)-(5) and (14)-(15) have no
  additional hidden multiplicative constants.
- Hidden constants may not depend on: \(n,r,k,\kappa,\rho\), the realized
  instance, protected prefix, commit order, tape, or \(\epsilon\), except
  through quantities displayed explicitly.
- Fixed quantities: the realized instance in \({\cal E}_{\rm inst}\), the
  fixed proof constants, and one arbitrary legal conditional prefix are held
  fixed while the Neumann truncation \(N\to\infty\).
- Probability mode: deterministic conditional on the accepted once-drawn
  event and the stated local history. No new event or probability conversion
  is introduced.
- Horizon mode: one-state conditional and algebraically uniform over every
  finite legal prefix. No trajectory-uniform smallness or all-prefix
  accumulation is claimed.
- Norm mode: the exact setting-defined entrywise array \(\ell_1\) norm and
  rootwise block-\(\ell_2\) norm. The \(z\) export is entrywise only.
- Admissibility conditions and auxiliary tolerances:
  \(q_{\rm res},q_{\rm row}\le1/4\) are accepted derived outputs;
  \(e_{\rm num}=P^{-D_{\rm stat}}\) and \(C_{\rm num}\) are
  setting-defined. The local \(A_I\) condition is explicitly conditional,
  not theorem-facing.
- Term absorption or simplification inequalities: none. The exact factors
  \((1-q_{\rm res})^{-1}\) and \((1-q_{\rm row})^{-1}\), the three source
  classes, and every numerical multiplicity are retained.
- Probability conversion: none.
- Contribution to any Rate Specialization Bridge: this step supplies the raw
  conditional resolvent and local precommit definition. It does not supply
  the later rootwise, global, or lower-tail specialization.
- Baseline-reduction check: in the exact
  \(H_A=H_B=H_C=0,e_{\rm num}=0\) empty-prefix specialization,
  \(\Theta_\varnothing=z=0\) by equality. Positive numerical padding is not
  discarded, and a nonzero conditional \(A_I\) is not falsely set to zero.

## Blockers

None.

## Notation And Assumption Notes

- Public-facing branch interfaces: the setting-defined full
  \(\Theta_I\), its empty-prefix specialization \(\Theta_\varnothing\), and
  the local precommit \(z\) in (13). Only these minimal interfaces are
  exported.
- Setting-defined inputs: \({\cal D},{\cal Z}_+,\mathbf1,S,A_I,{\cal T}\),
  the two array norms, \(C_0,\Gamma_\star,C_{\rm num},P,D_{\rm stat}\), and
  \(q_{\rm res},q_{\rm row}\). Their meanings are unchanged.
- Proof-local helpers: \(e_{\rm num}\) as the setting-declared abbreviation,
  \({\cal L}\), \(b_I\), \(q_\alpha\), and the partial sums
  \(\Theta_I^{(N)}\). They are eliminated from the downstream interface.
- Appendix-local quantitative outputs: the raw source bounds (4)-(5), the
  empty bounds (14)-(15), and the truncation remainder (8). They certify
  convergence and preserve dependence but are not a generated rowwise
  invariant.
- Constant provenance: \(C_0,\Gamma_\star,C_{\rm num}\), and
  \(D_{\rm stat}\) are setting-declared or selected by accepted dependencies;
  no new constant, threshold, radius, or margin is introduced.
- Assumption provenance: \({\cal E}_{\rm inst}\), source finiteness, \(S\),
  \({\cal T}\), and the two gaps are accepted dependency outputs. A legal
  finite prefix and its exact \(A_I\) are local conditional hypotheses.
  Finiteness and nonnegativity of \(A_I\) are proved in this step. No
  generated history budget, rowwise profile, stability, matching, or
  recurrence condition is assumed.
- The complete \(\Theta_I\) is simultaneous over all roots, modes, and
  tested labels. The proof does not define or bound a selected-root row
  before selection.
- The accepted global diagnostic was not read or used. Archived
  sketch-attempt-6 and prior same-step artifacts were not read or used as
  evidence.
