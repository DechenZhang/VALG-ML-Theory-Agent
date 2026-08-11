# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1

## Target Step Claim

For fixed \(h\), prove \(Q_h=\{q:h(q)=-s_0\}\) selects one point from every antipodal pair and that exact identity representation is equivalent to the strict system
\[
h(q)\langle w,q\rangle>0\quad\text{for every }q\in Q_h.
\]

- Dependencies: None.
- Assumptions used: primitive Assumption~\ref{assump:antipodal-oddness}; the fixed source tie label \(s_0\) and the sign convention from setting.md.
- Technical challenge: make equality a counted error on every representative in \(Q_h\), handle both choices of \(s_0\), and extend the strict sign from \(q\) to \(-q\), including zero-score and \(n=1\) cases.
- Intended proof tool: direct antipodal, homogeneity, and tie-label case analysis in the current notation.
- Output target: the exact strict-system interface consumed by step_005 and step_006.
- Row-local review status in the accepted sketch: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting has \(n\ge 1\), \(\mathcal X=\{-1,+1\}^n\), a fixed \(s_0\in\{-1,+1\}\), and the tie-resolved map \(\operatorname{sign}_{s_0}\) given in setting.md.
  - assump:antipodal-oddness: for every \(h\in\mathcal H\) and \(x\in\mathcal X\), \(h(-x)=-h(x)\).
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.
- Accepted dependency artifacts: None (the sketch declares this step dependency-free).

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | lemma | Under the basic setting condition \(n\ge1\) and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), \(Q_h=\{q\in\mathcal X:h(q)=-s_0\}\) contains exactly one element from each set \(\{x,-x\}\), and \(\mathcal X\) is the disjoint union of these pairs. | Supplies the representative partition used to reduce the global exactness statement to pairwise statements. |
| unit_002 | lemma | Under the basic setting's fixed tie convention and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), \(q\in Q_h\), and \(w\in\mathbb R^n\), exact tie-resolved correctness on both \(q\) and \(-q\) is equivalent to \(h(q)\langle w,q\rangle>0\). | Handles both tie labels and the zero-score boundary, and supplies the pairwise strict-sign interface. |

## Cited Result Applications

No external paper result, standard theorem, or accepted dependency is used. The target-step assembly uses the following local results, which are proved directly below.

### Local result: Lemma~\ref{lem:step-004-representatives}

- Restated statement: Under the basic setting condition \(n\ge1\) and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), each antipodal pair \(\{x,-x\}\subset\mathcal X\) has exactly one member in \(Q_h\), and the pairs indexed by \(Q_h\) partition \(\mathcal X\).
- Instantiated objects: the current cube \(\mathcal X=\{-1,+1\}^n\), target \(h\), and fixed tie label \(s_0\).
- Required assumptions and discharge: \(n\ge1\) is part of the basic setting; oddness is Assumption~\ref{assump:antipodal-oddness}; the two-valued label range and the definition of \(Q_h\) are part of the setting and the displayed target claim.
- Conclusion used: every \(x\in\mathcal X\) is either the unique \(q\in Q_h\) in its pair or the antipode of that \(q\).

### Local result: Lemma~\ref{lem:step-004-pairwise-strictness}

- Restated statement: Under the basic setting's fixed tie convention and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), if \(q\in Q_h\), then for every \(w\in\mathbb R^n\),
  \[
  \bigl(\operatorname{sign}_{s_0}(\langle w,q\rangle)=h(q)\ \text{and}\
  \operatorname{sign}_{s_0}(\langle w,-q\rangle)=h(-q)\bigr)
  \quad\Longleftrightarrow\quad
  h(q)\langle w,q\rangle>0.
  \]
- Instantiated objects: \(q\in Q_h\), \(z=\langle w,q\rangle\), and the homogeneous score at \(-q\), which is \(-z\).
- Required assumptions and discharge: \(h(q)=-s_0\) follows from \(q\in Q_h\); \(h(-q)=-h(q)\) follows from Assumption~\ref{assump:antipodal-oddness}; the three-branch definition of \(\operatorname{sign}_{s_0}\) is from the setting.
- Conclusion used: exactness on each representative pair is exactly strict positivity of the signed score on its \(Q_h\) representative.

