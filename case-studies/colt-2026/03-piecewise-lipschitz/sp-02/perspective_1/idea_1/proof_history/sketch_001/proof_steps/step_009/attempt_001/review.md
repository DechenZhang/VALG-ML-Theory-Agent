# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_009
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_009/proof.md
- Reviewed proof SHA-256: dedafd879112766a36b21219fd796648dfd794da944fe3de7c371c9159290333
- Binding setting SHA-256: f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Accepted proof sketch SHA-256: e7035d01ff910e55426d09e1add806b49103404582df2cf3e998000a8eebe898
- Accepted proof-sketch review SHA-256: ccc24fd25cd6ac468831c0cd84f8aea642d7584e7cd402686da3bb6f82a86561
- Accepted dependency step_005 proof/review SHA-256: 8af0c8f33a8e26e96adcc9808aadcd77e6464d930d6acdbcf0e7f255934cc68d / 97aad3d3cc66eea47cf89b8896cc4482387b35decf484914e092b901e58c8712
- Review mode: distinct step-scoped interactive review

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-exact-presentation}
  states the exact convention-sensitive specialization assigned by the accepted
  sketch row. Its statement names the four primitive assumptions, the feature
  vector, the uniform-square law, and \(0<\delta\leq1\), and concludes the
  complete tuple, \(x=\theta\), the literal anchor, the normalized Euclidean
  curve, and its exact projective speed. It introduces no alternate coefficient
  convention, metric, presentation, or stronger theorem claim.
- Proof validity: The interval has \(c=0\) and \(h=1\), so \(x=\theta\).
  The empty chain gives \(q=0\), \(M=0\), and \(B_P=0\). The standard-monomial
  data
  \[
  Q_1(x)=1,\qquad Q_2(x)=x/\delta
  \]
  give \(\Delta=1\) and
  \[
  B_Q=\max\{1,1/\delta\}=1/\delta
  \]
  because \(0<\delta\leq1\). The uniform law has \(N=2\), \(R=1\),
  \(\kappa=1/4\), and \(A=2^2/4=1\). Direct differentiation of the actual
  normalized curve gives
  \[
  \gamma_F'(\theta)
  =\frac{(-\theta/\delta^2,1/\delta)}
         {(1+\theta^2/\delta^2)^{3/2}},\qquad
  \|\gamma_F'(\theta)\|_2
  =\frac1{\delta(1+\theta^2/\delta^2)}.
  \]
  This continuous speed is maximized at \(\theta=0\), so both its ordinary
  supremum and the setting-defined essential supremum are exactly
  \(1/\delta\).
- Cited-result and assumption audit: No external result or dependency is used.
  Every tuple entry comes from the named primitive specialization. The speed is
  derived rather than assumed, and the law is used only to verify the declared
  \(R,\kappa,A\) data.
- Rigor checklist: Degree, coefficient-norm, coordinate, norm, and density
  conventions agree exactly with `setting.md`. Positivity of \(\delta\)
  justifies the displayed norm and the comparison \(1/\delta\geq1\). There is
  no hidden constant, rescaling, limit, probability conversion, or
  almost-everywhere substitution.
- Local adversarial test: The calculation remains exact at \(\delta=1\), at
  both parameter endpoints \(\theta=\pm1\), and at \(\theta=0\), where the
  maximum is attained. The \(q=0\) definitions produce \(M=B_P=0\) rather
  than an empty maximum, and the anchor prevents a normalization singularity.
- Contribution to target step: It establishes the exact specialized tuple,
  exposes \(B_Q=1/\delta\), and independently verifies the same
  \(1/\delta\) Euclidean projective scale used in the later comparison.
- Verdict: PASS
- Repair direction: None

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-009-closed-wedges} states the
  original closed root event itself, not an almost-everywhere replacement. It
  explicitly gives both weak-sign wedges, their individual and union areas,
  their null overlap and boundaries, and the exact probability under the fixed
  full joint density for every \(0<\epsilon\leq\delta\).
- Proof validity: With \(t=\epsilon/\delta\in(0,1]\) and
  \(s=\theta/\delta\), the interval \([0,\epsilon]\) maps exactly to
  \([0,t]\). For \(\alpha_2>0\), a root exists exactly when
  \(-t\alpha_2\leq\alpha_1\leq0\); for \(\alpha_2<0\), it exists exactly
  when \(0\leq\alpha_1\leq-t\alpha_2\). If \(\alpha_2=0\), only the origin
  is admitted, while \(\alpha_1=0\) gives the root \(\theta=0\) for every
  \(\alpha_2\). Thus the two displayed closed wedges give an exact set
  identity including both coefficient axes, the origin, both interval
  endpoints, the square boundary, and every wedge edge. Their slices have
  lengths \(t\alpha_2\) on \([0,1]\) and \(-t\alpha_2\) on \([-1,0]\), so
  each area is \(t/2=\epsilon/(2\delta)\). Their intersection is only the
  origin, hence the union area is \(t\). Integrating the constant joint density
  \(1/4\) gives exactly \(t/4=\epsilon/(4\delta)\).
