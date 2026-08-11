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

- Score: 9
- Failure Type: ACCEPTED

## Audit Summary

- Goal coverage: PASS. The attempted theorem matches the authoritative
  conditional goal, quantifier order, arbitrary-output learner scope,
  fixed-sample high-probability realizable-PAC mode, replacement privacy
  scale, universal dependence, and \(\Omega(k\log^*N)\) conclusion. It is
  explicitly a disjoint-threshold-minor result and does not claim the parent
  open problem or the \(k\log N\) scale.
- Roadmap or step coverage: PASS. The accepted sketch has nine acyclic steps;
  the attempt-2 global diagnostic has an accepted review; and all nine live
  proof/review pairs are identity-valid and ACCEPTED. Steps 001--007 are at
  unit attempt 1 and steps 008--009 are at unit attempt 2, all within the
  configured budgets.
- Proof-details audit: PASS. The finite arbitrary-output wrapper, endpoint
  gap, moving family, binary/Ramsey obstruction, finite minimax prior,
  one-use hidden-arm transcript, iid pool coupling, exchangeability, PAC
  conversion, and final constant specialization are fully derived. The
  common tuple \((n,N,\varepsilon_0,\delta_m)\), prior, kernel, and risk is
  preserved from (HP) through (UT).
- Adversarial stress test: PASS. The four specialized diagnostics are
  contract-valid PASS reviews. Independent checks cover repeated changed-row
  selection, both endpoint layouts, odd \(M=9n\), off-diagonal search
  representatives, \(R=0,n,>n\), \(\varepsilon_0=1\), \(\delta_m=0\),
  arbitrary improper outputs, and \(k=1\). Five redundant explicit
  \(\square\) markers and two nonidiomatic ceiling commands are nonblocking.
- LaTeX export structure/provenance gate: PASS. The required entry, five
  content files, style files, and bibliography are present in the required
  order; the appendix has nine step subsections and final theorem proofs.
  Scans find no workflow provenance, audit scaffolding, forbidden public
  claim-like environment, placeholder, malformed command fragment, or
  mechanical translation debris.
- Main theorem self-containedness: PASS. The theorem uses only setup and
  preliminary notation and the three numbered primitive assumptions. It has
  no appendix-local, proof-step, local-unit, or proof-local-constant
  dependency; the one-chain corollary defines \(n,R,\mathsf O\) inline.
- Assumption provenance gate: PASS. Exactly the three setting assumptions
  are public theorem assumptions. The hard prior is derived from the finite
  threshold obstruction and minimax before use, and no generated event,
  invariant, privacy transfer, or utility conclusion is promoted to a
  primitive assumption.
- Redundant public prose gate: PASS. Public TeX contains no reviewer,
  accepted-step, dependency-inventory, source-audit, target-assembly,
  placeholder, or standalone object-mapping narration.
- Proof-step notation surface gate: PASS. Public, appendix-local, and
  proof-local objects are scoped consistently. The repaired iterates,
  experiment laws, kernel and family names, spacing commands, and unchanged
  \(\delta_m\) agree with the accepted source interfaces.
- Theorem readability and notation economy: PASS. The main theorem is a
  compact reader-facing conditional statement; the finite game, prior,
  coupling, and scalar machinery remain in the appendix. No opaque
  admissibility dictionary leaks into the theorem.
- Explicit-rate contract: PASS. The theorem exposes \(m,k,N\), the full
  \(0<\varepsilon_0\le1\) and \(\delta_m\) regime, fixed
  \(\alpha_0,\beta_0\), fixed-sample horizon, high-probability PAC
  antecedent, zero-one-risk metric, and universal hidden dependence.
- Rate Specialization Bridge: PASS. The appendix proves
  \(C_\Delta=225(1+\log15)\), \(c_\delta=a_\delta/C_\Delta\),
  \(c=a_{\rm th}/4\), the finite \(N_0\) reserve, \(n\le15m\), the
  positive-denominator reciprocal transfer for the same \(\delta_m\), the
  strict \(n<a_{\rm th}\log^*N\) implication, and the strict utility
  comparison below \(1/20\).
- Baseline-reduction check: PASS. At \(k=1\), \(n=2m+12\), \(R=m<n\),
  overflow is impossible, there is no nonhidden simulation, privacy is
  inherited exactly, ideal and constructed risks coincide, and the proof
  yields \(m\ge(a_{\rm th}/4)\log^*N\) on the unrestricted one-chain
  interface.
- LaTeX appendix full-derivation gate: PASS by exhaustive comparison, not
  sampling. All 49 accepted source units, with counts
  \(4+7+4+8+4+5+6+6+5\), and all nine target-step assemblies occur in the
  matching subsections. All 371 source display blocks in Local Derivation
  and Target-Step Assembly regions match the appendix after only label,
  whitespace, \(\epsilon/\varepsilon\), and inequality-command
  normalization; all cited-result applications are publicly discharged.
- LaTeX export citation/reference gate: PASS. The bundle has 476 unique
  labels and 754 internal references to 292 targets, with no duplicate or
  missing target. All six citation keys resolve and are used. The stable
  Bun et al. eprint identity is correct; its 2015/cs.LG metadata rather than
  corrected-2024/cs.CR metadata is a nonblocking bibliographic concern.
- LaTeX export synchronization: PASS. The four diagnostic hashes, assembly
  report hash
  \(20ca970e173a57de6bd2f6627bbbed37f5f1ab6a2b219626a64207c8539eb7ca\),
  and appendix hash
  \(aa1d45a296936caf0fbf36cac34b1c303c941abbda7fa8c19ccdd99d093a8fcf\)
  match the pinned assembly-2 row immediately before this review was
  written. A fresh local-bundle Tectonic/BibTeX build completed all reruns
  and produced a 60-page PDF with no unresolved reference, citation,
  duplicate-label, or TeX error. One 9.83302pt overfull box in the
  record-coupling statement and two template font substitutions are
  nonblocking typesetting diagnostics.

## Critical Issues

None

## Failure-Type Rationale

All four specialized reviews pass, the independent aggregate contract gates
pass, the formalized conditional goal is proved, and the public bundle is
complete and paper-ready. The remaining typographic and bibliography
metadata concerns do not alter a theorem statement, proof obligation,
dependency, quantitative interface, citation identity, or compiled content.
Accordingly there is no controlling repair depth and the required failure
type is ACCEPTED.

## Suggested Next Action

None

## Retry Mode

none
