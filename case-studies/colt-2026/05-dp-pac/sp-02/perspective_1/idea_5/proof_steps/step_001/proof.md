# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Under `assump:polynomial-global-stability`, for every finite \(C\), every \(L=\log\lvert C\rvert\), and the declared parameters, construct one arbitrary-output distribution-free realizable private learner satisfying the exact two-term `(BLM)` bound after a loss/adjacency-preserving \(\{0,1\}\leftrightarrow\{-1,+1\}\) recoding.
- Dependencies: None.
- Assumptions used: Primitive `assump:polynomial-global-stability`; primitive parameter ranges from `setting.md`; cited theorem hypotheses discharged by the audited map.
- Technical challenge: Verify source identity, label convention, arbitrary-output range, replacement adjacency, fixed-\(Q\) wording, measurability, and exact quantitative conclusion before using the theorem.
- Intended proof tool or cited result: Bun--Livni--Moran, arXiv:2003.00563v3, Section 5.2, Theorem 17 (`thm:selection`); direct recoding wrapper.
- Output target: Raw learner and `(BLM)` bound with universal \(C_{\mathrm{BLM}}\).
- Rate objective: R1: retain full dependence on \(m,\eta,\alpha_0,\beta_0,\varepsilon_0,\delta\); no term absorption yet.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\).
  - The basic setup in `setting.md`: \(C\subseteq\{0,1\}^X\) is nonempty and finite; \(q=q(C)\geq1\); \(L=\log|C|\geq0\); \(\alpha_0=\beta_0=1/8\); \(\varepsilon_0\in(0,1)\); the learner output space is \(\mathcal H_X=\{0,1\}^X\); utility is population zero-one risk; privacy uses ordered, fixed-length replacement adjacency; and the stated kernel/measurability convention holds.
  - The setting-defined scalar expressions \(b=2a+2\), \(u(L)=\log\log(e^e+L)\), \(T_a(q,L)=q^b+u(L)\), and \(\delta_a(q,L)=e^{-T_a(q,L)}\). They are definitions, not extra assumptions.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. A distribution \(Q\) realizable by \(C\) is fixed only inside the universal PAC verification; its accurate atom is supplied by Assumption~\(\ref{assump:polynomial-global-stability}\), not assumed separately.
- Accepted dependency step proof/review artifacts: None.

The Bun--Livni--Moran conversion is used only as the checked cited result restated below. Neither `global_proof.md` nor any downstream bridge is an assumption or dependency.

For notation used throughout this step, define
\[
\lambda(y)=2y-1,\qquad
\Phi_Z(x,y)=(x,\lambda(y)),\qquad
\Phi_H(h)(x)=\lambda(h(x)).
\]
For a class, distribution, producer, and hypothesis in the branch convention, write
\[
C^{\pm}=\Phi_H(C),\qquad
Q^{\pm}=(\Phi_Z)_\#Q,
\]
\[
G_C^{\pm}
=\Phi_H\circ G_C\circ(\Phi_Z^{-1})^{\otimes m_C},
\qquad
h_{C,Q}^{\pm}=\Phi_H(h_{C,Q}).
\]
For a source-label distribution \(D\) and \(g:X\to\{-1,+1\}\), let
\[
\operatorname{loss}_D(g)=\Pr_{(x,t)\sim D}[g(x)\neq t].
\]
These are `proof-local` definitions. Lemma~\(\ref{lem:step-001-binary-recoding}\) proves their measurable legitimacy and exact preservation properties before any conclusion is drawn from them.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic measurable binary setup in `setting.md`, for every \(r\geq1\), \(C\subseteq\mathcal H_X\), distribution \(Q\) on \(Z_X\), \(h\in\mathcal H_X\), and kernel \(G:Z_X^r\rightsquigarrow\mathcal H_X\), the pointwise \(\{0,1\}\leftrightarrow\{-1,+1\}\) bijection with the transported output sigma-algebra preserves realizability, population zero-one risk, iid product laws, exact output-atom probabilities, and ordered replacement adjacency in both directions. | Establishes the exact source/branch object and convention map, including the measurability boundary. |
| `unit_002` | lemma | Under Assumption~\(\ref{assump:polynomial-global-stability}\) and Lemma~\(\ref{lem:step-001-binary-recoding}\), for every nonempty finite \(C\) and every realizable \(Q\), the recoded fixed producer and recoded \(Q\)-dependent atom satisfy every hypothesis of BLM Theorem 17 at \(m=m_C\), \(\eta=q^{-a}\), \(\alpha=\alpha_0\), \(\beta=\beta_0\), \(\varepsilon=\varepsilon_0\), and \(\delta=\delta_a(q,L)\); when \(q=1\), one has exactly \(m_C=1\) and \(\eta=1\). | Discharges the cited theorem's hypotheses without adding a generated condition or excluding the boundary \(q=1\). |
| `unit_003` | proposition | Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemmas~\(\ref{lem:step-001-binary-recoding}\) and \(\ref{lem:step-001-blm-admissibility}\), and the checked BLM Theorem 17, for each fixed nonempty finite \(C\) and \(\varepsilon_0\in(0,1)\), one source-label kernel \(A_C^{\pm}\), independent of \(Q\), is PAC-valid for every realizable recoded \(Q\), is \((\varepsilon_0,\delta_a(q,L))\)-DP, has arbitrary output in \(\{-1,+1\}^X\), and obeys the exact two-term bound with one universal \(C_{\mathrm{BLM}}\). | Proves the fixed-\(G_C\), distribution-free wrapper and retains both source sample terms. |
| `unit_004` | proposition | Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemma~\(\ref{lem:step-001-binary-recoding}\), and Proposition~\(\ref{prop:step-001-uniform-blm}\), for each fixed nonempty finite \(C\) and \(\varepsilon_0\in(0,1)\), inverse output recoding and adjacency-preserving input recoding produce one arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC, \((\varepsilon_0,\delta_a(q,L))\)-DP learner \(A_C\) on \(\{0,1\}\)-labeled samples with exactly the same sample bound. | Establishes the exact target-step claim in the branch convention. |

