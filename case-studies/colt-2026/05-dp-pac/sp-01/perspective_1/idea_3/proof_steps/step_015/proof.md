# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_015`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Assemble: measurable global upper kernel/privacy/PAC theorem, public quota rate, candidate-wise unrestricted lower theorem, and the conditional \(n_*\) sandwich. Prove explicitly that \(k=1\) gives the measurable quotient-first Yan upper learner at the same quota order and the unrestricted VC/ALMM lower baseline with zero overflow.
- Depends on: `step_001`, `step_003`, `step_005`, `step_006`, `step_014`.
- Assumptions used: Primitive assumptions only through accepted dependencies; `assump:candidate-delta-budget` is used only for the lower candidate and the conditional sandwich.
- Technical challenge: Keep arbitrary-\(\delta\) upper and candidate-wise lower scopes distinct; do not drop the first delta conjunct or weaken baselines in specialization.
- Intended proof tool or cited result: Direct theorem assembly and sample-complexity definition.
- Output target: The exact formalized goal.
- Rate objective: All three rate objectives: preserve exposed variables, universal hidden constants, high-probability/pointwise/impossibility modes, fixed-sample/candidate horizons, exact risk, and conditional-only \(n_*\) substitution.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\) is a finite finest Cartesian partition and \(C\) is the full disjoint product of its restrictions.
  - Assumption~\ref{assump:vc-one-factors}: every factor is nonconstant, has VC dimension one, and has finite Littlestone dimension \(d_i\).
  - Assumption~\ref{assump:countably-coded-evaluation}: every evaluation quotient \(Q_i\) is finite or countable discrete, and every quotient cell is measurable.
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le1/10\) and \(0<\delta<1\). This is the complete privacy-parameter condition for the upper clause.
  - Assumption~\ref{assump:candidate-delta-budget}: only for a particular lower candidate \(n\),
    \[
    0<\delta\le \frac1{n\log(n+1)}
    \quad\text{and}\quad
    \delta\le
    \frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
    \quad\text{for every }1\le i\le k.
    \tag{1}
    \]
    Both conjuncts are retained. This condition is not used for the arbitrary-\(\delta\) upper clause and is not asserted uniformly in \(n\).
- Derived invariants and interfaces supplied by accepted dependencies:
  - Accepted Lemmas~\ref{lem:step-001-output-measurability}, \ref{lem:step-001-risk-pullback}, and \ref{lem:step-001-logstar}: the quotient tuple output and decoder are legal, quotient/raw risk agrees exactly and measurably, and, with \(M:=M_{\oplus}(C)\), one has \(s_i\ge2\) and \(M\ge2k\).
  - Accepted Propositions~\ref{prop:step-003-product-kernel} and \ref{prop:step-003-joint-composition}: for every fixed sample size, the setting-specified routed tuple rule is a measurable Markov kernel with measurable decoding and is all-input replacement-\((\varepsilon,\delta)\)-DP.
  - Accepted Proposition~\ref{prop:step-005-pac-closure}: the universal choice
    \[
    C_{\rm up}=65536
    \tag{2}
    \]
    gives the exact global \((1/16,1/16)\) PAC event whenever \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\), and its \(k=1\) specialization directly retains the stronger unpadded factor guarantee.
  - Accepted Proposition~\ref{prop:step-006-public-quota-bridge}: the universal choice
    \[
    C_{\rm quota}:=\max\left\{1,K_Y+\frac1{20}\right\}
    \tag{3}
    \]
    gives the exact public quota bound.
  - Accepted Propositions~\ref{prop:step-014-deterministic-atom} and \ref{prop:step-014-candidate-closure}: at one candidate satisfying (1), every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner with the universal PAC guarantee satisfies \(n\ge c_{\rm low}M\); the contradicted branch has a deterministic full-product strict PAC-failure witness with block masses \(\omega_i\). The accepted one-factor specialization is the unrestricted VC/ALMM baseline with zero overflow.
- Local conditional hypotheses:
  - The candidate-wise lower result fixes one \(n\) satisfying (1) and one unrestricted learner at that same \(n\). Its universal PAC guarantee is the premise of the forward lower implication; no property of a generated sample, event, output, or trajectory is assumed.
  - The sample-complexity sandwich assumes (1) only after substituting the particular integer \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\).
