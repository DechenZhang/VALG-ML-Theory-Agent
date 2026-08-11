# Proof Step

## Step Identity

- Branch path: perspective_1/idea_1
- Sketch attempt: 2
- Step ID: step_008
- Unit attempt: 1
- Progress type: full
- Producer scope: Fresh step-scoped proof of the accepted sketch-attempt-2 R4 specialization. The only exported mathematical interface is the exact affine-monic probability bound consumed by step_010.

## Binding Artifacts

- Controller prompt SHA-256: 90294f40eadd3506494435a2bf042e10f3ef9b2923eecf3ff61e3d6550f66b82
- Binding idea.md SHA-256: 90d54348c0603de55463b9e61611436feb86a1c329966f786db2fc8bc43ba910
- Binding setting.md SHA-256: f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Accepted proof_sketch.md SHA-256: 2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a
- Accepted proof_sketch_review.md SHA-256: 40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8
- Hash-verified diagnostic global_proof.md SHA-256: 45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9
- Accepted diagnostic global_proof_review.md SHA-256: cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db
- Accepted dependency step_006 proof SHA-256: 4ec1534fcbcb44eb50e275a2526c60831fc7dd92b59a1d9db3cf90c68320f068
- Accepted dependency step_006 review SHA-256: e775661c8345636704e59b07f3a2f972a4b6f5f1a465eb3a5e8b05a1f3d956fa
- Accepted dependency step_007 proof SHA-256: b769b0f15124e73117ec9860f08d5cdd0eb78100daf134d6a69d1891a7dc4c6d
- Accepted dependency step_007 review SHA-256: 3f54140026d5c207c333ea9c53ea443357ad708b16353695ea875fd46dbc7b34

## Target Step Claim

