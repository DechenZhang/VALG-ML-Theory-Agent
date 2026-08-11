# Proof Review

## Formalized Setting

The binding setting is the exact conditional setting in `setting.md`. Let
\([r]=\{1,\ldots,r\}\), let \(\log\) be the natural logarithm, and let
\(\log^*\) be the base-two iterated logarithm. For \(t\in[N]\), write
\[
\tau_t(q)=\mathbf 1\{q\le t\},\qquad q\in[N].
\]
Let \(X\) be a domain and let \(C\subseteq\{0,1\}^X\) be finite. A
\((k,N)\) disjoint-threshold minor consists of injections
\(\phi_j:[N]\to X\), \(j\in[k]\), with pairwise disjoint images, and
concepts \(c_{\mathbf t}\in C\), \(\mathbf t\in[N]^k\), satisfying
\[
c_{\mathbf t}(\phi_j(q))=\tau_{t_j}(q)
\quad\text{for every }j\in[k],\ q\in[N].
\]

For a labeled distribution \(Q\) on \(Z_X=X\times\{0,1\}\), define
\[
L_Q(h)=\Pr_{(x,y)\sim Q}[h(x)\ne y].
\]
Adjacency is ordered one-record replacement. Hypothesis outputs are equipped
with a sigma-algebra making coordinate evaluations measurable. Differential
privacy is the two-sided pointwise kernel inequality for every adjacent pair
and measurable output event. There is no properness, output-representation,
or computational restriction. For every \(c\in C\) and distribution \(P\)
on \(X\), \(Q_{P,c}\) is the law of \((x,c(x))\), and the learner's
distribution-free realizable PAC requirement is
\[
\Pr_{S\sim Q_{P,c}^m,\ h\sim A(S)}
\bigl[L_{Q_{P,c}}(h)>\alpha_0\bigr]\le\beta_0.
\]

The reduction uses
\[
n=\left\lceil\frac{2m}{k}\right\rceil+12,
\qquad M=9n.
\]
Its finite one-arm experiment set consists of \(e=(t,U)\), with
\(t\in[N]\) and \(U=(u_1,\ldots,u_{9n})\in[N]^{9n}\). The law \(Q_e\)
is uniform on the labeled multiset
\[
\{(u_s,\tau_t(u_s)):s\in[9n]\},
\]
and for an \(n\)-sample threshold kernel \(B\),
\[
\mathcal R_n(B,e)
=\mathbb E_{S\sim Q_e^n,\ g\sim B(S)}[L_{Q_e}(g)].
\]
The threshold-hard-prior bridge is a derived obligation, not an assumption:
there must be universal \(a_{\rm th},a_\delta>0\) and \(N_{\rm th}\) such
that, whenever
\[
N\ge N_{\rm th},\qquad n<a_{\rm th}\log^*N,\qquad
0<\varepsilon\le1,\qquad
0\le\delta\le\frac{a_\delta}{n^2\log(en)},
\]
one prior \(\Pi_{n,N,\varepsilon,\delta}\) satisfies
\[
\inf_{B:\,(\varepsilon,\delta)\text{-DP}}
\mathbb E_{e\sim\Pi_{n,N,\varepsilon,\delta}}
[\mathcal R_n(B,e)]\ge\eta_{\rm th},
\qquad \eta_{\rm th}=\frac1{20}.
\tag{HP}
\]
This implication must be derived from the active Alon et al. threshold
argument, including the expected-loss, endpoint, Ramsey, binary-search, and
\(\delta\)-accounting changes, followed by finite minimax.

