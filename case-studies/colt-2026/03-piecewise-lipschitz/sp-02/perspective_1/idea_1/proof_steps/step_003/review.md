# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_003
- Unit attempt: 2
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_003/proof.md, SHA-256 648841deed8e205ff9dcbf7b74267a77bdbb7d519a7ce1f9833de0d88f503cf5
- Binding setting artifact: perspective_1/idea_1/setting.md, SHA-256 f77d11e1a559e22a96b14de1936d50c691c79d5a4a15e5806ddf4e6d119ada83
- Binding accepted sketch artifact: perspective_1/idea_1/proof_sketch.md, SHA-256 2fa48ee16cca9a8d0379071f448d1e72ce98ae46d624482d772e74b97649c74a
- Binding accepted sketch review artifact: perspective_1/idea_1/proof_sketch_review.md, SHA-256 40b66331aa50a66607d068e266c545a865044bd175a56d81f012542e6d17d6f8
- Accepted dependency proof artifact: perspective_1/idea_1/proof_steps/step_002/proof.md, SHA-256 b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c
- Accepted dependency review artifact: perspective_1/idea_1/proof_steps/step_002/review.md, status ACCEPTED, SHA-256 71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37
- Accepted global diagnostic pair: global_proof.md, SHA-256 45e93d102aa948c0d80886e5f21cf3bdaa412dfaa25611684eb363d48fa1f5b9; global_proof_review.md, status ACCEPTED, SHA-256 cd86cc68e3982c55aeb16fcafbda0759bb71464aee405c4a158bd41a308463db
- Triggering review lineage: SHA-256 ac3b8e064640398453f09cc877a0038f4e171b9b56544b066a55aa1363aeb0bd, status REVISE_STEP, target /proof-step step_003; used only to identify the authorized attempt-2 metadata repair, not as current proof evidence.

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-incidence-jacobians} states exactly the regular-incidence and two-Jacobian interface assigned by the accepted step_003 row. Its assumption basis is explicit: Assumption~\ref{assump:parameter-regime}, accepted Proposition~\ref{prop:step-002-projective-speed}, and an open interval $J\subseteq\operatorname{int}(\Theta)$.
- Proof validity: For $g(\theta,a)=\langle a,\gamma(\theta)\rangle$, the full gradient is $(u,\gamma)$, where $u=\langle a,\gamma'(\theta)\rangle$, and its norm is $\sqrt{1+u^2}$. Thus the incidence is a regular $N$-dimensional $C^1$ hypersurface even when $u=0$. On its tangent space, the Gram determinant for coefficient projection is $1-\|P_Te_0\|_2^2=|\langle e_0,n\rangle|^2$, while the scalar tangential Jacobian of $\tau$ is $\|P_Te_0\|_2$. This gives
  \[
  J_{\mathcal S_J}\pi=\frac{|u|}{\sqrt{1+u^2}},\qquad
  J_{\mathcal S_J}\tau=\frac1{\sqrt{1+u^2}},\qquad
  J_{\mathcal S_J}\pi=|u|J_{\mathcal S_J}\tau
  \]
  with no missing orientation or dimensional factor.
- Cited-result and assumption audit: The accepted dependency digest and review digest are current and certify the same $C^1$ unit curve used here. The regular level-set theorem is restated with its current objects and hypotheses, and regularity comes from the unit coefficient gradient rather than root transversality. No density, independence, section bound, or generated condition is imported.
- Rigor checklist: The ambient dimension is $N+1$, the incidence dimension is $N$, $J\pi$ is the $N$-Jacobian, and $J\tau$ is the scalar tangential Jacobian. The normal and tangent-space algebra is valid for every finite $a$, including $N=1$, $u=0$, and $\gamma'=0$. The strict positivity of $J\tau$ also validates the equivalent ratio $J\pi/J\tau=|u|$, although the later proof safely uses the product identity and never divides by $u$.
- Local adversarial test: At a tangent root $u=0$, the incidence remains regular, $J\pi=0$, and $J\tau=1$. For a stationary normalized curve the same identities give zero projection cost. For $N=1$, the tangent space is one-dimensional and the displayed Gram calculation remains exact. All tests pass.
- Contribution to target step: The lemma supplies the exact area/coarea Jacobian product needed for the coefficient-volume sweep and removes any need for simple roots or transversality.
- Verdict: PASS
- Repair direction: None.

### unit_002: lemma

