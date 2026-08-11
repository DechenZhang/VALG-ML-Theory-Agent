# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. `latex_template/5_appendix.tex:383-398` applies Radon--Nikodym to
   \(\gamma_i(C)=\int Q^i_y(C_y)\,\nu_i(\mathrm d y)\) before establishing
   that this formula defines a measure.  Kernel-section measurability and
   countable additivity are nontrivial hypotheses here.  The later argument
   at lines 610-637 proves section measurability for a different downstream
   use, after the Radon--Nikodym application, and never explicitly closes
   countable additivity for \(\gamma_i\).  The accepted step_003 assertion is
   mathematically compatible with the kernel-product result, but the public
   appendix must first restate and map that result with an exact source (for
   example, Kallenberg, Lemma 1.41(iii), instantiated with the conditioning
   marginal and the probability kernel), or prove both obligations before
   invoking Folland's Theorem 3.8.
2. `latex_template/5_appendix.tex:433-435` cites Folland, Proposition 2.23,
   for absolute continuity of the integral under rational-endpoint
   approximation.  Proposition 2.23 instead concerns sigma-finite support of
   an \(L^1\) function and equality almost everywhere from equality of all
   set integrals; it does not state the small-set integral-continuity property
   used here.  The strict average comparison therefore has a false source
   locator.  It needs an inline derivation or an exact supporting result, with
   the finite measure \(E\mapsto\int_E |q|\) and its hypotheses mapped in the
   current notation.
3. The three citations to `Kallenberg2002` at
   `latex_template/5_appendix.tex:407`, `:626`, and `:637` name "Lemma 1.1."
   Kallenberg's pi--lambda result is Theorem 1.1, not Lemma 1.1.  Moreover,
   the exact bounded-measure uniqueness result used at line 407 is Lemma
   1.17, whose hypotheses include a generating pi-system containing the
   whole space.  The appendix neither cites that result nor specifies that
   its chosen countable generator contains \(\mathbb R\) (equivalently, it
   does not expose the equal-total-mass step).  Thus both the public locators
   and the assumption discharge for the all-Borel fiber identity require
   repair.

## Nonblocking Concerns

None

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: Folland Theorems 2.14, 2.37, 3.8, and 3.21 and
  Kallenberg Theorem 6.3 have the advertised monotone-convergence,
  Fubini--Tonelli, Lebesgue--Radon--Nikodym, Lebesgue-differentiation, and
  conditional-distribution conclusions.  Folland Proposition 2.23 and all
  three Kallenberg "Lemma 1.1" locators fail the exact-statement audit as
  described above.
- Source fidelity: The Tonelli, Radon--Nikodym existence and uniqueness,
  Lebesgue differentiation, monotone convergence, product-nullity, and
  regular-conditional-law uniqueness citations match their sources.  The
  absolute-continuity and monotone-class/measure-uniqueness locators do not.
- Instantiation and object mapping: The Folland applications correctly map
  \(\nu_i\), Lebesgue measure, the fiber density, and the witness product
  rectangles into sigma-finite measure spaces once the relevant measure is
  available.  The missing kernel-product construction prevents that premise
  from being available for \(\gamma_i\) at the point where Theorem 3.8 is
  invoked.
- Quantitative regime fidelity: None of the external results supplies an
  explicit rate or hidden constant.  Their qualitative uses introduce no
  structural, sampling, horizon, tolerance, or probability-regime change.
- Assumption discharge: Sigma-finiteness, nonnegativity, \(L^1\)
  integrability, Euclidean Borel target spaces, and countability for
  regular-conditional-law uniqueness are exposed.  Measurehood of
  \(\gamma_i\) and the whole-space condition for finite-measure uniqueness
  are not exposed before use.
- Main theorem internal references: The main theorem uses only the numbered
  assumptions and setting/preliminary notation; it contains no appendix-local
  proof dependency or external citation shortcut.
- Appendix cited-result traceability: All 15 public citation commands occur
  in the appendix.  The kernel-product measure fact remains unsupported, and
  the two groups of false locators prevent complete public traceability.
- External BibTeX entries: Both cited keys have complete edition-level book
  entries, and `main.tex` correctly wires `ims.bst` and `reference.bib`.  A
  fresh isolated Tectonic run executed BibTeX and stabilized successfully
  with both entries present and no unresolved citation.
- Internal label/ref pairs: The bundle has no duplicate labels or unresolved
  internal references; the isolated compile confirms this.
- Unsupported standard facts: Mean-value, connected-image, compact-projection,
  Borel-section, finite-additivity/subadditivity, supremum-monotonicity,
  measurable-image independence, and Euclidean-law facts are either proved
  at their use or are atomic in the displayed setting.  The kernel-product
  measure construction is the remaining non-atomic unsupported fact.

Verdict alignment: `PASS` requires `Blocking Issues = None`, `Suggested Repair Depth = None`, and `Smallest Candidate Repair Target = None`. `BLOCKING` requires at least one numbered blocking issue, non-`None` repair depth, and an aligned repair target.
