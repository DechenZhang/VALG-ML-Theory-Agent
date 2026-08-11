# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_004
- Unit attempt: 1
- Reviewed proof artifact: perspective_1/idea_1/proof_steps/step_004/proof.md (SHA-256: 1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a)

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-exact-support} states the exact support obligation in the accepted `step_004` row under the primitive witness construction and the full ranges \(d\geq3\), \(R>0\), and \(q\in(0,1)\). It identifies both the continuous image and the displayed sheet, rather than asserting only containment, and explicitly includes the collapsed \(z=0\) fiber, the fibers at \(z=\pm R/2\), and the empty trailing-coordinate list when \(d=3\).
- Proof validity: The map \(F_q\) is continuous because \(q>0\), and its compact image is closed. The two set inclusions \(F_q(T_q)\subseteq S_q\) and \(S_q\subseteq F_q(T_q)\) are valid, with the latter treating \(z=0\) separately so that no division by \(\rho_q(0)\) occurs. The product uniform law has exact support \(T_q\). For every \(y=F_q(z,u)\) and open neighborhood \(O\ni y\), the relatively open preimage \(F_q^{-1}(O)\) contains \((z,u)\) and has positive product-uniform mass; hence every image point is in the pushforward support. Closed-image concentration gives the reverse support inclusion. No injectivity or open-mapping property is needed.
- Cited-result and assumption audit: No external result is used. The continuous-pushforward support criterion is restated and proved in the current objects. Its inputs are the primitive laws of \(Z,U\), their independence, the setting-defined map, continuity, compactness, and full latent support; all are discharged locally.
- Rigor checklist: The proof distinguishes topological support from positive point mass. Relative neighborhoods at latent edges and corners have positive two-dimensional measure, so both endpoint fibers and their \(u=\pm1\) endpoints remain in the support. At \(z=0\), the entire latent fiber maps to one point, but every neighborhood of that point still has positive pushforward mass. Quantifiers and coordinate counts remain valid for \(d=3\).
- Local adversarial test: Noninjectivity at \(z=0\), boundary values \(z=\pm R/2\), boundary noise values \(u=\pm1\), arbitrarily small \(R>0\), and the minimal dimension \(d=3\) do not break either support inclusion or the neighborhood argument. The proof would fail for \(q\leq0\) at the continuity/collapse interface, but that regime is outside the stated range.
- Contribution to target step: This proposition supplies the exact topological sheet support required before cube, conditioning, and downstream geometric arguments may consume it.
- Verdict: PASS
- Repair direction: None.

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-cube-width} uses the primitive witness construction and the preceding exact-support proposition to conclude exact cube support and almost-sure positive width. It expressly covers the collapsed origin, both \(z\)-endpoint fibers, and \(d=3\), matching the accepted row without importing the `step_005` integrability conclusion.
- Proof validity: For \(t=2|z|/R\in[0,1]\), \(0\leq\rho_q(z)=(R/2)t^q\leq R/2\). Thus \(|a_0|\leq R/2\), \(|\alpha_1|=|z|\leq R/2\), \(|\alpha_2|=z^2/R\leq R/4\), and every remaining coordinate is zero. These inequalities prove \(S_q\subseteq[-R,R]^d\); the preceding support identity then applies them to the actual law. Since \(\rho_q(z)=0\) exactly at \(z=0\) and uniform \(Z\) is atomless, \(\Pr(\rho_q(Z)>0)=1\).
- Cited-result and assumption audit: The only prior result used is Proposition~\ref{prop:step-004-exact-support}, which is stated before use and supplies the actual support identity. The coordinate bounds and atomlessness use only primitive setting data. No technical assumption from `setting.md` is silently imposed.
- Rigor checklist: The proof keeps the supported origin distinct from its zero probability under the actual draw. At \(z=\pm R/2\), it obtains \(\rho_q(z)=R/2\) and \(z^2/R=R/4\), so both full endpoint fibers satisfy the cube bounds. For \(d=3\), there are exactly the three displayed coordinates and no undefined trailing term. The unused upper bound \(q<1\) is retained as part of the branch range but not misrepresented as necessary for this unit.
- Local adversarial test: The inequalities remain valid for every \(R>0\), including \(R<1\); they compare scalar multiples of the same positive \(R\), not absolute constants. The zero-width origin does not contradict almost-sure positivity, and atomlessness is used exactly where required. No conclusion is upgraded from almost sure to pointwise.
- Contribution to target step: This proposition proves the coefficient-cube interface and the full-measure positive-width condition needed for the accepted conditional-uniform lemma.
- Verdict: PASS
- Repair direction: None.

### unit_003: lemma