- Statement fidelity: Lemma~\ref{lem:step-003-null-degeneracies} explicitly covers normalization, interval endpoints, identically-zero combinations, stationary normalized subintervals, and $N=1$, under exactly the primitive assumptions and accepted dependency allowed by the sketch row.
- Proof validity: Positive $\|F(\theta)\|_2$ proves root-event equivalence after normalization. Each endpoint contributes one proper hyperplane, hence at most two null hyperplanes. The identically-zero set is an intersection of kernels contained in the proper hyperplane at any selected $t_0\in I$, with properness supplied by $F_1(t_0)=1$. Coordinatewise mean-value arguments make a curve with $\gamma'=0$ on an interval interior constant on that interval, so its entire root set is one null hyperplane while its sweep integrand is zero. The $N=1$ calculation gives $F=\gamma=(1)$, root set $\{0\}$, and zero on both sides, with $\mathcal H^0(\{0\})=1$.
- Cited-result and assumption audit: The only standard result is the one-variable mean-value theorem, restated and applied coordinatewise. The anchor is used only for the literal $F_1=1$ and scalar reduction; global nonvanishing and $C^1$ normalization come from the accepted dependency. Absolute continuity is stated only for the later probability consequence and is not used to prove the current coefficient-volume assertion.
- Rigor checklist: Empty, singleton, open, closed, and half-open intervals are covered because an interval differs from its ordinary interior by at most two points. Proper subspaces are $N$-dimensional Lebesgue-null, including the zero vector and all identically-zero coefficients. No stationary interval is charged positive sweep volume, and no endpoint inclusion convention changes the result.
- Local adversarial test: The claims remain valid for an empty interval, a singleton at either boundary of $\Theta$, a globally stationary curve, a stationary subinterval, the zero coefficient vector, and $N=1$. An infinite root fiber arising from an identically-zero combination lies entirely in the proved null subspace. All tests pass.
- Contribution to target step: The lemma restores endpoints and disposes of every named null or stationary class without narrowing the interval or root type.
- Verdict: PASS
- Repair direction: None.

### unit_003: proposition

- Statement fidelity: Proposition~\ref{prop:step-003-central-volume} reproduces the accepted witness exactly for every interval $I\subseteq\Theta$, with the same closed coefficient cube, Euclidean measures, normalized curve, integrand, and no probability or section-size conclusion added.
- Proof validity: Compact exhaustion of the interval interior makes the root coefficient set Borel. The incidence set is a measurable countably $N$-rectifiable $C^1$ hypersurface; the ambient linear maps $\pi$ and $\tau$ are Lipschitz; and the weights are continuous. The equal-dimensional area formula therefore yields the extended multiplicity identity, and $\mathbf 1_{\{\mathcal N_J\geq1\}}\leq\mathcal N_J$ gives the sole inequality. Substitution of the exact Jacobian product followed by coarea yields precisely
  \[
  \int_J\int_{\gamma(\theta)^\perp\cap K^\circ}
  |\langle\gamma'(\theta),a\rangle|\,d\mathcal H^{N-1}(a)\,d\theta.
  \]
  Since $J\tau>0$, this is also the result of the legitimate ratio $J\pi/J\tau=|\langle a,\gamma'\rangle|$; the submitted proof avoids an unnecessary division and uses the exact product form.
- Cited-result and assumption audit: The area and coarea formulas are restated in the correct rectifiable-set dimensions, with extended multiplicity, measurability, Lipschitz maps, and hypothesis discharge. The author-hosted primary statement of Edelman--Kostlan Theorem 5.1 uses $a\in\mathbb R^{n+1}$, $\gamma=v/\|v\|$, and standard Lebesgue measure on $\gamma(t)^\perp$, which map to current $N=n+1$, $\gamma_F$, and $\mathcal H^{N-1}$, and its integrand is exactly
  \[
  \int_{\gamma_F(\theta)^\perp}
  |\langle\gamma_F'(\theta),a\rangle|\sigma(a)\,
  d\mathcal H^{N-1}(a).
  \]
  It is correctly used only as a convention cross-check. It does not output the truncated-cube union-volume inequality, area-formula multiplicity, critical-image nullity, endpoint or infinite-fiber handling, Ball's section bound, the Pfaffian derivative bridge, or the affine chart.
- Rigor checklist: The multiplicity $\mathcal N_J$ may be finite or $+\infty$, so tangent, multiple, accumulating, and infinite root fibers require no discreteness assumption. The tangent locus is measurable; its projection is Lebesgue measurable through the area-formula multiplicity formulation (equivalently, as an analytic image), and zero $J\pi$ makes that image null. Several distinct roots only increase multiplicity. The cube boundary is $N$-null on the left; for $N\geq2$, every central hyperplane meets each affine cube face in dimension at most $N-2$, so open and closed sections have the same $\mathcal H^{N-1}$-integral. The separately proved $N=1$ convention is exact.
- Local adversarial test: Interior tangent roots, ordinary or higher-order multiple roots, infinitely many roots with or without identical vanishing, endpoint-only roots, coefficients on every cube face, a stationary normalized curve, empty or singleton intervals, and $N=1$ all pass. In no case is a positive derivative margin, finite root count, density cap, coordinate independence, section bound, or probability conversion used.
- Contribution to target step: The proposition converts the exact root-union coefficient set into the accepted central incidence integral with literal constant one and exports the sole public-facing step_003 interface.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains. The regular-incidence and Jacobian algebra is isolated in Lemma~\ref{lem:step-003-incidence-jacobians}; normalization, endpoint, stationary, identically-zero, and scalar cases are isolated in Lemma~\ref{lem:step-003-null-degeneracies}; and measurability, area/coarea, cube-boundary restoration, multiplicity, critical-image nullity, and target closure are contained in Proposition~\ref{prop:step-003-central-volume}. The standard level-set, area, coarea, and mean-value results are restated before use. Mathematical authority is carried by theorem-style names and stable labels, not bare unit or step IDs.

