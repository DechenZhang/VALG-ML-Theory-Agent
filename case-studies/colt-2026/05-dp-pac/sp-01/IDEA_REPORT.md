# IDEA_REPORT.md

## Ideas

### Idea 1

- Parent perspective: Perspective 2, universal private-PAC upper bound.
- Branch path: `perspective_2/idea_4`
- Setting: Every nonempty possibly infinite binary class with finite VC dimension \(v\le d\), finite Littlestone dimension \(d\), and a finite or countable measurable evaluation quotient, under realizable distribution-free approximate central DP with a quotient-first unrestricted improper learner.
- Goal: On this primitive measurable regime, run the VC-calibrated Lyu construction on the discrete quotient and prove
  \[
  \widetilde O\!\left(
  \frac{d^4(v+\log(1/\beta))\log(1/(\delta\beta))}{\varepsilon\alpha}
  +\frac{d+\log(1/\beta)}{\alpha}
  \right),
  \]
  giving the fixed-parameter frontier \(\widetilde O(\min\{\log^+|C|,d^5,vd^4\})\).
- Notes: Progress type `conditional`. No source-faithful full candidate survived the measurable-decoder and neighboring-support gates. Countable evaluation coding is the weakest audited primitive repair: it makes the fixed-sample input discrete without assuming the desired learner kernel, covers infinite classes and uncountable domains with countably many observable types, and preserves the \(\widetilde O(vd^4)\), finite-class, and \(d^5\) arms. Classes with uncountably many evaluation types and a universal polynomial-in-\(v,\log d\) bound remain open.

### Idea 2

- Parent perspective: Perspective 3, unrestricted lower bound.
- Branch path: `perspective_3/idea_1`
- Setting: The tagged product \(C_{k,N}\) of \(k\) independently parameterized threshold classes on disjoint copies of \([N]\), with arbitrary improper learners and the source-compatible budget-sensitive approximate-DP regime.
- Goal: Prove \(\Omega(k\log^*N)\) samples and, for \(k=r\) and \(N=\operatorname{Tow}_2(r)\), obtain
  \(\Omega(\operatorname{VC}(C)\log^*\operatorname{LD}(C))=\Omega(r^2)\).
- Notes: Progress type `material_partial`. This gives an unbounded-factor improvement over the known additive lower-bound scale on the tower diagonal but does not reach the source's \(\operatorname{VC}\,2^{\log^*\operatorname{LD}}\) milestone or a universal characterization. The key new obligation is minimax hidden-coordinate tensorization that remains valid for arbitrary improper hypotheses and one-record replacement adjacency.

### Idea 3

- Parent perspective: Perspective 1, private-PAC sample-complexity characterization.
- Branch path: `perspective_1/idea_3`
- Setting: Canonical disjoint Cartesian products of arbitrary nonconstant VC-one finite-Littlestone factors whose measurable evaluation equivalence quotients are finite or countable. The upper learner runs Yan's factor mechanism on the discrete quotients and pulls hypotheses back measurably; the lower bound remains against unrestricted improper learners under the explicit approximate-DP small-delta regime.
- Goal: With \(s_i=1+\log^*(\operatorname{LD}(C_i)+1)\) and \(M_\oplus(C)=\sum_i s_i\), prove
  \[
  \Omega(M_\oplus(C))
  \le \operatorname{SC}_{\varepsilon,\delta}(C)
  \le O\!\left(
  \frac{M_\oplus(C)}{\varepsilon}
  \log^2\!\frac{eM_\oplus(C)}{\varepsilon\delta}
  \right)
  \]
  in the branch's respective lower- and upper-bound parameter regimes.
- Notes: Progress type `conditional`. Countable evaluation coding is the smallest supported primitive repair of `idea_2`'s nonmeasurable diagonal: it permits uncountable domains with countably many observable types, preserves arbitrary distributions and unrestricted improper lower learners, and restores the one-factor measurable upper baseline. Arbitrary finite-Littlestone classes and factors with uncountably many evaluation types remain open.
