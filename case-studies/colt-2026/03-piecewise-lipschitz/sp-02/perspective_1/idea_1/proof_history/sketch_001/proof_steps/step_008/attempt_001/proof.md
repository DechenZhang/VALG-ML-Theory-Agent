# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_008`
- Unit attempt: 1
- Progress type: `full`

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_008` | Apply `step_006` using `step_007` to prove exactly $\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert$ for arbitrary correlated lower coefficients. | `step_006`, `step_007` | Primitive: `assump:cube-density-laws` in dimension $d$; derived: `step_006`, `step_007` | Verify the $(d-1)$-cube volume, partition lengths, $d=1$ convention, and exact object/law dimension while introducing no auxiliary loss. | Direct specialization of the already proved affine chart theorem and exact integration. | Exact affine-monic baseline conclusion. | R4: complete baseline Rate Specialization Bridge; no hidden constants or probability conversion. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:cube-density-laws`, specialized to dimension \(d\): the random
  lower-coefficient vector
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\) has an arbitrary full joint
  Lebesgue density \(f_\mu\) supported on \([-R,R]^d\) and satisfying
  \(f_\mu\leq\kappa\) almost everywhere. No coordinate-independence condition
  is available or used.
- The target quantifiers \(d\geq1\), bounded interval \(J\subset\mathbb R\),
  and the setting parameter meanings \(R>0\) and \(0<\kappa<\infty\) are
  fixed static data, not additional generated conditions.

Derived invariants supplied by accepted dependencies:

- The accepted `step_006` proof
  `perspective_1/idea_1/proof_steps/step_006/proof.md` (SHA-256
  `1e5b411f11a795a4bf42f383c748f4f2c9bb9164efef4786d1385d119bdc6488`)
  and its accepted review (SHA-256
  `1f945740984079d404309c917115e57bb70da724b1ad94b04286d978fe1c5d1c`)
  supply Proposition~\ref{prop:step-006-affine-bound}, the exact general
  affine chart inequality with literal coefficient \(\kappa\), the original
  random-vector dimension, arbitrary correlation, and the zero-dimensional
  beta-cube convention.
- The accepted `step_007` proof
  `perspective_1/idea_1/proof_steps/step_007/proof.md` (SHA-256
  `5dba630be80c55c5d786ee7bb622a3da2c9240ef9ac6b0907a9fcd237746d85f`)
  and its accepted review (SHA-256
  `acd4136a2148099118f3ac31136190ac5587a6c50b4c078671789085bb8e5e0d`)
  supply Proposition~\ref{prop:step-007-monic-presentation} and
  Lemmas~\ref{lem:step-007-pivot-partition},
  \ref{lem:step-007-low-pivot-chart}, and
  \ref{lem:step-007-high-pivot-chart}. These results give the exact monic
  event, \(N=d\), the prescribed cells, and the two literal chart-velocity
  bounds.

Local conditional hypotheses:

- None. The branches \(d\geq2\) and \(d=1\) are exhaustive proof cases and
  are discharged in the target-step assembly. A fixed law \(\mu\) and fixed
  bounded interval \(J\) are arbitrary instances of the target quantifiers.

No root-counting hypothesis, independence condition, random leading
coefficient, transversality condition, simple-root condition, interval
enlargement, or auxiliary event is assumed.

## Local Lemma Map

