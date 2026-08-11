# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each fixed \((\mathcal D,h)\), prove that some catalog function occurring as a terminal output on the actual canonical execution has \(\mathcal L_{\mathcal D,h}(g_i)\le\varepsilon\), and hence \(\mathbb E_{\mathcal D}[h g_i]\ge\rho_\varepsilon\).  Use only the measurable actual-run loss and do not require a measurable catalog selector.
- Depends on: `step_001`
- Assumptions used: Primitive `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`, and `assump:canonical-rounded-output-catalog`; derived validity/membership from `step_001`
- Technical challenge: Extract an attained low-risk catalog value with a nonatomic tape while never integrating catalog functions reached only on invalid or irrelevant branches.
- Intended proof tool or cited result: Finite-range contradiction for the measurable scalar loss, then \(hg=1-2\mathbf1\{g\ne h\}\).
- Output target: Per-distribution catalog best response with exact correlation margin.
- Rate objective: R1: exact \(\rho_\varepsilon=1-2\varepsilon\), including \(\varepsilon=0\), with zero rounding or measurability residual.
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), and \(k\ge1\). This step uses the range of \(\varepsilon\), including \(\varepsilon=0\), and preserves every \(m\) and \(\tau>0\) covered by the accepted dependency.
  - `assump:universal-adversarial-sq`: for every fixed \((\mathcal D,h)\) and every tolerance-valid policy, the scalar actual-run loss is \(\mu\)-measurable and has expectation at most \(\varepsilon\). This premise is instantiated only at the actual canonical policy whose validity was proved by the accepted dependency.
  - `assump:canonical-rounded-output-catalog`: the ordered catalog \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) is finite and nonempty, with \(1\le L\le B(1+m/\tau^2)^k\). Actual membership is not re-assumed here; it is supplied by the accepted dependency.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\ref{lem:step-001-canonical-validity}: for every \((\mathcal D,h,r)\), the canonical rounded interaction is an actual tolerance-valid execution, including early stopping and the empty execution when \(m=0\), for every \(\tau>0\).
  - Accepted Proposition~\ref{prop:step-001-canonical-membership}: on that actual execution, for every \((\mathcal D,h,r)\), the terminal predictor equals at least one member of \(\mathcal C_A^\rho\) as a function on all of \(\mathcal X\).
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `fb5c2d92a2d984dd463c645b754855941dab66c0929d77cf76abbfe12243d787`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `7f9222d12bff6e89ec48b2bf2a2782e06701a778fd72cbb776672dfbc833eff9`, status `ACCEPTED`.

The only generated facts consumed from `step_001` are actual canonical-policy validity and exact terminal-function catalog membership. Measurability and the expectation bound are invoked only for the setting-granted scalar actual-run loss. No catalog-index selector, output law, output fiber, or catalog-coordinate random variable is an allowed assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:sq-parameter-regime}, \ref{assump:universal-adversarial-sq}, and \ref{assump:canonical-rounded-output-catalog}, and the accepted canonical-validity and exact-membership results from `step_001`, for every fixed \((\mathcal D,h)\), the measurable scalar actual-run loss has a nonempty finite value range and attains a value at most its expectation, hence there are \(r_*\in\Omega\) and \(i_*\in\{1,\ldots,L\}\) for which the actual terminal function equals \(g_{i_*}\) on \(\mathcal X\) and \(\mathcal L_{\mathcal D,h}(g_{i_*})\le\varepsilon\). | Produces an actually occurring low-risk catalog function without any measurable choice of an output index or any positive-mass requirement. |
| `unit_002` | proposition | Under Assumption~\ref{assump:sq-parameter-regime}, the binary setting convention, and Lemma~\ref{lem:step-002-attained-low-risk}, for the same fixed \((\mathcal D,h)\) and the same actually occurring function \(g_{i_*}\), one has \(\mathbb E_{x\sim\mathcal D}[h(x)g_{i_*}(x)]=1-2\mathcal L_{\mathcal D,h}(g_{i_*})\ge1-2\varepsilon=\rho_\varepsilon\). | Converts the selected function's risk to the exact required correlation with zero object-transfer or measurability residual. |

