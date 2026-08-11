# Global Proof

## Reviewed Sketch Identity

- Branch: `perspective_2/idea_3`
- Sketch attempt: 1
- Global-proof attempt: 1
- Binding setting: `perspective_2/idea_3/setting.md`
- Binding setting SHA-256: `13cb7296ea48e286ba553a4a153b84c00bd51c97f43c74d6b74f62321258d327`
- Reviewed sketch: `perspective_2/idea_3/proof_sketch.md`
- Reviewed sketch SHA-256: `4bfc2da8c0aebf4c01c543c53a3b2e7a0303cc7a91df63c46a7ddb86c19ffada`
- Reviewed sketch review: `perspective_2/idea_3/proof_sketch_review.md`
- Reviewed sketch review SHA-256: `2a61598895571092e9f1762f97a87d17b3f38ff5999b52836f5550fc92c509f1`
- Sketch review status: `ACCEPTED`
- Optional source-plausibility input: `perspective_2/idea_3/technical_survey.md`, SHA-256 `3fcf55b8fad2143c0b965f57016fbe7452c945cdfdbd716dcf33850884dd7b48`
- Tracker provenance: sketch attempt 1 is accepted and global attempt 1 was opened before this producer ran.

## Status

PARTIAL_BLOCKED

The accepted roadmap has a coherent theorem-level closure mechanism for all twelve steps, and every unresolved theorem-critical obligation is classified below as `step-local`. The remaining work is substantial local proof work, especially the exact source wrappers and the source-parameter specialization; it is not proof evidence supplied by this diagnostic.

## Attempted Theorem Claim

This is **exact-goal mode**. The theorem-facing primitive assumptions are exactly `assump:finite-littlestone`, `assump:realizable-iid`, and `assump:approximate-dp-regime`. No generated event, list, support statement, sensitivity statement, privacy conclusion, or generalization event is an assumption.

The attempted conclusion is the following universal `material_partial` theorem.

1. If (d=0), the nonempty class (C) is a singleton, and the deterministic zero-sample branch of (A_C^{\mathrm{VC\text{-}Lyu}}) is (0)-DP and has population error zero.
2. If (d\ge 1), so that (1\le v\le d), run Lyu's exact fixed-block learner with the source teacher count (k), the source stages (p_j=2^j n_0d), and
   \[
   a=v+\log(4k/\beta),\qquad
   Q=e+\frac{e k d^2a}{\alpha v},\qquad
   m=\left\lceil C_{\rm blk}\frac{d^2a\log Q}{\alpha}\right\rceil,
   \qquad n_0=N=km.
   \]
   There are universal (K\ge1) and (q\in\mathbb N_0) for which this learner is ((\varepsilon,\delta))-DP on every pair of neighboring labeled inputs and, for every realizable (P_{D,c}), has population error at most (\alpha) with probability at least (1-\beta), while
   \[
   N\le K\Lambda^q
   \left[
   \frac{d^4\bigl(v+\log(1/\beta)\bigr)\log(1/(\delta\beta))}
        {\varepsilon\alpha}
   +\frac{d+\log(1/\beta)}{\alpha}
   \right].
   \]

The probability mode is high probability jointly over the i.i.d. master sample, the data-independent random partition, and learner randomness. Privacy is an all-input output-distribution statement, not a conditional-on-utility statement. The horizon is one fixed sample, and the metric is population binary (0)-(1) error. Hidden constants are universal and may hide only powers of the displayed logarithmic envelope.

The theorem also preserves the source-facing comparisons: at fixed (\alpha,\beta,\varepsilon), with the displayed (\delta)-dependence retained along the source-compatible schedules, the new arm, Lyu's old arm, and a separately normalized finite-class arm give
\[
\widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right).
\]
This comparison does not assert a characterization, a universal (\operatorname{poly}(v,\log d)) bound, or a universal (\operatorname{poly}(v,\log^*d)) bound.

## Whole-Proof Draft

### Common notation and fixed allocations

In the positive-dimensional branch, index the master sample by ([n_0]), even when sample points repeat. For (h\in C), put
\[
e_S(h):=\frac1{n_0}\sum_{r=1}^{n_0}{\bf1}\{h(x_r)\ne y_r\},
\qquad
e_i(h):=\frac1m\sum_{r\in B_i}{\bf1}\{h(x_r)\ne y_r\},
\]
where (B_1,\ldots,B_k) is the uniform partition of the indices into blocks of size (m). Fix universal internal allocations
\[
\beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}+\beta_{\rm gen}\le\beta,
\qquad
\varepsilon_{\rm AT}+2\varepsilon_{\rm SS}\le\varepsilon,
\qquad
\delta_{\rm AT}+\delta_{\rm SS}\le\delta,
\]
with every nonzero allocation a fixed constant fraction of its public parameter. A fixed internal accuracy fraction is absorbed into the universal choice of (C_{\rm blk}). These allocations change no displayed power or logarithmic category.

### Block A: boundary split and parameter legality (`step_001`)

If (d=0) and two concepts in (C) differed at some (x\in X), the depth-one Littlestone tree labeled by (x) would be shattered. Hence (C=\{c_C\}), and then (v=0). The no-data map that returns (c_C) is independent of data, hence (0)-DP, and it has zero error against the only possible target. This also traces the exact entry state: no formula containing (1/v), no partition, and no private mechanism is activated.

If (d\ge1), nonconstancy gives (v\ge1), and the standard inequality (v\le d) gives (1\le v\le d). Since (k\ge1), (a\ge v\), (Q\ge e), and (m\ge C_{\rm blk}d^2v/\alpha\), a sufficiently large universal (C_{\rm blk}) makes (n_0=km\ge v). Thus every denominator, integer block size, partition, Sauer bound, and stage parameter is legal. The exact source definition of (k), including integer rounding and the fixed privacy/confidence split, remains a local source-instantiation obligation.

### Block B: conditional trace event (`step_002`-`step_005`)

#### B1. Exact conditional trace count (`step_002`)

Condition on the entire indexed labeled sample (S) before drawing the partition. The prediction trace of (h) is ((h(x_r))_{r=1}^{n_0}), and its error trace is obtained by xoring this vector with the fixed label vector ((y_r)_{r=1}^{n_0}). Xor is a bijection, including for nonrealizable fixed labels, so
\[
|\mathcal E_C(S)|
=|\{(h(x_r))_{r=1}^{n_0}:h\in C\}|
\le \Pi_C(n_0)
\le \left(\frac{en_0}{v}\right)^v.
\tag{B.1}
\]
The last inequality uses (n_0\ge v\ge1). Infinite cardinality of (C) is irrelevant because only its restrictions to the fixed indexed sample are counted.

#### B2. The two exact per-trace clauses (`step_003`)

Fix a binary error vector (z\in\{0,1\}^{n_0}), let
\(
\mu=n_0^{-1}\sum_r z_r
\), and let
\(
\widehat\mu_i=m^{-1}\sum_{r\in B_i}z_r
\).
Marginally, (B_i) is a uniform size-(m) subset of ([n_0]). No relation among distinct blocks is needed for this calculation.

The exact source event used downstream is
\[
E_{\rm good}:=
\bigcap_{i=1}^k\bigcap_{h\in C}
\left[
\begin{array}{ll}
|e_i(h)-e_S(h)|\le e_S(h)/(5d),
& e_S(h)>\alpha/3,\\[2pt]
e_i(h)\le\alpha/2,
& e_S(h)\le\alpha/3.
\end{array}
\right]
\tag{B.2}
\]
after the fixed public-to-internal constant rescaling recorded above. This is the source event itself, not a stronger surrogate and not an event for the eventual improper output class.

For the high-error branch, Lyu's without-replacement relative Chernoff proposition, with (\eta=1/(5d)\), gives
\[
\Pr\!\left(|\widehat\mu_i-\mu|>\frac{\mu}{5d}\right)
\le 2\exp\!\left(-\frac{m\mu}{75d^2}\right)
\le 2\exp\!\left(-\frac{m\alpha}{225d^2}\right).
\tag{B.3}
\]

