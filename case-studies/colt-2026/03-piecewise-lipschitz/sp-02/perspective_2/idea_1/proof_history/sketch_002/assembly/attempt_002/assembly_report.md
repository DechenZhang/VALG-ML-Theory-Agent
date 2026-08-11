# Assembly Report

## Status

COMPLETE

## Attempted Claim

The assembled bundle proves exactly the unconditional anchored derivative-closure Pfaffian coefficient-sweep
goal in `setting.md`, with deterministic presentation fixed before the law and interval are selected, and with
all of the following clauses inseparable.

Under `assump:parameter-regime`, `assump:balcan-common-chain`, and
`assump:anchored-derivative-closure`,

\[
\sup_{\theta\in\Theta}\|B(\theta)\|_{\mathrm{op}}
\leq \widehat\Lambda_{B,T}.
\]

If \(F_0\equiv0\), then \(F'=B_FF\) and

\[
\gamma_F'=(I_N-\gamma_F\gamma_F^{\mathsf T})B_F\gamma_F,
\qquad
\Gamma_{\mathrm{proj}}(F)\leq\widehat\Lambda_{B,T}.
\]

Under all four stable assumptions, for every \(\mu\in\mathcal D_{N,R,\kappa}\) and every positive-length
interval \(I\subseteq\Theta\),

\[
\begin{aligned}
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
&\leq
\kappa\int_I\int_{H_\theta\cap[-R,R]^N}
\frac{|F_0'(\theta)+\langle a,F'(\theta)\rangle|}{\|F(\theta)\|_2}
\,d\mathcal H^{N-1}(a)\,d\theta\\
&\leq\kappa\sqrt2(2R)^{N-1}(1+NR^2)\widehat\Lambda_{B,T}|I|\\
&=\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}|I|,
\end{aligned}
\]

and therefore

\[
C^{\mathrm{aff}}_{\mathcal D}(F_0,F;\Theta)
\leq\frac{A(1+NR^2)\widehat\Lambda_{B,T}}{\sqrt2R}.
\]

For every measurable legal pivot partition \(I=\bigsqcup_{j=1}^N E_j\), the same theorem also proves

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\phi_\alpha(\theta)=0]
\leq\kappa\sum_{j=1}^N\int_{E_j}\int_{[-R,R]^{N-1}}
\mathbf 1\{|T_j(\theta,\beta)|\leq R\}
|\partial_\theta T_j(\theta,\beta)|\,d\beta\,d\theta,
\]

and the same inequality after dropping the indicator. This is proved through finite pivot exhaustion,
area/coarea with multiplicity, monotone passage to the limit, and law-null removal of the persistent-root
affine subspace, without a pivot-margin, simple-root, or transversality assumption.

When \(F_0\equiv0\), the sharper homogeneous conclusion is

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\langle\alpha,F(\theta)\rangle=0]
\leq A\sqrt{\frac N2}\,\Gamma_{\mathrm{proj}}(F)|I|
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}|I|,
\]

and

\[
C^{\mathrm{Pf}}_{\mathcal D}(F;\Theta)
\leq A\sqrt{\frac N2}\,\widehat\Lambda_{B,T}.
\]

For every integer \(d\geq1\), bounded interval \(J\), and possibly correlated full-density law on
\([-R,R]^d\), the theorem internally specializes to the exact affine-monic presentation

\[
F_0(\theta)=\theta^d,
\qquad F_{k+1}(\theta)=\theta^k,
\qquad p_\alpha(\theta)=\theta^d+\sum_{k=0}^{d-1}\alpha_k\theta^k,
\]

with

\[
q=M=m=0,\quad \Delta=N=d,\quad A=(2R)^d\kappa,
\qquad
\widehat\Lambda_{B,T}=\left(\sum_{k=1}^d k^2\right)^{1/2},
\]

the deterministic leading monic coefficient outside the random vector, the stated inner and outer pivot
charts, their exact derivative bounds, the \(d=1\) branch, and

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in J:p_\alpha(\theta)=0]
\leq\kappa(2R)^{d-1}
\left(d+\frac{Rd(d-1)}2\right)|J|.
\]

For Counter-example 1, with \(F=(1,\theta/\delta)\), \(R=1\), \(\kappa=1/4\), and \(A=1\), the theorem
proves

\[
\widehat\Lambda_{B,T}=\Gamma_{\mathrm{proj}}(F)=\frac1\delta,
\qquad
C^{\mathrm{Pf}}_{\mathcal D}(F;[-1,1])\leq\frac1\delta,
\]

and, for the selected uniform law and \(0<\epsilon\leq\delta\),

\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]

