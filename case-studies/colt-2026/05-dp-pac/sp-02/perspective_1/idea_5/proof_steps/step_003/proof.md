# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_003`
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove `(LD)` exactly, including \(u(L)\geq1\), \(u(L)\to\infty\), \(e^{-u(L)}=1/\log(e^e+L)\), and activation of the privacy correction when \(q\) is bounded.
- Dependencies: `step_002`.
- Assumptions used: Scalar definitions in `setting.md`; no new assumption.
- Technical challenge: Preserve explicit cardinality dependence and avoid assuming \(q_\kappa\to\infty\).
- Intended proof tool or cited result: Direct logarithm/exponential identities and monotonicity.
- Output target: Exact privacy schedule consumed by `(PN)` and the final theorem.
- Rate objective: R1 and R3: exact privacy-log dependence, with no hidden \(|C|\) term.
- Row-local review status in the accepted sketch: `PENDING`.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:polynomial-global-stability}\) supplies one fixed universal integer \(a\geq1\). It is used in this step only to identify the same exponent and accepted learner already exported by `step_002`; the scalar identities below require no producer or stochastic property.
  - The basic setup in `setting.md`: \(\log\) is the natural logarithm, \(q\geq1\), and \(L\geq0\).
  - The setting-defined expressions
    \[
    b=2a+2,\qquad
    u(L)=\log\log(e^e+L),
    \]
    \[
    T_a(q,L)=q^b+u(L),\qquad
    \delta_a(q,L)=e^{-T_a(q,L)}.
    \]
    These are definitions, not additional assumptions.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) supplies, for every nonempty finite class \(C\), \(L=\log|C|\), and \(\varepsilon_0\in(0,1)\), an exactly \(N_a(q(C),L,\varepsilon_0)\)-record arbitrary-output distribution-free realizable learner \(M_C\) that is \((\varepsilon_0,\delta_a(q(C),L))\)-DP. This is an accepted derived conclusion, not a primitive condition.
- Local conditional hypotheses:
  - Only for the bounded-complexity activation result, consider a sequence \((q_\kappa,L_\kappa)\) with \(q_\kappa\geq1\), \(L_\kappa\geq0\), \(L_\kappa\to\infty\), and \(\sup_\kappa q_\kappa<\infty\). This hypothesis is not used for the pointwise identity `(LD)` and is not promoted to a theorem assumption.
- Accepted dependency artifacts:
  - `perspective_1/idea_5/proof_steps/step_002/proof.md`, current SHA-256 `e8d3f9f1387486e5530a08ac208bf2351296402b3aa057618b6a9aedbffccda6`.
  - `perspective_1/idea_5/proof_steps/step_002/review.md`, with `Step-Review Status = ACCEPTED`; its recorded proof SHA-256 equals the current dependency hash.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under the basic scalar conditions in `setting.md`, if \(L\geq0\), then both logarithms defining \(u(L)\) are well-defined, \(u(L)\geq1\), \(e^{-u(L)}=1/\log(e^e+L)\), and, for every \(R>0\), all \(L\geq\exp(\exp R)\) satisfy \(u(L)\geq R\); hence \(u(L)\to\infty\) as \(L\to\infty\). | Establishes every domain, lower-bound, exponential, and limit fact required of the cardinality correction, including the boundary \(L=0\). |
| `unit_002` | proposition | Under the setting-defined scalar conditions and Lemma~\(\ref{lem:step-003-log-correction}\), every \(q\geq1\) and \(L\geq0\) satisfy \(0<\delta_a(q,L)\leq e^{-2}<1\) and \(\log(1/\delta_a(q,L))=q^{2a+2}+\log\log(e^e+L)\). Under Assumption~\(\ref{assump:polynomial-global-stability}\) and accepted Proposition~\(\ref{prop:step-002-exact-padding}\), each class-derived pair \((q(C),\log|C|)\) attaches this exact parameter to the accepted learner. | Proves `(LD)` for the full declared scalar domain and ties its class specialization to the actual dependency learner, with explicit \(a,b,q,L\) dependence and the \(q=1\), \(L=0\) boundaries. |
| `unit_003` | proposition | Under Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), if \(L_\kappa\to\infty\) and \(1\leq q_\kappa\leq\bar q<\infty\), then \(\delta_a(q_\kappa,L_\kappa)=e^{-q_\kappa^b}/\log(e^e+L_\kappa)\to0\), while \(e^{-q_\kappa^b}\geq e^{-\bar q^b}>0\). | Shows that the explicit cardinality correction remains active and is precisely what guarantees privacy decay on bounded-\(q\) sequences; no assumption \(q_\kappa\to\infty\) is used. |