Atomic step = no. Exact dependency instantiation, coefficient-volume and
partition accounting, the two-chart case, and the zero-dimensional one-chart
case are independent auditable obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumption~\ref{assump:cube-density-laws} in dimension \(d\), Proposition~\ref{prop:step-006-affine-bound}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq1\), \(J\) is bounded, and \(\mu\) is any admissible possibly correlated lower-coefficient law, then the event consumed by the affine theorem is exactly \(\{\exists\theta\in J:p_\alpha(\theta)=0\}\), and its probability is bounded by the specialized \(d\)-chart integral over \([-R,R]^{d-1}\). | Applies the accepted affine theorem to the exact \(d\)-dimensional monic object without a second probability conversion. |
| `unit_002` | lemma | Under Lemma~\ref{lem:step-007-pivot-partition} and the setting definitions of \(R,d,J\), if \(d\geq1\), then the nonpivot beta cube has exact volume \(\int_{[-R,R]^{d-1}}1\,d\beta=(2R)^{d-1}\), with value one at \(d=1\); for \(d\geq2\), the prescribed cells are disjoint and satisfy \(\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert\), while for \(d=1\), \(\lvert E_1\rvert=\lvert J\rvert\). | Supplies the exact coefficient-volume factor and length ledger, including empty cells and transition ownership. |
| `unit_003` | lemma | Under Lemmas~\ref{lem:step-007-low-pivot-chart}, \ref{lem:step-007-high-pivot-chart}, and \ref{lem:step-008-volume-partition}, if \(d\geq2\), then the complete affine chart sum is at most \((2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\); the smaller high-pivot cap is dominated before cell lengths are added, so no factor for the number of charts appears. | Evaluates the two nonempty chart contributions with the literal cap. |
| `unit_004` | lemma | Under Lemma~\ref{lem:step-007-low-pivot-chart} and Lemma~\ref{lem:step-008-volume-partition}, if \(d=1\), then the single affine chart integral equals \(\lvert J\rvert=(2R)^0(d+Rd(d-1)/2)\lvert J\rvert\). | Proves the zero-dimensional beta-cube and speed-one branch, yielding \(\kappa\lvert J\rvert\). |

## Cited Result Applications

External paper results: None. In particular, no polynomial-root theorem or
root-counting result is invoked.

1. **Proposition~\ref{prop:step-006-affine-bound} (accepted general affine
   chart inequality).** In the current notation, for a deterministic affine
   presentation with \(N\) random coordinates, an interval \(I\), a legal
   measurable pivot partition \((E_j)_{j=1}^N\), and any full joint law on
   \([-R,R]^N\) with density cap \(\kappa\), the accepted dependency states

   \[
   \Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
   F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]
   \leq
   \kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert
   \,d\beta\,d\theta.
   \]

   The statement is valid in \([0,+\infty]\), uses the full joint density
   only once, and permits arbitrary correlation. Here \(N=d\), \(I=J\), and
   all deterministic presentation and pivot hypotheses are discharged by the
   accepted `step_007` results below. Assumption~\ref{assump:cube-density-laws}
   supplies exactly the remaining \(d\)-dimensional law hypothesis. This
   dependency is instantiated in Proposition~\ref{prop:step-008-affine-instantiation}.

2. **Proposition~\ref{prop:step-007-monic-presentation} (accepted exact
   normalized monic presentation).** For every \(d\geq1\) and bounded \(J\),
   the accepted dependency constructs a nondegenerate
   \(\Theta=[c-h,c+h]\supseteq J\) and gives

   \[
   F_0(\theta)=\theta^d,
   \qquad F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
   \qquad N=d,
   \]

   together with the pointwise identity

   \[
   F_0(\theta)+\langle\alpha,F(\theta)\rangle
   =\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
   =p_\alpha(\theta).
   \]

   The coefficient \(1\) of \(\theta^d\) is the deterministic affine offset,
   not a random coordinate. Thus the source event and target event, interval,
   coefficient vector, and law dimension agree exactly. This result is used
   in Proposition~\ref{prop:step-008-affine-instantiation}.

3. **Lemma~\ref{lem:step-007-pivot-partition} (accepted prescribed monic
   pivot partition).** For \(d\geq2\), the accepted dependency gives

   \[
   E_1=J\cap\{\lvert\theta\rvert\leq1\},
   \qquad
   E_d=J\cap\{\lvert\theta\rvert>1\},
   \qquad
   E_j=\varnothing\quad(j\notin\{1,d\}),
   \]

   with \(F_1=1\) on \(E_1\) and
   \(F_d=\theta^{d-1}\neq0\) on \(E_d\). The cells are measurable,
   disjoint, and cover \(J\); the transition points
   \(\lvert\theta\rvert=1\) are assigned to \(E_1\). For \(d=1\), it gives
   the single cell \(E_1=J\) with constant pivot one. It explicitly permits
   empty cells. This result discharges the pivot hypothesis of the accepted
   affine theorem and is used in
   Proposition~\ref{prop:step-008-affine-instantiation} and
   Lemma~\ref{lem:step-008-volume-partition}.

