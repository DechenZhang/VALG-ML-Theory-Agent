# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_008
- Unit attempt: 1

## Target Step Claim

- Intended claim: Prove all localization/refinement query sets were fixed
  before any message and Borel, \(Y_i^0\) costs no bit, each sample
  transmits exactly one bit, and decoder selection adds no query. Then
  integrate the conditional result, show failure at most
  \(\delta/4+\delta/2\leq\delta\), and prove
  \(N_{\rm loc}+N_{\rm ref}\leq C_kr_k\) with all ceilings and
  localization-confidence terms explicitly absorbed.
- Depends on: step_001, step_002, step_003, step_004, step_005, step_006,
  and step_007.
- Assumptions used: Primitive assumptions assump:parameter-domain,
  assump:moment-class, assump:independent-samples, and
  assump:precommitted-protocol. Derived inputs are every named output of
  step_001 through step_007.
- Technical challenge: Final generated-output closure must preserve zero
  adaptivity, unconditional PAC mode, all parameter dependence, and
  baseline exactness simultaneously.
- Intended proof tool or cited result: Tower property and conditioning,
  union and triangle bounds, Borel/precommitment audit, ceiling
  inequalities, the step_006 regime substitutions, and the positive
  \(k\)-only lower bound for \(A_k\).
- Output target: The exact formalized theorem, including the one-bit
  fixed-horizon protocol certificate, unconditional uniform confidence,
  and all three public sample rates.
- Rate objective: Full Rate Specialization Bridge. Verify the auxiliary
  choices, \(H_\star/h_0\geq2\), tail and group thresholds, all ceilings,
  probability conversion, absorption of \(1+\log(4/\delta)\), final
  hidden-constant dependence only on \(k\), and the exact
  supported-in-\(J_0\) and point-mass baselines.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

### Primitive conditions

- assump:parameter-domain: \(k>1\) is fixed and known,
  \(\lambda\geq\sigma>0\), \(0<\epsilon\leq c_k\sigma\), and
  \(\delta\in(0,1/2)\). It supplies the deterministic parameter domain,
  positive logarithms used below, and the fixed-\(k\) interpretation of all
  design constants.
- assump:moment-class: \(D\in\mathcal D(k,\lambda,\sigma)\), with
  \(\mu(D)\in[-\lambda,\lambda]\) and
  \(\mathbb E_D|X-\mu(D)|^k\leq\sigma^k\), without any support,
  density, symmetry, or tail-shape restriction. Its derived localization,
  variance, and tail consequences are used only through accepted dependency
  results.
- assump:independent-samples: the two sample blocks and their public seeds
  have the setting-defined independent product law. This is the primitive
  source of the localization/refinement separation and the conditional
  product kernel used by the accepted concentration result.
- assump:precommitted-protocol: the split, all query seeds, complete
  countable mask families, dithers, and groups are fixed before any response,
  and decoder randomness is available to the decoder. The present step
  proves that the actual query formulas satisfy this timing condition and
  that decoder use of \(c\) creates no additional query.

### Derived invariants supplied by accepted dependencies

All seven dependency pairs were verified at the controller-supplied hashes
before use.

- The accepted step_001 pair consists of proof SHA-256
  3a2ebe803850bbf2555a703a69cf406adbeda503710d10de19f9eb286907443a
  and review SHA-256
  1ca80220cdd1e5461b633723557ecfe7e95f0dc293ecb78163dd8488790ff8cc.
  It supplies an always-defined, deterministic, precommitted Borel
  localization block; one bit per localization sample; the localization
  sigma-field \(\mathscr L_{\rm loc}\); the event
  \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\) with failure at most
  \(\delta/4\); independence of the refinement block; and
  \[
    N_{\rm loc}\leq C_{{\rm loc},k}
    \left[1+\log\frac{\lambda}{\sigma}+\log\frac4\delta\right],
    \qquad C_{{\rm loc},k}=10001.
  \]
- The accepted step_002 pair consists of proof SHA-256
  4d6547f9389cc8a94f6ca170ca7c6059e61ee14d0232b6441d1ce333ea2cce0c
  and review SHA-256
  769af821c4dce2faef07c8012cb794675f57d547b2a1bafd64d39d1a05e90b41.
  It supplies the always-defined Borel decoder path, exact ring partition,
  all half-open endpoint and negative-index geometry, exact
  supported-in-\(J_0\) higher-ring inactivity, and the jointly Borel,
  \([-1,1]\)-valued, precommitted refinement functions \(F_i\) and Borel
  superlevel queries \(A_i\), whose formulas contain no \(c\).
- The accepted step_003 pair consists of proof SHA-256
  ddcf7eacf03321017a37385ee1c9f27df6c27dd5f92c7f0dc1e3a1258e5432d6
  and review SHA-256
  b8ba2452221e43bff2ac130021d751f3f3ad5ad5c5db07113dc2c36e0fdcafa6.
  It supplies the exact conditional mean
  \[
    \mathbb E[W_i(c)\mid X_i=x,c]
      =(x-m_0){\bf1}_{J_{S,j_S}}(x),
  \]
  the sole outer-residual decomposition, exact alias cancellation, exact
  level-zero reduction on support in \(J_{0,j_0}\), and seedwise zero
  correction when \(D\{m_0\}=1\).
- The accepted step_004 pair consists of proof SHA-256
  cef249f560113a361858decc545ab21ac4c6a87e8fe597bc6c0758634e859b88
  and review SHA-256
  6a0c5da318dc225facc59ad371c3b61b95fde2daea0d1511a1a9a29bf9c761d8.
  It supplies the all-target-and-alias activation ledger, uniform in the
  finite level horizon, and its exact zero charge at \(x=m_0\) and on the
  supported-in-\(J_0\) higher-level baseline.
- The accepted step_005 pair consists of proof SHA-256
  afebc25c4a8ca7376c3ea7206f432cbd5d912235a533bb5c2d04868453e72acd
  and review SHA-256
  840d53f892d3ad04cf523b5941d11fada8aad98cf9f22e5daa6812b688c06feb.
  It supplies, on \(\mathcal E_{\rm loc}\), the exact-statistic conditional
  variance bound
  \[
    \operatorname{Var}(W_i(c)\mid c)
      \leq C_k^{\rm var}\sigma^kZ_S,
  \]
  including all aliases, an exact level-zero baseline, a zero point-mass
  variance, and exactly one factor \(Z_S=S+1\) when \(k=2\).