- Accepted dependency artifacts:
  - `step_001` proof/review SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` / `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, review status `ACCEPTED`.
  - `step_003` proof/review SHA-256 `fc66927e8f05a0784e367e04507ba48fc174e9a36f7ad2fc9bbcf94f4ba608fc` / `992e19494f947b9ecbf5bbf0dac7653b262cd3a7e491ebe6adbf3b461a1ef530`, review status `ACCEPTED`.
  - `step_005` proof/review SHA-256 `d00fe96f2e35c4fffc4b48aa926dc259c79f94597d2ea523fd4f0552e2646d0f` / `bfabe6904f48c9e512cb239baee1caeae1473038ecdab62ff333f2a29cd44226`, review status `ACCEPTED`.
  - `step_006` proof/review SHA-256 `491aa4890100830eb2aadb8856fc6c22ff45f25492aa7ee9f1abd57cdb4eea14` / `a76af75f1103f2908f584dd03d46daf429d6c49e05502832d7d7b5c5d3e11d92`, review status `ACCEPTED`.
  - `step_014` proof/review SHA-256 `fdda03bc4eddf577fe529168c38537b610187f60fd3aac85cededc24b3861572` / `cf6d387bbf0b239ad43583d608b02c96355006921a8787ebec0878399a2619f6`, review status `ACCEPTED`.

No factorwise-output, properness, efficiency, balance, finite-support, cardinality, or uniform-in-candidate condition is added. Every kernel, risk event, weighted defect, lower prior, coupling, and deterministic witness used here is an accepted derived object rather than a primitive assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, and the accepted upper dependency results, the routed quotient-first rule is a measurable all-input replacement-\((\varepsilon,\delta)\)-DP learner and satisfies the exact global PAC event for every \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\); consequently \(\operatorname{SC}_{\varepsilon,\delta}(C)\le\lceil C_{\rm up}Q_{\oplus}\rceil\), together with the public quota rate. | Assembles the complete arbitrary-\(\delta\) upper theorem and proves finiteness of sample complexity. |
| `unit_002` | proposition | Under the four structural/privacy assumptions, Assumption~\ref{assump:candidate-delta-budget} at one fixed candidate, and accepted Proposition~\ref{prop:step-014-candidate-closure}, every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner attaining the universal PAC guarantee satisfies \(n\ge c_{\rm low}M\), with the accepted strict deterministic witness on the contradicted branch. | Assembles the exact fixed-candidate lower theorem while retaining both delta conjuncts and the unrestricted learner scope. |
| `unit_003` | proposition | Under Propositions~\ref{prop:step-015-global-upper} and \ref{prop:step-015-candidate-lower}, if Assumption~\ref{assump:candidate-delta-budget} holds after substituting \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\), then \(c_{\rm low}M\le n_*\le\lceil C_{\rm up}Q_{\oplus}\rceil\le C_{\rm up}C_{\rm quota}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))\); if the check fails, only the unconditional upper conclusion is asserted. | Proves the legal one-candidate sandwich and its exact public rate without a uniform-candidate upgrade. |
| `unit_004` | proposition | Under the upper assumptions and accepted upper dependencies, if \(k=1\), then the routed rule is exactly the sole measurable quotient-first Yan factor kernel on an unpadded quota-length prefix, with \(Q_{\oplus}=q_1\), the same quota order, zero shortage, exact quotient/raw risk, and the stronger accepted factor utility. | Proves the upper baseline invariance rather than merely making a generic defect vanish. |
| `unit_005` | proposition | Under the lower assumptions at one admissible candidate and accepted Proposition~\ref{prop:step-014-candidate-closure}, if \(k=1\), then \(\omega_1=1\), the number of requested factor rows is exactly \(n\), \(m_{n,1}=\max\{8,4n\}\ge n\), overflow is identically zero, and the conclusion is the unrestricted one-factor VC/ALMM lower baseline with the exact strict PAC-failure event. | Proves the lower baseline invariance, including zero overflow and no properness or quotient-output restriction. |

Atomic step = no. Upper closure, lower closure, candidate substitution, and the two baseline reductions are logically distinct obligations.

## Cited Result Applications

No external paper result is invoked directly in this assembly step. Yan and ALMM enter only through the named, hash-matched accepted dependency propositions, whose source checks were completed in their producer proofs and reviews.

