# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:polynomial-global-stability`, fix any
\(\varepsilon_0\in(0,1)\). For every sequence of domains
\(\{X_\kappa\}_{\kappa\in\mathbb N}\) and every sequence
\(\{C_\kappa\}_{\kappa\in\mathbb N}\) such that
\(C_\kappa\subseteq\{0,1\}^{X_\kappa}\) is nonempty and finite for every
\(\kappa\), \(|C_\kappa|\to\infty\), and
\[
\forall p\in\mathbb N\ \exists\kappa_0(p)\ \forall\kappa\geq\kappa_0(p):
\qquad L_\kappa>d_\kappa^p,
\]
there is a constant \(K_a\geq2\), depending only on
\(a,\alpha_0,\beta_0\) and the universal numerical constant
\(C_{\mathrm{BLM}}\), and independent of
\(\kappa,X_\kappa,C_\kappa,|C_\kappa|\), every realizable distribution,
and \(\varepsilon_0\), such that for every \(\kappa\) there is an
arbitrary-output, computationally unrestricted learner \(M_\kappa\) using
exactly
\[
N_\kappa
=\left\lceil
K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right)
\right\rceil
\]
iid labeled examples. The learner is distribution-free realizable
\((\alpha_0,\beta_0)\)-PAC in population zero-one risk and
\((\varepsilon_0,\delta_\kappa)\)-differentially private under symmetric
ordered replacement adjacency, where
\[
\delta_\kappa
=\exp\!\left[-q_\kappa^{2a+2}-\log\log(e^e+L_\kappa)\right],
\qquad
\log(1/\delta_\kappa)
=q_\kappa^{2a+2}+\log\log(e^e+L_\kappa).
\]
Moreover,
\[
N_\kappa
\leq 1+K_a\varepsilon_0^{-2}q_\kappa^{2a+2}
\left(1+q_\kappa^{2a+2}+\log\log(e^e+L_\kappa)\right),
\qquad
N_\kappa=L_\kappa^{o(1)}=o(L_\kappa),
\]
and, for every fixed real \(\rho>0\),
\(\delta_\kappa N_\kappa^\rho\to0\). If an allowed privacy schedule
satisfies \(\bar\delta(N_\kappa)\geq\delta_\kappa\), the same learner is
\((\varepsilon_0,\bar\delta(N_\kappa))\)-DP. In particular, for every
fixed \(c>0\), eventually
\[
\delta_\kappa\leq
\frac{c}{N_\kappa^2\log(eN_\kappa)}.
\]
Consequently, at the exact schedule or any eventually larger allowed
schedule, no eventual \(\Omega(L_\kappa)\) sample lower bound can hold for
all eligible arbitrary-output, computationally unrestricted,
distribution-free realizable \((\alpha_0,\beta_0)\)-PAC learners. The PAC
probability is joint over the iid sample and learner randomness, privacy is
pointwise for every adjacent pair and measurable output event, and the
theorem is explicitly conditional on the sole novel primitive assumption
`assump:polynomial-global-stability`.

## Blockers

None

## Notes

- Assembly attempt 5 is the downstream reassembly after the aggregate
  `PROOF_STEP_FLAW` review with SHA-256
  `2a54d563c708da09c39a13d6941deb6f881fa28bfaf9ec3aaf30a446d4d36056`,
  whose suggested next action was `/proof-step step_005` in `repair_step`
  mode. It follows the accepted Step 5 attempt-2 repair and the refreshed,
  accepted Step 6 attempt-2 proof. It retains accepted sketch attempt 1. All
  six current proof/review pairs were rechecked as hash-matched and
  `ACCEPTED`. In particular, the repaired
  Step 5 attempt-2 proof/review identities are
  `9529468202e72f43873b2cd2e66289127bab027ae12a62ae0a9d7c65870c8b63`
  and
  `0243dce779785be72f5a55f001a33a1173ff19eaffb80f211e7fdf261fcfeea3`,
  and the refreshed Step 6 attempt-2 identities are
  `905333c2504633c99317786edbd5d44a6c19decab6cf0bfda79147423afc1eee`
  and
  `e4930f5c85092a58b3fed6b5e5d36a8fdb9ea605b1852f9c768f51cb5cedef64`.
