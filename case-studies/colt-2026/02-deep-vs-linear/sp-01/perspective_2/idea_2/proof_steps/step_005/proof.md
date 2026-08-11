# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_005`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Concatenate the tuple, zero-pad one successful separator per target, and prove exact score equality and one common target-independent feature map, then derive \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\); also prove the stated \(d\le p(S,T)\) specialization.
- Depends on: accepted `step_001`, `step_003`, and `step_004` proof/review artifacts.
- Assumptions used: Primitive `assump:source-regime`; derived common tuple and repetition budget; optional separately established explicit \(d\le p(S,T)\) only for the specialization.
- Technical challenge: Show exact score equality, one common target-independent map, and no lost dependence or residual at ties while preserving the empty and \(d=0\) branches.
- Intended proof tool or cited result: Direct-sum linear algebra and scalar substitution.
- Output target: Final deterministic feature map, theorem bound, and polynomial specialization.
- Rate objective: Structural-parameter objective and Rate Specialization Bridge \(rd\le7TSd\le7TSp(S,T)\).
- Row-local review status: `PENDING` in the accepted sketch; the sketch-level review status is `ACCEPTED`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:source-regime`: \(n,L,T\in\mathbb Z_{\ge1}\), positive architecture widths, \(S=\sum_{i=1}^L n_i n_{i-1}\), \(\eta>0\), and \(d\in\mathbb Z_{\ge0}\). In particular, \(T,S,d\) are nonnegative and the first-layer count is defined.
  - `assump:tie-resolved-confident-map`: the primitive conditional premise used by the accepted zero-dimensional and covering dependencies. This proof consumes those accepted conclusions and does not re-prove or strengthen the premise.
- Derived invariants supplied by accepted dependencies:
  - Accepted `perspective_2/idea_2/proof_steps/step_001/proof.md` with matching `review.md` status `ACCEPTED`: Proposition~\ref{prop:step-001-empty} closes \(\mathcal H=\varnothing\), Lemma~\ref{lem:step-001-zero} closes \(d=0\), and Proposition~\ref{prop:step-001-architecture} supplies the remaining-branch facts \(\mathcal H\ne\varnothing\), \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\).
  - Accepted `perspective_2/idea_2/proof_steps/step_003/proof.md` with matching `review.md` status `ACCEPTED`: Proposition~\ref{prop:step-003-budget} supplies \(M=|\mathcal H|\ge1\), \(r=\lceil\log_2(2M)\rceil\in\mathbb Z_{\ge1}\), and \(r\le7TS\) on the remaining branch.
  - Accepted `perspective_2/idea_2/proof_steps/step_004/proof.md` with matching `review.md` status `ACCEPTED`: Proposition~\ref{prop:step-004-covering} supplies one deterministic tuple \((\phi_1^*,\ldots,\phi_r^*)\), fixed before selecting a target, such that every \(h\in\mathcal H\) has a successful block and separator on all of \(\mathcal X\).
- Local conditional hypotheses:
  - The exhaustive case conditions \(\mathcal H=\varnothing\), \(\mathcal H\ne\varnothing,d=0\), and \(\mathcal H\ne\varnothing,d\ne0\) are proof-local branch splits, not added theorem assumptions.
  - The optional polynomial specialization has the explicitly conditional local hypothesis that a separately established, fully explicit polynomial \(p(S,T)\) satisfies \(d\le p(S,T)\) at the current setup; it is not used to prove the main bound.

`assump:universal-sgd-success` is not used directly here; any consequence of it has already been supplied through the accepted dependency chain ending at Proposition~\ref{prop:step-003-budget}.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:source-regime} and the accepted boundary results from `step_001`, if \(\mathcal H=\varnothing\) or \(d=0\) then the exact target inequality is already true; otherwise the accepted architecture result supplies \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). | Preserves the exact null branches and routes only the nondegenerate branch to concatenation. |
| `unit_002` | lemma | Under Assumption~\ref{assump:source-regime} and accepted Propositions~\ref{prop:step-001-architecture} and \ref{prop:step-004-covering}, on the nondegenerate branch, the concatenated map and zero-padded separators have pointwise score equality with the selected successful block, hence preserve every tie-resolved sign. | Establishes the common target-independent feature map and exact score-transfer interface. |
| `unit_003` | proposition | Under Assumption~\ref{assump:source-regime}, accepted Propositions~\ref{prop:step-003-budget} and \ref{prop:step-004-covering}, and Lemma~\ref{lem:step-005-score}, the nondegenerate branch satisfies \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\). | Closes the deterministic dimension bound with the explicit constant 7. |
| `unit_004` | corollary | Under Assumption~\ref{assump:source-regime}, Proposition~\ref{prop:step-005-routing}, Proposition~\ref{prop:step-005-dimension} on the nondegenerate branch, and the local conditional inequality \(d\le p(S,T)\), where \(p\) is an explicitly exposed polynomial with no hidden \(n\)- or \(\eta\)-dependence, every branch satisfies \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\). | Supplies the separate polynomial Rate Specialization Bridge without changing the main theorem contract or losing a null branch. |

## Cited Result Applications

No external paper theorem is used. The mathematical inputs are the binding definition of deterministic dimension complexity, the accepted dependency results, and the local results proved below.

| Result | Restated statement in current notation | Assumption discharge and use |
| ------ | --------------------------------------- | ---------------------------- |
| Definition of \(\operatorname{dc}\) | A map \(\Psi:\mathcal X\to\mathbb R^q\) and vectors \(a_h\in\mathbb R^q\) for all \(h\in\mathcal H\), with \(\operatorname{sgn}_{\tau}(\langle a_h,\Psi(x)\rangle)=h(x)\) for every \(x\), certify \(\operatorname{dc}(\mathcal H)\le q\). | This is the setting definition, with the same domain, inner product, and tie convention. It is invoked after the direct-sum construction. |
| Proposition~\ref{prop:step-001-empty} and Lemma~\ref{lem:step-001-zero} | The empty-class branch has \(\operatorname{dc}(\mathcal H)=0\), and on \(\mathcal H\ne\varnothing,d=0\) every target is the constant \(\tau\) classifier with \(\operatorname{dc}(\mathcal H)=0=7TSd\). | The matching `step_001` proof and `review.md` are accepted for sketch attempt 1, unit attempt 1. These results close the two branches before any logarithm or concatenation is used. |
| Proposition~\ref{prop:step-001-architecture} | On the remaining branch, \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). | The matching accepted `step_001` proof/review derives these facts from `assump:source-regime`, including the \(L=1\) case. They provide nondegenerate positivity for the rate comparison. |
| Proposition~\ref{prop:step-003-budget} | With \(M=|\mathcal H|\) and \(r=\lceil\log_2(2M)\rceil\), one has \(M\ge1\), \(r\ge1\), and \(r\le7TS\) on the remaining branch. | The matching accepted `step_003` proof/review supplies the exact integer budget and all VC/counting prerequisites. |
| Proposition~\ref{prop:step-004-covering} | There are deterministic maps \(\phi_i^*:\mathcal X\to\mathbb R^d\), \(1\le i\le r\), such that for every \(h\in\mathcal H\) some \(i\) and \(w\in\mathbb R^d\) satisfy \(\operatorname{sgn}_{\tau}(\langle w,\phi_i^*(x)\rangle)=h(x)\) for all \(x\). | The matching accepted `step_004` proof/review supplies one tuple common to all targets; only the block index and separator may depend on \(h\). |
| Proposition~\ref{prop:step-005-routing} | The empty and zero-dimensional branches satisfy the exact target, while the remaining branch has \(d\ge1\) and \(T,S\ge1\). | Proved in this step from accepted `step_001` results. Used by the all-branch target assembly and polynomial specialization. |
| Lemma~\ref{lem:step-005-score} | The direct-sum map and zero-padded vector defined below satisfy exact pointwise score equality with the selected successful block. | Proved in this step and used by Proposition~\ref{prop:step-005-dimension}. |
| Proposition~\ref{prop:step-005-dimension} | The common direct-sum map certifies \(\operatorname{dc}(\mathcal H)\le rd\le7TSd\). | Proved in this step and used by the target-step assembly and the optional corollary. |
| Corollary~\ref{cor:step-005-polynomial-bridge} | If a separate explicit polynomial bound \(d\le p(S,T)\) with no hidden \(n\)- or \(\eta\)-dependence is supplied, then every branch satisfies \(\operatorname{dc}(\mathcal H)\le7TSp(S,T)\). | Proved in this step by exact null-branch routing and the displayed scalar comparison on the nondegenerate branch. Used by the optional part of the target-step assembly. |

## Local Derivation

### unit_001: proposition

**Proposition (Exact boundary routing and nondegenerate controls).** \(\label{prop:step-005-routing}\)
Under Assumption~\ref{assump:source-regime} and the accepted results Propositions~\ref{prop:step-001-empty}, \ref{prop:step-001-architecture} and Lemma~\ref{lem:step-001-zero}, the following exhaustive alternatives hold:

1. If \(\mathcal H=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\le7TSd\).
2. If \(\mathcal H\ne\varnothing\) and \(d=0\), then \(\operatorname{dc}(\mathcal H)=0=7TSd\).
3. If \(\mathcal H\ne\varnothing\) and \(d\ne0\), then \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\).

**Proof.** The three cases are exhaustive because \(\mathcal H\) is either empty or nonempty and \(d\in\mathbb Z_{\ge0}\). In the first case, Proposition~\ref{prop:step-001-empty} gives the exact dimension-zero conclusion. In the second case, Lemma~\ref{lem:step-001-zero} gives the exact common zero-map conclusion with the fixed convention \(\operatorname{sgn}_{\tau}(0)=\tau\). In either case the logarithmic quantity \(r\) and a block tuple are unnecessary, so no undefined expression is introduced when \(\mathcal H=\varnothing\). In the third case, Proposition~\ref{prop:step-001-architecture} supplies all displayed positivity and structural controls. \(\square\)

### unit_002: lemma

**Lemma (Exact direct-sum score preservation).** \(\label{lem:step-005-score}\)
Under Assumption~\ref{assump:source-regime}, the accepted nondegenerate-branch conclusion of Proposition~\ref{prop:step-001-architecture}, and the accepted covering conclusion of Proposition~\ref{prop:step-004-covering}, let \(r=\lceil\log_2(2|\mathcal H|)\rceil\) and let \((\phi_1^*,\ldots,\phi_r^*)\) be the deterministic tuple supplied there. If \(\mathcal H\ne\varnothing\) and \(d\ne0\), then there are a single map \(\Phi:\mathcal X\to\mathbb R^{rd}\) and vectors \(u_h\in\mathbb R^{rd}\), one for each \(h\in\mathcal H\), such that for every \(h\) and \(x\),
\[
\langle u_h,\Phi(x)\rangle
=\langle w_h,\phi_{i(h)}^*(x)\rangle,
\qquad
\operatorname{sgn}_{\tau}(\langle u_h,\Phi(x)\rangle)=h(x),
\]
where \(i(h)\) and \(w_h\) are one successful block and separator for \(h\) from Proposition~\ref{prop:step-004-covering}. The map \(\Phi\) is independent of \(h\).

**Proof.** By Proposition~\ref{prop:step-001-architecture}, the branch has \(d\ge1\). Proposition~\ref{prop:step-004-covering} supplies a fixed tuple and, for each \(h\), a nonempty finite set
\[
I_h:=\left\{i\in\{1,\ldots,r\}:\exists w\in\mathbb R^d\ \forall x\in\mathcal X,\ \operatorname{sgn}_{\tau}(\langle w,\phi_i^*(x)\rangle)=h(x)\right\}.
\]
Choose \(i(h):=\min I_h\), and choose one witnessing vector \(w_h\in\mathbb R^d\) for this index. This is a finite target-by-target selection of witnesses; it changes neither the already fixed tuple nor the feature map.

Define the concatenated map by
\[
\Phi(x):=(\phi_1^*(x),\ldots,\phi_r^*(x))\in(\mathbb R^d)^r\cong\mathbb R^{rd}.
\]
This definition uses only the deterministic tuple and therefore is one common target-independent map. For each target define the zero-padded vector
\[
u_h:=(u_{h,1},\ldots,u_{h,r})\in(\mathbb R^d)^r,
\qquad
u_{h,j}:=
\begin{cases}
w_h,&j=i(h),\\
0_d,&j\ne i(h),
\end{cases}
\]
where \(0_d\) is the zero vector in \(\mathbb R^d\). The Euclidean product inner product gives, for every \(x\in\mathcal X\),
\[
\begin{aligned}
\langle u_h,\Phi(x)\rangle
&=\sum_{j=1}^{r}\langle u_{h,j},\phi_j^*(x)\rangle\\
&=\langle w_h,\phi_{i(h)}^*(x)\rangle,
\end{aligned}
\]
because every term with \(j\ne i(h)\) is \(\langle0_d,\phi_j^*(x)\rangle=0\). Thus the score residual is explicitly
\[
\langle u_h,\Phi(x)\rangle-\langle w_h,\phi_{i(h)}^*(x)\rangle=0.
\]
Applying the same fixed \(\operatorname{sgn}_{\tau}\) to equal scores preserves the successful block's exact label, including when that score is zero. Hence \(\operatorname{sgn}_{\tau}(\langle u_h,\Phi(x)\rangle)=h(x)\) for every \(h,x\). \(\square\)

### unit_003: proposition

**Proposition (Common exact representation and dimension bound).** \(\label{prop:step-005-dimension}\)
Under Assumption~\ref{assump:source-regime}, accepted Propositions~\ref{prop:step-001-architecture}, \ref{prop:step-003-budget}, and \ref{prop:step-004-covering}, and Lemma~\ref{lem:step-005-score}, if \(\mathcal H\ne\varnothing\) and \(d\ne0\), then
\[
\operatorname{dc}(\mathcal H)\le rd\le7TSd,
\qquad r=\left\lceil\log_2(2|\mathcal H|)\right\rceil.
\]

**Proof.** Lemma~\ref{lem:step-005-score} supplies one map \(\Phi:\mathcal X\to\mathbb R^{rd}\) and, for every target, a vector \(u_h\in\mathbb R^{rd}\) with exact tie-resolved signs on all of \(\mathcal X\). By the definition of \(\operatorname{dc}\), this is a feasible representation of dimension \(rd\), so \(\operatorname{dc}(\mathcal H)\le rd\). The accepted Proposition~\ref{prop:step-003-budget} gives \(r\le7TS\). Since \(d\ge1\) by Proposition~\ref{prop:step-001-architecture},
\[
7TSd-rd=(7TS-r)d\ge0,
\]
and therefore \(rd\le7TSd\). The integer product \(rd\) is a valid dimension because \(r,d\in\mathbb Z_{\ge0}\). \(\square\)

### unit_004: corollary

**Corollary (Conditional polynomial rate specialization).** \(\label{cor:step-005-polynomial-bridge}\)
Under Assumption~\ref{assump:source-regime}, Proposition~\ref{prop:step-005-routing}, and Proposition~\ref{prop:step-005-dimension} on the nondegenerate branch, suppose additionally that a separate result supplies an explicit polynomial expression \(p(S,T)\) satisfying \(d\le p(S,T)\) at the current setup, with all coefficients and auxiliary dependence exposed and with no hidden dependence on \(n\) or \(\eta\). Then every branch satisfies
\[
\operatorname{dc}(\mathcal H)\le7TSp(S,T),
\]
which is polynomial in \(S,T\) whenever \(p\) is polynomial in those variables.

**Proof.** The additional inequality is a local conditional hypothesis for this corollary only; it is not used to establish Proposition~\ref{prop:step-005-dimension}. From Assumption~\ref{assump:source-regime}, \(T\ge1\), and the positive architecture widths imply \(S\ge1\); hence \(7TS\ge0\). The supplied inequality and \(d\ge0\) imply \(p(S,T)\ge d\ge0\) at the current parameters. Proposition~\ref{prop:step-005-routing} and Proposition~\ref{prop:step-005-dimension}, applied in its nondegenerate alternative, jointly give the all-branch main inequality
\[
\operatorname{dc}(\mathcal H)\le7TSd.
\]
Indeed, the first proposition closes \(\mathcal H=\varnothing\) and \(d=0\), and the second closes the remaining branch. The exact absorption relation is
\[
7TSp(S,T)-7TSd=7TS\bigl(p(S,T)-d\bigr)\ge0.
\]
Combining the all-branch main inequality with this relation gives
\[
\operatorname{dc}(\mathcal H)\le7TSd\le7TSp(S,T).
\]
No representation score, tie, probability, or horizon term is changed: on the nondegenerate branch the same deterministic map from Lemma~\ref{lem:step-005-score} is used, and on the null branches the exact accepted maps remain in force. Only a scalar upper bound is substituted. If the separate inequality is unavailable, this corollary is not asserted. When \(p(S,T)=d\), the bridge is equality; when \(d=0\), the exact boundary conclusion of Lemma~\ref{lem:step-001-zero} remains the baseline rather than being replaced by a positive-dimensional surrogate. \(\square\)

## Target-Step Assembly

Proposition~\ref{prop:step-005-routing} first handles every boundary branch. If \(\mathcal H=\varnothing\), the exact convention gives \(\operatorname{dc}(\mathcal H)=0\) and the main inequality is already true; no logarithmic budget or feature tuple is needed. If \(\mathcal H\ne\varnothing\) and \(d=0\), the accepted zero-dimensional result gives \(\operatorname{dc}(\mathcal H)=0=7TSd\), with the original tie label preserved.

On the only remaining branch, Proposition~\ref{prop:step-001-architecture} supplies \(d\ge1\), \(T,S\ge1\), and the positivity needed below. Accepted Proposition~\ref{prop:step-003-budget} supplies the exact integer \(r=\lceil\log_2(2|\mathcal H|)\rceil\le7TS\), while accepted Proposition~\ref{prop:step-004-covering} supplies one deterministic tuple that works for every target. Lemma~\ref{lem:step-005-score} concatenates that tuple into one map \(\Phi\) chosen before any target-specific separator. Its pointwise score identity is exact, so the fixed \(\operatorname{sgn}_{\tau}\), including zero-score ties, returns each target exactly. Proposition~\ref{prop:step-005-dimension} then invokes the definition of \(\operatorname{dc}\) and the explicit inequality \(rd\le7TSd\). Therefore every setup under the three setting assumptions obeys
\[
\boxed{\operatorname{dc}(\mathcal H)\le7TSd}.
\]

The common map is target-independent: the tuple is fixed once by Proposition~\ref{prop:step-004-covering}, whereas only \(i(h)\), \(w_h\), and the corresponding \(u_h\) depend on \(h\), exactly as permitted in the definition of \(\operatorname{dc}\). Finally, Corollary~\ref{cor:step-005-polynomial-bridge} performs the optional specialization only when the separately established explicit inequality \(d\le p(S,T)\) is available.

## Explicit Rate Audit

- Exposed variables: The main step exposes \(r=\lceil\log_2(2|\mathcal H|)\rceil\), \(d\), \(T\), \(S\), and the public dimension \(q=rd\); the final bound exposes only \(S,T,d\). The optional bridge additionally exposes the supplied polynomial \(p(S,T)\).
- Hidden constants may depend on: Nothing in the main bound; the constant is the explicit number \(7\). In the optional bridge, every coefficient or auxiliary parameter of \(p\) must be supplied explicitly and is not absorbed into the universal constant.
- Hidden constants may not depend on: \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d,\mathcal P\) for the main constant; the optional polynomial condition is asserted only when it has no hidden \(n\)- or \(\eta\)-dependence, as stated in the corollary.
- Fixed quantities: This is a finite nonasymptotic statement for the fixed setup. The deterministic tuple, once fixed by the accepted coverage proposition, is held fixed while target-specific separators are selected.
- Probability mode: The output is deterministic. The positive-probability product experiment has already been converted to a fixed tuple in accepted Proposition~\ref{prop:step-004-covering}; this step performs no new probability or expectation interchange.
- Horizon mode: Fixed finite horizon \(T\); no all-time or asymptotic upgrade is made.
- Norm mode: Exact full-domain tie-resolved sign equality, measured by the integer dimension complexity; no risk, margin, approximation, or norm surrogate is introduced.
- Admissibility conditions and auxiliary tolerances: The main assembly requires the exhaustive boundary routing, the accepted positive integer \(r\), and the accepted covering tuple. The optional bridge requires only the separately established scalar inequality \(d\le p(S,T)\) with explicit dependence. There are no auxiliary tolerances.
- Term absorption or simplification inequalities: The score residual is exactly zero; the dimension comparison is \(7TSd-rd=(7TS-r)d\ge0\); and the optional bridge uses \(7TSp-7TSd=7TS(p-d)\ge0\). No term is dropped by prose.
- Probability conversion: None in this step; deterministic existence and exact tie behavior are inherited from the accepted covering artifact.
- Contribution to any Rate Specialization Bridge: Lemma~\ref{lem:step-005-score} gives the common map at dimension \(rd\), Proposition~\ref{prop:step-003-budget} gives \(r\le7TS\), and Corollary~\ref{cor:step-005-polynomial-bridge} states the auxiliary inequality, verifies nonnegativity, proves scalar absorption, and records the final polynomial rate.
- Baseline-reduction check: The empty and \(d=0\) cases retain exact dimension-zero conclusions; at \(r=1\), concatenation is the original successful block; zero scores remain zero under the same tie label; and when \(p=d\), the optional specialization is equality. No baseline is replaced by an approximation or a weaker conditional surrogate.

## Blockers

None

## Notation And Assumption Notes

- The tuple \((\phi_1^*,\ldots,\phi_r^*)\) and budget \(r\) are accepted dependency objects. The common map \(\Phi:\mathcal X\to\mathbb R^{rd}\) and the existential separators \(u_h\) are `public-facing`, because they are exactly the objects required by the definition of \(\operatorname{dc}\). The block index \(i(h)\), witness \(w_h\), block vectors \(u_{h,j}\), and zero vector \(0_d\) are `proof-local` bookkeeping objects.
- The public dimension \(rd\) is directly derived from the setting dimension \(d\) and the accepted integer \(r\). The numerical factor 7 is inherited explicitly from Proposition~\ref{prop:step-003-budget}; no free constant is introduced. The optional \(p(S,T)\) is an externally supplied, explicitly exposed polynomial expression and is not hidden inside any constant.
- The only generated objects consumed here are the deterministic covering tuple and the repetition budget, both supplied by accepted predecessors. The branch facts \(d\ge1\), \(T,S\ge1\), and \(S\ge n\) are accepted derived conclusions, not primitive replacements. The optional inequality \(d\le p(S,T)\) is used only as a local conditional hypothesis for Corollary~\ref{cor:step-005-polynomial-bridge}.
- The direct-sum identity is proved pointwise before applying \(\operatorname{sgn}_{\tau}\); therefore no hidden margin, nonzero-score, or tie-avoidance assumption is present. Inactive blocks contribute exactly zero, so no cross-block or accumulated defect is left uncontrolled.
- The paired `global_proof.md` and `global_proof_review.md` were read; the latter has current status `ACCEPTED`. Its direct-sum and scalar-bridge discussion was used only as planning context. It is not proof evidence, a cited result, an assumption source, or authority to change the accepted target claim.
- No external citation is needed, and no notation from another branch or prior idea is imported. All helper symbols are defined from the current setting or accepted dependency outputs, with the target-independent map separated from target-specific separators.