Atomic step = no. Selector-free attainment of a low scalar value and the exact binary risk-to-correlation conversion are logically separate obligations, and the second must use the exact function produced by the first.

## Cited Result Applications

No external paper result is used.

- Accepted Lemma~\ref{lem:step-001-canonical-validity} from `step_001`: under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:universal-adversarial-sq}, the setting-defined canonical rounded policy generates an actual tolerance-valid execution for every fixed \((\mathcal D,h,r)\), including \(m=0\) and every \(\tau>0\). Its assumptions were discharged and its proof was accepted by the dependency review. Its conclusion permits `assump:universal-adversarial-sq` to be instantiated at this actual policy in Lemma~\ref{lem:step-002-attained-low-risk}.
- Accepted Proposition~\ref{prop:step-001-canonical-membership} from `step_001`: under all three setting assumptions and the accepted canonical-validity lemma, every terminal predictor on the actual canonical execution equals some \(g_i\) pointwise on \(\mathcal X\). Its assumptions were discharged and its proof was accepted by the dependency review. Its conclusion gives the finite actual function range used to prove that the scalar loss range is finite; it supplies no measurable choice of \(i\).
- Lemma~\ref{lem:step-002-attained-low-risk}, proved below: after fixing \((\mathcal D,h)\), the primitive measurable scalar loss and the two accepted dependency conclusions yield one tape and one catalog member that are equal as terminal functions and have risk at most \(\varepsilon\). All assumptions are discharged by the three primitive setting conditions and the accepted dependency. Its conclusion is used by Proposition~\ref{prop:step-002-exact-correlation} and the target-step assembly.
- Proposition~\ref{prop:step-002-exact-correlation}, proved below: the binary pointwise identity applied to the exact function from Lemma~\ref{lem:step-002-attained-low-risk} yields correlation at least \(\rho_\varepsilon\). Its binary-function and parameter assumptions come from the basic setting and `assump:sq-parameter-regime`. Its conclusion is used in the target-step assembly and is the interface exported to `step_003`.

## Local Derivation

### unit_001: lemma

**Lemma (Selector-free attainment of a low-risk actual catalog output).**
\(\label{lem:step-002-attained-low-risk}\)

Statement:
Under Assumptions~\ref{assump:sq-parameter-regime}, \ref{assump:universal-adversarial-sq}, and \ref{assump:canonical-rounded-output-catalog}, and accepted Lemma~\ref{lem:step-001-canonical-validity} and Proposition~\ref{prop:step-001-canonical-membership}, fix any distribution \(\mathcal D\) on \(\mathcal X\) and target \(h\in\mathcal H\). For each tape \(r\in\Omega\), write only
\[
G_r:=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\]
for the terminal function on the actual canonical execution, and define the scalar
\[
Z(r):=\mathcal L_{\mathcal D,h}(G_r).
\]
Then \(Z:\Omega\to[0,1]\) is \(\mu\)-measurable, its value range is nonempty and finite, and there exist \(r_*\in\Omega\) and \(i_*\in\{1,\ldots,L\}\) such that
\[
G_{r_*}=g_{i_*}\quad\text{as functions on }\mathcal X,
\qquad
\mathcal L_{\mathcal D,h}(g_{i_*})=Z(r_*)\le\varepsilon.
\]
Here occurrence means existence of the tape \(r_*\) on the actual canonical execution; no atom and no positive mass for any measurable output fiber is required.

Proof / justification:
Accepted Lemma~\ref{lem:step-001-canonical-validity} proves that \(\mathcal O^\rho_{\mathcal D,h}\) is tolerance-valid along the actual canonical execution for every tape. Therefore Assumption~\ref{assump:universal-adversarial-sq}, instantiated at this one proved-valid policy and the fixed \((\mathcal D,h)\), applies directly to the scalar actual-run loss. It gives
\[
Z:\Omega\to[0,1]\ \text{measurable},
\qquad
\mathbb E_{R\sim\mu}Z(R)\le\varepsilon. \tag{1}
\]
No random function, catalog coordinate, or output index has been declared measurable in obtaining (1).