Atomic step = no. The pointwise logarithm identity, its attachment to the accepted private learner, and the sequence-level bounded-\(q\) activation statement are distinct audit obligations.

## Cited Result Applications

### Accepted dependency: exact-size private learner from `step_002`

**Dependency result.** Proposition~\(\ref{prop:step-002-exact-padding}\), accepted by the current `step_002` review, states the following relevant conclusion in current notation. Under Assumption~\(\ref{assump:polynomial-global-stability}\), fix a nonempty finite \(C\subseteq\{0,1\}^X\), set \(q=q(C)\) and \(L=\log|C|\), and fix \(\varepsilon_0\in(0,1)\). Then there is a kernel
\[
M_C:Z_X^{N_a(q,L,\varepsilon_0)}\rightsquigarrow\mathcal H_X
\]
that is arbitrary-output distribution-free realizable \((\alpha_0,\beta_0)\)-PAC and \((\varepsilon_0,\delta_a(q,L))\)-DP under symmetric ordered-sample replacement adjacency.

**Assumption discharge and conclusion used.** The accepted dependency review verifies Assumption~\(\ref{assump:polynomial-global-stability}\), the exact sample ceiling, prefix padding, the PAC interface, and both privacy directions. This step uses only the derived learner \(M_C\) and its already-established privacy parameter \(\delta_a(q,L)\). It does not invoke the Bun--Livni--Moran theorem or any other external result directly.

### Local results used later

- Lemma~\(\ref{lem:step-003-log-correction}\) proves the logarithm domains, \(u(L)\geq1\), the exact identity \(e^{-u(L)}=1/\log(e^e+L)\), and the quantified divergence of \(u\).
- Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) combines that lemma with the setting definitions and the accepted dependency to prove the exact privacy parameter and `(LD)`.
- Proposition~\(\ref{prop:step-003-bounded-q-activation}\) applies the exact factorization from Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) to every bounded-\(q\), diverging-\(L\) sequence.

No paper result, named inequality, or unverified standard theorem is cited in this step.

## Local Derivation

### unit_001: lemma

**Lemma (Domain and exact decay identity of the cardinality correction).** \(\label{lem:step-003-log-correction}\)
Under the basic scalar conditions in `setting.md`, for every real \(L\geq0\), the quantity
\[
u(L)=\log\log(e^e+L)
\]
is well-defined and satisfies
\[
u(L)\geq1,
\qquad
e^{-u(L)}=\frac1{\log(e^e+L)}.
\tag{35}
\]
Moreover, for every \(R>0\),
\[
L\geq \exp(\exp R)
\quad\Longrightarrow\quad
u(L)\geq R.
\tag{36}
\]
Consequently, \(u(L)\to\infty\) as \(L\to\infty\). At the endpoint \(L=0\), \(u(0)=1\) and \(e^{-u(0)}=e^{-1}\).

**Proof / justification.** If \(L\geq0\), then
\[
e^e+L\geq e^e>1,
\qquad
\log(e^e+L)\geq\log(e^e)=e>0.
\tag{37}
\]
Thus the inner logarithm has a positive value, so the outer logarithm is defined. Since the natural logarithm is increasing on \((0,\infty)\), (37) gives
\[
u(L)=\log\log(e^e+L)
\geq\log e=1.
\tag{38}
\]
The same positivity permits exact exponentiation:
\[
e^{-u(L)}
=\exp\!\left[-\log\log(e^e+L)\right]
=\frac1{\log(e^e+L)},
\tag{39}
\]
which proves (35) without an asymptotic replacement or hidden factor.

For the limit, fix an arbitrary \(R>0\). Whenever \(L\geq\exp(\exp R)\),
\[
e^e+L\geq L\geq\exp(\exp R),
\]
so monotonicity of the two logarithms yields
\[
u(L)
=\log\log(e^e+L)
\geq\log\log(\exp(\exp R))
=R.
\tag{40}
\]
This is the quantified definition of \(u(L)\to\infty\). Finally,
\[
u(0)=\log\log(e^e)=\log e=1,
\qquad
e^{-u(0)}=e^{-1}=\frac1{\log(e^e)},
\tag{41}
\]
so the endpoint belongs to the same formulas. \(\square\)

### unit_002: proposition

