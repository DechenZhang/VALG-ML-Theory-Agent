# Assembly Report

## Status

COMPLETE

## Attempted Claim

Fix one finite
\(\eta=(\bar\kappa_0,\bar\kappa_\infty)\in[0,\infty)^2\), independently of
\((d,R)\). For every \(d\geq1\), \(R\geq1\),
\(\mu\in\mathcal D_{d,R,\eta}\), and \(I\in\mathcal I(\Theta)\), the assembled
bundle proves
\[
\mu(H_{d,I})
\leq \bar\kappa_0B_0(d,R)|I_0|
 +\bar\kappa_\infty B_\infty(d,R)(|I_+|+|I_-|)
\leq M_\eta(d,R)|I|.
\]
Consequently, with the stated zero convention for empty supremum index sets,
\[
C_{\mathcal D_{d,R,\eta}}
\leq M_\eta(d,R)
\leq P_\eta(d,R)
=\bar\kappa_*d+\frac{\bar\kappa_*}{2}Rd^2,
\qquad
\bar\kappa_*=\max\{\bar\kappa_0,\bar\kappa_\infty\}.
\]
The exact middle bound is the maximum of the two chart coefficients, not
their sum, and every coefficient is displayed.

Separately, only when
\(\bar\kappa_0,\bar\kappa_\infty\geq1/2\), the bundle proves for every
\(d\geq1\) and \(R\geq1\) that
\[
\mu^{\mathrm{wit}}_{d,R}\in\mathcal D_{d,R,\eta},
\qquad
K_0^{\mu^{\mathrm{wit}}_{d,R}}
=K_\infty^{\mu^{\mathrm{wit}}_{d,R}}
=\frac1{2R}\quad\text{almost surely}.
\]
The result retains the material_partial scope: it is a sufficient-condition
theorem for \(R\geq1\), without a necessity claim, coverage of laws lacking
both endpoint mean caps, or coverage of \(0<R<1\).

## Blockers

None

## Notes

- All seven required accepted proof steps were translated in dependency order. Every local derivation, invoked standard-result check, boundary case, object mapping, and target-step implication needed for theorem closure is represented in the public appendix.
- The source threshold unit was converted from a claim to a public lemma. Its accepted target assembly was exposed as the witness-membership proposition; no new theorem assumption or independent proof obligation was introduced.
- The four stable assumption labels are preserved, the main theorem is self-contained, and the fixed-\(\eta\) corollary cites a named appendix rate-specialization proposition.
- No external citation is used, so the compile entry suppresses an empty bibliography while retaining all required support files.
- The copied style's simultaneous subfigure and subcaption loads were incompatible. The unused legacy subfigure load was removed; this is a compile-only support normalization with no mathematical effect.
- Tectonic compilation completed with all artifacts under <TEMP_ROOT>/proof_assembly_p2_i1; there are no unresolved references, duplicate labels, overfull boxes, or TeX errors. Only canonical-style package/font warnings remain.
- Recomputed hashes of setting.md, the accepted sketch and sketch review, and all seven proof/review pairs match the frozen accepted inputs.
