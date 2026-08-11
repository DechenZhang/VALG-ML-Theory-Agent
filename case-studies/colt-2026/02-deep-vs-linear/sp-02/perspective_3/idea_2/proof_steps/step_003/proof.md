# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each \(h\) and finite \(F\subseteq X\),
  \(K_{h,F}\) is nonempty; for nonempty \(F\), prove the displayed minimax
  equality in the correct order, and for empty \(F\) use
  \(K_{h,F}=\Delta_L\).
- Depends on: `step_002`.
- Assumptions used: Primitive `assump:finite-terminal-catalog`,
  `assump:universal-expected-accuracy`; derived correlation certificate from
  `step_002`.
- Technical challenge: Convert
  \(\forall r\in\Delta_F\,\exists i\) into one \(w\) working for all
  \(x\in F\), while the best index and policywise output law may vary with
  \(r\).
- Intended proof tool or cited result: Self-contained finite matrix minimax /
  finite LP duality in current notation; extrema of linear functions on
  finite simplices.
- Output target: Finite-simplex feasibility certificate
  \(K_{h,F}\ne\varnothing\).
- Rate objective: Pointwise margin target: retain exact level \(\rho\) on
  every finite \(F\), with no minimax slack.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions used by this step or appearing in the accepted
dependency provenance:

- `assump:finite-terminal-catalog`: the catalog
  \(G=\{g_1,\ldots,g_L\}\) is fixed and finite with \(L\ge 1\). This is
  used directly to form the nonempty finite simplex \(\Delta_L\), the payoff
  matrix, and the constraint sets \(K_{h,F}\).
- `assump:universal-expected-accuracy`: the universal accuracy premise is the
  primitive source of the accepted `step_002` correlation certificate. It is
  not reapplied or strengthened in this step.
- Basic-setting definitions: \(\rho=1-2\varepsilon\),
  \(s_w(x)=\sum_iw_i g_i(x)\), and
  \[
  K_{h,F}=\{w\in\Delta_L:h(x)s_w(x)\ge\rho
  \text{ for every }x\in F\}.
  \]
  These are definitions from `setting.md`, not additional assumptions. The
  power-set sigma algebra on \(X\) makes every finitely supported law used
  below an actual distribution on the arbitrary domain.

Accepted dependency artifacts:

- `proof_steps/step_002/proof.md`, SHA-256
  `bc595377b6068047df51c449eb82a9f9a37e34ed215c22751eb30df9ec4b76a5`.
- `proof_steps/step_002/review.md`, SHA-256
  `b0a6cd9b3a722e73143d3e4160acf85ed9c616c243337cc3a57dde7b00c15f0c`,
  with controlled status `ACCEPTED` for sketch attempt 1, step `step_002`,
  unit attempt 1, and the proof hash above.

Derived interface supplied by the accepted dependency:

- Proposition~\ref{prop:step-002-policy-free-correlation}: for every actual
  distribution \(D\) on \(X\) and every \(h\in H\),
  \[
  \max_{i\in[L]}\mathbb E_{x\sim D}[h(x)g_i(x)]\ge\rho.
  \tag{1}
  \]
  This conclusion contains no reply policy and no learner-output probability
  vector. The accepted review certifies that (1) was obtained only after the
  stronger arbitrary-policy correlation statement and policy-class
  nonemptiness were proved. This step consumes only the policy-free conclusion
  (1).

Derived invariants supplied by dependencies:

- None beyond the policy-free correlation interface (1). In particular,
  finite feasibility, a finite-game mixture, and membership in \(K_{h,F}\)
  are not assumed.

Local conditional hypotheses:

- A target \(h\in H\) and a finite set \(F\subseteq X\) are fixed only
  inside the corresponding quantified local statements. The game units assume
  \(F\ne\varnothing\); the case \(F=\varnothing\) is proved separately
  without defining \(\Delta_F\).
- The abstract matrix units take a finite real matrix and, where stated, a
  real threshold \(\gamma\). These are local mathematical inputs, not
  theorem-facing assumptions or generated invariants.
