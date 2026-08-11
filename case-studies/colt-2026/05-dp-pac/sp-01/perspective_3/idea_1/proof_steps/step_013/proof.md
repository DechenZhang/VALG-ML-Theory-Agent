# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_013`
- Unit attempt: 1
- Binding setting SHA-256: `f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17`
- Binding accepted sketch SHA-256: `56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1`
- Binding accepted sketch-review SHA-256: `ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b`
- Accepted global diagnostic SHA-256: `08f3f4cf7b314f3d177b097cf025d714d8fc1ba83c71afb8142b3679ce59ec75`
- Accepted global-diagnostic review SHA-256: `2425ca6599893234e1f010b8253338eaf3a4723fb44ccfcbc8a0600250cacd40`

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Controlled producer status | Review status |
| ------- | --------------------- | ---------------------- | -------------------------- | ------------- |
| `step_004` | `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba` | `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999` | `COMPLETE` | `ACCEPTED` |
| `step_008` | `3dddedfdd14f3415d0c01b41d4f401cc0039249d8e4aa3fa856808588971fc41` | `5c49ef256d2a14d6f0abb365bd160f319cf7566113733f68dc76663d74f44305` | `COMPLETE` | `ACCEPTED` |
| `step_009` | `4918b28c3936130fd06d5d68f2cc99f67032dbc5c569d239c9a1d068de28ca2c` | `13e26d0cbc021c8cd3859bb17bda4d8048a1ac07c27cc3f35ffa81305144874b` | `COMPLETE` | `ACCEPTED` |
| `step_011` | `aa9d54e1cc56c3463dbcfeb5b971da58c65a7badd1a6af1e80feb9507d93e884` | `3d9f588c7982c56138e503540bd5f3d1cfb804d5d3a2e83e9a7fbfe6e2a33911` | `COMPLETE` | `ACCEPTED` |
| `step_012` | `7df7fac764358a8cdc88e1f24a7d886fb1f4d9c3b17345886d627695cc9da688` | `78eebcdab7c1e6bd36fd56dd61815907d92834b3b46ddb67ece50866a00fd67a` | `COMPLETE` | `ACCEPTED` |

The identities and controlled statuses in this table were checked before
any dependency claim was consumed. Each review certifies the proof hash in
the same row and records `Smallest Retry Target = None` and
`Blocking Issues = None`.

## Target Step Claim

- Intended claim: Apply \(\mu_{N,M}\) to the simulator, subtract overflow,
  and use exchangeability to prove the prior-averaged ideal product risk
  exceeds \(2^{-9}\).
- Depends on: `step_004`, `step_008`, `step_009`, `step_011`, `step_012`.
- Assumptions used: Derived prior, coupling, overflow, and privacy outputs.
- Technical challenge: Preserve the hard gap through every generated
  interface.
- Intended proof tool or cited result: Algebraic combination
  \(2^{-8}-2^{-9}=2^{-9}\) with strict tail.
- Output target: Average product population-risk lower bound.
- Rate objective: R1, with explicit constants and expectation mode.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

Use the exact setting-defined budget

\[
M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\},
\qquad \eta:=2^{-8},
\tag{1}
\]

and the finite public prior \(\mu_{N,M}\) supplied by accepted
Proposition~\ref{prop:step-004-finite-hard-prior}. Let

\[
B:=B_{\mu_{N,M},A}
\tag{2}
\]

be the total one-block simulator whose exact source-cap membership is
certified by accepted
Proposition~\ref{prop:step-012-source-membership}. In the accepted ideal
experiment, write