Given the prior, the hidden-arm kernel chooses \(J\) uniformly in \([k]\),
draws iid latent experiments on every nonhidden arm, and places distinct
records from an external \(n\)-sample into the \(R\) hidden-arm positions of
an \(m\)-sample, where \(R\sim\operatorname{Bin}(m,1/k)\). It returns a
fixed zero function if \(R>n\), otherwise runs \(A\) and restricts its
arbitrary output along \(\phi_J\). The grand-pool coupling supplies an ideal
iid sample from the realizable mixture
\[
\bar Q_{\mathbf e}=\frac1k\sum_{j=1}^k(\phi_j)_\#Q_{e_j}.
\]
The required quantitative interfaces are
\[
p_{\rm ov}:=\Pr[R>n]
\le e^{-27/2}<\frac1{1024},
\tag{OF}
\]
\[
\mathbb E[L_{Q_{e_J}}(h\circ\phi_J)]
=\mathbb E[L_{\bar Q_{\mathbf e}}(h)],
\tag{EX}
\]
and
\[
\mathbb E_{e\sim\Pi}[\mathcal R_n(B_\Pi,e)]
\le\alpha_0+\beta_0+p_{\rm ov}
\le\frac5{128}+e^{-27/2}<\frac1{20}.
\tag{UT}
\]
The transcript map must preserve exactly the inherited
\((\varepsilon_0,\delta_m)\) privacy pair. The scalar transfer is
\[
n\le15m,
\qquad
n^2\log(en)\le C_\Delta m^2\log(em),
\qquad C_\Delta=225(1+\log15),
\tag{DT}
\]
using the same \(\delta_m\), not a relabeled \(\delta_n\).

The three primitive assumptions are exactly:

- `assump:minor-table`: the static disjoint-threshold restriction table.
- `assump:unrestricted-private-pac`: an arbitrary-output, computationally
  unrestricted, fixed-sample distribution-free realizable PAC learner that
  is replacement-adjacency \((\varepsilon_0,\delta_m)\)-DP.
- `assump:fixed-parameter-scale`:
  \[
  \alpha_0=\frac1{128},\qquad \beta_0=\frac1{32},\qquad
  0<\varepsilon_0\le1,\qquad
  0\le\delta_m\le\frac{c_\delta}{m^2\log(em)}.
  \]

The source-progress type is `conditional`. The result concerns a
disjoint-threshold minor and proves \(\Omega(k\log^*N)\); it does not solve
the parent open problem or obtain the requested \(k\log N\) scale. For the
exact \(k\)-arm threshold product, \(|C|=N^k\) and
\(\operatorname{VC}(C)=k\). At \(k=1\), the target retains the unrestricted
one-chain \(\Omega(\log^*N)\) baseline with only universal losses.

## Formalized Goal

There exist universal constants \(c,c_\delta>0\) and \(N_0\ge2\) such
that, for every \(k\ge1\), every \(N\ge N_0\), every finite
\(C\subseteq\{0,1\}^X\), and every learner \(A\) satisfying
`assump:minor-table`, `assump:unrestricted-private-pac`, and
`assump:fixed-parameter-scale`,
\[
m\ge c\,k\log^*N.
\]
The claim is a fixed-sample, distribution-free realizable-PAC lower bound in
zero-one risk and high-probability PAC mode. The exposed variables are
\(k,N,m\), with fixed \(\alpha_0,\beta_0\) and privacy exposed through
\(0<\varepsilon_0\le1\) and \(\delta_m\). All constants are universal and
independent of \(C,X,k,N,m,\varepsilon_0,\delta_m\). A satisfactory proof
must derive (HP), use (OF), (EX), and the exact one-record privacy map to
obtain (UT), use (DT) to discharge the hard-prior privacy condition, and
choose \(c,N_0\) so that \(m<ck\log^*N\) implies
\(n<a_{\rm th}\log^*N\), contradicting (HP).

## Reviewed Roadmap

