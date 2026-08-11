# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove
  \[
  d_{\rm path}\le S^L\le S^{L_0}
  \]
  and use \(\delta_0\le\varepsilon\) plus monotonicity to obtain
  \[
  \operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}.
  \]
- Depends on: step_006.
- Assumptions used: Primitive assump:constant-depth and assump:robust-tube; the accepted unconditional representation witness from step_006.
- Technical challenge: Keep every path-count factor and both threshold directions correct, including at \(L=1\), \(S=1\), and \(\varepsilon=0\).
- Intended proof tool or cited result: Direct positive-integer inequalities and witness monotonicity.
- Output target: Polynomial dimension and the public \(2\varepsilon\) corollary.
- Rate objective: RO-2; exact \(S^{L_0}\) and \(2\varepsilon\) specialization.
- Review status in the accepted sketch row: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:constant-depth: Assumption~\ref{assump:constant-depth} gives a fixed universal integer \(L_0\ge1\) and \(1\le L\le L_0\). The basic setting additionally gives positive integer widths \(n_0,\ldots,n_L\), with \(n_L=1\), and
    \[
    S=\sum_{j=1}^L n_jn_{j-1},
    \qquad
    d_{\rm path}=\prod_{j=0}^{L-1}n_j.
    \]
  - assump:robust-tube: Assumption~\ref{assump:robust-tube} supplies the scalar range \(0\le\delta_0\le\varepsilon\). Its event, radius, and probability clauses are not otherwise used in this step.
  - assump:fixed-source-witnesses and assump:universal-expected-success: These assumptions are used only through the accepted step_006 conclusion under its stated assumption basis; this step does not add to or alter them.
- Derived conclusion supplied by an accepted dependency:
  - Accepted Proposition~\ref{prop:p1-i3-step006-dc-witness} supplies the exact unconditional law \(\mathcal P_{\rm gate}\), fixed before every \((\mathcal D,h)\), such that
    \[
    \forall\mathcal D\in\Delta(\mathcal X)\quad
    \forall h\in\mathcal H,
    \qquad
    \mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
    \left[\inf_{w\in\mathbb R^{d_{\rm path}}}
    R_{\mathcal D,h}(w,\varphi)\right]
    \le\varepsilon+\delta_0,
    \tag{1}
    \]
    and hence
    \[
    \operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
    \le d_{\rm path}.
    \tag{2}
    \]
- Local conditional hypotheses: None.
- Accepted dependency proof/review artifacts:
  - `perspective_1/idea_3/proof_steps/step_006/proof.md`
  - `perspective_1/idea_3/proof_steps/step_006/review.md`, whose status is `ACCEPTED` for sketch attempt 1, step_006, unit attempt 1.

No claim from a global diagnostic is used.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:constant-depth} and the setting's positive integer widths and parameter-count definitions, \(d_{\rm path}\le S^L\le S^{L_0}\). | Converts the exact path-feature dimension into a polynomial in the parameter count, with no extra factor. |
| unit_002 | proposition | Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, and accepted Proposition~\ref{prop:p1-i3-step006-dc-witness}, the same law \(\mathcal P_{\rm gate}\) is admissible at error \(2\varepsilon\), and \(\operatorname{dc}_{2\varepsilon}(\mathcal H)\le\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\). | Performs the exact public error-threshold specialization without changing the feature law or probability mode. |

## Cited Result Applications

No external paper theorem is used.

1. **Accepted universal gate-law witness (Proposition~\ref{prop:p1-i3-step006-dc-witness}).** Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, the accepted dependency proves (1)--(2) with the unconditional initialization-gate law \(\mathcal P_{\rm gate}\). The law has feature dimension exactly \(d_{\rm path}\), is chosen before all later \((\mathcal D,h)\), and the expectation in (1) is the tie-resolved representation error from the setting. Its assumptions and exact object mapping are discharged by the accepted step_006 proof/review pair.
2. **Definition-level threshold monotonicity.** For \(0\le a\le b\), every dimension and feature-map law admissible in the definition of \(\operatorname{dc}_a(\mathcal H)\) is also admissible for \(\operatorname{dc}_b(\mathcal H)\), because an expected risk bounded by \(a\) is bounded by \(b\). Whenever the admissible set at level \(a\) is nonempty, it follows that
   \[
   \operatorname{dc}_b(\mathcal H)\le
   \operatorname{dc}_a(\mathcal H).
   \tag{3}
   \]
   Proposition~\ref{prop:p1-i3-step006-dc-witness} makes the stricter admissible set nonempty here, and Proposition~\ref{prop:p1-i3-step007-public-specialization} below verifies \(a=\varepsilon+\delta_0\le2\varepsilon=b\) before applying (3).

## Local Derivation

### unit_001: lemma

**Lemma (Polynomial path-count bound).** \label{lem:p1-i3-step007-path-count}