## Local Derivation

### unit_001: lemma

Statement (Lemma: Antipodal representative selection).
\label{lem:step-004-representatives}
Under the basic setting condition \(n\ge1\) and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), the set \(Q_h=\{q\in\mathcal X:h(q)=-s_0\}\) contains exactly one member of every antipodal pair \(\{x,-x\}\), and
\[
\mathcal X=\bigsqcup_{q\in Q_h}\{q,-q\}.
\]

Proof / justification:

First, \(x\ne -x\) for every \(x\in\mathcal X\). Indeed, if \(x=-x\), then any coordinate would satisfy \(x_i=-x_i\), hence \(x_i=0\), contradicting \(x_i\in\{-1,+1\}\). Thus every antipodal orbit has two distinct elements; this remains true when \(n=1\), where the sole orbit is \(\{(+1),(-1)\}\).

Fix \(x\in\mathcal X\), and write \(y=h(x)\in\{-1,+1\}\). By Assumption~\ref{assump:antipodal-oddness}, \(h(-x)=-y\). Since \(s_0\in\{-1,+1\}\), exactly one of \(y\) and \(-y\) equals \(-s_0\): they are opposite labels, so they cannot both equal \(-s_0\), and one of the two possible signs is \(-s_0\). Therefore exactly one of \(x\) and \(-x\) lies in \(Q_h\). This proves both existence and uniqueness of the representative in each pair. As the two-element antipodal pairs are disjoint, their union over \(q\in Q_h\) is all of \(\mathcal X\) and is disjoint, proving the displayed partition.

### unit_002: lemma

Statement (Lemma: Pairwise strict-sign criterion).
\label{lem:step-004-pairwise-strictness}
Under the basic setting's fixed tie convention and Assumption~\ref{assump:antipodal-oddness}, for fixed \(h\in\mathcal H\), if \(q\in Q_h\) and \(w\in\mathbb R^n\), then
\[
\left[
\operatorname{sign}_{s_0}(\langle w,q\rangle)=h(q)
\ \text{and}\ 
\operatorname{sign}_{s_0}(\langle w,-q\rangle)=h(-q)
\right]
\quad\Longleftrightarrow\quad
h(q)\langle w,q\rangle>0.
\]

Proof / justification:

Set \(z=\langle w,q\rangle\). This is a proof-local scalar, and homogeneity gives
\[
\langle w,-q\rangle=-z.
\]
Because \(q\in Q_h\), \(h(q)=-s_0\). Oddness gives \(h(-q)=s_0\).

We first record the tie-sensitive fact for the representative label. If \(s_0=+1\), then \(h(q)=-1\), and the definition of \(\operatorname{sign}_{+1}\) gives
\[
\operatorname{sign}_{+1}(z)=h(q)=-1
\quad\Longleftrightarrow\quad z<0
\quad\Longleftrightarrow\quad h(q)z>0.
\]
If \(s_0=-1\), then \(h(q)=+1\), and
\[
\operatorname{sign}_{-1}(z)=h(q)=+1
\quad\Longleftrightarrow\quad z>0
\quad\Longleftrightarrow\quad h(q)z>0.
\]
Thus, for either tie label,
\[
\operatorname{sign}_{s_0}(z)=h(q)\quad\Longleftrightarrow\quad h(q)z>0.
\tag{4.1}
\]
In particular, \(z=0\) is excluded by (4.1): at \(z=0\), the prediction is \(s_0\ne h(q)=-s_0\), so equality is an error on every representative in \(Q_h\). This explicitly covers the zero-score boundary.

For the forward implication in the lemma, exact correctness on both points includes correctness at \(q\); (4.1) therefore yields \(h(q)z>0\).