| Result | Restated statement in current notation | Assumption discharge | Conclusion used |
| ------ | --------------------------------------- | -------------------- | --------------- |
| Accepted Lemma~\ref{lem:step-001-output-measurability} | \((\mathcal H^{\oplus},\mathscr H^{\oplus})\) is standard Borel, the tuple-to-raw decoder is measurable in the finite-evaluation-cylinder convention, and every decoded hypothesis is \(\Sigma\)-measurable. | The three structural assumptions are exactly its accepted primitive basis. | Legal learner output and decoding in Proposition~\ref{prop:step-015-global-upper}; exact one-factor output identification in Proposition~\ref{prop:step-015-one-factor-upper}. |
| Accepted Lemma~\ref{lem:step-001-risk-pullback} | For every fixed target and arbitrary probability measure, quotient and raw factor/global risks agree exactly and the global risk is measurable in the quotient tuple. | Countable measurable quotient cells and the finite disjoint product are the accepted inputs. | Exact PAC metric and zero quotient residual in the upper theorem and one-factor baseline. |
| Accepted Lemma~\ref{lem:step-001-logstar} | With \(M=M_{\oplus}(C)=\sum_i s_i\), one has \(s_i\ge2\) and \(M\ge2k\). | Assumption~\ref{assump:vc-one-factors} is its primitive basis. | Positivity and public-rate endpoint facts; at \(k=1\), \(M=s_1\). |
| Accepted Proposition~\ref{prop:step-003-product-kernel} | For every fixed \(n\), the independently randomized routed factor rules form the measurable tuple kernel \(\bar A_n^{\oplus,Q}\), with measurable decoding and measurable fixed-\(c,D\) risk events. | Accepted factor kernels, measurable routing, and the current structural assumptions are discharged in the accepted producer. | Kernel and output clauses of Proposition~\ref{prop:step-015-global-upper}. |
| Accepted Proposition~\ref{prop:step-003-joint-composition} | For every adjacent labeled pair and every measurable tuple or decoded event, the routed rule is replacement-\((\varepsilon,\delta)\)-DP; only at most two factor costs are used. At \(k=1\), the sole factor cost is retained. | Assumption~\ref{assump:global-privacy-range} and the accepted support-two/factor-private interfaces are its exact inputs. | Global pointwise privacy and the one-factor privacy reduction. |
| Accepted Proposition~\ref{prop:step-005-pac-closure} | With \(C_{\rm up}=65536\), every \(n\ge\lceil C_{\rm up}Q_{\oplus}\rceil\) gives \(\Pr[R_D\le1/16]\ge15/16\) for every target and arbitrary \(D\). At \(k=1\), the same rule is unpadded and directly gives \(\Pr[R_D\le1/64]\ge4095/4096\). | Its accepted factor utility and weighted-shortage inputs apply under the upper primitive assumptions. | PAC and sample-complexity clauses; stronger one-factor utility. |
| Accepted Proposition~\ref{prop:step-006-public-quota-bridge} | With (3), \(Q_{\oplus}\le C_{\rm quota}(M/\varepsilon)\log^2(eM/(\varepsilon\delta))\), including all ceilings and no cardinality term. | Assumptions~\ref{assump:vc-one-factors} and \ref{assump:global-privacy-range}, plus the accepted scalar dependency, are its complete basis. | Public quota rate and the final sandwich rate. |
| Accepted Proposition~\ref{prop:step-014-deterministic-atom} | On the contradicted admissible-candidate branch, the accepted finite lower experiment contains a deterministic full-product target and a legal block-mixture distribution with masses \(\omega_i\) for which \(\Pr[R_D>1/16]>1/16\). | The accepted lower chain supplies the same candidate, learner, exact risk, finite task law, and strict expectation gap. | Explicit lower impossibility witness with no expectation-only residual. |
| Accepted Proposition~\ref{prop:step-014-candidate-closure} | At a candidate satisfying both inequalities in (1), every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner with the universal PAC guarantee obeys \(n\ge c_{\rm low}M\). Its \(k=1\) proof preserves the low-complexity VC branch, the high-complexity unrestricted ALMM branch, the strict PAC event, and zero overflow. | Assumption~\ref{assump:candidate-delta-budget} is checked at that one candidate; all structural lower inputs are accepted derived interfaces. | Candidate-wise lower clause, conditional \(n_*\) substitution, and lower one-factor baseline. |

The local results used in the target assembly are restated before use:

| Local result | Restated statement and assumption basis | Later use |
| ------------ | ---------------------------------------- | --------- |
| Proposition~\ref{prop:step-015-global-upper} | Under the upper primitive assumptions and accepted upper interfaces, the specified learner is measurable, private, and PAC at the quota threshold, and it yields both sample-complexity and public quota bounds. | Conditional sandwich and final theorem. |
| Proposition~\ref{prop:step-015-candidate-lower} | Under the candidate condition at one fixed \(n\), accepted lower closure gives \(n\ge c_{\rm low}M\) for every universally PAC unrestricted private learner, with the strict witness on the contradicted branch. | Conditional sandwich and final theorem. |
| Proposition~\ref{prop:step-015-conditional-sandwich} | If both candidate-delta inequalities hold at the actual least sample size, the upper and lower bounds meet at that one integer; otherwise no lower substitution is made. | Conditional characterization. |
| Proposition~\ref{prop:step-015-one-factor-upper} | At \(k=1\), routing is the same sole quotient-first Yan factor call, with no padding and the exact one-factor quota and risk. | Upper baseline conclusion. |
| Proposition~\ref{prop:step-015-one-factor-lower} | At \(k=1\), the accepted unrestricted VC/ALMM lower result has factor weight one and identically zero overflow. | Lower baseline conclusion. |