- The accepted step_006 pair consists of proof SHA-256
  03db63c21866407fd8794d8ebadfa3c1d87f89ef0c1ee27bb0e3d65b61579292
  and review SHA-256
  99cbf02399bb67022e1ab14ada9529f39a9948254bbf62a9fa622cf97a6af7f2.
  It supplies legal \(k\)-only choices of \(b_k,c_k\), the exact dyadic
  rounding \(H_\star\leq H<2H_\star\), the tail residual at most
  \(\epsilon/4\), its exact zero-tail baseline, and the three two-sided
  bounds for
  \[
    A_k:=\frac{\sigma^kZ_S}{\epsilon^2},
  \]
  including an explicit positive \(k\)-only lower bound.
- The accepted step_007 pair consists of proof SHA-256
  a65ed90479f1cc53e367baf63cbb9fddd87098cd3088ca5c72399c51b11bf9ee
  and review SHA-256
  9c150dd32b01b250ceb6a522e51862e988cfdb5ea5cdb431b7c296ce79a661dc.
  It supplies the legal choices
  \(\beta_k=16C_k^{\rm var}\), \(\alpha_k=4\), the exact block and odd-group
  counts, and the indicator-valued conditional interface
  \[
    {\bf1}_{\mathcal E_{\rm loc}}
    \Pr\{|\widehat\mu-\mu|>\epsilon\mid\mathscr L_{\rm loc}\}
    \leq\frac\delta2{\bf1}_{\mathcal E_{\rm loc}}.
  \]
  On its refinement-success event, the sharper deterministic conclusion is
  \(|\widehat\mu-\mu|\leq3\epsilon/4<\epsilon\).

### Local conditional hypotheses

None is used to prove the unconditional target. The event
\(\mathcal E_{\rm loc}\) and the conditional refinement-success interface
are accepted derived outputs and are integrated out in this step. The
conditions \(D(J_{0,j_0(c)})=1\) and \(D\{m_0(c)\}=1\) occur only in the
baseline-specialization proposition; they are not theorem-facing
assumptions for the unrestricted population.

## Local Lemma Map

Atomic step = no. Query legality, communication accounting, probability
conversion, ceiling absorption, public regime specialization, and baseline
invariance are independent non-atomic obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:precommitted-protocol}\), together with the accepted localization-query certificate and Proposition~\(\ref{prop:step-002-queries}\), every localization and refinement query is Borel and fixed before the first response, including every countable-mask realization, and decoder selection of \(c,j_s,b_s,m_s,R_s(c)\) changes no query. | Proves Borel legality and exact zero adaptivity for both blocks. |
| unit_002 | proposition | Under Assumption~\(\ref{assump:precommitted-protocol}\), Proposition~\(\ref{prop:step-008-query-legality}\), and the setting definitions, the horizon is fixed, every used sample transmits exactly one bit, \(Y_i^0\) is computed from stored public dither and costs no bit, and all path selection and importance weighting are decoder-only computations. | Proves exact communication and fixed-horizon accounting. |
| unit_003 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:moment-class}\), \(\ref{assump:independent-samples}\), and \(\ref{assump:precommitted-protocol}\), the accepted step_001 and step_007 probability interfaces imply uniformly in \(D\) that \(\Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta/4+\delta/2\leq\delta\). | Converts the local conditional statement to the exact unconditional PAC mode. |
| unit_004 | proposition | Under Assumption~\(\ref{assump:parameter-domain}\), the accepted localization count, scale, rate-nondegeneracy, and block/group count conclusions imply, after all source, scale, block, and group ceilings are checked, \(N_{\rm loc}+N_{\rm ref}\leq\widetilde C_k[\log(\lambda/\sigma)+A_k\log(1/\delta)]\), where \(\widetilde C_k\) depends only on fixed \(k\). | Explicitly absorbs block/group ceilings and the additive localization-confidence cost using \(A_k\geq\underline A_k>0\). |
| unit_005 | proposition | Under Assumption~\(\ref{assump:parameter-domain}\), Proposition~\(\ref{prop:step-008-technical-rate}\), and the accepted three upper bounds for \(A_k\), there is a finite \(C_k\) depending only on fixed \(k\) such that \(N_{\rm loc}+N_{\rm ref}\leq C_kr_k(\lambda,\sigma,\epsilon,\delta)\) in each of the regimes \(k>2\), \(k=2\), and \(1<k<2\). | Completes the public Rate Specialization Bridge with no hidden parameter dependence. |
| unit_006 | proposition | Under the accepted ring, mean, activation, variance, tail, and concentration interfaces, for any fixed decoder output, support in the selected \(J_{0,j_0(c)}\) makes every retained higher statistic and the tail residual exactly zero, while \(D\{m_0(c)\}=1\) makes every refinement correction zero and \(\widehat\mu=m_0=\mu\). | Preserves the exact supported-in-selected-\(J_0\) and point-mass baselines. |

## Cited Result Applications

No external paper result is applied directly in this final step. The only
paper-dependent localization statement is already packaged in the accepted
step_001 proof/review pair. Each accepted dependency used below is restated
in current notation with its assumption discharge and exact conclusion.

### Accepted step_001 localization, cost, and conditioning result

The accepted pair identified above states under all four primitive
assumptions that the localization block uses precommitted Borel one-bit
queries and returns an interval and midpoint \(c\) on every transcript. It
also states that \(\mathcal E_{\rm loc}\in\mathscr L_{\rm loc}\),
\(\Pr_D(\mathcal E_{\rm loc}^c)\leq\delta/4\), the refinement block is
independent of \(\mathscr L_{\rm loc}\), and the displayed localization
count holds. The current objects are exactly the setting's localization
sets, bits, decoder output, event, and count. Assumptions
assump:parameter-domain, assump:moment-class, assump:independent-samples,
and assump:precommitted-protocol were discharged inside that accepted pair.
The query certificate is used by
Proposition~\(\ref{prop:step-008-query-legality}\), the count by
Proposition~\(\ref{prop:step-008-technical-rate}\), and the event and
sigma-field by Proposition~\(\ref{prop:step-008-pac}\).

### Accepted step_002 path, Borel-query, and inactivity result

The accepted pair states under assump:parameter-domain and
assump:precommitted-protocol, using only the always-defined scalar from
step_001, that every realized \(F_i\) is a Borel map into \([-1,1]\),
jointly Borel in its countable precommitted mask seed, and that
\(A_i=\{x:F_i(x)\geq U_i\}\) is Borel and contains no decoder-selected
object in its definition. It also proves that all path objects are
post-transcript Borel functions and that every retained higher target or
same-color alias ring is inactive on \(J_{0,j_0}\). These are the exact
setting objects, with no surrogate convention. They are used by
Propositions~\(\ref{prop:step-008-query-legality}\),
\(\ref{prop:step-008-one-bit}\), and
\(\ref{prop:step-008-baseline}\).

### Accepted step_003 exact mean and baseline result

