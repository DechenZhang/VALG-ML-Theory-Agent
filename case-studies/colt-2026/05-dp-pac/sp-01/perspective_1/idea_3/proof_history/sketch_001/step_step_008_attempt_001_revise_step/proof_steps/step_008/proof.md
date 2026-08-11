# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Establish universal \(a_{\rm L},c_\delta>0\) such that an unrestricted replacement-\((0.1,\delta)\)-DP factor learner with \(m\ge8\), \(\delta\le c_\delta/(m^2\log(m+1))\), and expected risk \(\le1/8\) on every realizable task must satisfy \(m\ge a_{\rm L}\log_2^*d_i\). Fix a finite Shelah task universe supporting the contrapositive strict \(>1/8\) floor.
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:vc-one-factors`, `assump:global-privacy-range`; derived: quotient/original dimension equality and finite-evaluation output legality.
- Technical challenge: The printed PAC corollary is not prior-ready; verify exact labels, resampling adjacency/privacy, expected-loss premise, arbitrary improper outputs, finite witness, \(m=8\), and log-star/delta translations.
- Intended proof tool or cited result: ALMM arXiv:1806.00949v3 `lem:bun`, `lem:reduction`, `thm:main`, `thm:shelah`, `thm:ADPimpliesLD`; BNSV Lemma 5.9; direct uniform-database risk identity.
- Output target: ALMM expected-risk factor wrapper and fixed finite task universe.
- Rate objective: Candidate lower objective: explicit \(m,d_i,\delta\), fixed-factor expected-risk impossibility, exact \(0\)-\(1\) risk; universal constants; no uniform-candidate claim.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:vc-one-factors}: \(C_i\) is nonconstant, \(\operatorname{VC}(C_i)=1\), and \(d_i=\operatorname{LD}(C_i)<\infty\).
  - Assumption~\ref{assump:global-privacy-range}: \(0<\varepsilon\le0.1\). In this step the source interface is stated at \(\varepsilon=0.1\); any learner with smaller \(\varepsilon\) is also \((0.1,\delta)\)-DP by monotonicity.
- Derived structural conclusions supplied by the accepted dependency:
  - The accepted proof and review of `step_001` (proof SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`, review status `ACCEPTED`) supply Lemma~\ref{lem:step-001-quotient-invariance}: \(\operatorname{LD}(\bar C_i)=\operatorname{LD}(C_i)=d_i\), with exact preservation of all finite evaluation patterns.
  - The same dependency supplies Lemma~\ref{lem:step-001-output-measurability} and Lemma~\ref{lem:step-001-risk-pullback}: quotient outputs and pullbacks are legal measurable hypotheses, and quotient/raw \(0\)-\(1\) risks agree exactly. Measurability of finite evaluations of an otherwise unrestricted learner is separately part of the target local output convention below.
- Local conditional hypotheses:
  - A fixed integer \(m\ge8\) and a fixed \(\delta>0\) satisfying the displayed numerical bound proved below.
  - A factor learner \(A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)\) that is replacement-\((0.1,\delta)\)-DP on all labeled inputs, including nonrealizable inputs, and whose decoder has measurable finite-evaluation cylinders.
  - For the forward implication only, \(A\) has expected distributional risk at most \(1/8\), over its iid sample and internal randomness, on every realizable factor task. The proof actually consumes this condition only on the finite task universe constructed below.

The learner's privacy and expected-risk properties are local hypotheses of the target implication, not primitive setting assumptions or generated invariants. No properness, finite ambient domain, finite ambient output class, or quotient-coded-output condition is imposed.