The accepted nine-step roadmap is acyclic. `step_001` builds the finite
arbitrary-output restriction and exact-risk private empirical wrapper;
`step_002` proves the expected-loss endpoint gap and homogeneous-set rise;
`step_003` constructs the exactly one-record-neighboring moving family;
`step_004` performs the finite product, binary search, Ramsey comparison,
and iterated-log inversion; `step_005` uses finite minimax to produce the
learner-independent prior (HP); `step_006` constructs the hidden-arm kernel
and proves exact inherited privacy; `step_007` builds the iid grand-pool
coupling and proves (OF); `step_008` proves exchangeability, (EX), (UT), and
the auxiliary hidden-arm statement; and `step_009` makes the universal
constant choices, transfers the privacy denominator, closes the
contradiction, and verifies the exact \(k=1\) recovery. Steps `step_001`
through `step_007` are accepted at attempt 1, and `step_008` and `step_009`
are accepted at attempt 2; every current proof hash matches its accepted
review.

## Attempted Claim

There exist universal constants \(c,c_\delta>0\) and an integer
\(N_0\geq2\) such that the following holds. For every \(k\geq1\), every
\(N\geq N_0\), every domain \(X\), every finite
\(C\subseteq\{0,1\}^X\), and every fixed-sample learner \(A\) satisfying
`assump:minor-table`, `assump:unrestricted-private-pac`, and
`assump:fixed-parameter-scale` instantiated with the same \(c_\delta\),
\[
m\geq c k\log^*N.
\]
The antecedent is distribution-free realizable PAC in population zero-one
risk with joint probability over the iid sample and learner randomness, at
the fixed sample size \(m\). Privacy is pointwise under ordered replacement
adjacency for every measurable output event. The constants are independent
of \(C,X,k,N,m,\varepsilon_0,\delta_m\), the learner, and the minor table.
For \(k=1\), the proof retains the exact specialization
\(n=2m+12\), \(R=m<n\), zero overflow, no nonhidden-arm simulation, exact
inherited \((\varepsilon_0,\delta_m)\)-privacy, the exact one-chain risk
interface, and \(m\geq(a_{\rm th}/4)\log^*N\).

## Review Mode

split

## Review Verdict

- Score: 6
- Failure Type: PROOF_ASSEMBLY_FLAW

## Audit Summary

- Goal coverage: PASS at the theorem-contract level and BLOCKING at public
  assembly fidelity. The attempted theorem matches the authoritative
  conditional goal, quantifier order, arbitrary-output learner scope,
  fixed-sample PAC mode, privacy scale, universal dependence, and
  \(\Omega(k\log^*N)\) conclusion. It is correctly labeled `conditional`
  and does not claim the parent open problem or \(k\log N\) scale is solved.
- Roadmap or step coverage: PASS. The accepted sketch has nine ordered
  steps, the accepted global diagnostic is attempt 2 with status
  `PARTIAL_BLOCKED`, and its paired global review is `ACCEPTED`. All nine
  current proof/review pairs are identity-valid and `ACCEPTED`; no
  specialized review identifies a step-, sketch-, or idea-level defect.
- Proof-details audit: SUBSTANTIVE PASS, PUBLIC-TRANSCRIPTION BLOCKING. The
  finite wrapper, endpoint/homogeneity chain, neighboring family, binary and
  Ramsey chain, minimax prior, exact-private hidden kernel, coupling,
  exchangeability, utility contradiction, and scalar specialization are
  present. The iterate-to-power substitutions, undefined experiment laws,
  malformed identifiers, and unsupported countable-product invocation make
  the assembled statements and proof text non-paper-ready.
- Adversarial stress test: PASS on the accepted mathematics and BLOCKING on
  assembly notation. Endpoint layouts, odd \(M=9n\), central omitted ranks,
  binary-tree representatives, adjacent databases, \(R=n\), overflow, and
  \(k=1\) were stressed without finding a source-level counterexample. Five
  redundant explicit `\square` markers and two `\operatorname{ceil}`
  uses are nonblocking presentation concerns.
- LaTeX export structure/provenance gate: PASS for required files, section
  shape, assumption labels, appendix step subsections, final theorem proof,
  allowed theorem environments, placeholders, workflow provenance, and
  audit-scaffolding scans. BLOCKING for malformed public mathematical
  command fragments and identifiers listed in Critical Issue 3.
