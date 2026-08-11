# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_009/proof.md
- Reviewed proof SHA-256: 241aff9f7902ac53f4bbfbaa561c92d077f6827911a597eb6087aca664e00e7c

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-monomial-certificate} states the exact augmented-monomial object and metadata required by the accepted row: (F_0(\theta)=\theta^d), (F_{k+1}(\theta)=\theta^k), (q=M=m=0), (\Delta=N=d), (A=(2R)^d\kappa), anchor (F_1=1), the deterministic-leading-coordinate identity, the constant shift matrix, and the literal certificate.
- Proof validity: In the ordering \(\widetilde F=(\theta^d,1,\theta,\ldots,\theta^{d-1})\), the entries \(B_{0,d}=d\) and \(B_{k+1,k}=k\) for \(1\leq k\leq d-1\) give respectively \(F_0'=dF_d\), \(F_1'=0\), and \(F_{k+1}'=kF_k\). These are all \(d+1\) rows. Since \(m=0\), the coefficient-height definition gives
  \[
  \widehat\Lambda_{B,T}^2
  =d^2+\sum_{k=1}^{d-1}k^2
  =\sum_{k=1}^{d}k^2.
  \]
  The affine identity pairs exactly the \(d\) random coordinates \(\alpha_k\) with \(F_{k+1}=\theta^k\), leaving the coefficient of \(F_0=\theta^d\) equal to the deterministic number one.
- Cited-result and assumption audit: No cited theorem or dependency is used. The three named setting assumptions are specialized to explicit polynomial data, and the closure identity required by Assumption~\ref{assump:anchored-derivative-closure} is verified row by row rather than presumed from an unexamined matrix. The density-law assumption is correctly unused.
- Rigor checklist: The dimensions are exactly \((d+1)\)-by-\((d+1)\) for \(B\) and \(d\) for \(\alpha\). The degree and coefficient-height conventions agree with the setting. A bounded \(J\) can be contained in a nondegenerate compact \(\Theta\subseteq[-T,T]\) with finite \(T\), while \(T_*^0=1\) makes the constant certificate independent of that choice.
- Local adversarial test: For \(d=1\), the only nonzero entry is \(B_{0,1}=1\), the omitted shift-entry family is empty, and the certificate is one. For \(d=2\), the entries \(B_{0,2}=2\) and \(B_{2,1}=1\) give certificate \(\sqrt5\). Both checks agree with the general formula and expose no missing or randomized leading coordinate.
- Contribution to target step: This proposition supplies the exact object, dimensions, closure matrix, anchor, certificate, and same-polynomial interface consumed by all later local units and by `step_010`.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-two-pivot-charts} states the prescribed \(d\geq2\) cells, declares every intermediate cell, identifies the legal pivots, gives both requested chart formulas with the correct lower-coefficient indexing, and asserts exact recovery of the original \(p_\alpha\).
- Proof validity: The Borel sets \(\{|\theta|\leq1\}\) and \(\{|\theta|>1\}\) are disjoint and exhaustive, so their intersections with the interval \(J\), together with the empty intermediate cells, form a measurable partition. On \(E_1\), \(F_1=1\); on \(E_d\), \(|F_d|=|\theta|^{d-1}>1\). Solving the original polynomial equation for \(\alpha_0\) gives
  \[
  T_1=-\theta^d-\sum_{k=1}^{d-1}\beta_k\theta^k,
  \]
  while division by the legal outer pivot \(\theta^{d-1}\) gives
  \[
  T_d=-\theta-\sum_{k=0}^{d-2}\beta_k\theta^{k-d+1}.
  \]
  The displayed substitutions cancel every term exactly in \(p_\alpha\).
