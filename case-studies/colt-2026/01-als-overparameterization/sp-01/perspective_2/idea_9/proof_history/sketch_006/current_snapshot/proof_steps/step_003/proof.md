# Proof Step

## Step Identity

- Sketch attempt: 6
- Step ID: `step_003`
- Unit attempt: 1
- Accepted sketch artifact: `perspective_2/idea_9/proof_sketch.md`, SHA-256
  `9d74e0e0e33ce44cc9a48c4dfcbc10c25a89d08f6f1e91012f3b0b809be7c4ef`.
- Accepted sketch review: `perspective_2/idea_9/proof_sketch_review.md`,
  `Sketch Review Status = ACCEPTED`, SHA-256
  `0333e1da5da4014de163f34435be48d00e539de71efc317ffd5bc63aaa88af0f`.

## Target Step Claim

- Intended claim: For any legal conditional history, prove convergent l1 and
  rootwise Neumann envelopes, including empty history, and define the local
  zero-diagonal precommit z profile from Theta without asserting its rowwise
  norm.
- Dependencies: `step_002`.
- Assumptions used: derived event; explicitly conditional `A_I`.
- Technical challenge: Nonnegative resolvent, norm compatibility, and exact
  local array convention.
- Intended proof tool or cited result: Geometric Neumann series in both
  induced norms plus the algebraic J-z definition.
- Output target: `Theta_I`, `Theta_empty`, and local precommit z for
  `steps_006,007`.
- Rate objective: R2; expose static, history, and numerical entries without
  premature simplification.
- Sketch-row review status: `PENDING`. Sketch-level authority is the accepted
  `proof_sketch_review.md`, not this row-local field.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: None are invoked directly in this conditional
  algebraic step. The primitive source conditions have already been converted
  into accepted static derived controls by the dependency.
- Derived invariants supplied by accepted dependencies:
  - On the accepted once-drawn event `E_inst`,
    Lemma~\ref{lem:p2-i9-s6-step002-source} and
    Lemma~\ref{lem:p2-i9-s6-step002-static} supply the exact
    nonnegative `H/J/K/S` objects, their exact diagonal conventions
    (`H,K,S` zero and `J` one), and the static source bounds.
  - Lemmas~\ref{lem:p2-i9-s6-step002-l1-transfer} and
    \ref{lem:p2-i9-s6-step002-root-transfer}, followed by
    Proposition~\ref{prop:p2-i9-s6-step002-gaps}, supply the exact
    nonnegative, root-preserving transfer \(\mathcal T\) and
    `q_res,q_row<=1/4` in the setting's entrywise-l1 and fixed-root block-l2
    norms.
- Local conditional hypotheses:
  - Fix one legal finite protected history `I` with `|I|<r`, its analysis
    injection `pi_I`, and its already formed finite accepted-error tensors
    `E_i`. The only history quantity used here is the actual setting-defined
    array `A_I` from (R-hist-src), embedded in `Z_+` with the prescribed zero
    entries. No history budget, calibration estimate, matching theorem,
    trajectory invariant, or row-profile bound is assumed.
  - This is an explicitly conditional one-state interface. Step 009, not the
    present step, is responsible for proving that every generated prefix
    supplies such an input.
- Accepted dependency artifacts:
  - `perspective_2/idea_9/proof_steps/step_002/proof.md`, sketch attempt 6,
    unit attempt 1, `Step Proof Status = COMPLETE`, SHA-256
    `7c3b7ea474bab76e407f4c616317f1b6662f23ea9c7cf90532eff6a84e55442a`.
  - `perspective_2/idea_9/proof_steps/step_002/review.md`, which reviews that
    exact proof and has `Step-Review Status = ACCEPTED`, SHA-256
    `c9bd95cd8d9c431a191fc926b11bccb2c34b108dbdbf29f27c37034bccc1244a`.

