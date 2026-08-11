# Rigor Proof Review

## Reviewer Verdict

PASS

## Blocking Issues

None

## Nonblocking Concerns

1. In the public proof of Lemma~\ref{lem:step-015-traces}, the sentence asserting \(n_{\mathrm o}\ge d\) attributes that inequality to Proposition~\ref{prop:step-015-teacher}, although the proposition does not state it verbatim. The inequality follows directly from the live block-size definitions and their displayed constant bounds (in particular \(C_{\mathrm o}=2^{20}\), \(\alpha<1/4\), \(a_{\mathrm o}>d\), and \(\log Q_{\mathrm o}>1\)), so this is only a cross-reference imprecision and not a mathematical gap.

## Suggested Repair Depth

None

## Smallest Candidate Repair Target

None

## Rigor Audit

- Mathematical derivations: Independently checked the theorem-level proof and all sixteen live accepted step derivations used by it. The scalar envelopes and ceilings, quotient transports, marked projection, trace bounds, finite-population tails, DDim descent, private mechanisms, SOA contradiction, marked holdout, rate elimination, old-Lyu arm, finite-class exponential mechanism, and deterministic three-arm minimum all follow from the stated inputs. The final main-theorem proof only composes named proved interfaces and introduces no new lemma.
- Statement self-containedness: The public theorem is stated from the four numbered primitive assumptions and defines its constants, rates, probability guarantee, and schedule in the theorem-facing files. It remains explicitly conditional on a finite-or-countable measurable evaluation quotient and does not claim to solve the unrestricted DP-PAC open problem.
- Main theorem constants and notation: \(K_{\mathrm V}\), \(K_{\mathrm O}\), \(K_*\), \(\Lambda\), and the three rate functions have consistent provenance. The public renaming of the source constant \(K_{\mathrm{old}}\) as \(K_{\mathrm O}\) is uniform in the old-arm rate, standalone schedule, and minimum construction.
- Derivation-over-notation: The bundle retains the operative inequalities rather than relying on helper dictionaries alone. In particular, the ceiling-aware teacher bounds, actual sample-count products, three certified arm thresholds, and selected-arm squeeze are displayed and proved.
- Explicit-rate contract: The finite, old-Lyu, and VC rates expose their structural, accuracy, confidence, privacy, and quotient-logarithmic dependence. Hidden constants are universal; the fixed-parameter and scheduled-small-\(\delta\) regimes are separated. The selected learner uses \(\delta K_{\mathrm V}\Lambda^4R_{\mathrm{VC}}\to0\), while the standalone old arm correctly requires its distinct \(\delta K_{\mathrm O}\Lambda^6R_{\mathrm{old}}\to0\) schedule.
- Appendix full derivations: Direct source-to-appendix comparison covered every used step, all 107 source local units, and all 559 tagged source displays. The appendix contains 110 theorem-style units; its few non-repeated source tags are dependency restatements whose exact content is supplied by named earlier public results. The remaining Step 015 displays \((\mathrm C3)-(\mathrm C6)\), (22.1), and (23.1), and the Step 016 interfaces \((\mathrm{C.V})\), \((\mathrm{C.O})\), \((\mathrm{C.O}\delta)\), (6.1), and (7.3), are preserved either literally or by a semantic-equivalent renamed constant plus an exact named proposition reference. The repaired Step 003 appendix proof explicitly constructs the required standard-Borel realization, finite powers, tagged disjoint unions, Borel diagonal, isolated failure tokens, and finite or variable-stop transcript spaces.
- Quantifiers and constants: All-input replacement privacy is separated from utility events; PAC guarantees are uniform over every raw distribution \(D\) and target \(c\in C\). Universal constants remain independent of \(d,v,|C|,\alpha,\beta,\varepsilon,\delta\), and no positive power of \(d\) is hidden in the logarithmic envelope.
- Probability or convergence modes: Conditional concentration statements are integrated over their conditioning variables before the unconditional PAC conclusion. Adaptive privacy composition uses the raw neighboring-input interface. No fixed-positive-\(\delta\) assertion is upgraded to an \(N\delta\to0\) limit, and no expectation, pointwise, or event-conditional statement is promoted to a stronger mode without proof.
- Boundary cases: The proof handles \(d=0\) with the common zero-sample Dirac learner, checks the \(d=1\) positive branch, proves \(1\le v\le d\) when \(d\ge1\), covers \(v=d\), treats finite and infinite \(C\) through the extended-real finite-arm cost, totalizes empty and failure paths, and retains all ceilings and confidence shares. The empty-class Littlestone-dimension convention used in the irreducibility arguments is consistent with the source convention and does not affect a supplied nonempty source class.
- Hidden subclaims: None found. The old-arm reconstruction and finite-class risk tail are producer-local; the deterministic minimum chooses a complete learner before observing data; and the final appendix proof invokes only previously proved public lemmas and propositions.
