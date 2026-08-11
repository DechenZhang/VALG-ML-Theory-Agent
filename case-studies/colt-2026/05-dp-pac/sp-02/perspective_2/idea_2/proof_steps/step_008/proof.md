# Proof Step

## Step Identity

- Sketch attempt: `1`
- Step ID: `step_008`
- Unit attempt: `2`

## Target Step Claim

- Intended claim: Prove conditional independence of the ideal output from `J`, establish `(EX)`, convert PAC to expected mixture risk, add overflow to prove `(UT)<1/20`, and prove the conditional hidden-arm `7/8` auxiliary statement.
- Depends on: `step_006`, `step_007`.
- Assumptions used: `assump:unrestricted-private-pac`; `assump:minor-table`; `assump:fixed-parameter-scale`; fixed `alpha_0,beta_0`; generated iid experiments.
- Technical challenge: Exchangeability must use iid common experiments, not permutation alone; preserve probability modes.
- Intended proof tool or cited result: Conditional expectation, exact mixture identity, bounded-loss conversion, and Markov's inequality.
- Output target: `(EX)`, `(UT)`, and the auxiliary statement.
- Rate objective: R2 and R3: `5/128+e^{-27/2}<1/20`; threshold `8alpha_0=1/16`, probability `7/8`.

In the accepted dependency notation, let

\[
\mathbf E=(E_1,\ldots,E_k)\sim\Pi^k,
\qquad
J\sim\operatorname{Unif}([k]),
\qquad
\mathbf E\ \text{independent of }J.
\tag{T8.1}
\]

For a realized vector
\(\mathbf e=(e_1,\ldots,e_k)\), let

\[
\bar Q_{\mathbf e}
=\frac1k\sum_{j=1}^k(T_j)_\#Q_{e_j},
\qquad
T_j(q,y)=(\phi_j(q),y),
\tag{T8.2}
\]

and let \(\bar S\sim\bar Q_{\mathbf E}^{\,m}\) be the accepted ideal
sample.  Write \(\bar H\sim A(\bar S)\) for its learner output and

\[
\bar G:=\rho_J(\bar H),
\qquad
\rho_j(h)(q)=h(\phi_j(q)).
\tag{T8.3}
\]

Let \(G^{\rm con}\) be the constructed output of \(B_\Pi\) in the
accepted outer prior-average coupling, and retain

\[
\mathsf O=\{R>n\},
\qquad
p_{\rm ov}=\Pr(\mathsf O)\le e^{-27/2}<\frac1{1024}.
\tag{T8.4}
\]

The exact claims to prove are

\[
\mathbb E\!\left[
  L_{Q_{E_J}}(\bar H\circ\phi_J)
  \mid \mathbf E,\bar H
\right]
=L_{\bar Q_{\mathbf E}}(\bar H),
\tag{EX-c}
\]

and hence

\[
\mathbb E L_{Q_{E_J}}(\bar H\circ\phi_J)
=\mathbb E L_{\bar Q_{\mathbf E}}(\bar H),
\tag{EX}
\]

followed by

\[
\mathbb E_{e\sim\Pi}\bigl[\mathcal R_n(B_\Pi,e)\bigr]
\le \alpha_0+\beta_0+p_{\rm ov}
\le \frac5{128}+e^{-27/2}<\frac1{20}.
\tag{UT}
\]

For the auxiliary statement, define the ideal PAC-good event

\[
\mathsf G
:=\left\{L_{\bar Q_{\mathbf E}}(\bar H)\le\alpha_0\right\}.
\tag{T8.5}
\]

For every latent vector \(\mathbf e\), under the canonical fiber law
\(\bar S\sim\bar Q_{\mathbf e}^{\,m}\) and
\(\bar H\sim A(\bar S)\), this step must prove

\[
\Pr\!\left\{
L_{Q_{E_J}}(\bar H\circ\phi_J)\le8\alpha_0
\ \middle|\ \mathbf E=\mathbf e,\mathsf G
\right\}
\ge\frac78,
\qquad
8\alpha_0=\frac1{16}.
\tag{AUX}
\]

Equivalently, the assertion holds \(\Pi^k\)-almost surely as a
conditional-probability statement.  The conditional probability in
`(AUX)` is over the uniform hidden
designation and the ideal learner randomness left after conditioning on
\(\mathbf E=\mathbf e\) and \(\mathsf G\).  It is well-defined because
the PAC guarantee gives
\(\Pr(\mathsf G\mid\mathbf E=\mathbf e)\ge1-\beta_0>0\).

## Step Proof Status

`COMPLETE`

## Allowed Assumptions And Dependencies

- Accepted dependency proof:
  `perspective_2/idea_2/proof_steps/step_006/proof.md`, SHA-256
  `f4d72880911b9379963068d28103e397067061f6dbdc53ad2448db8f76f99f6b`.
- Accepted dependency review:
  `perspective_2/idea_2/proof_steps/step_006/review.md`, status
  `ACCEPTED`, SHA-256
  `872560c50b01fbab254e716a30ec61a31391ae78634979a2af2712dcca9bb2ee`.
- Accepted dependency proof:
  `perspective_2/idea_2/proof_steps/step_007/proof.md`, SHA-256
  `2acaf6fc9f7237c8f965c90b929b390dce607df84c86e775af02bca41bf7390b`.
