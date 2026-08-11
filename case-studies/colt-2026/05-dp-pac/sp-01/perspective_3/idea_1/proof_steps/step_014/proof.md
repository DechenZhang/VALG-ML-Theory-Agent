# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 1
- Binding setting SHA-256: f442ae0c468201e0c204c72dd07cb9cc2a2d8bbaa6ba286120dfcb8d9749cb17
- Binding accepted sketch SHA-256: 56bc0531a69c9582e46687e71b9b8f29687d42fd0cdd0ddb0200092a79b2b8a1
- Binding accepted sketch-review SHA-256: ec5dc789da339ccddb1c005ac26d08a9f3a95844a8c4c38e4bcc84cc5ca8e02b
- Accepted global diagnostic SHA-256: 08f3f4cf7b314f3d177b097cf025d714d8fc1ba83c71afb8142b3679ce59ec75
- Accepted global-diagnostic review SHA-256: 2425ca6599893234e1f010b8253338eaf3a4723fb44ccfcbc8a0600250cacd40

### Direct Dependency Identity Table

| Step ID | Accepted proof SHA-256 | Accepted review SHA-256 | Producer status | Review status |
| ------- | --------------------- | ---------------------- | --------------- | ------------- |
| step_006 | c6c6858460d5d3a665f380d7d109a9c1e25a301a14025b19f071c795c93fef18 | 36e9415e19ec4380162d9c986d46b767b9b89772bf11f1291e617a158f82693e | COMPLETE | ACCEPTED |
| step_013 | fc00d20dcf2286735c7c32c9e9a1b9695ac36e33cd1f139ea17c8f31caee4ef5 | 947f60406449d4d95d40d4fd847760d8ee847db41c0f3c566ec208081cc8ddd4 | COMPLETE | ACCEPTED |

The two dependency proof/review pairs were hash-matched before use. Each
review reports no blocking issue and no retry target.

## Target Step Claim

- Intended claim: Extract one fixed vector \((t_i,Q_i)_{i=1}^k\) with
  expected product risk greater than \(2^{-9}\), and contradict its
  pointwise PAC upper bound at most \(2^{-12}\).
- Depends on: step_006 and step_013.
- Assumptions used: Assumption~\ref{assump:distribution-free-realizable-pac}
  through the accepted pointwise conclusion of step_006; and the accepted
  prior-averaged lower bound of step_013.
- Technical challenge: Remove all analysis-side instance randomness before
  the theorem-facing contradiction.
- Intended proof tool: Finite-average maximum principle.
- Output target: One fixed hard product instance and the strict
  contradiction for that identical instance.
- Rate objective: R1, preserving fixed sample size and population-risk mode.
- Row-local review status in the accepted sketch: PENDING.

Fix the exact candidate \(k,N,n,\varepsilon,\delta,A\), and put

\[
M=m_{n,k}=\max\left\{8,\left\lceil\frac{4n}{k}\right\rceil\right\}.
\tag{1}
\]

Let \(\mu_{N,M}\) be the finite public prior supplied by accepted
Proposition~\ref{prop:step-013-product-lower-bound}, on

\[
\mathcal I_N=[N+1]\times\Delta([N]),\qquad
\Delta([N])=\left\{Q:[N]\to[0,1]:\sum_{x=1}^N Q(x)=1\right\}.
\tag{2}
\]

For a deterministic vector
\(\boldsymbol z=((t_i,Q_i))_{i=1}^k\in\mathcal I_N^k\), define

