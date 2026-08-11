# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove unique Borel stable shifts, two-sided cell margin, and grid-boundary behavior.
- Depends on: None.
- Assumptions used: `assump:parameter-domain`.
- Technical challenge: Half-open endpoint uniqueness.
- Intended proof tool or cited result: Four-arc partition.
- Output target: Stable-selector certificate.
- Rate objective: None.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions: Assumption~\ref{assump:parameter-domain}. The proof uses the positivity of \(\epsilon\), together with the setting-defined \(\gamma_k\in(0,1)\), to obtain \(h_j=2^j\gamma_k\epsilon>0\) for every \(0\le j\le J\). All other arguments are deterministic and hold for every \(c\in\mathbb R\).
- Accepted dependencies: None.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None. The grid-boundary clauses below are exhaustive deterministic case conditions on \(c\), not assumed generated invariants.

The stable selector, its Borel measurability, its cell margins, and its boundary behavior are generated conclusions proved below; none is treated as a primitive condition.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:parameter-domain}, for every \(0\le j\le J\), the four half-open stable bands indexed by \(\mathcal S\) form a disjoint partition of the fractional-phase circle; consequently, for every \(c\in\mathbb R\), there is a unique \(a_j(c)\in\mathcal S\), and \(c\mapsto a_j(c)\) is Borel. | Proves existence, uniqueness, and Borel measurability of the stable shifts. |
| `unit_002` | proposition | Under Assumption~\ref{assump:parameter-domain} and Lemma~\ref{lem:step-004-four-arc-selector}, the selected floor cell has left distance in \([3h_j/8,5h_j/8)\), right distance in \((3h_j/8,5h_j/8]\), and contains the entire closed interval \([c-3h_j/8,c+3h_j/8]\). | Gives the exact two-sided cell margin and the closed-radius stability certificate. |
| `unit_003` | lemma | Under Assumption~\ref{assump:parameter-domain}, Lemma~\ref{lem:step-004-four-arc-selector}, and Proposition~\ref{prop:step-004-cell-margin}, every stable-band endpoint and every grid boundary of any of the four candidate shifted grids has the stated unique selector and half-open-cell behavior. | Exhausts all endpoint and grid-boundary cases, including equality at the left stable margin. |

Atomic step = no. Partition uniqueness, geometric cell margins, and boundary handoff are independent nontrivial subclaims and are separated into the three units above.

## Cited Result Applications

No paper result, external theorem, standard theorem, or accepted dependency artifact is used.

The local results used later in this step are restated here in current notation:

1. **Four-arc stable-selector lemma (Lemma~\ref{lem:step-004-four-arc-selector}).** For positive \(h_j\), the four sets of phases satisfying \(\{t-a\}\in[3/8,5/8)\), \(a\in\mathcal S\), are a disjoint cover of \([0,1)\). Instantiation: \(t=\{c/h_j\}\). Its sole scale requirement \(h_j>0\) follows from Assumption~\ref{assump:parameter-domain} and the setting definition of \(h_j\). The conclusion used is the unique Borel selector \(a_j(c)\).
2. **Exact selected-cell margin proposition (Proposition~\ref{prop:step-004-cell-margin}).** For the selector from the preceding lemma, writing \(u=\{c/h_j-a_j(c)\}\), the defining condition, whose well-posedness is proved by that lemma, gives \(u\in[3/8,5/8)\). The proposition converts this normalized coordinate into the exact two boundary distances and constancy of \(Q_j^c\) on \(|x-c|\le3h_j/8\). Its assumptions are discharged by Assumption~\ref{assump:parameter-domain} and the four-arc lemma.
3. **Endpoint and grid-boundary lemma (Lemma~\ref{lem:step-004-boundary-trace}).** The explicit half-open partition assigns every transition phase to its right-hand arc and assigns a center on any candidate grid to the opposite half-period shift. Its assumptions are discharged by the preceding two local results. The conclusion used is the exhaustive boundary portion of the stable-selector certificate.