- Accepted dependency review:
  `perspective_2/idea_2/proof_steps/step_007/review.md`, status
  `ACCEPTED`, SHA-256
  `d0df17ccf82f5dc1275dc24cd0bcfc2774383728a87e14eb59cab822e53798b9`.

Assumption-provenance classification:

- Primitive conditions:
  1. Assumption~\ref{assump:unrestricted-private-pac} supplies, for every
     realizable distribution \(Q\), the fixed-sample guarantee
     \[
     \Pr_{S\sim Q^m,\ h\sim A(S)}
     \{L_Q(h)>\alpha_0\}\le\beta_0.
     \tag{A8.1}
     \]
     Its privacy conclusion is not re-used in this step.
  2. Assumption~\ref{assump:minor-table} is the primitive source from
     which accepted Proposition~\ref{prop:step-007-realizable} derived
     exact realizability of every ideal mixture.  This step consumes that
     accepted derived conclusion and introduces no further structural
     condition.
  3. Assumption~\ref{assump:fixed-parameter-scale} supplies
     \[
     \alpha_0=\frac1{128},
     \qquad
     \beta_0=\frac1{32}.
     \tag{A8.2}
     \]
     The ranges of \(\varepsilon_0\) and \(\delta_m\) are not used in
     the utility derivation; their exact preservation is already an
     accepted `step_006` output.
- Derived invariants supplied by accepted dependencies:
  1. Lemma~\ref{lem:step-006-iid-latents} supplies the outer completion
     in which \(\mathbf E\sim\Pi^k\) is independent of uniform \(J\),
     the outer experiment equals \(E_J\), and the real sample has
     conditional law \(Q_{E_J}^n\).
  2. Proposition~\ref{prop:step-006-kernel} supplies the constructed
     kernel \(B_\Pi\) and its hidden-arm restriction \(G^{\rm con}\).
     Its exact privacy certificate is not needed to prove `(EX)` or
     `(UT)`.
  3. Lemma~\ref{lem:step-007-pool-iid} and
     Proposition~\ref{prop:step-007-realizable} supply the exact
     conditional law \(\bar S\sim\bar Q_{\mathbf E}^{\,m}\), independent
     of the designation \(J\) once \(\mathbf E\) is fixed, and exact
     realizability of \(\bar Q_{\mathbf E}\).
  4. Proposition~\ref{prop:step-007-output-transfer} supplies the
     diagonal ideal/constructed output coupling and the one-sided
     zero-one-risk transfer with sole defect \(p_{\rm ov}\).
  5. Lemma~\ref{lem:step-007-overflow} supplies the complete bound
     `(T8.4)`, while
     Proposition~\ref{prop:step-007-boundaries} supplies zero overflow
     and exact ideal/constructed equality when \(k=1\).
- Local conditional hypotheses: None.  Conditioning on a fixed latent
  vector, an ideal output, or the proved event \(\mathsf G\) is a proof
  disintegration, not an added theorem assumption.  In particular,
  \(\mathsf G\) is not assumed for `(UT)`; its complement is charged by
  the primitive PAC failure probability.

The hard-prior lower value `(HP)`, the final sample-size contradiction,
and any conclusion of `step_009` are not used here.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Lemma~\ref{lem:step-006-iid-latents} and Lemma~\ref{lem:step-007-pool-iid}, conditional on every latent vector, the joint ideal input/output law is independent of uniform `J`. | Proves that the hidden designation remains uniform after observing the latent vector and ideal output; permutation symmetry alone is not used. |
| `unit_002` | proposition | Under Lemma~\ref{lem:step-008-ancillary}, for every latent vector and hypothesis, the uniform arm-average risk equals the ideal mixture risk, yielding `(EX-c)` and `(EX)`. | Establishes the exact exchangeability identity in the consumed zero-one-risk interface. |
| `unit_003` | proposition | Under Assumptions~\ref{assump:unrestricted-private-pac} and \ref{assump:minor-table}, and accepted Lemma~\ref{lem:step-007-pool-iid} and Proposition~\ref{prop:step-007-realizable}, the ideal PAC failure probability is at most `beta_0` on every latent fiber and the expected mixture risk is at most `alpha_0+beta_0`. | Converts the high-probability PAC antecedent to the exact expected-risk mode needed by `(UT)`. |
| `unit_004` | proposition | Under accepted Lemma~\ref{lem:step-006-iid-latents}, Proposition~\ref{prop:step-006-kernel}, and Proposition~\ref{prop:step-007-output-transfer}, the prior-average finite-game risk is exactly the constructed hidden-arm risk and is at most the ideal hidden-arm risk plus `p_ov`. | Connects the finite game to the ideal run with overflow as the sole residual. |
| `unit_005` | proposition | Under Propositions~\ref{prop:step-008-exchangeability}, \ref{prop:step-008-pac-expectation}, and \ref{prop:step-008-transfer}, accepted Lemma~\ref{lem:step-007-overflow}, and Assumption~\ref{assump:fixed-parameter-scale}, `(UT)` holds strictly below `1/20`. | Composes all utility interfaces and proves every numerical comparison explicitly. |
| `unit_006` | proposition | Under Lemma~\ref{lem:step-008-ancillary}, Proposition~\ref{prop:step-008-exchangeability}, Proposition~\ref{prop:step-008-pac-expectation}, and `alpha_0>0`, conditioning on the ideal PAC-good event gives `(AUX)`; at `k=1` its success probability is one and overflow is zero. | Proves R3 with its exact conditional probability mode and preserves the one-arm baseline. |

