# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix numerical \(B\ge 1\) and \(k\ge 1\). For every arbitrary domain
\(\mathcal X\), binary class
\(\mathcal H\subseteq\{-1,+1\}^{\mathcal X}\), admissible parameters
\(m,\tau,\varepsilon\), and fixed learner \(A\) satisfying
`assump:parameter-regime`, `assump:adaptive-sq-interface`,
`assump:universal-adversarial-guarantee`, and
`assump:mean-response-rank`, a basis
\(\psi_1,\ldots,\psi_{r_A}\) of the static mean-response space \(V_A\) can be
chosen once, before every learning instance, so that
\[
\varphi_A(x):=(\psi_1(x),\ldots,\psi_{r_A}(x))
\in\mathbb R^{r_A}
\]
is deterministic and independent of the instance distribution, selected
target, every tolerance-valid response policy, and realized learner seed.
For every \(h\in\mathcal H\), there is a target-dependent
\(w_h\in\mathbb R^{r_A}\) such that
\[
h(x)\langle w_h,\varphi_A(x)\rangle
\ge 1-2\varepsilon=\rho>\frac12>0
\qquad\text{for every }x\in\mathcal X.
\]
Thus every score has exact deterministic sign \(h(x)\), with no tie, and
\[
\operatorname{dc}(\mathcal H)
\le r_A
\le B\bigl(1+m/\tau^2\bigr)^k.
\]
The statement is conditional and has no probability qualification,
domain-cardinality dependence, or hidden constants. If \(\mathcal X\) or
\(\mathcal H\) is empty, then \(\operatorname{dc}(\mathcal H)=0\); if both
are nonempty, the premises imply \(r_A\ge1\). At \(m=0\), the upper bound is
\(r_A\le B\); at \(\varepsilon=0\), the signed margin is \(1\); at \(B=1\),
the upper bound is \(r_A\le(1+m/\tau^2)^k\); and at \(k=1\), it is
\(r_A\le B(1+m/\tau^2)\).

## Blockers

None

## Notes

Assembly identity: `sketch_attempt=1`; assembly `unit_attempt=2`. Relative to
the archived first attempt, the sole public-source repair is the addition of
`\citep[Theorem~3.4]{sion1958minimax}` at the invocation of Sion's theorem in
`latex_template/4_proof_sketch.tex`. The citation uses the existing
`sion1958minimax` BibTeX entry and the same precise locator as the appendix.
No mathematical statement, accepted proof content, label, dependency, or
appendix text changed. The citation review's missing Folland locator was
classified nonblocking and was intentionally left unchanged.

The controller binding inputs were recomputed with SHA-256 and match exactly:

- `setting.md`: `844f6ed4c5fa34972e32a74f65f60c61b19f6af59b26ebbfffb38aa410875df6`.
- `proof_sketch.md`: `b981eece9a51e3968410632ac713321293f892825cf6a2b40c278ceed50b7a16`.
- `proof_sketch_review.md`: `bff3dbb2c01739f228db4726d345fbc159c8c12af1bd64fab6f9c5540de2b6f3`.
- `step_001`: proof `a00c8010ea9cf9f8be9c86758351fcd9cfdcd5dfd3c9433f81ad3b1cbf5a6c88`;
  review `16df5ae936b8ee9106f65295d1b38260f0f6ac31f77b39405514b08a0301da0f`.
- `step_002`: proof `d0034bd3eca13915507bbdb9038a5363e0050e2536a870fe15d7bb99bb33fd78`;
  review `909474f05a0a839e2f6443b67bd5200a3d700358ea7a9b2132cbde219f0444b4`.
- `step_003`: proof `de63d61152e43e7859b5e765cf65564277921a71ac3b3f60f7de30508d3cd78d`;
  review `84c8164bb4f98d0db1cf1abd726558e0c3710278ac8d80fc769c61cd1cdd914d`.
- `step_004`: proof `b0bc2cb36d2701682dd265668d466935b08f7195350aafc0bba3f11092a0d057`;
  review `a9a77a1434b0bfc084dd2afe71e0ecb20c62473e7468315a8d4b22ebac640858`.
- `step_005`: proof `87d7be0fb1b85ac64371c7df963cc94ad88ad0bb99411b2694b3cc53ed9db340`;
  review `0043837a7a9cbe26532c225eae343aeadbfa55c765be78fdc569178964b47da8`.
- `step_006`: proof `446637515d637a1f66a55f050915c3629220fea5541526267463b6bfdb60fcfe`;
  review `3f2f69091d26f4302e772478f2bdd7a31559b90b9470cbdcb9ce8e26ccada139`.

Validation evidence for attempt 2:

- The citation audit finds three citation commands, two cited keys, and two
  matching bibliography entries, with no missing or unused key. Both public
  invocations of Sion now cite Theorem 3.4 explicitly.
- The label/reference audit finds 33 unique labels and 190 `\ref`/`\eqref`
  uses addressing 27 targets, with no duplicate label or missing target.
  Public-hygiene, workflow-language, placeholder, malformed-command, and
  unresolved-reference/citation scans return no defect.
- A clean full Tectonic/BibTeX compile wrote only to
  `<TEMP_ROOT>/p2-assembly-attempt2.wsRlol/out`, produced a 21-page `main.pdf`, and
  completed all normal bibliography and auxiliary-file reruns. The final log
  has no warning, error, unresolved or undefined reference/citation, multiply
  defined label, missing character, or overfull/underfull box. The live bundle
  contains exactly the nine required files and no generated compile artifact.

All six accepted proof-step derivations and their target assemblies are
translated into the public appendix in dependency order. The bundle preserves
the fixed-space compactness argument, exact-center seed-only correlation,
source-faithful Sion application, arbitrary-domain compact finite-intersection
argument, and exact basis-score transfer. Progress remains `conditional`:
deriving the static rank certificate from `m,tau` alone and obtaining the
unconditional universal linear bound remain open.
