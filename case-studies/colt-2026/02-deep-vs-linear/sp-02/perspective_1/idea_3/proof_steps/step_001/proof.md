# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \((\mathcal D,h)\), prove recursively that the nearest-grid exact-center policy is tolerance-valid at every reached adaptive query; its execution is therefore actual, and for every tape its terminal function belongs to the fixed catalog.  Cover early stopping and \(m=0\), and assert nothing about a prescribed invalid transcript.
- Depends on: None
- Assumptions used: Primitive `assump:sq-parameter-regime`, `assump:universal-adversarial-sq`, and `assump:canonical-rounded-output-catalog`
- Technical challenge: Keep validity pathwise on reached queries, distinguish oracle computation from learner access, and avoid any all-transcript or all-policy strengthening.
- Intended proof tool or cited result: Direct current-notation derivation \(|\rho(v)-v|\le1/K\le\tau\), followed by exact primitive catalog membership; source conventions and object equality fixed above.
- Output target: Actual valid canonical executions and fixed-catalog membership, with no synthetic-output object.
- Rate objective: R1 and R2: retain every \(m,\tau,L,B,k\), including the actual \(m=0\) branch and all \(\tau>0\).
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:sq-parameter-regime`: \(m\in\mathbb N_0\), \(\tau>0\), and the fixed finite horizon is at most \(m\). This also fixes the allowed parameter regime in which \(K=\lceil1/\tau\rceil\) is defined.
  - `assump:universal-adversarial-sq`: the fixed learner makes at most \(m\) adaptive unrestricted queries, each taking values in \([-1,1]\), and returns a binary predictor. Only these query, adaptivity, horizon, and terminal-output conventions are used in this step; its expected-risk inequality is not used here.
  - `assump:canonical-rounded-output-catalog`: the ordered catalog \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) is fixed before the instance, satisfies \(1\le L\le B(1+m/\tau^2)^k\), and contains every terminal function on an actual canonical tolerance-valid execution.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency step proof/review artifacts: None.

Canonical reached-query validity is not treated as primitive. It is proved in Lemma~\ref{lem:step-001-canonical-validity}. Exact terminal membership is then obtained in Proposition~\ref{prop:step-001-canonical-membership} by instantiating the primitive catalog implication only after that validity has been established.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:universal-adversarial-sq}, for every fixed \((\mathcal D,h,r)\), the recursively generated interaction with the setting-defined nearest-grid exact-center policy has \(|a_t-v_t|\le 1/K\le\tau\) at every reached query, hence is an actual tolerance-valid execution of length at most \(m\), including early stopping and \(m=0\). | Proves the generated pathwise validity needed before either the learner guarantee or the canonical catalog implication can be invoked. |
| `unit_002` | proposition | Under Assumptions~\ref{assump:sq-parameter-regime}, \ref{assump:universal-adversarial-sq}, and \ref{assump:canonical-rounded-output-catalog}, and Lemma~\ref{lem:step-001-canonical-validity}, for every \((\mathcal D,h,r)\), the terminal predictor on that actual canonical execution equals some member of \(\mathcal C_A^\rho\) as a function on \(\mathcal X\). | Supplies exact actual-run membership in the fixed pre-instance catalog without extending the certificate to another policy or a synthetic transcript. |

Atomic step = no. Reached-query legality is a generated invariant, whereas terminal catalog membership is a separate primitive implication whose antecedent becomes available only after legality is proved.

## Cited Result Applications

No external paper result, standard theorem, or dependency-step result is used.

- Lemma~\ref{lem:step-001-canonical-validity} (proved below): for a fixed instance and tape, boundedness of each actually reached SQ query and the nearest-grid radius imply a tolerance-valid canonical execution. Its assumptions are discharged by `assump:sq-parameter-regime`, the unrestricted-query and adaptive-horizon clauses of `assump:universal-adversarial-sq`, and the setting definitions of \(K,G,\rho\), and \(\mathcal O^\rho_{\mathcal D,h}\). Its conclusion is used by Proposition~\ref{prop:step-001-canonical-membership} and in the target-step assembly.
- Proposition~\ref{prop:step-001-canonical-membership} (proved below): once Lemma~\ref{lem:step-001-canonical-validity} makes the canonical interaction an actual tolerance-valid execution, `assump:canonical-rounded-output-catalog` gives exact terminal-function membership for every tape. Its conclusion is used in the target-step assembly and is the membership interface exported downstream.

## Local Derivation

### unit_001: lemma

**Lemma (Pathwise legality of the canonical rounded policy).**
\(\label{lem:step-001-canonical-validity}\)

Statement:
Under Assumptions~\ref{assump:sq-parameter-regime} and \ref{assump:universal-adversarial-sq}, fix any distribution \(\mathcal D\), target \(h\in\mathcal H\), and tape \(r\in\Omega\). If the interaction is generated recursively by giving the learner, at each actually reached bounded query \(q_t\), the setting-defined canonical reply
\[
v_t:=\mathbb E_{x\sim\mathcal D}q_t(x,h(x)),
\qquad
a_t:=\rho(v_t),
\]
then every reached reply satisfies
\[
|a_t-v_t|\le \frac1K\le\tau,
\qquad K=\left\lceil\frac1\tau\right\rceil.
\]
Consequently the recursion is an actual tolerance-valid execution with some reached length \(T\le m\). The conclusion includes early stopping and the empty execution when \(m=0\), for every finite \(\tau>0\), every fixed midpoint tie rule, and every tape \(r\), without any condition on the tape law.

Proof / justification:
Because \(\tau>0\), the integer \(K=\lceil1/\tau\rceil\) is finite and positive. The setting-defined grid points \(-1+2j/K\), \(0\le j\le K\), cover \([-1,1]\) with adjacent spacing \(2/K\). For every \(v\in[-1,1]\), either \(v\) is a grid point or it lies between two consecutive grid points. In the latter case at least one endpoint is within half the spacing, so a nearest grid point obeys
\[
|\rho(v)-v|\le \frac1K.
\]
If \(v\) is exactly a midpoint, both adjacent grid points are at distance \(1/K\); the fixed tie rule chooses one of them and leaves the same bound unchanged. Moreover,
\[
K=\left\lceil\frac1\tau\right\rceil\ge\frac1\tau>0
\quad\Longrightarrow\quad
\frac1K\le\tau. \tag{1}
\]
This calculation also covers \(\tau\ge1\): then \(0<1/\tau\le1\), so \(K=1\), and the grid \(\{-1,1\}\) has covering radius \(1\le\tau\).

Now fix the already chosen \((\mathcal D,h,r)\). With the tape fixed, the learner's next action is deterministic given the replies it has actually received. Start from the empty reached history. If the learner stops, the interaction is complete. Otherwise it issues a first unrestricted query \(q_1:\mathcal X\times\{+1,-1\}\to[-1,1]\). Pointwise boundedness gives
\[
-1\le q_1(x,h(x))\le1,
\]
and hence its population center satisfies \(v_1\in[-1,1]\). Applying (1) to the reply \(a_1=\rho(v_1)\) gives \(|a_1-v_1|\le\tau\), exactly the additive SQ-validity condition.

For the recursive step, suppose the first \(t-1\) canonical replies form the reached valid prefix. That prefix and the fixed tape determine whether the learner stops or issues its next bounded query \(q_t\). In the latter case the same pointwise bound gives \(v_t\in[-1,1]\), independently of how \(q_t\) depends on the tape and earlier replies. Equation (1) then gives
\[
|a_t-v_t|=|\rho(v_t)-v_t|\le\frac1K\le\tau,
\]
so appending \(a_t\) yields the next valid reached prefix. Induction continues only until the learner stops. Assumption~\ref{assump:universal-adversarial-sq} bounds the resulting number of reached queries by \(T\le m\). If \(T\ge1\), the pathwise statement can equivalently be recorded as
\[
\max_{1\le t\le T}|a_t-v_t|\le\tau;
\]
there is no requirement, and no claim, that the errors sum to at most \(\tau\). Adaptive changes in the later queries therefore create no accumulated response defect.

If the learner stops after any valid prefix, no unreached query needs a reply and the completed interaction remains actual. If \(m=0\), it can reach no query, so the empty interaction is the actual tolerance-valid execution by vacuity. The argument fixed an arbitrary tape and did not use \(\mu\), atoms, finite support, or any probabilistic property of the tape space. The oracle uses \(v_t\) only to compute \(a_t\); the learner receives \(a_t\), not \(v_t\). Finally, the recursion follows only the history actually generated by the canonical replies. It neither replays nor assigns a terminal output to a prescribed tolerance-invalid response string. This proves the lemma.

### unit_002: proposition

**Proposition (Exact catalog membership on the actual canonical execution).**
\(\label{prop:step-001-canonical-membership}\)

Statement:
Under Assumptions~\ref{assump:sq-parameter-regime}, \ref{assump:universal-adversarial-sq}, and \ref{assump:canonical-rounded-output-catalog}, and Lemma~\ref{lem:step-001-canonical-validity}, for every distribution \(\mathcal D\), target \(h\in\mathcal H\), and tape \(r\in\Omega\), the terminal predictor on the actual canonical execution satisfies
\[
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\in \mathcal C_A^\rho=(g_1,\ldots,g_L)
\]
as equality of functions on \(\mathcal X\). The catalog is the same ordered catalog fixed before the current instance. The statement includes the no-query execution when \(m=0\) and makes no claim about a different valid policy or a prescribed tolerance-invalid string.

Proof / justification:
Fix arbitrary \((\mathcal D,h,r)\). Lemma~\ref{lem:step-001-canonical-validity} proves that the recursively generated interaction against \(\mathcal O^\rho_{\mathcal D,h}\) is an actual tolerance-valid canonical execution, including when that interaction stops early or is empty. Thus the exact antecedent of Assumption~\ref{assump:canonical-rounded-output-catalog} is satisfied. Instantiating that assumption at the fixed \((\mathcal D,h,r)\) yields an index \(i\in\{1,\ldots,L\}\), not necessarily unique when catalog entries are repeated, such that
\[
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)(x)=g_i(x)
\qquad\text{for every }x\in\mathcal X. \tag{2}
\]
This is zero-residual equality of terminal functions, not approximate membership. Since \((\mathcal D,h,r)\) was arbitrary, (2) holds for every instance and every tape. No measurable choice of \(i\) as a function of \(r\) is made or needed. In particular, the proof is unchanged on an arbitrary or nonatomic tape space.

The primitive assumption is canonical-policy-only, and the proposition preserves that scope exactly: it does not catalog outputs under another tolerance-valid policy, and it does not define or catalog an output on an invalid synthetic transcript. This proves the proposition.

## Target-Step Assembly

Let \((\mathcal D,h)\) be arbitrary. Lemma~\ref{lem:step-001-canonical-validity} applies pathwise to every tape \(r\): beginning with the empty prefix, each reached canonical response obeys the exact additive validity inequality \(|a_t-v_t|\le1/K\le\tau\), so the adaptive recursion is an actual tolerance-valid execution of length at most \(m\). The lemma explicitly includes early stopping, \(m=0\), fixed midpoint ties, every \(\tau>0\) including \(\tau\ge1\), and arbitrary tape spaces.

With that generated validity available, Proposition~\ref{prop:step-001-canonical-membership} instantiates the primitive catalog implication and gives
\[
\forall r\in\Omega,
\qquad
A_r^{\mathcal O^\rho_{\mathcal D,h}}(\mathcal D,h)
\in\mathcal C_A^\rho
\]
as exact equality of functions on \(\mathcal X\). Since \((\mathcal D,h)\) was arbitrary, these two named results prove the exact sketch-row claim and export precisely the actual valid canonical executions and their fixed-catalog membership. No conclusion is drawn for a synthetic invalid transcript, another valid policy, or an all-policy output range.

## Explicit Rate Audit

- Exposed variables: \(m,\tau,\varepsilon,L,B,k\). This step directly uses \(m,\tau,L,B,k\); \(\varepsilon\) remains in its full setting range and is neither used nor altered.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\), \(\mathcal X,\mathcal H,\mathcal D,h\), the policy, replies, tape, tape law, or catalog multiplicities.
- Fixed quantities: the learner \(A\), the deterministic nearest-grid tie rule \(\rho\), the ordered pre-instance catalog \(\mathcal C_A^\rho\), and the certified family constants \(B,k\). The proof quantifies over every current \((\mathcal D,h,r)\).
- Probability mode: deterministic and pathwise in every tape \(r\). No expectation, high-probability event, conditioning, union bound, or probability conversion is used.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\) and every early stopping time \(T\le m\). No all-time or horizon-uniform upgrade is claimed.
- Norm mode: absolute error \(|a_t-v_t|\) separately at each reached query, followed by exact equality of terminal functions on \(\mathcal X\).
- Admissibility conditions and auxiliary tolerances: \(m\in\mathbb N_0\), \(\tau>0\), \(0\le\varepsilon<1/4\), \(B\ge1\), \(k\ge1\), \(K=\lceil1/\tau\rceil\), and the primitive \(1\le L\le B(1+m/\tau^2)^k\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: the only comparison is exact,
  \[
  K=\lceil1/\tau\rceil\ge1/\tau
  \quad\Longrightarrow\quad
  |a_t-v_t|\le1/K\le\tau
  \]
  for each reached query. No term is dropped, summed, or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step supplies the zero-loss canonical-validity and exact-membership interfaces used by R1 and R2. It performs no public-rate simplification.
- Baseline-reduction check: at \(m=0\), the actual run is empty, membership still holds, and the primitive size bound specializes exactly to \(L\le B(1+0/\tau^2)^k=B\). For \(\tau\ge1\), \(K=1\) and \(1/K=1\le\tau\). Midpoint ties, \(L=1\), repeated catalog functions, \(B=1\), \(k=1\), \(\varepsilon=0\), early stopping, and arbitrary or nonatomic tape laws introduce no loss or changed conclusion.

## Blockers

None.

## Notation And Assumption Notes

- \(K=\lceil1/\tau\rceil\), \(G=\{-1+2j/K:0\le j\le K\}\), the fixed nearest-grid map \(\rho\), the proof-only policy \(\mathcal O^\rho_{\mathcal D,h}\), and \(\mathcal C_A^\rho=(g_1,\ldots,g_L)\) are setting-defined objects, not new assumptions. For this step, \(K,G,\rho\), and \(\mathcal O^\rho_{\mathcal D,h}\) are `appendix-local`; the fixed catalog and its ordered functions are `public-facing` because they form the downstream coordinate interface.
- For a fixed actual run, \(q_t\) is its \(t\)-th reached query, \(v_t=\mathbb E_{x\sim\mathcal D}q_t(x,h(x))\) is its exact population center, \(a_t=\rho(v_t)\) is its delivered canonical reply, and \(T\) is its number of reached queries. These are `proof-local`, locally derived objects. They do not name a synthetic transcript, and no value is assigned for an unreached query.
- The index \(i\in\{1,\ldots,L\}\) in Proposition~\ref{prop:step-001-canonical-membership} is a `proof-local` pointwise existence witness supplied by catalog membership. It need not be unique and is not promoted to a measurable tape-index map.
- The only new quantitative helper, the radius \(1/K\), is `proof-local` and directly defined from the setting quantity \(\tau\). Its grid covering bound and the comparison \(1/K\le\tau\) are proved in Lemma~\ref{lem:step-001-canonical-validity}; no free constant, margin, event, or boundedness hypothesis is introduced.
- Reached-query tolerance validity is a generated invariant proved in Lemma~\ref{lem:step-001-canonical-validity}. Actual terminal catalog membership is a derived conclusion proved in Proposition~\ref{prop:step-001-canonical-membership} by applying a primitive implication after validity. Neither generated fact is assumed as primitive or supplied by a dependency.
- The proof is pointwise in \(r\), so it uses no finite-support approximation of the tape law and no atomicity assumption. It constructs no random feature-map law. It also uses neither synthetic-transcript replay nor an all-valid-policy catalog.
- The accepted `global_proof.md` was read only for the planning ideas of reached-prefix induction, absence of cumulative response error, and delayed activation of the primitive membership implication. Its paired `global_proof_review.md` has status `ACCEPTED` and reviews SHA-256 `44796754e8c47ace167be50dc508a89304987807e8a85926ffad941fee4956f9`. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to alter the target claim, dependencies, or scope.
