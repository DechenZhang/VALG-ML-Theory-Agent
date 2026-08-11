# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_003
- Unit attempt: 1

## Target Step Claim

- Intended claim: With \(M=\lvert\mathcal H\rvert\) and
  \[
  r=\left\lceil\log_2(2M)\right\rceil,
  \]
  prove \(r\le 7TS\).
- Depends on: accepted step_001 and accepted step_002 proof/review artifacts.
- Assumptions used: primitive assump:source-regime; derived \(S\ge n\) and \(v:=\operatorname{VC}(\mathcal H)<2T\).
- Technical challenge: Treat \(v=0\), the ceiling, every numerical constant, and elimination of \(n\) without hidden dependence.
- Intended proof tool or cited result: A self-contained current-notation Sauer--Shelah induction, an elementary binomial-sum estimate, and explicit logarithmic inequalities.
- Output target: The exact integer repetition budget \(r\le 7TS\).
- Rate objective: Structural-parameter objective with explicit numerical constant \(7\) and no hidden \(n\)-, \(\eta\)-, or \(\varepsilon\)-dependence.
- Row-local review status: PENDING in the accepted sketch; the sketch-level review status is ACCEPTED.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Accepted dependency artifacts:
  - perspective_2/idea_2/proof_steps/step_001/proof.md, sketch attempt 1 and unit attempt 1, together with its matching perspective_2/idea_2/proof_steps/step_001/review.md whose status is ACCEPTED.
  - perspective_2/idea_2/proof_steps/step_002/proof.md, sketch attempt 1 and unit attempt 1, together with its matching perspective_2/idea_2/proof_steps/step_002/review.md whose status is ACCEPTED.
- Primitive conditions:
  - assump:source-regime: in particular, \(n,T\in\mathbb Z_{\ge1}\), the domain is \(\mathcal X=\{-1,+1\}^n\), and \(S=\sum_{i=1}^L n_i n_{i-1}\).
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-architecture}, with its matching ACCEPTED review, routes the proof to the remaining branch
    \[
    \mathcal H\ne\varnothing,
    \qquad d\ge1,
    \qquad S\ge n\ge1,
    \qquad T,S\ge1.
    \]
    In particular, the already-closed case \(\mathcal H=\varnothing\) is not passed to the logarithmic definition of \(r\).
  - Accepted Proposition~\ref{prop:step-002-vc}, with its matching ACCEPTED review, supplies
    \[
    v:=\operatorname{VC}(\mathcal H)<2T.
    \]
- Local conditional hypotheses: The proof splits into the exhaustive cases \(v=0\) and \(v\ge1\). These are proof-local case conditions, not added theorem assumptions or generated invariants.

Assumptions~\ref{assump:universal-sgd-success} and \ref{assump:tie-resolved-confident-map} are not used directly in this step. The former appears only in the accepted provenance of the dependency \(v<2T\), and the latter is not part of the present counting argument.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | If \(A\) is a finite set of size \(m\), \(\mathcal G\subseteq\{-1,+1\}^A\) is nonempty, and \(q=\operatorname{VC}(\mathcal G)\), then \(0\le q\le m\), \(\lvert\mathcal G\rvert\le\sum_{j=0}^q\binom mj\), and \(q=0\) implies \(\lvert\mathcal G\rvert=1\). | Proves the full finite-domain Sauer--Shelah count in current notation and closes the singular \(v=0\) count. |
| unit_002 | lemma | If \(1\le q\le m\), then \(\sum_{j=0}^q\binom mj\le(em/q)^q\); moreover \(\log_2 e<3/2\). | Converts the exact growth sum into an explicit logarithmic estimate and proves the numerical constant used later. |
| unit_003 | proposition | Under Assumption~\ref{assump:source-regime}, accepted Propositions~\ref{prop:step-001-architecture} and \ref{prop:step-002-vc}, and Lemmas~\ref{lem:step-003-growth} and \ref{lem:step-003-binomial}, if \(M=\lvert\mathcal H\rvert\) and \(r=\lceil\log_2(2M)\rceil\), then \(r\le7TS\). | Handles \(v=0\), the ceiling, \(T=1\), \(n=1\), \(S\ge n\), and all constant absorptions, proving the exact exported claim. |

## Cited Result Applications

No external paper result or unproved standard theorem is used. In particular, the Sauer--Shelah inequality and the binomial estimate are proved in full below rather than cited. The elementary Pascal and binomial identities are justified at their points of use. The accepted dependencies and local results used later are restated here.