- Cited-result and assumption audit: The only prior mathematical authority is Proposition~\ref{prop:step-009-monomial-certificate}; no result about polynomial roots is imported. Coefficient-cube membership and cell membership are explicit local domains, not promoted generated invariants.
- Rigor checklist: The transition points \(\theta=\pm1\) belong only to \(E_1\). Negative outer points are legal because nonvanishing uses absolute value. The nonpivot tuples have exactly \(d-1\) coordinates, and the insertion maps preserve the original coordinate order. The proof does not assert that a chart-produced pivot lies in \([-R,R]\); that later restriction remains the indicator handled by the common sweep theorem.
- Local adversarial test: At \(\theta=0\), only the constant pivot is used. At \(\theta=-1\) and \(\theta=1\), only \(E_1\) is active. When \(d=2\), the intermediate index set is empty and \(E_d=E_2\) causes no collision. If either active cell is empty, partition and chart assertions remain valid.
- Contribution to target step: This lemma produces the exact legal pivot partition and the two same-object charts required for the region-specific velocity calculations.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-inner-velocity} states precisely the inner-cell velocity bound \(d+Rd(d-1)/2\) under the named primitive assumptions and prior local results.
- Proof validity: Termwise differentiation yields
  \[
  \partial_\theta T_1
  =-d\theta^{d-1}-\sum_{k=1}^{d-1}k\beta_k\theta^{k-1}.
  \]
  On \(|\theta|\leq1\), every displayed power has absolute value at most one, including the constant \(k=1\) derivative at \(\theta=0\). With \(|\beta_k|\leq R\), the triangle inequality gives \(d+R\sum_{k=1}^{d-1}k\), and the paired finite-sum derivation gives \(\sum_{k=1}^{d-1}k=d(d-1)/2\).
- Cited-result and assumption audit: No citation, dependency, or extra smoothness premise is used. The polynomial chart and its cube domain come exactly from Lemma~\ref{lem:step-009-two-pivot-charts}.
- Rigor checklist: The differentiation is a finite sum, the absolute-value bound is valid for both signs of \(\theta\), and no \(0^0\) or negative power is invoked. The endpoints \(|\theta|=1\) are included and attain only powers of absolute value one.
- Local adversarial test: For \(d=2\), the derivative is \(-2\theta-\beta_1\), giving the exact cap \(2+R\). At \(\theta=0\), the leading derivative term vanishes and the \(k=1\) term remains finite, so the claimed uniform bound survives the most singular-looking inner point.
- Contribution to target step: This lemma proves the complete inner velocity interface with the literal arithmetic-sum constant needed downstream.
- Verdict: PASS
- Repair direction: None

### unit_004: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-outer-velocity} states the exact smaller outer cap \(1+Rd(d-1)/2\) and its required domination by the common cap \(d+Rd(d-1)/2\).
- Proof validity: Differentiation gives
  \[
  \partial_\theta T_d
  =-1+\sum_{k=0}^{d-2}\beta_k(d-1-k)\theta^{k-d}.
  \]
  Here \(k-d<0\), but these powers occur only on \(|\theta|>1\), where \(|\theta^{k-d}|=|\theta|^{-(d-k)}\leq1\). Thus the triangle inequality gives \(1+R\sum_{k=0}^{d-2}(d-1-k)\). The bijective reindexing \(r=d-1-k\) produces \(\sum_{r=1}^{d-1}r=d(d-1)/2\), and \(1\leq d\) proves the final domination.
- Cited-result and assumption audit: No external result or dependency is used. The negative-power domain and coefficient bounds are explicit hypotheses inherited from the legal-chart lemma, so no local-validity condition is assumed without provenance.
- Rigor checklist: All powers are integer powers evaluated away from zero. The absolute-value calculation is equally valid for \(\theta<-1\). Both finite-sum endpoints map correctly under reindexing, and the last inequality uses only \(d\geq2\).
- Local adversarial test: For \(d=2\), \(T_2=-\theta-\beta_0\theta^{-1}\) and \(\partial_\theta T_2=-1+\beta_0\theta^{-2}\), so the outer cap is \(1+R\). Letting \(|\theta|\downarrow1\) from either outer side keeps every absolute negative power below one; no transition blowup appears.
- Contribution to target step: This lemma proves the outer velocity interface, including negative outer parameters and the exact smaller-to-common-cap comparison.
- Verdict: PASS
- Repair direction: None