- No reply policy, output law, favorable transcript, generated event,
  compactness property of \(X\), stability condition, recurrence, or
  boundedness condition is assumed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:finite-terminal-catalog} and \ref{assump:universal-expected-accuracy} and the accepted conclusion of Proposition~\ref{prop:step-002-policy-free-correlation}, if \(h\in H\), \(\varnothing\ne F\subseteq X\) is finite, and \(r\in\Delta_F\), then the finitely supported distribution \(D_r\) satisfies \(\max_i\sum_{x\in F}r_xh(x)g_i(x)\ge\rho\); consequently the minimum of these maxima over \(r\in\Delta_F\) is at least \(\rho\). | Translates the accepted policy-free correlation certificate to the exact row-player payoff for every finite-support distribution, without choosing a policy or requiring coherent best indices. |
| `unit_002` | lemma | If \(F\ne\varnothing\) is finite, \(L\ge1\), \(A\in\mathbb R^{F\times L}\), and \(\gamma\in\mathbb R\) satisfy \(\max_i\sum_xr_xA_{xi}\ge\gamma\) for every \(r\in\Delta_F\), then there exists \(w\in\Delta_L\) such that \(\sum_iw_iA_{xi}\ge\gamma\) for every \(x\in F\). | Proves the exact, zero-slack finite quantifier reversal by a self-contained closest-point argument in \(\mathbb R^F\). |
| `unit_003` | proposition | If \(F\ne\varnothing\) is finite, \(L\ge1\), and \(A\in\mathbb R^{F\times L}\), then both extrema are attained and \(\min_{r\in\Delta_F}\max_i\sum_xr_xA_{xi}=\max_{w\in\Delta_L}\min_{r\in\Delta_F}\sum_{x,i}r_xw_iA_{xi}=\max_{w\in\Delta_L}\min_x\sum_iw_iA_{xi}\). | Establishes the displayed finite minimax identity in the binding row-minimizer/column-maximizer orientation. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:finite-terminal-catalog} and \ref{assump:universal-expected-accuracy}, the accepted conclusion of Proposition~\ref{prop:step-002-policy-free-correlation}, Lemma~\ref{lem:step-003-finite-support-payoff}, and Proposition~\ref{prop:step-003-finite-minimax}, if \(h\in H\) and \(F\subseteq X\) is finite, then \(K_{h,F}\ne\varnothing\); for \(F\ne\varnothing\), an attained minimax maximizer satisfies every constraint at the exact level \(\rho\), while for \(F=\varnothing\), \(K_{h,F}=\Delta_L\). | Assembles the correlation and minimax units into the exact finite-simplex feasibility certificate, including the empty-set boundary. |

Atomic step = no. Finite-support instantiation, the exact quantifier-reversal
mechanism, the full minimax identity and attainment, and the final
empty/nonempty feasibility split are independent audit obligations and are
therefore exposed as four named units.

## Cited Result Applications

No external paper result, finite minimax theorem, or LP-duality theorem is
used as a black box. The finite minimax equality is proved in current notation
by Lemma~\ref{lem:step-003-convex-hull-alternative} and
Proposition~\ref{prop:step-003-finite-minimax}.

Accepted dependency result application:

- **Proposition~\ref{prop:step-002-policy-free-correlation} (Policy-free best
  catalog correlation).** Source: the accepted `step_002` proof/review pair
  with the hashes listed above. Restated in current notation: under the
  primitive parameter and universal-accuracy conditions and the accepted
  earlier terminal-law interfaces discharged in that dependency, every actual
  distribution \(D\) on \(X\) and every \(h\in H\) satisfy (1). The current
  object map is \(D=D_r\), where
  \(D_r(S)=\sum_{x\in F\cap S}r_x\) for \(S\subseteq X\). Finite support,
  nonnegative masses, and \(\sum_xr_x=1\) discharge the only new object check.
  The conclusion used is exactly the lower bound in (1); no policywise output
  vector, common maximizing index across \(r\), or stronger pointwise claim is
  imported.

Standard finite-dimensional fact application:

- **Finite-simplex compactness and extreme values.** Restated: for a nonempty
  finite index set \(S\), the simplex \(\Delta_S\subset\mathbb R^S\) is
  nonempty, compact, and convex; the continuous image of a compact set is
  compact; and a continuous real-valued function on a nonempty compact set
  attains its minimum and maximum. Here \(S=F\) or \([L]\), both nonempty in
  every game application. The relevant maps are linear maps, finite maxima or
  minima of linear functions, and the explicit distance function in
  Lemma~\ref{lem:step-003-convex-hull-alternative}, hence are continuous.
  These facts provide only attainment and a closest point; the minimax
  equality and threshold transfer are proved below rather than attributed to
  them.

Local result applications:

- **Lemma~\ref{lem:step-003-finite-support-payoff} (Finite-support catalog
  payoff).** Restated: for fixed \(h\) and nonempty finite \(F\), applying the
  accepted policy-free result to every genuine \(D_r\) yields
  \(\min_r\max_i\sum_xr_xh(x)g_i(x)\ge\rho\). Its setting and dependency
  assumptions are discharged in `unit_001`. It is used by
  Proposition~\ref{prop:step-003-finite-feasibility}.
- **Lemma~\ref{lem:step-003-convex-hull-alternative} (Finite convex-hull
  alternative).** Restated: a lower bound \(\gamma\) against every row
  mixture forces one column mixture whose every row payoff is at least
  \(\gamma\). Nonempty finite simplices and the real matrix are its only
  conditions; they are explicit in `unit_002`. It is used to prove the reverse
  minimax inequality in Proposition~\ref{prop:step-003-finite-minimax}.
- **Proposition~\ref{prop:step-003-finite-minimax} (Exact finite matrix
  minimax with attainment).** Restated: for the displayed finite row/column
  matrix, the row-minimum/column-maximum value equals the
  column-maximum/row-minimum value, both are attained, and minimization over a
  row simplex equals minimization over its vertices. Its assumptions are
  discharged by \(F\ne\varnothing\), \(L\ge1\), and the matrix definition.
  It is used by Proposition~\ref{prop:step-003-finite-feasibility}.
- **Proposition~\ref{prop:step-003-finite-feasibility} (Exact finite catalog
  feasibility).** Restated: every finite \(F\), including the empty set, has
  \(K_{h,F}\ne\varnothing\), and nonempty \(F\) has an attained witness at
  level \(\rho\). Its inputs are discharged in `unit_004`; it is the sole
  local result exported in the target-step assembly.

## Local Derivation

For fixed \(h\in H\) and nonempty finite \(F\subseteq X\), define the
appendix-local payoff matrix
\[
A^{h,F}_{xi}:=h(x)g_i(x),\qquad x\in F,\ i\in[L].
\tag{2}
\]
When \(h,F\) are fixed, write \(A\) for this matrix. For
\(w\in\Delta_L\) and \(r\in\Delta_F\), matrix notation below means
\[
(Aw)_x=\sum_{i=1}^Lw_iA_{xi},\qquad
(r^\top A)_i=\sum_{x\in F}r_xA_{xi}.
\tag{3}
\]

### unit_001: lemma

**Lemma (Finite-support catalog payoff).**
\(\label{lem:step-003-finite-support-payoff}\)

Statement: Under Assumptions~\ref{assump:finite-terminal-catalog} and
\ref{assump:universal-expected-accuracy} and the accepted policy-free
conclusion of Proposition~\ref{prop:step-002-policy-free-correlation}, if
\(h\in H\), \(\varnothing\ne F\subseteq X\) is finite, and
\(r\in\Delta_F\), define
\[
D_r(S):=\sum_{x\in F\cap S}r_x,
\qquad S\subseteq X.
\tag{4}
\]
Then \(D_r\) is a distribution on \(X\) and
\[
\max_{i\in[L]}\sum_{x\in F}r_xh(x)g_i(x)
=\max_{i\in[L]}\mathbb E_{z\sim D_r}[h(z)g_i(z)]
\ge\rho.
\tag{5}
\]
Consequently,
\[
\min_{r\in\Delta_F}\max_{i\in[L]}
\sum_{x\in F}r_xh(x)g_i(x)\ge\rho,
\tag{6}
\]
and the minimum in (6) is attained.