## Local Derivation

Throughout this section write
\[
M:=M_{\oplus}(C),
\qquad
C_{\rm up}:=65536,
\qquad
C_{\rm quota}:=\max\left\{1,K_Y+\frac1{20}\right\}.
\tag{4}
\]
The first abbreviation is a setting quantity, and the two constants are inherited accepted dependency constants.

### unit_001: proposition

**Proposition (Measurable global upper theorem and public quota bound).** \(\label{prop:step-015-global-upper}\)

Statement:
Under Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, accepted Lemmas~\ref{lem:step-001-output-measurability} and \ref{lem:step-001-risk-pullback}, accepted Propositions~\ref{prop:step-003-product-kernel}, \ref{prop:step-003-joint-composition}, \ref{prop:step-005-pac-closure}, and \ref{prop:step-006-public-quota-bridge}, the following holds without Assumption~\ref{assump:candidate-delta-budget}. For every integer
\[
n\ge\left\lceil C_{\rm up}Q_{\oplus}\right\rceil,
\tag{5}
\]
the setting-specified quotient-first routed rule \(\bar A_n^{\oplus,Q}\) is a measurable Markov kernel into \((\mathcal H^{\oplus},\mathscr H^{\oplus})\), is replacement-\((\varepsilon,\delta)\)-DP on all labeled inputs, and, for every \(c\in C\) and every probability measure \(D\) on \((X,\Sigma)\), satisfies
\[
\Pr_{S\sim D_c^n,\,\bar A_n^{\oplus,Q}}
\left[
R_D\bigl(h_{\bar A_n^{\oplus,Q}(S)},c\bigr)\le\frac1{16}
\right]
\ge\frac{15}{16}.
\tag{6}
\]
Consequently,
\[
\operatorname{SC}_{\varepsilon,\delta}(C)
\le\left\lceil C_{\rm up}Q_{\oplus}\right\rceil,
\qquad
Q_{\oplus}
\le C_{\rm quota}\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{7}
\]

Proof / justification:
Accepted Proposition~\ref{prop:step-003-product-kernel} supplies, at every fixed \(n\), exactly the tuple-valued Markov kernel named in the statement, together with the setting's measurable decoder and risk events. Accepted Proposition~\ref{prop:step-003-joint-composition} supplies the pointwise all-input privacy inequality for every measurable tuple event and every measurable decoded postprocessing. Neither proposition invokes the candidate-delta condition.

Accepted Proposition~\ref{prop:step-005-pac-closure} applies under (5) and supplies (6), with the probability jointly over the iid sample and all learner randomness and uniformly over every target and arbitrary-support \(D\). Accepted Lemma~\ref{lem:step-001-risk-pullback} confirms that the risk in (6) is the exact raw distributional risk, not a quotient surrogate, while accepted Lemma~\ref{lem:step-001-output-measurability} confirms that this quotient tuple is a legal unrestricted learner output under the setting's decoder convention.

Apply these conclusions at the integer \(\lceil C_{\rm up}Q_{\oplus}\rceil\). The set of sample sizes appearing in the definition of \(\operatorname{SC}_{\varepsilon,\delta}(C)\) is therefore nonempty and contains that integer. Its least element exists by well-ordering of \(\mathbb N\), belongs to the same set, and is no larger, proving the first inequality in (7). Accepted Proposition~\ref{prop:step-006-public-quota-bridge} is exactly the second inequality in (7). This proves the full upper clause for every \(0<\delta<1\) in Assumption~\ref{assump:global-privacy-range}, without applying either lower delta cap.

### unit_002: proposition

**Proposition (Candidate-wise unrestricted lower theorem).** \(\label{prop:step-015-candidate-lower}\)

Statement:
Under Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, \ref{assump:countably-coded-evaluation}, and \ref{assump:global-privacy-range}, fix one integer \(n\ge1\) satisfying Assumption~\ref{assump:candidate-delta-budget} in the expanded form (1). Under accepted Propositions~\ref{prop:step-014-deterministic-atom} and \ref{prop:step-014-candidate-closure}, every unrestricted measurable replacement-\((\varepsilon,\delta)\)-DP learner \(A_n\) that satisfies the universal \((1/16,1/16)\) PAC guarantee at this candidate obeys
\[
n\ge c_{\rm low}M.
\tag{8}
\]
On the local contradicted branch \(n<c_{\rm low}M\), the accepted construction produces a deterministic full-product target \(c\in C\) and a legal block-mixture probability measure \(D\) with
\[
D(X_i)=\omega_i\quad(1\le i\le k)
\tag{9}
\]
such that
\[
\Pr_{S\sim D_c^n,\,A_n}
\left[R_D(h_{A_n(S)},c)>\frac1{16}\right]
>\frac1{16}.
\tag{10}
\]

