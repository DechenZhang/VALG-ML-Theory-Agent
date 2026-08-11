# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_011`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_011/proof.md`, SHA-256 `90278caa7afab5b89449d50c22e600b4d644dff90b09529df04e5e4565dffc58`

## Step-Review Status

REVISE_STEP

## Smallest Retry Target

/proof-step step_011

## Blocking Issues

1. Location: `proof.md`, `## Step Proof Status` (line 35 in the reviewed artifact). Defect: the controlled value is written as backticked Markdown code, `` `COMPLETE` ``, rather than as the raw token `COMPLETE` on its own line. The value belongs to the allowed vocabulary, but its surface form does not satisfy the controlled-field contract. Downstream effect: the proof artifact is contract-invalid and cannot be certified for downstream consumption despite the complete and correct derivation. Smallest repair: remove only the two backticks so that the field contains the raw token `COMPLETE`; do not change the mathematical proof, sketch interface, assumptions, or dependencies.

## Per-Lemma Audit

### unit_001: Finite-binomial optimized exponential tail

- Statement fidelity: The statement gives exactly the finite-binomial Chernoff interface needed by the two mean regimes, with finite $n\ge1$, $p>0$, $\mu=np$, and every real $t>\mu$ stated explicitly.
- Proof validity: The exact binomial moment generating function, $1+u\le e^u$, exponential Markov inequality, and the optimizing choice $\lambda=\log(t/\mu)>0$ yield the displayed exponent. The argument remains valid when $t>n$, where the event is empty.
- Cited-result and assumption audit: No paper or dependency result is used. Both standard inequalities are restated in current notation and their hypotheses are discharged. The primitive conditions are sufficient, and the excluded case $p=0$ is handled by `unit_002`.
- Rigor checklist: Quantifiers, integrability, positivity of $\mu$, the optimization domain, and finite-$n$ scope are correct. No asymptotic or convergence-mode upgrade occurs.
- Local adversarial test: The limits $p\downarrow0$, $p=1$, noninteger $t$, and $t>n$ expose no failure; the bound stays positive and the event interpretation remains valid.
- Contribution to target step: Supplies the exact exponential tail bound used by `unit_003` and `unit_004`.
- Verdict: PASS
- Repair direction: None.

### unit_002: Zero-mean boundary

- Statement fidelity: The claim isolates the exact $p=0$ boundary required by the target and avoids division by $\mu$.
- Proof validity: For $p=0$, $X=0$ almost surely and the quota is $8$, so the overflow event is empty.
- Cited-result and assumption audit: No citation, dependency, or generated assumption is used. The primitive case condition $p=0$ is explicit.
- Rigor checklist: The conclusion covers every finite $n\ge1$ and preserves the strict overflow event in the target.
- Local adversarial test: At $n=1$ and at arbitrary large $n$, the same deterministic zero law closes the boundary exactly.
- Contribution to target step: Completes the zero-mean branch omitted from the logarithmic Chernoff lemma.
- Verdict: PASS
- Repair direction: None.

### unit_003: Floor-eight regime

- Statement fidelity: The statement exactly covers $0<\mu\le2$, including the transition point, and concludes the required bound for the target quota.
- Proof validity: From $4\mu\le8$, the proof correctly obtains $m=8$ and the integer threshold $X\ge9$. Applying `unit_001` at $t=9$ is valid, and the derivative $g'(\mu)=9/\mu-1>0$ shows that the exponent is maximized at $\mu=2$.
- Cited-result and assumption audit: Lemma~\ref{lem:step-011-binomial-chernoff} is restated before use, and its conditions $p>0$ and $9>\mu$ are discharged locally.
- Rigor checklist: Ceiling behavior, strict-event conversion, exponent monotonicity, and endpoint equality are all explicit. If $9>n$, the empty event is still covered by the same bound.
- Local adversarial test: The cases $\mu\downarrow0$, $\mu=2$, $n<9$, and a ceiling transition below $8$ all satisfy the displayed reasoning.
- Contribution to target step: Proves the uniform overflow certificate in the absolute-floor regime.
- Verdict: PASS
- Repair direction: None.

### unit_004: Factor-four regime with integer ceilings

- Statement fidelity: The statement exactly covers $\mu\ge2$, with the same target quota and numerical constant as the accepted sketch row.
- Proof validity: Integer-valuedness gives $\{X>m\}=\{X\ge\lceil4\mu\rceil+1\}\subseteq\{X\ge4\mu+1\}$. Substitution into `unit_001` yields the stated $f(\mu)$. The derivative $f'(\mu)=4\log(4+1/\mu)-1/\mu-3$ is correct, and $\log4>1$ plus $\mu\ge2$ gives $f'(\mu)>1/2$, so the minimum is attained at $\mu=2$.
- Cited-result and assumption audit: The only imported local result is restated in the cited-result section, and $t=4\mu+1>\mu$ is checked. No external citation or dependency is used.
- Rigor checklist: The proof handles integer and noninteger values of $4\mu$, the overlap at $\mu=2$, finite $n$, and thresholds exceeding $n$. The differentiation and inequality directions are correct.
- Local adversarial test: The cases $\mu=2$, $p=1$, $m>n$, and values immediately on either side of a ceiling transition do not break the event inclusion or exponent comparison.
- Contribution to target step: Proves the uniform overflow certificate in the multiplicative-buffer regime.
- Verdict: PASS
- Repair direction: None.

