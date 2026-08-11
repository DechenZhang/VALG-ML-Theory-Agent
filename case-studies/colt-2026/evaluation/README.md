# Refined Evaluation of Workflow-Accepted COLT 2026 Candidates

Evaluation date: 2026-08-08 (Asia/Shanghai).

This report applies the refined [evaluation rubric](RUBRIC.md) to
all 22 workflow-accepted candidate bundles. It supersedes the earlier scalar
scores and rankings; the theorem-level source and proof audits linked here
remain the evidence dossiers.

## What changed

The first pass used integer anchors as scores and imposed uniform `S6` and
`N4` ceilings. That compressed distinct contributions and produced three
first-place ties. The refined rubric makes four changes:

1. Progress is computed in quarter points as
   `P=(C,B,H)` for contract closure, baseline advance, and hard-burden
   discharge, with maxima
   `(4,3,3)`. A categorical cap is a ceiling, not an automatic score.
2. Soundness is the weakest-link score `S=min(M,D,A)`, where `M` is intrinsic
   mathematical validity, `D` is external-dependency verification, and `A` is
   audit completeness. The profile distinguishes an unavailable source from a
   defect in the submitted derivation.
3. Novelty is computed in quarter points as
   `N=(prior-art delta, mechanism, barrier, leverage, transfer)`, with maxima
   `(2,3,2,2,1)`. Literature confidence is reported separately and is not
   multiplied into intrinsic novelty. Because fresh search was unavailable,
   every branch has `C_N=.25`; all novelty scores and novelty-driven rankings
   are therefore provisional.
4. Weighted scores use unrounded components:
   `W=0.4P+0.4S+0.2N`. Exact ties use the preregistered tie-breakers in the
   rubric. No exact tie remains in this corpus.

The root-level parent PDFs control every progress score. Public TeX controls
intrinsic soundness. Internal workflow verdicts are not proof evidence.

## Final ranking summary

| Subproblem | Strict refined ranking |
| --- | --- |
| ALS Open Problem 2 | P1/I7 `6.70` |
| ALS Open Problem 3 | P2/I2 `5.45` > P1/I2 `4.90` > P3/I3 `4.65` |
| Deep Open Question 1 | P3/I2 `6.70` > P1/I3 `5.55` > P2/I2 `4.90` |
| Deep Open Question 2 | P2/I2 `5.75` > P1/I3 `5.35` > P3/I2 `4.90` |
| Online Open Question 1 | P2/I1 `8.00` > P1/I1 `7.05` |
| Online Open Question 2 | P1/I1 `9.35` > P2/I1 `9.30` > P3/I1 `7.90` |
| One-bit Open Problem 1 | P3/I1 `7.65` > P1/I1 `7.55` |
| DP Open Question 1 | P1/I3 `6.10` > P2/I4 `5.80` > P3/I1 `5.35` |
| DP Open Question 2 | P2/I2 `5.70` > P1/I5 `4.15` |

The `0.05` separation in Online Open Question 2 and the `0.10` separation in
one-bit mean estimation are strict under the rubric but scientifically close
and provisional. They should not be read as decisive superiority.

## 1. ALS Overparameterization

Detailed evidence: [ALS audit](audits/als_evaluation.md). Parent
contract: [source.pdf](../01-als-overparameterization/source.pdf),
PDF pp. 3-4.

### Open Problem 2

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W | Evidence |
| ---: | --- | --- | --- | --- | ---: | --- |
| 1 | P1/I7 | `(3,1.75,1.75)` / `6.50` | `(9,10,8)` / `8.00` | `(.5,1.25,.75,1.5,.5)` / `4.50*` | **6.70** | P:A, S:B, `C_N=.25` |

The branch closes every quantitative clause on a materially restricted
near-orthogonal, nearly balanced subclass and improves `r^2` to
`r^(5/3) polylog(r)`. Its long proof received major-interface rather than
exhaustive coverage, so `A8`, not a blanket mathematical-defect score, controls
soundness.

### Open Problem 3

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W | Stability |
| ---: | --- | --- | --- | --- | ---: | --- |
| 1 | P2/I2 | `(1.25,1.25,.5)` / `3.00` | `(9,10,9)` / `9.00` | `(.5,.75,.5,1,.5)` / `3.25*` | **5.45** | Robust over rank 2 under current evidence |
| 2 | P1/I2 | `(1.25,.75,.25)` / `2.25` | `(9,10,9)` / `9.00` | `(.25,.5,.25,.75,.25)` / `2.00*` | **4.90** | Source-sensitive over rank 3 |
| 3 | P3/I3 | raw `(2.75,1.5,.5)`, capped / `3.00` | `(9,6,8)` / `6.00` | `(.75,1.5,1,1.5,.5)` / `5.25*` | **4.65** | Source-sensitive |