- Main theorem self-containedness: PASS. The theorem uses only setup and
  preliminary notation and the three numbered primitive assumptions. It
  has no forward reference to appendix-local results, proof-step IDs, or
  proof-local constants, and the exact one-chain corollary defines its local
  trace inline.
- Assumption provenance gate: PASS for the public theorem and accepted
  dependency chain. No generated condition is promoted to a primitive
  assumption, and the hard prior is derived before use. BLOCKING locally
  because the step-001 appendix lemma falsely attributes \(Q_e\) and
  \(\mathcal R_n\) to the setup and then uses undefined experiment-law
  variants.
- Redundant public prose gate: PASS. No forbidden reviewer, workflow,
  sketch-row, audit, placeholder, or mechanical-translation prose was found.
- Proof-step notation surface gate: PASS in the accepted step interfaces.
  Public-facing, appendix-local, and proof-local objects remain properly
  scoped in the accepted sources. BLOCKING only because assembly altered
  several exported object names rather than faithfully translating them.
- Theorem readability and notation economy: PASS. The main theorem is a
  compact reader-facing conditional statement, while technical finite-game
  objects remain in the appendix. No opaque admissibility dictionary leaks
  into the theorem.
- Explicit-rate contract: PASS in the accepted derivations and main theorem.
  The public result exposes \(m,k,N,\varepsilon_0,\delta_m\), fixes
  \(\alpha_0,\beta_0\), declares universal hidden dependence, preserves the
  high-probability fixed-sample PAC antecedent and zero-one-risk metric, and
  states the exact privacy scale.
- Rate Specialization Bridge: PASS substantively. The appendix derives the
  explicit choices \(C_\Delta=225(1+\log15)\),
  \(c_\delta=a_\delta/C_\Delta\), \(c=a_{\rm th}/4\), and the finite
  \(N_0\) threshold, with displayed privacy, sample-size, overflow, and
  strict-risk inequalities. No dependence or absorbed term is dropped by
  prose in the accepted source.
- Baseline-reduction check: PASS. The \(k=1\) specialization has
  \(n=2m+12\), \(R=m<n\), zero overflow, no simulated nonhidden arm, exact
  inherited privacy, and the unrestricted one-chain
  \(\Omega(\log^*N)\) conclusion. The assembly defects do not require
  weakening this baseline.
- LaTeX appendix full-derivation gate: PASS by exhaustive comparison, not
  sampling. All 49 accepted source units across `step_001` through
  `step_009`, with counts \(4+7+4+8+4+5+6+6+5\), occur in source order;
  every unit's tagged-equation count matches its public counterpart, and
  all nine target-step assemblies are present. The blockers are fidelity
  defects in translated notation and citation support, not omitted accepted
  proof bodies.
- LaTeX export citation/reference gate: BLOCKING only for the unsupported
  countable-product invocation and the public object drifts. Otherwise all
  six cited keys have BibTeX entries, no key is missing or unused, all 476
  labels are unique, and all 755 internal references to 292 targets resolve.
  The Bun entry could identify the corrected December 2024 revision more
  precisely, but that is nonblocking.
- LaTeX export synchronization: BLOCKING. `assembly_report.md` is
  contract-valid with `Status = COMPLETE`, but all four specialized reviews
  are contract-valid `BLOCKING` reviews at depth `assembly` with target
  `/proof-assembly`. Their pinned hashes, the assembly-report hash
  `314d8fa53b2026b674a0ab8a146d7ac07f6066be66c302fa9f79942d3ce34232`,
  and appendix hash
  `4b36898a3d588ec7a5ade099455e261ac2971e73ebcb745457ca4374dc49ca18`
  match the current artifacts. The pinned clean-room build completed TeX,
  BibTeX, reruns, and PDF generation without unresolved references,
  citations, duplicate labels, or box warnings. A fresh Tectonic invocation
  panicked before TeX processing in the local macOS networking runtime, so
  it supplies no contrary TeX diagnostic.