The low-error branch must not apply a relative bound whose exponent vanishes with (\mu). Sampling without replacement has a moment generating function no larger than the binomial one, so for (q>\mu), Chernoff optimization yields
\[
\Pr(\widehat\mu_i\ge q)\le \exp[-mD(q\Vert\mu)].
\tag{B.4}
\]
For (0<\mu\le\alpha/3), (D(\alpha/2\Vert\mu)) is minimized at (\mu=\alpha/3). Writing (p=\alpha/3), the standard multiplicative KL lower bound gives
\[
D(3p/2\Vert p)
\ge p\bigl[(3/2)\log(3/2)-1/2\bigr]
\ge p/10=\alpha/30.
\tag{B.5}
\]
When (\mu=0), the upper-tail event is impossible. Hence, uniformly over the entire low-error range,
\[
\Pr(\widehat\mu_i>\alpha/2)\le e^{-m\alpha/30}
\le e^{-m\alpha/(30d^2)}.
\tag{B.6}
\]
Thus a universal (c_{\rm tr}>0), for example any value no larger than the constants exposed by (B.3)-(B.6), gives the accepted per-trace envelope
\[
\Pr(\text{the clause in (B.2) fails for }z,B_i)
\le 4e^{-c_{\rm tr}m\alpha/d^2}.
\tag{B.7}
\]
The local proof must supply the finite-population mgf/KL derivation with the exact strict/weak inequalities and integer thresholds; the displayed calculation identifies its complete theorem-level interface and its nonvanishing near-zero mechanism.

#### B3. Simultaneous event without block independence (`step_004`)

Every (h) with the same error trace induces the same events in (B.2). Applying a finite union bound over (k|\mathcal E_C(S)|) block/trace pairs, but never multiplying block probabilities, gives
\[
\Pr_{\mathcal P}(E_{\rm good}^c\mid S)
\le 4k\Pi_C(n_0)e^{-c_{\rm tr}m\alpha/d^2}
\le 4k(en_0/v)^v e^{-c_{\rm tr}m\alpha/d^2}.
\tag{B.8}
\]
The right side is independent of the realized sample. Taking expectation in (S) gives the same unconditional failure envelope. Repeated data points, mutually dependent blocks, and the zero trace require no additional term.

#### B4. Ceiling-aware noncircular fixed point (`step_005`)

Set
\[
b:=\frac{k d^2a}{\alpha v},\qquad Q=e(1+b),\qquad
T:=C_{\rm blk}\frac{d^2a\log Q}{\alpha}.
\]
Then (m=\lceil T\rceil\le T+1). Since (d\ge1), (a\ge v\), and (\alpha<1/4), one has (k/v\le b/4). Consequently
\[
\frac{en_0}{v}
=\frac{ekm}{v}
\le eC_{\rm blk}b\log Q+\frac{eb}{4}
\le (C_{\rm blk}+1)Q\log Q.
\tag{B.9}
\]
As (Q\ge e), there is a universal (C_{\rm fp}=O(1+\log(C_{\rm blk}+1))) such that
\[
\log(en_0/v)\le C_{\rm fp}\log Q.
\tag{B.10}
\]
There is no circularity: (Q) depends on (k,d,v,\alpha,\beta), not on (m) or (n_0).

For a fixed allocation (\beta_{\rm tr}=\Theta(\beta)), the logarithm of the right side of (B.8) divided by (\beta_{\rm tr}) is at most
\[
\log(4k/\beta_{\rm tr})
+vC_{\rm fp}\log Q
-c_{\rm tr}C_{\rm blk}a\log Q.
\tag{B.11}
\]
Because (a=v+\log(4k/\beta)), (v\le a), (\log Q\ge1), and
\(
\log(4k/\beta_{\rm tr})\le C_a a
\)
for a universal allocation constant (C_a), a sufficiently large fixed (C_{\rm blk}) satisfies
\(
c_{\rm tr}C_{\rm blk}>C_{\rm fp}+C_a
\)
and makes (B.11) nonpositive. Such a universal choice exists because the left side grows linearly in (C_{\rm blk}), whereas (C_{\rm fp}) grows only logarithmically. Therefore
\[
\Pr(E_{\rm good}^c)\le\beta_{\rm tr}.
\tag{B.12}
\]
The same ceiling calculation gives
\[
n_0\le (C_{\rm blk}+1)\frac{k d^2a\log Q}{\alpha}.
\tag{B.13}
\]

### Block C: exact Lyu objects, inclusion, and list envelope (`step_006`)

On (E_{\rm good}), instantiate, without renaming or modifying, Lyu's source restrictions (H_i^j\subseteq C), exact valid (p_j)-decompositions, and essential-SOA lists (\mathcal L_i^j), with
\[
p_j=2^jn_0d,\qquad 0\le j\le d.
\tag{C.1}
\]
The required current-notation wrapper has three outputs.

1. The high- and low-error clauses in (B.2), inserted into the threshold algebra in the proof of Lyu's `thm: DP-ERM-littlestone`, give, for every (j<d) and all block indices,
   \[
   H_i^{j+1}\subseteq\bigcap_{i'=1}^k H_{i'}^j.
   \tag{C.2}
   \]
2. `claim: exist decomposition`, `lemma: number of leaves`, and `coro: essential hypotheses` make each list finite and give
   \[
   |\mathcal L_i^j|\le L_j:=p_j^d2^{d^2}.
   \tag{C.3}
   \]
3. Since (p_j\le2^dn_0d),
   \[
   \log L_j\le d\log(2^dn_0d)+d^2\log2
   =O(d\log n_0+d^2+d\log d).
   \tag{C.4}
   \]

The produced blocks, restrictions, decompositions, and lists are the exact source objects consumed later; there is no fresh slice, empirical-trace quotient, or transformed candidate. Smaller (n_0) only decreases (C.1) and (C.3). The local proof must restate the exact source definitions, verify the setting's stage-index normalization, check every threshold in the derivation of (C.2), and totalize empty or singleton restrictions. The cited decomposition statements do not themselves produce (E_{\rm good}), privacy, or population utility.

### Block D: DDim descent and common-item support (`step_007`)

For the exact source decomposition dimension, define the integer potential
\[
M_j:=\max_{i\in[k]}\operatorname{DDim}_{p_j,d}(H_i^j)\in\{0,1,\ldots,d\}.
\tag{D.1}
\]
Lyu's `lemma: p-decomposition`, together with (C.2), supplies the following dichotomy under an accurate stage answer.

- At a plateau, `def: essential hypothesis` and `coro: essential hypotheses` produce a source-identical hypothesis (h_j^\star) contained in every relevant essential list. Thus its raw frequency
  \(
  q_j(h_j^\star):=|\{i:h_j^\star\in\mathcal L_i^j\}|
  \)
  is (k), giving a margin (k/2) above the source detection threshold.
- If no such common item is present at the accurately unsuccessful stage, then
  \[
  M_{j+1}\le M_j-1.
  \tag{D.2}
  \]

The recurrence has controlled negative sign and a finite integer budget: summing (D.2) over (r) accurate failures gives (M_r\le M_0-r\), while (M_r\ge0). Hence not all (d+1) stages can fail accurately. This is a noncircular termination proof; it does not assume successful selection. At (M_0=0), an accurate first-stage failure would force (M_1<0), so the support mechanism is active immediately. The local proof must verify the exact DDim equality/strict-drop hypotheses and that the common item is the same actual essential SOA object in all source lists, rather than merely an equal trace.

### Block E: AboveThreshold and Sparse Sample utility (`step_008`)

Let (L_{\max}=\max_{i,j}|\mathcal L_i^j|\). From (C.3)-(C.4),
\[
L_{\max}\le(2^dn_0d)^d2^{d^2},
\qquad
\log L_{\max}=O(d\log n_0+d^2+d\log d).
\tag{E.1}
\]
For each stage, the source query is the maximum list frequency
\[
q_j:=\max_h |\{i:h\in\mathcal L_i^j\}|.
\tag{E.2}
\]
One replaced list changes every candidate frequency, and hence its maximum, by at most one. The single AboveThreshold process is therefore fed sensitivity-one queries. On its allocated accuracy event, its noise is at most
\[
U_{\rm AT}=O\!\left(\frac{\log((d+1)/\beta_{\rm AT})}{\varepsilon_{\rm AT}}\right).
\tag{E.3}
\]

At the selected stage, Sparse Sample receives the exact tuple of source lists. Its failure-symbol/list-size condition and utility loss can be exposed in the accepted form
\[
B\ge \frac{10}{\varepsilon_{\rm SS}}
          \log\frac{L_{\max}}{\delta_{\rm SS}},
\qquad
B+\frac{C_{\rm SS}}{\varepsilon_{\rm SS}}
       \log\frac{kL_{\max}+1}{\beta_{\rm SS}}
\le\frac{k}{2},
\qquad
U_{\rm AT}\le\frac{k}{10}.
\tag{E.4}
\]
At the structural success stage, the common item has score (k), so (E.4) gives positive slack against the failure symbol, effective-domain penalty, and mechanism noise. The output is then an actual member of the union of the exact lists, not a trace representative.