## Local Derivation

### unit_001: lemma

**Lemma (Four-arc stable selector).** \(\label{lem:step-004-four-arc-selector}\)
Under Assumption~\ref{assump:parameter-domain}, fix any \(0\le j\le J\). For every \(c\in\mathbb R\), there exists exactly one \(a\in\mathcal S=\{0,1/4,1/2,3/4\}\) such that

\[
\left\{\frac{c}{h_j}-a\right\}\in[3/8,5/8).
\]

The resulting function \(a_j:\mathbb R\to\mathcal S\) is Borel. Consequently, for the fixed finite scale family, \(c\mapsto(a_0(c),\ldots,a_J(c))\) is Borel as a map into \(\mathcal S^{J+1}\).

**Proof / justification.**
By Assumption~\ref{assump:parameter-domain} and the setting definition \(h_j=2^j\gamma_k\epsilon\), one has \(h_j>0\). Put

\[
t=\left\{\frac{c}{h_j}\right\}\in[0,1).
\]

Subtracting an integer before taking fractional part has no effect, so
\(\{c/h_j-a\}=\{t-a\}\). A direct reduction modulo one gives the following four phase sets:

\[
\begin{array}{c|c}
a & \{t\in[0,1):\{t-a\}\in[3/8,5/8)\}\\ \hline
0 & [3/8,5/8)\\
1/4 & [5/8,7/8)\\
1/2 & [7/8,1)\cup[0,1/8)\\
3/4 & [1/8,3/8).
\end{array}
\]

These four sets are pairwise disjoint and their union is \([0,1)\). The left-closed, right-open convention assigns each endpoint to exactly one set, so existence and uniqueness hold without an exceptional phase.

The map \(c\mapsto\{c/h_j\}\) is Borel because scaling, the floor map, and subtraction are Borel. Each singleton preimage \(\{c:a_j(c)=a\}\) is the inverse image of the corresponding Borel phase set in the table. Since \(\mathcal S\) is finite, \(a_j\) is Borel. The coordinatewise product map over the finite index set \(0,\ldots,J\) is therefore Borel as well. \(\square\)

### unit_002: proposition

**Proposition (Exact selected-cell margin).** \(\label{prop:step-004-cell-margin}\)
Under Assumption~\ref{assump:parameter-domain} and Lemma~\ref{lem:step-004-four-arc-selector}, fix \(c\in\mathbb R\) and \(0\le j\le J\), and let \(Q_j^c=Q_{j,a_j(c)}\) be the setting-defined selected quantizer. Then its cell containing \(c\) is exactly

\[
[Q_j^c(c),Q_j^c(c)+h_j),
\]

and its two boundary distances satisfy

\[
c-Q_j^c(c)\in[3h_j/8,5h_j/8),
\qquad
Q_j^c(c)+h_j-c\in(3h_j/8,5h_j/8].
\]

In particular,

\[
[c-3h_j/8,c+3h_j/8]
\subseteq[Q_j^c(c),Q_j^c(c)+h_j),
\]

so \(Q_j^c(x)=Q_j^c(c)\) for every \(|x-c|\le3h_j/8\). At the floor-cell boundaries themselves, the left endpoint is included and the right endpoint is excluded:

\[
Q_j^c\bigl(Q_j^c(c)\bigr)=Q_j^c(c),
\qquad
Q_j^c\bigl(Q_j^c(c)+h_j\bigr)=Q_j^c(c)+h_j.
\]

**Proof / justification.**
Write \(a=a_j(c)\),

\[
n=\left\lfloor\frac{c}{h_j}-a\right\rfloor,
\qquad
u=\left\{\frac{c}{h_j}-a\right\}.
\]

By Lemma~\ref{lem:step-004-four-arc-selector}, \(u\in[3/8,5/8)\). The quantizer definition gives

\[
Q_j^c(c)=a h_j+n h_j,
\qquad
c=Q_j^c(c)+u h_j.
\]

