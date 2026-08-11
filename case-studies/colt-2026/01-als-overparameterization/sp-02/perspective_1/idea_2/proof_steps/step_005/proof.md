# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove finite termination of every dyadic Armijo search, exact accepted-step descent, existence of all finite cGD iterates, and a finite limit of \(F_{\mathrm{cGD}}(t)\).
- Depends on: None.
- Assumptions used: None beyond the formal cGD algorithm and finite-dimensional setting.
- Technical challenge: Use only pointwise smoothness, without assuming global factor boundedness, a uniform Lipschitz constant, or a positive lower bound on step sizes.
- Intended proof tool or cited result: Direct polynomial \(C^2\) property, compact-segment Hessian bound, Taylor inequality, dyadic backtracking, and monotone convergence.
- Output target: cGD well-definedness and scalar-limit certificate.
- Rate objective: Objective B, namely all-time deterministic accepted descent and an asymptotic scalar limit, with no convergence rate and with the local Hessian bound excluded from the public interface.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Setting assumptions by stable id: None. No technical assumption from the list in setting.md is needed for this deterministic finite-dimensional argument.
- Primitive conditions: only the basic setup and the displayed coefficient-parameterized Armijo GD definition in setting.md are used. In particular, \(Q_{\mathrm{cGD}}\), \(T\), and the initial coefficient/factor triple are the finite real arrays supplied by that formal algorithm, and \(\eta_{\max}=1\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: units 001 and 002 condition only on the current coefficient state being finite. This condition is discharged for every finite index by the induction in Proposition~\ref{prop:step-005-well-defined}; it is not a theorem-facing boundedness assumption.

The proof does not assume that the trajectory is bounded, that the gradient is globally Lipschitz, that one Hessian bound works at two different iterations, or that \(\inf_t\eta_t>0\).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under the setting-defined coefficient objective, for every finite coefficient state \(u\), the gradient is finite and the Hessian is bounded on the current segment \(\{u-s\nabla f_Q(u):0\le s\le1\}\), yielding the stated one-step Taylor inequality. | Supplies pointwise, current-iterate smoothness without any global smoothness or trajectory-boundedness premise. |
| unit_002 | proposition | Under Lemma~\ref{lem:step-005-local-taylor}, if the current state is finite, then some finite dyadic trial is Armijo-acceptable, the first acceptable trial is therefore well-defined, its update is finite, and it satisfies the exact accepted-step decrease. | Proves one-step finite backtracking and descent, including zero-gradient and zero-Hessian-bound cases. |
| unit_003 | proposition | Under the formal finite initialization and Proposition~\ref{prop:step-005-armijo}, every finite-index coefficient GD iterate and accepted step size is well-defined and finite, and the accepted-step inequality holds at every iteration. | Closes the local finiteness hypothesis by induction and exports all-finite-index well-definedness. |
| unit_004 | proposition | Under Proposition~\ref{prop:step-005-well-defined}, the actual cGD objective is finite, nonnegative, and nonincreasing, its accepted decreases telescope against \(F_{\mathrm{cGD}}(0)\), and it converges to a finite scalar limit. | Proves monotonicity and the required scalar-limit certificate. |

Atomic step = no. Pointwise Taylor control, finite trial acceptance, inductive iterate existence, and scalar convergence are logically distinct claims and are exposed separately.

## Cited Result Applications

No external paper result is used.

### Finite-dimensional compactness and continuous boundedness

- Source or name: continuous-image compactness and the extreme-value property in finite-dimensional Euclidean space.
- Restated statement: if \(\gamma:[0,1]\to\mathbb R^d\) is continuous, then \(\gamma([0,1])\) is compact; if \(h\) is continuous on that compact set, then \(\max h\) exists and is finite.
- Instantiated objects: \(\gamma(s)=u-s\nabla f_Q(u)\) and \(h(v)=\|\nabla^2 f_Q(v)\|_{\mathrm{op}}\), after identifying the product matrix space with a finite-dimensional Euclidean space.
- Assumptions and discharge: the interval \([0,1]\) is compact; the segment map is continuous because \(u\) and \(\nabla f_Q(u)\) are finite; the Hessian and its operator norm are continuous because \(f_Q\) is a polynomial.
- Conclusion used: the current-segment Hessian bound in Lemma~\ref{lem:step-005-local-taylor} is finite.

### One-dimensional Taylor formula with integral remainder

- Source or name: the fundamental theorem of calculus applied twice.
- Restated statement: if \(\phi\in C^2([0,\eta])\), then
  \[
  \phi(\eta)=\phi(0)+\eta\phi'(0)
  +\int_0^\eta(\eta-s)\phi''(s)\,ds.
  \]
- Instantiated objects: \(\phi(s)=f_Q(u-sg)\), where \(g=\nabla f_Q(u)\), and \(0\le\eta\le1\).
- Assumptions and discharge: \(f_Q\) is polynomial and hence \(C^2\); the entire line segment lies in its Euclidean domain.
- Conclusion used: the local descent inequality in Lemma~\ref{lem:step-005-local-taylor}.

### Bounded monotone real sequences

- Source or name: completeness of the real numbers.
- Restated statement: a nonincreasing real sequence bounded below converges to its infimum.
- Instantiated objects: the sequence \(F_{\mathrm{cGD}}(t)\).
- Assumptions and discharge: Proposition~\ref{prop:step-005-scalar-limit} proves directly that every term is finite, that \(F_{\mathrm{cGD}}(t+1)\le F_{\mathrm{cGD}}(t)\), and that \(F_{\mathrm{cGD}}(t)\ge0\). The proof below also gives the infimum argument explicitly.
- Conclusion used: existence and finiteness of \(\lim_{t\to\infty}F_{\mathrm{cGD}}(t)\).

### Local result applications

- Lemma~\ref{lem:step-005-local-taylor} is restated in unit_001 and supplies the exact Taylor bound used by Proposition~\ref{prop:step-005-armijo}.
- Proposition~\ref{prop:step-005-armijo} is restated in unit_002 and supplies finite one-step acceptance and a finite update to Proposition~\ref{prop:step-005-well-defined}.
- Proposition~\ref{prop:step-005-well-defined} is restated in unit_003 and supplies all-time finite-index existence and accepted descent to Proposition~\ref{prop:step-005-scalar-limit}.
- Proposition~\ref{prop:step-005-scalar-limit} is restated in unit_004 and supplies the monotonicity and finite scalar limit used in the target-step assembly.

## Local Derivation

Fix \(Q=Q_{\mathrm{cGD}}\) and abbreviate
\[
f_Q(C,Y,Z)=F(QC,Y,Z).
\]
Work on the finite-dimensional product space
\[
\mathcal U
=\mathbb R^{k\times k}\times\mathbb R^{n\times k}
\times\mathbb R^{n\times k}
\]
with inner product
\[
\langle (C,Y,Z),(C',Y',Z')\rangle_{\mathcal U}
=\langle C,C'\rangle_F+\langle Y,Y'\rangle_F+\langle Z,Z'\rangle_F
\]
and its induced norm. This is exactly the block Frobenius gradient norm specified in setting.md.

### unit_001: lemma

**Lemma (Pointwise Taylor control for the coefficient CP loss).**
\(\label{lem:step-005-local-taylor}\)
Under the setting-defined finite-dimensional coefficient objective \(f_Q\), if \(u=(C,Y,Z)\in\mathcal U\) is finite and \(g=\nabla f_Q(u)\), then \(g\) is finite and
\[
L(u):=\max_{0\le s\le1}
\left\|\nabla^2 f_Q(u-sg)\right\|_{\mathrm{op}}<\infty.
\]
Moreover, for every \(0\le\eta\le1\),
\[
f_Q(u-\eta g)
\le f_Q(u)-\eta\|g\|_{\mathcal U}^2
+\frac{L(u)\eta^2}{2}\|g\|_{\mathcal U}^2.
\tag{5.1}
\]

**Proof / justification.**
For tensor indices \(a,b,c\),
\[
S(QC,Y,Z)_{abc}
=\sum_{i=1}^k\sum_{\ell=1}^k
Q_{a\ell}C_{\ell i}Y_{bi}Z_{ci}.
\]
Thus every entry of \(T-S(QC,Y,Z)\) is a polynomial in the entries of \((C,Y,Z)\), and
\[
f_Q(C,Y,Z)
=\frac12\sum_{a,b,c}
\bigl(T-S(QC,Y,Z)\bigr)_{abc}^2
\]
is a finite polynomial. Consequently \(f_Q\) is \(C^2\), and its gradient and Hessian have finite entries at every finite state. In particular, \(g\) is finite.

The map \(s\mapsto u-sg\) sends \([0,1]\) continuously onto a compact segment. Since \(v\mapsto\|\nabla^2f_Q(v)\|_{\mathrm{op}}\) is continuous, its maximum on this segment exists and is finite. This proves the asserted property of \(L(u)\).

For \(0\le\eta\le1\), define \(\phi(s)=f_Q(u-sg)\). Then
\[
\phi'(0)=-\|g\|_{\mathcal U}^2,\qquad
\phi''(s)=\left\langle
g,\nabla^2f_Q(u-sg)g
\right\rangle_{\mathcal U}.
\]
Taylor's integral formula and the definition of \(L(u)\) give
\[
\begin{aligned}
f_Q(u-\eta g)
&=f_Q(u)-\eta\|g\|_{\mathcal U}^2
+\int_0^\eta(\eta-s)
\left\langle g,\nabla^2f_Q(u-sg)g\right\rangle_{\mathcal U}\,ds\\
&\le f_Q(u)-\eta\|g\|_{\mathcal U}^2
+\int_0^\eta(\eta-s)L(u)\|g\|_{\mathcal U}^2\,ds,
\end{aligned}
\]
which is exactly (5.1). \(\square\)

### unit_002: proposition

**Proposition (Finite dyadic Armijo acceptance at a finite state).**
\(\label{prop:step-005-armijo}\)
Under Lemma~\ref{lem:step-005-local-taylor}, if \(u\in\mathcal U\) is finite, \(g=\nabla f_Q(u)\), and the line search tests \(\eta_j=2^{-j}\) for \(j=0,1,2,\ldots\), then an acceptable trial occurs at a finite index. Hence the first acceptable trial \(\eta\) is well-defined, \(u^+=u-\eta g\) is finite, and
\[
f_Q(u^+)
\le f_Q(u)-\frac{\eta}{2}\|g\|_{\mathcal U}^2.
\tag{5.2}
\]

**Proof / justification.**
If \(g=0\), then the first trial \(\eta_0=1\) gives \(u-\eta_0g=u\), and its Armijo condition is the equality \(f_Q(u)\le f_Q(u)\). Thus the search terminates immediately.

Suppose \(g\ne0\), and write \(L=L(u)<\infty\). If \(L=0\), take \(j=0\). If \(L>0\), take
\[
j_*=\max\{0,\lceil\log_2 L\rceil\}.
\]
This is a finite nonnegative integer, and the trial
\(\eta_*=2^{-j_*}\) satisfies \(0<\eta_*\le1\) and
\(L\eta_*\le1\). In the case \(L=0\), the same two inequalities hold with \(\eta_*=1\). Lemma~\ref{lem:step-005-local-taylor} therefore yields
\[
\begin{aligned}
f_Q(u-\eta_*g)
&\le f_Q(u)-\eta_*\|g\|_{\mathcal U}^2
+\frac{L\eta_*^2}{2}\|g\|_{\mathcal U}^2\\
&=f_Q(u)-\eta_*
\left(1-\frac{L\eta_*}{2}\right)\|g\|_{\mathcal U}^2\\
&\le f_Q(u)-\frac{\eta_*}{2}\|g\|_{\mathcal U}^2.
\end{aligned}
\]
Hence a trial no later than \(j_*\) is acceptable. The algorithm chooses the first acceptable trial, so its search terminates after finitely many tests and its chosen \(\eta\) satisfies (5.2) by the acceptance rule. Finally, \(u\), \(g\), and \(\eta\) are finite, so \(u^+=u-\eta g\) is finite. \(\square\)

### unit_003: proposition

**Proposition (Well-defined coefficient GD iterates at every finite index).**
\(\label{prop:step-005-well-defined}\)
Under the formal coefficient-parameterized cGD initialization in setting.md and Proposition~\ref{prop:step-005-armijo}, for every integer \(t\ge0\), the state
\[
u_t=(C_t,Y_t,Z_t)
\]
is finite, the dyadic line search terminates at a finite accepted index, \(\eta_t\in(0,1]\) is well-defined, and
\[
u_{t+1}=u_t-\eta_t\nabla f_Q(u_t)
\]
is finite. Moreover, for every \(t\ge0\),
\[
f_Q(u_{t+1})
\le f_Q(u_t)
-\frac{\eta_t}{2}\|\nabla f_Q(u_t)\|_{\mathcal U}^2.
\tag{5.3}
\]
Consequently \(X_t=QC_t\) and the represented tensor are defined at every finite index.

**Proof / justification.**
The formal initialization
\[
u_0=\bigl(Q^{\mathsf T}G_x^{\mathrm{cGD}},
G_y^{\mathrm{cGD}},G_z^{\mathrm{cGD}}\bigr)
\]
belongs to \(\mathcal U\) and is finite on the probability-one domain on which the setting-defined cGD algorithm is instantiated.

Assume inductively that \(u_t\) is finite. Proposition~\ref{prop:step-005-armijo} applies at \(u_t\): the gradient is finite, a finite dyadic trial index is accepted, and the resulting \(u_{t+1}\) is finite and satisfies (5.3). This proves the assertion for all finite \(t\) by induction. Since \(Q\) is fixed and finite, \(X_t=QC_t\) is finite whenever \(C_t\) is finite, and all quantities used by the next iteration are therefore well-defined. \(\square\)

### unit_004: proposition

**Proposition (Monotone actual objectives and finite scalar convergence).**
\(\label{prop:step-005-scalar-limit}\)
Under Proposition~\ref{prop:step-005-well-defined}, for every \(t\ge0\),
\[
0\le F_{\mathrm{cGD}}(t+1)
\le F_{\mathrm{cGD}}(t)<\infty.
\tag{5.4}
\]
For every integer \(N\ge1\),
\[
0\le
\sum_{t=0}^{N-1}
\frac{\eta_t}{2}
\|\nabla f_Q(u_t)\|_{\mathcal U}^2
\le F_{\mathrm{cGD}}(0)-F_{\mathrm{cGD}}(N)
\le F_{\mathrm{cGD}}(0).
\tag{5.5}
\]
The finite scalar
\[
L_{\mathrm{cGD}}
:=\inf_{t\ge0}F_{\mathrm{cGD}}(t)
\in[0,F_{\mathrm{cGD}}(0)]
\]
satisfies
\[
\lim_{t\to\infty}F_{\mathrm{cGD}}(t)
=L_{\mathrm{cGD}}.
\tag{5.6}
\]

**Proof / justification.**
The identity defining the coefficient objective is exact:
\[
f_Q(u_t)
=F(QC_t,Y_t,Z_t)
=F_{\mathrm{cGD}}(t).
\tag{5.7}
\]
The objective is one half of a squared Frobenius norm, so it is nonnegative. It is finite at each finite state because it is a finite polynomial. Substituting (5.7) into (5.3) proves (5.4). Summing (5.3) from \(t=0\) to \(N-1\) telescopes and gives (5.5).

Because the sequence is nonincreasing and bounded below by zero, its infimum \(L_{\mathrm{cGD}}\) is finite. For any \(\varepsilon>0\), the definition of the infimum gives an \(N\) such that
\[
F_{\mathrm{cGD}}(N)<L_{\mathrm{cGD}}+\varepsilon.
\]
For every \(t\ge N\), monotonicity then gives
\[
L_{\mathrm{cGD}}
\le F_{\mathrm{cGD}}(t)
\le F_{\mathrm{cGD}}(N)
<L_{\mathrm{cGD}}+\varepsilon.
\]
This proves (5.6).

The zero-gradient and zero-objective boundaries are compatible with the same conclusion. If \(\nabla f_Q(u_t)=0\), the first trial is accepted and \(u_{t+1}=u_t\). If \(f_Q(u_t)=0\), nonnegativity and differentiability force \(\nabla f_Q(u_t)=0\): otherwise
\[
f_Q(u_t-s\nabla f_Q(u_t))
=-s\|\nabla f_Q(u_t)\|_{\mathcal U}^2+o(s)<0
\]
for all sufficiently small \(s>0\), a contradiction. Thus an exact zero objective remains zero. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-005-local-taylor} proves that every finite current state has its own finite Hessian bound on the single search segment generated by its current gradient. Proposition~\ref{prop:step-005-armijo} converts that pointwise bound into a finite acceptable dyadic trial and the exact Armijo decrease. Proposition~\ref{prop:step-005-well-defined} inductively applies this one-step result from the finite formal initialization, proving that every finite-index coefficient iterate, accepted step size, \(X_t=QC_t\), and represented tensor is well-defined. Proposition~\ref{prop:step-005-scalar-limit} uses the exact identity \(f_Q(C,Y,Z)=F(QC,Y,Z)\) to transfer the accepted coefficient decrease to the actual tensor objective, proves monotonicity and the finite telescoping budget, and then proves convergence to the finite infimum \(L_{\mathrm{cGD}}\).

This establishes the exact sketch-row claim. The proof never compares Hessian bounds from different iterations. The proof-local numbers \(L(u_t)\) may grow without bound, the accepted \(\eta_t\) may tend to zero, and the factors may be unbounded over time; none of these possibilities affects finite termination at a fixed finite iterate or convergence of the nonnegative scalar objective.

## Explicit Rate Audit

- Exposed variables: finite iteration indices \(t,N\), the setting-defined accepted step \(\eta_t\), and the exact Armijo coefficient \(1/2\). No convergence rate in \(t\) and no quantitative dependence on \(r,n,k,q,\rho\) is claimed.
- Hidden constants may depend on: none. The proof-local current-segment number \(L(u_t)\) may depend on \(T,Q,u_t\), but it is neither hidden in nor exported by the step conclusion.
- Hidden constants may not depend on: not applicable because no hidden theorem constant is used.
- Fixed quantities: for the deterministic pathwise argument, \(T\), \(Q\), and the finite initialization are fixed.
- Probability mode: deterministic on every finite realization in the formal algorithm's probability-one domain; no probabilistic event or concentration estimate is used.
- Horizon mode: all finite indices for line-search termination, iterate existence, and monotonicity; asymptotic for the scalar limit.
- Norm mode: the product Frobenius norm for the coefficient gradient and the tensor Frobenius norm in \(F_{\mathrm{cGD}}\).
- Admissibility conditions and auxiliary tolerances: \(\eta_t\in\{2^{-j}:j\ge0\}\), with \(\eta_{\max}=1\); there is no auxiliary tolerance.
- Term absorption or simplification inequalities:
  \[
  L(u_t)\eta\le1
  \quad\Longrightarrow\quad
  -\eta+\frac{L(u_t)\eta^2}{2}
  \le-\frac{\eta}{2}.
  \]
  A finite dyadic trial satisfying this inequality is constructed in Proposition~\ref{prop:step-005-armijo}.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: None; this step exports well-definedness and scalar convergence, not a rate.
- Baseline-reduction check: the proof is unchanged at \(T=0\), and whenever the objective reaches zero its gradient is zero, the first trial is accepted, and the zero objective is preserved exactly.

## Blockers

None.

## Notation And Assumption Notes

- \(Q\) abbreviates the setting-defined \(Q_{\mathrm{cGD}}\), and \(f_Q\) is the setting-defined coefficient objective. These are setting-defined expressions; \(Q\) is appendix-local shorthand.
- \(\mathcal U\) and its product Frobenius inner product are appendix-local notation used only to express the exact block-gradient geometry already specified in setting.md.
- \(u=(C,Y,Z)\), \(u_t\), and \(g=\nabla f_Q(u)\) are proof-local abbreviations expressed directly in setting notation.
- The current segment \(\{u-sg:0\le s\le1\}\), \(L(u)\), and the finite trial index \(j_*\) are proof-local objects. The segment is defined from the current finite state; finiteness of \(L(u)\) is proved by Lemma~\ref{lem:step-005-local-taylor}; \(j_*\) is explicitly constructed from \(L(u)\) in Proposition~\ref{prop:step-005-armijo}. None is a theorem-facing bounded quantity.
- \(\eta_t\) is a setting-defined algorithmic quantity. No positive all-time lower bound on \(\eta_t\) is introduced or used.
- \(L_{\mathrm{cGD}}\) is the sole new public-facing object. Its finiteness and identity as the scalar objective limit are proved by Proposition~\ref{prop:step-005-scalar-limit}.
- The constants \(1\) and \(1/2\) come directly from \(\eta_{\max}=1\) and the displayed Armijo rule. No free radius, margin, threshold, or stability constant is introduced.
- Finiteness of a current state is used only as a local conditional hypothesis in units 001 and 002 and is discharged at every finite index by Proposition~\ref{prop:step-005-well-defined}. Objective monotonicity, line-search termination, iterate existence, and scalar convergence are derived conclusions, not assumptions.
- No event, recurrence assumption, factor bound, trajectory compactness, global Lipschitz constant, uniform Hessian bound, step-size lower bound, or parameter convergence statement is used.
- The accepted global diagnostic was read only after confirming that global_proof_review.md has status ACCEPTED. Its step-relevant planning idea was to bound the Hessian on the current compact search segment and absorb the Taylor remainder using \(L(u_t)\eta_t\le1\). The diagnostic was not used as proof evidence, a cited result, an assumption source, or authority to change the target claim.