The accepted pair states under assump:independent-samples and
assump:precommitted-protocol, using the accepted conditioning and path
interfaces, that all level/color/branch/type/dither probabilities invert
exactly, aliases cancel in mean, and
\[
  \mu-m_0
  =\theta(c)+\mathbb E_D[(X-m_0){\bf1}_{J_{S,j_S}^c}(X)\mid c].
\]
It also states that support in \(J_{0,j_0}\) leaves only the level-zero
statistic and zero outer residual, and that \(D\{m_0\}=1\) gives
\(W_i(c)=0\) for every refinement-seed realization. Those exact conclusions
are used by Proposition~\(\ref{prop:step-008-baseline}\); their target
transfer is already incorporated into the accepted step_007 error event
used by Proposition~\(\ref{prop:step-008-pac}\).

### Accepted step_004 activation result

The accepted pair states under assump:parameter-domain and
assump:precommitted-protocol that every retained target or alias activation
is charged by the same residual moment, with an \(S\)-uniform finite
\(k\)-only budget, and that the higher-level charge is exactly zero at
\(x=m_0\) and on \(J_{0,j_0}\). Its all-alias conclusion is the certified
input to the accepted step_005 variance result, while its exact zero-charge
conclusion is used directly by Proposition~\(\ref{prop:step-008-baseline}\).

### Accepted step_005 variance result

The accepted pair states under assump:moment-class,
assump:independent-samples, and assump:precommitted-protocol, and on the
step_001-produced event \(\mathcal E_{\rm loc}\), that the exact
refinement statistic has variance at most
\(C_k^{\rm var}\sigma^kZ_S\), with \(C_k^{\rm var}\) depending only on
fixed \(k\). It includes every alias, has one factor \(Z_S\) at \(k=2\),
and preserves exact level-zero and point-mass reductions. The accepted
step_007 result already applies this variance to choose
\(\beta_k=16C_k^{\rm var}\);
Proposition~\(\ref{prop:step-008-technical-rate}\) uses that choice, and
Proposition~\(\ref{prop:step-008-baseline}\) uses the baseline clauses.

### Accepted step_006 scale, tail, and three-regime result

The accepted pair states under assump:parameter-domain and
assump:moment-class, using step_001 through step_003, that one may choose
\[
  b_k=\max\{a_k,(4C_k^{\rm rec})^{1/(k-1)}\},
  \qquad
  0<c_k\leq\min\left\{\frac12,
    \left(\frac{b_k}{2a_k}\right)^{k-1}\right\}.
\]
For every allowed \(\epsilon\), it then proves
\(H_\star/h_0\geq2\), \(S\geq1\),
\(H_\star\leq H<2H_\star\), and tail residual at most
\(\epsilon/4\). It also proves the exact two-sided \(A_k\) bounds in all
three regimes, including a positive \(k\)-only lower bound and the exact
zero-tail baseline. These conclusions discharge every auxiliary scale and
tail condition in Propositions~\(\ref{prop:step-008-technical-rate}\),
\(\ref{prop:step-008-public-rate}\), and
\(\ref{prop:step-008-baseline}\).

### Accepted step_007 conditional accuracy and count result

The accepted pair states under assump:parameter-domain,
assump:independent-samples, and assump:precommitted-protocol, using the
accepted mean, variance, and tail interfaces, that with
\[
  \beta_k=16C_k^{\rm var},\qquad \alpha_k=4,
  \qquad B_{\rm ref}=\lceil\beta_kA_k\rceil,
  \qquad G_\delta=2\left\lceil4\log\frac8\delta\right\rceil+1,
\]
the fixed groups give the indicator-valued conditional failure inequality
displayed above. The objects are precisely the setting's block size, odd
group count, group means, median, and final estimator. Its hypotheses are
discharged by the named primitive assumptions and accepted dependencies;
no cellwise event or frozen refinement seed is used.
Proposition~\(\ref{prop:step-008-pac}\) integrates this conclusion, while
Proposition~\(\ref{prop:step-008-technical-rate}\) checks both remaining
ceilings.

### Elementary tower and ceiling facts

If \(E\in\mathscr F\) and \(A\) is an event, then the defining property of
conditional expectation gives
\[
  \Pr(A\cap E)
  =\mathbb E[{\bf1}_E{\bf1}_A]
  =\mathbb E[{\bf1}_E\Pr(A\mid\mathscr F)].
\]
This is applied with \(\mathscr F=\mathscr L_{\rm loc}\) and
\(E=\mathcal E_{\rm loc}\). For every real \(z>0\),
\(z\leq\lceil z\rceil<z+1\). The latter follows directly from the defining
integer property of the ceiling. These facts are used only after their
measurability and positivity hypotheses have been supplied by the accepted
dependencies.

### Local result applications

- Proposition~\(\ref{prop:step-008-query-legality}\) is proved in unit_001
  from the two accepted query certificates and primitive precommitment. It
  is used by Proposition~\(\ref{prop:step-008-one-bit}\).
- Proposition~\(\ref{prop:step-008-one-bit}\) is proved in unit_002 from
  the setting message definitions and the query-legality proposition. It
  is used in the target-step assembly.
- Proposition~\(\ref{prop:step-008-pac}\) is proved in unit_003 from the
  accepted indicator-valued conditional result and the tower identity. It
  is used in the target-step assembly.
- Proposition~\(\ref{prop:step-008-technical-rate}\) is proved in unit_004
  from all accepted ceiling and lower-scale interfaces. It is used by
  Proposition~\(\ref{prop:step-008-public-rate}\).
- Proposition~\(\ref{prop:step-008-public-rate}\) is proved in unit_005 by
  substituting the three accepted upper bounds for \(A_k\). It is used in
  the target-step assembly.
- Proposition~\(\ref{prop:step-008-baseline}\) is proved in unit_006 from
  the accepted exact inactivity, mean, variance, tail, and concentration
  clauses. It is used in the target-step assembly as the baseline-invariance
  certificate.

## Local Derivation

### unit_001: proposition

**Proposition (Precommitted Borel query certificate).**
\(\label{prop:step-008-query-legality}\)
Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:precommitted-protocol}\), together with the accepted
localization-query certificate in
Proposition~\(\ref{prop:step-001-localization}\) and the
accepted refinement-query certificate in
Proposition~\(\ref{prop:step-002-queries}\), every query set used by the
two-block protocol is Borel and is fixed before the first response bit is
observed. This includes every realized countable mask family. The later
decoder choice of \(c,j_0,(j_s,b_s),m_s,d_s,R_s(c)\), and the retained
coefficients in \(W_i(c)\) changes no query and introduces no new query.

**Proof / justification.** For the localization block, the accepted
Proposition~\(\ref{prop:step-001-localization}\) converts each deterministic
source bit function into a Borel inverse-image set
\(\mathcal B_i(R_{\rm loc})\). The codebook, clipped bins, minimum-index
tie rule, sample count, and degenerate seed are functions only of the known
\((\lambda,\sigma,\delta)\). Hence every localization set is fixed before
any response. The zero-query source branch has \(N_{\rm loc}=0\), so its
query family is empty and satisfies the same assertion.