Proof / justification:
The first inequality in (1) is
\[
\delta\le\frac1{n\log(n+1)},
\tag{11}
\]
and the second family is
\[
\delta\le
\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
\quad\text{for every }i.
\tag{12}
\]
They are checked at the same fixed candidate and its exact budgets; neither (11) nor (12) is discarded or inferred from the other. Accepted Proposition~\ref{prop:step-014-candidate-closure} now applies verbatim to the same \(n\), \(A_n\), output convention, and exact risk and yields (8). Its proof does not restrict \(A_n\) to be proper, factorwise, quotient-output, or computationally bounded.

On the contradiction branch, accepted Proposition~\ref{prop:step-014-deterministic-atom}, as consumed in accepted Proposition~\ref{prop:step-014-candidate-closure}, removes the finite proof prior and supplies (9)--(10). The event is strict because the PAC success event is the closed event \(R_D\le1/16\). Thus the lower conclusion is an exact fixed-candidate impossibility statement, not an expectation-only residual. All candidate quantities remain fixed throughout, so this proof makes no asymptotic or uniform-in-candidate inference.

### unit_003: proposition

**Proposition (Conditional sample-complexity sandwich).** \(\label{prop:step-015-conditional-sandwich}\)

Statement:
Under Proposition~\ref{prop:step-015-global-upper}, let
\[
n_*:=\operatorname{SC}_{\varepsilon,\delta}(C).
\tag{13}
\]
If the two numerical conditions
\[
0<\delta\le\frac1{n_*\log(n_*+1)}
\tag{14}
\]
and
\[
\delta\le
\frac{c_\delta}
{m_{n_*,i}^2\log(m_{n_*,i}+1)}
\quad\text{for every }1\le i\le k
\tag{15}
\]
both hold, then Proposition~\ref{prop:step-015-candidate-lower} applies at this one integer and
\[
c_{\rm low}M
\le n_*
\le\left\lceil C_{\rm up}Q_{\oplus}\right\rceil
\le C_{\rm up}C_{\rm quota}
\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{16}
\]
If either (14) or any inequality in (15) fails, Proposition~\ref{prop:step-015-global-upper} and its upper bound remain valid, but no lower bound at \(n_*\) is asserted.

Proof / justification:
Proposition~\ref{prop:step-015-global-upper} proves that the defining set for sample complexity is nonempty, so \(n_*\in\mathbb N\) is finite and is attained by at least one unrestricted private learner satisfying the universal PAC guarantee. Equations (14)--(15) are exactly Assumption~\ref{assump:candidate-delta-budget} after substituting this attained candidate. Proposition~\ref{prop:step-015-candidate-lower} therefore applies to the witnessing learner at \(n_*\) and gives the first inequality in (16). The second is Proposition~\ref{prop:step-015-global-upper}.

For the last inequality, every \(q_i\) is an integer, hence \(Q_{\oplus}\in\mathbb N\). The accepted constant \(C_{\rm up}=65536\) is also an integer. Therefore
\[
\left\lceil C_{\rm up}Q_{\oplus}\right\rceil
=C_{\rm up}Q_{\oplus}.
\tag{17}
\]
Multiplying the accepted public quota bound by the positive constant \(C_{\rm up}\) gives
\[
C_{\rm up}Q_{\oplus}
\le C_{\rm up}C_{\rm quota}
\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right),
\tag{18}
\]
which proves the last inequality in (16) without an untracked ceiling residual. The logical order is essential: first identify the attained \(n_*\), then check both (14) and (15), and only then invoke the lower theorem. Failure of that check cannot affect the independently proved arbitrary-\(\delta\) upper clause.

### unit_004: proposition

**Proposition (Exact one-factor quotient-first Yan upper reduction).** \(\label{prop:step-015-one-factor-upper}\)

Statement:
Under the assumptions and accepted results of Proposition~\ref{prop:step-015-global-upper}, suppose \(k=1\). Then the setting-specified routed rule is exactly the measurable quotient-first Yan factor kernel on an unpadded quota-length iid prefix, followed by the accepted quotient decoder. More precisely,
\[
X_1=X,
\qquad
M=s_1,
\qquad
Q_{\oplus}=q_1,
\qquad
J_1(S)=n
\quad\text{for every }S\in Z^n,
\tag{19}
\]
and
\[
q_1=\left\lceil
K_Y\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right)
\right\rceil
\le C_{\rm quota}\frac{M}{\varepsilon}
\log^2\!\left(\frac{eM}{\varepsilon\delta}\right).
\tag{20}
\]
At every theorem sample size, there is zero shortage and zero quotient/raw risk residual, and the same learner directly satisfies
\[
\Pr\left[R_D(h_{\bar H_1},c)\le\frac1{64}\right]
\ge\frac{4095}{4096}.
\tag{21}
\]