Proof / justification:

Because \(r_x\ge0\), \(\sum_{x\in F}r_x=1\), and \(F\) is finite,
(4) is a countably additive probability measure on the power-set sigma algebra
of \(X\). Thus it is an actual distribution covered by the accepted
dependency. For each \(i\in[L]\), finite-support integration gives
\[
\mathbb E_{z\sim D_r}[h(z)g_i(z)]
=\sum_{x\in F}r_xh(x)g_i(x).
\tag{7}
\]
Applying Proposition~\ref{prop:step-002-policy-free-correlation} to this exact
\(D_r\) and the fixed \(h\) proves (5).

The accepted conclusion is already policy-free. Hence this application does
not choose a reply policy, does not use the policy-dependent output
probabilities, and does not require those probabilities or the maximizing
index in (5) to be coherent as \(r\) varies. Since (5) holds for every
\(r\in\Delta_F\), its minimum is at least \(\rho\). The objective in (6) is
a finite maximum of linear functions of \(r\), hence continuous, and
\(\Delta_F\) is compact; therefore the minimum is attained. This proves (6).
\(\square\)

### unit_002: lemma

**Lemma (Finite convex-hull alternative).**
\(\label{lem:step-003-convex-hull-alternative}\)

Statement: Let \(F\) be a nonempty finite set, let \(L\ge1\), let
\(A\in\mathbb R^{F\times L}\), and let \(\gamma\in\mathbb R\). If
\[
\forall r\in\Delta_F,\qquad
\max_{i\in[L]}\sum_{x\in F}r_xA_{xi}\ge\gamma,
\tag{8}
\]
then there exists \(w\in\Delta_L\) such that
\[
\forall x\in F,\qquad
\sum_{i=1}^Lw_iA_{xi}\ge\gamma.
\tag{9}
\]
The conclusion uses the same threshold \(\gamma\), with no perturbation or
slack.

Proof / justification:

Consider the compact convex set of column mixtures
\[
C:=\{Aw:w\in\Delta_L\}\subseteq\mathbb R^F
\tag{10}
\]
and the closed convex upper orthant
\[
Q_\gamma:=\{q\in\mathbb R^F:q_x\ge\gamma
\text{ for every }x\in F\}.
\tag{11}
\]
Conclusion (9) is equivalent to \(C\cap Q_\gamma\ne\varnothing\). Suppose,
for contradiction, that these sets are disjoint.

For \(a\in\mathbb R\), write \(a_+:=\max\{a,0\}\). Coordinatewise
minimization over (11) gives, for every \(c\in\mathbb R^F\),
\[
\operatorname{dist}(c,Q_\gamma)^2
=\sum_{x\in F}(\gamma-c_x)_+^2.
\tag{12}
\]
The right side is continuous. Compactness of \(C\) therefore gives a point
\(c^0\in C\) minimizing the distance to \(Q_\gamma\). Disjointness and
(12) imply that this minimum is strictly positive. Define
\[
q_x^0:=\max\{c_x^0,\gamma\},\qquad
y:=q^0-c^0,\qquad
\delta:=\lVert y\rVert_2>0.
\tag{13}
\]
Then \(q^0\in Q_\gamma\), \(y_x=(\gamma-c_x^0)_+\ge0\), and
\(\delta=\operatorname{dist}(c^0,Q_\gamma)\).