Throughout this artifact, \(\ln\) denotes the setting's natural logarithm \(\log\), and \([t]:=\{1,\ldots,t\}\) for a positive integer \(t\). For a labeled database \(U=((u_a,y_a))_{a=1}^N\) and a decoded binary hypothesis \(h\), define
\[
L_U(h):=\frac1N\sum_{a=1}^N\mathbf1\{h(u_a)\ne y_a\}.
\]
When \(y_a=c(u_a)\) for every \(a\), the notation \(L_U(h,c)\) denotes the same quantity and only records the target.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | For an even empirical sample size \(N\ge72\), the proof of ALMM `thm:main` remains valid for an arbitrary-output replacement-private threshold algorithm when its only utility premise is expected empirical loss at most \(1/8\); hence \(N\ge a_0\log_2^*t\) for a universal \(a_0>0\). | Extracts the exact expected-loss source interface without using the printed PAC corollary as a black box. |
| `unit_002` | lemma | Under Assumption~\ref{assump:vc-one-factors} and the accepted quotient-invariance dependency, each factor has a fixed finite Shelah threshold witness of length \(t_i=\max\{1,\lfloor\ln d_i\rfloor\}\); for every \(m\), its uniform row-counting tasks form a finite learner-independent universe \(\mathfrak T_{i,m}\), and when \(r_i=\log_2^*d_i\ge8\), \(\log_2^*t_i\ge r_i-2\). | Produces the exact finite tasks and the LD-to-threshold log-star bridge. |
| `unit_003` | lemma | For a total arbitrary-output factor learner that is replacement-\((0.1,\delta)\)-DP on all \(m\)-row inputs and has measurable finite evaluations, if \(m\ge8\) and \(0<\delta\le(\ln2)/(200000m^2\ln(m+1))\), then resampling into the least even \(N_m\ge9m\) produces an empirical learner with \(\varepsilon_m'\le1/15\), \(\delta_m'<\delta\le1/(1000N_m^2\log_2N_m)\), and exact expected empirical/population risk equality on \(\mathfrak T_{i,m}\), including \(m=8\). | Discharges BNSV replacement resampling, arbitrary outputs, the expected-risk identity, delta translation, and the floor-eight boundary. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range} and the accepted `step_001` conclusions, every total arbitrary-output replacement-\((0.1,\delta)\)-DP factor learner with measurable finite evaluations, \(m\ge8\), \(0<\delta\le c_\delta/(m^2\ln(m+1))\), and expected risk at most \(1/8\) on every realizable task satisfies \(m\ge a_{\rm L}\log_2^*d_i\); contrapositively, failure of that inequality forces strict expected risk greater than \(1/8\) on some fixed task in \(\mathfrak T_{i,m}\). | Assembles the exact target claim and exports the strict finite-task floor. |

Atomic step = no. The source-proof adaptation, finite witness, resampling calculation, and final parameter translation are independent theorem-critical obligations.

## Cited Result Applications

### Accepted dependency `step_001`

- Source: accepted `step_001` proof and matching accepted review, at the hashes listed above.
- Restated current-notation interface: quotient pullback is a bijection \(\bar C_i\to C_i\) preserving every finite label pattern and finite Littlestone tree, so \(\operatorname{LD}(\bar C_i)=d_i\); quotient/raw risk agrees exactly. The target's unrestricted finite-cylinder output convention, rather than the dependency, makes the finite evaluation map of \(A\) measurable.
- Instantiated objects: \(C_i,\bar C_i,Q_i,\kappa_i\), the finite witness points \((q_{i,j})_j\), chosen raw representatives \((x_{i,j})_j\), and the factor decoder of \(A\).
- Assumption discharge: Assumption~\ref{assump:vc-one-factors} and the accepted dependency provide the dimensions; the dependency's output-measurability and risk lemmas provide the finite restriction and pullback interfaces.
- Conclusion used: the ALMM witness may be built on \(\bar C_i\), pulled back to an actual finite realizable task inside \(C_i\), and evaluated measurably even when the learner is improper.

### ALMM arXiv:1806.00949v3

The following labels and roles were checked in the versioned primary source `ADP.tex`.

1. `thm:shelah` states that if a binary class has Littlestone dimension at least \(d\), then it contains \(\lfloor\log d\rfloor\) thresholds: there are finitely many points \(x_1,\ldots,x_t\) and hypotheses \(h_1,\ldots,h_t\) with \(h_\ell(x_j)=+1\) iff \(\ell\le j\). The converse direction is also stated but is not used here. The paper leaves the base of its unadorned \(\log\) implicit. Taking only \(\lfloor\ln d\rfloor\) points is valid whether that source logarithm is natural or base two, and the explicit base-two log-star translation is proved locally.
2. `thm:main` is the printed PAC theorem: on a finite ordered threshold domain of cardinality \(t\), a possibly improper \((1/16,1/16)\)-accurate learner with sample size \(N\), replacement privacy \((0.1,O(1/(N^2\log N)))\), must have \(N=\Omega(\log^*t)\). It is not directly used as an expected-risk theorem.
3. `lem:bun` is ALMM's restatement of BNSV Lemma 5.9. For \(\varepsilon<1\), it converts an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-PAC learner using \(m\) samples into an empirical learner using \(9m\) samples with the same displayed privacy and accuracy parameters. Its printed high-probability conclusion is not used as the expected-risk premise.
4. `lem:reduction` is the active probability-jump claim in the proof of `thm:main`: for the probability list \((p_j)_{j=0}^N\) of an \(N\)-homogeneous set, some \(p_j-p_{j-1}\ge1/(4N)\). Its proof invokes utility only through
   \[
   \mathbb E L_U(B(U))\le
   (1-1/16)(1/16)+(1/16)\cdot1\le1/8,
   \]
   equivalently expected accuracy at least \(7/8\), on one balanced realizable database. Every subsequent use is of this expectation-derived jump, replacement privacy, or finite output marginals.
