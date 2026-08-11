# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_010`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(i\in H\), produce a finite prior \(\nu_i\) over realizable finite-support factor tasks, fixed independently of every learner, such that every unrestricted \((0.1,\delta)\)-DP factor learner on \(m_{n,i}\) rows has
  \[
  \mathbb E_{\nu_i}R_{D_i}>\frac18.
  \]
- Depends on: `step_001`, `step_008`, `step_009`.
- Assumptions used: Derived: countable-quotient measurable extension, finite ALMM task universe, and exact eligibility; no new theorem-facing assumption.
- Technical challenge: Preserve all nonrealizable-input DP inequalities and arbitrary improper outputs in a compact finite game; obtain a strict uniform margin before minimax.
- Intended proof tool or cited result: Quotient-cell retraction/output extension; finite output restriction; compact convex DP polytope; finite minimax.
- Output target: Learner-independent hard priors.
- Rate objective: Candidate lower objective: exact \(m_{n,i},\delta\), expected factor risk, fixed candidate; no approximation or hidden cardinality.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: the factors form the finite full Cartesian product. It enters only through the accepted hard-factor certificate.
  - Assumption~\ref{assump:vc-one-factors}: every factor is nonconstant, has VC dimension one, and has finite Littlestone dimension. It enters through the accepted finite-task and factor-floor results.
  - Assumption~\ref{assump:countably-coded-evaluation}: every quotient cell \(\kappa_i^{-1}(\{q\})\) is measurable. This is used directly to build the finite input retraction and measurable improper output extension.
  - Assumption~\ref{assump:global-privacy-range}: the source privacy level \(0.1\) is the accepted factor-floor level. No new restriction on \(\delta\) is introduced here.
  - Assumption~\ref{assump:candidate-delta-budget}: at the fixed candidate, the factorwise ALMM delta cap holds through the accepted `step_009` eligibility certificate.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof/review pair, with SHA-256 values `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a` and `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, supplies Lemma~\ref{lem:step-001-quotient-invariance}, Lemma~\ref{lem:step-001-output-measurability}, and Lemma~\ref{lem:step-001-risk-pullback}: quotient witness cells are measurable, finite evaluations are legal, and quotient/raw risks agree exactly.
  - The accepted `step_008` proof/review pair, with SHA-256 values `fd12b00bd08d505a0e99e1e0fd81894e2da77f97ccf6337127d886f79e51b049` and `5f38e44448fb85efb27196868145966b7acb9ad6188bcf0c0a1cef250c44817c`, supplies Lemma~\ref{lem:step-008-shelah-tasks} and Proposition~\ref{prop:step-008-factor-floor}: for every exact budget \(m\), a fixed finite universe \(\mathfrak T_{i,m}\) of realizable finite-Dirac-mixture tasks exists before the learner, and every total unrestricted all-input replacement-\((0.1,\delta)\)-DP learner at an eligible strictly subcritical budget has strict expected risk greater than \(1/8\) on at least one task in that universe.
  - The accepted `step_009` proof/review pair, with SHA-256 values `9799e655ff793a3787c6fac8863bdb00b3e357436d662381f0308b87ea1723d7` and `009609777bfce6f42c0d8010696c1994862d8ef7080388b9d5b404a676d4c8d2`, supplies Proposition~\ref{prop:step-009-almm-eligibility}: for every \(i\in H\), at the same fixed candidate,
    \[
    m_{n,i}\ge8,
    \qquad
    m_{n,i}<a_{\rm L}\log_2^*d_i,
    \qquad
    0<\delta\le
    \frac{c_\delta}{m_{n,i}^2\log(m_{n,i}+1)}.
    \]
- Local conditional hypotheses:
  - The same fixed candidate \(n\), fixed global PAC premise, and temporary contradiction branch \(n<c_{\rm low}M\) under which accepted `step_009` produced \(H\) and the preceding eligibility certificate.
  - Inside the final universal statement, an arbitrary total unrestricted factor learner on \(m_{n,i}\) rows whose decoder has measurable finite-evaluation cylinders and which is replacement-\((0.1,\delta)\)-DP on every labeled input, including nonrealizable inputs.

The learner condition is the quantified object to be defeated, not a primitive assumption or a generated invariant. No properness, quotient-coded-output, finite ambient domain, finite ambient hypothesis class, balance, or support condition is imposed on that learner.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:countably-coded-evaluation}, accepted Lemma~\ref{lem:step-001-quotient-invariance}, and accepted Lemma~\ref{lem:step-008-shelah-tasks}, for fixed \(i\in H\) and \(m=m_{n,i}\), the finite Shelah cells admit a measurable raw-input retraction and a measurable arbitrary-improper output extension; every indexed hard task has an exact finite training law and exact finite risk vector under this coding. | Builds the finite input, output, and task objects without a measurable section or any risk residual. |
| `unit_002` | proposition | Under Assumption~\ref{assump:countably-coded-evaluation} and Lemma~\ref{lem:step-010-finite-coding}, the finite array set \(\mathcal P_i\) defined by row stochasticity and every ordered-neighbor/every-output-event \((0.1,\delta)\)-DP inequality is in exact payoff-preserving correspondence with unrestricted raw-space learners: restriction plus finite evaluation maps every unrestricted learner into \(\mathcal P_i\), while quotient-cell preprocessing plus improper output extension maps every \(p\in\mathcal P_i\) to a total unrestricted all-input private learner. | Preserves nonrealizable-input privacy in both directions and removes no arbitrary outputs relevant to the finite tasks. |
| `unit_003` | lemma | Under Proposition~\ref{prop:step-010-kernel-equivalence}, \(\mathcal P_i\) is a nonempty closed compact convex finite-dimensional DP polytope, each hard-task payoff is affine and continuous, and \(\mathcal P_i\) is the convex hull of finitely many vertices. | Supplies the genuinely finite compact game and attainment needed for strictness and minimax. |
| `unit_004` | proposition | Under accepted Proposition~\ref{prop:step-008-factor-floor}, accepted Proposition~\ref{prop:step-009-almm-eligibility}, Proposition~\ref{prop:step-010-kernel-equivalence}, and Lemma~\ref{lem:step-010-compact-game}, the finite worst-task payoff has a minimum \(\gamma_i>1/8\) on \(\mathcal P_i\); equivalently, the proof-local margin \(\eta_i:=\gamma_i-1/8\) is strictly positive. | Converts the learner-by-learner strict witness into a uniform strict margin by compactness, not by an interchange of pointwise quantifiers. |
| `unit_005` | proposition | Under Proposition~\ref{prop:step-010-strict-value} and Lemma~\ref{lem:step-010-compact-game}, finite matrix minimax produces a distribution on the indexed finite task set whose pushforward is a finite prior \(\nu_i\), fixed before every learner, and every unrestricted factor learner has \(\nu_i\)-average expected risk at least \(\gamma_i>1/8\). | Reverses the quantifier order and proves the exact target claim. |

Atomic step = no. Finite coding, all-input privacy equivalence, compactness, strict-margin attainment, and minimax are independent theorem-critical obligations.

## Cited Result Applications

### Accepted dependency interfaces

1. **Accepted quotient and measurability interface.** Lemma~\ref{lem:step-001-quotient-invariance} says that the fixed Shelah quotient points may be represented by raw points without changing their finite label patterns. Lemma~\ref{lem:step-001-output-measurability} says that finite quotient cells and finite evaluations give measurable raw hypotheses and output events. Lemma~\ref{lem:step-001-risk-pullback} gives exact quotient/raw risk equality. Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:countably-coded-evaluation} were discharged in the accepted dependency. The current proof uses only the finite measurable-cell and exact-evaluation consequences.

2. **Accepted finite-task and strict-floor interface.** Lemma~\ref{lem:step-008-shelah-tasks} supplies, for \(m=m_{n,i}\), fixed distinct quotient points \(q_{i,1},\ldots,q_{i,t_i}\), raw representatives \(x_{i,1},\ldots,x_{i,t_i}\), targets \(c_{i,1},\ldots,c_{i,t_i}\), the even integer \(N_m\), and the finite universe
   \[
   \mathfrak T_{i,m}
   =\left\{
   \left(c_{i,\ell},\frac1{N_m}\sum_{a=1}^{N_m}
   \delta_{x_{i,j_a}}\right):
   \ell\in[t_i],\ \mathbf j\in[t_i]^{N_m}
   \right\}.
   \]
   Proposition~\ref{prop:step-008-factor-floor} says that, at an eligible \(m<a_{\rm L}\log_2^*d_i\), every total unrestricted all-input replacement-\((0.1,\delta)\)-DP learner with measurable finite evaluations has strict expected risk greater than \(1/8\) on some member of this fixed universe. The accepted proof checks arbitrary improper outputs and uses no learner-dependent witness construction.

3. **Accepted active-factor eligibility interface.** Proposition~\ref{prop:step-009-almm-eligibility} says that every \(i\in H\) has the exact integer floor, strict subcriticality, and non-strict delta cap displayed in the allowed-dependency section. It is deterministic at one candidate and assumes no factor learner. Those inequalities discharge every numerical hypothesis of Proposition~\ref{prop:step-008-factor-floor} at \(m=m_{n,i}\).

### Standard finite-dimensional results

4. **Finite polytope vertex theorem.** A nonempty bounded subset of \(\mathbb R^d\) cut out by finitely many affine equalities and closed affine inequalities is a compact convex polytope. It has finitely many extreme points and equals their convex hull. In the current application, \(d=|\mathcal U_i||\mathcal V_i|<\infty\); row normalization, nonnegativity, and all finite DP constraints are affine; and boundedness follows from \(0\le p_{u,v}\le1\). Lemma~\ref{lem:step-010-compact-game} checks each hypothesis before using the vertex conclusion.

5. **Finite von Neumann minimax theorem.** For a real matrix \((a_{r,s})\) with finitely many rows and columns,
   \[
   \min_{\lambda\in\Delta(R)}\max_{\mu\in\Delta(S)}
   \sum_{r,s}\lambda_r\mu_s a_{r,s}
   =
   \max_{\mu\in\Delta(S)}\min_{\lambda\in\Delta(R)}
   \sum_{r,s}\lambda_r\mu_s a_{r,s},
   \tag{1}
   \]
   and both extrema are attained. Proposition~\ref{prop:step-010-hard-prior} applies this only to the finite vertex set of \(\mathcal P_i\) and the finite indexed task set \(\Theta_i\), with matrix entry equal to exact expected \(0\)-\(1\) risk. Thus no infinite-action or noncompact minimax theorem is being invoked.

### Local result interfaces

- Lemma~\ref{lem:step-010-finite-coding} supplies the measurable retraction \(\tau_i\), improper extension \(e_i\), indexed task laws \(P_\theta\), and exact risk vectors \(r_\theta\).
- Proposition~\ref{prop:step-010-kernel-equivalence} supplies both directions of the exact learner/kernel correspondence and the finite payoff \(L_\theta(p)\).
- Lemma~\ref{lem:step-010-compact-game} supplies nonemptiness, compactness, convexity, finite vertices, and payoff continuity.
- Proposition~\ref{prop:step-010-strict-value} supplies the attained strict value \(\gamma_i>1/8\).
- Proposition~\ref{prop:step-010-hard-prior} supplies the finite learner-independent prior and is the public-facing conclusion of this step.

## Local Derivation

Fix for the remainder of the derivation one \(i\in H\), and write
\[
m:=m_{n,i}.
\tag{2}
\]
All objects below are constructed after fixing the class, candidate, factor, and \(\delta\), but before quantifying over a factor learner.

### unit_001: lemma

**Lemma (Finite quotient-cell coding of the hard tasks).** \(\label{lem:step-010-finite-coding}\)

Statement:
Under Assumption~\ref{assump:countably-coded-evaluation}, accepted Lemma~\ref{lem:step-001-quotient-invariance}, and accepted Lemma~\ref{lem:step-008-shelah-tasks}, fix \(i\in H\) and \(m=m_{n,i}\). Let
\[
F_i:=\{x_{i,1},\ldots,x_{i,t_i}\},
\qquad
\mathcal V_i:=\{0,1\}^{[t_i]},
\qquad
\Theta_i:=[t_i]\times[t_i]^{N_m}.
\tag{3}
\]
Then there are:

1. a measurable retraction \(\tau_i:(X_i,\Sigma_i)\to(F_i,2^{F_i})\) with \(\tau_i(x_{i,j})=x_{i,j}\) for all \(j\);
2. for every \(v\in\mathcal V_i\), a measurable, possibly improper hypothesis \(e_i(v):X_i\to\{0,1\}\) with \(e_i(v)(x_{i,j})=v_j\), such that \(v\mapsto e_i(v)\) satisfies every finite-evaluation-cylinder measurability requirement; and
3. for every \(\theta=(\ell,\mathbf j)\in\Theta_i\), an exact finite labeled training law \(P_\theta\) on \(F_i\times\{0,1\}\) and a risk vector \(r_\theta:\mathcal V_i\to[0,1]\) such that, for the accepted task
   \[
   T_\theta=(c_\theta,D_\theta)
   :=\left(c_{i,\ell},\frac1{N_m}\sum_{a=1}^{N_m}
   \delta_{x_{i,j_a}}\right),
   \tag{4}
   \]
   one has
   \[
   R_{D_\theta}(e_i(v),c_\theta)=r_\theta(v)
   \tag{5}
   \]
   for every \(v\), and the iid labeled sample law is the finite mixture indexed by \(P_\theta^m\).

All sets in (3) and all task index sets are finite and nonempty, including the boundary \(t_i=1\). The construction uses only the finitely many accepted representatives and does not construct or assume a measurable section of \(\kappa_i\).

Proof / justification:
Put
\[
G_{i,j}:=\kappa_i^{-1}(\{q_{i,j}\})\in\Sigma_i.
\tag{6}
\]
The points \(q_{i,j}\) are distinct. Indeed, if \(j<j'\) and \(q_{i,j}=q_{i,j'}\), then the accepted threshold pattern with \(\ell=j+1\) would assign label zero at \(q_{i,j}\) and label one at \(q_{i,j'}\), contradicting equality of the quotient points. Hence the cells in (6) are pairwise disjoint, and their chosen raw representatives are distinct as well.

Define
\[
\tau_i(x):=
\begin{cases}
x_{i,j},&x\in G_{i,j}\text{ for some }j\in[t_i],\\
x_{i,1},&x\notin\bigcup_{j=1}^{t_i}G_{i,j}.
\end{cases}
\tag{7}
\]
There is no ambiguity because the cells are disjoint. For \(j\ge2\), the fiber \(\tau_i^{-1}(\{x_{i,j}\})\) is \(G_{i,j}\); the fiber at \(x_{i,1}\) is
\[
X_i\setminus\bigcup_{j=2}^{t_i}G_{i,j}.
\]
Every fiber is measurable, so \(\tau_i\) is measurable into the finite discrete space. Since \(x_{i,j}\in G_{i,j}\), it fixes every witness representative. When \(t_i=1\), (7) is simply the constant map to \(x_{i,1}\), so the empty-union boundary is total and measurable.

For \(v=(v_1,\ldots,v_{t_i})\in\mathcal V_i\), define
\[
e_i(v)(x):=
\begin{cases}
v_j,&x\in G_{i,j}\text{ for some }j\in[t_i],\\
0,&x\notin\bigcup_{j=1}^{t_i}G_{i,j}.
\end{cases}
\tag{8}
\]
The inverse image of one is a finite union of measurable cells, so each \(e_i(v)\) is \(\Sigma_i\)-measurable. The output space \(\mathcal V_i\) is finite discrete. For any raw points \(z_1,\ldots,z_s\) and bits \(b_1,\ldots,b_s\), the set of \(v\) for which \(e_i(v)(z_a)=b_a\) for all \(a\) is a subset of the finite space \(\mathcal V_i\), hence measurable. The hypotheses in (8) need not lie in \(C_i\); this is the required arbitrary-improper extension.

For \(\theta=(\ell,(j_1,\ldots,j_{N_m}))\), set
\[
w_{\theta,j}:=\frac1{N_m}
\bigl|\{a\in[N_m]:j_a=j\}\bigr|,
\tag{9}
\]
and define the law on the finite labeled alphabet by
\[
P_\theta(x_{i,j},b)
:=w_{\theta,j}\,
\mathbf1\{b=c_{i,\ell}(x_{i,j})\}.
\tag{10}
\]
The weights are nonnegative and sum to one. Define
\[
r_\theta(v)
:=\sum_{j=1}^{t_i}w_{\theta,j}
\mathbf1\{v_j\ne c_{i,\ell}(x_{i,j})\}
=\frac1{N_m}\sum_{a=1}^{N_m}
\mathbf1\{v_{j_a}\ne c_{i,\ell}(x_{i,j_a})\}.
\tag{11}
\]
Equations (4), (8), and (11) give (5) directly. They also show that the labeled iid law from \((D_\theta)_{c_\theta}^m\) is the finite mixture over labeled tuples \(u\in(F_i\times\{0,1\})^m\) with weights \(P_\theta^m(u)\).

This last statement does not assume raw singletons are measurable. Each \(D_\theta\) is, by definition, the finite convex combination of Dirac probability measures in (4), which is legal on an arbitrary measurable space. Equations (9)-(10) merely record the finite index-sampling representation of that measure. The measurable quotient cells distinguish the chosen representatives and make (7) legal. Thus no hidden singleton-measurability or standard-Borel assumption has been introduced.

### unit_002: proposition

**Proposition (Exact finite representation of unrestricted private learners).** \(\label{prop:step-010-kernel-equivalence}\)

Statement:
Under Assumption~\ref{assump:countably-coded-evaluation} and Lemma~\ref{lem:step-010-finite-coding}, put
\[
\mathcal Z_i:=F_i\times\{0,1\},
\qquad
\mathcal U_i:=\mathcal Z_i^m,
\tag{12}
\]
and let \(\mathsf{Adj}_i^{\to}\) contain every ordered pair \((u,u')\in\mathcal U_i^2\) that differs in exactly one row. Define \(\mathcal P_i\) to be the set of arrays
\(p=(p_{u,v})_{u\in\mathcal U_i,v\in\mathcal V_i}\) satisfying
\[
p_{u,v}\ge0,
\qquad
\sum_{v\in\mathcal V_i}p_{u,v}=1
\quad(u\in\mathcal U_i),
\tag{13}
\]
and, for every \((u,u')\in\mathsf{Adj}_i^{\to}\) and every event \(E\subseteq\mathcal V_i\),
\[
\sum_{v\in E}p_{u,v}
\le e^{0.1}\sum_{v\in E}p_{u',v}+\delta.
\tag{14}
\]
For \(\theta\in\Theta_i\), define the finite payoff
\[
L_\theta(p):=
\sum_{u\in\mathcal U_i}P_\theta^m(u)
\sum_{v\in\mathcal V_i}p_{u,v}r_\theta(v).
\tag{15}
\]
Then:

1. every unrestricted total raw-space factor learner \(A\) on \(m\) rows, with measurable finite evaluations and replacement-\((0.1,\delta)\)-DP on all labeled inputs, induces \(p^A\in\mathcal P_i\) such that its exact expected risk on every \(T_\theta\) equals \(L_\theta(p^A)\); and
2. every \(p\in\mathcal P_i\) extends to a total raw-space factor learner \(A^p\), with finite output space \(\mathcal V_i\) and decoder \(e_i\), that is replacement-\((0.1,\delta)\)-DP on all raw labeled inputs and has exact expected risk \(L_\theta(p)\) on every \(T_\theta\).

Thus the finite restriction loses neither task risk nor privacy, and the finite polytope contains no kernel that is ineligible merely because its behavior on a nonrealizable or outside-witness input was omitted.

Proof / justification:
First let \(A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)\) be an arbitrary learner of the stated type, with decoded hypothesis \(h_\omega\). Define the finite evaluation map
\[
\operatorname{ev}_i(\omega)
:=(h_\omega(x_{i,1}),\ldots,h_\omega(x_{i,t_i}))
\in\mathcal V_i.
\tag{16}
\]
Every singleton fiber of (16) is a finite-evaluation cylinder and hence belongs to \(\mathscr F\); every inverse image of \(E\subseteq\mathcal V_i\) is a finite union of such fibers and is measurable. For \(u\in\mathcal U_i\), viewed as an ordinary raw labeled input, put
\[
p^A_{u,v}:=A(u,\operatorname{ev}_i^{-1}(\{v\})).
\tag{17}
\]
The fibers partition \(\Omega\), so (13) holds. If \((u,u')\in\mathsf{Adj}_i^{\to}\), these are replacement-adjacent raw inputs, whether or not either labeling is realizable. Applying the all-input DP inequality of \(A\) to \(\operatorname{ev}_i^{-1}(E)\) gives (14). Because ordered adjacency includes the swapped pair, both neighbor directions are retained. Notice that (14) is imposed for every event, not merely for atoms; summing atomwise approximate-DP inequalities would incorrectly multiply \(\delta\), so no such shortcut is used.

For task \(T_\theta\), expand its finite-Dirac-mixture sample law using Lemma~\ref{lem:step-010-finite-coding}. Conditional on input \(u\), grouping outputs by (16) and using (11) gives
\[
\begin{aligned}
\mathbb E_{S\sim(D_\theta)_{c_\theta}^m,A}
R_{D_\theta}(h_{A(S)},c_\theta)
&=\sum_{u\in\mathcal U_i}P_\theta^m(u)
  \sum_{v\in\mathcal V_i}p^A_{u,v}r_\theta(v)\\
&=L_\theta(p^A).
\end{aligned}
\tag{18}
\]
The risk is measurable because (11) is a finite sum of measurable evaluations. Equation (18) is exact for arbitrary improper \(h_{A(S)}\); only its labels at the accepted finite witness are retained because those labels determine the entire risk of every \(T_\theta\).

Conversely, fix \(p\in\mathcal P_i\). Extend the retraction to labeled records by
\[
\widehat\tau_i(x,y):=(\tau_i(x),y)
\tag{19}
\]
and coordinatewise to \(m\)-row inputs. Define a kernel with output space \((\mathcal V_i,2^{\mathcal V_i})\) by
\[
A^p(S,E):=
\sum_{v\in E}p_{\widehat\tau_i^m(S),v},
\qquad
E\subseteq\mathcal V_i,
\tag{20}
\]
and decode \(v\) as the measurable hypothesis \(e_i(v)\) from (8). The map \(\widehat\tau_i^m\) is measurable into a finite discrete space, so (20) is a Markov kernel. Equations (13) make it a probability law for every raw input, including empty-version, inconsistent, or otherwise nonrealizable inputs; hence it is total.

If raw datasets \(S,S'\) are replacement-adjacent, their images under coordinatewise preprocessing are either equal or differ in the same one coordinate. In the equal case, (20) gives identical output laws, which satisfy the DP inequality. In the adjacent case, (14) gives the inequality for every \(E\subseteq\mathcal V_i\). The swapped ordered pair gives the reverse inequality. Thus \(A^p\) is replacement-\((0.1,\delta)\)-DP on every raw labeled neighboring pair, not only on realizable task inputs. There is no group-privacy, composition, or additive privacy loss.

Every task draw in (4) is one of the chosen representatives, and (7) fixes those representatives. Hence preprocessing (19) leaves every task sample unchanged. Equations (5), (15), and (20) therefore give
\[
\mathbb E_{S\sim(D_\theta)_{c_\theta}^m,A^p}
R_{D_\theta}(e_i(A^p(S)),c_\theta)
=L_\theta(p).
\tag{21}
\]
This proves both directions, including exact risk, totality, measurability, arbitrary improper output extension, and every nonrealizable-input privacy inequality.

### unit_003: lemma

**Lemma (Compact finite DP game).** \(\label{lem:step-010-compact-game}\)

Statement:
Under Proposition~\ref{prop:step-010-kernel-equivalence}, \(\mathcal P_i\) is a nonempty closed compact convex polytope in the finite-dimensional space
\(\mathbb R^{\mathcal U_i\times\mathcal V_i}\). It has a nonempty finite vertex set \(\mathcal W_i\) and
\[
\mathcal P_i=\operatorname{conv}(\mathcal W_i).
\tag{22}
\]
For every \(\theta\in\Theta_i\), \(L_\theta\) is an affine continuous function on \(\mathcal P_i\), and
\[
g_i(p):=\max_{\theta\in\Theta_i}L_\theta(p)
\tag{23}
\]
is continuous and attains its minimum on \(\mathcal P_i\).

Proof / justification:
The accepted task construction has \(t_i\ge1\), and accepted eligibility has \(m\ge8\). Therefore
\[
|\mathcal V_i|=2^{t_i}<\infty,
\qquad
|\mathcal U_i|=(2t_i)^m<\infty,
\qquad
|\Theta_i|=t_i^{N_m+1}<\infty,
\tag{24}
\]
and all three sets are nonempty. There are only finitely many ordered adjacent pairs and finitely many events \(E\subseteq\mathcal V_i\). Hence (13)-(14), including every atom and every union of atoms, form a finite system of affine equalities and closed affine inequalities.

The constraints are convex and closed. Row stochasticity and nonnegativity imply \(0\le p_{u,v}\le1\), so the set is bounded. It is nonempty: fix any \(v^0\in\mathcal V_i\) and let
\[
p^0_{u,v}:=\mathbf1\{v=v^0\}
\quad\text{for every }u.
\tag{25}
\]
This data-independent deterministic kernel obeys (14): if \(v^0\in E\), then \(1\le e^{0.1}+\delta\), and otherwise both probabilities are zero. Thus \(\mathcal P_i\) is a nonempty closed bounded subset of a finite-dimensional Euclidean space and is compact. The finite polytope vertex theorem restated above now gives a nonempty finite vertex set and (22).

Equation (15) is a finite linear combination of coordinates \(p_{u,v}\) with fixed coefficients \(P_\theta^m(u)r_\theta(v)\), so each \(L_\theta\) is affine and continuous and takes values in \([0,1]\). The maximum in (23) is over the nonempty finite set \(\Theta_i\), hence is continuous. Compactness of \(\mathcal P_i\) gives a minimizer. No measurability, semicontinuity, or attainment property is being inferred from an infinite learner or output space.

### unit_004: proposition

**Proposition (Strict compact-game value).** \(\label{prop:step-010-strict-value}\)

Statement:
Under accepted Proposition~\ref{prop:step-008-factor-floor}, accepted Proposition~\ref{prop:step-009-almm-eligibility}, Proposition~\ref{prop:step-010-kernel-equivalence}, and Lemma~\ref{lem:step-010-compact-game}, for fixed \(i\in H\),
\[
\gamma_i
:=\min_{p\in\mathcal P_i}\max_{\theta\in\Theta_i}L_\theta(p)
>\frac18.
\tag{26}
\]
In particular, the proof-local quantity
\[
\eta_i:=\gamma_i-\frac18
\tag{27}
\]
is well-defined and strictly positive. It is derived from the fixed finite game and is not an additional assumption or a claimed universal numerical constant.

Proof / justification:
Fix any \(p\in\mathcal P_i\). Proposition~\ref{prop:step-010-kernel-equivalence} extends it to the total raw-space learner \(A^p\). That learner:

- is defined on every labeled \(m\)-row input;
- is replacement-\((0.1,\delta)\)-DP for every output event and both directions of every neighboring pair, including nonrealizable pairs;
- has finite output and a measurable possibly improper decoder; and
- has exact task loss \(L_\theta(p)\) on each accepted indexed task.

Accepted Proposition~\ref{prop:step-009-almm-eligibility} supplies, for this same \(i\) and candidate,
\[
m\ge8,
\qquad
m<a_{\rm L}\log_2^*d_i,
\qquad
0<\delta\le\frac{c_\delta}{m^2\log(m+1)}.
\tag{28}
\]
All hypotheses of the strict contrapositive in accepted Proposition~\ref{prop:step-008-factor-floor} are therefore discharged. It gives some task in \(\mathfrak T_{i,m}\) on which \(A^p\) has strict expected risk greater than \(1/8\). Every member of \(\mathfrak T_{i,m}\) has at least one index \(\theta\in\Theta_i\), and (21) preserves its payoff. Consequently,
\[
g_i(p)=\max_{\theta\in\Theta_i}L_\theta(p)>\frac18
\qquad\text{for every }p\in\mathcal P_i.
\tag{29}
\]

Lemma~\ref{lem:step-010-compact-game} gives a minimizer \(p_i^*\in\mathcal P_i\) of the continuous function \(g_i\). Evaluating the pointwise strict statement (29) at this attained minimizer gives
\[
\gamma_i=g_i(p_i^*)>\frac18.
\tag{30}
\]
This is the required uniform strict margin. Merely taking the infimum of the pointwise inequalities in (29) would yield only \(\gamma_i\ge1/8\); compactness and attainment at \(p_i^*\) are exactly what preserve strictness.

### unit_005: proposition

**Proposition (Finite learner-independent hard prior).** \(\label{prop:step-010-hard-prior}\)

Statement:
Under Proposition~\ref{prop:step-010-strict-value} and Lemma~\ref{lem:step-010-compact-game}, for fixed \(i\in H\), there is a probability distribution \(\mu_i\) on the finite index set \(\Theta_i\) such that
\[
\sum_{\theta\in\Theta_i}\mu_i(\theta)L_\theta(p)
\ge\gamma_i>\frac18
\qquad\text{for every }p\in\mathcal P_i.
\tag{31}
\]
Let \(\nu_i\) be the pushforward of \(\mu_i\) under \(\theta\mapsto T_\theta\). Then \(\nu_i\) is a finite prior over realizable finite-support factor tasks, fixed independently of every learner, and every unrestricted total replacement-\((0.1,\delta)\)-DP factor learner \(A\) on \(m_{n,i}\) rows with measurable finite evaluations satisfies
\[
\mathbb E_{(c_i,D_i)\sim\nu_i}
\mathbb E_{S_i\sim(D_i)_{c_i}^{m_{n,i}},A}
R_{D_i}(h_{A(S_i)},c_i)
>\frac18.
\tag{32}
\]

Proof / justification:
By Lemma~\ref{lem:step-010-compact-game}, write the nonempty finite vertex set as
\[
\mathcal W_i=\{p^1,\ldots,p^J\},
\qquad J<\infty,
\tag{33}
\]
and every \(p\in\mathcal P_i\) as \(p=\sum_{a=1}^J\lambda_a p^a\) for some \(\lambda\in\Delta([J])\). Because every \(L_\theta\) is affine,
\[
L_\theta(p)=\sum_{a=1}^J\lambda_aL_\theta(p^a).
\tag{34}
\]
Apply the finite minimax theorem (1) to the finite matrix
\[
M_{a,\theta}:=L_\theta(p^a),
\qquad
(a,\theta)\in[J]\times\Theta_i.
\tag{35}
\]
Using (22), (34), and the fact that maximizing a linear function over the task simplex selects a pure task,
\[
\begin{aligned}
\gamma_i
&=\min_{p\in\mathcal P_i}\max_{\theta\in\Theta_i}L_\theta(p)\\
&=\min_{\lambda\in\Delta([J])}
  \max_{\mu\in\Delta(\Theta_i)}
  \sum_{a=1}^J\sum_{\theta\in\Theta_i}
  \lambda_a\mu(\theta)M_{a,\theta}\\
&=\max_{\mu\in\Delta(\Theta_i)}
  \min_{\lambda\in\Delta([J])}
  \sum_{a=1}^J\sum_{\theta\in\Theta_i}
  \lambda_a\mu(\theta)M_{a,\theta}.
\end{aligned}
\tag{36}
\]
The finite theorem also gives an attaining maximizer \(\mu_i\). For any \(p\in\mathcal P_i\), choose a vertex mixture \(\lambda\) representing it. The last line of (36), followed by (34), gives
\[
\sum_{\theta}\mu_i(\theta)L_\theta(p)
=\sum_{a,\theta}\lambda_a\mu_i(\theta)M_{a,\theta}
\ge\gamma_i,
\tag{37}
\]
which proves (31). Proposition~\ref{prop:step-010-strict-value} supplies the final strict inequality.

Each indexed task \(T_\theta\) is realizable and is a finite convex combination of Dirac measures by accepted Lemma~\ref{lem:step-008-shelah-tasks}. Therefore the pushforward \(\nu_i\) has the required finite task support. If two indices encode the same task, pushforward simply adds their masses, and every expectation is unchanged.

Now fix an arbitrary unrestricted learner \(A\) in (32). Proposition~\ref{prop:step-010-kernel-equivalence} maps it, by measurable finite evaluation and without privacy or risk loss, to \(p^A\in\mathcal P_i\). Applying (31) at \(p^A\) and then using the exact identity (18) yields
\[
\begin{aligned}
&\mathbb E_{(c_i,D_i)\sim\nu_i}
\mathbb E_{S_i\sim(D_i)_{c_i}^{m},A}
R_{D_i}(h_{A(S_i)},c_i)\\
&\qquad=
\sum_{\theta\in\Theta_i}\mu_i(\theta)L_\theta(p^A)
\ge\gamma_i>\frac18.
\end{aligned}
\tag{38}
\]
The game, its optimizer \(\mu_i\), and its pushforward \(\nu_i\) depend only on the fixed factor witness, \(m_{n,i}\), and \(\delta\). They are chosen before \(A\), and (38) holds for every \(A\). This is the required prior-before-learner quantifier order.

## Target-Step Assembly

Fix the candidate branch and any \(i\in H\). Accepted Proposition~\ref{prop:step-009-almm-eligibility} gives the exact floor, strict subcriticality, and factorwise delta cap at \(m=m_{n,i}\). Accepted Lemma~\ref{lem:step-008-shelah-tasks} fixes the finite task universe before any learner, and accepted Proposition~\ref{prop:step-008-factor-floor} says every eligible unrestricted all-input private learner has a strict \(>1/8\) loss on one of those tasks.

Lemma~\ref{lem:step-010-finite-coding} turns the accepted witness into finite input, output, and task sets using only measurable quotient cells. Proposition~\ref{prop:step-010-kernel-equivalence} proves the exact two-way bridge between unrestricted learners and the finite all-event DP array set: arbitrary outputs are restricted only to their task-relevant evaluations, while every finite kernel is extended to a total measurable improper learner on all raw inputs. This bridge preserves every replacement-DP inequality on nonrealizable inputs and preserves each task risk exactly.

Lemma~\ref{lem:step-010-compact-game} proves that the resulting DP set is a nonempty compact convex polytope and that the finite payoffs are continuous. Proposition~\ref{prop:step-010-strict-value} then applies the accepted factor floor to every point of that polytope and uses an attained compact minimum to obtain \(\gamma_i>1/8\). Finally, Proposition~\ref{prop:step-010-hard-prior} applies finite matrix minimax to the finite vertex-by-task matrix, producing a finite prior \(\nu_i\) before the learner such that every unrestricted factor learner obeys (32).

The argument applies separately to every \(i\in H\). Under the accepted contradiction branch, `step_009` also proves \(H\ne\varnothing\); if one considers an empty \(H\) outside that branch, the universally quantified target statement is vacuous. Thus for every active factor the exact target prior exists, has only realizable finite-Dirac-mixture tasks in its support, is learner-independent, and yields strict expected factor risk greater than \(1/8\).

## Explicit Rate Audit

- Exposed variables: the fixed factor \(i\in H\), candidate \(n\), exact budget \(m=m_{n,i}\), \(d_i\), \(t_i\), \(N_m\), and \(\delta\); the final risk threshold is exactly \(1/8\).
- Hidden constants may depend on: only the accepted universal constants \(a_{\rm L}\) and \(c_\delta\), whose provenance is in accepted `step_008`; no new hidden numerical constant is introduced.
- Hidden constants may not depend on: \(X,\Sigma,C,k,i,d_i,C_i,Q_i,|Q_i|\), the finite witness cardinality, task-universe cardinality, learner, target, distribution, \(n,\varepsilon\), or \(\delta\).
- Fixed quantities: privacy level \(0.1\), expected-risk threshold \(1/8\), the accepted witness choices, and the setting's logarithm conventions.
- Probability mode: expectation over the finite prior, the iid factor sample, and learner randomness. Privacy remains pointwise for every neighboring input pair and every output event.
- Horizon mode: one fixed factor and one fixed candidate sample size \(m_{n,i}\); there is no asymptotic, simultaneous-in-candidate, or all-time upgrade.
- Norm mode: exact distributional binary \(0\)-\(1\) risk.
- Admissibility conditions and auxiliary tolerances: exactly \(m_{n,i}\ge8\), \(m_{n,i}<a_{\rm L}\log_2^*d_i\), and \(0<\delta\le c_\delta/[m_{n,i}^2\log(m_{n,i}+1)]\), all inherited from accepted Proposition~\ref{prop:step-009-almm-eligibility}. There is no auxiliary approximation tolerance.
- Term absorption or simplification inequalities: none in this step. The finite coding and payoff bridges are equalities. The proof-local \(\eta_i=\gamma_i-1/8>0\) is obtained by compact attainment and is not asserted to have a universal or cardinality-free numerical lower bound; only the exact strict inequality required by the target is exported.
- Probability conversion: none. The accepted expected-risk floor remains in expectation, and minimax only changes the order of finite averaging and learner quantification.
- Contribution to any Rate Specialization Bridge: the prior is the exact fixed-candidate lower interface consumed by the later one-use simulation and tensorization steps. No cardinality appears in the theorem-facing conclusion.
- Baseline-reduction check: when \(k=1\), accepted `step_009` excludes the low-\(r_1\) contradiction branch by the additive VC floor. In the active branch \(H=\{1\}\), the present construction is exactly the one-factor unrestricted ALMM finite-task game and produces its learner-independent hard prior. No properness, quotient-output condition, finite-support restriction on the learner, or weaker one-factor surrogate is introduced.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(\nu_i\) is the sole new object exported downstream. It is a finite prior on the accepted task universe, and its defining quantifier order is \(\exists\nu_i\ \forall A\). It is produced by Proposition~\ref{prop:step-010-hard-prior}, not assumed.
- `Appendix-local`: \(F_i,\Theta_i,\mathcal Z_i,\mathcal U_i,\mathcal V_i,\mathcal P_i,\mathcal W_i\), and \(\gamma_i\) package the finite game. They are finite or finite-dimensional by Lemma~\ref{lem:step-010-compact-game} and need not appear in a public theorem statement.
- `Proof-local`: the measurable cells \(G_{i,j}\), retraction \(\tau_i\), labeled retraction \(\widehat\tau_i\), improper extension \(e_i\), evaluation map \(\operatorname{ev}_i\), task weights \(w_{\theta,j}\), finite laws \(P_\theta\), risks \(r_\theta\), payoffs \(L_\theta\), worst-task function \(g_i\), vertex weights \(\lambda\), and indexed prior \(\mu_i\) occur only in the finite reduction and minimax proof. The pushforward of \(\mu_i\), not \(\mu_i\) itself, is the exported task prior.
- Constant provenance: \(m=m_{n,i}\) is setting-defined; \(t_i,N_m\) and the witness are inherited from accepted Lemma~\ref{lem:step-008-shelah-tasks}; \(a_{\rm L},c_\delta\) are inherited from accepted Proposition~\ref{prop:step-008-factor-floor}. The privacy coefficient \(e^{0.1}\) and additive term \(\delta\) are the exact target privacy parameters. The margin \(\eta_i\) is proved positive by Proposition~\ref{prop:step-010-strict-value}; it is not free, assumed, or exported as a universal rate constant.
- Assumption provenance: cell measurability is primitive under Assumption~\ref{assump:countably-coded-evaluation}. The finite witness, realizability, finite-Dirac-mixture task property, strict factor floor, active set, and numerical eligibility are accepted derived outputs. Retraction measurability, total kernel extension, all-input privacy, compactness, continuity, strict uniform margin, and prior existence are proved in this step. No generated object or event is promoted to a primitive condition.
- All-event privacy audit: \(\mathcal P_i\) includes every ordered adjacent pair, hence both directions, and every \(E\subseteq\mathcal V_i\), including atoms, the empty event, and the full event. Inputs range over all of \(\mathcal Z_i^m\), including inconsistent and nonrealizable labelings. The raw extension handles adjacent pairs whose retractions become equal as well as those that remain adjacent.
- Empty/support/boundary audit: accepted \(t_i\ge1\) makes every finite game set nonempty; accepted \(m\ge8\) covers the sample boundary; repeated indices in \(\mathbf j\) are retained with multiplicity; duplicate indexed tasks are handled by prior pushforward; equality at the delta cap is allowed; \(t_i=1\) makes \(\tau_i\) constant but leaves all arguments valid; and an empty \(H\) makes the target quantifier vacuous, while the accepted contradiction branch has \(H\ne\varnothing\).
- Measurability audit: no raw singleton is assumed measurable. Finite mixtures of Dirac measures are legal on every measurable space; finite quotient cells make \(\tau_i\) and \(e_i(v)\) measurable; finite-evaluation cylinders make \(\operatorname{ev}_i\) measurable; and all remaining kernels, risks, and expectations are finite sums.
- Cardinality audit: cardinalities in (24) certify finiteness only. They do not enter \(\nu_i\)'s risk bound, the eligibility inequalities, or any hidden constant. The ambient factor, concept class, raw hypothesis set, and unrestricted learner output space may all be infinite.
- Diagnostic boundary: neither `global_proof.md` nor `global_proof_review.md` was read or used. No `proof_history` artifact was read or used.
