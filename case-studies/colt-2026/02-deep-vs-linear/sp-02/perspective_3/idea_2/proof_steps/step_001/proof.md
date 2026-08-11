# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_001`
- Unit attempt: 1

## Target Step Claim

- Intended claim: For every \(D,h,\pi\), the measurable selector partitions
  learner-tape space into catalog outputs, so
  \(p(D,h,\pi)\in\Delta_L\) and expected loss/correlation equal the
  corresponding finite catalog mixtures. Also exhibit the center policy to
  prove \(\Pi(D,h)\ne\varnothing\). These claims remain true for full
  continuous adaptive replies and \(T=0\).
- Depends on: None.
- Assumptions used: Primitive `assump:source-parameter-regime`,
  `assump:finite-horizon-randomized-adaptivity`,
  `assump:bounded-unrestricted-queries`,
  `assump:full-adversarial-tolerance`, and
  `assump:finite-terminal-catalog`.
- Technical challenge: Keep the policy quantifier and revealed-coin semantics
  exact while avoiding a response grid, favorable reply, or finite
  transcript-tree claim; use the center policy only for nonemptiness.
- Intended proof tool or cited result: Direct pushforward/disintegration over
  the finite selector in current notation; bounded finite expectation algebra;
  direct interval-membership check for the center policy.
- Output target: Legal generated catalog law, nonempty policy class, and exact
  mixture interface.
- Rate objective: None.
- Row-local review status: `PENDING`; sketch-level acceptance is supplied by
  the accepted `proof_sketch_review.md` for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

Primitive conditions:

- `assump:source-parameter-regime`: \(m\in\mathbb N_0\) and \(\tau>0\),
  including the boundary \(m=0\).
- `assump:finite-horizon-randomized-adaptivity`: one fixed learner, one tape
  law \(\nu\), nonanticipating transcript dependence, variable stopping depth
  \(T\le m\), and a terminal predictor after every complete execution.
- `assump:bounded-unrestricted-queries`: every issued query is an arbitrary
  map into \([-1,1]\), so its population center is a finite real number; no
  label-linearity, response alphabet, or finite query dictionary is available
  or used.
- `assump:full-adversarial-tolerance`: a valid policy may choose any real reply
  in the full interval \(I_q(D,h)\) after seeing the currently issued query,
  and the proof must apply to every such policy.
- `assump:finite-terminal-catalog`: the fixed catalog
  \(G=\{g_1,\ldots,g_L\}\), \(L\ge1\), and the measurable selector \(J\)
  satisfy the exact eventwise terminal identity on every complete valid
  execution.
- Basic-setting measurability convention: all random variables and protocol
  selectors used by the execution are measurable. This is part of the
  formalized setting, not an extra generated-object assumption.

Derived invariants supplied by accepted dependencies: None. The target step
has no dependency artifacts.

Local conditional hypotheses:

- In the pushforward and mixture units, \(D\) is an arbitrary actual
  distribution on \(X\), \(h\in H\), and \(\pi\in\Pi(D,h)\) is an arbitrary
  valid measurable policy. Membership in \(\Pi(D,h)\) is the quantified domain
  of the sketch-row claim, not an added theorem-facing assumption.
- No generated event, stability condition, recurrence, boundedness condition,
  or local-validity condition is assumed. Policy-class nonemptiness and the
  terminal law are proved below.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | proposition | Under Assumptions~\ref{assump:source-parameter-regime}, \ref{assump:finite-horizon-randomized-adaptivity}, \ref{assump:bounded-unrestricted-queries}, and \ref{assump:full-adversarial-tolerance}, and the basic-setting measurability convention, if \(D\) is a distribution and \(h\in H\), then the exact-center rule is a measurable nonanticipating member of \(\Pi(D,h)\); hence \(\Pi(D,h)\ne\varnothing\), including when a run stops at \(T=0\). | Proves policy-class nonemptiness without replacing the arbitrary-policy quantifier. |