Fix any \(c\in C\). Convexity gives
\(c_t:=c^0+t(c-c^0)\in C\) for every \(t\in[0,1]\). By minimality of
\(c^0\), and because \(q^0\in Q_\gamma\),
\[
\delta\le \operatorname{dist}(c_t,Q_\gamma)
\le\lVert c_t-q^0\rVert_2.
\tag{14}
\]
Using \(c^0-q^0=-y\), squaring (14), and subtracting
\(\delta^2=\lVert y\rVert_2^2\) gives
\[
0\le -2t\langle y,c-c^0\rangle
+t^2\lVert c-c^0\rVert_2^2.
\tag{15}
\]
For \(t>0\), divide by \(t\) and let \(t\downarrow0\). It follows that
\[
\langle y,c\rangle\le\langle y,c^0\rangle
\qquad\text{for every }c\in C.
\tag{16}
\]

Set \(S:=\sum_{x\in F}y_x\). Since \(y\ge0\) and \(y\ne0\),
\(S>0\) and \(r^0:=y/S\) belongs to \(\Delta_F\). Whenever \(y_x>0\),
the definition (13) gives \(q_x^0=\gamma\); coordinates with \(y_x=0\)
make no contribution. Consequently,
\[
\langle y,q^0\rangle=\gamma S,
\qquad
\langle y,c^0\rangle
=\gamma S-\lVert y\rVert_2^2.
\tag{17}
\]
For the \(i\)-th simplex vertex \(e_i\in\Delta_L\), the column
\(Ae_i\) lies in \(C\). Equations (16)--(17) therefore yield, for every
\(i\in[L]\),
\[
\sum_{x\in F}r_x^0A_{xi}
=\frac{\langle y,Ae_i\rangle}{S}
\le\frac{\langle y,c^0\rangle}{S}
=\gamma-\frac{\lVert y\rVert_2^2}{S}
<\gamma.
\tag{18}
\]
Thus the maximum over \(i\) is strictly below \(\gamma\) for
\(r^0\in\Delta_F\), contradicting (8). Hence
\(C\cap Q_\gamma\ne\varnothing\), which is exactly (9). Notice that the
contradiction proves feasibility at \(\gamma\) itself; no limit through
thresholds below \(\gamma\) is used. \(\square\)

### unit_003: proposition

**Proposition (Exact finite matrix minimax with attainment).**
\(\label{prop:step-003-finite-minimax}\)

Statement: Let \(F\) be a nonempty finite set, let \(L\ge1\), and let
\(A\in\mathbb R^{F\times L}\). Then
\[
\begin{aligned}
\min_{r\in\Delta_F}\max_{i\in[L]}
   \sum_{x\in F}r_xA_{xi}
&=\max_{w\in\Delta_L}\min_{r\in\Delta_F}
   \sum_{x\in F}\sum_{i=1}^L r_xw_iA_{xi}\\
&=\max_{w\in\Delta_L}\min_{x\in F}
   \sum_{i=1}^Lw_iA_{xi}.
\end{aligned}
\tag{19}
\]
The outer minimum and maximum in (19) are both attained.

Proof / justification:

The functions
\[
r\longmapsto\max_{i\in[L]}\sum_{x\in F}r_xA_{xi},
\qquad
w\longmapsto\min_{x\in F}\sum_{i=1}^Lw_iA_{xi}
\tag{20}
\]
are respectively a finite maximum and finite minimum of linear functions, so
they are continuous. Compactness of the two nonempty finite simplices gives
attainment. Define their attained values by
\[
\beta:=\min_{r\in\Delta_F}\max_{i\in[L]}
\sum_{x\in F}r_xA_{xi},
\qquad
\alpha:=\max_{w\in\Delta_L}\min_{x\in F}
\sum_{i=1}^Lw_iA_{xi}.
\tag{21}
\]

For every \(r\in\Delta_F\) and \(w\in\Delta_L\), the bilinear average
satisfies
\[
\min_{x\in F}\sum_{i=1}^Lw_iA_{xi}
\le \sum_{x\in F}\sum_{i=1}^Lr_xw_iA_{xi}
\le \max_{i\in[L]}\sum_{x\in F}r_xA_{xi}.
\tag{22}
\]
Indeed, the middle expression is a convex average over the row payoffs for
fixed \(w\), and also a convex average over the column payoffs for fixed
\(r\). Since (22) holds for every pair \((r,w)\), maximizing its left side
over \(w\) and minimizing its right side over \(r\) gives
\(\alpha\le\beta\).