For a refinement index \(i\), the complete seed
\((L_i,C_i,T_i,B_i,(\rho_{i,s,j})_{s,j},U_i)\), with the inapplicable
level-zero variables omitted or assigned dummy values, is drawn before any
message by Assumption~\(\ref{assump:precommitted-protocol}\). The accepted
Proposition~\(\ref{prop:step-002-queries}\) proves that the displayed
countable sum \(F_i\) is jointly Borel in \(x\) and this seed, pointwise
stabilizes because at most one same-color ring is active, and satisfies
\(|F_i(x)|\leq1\). Thus for every realized seed and dither,
\[
  A_i=\{x\in\mathbb R:F_i(x)\geq U_i\}
\]
is Borel. The defining formula uses the global grid and its pre-drawn
level, color, type, branch, mask, and dither variables. It contains no
\(c\), localization bit, selected target cell, selected path color, or
earlier refinement response.

Only after the complete localization and refinement transcripts have been
received does the decoder evaluate the accepted Borel map
\(c\mapsto(j_0,j_s,b_s,m_s,d_s,R_s(c))\). It then uses these values to
retain or discard already-received bits and to form \(W_i(c)\). No sample
is queried at that time, and none of the already-fixed sets
\(\mathcal B_i\) or \(A_i\) is changed. This proves simultaneous
precommitment, Borel legality, and exact nonadaptivity, including arbitrary
atoms on every half-open boundary and every localization-failure output.
\(\square\)

### unit_002: proposition

**Proposition (Exact one-bit communication and fixed horizon).**
\(\label{prop:step-008-one-bit}\)
Under Assumption~\(\ref{assump:precommitted-protocol}\),
Proposition~\(\ref{prop:step-008-query-legality}\), and the setting
definitions, the protocol has the deterministic non-stopping horizon
\[
  n=N_{\rm loc}+N_{\rm ref},
  \qquad N_{\rm ref}=G_\delta B_{\rm ref}.
\]
Every one of these \(n\) independent samples transmits exactly one bit.
The baseline \(Y_i^0={\bf1}\{0\geq U_i\}\) is computed by the decoder from
stored public randomness and transmits no bit, and decoder path selection
or importance weighting transmits and queries nothing further.

**Proof / justification.** The localization horizon is selected from the
known parameters before any localization observation. In the nontrivial
source branch, each \(i\in I_{\rm loc}\) produces exactly
\[
  Y_i^{\rm loc}={\bf1}\{X_i\in\mathcal B_i(R_{\rm loc})\}\in\{0,1\}.
\]
There is no other sample-dependent localization message. In the trivial
branch \(N_{\rm loc}=0\), so there is no unused localization sample to
account for.

The values \(B_{\rm ref}\) and \(G_\delta\), the set \(I_{\rm ref}\), and
its partition into \(G_\delta\) groups of size \(B_{\rm ref}\) are
deterministic functions of the known parameters and fixed \(k\)-only design
constants. For each \(i\in I_{\rm ref}\), the only sample-dependent message
is
\[
  Y_i={\bf1}\{X_i\in A_i\}\in\{0,1\}.
\]
The dither \(U_i\) is public and stored at the decoder before transmission,
so
\[
  Y_i^0={\bf1}\{0\geq U_i\}
\]
is a deterministic decoder computation, not a message. After receiving
\(Y_i\), the decoder forms \(\Delta Y_i=Y_i-Y_i^0\) locally. It likewise
forms the selected path, \(W_i(c)\), the fixed group means, their median,
and \(\widehat\mu\) only from the received one-bit transcript and stored
public randomness. Public seeds are not sample messages, and none depends
on a response. Thus every sample in the fixed split contributes exactly
one transmitted bit, \(Y_i^0\) contributes zero, and the horizon neither
stops nor changes with data, messages, seeds, or localization success.
\(\square\)

### unit_003: proposition

**Proposition (Unconditional uniform PAC conversion).**
\(\label{prop:step-008-pac}\)
Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\),
\(\ref{assump:independent-samples}\), and
\(\ref{assump:precommitted-protocol}\), the accepted localization result
Proposition~\(\ref{prop:step-001-localization}\) and conditional-accuracy
result Proposition~\(\ref{prop:step-007-conditional-accuracy}\) imply,
for every \(D\in\mathcal D(k,\lambda,\sigma)\),
\[
  \Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}
  \leq\frac\delta4+\frac\delta2
  =\frac{3\delta}{4}\leq\delta.
\]
The probability is unconditional over both sample blocks and every
localization and refinement protocol seed.

**Proof / justification.** Fix an arbitrary admissible \(D\), and write
\[
  \mathcal A:=\{|\widehat\mu-\mu(D)|>\epsilon\}.
\]
The event \(\mathcal E_{\rm loc}\) is
\(\mathscr L_{\rm loc}\)-measurable by the accepted step_001 conditioning
interface. The accepted step_007 indicator inequality states almost surely
that
\[
  {\bf1}_{\mathcal E_{\rm loc}}
  \Pr_D(\mathcal A\mid\mathscr L_{\rm loc})
  \leq\frac\delta2{\bf1}_{\mathcal E_{\rm loc}}.
\]
Using the tower identity with the measurable multiplier
\({\bf1}_{\mathcal E_{\rm loc}}\) gives
\[
\begin{aligned}
  \Pr_D(\mathcal A\cap\mathcal E_{\rm loc})
  &=\mathbb E_D\!\left[
      {\bf1}_{\mathcal E_{\rm loc}}{\bf1}_{\mathcal A}
    \right]\\
  &=\mathbb E_D\!\left[
      {\bf1}_{\mathcal E_{\rm loc}}
      \Pr_D(\mathcal A\mid\mathscr L_{\rm loc})
    \right]\\
  &\leq\frac\delta2\Pr_D(\mathcal E_{\rm loc})
   \leq\frac\delta2.
\end{aligned}
\]
The accepted localization proposition gives
\(\Pr_D(\mathcal E_{\rm loc}^c)\leq\delta/4\). Splitting the error event
over localization success and failure therefore yields
\[
\begin{aligned}
  \Pr_D(\mathcal A)
  &\leq\Pr_D(\mathcal E_{\rm loc}^c)
       +\Pr_D(\mathcal A\cap\mathcal E_{\rm loc})\\
  &\leq\frac\delta4+\frac\delta2
   =\frac{3\delta}{4}\leq\delta,
\end{aligned}
\]
where the final inequality uses \(\delta>0\). This argument conditions only
on the full localization block and then integrates every remaining sample,
level, color, branch, type, mask, and dither. It uses no union bound over
cells or decoder paths. Since \(D\) was arbitrary and every dependency
constant is uniform over the stated class, taking the supremum over
\(D\in\mathcal D(k,\lambda,\sigma)\) proves the required uniform PAC
bound. The estimator remains defined on \(\mathcal E_{\rm loc}^c\), and
that entire event is paid rather than assumed away. \(\square\)