The source-valid teacher count must be instantiated with a sufficiently large universal constant so that (E.4) holds simultaneously. The raw comparison is adequate because (E.1) puts the list size only inside a logarithm, while the source count has the scale
\[
k=\widetilde O\!\left(
\frac{d^2\log(1/(\delta\beta))}{\varepsilon}
\right).
\tag{E.5}
\]
The local proof must provide both sides of the source count: the lower inequalities needed by (E.4) and the upper envelope needed by the public rate. It must also verify the exact low-stage/high-stage gap used by AboveThreshold, the no-success output, empty lists, and all constant factors. Under those checks, the mechanism failure event has probability at most (\beta_{\rm AT}+\beta_{\rm SS}).

### Block F: all-input privacy (`step_009`)

Take arbitrary neighboring labeled datasets, without assuming realizability, and couple their data-independent random partitions by the same permutation of record indices. Exactly one block, say (i_\star), changes. For each fixed prior AboveThreshold transcript and every stage (j), the exact source construction must satisfy
\[
(\mathcal L_1^j,\ldots,\mathcal L_k^j)
\quad\hbox{and}\quad
(\mathcal L_1^{j\prime},\ldots,\mathcal L_k^{j\prime})
\quad\hbox{differ only in coordinate }i_\star.
\tag{F.1}
\]
It follows that the adaptive query (E.2) has sensitivity one. Lyu's `lemma: privacy of abovethreshold` applies to the one process spanning all (d+1) stages. Conditional on any released AboveThreshold transcript and selected stage, (F.1), (C.3), and the first inequality in (E.4) put the two Sparse Sample inputs in the one-list replacement interface of `lemma: privacy of sparse sampling`.

If the source costs are ((\varepsilon_{\rm AT},\delta_{\rm AT})) for AboveThreshold and ((2\varepsilon_{\rm SS},\delta_{\rm SS})) for one-list replacement Sparse Sample, adaptive composition and postprocessing give
\[
(\varepsilon_{\rm AT}+2\varepsilon_{\rm SS},
  \delta_{\rm AT}+\delta_{\rm SS})
\preceq(\varepsilon,\delta).
\tag{F.2}
\]
There is no (d+1) privacy multiplier: there is one AboveThreshold state and at most one Sparse Sample call. All restrictions, lists, queries, empty-list behavior, failure paths, and the default output must be total functions on arbitrary labeled inputs. Neither (E_{\rm good}) nor an accurate mechanism event occurs in this proof. The local step must prove (F.1) from the exact recursive source definitions and verify the source adjacency convention, transcript conditioning, and totalization; these are the hard all-input privacy obligations.

### Block G: improper SOA output and PAC conversion (`step_010`-`step_011`)

#### G1. Source identity and empirical error (`step_010`)

On (E_{\rm good}) and the mechanism accuracy event, Block E outputs an actual essential-list member. The exact source identity is
\[
\widehat h=\operatorname{SOA}_{\mathcal G}
\quad\text{for a sufficiently (p_j)-irreducible }
\mathcal G\subseteq H_i^j\subseteq C.
\tag{G.1}
\]
This identity, not proper membership (\widehat h\in C), is the object consumed by Lyu's empirical-risk contradiction. With (p_0=n_0d\ge n_0), the source irreducibility interface is strong enough to follow the master-sample error sequence. If
\(
e_S(\widehat h)>\gamma_{\rm emp}
\)
for the fixed internal fraction (\gamma_{\rm emp}\le\alpha/4), the exact source restriction argument constructs an empty restriction along SOA labels, contradicting the already-produced irreducibility of (\mathcal G). Thus
\[
e_S(\widehat h)\le\gamma_{\rm emp}.
\tag{G.2}
\]
The local proof must reproduce the exact contradiction and constants. The decomposition results alone do not supply (G.2), and a trace-equal representative would not be an adequate substitute for (G.1).

#### G2. Fixed improper output class and generalization (`step_011`)

Let (\mathfrak H_C) be Lyu's source-defined family of all eligible hypotheses (\operatorname{SOA}_{\mathcal G}) that can arise from sufficiently irreducible (\mathcal G\subseteq C). It is fixed by (C) and public parameters before the sample is drawn. Lyu's `lemma: Ldim-of-SOA`, which restates Ghazi et al., arXiv:2012.03893, Lemma 4.4, gives
\[
\operatorname{LD}(\mathfrak H_C)\le d,
\qquad
\operatorname{VC}(\mathfrak H_C)\le d.
\tag{G.3}
\]
This is an improper-output complexity statement; it neither puts (\widehat h) in (C) nor proves empirical error.

For a fixed target (c\in C), xoring (\mathfrak H_C) with (c) preserves VC dimension. A relative VC inequality therefore implies that, with probability at least (1-\beta_{\rm gen}), simultaneously for every (h\in\mathfrak H_C),
\[
e_S(h)\le\gamma_{\rm emp}
\quad\Longrightarrow\quad
\operatorname{err}_D(h,c)\le\alpha,
\tag{G.4}
\]
provided
\[
n_0\ge
C_{\rm gen}\frac{d\log(1/\alpha)+\log(1/\beta_{\rm gen})}{\alpha}.
\tag{G.5}
\]
Uniformity over the fixed class (\mathfrak H_C) makes (G.4) valid for the data-dependent improper output. The constructed sample already dominates (G.5): (k\ge1), (a\ge v+\log(1/\beta)\), (d^2v\ge d), and (\log Q\ge1), so a universal (C_{\rm blk}) makes the lower definition of (n_0) at least the right side after the fixed allocation. Combining (B.12), Block E's utility event, and (G.4) by a finite union bound gives total utility failure at most (\beta).

### Block H: public rate and every baseline (`step_012`)

Let
\(
\ell=\log(1/(\delta\beta))
\)
and (L=\Lambda(d,v,\alpha,\beta,\varepsilon,\delta)\). The exact source teacher formula must be restated in current notation as
\[
k\le K_k L^{q_k}\frac{d^2\ell}{\varepsilon}
\tag{H.1}
\]
for universal (K_k,q_k), after checking that every source logarithm is dominated by a power of (L). Taking logarithms in (H.1) gives
\[
\log k
\le \log K_k+q_k\log L+2\log d+\log\ell+\log(1/\varepsilon)
\le C_kL.
\tag{H.2}
\]
Here (L) contains the required (d,\varepsilon,\delta,\beta) logarithms, and (L\ge1). Since (\log(1/\beta)>1),
\[
a=v+\log(4k/\beta)
\le C_aL\bigl(v+\log(1/\beta)\bigr).
\tag{H.3}
\]
Also, using (v\ge1),
\[
\log Q
\le O(1)+\log k+2\log d+\log a+\log(1/\alpha)
\le C_QL.
\tag{H.4}
\]
Substitution of (H.1), (H.3), and (H.4) into (B.13) yields, for a universal (q\),
\[
n_0\le
K L^q
\frac{d^4\bigl(v+\log(1/\beta)\bigr)\ell}
     {\varepsilon\alpha}.
\tag{H.5}
\]
Writing the generalization requirement (G.5) explicitly and using a sum to dominate the maximum gives the public rate in the attempted claim. No power of (d,v,|C|), a list size, a support set, or a generated event is hidden in (L^q). The source-compatible small-(\delta) comparison follows directly from the setting's schedule:
\[
0\le N\delta\le
\delta K L^qR_{\rm VC}\longrightarrow0.
\tag{H.6}
\]
This is an asymptotic comparison only; privacy itself is proved pointwise in the parameters.

The full Rate Specialization Bridge has the following baseline branches.