| `unit_002` | lemma | Under Assumptions~\ref{assump:source-parameter-regime}, \ref{assump:finite-horizon-randomized-adaptivity}, \ref{assump:full-adversarial-tolerance}, and \ref{assump:finite-terminal-catalog}, and the basic-setting measurability convention, if \(D\) is a distribution, \(h\in H\), and \(\pi\in\Pi(D,h)\), then the terminal index is measurable, its selector events form a finite partition, \(p(D,h,\pi)\in\Delta_L\), and every bounded catalog functional has the exact finite pushforward identity. The conclusion includes variable stopping and \(T=0\). | Produces the legal finite catalog law and the exact generic mixture interface. |
| `unit_003` | proposition | Under the basic binary loss definition, Assumptions~\ref{assump:finite-horizon-randomized-adaptivity}, \ref{assump:full-adversarial-tolerance}, and \ref{assump:finite-terminal-catalog}, and Lemma~\ref{lem:step-001-terminal-pushforward}, if \(D\) is a distribution, \(h\in H\), and \(\pi\in\Pi(D,h)\), then expected loss and expected correlation equal their corresponding finite catalog mixtures exactly, with zero residual. | Specializes the generated law to the two exact identities consumed by `step_002`. |

Atomic step = no. Policy nonemptiness, measurable finite pushforward, and the
two functional specializations are independent audit obligations, so they are
separated into three local units.

## Cited Result Applications

External paper results or dependency results: None. The papers named in the
branch materials provide lineage only and are not used as proof authority.
No measure-theoretic disintegration theorem is invoked: the finite mixture
identity is proved directly as an identity of a finite-valued simple random
variable.

Local result applications:

- Proposition~\ref{prop:step-001-center-policy} states, in the current policy
  convention, that the exact-center selector is measurable,
  nonanticipating, and interval-valid. Its assumptions are discharged by the
  four named primitive assumptions and the setting measurability convention.
  It is used only in the target-step assembly to prove
  \(\Pi(D,h)\ne\varnothing\).
- Lemma~\ref{lem:step-001-terminal-pushforward} states that an arbitrary fixed
  \(\pi\in\Pi(D,h)\) induces the measurable selector pushforward
  \(p(D,h,\pi)\in\Delta_L\) and the exact finite mixture identity for every
  bounded catalog functional. Its assumptions are discharged by the
  primitive execution, policy, measurability, and catalog-selector clauses.
  It is used by Proposition~\ref{prop:step-001-exact-mixtures} and by the
  target-step assembly.
- Proposition~\ref{prop:step-001-exact-mixtures} states the exact loss and
  correlation identities for the same arbitrary \(D,h,\pi\). Its only prior
  local input is Lemma~\ref{lem:step-001-terminal-pushforward}; it is used in
  the target-step assembly and is the public-facing interface for `step_002`.

## Local Derivation

### unit_001: proposition

**Proposition (Validity of the exact-center reply policy).**
\(\label{prop:step-001-center-policy}\)

Statement: Under Assumptions~\ref{assump:source-parameter-regime},
\ref{assump:finite-horizon-randomized-adaptivity},
\ref{assump:bounded-unrestricted-queries}, and
\ref{assump:full-adversarial-tolerance}, and the basic-setting measurability
convention, if \(D\) is a distribution on \(X\) and \(h\in H\), then the rule

\[
 \pi_t^{\mathrm{ctr}}
 (q_1,v_1,\ldots,q_{t-1},v_{t-1},q_t)
 :=\mu_{q_t}(D,h)
 =\mathbb E_{x\sim D}q_t(x,h(x))
 \tag{1}
\]

at every issued round is a measurable nonanticipating member of
\(\Pi(D,h)\). Consequently \(\Pi(D,h)\ne\varnothing\). This includes full
real tolerance intervals, arbitrary adaptive randomized issued queries, every
stopping depth \(T\le m\), and \(T=0\).

Proof / justification:

Fix \(D\) and \(h\). Because \(X\) carries its power-set sigma algebra and
\(q_t:X\times\{+1,-1\}\to[-1,1]\), the map
\(x\mapsto q_t(x,h(x))\) is measurable and bounded. Hence the expectation in
(1) exists and lies in \([-1,1]\).

At round \(t\), rule (1) uses only the fixed pair \((D,h)\) and the currently
revealed query \(q_t\). It does not use the tape \(u\) except through what the
learner has already revealed in \(q_t\), and it does not inspect any future
learner coin. Thus it is nonanticipating under the exact information pattern
in Assumption~\ref{assump:full-adversarial-tolerance}. The basic setup declares
protocol selectors measurable; (1) is such a selector. In particular, this
measurability conclusion uses the primitive branch convention and does not
introduce a topology, encoding, or finite sigma algebra on the query space.

For every issued query, interval validity is the exact equality

\[
 \left|\pi_t^{\mathrm{ctr}}-\mu_{q_t}(D,h)\right|=0\le\tau,
\]

so

\[
 \pi_t^{\mathrm{ctr}}
 =\mu_{q_t}(D,h)
 \in[\mu_{q_t}(D,h)-\tau,\mu_{q_t}(D,h)+\tau]
 =I_{q_t}(D,h).
\]