### unit_004: proposition

**Proposition (All-ceiling technical sample bound).**
\(\label{prop:step-008-technical-rate}\)
Under Assumption~\(\ref{assump:parameter-domain}\), the accepted
localization-count conclusion of
Proposition~\(\ref{prop:step-001-localization}\), the scale and
nondegeneracy conclusions of Lemma~\(\ref{lem:step-006-scale}\) and
Proposition~\(\ref{prop:step-006-rate}\), and the accepted count choices in
Lemmas~\(\ref{lem:step-007-block}\) and
\(\ref{lem:step-007-median}\), there is a finite
\(\widetilde C_k\) depending only on fixed \(k\) such that
\[
  N_{\rm loc}+N_{\rm ref}
  \leq\widetilde C_k\left[
    \log\frac{\lambda}{\sigma}
    +A_k\log\frac1\delta
  \right].
\]
This bound checks the dyadic, localization, block, and group ceilings and
explicitly absorbs \(1+\log(4/\delta)\) by a positive \(k\)-only lower
bound for \(A_k\).

**Proof / justification.** First record the complete legal auxiliary
choice. The accepted dependencies permit
\[
  a_k\geq200,
  \qquad
  b_k=\max\{a_k,(4C_k^{\rm rec})^{1/(k-1)}\},
\]
\[
  0<c_k\leq\min\left\{\frac12,
    \left(\frac{b_k}{2a_k}\right)^{k-1}\right\},
  \qquad
  \beta_k=16C_k^{\rm var},
  \qquad
  \alpha_k=4.
\]
Every quantity in this display depends only on fixed \(k\). The accepted
scale lemma then proves from the exact ceiling
\(S=\lceil\log_2(H_\star/h_0)\rceil\) that
\[
  \frac{H_\star}{h_0}\geq2,
  \qquad S\geq1,
  \qquad H_\star\leq H<2H_\star.
\]
The choice \(b_k^{k-1}\geq4C_k^{\rm rec}\) is exactly the accepted tail
threshold giving bias at most \(\epsilon/4\). The choices of
\(\beta_k,\alpha_k\) are exactly the accepted group and median thresholds
giving conditional failure at most \(\delta/2\). Thus these technical
conditions are verified before any count is simplified.

Put
\[
  L_\delta:=\log\frac1\delta,
  \qquad \ell_{\lambda,\sigma}:=\log\frac{\lambda}{\sigma}.
\]
Assumption~\(\ref{assump:parameter-domain}\) gives
\(L_\delta\geq\log2>0\) and
\(\ell_{\lambda,\sigma}\geq0\). The accepted step_006 lower bounds imply
\[
  A_k\geq\underline A_k>0,
  \qquad
  \underline A_k:=
  \begin{cases}
    4a_k^{2-k},&k>2,\\[0.25em]
    4,&k=2,\\[0.25em]
    2^{k/(k-1)}b_k^{2-k},&1<k<2.
  \end{cases}
\]
Thus, in the notation requested by the rate bridge, one may take
\(c_k^{\rm rate}:=\underline A_k>0\), so
\(A_k\geq c_k^{\rm rate}\). The superscript distinguishes this lower-rate
constant from the theorem's accuracy cap \(c_k\). Every branch is positive
and depends only on fixed \(k\).

The block ceiling satisfies
\[
\begin{aligned}
  \beta_kA_k
  &\leq B_{\rm ref}=\lceil\beta_kA_k\rceil
   <\beta_kA_k+1\\
  &\leq\left(\beta_k+\underline A_k^{-1}\right)A_k.
\end{aligned}
\]
Define the finite \(k\)-only number
\[
  C_{B,k}:=\beta_k+\underline A_k^{-1}.
\]
The odd-group ceiling satisfies
\[
  G_\delta
  =2\left\lceil4\log\frac8\delta\right\rceil+1
  <8\log\frac8\delta+3.
\]
Since
\[
  \log\frac8\delta=L_\delta+3\log2\leq4L_\delta,
  \qquad
  3\leq\frac3{\log2}L_\delta,
\]
one obtains the fully explicit bound
\[
  G_\delta<C_GL_\delta,
  \qquad
  C_G:=32+\frac3{\log2}.
\]
Consequently the entire refinement count, including both ceilings, obeys
\[
  N_{\rm ref}=G_\delta B_{\rm ref}
  \leq C_GC_{B,k}A_kL_\delta.
\]

The accepted localization proposition already incorporates the source's
bin and code-length ceilings and gives
\[
  N_{\rm loc}\leq C_{{\rm loc},k}
    [1+\ell_{\lambda,\sigma}+\log(4/\delta)],
  \qquad C_{{\rm loc},k}=10001.
\]
The confidence-domain lower bound on \(L_\delta\) gives
\[
  \log\frac4\delta=L_\delta+2\log2\leq3L_\delta,
  \qquad
  1\leq\frac{L_\delta}{\log2}.
\]
Therefore, with the universal constant
\(C_L:=3+1/\log2\),
\[
\begin{aligned}
  1+\log\frac4\delta
  &\leq C_LL_\delta\\
  &\leq\frac{C_L}{\underline A_k}A_kL_\delta,
\end{aligned}
\]
which is the explicit localization-confidence absorption required by the
setting. Hence
\[
  N_{\rm loc}
  \leq C_{{\rm loc},k}\ell_{\lambda,\sigma}
   +\frac{C_{{\rm loc},k}C_L}{\underline A_k}A_kL_\delta.
\]
Adding the two blocks gives
\[
\begin{aligned}
  N_{\rm loc}+N_{\rm ref}
  &\leq C_{{\rm loc},k}\ell_{\lambda,\sigma}\\
  &\quad+\left[
    \frac{C_{{\rm loc},k}C_L}{\underline A_k}
    +C_GC_{B,k}
  \right]A_kL_\delta.
\end{aligned}
\]
Thus the claim holds with
\[
  \widetilde C_k:=\max\left\{
    C_{{\rm loc},k},
    \frac{C_{{\rm loc},k}C_L}{\underline A_k}+C_GC_{B,k}
  \right\}.
\]
Every source, scale, block, and group ceiling has now either remained in an
accepted exact threshold or been dominated by a displayed inequality.
There is no additive constant left outside
\(\ell_{\lambda,\sigma}+A_kL_\delta\). \(\square\)