- Statement fidelity: Lemma~\ref{lem:step-004-recovery-independence} states all bridge facts needed to instantiate the accepted dependency: exact recovery of \(Z\), sigma-field equality, independence of \(U\) from the actual higher-coordinate vector, measurable translated location and scale, a full-measure positive-width set, the affine representation, and the support inequality. These are derived under the primitive construction, not exported as theorem-facing assumptions.
- Proof validity: Because the first coordinate of \(\beta_q(Z)\) is the signed variable \(Z\), projection recovers \(Z\) exactly. Measurability of \(\beta_q\) gives \(\sigma(\beta_q(Z))\subseteq\sigma(Z)\), while measurable recovery gives the reverse inclusion. Independence of \(U\) and \(Z\) passes to the measurable image \(\beta_q(Z)\), as verified on Borel rectangles. The functions \(G_q\) and \(\widetilde\rho_q\) and the set \(H_q\) are measurable; along the actual curve, \(\widetilde\rho_q(\beta_q(z))=\rho_q(z)\). Atomlessness yields \(\pi_{\mu_q}(H_q)=1\), and on \(H_q\) the scale is positive and at most \(R/2\), discharging the dependency's positivity and support hypotheses.
- Cited-result and assumption audit: Independence under a measurable map is stated and directly checked in current notation. The accepted dependency is not invoked until this lemma has proved each required local condition. No density for \(\pi_{\mu_q}\), reciprocal-width integrability, or Assumption~\ref{assump:random-intercept-witness} is used.
- Rigor checklist: Retaining the signed first coordinate prevents the two-to-one ambiguity that would arise from recovering \(Z\) from \(Z^2/R\) alone. The ambient definitions on off-curve \(b\) are harmless because the actual marginal is concentrated on \(\beta_q([-R/2,R/2])\). The set \(H_q\) includes both endpoint fibers and excludes only the null fiber \(b_1=0\). Equality of sigma-fields and independence concern the actual random variables, not a surrogate conditioning object.
- Local adversarial test: At \(d=3\), the first higher coordinate still exists and the formulas are unchanged. At \(z=\pm R/2\), the scale remains positive and the support inequality holds. At \(z=0\), the representation remains algebraically true but the fiber is deliberately outside \(H_q\); its marginal probability is zero, so the accepted lemma's full-measure requirement is still met. No `step_005` integrability claim is hidden in the bridge.
- Contribution to target step: This lemma supplies the exact same-target conditioning and independence bridge required for a legal use of the accepted conditional-kernel result.
- Verdict: PASS
- Repair direction: None.

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-004-conditional-cap} invokes exactly the locally discharged bridge and accepted Lemma~\ref{lem:step-003-conditional-uniform-kernel}. It states one jointly measurable regular conditional-density version and the exact cap formula for every support parameter \(0<|z|\leq R/2\), while expressly declining to assert that formula at \(z=0\). This is the exact conditional-law output of the accepted `step_004` row.
- Proof validity: Lemma~\ref{lem:step-004-recovery-independence} supplies the accepted dependency's measurable \(G,\rho,H\), actual affine representation, independence, full-measure positivity, and support conditions. The inherited piecewise kernel is therefore a regular conditional-density version of the actual intercept given the actual \(\beta_q(Z)\). On \(H_q\), substitution of \(\widetilde\rho_q(\beta_q(z))=\rho_q(z)\) gives the displayed uniform density. Because it equals the positive constant \(1/[2\rho_q(z)]\) on an interval of positive Lebesgue length, its Lebesgue essential supremum is exactly that constant. The algebra \(2\rho_q(z)=R(2|z|/R)^q\) gives the claimed cap with no hidden factor.
- Cited-result and assumption audit: The current accepted dependency proof has SHA-256 `2302d712770cbe9f62efad7528b6823b2b2e020ea61231f974293769e16e78af`; its matching review has SHA-256 `2b2c8aba90dc461988cd36f1306e04ca2d3af9355aad670163fd7e3d5eeea334`, status `ACCEPTED`, and smallest retry target `None`. Its conditional-kernel conclusion is restated in current notation, and unit_003 discharges every hypothesis before use. No external result or stronger dependency conclusion is consumed.
- Rigor checklist: A regular conditional law is determined only \(\pi_{\mu_q}\)-almost everywhere, but the dependency constructs an explicit jointly measurable version. That version may validly use the uniform formula on all of \(H_q\), including the individually null endpoint fibers, and a genuine density fallback on \(H_q^c\). Thus the endpoint statement \(K=1/R\) is valid for the selected version, while no physical positive-mass conditional claim or division by zero is made at the collapsed origin. Inclusive density endpoints are Lebesgue-null and do not affect normalization or the exact essential supremum.
- Local adversarial test: At \(z=\pm R/2\), the denominator is exactly \(R\), giving cap \(1/R\). At \(z=0\), the point remains in topological support but \(\pi_{\mu_q}(\{\beta_q(0)\})=0\); the fallback is therefore version-legal and contributes no claimed reciprocal-width value. As \(z\to0\) through nonzero fibers the cap diverges, but this proposition neither converts that behavior into an essential-supremum-over-\(\beta\) claim nor integrates it.
- Contribution to target step: This proposition exports the exact conditional-density version and fiberwise cap formula required by `step_005`, `step_006`, and final assembly.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No independent nontrivial claim is missing from the local lemma map. Exact image equality, full latent support, the closed-image pushforward argument, and all support boundary cases are contained in unit_001. Coordinatewise cube control, atomlessness, and almost-sure positivity are contained in unit_002. Recovery, sigma-field equality, inherited independence, measurable translated objects, and full-measure hypothesis discharge are contained in unit_003. Kernel construction, actual-object conditioning, the exact Lebesgue essential supremum, endpoint versions, and null-fiber fallback are contained in unit_004. The two standard tools are restated and proved or checked in current notation. No pointwise positive-width claim at \(z=0\), reciprocal-width integrability, essential supremum over conditioning fibers, singleton root-hitting bound, density of the higher-coordinate marginal, or diagnostic-only claim is smuggled into the proof.