5. `thm:ADPimpliesLD` is the printed PAC corollary obtained by composing `thm:shelah` and `thm:main`. It confirms the source's arbitrary-class and possibly-improper scope, but its PAC premise is not used as authority for the expected-risk wrapper.

The remaining active labels inside the checked proof of `thm:main` have these exact roles: `lem:finiteramsey`/`lem:ramsey` finds a large homogeneous set for any randomized algorithm; `lem:lbhomog` reduces a large homogeneous set to a bound; `lem:AtoP` uses `lem:reduction` and replacement privacy to form arbitrary-output distributions on a finite cube; and `lem:binary` uses the exact source cap \(1/(1000N^2\log N)\). Thus no proper-output property enters after finite evaluation restriction.

Source-convention mapping:

- ALMM uses labels \(\{-1,+1\}\), while the branch uses \(\{0,1\}\). The fixed bijection \(b\mapsto2b-1\) preserves equality, mistakes, adjacency, and every DP inequality.
- ALMM Definition `def:private` uses fixed-size samples that disagree in one example, exactly replacement adjacency.
- ALMM algorithms output arbitrary functions on the domain and the text explicitly emphasizes that `thm:main` may be improper. Restricting a branch output to the finite Shelah witness therefore preserves, rather than narrows, the source scope relevant to the proof.
- The proof of `thm:main` fixes the concrete empirical privacy scale \(1/(1000N^2\log N)\). Below we impose the at-least-as-strong scale \(1/(1000N^2\log_2N)\), so the source's implicit choice between natural and base-two logarithms cannot invalidate the discharge.

### BNSV Lemma 5.9 and its resampling lemma

- Source identity: Bun--Nissim--Stemmer--Vadhan, arXiv:1504.07553 (the original source is v1; the rendered source identifies the result as Lemma 5.9).
- Exact printed Lemma 5.9: an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-accurate PAC learner of sample size \(m\) yields an \((\varepsilon,\delta)\)-DP \((\alpha,\beta)\)-accurate empirical learner of sample size \(9m\); properness is preserved if present, but is not required.
- Exact privacy calculation used in its proof: the immediately preceding source lemma labeled `lem:secrecy-of-the-sample` assumes \(\varepsilon\le1\) and \(N\ge2m\). On an input database of size \(N\), sample \(m\) row indices independently with replacement and run an \((\varepsilon,\delta)\)-DP algorithm on the resulting \(m\)-row database. The result is replacement-\((\widetilde\varepsilon,\widetilde\delta)\)-DP with
  \[
  \widetilde\varepsilon=\frac{6\varepsilon m}{N},
  \qquad
  \widetilde\delta=
  \exp\!\left(\frac{6\varepsilon m}{N}\right)
  \frac{4m}{N}\,\delta.
  \tag{1}
  \]
- Resampling adjacency: for adjacent \(N\)-row databases differing in the last row, the proof conditions on the multiplicity \(K\) with which that index is sampled. Conditional resampled inputs differ in exactly \(K\) positions; iterating replacement privacy gives \(q_K\le e^{K\varepsilon}q_0+(e^{K\varepsilon}-1)(e^\varepsilon-1)^{-1}\delta\), and binomial averaging yields (1). Repeated sampling is therefore included, not silently treated as one replacement.
- Instantiated objects: \(\varepsilon=0.1\), base learner sample size \(m\), empirical database size \(N_m\), arbitrary labeled databases over the finite raw Shelah witness, and the postprocessed finite evaluation vector.
- Assumption discharge: \(0.1\le1\); \(N_m\ge9m\ge2m\); branch privacy holds on every labeled input; finite evaluation restriction is measurable by the accepted dependency.
- Conclusion used: the resampled empirical learner has exactly the parameters in (1). The statement/formula distinction is explicit: Lemma 5.9 is the PAC-to-empirical result, while (1) is the labeled source lemma invoked in its proof.

