# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_006`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every fixed one-block vector
  \((t_i,Q_i)_{i=1}^k\), prove realizability of
  \((P_{\boldsymbol Q},c_{\boldsymbol t})\) and
  \[
  \mathbb E_{\substack{S\sim
    (P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\\ A}}
  R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr)
  \le \alpha_0+\beta_0=2^{-12}.
  \]
- Depends on: `step_004`, `step_005`.
- Assumptions used: `assump:distribution-free-realizable-pac`.
- Technical challenge: Keep the PAC application pointwise before averaging
  over the prior.
- Intended proof tool or cited result: Success/failure expectation split.
- Output target: Fixed-instance PAC upper interface.
- Rate objective: R1, fixed-size high-probability-to-expectation conversion
  in population risk.
- Row-local review status in the accepted sketch: `PENDING` (the acceptance
  gate is the separate accepted sketch review).

Equivalently, with

\[
\Delta([N]):=
\left\{Q:[N]\to[0,1]:\sum_{x=1}^NQ(x)=1\right\},
\qquad
\mathcal I_N:=[N+1]\times\Delta([N]),
\]

the claim is the pointwise statement

\[
\forall\bigl((t_i,Q_i)\bigr)_{i=1}^k\in\mathcal I_N^k,
\qquad
\mathbb E_{\substack{S\sim
  (P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\\ A}}
R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr)
\le 2^{-12}.
\tag{T}
\]

The vector in (T) is fixed before the sample and learner randomness are
drawn. No prior draw is included in the expectation in (T).

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\ref{assump:distribution-free-realizable-pac}: for every
    fixed \(\boldsymbol t\in[N+1]^k\) and every fixed probability
    distribution \(P\) on \(X_{k,N}\),
    \[
    \Pr_{\substack{S\sim(P^{c_{\boldsymbol t}})^n\\A}}
    \left[
      R_P\bigl(A(S),c_{\boldsymbol t}\bigr)\le\alpha_0
    \right]
    \ge 1-\beta_0.
    \]
  - The basic-setting definitions of \(X_{k,N}\), \(C_{k,N}\),
    \(\mathcal H_{k,N}\), \(P_{\boldsymbol Q}\),
    \(c_{\boldsymbol t}\), realizable labeled laws, and population 0-1
    risk. In particular, \(A\) may be randomized, computationally
    unrestricted, and improper.