1. **(d=0).** Block A gives (N=0), exact error zero, and (0)-DP. The positive-branch expressions involving (1/v) are never evaluated.
2. **(v=d).** Equation (H.5) has leading class power (d^4(d+\log(1/\beta))\), hence the (\widetilde O(d^5)) source scale at fixed public accuracy/privacy/confidence. The trace exponent is then (d), so no false saving is claimed.
3. **Old Lyu arm.** Lyu, arXiv:2510.00076v1, `coro: PAC learning`, supplies a separate learner with the same arbitrary-class, improper, all-input ((\varepsilon,\delta))-DP and realizable PAC interface. Its full source parameters must be normalized before comparison; at fixed (\alpha,\beta,\varepsilon) with the source-compatible (\delta) schedule, its class-complexity scale is (\widetilde O(d^5)). It is not used to prove (H.5).
4. **Finite-class arm.** For finite (C), the standard private ERM/exponential-mechanism learner can be normalized directly. With score minus the empirical mistake count, sensitivity is one, so the mechanism is pure (\varepsilon)-DP on all labeled inputs. Realizability supplies a score-zero target. For
   \[
   N_{\rm fin}\ge
   C\frac{\log^+|C|+\log(1/\beta)}{\alpha}
   \left(1+\frac1\varepsilon\right),
   \tag{H.7}
   \]
   the exponential-mechanism tail makes empirical error above (\alpha/2) have probability at most (\beta/2), and a one-sided finite union bound makes every population-error-(>\alpha) concept have empirical error above (\alpha/2), except with probability (\beta/2). Thus this arm has the same public utility and at least the required privacy. For infinite (C), it is disabled by (\log^+|C|=+\infty).
5. **Common-interface minimum.** Choosing among the three algorithms using only (C) and public parameters preserves privacy and utility. Only after the preceding normalizations may one take the minimum, obtaining the fixed-parameter frontier
   \[
   \widetilde O\!\left(\min\{\log^+|C|,d^5,vd^4\}\right).
   \tag{H.8}
   \]
   If (v=o(d)) and (\alpha,\beta,\varepsilon) are fixed, the new leading power (vd^4) is (o(d^5)); if (v=\Theta(d)), it is not.
6. **Remaining gap.** The result remains `material_partial`. It does not remove the polynomial (d^4) overhead, does not establish (\operatorname{poly}(v,\log d)) or (\operatorname{poly}(v,\log^*d)), and does not characterize approximate-private sample complexity. Those statements are outside the attempted theorem, not hidden residual conclusions.

The final assembly is now transparent. Block A closes the zero-dimensional branch. In the positive branch, Block B produces the exact source event with its probability budget; Blocks C and D turn it into a source-supported common essential SOA; Block E selects an actual such object; Block F proves privacy independently of utility; Block G proves empirical and population utility for the same improper output; and Block H eliminates all auxiliary parameters and preserves every required baseline. What remains is local derivation and source-instantiation work at the identified interfaces, not a missing theorem-level dependency.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| A. Boundary and legality | Exact (d=0) recovery; legal entry to (d\ge1) formulas | `step_001` | None | `assump:finite-littlestone`, `assump:approximate-dp-regime` | Exact source (k) integer/allocation convention |
| B1. Trace count | Replace coarse trace exponent by (v) | `step_002` | A | Primitive class assumption; fixed (S) is local conditioning | Full Sauer derivation in current notation |
| B2. Per-trace concentration | Produce both exact clauses, including near zero | `step_003` | A | Primitive parameter ranges; one fixed trace as a local hypothesis | Finite-population mgf/KL proof and integer-boundary handling |
| B3. Exact (E_{\rm good}) | Simultaneous generated event | `step_004` | B1, B2 | No generated theorem assumption | Verify exact source event identity and tower conversion |
| B4. Fixed point | Close trace probability and technical sample bound | `step_005` | A, B3 | Primitive scalar ranges | Ceiling constants and allocated failure inequality |
| C. Source wrapper | Exact (H_i^j,p_j), inclusion, decompositions, finite lists | `step_006` | B3, B4 | `assump:finite-littlestone`; derived (E_{\rm good}) | Verbatim source definitions, threshold algebra, index normalization, totalization |
| D. Structural descent | Common actual list item within (d+1) stages | `step_007` | C | Primitive finite LD; derived inclusion/lists | Exact DDim lemma hypotheses and common-object identity |
| E. Selection utility | Accurate stage detection and actual-list Sparse Sample output | `step_008` | B4, D | Primitive privacy ranges; derived list/common-item controls | All (k,L,B), threshold, noise, effective-domain, and confidence inequalities |
| F. Privacy | All-input end-to-end ((\varepsilon,\delta))-DP | `step_009` | C, D, E's totalized algorithm interface, but no utility event | `assump:approximate-dp-regime` | Raw replacement to one-list map at every transcript; exact source privacy costs |
| G1. Empirical bridge | Preserve improper SOA identity and prove low master error | `step_010` | C, D, E | Primitive finite LD; derived selected support | Exact irreducibility contradiction and accuracy constants |
| G2. PAC bridge | Fixed improper class VC control and population utility | `step_011` | B3, B4, E, G1 | `assump:realizable-iid`, `assump:finite-littlestone` | Exact Lyu output-family statement and relative VC inequality |
| H. Public assembly | DP/PAC theorem, explicit rate, baselines, and frontier | `step_012` | A, B4, F, G2 | All three primitive assumptions; all other inputs derived | Exact source (k) envelope, old-arm normalization, finite-arm constants, and no-hidden-power audit |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| `step_001` | Block A | Opens both branches | Singleton proof, deterministic privacy, (1\le v\le d), (n_0\ge v), fixed allocations | Preserves exact zero-sample baseline |
| `step_002` | Block B1 | Feeds `step_004`, `step_005` | Xor bijection and Sauer--Shelah on indexed traces | Infinite (C) and repeated points covered |
| `step_003` | Block B2 | Feeds `step_004` | Relative without-replacement tail and absolute-threshold KL tail | Near-zero branch is the highest-risk new derivation |
| `step_004` | Block B3 | Combines `step_002`, `step_003`; feeds source utility | Exact event identity, finite union, tower property | No independence among blocks |
| `step_005` | Block B4 | Closes `step_004`; feeds source/rate blocks | Ceiling-aware fixed point and failure allocation | (Q) is independent of (m,n_0) |
| `step_006` | Block C | Consumes exact event before all list uses | Exact source object definitions, inclusion, list size, stage match | Must not replace candidates by traces |
| `step_007` | Block D | Consumes inclusion/lists; feeds selection and empirical bridge | DDim potential drop and actual common-item support | One-unit decrease with budget (d) |
| `step_008` | Block E | Consumes fixed point/common item; feeds privacy and utility | Teacher/list/noise/failure-symbol inequalities | One AboveThreshold process, one Sparse Sample call |
| `step_009` | Block F | Uses totalized source objects; feeds final theorem | All-input one-block/one-list adjacency, source privacy, adaptive composition | Utility events are forbidden premises |
| `step_010` | Block G1 | Consumes exact selected object | Essential SOA identity and irreducibility-to-empirical-error contradiction | Output may be outside (C) |
| `step_011` | Block G2 | Consumes empirical output and fixed class | `Ldim-of-SOA` wrapper, relative VC bound, failure union | Uniform class, not realized-output-only generalization |
| `step_012` | Block H | Consumes completed DP/PAC and rate inputs | Eliminate every auxiliary; normalize all comparison arms and boundaries | State remaining source gap honestly |

## Dependency And Assumption Audit

The dependency graph is acyclic and respects the accepted sketch exactly. No step claim, dependency, assumption, output target, stage object, or generated-output path has been changed.

| Condition or object | Provenance class | Producer | First consumers | Audit result |
| --- | --- | --- | --- | --- |
| (d<\infty), realizable i.i.d. utility model, public parameter ranges | primitive conditions | `assump:finite-littlestone`, `assump:realizable-iid`, `assump:approximate-dp-regime` | As listed by each step | Legal theorem assumptions |
| Branch certificate (d=0) or (1\le v\le d), allocations, parameter legality | accepted-derived target of `step_001` | Block A | All positive-branch steps; Block H | Not assumed at theorem level |
| Error-trace cardinality | accepted-derived target of `step_002` | Block B1 | Blocks B3, B4 | Produced before use |
| Per-trace deviation | local conditional lemma on a fixed trace | Block B2 | Block B3 | Local conditioning only; not a final assumption |
| (E_{\rm good}) and its probability budget | derived event | Blocks B3, B4 | Blocks C, D, G | Produced before every source use |
| Inclusion, exact lists, and list envelope | derived source wrapper | Block C | Blocks D-F, G1 | Requires local source proof; never assumed publicly |
| DDim descent and common-item support | derived structural certificate | Block D | Blocks E, G1 | Noncircular producer path |
| Mechanism accuracy, selected actual-list output | derived mechanism event/output | Block E | Blocks F, G | Failure charged to (\beta); not used by privacy truth |
| One-list adjacency and end-to-end DP | derived all-input conclusion | Block F | Block H | No realizability or utility-event premise |
| Improper SOA representation and empirical error | derived output facts | Block G1 | Block G2 | Same output object is retained |
| Fixed output-class complexity and population error | derived source wrapper/event | Block G2 | Block H | Uniform over a fixed class |
| Public rate, baselines, and comparison | derived assembly outputs | Block H | Final theorem | Every auxiliary eliminated or labeled as a local gap |