By the definition of \(\beta\), every \(r\in\Delta_F\) satisfies
\[
\max_{i\in[L]}\sum_{x\in F}r_xA_{xi}\ge\beta.
\tag{23}
\]
Lemma~\ref{lem:step-003-convex-hull-alternative}, applied with
\(\gamma=\beta\), gives \(w^\star\in\Delta_L\) such that
\[
\min_{x\in F}\sum_{i=1}^Lw_i^\star A_{xi}\ge\beta.
\tag{24}
\]
Thus \(\alpha\ge\beta\), and hence \(\alpha=\beta\).

It remains only to display the middle value in (19). For fixed
\(w\in\Delta_L\), set \(a_x:=\sum_iw_iA_{xi}\). Every
\(r\in\Delta_F\) satisfies
\(\sum_xr_xa_x\ge\min_xa_x\), and equality holds at a simplex vertex
supported on a minimizing row. Therefore
\[
\min_{r\in\Delta_F}\sum_{x\in F}\sum_{i=1}^Lr_xw_iA_{xi}
=\min_{x\in F}\sum_{i=1}^Lw_iA_{xi}.
\tag{25}
\]
Likewise, for fixed \(r\), maximizing the same bilinear expression over
\(\Delta_L\) gives the largest pure-column payoff. Combining (21),
\(\alpha=\beta\), and (25) proves every equality in (19), in the stated
row-minimizer/column-maximizer order. \(\square\)

### unit_004: proposition

**Proposition (Exact finite catalog feasibility).**
\(\label{prop:step-003-finite-feasibility}\)

Statement: Under Assumptions~\ref{assump:finite-terminal-catalog} and
\ref{assump:universal-expected-accuracy}, the accepted conclusion of
Proposition~\ref{prop:step-002-policy-free-correlation},
Lemma~\ref{lem:step-003-finite-support-payoff}, and
Proposition~\ref{prop:step-003-finite-minimax}, if \(h\in H\) and
\(F\subseteq X\) is finite, then \(K_{h,F}\ne\varnothing\). More
precisely:

- if \(F=\varnothing\), then \(K_{h,F}=\Delta_L\ne\varnothing\);
- if \(F\ne\varnothing\), then
  \[
  \begin{aligned}
  \min_{r\in\Delta_F}\max_{i\in[L]}
     \sum_{x\in F}r_xh(x)g_i(x)
  &=\max_{w\in\Delta_L}\min_{r\in\Delta_F}
     \sum_{x\in F}\sum_{i=1}^Lr_xw_i h(x)g_i(x)\\
  &=\max_{w\in\Delta_L}\min_{x\in F}
     \sum_{i=1}^Lw_i h(x)g_i(x)
  \ge\rho,
  \end{aligned}
  \tag{26}
  \]
  and an attained maximizer \(w_{h,F}\in\Delta_L\) belongs to
  \(K_{h,F}\).

Proof / justification:

First suppose \(F=\varnothing\). There are no point constraints in the
definition of \(K_{h,F}\), so
\[
K_{h,\varnothing}=\Delta_L.
\tag{27}
\]
Assumption~\ref{assump:finite-terminal-catalog} gives \(L\ge1\), hence
\(\Delta_L\ne\varnothing\) (for example, its first vertex belongs to it).
No simplex \(\Delta_F\), distribution on \(F\), or minimax expression is
formed in this case.

Now suppose \(F\ne\varnothing\) and use the matrix (2). By
Lemma~\ref{lem:step-003-finite-support-payoff},
\[
\min_{r\in\Delta_F}\max_{i\in[L]}
\sum_{x\in F}r_xA_{xi}\ge\rho.
\tag{28}
\]
Proposition~\ref{prop:step-003-finite-minimax} applies because both \(F\) and
\([L]\) are nonempty and finite. Substituting
\(A_{xi}=h(x)g_i(x)\) into its exact equality proves (26), including the
orientation and attainment asserted there.