| Step ID | Intended claim | Depends on | Assumptions used | Technical challenge | Intended proof tool or cited result | Output target | Rate objective | Review status |
| ------- | -------------- | ---------- | ---------------- | ------------------- | ----------------------------------- | ------------- | -------------- | ------------- |
| `step_008` | Apply `step_006` using `step_007` to prove exactly $\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa(2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert$ for arbitrary correlated lower coefficients. | `step_006`, `step_007` | Primitive: `assump:cube-density-laws` in dimension $d$; derived: `step_006`, `step_007` | Verify the $(d-1)$-cube volume, partition lengths, $d=1$ convention, and exact object/law dimension while introducing no auxiliary loss. | Direct specialization of the already proved affine chart theorem and exact integration. | Exact affine-monic baseline conclusion. | R4: complete baseline Rate Specialization Bridge; no hidden constants or probability conversion. | PENDING |

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions directly used by this step:

- assump:cube-density-laws: after setting \(N=d\), the random vector is exactly
  \(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\), and its arbitrary
  joint law \(\mu\) has a Lebesgue density supported on \([-R,R]^d\) and bounded
  by \(\kappa\). No coordinate independence, conditional-density bound, or
  product structure is available or used.
- assump:parameter-regime: only the static meanings \(d\geq1\), \(R>0\),
  \(0<\kappa<\infty\), and the existence of a nondegenerate deterministic
  interval \(\Theta\supseteq J\) are used. The integer \(d\), the bounded
  interval \(J\), and the monic formulas are target-specified inputs.

The remaining primitive premises of the affine theorem are discharged through
the accepted step_007 interface, rather than added as new local hypotheses:

- Assumption~\ref{assump:balcan-common-chain} is instantiated with \(q=0\) and
  \(M=0\).
- Assumption~\ref{assump:anchored-unit-range} is instantiated by \(Q_1=1\).
- Assumption~\ref{assump:affine-chart-data} is verified by the accepted
  polynomial \(C^1\) presentation and the accepted measurable nonzero-pivot
  partition.

Derived invariants supplied by accepted dependencies:

- The accepted step_006 proof and review, with the hashes recorded above,
  supply Proposition~\ref{prop:step-006-affine-bound}. It bounds the exact
  affine root event for every admissible full joint law and every interval by
  the sum of the chart-velocity integrals, with literal coefficient \(\kappa\),
  arbitrary correlation, and no chart-injectivity or simple-root premise.
- The accepted step_007 proof and review, with the hashes recorded above,
  supply Proposition~\ref{prop:step-007-monic-presentation} and
  Lemmas~\ref{lem:step-007-pivot-partition},
  \ref{lem:step-007-low-pivot-chart}, and
  \ref{lem:step-007-high-pivot-chart}. Together they supply the exact monic
  object, dimension \(N=d\), deterministic leading coefficient, prescribed
  pivot cells, and literal chart-velocity certificates.

Local conditional hypotheses:

- In each local result, \(d\), one admissible law \(\mu\), and then one bounded
  interval \(J\) are fixed arbitrarily. The proof discharges these choices
  before exporting the all-law, then all-interval conclusion.

No generated event, pivot validity, chart velocity, boundedness condition, or
root property is promoted to a primitive assumption.

## Local Lemma Map

Atomic step = no. Exact dependency instantiation, the two-cell integral ledger,
and the zero-dimensional branch are independent nontrivial obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:cube-density-laws}, Proposition~\ref{prop:step-006-affine-bound}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq1\), \(\mu\) is an admissible \(d\)-dimensional lower-coefficient law, and \(J\) is a bounded interval, then the general affine inequality applies with \(N=d\), \(I=J\), and the exact event \(\{\exists\theta\in J:p_\alpha(\theta)=0\}\), giving the \(d\)-chart integral over \([-R,R]^{d-1}\). | Transfers the accepted affine theorem to the identical monic event and law without a union bound, conditioning, or a random leading coordinate. |
| unit_002 | lemma | Under Assumption~\ref{assump:parameter-regime}, Lemmas~\ref{lem:step-007-pivot-partition}, \ref{lem:step-007-low-pivot-chart}, and \ref{lem:step-007-high-pivot-chart}, if \(d\geq2\) and \(J\) is bounded, then the complete chart sum is at most \((2R)^{d-1}(d+Rd(d-1)/2)\lvert J\rvert\); the proof first retains the sharper high-chart speed, then dominates it with coefficient one by the common cap and uses the exact disjoint length ledger. | Evaluates the \(d\geq2\) deterministic integral with exact cube volume, no chart-count factor, and no dependence on the location or endpoint convention of \(J\). |
| unit_003 | proposition | Under Assumptions~\ref{assump:parameter-regime} and \ref{assump:cube-density-laws}, Proposition~\ref{prop:step-008-s2-affine-transfer}, Proposition~\ref{prop:step-007-monic-presentation}, and Lemmas~\ref{lem:step-007-pivot-partition} and \ref{lem:step-007-low-pivot-chart}, if \(d=1\), then \([-R,R]^0\) has volume one, \(E_1=J\), \(T_1=-\theta\), and \(\lvert T_1'\rvert=1\), so \(\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa\lvert J\rvert\), exactly the target formula at \(d=1\). | Closes the zero-dimensional beta-cube branch without a spurious \(2R\) factor or a nonexistent second chart. |

## Cited Result Applications

External paper results: None. No independent polynomial-root theorem is used.

Standard theorem applications: for every integer \(m\geq1\), Euclidean
Lebesgue measure satisfies
\[
\operatorname{Leb}^{m}\!\left(\prod_{\ell=1}^{m}[a_\ell,b_\ell]\right)
=\prod_{\ell=1}^{m}(b_\ell-a_\ell)
\quad\text{when }a_\ell\leq b_\ell,
\]
and in dimension zero
\(\operatorname{Leb}^0(\{()\})=1\) by the empty-product normalization. This is
instantiated with \(m=d-1\), \(a_\ell=-R\), and \(b_\ell=R\). Also, if
measurable \(B,C\subset\mathbb R\) are disjoint, finite additivity gives
\(\lvert B\cup C\rvert=\lvert B\rvert+\lvert C\rvert\); it is instantiated
with the exact partition \(B=E_1\), \(C=E_d\). These facts are applied
explicitly in Lemma~\ref{lem:step-008-s2-two-cell-ledger} and
Proposition~\ref{prop:step-008-s2-linear-branch}.

Accepted dependency results:

1. **Proposition~\ref{prop:step-006-affine-bound} (General affine chart
   inequality).** Under Assumptions~\ref{assump:parameter-regime},
   \ref{assump:balcan-common-chain},
   \ref{assump:anchored-unit-range},
   \ref{assump:cube-density-laws}, and
   \ref{assump:affine-chart-data}, for every
   \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\),
   the accepted dependency proves
   \[
   \begin{aligned}
   &\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in I:
   F_0(\theta)+\langle\alpha,F(\theta)\rangle=0\right]\\
   &\quad\leq
   \kappa\sum_{j=1}^{N}\int_{E_j}\int_{[-R,R]^{N-1}}
   \lvert\partial_\theta T_j(\theta,\beta)\rvert
   \,d\beta\,d\theta.
   \end{aligned}
   \]
   The conclusion holds in \([0,+\infty]\), uses the full joint density cap
   once, and permits tangent roots, multiple roots, empty cells, cube-boundary
   coefficients, and arbitrary correlation. Here \(N=d\), \(I=J\), the
   parameter and law premises come from the two directly listed assumptions,
   and all presentation, regularity, and pivot-cover premises are discharged
   by the accepted step_007 results below. It is used only in
   Proposition~\ref{prop:step-008-s2-affine-transfer}.