Everything below is deterministic after conditioning on `E_inst` and on the
displayed legal finite history. The conditional history is not promoted to a
primitive or public theorem assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Conditional Forcing in the Two Ledger Norms, label `lem:p2-i9-s6-step003-forcing`: under the accepted Step 002 static source conclusions, if `I` is a legal finite conditional history and `A_I` is exactly (R-hist-src), then `B_I:=S+A_I+e_num 1` is a finite nonnegative array and its l1 and fixed-root block-l2 norms split explicitly into static, actual-history, and numerical terms. | Verifies that the Neumann forcing is legal in both required normed spaces without assuming a history budget. |
| `unit_002` | proposition | Simultaneous Statewise Neumann Envelope, label `prop:p2-i9-s6-step003-neumann`: under the accepted Step 002 transfer conclusions and Lemma~\ref{lem:p2-i9-s6-step003-forcing}, if `I` is a legal finite conditional history, then the single series (R-ledger) converges simultaneously in entrywise l1 and fixed-root block-l2, is the unique resolvent solution, belongs to `Z_+` with the prescribed zero-diagonal extension, and obeys both explicit norm bounds. | Constructs `Theta_I` and proves the two compatible statewise Neumann envelopes. |
| `unit_003` | proposition | Empty-State Envelope and Local Zero-Diagonal Profile, label `prop:p2-i9-s6-step003-local-profile`: under Proposition~\ref{prop:p2-i9-s6-step003-neumann}, if `p` is unresolved at the legal precommit state `I`, then (J-z) defines a finite nonnegative local profile with exact zero diagonal before any Step 006 use; at the empty history the source and both envelopes specialize explicitly, and the exact `H=0,e_num=0,A_I=0` branch gives `Theta_I=z=0`. | Exports `Theta_empty` and the exact local precommit z interface while deferring every quantitative z-row estimate to Step 007. |

## Cited Result Applications

No external paper theorem is used. The accepted dependency and the elementary
finite-dimensional facts used below are restated in current notation.

1. **Accepted Step 002 static-source interface.** Under
   Assumptions~\ref{assump:base-product-balance} and
   \ref{assump:modewise-gram-margin}, and on the accepted `step_001` event
   discharged inside the dependency, accepted
   Lemma~\ref{lem:p2-i9-s6-step002-source} gives, for every mode `M`,
   
   \[
   \|J_M\|_1=\|J_M\|_\infty
   \le 1+\sqrt r\,\nu_{\rm real},\qquad
   \|K_M\|_1=\|K_M\|_\infty\le\nu_{\rm real}^2.
   \tag{1}
   \]
   
   Accepted Lemma~\ref{lem:p2-i9-s6-step002-static} gives the nonnegative
   zero-diagonal source `S`, with `S_(j,A,ell)=(K_AJ_A)_(j,ell)` for
   `ell!=j` and cyclic analogues, and
   
   \[
   \|S\|_1\le
   3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}).
   \tag{2}
   \]
   
   The current proof uses exactly these setting coordinates and derives the
   needed fixed-root source estimate directly from (1), so no unexported
   row-profile or absolute-Gram operator estimate is imported.

2. **Accepted Step 002 transfer interface.** Let
   
   \[
   \mathcal L:=C_0\Gamma_\star\mathcal T.
   \tag{3}
   \]
   
   The exact transfer in (R-transfer) is a linear map on the finite vector
   space of arrays on `D`, has nonnegative coefficients, and preserves the
   root coordinate `j`.
   Lemmas~\ref{lem:p2-i9-s6-step002-l1-transfer} and
   \ref{lem:p2-i9-s6-step002-root-transfer}, together with
   Proposition~\ref{prop:p2-i9-s6-step002-gaps}, give
   
   \[
   \|\mathcal L\|_{1\to1}=q_{\rm res}\le {1\over4},
   \qquad
   \|\mathcal L\|_{{\rm root},2\to{\rm root},2}
   =q_{\rm row}\le {1\over4}.
   \tag{4}
   \]
   
   The linear formula extends from the nonnegative cone to signed arrays in
   the canonical coordinatewise way; the accepted norm bounds apply to that
   extension.

