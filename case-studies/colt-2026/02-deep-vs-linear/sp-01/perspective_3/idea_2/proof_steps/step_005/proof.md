# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1

## Target Step Claim

Fix $h\in\mathcal H$ and define

\[
Q_h=\{q\in\mathcal X:h(q)=-s_0\},
\qquad
Z_h=\{h(q)q:q\in Q_h\}\subset\mathbb R^n.
\]

Assume, as a local conditional hypothesis, that the strict system supplied by
step_004 is infeasible:

\[
\nexists w\in\mathbb R^n\quad
\text{such that}\quad
\langle w,z\rangle>0\quad\text{for every }z\in Z_h
\]

(equivalently, there is no $w$ with
$h(q)\langle w,q\rangle>0$ for every $q\in Q_h$).  Prove, from this
infeasibility and finite Euclidean geometry, that there are distinct
$q_1,\ldots,q_k\in Q_h$, coefficients $\alpha_1,\ldots,\alpha_k>0$, and an
integer $1\le k\le n+1$ such that

\[
\sum_{i=1}^k\alpha_i=1,
\qquad
\sum_{i=1}^k\alpha_i h(q_i)q_i=0.
\]

For the uniform distribution $\mathcal D_h^\star$ on these $k$ representatives,
prove that every homogeneous identity-coordinate score has tie-resolved error
at least

\[
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle w,x\rangle)
\ge \frac1k\ge\frac1{n+1}
\qquad\text{for every }w\in\mathbb R^n.
\]

The proof must derive the certificate rather than assume it, retain positive
coefficients after support pruning, and explicitly handle zero coefficients,
duplicate or discarded support points, non-strict inner products, $w=0$,
$k=1$, $k=n+1$, $n=1$, and both values of the source tie label.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting has $n\ge1$, $\mathcal X=\{-1,+1\}^n$, a fixed
    $s_0\in\{-1,+1\}$, and the tie-resolved map
    $\operatorname{sign}_{s_0}$ from setting.md.
  - Assumption~\ref{assump:antipodal-oddness}, used through the accepted
    step_004 interface
    to identify one representative of each antipodal pair and its label
    $-s_0$.
- Derived invariants supplied by accepted dependencies:
  - perspective_3/idea_2/proof_steps/step_004/proof.md, with its accepted
    review perspective_3/idea_2/proof_steps/step_004/review.md.  We use
    Lemma~\ref{lem:step-004-representatives} (the sets
    $\{q,-q\}$, $q\in Q_h$, partition $\mathcal X$) and
    Lemma~\ref{lem:step-004-pairwise-strictness} (exact homogeneous
    correctness is equivalent to strict positivity on $Q_h$).
- Local conditional hypotheses:
  - $h\in\mathcal H$ is fixed for this step.
  - The strict system on $Z_h$ is infeasible.  This is a temporary
    contradiction-side hypothesis, not a theorem-facing assumption; step_006
    discharges it using the quantitative upper bound and the high-accuracy
    condition.

No conclusion about a generated SGD trajectory, a good event, a margin, or a
probability event is assumed here.  Steps 001--003 are not needed for this
conditional structural obstruction.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under the finite setting and the local infeasibility hypothesis, the minimum-norm point of the finite convex hull of $Z_h$ is $0$, so $0$ has a nonnegative convex representation by vectors in $Z_h$. | Derives the Gordan-type zero certificate directly from closest-point geometry. |
| unit_002 | lemma | Given any finite nonnegative convex representation of $0$, remove zero coefficients and merge duplicate vectors, then use affine dependence of more than $n+1$ augmented vectors to obtain a representation with distinct support, strictly positive coefficients, unit coefficient sum, and support size at most $n+1$. | Supplies the dimension-controlled positive certificate and handles support bookkeeping. |
| unit_003 | lemma | A positive unit-sum zero certificate forces, for every $w$, at least one support vector to have nonpositive inner product with $w$. | Converts convex cancellation into a non-strict signed witness, including $w=0$. |
| unit_004 | proposition | On the uniform distribution over the corresponding $q_i$'s, any such nonpositive signed product is a tie-resolved classification error, so the risk is at least $1/k\ge1/(n+1)$. | Exports the exact distribution-level lower bound consumed by step_006. |