The rule is defined for every history at which a query is issued, regardless
of the real values in the preceding transcript. Therefore it remains a valid
policy when future queries depend arbitrarily on all preceding continuous
replies. If the learner terminates after \(T\) rounds, no constraint is imposed
after round \(T\). If \(T=0\), including the case \(m=0\), there is no issued
query and all reply-validity conditions are vacuous; the same contingent rule
is still a member of \(\Pi(D,h)\). This proves nonemptiness. \(\square\)

### unit_002: lemma

**Lemma (Finite terminal-selector pushforward).**
\(\label{lem:step-001-terminal-pushforward}\)

Statement: Under Assumptions~\ref{assump:source-parameter-regime},
\ref{assump:finite-horizon-randomized-adaptivity},
\ref{assump:full-adversarial-tolerance}, and
\ref{assump:finite-terminal-catalog}, and the basic-setting measurability
convention, if \(D\) is a distribution on \(X\), \(h\in H\), and
\(\pi\in\Pi(D,h)\) is arbitrary, then

\[
 Z_{D,h,\pi}(u):=J(e(u;D,h,\pi))\in[L]
 \tag{2}
\]

is measurable. Its events
\(E_i(D,h,\pi):=\{u:Z_{D,h,\pi}(u)=i\}\) form a measurable partition of
learner-tape space, and

\[
 p_i(D,h,\pi)
 =\nu(E_i(D,h,\pi))
 =\nu\{u:\widehat h_{u;D,h,\pi}=g_i\},
 \qquad p(D,h,\pi)\in\Delta_L.
 \tag{3}
\]

For every bounded function \(f:G\to\mathbb R\),

\[
 \mathbb E_{u\sim\nu}
 f(\widehat h_{u;D,h,\pi})
 =\sum_{i=1}^L p_i(D,h,\pi)f(g_i).
 \tag{4}
\]

These conclusions hold for arbitrary full-interval continuous adaptive
replies, random adaptive queries, variable stopping, and \(T=0\).

Proof / justification:

Fix \(D,h\), and an arbitrary \(\pi\in\Pi(D,h)\). The word "arbitrary" is
essential here: \(\pi\) is not replaced by the center policy of
Proposition~\ref{prop:step-001-center-policy}.

Under the basic-setting convention, the taped learner's issued query and
termination variables are measurable functions of the tape and of the
measurable transcript already produced. Because \(\pi\) is a measurable
nonanticipating selector, each next reply is a measurable composition of the
already revealed query-history variables with \(\pi\). Induction over the at
most \(m\) rounds therefore yields a measurable complete execution
\(u\mapsto e(u;D,h,\pi)\). Early stopping causes no infinite limiting issue:
the complete execution is selected from finitely many stopping depths
\(0,1,\ldots,m\), all covered by the primitive execution convention.

Assumption~\ref{assump:finite-terminal-catalog} makes \(J\) a measurable
selector on every such complete valid execution. Hence (2), the composition
of the execution map and \(J\), is measurable as a map into the finite
discrete set \([L]\). Each \(E_i\) is consequently measurable. Because (2)
has exactly one value in \([L]\), the events are pairwise disjoint and
\(\bigcup_{i=1}^L E_i\) is the whole tape space. Finite additivity gives

\[
 p_i=\nu(E_i)\ge0,
 \qquad
 \sum_{i=1}^L p_i
 =\nu\!\left(\bigcup_{i=1}^L E_i\right)=1,
 \tag{5}
\]

which proves \(p(D,h,\pi)\in\Delta_L\).

On \(E_i\), the exact selector identity from
Assumption~\ref{assump:finite-terminal-catalog} gives

\[
 \widehat h_{u;D,h,\pi}
 =g_{J(e(u;D,h,\pi))}=g_i.
 \tag{6}
\]

The indexed elements of the set \(G=\{g_1,\ldots,g_L\}\) are distinct.
Thus (6) also gives the converse: if the terminal predictor is \(g_i\), then
its selected catalog index is \(i\). This proves the event equality in (3),
so the pushforward masses coincide with the output probabilities defined in
the setting.

For any bounded \(f:G\to\mathbb R\), (6) gives the pointwise finite
simple-function identity

\[
 f(\widehat h_{u;D,h,\pi})
 =\sum_{i=1}^L \mathbf 1_{E_i}(u)f(g_i).
 \tag{7}
\]

Integrating (7) with respect to \(\nu\) and using only linearity of a finite
sum proves (4). There is no conditioning on a transcript and no regular
conditional distribution to construct.