3. **Finite-dimensional geometric-series facts.** For any induced norm and
   finite-dimensional linear map `L`, submultiplicativity gives
   `||L^s||<=||L||^s`, by induction on `s`. If `||L||=q<1`, then
   `sum_(s>=0)||L^s b||<=||b||/(1-q)`. The proof of
   Proposition~\ref{prop:p2-i9-s6-step003-neumann} applies these inequalities
   to its
   displayed partial sums, proves the resolvent identity by telescoping, and
   proves uniqueness by the same strict-norm inequality. Thus no unproved
   Neumann theorem is used as a black box.

The local interfaces are as follows.
Lemma~\ref{lem:p2-i9-s6-step003-forcing}
supplies one source array legal in both norms.
Proposition~\ref{prop:p2-i9-s6-step003-neumann} supplies the simultaneous
resolvent and both bounds.
Proposition~\ref{prop:p2-i9-s6-step003-local-profile} consumes that same
`Theta_I` to define the local profile and to verify the empty and exact
boundary cases.

## Local Derivation

### unit_001: lemma

**Lemma (Conditional forcing in the two ledger norms).**
\label{lem:p2-i9-s6-step003-forcing}

Under the accepted static source conclusions of
Lemmas~\ref{lem:p2-i9-s6-step002-source} and
\ref{lem:p2-i9-s6-step002-static}, if `I` is a legal finite
conditional protected history with injection `pi_I` and `A_I` is exactly the
actual accepted-history forcing (R-hist-src), then

\[
B_I:=S+A_I+e_{\rm num}\mathbf 1,
\qquad e_{\rm num}=P^{-D_{\rm stat}},
\tag{5}
\]

is a finite member of `Z_+`. It satisfies

\[
\begin{split}
\|B_I\|_1
&=\|S\|_1+\|A_I\|_1+3r(r-1)e_{\rm num}\\
&\le 3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
 +\|A_I\|_1+3r(r-1)e_{\rm num},
\end{split}
\tag{6}
\]

and

\[
\|B_I\|_{{\rm root},2}
\le \sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+\|A_I\|_{{\rm root},2}
+\sqrt{3(r-1)}\,e_{\rm num}.
\tag{7}
\]

For each root `j`, the sharper unsupremized version of (7) is

\[
\|(B_I)_{j,\boldsymbol\cdot,\boldsymbol\cdot}\|_2
\le \sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+\|(A_I)_{j,\boldsymbol\cdot,\boldsymbol\cdot}\|_2
+\sqrt{3(r-1)}\,e_{\rm num}.
\tag{8}
\]

No bound on either norm of `A_I` is assumed or asserted.

**Proof.** On `E_inst`, all `tau_j` are positive. For the fixed legal finite
history, each tensor `E_i` and every target factor in (R-hist-src) is a finite
Euclidean object. Each coordinate of `A_I` is therefore a finite sum of
finite absolute contractions divided by a positive `tau_j`. It is
nonnegative, and its setting-prescribed embedding has zero entries at
resolved roots and on the array diagonal. Thus `A_I` is a finite member of
`Z_+`; no quantitative claim about it was needed.

The source `S` and `e_num 1` are also nonnegative on exactly `D`, so (5) is
in `Z_+`. There are `3r(r-1)` coordinates in `D`. Additivity of the l1 norm
on nonnegative arrays, followed by (2), proves (6).

It remains to check the static part of the rootwise estimate. Fix `j`. In
mode `A`, nonnegativity, the exact source convention, and (1) give

\[
\begin{split}
\sum_{\ell\ne j}S_{j,A,\ell}
&\le \sum_{\ell=1}^r(K_AJ_A)_{j\ell}\\
&=\sum_{t=1}^rK_A(j,t)\sum_{\ell=1}^rJ_A(t,\ell)\\
&\le\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real}).
\end{split}
\tag{9}
\]

The same calculation holds in modes `B,C`. Since the Euclidean norm of a
nonnegative finite vector is at most its l1 norm,

\[
\left(\sum_M\sum_{\ell\ne j}S_{j,M,\ell}^2\right)^{1/2}
\le\sqrt3\,\nu_{\rm real}^2
(1+\sqrt r\,\nu_{\rm real}).
\tag{10}
\]

At this root the all-ones array has exactly `3(r-1)` coordinates and hence
Euclidean norm `sqrt(3(r-1))`. Applying the Euclidean triangle inequality to
(5) proves (8), and taking the maximum over roots proves (7). QED.

