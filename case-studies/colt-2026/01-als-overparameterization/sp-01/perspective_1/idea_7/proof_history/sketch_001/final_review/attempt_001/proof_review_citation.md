# Citation Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The main theorem has a malformed assumption reference in
   `latex_template/3_main.tex:10`: the source contains a carriage-return byte
   followed by `ef{assump:gaussian-smoothing}` rather than `\\ref{...}`.  Thus
   the theorem's quantified Gaussian-smoothing assumption is not a valid
   paper-facing `Assumption~\\ref{...}` reference.  The public notation also
   has an object-mapping transcription error at
   `latex_template/2_preliminary.tex:78` (`widetilde C_V` lacks the
   `\\t`), so the displayed quotient metric is not the setting's defined
   object.  These are assembly defects; the accepted setting and step
   artifacts contain the intended assumptions and notation.

2. Cross-step theorem authorities in the appendix are repeatedly replaced by
   workflow/prose aliases rather than named public results.  Representative
   uses are “the preceding result” and `preceding result_00N` at
   `5_appendix.tex:461,966-994,1190-1236,2865-2874`, explicit “step 004/008”
   references at `1925` and `4436-4455`, bare `assump:*` strings at
   `19-20,36,1171,2913,3566`, and undefined generated interfaces `(A1)`,
   `(A2)`, `E_sm`, and `E_land` at `3233-3241` and `3513-3523`.  Several of
   these occur directly in theorem statements (for example the fixed-slack
   proposition and the quotient-chart lemma), so their assumption and
   dependency bases cannot be audited from public TeX.  Accepted step proofs
   do provide the corresponding typed `Assumption`, `Lemma`, and `Proposition`
   applications; the assembly must translate those applications instead of
   asking the reader to infer a prior step or inspect workflow artifacts.

3. The public bundle uses unlabelled equation/provenance aliases for
   acceptance-critical dependencies.  The appendix has 288 manual `\\tag`
   instances and repeatedly cites bare `(1)`, `(A1)`, `(A2)`, `(C1)`, etc.; in
   particular the frozen-landing and cyclic sections consume `(A1)/(A2)`
   without any `\\label`/`\\ref` target (`5_appendix.tex:3233-3241,
   3305-3328,3513-3523,3744-3751,3858-3861`).  A static `\\ref` scan therefore
   reports no missing target while missing the actual cross-step evidence.
   Public dependencies must instead restate the conclusion and use typed
   `Assumption~\\ref{...}`, `Lemma~\\ref{...}`, or `Proposition~\\ref{...}`
   pairs; local equation labels should be used for equations that are consumed
   outside their immediate display.

4. Assembly transcription has converted mathematical displays into literal
   `\\texttt{\\textbackslash...}` text, so several public theorem proofs no
   longer contain the accepted statements.  Examples include the coupon
   exponent and event identity at `5_appendix.tex:1027-1048`, the selected
   coefficient closure at `2482-2609`, the frozen-Gram identity at
   `3046-3048`, the normalizer scale formula at `3156-3160`, the cyclic
   Hadamard inequality at `3544-3549` and `3711-3715`, and the residual/full
   Gram calculation at `4074-4117`.  These fragments render as monospaced
   source text (or undefined literal aliases) rather than derivations, and
   consequently cannot serve as source-faithful theorem-style evidence.  The
   corresponding accepted `proof_steps/step_001`--`step_013` proofs are
   mathematically formatted, so this is an assembly-only repair.

5. The sole external citation is not sufficiently traceable in public TeX.
   `5_appendix.tex:3526-3536` cites `Uschmajew2012` only as a broad “standard
   cyclic ALS quotient interpretation,” without a result locator or a full
   current-notation source statement.  The accepted `step_011` artifact
   identifies the usable source scope (Assumption 1, Lemma 3.2, and Theorems
   3.3/3.5), the nonzero-factor and nonsingular-normal-equation hypotheses,
   and explicitly excludes the branch-specific radius and contraction.  That
   source mapping is absent from the assembled citation application.  The
   BibTeX key itself is present and the numerical cyclic bounds are derived
   locally, so adding the faithful locator/restatement is an assembly repair,
   not an idea or step change.

