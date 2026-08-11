# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Conditional on independent \(c\), prove the exact importance-weighted expectation and raw second-moment equality.
- Depends on: `step_001`, `step_005`, `step_006`.
- Assumptions used: `assump:iid-independent-randomness`.
- Technical challenge: Track offset and level probabilities.
- Intended proof tool or cited result: Iterated conditional expectation.
- Output target: Exact \(\theta(c)\) and square interface.
- Rate objective: All \(p_j\)-dependence explicit.
- Sketch-row review status: `PENDING`; the separate accepted `proof_sketch_review.md` is the acceptance gate for sketch attempt 1.

Throughout, \(\mu=\mu(D)\), and an unadorned expectation \(\mathbb E_D\) integrates a fresh scalar \(X\sim D\) only.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:iid-independent-randomness`: the localization samples and refinement samples are independent; the localization seed and every refinement seed \((L_i,A_i,B_i,U_i)\) are mutually independent and independent of all samples; and all query-generating seeds are drawn before any response bit. This is the only primitive assumption used by the conditional-moment calculation.
- Accepted dependency artifacts:
  - `step_001`: `perspective_1/idea_1/proof_steps/step_001/proof.md` (SHA-256 `dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b`) and its `ACCEPTED` review (SHA-256 `67dada641fad3ab0cf52d7a5aed94d3f647fd2d014ab235fdcf06f03b2f305b7`). The consumed conclusions are that \(c\) is an always-defined measurable function of the localization transcript and that \(\mathbb E_D|X-\mu|\leq\sigma\), hence \(X\) is integrable because \(|\mu|\leq\lambda\).
  - `step_005`: `perspective_1/idea_1/proof_steps/step_005/proof.md` (SHA-256 `a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239`) and its `ACCEPTED` review (SHA-256 `11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6`). The consumed conclusions are the strict digit range, Borel decoder selection, conditional uniform-dither law, exact dither first moment, and exact dither square.
  - `step_006`: `perspective_1/idea_1/proof_steps/step_006/proof.md` (SHA-256 `8b9032652aff80e875da03cecdc2e04cf5757618826735a131911d400f55ab58`) and its `ACCEPTED` review (SHA-256 `df17f07d57218738adde9fb53eeb95f98fb6f971b8b6bcd11584f30aaf0f26b4`). The consumed conclusions are the finite telescope, the exact two-residual expectation interface, and exact zero displacement.
- Derived invariants supplied by accepted dependencies:
  - \(c\) is localization-measurable and always defined. The generated localization event is available from `step_001`, but it is not assumed or used here.
  - For every \(j<J\), every selected digit is well defined and obeys the exact first- and second-dither identities from `step_005`.
  - \(T_c\), \(R_0^c\), and \(R_H^c\) obey the exact deterministic and integrable expectation identities from `step_006`.
- Local conditional hypotheses: None. A deterministic value \(t\in\mathbb R\) is used below to compute the refinement kernel pointwise; it is then evaluated at the generated random center \(t=c\). Conditioning on \(c\) or on the full localization sigma-field is a probability operation, not an added theorem assumption.

No digit-activity, pathwise scale-budget, variance bound, tail bound, or concentration conclusion from a later step is used.

## Local Lemma Map

Atomic step = no. Positivity of every inverse weight, the localization/refinement sigma-field interface, the exact mean, the exact raw square, and the telescope-to-target specialization are independently auditable.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\(\ref{assump:iid-independent-randomness}\) and the setting-defined parameter and level-law domains, \(J\geq1\); every sampled level has \(p_j>0\); the probabilities sum to one; each nonempty group has mass \(1/m\); and empty groups introduce neither a level nor a division by an undefined normalizer. | Makes every importance factor legal and handles \(j=0\), \(j=J-1\), \(J=1\), and empty groups. |
| `unit_002` | lemma | Under Assumption~\(\ref{assump:iid-independent-randomness}\), the accepted center from `step_001`, the accepted digit range from `step_005`, and Lemma~\(\ref{lem:step-008-level-offset-law}\), the refinement tuple has its original product law conditional on the full localization sigma-field; \(Z_i(t)\) is integrable and square-integrable for every \(t\), and all conditional kernels used below are finite and measurable. | Establishes the legal conditioning and finite-expectation interface before any iterated expectation is taken. |
| `unit_003` | proposition | Under Assumption~\(\ref{assump:iid-independent-randomness}\), Lemmas~\(\ref{lem:step-008-level-offset-law}\) and~\(\ref{lem:step-008-refinement-kernel}\), and the accepted dither first-moment identity from `step_005`, \(\mathbb E[Z_i(c)\mid\mathscr F_{\rm loc}]=\mathbb E[Z_i(c)\mid c]=\theta(c)=\mathbb E_D T_c(X)\), with exact cancellation of \(p_j\), \(1/16\), and \(16/p_j\). | Proves the exact importance-weighted conditional expectation and identifies \(\theta(c)\). |
| `unit_004` | proposition | Under Assumption~\(\ref{assump:iid-independent-randomness}\), Lemmas~\(\ref{lem:step-008-level-offset-law}\) and~\(\ref{lem:step-008-refinement-kernel}\), and the accepted dither square from `step_005`, the raw conditional second moment is exactly \(48\sum_{j=0}^{J-1}p_j^{-1}h_j\mathbb E_D|D_j^c(X)-D_j^c(c)|\); the single-level square has no cross-level terms, while the two centered threshold indicators retain their exact internal cross term. | Proves the requested raw square with every probability and digit factor explicit. |
| `unit_005` | proposition | Under Proposition~\(\ref{prop:step-008-conditional-mean}\), the accepted first-moment result from `step_001`, and the accepted telescope/residual and zero-displacement results from `step_006`, \((\mu-c)-\theta(c)=\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X)\), with both residuals retained, and \(X_i=c\) implies \(Z_i(c)=0\) pathwise. | Exports the exact target/residual interface and preserves the exact zero-displacement baseline without a future bias bound. |

## Cited Result Applications

No external paper result is invoked in this step. The following accepted dependency results and local results are restated in current notation before use.

1. **Accepted localization-center and first-moment interface (`step_001`).** Lemma~\(\ref{lem:step-001-midpoint}\) states that the decoder output \(c\) is an always-defined measurable function of the localization transcript. Lemma~\(\ref{lem:step-001-first-moment}\) states \(\mathbb E_D|X-\mu|\leq\sigma\). The assumptions of both results were discharged in the accepted dependency pair. The first conclusion is used to place \(c\) in the localization sigma-field; the second gives \(\mathbb E_D|X|\leq\sigma+\lambda<\infty\) for the accepted residual expectation interface. The localization-success event and its probability are not used.
2. **Accepted exact bounded-dither interface (`step_005`).** Lemma~\(\ref{lem:step-005-digit-range}\) gives
   \[
   -h_j<F_{j,a,b}(x)<2h_j
   \]
   for every \(j<J\), offset pair, and real input. Proposition~\(\ref{prop:step-005-dither-identities}\) states, for \(U\sim{\rm Unif}[-1,2]\),
   \[
   \mathbb E_U G_{j,a,b}^t(x,U)
   =F_{j,a,b}(x)-F_{j,a,b}(t),
   \]
   \[
   \mathbb E_U\bigl[G_{j,a,b}^t(x,U)^2\bigr]
   =3h_j|F_{j,a,b}(x)-F_{j,a,b}(t)|,
   \]
   where
   \[
   G_{j,a,b}^t(x,u)
   :=3h_j\left(
   \mathbf1\{F_{j,a,b}(x)/h_j\geq u\}
   -\mathbf1\{F_{j,a,b}(t)/h_j\geq u\}
   \right).
   \]
   The proposition also gives the identical statements for the selected pair \((a_j(t),a_{j+1}(t))\), hence for \(D_j^t\), after conditioning on all quantities independent of the active dither. Its direct proof handles \(U=-1,2\), threshold ties under the \(\geq\) convention, reversed digit order, and exact equality of the two indicators when \(x=t\).
3. **Accepted finite telescope and residual interface (`step_006`).** Lemma~\(\ref{lem:step-006-finite-telescope}\) and Proposition~\(\ref{prop:step-006-residual-interface}\) give, for every deterministic \(t,x\),
   \[
   T_t(x)=\sum_{j=0}^{J-1}\bigl(D_j^t(x)-D_j^t(t)\bigr),
   \qquad
   x-t=T_t(x)+R_0^t(x)+R_H^t(x).
   \]
   If \(X\) is integrable, all displayed terms are integrable and
   \[
   (\mu-t)-\mathbb E_D T_t(X)
   =\mathbb E_D R_0^t(X)+\mathbb E_D R_H^t(X).
   \]
   Lemma~\(\ref{lem:step-006-zero-displacement}\) gives exact vanishing of every centered digit, the telescope, and both residuals at \(x=t\). No top-support or residual-size claim is part of this consumed interface.
4. **Exact level and offset law (Lemma~\(\ref{lem:step-008-level-offset-law}\)).** Every \(p_j\) is positive and \(\sum_jp_j=1\); conditionally on a fixed center and level, the selected ordered offset pair occurs with probability exactly \(1/16\).
5. **Conditional refinement kernel (Lemma~\(\ref{lem:step-008-refinement-kernel}\)).** Conditional on the full localization sigma-field, \((X_i,L_i,A_i,B_i,U_i)\) retains the setting-defined product law, and every expectation below is absolutely finite. This is used by Propositions~\(\ref{prop:step-008-conditional-mean}\) and~\(\ref{prop:step-008-raw-square}\).

## Local Derivation

### unit_001: lemma

**Lemma (Exact level and offset law).** \(\label{lem:step-008-level-offset-law}\)

Under Assumption~\(\ref{assump:iid-independent-randomness}\) and the setting-defined ranges \(k>1\), \(0<\epsilon<\sigma\), \(\gamma_k\in(0,1)\), and \(b_k\geq1\), the sampled-level set \(\{0,\ldots,J-1\}\) is nonempty. The fine and coarse sets partition it. For each nonempty group \(G\in\{\mathcal J_{\rm f},\mathcal J_{\rm c}\}\), \(W_G\in(0,\infty)\), and every \(j\in G\) satisfies

\[
p_j=\frac1m\frac{w_j}{W_G}>0,
\qquad
\sum_{j\in G}p_j=\frac1m.
\]

Consequently \(\sum_{j=0}^{J-1}p_j=1\). If one auxiliary group is empty, it contributes no level, has no normalizer used in any formula, and the other group has \(m=1\) and total mass one. Moreover, conditional on any fixed center \(t\) and any level \(j\),

\[
\Pr\{(A_i,B_i)=(a_j(t),a_{j+1}(t))\mid L_i=j\}=\frac1{16}
\quad\text{for each fixed }t.
\]

These conclusions include the smallest level \(j=0\), the top sampled level \(j=J-1\), and the case \(J=1\).

**Proof / justification.** From the setting definitions,

\[
\frac{H_*}{h_0}
=\frac{b_k}{\gamma_k}
 \left(\frac{\sigma}{\epsilon}\right)^{k/(k-1)}>1.
\]

Thus \(J=\lceil\log_2(H_*/h_0)\rceil\geq1\), so the sampled-level set is finite and nonempty. Each level satisfies exactly one of \(h_j\leq\sigma\) and \(h_j>\sigma\), including equality in the fine group, so the two groups form a disjoint partition.

For every level, \(h_j/\sigma>0\). Hence both possible definitions of \(w_j\) are finite and strictly positive. A nonempty finite group therefore has \(0<W_G=\sum_{\ell\in G}w_\ell<\infty\), which proves \(p_j>0\) and

\[
\sum_{j\in G}p_j
=\frac1m\frac{\sum_{j\in G}w_j}{W_G}
=\frac1m.
\]

There are exactly \(m\in\{1,2\}\) nonempty groups, so summing the last identity over them gives total mass one. An empty group has no index in the level sum and the setting does not define or use its \(W_G\), so no empty sum appears in a denominator.

Finally, \(A_i\) and \(B_i\) are independent and uniform on the four-element set \(\mathcal S\), independently of \(L_i\) and the center. Once \(t\) and \(j\) are fixed, the selected values \(a_j(t),a_{j+1}(t)\) are fixed members of \(\mathcal S\). Their ordered pair therefore has probability \((1/4)^2=1/16\). At \(j=J-1\), the second selector is \(a_J(t)\), which is setting-defined; when \(J=1\), this is the same sole sampled-level calculation with \(j=0=J-1\). \(\square\)

### unit_002: lemma

**Lemma (Conditional refinement kernel and integrability).** \(\label{lem:step-008-refinement-kernel}\)

Under Assumption~\(\ref{assump:iid-independent-randomness}\), the accepted localization-center conclusion from `step_001`, the accepted strict digit range from `step_005`, and Lemma~\(\ref{lem:step-008-level-offset-law}\), let

\[
\mathscr F_{\rm loc}
:=\sigma\!\left(R_{\rm loc},(X_r)_{r\in I_{\rm loc}}\right),
\]

with the deterministic localization schedule understood as fixed. Then \(c\) is \(\mathscr F_{\rm loc}\)-measurable, and, for each \(i\in I_{\rm ref}\),

\[
\mathcal L\bigl(X_i,L_i,A_i,B_i,U_i\mid\mathscr F_{\rm loc}\bigr)
=D\otimes(p_0,\ldots,p_{J-1})
 \otimes {\rm Unif}(\mathcal S)^{\otimes2}
 \otimes {\rm Unif}[-1,2]
\quad\text{almost surely}.
\]

For every deterministic \(t\in\mathbb R\), \(Z_i(t)\) is Borel measurable, integrable, and square-integrable. In fact,

\[
|Z_i(t)|
\leq48\max_{0\leq j<J}\frac{h_j}{p_j}<\infty
\quad\text{pathwise}.
\]

Also, for

\[
\Delta_j^t(x):=D_j^t(x)-D_j^t(t),
\]

one has \(|\Delta_j^t(x)|<3h_j\), so \(T_t(X)=\sum_{j=0}^{J-1}\Delta_j^t(X)\) and every term in the proposed mean and raw-square formulas is integrable. The resulting right-hand sides are Borel functions of \(t\).

**Proof / justification.** The accepted `step_001` midpoint result makes \(c\) a measurable function of the localization seed and localization transcript, and hence of \(\mathscr F_{\rm loc}\). Assumption~\ref{assump:iid-independent-randomness} makes every refinement sample and seed independent of all localization samples and seeds, and gives the displayed product law within the refinement tuple. Therefore conditioning on \(\mathscr F_{\rm loc}\) changes none of the refinement marginals or their mutual independence. The response

\[
Y_i=\mathbf1\{F_{L_i,A_i,B_i}(X_i)/h_{L_i}\geq U_i\}
\]

is a Borel function of that tuple by the accepted `step_005` measurability result. It is not an independent seed, and the dither calculation below never conditions on \(Y_i\).

The centered indicator difference in \(Z_i(t)\) belongs to \(\{-1,0,1\}\). Lemma~\ref{lem:step-008-level-offset-law} gives \(p_j>0\) at each of finitely many levels. Hence

\[
|Z_i(t)|
\leq \frac{16}{p_{L_i}}3h_{L_i}
\leq48\max_{0\leq j<J}\frac{h_j}{p_j}<\infty.
\]

This deterministic finite bound proves both integrability and square-integrability, conditionally and unconditionally, without a moment condition on \(D\).

The accepted digit range places each of \(D_j^t(x)\) and \(D_j^t(t)\) in \((-h_j,2h_j)\). Their difference therefore lies in \((-3h_j,3h_j)\), proving \(|\Delta_j^t(x)|<3h_j\). Since \(J\) is finite, \(T_t(X)\), \(\sum_j\mathbb E_D\Delta_j^t(X)\), and \(\sum_jp_j^{-1}h_j\mathbb E_D|\Delta_j^t(X)|\) are all absolutely finite. Thus every finite sum and iterated expectation below is legal.

For measurability in \(t\), the accepted Borel selector and the finite offset set give the finite representation

\[
D_j^t(x)
=\sum_{a,b\in\mathcal S}
 \mathbf1\{(a_j(t),a_{j+1}(t))=(a,b)\}F_{j,a,b}(x).
\]

The mean kernel is therefore a finite combination of Borel selector indicators, constants \(\mathbb E_DF_{j,a,b}(X)\), and the Borel value \(D_j^t(t)\). For the absolute kernel, for fixed \((j,a,b)\) define

\[
\phi_{j,a,b}(z):=\mathbb E_D|F_{j,a,b}(X)-z|.
\]

It is finite and satisfies \(|\phi(z)-\phi(z')|\leq|z-z'|\), so it is continuous. Hence the selected finite combination of \(\phi_{j,a,b}(F_{j,a,b}(t))\) is Borel. This proves the last assertion without any interchange of an infinite sum or limit. \(\square\)

### unit_003: proposition

**Proposition (Exact importance-weighted conditional mean).** \(\label{prop:step-008-conditional-mean}\)

Under Assumption~\(\ref{assump:iid-independent-randomness}\), Lemmas~\(\ref{lem:step-008-level-offset-law}\) and~\(\ref{lem:step-008-refinement-kernel}\), and the accepted exact dither first-moment identity from `step_005`, define for every deterministic \(t\in\mathbb R\)

\[
\theta(t)
:=\sum_{j=0}^{J-1}\mathbb E_D\bigl[D_j^t(X)-D_j^t(t)\bigr]
=\mathbb E_DT_t(X).
\]

Then, for every \(i\in I_{\rm ref}\),

\[
\mathbb E[Z_i(c)\mid\mathscr F_{\rm loc}]=\theta(c)
\quad\text{almost surely},
\]

and consequently

\[
\boxed{\mathbb E[Z_i(c)\mid c]=\theta(c)=\mathbb E_DT_c(X)}
\quad\text{almost surely}.
\]

The equality is exact: the level probability \(p_j\), selected-pair probability \(1/16\), and importance factor \(16/p_j\) cancel without a remainder.

**Proof / justification.** First fix a deterministic center \(t\) and a level \(j\). Use only in this proof

\[
M_j^t
:=\mathbf1\{(A_i,B_i)=(a_j(t),a_{j+1}(t))\}.
\]

On \(\{L_i=j\}\), the definition of \(Z_i(t)\) is

\[
Z_i(t)
=\frac{16}{p_j}M_j^t
G_{j,A_i,B_i}^t(X_i,U_i),
\]

where \(G\) is the centered dither quantity restated in `Cited Result Applications`. Conditional on \((X_i,L_i,A_i,B_i)\), the accepted dither proposition applies because \(U_i\) remains uniform and independent. Only the single selected ordered pair survives multiplication by \(M_j^t\). Since that pair has probability \(1/16\), for every \(x\),

\[
\begin{aligned}
&\mathbb E_{A_i,B_i,U_i}\!\left[
M_j^tG_{j,A_i,B_i}^t(x,U_i)
\mid L_i=j\right]\\
&\qquad=\frac1{16}
\bigl(D_j^t(x)-D_j^t(t)\bigr)
=\frac1{16}\Delta_j^t(x).
\end{aligned}
\]

Now average over \(X_i\sim D\) and over the level law. Lemma~\ref{lem:step-008-refinement-kernel} justifies every iteration and finite sum:

\[
\begin{aligned}
\mathbb E Z_i(t)
&=\sum_{j=0}^{J-1}
p_j\frac{16}{p_j}\frac1{16}
\mathbb E_D\Delta_j^t(X)\\
&=\sum_{j=0}^{J-1}\mathbb E_D\Delta_j^t(X)
=\mathbb E_DT_t(X)
=\theta(t).
\end{aligned}
\]

By Lemma~\ref{lem:step-008-refinement-kernel}, the same product-law calculation is valid conditional on \(\mathscr F_{\rm loc}\), with its realized center substituted for \(t\). This gives \(\mathbb E[Z_i(c)\mid\mathscr F_{\rm loc}]=\theta(c)\). Since \(\sigma(c)\subseteq\mathscr F_{\rm loc}\) and \(\theta(c)\) is \(\sigma(c)\)-measurable, the tower property gives

\[
\mathbb E[Z_i(c)\mid c]
=\mathbb E[\theta(c)\mid c]
=\theta(c).
\]

The proof does not condition on localization success; the identity holds on and off \(\mathcal E_{\rm loc}\). \(\square\)

### unit_004: proposition

**Proposition (Exact raw second moment with retained square structure).** \(\label{prop:step-008-raw-square}\)

Under Assumption~\(\ref{assump:iid-independent-randomness}\), Lemmas~\(\ref{lem:step-008-level-offset-law}\) and~\(\ref{lem:step-008-refinement-kernel}\), and the accepted exact dither square from `step_005`, for every \(i\in I_{\rm ref}\),

\[
\boxed{
\mathbb E[Z_i(c)^2\mid c]
=48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
\mathbb E_D\left|D_j^c(X)-D_j^c(c)\right|
}
\quad\text{almost surely}.
\]

The identical equality holds conditional on \(\mathscr F_{\rm loc}\). More explicitly, for each nonempty group \(G\), substitution of \(p_j=m^{-1}w_j/W_G\) gives its exact contribution

\[
48mW_G\sum_{j\in G}\frac{h_j}{w_j}
\mathbb E_D|D_j^c(X)-D_j^c(c)|.
\]

Thus a nonempty fine group contributes exactly

\[
48mW_{\rm f}\sigma
\sum_{j\in\mathcal J_{\rm f}}
\mathbb E_D|D_j^c(X)-D_j^c(c)|,
\]

and a nonempty coarse group contributes exactly

\[
48mW_{\rm c}\sigma^{2-k}
\sum_{j\in\mathcal J_{\rm c}}h_j^{k-1}
\mathbb E_D|D_j^c(X)-D_j^c(c)|.
\]

An empty group contributes no term and invokes no \(W_G\).

**Proof / justification.** For fixed \(t\), write \(Z_i(t)\) as the exact disjoint-level sum

\[
Z_i(t)
=\sum_{j=0}^{J-1}\mathbf1\{L_i=j\}
\frac{16}{p_j}M_j^tG_{j,A_i,B_i}^t(X_i,U_i).
\]

Since \(\mathbf1\{L_i=j\}\mathbf1\{L_i=\ell\}=0\) whenever \(j\neq\ell\), all cross-level products vanish pathwise, not by an expectation argument. Also \((M_j^t)^2=M_j^t\). Therefore

\[
Z_i(t)^2
=\sum_{j=0}^{J-1}\mathbf1\{L_i=j\}
\frac{256}{p_j^2}M_j^t
\bigl(G_{j,A_i,B_i}^t(X_i,U_i)\bigr)^2.
\]

The internal centered-indicator cross term is not dropped. Indeed, with

\[
I_x=\mathbf1\{F_{j,a,b}(x)/h_j\geq U_i\},
\qquad
I_t=\mathbf1\{F_{j,a,b}(t)/h_j\geq U_i\},
\]

one has exactly

\[
(I_x-I_t)^2=I_x+I_t-2I_xI_t.
\]

The accepted `step_005` calculation retains this cross term and identifies the square with the indicator of the half-open interval between the two thresholds. Consequently, for the selected pair,

\[
\mathbb E_{U_i}\left[
\bigl(G_{j,a_j(t),a_{j+1}(t)}^t(x,U_i)\bigr)^2
\right]
=3h_j|\Delta_j^t(x)|.
\]

This equality includes threshold ties, both endpoints of the dither support, reversed threshold order, and \(x=t\). Averaging the match indicator over the independent uniform offsets contributes exactly \(1/16\). Averaging next over \(X_i\) and the level law gives

\[
\begin{aligned}
\mathbb E Z_i(t)^2
&=\sum_{j=0}^{J-1}
p_j\frac{256}{p_j^2}\frac1{16}
3h_j\mathbb E_D|\Delta_j^t(X)|\\
&=48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
\mathbb E_D|\Delta_j^t(X)|.
\end{aligned}
\]

This is a raw second moment: no subtraction of \(\theta(t)^2\), domination, activity estimate, or variance upper bound has occurred. Lemma~\ref{lem:step-008-refinement-kernel} applies the deterministic-center calculation conditional on \(\mathscr F_{\rm loc}\), and the tower property then yields the displayed conditioning on \(c\).

Finally, if \(j\in G\), then \(p_j^{-1}=mW_G/w_j\). For fine levels, \(h_j/w_j=\sigma\). For coarse levels,

\[
\frac{h_j}{w_j}
=h_j\left(\frac{h_j}{\sigma}\right)^{k-2}
=\sigma^{2-k}h_j^{k-1}.
\]

Substitution gives the two exact group expressions. No normalizer is evaluated for an empty group. \(\square\)

### unit_005: proposition

**Proposition (Exact telescope target, residuals, and zero baseline).** \(\label{prop:step-008-target-interface}\)

Under Proposition~\(\ref{prop:step-008-conditional-mean}\), the accepted first-moment conclusion from `step_001`, and Proposition~\(\ref{prop:step-006-residual-interface}\) and Lemma~\(\ref{lem:step-006-zero-displacement}\) from `step_006`, for every deterministic \(t\in\mathbb R\),

\[
\theta(t)=\mathbb E_DT_t(X),
\qquad
(\mu-t)-\theta(t)
=\mathbb E_D R_0^t(X)+\mathbb E_D R_H^t(X).
\]

Consequently, for the generated center,

\[
\boxed{
(\mu-c)-\theta(c)
=\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X)
}
\quad\text{almost surely}.
\]

Neither signed residual is bounded or discarded here. Moreover, for every realization of the seeds, \(X_i=c\) implies

\[
Z_i(c)=0,
\qquad
D_j^c(X_i)-D_j^c(c)=0\ \text{for all }j,
\qquad
T_c(c)=R_0^c(c)=R_H^c(c)=0.
\]

**Proof / justification.** The accepted `step_001` first-moment result and \(|\mu|\leq\lambda\) give

\[
\mathbb E_D|X|
\leq\mathbb E_D|X-\mu|+|\mu|
\leq\sigma+\lambda<\infty.
\]

Thus the integrability condition in Proposition~\ref{prop:step-006-residual-interface} is discharged. That proposition gives, for each deterministic \(t\),

\[
(\mu-t)-\mathbb E_DT_t(X)
=\mathbb E_D R_0^t(X)+\mathbb E_D R_H^t(X).
\]

Proposition~\ref{prop:step-008-conditional-mean} identifies \(\mathbb E_DT_t(X)=\theta(t)\), proving the two displayed residual formulas, first for every deterministic \(t\) and then at the measurable random value \(t=c\). No interchange with the random center is required: the deterministic identity is simply evaluated at its realized value.

If \(X_i=c\), then the response indicator and the decoder-centering indicator in the definition of \(Z_i(c)\) have the same level, offsets, threshold, and dither, so their difference is zero for every \(U_i\). Hence \(Z_i(c)=0\) pathwise, regardless of the level probability or whether the offset pair matches. Exact vanishing of every centered digit, the telescope, and both residuals is the accepted zero-displacement conclusion from `step_006`. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-008-level-offset-law} proves that all sampled-level probabilities are strictly positive, normalized exactly, and legal even when one auxiliary group is empty. It also supplies the exact ordered-pair probability \(1/16\), including at \(j=0\), \(j=J-1\), and \(J=1\). Lemma~\ref{lem:step-008-refinement-kernel} then places the always-defined center from the accepted `step_001` dependency in \(\mathscr F_{\rm loc}\), proves that the complete refinement tuple retains its product law after localization conditioning, and proves conditional integrability and square-integrability before any expectation is interchanged.

Using that legal kernel and the accepted exact dither first moment, Proposition~\ref{prop:step-008-conditional-mean} tracks

\[
p_j\times\frac{16}{p_j}\times\frac1{16}=1
\]

at every level and obtains the exact binding identity

\[
\mathbb E[Z_i(c)\mid c]
=\theta(c)
=\sum_{j=0}^{J-1}\mathbb E_D[D_j^c(X)-D_j^c(c)]
=\mathbb E_DT_c(X).
\]

Using the accepted exact dither square, Proposition~\ref{prop:step-008-raw-square} tracks

\[
p_j\times\frac{256}{p_j^2}\times\frac1{16}\times3h_j
=\frac{48h_j}{p_j}
\]

and obtains

\[
\mathbb E[Z_i(c)^2\mid c]
=48\sum_{j=0}^{J-1}\frac{h_j}{p_j}
\mathbb E_D|D_j^c(X)-D_j^c(c)|.
\]

Its derivation preserves the exact within-digit square/cross expression, and cross-level terms vanish only because one and only one level is sampled. The proposition also substitutes the exact fine and coarse laws without bounding a normalizer or importing a future activity argument.

Finally, Proposition~\ref{prop:step-008-target-interface} combines the accepted `step_006` interface with the exact mean to retain the complete same-target residual

\[
(\mu-c)-\theta(c)
=\mathbb E_D R_0^c(X)+\mathbb E_D R_H^c(X),
\]

and proves the exact \(X_i=c\) baseline. These named results jointly establish every component of the binding `step_008` claim under the listed assumption and dependencies, with no use of `step_007` or any later variance or bias conclusion.

## Explicit Rate Audit

- Exposed variables: \(J\), every \(h_j\), every \(p_j\), \(m\), each nonempty \(W_G\), \(k\), \(D\), and the realized center \(c\). The exact mean also exposes the pair probability \(1/16\) and importance factor \(16/p_j\); the raw square exposes the squared factor \(256/p_j^2\) and exact coefficient \(48\).
- Hidden constants may depend on: None. Both principal conclusions are exact equalities.
- Hidden constants may not depend on: \(k,\lambda,\sigma,\epsilon,\delta,D,c,J,h_j,p_j,m,W_G\), or the refinement index \(i\).
- Fixed quantities: the known protocol parameters, finite fixed scale family, level law, distribution \(D\), and index \(i\) are fixed while the one-sample conditional expectations are taken. No asymptotic limit is used.
- Probability mode: exact conditional expectation and exact conditional raw second moment, first given the full localization sigma-field and then given \(c\). The identities hold on and off the generated localization event. They are not high-probability, variance, or unconditional-PAC bounds.
- Horizon mode: one refinement observation inside the deterministic fixed-horizon protocol; the level sum is finite. No stopping-time, all-time, or horizon-uniform claim is made.
- Norm mode: scalar absolute value \(|D_j^c(X)-D_j^c(c)|\) in the raw-square interface; the target residual uses absolute-space scalar identities but remains signed.
- Admissibility conditions and auxiliary tolerances: \(J\geq1\), \(p_j>0\), and the exact setting level/offset/dither laws. Lemma~\ref{lem:step-008-level-offset-law} proves the first two facts from the setting definitions. No tolerance is introduced.
- Term absorption or simplification inequalities: None. No term is dropped, dominated, or absorbed. The displayed fine/coarse formulas are exact substitutions of \(p_j=m^{-1}w_j/W_G\).
- Probability conversion: the tower property converts the exact \(\mathscr F_{\rm loc}\)-conditional identity to the exact \(c\)-conditional identity. There is no confidence allocation or union bound.
- Contribution to any Rate Specialization Bridge: the raw square is the unsimplified input for later fine/coarse variance steps. This step makes no rate claim and leaves every \(p_j\), normalizer, digit expectation, and group contribution visible.
- Baseline-reduction check: at the pointwise specialization \(X_i=c\), both centered threshold indicators coincide for every dither value, so \(Z_i(c)=0\) pathwise and every mean/square integrand is zero; if the deterministic-center refinement law is concentrated at that same center, both exact moments are therefore zero. The telescope and both residuals also vanish exactly. No bounded surrogate replaces this identity.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing object:**
  - \(\theta(t):=\mathbb E_DT_t(X)\) is the sole new public-facing object. Proposition~\ref{prop:step-008-conditional-mean} proves that it is exactly the conditional mean of \(Z_i(t)\) under the independent refinement kernel. The downstream square interface is exported as a full formula rather than hidden behind another helper symbol.
- **Setting-defined public objects:** \(h_j,J,\mathcal J_{\rm f},\mathcal J_{\rm c},w_j,W_G,m,p_j,a_j(t),D_j^t,T_t,R_0^t,R_H^t,Z_i(t)\) all come from `setting.md`. No one-off replacement for an original setting object is exported.
- **Appendix-local abbreviation:** \(\Delta_j^t(x)=D_j^t(x)-D_j^t(t)\) abbreviates a repeated setting-defined expression. Every exported conclusion also displays the expression in full, so this abbreviation hides no dependence or bound.
- **Proof-local objects:** \(\mathscr F_{\rm loc}\), \(M_j^t\), \(G_{j,a,b}^t\), the threshold indicators \(I_x,I_t\), and \(\phi_{j,a,b}\) are used only to expose the sigma-field, match-probability, exact square, and measurability calculations. None is exported.
- **Constant provenance:** \(16\) is exactly \((1/4)^{-2}\), the inverse probability of the selected ordered offset pair. \(256\) is its square. The factor \(3h_j\) and the dither support \([-1,2]\) are setting-defined. The coefficient \(48\) is exactly \(256\times(1/16)\times3\) after one level factor \(p_j\) cancels one of the two inverse-level factors. No hidden constant appears.
- **Importance-law provenance:** Every \(p_j\) is directly defined from the setting weights. Lemma~\ref{lem:step-008-level-offset-law} proves positivity, normalization, group mass, and empty-group legality. No normalizer bound from another step is assumed.
- **Assumption provenance:** Refinement/localization independence and all seed laws are primitive consequences of `assump:iid-independent-randomness`. The center's measurability and integrability of \(X\) are accepted outputs from `step_001`; bounded digits and both dither identities are accepted outputs from `step_005`; the telescope, residuals, and zero baseline are accepted outputs from `step_006`. Conditional square-integrability and the exact mean/square formulas are proved in this step. Localization success is a generated event but is not consumed.
- **Sigma-field audit:** Conditioning on the larger \(\mathscr F_{\rm loc}\) fixes the entire localization realization and hence \(c\), while leaving the refinement product law unchanged. Passing to \(\sigma(c)\) uses only the tower property. The proof never conditions on the dither-dependent response \(Y_i\) while applying a dither identity.
- **Endpoint and boundary audit:** Strict digit range keeps both normalized thresholds inside \((-1,2)\); the accepted dither identity handles \(U=-1,2\), either threshold tie, and reversed threshold order. Lemma~\ref{lem:step-008-level-offset-law} handles \(J=1\), \(j=0\), \(j=J-1\), and an empty fine or coarse auxiliary group. At \(X_i=c\), every centered object vanishes pointwise.
- **Finite-interchange audit:** \(J\) is finite, every \(p_j\) is positive, \(|Z_i(t)|\) has a deterministic finite bound, and \(|\Delta_j^t(X)|<3h_j\). Therefore all sums, conditional expectations, and order changes in this artifact are finite and absolutely integrable; no Tonelli, limiting, or infinite-series interchange is needed.
- **Dependency boundary:** The raw square retains every digit term and performs only exact probability averaging. No activity/support certificate, fine/coarse variance estimate, moment-tail charge, residual bias bound, or concentration result is imported from `step_007` or any later step.
- **Diagnostic boundary:** The optional global diagnostic pair was not read and supplied no evidence, cited result, assumption, notation, or authority to change the target claim.
