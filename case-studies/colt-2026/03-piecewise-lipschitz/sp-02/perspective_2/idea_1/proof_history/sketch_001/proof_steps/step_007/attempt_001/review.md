# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_007
- Unit attempt: 1
- Reviewed proof artifact: perspective_2/idea_1/proof_steps/step_007/proof.md
- Reviewed proof SHA-256: 8be2df25871ae6e1737861b3bd138011f1027951988250dc688e7233e94434e6
- Progress type: full

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: lemma

- Statement fidelity: Lemma~\ref{lem:step-007-sectionwise-product} states exactly the deterministic integral bound needed between the accepted coordinate-free sweep and the affine probability rate. Its basis is the setting parameter definitions, accepted Lemma~\ref{lem:step-004-partition-sum}, accepted Propositions~\ref{prop:step-005-translated-cube-section} and \ref{prop:step-006-affine-velocity}, and explicitly restated nonnegative-integration facts. It quantifies over every interval with \(|I|>0\) and does not add a law, amplitude, transversality, pivot, or regularity condition.
- Proof validity: For each fixed \(\theta\), the accepted `step_005` result bounds the measure of the exact section \(H_\theta\cap[-R,R]^N\), and the accepted `step_006` result bounds the exact normal-velocity integrand on that same section. Monotonicity therefore gives
  \[
  \int_{H_\theta\cap[-R,R]^N}
  \frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
  \,d\mathcal H^{N-1}(a)
  \leq
  \sqrt{2}(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}.
  \]
  The accepted `step_004` measurability conclusion permits interval integration, which contributes exactly \(|I|\). No orientation factor, chart count, limit, or second probability conversion appears.
- Cited-result and assumption audit: The three dependency proof/review hashes match the binding artifacts and all three reviews have status `ACCEPTED`. The section certificate applies with \(n=F(\theta)\neq0\) and \(c=-F_0(\theta)\); nonvanishing is supplied by the accepted velocity dependency. The velocity certificate is pointwise on precisely the section integrated by `step_004`. All conditions are accepted derived outputs or setting definitions, so the assumption-provenance contract passes.
- Rigor checklist: Both integrands and measures are nonnegative, the moving section mass is measurable, and all constants are finite under the setting. Empty sections have zero measure and zero integral. For \(N=1\), the accepted \(\mathcal H^0\) convention and the literal factors \(\sqrt{2}(2R)^0\) and \(1+R^2\) give the same inequality. No interchange of a signed integral, limit, expectation, or supremum is used.
- Local adversarial test: An empty section, a boundary singleton when \(N=1\), a zero pointwise numerator, an arbitrarily oriented translated section, and \(\widehat\Lambda_{B,T}=0\) all preserve the displayed product. The argument cannot acquire an extra density factor because it is purely deterministic.
- Contribution to target step: This lemma supplies exactly the second displayed affine inequality after multiplication by the already present factor \(\kappa\).
- Verdict: PASS
- Repair direction: None

### unit_002: proposition

- Statement fidelity: Proposition~\ref{prop:step-007-affine-event-rate} states both displayed general affine inequalities and the exact equality to \(A(1+NR^2)\widehat\Lambda_{B,T}|I|/(\sqrt{2}R)\), for every admissible law and every positive-length interval. It preserves ordinary probability, arbitrary joint correlation, all requested Euclidean conventions, and the absence of hidden constants.
- Proof validity: Accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} is consumed verbatim for
  \[
  \Pr[\exists\theta\in I:\phi_\alpha(\theta)=0]
  \leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
  \frac{|F_0'+\langle a,F'\rangle|}{\|F\|_2}
  \,d\mathcal H^{N-1}\,d\theta.
  \]
  Lemma~\ref{lem:step-007-sectionwise-product} bounds that exact integral. Since `step_004` already performed the sole full-joint-density domination, this proposition introduces no second density or probability conversion.
- Cited-result and assumption audit: Assumption~\ref{assump:cube-density-laws} supplies the original possibly correlated law class. The accepted `step_004` proposition supplies the probability interface, while the preceding named local lemma supplies the deterministic integral bound. No independence, marginal-density, conditional-density, homogeneous, monic, counterexample, or assembly input is used.
- Rigor checklist: The algebra is literal. From \(A=(2R)^N\kappa\) and \(R>0\),
  \[
  \kappa\sqrt{2}(2R)^{N-1}
  =\frac{\kappa(2R)^N}{\sqrt{2}R}
  =\frac{A}{\sqrt{2}R}.
  \]
  Multiplication by the nonnegative factor \((1+NR^2)\widehat\Lambda_{B,T}|I|\) preserves equality. Quantifiers are fixed only to instantiate the universal statement, and the resulting constant is independent of both \(\mu\) and \(I\).