4. **Lemmas~\ref{lem:step-007-low-pivot-chart} and
   \ref{lem:step-007-high-pivot-chart} (accepted chart velocities).** Put

   \[
   V_d:=d+\frac{R d(d-1)}2.
   \]

   On \(E_1\), the first accepted lemma gives
   \(\lvert\partial_\theta T_1\rvert\leq V_d\) for \(d\geq2\), and gives
   \(T_1=-\theta\), \(\lvert T_1'\rvert=1=V_1\) for \(d=1\). On \(E_d\),
   the second accepted lemma gives, for \(d\geq2\),

   \[
   \lvert\partial_\theta T_d\rvert
   \leq1+\frac{R d(d-1)}2
   \leq V_d.
   \]

   Both bounds hold for every nonpivot
   \(\beta\in[-R,R]^{d-1}\). They are used in
   Lemmas~\ref{lem:step-008-two-chart-integral} and
   \ref{lem:step-008-one-chart-integral}.

5. **Lebesgue rectangle volume and finite additivity (direct measure
   identities).** For \(m\geq1\), the defining rectangle normalization and
   finite product rule give
   \(\operatorname{Leb}^m([-R,R]^m)=\prod_{\ell=1}^m 2R=(2R)^m\).
   In dimension zero, the unique point of \(\mathbb R^0\) has measure one,
   the empty product. For disjoint measurable sets \(B,C\) of finite measure,
   \(\operatorname{Leb}(B\sqcup C)=\operatorname{Leb}(B)+\operatorname{Leb}(C)\).
   The cube is finite because \(R>0\), and all cells lie in bounded \(J\), so
   these identities apply directly in
   Lemma~\ref{lem:step-008-volume-partition}. No external citation or new
   probabilistic result is used.

Local-result applications:

- Proposition~\ref{prop:step-008-affine-instantiation} restates the exact
  specialized affine integral and is the sole probability input to the final
  assembly.
- Lemma~\ref{lem:step-008-volume-partition} supplies the exact beta-cube
  volume and cell-length identities to both dimension branches.
- Lemma~\ref{lem:step-008-two-chart-integral} supplies the deterministic
  integral bound for \(d\geq2\).
- Lemma~\ref{lem:step-008-one-chart-integral} supplies the deterministic
  integral identity for \(d=1\).

## Local Derivation

### unit_001: proposition

**Proposition (Exact affine-theorem instantiation for the monic event).**
\(\label{prop:step-008-affine-instantiation}\)

Statement: Under Assumption~\ref{assump:cube-density-laws} in dimension
\(d\), Proposition~\ref{prop:step-006-affine-bound},
Proposition~\ref{prop:step-007-monic-presentation}, and
Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq1\), \(J\subset\mathbb R\)
is a bounded interval, and \(\mu\) is any admissible possibly correlated law
of \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\), then

\[
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:p_\alpha(\theta)=0\right]
\leq
\kappa\sum_{j=1}^d\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta,
\]

where for \(d\geq2\) the only possibly nonempty cells are the prescribed
\(E_1\) and \(E_d\), and for \(d=1\) the single cell is \(E_1=J\). The law
space has exactly \(d\) random coordinates, and the monic coefficient remains
deterministic.

Proof / justification:

Proposition~\ref{prop:step-007-monic-presentation} identifies the random
feature dimension as

\[
N=d
\]

and identifies the coefficient vector in the accepted affine theorem with
exactly

\[
\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in[-R,R]^d.
\]

There is no additional coordinate for the leading coefficient. Instead, for
every \(\theta\in\Theta\) and every such \(\alpha\), the accepted pointwise
identity is

\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]

Taking \(I=J\) in Proposition~\ref{prop:step-006-affine-bound} therefore
does not enlarge the interval and gives the exact event equality