Proof / justification:
When \(k=1\), the Cartesian partition covers the whole domain with its sole block, giving \(X_1=X\) and \(J_1(S)=n\) pointwise. The definitions give \(M=s_1\), \(Q_{\oplus}=q_1\), and the exact first equality in (20). Since \(C_{\rm up}\ge1\), the theorem threshold
\(n\ge\lceil C_{\rm up}q_1\rceil\) implies \(n\ge q_1\). Hence the routed tuple has one coordinate and its input consists of the first \(q_1\) real quotient records, with no padding. By the setting definition, that coordinate law is precisely \(\bar A_1^{\rm Yan}\), not a newly constructed or relaxed learner.

Accepted Proposition~\ref{prop:step-003-product-kernel} gives its measurable tuple form and accepted Lemma~\ref{lem:step-001-output-measurability} gives the same quotient decoder. Accepted Proposition~\ref{prop:step-003-joint-composition} notes that only the sole factor privacy cost is present, so no cross-factor composition is incurred. Accepted Proposition~\ref{prop:step-005-pac-closure} bypasses weighted shortage and Markov relaxation in this specialization and gives (21) directly. Accepted Lemma~\ref{lem:step-001-risk-pullback} makes this the exact raw risk for every arbitrary-support \(D\), with zero quotient/reference residual. Finally, accepted Proposition~\ref{prop:step-006-public-quota-bridge} gives the inequality in (20). Thus the upper construction is the same measurable quotient-first Yan factor learner at the same quota order; only its setting-required measurable totalization and decoding convention are made explicit.

### unit_005: proposition

**Proposition (Exact one-factor unrestricted VC/ALMM lower reduction with zero overflow).** \(\label{prop:step-015-one-factor-lower}\)

Statement:
Under Assumption~\ref{assump:candidate-delta-budget} at one fixed candidate and the assumptions and accepted results of Proposition~\ref{prop:step-015-candidate-lower}, suppose \(k=1\). Then
\[
\omega_1=1,
\qquad
M=s_1=1+\log^*(d_1+1),
\qquad
m_{n,1}=\max\{8,4n\}.
\tag{22}
\]
The common lower mixture requests exactly \(n\) rows from factor one, so
\[
n\le m_{n,1}
\quad\text{and hence}\quad
\Pr[\text{factor-one overflow}]=0.
\tag{23}
\]
Accepted Proposition~\ref{prop:step-014-candidate-closure} therefore yields the unrestricted one-factor VC/ALMM baseline
\[
n\ge c_{\rm low}\bigl(1+\log^*(d_1+1)\bigr),
\tag{24}
\]
and, on the contradicted branch, the exact strict PAC-failure event for the same arbitrary improper learner. Both lower delta conjuncts (11)--(12) remain in force.

Proof / justification:
Equation (22) follows directly from the setting definitions: \(M=s_1\), so \(\omega_1=s_1/M=1\), and \(\lceil4n\omega_1\rceil=4n\). In the one-factor block mixture, every one of the \(n\) global rows belongs to factor one. Thus the number of factor-one rows demanded by the one-use simulation is deterministically \(n\). Since \(m_{n,1}=\max\{8,4n\}\ge4n\ge n\), the event that more than \(m_{n,1}\) rows are demanded is empty, proving (23) exactly rather than by a tail estimate.

The accepted one-factor part of Proposition~\ref{prop:step-014-candidate-closure} then preserves its two source branches: bounded iterated-log complexity is paid by the ordinary unrestricted VC floor, while the high-complexity branch uses the unrestricted ALMM factor interface. The same proposition records that no low-factor mass is discarded at weight one and that its strict expected-risk floor is converted back to the exact event \(R_D>1/16\). Substituting \(M=s_1\) gives (24). Nothing in this reduction restricts the learner to a proper, factorwise, quotient-coded, finite-output, or computationally efficient rule. The baseline is therefore the original unrestricted one-factor VC/ALMM conclusion, with zero overflow and the same fixed-candidate delta scope.

## Target-Step Assembly

Proposition~\ref{prop:step-015-global-upper} composes the accepted measurable-kernel, all-input privacy, arbitrary-distribution PAC, exact-risk, and public quota interfaces. It proves the upper theorem and makes \(n_*=\operatorname{SC}_{\varepsilon,\delta}(C)\) a finite attained integer for every \(0<\delta<1\) allowed by Assumption~\ref{assump:global-privacy-range}. It never invokes Assumption~\ref{assump:candidate-delta-budget}.