Atomic step = no: the closest-point alternative, coefficient-preserving support
pruning, cancellation implication, and tie-aware risk conversion are independent
nontrivial claims and are named separately above.

## Cited Result Applications

### Accepted dependency: strict-system interface from step_004

The accepted dependency restates the following in the current notation.  Under
the basic cube setting and Assumption~\ref{assump:antipodal-oddness}, for fixed $h$,
$Q_h=\{q:h(q)=-s_0\}$ contains exactly one point from every pair
$\{x,-x\}$, and

\[
\bigl[\exists w\ \forall x\in\mathcal X,\ 
  \operatorname{sign}_{s_0}(\langle w,x\rangle)=h(x)\bigr]
\Longleftrightarrow
\bigl[\exists w\ \forall q\in Q_h,\ 
  h(q)\langle w,q\rangle>0\bigr].
\]

The first statement supplies that $Q_h$ is finite and nonempty (there is one
representative per two-point antipodal orbit); the second identifies the local
infeasibility hypothesis with the absence of a vector having positive inner
product with every $z=h(q)q$.  The dependency proof and review explicitly check
both tie labels and the zero-score boundary.  No later step is used as evidence.

### Elementary finite-dimensional facts (restated)

No external paper theorem is invoked.  We use only the following elementary
facts, stated here in full so that their use is checkable.

1. For $r\ge1$, the simplex
   $\Delta_r=\{\lambda\in\mathbb R^r:\lambda_j\ge0,\ \sum_j\lambda_j=1\}$
   is nonempty and compact, and every continuous real-valued function on a
   nonempty compact set attains its minimum.  The map
   $\lambda\mapsto\|\sum_j\lambda_jz_j\|_2$ is continuous, so it has a
   minimizer on $\Delta_r$.
2. If $k>n+1$, the vectors $(u_i,1)\in\mathbb R^{n+1}$,
   $1\le i\le k$, are linearly dependent.  Equivalently, there is a nonzero
   $\gamma\in\mathbb R^k$ with
   $\sum_i\gamma_i u_i=0$ and $\sum_i\gamma_i=0$.  This is the defining
   dimension statement that more than $n+1$ vectors in an
   $(n+1)$-dimensional vector space cannot be linearly independent.

These facts are applied only to the finite sets explicitly defined below; no
uncited alternative theorem is imported.

### Local result applications

- Proposition~\ref{prop:step-005-closest-point}: Under the finite cube
  setting, the accepted step_004 representative interface, and the local
  hypothesis that no vector is strictly positive on all of $Z_h$, the
  proposition produces nonnegative coefficients summing to one whose weighted
  sum of signed vectors is zero.  Finiteness and nonemptiness come from the
  accepted dependency; infeasibility is the declared local conditional
  hypothesis.  This result is consumed by the support-pruning lemma.
- Lemma~\ref{lem:step-005-support-pruning}: Given any finite nonnegative
  unit-sum zero representation in $\mathbb R^n$, the lemma produces a subset
  representation with distinct support, positive coefficients, and at most
  $n+1$ points.  Its only assumptions are the certificate from the preceding
  proposition and the ambient dimension $n$.  This result is consumed by the
  signed-cancellation lemma and the target-step assembly.
- Lemma~\ref{lem:step-005-signed-cancellation}: Given positive coefficients
  and an exact weighted zero identity, the lemma proves that every $w$ has a
  nonpositive inner product with at least one support vector.  Its assumptions
  are supplied by the support-pruning lemma.  This result is consumed by the
  uniform-obstruction proposition.
- Proposition~\ref{prop:step-005-uniform-obstruction}: Under the fixed source
  tie convention, the accepted fact that every $q_i\in Q_h$ has label $-s_0$,
  and the positive certificate, the proposition defines the uniform witness
  distribution and proves error at least $1/k\ge1/(n+1)$ for every homogeneous
  score.  This is the public-facing conclusion consumed by step_006.

## Local Derivation

Fix $h\in\mathcal H$ under the local infeasibility hypothesis.  By the accepted
step_004 representative lemma, $Q_h$ is finite and nonempty.  Write
$Q_h=\{q_1^0,\ldots,q_r^0\}$ (the superscript $0$ distinguishes this initial
enumeration from the pruned support), and set