Atomic step = no. The source-hypothesis check, uniform-in-distribution wrapper, and DP/PAC transport are independent nontrivial obligations.

## Cited Result Applications

### Bun--Livni--Moran stable-selection theorem

**Source identity.** Mark Bun, Roi Livni, and Shay Moran, *An Equivalence Between Private Classification and Online Prediction*, arXiv:2003.00563v3, Section 5.2, Theorem 17, source label `thm:selection`. The checked v3 source archive has SHA-256
`8c023b35df7296a311ce59c194857db5701f924db7fc4abf4a63af9aa7eb189c`, and its `privatelittlestone.tex` has SHA-256
`4b4cf5c00ee876ed6abbc37e5fce08f63effbfa68c4ceb4f50f645872a555882`.
The source puts all theorem-style environments, including theorem, lemma, corollary, proposition, observation, and definition, on one shared theorem counter; `thm:selection` is the seventeenth noncommented theorem-style environment. It occurs in the second subsection, "Construction of a Private Learner," of Section 5, hence Section 5.2.

**Restated statement in current notation.** Let \(\mathcal F\subseteq\{-1,+1\}^X\), let \(D\) be realizable by \(\mathcal F\), let \(m\geq1\), let \(\eta\in(0,1]\), and let
\[
G:(X\times\{-1,+1\})^m\rightsquigarrow\{-1,+1\}^X
\]
be a randomized map. Suppose there is an arbitrary hypothesis \(h\in\{-1,+1\}^X\), not necessarily in \(\mathcal F\), such that
\[
\Pr_{S\sim D^m,G}[G(S)=h]\geq\eta,
\qquad
\operatorname{loss}_D(h)\leq\frac{\alpha}{2}.
\]
For \(\alpha,\beta,\varepsilon,\delta\in(0,1)\), Theorem 17 constructs an algorithm
\[
M_{G,m,\eta,\alpha,\beta,\varepsilon,\delta}:
(X\times\{-1,+1\})^n\rightsquigarrow\{-1,+1\}^X
\]
which is \((\varepsilon,\delta)\)-DP and satisfies
\[
\Pr_{S\sim D^n,M}
\bigl[\operatorname{loss}_D(M(S))>\alpha\bigr]
\leq\beta.
\]
Its sample size has the two-term form
\[
n\leq C_{\mathrm{BLM}}
\left[
\frac{m}{\eta\varepsilon}
\log\!\left(\frac1{\eta\beta\delta}\right)
+
\frac1{\alpha\varepsilon}
\log\!\left(\frac1{\eta\beta}\right)
\right]
\tag{BLM-step-001}
\]
for one universal numerical constant \(C_{\mathrm{BLM}}>0\). The source writes the right-hand side with \(O(\cdot)\). Here \(C_{\mathrm{BLM}}\) is chosen once to dominate the absolute constants in the stable-histogram and generic-private-learner subroutines and their integer choices. In the present application \(\beta_0=1/8\), so both displayed logarithms are at least \(\log 8\); consequently any additive unit costs from integer rounding are absorbed into the same universal multiplicative constant without introducing a new term or parameter dependence.