### unit_002: proposition

**Proposition (Simultaneous statewise Neumann envelope).**
\label{prop:p2-i9-s6-step003-neumann}

Under the accepted transfer conclusions of
Lemmas~\ref{lem:p2-i9-s6-step002-l1-transfer} and
\ref{lem:p2-i9-s6-step002-root-transfer} and
Proposition~\ref{prop:p2-i9-s6-step002-gaps}, and under
Lemma~\ref{lem:p2-i9-s6-step003-forcing}, if `I` is a legal finite conditional
history with actual forcing `A_I`, then the single nonnegative series

\[
\Theta_I
=\sum_{s=0}^{\infty}(C_0\Gamma_\star\mathcal T)^s
C_0\Gamma_\star
\left(S+A_I+e_{\rm num}\mathbf1\right)
\tag{11}
\]

converges simultaneously in the setting's entrywise-l1 and fixed-root
block-l2 norms. Its limit belongs to `Z_+`, hence has the prescribed
zero-diagonal extension, and it is the unique solution of

\[
(\operatorname{Id}_{\cal D}-C_0\Gamma_\star\mathcal T)\Theta_I
=C_0\Gamma_\star
\left(S+A_I+e_{\rm num}\mathbf1\right),
\tag{12}
\]

so (11) equals the inverse expression in (R-ledger). Moreover,

\[
\begin{split}
\|\Theta_I\|_1
&\le {C_0\Gamma_\star\over1-q_{\rm res}}\|B_I\|_1\\
&\le {C_0\Gamma_\star\over1-q_{\rm res}}
\left[
3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+\|A_I\|_1+3r(r-1)e_{\rm num}
\right],
\end{split}
\tag{13}
\]

and

\[
\begin{split}
\|\Theta_I\|_{{\rm root},2}
&\le {C_0\Gamma_\star\over1-q_{\rm row}}
\|B_I\|_{{\rm root},2}\\
&\le {C_0\Gamma_\star\over1-q_{\rm row}}
\left[
\sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+\|A_I\|_{{\rm root},2}
+\sqrt{3(r-1)}e_{\rm num}
\right].
\end{split}
\tag{14}
\]

Because the transfer preserves roots, for every `j` the same series also
obeys the statewise root-block estimate

\[
\|\Theta_{I;j,\boldsymbol\cdot,\boldsymbol\cdot}\|_2
\le {C_0\Gamma_\star\over1-q_{\rm row}}
\|(B_I)_{j,\boldsymbol\cdot,\boldsymbol\cdot}\|_2.
\tag{15}
\]

Since `q_res,q_row<=1/4`, each resolvent factor in (13)--(15) is at most
`4/3`; no source term is absorbed in making that numerical comparison.

**Proof.** Use the proof-local map \(\mathcal L\) from (3) and define the common
partial sums

\[
\Theta_I^{(N)}=\sum_{s=0}^{N}\mathcal L^s
C_0\Gamma_\star B_I.
\tag{16}
\]

In entrywise l1, (4) and induced-norm submultiplicativity imply, for `m>N`,

\[
\begin{split}
\|\Theta_I^{(m)}-\Theta_I^{(N)}\|_1
&\le C_0\Gamma_\star\|B_I\|_1
\sum_{s=N+1}^{m}q_{\rm res}^s\\
&\le {C_0\Gamma_\star q_{\rm res}^{N+1}
\over1-q_{\rm res}}\|B_I\|_1.
\end{split}
\tag{17}
\]

This tends to zero, so the partial sums converge in l1. The identical
calculation in fixed-root block-l2 gives

\[
\|\Theta_I^{(m)}-\Theta_I^{(N)}\|_{{\rm root},2}
\le {C_0\Gamma_\star q_{\rm row}^{N+1}
\over1-q_{\rm row}}\|B_I\|_{{\rm root},2},
\tag{18}
\]

and proves simultaneous convergence. Both norms live on the same finite
coordinate space and (16) is one sequence, so the two limits are the same
array `Theta_I`.