| Result | Restated statement in current notation | Assumption discharge and use |
| ------ | --------------------------------------- | ---------------------------- |
| Accepted Proposition~\ref{prop:step-001-architecture} (First-layer structural bound) | On the remaining branch, \(\mathcal H\ne\varnothing\), \(d\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). | Its current proof uses Assumption~\ref{assump:source-regime}, and its matching review has status ACCEPTED. The present step uses nonemptiness, \(S\ge n\), and \(T,S\ge1\). |
| Accepted Proposition~\ref{prop:step-002-vc} (VC ceiling from universal exact-SGD success) | On the remaining branch, \(v:=\operatorname{VC}(\mathcal H)<2T\). | Its current proof and matching review are accepted. The present step consumes only this deterministic derived conclusion, not its auxiliary random experiment. |
| Lemma~\ref{lem:step-003-growth} (Finite-domain growth bound) | A nonempty binary class of VC dimension \(q\) on \(m\) points has size at most \(\sum_{j=0}^q\binom mj\), and has size one when \(q=0\). | Proved below by restriction, overlap decomposition, and induction. Applied with \(A=\mathcal X\), \(m=2^n\), \(\mathcal G=\mathcal H\), and \(q=v\). |
| Lemma~\ref{lem:step-003-binomial} (Binomial-sum and numerical estimates) | For \(1\le q\le m\), \(\sum_{j=0}^q\binom mj\le(em/q)^q\), and \(\log_2e<3/2\). | Proved below from the binomial theorem and the exponential series. Applied with \(m=2^n\) and \(q=v\) only in the \(v\ge1\) branch. |
| Proposition~\ref{prop:step-003-budget} (Explicit repetition budget) | For \(M=\lvert\mathcal H\rvert\) and \(r=\lceil\log_2(2M)\rceil\), one has \(r\le7TS\). | The accepted dependencies provide \(M\ge1\), \(v<2T\), \(S\ge n\), and \(T,S,n\ge1\); the two local lemmas provide the count and elementary estimates. Used in the target-step assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Finite-domain growth bound).** \(\label{lem:step-003-growth}\)
Let \(A\) be a finite set of cardinality \(m\), and let \(\mathcal G\subseteq\{-1,+1\}^A\) be nonempty. If \(q=\operatorname{VC}(\mathcal G)\), then \(0\le q\le m\) and
\[
\lvert\mathcal G\rvert
\le
\sum_{j=0}^{q}\binom mj.
\]
If \(q=0\), then in fact \(\lvert\mathcal G\rvert=1\).

**Proof.** A shattered set is a subset of \(A\), so \(0\le q\le m\). We prove the cardinality inequality in the slightly more general form that every nonempty \(\mathcal G\subseteq\{-1,+1\}^A\) satisfying \(\operatorname{VC}(\mathcal G)\le q\), for an integer \(0\le q\le m\), obeys
\[
\lvert\mathcal G\rvert\le\sum_{j=0}^q\binom mj.
\tag{1}
\]
Use induction on \(m\), with the convention \(\binom ab=0\) when \(b<0\) or \(b>a\).

If \(m=0\), there is exactly one function on \(A=\varnothing\), so nonemptiness gives \(\lvert\mathcal G\rvert=1=\binom00\). For arbitrary \(m\), if \(q=0\), two distinct functions in \(\mathcal G\) would differ at some \(a\in A\). Those two functions would realize both labels on \(\{a\}\), thereby shattering that singleton and contradicting \(\operatorname{VC}(\mathcal G)\le0\). Hence \(\lvert\mathcal G\rvert\le1=\binom m0\). When \(\mathcal G\) is nonempty and its VC dimension is exactly zero, this also proves \(\lvert\mathcal G\rvert=1\). If \(q=m\), then the trivial count of all binary functions gives
\[
\lvert\mathcal G\rvert\le2^m=\sum_{j=0}^m\binom mj.
\]