\[
z_j=h(q_j^0)q_j^0\in Z_h,\qquad 1\le j\le r.
\]

Every $z_j$ is nonzero because $q_j^0\in\{-1,+1\}^n$ and $n\ge1$, so
$\|z_j\|_2=\sqrt n$.  The notation $r$, $z_j$, and the convex-hull bookkeeping
below is proof-local unless explicitly exported by a named result.

### unit_001: proposition

Statement (Finite closest-point certificate).
\label{prop:step-005-closest-point}

Under Assumption~\ref{assump:antipodal-oddness}, the accepted step_004
representative interface, and the local hypothesis that no
$w\in\mathbb R^n$ satisfies
$\langle w,z_j\rangle>0$ for every $1\le j\le r$, there are coefficients
$\lambda_1,\ldots,\lambda_r\ge0$ with $\sum_j\lambda_j=1$ and

\[
\sum_{j=1}^r\lambda_jz_j=0.
\]

Proof / justification:

Let

\[
\Delta_r=\{\lambda\in\mathbb R^r:\lambda_j\ge0,\ \sum_{j=1}^r\lambda_j=1\},
\qquad
C=\left\{\sum_{j=1}^r\lambda_jz_j:\lambda\in\Delta_r\right\}.
\]

The simplex is nonempty (for example, the first coordinate vector belongs to
it), and the elementary compactness fact stated above gives a minimizer
$\lambda^\star\in\Delta_r$ of
$\lambda\mapsto\|\sum_j\lambda_jz_j\|_2$.  Put

\[
p=\sum_{j=1}^r\lambda_j^\star z_j\in C.
\]

For any fixed $j$ and $t\in(0,1]$, the point

\[
p_t=(1-t)p+t z_j=p+t(z_j-p)
\]

belongs to $C$: if $\lambda^\star$ is the coefficient vector for $p$, then
$p_t=\sum_\ell[(1-t)\lambda_\ell^\star+t\mathbf 1\{\ell=j\}]z_\ell$,
whose coefficients are nonnegative and sum to one.  (In particular,
$z_j\in C$ by taking the $j$th simplex vertex.)  Minimality of $p$ gives

\[
0\le\|p_t\|_2^2-\|p\|_2^2
=2t\langle p,z_j-p\rangle+t^2\|z_j-p\|_2^2.
\]

After division by $t>0$,

\[
2\langle p,z_j-p\rangle+t\|z_j-p\|_2^2\ge0.
\]

Letting $t\downarrow0$ yields

\[
\langle p,z_j-p\rangle\ge0,
\qquad\text{hence}\qquad
\langle p,z_j\rangle\ge\|p\|_2^2
\quad (1\le j\le r).
\tag{5.1}
\]

If $p\ne0$, then (5.1) says that the single vector $w=p$ has
$\langle w,z_j\rangle\ge\|p\|_2^2>0$ for every $j$, contradicting the local
infeasibility hypothesis.  Consequently $p=0$, and the minimizing coefficients
$\lambda_j^\star$ give the claimed nonnegative unit-sum certificate.  This also
covers the case where the closest point is already the origin; no strict
separator is then asserted.

### unit_002: lemma

Statement (Positive support pruning with an $n+1$ bound).
\label{lem:step-005-support-pruning}

Suppose a finite list $u_1,\ldots,u_R\in\mathbb R^n$ has coefficients
$\rho_j\ge0$ satisfying $\sum_j\rho_j=1$ and
$\sum_j\rho_ju_j=0$.  Then there are distinct vectors
$\widetilde u_1,\ldots,\widetilde u_k$ drawn from the original list and
coefficients $\alpha_i>0$ such that

\[
1\le k\le n+1,
\qquad
\sum_{i=1}^k\alpha_i=1,
\qquad
\sum_{i=1}^k\alpha_i\widetilde u_i=0.
\]

If each $u_j=h(q_j)q_j$ for a $q_j\in Q_h$, retain one such $q_j$ for each
distinct $\widetilde u_i$; then the resulting support points are a subset of
$Q_h$ and satisfy $\widetilde u_i=h(q_i)q_i$.

