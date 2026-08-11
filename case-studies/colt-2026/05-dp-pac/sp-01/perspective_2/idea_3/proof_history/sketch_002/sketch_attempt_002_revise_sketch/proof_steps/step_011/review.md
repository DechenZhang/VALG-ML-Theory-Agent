# Proof Step Review

## Step Review Identity

- Sketch attempt: 2
- Step ID: step_011
- Unit attempt: 1
- Review attempt: 1
- Reviewed proof artifact: perspective_2/idea_3/proof_steps/step_011/proof.md
- Reviewed proof SHA-256: 3796a8014c69d15ff28e283ddab8276d88504220ba1984aaa214af639693dc7e
- Reviewed proof status: COMPLETE
- Binding setting SHA-256: 13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327
- Accepted proof-sketch SHA-256: 51d7799b7e2a6d5eda6a6f8487c6e96c5fdfc73c949a55e0a38bf2508b0635a8
- Accepted proof-sketch-review SHA-256: 98f25ee0116ecced1f9d8935ec5788848f4da6274c11685951edee89854cbf89
- Accepted step_004 proof/review SHA-256: a7bfbd70ecbd3e68380fe75cdfa668f0dd34b198255823b7156e7d3eb03f709d / d20d43002ce30c7e50e0cccb230ff4c3014e2b328d46c96b4a59c2986269ee18
- Accepted step_005 proof/review SHA-256: 044406cb03ff7ebc62a8c44e317ec731030192eb2f4e585650335feea30e2191 / 189873c0b2f032e76014d9ebb953db45efa3842a7010829750f0afeb25940cff
- Accepted step_008 proof/review SHA-256: 42121742c564d1ac023afd576efc2e2e946a9b447f620d5c7cd087bc76fc8a43 / c29ea8c6302be8940d7e8f7a9e20180f2dde081dc50a3081eecbd59fb81e329d
- Accepted step_010 proof/review SHA-256: 6d918f086bfbc67b2c6ddefb43b245df1d8f331d8f31177fa1e15bd69d40b710 / e726a63626ae1c74d9461f3dfe43c2968fe962330ce1be0e89f491c5fe435cf7
- Frozen source checked: Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `submission/main.tex` SHA-256 b9f6d947f66f6223889f50c8eaa0c3275155a76fbaaecf1020eb8821389d6f87.

## Step-Review Status

REVISE_SKETCH

## Smallest Retry Target

/proof-sketch

## Blocking Issues

1. Location: unit_003, especially (17), the conditional pooled-trace step leading to (20), and unit_005's construction of \(\mathcal E_{\rm gen}\). Defect: Proposition~\ref{prop:step-011-relative-vc} is stated for an arbitrary fixed class of individually measurable sets and claims that outer probability alone makes the VC double-sample proof valid. That statement is false without a permissible-class, pointwise-measurability, image-admissibility, separability, or equivalent measurable-majorant condition. The standard Durst--Dudley pathology gives a nested class of measurable sets of VC dimension one for which every finite sample misses a class member of population mass one; replacing ordinary probability by outer probability does not cure it. At the proof level, the pointwise ghost-witness statement in (16) is promoted to (17) by an uncited outer-Fubini assertion, and the pointwise conditional finite union over data-dependent pooled traces is promoted to the joint outer-probability upper bound (20). Such pointwise conditional upper bounds do not in general upper-bound product outer probability without joint measurability/permissibility. The binding setting allows arbitrary possibly infinite \(C\), and neither Lyu Lemma 4.2 nor an accepted dependency proves the required measurable-envelope property for \(\widehat C_{d+1}\) or \(\mathcal A_c\). Downstream effect: the generated event \(\mathcal E_{\rm gen}\) with failure \(\beta/4\) is not established, so (34)--(37) do not prove the PAC target. Smallest repair direction: revise the sketch to expose a valid same-setting generalization interface: either a proved measurable-majorant/permissibility bridge for the exact fixed improper family, or a different generalization theorem whose hypotheses follow from the binding setting and Lemma 4.2. Merely adding measurability as a theorem assumption would change the arbitrary-class contract.