It remains to prove (1) when \(m\ge1\) and \(1\le q<m\). Fix \(a\in A\), put \(B=A\setminus\{a\}\), and, for \(s\in\{-1,+1\}\), define the restriction class
\[
\mathcal G_s
:=
\left\{g|_B: g\in\mathcal G,\ g(a)=s\right\}
\subseteq\{-1,+1\}^B.
\]
Let
\[
\mathcal U:=\mathcal G_{+1}\cup\mathcal G_{-1},
\qquad
\mathcal P:=\mathcal G_{+1}\cap\mathcal G_{-1}.
\]
A function in \(\mathcal G\) is uniquely determined by its restriction to \(B\) and its value at \(a\). Inclusion--exclusion therefore gives the exact decomposition
\[
\lvert\mathcal G\rvert
=\lvert\mathcal G_{+1}\rvert+\lvert\mathcal G_{-1}\rvert
=\lvert\mathcal U\rvert+\lvert\mathcal P\rvert.
\tag{2}
\]

If \(\mathcal U\) shatters \(D\subseteq B\), then each labeling of \(D\) has an extension in \(\mathcal G\), so \(\mathcal G\) also shatters \(D\). Thus \(\operatorname{VC}(\mathcal U)\le q\). If \(\mathcal P\) is nonempty and shatters \(D\subseteq B\), then for each labeling of \(D\) its realizing restriction in \(\mathcal P\) has one extension in \(\mathcal G\) with label \(+1\) at \(a\) and another with label \(-1\) there. Hence \(\mathcal G\) shatters \(D\cup\{a\}\), which shows \(\operatorname{VC}(\mathcal P)\le q-1\). If \(\mathcal P\) is empty, the bound below is immediate for it.

Both \(\mathcal U\) and \(\mathcal P\) are classes on the \(m-1\) point set \(B\). Applying the induction hypothesis, and using the zero bound when \(\mathcal P=\varnothing\), gives
\[
\lvert\mathcal U\rvert
\le\sum_{j=0}^q\binom{m-1}{j},
\qquad
\lvert\mathcal P\rvert
\le\sum_{j=0}^{q-1}\binom{m-1}{j}.
\]
For completeness, partitioning the \(j\)-element subsets of an \(m\)-element set according to whether they contain one fixed element gives
\[
\binom mj=\binom{m-1}{j}+\binom{m-1}{j-1}.
\]
Combining this identity with (2) yields
\[
\begin{aligned}
\lvert\mathcal G\rvert
&\le
\sum_{j=0}^q\binom{m-1}{j}
+\sum_{j=0}^{q-1}\binom{m-1}{j}\\
&=
\sum_{j=0}^q
\left(\binom{m-1}{j}+\binom{m-1}{j-1}\right)
=\sum_{j=0}^q\binom mj.
\end{aligned}
\]
This closes the induction and proves the lemma. \(\square\)

### unit_002: lemma

**Lemma (Binomial-sum and numerical logarithm estimates).** \(\label{lem:step-003-binomial}\)
For integers \(m,q\) satisfying \(1\le q\le m\),
\[
\sum_{j=0}^q\binom mj
\le
\left(\frac{em}{q}\right)^q.
\]
Moreover,
\[
\log_2 e<\frac32.
\]

**Proof.** Set \(a=q/m\in(0,1]\). For every \(0\le j\le q\), one has \(a^j\ge a^q\). Expanding the product of \(m\) copies of \(1+a\), and grouping terms by the number \(j\) of copies from which \(a\) is selected, gives
\[
(1+a)^m=\sum_{j=0}^m\binom mj a^j.
\]
All terms are nonnegative, and hence
\[
\begin{aligned}
\sum_{j=0}^q\binom mj
&\le
a^{-q}\sum_{j=0}^q\binom mj a^j\\
&\le
a^{-q}(1+a)^m.
\end{aligned}
\tag{3}
\]
For \(a\ge0\), the exponential series gives
\[
e^a=\sum_{k=0}^{\infty}\frac{a^k}{k!}\ge1+a.
\]
Consequently \((1+a)^m\le e^{am}=e^q\). Substituting this in (3) and using \(a^{-q}=(m/q)^q\) proves
\[
\sum_{j=0}^q\binom mj
\le\left(\frac{em}{q}\right)^q.
\]

It remains to verify the numerical logarithm bound without a decimal approximation. For every \(k\ge4\),
\[
k!\ge 24\,4^{k-4},
\]
because \(4!=24\) and each subsequent factor is at least \(4\). Hence
\[
\begin{aligned}
e
=\sum_{k=0}^{\infty}\frac1{k!}
&\le
1+1+\frac12+\frac16
+\frac1{24}\sum_{j=0}^{\infty}4^{-j}\\
&=1+1+\frac12+\frac16+\frac1{18}
=\frac{49}{18}.
\end{aligned}
\]
Since
\[
\left(\frac{49}{18}\right)^2
=\frac{2401}{324}
<\frac{2592}{324}
=8,
\]
we have \(e\le49/18<\sqrt8=2^{3/2}\). Monotonicity of the base-two logarithm now gives \(\log_2e<3/2\). \(\square\)