## Local Derivation

### unit_001: proposition

**Proposition (Expected empirical ALMM threshold obstruction).** \(\label{prop:step-008-almm-expected}\)

Statement:
There is a universal constant \(a_0>0\) with the following property. Let \(V\) be a finite totally ordered set of size \(t\), let \(N\ge72\) be even, and let
\[
B:(V\times\{0,1\})^N\rightsquigarrow\{0,1\}^{V}
\]
be an arbitrary-output randomized algorithm. If

1. \(B\) is replacement-\((0.1,\eta)\)-DP on all labeled databases;
2. \(\eta\le1/(1000N^2\log_2N)\); and
3. for every threshold target \(c\) on \(V\) and every \(N\)-row database \(U\) labeled by \(c\),
   \[
   \mathbb E_{B}L_U(B(U),c)\le\frac18,
   \tag{2}
   \]

then
\[
N\ge a_0\log_2^*t.
\tag{3}
\]
The conclusion permits every output bit vector, not only threshold vectors.

Proof / justification:
This is the exact expected-loss wrapper obtained from the checked proof of ALMM `thm:main`, rather than from its printed PAC statement.

First, the only utility use in ALMM `lem:reduction` is the inequality \(\mathbb E L_U\le1/8\) on a balanced, increasing, realizable database of the empirical sample size. Condition (2) supplies that line verbatim. The displayed decomposition of expected correct labels then gives expected accuracy at least \(7/8\), from which ALMM obtains one positive-side marginal at least \(3/4\), one negative-side marginal at most \(1/4\), and, after one replacement-DP comparison and homogeneity error, a probability-list jump at least \(1/(4N)\). No tail event or PAC failure parameter is used after the expectation has been formed.

Second, ALMM `lem:finiteramsey` applies to every randomized mapping from samples to arbitrary hypotheses. Its proof uses only the finitely many marginals \(\Pr[B(U)(v)=1]\). Given the jump from `lem:reduction`, `lem:AtoP` restricts arbitrary outputs to a finite interval and uses only replacement privacy. `lem:binary` then applies the source's exact \(1/(1000N^2\log N)\) delta scale. Since \(\log_2N\ge\ln N\) for \(N>1\), condition 2 is at least as strong if ALMM's unbased logarithm is natural, and is identical if it is base two. Also, at \(N\ge72\), this delta bound is below the source's auxiliary \(0.001\) bound used in the one-replacement numerical comparison.

Third, the end of the proof of `thm:main` combines the homogeneous-set bounds and obtains
\[
\log^{(N)}(t)\le2^{cN^2\log N}
\]
for a universal \(c\), where \(\log^{(N)}\) is ALMM's iterated-log notation, hence \(\log^*t\le N+\log^*N+O(1)\), and therefore \(N=\Omega(\log^*t)\). Changing the fixed source logarithm base to the setting's base-two iterate changes only a universal additive number of iterations. Consequently there is a universal positive \(a_0\) for all sufficiently large \(t\). Shrinking \(a_0\), if necessary, covers the finitely many remaining values because \(N\ge72\); this gives (3) without an asymptotic qualifier.

Evenness is the source-proof convention needed to form balanced databases. The present proposition makes it explicit rather than silently assuming it. Relabeling \(0,1\) as \(-1,+1\) and extending a vector in \(\{0,1\}^{V}\) arbitrarily outside \(V\) preserve every line of the source proof. Thus arbitrary improper output is retained.

### unit_002: lemma

**Lemma (Finite Shelah tasks and the base-two log-star bridge).** \(\label{lem:step-008-shelah-tasks}\)