The source construction is explicit: it partitions the input into \(k\) batches of size \(m\), applies the fixed map \(G\) to each batch, runs a stable histogram on the resulting hypotheses, and runs a generic private learner on a fresh labeled subsample using the histogram's finite list. Thus the algorithm depends on \(G,m,\eta,\alpha,\beta,\varepsilon,\delta\), but not on \(D\) or on the witness \(h\). The witness is used only in the utility proof. The output range in the theorem statement is the full \(\{-1,+1\}^X\).

**Source privacy convention.** Immediately before the theorem, the source defines \((\varepsilon,\delta)\)-indistinguishability by both inequalities and defines privacy for fixed-length samples that disagree in one example. This is symmetric one-record replacement adjacency. If the branch's "at most one record" relation also includes identical samples, the identical-sample case is automatic.

**Instantiated objects.** In this step,
\[
\mathcal F=C^{\pm},\quad
D=Q^{\pm},\quad
G=G_C^{\pm},\quad
m=m_C,\quad
\eta=q^{-a},
\]
\[
\alpha=\alpha_0,\quad
\beta=\beta_0,\quad
\varepsilon=\varepsilon_0,\quad
\delta=\delta_a(q,L)=e^{-T_a(q,L)}.
\]

**Hypothesis discharge.** Realizability, risk equality, atom equality, iid-law transport, and adjacency compatibility are proved by Lemma~\(\ref{lem:step-001-binary-recoding}\). The fixed producer, its integer sample size, and the frequent accurate atom are supplied by Assumption~\(\ref{assump:polynomial-global-stability}\) and checked in Lemma~\(\ref{lem:step-001-blm-admissibility}\). The public parameter ranges and the endpoint \(\eta=1\) when \(q=1\) are also checked there. The transported measurable structure and the setting's explicit measurability convention make singleton-atom events, histogram equality events, and DP output events legal.

**Conclusion used.** Only the arbitrary-output accurate-learner conclusion, the symmetric replacement-DP conclusion, the fact that the displayed construction is independent of \(Q\), and the two terms in `(BLM-step-001)` are used.

**Known non-outputs.** The citation does not prove Assumption~\(\ref{assump:polynomial-global-stability}\), properness, computational efficiency, `(SC)`, `(LD)`, `(AS)`, `(PN)`, or that the final output equals the frequent atom. None of these is attributed to the citation here.

### Local results used in the assembly

- Under the basic measurable binary setup of `setting.md`, Lemma~\(\ref{lem:step-001-binary-recoding}\) gives exact, zero-residual transport of realizability, risk, iid law, the atom event, measurability, and replacement adjacency.
- Under Assumption~\(\ref{assump:polynomial-global-stability}\) and Lemma~\(\ref{lem:step-001-binary-recoding}\), Lemma~\(\ref{lem:step-001-blm-admissibility}\) gives the complete source-hypothesis and parameter discharge, including \(q=1\).
- Under Assumption~\(\ref{assump:polynomial-global-stability}\), the two preceding lemmas, and the checked BLM theorem, Proposition~\(\ref{prop:step-001-uniform-blm}\) gives one source-label learner kernel, uniform over all realizable distributions, together with `(BLM-step-001)`.
- Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemma~\(\ref{lem:step-001-binary-recoding}\), and Proposition~\(\ref{prop:step-001-uniform-blm}\), Proposition~\(\ref{prop:step-001-binary-private-learner}\) decodes that learner and proves the exact branch-convention target conclusion.

## Local Derivation

### unit_001: lemma

**Lemma (Exact measurable binary recoding).** \(\label{lem:step-001-binary-recoding}\)
Under the basic measurable binary setup in `setting.md`, let \(r\geq1\), let \(C\subseteq\mathcal H_X\), let \(Q\) be any distribution on \(Z_X=X\times\{0,1\}\), let \(h\in\mathcal H_X\), and let \(G:Z_X^r\rightsquigarrow\mathcal H_X\) be a randomized kernel. Then the displayed bimeasurable pointwise bijections between the branch and source label/hypothesis spaces preserve realizability of \(Q\) by \(C\), population zero-one risk, iid product laws, exact output-atom probabilities, and ordered replacement adjacency in both directions.