- The Step 5 appendix subsection now derives
  \(N_\kappa=\lceil A_\kappa\rceil\) directly from the pointwise definition
  of \(N_a\), after binding the domain sequence, class sequence, and all local
  quantities. It no longer cites the Step 4 sample-subpower proposition for
  this ceiling identity. The privacy-negligibility proposition uses only
  \(|C_\kappa|\to\infty\), hence \(u(L_\kappa)\to\infty\), together with the
  uniform structural-factor bound. It explicitly covers bounded, constant,
  oscillatory, and unbounded \(q_\kappa\), and requires no superpolynomial
  separation condition.
- The Step 6 appendix subsection is synchronized with that repaired
  interface. The sample amplification statements `(AS)` come from Step 4,
  while `(PN)` comes independently from Step 5. Pointwise relaxation from
  \(\delta_\kappa\) to a larger allowed privacy schedule is proved before,
  and separately from, the eventual standard source-allowance comparison.
  The final theorem proof preserves the same separation of provenance.
- Attempt 4's domain binding in
  Proposition~`prop:step-006-sequence-learners` is preserved: both
  \(\{X_\kappa\}\) and \(\{C_\kappa\}\) are quantified before the condition
  \(C_\kappa\subseteq\{0,1\}^{X_\kappa}\). The other public content files
  remain byte-identical to attempt 4: `1_intro.tex` has SHA-256
  `556d82589799d35cb4f4c7045c2f2a513607ee26ab6f19acf85c74bc207c6125`,
  `2_preliminary.tex` has
  `bb5af6343b3a10872e94df94819f544faea51a07d3657339d38d22b5fe5a8130`,
  `3_main.tex` has
  `bff6d4d9a7574a388b92bc0d507ffaa745da4a82dc01d1f7f5b58cfbd15f911a`,
  and `4_proof_sketch.tex` has
  `647705d7cf1388c6eb6de4c61aee19eeba637ce1de7825ca35a3c57f6ddce750`.
- The appendix retains one paper-facing subsection for each of the six
  accepted sketch steps and ends with the proof of the main theorem. The
  repaired Step 5 and Step 6 subsections preserve their accepted local
  derivations, cited-result uses, boundary cases, and target-step assembly;
  no new assumption, lemma, inequality, rate, or convergence-mode upgrade
  was introduced.
- Static public-TeX checks pass. There are 166 unique labels and 73 distinct
  referenced labels, with no duplicate or unresolved target. The one citation
  key resolves to the one bibliography entry. Scans find no unresolved
  citation key, malformed reference command, workflow/audit language,
  placeholder, public `claim`/`hypothesis`/`invariant` environment, manual
  `\tag{A.*}`, or literal `(A.*)` dependency. The bundle has exactly six
  step subsections plus `Proof of the Main Theorem`.
- Compilation was attempted on an isolated copy with Tectonic 0.16.9. The
  process exits with code 101 before reading TeX because its
  `reqwest-internal-sync-runtime` panics in
  `system-configuration-0.6.1/src/dynamic_store.rs` with `Attempted to create
  a NULL object`; the main thread then reports `event loop thread panicked`.
  A local-cache fallback cannot be used as a bundle because the unpacked
  cache directory lacks Tectonic's required `SHA256SUM` metadata. This is an
  environment-level pre-TeX failure, not a source diagnostic. The prior
  attempt-2 bundle completed TeX, BibTeX, reruns, and PDF generation, and the
  support files and unaffected public content remain byte-identical; the
  current repaired appendix passes all static checks above.