### unit_003: proposition

**Proposition (Explicit repetition budget).** \(\label{prop:step-003-budget}\)
Under Assumption~\ref{assump:source-regime}, accepted Propositions~\ref{prop:step-001-architecture} and \ref{prop:step-002-vc}, and Lemmas~\ref{lem:step-003-growth} and \ref{lem:step-003-binomial}, on the remaining branch define
\[
N:=\lvert\mathcal X\rvert=2^n,
\qquad
M:=\lvert\mathcal H\rvert,
\qquad
v:=\operatorname{VC}(\mathcal H),
\qquad
r:=\left\lceil\log_2(2M)\right\rceil.
\]
Then \(r\le7TS\).

**Proof.** Accepted Proposition~\ref{prop:step-001-architecture} gives \(\mathcal H\ne\varnothing\), so \(M\ge1\) and \(r\) is well-defined. It also gives
\[
n\ge1,
\qquad
S\ge n,
\qquad
T,S\ge1.
\tag{4}
\]
Accepted Proposition~\ref{prop:step-002-vc} gives
\[
v<2T.
\tag{5}
\]

First suppose \(v=0\). Applying Lemma~\ref{lem:step-003-growth} to \(A=\mathcal X\) and \(\mathcal G=\mathcal H\) gives \(M=1\). Therefore
\[
r=\left\lceil\log_2 2\right\rceil=1\le7TS,
\]
where the last inequality follows from \(T,S\ge1\). This handles the singular case in which the expression \((eN/v)^v\) is unavailable.

Now suppose \(v\ge1\). Lemma~\ref{lem:step-003-growth} gives \(v\le N\) and
\[
M\le\sum_{j=0}^v\binom Nj.
\]
Lemma~\ref{lem:step-003-binomial} therefore applies, including when \(v=N\), and yields
\[
M\le\left(\frac{eN}{v}\right)^v.
\]
Taking base-two logarithms, using \(N=2^n\) and \(\log_2v\ge0\), and then using (5) and \(\log_2e<3/2\), gives
\[
\begin{aligned}
\log_2 M
&\le
v\log_2\left(\frac{eN}{v}\right)\\
&=v\left(n+\log_2e-\log_2v\right)\\
&\le v\left(n+\log_2e\right)\\
&\le2T\left(n+\frac32\right)\\
&\le5Tn.
\end{aligned}
\tag{6}
\]
The last inequality is explicit: \(n\ge1\) implies
\[
n+\frac32\le\frac52n.
\]

For every real \(y\), \(\lceil y\rceil\le y+1\). Hence (6) accounts for the ceiling as
\[
\begin{aligned}
r
&=\left\lceil1+\log_2M\right\rceil\\
&\le\log_2M+2\\
&\le5Tn+2\\
&\le5TS+2TS\\
&=7TS.
\end{aligned}
\tag{7}
\]
Here \(5Tn\le5TS\) follows from \(n\le S\), while \(2\le2TS\) follows from \(T,S\ge1\). Thus neither \(n\) nor the additive ceiling contribution remains in the exported bound.

The corner \(T=1,n=1\) is included explicitly: then \(N=2\) and (5) forces \(v\in\{0,1\}\), so one of the two branches above applies. In the \(v\ge1\) branch, \(n+3/2=(5/2)n\); if also \(S=1\), then \(2=2TS\). Thus the two potentially tight elementary absorptions in (6)--(7) remain valid at the smallest allowed values. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-001-architecture} routes the empty and zero-dimensional theorem branches away from this step and supplies the remaining-branch facts \(M\ge1\), \(S\ge n\ge1\), and \(T,S\ge1\). Accepted Proposition~\ref{prop:step-002-vc} supplies \(v<2T\). Lemma~\ref{lem:step-003-growth} proves the finite-domain Sauer--Shelah count and the exact \(v=0\Rightarrow M=1\) boundary. Lemma~\ref{lem:step-003-binomial} proves both the binomial-sum estimate and the numerical inequality \(\log_2e<3/2\). Proposition~\ref{prop:step-003-budget} composes those inputs, pays the ceiling by the explicit inequality \(2\le2TS\), and eliminates \(n\) using \(n\le S\). Therefore the exact target-step output is
\[
\boxed{r=\left\lceil\log_2(2\lvert\mathcal H\rvert)\right\rceil\le7TS}.
\]

