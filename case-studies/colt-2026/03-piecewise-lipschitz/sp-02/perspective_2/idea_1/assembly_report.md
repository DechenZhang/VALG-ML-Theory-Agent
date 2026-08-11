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

and every possibly correlated admissible law and positive-length interval \(I\subseteq[-1,1]\) satisfy

\[
\Pr_{\alpha\sim\mu}[\exists\theta\in I:\alpha_1+\alpha_2\theta/\delta=0]
\leq\frac{|I|}{\delta}.
\]

For the selected uniform law and \(0<\epsilon\leq\delta\),

\[
\Pr[\exists\theta\in[0,\epsilon]:\alpha_1+\alpha_2\theta/\delta=0]
=\frac{\epsilon}{4\delta}.
\]

Thus the selected-law positive-length lower ratio is exactly \(1/(4\delta)\), while the all-law upper
coefficient, raw one-entry certificate, and projective speed are each \(1/\delta\), with their distinct
accepted provenance preserved. Every constant is literal. Probability is ordinary probability for each fixed law,
arbitrary full-joint coefficient
correlation is allowed, the interval supremum precedes the law supremum, and the Euclidean vector, projective,
operator, Frobenius, scalar, Lebesgue, and Hausdorff conventions are explicit. Once the supplied certificate is
fixed, additional dependence on \(q,M,\Delta\) is exactly degree zero. Both baseline-invariance obligations are
preserved. No claim is made that an unrestricted raw Pfaffian presentation admits the supplied
derivative-closure certificate or a polynomial presentation-format bound.

## Blockers

None

## Notes

- Run identity: interactive mode; idea attempt 1; accepted sketch attempt 2; assembly attempt 4; progress type
  `full`; model `gpt-5.6-sol`; reasoning `max`.
- Routed repair: the contract-valid aggregate `proof_review.md` with SHA-256
  `f09d1cfe4f60b35ba15a22ab8f345e0a5eb38160cefe82b9d0864e3c78187150` reported one final-claim
  synchronization defect: the public assembly promoted an algebraically true but unexported geometric
  comparison into the Counter-example conclusion.
- Assembly-only resynchronization: removed that comparison from the formalized-goal sentence, main theorem,
  Step 011 synthesis, Step 012 conclusions 5 and 6, theorem-clause synthesis, final main-theorem proof, and this
  report. The selected-law probability `epsilon/(4 delta)` and lower ratio `1/(4 delta)`, all-law upper
  coefficient `1/delta`, raw certificate `1/delta`, and projective speed `1/delta` remain unchanged. No accepted
  assumption, dependency, proof step, constant, quantifier, citation, or producer output changed.
- Source binding: all twelve live reviews bind sketch attempt 2, their exact Step ID, the required current unit
  attempt, the matching live proof SHA-256, and controlled status `ACCEPTED`.
- Evidence boundary: `global_proof.md` and `global_proof_review.md` were diagnostic context only.
  `proof_history/` was not inspected or consumed as proof evidence.
- Appendix source coverage: the frozen attempt-3 baseline and authoritative aggregate record exhaustive 49/49
  accepted local units in step order `5,3,5,4,3,3,3,5,7,4,6,1`. Attempt 4 changes only the unexported
  Counter-example additions at the affected synthesis sites and preserves every accepted local unit, invoked
  cited-result application, Local Derivation, and Target-Step Assembly.
- Target assembly coverage: 12/12 paper-facing synthesis proofs, followed by the final Proof of the Main
  Theorem. The final wrapper consumes exactly the six direct producer families 001, 003, 007, 008, 010, and
  011; the remaining producer families occur only through those accepted interfaces.
- Public structure audit: exact nine-file manifest; four stable assumption labels; twelve mathematical appendix
  subsections plus the final theorem proof; 49 translated local theorem-style units plus four integrated cited
  theorem statements; 461 uniquely labeled displayed equations; no public claim, hypothesis, or invariant
  environment.