### unit_005: proposition

**Proposition (Three-regime public sample specialization).**
\(\label{prop:step-008-public-rate}\)
Under Assumption~\(\ref{assump:parameter-domain}\),
Proposition~\(\ref{prop:step-008-technical-rate}\), and the accepted
three-regime conclusion of Proposition~\(\ref{prop:step-006-rate}\), there
is a finite \(C_k>0\), depending only on fixed \(k\), for which
\[
  N_{\rm loc}+N_{\rm ref}
  \leq C_kr_k(\lambda,\sigma,\epsilon,\delta).
\]
The conclusion holds separately and explicitly for \(k>2\), \(k=2\), and
\(1<k<2\), with the single middle-regime logarithm and all
\(\lambda,\sigma,\epsilon,\delta\) dependence preserved.

**Proof / justification.** Define the public refinement factor
\[
  Q_k(\sigma,\epsilon):=
  \begin{cases}
    \dfrac{\sigma^2}{\epsilon^2},&k>2,\\[0.55em]
    \dfrac{\sigma^2}{\epsilon^2}
      \log\dfrac{\sigma}{\epsilon},&k=2,\\[0.7em]
    \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)},&1<k<2.
  \end{cases}
\]
The accepted step_006 upper bounds state, without any asymptotic
substitution, that
\[
  A_k\leq U_kQ_k(\sigma,\epsilon),
\]
where for the fixed active regime one may take
\[
  U_k:=
  \begin{cases}
    \dfrac{a_k^{2-k}}{1-2^{2-k}},&k>2,\\[0.8em]
    \dfrac{3+\log_2(b_2/a_2)}{\log2},&k=2,\\[0.8em]
    \dfrac{2^{2-k}b_k^{2-k}}{1-2^{k-2}},&1<k<2.
  \end{cases}
\]
For each fixed \(k\), the relevant denominator is strictly positive and
\(U_k\) is finite and depends only on the fixed-\(k\) design constants.
The \(k=2\) bound comes from the exact identity \(Z_S=S+1\) and the
accepted ceiling calculation, so it contains one and only one factor
\(\log(\sigma/\epsilon)\).

Substitution into
Proposition~\(\ref{prop:step-008-technical-rate}\) gives
\[
\begin{aligned}
  N_{\rm loc}+N_{\rm ref}
  &\leq\widetilde C_k\left[
    \log\frac{\lambda}{\sigma}
    +U_kQ_k(\sigma,\epsilon)\log\frac1\delta
  \right]\\
  &\leq\widetilde C_k\max\{1,U_k\}
  \left[
    \log\frac{\lambda}{\sigma}
    +Q_k(\sigma,\epsilon)\log\frac1\delta
  \right].
\end{aligned}
\]
The last bracket is exactly
\(r_k(\lambda,\sigma,\epsilon,\delta)\). Thus
\[
  C_k:=\widetilde C_k\max\{1,U_k\}
\]
is a legal final constant. Its allowed dependence is only on fixed \(k\)
through \(a_k,b_k,c_k,C_k^{\rm rec},C_k^{\rm var},\beta_k\) and the
displayed fixed-regime geometric factors. It does not depend on
\(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,Z_S\), any transcript, cell,
path, group, sample, mask, or dither.

This substitution is valid at \(\lambda=\sigma\), when the public
localization term is zero because all additive localization cost was
already absorbed into \(A_k\log(1/\delta)\); at
\(\epsilon=c_k\sigma\), because the accepted lower and upper bounds include
that endpoint; at \(S=1\), because the accepted geometric sums include the
minimum ceiling; and as \(\delta\uparrow1/2\), because
\(\log(1/\delta)\geq\log2\) remains the explicit absorption source.
No continuity through \(k=2\) is asserted: the exact middle case is treated
separately as required. \(\square\)

### unit_006: proposition

**Proposition (Exact supported-cell and point-mass baselines).**
\(\label{prop:step-008-baseline}\)
Under the accepted conclusions of
Proposition~\(\ref{prop:step-002-partition}\),
Lemma~\(\ref{lem:step-002-color}\),
Proposition~\(\ref{prop:step-003-telescope}\),
Proposition~\(\ref{prop:step-004-activation-ledger}\),
Proposition~\(\ref{prop:step-005-conditional-variance}\),
Proposition~\(\ref{prop:step-006-tail}\), and
Proposition~\(\ref{prop:step-007-conditional-accuracy}\), fix any decoder
output \(c\). If \(D(J_{0,j_0(c)})=1\), every retained higher-level
correction is seedwise zero, the higher-level activation and variance
charges are zero, the outer residual is zero, and the estimator is exactly
the level-zero unbiased dither correction followed by the same fixed median
aggregation. If \(D\{m_0(c)\}=1\), then every \(W_i(c)=0\) seedwise and
\(\widehat\mu=m_0(c)=\mu(D)\).

**Proof / justification.** Suppose first that
\(D(J_{0,j_0(c)})=1\). Accepted path nesting places \(J_{0,j_0}\) inside
every selected child padding. Thus every higher target ring is inactive.
Accepted same-color separation also excludes every retained non-target
alias ring from \(J_{0,j_0}\). For a higher-level query whose decoder color
or branch indicator does not match the selected path, \(W_i(c)=0\) by its
definition. When those indicators do match, the sample lies on no retained
ring, so \(F_i(X_i)=0\), \(Y_i=Y_i^0\), and again \(W_i(c)=0\). This is a
seedwise equality, not merely cancellation in expectation.

It follows that the step_004 higher-level activation ledger and the
step_005 higher-level square ledger are identically zero. The accepted
step_003 telescope then reduces to
\[
  \theta(c)=\mu-m_0
\]
using the level-zero statistic alone. Since
\(J_{0,j_0}\subseteq J_{S,j_S}\), the accepted step_006 outer residual is
exactly zero before applying its moment bound. Therefore
\[
  \widehat\mu
  =m_0+\operatorname{median}_{1\leq g\leq G_\delta}
    \left[
      \frac1{B_{\rm ref}}
      \sum_{i\in G_g}W_i(c){\bf1}\{L_i=0\}
    \right].
\]
This is precisely the level-zero dither estimate, with the setting's same
importance correction and fixed median aggregation. The accepted
conditional concentration proof applies to this exact reduction on every
successful localization transcript and introduces no higher-ring or tail
remainder.

Now suppose \(D\{m_0(c)\}=1\). At level zero, the retained target
coordinate amplitude is \((X_i-m_0)/(2h_0)=0\), so whenever the target
color is retained one has \(F_i(X_i)=0\) and \(Y_i=Y_i^0\). Every retained
higher ring is inactive by the preceding argument. Hence
\(\Delta Y_i=0\) whenever a decoder coefficient is nonzero, and
\[
  W_i(c)=0
\]
for every refinement sample and every realization of all public seeds.
Every group mean and their median are zero. The point-mass condition gives
\(\mu(D)=m_0(c)\), so the setting estimator satisfies
\(\widehat\mu=m_0(c)=\mu(D)\) exactly. There is no artificial importance,
tail, localization, or confidence residual in this specialization.
\(\square\)