\[
\Phi_A(\boldsymbol z):=
\mathbb E_{\substack{S\sim
 (P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\\ \rho_A}}
 R_{P_{\boldsymbol Q}}\bigl(A_{\rho_A}(S),c_{\boldsymbol t}\bigr),
\tag{3}
\]

where \(\rho_A\) denotes only the internal coins of the already-fixed
randomized learner \(A\). Thus (3) contains the exact size-\(n\) iid
sample and learner coins for one fixed product instance, and no prior draw.

The step will produce a deterministic
\[
\boldsymbol z^*=((t_i^*,Q_i^*))_{i=1}^k
\in\operatorname{supp}(\mu_{N,M}^{\otimes k})
\tag{4}
\]
for which the same fixed product law, target, sample size, learner, and
population risk satisfy
\[
\Phi_A(\boldsymbol z^*)>2^{-9}
\quad\text{and}\quad
\Phi_A(\boldsymbol z^*)\le 2^{-12}.
\tag{5}
\]
Since \(2^{-9}>2^{-12}\), (5) is the required strict contradiction.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - The setting definitions of \(X_{k,N}\), \(C_{k,N}\), the full
    improper space \(\mathcal H_{k,N}\), the exact budget (1), the product
    law \(P_{\boldsymbol Q}(i,x)=k^{-1}Q_i(x)\), the target
    \(c_{\boldsymbol t}(i,x)=\tau_{t_i}(x)\), exact iid realizable samples,
    and population 0-1 risk.
  - Assumption~\ref{assump:distribution-free-realizable-pac}, consumed
    only through accepted Proposition~\ref{prop:step-006-pointwise-pac-expectation}.
- Accepted dependency artifacts:
  - Hash-matched step_006 proof and review. Accepted
    Proposition~\ref{prop:step-006-pointwise-pac-expectation} says that
    every deterministic \(\boldsymbol z\in\mathcal I_N^k\), after it is
    fixed, obeys
    \[
    \Phi_A(\boldsymbol z)\le\alpha_0+\beta_0=2^{-12},
    \tag{6}
    \]
    with expectation only over its exact iid sample and the coins of \(A\).
  - Hash-matched step_013 proof and review. Accepted
    Proposition~\ref{prop:step-013-product-lower-bound} says that, for the
    same fixed \(k,N,M,n,A\) and finite prior,
    \[
    \mathbb E_{\substack{
      \boldsymbol\Xi=((T_i,Q_i))_{i=1}^k\sim\mu_{N,M}^{\otimes k}\\
      S^{\mathrm{id}}\sim(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\\
      H^{\mathrm{id}}\sim A(S^{\mathrm{id}})}}
      R_{P_{\boldsymbol Q}}(H^{\mathrm{id}},c_{\boldsymbol T})
      >2^{-9},
    \tag{7}
    \]
    where the sample law is conditional on the realized vector and the
    product prior has finite support.
- Derived invariants supplied by accepted dependencies:
  - The finite law \(\mu_{N,M}\), its product law, and strict lower bound
    (7), supplied by Proposition~\ref{prop:step-013-product-lower-bound}.
  - The universal fixed-vector ceiling (6), including product-instance
    realizability and \(\alpha_0=\beta_0=2^{-13}\), supplied by
    Proposition~\ref{prop:step-006-pointwise-pac-expectation}.
- Local conditional hypotheses: None.

The candidate-regime and central-DP assumptions are not reapplied here;
their required consequences are encapsulated by the accepted step_013
interface. No prior draw, hard vector, event, or simulator property is
treated as a primitive theorem-facing assumption.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | **Fixed support point from strict average** (\(\ref{prop:step-014-fixed-extraction}\)). Under accepted Proposition~\ref{prop:step-013-product-lower-bound}, at fixed \(k,N,M,n,A\) and its finite prior, some deterministic support vector has \(\Phi_A>2^{-9}\). | Removes all prior randomness and exports one fixed lower-risk instance. |
| unit_002 | proposition | **Same-instance PAC contradiction** (\(\ref{prop:step-014-fixed-contradiction}\)). Under Proposition~\ref{prop:step-014-fixed-extraction} and accepted Proposition~\ref{prop:step-006-pointwise-pac-expectation}, the identical fixed risk is \(>2^{-9}\) and \(\le2^{-12}\). | Applies PAC only after extraction and closes the target. |

Atomic step = no. Finite extraction and same-object PAC comparison are
separate nontrivial obligations.

## Cited Result Applications

### Accepted dependency: prior-averaged product-risk lower bound

- Source or name: Accepted Proposition~\ref{prop:step-013-product-lower-bound},
  certified by the hash-matched step_013 review.
- Restated statement: Equation (7) holds at the exact fixed \(k,N,M,n,A\);
  \(\mu_{N,M}^{\otimes k}\) is finite, and the conditional sample law is
  \((P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\) for each realized vector.
- Instantiated objects: The same prior, vectors, product laws, targets,
  sample size, randomized learner, and population risk used in (3).
- Assumptions discharged: The accepted result already discharges the
  hard-prior, source-membership, coupling, overflow, and exchangeability
  interfaces. This step consumes only its displayed output.
- Conclusion used: The finite weighted average of \(\Phi_A\) is strictly
  greater than \(2^{-9}\).

### Accepted dependency: pointwise PAC expectation ceiling

- Source or name: Accepted Proposition~\ref{prop:step-006-pointwise-pac-expectation},
  certified by the hash-matched step_006 review.
- Restated statement: Under Assumption~\ref{assump:distribution-free-realizable-pac},
  every deterministic \(\boldsymbol z\in\mathcal I_N^k\), including endpoint
  thresholds and simplex-boundary or point-mass block laws, satisfies (6).
  The vector quantifier precedes both sample/learner randomness and any
  later prior average.
- Instantiated objects: The extracted \(\boldsymbol z^*\), with exactly the
  same \(P_{\boldsymbol Q^*}\), \(c_{\boldsymbol t^*}\), \(n\), \(A\), and
  population risk as in the lower bound.
- Assumptions discharged: \(\boldsymbol z^*\in\mathcal I_N^k\) follows from
  (4), and the accepted dependency proves fixed-instance realizability and
  the success/failure expectation conversion.
- Conclusion used: The upper inequality in (5).

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use |
| ------ | ------------------- | -------------------- | --------- |
| Proposition~\ref{prop:step-014-fixed-extraction} | A finite support vector has \(\Phi_A>2^{-9}\). | Equation (7), finite support, and (12)--(14) below. | Supplies the fixed object for PAC. |
| Proposition~\ref{prop:step-014-fixed-contradiction} | The same \(\Phi_A\) is \(>2^{-9}\) and \(\le2^{-12}\). | Extraction plus the accepted pointwise PAC proposition. | Exact target export to step_015. |

No external theorem or diagnostic statement is used as proof authority here.

## Local Derivation

### unit_001: proposition

**Proposition (Fixed support point from a strict prior average).**
\(\label{prop:step-014-fixed-extraction}\)
Under accepted Proposition~\ref{prop:step-013-product-lower-bound}, fix its
same \(k,N,M,n,A\), finite prior \(\mu_{N,M}\), and ideal experiment. Then
there exists a deterministic vector
\[
\boldsymbol z^*\in\operatorname{supp}(\mu_{N,M}^{\otimes k})
\subseteq\mathcal I_N^k
\tag{8}
\]
such that
\[
\mathbb E_{\substack{S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\\
\rho_A}}
R_{P_{\boldsymbol Q^*}}\bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)
>2^{-9}.
\tag{9}
\]
Once \(\boldsymbol z^*\) is selected, the only randomness in (9) is the
fixed-instance sample and the learner coins.

**Proof / justification.**
Let
\[
\mathcal S=\operatorname{supp}(\mu_{N,M}^{\otimes k}).
\tag{10}
\]
The accepted step_013 conclusion supplies a finite probability law, so
\(\mathcal S\) is finite. For each \(\boldsymbol z\in\mathcal S\), put
\[
w_{\boldsymbol z}=\mu_{N,M}^{\otimes k}(\{\boldsymbol z\}).
\tag{11}
\]
Then \(w_{\boldsymbol z}>0\) and
\(\sum_{\boldsymbol z\in\mathcal S}w_{\boldsymbol z}=1\).

Conditional on \(\boldsymbol\Xi=\boldsymbol z\), the sample and output
experiment in accepted Proposition~\ref{prop:step-013-product-lower-bound}
is exactly the fixed-instance experiment defining \(\Phi_A(\boldsymbol z)\).
Finite expansion of the outer prior expectation therefore gives
\[
\begin{aligned}
&\mathbb E_{\substack{
  \boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}\\
  S^{\mathrm{id}}\sim(P_{\boldsymbol Q}^{c_{\boldsymbol T}})^n\\
  H^{\mathrm{id}}\sim A(S^{\mathrm{id}})}}
  R_{P_{\boldsymbol Q}}(H^{\mathrm{id}},c_{\boldsymbol T})\\
&\qquad=\sum_{\boldsymbol z\in\mathcal S}
  w_{\boldsymbol z}\Phi_A(\boldsymbol z).
\end{aligned}
\tag{12}
\]
This is finite conditional expectation. It does not assert that the
unconditional prior mixture is iid from one deterministic distribution.

The left side of (12) is strictly greater than \(2^{-9}\) by accepted
Proposition~\ref{prop:step-013-product-lower-bound}; hence
\[
\sum_{\boldsymbol z\in\mathcal S}w_{\boldsymbol z}\Phi_A(\boldsymbol z)
>2^{-9}.
\tag{13}
\]
If every \(\boldsymbol z\in\mathcal S\) had
\(\Phi_A(\boldsymbol z)\le2^{-9}\), then
\[
\sum_{\boldsymbol z\in\mathcal S}w_{\boldsymbol z}\Phi_A(\boldsymbol z)
\le\sum_{\boldsymbol z\in\mathcal S}w_{\boldsymbol z}2^{-9}
=2^{-9},
\tag{14}
\]
contradicting (13). Thus some \(\boldsymbol z^*\in\mathcal S\) has
\(\Phi_A(\boldsymbol z^*)>2^{-9}\), which is (9). \(\square\)

### unit_002: proposition

**Proposition (Same-instance PAC contradiction).**
\(\label{prop:step-014-fixed-contradiction}\)
Under Proposition~\ref{prop:step-014-fixed-extraction} and accepted
Proposition~\ref{prop:step-006-pointwise-pac-expectation}, fix the
deterministic vector \(\boldsymbol z^*\) extracted in (8). Then
\[
2^{-9}<\Phi_A(\boldsymbol z^*)\le2^{-12},
\tag{15}
\]
which is impossible.

**Proof / justification.**
The extraction proposition gives
\[
\Phi_A(\boldsymbol z^*)>2^{-9}.
\tag{16}
\]
This lower bound concerns the fixed \(P_{\boldsymbol Q^*}\), fixed target
\(c_{\boldsymbol t^*}\), exact sample size \(n\), fixed randomized learner
\(A\), its internal coin law, and the setting-defined population 0-1 risk.
No component is changed by selecting \(\boldsymbol z^*\).

Because \(\boldsymbol z^*\in\mathcal I_N^k\), accepted
Proposition~\ref{prop:step-006-pointwise-pac-expectation}, which is the
pointwise consequence of Assumption~\ref{assump:distribution-free-realizable-pac},
applies to this same vector:
\[
\begin{aligned}
\Phi_A(\boldsymbol z^*)
&=\mathbb E_{\substack{
  S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\\ \rho_A}}
  R_{P_{\boldsymbol Q^*}}\bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)\\
&\le\alpha_0+\beta_0
=2^{-13}+2^{-13}=2^{-12}.
\end{aligned}
\tag{17}
\]
Equations (16) and (17) concern literally the same deterministic number;
neither includes a prior average. Finally,
\[
2^{-9}=8\cdot2^{-12}>2^{-12},
\tag{18}
\]
so (16)--(17) contradict one another. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-013-product-lower-bound} supplies the
strict lower bound for the finite \(\mu_{N,M}^{\otimes k}\)-average at fixed
\(k,N,M,n,A\). Proposition~\ref{prop:step-014-fixed-extraction} (audit
handle unit_001) expands that average into finite conditional
fixed-instance expectations and extracts one deterministic
\(\boldsymbol z^*\) with
\[
\mathbb E_{S,\rho_A}
R_{P_{\boldsymbol Q^*}}\bigl(A_{\rho_A}(S),c_{\boldsymbol t^*}\bigr)
>2^{-9},
\tag{19}
\]
where \(S\sim(P_{\boldsymbol Q^*}^{c_{\boldsymbol t^*}})^n\).