**Statement.** Under Assumption~\ref{assump:constant-depth} and the setting definitions
\(n_0,\ldots,n_L\in\mathbb N_{\ge1}\),
\(S=\sum_{j=1}^L n_jn_{j-1}\), and
\(d_{\rm path}=\prod_{j=0}^{L-1}n_j\), one has
\[
d_{\rm path}\le S^L\le S^{L_0}.
\tag{4}
\]

**Proof / justification.** Fix any \(j\in\{0,\ldots,L-1\}\). Since \(n_{j+1}\) is a positive integer,
\[
n_j\le n_{j+1}n_j.
\tag{5}
\]
The product \(n_{j+1}n_j\) is one of the nonnegative summands defining \(S\), so
\[
n_{j+1}n_j\le
\sum_{k=1}^L n_kn_{k-1}=S.
\tag{6}
\]
Combining (5)--(6) gives \(n_j\le S\) for each of the exactly \(L\) factors in \(d_{\rm path}\). All factors are nonnegative, hence multiplication yields
\[
d_{\rm path}
=\prod_{j=0}^{L-1}n_j
\le\prod_{j=0}^{L-1}S
=S^L.
\tag{7}
\]

Each summand in \(S\) is a positive integer and \(L\ge1\), so \(S\ge1\). Assumption~\ref{assump:constant-depth} gives the nonnegative integer \(L_0-L\). Therefore
\[
S^{L_0}=S^L S^{L_0-L}\ge S^L,
\tag{8}
\]
which combines with (7) to prove (4).

The boundary cases are exact. If \(L=1\), then \(n_1=1\), so
\[
S=n_1n_0=n_0=d_{\rm path}=S^L.
\tag{9}
\]
If \(S=1\), then the sum of \(L\) positive integer summands satisfies \(1=S\ge L\), forcing \(L=1\); (9) then forces \(n_0=1\), and
\[
d_{\rm path}=S^L=S^{L_0}=1.
\tag{10}
\]
Thus neither exponent comparison uses a strict inequality or an assumption \(S>1\). \(\square\)

### unit_002: proposition

**Proposition (Public error-threshold specialization).** \label{prop:p1-i3-step007-public-specialization}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, and accepted Proposition~\ref{prop:p1-i3-step006-dc-witness}, the exact same unconditional law \(\mathcal P_{\rm gate}\) satisfies
\[
\forall\mathcal D\in\Delta(\mathcal X)\quad
\forall h\in\mathcal H,
\qquad
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)\right]
\le2\varepsilon.
\tag{11}
\]
Consequently,
\[
\operatorname{dc}_{2\varepsilon}(\mathcal H)
\le
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}.
\tag{12}
\]

**Proof / justification.** Assumption~\ref{assump:robust-tube} gives \(0\le\delta_0\le\varepsilon\). Adding \(\varepsilon\) to the upper inequality gives the exact threshold comparison
\[
\varepsilon+\delta_0\le2\varepsilon.
\tag{13}
\]
For arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\), accepted Proposition~\ref{prop:p1-i3-step006-dc-witness} bounds the left-hand side of (11), under the same unconditional law \(\mathcal P_{\rm gate}\), by \(\varepsilon+\delta_0\). Applying (13) proves (11) without changing the law, its dimension, its quantifier order, or its expectation mode.

At threshold \(\varepsilon+\delta_0\), the accepted witness makes the admissible-dimension set in the definition of \(\operatorname{dc}\) nonempty. Since every law admissible at this threshold is also admissible at the larger threshold \(2\varepsilon\), definition-level monotonicity (3) gives the first inequality in (12). The second inequality in (12) is exactly (2).

If \(\varepsilon=0\), then \(0\le\delta_0\le\varepsilon\) forces \(\delta_0=0\), so both thresholds in (13) are exactly zero. The accepted nonnegative expected risk is then at most zero, and the same zero-error witness proves (11). If \(\delta_0=\varepsilon\), then \(\varepsilon+\delta_0=2\varepsilon\), so the two thresholds coincide and no slack is introduced. These arguments include their intersection \(\varepsilon=\delta_0=0\) and never divide by \(\varepsilon\). \(\square\)

## Target-Step Assembly

Lemma~\ref{lem:p1-i3-step007-path-count} uses the setting's positive widths and actual parameter-count summands to prove
\[
d_{\rm path}\le S^L\le S^{L_0}
\tag{14}
\]
with no lift or multiplicative constant. Accepted Proposition~\ref{prop:p1-i3-step006-dc-witness} supplies
\(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\) using the exact unconditional gate law. Combining it with (14) gives
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}
\le S^L
\le S^{L_0}.
\tag{15}
\]

Proposition~\ref{prop:p1-i3-step007-public-specialization} reuses that same witness and the exact inequality \(\varepsilon+\delta_0\le2\varepsilon\), yielding
\[
\operatorname{dc}_{2\varepsilon}(\mathcal H)
\le
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}
\le S^{L_0}.
\tag{16}
\]
Equations (14) and (16) are the exact step_007 target. The conditions and conclusion remain those of the accepted conditional theorem; this deterministic specialization introduces no dependence on \(T\), \(\eta\), or \(r\).

## Explicit Rate Audit

