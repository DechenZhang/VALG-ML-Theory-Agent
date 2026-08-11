# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: `step_004`
- Unit attempt: 1
- Reviewed proof artifact: `perspective_1/idea_2/proof_steps/step_004/proof.md`
- Reviewed proof SHA-256: `e6f01e32495159b626ba6155b9ea9bc3b2dc4fb68f279389488a784a75d52bec`

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-infimum-pushforward}
  states exactly the pointwise-infimum and pushforward part of the accepted
  `step_004` row. Its assumption basis is explicit and limited to the two
  setting assumptions and the accepted padded-path, feature-map, and
  pre-instance-law conclusions. It fixes an arbitrary instance while keeping
  the map law unchanged.
- Proof validity: For each tape (r), the accepted path gives a coordinate
  (z^{\mathcal D,h,r}\in G^m), so
  (e_{z^{\mathcal D,h,r}}\in\mathbb R^N) is an admissible weight. Evaluating
  the exact infimum at that weight proves the tape-wise inequality. The
  accepted `step_002` interface supplies measurability and boundedness of both
  tape functions and the exact pushforward identity. Monotonicity of
  integration therefore gives the displayed expected comparison.
- Cited-result and assumption audit: The three dependency results are current
  accepted conclusions and are restated in branch notation with their roles
  and assumption discharge. No external result is used. Infimum evaluation,
  bounded-integral monotonicity, and the already-proved pushforward identity
  require no extra condition, minimizer, measurable selector, or generated
  invariant.
- Rigor checklist: Quantifiers are in the required order: the instance is
  fixed after the law, while a candidate weight is chosen separately after
  each tape occurrence because the infimum is inside the map expectation.
  If (T(r)=T(r')) but the canonical indices differ, the common value
  (F_{\mathcal D,h}(T(r))) is separately bounded by both legal candidate
  losses. Thus the argument does not invert (T), select a tape from a map
  fiber, or move a tape-dependent weight outside the pointwise infimum.
- Local adversarial test: Noninjective tape-to-map fibers, repeated feature
  coordinates, immediate stopping, and (m=0) all leave the candidate
  comparison valid. The proof asserts no attained minimum; only the defining
  upper bound for an infimum is used. All losses lie in ([0,1]), so the
  integration step has no integrability or sign issue.
- Contribution to target step: It supplies the exact feature-law expectation
  equality and the upper bound by the measurable canonical basis-score loss.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-canonical-risk} proves
  exactly the accepted row's valid-oracle risk closure, with expectation only
  over the learner tape and with the exact tie/binary interface from
  `step_003`. It neither weakens the every-valid-policy premise nor introduces
  a favorable-oracle assumption.
- Proof validity: For arbitrary ((\mathcal D,h)), the accepted
  Proposition~\ref{prop:step-001-canonical-oracle} makes
  (\mathcal O^\rho_{\mathcal D,h}) tolerance-valid. The universal
  adversarial-SQ assumption therefore applies to this particular policy and
  bounds the actual canonical-run binary loss by (\varepsilon). The accepted
  Proposition~\ref{prop:step-003-tie-free-transfer} gives, for every tape, the
  exact equality of the basis-score tie loss, replay tie loss, and actual
  binary loss. Integrating that pointwise equality proves the full chain.
- Cited-result and assumption audit: Oracle validity and the zero-residual loss
  bridge are current accepted dependency conclusions, restated with their
  instantiated objects. The learner guarantee is used directly from
  Assumption~\ref{assump:universal-adversarial-sq}. No policy-independence,
  finite-domain, margin, confidence, exact-expectation-oracle, or additional
  randomness assumption is inserted.
- Rigor checklist: The premise is pointwise over every instance and every
  valid adaptive policy, so choosing the deterministic canonical policy after
  fixing the instance is legal. Population loss retains its integration over
  (x\sim\mathcal D); only (R\sim\mu) is averaged externally. The selected
  score and target are signs, so the events with product at most zero and
  strictly below zero coincide without an almost-sure or margin argument.
- Local adversarial test: The conclusion survives midpoint rounding,
  (\tau\ge1), arbitrary adaptivity, every stopping depth, (m=0), and
  (\varepsilon=0). Rounding affects only oracle legality and contributes no
  risk term. Replacing the universal valid-policy premise by a favorable-policy
  premise would invalidate this unit, but the live setting has the required
  universal quantifier.
- Contribution to target step: It bounds the exact canonical basis-score tie
  loss in tape expectation by (\varepsilon).
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-dimension-certificate}
  states the exact final output of the accepted `step_004` row: one
  pre-instance law works uniformly over all distributions and targets, its
  expected mapwise optimal tie risk is at most (\varepsilon), and it
  witnesses dimension
  (N=(\lceil1/\tau\rceil+1)^m). The stated (m=0),
  (\varepsilon=0), and (\tau\ge1) specializations preserve rather than
  weaken the target.