2. Location: the cited-result restatement (7) and its use in (16). Defect: frozen Lyu Proposition 1 is printed as the two-sided inequality \(\Pr(|Y-\mu|>\theta\mu)\le e^{-\theta^2\mu/3}\), which is false without a leading factor two; for example, one Bernoulli\((1/2)\) variable and \(\theta=1/4\) give left side one and right side \(e^{-1/96}<1\). The one-sided lower-tail estimate actually needed in (16) is true (and even has a stronger exponent), but it is not discharged by the false cited statement or proved locally. Downstream effect: even after the measurability interface is repaired, the ghost-sample implication lacks a valid cited/proved tail theorem. Smallest repair direction: in the repaired step, state and prove or correctly cite the one-sided multiplicative lower-tail Chernoff bound. This subdefect is local to `/proof-step step_011`, but it does not remove Blocking Issue 1's sketch/interface repair.

## Per-Lemma Audit

### unit_001: Exact zero-dimensional utility boundary

- Statement fidelity: The proposition exactly routes the setting's \(d=0\), \(N=0\) branch and does not evaluate positive-branch quantities.
- Proof validity: Two distinct concepts would realize both branches of a depth-one Littlestone tree, so a nonempty class with \(\operatorname{LD}(C)=0\) is a singleton. The output therefore equals every realizable target pointwise.
- Cited-result and assumption audit: Only Assumptions~\ref{assump:finite-littlestone} and \ref{assump:realizable-iid} are used; no generated event or dependency conclusion is assumed.
- Rigor checklist: The proof covers arbitrary \(D\), uses no division by \(d\) or \(v\), and gives zero error and zero failure probability.
- Local adversarial test: Nonempty singleton classes on arbitrary domains, including no-data sampling, preserve the claim.
- Contribution to target step: It proves the complete boundary branch.
- Verdict: PASS
- Repair direction: None.

### unit_002: Exact fixed improper SOA family has VC dimension at most d

- Statement fidelity: The family is exactly Lyu's \(\widehat C_{d+1}=\{\operatorname{SOA}_G:G\subseteq C\text{ is }(d+1)\text{-irreducible}\}\), not a data-dependent eligible family or a trace quotient.
- Proof validity: Frozen Lemma 4.2 gives \(\operatorname{LD}(\widehat C_{d+1})\le d\). The direct proof of \(\operatorname{VC}(F)\le\operatorname{LD}(F)\) is valid for infinite and improper binary families: a VC-shattered \(q\)-tuple labels every level of a complete depth-\(q\) Littlestone tree.
- Cited-result and assumption audit: The source uses the exact tie rule \(\operatorname{SOA}_G(x)=0\) iff \(\operatorname{LD}(G|_{(x,0)})=\operatorname{LD}(G)\), and irreducibility labels the full restriction sequence by this one fixed \(\operatorname{SOA}_G\). The proof maps these conventions and uses no finiteness or properness assumption.
- Rigor checklist: Definition (5) depends only on \((C,d)\); selected members may lie outside \(C\), and both source and direct arguments allow infinite families.
- Local adversarial test: Infinite \(C\), improper SOA functions, \(d=1\), and every finite shattered tuple preserve (12).
- Contribution to target step: It supplies the exact fixed structural family and dimension bound needed by any valid downstream generalization theorem.
- Verdict: PASS
- Repair direction: None.

### unit_003: One-sided relative VC inequality

