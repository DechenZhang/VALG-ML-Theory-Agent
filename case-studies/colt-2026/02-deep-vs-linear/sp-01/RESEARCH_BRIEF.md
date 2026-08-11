# RESEARCH_BRIEF.md

## Source

- Parent title: Invited Open Problem: Is the Power of Deep Learning over Linear Models Inherently Distribution Dependent?
- Subproblem ID: subproblem_001 — Open Question 1 (SGD Learning vs. Dimension Complexity)
- Abstract URL: https://proceedings.mlr.press/v336/feldman26a.html
- PDF URL: https://raw.githubusercontent.com/mlresearch/v336/main/assets/feldman26a/feldman26a.pdf

## Parent Context

Let \(\mathcal X=\{\pm1\}^n\) and \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\). The **dimension complexity** \(\operatorname{dc}(\mathcal H)\) is the smallest \(d\) for which there exists a feature map \(\varphi:\mathcal X\to\mathbb R^d\) such that

\[
\forall h\in\mathcal H\;\exists w\in\mathbb R^d\;\forall x\in\mathcal X,
\qquad h(x)=\operatorname{sign}(\langle w,\varphi(x)\rangle).
\]

The learner in this subproblem is a fully connected ReLU network of depth \(L\), widths \(n_1,\ldots,n_{L-1}\), \(n_0=n\), and \(n_L=1\). Its number of parameters and output are

\[
S:=\sum_{i=1}^{L}n_i n_{i-1},\qquad
f_\theta(x)=\theta_L\sigma(\theta_{L-1}\sigma(\cdots\sigma(\theta_1x)\cdots)),
\]

where \(\sigma(z)=\max(0,z)\) acts elementwise. Every weight of \(\theta^{(0)}\) is initialized independently from a Gaussian, with the entries of \(\theta_i^{(0)}\) having variance \(1/n_{i-1}\). Given an input distribution \(\mathcal D\), target \(h^\star\in\{\pm1\}^{\mathcal X}\), stepsize \(\eta\), and \(T\) steps, at each \(t=0,\ldots,T-1\) SGD draws \(x^{(t)}\sim\mathcal D\) and updates

\[
\theta^{(t+1)}\leftarrow\theta^{(t)}-
\eta\nabla_\theta\ell\!\left(h^\star(x^{(t)})f_{\theta^{(t)}}(x^{(t)})\right),
\qquad \ell(z):=\log(1+e^{-z}).
\]

It returns

\[
\widehat h(x)=\operatorname{sign}\!\left(\sum_{t=\lceil T/2\rceil}^{T}f_{\theta^{(t)}}(x)\right),
\]

and its classification error is

\[
\mathcal L_{\mathcal D,h^\star}(\widehat h)
:=\Pr_{x\sim\mathcal D}[\widehat h(x)h^\star(x)<0].
\]

The motivation is that known large separations between neural networks and linear or kernel models use a specially chosen input distribution. The question asks whether such a separation can persist when one fixed, standard SGD procedure succeeds for every input distribution and every target in the class.

## Exact Subproblem

**Open Question 1 (SGD Learning vs. Dimension Complexity).** Is there a constant \(C\) such that for all \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\) over \(\mathcal X=\{\pm1\}^n\), and \(\varepsilon<1/4\), if there exists a fully connected ReLU network with \(S\) parameters in total, stepsize \(\eta\), and number of steps \(T\), such that for every input distribution \(\mathcal D\) and every \(h^\star\in\mathcal H\), SGD on that architecture yields

\[
\mathbb E\,\mathcal L_{\mathcal D,h^\star}(\widehat h)\le\varepsilon,
\]

where the expectation is over the initialization and SGD sampling, then

\[
\operatorname{dc}(\mathcal H)\le C\,TS.
\]

## Evaluation Target

Ask `ml-theory-research-agent` to prove or disprove the stated universal implication. A disproof must give a family satisfying the full distribution-independent SGD premise while making \(\operatorname{dc}(\mathcal H)/(TS)\) unbounded. When exact resolution is unavailable, a nontrivial special case, an explicit conditional theorem, one of the source-endorsed relaxations below, or a precise formal obstruction may count as partial progress.

## Source-Endorsed Relaxations And Variants

The paper also identifies the following relaxations and generalizations. Positive results for weakened targets and results only for altered learning protocols do not by themselves resolve the exact deterministic linear implication above.

- **Polynomial instead of linear:** An upper bound \(\operatorname{dc}(\mathcal H)=\operatorname{poly}(S,T)\) is partial progress. Conversely, an exact-premise counterexample ruling out every polynomial bound is full negative progress because it also rules out \(C\,TS\).
- **Confident dimension complexity:** For \(\delta>0\), \(\operatorname{dc}^{\delta}(\mathcal H)\) is the smallest \(d\) for which there is a distribution \(\mathcal P\) over embeddings \(\varphi:\mathcal X\to\mathbb R^d\) such that, for every distribution \(\mathcal D\) over \(\mathcal X\) and every \(h^\star\in\mathcal H\),
  \[
  \Pr_{\varphi\sim\mathcal P}\!\left[\inf_{w\in\mathbb R^d}
  \mathcal L_{\mathcal D,h^\star}(h_{w,\varphi})=0\right]\ge 1-\delta,
  \qquad h_{w,\varphi}(x):=\langle w,\varphi(x)\rangle.
  \]
  The paper asks the same question with \(\operatorname{dc}^{1/2}(\mathcal H)\) in place of \(\operatorname{dc}(\mathcal H)\); such an upper bound is partial progress relative to Open Question 1.