Accepted Proposition~\ref{prop:step-006-pointwise-pac-expectation} applies
to every fixed vector in \(\mathcal I_N^k\), hence to this exact
\(\boldsymbol z^*\), and bounds the identical expectation in (19) by
\(2^{-12}\). Proposition~\ref{prop:step-014-fixed-contradiction} (audit
handle unit_002) matches \(P_{\boldsymbol Q^*}\), \(c_{\boldsymbol t^*}\),
\(n\), \(A\), learner coins, and population risk on both sides. Therefore
\[
2^{-9}<\Phi_A(\boldsymbol z^*)\le2^{-12}<2^{-9},
\tag{20}
\]
an explicit contradiction. All analysis-side prior randomness has been
removed before the PAC premise is used, proving the exact step_014 claim.

## Explicit Rate Audit

- Exposed variables: Exact \(k,N,n,\varepsilon,\delta\), exact
  \(M=\max\{8,\lceil4n/k\rceil\}\), fixed randomized learner \(A\), finite
  prior \(\mu_{N,M}\), extracted vector \(\boldsymbol z^*\), and constants
  \(2^{-9}\) and \(2^{-12}\).
- Hidden constants may depend on: No new hidden constant. Inherited source
  constants retain their accepted provenance.
- Hidden constants may not depend on: \(k,N,n,M,\varepsilon,\delta\), \(A\),
  the support point, sample, prior draw, or learner coins.