## Target-Step Assembly

Proposition~\(\ref{prop:step-008-query-legality}\) combines the accepted
localization and refinement query certificates and proves that every
\(\mathcal B_i(R_{\rm loc})\) and \(A_i\) is Borel and fixed before the
first response. Its direct formula audit proves that the decoder-selected
path appears only after collection and never modifies or adds a query.
Proposition~\(\ref{prop:step-008-one-bit}\) then checks the complete
communication interface: every localization sample sends its sole bit
\(Y_i^{\rm loc}\), every refinement sample sends its sole bit \(Y_i\),
\(Y_i^0\) is computed from stored \(U_i\), and all remaining operations
are decoder computations at the fixed non-stopping horizon
\(n=N_{\rm loc}+N_{\rm ref}\).

Proposition~\(\ref{prop:step-008-pac}\) integrates the exact
indicator-valued output of
Proposition~\(\ref{prop:step-007-conditional-accuracy}\) over the full
localization sigma-field. Together with
Proposition~\(\ref{prop:step-001-localization}\), it proves, for every
admissible \(D\),
\[
  \Pr_D\{|\widehat\mu-\mu(D)|>\epsilon\}
  \leq\Pr_D(\mathcal E_{\rm loc}^c)
   +\Pr_D(\{|\widehat\mu-\mu(D)|>\epsilon\}
      \cap\mathcal E_{\rm loc})
  \leq\frac\delta4+\frac\delta2\leq\delta.
\]
This is unconditional probability over every sample and every protocol
seed and contains no cell or path union bound. Uniformity of the accepted
interfaces permits the supremum over the unrestricted class.

For the sample count,
Proposition~\(\ref{prop:step-008-technical-rate}\) first verifies all
auxiliary scale, tail, block, and group thresholds. It checks the source,
dyadic, block, and group ceilings and proves the explicit lower interface
\(A_k\geq\underline A_k>0\). The displayed inequalities there give
\[
  N_{\rm loc}+N_{\rm ref}
  \leq\widetilde C_k\left[
    \log\frac{\lambda}{\sigma}
    +A_k\log\frac1\delta
  \right],
\]
including the absorption of \(1+\log(4/\delta)\). Proposition~
\(\ref{prop:step-008-public-rate}\) substitutes the three accepted upper
bounds for \(A_k\) and obtains exactly
\[
  N_{\rm loc}+N_{\rm ref}
  \leq C_k\left[
    \log\frac{\lambda}{\sigma}
    +
    \begin{cases}
      \dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.55em]
      \dfrac{\sigma^2}{\epsilon^2}
        \log\dfrac{\sigma}{\epsilon}\log\dfrac1\delta,&k=2,\\[0.7em]
      \left(\dfrac{\sigma}{\epsilon}\right)^{k/(k-1)}
        \log\dfrac1\delta,&1<k<2.
    \end{cases}
  \right]
  =C_kr_k(\lambda,\sigma,\epsilon,\delta),
\]
with every hidden constant depending only on fixed \(k\).

Finally, Proposition~\(\ref{prop:step-008-baseline}\) proves that the same
assembly retains the exact supported-in-selected-\(J_0\) level-zero
reduction and zero outer residual, and that the point-mass specialization
\(D\{m_0(c)\}=1\) yields \(\widehat\mu=m_0(c)=\mu(D)\) seedwise. Thus no
ceiling, confidence conversion, or public-rate simplification weakens either
baseline.

These six named local results, together with the seven accepted dependency
pairs, prove every clause of the binding step_008 row and hence the exact
formalized theorem. No statement from a global diagnostic or any prior idea
branch is used as evidence.

## Explicit Rate Audit

- Exposed variables:
  \(k,\lambda,\sigma,\epsilon,\delta,N_{\rm loc},N_{\rm ref},
  B_{\rm ref},G_\delta,S,H_\star,H,Z_S,A_k\), together with the
  \(k\)-only design quantities
  \(a_k,b_k,c_k,\alpha_k,\beta_k,C_k^{\rm rec},C_k^{\rm var}\) and the
  final \(C_k\). The public theorem exposes only
  \(\lambda,\sigma,\epsilon,\delta\) and fixed \(k\) through \(r_k\).
- Hidden constants may depend on:
  only the fixed \(k\), including its fixed design choices. Explicit bridge
  constants include \(C_{{\rm loc},k}=10001\),
  \(\underline A_k,C_{B,k},C_G,C_L,\widetilde C_k,U_k\), all of which
  have displayed provenance.
- Hidden constants may not depend on:
  \(D,\mu,\lambda,\sigma,\epsilon,\delta,S,H,H_\star,Z_S,A_k\), any
  localization or refinement transcript, interval, cell, path, branch,
  group, sample, mask, dither, or other protocol realization.
- Fixed quantities:
  \(k\) and all \(k\)-only design constants are fixed separately in each
  regime. The parameters \(\lambda,\sigma,\epsilon,\delta\) and law \(D\)
  remain arbitrary in the primitive domain. No uniform passage in \(k\)
  through \(1\) or \(2\) is claimed.
- Probability mode:
  unconditional high probability, uniform over
  \(D\in\mathcal D(k,\lambda,\sigma)\), over both independent sample
  blocks and every protocol seed. The only intermediate conditional mode is
  the accepted probability given \(\mathscr L_{\rm loc}\), integrated
  explicitly in Proposition~\(\ref{prop:step-008-pac}\).
- Horizon mode:
  fixed, finite, and non-stopping. The known-parameter source branch fixes
  \(N_{\rm loc}\), and \(N_{\rm ref}=G_\delta B_{\rm ref}\) and its groups
  are fixed before any response. No all-time, stopping-time, or
  data-dependent horizon is claimed.
- Norm mode:
  absolute error on \(\mathbb R\). The accepted variance and kth-moment
  quantities are used only through same-target interfaces already proved in
  this norm.
- Admissibility conditions and auxiliary tolerances:
  \(k>1\), \(\lambda\geq\sigma>0\),
  \(0<\epsilon\leq c_k\sigma\), \(\delta\in(0,1/2)\),
  \(a_k\geq200\),
  \[
    b_k=\max\{a_k,(4C_k^{\rm rec})^{1/(k-1)}\},
    \qquad
    c_k\leq\min\left\{\frac12,
      \left(\frac{b_k}{2a_k}\right)^{k-1}\right\},
  \]
  \[
    \beta_k=16C_k^{\rm var},\qquad\alpha_k=4.
  \]
  The stochastic median tolerance is \(\epsilon/2\), the deterministic
  tail tolerance is \(\epsilon/4\), and their accepted sum is
  \(3\epsilon/4<\epsilon\).