Statement:
Under Assumption~\ref{assump:vc-one-factors} and Lemma~\ref{lem:step-001-quotient-invariance}, fix a factor \(i\), put
\[
r_i:=\log_2^*d_i,
\qquad
t_i:=\max\{1,\lfloor\ln d_i\rfloor\}.
\tag{4}
\]
There are fixed quotient points \(q_{i,1},\ldots,q_{i,t_i}\in Q_i\), quotient concepts \(\bar c_{i,1},\ldots,\bar c_{i,t_i}\in\bar C_i\), and raw representatives \(x_{i,j}\in\kappa_i^{-1}(\{q_{i,j}\})\) such that
\[
\bar c_{i,\ell}(q_{i,j})=c_{i,\ell}(x_{i,j})
=\mathbf1\{\ell\le j\},
\qquad
c_{i,\ell}:=\bar c_{i,\ell}\circ\kappa_i\in C_i.
\tag{5}
\]
For a fixed \(m\ge8\), let \(N_m\) be the least even integer at least \(9m\). For \(\mathbf j=(j_1,\ldots,j_{N_m})\in[t_i]^{N_m}\), define
\[
\mu_{i,\mathbf j}:=\frac{1}{N_m}\sum_{a=1}^{N_m}\delta_{x_{i,j_a}}.
\tag{6}
\]
Then
\[
\mathfrak T_{i,m}:=
\{(c_{i,\ell},\mu_{i,\mathbf j}):
  \ell\in[t_i],\ \mathbf j\in[t_i]^{N_m}\}
\tag{7}
\]
is a finite, learner-independent universe of realizable factor tasks. Moreover, if \(r_i\ge8\), then
\[
\log_2^*t_i\ge r_i-2.
\tag{8}
\]

Proof / justification:
Lemma~\ref{lem:step-001-quotient-invariance} gives \(\operatorname{LD}(\bar C_i)=d_i\). ALMM `thm:shelah` supplies a finite threshold pattern of length \(\lfloor\log d_i\rfloor\). If the source's unadorned logarithm is natural, (4) is exactly no larger than that length; if it is base two, \(\ln d_i\le\log_2d_i\), so a prefix of the source witness has length \(t_i\). When \(\lfloor\ln d_i\rfloor=0\), nonconstancy supplies a quotient point with both labels available; choosing a concept with label one gives the length-one instance of (5). Pullback and finite raw representative choice are legal by the accepted dependency and require no measurable global section.

Each measure in (6) is a probability measure on \((X_i,\Sigma_i)\), even when raw singletons are not measurable as sets: a Dirac measure \(\delta_x(A)=\mathbf1_A(x)\) is defined on every measurable space. Its target is the setting-measurable concept \(c_{i,\ell}\), so every pair in (7) is a legal realizable task. The universe has at most \(t_i^{N_m+1}\) elements and is fixed using only the factor, the source witness, and \(m\), before any learner is supplied.

It remains to prove (8) in the setting's exact convention. Let \(x=\log_2d_i\). If \(r_i\ge8\), then certainly \(d_i>1024\), hence \(x>10\). Since \(x\ln2>2\),
\[
t_i=\lfloor x\ln2\rfloor
\ge\frac{\ln2}{2}x.
\tag{9}
\]
At \(x=10\), \((\ln2)x/2>\log_2x\), and the derivative of the left side is \(\ln2/2\), while the derivative of \(\log_2x\) is \(1/(x\ln2)<\ln2/2\) for every \(x\ge10\). Thus (9) gives \(t_i\ge\log_2x\). Monotonicity and two applications of the defining log-star recursion now yield
\[
\log_2^*t_i
\ge\log_2^*(\log_2x)
=\log_2^*x-1
=r_i-2,
\]
which proves (8). This calculation explicitly absorbs both the Shelah logarithm and the additional threshold-domain logarithm; it does not identify \(\log^*d_i\) with \(\log^*t_i\) without the displayed shift.

### unit_003: lemma

**Lemma (Replacement-private resampling with exact empirical-risk identity).** \(\label{lem:step-008-resampling}\)

Statement:
Fix the factor and finite witness from Lemma~\ref{lem:step-008-shelah-tasks}. Let \(m\ge8\), let \(\delta>0\), and let
\[
A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)
\]
be total and replacement-\((0.1,\delta)\)-DP on every labeled \(m\)-row input, with a decoded binary hypothesis whose finite-evaluation cylinders are measurable. Define \(N_m\) as in Lemma~\ref{lem:step-008-shelah-tasks}, and set
\[
c_\delta:=\frac{\ln2}{200000}.
\tag{10}
\]
If
\[
0<\delta\le\frac{c_\delta}{m^2\ln(m+1)},
\tag{11}
\]
then the following algorithm \(B_{i,m}\) is well-defined on every labeled \(N_m\)-row database over the raw witness. Sample \(m\) row indices independently and uniformly with replacement, run \(A\) on those \(m\) labeled raw rows, and output the vector of the decoded hypothesis's labels on \((x_{i,1},\ldots,x_{i,t_i})\). It is replacement-\((\varepsilon_m',\delta_m')\)-DP, where
\[
\varepsilon_m'=\frac{0.6m}{N_m}\le\frac1{15},
\qquad
\delta_m'=
e^{0.6m/N_m}\frac{4m}{N_m}\delta
<\delta
\le\frac1{1000N_m^2\log_2N_m}.
\tag{12}
\]
For every task \((c_{i,\ell},\mu_{i,\mathbf j})\in\mathfrak T_{i,m}\), if
\[
U_{i,\ell,\mathbf j}:=
\bigl((x_{i,j_a},c_{i,\ell}(x_{i,j_a}))\bigr)_{a=1}^{N_m},
\]
then
\[
\mathbb E L_{U_{i,\ell,\mathbf j}}
 \bigl(B_{i,m}(U_{i,\ell,\mathbf j}),c_{i,\ell}\bigr)
=
\mathbb E_{S\sim(\mu_{i,\mathbf j})_{c_{i,\ell}}^m,A}
 R_{\mu_{i,\mathbf j}}(h_{A(S)},c_{i,\ell}).
\tag{13}
\]
At the boundary \(m=8\), \(N_m=72\), so every displayed source condition remains valid.