- Proof validity: The preceding two local propositions compose to the exact
  comparison chain for an arbitrary fixed ((\mathcal D,h)). The accepted
  pre-instance-law proposition proves that the same
  (\mathsf P_A), measurable map space, and ambient dimension were fixed
  independently of that pair. Hence taking the two suprema is legitimate and
  needs no union bound. The accepted counting lemma gives the exact value of
  (N), and the definition of
  (\operatorname{dc}^{\mathrm{tie}}_\varepsilon(\mathcal H)) then yields the
  asserted dimension bound.
- Cited-result and assumption audit: The count and pre-instance-law interfaces
  are current accepted `step_002` conclusions; the risk comparisons are the
  preceding named local results. The definition of probabilistic
  tie-dimension is applied in its original quantifier order. No external
  citation, new assumption, generated event, or unproved boundedness claim is
  used.
- Rigor checklist: Pointwise validity for every pair under one fixed law
  implies the displayed double-supremum bound. The probability mode remains
  tape expectation, the horizon remains at most (m), and the loss modes are
  exactly those in the setting. At (m=0), (G^0=\{\emptyset\}) and (N=1);
  at (\varepsilon=0), nonnegativity upgrades the upper bound to equality
  with zero; and at (\tau\ge1), (K=1) gives (N=2^m).
- Local adversarial test: Arbitrary or infinite domains, duplicate coordinates,
  noninjective tape-to-map fibers, root stopping, and zero learner error do not
  alter the chain or the count. The proof never exchanges an infimum and an
  expectation, asks for one weight across maps, or performs an unsupported
  stochastic-mode upgrade.
- Contribution to target step: It assembles the exact risk certificate and
  applies the formal definition to obtain the final dimension theorem.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is hidden outside the three-unit map. The
tape-wise infimum comparison, pushforward identity, measurability, and
duplicate-fiber issue are contained in
Proposition~\ref{prop:step-004-infimum-pushforward}; canonical-policy
applicability, the exact loss bridge, and the tape-only expectation are
contained in Proposition~\ref{prop:step-004-canonical-risk}; and common-law
universality, the double supremum, exact coordinate count, definition closure,
and boundary specializations are contained in
Proposition~\ref{prop:step-004-dimension-certificate}. Bounded-integral
monotonicity, evaluation of an infimum at an admissible point, nonnegativity of
loss, and substitution into the stated definition are atomic facts proved or
applied at their exact locations. The global diagnostic mentioned in the proof
is not used as mathematical authority.

## Target Claim Audit

The reviewed artifact has SHA-256
`e6f01e32495159b626ba6155b9ea9bc3b2dc4fb68f279389488a784a75d52bec`
and matches sketch attempt 1, `step_004`, and producer unit attempt 1. Its
target reproduces the accepted sketch row without strengthening, weakening, or
changing dependencies, assumptions, proof tools, output, rate, probability
mode, or boundary scope.

Dependency identity and acceptance also match the live artifacts. The
`step_001` proof/review pair has proof SHA-256
`30d2b34a459400227c70179b068b366aee5aff266c34c5560c52eab637c37869`
and review SHA-256
`fa54fce4696d938e176497c9dab65403d0fdc5a0d929dac9cb384cac01525f70`,
identifies unit attempt 1, and is `ACCEPTED`. The `step_002` attempt-2 pair has
proof SHA-256
`04991f3a26b765f4f6903fad47c91a8ec96f76a5772deeaf5982be234f1d1f83`
and review SHA-256
`ac6001c71e6a628eea53150aaa8d26e52c6d93385b817e533375a650b7cb3442`
and is `ACCEPTED`. The `step_003` pair has proof SHA-256
`707b100fe708afd2cb547b8b9002dc6ae2b5cc72f57862a48b7ad49e9f906f2f`
and review SHA-256
`9c731aa08fcf2c3f6fa86b542b4b0af275cfe24db3ffd4dc64ca734a4ecff078`
and is `ACCEPTED`. Their exact exported conclusions are sufficient for every
use in the current proof.