## Nonblocking Concerns

1. Tectonic compilation is unavailable because the installed macOS binary
   panics in system-configuration networking before TeX processing, as noted
   in `assembly_report.md`.  Static checks find 83 unique labels and no
   duplicate or unresolved targets among the syntactically recognized
   `\\ref` commands, but those checks do not detect the malformed control byte,
   prose aliases, or manual `(A1)/(A2)` authorities above.

2. The local Gaussian tails, Khatri--Rao identities, Neumann bounds, Schur
   order, Moore--Penrose boundary handling, and norm inequalities are stated
   or derived in the accepted step artifacts and are not themselves an
   external-source mismatch.  Their public readability is nevertheless
   affected by the escaped-display corruption in Blocking Issue 4.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Citation Audit

- Cited theorem statements: The 13 accepted step artifacts contain named local
  theorem/lemma/proposition statements and a single qualitative external ALS
  wrapper.  The final appendix preserves most local statements, but the
  malformed displays and workflow aliases above prevent a complete public
  citation chain.
- Source fidelity: The `Uschmajew2012` title, DOI, and BibTeX metadata match;
  its accepted use is qualitative only.  The public assembly omits the stable
  result locators and source-scope exclusions recorded in `step_011`.
- Instantiation and object mapping: The setting objects (`U,V,W`, frozen
  designs, quotient fields, and active rank) are present, but `(A1)/(A2)` and
  `assump:*` prose aliases hide the producer-to-consumer mapping in the
  appendix.  `widetilde C_V` and the escaped displays add independent notation
  corruption.
- Quantitative regime fidelity: The main theorem exposes the rank,
  probability, horizon, and residual rates, and accepted steps preserve their
  constants.  The coupon, closure, normalizer, cyclic, and residual formulas
  are not auditable in the assembled TeX where the `\\texttt` fragments replace
  the mathematical expressions.
- Assumption discharge: The numbered assumptions are defined in
  `1_intro.tex`, but the Gaussian assumption reference in `3_main.tex` is
  malformed and several appendix statements use bare `assump:*` or generated
  interface names instead of numbered assumption/result references.
- Main theorem internal references: The base-scale, cumulative-Gram,
  weight-balance, rank, randomness, and accuracy references are syntactically
  present; the Gaussian-smoothing member of the range is the malformed
  exception in `3_main.tex:10`.  No appendix result should be used to repair
  that theorem statement implicitly.
- Appendix cited-result traceability: Local labels exist for the accepted
  results, but many cross-step applications are prose-only (`preceding result`,
  `step N`, `(A1)/(A2)`) and therefore are not paper-ready internal citations.
  The appendix also exposes literal escaped source fragments in theorem proofs.
- External BibTeX entries: `\\citep{Uschmajew2012}` has a matching complete
  entry in `reference.bib`; no missing citation key was found.  The citation's
  public locator and assumption/conclusion restatement remain insufficient as
  described in Blocking Issue 5.
- Internal label/ref pairs: A static parser finds 83 unique labels, no duplicate
  labels, and no unresolved targets for recognized `\\ref` commands.  This is
  not sufficient for acceptance because malformed controls and unlabelled
  manual aliases bypass that parser.
- Unsupported standard facts: The accepted local proofs restate or derive the
  finite-dimensional Gaussian, Schur/Gershgorin, Khatri--Rao, Neumann,
  Kronecker, and Moore--Penrose tools.  No additional external theorem is
  needed once the assembly restores the accepted derivations and typed
  assumptions.

Verdict alignment: `BLOCKING` is caused by assembly-level public citation,
object-mapping, and traceability defects; the accepted step-level mathematical
claims remain the repair source.