- Term absorption or simplification inequalities:
  the accepted scale bridge gives
  \(H_\star/h_0\geq2\) and \(H_\star\leq H<2H_\star\);
  the accepted tail bridge gives
  \(C_k^{\rm rec}\sigma^k/H^{k-1}\leq\epsilon/4\).
  Proposition~\(\ref{prop:step-008-technical-rate}\) proves
  \[
    A_k\geq\underline A_k>0,\quad
    B_{\rm ref}<(\beta_k+\underline A_k^{-1})A_k,\quad
    G_\delta<\left(32+\frac3{\log2}\right)\log\frac1\delta,
  \]
  and
  \[
    1+\log\frac4\delta
    \leq\frac{3+1/\log2}{\underline A_k}
      A_k\log\frac1\delta.
  \]
  Proposition~\(\ref{prop:step-008-public-rate}\) then uses the three
  explicit inequalities \(A_k\leq U_kQ_k(\sigma,\epsilon)\), with every
  geometric and dyadic-ceiling constant shown. No term is dropped or
  absorbed by prose.
- Probability conversion:
  \[
    \Pr_D(\mathcal A\cap\mathcal E_{\rm loc})
    =\mathbb E_D[
       {\bf1}_{\mathcal E_{\rm loc}}
       \Pr_D(\mathcal A\mid\mathscr L_{\rm loc})]
    \leq\delta/2,
  \]
  followed by
  \[
    \Pr_D(\mathcal A)
    \leq\delta/4+\delta/2
    =3\delta/4\leq\delta.
  \]
  No union bound over possible cells or paths is taken.
- Contribution to any Rate Specialization Bridge:
  this step is the complete public bridge. It verifies the auxiliary design
  choices and technical thresholds, retains the exact dyadic ceiling,
  bounds both refinement ceilings, absorbs the localization ceiling and
  confidence cost, converts conditional to unconditional probability, and
  substitutes all three accepted \(A_k\) rates into the final \(r_k\).
- Baseline-reduction check:
  for a fixed decoder output with
  \(D(J_{0,j_0(c)})=1\), every higher retained correction, activation
  charge, square charge, and tail residual is exactly zero; the same fixed
  median acts only on the level-zero unbiased dither correction. If
  \(D\{m_0(c)\}=1\), every correction is seedwise zero and
  \(\widehat\mu=m_0(c)=\mu(D)\). Neither baseline is replaced by an
  \(O(\epsilon)\) surrogate.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing setting and theorem objects.**
  The setting-defined
  \(N_{\rm loc},N_{\rm ref},B_{\rm ref},G_\delta,Y_i^{\rm loc},Y_i,
  Y_i^0,\Delta Y_i,W_i(c),\widehat\mu,r_k\) retain their original
  meanings. The final public output is the constant \(C_k\) and the exact
  one-bit, fixed-horizon, unconditional PAC theorem. The protocol's Borel
  and zero-adaptivity certificates are also public-facing.
- **Appendix-local bridge objects.**
  The accepted technical quantity
  \(A_k=\sigma^kZ_S/\epsilon^2\), its lower bound
  \(\underline A_k\), the three upper constants \(U_k\), and
  \(\widetilde C_k\) are appendix-local bridge objects. They expose the
  ceiling and regime calculations but need not appear in the final public
  theorem statement. The event \(\mathcal E_{\rm loc}\), sigma-field
  \(\mathscr L_{\rm loc}\), and accepted refinement-success event are
  derived appendix interfaces, not theorem assumptions.
- **Proof-local helper objects.**
  \(L_\delta=\log(1/\delta)\),
  \(\ell_{\lambda,\sigma}=\log(\lambda/\sigma)\),
  \(C_{B,k},C_G,C_L\), the error event \(\mathcal A\), and the piecewise
  shorthand \(Q_k(\sigma,\epsilon)\) are proof-local. Each is eliminated
  from the final theorem formula. The label
  \(c_k^{\rm rate}=\underline A_k\) is only a disambiguating name for the
  requested positive lower-rate constant and is distinct from the accuracy
  cap \(c_k\).
- **Constant provenance.**
  \(C_{{\rm loc},k}=10001\) is an accepted step_001 output.
  \(C_k^{\rm rec}\) and \(C_k^{\rm var}\) are accepted dependency
  constants. The values \(a_k,b_k,c_k,\beta_k,\alpha_k\) have the accepted
  explicit choices restated above. The lower constant \(\underline A_k\)
  is the exact accepted step_006 lower bound; \(C_{B,k},C_G,C_L\) are
  proved by displayed ceiling and logarithm inequalities;
  \(\widetilde C_k\) and \(C_k\) are displayed maxima of these sourced
  constants. No free finite constant or bounded quantity is introduced.
- **Assumption provenance.**
  Parameter ranges, the unrestricted moment class, independent sample and
  seed laws, and query timing are primitive. Localization success,
  conditioning independence, path geometry, query Borelness, exact mean,
  activation, variance, tail control, scale and rate bounds, and conditional
  refinement success are accepted derived outputs. The present step proves
  protocol assembly, unconditional probability, ceiling absorption, public
  specialization, and baseline preservation. No generated event,
  selected-cell condition, local-validity fact, support condition, or final
  accuracy conclusion is reclassified as primitive.
- **Conditioning and generated-output flow.**
  Step_001 produces \(\mathcal E_{\rm loc}\) and
  \(\mathscr L_{\rm loc}\); step_003 produces \(\theta(c)\); step_005
  produces variance; step_006 produces tail and \(A_k\); step_007 produces
  the indicator-valued conditional error interface. This step integrates
  that interface before exporting the unconditional theorem. Decoder path
  objects are produced after collection and consumed only in decoder
  arithmetic; no consumer sends them back to a query.
- **Boundary and degeneracy audit.**
  Query boundary atoms are covered by accepted Borel half-open geometry.
  The proof includes the localization trivial branch and failure outputs,
  \(N_{\rm loc}=0\), \(\lambda=\sigma\), \(\epsilon=c_k\sigma\),
  \(\delta\uparrow1/2\), \(S=1\), exact \(k=2\), zero conditional
  variance, support in the selected \(J_0\), and
  \(D\{m_0(c)\}=1\). Every count and estimator remains defined in these
  cases.
- **Diagnostic boundary.**
  The optional global diagnostic pair was not read or used. No global
  diagnostic, proof history, prior idea branch, tracker, or worker log
  supplies evidence, an assumption, a cited result, or authority to alter
  the binding target.