All details of arbitrary continuous replies, label-independent query
components, random query choices, and reply-adaptive future queries are
contained in the measurable complete-execution map. They can change the
sets \(E_i\) and their masses, but (5)--(7) show that they create neither an
outside-catalog outcome nor an approximation residual. If a particular tape
terminates at \(T=0\), its empty-reply execution is already complete and is
still an input to \(J\); if \(m=0\), this is true for every tape. When
\(L=1\), \(E_1\) is the whole tape space and \(p_1=1\).

Finally, if an oracle policy has its own random seed, fixing that seed gives
one deterministic nonanticipating policy in \(\Pi(D,h)\), as stipulated in
the setting. The preceding proof applies separately for each fixed seed and
introduces no expectation beyond \(u\sim\nu\). \(\square\)

### unit_003: proposition

**Proposition (Exact terminal loss and correlation mixtures).**
\(\label{prop:step-001-exact-mixtures}\)

Statement: Under the basic binary loss definition,
Assumptions~\ref{assump:finite-horizon-randomized-adaptivity},
\ref{assump:full-adversarial-tolerance}, and
\ref{assump:finite-terminal-catalog}, and
Lemma~\ref{lem:step-001-terminal-pushforward}, if \(D\) is a distribution on
\(X\), \(h\in H\), and \(\pi\in\Pi(D,h)\), then

\[
 \mathbb E_{u\sim\nu}
 \mathcal L_{D,h}(\widehat h_{u;D,h,\pi})
 =\sum_{i=1}^L p_i(D,h,\pi)\mathcal L_{D,h}(g_i),
 \tag{8}
\]

and

\[
 \mathbb E_{u\sim\nu}
 \mathbb E_{x\sim D}
 \bigl[h(x)\widehat h_{u;D,h,\pi}(x)\bigr]
 =\sum_{i=1}^L p_i(D,h,\pi)
 \mathbb E_{x\sim D}[h(x)g_i(x)].
 \tag{9}
\]

Equivalently, the exact bridge between the two mixtures is

\[
 \sum_{i=1}^L p_i\mathbb E_D[h g_i]
 =1-2\sum_{i=1}^L p_i\mathcal L_{D,h}(g_i)
 =1-2\mathbb E_u
   \mathcal L_{D,h}(\widehat h_{u;D,h,\pi}).
 \tag{10}
\]

Proof / justification:

For each \(g_i\in G\), the loss functional is bounded in \([0,1]\). Apply
Lemma~\ref{lem:step-001-terminal-pushforward} with
\(f(g_i)=\mathcal L_{D,h}(g_i)\) to obtain (8).

Likewise,
\(f(g_i)=\mathbb E_{x\sim D}[h(x)g_i(x)]\) lies in \([-1,1]\). Applying the
same lemma gives (9) directly. In particular, this argument treats the inner
\(D\)-expectation as a bounded number attached to each catalog function; it
does not exchange an infinite sum, condition on an uncountable transcript,
or average over reply policies.

For completeness, the same equality can be read pointwise. Equation (6)
implies for each \(x\in X\)

\[
 \mathbb E_{u\sim\nu}
 \widehat h_{u;D,h,\pi}(x)
 =\sum_{i=1}^L p_i(D,h,\pi)g_i(x).
\]

Multiplication by \(h(x)\) and integration over \(D\) moves only a finite
sum, again yielding the right side of (9).

Finally, the binary identity from the basic setting gives

\[
 \mathbb E_D[h g_i]=1-2\mathcal L_{D,h}(g_i).
\]

Multiply by \(p_i\), sum over \(i\), use \(\sum_i p_i=1\) from
Lemma~\ref{lem:step-001-terminal-pushforward}, and then use (8). This proves
(10), with equality at every link and therefore zero residual. \(\square\)

## Target-Step Assembly

Fix any actual distribution \(D\) and target \(h\in H\).
Proposition~\ref{prop:step-001-center-policy} constructs a measurable
nonanticipating policy whose response to every currently revealed query is
the exact center of that query's full real tolerance interval. Hence
\(\Pi(D,h)\ne\varnothing\). This construction is used only for nonemptiness.

Now fix an arbitrary \(\pi\in\Pi(D,h)\), with no restriction to the center
policy. Lemma~\ref{lem:step-001-terminal-pushforward} proves that the measurable
map \(J\circ e\) pushes the learner-tape law \(\nu\) to the setting-defined
vector \(p(D,h,\pi)\in\Delta_L\) and gives the exact finite mixture identity.
Proposition~\ref{prop:step-001-exact-mixtures} applies that identity to the
loss and correlation functionals and proves (8)--(10), exactly the two
mixture interfaces required by the sketch row.