- Accepted dependency step proof/review artifacts:
  - `proof_steps/step_004/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `49e65cdfc0067df7c7dd63e3c76ef15197d29c2307cc42898c3a44d23c8911ba`.
  - `proof_steps/step_004/review.md`, SHA-256
    `4a3440d51d3e9b490e043c3299e127d0c4de0f9c738f87dae210996b60e1f999`,
    whose `Step-Review Status` is `ACCEPTED` and whose reviewed-proof hash
    is the preceding proof hash.
  - The exact available `step_004` output is
    Proposition~\ref{prop:step-004-finite-hard-prior}: whenever its
    displayed \(N,M\) hard-regime conditions hold, it produces a fixed
    finite law \(\mu_{N,M}\) on \(\mathcal I_N\), supported on at most
    \((2N)^M2^N+1\) pairs, such that every source-private unrestricted
    one-block learner has \(\mu_{N,M}\)-averaged expected loss greater
    than \(2^{-8}\). This step uses only the fact that any vector later
    drawn from \(\mu_{N,M}^{\otimes k}\) consists of legal pairs in
    \(\mathcal I_N\), and that the law is finite and fixed before that
    averaging. Its hardness inequality does not prove (T).
  - `proof_steps/step_005/proof.md`, sketch attempt 1 and unit attempt 1,
    SHA-256
    `4bdeddb090ff889aa710ca8126b91bb792f56635a6f60223f698edbfeb4f335a`.
  - `proof_steps/step_005/review.md`, SHA-256
    `f12de095c3827725cd4d7c8e7ab89fa2b450c0e7a878bd56d766ea5e6aab750b`,
    whose `Step-Review Status` is `ACCEPTED` and whose reviewed-proof hash
    is the preceding proof hash.
  - The exact available `step_005` outputs are
    Lemma~\ref{lem:step-005-calibration}, which fixes once and for all
    \(a=b_*/16\), \(\varepsilon_0=0.1\), \(c_\delta=d_*\),
    \(\alpha_0=\beta_0=2^{-13}\), and a universal \(N_0\), and
    Proposition~\ref{prop:step-005-certificate}, which, under
    Assumption~\ref{assump:candidate-regime} and the local contradiction
    hypothesis, supplies the exact hard-regime and privacy-parameter
    certificate. This step uses only the fixed accuracy/confidence
    calibration \(\alpha_0=\beta_0=2^{-13}\). The hard-regime certificate
    does not prove (T).
- Derived controls supplied by accepted dependencies:
  - The finite prior \(\mu_{N,M}\), when the `step_004` admissibility
    conditions are in force.
  - The fixed public constants \(\alpha_0=\beta_0=2^{-13}\) from
    accepted `step_005`.
- Derived invariants supplied by accepted dependencies: None.
- Local conditional hypotheses: None.

The pointwise PAC implication (T) uses neither
Assumption~\ref{assump:candidate-regime} nor
Assumption~\ref{assump:central-dp}. When the accepted prior is mentioned,
\(M:=m_{n,k}=\max\{8,\lceil4n/k\rceil\}\) is the exact setting-derived
simulated budget; \(M\) is not used in the proof of (T). No generated hard
instance, prior average, event membership, stability condition, recurrence,
or boundedness premise is treated as primitive.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic setting definitions, every fixed vector \(((t_i,Q_i))_{i=1}^k\in\mathcal I_N^k\) makes \(P_{\boldsymbol Q}\) a probability distribution on \(X_{k,N}\), makes \(c_{\boldsymbol t}\) a member of \(C_{k,N}\), and hence defines a fixed realizable labeled law; endpoint \(t_i\)'s and degenerate \(Q_i\)'s remain included. | Discharges the fixed-distribution and realizability hypotheses of the primitive PAC premise. |
| `unit_002` | proposition | Under Assumption~\ref{assump:distribution-free-realizable-pac}, accepted Lemma~\ref{lem:step-005-calibration}, and Lemma~\ref{lem:step-006-fixed-product-realizable}, every such fixed vector obeys \(\mathbb E R\le\alpha_0(1-\beta_0)+\beta_0\le\alpha_0+\beta_0=2^{-12}\), with expectation only over the fixed-instance iid sample and arbitrary learner randomness. | Proves the exact pointwise PAC upper interface and keeps the quantifier before any analysis-side averaging. |

Atomic step = no. Establishing that the product formula is a legal fixed
realizable instance and converting a fixed-instance high-probability PAC
bound to expected loss are separate obligations.

## Cited Result Applications

### Primitive setting result: distribution-free realizable PAC premise

- Source or name: Assumption~\ref{assump:distribution-free-realizable-pac}.
- Restated statement in current notation: For every fixed
  \(\boldsymbol t\in[N+1]^k\) and every fixed distribution \(P\) on
  \(X_{k,N}\), the size-\(n\) iid realizable sample and all internal
  randomness of \(A\) satisfy
  \[
  \Pr\!left[
    R_P\bigl(A(S),c_{\boldsymbol t}\bigr)\le\alpha_0
  \right]\ge1-\beta_0.
  \]
- Instantiated objects: The deterministic
  \(P=P_{\boldsymbol Q}\) and
  \(c_{\boldsymbol t}\) produced by
  Lemma~\ref{lem:step-006-fixed-product-realizable}, at the same exact
  sample size \(n\).
- Required assumptions and discharge: \(P_{\boldsymbol Q}\) must be a
  probability distribution and the labels must be realizable by
  \(c_{\boldsymbol t}\in C_{k,N}\); both facts are proved in
  Lemma~\ref{lem:step-006-fixed-product-realizable}. No properness,
  monotonicity of the output, or computational condition is required.
- Conclusion used: The fixed-instance success event has probability at
  least \(1-\beta_0\).

### Accepted dependency: finite public hard prior

- Source or name: Accepted
  Proposition~\ref{prop:step-004-finite-hard-prior}, certified by the
  matching `step_004` review and hashes listed above.
- Restated statement in current notation: Under its exact hard-regime
  conditions, one finitely supported law \(\mu_{N,M}\) on
  \(\mathcal I_N\) is fixed before every one-block learner, has support
  size at most \((2N)^M2^N+1\), and satisfies its universal
  prior-averaged one-block hardness inequality.
- Instantiated objects: If downstream analysis draws
  \(((t_i,Q_i))_{i=1}^k\sim\mu_{N,M}^{\otimes k}\), every realized vector
  lies in \(\mathcal I_N^k\), the domain of the pointwise statement (T).
- Required assumptions and discharge: The existence of this prior is used
  only when the accepted dependency's own hard-regime hypotheses are
  available. The proof of (T) itself is universal over
  \(\mathcal I_N^k\) and does not require those hard-regime hypotheses.
- Conclusion used: The dependency identifies a later finite
  analysis-side average to which (T) may be applied only after (T) is
  established for each fixed support vector. Its hardness lower bound is
  not used to derive the PAC upper bound.

### Accepted dependency: universal accuracy/confidence calibration

- Source or name: Accepted
  Lemma~\ref{lem:step-005-calibration}, certified by the matching
  `step_005` review and hashes listed above.
- Restated statement in current notation: The theorem constants are fixed
  independently of every candidate, with
  \(\alpha_0=\beta_0=2^{-13}\) (along with the other calibrated constants
  listed in the dependency).
- Instantiated objects: The \(\alpha_0,\beta_0\) in
  Assumption~\ref{assump:distribution-free-realizable-pac}.
- Required assumptions and discharge: The calibration lemma derives these
  fixed values from accepted universal source constants and requires no
  product-instance or learner-generated condition. This step does not use
  the separate local contradiction hypothesis from the dependency's final
  hard-regime certificate.
- Conclusion used: The numerical identity
  \(\alpha_0+\beta_0=2\cdot2^{-13}=2^{-12}\).

No external paper result or unreviewed standard theorem is used in this
step.

### Local-result applications

| Result | Restated conclusion | Assumption discharge | Later use in this step |
| ------ | -------------------- | -------------------- | ---------------------- |
| Lemma~\ref{lem:step-006-fixed-product-realizable} | Every deterministic vector in \(\mathcal I_N^k\) yields the exact fixed realizable product distribution and concept from `setting.md`, including endpoint and degenerate cases. | Basic setting definitions and direct finite summation. | Instantiates the universal fixed-\(P\), fixed-concept PAC premise. |
| Proposition~\ref{prop:step-006-pointwise-pac-expectation} | For each fixed vector separately, expected population risk over only the iid sample and learner coins is at most \(2^{-12}\). | The preceding realizability lemma, the primitive PAC premise, bounded 0-1 risk, and accepted constant calibration. | Exact target-step export and the only PAC upper bound used in target assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Every fixed product vector is a realizable instance).**
\(\label{lem:step-006-fixed-product-realizable}\)
Under the basic setting definitions, fix integers \(k\ge2\), \(N\ge2\)
and a deterministic vector

\[
\bigl((t_i,Q_i)\bigr)_{i=1}^k
\in\bigl([N+1]\times\Delta([N])\bigr)^k.
\]

Then

\[
P_{\boldsymbol Q}(i,x):=\frac1kQ_i(x)
\qquad((i,x)\in X_{k,N})
\]

is a probability distribution on \(X_{k,N}\),
\(\boldsymbol t=(t_1,\ldots,t_k)\in[N+1]^k\) defines
\(c_{\boldsymbol t}\in C_{k,N}\), and
\(P_{\boldsymbol Q}^{c_{\boldsymbol t}}\) is the fixed realizable
labeled law generated by \(P_{\boldsymbol Q}\) and that concept. These
conclusions also hold when any \(t_i\in\{1,N+1\}\), when any \(Q_i\) is
a point mass, or, more generally, when any \(Q_i\) lies on a boundary face
of \(\Delta([N])\).

**Proof / justification.**
For every \((i,x)\), nonnegativity of \(Q_i(x)\) gives
\(P_{\boldsymbol Q}(i,x)\ge0\). Since each \(Q_i\) is a probability
distribution on \([N]\),

\[
\sum_{(i,x)\in X_{k,N}}P_{\boldsymbol Q}(i,x)
=\frac1k\sum_{i=1}^k\sum_{x=1}^NQ_i(x)
=\frac1k\sum_{i=1}^k1
=1.
\tag{1}
\]

Thus \(P_{\boldsymbol Q}\) is a fixed probability distribution on the
exact domain \(X_{k,N}\). Each fixed \(t_i\) belongs to \([N+1]\), so
the displayed class definition gives

\[
c_{\boldsymbol t}(i,x)=\tau_{t_i}(x)
=\mathbf 1\{x\ge t_i\}
\in C_{k,N}.
\tag{2}
\]

Drawing \(Z\sim P_{\boldsymbol Q}\) and assigning the deterministic label
\(c_{\boldsymbol t}(Z)\) is, by definition, the labeled law
\(P_{\boldsymbol Q}^{c_{\boldsymbol t}}\). Hence it is realizable by a
member of \(C_{k,N}\).

No interior-support property was used in (1) or (2). If \(Q_i\) is a point
mass or has zero coordinates, its coordinates remain nonnegative and sum to
one. If \(t_i=1\), then \(\tau_{t_i}\equiv1\) on \([N]\); if
\(t_i=N+1\), then \(\tau_{t_i}\equiv0\). Both endpoint concepts belong
to the displayed class. Nonuniqueness of two thresholds on the support of a
degenerate \(Q_i\) is irrelevant: the fixed parameter
\(\boldsymbol t\) still specifies one legal concept and therefore one
fixed realizable labeled law. \(\square\)

### unit_002: proposition

**Proposition (Pointwise PAC-to-expectation conversion).**
\(\label{prop:step-006-pointwise-pac-expectation}\)
Under Assumption~\ref{assump:distribution-free-realizable-pac}, accepted
Lemma~\ref{lem:step-005-calibration}, and
Lemma~\ref{lem:step-006-fixed-product-realizable}, let
\(((t_i,Q_i))_{i=1}^k\in\mathcal I_N^k\) be any fixed deterministic
vector. For the exact fixed instance
\((P_{\boldsymbol Q},c_{\boldsymbol t})\), exact iid sample size \(n\),
and arbitrary randomized output \(A(S)\in\mathcal H_{k,N}\),

\[
\begin{aligned}
&\mathbb E_{\substack{S\sim
  (P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\\ A}}
  R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr)\\
&\qquad\le
  \alpha_0(1-\beta_0)+\beta_0
  \le\alpha_0+\beta_0
  =2^{-12}.
\end{aligned}
\tag{3}
\]

The quantifier over the fixed vector precedes both the sample/learner
expectation in (3) and any later analysis-side prior average.

**Proof / justification.**
Fix the vector. By
Lemma~\ref{lem:step-006-fixed-product-realizable},
\(P_{\boldsymbol Q}\) is a fixed distribution and
\(c_{\boldsymbol t}\in C_{k,N}\) realizes its labels. Therefore the
universal distribution-free PAC premise applies directly to this same
fixed pair. Define the proof-local random variable

\[
\mathcal R
:=R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr),
\]

where the only randomness is
\(S\sim(P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\) and the internal
randomness of \(A\). Population 0-1 risk is a probability of disagreement,
so for every possible sample and every possible output hypothesis,

\[
0\le\mathcal R\le1.
\tag{4}
\]

This bound uses no properness or monotonicity: it holds for every
\(A(S)\in\{0,1\}^{X_{k,N}}\).

Let

\[
G:=\{\mathcal R\le\alpha_0\},
\qquad p:=\Pr(G^{\mathsf c}).
\]

Assumption~\ref{assump:distribution-free-realizable-pac} gives
\(p\le\beta_0\), and \(1-\alpha_0>0\) because
\(\alpha_0\in(0,1/2)\). Splitting the expectation over the success and
failure events and using (4),

\[
\begin{aligned}
\mathbb E\mathcal R
&=\mathbb E[\mathcal R\mathbf 1_G]
  +\mathbb E[\mathcal R\mathbf 1_{G^{\mathsf c}}]\\
&\le \alpha_0\Pr(G)+\Pr(G^{\mathsf c})\\
&=\alpha_0(1-p)+p\\
&=\alpha_0+(1-\alpha_0)p\\
&\le\alpha_0+(1-\alpha_0)\beta_0\\
&=\alpha_0(1-\beta_0)+\beta_0\\
&\le\alpha_0+\beta_0.
\end{aligned}
\tag{5}
\]

Accepted Lemma~\ref{lem:step-005-calibration} fixes
\(\alpha_0=\beta_0=2^{-13}\), so

\[
\alpha_0+\beta_0=2^{-13}+2^{-13}=2^{-12}.
\tag{6}
\]

Equations (5)--(6) prove (3). Because the vector was fixed before invoking
the PAC premise, the proof remains valid for every deterministic vector,
including all endpoint-threshold and degenerate-distribution cases covered
by Lemma~\ref{lem:step-006-fixed-product-realizable}. \(\square\)

## Target-Step Assembly

Accepted Proposition~\ref{prop:step-004-finite-hard-prior} supplies the
finite analysis-side prior used later in the roadmap, but it does not supply
a PAC conclusion. Accepted Lemma~\ref{lem:step-005-calibration} supplies
only the numerical calibration \(\alpha_0=\beta_0=2^{-13}\) used here;
the hard-regime and privacy portions of accepted
Proposition~\ref{prop:step-005-certificate} likewise do not imply a PAC
bound.

Lemma~\ref{lem:step-006-fixed-product-realizable} proves directly that
each fixed vector in \(\mathcal I_N^k\) gives the exact fixed distribution
and concept required by the universal PAC premise. It also discharges
endpoint thresholds and arbitrary simplex-boundary distributions without a
support, uniqueness, or interiority assumption. Applying the primitive PAC
premise only after fixing this vector,
Proposition~\ref{prop:step-006-pointwise-pac-expectation} uses bounded 0-1
risk and the success/failure split to prove

\[
\forall\bigl((t_i,Q_i)\bigr)_{i=1}^k\in\mathcal I_N^k,
\quad
\mathbb E_{S,A}
R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr)
\le2^{-12},
\tag{7}
\]

where \(S\) has the fixed vector's exact iid realizable law. Equation (7)
is precisely the target-step claim.

Only after (7) has been established pointwise may one use the finite law
from accepted Proposition~\ref{prop:step-004-finite-hard-prior}. Whenever
that prior exists, taking the finite average of the already-proved inner
inequality gives

\[
\mathbb E_{((t_i,Q_i))_{i=1}^k\sim\mu_{N,M}^{\otimes k}}
\left[
  \mathbb E_{\substack{S\sim
    (P_{\boldsymbol Q}^{c_{\boldsymbol t}})^n\\A}}
  R_{P_{\boldsymbol Q}}\bigl(A(S),c_{\boldsymbol t}\bigr)
\right]
\le2^{-12}.
\tag{8}
\]

Equation (8) is a consequence of the fixed-vector statement, not an
application of PAC to a mixture and not a replacement for (7). Thus an
analysis-side random vector is never treated as a primitive fixed instance,
and arbitrary randomized, improper outputs remain covered throughout.

## Explicit Rate Audit

- Exposed variables: \(k,N,n\), the fixed vector
  \(((t_i,Q_i))_{i=1}^k\), and the fixed accuracy/confidence parameters
  \(\alpha_0,\beta_0\). The resulting numerical upper bound is
  \(2^{-12}\). The bound is uniform in \(\varepsilon,\delta\) and does
  not use the simulated budget \(M\); \(M\) appears only if the accepted
  prior is instantiated after the pointwise proof.
- Hidden constants may depend on: None. The only constants are displayed,
  and \(\alpha_0,\beta_0\) have accepted `step_005` provenance.
- Hidden constants may not depend on: \(k,N,n,\varepsilon,\delta\), the
  fixed vector, the learner, the sample, or any prior or simulator
  randomness.
- Fixed quantities: \(k,N,n,A\) and one deterministic vector are fixed
  before applying the PAC premise. The distribution
  \(P_{\boldsymbol Q}\) and concept \(c_{\boldsymbol t}\) are therefore
  fixed before drawing \(S\) and the learner's coins.
- Probability mode: The premise is high probability over the exact iid
  sample and learner randomness for one fixed instance. Equation (5)
  converts it to an unconditional expectation over those same sources only.
  No prior randomness is present until the optional finite average (8),
  which is taken after the pointwise conversion.
- Horizon mode: Exact fixed sample size \(n\), pointwise in the candidate
  \(n\). There is no expected sample size, stopping time, asymptotic limit,
  or horizon-uniform assertion.
- Norm mode: Exact population 0-1 risk
  \(R_{P_{\boldsymbol Q}}(A(S),c_{\boldsymbol t})\), not empirical risk or
  excess risk.
- Admissibility conditions and auxiliary tolerances: Each
  \(t_i\in[N+1]\), each \(Q_i\in\Delta([N])\), and
  Assumption~\ref{assump:distribution-free-realizable-pac}. There is no
  support lower bound, interiority condition, properness restriction, or
  auxiliary tolerance.
- Term absorption or simplification inequalities: The full conversion is
  displayed in (5), and the only simplification is
  \[
  \alpha_0(1-\beta_0)+\beta_0
  \le\alpha_0+\beta_0
  =2^{-12}.
  \]
- Probability conversion: Success/failure expectation splitting with
  \(0\le\mathcal R\le1\) and
  \(\Pr(\mathcal R>\alpha_0)\le\beta_0\). No union bound, conditioning
  change, or Bayesian-to-fixed conversion is used.
- Contribution to any Rate Specialization Bridge: This is the R1
  fixed-instance upper interface consumed by `step_014`. It performs no
  tower-diagonal or public asymptotic specialization.
- Baseline-reduction check: The original fixed-instance high-probability PAC
  premise is preserved verbatim and only yields a proved expectation
  consequence. The unrestricted randomized improper output space, exact
  size \(n\), endpoint threshold concepts, point-mass and other degenerate
  \(Q_i\)'s, and population-risk metric are unchanged. No proper projection,
  prior-averaged PAC premise, conditional surrogate, or weaker metric is
  introduced.

## Blockers

None.

## Notation And Assumption Notes

- `Public-facing`: No new public helper is introduced. The setting-defined
  \(P_{\boldsymbol Q}\), \(c_{\boldsymbol t}\), and population risk form
  the exported interface; \(\alpha_0=\beta_0=2^{-13}\) are inherited
  public constants from accepted `step_005`.
- `Appendix-local`: \(\mathcal I_N=[N+1]\times\Delta([N])\) is the same
  instance space used by accepted `step_004`, restated only to shorten the
  fixed-vector quantifier. Lemma~\ref{lem:step-006-fixed-product-realizable}
  and Proposition~\ref{prop:step-006-pointwise-pac-expectation} are the
  compact appendix interface for this step.
- `Proof-local`: \(\mathcal R\), the success event \(G\), and its failure
  probability \(p\) are defined inside the proof of
  Proposition~\ref{prop:step-006-pointwise-pac-expectation} and are not
  exported.
- Accepted dependency objects: \(\mu_{N,M}\) is inherited from accepted
  Proposition~\ref{prop:step-004-finite-hard-prior}; the constants
  \(\alpha_0,\beta_0\) are inherited from accepted
  Lemma~\ref{lem:step-005-calibration}. Neither object is introduced as a
  free assumption.
- Constant provenance: \(\alpha_0=\beta_0=2^{-13}\) comes exactly from
  accepted `step_005`; \(2^{-12}\) is proved by the displayed arithmetic
  in (6). The bound \(1\) in (4) follows directly from the definition of
  population 0-1 risk as a probability. No hidden or freely chosen constant
  appears.
- Primitive-assumption provenance:
  Assumption~\ref{assump:distribution-free-realizable-pac} is the sole
  technical setting assumption used. It is invoked only after a fixed
  legal distribution and realizing concept have been proved locally.
- Generated-object provenance: The fixed vector in (T) is universally
  quantified deterministic input to the local claim, not a generated
  invariant. When vectors are later drawn from \(\mu_{N,M}^{\otimes k}\),
  the law is an accepted dependency output and is averaged only after the
  pointwise statement. The event \(G\) and bound \(0\le\mathcal R\le1\)
  are derived in this step. No local-validity, stability, recurrence,
  boundedness, or membership condition is assumed.
- Quantifier discipline:
  \[
  \forall\bigl((t_i,Q_i)\bigr)_{i=1}^k
  \quad\text{first},\qquad
  \mathbb E_{S,A}\quad\text{second},\qquad
  \mathbb E_{\mu_{N,M}^{\otimes k}}\quad\text{only afterward}.
  \]
  In particular, the marginal mixture over product instances is never
  passed to the fixed-distribution PAC premise as though it were one fixed
  iid realizable law.
- Boundary discipline: The normalization proof uses only that every
  \(Q_i\) is a probability distribution. Endpoint thresholds, zero
  coordinates, point masses, and nonunique on-support threshold
  representations do not alter realizability or bounded 0-1 risk.
- Diagnostic boundary: Neither `global_proof.md` nor
  `global_proof_review.md` was read or used. No diagnostic statement is
  evidence, a cited result, an assumption source, or authority to change
  the target claim.
