# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For each \(h\), the closed family
  \(\{K_{h,F}:F\subseteq X\text{ finite}\}\) has the FIP in compact
  \(\Delta_L\); hence produce one \(w_h\) satisfying
  \(h(x)s_{w_h}(x)\ge\rho\) for all \(x\in X\), including empty \(X\).
- Depends on: `step_003`.
- Assumptions used: Primitive `assump:finite-terminal-catalog`; derived
  finite feasibility from `step_003`.
- Technical challenge: Upgrade finite simultaneous feasibility to
  arbitrary-domain uniform feasibility without an annihilating probability,
  witness sequence, domain topology, or residual.
- Intended proof tool or cited result: Closed-halfspace continuity;
  Heine--Borel compactness of finite \(\Delta_L\); compact closed-set FIP
  theorem, all restated in current notation.
- Output target: `obligation:finite-simplex-exactification` and global
  \(w_h\).
- Rate objective: Pointwise margin target: preserve exact \(\rho\) under the
  arbitrary-domain upgrade.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:finite-terminal-catalog`: the fixed catalog is
  \(G=\{g_1,\ldots,g_L\}\) with finite \(L\ge1\). This supplies the one
  finite-dimensional simplex
  \[
  \Delta_L=\left\{w\in\mathbb R_+^L:\sum_{i=1}^Lw_i=1\right\}
  \]
  in which every constraint set and the final weight live.
- Basic-setting definitions, not additional assumptions: for
  \(h\in H\), \(w\in\Delta_L\), and finite \(F\subseteq X\),
  \[
  s_w(x)=\sum_{i=1}^Lw_i g_i(x),\qquad
  K_{h,F}=\{w\in\Delta_L:h(x)s_w(x)\ge\rho
  \text{ for every }x\in F\},
  \tag{1}
  \]
  where \(\rho=1-2\varepsilon\). These objects depend only on the fixed
  catalog, the fixed target \(h\), and the setting-defined margin.

Accepted dependency artifacts:

- `proof_steps/step_003/proof.md`, SHA-256
  `7852d0b7301bf399d8e67c30ec9d94a34eff9352ea58b95f6999c14a0cc042f6`.
- `proof_steps/step_003/review.md`, SHA-256
  `c57aa38f534080818c592e894e104d4d02166a66a7264a403a41dc3e32a88d0b`,
  with controlled status `ACCEPTED` for sketch attempt 1, step `step_003`,
  unit attempt 1, and the proof hash above.

Derived invariant supplied by the accepted dependency:

- Proposition~\ref{prop:step-003-finite-feasibility}: for every
  \(h\in H\) and every finite \(F\subseteq X\),
  \[
  K_{h,F}\ne\varnothing.
  \tag{2}
  \]
  In particular,
  \(K_{h,\varnothing}=\Delta_L\ne\varnothing\); when
  \(F\ne\varnothing\), the dependency produces a finite witness satisfying
  every constraint at the exact threshold \(\rho\). This step consumes only
  (2) and the empty-set identity. It does not assume that the dependency's
  separately produced finite witnesses are coherent across \(F\).

Local conditional hypotheses:

- A target \(h\in H\) is fixed only inside statements that prove the
  targetwise conclusion. No distribution, reply policy, transcript, learner
  tape, finite witness sequence, topology on \(X\), or global weight is
  assumed.
- The compact-FIP local lemma takes an arbitrary index set and an arbitrary
  family of relatively closed subsets of \(\Delta_L\) as local mathematical
  inputs. Its FIP premise is later proved for the concrete family in (1); it
  is not promoted to a theorem-facing assumption.

Assumption-provenance classification:

- Catalog finiteness and \(L\ge1\) are primitive conditions.
- Finite feasibility (2) is an accepted derived certificate.
- Closedness, the finite-intersection identity, the FIP, and the existence of
  \(w_h\) are proved in this step. No generated condition is treated as
  primitive, and no local conditional hypothesis is used to obtain an
  unconditional conclusion before it is discharged.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:finite-terminal-catalog}, \(\Delta_L\) is nonempty and compact in \(\mathbb R^L\), and, if \(h\in H\) and \(F\subseteq X\) is finite, then \(K_{h,F}\) is a closed subset of that same simplex; moreover \(K_{h,\varnothing}=\Delta_L\). | Establishes the fixed compact ambient space and closedness of every exact finite constraint set, including the empty constraint set. |
| `unit_002` | proposition | Under Assumption~\ref{assump:finite-terminal-catalog}, the accepted conclusion of Proposition~\ref{prop:step-003-finite-feasibility}, and Lemma~\ref{lem:step-004-compact-constraints}, if \(h\in H\), \(n\in\mathbb N_0\), and \(F_1,\ldots,F_n\subseteq X\) are finite, then \(\bigcap_{j=1}^nK_{h,F_j}=K_{h,\cup_{j=1}^nF_j}\ne\varnothing\), using \(\bigcap_{j=1}^0K_{h,F_j}=\Delta_L\) and \(\bigcup_{j=1}^0F_j=\varnothing\). | Proves the exact finite-intersection identity and FIP without omitting the empty subfamily. |
| `unit_003` | lemma | Under Assumption~\ref{assump:finite-terminal-catalog} and Lemma~\ref{lem:step-004-compact-constraints}, if an arbitrarily indexed family of relatively closed subsets of \(\Delta_L\) has nonempty intersection for every finite subfamily, including the empty subfamily, then its total intersection is nonempty. | Proves the arbitrary-family compact-FIP implication in the current fixed-simplex notation. |
| `unit_004` | proposition | Under Assumption~\ref{assump:finite-terminal-catalog}, the accepted conclusion of Proposition~\ref{prop:step-003-finite-feasibility}, Lemma~\ref{lem:step-004-compact-constraints}, Proposition~\ref{prop:step-004-exact-fip}, and Lemma~\ref{lem:step-004-compact-fip}, if \(h\in H\), then there is one \(w_h\in\bigcap_{F\subseteq X,\,F\text{ finite}}K_{h,F}\) and hence \(h(x)s_{w_h}(x)\ge\rho\) for every \(x\in X\), including \(X=\varnothing\). | Produces the exact global weight and all-domain margin consumed by `step_005`. |

Atomic step = no. Compactness/closedness, exact finite intersections, the
arbitrary-family compactness implication, and target-object extraction are
independent audit obligations, so they are exposed as four named units.

## Cited Result Applications

No external paper result is used.

Accepted dependency result application:

- **Proposition~\ref{prop:step-003-finite-feasibility} (Exact finite catalog
  feasibility).** Source: the accepted `step_003` proof/review pair with the
  hashes listed above. Restated in current notation: under the primitive
  finite-catalog condition and the upstream accepted correlation interface,
  every \(h\in H\) and finite \(F\subseteq X\) satisfy (2); for empty
  \(F\), \(K_{h,F}=\Delta_L\), and for nonempty \(F\), an attained
  finite-game weight satisfies all constraints at the exact level \(\rho\).
  The only conclusion used here is nonemptiness for the finite union of any
  finite collection of constraint sets, together with the empty-set identity.
  Thus no finite witness, minimax law, distribution, or upstream policy object
  is imported.

Standard finite-dimensional result application:

- **Heine--Borel theorem in \(\mathbb R^L\).** Restated: because \(L\) is
  finite, a subset of \(\mathbb R^L\) is compact if it is closed and
  bounded. Assumption~\ref{assump:finite-terminal-catalog} supplies finite
  \(L\ge1\). Lemma~\ref{lem:step-004-compact-constraints} proves directly
  that \(\Delta_L\) is closed and bounded before applying Heine--Borel.
- **Continuity and closed inverse images.** Restated: a finite linear
  functional on \(\mathbb R^L\) is continuous, and the inverse image of the
  closed interval \([\rho,\infty)\) under a continuous map is closed. For
  each \(x\), the instantiated functional is
  \(w\mapsto h(x)\sum_iw_i g_i(x)\). Finite intersection with
  \(\Delta_L\) proves the required closedness in
  Lemma~\ref{lem:step-004-compact-constraints}.

The compact closed-family FIP implication is not invoked as an unproved
black box. Lemma~\ref{lem:step-004-compact-fip} derives it from the open-cover
definition of compactness in the exact space \(\Delta_L\).

Local result applications:

- **Lemma~\ref{lem:step-004-compact-constraints} (Compact catalog simplex
  and closed exact constraints).** It supplies one nonempty compact ambient
  simplex and relative closedness of every member of the concrete family. Its
  assumptions are discharged by the primitive finite catalog.
- **Proposition~\ref{prop:step-004-exact-fip} (Exact finite-intersection
  identity).** It supplies the FIP, including the empty subfamily, from the
  accepted finite-feasibility certificate. It is used in the global
  proposition.
- **Lemma~\ref{lem:step-004-compact-fip} (Arbitrary closed-family
  intersection on the catalog simplex).** It converts those closedness and
  FIP inputs into nonemptiness of the total, arbitrarily indexed
  intersection. It is used in the global proposition.
- **Proposition~\ref{prop:step-004-global-weight} (Exact arbitrary-domain
  catalog weight).** It extracts the same \(w_h\) from the total intersection
  and uses singleton constraint sets to obtain every pointwise inequality at
  the unchanged threshold \(\rho\).

## Local Derivation

### unit_001: lemma

**Lemma (Compact catalog simplex and closed exact constraints).**
\(\label{lem:step-004-compact-constraints}\)

Statement: Under Assumption~\ref{assump:finite-terminal-catalog},
\(\Delta_L\) is a nonempty compact subset of \(\mathbb R^L\). If in
addition \(h\in H\) and \(F\subseteq X\) is finite, then the set
\(K_{h,F}\) in (1) is closed in \(\mathbb R^L\), and therefore is a
relatively closed subset of the same fixed compact simplex. For
\(F=\varnothing\), one has exactly
\(K_{h,\varnothing}=\Delta_L\).

Proof / justification:

Assumption~\ref{assump:finite-terminal-catalog} gives a finite integer
\(L\ge1\). The first coordinate vector
\(e_1=(1,0,\ldots,0)\) belongs to \(\Delta_L\), so the simplex is
nonempty. Moreover,
\[
\Delta_L
=\bigcap_{i=1}^L\{w\in\mathbb R^L:w_i\ge0\}
 \cap\left\{w\in\mathbb R^L:\sum_{i=1}^Lw_i=1\right\}.
\tag{3}
\]
Every set on the right of (3) is closed, so \(\Delta_L\) is closed. For
every \(w\in\Delta_L\),
\[
\lVert w\rVert_2\le\lVert w\rVert_1
=\sum_{i=1}^Lw_i=1,
\tag{4}
\]
so it is bounded. Heine--Borel now gives compactness of this one simplex in
\(\mathbb R^L\).

Fix \(h\in H\), finite \(F\subseteq X\), and \(x\in F\). The map
\[
\lambda_{h,x}:\mathbb R^L\longrightarrow\mathbb R,
\qquad
\lambda_{h,x}(w)
:=h(x)\sum_{i=1}^Lw_i g_i(x)
\tag{5}
\]
is a finite linear functional and hence continuous. Therefore
\(\lambda_{h,x}^{-1}([\rho,\infty))\) is closed. From the exact definition
(1),
\[
K_{h,F}
=\Delta_L\cap
  \bigcap_{x\in F}\lambda_{h,x}^{-1}([\rho,\infty)).
\tag{6}
\]
The intersection in (6) is finite, so \(K_{h,F}\) is closed in
\(\mathbb R^L\). It is consequently closed in the relative topology of
\(\Delta_L\). If \(F=\varnothing\), the second intersection in (6) is
\(\mathbb R^L\) by the empty-intersection convention, and thus
\[
K_{h,\varnothing}=\Delta_L.
\tag{7}
\]
This also verifies closedness of the empty constraint set without introducing
any point of \(X\). \(\square\)

### unit_002: proposition

**Proposition (Exact finite-intersection identity).**
\(\label{prop:step-004-exact-fip}\)

Statement: Under Assumption~\ref{assump:finite-terminal-catalog}, the
accepted conclusion of
Proposition~\ref{prop:step-003-finite-feasibility}, and
Lemma~\ref{lem:step-004-compact-constraints}, let \(h\in H\), let
\(n\in\mathbb N_0\), and let
\(F_1,\ldots,F_n\subseteq X\) be finite. With intersections taken inside
\(\Delta_L\) and with the conventions
\[
\bigcap_{j=1}^{0}K_{h,F_j}:=\Delta_L,
\qquad
\bigcup_{j=1}^{0}F_j:=\varnothing,
\tag{8}
\]
one has
\[
\bigcap_{j=1}^{n}K_{h,F_j}
=K_{h,\,\bigcup_{j=1}^{n}F_j}
\ne\varnothing.
\tag{9}
\]
Consequently the entire family
\(\{K_{h,F}:F\subseteq X\text{ finite}\}\) has the finite-intersection
property, including its empty finite subfamily.

Proof / justification:

First take \(n=0\). By (8), the left side of (9) is \(\Delta_L\), while
the right side is \(K_{h,\varnothing}\). Equation (7) makes the two sets
equal. They are nonempty because \(L\ge1\) and \(e_1\in\Delta_L\). Thus
the empty subfamily satisfies (9), rather than being left implicit.

Now let \(n\ge1\), and write
\(F_\cup:=\bigcup_{j=1}^nF_j\). This is a finite subset of \(X\). For any
\(w\in\Delta_L\), the definition (1) gives
\[
\begin{aligned}
w\in\bigcap_{j=1}^nK_{h,F_j}
&\iff
  \text{for every }j\in\{1,\ldots,n\}\text{ and every }x\in F_j,
  \quad h(x)s_w(x)\ge\rho\\
&\iff
  \text{for every }x\in F_\cup,
  \quad h(x)s_w(x)\ge\rho\\
&\iff w\in K_{h,F_\cup}.
\end{aligned}
\tag{10}
\]
This proves the set identity in (9). Because \(F_\cup\) is finite, the
accepted Proposition~\ref{prop:step-003-finite-feasibility} gives
\(K_{h,F_\cup}\ne\varnothing\), proving the final assertion. The identity
uses the same constraints and the same threshold \(\rho\) on both sides, so
it introduces neither a compatibility assumption on finite witnesses nor a
margin loss. \(\square\)

### unit_003: lemma

**Lemma (Arbitrary closed-family intersection on the catalog simplex).**
\(\label{lem:step-004-compact-fip}\)

Statement: Under Assumption~\ref{assump:finite-terminal-catalog} and
Lemma~\ref{lem:step-004-compact-constraints}, let \(\mathcal A\) be an
arbitrary index set and let \(\{C_\alpha\}_{\alpha\in\mathcal A}\) be an
arbitrary family of relatively closed subsets of \(\Delta_L\). Suppose that
for every finite \(\mathcal A_0\subseteq\mathcal A\), including
\(\mathcal A_0=\varnothing\),
\[
\bigcap_{\alpha\in\mathcal A_0}C_\alpha\ne\varnothing,
\qquad
\bigcap_{\alpha\in\varnothing}C_\alpha:=\Delta_L.
\tag{11}
\]
Then
\[
\bigcap_{\alpha\in\mathcal A}C_\alpha\ne\varnothing.
\tag{12}
\]

Proof / justification:

If \(\mathcal A=\varnothing\), (12) equals the nonempty set
\(\Delta_L\), so the conclusion holds directly. For an arbitrary
\(\mathcal A\), suppose for contradiction that the intersection in (12) is
empty. Then the relatively open sets
\[
O_\alpha:=\Delta_L\setminus C_\alpha,
\qquad \alpha\in\mathcal A,
\tag{13}
\]
cover \(\Delta_L\). Lemma~\ref{lem:step-004-compact-constraints} makes
\(\Delta_L\) compact, so this cover has a finite subcover: there is a finite
\(\mathcal A_0\subseteq\mathcal A\) such that
\[
\Delta_L=\bigcup_{\alpha\in\mathcal A_0}O_\alpha.
\tag{14}
\]
Taking complements relative to \(\Delta_L\) in (14) yields
\[
\bigcap_{\alpha\in\mathcal A_0}C_\alpha=\varnothing,
\tag{15}
\]
contradicting (11). Hence (12) holds. This argument permits an index set of
arbitrary cardinality and invokes compactness only on the fixed
finite-dimensional simplex; it uses no sequence, measure, or topology on the
indexing domain. \(\square\)

### unit_004: proposition

**Proposition (Exact arbitrary-domain catalog weight).**
\(\label{prop:step-004-global-weight}\)

Statement: Under Assumption~\ref{assump:finite-terminal-catalog}, the
accepted conclusion of
Proposition~\ref{prop:step-003-finite-feasibility},
Lemma~\ref{lem:step-004-compact-constraints},
Proposition~\ref{prop:step-004-exact-fip}, and
Lemma~\ref{lem:step-004-compact-fip}, if \(h\in H\), then there exists
\[
w_h\in
\bigcap_{\substack{F\subseteq X\\F\text{ finite}}}K_{h,F}
\subseteq\Delta_L.
\tag{16}
\]
The same weight satisfies
\[
\forall x\in X,\qquad
h(x)s_{w_h}(x)\ge\rho.
\tag{17}
\]
Both conclusions hold when \(X=\varnothing\), and the threshold in (17) is
the unchanged setting margin \(\rho\).

Proof / justification:

Fix \(h\in H\). By
Lemma~\ref{lem:step-004-compact-constraints}, every
\(K_{h,F}\), for finite \(F\subseteq X\), is a relatively closed subset
of the one compact simplex \(\Delta_L\). By
Proposition~\ref{prop:step-004-exact-fip}, every finite subfamily has
nonempty intersection, including the empty subfamily. Apply
Lemma~\ref{lem:step-004-compact-fip} with the index set
\[
\mathcal A=\{F\subseteq X:F\text{ is finite}\},
\qquad C_F=K_{h,F}.
\tag{18}
\]
Its conclusion is exactly the nonemptiness of the intersection in (16).
Choose one member and denote it by \(w_h\).

For an arbitrary \(x\in X\), the singleton \(\{x\}\) is finite. Equation
(16) therefore gives
\(w_h\in K_{h,\{x\}}\), and the exact definition (1) yields
\[
h(x)s_{w_h}(x)\ge\rho.
\tag{19}
\]
Because \(x\) was arbitrary, (19) proves (17). Equivalently, every target
residual has the exact sign
\[
\rho-h(x)s_{w_h}(x)\le0,
\qquad x\in X,
\tag{20}
\]
so the finite-to-global passage adds no limiting, approximation, or
cardinality-dependent term.

If \(X=\varnothing\), the index set in (18) is the singleton
\(\{\varnothing\}\). Hence the intersection in (16) is
\[
K_{h,\varnothing}=\Delta_L\ne\varnothing.
\tag{21}
\]
One may take \(w_h=e_1\), and (17) is vacuous. This branch does not form a
distribution on the empty domain. If \(L=1\), the same argument returns the
unique simplex weight; if \(\rho=1\), every displayed constraint retains
margin one.

Finally, the family in (18) is determined only by \(h\), the fixed catalog
\(G\), and \(\rho=1-2\varepsilon\). Thus the chosen \(w_h\) requires no
distribution, reply policy, transcript, learner-tape realization, or coherent
choice of the finite witnesses produced upstream. \(\square\)

## Target-Step Assembly

Fix an arbitrary \(h\in H\). Assumption~\ref{assump:finite-terminal-catalog}
and Lemma~\ref{lem:step-004-compact-constraints} place every exact constraint
set \(K_{h,F}\) as a closed subset of the same nonempty compact simplex
\(\Delta_L\). The accepted
Proposition~\ref{prop:step-003-finite-feasibility} supplies nonemptiness for
the finite union of any finite collection of constraint indices.
Proposition~\ref{prop:step-004-exact-fip} turns this input into the exact
identity
\[
\bigcap_{j=1}^nK_{h,F_j}
=K_{h,\cup_{j=1}^nF_j}\ne\varnothing
\]
for every \(n\in\mathbb N_0\), explicitly including the empty subfamily.

Lemma~\ref{lem:step-004-compact-fip} then applies to the arbitrarily indexed
closed family and proves that its total intersection is nonempty. Finally,
Proposition~\ref{prop:step-004-global-weight} chooses one member \(w_h\) and
tests it against each singleton \(\{x\}\), yielding
\[
\forall x\in X,\qquad h(x)s_{w_h}(x)\ge\rho
\]
with the exact upstream margin. When \(X=\varnothing\), the total
intersection is \(K_{h,\varnothing}=\Delta_L\) and the pointwise statement is
vacuous. These named results prove every clause of the accepted `step_004`
row without a global measure, a sequence of finite witnesses, a topology on
\(X\), or any residual. The exported object is the same \(w_h\) consumed by
`step_005`.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon\), \(\rho=1-2\varepsilon\), and finite
  catalog dimension \(L\). The domain \(X\) and all finite subsets are
  arbitrary; no loss depends on their cardinality.
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(X,H,h,F\), the cardinality of any
  finite subfamily, any distribution, reply policy, replies, transcript,
  learner coins, \(m,\tau,\varepsilon,L,B\), or \(k\).
- Fixed quantities: the catalog \(G\); \(h\) is fixed only during its
  targetwise construction.
- Probability mode: deterministic. The accepted dependency has already
  eliminated learner randomness and policy dependence; this step introduces
  no random object or event.
- Horizon mode: fixed finite horizon as inherited through the accepted
  dependency, including \(m=0\). This step performs no temporal, asymptotic,
  stopping-time, or all-time upgrade.
- Norm mode: the pointwise signed scalar margin
  \(h(x)s_{w_h}(x)\). The Euclidean norm in (4) is used only to verify
  boundedness of the proof space and is not a theorem metric.
- Admissibility conditions and auxiliary tolerances: finite \(L\ge1\),
  arbitrary finite constraint indices, and arbitrary \(h\in H\). There is no
  auxiliary tolerance, slack, sequence parameter, or approximation scale.
- Term absorption or simplification inequalities: None. The exact relations
  are the finite-intersection identity, total-intersection membership, and
  \(w_h\in K_{h,\{x\}}\Rightarrow h(x)s_{w_h}(x)\ge\rho\).
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step exports the
  all-domain margin at the exact level \(\rho\) to `step_005`; it performs no
  public-rate simplification.
- Baseline-reduction check: at \(\varepsilon=0\), \(\rho=1\) is preserved
  exactly; at \(L=1\), the unique simplex weight is retained; for
  \(X=\varnothing\), the intersection is exactly \(\Delta_L\), not a limit
  or approximate substitute. No finite-to-global slack appears in any
  baseline.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing objects.** The global target weight \(w_h\in\Delta_L\) and
  its all-domain exact margin are the only new public-facing output. The sets
  \(K_{h,F}\), the score \(s_w\), and \(\rho\) are already setting-defined.
- **Appendix-local objects.** The continuous constraint functional
  \(\lambda_{h,x}\) in (5) is appendix-local; it exposes closedness but is not
  needed in a final theorem statement.
- **Proof-local objects.** The arbitrary family
  \(\{C_\alpha\}_{\alpha\in\mathcal A}\), its complements \(O_\alpha\),
  the finite union \(F_\cup\), the concrete index set in (18), and the simplex
  vertex \(e_1\) are proof-local. Each is defined where used and none is
  exported downstream.
- **Constant and threshold provenance.** The only threshold is the
  setting-defined \(\rho=1-2\varepsilon\), inherited unchanged through the
  accepted finite-feasibility certificate. No new constant, radius,
  tolerance, finite-tube bound, or hidden dependence is introduced.
- **Assumption provenance.** Finite \(L\ge1\) and the catalog are primitive.
  Nonemptiness of every finite \(K_{h,F}\) is supplied by the accepted
  dependency. Compactness, closedness, the exact FIP identity, the
  arbitrary-family intersection implication, and global membership are proved
  by the named local units. The generated global weight is a conclusion, not
  an admissibility assumption.
- **Producer-consumer path.** Accepted finite feasibility from `step_003` ->
  Proposition~\ref{prop:step-004-exact-fip} ->
  Lemma~\ref{lem:step-004-compact-fip} ->
  Proposition~\ref{prop:step-004-global-weight} -> `step_005`. There is no
  consumer-before-producer edge and no circular assumption of global
  feasibility.
- **Residual and scope audit.** The family may have arbitrary cardinality,
  but every finite intersection is exactly another constraint set and the
  compactness implication selects a member of the exact total intersection.
  Every residual \(\rho-h(x)s_{w_h}(x)\) is nonpositive. Nothing is summed,
  approximated, or passed through a limit, and no topology or probability
  measure on \(X\) is used.
- **Boundary audit.** The empty finite subfamily has intersection
  \(\Delta_L\); the empty domain has only the index \(F=\varnothing\); the
  \(L=1\) simplex has its unique member; and \(\rho=1\) remains unchanged.
  These cases use no nonexistent distribution or point constraint.
- **Diagnostic boundary.** `global_proof.md` and
  `global_proof_review.md` were not read or used. No diagnostic statement is
  evidence, a cited result, an assumption source, or authority for the target
  claim.