There is no missing derived-condition bridge at theorem level. The unresolved items are proofs of the already-assigned producer interfaces and are therefore `step-local`, subject to later step review.

## Citation And Tool Audit

| Source or tool | Identity and statement role | Current objects and mapping | Assumptions/hypotheses to discharge | Conclusion used | Convention compatibility and known non-output boundary | Affected block / Step ID |
| --- | --- | --- | --- | --- | --- | --- |
| Sauer--Shelah | Standard trace-growth theorem, used as a current-notation direct derivation | \(C\!\restriction_S\), indexed sample size \(n_0\), VC dimension \(v\) | \(1\le v\le n_0\) from Block A | \(\Pi_C(n_0)\le(en_0/v)^v\) | Labels are removed by xor; theorem does not give concentration | B1 / `step_002` |
| Without-replacement relative Chernoff | Xin Lyu, *Private Learning of Littlestone Classes, Revisited*, arXiv:2510.00076v1, `prop:chernoff-sample-without-replacement` | Fixed binary error population on indexed (S); one marginally uniform size-(m) block | Exact relative tolerance (1/(5d)), (e_S(h)>\alpha/3) | High-error clause (B.3) | Same finite-population convention; does not supply the near-zero absolute tail or simultaneous event | B2 / `step_003` |
| Hypergeometric/KL upper tail | Standard without-replacement mgf domination plus direct Chernoff optimization | Same fixed trace and one block | (q=\alpha/2>\mu\), including (\mu=0), integer threshold handling | (B.4)-(B.6) | Exact source sampling model; supplies only one fixed trace/block | B2 / `step_003` |
| Lyu fixed-block event and theorem proof | arXiv:2510.00076v1, displayed (E_{\rm good}) and proof of `thm: DP-ERM-littlestone` | Same master sample, fixed blocks, (H_i^j\), (p_j\), thresholds | Exact event identity, stage normalization, source definitions | Inclusion (C.2) and empirical contradiction interface | Source theorem used a coarser trace calibration; only that input is replaced. It does not let this diagnostic alter downstream objects | B3, C, G1 / `step_004`, `step_006`, `step_010` |
| Lyu decomposition package | arXiv:2510.00076v1, `def: p-decomposition`, `claim: exist decomposition`, `lemma: number of leaves`, `lemma: p-decomposition` | Exact valid decompositions of source (H_i^j\) at (p_j\) | Inclusion, dimension equalities/inequalities, empty-case conventions | Leaf/list bound and strict DDim descent | Same LD/DDim and geometric-(p) conventions; does not prove event, selection, privacy, or PAC utility | C, D / `step_006`, `step_007` |
| Lyu essential hypotheses | arXiv:2510.00076v1, `def: essential hypothesis`, `coro: essential hypotheses` | Exact essential-SOA lists (\mathcal L_i^j\) | Valid decompositions, plateau condition, source irreducibility | Finite lists and same actual common SOA item | Candidate identity must be functional, not trace-only; result does not select privately | C, D / `step_006`, `step_007` |
| Lyu AboveThreshold | arXiv:2510.00076v1, `algo: abovethreshold`, `lemma: privacy of abovethreshold` | One process on adaptive maximum-frequency queries (q_j) | Sensitivity one on all inputs, threshold/noise allocation, totalized queries | Accurate finite-stage detection and source privacy cost | Does not produce a common item or prove query sensitivity | E, F / `step_008`, `step_009` |
| Lyu Sparse Sample | arXiv:2510.00076v1, `algo:private sample`, `lemma: privacy of sparse sampling` | One call on exact finite list tuple at selected stage | (L_{\max}), (B), one-list replacement, privacy allocation | Actual-list utility and list-level approximate DP | Does not prove raw-record adjacency, source list envelope, or common-item margin | E, F / `step_008`, `step_009` |
| Adaptive composition and postprocessing | Standard DP tools, instantiated through Lyu's stated interface | AboveThreshold transcript followed by at most one Sparse Sample output | Uniform conditional privacy of second mechanism and (F.2) | End-to-end ((\varepsilon,\delta))-DP | No utility conditioning; no stage-count multiplier | F / `step_009` |
| Lyu improper-output class | arXiv:2510.00076v1, `lemma: Ldim-of-SOA`; restates Ghazi et al., *Sample-Efficient Proper PAC Learning with Approximate Differential Privacy*, arXiv:2012.03893, Lemma 4.4 | Fixed family (\mathfrak H_C) of eligible (\operatorname{SOA}_{\mathcal G}) outputs | Exact irreducibility convention and output-family definition | (operatorname{LD}(\mathfrak H_C)\le d), hence VC at most (d) | Same functions and binary metric; does not prove (G.1), empirical error, or properness | G2 / `step_011` |
| Relative VC generalization | Standard fixed-class relative uniform convergence, current-notation wrapper | Disagreement class (\mathfrak H_C\triangle c) under (D) | i.i.d. realizable sample, VC at most (d), (G.5), fixed (c) | (G.4) uniformly over adaptive output | Population and empirical errors concern the same (h,c); not valid for a sample-defined class without (G.3) | G2 / `step_011` |
| Lyu PAC corollary and teacher calibration | arXiv:2510.00076v1, `coro: PAC learning` and source parameter choice in `thm: DP-ERM-littlestone` | Same (k), privacy/confidence parameters, old comparison learner | Exact logarithmic teacher envelope and common public parameter interface | (H.1), old (\widetilde O(d^5)) comparison | Old corollary's coarse trace input is not used to prove the new arm; source formula must be restated, not guessed | E, H / `step_008`, `step_012` |
| Finite-class private ERM | Kasiviswanathan et al., *What Can We Learn Privately?*, arXiv:0803.0924 / SIAM J. Comput. 2011, plus direct exponential-mechanism derivation | Finite (C), mistake-count score, arbitrary labeled inputs | Finite cardinality, score sensitivity one, realizability only for utility | Pure-DP finite-class arm (H.7) | Same PAC error and stronger privacy; says nothing for infinite (C) | H / `step_012` |

All theorem-critical cited statements have a stable source identity and a current-object role. The unresolved source checks are explicitly local proof obligations; this diagnostic does not treat the citations as discharged proof evidence.

## Quantitative Dependence Audit

- **Exposed variables:** (d,v,\alpha,\beta,\varepsilon,\delta). The comparison alone also exposes (|C|) through (\log^+|C|).
- **Auxiliary quantities to eliminate:** (k,m,n_0,a,Q,p_j,L_j,B), internal privacy/confidence/accuracy allocations, source thresholds, and mechanism noise bounds.
- **Hidden constants:** Only universal (K,q,C_{\rm blk},c_{\rm tr}) and universal allocation constants. They may not depend on (X,C,D,c,|C|), a list, stage, partition, support set, event, decomposition, or output.
- **Fixed quantities and asymptotics:** The theorem is uniform over the displayed parameters. Only the frontier fixes (\alpha,\beta,\varepsilon); (\delta) retains its displayed dependence and follows the setting's source-compatible schedule.
- **Probability mode:** Utility is joint high probability over sample, partition, and learner randomness. The conditional partition estimate is integrated by the tower property. Privacy is an all-input neighboring-distribution inequality over all internal randomness.
- **Horizon mode:** Fixed-sample minimax PAC. There is no expectation-only, stopping-time, or conditional theorem.
- **Norm/metric mode:** Population binary (0)-(1) error. Empirical error uses the same selected function and target before the fixed-class transfer.
- **Rate relations:** (B.13), (H.1), (H.3), and (H.4) imply (H.5). Equation (G.5) supplies the explicit generalization contribution. Every occurrence of (p_j) or (L_j) enters only through (C.4).
- **Probability conversion:** Fixed allocations satisfy (\beta_{\rm tr}+\beta_{\rm AT}+\beta_{\rm SS}+\beta_{\rm gen}\le\beta). Dependence between events is irrelevant to this union bound.
- **Privacy conversion:** The concrete one-process/one-call relation is (F.2), not a (d+1)-fold composition.
- **Baseline reductions:** The exact (d=0) learner, the (v=d) return to (d^5), the separately normalized old Lyu arm, and the finite-class arm (H.7) are all present. No weaker zero-defect or remainder-only surrogate replaces them.
- **Remaining dependence:** The polynomial (d^4) factor remains explicit and is the principal unresolved source gap; it is not hidden in the tilde.