- Cited-result and assumption audit: There is no external citation or accepted
  dependency use. The lemma consumes only the exact presentation proved by
  Proposition~\ref{prop:step-009-exact-presentation} and the primitive static
  range \(0<\epsilon\leq\delta\). The wedge sets and their areas are proved
  before use.
- Rigor checklist: The sign reversal for \(\alpha_2<0\) is correct. All
  inequalities are weak, so the event remains closed and includes
  \(\theta=0\), \(\theta=\epsilon\), \(\alpha_2=\pm1\), and, when \(t=1\),
  the vertices on \(\alpha_1=\pm1\). Inclusion-exclusion is exact because the
  overlap is a singleton. The probability uses the full two-dimensional
  density cap attained as an equality, with no factorization or independence.
- Local adversarial test: At \(\epsilon=\delta\), the vertices are
  \((-1,1)\) and \((1,-1)\), the total area is one, and the probability is
  \(1/4\). At \(\delta=1\), the probability is \(\epsilon/4\). For every
  positive smaller \(\epsilon\), the same closed-set identity holds. Setting
  either coefficient to zero, setting both to zero, and testing both root
  endpoints produces exactly the cases claimed in the union.
- Contribution to target step: It proves the exact lower-event geometry and
  exact probability directly, including both sign branches and all null or
  boundary cases, without invoking the upper theorem.
- Verdict: PASS
- Repair direction: None

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-009-scale-certificate}
  states exactly the R5 output: the ratio for one admissible law and interval,
  the lower bound \(C^{\mathrm{Pf}}_{\mathcal D}\geq1/(4\delta)\), and the
  projective and raw-presentation upper certificates \(1/\delta\) and
  \(\sqrt2/\delta\). It does not assert equality for
  \(C^{\mathrm{Pf}}_{\mathcal D}\) or any constant-factor optimality beyond
  the displayed inequalities.
- Proof validity: Lemma~\ref{lem:step-009-closed-wedges} gives the numerator
  \(\epsilon/(4\delta)\). Since \(\epsilon>0\), division by the interval
  length \(\epsilon\) gives \(1/(4\delta)\). The uniform law belongs to
  \(\mathcal D_{2,1,1/4}\), and \([0,\epsilon]\subseteq[-1,1]\), so this one
  law and one interval are legal entries in the two defining suprema and yield
  the lower bound. Accepted
  Proposition~\ref{prop:step-005-central-rate-bridge} is invoked only after
  that direct argument. Substitution of \(A=1\), \(N=2\), and
  \(\Gamma_{\mathrm{proj}}=1/\delta\) gives the exact projective certificate
  \[
  A\sqrt{N/2}\,\Gamma_{\mathrm{proj}}=1/\delta.
  \]
  Substitution of the complete raw tuple gives
  \[
  \frac{AN\Delta B_Q(1+qB_P)}{\sqrt2h}
  =\frac{2/\delta}{\sqrt2}=\frac{\sqrt2}{\delta}.
  \]
  These computations prove the complete displayed chain.
- Cited-result and assumption audit: There is no external citation. The sole
  accepted dependency is restated in current notation with the exact upper
  conclusion used and matching proof/review hashes. Its accepted interface is
  used only for the two upper comparisons; neither the exact event nor the
  lower certificate is inherited from it.
- Rigor checklist: The proof divides only by positive \(\epsilon\), uses an
  admissible law and a positive-length subinterval, and applies each supremum
  in the correct lower-bound direction. All numerical factors are literal.
  There is no limiting argument, auxiliary tolerance, hidden dependence,
  probability-mode change, or norm switch.
- Local adversarial test: The lower ratio is unchanged throughout
  \(0<\epsilon\leq\delta\), including \(\epsilon=\delta\); no
  \(\epsilon\downarrow0\) passage is required. The chain remains ordered for
  all \(0<\delta\leq1\), since \(1/4\leq1\leq\sqrt2\). The argument makes no
  claim about whether another admissible law increases the supremum.
- Contribution to target step: It converts the exact wedge probability into
  the required lower certificate and compares it with precisely the accepted
  projective and raw-presentation upper interfaces.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No hidden independent subclaim was found. The convention-sensitive tuple and
normalized-speed calculation are isolated in
Proposition~\ref{prop:step-009-exact-presentation}. The exact closed-event
identity, sign split, axis and boundary cases, slice areas, null overlap, and
joint-density integration are all contained in
Lemma~\ref{lem:step-009-closed-wedges}. Positive-length division, admissible
supremum insertion, dependency specialization, and the distinction between
the two upper certificates are contained in
Proposition~\ref{prop:step-009-scale-certificate}. The scalar observations
\(t\leq1\), \([0,\epsilon]\subseteq[-1,1]\), and
\(1/(4\delta)\leq1/\delta\leq\sqrt2/\delta\) are immediate consequences of
the stated primitive ranges and do not conceal additional lemmas. The target
assembly cites paper-ready theorem-style names and labels rather than relying
on bare local unit IDs.