## Target Claim Audit

The proof establishes the exact accepted `step_004` row for every \(d\geq3\), \(R>0\), and \(q\in(0,1)\). It proves
\[
\operatorname{supp}(\mu_q)
=\left\{(a_0,z,z^2/R,0,\ldots,0):
|z|\leq R/2,\ |a_0|\leq\rho_q(z)\right\}
\subseteq[-R,R]^d,
\]
retains the supported collapsed point at \(z=0\), proves that this fiber has zero probability and that \(\rho_q(Z)>0\) almost surely, recovers \(Z\) from the first higher coefficient, and conditions on the actual vector rather than a latent surrogate. For one explicit jointly measurable conditional-density version it proves, for every \(0<|z|\leq R/2\),
\[
f_{\mu_q}(a_0\mid\beta_q(z))
=\frac{\mathbf1\{|a_0|\leq\rho_q(z)\}}{2\rho_q(z)},
\qquad
K_{\mu_q}(\beta_q(z))
=\frac{1}{R(2|z|/R)^q}.
\]
The quantifier, support, probability, conditioning-version, and boundary scopes match the setting and sketch. Primitive construction data remain primitive; support, positivity, recovery, independence, and the conditional law are derived before use.

## Explicit Rate Audit

The step is rate-bearing only through the preliminary R3 cap formula. It exposes \(d,R,q,z,\rho_q(z)\), all nonzero-fiber restrictions, and the exact coefficient one; hidden constants are absent. It fixes \(d,R,q\) before support points and fibers vary, uses exact deterministic support identities, an almost-sure positivity statement, and a specified regular-conditional version, and declares static horizon and the correct Euclidean, coordinatewise, and scalar Lebesgue-essential-supremum modes. The only admissibility data are \(d\geq3\), \(R>0\), \(q\in(0,1)\), the primitive uniform laws, and independence. There is no auxiliary cutoff, tolerance, probability conversion, term absorption, or unreported marginal-density condition. The exact algebra \(1/[2\rho_q(z)]=1/[R(2|z|/R)^q]\) preserves all dependence. The accepted conditional-kernel result is specialized without loss. The cap integral, cutoff removal, essential unboundedness over \(\beta\), and singleton \(C\)-bound are correctly reserved for `step_005`; the affine-latent comparison remains with `step_006`.

## Notation Surface Audit

All setting-defined objects retain their meanings. The continuous map \(F_q\) is appropriately classified as `appendix-local`; \(T_q,S_q,G_q,\widetilde\rho_q,H_q\), the projection, fallback density, and dummy variables are classified as `proof-local` and are directly defined from setting quantities. Their measurability, boundedness, full-measure status, and representation properties are proved rather than encoded as assumptions. The public-facing export is limited to exact sheet and cube support, almost-sure positive width, recovery of \(Z\), and the exact cap formula. Constants \(R/2\), \(R/4\), and the cap normalization have explicit algebraic provenance. No unnecessary helper dictionary, notation drift, or unclassified theorem-facing object remains.

## Target-Step Assembly Audit

The assembly uses paper-ready named results in dependency order. Proposition~\ref{prop:step-004-exact-support} proves exact support, Proposition~\ref{prop:step-004-cube-width} proves cube support and almost-sure positivity, and Lemma~\ref{lem:step-004-recovery-independence} proves the actual-object conditioning bridge and every local hypothesis of accepted Lemma~\ref{lem:step-003-conditional-uniform-kernel}. Only then does Proposition~\ref{prop:step-004-conditional-cap} invoke that dependency to obtain the exact conditional density and cap. These conclusions jointly imply every clause of the target row, including both endpoint fibers, the supported but null origin, and \(d=3\). The assembly does not rely on subsection titles or local unit IDs as mathematical authority and introduces no new lemma or `step_005` calculation.

## Review Rationale

ACCEPTED is warranted because the submitted proof matches sketch attempt 1, `step_004`, unit attempt 1, and SHA-256 `1185a072dbcfcc7d54534cb11631b38b4a0f7d937c65b0c963d2812739f9e65a`; its sole dependency is current and accepted; and all four local units prove their exact assigned interfaces from allowed inputs. Exact pushforward support, cube and endpoint bounds, the topological-versus-probabilistic treatment of the collapsed origin, latent recovery, sigma-field equality, inherited independence, measurable version selection, exact fiberwise essential supremum, minimal dimension, and target assembly all pass adversarial review. No local, dependency, or sketch defect remains, so `None` is the aligned smallest retry target.
