# Rigor Proof Review

## Reviewer Verdict

BLOCKING

## Blocking Issues

1. The public Step 009 dependency interface does not justify the polynomial
   failure bound consumed by Step 010. Proposition
   `prop:step-009-raw-witness` is stated only as the deterministic implication
   \(\|P_{\mathscr S_0}D_r\|_F^2\le r/2\Rightarrow
   \mathcal E_{\rm deficit}\). Its proof then asserts in
   `eq:step-009-9` that, for every realized factor triple in
   \(\mathcal E_{\rm cond}\),
   \[
     \mathbb P_{\rm init}(\mathcal E_{\rm deficit}^{\mathsf c}
       \mid A,B,C)\le r^{-20},
   \]
   while citing only Proposition `prop:step-008-raw-leverage`. That
   proposition states failure at most
   \(8\exp(-c_Hr/(16\kappa_1^{24}))\), not \(r^{-20}\). The necessary
   sufficiently-large-\(r\) conversion is separately proved by Lemma
   `lem:step-008-tail-conversion`, but Step 009 neither names that dependency
   in its public statement nor cites it at the conversion. Proposition
   `prop:step-010-conditional-union` then cites only
   `prop:step-009-raw-witness` and treats it as exporting the conditional
   \(r^{-20}\) interface. Consequently the displayed \(4r^{-20}\) bound is
   not closed under the stated public dependencies, even though all material
   needed to close it is already present in the appendix. At assembly depth,
   add Proposition `prop:step-008-raw-leverage` and Lemma
   `lem:step-008-tail-conversion` (including their large-\(r\) regime) to the
   Step 009 proposition statement, state the resulting conditional
   \(r^{-20}\) conclusion there, cite both results in its proof, and have
   Step 010 consume that explicit conclusion. This changes no accepted source
   proof, theorem contract, constant, or event.

## Nonblocking Concerns

None beyond the blocking dependency-packaging issue above.

## Suggested Repair Depth

assembly

## Smallest Candidate Repair Target

/proof-assembly

## Rigor Audit

- **Exhaustive coverage:** All 15 accepted step proofs, all 45 local source
  units, all 15 target-step assemblies, and every corresponding public
  appendix unit were checked. The substantive local derivations are preserved
  in the appendix; no sampled-only part of the proof remains unaudited.
- **Mathematical derivations:** Apart from the public dependency gap above,
  the realized-factor conditioning, normalized-Gram concentration,
  quotient-range reduction, product-Haar factorization, leverage estimate,
  raw witness construction, endpoint Taylor argument, physical lifting, and
  final conditional accounting are derivationally sound.
- **Constants and explicit rates:** The assembly correctly declares
  \(c_H=1/288\), incurs exactly the \(\kappa_1^{12}\) elliptic loss, obtains
  the \((15/16)\delta_0\sqrt r\) endpoint margin, and transfers it to the
  physical relative-loss constant
  \(((15/16)\delta_0)^2\kappa_1^{-12}\). Uniformity over deterministic base
  triples, the rank window, the dimension threshold, and all large-\(r\)
  absorptions are otherwise preserved.
- **Definitions and domains:** The raw, balanced, and normalized coefficient
  vectors; physical-mode pairing; Gaussian mode arrays; elliptic aliases
  \(H_a=H_A\), \(H_b=H_B\), \(H_c=H_C\); and the domain of
  \(h(Q;E,X)\), including \(X\ne0\) and \(d=0\), are explicitly restored
  before use.
- **Probability and convergence modes:** The remaining-initialization law is
  correctly conditional on fixed \(A,B,C\); finite-path convergence is
  deterministic on \(\mathcal E_{\rm init\_norm}\cap\mathcal C_{\rm path}\);
  and the final theorem retains the possibly zero factor
  \(\mathbb P(\mathcal C_{\rm path}\mid\mathcal E_{\rm init\_norm})\).
  No conditional claim is promoted to an unconditional positive-probability
  result. The only mode/interface failure is the omitted Step 008 tail
  conversion in the named Step 009-to-Step 010 dependency chain.
- **Boundary cases:** The proof handles zero path length, maximal path length,
  unit endpoint displacement, equality in the initial deficit, singular-value
  interval endpoints, \(d=0\), maximal \(k\), and zero conditional path
  probability. The same-target raw witness and event-wide existential witness
  are used on their correct respective events.
- **Step-workload audit:** Sketch-attempt-10 `step_003` has four accepted
  units with distinct outputs: radius control, isotropic Khatri--Rao
  concentration, elliptic/diagonal transfer, and event accounting. Its later
  attempt repaired presentation and event aliases rather than a mathematical
  obstruction. The current blocker is a Step 009/010 assembly interface, so
  the user's excessive-step-work criterion does not trigger another sketch
  revision.
- **Static and citation checks:** The 45 theorem-style units have balanced
  environments and unique labels; references and all seven bibliography keys
  resolve; no manual tags or workflow scaffolding survive; and the current
  51-page build log is clean. The standard-result statements and object
  mappings are otherwise sufficient.

Verdict alignment: `BLOCKING` is required because Step 010's public
\(4r^{-20}\) conclusion depends on a conditional \(r^{-20}\) Step 009
interface that is proved only informally inside the Step 009 proof and is not
supported by the proposition's stated dependencies. The defect is local to
assembly packaging and admits the explicit repair above.