2. **Proposition~\ref{prop:step-007-monic-presentation} (Exact normalized
   monic presentation).** For every \(d\geq1\) and bounded interval \(J\), the
   accepted dependency constructs a nondegenerate
   \(\Theta=[c-h,c+h]\supseteq J\) and proves
   \[
   F_0(\theta)=\theta^d,\qquad
   F_{k+1}(\theta)=\theta^k\quad(0\leq k\leq d-1),
   \]
   \[
   F_0(\theta)+\langle\alpha,F(\theta)\rangle
   =p_\alpha(\theta),\qquad
   \alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d.
   \]
   It also proves \(q=0\), \(M=0\), \(B_P=0\), \(N=d\),
   \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\). The monic coefficient
   \(1\) lies only in the deterministic offset \(F_0\), outside the random
   vector. The source and target polynomial are pointwise identical, so there
   is no object-transfer residual. This proposition discharges the object,
   dimension, regularity, and deterministic-leading-coefficient parts of the
   affine-theorem application.

3. **Lemma~\ref{lem:step-007-pivot-partition} (Prescribed monic pivot
   partition).** For \(d\geq2\), the accepted dependency proves that
   \[
   E_1=J\cap\{\lvert\theta\rvert\leq1\},\qquad
   E_d=J\cap\{\lvert\theta\rvert>1\},\qquad
   E_j=\varnothing\quad(j\notin\{1,d\})
   \]
   is a measurable disjoint partition of \(J\), with the constant pivot
   \(F_1=1\) active on \(E_1\) and the pivot
   \(F_d=\theta^{d-1}\neq0\) active on \(E_d\). The non-strict low cell
   owns \(\theta=\pm1\). For \(d=1\), it proves \(E_1=J\) with \(F_1=1\). It
   discharges Assumption~\ref{assump:affine-chart-data} for the exact cells
   and supplies the disjoint length ledger used below.

4. **Lemma~\ref{lem:step-007-low-pivot-chart} (Constant-pivot chart and
   velocity).** For \(d\geq2\), \(\theta\in E_1\), and every
   \(\beta\in[-R,R]^{d-1}\), the accepted dependency proves
   \[
   T_1(\theta,\beta)
   =-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,\qquad
   \lvert\partial_\theta T_1(\theta,\beta)\rvert
   \leq d+\frac{R d(d-1)}2.
   \]
   The coefficient bound includes every face of the closed beta cube. For
   \(d=1\), it proves the empty-coordinate identity
   \(T_1(\theta)=-\theta\) and exact speed one. It is used in both deterministic
   dimension branches.