- Exposed variables: \(d_{\rm path},S,L,L_0,\varepsilon,\delta_0\), with final bounds exactly \(d_{\rm path}\le S^{L_0}\) and \(\operatorname{dc}_{2\varepsilon}(\mathcal H)\le S^{L_0}\).
- Hidden constants may depend on: None. The exponent \(L_0\) is the fixed universal integer stated explicitly in Assumption~\ref{assump:constant-depth}, not a hidden constant.
- Hidden constants may not depend on: \(n,\mathcal H,S,L,L_0\), any width, \(T,\eta,r,M_r,G_r\), \(\varepsilon,\delta_0,s_0,\kappa\), any distribution or target, initialization, or sample paths.
- Fixed quantities: The architecture, \(S,L,L_0,T,\eta,r,\varepsilon,\delta_0,s_0,\kappa\), initialization law, and gate-map rule retain exactly the fixing order of the setting and step_006. The universal exponent \(L_0\) is fixed independently of all problem and learner parameters.
- Probability mode: The dimension arithmetic is deterministic. The error bridge reuses the step_006 expectation under the same unconditional law \(\mathcal P_{\rm gate}\); it makes no conditioning, high-probability conversion, or deterministic upgrade.
- Horizon mode: The accepted witness is for the same fixed finite horizon \(T\). Neither the path count nor the threshold bridge introduces a factor depending on \(T\), and no horizon-uniform or asymptotic claim is made.
- Norm mode: Euclidean feature dimension and the expected tie-resolved \(0\)-\(1\) representation risk from the setting. No norm or risk metric is changed.
- Admissibility conditions and auxiliary tolerances: Positive integer widths, \(1\le L\le L_0\), and \(0\le\delta_0\le\varepsilon\), together with the accepted step_006 assumptions. No new tolerance, event, radius, or stability condition is introduced.
- Term absorption or simplification inequalities:
  \[
  n_j\le n_{j+1}n_j\le S\quad(0\le j\le L-1),
  \qquad
  d_{\rm path}\le S^L,
  \]
  \[
  S^{L_0}=S^L S^{L_0-L}\ge S^L,
  \qquad
  \varepsilon+\delta_0\le2\varepsilon.
  \]
  No term is dropped, dominated by an unstated threshold, or absorbed into a constant.
- Probability conversion: None. Inequality (11) follows by enlarging only the allowed deterministic error threshold for the same expected-risk witness.
- Contribution to any Rate Specialization Bridge: Lemma~\ref{lem:p1-i3-step007-path-count} and Proposition~\ref{prop:p1-i3-step007-public-specialization} jointly give the complete RO-2 bridge from the technical witness \((d_{\rm path},\varepsilon+\delta_0)\) to the public pair \((S^{L_0},2\varepsilon)\).
- Baseline-reduction check: At \(L=1\), \(d_{\rm path}=S\) exactly. At \(S=1\), all three quantities \(d_{\rm path},S^L,S^{L_0}\) equal one. At \(\varepsilon=0\), \(\delta_0=0\) and both thresholds equal zero. At \(\delta_0=\varepsilon\), the technical and public thresholds coincide. At \(\delta_0=0\), the accepted witness remains at error \(\varepsilon\) and is merely admissible at \(2\varepsilon\); no stronger baseline conclusion is replaced.

## Blockers

None

## Notation And Assumption Notes

- Local notation: No new mathematical object is needed. Indices \(j,k\) are proof-local dummy indices. The quantities \(d_{\rm path},S,L,L_0,\varepsilon,\delta_0\) and the law \(\mathcal P_{\rm gate}\) retain exactly their setting and accepted-dependency meanings.
- Helper-object surface classification: \(d_{\rm path}\), \(S^{L_0}\), \(\mathcal P_{\rm gate}\), and the bounds (15)--(16) are public-facing. The intermediate factors \(n_{j+1}n_j\) and exponent difference \(L_0-L\) are proof-local expressions, not exported helpers. No appendix-local dictionary is introduced.
- Constant provenance: \(S,L,L_0,d_{\rm path},\varepsilon,\delta_0\) are directly defined or constrained in `setting.md`. The error \(\varepsilon+\delta_0\) and exact witness law are inherited from accepted Proposition~\ref{prop:p1-i3-step006-dc-witness}. The factor \(2\) is obtained exactly from \(\delta_0\le\varepsilon\); it is not hidden and carries no parameter dependence.
- Assumption provenance: Positive widths and the parameter-count/path-count formulas are part of the basic setting. Constant depth and the scalar error comparison are primitive conditions. The representation witness is an accepted derived conclusion. No event membership, generated trajectory property, gate stability, boundedness, recurrence, or local-validity fact is assumed or regenerated in this step.
- Dependence note: \(T,\eta,r,M_r,G_r,s_0,\kappa\) remain part of the conditional theorem's previously discharged setup where applicable, but none enters the dimension arithmetic, the exponent, the threshold comparison, or a hidden constant. The theorem is not strengthened beyond, or weakened from, the formalized conditional target.
- Diagnostic boundary: `global_proof.md` was not read or used for this step.