**Proof / justification.** Define
\[
\lambda(0)=-1,\qquad \lambda(1)=+1,
\qquad \lambda^{-1}(t)=\frac{t+1}{2},
\]
and
\[
\Phi_Z(x,y)=(x,\lambda(y)),
\qquad
\Phi_H(h)(x)=\lambda(h(x)).
\]
Both maps are pointwise bijections. Let \(\Sigma_X\) denote the branch output sigma-algebra on \(\mathcal H_X\). Equip \(\mathcal H_X^{\pm}=\{-1,+1\}^X\) with the transported sigma-algebra
\[
\Sigma_X^{\pm}=\{\Phi_H(E):E\in\Sigma_X\}.
\]
Because \(\Phi_H\) is a bijection, \(\Sigma_X^{\pm}\) is a sigma-algebra and \(\Phi_H\) and \(\Phi_H^{-1}\) are measurable. In particular, measurable singleton hypotheses remain measurable. For labeled records, use the finite discrete label sigma-algebras and the corresponding recordwise transport. The extra equality and histogram events invoked by the cited theorem are precisely among the events declared measurable in `setting.md`. This is the proof's measurability boundary; no claim is made for a different output measurable structure in which those events are not measurable.

Set
\[
Q^{\pm}=(\Phi_Z)_\# Q,
\qquad
G^{\pm}(S^{\pm})
=\Phi_H\!\left(G\bigl((\Phi_Z^{-1})^{\otimes r}(S^{\pm})\bigr)\right).
\tag{1}
\]
The transported measurable structures make \(G^{\pm}\) a kernel. If \(Q\) is realizable by \(c\in C\), then for \(Q^{\pm}\)-almost every \((x,t)\),
\[
t=\lambda(c(x))=\Phi_H(c)(x),
\]
so \(Q^{\pm}\) is realizable by \(\Phi_H(c)\in C^{\pm}:=\Phi_H(C)\).

For every \(h\in\mathcal H_X\), pointwise bijectivity gives
\[
\begin{aligned}
\operatorname{loss}_{Q^{\pm}}(\Phi_H(h))
&=\Pr_{(x,t)\sim Q^{\pm}}[\Phi_H(h)(x)\neq t]\\
&=\Pr_{(x,y)\sim Q}[\lambda(h(x))\neq\lambda(y)]\\
&=\Pr_{(x,y)\sim Q}[h(x)\neq y]
=R_Q(h).
\end{aligned}
\tag{2}
\]
The recordwise map also gives the exact product-law identity
\[
(Q^{\pm})^r=(\Phi_Z^{\otimes r})_\# Q^r.
\tag{3}
\]
Combining (1), (3), and bijectivity of \(\Phi_H\), including all internal randomness of \(G\), yields
\[
\Pr_{S^{\pm}\sim(Q^{\pm})^r,G^{\pm}}
[G^{\pm}(S^{\pm})=\Phi_H(h)]
=
\Pr_{S\sim Q^r,G}[G(S)=h].
\tag{4}
\]