- Local adversarial test: Maximally correlated admissible laws, arbitrarily short positive intervals, \(N=1\), empty sections, cube-boundary roots, and \(\widehat\Lambda_{B,T}=0\) do not alter the chain. Setting \(R=0\) would invalidate the final division, but that regime is excluded by the primitive condition \(R>0\).
- Contribution to target step: This proposition proves the complete pairwise affine probability chain with every literal factor exposed.
- Verdict: PASS
- Repair direction: None

### unit_003: claim

- Statement fidelity: Claim~\ref{claim:step-007-zero-certificate} addresses exactly the accepted sketch's zero-certificate boundary obligation. It distinguishes an empty cube-truncated static section from a nonempty static proper-hyperplane event and uses only Assumption~\ref{assump:cube-density-laws}, setting definitions, and accepted `step_004` and `step_006` outputs.
- Proof validity: If \(\widehat\Lambda_{B,T}=0\), accepted Proposition~\ref{prop:step-006-boundary} gives \(B=0\) and \(\widetilde F'=0\) on the interval \(\Theta\). The elementary zero-derivative criterion used inside this same local unit makes \(\widetilde F\) constant. Anchor-backed \(\|F\|_2\geq1\) then makes
  \(H_* = \{a:F_0^*+\langle a,F^*\rangle=0\}\)
  a fixed proper affine hyperplane, and the root event over every nonempty \(I\) equals \(H_*\). If \(H_*\cap[-R,R]^N\) is empty, cube support makes the event impossible. If it is nonempty, the normal-velocity numerator is identically zero, so accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} yields \(\mu(H_*)\leq0\). Thus the event is law-null without conflating it with the empty-section case.
- Cited-result and assumption audit: The zero-derivative implication is a direct finite-dimensional interval fact within the local proof. The probability-zero conclusion uses the already allowed coordinate-free sweep dependency, whose accepted proof transitively handled persistent roots; the current proof does not import `step_002`, a separate hyperplane-null theorem, absolute-continuity conversion, or independence argument.
- Rigor checklist: Positive length makes \(I\) nonempty, so a constant affine function has a root somewhere in \(I\) exactly when its coefficient belongs to \(H_*\). Properness follows from \(F^*\neq0\), not from section nonemptiness. In the nonempty case, the integrand is zero on a finite-measure section; in the empty case, the supported event and section integral are both empty. The two cases exhaust all possibilities.
- Local adversarial test: A static hyperplane crossing the cube, a static hyperplane missing the cube, \(N=1\) with a singleton root section, and an arbitrary correlated capped-density law all give probability zero. The argument remains valid even though a zero certificate does not imply an empty section.
- Contribution to target step: This claim discharges the required zero-certificate interpretation and confirms that the zero rate is genuine in every boundary branch.
- Verdict: PASS
- Repair direction: None

### unit_004: proposition

- Statement fidelity: Proposition~\ref{prop:step-007-affine-dispersion} states exactly the requested \(C^{\mathrm{aff}}_{\mathcal D}\) certificate from the pairwise rate, with no stronger horizon claim and no interval-length threshold beyond \(|I|>0\).
- Proof validity: For a fixed \(\mu\), Proposition~\ref{prop:step-007-affine-event-rate} gives the rate for every positive-length interval. The proof divides only by \(|I|>0\), takes the interval supremum appearing inside the setting definition, and only then takes the outer law supremum. The common right side is independent of both indices, so monotonicity of suprema proves the result directly.
- Cited-result and assumption audit: The only mathematical authority is the named pairwise-rate proposition plus the setting definition and the explicitly restated order fact. The law class is nonempty by the setting, and no interchange, measurable selection, limiting interval, probability conversion, or confidence parameter is introduced.
- Rigor checklist: The supremum order is exactly
  \(\sup_{\mu\in\mathcal D}\sup_{I\subseteq\Theta,\ |I|>0}\),
  matching the definition. Every denominator is strictly positive. Since there is no lower bound on positive \(|I|\), arbitrarily short positive intervals are included.
- Local adversarial test: A sequence of intervals with lengths tending to zero, laws approaching any boundary of the admissible class, and \(\widehat\Lambda_{B,T}=0\) all preserve the uniform bound. No conclusion is claimed for zero-length intervals.
- Contribution to target step: This proposition closes the all-interval and all-law uniformity required by the accepted row.
- Verdict: PASS
- Repair direction: None