## Critical Issues

1. Structural, rigor, and citation reviews; aggregate source-fidelity check;
   `latex_template/5_appendix.tex:1885`, `:2001`, and `:2079`: assembly
   changed the accepted \(M\)-fold iterates into powers. Restore
   `\log_2^{M}N` to `\log_2^{(M)}N` at lines 1885 and 2079, and
   `\ell^{M}(N)` to `\ell^{(M)}(N)` at line 2001. The current text changes
   the premise of Proposition `prop:step-004-ramsey-comparison`, the entry
   condition for the log-star recursion, and the final Ramsey discharge; it
   therefore corrupts a theorem-critical bridge rather than merely changing
   typography. Repair depth: assembly. Target: `/proof-assembly`.
2. Rigor and citation reviews; aggregate definition-provenance check;
   `latex_template/5_appendix.tex:171`, `:198`, and `:211`: line 171 falsely
   says \(Q_e\) and \(\mathcal R_n\) are defined in the setup, although the
   public definitions are local at appendix lines 9--20. Lines 198 and 211
   then use undefined \(Q_{t,U}\) and \(Q_{t,U}^n\). Correct the provenance
   and restore the accepted \(Q_{(t,U)}\) and \(Q_{(t,U)}^n\) objects. Until
   this is done, the zero-residual empirical-risk identity is not stated for
   one consistently defined experiment law. Repair depth: assembly. Target:
   `/proof-assembly`.
3. All four specialized reviews; aggregate notation-provenance and public-
   TeX command checks; `latex_template/5_appendix.tex:1302`, `:1389`,
   `:1732`, `:1758`, `:2131`, `:2132`, `:2179`, `:2221`, `:2394`, `:3023`,
   `:3024`, and `:4521`: restore the accepted public objects
   `$(\widetilde P_\ell)_{\ell\in[K]}$`, `$(P_x)_{x\in J}$`,
   `\widehat b`, `\widehat p`, `\mathsf S_{n,N}`, `\widetilde B`, and
   `\delta_n`; replace every trailing bare `qquad` at lines 2131, 2132,
   2179, 3023, and 3024 by `\qquad`. As written, theorem-style statements
   and theorem-critical proof passages refer to malformed or undefined
   families, statistics, spaces, kernels, parameters, and display tokens.
   Repair depth: assembly. Target: `/proof-assembly`.
4. Citation review; aggregate nontrivial-standard-fact gate;
   `latex_template/5_appendix.tex:3115`: the proof of
   Lemma `lem:step-007-pool-iid` invokes "the countable product construction
   restated above," but the public bundle contains no such restatement and
   no BibTeX-backed citation. Translate the accepted `step_007` support by
   giving the discrete countable-product construction/proof inline or by
   stating a current-notation result with a public citation and matching
   BibTeX entry, including the finite/countable hypothesis discharge. The
   probability-space construction otherwise lacks public proof authority.
   Repair depth: assembly. Target: `/proof-assembly`.

## Failure-Type Rationale

The authoritative setting, accepted sketch, accepted global diagnostic,
and all nine accepted step proofs already contain the correct iterate
notation, experiment laws, object identities, and countable-product support.
The exhaustive source-to-appendix audit found no missing accepted local unit,
target-step assembly, rate derivation, privacy bridge, or baseline argument.
Every blocker was introduced while translating those accepted sources into
the public appendix and can be removed without changing any proof claim,
dependency, assumption, roadmap, or theorem contract. Consequently
`PROOF_ASSEMBLY_FLAW` is the deepest and smallest accurate classification;
rerunning `/proof-step`, `/proof-sketch`, or the idea producer is unsupported.

## Suggested Next Action

/proof-assembly

## Retry Mode

repair_assembly