**Proposition (Exact privacy schedule and privacy logarithm).** \(\label{prop:step-003-exact-privacy-schedule}\)
Under the setting-defined scalar conditions and Lemma~\(\ref{lem:step-003-log-correction}\), fix the integer \(a\geq1\), put \(b=2a+2\), and let \(q\geq1\) and \(L\geq0\) be arbitrary. Then
\[
\delta_a(q,L)
=\exp\!\left[-q^b-\log\log(e^e+L)\right]
=\frac{e^{-q^b}}{\log(e^e+L)}
\in(0,e^{-2}].
\tag{42}
\]
For every such \(q,L\), the parameter in (42) has privacy logarithm exactly
\[
\boxed{
\log\frac1{\delta_a(q,L)}
=T_a(q,L)
=q^{2a+2}+\log\log(e^e+L)
}.
\tag{LD}
\]
Moreover, under Assumption~\(\ref{assump:polynomial-global-stability}\) and accepted Proposition~\(\ref{prop:step-002-exact-padding}\), if \(C\) is nonempty and finite, \(q=q(C)\), \(L=\log|C|\), and \(\varepsilon_0\in(0,1)\), then the accepted learner \(M_C\) is
\[
\left(\varepsilon_0,
\exp\!\left[-q^{2a+2}-\log\log(e^e+L)\right]
\right)\text{-DP}.
\tag{43}
\]
At \(L=0\), this logarithm is \(q^b+1\); at \(q=1\), it is \(1+\log\log(e^e+L)\); and at \((q,L)=(1,0)\), it is \(2\) and \(\delta_a(1,0)=e^{-2}\).

**Proof / justification.** Since \(a\geq1\),
\[
b=2a+2\geq4>0.
\tag{44}
\]
Thus \(q\geq1\) implies \(q^b\geq1\). Lemma~\(\ref{lem:step-003-log-correction}\) gives \(u(L)\geq1\), so
\[
T_a(q,L)=q^b+u(L)\geq2.
\tag{45}
\]
Therefore
\[
0<\delta_a(q,L)=e^{-T_a(q,L)}\leq e^{-2}<1,
\tag{46}
\]
which verifies the full logarithm domain for \(\log(1/\delta_a)\). Using (39) without changing any parameter gives
\[
\delta_a(q,L)
=e^{-q^b}e^{-u(L)}
=\frac{e^{-q^b}}{\log(e^e+L)},
\tag{47}
\]
proving (42). Since \(\delta_a=e^{-T_a}>0\), its reciprocal is \(e^{T_a}\), and hence
\[
\log\frac1{\delta_a(q,L)}
=\log(e^{T_a(q,L)})
=T_a(q,L)
=q^b+u(L)
=q^{2a+2}+\log\log(e^e+L).
\tag{48}
\]
This proves `(LD)` as an equality, not up to constants or lower-order terms.

Accepted Proposition~\(\ref{prop:step-002-exact-padding}\) states that \(M_C\) is \((\varepsilon_0,\delta_a(q,L))\)-DP. Substitution of the identical parameter from (42) gives (43); no privacy monotonicity, approximation, or change of learner is involved.

The boundary values follow directly. Lemma~\(\ref{lem:step-003-log-correction}\) gives \(u(0)=1\), so
\[
\delta_a(q,0)=e^{-q^b-1},
\qquad
\log\frac1{\delta_a(q,0)}=q^b+1.
\tag{49}
\]
At \(q=1\), positivity of \(b\) gives \(1^b=1\), so
\[
\delta_a(1,L)
=\frac{e^{-1}}{\log(e^e+L)},
\qquad
\log\frac1{\delta_a(1,L)}
=1+\log\log(e^e+L).
\tag{50}
\]
Equations (49)--(50) give \(\delta_a(1,0)=e^{-2}\) and privacy logarithm \(2\). Thus neither endpoint requires \(L>0\), \(q>1\), or division by a vanishing quantity. \(\square\)

### unit_003: proposition

**Proposition (The cardinality correction activates on bounded-complexity sequences).** \(\label{prop:step-003-bounded-q-activation}\)
Under Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\), fix the universal \(a\geq1\) and \(b=2a+2\). Let \((q_\kappa,L_\kappa)_{\kappa\in\mathbb N}\) be any sequence satisfying
\[
L_\kappa\geq0,
\qquad
L_\kappa\longrightarrow\infty,
\qquad
1\leq q_\kappa\leq\bar q
\quad\text{for every }\kappa
\tag{51}
\]
for some finite \(\bar q\geq1\). Then
\[
\delta_a(q_\kappa,L_\kappa)
=\frac{e^{-q_\kappa^b}}{\log(e^e+L_\kappa)}
\longrightarrow0,
\tag{52}
\]
although \(q_\kappa\) need not converge and in particular is not assumed to tend to infinity. More precisely,
\[
e^{-\bar q^b}
\leq e^{-q_\kappa^b}\leq e^{-1},
\tag{53}
\]
so the polynomial-in-\(q_\kappa\) factor remains bounded away from zero; the factor
\(e^{-u(L_\kappa)}=1/\log(e^e+L_\kappa)\) is what forces (52). For the extremal bounded sequence \(q_\kappa\equiv1\),
\[
\delta_a(1,L_\kappa)
=\frac{e^{-1}}{\log(e^e+L_\kappa)}
\longrightarrow0.
\tag{54}
\]