- Fixed quantities: \(k,N,n,M,A\), and the prior are fixed before the
  step_013 average. The support point is fixed before the sample and learner
  coins in (9) and (17).
- Probability mode: Equation (12) is an exact finite prior expansion of
  conditional fixed-instance expectations. After (14), the final
  expectations are only over the exact iid sample and internal coins of
  \(A\). No mixture-PAC premise, high-probability upgrade, or additional
  probability conversion is introduced.
- Horizon mode: Exact fixed sizes \(M\) and \(n\); neither is an expected
  sample size, stopping time, or asymptotic horizon.
- Norm mode: Population 0-1 risk under the same fixed
  \(P_{\boldsymbol Q^*}\) and \(c_{\boldsymbol t^*}\), with arbitrary
  improper randomized output.
- Admissibility conditions and auxiliary tolerances: Only the accepted
  dependency conditions. Extraction adds no support, interiority,
  uniqueness, properness, or tolerance requirement.
- Term absorption or simplification inequalities:
  \(2^{-9}=8\cdot2^{-12}>2^{-12}=\alpha_0+\beta_0\), displayed in (18).
  No residual is dropped.
- Probability conversion: Only finite expansion and the maximum principle;
  the pointwise PAC high-probability-to-expectation conversion was already
  proved in accepted step_006.