## Hidden Subclaim Scan

No independent nontrivial subclaim is missing from the four-unit map. Exact sectionwise multiplication and interval integration are in Lemma~\ref{lem:step-007-sectionwise-product}; the probability chain, sole density use, and \(A\)-algebra are in Proposition~\ref{prop:step-007-affine-event-rate}; staticity, properness, event identification, and the empty/nonempty zero-certificate dichotomy are in Claim~\ref{claim:step-007-zero-certificate}; and positive-length division plus ordered suprema are in Proposition~\ref{prop:step-007-affine-dispersion}. The target assembly cites these theorem-style labels and accepted dependency labels rather than treating unit IDs or subsection names as proof authority. No hidden amplitude, transversality, independence, chart-count, tolerance, homogeneous, monic, counterexample, or final-assembly claim appears.

## Target Claim Audit

The proof establishes the exact accepted `step_007` claim. For every \(\mu\in\mathcal D_{N,R,\kappa}\) and every interval \(I\subseteq\Theta\) with \(|I|>0\), it proves

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq \kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq \kappa\sqrt{2}(2R)^{N-1}(1+NR^2)
\widehat\Lambda_{B,T}|I|\\
&=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt{2}R}|I|,
\end{aligned}
\]

and then proves the exact defining-supremum bound for \(C^{\mathrm{aff}}_{\mathcal D}\). Quantifiers, ordinary-probability mode, interval mode, arbitrary correlation, Euclidean norms, Hausdorff convention, literal constants, and degree-zero additional dependence on \(q,M,\Delta\) are unchanged. The progress type remains `full`.

## Explicit Rate Audit

The exposed variables are exactly \(N,R,\kappa,A=(2R)^N\kappa,\widehat\Lambda_{B,T},|I|\), with \(\mu\) and \(I\) ranging as in the setting. Hidden constants are absent and may depend on no instance, law, interval, correlation, orientation, offset, pivot, multiplicity, endpoint convention, or Pfaffian presentation parameter. The deterministic presentation and support/density data are fixed before \(\mu\) and \(I\) range. The probability mode is ordinary probability with no confidence or conditioning conversion; the horizon mode is pairwise over every positive-length interval followed by the defining interval and law suprema; and the norm mode is Euclidean with \(\mathcal H^{N-1}\), including \(\mathcal H^0\) for \(N=1\). There is no auxiliary tolerance or absorbed term. The complete domination and the exact \(A/(\sqrt{2}R)\) identity are displayed. The general affine clause leaves the sharper homogeneous and exact monic baseline producers untouched, while its own zero-certificate specialization reduces exactly to rate zero.

## Notation Surface Audit

All helper objects are classified. The two affine-rate propositions are `public-facing` and export only setting notation. Lemma~\ref{lem:step-007-sectionwise-product} and Claim~\ref{claim:step-007-zero-certificate} are `appendix-local`. The reference point \(\theta_0\) and the derived aliases \(F_0^*,F^*,H_*\) are `proof-local` and disappear from the exported interface. Every constant comes from the setting or an accepted dependency, and no one-off alias hides boundedness, finiteness, a rate, a margin, or an assumption. The exported surface is minimal for downstream `step_012`.

## Target-Step Assembly Audit

Accepted Proposition~\ref{prop:step-004-coordinate-free-sweep} supplies the first probability inequality verbatim. Accepted Proposition~\ref{prop:step-005-translated-cube-section} and accepted Proposition~\ref{prop:step-006-affine-velocity} act on the same cube-truncated affine section, and Lemma~\ref{lem:step-007-sectionwise-product} composes them. Proposition~\ref{prop:step-007-affine-event-rate} supplies the exact pairwise chain and literal constant identity; Claim~\ref{claim:step-007-zero-certificate} closes the required boundary interpretation; and Proposition~\ref{prop:step-007-affine-dispersion} performs the two defining suprema in order. These named accepted and local results jointly imply the exact target with no new dependency, residual, assumption, conversion, or hidden input.

## Review Rationale

All four non-atomic local units are statement-complete, valid under the accepted dependency interfaces, and jointly prove the exact sketch row. The proof preserves the sole coordinate-free probability conversion, multiplies the section and velocity bounds on the identical section with the literal factor, proves the \(A\)-identity using \(R>0\), divides only by positive interval lengths, and takes the defining suprema in the correct order. Every requested null, boundary, dependence, probability, norm, and uniformity regime passes, including the nonempty static hyperplane at zero certificate. No step, dependency, or sketch repair is required, so `ACCEPTED` and `None` are the smallest aligned outputs.
