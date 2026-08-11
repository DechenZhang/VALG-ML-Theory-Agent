# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_001
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_001/proof.md
- Reviewed proof SHA-256: d55b8e0455d2b2d38b3d72339557df4b1366b5e2cd81cc145fd537dca1e75c11

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-001-anchor} states exactly the
  nonvanishing interface allocated to this step. It cites the three primitive
  assumptions, quantifies every \(\theta\in\Theta\), and states the literal
  anchor, the norm margin, nonvanishing, and differentiability of the
  setting-defined normalization before the proof.
- Proof validity: Substitution of \(Q_{j_*}\equiv1\) into the output definition
  gives \(F_{j_*}=1\) on all of \(U\). Therefore
  \(\|F\|_2^2\geq F_{j_*}^2=1\). The outputs are differentiable on the open
  interval \(U\), and division by the positive \(C^1\) norm is valid, so
  \(\gamma_F\) is differentiable at every point relevant to \(\Theta\),
  including its endpoints.
- Cited-result and assumption audit: No dependency or external theorem is
  used. The anchor is primitive under
  Assumption~\ref{assump:anchored-derivative-closure}; the common-chain and
  closure interfaces supply differentiability. The lower norm bound is proved,
  not assumed as a generated regularity condition.
- Rigor checklist: The index \(j_*\) is legal because \(N\geq1\). The argument
  is pointwise on \(U\), so restriction to the compact set \(\Theta\) and its
  endpoints creates no one-sided differentiability gap. No limit, supremum, or
  stochastic-mode conversion occurs.
- Local adversarial test: For \(N=1\), the only feature is exactly one. For
  \(q=0\), the empty chain does not affect the substitution. A feature vector
  with all nonanchor coordinates zero still has norm one. Removing the anchor
  would break the conclusion, but that regime is excluded by the stated
  primitive assumption rather than silently by the proof.
- Contribution to target step: The lemma supplies the genuine denominator used
  in Proposition~\ref{prop:step-001-projective} and the nonvanishing output
  consumed by later sweep steps.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-001-height} states the exact
  pointwise and supremum coefficient-height bounds required by the accepted
  row, under only the primitive assumptions needed to define the finite
  polynomial matrix and bound \(|\theta|\).
- Proof validity: For
  \(c_{rs}=\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell\), the inequalities
  \(|\theta|\leq T\leq T_*\) and \(T_*\geq1\) give
  \(|B_{rs}(\theta)|\leq c_{rs}\), including \(\ell=0\). Squaring and summing
  over the exact \((N+1)^2\) entries gives
  \(\|B(\theta)\|_{\mathrm F}\leq\widehat\Lambda_{B,T}\). The displayed
  rowwise Cauchy--Schwarz calculation independently proves
  \(\|B(\theta)\|_{\mathrm{op}}\leq\|B(\theta)\|_{\mathrm F}\). Taking the
  supremum introduces no additional factor.
- Cited-result and assumption audit: Finite-dimensional Cauchy--Schwarz is
  restated in current notation and then derived through the displayed norm
  calculation. No common-chain fact, dependency, probability assumption, or
  unproved boundedness condition is used. All constants come directly from
  Assumptions~\ref{assump:parameter-regime} and
  \ref{assump:anchored-derivative-closure}.
- Rigor checklist: Negative \(\theta\), \(T<1\), \(m=0\), zero coefficients,
  and \(N=1\) are all covered by absolute values and the convention
  \(T_*\geq1\). The square root is applied to nonnegative finite sums. The
  proof preserves every coefficient and every \(T_*^\ell\) term, so the
  dependence on \(T,m,N\) is literal.
- Local adversarial test: A one-entry constant matrix attains equality between
  its Frobenius norm and the certificate. Coefficient cancellation can only
  reduce \(|B_{rs}(\theta)|\), so it does not invalidate the envelope. If the
  certificate is zero, every coefficient-level nonnegative summand is zero,
  as used later in unit_005.
- Contribution to target step: This lemma proves the full static matrix
  certificate and supplies the actual \(B\)-norm control used by the
  homogeneous projective proposition.
