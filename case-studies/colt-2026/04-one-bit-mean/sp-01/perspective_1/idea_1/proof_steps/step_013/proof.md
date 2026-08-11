# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 2

## Target Step Claim

- Intended claim: Integrate over localization and prove unconditional failure at most \(\delta\).
- Depends on: `step_001`, `step_012`.
- Assumptions used: `assump:iid-independent-randomness`; generated events.
- Technical challenge: No hidden conditional theorem.
- Intended proof tool or cited result: Total probability and union bound.
- Output target: Unconditional PAC.
- Rate objective: \(\delta/4+\delta/4\leq\delta\).
- Sketch-row review status: `PENDING`; the separate `proof_sketch_review.md` records `ACCEPTED` for sketch attempt 1.

Throughout, fix an arbitrary \(D\in\mathcal D(k,\lambda,\sigma)\), write
\(\mu=\mu(D)\), and let \(\mathbb P_D\) and \(\mathbb E_D^{\rm joint}\)
denote probability and expectation under the single joint law of all
localization samples, all refinement samples, and all public randomness in
the setting. Thus \(D\) is fixed when conditioning is performed; the
population law is never replaced by a law conditioned on localization.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:parameter-domain`: \(k>1\), \(\lambda\geq\sigma>0\),
    \(0<\epsilon\leq c_k\sigma\), and \(\delta\in(0,1/2)\). This step uses
    only \(\epsilon>0\), \(\delta>0\), and the common parameter scope of the
    accepted dependencies.
  - `assump:moment-class`: the fixed common law is an arbitrary
    \(D\in\mathcal D(k,\lambda,\sigma)\). This is used through the accepted
    dependency guarantees and to justify the final supremum over the full
    class; no subclass, support condition, or equality-moment condition is
    imposed.
  - `assump:iid-independent-randomness`: both fixed sample blocks have the
    same law \(D\), and all sample and seed randomness has the joint law
    specified in the setting. The accepted conditional certificate already
    incorporates the refinement/localization independence needed to prove
    it. The present conversion itself uses only measurability and the tower
    identity, not a new independence assertion.
- Accepted dependency artifacts:
  - `step_001` proof, SHA-256
    `dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b`,
    and its `ACCEPTED` review, SHA-256
    `67dada641fad3ab0cf52d7a5aed94d3f647fd2d014ab235fdcf06f03b2f305b7`.
  - `step_012` proof, SHA-256
    `708c2b8c20b8cd3dc61b27567e258cbd584fa94e790a31c88dbbcf6bb6e9249d`,
    and its `ACCEPTED` review, SHA-256
    `08c5a86942807c2b00f08752e11a5016f2fb519d9ef7b9415666750487a62f76`.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\(\ref{lem:step-001-midpoint}\) supplies the always-defined
    transcript-measurable center \(c\), the generated event
    \[
    \mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\},
    \]
    and the unconditional bound
    \(\mathbb P_D(\mathcal E_{\rm loc}^c)\leq\delta/4\), uniformly in
    \(D\). In the source trivial branch \(2\lambda\leq20\sigma\), it gives
    \(c=0\) and \(\mathcal E_{\rm loc}\) deterministically.
  - Accepted Proposition~\(\ref{prop:step-012-conditional-target}\) uses the
    exact setting estimator
    \[
    \widehat\mu
    =c+\operatorname{median}\bigl(\overline Z_1(c),\ldots,
       \overline Z_q(c)\bigr)
    \]
    and the complete observable localization transcript
    \[
    \mathscr T_{\rm loc}
    =\sigma\!\left(R_{\rm loc},(Y_r)_{r\in I_{\rm loc}}\right)
    \]
    to supply the indicator-valued inequality
    \[
    \mathbf1_{\mathcal E_{\rm loc}}
    \mathbb P_D\!\left\{|\widehat\mu-\mu|>\epsilon
       \mid\mathscr T_{\rm loc}\right\}
    \leq\frac\delta4\mathbf1_{\mathcal E_{\rm loc}}
    \quad\text{almost surely}.
    \tag{13.1}
    \]
    Its conditional probability integrates every refinement sample and every
    refinement seed \((L_i,A_i,B_i,U_i)\), while retaining the realized full
    observable localization transcript.
- Local conditional hypotheses:

None

The localization event is a derived event, not a theorem-facing assumption.
No success event is assumed in the unconditional conclusion.

## Local Lemma Map

Atomic step = no. Event measurability and the tower identity, integration of
the accepted indicator-valued certificate, and the final finite-event
assembly are separate auditable claims.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), and \(\ref{assump:iid-independent-randomness}\), and the accepted `step_001` and `step_012` interfaces, the localization event and exact-estimator failure event are measurable, and \(\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})=\mathbb E_D^{\rm joint}[\mathbf1_{\mathcal E_{\rm loc}}\mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})]\). | Supplies the exact measurable tower identity over the full observable localization transcript. |
| `unit_002` | proposition | Under the same three assumptions, accepted Proposition~\(\ref{prop:step-012-conditional-target}\), and Lemma~\(\ref{lem:step-013-measurable-tower}\), \(\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})\leq\delta/4\). | Integrates the conditional-on-localization refinement contribution without conditioning the population law or using a new independence argument. |
| `unit_003` | proposition | Under the same three assumptions, accepted Lemma~\(\ref{lem:step-001-midpoint}\), and Proposition~\(\ref{prop:step-013-localized-failure}\), every \(D\in\mathcal D(k,\lambda,\sigma)\) satisfies \(\mathbb P_D(\mathcal F_D)\leq\delta/2\leq\delta\); in the trivial localization branch the sharper bound is \(\delta/4\). | Combines the two disjoint failure contributions and exports the unconditional uniform PAC event. |

## Cited Result Applications

No external paper result is invoked in this step. The accepted dependency
results and the elementary conditional-expectation facts used below are
restated in current notation.

1. **Accepted midpoint localization wrapper (`step_001`).** Accepted
   Lemma~\(\ref{lem:step-001-midpoint}\), under
   Assumptions~\(\ref{assump:parameter-domain}\),
   \(\ref{assump:moment-class}\), and
   \(\ref{assump:iid-independent-randomness}\), returns an always-defined
   \(\mathscr T_{\rm loc}\)-measurable \(c\) and proves
   \[
   \mathbb P_D(\mathcal E_{\rm loc})\geq1-\frac\delta4,
   \qquad
   \mathcal E_{\rm loc}=\{|c-\mu(D)|\leq50\sigma\}.
   \tag{13.2}
   \]
   In the branch \(2\lambda\leq20\sigma\), it returns \(c=0\) without a
   localization sample and gives
   \(|c-\mu(D)|\leq\lambda\leq10\sigma\) deterministically. The only
   conclusion used here is (13.2), together with this exact trivial-branch
   specialization.
2. **Accepted indicator-valued conditional refinement certificate
   (`step_012`).** Accepted
   Proposition~\(\ref{prop:step-012-conditional-target}\), under the same
   primitive parameter and joint-randomness scope and its accepted
   dependencies, proves (13.1) for the exact final estimator. Its output is
   an almost-sure inequality of \(\mathscr T_{\rm loc}\)-measurable random
   variables. It is uniform on every accepted localization transcript and
   leaves precisely the expectation over that transcript to this step.
3. **Conditional expectation on a measurable event.** If \(G\) is an
   integrable random variable, \(\mathscr T\) is a sigma-field, and
   \(A\in\mathscr T\), then the defining property of conditional
   expectation gives
   \[
   \mathbb E[\mathbf1_A G]
   =\mathbb E[\mathbf1_A\mathbb E(G\mid\mathscr T)].
   \tag{13.3}
   \]
   Lemma~\(\ref{lem:step-013-measurable-tower}\) proves (13.3) with
   \(G=\mathbf1_{\mathcal F_D}\),
   \(A=\mathcal E_{\rm loc}\), and
   \(\mathscr T=\mathscr T_{\rm loc}\). No independence hypothesis is
   required for this identity.
4. **Finite disjoint-event decomposition.** For any events \(F,E\),
   \[
   \mathbb P(F)
   =\mathbb P(F\cap E)+\mathbb P(F\cap E^c)
   \leq\mathbb P(F\cap E)+\mathbb P(E^c).
   \tag{13.4}
   \]
   Proposition~\(\ref{prop:step-013-unconditional-pac}\) applies this exact
   two-piece decomposition. It is the finite union bound requested by the
   sketch, with no accumulation or limiting interchange.
5. **Local-result application register.** Lemma~
   \(\ref{lem:step-013-measurable-tower}\) is used by Proposition~
   \(\ref{prop:step-013-localized-failure}\). Proposition~
   \(\ref{prop:step-013-localized-failure}\) and accepted Lemma~
   \(\ref{lem:step-001-midpoint}\) are used by Proposition~
   \(\ref{prop:step-013-unconditional-pac}\).

## Local Derivation

For the fixed arbitrary \(D\), define the proof-local failure event

\[
\mathcal F_D:=\{|\widehat\mu-\mu(D)|>\epsilon\}.
\tag{13.5}
\]

### unit_001: lemma

**Lemma (Measurable transcript tower identity).**
\(\label{lem:step-013-measurable-tower}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\), and the accepted `step_001`
and `step_012` interfaces, \(\mathcal E_{\rm loc}\in\mathscr T_{\rm loc}\),
\(\mathcal F_D\) is measurable under the joint law \(\mathbb P_D\), and

\[
\boxed{
\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
=\mathbb E_D^{\rm joint}\!\left[
 \mathbf1_{\mathcal E_{\rm loc}}
 \mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})
\right].
}
\tag{13.6}
\]

Here the conditional probability is any version of
\(\mathbb E_D^{\rm joint}[\mathbf1_{\mathcal F_D}
\mid\mathscr T_{\rm loc}]\).

**Proof / justification.** Accepted Lemma~
\(\ref{lem:step-001-midpoint}\) makes \(c\) a measurable function of the
complete observable transcript. Since \(\mu(D)\) and \(50\sigma\) are
fixed scalars under \(\mathbb P_D\),
\(\mathcal E_{\rm loc}=\{|c-\mu(D)|\leq50\sigma\}\) belongs to
\(\mathscr T_{\rm loc}\).

Accepted Proposition~\(\ref{prop:step-012-conditional-target}\) uses the
setting-defined variables \(Z_i(c)\), finite block averages, and the fixed
odd order-statistic median to define exactly

\[
\widehat\mu
=c+\operatorname{median}\bigl(\overline Z_1(c),\ldots,
\overline Z_q(c)\bigr).
\]

Those are finite measurable operations on the localization transcript, the
refinement samples, and the refinement seeds. Hence \(\widehat\mu\), and
therefore \(\mathcal F_D\), is measurable under the full joint law. In
particular \(\mathbf1_{\mathcal F_D}\) is integrable.

Because \(\mathbf1_{\mathcal E_{\rm loc}}\) is
\(\mathscr T_{\rm loc}\)-measurable, the defining property of conditional
expectation gives

\[
\begin{aligned}
\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
&=\mathbb E_D^{\rm joint}
  [\mathbf1_{\mathcal E_{\rm loc}}\mathbf1_{\mathcal F_D}]\\
&=\mathbb E_D^{\rm joint}\!\left[
  \mathbf1_{\mathcal E_{\rm loc}}
  \mathbb E_D^{\rm joint}
  [\mathbf1_{\mathcal F_D}\mid\mathscr T_{\rm loc}]
  \right]\\
&=\mathbb E_D^{\rm joint}\!\left[
  \mathbf1_{\mathcal E_{\rm loc}}
  \mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})
  \right].
\end{aligned}
\]

This is a tower identity for the existing joint law. It neither redefines
\(D\) after localization nor requires independence between the event and the
remaining randomness. \(\square\)

### unit_002: proposition

**Proposition (Integrated localized refinement failure).**
\(\label{prop:step-013-localized-failure}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\), accepted Proposition~
\(\ref{prop:step-012-conditional-target}\), and Lemma~
\(\ref{lem:step-013-measurable-tower}\), the exact estimator satisfies

\[
\boxed{
\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
\leq\frac\delta4.
}
\tag{13.7}
\]

**Proof / justification.** The accepted dependency gives the almost-sure
indicator inequality (13.1). Integrating it with respect to the marginal law
of the full observable localization transcript and applying Lemma~
\(\ref{lem:step-013-measurable-tower}\) yields

\[
\begin{aligned}
\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
&=\mathbb E_D^{\rm joint}\!\left[
 \mathbf1_{\mathcal E_{\rm loc}}
 \mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})
 \right]\\
&\leq\mathbb E_D^{\rm joint}\!\left[
 \frac\delta4\mathbf1_{\mathcal E_{\rm loc}}
 \right]\\
&=\frac\delta4\mathbb P_D(\mathcal E_{\rm loc})\\
&\leq\frac\delta4.
\end{aligned}
\tag{13.8}
\]

The outer expectation accounts for every localization sample and seed; the
conditional probability inside it already accounts for every refinement
sample and seed. Thus (13.8) is under the same joint law as the goal. No
extra independence step is inserted after the accepted conditional
certificate. \(\square\)

### unit_003: proposition

**Proposition (Unconditional uniform PAC conversion).**
\(\label{prop:step-013-unconditional-pac}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\), accepted Lemma~
\(\ref{lem:step-001-midpoint}\), and Proposition~
\(\ref{prop:step-013-localized-failure}\), for every
\(D\in\mathcal D(k,\lambda,\sigma)\),

\[
\boxed{
\mathbb P_D\{|\widehat\mu-\mu(D)|>\epsilon\}
\leq\frac\delta4+\frac\delta4
=\frac\delta2
\leq\delta.
}
\tag{13.9}
\]

Consequently,

\[
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\mathbb P_D\{|\widehat\mu-\mu(D)|>\epsilon\}
\leq\frac\delta2\leq\delta.
\tag{13.10}
\]

In the source trivial localization branch \(2\lambda\leq20\sigma\), the
stronger unconditional bound \(\mathbb P_D(\mathcal F_D)\leq\delta/4\)
holds.

**Proof / justification.** The events
\(\mathcal F_D\cap\mathcal E_{\rm loc}\) and
\(\mathcal F_D\cap\mathcal E_{\rm loc}^c\) are disjoint and their union is
\(\mathcal F_D\). Hence

\[
\begin{aligned}
\mathbb P_D(\mathcal F_D)
&=\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
 +\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc}^c)\\
&\leq\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
 +\mathbb P_D(\mathcal E_{\rm loc}^c)\\
&\leq\frac\delta4+\frac\delta4
=\frac\delta2
\leq\delta.
\end{aligned}
\tag{13.11}
\]

The first contribution is Proposition~
\(\ref{prop:step-013-localized-failure}\); the second is accepted Lemma~
\(\ref{lem:step-001-midpoint}\). The final inequality uses only
\(\delta>0\).

The law \(D\) was arbitrary, and neither contribution nor its constant
depends on which member of \(\mathcal D(k,\lambda,\sigma)\) was fixed.
Taking the supremum over that same unrestricted class proves (13.10). This
supremum is taken only after the joint-probability inequality is proved for
each fixed \(D\); it is not interchanged with a conditional expectation.

If \(2\lambda\leq20\sigma\), accepted `step_001` gives
\(c=0\) and \(|c-\mu(D)|\leq10\sigma\) deterministically, so
\(\mathbb P_D(\mathcal E_{\rm loc}^c)=0\). Equation (13.11) then reduces
exactly to \(\mathbb P_D(\mathcal F_D)\leq\delta/4\). \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-013-measurable-tower}\) first verifies the required
typing: the generated localization event belongs to the sigma-field of the
full observable localization transcript, the failure event for the exact
setting estimator is measurable under the joint law of all samples and
seeds, and conditional probability means the conditional expectation of
that failure indicator. It then proves the exact identity

\[
\mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
=\mathbb E_D^{\rm joint}\!\left[
 \mathbf1_{\mathcal E_{\rm loc}}
 \mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})
\right].
\]

Proposition~\(\ref{prop:step-013-localized-failure}\) applies this identity
to accepted Proposition~\(\ref{prop:step-012-conditional-target}\). The
accepted indicator-valued bound integrates to a localized joint failure
contribution at most \(\delta/4\); no theorem-facing localization-success
assumption remains.

Proposition~\(\ref{prop:step-013-unconditional-pac}\) then uses accepted
Lemma~\(\ref{lem:step-001-midpoint}\) for the only other contribution,
\(\mathbb P_D(\mathcal E_{\rm loc}^c)\leq\delta/4\), and the exact disjoint
decomposition of the failure event. Therefore

\[
\mathbb P_D\{|\widehat\mu-\mu(D)|>\epsilon\}
\leq\delta/4+\delta/4=\delta/2\leq\delta
\]

for every \(D\) in the full moment class. Taking the supremum proves the
binding unconditional PAC output. The same estimator, common law, absolute
error event, and full collection of sample and protocol randomness are used
from the conditional dependency through the unconditional conclusion.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\), \(\lambda\geq\sigma>0\),
  \(\epsilon>0\), \(\delta\in(0,1/2)\), the arbitrary common law
  \(D\in\mathcal D(k,\lambda,\sigma)\), its mean \(\mu(D)\), the exact
  estimator \(\widehat\mu\), and the generated event
  \(\mathcal E_{\rm loc}\).
- Hidden constants may depend on: no hidden constant is introduced. The two
  failure allocations are exactly \(\delta/4\) and \(\delta/4\).
- Hidden constants may not depend on: \(k,\lambda,\sigma,\epsilon,\delta,D\),
  either transcript, or any sample or seed realization.
- Fixed quantities: parameters and \(D\) are fixed while conditional
  expectation is taken. The supremum over \(D\) is taken only after the
  pointwise-in-\(D\) unconditional inequality is proved.
- Probability mode: the input from `step_012` is high probability conditional
  on the complete observable localization transcript and indicator-restricted
  to \(\mathcal E_{\rm loc}\). Equations (13.6)--(13.11) convert it to an
  unconditional joint probability over all samples and all public
  randomness. No conditioning remains in (13.9)--(13.10).
- Horizon mode: the conversion applies to the deterministic fixed horizon
  already used by the accepted estimator. This step makes no horizon upgrade
  and derives no sample-count bound.
- Norm mode: absolute value on \(\mathbb R\), exactly as in the formalized
  goal.
- Admissibility conditions and auxiliary tolerances: only the accepted
  dependency domains and \(\delta>0\) are used. No new event, tolerance,
  support condition, tail condition, or success hypothesis is introduced.
- Term absorption or simplification inequalities:
  \[
  \mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc})
  \leq(\delta/4)\mathbb P_D(\mathcal E_{\rm loc})\leq\delta/4,
  \]
  \[
  \mathbb P_D(\mathcal F_D\cap\mathcal E_{\rm loc}^c)
  \leq\mathbb P_D(\mathcal E_{\rm loc}^c)\leq\delta/4,
  \]
  and \(\delta/4+\delta/4=\delta/2\leq\delta\).
- Probability conversion: the defining conditional-expectation identity
  (13.6), followed by the exact two-event decomposition (13.11). Independence
  is not used in this conversion, and the fixed population law is not
  conditioned or changed.
- Contribution to any Rate Specialization Bridge: this step exports only the
  unconditional confidence mode and its exact \(\delta\)-budget. It does not
  simplify a sample allocation or assert a public sample-complexity or
  protocol-legality result.
- Baseline-reduction check: in the source trivial branch,
  \(\mathcal E_{\rm loc}\) holds deterministically and the localization
  failure contribution is exactly zero, so the conversion preserves the
  sharper \(\delta/4\) refinement bound rather than charging a fictitious
  \(\delta/4\) localization loss.

## Blockers

None

## Notation And Assumption Notes

- **Setting-defined public-facing objects:** \(D,\mu(D),c,\epsilon,\delta\),
  \(\mathcal E_{\rm loc}\), \(Z_i(c)\), the block means, and
  \(\widehat\mu\) retain their exact meanings from `setting.md` and the
  accepted dependencies. The sole exported conclusion is the unconditional
  PAC event for that exact \(\widehat\mu\); no helper object is exported.
- **Appendix-local object:** \(\mathscr T_{\rm loc}\) is inherited from
  accepted `step_012` and denotes the complete observable localization
  transcript. It is used only to express and eliminate the conditional
  probability.
- **Proof-local objects:** \(\mathbb P_D\) and
  \(\mathbb E_D^{\rm joint}\) denote the fixed-\(D\) joint law and
  expectation over all samples and seeds; \(\mathcal F_D\) is the failure
  event in (13.5). These abbreviations expose rather than hide the
  probability space and are not downstream interfaces.
- **Constant provenance:** \(50\) and the localization failure budget
  \(\delta/4\) are inherited from accepted `step_001`; the refinement
  failure budget \(\delta/4\) is inherited from accepted `step_012`. The
  factor \(1/2\) in the final \(\delta/2\) is the exact sum of those two
  budgets, not a hidden constant.
- **Assumption provenance:** \(\mathcal E_{\rm loc}\) and the
  indicator-valued conditional refinement certificate are accepted derived
  outputs. Event measurability and the tower identity are proved in
  Lemma~\(\ref{lem:step-013-measurable-tower}\); their use does not promote
  localization success to a primitive or conditional theorem assumption.
- **One-law audit:** both blocks' samples have the one fixed common law \(D\).
  The notation \(\mathbb P_D(\mathcal F_D\mid\mathscr T_{\rm loc})\)
  conditions a random-event indicator inside the joint probability space;
  it does not mean that \(D\) itself is conditioned on
  \(\mathcal E_{\rm loc}\) or replaced by a transcript-dependent law.
- **Randomness audit:** the outer expectation in (13.6) integrates the
  localization samples and \(R_{\rm loc}\); the inner conditional
  probability integrates the refinement samples and all refinement seeds.
  Together they cover exactly the probability over all samples and all
  public randomness required by the goal.
- **Measurability audit:** accepted `step_001` supplies transcript-measurable
  \(c\); accepted `step_012` supplies the exact finite measurable estimator
  and an almost-sure \(\mathscr T_{\rm loc}\)-conditional inequality.
  Therefore both indicators in the tower calculation have the required
  types. No regular-conditional-distribution choice beyond a version of
  conditional expectation is needed.
- **Independence audit:** localization/refinement independence is part of the
  primitive setting and was consumed by accepted `step_012` to prove its
  transcript-conditional certificate. Once (13.1) is available, this step
  uses only conditional-expectation measurability and monotonicity; it does
  not multiply marginal probabilities or assert independence of failure
  events.
- **Uniformity audit:** the derivation fixes an arbitrary member of the full
  unrestricted moment class and uses dependency bounds uniform in that
  member. The final supremum is therefore legal and retains every source
  quantifier.
- **Boundary audit:** when \(2\lambda\leq20\sigma\), including
  \(\lambda=\sigma\), localization is deterministic and its bad event is
  empty. The calculation also remains valid as \(\delta\uparrow1/2\), since
  only \(\delta>0\) and the accepted dependency domains are used.
- **Scope boundary:** no sample allocation, ceiling absorption,
  three-regime rate simplification, query-precommitment audit, or one-bit
  protocol closure is proved here; those are outside this step's target.
- **Diagnostic boundary:** no `global_proof.md`, prior same-step attempt,
  downstream artifact, tracker, worker log, or other branch was read or used.