Finally, \(\Phi_Z\) is a bijection on individual records. Hence for ordered samples \(S,S'\) of the same length,
\[
\#\{i:S_i\neq S_i'\}
=
\#\{i:\Phi_Z(S_i)\neq\Phi_Z(S_i')\}.
\tag{5}
\]
Thus replacement of an instance, a label, or both within one record is carried to exactly one source-record replacement, and conversely. Equations (2)--(5) prove every asserted zero-residual correspondence. \(\square\)

### unit_002: lemma

**Lemma (Admissibility of the BLM v3 instantiation).** \(\label{lem:step-001-blm-admissibility}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\) and Lemma~\(\ref{lem:step-001-binary-recoding}\), fix a nonempty finite \(C\subseteq\{0,1\}^X\), set \(q=q(C)\), \(L=\log|C|\), and fix \(\varepsilon_0\in(0,1)\). With
\[
\eta_C=q^{-a},\qquad
\delta_C=\delta_a(q,L)=e^{-T_a(q,L)},
\]
the recoded class \(C^{\pm}\), fixed producer \(G_C^{\pm}\), and, for every realizable \(Q\), recoded witness \(h_{C,Q}^{\pm}\) satisfy all hypotheses of BLM Theorem 17 at
\[
(m,\eta,\alpha,\beta,\varepsilon,\delta)
=(m_C,\eta_C,\alpha_0,\beta_0,\varepsilon_0,\delta_C).
\]
If \(q=1\), then \(m_C=1\) and \(\eta_C=1\), and the same application remains admissible.

**Proof / justification.** Assumption~\(\ref{assump:polynomial-global-stability}\) supplies one integer \(m_C\) and one randomized kernel \(G_C\), both fixed before \(Q\) is chosen, such that
\[
1\leq m_C\leq q^a.
\tag{6}
\]
For every \(Q\) realizable by \(C\), it supplies an arbitrary \(h_{C,Q}\in\mathcal H_X\) with
\[
R_Q(h_{C,Q})\leq\frac{\alpha_0}{2},
\qquad
\Pr_{S\sim Q^{m_C},G_C}[G_C(S)=h_{C,Q}]
\geq q^{-a}=\eta_C.
\tag{7}
\]
Apply the constructions of Lemma~\(\ref{lem:step-001-binary-recoding}\) with \(r=m_C\). Equations (2) and (4) turn (7) into
\[
\operatorname{loss}_{Q^{\pm}}(h_{C,Q}^{\pm})
\leq\frac{\alpha_0}{2},
\qquad
\Pr[G_C^{\pm}((Q^{\pm})^{m_C})=h_{C,Q}^{\pm}]
\geq\eta_C.
\tag{8}
\]
The same lemma proves that \(Q^{\pm}\) is realizable by \(C^{\pm}\). The source theorem permits the witness and the producer output to be arbitrary elements of \(\{-1,+1\}^X\), so neither is required to lie in \(C^{\pm}\).

Since \(q\geq1\) and \(a\geq1\), \(0<\eta_C\leq1\). The setting gives \(\alpha_0,\beta_0,\varepsilon_0\in(0,1)\). Also \(q^b\geq1\) and \(u(L)\geq1\), so \(T_a(q,L)\geq2\) and
\[
0<\delta_C=e^{-T_a(q,L)}\leq e^{-2}<1.
\tag{9}
\]
This is only the range check needed for the citation; no privacy-schedule identity or asymptotic conclusion is proved here.

At \(q=1\), (6) forces \(1\leq m_C\leq1\), hence \(m_C=1\), while \(\eta_C=1^{-a}=1\). The source statement and construction allow \(\eta=1\): the frequency premise then says the witness is output with probability one, the histogram accuracy parameter is \(1/8\), and all denominators and logarithms remain legal because \(\beta_0,\delta_C\in(0,1)\). Thus no \(q>1\) exclusion is introduced. \(\square\)

### unit_003: proposition

**Proposition (One uniform BLM learner from a fixed producer).** \(\label{prop:step-001-uniform-blm}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemmas~\(\ref{lem:step-001-binary-recoding}\) and \(\ref{lem:step-001-blm-admissibility}\), and Bun--Livni--Moran Theorem 17 as restated in `(BLM-step-001)`, fix a nonempty finite \(C\subseteq\{0,1\}^X\), set \(q=q(C)\), \(L=\log|C|\), and fix \(\varepsilon_0\in(0,1)\). Then there exist one integer \(n_C\), one source-label learner kernel
\[
A_C^{\pm}:(X\times\{-1,+1\})^{n_C}
\rightsquigarrow\{-1,+1\}^X,
\]
and one universal numerical constant \(C_{\mathrm{BLM}}\), all independent of the realizable distribution \(Q\), such that for every \(Q\) realizable by \(C\):
\[
\Pr_{S^{\pm}\sim(Q^{\pm})^{n_C},A_C^{\pm}}
\left[\operatorname{loss}_{Q^{\pm}}(A_C^{\pm}(S^{\pm}))
>\alpha_0\right]
\leq\beta_0,
\tag{10}
\]
\(A_C^{\pm}\) is \((\varepsilon_0,\delta_C)\)-DP under source replacement adjacency, and
\[
n_C\leq C_{\mathrm{BLM}}
\left[
\frac{m_C}{q^{-a}\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0\delta_C}\right)
+
\frac1{\alpha_0\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0}\right)
\right].
\tag{11}
\]
The range of \(A_C^{\pm}\) is the full \(\{-1,+1\}^X\); no properness or computational claim is imposed.