- Verdict: PASS
- Repair direction: None

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-001-homogeneous-block} isolates the
  exact conditional homogeneous claim in the accepted row. It defines the
  lower principal block \(B_F\), states the local condition
  \(F_0\equiv0\), and concludes \(F'=B_FF\) on all of \(\Theta\).
- Proof validity: With \(\widetilde F=(0,F)\), the lower \(N\) rows of
  \(\widetilde F'=B\widetilde F\) are
  \(F'_r=B_{r0}F_0+\sum_{s=1}^N B_{rs}F_s\). The first term is zero and the
  remaining matrix is exactly \(B_F\). The proof neither deletes lower-row
  entries nor assumes that the top row or column zero of \(B\) vanishes.
- Cited-result and assumption audit: The only source is the exact primitive
  closure identity in
  Assumption~\ref{assump:anchored-derivative-closure}. The homogeneous
  condition is the static specialization explicitly authorized by the target,
  not a generated invariant or a new theorem-facing assumption.
- Rigor checklist: The row and column ranges are correct for the
  \((N+1)\)-dimensional augmented tuple. The identity is pointwise and hence
  valid at endpoints. No symmetry of \(B\), invertibility, or vanishing
  off-block hypothesis is needed.
- Local adversarial test: Arbitrary values of \(B_{r0}\) do not matter because
  they multiply \(F_0=0\); arbitrary top-row entries do not enter the lower-row
  equation. The argument remains valid for \(N=1\), where \(B_F\) is scalar.
- Contribution to target step: This is the exact derivative interface inserted
  into the normalized-vector calculation in
  Proposition~\ref{prop:step-001-projective}.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-001-projective} states the
  exact homogeneous projector identity and the exact coefficient-height bound
  for \(\Gamma_{\mathrm{proj}}(F)\), under the three primitive assumptions,
  the named prior local results, and only the accepted condition
  \(F_0\equiv0\).
- Proof validity: Writing \(r=\|F\|_2\), unit_001 gives \(r\geq1\).
  Differentiation yields
  \[
  \gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})F'/r.
  \]
  Unit_003 gives \(F'/r=B_F\gamma_F\). The proof directly verifies that the
  orthogonal projector is contractive. It also proves the non-symmetric
  principal-block comparison correctly: with the isometric injection
  \(\iota x=(0,x)\) and lower-coordinate projection \(\pi\),
  \(B_F=\pi B\iota\), hence
  \(\|B_F\|_{\mathrm{op}}\leq\|B\|_{\mathrm{op}}\). Combining these facts
  with unit_002 gives the pointwise bound and then the stated supremum.
- Cited-result and assumption audit: The product and chain rules are restated
  with their positive-denominator condition and instantiated with the actual
  curve \(F\). Every denominator, block, and norm comparison is discharged in
  the proof. No projective regularity, matrix symmetry, or external result is
  assumed.
- Rigor checklist: Quantifiers are pointwise on the full compact interval,
  with derivatives inherited from the surrounding open interval. All norms
  are Euclidean, and the induced operator norm is used consistently. The
  deterministic finite right-hand side justifies finiteness of the ordinary
  supremum; there is no essential-supremum substitution.
- Local adversarial test: Pure radial motion is annihilated by the projector.
  For a nonsymmetric augmented matrix, the compression proof still applies.
  For \(N=1\), the anchor makes \(\gamma_F=1\) and the projector zero. If
  \(B=0\), both the block derivative and normalized derivative vanish.
- Contribution to target step: The proposition establishes both remaining
  homogeneous clauses and exports the exact projective certificate consumed by
  the later homogeneous probability step.
- Verdict: PASS
- Repair direction: None

### unit_005: proposition

- Statement fidelity: Proposition~\ref{prop:step-001-boundary} records the
  boundary and baseline regimes required by R1 and R5. The preceding local
  results already prove the core conclusions without these restrictions; this
  proposition correctly verifies that specializing to \(q=0\), \(m=0\), a
  constant matrix, \(N=1\), an endpoint, or zero certificate does not alter
  them. Its two numbered clauses state the exact monomial-shift and shear
  certificate values before the proof.
- Proof validity: With \(q=0\), the chain is empty and \(M=0\), while the
  matrix calculation is unchanged. With \(m=0\), the certificate is exactly
  \(\|B\|_{\mathrm F}\) because \(T_*^0=1\). The anchor makes the
  \(N=1\) normalized curve constant, and the open domain \(U\) validates the
  derivative identities at endpoints. If
  \(\widehat\Lambda_{B,T}=0\), every coefficient of \(B\) is zero, so the
  closure identity gives \(\widetilde F'=0\) on the interval \(U\) and the
  homogeneous projective speed is zero. For the augmented monomial tuple, the
  actual constant shift has entries \(B_{0d}=d\) and
  \(B_{k+1,k}=k\), so its squared height is
  \(d^2+\sum_{k=1}^{d-1}k^2=\sum_{k=1}^d k^2\). For
  \((F_0,F_1,F_2)=(0,1,\theta/\delta)\), the actual closure shear has only
  \(B_{2,1}=1/\delta\), giving height \(1/\delta\).
- Cited-result and assumption audit: The zero-derivative criterion on an
  interval is restated in current notation and its hypotheses are discharged
  by the open interval \(U\) and the closure identity. The monomial and shear
  computations use only the explicitly displayed matrices; they do not invoke
  the later monic-probability or counterexample conclusions.
- Rigor checklist: The empty sum at \(d=1\) gives height one. Positivity of
  \(\delta\) fixes the square-root sign. The \(m=0\) specialization removes
  all \(T\)-dependence exactly. A formal constant matrix with zero higher
  coefficients is handled identically. The endpoint statement is pointwise,
  while the supremum conclusions remain the already proved global ones.
- Local adversarial test: At \(d=1\), the sole nonzero monomial-shift entry is
  \(B_{0,1}=1\). At \(\delta=1\), the shear height is one; as
  \(\delta\downarrow0\), the literal \(1/\delta\) scale is retained. A zero
  certificate cannot conceal a nonzero polynomial coefficient because every
  term in its defining sum is nonnegative and \(T_*>0\).
- Contribution to target step: The proposition closes all requested null and
  endpoint checks and verifies the two exact certificate baseline scales
  without changing the main target or borrowing a later step.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. Anchor nonvanishing, coefficient
evaluation, homogeneous block extraction, normalized differentiation, and the
boundary/baseline package are each present in the local lemma map and have
matching theorem-style statements and proofs. The operator/Frobenius bound,
principal-block compression, projector contraction, zero-certificate
implication, and the two constant-matrix height calculations are all displayed
inside their named units. The elementary calculus and zero-derivative facts are
restated before use. Local unit IDs serve only as audit handles; mathematical
authority in the derivation and assembly uses the named labels.

## Target Claim Audit

The proof establishes exactly the accepted `step_001` claim under the three
allocated primitive assumptions and no dependency artifacts. It proves
\(F_{j_*}=1\), \(F\neq0\), and
\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}
\]
unconditionally within the setting. Under exactly the accepted static
specialization \(F_0\equiv0\), it proves
\[
F'=B_FF,
\qquad
\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]
The quantifiers, ordinary supremum, Euclidean norms, setting convention, and
literal constants match the sketch row. No affine sweep, probability, or later
baseline theorem is overclaimed.