## Scope And Closure Certificate

Abbreviations in the table: `AT` is the single AboveThreshold process; `SS` is the one Sparse Sample call; `GO` is (E_{\rm good}); and `GF` is the fixed generalization event for (\mathfrak H_C).

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key positive/control term or structural source | Defect/forcing terms | Accumulation behavior / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Obligation locality classification | Noncircular closure status | Entry-state / first-update stress result | Closure/dominance/absorption relation | Primitive controls | Generated controls | Boundary stress result | Failure mode if mechanism absent |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `step_001`: (d=0) recovery and positive-branch legality | Baseline invariance and branch-entry certificate | All allowed classes/parameters | (d=0\Rightarrow C) singleton; (d\ge1\Rightarrow1\le v\le d\), (n_0\ge v) | LD/VC definitions; deterministic constant output | Division by (v), rounding, invalid partition if branch were not split | One-time branch split; no accumulated defect | structural lower/upper comparison | Primitive `assump:finite-littlestone`; (d=0) handled, not excluded | A differing pair would shatter depth one; (v\le d) is the exact structural comparison | Produced singleton equals target; no object residual | step-local | Primitive condition precedes all consumers | At (d=0), output is already correct and no update occurs; at (d=v=1), all formulas activate legally | Branch before evaluation; lower definition of (m) gives (n_0\ge v) | Class nonempty, finite LD, parameter ranges | Branch certificate and allocation package | Exact (d=0); smallest positive case (d=v=1) | Positive formulas become undefined or zero-sample baseline is lost |
| `step_002`: VC error-trace count | Structural finite producer for concentration | Each fixed indexed \(S\) | Error traces = prediction traces xor fixed labels; count by \(\Pi_C(n_0)\) | Sauer exponent \(v\) | Duplicate concepts/traces; infinite \(C\) | Static finite control; no accumulation | structural upper comparison | Direct standard fact under \(n_0\ge v\ge1\); repeated points allowed | Supplies cardinality, the exact needed claim class | Same trace object consumed by union bound; zero residual | step-local | `step_001` proves legality first | Repeated points only reduce trace count | \(\lvert\mathcal E_C(S)\rvert\le(en_0/v)^v\) | VC dimension and fixed \(S\) | Legal positive branch | \(v=1\), repeated points, arbitrary fixed labels | Union retains an uncontrolled class-cardinality term |
| `step_003`: two per-trace tails | Concentration and near-zero nondegeneracy | One fixed trace and one block | (B.3) for (mu>\alpha/3); (B.4)-(B.6) for (mu\le\alpha/3) | Relative Chernoff exponent (m\mu/d^2); absolute KL exponent (mD(\alpha/2\Vert\mu)) | Two-sided deviation; vanishing (mu); integer thresholds | One-shot block tail; later finite union only | structural lower/upper comparison | Lyu relative proposition plus direct KL wrapper; (d=0) excluded by branch | KL supplies positive (\Theta(\alpha)) exponent even at the low-error boundary | Same block/master errors and thresholds; zero transfer residual | step-local | Fixed trace/partition marginal defined before event | At (mu=0), low-tail failure is impossible; at (mu=\alpha/3), KL is at least (alpha/30) | Failure probability at most (4e^{-c_{\rm tr}m\alpha/d^2}) | (m,\alpha,d), uniform block marginal | Positive branch | (mu=0), (mu=\alpha/3), (d=1) | A relative-only proof has a vanishing exponent and cannot close Trace |
| `step_004`: exact GO | Generated event and finite-scope closure | All (k) blocks and all source concepts for one run | (B.8), then tower property | Per-pair exponential control | Multiplicity (k\Pi_C(n_0)); block dependence | Finite union; no sign or independence assumption | summable control | `step_002`-`step_003`; all finite (k,n_0) | Sources match event cardinality and tail classes exactly | Produced GO is the exact source-consumed event; zero residual | step-local | Both producers precede all GO consumers | First block is only marginally uniform; this suffices | Sum of per-pair probabilities gives (B.8) | Fixed partition law | Trace count and per-trace tail | Mutually dependent blocks, duplicate data | Source inclusion is consumed without a proved event |
| `step_005`: fixed point and GO budget | Quantitative specialization and generated-event probability closure | One parameter tuple | (B.9)-(B.13) | (c_{\rm tr}C_{\rm blk}a\log Q) | (v\log(en_0/v)), (log(k/\beta)), ceiling | One scalar closure; no repeated defect | structural lower/upper comparison | Direct algebra; (Q) primitive/source-parameter dependent and (d\ge1) | Positive exponent dominates every multiplicity class | Same (n_0) occurs in trace count and sample definition; ceiling controlled | step-local | (Q) is fixed before (m,n_0) | At (d=v=1), (Q\ge e); (d=0) bypasses | Choose universal (C_{\rm blk}) so (B.11) is nonpositive | Parameter ranges and source (k) | Trace formula | (v=1), (v=d), large (k), ceiling-dominated case | Uncontrolled (v\log n_0) or hidden positive power remains |
| `step_006`: inclusion and finite lists | Generated membership/interface wrapper | All (d+1) source stages on GO | (C.2)-(C.4) | Exact GO threshold gap; source leaf count | Sampling deviation; list cardinality; empty restrictions | Finite stage family; no recursive error accumulation in this row | structural lower/upper comparison | Lyu theorem proof and decomposition package; (d\ge1), exact stage convention | Source event has the threshold content needed for inclusion; leaf theorem supplies finiteness | Produced/consumed (H_i^j,p_j,\mathcal L_i^j) are identical; no surrogate | step-local | GO and calibration precede source objects' use | At first stage (p_0=n_0d\); empty/singleton cases must be totalized | Source threshold algebra yields inclusion; (L_j\le p_j^d2^{d^2}) | Finite LD and fixed blocks | GO and fixed-point certificate | (d=1), infinite (C), empty/singleton restrictions | Candidate/list identity or inclusion needed downstream is unsupported |
| `step_007`: DDim descent/common item | Structural signed descent, support, finite-stage termination | At most (d+1) stages | Accurate failure gives (M_{j+1}\le M_j-1), (0\le M_j\le d) | Integer DDim potential and source plateau corollary | Mechanism misclassification is external and charged to (\beta); no on-event forcing | On AT-accuracy event, accumulated signed drop is (-r); finite budget (M_0\le d) | monotone potential | Lyu `lemma: p-decomposition` and essential-hypothesis corollary; positive branch | Supplies strict sign and actual common support, not mere boundedness | Common item is the same function in every produced list; zero identity residual | step-local | Inclusion/lists precede potential; termination is not assumed | (M_0=0): first accurate failure would make potential negative | (M_r\le M_0-r\) forbids (d+1) failures | Finite LD | Inclusion, lists, accurate-answer conditioning | (d=1), zero potential, infinite class | No common item or termination follows within finite stages |
| `step_008`: AT/SS utility and output membership | Generated private-output utility and margin closure | One AT run over (d+1) queries; one SS call | (E.1)-(E.5) | Score (k) common item; sensitivity-one query; source teacher count | AT noise, (B), effective domain (kL+1), SS noise, finite confidence failures | Noise failures finitely union-bounded; no privacy accumulation claim here | structural lower/upper comparison | Lyu algorithms/utility interfaces plus source-valid (k); empty/no-success paths handled | Common-item score supplies the required positive margin; list bound supplies finite domain | SS outputs an actual item from exact lists; no trace/surrogate residual | step-local | `step_007` produces support before selection | First query is defined even for empty lists; at plateau score (k) activates margin | (E.4) makes all opposing terms at most the (k/2) slack | Privacy/confidence ranges and source (k) | Lists, common item, fixed point | (d=1), empty lists, candidate appearance/disappearance | Utility or actual-list membership fails; downstream SOA identity unavailable |
| `step_009`: all-input DP | Scope closure from raw adjacency to public privacy | Every neighboring labeled pair, all transcripts | One raw replacement -> one list coordinate; (F.2) | Sensitivity one, one-list replacement, one-process/one-call source lemmas | Adaptive stage choice, arbitrary nonrealizable labels, failure paths | Privacy loss accumulates only as \(\varepsilon_{\rm AT}+2\varepsilon_{\rm SS}\); delta as \(\delta_{\rm AT}+\delta_{\rm SS}\) | algebraic coupling | Data-independent partition coupling and cited privacy lemmas; no utility boundary excluded | Source lemmas have exactly sensitivity-one and one-list claim classes | Raw neighbor maps to exact consumed list adjacency; zero adjacency residual if (F.1) holds | step-local | Totalized objects and conditional transcript interfaces precede release | First query on arbitrary data has sensitivity one; no-success path uses fixed default | Likelihood-ratio composition gives (F.2), with no stage multiplier | Approximate-DP public ranges | Exact list tuples and source mechanism state | Nonrealizable inputs, empty lists, changed record in any block | Privacy is proved only on utility events or incurs a hidden (d) factor |
| `step_010`: SOA identity/empirical risk | Object-target bridge and empirical utility | Generated selected output on utility events | (G.1) and irreducibility contradiction -> (G.2) | Actual essential SOA and (p_0\ge n_0) irreducibility | Excess empirical-error sequence; event failures already budgeted | One finite contradiction; no accumulated residual | structural lower/upper comparison | Lyu theorem utility proof; exact source object required | Irreducibility has the nonempty-restriction content needed for contradiction | Produced output is exactly the hypothesis whose empirical error is measured; zero target residual | step-local | Lists/support/selection precede empirical claim | Empirical error zero is immediate; excessive error activates contradiction | Excess error would create forbidden empty restriction | Finite LD | GO, exact output membership, irreducibility | Improper output, infinite (C), (d=1) | Selection may output an object with no empirical guarantee |
| `step_011`: improper PAC conversion | Fixed-class complexity and empirical-to-population transfer | One iid sample, uniform over fixed (\mathfrak H_C) | (G.3)-(G.5), confidence union | VC dimension at most (d) of exact output class | Uniform-convergence deviation; trace/mechanism/generalization failures | Finite confidence union; adaptive output controlled uniformly | structural lower/upper comparison | Lyu `lemma: Ldim-of-SOA` plus relative VC theorem; realizable iid utility only | LD/VC source supplies exact fixed-class complexity, not properness | Empirical and population errors use same output and target; residual dominated at scale (\alpha-\gamma_{\rm emp}) | step-local | Output family fixed before data; `step_010` produces member before use | Singleton handled by `step_001`; excessive-risk improper output is excluded uniformly | (G.5) plus (e_S\le\gamma_{\rm emp}) implies population error (\le\alpha) | iid sampling and target in (C) | Exact SOA representation, empirical error, failure budgets | Infinite (C), output outside (C), empirical error zero | Data-dependent improper output lacks a valid population guarantee |
| `step_012`: public rate and baselines | Quantitative theorem closure and baseline invariance | All parameters; fixed-parameter frontier specialization | (H.1)-(H.8) | Source (k) envelope; explicit algebra; zero branch; normalized source arms | (log k,log Q,log L_j), rounding, generalization, mismatched arm interfaces | One specialization; all failure accumulation already closed | structural lower/upper comparison | Earlier derived outputs, Lyu corollary, finite-class private ERM; (d=0) split explicit | Sources provide exactly their own DP/PAC arms; direct algebra supplies new rate | Every auxiliary removed; each comparison arm mapped to same public parameters before minimum | step-local | DP and PAC outputs precede rate assembly | (d=0) stationary; (v=d) returns (d^5); infinite (C) disables finite arm | (H.1)+(H.3)+(H.4)->(H.5); finite arm (H.7); then minimum | All three primitive assumptions | All earlier theorem outputs | (d=v=0), (v=1), (v=d), (v=o(d)), infinite (C), small-(\delta) schedule | Hidden positive power, weakened baseline, or overstated source-gap conclusion |