## Explicit Rate Audit

- Exposed variables: The derivation exposes \(n\), \(N=2^n\), \(M=\lvert\mathcal H\rvert\), \(v=\operatorname{VC}(\mathcal H)\), \(T\), \(S\), and the integer \(r=\lceil\log_2(2M)\rceil\). The exported inequality exposes only \(r,T,S\).
- Hidden constants may depend on: Nothing. The constants \(1\), \(2\), \(3/2\), \(5\), and \(7\) are numerical and appear explicitly.
- Hidden constants may not depend on: \(n,\mathcal H,L,(n_i),S,\eta,T,\varepsilon,d\), \(\mathcal P\), \(M\), \(N\), or \(v\).
- Fixed quantities: The argument is finite and nonasymptotic for the fixed class and architecture. No limiting parameter is introduced.
- Probability mode: Deterministic. The accepted dependency \(v<2T\) is already a deterministic conclusion; this step introduces no randomness or probability conversion.
- Horizon mode: Fixed finite horizon \(T\). Only the deterministic bound \(v<2T\) and \(T\ge1\) are used.
- Norm mode: Finite-class cardinality, VC dimension, and the exact integer repetition count; no norm, risk surrogate, margin, or approximation metric is introduced.
- Admissibility conditions and auxiliary tolerances: The accepted remaining branch gives \(\mathcal H\ne\varnothing\), \(S\ge n\ge1\), and \(T,S\ge1\); the accepted VC dependency gives \(v<2T\). There are no auxiliary tolerances.
- Term absorption or simplification inequalities:
  \[
  \log_2M
  \le v(n+\log_2e)
  \le2T\left(n+\frac32\right)
  \le5Tn,
  \]
  \[
  r\le\log_2M+2\le5Tn+2
  \le5TS+2TS=7TS.
  \]
- Probability conversion: None.
- Contribution to any Rate Specialization Bridge: This step removes both \(\lvert\mathcal H\rvert\) and \(n\) from the repetition budget and exports \(r\le7TS\) to the amplification and direct-sum steps.
- Baseline-reduction check: If \(v=0\), the exact count is \(M=1\) and \(r=1\). The cases \(v=N\), \(T=1\), \(n=1\), and \(S=n\) are included in the derivation. The zero-cardinality class is not assigned a logarithm because accepted step_001 already closes it exactly.

## Blockers

None

## Notation And Assumption Notes

- The sole public-facing helper is \(r=\lceil\log_2(2\lvert\mathcal H\rvert)\rceil\), exported only through \(r\le7TS\). The expressions \(M=\lvert\mathcal H\rvert\) and \(N=2^n\) are proof-local abbreviations directly defined from setting objects; downstream steps can recover them directly and do not need a new dictionary. The accepted dependency object \(v=\operatorname{VC}(\mathcal H)\) is proof-local in this step.
- Lemmas~\ref{lem:step-003-growth} and \ref{lem:step-003-binomial}, and Proposition~\ref{prop:step-003-budget}, are appendix-local theorem-style results. The generic finite set \(A\), class \(\mathcal G\), integers \(m,q\), coordinate \(a\), restricted domain \(B\), restriction classes \(\mathcal G_s\), union \(\mathcal U\), overlap \(\mathcal P\), and scalar \(a=q/m\) in the binomial proof are all proof-local. The reuse of the letter \(a\) occurs in disjoint local-unit scopes: first as a point of \(A\), then as a scalar; neither symbol is exported.
- The numerical constant \(e\) is the usual exponential-series constant and is proof-local; Lemma~\ref{lem:step-003-binomial} proves the only bound on it that is consumed. The constants \(3/2\), \(5\), \(2\), and \(7\) are explicit numerical quantities, and every domination involving them is proved in (6)--(7).
- Nonemptiness, \(S\ge n\ge1\), and \(T,S\ge1\) are derived facts supplied by accepted step_001; \(v<2T\) is a derived fact supplied by accepted step_002. The \(v=0\) and \(v\ge1\) branches are local case splits. No generated event, stability condition, recurrence, boundedness hypothesis, or local-validity condition is introduced or assumed.
- The optional diagnostic global_proof.md was not consulted. It supplies no evidence, cited result, assumption, or authority for this proof.