\[
\left\{\alpha:\exists\theta\in I,\,
F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right\}
=
\left\{\alpha:\exists\theta\in J,\,p_\alpha(\theta)=0\right\}.
\]

Lemma~\ref{lem:step-007-pivot-partition} supplies a legal measurable
partition with a nonzero selected pivot at every point of \(J\), including
\(\theta=0\) and the transition points \(\lvert\theta\rvert=1\), and with
empty pieces allowed. Assumption~\ref{assump:cube-density-laws} supplies the
accepted affine theorem with a full \(d\)-dimensional joint density bounded
by \(\kappa\) on exactly \([-R,R]^d\). Hence every object and assumption in
the accepted affine inequality is discharged with \(N=d\), \(I=J\), and
nonpivot cube \([-R,R]^{N-1}=[-R,R]^{d-1}\). Substitution gives the displayed
inequality.

The density-to-probability passage has already been performed inside the
accepted Proposition~\ref{prop:step-006-affine-bound}. This instantiation
does not condition, integrate a density again, apply a union bound, or make
an independence assumption.

### unit_002: lemma

**Lemma (Exact nonpivot volume and partition-length ledger).**
\(\label{lem:step-008-volume-partition}\)

Statement: Under Lemma~\ref{lem:step-007-pivot-partition} and the setting
definitions of \(R,d,J\), if \(d\geq1\), then

\[
\int_{[-R,R]^{d-1}}1\,d\beta=(2R)^{d-1}.
\]

For \(d\geq2\), the prescribed cells satisfy

\[
E_1\cap E_d=\varnothing,
\qquad E_1\sqcup E_d=J,
\qquad \lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert,
\]

with all other \(E_j\) empty. For \(d=1\), the zero-dimensional cube has
volume \((2R)^0=1\), \(E_1=J\), and
\(\lvert E_1\rvert=\lvert J\rvert\). These identities include empty,
singleton, open, closed, and half-open interval pieces.

Proof / justification:

First suppose \(d\geq2\). There are exactly \(d-1\) nonpivot coefficient
coordinates, each ranging over the same interval \([-R,R]\), whose
one-dimensional length is \(2R\). Direct rectangle integration gives

\[
\int_{[-R,R]^{d-1}}1\,d\beta
=\prod_{\ell=1}^{d-1}\int_{-R}^{R}1\,d\beta_\ell
=\prod_{\ell=1}^{d-1}2R
=(2R)^{d-1}.
\]

There is no law factor in this calculation: it is only the Lebesgue volume
of the nonpivot cube occurring in the accepted affine integral.

The two prescribed sets are

\[
E_1=J\cap\{\lvert\theta\rvert\leq1\},
\qquad
E_d=J\cap\{\lvert\theta\rvert>1\}.
\]

The regimes \(\{\lvert\theta\rvert\leq1\}\) and
\(\{\lvert\theta\rvert>1\}\) are disjoint and their union is \(\mathbb R\).
Thus \(E_1\) and \(E_d\) are disjoint and their union is exactly \(J\), not
merely up to a null set. In particular, \(\theta=1\) and \(\theta=-1\), when
present, belong to \(E_1\) and not to \(E_d\). Finite additivity of Lebesgue
measure now gives

\[
\lvert E_1\rvert+\lvert E_d\rvert
=\lvert E_1\sqcup E_d\rvert
=\lvert J\rvert.
\]

This remains literal if either cell or \(J\) itself is empty. It also remains
valid for a singleton or for any endpoint convention, since the displayed
sets are still a disjoint exact partition and all lie in bounded \(J\).

If \(d=1\), there are no nonpivot coordinates. By the standard
zero-dimensional convention, \([-R,R]^0\) is the singleton containing the
empty tuple and its Lebesgue measure is the empty product

\[
\int_{[-R,R]^0}1\,d\beta=1=(2R)^0.
\]

The accepted prescribed partition is the single cell \(E_1=J\), so its
length is exactly \(\lvert J\rvert\). This proves every claimed identity.