Proof / justification:

First remove every index with $\rho_j=0$.  At least one coefficient remains
because their sum is one.  If the remaining list contains duplicate vector
values, group all equal copies: for each distinct value $u$, replace their
coefficients by the sum of the grouped coefficients.  The new coefficients are
strictly positive, their total remains one, and the vector sum remains zero.
Choose one original $q_j$ for each grouped value when the list comes from
$Z_h$; discarding the other copies only changes the bookkeeping, not the vector
identity.  Relabel the resulting distinct support as
$u_1,\ldots,u_{k_0}$, with coefficients
$\beta_i>0$, $\sum_i\beta_i=1$, and $\sum_i\beta_i u_i=0$.

If $k_0\le n+1$, set $k=k_0$ and stop.  Otherwise, the augmented vectors
$y_i=(u_i,1)\in\mathbb R^{n+1}$ are linearly dependent by the elementary
dimension fact stated above.  Thus there is a nonzero vector
$\gamma\in\mathbb R^{k_0}$ such that

\[
\sum_i\gamma_i u_i=0,
\qquad
\sum_i\gamma_i=0.
\tag{5.2}
\]

Because $\gamma\ne0$ and its coordinates sum to zero, it has at least one
positive and at least one negative coordinate.  Let
$I_+=\{i:\gamma_i>0\}$ and define

\[
\tau=\min_{i\in I_+}\frac{\beta_i}{\gamma_i}>0,
\qquad
\beta_i'=\beta_i-\tau\gamma_i.
\]

For $i\in I_+$, the definition of $\tau$ gives $\beta_i'\ge0$ and makes at
least one of them zero.  For $\gamma_i<0$,
$\beta_i'=\beta_i+\tau|\gamma_i|>0$, and for $\gamma_i=0$,
$\beta_i'=\beta_i>0$.  Hence all new coefficients are nonnegative and at least
one support index is removed after deleting zeros.  Using (5.2),

\[
\sum_i\beta_i'=\sum_i\beta_i-\tau\sum_i\gamma_i=1,
\qquad
\sum_i\beta_i'u_i=\sum_i\beta_i u_i-\tau\sum_i\gamma_i u_i=0.
\]

Relabel the positive coefficients and repeat.  Each repetition strictly lowers
the finite support size, so after finitely many repetitions the process stops
with $k\le n+1$, all coefficients positive, and the two displayed identities
preserved.  This is a genuine subset-pruning operation: no new vector is
introduced, and every removed coefficient is exactly zero at the moment it is
discarded.

The formal possibility $k=1$ is covered by the construction and identities.  In
the present application it cannot actually occur, since a one-point certificate
would give $\widetilde u_1=0$, whereas every vector in $Z_h$ has norm
$\sqrt n>0$.  This observation is not needed for the lower bound, which remains
valid if a singleton certificate is considered abstractly.

### unit_003: lemma

Statement (Signed cancellation forces a nonpositive witness).
\label{lem:step-005-signed-cancellation}

Under vectors $z_1,\ldots,z_k\in\mathbb R^n$ and the positive certificate

\[
\alpha_i>0,
\qquad
\sum_{i=1}^k\alpha_i=1,
\qquad
\sum_{i=1}^k\alpha_i z_i=0,
\]

for any $w\in\mathbb R^n$ there is an index $i$ with
$\langle w,z_i\rangle\le0$.

Proof / justification:

Taking the inner product with $w$ gives the exact finite identity

\[
0=\left\langle w,\sum_{i=1}^k\alpha_i z_i\right\rangle
=\sum_{i=1}^k\alpha_i\langle w,z_i\rangle.
\tag{5.3}
\]

If every term $\langle w,z_i\rangle$ were strictly positive, then each
$\alpha_i\langle w,z_i\rangle>0$ because $\alpha_i>0$, and their finite sum
would be strictly positive, contradicting (5.3).  Therefore at least one term
is nonpositive.  The conclusion includes $w=0$, for which every term is zero,
and it includes both strictly negative and equality cases without silently
replacing $\le0$ by a strict inequality.

### unit_004: proposition

Statement (Uniform tie-aware obstruction).
\label{prop:step-005-uniform-obstruction}