Proof / justification:
The finite evaluation vector is measurable by the target's finite-evaluation-cylinder hypothesis; this is compatible with the quotient decoder established by Lemma~\ref{lem:step-001-output-measurability}. It can be an arbitrary bit vector and need not represent a member of the threshold subclass. The algorithm is total on nonrealizable inputs because \(A\) is total there and the resampling rule does not test realizability.

We have
\[
9m\le N_m\le9m+1\le10m.
\tag{14}
\]
In particular \(N_m\ge2m\), so the BNSV source lemma used in Lemma 5.9 applies to replacement-adjacent databases, including all multiplicities of the replaced row. Substituting \(\varepsilon=0.1\) in (1) gives the two parameters in (12). From \(N_m\ge9m\),
\[
\varepsilon_m'\le\frac{0.6}{9}=\frac1{15}.
\]
For \(0\le y<1\), the exponential series gives \(e^y\le(1-y)^{-1}\). Hence
\[
e^{0.6m/N_m}\frac{4m}{N_m}
\le e^{1/15}\frac49
\le\frac{15}{14}\frac49
=\frac{10}{21}<1,
\tag{15}
\]
which proves \(\delta_m'<\delta\). Thus \(B_{i,m}\), originally \((\varepsilon_m',\delta_m')\)-DP, may also be regarded as \((0.1,\delta_m')\)-DP.

For the ALMM delta scale, \(m\ge8\) implies
\[
10m\le(m+1)^2.
\tag{16}
\]
Equations (14)--(16) give
\[
N_m^2\log_2N_m
=\frac{N_m^2\ln N_m}{\ln2}
\le\frac{100m^2\,2\ln(m+1)}{\ln2}.
\tag{17}
\]
Inverting (17) and using (10)--(11),
\[
\delta_m'<\delta
\le\frac{\ln2}{200000m^2\ln(m+1)}
\le\frac1{1000N_m^2\log_2N_m},
\]
which is the last part of (12). At \(m=8\), \(9m=72\) is already even, so \(N_m=72\) and, exactly,
\[
\varepsilon_8'=\frac{0.6\cdot8}{72}=\frac1{15},
\qquad
\delta_8'=e^{1/15}\frac49\delta\le\frac{10}{21}\delta<\delta.
\]
Thus (14), the BNSV condition \(N_m\ge2m\), the balanced-database convention, (15), and (17) all hold at the boundary without an open endpoint or an appeal to larger \(m\).

Finally, conditional on the fixed database \(U_{i,\ell,\mathbf j}\), its with-replacement resample is exactly an iid sample from \((\mu_{i,\mathbf j})_{c_{i,\ell}}\). For every decoded output \(h\), pointwise and before expectation,
\[
L_{U_{i,\ell,\mathbf j}}(h,c_{i,\ell})
=\frac1{N_m}\sum_{a=1}^{N_m}
 \mathbf1\{h(x_{i,j_a})\ne c_{i,\ell}(x_{i,j_a})\}
=R_{\mu_{i,\mathbf j}}(h,c_{i,\ell}).
\tag{18}
\]
Taking expectation over the sampled indices and learner randomness proves (13). Repeated database rows are counted with their multiplicities on both sides, so there is no empirical-to-population residual.

### unit_004: proposition

**Proposition (Unrestricted expected-risk factor floor).** \(\label{prop:step-008-factor-floor}\)

