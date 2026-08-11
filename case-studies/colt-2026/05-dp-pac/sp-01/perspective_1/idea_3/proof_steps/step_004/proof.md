# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 3

## Target Step Claim

- Intended claim: For every arbitrary mass vector \((\rho_i)\), prove \(\mathbb E W_{\mathrm{short}}\le128Q_{\oplus}/n+e^{-16}\), with \(\rho_i=0\) handled exactly and no all-factor union bound.
- Depends on: `step_001`.
- Assumptions used: Primitive: `assump:canonical-product`; exact quota definitions and integer fact \(q_i\ge1\).
- Technical challenge: Control arbitrarily many tiny-mass factors without balance and heavy-factor shortages without summing unweighted probabilities.
- Intended proof tool or cited result: Light/heavy mass split and binomial Chernoff lower tail.
- Output target: Weighted shortage certificate.
- Rate objective: Upper kernel/PAC objective: explicit \(Q_{\oplus}/n\), expectation mode for generated mass, fixed sample, exact risk weights; universal numerical constants.
- Binding row review status: `PENDING` in the accepted sketch; sketch-level acceptance is supplied by the separate accepted sketch review.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:canonical-product}: \(X=\bigsqcup_{i=1}^kX_i\) is a partition of the whole domain with finite \(k\ge1\). This supplies the finite whole-domain partition only; measurable-block and measurable-target legality are supplied by the accepted dependency conclusions below.
  - The setting fixes \(n\in\mathbb N\), the quotas \(q_i\), and \(Q_{\oplus}=\sum_iq_i\). The accepted sketch row records the deterministic integer fact \(q_i\ge1\) for every factor. This is a pre-sampling scalar fact, not a generated condition.
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` Lemma~\ref{lem:step-001-quotient-invariance} supplies, for every target restriction \(c_i\in C_i\), its quotient representative \(\bar c_i\in\bar C_i\) with \(c_i=\bar c_i\circ\kappa_i\).
  - The accepted `step_001` Lemma~\ref{lem:step-001-output-measurability} supplies that every quotient tuple \(\bar h\in\mathcal H^\oplus\) decodes to a \(\Sigma\)-measurable hypothesis \(h_{\bar h}\), with jointly measurable evaluation and the setting's finite-evaluation-cylinder decoder legality. Instantiating this conclusion with the tuple that is one on factor \(i\) and zero on all other factors yields \(X_i\in\Sigma\); instantiating it with the quotient target tuple yields a measurable target \(c\). Consequently \(\rho_i=D(X_i)\) and \(D_c^n\) are well-defined, and the finite whole-domain partition gives \(\sum_i\rho_i=1\).
  - The accepted `step_001` proof, certified by its accepted review, supplies Lemma~\ref{lem:step-001-logstar}, including \(s_i\ge2\), and the finite structural interface underlying the quota notation. No stochastic event or occupancy bound is imported from that dependency.
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `perspective_1/idea_3/proof_steps/step_001/proof.md`, SHA-256 `c215a54eec0eb3f25805abc504920793d7d81f97d138194e93083e9af7bbaf2a`.
  - `perspective_1/idea_3/proof_steps/step_001/review.md`, SHA-256 `baa65ecd2ba8a3660f46c4f33188b2bdad90ec3846c7d16b2b2675ee48044a82`, with status `ACCEPTED` for sketch attempt 1 and unit attempt 1.

The sample counts \(J_i\), the shortage indicators, and \(W_{\mathrm{short}}\) are generated objects. Their distribution and expectation are proved below rather than assumed. No balance, positive-mass, factor-count independence, or all-quotas-met condition is imposed.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:canonical-product} and accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, for every target \(c\), probability measure \(D\), and iid sample \(S\sim D_c^n\), each \(J_i\) has marginal law \(\operatorname{Bin}(n,\rho_i)\), every zero-mass factor contributes exactly zero to \(W_{\mathrm{short}}\), and finite linearity gives \(\mathbb E W_{\mathrm{short}}=\sum_i\rho_i\Pr(J_i<q_i)\). | Proves measurable sampling legality, the marginal occupancy law, exact zero-mass handling, integrability, and the expectation/finite-sum interchange. |
| `unit_002` | lemma | If \(J\sim\operatorname{Bin}(n,p)\), \(q\in\mathbb N\), \(q\ge1\), and \(np\ge128q\), then \(\Pr(J<q)\le\exp(-16129q/256)\le e^{-16}\). | Proves the heavy-factor tail with the complete Chernoff derivation and explicit numerical exponent from \(q\ge1\). |
| `unit_003` | proposition | Under Assumption~\ref{assump:canonical-product}, accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, the setting quota definitions with \(q_i\ge1\), and Lemmas~\ref{lem:step-004-binomial-accounting} and \ref{lem:step-004-heavy-shortage}, every arbitrary mass vector obeys \(\mathbb E W_{\mathrm{short}}\le128Q_{\oplus}/n+e^{-16}\); moreover, if \(k=1\) and \(n\ge q_1\), then \(W_{\mathrm{short}}=0\) pointwise. | Combines the legally defined light-mass budget and weighted heavy tails without a union bound, and preserves the exact one-factor baseline. |

Atomic step = no. The marginal expectation identity, the numerical binomial tail, and their weighted aggregation are independent audit obligations.

## Cited Result Applications

No external paper result is used. In particular, the binomial lower-tail estimate is proved directly in Lemma~\ref{lem:step-004-heavy-shortage}, including its exponential-moment argument and numerical specialization; it is not invoked as an unchecked standard theorem. The accepted global diagnostic is not proof evidence.

| Result | Restated statement and instantiated objects | Assumption discharge | Conclusion used |
| ------ | ------------------------------------------- | -------------------- | --------------- |
| Accepted dependency Lemma~\ref{lem:step-001-quotient-invariance} | Pullback \(\mathsf P_i(\bar h_i)=\bar h_i\circ\kappa_i\) is a bijection \(\bar C_i\to C_i\). Thus every target restriction \(c_i\) has a quotient representative \(\bar c_i\) satisfying \(c_i=\bar c_i\circ\kappa_i\). | The accepted dependency proves this from its permitted structural assumptions, and its matching review is `ACCEPTED`. | Identifies every global target \(c\) with the decoded quotient target tuple used in the measurable-decoder conclusion. |
| Accepted dependency Lemma~\ref{lem:step-001-output-measurability} | Every \(\bar h\in\mathcal H^\oplus\) decodes as \(h_{\bar h}(x)=\bar h_i(\kappa_i(x))\) on \(X_i\) to a \(\Sigma\)-measurable hypothesis; joint evaluation and finite-evaluation-cylinder decoding are measurable. For the tuple \(\bar b^{(i)}\) that is constantly one on factor \(i\) and constantly zero elsewhere, \(h_{\bar b^{(i)}}=\mathbf1_{X_i}\); for the quotient target tuple \(\bar c\), quotient invariance gives \(h_{\bar c}=c\). | The accepted dependency proves the decoder interface from its permitted structural assumptions, and its matching review is `ACCEPTED`; the two displayed tuples belong to the already-defined product output space. | Gives \(X_i\in\Sigma\), measurable \(c\), legal masses \(\rho_i=D(X_i)\), measurable block indicators and counts, and a well-defined labeled sample law \(D_c^n\). |
| Accepted dependency Lemma~\ref{lem:step-001-logstar} | In the current branch notation, the setting scalars satisfy \(s_i\ge2\) for every factor. | The accepted dependency proves this from Assumption~\ref{assump:vc-one-factors}; its matching review is `ACCEPTED`. | Supplies the accepted positive scalar interface behind the quota definitions. The present calculation uses only the binding row's exact consequence \(q_i\ge1\). |
| Lemma~\ref{lem:step-004-binomial-accounting} | For the setting counts, \(J_i\sim\operatorname{Bin}(n,\rho_i)\) marginally and \(\mathbb E W_{\mathrm{short}}=\sum_i\rho_i\Pr(J_i<q_i)\), with a zero-mass term equal to zero pointwise. | Assumption~\ref{assump:canonical-product} supplies the finite whole-domain partition; accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability} supply measurable targets, measurable blocks, and legal iid labeled sampling; and \(0\le W_{\mathrm{short}}\le1\). | Converts the generated weighted shortage into a finite sum of marginal probabilities. |
| Lemma~\ref{lem:step-004-heavy-shortage} | For a binomial count of mean at least \(128q\), where \(q\ge1\), the shortage probability is at most \(e^{-16}\). | The lemma proves the exponential-moment bound directly; a heavy factor satisfies its hypotheses by definition. | Controls each heavy marginal before risk weighting. |
| Proposition~\ref{prop:step-004-weighted-shortage} | The light/heavy split gives the exact target inequality and the pointwise zero-shortage conclusion for \(k=1\), \(n\ge q_1\). | Lemmas~\ref{lem:step-004-binomial-accounting} and \ref{lem:step-004-heavy-shortage}, the quota sum, and \(\sum_i\rho_i=1\) discharge all inputs. | Exact downstream weighted-shortage interface. |

## Local Derivation

### unit_001: lemma

**Lemma (Marginal occupancy and weighted expectation identity).** \(\label{lem:step-004-binomial-accounting}\)

Statement:
Under Assumption~\ref{assump:canonical-product} and accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, fix any \(n\in\mathbb N\), target \(c\in C\), probability measure \(D\) on \((X,\Sigma)\), and iid labeled sample \(S=((x_j,c(x_j)))_{j=1}^n\sim D_c^n\). With the setting definitions
\[
\rho_i=D(X_i),\qquad
J_i=\bigl|\{j:x_j\in X_i\}\bigr|,
\qquad
W_{\mathrm{short}}
=\sum_{i=1}^k\rho_i\mathbf 1\{J_i<q_i\},
\]
one has, for every \(i\),
\[
J_i\sim\operatorname{Bin}(n,\rho_i).
\tag{1}
\]
If \(\rho_i=0\), then \(\rho_i\mathbf 1\{J_i<q_i\}=0\) for every sample realization, and \(J_i=0\) almost surely. Furthermore, \(W_{\mathrm{short}}\) is integrable and
\[
\mathbb E W_{\mathrm{short}}
=\sum_{i=1}^k\rho_i\Pr(J_i<q_i).
\tag{2}
\]
Neither (1) nor (2) requires independence among the different factor counts.

Proof / justification:
For each factor \(i\), define \(\bar b^{(i)}\in\mathcal H^\oplus\) by
\[
\bar b^{(i)}_\ell(q):=\mathbf 1\{\ell=i\},
\qquad 1\le\ell\le k,\ q\in Q_\ell.
\]
The accepted dependency Lemma~\ref{lem:step-001-output-measurability} makes its decoded hypothesis measurable, while the whole-domain partition from Assumption~\ref{assump:canonical-product} gives
\[
h_{\bar b^{(i)}}=\mathbf 1_{X_i}.
\]
Therefore \(X_i\in\Sigma\). The accepted dependency Lemma~\ref{lem:step-001-quotient-invariance} gives quotient representatives \(\bar c_i\) of the restrictions of any target \(c\in C\); their tuple \(\bar c\) decodes exactly to \(c\). Lemma~\ref{lem:step-001-output-measurability} therefore also gives that \(c\) is \(\Sigma\)-measurable. Thus \(D_c\), its product law \(D_c^n\), every mass \(\rho_i=D(X_i)\), and every block indicator below are well-defined measurable objects.

For fixed \(i\), define the proof-local indicators
\[
I_{j,i}:=\mathbf 1\{x_j\in X_i\},\qquad 1\le j\le n.
\]
The iid sampling assumption makes \(I_{1,i},\ldots,I_{n,i}\) independent Bernoulli random variables with success probability \(D(X_i)=\rho_i\). Since \(J_i=\sum_{j=1}^n I_{j,i}\), this proves (1). Counts for distinct factors may be dependent because one observation belongs to exactly one block, but no later line uses cross-factor independence.

When \(\rho_i=0\), multiplication by the deterministic weight gives
\[
\rho_i\mathbf 1\{J_i<q_i\}=0
\]
for every sample realization, irrespective of the indicator's value. Also \(I_{j,i}=0\) almost surely for every one of the finitely many sample indices, so \(J_i=0\) almost surely. Thus the zero-mass case is exact and invokes no conditional distribution on \(X_i\).

Assumption~\ref{assump:canonical-product} makes \(k\) finite and the blocks a partition of all of \(X\), while the accepted decoder instantiation above makes every block measurable. Hence
\[
0\le W_{\mathrm{short}}
\le\sum_{i=1}^k\rho_i
=D(X)=1.
\]
Hence every summand and their sum are integrable. Finite linearity of expectation, followed by the identity \(\mathbb E\mathbf 1_E=\Pr(E)\), gives
\[
\mathbb E W_{\mathrm{short}}
=\sum_{i=1}^k
  \rho_i\mathbb E\mathbf 1\{J_i<q_i\}
=\sum_{i=1}^k\rho_i\Pr(J_i<q_i),
\]
which is (2). This is a finite-sum interchange, not a limit interchange or a union bound.

### unit_002: lemma

**Lemma (Explicit heavy-factor shortage tail).** \(\label{lem:step-004-heavy-shortage}\)

Statement:
Let \(J\sim\operatorname{Bin}(n,p)\), put \(\mu=np\), and let \(q\in\mathbb N\) satisfy \(q\ge1\). If
\[
\mu\ge128q,
\tag{3}
\]
then
\[
\Pr(J<q)
\le \exp\!\left(-\frac{16129}{256}q\right)
\le e^{-16}.
\tag{4}
\]

Proof / justification:
We first derive the needed lower-tail inequality. For any \(u\in(0,1)\), exponential Markov gives
\[
\begin{aligned}
\Pr\bigl(J\le(1-u)\mu\bigr)
&=\Pr\bigl(e^{-uJ}\ge e^{-u(1-u)\mu}\bigr)\\
&\le e^{u(1-u)\mu}\,\mathbb E e^{-uJ}.
\end{aligned}
\tag{5}
\]
The binomial moment generating calculation and \(1+v\le e^v\) yield
\[
\mathbb E e^{-uJ}
=(1-p+pe^{-u})^n
\le\exp\!\bigl(\mu(e^{-u}-1)\bigr).
\tag{6}
\]
For \(u\ge0\),
\[
e^{-u}\le1-u+\frac{u^2}{2}.
\tag{7}
\]
Indeed, the difference \(f(u)=1-u+u^2/2-e^{-u}\) has \(f(0)=f'(0)=0\) and \(f''(u)=1-e^{-u}\ge0\). Substituting (6) and (7) into (5) gives the fully explicit Chernoff inequality
\[
\Pr\bigl(J\le(1-u)\mu\bigr)
\le
\exp\!\left(
\mu\left[u(1-u)-u+\frac{u^2}{2}\right]
\right)
=\exp\!\left(-\frac{\mu u^2}{2}\right).
\tag{8}
\]

Under (3), \(q\le\mu/128\). Therefore
\[
\{J<q\}
\subseteq
\left\{J\le\frac{\mu}{128}\right\}.
\tag{9}
\]
Apply (8) with \(u=127/128\). Using (3) once more,
\[
\frac{\mu}{2}\left(\frac{127}{128}\right)^2
\ge
\frac{128q}{2}\frac{127^2}{128^2}
=\frac{16129}{256}q.
\tag{10}
\]
Since \(q\ge1\),
\[
\frac{16129}{256}q
\ge\frac{16129}{256}
>\frac{4096}{256}
=16.
\tag{11}
\]
Equations (8)--(11) prove (4). This displays exactly where the integer lower bound \(q\ge1\) supplies the requested numerical exponent.

### unit_003: proposition

**Proposition (Weighted shortage certificate without balance).** \(\label{prop:step-004-weighted-shortage}\)

Statement:
Under Assumption~\ref{assump:canonical-product}, accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}, and Lemmas~\ref{lem:step-004-binomial-accounting} and \ref{lem:step-004-heavy-shortage}, fix any \(n\in\mathbb N\), target \(c\in C\), probability measure \(D\), and iid sample \(S\sim D_c^n\). Use the setting-defined masses, counts, quotas, and shortage mass, with \(q_i\ge1\) and \(Q_{\oplus}=\sum_{i=1}^kq_i\). Then
\[
\mathbb E W_{\mathrm{short}}
\le\frac{128Q_{\oplus}}{n}+e^{-16}.
\tag{12}
\]
This holds for every mass vector \((\rho_i)_{i=1}^k\) generated by an arbitrary \(D\), without balance or positive-mass conditions and without a union bound over factors. In addition, if \(k=1\) and \(n\ge q_1\), then
\[
W_{\mathrm{short}}=0
\quad\text{for every sample realization}.
\tag{13}
\]

Proof / justification:
Put the proof-local means \(\mu_i=n\rho_i\) and split the finite factor set into
\[
\mathcal L:=\{i:\mu_i<128q_i\},
\qquad
\mathcal H:=\{i:\mu_i\ge128q_i\}.
\tag{14}
\]
The sets in (14) form a deterministic partition of \(\{1,\ldots,k\}\). For a light factor, \(\rho_i<128q_i/n\), and every shortage probability is at most one. Consequently,
\[
\sum_{i\in\mathcal L}
\rho_i\Pr(J_i<q_i)
\le\sum_{i\in\mathcal L}\rho_i
\le\frac{128}{n}\sum_{i\in\mathcal L}q_i
\le\frac{128Q_{\oplus}}{n}.
\tag{15}
\]
A zero-mass factor lies in \(\mathcal L\) because \(q_i\ge1\), but its summand in (15) is exactly zero by Lemma~\ref{lem:step-004-binomial-accounting}; it is not bounded through a conditional law or a positive-mass approximation.

For every \(i\in\mathcal H\), Lemma~\ref{lem:step-004-binomial-accounting} gives \(J_i\sim\operatorname{Bin}(n,\rho_i)\), and the definition of \(\mathcal H\) gives \(n\rho_i\ge128q_i\). Lemma~\ref{lem:step-004-heavy-shortage} therefore yields \(\Pr(J_i<q_i)\le e^{-16}\). Weighting these marginal bounds and using the accepted measurable-block conclusion together with the canonical whole-domain partition, which give \(\sum_i\rho_i=1\),
\[
\sum_{i\in\mathcal H}
\rho_i\Pr(J_i<q_i)
\le e^{-16}\sum_{i\in\mathcal H}\rho_i
\le e^{-16}.
\tag{16}
\]
Equation (16) is a weighted average of marginal shortage probabilities. It is not a bound on \(\Pr(\bigcup_i\{J_i<q_i\})\), so no factor union bound and no independence among the multinomial counts is used.

The exact expectation identity from Lemma~\ref{lem:step-004-binomial-accounting}, split according to (14), and bounds (15)--(16) give
\[
\begin{aligned}
\mathbb E W_{\mathrm{short}}
&=\sum_{i\in\mathcal L}
  \rho_i\Pr(J_i<q_i)
 +\sum_{i\in\mathcal H}
  \rho_i\Pr(J_i<q_i)\\
&\le\frac{128Q_{\oplus}}{n}+e^{-16},
\end{aligned}
\]
which proves (12).

Finally, if \(k=1\), Assumption~\ref{assump:canonical-product} gives \(X_1=X\), so \(\rho_1=D(X)=1\) and every one of the \(n\) sample records is routed to factor one. Thus \(J_1=n\) for every realization. When \(n\ge q_1\), the event \(\{J_1<q_1\}\) is empty and
\[
W_{\mathrm{short}}
=\rho_1\mathbf 1\{J_1<q_1\}
=0
\]
pointwise. This proves (13) and retains the exact one-factor no-padding baseline rather than replacing it by the generic upper bound (12).

## Target-Step Assembly

Accepted dependency Lemma~\ref{lem:step-001-quotient-invariance} identifies every target with its quotient tuple, and accepted dependency Lemma~\ref{lem:step-001-output-measurability} makes both that decoded target and every constant-factor decoder measurable. The constant-factor instantiation has one-set \(X_i\), so it establishes \(X_i\in\Sigma\) before \(\rho_i\), \(J_i\), or a shortage event is consumed. Thus the masses, block indicators, counts, and iid labeled law used below are legal derived objects; none of their measurability is attributed to Assumption~\ref{assump:canonical-product} alone.

Lemma~\ref{lem:step-004-binomial-accounting} proves the exact marginal count laws, the pointwise zero contribution at \(\rho_i=0\), integrability, and the finite-linearity identity for \(\mathbb E W_{\mathrm{short}}\). Lemma~\ref{lem:step-004-heavy-shortage} independently proves the heavy-factor probability bound, with exponent
\[
\frac{16129}{256}q_i\ge\frac{16129}{256}>16
\]
derived explicitly from \(q_i\ge1\). Proposition~\ref{prop:step-004-weighted-shortage} composes those results: light factors consume at most \(128Q_{\oplus}/n\) total risk mass, while the risk-weighted heavy contribution is at most \(e^{-16}\). The composition uses a finite weighted expectation, not an all-factor event or union bound.

Therefore, for every arbitrary factor-mass vector allowed by the setting,
\[
\mathbb E W_{\mathrm{short}}
\le\frac{128Q_{\oplus}}{n}+e^{-16},
\]
which is the exact binding target. The same proposition also proves the required stronger baseline \(W_{\mathrm{short}}=0\) pointwise when \(k=1\) and \(n\ge q_1\). No global-diagnostic statement is used as evidence.

## Explicit Rate Audit

- Exposed variables: \(n\), \(k\), \((\rho_i,q_i,J_i)_{i=1}^k\), \(Q_{\oplus}=\sum_iq_i\), and \(W_{\mathrm{short}}\).
- Hidden constants may depend on: None. The numerical constants \(128\), \(16\), and \(16129/256\) are explicit and universal.
- Hidden constants may not depend on: \(X,\Sigma,C,k,d_i,s_i,|C_i|,|Q_i|,D,(\rho_i)_i,n,\varepsilon\), or \(\delta\).
- Fixed quantities: the finite partition, the setting quota rule, the natural exponential convention, and one fixed iid sample size \(n\). The target labels do not enter the occupancy calculation.
- Probability mode: expectation over the iid sample \(S\sim D_c^n\). No learner randomness is present in \(W_{\mathrm{short}}\), and only marginal binomial laws are used.
- Horizon mode: fixed-sample at one \(n\); there is no asymptotic, recursive, uniform-in-time, or uniform-in-candidate upgrade.
- Norm mode: the exact nonnegative risk-weighted shortage mass \(W_{\mathrm{short}}=\sum_i\rho_i\mathbf1\{J_i<q_i\}\).
- Admissibility conditions and auxiliary tolerances: \(n\in\mathbb N\), \((\rho_i)_i\) is an arbitrary probability mass vector induced by \(D\), and the exact setting quotas satisfy \(q_i\in\mathbb N\) and \(q_i\ge1\). There is no balance, support, or positive-mass threshold and no auxiliary tolerance.
- Term absorption or simplification inequalities: the light contribution satisfies (15); for a heavy factor, (10)--(11) give
  \[
  \frac{n\rho_i}{2}\left(\frac{127}{128}\right)^2
  \ge\frac{16129}{256}q_i
  \ge\frac{16129}{256}>16,
  \]
  and (16) uses \(\sum_{i\in\mathcal H}\rho_i\le1\). No term is dropped by prose.
- Probability conversion: None. Finite linearity converts indicators to their marginal probabilities exactly; no union bound, Markov conversion, or independence-among-counts argument is used.
- Contribution to any Rate Specialization Bridge: the sole exported interface for `step_005` is the exact inequality \(\mathbb E W_{\mathrm{short}}\le128Q_{\oplus}/n+e^{-16}\), with universal displayed constants.
- Baseline-reduction check: if \(k=1\) and \(n\ge q_1\), then \(J_1=n\) and \(W_{\mathrm{short}}=0\) pointwise. The generic residual \(128q_1/n+e^{-16}\) is not substituted for this exact zero-shortage conclusion.

## Blockers

None

## Notation And Assumption Notes

- `public-facing`: \(\rho_i,J_i,q_i,Q_{\oplus}\), and \(W_{\mathrm{short}}\) are setting-defined objects. Their measurable legality is supplied by accepted dependency Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}; the minimal exported interface is Proposition~\ref{prop:step-004-weighted-shortage}: its expectation bound and exact \(k=1\) zero-shortage specialization. No split-set or Chernoff bookkeeping is exported downstream.
- `proof-local`: \(I_{j,i}=\mathbf1\{x_j\in X_i\}\) is introduced only after the accepted decoder interface establishes \(X_i\in\Sigma\), and only to prove the marginal binomial law; its Bernoulli distribution is derived from iid sampling in Lemma~\ref{lem:step-004-binomial-accounting}.
- `proof-local`: \(\bar b^{(i)}\) is the constant quotient tuple used only to instantiate the accepted decoder conclusion and certify \(X_i\in\Sigma\). It is explicitly defined from the accepted output space, is not data-dependent, and is not exported downstream.
- `proof-local`: \(\mu_i=n\rho_i\), the deterministic sets \(\mathcal L,\mathcal H\), and the Chernoff parameter \(u=127/128\) are defined from setting quantities and used only inside the local derivation. They are not assumptions, generated events, or downstream interfaces.
- `appendix-local`: the generic binomial variables \(J,p,\mu,q\) in Lemma~\ref{lem:step-004-heavy-shortage} package the direct exponential-moment calculation. They introduce no hidden constant or external citation and are not exported downstream.
- Constant provenance: \(128\) and \(e^{-16}\) are fixed by the accepted target row. The fraction \(127/128\) is the proof-local lower-tail parameter induced by the heavy threshold, and \(16129/256\) is proved algebraically in (10). No free constant, radius, margin, or threshold is chosen.
- Assumption provenance: the finite whole-domain partition is primitive under Assumption~\ref{assump:canonical-product}; block and target measurability are accepted derived conclusions supplied by Lemmas~\ref{lem:step-001-quotient-invariance} and \ref{lem:step-001-output-measurability}. Only after those conclusions make every \(X_i\) measurable does the finite partition imply the legal mass identity \(\sum_iD(X_i)=D(X)=1\). The counts \(J_i\), shortage events, and \(W_{\mathrm{short}}\) are generated by the iid sample; their marginal laws, integrability, and expectation bound are proved in this step. There are no local conditional hypotheses or assumed realized events.
- Zero-mass convention: if \(\rho_i=0\), its weighted shortage term is identically zero before expectation. The proof never defines or consumes \(D_i=D(\cdot\mid X_i)\) for such a factor.
- Dependency boundary: the accepted `step_001` artifacts are used exactly for quotient-target representation, measurable decoding (including the constant-factor block instantiation), and their accepted structural/scalar interface. No event, probability estimate, or occupancy conclusion is imported from them.
- Diagnostic boundary: the paired `global_proof.md` and `global_proof_review.md` were read only after verifying SHA-256 values `a52f1ff37024c621941fb30aa5b2f95633e56d45947fa928f6e14e121e87e5e5` and `17fca51224903071cd28879f9e382b2e3d9ecf3d5ce7b2abf897e0668eba0c48`, and the review status `ACCEPTED`. Their step-relevant light/heavy planning suggestion was independently derived in Lemmas~\ref{lem:step-004-binomial-accounting} and \ref{lem:step-004-heavy-shortage} and Proposition~\ref{prop:step-004-weighted-shortage}. Neither global artifact is evidence, a cited result, an assumption source, or authority to change the target claim.