Atomic step = no.  Conditional independence, the deterministic
arm-mixture identity, PAC probability conversion, coupling into the
finite-game risk, strict numerical utility, and the conditional auxiliary
certificate are distinct nontrivial obligations.

## Cited Result Applications

### Accepted dependency: iid latent completion and hidden-arm kernel

- Source: the accepted `step_006` proof/review pair, specifically
  Lemma~\ref{lem:step-006-iid-latents} and
  Proposition~\ref{prop:step-006-kernel}.
- Restated statement in current notation: in the outer prior-average
  experiment, \(\mathbf E\sim\Pi^k\) is independent of uniform \(J\),
  the experiment supplied to the real sample is \(E_J\), and the real
  sample has law \(Q_{E_J}^n\).  Conditional on this input, the
  constructed kernel output is \(G^{\rm con}=\rho_J(H^{\rm con})\) off
  overflow and the accepted constant output on overflow.
- Instantiated objects: \(\mathbf E,J,E_J,B_\Pi,G^{\rm con}\), and the
  outer prior-average risk experiment.
- Required assumptions and discharge: the current dependency reviews
  bind the exact proof hashes listed above and have status `ACCEPTED`.
  The current proof uses only the exported latent/kernel laws.
- Conclusion used: the exact equality between prior-average
  \(\mathcal R_n\) and expected constructed hidden-arm risk in
  Proposition~\ref{prop:step-008-transfer}.
- Non-output boundary: `step_006` does not prove ideal mixture utility,
  `(EX)`, or `(UT)`.

### Accepted dependency: ideal mixture, realizability, and overflow transfer

- Source: the accepted `step_007` proof/review pair, specifically
  Lemma~\ref{lem:step-007-pool-iid},
  Proposition~\ref{prop:step-007-realizable},
  Proposition~\ref{prop:step-007-output-transfer},
  Lemma~\ref{lem:step-007-overflow}, and
  Proposition~\ref{prop:step-007-boundaries}.
- Restated statement in current notation: conditional on
  \(\mathbf E=\mathbf e\), the ideal sample has exact ordered-product
  law \(\bar Q_{\mathbf e}^{\,m}\), and that law is the same for every
  hidden designation.  The mixture is realized by the minor concept
  indexed by the latent thresholds.  There is a coupling for which
  \[
  \mathbb E L_{Q_{E_J}}(G^{\rm con})
  \le
  \mathbb E L_{Q_{E_J}}(\bar G)+p_{\rm ov},
  \tag{C8.1}
  \]
  and \(p_{\rm ov}\le e^{-27/2}<1/1024\).  At \(k=1\), overflow has
  probability zero and the constructed and ideal runs agree surely.
- Instantiated objects: \(\bar Q_{\mathbf E},\bar S,\bar H,\bar G\),
  \(G^{\rm con},\mathsf O,p_{\rm ov}\).
- Required assumptions and discharge: Assumption~\ref{assump:minor-table}
  and the accepted `step_006` objects were discharged in the accepted
  dependency review.  The bound `(C8.1)` applies because zero-one risk
  is a common measurable loss in \([0,1]\).
- Conclusion used: exact ideal iid sampling and realizability in
  Propositions~\ref{prop:step-008-pac-expectation} and
  \ref{prop:step-008-auxiliary}, plus the single-residual transfer and
  numerical overflow bound in Proposition~\ref{prop:step-008-utility}.
- Non-output boundary: `step_007` explicitly does not prove conditional
  exchangeability, invoke the PAC guarantee, or derive `(UT)`.

### Primitive PAC interface

- Source: Assumption~\ref{assump:unrestricted-private-pac}, not an
  external cited theorem.
- Restated statement in current notation: equation `(A8.1)` holds for
  every distribution realized by a concept in \(C\), with the fixed
  \(\alpha_0,\beta_0\) in `(A8.2)`.
- Instantiated objects: for each \(\mathbf e\),
  \(Q=\bar Q_{\mathbf e}\), \(S=\bar S\), and \(h=\bar H\).
- Required assumptions and discharge:
  Proposition~\ref{prop:step-007-realizable} supplies exact
  realizability, and Lemma~\ref{lem:step-007-pool-iid} supplies the
  exact iid sample law.
- Conclusion used: the fiberwise PAC-good probability and expected
  mixture-risk bound in Proposition~\ref{prop:step-008-pac-expectation}.

### Standard result: Markov's inequality on a finite uniform arm

- Source or name: Markov's inequality.
- Restated statement in current notation: if \(Y\ge0\) and \(a>0\),
  then \(\Pr\{Y>a\}\le\mathbb E[Y]/a\).  In particular, for fixed
  nonnegative numbers \(y_1,\ldots,y_k\) and uniform \(J\),
  \[
  \Pr_J\{y_J>8\alpha_0\}
  \le\frac{k^{-1}\sum_{j=1}^k y_j}{8\alpha_0}.
  \tag{C8.2}
  \]
- Instantiated objects:
  \(y_j=L_{Q_{e_j}}(h\circ\phi_j)\), on a fiber where
  \(L_{\bar Q_{\mathbf e}}(h)\le\alpha_0\).
- Required assumptions and discharge: zero-one risks are nonnegative;
  \(\alpha_0=1/128>0\); Proposition~\ref{prop:step-008-exchangeability}
  identifies the arm average with the mixture risk; and
  Lemma~\ref{lem:step-008-ancillary} leaves \(J\) uniform after the
  allowed conditioning.