Statement:
Under Assumptions~\ref{assump:vc-one-factors} and~\ref{assump:global-privacy-range} and the accepted `step_001` conclusions, let \(m\ge8\), let \(\delta>0\), and let
\[
A:(X_i\times\{0,1\})^m\rightsquigarrow(\Omega,\mathscr F)
\]
be total and replacement-\((0.1,\delta)\)-DP on all labeled inputs, with a decoded binary hypothesis whose finite-evaluation cylinders are measurable. Let \(a_0\) be from Proposition~\ref{prop:step-008-almm-expected} and define
\[
a_{\rm L}:=\min\left\{1,\frac{a_0}{20}\right\},
\qquad
c_\delta:=\frac{\ln2}{200000}.
\tag{19}
\]
If \(m\ge8\), \(\delta\le c_\delta/(m^2\ln(m+1))\), and \(A\) has expected risk at most \(1/8\) on every realizable factor task, then
\[
m\ge a_{\rm L}\log_2^*d_i.
\tag{20}
\]
More strongly, for the fixed finite universe \(\mathfrak T_{i,m}\) in (7),
\[
m<a_{\rm L}\log_2^*d_i
\quad\Longrightarrow\quad
\exists(c,D)\in\mathfrak T_{i,m}:
\mathbb E_{S\sim D_c^m,A}R_D(h_{A(S)},c)>\frac18.
\tag{21}
\]

Proof / justification:
Write \(r_i=\log_2^*d_i\). If \(r_i<8\), then \(m\ge8>r_i\), and (20) follows from \(a_{\rm L}\le1\).

Now suppose \(r_i\ge8\). If the learner has expected risk at most \(1/8\) on every realizable task, it has that bound on every member of the finite subfamily \(\mathfrak T_{i,m}\). Lemma~\ref{lem:step-008-resampling} therefore constructs an even-\(N_m\) arbitrary-output empirical threshold learner satisfying all hypotheses of Proposition~\ref{prop:step-008-almm-expected}. Using that proposition, Lemma~\ref{lem:step-008-shelah-tasks}, and \(N_m\le10m\),
\[
10m\ge N_m
\ge a_0\log_2^*t_i
\ge a_0(r_i-2)
\ge\frac{a_0}{2}r_i.
\tag{22}
\]
Thus \(m\ge(a_0/20)r_i\ge a_{\rm L}r_i\), proving (20).

For (21), suppose instead that \(m<a_{\rm L}r_i\). The small-\(r_i\) case is impossible by \(m\ge8\) and \(a_{\rm L}\le1\). In the remaining case, if every task in \(\mathfrak T_{i,m}\) had expected risk at most \(1/8\), the same derivation (22) would contradict the strict hypothesis. Therefore not all of the finitely many task losses are at most \(1/8\). Logical negation gives one task with loss strictly greater than \(1/8\), exactly as displayed in (21). The universe was fixed before \(A\), so this is not a learner-dependent witness construction.

## Target-Step Assembly

Proposition~\ref{prop:step-008-almm-expected} verifies the theorem-critical source interface at the level actually consumed by the ALMM proof: even empirical sample size, replacement privacy on all inputs, arbitrary improper output, exact delta scale, and expected empirical loss \(1/8\). It explicitly treats ALMM's printed PAC theorem and `thm:ADPimpliesLD` as nonoutputs for this wrapper and identifies `lem:reduction` as the sole utility entry point.

Lemma~\ref{lem:step-008-shelah-tasks}, using the accepted quotient-invariance dependency and ALMM `thm:shelah`, fixes a finite learner-independent family of realizable uniform-database tasks and proves the base-two log-star shift. Lemma~\ref{lem:step-008-resampling} then instantiates the exact BNSV with-replacement calculation used in Lemma 5.9, including repeated selection of the replaced row, all-input replacement adjacency, finite-evaluation postprocessing, exact expected-risk equality, \(m=8\), and the natural-log candidate cap to base-two ALMM delta translation.

Proposition~\ref{prop:step-008-factor-floor} composes those results and proves the exact sketch-row implication with the universal constants in (19). Its contrapositive (21) is strict and is supported by the fixed finite Shelah task universe. No properness, ambient finiteness, quotient-output restriction, PAC-to-expectation reversal, or uniform-in-candidate assertion is introduced.

## Explicit Rate Audit