Proposition~\ref{prop:step-015-candidate-lower} separately consumes accepted candidate-wise lower closure. It fixes one candidate and explicitly retains both
\[
\delta\le\frac1{n\log(n+1)}
\quad\text{and}\quad
\delta\le
\frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}
\quad(1\le i\le k),
\]
then exports the exact unrestricted lower theorem and deterministic strict PAC-failure witness. No claim is made for a candidate at which either numerical condition fails.

Proposition~\ref{prop:step-015-conditional-sandwich} is the only point where the two scopes meet. It first identifies the attained sample complexity, checks both candidate conditions at that exact integer, and only then substitutes the lower result. Equations (17)--(18) give the explicit public rate, so the last term in (16) is in particular
\[
O\!\left(
\frac{M_{\oplus}(C)}{\varepsilon}
\log^2\!\frac{eM_{\oplus}(C)}{\varepsilon\delta}
\right)
\]
with universal hidden constant \(C_{\rm up}C_{\rm quota}\). If the candidate check fails, the lower side of the sandwich is inactive and the upper theorem remains unchanged.

Proposition~\ref{prop:step-015-one-factor-upper} proves the upper baseline by object identity: one routed block, one exact quota, the same quotient-first Yan kernel, no padding, exact pullback risk, and the stronger direct factor utility. Proposition~\ref{prop:step-015-one-factor-lower} proves the lower baseline by object and budget identity: factor weight one, all \(n\) rows routed to that factor, budget at least \(4n\), zero overflow, and the accepted unrestricted VC/ALMM dichotomy converted to the exact strict PAC event. These are the inherited theorem-facing baselines, not weaker surrogates.

The inherited choices \(C_{\rm up}=65536\), \(C_{\rm quota}=\max\{1,K_Y+1/20\}\), and \(c_{\rm low}>0\) are simultaneous universal constants, independent of every class, factor, candidate, distribution, and privacy parameter. With these choices, the five named propositions jointly prove the exact formalized goal. The proof is complete relative to `setting.md`, but its research progress type remains `conditional`: it is a material two-sided theorem for the canonical finite product of countably coded VC-one factors. It does not remove Assumptions~\ref{assump:canonical-product}, \ref{assump:vc-one-factors}, or \ref{assump:countably-coded-evaluation}, does not cover evaluation quotients with uncountably many types, and does not claim a characterization for all finite-Littlestone classes. The parent source gap therefore remains open.

## Explicit Rate Audit