## Target Claim Audit

The proof establishes the exact accepted `step_009` row. In the setting's
standard monomial convention it proves

\[
(h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)
=\left(1,0,0,1,2,1,\frac14,1,0,\frac1\delta\right),
\]

with \(x=\theta\), the literal anchor, and exact Euclidean projective speed
\(1/\delta\). For every \(0<\epsilon\leq\delta\leq1\), it proves the exact
ordinary probability

\[
\Pr[\exists\theta\in[0,\epsilon]:
\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta},
\]

and therefore

\[
\frac1{4\delta}
\leq C^{\mathrm{Pf}}_{\mathcal D}(G;[-1,1])
\leq\frac1\delta
\leq\frac{\sqrt2}{\delta}.
\]

The feature vector, coefficient law, interval, Euclidean norm, full joint
probability mode, and coefficient convention are unchanged from the setting
and sketch. The proof introduces no equality for
\(C^{\mathrm{Pf}}_{\mathcal D}\), hidden constant, auxiliary tolerance,
independence condition, alternate presentation, stronger quantifier, or
asymptotic surrogate.

## Explicit Rate Audit

The exposed variables are \(\delta\) and \(\epsilon\), subject exactly to
\(0<\epsilon\leq\delta\leq1\), together with the full literal tuple
\((h,q,M,\Delta,N,R,\kappa,A,B_P,B_Q)\). There are no hidden constants and no
allowed hidden dependence on \(\delta\), \(\epsilon\), a sign branch, a law,
an interval, or a presentation quantity. The deterministic feature vector,
the value of \(\delta\), and the uniform full joint law are fixed for each
calculation while the identity holds for every admissible \(\epsilon\).

The probability mode is exact ordinary probability under one admissible full
joint law; it is not conditional, asymptotic, simultaneous over laws, or based
on independence. The horizon mode is every closed interval
\([0,\epsilon]\) in the stated range. The norm mode is the Euclidean norm for
projective speed and planar Lebesgue measure for the coefficient event. The
only division is by positive interval length. No term is absorbed or dropped:
the two wedge areas sum to \(\epsilon/\delta\), density \(1/4\) gives
\(\epsilon/(4\delta)\), and exact substitutions give \(1/\delta\) and
\(\sqrt2/\delta\). This is the complete R5 specialization bridge and preserves
the inherited Counter-example baseline scale through \(B_Q=1/\delta\).

## Notation Surface Audit

The specialized \(G\), tuple, normalized curve, and lower and upper
certificates are correctly classified as `public-facing` specializations of
setting-defined objects. The ratio \(t=\epsilon/\delta\), the two wedges
\(W_t^+,W_t^-\), and \(\operatorname{Leb}_2\) are lightweight `proof-local`
objects, are defined before use, and are not exported as assumptions or
generated events. There are no appendix-local objects, helper dictionaries,
free constants, margins, thresholds, or alternate norms. The exported
interface is the minimal tuple, exact probability, lower certificate, and two
upper-scale comparisons required downstream.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-009-exact-presentation} supplies the exact tuple,
coefficient normalization, coordinate identity, anchor, and Euclidean speed.
Lemma~\ref{lem:step-009-closed-wedges} supplies the exact closed event and its
probability, including all sign, axis, endpoint, and boundary cases.
Proposition~\ref{prop:step-009-scale-certificate} uses those results to insert
one legal law and interval into the definition of
\(C^{\mathrm{Pf}}_{\mathcal D}\), then uses accepted
Proposition~\ref{prop:step-005-central-rate-bridge} only for the two upper
comparisons. These named results jointly imply every component of the target
row and R5, with no new assembly claim or assumption.

## Review Rationale

ACCEPTED is the smallest sound decision. All three local units have explicit
assumption and dependency bases, valid derivations, paper-ready names and
stable labels, and a one-to-one correspondence between the local lemma map and
local derivation. Their assembly proves the accepted row without drift, and
the current accepted dependency supplies exactly the upper interface claimed.
The reviewed proof SHA-256 was recomputed as
dedafd879112766a36b21219fd796648dfd794da944fe3de7c371c9159290333.
All binding hashes match the dispatch. The proof is ASCII-only, has no tab or
disallowed control byte, has 196 ordered inline TeX delimiter pairs and 33
ordered display delimiter pairs, and has stack-balanced unescaped braces. Its
target table has nine columns in every row and its local lemma map has four
columns in every row when escaped pipes are ignored. All required headings and
the reviewed identity for sketch attempt 1, step_009, unit attempt 1 are
present. The authorized write scope is confined to this review artifact. No
producer retry is required, so `None` is the aligned smallest retry target.