**Proof / justification.** Fix \(C\), the recoded kernel \(G_C^{\pm}\), \(m_C\), and the public parameter tuple from Lemma~\(\ref{lem:step-001-blm-admissibility}\). Fix once and for all the stable-histogram and generic-private-learner implementations and the absolute numerical constants used in the proof of BLM Theorem 17. The source algorithm:

1. partitions its input into a public number of disjoint \(m_C\)-record blocks and one fresh selection subsample;
2. invokes only the fixed kernel \(G_C^{\pm}\) on those blocks;
3. invokes the stable histogram and generic private learner with the public tuple \((m_C,q^{-a},\alpha_0,\beta_0,\varepsilon_0,\delta_C)\).

Neither \(Q^{\pm}\) nor \(h_{C,Q}^{\pm}\) is an algorithm input or an implementation choice. Therefore this prescription defines one kernel \(A_C^{\pm}\) and one integer \(n_C\), independent of \(Q\). For each realizable \(Q\), Lemma~\(\ref{lem:step-001-blm-admissibility}\) supplies a witness \(h_{C,Q}^{\pm}\) satisfying the theorem premise for that same fixed kernel. Applying the theorem's utility analysis separately to each \(Q\) proves (10) for every realizable \(Q\). This is exactly the distribution-free quantifier order
\[
\exists A_C^{\pm}\ \forall Q\text{ realizable by }C,
\]
not a family \(A_{C,Q}^{\pm}\).

The source privacy proof is distribution-independent and applies to every fixed-length adjacent pair, whether or not either sample is drawn from a realizable distribution. Its symmetric indistinguishability definition gives both DP inequalities. Hence the same fixed \(A_C^{\pm}\) is \((\varepsilon_0,\delta_C)\)-DP.

Finally, instantiate `(BLM-step-001)` with the tuple in Lemma~\(\ref{lem:step-001-blm-admissibility}\). This gives (11). One universal \(C_{\mathrm{BLM}}\) suffices simultaneously for all \(X,C,Q,m_C,q,L\) and all admissible \(\varepsilon_0\): it records only the source's absolute numerical implementation constants. Both source terms are retained. In particular, this step does not replace \(m_C\) by \(q^a\), expand either logarithm, dominate the \(1/\alpha_0\) term, choose \(K_a\), or invoke any sequence asymptotic. The source theorem's codomain is \(\{-1,+1\}^X\), so arbitrary improper output is preserved. \(\square\)

### unit_004: proposition

**Proposition (Decoded arbitrary-output distribution-free private learner).** \(\label{prop:step-001-binary-private-learner}\)
Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemma~\(\ref{lem:step-001-binary-recoding}\), and Proposition~\(\ref{prop:step-001-uniform-blm}\), fix a nonempty finite \(C\subseteq\{0,1\}^X\), set \(q=q(C)\), \(L=\log|C|\), fix \(\varepsilon_0\in(0,1)\), and let \(A_C^{\pm}\) and \(n_C\) be furnished by Proposition~\(\ref{prop:step-001-uniform-blm}\). Define
\[
A_C(S)=\Phi_H^{-1}\!\left(
A_C^{\pm}(\Phi_Z^{\otimes n_C}(S))
\right),
\qquad S\in Z_X^{n_C}.
\tag{12}
\]
Then \(A_C:Z_X^{n_C}\rightsquigarrow\mathcal H_X\) is one arbitrary-output, distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learner for \(C\), is \((\varepsilon_0,\delta_C)\)-DP under the replacement-adjacency definition in `setting.md`, and its sample size satisfies (11).

**Proof / justification.** The maps in (12) are bimeasurable under the transported structures from Lemma~\(\ref{lem:step-001-binary-recoding}\), so (12) defines a kernel. It is fixed by \(C\), \(G_C\), and the public parameters and is independent of \(Q\).

Fix any \(Q\) realizable by \(C\). If \(S\sim Q^{n_C}\), then Lemma~\(\ref{lem:step-001-binary-recoding}\) gives
\(\Phi_Z^{\otimes n_C}(S)\sim(Q^{\pm})^{n_C}\). For every realized source output \(g^{\pm}\), equation (2) applied to \(\Phi_H^{-1}(g^{\pm})\) gives
\[
R_Q(\Phi_H^{-1}(g^{\pm}))
=\operatorname{loss}_{Q^{\pm}}(g^{\pm}).
\]
Therefore (10) implies
\[
\Pr_{S\sim Q^{n_C},A_C}[R_Q(A_C(S))>\alpha_0]
\leq\beta_0.
\tag{13}
\]
Because the same \(A_C\) satisfies (13) for every realizable \(Q\), it is distribution-free realizable PAC in exactly the setting's sense. The probability in (13) includes both sample and internal learner randomness.