Every row has an existing mechanism source under the accepted sketch, a concrete control relation, and a legal producer-consumer path. No row needs a changed step claim, dependency, assumption, algorithm, theorem scope, metric, or success criterion. The unresolved local derivations therefore remain `step-local`; none is a `sketch/interface defect` or `idea/theorem-contract defect` at this diagnostic stage.

## Exported Interface Feasibility

| Exported interface or output target | Producer block/step/source | Raw controls available before export | Defect terms and controlled/uncontrolled classes | Residual-to-target adequacy | Dominance, transfer, simplification, or absorption relation | Margin, threshold, or slack source | Consumers | Feasibility status or blocker |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Legal branch package | A / `step_001` | Primitive LD/VC and parameter ranges | Rounding controlled; (1/v) avoided at (d=0) | Singleton output equals target; positive branch has no object transfer | (d=0) split; (n_0\ge v) | Nonemptiness and depth-one LD argument | All steps, H | Diagnostically feasible; local proof pending |
| Error-trace bound | B1 / `step_002` | Fixed \(S\), VC \(v\), \(n_0\ge v\) | Duplicate traces controlled; no \(\lvert C\rvert\) term | Exact traces consumed by B3 | Xor bijection and Sauer | Positive-branch \(v\ge1\) | B3, B4 | Diagnostically feasible; local proof pending |
| Two-branch per-trace tail | B2 / `step_003` | Fixed binary population, uniform block | High relative deviation and low absolute tail separately controlled; no block-independence claim | Same errors/thresholds as GO | (B.3) and (D(\alpha/2\Vert\mu)\ge\alpha/30) | Threshold gap (\alpha/3\) to (\alpha/2) | B3 | Diagnostically feasible; high-risk local proof pending |
| Exact GO and failure budget | B3-B4 / `step_004`-`step_005` | Trace count, tail, (a,Q,m,n_0) | Multiplicity, ceiling, (log k) controlled; none uncontrolled | Exact source event, zero event-identity residual | (B.8)-(B.12) | Universal (C_{\rm blk}) | C, D, G, H | Diagnostically feasible; local proofs pending |
| Inclusion and finite essential lists | C / `step_006` | GO, source thresholds, (p_j), finite LD | Sampling defect charged to GO; list size in (L_j) | Same source restrictions/lists; no surrogate | Source inclusion algebra and leaf bound | Source threshold gap | D-F, G1 | Feasible only after exact source wrapper; step-local, no sketch blocker |
| Common actual list item | D / `step_007` | Inclusion, decompositions, integer DDim | Accurate-answer defect separated into AT failure; structural defect controlled | Same functional SOA item in every list | (M_{j+1}\le M_j-1), (M_0\le d) | Integer potential/plateau corollary | E, G1 | Feasible only after exact DDim proof; step-local |
| Accurate selected SOA output | E / `step_008` | Score (k), (L_{\max}), source (k), privacy/confidence splits | AT noise, (B), domain and SS noise separately controlled | Output belongs to exact list union; no identity residual | (E.4), with all log-list terms dominated by source count | (k/2) score slack | F, G1, G2 | Feasible; high-risk parameter proof pending |
| All-input public DP | F / `step_009` | Partition coupling, totalized lists/queries, source lemmas | Nonrealizable inputs and adaptive stage handled; no utility premise | Raw adjacency transfers exactly to one-list replacement via (F.1) | (F.2) | Public privacy split | H | Feasible only after exact raw-to-list proof; step-local |
| Low empirical error of exact improper output | G1 / `step_010` | GO, selected list member, irreducibility | Event failure budgeted; improperness not a defect | Same output in source identity and empirical metric | Excess error contradicts irreducibility | (p_0=n_0d\ge n_0) | G2 | Feasible; exact source contradiction pending |
| Population utility | G2 / `step_011` | Fixed output class VC (\le d), (G.2), iid sample | Uniform deviation controlled; adaptive selection no longer uncontrolled | Same (h,c), target gap (\alpha-\gamma_{\rm emp}) | (G.4)-(G.5) and failure union | VC dimension and sample size | H | Feasible; source wrapper and VC proof pending |
| New public rate | H / `step_012` | (B.13), exact source (k), DP/PAC outputs | Every auxiliary logarithm classified; no allowed uncontrolled positive power | Technical and public samples are the same (n_0) | (H.1)-(H.5) | Universal (K,q) and envelope (L) | Final theorem | Feasible; high-risk source-envelope proof pending |
| Three-arm frontier and remaining-gap label | H / `step_012` | New arm, old Lyu arm, finite-class derivation | Arm-interface mismatch must be normalized; infinite-class finite arm disabled | All arms target same public error/privacy interface | (H.7)-(H.8) after normalization | Public parameter matching | Final comparison | Feasible; comparison-only local proof pending |