### unit_003: lemma

**Lemma (Two-chart monic integral bound).**
\(\label{lem:step-008-two-chart-integral}\)

Statement: Under Lemmas~\ref{lem:step-007-low-pivot-chart},
\ref{lem:step-007-high-pivot-chart}, and
\ref{lem:step-008-volume-partition}, if \(d\geq2\), then

\[
\sum_{j=1}^d\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta
\leq
(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.
\]

The high-pivot chart is bounded by the same cap before the disjoint cell
lengths are added; consequently no factor two or other chart-count factor is
introduced.

Proof / justification:

Use the accepted velocity expression

\[
V_d=d+\frac{R d(d-1)}2.
\]

All cells except \(E_1\) and \(E_d\) are empty. On \(E_1\),
Lemma~\ref{lem:step-007-low-pivot-chart} gives the pointwise bound
\(\lvert\partial_\theta T_1\rvert\leq V_d\) for every
\(\beta\in[-R,R]^{d-1}\). Therefore

\[
\begin{aligned}
\int_{E_1}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_1\rvert\,d\beta\,d\theta
&\leq
\int_{E_1}\int_{[-R,R]^{d-1}}V_d\,d\beta\,d\theta\\
&=V_d(2R)^{d-1}\lvert E_1\rvert,
\end{aligned}
\]

where the beta-cube factor is exactly the one proved in
Lemma~\ref{lem:step-008-volume-partition}.

On \(E_d\), Lemma~\ref{lem:step-007-high-pivot-chart} gives the smaller
pointwise cap

\[
\lvert\partial_\theta T_d\rvert
\leq1+\frac{R d(d-1)}2.
\]

Its comparison with \(V_d\) is the literal inequality

\[
V_d-\left(1+\frac{R d(d-1)}2\right)=d-1\geq0.
\]

Thus this chart contributes

\[
\begin{aligned}
\int_{E_d}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_d\rvert\,d\beta\,d\theta
&\leq
\left(1+\frac{R d(d-1)}2\right)
(2R)^{d-1}\lvert E_d\rvert\\
&\leq V_d(2R)^{d-1}\lvert E_d\rvert.
\end{aligned}
\]

Adding the two contributions, while the empty-cell integrals contribute
zero, gives

\[
\begin{aligned}
\sum_{j=1}^d\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta
&\leq V_d(2R)^{d-1}
\bigl(\lvert E_1\rvert+\lvert E_d\rvert\bigr)\\
&=V_d(2R)^{d-1}\lvert J\rvert.
\end{aligned}
\]

The last equality is the disjoint partition identity, including empty pieces.
Each chart is charged only to its own cell length. Bounding two separate
integrals by \(V_d\lvert J\rvert\) and then adding them would create an
unwanted factor two; that operation is not used.

### unit_004: lemma

**Lemma (Single constant-pivot integral in dimension one).**
\(\label{lem:step-008-one-chart-integral}\)

Statement: Under Lemma~\ref{lem:step-007-low-pivot-chart} and
Lemma~\ref{lem:step-008-volume-partition}, if \(d=1\), then

\[
\sum_{j=1}^1\int_{E_j}\int_{[-R,R]^0}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta
=\lvert J\rvert
=(2R)^0\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.
\]

Proof / justification:

For \(d=1\), the prescribed partition contains only \(E_1=J\). The
nonpivot tuple is empty, every corresponding finite sum is empty, and the
accepted constant-pivot chart is

\[
T_1(\theta)=-\theta,
\qquad
\lvert\partial_\theta T_1(\theta)\rvert=1.
\]

Lemma~\ref{lem:step-008-volume-partition} gives
\(\int_{[-R,R]^0}1\,d\beta=(2R)^0=1\). Hence

\[
\int_{E_1}\int_{[-R,R]^0}
\lvert\partial_\theta T_1\rvert\,d\beta\,d\theta
=\int_J1\,d\theta
=\lvert J\rvert.
\]

Finally,

\[
d+\frac{R d(d-1)}2
=1+\frac{R\cdot1\cdot0}{2}
=1,
\]

so the last displayed identity has exactly the target form. There is no high
pivot, no second cell, and no chart-count factor.

## Target-Step Assembly

Fix an arbitrary integer \(d\geq1\), bounded interval \(J\subset\mathbb R\),
and arbitrary possibly correlated law \(\mu\) of the \(d\) lower coefficients
whose full joint density is supported on \([-R,R]^d\) and bounded by
\(\kappa\), as required by Assumption~\ref{assump:cube-density-laws}.

Proposition~\ref{prop:step-008-affine-instantiation} applies the accepted
general affine theorem with \(N=d\), \(I=J\), and the accepted prescribed
pivots. It also proves that the event on its left side is exactly

\[
\{\exists\theta\in J:p_\alpha(\theta)=0\},
\]

because the deterministic offset is \(\theta^d\) and the random vector has
exactly the \(d\) lower coefficients. Thus no singular leading-coordinate
chart or event residual remains.

If \(d\geq2\), Lemma~\ref{lem:step-008-two-chart-integral} bounds the entire
chart sum by

\[
(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.
\]

If \(d=1\), Lemma~\ref{lem:step-008-one-chart-integral} gives the same
expression exactly, with zero-dimensional volume \((2R)^0=1\), empty sums,
one constant-pivot cell, and speed one. The two cases exhaust every
\(d\geq1\). Multiplying the deterministic chart bound by the single literal
factor \(\kappa\) already present in
Proposition~\ref{prop:step-008-affine-instantiation} yields

\[
\boxed{
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:p_\alpha(\theta)=0\right]
\leq
\kappa(2R)^{d-1}
\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.}
\]

This is exactly the accepted `step_008` claim. The proof has used no
union bound, chart-count factor, auxiliary loss, second probability
conversion, root-counting theorem, random leading coefficient, interval
enlargement, hidden constant, or later proof step. The boxed inequality is
the sole public-facing interface exported to `step_010`.

## Explicit Rate Audit

- Exposed variables: \(d,R,\kappa,\lvert J\rvert\), appearing literally as
  \(\kappa(2R)^{d-1}(d+R d(d-1)/2)\lvert J\rvert\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\kappa,J,c,h,\mu\), coefficient
  correlations, a pivot margin, a chart count, an auxiliary threshold, or a
  leading-coordinate approximation. There are no hidden constants.
- Fixed quantities: For each invocation, \(d,R,\kappa\), the deterministic
  monic presentation, and the enclosing nondegenerate \(\Theta\) are fixed.
  The conclusion holds for every bounded \(J\subseteq\Theta\) and every
  admissible \(d\)-dimensional law \(\mu\). The final expression is
  independent of \(c,h,\Theta\), and the location of \(J\).
- Probability mode: Ordinary probability for each fixed arbitrary possibly
  correlated full joint law. There is no confidence parameter, expectation,
  conditioning, independence, or union-bound conversion.
- Horizon mode: Uniform over every bounded interval \(J\), including empty
  and degenerate intervals and every endpoint convention. The proof invokes
  the accepted affine theorem on exactly \(I=J\), with no interval
  enlargement or limiting horizon.
- Norm mode: Scalar absolute chart velocity and Lebesgue coefficient volume;
  \(\lvert J\rvert\) is one-dimensional Lebesgue length.
- Admissibility conditions and auxiliary tolerances: Exactly \(d\geq1\),
  \(R>0\), \(0<\kappa<\infty\), bounded \(J\), and
  Assumption~\ref{assump:cube-density-laws} in dimension \(d\), together with
  the accepted deterministic interfaces from `step_006` and
  `step_007`. There are no auxiliary tolerances.
- Term absorption or simplification inequalities:

  \[
  \int_{[-R,R]^{d-1}}1\,d\beta=(2R)^{d-1},
  \qquad
  1+\frac{R d(d-1)}2
  \leq d+\frac{R d(d-1)}2\quad(d\geq2),
  \]

  and

  \[
  \lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert
  \quad(d\geq2).
  \]

  The high-chart cap is dominated before the disjoint cell lengths are
  combined, so no factor two is introduced. No term is dropped or absorbed
  by an unstated inequality.
- Probability conversion: None in this step. The accepted affine dependency
  already outputs an ordinary-probability inequality with its single density
  factor \(\kappa\); this step performs only deterministic specialization and
  integration.
- Contribution to any Rate Specialization Bridge: This is the complete R4
  bridge. It verifies \(N=d\), exact event and coefficient-space identity,
  exact beta-cube volume, exact pivot partition length, both velocity caps,
  and the \(d=1\) convention before producing the final rate. No auxiliary
  choice or technical condition remains.
- Baseline-reduction check, if applicable: The conclusion is the inherited
  affine-monic baseline itself, not a conservative surrogate. At \(d=1\), it
  reduces exactly to

  \[
  \Pr[\exists\theta\in J:\theta+\alpha_0=0]
  \leq\kappa\lvert J\rvert,
  \]

  since \((2R)^0=1\), the coefficient sum is empty, and the single chart has
  speed one. For every \(d\geq2\), the smaller high-pivot cap incurs no extra
  constant. The probability mode, law dimension, interval, and deterministic
  leading coefficient are unchanged from the required baseline.

## Blockers

None

## Notation And Assumption Notes

- The polynomial
  \(p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\), the target
  interval \(J\), and the parameters \(d,R,\kappa\) are setting- or
  target-defined `public-facing` objects. The boxed probability
  inequality is the only exported conclusion.
- The identity \(N=d\), the deterministic functions \(F_0,F\), and the exact
  equality \(F_0+\langle\alpha,F\rangle=p_\alpha\) are accepted dependency
  objects from Proposition~\ref{prop:step-007-monic-presentation}. They are
  `appendix-local` bridge data here and are used to prove that the
  generated affine event equals the target event; they add no public
  parameter.
- The abbreviation \(V_d=d+R d(d-1)/2\) is an accepted dependency object and
  an `appendix-local` shorthand in this step. It is expanded in the
  sole public-facing conclusion, so downstream consumers need no helper
  dictionary. Its literal constant provenance is
  Lemmas~\ref{lem:step-007-low-pivot-chart} and
  \ref{lem:step-007-high-pivot-chart}.
- The prescribed cells \(E_1,E_d\), the empty cells \(E_j\), the chart
  coordinates \(T_1,T_d\), and the nonpivot tuple \(\beta\) are accepted
  dependency objects used `appendix-local`. They are eliminated by exact
  integration and finite additivity before export. For \(d=1\), \(\beta\) is
  the unique empty tuple in \(\mathbb R^0\).
- The notation \(\operatorname{Leb}^m\) and \(d\beta\) denotes the
  setting-compatible Lebesgue coefficient volume. It is `proof-local`
  measure notation, not an added bounded quantity. The values
  \((2R)^{d-1}\) and \(\lvert J\rvert\) are computed in
  Lemma~\ref{lem:step-008-volume-partition}, not assumed generated invariants.
- Assumption~\ref{assump:cube-density-laws} is the only primitive technical
  assumption directly consumed in this step. The affine probability
  inequality, exact event mapping, pivot validity, and velocity bounds are
  accepted derived conclusions from `step_006` and `step_007`.
  The chart-sum bounds are proved locally. No generated event, support fact,
  boundedness fact, or local-validity condition is promoted to a primitive
  assumption.
- The law remains the original full \(d\)-dimensional law of the lower
  coefficients. Arbitrary correlation is retained because this step neither
  factors the law nor conditions on nonpivot coordinates. The leading
  coefficient \(1\) remains in deterministic \(F_0\) throughout.
- Empty cells contribute zero integrals; transition points
  \(\lvert\theta\rvert=1\) belong to \(E_1\); empty or singleton intervals
  have zero length; and the zero-dimensional beta cube has volume one. These
  are proved or inherited conventions, not exclusions from the theorem.
- `global_proof.md` was not read or used. No global diagnostic statement
  is evidence, a cited result, an assumption source, or authority to alter
  the target claim.