For privacy, let \(S,S'\in Z_X^{n_C}\) be replacement-adjacent and let \(E\) be a measurable event in \(\mathcal H_X\). Lemma~\(\ref{lem:step-001-binary-recoding}\) shows that \(\Phi_Z^{\otimes n_C}(S)\) and \(\Phi_Z^{\otimes n_C}(S')\) are source-adjacent and that \(E^{\pm}:=\Phi_H(E)\) is measurable. Hence
\[
\begin{aligned}
\Pr[A_C(S)\in E]
&=\Pr[A_C^{\pm}(\Phi_Z^{\otimes n_C}(S))\in E^{\pm}]\\
&\leq e^{\varepsilon_0}
\Pr[A_C^{\pm}(\Phi_Z^{\otimes n_C}(S'))\in E^{\pm}]
+\delta_C\\
&=e^{\varepsilon_0}\Pr[A_C(S')\in E]+\delta_C.
\end{aligned}
\tag{14}
\]
Interchanging \(S,S'\) gives the reverse inequality. If the two branch samples are identical, both inequalities are immediate; otherwise (5) maps their unique replaced record exactly. Thus source fixed-length one-record replacement and branch "at most one record" replacement agree for every case, including replacement of the instance, label, or both.

The inverse map \(\Phi_H^{-1}\) in (12) is deterministic output postprocessing, and its image is all of \(\mathcal H_X\). Since \(A_C^{\pm}\) may output outside \(C^{\pm}\), \(A_C\) may output outside \(C\); this is the required arbitrary improper scope. No output representation or computational restriction has been added. Equation (11) is unchanged because recoding uses exactly the same \(n_C\) records. \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-001-binary-recoding}\) constructs a zero-residual, bimeasurable source/branch conjugacy and proves the exact risk, iid-law, atom, realizability, and adjacency identities. Under Assumption~\(\ref{assump:polynomial-global-stability}\), Lemma~\(\ref{lem:step-001-blm-admissibility}\) then discharges every hypothesis of arXiv:2003.00563v3, Section 5.2, Theorem 17 (`thm:selection`) with
\[
m=m_C,\qquad \eta=q^{-a},\qquad
\alpha=\alpha_0,\qquad \beta=\beta_0,\qquad
\varepsilon=\varepsilon_0,\qquad
\delta=\delta_a(q,L).
\]
It also proves that the boundary \(q=1\) gives the legal values \(m_C=1\) and \(\eta=1\).

Proposition~\(\ref{prop:step-001-uniform-blm}\) uses the source's displayed construction to fix one kernel, rather than a \(Q\)-indexed family, because the algorithm consumes only \(G_C^{\pm}\) and public parameters; the \(Q\)-dependent frequent atom is used only to verify utility. It produces the exact raw two-term bound
\[
n_C\leq C_{\mathrm{BLM}}
\left[
\frac{m_C}{q^{-a}\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0\delta_a(q,L)}\right)
+
\frac1{\alpha_0\varepsilon_0}
\log\!\left(\frac1{q^{-a}\beta_0}\right)
\right],
\tag{15}
\]
where \(C_{\mathrm{BLM}}\) is universal. No term in (15) has been expanded, dominated, absorbed, or assigned to a hidden class-dependent constant.

Finally, Proposition~\(\ref{prop:step-001-binary-private-learner}\) decodes the source output, proves the branch PAC statement uniformly for every realizable \(Q\), and proves both replacement-DP inequalities for every measurable output event. Its output remains an arbitrary member of \(\mathcal H_X\). This is exactly the `step_001` intended claim and output target. Terms and asymptotic conclusions reserved for `step_002`--`step_006` are not proved here.

## Explicit Rate Audit

- Exposed variables: \(a,q,L,m_C,\eta=q^{-a},\alpha_0,\beta_0,\varepsilon_0,\delta_a(q,L),T_a(q,L),n_C\), and \(C_{\mathrm{BLM}}\).
- Hidden constants may depend on: only the absolute numerical constants in the cited stable-histogram and generic-private-learner construction. These are collected into the single universal \(C_{\mathrm{BLM}}\).
- Hidden constants may not depend on: \(X,C,Q,q,L,|C|,m_C,a,\eta,\alpha_0,\beta_0,\varepsilon_0,\delta_a\), the sequence index, or any hypothesis representation.
- Fixed quantities: for one application, \(C\), its fixed producer \(G_C\), the setting's zero-one loss and replacement-adjacency conventions, and the public tuple \((\alpha_0,\beta_0,\varepsilon_0,\delta_a(q,L))\).
- Probability mode: PAC high probability jointly over iid data and all algorithmic randomness, with failure probability at most \(\beta_0\), uniformly over every realizable \(Q\). DP is a deterministic pointwise pair of kernel inequalities for every adjacent input pair and every measurable output event.
- Horizon mode: fixed per-class sample size \(n_C\); no iterative, all-time, stopping-time, or sequence-asymptotic claim.
- Norm mode: population zero-one risk, transported by exact equality under the label bijection.
- Admissibility conditions and auxiliary tolerances: \(m_C\geq1\), \(\eta\in(0,1]\), and \(\alpha_0,\beta_0,\varepsilon_0,\delta_a\in(0,1)\). At \(q=1\), \(m_C=1\) and \(\eta=1\). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. Both BLM terms are retained. The only constant collection converts the source's absolute \(O(\cdot)\) constants and integer choices into one universal \(C_{\mathrm{BLM}}\); it does not remove a parameter-dependent term.
- Probability conversion: exact pushforward of iid samples and exact equality of risk events; no union bound or confidence conversion is added by the wrapper.
- Contribution to any Rate Specialization Bridge: supplies the raw bound (15) to `step_002`. It does not establish `(SC)` or choose \(K_a\).
- Baseline-reduction check: recoding and decoding return exactly the original \(\{0,1\}\) risk, output scope, iid law, and replacement adjacency. At \(q=1\), the source remains active with \(m_C=1\) and \(\eta=1\); no conservative loss or excluded boundary is introduced.

## Blockers

None.

## Notation And Assumption Notes

- \(\lambda,\Phi_Z,\Phi_H,\Sigma_X^{\pm},Q^{\pm},C^{\pm},G_C^{\pm},h_{C,Q}^{\pm}\), and \(A_C^{\pm}\) are `proof-local` recoding objects. Each is defined explicitly from a setting object or by measurable transport. They are not exported to the public theorem interface.
- \(\eta_C=q^{-a}\) and \(\delta_C=\delta_a(q,L)\) are `proof-local` abbreviations for setting-defined expressions. They introduce no new assumption or hidden parameter.
- \(A_C\), \(n_C\), the two-term inequality (15), and the universal constant \(C_{\mathrm{BLM}}\) are `public-facing` outputs of this step because `step_002` and final assembly consume them. The recoding details remain proof-local.
- Constant provenance: \(C_{\mathrm{BLM}}\) is inherited from the checked cited theorem's absolute numerical constants and is universal. No other new constant, threshold, radius, rate, or margin is introduced.
- Assumption provenance: the only nonstandard primitive condition is Assumption~\(\ref{assump:polynomial-global-stability}\). The accurate atom is its per-\(Q\) conclusion. The private learner, its utility, its privacy, and its sample bound are derived in this step; none is assumed. There is no generated event, recurrence, boundedness condition, stability trajectory, or invariant.
- Measurability boundary: the proof uses the output sigma-algebra already present in `setting.md` and transports it through \(\Phi_H\). Singleton atoms, histogram equality events, and DP events are used only under the setting's explicit declaration that they are measurable. The proof does not claim a wrapper for an alternative nonmeasurable equality structure.
- Distribution-free quantifier note: \(h_{C,Q}\) may depend on \(Q\), but \(m_C\), \(G_C\), \(A_C^{\pm}\), \(A_C\), and \(n_C\) do not. The source construction, not a choice of witness, fixes the learner.
- `global_proof.md` was read only with its paired `global_proof_review.md`, whose `Global-Proof Review Status = ACCEPTED`. Its G1 discussion suggested separating recoding, source admissibility, the uniform-kernel wrapper, and decoding. Those suggestions were used only to plan the local units. Every mathematical statement above was independently derived from `setting.md`, Assumption~\(\ref{assump:polynomial-global-stability}\), and the checked primary source; `global_proof.md` was not used as evidence, a cited result, an assumption source, or authority to change the target claim.