Under the accepted representative interface, let distinct
$q_1,\ldots,q_k\in Q_h$ and coefficients $\alpha_i>0$ satisfy
$1\le k\le n+1$, $\sum_i\alpha_i=1$, and
$\sum_i\alpha_i h(q_i)q_i=0$.  Define
$z_i=h(q_i)q_i$ and the probability distribution

\[
\mathcal D_h^\star(x)=
\begin{cases}
1/k,&x\in\{q_1,\ldots,q_k\},\\
0,&\text{otherwise}.
\end{cases}
\]

Because the $q_i$ are distinct, these masses are nonnegative and sum to one,
so $\mathcal D_h^\star\in\Delta(\mathcal X)$.

Then for every $w\in\mathbb R^n$,

\[
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle w,x\rangle)
\ge\frac1k\ge\frac1{n+1}.
\]

Proof / justification:

Lemma~\ref{lem:step-005-signed-cancellation} gives an $i$ with
$\langle w,z_i\rangle\le0$.  Since $z_i=h(q_i)q_i$, this is exactly

\[
h(q_i)\langle w,q_i\rangle\le0.
\tag{5.4}
\]

By $q_i\in Q_h$, $h(q_i)=-s_0$.  We check both parts of (5.4) under the
fixed source tie convention:

* If the product in (5.4) is negative, then the nonzero score
  $\langle w,q_i\rangle$ has ordinary sign $-h(q_i)$.  The prediction is
  therefore $-h(q_i)$, and its product with $h(q_i)$ is $-1<0$, exactly the
  source error event.
* If the product in (5.4) is zero, then the score is zero and
  $\operatorname{sign}_{s_0}(0)=s_0=-h(q_i)$.  Again the prediction-target
  product is $-1<0$.  Thus equality is an error for either $s_0=+1$ or
  $s_0=-1$; this is why the representative label $-s_0$ was selected.

Consequently at least one of the $k$ distinct atoms in the uniform distribution
is an error, and direct evaluation of the finite probability gives

\[
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle w,x\rangle)
=\frac1k\sum_{i=1}^k
\mathbf 1\left\{
\operatorname{sign}_{s_0}(\langle w,q_i\rangle)h(q_i)<0
\right\}
\ge\frac1k.
\]

Because $k\le n+1$ and $k\ge1$, $1/k\ge1/(n+1)$.  For $w=0$, all $k$
scores are ties and all $k$ labels are $-s_0$, so the actual error is $1$,
which is stronger than the displayed bound.  The same argument handles $k=1$
(the bound is $1$), $k=n+1$ (the bound is exactly $1/(n+1)$), and $n=1$
(then $k\le2$).

## Target-Step Assembly

Fix $h$ and assume the strict system from step_004 is infeasible.  The signed
vectors $z=h(q)q$ are exactly the vectors in $Z_h$, so Proposition~
\ref{prop:step-005-closest-point} gives a nonnegative unit-sum convex
representation of zero.  Lemma~\ref{lem:step-005-support-pruning} removes zero
coefficients and duplicate support values and repeatedly applies the augmented
vector dependence relation while preserving both the vector sum and the unit
coefficient sum.  It therefore yields distinct $q_1,\ldots,q_k\in Q_h$,
positive coefficients $\alpha_i$, and $k\le n+1$ with

\[
\sum_i\alpha_i h(q_i)q_i=0.
\]

Lemma~\ref{lem:step-005-signed-cancellation} then gives a nonpositive signed
score for every $w$, and Proposition~\ref{prop:step-005-uniform-obstruction}
converts that score to an error atom under the same source tie convention.  Thus
the single deterministic distribution $\mathcal D_h^\star$, supported on at
most $n+1$ representatives of $Q_h$, satisfies

\[
\forall w\in\mathbb R^n,
\qquad
\mathcal L_{\mathcal D_h^\star,h}(x\mapsto\langle w,x\rangle)
\ge\frac1k\ge\frac1{n+1}.
\]

This is exactly the conditional finite structural obstruction required by
step_005.  The infeasibility hypothesis remains local and is not promoted to a
primitive theorem assumption; step_006 compares this lower bound with its
distribution-wise $2\varepsilon$ upper bound to obtain a contradiction.