The theorem keeps the three scales \(1/(4\delta)\), \(1/\delta\), and \(\sqrt2/\delta\) distinct. Every
constant is literal. Probability is ordinary probability for each fixed law, arbitrary full-joint coefficient
correlation is allowed, the interval supremum precedes the law supremum, and the Euclidean vector, projective,
operator, Frobenius, scalar, Lebesgue, and Hausdorff conventions are explicit. Once the supplied certificate is
fixed, additional dependence on \(q,M,\Delta\) is exactly degree zero. Both baseline-invariance obligations are
preserved. No claim is made that an unrestricted raw Pfaffian presentation admits the supplied
derivative-closure certificate or a polynomial presentation-format bound.

## Blockers

None

## Notes

- Run identity: interactive mode; idea attempt 1; accepted sketch attempt 2; assembly attempt 2; progress type
  `full`; model `gpt-5.6-sol`; reasoning `max`.
- Routed repair: the contract-valid aggregate `proof_review.md` with SHA-256
  `6ef442c03fea4e4fd08ce44b1588682c836bf9eb229ef2cb3902dccc5cf6793e` reported the sole
  `PROOF_ASSEMBLY_FLAW`: the public fixed-section proof invoked but did not state or cite the accepted
  lower-dimensional injective affine Hausdorff area formula.
- Repaired cited-result integration: the Step 004 subsection now states the accepted formula as
  Theorem `thm:injective-affine-area-formula`, cites Federer (1969), Section 3.2.3, and explicitly checks
  \(k=N-1\), \(n=N\), \(D=\mathcal B_{j,\theta}\),
  \(\Xi=\Psi_j(\theta,\cdot)\), domain measurability, injectivity and exact-section bijectivity, the Gram
  determinant and its nonnegative square root, the nonnegative Borel integrand, extended-real scope, the
  \(N=1\) equivalently \(k=0\) convention, and the absence of orientation, multiplicity, or boundary-deletion
  factors. No accepted claim, quantifier, constant, dependency, or producer interface changed.
- Source binding: all twelve live reviews bind sketch attempt 2, their exact Step ID, the required current unit
  attempt, the matching live proof SHA-256, and controlled status `ACCEPTED`.
- Evidence boundary: `global_proof.md` and `global_proof_review.md` were diagnostic context only.
  `proof_history/` was not read or consumed.
- Appendix source coverage: 49/49 accepted local units in step order
  `5,3,5,4,3,3,3,5,7,4,6,1`, translated by direct source-order comparison of every invoked cited-result
  application, every Local Derivation unit, and every Target-Step Assembly. Coverage is not inferred from
  theorem-environment counts.
- Target assembly coverage: 12/12 paper-facing synthesis proofs, followed by the final Proof of the Main
  Theorem. The final wrapper consumes exactly the six direct producer families 001, 003, 007, 008, 010, and
  011; the remaining producer families occur only through those accepted interfaces.
- Public structure audit: exact nine-file manifest; four stable assumption labels; twelve mathematical appendix
  subsections plus the final theorem proof; 49 translated local theorem-style units plus four integrated cited
  theorem statements; 463 uniquely labeled displayed equations; no public claim, hypothesis, or invariant
  environment.
- Reference audit: all `ref`/`eqref` targets exist, all labels are unique, and the four used BibTeX keys
  (`balcan2024structured`, `ball1986cube`, `federer1969gmt`, and `gardner2002brunn`) exist in `reference.bib`.
  The single Federer key retains its 1969 original-edition metadata.
- Hygiene audit: no raw carriage returns, non-ASCII bytes, disallowed control bytes, malformed commands,
  placeholders, workflow provenance, audit scaffolding, hard-coded semantic equation numbers, unbalanced braces,
  or unbalanced environments. No generated byproducts are present in the live `latex_template/` directory.
- Compile audit: an exact fresh temporary copy at `<TEMP_ROOT>/proof-assembly.repair2-final.QjJg8g` compiled successfully with
  `tectonic main.tex --keep-logs --keep-intermediates`, including BibTeX and all required TeX reruns, and produced
  `main.pdf`. A sandboxed probe failed before TeX because the Tectonic HTTP runtime could not access the macOS
  system configuration; the permitted out-of-sandbox builds completed. The final fresh build emitted transient
  first-pass overfull-box warnings of 18.4641 pt at `5_appendix.tex:2248` and 8.8419 pt at
  `5_appendix.tex:4512` while citations were unresolved. They disappeared after BibTeX and reruns. The final
  `main.log` and `main.blg` contain no LaTeX/package warnings, overfull or underfull boxes, undefined references,
  undefined citations, or multiply defined labels.

Protected controller inputs were reverified byte-for-byte before report creation:

| Input | SHA-256 |
|---|---|
| `idea.md` | `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596` |
| `setting.md` | `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e` |
| `proof_sketch.md` | `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4` |
| `proof_sketch_review.md` | `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9` |
| `global_proof.md` | `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc` |
| `global_proof_review.md` | `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146` |
| `proof_tracker.md` | `156524623baeabedff0b4c4b42854ce139cbf6252e9214b177f860033436c5de` |

