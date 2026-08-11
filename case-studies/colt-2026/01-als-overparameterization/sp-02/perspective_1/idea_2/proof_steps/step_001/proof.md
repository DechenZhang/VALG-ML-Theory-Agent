# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove that each \(G_x^M\) has full column rank almost surely, \(\mathcal S_M\) is Haar and independent of \(T\), and every defined represented tensor satisfies \(S_t^M\in\mathcal H_M\) by exact algorithmic enforcement.
- Depends on: None.
- Assumptions used: Primitive `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization`.
- Technical challenge: Separate the static distributional fact from the trajectory membership fact without assuming any generated invariant.
- Intended proof tool or cited result: Direct Gaussian rank and orthogonal-invariance derivation; exact \(Q_M\)-factor inspection. No external citation is required.
- Output target: Haar/fixed-span certificate used by `step_002` and `step_003`.
- Rate objective: Objective A, namely exact \(k/n\) Haar geometry and all-defined-iterate zero-leakage membership with no hidden constants.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:dimension`: \(n,r\) are positive integers and \(n\ge 8r^{5/4}\).
  - `assump:rank_window`: \(k\) is an integer satisfying \(r<k\le r^{5/4}\).
  - `assump:joint_initialization`: the two method-specific Gaussian initialization triples are independent of one another and independent of the smoothing variables that generate \(T\); both methods use the same realized \(T\).
  - The displayed cALS and cGD procedures in `setting.md` are algorithm definitions, not additional assumptions. In particular, each \(G_x^M\) has iid \(\mathcal N(0,1/n)\) entries, cALS inserts the fixed left factor \(Q_{\mathrm{cALS}}\) in every \(X\)-update, and cGD represents every \(X\)-iterate as \(Q_{\mathrm{cGD}}C_t\).
- Derived invariants supplied by accepted dependencies: None; this step has no dependency artifacts.
- Local conditional hypotheses:
  - In the fixed-span statement, an index is quantified only when the corresponding algorithmic iterate is defined. This is the exact scope of the target claim, not an assumption that all cGD line searches terminate. Finite termination and existence of every finite cGD iterate are reserved for `step_005`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, one has \(k/n\le1/8<1\), and both matrices \(G_x^{\mathrm{cALS}}\) and \(G_x^{\mathrm{cGD}}\) have rank \(k\) simultaneously with probability one. | Produces the probability-one event on which the method-specific initialization spans are genuine \(k\)-planes and the displayed \(Q_M\)'s have \(k\) orthonormal columns. |
| `unit_002` | lemma | Under the same assumptions and Lemma~\ref{lem:step-001-full-rank}, each \(\mathcal S_M=\operatorname{range}(G_x^M)\) is Haar-uniform on \(\operatorname{Gr}(k,n)\); the two spans are mutually independent and independent of \(T\), and their conditional law given \(T\) may be chosen as the constant product Haar law. | Produces the exact static random-projector interface needed by `step_002`. |
| `unit_003` | lemma | If \(Q\in\mathbb R^{n\times k}\) has orthonormal columns spanning \(\mathcal S\), \(X=QD\), and \(Y,Z\in\mathbb R^{n\times k}\), then \(S(X,Y,Z)\in\mathcal S\otimes\mathbb R^n\otimes\mathbb R^n\), equivalently \(((I-QQ^{\mathsf T})\otimes I_n\otimes I_n)S(X,Y,Z)=0\). | Converts exact first-factor membership into the represented-tensor membership consumed by `step_003`. |
| `unit_004` | proposition | Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, on the probability-one event of Lemma~\ref{lem:step-001-full-rank}, every defined cALS or cGD iterate has \(X_t^M=Q_MD_t^M\) for an appropriate coefficient matrix and hence \(S_t^M\in\mathcal H_M\). | Proves the exact zero-leakage generated invariant without assuming factor boundedness, Gram invertibility, line-search termination, or any trajectory event. |

Atomic step = no. The distributional certificate and the algorithmic conservation certificate are logically independent, and the factor-to-tensor lifting is exposed separately so that no tensor-subspace implication is hidden.

## Cited Result Applications

No external paper result and no dependency-step result is used. The following elementary facts are restated in the exact conventions needed here.

1. **Zero set of a nonzero polynomial.** If a real polynomial \(p:\mathbb R^d\to\mathbb R\) is not identically zero, then \(\{u:p(u)=0\}\) has Lebesgue measure zero. Consequently, an absolutely continuous random vector does not lie in that zero set with positive probability.
   - Instantiated object: the determinant of the leading \(k\times k\) block of \(G_x^M\), viewed as a polynomial in its \(k^2\) entries.
   - Required assumptions: the polynomial is nonzero and the entries have a joint density.
   - Discharge: the determinant polynomial takes value one at the identity matrix, and iid Gaussian entries have a joint density.
   - Conclusion used: the leading block is nonsingular almost surely, hence \(G_x^M\) has column rank \(k\) almost surely.
   - Self-contained justification: for one variable a nonzero polynomial has finitely many roots. Inductively, write a multivariate polynomial as a polynomial in its last variable with polynomial coefficient functions; outside the common zero set of the nonzero coefficient functions, the last-variable zero set is finite. The induction hypothesis and Fubini's theorem give measure zero.

2. **Invariant characterization of Haar measure on the Grassmannian.** For \(0<k<n\), the Grassmannian \(\operatorname{Gr}(k,n)\) is a compact homogeneous \(O(n)\)-space and has a unique \(O(n)\)-invariant Borel probability measure, called the Haar-uniform law on \(k\)-planes.
   - Instantiated object: the law of \(\mathcal S_M=\operatorname{range}(G_x^M)\).
   - Required assumptions: \(\mathcal S_M\) is a \(k\)-plane almost surely and its law is invariant under \(\mathcal S\mapsto U\mathcal S\) for every deterministic \(U\in O(n)\).
   - Discharge: Lemma~\ref{lem:step-001-full-rank} gives the first property, and left orthogonal invariance of the isotropic Gaussian matrix gives the second.
   - Conclusion used: \(\mathcal S_M\) is Haar-uniform.
   - Uniqueness check: if \(\lambda\) is normalized Haar measure on the compact group \(O(n)\) and \(\mathcal S_0\) is a fixed \(k\)-plane, the pushforward of \(\lambda\) by \(U\mapsto U\mathcal S_0\) is invariant. For any other invariant probability \(\mu\) and bounded Borel \(h\), averaging \(h(U\mathcal S)\) first over \(U\sim\lambda\) and then over \(\mathcal S\sim\mu\) yields the same value as averaging \(h(U\mathcal S_0)\); transitivity and right invariance of \(\lambda\) make the inner average independent of \(\mathcal S\). Thus \(\mu\) equals this pushforward.

3. **Measurable images preserve independence.** If random elements \(A,B,C\) are mutually independent and \(\phi,\psi,\chi\) are measurable, then \(\phi(A),\psi(B),\chi(C)\) are mutually independent. If \((A,B)\) is independent of \(C\), the constant kernel equal to the law of \((A,B)\) is a version of the conditional law of \((A,B)\) given \(C\).
   - Instantiated objects: \(A=G_x^{\mathrm{cALS}}\), \(B=G_x^{\mathrm{cGD}}\), \(C\) equal to the collection of smoothing variables, \(\phi(A)=\operatorname{range}(A)\), \(\psi(B)=\operatorname{range}(B)\), and \(\chi(C)=T\).
   - Required assumptions: mutual independence and measurability.
   - Discharge: Assumption~\ref{assump:joint_initialization} supplies independence; `setting.md` fixes a measurable orthonormalization, so the spans/projectors are measurable, and \(T\) is a polynomial, hence measurable, function of the smoothing variables.
   - Conclusion used: the two spans are independent of one another and of \(T\), including in the constant conditional-kernel form used downstream.

4. **Moore--Penrose existence for finite matrices.** Every finite real matrix \(A\) has a unique Moore--Penrose pseudoinverse \(A^\dagger\), obtained by reciprocating the nonzero singular values in an SVD. No invertibility assumption is required.
   - Instantiated object: \(((K_t^x)^{\mathsf T}K_t^x)^\dagger\) in the cALS \(X\)-update.
   - Conclusion used: a singular or zero Khatri--Rao Gram matrix does not alter the exact displayed form \(X_{t+1}=Q_{\mathrm{cALS}}D_{t+1}\). This step does not use or prove the least-squares optimality of that pseudoinverse formula; that obligation belongs to `step_004`.

Local-result use is as follows. Lemma~\ref{lem:step-001-full-rank} supplies the \(k\)-plane premise for Lemma~\ref{lem:step-001-haar-independence} and the orthonormal-basis premise for Proposition~\ref{prop:step-001-fixed-span}. Lemma~\ref{lem:step-001-tensor-lift} is then applied inside Proposition~\ref{prop:step-001-fixed-span}. The target-step assembly uses Lemmas~\ref{lem:step-001-full-rank} and \ref{lem:step-001-haar-independence} together with Proposition~\ref{prop:step-001-fixed-span}.

## Local Derivation

### unit_001: lemma

**Lemma (Admissible dimensions and Gaussian full rank).** \label{lem:step-001-full-rank}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization},
\[
\frac{k}{n}\le \frac18<1,
\]
and
\[
\mathbb P\!\left(
\operatorname{rank}G_x^{\mathrm{cALS}}=k
\ \text{and}\ 
\operatorname{rank}G_x^{\mathrm{cGD}}=k
\right)=1.
\]

**Proof / justification.** Assumptions~\ref{assump:dimension} and \ref{assump:rank_window} give
\[
0<k\le r^{5/4}\le \frac n8,
\]
so \(k/n\le1/8\) and in particular \(k<n\). Fix one method \(M\). Because the first \(k\) rows of \(G_x^M\) exist, let \(B_M\in\mathbb R^{k\times k}\) be that leading square block. Its determinant is a nonzero polynomial in its entries: for example, it equals one at \(B_M=I_k\). The entries of \(B_M\) are jointly absolutely continuous because they are iid \(\mathcal N(0,1/n)\). The polynomial zero-set fact therefore gives
\[
\mathbb P(\det B_M=0)=0.
\]
Whenever \(B_M\) is nonsingular, the \(k\) columns of \(G_x^M\) are linearly independent, hence \(\operatorname{rank}G_x^M=k\). Thus each method has full column rank almost surely. Taking the intersection of the two probability-one events, or equivalently taking a finite union of their null complements, proves the simultaneous statement. Independence is not needed for this last probability-one intersection. \(\square\)

### unit_002: lemma

**Lemma (Haar initialization spans and independence).** \label{lem:step-001-haar-independence}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, and on the probability-one full-rank event from Lemma~\ref{lem:step-001-full-rank}, each
\[
\mathcal S_M=\operatorname{range}(G_x^M),
\qquad M\in\{\mathrm{cALS},\mathrm{cGD}\},
\]
is Haar-uniform on \(\operatorname{Gr}(k,n)\). Moreover, \(\mathcal S_{\mathrm{cALS}}\), \(\mathcal S_{\mathrm{cGD}}\), and \(T\) are mutually independent. Equivalently, a regular conditional law of the pair of spans given \(T=T_0\) may be chosen, for every \(T_0\in\mathbb R^{n\times n\times n}\), as
\[
\operatorname{Haar}_{k,n}\otimes\operatorname{Haar}_{k,n}.
\]
The corresponding projectors \(P_{\mathcal S_M}\), tensor subspaces \(\mathcal H_M\), and projectors \(P_{\mathcal H_M}\) are therefore also independent of \(T\), and the two method-specific copies are mutually independent.

**Proof / justification.** Fix a method \(M\) and a deterministic orthogonal matrix \(U\in O(n)\). Write the columns of \(G_x^M\) as \(g_1,\ldots,g_k\). Each \(g_i\) has law \(\mathcal N(0,n^{-1}I_n)\), so
\[
Ug_i\sim \mathcal N(0,U(n^{-1}I_n)U^{\mathsf T})
=\mathcal N(0,n^{-1}I_n).
\]
Applying a deterministic map separately to independent columns preserves their independence. Hence
\[
UG_x^M\stackrel{d}=G_x^M.
\]
On the full-rank event,
\[
\operatorname{range}(UG_x^M)=U\operatorname{range}(G_x^M)=U\mathcal S_M.
\]
It follows that \(U\mathcal S_M\stackrel d=\mathcal S_M\) for every \(U\in O(n)\). Since Lemma~\ref{lem:step-001-full-rank} places \(\mathcal S_M\) in \(\operatorname{Gr}(k,n)\) almost surely, the invariant characterization of Grassmannian Haar measure proves that \(\mathcal S_M\) is Haar-uniform.

For independence, let \(\Xi\) denote the complete collection of Gaussian smoothing variables used to form \(T\). This is only a proof-local abbreviation. Assumption~\ref{assump:joint_initialization} says that the two initialization triples are independent of one another and of \(\Xi\). In particular,
\[
G_x^{\mathrm{cALS}},\quad G_x^{\mathrm{cGD}},\quad \Xi
\]
are mutually independent. The setting's measurable orthonormalization makes each \(P_{\mathcal S_M}=Q_MQ_M^{\mathsf T}\), and hence each span represented by its projector, a measurable function of \(G_x^M\). Also \(T\) is a measurable function of \(\Xi\). Measurable images therefore give mutual independence of \(\mathcal S_{\mathrm{cALS}}\), \(\mathcal S_{\mathrm{cGD}}\), and \(T\).

To make the conditional statement exact, let \(\mu=\operatorname{Haar}_{k,n}\otimes\operatorname{Haar}_{k,n}\). For Borel sets \(A\subseteq\operatorname{Gr}(k,n)^2\) and \(B\subseteq\mathbb R^{n\times n\times n}\), mutual independence gives
\[
\mathbb P\bigl((\mathcal S_{\mathrm{cALS}},\mathcal S_{\mathrm{cGD}})\in A,\ T\in B\bigr)
=\mu(A)\,\mathbb P(T\in B)
=\int_B \mu(A)\,\mathbb P_T(dT_0).
\]
Thus the constant kernel \(T_0\mapsto\mu\) is a version of the conditional law for all \(T_0\). Finally, \(P_{\mathcal S_M}\), \(\mathcal H_M\), and \(P_{\mathcal H_M}\) are deterministic measurable functions of \(\mathcal S_M\), so the asserted independence properties pass to them as well. \(\square\)

### unit_003: lemma

**Lemma (First-factor membership lifts to tensor-span membership).** \label{lem:step-001-tensor-lift}

Under the definitions of \(S(X,Y,Z)\) and the fixed tensor subspace in `setting.md`, let \(Q\in\mathbb R^{n\times k}\) have orthonormal columns, set \(\mathcal S=\operatorname{range}(Q)\), and let
\[
\mathcal H=\mathcal S\otimes\mathbb R^n\otimes\mathbb R^n,
\qquad
P_{\mathcal H}=QQ^{\mathsf T}\otimes I_n\otimes I_n.
\]
If \(D\in\mathbb R^{k\times k}\), \(X=QD\), and \(Y,Z\in\mathbb R^{n\times k}\), then
\[
S(X,Y,Z)\in\mathcal H,
\qquad
P_{\mathcal H}S(X,Y,Z)=S(X,Y,Z),
\qquad
(I-P_{\mathcal H})S(X,Y,Z)=0.
\]

**Proof / justification.** Write \(D=[d_1,\ldots,d_k]\), so the \(i\)-th column of \(X\) is \(x_i=Qd_i\in\mathcal S\). For every \(i\),
\[
x_i\otimes y_i\otimes z_i
\in \mathcal S\otimes\mathbb R^n\otimes\mathbb R^n=\mathcal H.
\]
Because \(\mathcal H\) is a linear subspace, their sum \(S(X,Y,Z)\) also belongs to \(\mathcal H\). Since \(QQ^{\mathsf T}\) is the Euclidean orthogonal projector onto \(\mathcal S\), the tensor-product operator \(P_{\mathcal H}\) fixes each such rank-one term and therefore fixes their sum. The zero-leakage identity is the equivalent complementary-projector statement. \(\square\)

### unit_004: proposition

**Proposition (Exact fixed-span preservation for every defined iterate).** \label{prop:step-001-fixed-span}

Under Assumptions~\ref{assump:dimension}, \ref{assump:rank_window}, and \ref{assump:joint_initialization}, on the probability-one event in Lemma~\ref{lem:step-001-full-rank}, consider either formal algorithm from `setting.md`. For every index \(t\) at which the corresponding factors are defined, there is a matrix \(D_t^M\in\mathbb R^{k\times k}\) such that
\[
X_t^M=Q_MD_t^M.
\]
Consequently, by Lemma~\ref{lem:step-001-tensor-lift},
\[
S_t^M\in\mathcal H_M,
\qquad
P_{\mathcal H_M}S_t^M=S_t^M,
\qquad
(I-P_{\mathcal H_M})S_t^M=0
\]
for every defined iterate of cALS and cGD.

**Proof / justification.** Work on the simultaneous full-rank event. Then each \(Q_M\in\mathbb R^{n\times k}\) has orthonormal columns spanning \(\mathcal S_M\), and \(Q_MQ_M^{\mathsf T}\) is the orthogonal projector onto \(\mathcal S_M\).

For cALS, at initialization \(X_0^{\mathrm{cALS}}=G_x^{\mathrm{cALS}}\) and every column of this matrix belongs to \(\mathcal S_{\mathrm{cALS}}\) by definition of the span. Hence
\[
X_0^{\mathrm{cALS}}
=Q_{\mathrm{cALS}}Q_{\mathrm{cALS}}^{\mathsf T}G_x^{\mathrm{cALS}}
=Q_{\mathrm{cALS}}D_0^{\mathrm{cALS}},
\qquad
D_0^{\mathrm{cALS}}:=Q_{\mathrm{cALS}}^{\mathsf T}G_x^{\mathrm{cALS}}.
\]
Whenever the next cALS sweep is evaluated, its displayed constrained \(X\)-update is exactly
\[
X_{t+1}^{\mathrm{cALS}}
=Q_{\mathrm{cALS}}D_{t+1}^{\mathrm{cALS}},
\]
where the proof-local coefficient is
\[
D_{t+1}^{\mathrm{cALS}}
:=Q_{\mathrm{cALS}}^{\mathsf T}T_{(1)}K_t^x
\bigl((K_t^x)^{\mathsf T}K_t^x\bigr)^\dagger
\in\mathbb R^{k\times k}.
\]
The later \(Y\)- and \(Z\)-block updates do not change \(X_{t+1}^{\mathrm{cALS}}\). Therefore every cALS tensor recorded after a complete defined sweep has a first factor matrix with columns in the same fixed \(\mathcal S_{\mathrm{cALS}}\). No rank assumption on \(K_t^x\) is used: even for a singular or zero Gram matrix, the Moore--Penrose pseudoinverse exists and the update still has the exact left factor \(Q_{\mathrm{cALS}}\). Lemma~\ref{lem:step-001-tensor-lift} now gives \(S_t^{\mathrm{cALS}}\in\mathcal H_{\mathrm{cALS}}\) and zero leakage for every defined cALS index.

For cGD, the setting defines
\[
C_0=Q_{\mathrm{cGD}}^{\mathsf T}G_x^{\mathrm{cGD}}.
\]
As above, \(G_x^{\mathrm{cGD}}\) lies in the range of \(Q_{\mathrm{cGD}}\), so
\[
Q_{\mathrm{cGD}}C_0
=Q_{\mathrm{cGD}}Q_{\mathrm{cGD}}^{\mathsf T}G_x^{\mathrm{cGD}}
=G_x^{\mathrm{cGD}}
=X_0^{\mathrm{cGD}}.
\]
At any later index for which the Armijo rule has produced a coefficient triple, the algorithm defines, rather than merely estimates,
\[
X_t^{\mathrm{cGD}}=Q_{\mathrm{cGD}}C_t.
\]
Thus one may take \(D_t^{\mathrm{cGD}}=C_t\) at every defined cGD index. Updating \(C_t\), \(Y_t\), and \(Z_t\) can change coefficients and the unconstrained factors, but it never changes the fixed left basis \(Q_{\mathrm{cGD}}\). Lemma~\ref{lem:step-001-tensor-lift} therefore gives \(S_t^{\mathrm{cGD}}\in\mathcal H_{\mathrm{cGD}}\) and zero leakage at every defined cGD index.

This argument proves only membership at defined indices. It neither assumes nor proves that every dyadic line search terminates; that independent existence claim is the output of `step_005`. \(\square\)

### Boundary and degenerate cases

- **Dimension boundary:** equality \(k/n=1/8\) is allowed and still gives \(k<n\); no strict margin stronger than \(k<n\) is used here.
- **Gaussian rank failure:** failure has probability zero. All Haar and \(k\)-column \(Q_M\) statements are made on the simultaneous probability-one full-rank event, exactly as required by the target.
- **Choice of orthonormal basis:** the measurable map \(Q_M=\operatorname{orth}(G_x^M)\) may choose arbitrary signs or orientations. The proof claims that the span, not the particular basis matrix, is Haar. All membership statements are invariant under replacing \(Q_M\) by another orthonormal basis of the same span.
- **Singular or zero cALS design:** \((K_t^x)^{\mathsf T}K_t^x\) need not be invertible. Its pseudoinverse still exists, and the outside-span leakage remains exactly zero because the entire coefficient is left-multiplied by \(Q_{\mathrm{cALS}}\).
- **cGD line search not yet known to terminate:** if no next iterate is defined, this step makes no claim about that nonexistent index. Whenever an iterate is defined, its \(X\)-factor is exactly \(Q_{\mathrm{cGD}}C_t\). At a zero gradient, any accepted stationary update also preserves this representation.
- **Arbitrary, zero, or unbounded \(Y_t,Z_t\):** the factor-to-tensor implication uses only \(x_{t,i}\in\mathcal S_M\), so no rank, norm, or conditioning property of \(Y_t,Z_t\) is needed.
- **Zero target or exact/noiseless specialization:** the full-rank, Haar, independence, and fixed-span arguments do not use the value of \(T\). They remain exact when \(T=0\), when the smoothing variables take any realized value, or under a zero-smoothing/exact specialization.
- **Initialization and first transition:** at \(t=0\), \(X_0^M=Q_MD_0^M\). The first defined cALS update is explicitly \(Q_MD_1^M\), and the first defined cGD update changes \(C\) while retaining \(X_1=Q_MC_1\). Thus the conservation mechanism is active before any downstream fixed-witness argument is invoked.

## Target-Step Assembly

Lemma~\ref{lem:step-001-full-rank} proves, under exactly `assump:dimension`, `assump:rank_window`, and `assump:joint_initialization`, that both Gaussian \(X\)-initialization matrices have full column rank simultaneously with probability one. Lemma~\ref{lem:step-001-haar-independence} then uses their exact isotropic Gaussian law and the initialization independence protocol to prove that each resulting \(k\)-plane is Haar-uniform and independent of the shared tensor \(T\); it also exports the constant conditional product-Haar law needed by the shared-\(T\) calculation in `step_002`.

Independently of that distributional calculation, Proposition~\ref{prop:step-001-fixed-span}, using the exact lifting in Lemma~\ref{lem:step-001-tensor-lift}, inspects the two displayed algorithms. The constrained cALS \(X\)-update always has the form \(Q_{\mathrm{cALS}}D\), including at singular Khatri--Rao Gram matrices, and coefficient cGD defines every existing \(X\)-iterate as \(Q_{\mathrm{cGD}}C\). Hence every defined represented tensor satisfies
\[
S_t^M\in\mathcal H_M
\quad\text{and equivalently}\quad
(I-P_{\mathcal H_M})S_t^M=0.
\]
These statements are precisely the accepted `step_001` claim and output target. No generated invariant was assumed, no dependency step was used, and no claim about existence of all cGD iterates was imported from future work.

## Explicit Rate Audit

- Exposed variables: \(r,n,k\), through the exact admissibility implication
  \[
  r<k\le r^{5/4},\quad n\ge8r^{5/4}
  \quad\Longrightarrow\quad
  \frac{k}{n}\le\frac18<1.
  \]
  The dimension \(k\) of each Haar span is exact. The algorithmic output is exact zero leakage at every defined index \(t\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(r,n,k,q,\rho,T\), the deterministic bases, the smoothing realization, either initialization realization, the method, or the iterate index.
- Fixed quantities: for the Haar statement, \(n\) and \(k\) are fixed while the initialization is drawn. For the membership statement, the realized \(T\), initialization span, and fixed basis \(Q_M\) are held fixed while a defined algorithmic update is inspected.
- Probability mode: simultaneous almost sure full rank over the two Gaussian starts; exact Haar and independence in distribution; deterministic fixed-span membership on the probability-one full-rank event. The conditional law given \(T\) is represented by an exact constant product-Haar kernel, with no confidence loss.
- Horizon mode: horizon-uniform over every defined finite cALS or cGD iterate. This step deliberately does not upgrade the cGD statement to existence at every finite index.
- Norm mode: exact Euclidean subspace membership, equivalently zero tensor Frobenius leakage \(\|(I-P_{\mathcal H_M})S_t^M\|_F=0\).
- Admissibility conditions and auxiliary tolerances: only the displayed dimension/rank conditions; no tolerance, step-size lower bound, factor bound, or conditioning threshold is introduced.
- Term absorption or simplification inequalities: only \(k/n\le r^{5/4}/(8r^{5/4})=1/8\); no term is dropped or absorbed.
- Probability conversion: two individual probability-one rank statements are intersected by a finite union of null complements. Independence is used for the span/T law, not needed for the probability-one intersection.
- Contribution to any Rate Specialization Bridge: supplies the exact \(k\)-dimensional Haar projector source for `step_002` and exact all-defined-iterate zero leakage for `step_003`; the projected-energy expectation and the \(3/4\) residual margin are not claimed in this step.
- Baseline-reduction check: the certificate is independent of the value and construction details of \(T\) after the initialization-independence condition is fixed. It therefore remains exact at \(T=0\), in exact/noiseless or zero-smoothing specializations, at singular cALS designs, and at stationary cGD updates; no conservative loss is introduced.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined, public-facing objects: \(G_x^M\), \(Q_M\), \(\mathcal S_M\), \(P_{\mathcal S_M}\), \(\mathcal H_M\), \(P_{\mathcal H_M}\), \(S_t^M\), and the cGD coefficients \(C_t\) are all defined in `setting.md`. The exported public-facing interface is only: full rank almost surely, Haar/independence of the fixed spans, and \(S_t^M\in\mathcal H_M\) (equivalently zero leakage) for every defined iterate.
- `proof-local` helper objects:
  - the simultaneous full-rank event used in the prose of Lemma~\ref{lem:step-001-full-rank};
  - \(B_M\), the leading \(k\times k\) block used only for the determinant argument;
  - \(\Xi\), the aggregate smoothing-variable vector used only to express measurable-image independence;
  - \(D_t^{\mathrm{cALS}}\) and \(D_t^{\mathrm{cGD}}\), used only to display the exact \(Q_M\)-factor. These coefficients are not exported downstream.
- `appendix-local` objects: \(\operatorname{Gr}(k,n)\) and the notation \(\operatorname{Haar}_{k,n}\) name the standard Grassmannian and its invariant probability law. Downstream steps may use the conclusion that \(\mathcal S_M\) is Haar, but no auxiliary orientation or basis distribution is exported.
- Constant provenance: \(1/8\) is derived exactly from `assump:dimension` and `assump:rank_window`; no new free constant, radius, threshold, or bounded quantity is introduced.
- Assumption provenance:
  - full rank is a static derived fact proved by Lemma~\ref{lem:step-001-full-rank}, not a primitive trajectory assumption;
  - Haar law and independence are static derived facts proved by Lemma~\ref{lem:step-001-haar-independence};
  - fixed-span membership is a generated invariant proved algebraically by Proposition~\ref{prop:step-001-fixed-span}, not included in any good event or admissibility assumption;
  - the phrase "defined iterate" is a local target-scope condition and is not used to assume cGD line-search termination.
- Source/object mapping: the Gaussian source is the exact iid \(\mathcal N(0,1/n)\) matrix from the branch, the produced object is its Euclidean column span, and the consumed objects are the identical span, projector, and tensor subspace in `setting.md`. There is no whitening, reweighting, surrogate subspace, or residual transfer.
- Global diagnostic use: `global_proof.md` was read only after verifying that the paired `global_proof_review.md` has status `ACCEPTED`. Its step-relevant planning guidance was to separate the static Gaussian/Haar certificate from exact \(Q_M\)-factor conservation and to keep cGD membership scoped to defined iterates. The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the accepted target claim.
