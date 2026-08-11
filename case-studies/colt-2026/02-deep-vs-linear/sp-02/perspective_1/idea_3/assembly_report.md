# Assembly Report

## Status

COMPLETE

## Attempted Claim

Under `assump:sq-parameter-regime`,
`assump:universal-adversarial-sq`, and
`assump:canonical-rounded-output-catalog`, the deterministic common feature
map
\[
\phi:=\phi_{\mathcal C_A^{\rho}}:\mathcal X\to\mathbb R^L,
\qquad
\phi(x)=(g_1(x),\ldots,g_L(x)),
\]
is fixed independently of the current distribution, target, valid oracle
policy, and learner tape, and satisfies
\[
\forall h\in\mathcal H\ \exists w_h\in\Delta_L\ \forall x\in\mathcal X,
\qquad
h(x)\langle w_h,\phi(x)\rangle
\ge 1-2\varepsilon>\tfrac12>0.
\]
Each (w_h) may depend on (h), but not on the distribution, oracle policy,
or learner tape. Consequently,
\[
\operatorname{dc}(\mathcal H)
\le L
\le B\left(1+\frac{m}{\tau^2}\right)^k.
\]
The conclusion is deterministic and pointwise, the horizon is the fixed
finite upper bound (m), and there are no hidden constants or omitted
dependencies. If \(\mathcal H=\varnothing\) or
\(\mathcal X=\varnothing\), then \(\operatorname{dc}(\mathcal H)=0\).
This is exactly the formalized conditional goal; it does not derive the
canonical catalog from \((m,\tau)\) alone and does not claim the unconditional
linear \(O(m/\tau^2)\) bound from the unrestricted SQ guarantee alone.

## Blockers

None

## Notes

All controller binding inputs were recomputed with SHA-256 and match their
recorded identities exactly:

- `setting.md`: `a77db70b5e184b062eabd7b32b21c1f0010c2e7122cd6c4ed4c2d277ff0e7587`.
- `proof_sketch.md`: `ec48a538bbde2f7a738402d2625a54eecfbb48693d25bed97f9abea9f61450da`.
- `proof_sketch_review.md`: `c361b0ab9490ece4367691052d05a1e6340259818ae1e63f5e463bbe1c750172`.
- `step_001`: proof `fb5c2d92a2d984dd463c645b754855941dab66c0929d77cf76abbfe12243d787`;
  review `7f9222d12bff6e89ec48b2bf2a2782e06701a778fd72cbb776672dfbc833eff9`.
- `step_002`: proof `8be304660660b6bb0291e1f41778b858002ec883a958536da432c72aa07e1198`;
  review `d4d87387e2c7b5e282e1cdc288a31798cafb88d0ad2ba288f5c0ae70ade88bb7`.
- `step_003`: proof `df0cecad7f8b44a606a7baf14e55722639159bb315468de7410a18f79afaadc0`;
  review `d5f5188885c68ca9607c37ed722ed4066e76755a6c0256b9cff977e9d885ad1e`.
- `step_004`: proof `a10a6c3a302590ad0cb3b474eee0732d80467686fde0f9d53dafb0aa4fe11d7d`;
  review `e8533b235f6be6ab8c356a01667d32fdcac457dd44fc365d6ef237dab6834c84`.
- `step_005`: proof `39ad072b2cc1dbb7f0e94999741ead2af513422d0e340636180765357e0fb867`;
  review `07bdcecdd6d68b69ef9edfb62d955f326b5e1180441588066dd73e59f6652f5c`.

All five step reviews remain `ACCEPTED`. The appendix translates the 17
accepted local theorem-style units (11 lemmas and 6 propositions), all five
target-step assemblies, and the final theorem assembly in dependency order.
It retains the selector-free finite-range argument, the exact risk-correlation
identity, the source-aligned orientation and complete hypothesis discharge for
Sion's minimax theorem, the arbitrary-index compact finite-intersection proof,
the exact coordinate identity, and the accepted boundary cases. These include
empty domains and classes, \(m=0\), \(\varepsilon=0\), \(L=1\), \(B=1\),
\(k=1\), every \(\tau>0\), duplicate catalog functions, infinite domains,
and arbitrary including nonatomic tape laws.

The label/reference audit finds 93 unique labels and 187 reference commands
addressing 52 targets, with no duplicate label or missing target. The citation
audit finds two citation commands using the single key `Sion1958` and one
matching BibTeX entry. Both public invocations identify Sion's theorem, the
appendix states and discharges its hypotheses, and the entry records Theorem
3.4's source with DOI `10.2140/pjm.1958.8.171`. Workflow-language,
placeholder, malformed-command, and forward appendix-reference scans find no
defect in the public theorem sources.

A clean build from an empty output directory completed with

```text
<TECTONIC_BIN> --only-cached --keep-logs --keep-intermediates --print --outdir <TEMP_ROOT>/p1_idea3_final.ZfojVk perspective_1/idea_3/latex_template/main.tex
```

and produced the 18-page `<TEMP_ROOT>/p1_idea3_final.ZfojVk/main.pdf`. The final log
contains no TeX or package warning, error, undefined reference or citation,
duplicate label, missing character, or overfull/underfull box. Tectonic had to
run outside the filesystem sandbox because its macOS system-configuration and
Reqwest initialization panicked before TeX parsing inside the sandbox; the
successful build still used only the already cached TeX resources.

The branch-local `arxiv.sty` omits the unused legacy `subfigure` import because
the shared style also imports incompatible `subcaption`. It also omits the
unused `algorithm`, `algorithmic`, and `wasysym` imports, which produced cached
package encoding and unavailable-font warnings. No proof content or formatting
command in this bundle uses those packages. The live `latex_template/` contains
exactly the nine required source/support files and no generated build artifact.
This assembly modified only `perspective_1/idea_3/latex_template/` and this
`assembly_report.md`; it did not modify the setting, sketch, global diagnostic,
proof-step, review, tracker, log, result, or other-branch artifacts.