5. **Lemma~\ref{lem:step-007-high-pivot-chart}
   (Highest-lower-degree pivot chart and velocity).** For \(d\geq2\),
   \(\theta\in E_d\), and every \(\beta\in[-R,R]^{d-1}\), the accepted
   dependency proves
   \[
   T_d(\theta,\beta)
   =-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1},\qquad
   \lvert\partial_\theta T_d(\theta,\beta)\rvert
   \leq1+\frac{R d(d-1)}2.
   \]
   All negative powers are confined to the strict cell
   \(\lvert\theta\rvert>1\). It is used in the two-cell ledger before its
   sharper constant is explicitly dominated by the common target cap.

Local-result applications:

6. **Proposition~\ref{prop:step-008-s2-affine-transfer} (Lossless monic
   transfer through the affine theorem).** Under the two named setting
   assumptions and the accepted affine, monic-presentation, and pivot results,
   for \(d\geq1\), an admissible law, and bounded \(J\), it identifies the
   affine event with the exact monic event and exports the single
   \(d\)-chart-sum inequality. It is used by
   Proposition~\ref{prop:step-008-s2-linear-branch} and in the target-step
   assembly.

7. **Lemma~\ref{lem:step-008-s2-two-cell-ledger} (Coefficient-one two-cell
   integration ledger).** Under the parameter assumption and the accepted
   partition and two velocity results, for \(d\geq2\) and bounded \(J\), it
   evaluates the full chart sum as at most
   \((2R)^{d-1}(d+R d(d-1)/2)\lvert J\rvert\), including cube volume, sharper
   high-chart speed, common-cap domination, and exact partition length. It is
   used in the target-step assembly.

8. **Proposition~\ref{prop:step-008-s2-linear-branch} (Zero-dimensional
   linear branch).** Under the named setting assumptions, accepted monic
   results, and Proposition~\ref{prop:step-008-s2-affine-transfer}, for
   \(d=1\), an admissible law, and bounded \(J\), it evaluates the affine
   integral with zero-dimensional volume one and concludes
   \(\Pr[\exists\theta\in J:p_\alpha(\theta)=0]\leq\kappa\lvert J\rvert\).
   It is used in the target-step assembly.

The accepted diagnostic global proof is not a cited result and supplies no
premise or conclusion here.

## Local Derivation

### unit_001: proposition

**Proposition (Lossless monic transfer through the affine theorem).**
\label{prop:step-008-s2-affine-transfer}

Statement: Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:cube-density-laws}, Proposition~\ref{prop:step-006-affine-bound},
Proposition~\ref{prop:step-007-monic-presentation}, and
Lemma~\ref{lem:step-007-pivot-partition}, if \(d\geq1\),
\(\mu\in\mathcal D_{d,R,\kappa}\), and \(J\subset\mathbb R\) is a bounded
interval, then, for the exact accepted monic presentation and pivot cells,
\[
\begin{aligned}
&\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:
p_\alpha(\theta)=0\right]\\
&\quad\leq
\kappa\sum_{j=1}^{d}\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta.
\end{aligned}
\]
The random vector has exactly \(d\) coordinates, all of them lower
coefficients; its leading monic coefficient is deterministic.

Proof / justification:

Fix \(d\geq1\), then fix an arbitrary
\(\mu\in\mathcal D_{d,R,\kappa}\), and then fix an arbitrary bounded interval
\(J\). Proposition~\ref{prop:step-007-monic-presentation} supplies a
nondegenerate deterministic interval \(\Theta\supseteq J\), sets \(N=d\), and
gives the pointwise identity
\[
F_0(\theta)+\langle\alpha,F(\theta)\rangle
=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k
=p_\alpha(\theta).
\]
Thus the event consumed by the affine theorem is equal, not merely contained
in, the target polynomial-root event. The same proposition proves that
\(F_0\) and \(F\) are the required deterministic \(C^1\) data and that the
coefficient vector remains
\(\alpha=(\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\); no leading-coordinate
augmentation occurs.

Lemma~\ref{lem:step-007-pivot-partition} gives the exact measurable partition
of \(J\) and proves the selected pivot is nonzero on each nonempty cell. Hence
all object, regularity, interval, dimension, and pivot hypotheses of
Proposition~\ref{prop:step-006-affine-bound} hold with \(I=J\) and \(N=d\).
Assumption~\ref{assump:cube-density-laws} supplies the one full
\(d\)-dimensional density cap used by that proposition; correlation among the
lower coefficients is unrestricted.

Applying Proposition~\ref{prop:step-006-affine-bound} gives exactly the
displayed inequality. Its chart sum is already the lossless output of the
accepted area-formula proof. This step does not apply a probability union
bound over charts, condition on a coefficient, factor the law, or count roots.
Cube-boundary coefficients and all literal endpoint conventions are already
within that accepted interface. This proves the proposition. \(\square\)

### unit_002: lemma

**Lemma (Coefficient-one two-cell integration ledger).**
\label{lem:step-008-s2-two-cell-ledger}

Statement: Under Assumption~\ref{assump:parameter-regime} and
Lemmas~\ref{lem:step-007-pivot-partition},
\ref{lem:step-007-low-pivot-chart}, and
\ref{lem:step-007-high-pivot-chart}, if \(d\geq2\) and \(J\) is a bounded
interval, then
\[
\sum_{j=1}^{d}\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j(\theta,\beta)\rvert
\,d\beta\,d\theta
\leq
(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.
\]
This conclusion retains the sharper high-chart speed before its
coefficient-one domination and incurs neither a chart-count factor nor a
union-bound loss.

Proof / justification:

Define, only for this proof,
\[
V_d:=d+\frac{R d(d-1)}2,\qquad
W_d:=1+\frac{R d(d-1)}2.
\]
The first quantity is the accepted common low-chart cap; the second is the
accepted sharper high-chart cap. Direct product volume gives
\[
\operatorname{Leb}^{d-1}([-R,R]^{d-1})
=\prod_{\ell=1}^{d-1}(2R)
=(2R)^{d-1}.
\]
This identity is for the closed cube itself, so beta coordinates on cube
faces are included; their inclusion changes neither the pointwise accepted
velocity estimates nor the displayed volume.

Lemma~\ref{lem:step-007-pivot-partition} says that all cells except \(E_1\)
and \(E_d\) are empty. Lemma~\ref{lem:step-007-low-pivot-chart} therefore
gives
\[
\int_{E_1}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_1\rvert\,d\beta\,d\theta
\leq (2R)^{d-1}V_d\lvert E_1\rvert,
\]
while Lemma~\ref{lem:step-007-high-pivot-chart} first gives the sharper bound
\[
\int_{E_d}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_d\rvert\,d\beta\,d\theta
\leq (2R)^{d-1}W_d\lvert E_d\rvert.
\]
No estimate has replaced either cell length by \(\lvert J\rvert\).

Because \(d\geq2\), the exact coefficient-one domination is
\[
V_d-W_d=d-1\geq0,\qquad W_d\leq V_d.
\]
Consequently the entire chart sum satisfies
\[
\begin{aligned}
&\sum_{j=1}^{d}\int_{E_j}\int_{[-R,R]^{d-1}}
\lvert\partial_\theta T_j\rvert\,d\beta\,d\theta\\
&\quad\leq(2R)^{d-1}
\bigl(V_d\lvert E_1\rvert+W_d\lvert E_d\rvert\bigr)\\
&\quad\leq(2R)^{d-1}V_d
\bigl(\lvert E_1\rvert+\lvert E_d\rvert\bigr).
\end{aligned}
\]
The prescribed sets form an exact disjoint partition of \(J\): the non-strict
condition \(\lvert\theta\rvert\leq1\) assigns both transition points to
\(E_1\), and the strict complementary condition assigns every other point to
\(E_d\). Therefore, for every literal endpoint convention on the bounded
interval \(J\),
\[
\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert.
\]
Substitution and expansion of \(V_d\) prove the stated bound. If either cell
is empty, its integral and length are both zero. The argument depends only on
the two pointwise regimes and thus is independent of the location of \(J\).
This proves the lemma. \(\square\)

### unit_003: proposition

**Proposition (Zero-dimensional linear branch).**
\label{prop:step-008-s2-linear-branch}

Statement: Under Assumptions~\ref{assump:parameter-regime} and
\ref{assump:cube-density-laws}, Proposition~\ref{prop:step-008-s2-affine-transfer},
Proposition~\ref{prop:step-007-monic-presentation},
Lemmas~\ref{lem:step-007-pivot-partition} and
\ref{lem:step-007-low-pivot-chart}, if \(d=1\),
\(\mu\in\mathcal D_{1,R,\kappa}\), and \(J\) is a bounded interval, then
\[
\Pr_{\alpha_0\sim\mu}\!\left[\exists\theta\in J:\theta+\alpha_0=0\right]
\leq\kappa\lvert J\rvert
=\kappa(2R)^0\left(1+\frac{R\cdot1\cdot0}{2}\right)\lvert J\rvert.
\]

Proof / justification:

At \(d=1\), Proposition~\ref{prop:step-007-monic-presentation} identifies
\(N=1\), \(\alpha=(\alpha_0)\), and \(p_\alpha(\theta)=\theta+\alpha_0\),
with the coefficient of \(\theta\) deterministic. The prescribed partition
has only \(E_1=J\). There are no nonpivot coordinates: the beta cube is
\[
[-R,R]^0=\{()\},\qquad
\operatorname{Leb}^{0}([-R,R]^0)=1=(2R)^0.
\]
Lemma~\ref{lem:step-007-low-pivot-chart} gives the exact empty-sum chart
\(T_1(\theta)=-\theta\) and \(\lvert T_1'(\theta)\rvert=1\) on all of \(J\).
Thus
\[
\int_{E_1}\int_{[-R,R]^0}\lvert T_1'(\theta)\rvert
\,d\operatorname{Leb}^{0}(\beta)\,d\theta
=\int_J1\,d\theta
=\lvert J\rvert.
\]
Applying Proposition~\ref{prop:step-008-s2-affine-transfer} now gives the
first inequality in the statement. The second equality uses
\(1+R\cdot1\cdot0/2=1\). There is no high chart, no second cell, and no
positive-dimensional cube factor. Empty or singleton intervals have length
zero and are already covered by the accepted affine interface. This proves
the proposition. \(\square\)

## Target-Step Assembly

Fix \(d\geq1\). Let \(\mu\in\mathcal D_{d,R,\kappa}\) be arbitrary, with no
restriction on coordinate correlation, and then let \(J\subset\mathbb R\) be
an arbitrary bounded interval with its literal endpoint convention.
Proposition~\ref{prop:step-008-s2-affine-transfer} applies the accepted general
affine theorem to the identical monic event, exact \(d\)-dimensional lower
coefficient vector, prescribed cells, and deterministic leading coefficient.

If \(d\geq2\), Lemma~\ref{lem:step-008-s2-two-cell-ledger} bounds its complete
chart sum by
\[
(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.
\]
That lemma uses the sharper high-chart speed first, then the literal
\(1+R d(d-1)/2\leq d+R d(d-1)/2\) comparison with coefficient one, and only afterward the exact
ledger \(\lvert E_1\rvert+\lvert E_d\rvert=\lvert J\rvert\). Thus no factor for
the number of charts appears. If \(d=1\),
Proposition~\ref{prop:step-008-s2-linear-branch} gives the same formula from
the zero-dimensional cube, volume one, and exact speed one.

The two cases exhaust every integer \(d\geq1\). Therefore
\[
\boxed{
\Pr_{\alpha\sim\mu}\!\left[\exists\theta\in J:p_\alpha(\theta)=0\right]
\leq
\kappa(2R)^{d-1}\left(d+\frac{R d(d-1)}2\right)\lvert J\rvert.}
\]
This is the exact accepted step_008 claim for every admissible law and then
every bounded interval. The result uses ordinary probability, allows arbitrary
correlation, keeps the monic coefficient deterministic and outside the random
vector, and introduces no independent root theorem, probability conversion,
chart union bound, auxiliary threshold, or location-dependent constant. The
boxed inequality is the minimal public-facing interface exported directly to
step_010.

## Explicit Rate Audit

- Exposed variables: \(d,R,\kappa,\lvert J\rvert\), with the literal output
  \(\kappa(2R)^{d-1}(d+R d(d-1)/2)\lvert J\rvert\). The accepted
  specialization also records \(q=0\), \(M=0\), \(N=d\),
  \(A=(2R)^d\kappa\), and \(\Delta_{\mathrm{aug}}=d\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(d,R,\kappa,\mu,J,c,h\), the location
  or endpoint convention of \(J\), coefficient correlations, chart count,
  root multiplicity, or a leading-coordinate approximation. There are no
  hidden constants.
- Fixed quantities: First \(d,R,\kappa\) and one arbitrary admissible law are
  fixed; then one arbitrary bounded \(J\) and the deterministic enclosing
  presentation from Proposition~\ref{prop:step-007-monic-presentation} are
  fixed while the chart variables are integrated. The resulting inequality
  is uniform over every such law and, after that, every such interval.
- Probability mode: Ordinary probability under one arbitrary full
  \(d\)-dimensional joint density capped by \(\kappa\). There is no confidence
  parameter, conditioning event, independence premise, or high-probability
  conversion.
- Horizon mode: Every bounded interval \(J\), including empty, singleton,
  open, closed, and half-open conventions. There is no recursive, asymptotic,
  stopped, or limiting horizon.
- Norm mode: Scalar absolute chart velocity and \(d\)- and
  \((d-1)\)-dimensional Euclidean Lebesgue coefficient volume, with the
  zero-dimensional measure normalization at \(d=1\).
- Admissibility conditions and auxiliary tolerances: \(d\geq1\), \(R>0\),
  \(0<\kappa<\infty\), an admissible law in
  \(\mathcal D_{d,R,\kappa}\), and bounded \(J\). The accepted dependencies
  verify \(N=d\), polynomial \(C^1\) regularity, exact event equality, and
  nonzero pivots. There are no auxiliary tolerances or thresholds in this
  step.
- Auxiliary parameter choice: None for the rate. The deterministic enclosing
  interval \(\Theta=[c-h,c+h]\supseteq J\) is constructed by the accepted
  monic-presentation proposition and disappears from the result.
- Technical-condition verification: Proposition~\ref{prop:step-008-s2-affine-transfer}
  checks the affine theorem's exact event, object, law dimension, interval,
  regularity, and pivot interfaces before applying it.
- Term absorption or simplification inequalities:
  \[
  \operatorname{Leb}^{d-1}([-R,R]^{d-1})=(2R)^{d-1},\qquad
  V_d-W_d=d-1\geq0\quad(d\geq2),
  \]
  \[
  V_d\lvert E_1\rvert+W_d\lvert E_d\rvert
  \leq V_d(\lvert E_1\rvert+\lvert E_d\rvert)
  =V_d\lvert J\rvert.
  \]
  At \(d=1\), \(\operatorname{Leb}^0([-R,R]^0)=(2R)^0=1\), the chart speed
  is one, and the only cell is \(J\).
- Probability conversion: The current step performs none. The accepted
  affine theorem already used the single full joint-density domination with
  literal factor \(\kappa\); this specialization only integrates its
  deterministic chart bound.
- Contribution to any Rate Specialization Bridge: This section and the three
  named local results form the complete R4 bridge: exact monic object and law
  dimension, technical-condition verification, beta-cube volume, high-chart
  domination, disjoint partition ledger, zero-dimensional branch, ordinary
  probability mode, and final literal rate.
- Baseline-reduction check: The output is the inherited affine-monic baseline
  itself, with no remainder or conservative loss. At \(d=1\) it reduces
  exactly to \(\kappa\lvert J\rvert\); for all \(d\), the same lower-coefficient
  vector is used and the monic coefficient remains deterministic.

## Blockers

None

## Notation And Assumption Notes

- Public-facing interface: Only the setting-defined polynomial
  \(p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k\), the original
  lower-coefficient law, and the boxed probability inequality are exported
  to step_010.
- Accepted dependency objects, appendix-local in this step: The enclosing
  \(\Theta\), functions \(F_0,F\), normalized polynomials \(Q_i\), pivot cells
  \(E_j\), charts \(T_1,T_d\), beta cube, and accepted cap
  \(V_d=d+R d(d-1)/2\). Each is supplied and bounded by a named accepted
  step_007 result; none is promoted into the exported theorem interface.
- Proof-local objects:
  \(\operatorname{Leb}^m\) denotes \(m\)-dimensional Lebesgue measure, with
  \(\operatorname{Leb}^0(\{()\})=1\), and
  \(W_d=1+R d(d-1)/2\) names the accepted sharper high-chart cap. The latter
  is used more than once in the explicit domination and is not exported.
  The symbols \(m,a_\ell,b_\ell,B,C\) in the standard-measure restatement are
  dummy local variables and are not part of the theorem interface.
- Constant and parameter provenance: \(d\) and \(J\) are target quantifiers;
  \(R,\kappa\), and the admissible law class come from
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:cube-density-laws}; \(N=d\), \(A=(2R)^d\kappa\), and
  \(\Delta_{\mathrm{aug}}=d\) are accepted dependency conclusions;
  \((2R)^{d-1}\) is proved by the cube-volume calculation; \(V_d\) and \(W_d\)
  are the exact accepted velocity expressions, with their comparison proved
  in Lemma~\ref{lem:step-008-s2-two-cell-ledger}. No free finite constant is
  introduced.
- Assumption provenance: The density support and cap are primitive. Exact
  event equality, polynomial regularity, pivot validity, chart identities,
  velocity bounds, and the deterministic-leading-coordinate property are
  supplied by accepted dependencies. Cube volume, the length ledger, the
  common-cap domination, and the \(d=1\) integral are proved locally. No
  generated root event, local-validity fact, recurrence, stability,
  boundedness invariant, or conditional hypothesis is used to make the
  unconditional conclusion.
- Boundary audit: The accepted partition assigns
  \(\theta=0,\pm1\) to the constant-pivot cell; the high chart is used only for
  \(\lvert\theta\rvert>1\). Empty cells contribute zero. Cube faces are
  included. Arbitrarily distant bounded intervals are enclosed by the
  accepted deterministic construction. Every literal endpoint convention is
  retained, and the exact set partition yields the length identity. The
  \(d=1\) beta cube is zero-dimensional with volume one and exact speed one.
- Dependency and citation boundary: Only the current accepted step_006 and
  step_007 proof/review pairs with the hashes above are proof evidence. No
  step_010 or final-assembly artifact, external polynomial-root theorem,
  randomized leading coefficient, or transitive proxy conclusion is used.
- Diagnostic boundary: The global pair was hash-verified, and its review is
  accepted, but global_proof.md was not read or used for this proof. The stale
  sketch-attempt-1 step_008 review was consulted only as same-step diagnostic
  history for boundary and validation checks; it supplies no premise, local
  result, label, or proof conclusion. The current labels and three-unit
  decomposition are fresh for sketch attempt 2.