## Explicit Rate Audit

- Exposed variables: $n$ and the produced support size $k$, with
  $1\le k\le n+1$; the lower bound is $1/k\ge1/(n+1)$.  The fixed target
  $h$, source label $s_0$, and finite cube are structural inputs.
- Hidden constants may depend on: nothing.  All factors are displayed exactly.
- Hidden constants may not depend on: $n,k,h,s_0,w$, the distribution,
  network parameters, initialization, SGD samples, $T$, $\eta$, or
  $\varepsilon$.
- Fixed quantities: $h$, $n$, $s_0$, and the finite set $Q_h$ are fixed while
  the conditional certificate and witness distribution are constructed.
- Probability mode: deterministic conditional on strict-system infeasibility;
  the displayed risk is an exact finite uniform probability, with no random or
  high-probability conversion.
- Horizon mode: not applicable; no trajectory or time index is used.
- Norm mode: Euclidean norm in the closest-point argument and tie-resolved
  $0$-$1$ classification error in the exported lower bound.
- Admissibility conditions and auxiliary tolerances: $n\ge1$, finite $Q_h$, and
  the local strict-system infeasibility hypothesis; no auxiliary tolerance is
  introduced.
- Term absorption or simplification inequalities: none are dropped; the only
  numerical comparison is the exact monotonicity
  $k\le n+1\Rightarrow 1/k\ge1/(n+1)$.
- Probability conversion: none.  The distribution is explicitly defined and
  the error is counted atom by atom.
- Contribution to any Rate Specialization Bridge: supplies the exact
  $1/(n+1)$ obstruction threshold used by step_006; no factor is hidden.
- Baseline-reduction check: the certificate and lower bound do not depend on
  $\varepsilon$, so the exact/noiseless specialization $\varepsilon=0$ retains
  the same obstruction and does not replace exactness by an approximate
  surrogate.

## Blockers

None

## Notation And Assumption Notes

- $Q_h$ is a public-facing, setting-derived object inherited through the
  accepted step_004 interface.  $Z_h=\{h(q)q:q\in Q_h\}$ is a public-facing
  signed-vector interface for the downstream contradiction.
- The initial enumeration $q_j^0,z_j$, the simplex $\Delta_r$, convex hull
  $C$, closest point $p$, and affine-dependence direction $\gamma$ are
  proof-local.  The pruned $q_i,\alpha_i,k$ and
  $\mathcal D_h^\star$ are public-facing outputs consumed by step_006; they are
  all defined directly from $Q_h$ and the derived certificate.
- The coefficients $\lambda_j^\star$ are derived by Proposition~
  \ref{prop:step-005-closest-point}; zero coefficients are explicitly removed
  rather than assumed positive.  The coefficients $\alpha_i$ are derived by
  Lemma~\ref{lem:step-005-support-pruning}; their positivity and unit sum are
  preserved at every affine-pruning iteration.
- The only local conditional hypothesis is strict-system infeasibility.  It is
  not a primitive condition and is discharged by step_006.  The representative
  partition and labels $h(q)=-s_0$ are supplied by the accepted step_004
  dependency, while all convex and error claims are proved in this step.
- Every $z=h(q)q$ has norm $\sqrt n>0$, which rules out an actual singleton
  zero certificate; the proof nevertheless keeps $k=1$ algebraically visible
  and verifies its lower-bound interpretation.
- In the boundary case $n=1$, the accepted representative partition has one
  point and that nonzero signed point itself gives a strict separator, so the
  local infeasibility antecedent is impossible.  The closest-point argument
  detects this by forcing a nonzero minimizer to be a separator; the conditional
  implication and the uniform counting bound remain valid.
- Both tie labels are handled directly: on $Q_h$, equality gives prediction
  $s_0$ and target $-s_0$, hence an error.  Negative signed products are
  ordinary strict-sign errors.  No margin, strict lower bound on individual
  coefficients, or nonzero $w$ is assumed.
- The paired global_proof.md and global_proof_review.md were read only for
  step-relevant planning (the closest-point, affine-pruning, and tie-counting
  checklist).  The diagnostic was not used as proof evidence, a cited result,
  an assumption source, or authority to change the accepted target claim.