\[
\boldsymbol\Xi=((T_i,Q_i))_{i=1}^k\sim\mu_{N,M}^{\otimes k},
\qquad
S^{\mathrm{id}}\mid\boldsymbol\Xi
\sim(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n,
\qquad
H^{\mathrm{id}}\sim A(S^{\mathrm{id}}).
\tag{3}
\]

The exact conclusion proved below is

\[
\boxed{
\mathbb E_{\substack{\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}\\
                      S^{\mathrm{id}}\sim
                      (P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\\
                      H^{\mathrm{id}}\sim A(S^{\mathrm{id}})}}
R_{P_{\boldsymbol Q}}(H^{\mathrm{id}},c_{\boldsymbol T})
>2^{-9}.}
\tag{4}
\]

The sample law in (4) is conditional on each realized instance vector, as
displayed in (3). The outer prior average is an analysis-side finite
mixture, not a claim that the mixed rows are i.i.d. from one deterministic
distribution.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The basic setting definitions of \(X_{k,N}\), \(C_{k,N}\), the full
    improper hypothesis space, the exact product law
    \(P_{\boldsymbol Q}(i,x)=k^{-1}Q_i(x)\), and population 0-1 risk.
  - The static integer ranges \(k\ge2\), \(N\ge2\), \(n\ge1\), the exact
    deterministic budget (1), and the arbitrary randomized size-\(n\)
    learner \(A\). These are fixed or quantified setting data, not generated
    invariants.
- Setting assumptions by stable id:
  - Assumption~\ref{assump:candidate-regime} and the local contradiction
    hypothesis inherited through accepted `step_012` provide the scalar
    hard regime and source-cap calibration already incorporated into that
    accepted dependency.
  - Assumption~\ref{assump:central-dp} is consumed only through accepted
    Proposition~\ref{prop:step-012-source-membership}. It is not applied
    again here.
  - Assumption~\ref{assump:distribution-free-realizable-pac} is not used in
    this step.
- Accepted dependency step proof/review artifacts:
  - The five exact proof/review pairs in the Direct Dependency Identity
    Table. No other proof-step artifact is consumed.
- Derived objects and conclusions supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies one
    finite law \(\mu_{N,M}\), fixed before every later learner kernel, such
    that every total unrestricted one-block learner in the exact source-cap
    class has prior-averaged expected population risk strictly greater than
    \(\eta\).
  - Accepted Lemmas~\ref{lem:step-008-instance-factorization},
    \ref{lem:step-008-ideal-sample-law}, and
    \ref{lem:step-008-selector-independence}, together with accepted
    Proposition~\ref{prop:step-008-selected-risk-identity}, supply the exact
    ideal law in (3) and the equality between its expected selected
    one-block risk and its expected product population risk for arbitrary
    randomized tag-asymmetric \(A\).
  - Accepted Proposition~\ref{prop:step-009-overflow} supplies the same
    selector/tag experiment, the exact event \(\{U>M\}\), and
    \(\Pr(U>M)<2^{-9}\), with zero overflow for \(k=2,3\).
  - Accepted Proposition~\ref{prop:step-011-risk-transfer} supplies the
    prior-averaged inequality from the actual simulator risk to the exact
    accepted ideal selected risk, with the single subtractive residual
    \(\Pr(U>M)\).
  - Accepted Proposition~\ref{prop:step-012-source-membership} supplies
    \(B\)'s total exact-size typing and membership in the same unrestricted
    \((0.1,d_*/(M^2\log M))\)-DP one-block learner class quantified by
    accepted `step_004`.
- Derived invariants supplied by accepted dependencies: The finite public
  prior, ideal experiment, selector independence, overflow certificate,
  actual-to-ideal coupling inequality, and simulator source membership just
  listed. None is treated as primitive.
- Local conditional hypotheses: None beyond the contradiction hypothesis
  already discharged into accepted source membership. No event such as
  \(U\le M\) is assumed in the unconditional conclusion.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | **Hard-prior loss of the certified simulator** (`prop:step-013-simulator-hardness`). Under accepted Propositions~\ref{prop:step-004-finite-hard-prior} and \ref{prop:step-012-source-membership}, if \(B=B_{\mu_{N,M},A}\) is instantiated at the same admissible \(N,M\) and public prior, then its prior-averaged actual one-block risk is strictly greater than \(2^{-8}\). | Applies the prior only after exact simulator membership is certified, preserving the public-prior quantifier order. |
| `unit_002` | proposition | **Prior-averaged product-risk transfer** (`prop:step-013-product-lower-bound`). Under Proposition~\ref{prop:step-013-simulator-hardness}, accepted Propositions~\ref{prop:step-008-selected-risk-identity}, \ref{prop:step-009-overflow}, and \ref{prop:step-011-risk-transfer}, the exact prior-averaged ideal product risk in (4) exceeds \(2^{-9}\). | Identifies the ideal selected risk with exact product risk and subtracts overflow exactly once while preserving strictness. |

Atomic step = no. Instantiating the universal hard-prior inequality at the
certified simulator and transferring that actual loss through coupling and
exchangeability are logically separate obligations.

## Cited Result Applications

### Accepted dependency: finite public hard prior

- Source or name: Accepted
  Proposition~\ref{prop:step-004-finite-hard-prior}, certified by the
  matching accepted `step_004` review.
- Restated statement in current notation: For the admissible fixed
  \(N,M\), there is a finite probability law
  \(\mu_{N,M}\) on \([N+1]\times\Delta([N])\), chosen before the learner,
  such that every total randomized unrestricted
  \((0.1,d_*/(M^2\log M))\)-DP map
  \(K:([N]\times\{0,1\})^M\to\{0,1\}^{[N]}\) obeys
  \[
  \mathbb E_{(T,Q)\sim\mu_{N,M}}
  \mathbb E_{Z\sim(Q^{\tau_T})^M,K}
  R_Q(K(Z),\tau_T)>\eta.
  \tag{5}
  \]
- Instantiated objects: \(K=B_{\mu_{N,M},A}\) from (2), with the same
  \(N,M\), source cap, full improper output space, replacement adjacency,
  and public prior.
- Required assumptions and discharge: The hard-regime scalar conditions and
  existence of the public prior are part of the accepted `step_004`
  interface. Totality, exact input/output typing, and source-cap privacy of
  this particular \(B\) are supplied by accepted
  Proposition~\ref{prop:step-012-source-membership}.
- Conclusion used: Equation (5) for the certified simulator. No product
  risk, coupling, or ideal-experiment conclusion is attributed to this
  dependency.

### Accepted dependency: exact ideal product and exchangeability interface

- Source or name: Accepted
  Proposition~\ref{prop:step-008-selected-risk-identity}, together with its
  accepted instance-factorization and ideal-sample-law lemmas, certified by
  the matching `step_008` review.
- Restated statement in current notation: In the ideal experiment (3), for
  an independent \(J\sim\operatorname{Unif}[k]\),
  \[
  \mathbb E_{\mathrm{ideal}}
  R_{Q_J}(D_JH^{\mathrm{id}},\tau_{T_J})
  =
  \mathbb E_{\mathrm{ideal}}
  R_{P_{\boldsymbol Q}}(H^{\mathrm{id}},c_{\boldsymbol T}).
  \tag{6}
  \]
  The vector law is \(\mu_{N,M}^{\otimes k}\); conditional on that vector,
  the dataset law is exactly
  \((P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\).
- Instantiated objects: The exact accepted ideal marginal on the left side
  of the `step_011` risk-transfer inequality, with the same
  \(k,N,M,n,\mu_{N,M},A\).
- Required assumptions and discharge: The accepted dependency proves
  selector independence through the arbitrary randomized learner and the
  deterministic equal-tag risk decomposition. No symmetry, privacy, PAC,
  properness, or observation of the hidden tag is required.
- Conclusion used: The left side of the coupling inequality is exactly the
  expected product population risk in (4), with zero exchangeability
  residual.

### Accepted dependency: overflow certificate

- Source or name: Accepted
  Proposition~\ref{prop:step-009-overflow}, certified by the matching
  accepted `step_009` review.
- Restated statement in current notation: For
  \(U=\sum_{r=1}^n\mathbf1\{I_r=J\}\) and the exact budget (1),
  \[
  p_{\mathrm{ov}}:=\Pr\{U>M\}<2^{-9}.
  \tag{7}
  \]
  This probability is over only \(J,I_1,\ldots,I_n\). If \(k=2\) or
  \(k=3\), then \(p_{\mathrm{ov}}=0\).
- Instantiated objects: The same selector, tags, count, event, and budget in
  the accepted ideal experiment, simulator, and coupling.
- Required assumptions and discharge: Only the primitive integer ranges and
  exact setting budget are needed; the accepted proposition covers every
  \(n<k\), \(M=8\), and \(U=0\) boundary.
- Conclusion used: The one residual in the risk transfer is strictly below
  \(2^{-9}\).

### Accepted dependency: actual-to-ideal risk bridge

- Source or name: Accepted
  Proposition~\ref{prop:step-011-risk-transfer}, certified by the matching
  accepted `step_011` review.
- Restated statement in current notation: With the hidden input pair drawn
  from \(\mu_{N,M}\), the exact accepted ideal selected risk and actual
  simulator risk satisfy
  \[
  \begin{aligned}
  &\mathbb E_{\mathrm{ideal}}
    R_{Q_J}(D_JH^{\mathrm{id}},\tau_{T_J})\\
  &\quad\ge
  \mathbb E_{\substack{(T,Q)\sim\mu_{N,M}\\
                       Z\sim(Q^{\tau_T})^M\\ B}}
    R_Q(B(Z),\tau_T)-p_{\mathrm{ov}}.
  \end{aligned}
  \tag{8}
  \]
  The pointwise source is
  \(L_{\mathrm{id}}\ge L_{\mathrm{act}}-\mathbf1\{U>M\}\), and actual
  and ideal risks agree exactly on \(U\le M\).
- Instantiated objects: The same \(B\), public prior, ideal experiment, and
  overflow event used in (5)--(7).
- Required assumptions and discharge: The accepted proof checks the two
  exact marginals, arbitrary randomized learner synchronization, and risk
  boundedness. Its accepted review confirms that no conditioned-i.i.d.
  statement or extra residual is used.
- Conclusion used: Equation (8), with overflow subtracted exactly once.

### Accepted dependency: exact simulator source membership

- Source or name: Accepted
  Proposition~\ref{prop:step-012-source-membership}, certified by the
  matching accepted `step_012` review.
- Restated statement in current notation: Under
  Assumptions~\ref{assump:candidate-regime} and
  \ref{assump:central-dp} and the inherited local contradiction hypothesis,
  \(B_{\mu_{N,M},A}\) is a total kernel on every arbitrary labeled
  size-\(M\) input, has the full improper output space
  \(\{0,1\}^{[N]}\), and is
  \((0.1,d_*/(M^2\log M))\)-DP under one-row replacement.
- Instantiated objects: The exact simulator (2), with the same admissible
  \(N,M\) and \(\mu_{N,M}\) appearing in (5).
- Required assumptions and discharge: Exact central privacy of \(A\), the
  candidate scalar regime, and the local contradiction hypothesis were
  discharged inside accepted `step_012` through the one-use simulator and
  accepted calibration. This step does not reapply privacy or composition.
- Conclusion used: \(B\) belongs to the universal learner class quantified
  in accepted Proposition~\ref{prop:step-004-finite-hard-prior}.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Proposition~\ref{prop:step-013-simulator-hardness} | The certified simulator's prior-averaged actual one-block loss is strictly greater than \(2^{-8}\). | Accepted finite hard prior and exact simulator source membership at identical \(N,M,\mu_{N,M}\). | Supplies the positive term in the transfer ledger. |
| Proposition~\ref{prop:step-013-product-lower-bound} | The exact prior-averaged ideal product risk is strictly greater than \(2^{-9}\). | Simulator hardness, accepted coupling, accepted overflow certificate, and accepted selected/product identity. | Exact target-step export. |

No external paper theorem, unreviewed standard result, or diagnostic claim is
used as proof authority in this step.

## Local Derivation

### unit_001: proposition

**Proposition (Hard-prior loss of the certified simulator).**
\(\label{prop:step-013-simulator-hardness}\)
Under accepted Proposition~\ref{prop:step-004-finite-hard-prior} and
accepted Proposition~\ref{prop:step-012-source-membership}, if the total
simulator \(B=B_{\mu_{N,M},A}\) is instantiated at their identical
admissible \(N,M\) and public prior \(\mu_{N,M}\), then

\[
\mathbb E_{\substack{(T,Q)\sim\mu_{N,M}\\
                      Z\sim(Q^{\tau_T})^M\\ B}}
R_Q(B(Z),\tau_T)>\eta=2^{-8}.
\tag{9}
\]

The expectation includes the prior draw, exactly \(M\) i.i.d. realizable
one-block input rows conditional on that draw, all simulator preprocessing,
and any internal coins of \(A\) used by the simulator.

**Proof / justification.**
Accepted Proposition~\ref{prop:step-012-source-membership} gives every
membership clause needed by the universal learner quantifier in accepted
Proposition~\ref{prop:step-004-finite-hard-prior}: \(B\) is total on the
entire arbitrary labeled input space of exact size \(M\), its output is an
arbitrary member of \(\{0,1\}^{[N]}\), and it satisfies every event-level
one-row replacement inequality at privacy parameters

\[
\left(0.1,\frac{d_*}{M^2\log M}\right).
\tag{10}
\]

Both accepted propositions use the same finite ordered domain \([N]\),
thresholds \(\tau_t\), population-risk convention, source constants, and
integers \(N,M\). Thus no convention, object, sample-size, or privacy bridge
remains to prove.

The prior in accepted `step_004` was selected before the universal learner
quantifier. Although the code of \(B\) uses the public
\(\mu_{N,M}\), it is therefore one of the prior-aware kernels already
covered by that quantifier. Substituting this exact \(B\) into (5) yields
(9) directly. The substitution neither conditions on overflow nor changes
the simulator on any input, so it introduces no residual. \(\square\)

### unit_002: proposition

**Proposition (Prior-averaged product-risk transfer).**
\(\label{prop:step-013-product-lower-bound}\)
Under Proposition~\ref{prop:step-013-simulator-hardness}, accepted
Propositions~\ref{prop:step-008-selected-risk-identity},
\ref{prop:step-009-overflow}, and
\ref{prop:step-011-risk-transfer}, the ideal experiment (3) obeys the exact
product-risk lower bound (4).

**Proof / justification.**
Define only for this proof

\[
\mathcal L_{\mathrm{act}}
:=
\mathbb E_{\substack{(T,Q)\sim\mu_{N,M}\\
                      Z\sim(Q^{\tau_T})^M\\ B}}
R_Q(B(Z),\tau_T)
\tag{11}
\]

and

\[
\mathcal L_{\mathrm{id}}
:=
\mathbb E_{\mathrm{ideal}}
R_{Q_J}(D_JH^{\mathrm{id}},\tau_{T_J}).
\tag{12}
\]

These are proof-local names for the two exact quantities already typed by
the accepted dependencies. Proposition~\ref{prop:step-013-simulator-hardness}
gives

\[
\mathcal L_{\mathrm{act}}>2^{-8}.
\tag{13}
\]

Accepted Proposition~\ref{prop:step-011-risk-transfer} and the notation
\(p_{\mathrm{ov}}=\Pr(U>M)\) from (7) give

\[
\mathcal L_{\mathrm{id}}
\ge \mathcal L_{\mathrm{act}}-p_{\mathrm{ov}}.
\tag{14}
\]

Combining (13) with the weak inequality (14) preserves strictness:

\[
\mathcal L_{\mathrm{id}}
>2^{-8}-p_{\mathrm{ov}}.
\tag{15}
\]

Accepted Proposition~\ref{prop:step-009-overflow} gives the strict upper
bound \(p_{\mathrm{ov}}<2^{-9}\). Since subtraction reverses the comparison
in the subtracted term,

\[
2^{-8}-p_{\mathrm{ov}}
>2^{-8}-2^{-9}
=2\cdot2^{-9}-2^{-9}
=2^{-9}.
\tag{16}
\]

Equations (15)--(16) therefore yield

\[
\mathcal L_{\mathrm{id}}>2^{-9}.
\tag{17}
\]

The overflow event has been charged exactly once: it occurs only in (14),
and no later equality or bound adds another copy.

Finally, accepted Proposition~\ref{prop:step-008-selected-risk-identity}
identifies (12), with no residual, as

\[
\mathcal L_{\mathrm{id}}
=
\mathbb E_{\substack{\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}\\
                      S^{\mathrm{id}}\sim
                      (P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\\
                      H^{\mathrm{id}}\sim A(S^{\mathrm{id}})}}
R_{P_{\boldsymbol Q}}(H^{\mathrm{id}},c_{\boldsymbol T}).
\tag{18}
\]

Substituting (18) into (17) proves (4). The equality in (18) is taken under
the unconditional ideal experiment; the conditional i.i.d. sample law is
invoked only after fixing \(\boldsymbol\Xi\), and no conditioning on
\(U\le M\) appears. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies one
finite law before the later simulator is selected. Accepted
Proposition~\ref{prop:step-012-source-membership} certifies that the exact
simulator built using that public law is a total learner in the same
source-private kernel class. Proposition~\ref{prop:step-013-simulator-hardness}
therefore instantiates the universal prior guarantee without circularity and
proves the strict actual-risk inequality (9).

Accepted Proposition~\ref{prop:step-011-risk-transfer} maps that actual
risk to the exact accepted ideal selected risk through the pointwise
one-sided comparison
\(L_{\mathrm{id}}\ge L_{\mathrm{act}}-\mathbf1\{U>M\}\). Accepted
Proposition~\ref{prop:step-009-overflow} bounds the resulting and only
residual strictly below \(2^{-9}\). Proposition~\ref{prop:step-013-product-lower-bound}
then displays the complete strict ledger

\[
\mathbb E L_{\mathrm{id}}
\ge \mathbb E L_{\mathrm{act}}-\Pr(U>M)
>2^{-8}-\Pr(U>M)
>2^{-9}.
\tag{19}
\]

Accepted Proposition~\ref{prop:step-008-selected-risk-identity} identifies
the left side of (19) with the exact product population risk in (4) under
\(\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}\) and the conditionally i.i.d.
size-\(n\) product sample. All other interfaces are exact equalities or
membership implications. Thus the overflow probability is subtracted once,
strictness is preserved at both comparisons, and the result is precisely the
accepted `step_013` claim, not a conditional, selected-risk-only, or
surrogate-distribution statement.

## Explicit Rate Audit

- Exposed variables: Exact integers \(k,N,n\), the exact deterministic
  budget \(M=\max\{8,\lceil4n/k\rceil\}\), the accepted finite prior
  \(\mu_{N,M}\), the arbitrary randomized learner \(A\), the exact hard
  gap \(\eta=2^{-8}\), and the overflow probability
  \(p_{\mathrm{ov}}=\Pr(U>M)<2^{-9}\).
- Hidden constants may depend on: No new hidden constant is introduced. The
  inherited universal constants \(b_*,d_*,N_*\) and fixed theorem
  calibration retain their accepted provenance.
- Hidden constants may not depend on: \(k,N,n,M,\varepsilon,\delta\), the
  learner, the prior support point, the instance vector, the sample,
  simulator preprocessing, or learner randomness.
- Fixed quantities: \(k,N,n,M\), the accepted public prior, and the code of
  \(A\) and hence of \(B\) are fixed before the one-block hard-prior
  experiment or ideal product experiment is run. The prior may depend on
  \(N,M\) but is fixed before \(B\), exactly as accepted `step_004`
  permits.
- Probability mode: Equation (9) is an expectation over the finite hidden
  pair prior, exact size-\(M\) i.i.d. input conditional on the pair,
  simulator preprocessing, and any reached learner coins. Equation (4) is
  an expectation over the \(k\)-fold prior, exact conditional size-\(n\)
  product sample, and learner coins. The residual is a strict probability
  over the selector and exactly \(n\) tags. No high-probability, PAC, or
  conditional-event conclusion is asserted.
- Horizon mode: Exact fixed size \(M\) for the one-block learner input and
  exact fixed size \(n\) for the product learner input. There is no expected
  sample size, random horizon, stopping time, asymptotic limit, or repeated
  overflow charge.
- Norm mode: Exact population 0-1 risk, first on the hidden one-block
  instance and finally on the fixed-vector tagged-product instance. No
  empirical or excess risk appears.
- Admissibility conditions and auxiliary tolerances: Exactly those already
  discharged into accepted finite-prior availability and simulator
  source-cap membership. There is no new tolerance or generated-event
  assumption.
- Term absorption or simplification inequalities: The complete
  simplification is (13)--(16). In particular,
  \(2^{-8}-p_{\mathrm{ov}}>2^{-8}-2^{-9}=2^{-9}\). No term is dropped,
  dominated, or absorbed by prose.
- Probability conversion: The accepted coupling converts the pathwise
  indicator charge into exactly
  \(\mathbb E\mathbf1\{U>M\}=\Pr(U>M)\). This step performs no additional
  conversion.
- Contribution to any Rate Specialization Bridge: This is R1's exact
  average product-risk lower interface consumed by `step_014`. It preserves
  the complete fixed-size and population-risk modes and exports no hidden
  dependence.
- Baseline-reduction check:
  - For \(k=2,3\), accepted `step_009` gives
    \(p_{\mathrm{ov}}=0\); hence (19) strengthens to exact transfer
    \(\mathbb E L_{\mathrm{id}}\ge\mathbb E L_{\mathrm{act}}>2^{-8}\),
    rather than replacing the no-overflow baseline by a positive residual.
  - For \(n<k\), \(M=8\), \(U=0\), endpoint thresholds, point-mass block
    laws, singleton prior support, and arbitrary tag-asymmetric or
    nonmonotone randomized \(A\), all accepted dependency interfaces remain
    valid and (19) is unchanged.
  - The hidden selector need not be observed by \(A\) or the simulator's
    one-block input; the prior guarantee applies to the resulting certified
    kernel, and accepted exchangeability uses only its independent uniform
    analysis-side law.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`:
  - Proposition~\ref{prop:step-013-product-lower-bound} and the exact
    inequality (4) are the sole new downstream interface. They export exact
    prior-averaged product population risk above \(2^{-9}\).
  - The accepted objects \(M,\mu_{N,M},\boldsymbol\Xi,
    P_{\boldsymbol Q},c_{\boldsymbol T},S^{\mathrm{id}}\), and
    \(H^{\mathrm{id}}\) retain their existing meanings.
- `Appendix-local`:
  - The simulator abbreviation \(B=B_{\mu_{N,M},A}\) and the ideal
    selector \(J\), restriction \(D_J\), usage count \(U\), and actual
    one-block input \(Z\) expose the dependency interfaces in the local
    derivation. They do not enlarge the public theorem statement.
- `Proof-local`:
  - \(\mathcal L_{\mathrm{act}}\), \(\mathcal L_{\mathrm{id}}\), and
    \(p_{\mathrm{ov}}\) abbreviate the exact expectations and probability
    in (11), (12), and (7) only for the two-line numerical ledger. They are
    eliminated from the exported conclusion.
- Helper-object and constant provenance:
  - \(M\) is directly defined in `setting.md`.
  - \(\mu_{N,M}\) is an accepted derived object from `step_004`.
  - \(B\) and its exact source membership are accepted derived objects from
    `step_012`.
  - \(\eta=2^{-8}\) is the exact accepted hard-prior level.
  - \(p_{\mathrm{ov}}<2^{-9}\) is the exact accepted `step_009`
    certificate. The final \(2^{-9}\) margin is proved by (16), not chosen
    as a free tolerance.
- Assumption provenance:
  - Assumptions~\ref{assump:candidate-regime} and
    \ref{assump:central-dp} are primitive pre-run conditions consumed only
    through accepted source membership; no fresh privacy argument appears.
  - The finite prior, ideal law, selector independence, overflow event and
    bound, coupling inequality, and source membership are accepted derived
    outputs.
  - Propositions~\ref{prop:step-013-simulator-hardness} and
    \ref{prop:step-013-product-lower-bound} prove the only new generated
    conclusions. No local-validity, boundedness, stability, recurrence, or
    event-membership condition is assumed.
- Randomness and quantifier discipline:
  - The quantifier order remains
    \(\exists\mu_{N,M}\ \forall B\). The simulator may know the prior but
    cannot cause it to be reselected.
  - The actual risk average and ideal selected-risk average use the exact
    marginals identified by accepted `step_011`; the ideal selected/product
    identity uses the same ideal marginal from accepted `step_008`.
  - The prior-mixed ideal dataset is described conditionally on the realized
    vector. No unconditional-i.i.d. or overflow-conditioned-i.i.d. claim is
    made.
- Residual discipline:
  - The sole nonzero transfer defect is
    \(\mathbf1\{U>M\}\) from accepted `step_011`. Its expectation is
    charged once in (14), and every later interface is exact. There is no
    privacy, restriction, exchangeability, mixture, or extraction residual.
- Boundary discipline:
  - At \(U=0\), accepted actual and ideal datasets agree because no hidden
    input row is used.
  - For \(k=2,3\), overflow is impossible and the hard gap transfers with
    zero loss.
  - The finite hard prior includes endpoint thresholds, point masses, and
    boundary distributions; arbitrary improper, nonmonotone, tag-asymmetric,
    and prior-aware learner code remains covered.
- Diagnostic boundary:
  - The paired `global_proof.md` and `global_proof_review.md` were read only
    after verifying their supplied SHA-256 identities and the review status
    `ACCEPTED`. Their step-relevant planning idea was the three-line ledger
    \(\mathbb E L_{\mathrm{act}}>2^{-8}\),
    \(\mathbb E L_{\mathrm{id}}\ge
    \mathbb E L_{\mathrm{act}}-p_{\mathrm{ov}}\), and exact identification
    of \(\mathbb E L_{\mathrm{id}}\) with product risk. Every line is
    independently justified above by accepted dependencies or local
    propositions. Neither diagnostic artifact is proof evidence, a cited
    result, an assumption source, or authority to change the target claim,
    assumptions, dependencies, constants, or probability mode.
