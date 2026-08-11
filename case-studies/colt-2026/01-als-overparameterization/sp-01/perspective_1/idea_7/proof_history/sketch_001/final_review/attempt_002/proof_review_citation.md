# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public proof of
   Proposition~`\ref{prop:step-010-frozen-solves}` is circular.  At
   `latex_template/5_appendix.tex:3301` and again at line 3324 it invokes the
   later landing conclusion of
   Proposition~`\ref{prop:step-010-quotient-entry}` to assert that
   `H_M^0` has full column rank.  But
   Proposition~`\ref{prop:step-010-quotient-entry}` is defined only at line
   3426 and, in its own statement at lines 3431--3437, consumes
   Proposition~`\ref{prop:step-010-frozen-solves}` together with its downstream
   direction and rebalance results.  Thus the assembled citation graph cannot
   discharge the invertibility needed for the ordinary frozen solve.  The
   accepted Step 010 proof and review have an acyclic source: full rank is
   supplied before landing by the positive congruence and pair-Gram reserve of
   Lemma~`\ref{lem:step-009-congruence}` and
   Proposition~`\ref{prop:step-009-normalizer}`.  Replacing the two backward
   landing citations with those accepted Step 009 authorities is an assembly
   repair.

2. Proposition~`\ref{prop:step-006-graph}` is not self-contained in public
   TeX.  Its statement at `latex_template/5_appendix.tex:2198` asks the reader
   to use "the graph in setting.md," while the public setup only names an
   absolute-inner-product graph and never states its edge rule.  The proof's
   inequalities at lines 2239--2258 imply the component conclusion only after
   importing the missing branch-local definition: retain slots with
   `\sigma_i\ge0.85\sigma_{\max}` and join two retained slots exactly when all
   three absolute modewise inner products are at least `1-64q_*`.  Internal
   workflow files are not public proof authorities.  The proposition must
   state this observable graph rule directly (or cite an earlier public
   theorem-style definition) before using the within-target-edge and
   cross-target-nonedge bounds.  The accepted setting and Step 006 argument
   already contain the rule, so this too is an assembly-only omission.

## Nonblocking Concerns

1. `latex_template/5_appendix.tex:3541` also says that the smoothing scale
   `\rho` is "in setting.md."  This occurrence is explanatory rather than an
   evidentiary dependency, but paper-ready TeX should refer to the public
   theoretical setup (or simply say "the smoothing scale") instead of naming
   the internal file.

2. Attempt 2 could not be compiled because the available `tectonic` binary
   failed before TeX processing.  Static inspection finds 85 unique labels,
   no duplicate labels, and no unresolved recognized `\ref` or `\pageref`
   targets.  This limitation does not hide either blocking dependency above.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The attempt-2 appendix translates all thirteen
  accepted steps into named theorem-style results.  The statements are
  paper-facing except for the missing public graph definition in Blocking
  Issue 2; the Step 010 full-rank use is a dependency-order error rather than
  a missing accepted theorem.
- Source fidelity: The sole external source,
  Uschmajew~`\cite{Uschmajew2012}`, is now limited explicitly to Assumption 1,
  Lemma 3.2, and Theorems 3.3 and 3.5.  The text records the qualitative
  quotient interpretation, nonzero-factor and nonsingular-normal-equation
  hypotheses, and states that the branch-specific radius, inverse bounds,
  contraction constants, and refresh identity are proved locally.  This is
  faithful to the accepted Step 011 use.
- Instantiation and object mapping: The Uschmajew application maps the factors
  to `G_M`, the held design to `H_M=X_{M'}\odot X_{M''}`, and the quotient
  representative to `(C_U,C_V,C_W,s)`.  The remaining mapping defect is the
  omitted public definition of the observable graph in Blocking Issue 2.
- Quantitative regime fidelity: The public theorem and local results retain
  the rank, smoothing, probability, horizon, residual, chart-radius, and
  hidden-constant regimes from the accepted artifacts.  The exact graph
  thresholds `0.85` and `1-64q_*` must be stated publicly to make the Step 006
  quantitative implication auditable.
- Assumption discharge: Numbered primitive assumptions and the other
  cross-step dependencies are now explicit.  The full-rank premise at
  `5_appendix.tex:3301` is not discharged because its cited result is a later
  consumer; the earlier Step 009 congruence and normalizer results provide the
  valid discharge.
- Main theorem internal references: The attempt-1 malformed Gaussian
  assumption reference is repaired, all theorem assumptions use numbered
  `Assumption~\ref{...}` references, and the main theorem contains no appendix
  or internal step reference.  The quotient metric also contains the restored
  `\widetilde C_V` term.
- Appendix cited-result traceability: Workflow-shaped dependency aliases,
  bare `assump:*` strings, escaped pseudo-TeX, and internal claim/hypothesis
  environments from attempt 1 have been removed.  The remaining failures are
  the circular Step 010 substitution and the `setting.md` authority in the
  Step 006 graph proposition.
- External BibTeX entries: `Uschmajew2012` has a matching complete entry in
  `latex_template/reference.bib`; no missing citation key was found.
- Internal label/ref pairs: Static inspection finds 85 unique labels, no
  duplicate labels, and no unresolved recognized reference target.  The
  Step 010 defect is semantic circularity, so syntactic label resolution does
  not detect it.
- Unsupported standard facts: The finite-dimensional Gaussian, Khatri--Rao,
  Schur/Gershgorin, Neumann, norm, logarithm, and Moore--Penrose facts used by
  the accepted chain are stated or derived locally.  No additional external
  citation blocker remains.

Verdict alignment: `BLOCKING` is caused by two assembly-level public citation
defects.  Both have valid, already accepted source material and can be repaired
without changing the setting, sketch, or accepted step proofs.