P2/I2 remains first because its adaptive-projector implication is fully
auditable even though the path assumptions retain the central dynamics. P1/I2
is a sound but artificial fixed-span protocol diagnostic. P3/I3 is closest to
ordinary GD and technically strongest, but its headline initialization theorem
has `D6` because several theorem-critical concentration sources were not
primary-verified. Verifying them could move P3/I3 above P1/I2 and potentially
P2/I2.

## 2. Deep Learning Versus Linear Models

Detailed evidence: [deep-learning audit](audits/deep_evaluation.md).
Parent contract: [source.pdf](../02-deep-vs-linear/source.pdf),
PDF pp. 3-4.

### Open Question 1

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W |
| ---: | --- | --- | --- | --- | ---: |
| 1 | P3/I2 | `(2.75,1.5,1)` / `5.25` | `(9,10,9)` / `9.00` | `(.75,1.75,1,1.25,.25)` / `5.00*` | **6.70** |
| 2 | P1/I3 | `(1.5,1,.25)` / `2.75` | `(9,10,9)` / `9.00` | `(.75,1.25,.75,1.25,.25)` / `4.25*` | **5.55** |
| 3 | P2/I2 | `(1.25,.75,.25)` / `2.25` | `(9,10,9)` / `9.00` | `(.5,.25,.25,.75,.25)` / `2.00*` | **4.90** |

P3/I2 proves the exact deterministic conclusion in the odd, depth-two,
high-accuracy regime and therefore has substantially greater contract closure.
P1/I3 is a useful fixed-gate reduction, but its robust tube assumption carries
the nonlinear bridge. P2/I2 leaves the confident dimension itself unbounded,
so it receives less burden-discharge and baseline-advance credit than P1/I3.

### Open Question 2

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W |
| ---: | --- | --- | --- | --- | ---: |
| 1 | P2/I2 | `(1.75,1,.25)` / `3.00` | `(9,9,9)` / `9.00` | `(.75,1.5,1,1.25,.25)` / `4.75*` | **5.75** |
| 2 | P1/I3 | `(1.5,1,.25)` / `2.75` | `(9,9,9)` / `9.00` | `(.75,.75,.5,1,.25)` / `3.25*` | **5.35** |
| 3 | P3/I2 | `(1.25,.75,.25)` / `2.25` | `(9,10,9)` / `9.00` | `(.5,.25,.25,.75,.25)` / `2.00*` | **4.90** |

P2/I2's average-before-span certificate is the broadest reduction and has the
largest proof-mechanism delta. P1/I3 requires only one valid policy but still
assumes the polynomial catalog. P3/I2 assumes the stronger all-policy catalog
and is portfolio-subsumed downstream.

## 3. Online Optimization of Piecewise-Lipschitz Functions

Detailed evidence: [online-optimization audit](audits/online_evaluation.md).
Parent contract: [source.pdf](../03-piecewise-lipschitz/source.pdf),
PDF pp. 3-4.

### Open Question 1

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W |
| ---: | --- | --- | --- | --- | ---: |
| 1 | P2/I1 | `(3,2,2)` / `7.00` | `(10,10,10)` / `10.00` | `(1.25,1.25,1,1.75,.75)` / `6.00*` | **8.00** |
| 2 | P1/I1 | `(2.5,1.5,1.75)` / `5.75` | `(10,10,10)` / `10.00` | `(1,.5,.5,1.25,.5)` / `3.75*` | **7.05** |

P2/I1 gives a class-uniform polynomial sufficient direction and eliminates the
baseline exponential cube factor. P1/I1 gives a broader-than-pointwise but
finite-only averaged-density condition and uses a more standard midpoint-slab
mechanism.

### Open Question 2

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W | Stability |
| ---: | --- | --- | --- | --- | ---: | --- |
| 1 | P1/I1 | `(4,3,3)` / `10.00` | `(10,10,10)` / `10.00` | `(1.25,1.5,1.5,1.75,.75)` / `6.75*` | **9.35** | Provisional/close |
| 2 | P2/I1 | `(4,3,3)` / `10.00` | `(10,10,10)` / `10.00` | `(1.25,1.25,1.25,1.75,1)` / `6.50*` | **9.30** | Provisional/close |
| 3 | P3/I1 | `(3,1.75,2)` / `6.75` | `(10,10,10)` / `10.00` | `(1,1.5,1,1.75,.75)` / `6.00*` | **7.90** | Robustly third |

