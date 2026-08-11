# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?
- Subproblem ID: subproblem_002 — Open Question 2 (SQ Learning vs. Dimension Complexity)
- Abstract URL: https://proceedings.mlr.press/v336/feldman26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/feldman26a/feldman26a.pdf

## Parent Context

Let \(\mathcal X\) be any domain and \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\). The **dimension complexity** \(\operatorname{dc}(\mathcal H)\) is the smallest \(d\) for which there exists a feature map \(\varphi:\mathcal X\to\mathbb R^d\) satisfying

\[
\forall h\in\mathcal H\;\exists w\in\mathbb R^d\;\forall x\in\mathcal X,
\qquad h(x)=\operatorname{sign}(\langle w,\varphi(x)\rangle).
\]

For an input distribution \(\mathcal D\), target \(h^\star\in\mathcal H\), and predictor \(\widehat h:\mathcal X\to\{\pm1\}\), define

\[
\mathcal L_{\mathcal D,h^\star}(\widehat h)
:=\Pr_{x\sim\mathcal D}[\widehat h(x)h^\star(x)<0].
\]

A \(\tau\)-statistical query (SQ) oracle for \(\mathcal D\) and \(h^\star\), on a query \(q:\mathcal X\times\{\pm1\}\to[-1,1]\), returns an arbitrary value \(v\) such that

\[
\left|v-\mathbb E_{x\sim\mathcal D}q(x,h^\star(x))\right|\le\tau.
\]

A randomized \((m,\tau)\)-SQ algorithm makes a sequence of \(m\) queries to the \(\tau\)-SQ oracle; each query may depend on all previous responses and may be selected at random. The algorithm then returns \(\widehat h\).

The question is distribution-independent: one SQ algorithm must meet the guarantee for every input distribution and every target in \(\mathcal H\). This is stronger than being efficiently SQ-learnable separately under each fixed distribution. The known converse direction only gives SQ learnability from low dimension complexity with polynomial dependence that also involves \(n=\log|\mathcal X|\); the open question below asks for the forward dimension bound without domain-size dependence.

## Exact Subproblem

**Open Question 2 (SQ Learning vs. Dimension Complexity).** Is there a constant \(C\) such that for every class \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\), over any domain \(\mathcal X\), and any \(\varepsilon<1/4\), if there exists an \((m,\tau)\)-SQ algorithm such that for every input distribution \(\mathcal D\) and every \(h^\star\in\mathcal H\), the algorithm returns a predictor \(\widehat h\) with

\[
\mathbb E\,\mathcal L_{\mathcal D,h^\star}(\widehat h)\le\varepsilon,
\]

where the expectation is over the randomness of the algorithm, then

\[
\operatorname{dc}(\mathcal H)\le C\,\frac{m}{\tau^2}.
\]

## Evaluation Target

Ask `ml-theory-research-agent` to prove or disprove the stated universal implication. A disproof must exhibit a family that is distribution-independently \((m,\tau)\)-SQ learnable while making \(\operatorname{dc}(\mathcal H)/(m/\tau^2)\) unbounded. When exact resolution is unavailable, a nontrivial special case, an explicit conditional theorem, one of the source-endorsed relaxations below, or a precise formal obstruction may count as partial progress.

## Source-Endorsed Relaxations And Variants

The paper also identifies the following relaxations and generalizations. Positive results for weakened targets do not by themselves resolve the exact deterministic linear implication above.

- **Polynomial instead of linear:** An upper bound \(\operatorname{dc}(\mathcal H)=\operatorname{poly}(m,1/\tau)\) is partial progress. Conversely, an exact-premise counterexample ruling out every polynomial bound is full negative progress because it also rules out \(C m/\tau^2\).
- **Dependence on the size of the domain:** With \(n=\log|\mathcal X|\), interpreted as the log size of the domain or the bit complexity of representing an element of \(\mathcal X\), the paper proposes the relaxed target
  \[
  \operatorname{dc}(\mathcal H)=\operatorname{poly}(m,1/\tau,n).
  \]
  Such a domain-dependent upper bound is partial progress relative to the exact domain-independent target.
- **Confident dimension complexity:** For \(\delta>0\), \(\operatorname{dc}^{\delta}(\mathcal H)\) is the smallest \(d\) for which there is a distribution \(\mathcal P\) over embeddings \(\varphi:\mathcal X\to\mathbb R^d\) such that, for every distribution \(\mathcal D\) over \(\mathcal X\) and every \(h^\star\in\mathcal H\),
  \[
  \Pr_{\varphi\sim\mathcal P}\!\left[\inf_{w\in\mathbb R^d}
  \mathcal L_{\mathcal D,h^\star}(h_{w,\varphi})=0\right]\ge 1-\delta,
  \qquad h_{w,\varphi}(x):=\langle w,\varphi(x)\rangle.
  \]
  The paper asks the same question with \(\operatorname{dc}^{1/2}(\mathcal H)\) in place of \(\operatorname{dc}(\mathcal H)\); such an upper bound is partial progress relative to Open Question 2.