- Conclusion used: `(AUX)` in
  Proposition~\ref{prop:step-008-auxiliary}.

### Internal results used in target assembly

- Lemma~\ref{lem:step-008-ancillary}: the conditional ideal input/output
  law is independent of the uniform hidden designation.
- Proposition~\ref{prop:step-008-exchangeability}: the exact finite arm
  average is the ideal mixture risk, giving `(EX-c)` and `(EX)`.
- Proposition~\ref{prop:step-008-pac-expectation}: the ideal PAC-good
  event has fiberwise probability at least \(1-\beta_0\), and expected
  ideal mixture risk is at most \(\alpha_0+\beta_0\).
- Proposition~\ref{prop:step-008-transfer}: prior-average finite-game
  risk is the constructed hidden-arm risk and pays only the accepted
  overflow residual when transferred to the ideal run.
- Proposition~\ref{prop:step-008-utility}: the preceding interfaces and
  fixed constants imply the strict `(UT)` inequality.
- Proposition~\ref{prop:step-008-auxiliary}: conditional Markov gives
  `(AUX)` and its exact one-arm specialization.

No external paper result is used in this step.

## Local Derivation

### unit_001: lemma

**Lemma (The ideal run is ancillary to the hidden designation).**
\label{lem:step-008-ancillary}

Statement: Under accepted Lemma~\ref{lem:step-006-iid-latents} and
Lemma~\ref{lem:step-007-pool-iid}, if the ideal output is sampled from
\(\bar H\sim A(\bar S)\), then for every latent vector
\(\mathbf e\) and every \(a\in[k]\), the conditional law of
\((\bar S,\bar H)\) given
\((\mathbf E,J)=(\mathbf e,a)\) is independent of \(a\).  Consequently,

\[
\mathbb E\!\left[
\mathbf1\{J=a\}
\ \middle|\ \sigma(\mathbf E,\bar S,\bar H)
\right]
=\frac1k
\quad\text{almost surely},
\tag{1}
\]

and in particular \(J\) is conditionally independent of \(\bar H\)
given \(\mathbf E\).  The same remains true after conditioning on any
event measurable with respect to \((\mathbf E,\bar H)\) that has
positive conditional probability.

Proof / justification:

Accepted Lemma~\ref{lem:step-006-iid-latents} gives
\(\Pr\{J=a\mid\mathbf E=\mathbf e\}=1/k\).  Accepted
Lemma~\ref{lem:step-007-pool-iid} gives, for every \(a\),

\[
\mathcal L(\bar S\mid\mathbf E=\mathbf e,J=a)
=\bar Q_{\mathbf e}^{\,m},
\tag{2}
\]

whose right side contains no \(a\).  Conditional on any ideal input
\(s\), the output law is the same kernel \(A(\,\cdot\mid s)\), which
also contains no hidden-designation argument.  Therefore, for every
measurable set \(D\) of ideal input/output pairs,

\[
\begin{aligned}
&\Pr\{J=a,(\bar S,\bar H)\in D\mid\mathbf E=\mathbf e\}\\
&\quad=\frac1k
\int \mathbf1_D(s,h)
\,A(dh\mid s)\,\bar Q_{\mathbf e}^{\,m}(ds).
\end{aligned}
\tag{3}
\]

The integral in (3) is the conditional probability of
\((\bar S,\bar H)\in D\) given \(\mathbf E=\mathbf e\), so (3)
factorizes.  This proves (1) and the asserted conditional independence.
If \(D_0\) is measurable with respect to \((\mathbf E,\bar H)\), then
intersecting \(D\) with \(D_0\) preserves the same factorization.
Dividing by a positive conditional probability proves the final
conditioning statement.

The argument uses the iid common-experiment construction and the
`J`-free ideal kernel law.  A random permutation or an unverified
symmetry assertion is not used.

### unit_002: proposition

**Proposition (Exact hidden-arm and mixture-risk identity).**
\label{prop:step-008-exchangeability}

Statement: Under Lemma~\ref{lem:step-008-ancillary}, for every
\(\mathbf e=(e_1,\ldots,e_k)\) and every hypothesis
\(h:X\to\{0,1\}\),

\[
\frac1k\sum_{j=1}^k
L_{Q_{e_j}}(h\circ\phi_j)
=L_{\bar Q_{\mathbf e}}(h).
\tag{4}
\]

Consequently, the ideal random objects satisfy `(EX-c)` and `(EX)`.
This conclusion is exact and has no distribution-shift, arm-uniformity,
or surrogate-loss residual.

Proof / justification:

For fixed \(j\), the transported arm law is
\((T_j)_\#Q_{e_j}\).  By the definitions of \(T_j\), zero-one risk,
and \(\rho_j\),

\[
\begin{aligned}
L_{(T_j)_\#Q_{e_j}}(h)
&=\Pr_{(q,y)\sim Q_{e_j}}
  \{h(\phi_j(q))\ne y\}\\
&=L_{Q_{e_j}}(h\circ\phi_j).
\end{aligned}
\tag{5}
\]

Risk is affine in the data distribution.  Substituting `(T8.2)` and
then (5) gives

\[
L_{\bar Q_{\mathbf e}}(h)
=\frac1k\sum_{j=1}^kL_{(T_j)_\#Q_{e_j}}(h)
=\frac1k\sum_{j=1}^kL_{Q_{e_j}}(h\circ\phi_j),
\tag{6}
\]

which proves (4) pointwise, including hypotheses whose arm risks are
highly nonuniform.

By Lemma~\ref{lem:step-008-ancillary}, for every \(j\),
\(\mathbb E[\mathbf1\{J=j\}\mid
\sigma(\mathbf E,\bar H)]=1/k\) almost surely.  Since every arm risk
below is measurable with respect to \(\sigma(\mathbf E,\bar H)\),
linearity of conditional expectation and (4) imply

\[
\begin{aligned}
\mathbb E\!\left[
L_{Q_{E_J}}(\bar H\circ\phi_J)
\ \middle|\ \sigma(\mathbf E,\bar H)
\right]
&=\frac1k\sum_{j=1}^k
L_{Q_{E_j}}(\bar H\circ\phi_j)\\
&=L_{\bar Q_{\mathbf E}}(\bar H)
\quad\text{almost surely},
\end{aligned}
\tag{7}
\]

which is `(EX-c)`.  Taking total expectations proves `(EX)`.  This
conditional-expectation formulation does not require a regular
conditional distribution at each individual hypothesis value.  There
is no factor of \(k\), because the identity is the exact uniform
mixture average.

### unit_003: proposition

**Proposition (PAC conversion on every ideal-mixture fiber).**
\label{prop:step-008-pac-expectation}

Statement: Under Assumptions~\ref{assump:unrestricted-private-pac}
and~\ref{assump:minor-table}, accepted
Lemma~\ref{lem:step-007-pool-iid}, and accepted
Proposition~\ref{prop:step-007-realizable}, for every latent vector
\(\mathbf e\),

\[
\Pr\!\left\{
L_{\bar Q_{\mathbf e}}(\bar H)>\alpha_0
\ \middle|\ \mathbf E=\mathbf e
\right\}
\le\beta_0,
\tag{8}
\]

and

\[
\mathbb E\!\left[
L_{\bar Q_{\mathbf e}}(\bar H)
\ \middle|\ \mathbf E=\mathbf e
\right]
\le\alpha_0+\beta_0.
\tag{9}
\]

Hence \(\Pr(\mathsf G\mid\mathbf E=\mathbf e)\ge1-\beta_0>0\) and

\[
\mathbb E L_{\bar Q_{\mathbf E}}(\bar H)
\le\alpha_0+\beta_0.
\tag{10}
\]

Proof / justification:

Fix \(\mathbf e=(e_1,\ldots,e_k)\), with latent thresholds
\((t_1,\ldots,t_k)\).  Accepted
Proposition~\ref{prop:step-007-realizable} proves that
\(\bar Q_{\mathbf e}\) is realized exactly by
\(c_{(t_1,\ldots,t_k)}\in C\), and accepted
Lemma~\ref{lem:step-007-pool-iid} gives the exact sample law
\(\bar S\sim\bar Q_{\mathbf e}^{\,m}\).  Applying the primitive PAC
guarantee `(A8.1)` therefore proves (8).

Let
\(Z=L_{\bar Q_{\mathbf e}}(\bar H)\in[0,1]\).  Pointwise,

\[
Z
\le
\alpha_0\mathbf1\{Z\le\alpha_0\}
+\mathbf1\{Z>\alpha_0\}.
\tag{11}
\]

Taking the conditional expectation in (11) and using (8) gives

\[
\mathbb E[Z\mid\mathbf E=\mathbf e]
\le\alpha_0+\Pr\{Z>\alpha_0\mid\mathbf E=\mathbf e\}
\le\alpha_0+\beta_0,
\tag{12}
\]

which proves (9).  Equation (8) also gives the stated lower bound on
the good-event probability.  Finally, averaging (9) over
\(\mathbf E\sim\Pi^k\) proves (10).  The PAC failure is charged once
by bounded loss; there is no union bound over arms and no conditioning
of the unconditional utility conclusion on \(\mathsf G\).

### unit_004: proposition

**Proposition (Prior-average risk representation and sole-overflow transfer).**
\label{prop:step-008-transfer}

Statement: Under accepted Lemma~\ref{lem:step-006-iid-latents},
Proposition~\ref{prop:step-006-kernel}, and
Proposition~\ref{prop:step-007-output-transfer}, the outer
prior-average experiment satisfies

\[
\mathbb E_{e\sim\Pi}\bigl[\mathcal R_n(B_\Pi,e)\bigr]
=\mathbb E L_{Q_{E_J}}(G^{\rm con})
\le
\mathbb E L_{Q_{E_J}}(\bar H\circ\phi_J)+p_{\rm ov}.
\tag{13}
\]

The equality and inequality use the same latent experiment and
zero-one-risk target; overflow is the only residual.

Proof / justification:

By definition of finite-game risk, if an outer experiment
\(E_*\sim\Pi\) is followed by
\(S^{\rm real}\sim Q_{E_*}^n\) and
\(g\sim B_\Pi(S^{\rm real})\), then

\[
\mathbb E_{e\sim\Pi}\bigl[\mathcal R_n(B_\Pi,e)\bigr]
=\mathbb E L_{Q_{E_*}}(g).
\tag{14}
\]

Accepted Lemma~\ref{lem:step-006-iid-latents} realizes this experiment
by choosing uniform \(J\), setting \(E_J=E_*\), and completing the
other coordinates iid from \(\Pi\).  It proves that the resulting
vector has law \(\Pi^k\) independent of \(J\), while the external
sample still has conditional law \(Q_{E_J}^n\).  Accepted
Proposition~\ref{prop:step-006-kernel} and the law-preserving coupling
in `step_007` give \(g=G^{\rm con}\) in this representation.  Thus
the right side of (14) is exactly the middle term of (13).

Accepted Proposition~\ref{prop:step-007-output-transfer} applies to
the common measurable loss
\(L_{Q_{E_J}}(\cdot)\in[0,1]\) and gives

\[
\mathbb E L_{Q_{E_J}}(G^{\rm con})
\le\mathbb E L_{Q_{E_J}}(\bar G)+p_{\rm ov}.
\tag{15}
\]

By `(T8.3)`,
\(\bar G=\bar H\circ\phi_J\), so (15) is exactly (13).  The same
\(E_J\) appears in the constructed risk, the ideal risk, and the
finite-game objective; no experiment relabeling or surrogate target
is introduced.

### unit_005: proposition

**Proposition (Strict prior-average utility below the hard value).**
\label{prop:step-008-utility}

Statement: Under Propositions~\ref{prop:step-008-exchangeability},
\ref{prop:step-008-pac-expectation}, and
\ref{prop:step-008-transfer}, accepted
Lemma~\ref{lem:step-007-overflow}, and
Assumption~\ref{assump:fixed-parameter-scale}, the constructed kernel
satisfies `(UT)` with a strict upper bound below \(1/20\).

Proof / justification:

Proposition~\ref{prop:step-008-transfer}, then `(EX)` from
Proposition~\ref{prop:step-008-exchangeability}, and finally (10) from
Proposition~\ref{prop:step-008-pac-expectation} give

\[
\begin{aligned}
\mathbb E_{e\sim\Pi}\bigl[\mathcal R_n(B_\Pi,e)\bigr]
&\le
\mathbb E L_{Q_{E_J}}(\bar H\circ\phi_J)+p_{\rm ov}\\
&=
\mathbb E L_{\bar Q_{\mathbf E}}(\bar H)+p_{\rm ov}\\
&\le\alpha_0+\beta_0+p_{\rm ov}.
\end{aligned}
\tag{16}
\]

By `(A8.2)`,

\[
\alpha_0+\beta_0
=\frac1{128}+\frac1{32}
=\frac5{128}.
\tag{17}
\]

Accepted Lemma~\ref{lem:step-007-overflow} gives
\(p_{\rm ov}\le e^{-27/2}<1/1024\), and therefore

\[
\frac5{128}+p_{\rm ov}
<\frac5{128}+\frac1{1024}
=\frac{41}{1024}
<\frac1{20},
\tag{18}
\]

where the final strict inequality is equivalent to
\(20\cdot41=820<1024\).  Equations (16)--(18) prove `(UT)` exactly.
Every defect has been charged once: \(\beta_0\) for PAC failure and
\(p_{\rm ov}\) for the single overflow event.  Neither term is
multiplied by \(k\), \(m\), or the number of arm occurrences.

### unit_006: proposition

**Proposition (Conditional hidden-arm certificate and one-arm specialization).**
\label{prop:step-008-auxiliary}

Statement: Under Lemma~\ref{lem:step-008-ancillary},
Proposition~\ref{prop:step-008-exchangeability},
Proposition~\ref{prop:step-008-pac-expectation}, and
\(\alpha_0=1/128>0\), the ideal PAC-good event `(T8.5)` implies the
conditional certificate `(AUX)`.  If \(k=1\), its success probability
is one, the sole-arm risk is at most \(\alpha_0\), and accepted
Proposition~\ref{prop:step-007-boundaries} gives zero overflow and exact
ideal/constructed equality.

Proof / justification:

For every latent vector and ideal hypothesis define the nonnegative,
\(\sigma(\mathbf E,\bar H)\)-measurable arm risks

\[
Y_j:=L_{Q_{E_j}}(\bar H\circ\phi_j),
\qquad j\in[k].
\tag{19}
\]

On the event \(\mathsf G\), the pointwise identity (4) gives

\[
\frac1k\sum_{j=1}^kY_j
=L_{\bar Q_{\mathbf E}}(\bar H)
\le\alpha_0.
\tag{20}
\]

Lemma~\ref{lem:step-008-ancillary} gives
\(\mathbb E[\mathbf1\{J=j\}\mid
\sigma(\mathbf E,\bar H)]=1/k\) almost surely.  Conditional Markov,
written as its finite-arm sum, therefore yields on \(\mathsf G\)

\[
\begin{aligned}
&\Pr\!\left\{
Y_J>8\alpha_0
\ \middle|\ \sigma(\mathbf E,\bar H)
\right\}\\
&\quad=\frac1k\sum_{j=1}^k
\mathbf1\{Y_j>8\alpha_0\}\\
&\quad\le\frac1{8\alpha_0 k}\sum_{j=1}^kY_j
\le\frac18.
\end{aligned}
\tag{21}
\]

Proposition~\ref{prop:step-008-pac-expectation} gives
\(\Pr(\mathsf G\mid\mathbf E=\mathbf e)\ge1-\beta_0>0\), so the
conditioning in `(AUX)` is legitimate under the canonical fiber law.
Because \(\mathsf G\) is measurable with respect to
\(\sigma(\mathbf E,\bar H)\), the tower property applied to (21) gives

\[
\Pr\!\left\{
L_{Q_{E_J}}(\bar H\circ\phi_J)>8\alpha_0
\ \middle|\ \mathbf E=\mathbf e,\mathsf G
\right\}
\le\frac18,
\tag{22}
\]

for every canonical latent fiber, and hence \(\Pi^k\)-almost surely.
This is equivalent to `(AUX)`.  Assumption~\ref{assump:fixed-parameter-scale}
gives \(8\alpha_0=8/128=1/16\).

When \(k=1\), identity (4) says that the sole-arm risk equals the
mixture risk.  Thus on \(\mathsf G\) it is at most
\(\alpha_0<8\alpha_0\), so `(AUX)` holds with probability one rather
than merely \(7/8\).  Accepted
Proposition~\ref{prop:step-007-boundaries} additionally gives
\(p_{\rm ov}=0\) and sure equality of the ideal and constructed runs.
The auxiliary and utility interfaces therefore reduce to the ordinary
one-chain PAC conversion without a stopped, conditional, or
remainder-bearing weakening.

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-006-iid-latents} supplies an iid common
latent vector independent of the uniform hidden designation, and
accepted Lemma~\ref{lem:step-007-pool-iid} supplies an ideal learner
input whose conditional product law depends on that vector but not on
the designation.  Lemma~\ref{lem:step-008-ancillary} pushes this
independence through the arbitrary learner kernel, proving that \(J\)
is still uniform after the latent vector and ideal output are observed.

Proposition~\ref{prop:step-008-exchangeability} then proves the exact
pointwise equality between the uniform average of transported arm risks
and the ideal mixture risk.  Combining that deterministic identity with
the conditional uniformity of \(J\) gives `(EX-c)` and `(EX)` without
assuming uniform arm performance or invoking a permutation argument.

Accepted Proposition~\ref{prop:step-007-realizable} places every ideal
mixture within the primitive distribution-free realizable PAC guarantee.
Proposition~\ref{prop:step-008-pac-expectation} applies that guarantee on
each latent fiber, charges the unit-bounded risk on the PAC-failure event,
and obtains expected mixture risk at most
\(\alpha_0+\beta_0\).

Proposition~\ref{prop:step-008-transfer} identifies the prior-average
finite-game objective with the constructed hidden-arm risk in the same
outer completion and applies the accepted diagonal coupling.  The ideal
hidden-arm risk is the only main term and \(p_{\rm ov}\) is the only
residual.  Proposition~\ref{prop:step-008-utility} composes this transfer
with `(EX)` and the PAC expectation bound, then proves
\(5/128+e^{-27/2}<1/20\) by the explicit integer comparison
\(820<1024\).  This is precisely `(UT)`.

Finally, Proposition~\ref{prop:step-008-auxiliary} conditions only on
the proved ideal PAC-good event and the iid latent vector.  The exact
arm average is then at most \(\alpha_0\), so Markov's inequality over
the conditionally uniform designation gives threshold
\(8\alpha_0=1/16\) with probability at least \(7/8\).  The same
proposition proves probability one and zero overflow at \(k=1\).
These named results jointly prove the exact accepted `step_008` claim
and export `(EX)`, `(UT)`, and `(AUX)` to `step_009` without using the
hard-prior lower value or the final contradiction.

## Explicit Rate Audit

- Exposed variables: \(m,k,N,\varepsilon_0,\delta_m\),
  \(n=\lceil2m/k\rceil+12\), the latent vector \(\mathbf E\), uniform
  \(J\), fixed \(\alpha_0=1/128\), fixed \(\beta_0=1/32\), and
  \(p_{\rm ov}\).
- Hidden constants may depend on: none introduced in this step.  The
  factor \(8\), threshold \(1/16\), and numerical utility margins are
  displayed exactly.  The prior and overflow interface retain only
  their accepted dependency parameters.
- Hidden constants may not depend on: \(C,X,m,k,N,\varepsilon_0,
  \delta_m\), the learner, the minor embeddings, the latent
  experiments, the prior realization, the hidden arm, the ideal sample,
  or learner randomness.
- Fixed quantities: \(\alpha_0,\beta_0\), zero-one loss, replacement
  adjacency, the accepted hidden-arm construction, and the uniform arm
  mixture.
- Probability mode: the antecedent is high-probability PAC on every
  fixed realizable mixture; `(UT)` is an expectation over the prior,
  real and simulated samples, arm/designation coins, pools, and learner
  randomness; `(EX-c)` is conditional on \((\mathbf E,\bar H)\); and
  `(AUX)` is conditional on \((\mathbf E,\mathsf G)\), with probability
  over uniform \(J\) and remaining ideal learner randomness.
- Horizon mode: fixed sample with \(m\) learner records and \(n\)
  external records.  No uniform-time, stopping-time, asymptotic, or
  all-time upgrade occurs.
- Norm mode: zero-one population risk on \(\bar Q_{\mathbf E}\) and on
  the exact one-arm empirical laws \(Q_{E_j}\).
- Admissibility conditions and auxiliary tolerances: the accepted
  `step_006` and `step_007` interfaces, the three named setting
  assumptions, and \(\alpha_0>0\).  There is no new event assumption,
  confidence parameter, mesh, or tolerance.  The good event in `(AUX)`
  is generated by the ideal run and has proved conditional probability
  at least \(1-\beta_0\).
- Term absorption or simplification inequalities:
  \[
  \alpha_0+\beta_0=\frac5{128},
  \qquad
  p_{\rm ov}<\frac1{1024},
  \qquad
  \frac5{128}+\frac1{1024}=\frac{41}{1024}<\frac1{20},
  \]
  with the final comparison proved by \(820<1024\).  For `(AUX)`,
  \((k^{-1}\sum_jL_j)/(8\alpha_0)\le1/8\).
- Probability conversion: bounded loss converts PAC failure to one
  additive \(\beta_0\); conditional uniformity plus the exact mixture
  identity gives `(EX)`; the accepted coupling adds one
  \(p_{\rm ov}\); and conditional Markov gives `(AUX)`.  No union bound
  over arms, privacy composition, or multiplication by \(k\) or \(m\)
  occurs.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact upper side `(UT)` of the final contradiction and the R3
  confidence statement, retaining all R2/R3 modes and constants.
- Baseline-reduction check: at \(k=1\), \(J=1\), the arm-mixture
  identity is tautological, accepted `step_007` gives
  \(p_{\rm ov}=0\) and pathwise ideal/constructed equality, the PAC
  conversion is the ordinary one-chain conversion, and `(AUX)` holds
  with probability one.  The inherited one-chain conclusion is not
  weakened by a universal overflow remainder or conditional surrogate.

## Blockers

None.

## Notation And Assumption Notes

- \(\mathbf E,J,B_\Pi,G^{\rm con}\): `public-facing` accepted
  dependency objects.  Their iid/independence, outer-completion, kernel,
  and constructed-output interfaces are supplied by accepted
  `step_006` results.
- \(T_j\) and \(\rho_j\): `appendix-local` accepted transport and
  restriction maps, directly defined from the setting's \(\phi_j\).
- \(\bar Q_{\mathbf E},\bar S\): `public-facing` accepted `step_007`
  outputs.  Their exact iid law and realizability are proved by accepted
  Lemma~\ref{lem:step-007-pool-iid} and
  Proposition~\ref{prop:step-007-realizable}; neither property is
  assumed as a primitive generated invariant.
- \(\bar H\) and \(\bar G=\rho_J(\bar H)\): `appendix-local` ideal
  learner/output objects.  Lemma~\ref{lem:step-008-ancillary} proves
  their required conditional independence from \(J\); it is not assumed.
- \(\mathsf O,p_{\rm ov}\): `public-facing` accepted generated event
  and probability.  Their provenance and uniform bound are accepted
  `step_007` conclusions.
- \(\mathsf G\): `public-facing` for the R3 auxiliary interface.  It is
  the generated ideal PAC-good event defined directly in `(T8.5)`;
  Proposition~\ref{prop:step-008-pac-expectation} proves its conditional
  probability is at least \(1-\beta_0\).  It is not used as an
  unconditional theorem assumption.
- A fixed latent vector \(\mathbf e\), ideal hypothesis \(h\), and the
  arm-risk list
  \(L_{Q_{e_j}}(h\circ\phi_j)\): `proof-local` quantified objects used
  to expose the deterministic mixture identity and Markov calculation.
  No helper constant or boundedness assumption is attached to them;
  each risk is setting-defined and lies in \([0,1]\).
- \(\alpha_0,\beta_0\): `public-facing` primitive fixed constants from
  Assumption~\ref{assump:fixed-parameter-scale}.  The quantities
  \(5/128\), \(8\alpha_0=1/16\), \(41/1024\), and the \(7/8\)
  probability are directly derived in named local propositions.
- Constant provenance: the factor \(8\) is the explicit R3 multiplier
  in the accepted sketch; \(27/2\) and \(1/1024\) are inherited from
  accepted Lemma~\ref{lem:step-007-overflow}; all remaining numerical
  quantities are exact arithmetic from the fixed PAC constants.  No
  hidden constant, threshold, radius, or tolerance is introduced.
- Assumption provenance: PAC and the fixed constants are primitive;
  iid latent experiments, ideal iid sampling, mixture realizability,
  constructed/ideal coupling, and overflow control are accepted derived
  outputs; ancillarity, `(EX)`, expected PAC utility, the prior-average
  transfer, `(UT)`, and `(AUX)` are proved by the six named local units.
- Conditional-independence audit: the factorization (3), not a
  permutation, proves that the ideal run is ancillary to \(J\).  Since
  \(\mathsf G\) depends only on \((\mathbf E,\bar H)\), conditioning on
  it cannot bias the uniform designation.
- Residual audit: `(EX)` has zero residual; PAC failure contributes one
  \(\beta_0\); the ideal/constructed transfer contributes one
  \(p_{\rm ov}\); and `(AUX)` uses no overflow transfer because it is
  explicitly an ideal-run conditional statement.
- Boundary audit: highly nonuniform arm risks are handled by exact
  averaging and Markov; deterministic learner outputs require no change;
  PAC failure is charged by the unit risk bound; \(k=1\) has a sole arm,
  zero overflow, exact ideal/constructed equality, and auxiliary success
  probability one.
- Scope audit: this proof does not use the hard-prior value `(HP)`, the
  `step_009` admissibility conversion, or any all-time/generated
  recurrence.  It exports only `(EX)`, `(UT)`, and `(AUX)`.
- Diagnostic boundary: `global_proof.md` was not read or used.  It
  supplied no proof evidence, cited result, assumption, notation, or
  authority to change the target claim.