Every coefficient of \(\mathcal L\), `B_I`, and hence every summand in (16)
is nonnegative. Every partial sum is an array on `D` and is extended by zero
on the omitted diagonal; the partial sums are therefore coordinatewise
nondecreasing. Passing coordinatewise to the limit shows `Theta_I` belongs
to `Z_+` with the same zero-diagonal extension. Summing (16) from `s=0` and
using (4) gives the first lines of
(13)--(14); Lemma~\ref{lem:p2-i9-s6-step003-forcing} gives their second
lines.

The finite geometric sum telescopes exactly:

\[
(\operatorname{Id}_{\cal D}-\mathcal L)\Theta_I^{(N)}
=C_0\Gamma_\star B_I
-\mathcal L^{N+1}C_0\Gamma_\star B_I.
\tag{19}
\]

The last term tends to zero in either norm by (4), proving (12). If `X` is
another solution, then
\(X-\Theta_I=\mathcal L(X-\Theta_I)\), and the l1 bound gives

\[
\|X-\Theta_I\|_1
\le q_{\rm res}\|X-\Theta_I\|_1.
\tag{20}
\]

Since `q_res<1`, this forces `X=Theta_I`; hence the inverse in (R-ledger) is
well-defined and (11) is its value.

Finally, the displayed transfer never changes the first coordinate `j`.
Restricting (16) to one root and repeating (18) on that block proves (15).
The inequalities `1-q_res>=3/4` and `1-q_row>=3/4` justify the final
denominator comparison without changing any forcing term. QED.

### unit_003: proposition

**Proposition (Empty-state envelope and local zero-diagonal profile).**
\label{prop:p2-i9-s6-step003-local-profile}

Under Proposition~\ref{prop:p2-i9-s6-step003-neumann}, if `I` is a legal finite
conditional precommit history and `p` is any unresolved label in `U_I`, then
the setting's local analysis-only profile

\[
z_{p,M,\ell}=
\begin{cases}
\Theta_{I;p,M,\ell}+C_{\rm num}e_{\rm num},&\ell\ne p,\\
0,&\ell=p,
\end{cases}
\qquad M\in\{A,B,C\},
\tag{21}
\]

is finite, nonnegative, and has exact zero diagonal. It is defined before
the accepted-error/J-charge calculation and uses the same root, mode, tested
label, and diagonal conventions consumed by Steps 006 and 007. This
proposition asserts no quantitative rowwise norm bound for `z`.

For the empty history `I=emptyset`, the empty injection has
`U_emptyset=[r]` and the empty sum in (R-hist-src) gives
`A_emptyset=0`. Therefore

\[
\Theta_\varnothing
=\sum_{s=0}^{\infty}(C_0\Gamma_\star\mathcal T)^s
C_0\Gamma_\star(S+e_{\rm num}\mathbf1),
\tag{22}
\]

with

\[
\|\Theta_\varnothing\|_1
\le {C_0\Gamma_\star\over1-q_{\rm res}}
\left[
3r\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+3r(r-1)e_{\rm num}
\right],
\tag{23}
\]

\[
\|\Theta_\varnothing\|_{{\rm root},2}
\le {C_0\Gamma_\star\over1-q_{\rm row}}
\left[
\sqrt3\,\nu_{\rm real}^2(1+\sqrt r\,\nu_{\rm real})
+\sqrt{3(r-1)}e_{\rm num}
\right].
\tag{24}
\]

In the exact baseline specialization `H=0`, `e_num=0`, and `A_I=0`, one has
\(S=\mathcal T=0\), hence `Theta_I=0` and every profile in (21) is exactly
zero. In
particular this holds at the empty history. For `H=0` with positive
`e_num`, the numerical source and padding in (22) and (21) remain present;
they are not silently identified with the exact baseline.

**Proof.** Proposition~\ref{prop:p2-i9-s6-step003-neumann} makes every
off-diagonal
entry of `Theta_I` finite and nonnegative. The setting fixes
`C_num>0` and `e_num>=0`, so the first case of (21) is finite and
nonnegative. The second case imposes the exact setting-required zero rather
than adding padding to the diagonal. Thus the local profile is available
algebraically without any use of a later row estimate.