- Exposed variables: \(k\), \((d_i,s_i,q_i,Q_i,m_{n,i})_{i=1}^k\), \(M=M_{\oplus}(C)\), \(Q_{\oplus}\), \(n\), \(n_*\), \(\varepsilon\), and \(\delta\).
- Hidden constants may depend on: only the fixed universal numerical source conventions. Explicitly, \(C_{\rm up}=65536\), \(C_{\rm quota}=\max\{1,K_Y+1/20\}\), and \(c_{\rm low}>0\) is the accepted universal lower constant.
- Hidden constants may not depend on: \(X,\Sigma,C,k,d_i,s_i,q_i,Q_i,|C_i|,|Q_i|,D,\rho_i,n,n_*,\varepsilon\), or \(\delta\), any support cardinality, or any learner.
- Fixed quantities: \((\alpha_0,\beta_0)=(1/16,1/16)\), \((\alpha_{\rm fac},\beta_{\rm fac})=(1/64,1/4096)\), the factor privacy split, logarithm conventions, and universal source constants \(K_Y,c_\delta\).
- Probability mode: upper privacy is pointwise in every adjacent dataset pair and measurable event; upper utility is high probability over the iid sample and learner randomness; the lower clause is a fixed-candidate impossibility statement with a strict deterministic-task PAC-failure witness. No probability mode is changed in this assembly.
- Horizon mode: fixed sample for the upper learner and one fixed candidate for the lower theorem. The sandwich uses only the attained candidate \(n_*\). There is no asymptotic, all-time, stopping-time, or uniform-in-candidate upgrade.
- Norm mode: exact distributional binary \(0\)-\(1\) risk. Quotient decoding has zero risk residual.
- Admissibility conditions and auxiliary tolerances: the upper uses only \(0<\varepsilon\le1/10\) and \(0<\delta<1\). The lower additionally uses both conditions (11)--(12) at the actual candidate. The sandwich uses them only at \(n_*\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: accepted Proposition~\ref{prop:step-006-public-quota-bridge} supplies the complete heterogeneous-log and ceiling absorption. Equations (17)--(18) prove the final sample-threshold specialization exactly because \(C_{\rm up}Q_{\oplus}\) is an integer; no extra ceiling term is hidden.
- Probability conversion: none is newly performed. Accepted Proposition~\ref{prop:step-005-pac-closure} already converts upper weighted defects to the closed PAC event, and accepted Proposition~\ref{prop:step-014-candidate-closure} already converts the lower strict expectation floor to a deterministic strict PAC-failure event.
- Contribution to any Rate Specialization Bridge: Proposition~\ref{prop:step-015-global-upper} combines the technical quota threshold with the public quota bound, and Proposition~\ref{prop:step-015-conditional-sandwich} proves the final exact bridge with universal constant \(C_{\rm up}C_{\rm quota}\).
- Baseline-reduction check: at \(k=1\), \(M=s_1\), \(Q_{\oplus}=q_1\), and \(J_1=n\), so the upper learner is exactly the unpadded quotient-first Yan factor rule at (20). On the lower side, \(\omega_1=1\), \(m_{n,1}=\max\{8,4n\}\), and the required row count is \(n\), proving zero overflow before the accepted unrestricted VC/ALMM conclusion is invoked. No conservative rate, metric, probability, support, output, or learner-scope loss is introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(M:=M_{\oplus}(C)\) is a lightweight alias for the setting quantity. The constants in (4), the threshold \(\lceil C_{\rm up}Q_{\oplus}\rceil\), the candidate lower comparison, and the conditional sandwich are the minimal theorem interface.
- `Public-facing`: \(n_*:=\operatorname{SC}_{\varepsilon,\delta}(C)\) is the setting-defined least successful sample size. Proposition~\ref{prop:step-015-global-upper} proves the defining set nonempty before \(n_*\) is used.
- `Proof-local`: equations (11)--(12) and (14)--(15) merely expand the setting-defined minimum in Assumption~\ref{assump:candidate-delta-budget}; they introduce no new tolerance or schedule. Their repetition is intentional so neither lower delta conjunct can be hidden or dropped.
- `Proof-local`: the one-factor row count used in Proposition~\ref{prop:step-015-one-factor-lower} is the deterministic number \(n\) of global rows when \(\omega_1=1\). It is derived from the one-factor mixture and is not a theorem assumption or new horizon variable.
- Constant provenance: \(C_{\rm up}\) is inherited from accepted Proposition~\ref{prop:step-005-pac-closure}; \(C_{\rm quota}\) is inherited from accepted Proposition~\ref{prop:step-006-public-quota-bridge}; \(c_{\rm low}\) is inherited from accepted Proposition~\ref{prop:step-014-candidate-closure}. Their product in (18) is universal. No new free constant is introduced.
- Assumption provenance: the four structural/privacy conditions are primitive setting conditions. Kernel legality, privacy, PAC utility, quota control, lower calibration, task priors, couplings, risk floors, and deterministic witnesses are accepted derived outputs. Assumption~\ref{assump:candidate-delta-budget} is a primitive static numerical check at one candidate, not a realized invariant.
- Scope audit: arbitrary \(0<\delta<1\) in the upper theorem is kept separate from candidate-admissible \(\delta\) in the lower theorem. The lower theorem is never used at \(n_*\) before both numerical conjuncts are checked. A failed check leaves only the upper conclusion and does not imply a weaker lower claim.
- Learner and distribution audit: the upper distribution is arbitrary on \((X,\Sigma)\). The lower learner is randomized, improper, joint across factors, computationally unbounded, and has any legal measurable output space. A finite-support task may occur as a lower witness, but finite support is not imposed on the learner or theorem distribution family.
- Structural-source audit: the proof does not identify \(\operatorname{VC}(C)\), \(\operatorname{LD}(C)\), \(\log^*\operatorname{LD}(C)\), or \(\log|C|\). It retains the branch-specific direct-sum quantity \(M_{\oplus}(C)=\sum_i(1+\log^*(d_i+1))\).
- Progress/source-gap audit: `Step Proof Status = COMPLETE` means that the exact conditional goal in `setting.md` is closed. The formal progress label remains `conditional`, and the result is material but partial relative to the parent open problem. No full-source claim for arbitrary finite-Littlestone classes is made.
- Diagnostic boundary: the paired optional diagnostic files were read only after their hashes `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` and `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48` were verified and the diagnostic review status was confirmed `ACCEPTED`. Their step-relevant suggestions -- separate upper/lower delta scopes, check the candidate before substitution, and trace both one-factor baselines directly -- were used only to organize the local units. Neither diagnostic file is evidence, a cited result, an assumption source, or authority to change the binding claim.