For the reverse implication, suppose \(h(q)z>0\). Then \(z\ne0\), so the non-tie sign of \(z\) is \(h(q)\), and (4.1) gives correctness at \(q\). Moreover,
\[
h(-q)\langle w,-q\rangle
=(-h(q))(-z)=h(q)z>0.
\]
The score at \(-q\) is also nonzero, and its ordinary sign is therefore \(h(-q)\); the tie label is irrelevant at this nonzero score. Hence \(\operatorname{sign}_{s_0}(\langle w,-q\rangle)=h(-q)\). This proves exact correctness on both members of the pair and completes the equivalence.

## Target-Step Assembly

Fix \(h\in\mathcal H\). By Lemma~\ref{lem:step-004-representatives}, the sets \(\{q,-q\}\) for \(q\in Q_h\) form a disjoint partition of \(\mathcal X\). If \(w\in\mathbb R^n\) exactly sign-represents \(h\) on all of \(\mathcal X\), then it is correct on both members of every such pair; Lemma~\ref{lem:step-004-pairwise-strictness} gives \(h(q)\langle w,q\rangle>0\) for every \(q\in Q_h\). Conversely, if the strict inequality holds for every \(q\in Q_h\), Lemma~\ref{lem:step-004-pairwise-strictness} gives correctness on both \(q\) and \(-q\) for every pair, and Lemma~\ref{lem:step-004-representatives} then gives correctness on all \(x\in\mathcal X\). Therefore
\[
\exists w\in\mathbb R^n\ \forall x\in\mathcal X,
\quad \operatorname{sign}_{s_0}(\langle w,x\rangle)=h(x)
\quad\Longleftrightarrow\quad
\exists w\in\mathbb R^n\ \forall q\in Q_h,
\quad h(q)\langle w,q\rangle>0.
\]
The proof is deterministic and introduces no margin lower bound beyond strict positivity. It uses only the primitive oddness assumption and the fixed tie convention, so the exact strict-system interface is available to step_005 and step_006 with no residual or additional dependency.

## Explicit Rate Audit

None. This step is a deterministic finite sign/partition equivalence; it introduces no quantitative rate, probability conversion, horizon dependence, or asymptotic limit.

## Blockers

None

## Notation And Assumption Notes

- \(Q_h=\{q\in\mathcal X:h(q)=-s_0\}\) is a public-facing setting-derived object: it is defined directly from the fixed target and tie label and is the strict-system interface exported to downstream steps.
- The scalar \(z=\langle w,q\rangle\) is proof-local, defined directly from the setting's homogeneous identity score and used only in unit_002; no new constant, threshold, margin, event, or bounded quantity is introduced.
- The abbreviation \(y=h(x)\) in unit_001 is proof-local and is defined directly from the setting's target label; it is not exported.
- The antipodal partition is a derived finite combinatorial fact proved in unit_001, not a primitive invariant. The pairwise strictness and zero-score exclusion are derived in unit_002; no generated trajectory, event, stability, or recurrence condition is assumed.
- The direct sign case split uses exactly the setting convention for both \(s_0=+1\) and \(s_0=-1\). The \(z=0\) boundary is explicitly handled as an error because the representative label is \(-s_0\). The argument remains valid for \(n=1\), where there is one antipodal pair.
- In particular, \(w=0\) gives \(z=0\) on every representative: the strict system fails and exact representation fails at every \(q\in Q_h\), so the null-score regime does not create an exceptional case.
- Baseline invariance: the equivalence is independent of \(\varepsilon\), so the exact/noiseless specialization \(\varepsilon=0\) preserves this same strict-system conclusion rather than replacing it by an approximate statement.
- No cited result or dependency artifact is used. global_proof.md was not read and supplies no evidence, assumption, or authority for this proof.
- Residual-to-target check: the score at \(-q\) is exactly \(-\langle w,q\rangle\), and oddness gives exactly \(-h(q)\); hence the signed product is preserved with zero residual. The exported strict system is in the same Euclidean coordinates and tie-resolved sign metric as the target.