## Target Claim Audit

The submitted proof records sketch attempt 2, step_003, and unit attempt 2. Its accepted step_002 proof and review digests are exactly b59794f374d66ec07e21b8662c438251ef1d9ba42c8a4db03894d62c8560e69c and 71bec34a7f197cb6480973516a1a47c5a30c196eb5144676c7fa5d5be8563a37; neither archived digest appears. Mechanical comparison with the archived unit-attempt-1 proof confirms that the only changes are the unit-attempt value and those two stale digests. The target row, three unit statements, derivations, assembly, constants, measures, and rate surface are otherwise byte-for-byte preserved. The archive and prior decision were not used as mathematical evidence.

The proof establishes exactly
\[
\operatorname{Leb}^N\{a\in[-R,R]^N:\exists\theta\in I,
\langle a,F(\theta)\rangle=0\}
\leq
\int_I\int_{\gamma_F(\theta)^\perp\cap[-R,R]^N}
|\langle\gamma_F'(\theta),a\rangle|\,d\mathcal H^{N-1}(a)\,d\theta
\]
for every interval $I\subseteq\Theta$, under exactly Assumptions~\ref{assump:parameter-regime} and \ref{assump:anchored-unit-range} and the accepted step_002 output. It neither strengthens nor weakens the accepted claim and introduces no density, section, independence, transversality, or finite-root hypothesis.

The artifact has every required proof-step heading, exactly three local-map rows and exactly three matching derivation subsections, correct table arities, unique local labels, resolved local and dependency references, and only the two stable setting IDs actually allowed. It is ASCII-only apart from ordinary line endings, contains no forbidden control bytes, and has balanced braces, dollar/display TeX delimiters, and begin/end environments.

## Explicit Rate Audit

This is the exact rate-bearing geometric interface for R2. The exposed objects are $N$, $R$, $I$, and $\gamma_F$ through the literal local factor $|\langle\gamma_F'(\theta),a\rangle|$. Hidden constants are absent; the only quantitative comparison is the pointwise indicator-to-multiplicity inequality, and the Jacobian relation is an equality. The mode is deterministic $N$-dimensional coefficient volume, uniform over every interval, with Euclidean inner product and $\mathcal H^{N-1}$ on sections. No $A$, $\kappa$, probability, confidence parameter, section estimate, auxiliary tolerance, or term absorption enters. The $N=1$, stationary-curve, empty-interval, and singleton-interval reductions give exact zero on both sides, so no baseline loss is introduced.

## Notation Surface Audit

The sole public-facing output is Proposition~\ref{prop:step-003-central-volume}. The abbreviations $\gamma,K,K^\circ,J$, the incidence data $g,\mathcal S_J,\pi,\tau,u,n,e_0,T$, and the sets or multiplicities $\mathcal N_J,\mathcal C_J,\mathcal Z_I$ are correctly classified as proof-local and derived from setting objects or named local results. No helper constant, radius, margin, threshold, event, recurrence, density, or appendix-local dictionary is exported.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-002-projective-speed} supplies the same-target $C^1$ unit curve and nonvanishing. Lemma~\ref{lem:step-003-incidence-jacobians} supplies regularity and the exact Jacobian product. Lemma~\ref{lem:step-003-null-degeneracies} supplies normalization equivalence and all null boundary or stationary cases. Proposition~\ref{prop:step-003-central-volume} then applies extended-multiplicity area and coarea formulas and restores the closed cube and full interval. These named results jointly imply the exact target with coefficient-volume constant one. The accepted global pair was hash-validated as optional diagnostic context but supplies no proof fact, assumption, citation, or assembly authority.

## Review Rationale

ACCEPTED with Smallest Retry Target = None is the smallest valid decision. Every binding hash and attempt identity matches; the authorized attempt-2 repair is exact; all three local units are self-contained and valid; and the area/coarea derivation handles tangent, multiple, infinite, endpoint, stationary, cube-boundary, identically-zero, and $N=1$ regimes without hidden hypotheses or factors. The source cross-check is faithful and contributes no unproved output. No local proof, dependency, or sketch-interface blocker remains.