### unit_005: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-degree-one} isolates exactly the required \(d=1\) branch rather than forcing the two-pivot notation into a one-coordinate problem.
- Proof validity: For \(\widetilde F=(\theta,1)\), the unique pivot feature is \(F_1=1\), the nonpivot cube is the singleton \([-R,R]^0\), and solving \(\theta+\alpha_0=0\) gives \(T_1(\theta)=-\theta\). Direct substitution gives a root and direct differentiation gives unit absolute velocity.
- Cited-result and assumption audit: The proposition supplying the degree-one tuple is the only prior result. There is no beta coordinate, probability convention, or external root fact hidden in the argument.
- Rigor checklist: The proof handles every \(\theta\in J\), uses no empty sum or negative power, and agrees exactly with the common cap \(d+Rd(d-1)/2=1\).
- Local adversarial test: At \(\theta=0\), at arbitrary nonzero \(\theta\), and for intervals lying anywhere on the line, the same constant pivot and derivative remain valid. Introducing a second pivot would be dimensionally invalid, and the proof correctly does not do so.
- Contribution to target step: This lemma closes the degree-one boundary case with the exact original coefficient dimension and velocity.
- Verdict: PASS
- Repair direction: None

### unit_006: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-boundary-interface} names the preceding paper-ready results and states the complete boundary and object-interface conclusion required by the prompt without adding the downstream probability theorem.
- Proof validity: The proposition traces \(\theta=0\) and \(|\theta|=1\) to the constant inner pivot, negative outer \(\theta\) to the absolute negative-power bound, empty cells to vacuous restrictions within an exhaustive partition, and \(d=1\) to its separate lemma. Its explicit \(d=2\) calculation reproduces \(B_{0,2}=2\), \(B_{2,1}=1\), \(\widehat\Lambda=\sqrt5\), the two chart derivatives, and the caps \(2+R\) and \(1+R\).
- Cited-result and assumption audit: Every assertion is supplied by one of the named local proposition or lemmas. No accepted dependency, cited theorem, probability bound, or unproved polynomial-root claim enters the consolidation.
- Rigor checklist: A bounded interval at arbitrary location is covered by a containing compact interval and finite \(T\); since \(m=0\), \(T_*^0=1\) eliminates location dependence from the certificate. The inner and outer estimates use only their cell inequalities. The coefficient vector remains \((\alpha_0,\ldots,\alpha_{d-1})\in\mathbb R^d\), and the sole division is by the nonzero outer feature \(F_d=\theta^{d-1}\).
- Local adversarial test: Intervals contained wholly inside, wholly outside on either side, or crossing \([-1,1]\) are all covered, including empty active pieces and both transition points. The explicit \(d=2\) audit checks the smallest nontrivial split, while the separate \(d=1\) result checks the dimension boundary.
- Contribution to target step: This proposition packages the verified boundary, dimension, location, and deterministic-leading-coordinate facts for exact downstream consumption.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is hidden outside the six-unit map. The object, dimension, shift matrix, certificate, and arbitrary-location claim are proved in Proposition~\ref{prop:step-009-monomial-certificate}; partition legality and exact chart solving are proved in Lemma~\ref{lem:step-009-two-pivot-charts}; the two derivative estimates and finite-sum identities are proved in their respective velocity lemmas; the zero-dimensional degree-one convention is proved in Lemma~\ref{lem:step-009-degree-one}; and all requested boundary/interface checks are consolidated in Proposition~\ref{prop:step-009-boundary-interface}. The target assembly cites these theorem-style results rather than subsection names or local unit IDs. No probability integral, beta-volume factor, interval-length integration, density argument, or polynomial-root theorem is smuggled into this step.

## Target Claim Audit