- Statement fidelity: The intended \(1/\eta\) relative-deviation form and constants would be sufficient for the sketch's quantitative target, but the proposition adds an unproved standard-tool interface: arbitrary individual measurability plus outer probability.
- Proof validity: The algebra after a valid symmetrization is sound: (18) implies \(X<2M/5\) and \(M>3n\eta/4\); the without-replacement lower tail gives \(2e^{-M/150}\le2e^{-n\eta/200}\); Sauer--Shelah contributes at most \((2en/d)^d\) traces. Equations (21)--(22) are correctly directed. The proof nevertheless fails before this algebra can yield (20), because the outer-probability symmetrization/conditioning operations lack the measurable-majorant hypothesis described in Blocking Issue 1. Its independent-sample citation also has Blocking Issue 2.
- Cited-result and assumption audit: Frozen Proposition 2 supports the conditional without-replacement bound with its factor two. Sauer--Shelah is correctly restated for \(2n\ge d\). Frozen Proposition 1 is false as restated and cannot discharge (16). No cited theorem supplies the missing outer-measurability interface.
- Rigor checklist: Conditional on a valid measurable symmetrization theorem, every threshold, strict inequality, and exponential factor checks. With \(q=\log(16e/\eta)\), \(b=\log(4/\zeta)\), and \(L=dq+b\), \(\log 200\le2q\) and \(\log y\le y\) give (21); \(n\eta\ge1600L\) then gives (22) and the exact \(\zeta\) bound. These constant checks do not repair the probability-space defect.
- Local adversarial test: Non-permissible uncountable VC-one classes break (14) even though every member is measurable; outer probability remains one. The proof also fails its source test on the printed two-sided Chernoff claim. Mean-zero traces, repetitions, and \(d=1\) otherwise cause no algebraic problem.
- Contribution to target step: The required generalization event is not established.
- Verdict: REVISE_SKETCH
- Repair direction: Add a sketch-level legal producer for the exact family's measurable generalization interface, then rerun this step with a correct one-sided Chernoff result.

### unit_004: The accepted master size meets the relative-VC threshold

- Statement fidelity: The lemma uses the actual accepted ceiling-bearing definitions \(m=\lceil2^{20}d^2a\log Q/\alpha\rceil\) and \(n_0=km\), and targets the exact generalization threshold.
- Proof validity: Equations (25)--(29) are valid in the positive branch. In particular, \(Q>2e/\alpha\), \(\log(16e/\alpha)\le2\log Q\), and \(a\ge\log(1/\beta_{\rm gen})\) imply (28), while the favorable lower side of the ceiling and \(2^{20}>3\cdot6400\) imply (24). Substituting \(\eta=\alpha/2\), \(\zeta=\beta_{\rm gen}\) gives (30), and the two logarithms are each bounded by twice their (24) counterpart.
- Cited-result and assumption audit: The accepted step_005 dictionary supplies \(1\le v\le d\), \(k\ge2\), and the exact constant. Assumption~\ref{assump:approximate-dp-regime} supplies \(0<\alpha,\beta<1/4\), hence \(0<\eta,\zeta<1\) and \(\beta_{\rm gen}<1/16\).
- Rigor checklist: No ceiling term is dropped; \(d=v=1\) is included; all logarithms and denominators have valid domains. The numerical \(6400\) is sufficient for the stated \(1600\) threshold.
- Local adversarial test: The weakest \(d=v=1\), \(k=2\), \(\alpha,\beta\uparrow1/4\) boundary retains every displayed domination.
- Contribution to target step: It proves the numerical sample-size bridge, conditional on a valid generalization theorem with this threshold.
- Verdict: PASS
- Repair direction: None beyond replacing the invalid upstream generalization interface.

### unit_005: Population utility and exact four-charge failure ledger

- Statement fidelity: The proposition targets the exact unconditional population-error claim and uses only the four accepted/local failure categories.
- Proof validity: Conditional on a legitimate uniform event, the adaptive-output step is correct: \(\mathcal A_c\) is fixed once \(c\) is fixed, xor preserves finite traces and VC dimension, accepted step_010 gives the same actual function \(\widehat f\in\widehat C_{d+1}\) with \(e_S(\widehat f)\le\alpha/8\), and (34) would yield \(3\alpha/4<\alpha\). The finite union in (36)--(37) correctly charges \(\beta_{\rm tr},\beta_{\rm AT},\beta_{\rm SS},\beta_{\rm gen}\) once each and assumes no independence. The proof is invalid only because unit_003 has not produced a legal \(\mathcal E_{\rm gen}\).
- Cited-result and assumption audit: The exact accepted dependency conclusions and their probability modes are respected. Step_004 and step_005 supply one trace event with cost \(\beta/4\); step_008 supplies uniform conditional mechanism costs \(\beta/4+\beta/4\); step_010 supplies exact all-\(X\) membership and empirical error. None of those accepted dependencies is defective here.
- Rigor checklist: The output family is fixed before data, so adaptivity creates no additional union once a valid uniform theorem applies. The event ledger uses finite subadditivity and the tower property, not independence. The application, however, does not discharge the measurable/permissible-class premise needed to turn the outer uniform event into the claimed product-space bound.
- Local adversarial test: Infinite \(C\), improper output, \(d=1\), empirical error zero, and dependent partition/mechanism randomness all pass the deterministic and ledger portions. A non-permissible fixed class breaks the missing generalization event and therefore (31).
- Contribution to target step: The confidence arithmetic and assembly are ready, but the PAC conclusion is unproved.
- Verdict: REVISE_SKETCH
- Repair direction: Consume a newly exposed valid generalization interface; retain the present four-charge ledger.