Accepted Proposition~\ref{prop:step-001-canonical-membership} gives, separately for each tape \(r\),
\[
G_r\in\{g_1,\ldots,g_L\}
\]
as exact equality of functions. Consequently, as \(r\) varies, the actual terminal function assumes at most \(L\) distinct function values. Applying the fixed scalar risk functional only to those actual terminal functions shows directly that
\[
S:=Z(\Omega)
\]
has at most \(L\) distinct real values. This is a set-theoretic range statement, not a pushforward probability law and not an assertion that any map \(r\mapsto i\) is measurable. Because \((\Omega,\mathcal F,\mu)\) is a probability space, \(\mu(\Omega)=1\), so \(\Omega\ne\varnothing\); hence \(S\ne\varnothing\). Thus \(S\subseteq[0,1]\) is nonempty and finite.

Let
\[
s_*:=\min S.
\]
The minimum is attained by the definition of the range: there is at least one \(r_*\in\Omega\) with \(Z(r_*)=s_*\). Pointwise on \(\Omega\), \(Z\ge s_*\). Since \(Z\) is bounded and measurable, positivity of the integral applied to \(Z-s_*\) gives
\[
s_*=\int_\Omega s_*\,d\mu
\le\int_\Omega Z\,d\mu
=\mathbb E_{R\sim\mu}Z(R)
\le\varepsilon. \tag{2}
\]
This comparison integrates only \(Z\). In particular, it does not integrate an output function, an index, an indicator of an output fiber, or a catalog coordinate.

Now apply accepted Proposition~\ref{prop:step-001-canonical-membership} once, at the single tape \(r_*\). It supplies at least one \(i_*\in\{1,\ldots,L\}\) such that \(G_{r_*}=g_{i_*}\) pointwise on \(\mathcal X\). Therefore the two risks are risks of the exact same function under the same \((\mathcal D,h)\), and
\[
\mathcal L_{\mathcal D,h}(g_{i_*})
=\mathcal L_{\mathcal D,h}(G_{r_*})
=Z(r_*)=s_*\le\varepsilon. \tag{3}
\]
The choice of \(i_*\) is a single existential choice after \((\mathcal D,h,r_*)\) has been fixed. If catalog entries are duplicated, it need not be unique. No selector over tapes, distributions, or targets is constructed.

Nothing in (1)--(3) uses an atom of \(\mu\), finite support of the tape law, or positive mass of any measurable output fiber. If \(\{r:G_r=g_{i_*}\}\) is measurable, it may have \(\mu\)-measure zero; if it is not measurable, no measure is assigned to it anywhere in the proof. Likewise, the proof neither requires the singleton \(\{r_*\}\) to be measurable nor assigns it positive mass. Thus the argument applies unchanged to a nonatomic tape. If \(L=1\), then \(S\) is a singleton; duplicate catalog functions only reduce the number of distinct values. If \(m=0\), the accepted dependency supplies the actual empty execution and its terminal catalog membership before (1) is invoked. Every \(\tau>0\) is already covered by that dependency, and this scalar argument imposes no additional condition on \(\tau\). Finally, if \(\varepsilon=0\), (2) and \(s_*\ge0\) give \(s_*=0\), so (3) gives an actually occurring zero-risk catalog function. This proves the lemma.

### unit_002: proposition

**Proposition (Exact same-function conversion from risk to correlation).**
\(\label{prop:step-002-exact-correlation}\)

Statement:
Under Assumption~\ref{assump:sq-parameter-regime}, the basic setting convention \(h,g:\mathcal X\to\{+1,-1\}\), and Lemma~\ref{lem:step-002-attained-low-risk}, fix the same \((\mathcal D,h)\) and let \(g_{i_*}\) be the actually occurring catalog function supplied by that lemma. Then
\[
\mathbb E_{x\sim\mathcal D}\left[h(x)g_{i_*}(x)\right]
=1-2\mathcal L_{\mathcal D,h}(g_{i_*})
\ge1-2\varepsilon
=\rho_\varepsilon.
\]
The risk and correlation in this conclusion concern the exact same function \(g_{i_*}\), target \(h\), and distribution \(\mathcal D\).