No exported interface requires a new bridge, changed dependency, changed output target, or new mechanism source. The rows marked pending are proof obligations already assigned by the accepted sketch.

## Generated Output Flow

| Generated output or control | Producer block/step/source | Consumer block/step/final use | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Zero-dimensional learner / positive branch certificate | A / `step_001` | All positive steps; H; final theorem | `step_001` -> branch-specific consumers | derived | Valid diagnostic path; local proof pending |
| VC error-trace bound | B1 / `step_002` | B3-B4 | `step_001` -> `step_002` -> `step_004`,`step_005` | derived | Valid diagnostic path |
| Per-trace deviation envelope | B2 / `step_003` | B3 | `step_001` -> `step_003` -> `step_004` | derived | Valid diagnostic path; high-risk local proof pending |
| Exact GO | B3, budget in B4 / `step_004`-`step_005` | C, D, G1-G2 | `step_002`,`step_003` -> `step_004`,`step_005` -> consumers | derived | Valid and noncircular diagnostic path |
| Fixed-point/rate certificate | B4 / `step_005` | C, E, G2, H | `step_001`,`step_004` -> `step_005` -> consumers | derived | Valid diagnostic path |
| Exact restrictions, inclusion, and bounded lists | C / `step_006` | D-F, G1 | GO/fixed point -> `step_006` -> consumers | derived | Valid source-wrapper path; local proof pending |
| DDim descent and common-item support | D / `step_007` | E, G1 | `step_006` -> `step_007` -> consumers | derived | Valid finite-budget path; local proof pending |
| Selected actual-list SOA and mechanism event | E / `step_008` | F, G1-G2 | `step_005`,`step_007` -> `step_008` -> consumers | derived | Valid path; utility inequalities pending |
| End-to-end all-input DP | F / `step_009` | H / final theorem | totalized C-E interfaces -> `step_009` -> `step_012` | derived | Valid path; raw-adjacency proof pending |
| Improper SOA identity and low empirical error | G1 / `step_010` | G2 | `step_006`-`step_008` -> `step_010` -> `step_011` | derived | Valid exact-object path; proof pending |
| Fixed-class PAC utility | G2 / `step_011` | H / final theorem | GO/budgets/output -> `step_011` -> `step_012` | derived | Valid path; source/generalization proof pending |
| Public rate, baselines, and frontier | H / `step_012` | Final assembly | all accepted prior outputs -> `step_012` -> theorem | derived | Valid path; specialization proof pending |

No theorem-facing output is consumed before its producer, and no closure or assembly block is being used as a producer merely by name.

## Early Obstruction And Repair Plausibility

- **Contract contradiction:** None found. The attempted claim retains the exact setting, arbitrary-class scope, all-input privacy, improper output, fixed-block procedure, and restricted hidden dependence.
- **Trace mechanism stress:** The new mechanism survives the hardest boundary. At (\mu=0), the low-error bad event is impossible; at (\mu=\alpha/3), the KL exponent is (\Omega(m\alpha)). Block dependence never enters because closure is a union bound.
- **Fixed-point stress:** The fixed point is noncircular because (Q) contains no (m,n_0). The ceiling adds only a universal multiple, and the universal constant can dominate its own logarithm.
- **Source-object stress:** The proof must use the exact source (H_i^j\), decompositions, lists, and SOA identities. The diagnostic has not replaced them by empirical traces or another candidate quotient. A later discovery that the source event or list object differs would be a sketch/interface issue, but the accepted source preflight exposes no such mismatch.
- **Structural closure stress:** The only repeated structural scope has the explicit signed recurrence (M_{j+1}\le M_j-1) and budget (M_0\le d). There is no persistent unsigned forcing term. Mechanism inaccuracies are excluded on an allocated event rather than inserted into the recurrence.
- **Selection stress:** The common item has a positive score margin; list size, failure-symbol weight, effective-domain loss, AT noise, and confidence are separate defect classes. The source teacher count can control them because every list dependence is logarithmic. Exact constants remain a high-risk local obligation.
- **Privacy stress:** The tested entry is an arbitrary first query on arbitrary labeled data. Sensitivity one and one-list replacement must hold before utility is known. The no-success/default path must be totalized. No allowed nonrealizable boundary is excluded.
- **Improper-output stress:** Low empirical error alone is not treated as sufficient. The fixed source output class and its LD/VC bound are necessary before uniform generalization; the produced and consumed hypothesis are the same function.
- **Rate and baseline stress:** (d=0) is exact, (v=d) returns to (d^5), (v=o(d)) is the only claimed power saving, and the finite-class arm is disabled for infinite (C). The old Lyu and finite-class arms are comparison sources, not proof of the new arm. The polynomial (d^4) gap remains labeled.
- **Residual-to-target audit:** Every object transfer in the accepted roadmap is identity-level: trace to source trace, GO to source GO, source list item to selected item, selected SOA to empirical and population evaluation, and raw replacement to one list coordinate. There is no transformed or surrogate object needing an unassigned same-target bridge.
- **Same-setting repair plausibility:** All currently unresolved work can be attempted inside the assigned steps with unchanged claims and dependencies. If the exact source definition invalidates (C.2), (D.2), (F.1), (G.1), or (H.1), that would no longer be a local algebra failure and would require `/proof-sketch`; no such obstruction is established by this diagnostic.
- **Idea-level screen:** No candidate `idea/theorem-contract defect` is presently supported. Nothing here requires a new assumption, changed learner, narrower scope, weaker metric, altered success criterion, unsupported mechanism source, or weakened baseline.

## Global Gaps And Hard Steps

Every item below is `step-local` under the unchanged accepted sketch.

1. **`step_003`: finite-population near-zero tail.** Prove the mgf domination/KL inequality in current notation, including (\mu=0), strict versus weak thresholds, and integer rounding, and recover the exact clauses of (B.2).
2. **`step_005`: scalar constants.** Give a ceiling-complete choice of (C_{\rm blk}), (C_{\rm fp}), and the trace allocation that proves (B.9)-(B.13) without hiding dependence.
3. **`step_006`: exact source wrapper.** Restate the source definitions of (H_i^j\), the valid decompositions, essential lists, and stage indexing; prove (C.2); verify (C.3); and document empty/singleton behavior. This is the main source-convention check.
4. **`step_007`: DDim/common-item proof.** Instantiate the exact hypotheses of the decomposition lemma, prove (D.2), and show that the plateau output is one actual function present in the relevant source lists.
5. **`step_008`: teacher/list/noise closure.** Restate the exact teacher count and prove every inequality in (E.4), separating AT noise, Sparse Sample failure-symbol weight, effective domain, list size, and confidence.
6. **`step_009`: all-input privacy.** Prove (F.1) for every fixed transcript from the recursive source definitions, totalize all nonrealizable/empty/no-success paths, and instantiate the exact privacy costs in (F.2).
7. **`step_010`: empirical bridge.** Reproduce Lyu's irreducibility contradiction for the exact selected SOA object and fix the internal empirical-error constant.
8. **`step_011`: improper generalization.** State the exact source output family covered by `lemma: Ldim-of-SOA`, prove its fixedness and VC bound, and instantiate the relative VC theorem and total failure conversion.
9. **`step_012`: public specialization.** Prove the precise source envelope (H.1), dominate every source logarithm by (L^q), include the generalization term, verify (H.6), normalize the old Lyu and finite-class arms to the same public interface, and state the remaining gap exactly.

These obligations have explicit mechanism witnesses, raw-control interfaces, boundary traces, and legal generated-output paths. None presently requires a sketch repair, so `PARTIAL_BLOCKED` rather than `SKETCH_BLOCKED` is the controlled status.

## Diagnostic Boundary Note

This `global_proof.md` is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change any accepted sketch-step claim, dependency, assumption, output target, source object, mechanism, or theorem conclusion. Every displayed local derivation and cited-result application must be independently proved or discharged in the corresponding `/proof-step` artifact and accepted by `/proof-step-review` before assembly.

## Suggested Routing

None

Subject to `/global-proof-review`, continue with all twelve proof steps. For risk-first diagnostic ordering, prioritize `/proof-step step_003`, then `step_006`, `step_008`, `step_009`, and `step_012`; dependency-respecting proof production must still follow the accepted roadmap.