Choose an attained maximizer \(w_{h,F}\in\Delta_L\) in the last expression
of (26). Then
\[
\min_{x\in F}\sum_{i=1}^Lw_{h,F,i}h(x)g_i(x)\ge\rho,
\tag{29}
\]
so every \(x\in F\) satisfies
\[
h(x)s_{w_{h,F}}(x)
=\sum_{i=1}^Lw_{h,F,i}h(x)g_i(x)
\ge\rho.
\tag{30}
\]
Thus \(w_{h,F}\in K_{h,F}\), proving nonemptiness. Every transfer from
(28) to (30) is an equality or a direct consequence of an attained minimum;
the threshold remains \(\rho\) exactly. At \(L=1\), the maximizer is the
unique simplex weight. At \(\rho=1\), the same calculation gives every
finite constraint at margin one, with no minimax loss. \(\square\)

## Target-Step Assembly

Fix an arbitrary \(h\in H\) and an arbitrary finite \(F\subseteq X\).
If \(F=\varnothing\),
Proposition~\ref{prop:step-003-finite-feasibility} uses only \(L\ge1\) to
give \(K_{h,F}=\Delta_L\ne\varnothing\), without invoking a nonexistent
row simplex or distribution.

If \(F\ne\varnothing\),
Lemma~\ref{lem:step-003-finite-support-payoff} maps every
\(r\in\Delta_F\) to the genuine arbitrary-domain distribution \(D_r\) and
applies the accepted policy-free correlation proposition to obtain the exact
row-game lower value \(\rho\). The application never selects a policy or a
policywise output law; the best catalog coordinate may vary freely with
\(r\).

Proposition~\ref{prop:step-003-finite-minimax}, whose reverse inequality is
proved by Lemma~\ref{lem:step-003-convex-hull-alternative}, then gives the
exact finite-simplex equality
\[
\min_{r\in\Delta_F}\max_{i\in[L]}
\sum_{x\in F}r_xh(x)g_i(x)
=\max_{w\in\Delta_L}\min_{x\in F}
\sum_{i=1}^Lw_i h(x)g_i(x)
\ge\rho
\tag{31}
\]
with an attained maximizer and no slack. Finally,
Proposition~\ref{prop:step-003-finite-feasibility} identifies the payoff in
(31) with \(h(x)s_w(x)\) and places that maximizer in \(K_{h,F}\).