- Exposed variables: the fixed factor index \(i\), \(d_i\), \(r_i=\log_2^*d_i\), witness length \(t_i\), factor sample size \(m\), even empirical size \(N_m\), and \(\delta\).
- Hidden constants may depend on: only the universal constant \(a_0\) extracted from the checked ALMM proof and fixed numerical/logarithm conventions.
- Hidden constants may not depend on: \(X,\Sigma,C,i,k,d_i,C_i,Q_i,|Q_i|\), the learner, target, distribution, \(m\), \(\varepsilon\), or \(\delta\).
- Fixed quantities: source privacy level \(0.1\), expected-risk threshold \(1/8\), the source empirical delta coefficient \(1000\), and natural/base-two logarithm conventions.
- Probability mode: expected exact \(0\)-\(1\) risk over an iid sample and learner randomness; the contrapositive is a worst-case strict expected-risk statement. No PAC tail event is claimed in this step.
- Horizon mode: one fixed factor and one fixed sample size \(m\); the constants are universal, but there is no simultaneous or uniform-in-candidate event.
- Norm mode: exact distributional binary \(0\)-\(1\) risk, equal pointwise to empirical row-counting loss in (18).
- Admissibility conditions and auxiliary tolerances: \(m\ge8\), \(0<\delta\le c_\delta/(m^2\ln(m+1))\), replacement-\((0.1,\delta)\)-DP on all inputs, and the local expected-risk premise. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: (8)--(9) prove the Shelah/log-star shift; (14)--(17) prove the even-rounding, privacy, and delta absorptions; (22) proves the final constant absorption. No term is dropped by asymptotic prose.
- Probability conversion: none. The proof follows the ALMM expected-loss line directly and does not infer the source PAC guarantee from expected risk.
- Contribution to any Rate Specialization Bridge: exports universal \(a_{\rm L}=\min\{1,a_0/20\}\) and the valid conservative choice \(c_\delta=\ln2/200000\) for later candidate calibration.
- Baseline-reduction check: at \(k=1\), the construction is the same unrestricted one-factor ALMM threshold obstruction after finite Shelah restriction and BNSV resampling. The intermediate conclusion is an expected-risk floor because that is this step's exact downstream interface; it is strict on a finite task family and does not replace the final PAC baseline. The accepted sketch assigns the later expectation-to-PAC-event conversion to `step_014`.

## Blockers

None

## Notation And Assumption Notes

- `Public-facing`: \(a_{\rm L}\) and \(c_\delta\) in (19) are the minimal universal constants exported to `step_009`. Their provenance is, respectively, the checked ALMM constant plus explicit factor-10/additive-log-star absorption, and the direct delta calculation (17).
- `Public-facing`: \(\mathfrak T_{i,m}\) is the finite learner-independent task universe exported to `step_010`; its points, targets, and row-counting measures are all constructed in Lemma~\ref{lem:step-008-shelah-tasks}. No task is selected after observing a learner.
- `Appendix-local`: \(a_0\), \(t_i\), the finite Shelah points/concepts, their raw representatives, and \(N_m\) package the source proof and finite-game interface. The witness is finite, while the ambient factor and output spaces may be infinite.
- `Proof-local`: \(\varepsilon_m',\delta_m'\), the sequence \(\mathbf j\), database \(U_{i,\ell,\mathbf j}\), and variable \(x=\log_2d_i\) are used only to prove the wrapper and its parameter translations.
- `Proof-local notation`: \([t]=\{1,\ldots,t\}\), \(L_U\), and the alias \(\ln=\log\) are defined before use and introduce no assumption or hidden parameter.
- Constant provenance: \(1000\) is the exact conservative coefficient fixed in the proof of ALMM `thm:main`; \(9\), \(6\), and \(4\) are the exact BNSV resampling constants; \(72\) is the derived value \(N_8=9\cdot8\); \(200000=1000\cdot200\) comes from the explicit bound in (17). No free bounded constant is introduced.
- Assumption provenance: the finite witness and task universe are proved locally from the primitive factor condition and accepted quotient invariance. Measurable restriction and exact risk pullback are accepted dependency conclusions. Resampling privacy and expected empirical loss are proved locally. The learner's all-input DP and expected-risk properties remain only the stated local hypotheses of the target implication.
- Source nonoutput boundaries: ALMM `thm:main`, `lem:bun`, and `thm:ADPimpliesLD` have PAC premises and are not cited as if they stated the expected-risk result. BNSV Lemma 5.9 states the \(9m\) PAC-to-empirical reduction; the exact formula (1) is in its proof's cited source lemma `lem:secrecy-of-the-sample`. These distinctions are part of the proof, not blockers.
- No global proof diagnostic or `proof_history` artifact was read or used.
