# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: `step_001`
- Unit attempt: 2
- Reviewed proof artifact: `perspective_2/idea_1/proof_steps/step_001/proof.md`
- Reviewed proof SHA-256: `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8`
- Binding setting SHA-256: `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e`
- Binding accepted sketch SHA-256: `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4`
- Binding accepted sketch-review SHA-256: `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9`
- Dependency step artifacts: None
- Evidence boundary: The accepted global diagnostic is context only and is not proof evidence. The archived unit-attempt-1 proof and review are stale and were not used as current evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: The Anchor nonvanishing lemma states the exact primitive assumption basis and proves the accepted row's literal anchor, genuine lower denominator, nonvanishing, and differentiability conclusions. It neither assumes a lower norm nor strengthens the target.
- Proof validity: Assumption~\ref{assump:anchored-derivative-closure} gives \(Q_{j_*}\equiv1\), so \(F_{j_*}(\theta)=1\) and \(\|F(\theta)\|_2^2\geq F_{j_*}(\theta)^2=1\). The common-chain presentation and the closure identity give differentiability on the open interval \(U\supseteq\Theta\); since the denominator is nonzero on \(U\), normalization is differentiable at interior points and at the endpoints of \(\Theta\) by restriction from \(U\).
- Cited-result and assumption audit: The statement uses only Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}. There is no dependency or cited-paper input, and the elementary norm implication is derived in place.
- Rigor checklist: Quantification is pointwise for every \(\theta\in\Theta\). The argument remains valid for \(q=0\), \(N=1\), constant feature tuples, and both interval endpoints. No compactness, projective regularity, or extra margin is smuggled into the denominator.
- Local adversarial test: With \(N=1\), the only feature is the anchored \(F_1=1\), so the claimed lower bound and normalized curve are exact. If every nonanchored coordinate vanishes, the anchor still prevents a zero vector. Thus the normalization cannot fail in any allowed branch.
- Contribution to target step: It supplies the exact nonvanishing and denominator interface used by the normalized-vector calculation.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: The Literal coefficient-height matrix certificate lemma proves exactly the accepted \(T,m,N,(b_{rs,\ell})\)-dependent pointwise and supremum bounds, with the setting's definition of \(T_*=\max\{1,T\}\) and \(\widehat\Lambda_{B,T}\).
- Proof validity: For \(\theta\in\Theta\), \(|\theta|\leq T\leq T_*\), hence \(|B_{rs}(\theta)|\leq\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell\), including \(\ell=0\). Squaring and summing over precisely the \((N+1)^2\) entries gives the Frobenius bound. Rowwise Cauchy--Schwarz gives \(\|Bx\|_2^2\leq\|B\|_{\mathrm F}^2\|x\|_2^2\), so taking the unit-vector supremum gives the operator bound. No dimension factor is missing.
- Cited-result and assumption audit: Only Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-derivative-closure} are used. Finite-dimensional Cauchy--Schwarz is restated in current notation and fully instantiated; no external citation is needed.
- Rigor checklist: All coefficient and matrix indices run from \(0\) to \(N\), all powers run from \(0\) to \(m\), and the square root is legitimate because both sides are nonnegative. The proof treats \(T<1\), \(m=0\), constant \(B\), and \(\widehat\Lambda_{B,T}=0\) without changing the formula.
- Local adversarial test: When \(m=0\), the certificate is exactly \(\|B\|_{\mathrm F}\). When the certificate is zero, each nonnegative coefficient-height summand is zero, hence every \(b_{rs,\ell}=0\) and \(B\equiv0\). A single nonzero matrix entry contributes its absolute value exactly, so no cancellation or hidden factor can lower the certificate.
- Contribution to target step: It proves the static matrix certificate and the only quantitative upper source used by the projective bound.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: The Homogeneous block extraction lemma targets exactly the row-local condition \(F_0\equiv0\) and the lower principal block \(B_F=(B_{rs})_{1\leq r,s\leq N}\).
- Proof validity: In the lower rows of \(\widetilde F'=B\widetilde F\), the column-zero term is \(B_{r0}F_0=0\), while the remaining columns are exactly \(B_FF\). Thus \(F'=B_FF\). The proof does not assume that the first row, first column, or any other off-block entry of \(B\) vanishes.
- Cited-result and assumption audit: Assumption~\ref{assump:anchored-derivative-closure} supplies the exact augmented closure identity. The homogeneous condition is a local static specialization expressly present in the accepted target, not a generated invariant or an unconditional theorem assumption.
- Rigor checklist: The extraction is coordinate-exact for all \(N\geq1\) and every \(\theta\in\Theta\). It remains valid for constant \(B\), zero \(B\), \(N=1\), and endpoints because the identity holds on the ambient open interval \(U\).
- Local adversarial test: Allow arbitrary nonzero \(B_{r0}\), \(B_{0s}\), and \(B_{00}\). The lower equation still reduces to \(F'=B_FF\) solely because \(F_0=0\); hence the claimed result does not rely on hidden block diagonality.
- Contribution to target step: It supplies the exact homogeneous differential identity needed before normalized-vector differentiation.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: The Normalized derivative and projective certificate proposition uses the three primitive assumptions and the three named prior lemmas to prove exactly the projector identity and \(\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}\) under \(F_0\equiv0\).
- Proof validity: With \(r=\|F\|_2\geq1\), differentiation gives \(r'=\langle F,F'\rangle/r\) and
  \[
  \gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})F'/r.
  \]
  Substituting \(F'=B_FF=rB_F\gamma_F\) gives the exact identity. The displayed Pythagorean calculation proves that the Euclidean projector has operator norm at most one. Embedding \(x\mapsto(0,x)\) and projecting onto lower coordinates proves \(\|B_F\|_{\mathrm{op}}\leq\|B\|_{\mathrm{op}}\). These inequalities yield the pointwise bound and then the stated supremum bound.
- Cited-result and assumption audit: Product and chain rules are restated and their hypotheses are discharged by the anchor and differentiability. Lemmas~\ref{lem:step-001-anchor}, \ref{lem:step-001-height}, and \ref{lem:step-001-homogeneous-block} are named with exact current-step conclusions. No global diagnostic or later proof result is used.
- Rigor checklist: All norms are Euclidean, the compression introduces no dimension factor, and the argument is deterministic and pointwise before taking the supremum. Finiteness follows from finite setting data. For \(N=1\), the projector is exactly zero, so the formula and bound remain valid.
- Local adversarial test: Algebraically, if a generally normalized unanchored curve has \(B_F\gamma_F\) parallel to \(\gamma_F\), the projector can erase that nonzero radial component. The proof claims only the projector identity here and does not incorrectly infer \(B_F\gamma_F=0\) from stationarity without using the anchor; the anchored stationary strengthening is proved separately in unit_005.
- Contribution to target step: It proves the exact homogeneous projective interface and the certificate domination consumed downstream.
- Verdict: PASS
- Repair direction: None.

### unit_005: proposition

- Statement fidelity: The Boundary and baseline consistency proposition explicitly covers every accepted local stress regime and only the certificate-scale portions of the monic and shear specializations. It does not import a pivot, root-count, swept-area, or probability conclusion from a later step.
- Proof validity: The \(q=0\), \(m=0\), constant-\(B\), constant-feature, \(N=1\), endpoint, and zero-height branches are each reduced directly to the preceding identities. In the repaired anchored stationary branch, writing \(F=r\gamma_F\) and using \(1=F_{j_*}=r\gamma_{F,j_*}\) gives \(\gamma_{F,j_*}=1/r>0\). If \(\gamma_F'=0\), then \(0=F_{j_*}'=r'\gamma_{F,j_*}+r\gamma_{F,j_*}'\) forces \(r'=0\), hence \(F'=0\), and \(F'=B_FF=rB_F\gamma_F\) forces \(B_F\gamma_F=0\). This correctly uses the literal anchor and is stronger than the purely algebraic projector statement only in the anchored stationary specialization.
- Cited-result and assumption audit: The proposition lists the three primitive assumptions and all four named prior local results it consumes. The zero-derivative criterion is restated and applied coordinatewise on the interval \(U\). The monic and shear calculations are direct specializations of the current certificate, not citations or dependency imports.
- Rigor checklist: For the augmented monic tuple \((\theta^d,1,\theta,\ldots,\theta^{d-1})\), the only nonzero shift entries are \(B_{0d}=d\) and \(B_{k+1,k}=k\), \(1\leq k\leq d-1\), so \(\widehat\Lambda_{B,T}^2=d^2+\sum_{k=1}^{d-1}k^2=\sum_{k=1}^dk^2\); the empty sum gives height one at \(d=1\). For \((0,1,\theta/\delta)\), the sole entry \(B_{2,1}=1/\delta\) gives height \(1/\delta\) because \(\delta>0\). All constants are literal.
- Local adversarial test: A nonzero constant matrix may annihilate a constant feature vector, so constant features do not imply \(B=0\); the proof makes no such claim. Zero certificate height does imply \(B=0\) coefficientwise and then constant features through the closure identity. A stationary unanchored curve can retain radial motion, but the fixed anchored coordinate excludes it exactly as shown. The cases \(q=0\), \(m=0\), \(N=1\), \(d=1\), interval endpoints, constant tuples, and the one-entry shear all pass.
- Contribution to target step: It discharges the accepted boundary and baseline-invariance obligations, including degree-zero additional \(q,M,\Delta\) dependence once \(B\) is fixed and the exact monic and \(1/\delta\) certificate scales.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No unlisted independent proof obligation is used. The anchor/nonvanishing claim is unit_001; entrywise evaluation plus Frobenius/operator domination is unit_002; homogeneous lower-block extraction is unit_003; normalized differentiation plus projector/compression bounds is unit_004; and every boundary, stationary, zero-height, monic-height, and shear-height calculation is contained in unit_005. Triangle inequality, Cauchy--Schwarz, product/chain rules, coordinate projection, and the zero-derivative criterion are either proved at the point of use or restated with their hypotheses. The proof's global-diagnostic and repair-history notes are explicitly non-evidentiary and are not used in the assembly.

## Target Claim Audit

The proof establishes the exact accepted `step_001` row under precisely Assumptions~\ref{assump:parameter-regime}, \ref{assump:balcan-common-chain}, and \ref{assump:anchored-derivative-closure}, with no dependencies. It proves (F_{j_*}=1\Rightarrow F\neq0) and the deterministic matrix supremum for the full setting. Only under the row's explicit static condition (F_0\equiv0) does it prove (F'=B_FF), the normalized projector identity, and the projective-speed supremum. Quantifier order, Euclidean norm mode, pointwise-to-uniform scope, literal constants, and conditional scope all match. No later monic or probability result is imported, no boundary condition is promoted to the general theorem, and no stale acceptance or global diagnostic is treated as proof evidence.

## Explicit Rate Audit

This is a deterministic rate-bearing structural step. It exposes \(T,m,N,T_*\), every \(b_{rs,\ell}\), and the exact coefficient height; \(q,M,\Delta\) have expressly stated degree-zero additional dependence after \(B\) is fixed. Hidden constants are absent. The deterministic presentation, coefficient list, \(T\), and \(\Theta\) are fixed; the mode is pointwise on \(\Theta\) followed by a supremum; and the norms are Euclidean vector, induced operator, and Frobenius norms. There is no probability parameter, confidence conversion, horizon upgrade, auxiliary tolerance, or prose-only absorption. The displayed entrywise, Frobenius, operator, compression, and projector inequalities preserve every factor. The baseline reductions give exactly \((\sum_{k=1}^dk^2)^{1/2}\), including \(d=1\), and \(1/\delta\), with no hidden \(q,M,\Delta,d,\delta\) dependence or conservative loss.

## Notation Surface Audit

The proof classifies every helper. \(B_F\) is the minimal public-facing lower block required by the target; \(T_*,\widehat\Lambda_{B,T},\gamma_F,
\Gamma_{\mathrm{proj}}\) are setting-defined public objects. The entry heights \(c_{rs}\), radius \(r\), embedded vector \(\bar x\), and lower projection \(\pi\) are proof-local and are not exported. The two constant-matrix patterns are appendix-local baseline checks. All constants and lower bounds have direct setting or proved provenance, no one-off alias hides a bound, and the step exports no unnecessary dictionary.

## Target-Step Assembly Audit

The assembly cites only paper-ready named local results. Lemma~\ref{lem:step-001-anchor} supplies nonvanishing, Lemma~\ref{lem:step-001-height} supplies the full-matrix supremum, Lemma~\ref{lem:step-001-homogeneous-block} supplies \(F'=B_FF\) under \(F_0\equiv0\), Proposition~\ref{prop:step-001-projective} supplies the normalized identity and projective bound, and Proposition~\ref{prop:step-001-boundary} supplies the required boundary and baseline checks. These conclusions jointly imply every clause of the exact row. Bare unit IDs, archived artifacts, step IDs, and the global diagnostic are not used as mathematical authority.

## Review Rationale

The current unit-attempt-2 proof is complete, target-faithful, and self-contained under the unchanged accepted sketch interface. Every local unit passes, including the repaired stationary argument that uses the fixed anchor to eliminate radial motion, while the general projector identity is correctly kept distinct. The coefficient arithmetic, dimension factors, block extraction, normalized differentiation, boundary cases, dependence declarations, and named-result assembly all close without a local or sketch-level defect. Therefore `ACCEPTED` with `Smallest Retry Target = None` is the smallest controlled outcome.