These named results prove exactly the accepted `step_003` row for every finite
\(F\), preserve the binding row-minimizer/column-maximizer orientation, and
export only the finite feasibility certificate. They do not assert coherence
of the separately produced \(w_{h,F}\) across \(F\); that arbitrary-domain
globalization is the distinct target of `step_004`.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\), \(\rho=1-2\varepsilon\), and the
  finite catalog dimension \(L\). The finite set \(F\) is arbitrary, and no
  loss depends on \(|F|\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(X,H,h,F,r,w,D_r\), any policy,
  replies, transcripts, learner coins, \(m,\tau,\varepsilon,L,B\), or \(k\).
- Fixed quantities: the fixed catalog \(G\); \(h\) and \(F\) are fixed only
  during their local finite game.
- Probability mode: deterministic finite-game and pointwise feasibility
  statements. The accepted dependency has already eliminated learner
  randomness and policy dependence. The only distribution introduced here is
  the deterministic construction \(D_r\); no random event or confidence
  parameter is used.
- Horizon mode: fixed finite horizon as inherited by the accepted correlation
  interface, including \(m=0\). This step performs no temporal, stopping-time,
  asymptotic, or all-time upgrade.
- Norm mode: finite pointwise signed payoff
  \(h(x)s_w(x)\), equivalently the minimum signed scalar margin over
  \(x\in F\). The closest-point proof uses the Euclidean norm only as a
  proof-local separation device in \(\mathbb R^F\), not as the theorem
  metric.
- Admissibility conditions and auxiliary tolerances: \(L\ge1\); arbitrary
  finite \(F\), split into empty and nonempty cases; and, in the game case,
  \(r\in\Delta_F\), \(w\in\Delta_L\). No auxiliary tolerance, margin, or
  perturbation parameter is introduced.
- Term absorption or simplification inequalities: None. The exact chain is
  \[
  \min_r\max_i\sum_xr_xh(x)g_i(x)
  =\max_w\min_x\sum_iw_i h(x)g_i(x)\ge\rho.
  \]
  No term is dropped, dominated, or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports finite
  feasibility at the exact margin \(\rho\) to `step_004`; no public-rate
  simplification is performed.
- Baseline-reduction check: At \(\varepsilon=0\), \(\rho=1\) is preserved
  exactly. At \(L=1\), \(\Delta_L\) has its unique weight and the equality
  remains valid. For \(F=\varnothing\), the exact baseline is
  \(K_{h,F}=\Delta_L\), not a limiting game statement. Singleton \(F\) and
  zero-query protocols require no modification.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The setting-defined constraint set \(K_{h,F}\)
  and the conclusion \(K_{h,F}\ne\varnothing\) are the minimal downstream
  interface. The exact finite-game equality at level \(\rho\) is the
  paper-ready justification for that interface. No new theorem-facing symbol
  is exported.
- **Appendix-local objects.** The payoff matrix
  \(A^{h,F}_{xi}=h(x)g_i(x)\) and the finite-game equality (26) are
  appendix-local: they organize the minimax proof but are not needed in the
  final theorem statement.
- **Proof-local objects.** The finitely supported law \(D_r\), the finite
  witness \(w_{h,F}\), the convex set \(C\), upper orthant \(Q_\gamma\),
  closest points \(c^0,q^0\), separating vector \(y\), scalars
  \(S,\delta,\alpha,\beta,\gamma\), simplex vertices \(e_i\), and the
  positive-part notation are proof-local. Each is explicitly defined before
  use. In particular, \(w_{h,F}\) is not exported as a coherent family or a
  global weight.
- **Constant and threshold provenance.** The target margin
  \(\rho=1-2\varepsilon\) is defined in `setting.md` and inherited exactly
  through the accepted dependency. The generic \(\gamma\) in
  Lemma~\ref{lem:step-003-convex-hull-alternative} is an explicit local input;
  \(\delta,S,\alpha,\beta\) are derived from the finite matrix and are proved
  finite or positive where needed. No free constant, radius, threshold,
  finite-tube bound, or hidden dependence is introduced.
- **Assumption provenance.** Catalog finiteness and \(L\ge1\) are primitive.
  Universal accuracy is primitive but is consumed only through the accepted
  `step_002` policy-free certificate. The distributions \(D_r\), game values,
  finite witnesses, and nonemptiness of \(K_{h,F}\) are constructed or proved
  by the named local units. No generated condition is treated as primitive or
  as a local hypothesis needed for an unconditional target conclusion.
- **Policy and correlation interface.** The only dependency conclusion used is
  \(\max_i\mathbb E_D[hg_i]\ge\rho\) for every \(D,h\). It contains no
  policy or output probabilities. Dependence of the earlier policywise law on
  \(D,h,\pi\), and dependence of the maximizing index on \(D_r\), create no
  assumption or residual in the finite game.
- **Matrix orientation.** Rows are points \(x\in F\) mixed by the minimizing
  vector \(r\); columns are catalog indices \(i\in[L]\) mixed by the
  maximizing vector \(w\). Thus the exact order is
  \(\min_r\max_i=\max_w\min_x\), not its reverse or a same-player
  interchange.
- **Arbitrary-domain scope.** The domain enters only through a finite subset
  and the power-set-measurable law \(D_r\). All compactness, closest-point,
  and minimax arguments occur in \(\mathbb R^F\) and \(\mathbb R^L\); no
  topology, compactness, countability, or probability measure on all of
  \(X\) is assumed. Empty \(F\), and therefore the only possible finite case
  when \(X=\varnothing\), is handled directly.
- **Diagnostic boundary.** `global_proof.md` and
  `global_proof_review.md` were not read or used. No diagnostic statement is
  evidence, a cited result, an assumption source, or authority for the target
  claim.