P1/I1 narrowly leads because it derives projective conditioning from more
primitive bounded-chain presentation data, directly addressing the source's
missing complexity bridge. P2/I1 is more transferable but starts from a
stronger supplied derivative-closure certificate. Both remain verified full
solutions at `(P10,S10)`; their `0.05` ordering is only a provisional novelty
comparison. P3/I1 leaves polynomial conditioning unresolved.

## 4. Fully Non-Adaptive One-Bit Mean Estimation

Detailed evidence: [one-bit audit](audits/one_bit_evaluation.md).
Parent contract: [source.pdf](../04-one-bit-mean/source.pdf),
PDF pp. 2-3.

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W | Stability |
| ---: | --- | --- | --- | --- | ---: | --- |
| 1 | P3/I1 | `(4,3,3)` / `10.00` | `(9,6,9)` / `6.00` | `(1,2,1.25,1.5,.5)` / `6.25*` | **7.65** | Provisional/close |
| 2 | P1/I1 | `(4,3,3)` / `10.00` | `(9,6,8)` / `6.00` | `(1,1.75,1,1.5,.5)` / `5.75*` | **7.55** | Provisional/close |

Both constructions cover the exact target and share the same `D6` localization
dependency, so neither is labeled a verified solution. P3/I1 receives the
strict first position because the padded-ring/Rademacher architecture handles
alias means and alias squares through a single reusable multiplexing ledger;
P1/I1's shifted-digit telescope is also nontrivial but relies more directly on
standard floor quantization, dither, and importance sampling. The novelty
difference is provisional and could reverse after a successful literature
audit.

## 5. Differentially Private PAC Learning

Detailed evidence: [differential-privacy audit](audits/dp_evaluation.md).
Parent contract: [source.pdf](../05-dp-pac/source.pdf),
PDF pp. 3-4.

All five bundles have `D6`: their public appendices give precise identifiers,
restatements, and object mappings, but at least one recent theorem-critical
primary source was unavailable. Their `M` and `A` entries show that this shared
headline score does not mean their local proofs received identical audits.

### Open Question 1

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W | Stability |
| ---: | --- | --- | --- | --- | ---: | --- |
| 1 | P1/I3 | `(2.5,2,2)` / `6.50` | `(9,6,8)` / `6.00` | `(.75,1.5,1,1.5,.75)` / `5.50*` | **6.10** | Provisional |
| 2 | P2/I4 | `(2.75,2,1.5)` / `6.25` | `(9,6,7)` / `6.00` | `(.5,1,.75,1.5,.75)` / `4.50*` | **5.80** | Provisional |
| 3 | P3/I1 | `(2,1.75,1.5)` / `5.25` | `(9,6,8)` / `6.00` | `(.5,1.25,.75,1.25,.5)` / `4.25*` | **5.35** | Provisional |

P1/I3 leads because it gives two-sided closure for arbitrary finite products of
VC-one factors, materially discharging the burden on that structured class.
P2/I4 has broader universal scope but supplies only an upper improvement that
remains polynomial in Littlestone dimension. P3/I1 is an explicit
threshold-product lower bound well below the requested characterization scale.
All adjacent orders remain provisional because source verification and a
current literature search could change their soundness or novelty profiles.

### Open Question 2

| Rank | Result | `P=(C,B,H)` | `(M,D,A)` / S | Novelty vector / N | W |
| ---: | --- | --- | --- | --- | ---: |
| 1 | P2/I2 | `(2.25,1.75,1.5)` / `5.50` | `(9,6,8)` / `6.00` | `(.75,1.5,1,1.5,.75)` / `5.50*` | **5.70** |
| 2 | P1/I5 | `(1.5,1.25,.25)` / `3.00` | `(9,6,8)` / `6.00` | `(.5,.5,.25,1,.5)` / `2.75*` | **4.15** |

P2/I2 supplies a substantive unrestricted threshold-minor direct sum, although
its lower bound remains far below `log|C|`. P1/I5 is a coherent implication,
but its assumed universal stability profile carries the missing theorem and
therefore receives only `0.25` burden-discharge credit.

## Rank interpretation

The refined rubric removes numerical co-ranks without pretending that every
strict order is robust. The main scientific conclusions remain:

- Online Open Question 2 has the only verified full solutions: P1/I1 and
  P2/I1 both have `P10,S10`.
- The one-bit branches have exact target coverage but remain provisional at
  `S6` until the common localization dependency is primary-verified.
- DP soundness remains dependency-limited at `S6`; its strict rankings come
  from progress and technical-mechanism differences, not from treating the
  unavailable sources as verified.
- Every novelty score marked `*` is provisional at `C_N=.25`. A successful
  current literature search could change close novelty-driven rankings.