- **Probabilistic dimension complexity:** For \(\alpha>0\), \(\operatorname{dc}_{\alpha}(\mathcal H)\) is the smallest \(d\) for which there is a distribution \(\mathcal P\) over embeddings \(\varphi:\mathcal X\to\mathbb R^d\) such that, for every \(\mathcal D\) and every \(h^\star\in\mathcal H\),
  \[
  \mathbb E_{\varphi\sim\mathcal P}\!\left[\inf_{w\in\mathbb R^d}
  \mathcal L_{\mathcal D,h^\star}(h_{w,\varphi})\right]\le \alpha.
  \]
  For SQ learning to error \(\varepsilon\), the paper asks for an upper bound on \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\); this is also partial progress relative to the exact deterministic target.

## Required Scope

- Model: Binary hypothesis classes \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\) over an arbitrary domain \(\mathcal X\), deterministic dimension complexity \(\operatorname{dc}(\mathcal H)\), and the standard adaptive randomized SQ model defined above.
- Data assumptions: The same SQ algorithm must achieve the stated expected error for every input distribution \(\mathcal D\) and every \(h^\star\in\mathcal H\), with \(\varepsilon<1/4\).
- Algorithm or protocol: At most \(m\) adaptive, possibly randomized queries of tolerance \(\tau\), with each oracle response allowed to be any value satisfying the tolerance condition, followed by a binary predictor.
- Regime: Arbitrary domains, including no finite-domain assumption in the exact statement. The exact target has a universal constant, dependence \(m/\tau^2\), and no dependence on \(|\mathcal X|\) or \(n=\log|\mathcal X|\).
- Desired theorem type: A proof of \(\operatorname{dc}(\mathcal H)\le C m/\tau^2\), or a counterexample to this implication under all of its quantifiers. Source-endorsed relaxations must be labeled partial unless they rigorously settle the exact deterministic, domain-independent target.

## Out Of Scope

- Open Question 1 about SGD on fully connected ReLU networks is a sibling subproblem and must not become the primary target.
- The converse direction—from a bound on \(\operatorname{dc}(\mathcal H)\) to an SQ learner—is known up to polynomial dependencies and does not resolve this target.
- Efficient SQ learning under each separately fixed distribution is not the distribution-independent premise.
- The paper's cited weak distribution-independent CSQ equivalence concerns a restricted query model; a CSQ-only result does not resolve the unrestricted SQ target unless it is rigorously transferred to the exact protocol.
- A domain-dependent or merely polynomial upper bound, or replacing \(\operatorname{dc}(\mathcal H)\) by \(\operatorname{dc}^{1/2}(\mathcal H)\) or \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\), is not a full solution unless the exact target is also recovered.

## Constraints And Forbidden Shortcuts

- Do not assume the main conclusion.
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.
- Preserve the requested dependence \(C m/\tau^2\), the universal quantification over \(\mathcal D\) and \(h^\star\), and the expectation over algorithmic randomness.
- Respect the adversarial tolerance semantics of the SQ oracle; do not assume exact expectations or a favorable oracle response unless the result is explicitly for a stronger oracle and labeled partial.
- Do not choose a different algorithm after seeing \(\mathcal D\), silently add dependence on \(|\mathcal X|\), or replace distribution-independent SQ learning by a fixed-distribution result.
- Do not silently replace deterministic exact dimension complexity by margin complexity, probabilistic dimension complexity, approximate representation, or another embedding notion.

## Success Criteria

- **Full progress:** A complete proof of the exact implication with a universal \(C\), or a counterexample family satisfying the full distribution-independent \((m,\tau)\)-SQ premise and violating every universal \(C m/\tau^2\) bound. An exact-premise result ruling out every polynomial bound is a full counterexample.
- **Partial progress:** A correct nontrivial special case, explicit conditional theorem, polynomial upper bound, domain-size-dependent bound, bound on \(\operatorname{dc}^{1/2}(\mathcal H)\) or \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\), or quantitatively meaningful lower bound, with all changed assumptions and conclusions made explicit.
- **Formal obstruction:** A rigorous reduction, counterexample to a necessary intermediate claim, or theorem-level diagnosis that precisely localizes the barrier to the exact implication.
- **Invalid acceptance:** A fixed-distribution learner, a proof only of the converse direction, a CSQ-only result presented as the full SQ theorem, exact-expectation access instead of tolerance-robust SQ access, silent domain-size dependence, a silently weakened complexity notion, or hidden generated assumptions.

A successful run must produce either an accepted result meeting one of the first three categories or a precise proof-failure diagnosis tied to the exact subproblem.