Moreover, for any \(x\in\mathbb R\),

\[
Q_j^c(x)=Q_j^c(c)
\iff
n\le \frac{x}{h_j}-a<n+1
\iff
x\in[Q_j^c(c),Q_j^c(c)+h_j).
\]

Thus the left distance is \(u h_j\in[3h_j/8,5h_j/8)\), whereas the right distance is
\((1-u)h_j\in(3h_j/8,5h_j/8]\). Hence

\[
c-3h_j/8\ge Q_j^c(c),
\qquad
c+3h_j/8<Q_j^c(c)+h_j.
\]

The first comparison is non-strict precisely when \(u=3/8\), and the second is always strict because \(u=5/8\) is excluded. This proves the closed-radius inclusion and quantizer constancy. Substituting the two cell endpoints into the floor definition proves the final two displayed identities and records the left-closed/right-open convention explicitly. \(\square\)

### unit_003: lemma

**Lemma (Endpoint and dictionary-grid boundary trace).** \(\label{lem:step-004-boundary-trace}\)
Under Assumption~\ref{assump:parameter-domain}, Lemma~\ref{lem:step-004-four-arc-selector}, and Proposition~\ref{prop:step-004-cell-margin}, fix \(0\le j\le J\) and \(c\in\mathbb R\), and write \(t=\{c/h_j\}\). Then:

1. At every nontrivial endpoint of the four-arc partition, the selector and selected cell are

   \[
   \begin{array}{c|c|c|c}
   t & a_j(c) & \{c/h_j-a_j(c)\} & \text{selected cell}\\ \hline
   1/8 & 3/4 & 3/8 & [c-3h_j/8,c+5h_j/8)\\
   3/8 & 0 & 3/8 & [c-3h_j/8,c+5h_j/8)\\
   5/8 & 1/4 & 3/8 & [c-3h_j/8,c+5h_j/8)\\
   7/8 & 1/2 & 3/8 & [c-3h_j/8,c+5h_j/8)
   \end{array}
   \]

   In each row the shift belonging to the arc immediately to the left would give normalized coordinate \(5/8\) and is excluded, while the displayed shift gives \(3/8\) and is included. Therefore \(c-3h_j/8\) is the included left cell endpoint, and every \(x\) with \(|x-c|\le3h_j/8\), including equality on the left, remains in the selected cell.
2. If \(c\) lies on a grid boundary of any candidate quantizer, meaning that for some \(a_0\in\mathcal S\) and \(m\in\mathbb Z\),

   \[
   c=(m+a_0)h_j,
   \]

   then

   \[
   a_j(c)=(a_0+1/2)\bmod 1,
   \qquad
   \left\{\frac{c}{h_j}-a_j(c)\right\}=1/2,
   \]

   and the selected cell is exactly \([c-h_j/2,c+h_j/2)\). Thus a boundary for one dictionary grid is the midpoint of the uniquely selected opposite-shift cell. In particular, if \(c/h_j\in\mathbb Z\) is an unshifted-grid boundary, then \(a_j(c)=1/2\).
3. At the circular seam \(t=0\) (equivalently \(t=1\)), the two pieces \([7/8,1)\) and \([0,1/8)\) both belong to the single shift \(a=1/2\); the seam itself is assigned uniquely to \(a_j(c)=1/2\), with normalized coordinate \(1/2\) and selected cell \([c-h_j/2,c+h_j/2)\).

**Proof / justification.**
The explicit phase partition in Lemma~\ref{lem:step-004-four-arc-selector} directly gives the selector in each row of part 1. At each listed phase, subtracting the displayed shift modulo one gives \(3/8\); using the shift assigned to the immediately preceding half-open arc gives \(5/8\). The latter value is excluded by the right-open stable band. Proposition~\ref{prop:step-004-cell-margin} then converts the normalized coordinate \(3/8\) into the displayed cell and proves inclusion at the left equality.