At `I=emptyset`, the actual-history sum contains no terms, which proves
`A_emptyset=0`. Equations (22)--(24) are (11), (13), and (14) with that
exact value substituted. In the exact baseline, the accepted Step 002
specialization gives \(S=\mathcal T=0\); substituting `e_num=A_I=0` into
(11) and
(21) proves `Theta_I=z=0`. Keeping positive `e_num` in the displayed
formulas proves the stated finite-numerical boundary distinction. QED.

## Target-Step Assembly

For a fixed legal conditional history,
Lemma~\ref{lem:p2-i9-s6-step003-forcing}
first verifies that the exact source in (R-ledger) is a finite nonnegative
array in both required normed spaces. Its bounds keep the static `S`, actual
history `A_I`, and numerical all-ones source separate; in particular, no
history budget or numerical-to-structural absorption enters this step.

Proposition~\ref{prop:p2-i9-s6-step003-neumann} applies the two distinct
accepted small-gain margins to one common sequence of partial sums. It proves
simultaneous l1 and fixed-root block-l2 convergence, the exact resolvent
identity and uniqueness, nonnegativity, the global bounds (13)--(14), and
the per-root bound (15). These are precisely the two conditional statewise
Neumann envelopes required by the sketch row.

Proposition~\ref{prop:p2-i9-s6-step003-local-profile} then substitutes the
produced `Theta_I` into the setting's algebraic (J-z) convention for every
unresolved root. This gives Step 006 its exact local zero-diagonal profile
before any quantitative profile theorem, while Step 007 receives the same
object for its later rowwise analysis. The proposition also proves the empty
source and both empty-envelope bounds, and it preserves the exact
`H=e_num=A_I=0` zero-profile baseline.

Thus the exact producer-consumer flow is

\[
(S,A_I,e_{\rm num}\mathbf1,\mathcal T,q_{\rm res},q_{\rm row})
\longrightarrow \Theta_I
\longrightarrow \{\text{Steps 003b,004,005,007}\},
\qquad
\Theta_I\longrightarrow z_{p,\boldsymbol\cdot,\boldsymbol\cdot}
\longrightarrow \{\text{Steps 006,007}\}.
\tag{25}
\]

The first arrow is explicitly conditional on one legal state. Step 009 later
proves the prefix producer needed for unconditional all-generated-state use.
No consumer precedes its producer, and no algorithmic operation queries
`Theta_I` or `z`.

## Explicit Rate Audit

- Exposed variables: `r`, `P`, `D_stat`, `Gamma_star`, `C_0`, `C_num`,
  `nu_real`, `e_num=P^(-D_stat)`, `S`, `A_I`, \(\mathcal T\), `q_res`,
  `q_row`,
  `Theta_I`, and the local entries `z_(p,M,ell)`.
- Hidden constants may depend on: only the fixed class/proof constants already
  declared in `setting.md`, including `C_0,C_num,C_nu,C_eta,Gamma_star` and
  universal numerical constants. In fact, (6)--(8) and (13)--(15) display
  all constants used in this step explicitly.
- Hidden constants may not depend on: `n,r,k,kappa,rho`, the realized
  instance, protected state, history length, commit order, candidate root,
  tested label, random tape, horizon, or `epsilon`.
- Fixed quantities: one realized instance on the accepted `E_inst` event,
  all fixed class/proof constants, and one legal finite conditional history.
- Probability mode: deterministic conditional on `E_inst` and on the stated
  local history. This step introduces no random event, union bound, tape
  probability, or probability conversion; its static inputs retain the
  accepted instance probability of at least `1-r^(-10)`.
- Horizon mode: one-state conditional, with the same algebraic statement
  valid for every supplied finite legal history. It is not an all-prefix or
  trajectory-existence result; Step 009 must produce those histories.
- Norm mode: entrywise l1 on the full array `D`, fixed-root block-l2 and its
  induced operator norm, and ordinary Euclidean norm on one root block.