- **Probabilistic dimension complexity:** For \(\alpha>0\), \(\operatorname{dc}_{\alpha}(\mathcal H)\) is the smallest \(d\) for which there is a distribution \(\mathcal P\) over embeddings \(\varphi:\mathcal X\to\mathbb R^d\) such that, for every \(\mathcal D\) and every \(h^\star\in\mathcal H\),
  \[
  \mathbb E_{\varphi\sim\mathcal P}\!\left[\inf_{w\in\mathbb R^d}
  \mathcal L_{\mathcal D,h^\star}(h_{w,\varphi})\right]\le \alpha.
  \]
  For SGD learning to error \(\varepsilon\), the paper asks for an upper bound on \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\); this is also partial progress relative to the exact deterministic target.
- **Benign learning variants:** Other architectures, activation functions, loss functions, step-size schedules, and GD variants are source-endorsed directions when they avoid encoded computation. A result only for such a variant is partial unless it directly covers, or is rigorously transferred to, the exact ReLU/SGD protocol above.

## Required Scope

- Model: Binary hypothesis classes \(\mathcal H\subseteq\{\pm1\}^{\mathcal X}\) on \(\mathcal X=\{\pm1\}^n\), deterministic dimension complexity \(\operatorname{dc}(\mathcal H)\), and the fully connected ReLU architecture defined above.
- Data assumptions: The same architecture, stepsize, and step count must attain the stated expected error for every input distribution \(\mathcal D\) and every \(h^\star\in\mathcal H\); samples are drawn from \(\mathcal D\), and \(\varepsilon<1/4\).
- Algorithm or protocol: The standard Gaussian initialization, logistic loss, SGD update, and time-aggregated predictor defined above.
- Regime: Arbitrary \(n\), \(\mathcal H\), and \(\mathcal D\); explicit parameters \(S,T,\eta,\varepsilon\). The exact target has a universal constant and no hidden dependence beyond \(TS\).
- Desired theorem type: A proof of the implication \(\operatorname{dc}(\mathcal H)\le C\,TS\), or a counterexample to it under all of its quantifiers. Source-endorsed relaxations and variant-only results must be labeled partial unless they rigorously settle the exact protocol.

## Out Of Scope

- Open Question 2 about \((m,\tau)\)-SQ learning is a sibling subproblem and must not become the primary target.
- Separations that work only for one specially selected input distribution do not address the distribution-independent premise.
- ERM-only or sample-complexity-only separations do not address the stated network-size/training-time comparison.
- Arbitrary specialized architectures, activations, or initializations that encode or simulate a desired algorithm are excluded from full resolution; the paper explicitly identifies these as “cheating.”
- Replacing \(\operatorname{dc}(\mathcal H)\) by \(\operatorname{dc}^{1/2}(\mathcal H)\) or \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\), or proving only a polynomial upper bound, is not a full solution unless the exact target is also recovered.

## Constraints And Forbidden Shortcuts

- Do not assume the main conclusion.
- Do not hide generated events, invariants, recurrences, stability, boundedness, or membership facts as primitive assumptions unless the target is explicitly conditional.
- Preserve the requested dependence \(C\,TS\), the universal quantification over \(\mathcal D\) and \(h^\star\), and the expectation over both initialization and SGD sampling.
- Do not silently replace the stated SGD procedure by population gradient descent, an approximate gradient oracle, ERM, a kernel method, or a distribution-specific algorithm.
- Do not use a distribution-dependent example as a counterexample to the distribution-independent implication.
- Any departure from the specified architecture, initialization, loss, predictor, or deterministic dimension complexity must be explicit and justified as benign rather than encoded computation. A variant-only result is partial unless it rigorously specializes or transfers to the exact protocol.

## Success Criteria

- **Full progress:** A complete proof of the stated implication with a universal \(C\), or a valid counterexample family satisfying the exact ReLU/SGD learning premise for every \(\mathcal D,h^\star\) and violating every universal \(C\,TS\) bound. A result for a broader or variant protocol counts as full only with a rigorous implication for the exact protocol; an exact-premise result ruling out every polynomial bound is a full counterexample.
- **Partial progress:** A correct nontrivial special case, explicit conditional theorem, polynomial upper bound, bound on \(\operatorname{dc}^{1/2}(\mathcal H)\) or \(\operatorname{dc}_{C\varepsilon}(\mathcal H)\), benign variant-only result, or quantitatively meaningful lower bound that keeps all changed assumptions and conclusions visible.
- **Formal obstruction:** A rigorous reduction, counterexample to a necessary intermediate claim, or theorem-level diagnosis that pinpoints why the exact implication cannot currently be closed without assuming its conclusion.
- **Invalid acceptance:** Any argument based only on a fixed input distribution, an unreviewed architecture/init “cheat,” a variant-only result presented as resolving the exact protocol without a rigorous transfer, ERM rather than the specified SGD, a silently weakened complexity notion, hidden generated assumptions, or omitted dependence on \(S\) or \(T\).

A successful run must produce either an accepted result meeting one of the first three categories or a precise proof-failure diagnosis tied to the exact subproblem.