- Reference audit: all 511 `ref`/`eqref` targets exist, all 540 labels are unique, and the four used BibTeX keys
  (`balcan2024structured`, `ball1986cube`, `federer1969gmt`, and `gardner2002brunn`) exist in `reference.bib`.
  The single Federer key retains its 1969 original-edition metadata.
- Hygiene audit: no raw carriage returns, non-ASCII bytes, disallowed control bytes, malformed commands,
  placeholders, workflow provenance, audit scaffolding, hard-coded semantic equation numbers, unbalanced braces,
  or unbalanced environments. No generated byproducts are present in the live `latex_template/` directory.
- Compile audit: a sandboxed cache-only probe with output isolated at
  `<TEMP_ROOT>/proof-assembly.attempt4.dGVxGC` failed before TeX with exit code 101 and the known macOS
  system-configuration null-object panic. The identical permitted build from the live `latex_template/`
  directory, with output isolated at `<TEMP_ROOT>/proof-assembly.attempt4.bj57tq`, completed successfully under
  `tectonic --only-cached --keep-logs --keep-intermediates`, including BibTeX and all required TeX reruns, and
  produced a nonempty 65-page `main.pdf`. The successful build emitted transient
  first-pass overfull-box warnings of 18.4641 pt at `5_appendix.tex:2248` and 8.8419 pt at
  `5_appendix.tex:4512` while citations were unresolved. They disappeared after BibTeX and reruns. The final
  `main.log` and `main.blg` contain no LaTeX/package warnings, overfull or underfull boxes, undefined references,
  undefined citations, or multiply defined labels.

Protected accepted inputs frozen in the attempt-4 manifest were reverified byte-for-byte before report creation:

| Input | SHA-256 |
|---|---|
| `idea.md` | `5209aa21929e84604acb2712d8657460a48463901738fd00ebafaa84d5c43596` |
| `setting.md` | `6955a2723694ff60af8d5d40329ff0ad056f9b54780ff02744d8985456222b7e` |
| `proof_sketch.md` | `41517943f551814aaf87ff8541d5a81b56123cae7d8533b2bceb302a981bfbc4` |
| `proof_sketch_review.md` | `a80e7f4ffb1ad57991675810dbf7064bc7b482b8f34b61f10a171ebfc97b43c9` |
| `global_proof.md` | `bb35e66556b216cac02945e249c92fac526b5b021104daa0f32b0ce7691a22fc` |
| `global_proof_review.md` | `c990e29c701a493a71e87aef1aa5c099ed26c6f8132a03f15bc0c7e5fb3c0146` |

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
| `latex_template/1_intro.tex` | `80312811d954da5e776551fe3e1058a06cbdaec7f1d724133f79458222d8af47` |
| `latex_template/2_preliminary.tex` | `ef963a6319ff975f14108333e31557a073601d70ebfdfc01378c36e5aa1ac6c8` |
| `latex_template/3_main.tex` | `b911ce9c803524b41b67d653415d3cc5f0b2781edbea07962f26f41b48e7fb52` |
| `latex_template/4_proof_sketch.tex` | `513955e538c0439a86b883290c2893beb52f598e568ff54cf1868047c66a8b20` |
| `latex_template/5_appendix.tex` | `468d57beb8ed5ec85d7ee4a2e9dd712213353fdea3c1d52c774e97fbbb9449df` |
| `latex_template/arxiv.sty` | `ef10114191959ed9410a29b44f0f3b2ef401a34755917aeb84bf357e1404faf1` |
| `latex_template/ims.bst` | `c1f6e420970d0c72b3c0d184a14c4223fe8c373055eb4c43692a72b660a9ca5f` |
| `latex_template/main.tex` | `623c9a44ed6944ca0be78af3f8b31d002eff764e921f17ab0787771aea380432` |
| `latex_template/reference.bib` | `80214465186d1ca1cd21c16297702a7f42436897e9ab25b34786e9a9ba42a1d2` |