Proof / justification:
For each \(x\in\mathcal X\), both \(h(x)\) and \(g_{i_*}(x)\) lie in \(\{+1,-1\}\). Hence their product is \(+1\) when they agree and \(-1\) when they disagree. Equivalently,
\[
h(x)g_{i_*}(x)
=1-2\mathbf 1\{g_{i_*}(x)h(x)<0\}. \tag{4}
\]
The indicator in (4) is exactly the error indicator in the setting's definition of \(\mathcal L_{\mathcal D,h}(g_{i_*})\). It is defined here for the selected actual terminal function, whose exact equality with \(g_{i_*}\) was established in Lemma~\ref{lem:step-002-attained-low-risk}; no never-occurring coordinate is being evaluated. Taking expectation with respect to \(x\sim\mathcal D\) in (4) therefore gives the exact identity
\[
\mathbb E_{x\sim\mathcal D}[h(x)g_{i_*}(x)]
=1-2\Pr_{x\sim\mathcal D}[g_{i_*}(x)h(x)<0]
=1-2\mathcal L_{\mathcal D,h}(g_{i_*}). \tag{5}
\]
By Lemma~\ref{lem:step-002-attained-low-risk}, the risk in (5) is at most \(\varepsilon\), so multiplication by \(-2\) reverses the inequality and yields
\[
1-2\mathcal L_{\mathcal D,h}(g_{i_*})
\ge1-2\varepsilon
=\rho_\varepsilon. \tag{6}
\]
There is no approximation, rounding term, change of function, or distributional transfer in (4)--(6). At \(\varepsilon=0\), Lemma~\ref{lem:step-002-attained-low-risk} gives risk zero and (5) gives correlation exactly one. This proves the proposition.

## Target-Step Assembly

Fix an arbitrary distribution-target pair \((\mathcal D,h)\). Accepted Lemma~\ref{lem:step-001-canonical-validity} makes the canonical rounded policy an actual tolerance-valid policy, and accepted Proposition~\ref{prop:step-001-canonical-membership} places every terminal function on that actual execution in the one fixed finite catalog. Assumption~\ref{assump:universal-adversarial-sq} then supplies measurability and the expectation bound only for the scalar actual-run loss.

Lemma~\ref{lem:step-002-attained-low-risk} combines precisely those inputs: its nonempty finite scalar range has an attained minimum no larger than its expectation, so some tape \(r_*\) on the actual canonical execution outputs a catalog function \(g_{i_*}\) with
\[
\mathcal L_{\mathcal D,h}(g_{i_*})\le\varepsilon.
\]
Proposition~\ref{prop:step-002-exact-correlation} applies the exact binary identity to that same function and gives
\[
\mathbb E_{x\sim\mathcal D}[h(x)g_{i_*}(x)]
\ge1-2\varepsilon=\rho_\varepsilon.
\]
Since \((\mathcal D,h)\) was arbitrary, these two named results establish the exact sketch-row quantifiers and export the required per-distribution catalog best response. The proof uses no measurable catalog-index selector, output law, positive-mass fiber, finite-support or atomic tape reduction, or measurability assertion for all catalog coordinates. It also never uses an output from another policy or an invalid transcript.

## Explicit Rate Audit

- Exposed variables: \(m,\tau,\varepsilon,L,B,k\). The step's quantitative output is the exact R1 margin \(\rho_\varepsilon=1-2\varepsilon\); \(m,\tau,L,B,k\) are preserved through the accepted finite-catalog interface without alteration.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\), \(\mathcal X,\mathcal H,\mathcal D,h\), the oracle policy, replies, tape, tape law, output fibers, or catalog multiplicities.
- Fixed quantities: the learner \(A\), tape probability space \((\Omega,\mathcal F,\mu)\), deterministic nearest-grid rule \(\rho\), canonical policy convention, ordered pre-instance catalog \(\mathcal C_A^\rho\), and family constants \(B,k\). The pair \((\mathcal D,h)\) is fixed only inside the derivation and is arbitrary in the assembled conclusion.
- Probability mode: the premise is an expectation over \(R\sim\mu\); the output is deterministic existence of an actually occurring catalog function for each \((\mathcal D,h)\). There is no almost-sure, positive-probability, high-probability, or conditional-event claim.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\). After the accepted actual execution is supplied, this step is static and performs no horizon or stopping-time upgrade.
- Norm mode: binary risk \(\mathcal L_{\mathcal D,h}\) and signed correlation \(\mathbb E_{x\sim\mathcal D}[h(x)g_i(x)]\) for the exact same function.
- Admissibility conditions and auxiliary tolerances: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), \(k\ge1\), and \(1\le L\le B(1+m/\tau^2)^k\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
  s_*\le\mathbb E_\mu Z\le\varepsilon,
  \qquad
  1-2s_*\ge1-2\varepsilon=\rho_\varepsilon.
  \]
  Both comparisons are exact; no term is dropped or absorbed.