## Explicit Rate Audit

This is a deterministic rate-bearing step. It exposes \(T,m,N\), every
\(b_{rs,\ell}\), \(T_*\), and the exact coefficient certificate; \(q,M,\Delta\)
are disclosed with degree-zero additional dependence once the supplied matrix
certificate is fixed. Hidden constants, confidence parameters, auxiliary
tolerances, and stochastic conversions are absent. The deterministic
presentation is fixed; the horizon mode is pointwise on \(\Theta\) followed by
an ordinary supremum; and the norm modes are the Euclidean vector, induced
operator, and Frobenius norms. Every simplification is displayed:
\[
|B_{rs}(\theta)|
\leq\sum_{\ell=0}^m|b_{rs,\ell}|T_*^\ell,
\qquad
\|B\|_{\mathrm{op}}
\leq\|B\|_{\mathrm F}
\leq\widehat\Lambda_{B,T},
\]
and
\[
\|\gamma_F'\|_2
\leq\|B_F\|_{\mathrm{op}}
\leq\|B\|_{\mathrm{op}}
\leq\widehat\Lambda_{B,T}.
\]
No term is absorbed. The \(m=0\) monomial specialization gives exactly
\((\sum_{k=1}^d k^2)^{1/2}\), including \(d=1\), and the one-entry shear gives
exactly \(1/\delta\). Computing the counterexample's projective-speed equality
and probability lower scale remains correctly assigned to `step_011`; this
step proves the certificate portion allocated by R1 and R5 without weakening
or preempting that later interface.

## Notation Surface Audit

The only new public-facing object is the lower block \(B_F\), directly defined
from the setting matrix and required by downstream homogeneous statements. The
other public-facing symbols \(T_*\), \(\widehat\Lambda_{B,T}\), \(\gamma_F\),
and \(\Gamma_{\mathrm{proj}}(F)\) are setting-defined. The entry envelopes
\(c_{rs}\), norm alias \(r\), injection vector \(\bar x\), and projection
\(\pi\) are correctly proof-local and are not exported. The two constant-matrix
patterns are correctly appendix-local baseline checks. Every helper has direct
provenance, all technical assumptions retain stable `assump:<slug>` labels,
and no radius, event, threshold, margin, or long helper dictionary is
introduced.

## Target-Step Assembly Audit

The assembly uses
Lemma~\ref{lem:step-001-anchor} for nonvanishing,
Lemma~\ref{lem:step-001-height} for the exact static certificate,
Lemma~\ref{lem:step-001-homogeneous-block} for \(F'=B_FF\), and
Proposition~\ref{prop:step-001-projective} for the normalized identity and
projective bound. Proposition~\ref{prop:step-001-boundary} supplies the
accepted endpoint, degenerate, and baseline-scale audit. These named results
jointly imply every clause of the exact sketch row, with no assembly-only
lemma, hidden assumption, dependency, or use of `global_proof.md` as proof
evidence.

## Review Rationale

All five non-atomic local units are self-contained and valid line by line. The
proof preserves the exact coefficient dependence, correctly compresses the
homogeneous block, discharges every denominator and boundary regime, and
retains both required baseline certificate scales. The hidden-subclaim,
assumption-provenance, notation, rate, and assembly audits reveal no local,
dependency, or sketch defect. No producer rerun is required, so `None` is the
smallest retry target.