- Admissibility conditions and auxiliary tolerances: exactly the accepted
  Step 002 interfaces `q_res,q_row<=1/4`, the setting-defined
  `e_num=P^(-D_stat)`, and the explicitly conditional actual `A_I`. No
  history budget, `E_lb` absorption, matching estimate, certificate, row
  bound, or trajectory invariant is added.
- Term absorption or simplification inequalities: the static source is
  bounded in (9)--(10), the numerical source has exact sizes
  `3r(r-1)e_num` and `sqrt(3(r-1))e_num`, and the resolvent factors satisfy
  `1/(1-q_res),1/(1-q_row)<=4/3` because both gaps are at most `1/4`.
  Static, history, and numerical terms remain separate in (13)--(15) and
  (23)--(24); none is dropped, dominated, or relabeled.
- Probability conversion: None. Instance and tape probabilities remain
  separate.
- Contribution to any Rate Specialization Bridge: this step supplies the R2
  conditional resolvent and exact source separation. It performs no public
  simplification and supplies no `nu^2` row-profile or all-commit budget.
- Baseline-reduction check: with `H=0`, `e_num=0`, and `A_I=0`, the accepted
  dependency gives \(S=\mathcal T=0\), and (11), (21) give exact
  `Theta_I=z=0`. With positive `e_num`, all numerical terms remain explicit,
  so the finite-tolerance branch is not confused with the exact limit.

## Blockers

None.

## Notation And Assumption Notes

- `D`, `Z_+`, the all-ones array, `S`, `A_I`, \(\mathcal T\), `Theta_I`,
  and `z` are
  setting-defined analysis objects. `Theta_I` and the local precommit `z`
  are the minimal `public-facing` conditional interfaces exported by this
  step; they are not algorithm inputs.
- `e_num=P^(-D_stat)` is a setting-defined `public-facing` analysis
  tolerance, and `C_0,Gamma_star,C_num,D_stat` are setting-defined fixed
  constants or parameters. This step introduces no new constant, exponent,
  radius, event, threshold, or admissibility margin.
- `B_I` in (5), \(\mathcal L\) in (3), the partial sums `Theta_I^(N)`, and
  root-block restrictions such as `(B_I)_(j,.,.)` are `proof-local` helpers.
  `B_I` only
  packages the three exact setting sources; its two norm bounds are proved in
  Lemma~\ref{lem:p2-i9-s6-step003-forcing}. \(\mathcal L\) is directly
  defined from the
  accepted transfer and fixed setting constants. None is exported.
- `E_inst`, the static kernels/source, the transfer, and both small-gain
  margins are `public-facing` derived controls supplied by the accepted Step
  002 dependency. They are not reclassified as primitive conditions.
- The fixed protected state, injection, accepted tensors, and actual `A_I`
  are used only as a local conditional hypothesis. Their existence for every
  generated prefix, their quantitative history budget, and their recurrence
  are not claimed here. The target assembly exports the conditional result
  only, leaving the noncircular prefix bridge to Step 009.
- The finite nonnegativity of `A_I` is proved in
  Lemma~\ref{lem:p2-i9-s6-step003-forcing} from its exact finite-sum
  definition and
  accepted positivity of the realized weights. The convergence and
  boundedness of `Theta_I` are proved in
  Proposition~\ref{prop:p2-i9-s6-step003-neumann}. The finite, nonnegative,
  zero-diagonal status of local `z` is proved in
  Proposition~\ref{prop:p2-i9-s6-step003-local-profile}.
- No quantitative rowwise norm estimate for `z`, no history budget, and no
  global accumulation claim is hidden in a definition. Step 007 is the
  designated producer of the raw `nu_real^2+r nu_real^3+sqrt(r)e_num`
  profile, and Steps 008--009 are the later budget and closure producers.
- Boundary conventions are exact. Arrays omit `ell=j` and are extended by
  zero there; (21) also keeps the stored profile diagonal exactly zero.
  The empty history has `A_emptyset=0`. The exact `H=e_num=A_I=0` branch is
  equality, whereas positive numerical tolerance remains visible.
- No global diagnostic or `proof_history` artifact is used as evidence, a
  cited result, an assumption source, or authority to alter the target claim.
  This is a fresh sketch-attempt-6, unit-attempt-1 dependency instantiation.
