# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For fixed \(h\), define the closed constraints \(C_{h,x}\subseteq\Delta_L\), prove their FIP from `step_003`, and use compactness to obtain \(w_h\in\bigcap_{x\in\mathcal X}C_{h,x}\).  Audit empty, finite, and arbitrarily infinite \(\mathcal X\) without requiring compatible finite witnesses or a sequence.
- Depends on: `step_003`
- Assumptions used: Primitive `assump:canonical-rounded-output-catalog` for \(L\ge1\); derived finite feasibility from `step_003`
- Technical challenge: Globalize \(\forall F\text{ finite}\,\exists w_{h,F}\) to \(\exists w_h\,\forall x\) in one fixed space while retaining a closed positive margin.
- Intended proof tool or cited result: Heine--Borel and the fully specified closed-set FIP theorem, proved by the open-cover finite-subcover contradiction in current notation.
- Output target: One global simplex weight with exact pointwise margin on arbitrary \(\mathcal X\).
- Rate objective: R1: zero-residual arbitrary-domain bridge at unchanged \(\rho_\varepsilon\), including \(\varepsilon=0\), \(L=1\), and duplicate catalog entries.
- Review status: PENDING

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:canonical-rounded-output-catalog`: the setting supplies one fixed finite ordered catalog \((g_1,\ldots,g_L)\) with \(1\le L\le B(1+m/\tau^2)^k\). This step uses only that \(L\) is a finite positive integer, that the same functions \(g_i\) define every constraint, and that \(\Delta_L\) is the setting-defined simplex.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-003-finite-separator}: for every fixed \(h\in\mathcal H\) and every nonempty finite \(F\subseteq\mathcal X\), there exists \(w_{h,F}\in\Delta_L\) satisfying
    \[
    \forall x\in F,
    \qquad
    h(x)\sum_{i=1}^L w_{h,F,i}g_i(x)\ge\rho_\varepsilon,
    \qquad \rho_\varepsilon:=1-2\varepsilon.
    \]
  - Accepted Lemma~\ref{lem:step-003-empty-restriction}: when \(F=\varnothing\), the vertex \(e_1\in\Delta_L\) satisfies the same universally quantified inequalities vacuously. The accepted dependency explicitly defines no empty probability simplex and invokes no minimax theorem in this branch.
- Local conditional hypotheses: None.
- Accepted dependency artifacts:
  - `perspective_1/idea_3/proof_steps/step_003/proof.md`, SHA-256 `df0cecad7f8b44a606a7baf14e55722639159bb315468de7410a18f79afaadc0`.
  - `perspective_1/idea_3/proof_steps/step_003/review.md`, SHA-256 `d5f5188885c68ca9607c37ed722ed4066e76755a6c0256b9cff977e9d885ad1e`, status `ACCEPTED` for sketch attempt 1 and unit attempt 1.
- Binding branch artifacts:
  - `perspective_1/idea_3/setting.md`, SHA-256 `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`.
  - `perspective_1/idea_3/proof_sketch.md`, SHA-256 `ec48a538bbde2f7a738402d2625a54eecfbb48693d25bed97f9abea9f61450da`.
  - `perspective_1/idea_3/proof_sketch_review.md`, SHA-256 `c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172`, status `ACCEPTED`.

No conclusion from `step_001` or `step_002` is used directly. In particular, all finite feasibility used below comes through the single accepted dependency `step_003`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:canonical-rounded-output-catalog}, the setting-defined simplex \(\Delta_L\) is nonempty and compact in \(\mathbb R^L\). | Supplies the one fixed nonempty compact ambient space for every pointwise constraint. |
| `unit_002` | lemma | Under Assumption~\ref{assump:canonical-rounded-output-catalog}, if \(h\in\mathcal H\) and \(x\in\mathcal X\), then \(C_{h,x}:=\{w\in\Delta_L:h(x)\sum_iw_i g_i(x)\ge\rho_\varepsilon\}\) is relatively closed in \(\Delta_L\). | Supplies closedness of every member of the arbitrary constraint family without imposing structure on \(\mathcal X\). |
| `unit_003` | lemma | Under Assumption~\ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-003-finite-separator}, accepted Lemma~\ref{lem:step-003-empty-restriction}, and Lemma~\ref{lem:step-004-simplex-compact}, if \(h\in\mathcal H\) is fixed, then \(\bigcap_{x\in F}C_{h,x}\ne\varnothing\) for every finite \(F\subseteq\mathcal X\), including \(F=\varnothing\). | Converts exactly the accepted finite-separator interface into the finite-intersection property in the fixed simplex. |
| `unit_004` | lemma | If \(K\) is a compact topological space and an arbitrarily indexed family of relatively closed subsets of \(K\) has nonempty intersection for every finite subfamily, including the empty subfamily, then its total intersection is nonempty. | Proves the arbitrary-family closed-set FIP implication by open complements and a finite-subcover contradiction. |
| `unit_005` | proposition | Under Assumption~\ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-003-finite-separator}, accepted Lemma~\ref{lem:step-003-empty-restriction}, and Lemmas~\ref{lem:step-004-simplex-compact}, \ref{lem:step-004-constraint-closed}, \ref{lem:step-004-finite-intersections}, and \ref{lem:step-004-compact-fip}, if \(h\in\mathcal H\) is fixed, then there exists \(w_h\in\Delta_L\) such that \(h(x)\sum_iw_{h,i}g_i(x)\ge\rho_\varepsilon\) for every \(x\in\mathcal X\). | Produces the exact global separator and audits all requested domain, simplex, catalog, and margin boundary cases. |

Atomic step = no. Compactness of the ambient simplex, relative closedness of each constraint, finite feasibility from the accepted dependency, the abstract arbitrary-family FIP implication, and its current-object instantiation are independent audit obligations.

## Cited Result Applications

### Accepted dependency: exact finite simultaneous feasibility

- Source: accepted Proposition~\ref{prop:step-003-finite-separator} and accepted Lemma~\ref{lem:step-003-empty-restriction} in `perspective_1/idea_3/proof_steps/step_003/proof.md`, certified by the matching `ACCEPTED` review listed above.
- Restated statement in current notation: for every \(h\in\mathcal H\) and every finite \(F\subseteq\mathcal X\), there exists a weight \(w_{h,F}\in\Delta_L\) such that
  \[
  \forall x\in F,
  \qquad
  h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)\ge\rho_\varepsilon.
  \]
  For nonempty \(F\), this is the conclusion of Proposition~\ref{prop:step-003-finite-separator}; for empty \(F\), accepted Lemma~\ref{lem:step-003-empty-restriction} supplies \(e_1\in\Delta_L\) and the assertion is vacuous.
- Instantiated objects: the target \(h\), a finite set \(F\), the same fixed catalog \((g_1,\ldots,g_L)\), the same simplex \(\Delta_L\), and the same threshold \(\rho_\varepsilon\) used in the present constraints.
- Required assumptions and discharge: the accepted dependency review verifies its primitive assumptions, the upstream per-distribution correlation interface, minimax application, attainment, and empty-set branch. This step uses only the displayed finite-feasibility conclusion and does not invoke or replace any upstream argument.
- Conclusion used: for nonempty \(F\), the dependency weight belongs to every \(C_{h,x}\) with \(x\in F\); for empty \(F\), \(e_1\) witnesses nonemptiness of the empty intersection, which is \(\Delta_L\).

### Heine--Borel theorem

- Standard result restated: because \(L\) is finite, a subset of \(\mathbb R^L\) is compact in the Euclidean topology if and only if it is closed and bounded.
- Instantiated object: \(\Delta_L=\{w\in[0,1]^L:\sum_iw_i=1\}\).
- Required assumptions and discharge: Assumption~\ref{assump:canonical-rounded-output-catalog} gives a finite integer \(L\ge1\). Lemma~\ref{lem:step-004-simplex-compact} proves directly that \(\Delta_L\) is nonempty, closed, and bounded.
- Conclusion used: \(\Delta_L\) is the fixed compact space to which Lemma~\ref{lem:step-004-compact-fip} is applied.

### Continuous inverse images of closed sets

- Standard result restated: if \(f:Y\to\mathbb R\) is continuous and \(A\subseteq\mathbb R\) is closed, then \(f^{-1}(A)\) is closed in \(Y\). Equivalently, restricting a continuous function to a subspace gives a relatively closed inverse image of a closed set.
- Instantiated objects: for fixed \(h,x\),
  \[
  \ell_{h,x}(w):=h(x)\sum_{i=1}^Lw_i g_i(x),
  \qquad
  C_{h,x}=\bigl(\ell_{h,x}|_{\Delta_L}\bigr)^{-1}
  ([\rho_\varepsilon,\infty)).
  \]
- Required assumptions and discharge: Lemma~\ref{lem:step-004-constraint-closed} proves \(\ell_{h,x}\) is a continuous linear functional by an explicit finite-dimensional Lipschitz bound, and the ray \([\rho_\varepsilon,\infty)\) is closed in \(\mathbb R\).
- Conclusion used: each \(C_{h,x}\) is relatively closed in the same \(\Delta_L\).

### Local result applications

- Lemma~\ref{lem:step-004-simplex-compact}, proved below, supplies nonemptiness and compactness of the one fixed simplex. It is used by Lemma~\ref{lem:step-004-finite-intersections} and Proposition~\ref{prop:step-004-global-separator}.
- Lemma~\ref{lem:step-004-constraint-closed}, proved below, supplies relative closedness of each pointwise constraint. It is used by Proposition~\ref{prop:step-004-global-separator}.
- Lemma~\ref{lem:step-004-finite-intersections}, proved below using exactly accepted `step_003`, supplies the finite-intersection property, including empty and singleton subfamilies. It is used by Proposition~\ref{prop:step-004-global-separator}.
- Lemma~\ref{lem:step-004-compact-fip}, proved below rather than merely invoked, converts an arbitrary closed-set family with the FIP inside a compact space into a nonempty total intersection. It is used by Proposition~\ref{prop:step-004-global-separator}.
- Proposition~\ref{prop:step-004-global-separator}, proved below, instantiates the four lemmas and supplies the exact output used in the target-step assembly.

## Local Derivation

### unit_001: lemma

**Lemma (The fixed catalog simplex is nonempty and compact).**
\(\label{lem:step-004-simplex-compact}\)

Statement:
Under Assumption~\ref{assump:canonical-rounded-output-catalog}, let
\[
\Delta_L=\left\{w\in[0,1]^L:\sum_{i=1}^Lw_i=1\right\}
\subseteq\mathbb R^L.
\]
Then \(\Delta_L\) is nonempty and compact in \(\mathbb R^L\).

Proof / justification:
Assumption~\ref{assump:canonical-rounded-output-catalog} gives a finite integer \(L\ge1\). Hence the first coordinate vector
\[
e_1=(1,0,\ldots,0)
\]
is defined and belongs to \(\Delta_L\), proving nonemptiness.

For each \(i\), the coordinate condition \(0\le w_i\le1\) defines a closed subset of \(\mathbb R^L\). The map \(w\mapsto\sum_{i=1}^Lw_i\) is a continuous linear functional, so the affine hyperplane on which this sum equals \(1\) is closed. Their finite intersection is exactly \(\Delta_L\), and therefore \(\Delta_L\) is closed. Moreover, if \(w\in\Delta_L\), then \(0\le w_i\le1\) implies \(w_i^2\le w_i\), whence
\[
\lVert w\rVert_2^2=\sum_{i=1}^Lw_i^2
\le\sum_{i=1}^Lw_i=1.
\]
Thus \(\Delta_L\) is bounded. Since \(L\) is finite, Heine--Borel now gives compactness in \(\mathbb R^L\). When \(L=1\), the same argument reads \(\Delta_1=\{(1)\}\), so the boundary case is included. This proves the lemma.

### unit_002: lemma

**Lemma (Each pointwise margin constraint is relatively closed).**
\(\label{lem:step-004-constraint-closed}\)

Statement:
Under Assumption~\ref{assump:canonical-rounded-output-catalog}, fix \(h\in\mathcal H\) and \(x\in\mathcal X\). Define
\[
\ell_{h,x}:\mathbb R^L\to\mathbb R,
\qquad
\ell_{h,x}(w):=h(x)\sum_{i=1}^Lw_i g_i(x),
\]
and
\[
C_{h,x}:=
\left\{w\in\Delta_L:
h(x)\sum_{i=1}^Lw_i g_i(x)\ge\rho_\varepsilon
\right\}.
\]
Then \(\ell_{h,x}\) is a continuous linear functional and \(C_{h,x}\) is relatively closed in \(\Delta_L\).

Proof / justification:
The coefficients \(h(x)g_i(x)\) lie in \(\{-1,+1\}\). For \(u,v\in\mathbb R^L\), finiteness of \(L\) gives
\[
\begin{aligned}
|\ell_{h,x}(u)-\ell_{h,x}(v)|
&=\left|\sum_{i=1}^Lh(x)g_i(x)(u_i-v_i)\right|\\
&\le\sum_{i=1}^L|u_i-v_i|\\
&\le L\lVert u-v\rVert_2.
\end{aligned}
\]
Thus \(\ell_{h,x}\) is Lipschitz, hence continuous. Since the ray \([\rho_\varepsilon,\infty)\) is closed,
\[
C_{h,x}
=\Delta_L\cap\ell_{h,x}^{-1}([\rho_\varepsilon,\infty))
=\bigl(\ell_{h,x}|_{\Delta_L}\bigr)^{-1}
([\rho_\varepsilon,\infty))
\]
is closed in the subspace topology of \(\Delta_L\). This proof uses only the point \(x\) as an index; it introduces no topology or sigma-algebra on \(\mathcal X\). Duplicate catalog functions merely repeat coefficients and do not affect continuity or closedness. This proves the lemma.

### unit_003: lemma

**Lemma (Accepted finite separators give the finite-intersection property).**
\(\label{lem:step-004-finite-intersections}\)

Statement:
Under Assumption~\ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-003-finite-separator}, accepted Lemma~\ref{lem:step-003-empty-restriction}, and Lemma~\ref{lem:step-004-simplex-compact}, fix \(h\in\mathcal H\) and define \(C_{h,x}\) as in Lemma~\ref{lem:step-004-constraint-closed}. Then every finite \(F\subseteq\mathcal X\), including \(F=\varnothing\), satisfies
\[
\bigcap_{x\in F}C_{h,x}\ne\varnothing,
\]
where the intersection over the empty subfamily is \(\Delta_L\).

Proof / justification:
First suppose \(F\ne\varnothing\). Accepted Proposition~\ref{prop:step-003-finite-separator} gives a weight \(w_{h,F}\in\Delta_L\) for which
\[
h(x)\sum_{i=1}^Lw_{h,F,i}g_i(x)
\ge\rho_\varepsilon
\qquad(x\in F).
\]
By the definition of \(C_{h,x}\), this says exactly that
\[
w_{h,F}\in\bigcap_{x\in F}C_{h,x}.
\]
No conclusion from any step other than accepted `step_003` is used for this nonempty finite family.

If \(F=\varnothing\), the intersection of the empty subfamily of subsets of \(\Delta_L\) is, by definition, the whole ambient space \(\Delta_L\). Accepted Lemma~\ref{lem:step-003-empty-restriction} supplies \(e_1\in\Delta_L\) without invoking an empty simplex or minimax, and Lemma~\ref{lem:step-004-simplex-compact} independently establishes the same nonemptiness from \(L\ge1\). Thus the empty intersection is nonempty. In particular, a singleton subfamily \(F=\{x\}\) is covered by the nonempty branch and has its witness directly from accepted Proposition~\ref{prop:step-003-finite-separator}.

The witness may depend arbitrarily on \(F\). This argument neither chooses nor assumes a compatible family \(F\mapsto w_{h,F}\); it records only nonemptiness of each finite intersection. This proves the lemma.

### unit_004: lemma

**Lemma (Closed-set finite-intersection principle in a compact space).**
\(\label{lem:step-004-compact-fip}\)

Statement:
Let \(K\) be a compact topological space, let \(J\) be an arbitrary index set, and let \(\{D_j:j\in J\}\) be a family of subsets closed in \(K\). Adopt the convention \(\bigcap_{j\in\varnothing}D_j=K\). If
\[
\bigcap_{j\in E}D_j\ne\varnothing
\qquad\text{for every finite }E\subseteq J,
\]
including \(E=\varnothing\), then
\[
\bigcap_{j\in J}D_j\ne\varnothing.
\]

Proof / justification:
The hypothesis for \(E=\varnothing\) says \(K\ne\varnothing\). If \(J=\varnothing\), then the claimed total intersection is \(K\), so the conclusion follows immediately.

Now suppose, toward a contradiction, that
\[
\bigcap_{j\in J}D_j=\varnothing.
\]
For each \(j\in J\), let \(U_j:=K\setminus D_j\). Because \(D_j\) is closed in \(K\), \(U_j\) is open in \(K\). Taking complements of the assumed empty total intersection gives
\[
K=\bigcup_{j\in J}U_j,
\]
so \(\{U_j:j\in J\}\) is an open cover of \(K\). Compactness of \(K\) yields a finite set \(E\subseteq J\) such that
\[
K=\bigcup_{j\in E}U_j.
\]
Taking complements inside \(K\) and applying De Morgan's law gives
\[
\bigcap_{j\in E}D_j
=K\setminus\bigcup_{j\in E}U_j
=\varnothing,
\]
contradicting the assumed nonemptiness of every finite intersection. Therefore the total intersection is nonempty. The proof applies to every cardinality of \(J\) and uses neither a sequence nor sequential compactness. This proves the lemma.

### unit_005: proposition

**Proposition (One fixed-simplex separator works on the arbitrary domain).**
\(\label{prop:step-004-global-separator}\)

Statement:
Under Assumption~\ref{assump:canonical-rounded-output-catalog}, accepted Proposition~\ref{prop:step-003-finite-separator}, accepted Lemma~\ref{lem:step-003-empty-restriction}, and Lemmas~\ref{lem:step-004-simplex-compact}, \ref{lem:step-004-constraint-closed}, \ref{lem:step-004-finite-intersections}, and \ref{lem:step-004-compact-fip}, fix \(h\in\mathcal H\). Then
\[
\bigcap_{x\in\mathcal X}C_{h,x}\ne\varnothing.
\]
Consequently, there exists \(w_h\in\Delta_L\) such that
\[
\forall x\in\mathcal X,
\qquad
h(x)\sum_{i=1}^Lw_{h,i}g_i(x)
\ge\rho_\varepsilon=1-2\varepsilon.
\]

Proof / justification:
Lemma~\ref{lem:step-004-simplex-compact} shows that \(K:=\Delta_L\) is a nonempty compact space. Lemma~\ref{lem:step-004-constraint-closed} shows that, for every \(x\in\mathcal X\), the set \(D_x:=C_{h,x}\) is closed in this same \(K\). Lemma~\ref{lem:step-004-finite-intersections}, using exactly the accepted finite-feasibility output of `step_003`, shows that
\[
\bigcap_{x\in F}D_x\ne\varnothing
\qquad\text{for every finite }F\subseteq\mathcal X,
\]
including the empty subfamily. Lemma~\ref{lem:step-004-compact-fip} therefore applies with index set \(J=\mathcal X\) and gives
\[
\bigcap_{x\in\mathcal X}C_{h,x}\ne\varnothing.
\]
Choose one \(w_h\) from this nonempty total intersection. For each \(x\in\mathcal X\), membership \(w_h\in C_{h,x}\) is, by definition, exactly
\[
h(x)\sum_{i=1}^Lw_{h,i}g_i(x)\ge\rho_\varepsilon.
\]
The finite and global inequalities have the identical catalog, target, weight space, point evaluation, and threshold. Hence this transfer has zero residual and no loss of margin.

All requested boundary regimes are contained in this argument:

- If \(\mathcal X=\varnothing\), the total intersection is the empty-family intersection \(\Delta_L\), and \(e_1\) is an explicit valid choice. The pointwise conclusion is vacuous.
- If \(\mathcal X\) is finite, countably infinite, or uncountable, the same arbitrary-index-set Lemma~\ref{lem:step-004-compact-fip} applies. The proof places no topology, ordering, sigma-algebra, or countability condition on \(\mathcal X\), and constructs no sequence.
- If \(L=1\), then \(\Delta_1=\{(1)\}\). Accepted finite feasibility puts this same sole weight in every finite intersection, and the compact FIP conclusion returns it globally.
- Duplicate catalog functions do not alter the ambient simplex, continuity of the pointwise functionals, relative closedness, or accepted finite feasibility. No distinctness assumption is used.
- If \(\varepsilon=0\), then \(\rho_\varepsilon=1\), and every constraint, finite or global, retains threshold \(1\). Moreover, for any \(w\in\Delta_L\), the value \(h(x)\sum_iw_i g_i(x)\) is a convex combination of numbers in \(\{-1,+1\}\), hence is at most \(1\). The proved lower bound is therefore exactly \(1\), not \(1\) minus a compactness residual.
- Empty and singleton finite subfamilies were handled explicitly in Lemma~\ref{lem:step-004-finite-intersections}. For larger finite subfamilies, accepted `step_003` supplies a witness separately for that subfamily.

At no point is a compatible family of finite witnesses selected or assumed. All constraints remain subsets of the single fixed simplex \(\Delta_L\); no varying simplex, limiting simplex, subsequence, net, or topology on the index set is introduced. This proves the proposition.

## Target-Step Assembly

Fix an arbitrary \(h\in\mathcal H\). Lemma~\ref{lem:step-004-simplex-compact} proves directly from the primitive finite positive catalog size that \(\Delta_L\) is nonempty, closed, bounded, and therefore compact by Heine--Borel. Lemma~\ref{lem:step-004-constraint-closed} proves that every exact-threshold set
\[
C_{h,x}=\left\{w\in\Delta_L:
h(x)\sum_{i=1}^Lw_i g_i(x)\ge\rho_\varepsilon
\right\}
\]
is relatively closed in that same simplex.

Accepted Proposition~\ref{prop:step-003-finite-separator} and accepted Lemma~\ref{lem:step-003-empty-restriction} are consumed only through Lemma~\ref{lem:step-004-finite-intersections}, which proves
\[
\forall F\subseteq\mathcal X\text{ finite},
\qquad
\bigcap_{x\in F}C_{h,x}\ne\varnothing.
\]
Lemma~\ref{lem:step-004-compact-fip} proves by the open-complement/finite-subcover contradiction that these facts imply a nonempty total intersection for an arbitrary index set. Proposition~\ref{prop:step-004-global-separator} instantiates that lemma and yields
\[
\boxed{
w_h\in\bigcap_{x\in\mathcal X}C_{h,x}
}
\]
for some \(w_h\in\Delta_L\), equivalently
\[
\boxed{
\forall x\in\mathcal X,
\qquad
h(x)\sum_{i=1}^Lw_{h,i}g_i(x)
\ge\rho_\varepsilon=1-2\varepsilon.
}
\]
Because \(h\) was arbitrary, this proves exactly the accepted `step_004` row. The proof covers empty, finite, countably infinite, and uncountable \(\mathcal X\); it requires no compatible finite witnesses, no sequence, no topology on \(\mathcal X\), and no movement between simplices. The finite-to-global residual is identically zero.

## Explicit Rate Audit

- Exposed variables: \(m,\tau,\varepsilon,L,B,k\), with the exact threshold \(\rho_\varepsilon=1-2\varepsilon\) and the unchanged catalog range \(1\le L\le B(1+m/\tau^2)^k\). Only \(L\) enters the compact ambient space and only \(\varepsilon\) enters the inherited threshold; the other variables pass through unchanged.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(m,\tau,\varepsilon,L,B,k\), \(\mathcal X,\mathcal H,h\), a finite subfamily \(F\), any distribution, policy, reply, learner tape, catalog multiplicity, or finite/global witness.
- Fixed quantities: the certified protocol, nearest-grid rule, ordered pre-instance catalog, and family constants \(B,k\). The target \(h\) is arbitrary and fixed only during one application.
- Probability mode: deterministic existence in a compact finite-dimensional simplex. The accepted dependency has already eliminated learner-tape expectation; this step introduces no probability statement or event.
- Horizon mode: fixed finite upper bound \(m\), including \(m=0\). This static compactness step neither uses the learner horizon nor changes its mode.
- Norm mode: the exact pointwise signed margin \(h(x)\sum_iw_{h,i}g_i(x)\), uniformly over the original arbitrary domain. No average, exceptional set, or surrogate norm is introduced.
- Admissibility conditions and auxiliary tolerances: the primitive finite positive catalog size \(L\ge1\) and the exact finite-feasibility interface from accepted `step_003`. The setting range of \(\varepsilon\) and the definition \(\rho_\varepsilon=1-2\varepsilon\) are carried through the dependency unchanged. There is no auxiliary tolerance.
- Term absorption or simplification inequalities: None. For every \(x\), membership in \(C_{h,x}\) is literally the same inequality before and after globalization:
  \[
  w_h\in C_{h,x}
  \quad\Longleftrightarrow\quad
  h(x)\sum_iw_{h,i}g_i(x)\ge\rho_\varepsilon.
  \]
  No term is dropped, dominated, or absorbed.
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: this step is the exact R1 arbitrary-domain bridge. It changes finite simultaneous feasibility into global simultaneous feasibility with the same \(L\), the same catalog coordinates, the same threshold, and zero residual. It performs no public-rate simplification.
- Baseline-reduction check: if \(\varepsilon=0\), the global signed margin equals \(1\) exactly. If \(L=1\), the ambient simplex is the singleton \(\{(1)\}\). Duplicate catalog entries, empty and singleton finite subfamilies, empty through uncountable domains, \(m=0\), and every \(\tau>0\) introduce no loss or new dependence.

## Blockers

None

## Notation And Assumption Notes

- \(\rho_\varepsilon:=1-2\varepsilon\) is `public-facing` notation fixed by the accepted sketch and inherited unchanged through accepted `step_003`. It is defined directly from the setting parameter \(\varepsilon\); no new margin or threshold is introduced.
- The catalog \((g_1,\ldots,g_L)\) and simplex \(\Delta_L\) are setting-defined `public-facing` objects. The finite positive integer \(L\) and the bound \(1\le L\le B(1+m/\tau^2)^k\) come directly from Assumption~\ref{assump:canonical-rounded-output-catalog}. The Euclidean bound \(\lVert w\rVert_2\le1\) on \(\Delta_L\) is proved in Lemma~\ref{lem:step-004-simplex-compact}, not assumed.
- \(C_{h,x}\) is `appendix-local` notation for the exact pointwise constraint already specified in the accepted sketch. It uses only setting functions, a fixed target and point, the setting simplex, and the inherited threshold. The family is indexed by the underlying set \(\mathcal X\); no topology or countability on \(\mathcal X\) is assumed.
- \(\ell_{h,x}\) is a `proof-local` linear functional introduced only to prove relative closedness. Its finite-dimensional Lipschitz bound and continuity are proved in Lemma~\ref{lem:step-004-constraint-closed}.
- The abstract symbols \(K,J,D_j,U_j,E\) in Lemma~\ref{lem:step-004-compact-fip} are `proof-local`. They are fully instantiated as \(\Delta_L,\mathcal X,C_{h,x},\Delta_L\setminus C_{h,x},F\), respectively, before the lemma is consumed.
- The finite weights \(w_{h,F}\) are accepted dependency objects and are `appendix-local` in this step: they certify finite intersections but are not exported beyond the compactness argument. The coordinate vertex \(e_1=(1,0,\ldots,0)\) is a setting-derived `proof-local` witness also used by the accepted dependency's empty branch. This step does not define, select, or assume a compatible map \(F\mapsto w_{h,F}\).
- The global weight \(w_h\) is the minimal `public-facing` generated output. Its existence and every pointwise inequality are proved by Proposition~\ref{prop:step-004-global-separator}; it is not a primitive condition or a local conditional hypothesis.
- Assumption provenance is closed: finite positive catalog size is the sole primitive row-local condition; every finite intersection is supplied by the accepted dependency and translated exactly in Lemma~\ref{lem:step-004-finite-intersections}; compactness and relative closedness are proved locally; total feasibility is proved locally by Lemma~\ref{lem:step-004-compact-fip}. There is no event, stability condition, recurrence, boundedness premise, or other unproved generated invariant.
- There are no new constants, approximation radii, error terms, probability parameters, or hidden bounded quantities. The globalization residual is exactly zero because finite and global constraints are identical subsets of the same fixed \(\Delta_L\).
- The accepted diagnostic `global_proof.md`, SHA-256 `44796754e8c47ace167be50dc508a89304987807e8a85926ffad941fee4956f9`, was read only for the `step_004` planning pattern in Block B4. Its paired `global_proof_review.md`, SHA-256 `9dd2c6c49ac476c03e9bf8339e892d0f50c936d0651f62eeec1c402ac69a6cac`, has status `ACCEPTED` and reviews that exact diagnostic hash. Neither diagnostic artifact is used as proof evidence, a cited result, an assumption source, or authority to change the target claim, dependency, scope, or threshold.