For part 2, define \(a_0^{\oplus}=(a_0+1/2)\bmod1\in\mathcal S\). From \(c/h_j=m+a_0\),

\[
\left\{\frac{c}{h_j}-a_0^{\oplus}\right\}=1/2\in[3/8,5/8).
\]

Uniqueness in Lemma~\ref{lem:step-004-four-arc-selector} forces \(a_j(c)=a_0^{\oplus}\). The exact cell formula follows from Proposition~\ref{prop:step-004-cell-margin} with normalized coordinate \(1/2\). Taking \(a_0=0\) proves the unshifted case.

Finally, the \(a=1/2\) row of the four-arc partition is exactly \([7/8,1)\cup[0,1/8)\), and \(\{0-1/2\}=1/2\). This proves the seam statement and exhausts the remaining endpoint of the phase circle. \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:step-004-four-arc-selector} proves, for every real \(c\) and every setting scale \(j=0,\ldots,J\), that the four half-open quarter arcs give exactly one shift \(a_j(c)\), and that each coordinate selector and the full finite selector vector are Borel. Proposition~\ref{prop:step-004-cell-margin} converts the selected fractional coordinate into the exact floor-cell certificate

\[
c-Q_j^c(c)\in[3h_j/8,5h_j/8),
\qquad
Q_j^c(c)+h_j-c\in(3h_j/8,5h_j/8],
\]

and hence gives the exact two-sided \(3h_j/8\) margin, with the full closed interval \([c-3h_j/8,c+3h_j/8]\) retained in the selected half-open cell. Lemma~\ref{lem:step-004-boundary-trace} checks every partition endpoint, the circular seam, every boundary of each of the four candidate grids, the unshifted-grid special case, and the left-equality/right-strict behavior. Together these results prove the exact sketch-row claim and export the stable-selector certificate without any dependency, probabilistic event, or rate assumption.

## Explicit Rate Audit

None. This step is deterministic and not rate-bearing.

## Blockers

None.

## Notation And Assumption Notes

- **Setting-defined, public-facing objects:** \(\mathcal S\), \(h_j\), \(Q_{j,a}\), \(a_j(c)\), and \(Q_j^c\) are defined in `setting.md`. The exported public-facing interface is only: uniqueness and Borel measurability of \(a_j(c)\), the exact two boundary-distance intervals, constancy of \(Q_j^c\) on \(|x-c|\le3h_j/8\), and the endpoint/grid-boundary trace.
- **Proof-local objects:** \(t=\{c/h_j\}\), \(n=\lfloor c/h_j-a_j(c)\rfloor\), \(u=\{c/h_j-a_j(c)\}\), and \(a_0^{\oplus}=(a_0+1/2)\bmod1\) are direct expressions in setting notation used only in the derivation. The symbols \(a,a_0\in\mathcal S\) and \(m\in\mathbb Z\) are proof-local quantified variables or abbreviations. None is exported.
- **Appendix-local notation:** The expression \(Q_j^c(c)\) is used directly for the selected cell's left endpoint; no new public alias or cell dictionary is introduced.
- **Constant and margin provenance:** The fractions \(1/4\), \(3/8\), and \(5/8\) are the setting-defined shift spacing and stable-band endpoints. The margin \(3h_j/8\) is proved by Proposition~\ref{prop:step-004-cell-margin}; it is not assumed. No hidden or free constant is introduced.
- **Assumption provenance:** Positivity of each \(h_j\) is derived from the primitive `assump:parameter-domain` condition \(\epsilon>0\) and the setting-defined \(\gamma_k>0\). Selector existence, uniqueness, measurability, cell stability, and boundary behavior are derived in this step. No generated event, stability condition, or local-validity condition is assumed.
- **Scope:** Every statement is simultaneous over all real \(c\) and all finitely many setting scales \(0\le j\le J\). There is no probability, horizon, limit, or norm conversion.
- **Diagnostic boundary:** `global_proof.md` was not read and supplied no evidence, cited result, assumption, or claim modification.