The final quantifiers are correct: one law fixed from (A,\mu,m,\tau) works
for every ((\mathcal D,h)); the comparison weight is allowed to depend on the
fixed instance and tape only inside the pointwise infimum; and the only outer
randomness is the learner tape or its feature-map pushforward. The full sharper
comparison chain and the exact bound required by `setting.md` are established.

## Explicit Rate Audit

The step preserves all exposed variables
(m\in\mathbb N_0), (\tau>0),
(\varepsilon\in[0,1/4)), (K=\lceil1/\tau\rceil), and
(N=(K+1)^m=(\lceil1/\tau\rceil+1)^m). Both bounds are exact and contain no
hidden constant. The law is fixed from the domain, class, learner, tape law,
grid rule, coordinate order, and padding convention before the arbitrary
instance is selected. Probability mode is expectation only over
(R\sim\mu), equivalently (\Phi\sim\mathsf P_A); horizon mode is fixed finite
depth at most (m); and norm/loss mode is the setting's tie-penalized risk with
exact transfer to binary risk. There is no confidence parameter, conditioning
event, auxiliary tolerance, absorbed term, probability conversion, asymptotic
claim, or omitted dependence. The displayed inequalities prove the complete
risk bridge, and the displayed identity proves the complete dimension rate.
The baseline reductions are exact: binary scores preserve
(L_{\mathrm{tie}}=L_{\mathrm{bin}}), (\varepsilon=0) gives zero expected
tie loss without a rounding remainder, (m=0) gives (N=1), and
(\tau\ge1) gives (N=2^m). No additional Rate Specialization Bridge is
needed.

## Notation Surface Audit

The setting-defined or accepted objects (K,G,N,g_{r,z},\phi_r,\mathsf P_A),
(\mathcal O^\rho_{\mathcal D,h}), and (z^{\mathcal D,h,r}) retain their
public-facing roles. The only new abbreviation,
(F_{\mathcal D,h}), is explicitly classified as appendix-local, is expanded
again in the final certificate, and hides neither a parameter nor a proof
obligation. The tape space, (T), feature-map sigma algebra, and measurable
selected-basis loss are inherited appendix-local objects; fixed instances,
tapes, and duplicate-fiber comparisons are proof-local. The basis vector is a
transparent appendix-local instantiation of a setting-defined standard basis.
No new constant, event, radius, selector, helper dictionary, or theorem-facing
condition is exported. Each non-atomic unit has a paper-ready title and stable
label in addition to its audit ID.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-004-infimum-pushforward} first transfers the exact
mapwise optimal-loss functional through the accepted pushforward and bounds it
tape by tape at the canonical basis weight. Proposition~\ref{prop:step-004-canonical-risk}
then invokes Assumption~\ref{assump:universal-adversarial-sq} at the accepted
valid canonical oracle and uses the accepted tie-free transfer to bound that
candidate loss by (\varepsilon). Proposition~\ref{prop:step-004-dimension-certificate}
composes those named results, uses the accepted common-law and exact-count
interfaces, takes the universal instance suprema, and applies the formal
definition. The assembly relies only on theorem-style references, and these
results jointly imply the exact target claim with no missing bridge, changed
quantifier, additive term, hidden dependence, or boundary exception.

## Review Rationale

`ACCEPTED` is warranted because the reviewed proof has the exact required
identity, every local unit has an explicit and correct statement and proof from
allowed primitive or accepted-derived inputs, and their named assembly proves
the full accepted sketch-row claim. The high-risk quantifier point is handled
correctly: the law remains pre-instance, while the comparison weight is chosen
only inside the pointwise infimum for each tape occurrence. The accepted
measurability interface makes both the pushforward functional and tape-selected
candidate integrable, including on noninjective fibers. The universal
valid-policy premise applies directly to the canonical oracle, the binary
coordinate removes ties exactly, and the same law plus the exact count closes
the dimension definition. No local proof, dependency, or sketch/interface
repair is required, so `None` is the smallest retry target.