The twelve current accepted proof/review pairs were reverified as follows:

| Step | Unit attempt | Proof SHA-256 | Review SHA-256 |
|---|---:|---|---|
| `step_001` | 2 | `6986e91d1b2a06c451ae6bba842e30747ac507bf3e0eeee09371c1af0b6d4ff8` | `4ec6dfad924606b81aa28203e98ac3989ae15cf573297004efbd7036e4455f55` |
| `step_002` | 1 | `a87b6ac3a6ad433b1b2333739ad1631d0dbc426763125c63f16b87b8a9ae530e` | `de2b4a1dfbc918951e5a29b0964724c1089755860403194b80dcc33f5ec81f75` |
| `step_003` | 1 | `e49284222ce24bde4b3ae8b5f8d1434622c09bfd3a39eb512641169e55e2d7a0` | `4d6a93d359e6559d49d306809fe8ad925eb03a262c36446591c846632a6e1ff8` |
| `step_004` | 1 | `91736da20ac3e8c97693b158e1a528f5ac2ed3bab6ef61b14185ab2beae76ef4` | `45285c72a3ea65948cdd60b0148c44526384f53c9e35bae2a86b9a09d2964389` |
| `step_005` | 1 | `a3c503cdc2b19acb74d9598fe8d674c185715ef20ea11ea28322eee62827ab63` | `3c12da50c102fe5562cec9e3681b80250defa6d4f88a32f05c3b462349f94ad0` |
| `step_006` | 1 | `130dbada8d3b451575971240d58a54992c32de30eb740707d3184ed9e3deb954` | `cfcd012a07f15b84d9b41e50d24eed881dc6ef1a7309154681e5f3228dc03dae` |
| `step_007` | 1 | `2ba350ac72e62a8d20587d2afc7a5f5c7bbb0ec30aca55764bcea39ad4701037` | `8246228af5c0b30dcd64749f834ff6034239d1788657732eecfd42755097ace9` |
| `step_008` | 1 | `957f7441096a04d797c31a40b01bdb7bd06e696d79eb5f4439ad535f2d3cc085` | `3bfe1e0e150e31cbff126ba2cbdf735c717506d64bacd73913ebeabc24fd9a19` |
| `step_009` | 2 | `8da586dbdd81e96baba3d3767b4982caf24ecbe40c3bb7987ba41a06477208e3` | `7c17949e3a8be360e6439d5e1faa11a08e887cd002cc49b32f8031e3cb0c585a` |
| `step_010` | 1 | `d7b9a1cb7fc05eda80c58e08af140f9f56de0c7b2dfc38cf728efee8339e0823` | `1be3eca6900a6bf5a7ffa26820b62f8db5508549b3610b6a2678becc88f3694e` |
| `step_011` | 1 | `92c41aebfa815704617f0e2e9d898ef5f737a9f4597d712c7512fad345f8d755` | `7b21bf4639338b0a279536ab38ffee583a819b7e4304058ff6e6092155ce48c4` |
| `step_012` | 1 | `2a3d417db3da923fb01a0f2840f842505780049d7b9b052c676624be16913493` | `de5a016b9e2862145d817cd43c9b3447c5deb33ddf2d4f2c3e3285d21f09c89d` |

Final live bundle SHA-256 values before report creation:

| Output | SHA-256 |
|---|---|
| `latex_template/1_intro.tex` | `f37539599a316cae3b54c287eac7fdceafb9bc68f3966da824d4acbf91841819` |
| `latex_template/2_preliminary.tex` | `ef963a6319ff975f14108333e31557a073601d70ebfdfc01378c36e5aa1ac6c8` |
| `latex_template/3_main.tex` | `9e5762ef1bea93a8775c0b91a3e62bad0d2b4716b7dd03810e1c069a4c706942` |
| `latex_template/4_proof_sketch.tex` | `513955e538c0439a86b883290c2893beb52f598e568ff54cf1868047c66a8b20` |
| `latex_template/5_appendix.tex` | `104c84e90174e89e19fa75e647bf433cfeb4c1db4778c465912e22e65130c93f` |
| `latex_template/arxiv.sty` | `ef10114191959ed9410a29b44f0f3b2ef401a34755917aeb84bf357e1404faf1` |
| `latex_template/ims.bst` | `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f` |
| `latex_template/main.tex` | `623c9a44ed6944ca0be78af3f8b31d002eff764e921f17ab0787771aea380432` |
| `latex_template/reference.bib` | `80214465186d1ca1cd21c16297702a7f42436897e9ab25b34786e9a9ba42a1d2` |