- Probability conversion: None. The passage from expectation to one attained value is the deterministic comparison \(\min Z(\Omega)\le\mathbb E_\mu Z\), not a positive-mass or high-probability conversion.
- Contribution to any Rate Specialization Bridge: this step exports the exact per-distribution correlation lower bound consumed by `step_003`, with zero rounding, selection, or measurability residual. It performs no public-rate simplification.
- Baseline-reduction check: if \(\varepsilon=0\), the attained risk is exactly zero and the correlation is exactly \(1\), not \(1\) minus a remainder. If \(m=0\), the accepted no-query execution supplies the same scalar argument. If \(L=1\), the scalar range is a singleton; duplicate catalog functions are benign. Every \(\tau>0\), including \(\tau\ge1\), is retained without a new condition. No boundary case changes the margin or probability mode.

## Blockers

None.

## Notation And Assumption Notes

- \(\rho_\varepsilon:=1-2\varepsilon\) is `public-facing` notation copied from the accepted sketch and defined directly from the setting parameter \(\varepsilon\). The primitive range \(0\le\varepsilon<1/4\) gives \(\rho_\varepsilon>1/2\); this step exports the sharper exact lower bound \(\rho_\varepsilon\).
- For fixed \((\mathcal D,h)\), \(G_r=A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)\) is a `proof-local` abbreviation for the setting-defined terminal function on the actual canonical execution. It is a tape-indexed family, not a declared random element of a function space. Actual execution validity and exact catalog membership of each \(G_r\) are derived invariants supplied by the accepted `step_001` artifacts.
- \(Z(r)=\mathcal L_{\mathcal D,h}(G_r)\) is the only integrated object and is `proof-local`. Its measurability, boundedness in \([0,1]\), and expectation bound are supplied directly by `assump:universal-adversarial-sq` after accepted canonical validity permits the policy instantiation. No measurability of \(G_r\), a catalog index, an output fiber, or a separate catalog-coordinate loss is inferred.
- \(S=Z(\Omega)\), \(s_*=\min S\), and the witnesses \(r_*,i_*\) are `proof-local`. The finiteness and nonemptiness of \(S\), existence of \(s_*\), inequality \(s_*\le\mathbb E Z\), and witness properties are proved in Lemma~\ref{lem:step-002-attained-low-risk}. They are not assumptions, constants chosen with hidden dependence, or downstream-facing objects.
- The selected low-risk actual output and its correlation are generated conclusions proved in this step. The low-risk function is `public-facing` only through the minimal existential interface "for each \((\mathcal D,h)\), some actually occurring \(g_i\) has risk at most \(\varepsilon\) and correlation at least \(\rho_\varepsilon\)." The tape \(r_*\), index label \(i_*\), scalar range, and minimum remain proof-local.
- The proof has no local conditional hypothesis, event, recurrence, stability condition, or free constant. Nonatomic tapes, zero-mass fibers, duplicate catalog entries, \(L=1\), \(m=0\), \(\varepsilon=0\), and arbitrary \(\tau>0\) are handled inside the named local units and the exact-rate audit.
- The accepted `global_proof.md` was read only for the step-relevant planning idea of taking the attained minimum of the measurable scalar actual-run loss and then applying the exact same-function binary identity. Its paired `global_proof_review.md` has status `ACCEPTED` and SHA-256 `9dd2c6c49ac476c03e9bf8339e892d0f50c936d0651f62eeec1c402ac69a6cac`, and it reviews `global_proof.md` at SHA-256 `44796754e8c47ace167be50dc508a89304987807e8a85926ffad941fee4956f9`. Neither diagnostic artifact is used as proof evidence, a cited result, an assumption source, or authority to change the target claim, dependencies, assumptions, or scope.
