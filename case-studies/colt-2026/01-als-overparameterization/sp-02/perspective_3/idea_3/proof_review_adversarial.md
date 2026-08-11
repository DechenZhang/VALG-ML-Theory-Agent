# Adversarial Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. The theorem remains explicitly conditional on \(\mathcal C_{\rm path}\). If \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})=0\), the final lower bound is zero. This is the declared certificate-probability gap, not a defect in the conditional theorem.

2. `step_003` is still the longest local proof, but its four units separate radius control, isotropic Khatri--Rao concentration, deterministic elliptic transfer, and event assembly coherently. Its unit-attempt-2 retry repaired only malformed LaTeX and an undefined event alias; it did not expose a second substantive proof failure. The user's proof-work overload rule therefore does not trigger another sketch revision.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Adversarial Audit

- Weakest theorem-level claim: The initialization confidence is the most vulnerable claim because it combines smoothing failure with three conditional initialization failures. Assembly attempt 4 closes the former step-009/step-010 interface break: Proposition~\ref{prop:step-009-raw-witness} now names Proposition~\ref{prop:step-008-raw-leverage} and Lemma~\ref{lem:step-008-tail-conversion}, assumes \(r\ge r_{0,{\rm LEV}}(\kappa)\), displays the exponential-to-polynomial conversion, and exports \(\mathbb P_{\rm init}(\mathcal E_{\rm deficit}^{\mathsf c}\mid A,B,C)\le r^{-20}\). Proposition~\ref{prop:step-010-conditional-union} consumes that complete producer and obtains exactly \(r^{-20}+3r^{-20}=4r^{-20}\).
- Standalone theorem attack: After removing access to internal workflow artifacts, the setup, theorem, proof sketch, appendix, and final proof still establish the same conditional claim for the actual balanced-GD trajectory and physical Frobenius objective. The public theorem assumes only the six primitive conditions, exposes all \(n,r,k,\kappa,q\) dependence, defines \(\epsilon_0(\kappa)\) before use, and retains the possibly zero conditional path factor.
- Weakest step-level claim: The repaired steps 008--010 chain survives the strongest remaining attack. The leverage producer gives failure \(8\exp[-c_Hr/(16\kappa_1^{24})]\); the named threshold converts it to \(r^{-20}\); the raw-witness implication spends no additional budget; and the tower calculation uses the \(\sigma(A,B,C)\)-measurable indicator of \(\mathcal E_{\rm cond}\). It therefore remains valid under arbitrary dependence among the Gram, size, and deficit events and on null fibers outside \(\mathcal E_{\rm cond}\).
- Candidate counterexamples or stress cases: The proof was tested at \(k=r+1\), \(k=\lfloor r^{5/4}\rfloor\), worst allowed ellipticity, equality in the raw-leverage bound, rank loss of the internal synthesis map, \(d=0\), zero model columns, zero path length, \(E_{\rm path}=E_\star\), unit endpoint displacement, equality in the initial deficit, worst-sign Taylor remainder, and zero conditional path probability. The stated assumptions or displayed non-strict inequalities cover each case. The endpoint proof correctly selects \(W_0\) directly from the existential deficit event rather than extending the canonical leverage witness beyond its producer event.
- Explicit-rate stress cases: The maximal-rank comparison gives \(d/r^3\le3r^{-3/4}\), the oblique transfer loses exactly \(\kappa_1^{12}\), the product-Haar tail uses \(c_H=1/288\), and the endpoint argument preserves \((15/16)\delta_0\sqrt r\). Tensor singular-value transfer then gives the stated relative-loss factor \(((15/16)\delta_0)^2\kappa_1^{-12}\). Every polynomial conversion and absorption has a displayed threshold or inequality; no dependence is moved into an unstated constant.
- Appendix self-contained attack surface: All 45 accepted source units appear as 45 public lemma/proposition units with substantive proofs, followed by the main-theorem proof. The QR/Haar disintegration includes the complete rotated shape and reflection bit; the product-manifold concentration matches the unnormalized Hilbert--Schmidt metric; the trilinear endpoint remainder has no hidden \(k\)-factor; and the raw-to-physical projection keeps the same target. Static checks found 253 unique labels, all 185 internal reference targets resolved, all seven citation keys present, balanced theorem/proof/assumption/display environments, no public workflow scaffolding or malformed commands, and no relevant warning or error in the stabilized build logs.
- Scope or mode upgrade attacks: No surviving upgrade was found. Initialization estimates remain conditional on fixed realized smoothing matrices before tower integration; finite variation remains the explicit trajectory certificate; endpoint claims are deterministic on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\); polynomial continuity is used only after parameter convergence; and final event conditioning is performed only after proving \(\mathbb P(\mathcal E_{\rm init\_norm})>0\). No independence, horizon-uniform rate, or unconditional positive-probability conclusion is inserted.
- Remaining risk: The sole substantive limitation is the theorem's declared lack of a uniform positive lower bound for \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\). This keeps the branch correctly classified as conditional and does not block acceptance of the formalized claim.

Verdict alignment: `PASS` has `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`.