**Proof / justification.** By (51) and \(b>0\),
\[
1\leq q_\kappa^b\leq\bar q^b.
\]
The map \(x\mapsto e^{-x}\) is decreasing, which proves (53). In particular, if the declared schedule contained only the factor \(e^{-q_\kappa^b}\), then on every bounded-\(q\) sequence it would be at least \(e^{-\bar q^b}>0\) and would not be forced to vanish.

On the other hand, Lemma~\(\ref{lem:step-003-log-correction}\) and \(L_\kappa\to\infty\) give
\[
u(L_\kappa)\to\infty,
\qquad
e^{-u(L_\kappa)}
=\frac1{\log(e^e+L_\kappa)}\longrightarrow0.
\tag{55}
\]
Applying the exact factorization (47), then the upper bound in (53), yields
\[
0<\delta_a(q_\kappa,L_\kappa)
=\frac{e^{-q_\kappa^b}}{\log(e^e+L_\kappa)}
\leq\frac{e^{-1}}{\log(e^e+L_\kappa)}
\longrightarrow0.
\tag{56}
\]
This proves (52). Equation (54) is (50) specialized to \(q_\kappa=1\). The proof uses only the uniform bound \(q_\kappa\leq\bar q\), not convergence or divergence of \(q_\kappa\). \(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-003-log-correction}\) starts from the original setting notation and proves, for every \(L\geq0\), that both logarithms are defined, that \(u(L)\geq1\), and that
\[
e^{-u(L)}=\frac1{\log(e^e+L)}.
\]
Its quantified bound (36) proves \(u(L)\to\infty\) as \(L\to\infty\), while (41) audits the endpoint \(L=0\).

Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\) combines these facts with \(b=2a+2\), \(q\geq1\), and the setting definitions. It proves \(T_a(q,L)\geq2\), hence \(\delta_a(q,L)\in(0,1)\), and establishes the exact identities
\[
\delta_a(q,L)
=\frac{e^{-q^b}}{\log(e^e+L)},
\qquad
\log\frac1{\delta_a(q,L)}
=q^{2a+2}+\log\log(e^e+L).
\]
The same proposition invokes accepted Proposition~\(\ref{prop:step-002-exact-padding}\) only to attach this identical explicit parameter to the already-constructed learner \(M_C\). Its boundary computations cover \(q=1\), \(L=0\), and their intersection exactly.

Finally, Proposition~\(\ref{prop:step-003-bounded-q-activation}\) proves that for every sequence with \(L_\kappa\to\infty\) and bounded \(q_\kappa\), the factor \(e^{-q_\kappa^b}\) remains bounded away from zero while the explicit cardinality factor \(1/\log(e^e+L_\kappa)\) tends to zero. Thus the correction is active precisely in the critical bounded-\(q\) regime, including \(q_\kappa\equiv1\), and no premise \(q_\kappa\to\infty\) appears. These named results jointly prove every clause of the exact `step_003` sketch row and export `(LD)` unchanged to `step_005` and `step_006`.

## Explicit Rate Audit

