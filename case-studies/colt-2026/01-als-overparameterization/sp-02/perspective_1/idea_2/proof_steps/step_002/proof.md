# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_002`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Conditional on arbitrary \(T\), prove
  \[
  \mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T\right]
  =\frac{k}{n}\|T\|_F^2,
  \]
  \(\mathbb P(E_M\mid T)\ge1/2\), conditional independence of
  \(E_{\mathrm{cALS}}\) and \(E_{\mathrm{cGD}}\), and joint conditional and unconditional probability at least \(1/4\).
- Depends on: `step_001`.
- Assumptions used: Primitive `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization`; derived Haar and independence output of `step_001`.
- Technical challenge: Handle the shared \(T\), conditional independence, and the \(T=0\) boundary without dividing by \(\|T\|_F\).
- Intended proof tool or cited result: Direct \(\mathbb E P_{\mathcal S}=(k/n)I_n\) trace calculation, Markov inequality, conditional product, and tower property.
- Output target: A joint event on which, for both methods,
  \[
  \|(I-P_{\mathcal H_M})T\|_F^2
  \ge \left(1-2\frac{k}{n}\right)\|T\|_F^2
  \ge \frac34\|T\|_F^2,
  \]
  with conditional and unconditional probability at least \(1/4\).
- Rate objective: Objective A, namely confidence \(1/4\), exact dependence \(1-2k/n\ge3/4\), and no hidden dependence.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`: \(n,r\) are positive integers and \(n\ge8r^{5/4}\).
  - `assump:rank_window`: \(k\) is an integer satisfying \(r<k\le r^{5/4}\).
  - `assump:joint_initialization`: the two method-specific Gaussian initialization triples are independent of one another and independent of the variables generating \(T\), while both methods use the same realized \(T\).
- Derived invariants supplied by accepted dependencies:
  - The accepted `step_001` proof and review, specifically Lemma~\ref{lem:step-001-haar-independence}, supply that the two spans are mutually independent Haar-uniform elements of \(\operatorname{Gr}(k,n)\), independent of \(T\), and that a regular conditional law of the pair of spans given \(T=T_0\) may be chosen, for every \(T_0\), as the constant product Haar law.
  - No trajectory-membership conclusion from `step_001` is needed in this step.
- Local conditional hypotheses: None. Fixing \(T=T_0\) below is a universally quantified conditional-probability fiber under the accepted constant regular conditional law, not a theorem-facing assumption or generated good event.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, and the accepted conclusion of Lemma~\ref{lem:step-001-haar-independence}, for either method and every fixed \(T_0\), \(\mathbb E[P_{\mathcal S_M}\mid T=T_0]=(k/n)I_n\) and \(\mathbb E[\|P_{\mathcal H_M}T\|_F^2\mid T=T_0]=(k/n)\|T_0\|_F^2\). | Produces the exact conditional projected-energy expectation for arbitrary \(T\). |
| `unit_002` | lemma | Under the same assumptions and Lemma~\ref{lem:step-002-projector-energy}, the setting-defined event \(E_M\) satisfies \(\mathbb P(E_M\mid T=T_0)\ge1/2\) for every \(T_0\), with probability one when \(T_0=0\). | Proves the per-method Markov event without normalizing by \(\|T\|_F\) at the zero boundary. |
| `unit_003` | lemma | Under Assumptions~\ref{assump:dimension} and \ref{assump:rank_window}, on \(E_M\) one has the exact complement bound \(\|(I-P_{\mathcal H_M})T\|_F^2\ge(1-2k/n)\|T\|_F^2\ge(3/4)\|T\|_F^2\). | Converts projected-energy control into the exact residual margin and preserves the required arithmetic. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, the accepted product-Haar conditional law and Lemmas~\ref{lem:step-002-markov-event} and \ref{lem:step-002-residual-margin} imply conditional independence, joint conditional probability at least \(1/4\) for every \(T_0\), the same unconditional probability lower bound, and both residual margins on the joint event. | Assembles the exact probability and margin interface exported to `step_007`. |

Atomic step = no. Projector isotropy, the zero-safe Markov argument, the deterministic complement margin, and the conditional-to-unconditional probability conversion are separate auditable claims.

## Cited Result Applications

No external paper result is used. The accepted dependency and elementary probability or projection tools used below are restated in the branch notation.

1. **Accepted Haar and independence certificate from `step_001`.** Lemma~\ref{lem:step-001-haar-independence}, certified by `proof_steps/step_001/review.md`, states that under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, the pair \((\mathcal S_{\mathrm{cALS}},\mathcal S_{\mathrm{cGD}})\) has, conditionally on \(T=T_0\), the product law
   \[
   \operatorname{Haar}_{k,n}\otimes\operatorname{Haar}_{k,n}
   \]
   for every \(T_0\). The projectors \(P_{\mathcal S_M}\) and \(P_{\mathcal H_M}\) are measurable functions of the corresponding spans. This supplies the exact current-notation Haar source for Lemma~\ref{lem:step-002-projector-energy} and the conditional product source for Proposition~\ref{prop:step-002-joint-event}.

2. **Markov inequality.** If \(X\ge0\) is integrable and \(a>0\), then
   \[
   \mathbb P(X\ge a)\le \frac{\mathbb E X}{a}.
   \]
   In Lemma~\ref{lem:step-002-markov-event}, conditional on a nonzero \(T_0\), the object is \(X=\|P_{\mathcal H_M}T_0\|_F^2\) and the threshold is \(a=2(k/n)\|T_0\|_F^2>0\). Integrability follows from \(0\le X\le\|T_0\|_F^2\). The case \(T_0=0\) is handled directly rather than by this division.

3. **Orthogonal-projector Pythagorean identity.** For an orthogonal projector \(P\) in a finite-dimensional Hilbert space and every vector \(v\),
   \[
   \|v\|^2=\|Pv\|^2+\|(I-P)v\|^2.
   \]
   Here \(P=P_{\mathcal H_M}\), \(v=T\), and the norm is the tensor Frobenius norm. The two components are orthogonal because \(P(I-P)=0\). Lemma~\ref{lem:step-002-residual-margin} uses the identity with the exact event threshold.

4. **Conditional product and tower property.** If a regular conditional law of \((A,B)\) given \(T=T_0\) is a product law for every \(T_0\), then events measurable respectively in \((A,T_0)\) and \((B,T_0)\) have factorized conditional probabilities. For any event \(E\),
   \[
   \mathbb P(E)=\mathbb E\!\left[\mathbb P(E\mid T)\right].
   \]
   Proposition~\ref{prop:step-002-joint-event} applies these statements to the two method-specific spans and events. The product factorization is also verified directly there from the accepted product-Haar kernel.

Local-result use is as follows. Lemma~\ref{lem:step-002-projector-energy} supplies the expectation used by Lemma~\ref{lem:step-002-markov-event}. Lemma~\ref{lem:step-002-residual-margin} is deterministic on each event. Proposition~\ref{prop:step-002-joint-event} combines the accepted conditional product law with these two lemmas and exports the joint conditional and unconditional statement.

## Local Derivation

### unit_001: lemma

**Lemma (Conditional Haar projector isotropy and tensor energy).** \label{lem:step-002-projector-energy}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, and the accepted conclusion of Lemma~\ref{lem:step-001-haar-independence}, fix a method \(M\in\{\mathrm{cALS},\mathrm{cGD}\}\) and an arbitrary tensor \(T_0\in\mathbb R^{n\times n\times n}\). Under the accepted regular conditional law given \(T=T_0\),
\[
\mathbb E\!\left[P_{\mathcal S_M}\mid T=T_0\right]
=\frac{k}{n}I_n
\]
and
\[
\mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T=T_0\right]
=\frac{k}{n}\|T_0\|_F^2.
\]
Consequently, as a conditional-expectation identity,
\[
\mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T\right]
=\frac{k}{n}\|T\|_F^2.
\]

**Proof / justification.** By Lemma~\ref{lem:step-001-haar-independence}, conditional on \(T=T_0\), the span \(\mathcal S_M\) is Haar-uniform on \(\operatorname{Gr}(k,n)\). Let
\[
\overline P_M:=\mathbb E\!\left[P_{\mathcal S_M}\mid T=T_0\right].
\]
For any deterministic orthogonal matrix \(U\in O(n)\), Haar invariance gives \(U\mathcal S_M\stackrel d=\mathcal S_M\) under this conditional law. Since the projector onto \(U\mathcal S_M\) is \(UP_{\mathcal S_M}U^{\mathsf T}\),
\[
U\overline P_MU^{\mathsf T}=\overline P_M
\qquad\text{for every }U\in O(n).
\]
This forces \(\overline P_M\) to be a scalar multiple of the identity: conjugation by coordinate sign flips makes every off-diagonal entry zero, and conjugation by coordinate permutations makes all diagonal entries equal. Thus \(\overline P_M=\lambda I_n\) for some \(\lambda\). Every realization is a rank-\(k\) orthogonal projector, so
\[
n\lambda
=\operatorname{tr}(\overline P_M)
=\mathbb E\!\left[\operatorname{tr}(P_{\mathcal S_M})\mid T=T_0\right]
=k.
\]
Hence \(\lambda=k/n\), proving the projector identity.

The tensor projector acts in the first mode, so under the fixed matricization convention in `setting.md`,
\[
\bigl(P_{\mathcal H_M}T_0\bigr)_{(1)}
=P_{\mathcal S_M}(T_0)_{(1)}.
\]
Because \(P_{\mathcal S_M}\) is symmetric and idempotent,
\[
\begin{aligned}
\|P_{\mathcal H_M}T_0\|_F^2
&=\|P_{\mathcal S_M}(T_0)_{(1)}\|_F^2\\
&=\operatorname{tr}\!\left(
P_{\mathcal S_M}(T_0)_{(1)}(T_0)_{(1)}^{\mathsf T}
\right).
\end{aligned}
\]
Taking conditional expectation and using the projector identity gives
\[
\begin{aligned}
\mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T=T_0\right]
&=\operatorname{tr}\!\left(
\frac{k}{n}I_n\,(T_0)_{(1)}(T_0)_{(1)}^{\mathsf T}
\right)\\
&=\frac{k}{n}\|(T_0)_{(1)}\|_F^2
=\frac{k}{n}\|T_0\|_F^2.
\end{aligned}
\]
Matricization preserves the Frobenius norm. Since the accepted conditional kernel is valid for every \(T_0\), this pointwise fiber calculation gives the stated version of the conditional-expectation identity. \(\square\)

### unit_002: lemma

**Lemma (Zero-safe per-method Markov event).** \label{lem:step-002-markov-event}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, the accepted conclusion of Lemma~\ref{lem:step-001-haar-independence}, and Lemma~\ref{lem:step-002-projector-energy}, define, as in `setting.md`,
\[
E_M=
\left\{
\|P_{\mathcal H_M}T\|_F^2
\le 2\frac{k}{n}\|T\|_F^2
\right\}.
\]
Then for every fixed \(T_0\),
\[
\mathbb P(E_M\mid T=T_0)\ge\frac12.
\]
If \(T_0=0\), this conditional probability equals one.

**Proof / justification.** First suppose \(T_0\ne0\). Since \(k,n\) are positive, the threshold \(2(k/n)\|T_0\|_F^2\) is positive. Conditional on \(T=T_0\), set
\[
X_M:=\|P_{\mathcal H_M}T_0\|_F^2\ge0.
\]
Lemma~\ref{lem:step-002-projector-energy} gives
\[
\mathbb E[X_M\mid T=T_0]=\frac{k}{n}\|T_0\|_F^2.
\]
The complement of \(E_M\) is the strict-threshold event
\[
E_M^c=\left\{X_M>2\frac{k}{n}\|T_0\|_F^2\right\}.
\]
Therefore Markov's inequality yields
\[
\begin{aligned}
\mathbb P(E_M^c\mid T=T_0)
&\le
\mathbb P\!\left(
X_M\ge2\frac{k}{n}\|T_0\|_F^2
\,\middle|\,T=T_0
\right)\\
&\le
\frac{(k/n)\|T_0\|_F^2}
{2(k/n)\|T_0\|_F^2}
=\frac12.
\end{aligned}
\]
Hence \(\mathbb P(E_M\mid T=T_0)\ge1/2\).

If \(T_0=0\), then for every span
\[
\|P_{\mathcal H_M}T_0\|_F^2=0
=2\frac{k}{n}\|T_0\|_F^2.
\]
Thus the non-strict inequality defining \(E_M\) holds surely, so
\(\mathbb P(E_M\mid T=0)=1\). No division by \(\|T_0\|_F^2\) is made in this branch. \(\square\)

### unit_003: lemma

**Lemma (Exact orthogonal-complement margin).** \label{lem:step-002-residual-margin}

Under Assumptions~\ref{assump:dimension} and \ref{assump:rank_window}, for either method \(M\), on the event \(E_M\),
\[
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac34\|T\|_F^2.
\]
This statement includes \(T=0\) and the boundary \(k/n=1/8\).

**Proof / justification.** Since \(P_{\mathcal H_M}\) is an orthogonal projector in the tensor Frobenius inner product,
\[
\|T\|_F^2
=\|P_{\mathcal H_M}T\|_F^2
+\|(I-P_{\mathcal H_M})T\|_F^2.
\]
On \(E_M\), rearranging this exact identity gives
\[
\begin{aligned}
\|(I-P_{\mathcal H_M})T\|_F^2
&=\|T\|_F^2-\|P_{\mathcal H_M}T\|_F^2\\
&\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2.
\end{aligned}
\]
The dimension and rank assumptions give the exact arithmetic
\[
\frac{k}{n}
\le\frac{r^{5/4}}{8r^{5/4}}
=\frac18,
\]
and hence
\[
1-2\frac{k}{n}
\ge 1-2\left(\frac18\right)
=\frac34.
\]
Combining the last two displays proves the claim. If \(T=0\), all squared norms in the first display are zero and both inequalities remain valid. Equality \(k/n=1/8\) gives the required residual factor exactly \(3/4\), with no strictness asserted. \(\square\)

### unit_004: proposition

**Proposition (Joint conditional and unconditional projection event).** \label{prop:step-002-joint-event}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, the accepted conclusion of Lemma~\ref{lem:step-001-haar-independence}, and Lemmas~\ref{lem:step-002-markov-event} and \ref{lem:step-002-residual-margin}, the events \(E_{\mathrm{cALS}}\) and \(E_{\mathrm{cGD}}\) are conditionally independent given \(T\). For every fixed \(T_0\),
\[
\begin{aligned}
&\mathbb P\!\left(
E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}
\,\middle|\,T=T_0
\right)\\
&\qquad=
\mathbb P(E_{\mathrm{cALS}}\mid T=T_0)
\mathbb P(E_{\mathrm{cGD}}\mid T=T_0)
\ge\frac14.
\end{aligned}
\]
Moreover,
\[
\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}})\ge\frac14,
\]
and on this joint event, simultaneously for both methods,
\[
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac34\|T\|_F^2.
\]

**Proof / justification.** Fix \(T_0\). Once \(T_0\) is fixed, \(E_M\) is a measurable event determined only by the method-specific span \(\mathcal S_M\): its projector determines \(P_{\mathcal H_M}\), while its threshold is the deterministic number \(2(k/n)\|T_0\|_F^2\). Lemma~\ref{lem:step-001-haar-independence} supplies the product-Haar conditional law of the two spans. Therefore the two event indicator functions factor under that product measure, which gives
\[
\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T=T_0)
=\prod_{M\in\{\mathrm{cALS},\mathrm{cGD}\}}
\mathbb P(E_M\mid T=T_0).
\]
Lemma~\ref{lem:step-002-markov-event} bounds each factor below by \(1/2\), including the \(T_0=0\) fiber, and hence the product is at least
\[
\frac12\cdot\frac12=\frac14.
\]

Now apply the tower property to the joint event:
\[
\begin{aligned}
\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}})
&=\mathbb E\!\left[
\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)
\right]\\
&\ge\mathbb E\!\left[\frac14\right]
=\frac14.
\end{aligned}
\]
No independence of the two complete trajectories is asserted or needed; only the two initial spans are independent after conditioning on their shared \(T\). Finally, on the intersection both events hold, so Lemma~\ref{lem:step-002-residual-margin} applies once for each method and gives the two simultaneous residual margins. \(\square\)

### Boundary and degenerate cases

- **Zero target:** If \(T=0\), each \(E_M\) is sure, the joint conditional probability is one, and the exported residual inequality is \(0\ge0\). The proof never normalizes by \(\|T\|_F\).
- **Shared target:** The two events are generally not unconditionally independent because both depend on the same random \(T\). The proof uses only their conditional independence under the accepted product-Haar kernel and then the tower property.
- **Dimension boundary:** If \(k/n=1/8\), the exact complement factor is \(1-2k/n=3/4\); no stronger margin is claimed.
- **Arbitrary tensor law:** The conditional computation is valid for every deterministic \(T_0\). The unconditional bound therefore uses no concentration, nondegeneracy, or smoothing property of \(T\) beyond the initialization-independence protocol.
- **Gaussian rank null set:** The accepted `step_001` dependency already absorbs the simultaneous rank-failure null set into its Haar/projector certificate. This step introduces no additional exceptional event.

## Target-Step Assembly

The accepted Lemma~\ref{lem:step-001-haar-independence} supplies the exact product-Haar regular conditional law of the two initialization spans given every realized tensor \(T=T_0\). Lemma~\ref{lem:step-002-projector-energy} turns that Haar law into the per-method identities
\[
\mathbb E[P_{\mathcal S_M}\mid T]=\frac{k}{n}I_n,
\qquad
\mathbb E\!\left[\|P_{\mathcal H_M}T\|_F^2\mid T\right]
=\frac{k}{n}\|T\|_F^2.
\]
Lemma~\ref{lem:step-002-markov-event} then proves
\(\mathbb P(E_M\mid T)\ge1/2\) for each method, while handling \(T=0\) by a sure-event argument rather than division.

Proposition~\ref{prop:step-002-joint-event} uses the accepted product conditional law to prove the exact conditional factorization and hence the lower bound \(1/4\) for every realized \(T\); the tower property preserves the same \(1/4\) lower bound unconditionally. On the joint event, Lemma~\ref{lem:step-002-residual-margin} gives, for each method,
\[
\|(I-P_{\mathcal H_M})T\|_F^2
\ge\left(1-2\frac{k}{n}\right)\|T\|_F^2
\ge\frac34\|T\|_F^2,
\]
where the final inequality is exactly
\[
\frac{k}{n}\le\frac18
\quad\Longrightarrow\quad
1-2\frac{k}{n}\ge1-\frac14=\frac34.
\]
These named results prove every clause and the exact output target of the accepted `step_002` row.

## Explicit Rate Audit

- Exposed variables: \(r,n,k\) and the arbitrary realized tensor \(T\). The exact event threshold is \(2(k/n)\|T\|_F^2\); the exact residual factor is \(1-2k/n\); the explicit probabilities are \(1/2\) per method and \(1/4\) jointly.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,q,\rho,T\), the deterministic bases, the smoothing realization, either method initialization, or any trajectory index.
- Fixed quantities: In the conditional calculation, \(T=T_0\), \(n\), and \(k\) are fixed, and only the two method-specific Haar spans remain random.
- Probability mode: Exact conditional expectation; conditional probability at least \(1/2\) per method and at least \(1/4\) jointly for every \(T_0\); unconditional probability at least \(1/4\) by the tower property. The \(T_0=0\) conditional probability is one.
- Horizon mode: Static initialization event, determined before either algorithmic trajectory runs. No finite-to-uniform or asymptotic conversion occurs in this step.
- Norm mode: Tensor Frobenius norm under the exact mode-1 Euclidean orthogonal projector \(P_{\mathcal H_M}=P_{\mathcal S_M}\otimes I_n\otimes I_n\).
- Admissibility conditions and auxiliary tolerances: Only the displayed positive-integer dimension/rank conditions and the accepted initialization-independence protocol. No auxiliary tolerance or generated trajectory condition is introduced.
- Term absorption or simplification inequalities:
  \[
  \frac{k}{n}\le\frac{r^{5/4}}{8r^{5/4}}=\frac18,
  \qquad
  1-2\frac{k}{n}\ge1-2\left(\frac18\right)=\frac34.
  \]
  No term is dropped or absorbed.
- Probability conversion:
  \[
  \mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)
  =\prod_M\mathbb P(E_M\mid T)
  \ge\frac12\cdot\frac12=\frac14,
  \]
  followed by
  \[
  \mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}})
  =\mathbb E[\mathbb P(E_{\mathrm{cALS}}\cap E_{\mathrm{cGD}}\mid T)]
  \ge\frac14.
  \]
- Contribution to any Rate Specialization Bridge: Exports the exact \(3/4\) squared-residual margin and \(1/4\) confidence consumed by `step_007`; the later half-squared-loss conversion to \(3/8\) is not performed here.
- Baseline-reduction check: At \(T=0\), both events are sure and the residual lower bound remains exactly zero, so the baseline conclusion is preserved without a remainder, exclusion, or stopped statement. For every nonzero exact/noiseless realization, the same conditional Haar calculation and exact complement identity apply unchanged.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(T\), \(\mathcal S_M\), \(P_{\mathcal S_M}\), \(\mathcal H_M\), \(P_{\mathcal H_M}\), and \(E_M\) are defined in `setting.md`. The minimal public-facing output is the conditional projected-energy identity, the two per-method probability bounds, their joint conditional and unconditional probability lower bound, and the simultaneous residual margin.
- `proof-local` helper objects:
  - \(T_0\), used only as an arbitrary value in the accepted regular conditional law;
  - \(\overline P_M\), the conditional mean projector used inside Lemma~\ref{lem:step-002-projector-energy};
  - \(X_M\), the nonnegative projected energy used inside Lemma~\ref{lem:step-002-markov-event}.
  None is exported downstream.
- `appendix-local` objects: the labels and theorem-style formulations of Lemmas~\ref{lem:step-002-projector-energy}, \ref{lem:step-002-markov-event}, \ref{lem:step-002-residual-margin}, and Proposition~\ref{prop:step-002-joint-event}. Their compact conclusions may be translated into the final appendix, but their proof bookkeeping is not theorem-facing.
- Constant provenance: the multiplier \(2\) is the setting-defined event threshold; \(1/2\) is the exact Markov consequence; \(1/4\) is the product of the two per-method lower bounds; \(1-2k/n\) is obtained by exact orthogonal complementation; and \(3/4\) follows from `assump:dimension` and `assump:rank_window` through \(k/n\le1/8\). No free constant is introduced.
- Assumption provenance:
  - Haar law and conditional independence are derived outputs of the accepted `step_001` dependency, not primitive assumptions in this proof;
  - \(E_M\) is a static generated event proved to have the stated probability in this step, not an admissibility assumption;
  - the joint event and both residual margins are derived by Proposition~\ref{prop:step-002-joint-event};
  - conditioning on arbitrary \(T=T_0\) is a proof mode, not a theorem-facing generated-object condition.
- Source/object mapping: the accepted source object is the exact Euclidean initialization span \(\mathcal S_M\), and the consumed object is its identical mode-1 tensor projector \(P_{\mathcal H_M}=P_{\mathcal S_M}\otimes I_n\otimes I_n\). The produced and consumed tensors are the same realized \(T\) in the same Frobenius norm; there is no whitening, weighting, surrogate object, or transfer residual.
- Global diagnostic use: `global_proof.md` was read only after verifying that `global_proof_review.md` has status `ACCEPTED`. Its step-relevant planning guidance was to keep the shared-\(T\) calculation conditional, separate the \(T=0\) branch before Markov normalization, and expose the conditional product and tower conversion. It was not used as proof evidence, a cited result, an assumption source, or authority to change the accepted target claim.