- Contribution to Rate Specialization Bridge: This is the R1 fixed-instance
  contradiction interface consumed by step_015; no tower specialization is
  performed.
- Baseline-reduction check:
  - Endpoint thresholds and point-mass or other boundary \(Q_i^*\) remain
    legal because the accepted pointwise result quantifies over all
    \(\mathcal I_N^k\).
  - For \(k=2,3\), accepted step_013 has zero overflow and a stronger
    \(>2^{-8}\) transfer; the stated \(>2^{-9}\) interface is unchanged.
  - If \(n<k\), then \(\lceil4n/k\rceil\le4\), so the exact setting budget
    is \(M=8\). The accepted dependencies cover this floor branch.
  - The same argument covers \(M=8\) generally, singleton prior support,
    arbitrary improper outputs, and randomized \(A\).

## Blockers

None.

## Notation And Assumption Notes

- Public-facing:
  - Proposition~\ref{prop:step-014-fixed-contradiction} and the existence
    of \(\boldsymbol z^*\) are the sole downstream interface.
  - \(P_{\boldsymbol Q^*}\), \(c_{\boldsymbol t^*}\), \(n\), \(A\), and
    population risk retain their setting meanings.
- Appendix-local:
  - \(\mathcal I_N\) is restated in (2).
  - Proposition~\ref{prop:step-014-fixed-extraction} packages the finite
    averaging argument.
- Proof-local:
  - \(\Phi_A(\boldsymbol z)\), \(\mathcal S\), and
    \(w_{\boldsymbol z}\) are defined in (3), (10), and (11), and are not
    new theorem-facing objects.
  - \(\rho_A\) names only the internal randomness already present in \(A\).
- Constant and helper provenance:
  - \(M\) is defined in the setting.
  - \(\mu_{N,M}\), its finite support, and the strict average are accepted
    outputs of step_013.
  - The ceiling \(2^{-12}=\alpha_0+\beta_0\) is an accepted step_006
    output; the extracted vector is proved by unit_001.
- Assumption provenance:
  - Assumption~\ref{assump:distribution-free-realizable-pac} is primitive
    and is consumed only through accepted step_006.
  - Candidate-regime, central-DP, hard-prior, coupling, overflow, and
    exchangeability facts are upstream derived outputs encapsulated in
    accepted step_013.
  - Support finiteness, positive weights, and weight normalization follow
    from the accepted finite probability law and (10)--(11), not from an
    extra assumption.
- Quantifier discipline:
  \[
  k,N,n,M,A\ \text{fixed},\quad\mu_{N,M}\ \text{fixed upstream}
  \Longrightarrow
  \mathbb E_{\boldsymbol\Xi\sim\mu_{N,M}^{\otimes k}}
  \Phi_A(\boldsymbol\Xi)>2^{-9}
  \Longrightarrow
  \exists\boldsymbol z^*\in\operatorname{supp}(\mu_{N,M}^{\otimes k})
  \ \Phi_A(\boldsymbol z^*)>2^{-9}
  \Longrightarrow
  \Phi_A(\boldsymbol z^*)\le2^{-12}.
  \]
  The extracted vector may depend on fixed \(A\), while the public prior was
  fixed upstream before the simulator/kernel quantifier.
- Randomness and boundary discipline: Before extraction, (12) includes
  prior, conditional sample, and learner coins. After extraction, (9) and
  (17) include only the fixed-instance sample and learner coins. Endpoint
  thresholds, point masses, \(k=2,3\), \(n<k\), and \(M=8\) remain in scope
  with no changed constant.
- Diagnostic boundary: The paired global_proof.md and
  global_proof_review.md were read only after hash verification and review
  status ACCEPTED. Their planning idea was finite extraction followed by an
  identical-object numerical comparison. Equations (12)--(18) prove that
  idea independently from accepted dependencies. The diagnostics are not
  proof evidence, a cited result, an assumption source, or authority to
  change this target.