- Exposed variables: \(a\), \(b=2a+2\), \(q\), \(L\), \(u(L)\), \(T_a(q,L)\), \(\delta_a(q,L)\), and, for the activation statement, \(q_\kappa,L_\kappa,\bar q\). The inherited learner interface also exposes \(\varepsilon_0\) and \(N_a(q,L,\varepsilon_0)\), but neither enters the identity `(LD)`.
- Hidden constants may depend on: None. Every pointwise formula is exact. The bounded-sequence witness \(\bar q\) appears explicitly in (53) and is not hidden.
- Hidden constants may not depend on: \(X,C,Q,q,L,|C|,\kappa,\varepsilon_0,K_a\), or the behavior of the bounded sequence. In particular, no cardinality dependence is moved into a constant.
- Fixed quantities: The universal integer \(a\), hence \(b\), is fixed before varying \(q,L\) or taking a sequence limit. Along (51), \(a,b\), and the explicit finite bound \(\bar q\) are fixed while \(\kappa\to\infty\).
- Probability mode: `(LD)` and the bounded-\(q\) activation statement are deterministic scalar identities and limits. The inherited learner remains pointwise \((\varepsilon_0,\delta_a(q,L))\)-DP for every adjacent sample pair and measurable event; no PAC probability, union bound, or conditioning conversion is performed here.
- Horizon mode: The exact identity is pointwise for every per-class pair \((q,L)\). Proposition~\(\ref{prop:step-003-bounded-q-activation}\) is sequence-asymptotic and uses only \(L_\kappa\to\infty\); there is no privacy composition or accumulation across \(\kappa\).
- Norm mode: No norm or risk comparison is used. The controlled quantity is the scalar privacy parameter and its natural logarithm.
- Admissibility conditions and auxiliary tolerances: \(a\geq1\), \(b=2a+2\), \(q\geq1\), and \(L\geq0\). The learner attachment additionally has \(\varepsilon_0\in(0,1)\). The bounded-sequence specialization assumes only (51). There is no auxiliary tolerance.
- Term absorption or simplification inequalities: No term is absorbed. Equations (42), (47), and (48) are equalities. The only boundary inequalities are \(q^b\geq1\), \(u(L)\geq1\), and the explicit bounded-\(q\) bracket (53).
- Probability conversion: None. Substitution into the dependency learner preserves the identical \(\delta_a\) parameter.
- Contribution to any Rate Specialization Bridge: This step exports the exact bridge `(LD)` with the polynomial term \(q^{2a+2}\) and the cardinality correction \(\log\log(e^e+L)\) separately visible. It also exports the exact factorization needed by `(PN)`.
- Baseline-reduction check: At \(L=0\), the correction equals \(1\) in the privacy logarithm; at \(q=1\), the schedule is exactly \(e^{-1}/\log(e^e+L)\); and at \((q,L)=(1,0)\), it is \(e^{-2}\). On every bounded-\(q\) sequence with \(L\to\infty\), the original target privacy decay is preserved by the explicit cardinality factor rather than replaced by a weaker surrogate.

## Blockers

None.

## Notation And Assumption Notes

- \(a,b,u,T_a,\delta_a,N_a,q,L\) are `public-facing` setting-defined quantities. This step preserves their original meanings and introduces no alternate privacy schedule.
- \(M_C\) is a `public-facing` accepted dependency object. Its construction, sample size, utility, and privacy proof remain those of accepted Proposition~\(\ref{prop:step-002-exact-padding}\); this step only rewrites its already-proved \(\delta_a(q,L)\) parameter by exact identities.
- \(\delta_\kappa=\delta_a(q_\kappa,L_\kappa)\) is a `public-facing` specialization already present in the formalized goal. Proposition~\(\ref{prop:step-003-bounded-q-activation}\) does not create a new parameter.
- The finite upper bound \(\bar q\) in (51) is a `proof-local` witness to the local conditional hypothesis that \((q_\kappa)\) is bounded. It is not exported to the final theorem and is used only to display the nonvanishing lower bound \(e^{-\bar q^b}\) for the \(q\)-only privacy factor.
- The quantified threshold \(\exp(\exp R)\) in (36) is `proof-local` and is defined directly from the arbitrary test level \(R>0\); it proves the limit without introducing an asymptotic constant.
- Constant provenance is complete: \(b\) is defined from the primitive exponent \(a\); all remaining numerical values, including the lower bounds \(1,2\) and the endpoint \(e^{-2}\), are derived in Lemma~\(\ref{lem:step-003-log-correction}\) and Proposition~\(\ref{prop:step-003-exact-privacy-schedule}\). No new free constant, radius, threshold, or hidden bounded quantity is introduced.
- Assumption provenance is complete: Assumption~\(\ref{assump:polynomial-global-stability}\) is consumed only through the accepted learner interface and the fixed exponent \(a\). Logarithm domains, boundedness of the exponent below, exact identities, endpoint values, and bounded-\(q\) privacy activation are all proved in this step. The bounded-sequence conditions are explicitly local conditional hypotheses and are not used to establish the unconditional pointwise `(LD)` identity.
- The proof does not assume \(q_\kappa\to\infty\). Proposition~\(\ref{prop:step-003-bounded-q-activation}\) instead handles every bounded sequence, including the constant boundary \(q_\kappa\equiv1\).
- `global_proof.md` was not consulted. The proof uses only `setting.md`, the accepted sketch and sketch review, and the current accepted `step_002` dependency pair.