## Hidden Subclaim Scan

The proof omits a nontrivial measurable-generalization bridge from the local lemma map. Individual measurability of each disagreement set, even if read implicitly into the setting's error notation, does not imply measurability/permissibility of the existential supremum event and does not justify conditional pooled-trace bounds in outer probability. This missing bridge is theorem-critical because it is the only producer of \(\mathcal E_{\rm gen}\).

The lower-tail Chernoff estimate used in (16) is also not validly supplied by the cited two-sided source statement. It must be stated as a correct local or cited result. No other independent hidden subclaim was found. The fixed-family xor map, adaptive uniform-event application, four-event union, and scalar logarithmic comparisons are elementary consequences of named results once the missing bridge exists.

A byte and command-token scan found no forbidden control bytes, non-ASCII debris, or malformed bare `ref`, `cite`, or `label` fragments. All five non-atomic units have theorem-style titles and stable labels.

## Target Claim Audit

The exact \(d=0\) claim is proved. On \(d\ge1\), the proof correctly identifies the exact fixed pre-data improper family, proves its Littlestone and VC dimensions are at most \(d\), verifies the ceiling-bearing \(n_0\) threshold, and assembles accepted empirical utility with the intended confidence ledger. It does not prove the exact population-error claim because Proposition~\ref{prop:step-011-relative-vc} is invalid under the arbitrary-class setting and therefore supplies no legal \(\beta_{\rm gen}\) event. Quantifiers over arbitrary possibly infinite \(C\), \(D\), and \(c\) make this a theorem-critical gap, not a cosmetic measurability note.

## Explicit Rate Audit

The numerical rate work passes independently of the blocker. The proof exposes \(d,\alpha,\beta,n_0\) and the inherited \(v,k,a,Q,m\), introduces only the universal constants \(1600,6400,2^{20}\), and hides no parameter dependence. Equations (21)--(22) correctly remove \(d\log n\); equations (25)--(30) correctly show that the actual \(n_0=km\) with the exact ceiling meets the desired threshold, including \(d=v=1\). The probability mode does not pass: the claimed outer-probability uniform event lacks the necessary measurability/permissibility interface, so there is no valid probability conversion to charge by \(\beta/4\). The fixed-sample horizon and binary population-error metric are otherwise preserved.

## Notation Surface Audit

The public-facing \(\widehat C_{d+1}\), appendix-local \(\mathcal A_c\) and \(\mathcal E_{\rm gen}\), and proof-local ghost/pool variables are economically classified. The inherited dependency events and scalar dictionary have exact provenance. The defect is provenance of \(\mathcal E_{\rm gen}\): it is declared as an outer-probability sample event without a valid theorem or measurable-majorant producer. No notation change can discharge that obligation.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-011-boundary} proves the zero-dimensional branch. Proposition~\ref{prop:step-011-fixed-family}, accepted step_010, and Lemma~\ref{lem:step-011-generalization-threshold} correctly provide fixed-family membership, dimension, empirical error, and numerical sample size. Accepted steps 004, 005, and 008 correctly provide the other three confidence categories. The assembly fails exactly at Proposition~\ref{prop:step-011-relative-vc}; consequently Proposition~\ref{prop:step-011-pac-utility} cannot supply the fourth charge or the exact target conclusion.

## Review Rationale

REVISE_SKETCH is the smallest sound status. The false Chernoff citation alone would be repaired by `/proof-step step_011`, but the primary defect is that the accepted sketch assigns a generic relative-VC tool to an arbitrary possibly infinite improper family without exposing or deriving the measurable/permissible-class interface that the tool requires. The step cannot add that condition as a theorem assumption, and Lyu Lemma 4.2 supplies only structural dimension. The sketch must add a same-setting bridge or replace the standard-tool interface before a repaired producer proof and fresh step review can certify population utility.