### unit_005: Strict numerical slack

- Statement fidelity: The lemma proves exactly the strict comparison $\eta_0<3/2048$ required by the sketch and downstream contradiction.
- Proof validity: The factorial-tail bound gives $e<87/32$; the exact integer comparison $87^7<1100\cdot32^7$ gives $e^7<1100$; and $1100\cdot2^{20}<3\cdot9^9$ gives the final strict inequality. All displayed integers and inequality directions check.
- Cited-result and assumption audit: The exponential series is explicitly stated and its tail is bounded term by term. No paper result, dependency, decimal approximation, or hidden numerical absorption is used.
- Rigor checklist: Strictness is preserved at both required comparisons, and the fixed constant has no unstated parameter dependence.
- Local adversarial test: Direct evaluation gives $\eta_0\approx0.0014492681545<0.00146484375=3/2048$, consistent with the exact proof; the review relies on the exact integer inequalities rather than this decimal check.
- Contribution to target step: Supplies the strict numerical slack after the two probability regimes are assembled.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent mathematical subclaim was found. The moment-generating-function calculation and Chernoff optimization are contained in `unit_001`; the zero boundary and the two mean regimes have separate named units; and the numerical comparison is isolated in `unit_005`. The elementary Markov, exponential, calculus, integral, and series facts are either restated or derived where used. The prose does not assert the later ideal-to-truncated coupling bound as part of this step; it correctly exports only the marginal overflow certificate.

## Target Claim Audit

The derivation proves the exact accepted `step_011` claim for every finite $n\in\mathbb N$ and every $p\in[0,1]$, under no dependency and no generated assumption. The branches $p=0$, $p>0$ with $0<np\le2$, and $p>0$ with $np\ge2$ cover the full parameter space, with a consistent overlap at $np=2$. Quantifiers, constants, strictness, fixed-sample probability mode, and the absence of a union conversion all match the sketch.

The controlled status surface does not pass: under `## Step Proof Status`, the reviewed artifact uses backticked `` `COMPLETE` `` instead of the raw controlled token `COMPLETE` on its own line. This is a surface-contract defect only; it does not change the mathematical target audit above, but it prevents `ACCEPTED` for the current artifact hash.

## Explicit Rate Audit

The step is rate-bearing through an explicit fixed numerical error probability. It records the exposed variables $n,p,\mu$, declares that there are no hidden constants, identifies the fixed floor $8$, multiplier $4$, and target $3/2048$, and states exact marginal-probability, fixed-finite-$n$, event-probability modes. All admissibility conditions and the absence of auxiliary tolerances, term absorption, probability conversion, and union bounds are explicit. The $p=1$ baseline check correctly observes $m\ge4n>n$, hence zero actual overflow. No dependence required by the accepted lower-rate objective is dropped.

## Notation Surface Audit

The exported objects $X,\mu,m,\eta_0$, and $O$ are classified as `public-facing` and are the minimal objects used by the overflow and downstream coupling interface. The Chernoff threshold, transform parameter, exponent functions, elementary-inequality placeholders, summation indices, and rational comparison bounds are correctly kept `proof-local`. Every new constant and event has visible provenance, and no helper dictionary hides a boundedness, finiteness, or parameter-dependence obligation.

## Target-Step Assembly Audit

Claim~\ref{claim:step-011-zero-mean}, Lemma~\ref{lem:step-011-small-mean}, and Lemma~\ref{lem:step-011-large-mean} exhaust all $p\in[0,1]$ and establish the common weak bound by $\eta_0$. Lemma~\ref{lem:step-011-numerical-slack} supplies the required strict final comparison. The two regime lemmas legitimately consume Lemma~\ref{lem:step-011-binomial-chernoff}; no dependency artifact or unnamed mathematical authority is needed. Thus the named local results jointly imply the exact target claim.

## Review Rationale

Every local unit and the target-step assembly pass mathematical, provenance, notation, rate, boundary, and hidden-subclaim review. The only defect is the controlled status field's Markdown formatting. Because that defect is contained entirely in the submitted `proof.md` and can be repaired by replacing backticked `` `COMPLETE` `` with raw `COMPLETE` under the unchanged sketch row, `REVISE_STEP` with smallest producer retry target `/proof-step step_011` is the narrowest valid decision. A repaired producer artifact still requires a fresh accepted `/proof-step-review step_011` before downstream use.