The proof establishes exactly the accepted `step_009` row for every integer \(d\geq1\) and every bounded interval \(J\). The augmented tuple is exactly \(F_0=\theta^d\), \(F_{k+1}=\theta^k\), so only the \(d\) lower coefficients are random. It verifies \(q=M=m=0\), \(\Delta=N=d\), \(A=(2R)^d\kappa\), the anchor, every row of the constant closure matrix, and the exact certificate. For \(d\geq2\), it proves the prescribed measurable legal partition, both exact charts, and both derivative bounds; for \(d=1\), it proves the sole chart and unit velocity. Quantifiers, coefficient dimension, deterministic probability mode, scalar-absolute-value velocity norm, Euclidean certificate norm, and literal dependence on \(d,R,\kappa\) are preserved. The proof neither strengthens the row to a probability theorem nor weakens any requested boundary or constant.

## Explicit Rate Audit

The deterministic R1 certificate and deterministic R4 input package satisfy the explicit-rate contract. The exposed structural data are \(d,R,\kappa,J,T,m,N,q,M,\Delta\), the matrix coefficient list, \(A\), and \(\widehat\Lambda_{B,T}\); there are no hidden constants, confidence parameters, auxiliary tolerances, or pivot margins. The probability mode is deterministic in this step, the identity holds pointwise on \(U=\mathbb R\), the certificate is uniform over a containing compact interval, and the norms are the setting's Euclidean/Frobenius certificate norm and scalar absolute value for chart velocities. Every simplification is displayed:

\[
\widehat\Lambda_{B,T}^2=\sum_{k=1}^d k^2,
\qquad
\sum_{k=1}^{d-1}k
=\sum_{k=0}^{d-2}(d-1-k)
=\frac{d(d-1)}2,
\]

\[
|\theta|^{k-d}\leq1
\quad(0\leq k\leq d-2,\ |\theta|>1),
\qquad
1+\frac{Rd(d-1)}2
\leq d+\frac{Rd(d-1)}2.
\]

The baseline reduction is exact: the leading coefficient remains deterministic, the original \(d\)-dimensional lower-coefficient vector is unchanged, and the chart residual relative to \(p_\alpha\) is zero. The later factor \((2R)^{d-1}\), interval integration, density domination, and ordinary-probability conclusion are correctly left to `step_010`.

## Notation Surface Audit

The setting-defined objects \(F_0,F,\widetilde F,B,T_*,\widehat\Lambda_{B,T},A,T_j\), and \(\Psi_j\) retain their original meanings. The public-facing augmented tuple, constant matrix, certificate, common cap \(V_d\), active cells, charts, and degree-one map are exactly the minimal interface consumed by `step_010`. The cell-specific beta tuples and insertion maps are appropriately appendix-local. The arithmetic-sum symbol \(S\), reindexing variable \(r\), and containing \(\Theta,T\) choice are proof-local and do not leak into the exported claim. Every constant and helper object has explicit provenance, and there is no unnecessary notation cascade.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-009-monomial-certificate} supplies the exact object, specialization metadata, closure matrix, and certificate. Lemma~\ref{lem:step-009-two-pivot-charts} supplies the exact legal partition and both same-polynomial chart identities. Lemmas~\ref{lem:step-009-inner-velocity} and \ref{lem:step-009-outer-velocity} supply the two literal velocity bounds and common cap. Lemma~\ref{lem:step-009-degree-one} supplies the sole degree-one chart, and Proposition~\ref{prop:step-009-boundary-interface} supplies all requested boundary and interface checks. These named local results jointly imply every clause of the accepted row with no dependency, citation, assembly-only lemma, probability conclusion, or object mismatch.

## Review Rationale

All six non-atomic local units are statement-complete, assumption-traceable, and valid line by line. The proof preserves the exact augmented-monomial ordering and random-coordinate dimension, verifies every closure-matrix row and the literal coefficient certificate, solves both charts in the original polynomial, controls negative powers only on their legal outer domain, and handles \(d=1\), \(d=2\), zero, transition, negative-outer, empty-cell, and arbitrary-location cases. Assumption provenance, explicit dependence, probability and norm modes, notation surface, target fidelity, hidden-subclaim coverage, and target assembly all pass. No producer or sketch repair is required, so `ACCEPTED` with `None` is the smallest aligned decision.