The quantifier and boundary checks are part of these named results:

- Replies may range over the entire continuous intervals and may adapt to
  every revealed randomized query and previous real reply. The proof never
  enumerates replies or transcripts; this adaptivity changes only the
  measurable selector events and their probabilities.
- The policy in the mixture calculation is arbitrary. The exact-center policy
  is not a favorable-policy substitution and does not weaken the universal
  adversarial-policy semantics.
- Only learner-tape randomness is pushed forward. A randomized oracle seed is
  fixed to obtain a policy already covered by the arbitrary-policy statement;
  no oracle expectation is introduced.
- At immediate termination \(T=0\), the empty-reply execution is complete and
  \(J\) selects a catalog index. Thus the same partition and identities hold.
  At \(m=0\), every run is of this form. At \(L=1\), the unique mass is one.
- If \(X=\varnothing\), there is no probability distribution on \(X\), so the
  distribution-indexed statements in this step are vacuous; no nonexistent
  \(D\) or policy is used. Whenever an actual \(D\) exists, the exact-center
  construction proves policy-class nonemptiness.

Thus all parts of the exact binding `step_001` claim follow under only its
allowed primitive assumptions and with no dependency artifact. The exported
interface is precisely the generated law \(p(D,h,\pi)\), equations (8)--(10),
and the nonemptiness of \(\Pi(D,h)\); no accuracy, minimax, global-weight,
representation, or catalog-budget conclusion is asserted in this step.

## Explicit Rate Audit

None. This step is not rate-bearing and its binding row has `Rate objective =
None`. Its exported relations are exact equalities with coefficient one and
zero residual, use no hidden constants or auxiliary tolerances, and make no
probability or horizon conversion. In particular, the step neither changes
nor simplifies the downstream primitive polynomial target
\(L\le B(1+m/\tau^2)^k\). Its boundary reduction at \(m=0\) is the exact
zero-query catalog law, not a positive-depth surrogate.

## Blockers

None.

## Notation And Assumption Notes

- **Public-facing outputs.** The vector \(p(D,h,\pi)\), its membership in
  \(\Delta_L\), equations (8)--(10), and the statement
  \(\Pi(D,h)\ne\varnothing\) are the minimal downstream interface. The
  definition of \(p_i\) is exactly the setting definition, now proved equal
  to the selector pushforward mass.
- **Appendix-local object.** The exact-center policy
  \(\pi^{\mathrm{ctr}}\) is an appendix-local witness for nonemptiness. It is
  not exported as the policy used in the mixture or accuracy argument.
- **Proof-local objects.** The terminal index \(Z_{D,h,\pi}\), selector events
  \(E_i(D,h,\pi)\), indicator functions, and the dummy bounded functional
  \(f\) are proof-local. They package the finite partition calculation and are
  not theorem-facing notation.
- **Constant provenance.** No new constant, radius, threshold, rate, margin,
  or finite-tube quantity is introduced. The quantities \(m,\tau,L\) and the
  law \(\nu\) come directly from the setting. The equality residual is proved
  to be exactly zero, not assumed bounded.
- **Assumption provenance.** Measurability of execution variables and protocol
  selectors is primitive in the basic setting. Validity of the exact-center
  policy, policy-class nonemptiness, measurability of \(Z\), the partition,
  simplex membership, and both mixture identities are proved in this step.
  The only local conditional hypothesis is the arbitrary quantified condition
  \(\pi\in\Pi(D,h)\) in the pushforward and mixture units; it is not used to
  claim nonemptiness.
- **Continuous-policy scope.** No response grid, exact-expectation restriction
  on the arbitrary policy, favorable policy choice, finite transcript tree,
  deterministic-query assumption, or CSQ restriction is introduced. The
  center response is exact only in the separate nonemptiness witness.
- **Diagnostic boundary.** The paired `global_proof.md` and
  `global_proof_review.md` were read only after confirming that the latter has
  status `ACCEPTED`. Their step-relevant planning guidance was to isolate all
  adaptive semantics inside the measurable complete execution, push only the
  learner-tape law through the finite selector, and trace the center-policy and
  \(T=0\) boundaries separately. The diagnostic was not used as proof
  evidence, a cited result, an assumption source, or authority to alter the
  target claim, dependencies, scope, or conclusion; every mathematical claim
  above was derived independently from `setting.md` and the binding sketch
  row.
